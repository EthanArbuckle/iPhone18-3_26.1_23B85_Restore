@interface SKRemoteStorePageViewController
- (SKStorePageViewController)storePageViewController;
- (void)didFinishWithResult:(id)result error:(id)error;
- (void)showProductPageWithItemIdentifier:(id)identifier;
@end

@implementation SKRemoteStorePageViewController

- (void)didFinishWithResult:(id)result error:(id)error
{
  errorCopy = error;
  resultCopy = result;
  storePageViewController = [(SKRemoteStorePageViewController *)self storePageViewController];
  [storePageViewController _didFinishWithResult:resultCopy error:errorCopy];
}

- (void)showProductPageWithItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  storePageViewController = [(SKRemoteStorePageViewController *)self storePageViewController];
  [storePageViewController _showProductPageWithItemIdentifier:identifierCopy];
}

- (SKStorePageViewController)storePageViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_storePageViewController);

  return WeakRetained;
}

@end