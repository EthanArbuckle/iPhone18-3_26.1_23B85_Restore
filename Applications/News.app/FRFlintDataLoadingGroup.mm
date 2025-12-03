@interface FRFlintDataLoadingGroup
- (FRFlintDataLoadingGroup)initWithLoadJSONOnce:(id)once loadFontsOnce:(id)fontsOnce loadAssetURLsOnce:(id)lsOnce loadAssetsOnce:(id)assetsOnce loadLinkedContentOnce:(id)contentOnce;
@end

@implementation FRFlintDataLoadingGroup

- (FRFlintDataLoadingGroup)initWithLoadJSONOnce:(id)once loadFontsOnce:(id)fontsOnce loadAssetURLsOnce:(id)lsOnce loadAssetsOnce:(id)assetsOnce loadLinkedContentOnce:(id)contentOnce
{
  onceCopy = once;
  fontsOnceCopy = fontsOnce;
  lsOnceCopy = lsOnce;
  assetsOnceCopy = assetsOnce;
  contentOnceCopy = contentOnce;
  v21.receiver = self;
  v21.super_class = FRFlintDataLoadingGroup;
  v17 = [(FRFlintDataLoadingGroup *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_loadJSONOnce, once);
    objc_storeStrong(&v18->_loadFontsOnce, fontsOnce);
    objc_storeStrong(&v18->_loadAssetURLsOnce, lsOnce);
    objc_storeStrong(&v18->_loadAssetsOnce, assetsOnce);
    objc_storeStrong(&v18->_loadLinkedContentOnce, contentOnce);
  }

  return v18;
}

@end