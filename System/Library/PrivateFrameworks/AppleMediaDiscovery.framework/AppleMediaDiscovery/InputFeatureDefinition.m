@interface InputFeatureDefinition
- (BOOL)isValid;
- (InputFeatureDefinition)initWithDictionary:(id)a3;
@end

@implementation InputFeatureDefinition

- (InputFeatureDefinition)initWithDictionary:(id)a3
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v19;
  v19 = 0;
  v17.receiver = v3;
  v17.super_class = InputFeatureDefinition;
  v19 = [(InputFeatureDefinition *)&v17 init];
  objc_storeStrong(&v19, v19);
  v5 = [location[0] objectForKey:@"feature_id"];
  [(InputFeatureDefinition *)v19 setFeatureId:?];
  MEMORY[0x277D82BD8](v5);
  v6 = [location[0] objectForKey:@"map_op"];
  [(InputFeatureDefinition *)v19 setMapOp:?];
  MEMORY[0x277D82BD8](v6);
  v7 = [location[0] objectForKey:@"size"];
  [(InputFeatureDefinition *)v19 setSize:?];
  MEMORY[0x277D82BD8](v7);
  v8 = [location[0] objectForKey:@"shape"];
  [(InputFeatureDefinition *)v19 setShape:?];
  MEMORY[0x277D82BD8](v8);
  v9 = [location[0] objectForKey:@"remap_dictionary_id"];
  [(InputFeatureDefinition *)v19 setRemapDictionaryId:?];
  MEMORY[0x277D82BD8](v9);
  v10 = [location[0] objectForKey:@"value"];
  [(InputFeatureDefinition *)v19 setFeatureValues:?];
  MEMORY[0x277D82BD8](v10);
  v11 = [location[0] objectForKey:@"feature_type"];
  [(InputFeatureDefinition *)v19 setFeatureType:?];
  MEMORY[0x277D82BD8](v11);
  v12 = [location[0] objectForKey:@"column"];
  [(InputFeatureDefinition *)v19 setColumnName:?];
  MEMORY[0x277D82BD8](v12);
  v16 = [location[0] objectForKey:@"feature_domain"];
  v15 = [location[0] objectForKey:@"feature_source"];
  v13 = [AMDFeatureProvider getProviderForSource:v15 WithDomain:v16];
  [(InputFeatureDefinition *)v19 setFeatureProvider:?];
  MEMORY[0x277D82BD8](v13);
  v14 = MEMORY[0x277D82BE0](v19);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v19, 0);
  return v14;
}

- (BOOL)isValid
{
  v4 = [(InputFeatureDefinition *)self featureId];
  v8 = 0;
  v6 = 0;
  v5 = 0;
  if (v4)
  {
    v9 = [(InputFeatureDefinition *)self size];
    v8 = 1;
    v3 = 1;
    if (!v9)
    {
      v7 = [(InputFeatureDefinition *)self shape];
      v6 = 1;
      v3 = v7 != 0;
    }

    v5 = v3;
  }

  if (v6)
  {
    MEMORY[0x277D82BD8](v7);
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  MEMORY[0x277D82BD8](v4);
  return v5;
}

@end