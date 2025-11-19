@interface ABActionSelectorViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axActionString;
- (id)_axPageControl;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axChangePageControl:(BOOL)a3;
- (void)_axSetupPageControl;
- (void)_updateSubviews;
- (void)viewDidLoad;
@end

@implementation ABActionSelectorViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ABActionSelectorViewController" hasInstanceVariable:@"_carouselView" withType:"ABCarouselView"];
  [v3 validateClass:@"ABActionSelectorViewController" hasInstanceVariable:@"_detailsView" withType:"UIView"];
  [v3 validateClass:@"ABActionSelectorViewController" hasInstanceVariable:@"_welcomeView" withType:"UIView"];
  [v3 validateClass:@"ActionButtonConfigurationUI.ActionDetailsView" hasSwiftField:@"titleLabel" withSwiftType:"Optional<UILabel>"];
  [v3 validateClass:@"ActionButtonConfigurationUI.ActionDetailsView" hasSwiftField:@"pageControl" withSwiftType:"Optional<UIPageControl>"];
  [v3 validateClass:@"ABActionSelectorViewController" hasInstanceMethod:@"selectActionItemWithIndex:animated:" withFullSignature:{"v", "q", "B", 0}];
  [v3 validateClass:@"ABActionSelectorViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [v3 validateClass:@"ABActionSelectorViewController" hasInstanceMethod:@"_updateSubviews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"ABActionSelectorViewController" hasInstanceMethod:@"carouselView:didSelectItemAtIndex:" withFullSignature:{"v", "@", "q", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = ABActionSelectorViewControllerAccessibility;
  [(ABActionSelectorViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  if (AXProcessIsSetup())
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  }

  [(ABActionSelectorViewControllerAccessibility *)self _axSetupPageControl];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = ABActionSelectorViewControllerAccessibility;
  [(ABActionSelectorViewControllerAccessibility *)&v3 viewDidLoad];
  [(ABActionSelectorViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_updateSubviews
{
  v3 = [(ABActionSelectorViewControllerAccessibility *)self safeUIViewForKey:@"_welcomeView"];
  v4 = v3;
  if (v3)
  {
    [v3 alpha];
    v6 = v5;
    v8.receiver = self;
    v8.super_class = ABActionSelectorViewControllerAccessibility;
    [(ABActionSelectorViewControllerAccessibility *)&v8 _updateSubviews];
    [v4 alpha];
    if (vabdd_f64(v7, v6) >= 0.001)
    {
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = ABActionSelectorViewControllerAccessibility;
    [(ABActionSelectorViewControllerAccessibility *)&v9 _updateSubviews];
  }
}

- (id)_axActionString
{
  v2 = [(ABActionSelectorViewControllerAccessibility *)self safeUIViewForKey:@"_detailsView"];
  objc_opt_class();
  v3 = [v2 safeSwiftValueForKey:@"titleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 text];

  return v5;
}

- (id)_axPageControl
{
  v2 = [(ABActionSelectorViewControllerAccessibility *)self safeUIViewForKey:@"_detailsView"];
  v3 = [v2 safeSwiftValueForKey:@"pageControl"];
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

- (void)_axSetupPageControl
{
  v3 = [(ABActionSelectorViewControllerAccessibility *)self _axPageControl];
  [v3 setUserInteractionEnabled:0];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __66__ABActionSelectorViewControllerAccessibility__axSetupPageControl__block_invoke;
  v8[3] = &unk_29F29BDB0;
  objc_copyWeak(&v9, &location);
  [v3 setAccessibilityDecrementBlock:v8];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __66__ABActionSelectorViewControllerAccessibility__axSetupPageControl__block_invoke_2;
  v6[3] = &unk_29F29BDB0;
  objc_copyWeak(&v7, &location);
  [v3 setAccessibilityIncrementBlock:v6];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __66__ABActionSelectorViewControllerAccessibility__axSetupPageControl__block_invoke_3;
  v4[3] = &unk_29F29BDD8;
  objc_copyWeak(&v5, &location);
  [v3 setAccessibilityValueBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __66__ABActionSelectorViewControllerAccessibility__axSetupPageControl__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _axChangePageControl:0];
}

void __66__ABActionSelectorViewControllerAccessibility__axSetupPageControl__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _axChangePageControl:1];
}

id __66__ABActionSelectorViewControllerAccessibility__axSetupPageControl__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _axActionString];

  return v2;
}

- (void)_axChangePageControl:(BOOL)a3
{
  v3 = a3;
  v5 = [(ABActionSelectorViewControllerAccessibility *)self _axPageControl];
  v6 = [v5 numberOfPages];
  v7 = [v5 currentPage];
  v8 = v7 - 1;
  if (v3)
  {
    v8 = v7 + 1;
  }

  if (v8 >= v6)
  {
    v9 = (v6 - 1);
  }

  else
  {
    v9 = v8;
  }

  if (v8 >= 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  objc_initWeak(&location, self);
  objc_copyWeak(v11, &location);
  v11[1] = v10;
  AXPerformSafeBlock();
  [v5 setCurrentPage:v10];
  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __68__ABActionSelectorViewControllerAccessibility__axChangePageControl___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained selectActionItemWithIndex:*(a1 + 40) animated:1];

  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 safeUIViewForKey:@"_detailsView"];

  [v4 setNeedsLayout];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end