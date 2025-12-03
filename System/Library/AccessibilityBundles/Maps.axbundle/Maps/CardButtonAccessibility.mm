@interface CardButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CardButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CardButton" hasInstanceVariable:@"_actionButton" withType:"UIButton"];
  [validationsCopy validateClass:@"CardButton" isKindOfClass:@"UIView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v13.receiver = self;
  v13.super_class = CardButtonAccessibility;
  [(CardButtonAccessibility *)&v13 _accessibilityLoadAccessibilityInformation];
  LOBYTE(location) = 0;
  objc_opt_class();
  v3 = [(CardButtonAccessibility *)self safeValueForKey:@"_actionButton"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 imageForState:0];
  if (MEMORY[0x29C2DCDE0]())
  {
LABEL_7:

    goto LABEL_8;
  }

  buttonType = [v4 buttonType];

  if (buttonType == 7)
  {
    accessibilityIdentifier = [(CardButtonAccessibility *)self accessibilityIdentifier];
    v8 = [accessibilityIdentifier isEqualToString:@"CardButtonTypeShare"];

    if (v8)
    {
      v9 = @"SHARE_BUTTON";
    }

    else
    {
      v9 = @"CLOSE_BUTTON";
    }

    v5 = AXMapsLocString(v9);
    [v4 setAccessibilityLabel:v5];
    goto LABEL_7;
  }

LABEL_8:
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __69__CardButtonAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v10[3] = &unk_29F2CC548;
  objc_copyWeak(&v11, &location);
  [v4 _setAccessibilityFrameBlock:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

double __69__CardButtonAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained accessibilityFrame];
  v3 = v2;

  return v3;
}

@end