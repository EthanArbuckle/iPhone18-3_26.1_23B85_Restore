@interface FBSDisplayConfiguration
- (id)clb_displayConfigurationForNonClarityUIApp;
@end

@implementation FBSDisplayConfiguration

- (id)clb_displayConfigurationForNonClarityUIApp
{
  v3 = sub_100006370();
  sub_100027FE0(v3, v10);
  v4 = *v10;
  v5 = *&v10[1];
  v6 = [(FBSDisplayConfiguration *)self currentMode];
  v7 = [v6 _copyWithOverrideSize:{v4, v5}];

  v8 = [(FBSDisplayConfiguration *)self copyWithOverrideMode:v7];

  return v8;
}

@end