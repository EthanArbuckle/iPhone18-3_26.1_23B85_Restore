@interface UIViewController
+ (id)jsa_topMostViewControllerForWindow:(id)a3;
+ (void)jsa_presentViewController:(id)a3 options:(id)a4 animated:(BOOL)a5 completion:(id)a6;
@end

@implementation UIViewController

+ (id)jsa_topMostViewControllerForWindow:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = +[JSABridge sharedInstance];
    v7 = [v6 windowManager];
    v5 = [v7 keyWindow];
  }

  v8 = [v5 rootViewController];
  v9 = [v8 presentedViewController];

  if (v9)
  {
    do
    {
      v10 = [v8 presentedViewController];

      v11 = [v10 presentedViewController];

      v8 = v10;
    }

    while (v11);
  }

  else
  {
    v10 = v8;
  }

  return v10;
}

+ (void)jsa_presentViewController:(id)a3 options:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v8 = _Block_copy(a6);
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

  v11 = a3;
  _sSo16UIViewControllerC5JSAppE7present_7options8animated10completionyAB_SDys11AnyHashableVypGSbyycSgtFZ_0(v11, v9, a5, v8, v10);
  sub_2C0EC(v8);
}

@end