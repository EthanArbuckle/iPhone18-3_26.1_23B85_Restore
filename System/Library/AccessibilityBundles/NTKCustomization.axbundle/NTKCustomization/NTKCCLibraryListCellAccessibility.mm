@interface NTKCCLibraryListCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setFaceView:(id)view;
@end

@implementation NTKCCLibraryListCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKCCLibraryListCell" hasInstanceMethod:@"faceView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKCCLibraryListCell" hasInstanceMethod:@"setFaceView:" withFullSignature:{"v", "@", 0}];
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
  textLabel = [v2 textLabel];
  detailTextLabel = [v2 detailTextLabel];
  v4 = __UIAXStringForVariables();

  return v4;
}

- (void)setFaceView:(id)view
{
  v4.receiver = self;
  v4.super_class = NTKCCLibraryListCellAccessibility;
  [(NTKCCLibraryListCellAccessibility *)&v4 setFaceView:view];
  [(NTKCCLibraryListCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end