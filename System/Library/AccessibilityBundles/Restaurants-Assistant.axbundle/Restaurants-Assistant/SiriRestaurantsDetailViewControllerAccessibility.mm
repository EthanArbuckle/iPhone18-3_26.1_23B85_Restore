@interface SiriRestaurantsDetailViewControllerAccessibility
- (void)_configurePhoneCell:(id)cell forItem:(int64_t)item;
- (void)_configureReviewsCell:(id)cell forItem:(int64_t)item;
- (void)_configureURLCell:(id)cell forItem:(int64_t)item;
@end

@implementation SiriRestaurantsDetailViewControllerAccessibility

- (void)_configurePhoneCell:(id)cell forItem:(int64_t)item
{
  cellCopy = cell;
  [cellCopy setIsAccessibilityElement:1];
  [cellCopy setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  v9.receiver = self;
  v9.super_class = SiriRestaurantsDetailViewControllerAccessibility;
  [(SiriRestaurantsDetailViewControllerAccessibility *)&v9 _configurePhoneCell:cellCopy forItem:item];
  v7 = [cellCopy safeValueForKey:@"textLabel"];
  accessibilityLabel = [v7 accessibilityLabel];
  [cellCopy setAccessibilityLabel:accessibilityLabel];
}

- (void)_configureURLCell:(id)cell forItem:(int64_t)item
{
  cellCopy = cell;
  [cellCopy setIsAccessibilityElement:1];
  [cellCopy setAccessibilityTraits:*MEMORY[0x29EDC7F98]];
  v9.receiver = self;
  v9.super_class = SiriRestaurantsDetailViewControllerAccessibility;
  [(SiriRestaurantsDetailViewControllerAccessibility *)&v9 _configureURLCell:cellCopy forItem:item];
  v7 = [cellCopy safeValueForKey:@"textLabel"];
  accessibilityLabel = [v7 accessibilityLabel];
  [cellCopy setAccessibilityLabel:accessibilityLabel];
}

- (void)_configureReviewsCell:(id)cell forItem:(int64_t)item
{
  cellCopy = cell;
  [cellCopy setIsAccessibilityElement:1];
  [cellCopy setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  v12.receiver = self;
  v12.super_class = SiriRestaurantsDetailViewControllerAccessibility;
  [(SiriRestaurantsDetailViewControllerAccessibility *)&v12 _configureReviewsCell:cellCopy forItem:item];
  v7 = [cellCopy _accessibilityFindSubviewDescendant:&__block_literal_global_0];
  accessibilityLabel = [v7 accessibilityLabel];
  v9 = [cellCopy safeValueForKey:@"textLabel"];
  accessibilityLabel2 = [v9 accessibilityLabel];
  v11 = __UIAXStringForVariables();
  [cellCopy setAccessibilityLabel:{v11, accessibilityLabel2, @"__AXStringForVariablesSentinel"}];
}

uint64_t __82__SiriRestaurantsDetailViewControllerAccessibility__configureReviewsCell_forItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Siriuistarsvie.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end