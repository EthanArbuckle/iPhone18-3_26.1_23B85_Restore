@interface VideosUI_MonogramLockupCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation VideosUI_MonogramLockupCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VUIMonogramView"];
  [validationsCopy validateClass:@"VideosUI.MonogramLockupCell" hasSwiftField:@"monogramView" withSwiftType:"Optional<VUIMonogramView>"];
  [validationsCopy validateClass:@"VUIMonogramView" hasInstanceMethod:@"overlayView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VideosUI.MonogramLockupCell" hasSwiftField:@"titleLabel" withSwiftType:"Optional<VUILabel>"];
  [validationsCopy validateClass:@"VideosUI.MonogramLockupCell" hasSwiftField:@"subtitleLabel" withSwiftType:"Optional<VUILabel>"];
}

- (id)accessibilityLabel
{
  v3 = [(VideosUI_MonogramLockupCellAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(VideosUI_MonogramLockupCellAccessibility *)self safeSwiftValueForKey:@"subtitleLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];

  v7 = __UIAXStringForVariables();
  v8 = v7;
  if (!v7 || ![v7 length])
  {
    v9 = [(VideosUI_MonogramLockupCellAccessibility *)self _accessibilityDescendantOfType:MEMORY[0x29ED3FF70](@"VUIMonogramView")];
    accessibilityLabel3 = [v9 accessibilityLabel];

    v8 = accessibilityLabel3;
  }

  return v8;
}

- (id)accessibilityValue
{
  v3 = [(VideosUI_MonogramLockupCellAccessibility *)self safeSwiftValueForKey:@"monogramView"];
  v4 = [v3 safeValueForKey:@"overlayView"];

  if ([v4 _accessibilityViewIsVisible])
  {
    accessibilityValue = accessibilityLocalizedString(@"sports.favorites.isFavorited");
  }

  else
  {
    v8.receiver = self;
    v8.super_class = VideosUI_MonogramLockupCellAccessibility;
    accessibilityValue = [(VideosUI_MonogramLockupCellAccessibility *)&v8 accessibilityValue];
  }

  v6 = accessibilityValue;

  return v6;
}

- (unint64_t)accessibilityTraits
{
  if ([(VideosUI_MonogramLockupCellAccessibility *)self _accessibilityHasDescendantOfType:MEMORY[0x29ED3FF70](@"VUIMonogramView", a2)])
  {
    v5.receiver = self;
    v5.super_class = VideosUI_MonogramLockupCellAccessibility;
    return *MEMORY[0x29EDC7F70] | [(VideosUI_MonogramLockupCellAccessibility *)&v5 accessibilityTraits];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = VideosUI_MonogramLockupCellAccessibility;
    return [(VideosUI_MonogramLockupCellAccessibility *)&v4 accessibilityTraits];
  }
}

@end