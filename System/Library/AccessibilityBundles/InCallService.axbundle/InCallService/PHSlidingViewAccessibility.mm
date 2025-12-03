@interface PHSlidingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)createFindMyUI;
- (void)interactiveStartWithCountdownModel:(id)model;
- (void)repeatingUpdateAnimatedSliderForCountdownNumber:(unint64_t)number forModel:(id)model;
- (void)setSlidingViewState:(unint64_t)state;
- (void)showSlidingViewModel:(id)model animatedSliderCompletion:(id)completion medicalIDSliderCompletion:(id)sliderCompletion shouldMaxVolumeCompletion:(id)volumeCompletion;
@end

@implementation PHSlidingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PHSlidingView" hasInstanceMethod:@"animatedSlidingButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PHSlidingView" hasInstanceMethod:@"findMyButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PHSlidingView" hasInstanceMethod:@"createFindMyUI" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PHSlidingView" hasInstanceMethod:@"medicalIDSlidingButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PHSlidingView" hasInstanceMethod:@"showSlidingViewModel:animatedSliderCompletion:medicalIDSliderCompletion:shouldMaxVolumeCompletion:" withFullSignature:{"v", "@", "@?", "@?", "@?", 0}];
  [validationsCopy validateClass:@"PHSlidingView" hasInstanceMethod:@"repeatingUpdateAnimatedSliderForCountdownNumber:forModel:" withFullSignature:{"v", "Q", "@", 0}];
  [validationsCopy validateClass:@"PHSlidingView" hasInstanceMethod:@"setSlidingViewState:" withFullSignature:{"v", "Q", 0}];
  [validationsCopy validateClass:@"PHSlidingView" hasInstanceMethod:@"interactiveStartWithCountdownModel:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"PHSOSNotifyCountdownViewModel" hasInstanceMethod:@"playsSound" withFullSignature:{"B", 0}];
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

- (void)repeatingUpdateAnimatedSliderForCountdownNumber:(unint64_t)number forModel:(id)model
{
  v6.receiver = self;
  v6.super_class = PHSlidingViewAccessibility;
  [(PHSlidingViewAccessibility *)&v6 repeatingUpdateAnimatedSliderForCountdownNumber:number forModel:model];
  if (number <= 4)
  {
    v5 = AXFormatInteger();
    UIAccessibilitySpeak();
  }
}

- (void)setSlidingViewState:(unint64_t)state
{
  v19 = *MEMORY[0x29EDCA608];
  v5 = [(PHSlidingViewAccessibility *)self safeUIViewForKey:@"titleLabel"];
  [v5 alpha];
  v7 = v6;

  v16.receiver = self;
  v16.super_class = PHSlidingViewAccessibility;
  [(PHSlidingViewAccessibility *)&v16 setSlidingViewState:state];
  v8 = [(PHSlidingViewAccessibility *)self safeUIViewForKey:@"titleLabel"];
  [v8 alpha];
  v10 = v9;

  if (v10 > 0.0 && v7 == 0.0)
  {
    v11 = *MEMORY[0x29EDC7ED8];
    v12 = [(PHSlidingViewAccessibility *)self safeUIViewForKey:@"titleLabel"];
    UIAccessibilityPostNotification(v11, v12);
  }

  if (state != 1)
  {
    v13 = AXLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:state];
      *buf = 138412290;
      v18 = v14;
      _os_log_impl(&dword_29BEB2000, v13, OS_LOG_TYPE_DEFAULT, "Resetting VO quiet state: %@", buf, 0xCu);
    }

    [*MEMORY[0x29EDC8008] _accessibilitySetIsDictationListeningOverride:0];
  }

  v15 = *MEMORY[0x29EDCA608];
}

- (void)interactiveStartWithCountdownModel:(id)model
{
  modelCopy = model;
  if (UIAccessibilityIsVoiceOverRunning() && ([modelCopy safeBoolForKey:@"playsSound"] & 1) == 0)
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
  [(PHSlidingViewAccessibility *)&v6 interactiveStartWithCountdownModel:modelCopy];
}

- (void)showSlidingViewModel:(id)model animatedSliderCompletion:(id)completion medicalIDSliderCompletion:(id)sliderCompletion shouldMaxVolumeCompletion:(id)volumeCompletion
{
  v8.receiver = self;
  v8.super_class = PHSlidingViewAccessibility;
  [(PHSlidingViewAccessibility *)&v8 showSlidingViewModel:model animatedSliderCompletion:completion medicalIDSliderCompletion:sliderCompletion shouldMaxVolumeCompletion:volumeCompletion];
  v7 = [(PHSlidingViewAccessibility *)self safeValueForKey:@"animatedSlidingButton"];
  if (!v7)
  {
    v7 = [(PHSlidingViewAccessibility *)self safeValueForKey:@"medicalIDSlidingButton"];
  }

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], v7);
}

@end