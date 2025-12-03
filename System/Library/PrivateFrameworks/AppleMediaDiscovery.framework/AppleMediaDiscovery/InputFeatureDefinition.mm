@interface InputFeatureDefinition
- (BOOL)isValid;
- (InputFeatureDefinition)initWithDictionary:(id)dictionary;
@end

@implementation InputFeatureDefinition

- (InputFeatureDefinition)initWithDictionary:(id)dictionary
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v3 = selfCopy;
  selfCopy = 0;
  v17.receiver = v3;
  v17.super_class = InputFeatureDefinition;
  selfCopy = [(InputFeatureDefinition *)&v17 init];
  objc_storeStrong(&selfCopy, selfCopy);
  v5 = [location[0] objectForKey:@"feature_id"];
  [(InputFeatureDefinition *)selfCopy setFeatureId:?];
  MEMORY[0x277D82BD8](v5);
  v6 = [location[0] objectForKey:@"map_op"];
  [(InputFeatureDefinition *)selfCopy setMapOp:?];
  MEMORY[0x277D82BD8](v6);
  v7 = [location[0] objectForKey:@"size"];
  [(InputFeatureDefinition *)selfCopy setSize:?];
  MEMORY[0x277D82BD8](v7);
  v8 = [location[0] objectForKey:@"shape"];
  [(InputFeatureDefinition *)selfCopy setShape:?];
  MEMORY[0x277D82BD8](v8);
  v9 = [location[0] objectForKey:@"remap_dictionary_id"];
  [(InputFeatureDefinition *)selfCopy setRemapDictionaryId:?];
  MEMORY[0x277D82BD8](v9);
  v10 = [location[0] objectForKey:@"value"];
  [(InputFeatureDefinition *)selfCopy setFeatureValues:?];
  MEMORY[0x277D82BD8](v10);
  v11 = [location[0] objectForKey:@"feature_type"];
  [(InputFeatureDefinition *)selfCopy setFeatureType:?];
  MEMORY[0x277D82BD8](v11);
  v12 = [location[0] objectForKey:@"column"];
  [(InputFeatureDefinition *)selfCopy setColumnName:?];
  MEMORY[0x277D82BD8](v12);
  v16 = [location[0] objectForKey:@"feature_domain"];
  v15 = [location[0] objectForKey:@"feature_source"];
  v13 = [AMDFeatureProvider getProviderForSource:v15 WithDomain:v16];
  [(InputFeatureDefinition *)selfCopy setFeatureProvider:?];
  MEMORY[0x277D82BD8](v13);
  v14 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v14;
}

- (BOOL)isValid
{
  featureId = [(InputFeatureDefinition *)self featureId];
  v8 = 0;
  v6 = 0;
  v5 = 0;
  if (featureId)
  {
    v9 = [(InputFeatureDefinition *)self size];
    v8 = 1;
    v3 = 1;
    if (!v9)
    {
      shape = [(InputFeatureDefinition *)self shape];
      v6 = 1;
      v3 = shape != 0;
    }

    v5 = v3;
  }

  if (v6)
  {
    MEMORY[0x277D82BD8](shape);
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  MEMORY[0x277D82BD8](featureId);
  return v5;
}

@end