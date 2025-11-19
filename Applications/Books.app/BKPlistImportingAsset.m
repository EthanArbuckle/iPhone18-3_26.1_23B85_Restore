@interface BKPlistImportingAsset
+ (id)newBlankAsset;
@end

@implementation BKPlistImportingAsset

+ (id)newBlankAsset
{
  v2 = objc_opt_new();
  [v2 setState:4];
  return v2;
}

@end