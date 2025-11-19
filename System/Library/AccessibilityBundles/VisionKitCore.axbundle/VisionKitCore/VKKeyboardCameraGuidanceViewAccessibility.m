@interface VKKeyboardCameraGuidanceViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_reallyShowGuidance;
@end

@implementation VKKeyboardCameraGuidanceViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VKKeyboardCameraGuidanceView" hasInstanceMethod:@"_reallyShowGuidance" withFullSignature:{"v", 0}];
  [v3 validateClass:@"VKKeyboardCameraGuidanceView" hasInstanceVariable:@"_text" withType:"NSString"];
}

- (void)_reallyShowGuidance
{
  v4.receiver = self;
  v4.super_class = VKKeyboardCameraGuidanceViewAccessibility;
  [(VKKeyboardCameraGuidanceViewAccessibility *)&v4 _reallyShowGuidance];
  v3 = [(VKKeyboardCameraGuidanceViewAccessibility *)self safeStringForKey:@"_text"];
  UIAccessibilitySpeakAndDoNotBeInterrupted();
}

@end