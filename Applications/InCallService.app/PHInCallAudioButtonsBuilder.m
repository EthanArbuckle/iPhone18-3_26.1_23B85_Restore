@interface PHInCallAudioButtonsBuilder
+ (id)buildDeprecatedSixedUpViewControllerWithCallDisplayManager:(id)a3;
+ (id)buildModernSixedUpViewControllerWithCallDisplayManager:(id)a3 frontmostCall:(id)a4 with:(double)a5;
@end

@implementation PHInCallAudioButtonsBuilder

+ (id)buildDeprecatedSixedUpViewControllerWithCallDisplayManager:(id)a3
{
  v3 = a3;
  v4 = sub_10023AA24(v3);

  return v4;
}

+ (id)buildModernSixedUpViewControllerWithCallDisplayManager:(id)a3 frontmostCall:(id)a4 with:(double)a5
{
  v7 = a3;
  v8 = a4;
  v9 = sub_10023AAAC(v7, a4, a5);

  return v9;
}

@end