@interface EKPersistentAlarm
+ (id)defaultPropertiesToLoad;
+ (id)relations;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)semanticIdentifier;
@end

@implementation EKPersistentAlarm

+ (id)relations
{
  if (relations_onceToken_8 != -1)
  {
    +[EKPersistentAlarm relations];
  }

  v3 = relations_relations_8;

  return v3;
}

void __30__EKPersistentAlarm_relations__block_invoke()
{
  v15 = objc_alloc(MEMORY[0x1E695DF20]);
  v17 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6992558]];
  v14 = [EKRelation relationWithEntityName:@"CalendarItem" toMany:0 inversePropertyNames:v17 ownsRelated:0];
  v13 = *MEMORY[0x1E6992448];
  v16 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6992710]];
  v11 = [EKRelation relationWithEntityName:@"Calendar" toMany:0 inversePropertyNames:v16 ownsRelated:0];
  v10 = *MEMORY[0x1E6992450];
  v12 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6992A38]];
  v0 = [EKRelation relationWithEntityName:@"Location" toMany:0 inversePropertyNames:v12 ownsRelated:1];
  v1 = *MEMORY[0x1E6992490];
  v2 = *MEMORY[0x1E6992488];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6992488]];
  v4 = [EKRelation relationWithEntityName:@"Alarm" toMany:0 inversePropertyNames:v3 ownsRelated:0];
  v5 = *MEMORY[0x1E6992470];
  v6 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6992470]];
  v7 = [EKRelation relationWithEntityName:@"Alarm" toMany:1 inversePropertyNames:v6 ownsRelated:1];
  v8 = [v15 initWithObjectsAndKeys:{v14, v13, v11, v10, v0, v1, v4, v5, v7, v2, 0}];
  v9 = relations_relations_8;
  relations_relations_8 = v8;
}

+ (id)defaultPropertiesToLoad
{
  if (defaultPropertiesToLoad_onceToken_5 != -1)
  {
    +[EKPersistentAlarm defaultPropertiesToLoad];
  }

  v3 = defaultPropertiesToLoad_defaultProperties;

  return v3;
}

void __44__EKPersistentAlarm_defaultPropertiesToLoad__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992490];
  v4[0] = *MEMORY[0x1E6992478];
  v4[1] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v2 = defaultPropertiesToLoad_defaultProperties;
  defaultPropertiesToLoad_defaultProperties = v1;

  v3 = *MEMORY[0x1E69E9840];
}

- (id)semanticIdentifier
{
  v3 = [(EKPersistentAlarm *)self isDefaultAlarm];
  v4 = [(EKPersistentAlarm *)self absoluteDate];
  v5 = [(EKPersistentAlarm *)self relativeOffset];
  v6 = [EKAlarmSemanticIdentifierGenerator semanticIdentifierForAlarmIsDefault:v3 absoluteDate:v4 relativeOffset:v5 emailAddress:0 url:0];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(EKPersistentAlarm);
  v5 = [(EKPersistentAlarm *)self absoluteDate];

  if (v5)
  {
    v6 = [(EKPersistentAlarm *)self absoluteDate];
    [(EKPersistentAlarm *)v4 setAbsoluteDate:v6];
  }

  else
  {
    v6 = [(EKPersistentAlarm *)self relativeOffset];
    [(EKPersistentAlarm *)v4 setRelativeOffset:v6];
  }

  [(EKPersistentAlarm *)v4 setProximity:[(EKPersistentAlarm *)self proximity]];
  [(EKPersistentAlarm *)v4 setType:[(EKPersistentAlarm *)self type]];
  v7 = [(EKPersistentAlarm *)self emailAddress];
  [(EKPersistentAlarm *)v4 setEmailAddress:v7];

  v8 = [(EKPersistentObject *)self eventStore];
  v9 = [v8 connection];
  v10 = [v9 initializationOptions];
  v11 = [v10 mockPermissions];

  if ((!v11 || [v11 testingAccessLevelGranted]) && +[EKAlarm _processIsAllowedToCreateProcedureAlarms](EKAlarm, "_processIsAllowedToCreateProcedureAlarms"))
  {
    v12 = [(EKPersistentAlarm *)self urlWrapper];
    [(EKPersistentAlarm *)v4 setUrlWrapper:v12];
  }

  v13 = EKUUIDString();
  [(EKPersistentAlarm *)v4 setUUID:v13];

  [(EKPersistentAlarm *)v4 setIsDefaultAlarm:[(EKPersistentAlarm *)self isDefaultAlarm]];
  v14 = [(EKPersistentObject *)self eventStore];
  v15 = [v14 eventAccessLevel];

  if (v15 == 2)
  {
    v16 = [(EKPersistentAlarm *)self externalData];
    v17 = [v16 copy];
    [(EKPersistentAlarm *)v4 setExternalData:v17];
  }

  return v4;
}

- (id)description
{
  v3 = [(EKPersistentAlarm *)self absoluteDate];

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  if (v3)
  {
    v6 = [(EKPersistentAlarm *)self absoluteDate];
    v7 = [(EKPersistentAlarm *)self proximity];
    v8 = [(EKPersistentAlarm *)self structuredLocation];
    [v4 stringWithFormat:@"%@ <%p> {triggerDate = %@; proximity = %ld; location = %@, type = %ld}", v5, self, v6, v7, v8, -[EKPersistentAlarm type](self, "type")];
  }

  else
  {
    v6 = [(EKPersistentAlarm *)self relativeOffset];
    [v6 doubleValue];
    v10 = v9;
    v11 = [(EKPersistentAlarm *)self proximity];
    v8 = [(EKPersistentAlarm *)self structuredLocation];
    [v4 stringWithFormat:@"%@ <%p> {triggerInterval = %lf; proximity = %ld; location = %@, type = %ld}", v5, self, v10, v11, v8, -[EKPersistentAlarm type](self, "type")];
  }
  v12 = ;

  return v12;
}

@end