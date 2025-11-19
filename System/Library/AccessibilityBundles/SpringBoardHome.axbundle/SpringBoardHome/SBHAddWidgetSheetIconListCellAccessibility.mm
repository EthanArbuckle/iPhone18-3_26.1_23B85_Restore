@interface SBHAddWidgetSheetIconListCellAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SBHAddWidgetSheetIconListCellAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SBHAddWidgetSheetIconListCellAccessibility;
  [(SBHAddWidgetSheetIconListCellAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(SBHAddWidgetSheetIconListCellAccessibility *)self safeValueForKey:@"textLabel"];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

@end