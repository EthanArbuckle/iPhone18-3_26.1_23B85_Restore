@interface _PKInkThicknessButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)_axPKPaletteErasingAttributesView;
@end

@implementation _PKInkThicknessButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKPaletteErasingAttributesView"];
  [validationsCopy validateClass:@"PKPaletteErasingAttributesView" hasInstanceMethod:@"eraserType" withFullSignature:{"q", 0}];
}

- (BOOL)isAccessibilityElement
{
  _axPKPaletteErasingAttributesView = [(_PKInkThicknessButtonAccessibility *)self _axPKPaletteErasingAttributesView];
  v3 = [_axPKPaletteErasingAttributesView safeIntegerForKey:@"eraserType"] == 0;

  return v3;
}

- (id)_axPKPaletteErasingAttributesView
{
  v3 = MEMORY[0x29C2E5800](@"PKPaletteErasingAttributesView", a2);

  return [(_PKInkThicknessButtonAccessibility *)self _accessibilityAncestorIsKindOf:v3];
}

@end