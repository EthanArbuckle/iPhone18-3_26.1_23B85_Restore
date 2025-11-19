@interface SKRemoteProductActivityViewController
- (SKStoreProductActivityViewController)productActivityViewController;
- (void)didFinishWithResult:(id)a3 error:(id)a4;
@end

@implementation SKRemoteProductActivityViewController

- (void)didFinishWithResult:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(SKRemoteProductActivityViewController *)self productActivityViewController];
  v8 = [v7 unsignedIntegerValue];

  [v9 _didFinishWithResult:v8 error:v6];
}

- (SKStoreProductActivityViewController)productActivityViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_productActivityViewController);

  return WeakRetained;
}

@end