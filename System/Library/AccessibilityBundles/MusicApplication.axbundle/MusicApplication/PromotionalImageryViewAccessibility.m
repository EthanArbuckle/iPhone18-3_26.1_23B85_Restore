@interface PromotionalImageryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isTransparentFocusItem;
@end

@implementation PromotionalImageryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.PromotionalImageryView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"isTransparentFocusItem" withFullSignature:{"B", 0}];
}

- (BOOL)isTransparentFocusItem
{
  if (([(PromotionalImageryViewAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = PromotionalImageryViewAccessibility;
  return [(PromotionalImageryViewAccessibility *)&v4 isTransparentFocusItem];
}

@end