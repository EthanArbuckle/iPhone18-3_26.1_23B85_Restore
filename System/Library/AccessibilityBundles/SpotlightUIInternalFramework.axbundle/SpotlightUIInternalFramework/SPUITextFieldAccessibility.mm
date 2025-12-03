@interface SPUITextFieldAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)automationElements;
- (id)axCompletionStrings;
@end

@implementation SPUITextFieldAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SPUICompletionStringView"];
  [validationsCopy validateClass:@"SPUICompletionStringView" hasInstanceMethod:@"labelsStackView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SPUICompletionStringView" hasInstanceMethod:@"completionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SPUICompletionStringView" hasInstanceMethod:@"bridgeLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SPUICompletionStringView" hasInstanceMethod:@"extensionLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  axCompletionStrings = [(SPUITextFieldAccessibility *)self axCompletionStrings];
  if ([axCompletionStrings count])
  {
    v4 = [axCompletionStrings objectAtIndexedSubscript:0];
    v5 = [v4 safeValueForKey:@"labelsStackView"];

    v6 = [v5 safeValueForKey:@"completionLabel"];
    v7 = [v6 safeStringForKey:@"text"];

    accessibilityLabel = accessibilityLocalizedString(v7);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SPUITextFieldAccessibility;
    accessibilityLabel = [(SPUITextFieldAccessibility *)&v10 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v3 = AXRequestingClient();
  if (v3 <= 7 && ((1 << v3) & 0x86) != 0)
  {
    v25.receiver = self;
    v25.super_class = SPUITextFieldAccessibility;
    accessibilityValue = [(SPUITextFieldAccessibility *)&v25 accessibilityValue];
  }

  else
  {
    axCompletionStrings = [(SPUITextFieldAccessibility *)self axCompletionStrings];
    if ([axCompletionStrings count])
    {
      v6 = [axCompletionStrings objectAtIndexedSubscript:0];
      v7 = [v6 safeValueForKey:@"labelsStackView"];

      v8 = [v7 safeValueForKey:@"completionLabel"];
      v9 = [v8 safeStringForKey:@"text"];

      v10 = [v7 safeValueForKey:@"bridgeLabel"];
      v11 = [v10 safeStringForKey:@"text"];

      v12 = [v7 safeValueForKey:@"extensionLabel"];
      v13 = [v12 safeStringForKey:@"text"];

      v23.receiver = self;
      v23.super_class = SPUITextFieldAccessibility;
      accessibilityValue = [(SPUITextFieldAccessibility *)&v23 accessibilityValue];
      if ([v7 _accessibilityViewIsVisible] && objc_msgSend(v9, "length") && objc_msgSend(v11, "length") && objc_msgSend(v13, "length"))
      {
        v14 = __UIAXStringForVariables();
        v15 = [(SPUITextFieldAccessibility *)self safeStringForKey:@"text", v13, @"__AXStringForVariablesSentinel"];
        v16 = [v15 isEqualToString:v9];

        if ((v16 & 1) == 0)
        {
          v17 = __UIAXStringForVariables();

          v14 = v17;
        }

        v18 = MEMORY[0x29EDBA0F8];
        v19 = accessibilityLocalizedString(@"search.suggestion.format");
        v20 = [v18 localizedStringWithFormat:v19, v14];

        v21 = __UIAXStringForVariables();

        accessibilityValue = v21;
      }
    }

    else
    {
      v24.receiver = self;
      v24.super_class = SPUITextFieldAccessibility;
      accessibilityValue = [(SPUITextFieldAccessibility *)&v24 accessibilityValue];
    }
  }

  return accessibilityValue;
}

- (id)automationElements
{
  v8.receiver = self;
  v8.super_class = SPUITextFieldAccessibility;
  automationElements = [(SPUITextFieldAccessibility *)&v8 automationElements];
  v4 = [automationElements mutableCopy];
  if (v4)
  {
    array = v4;
  }

  else
  {
    array = [MEMORY[0x29EDB8DE8] array];

    if (!array)
    {
      array = [MEMORY[0x29EDB8DE8] array];
    }
  }

  axCompletionStrings = [(SPUITextFieldAccessibility *)self axCompletionStrings];
  [array axSafelyAddObjectsFromArray:axCompletionStrings];

  return array;
}

- (id)axCompletionStrings
{
  if (axCompletionStrings_onceToken != -1)
  {
    [SPUITextFieldAccessibility axCompletionStrings];
  }

  return [(SPUITextFieldAccessibility *)self _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_324];
}

uint64_t __49__SPUITextFieldAccessibility_axCompletionStrings__block_invoke()
{
  result = MEMORY[0x29ED37100](@"SPUICompletionStringView");
  axCompletionStrings_completionView = result;
  return result;
}

@end