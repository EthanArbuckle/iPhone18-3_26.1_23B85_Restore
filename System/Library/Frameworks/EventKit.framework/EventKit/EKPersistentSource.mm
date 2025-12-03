@interface EKPersistentSource
+ (id)defaultPropertiesToLoad;
+ (id)relations;
- (id)constraints;
- (id)description;
@end

@implementation EKPersistentSource

+ (id)defaultPropertiesToLoad
{
  if (defaultPropertiesToLoad_onceToken_12 != -1)
  {
    +[EKPersistentSource defaultPropertiesToLoad];
  }

  v3 = defaultPropertiesToLoad_defaultPropertiesToLoad_11;

  return v3;
}

void __45__EKPersistentSource_defaultPropertiesToLoad__block_invoke()
{
  v9[13] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992DA0];
  v9[0] = *MEMORY[0x1E6992D88];
  v9[1] = v0;
  v1 = *MEMORY[0x1E6992D18];
  v9[2] = *MEMORY[0x1E6992D68];
  v9[3] = v1;
  v2 = *MEMORY[0x1E6992B08];
  v9[4] = *MEMORY[0x1E6992B10];
  v9[5] = v2;
  v3 = *MEMORY[0x1E6992D08];
  v9[6] = *MEMORY[0x1E6992D00];
  v9[7] = v3;
  v4 = *MEMORY[0x1E6992D30];
  v9[8] = *MEMORY[0x1E6992D10];
  v9[9] = v4;
  v5 = *MEMORY[0x1E6992D98];
  v9[10] = *MEMORY[0x1E6992D38];
  v9[11] = v5;
  v9[12] = *MEMORY[0x1E6992D50];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:13];
  v7 = defaultPropertiesToLoad_defaultPropertiesToLoad_11;
  defaultPropertiesToLoad_defaultPropertiesToLoad_11 = v6;

  v8 = *MEMORY[0x1E69E9840];
}

+ (id)relations
{
  if (relations_onceToken_19 != -1)
  {
    +[EKPersistentSource relations];
  }

  v3 = relations_relations_19;

  return v3;
}

void __31__EKPersistentSource_relations__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF20]);
  v7 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6992870]];
  v1 = [EKRelation relationWithEntityName:@"Calendar" toMany:1 inversePropertyNames:v7];
  v2 = *MEMORY[0x1E6992CE0];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E69928E8]];
  v4 = [EKRelation relationWithEntityName:@"Error" toMany:0 inversePropertyNames:v3];
  v5 = [v0 initWithObjectsAndKeys:{v1, v2, v4, *MEMORY[0x1E6992D98], 0}];
  v6 = relations_relations_19;
  relations_relations_19 = v5;
}

- (id)constraints
{
  eventStore = [(EKPersistentObject *)self eventStore];
  cADObjectID = [(EKPersistentObject *)self CADObjectID];
  v5 = [eventStore cachedConstraintsForEventOrSourceWithCADObjectID:cADObjectID];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  uUID = [(EKPersistentSource *)self UUID];
  v6 = description_kTypeStrings_0[[(EKPersistentSource *)self sourceTypeRaw]];
  title = [(EKPersistentSource *)self title];
  externalID = [(EKPersistentSource *)self externalID];
  v9 = [v3 stringWithFormat:@"%@ <%p> {UUID = %@ type = %@; title = %@; externalId = %@}", v4, self, uUID, v6, title, externalID];;

  return v9;
}

@end