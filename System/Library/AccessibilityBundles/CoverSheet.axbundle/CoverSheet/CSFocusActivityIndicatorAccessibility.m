@interface CSFocusActivityIndicatorAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
@end

@implementation CSFocusActivityIndicatorAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CSFocusActivityIndicator" hasInstanceMethod:@"activity" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CSFocusActivityIndicator" hasInstanceVariable:@"_previousActivity" withType:"<FCActivityDescribing>"];
  [v3 validateClass:@"CSFocusActivityView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"FCActivityDescribing" hasMethod:@"activityDisplayName" isInstanceMethod:1 isRequired:1];
  [v3 validateProtocol:@"CSFocusActivityViewDelegate" hasMethod:@"focusActivityViewIndicatorPressed:" isInstanceMethod:1 isRequired:1];
}

- (id)accessibilityLabel
{
  v3 = [(CSFocusActivityIndicatorAccessibility *)self safeValueForKey:@"activity"];
  if (v3)
  {
    v4 = v3;
    v5 = accessibilityLocalizedString(@"focus.on");
  }

  else
  {
    v5 = accessibilityLocalizedString(@"focus.off");
    v4 = [(CSFocusActivityIndicatorAccessibility *)self safeValueForKey:@"_previousActivity"];
  }

  v6 = MEMORY[0x29EDBA0F8];
  v7 = [v4 safeStringForKey:@"activityDisplayName"];
  v8 = [v6 stringWithFormat:v5, v7];

  return v8;
}

- (id)accessibilityCustomActions
{
  objc_initWeak(&location, self);
  v2 = objc_alloc(MEMORY[0x29EDC78E0]);
  v3 = accessibilityLocalizedString(@"open.focus.settings");
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __67__CSFocusActivityIndicatorAccessibility_accessibilityCustomActions__block_invoke;
  v7[3] = &unk_29F2B9280;
  objc_copyWeak(&v8, &location);
  v4 = [v2 initWithName:v3 actionHandler:v7];

  v5 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v4}];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

uint64_t __67__CSFocusActivityIndicatorAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);

  return 1;
}

void __67__CSFocusActivityIndicatorAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained accessibilityContainer];
  v3 = [v2 safeValueForKey:@"_delegate"];
  v4 = objc_loadWeakRetained((a1 + 32));
  [v3 focusActivityViewIndicatorPressed:v4];
}

@end