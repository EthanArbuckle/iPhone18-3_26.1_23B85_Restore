@interface AXOnboardingObjC
+ (id)viewControllerForType:(unint64_t)a3 onDismiss:(id)a4;
@end

@implementation AXOnboardingObjC

+ (id)viewControllerForType:(unint64_t)a3 onDismiss:(id)a4
{
  v5 = a4;
  if (a3 > 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = [_TtC28AccessibilitySharedUISupport23AXOnboardingSwiftBridge viewControllerForType:a3 dismiss:v5];
  }

  return v6;
}

@end