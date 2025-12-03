@interface PHInCallAudioButtonsBuilder
+ (id)buildDeprecatedSixedUpViewControllerWithCallDisplayManager:(id)manager;
+ (id)buildModernSixedUpViewControllerWithCallDisplayManager:(id)manager frontmostCall:(id)call with:(double)with;
@end

@implementation PHInCallAudioButtonsBuilder

+ (id)buildDeprecatedSixedUpViewControllerWithCallDisplayManager:(id)manager
{
  managerCopy = manager;
  v4 = sub_10023AA24(managerCopy);

  return v4;
}

+ (id)buildModernSixedUpViewControllerWithCallDisplayManager:(id)manager frontmostCall:(id)call with:(double)with
{
  managerCopy = manager;
  callCopy = call;
  v9 = sub_10023AAAC(managerCopy, call, with);

  return v9;
}

@end