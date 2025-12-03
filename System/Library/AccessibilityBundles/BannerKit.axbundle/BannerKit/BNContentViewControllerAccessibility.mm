@interface BNContentViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axPresentableForViewController:(id)controller;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axMarkupBannerVC:(id)c;
- (void)addChildViewController:(id)controller;
- (void)presentPresentable:(id)presentable withOptions:(unint64_t)options userInfo:(id)info;
@end

@implementation BNContentViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BNContentViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"BNContentViewController" hasInstanceVariable:@"_presentables" withType:"BNTieredArray"];
  [validationsCopy validateClass:@"BNTieredArray" hasInstanceMethod:@"allObjects" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"BNPresentable" hasOptionalInstanceMethod:@"viewController"];
  [validationsCopy validateClass:@"BNContentViewController" hasInstanceMethod:@"_dismissPresentable:withReason:animated:userInfo:" withFullSignature:{"v", "@", "@", "B", "@", 0}];
  [validationsCopy validateClass:@"BNContentViewController" hasInstanceMethod:@"presentPresentable:withOptions:userInfo:" withFullSignature:{"v", "@", "Q", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v17 = *MEMORY[0x29EDCA608];
  v15.receiver = self;
  v15.super_class = BNContentViewControllerAccessibility;
  [(BNContentViewControllerAccessibility *)&v15 _accessibilityLoadAccessibilityInformation];
  v14 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  childViewControllers = [v3 childViewControllers];
  v5 = [childViewControllers countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(childViewControllers);
        }

        [(BNContentViewControllerAccessibility *)self _axMarkupBannerVC:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [childViewControllers countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x29EDCA608];
}

- (void)addChildViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = BNContentViewControllerAccessibility;
  controllerCopy = controller;
  [(BNContentViewControllerAccessibility *)&v5 addChildViewController:controllerCopy];
  [(BNContentViewControllerAccessibility *)self _axMarkupBannerVC:controllerCopy, v5.receiver, v5.super_class];
}

- (void)presentPresentable:(id)presentable withOptions:(unint64_t)options userInfo:(id)info
{
  presentableCopy = presentable;
  infoCopy = info;
  v10 = [infoCopy objectForKey:@"com.apple.DragUI.druid.DRPasteAnnouncementAccessibilityDescriptionKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [presentableCopy setAccessibilityLabel:v10];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v10);
  }

  v11.receiver = self;
  v11.super_class = BNContentViewControllerAccessibility;
  [(BNContentViewControllerAccessibility *)&v11 presentPresentable:presentableCopy withOptions:options userInfo:infoCopy];
}

- (void)_axMarkupBannerVC:(id)c
{
  cCopy = c;
  view = [cCopy view];
  [view _setAccessibilityAutomationType:8];

  objc_initWeak(&location, self);
  objc_initWeak(&from, cCopy);
  view2 = [cCopy view];
  v12 = MEMORY[0x29EDCA5F8];
  v13 = 3221225472;
  v14 = __58__BNContentViewControllerAccessibility__axMarkupBannerVC___block_invoke;
  v15 = &unk_29F2A71D8;
  objc_copyWeak(&v16, &location);
  objc_copyWeak(&v17, &from);
  [view2 _setAccessibilityPerformEscapeBlock:&v12];

  v7 = [(BNContentViewControllerAccessibility *)self _axPresentableForViewController:cCopy, v12, v13, v14, v15];
  view3 = [cCopy view];
  accessibilityLabel = [v7 accessibilityLabel];
  [view3 setIsAccessibilityElement:{objc_msgSend(accessibilityLabel, "length") != 0}];

  view4 = [cCopy view];
  accessibilityLabel2 = [v7 accessibilityLabel];
  [view4 setAccessibilityLabel:accessibilityLabel2];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

BOOL __58__BNContentViewControllerAccessibility__axMarkupBannerVC___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained _axPresentableForViewController:v3];
  if (v4)
  {
    v6 = v3;
    AXPerformSafeBlock();
  }

  return v4 != 0;
}

void __58__BNContentViewControllerAccessibility__axMarkupBannerVC___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _axPresentableForViewController:*(a1 + 40)];
  [v1 _dismissPresentable:v2 withReason:@"Accessibility" animated:1 userInfo:0];
}

- (id)_axPresentableForViewController:(id)controller
{
  controllerCopy = controller;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v5 = [(BNContentViewControllerAccessibility *)self safeValueForKey:@"_presentables"];
  v6 = [v5 safeArrayForKey:@"allObjects"];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __72__BNContentViewControllerAccessibility__axPresentableForViewController___block_invoke;
  v10[3] = &unk_29F2A7200;
  v7 = controllerCopy;
  v11 = v7;
  v12 = &v13;
  [v6 enumerateObjectsUsingBlock:v10];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __72__BNContentViewControllerAccessibility__axPresentableForViewController___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 safeValueForKey:@"viewController"];
  v8 = *(a1 + 32);

  if (v7 == v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

@end