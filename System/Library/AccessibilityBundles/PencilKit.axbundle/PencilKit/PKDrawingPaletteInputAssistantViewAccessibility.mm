@interface PKDrawingPaletteInputAssistantViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation PKDrawingPaletteInputAssistantViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKDrawingPaletteInputAssistantView" hasInstanceMethod:@"keyboardButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKDrawingPaletteInputAssistantView" hasInstanceMethod:@"returnKeyButton" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v3 = [(PKDrawingPaletteInputAssistantViewAccessibility *)self safeValueForKey:@"keyboardButton"];
  v4 = [(PKDrawingPaletteInputAssistantViewAccessibility *)self safeValueForKey:@"returnKeyButton"];
  v5 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{2, v3, v4}];

  return v5;
}

@end