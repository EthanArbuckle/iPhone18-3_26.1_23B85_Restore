@interface SKUISegmentedTableHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)setSegmentedControl:(id)a3;
@end

@implementation SKUISegmentedTableHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SKUISegmentedTableHeaderView" hasInstanceMethod:@"setSegmentedControl:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SUSegmentedControl" hasInstanceVariable:@"_segmentedControl" withType:"UISegmentedControl"];
}

- (void)setSegmentedControl:(id)a3
{
  v4.receiver = self;
  v4.super_class = SKUISegmentedTableHeaderViewAccessibility;
  v3 = a3;
  [(SKUISegmentedTableHeaderViewAccessibility *)&v4 setSegmentedControl:v3];
  [v3 setShouldGroupAccessibilityChildren:{0, v4.receiver, v4.super_class}];
}

@end