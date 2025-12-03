@interface PUAdjustmentsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLayoutSubviews;
@end

@implementation PUAdjustmentsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PUAdjustmentsViewController" hasInstanceMethod:@"viewDidLayoutSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PUAdjustmentsViewController" hasInstanceMethod:@"slider" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUAdjustmentsViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"PUAdjustmentsDataSource" hasInstanceMethod:@"infoForItemAtIndexPath:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"PUAdjustmentsViewController" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUAdjustmentsViewController" hasInstanceMethod:@"selectedIndexPath" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUAdjustmentsViewController" hasInstanceMethod:@"layoutDirection" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"PUAdjustmentsViewController" hasInstanceMethod:@"setSelectedIndexPath:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"PUAdjustmentsViewController" hasInstanceMethod:@"_updateSliderForControlAtIndexPath:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"PUAdjustmentInfo" hasInstanceMethod:@"localizedName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUAdjustmentInfo" hasInstanceMethod:@"localizedSectionName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUPhotoEditBaseAdjustmentCell" hasInstanceMethod:@"isEnabled" withFullSignature:{"B", 0}];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUAdjustmentsViewControllerAccessibility;
  [(PUAdjustmentsViewControllerAccessibility *)&v3 viewDidLayoutSubviews];
  [(PUAdjustmentsViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = PUAdjustmentsViewControllerAccessibility;
  [(PUAdjustmentsViewControllerAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  _axAdjustmentsSlider = [(PUAdjustmentsViewControllerAccessibility *)self _axAdjustmentsSlider];
  v4 = [(PUAdjustmentsViewControllerAccessibility *)self safeValueForKey:@"slider"];
  if (!_axAdjustmentsSlider)
  {
    _axAdjustmentsSlider = [[AXPUAdjustmentSlider alloc] initWithAccessibilityContainer:self];
    [(PUAdjustmentsViewControllerAccessibility *)self _setAXAdjustmentsSlider:_axAdjustmentsSlider];
  }

  objc_opt_class();
  v5 = [(PUAdjustmentsViewControllerAccessibility *)self safeValueForKey:@"view"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{2, _axAdjustmentsSlider, v4}];
  [v6 setAccessibilityElements:v7];
}

@end