@interface OutputDefinition
- (BOOL)isValid;
- (OutputDefinition)initWithOutputDefinitionDictionary:(id)dictionary;
@end

@implementation OutputDefinition

- (OutputDefinition)initWithOutputDefinitionDictionary:(id)dictionary
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v3 = selfCopy;
  selfCopy = 0;
  v13.receiver = v3;
  v13.super_class = OutputDefinition;
  selfCopy = [(OutputDefinition *)&v13 init];
  objc_storeStrong(&selfCopy, selfCopy);
  v5 = [location[0] objectForKey:@"model_output_name"];
  [(OutputDefinition *)selfCopy setModelOutputName:?];
  MEMORY[0x277D82BD8](v5);
  v6 = [location[0] objectForKey:@"mode"];
  [(OutputDefinition *)selfCopy setMode:?];
  MEMORY[0x277D82BD8](v6);
  v7 = [location[0] objectForKey:@"model_top_n"];
  [(OutputDefinition *)selfCopy setModelTopN:?];
  MEMORY[0x277D82BD8](v7);
  v8 = [location[0] objectForKey:@"remap_dictionary_id"];
  [(OutputDefinition *)selfCopy setRemapDictionaryId:?];
  MEMORY[0x277D82BD8](v8);
  v9 = [location[0] objectForKey:@"score_threshold_as_multiple_of_random_score"];
  [(OutputDefinition *)selfCopy setScoreThresholdAsMultipleOfRandomScore:?];
  MEMORY[0x277D82BD8](v9);
  v10 = [location[0] objectForKey:@"modifiers"];
  [(OutputDefinition *)selfCopy setModifiers:?];
  MEMORY[0x277D82BD8](v10);
  v11 = [location[0] objectForKey:@"native_postprocessing_operators"];
  [(OutputDefinition *)selfCopy setNativePostprocessingOperations:?];
  MEMORY[0x277D82BD8](v11);
  v12 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v12;
}

- (BOOL)isValid
{
  modelOutputName = [(OutputDefinition *)self modelOutputName];
  v4 = modelOutputName != 0;
  MEMORY[0x277D82BD8](modelOutputName);
  return v4;
}

@end