@interface BKNavigationInfo
+ (id)newEmptyNavigationInfo:(id)a3;
- (BOOL)isExcludedFromSample;
@end

@implementation BKNavigationInfo

+ (id)newEmptyNavigationInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 newByClass:objc_opt_class()];

  return v4;
}

- (BOOL)isExcludedFromSample
{
  v2 = [(BKNavigationInfo *)self href];
  v3 = [v2 URLFragmentString];

  if (v3)
  {
    v4 = [BKNavigationInfo isExcludedFromSampleHash:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end