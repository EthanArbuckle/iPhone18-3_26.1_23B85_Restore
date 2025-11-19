@interface BKSPersistentConnectionDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation BKSPersistentConnectionDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"forceDemoMaxHBI"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"PCForceDemoMaxHBI" toDefaultValue:&unk_1EF56BEC8 options:1];

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"wifiInterfaceName"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v4 withDefaultKey:@"PCWiFiInterface" toDefaultValue:0 options:1];
}

@end