@interface BuddyLanguageControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_selectLanguage:(id)language;
@end

@implementation BuddyLanguageControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BuddyLanguageController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"BuddyLanguageLocaleCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BuddyLanguageController" hasInstanceMethod:@"languageComposite" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BuddyLanguageComposite" hasInstanceMethod:@"languageCodes" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BuddyLanguageController" hasInstanceMethod:@"tableView: cellForRowAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"BuddyLanguageController" hasInstanceMethod:@"_selectLanguage:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = BuddyLanguageControllerAccessibility;
  [(BuddyLanguageControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(BuddyLanguageControllerAccessibility *)self safeValueForKey:@"tableView"];
  [v3 reloadData];
}

- (void)_selectLanguage:(id)language
{
  languageCopy = language;
  v10.receiver = self;
  v10.super_class = BuddyLanguageControllerAccessibility;
  [(BuddyLanguageControllerAccessibility *)&v10 _selectLanguage:languageCopy];
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  navigationItem = [v5 navigationItem];
  existingBackButtonView = [navigationItem existingBackButtonView];
  if (existingBackButtonView)
  {
    backButtonTitle = [navigationItem backButtonTitle];
    v9 = AXAttributedStringForLanguage(backButtonTitle, languageCopy);

    if (v9)
    {
      [existingBackButtonView setAccessibilityLabel:v9];
    }
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v24.receiver = self;
  v24.super_class = BuddyLanguageControllerAccessibility;
  v8 = [(BuddyLanguageControllerAccessibility *)&v24 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v9 = pathCopy;
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

  text = [v14 text];

  v16 = AXAttributedStringForLanguage(text, v10);
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