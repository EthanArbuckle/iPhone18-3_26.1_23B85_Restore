@interface DialerControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityHasDeletableText;
- (void)_accessibilityInsertText:(id)text;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityReplaceCharactersAtCursor:(unint64_t)cursor withString:(id)string;
- (void)_voiceOverStatusChange:(id)change;
- (void)dealloc;
- (void)loadView;
- (void)phonePad:(id)pad appendString:(id)string;
- (void)phonePad:(id)pad replaceLastDigitWithString:(id)string;
- (void)phonePadDeleteLastDigit:(id)digit;
@end

@implementation DialerControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"DialerController" hasInstanceMethod:@"dialerView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PHAbstractDialerView" hasInstanceMethod:@"callButton" withFullSignature:{"@", 0}];
}

- (void)phonePad:(id)pad replaceLastDigitWithString:(id)string
{
  v6.receiver = self;
  v6.super_class = DialerControllerAccessibility;
  stringCopy = string;
  [(DialerControllerAccessibility *)&v6 phonePad:pad replaceLastDigitWithString:stringCopy];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC75C8], 0);
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], stringCopy);
}

- (void)phonePadDeleteLastDigit:(id)digit
{
  v3.receiver = self;
  v3.super_class = DialerControllerAccessibility;
  [(DialerControllerAccessibility *)&v3 phonePadDeleteLastDigit:digit];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC75C8], *MEMORY[0x29EDBDCC8]);
}

- (void)phonePad:(id)pad appendString:(id)string
{
  v4.receiver = self;
  v4.super_class = DialerControllerAccessibility;
  [(DialerControllerAccessibility *)&v4 phonePad:pad appendString:string];
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
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = DialerControllerAccessibility;
  [(DialerControllerAccessibility *)&v4 dealloc];
}

- (void)_voiceOverStatusChange:(id)change
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v4 = [(DialerControllerAccessibility *)self safeValueForKey:@"_dialerView"];
    v6 = [v4 safeValueForKey:@"lcdView"];

    if ([v6 _accessibilityViewIsVisible])
    {
      activeInstance = [MEMORY[0x29EDC7B08] activeInstance];
      [activeInstance setDelegate:v6];
    }
  }
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = DialerControllerAccessibility;
  [(DialerControllerAccessibility *)&v4 loadView];
  [(DialerControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter addObserver:self selector:sel__voiceOverStatusChange_ name:*MEMORY[0x29EDC8000] object:0];
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

- (void)_accessibilityInsertText:(id)text
{
  textCopy = text;
  v4 = textCopy;
  if (textCopy)
  {
    v5 = textCopy;
    AXPerformSafeBlock();
  }
}

- (void)_accessibilityReplaceCharactersAtCursor:(unint64_t)cursor withString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
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