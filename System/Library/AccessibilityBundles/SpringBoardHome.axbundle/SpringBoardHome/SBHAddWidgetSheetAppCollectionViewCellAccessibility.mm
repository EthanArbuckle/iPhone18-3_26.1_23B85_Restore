@interface SBHAddWidgetSheetAppCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
@end

@implementation SBHAddWidgetSheetAppCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBHAddWidgetDetailSheetViewController"];
  [v3 validateClass:@"SBHAddWidgetSheetAppCollectionViewCell" hasInstanceMethod:@"textLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHAddWidgetSheetAppCollectionViewCell" hasInstanceMethod:@"detailTextLabel" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v11 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 superview];
  v5 = [v4 _accessibilityViewController];
  NSClassFromString(&cfstr_Sbhaddwidgetde_3.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  v10.receiver = self;
  v10.super_class = SBHAddWidgetSheetAppCollectionViewCellAccessibility;
  v7 = [(SBHAddWidgetSheetAppCollectionViewCellAccessibility *)&v10 accessibilityTraits];
  v8 = MEMORY[0x29EDC7F80];
  if ((isKindOfClass & 1) == 0)
  {
    v8 = MEMORY[0x29EDC7F70];
  }

  return *v8 | v7;
}

@end