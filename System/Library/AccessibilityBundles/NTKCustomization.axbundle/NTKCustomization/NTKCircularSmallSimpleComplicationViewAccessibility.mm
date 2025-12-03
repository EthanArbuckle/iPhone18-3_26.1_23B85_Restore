@interface NTKCircularSmallSimpleComplicationViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateImageViewWithImageProvider:(id)provider;
@end

@implementation NTKCircularSmallSimpleComplicationViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKCircularSmallSimpleComplicationView" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKCircularSmallSimpleComplicationView" hasInstanceMethod:@"_updateImageViewWithImageProvider:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CDStackedImagesComplicationImageView" hasInstanceMethod:@"imageProvider" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = NTKCircularSmallSimpleComplicationViewAccessibility;
  [(NTKCircularSmallSimpleComplicationViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(NTKCircularSmallSimpleComplicationViewAccessibility *)self safeValueForKey:@"_imageView"];
  v4 = [v3 safeValueForKey:@"imageProvider"];
  accessibilityLabel = [v4 accessibilityLabel];
  [v3 setAccessibilityLabel:accessibilityLabel];
}

- (void)_updateImageViewWithImageProvider:(id)provider
{
  v4.receiver = self;
  v4.super_class = NTKCircularSmallSimpleComplicationViewAccessibility;
  [(NTKCircularSmallSimpleComplicationViewAccessibility *)&v4 _updateImageViewWithImageProvider:provider];
  [(NTKCircularSmallSimpleComplicationViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end