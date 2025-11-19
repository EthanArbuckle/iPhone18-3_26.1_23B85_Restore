@interface AMSUIWebDynamicViewController
- (AMSUIWebDynamicViewController)initWithContext:(id)a3 URL:(id)a4;
- (void)dynamicViewController:(id)a3 didFinishPurchaseWithResult:(id)a4 error:(id)a5;
- (void)dynamicViewController:(id)a3 didFinishWithPurchaseResult:(id)a4 error:(id)a5;
@end

@implementation AMSUIWebDynamicViewController

- (AMSUIWebDynamicViewController)initWithContext:(id)a3 URL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 bag];
  v12.receiver = self;
  v12.super_class = AMSUIWebDynamicViewController;
  v10 = [(AMSUIDynamicViewController *)&v12 initWithBag:v9 URL:v8];

  if (v10)
  {
    objc_storeStrong(&v10->_context, a3);
  }

  return v10;
}

- (void)dynamicViewController:(id)a3 didFinishPurchaseWithResult:(id)a4 error:(id)a5
{
  v13 = a4;
  v7 = a5;
  if (v13)
  {
    v8 = [(AMSUIWebDynamicViewController *)self context];
    v9 = [v8 dataProvider];
    v10 = [v9 postEvent:@"BuyConfirmed" options:MEMORY[0x1E695E0F8]];
  }

  v11 = [(AMSUIWebDynamicViewController *)self context];
  v12 = [v11 actionDelegate];
  [v12 actionDidFinishPurchaseWithResult:v13 error:v7];
}

- (void)dynamicViewController:(id)a3 didFinishWithPurchaseResult:(id)a4 error:(id)a5
{
  v6 = [(UIViewController *)self ams_parentContainer:a3];
  v5 = [v6 modalPresentationDelegate];

  if (v5)
  {
    [v6 handleModalDismissal];
  }
}

@end