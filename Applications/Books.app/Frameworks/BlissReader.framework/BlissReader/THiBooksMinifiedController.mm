@interface THiBooksMinifiedController
- (AEAssetMinifiedControllerDelegate)minifiedControllerDelegate;
- (THiBooksMinifiedController)initWithHelper:(id)helper;
- (void)minifiedControllerSaveState;
- (void)minifiedControllerWillUnloadAsset;
@end

@implementation THiBooksMinifiedController

- (THiBooksMinifiedController)initWithHelper:(id)helper
{
  helperCopy = helper;
  v9.receiver = self;
  v9.super_class = THiBooksMinifiedController;
  v6 = [(THiBooksMinifiedController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_helper, helper);
  }

  return v7;
}

- (void)minifiedControllerWillUnloadAsset
{
  minifiedControllerLoadedAssetViewController = [(THiBooksMinifiedController *)self minifiedControllerLoadedAssetViewController];
  [minifiedControllerLoadedAssetViewController close:0];

  minifiedControllerLoadedAssetViewController2 = [(THiBooksMinifiedController *)self minifiedControllerLoadedAssetViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    minifiedControllerLoadedAssetViewController3 = [(THiBooksMinifiedController *)self minifiedControllerLoadedAssetViewController];
    [minifiedControllerLoadedAssetViewController3 assetViewControllerWillUnload];
  }
}

- (void)minifiedControllerSaveState
{
  minifiedControllerLoadedAssetViewController = [(THiBooksMinifiedController *)self minifiedControllerLoadedAssetViewController];
  [minifiedControllerLoadedAssetViewController saveStateClosing:0];
}

- (AEAssetMinifiedControllerDelegate)minifiedControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_minifiedControllerDelegate);

  return WeakRetained;
}

@end