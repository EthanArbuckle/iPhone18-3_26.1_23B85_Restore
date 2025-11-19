@interface UIRepeatedActionAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)setDisableRepeat:(BOOL)a3;
@end

@implementation UIRepeatedActionAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIRepeatedAction" hasInstanceMethod:@"setDisableRepeat:" withFullSignature:{"v", "B", 0}];
  [location[0] validateClass:@"UIApplication" hasInstanceVariable:@"_keyRepeatAction" withType:"UIRepeatedAction"];
  objc_storeStrong(v4, obj);
}

- (void)setDisableRepeat:(BOOL)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v5 = 0;
  v3 = 0;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v6 = [*MEMORY[0x29EDC8008] safeValueForKey:@"_keyRepeatAction"];
    v5 = 1;
    v3 = v9 == v6;
  }

  if (v5)
  {
    MEMORY[0x29EDC9740](v6);
  }

  if (v3)
  {
    v7 = 1;
  }

  v4.receiver = v9;
  v4.super_class = UIRepeatedActionAccessibility;
  [(UIRepeatedActionAccessibility *)&v4 setDisableRepeat:v7];
}

@end