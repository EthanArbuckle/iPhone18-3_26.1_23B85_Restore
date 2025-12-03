@interface AMSUIWebDynamicViewController
- (AMSUIWebDynamicViewController)initWithContext:(id)context URL:(id)l;
- (void)dynamicViewController:(id)controller didFinishPurchaseWithResult:(id)result error:(id)error;
- (void)dynamicViewController:(id)controller didFinishWithPurchaseResult:(id)result error:(id)error;
@end

@implementation AMSUIWebDynamicViewController

- (AMSUIWebDynamicViewController)initWithContext:(id)context URL:(id)l
{
  contextCopy = context;
  lCopy = l;
  v9 = [contextCopy bag];
  v12.receiver = self;
  v12.super_class = AMSUIWebDynamicViewController;
  v10 = [(AMSUIDynamicViewController *)&v12 initWithBag:v9 URL:lCopy];

  if (v10)
  {
    objc_storeStrong(&v10->_context, context);
  }

  return v10;
}

- (void)dynamicViewController:(id)controller didFinishPurchaseWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  if (resultCopy)
  {
    context = [(AMSUIWebDynamicViewController *)self context];
    dataProvider = [context dataProvider];
    v10 = [dataProvider postEvent:@"BuyConfirmed" options:MEMORY[0x1E695E0F8]];
  }

  context2 = [(AMSUIWebDynamicViewController *)self context];
  actionDelegate = [context2 actionDelegate];
  [actionDelegate actionDidFinishPurchaseWithResult:resultCopy error:errorCopy];
}

- (void)dynamicViewController:(id)controller didFinishWithPurchaseResult:(id)result error:(id)error
{
  v6 = [(UIViewController *)self ams_parentContainer:controller];
  modalPresentationDelegate = [v6 modalPresentationDelegate];

  if (modalPresentationDelegate)
  {
    [v6 handleModalDismissal];
  }
}

@end