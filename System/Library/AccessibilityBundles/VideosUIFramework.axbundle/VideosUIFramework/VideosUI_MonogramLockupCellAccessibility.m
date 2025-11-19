@interface VideosUI_MonogramLockupCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation VideosUI_MonogramLockupCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VUIMonogramView"];
  [v3 validateClass:@"VideosUI.MonogramLockupCell" hasSwiftField:@"monogramView" withSwiftType:"Optional<VUIMonogramView>"];
  [v3 validateClass:@"VUIMonogramView" hasInstanceMethod:@"overlayView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VideosUI.MonogramLockupCell" hasSwiftField:@"titleLabel" withSwiftType:"Optional<VUILabel>"];
  [v3 validateClass:@"VideosUI.MonogramLockupCell" hasSwiftField:@"subtitleLabel" withSwiftType:"Optional<VUILabel>"];
}

- (id)accessibilityLabel
{
  v3 = [(VideosUI_MonogramLockupCellAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  v4 = [v3 accessibilityLabel];

  v5 = [(VideosUI_MonogramLockupCellAccessibility *)self safeSwiftValueForKey:@"subtitleLabel"];
  v6 = [v5 accessibilityLabel];

  v7 = __UIAXStringForVariables();
  v8 = v7;
  if (!v7 || ![v7 length])
  {
    v9 = [(VideosUI_MonogramLockupCellAccessibility *)self _accessibilityDescendantOfType:MEMORY[0x29ED3FF70](@"VUIMonogramView")];
    v10 = [v9 accessibilityLabel];

    v8 = v10;
  }

  return v8;
}

- (id)accessibilityValue
{
  v3 = [(VideosUI_MonogramLockupCellAccessibility *)self safeSwiftValueForKey:@"monogramView"];
  v4 = [v3 safeValueForKey:@"overlayView"];

  if ([v4 _accessibilityViewIsVisible])
  {
    v5 = accessibilityLocalizedString(@"sports.favorites.isFavorited");
  }

  else
  {
    v8.receiver = self;
    v8.super_class = VideosUI_MonogramLockupCellAccessibility;
    v5 = [(VideosUI_MonogramLockupCellAccessibility *)&v8 accessibilityValue];
  }

  v6 = v5;

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