@interface UIRepeatedActionAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setDisableRepeat:(BOOL)repeat;
@end

@implementation UIRepeatedActionAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UIRepeatedAction" hasInstanceMethod:@"setDisableRepeat:" withFullSignature:{"v", "B", 0}];
  [location[0] validateClass:@"UIApplication" hasInstanceVariable:@"_keyRepeatAction" withType:"UIRepeatedAction"];
  objc_storeStrong(v4, obj);
}

- (void)setDisableRepeat:(BOOL)repeat
{
  selfCopy = self;
  v8 = a2;
  repeatCopy = repeat;
  v5 = 0;
  v3 = 0;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v6 = [*MEMORY[0x29EDC8008] safeValueForKey:@"_keyRepeatAction"];
    v5 = 1;
    v3 = selfCopy == v6;
  }

  if (v5)
  {
    MEMORY[0x29EDC9740](v6);
  }

  if (v3)
  {
    repeatCopy = 1;
  }

  v4.receiver = selfCopy;
  v4.super_class = UIRepeatedActionAccessibility;
  [(UIRepeatedActionAccessibility *)&v4 setDisableRepeat:repeatCopy];
}

@end