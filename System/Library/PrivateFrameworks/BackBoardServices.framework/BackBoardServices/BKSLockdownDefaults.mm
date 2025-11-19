@interface BKSLockdownDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation BKSLockdownDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"tetheredDisplayPortMode"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"EnableTetheredDisplayPortMode" toDefaultValue:MEMORY[0x1E695E110] options:1];
}

@end