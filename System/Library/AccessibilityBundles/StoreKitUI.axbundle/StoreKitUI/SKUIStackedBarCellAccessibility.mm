@interface SKUIStackedBarCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsTappable;
- (BOOL)accessibilityActivate;
- (id)accessibilityHint;
- (unint64_t)accessibilityTraits;
@end

@implementation SKUIStackedBarCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUIStackedBarCell" hasInstanceVariable:@"_backButton" withType:"UIButton"];
  [validationsCopy validateClass:@"SKUIStackedBarCell" hasInstanceVariable:@"_expanded" withType:"BOOL"];
}

- (BOOL)accessibilityActivate
{
  _axIsTappable = [(SKUIStackedBarCellAccessibility *)self _axIsTappable];
  if (_axIsTappable)
  {
    objc_opt_class();
    v4 = [(SKUIStackedBarCellAccessibility *)self safeValueForKey:@"_backButton"];
    v5 = __UIAccessibilityCastAsClass();

    [v5 sendActionsForControlEvents:64];
  }

  return _axIsTappable;
}

- (id)accessibilityHint
{
  if ([(SKUIStackedBarCellAccessibility *)self _axIsTappable]&& [(SKUIStackedBarCellAccessibility *)self safeBoolForKey:@"_expanded"])
  {
    v3 = accessibilitySKUILocalizedString(@"explore.category.collapse");
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)accessibilityTraits
{
  if (![(SKUIStackedBarCellAccessibility *)self _axIsTappable])
  {
    return *MEMORY[0x29EDC7FD0];
  }

  v4.receiver = self;
  v4.super_class = SKUIStackedBarCellAccessibility;
  return [(SKUIStackedBarCellAccessibility *)&v4 accessibilityTraits];
}

- (BOOL)_axIsTappable
{
  objc_opt_class();
  v3 = [(SKUIStackedBarCellAccessibility *)self safeValueForKey:@"_backButton"];
  v4 = __UIAccessibilityCastAsClass();

  isHidden = [v4 isHidden];
  return isHidden ^ 1;
}

@end