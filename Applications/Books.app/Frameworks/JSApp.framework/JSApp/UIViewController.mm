@interface UIViewController
+ (id)jsa_topMostViewControllerForWindow:(id)window;
+ (void)jsa_presentViewController:(id)controller options:(id)options animated:(BOOL)animated completion:(id)completion;
@end

@implementation UIViewController

+ (id)jsa_topMostViewControllerForWindow:(id)window
{
  windowCopy = window;
  v4 = windowCopy;
  if (windowCopy)
  {
    keyWindow = windowCopy;
  }

  else
  {
    v6 = +[JSABridge sharedInstance];
    windowManager = [v6 windowManager];
    keyWindow = [windowManager keyWindow];
  }

  rootViewController = [keyWindow rootViewController];
  presentedViewController = [rootViewController presentedViewController];

  if (presentedViewController)
  {
    do
    {
      presentedViewController2 = [rootViewController presentedViewController];

      v10PresentedViewController = [presentedViewController2 presentedViewController];

      rootViewController = presentedViewController2;
    }

    while (v10PresentedViewController);
  }

  else
  {
    presentedViewController2 = rootViewController;
  }

  return presentedViewController2;
}

+ (void)jsa_presentViewController:(id)controller options:(id)options animated:(BOOL)animated completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = sub_8434C();
  if (v8)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    v8 = sub_76B80;
  }

  else
  {
    v10 = 0;
  }

  controllerCopy = controller;
  _sSo16UIViewControllerC5JSAppE7present_7options8animated10completionyAB_SDys11AnyHashableVypGSbyycSgtFZ_0(controllerCopy, v9, animated, v8, v10);
  sub_2C0EC(v8);
}

@end