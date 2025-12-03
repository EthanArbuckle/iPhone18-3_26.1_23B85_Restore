@interface AEPDFMinifiedController
- (AEAssetMinifiedControllerDelegate)minifiedControllerDelegate;
- (AEPDFMinifiedController)initWithHelper:(id)helper;
- (void)minifiedControllerDidCloseAssetFully;
- (void)minifiedControllerSaveState;
- (void)minifiedControllerWillUnloadAsset;
@end

@implementation AEPDFMinifiedController

- (AEPDFMinifiedController)initWithHelper:(id)helper
{
  helperCopy = helper;
  v9.receiver = self;
  v9.super_class = AEPDFMinifiedController;
  v6 = [(AEPDFMinifiedController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_helper, helper);
  }

  return v7;
}

- (void)minifiedControllerDidCloseAssetFully
{
  helper = [(AEPDFMinifiedController *)self helper];
  v10 = [helper url];

  v4 = +[AEPdfCache sharedInstance];
  v5 = [v4 copyCacheObjectForURL:v10];

  document = [v5 document];
  isEncrypted = [document isEncrypted];

  v8 = +[AEPdfCache sharedInstance];
  [v8 removeCacheObjectForURL:v10];

  if (isEncrypted)
  {
    minifiedControllerDelegate = [(AEPDFMinifiedController *)self minifiedControllerDelegate];
    [minifiedControllerDelegate minifiedControllerRequestClose:self error:0];
  }
}

- (void)minifiedControllerWillUnloadAsset
{
  minifiedControllerLoadedAssetViewController = [(AEPDFMinifiedController *)self minifiedControllerLoadedAssetViewController];
  [minifiedControllerLoadedAssetViewController close:0];

  minifiedControllerLoadedAssetViewController2 = [(AEPDFMinifiedController *)self minifiedControllerLoadedAssetViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    minifiedControllerLoadedAssetViewController3 = [(AEPDFMinifiedController *)self minifiedControllerLoadedAssetViewController];
    [minifiedControllerLoadedAssetViewController3 assetViewControllerWillUnload];
  }
}

- (void)minifiedControllerSaveState
{
  minifiedControllerLoadedAssetViewController = [(AEPDFMinifiedController *)self minifiedControllerLoadedAssetViewController];
  [minifiedControllerLoadedAssetViewController saveStateClosing:0];
}

- (AEAssetMinifiedControllerDelegate)minifiedControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_minifiedControllerDelegate);

  return WeakRetained;
}

@end