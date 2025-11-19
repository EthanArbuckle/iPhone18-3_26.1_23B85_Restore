@interface BaseLockupViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
@end

@implementation BaseLockupViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ASMessagesProvider.SearchAdTransparencyLabel"];
  [v3 validateClass:@"ASMessagesProvider.BaseLockupView" hasInstanceMethod:@"accessibilityHeadingLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ASMessagesProvider.BaseLockupView" hasInstanceMethod:@"accessibilityTertiaryTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ASMessagesProvider.BaseLockupView" hasInstanceMethod:@"accessibilityOfferLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ASMessagesProvider.BaseLockupView" hasInstanceMethod:@"accessibilityOrdinalLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ASMessagesProvider.BaseLockupView" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ASMessagesProvider.BaseLockupView" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ASMessagesProvider.BaseLockupView" hasInstanceMethod:@"accessibilityOfferButton" withFullSignature:{"@", 0}];
}

uint64_t __65__BaseLockupViewAccessibility__accessibilityAdvertisementElement__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2C5C00](@"ASMessagesProvider.SearchAdTransparencyLabel");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)accessibilityLabel
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(BaseLockupViewAccessibility *)self _accessibilityAdvertisementElement];
  v5 = v4;
  if (v4 && [v4 _accessibilityViewIsVisible])
  {
    [v3 axSafelyAddObject:v5];
  }

  v6 = [(BaseLockupViewAccessibility *)self safeValueForKey:@"accessibilityHeadingLabel"];
  if ([v6 _accessibilityViewIsVisible])
  {
    [v3 axSafelyAddObject:v6];
  }

  v7 = [(BaseLockupViewAccessibility *)self safeValueForKey:@"accessibilityOrdinalLabel"];
  if ([v7 _accessibilityViewIsVisible])
  {
    [v3 axSafelyAddObject:v7];
  }

  v8 = [(BaseLockupViewAccessibility *)self safeValueForKey:@"accessibilityTitleLabel"];
  if ([v8 _accessibilityViewIsVisible])
  {
    [v3 axSafelyAddObject:v8];
  }

  v9 = [(BaseLockupViewAccessibility *)self safeValueForKey:@"accessibilitySubtitleLabel"];
  if ([v9 _accessibilityViewIsVisible])
  {
    [v3 axSafelyAddObject:v9];
  }

  v10 = [(BaseLockupViewAccessibility *)self safeValueForKey:@"accessibilityTertiaryTitleLabel"];
  if ([v10 _accessibilityViewIsVisible])
  {
    [v3 axSafelyAddObject:v10];
  }

  v11 = [(BaseLockupViewAccessibility *)self safeValueForKey:@"accessibilityAdLabel"];
  if ([v11 _accessibilityViewIsVisible])
  {
    v12 = [v11 text];
    [v3 axSafelyAddObject:v12];
  }

  v13 = AXLabelForElements();

  return v13;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v9.receiver = self;
  v9.super_class = BaseLockupViewAccessibility;
  v4 = [(BaseLockupViewAccessibility *)&v9 _accessibilitySupplementaryFooterViews];
  [v3 axSafelyAddObjectsFromArray:v4];

  v5 = [(BaseLockupViewAccessibility *)self _accessibilityAdvertisementElement];
  [v3 axSafelyAddObject:v5];
  v6 = [(BaseLockupViewAccessibility *)self safeValueForKey:@"accessibilityOfferButton"];
  [v3 axSafelyAddObject:v6];
  v7 = [(BaseLockupViewAccessibility *)self safeValueForKey:@"accessibilityOfferLabel"];
  [v3 axSafelyAddObject:v7];

  return v3;
}

@end