@interface AEEPubPicturebookMinifiedController
- (AEAssetMinifiedControllerDelegate)minifiedControllerDelegate;
- (AEEPubPicturebookMinifiedController)initWithHelper:(id)helper;
- (void)minifiedControllerSaveState;
- (void)minifiedControllerWillUnloadAsset;
@end

@implementation AEEPubPicturebookMinifiedController

- (AEEPubPicturebookMinifiedController)initWithHelper:(id)helper
{
  helperCopy = helper;
  v9.receiver = self;
  v9.super_class = AEEPubPicturebookMinifiedController;
  v6 = [(AEEPubPicturebookMinifiedController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_helper, helper);
  }

  return v7;
}

- (void)minifiedControllerWillUnloadAsset
{
  minifiedControllerLoadedAssetViewController = [(AEEPubPicturebookMinifiedController *)self minifiedControllerLoadedAssetViewController];
  [minifiedControllerLoadedAssetViewController close:0];

  minifiedControllerLoadedAssetViewController2 = [(AEEPubPicturebookMinifiedController *)self minifiedControllerLoadedAssetViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    minifiedControllerLoadedAssetViewController3 = [(AEEPubPicturebookMinifiedController *)self minifiedControllerLoadedAssetViewController];
    [minifiedControllerLoadedAssetViewController3 assetViewControllerWillUnload];
  }
}

- (void)minifiedControllerSaveState
{
  minifiedControllerLoadedAssetViewController = [(AEEPubPicturebookMinifiedController *)self minifiedControllerLoadedAssetViewController];
  [minifiedControllerLoadedAssetViewController saveStateClosing:0];
}

- (AEAssetMinifiedControllerDelegate)minifiedControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_minifiedControllerDelegate);

  return WeakRetained;
}

@end