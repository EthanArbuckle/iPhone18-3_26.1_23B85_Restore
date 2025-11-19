@interface LPApplicationCompatibilityQuirks
+ (BOOL)needsFreshWKUserContentController;
@end

@implementation LPApplicationCompatibilityQuirks

+ (BOOL)needsFreshWKUserContentController
{
  if (dyld_program_sdk_at_least())
  {
    return 0;
  }

  return [LPApplicationIdentification isKnownApplication:1];
}

@end