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
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v3 registerDefaults:&unk_28520B8E8];
  }

  return v2;
}

- (BOOL)useKeychain
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"useKeychain"];

  return v3;
}

- (BOOL)userSetKeychainChoice
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"userSetKeychainChoice"];

  return v3;
}

- (BOOL)useSmartCard
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"useSmartCard"];

  return v3;
}

@end