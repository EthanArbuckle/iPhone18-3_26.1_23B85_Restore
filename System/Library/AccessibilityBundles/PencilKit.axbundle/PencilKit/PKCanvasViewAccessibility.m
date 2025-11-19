@interface PKCanvasViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation PKCanvasViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKCanvasView" hasInstanceMethod:@"drawing" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKDrawing" hasInstanceMethod:@"strokes" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v2 = [(PKCanvasViewAccessibility *)self safeValueForKey:@"drawing"];
  v3 = [v2 safeArrayForKey:@"strokes"];

  return v3;
}

@end