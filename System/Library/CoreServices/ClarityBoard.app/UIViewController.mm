@interface UIViewController
+ (id)backButtonAvoidingHostingControllerWithContainedViewController:(id)controller;
@end

@implementation UIViewController

+ (id)backButtonAvoidingHostingControllerWithContainedViewController:(id)controller
{
  controllerCopy = controller;
  v4 = sub_100043004(controllerCopy);

  return v4;
}

@end