@interface AXOnboardingSwiftBridge
+ (id)viewControllerForType:(int64_t)type dismiss:(id)dismiss;
- (_TtC28AccessibilitySharedUISupport23AXOnboardingSwiftBridge)init;
@end

@implementation AXOnboardingSwiftBridge

+ (id)viewControllerForType:(int64_t)type dismiss:(id)dismiss
{
  v5 = _Block_copy(dismiss);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = objc_allocWithZone(type metadata accessor for ViewController());
  v8 = sub_23DAB7510(type, sub_23DAB87F4, v6);

  return v8;
}

- (_TtC28AccessibilitySharedUISupport23AXOnboardingSwiftBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AXOnboardingSwiftBridge();
  return [(AXOnboardingSwiftBridge *)&v3 init];
}

@end