@interface SBFloatingDockViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)dismissPresentedFolderAnimated:(BOOL)a3 completion:(id)a4;
- (void)dockViewDidResignVisible;
@end

@implementation SBFloatingDockViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBFloatingDockViewController" hasInstanceMethod:@"dismissPresentedFolderAnimated:completion:" withFullSignature:{"v", "B", "@?", 0}];
  [v3 validateClass:@"SBFloatingDockViewController" hasInstanceMethod:@"dockViewDidResignVisible" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SBHIconManager" hasInstanceMethod:@"hasOpenFolder" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBHIconManager" hasInstanceMethod:@"isIconStylePickerVisible" withFullSignature:{"B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = SBFloatingDockViewControllerAccessibility;
  [(SBFloatingDockViewControllerAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  v3 = [(SBFloatingDockViewControllerAccessibility *)self safeValueForKey:@"view"];
  v4 = AXSBHIconManagerFromSharedIconController();
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __87__SBFloatingDockViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v6[3] = &unk_29F300378;
  v7 = v4;
  v5 = v4;
  [v3 setAccessibilityElementsHiddenBlock:v6];
}

- (void)dismissPresentedFolderAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  [(SBFloatingDockViewControllerAccessibility *)self _axSetIsClosingFolder:1];
  v7 = AXSBHIconManagerFromSharedIconController();
  v23 = MEMORY[0x29EDCA5F8];
  v24 = 3221225472;
  v25 = __87__SBFloatingDockViewControllerAccessibility_dismissPresentedFolderAnimated_completion___block_invoke;
  v26 = &unk_29F3001B8;
  v27 = v7;
  AXPerformSafeBlock();
  v8 = [v27 safeValueForKey:@"openedFolder"];
  v9 = [v8 safeValueForKey:@"displayName"];
  v10 = [v6 copy];

  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 3221225472;
  v16[2] = __87__SBFloatingDockViewControllerAccessibility_dismissPresentedFolderAnimated_completion___block_invoke_2;
  v16[3] = &unk_29F3003A0;
  v21 = v8 != 0;
  v17 = v27;
  v18 = self;
  v22 = v4;
  v19 = v9;
  v20 = v10;
  v11 = v9;
  v12 = v10;
  v13 = v27;
  v14 = MEMORY[0x29ED38BB0](v16);
  v15.receiver = self;
  v15.super_class = SBFloatingDockViewControllerAccessibility;
  [(SBFloatingDockViewControllerAccessibility *)&v15 dismissPresentedFolderAnimated:v4 completion:v14];
}

void __87__SBFloatingDockViewControllerAccessibility_dismissPresentedFolderAnimated_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) safeBoolForKey:@"hasOpenFolder"];
  v5 = *(a1 + 56);
  if (v5)
  {
    (*(v5 + 16))(v5, a2);
  }

  if (!(v4 & 1 | ((*(a1 + 64) & 1) == 0)) && [*(a1 + 40) _axIsClosingFolder])
  {
    if (*(a1 + 65) == 1)
    {
      v6 = *MEMORY[0x29EDC7EA8];
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDA68]);
      v7 = objc_allocWithZone(MEMORY[0x29EDB8DC0]);
      v8 = [MEMORY[0x29EDBA070] numberWithInt:1];
      v9 = [v7 initWithObjectsAndKeys:{v8, *MEMORY[0x29EDBD860], *MEMORY[0x29EDB8F00], *MEMORY[0x29EDBD8E8], 0}];

      v10 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
      v11 = MEMORY[0x29EDBA0F8];
      v12 = accessibilityLocalizedString(@"closing.folder");
      v13 = [v11 stringWithFormat:v12, *(a1 + 48)];
      v14 = [v10 initWithString:v13 attributes:v9];

      UIAccessibilityPostNotification(v6, v14);
    }

    [*(a1 + 40) _axSetIsClosingFolder:0];
  }

  v15 = *MEMORY[0x29EDC7F10];

  UIAccessibilityPostNotification(v15, 0);
}

- (void)dockViewDidResignVisible
{
  v3.receiver = self;
  v3.super_class = SBFloatingDockViewControllerAccessibility;
  [(SBFloatingDockViewControllerAccessibility *)&v3 dockViewDidResignVisible];
  v2 = [MEMORY[0x29EDBDFA8] server];
  [v2 didPotentiallyDismissNonExclusiveSystemUI];
}

@end