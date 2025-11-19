@interface CAMDescriptionOverlayViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityViewIsModal;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (id)_accessibilitySupplementaryFooterViews;
@end

@implementation CAMDescriptionOverlayViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CAMDescriptionOverlayView" hasInstanceMethod:@"_titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMDescriptionOverlayView" hasInstanceMethod:@"_descriptionTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMDescriptionOverlayView" hasInstanceMethod:@"_descriptionLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMDescriptionOverlayView" hasInstanceMethod:@"_infoTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMDescriptionOverlayView" hasInstanceMethod:@"_infoLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMDescriptionOverlayView" hasInstanceMethod:@"_primaryVibrancyEffectView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMDescriptionOverlayView" hasInstanceMethod:@"_acknowledgmentButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMDescriptionOverlayView" hasInstanceMethod:@"_detailButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMDescriptionOverlayView" hasInstanceMethod:@"isVisible" withFullSignature:{"B", 0}];
}

- (BOOL)isAccessibilityElement
{
  if (([(CAMDescriptionOverlayViewAccessibility *)self safeBoolForKey:@"isVisible"]& 1) != 0)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = CAMDescriptionOverlayViewAccessibility;
  return [(CAMDescriptionOverlayViewAccessibility *)&v4 isAccessibilityElement];
}

- (CGRect)accessibilityFrame
{
  v2 = [(CAMDescriptionOverlayViewAccessibility *)self safeValueForKey:@"_primaryVibrancyEffectView"];
  [v2 accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)accessibilityViewIsModal
{
  if (([(CAMDescriptionOverlayViewAccessibility *)self safeBoolForKey:@"isVisible"]& 1) != 0)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = CAMDescriptionOverlayViewAccessibility;
  return [(CAMDescriptionOverlayViewAccessibility *)&v4 accessibilityViewIsModal];
}

- (id)_accessibilitySupplementaryFooterViews
{
  v12.receiver = self;
  v12.super_class = CAMDescriptionOverlayViewAccessibility;
  v3 = [(CAMDescriptionOverlayViewAccessibility *)&v12 _accessibilitySupplementaryFooterViews];
  v4 = [v3 mutableCopy];

  if (!v4)
  {
    v4 = objc_opt_new();
  }

  v5 = [(CAMDescriptionOverlayViewAccessibility *)self safeValueForKey:@"_detailButton"];
  v6 = __UIAccessibilitySafeClass();
  v7 = [v6 _accessibilityViewIsVisible];

  if (v7)
  {
    [v4 axSafelyAddObject:v5];
  }

  v8 = [(CAMDescriptionOverlayViewAccessibility *)self safeValueForKey:@"_acknowledgmentButton"];
  v9 = __UIAccessibilitySafeClass();
  v10 = [v9 _accessibilityViewIsVisible];

  if (v10)
  {
    [v4 axSafelyAddObject:v8];
  }

  return v4;
}

@end