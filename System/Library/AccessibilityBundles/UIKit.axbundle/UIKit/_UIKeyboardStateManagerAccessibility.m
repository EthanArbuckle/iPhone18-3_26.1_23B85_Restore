@interface _UIKeyboardStateManagerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)acceptWord:(id)a3 firstDelete:(unint64_t)a4 forInput:(id)a5;
- (BOOL)autocorrectSpellingEnabled;
- (BOOL)autocorrectionPreference;
- (BOOL)callShouldDeleteWithWordCountForRapidDelete:(int)a3 characterCountForRapidDelete:(int)a4;
- (BOOL)callShouldInsertText:(id)a3;
- (BOOL)performKeyboardOutput:(id)a3 userInfo:(id)a4;
- (BOOL)presentTextCompletionAsMarkedText:(id)a3;
- (id)_accessibilityKeyboardInputDelegate;
- (uint64_t)_axIsObservingAppLifecycleNotifications;
- (uint64_t)_axSetIsObservingAppLifecycleNotifications:(uint64_t)result;
- (unsigned)_setAttributedMarkedText:(id)a3 selectedRange:(_NSRange)a4 inputString:(id)a5 lastInputString:(id)a6 searchString:(id)a7 compareAttributes:(BOOL)a8;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axHandleVoiceOverStatusChanged:(id)a3;
- (void)_axRegisterForVoiceOverNotifications:(id)a3;
- (void)_axResetFKAFocusToFirstResponderOnDelegate;
- (void)_axShowKeyboardIfHidden;
- (void)_axUnregisterForVoiceOverNotifications:(id)a3;
- (void)_axUpdateAutocorrectionSettings;
- (void)acceptAutocorrectionWithCompletionHandler:(id)a3 requestedByRemoteInputDestination:(BOOL)a4;
- (void)acceptCandidate:(id)a3;
- (void)completeDeleteFromInput;
- (void)completeHandleKeyEvent:(id)a3;
- (void)dealloc;
- (void)deleteBackwardAndNotify:(BOOL)a3;
- (void)handleKeyboardInput:(id)a3 executionContext:(id)a4;
- (void)setInHardwareKeyboardMode:(BOOL)a3 forceRebuild:(BOOL)a4 shouldMoveKeyboard:(BOOL)a5;
- (void)setInputMode:(id)a3 userInitiated:(BOOL)a4;
- (void)setInputModeToNextInPreferredListWithExecutionContext:(id)a3;
- (void)setShift:(BOOL)a3 autoshift:(BOOL)a4;
- (void)textDidChange:(id)a3;
- (void)touchUpdateLastUsedInputModeAction;
- (void)unmarkText:(id)a3;
@end

@implementation _UIKeyboardStateManagerAccessibility

- (uint64_t)_axIsObservingAppLifecycleNotifications
{
  if (a1)
  {
    v2 = __UIAccessibilityGetAssociatedBool() & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (uint64_t)_axSetIsObservingAppLifecycleNotifications:(uint64_t)result
{
  if (result)
  {
    return __UIAccessibilitySetAssociatedBool();
  }

  return result;
}

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v14 = location;
  v13 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = @"_UIKeyboardStateManager";
  v9 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  v12 = "B";
  [location[0] validateClass:v10 hasInstanceMethod:@"performKeyboardOutput:userInfo:" withFullSignature:{v9, v9, 0}];
  v8 = "v";
  [location[0] validateClass:v10 hasInstanceMethod:@"handleKeyboardInput: executionContext:" withFullSignature:{v9, v9, 0}];
  v5 = "@?";
  [location[0] validateClass:@"UIKeyboardTaskQueue" hasInstanceMethod:@"addDeferredTask:" withFullSignature:{v8, "@?", 0}];
  [location[0] validateClass:@"UIKeyboardTaskExecutionContext" hasInstanceMethod:@"returnExecutionToParent" withFullSignature:{v8, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"deleteBackwardAndNotify:" withFullSignature:{v8, v12, 0}];
  [location[0] validateClass:v10 hasInstanceVariable:@"m_keyboardState" withType:"TIKeyboardState"];
  [location[0] validateClass:v10 hasInstanceMethod:@"unmarkText:" withFullSignature:{v8, v9, 0}];
  v3 = "I";
  [location[0] validateClass:v10 hasInstanceMethod:@"_setAttributedMarkedText: selectedRange: inputString: lastInputString: searchString: compareAttributes:" withFullSignature:{v9, "{_NSRange=QQ}", v9, v9, v9, v12, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"textDidChange:" withFullSignature:{v8, v9, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"completeDeleteFromInput" withFullSignature:{v8, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"taskQueue" withFullSignature:{v9, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"completeHandleKeyEvent:" withFullSignature:{v8, v9, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"setInputModeToNextInPreferredListWithExecutionContext:" withFullSignature:{v8, v9, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"clearInputWithCandidatesCleared:" withFullSignature:{v8, v12, 0}];
  v4 = "Q";
  [location[0] validateClass:v10 hasInstanceMethod:@"acceptWord: firstDelete: forInput:" withFullSignature:{v12, v9, "Q", v9, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"setInputMode: userInitiated:" withFullSignature:{v8, v9, v12, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"acceptCandidate:" withFullSignature:{v8, v9, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"completeDeleteOnceFromInputWithCharacterBefore:" withFullSignature:{v8, v3, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"callShouldDeleteWithWordCountForRapidDelete:characterCountForRapidDelete:" withFullSignature:{v12, "i", "i", 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"touchUpdateLastUsedInputModeAction" withFullSignature:{v8, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"callShouldInsertText:" withFullSignature:{v12, v9, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"autocorrectSpellingEnabled" withFullSignature:{v12, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"setAutocorrectSpellingEnabled:" withFullSignature:{v8, v12, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"autocorrectionPreference" withFullSignature:{v12, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"autocorrectionPreferenceForTraits" withFullSignature:{v4, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"isShifted" withFullSignature:{v12, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"acceptAutocorrectionWithCompletionHandler:requestedByRemoteInputDestination:" withFullSignature:{v8, v5, v12, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"setInHardwareKeyboardMode:forceRebuild:shouldMoveKeyboard:" withFullSignature:{v8, v12, v12, v12, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"isMinimized" withFullSignature:{v12, 0}];
  v6 = @"UIPhysicalKeyboardEvent";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v6 hasInstanceMethod:@"_unmodifiedInput" withFullSignature:{v9, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"_modifierFlags" withFullSignature:{"q", 0}];
  v7 = @"TIKeyboardState";
  [location[0] validateClass:?];
  [location[0] validateClass:v7 hasInstanceMethod:@"setAutocorrectionEnabled:" withFullSignature:{v8, v12, 0}];
  [location[0] validateClass:@"UIKeyboard" hasClassMethod:@"presentsInlineTextCompletionAsMarkedText" withFullSignature:{v12, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"presentTextCompletionAsMarkedText:" withFullSignature:{v12, v9, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"inlineCompletionAsMarkedText" withFullSignature:{v9, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"inputDelegateManager" withFullSignature:{v9, 0}];
  [location[0] validateClass:@"UIKBInputDelegateManager" hasInstanceMethod:@"keyInputDelegate" withFullSignature:{v9, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"usesCandidateSelection" withFullSignature:{v12, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"_hasMarkedText" withFullSignature:{v12, 0}];
  v11 = @"UIDictationController";
  [location[0] validateClass:?];
  [location[0] validateClass:v11 hasClassMethod:@"isRunning" withFullSignature:{v12, 0}];
  objc_storeStrong(v14, v13);
}

- (void)acceptAutocorrectionWithCompletionHandler:(id)a3 requestedByRemoteInputDestination:(BOOL)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = a4;
  if (AXSelectionModeVoiceOverSelectionMovement())
  {
    v11 = VOTLogCommon();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      log = v11;
      type = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_impl(&dword_29C4D6000, log, type, "Not accepting autocorrection because VoiceOver is moving the cursor.", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
    v8 = 1;
  }

  else
  {
    v7.receiver = v14;
    v7.super_class = _UIKeyboardStateManagerAccessibility;
    [(_UIKeyboardStateManagerAccessibility *)&v7 acceptAutocorrectionWithCompletionHandler:location[0] requestedByRemoteInputDestination:v12];
    v8 = 0;
  }

  objc_storeStrong(location, 0);
}

- (BOOL)performKeyboardOutput:(id)a3 userInfo:(id)a4
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = 0;
  objc_storeStrong(&v27, a4);
  v25.receiver = v29;
  v25.super_class = _UIKeyboardStateManagerAccessibility;
  v26 = [(_UIKeyboardStateManagerAccessibility *)&v25 performKeyboardOutput:location[0] userInfo:v27];
  LOBYTE(v19) = 0;
  if (_AXSAutomationEnabled())
  {
    v19 = !UIAccessibilityIsVoiceOverRunning();
  }

  v24 = v19;
  v16 = [v27 objectForKeyedSubscript:@"shouldForwardToRemoteInputSource"];
  v17 = [v16 BOOLValue];
  *&v4 = MEMORY[0x29EDC9740](v16).n128_u64[0];
  v23 = v17;
  if (v17 & 1) != 0 && !v24 && ([MEMORY[0x29EDC7AF8] isKeyboardProcess])
  {
    v30 = v26 & 1;
    v22 = 1;
  }

  else
  {
    v15 = [location[0] insertionText];
    if ([v15 length] || (v14 = 1, !objc_msgSend(location[0], "deletionCount")) && (v14 = 1, !objc_msgSend(location[0], "forwardDeletionCount")))
    {
      v14 = [(_UIKeyboardStateManagerAccessibility *)v29 _axIsLastKeyBackspace];
    }

    *&v5 = MEMORY[0x29EDC9740](v15).n128_u64[0];
    if (v14)
    {
      [(_UIKeyboardStateManagerAccessibility *)v29 _accessibilityPostValueChangedNotificationWithChangeType:*MEMORY[0x29EDBDCC8], v5];
    }

    else
    {
      v12 = [location[0] insertionText];
      v13 = 1;
      if (!v12)
      {
        v11 = 0;
        if (_AXSHoverTextTypingEnabled())
        {
          v10 = 1;
          if (([(_UIKeyboardStateManagerAccessibility *)v29 safeBoolForKey:@"usesCandidateSelection"]& 1) == 0)
          {
            v10 = [(_UIKeyboardStateManagerAccessibility *)v29 safeBoolForKey:@"_hasMarkedText"];
          }

          v11 = v10;
        }

        v13 = v11;
      }

      *&v6 = MEMORY[0x29EDC9740](v12).n128_u64[0];
      if (v13)
      {
        v21 = [(_UIKeyboardStateManagerAccessibility *)v29 safeValueForKeyPath:@"inputDelegateManager.keyInputDelegate", v6];
        v8 = v29;
        v9 = [location[0] insertionText];
        [_UIKeyboardStateManagerAccessibility _accessibilityPostValueChangedNotificationWithInsertedText:v8 keyInputDelegate:"_accessibilityPostValueChangedNotificationWithInsertedText:keyInputDelegate:"];
        MEMORY[0x29EDC9740](v9);
        objc_storeStrong(&v21, 0);
      }
    }

    v20 = MEMORY[0x29EDC9748](v29);
    AXPerformBlockAsynchronouslyOnMainThread();
    v30 = v26 & 1;
    v22 = 1;
    objc_storeStrong(&v20, 0);
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  return v30 & 1;
}

- (void)handleKeyboardInput:(id)a3 executionContext:(id)a4
{
  v14 = *MEMORY[0x29EDCA608];
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = AXLogUIA();
  v8 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_3_2_8_69_8_64(v13, location[0], v10);
    _os_log_impl(&dword_29C4D6000, v9, v8, "Starting keyboard task, blocking notifications: %{sensitive}@ - %@", v13, 0x16u);
  }

  objc_storeStrong(&v9, 0);
  _UIAccessibilityBlockPostingOfAllNotifications();
  -[_UIKeyboardStateManagerAccessibility _axSetIsLastKeyBackspace:](v12, "_axSetIsLastKeyBackspace:", [location[0] isBackspace]);
  v7.receiver = v12;
  v7.super_class = _UIKeyboardStateManagerAccessibility;
  [(_UIKeyboardStateManagerAccessibility *)&v7 handleKeyboardInput:location[0] executionContext:v10];
  v6 = MEMORY[0x29EDC9748](v12);
  AXPerformSafeBlock();
  v4 = AXUIKeyboardEntryNotificationBlockTimer();
  [v4 afterDelay:&__block_literal_global_4 processBlock:1.0];
  MEMORY[0x29EDC9740](v4);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)deleteBackwardAndNotify:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = _UIKeyboardStateManagerAccessibility;
  [(_UIKeyboardStateManagerAccessibility *)&v3 deleteBackwardAndNotify:a3];
  if (v4)
  {
    [(_UIKeyboardStateManagerAccessibility *)v6 _accessibilityPostValueChangedNotificationWithChangeType:*MEMORY[0x29EDBDCC8]];
  }
}

- (void)unmarkText:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = _UIKeyboardStateManagerAccessibility;
  [(_UIKeyboardStateManagerAccessibility *)&v3 unmarkText:location[0]];
  objc_storeStrong(location, 0);
}

- (unsigned)_setAttributedMarkedText:(id)a3 selectedRange:(_NSRange)a4 inputString:(id)a5 lastInputString:(id)a6 searchString:(id)a7 compareAttributes:(BOOL)a8
{
  v21 = a4;
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a5);
  v17 = 0;
  objc_storeStrong(&v17, a6);
  v16 = 0;
  objc_storeStrong(&v16, a7);
  v15 = a8;
  v14 = 0;
  [(_UIKeyboardStateManagerAccessibility *)v20 _accessibilityPostValueChangedNotificationWithChangeType:0];
  v13.receiver = v20;
  v13.super_class = _UIKeyboardStateManagerAccessibility;
  v12 = [(_UIKeyboardStateManagerAccessibility *)&v13 _setAttributedMarkedText:location[0] selectedRange:v21.location inputString:v21.length lastInputString:v18 searchString:v17 compareAttributes:v16, a8];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  return v12;
}

- (void)textDidChange:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [NSClassFromString(&cfstr_Uidictationcon.isa) safeBoolForKey:@"isRunning"];
  v4 = 0;
  if (v5)
  {
    v4 = *MEMORY[0x29EDBDCD0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([location[0] accessibilityValueChangesAreReplacements])
    {
      v4 = *MEMORY[0x29EDBDCE0];
    }
  }

  [(_UIKeyboardStateManagerAccessibility *)v7 _accessibilityPostValueChangedNotificationWithChangeType:v4];
  v3.receiver = v7;
  v3.super_class = _UIKeyboardStateManagerAccessibility;
  [(_UIKeyboardStateManagerAccessibility *)&v3 textDidChange:location[0]];
  objc_storeStrong(location, 0);
}

- (void)completeDeleteFromInput
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UIKeyboardStateManagerAccessibility;
  [(_UIKeyboardStateManagerAccessibility *)&v2 completeDeleteFromInput];
  [(_UIKeyboardStateManagerAccessibility *)v4 _accessibilityPostValueChangedNotificationWithChangeType:0];
}

- (void)completeHandleKeyEvent:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14.receiver = v16;
  v14.super_class = _UIKeyboardStateManagerAccessibility;
  [(_UIKeyboardStateManagerAccessibility *)&v14 completeHandleKeyEvent:location[0]];
  if (_AXSAutomationEnabled())
  {
    v10 = [location[0] safeValueForKey:@"_modifiedInput"];
    if (v10)
    {
      v3 = MEMORY[0x29EDC9748](v10);
    }

    else
    {
      v3 = MEMORY[0x29EDC9748](&stru_2A2358AA8);
    }

    v13 = v3;
    *&v4 = MEMORY[0x29EDC9740](v10).n128_u64[0];
    v9 = [location[0] safeValueForKey:{@"_unmodifiedInput", v4}];
    if (v9)
    {
      v5 = MEMORY[0x29EDC9748](v9);
    }

    else
    {
      v5 = MEMORY[0x29EDC9748](&stru_2A2358AA8);
    }

    v12 = v5;
    *&v6 = MEMORY[0x29EDC9740](v9).n128_u64[0];
    v8 = [location[0] safeValueForKey:{@"_modifierFlags", v6}];
    if (v8)
    {
      v7 = MEMORY[0x29EDC9748](v8);
    }

    else
    {
      v7 = MEMORY[0x29EDC9748](&unk_2A238E750);
    }

    v11 = v7;
    MEMORY[0x29EDC9740](v8);
    AXUIAutomationHandleKeyComplete();
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)setInputModeToNextInPreferredListWithExecutionContext:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = _UIKeyboardStateManagerAccessibility;
  [(_UIKeyboardStateManagerAccessibility *)&v3 setInputModeToNextInPreferredListWithExecutionContext:location[0]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  objc_storeStrong(location, 0);
}

- (BOOL)acceptWord:(id)a3 firstDelete:(unint64_t)a4 forInput:(id)a5
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = a4;
  v13 = 0;
  objc_storeStrong(&v13, a5);
  v11.receiver = v16;
  v11.super_class = _UIKeyboardStateManagerAccessibility;
  v12 = [(_UIKeyboardStateManagerAccessibility *)&v11 acceptWord:location[0] firstDelete:v14 forInput:v13];
  if (v12)
  {
    v10 = *MEMORY[0x29EDC7EA8];
    if ([location[0] isAutocorrection])
    {
      v10 = *MEMORY[0x29EDC73A0];
    }

    v7 = [location[0] candidate];
    UIAccessibilityPostNotification(v10, v7);
    MEMORY[0x29EDC9740](v7);
  }

  v6 = v12;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (void)setInputMode:(id)a3 userInitiated:(BOOL)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = a4;
  MEMORY[0x29ED3DFA0](*MEMORY[0x29EDC74D0]);
  v5.receiver = v8;
  v5.super_class = _UIKeyboardStateManagerAccessibility;
  [(_UIKeyboardStateManagerAccessibility *)&v5 setInputMode:location[0] userInitiated:a4];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7468], 0);
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  objc_storeStrong(location, 0);
}

- (void)setShift:(BOOL)a3 autoshift:(BOOL)a4
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  v6 = [(_UIKeyboardStateManagerAccessibility *)self safeBoolForKey:?];
  v5.receiver = v10;
  v5.super_class = _UIKeyboardStateManagerAccessibility;
  [(_UIKeyboardStateManagerAccessibility *)&v5 setShift:v8 autoshift:v7];
  v4 = v6 & 1;
  if (v4 != [(_UIKeyboardStateManagerAccessibility *)v10 safeBoolForKey:@"isShifted"])
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

- (void)acceptCandidate:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5.receiver = v7;
  v5.super_class = _UIKeyboardStateManagerAccessibility;
  [(_UIKeyboardStateManagerAccessibility *)&v5 acceptCandidate:location[0]];
  notification = *MEMORY[0x29EDC7EA8];
  v4 = [location[0] candidate];
  UIAccessibilityPostNotification(notification, v4);
  MEMORY[0x29EDC9740](v4);
  objc_storeStrong(location, 0);
}

- (BOOL)presentTextCompletionAsMarkedText:(id)a3
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18.receiver = v21;
  v18.super_class = _UIKeyboardStateManagerAccessibility;
  v19 = [(_UIKeyboardStateManagerAccessibility *)&v18 presentTextCompletionAsMarkedText:location[0]];
  v7 = [MEMORY[0x29EDBDFA0] sharedInstance];
  v8 = [v7 voiceOverInlineTextCompletionAppearanceFeedback];
  *&v3 = MEMORY[0x29EDC9740](v7).n128_u64[0];
  v17 = v8;
  v15 = 0;
  v10 = 0;
  v9 = 0;
  if (v8 != 1)
  {
    v9 = 0;
    if (v19)
    {
      v16 = [location[0] displayString];
      v15 = 1;
      v9 = 0;
      if ([v16 length])
      {
        v9 = 0;
        if ([MEMORY[0x29EDC7AF8] safeBoolForKey:@"presentsInlineTextCompletionAsMarkedText"])
        {
          v14 = 0;
          objc_opt_class();
          v6 = [(_UIKeyboardStateManagerAccessibility *)v21 safeValueForKey:@"inlineCompletionAsMarkedText"];
          v13 = __UIAccessibilityCastAsClass();
          MEMORY[0x29EDC9740](v6);
          v12 = MEMORY[0x29EDC9748](v13);
          objc_storeStrong(&v13, 0);
          v11 = v12;
          v10 = 1;
          v9 = [v12 length] != 0;
        }
      }
    }
  }

  if (v10)
  {
    MEMORY[0x29EDC9740](v11);
  }

  if (v15)
  {
    MEMORY[0x29EDC9740](v16);
  }

  if (v9 && (v17 & 4) != 0)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7390], 0);
  }

  v5 = v19;
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (void)setInHardwareKeyboardMode:(BOOL)a3 forceRebuild:(BOOL)a4 shouldMoveKeyboard:(BOOL)a5
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  v6 = a5;
  v5.receiver = self;
  v5.super_class = _UIKeyboardStateManagerAccessibility;
  [(_UIKeyboardStateManagerAccessibility *)&v5 setInHardwareKeyboardMode:a3 forceRebuild:a4 shouldMoveKeyboard:a5];
  if ([(_UIKeyboardStateManagerAccessibility *)v10 _axShouldShowKeyboard])
  {
    [(_UIKeyboardStateManagerAccessibility *)v10 _axShowKeyboardIfHidden];
  }
}

- (void)_axShowKeyboardIfHidden
{
  v2 = a1;
  if (a1)
  {
    if ([v2 safeBoolForKey:@"isMinimized"])
    {
      v1 = MEMORY[0x29EDC9748](v2);
      AXPerformSafeBlock();
      objc_storeStrong(&v1, 0);
    }
  }
}

- (BOOL)callShouldDeleteWithWordCountForRapidDelete:(int)a3 characterCountForRapidDelete:(int)a4
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  v5.receiver = self;
  v5.super_class = _UIKeyboardStateManagerAccessibility;
  v6 = [(_UIKeyboardStateManagerAccessibility *)&v5 callShouldDeleteWithWordCountForRapidDelete:a3 characterCountForRapidDelete:a4];
  if (v6)
  {
    [(_UIKeyboardStateManagerAccessibility *)v10 _axResetFKAFocusToFirstResponderOnDelegate];
  }

  return v6 & 1;
}

- (void)_axResetFKAFocusToFirstResponderOnDelegate
{
  v2 = a1;
  if (a1)
  {
    v1 = MEMORY[0x29EDC9748](v2);
    AXPerformSafeBlock();
    objc_storeStrong(&v1, 0);
  }
}

- (id)_accessibilityKeyboardInputDelegate
{
  if (a1)
  {
    v2 = [a1 safeValueForKey:@"inputDelegate"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)touchUpdateLastUsedInputModeAction
{
  v4 = self;
  v3 = a2;
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    v2.receiver = v4;
    v2.super_class = _UIKeyboardStateManagerAccessibility;
    [(_UIKeyboardStateManagerAccessibility *)&v2 touchUpdateLastUsedInputModeAction];
  }
}

- (BOOL)callShouldInsertText:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5.receiver = v8;
  v5.super_class = _UIKeyboardStateManagerAccessibility;
  v6 = [(_UIKeyboardStateManagerAccessibility *)&v5 callShouldInsertText:location[0]];
  if (v6)
  {
    [(_UIKeyboardStateManagerAccessibility *)v8 _axResetFKAFocusToFirstResponderOnDelegate];
  }

  v4 = v6;
  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (BOOL)autocorrectSpellingEnabled
{
  v6 = self;
  v5 = a2;
  if (UIAccessibilityIsVoiceOverRunning() && [(_UIKeyboardStateManagerAccessibility *)v6 _axIsHandwritingEnabled])
  {
    return 0;
  }

  v3.receiver = v6;
  v3.super_class = _UIKeyboardStateManagerAccessibility;
  return [(_UIKeyboardStateManagerAccessibility *)&v3 autocorrectSpellingEnabled];
}

- (BOOL)autocorrectionPreference
{
  v6 = self;
  v5 = a2;
  if (UIAccessibilityIsVoiceOverRunning() && [(_UIKeyboardStateManagerAccessibility *)v6 _axIsHandwritingEnabled])
  {
    return 0;
  }

  v3.receiver = v6;
  v3.super_class = _UIKeyboardStateManagerAccessibility;
  return [(_UIKeyboardStateManagerAccessibility *)&v3 autocorrectionPreference];
}

- (void)_axUpdateAutocorrectionSettings
{
  v14 = *MEMORY[0x29EDCA608];
  v12 = a1;
  if (a1)
  {
    v11 = [v12 safeUnsignedIntegerForKey:@"autocorrectionPreferenceForTraits"] != 0;
    v9 = 0;
    objc_opt_class();
    v1 = [v12 safeValueForKey:@"m_keyboardState"];
    v8 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v1);
    v7 = MEMORY[0x29EDC9748](v8);
    objc_storeStrong(&v8, 0);
    v10 = v7;
    v6 = VOTLogHandwriting();
    v5 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_0(v13, v11);
      _os_log_impl(&dword_29C4D6000, v6, v5, "Handwriting status changed, updating settings. autocorrect: %d", v13, 8u);
    }

    objc_storeStrong(&v6, 0);
    v2 = MEMORY[0x29EDC9748](v10);
    v4 = v11;
    v3 = MEMORY[0x29EDC9748](v12);
    AXPerformSafeBlock();
    objc_storeStrong(&v3, 0);
    objc_storeStrong(&v2, 0);
    objc_storeStrong(&v10, 0);
  }
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8 = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = _UIKeyboardStateManagerAccessibility;
  [(_UIKeyboardStateManagerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  location = [MEMORY[0x29EDBA068] defaultCenter];
  if (([(_UIKeyboardStateManagerAccessibility *)v8 _axIsObservingAppLifecycleNotifications]& 1) == 0)
  {
    [location addObserver:v8 selector:sel__axUnregisterForVoiceOverNotifications_ name:*MEMORY[0x29EDC8038] object:?];
    [location addObserver:v8 selector:sel__axRegisterForVoiceOverNotifications_ name:*MEMORY[0x29EDC8010] object:0];
    [location addObserver:v8 selector:sel__axHandleVoiceOverStatusChanged_ name:*MEMORY[0x29EDC8000] object:0];
    [_UIKeyboardStateManagerAccessibility _axSetIsObservingAppLifecycleNotifications:v8];
  }

  v3 = [MEMORY[0x29EDC7938] sharedApplication];
  v4 = [v3 applicationState];
  *&v2 = MEMORY[0x29EDC9740](v3).n128_u64[0];
  if (!v4)
  {
    [(_UIKeyboardStateManagerAccessibility *)v8 _axRegisterForVoiceOverNotifications:0, v2];
  }

  objc_storeStrong(&location, 0);
}

- (void)_axRegisterForVoiceOverNotifications:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = MEMORY[0x29EDCA5F8];
  v4 = -1073741824;
  v5 = 0;
  v6 = __77___UIKeyboardStateManagerAccessibility__axRegisterForVoiceOverNotifications___block_invoke;
  v7 = &unk_29F30C7C8;
  v8 = MEMORY[0x29EDC9748](v10);
  AXPerformBlockOnMainThreadAfterDelay();
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_axUnregisterForVoiceOverNotifications:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(_UIKeyboardStateManagerAccessibility *)v12 _axIsObservingVoiceOverNotifications])
  {
    v9 = VOTLogHandwriting();
    v8 = 2;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      log = v9;
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_debug_impl(&dword_29C4D6000, log, type, "Unregistering UIKeyboard from handwriting notifications", v7, 2u);
    }

    objc_storeStrong(&v9, 0);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, v12, *MEMORY[0x29EDBDF20], 0);
    v4 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v4, v12, *MEMORY[0x29EDBDF18], 0);
    [(_UIKeyboardStateManagerAccessibility *)v12 _axSetIsObservingVoiceOverNotifications:0];
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)_axHandleVoiceOverStatusChanged:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(_UIKeyboardStateManagerAccessibility *)v4 _axUpdateAutocorrectionSettings];
  objc_storeStrong(location, 0);
}

- (void)dealloc
{
  v7 = self;
  v6 = a2;
  [(_UIKeyboardStateManagerAccessibility *)self _axUnregisterForVoiceOverNotifications:?];
  v2 = [MEMORY[0x29EDBA068] defaultCenter];
  [v2 removeObserver:v7 name:*MEMORY[0x29EDC8038] object:0];
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 removeObserver:v7 name:*MEMORY[0x29EDC8010] object:0];
  v4 = [MEMORY[0x29EDBA068] defaultCenter];
  [v4 removeObserver:v7 name:*MEMORY[0x29EDC8000] object:0];
  MEMORY[0x29EDC9740](v4);
  [_UIKeyboardStateManagerAccessibility _axSetIsObservingAppLifecycleNotifications:v7];
  v5.receiver = v7;
  v5.super_class = _UIKeyboardStateManagerAccessibility;
  [(_UIKeyboardStateManagerAccessibility *)&v5 dealloc];
}

@end