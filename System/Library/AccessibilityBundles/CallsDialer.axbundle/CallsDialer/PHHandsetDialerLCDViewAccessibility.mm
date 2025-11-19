@interface PHHandsetDialerLCDViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)hasText;
- (id)_accessibilitySubviews;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUpdateContactResultButton;
- (void)_voStatusChanged:(id)a3;
- (void)dealloc;
- (void)deleteCharacter;
- (void)insertText:(id)a3;
- (void)setSenderIdentity:(id)a3;
- (void)updateContactResultButtons;
@end

@implementation PHHandsetDialerLCDViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PHHandsetDialerLCDView" hasInstanceMethod:@"updateAddAndDeleteButtonForText: name: animated:" withFullSignature:{"v", "@", "@", "B", 0}];
  [v3 validateClass:@"PHHandsetDialerLCDView" hasInstanceMethod:@"initWithFrame:forDialerType:appType:enableSmartDialer:enableSmartDialerExpandedSearch:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", "i", "q", "B", "B", 0}];
  [v3 validateClass:@"PHAbstractDialerView" hasInstanceMethod:@"phonePadView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHDialerResultButtonView"];
  [v3 validateClass:@"PHHandsetDialerLCDView" hasInstanceMethod:@"pillView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHHandsetDialerLCDView" hasInstanceMethod:@"setSenderIdentity:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"TUSenderIdentity"];
  [v3 validateClass:@"TUSenderIdentity" hasInstanceMethod:@"localizedName" withFullSignature:{"@", 0}];
}

- (void)dealloc
{
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHHandsetDialerLCDViewAccessibility;
  [(PHHandsetDialerLCDViewAccessibility *)&v4 dealloc];
}

- (void)_voStatusChanged:(id)a3
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v4 = [MEMORY[0x29EDC7B08] activeInstance];
    [v4 setDelegate:self];
  }
}

- (void)_axUpdateContactResultButton
{
  v3 = [(PHHandsetDialerLCDViewAccessibility *)self safeUIViewForKey:@"primaryResultButton"];
  objc_initWeak(&location, v3);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __67__PHHandsetDialerLCDViewAccessibility__axUpdateContactResultButton__block_invoke;
  v8[3] = &unk_29F2AAE28;
  objc_copyWeak(&v9, &location);
  [v3 setAccessibilityLabelBlock:v8];
  v4 = [(PHHandsetDialerLCDViewAccessibility *)self safeUIViewForKey:@"secondaryResultButton"];
  objc_initWeak(&from, v4);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __67__PHHandsetDialerLCDViewAccessibility__axUpdateContactResultButton__block_invoke_2;
  v5[3] = &unk_29F2AAE28;
  objc_copyWeak(&v6, &from);
  [v4 setAccessibilityLabelBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&from);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

id __67__PHHandsetDialerLCDViewAccessibility__axUpdateContactResultButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityDescendantOfType:NSClassFromString(&cfstr_Phdialerresult_0.isa)];
  v3 = [v2 accessibilityLabel];

  return v3;
}

id __67__PHHandsetDialerLCDViewAccessibility__axUpdateContactResultButton__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityDescendantOfType:NSClassFromString(&cfstr_Phdialerresult_0.isa)];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v20.receiver = self;
  v20.super_class = PHHandsetDialerLCDViewAccessibility;
  [(PHHandsetDialerLCDViewAccessibility *)&v20 _accessibilityLoadAccessibilityInformation];
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 addObserver:self selector:sel__voStatusChanged_ name:*MEMORY[0x29EDC8000] object:0];

  v4 = [(PHHandsetDialerLCDViewAccessibility *)self safeValueForKey:@"_numberTextField"];
  [v4 setAccessibilityIdentifier:@"PhoneNumberLabel"];

  v5 = [(PHHandsetDialerLCDViewAccessibility *)self safeValueForKey:@"_numberTextField"];
  v6 = accessibilityLocalizedString(@"phone.display");
  [v5 setAccessibilityLabel:v6];

  v7 = [(PHHandsetDialerLCDViewAccessibility *)self safeUIViewForKey:@"contactResultButton"];
  objc_initWeak(&location, v7);

  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 3221225472;
  v17[2] = __81__PHHandsetDialerLCDViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v17[3] = &unk_29F2AAE28;
  objc_copyWeak(&v18, &location);
  v8 = objc_loadWeakRetained(&location);
  [v8 setAccessibilityLabelBlock:v17];

  v9 = [(PHHandsetDialerLCDViewAccessibility *)self safeUIViewForKey:@"contactCountButton"];
  objc_initWeak(&from, v9);

  v11 = MEMORY[0x29EDCA5F8];
  v12 = 3221225472;
  v13 = __81__PHHandsetDialerLCDViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v14 = &unk_29F2AAE28;
  objc_copyWeak(&v15, &from);
  v10 = objc_loadWeakRetained(&from);
  [v10 setAccessibilityLabelBlock:&v11];

  [(PHHandsetDialerLCDViewAccessibility *)self _voStatusChanged:0, v11, v12, v13, v14];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&from);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

id __81__PHHandsetDialerLCDViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = UIAXStringForAllChildren();

  return v2;
}

id __81__PHHandsetDialerLCDViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = UIAXStringForAllChildren();

  return v2;
}

- (BOOL)hasText
{
  v2 = [(PHHandsetDialerLCDViewAccessibility *)self safeValueForKey:@"_numberTextField"];
  v3 = [v2 safeValueForKey:@"text"];
  v4 = [v3 length] != 0;

  return v4;
}

- (void)insertText:(id)a3
{
  v4 = a3;
  v5 = [(PHHandsetDialerLCDViewAccessibility *)self safeValueForKey:@"delegate"];
  v6 = [v5 safeValueForKey:@"delegate"];

  NSClassFromString(&cfstr_Dialercontroll.isa);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _AXAssert();
    goto LABEL_10;
  }

  if ([v4 length] == 1)
  {
    v7 = [v4 characterAtIndex:0];
    v8 = [MEMORY[0x29EDB9F50] decimalDigitCharacterSet];
    v9 = [v8 characterIsMember:v7];

    if ((v9 & 1) != 0 || v7 == 35)
    {
      goto LABEL_7;
    }

    if (v7 == 61)
    {
LABEL_8:
      v10 = v6;
      AXPerformSafeBlock();

      goto LABEL_10;
    }

    if (v7 == 42)
    {
LABEL_7:
      v11 = v6;
      v12 = v4;
      AXPerformSafeBlock();

      if (v7 == 61)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_10:
}

- (void)deleteCharacter
{
  v3 = [(PHHandsetDialerLCDViewAccessibility *)self safeValueForKey:@"text"];
  v4 = UIUnformattedPhoneNumberFromString();

  v10.receiver = self;
  v10.super_class = PHHandsetDialerLCDViewAccessibility;
  [(PHHandsetDialerLCDViewAccessibility *)&v10 deleteCharacter];
  v5 = [(PHHandsetDialerLCDViewAccessibility *)self safeValueForKey:@"text"];
  v6 = UIUnformattedPhoneNumberFromString();

  v7 = [v4 length];
  if (v7 > [v6 length])
  {
    v8 = [v4 substringFromIndex:{objc_msgSend(v6, "length")}];
    v9 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v8];
    [v9 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBDA10]];
    [v9 setAttribute:&unk_2A213A188 forKey:*MEMORY[0x29EDBD860]];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v9);
  }
}

- (id)_accessibilitySubviews
{
  v5.receiver = self;
  v5.super_class = PHHandsetDialerLCDViewAccessibility;
  v2 = [(PHHandsetDialerLCDViewAccessibility *)&v5 _accessibilitySubviews];
  v3 = [v2 axFilterObjectsUsingBlock:&__block_literal_global_0];

  return v3;
}

uint64_t __61__PHHandsetDialerLCDViewAccessibility__accessibilitySubviews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 _accessibilityViewIsVisible];

  return v4;
}

- (void)updateContactResultButtons
{
  v3.receiver = self;
  v3.super_class = PHHandsetDialerLCDViewAccessibility;
  [(PHHandsetDialerLCDViewAccessibility *)&v3 updateContactResultButtons];
  [(PHHandsetDialerLCDViewAccessibility *)self _axUpdateContactResultButton];
}

- (void)setSenderIdentity:(id)a3
{
  v7.receiver = self;
  v7.super_class = PHHandsetDialerLCDViewAccessibility;
  v4 = a3;
  [(PHHandsetDialerLCDViewAccessibility *)&v7 setSenderIdentity:v4];
  v5 = [(PHHandsetDialerLCDViewAccessibility *)self safeUIViewForKey:@"pillView", v7.receiver, v7.super_class];
  v6 = [v4 safeStringForKey:@"localizedName"];

  [v5 setAccessibilityLabel:v6];
}

@end