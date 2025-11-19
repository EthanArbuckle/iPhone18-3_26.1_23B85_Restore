@interface AEPDFMinifiedController
- (AEAssetMinifiedControllerDelegate)minifiedControllerDelegate;
- (AEPDFMinifiedController)initWithHelper:(id)a3;
- (void)minifiedControllerDidCloseAssetFully;
- (void)minifiedControllerSaveState;
- (void)minifiedControllerWillUnloadAsset;
@end

@implementation AEPDFMinifiedController

- (AEPDFMinifiedController)initWithHelper:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AEPDFMinifiedController;
  v6 = [(AEPDFMinifiedController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_helper, a3);
  }

  return v7;
}

- (void)minifiedControllerDidCloseAssetFully
{
  v3 = [(AEPDFMinifiedController *)self helper];
  v10 = [v3 url];

  v4 = +[AEPdfCache sharedInstance];
  v5 = [v4 copyCacheObjectForURL:v10];

  v6 = [v5 document];
  v7 = [v6 isEncrypted];

  v8 = +[AEPdfCache sharedInstance];
  [v8 removeCacheObjectForURL:v10];

  if (v7)
  {
    v9 = [(AEPDFMinifiedController *)self minifiedControllerDelegate];
    [v9 minifiedControllerRequestClose:self error:0];
  }
}

- (void)minifiedControllerWillUnloadAsset
{
  v3 = [(AEPDFMinifiedController *)self minifiedControllerLoadedAssetViewController];
  [v3 close:0];

  v4 = [(AEPDFMinifiedController *)self minifiedControllerLoadedAssetViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(AEPDFMinifiedController *)self minifiedControllerLoadedAssetViewController];
    [v6 assetViewControllerWillUnload];
  }
}

- (void)minifiedControllerSaveState
{
  v2 = [(AEPDFMinifiedController *)self minifiedControllerLoadedAssetViewController];
  [v2 saveStateClosing:0];
}

- (AEAssetMinifiedControllerDelegate)minifiedControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_minifiedControllerDelegate);

  return WeakRetained;
}

@end