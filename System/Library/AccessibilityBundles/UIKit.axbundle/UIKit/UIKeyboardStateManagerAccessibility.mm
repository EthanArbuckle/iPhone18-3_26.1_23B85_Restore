@interface UIKeyboardStateManagerAccessibility
@end

@implementation UIKeyboardStateManagerAccessibility

uint64_t __71___UIKeyboardStateManagerAccessibility_performKeyboardOutput_userInfo___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  oslog[2] = a1;
  oslog[1] = a1;
  if (AXDoesRequestingClientDeserveAutomation())
  {
    oslog[0] = AXLogUIA();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_64(v4, *(a1 + 32));
      _os_log_impl(&dword_29C4D6000, oslog[0], OS_LOG_TYPE_INFO, "Keyboard event handled - processed keyboardOutput: %@", v4, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  return AXUIUnblockKeyboardEntryNotifications();
}

void __77___UIKeyboardStateManagerAccessibility_handleKeyboardInput_executionContext___block_invoke(id *a1)
{
  v8[2] = a1;
  v8[1] = a1;
  v2 = [a1[4] safeValueForKey:@"taskQueue"];
  v3 = MEMORY[0x29EDCA5F8];
  v4 = -1073741824;
  v5 = 0;
  v6 = __77___UIKeyboardStateManagerAccessibility_handleKeyboardInput_executionContext___block_invoke_2;
  v7 = &unk_29F30C970;
  v8[0] = MEMORY[0x29EDC9748](a1[4]);
  [v2 addDeferredTask:?];
  MEMORY[0x29EDC9740](v2);
  objc_storeStrong(v8, 0);
}

void __77___UIKeyboardStateManagerAccessibility_handleKeyboardInput_executionContext___block_invoke_2(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8[1] = a1;
  [a1[4] _axSetIsLastKeyBackspace:0];
  v3 = MEMORY[0x29EDCA5F8];
  v4 = -1073741824;
  v5 = 0;
  v6 = __77___UIKeyboardStateManagerAccessibility_handleKeyboardInput_executionContext___block_invoke_3;
  v7 = &unk_29F30C7C8;
  v8[0] = MEMORY[0x29EDC9748](location[0]);
  AXPerformSafeBlock();
  objc_storeStrong(v8, 0);
  objc_storeStrong(location, 0);
}

uint64_t __77___UIKeyboardStateManagerAccessibility_handleKeyboardInput_executionContext___block_invoke_4(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = AXLogUIA();
  v5 = 1;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_INFO))
  {
    log = location[0];
    type = v5;
    __os_log_helper_16_0_0(v4);
    _os_log_impl(&dword_29C4D6000, log, type, "Never received keyboard finish task - unblock remaining notifications", v4, 2u);
  }

  objc_storeStrong(location, 0);
  return AXUIUnblockKeyboardEntryNotifications();
}

double __63___UIKeyboardStateManagerAccessibility__axShowKeyboardIfHidden__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"presentationDelegate"];
  [v2 showKeyboard];
  *&result = MEMORY[0x29EDC9740](v2).n128_u64[0];
  return result;
}

double __82___UIKeyboardStateManagerAccessibility__axResetFKAFocusToFirstResponderOnDelegate__block_invoke(uint64_t a1)
{
  v8 = a1;
  v7 = a1;
  v6 = 0;
  objc_opt_class();
  v3 = [(_UIKeyboardStateManagerAccessibility *)*(a1 + 32) _accessibilityKeyboardInputDelegate];
  v5 = __UIAccessibilityCastAsSafeCategory();
  MEMORY[0x29EDC9740](v3);
  v4 = MEMORY[0x29EDC9748](v5);
  objc_storeStrong(&v5, 0);
  [(UITextInputUIResponderAccessibility *)v4 _axResetFKAFocusToFirstResponder];
  *&result = MEMORY[0x29EDC9740](v4).n128_u64[0];
  return result;
}

uint64_t __77___UIKeyboardStateManagerAccessibility__axRegisterForVoiceOverNotifications___block_invoke(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  result = [a1[4] _axIsObservingVoiceOverNotifications];
  if ((result & 1) == 0)
  {
    location[0] = VOTLogHandwriting();
    v8 = 2;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
    {
      log = location[0];
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_debug_impl(&dword_29C4D6000, log, type, "Registering UIKeyboard for handwriting notifications", v7, 2u);
    }

    objc_storeStrong(location, 0);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, a1[4], voiceOverDidEnableHandwriting, *MEMORY[0x29EDBDF20], 0, CFNotificationSuspensionBehaviorCoalesce);
    v3 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v3, a1[4], voiceOverDidDisableHandwriting, *MEMORY[0x29EDBDF18], 0, CFNotificationSuspensionBehaviorCoalesce);
    return [a1[4] _axSetIsObservingVoiceOverNotifications:1];
  }

  return result;
}

@end