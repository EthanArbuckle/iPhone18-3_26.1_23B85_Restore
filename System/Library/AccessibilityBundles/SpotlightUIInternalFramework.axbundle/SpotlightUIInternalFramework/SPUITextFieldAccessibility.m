@interface SPUITextFieldAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)automationElements;
- (id)axCompletionStrings;
@end

@implementation SPUITextFieldAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SPUICompletionStringView"];
  [v3 validateClass:@"SPUICompletionStringView" hasInstanceMethod:@"labelsStackView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SPUICompletionStringView" hasInstanceMethod:@"completionLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SPUICompletionStringView" hasInstanceMethod:@"bridgeLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SPUICompletionStringView" hasInstanceMethod:@"extensionLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(SPUITextFieldAccessibility *)self axCompletionStrings];
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 safeValueForKey:@"labelsStackView"];

    v6 = [v5 safeValueForKey:@"completionLabel"];
    v7 = [v6 safeStringForKey:@"text"];

    v8 = accessibilityLocalizedString(v7);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SPUITextFieldAccessibility;
    v8 = [(SPUITextFieldAccessibility *)&v10 accessibilityLabel];
  }

  return v8;
}

- (id)accessibilityValue
{
  v3 = AXRequestingClient();
  if (v3 <= 7 && ((1 << v3) & 0x86) != 0)
  {
    v25.receiver = self;
    v25.super_class = SPUITextFieldAccessibility;
    v4 = [(SPUITextFieldAccessibility *)&v25 accessibilityValue];
  }

  else
  {
    v5 = [(SPUITextFieldAccessibility *)self axCompletionStrings];
    if ([v5 count])
    {
      v6 = [v5 objectAtIndexedSubscript:0];
      v7 = [v6 safeValueForKey:@"labelsStackView"];

      v8 = [v7 safeValueForKey:@"completionLabel"];
      v9 = [v8 safeStringForKey:@"text"];

      v10 = [v7 safeValueForKey:@"bridgeLabel"];
      v11 = [v10 safeStringForKey:@"text"];

      v12 = [v7 safeValueForKey:@"extensionLabel"];
      v13 = [v12 safeStringForKey:@"text"];

      v23.receiver = self;
      v23.super_class = SPUITextFieldAccessibility;
      v4 = [(SPUITextFieldAccessibility *)&v23 accessibilityValue];
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

        v4 = v21;
      }
    }

    else
    {
      v24.receiver = self;
      v24.super_class = SPUITextFieldAccessibility;
      v4 = [(SPUITextFieldAccessibility *)&v24 accessibilityValue];
    }
  }

  return v4;
}

- (id)automationElements
{
  v8.receiver = self;
  v8.super_class = SPUITextFieldAccessibility;
  v3 = [(SPUITextFieldAccessibility *)&v8 automationElements];
  v4 = [v3 mutableCopy];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [MEMORY[0x29EDB8DE8] array];

    if (!v5)
    {
      v5 = [MEMORY[0x29EDB8DE8] array];
    }
  }

  v6 = [(SPUITextFieldAccessibility *)self axCompletionStrings];
  [v5 axSafelyAddObjectsFromArray:v6];

  return v5;
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