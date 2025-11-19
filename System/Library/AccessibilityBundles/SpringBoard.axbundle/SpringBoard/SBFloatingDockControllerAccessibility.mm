@interface SBFloatingDockControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)dismissFloatingDockIfPresentedAnimated:(BOOL)a3 completionHandler:(id)a4;
- (void)presentFloatingDockIfDismissedAnimated:(BOOL)a3 completionHandler:(id)a4;
@end

@implementation SBFloatingDockControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBFloatingDockController" hasInstanceMethod:@"remoteContentManager" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFloatingDockController" hasInstanceMethod:@"isFloatingDockFullyPresented" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBFloatingDockController" hasInstanceMethod:@"presentFloatingDockIfDismissedAnimated:completionHandler:" withFullSignature:{"v", "B", "@?", 0}];
  [v3 validateClass:@"SBFloatingDockController" hasInstanceMethod:@"dismissFloatingDockIfPresentedAnimated:completionHandler:" withFullSignature:{"v", "B", "@?", 0}];
  [v3 validateClass:@"SBFloatingDockController" hasInstanceMethod:@"isFloatingDockFullyPresented" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBFloatingDockController" hasInstanceMethod:@"isPresentingFolder" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBFloatingDockController" hasInstanceMethod:@"_allowGestureRecognizers" withFullSignature:{"B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SBFloatingDockControllerAccessibility;
  [(SBFloatingDockControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(SBFloatingDockControllerAccessibility *)self safeValueForKey:@"remoteContentManager"];
  [v3 _accessibilityLoadAccessibilityInformation];
}

- (void)presentFloatingDockIfDismissedAnimated:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SBFloatingDockControllerAccessibility *)self safeBoolForKey:@"isFloatingDockFullyPresented"];
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __98__SBFloatingDockControllerAccessibility_presentFloatingDockIfDismissedAnimated_completionHandler___block_invoke;
  v11[3] = &unk_29F2FBEE8;
  v13 = v7;
  v11[4] = self;
  v12 = v6;
  v8 = v6;
  v9 = MEMORY[0x29ED38050](v11);
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDA60]);
  v10.receiver = self;
  v10.super_class = SBFloatingDockControllerAccessibility;
  [(SBFloatingDockControllerAccessibility *)&v10 presentFloatingDockIfDismissedAnimated:v4 completionHandler:v9];
}

void __98__SBFloatingDockControllerAccessibility_presentFloatingDockIfDismissedAnimated_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    if ([*(a1 + 32) safeBoolForKey:@"isFloatingDockFullyPresented"])
    {
      objc_opt_class();
      v3 = [*(a1 + 32) safeValueForKey:@"_viewController"];
      v4 = __UIAccessibilityCastAsClass();

      v5 = [v4 view];

      UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v5);
    }
  }
}

- (void)dismissFloatingDockIfPresentedAnimated:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SBFloatingDockControllerAccessibility *)self safeBoolForKey:@"isFloatingDockFullyPresented"];
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __98__SBFloatingDockControllerAccessibility_dismissFloatingDockIfPresentedAnimated_completionHandler___block_invoke;
  v12[3] = &unk_29F2FBEE8;
  v14 = v7;
  v12[4] = self;
  v13 = v6;
  v8 = v6;
  v9 = MEMORY[0x29ED38050](v12);
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDA58]);
  v11.receiver = self;
  v11.super_class = SBFloatingDockControllerAccessibility;
  [(SBFloatingDockControllerAccessibility *)&v11 dismissFloatingDockIfPresentedAnimated:v4 completionHandler:v9];
  v10 = [MEMORY[0x29EDBDFA8] server];
  [v10 didPotentiallyDismissNonExclusiveSystemUI];
}

void __98__SBFloatingDockControllerAccessibility_dismissFloatingDockIfPresentedAnimated_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  if (*(a1 + 48) == 1 && ([*(a1 + 32) safeBoolForKey:@"isFloatingDockFullyPresented"] & 1) == 0)
  {
    v3 = *MEMORY[0x29EDC7ED8];

    UIAccessibilityPostNotification(v3, 0);
  }
}

@end