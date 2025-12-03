@interface SUUIOverlayContainerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)backstopControl;
- (void)dismissWithFadeTransitionCompletionBlock:(id)block;
- (void)dismissWithFlipTransition:(id)transition completionBlock:(id)block;
- (void)showViewController:(id)controller withCompletionBlock:(id)block;
- (void)showViewController:(id)controller withFlipTransition:(id)transition completionBlock:(id)block;
- (void)showViewControllers:(id)controllers;
@end

@implementation SUUIOverlayContainerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUIOverlayContainerViewController" hasInstanceMethod:@"dismissWithFlipTransition: completionBlock:" withFullSignature:{"v", "@", "@?", 0}];
  [validationsCopy validateClass:@"SUUIOverlayContainerViewController" hasInstanceMethod:@"dismissWithFadeTransitionCompletionBlock:" withFullSignature:{"v", "@?", 0}];
  [validationsCopy validateClass:@"SUUIOverlayContainerViewController" hasInstanceMethod:@"showViewController: withFlipTransition: completionBlock:" withFullSignature:{"v", "@", "@", "@?", 0}];
  [validationsCopy validateClass:@"SUUIOverlayContainerViewController" hasInstanceMethod:@"showViewController: withCompletionBlock:" withFullSignature:{"v", "@", "@?", 0}];
  [validationsCopy validateClass:@"SUUIOverlayContainerViewController" hasInstanceMethod:@"showViewControllers:" withFullSignature:{"v", "@", 0}];
}

void __77__SUUIOverlayContainerViewControllerAccessibility_accessibilityPerformEscape__block_invoke(uint64_t a1)
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
  v4.super_class = SUUIOverlayContainerViewControllerAccessibility;
  backstopControl = [(SUUIOverlayContainerViewControllerAccessibility *)&v4 backstopControl];
  [backstopControl setAccessibilityViewIsModal:1];
  [backstopControl setAccessibilityIdentifier:@"OverlayCaptureView"];

  return backstopControl;
}

- (void)dismissWithFlipTransition:(id)transition completionBlock:(id)block
{
  blockCopy = block;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __93__SUUIOverlayContainerViewControllerAccessibility_dismissWithFlipTransition_completionBlock___block_invoke;
  v11[3] = &unk_29F2D8E58;
  v12 = blockCopy;
  v7 = blockCopy;
  transitionCopy = transition;
  v9 = MEMORY[0x29C2E17C0](v11);
  v10.receiver = self;
  v10.super_class = SUUIOverlayContainerViewControllerAccessibility;
  [(SUUIOverlayContainerViewControllerAccessibility *)&v10 dismissWithFlipTransition:transitionCopy completionBlock:v9];
}

void __93__SUUIOverlayContainerViewControllerAccessibility_dismissWithFlipTransition_completionBlock___block_invoke(uint64_t a1)
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

- (void)dismissWithFadeTransitionCompletionBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __92__SUUIOverlayContainerViewControllerAccessibility_dismissWithFadeTransitionCompletionBlock___block_invoke;
  v8[3] = &unk_29F2D8E58;
  v9 = blockCopy;
  v5 = blockCopy;
  v6 = MEMORY[0x29C2E17C0](v8);
  v7.receiver = self;
  v7.super_class = SUUIOverlayContainerViewControllerAccessibility;
  [(SUUIOverlayContainerViewControllerAccessibility *)&v7 dismissWithFadeTransitionCompletionBlock:v6];
}

void __92__SUUIOverlayContainerViewControllerAccessibility_dismissWithFadeTransitionCompletionBlock___block_invoke(uint64_t a1)
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

- (void)showViewController:(id)controller withCompletionBlock:(id)block
{
  blockCopy = block;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __90__SUUIOverlayContainerViewControllerAccessibility_showViewController_withCompletionBlock___block_invoke;
  v11[3] = &unk_29F2D8E58;
  v12 = blockCopy;
  v7 = blockCopy;
  controllerCopy = controller;
  v9 = MEMORY[0x29C2E17C0](v11);
  v10.receiver = self;
  v10.super_class = SUUIOverlayContainerViewControllerAccessibility;
  [(SUUIOverlayContainerViewControllerAccessibility *)&v10 showViewController:controllerCopy withCompletionBlock:v9];
}

void __90__SUUIOverlayContainerViewControllerAccessibility_showViewController_withCompletionBlock___block_invoke(uint64_t a1)
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

- (void)showViewController:(id)controller withFlipTransition:(id)transition completionBlock:(id)block
{
  blockCopy = block;
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = __105__SUUIOverlayContainerViewControllerAccessibility_showViewController_withFlipTransition_completionBlock___block_invoke;
  v14[3] = &unk_29F2D8E58;
  v15 = blockCopy;
  v9 = blockCopy;
  transitionCopy = transition;
  controllerCopy = controller;
  v12 = MEMORY[0x29C2E17C0](v14);
  v13.receiver = self;
  v13.super_class = SUUIOverlayContainerViewControllerAccessibility;
  [(SUUIOverlayContainerViewControllerAccessibility *)&v13 showViewController:controllerCopy withFlipTransition:transitionCopy completionBlock:v12];
}

void __105__SUUIOverlayContainerViewControllerAccessibility_showViewController_withFlipTransition_completionBlock___block_invoke(uint64_t a1)
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

- (void)showViewControllers:(id)controllers
{
  v3.receiver = self;
  v3.super_class = SUUIOverlayContainerViewControllerAccessibility;
  [(SUUIOverlayContainerViewControllerAccessibility *)&v3 showViewControllers:controllers];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end