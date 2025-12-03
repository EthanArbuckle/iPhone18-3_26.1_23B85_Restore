@interface UIKitAccessibilityTextMarker
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation UIKitAccessibilityTextMarker

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WebAccessibilityTextMarker" hasInstanceMethod:@"dataRepresentation" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityTextMarker" hasInstanceMethod:@"initWithData: accessibilityObject:" withFullSignature:{"@", "@", "@", 0}];
}

@end