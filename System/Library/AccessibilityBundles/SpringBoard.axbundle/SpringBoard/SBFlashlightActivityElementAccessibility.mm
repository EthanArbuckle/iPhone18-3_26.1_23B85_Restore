@interface SBFlashlightActivityElementAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setFlashlightOn:(BOOL)on;
@end

@implementation SBFlashlightActivityElementAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBFlashlightActivityElement" hasInstanceMethod:@"setFlashlightOn:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"SBFlashlightActivityElement" hasInstanceVariable:@"_flashlightOn" withType:"BOOL"];
}

- (void)setFlashlightOn:(BOOL)on
{
  onCopy = on;
  if ([(SBFlashlightActivityElementAccessibility *)self safeBoolForKey:@"flashlightOn"]!= on)
  {
    v5 = *MEMORY[0x29EDC7EA8];
    if (onCopy)
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
  [(SBFlashlightActivityElementAccessibility *)&v8 setFlashlightOn:onCopy];
}

@end