@interface GAXSBVoiceControlControllerOverride
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)handleHeadsetButtonUp;
- (BOOL)handleHeadsetButtonUpNotInCall;
- (BOOL)handleHomeButtonHeld;
- (void)bluetoothDeviceEndedVoiceControl:(id)a3;
- (void)bluetoothDeviceInitiatedVoiceControl:(id)a3;
- (void)handleHeadsetButtonDownWithClickCount:(unint64_t)a3;
@end

@implementation GAXSBVoiceControlControllerOverride

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBVoiceControlController" hasInstanceMethod:@"bluetoothDeviceEndedVoiceControl:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBVoiceControlController" hasInstanceMethod:@"bluetoothDeviceInitiatedVoiceControl:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBVoiceControlController" hasInstanceMethod:@"handleHeadsetButtonDownWithClickCount:" withFullSignature:{"v", "Q", 0}];
  [v3 validateClass:@"SBVoiceControlController" hasInstanceMethod:@"handleHeadsetButtonUp" withFullSignature:{"B", 0, 0}];
  [v3 validateClass:@"SBVoiceControlController" hasInstanceMethod:@"handleHeadsetButtonUpNotInCall" withFullSignature:{"B", 0, 0}];
  [v3 validateClass:@"SBVoiceControlController" hasInstanceMethod:@"handleHomeButtonHeld" withFullSignature:{"B", 0, 0}];
}

- (BOOL)handleHomeButtonHeld
{
  v3 = +[GAXSpringboard sharedInstance];
  if ([v3 isActive] & 1) != 0 || (objc_msgSend(v3, "wantsSingleAppModeOrAppSelfLockMode"))
  {
    v4 = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = GAXSBVoiceControlControllerOverride;
    v4 = [(GAXSBVoiceControlControllerOverride *)&v6 handleHomeButtonHeld];
  }

  return v4;
}

- (void)handleHeadsetButtonDownWithClickCount:(unint64_t)a3
{
  v5 = +[GAXSpringboard sharedInstance];
  if (([v5 isActive] & 1) == 0 && (objc_msgSend(v5, "wantsSingleAppModeOrAppSelfLockMode") & 1) == 0)
  {
    v6.receiver = self;
    v6.super_class = GAXSBVoiceControlControllerOverride;
    [(GAXSBVoiceControlControllerOverride *)&v6 handleHeadsetButtonDownWithClickCount:a3];
  }
}

- (BOOL)handleHeadsetButtonUp
{
  v3 = +[GAXSpringboard sharedInstance];
  if ([v3 isActive] & 1) != 0 || (objc_msgSend(v3, "wantsSingleAppModeOrAppSelfLockMode"))
  {
    v4 = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = GAXSBVoiceControlControllerOverride;
    v4 = [(GAXSBVoiceControlControllerOverride *)&v6 handleHeadsetButtonUp];
  }

  return v4;
}

- (BOOL)handleHeadsetButtonUpNotInCall
{
  v3 = +[GAXSpringboard sharedInstance];
  if ([v3 isActive] & 1) != 0 || (objc_msgSend(v3, "wantsSingleAppModeOrAppSelfLockMode"))
  {
    v4 = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = GAXSBVoiceControlControllerOverride;
    v4 = [(GAXSBVoiceControlControllerOverride *)&v6 handleHeadsetButtonUpNotInCall];
  }

  return v4;
}

- (void)bluetoothDeviceInitiatedVoiceControl:(id)a3
{
  v4 = a3;
  v5 = +[GAXSpringboard sharedInstance];
  if (([v5 isActive] & 1) == 0 && (objc_msgSend(v5, "wantsSingleAppModeOrAppSelfLockMode") & 1) == 0)
  {
    v6.receiver = self;
    v6.super_class = GAXSBVoiceControlControllerOverride;
    [(GAXSBVoiceControlControllerOverride *)&v6 bluetoothDeviceInitiatedVoiceControl:v4];
  }
}

- (void)bluetoothDeviceEndedVoiceControl:(id)a3
{
  v4 = a3;
  v5 = +[GAXSpringboard sharedInstance];
  if (([v5 isActive] & 1) == 0 && (objc_msgSend(v5, "wantsSingleAppModeOrAppSelfLockMode") & 1) == 0)
  {
    v6.receiver = self;
    v6.super_class = GAXSBVoiceControlControllerOverride;
    [(GAXSBVoiceControlControllerOverride *)&v6 bluetoothDeviceEndedVoiceControl:v4];
  }
}

@end