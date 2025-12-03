@interface SBUICallToActionLabelAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (id)accessibilityAttributedLabel;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityHandlePreboardUnlock;
- (void)_accessibilityTryUnlockForControllerClassName:(id)name;
@end

@implementation SBUICallToActionLabelAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBUICallToActionLabel" hasInstanceMethod:@"label" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBUILegibilityLabel" hasInstanceMethod:@"attributedText" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SBUICallToActionLabelAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SBUICallToActionLabelAccessibility *)&v3 accessibilityTraits];
}

- (BOOL)accessibilityActivate
{
  server = [MEMORY[0x29EDBDFA8] server];
  [server unlockDevice];

  server2 = [MEMORY[0x29EDBDFA8] server];

  if (!server2)
  {
    [(SBUICallToActionLabelAccessibility *)self _accessibilityHandlePreboardUnlock];
  }

  return 1;
}

- (id)accessibilityAttributedLabel
{
  v15[1] = *MEMORY[0x29EDCA608];
  v2 = [(SBUICallToActionLabelAccessibility *)self safeValueForKey:@"label"];
  objc_opt_class();
  v3 = [v2 safeValueForKey:@"attributedText"];
  v4 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = [v4 attribute:@"NSLanguage" atIndex:0 effectiveRange:0];
  v6 = __UIAccessibilityCastAsClass();

  accessibilityLabel = [v2 accessibilityLabel];
  v8 = objc_alloc(MEMORY[0x29EDB9F30]);
  v9 = v8;
  if (v6)
  {
    v14 = *MEMORY[0x29EDC7F30];
    v15[0] = v6;
    v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v11 = [v9 initWithString:accessibilityLabel attributes:v10];
  }

  else
  {
    v11 = [v8 initWithString:accessibilityLabel];
  }

  v12 = *MEMORY[0x29EDCA608];

  return v11;
}

- (void)_accessibilityHandlePreboardUnlock
{
  [(SBUICallToActionLabelAccessibility *)self _accessibilityTryUnlockForControllerClassName:@"PBADeviceUnlockViewController"];

  [(SBUICallToActionLabelAccessibility *)self _accessibilityTryUnlockForControllerClassName:@"PBADataRecoveryViewController"];
}

- (void)_accessibilityTryUnlockForControllerClassName:(id)name
{
  nameCopy = name;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __84__SBUICallToActionLabelAccessibility__accessibilityTryUnlockForControllerClassName___block_invoke;
  v9[3] = &unk_29F3021A0;
  v10 = nameCopy;
  v5 = nameCopy;
  v6 = [(SBUICallToActionLabelAccessibility *)self _accessibilityFindAncestor:v9 startWithSelf:0];
  _accessibilityViewController = [v6 _accessibilityViewController];

  v8 = _accessibilityViewController;
  AXPerformSafeBlock();
}

uint64_t __84__SBUICallToActionLabelAccessibility__accessibilityTryUnlockForControllerClassName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _accessibilityViewController];
  NSClassFromString(*(a1 + 32));
  LOBYTE(a1) = objc_opt_isKindOfClass();

  return a1 & 1;
}

@end