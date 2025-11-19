@interface DialerControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityHasDeletableText;
- (void)_accessibilityInsertText:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityReplaceCharactersAtCursor:(unint64_t)a3 withString:(id)a4;
- (void)_voiceOverStatusChange:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)phonePad:(id)a3 appendString:(id)a4;
- (void)phonePad:(id)a3 replaceLastDigitWithString:(id)a4;
- (void)phonePadDeleteLastDigit:(id)a3;
@end

@implementation DialerControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"DialerController" hasInstanceMethod:@"dialerView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHAbstractDialerView" hasInstanceMethod:@"callButton" withFullSignature:{"@", 0}];
}

- (void)phonePad:(id)a3 replaceLastDigitWithString:(id)a4
{
  v6.receiver = self;
  v6.super_class = DialerControllerAccessibility;
  v5 = a4;
  [(DialerControllerAccessibility *)&v6 phonePad:a3 replaceLastDigitWithString:v5];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC75C8], 0);
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v5);
}

- (void)phonePadDeleteLastDigit:(id)a3
{
  v3.receiver = self;
  v3.super_class = DialerControllerAccessibility;
  [(DialerControllerAccessibility *)&v3 phonePadDeleteLastDigit:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC75C8], *MEMORY[0x29EDBDCC8]);
}

- (void)phonePad:(id)a3 appendString:(id)a4
{
  v4.receiver = self;
  v4.super_class = DialerControllerAccessibility;
  [(DialerControllerAccessibility *)&v4 phonePad:a3 appendString:a4];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC75C8], *MEMORY[0x29EDBDCE8]);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = DialerControllerAccessibility;
  [(DialerControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(DialerControllerAccessibility *)self safeValueForKey:@"dialerView"];
  v4 = [v3 safeValueForKey:@"callButton"];
  v5 = accessibilityLocalizedString(@"call.text");
  [v4 setAccessibilityLabel:v5];

  [(DialerControllerAccessibility *)self _voiceOverStatusChange:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = DialerControllerAccessibility;
  [(DialerControllerAccessibility *)&v4 dealloc];
}

- (void)_voiceOverStatusChange:(id)a3
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v4 = [(DialerControllerAccessibility *)self safeValueForKey:@"_dialerView"];
    v6 = [v4 safeValueForKey:@"lcdView"];

    if ([v6 _accessibilityViewIsVisible])
    {
      v5 = [MEMORY[0x29EDC7B08] activeInstance];
      [v5 setDelegate:v6];
    }
  }
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = DialerControllerAccessibility;
  [(DialerControllerAccessibility *)&v4 loadView];
  [(DialerControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 addObserver:self selector:sel__voiceOverStatusChange_ name:*MEMORY[0x29EDC8000] object:0];
}

- (BOOL)_accessibilityHasDeletableText
{
  v2 = [(DialerControllerAccessibility *)self safeValueForKey:@"_dialerView"];
  v3 = [v2 safeValueForKey:@"lcdView"];
  v4 = [v3 safeValueForKey:@"text"];

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7 = v4;
  AXPerformSafeBlock();
  v5 = v9[3];

  _Block_object_dispose(&v8, 8);
  return v5 != 0;
}

uint64_t __63__DialerControllerAccessibility__accessibilityHasDeletableText__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) length];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_accessibilityInsertText:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    AXPerformSafeBlock();
  }
}

- (void)_accessibilityReplaceCharactersAtCursor:(unint64_t)a3 withString:(id)a4
{
  v5 = a4;
  v4 = v5;
  AXPerformSafeBlock();
}

uint64_t __84__DialerControllerAccessibility__accessibilityReplaceCharactersAtCursor_withString___block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 48))
  {
    v2 = 0;
    do
    {
      result = [*(v1 + 32) phonePadDeleteLastDigit:0];
      ++v2;
    }

    while (v2 < *(v1 + 48));
  }

  if (*(v1 + 40))
  {
    v3 = *(v1 + 32);

    return [v3 _accessibilityInsertText:?];
  }

  return result;
}

@end