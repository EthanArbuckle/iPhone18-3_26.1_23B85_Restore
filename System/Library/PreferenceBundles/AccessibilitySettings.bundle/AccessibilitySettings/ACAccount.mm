@interface ACAccount
- (NSString)clarityUI_shortName;
@end

@implementation ACAccount

- (NSString)clarityUI_shortName
{
  v3 = objc_opt_new();
  aa_firstName = [(ACAccount *)self aa_firstName];
  [v3 setGivenName:aa_firstName];

  aa_middleName = [(ACAccount *)self aa_middleName];
  [v3 setMiddleName:aa_middleName];

  aa_lastName = [(ACAccount *)self aa_lastName];
  [v3 setFamilyName:aa_lastName];

  v7 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:v3 style:1 options:0];

  return v7;
}

@end