@interface VUIFeaturedCellOverlayViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation VUIFeaturedCellOverlayViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VUIFeaturedCellOverlayView" hasProperty:@"appleTVChannelLogoView" withType:"@"];
  [validationsCopy validateClass:@"VUIFeaturedCellOverlayView" hasProperty:@"titleLabel" withType:"@"];
  [validationsCopy validateClass:@"VUIFeaturedCellOverlayView" hasProperty:@"subtitleLabel" withType:"@"];
  [validationsCopy validateClass:@"VUIFeaturedCellOverlayView" hasProperty:@"buttons" withType:"@"];
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