@interface ETHorizontalColorPickerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation ETHorizontalColorPickerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ETHorizontalColorPicker" hasProperty:@"paletteCircles" withType:"@"];
  [v3 validateClass:@"ETHorizontalColorPicker" hasInstanceMethod:@"setDimmed:excludeSelectedColor:animated:" withFullSignature:{"v", "B", "B", "B", 0}];
}

@end