@interface HSPCPasscodeEntryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)deleteBackward;
- (void)insertText:(id)a3;
@end

@implementation HSPCPasscodeEntryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HSPCPasscodeEntryView" isKindOfClass:@"UIControl"];
  [v3 validateClass:@"HSPCPasscodeEntryView" hasInstanceMethod:@"insertText:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"HSPCPasscodeEntryView" hasInstanceMethod:@"deleteBackward" withFullSignature:{"v", 0}];
  [v3 validateClass:@"HSPCPasscodeEntryView" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HSPCPasscodeEntryView" hasInstanceMethod:@"numberOfDigits" withFullSignature:{"Q", 0}];
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = HSPCPasscodeEntryViewAccessibility;
  v2 = [(HSPCPasscodeEntryViewAccessibility *)&v8 accessibilityTraits];
  v3 = *MEMORY[0x29EDC7598];
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  v5 = v3 | v2;
  LODWORD(v2) = [v4 isFirstResponder];

  v6 = *MEMORY[0x29EDC7528];
  if (!v2)
  {
    v6 = 0;
  }

  return v5 | v6;
}

- (id)accessibilityValue
{
  v10[1] = *MEMORY[0x29EDCA608];
  v3 = objc_alloc(MEMORY[0x29EDBD7E8]);
  v4 = [(HSPCPasscodeEntryViewAccessibility *)self _axText];
  v5 = [v3 initWithString:v4];

  v9 = *MEMORY[0x29EDBD9D0];
  v10[0] = MEMORY[0x29EDB8EB0];
  v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v5 setAttributes:v6];

  v7 = *MEMORY[0x29EDCA608];

  return v5;
}

- (void)insertText:(id)a3
{
  v4 = a3;
  v5 = [(HSPCPasscodeEntryViewAccessibility *)self _axText];
  v6 = [v5 length];

  v13.receiver = self;
  v13.super_class = HSPCPasscodeEntryViewAccessibility;
  [(HSPCPasscodeEntryViewAccessibility *)&v13 insertText:v4];
  objc_opt_class();
  v7 = __UIAccessibilityCastAsClass();
  v8 = [(HSPCPasscodeEntryViewAccessibility *)self safeIntegerForKey:@"numberOfDigits"];
  if ([v7 length])
  {
    v9 = v6 < v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v7);
  }

  v10 = [(HSPCPasscodeEntryViewAccessibility *)self _axText];
  v11 = [v10 length];

  if (v11 == v8)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7458], 0);
    v12 = dispatch_time(0, 750000000);
    dispatch_after(v12, MEMORY[0x29EDCA578], &__block_literal_global_0);
  }
}

void __49__HSPCPasscodeEntryViewAccessibility_insertText___block_invoke()
{
  v0 = *MEMORY[0x29EDC7EA8];
  v1 = accessibilityLocalizedString(@"setupcode.completed.manual.entry");
  UIAccessibilityPostNotification(v0, v1);
}

- (void)deleteBackward
{
  v3 = [(HSPCPasscodeEntryViewAccessibility *)self _axText];
  v8.receiver = self;
  v8.super_class = HSPCPasscodeEntryViewAccessibility;
  [(HSPCPasscodeEntryViewAccessibility *)&v8 deleteBackward];
  if ([v3 length])
  {
    v4 = [v3 substringWithRange:{objc_msgSend(v3, "length") - 1, 1}];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 length];
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = *MEMORY[0x29EDC7EA8];
  }

  else
  {
    v7 = *MEMORY[0x29EDC7458];
  }

  UIAccessibilityPostNotification(v7, v6);
}

@end