@interface BuddyLanguageControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_selectLanguage:(id)a3;
@end

@implementation BuddyLanguageControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BuddyLanguageController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"BuddyLanguageLocaleCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BuddyLanguageController" hasInstanceMethod:@"languageComposite" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BuddyLanguageComposite" hasInstanceMethod:@"languageCodes" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BuddyLanguageController" hasInstanceMethod:@"tableView: cellForRowAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"BuddyLanguageController" hasInstanceMethod:@"_selectLanguage:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = BuddyLanguageControllerAccessibility;
  [(BuddyLanguageControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(BuddyLanguageControllerAccessibility *)self safeValueForKey:@"tableView"];
  [v3 reloadData];
}

- (void)_selectLanguage:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BuddyLanguageControllerAccessibility;
  [(BuddyLanguageControllerAccessibility *)&v10 _selectLanguage:v4];
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  v6 = [v5 navigationItem];
  v7 = [v6 existingBackButtonView];
  if (v7)
  {
    v8 = [v6 backButtonTitle];
    v9 = AXAttributedStringForLanguage(v8, v4);

    if (v9)
    {
      [v7 setAccessibilityLabel:v9];
    }
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = BuddyLanguageControllerAccessibility;
  v8 = [(BuddyLanguageControllerAccessibility *)&v24 tableView:v6 cellForRowAtIndexPath:v7];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v9 = v7;
  AXPerformSafeBlock();
  v10 = v19[5];

  _Block_object_dispose(&v18, 8);
  LOBYTE(v18) = 0;
  objc_opt_class();
  v11 = __UIAccessibilitySafeClass();
  v12 = v11;
  v13 = [v11 safeValueForKey:@"titleLabel"];
  v14 = __UIAccessibilityCastAsClass();

  if (v18 == 1)
  {
    abort();
  }

  v15 = [v14 text];

  v16 = AXAttributedStringForLanguage(v15, v10);
  if (v16)
  {
    [v8 setAccessibilityLabel:v16];
  }

  return v8;
}

void __72__BuddyLanguageControllerAccessibility_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) safeValueForKey:@"languageComposite"];
  v3 = [v2 safeArrayForKey:@"languageCodes"];
  v4 = [v3 objectAtIndexedSubscript:{objc_msgSend(*(a1 + 40), "row")}];
  v5 = __UIAccessibilityCastAsClass();

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

@end