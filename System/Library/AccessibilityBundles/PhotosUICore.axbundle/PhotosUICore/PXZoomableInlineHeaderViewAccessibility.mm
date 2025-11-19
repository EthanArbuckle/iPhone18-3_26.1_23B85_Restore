@interface PXZoomableInlineHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation PXZoomableInlineHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PXZoomableInlineHeaderView" hasInstanceMethod:@"userData" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXZoomableInlineHeaderViewConfiguration" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXZoomableInlineHeaderViewConfiguration" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXZoomableInlineHeaderView" isKindOfClass:@"UIView"];
}

- (BOOL)isAccessibilityElement
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 _accessibilityViewIsVisible];

  return v3;
}

- (id)accessibilityLabel
{
  v2 = [(PXZoomableInlineHeaderViewAccessibility *)self safeValueForKey:@"userData"];
  v3 = [v2 safeValueForKey:@"title"];
  v6 = [v2 safeValueForKey:@"subtitle"];
  v4 = __UIAXStringForVariables();

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PXZoomableInlineHeaderViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(PXZoomableInlineHeaderViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7F80];
}

@end