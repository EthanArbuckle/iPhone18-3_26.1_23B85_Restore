@interface EKPersistentColor
+ (id)defaultPropertiesToLoad;
+ (id)relations;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation EKPersistentColor

+ (id)defaultPropertiesToLoad
{
  if (defaultPropertiesToLoad_onceToken_10 != -1)
  {
    +[EKPersistentColor defaultPropertiesToLoad];
  }

  v3 = defaultPropertiesToLoad_defaultPropertiesToLoad_9;

  return v3;
}

void __44__EKPersistentColor_defaultPropertiesToLoad__block_invoke()
{
  v5[4] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69928B8];
  v5[0] = *MEMORY[0x1E69928B0];
  v5[1] = v0;
  v1 = *MEMORY[0x1E6992B10];
  v5[2] = *MEMORY[0x1E6992B08];
  v5[3] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v3 = defaultPropertiesToLoad_defaultPropertiesToLoad_9;
  defaultPropertiesToLoad_defaultPropertiesToLoad_9 = v2;

  v4 = *MEMORY[0x1E69E9840];
}

+ (id)relations
{
  if (relations_onceToken_16 != -1)
  {
    +[EKPersistentColor relations];
  }

  v3 = relations_relations_16;

  return v3;
}

void __30__EKPersistentColor_relations__block_invoke()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69928C0];
  v0 = [MEMORY[0x1E695DFD8] set];
  v1 = [EKRelation relationWithEntityName:@"Source" toMany:0 inversePropertyNames:v0 ownsRelated:0];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = relations_relations_16;
  relations_relations_16 = v2;

  v4 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(EKPersistentColor);
  v5 = [(EKPersistentColor *)self data];
  [(EKPersistentColor *)v4 setData:v5];

  v6 = [(EKPersistentColor *)self UUID];
  [(EKPersistentColor *)v4 setUUID:v6];

  v7 = [(EKPersistentColor *)self providerIdentifier];
  [(EKPersistentColor *)v4 setProviderIdentifier:v7];

  v8 = [(EKPersistentColor *)self externalID];
  [(EKPersistentColor *)v4 setExternalID:v8];

  v9 = [(EKPersistentColor *)self source];
  [(EKPersistentColor *)v4 setSource:v9];

  return v4;
}

@end