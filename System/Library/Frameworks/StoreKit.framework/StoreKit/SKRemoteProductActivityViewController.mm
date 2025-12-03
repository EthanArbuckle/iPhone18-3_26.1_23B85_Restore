@interface SKRemoteProductActivityViewController
- (SKStoreProductActivityViewController)productActivityViewController;
- (void)didFinishWithResult:(id)result error:(id)error;
@end

@implementation SKRemoteProductActivityViewController

- (void)didFinishWithResult:(id)result error:(id)error
{
  errorCopy = error;
  resultCopy = result;
  productActivityViewController = [(SKRemoteProductActivityViewController *)self productActivityViewController];
  unsignedIntegerValue = [resultCopy unsignedIntegerValue];

  [productActivityViewController _didFinishWithResult:unsignedIntegerValue error:errorCopy];
}

- (SKStoreProductActivityViewController)productActivityViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_productActivityViewController);

  return WeakRetained;
}

@end