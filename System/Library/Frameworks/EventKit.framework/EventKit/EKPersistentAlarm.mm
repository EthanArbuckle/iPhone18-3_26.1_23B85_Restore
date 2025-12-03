@interface EKPersistentAlarm
+ (id)defaultPropertiesToLoad;
+ (id)relations;
- (id)copyWithZone:(_NSZone *)zone;
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
  isDefaultAlarm = [(EKPersistentAlarm *)self isDefaultAlarm];
  absoluteDate = [(EKPersistentAlarm *)self absoluteDate];
  relativeOffset = [(EKPersistentAlarm *)self relativeOffset];
  v6 = [EKAlarmSemanticIdentifierGenerator semanticIdentifierForAlarmIsDefault:isDefaultAlarm absoluteDate:absoluteDate relativeOffset:relativeOffset emailAddress:0 url:0];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(EKPersistentAlarm);
  absoluteDate = [(EKPersistentAlarm *)self absoluteDate];

  if (absoluteDate)
  {
    absoluteDate2 = [(EKPersistentAlarm *)self absoluteDate];
    [(EKPersistentAlarm *)v4 setAbsoluteDate:absoluteDate2];
  }

  else
  {
    absoluteDate2 = [(EKPersistentAlarm *)self relativeOffset];
    [(EKPersistentAlarm *)v4 setRelativeOffset:absoluteDate2];
  }

  [(EKPersistentAlarm *)v4 setProximity:[(EKPersistentAlarm *)self proximity]];
  [(EKPersistentAlarm *)v4 setType:[(EKPersistentAlarm *)self type]];
  emailAddress = [(EKPersistentAlarm *)self emailAddress];
  [(EKPersistentAlarm *)v4 setEmailAddress:emailAddress];

  eventStore = [(EKPersistentObject *)self eventStore];
  connection = [eventStore connection];
  initializationOptions = [connection initializationOptions];
  mockPermissions = [initializationOptions mockPermissions];

  if ((!mockPermissions || [mockPermissions testingAccessLevelGranted]) && +[EKAlarm _processIsAllowedToCreateProcedureAlarms](EKAlarm, "_processIsAllowedToCreateProcedureAlarms"))
  {
    urlWrapper = [(EKPersistentAlarm *)self urlWrapper];
    [(EKPersistentAlarm *)v4 setUrlWrapper:urlWrapper];
  }

  v13 = EKUUIDString();
  [(EKPersistentAlarm *)v4 setUUID:v13];

  [(EKPersistentAlarm *)v4 setIsDefaultAlarm:[(EKPersistentAlarm *)self isDefaultAlarm]];
  eventStore2 = [(EKPersistentObject *)self eventStore];
  eventAccessLevel = [eventStore2 eventAccessLevel];

  if (eventAccessLevel == 2)
  {
    externalData = [(EKPersistentAlarm *)self externalData];
    v17 = [externalData copy];
    [(EKPersistentAlarm *)v4 setExternalData:v17];
  }

  return v4;
}

- (id)description
{
  absoluteDate = [(EKPersistentAlarm *)self absoluteDate];

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  if (absoluteDate)
  {
    absoluteDate2 = [(EKPersistentAlarm *)self absoluteDate];
    proximity = [(EKPersistentAlarm *)self proximity];
    structuredLocation = [(EKPersistentAlarm *)self structuredLocation];
    [v4 stringWithFormat:@"%@ <%p> {triggerDate = %@; proximity = %ld; location = %@, type = %ld}", v5, self, absoluteDate2, proximity, structuredLocation, -[EKPersistentAlarm type](self, "type")];
  }

  else
  {
    absoluteDate2 = [(EKPersistentAlarm *)self relativeOffset];
    [absoluteDate2 doubleValue];
    v10 = v9;
    proximity2 = [(EKPersistentAlarm *)self proximity];
    structuredLocation = [(EKPersistentAlarm *)self structuredLocation];
    [v4 stringWithFormat:@"%@ <%p> {triggerInterval = %lf; proximity = %ld; location = %@, type = %ld}", v5, self, v10, proximity2, structuredLocation, -[EKPersistentAlarm type](self, "type")];
  }
  v12 = ;

  return v12;
}

@end