@interface AssetCacheLocatorService
- (void)reporter:(id)reporter didFinishWithResults:(id)results;
@end

@implementation AssetCacheLocatorService

- (void)reporter:(id)reporter didFinishWithResults:(id)results
{
  if (results)
  {
    v5 = sub_331E4();
  }

  else
  {
    v5 = 0;
  }

  reporterCopy = reporter;

  sub_2FC18(v5);
}

@end