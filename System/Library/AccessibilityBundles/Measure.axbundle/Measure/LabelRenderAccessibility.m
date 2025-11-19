@interface LabelRenderAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)selectAnimationComplete;
@end

@implementation LabelRenderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"Measure.SpatialGenericPlatter"];
  [v3 validateClass:@"Measure.LabelRender" hasInstanceMethod:@"selectAnimationComplete" withFullSignature:{"v", 0}];
}

- (void)selectAnimationComplete
{
  v3.receiver = self;
  v3.super_class = LabelRenderAccessibility;
  [(LabelRenderAccessibility *)&v3 selectAnimationComplete];
  v2 = MEMORY[0x29C2DD610](@"Measure.SpatialGenericPlatter");
  AXMeasureDidPotentiallyShowCardViewWithAncestorClass(v2);
}

@end