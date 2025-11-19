@interface PhoneApplicationAccesssibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityAllowsNotificationsDuringSuspension;
- (BOOL)accessibilityStartStopToggle;
- (id)_accessibilitySoftwareMimicKeyboard;
@end

@implementation PhoneApplicationAccesssibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PhoneTabBarController"];
  [v3 validateClass:@"PHVoicemailGreetingViewController"];
  [v3 validateClass:@"MPVoicemailTableViewController"];
  [v3 validateClass:@"PHVoicemailPlayerController" hasClassMethod:@"sharedPlayerController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PhoneApplication" hasInstanceMethod:@"rootViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHAudioRecorder" hasInstanceMethod:@"stop" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PHVoicemailPlayerController" hasInstanceMethod:@"isPlaying" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PHVoicemailPlayerController" hasInstanceMethod:@"pause" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PHVoicemailPlayerController" hasInstanceMethod:@"play" withFullSignature:{"v", 0}];
  [v3 validateClass:@"MPVoicemailTableViewController" hasInstanceMethod:@"detailIndexPath" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHVoicemailGreetingViewController" hasInstanceMethod:@"recordStopButtonTapped" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PhoneRootViewController"];
  [v3 validateClass:@"PhoneTabBarController"];
  [v3 validateClass:@"PhoneTabBarController" hasInstanceMethod:@"keypadViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PhoneTabBarController" hasInstanceMethod:@"currentTabViewType" withFullSignature:{"i", 0}];
  [v3 validateClass:@"MPKeypadViewController" isKindOfClass:@"DialerController"];
  [v3 validateClass:@"DialerController" hasInstanceVariable:@"_dialerView" withType:"PHAbstractDialerView"];
  [v3 validateClass:@"PhoneTabBarController" hasInstanceVariable:@"_voicemailViewController" withType:"PHVoicemailNavigationController"];
  [v3 validateClass:@"PHVoicemailNavigationController" hasInstanceVariable:@"_inboxViewController" withType:"MPVoicemailTableViewController<PHVoicemailListProtocol>"];
  [v3 validateClass:@"MPVoicemailTableViewController" isKindOfClass:@"UITableViewController"];
  [v3 validateClass:@"PHAbstractDialerView" hasInstanceMethod:@"phonePadView" withFullSignature:{"@", 0}];
}

- (id)_accessibilitySoftwareMimicKeyboard
{
  v14 = 0;
  v3 = [(PhoneApplicationAccesssibility *)self safeValueForKey:@"rootViewController"];
  v4 = __UIAccessibilitySafeClass();

  v5 = [v4 safeValueForKey:@"baseViewController"];
  v6 = __UIAccessibilitySafeClass();

  if (HIBYTE(v14) == 1)
  {
    abort();
  }

  if ([v6 safeIntForKey:@"currentTabViewType"] == 4)
  {
    v7 = [v6 safeValueForKey:@"keypadViewController"];
    v8 = __UIAccessibilitySafeClass();

    HIBYTE(v14) = 0;
    v9 = [v8 safeValueForKey:@"_dialerView"];
    v10 = __UIAccessibilitySafeClass();

    v11 = [v10 safeValueForKey:@"phonePadView"];
    if ([v11 _accessibilityViewIsVisible])
    {

      goto LABEL_10;
    }
  }

  v13.receiver = self;
  v13.super_class = PhoneApplicationAccesssibility;
  v11 = [(PhoneApplicationAccesssibility *)&v13 _accessibilitySoftwareMimicKeyboard];
LABEL_10:

  return v11;
}

- (BOOL)accessibilityStartStopToggle
{
  v20.receiver = self;
  v20.super_class = PhoneApplicationAccesssibility;
  if (![(PhoneApplicationAccesssibility *)&v20 accessibilityStartStopToggle])
  {
    v3 = [(PhoneApplicationAccesssibility *)self safeValueForKey:@"rootViewController"];
    v4 = __UIAccessibilitySafeClass();

    v5 = [v4 safeValueForKey:@"baseViewController"];

    NSClassFromString(&cfstr_Phonetabbarcon.isa);
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 safeValueForKey:@"modalViewController"];
      v7 = [v6 safeValueForKey:@"visibleViewController"];

      NSClassFromString(&cfstr_Phvoicemailgre_0.isa);
      if (objc_opt_isKindOfClass())
      {
        v19 = v7;
        AXPerformSafeBlock();
      }

      v8 = [v5 safeValueForKey:@"_voicemailViewController"];
      NSClassFromString(&cfstr_Phvoicemailnav.isa);
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 safeValueForKey:@"_inboxViewController"];
        v10 = [v9 safeValueForKey:@"selectedVoicemail"];
        if (v10)
        {
          objc_opt_class();
          v11 = [v9 safeValueForKey:@"detailIndexPath"];
          v12 = __UIAccessibilityCastAsClass();

          objc_opt_class();
          v13 = [v9 safeValueForKey:@"tableView"];
          v14 = __UIAccessibilityCastAsClass();

          v15 = [v14 cellForRowAtIndexPath:v12];

          if (v15)
          {
            v18 = [NSClassFromString(&cfstr_Phvoicemailpla.isa) safeValueForKey:@"sharedPlayerController"];
            v16 = v18;
            AXPerformSafeBlock();
          }
        }
      }
    }
  }

  return 1;
}

uint64_t __62__PhoneApplicationAccesssibility_accessibilityStartStopToggle__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) safeBoolForKey:@"isPlaying"];
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 pause];
  }

  else
  {

    return [v3 play];
  }
}

- (BOOL)_accessibilityAllowsNotificationsDuringSuspension
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  AXPerformBlockSynchronouslyOnMainThread();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __83__PhoneApplicationAccesssibility__accessibilityAllowsNotificationsDuringSuspension__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x29EDC6F78] sharedInstance];
  *(*(*(a1 + 32) + 8) + 24) = [v2 currentCallCount] != 0;
}

@end