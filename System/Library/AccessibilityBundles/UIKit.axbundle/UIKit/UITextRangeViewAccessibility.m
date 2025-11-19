@interface UITextRangeViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)automationElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)updateGrabbers;
@end

@implementation UITextRangeViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = @"UITextRangeView";
  v3 = "UISelectionGrabber";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:@"UITextRangeView" hasInstanceVariable:@"m_endGrabber" withType:"UISelectionGrabber"];
  [location[0] validateClass:@"UITextRangeView" hasInstanceMethod:@"updateGrabbers" withFullSignature:{"v", 0}];
  objc_storeStrong(v6, obj);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = UITextRangeViewAccessibility;
  [(UITextRangeViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(UITextRangeViewAccessibility *)v7 safeUIViewForKey:@"m_startGrabber"];
  [v3 setAccessibilityIdentifier:@"TextSelectionStartGrabber"];
  *&v2 = MEMORY[0x29EDC9740](v3).n128_u64[0];
  v4 = [(UITextRangeViewAccessibility *)v7 safeUIViewForKey:@"m_endGrabber", v2];
  [v4 setAccessibilityIdentifier:@"TextSelectionEndGrabber"];
  MEMORY[0x29EDC9740](v4);
}

- (void)updateGrabbers
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UITextRangeViewAccessibility;
  [(UITextRangeViewAccessibility *)&v2 updateGrabbers];
  [(UITextRangeViewAccessibility *)v4 _accessibilityLoadAccessibilityInformation];
}

- (id)automationElements
{
  v3 = MEMORY[0x29EDB8D80];
  v5 = [(UITextRangeViewAccessibility *)self safeValueForKey:@"m_startGrabber"];
  v4 = [(UITextRangeViewAccessibility *)self safeValueForKey:@"m_endGrabber"];
  v6 = [v3 axArrayByIgnoringNilElementsWithCount:{2, v5, v4}];
  MEMORY[0x29EDC9740](v4);
  MEMORY[0x29EDC9740](v5);

  return v6;
}

@end