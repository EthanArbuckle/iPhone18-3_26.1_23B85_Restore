@interface SBFlashlightActivityElementAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)setFlashlightOn:(BOOL)a3;
@end

@implementation SBFlashlightActivityElementAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBFlashlightActivityElement" hasInstanceMethod:@"setFlashlightOn:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"SBFlashlightActivityElement" hasInstanceVariable:@"_flashlightOn" withType:"BOOL"];
}

- (void)setFlashlightOn:(BOOL)a3
{
  v3 = a3;
  if ([(SBFlashlightActivityElementAccessibility *)self safeBoolForKey:@"flashlightOn"]!= a3)
  {
    v5 = *MEMORY[0x29EDC7EA8];
    if (v3)
    {
      v6 = @"flashlight.on.full";
    }

    else
    {
      v6 = @"flashlight.off.full";
    }

    v7 = accessibilityLocalizedString(v6);
    UIAccessibilityPostNotification(v5, v7);
  }

  v8.receiver = self;
  v8.super_class = SBFlashlightActivityElementAccessibility;
  [(SBFlashlightActivityElementAccessibility *)&v8 setFlashlightOn:v3];
}

@end