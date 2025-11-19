@interface VUIFeaturedCellOverlayViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation VUIFeaturedCellOverlayViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VUIFeaturedCellOverlayView" hasProperty:@"appleTVChannelLogoView" withType:"@"];
  [v3 validateClass:@"VUIFeaturedCellOverlayView" hasProperty:@"titleLabel" withType:"@"];
  [v3 validateClass:@"VUIFeaturedCellOverlayView" hasProperty:@"subtitleLabel" withType:"@"];
  [v3 validateClass:@"VUIFeaturedCellOverlayView" hasProperty:@"buttons" withType:"@"];
}

- (id)accessibilityLabel
{
  v3 = MEMORY[0x29EDB8D80];
  v4 = [(VUIFeaturedCellOverlayViewAccessibility *)self safeValueForKey:@"appleTVChannelLogoView"];
  v5 = [(VUIFeaturedCellOverlayViewAccessibility *)self safeValueForKey:@"titleLabel"];
  v6 = [(VUIFeaturedCellOverlayViewAccessibility *)self safeValueForKey:@"subtitleLabel"];
  v7 = [v3 axArrayByIgnoringNilElementsWithCount:{3, v4, v5, v6}];

  v8 = AXLabelForElements();

  return v8;
}

@end