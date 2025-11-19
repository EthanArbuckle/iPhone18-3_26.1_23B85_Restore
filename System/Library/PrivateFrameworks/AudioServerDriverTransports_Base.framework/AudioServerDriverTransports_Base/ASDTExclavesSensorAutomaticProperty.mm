@interface ASDTExclavesSensorAutomaticProperty
+ (id)config;
@end

@implementation ASDTExclavesSensorAutomaticProperty

+ (id)config
{
  v8[4] = *MEMORY[0x277D85DE8];
  v6 = 1;
  v7[0] = @"Subclass";
  v7[1] = @"Selector";
  v8[0] = @"ASDTExclavesSensorAutomaticProperty";
  v8[1] = &unk_2853549F0;
  v8[2] = 0x285354810;
  v7[2] = @"Scope";
  v7[3] = @"Value";
  v2 = [MEMORY[0x277CBEA90] dataWithBytes:&v6 length:4];
  v8[3] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:4];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end