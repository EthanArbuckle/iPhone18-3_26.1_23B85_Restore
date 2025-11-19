@interface AssetCacheLocatorService
- (void)reporter:(id)a3 didFinishWithResults:(id)a4;
@end

@implementation AssetCacheLocatorService

- (void)reporter:(id)a3 didFinishWithResults:(id)a4
{
  if (a4)
  {
    v5 = sub_331E4();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;

  sub_2FC18(v5);
}

@end