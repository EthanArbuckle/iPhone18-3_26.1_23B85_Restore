@interface OutputDefinition
- (BOOL)isValid;
- (OutputDefinition)initWithOutputDefinitionDictionary:(id)a3;
@end

@implementation OutputDefinition

- (OutputDefinition)initWithOutputDefinitionDictionary:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v15;
  v15 = 0;
  v13.receiver = v3;
  v13.super_class = OutputDefinition;
  v15 = [(OutputDefinition *)&v13 init];
  objc_storeStrong(&v15, v15);
  v5 = [location[0] objectForKey:@"model_output_name"];
  [(OutputDefinition *)v15 setModelOutputName:?];
  MEMORY[0x277D82BD8](v5);
  v6 = [location[0] objectForKey:@"mode"];
  [(OutputDefinition *)v15 setMode:?];
  MEMORY[0x277D82BD8](v6);
  v7 = [location[0] objectForKey:@"model_top_n"];
  [(OutputDefinition *)v15 setModelTopN:?];
  MEMORY[0x277D82BD8](v7);
  v8 = [location[0] objectForKey:@"remap_dictionary_id"];
  [(OutputDefinition *)v15 setRemapDictionaryId:?];
  MEMORY[0x277D82BD8](v8);
  v9 = [location[0] objectForKey:@"score_threshold_as_multiple_of_random_score"];
  [(OutputDefinition *)v15 setScoreThresholdAsMultipleOfRandomScore:?];
  MEMORY[0x277D82BD8](v9);
  v10 = [location[0] objectForKey:@"modifiers"];
  [(OutputDefinition *)v15 setModifiers:?];
  MEMORY[0x277D82BD8](v10);
  v11 = [location[0] objectForKey:@"native_postprocessing_operators"];
  [(OutputDefinition *)v15 setNativePostprocessingOperations:?];
  MEMORY[0x277D82BD8](v11);
  v12 = MEMORY[0x277D82BE0](v15);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v15, 0);
  return v12;
}

- (BOOL)isValid
{
  v2 = [(OutputDefinition *)self modelOutputName];
  v4 = v2 != 0;
  MEMORY[0x277D82BD8](v2);
  return v4;
}

@end