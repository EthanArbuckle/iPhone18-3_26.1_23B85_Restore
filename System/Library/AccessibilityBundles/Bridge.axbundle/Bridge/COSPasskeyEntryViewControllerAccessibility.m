@interface COSPasskeyEntryViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (COSPasskeyEntryViewControllerAccessibility)init;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)textDidChange:(id)a3;
@end

@implementation COSPasskeyEntryViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"COSPasskeyEntryViewController" hasInstanceMethod:@"init" withFullSignature:{"@", 0}];
  [v3 validateClass:@"COSPasskeyEntryViewController" hasInstanceMethod:@"textDidChange:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"COSPasskeyEntryViewController" hasInstanceMethod:@"passkeyField" withFullSignature:{"@", 0}];
  [v3 validateClass:@"COSPasskeyEntryViewController" hasInstanceMethod:@"pinKeyView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = COSPasskeyEntryViewControllerAccessibility;
  [(COSPasskeyEntryViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(COSPasskeyEntryViewControllerAccessibility *)self safeValueForKey:@"passkeyField"];
  [v3 setIsAccessibilityElement:0];
  v4 = [(COSPasskeyEntryViewControllerAccessibility *)self safeValueForKey:@"pinKeyView"];
  [v4 setIsAccessibilityElement:1];
  v5 = accessibilityLocalizedString(@"no.pin.entered");
  [v4 setAccessibilityLabel:v5];
}

- (COSPasskeyEntryViewControllerAccessibility)init
{
  v4.receiver = self;
  v4.super_class = COSPasskeyEntryViewControllerAccessibility;
  v2 = [(COSPasskeyEntryViewControllerAccessibility *)&v4 init];
  [(COSPasskeyEntryViewControllerAccessibility *)v2 _accessibilityLoadAccessibilityInformation];
  return v2;
}

- (void)textDidChange:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = COSPasskeyEntryViewControllerAccessibility;
  [(COSPasskeyEntryViewControllerAccessibility *)&v13 textDidChange:v4];
  objc_opt_class();
  v5 = [(COSPasskeyEntryViewControllerAccessibility *)self safeValueForKey:@"passkeyField"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v6 text];
  if ([v7 length])
  {
    v8 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    if ([v7 length])
    {
      v9 = 0;
      do
      {
        v10 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%C", objc_msgSend(v7, "characterAtIndex:", v9)];
        [v8 addObject:v10];

        ++v9;
      }

      while ([v7 length] > v9);
    }

    v11 = [(COSPasskeyEntryViewControllerAccessibility *)self safeValueForKey:@"pinKeyView"];
    v12 = [v8 componentsJoinedByString:@" "];
    [v11 setAccessibilityLabel:v12];
  }

  else
  {
    v8 = [(COSPasskeyEntryViewControllerAccessibility *)self safeValueForKey:@"pinKeyView"];
    v11 = accessibilityLocalizedString(@"no.pin.entered");
    [v8 setAccessibilityLabel:v11];
  }
}

@end