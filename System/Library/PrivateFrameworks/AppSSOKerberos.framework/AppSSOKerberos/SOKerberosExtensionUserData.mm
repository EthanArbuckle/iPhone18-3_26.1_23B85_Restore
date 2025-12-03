@interface SOKerberosExtensionUserData
- (BOOL)useKeychain;
- (BOOL)useSmartCard;
- (BOOL)userSetKeychainChoice;
- (SOKerberosExtensionUserData)init;
@end

@implementation SOKerberosExtensionUserData

- (SOKerberosExtensionUserData)init
{
  v5.receiver = self;
  v5.super_class = SOKerberosExtensionUserData;
  v2 = [(SOKerberosExtensionUserData *)&v5 init];
  if (v2)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults registerDefaults:&unk_28520B8E8];
  }

  return v2;
}

- (BOOL)useKeychain
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"useKeychain"];

  return v3;
}

- (BOOL)userSetKeychainChoice
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"userSetKeychainChoice"];

  return v3;
}

- (BOOL)useSmartCard
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"useSmartCard"];

  return v3;
}

@end