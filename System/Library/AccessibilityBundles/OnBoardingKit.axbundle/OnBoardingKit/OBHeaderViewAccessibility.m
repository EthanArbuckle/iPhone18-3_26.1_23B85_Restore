@interface OBHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axNavigationControllerParent;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)extendedInitWithTitle:(id)a3 detailText:(id)a4;
- (void)setDetailText:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation OBHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"OBHeaderView" hasInstanceMethod:@"headerLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"OBHeaderView" hasInstanceMethod:@"detailLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"OBHeaderView" hasInstanceMethod:@"extendedInitWithTitle:detailText:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"OBHeaderView" hasInstanceMethod:@"setTitle:" withFullSignature:{"v", "@", 0}];
}

- (void)extendedInitWithTitle:(id)a3 detailText:(id)a4
{
  v5.receiver = self;
  v5.super_class = OBHeaderViewAccessibility;
  [(OBHeaderViewAccessibility *)&v5 extendedInitWithTitle:a3 detailText:a4];
  [(OBHeaderViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = OBHeaderViewAccessibility;
  [(OBHeaderViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = *MEMORY[0x29EDC7F80];
  v4 = *MEMORY[0x29EDC7FD0];
  v5 = [(OBHeaderViewAccessibility *)self safeUIViewForKey:@"headerLabel"];
  [v5 setAccessibilityTraits:v4 | v3];
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v14 = 0;
  objc_opt_class();
  v5 = [(OBHeaderViewAccessibility *)self safeValueForKey:@"headerLabel"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v6 text];
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = v7;
  v9 = [v6 text];
  if ([v9 isEqualToString:v4])
  {

LABEL_4:
    v13.receiver = self;
    v13.super_class = OBHeaderViewAccessibility;
    [(OBHeaderViewAccessibility *)&v13 setTitle:v4];
    goto LABEL_5;
  }

  v10 = [v4 length];

  v13.receiver = self;
  v13.super_class = OBHeaderViewAccessibility;
  [(OBHeaderViewAccessibility *)&v13 setTitle:v4];
  if (v10)
  {
    v11 = [(OBHeaderViewAccessibility *)self _axNavigationControllerParent];
    if ([v11 _isTransitioning])
    {
    }

    else
    {
      v12 = [v6 window];

      if (v12)
      {
        UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v6);
      }
    }
  }

LABEL_5:
}

- (void)setDetailText:(id)a3
{
  v4 = a3;
  v14 = 0;
  objc_opt_class();
  v5 = [(OBHeaderViewAccessibility *)self safeValueForKey:@"detailLabel"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v6 text];
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = v7;
  v9 = [v6 text];
  if ([v9 isEqualToString:v4])
  {

LABEL_4:
    v13.receiver = self;
    v13.super_class = OBHeaderViewAccessibility;
    [(OBHeaderViewAccessibility *)&v13 setDetailText:v4];
    goto LABEL_5;
  }

  v10 = [v4 length];

  v13.receiver = self;
  v13.super_class = OBHeaderViewAccessibility;
  [(OBHeaderViewAccessibility *)&v13 setDetailText:v4];
  if (v10)
  {
    v11 = [(OBHeaderViewAccessibility *)self _axNavigationControllerParent];
    if ([v11 _isTransitioning])
    {
    }

    else
    {
      v12 = [v6 window];

      if (v12)
      {
        UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v6);
      }
    }
  }

LABEL_5:
}

- (id)_axNavigationControllerParent
{
  v2 = [(OBHeaderViewAccessibility *)self _accessibilityFindViewAncestor:&__block_literal_global_0 startWithSelf:0];
  v3 = [v2 _accessibilityViewController];
  v4 = [v3 navigationController];

  return v4;
}

BOOL __58__OBHeaderViewAccessibility__axNavigationControllerParent__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  v3 = [v2 navigationController];
  v4 = v3 != 0;

  return v4;
}

@end