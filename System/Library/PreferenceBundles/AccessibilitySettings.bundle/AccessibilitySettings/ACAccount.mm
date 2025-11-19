@interface ACAccount
- (NSString)clarityUI_shortName;
@end

@implementation ACAccount

- (NSString)clarityUI_shortName
{
  v3 = objc_opt_new();
  v4 = [(ACAccount *)self aa_firstName];
  [v3 setGivenName:v4];

  v5 = [(ACAccount *)self aa_middleName];
  [v3 setMiddleName:v5];

  v6 = [(ACAccount *)self aa_lastName];
  [v3 setFamilyName:v6];

  v7 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:v3 style:1 options:0];

  return v7;
}

@end