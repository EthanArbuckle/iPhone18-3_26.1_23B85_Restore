@interface SBMenuBarManagerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_setMenuBarVisible:(BOOL)visible animated:(BOOL)animated userInitiated:(BOOL)initiated;
@end

@implementation SBMenuBarManagerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBMenuBarManager" hasInstanceMethod:@"_setMenuBarVisible:animated:userInitiated:" withFullSignature:{"v", "B", "B", "B", 0}];
  [validationsCopy validateClass:@"SBMenuBarViewController" hasInstanceMethod:@"addPresentationCompletionBlock:" withFullSignature:{"v", "@?", 0}];
  [validationsCopy validateClass:@"SBMenuBarManager" hasInstanceMethod:@"menuBarViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBMenuBarViewController" hasInstanceMethod:@"menuBarView" withFullSignature:{"@", 0}];
}

- (void)_setMenuBarVisible:(BOOL)visible animated:(BOOL)animated userInitiated:(BOOL)initiated
{
  visibleCopy = visible;
  v15.receiver = self;
  v15.super_class = SBMenuBarManagerAccessibility;
  [(SBMenuBarManagerAccessibility *)&v15 _setMenuBarVisible:visible animated:animated userInitiated:initiated];
  if (visibleCopy)
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