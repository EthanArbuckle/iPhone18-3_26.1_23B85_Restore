@interface BKNavigationInfo
+ (id)newEmptyNavigationInfo:(id)info;
- (BOOL)isExcludedFromSample;
@end

@implementation BKNavigationInfo

+ (id)newEmptyNavigationInfo:(id)info
{
  infoCopy = info;
  v4 = [infoCopy newByClass:objc_opt_class()];

  return v4;
}

- (BOOL)isExcludedFromSample
{
  href = [(BKNavigationInfo *)self href];
  uRLFragmentString = [href URLFragmentString];

  if (uRLFragmentString)
  {
    v4 = [BKNavigationInfo isExcludedFromSampleHash:uRLFragmentString];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end