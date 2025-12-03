@interface CKNavbarCanvasViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)backButtonView;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CKNavbarCanvasViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKNavbarCanvasViewController" hasInstanceMethod:@"backButtonView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKNavbarCanvasViewController" hasInstanceMethod:@"_buttonPressed:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = CKNavbarCanvasViewControllerAccessibility;
  [(CKNavbarCanvasViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(CKNavbarCanvasViewControllerAccessibility *)self safeValueForKey:@"detailsButton"];
  v4 = accessibilityLocalizedString(@"details.button");
  [v3 setAccessibilityLabel:v4];
}

- (id)backButtonView
{
  v10.receiver = self;
  v10.super_class = CKNavbarCanvasViewControllerAccessibility;
  backButtonView = [(CKNavbarCanvasViewControllerAccessibility *)&v10 backButtonView];
  objc_initWeak(&location, self);
  objc_initWeak(&from, backButtonView);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __59__CKNavbarCanvasViewControllerAccessibility_backButtonView__block_invoke;
  v5[3] = &unk_29F2B0EC0;
  objc_copyWeak(&v6, &location);
  objc_copyWeak(&v7, &from);
  [backButtonView _setAccessibilityActivateBlock:v5];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return backButtonView;
}

uint64_t __59__CKNavbarCanvasViewControllerAccessibility_backButtonView__block_invoke(uint64_t a1)
{
  objc_copyWeak(&v3, (a1 + 32));
  objc_copyWeak(&v4, (a1 + 40));
  AXPerformSafeBlock();
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v3);
  return 1;
}

void __59__CKNavbarCanvasViewControllerAccessibility_backButtonView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _buttonPressed:v2];
}

@end