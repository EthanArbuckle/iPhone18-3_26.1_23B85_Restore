@interface ASDTNonSecurePathEnableProperty
+ (id)createForInput;
- (ASDTNonSecurePathEnableProperty)initWithConfig:(id)a3;
@end

@implementation ASDTNonSecurePathEnableProperty

- (ASDTNonSecurePathEnableProperty)initWithConfig:(id)a3
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4 = [a3 mutableCopy];
  [v4 setObject:&unk_285354858 forKey:@"Selector"];
  v10[0] = @"Scope";
  v10[1] = @"Value";
  v11[0] = &unk_285354870;
  v11[1] = &unk_285354888;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v4 asdtAddMissingEntriesFromDictionary:v5];

  v9.receiver = self;
  v9.super_class = ASDTNonSecurePathEnableProperty;
  v6 = [(ASDTUInt32Property *)&v9 initWithConfig:v4];

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)createForInput
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"Subclass";
  v7[0] = @"ASDTNonSecurePathEnableProperty";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v3 = [ASDTCustomProperty customPropertyForConfig:v2];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end