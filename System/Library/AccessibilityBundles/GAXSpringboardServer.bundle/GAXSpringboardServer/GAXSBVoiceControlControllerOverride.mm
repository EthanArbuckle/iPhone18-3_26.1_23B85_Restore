@interface GAXSBVoiceControlControllerOverride
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)handleHeadsetButtonUp;
- (BOOL)handleHeadsetButtonUpNotInCall;
- (BOOL)handleHomeButtonHeld;
- (void)bluetoothDeviceEndedVoiceControl:(id)control;
- (void)bluetoothDeviceInitiatedVoiceControl:(id)control;
- (void)handleHeadsetButtonDownWithClickCount:(unint64_t)count;
@end

@implementation GAXSBVoiceControlControllerOverride

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBVoiceControlController" hasInstanceMethod:@"bluetoothDeviceEndedVoiceControl:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SBVoiceControlController" hasInstanceMethod:@"bluetoothDeviceInitiatedVoiceControl:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SBVoiceControlController" hasInstanceMethod:@"handleHeadsetButtonDownWithClickCount:" withFullSignature:{"v", "Q", 0}];
  [validationsCopy validateClass:@"SBVoiceControlController" hasInstanceMethod:@"handleHeadsetButtonUp" withFullSignature:{"B", 0, 0}];
  [validationsCopy validateClass:@"SBVoiceControlController" hasInstanceMethod:@"handleHeadsetButtonUpNotInCall" withFullSignature:{"B", 0, 0}];
  [validationsCopy validateClass:@"SBVoiceControlController" hasInstanceMethod:@"handleHomeButtonHeld" withFullSignature:{"B", 0, 0}];
}

- (BOOL)handleHomeButtonHeld
{
  v3 = +[GAXSpringboard sharedInstance];
  if ([v3 isActive] & 1) != 0 || (objc_msgSend(v3, "wantsSingleAppModeOrAppSelfLockMode"))
  {
    handleHomeButtonHeld = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = GAXSBVoiceControlControllerOverride;
    handleHomeButtonHeld = [(GAXSBVoiceControlControllerOverride *)&v6 handleHomeButtonHeld];
  }

  return handleHomeButtonHeld;
}

- (void)handleHeadsetButtonDownWithClickCount:(unint64_t)count
{
  v5 = +[GAXSpringboard sharedInstance];
  if (([v5 isActive] & 1) == 0 && (objc_msgSend(v5, "wantsSingleAppModeOrAppSelfLockMode") & 1) == 0)
  {
    v6.receiver = self;
    v6.super_class = GAXSBVoiceControlControllerOverride;
    [(GAXSBVoiceControlControllerOverride *)&v6 handleHeadsetButtonDownWithClickCount:count];
  }
}

- (BOOL)handleHeadsetButtonUp
{
  v3 = +[GAXSpringboard sharedInstance];
  if ([v3 isActive] & 1) != 0 || (objc_msgSend(v3, "wantsSingleAppModeOrAppSelfLockMode"))
  {
    handleHeadsetButtonUp = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = GAXSBVoiceControlControllerOverride;
    handleHeadsetButtonUp = [(GAXSBVoiceControlControllerOverride *)&v6 handleHeadsetButtonUp];
  }

  return handleHeadsetButtonUp;
}

- (BOOL)handleHeadsetButtonUpNotInCall
{
  v3 = +[GAXSpringboard sharedInstance];
  if ([v3 isActive] & 1) != 0 || (objc_msgSend(v3, "wantsSingleAppModeOrAppSelfLockMode"))
  {
    handleHeadsetButtonUpNotInCall = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = GAXSBVoiceControlControllerOverride;
    handleHeadsetButtonUpNotInCall = [(GAXSBVoiceControlControllerOverride *)&v6 handleHeadsetButtonUpNotInCall];
  }

  return handleHeadsetButtonUpNotInCall;
}

- (void)bluetoothDeviceInitiatedVoiceControl:(id)control
{
  controlCopy = control;
  v5 = +[GAXSpringboard sharedInstance];
  if (([v5 isActive] & 1) == 0 && (objc_msgSend(v5, "wantsSingleAppModeOrAppSelfLockMode") & 1) == 0)
  {
    v6.receiver = self;
    v6.super_class = GAXSBVoiceControlControllerOverride;
    [(GAXSBVoiceControlControllerOverride *)&v6 bluetoothDeviceInitiatedVoiceControl:controlCopy];
  }
}

- (void)bluetoothDeviceEndedVoiceControl:(id)control
{
  controlCopy = control;
  v5 = +[GAXSpringboard sharedInstance];
  if (([v5 isActive] & 1) == 0 && (objc_msgSend(v5, "wantsSingleAppModeOrAppSelfLockMode") & 1) == 0)
  {
    v6.receiver = self;
    v6.super_class = GAXSBVoiceControlControllerOverride;
    [(GAXSBVoiceControlControllerOverride *)&v6 bluetoothDeviceEndedVoiceControl:controlCopy];
  }
}

@end