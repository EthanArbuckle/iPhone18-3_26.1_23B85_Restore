@interface AEEPubPicturebookMinifiedController
- (AEAssetMinifiedControllerDelegate)minifiedControllerDelegate;
- (AEEPubPicturebookMinifiedController)initWithHelper:(id)a3;
- (void)minifiedControllerSaveState;
- (void)minifiedControllerWillUnloadAsset;
@end

@implementation AEEPubPicturebookMinifiedController

- (AEEPubPicturebookMinifiedController)initWithHelper:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AEEPubPicturebookMinifiedController;
  v6 = [(AEEPubPicturebookMinifiedController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_helper, a3);
  }

  return v7;
}

- (void)minifiedControllerWillUnloadAsset
{
  v3 = [(AEEPubPicturebookMinifiedController *)self minifiedControllerLoadedAssetViewController];
  [v3 close:0];

  v4 = [(AEEPubPicturebookMinifiedController *)self minifiedControllerLoadedAssetViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(AEEPubPicturebookMinifiedController *)self minifiedControllerLoadedAssetViewController];
    [v6 assetViewControllerWillUnload];
  }
}

- (void)minifiedControllerSaveState
{
  v2 = [(AEEPubPicturebookMinifiedController *)self minifiedControllerLoadedAssetViewController];
  [v2 saveStateClosing:0];
}

- (AEAssetMinifiedControllerDelegate)minifiedControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_minifiedControllerDelegate);

  return WeakRetained;
}

@end