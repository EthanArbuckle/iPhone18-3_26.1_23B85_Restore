@interface OBHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axNavigationControllerParent;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)extendedInitWithTitle:(id)title detailText:(id)text;
- (void)setDetailText:(id)text;
- (void)setTitle:(id)title;
@end

@implementation OBHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"OBHeaderView" hasInstanceMethod:@"headerLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"OBHeaderView" hasInstanceMethod:@"detailLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"OBHeaderView" hasInstanceMethod:@"extendedInitWithTitle:detailText:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"OBHeaderView" hasInstanceMethod:@"setTitle:" withFullSignature:{"v", "@", 0}];
}

- (void)extendedInitWithTitle:(id)title detailText:(id)text
{
  v5.receiver = self;
  v5.super_class = OBHeaderViewAccessibility;
  [(OBHeaderViewAccessibility *)&v5 extendedInitWithTitle:title detailText:text];
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

- (void)setTitle:(id)title
{
  titleCopy = title;
  v14 = 0;
  objc_opt_class();
  v5 = [(OBHeaderViewAccessibility *)self safeValueForKey:@"headerLabel"];
  v6 = __UIAccessibilityCastAsClass();

  text = [v6 text];
  if (!text)
  {
    goto LABEL_4;
  }

  v8 = text;
  text2 = [v6 text];
  if ([text2 isEqualToString:titleCopy])
  {

LABEL_4:
    v13.receiver = self;
    v13.super_class = OBHeaderViewAccessibility;
    [(OBHeaderViewAccessibility *)&v13 setTitle:titleCopy];
    goto LABEL_5;
  }

  v10 = [titleCopy length];

  v13.receiver = self;
  v13.super_class = OBHeaderViewAccessibility;
  [(OBHeaderViewAccessibility *)&v13 setTitle:titleCopy];
  if (v10)
  {
    _axNavigationControllerParent = [(OBHeaderViewAccessibility *)self _axNavigationControllerParent];
    if ([_axNavigationControllerParent _isTransitioning])
    {
    }

    else
    {
      window = [v6 window];

      if (window)
      {
        UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v6);
      }
    }
  }

LABEL_5:
}

- (void)setDetailText:(id)text
{
  textCopy = text;
  v14 = 0;
  objc_opt_class();
  v5 = [(OBHeaderViewAccessibility *)self safeValueForKey:@"detailLabel"];
  v6 = __UIAccessibilityCastAsClass();

  text = [v6 text];
  if (!text)
  {
    goto LABEL_4;
  }

  v8 = text;
  text2 = [v6 text];
  if ([text2 isEqualToString:textCopy])
  {

LABEL_4:
    v13.receiver = self;
    v13.super_class = OBHeaderViewAccessibility;
    [(OBHeaderViewAccessibility *)&v13 setDetailText:textCopy];
    goto LABEL_5;
  }

  v10 = [textCopy length];

  v13.receiver = self;
  v13.super_class = OBHeaderViewAccessibility;
  [(OBHeaderViewAccessibility *)&v13 setDetailText:textCopy];
  if (v10)
  {
    _axNavigationControllerParent = [(OBHeaderViewAccessibility *)self _axNavigationControllerParent];
    if ([_axNavigationControllerParent _isTransitioning])
    {
    }

    else
    {
      window = [v6 window];

      if (window)
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
  _accessibilityViewController = [v2 _accessibilityViewController];
  navigationController = [_accessibilityViewController navigationController];

  return navigationController;
}

BOOL __58__OBHeaderViewAccessibility__axNavigationControllerParent__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  v3 = [v2 navigationController];
  v4 = v3 != 0;

  return v4;
}

@end