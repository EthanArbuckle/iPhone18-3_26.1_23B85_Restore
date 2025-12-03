@interface BaseLockupViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
@end

@implementation BaseLockupViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BridgeStoreExtension.SearchAdTransparencyLabel"];
  [validationsCopy validateClass:@"BridgeStoreExtension.BaseLockupView" hasInstanceMethod:@"accessibilityHeadingLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BridgeStoreExtension.BaseLockupView" hasInstanceMethod:@"accessibilityTertiaryTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BridgeStoreExtension.BaseLockupView" hasInstanceMethod:@"accessibilityOfferLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BridgeStoreExtension.BaseLockupView" hasInstanceMethod:@"accessibilityOrdinalLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BridgeStoreExtension.BaseLockupView" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BridgeStoreExtension.BaseLockupView" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BridgeStoreExtension.BaseLockupView" hasInstanceMethod:@"accessibilityOfferButton" withFullSignature:{"@", 0}];
}

uint64_t __65__BaseLockupViewAccessibility__accessibilityAdvertisementElement__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2CD990](@"BridgeStoreExtension.SearchAdTransparencyLabel");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)accessibilityLabel
{
  array = [MEMORY[0x29EDB8DE8] array];
  _accessibilityAdvertisementElement = [(BaseLockupViewAccessibility *)self _accessibilityAdvertisementElement];
  v5 = _accessibilityAdvertisementElement;
  if (_accessibilityAdvertisementElement && [_accessibilityAdvertisementElement _accessibilityViewIsVisible])
  {
    [array axSafelyAddObject:v5];
  }

  v6 = [(BaseLockupViewAccessibility *)self safeValueForKey:@"accessibilityHeadingLabel"];
  if ([v6 _accessibilityViewIsVisible])
  {
    [array axSafelyAddObject:v6];
  }

  v7 = [(BaseLockupViewAccessibility *)self safeValueForKey:@"accessibilityOrdinalLabel"];
  if ([v7 _accessibilityViewIsVisible])
  {
    [array axSafelyAddObject:v7];
  }

  v8 = [(BaseLockupViewAccessibility *)self safeValueForKey:@"accessibilityTitleLabel"];
  if ([v8 _accessibilityViewIsVisible])
  {
    [array axSafelyAddObject:v8];
  }

  v9 = [(BaseLockupViewAccessibility *)self safeValueForKey:@"accessibilitySubtitleLabel"];
  if ([v9 _accessibilityViewIsVisible])
  {
    [array axSafelyAddObject:v9];
  }

  v10 = [(BaseLockupViewAccessibility *)self safeValueForKey:@"accessibilityTertiaryTitleLabel"];
  if ([v10 _accessibilityViewIsVisible])
  {
    [array axSafelyAddObject:v10];
  }

  v11 = [(BaseLockupViewAccessibility *)self safeValueForKey:@"accessibilityAdLabel"];
  if ([v11 _accessibilityViewIsVisible])
  {
    text = [v11 text];
    [array axSafelyAddObject:text];
  }

  v13 = AXLabelForElements();

  return v13;
}

- (id)_accessibilitySupplementaryFooterViews
{
  array = [MEMORY[0x29EDB8DE8] array];
  v9.receiver = self;
  v9.super_class = BaseLockupViewAccessibility;
  _accessibilitySupplementaryFooterViews = [(BaseLockupViewAccessibility *)&v9 _accessibilitySupplementaryFooterViews];
  [array axSafelyAddObjectsFromArray:_accessibilitySupplementaryFooterViews];

  _accessibilityAdvertisementElement = [(BaseLockupViewAccessibility *)self _accessibilityAdvertisementElement];
  [array axSafelyAddObject:_accessibilityAdvertisementElement];
  v6 = [(BaseLockupViewAccessibility *)self safeValueForKey:@"accessibilityOfferButton"];
  [array axSafelyAddObject:v6];
  v7 = [(BaseLockupViewAccessibility *)self safeValueForKey:@"accessibilityOfferLabel"];
  [array axSafelyAddObject:v7];

  return array;
}

@end