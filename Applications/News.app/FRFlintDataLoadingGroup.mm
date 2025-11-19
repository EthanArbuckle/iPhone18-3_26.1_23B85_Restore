@interface FRFlintDataLoadingGroup
- (FRFlintDataLoadingGroup)initWithLoadJSONOnce:(id)a3 loadFontsOnce:(id)a4 loadAssetURLsOnce:(id)a5 loadAssetsOnce:(id)a6 loadLinkedContentOnce:(id)a7;
@end

@implementation FRFlintDataLoadingGroup

- (FRFlintDataLoadingGroup)initWithLoadJSONOnce:(id)a3 loadFontsOnce:(id)a4 loadAssetURLsOnce:(id)a5 loadAssetsOnce:(id)a6 loadLinkedContentOnce:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = FRFlintDataLoadingGroup;
  v17 = [(FRFlintDataLoadingGroup *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_loadJSONOnce, a3);
    objc_storeStrong(&v18->_loadFontsOnce, a4);
    objc_storeStrong(&v18->_loadAssetURLsOnce, a5);
    objc_storeStrong(&v18->_loadAssetsOnce, a6);
    objc_storeStrong(&v18->_loadLinkedContentOnce, a7);
  }

  return v18;
}

@end