@interface _UIKeyboardStateManagerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)acceptWord:(id)word firstDelete:(unint64_t)delete forInput:(id)input;
- (BOOL)autocorrectSpellingEnabled;
- (BOOL)autocorrectionPreference;
- (BOOL)callShouldDeleteWithWordCountForRapidDelete:(int)delete characterCountForRapidDelete:(int)rapidDelete;
- (BOOL)callShouldInsertText:(id)text;
- (BOOL)performKeyboardOutput:(id)output userInfo:(id)info;
- (BOOL)presentTextCompletionAsMarkedText:(id)text;
- (id)_accessibilityKeyboardInputDelegate;
- (uint64_t)_axIsObservingAppLifecycleNotifications;
- (uint64_t)_axSetIsObservingAppLifecycleNotifications:(uint64_t)result;
- (unsigned)_setAttributedMarkedText:(id)text selectedRange:(_NSRange)range inputString:(id)string lastInputString:(id)inputString searchString:(id)searchString compareAttributes:(BOOL)attributes;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axHandleVoiceOverStatusChanged:(id)changed;
- (void)_axRegisterForVoiceOverNotifications:(id)notifications;
- (void)_axResetFKAFocusToFirstResponderOnDelegate;
- (void)_axShowKeyboardIfHidden;
- (void)_axUnregisterForVoiceOverNotifications:(id)notifications;
- (void)_axUpdateAutocorrectionSettings;
- (void)acceptAutocorrectionWithCompletionHandler:(id)handler requestedByRemoteInputDestination:(BOOL)destination;
- (void)acceptCandidate:(id)candidate;
- (void)completeDeleteFromInput;
- (void)completeHandleKeyEvent:(id)event;
- (void)dealloc;
- (void)deleteBackwardAndNotify:(BOOL)notify;
- (void)handleKeyboardInput:(id)input executionContext:(id)context;
- (void)setInHardwareKeyboardMode:(BOOL)mode forceRebuild:(BOOL)rebuild shouldMoveKeyboard:(BOOL)keyboard;
- (void)setInputMode:(id)mode userInitiated:(BOOL)initiated;
- (void)setInputModeToNextInPreferredListWithExecutionContext:(id)context;
- (void)setShift:(BOOL)shift autoshift:(BOOL)autoshift;
- (void)textDidChange:(id)change;
- (void)touchUpdateLastUsedInputModeAction;
- (void)unmarkText:(id)text;
@end

@implementation _UIKeyboardStateManagerAccessibility

- (uint64_t)_axIsObservingAppLifecycleNotifications
{
  if (self)
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

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v14 = location;
  v13 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
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

- (void)acceptAutocorrectionWithCompletionHandler:(id)handler requestedByRemoteInputDestination:(BOOL)destination
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  destinationCopy = destination;
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
    v7.receiver = selfCopy;
    v7.super_class = _UIKeyboardStateManagerAccessibility;
    [(_UIKeyboardStateManagerAccessibility *)&v7 acceptAutocorrectionWithCompletionHandler:location[0] requestedByRemoteInputDestination:destinationCopy];
    v8 = 0;
  }

  objc_storeStrong(location, 0);
}

- (BOOL)performKeyboardOutput:(id)output userInfo:(id)info
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, output);
  v27 = 0;
  objc_storeStrong(&v27, info);
  v25.receiver = selfCopy;
  v25.super_class = _UIKeyboardStateManagerAccessibility;
  v26 = [(_UIKeyboardStateManagerAccessibility *)&v25 performKeyboardOutput:location[0] userInfo:v27];
  LOBYTE(v19) = 0;
  if (_AXSAutomationEnabled())
  {
    v19 = !UIAccessibilityIsVoiceOverRunning();
  }

  v24 = v19;
  v16 = [v27 objectForKeyedSubscript:@"shouldForwardToRemoteInputSource"];
  bOOLValue = [v16 BOOLValue];
  *&v4 = MEMORY[0x29EDC9740](v16).n128_u64[0];
  v23 = bOOLValue;
  if (bOOLValue & 1) != 0 && !v24 && ([MEMORY[0x29EDC7AF8] isKeyboardProcess])
  {
    v30 = v26 & 1;
    v22 = 1;
  }

  else
  {
    insertionText = [location[0] insertionText];
    if ([insertionText length] || (_axIsLastKeyBackspace = 1, !objc_msgSend(location[0], "deletionCount")) && (_axIsLastKeyBackspace = 1, !objc_msgSend(location[0], "forwardDeletionCount")))
    {
      _axIsLastKeyBackspace = [(_UIKeyboardStateManagerAccessibility *)selfCopy _axIsLastKeyBackspace];
    }

    *&v5 = MEMORY[0x29EDC9740](insertionText).n128_u64[0];
    if (_axIsLastKeyBackspace)
    {
      [(_UIKeyboardStateManagerAccessibility *)selfCopy _accessibilityPostValueChangedNotificationWithChangeType:*MEMORY[0x29EDBDCC8], v5];
    }

    else
    {
      insertionText2 = [location[0] insertionText];
      v13 = 1;
      if (!insertionText2)
      {
        v11 = 0;
        if (_AXSHoverTextTypingEnabled())
        {
          v10 = 1;
          if (([(_UIKeyboardStateManagerAccessibility *)selfCopy safeBoolForKey:@"usesCandidateSelection"]& 1) == 0)
          {
            v10 = [(_UIKeyboardStateManagerAccessibility *)selfCopy safeBoolForKey:@"_hasMarkedText"];
          }

          v11 = v10;
        }

        v13 = v11;
      }

      *&v6 = MEMORY[0x29EDC9740](insertionText2).n128_u64[0];
      if (v13)
      {
        v21 = [(_UIKeyboardStateManagerAccessibility *)selfCopy safeValueForKeyPath:@"inputDelegateManager.keyInputDelegate", v6];
        v8 = selfCopy;
        insertionText3 = [location[0] insertionText];
        [_UIKeyboardStateManagerAccessibility _accessibilityPostValueChangedNotificationWithInsertedText:v8 keyInputDelegate:"_accessibilityPostValueChangedNotificationWithInsertedText:keyInputDelegate:"];
        MEMORY[0x29EDC9740](insertionText3);
        objc_storeStrong(&v21, 0);
      }
    }

    v20 = MEMORY[0x29EDC9748](selfCopy);
    AXPerformBlockAsynchronouslyOnMainThread();
    v30 = v26 & 1;
    v22 = 1;
    objc_storeStrong(&v20, 0);
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  return v30 & 1;
}

- (void)handleKeyboardInput:(id)input executionContext:(id)context
{
  v14 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, input);
  v10 = 0;
  objc_storeStrong(&v10, context);
  v9 = AXLogUIA();
  v8 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_3_2_8_69_8_64(v13, location[0], v10);
    _os_log_impl(&dword_29C4D6000, v9, v8, "Starting keyboard task, blocking notifications: %{sensitive}@ - %@", v13, 0x16u);
  }

  objc_storeStrong(&v9, 0);
  _UIAccessibilityBlockPostingOfAllNotifications();
  -[_UIKeyboardStateManagerAccessibility _axSetIsLastKeyBackspace:](selfCopy, "_axSetIsLastKeyBackspace:", [location[0] isBackspace]);
  v7.receiver = selfCopy;
  v7.super_class = _UIKeyboardStateManagerAccessibility;
  [(_UIKeyboardStateManagerAccessibility *)&v7 handleKeyboardInput:location[0] executionContext:v10];
  v6 = MEMORY[0x29EDC9748](selfCopy);
  AXPerformSafeBlock();
  v4 = AXUIKeyboardEntryNotificationBlockTimer();
  [v4 afterDelay:&__block_literal_global_4 processBlock:1.0];
  MEMORY[0x29EDC9740](v4);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)deleteBackwardAndNotify:(BOOL)notify
{
  selfCopy = self;
  v5 = a2;
  notifyCopy = notify;
  v3.receiver = self;
  v3.super_class = _UIKeyboardStateManagerAccessibility;
  [(_UIKeyboardStateManagerAccessibility *)&v3 deleteBackwardAndNotify:notify];
  if (notifyCopy)
  {
    [(_UIKeyboardStateManagerAccessibility *)selfCopy _accessibilityPostValueChangedNotificationWithChangeType:*MEMORY[0x29EDBDCC8]];
  }
}

- (void)unmarkText:(id)text
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  v3.receiver = selfCopy;
  v3.super_class = _UIKeyboardStateManagerAccessibility;
  [(_UIKeyboardStateManagerAccessibility *)&v3 unmarkText:location[0]];
  objc_storeStrong(location, 0);
}

- (unsigned)_setAttributedMarkedText:(id)text selectedRange:(_NSRange)range inputString:(id)string lastInputString:(id)inputString searchString:(id)searchString compareAttributes:(BOOL)attributes
{
  rangeCopy = range;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  v18 = 0;
  objc_storeStrong(&v18, string);
  v17 = 0;
  objc_storeStrong(&v17, inputString);
  v16 = 0;
  objc_storeStrong(&v16, searchString);
  attributesCopy = attributes;
  v14 = 0;
  [(_UIKeyboardStateManagerAccessibility *)selfCopy _accessibilityPostValueChangedNotificationWithChangeType:0];
  v13.receiver = selfCopy;
  v13.super_class = _UIKeyboardStateManagerAccessibility;
  attributes = [(_UIKeyboardStateManagerAccessibility *)&v13 _setAttributedMarkedText:location[0] selectedRange:rangeCopy.location inputString:rangeCopy.length lastInputString:v18 searchString:v17 compareAttributes:v16, attributes];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  return attributes;
}

- (void)textDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
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

  [(_UIKeyboardStateManagerAccessibility *)selfCopy _accessibilityPostValueChangedNotificationWithChangeType:v4];
  v3.receiver = selfCopy;
  v3.super_class = _UIKeyboardStateManagerAccessibility;
  [(_UIKeyboardStateManagerAccessibility *)&v3 textDidChange:location[0]];
  objc_storeStrong(location, 0);
}

- (void)completeDeleteFromInput
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UIKeyboardStateManagerAccessibility;
  [(_UIKeyboardStateManagerAccessibility *)&v2 completeDeleteFromInput];
  [(_UIKeyboardStateManagerAccessibility *)selfCopy _accessibilityPostValueChangedNotificationWithChangeType:0];
}

- (void)completeHandleKeyEvent:(id)event
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  v14.receiver = selfCopy;
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

- (void)setInputModeToNextInPreferredListWithExecutionContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3.receiver = selfCopy;
  v3.super_class = _UIKeyboardStateManagerAccessibility;
  [(_UIKeyboardStateManagerAccessibility *)&v3 setInputModeToNextInPreferredListWithExecutionContext:location[0]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  objc_storeStrong(location, 0);
}

- (BOOL)acceptWord:(id)word firstDelete:(unint64_t)delete forInput:(id)input
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, word);
  deleteCopy = delete;
  v13 = 0;
  objc_storeStrong(&v13, input);
  v11.receiver = selfCopy;
  v11.super_class = _UIKeyboardStateManagerAccessibility;
  v12 = [(_UIKeyboardStateManagerAccessibility *)&v11 acceptWord:location[0] firstDelete:deleteCopy forInput:v13];
  if (v12)
  {
    v10 = *MEMORY[0x29EDC7EA8];
    if ([location[0] isAutocorrection])
    {
      v10 = *MEMORY[0x29EDC73A0];
    }

    candidate = [location[0] candidate];
    UIAccessibilityPostNotification(v10, candidate);
    MEMORY[0x29EDC9740](candidate);
  }

  v6 = v12;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (void)setInputMode:(id)mode userInitiated:(BOOL)initiated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, mode);
  initiatedCopy = initiated;
  MEMORY[0x29ED3DFA0](*MEMORY[0x29EDC74D0]);
  v5.receiver = selfCopy;
  v5.super_class = _UIKeyboardStateManagerAccessibility;
  [(_UIKeyboardStateManagerAccessibility *)&v5 setInputMode:location[0] userInitiated:initiated];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7468], 0);
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  objc_storeStrong(location, 0);
}

- (void)setShift:(BOOL)shift autoshift:(BOOL)autoshift
{
  selfCopy = self;
  v9 = a2;
  shiftCopy = shift;
  autoshiftCopy = autoshift;
  v6 = [(_UIKeyboardStateManagerAccessibility *)self safeBoolForKey:?];
  v5.receiver = selfCopy;
  v5.super_class = _UIKeyboardStateManagerAccessibility;
  [(_UIKeyboardStateManagerAccessibility *)&v5 setShift:shiftCopy autoshift:autoshiftCopy];
  v4 = v6 & 1;
  if (v4 != [(_UIKeyboardStateManagerAccessibility *)selfCopy safeBoolForKey:@"isShifted"])
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

- (void)acceptCandidate:(id)candidate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, candidate);
  v5.receiver = selfCopy;
  v5.super_class = _UIKeyboardStateManagerAccessibility;
  [(_UIKeyboardStateManagerAccessibility *)&v5 acceptCandidate:location[0]];
  notification = *MEMORY[0x29EDC7EA8];
  candidate = [location[0] candidate];
  UIAccessibilityPostNotification(notification, candidate);
  MEMORY[0x29EDC9740](candidate);
  objc_storeStrong(location, 0);
}

- (BOOL)presentTextCompletionAsMarkedText:(id)text
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  v18.receiver = selfCopy;
  v18.super_class = _UIKeyboardStateManagerAccessibility;
  v19 = [(_UIKeyboardStateManagerAccessibility *)&v18 presentTextCompletionAsMarkedText:location[0]];
  mEMORY[0x29EDBDFA0] = [MEMORY[0x29EDBDFA0] sharedInstance];
  voiceOverInlineTextCompletionAppearanceFeedback = [mEMORY[0x29EDBDFA0] voiceOverInlineTextCompletionAppearanceFeedback];
  *&v3 = MEMORY[0x29EDC9740](mEMORY[0x29EDBDFA0]).n128_u64[0];
  v17 = voiceOverInlineTextCompletionAppearanceFeedback;
  v15 = 0;
  v10 = 0;
  v9 = 0;
  if (voiceOverInlineTextCompletionAppearanceFeedback != 1)
  {
    v9 = 0;
    if (v19)
    {
      displayString = [location[0] displayString];
      v15 = 1;
      v9 = 0;
      if ([displayString length])
      {
        v9 = 0;
        if ([MEMORY[0x29EDC7AF8] safeBoolForKey:@"presentsInlineTextCompletionAsMarkedText"])
        {
          v14 = 0;
          objc_opt_class();
          v6 = [(_UIKeyboardStateManagerAccessibility *)selfCopy safeValueForKey:@"inlineCompletionAsMarkedText"];
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
    MEMORY[0x29EDC9740](displayString);
  }

  if (v9 && (v17 & 4) != 0)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7390], 0);
  }

  v5 = v19;
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (void)setInHardwareKeyboardMode:(BOOL)mode forceRebuild:(BOOL)rebuild shouldMoveKeyboard:(BOOL)keyboard
{
  selfCopy = self;
  v9 = a2;
  modeCopy = mode;
  rebuildCopy = rebuild;
  keyboardCopy = keyboard;
  v5.receiver = self;
  v5.super_class = _UIKeyboardStateManagerAccessibility;
  [(_UIKeyboardStateManagerAccessibility *)&v5 setInHardwareKeyboardMode:mode forceRebuild:rebuild shouldMoveKeyboard:keyboard];
  if ([(_UIKeyboardStateManagerAccessibility *)selfCopy _axShouldShowKeyboard])
  {
    [(_UIKeyboardStateManagerAccessibility *)selfCopy _axShowKeyboardIfHidden];
  }
}

- (void)_axShowKeyboardIfHidden
{
  selfCopy = self;
  if (self)
  {
    if ([selfCopy safeBoolForKey:@"isMinimized"])
    {
      v1 = MEMORY[0x29EDC9748](selfCopy);
      AXPerformSafeBlock();
      objc_storeStrong(&v1, 0);
    }
  }
}

- (BOOL)callShouldDeleteWithWordCountForRapidDelete:(int)delete characterCountForRapidDelete:(int)rapidDelete
{
  selfCopy = self;
  v9 = a2;
  deleteCopy = delete;
  rapidDeleteCopy = rapidDelete;
  v5.receiver = self;
  v5.super_class = _UIKeyboardStateManagerAccessibility;
  v6 = [(_UIKeyboardStateManagerAccessibility *)&v5 callShouldDeleteWithWordCountForRapidDelete:delete characterCountForRapidDelete:rapidDelete];
  if (v6)
  {
    [(_UIKeyboardStateManagerAccessibility *)selfCopy _axResetFKAFocusToFirstResponderOnDelegate];
  }

  return v6 & 1;
}

- (void)_axResetFKAFocusToFirstResponderOnDelegate
{
  selfCopy = self;
  if (self)
  {
    v1 = MEMORY[0x29EDC9748](selfCopy);
    AXPerformSafeBlock();
    objc_storeStrong(&v1, 0);
  }
}

- (id)_accessibilityKeyboardInputDelegate
{
  if (self)
  {
    v2 = [self safeValueForKey:@"inputDelegate"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)touchUpdateLastUsedInputModeAction
{
  selfCopy = self;
  v3 = a2;
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    v2.receiver = selfCopy;
    v2.super_class = _UIKeyboardStateManagerAccessibility;
    [(_UIKeyboardStateManagerAccessibility *)&v2 touchUpdateLastUsedInputModeAction];
  }
}

- (BOOL)callShouldInsertText:(id)text
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  v5.receiver = selfCopy;
  v5.super_class = _UIKeyboardStateManagerAccessibility;
  v6 = [(_UIKeyboardStateManagerAccessibility *)&v5 callShouldInsertText:location[0]];
  if (v6)
  {
    [(_UIKeyboardStateManagerAccessibility *)selfCopy _axResetFKAFocusToFirstResponderOnDelegate];
  }

  v4 = v6;
  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (BOOL)autocorrectSpellingEnabled
{
  selfCopy = self;
  v5 = a2;
  if (UIAccessibilityIsVoiceOverRunning() && [(_UIKeyboardStateManagerAccessibility *)selfCopy _axIsHandwritingEnabled])
  {
    return 0;
  }

  v3.receiver = selfCopy;
  v3.super_class = _UIKeyboardStateManagerAccessibility;
  return [(_UIKeyboardStateManagerAccessibility *)&v3 autocorrectSpellingEnabled];
}

- (BOOL)autocorrectionPreference
{
  selfCopy = self;
  v5 = a2;
  if (UIAccessibilityIsVoiceOverRunning() && [(_UIKeyboardStateManagerAccessibility *)selfCopy _axIsHandwritingEnabled])
  {
    return 0;
  }

  v3.receiver = selfCopy;
  v3.super_class = _UIKeyboardStateManagerAccessibility;
  return [(_UIKeyboardStateManagerAccessibility *)&v3 autocorrectionPreference];
}

- (void)_axUpdateAutocorrectionSettings
{
  v14 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  if (self)
  {
    v11 = [selfCopy safeUnsignedIntegerForKey:@"autocorrectionPreferenceForTraits"] != 0;
    v9 = 0;
    objc_opt_class();
    v1 = [selfCopy safeValueForKey:@"m_keyboardState"];
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
    v3 = MEMORY[0x29EDC9748](selfCopy);
    AXPerformSafeBlock();
    objc_storeStrong(&v3, 0);
    objc_storeStrong(&v2, 0);
    objc_storeStrong(&v10, 0);
  }
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = _UIKeyboardStateManagerAccessibility;
  [(_UIKeyboardStateManagerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  location = [MEMORY[0x29EDBA068] defaultCenter];
  if (([(_UIKeyboardStateManagerAccessibility *)selfCopy _axIsObservingAppLifecycleNotifications]& 1) == 0)
  {
    [location addObserver:selfCopy selector:sel__axUnregisterForVoiceOverNotifications_ name:*MEMORY[0x29EDC8038] object:?];
    [location addObserver:selfCopy selector:sel__axRegisterForVoiceOverNotifications_ name:*MEMORY[0x29EDC8010] object:0];
    [location addObserver:selfCopy selector:sel__axHandleVoiceOverStatusChanged_ name:*MEMORY[0x29EDC8000] object:0];
    [_UIKeyboardStateManagerAccessibility _axSetIsObservingAppLifecycleNotifications:selfCopy];
  }

  mEMORY[0x29EDC7938] = [MEMORY[0x29EDC7938] sharedApplication];
  applicationState = [mEMORY[0x29EDC7938] applicationState];
  *&v2 = MEMORY[0x29EDC9740](mEMORY[0x29EDC7938]).n128_u64[0];
  if (!applicationState)
  {
    [(_UIKeyboardStateManagerAccessibility *)selfCopy _axRegisterForVoiceOverNotifications:0, v2];
  }

  objc_storeStrong(&location, 0);
}

- (void)_axRegisterForVoiceOverNotifications:(id)notifications
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, notifications);
  v3 = MEMORY[0x29EDCA5F8];
  v4 = -1073741824;
  v5 = 0;
  v6 = __77___UIKeyboardStateManagerAccessibility__axRegisterForVoiceOverNotifications___block_invoke;
  v7 = &unk_29F30C7C8;
  v8 = MEMORY[0x29EDC9748](selfCopy);
  AXPerformBlockOnMainThreadAfterDelay();
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_axUnregisterForVoiceOverNotifications:(id)notifications
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, notifications);
  if ([(_UIKeyboardStateManagerAccessibility *)selfCopy _axIsObservingVoiceOverNotifications])
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
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, selfCopy, *MEMORY[0x29EDBDF20], 0);
    v4 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v4, selfCopy, *MEMORY[0x29EDBDF18], 0);
    [(_UIKeyboardStateManagerAccessibility *)selfCopy _axSetIsObservingVoiceOverNotifications:0];
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)_axHandleVoiceOverStatusChanged:(id)changed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, changed);
  [(_UIKeyboardStateManagerAccessibility *)selfCopy _axUpdateAutocorrectionSettings];
  objc_storeStrong(location, 0);
}

- (void)dealloc
{
  selfCopy = self;
  v6 = a2;
  [(_UIKeyboardStateManagerAccessibility *)self _axUnregisterForVoiceOverNotifications:?];
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:selfCopy name:*MEMORY[0x29EDC8038] object:0];
  defaultCenter2 = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter2 removeObserver:selfCopy name:*MEMORY[0x29EDC8010] object:0];
  defaultCenter3 = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter3 removeObserver:selfCopy name:*MEMORY[0x29EDC8000] object:0];
  MEMORY[0x29EDC9740](defaultCenter3);
  [_UIKeyboardStateManagerAccessibility _axSetIsObservingAppLifecycleNotifications:selfCopy];
  v5.receiver = selfCopy;
  v5.super_class = _UIKeyboardStateManagerAccessibility;
  [(_UIKeyboardStateManagerAccessibility *)&v5 dealloc];
}

@end