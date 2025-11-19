@interface MUAmenityItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation MUAmenityItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MUAmenityItemView" hasInstanceVariable:@"_titleLabel" withType:"UIView<MULabelViewProtocol>"];
  [v3 validateClass:@"MUAmenityItemView" hasInstanceVariable:@"_imageView" withType:"UIImageView"];
}

@end