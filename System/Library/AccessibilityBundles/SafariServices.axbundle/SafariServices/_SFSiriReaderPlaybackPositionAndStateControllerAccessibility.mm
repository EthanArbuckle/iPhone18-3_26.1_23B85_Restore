@interface _SFSiriReaderPlaybackPositionAndStateControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)prepareStepper:(id)stepper;
@end

@implementation _SFSiriReaderPlaybackPositionAndStateControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_SFSiriReaderPlaybackPositionAndStateController" hasInstanceVariable:@"_stepper" withType:"<_SFSettingsAlertStepperConfiguration>"];
  [validationsCopy validateClass:@"_SFSiriReaderPlaybackPositionAndStateController" hasInstanceMethod:@"prepareStepper:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"_SFSiriReaderPlaybackPositionAndStateController" hasInstanceVariable:@"_isPlaying" withType:"BOOL"];
}

- (void)prepareStepper:(id)stepper
{
  v10.receiver = self;
  v10.super_class = _SFSiriReaderPlaybackPositionAndStateControllerAccessibility;
  [(_SFSiriReaderPlaybackPositionAndStateControllerAccessibility *)&v10 prepareStepper:stepper];
  v4 = accessibilitySafariServicesLocalizedString(@"reader.playback");
  v5 = [(_SFSiriReaderPlaybackPositionAndStateControllerAccessibility *)self safeUIViewForKey:@"_stepper"];
  [v5 setAccessibilityLabel:v4];

  v6 = [(_SFSiriReaderPlaybackPositionAndStateControllerAccessibility *)self safeUIViewForKey:@"_stepper"];
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __79___SFSiriReaderPlaybackPositionAndStateControllerAccessibility_prepareStepper___block_invoke;
  v9[3] = &unk_29F2F2940;
  v9[4] = self;
  [v6 setAccessibilityValueBlock:v9];

  v7 = [(_SFSiriReaderPlaybackPositionAndStateControllerAccessibility *)self safeUIViewForKey:@"_stepper"];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __79___SFSiriReaderPlaybackPositionAndStateControllerAccessibility_prepareStepper___block_invoke_2;
  v8[3] = &unk_29F2F29B8;
  v8[4] = self;
  [v7 _setAccessibilityCustomActionsBlock:v8];
}

@end