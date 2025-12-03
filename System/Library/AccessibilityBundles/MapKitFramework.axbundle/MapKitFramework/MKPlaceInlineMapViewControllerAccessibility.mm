@interface MKPlaceInlineMapViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUpdateMapContentView;
- (void)_updateMap;
@end

@implementation MKPlaceInlineMapViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MKPlaceInlineMapViewController" hasInstanceVariable:@"_contentView" withType:"_MKPlaceInlineMapContentView"];
  [validationsCopy validateClass:@"MKPlaceInlineMapViewController" hasInstanceMethod:@"mapItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MKMapItem" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MKPlaceInlineMapViewController" hasInstanceMethod:@"_updateMap" withFullSignature:{"v", 0}];
}

- (void)_axUpdateMapContentView
{
  v3 = [(MKPlaceInlineMapViewControllerAccessibility *)self safeValueForKey:@"_contentView"];
  v4 = [(MKPlaceInlineMapViewControllerAccessibility *)self safeValueForKey:@"mapItem"];
  objc_opt_class();
  v5 = [v4 safeValueForKey:@"name"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = MEMORY[0x29EDBA0F8];
  v8 = AXMapKitLocString(@"MAP_CONTAINING");
  v9 = [v7 localizedStringWithFormat:v8, v6];
  [v3 setAccessibilityLabel:v9];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = MKPlaceInlineMapViewControllerAccessibility;
  [(MKPlaceInlineMapViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(MKPlaceInlineMapViewControllerAccessibility *)self _axUpdateMapContentView];
}

- (void)_updateMap
{
  v3.receiver = self;
  v3.super_class = MKPlaceInlineMapViewControllerAccessibility;
  [(MKPlaceInlineMapViewControllerAccessibility *)&v3 _updateMap];
  [(MKPlaceInlineMapViewControllerAccessibility *)self _axUpdateMapContentView];
}

@end