@interface SBHAddWidgetSheetAppCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
@end

@implementation SBHAddWidgetSheetAppCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBHAddWidgetDetailSheetViewController"];
  [validationsCopy validateClass:@"SBHAddWidgetSheetAppCollectionViewCell" hasInstanceMethod:@"textLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBHAddWidgetSheetAppCollectionViewCell" hasInstanceMethod:@"detailTextLabel" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v11 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  superview = [v3 superview];
  _accessibilityViewController = [superview _accessibilityViewController];
  NSClassFromString(&cfstr_Sbhaddwidgetde_3.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  v10.receiver = self;
  v10.super_class = SBHAddWidgetSheetAppCollectionViewCellAccessibility;
  accessibilityTraits = [(SBHAddWidgetSheetAppCollectionViewCellAccessibility *)&v10 accessibilityTraits];
  v8 = MEMORY[0x29EDC7F80];
  if ((isKindOfClass & 1) == 0)
  {
    v8 = MEMORY[0x29EDC7F70];
  }

  return *v8 | accessibilityTraits;
}

@end