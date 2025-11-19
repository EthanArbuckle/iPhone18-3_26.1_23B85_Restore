@interface SKUIOverlayContainerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)backstopControl;
- (void)dismissWithFadeTransitionCompletionBlock:(id)a3;
- (void)dismissWithFlipTransition:(id)a3 completionBlock:(id)a4;
- (void)showViewController:(id)a3 withCompletionBlock:(id)a4;
- (void)showViewController:(id)a3 withFlipTransition:(id)a4 completionBlock:(id)a5;
- (void)showViewControllers:(id)a3;
@end

@implementation SKUIOverlayContainerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SKUIOverlayContainerViewController" hasInstanceMethod:@"dismissWithFlipTransition: completionBlock:" withFullSignature:{"v", "@", "@?", 0}];
  [v3 validateClass:@"SKUIOverlayContainerViewController" hasInstanceMethod:@"dismissWithFadeTransitionCompletionBlock:" withFullSignature:{"v", "@?", 0}];
  [v3 validateClass:@"SKUIOverlayContainerViewController" hasInstanceMethod:@"showViewController: withFlipTransition: completionBlock:" withFullSignature:{"v", "@", "@", "@?", 0}];
  [v3 validateClass:@"SKUIOverlayContainerViewController" hasInstanceMethod:@"showViewController: withCompletionBlock:" withFullSignature:{"v", "@", "@?", 0}];
  [v3 validateClass:@"SKUIOverlayContainerViewController" hasInstanceMethod:@"showViewControllers:" withFullSignature:{"v", "@", 0}];
}

void __77__SKUIOverlayContainerViewControllerAccessibility_accessibilityPerformEscape__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) safeValueForKey:@"view"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _AXAssert();
  }

  [v1 sendActionsForControlEvents:64];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (id)backstopControl
{
  v4.receiver = self;
  v4.super_class = SKUIOverlayContainerViewControllerAccessibility;
  v2 = [(SKUIOverlayContainerViewControllerAccessibility *)&v4 backstopControl];
  [v2 setAccessibilityViewIsModal:1];
  [v2 setAccessibilityIdentifier:@"OverlayCaptureView"];

  return v2;
}

- (void)dismissWithFlipTransition:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __93__SKUIOverlayContainerViewControllerAccessibility_dismissWithFlipTransition_completionBlock___block_invoke;
  v11[3] = &unk_29F304318;
  v12 = v6;
  v7 = v6;
  v8 = a3;
  v9 = MEMORY[0x29ED3A4B0](v11);
  v10.receiver = self;
  v10.super_class = SKUIOverlayContainerViewControllerAccessibility;
  [(SKUIOverlayContainerViewControllerAccessibility *)&v10 dismissWithFlipTransition:v8 completionBlock:v9];
}

void __93__SKUIOverlayContainerViewControllerAccessibility_dismissWithFlipTransition_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v1 = vars8;
  }

  v3 = *MEMORY[0x29EDC7F10];

  UIAccessibilityPostNotification(v3, 0);
}

- (void)dismissWithFadeTransitionCompletionBlock:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __92__SKUIOverlayContainerViewControllerAccessibility_dismissWithFadeTransitionCompletionBlock___block_invoke;
  v8[3] = &unk_29F304318;
  v9 = v4;
  v5 = v4;
  v6 = MEMORY[0x29ED3A4B0](v8);
  v7.receiver = self;
  v7.super_class = SKUIOverlayContainerViewControllerAccessibility;
  [(SKUIOverlayContainerViewControllerAccessibility *)&v7 dismissWithFadeTransitionCompletionBlock:v6];
}

void __92__SKUIOverlayContainerViewControllerAccessibility_dismissWithFadeTransitionCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v1 = vars8;
  }

  v3 = *MEMORY[0x29EDC7F10];

  UIAccessibilityPostNotification(v3, 0);
}

- (void)showViewController:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a4;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __90__SKUIOverlayContainerViewControllerAccessibility_showViewController_withCompletionBlock___block_invoke;
  v11[3] = &unk_29F304318;
  v12 = v6;
  v7 = v6;
  v8 = a3;
  v9 = MEMORY[0x29ED3A4B0](v11);
  v10.receiver = self;
  v10.super_class = SKUIOverlayContainerViewControllerAccessibility;
  [(SKUIOverlayContainerViewControllerAccessibility *)&v10 showViewController:v8 withCompletionBlock:v9];
}

void __90__SKUIOverlayContainerViewControllerAccessibility_showViewController_withCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v1 = vars8;
  }

  v3 = *MEMORY[0x29EDC7F10];

  UIAccessibilityPostNotification(v3, 0);
}

- (void)showViewController:(id)a3 withFlipTransition:(id)a4 completionBlock:(id)a5
{
  v8 = a5;
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = __105__SKUIOverlayContainerViewControllerAccessibility_showViewController_withFlipTransition_completionBlock___block_invoke;
  v14[3] = &unk_29F304318;
  v15 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = MEMORY[0x29ED3A4B0](v14);
  v13.receiver = self;
  v13.super_class = SKUIOverlayContainerViewControllerAccessibility;
  [(SKUIOverlayContainerViewControllerAccessibility *)&v13 showViewController:v11 withFlipTransition:v10 completionBlock:v12];
}

void __105__SKUIOverlayContainerViewControllerAccessibility_showViewController_withFlipTransition_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v1 = vars8;
  }

  v3 = *MEMORY[0x29EDC7F10];

  UIAccessibilityPostNotification(v3, 0);
}

- (void)showViewControllers:(id)a3
{
  v3.receiver = self;
  v3.super_class = SKUIOverlayContainerViewControllerAccessibility;
  [(SKUIOverlayContainerViewControllerAccessibility *)&v3 showViewControllers:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end