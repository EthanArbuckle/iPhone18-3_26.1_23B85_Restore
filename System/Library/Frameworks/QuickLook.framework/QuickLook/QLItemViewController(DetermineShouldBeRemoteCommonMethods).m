@interface QLItemViewController(DetermineShouldBeRemoteCommonMethods)
+ (uint64_t)shouldBeRemoteForMediaContentType:()DetermineShouldBeRemoteCommonMethods;
@end

@implementation QLItemViewController(DetermineShouldBeRemoteCommonMethods)

+ (uint64_t)shouldBeRemoteForMediaContentType:()DetermineShouldBeRemoteCommonMethods
{
  v3 = a3;
  if ([MEMORY[0x277CCA8D8] mainBundleSupportsBackgroundAudio] && (objc_msgSend(v3, "isEqualToString:", @"public.3gpp") & 1) == 0)
  {
    v4 = [v3 isEqualToString:@"org.3gpp.adaptive-multi-rate-audio"];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

@end