@interface ContactSearchViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityCustomActions;
- (id)accessibilityElements;
- (id)automationElements;
@end

@implementation ContactSearchViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CallsSearch.ContactSearchViewCell" hasSwiftField:@"titleLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"CallsSearch.ContactSearchViewCell" hasSwiftField:@"detailLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"CallsSearch.ContactSearchViewCell" hasSwiftField:@"callButton" withSwiftType:"TPAccessoryButton"];
  [v3 validateClass:@"CallsSearch.ContactSearchViewCell" hasSwiftField:@"videoButton" withSwiftType:"TPAccessoryButton"];
  [v3 validateClass:@"CallsSearch.ContactSearchViewCell" hasInstanceMethod:@"callButtonTapped" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CallsSearch.ContactSearchViewCell" hasInstanceMethod:@"videoButtonTapped" withFullSignature:{"v", 0}];
}

- (id)accessibilityElements
{
  v3 = MEMORY[0x29EDB8D80];
  v4 = [(ContactSearchViewCellAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  v5 = [(ContactSearchViewCellAccessibility *)self safeSwiftValueForKey:@"detailLabel"];
  v6 = [v3 axArrayByIgnoringNilElementsWithCount:{2, v4, v5}];

  return v6;
}

- (id)automationElements
{
  v4.receiver = self;
  v4.super_class = ContactSearchViewCellAccessibility;
  v2 = [(ContactSearchViewCellAccessibility *)&v4 accessibilityElements];

  return v2;
}

- (id)accessibilityCustomActions
{
  objc_opt_class();
  v3 = [(ContactSearchViewCellAccessibility *)self safeSwiftValueForKey:@"videoButton"];
  v4 = __UIAccessibilityCastAsClass();

  LOBYTE(location) = 0;
  objc_opt_class();
  v5 = [(ContactSearchViewCellAccessibility *)self safeSwiftValueForKey:@"callButton"];
  v6 = __UIAccessibilityCastAsClass();

  objc_initWeak(&location, self);
  if ([v4 isHidden])
  {
    v7 = objc_alloc(MEMORY[0x29EDC78E0]);
    v8 = accessibilityLocalizedString(@"call.button");
    v17[0] = MEMORY[0x29EDCA5F8];
    v17[1] = 3221225472;
    v17[2] = __64__ContactSearchViewCellAccessibility_accessibilityCustomActions__block_invoke;
    v17[3] = &unk_29F2AB308;
    v9 = &v18;
    objc_copyWeak(&v18, &location);
    v10 = [v7 initWithName:v8 actionHandler:v17];
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x29EDC78E0]);
    v8 = accessibilityLocalizedString(@"video.call.button");
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 3221225472;
    v15[2] = __64__ContactSearchViewCellAccessibility_accessibilityCustomActions__block_invoke_3;
    v15[3] = &unk_29F2AB308;
    v9 = &v16;
    objc_copyWeak(&v16, &location);
    v10 = [v11 initWithName:v8 actionHandler:v15];
  }

  v12 = v10;

  objc_destroyWeak(v9);
  v13 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v12}];
  objc_destroyWeak(&location);

  return v13;
}

uint64_t __64__ContactSearchViewCellAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);

  return 1;
}

void __64__ContactSearchViewCellAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained callButtonTapped];
}

uint64_t __64__ContactSearchViewCellAccessibility_accessibilityCustomActions__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);

  return 1;
}

void __64__ContactSearchViewCellAccessibility_accessibilityCustomActions__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained videoButtonTapped];
}

@end