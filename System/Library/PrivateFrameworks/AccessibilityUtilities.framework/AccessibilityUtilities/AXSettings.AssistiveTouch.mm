@interface AXSettings.AssistiveTouch
- (BOOL)assistiveTouchEyeTrackingUseZoomForKeyboardKeys;
- (BOOL)assistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled;
- (BOOL)assistiveTouchScannerPointPickerModeEnabled;
- (BOOL)assistiveTouchScannerSpeechEnabled;
- (BOOL)assistiveTouchScannerSpeechIsInterruptedByScanning;
- (BOOL)assistiveTouchScannerSpeechShouldSpeakTraits;
- (double)assistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout;
- (void)setAssistiveTouchEyeTrackingUseZoomForKeyboardKeys:(BOOL)keys;
- (void)setAssistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout:(double)timeout;
- (void)setAssistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled:(BOOL)enabled;
- (void)setAssistiveTouchScannerPointPickerModeEnabled:(BOOL)enabled;
- (void)setAssistiveTouchScannerSpeechEnabled:(BOOL)enabled;
- (void)setAssistiveTouchScannerSpeechIsInterruptedByScanning:(BOOL)scanning;
- (void)setAssistiveTouchScannerSpeechShouldSpeakTraits:(BOOL)traits;
- (void)setWithVoiceId:(NSString *)id forLanguage:(NSString *)language completionHandler:(id)handler;
- (void)setWithVoiceId:(NSString *)id forLanguage:(NSString *)language rate:(float)rate volume:(float)volume pitch:(float)pitch effects:(NSArray *)effects voiceSettings:(NSDictionary *)settings completionHandler:(id)self0;
- (void)speechVoiceIdentifierForLanguage:(NSString *)language completionHandler:(id)handler;
@end

@implementation AXSettings.AssistiveTouch

- (BOOL)assistiveTouchScannerSpeechEnabled
{
  selfCopy = self;
  v3 = AXSettings.AssistiveTouch.scannerSpeechEnabled.getter();

  return v3 & 1;
}

- (void)setAssistiveTouchScannerSpeechEnabled:(BOOL)enabled
{
  selfCopy = self;
  AXSettings.AssistiveTouch.scannerSpeechEnabled.setter(enabled);
}

- (BOOL)assistiveTouchScannerSpeechShouldSpeakTraits
{
  selfCopy = self;
  ShouldSpeak = AXSettings.AssistiveTouch.scannerSpeechShouldSpeakTraits.getter();

  return ShouldSpeak & 1;
}

- (void)setAssistiveTouchScannerSpeechShouldSpeakTraits:(BOOL)traits
{
  selfCopy = self;
  AXSettings.AssistiveTouch.scannerSpeechShouldSpeakTraits.setter(traits);
}

- (BOOL)assistiveTouchScannerSpeechIsInterruptedByScanning
{
  selfCopy = self;
  IsInterruptedBy = AXSettings.AssistiveTouch.scannerSpeechIsInterruptedByScanning.getter();

  return IsInterruptedBy & 1;
}

- (void)setAssistiveTouchScannerSpeechIsInterruptedByScanning:(BOOL)scanning
{
  selfCopy = self;
  AXSettings.AssistiveTouch.scannerSpeechIsInterruptedByScanning.setter(scanning);
}

- (BOOL)assistiveTouchEyeTrackingUseZoomForKeyboardKeys
{
  selfCopy = self;
  v3 = AXSettings.AssistiveTouch.eyeTrackingUseZoomForKeyboardKeys.getter();

  return v3 & 1;
}

- (void)setAssistiveTouchEyeTrackingUseZoomForKeyboardKeys:(BOOL)keys
{
  selfCopy = self;
  AXSettings.AssistiveTouch.eyeTrackingUseZoomForKeyboardKeys.setter(keys);
}

- (BOOL)assistiveTouchScannerPointPickerModeEnabled
{
  selfCopy = self;
  v3 = AXSettings.AssistiveTouch.switchControlPointPickerModeEnabled.getter();

  return v3 & 1;
}

- (void)setAssistiveTouchScannerPointPickerModeEnabled:(BOOL)enabled
{
  selfCopy = self;
  AXSettings.AssistiveTouch.switchControlPointPickerModeEnabled.setter(enabled);
}

- (BOOL)assistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled
{
  selfCopy = self;
  v3 = AXSettings.AssistiveTouch.assistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled.getter();

  return v3 & 1;
}

- (void)setAssistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled:(BOOL)enabled
{
  selfCopy = self;
  AXSettings.AssistiveTouch.assistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled.setter(enabled);
}

- (double)assistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout
{
  selfCopy = self;
  v3 = AXSettings.AssistiveTouch.assistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout.getter();

  return v3;
}

- (void)setAssistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout:(double)timeout
{
  selfCopy = self;
  AXSettings.AssistiveTouch.assistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout.setter(timeout);
}

- (void)speechVoiceIdentifierForLanguage:(NSString *)language completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B64E8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = language;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_18B2C9A74();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_18B2FAF20;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_18B2FAF28;
  v14[5] = v13;
  languageCopy = language;
  selfCopy = self;
  sub_18B29CF64(0, 0, v9, &unk_18B2FAF30, v14);
}

- (void)setWithVoiceId:(NSString *)id forLanguage:(NSString *)language completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B64E8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = id;
  v13[3] = language;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_18B2C9A74();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_18B2FAF00;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_18B2FAF08;
  v16[5] = v15;
  idCopy = id;
  languageCopy = language;
  selfCopy = self;
  sub_18B29CF64(0, 0, v11, &unk_18B2FAF10, v16);
}

- (void)setWithVoiceId:(NSString *)id forLanguage:(NSString *)language rate:(float)rate volume:(float)volume pitch:(float)pitch effects:(NSArray *)effects voiceSettings:(NSDictionary *)settings completionHandler:(id)self0
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B64E8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v32 - v20;
  v22 = _Block_copy(handler);
  v23 = swift_allocObject();
  *(v23 + 16) = id;
  *(v23 + 24) = language;
  *(v23 + 32) = rate;
  *(v23 + 36) = volume;
  *(v23 + 40) = pitch;
  *(v23 + 48) = effects;
  *(v23 + 56) = settings;
  *(v23 + 64) = v22;
  *(v23 + 72) = self;
  v24 = sub_18B2C9A74();
  (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = &unk_18B2FAEB8;
  v25[5] = v23;
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = &unk_18B2F9F70;
  v26[5] = v25;
  idCopy = id;
  languageCopy = language;
  effectsCopy = effects;
  settingsCopy = settings;
  selfCopy = self;
  sub_18B29CF64(0, 0, v21, &unk_18B2F9540, v26);
}

@end