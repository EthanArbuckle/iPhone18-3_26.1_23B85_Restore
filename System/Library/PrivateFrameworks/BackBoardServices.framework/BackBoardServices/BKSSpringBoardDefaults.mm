@interface BKSSpringBoardDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation BKSSpringBoardDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"brightness"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBBacklightLevel2" toDefaultValue:&unk_1EF56BFE8 options:1];
}

@end