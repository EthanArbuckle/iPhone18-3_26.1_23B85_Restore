@interface NTKCircularSmallSimpleComplicationViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateImageViewWithImageProvider:(id)a3;
@end

@implementation NTKCircularSmallSimpleComplicationViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKCircularSmallSimpleComplicationView" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKCircularSmallSimpleComplicationView" hasInstanceMethod:@"_updateImageViewWithImageProvider:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CDStackedImagesComplicationImageView" hasInstanceMethod:@"imageProvider" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = NTKCircularSmallSimpleComplicationViewAccessibility;
  [(NTKCircularSmallSimpleComplicationViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(NTKCircularSmallSimpleComplicationViewAccessibility *)self safeValueForKey:@"_imageView"];
  v4 = [v3 safeValueForKey:@"imageProvider"];
  v5 = [v4 accessibilityLabel];
  [v3 setAccessibilityLabel:v5];
}

- (void)_updateImageViewWithImageProvider:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKCircularSmallSimpleComplicationViewAccessibility;
  [(NTKCircularSmallSimpleComplicationViewAccessibility *)&v4 _updateImageViewWithImageProvider:a3];
  [(NTKCircularSmallSimpleComplicationViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end