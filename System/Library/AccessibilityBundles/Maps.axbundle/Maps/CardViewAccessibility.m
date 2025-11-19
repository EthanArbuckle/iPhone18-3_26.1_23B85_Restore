@interface CardViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axCollapseCard;
- (BOOL)_axExpandCard;
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityViewIsModal;
- (id)_accessibilityContaineeViewController;
- (id)_accessibilityContainerViewController;
- (unint64_t)_accessibilityContaineeLayout;
- (void)layoutSubviews;
@end

@implementation CardViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ContainerViewController" hasInstanceMethod:@"setLayoutIfSupported: animated:" withFullSignature:{"v", "Q", "B", 0}];
  [v3 validateClass:@"ModalContaineeViewController" hasInstanceMethod:@"_dismissContainee" withFullSignature:{"v", 0}];
  [v3 validateClass:@"ContaineeViewController"];
}

- (BOOL)_axExpandCard
{
  v2 = [(CardViewAccessibility *)self _accessibilityContainerViewController];
  v3 = [v2 safeIntegerForKey:@"containeeLayout"];
  if (v3 == 2)
  {
    v4 = v8;
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v5 = __38__CardViewAccessibility__axExpandCard__block_invoke_2;
  }

  else
  {
    if (v3 != 1)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v4 = v9;
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v5 = __38__CardViewAccessibility__axExpandCard__block_invoke;
  }

  v4[2] = v5;
  v4[3] = &unk_29F2CC3B0;
  v4[4] = v2;
  AXPerformSafeBlock();

  v6 = 1;
LABEL_7:

  return v6;
}

- (BOOL)_axCollapseCard
{
  v2 = [(CardViewAccessibility *)self _accessibilityContainerViewController];
  v3 = [v2 safeIntegerForKey:@"containeeLayout"];
  if ((v3 - 3) >= 2)
  {
    if (v3 != 2)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v4 = v9;
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v5 = __40__CardViewAccessibility__axCollapseCard__block_invoke;
  }

  else
  {
    v4 = v8;
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v5 = __40__CardViewAccessibility__axCollapseCard__block_invoke_2;
  }

  v4[2] = v5;
  v4[3] = &unk_29F2CC3B0;
  v4[4] = v2;
  AXPerformSafeBlock();

  v6 = 1;
LABEL_7:

  return v6;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CardViewAccessibility;
  [(CardViewAccessibility *)&v4 layoutSubviews];
  [(CardViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 postNotificationName:@"AXMapVisibleRegionDidChange" object:0];
}

- (id)_accessibilityContainerViewController
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  if (v2)
  {
    while (1)
    {
      v3 = [MEMORY[0x29EDC7DA8] viewControllerForView:v2];
      v4 = __UIAccessibilitySafeClass();

      if (v4)
      {
        NSClassFromString(&cfstr_Containerviewc_0.isa);
        if (objc_opt_isKindOfClass())
        {
          break;
        }
      }

      v5 = [v2 superview];

      v2 = v5;
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v4 = 0;
  }

  return v4;
}

- (id)_accessibilityContaineeViewController
{
  v2 = [(CardViewAccessibility *)self _accessibilityContainerViewController];
  v3 = [v2 safeValueForKey:@"currentViewController"];

  return v3;
}

- (unint64_t)_accessibilityContaineeLayout
{
  v2 = [(CardViewAccessibility *)self _accessibilityContainerViewController];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 safeIntegerForKey:@"containeeLayout"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)accessibilityPerformEscape
{
  v2 = [MEMORY[0x29EDC7DA8] viewControllerForView:self];
  NSClassFromString(&cfstr_Modalcontainee.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = v2;
    AXPerformSafeBlock();
  }

  return isKindOfClass & 1;
}

- (BOOL)accessibilityViewIsModal
{
  if (AXDeviceIsPad())
  {
    return 0;
  }

  v4 = [(CardViewAccessibility *)self _accessibilityContaineeViewController];
  NSClassFromString(&cfstr_Collectioncrea.isa);
  v3 = (objc_opt_isKindOfClass() & 1) != 0 || [(CardViewAccessibility *)self _accessibilityContaineeLayout]== 3;

  return v3;
}

@end