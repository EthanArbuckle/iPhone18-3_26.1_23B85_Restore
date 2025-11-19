@interface AXSettings.AssistiveTouch
- (BOOL)assistiveTouchEyeTrackingUseZoomForKeyboardKeys;
- (BOOL)assistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled;
- (BOOL)assistiveTouchScannerPointPickerModeEnabled;
- (BOOL)assistiveTouchScannerSpeechEnabled;
- (BOOL)assistiveTouchScannerSpeechIsInterruptedByScanning;
- (BOOL)assistiveTouchScannerSpeechShouldSpeakTraits;
- (double)assistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout;
- (void)setAssistiveTouchEyeTrackingUseZoomForKeyboardKeys:(BOOL)a3;
- (void)setAssistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout:(double)a3;
- (void)setAssistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled:(BOOL)a3;
- (void)setAssistiveTouchScannerPointPickerModeEnabled:(BOOL)a3;
- (void)setAssistiveTouchScannerSpeechEnabled:(BOOL)a3;
- (void)setAssistiveTouchScannerSpeechIsInterruptedByScanning:(BOOL)a3;
- (void)setAssistiveTouchScannerSpeechShouldSpeakTraits:(BOOL)a3;
- (void)setWithVoiceId:(NSString *)a3 forLanguage:(NSString *)a4 completionHandler:(id)a5;
- (void)setWithVoiceId:(NSString *)a3 forLanguage:(NSString *)a4 rate:(float)a5 volume:(float)a6 pitch:(float)a7 effects:(NSArray *)a8 voiceSettings:(NSDictionary *)a9 completionHandler:(id)a10;
- (void)speechVoiceIdentifierForLanguage:(NSString *)a3 completionHandler:(id)a4;
@end

@implementation AXSettings.AssistiveTouch

- (BOOL)assistiveTouchScannerSpeechEnabled
{
  v2 = self;
  v3 = AXSettings.AssistiveTouch.scannerSpeechEnabled.getter();

  return v3 & 1;
}

- (void)setAssistiveTouchScannerSpeechEnabled:(BOOL)a3
{
  v4 = self;
  AXSettings.AssistiveTouch.scannerSpeechEnabled.setter(a3);
}

- (BOOL)assistiveTouchScannerSpeechShouldSpeakTraits
{
  v2 = self;
  ShouldSpeak = AXSettings.AssistiveTouch.scannerSpeechShouldSpeakTraits.getter();

  return ShouldSpeak & 1;
}

- (void)setAssistiveTouchScannerSpeechShouldSpeakTraits:(BOOL)a3
{
  v4 = self;
  AXSettings.AssistiveTouch.scannerSpeechShouldSpeakTraits.setter(a3);
}

- (BOOL)assistiveTouchScannerSpeechIsInterruptedByScanning
{
  v2 = self;
  IsInterruptedBy = AXSettings.AssistiveTouch.scannerSpeechIsInterruptedByScanning.getter();

  return IsInterruptedBy & 1;
}

- (void)setAssistiveTouchScannerSpeechIsInterruptedByScanning:(BOOL)a3
{
  v4 = self;
  AXSettings.AssistiveTouch.scannerSpeechIsInterruptedByScanning.setter(a3);
}

- (BOOL)assistiveTouchEyeTrackingUseZoomForKeyboardKeys
{
  v2 = self;
  v3 = AXSettings.AssistiveTouch.eyeTrackingUseZoomForKeyboardKeys.getter();

  return v3 & 1;
}

- (void)setAssistiveTouchEyeTrackingUseZoomForKeyboardKeys:(BOOL)a3
{
  v4 = self;
  AXSettings.AssistiveTouch.eyeTrackingUseZoomForKeyboardKeys.setter(a3);
}

- (BOOL)assistiveTouchScannerPointPickerModeEnabled
{
  v2 = self;
  v3 = AXSettings.AssistiveTouch.switchControlPointPickerModeEnabled.getter();

  return v3 & 1;
}

- (void)setAssistiveTouchScannerPointPickerModeEnabled:(BOOL)a3
{
  v4 = self;
  AXSettings.AssistiveTouch.switchControlPointPickerModeEnabled.setter(a3);
}

- (BOOL)assistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled
{
  v2 = self;
  v3 = AXSettings.AssistiveTouch.assistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled.getter();

  return v3 & 1;
}

- (void)setAssistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled:(BOOL)a3
{
  v4 = self;
  AXSettings.AssistiveTouch.assistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled.setter(a3);
}

- (double)assistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout
{
  v2 = self;
  v3 = AXSettings.AssistiveTouch.assistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout.getter();

  return v3;
}

- (void)setAssistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout:(double)a3
{
  v4 = self;
  AXSettings.AssistiveTouch.assistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout.setter(a3);
}

- (void)speechVoiceIdentifierForLanguage:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B64E8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
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
  v15 = a3;
  v16 = self;
  sub_18B29CF64(0, 0, v9, &unk_18B2FAF30, v14);
}

- (void)setWithVoiceId:(NSString *)a3 forLanguage:(NSString *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B64E8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
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
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_18B29CF64(0, 0, v11, &unk_18B2FAF10, v16);
}

- (void)setWithVoiceId:(NSString *)a3 forLanguage:(NSString *)a4 rate:(float)a5 volume:(float)a6 pitch:(float)a7 effects:(NSArray *)a8 voiceSettings:(NSDictionary *)a9 completionHandler:(id)a10
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B64E8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v32 - v20;
  v22 = _Block_copy(a10);
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  *(v23 + 32) = a5;
  *(v23 + 36) = a6;
  *(v23 + 40) = a7;
  *(v23 + 48) = a8;
  *(v23 + 56) = a9;
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
  v27 = a3;
  v28 = a4;
  v29 = a8;
  v30 = a9;
  v31 = self;
  sub_18B29CF64(0, 0, v21, &unk_18B2F9540, v26);
}

@end