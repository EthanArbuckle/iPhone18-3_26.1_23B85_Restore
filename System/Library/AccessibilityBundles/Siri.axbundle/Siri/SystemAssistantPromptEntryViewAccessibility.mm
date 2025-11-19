@interface SystemAssistantPromptEntryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SystemAssistantPromptEntryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"Siri.SystemAssistantPromptEntryView" hasSwiftField:@"closeButton" withSwiftType:"UIButton"];
  [v3 validateClass:@"Siri.SystemAssistantPromptEntryView" hasInstanceMethod:@"setIsInTamale:" withFullSignature:{"v", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v14.receiver = self;
  v14.super_class = SystemAssistantPromptEntryViewAccessibility;
  [(SystemAssistantPromptEntryViewAccessibility *)&v14 _accessibilityLoadAccessibilityInformation];
  v3 = [(SystemAssistantPromptEntryViewAccessibility *)self safeSwiftValueForKey:@"closeButton"];
  v4 = accessibilityLocalizedString(@"dismiss.text.field");
  [v3 setAccessibilityLabel:v4];

  v5 = [(SystemAssistantPromptEntryViewAccessibility *)self safeSwiftValueForKey:@"entryView"];
  LOBYTE(location) = 0;
  objc_opt_class();
  v6 = [v5 safeSwiftValueForKey:@"placeholderLabel"];
  v7 = __UIAccessibilityCastAsClass();

  [v7 setIsAccessibilityElement:0];
  v8 = [v5 safeSwiftValueForKey:@"textView"];
  objc_initWeak(&location, v8);
  objc_initWeak(&from, v7);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __89__SystemAssistantPromptEntryViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v9[3] = &unk_29F2F8990;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  objc_copyWeak(&v11, &from);
  [v8 setAccessibilityLabelBlock:v9];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

id __89__SystemAssistantPromptEntryViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if ([WeakRetained isFirstResponder])
  {
    v3 = objc_loadWeakRetained(a1 + 5);
    v4 = [v3 text];
    v5 = [v4 length];

    if (v5)
    {
      v9.receiver = a1[4];
      v9.super_class = SystemAssistantPromptEntryViewAccessibility;
      v6 = objc_msgSendSuper2(&v9, sel_accessibilityLabel);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = objc_loadWeakRetained(a1 + 6);
  v6 = [v7 text];

LABEL_6:

  return v6;
}

@end