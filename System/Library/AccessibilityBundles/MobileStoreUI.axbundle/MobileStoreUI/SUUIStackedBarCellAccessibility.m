@interface SUUIStackedBarCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsTappable;
- (BOOL)accessibilityActivate;
- (id)accessibilityHint;
- (unint64_t)accessibilityTraits;
@end

@implementation SUUIStackedBarCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUIStackedBarCell" hasInstanceVariable:@"_backButton" withType:"UIButton"];
  [v3 validateClass:@"SUUIStackedBarCell" hasInstanceVariable:@"_expanded" withType:"BOOL"];
}

- (BOOL)accessibilityActivate
{
  v3 = [(SUUIStackedBarCellAccessibility *)self _axIsTappable];
  if (v3)
  {
    objc_opt_class();
    v4 = [(SUUIStackedBarCellAccessibility *)self safeValueForKey:@"_backButton"];
    v5 = __UIAccessibilityCastAsClass();

    [v5 sendActionsForControlEvents:64];
  }

  return v3;
}

- (id)accessibilityHint
{
  if ([(SUUIStackedBarCellAccessibility *)self _axIsTappable]&& [(SUUIStackedBarCellAccessibility *)self safeBoolForKey:@"_expanded"])
  {
    v3 = accessibilityLocalizedString(@"explore.category.collapse");
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)accessibilityTraits
{
  if (![(SUUIStackedBarCellAccessibility *)self _axIsTappable])
  {
    return *MEMORY[0x29EDC7FD0];
  }

  v4.receiver = self;
  v4.super_class = SUUIStackedBarCellAccessibility;
  return [(SUUIStackedBarCellAccessibility *)&v4 accessibilityTraits];
}

- (BOOL)_axIsTappable
{
  objc_opt_class();
  v3 = [(SUUIStackedBarCellAccessibility *)self safeValueForKey:@"_backButton"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 isHidden];
  return v5 ^ 1;
}

@end