@interface AXOnboardingObjC
+ (id)viewControllerForType:(unint64_t)type onDismiss:(id)dismiss;
@end

@implementation AXOnboardingObjC

+ (id)viewControllerForType:(unint64_t)type onDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  if (type > 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = [_TtC28AccessibilitySharedUISupport23AXOnboardingSwiftBridge viewControllerForType:type dismiss:dismissCopy];
  }

  return v6;
}

@end