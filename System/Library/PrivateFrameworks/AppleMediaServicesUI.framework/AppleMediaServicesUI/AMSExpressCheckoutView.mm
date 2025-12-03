@interface AMSExpressCheckoutView
+ (id)createViewControllerWithRequest:(id)request model:(id)model engagementViewController:(id)controller;
@end

@implementation AMSExpressCheckoutView

+ (id)createViewControllerWithRequest:(id)request model:(id)model engagementViewController:(id)controller
{
  requestCopy = request;
  modelCopy = model;
  controllerCopy = controller;
  v10 = static AMSExpressCheckoutView.createViewController(request:model:engagementViewController:)(requestCopy, modelCopy, controllerCopy);

  return v10;
}

@end