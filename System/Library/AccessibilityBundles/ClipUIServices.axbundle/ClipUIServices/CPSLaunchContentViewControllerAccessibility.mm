@interface CPSLaunchContentViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityPerformEscape;
- (CGRect)_axFrameForInformationContainerView;
- (id)_axBackgroundView;
- (id)_axButtons;
- (id)_axLabels;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateContent;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation CPSLaunchContentViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CPSLaunchContentViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CPSLaunchContentViewController" hasInstanceMethod:@"_updateContent" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CPSLaunchContentViewController" hasInstanceVariable:@"_clipNameVibrantLabel" withType:"CPSVibrantLabel"];
  [validationsCopy validateClass:@"CPSLaunchContentViewController" hasInstanceVariable:@"_clipDescriptionVibrantLabel" withType:"CPSVibrantLabel"];
  [validationsCopy validateClass:@"CPSLaunchContentViewController" hasInstanceVariable:@"_openButton" withType:"UIButton"];
  [validationsCopy validateClass:@"CPSLaunchContentViewController" hasInstanceVariable:@"_closeButton" withType:"CPSVibrantButton"];
  [validationsCopy validateClass:@"CPSLaunchContentViewController" hasInstanceVariable:@"_clipInformationContainerView" withType:"UIView"];
  [validationsCopy validateClass:@"CPSLaunchContentViewController" hasInstanceMethod:@"_openAppClip:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CPSLaunchContentViewController" hasInstanceMethod:@"dismiss:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"UITransitionView"];
  [validationsCopy validateClass:@"CPSLaunchContentViewController" isKindOfClass:@"UIViewController"];
}

- (CGRect)_axFrameForInformationContainerView
{
  _axNameLabel = [(CPSLaunchContentViewControllerAccessibility *)self _axNameLabel];
  [_axNameLabel accessibilityFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  _axDescriptionLabel = [(CPSLaunchContentViewControllerAccessibility *)self _axDescriptionLabel];
  [_axDescriptionLabel accessibilityFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v5;
  v22 = v7;
  v23 = v9;
  v24 = v11;
  v25 = v14;
  v26 = v16;
  v27 = v18;
  v28 = v20;

  return CGRectUnion(*&v21, *&v25);
}

- (id)_axLabels
{
  v3 = MEMORY[0x29EDB8D80];
  _axNameLabel = [(CPSLaunchContentViewControllerAccessibility *)self _axNameLabel];
  _axDescriptionLabel = [(CPSLaunchContentViewControllerAccessibility *)self _axDescriptionLabel];
  v6 = [v3 axArrayByIgnoringNilElementsWithCount:{2, _axNameLabel, _axDescriptionLabel}];

  return v6;
}

- (id)_axButtons
{
  _axInformationContainerView = [(CPSLaunchContentViewControllerAccessibility *)self _axInformationContainerView];
  v3 = [_axInformationContainerView _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_1];

  return v3;
}

uint64_t __57__CPSLaunchContentViewControllerAccessibility__axButtons__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_axBackgroundView
{
  objc_opt_class();
  v3 = [(CPSLaunchContentViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  v4 = [v3 _accessibilityFindAncestor:&__block_literal_global_334 startWithSelf:0];
  v5 = __UIAccessibilityCastAsClass();

  subviews = [v5 subviews];
  if ([subviews count] == 2)
  {
    v7 = [subviews objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [subviews objectAtIndexedSubscript:1];
      MEMORY[0x29C2D0B70](@"PRXCardContainerView");
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v10 = [subviews objectAtIndexedSubscript:0];
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v10 = 0;
LABEL_7:

  return v10;
}

uint64_t __64__CPSLaunchContentViewControllerAccessibility__axBackgroundView__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2D0B70](@"UITransitionView");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)accessibilityPerformEscape
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  AXPerformSafeBlock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __73__CPSLaunchContentViewControllerAccessibility_accessibilityPerformEscape__block_invoke(uint64_t a1)
{
  [*(a1 + 32) dismiss:0];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v2 = *MEMORY[0x29EDC7F10];

  UIAccessibilityPostNotification(v2, 0);
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CPSLaunchContentViewControllerAccessibility;
  [(CPSLaunchContentViewControllerAccessibility *)&v3 viewDidLoad];
  [(CPSLaunchContentViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = CPSLaunchContentViewControllerAccessibility;
  [(CPSLaunchContentViewControllerAccessibility *)&v6 viewDidAppear:appear];
  v4 = *MEMORY[0x29EDC7ED8];
  _axNameLabel = [(CPSLaunchContentViewControllerAccessibility *)self _axNameLabel];
  UIAccessibilityPostNotification(v4, _axNameLabel);
}

- (void)_updateContent
{
  v3.receiver = self;
  v3.super_class = CPSLaunchContentViewControllerAccessibility;
  [(CPSLaunchContentViewControllerAccessibility *)&v3 _updateContent];
  [(CPSLaunchContentViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v17.receiver = self;
  v17.super_class = CPSLaunchContentViewControllerAccessibility;
  [(CPSLaunchContentViewControllerAccessibility *)&v17 _accessibilityLoadAccessibilityInformation];
  _axBackgroundView = [(CPSLaunchContentViewControllerAccessibility *)self _axBackgroundView];
  _axInformationContainerView = [(CPSLaunchContentViewControllerAccessibility *)self _axInformationContainerView];
  [_axBackgroundView setIsAccessibilityElement:1];
  v5 = accessibilityLocalizedString(@"popover.view.dismiss");
  [_axBackgroundView setAccessibilityLabel:v5];

  [_axInformationContainerView _setAccessibilityServesAsFirstElement:1];
  v6 = MEMORY[0x29EDB8D80];
  _axLabels = [(CPSLaunchContentViewControllerAccessibility *)self _axLabels];
  _axButtons = [(CPSLaunchContentViewControllerAccessibility *)self _axButtons];
  v9 = [v6 axArrayWithPossiblyNilArrays:{2, _axLabels, _axButtons}];
  [_axInformationContainerView setAccessibilityElements:v9];

  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = __89__CPSLaunchContentViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v14[3] = &unk_29F2B3A90;
  objc_copyWeak(&v15, &location);
  [_axBackgroundView _setAccessibilityActivateBlock:v14];
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __89__CPSLaunchContentViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v12[3] = &unk_29F2B3AB8;
  objc_copyWeak(&v13, &location);
  [_axInformationContainerView _setAccessibilityFrameBlock:v12];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __89__CPSLaunchContentViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v10[3] = &unk_29F2B3A90;
  objc_copyWeak(&v11, &location);
  [_axInformationContainerView _setAccessibilityActivateBlock:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

uint64_t __89__CPSLaunchContentViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained accessibilityPerformEscape];

  return v2;
}

double __89__CPSLaunchContentViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _axFrameForInformationContainerView];
  v3 = v2;

  return v3;
}

uint64_t __89__CPSLaunchContentViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  objc_copyWeak(&v2, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v2);
  return 1;
}

void __89__CPSLaunchContentViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _openAppClip:0];
}

@end