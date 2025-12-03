@interface ETHorizontalColorPickerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation ETHorizontalColorPickerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ETHorizontalColorPicker" hasProperty:@"paletteCircles" withType:"@"];
  [validationsCopy validateClass:@"ETHorizontalColorPicker" hasInstanceMethod:@"setDimmed:excludeSelectedColor:animated:" withFullSignature:{"v", "B", "B", "B", 0}];
}

@end