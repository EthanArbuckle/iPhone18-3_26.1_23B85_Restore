@interface AMSExpressCheckoutView
+ (id)createViewControllerWithRequest:(id)a3 model:(id)a4 engagementViewController:(id)a5;
@end

@implementation AMSExpressCheckoutView

+ (id)createViewControllerWithRequest:(id)a3 model:(id)a4 engagementViewController:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = static AMSExpressCheckoutView.createViewController(request:model:engagementViewController:)(v7, v8, v9);

  return v10;
}

@end