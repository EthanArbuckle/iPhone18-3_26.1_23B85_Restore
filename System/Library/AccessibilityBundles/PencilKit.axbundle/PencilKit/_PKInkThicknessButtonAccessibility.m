@interface _PKInkThicknessButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)_axPKPaletteErasingAttributesView;
@end

@implementation _PKInkThicknessButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKPaletteErasingAttributesView"];
  [v3 validateClass:@"PKPaletteErasingAttributesView" hasInstanceMethod:@"eraserType" withFullSignature:{"q", 0}];
}

- (BOOL)isAccessibilityElement
{
  v2 = [(_PKInkThicknessButtonAccessibility *)self _axPKPaletteErasingAttributesView];
  v3 = [v2 safeIntegerForKey:@"eraserType"] == 0;

  return v3;
}

- (id)_axPKPaletteErasingAttributesView
{
  v3 = MEMORY[0x29C2E5800](@"PKPaletteErasingAttributesView", a2);

  return [(_PKInkThicknessButtonAccessibility *)self _accessibilityAncestorIsKindOf:v3];
}

@end