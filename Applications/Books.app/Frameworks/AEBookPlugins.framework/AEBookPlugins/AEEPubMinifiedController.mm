@interface AEEPubMinifiedController
- (AEAssetMinifiedControllerDelegate)minifiedControllerDelegate;
- (AEEPubMinifiedController)initWithHelper:(id)helper;
- (void)minifiedControllerSaveState;
- (void)minifiedControllerWillUnloadAsset;
@end

@implementation AEEPubMinifiedController

- (AEEPubMinifiedController)initWithHelper:(id)helper
{
  helperCopy = helper;
  v9.receiver = self;
  v9.super_class = AEEPubMinifiedController;
  v6 = [(AEEPubMinifiedController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_helper, helper);
  }

  return v7;
}

- (void)minifiedControllerWillUnloadAsset
{
  minifiedControllerLoadedAssetViewController = [(AEEPubMinifiedController *)self minifiedControllerLoadedAssetViewController];
  [minifiedControllerLoadedAssetViewController close:0];

  minifiedControllerLoadedAssetViewController2 = [(AEEPubMinifiedController *)self minifiedControllerLoadedAssetViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    minifiedControllerLoadedAssetViewController3 = [(AEEPubMinifiedController *)self minifiedControllerLoadedAssetViewController];
    [minifiedControllerLoadedAssetViewController3 assetViewControllerWillUnload];
  }
}

- (void)minifiedControllerSaveState
{
  minifiedControllerLoadedAssetViewController = [(AEEPubMinifiedController *)self minifiedControllerLoadedAssetViewController];
  [minifiedControllerLoadedAssetViewController saveStateClosing:0];
}

- (AEAssetMinifiedControllerDelegate)minifiedControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_minifiedControllerDelegate);

  return WeakRetained;
}

@end