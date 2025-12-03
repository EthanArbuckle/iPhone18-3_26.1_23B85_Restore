@interface LabelRenderAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)selectAnimationComplete;
@end

@implementation LabelRenderAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Measure.SpatialGenericPlatter"];
  [validationsCopy validateClass:@"Measure.LabelRender" hasInstanceMethod:@"selectAnimationComplete" withFullSignature:{"v", 0}];
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