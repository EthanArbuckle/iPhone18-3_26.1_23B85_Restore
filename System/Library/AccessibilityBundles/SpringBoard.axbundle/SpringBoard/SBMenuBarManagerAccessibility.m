@interface SBMenuBarManagerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_setMenuBarVisible:(BOOL)a3 animated:(BOOL)a4 userInitiated:(BOOL)a5;
@end

@implementation SBMenuBarManagerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBMenuBarManager" hasInstanceMethod:@"_setMenuBarVisible:animated:userInitiated:" withFullSignature:{"v", "B", "B", "B", 0}];
  [v3 validateClass:@"SBMenuBarViewController" hasInstanceMethod:@"addPresentationCompletionBlock:" withFullSignature:{"v", "@?", 0}];
  [v3 validateClass:@"SBMenuBarManager" hasInstanceMethod:@"menuBarViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBMenuBarViewController" hasInstanceMethod:@"menuBarView" withFullSignature:{"@", 0}];
}

- (void)_setMenuBarVisible:(BOOL)a3 animated:(BOOL)a4 userInitiated:(BOOL)a5
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = SBMenuBarManagerAccessibility;
  [(SBMenuBarManagerAccessibility *)&v15 _setMenuBarVisible:a3 animated:a4 userInitiated:a5];
  if (v5)
  {
    v7 = [(SBMenuBarManagerAccessibility *)self safeValueForKey:@"menuBarViewController"];
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 3221225472;
    v13[2] = __75__SBMenuBarManagerAccessibility__setMenuBarVisible_animated_userInitiated___block_invoke;
    v13[3] = &unk_29F2FBBC8;
    v8 = v7;
    v14 = v8;
    v11 = v8;
    v12 = MEMORY[0x29ED38050](v13);
    v9 = v12;
    v10 = v8;
    AXPerformSafeBlock();
    UIAccessibilityPostNotification(*MEMORY[0x29EDC74B8], *MEMORY[0x29EDBDB58]);
  }
}

void __75__SBMenuBarManagerAccessibility__setMenuBarVisible_animated_userInitiated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"menuBarView"];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v2);
  v1 = accessibilityLocalizedString(@"menu.bar");
  UIAccessibilitySpeakAndDoNotBeInterrupted();
}

@end