@interface AppCardContainerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)viewDidLayoutSubviews;
@end

@implementation AppCardContainerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ChatKit.AppCardContainerViewController" hasInstanceMethod:@"viewDidLayoutSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"ChatKit.AppCardContainerViewController" hasSwiftField:@"remoteViewController" withSwiftType:"UIViewController & CKBrowserViewControllerProtocol"];
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"view" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_UIRemoteView"];
  [validationsCopy validateClass:@"UISheetPresentationController" hasInstanceMethod:@"_currentPresentedViewFrame" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"UISheetPresentationController" hasInstanceMethod:@"selectedDetentIdentifier" withFullSignature:{"@", 0}];
}

- (void)viewDidLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = AppCardContainerViewControllerAccessibility;
  [(AppCardContainerViewControllerAccessibility *)&v15 viewDidLayoutSubviews];
  v3 = [(AppCardContainerViewControllerAccessibility *)self safeSwiftValueForKey:@"remoteViewController"];
  v4 = [v3 safeValueForKey:@"view"];
  v5 = [v4 _accessibilityFindSubviewDescendant:&__block_literal_global_1];
  [v5 _accessibilitySetUsesScrollParentForOrdering:0];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __68__AppCardContainerViewControllerAccessibility_viewDidLayoutSubviews__block_invoke_2;
  v12[3] = &unk_29F2B0890;
  objc_copyWeak(&v13, &location);
  [v5 _setAccessibilityFrameForSortingBlock:v12];
  v11 = 0;
  objc_opt_class();
  accessibilityElements = [v5 accessibilityElements];
  firstObject = [accessibilityElements firstObject];
  v8 = __UIAccessibilityCastAsClass();

  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __68__AppCardContainerViewControllerAccessibility_viewDidLayoutSubviews__block_invoke_3;
  v9[3] = &unk_29F2B0868;
  objc_copyWeak(&v10, &location);
  [v8 _setAccessibilityRemoteElementShouldHitTestHostProcessBlock:v9];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

uint64_t __68__AppCardContainerViewControllerAccessibility_viewDidLayoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Uiremoteview.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

double __68__AppCardContainerViewControllerAccessibility_viewDidLayoutSubviews__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"sheetPresentationController"];
  [v2 safeCGRectForKey:@"_currentPresentedViewFrame"];
  v4 = v3;

  return v4;
}

uint64_t __68__AppCardContainerViewControllerAccessibility_viewDidLayoutSubviews__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"sheetPresentationController"];
  v3 = [v2 safeStringForKey:@"selectedDetentIdentifier"];

  LODWORD(WeakRetained) = [v3 isEqualToString:*MEMORY[0x29EDC8218]];
  return WeakRetained ^ 1;
}

@end