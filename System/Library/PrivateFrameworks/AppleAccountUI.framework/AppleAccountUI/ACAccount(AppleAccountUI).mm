@interface ACAccount(AppleAccountUI)
- (BOOL)aaui_compositeNameFormat;
- (id)aaui_compositeName;
@end

@implementation ACAccount(AppleAccountUI)

- (id)aaui_compositeName
{
  aa_firstName = [self aa_firstName];
  aa_lastName = [self aa_lastName];
  v4 = AAUICopyCompositeName(aa_firstName, aa_lastName);

  return v4;
}

- (BOOL)aaui_compositeNameFormat
{
  v2 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  aa_firstName = [self aa_firstName];
  [v2 setGivenName:aa_firstName];

  aa_lastName = [self aa_lastName];
  [v2 setFamilyName:aa_lastName];

  v5 = [MEMORY[0x1E696ADF8] _nameOrderWithOverridesForComponents:v2 options:0] == 2;
  return v5;
}

@end