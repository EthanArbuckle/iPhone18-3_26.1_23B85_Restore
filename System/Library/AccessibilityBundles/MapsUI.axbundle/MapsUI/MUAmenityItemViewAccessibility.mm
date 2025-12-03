@interface MUAmenityItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation MUAmenityItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MUAmenityItemView" hasInstanceVariable:@"_titleLabel" withType:"UIView<MULabelViewProtocol>"];
  [validationsCopy validateClass:@"MUAmenityItemView" hasInstanceVariable:@"_imageView" withType:"UIImageView"];
}

@end