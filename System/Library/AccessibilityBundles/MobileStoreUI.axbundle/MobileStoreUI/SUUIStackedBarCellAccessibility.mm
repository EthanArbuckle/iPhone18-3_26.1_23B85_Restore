@interface SUUIStackedBarCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsTappable;
- (BOOL)accessibilityActivate;
- (id)accessibilityHint;
- (unint64_t)accessibilityTraits;
@end

@implementation SUUIStackedBarCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUIStackedBarCell" hasInstanceVariable:@"_backButton" withType:"UIButton"];
  [validationsCopy validateClass:@"SUUIStackedBarCell" hasInstanceVariable:@"_expanded" withType:"BOOL"];
}

- (BOOL)accessibilityActivate
{
  _axIsTappable = [(SUUIStackedBarCellAccessibility *)self _axIsTappable];
  if (_axIsTappable)
  {
    objc_opt_class();
    v4 = [(SUUIStackedBarCellAccessibility *)self safeValueForKey:@"_backButton"];
    v5 = __UIAccessibilityCastAsClass();

    [v5 sendActionsForControlEvents:64];
  }

  return _axIsTappable;
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

  isHidden = [v4 isHidden];
  return isHidden ^ 1;
}

@end