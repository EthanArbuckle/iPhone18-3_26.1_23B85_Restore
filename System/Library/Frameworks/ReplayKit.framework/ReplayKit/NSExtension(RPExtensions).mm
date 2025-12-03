@interface NSExtension(RPExtensions)
+ (void)extensionsWithMatchingPointName:()RPExtensions baseIdentifier:activationRule:unwantedActivationRule:completion:;
- (uint64_t)processMode;
@end

@implementation NSExtension(RPExtensions)

+ (void)extensionsWithMatchingPointName:()RPExtensions baseIdentifier:activationRule:unwantedActivationRule:completion:
{
  v34[1] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = MEMORY[0x277CBEB18];
  v16 = a3;
  array = [v15 array];
  v33 = *MEMORY[0x277CCA0F8];
  v34[0] = v16;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
  v19 = [v18 mutableCopy];

  v20 = MEMORY[0x277CCA9C8];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __125__NSExtension_RPExtensions__extensionsWithMatchingPointName_baseIdentifier_activationRule_unwantedActivationRule_completion___block_invoke;
  v27[3] = &unk_278B62448;
  v28 = v11;
  v29 = v12;
  v30 = v13;
  v31 = array;
  v32 = v14;
  v21 = v14;
  v22 = array;
  v23 = v13;
  v24 = v12;
  v25 = v11;
  [v20 extensionsWithMatchingAttributes:v19 completion:v27];

  v26 = *MEMORY[0x277D85DE8];
}

- (uint64_t)processMode
{
  infoDictionary = [self infoDictionary];
  v2 = [infoDictionary objectForKeyedSubscript:@"NSExtension"];
  v3 = [v2 objectForKeyedSubscript:@"RPBroadcastProcessMode"];

  v4 = [v3 isEqualToString:@"RPBroadcastProcessModeSampleBuffer"];
  return v4;
}

@end