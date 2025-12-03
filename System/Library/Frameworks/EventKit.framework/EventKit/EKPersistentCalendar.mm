@interface EKPersistentCalendar
+ (id)calendarWithRandomUUID;
+ (id)defaultPropertiesToLoad;
+ (id)relations;
- (id)description;
- (void)setExternalRepresentation:(id)representation;
@end

@implementation EKPersistentCalendar

+ (id)defaultPropertiesToLoad
{
  if (defaultPropertiesToLoad_onceToken_0 != -1)
  {
    +[EKPersistentCalendar defaultPropertiesToLoad];
  }

  v3 = defaultPropertiesToLoad_defaultPropertiesToLoad_0;

  return v3;
}

void __47__EKPersistentCalendar_defaultPropertiesToLoad__block_invoke()
{
  v10[14] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992890];
  v10[0] = *MEMORY[0x1E6992730];
  v10[1] = v0;
  v1 = *MEMORY[0x1E6992870];
  v10[2] = *MEMORY[0x1E6992740];
  v10[3] = v1;
  v2 = *MEMORY[0x1E6992718];
  v10[4] = *MEMORY[0x1E6992760];
  v10[5] = v2;
  v3 = *MEMORY[0x1E6992868];
  v10[6] = *MEMORY[0x1E6992B08];
  v10[7] = v3;
  v4 = *MEMORY[0x1E6992778];
  v10[8] = *MEMORY[0x1E6992850];
  v10[9] = v4;
  v5 = *MEMORY[0x1E69928A8];
  v10[10] = *MEMORY[0x1E69927F8];
  v10[11] = v5;
  v6 = *MEMORY[0x1E6992B10];
  v10[12] = *MEMORY[0x1E6992898];
  v10[13] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:14];
  v8 = defaultPropertiesToLoad_defaultPropertiesToLoad_0;
  defaultPropertiesToLoad_defaultPropertiesToLoad_0 = v7;

  v9 = *MEMORY[0x1E69E9840];
}

+ (id)relations
{
  if (relations_onceToken_0 != -1)
  {
    +[EKPersistentCalendar relations];
  }

  v3 = relations_relations_0;

  return v3;
}

void __33__EKPersistentCalendar_relations__block_invoke()
{
  v16 = objc_alloc(MEMORY[0x1E695DF20]);
  v18 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6992CE0]];
  v15 = [EKRelation relationWithEntityName:@"Source" toMany:0 inversePropertyNames:v18 ownsRelated:0];
  v14 = *MEMORY[0x1E6992870];
  v17 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6992B18]];
  v13 = [EKRelation relationWithEntityName:@"Sharee" toMany:1 inversePropertyNames:v17];
  v12 = *MEMORY[0x1E6992858];
  v0 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6992450]];
  v1 = [EKRelation relationWithEntityName:@"Alarm" toMany:1 inversePropertyNames:v0];
  v2 = *MEMORY[0x1E6992710];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6992A98]];
  v4 = [EKRelation relationWithEntityName:@"Notification" toMany:1 inversePropertyNames:v3];
  v5 = *MEMORY[0x1E69927B0];
  v6 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E69928D0]];
  v7 = [EKRelation relationWithEntityName:@"Error" toMany:0 inversePropertyNames:v6];
  v8 = *MEMORY[0x1E6992898];
  v9 = [EKRelation relationWithEntityName:@"Image" toMany:0 inversePropertyNames:0 ownsRelated:0];
  v10 = [v16 initWithObjectsAndKeys:{v15, v14, v13, v12, v1, v2, v4, v5, v7, v8, v9, *MEMORY[0x1E6992768], 0}];
  v11 = relations_relations_0;
  relations_relations_0 = v10;
}

- (void)setExternalRepresentation:(id)representation
{
  v4 = [representation copy];
  [(EKPersistentObject *)self primitiveSetDataValue:v4 forKey:*MEMORY[0x1E6992758]];
}

- (id)description
{
  flags = [(EKPersistentCalendar *)self flags];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  unlocalizedTitle = [(EKPersistentCalendar *)self unlocalizedTitle];
  if (flags)
  {
    v7 = "NO";
  }

  else
  {
    v7 = "YES";
  }

  colorStringRaw = [(EKPersistentCalendar *)self colorStringRaw];
  source = [(EKPersistentCalendar *)self source];
  sharees = [(EKPersistentCalendar *)self sharees];
  v11 = [v4 stringWithFormat:@"%@ <%p> {title = %@ allowsModify = %s; color = %@; source = %@; sharees = %@}", v5, self, unlocalizedTitle, v7, colorStringRaw, source, sharees];;

  return v11;
}

+ (id)calendarWithRandomUUID
{
  v2 = objc_alloc_init(EKPersistentCalendar);
  v3 = EKUUIDString();
  [(EKPersistentCalendar *)v2 setUUID:v3];

  return v2;
}

@end