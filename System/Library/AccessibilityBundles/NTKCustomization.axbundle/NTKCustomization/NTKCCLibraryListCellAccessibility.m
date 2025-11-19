@interface NTKCCLibraryListCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setFaceView:(id)a3;
@end

@implementation NTKCCLibraryListCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKCCLibraryListCell" hasInstanceMethod:@"faceView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKCCLibraryListCell" hasInstanceMethod:@"setFaceView:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = NTKCCLibraryListCellAccessibility;
  [(NTKCCLibraryListCellAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(NTKCCLibraryListCellAccessibility *)self safeValueForKey:@"faceView"];
  [v3 setAccessibilityElementsHidden:1];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 textLabel];
  v6 = [v2 detailTextLabel];
  v4 = __UIAXStringForVariables();

  return v4;
}

- (void)setFaceView:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKCCLibraryListCellAccessibility;
  [(NTKCCLibraryListCellAccessibility *)&v4 setFaceView:a3];
  [(NTKCCLibraryListCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end