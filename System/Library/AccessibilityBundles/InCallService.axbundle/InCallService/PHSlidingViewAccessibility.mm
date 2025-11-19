@interface PHSlidingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)createFindMyUI;
- (void)interactiveStartWithCountdownModel:(id)a3;
- (void)repeatingUpdateAnimatedSliderForCountdownNumber:(unint64_t)a3 forModel:(id)a4;
- (void)setSlidingViewState:(unint64_t)a3;
- (void)showSlidingViewModel:(id)a3 animatedSliderCompletion:(id)a4 medicalIDSliderCompletion:(id)a5 shouldMaxVolumeCompletion:(id)a6;
@end

@implementation PHSlidingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PHSlidingView" hasInstanceMethod:@"animatedSlidingButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHSlidingView" hasInstanceMethod:@"findMyButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHSlidingView" hasInstanceMethod:@"createFindMyUI" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PHSlidingView" hasInstanceMethod:@"medicalIDSlidingButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHSlidingView" hasInstanceMethod:@"showSlidingViewModel:animatedSliderCompletion:medicalIDSliderCompletion:shouldMaxVolumeCompletion:" withFullSignature:{"v", "@", "@?", "@?", "@?", 0}];
  [v3 validateClass:@"PHSlidingView" hasInstanceMethod:@"repeatingUpdateAnimatedSliderForCountdownNumber:forModel:" withFullSignature:{"v", "Q", "@", 0}];
  [v3 validateClass:@"PHSlidingView" hasInstanceMethod:@"setSlidingViewState:" withFullSignature:{"v", "Q", 0}];
  [v3 validateClass:@"PHSlidingView" hasInstanceMethod:@"interactiveStartWithCountdownModel:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"PHSOSNotifyCountdownViewModel" hasInstanceMethod:@"playsSound" withFullSignature:{"B", 0}];
}

- (void)createFindMyUI
{
  v3.receiver = self;
  v3.super_class = PHSlidingViewAccessibility;
  [(PHSlidingViewAccessibility *)&v3 createFindMyUI];
  [(PHSlidingViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = PHSlidingViewAccessibility;
  [(PHSlidingViewAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  LOBYTE(location) = 0;
  objc_opt_class();
  v3 = [(PHSlidingViewAccessibility *)self safeUIViewForKey:@"findMyButton"];
  v4 = __UIAccessibilityCastAsClass();

  objc_initWeak(&location, v4);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __72__PHSlidingViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v5[3] = &unk_29F2C8BA8;
  objc_copyWeak(&v6, &location);
  [v4 _setAccessibilityLabelBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

id __72__PHSlidingViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained attributedTitleForState:0];
  v3 = [v2 string];

  return v3;
}

- (void)repeatingUpdateAnimatedSliderForCountdownNumber:(unint64_t)a3 forModel:(id)a4
{
  v6.receiver = self;
  v6.super_class = PHSlidingViewAccessibility;
  [(PHSlidingViewAccessibility *)&v6 repeatingUpdateAnimatedSliderForCountdownNumber:a3 forModel:a4];
  if (a3 <= 4)
  {
    v5 = AXFormatInteger();
    UIAccessibilitySpeak();
  }
}

- (void)setSlidingViewState:(unint64_t)a3
{
  v19 = *MEMORY[0x29EDCA608];
  v5 = [(PHSlidingViewAccessibility *)self safeUIViewForKey:@"titleLabel"];
  [v5 alpha];
  v7 = v6;

  v16.receiver = self;
  v16.super_class = PHSlidingViewAccessibility;
  [(PHSlidingViewAccessibility *)&v16 setSlidingViewState:a3];
  v8 = [(PHSlidingViewAccessibility *)self safeUIViewForKey:@"titleLabel"];
  [v8 alpha];
  v10 = v9;

  if (v10 > 0.0 && v7 == 0.0)
  {
    v11 = *MEMORY[0x29EDC7ED8];
    v12 = [(PHSlidingViewAccessibility *)self safeUIViewForKey:@"titleLabel"];
    UIAccessibilityPostNotification(v11, v12);
  }

  if (a3 != 1)
  {
    v13 = AXLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:a3];
      *buf = 138412290;
      v18 = v14;
      _os_log_impl(&dword_29BEB2000, v13, OS_LOG_TYPE_DEFAULT, "Resetting VO quiet state: %@", buf, 0xCu);
    }

    [*MEMORY[0x29EDC8008] _accessibilitySetIsDictationListeningOverride:0];
  }

  v15 = *MEMORY[0x29EDCA608];
}

- (void)interactiveStartWithCountdownModel:(id)a3
{
  v4 = a3;
  if (UIAccessibilityIsVoiceOverRunning() && ([v4 safeBoolForKey:@"playsSound"] & 1) == 0)
  {
    v5 = AXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29BEB2000, v5, OS_LOG_TYPE_DEFAULT, "Marking VO to be quiet since we're in quiet mode", buf, 2u);
    }

    [*MEMORY[0x29EDC8008] _accessibilitySetIsDictationListeningOverride:MEMORY[0x29EDB8EB0]];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], &stru_2A21D0958);
  }

  v6.receiver = self;
  v6.super_class = PHSlidingViewAccessibility;
  [(PHSlidingViewAccessibility *)&v6 interactiveStartWithCountdownModel:v4];
}

- (void)showSlidingViewModel:(id)a3 animatedSliderCompletion:(id)a4 medicalIDSliderCompletion:(id)a5 shouldMaxVolumeCompletion:(id)a6
{
  v8.receiver = self;
  v8.super_class = PHSlidingViewAccessibility;
  [(PHSlidingViewAccessibility *)&v8 showSlidingViewModel:a3 animatedSliderCompletion:a4 medicalIDSliderCompletion:a5 shouldMaxVolumeCompletion:a6];
  v7 = [(PHSlidingViewAccessibility *)self safeValueForKey:@"animatedSlidingButton"];
  if (!v7)
  {
    v7 = [(PHSlidingViewAccessibility *)self safeValueForKey:@"medicalIDSlidingButton"];
  }

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], v7);
}

@end