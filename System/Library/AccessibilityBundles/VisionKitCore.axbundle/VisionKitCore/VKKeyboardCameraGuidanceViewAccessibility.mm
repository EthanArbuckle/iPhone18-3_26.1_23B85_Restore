@interface VKKeyboardCameraGuidanceViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_reallyShowGuidance;
@end

@implementation VKKeyboardCameraGuidanceViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VKKeyboardCameraGuidanceView" hasInstanceMethod:@"_reallyShowGuidance" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"VKKeyboardCameraGuidanceView" hasInstanceVariable:@"_text" withType:"NSString"];
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