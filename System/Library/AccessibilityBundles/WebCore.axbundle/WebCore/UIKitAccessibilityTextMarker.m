@interface UIKitAccessibilityTextMarker
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation UIKitAccessibilityTextMarker

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"WebAccessibilityTextMarker" hasInstanceMethod:@"dataRepresentation" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WebAccessibilityTextMarker" hasInstanceMethod:@"initWithData: accessibilityObject:" withFullSignature:{"@", "@", "@", 0}];
}

@end