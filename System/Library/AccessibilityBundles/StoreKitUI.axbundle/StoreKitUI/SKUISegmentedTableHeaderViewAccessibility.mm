@interface SKUISegmentedTableHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setSegmentedControl:(id)control;
@end

@implementation SKUISegmentedTableHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUISegmentedTableHeaderView" hasInstanceMethod:@"setSegmentedControl:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SUSegmentedControl" hasInstanceVariable:@"_segmentedControl" withType:"UISegmentedControl"];
}

- (void)setSegmentedControl:(id)control
{
  v4.receiver = self;
  v4.super_class = SKUISegmentedTableHeaderViewAccessibility;
  controlCopy = control;
  [(SKUISegmentedTableHeaderViewAccessibility *)&v4 setSegmentedControl:controlCopy];
  [controlCopy setShouldGroupAccessibilityChildren:{0, v4.receiver, v4.super_class}];
}

@end