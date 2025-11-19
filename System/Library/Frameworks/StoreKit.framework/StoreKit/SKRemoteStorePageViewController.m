@interface SKRemoteStorePageViewController
- (SKStorePageViewController)storePageViewController;
- (void)didFinishWithResult:(id)a3 error:(id)a4;
- (void)showProductPageWithItemIdentifier:(id)a3;
@end

@implementation SKRemoteStorePageViewController

- (void)didFinishWithResult:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SKRemoteStorePageViewController *)self storePageViewController];
  [v8 _didFinishWithResult:v7 error:v6];
}

- (void)showProductPageWithItemIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SKRemoteStorePageViewController *)self storePageViewController];
  [v5 _showProductPageWithItemIdentifier:v4];
}

- (SKStorePageViewController)storePageViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_storePageViewController);

  return WeakRetained;
}

@end