@interface SBUIPasscodeLockViewBaseAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityActivateKeyboardReturnKey;
- (BOOL)_accessibilityEntryFieldIsFirstResponder;
- (BOOL)_accessibilityHasDeletableText;
- (BOOL)becomeFirstResponder;
- (unint64_t)_accessibilityHandwritingAttributeAllowedCharacterSets;
- (unint64_t)_accessibilityHandwritingAttributePreferredCharacterSet;
- (void)_accessibilityInsertText:(id)a3;
- (void)_accessibilityReplaceCharactersAtCursor:(unint64_t)a3 withString:(id)a4;
- (void)_setPasscodeLockViewState:(int64_t)a3 animated:(BOOL)a4;
@end

@implementation SBUIPasscodeLockViewBaseAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBUIPasscodeLockViewBase" hasInstanceMethod:@"style" withFullSignature:{"i", 0}];
  [v3 validateClass:@"SBUIPasscodeLockViewWithKeypad" hasInstanceVariable:@"_entryField" withType:"SBUIPasscodeEntryField"];
  [v3 validateClass:@"SBUIPasscodeLockViewWithKeyboard" hasInstanceVariable:@"_alphaEntryField" withType:"SBUIAlphanumericPasscodeEntryField"];
  [v3 validateClass:@"SBUIPasscodeLockViewWithKeyboard" hasInstanceVariable:@"_entryField" withType:"SBUIPasscodeEntryField"];
  [v3 validateClass:@"SBUIPasscodeEntryField" hasInstanceMethod:@"stringValue" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBUIPasscodeEntryField" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBUIPasscodeEntryField" hasInstanceMethod:@"appendString:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBUIPasscodeEntryField" hasInstanceMethod:@"deleteLastCharacter" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SBUIPasscodeLockViewBase" hasInstanceMethod:@"_resetForFailedPasscode:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"SBUIPasscodeLockViewBase" hasInstanceMethod:@"_setPasscodeLockViewState:animated:" withFullSignature:{"v", "q", "B", 0}];
  [v3 validateClass:@"SBUIPasscodeLockViewBase" hasInstanceVariable:@"_statusText" withType:"NSString"];
  [v3 validateClass:@"SBUIPasscodeLockViewBase" hasInstanceVariable:@"_statusState" withType:"Q"];
  [v3 validateClass:@"SBUIPasscodeLockViewBase" hasInstanceMethod:@"_updateStatusTextForBioEvent: animated:" withFullSignature:{"v", "Q", "B", 0}];
  [v3 validateClass:@"NSString" hasInstanceMethod:@"isNewline" withFullSignature:{"B", 0}];
}

- (unint64_t)_accessibilityHandwritingAttributePreferredCharacterSet
{
  v2 = [(SBUIPasscodeLockViewBaseAccessibility *)self safeValueForKey:@"style"];
  v3 = [v2 intValue];

  if (v3 >= 3)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

- (unint64_t)_accessibilityHandwritingAttributeAllowedCharacterSets
{
  v3 = [(SBUIPasscodeLockViewBaseAccessibility *)self safeValueForKey:@"style"];
  v4 = [v3 intValue];

  if (v4 < 2)
  {
    return 4;
  }

  v6.receiver = self;
  v6.super_class = SBUIPasscodeLockViewBaseAccessibility;
  return [(SBUIPasscodeLockViewBaseAccessibility *)&v6 _accessibilityHandwritingAttributeAllowedCharacterSets];
}

- (BOOL)_accessibilityHasDeletableText
{
  v2 = [(SBUIPasscodeLockViewBaseAccessibility *)self safeValueForKey:@"_entryField"];
  v3 = [v2 safeValueForKey:@"stringValue"];

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6 = v3;
  AXPerformSafeBlock();
  v4 = v8[3];

  _Block_object_dispose(&v7, 8);
  return v4 != 0;
}

uint64_t __71__SBUIPasscodeLockViewBaseAccessibility__accessibilityHasDeletableText__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) length];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_accessibilityInsertText:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SBUIPasscodeLockViewBaseAccessibility *)self safeValueForKey:@"_entryField"];
    v7 = v4;
    v8 = v5;
    v6 = v5;
    AXPerformSafeBlock();
  }
}

void __66__SBUIPasscodeLockViewBaseAccessibility__accessibilityInsertText___block_invoke(uint64_t a1)
{
  for (i = 0; i != 0x7FFFFFFFFFFFFFFFLL; i = v5 + v6)
  {
    if (i >= [*(a1 + 32) length])
    {
      break;
    }

    v3 = [*(a1 + 32) rangeOfComposedCharacterSequenceAtIndex:i];
    if (v3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v5 = v3;
    v6 = v4;
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) substringWithRange:{v3, v4}];
    [v7 appendString:v8];
  }
}

- (BOOL)_accessibilityActivateKeyboardReturnKey
{
  v3 = [(SBUIPasscodeLockViewBaseAccessibility *)self safeValueForKey:@"style"];
  v4 = [v3 intValue];

  if (v4 != 3 || (v6.receiver = self, v6.super_class = SBUIPasscodeLockViewBaseAccessibility, ![(SBUIPasscodeLockViewBaseAccessibility *)&v6 _accessibilityActivateKeyboardReturnKey]))
  {
    [(SBUIPasscodeLockViewBaseAccessibility *)self _accessibilityInsertText:@"\n"];
  }

  return 1;
}

- (void)_accessibilityReplaceCharactersAtCursor:(unint64_t)a3 withString:(id)a4
{
  v5 = a4;
  v6 = [(SBUIPasscodeLockViewBaseAccessibility *)self safeValueForKey:@"_entryField"];
  v7 = v5;
  v8 = v6;
  AXPerformSafeBlock();
}

uint64_t __92__SBUIPasscodeLockViewBaseAccessibility__accessibilityReplaceCharactersAtCursor_withString___block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 56))
  {
    v2 = 0;
    do
    {
      result = [*(v1 + 32) deleteLastCharacter];
      ++v2;
    }

    while (v2 < *(v1 + 56));
  }

  if (*(v1 + 40))
  {
    v3 = *(v1 + 48);

    return [v3 _accessibilityInsertText:?];
  }

  return result;
}

- (BOOL)_accessibilityEntryFieldIsFirstResponder
{
  v2 = [(SBUIPasscodeLockViewBaseAccessibility *)self safeValueForKey:@"_entryField"];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 isFirstResponder];

  return v4;
}

- (BOOL)becomeFirstResponder
{
  v22.receiver = self;
  v22.super_class = SBUIPasscodeLockViewBaseAccessibility;
  v3 = [(SBUIPasscodeLockViewBaseAccessibility *)&v22 becomeFirstResponder];
  if ([(SBUIPasscodeLockViewBaseAccessibility *)self safeIntegerForKey:@"_statusState"]== 1 && v3)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy_;
    v20 = __Block_byref_object_dispose_;
    v21 = 0;
    v10 = MEMORY[0x29EDCA5F8];
    v11 = 3221225472;
    v12 = __61__SBUIPasscodeLockViewBaseAccessibility_becomeFirstResponder__block_invoke;
    v13 = &unk_29F3021F0;
    v14 = self;
    v15 = &v16;
    AXPerformSafeBlock();
    v5 = v17[5];
    _Block_object_dispose(&v16, 8);

    UIAccessibilitySpeakOrQueueIfNeeded();
  }

  v6 = [(SBUIPasscodeLockViewBaseAccessibility *)self window:v10];
  v7 = [v6 windowScene];
  v8 = [v7 focusSystem];

  [v8 requestFocusUpdateToEnvironment:v8];
  return v3;
}

void __61__SBUIPasscodeLockViewBaseAccessibility_becomeFirstResponder__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) safeValueForKey:@"_statusSubtitleText"];
  v2 = [v5 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_setPasscodeLockViewState:(int64_t)a3 animated:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = SBUIPasscodeLockViewBaseAccessibility;
  [(SBUIPasscodeLockViewBaseAccessibility *)&v4 _setPasscodeLockViewState:a3 animated:?];
  AXPerformBlockOnMainThreadAfterDelay();
}

@end