@interface PHCountdownViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)dealloc;
- (void)pause;
- (void)startCountdown;
- (void)stop;
@end

@implementation PHCountdownViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PHCountdownView" hasInstanceMethod:@"pauseTimer" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PHCountdownView" hasInstanceMethod:@"startCountdown" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PHCountdownView" hasInstanceMethod:@"countdownViewModel" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PHCountdownView" hasInstanceMethod:@"stop" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PHCountdownView" hasInstanceMethod:@"pause" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PHCountdownViewModel" hasInstanceMethod:@"playsSound" withFullSignature:{"B", 0}];
  [validationsCopy validateProtocol:@"PHCountdownViewModel" hasRequiredInstanceMethod:@"countdown"];
  [validationsCopy validateProtocol:@"PHCountdownViewModel" hasRequiredInstanceMethod:@"countdownString:"];
  [validationsCopy validateProtocol:@"PHCountdownViewModel" hasRequiredInstanceMethod:@"countdownTickDuration"];
  [validationsCopy validateClass:@"PHSOSDialCountdownViewModel" conformsToProtocol:@"PHCountdownViewModel"];
  [validationsCopy validateClass:@"PHSOSNotifyCountdownViewModel" conformsToProtocol:@"PHCountdownViewModel"];
}

- (void)pause
{
  v2.receiver = self;
  v2.super_class = PHCountdownViewAccessibility;
  [(PHCountdownViewAccessibility *)&v2 pause];
  [*MEMORY[0x29EDC8008] _accessibilitySetIsDictationListeningOverride:0];
}

- (void)stop
{
  v2.receiver = self;
  v2.super_class = PHCountdownViewAccessibility;
  [(PHCountdownViewAccessibility *)&v2 stop];
  [*MEMORY[0x29EDC8008] _accessibilitySetIsDictationListeningOverride:0];
}

- (void)dealloc
{
  [*MEMORY[0x29EDC8008] _accessibilitySetIsDictationListeningOverride:0];
  v3.receiver = self;
  v3.super_class = PHCountdownViewAccessibility;
  [(PHCountdownViewAccessibility *)&v3 dealloc];
}

- (void)startCountdown
{
  v22 = *MEMORY[0x29EDCA608];
  v3 = [(PHCountdownViewAccessibility *)self safeValueForKey:@"countdownViewModel"];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v4 = [v3 safeBoolForKey:@"playsSound"] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = AXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x29EDBA070] numberWithBool:v4];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_29BEB2000, v5, OS_LOG_TYPE_DEFAULT, "Are we quiet: %@", &buf, 0xCu);
  }

  if (v4)
  {
    v7 = AXLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_29BEB2000, v7, OS_LOG_TYPE_DEFAULT, "Marking VO to be quiet since we're in quiet mode", &buf, 2u);
    }

    [*MEMORY[0x29EDC8008] _accessibilitySetIsDictationListeningOverride:MEMORY[0x29EDB8EB0]];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], &stru_2A21D0958);
    v18.receiver = self;
    v18.super_class = PHCountdownViewAccessibility;
    [(PHCountdownViewAccessibility *)&v18 startCountdown];
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v20 = 0x2020000000;
    v21 = [v3 safeUnsignedIntegerForKey:@"countdown"];
    v8 = [v3 safeValueForKey:@"_axAnnouncementString"];
    UIAccessibilitySpeakAndDoNotBeInterrupted();
    v17.receiver = self;
    v17.super_class = PHCountdownViewAccessibility;
    [(PHCountdownViewAccessibility *)&v17 startCountdown];
    [v3 safeTimeIntervalForKey:@"countdownTickDuration"];
    v10 = v9;
    v11 = MEMORY[0x29EDB8E68];
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 3221225472;
    v14[2] = __46__PHCountdownViewAccessibility_startCountdown__block_invoke;
    v14[3] = &unk_29F2C8B38;
    v14[4] = self;
    p_buf = &buf;
    v15 = v3;
    v12 = [v11 scheduledTimerWithTimeInterval:1 repeats:v14 block:v10];
    [(PHCountdownViewAccessibility *)self _axSetAnnouncementTimer:v12];

    _Block_object_dispose(&buf, 8);
  }

  v13 = *MEMORY[0x29EDCA608];
}

void __46__PHCountdownViewAccessibility_startCountdown__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) safeBoolForKey:@"pauseTimer"] & 1) == 0)
  {
    if (--*(*(*(a1 + 48) + 8) + 24))
    {
      v3 = *(a1 + 40);
      v4 = *(a1 + 48);
      AXPerformSafeBlock();
    }

    else
    {
      v2 = [*(a1 + 32) _axAnnouncementTimer];
      [v2 invalidate];
      [*(a1 + 32) _axSetAnnouncementTimer:0];
    }
  }
}

void __46__PHCountdownViewAccessibility_startCountdown__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) countdownString:*(*(*(a1 + 40) + 8) + 24)];
  UIAccessibilitySpeak();
}

@end