@interface PKNumberPadInputViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_createBorderedButtonForButtonValue:(unint64_t)value withBorder:(unint64_t)border primaryAction:(id)action;
@end

@implementation PKNumberPadInputViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKBorderedButton" isKindOfClass:@"UIButton"];
  [validationsCopy validateClass:@"PKNumberPadInputView" hasInstanceMethod:@"_createBorderedButtonForButtonValue:withBorder:primaryAction:" withFullSignature:{"Q", "Q", "@", 0}];
}

- (id)_createBorderedButtonForButtonValue:(unint64_t)value withBorder:(unint64_t)border primaryAction:(id)action
{
  actionCopy = action;
  v15.receiver = self;
  v15.super_class = PKNumberPadInputViewAccessibility;
  v9 = [(PKNumberPadInputViewAccessibility *)&v15 _createBorderedButtonForButtonValue:value withBorder:border primaryAction:actionCopy];
  objc_opt_class();
  v10 = __UIAccessibilityCastAsClass();
  v11 = v10;
  if (value == 11)
  {
    [v10 setAccessibilityTextualContext:*MEMORY[0x29EDBDDC8]];
  }

  else if (value == 10)
  {
    v12 = accessibilityLocalizedString(@"keypad.delete");
    [v11 setAccessibilityValue:v12];

    accessibilityTraits = [v11 accessibilityTraits];
    [v11 setAccessibilityTraits:*MEMORY[0x29EDC7508] | accessibilityTraits];
  }

  return v9;
}

@end