@interface EKPersistentResourceChange
+ (id)defaultPropertiesToLoad;
+ (id)relations;
@end

@implementation EKPersistentResourceChange

+ (id)defaultPropertiesToLoad
{
  if (defaultPropertiesToLoad_onceToken_6 != -1)
  {
    +[EKPersistentResourceChange defaultPropertiesToLoad];
  }

  v3 = defaultPropertiesToLoad_defaultPropertiesToLoad_5;

  return v3;
}

void __53__EKPersistentResourceChange_defaultPropertiesToLoad__block_invoke()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992BF8];
  v9[0] = *MEMORY[0x1E6992BF0];
  v9[1] = v0;
  v1 = *MEMORY[0x1E6992C18];
  v9[2] = *MEMORY[0x1E6992C10];
  v9[3] = v1;
  v2 = *MEMORY[0x1E6992C00];
  v9[4] = *MEMORY[0x1E6992C20];
  v9[5] = v2;
  v3 = *MEMORY[0x1E6992C28];
  v9[6] = *MEMORY[0x1E6992C58];
  v9[7] = v3;
  v4 = *MEMORY[0x1E6992C60];
  v10 = *MEMORY[0x1E6992C30];
  v11 = v4;
  v5 = *MEMORY[0x1E6992C40];
  v12 = v10;
  v13 = v5;
  v14 = *MEMORY[0x1E6992A90];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:13];
  v7 = defaultPropertiesToLoad_defaultPropertiesToLoad_5;
  defaultPropertiesToLoad_defaultPropertiesToLoad_5 = v6;

  v8 = *MEMORY[0x1E69E9840];
}

+ (id)relations
{
  if (relations_onceToken_9 != -1)
  {
    +[EKPersistentResourceChange relations];
  }

  v3 = relations_relations_9;

  return v3;
}

void __39__EKPersistentResourceChange_relations__block_invoke()
{
  v8[3] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6992AD0]];
  v7[0] = *MEMORY[0x1E6992BF0];
  v1 = [EKRelation relationWithEntityName:@"Calendar" toMany:0 inversePropertyNames:0 ownsRelated:0];
  v8[0] = v1;
  v7[1] = *MEMORY[0x1E6992BF8];
  v2 = [EKRelation relationWithEntityName:@"CalendarItem" toMany:0 inversePropertyNames:0 ownsRelated:0];
  v8[1] = v2;
  v7[2] = *MEMORY[0x1E6992C48];
  v3 = [EKRelation relationWithEntityName:@"Notification" toMany:0 inversePropertyNames:v0 ownsRelated:0];
  v8[2] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];
  v5 = relations_relations_9;
  relations_relations_9 = v4;

  v6 = *MEMORY[0x1E69E9840];
}

@end