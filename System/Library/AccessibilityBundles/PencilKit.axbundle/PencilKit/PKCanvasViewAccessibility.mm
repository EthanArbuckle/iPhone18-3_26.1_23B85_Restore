@interface PKCanvasViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation PKCanvasViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKCanvasView" hasInstanceMethod:@"drawing" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKDrawing" hasInstanceMethod:@"strokes" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v2 = [(PKCanvasViewAccessibility *)self safeValueForKey:@"drawing"];
  v3 = [v2 safeArrayForKey:@"strokes"];

  return v3;
}

@end