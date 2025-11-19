@interface PKDrawingPaletteInputAssistantViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation PKDrawingPaletteInputAssistantViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKDrawingPaletteInputAssistantView" hasInstanceMethod:@"keyboardButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKDrawingPaletteInputAssistantView" hasInstanceMethod:@"returnKeyButton" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v3 = [(PKDrawingPaletteInputAssistantViewAccessibility *)self safeValueForKey:@"keyboardButton"];
  v4 = [(PKDrawingPaletteInputAssistantViewAccessibility *)self safeValueForKey:@"returnKeyButton"];
  v5 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{2, v3, v4}];

  return v5;
}

@end