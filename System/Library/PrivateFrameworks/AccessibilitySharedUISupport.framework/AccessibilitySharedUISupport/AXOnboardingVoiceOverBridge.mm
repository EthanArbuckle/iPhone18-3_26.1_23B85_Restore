@interface AXOnboardingVoiceOverBridge
+ (BOOL)deviceHasHomeButton;
+ (BOOL)hasVoiceOverTeachableMomentsContent;
+ (BOOL)triggerEventCommand:(id)command;
+ (id)getRotorName;
+ (id)setRecognizedGesture;
+ (id)teachableBrailleItems;
+ (id)teachableMomentsBuildVersion;
+ (id)teachableVoiceOverItems;
+ (void)connectToVO;
+ (void)synthesizerSpeakString:(id)string;
+ (void)synthesizerStopSpeaking;
@end

@implementation AXOnboardingVoiceOverBridge

+ (BOOL)triggerEventCommand:(id)command
{
  commandCopy = command;
  server = [getAXVoiceOverServerClass() server];
  v5 = [server triggerEventCommand:commandCopy];

  return v5;
}

+ (void)connectToVO
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _updateRecognizedGestureNotification, *MEMORY[0x277D81E98], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  v5 = *MEMORY[0x277D81E90];

  CFNotificationCenterAddObserver(v4, self, _updateSpeakingRateNotification, v5, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

+ (id)setRecognizedGesture
{
  server = [getAXVoiceOverServerClass() server];
  recognizedGestureForTutorial = [server recognizedGestureForTutorial];
  v4 = recognizedGesture;
  recognizedGesture = recognizedGestureForTutorial;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"AXVOTTrainingSwiftNotification" object:0];

  v6 = recognizedGesture;

  return v6;
}

+ (id)getRotorName
{
  server = [getAXVoiceOverServerClass() server];
  currentRotorName = [server currentRotorName];

  return currentRotorName;
}

+ (id)teachableBrailleItems
{
  AXTeachableMomentsManagerClass = getAXTeachableMomentsManagerClass();
  v3 = getAXTeachableFeatureBraille();
  v4 = [AXTeachableMomentsManagerClass teachableItemsForFeature:v3];
  v5 = [v4 ax_flatMappedArrayUsingBlock:&__block_literal_global_1];

  return v5;
}

id __52__AXOnboardingVoiceOverBridge_teachableBrailleItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 itemTitle];
  [v3 setItemTitle:v4];

  v5 = [v2 itemDescription];

  [v3 setItemDescription:v5];

  return v3;
}

+ (id)teachableVoiceOverItems
{
  AXTeachableMomentsManagerClass = getAXTeachableMomentsManagerClass();
  v3 = getAXTeachableFeatureVoiceOver();
  v4 = [AXTeachableMomentsManagerClass teachableItemsForFeature:v3];
  v5 = [v4 ax_flatMappedArrayUsingBlock:&__block_literal_global_306];

  return v5;
}

id __54__AXOnboardingVoiceOverBridge_teachableVoiceOverItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 itemTitle];
  [v3 setItemTitle:v4];

  v5 = [v2 itemDescription];

  [v3 setItemDescription:v5];

  return v3;
}

+ (id)teachableMomentsBuildVersion
{
  AXTeachableMomentsManagerClass = getAXTeachableMomentsManagerClass();

  return [AXTeachableMomentsManagerClass buildVersion];
}

+ (BOOL)hasVoiceOverTeachableMomentsContent
{
  AXTeachableMomentsManagerClass = getAXTeachableMomentsManagerClass();
  v3 = getAXTeachableFeatureVoiceOver();
  v4 = [AXTeachableMomentsManagerClass teachableItemsForFeature:v3];
  if ([v4 count])
  {
    v5 = 1;
  }

  else
  {
    v6 = getAXTeachableMomentsManagerClass();
    v7 = getAXTeachableFeatureBraille();
    v8 = [v6 teachableItemsForFeature:v7];
    v5 = [v8 count] != 0;
  }

  return v5;
}

+ (void)synthesizerSpeakString:(id)string
{
  stringCopy = string;
  v8 = stringCopy;
  if (!synthesizer)
  {
    v4 = objc_alloc_init(MEMORY[0x277CB84B8]);
    v5 = synthesizer;
    synthesizer = v4;

    stringCopy = v8;
  }

  v6 = [MEMORY[0x277CB84C0] speechUtteranceWithString:stringCopy];
  +[AXOnboardingVoiceOverBridge getVolume];
  [v6 setVolume:?];
  [v6 setPreUtteranceDelay:3.0];
  v7 = +[AXOnboardingVoiceOverBridge getVoice];
  if (v7)
  {
    [v6 setVoice:v7];
  }

  [synthesizer speakUtterance:v6];
}

+ (void)synthesizerStopSpeaking
{
  [synthesizer stopSpeakingAtBoundary:0];
  v2 = synthesizer;
  synthesizer = 0;
}

+ (BOOL)deviceHasHomeButton
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getAXDeviceHasHomeButtonSymbolLoc_ptr_0;
  v9 = getAXDeviceHasHomeButtonSymbolLoc_ptr_0;
  if (!getAXDeviceHasHomeButtonSymbolLoc_ptr_0)
  {
    v3 = AccessibilityUtilitiesLibrary();
    v7[3] = dlsym(v3, "AXDeviceHasHomeButton");
    getAXDeviceHasHomeButtonSymbolLoc_ptr_0 = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    HasHomeButton_cold_1 = AXSSDeviceHasHomeButton_cold_1();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(HasHomeButton_cold_1);
  }

  return v2();
}

@end