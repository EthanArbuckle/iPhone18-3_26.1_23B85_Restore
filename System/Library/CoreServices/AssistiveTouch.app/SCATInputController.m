@interface SCATInputController
- (AXUIClient)userInterfaceClient;
- (BOOL)_handleHoldAtPointForActionIdentifier:(id)a3 start:(BOOL)a4;
- (BOOL)_hasExternalSwitchConfigured;
- (BOOL)_isSwitchWithSource:(id)a3 isEnabled:(id)a4;
- (BOOL)_switchConfigurationRendersDeviceUnusable;
- (BOOL)isMotionTrackingEnabled;
- (BOOL)isOnDeviceEyeTrackingSupported;
- (BOOL)isTadmorInputSourceConnected;
- (SCATInputController)initWithInterDeviceCommunicator:(id)a3;
- (SCATInputControllerDelegate)delegate;
- (id)_allSwitchesInUse;
- (int64_t)role;
- (void)_addMotionTrackingInputSource;
- (void)_configureMFIAccessoryIfNecessary:(id)a3;
- (void)_didReceiveActionWithIdentifier:(id)a3 start:(BOOL)a4 ignoreInputHold:(BOOL)a5;
- (void)_endAction;
- (void)_hideAlertForSource:(unint64_t)a3;
- (void)_hideAlerts;
- (void)_hideStateForSource:(unint64_t)a3;
- (void)_invalidateAssertionForSystemApertureInert;
- (void)_removeInputSource:(id)a3;
- (void)_removeInputSources;
- (void)_removeInputTimers;
- (void)_removeMotionTrackingInputSourceAndClearAlert:(BOOL)a3;
- (void)_restrictSystemApertureLayoutToInert;
- (void)_sendActionWithIdentifier:(id)a3;
- (void)_setupInputTimers;
- (void)_sharedInit;
- (void)_showAlert:(id)a3 forSource:(unint64_t)a4;
- (void)_showHeadTrackingErrorMessageForHeadMovementSwitchConflict;
- (void)_showState:(id)a3 forSource:(unint64_t)a4;
- (void)_updateAccessibilityEventInputSource;
- (void)_updateActionsForSource:(id)a3;
- (void)_updateAirPodsSource;
- (void)_updateCameraHandGestureSource;
- (void)_updateEyeGazeMotionTrackingInputSource;
- (void)_updateGamepadInputSource;
- (void)_updateHeadGesturesInputSource;
- (void)_updateHeadMotionTrackingInputSource;
- (void)_updateInputSources;
- (void)_updateInterDeviceInputSource;
- (void)_updateIsInputCoalesceEnabled;
- (void)_updateIsInputHoldEnabled;
- (void)_updateIsInputRepeatEnabled;
- (void)_updateKeyboardInputSource;
- (void)_updateMFIInputSource;
- (void)_updateMIDIInputSource;
- (void)_updateMotionTrackingForOneness;
- (void)_updateMotionTrackingInputSource;
- (void)_updateRemoteControlInputSource;
- (void)_updateSCNeedsCameraOnLockScreen;
- (void)_updateSCNeedsMicrophoneOnLockScreen;
- (void)_updateScreenInputSource;
- (void)_updateTadmorInputSource;
- (void)_updateTimeIntervalBeforeSendAction;
- (void)_updateTimeIntervalBeforeSendRepeatAction;
- (void)_updateTimeIntervalBetweenDidSendActions;
- (void)airPodsInputSource:(id)a3 didReceiveActionWithIdentifier:(int64_t)a4 start:(BOOL)a5;
- (void)airPodsInputSource:(id)a3 didUpdateAvailability:(BOOL)a4 withDetail:(int64_t)a5;
- (void)cameraInputSource:(id)a3 didUpdateAvailability:(BOOL)a4 withDetail:(unint64_t)a5;
- (void)cameraInputSource:(id)a3 didUpdateState:(id)a4;
- (void)dealloc;
- (void)didBeginLongPressForInputSource:(id)a3;
- (void)didEndLongPressForInputSource:(id)a3;
- (void)didReceiveSwitchEvent:(id)a3 forDeviceWithName:(id)a4;
- (void)handTrackerInputSource:(id)a3 didReceiveActionWithIdentifier:(int64_t)a4 start:(BOOL)a5 ignoreInputHold:(BOOL)a6;
- (void)handTrackerInputSource:(id)a3 didUpdateAvailability:(BOOL)a4 withDetail:(int64_t)a5;
- (void)handleInterDeviceBailOutForInputSource:(id)a3;
- (void)hardwareInputSource:(id)a3 didUpdateAvailability:(BOOL)a4 withDetail:(unint64_t)a5;
- (void)headTrackerInputSource:(id)a3 didReceiveActionWithIdentifier:(int64_t)a4 start:(BOOL)a5 ignoreInputHold:(BOOL)a6;
- (void)headTrackerInputSource:(id)a3 didUpdateAvailability:(BOOL)a4 withDetail:(int64_t)a5;
- (void)headTrackerInputSource:(id)a3 didUpdateState:(id)a4;
- (void)inputSource:(id)a3 forwardSwitchEvent:(id)a4;
- (void)motionTrackerInputSource:(id)a3 didReceivePoint:(CGPoint)a4;
- (void)motionTrackerInputSource:(id)a3 failedToTrackFaceWithError:(id)a4;
- (void)motionTrackerInputSource:(id)a3 isShowingCalibrationUI:(BOOL)a4;
- (void)overrideMotionTrackerLookAtPoint:(CGPoint)a3;
- (void)performSysdiagnose;
- (void)setDelegate:(id)a3 queue:(id)a4;
- (void)setEyeGazeMotionTrackingEnabled:(BOOL)a3;
- (void)setHeadMotionTrackingEnabled:(BOOL)a3;
- (void)setMotionTrackingEnabled:(BOOL)a3;
- (void)setRecipe:(id)a3;
- (void)tadmorInputSource:(id)a3 didReceiveItemSelectionIndex:(int64_t)a4;
- (void)tadmorInputSource:(id)a3 didReceiveMovementDelta:(CGPoint)a4;
- (void)tadmorInputSource:(id)a3 didUpdateSignalQuality:(int64_t)a4;
- (void)updateWhetherSwitchConfigurationHasScreenSwitch;
- (void)updateWhetherSwitchConfigurationRendersDeviceUnusable;
@end

@implementation SCATInputController

- (void)_updateActionsForSource:(id)a3
{
  v4 = a3;
  v6 = [(SCATInputController *)self _allSwitchesInUse];
  v5 = [(SCATInputController *)self recipe];
  [v4 updateWithSwitches:v6 recipe:v5];
}

- (BOOL)_hasExternalSwitchConfigured
{
  if ([(SCATInputController *)self isEnabledSwitchWithSource:SCATSwitchSourceKeyboard]|| [(SCATInputController *)self isEnabledSwitchWithSource:SCATSwitchSourceGamepad]|| [(SCATInputController *)self isEnabledSwitchWithSource:SCATSwitchSourceMIDI]|| [(SCATInputController *)self isEnabledSwitchWithSource:SCATSwitchSourceMFI])
  {
    return 1;
  }

  v4 = SCATSwitchSourceTadmor;

  return [(SCATInputController *)self isEnabledSwitchWithSource:v4];
}

- (BOOL)_handleHoldAtPointForActionIdentifier:(id)a3 start:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (![v6 action])
  {
    v7 = [v6 shortcutIdentifier];

    if (!v7)
    {
      goto LABEL_10;
    }
  }

  v8 = [(SCATInputController *)self recipe];

  if (!v8)
  {
    goto LABEL_10;
  }

  v32 = 0x7FFFFFFFFFFFFFFFLL;
  v31 = 0;
  SCATGetRecipeMappingIndexAndLongPressVariant(v6, &v32, &v31);
  v9 = v32;
  v10 = [(SCATInputController *)self recipe];
  v11 = [v10 mappings];
  v12 = [v11 count];

  if (v9 >= v12)
  {
    v13 = v32;
    v14 = [(SCATInputController *)self recipe];
    v15 = [v14 mappings];
    v29 = v6;
    v30 = [v15 count];
    v28 = v13;
    _AXAssert();
  }

  v16 = v32;
  v17 = [(SCATInputController *)self recipe:v28];
  v18 = [v17 mappings];
  v19 = [v18 count];

  if (v16 < v19)
  {
    v20 = [(SCATInputController *)self recipe];
    v21 = [v20 mappings];
    v22 = [v21 objectAtIndexedSubscript:v32];

    if (v31 || ([v22 action], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isEqualToString:", AXSwitchRecipeMappingActionHoldAtPoint), v23, !v24))
    {
      v26 = 0;
    }

    else
    {
      v25 = [(SCATInputController *)self delegate];
      [v22 holdPoint];
      [v25 inputController:self didReceiveRecipeHoldAtPoint:v4 isDown:?];

      v26 = 1;
    }
  }

  else
  {
LABEL_10:
    v26 = 0;
  }

  return v26;
}

- (void)_didReceiveActionWithIdentifier:(id)a3 start:(BOOL)a4 ignoreInputHold:(BOOL)a5
{
  v6 = a4;
  v8 = a3;
  if ([(SCATInputController *)self shouldIgnoreActions])
  {
    v9 = SWCHLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Input controller is currently ignoring switch actions", buf, 2u);
    }
  }

  else if (![(SCATInputController *)self _handleHoldAtPointForActionIdentifier:v8 start:v6])
  {
    if (v6)
    {
      v12 = _NSConcreteStackBlock;
      v13 = 3221225472;
      v14 = sub_100071F3C;
      v15 = &unk_1001D36E8;
      v16 = self;
      v17 = v8;
      v10 = objc_retainBlock(&v12);
      if (![(SCATInputController *)self isInputHoldEnabled:v12]|| a5)
      {
        (v10[2])(v10);
      }

      else
      {
        v11 = [(SCATInputController *)self inputHoldTimer];
        [(SCATInputController *)self timeIntervalBeforeSendAction];
        [v11 afterDelay:v10 processBlock:?];
      }
    }

    else
    {
      [(SCATInputController *)self _endAction];
    }
  }
}

- (void)_endAction
{
  v4 = [(SCATInputController *)self inputHoldTimer];
  [v4 cancel];
  v3 = [(SCATInputController *)self inputRepeatTimer];
  [v3 cancel];
}

- (void)_sendActionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SCATInputController *)self delegate];
  v6 = [(SCATInputController *)self queue];
  v7 = [(SCATInputController *)self queue];
  if (v7)
  {
    v8 = v7;
    v9 = v4;
    if ([v9 action])
    {
    }

    else
    {
      v10 = [v9 shortcutIdentifier];

      if (!v10)
      {
        goto LABEL_15;
      }
    }

    v11 = [(SCATInputController *)self recipe];

    if (!v11)
    {
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1000723BC;
      v31[3] = &unk_1001D3C80;
      v32 = v5;
      v33 = self;
      v22 = v9;
      v34 = v22;
      [v6 performAsynchronousWritingBlock:v31];
      if (-[SCATInputController isInputRepeatEnabled](self, "isInputRepeatEnabled") && ([v22 action] & 0xFFFFFFFFFFFFFFFELL) == 0x68)
      {
        v23 = [(SCATInputController *)self inputRepeatTimer];
        [(SCATInputController *)self timeIntervalBeforeSendRepeatAction];
        v25 = v24;
        objc_initWeak(&location, self);
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_1000723CC;
        v28[3] = &unk_1001D3438;
        objc_copyWeak(&v30, &location);
        v29 = v22;
        [v23 afterDelay:v28 processBlock:v25];

        objc_destroyWeak(&v30);
        objc_destroyWeak(&location);
      }

      v21 = v32;
      goto LABEL_14;
    }

    location = 0x7FFFFFFFFFFFFFFFLL;
    v40 = 0;
    SCATGetRecipeMappingIndexAndLongPressVariant(v9, &location, &v40);
    v12 = location;
    v13 = [(SCATInputController *)self recipe];
    v14 = [v13 mappings];
    v15 = [v14 count];

    if (v12 >= v15)
    {
      v16 = location;
      [(SCATInputController *)self recipe];
      v27 = v26 = v16;
      _AXAssert();
    }

    v17 = location;
    v18 = [(SCATInputController *)self recipe:v26];
    v19 = [v18 mappings];
    v20 = [v19 count];

    if (v17 < v20)
    {
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1000723A8;
      v35[3] = &unk_1001D5918;
      v36 = v5;
      v37 = self;
      v38 = location;
      v39 = v40;
      [v6 performAsynchronousWritingBlock:v35];
      v21 = v36;
LABEL_14:
    }
  }

LABEL_15:
}

- (void)_updateTimeIntervalBeforeSendAction
{
  v3 = +[AXSettings sharedInstance];
  [v3 assistiveTouchInputHoldDuration];
  [(SCATInputController *)self setTimeIntervalBeforeSendAction:?];
}

- (void)_updateTimeIntervalBeforeSendRepeatAction
{
  v3 = +[AXSettings sharedInstance];
  [v3 assistiveTouchActionRepeatInterval];
  [(SCATInputController *)self setTimeIntervalBeforeSendRepeatAction:?];
}

- (void)_updateTimeIntervalBetweenDidSendActions
{
  v3 = +[AXSettings sharedInstance];
  [v3 assistiveTouchInputCoalescingDuration];
  [(SCATInputController *)self setTimeIntervalBetweenDidSendActions:?];
}

- (void)_updateIsInputHoldEnabled
{
  v3 = +[AXSettings sharedInstance];
  -[SCATInputController setIsInputHoldEnabled:](self, "setIsInputHoldEnabled:", [v3 assistiveTouchInputHoldEnabled]);
}

- (void)_updateIsInputRepeatEnabled
{
  v3 = +[AXSettings sharedInstance];
  -[SCATInputController setIsInputRepeatEnabled:](self, "setIsInputRepeatEnabled:", [v3 assistiveTouchActionRepeatEnabled]);
}

- (void)_updateIsInputCoalesceEnabled
{
  v3 = +[AXSettings sharedInstance];
  -[SCATInputController setIsInputCoalesceEnabled:](self, "setIsInputCoalesceEnabled:", [v3 assistiveTouchInputCoalescingEnabled]);
}

- (void)didBeginLongPressForInputSource:(id)a3
{
  v4 = [(SCATInputController *)self delegate];
  [v4 didBeginLongPressForInputController:self];
}

- (void)didEndLongPressForInputSource:(id)a3
{
  v4 = [(SCATInputController *)self delegate];
  [v4 didEndLongPressForInputController:self];
}

- (void)inputSource:(id)a3 forwardSwitchEvent:(id)a4
{
  v5 = a4;
  v6 = [(SCATInputController *)self interDeviceCommunicator];
  [v6 forwardSwitchEvent:v5];
}

- (void)handleInterDeviceBailOutForInputSource:(id)a3
{
  v4 = AXSSLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Inter-device bail out.", buf, 2u);
  }

  if (CFPreferencesGetAppBooleanValue(@"GatherAnalyticsOnBailOut", @"com.apple.Accessibility.SwitchControl", 0))
  {
    v5 = AXSSLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Performing sysdiagnose on forwarder and receiver.", v9, 2u);
    }

    v6 = [(SCATInputController *)self delegate];
    [v6 performSysdiagnoseForInputController:self];

    v7 = [(SCATInputController *)self interDeviceCommunicator];
    [v7 performSysdiagnoseOnReceiver];
  }

  v8 = [(SCATInputController *)self interDeviceCommunicator];
  [v8 stop];
}

- (void)cameraInputSource:(id)a3 didUpdateAvailability:(BOOL)a4 withDetail:(unint64_t)a5
{
  if (a4)
  {

    [(SCATInputController *)self _hideAlertForSource:1];
  }

  else
  {
    v6 = SCATCameraInputSourceAvailabilityDetailLocalizedDescription(a5);
    [(SCATInputController *)self _showAlert:v6 forSource:1];
    [(SCATInputController *)self _endAction];
  }
}

- (void)cameraInputSource:(id)a3 didUpdateState:(id)a4
{
  var1 = a4.var1;
  v6 = [NSNumber numberWithDouble:a3, a4.var0];
  v9[0] = v6;
  v7 = [NSNumber numberWithDouble:var1];
  v9[1] = v7;
  v8 = [NSArray arrayWithObjects:v9 count:2];

  [(SCATInputController *)self _showState:v8 forSource:1];
}

- (void)headTrackerInputSource:(id)a3 didReceiveActionWithIdentifier:(int64_t)a4 start:(BOOL)a5 ignoreInputHold:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = objc_opt_new();
  [v10 setAction:a4];
  [(SCATInputController *)self _didReceiveActionWithIdentifier:v10 start:v7 ignoreInputHold:v6];
}

- (void)headTrackerInputSource:(id)a3 didUpdateAvailability:(BOOL)a4 withDetail:(int64_t)a5
{
  if (a4)
  {

    [(SCATInputController *)self _hideAlertForSource:1];
  }

  else
  {
    v6 = [a3 localizedDescriptionForAvailabilityDetail:a5];
    [(SCATInputController *)self _showAlert:v6 forSource:1];
    [(SCATInputController *)self _endAction];
  }
}

- (void)headTrackerInputSource:(id)a3 didUpdateState:(id)a4
{
  var1 = a4.var1;
  v6 = [NSNumber numberWithDouble:a3, a4.var0];
  v9[0] = v6;
  v7 = [NSNumber numberWithDouble:var1];
  v9[1] = v7;
  v8 = [NSArray arrayWithObjects:v9 count:2];

  [(SCATInputController *)self _showState:v8 forSource:1];
}

- (void)handTrackerInputSource:(id)a3 didReceiveActionWithIdentifier:(int64_t)a4 start:(BOOL)a5 ignoreInputHold:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = objc_opt_new();
  [v10 setAction:a4];
  [(SCATInputController *)self _didReceiveActionWithIdentifier:v10 start:v7 ignoreInputHold:v6];
}

- (void)handTrackerInputSource:(id)a3 didUpdateAvailability:(BOOL)a4 withDetail:(int64_t)a5
{
  if (a4)
  {

    [(SCATInputController *)self _hideAlertForSource:1];
  }

  else
  {
    v6 = [a3 localizedDescriptionForAvailabilityDetail:a5];
    [(SCATInputController *)self _showAlert:v6 forSource:1];
    [(SCATInputController *)self _endAction];
  }
}

- (void)airPodsInputSource:(id)a3 didReceiveActionWithIdentifier:(int64_t)a4 start:(BOOL)a5
{
  v5 = a5;
  v8 = objc_opt_new();
  [v8 setAction:a4];
  [(SCATInputController *)self _didReceiveActionWithIdentifier:v8 start:v5 ignoreInputHold:0];
}

- (void)airPodsInputSource:(id)a3 didUpdateAvailability:(BOOL)a4 withDetail:(int64_t)a5
{
  if (a4)
  {

    [(SCATInputController *)self _hideAlertForSource:5];
  }

  else
  {
    v6 = [a3 localizedDescriptionForAvailabilityDetail:a5];
    [(SCATInputController *)self _showAlert:v6 forSource:5];
    [(SCATInputController *)self _endAction];
  }
}

- (void)hardwareInputSource:(id)a3 didUpdateAvailability:(BOOL)a4 withDetail:(unint64_t)a5
{
  v6 = a4;
  v8 = a3;
  v9 = SWCHLogHW();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [NSNumber numberWithBool:v6];
    v11 = [NSNumber numberWithUnsignedInteger:a5];
    v27 = 138412802;
    v28 = v8;
    v29 = 2112;
    v30 = v10;
    v31 = 2112;
    v32 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Hardware Input Source: %@ - updated availability: %@ - with detail: %@", &v27, 0x20u);
  }

  if (self->_availableDevices)
  {
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v12 = objc_opt_new();
    availableDevices = self->_availableDevices;
    self->_availableDevices = v12;

    if (!v8)
    {
LABEL_13:
      if (v8)
      {
        v17 = SWCHLogHW();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 138412290;
          v28 = v8;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Removing Hardware Input Source to available devices: %@", &v27, 0xCu);
        }

        [(NSMutableSet *)self->_availableDevices removeObject:v8];
        v18 = SWCHLogHW();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = self->_availableDevices;
          v27 = 138412290;
          v28 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "We now have %@ availableDevices", &v27, 0xCu);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = +[AXSettings sharedInstance];
          v21 = [v20 assistiveTouchScanningMode];

          if (v21 == 6)
          {
            v22 = +[AXSettings sharedInstance];
            v23 = [v22 switchControlFirstLaunchScanningMode];
            v24 = +[AXSettings sharedInstance];
            [v24 setAssistiveTouchScanningMode:v23];
          }
        }
      }

      [(SCATInputController *)self _endAction];
      goto LABEL_22;
    }
  }

  if (!v6)
  {
    goto LABEL_13;
  }

  v14 = SWCHLogHW();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412290;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Adding Hardware Input Source to available devices: %@", &v27, 0xCu);
  }

  [(NSMutableSet *)self->_availableDevices addObject:v8];
  v15 = SWCHLogHW();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = self->_availableDevices;
    v27 = 138412290;
    v28 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "We now have %@ availableDevices", &v27, 0xCu);
  }

  [(SCATInputController *)self _configureMFIAccessoryIfNecessary:v8];
  [(SCATInputController *)self _hideAlertForSource:2];
LABEL_22:
  if (![(NSMutableSet *)self->_availableDevices count]&& [(SCATInputController *)self _hasExternalSwitchConfigured])
  {
    v25 = SWCHLogHW();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "No available devices and there is an external switch that is configured and enabled.", &v27, 2u);
    }

    v26 = SCATHardwareInputSourceAvailabilityDetailLocalizedDescription(a5);
    [(SCATInputController *)self _showAlert:v26 forSource:2];
  }

  [(SCATInputController *)self updateWhetherSwitchConfigurationRendersDeviceUnusable];
}

- (void)motionTrackerInputSource:(id)a3 didReceivePoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(SCATInputController *)self delegate];
  [v7 inputController:self didReceivePoint:{x, y}];

  if ([(SCATInputController *)self motionTrackerLostFace])
  {
    v8 = [(SCATInputController *)self motionTrackerDelayedShowAlertTimer];

    if (v8)
    {
      v9 = [(SCATInputController *)self motionTrackerDelayedShowAlertTimer];
      [v9 invalidate];

      [(SCATInputController *)self setMotionTrackerDelayedShowAlertTimer:0];
    }

    [(SCATInputController *)self _hideAlertForMotionTrackerInputSource];
    [(SCATInputController *)self setMotionTrackerErrorCode:0x7FFFFFFFFFFFFFFFLL];

    [(SCATInputController *)self setMotionTrackerLostFace:0];
  }
}

- (void)motionTrackerInputSource:(id)a3 isShowingCalibrationUI:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    [(SCATInputController *)self setShouldIgnoreActions:1];
    v7 = [(SCATInputController *)self ignoreActionsTimer];
    v8 = SWCHLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [NSNumber numberWithDouble:60.0];
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Is showing calibration UI. Ignoring switch actions until calibration is done or for time: %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10007351C;
    v11[3] = &unk_1001D56F8;
    v12[1] = 0x404E000000000000;
    objc_copyWeak(v12, buf);
    [v7 afterDelay:v11 processBlock:60.0];
    objc_destroyWeak(v12);
    objc_destroyWeak(buf);
  }

  else
  {
    v10 = SWCHLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No longer showing calibration UI. Will stop ignoring switch actions.", buf, 2u);
    }

    [(SCATInputController *)self setShouldIgnoreActions:0];
    v7 = [(SCATInputController *)self ignoreActionsTimer];
    [v7 cancel];
  }
}

- (void)motionTrackerInputSource:(id)a3 failedToTrackFaceWithError:(id)a4
{
  v6 = a3;
  v7 = [a4 code];
  v8 = v7;
  if (v7 > 9 || ((1 << v7) & 0x281) == 0)
  {
    if (![(SCATInputController *)self motionTrackerLostFace]|| [(SCATInputController *)self motionTrackerErrorCode]!= v8)
    {
      [(SCATInputController *)self setMotionTrackerLostFace:1];
      v14 = [(SCATInputController *)self motionTrackerDelayedShowAlertTimer];
      [v14 invalidate];

      [(SCATInputController *)self setMotionTrackerDelayedShowAlertTimer:0];
      if (v8 == 11)
      {
        v15 = 5.0;
      }

      else
      {
        v15 = 1.0;
      }

      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100073890;
      v17[3] = &unk_1001D3658;
      v17[4] = self;
      v18 = v6;
      v16 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v17 block:v15];
      [(SCATInputController *)self setMotionTrackerDelayedShowAlertTimer:v16];
    }

    goto LABEL_16;
  }

  v9 = AXSSHumanReadableDescriptionForMotionTrackingErrorCode();
  if (![v6 isCalibrationPresented])
  {
    [(SCATInputController *)self _showAlert:v9 forSource:1];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100073888;
    v19[3] = &unk_1001D5940;
    v19[4] = self;
    v11 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v19 block:5.0];
    [(SCATInputController *)self setMotionTrackerDelayedHideAlertTimer:v11];

    v12 = SWCHLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Switching to Item mode because Motion Tracker ran into error: %@.", buf, 0xCu);
    }

    v13 = [(SCATInputController *)self delegate];
    [v13 inputControllerPointPickerInterrupted:self];

LABEL_16:
    [(SCATInputController *)self setMotionTrackerErrorCode:v8];
    goto LABEL_17;
  }

  v10 = SWCHLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Ignoring error from Motion Tracker because Calibration is presented. Error: %@.", buf, 0xCu);
  }

LABEL_17:
}

- (void)_showHeadTrackingErrorMessageForHeadMovementSwitchConflict
{
  v3 = sub_100042B24(@"HEAD_MOVEMENT_SWITCHES_PREVENTING_HEAD_TRACKING");
  [(SCATInputController *)self _showAlert:v3 forSource:1];
}

- (void)_updateMotionTrackingForOneness
{
  v3 = +[AXSpringBoardServer server];
  v4 = [v3 isContinuitySessionActive];

  if (v4)
  {
    v5 = [(SCATInputController *)self delegate];
    [v5 inputControllerPointPickerInterrupted:self];
  }
}

- (void)_configureMFIAccessoryIfNecessary:(id)a3
{
  v24 = a3;
  v4 = [v24 isMFIInputSource];
  v5 = v24;
  if (v4)
  {
    v6 = v24;
    v7 = SCATSwitchSourceMFI;
    v8 = [(SCATInputController *)self isEnabledSwitchWithSource:SCATSwitchSourceMFI];
    v9 = v8;
    NSLog(@"Attempting MFI autoconfigure : %d", v8);
    if (v9)
    {
LABEL_19:

      v5 = v24;
      goto LABEL_20;
    }

    v10 = +[AXSettings sharedInstance];
    v11 = [v10 assistiveTouchSwitches];
    v12 = [v11 mutableCopy];

    if (!v12)
    {
      v12 = objc_alloc_init(NSMutableSet);
    }

    NSLog(@"Available buttons: %d", [v6 availableButtons]);
    if ([v6 availableButtons] < 1)
    {
      v14 = 0;
    }

    else
    {
      v13 = sub_100042B24(@"MadeForIphone_HardwareSwitch_Select");
      v14 = [AXSwitch switchWithAction:103 name:v13 source:v7 type:SCATSwitchTypeRequired];

      [v14 setButtonNumber:1];
      [v12 addObject:v14];
    }

    if ([v6 availableButtons] <= 1)
    {
      v16 = 0;
      if (!v14)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v15 = sub_100042B24(@"MadeForIphone_HardwareSwitch_MoveToNextItem");
      v16 = [AXSwitch switchWithAction:104 name:v15 source:v7 type:SCATSwitchTypeRequired];

      [v16 setButtonNumber:2];
      [v12 addObject:v16];
      if (!v14)
      {
        goto LABEL_14;
      }
    }

    if (!v16)
    {
      v17 = 0;
      goto LABEL_17;
    }

LABEL_14:
    if (!v14 || !v16)
    {
      goto LABEL_18;
    }

    v17 = 1;
LABEL_17:
    v18 = +[AXSettings sharedInstance];
    [v18 setSwitchControlScanningStyle:v17];

LABEL_18:
    v19 = [v6 productName];
    [v14 setProductName:v19];

    v20 = [v6 productName];
    [v16 setProductName:v20];

    v21 = [v6 manufacturerName];
    [v14 setManufacturerName:v21];

    v22 = [v6 manufacturerName];
    [v16 setManufacturerName:v22];

    NSLog(@"Auto Configuring Setting up switches: %@", v12);
    v23 = +[AXSettings sharedInstance];
    [v23 setAssistiveTouchSwitches:v12];

    goto LABEL_19;
  }

LABEL_20:

  _objc_release_x1(v4, v5);
}

- (void)_removeInputSource:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = v3;
    [v3 stopRunning];
    [v4 setDelegate:0 queue:0];
  }
}

- (void)_removeInputSources
{
  v3 = [(SCATInputController *)self headGestureSource];
  [(SCATInputController *)self _removeInputSource:v3];

  [(SCATInputController *)self setHeadGestureSource:0];
  v4 = [(SCATInputController *)self handGestureSource];
  [(SCATInputController *)self _removeInputSource:v4];

  [(SCATInputController *)self setHandGestureSource:0];
  [(SCATInputController *)self _hideAlertForSource:1];
  [(SCATInputController *)self _hideStateForSource:1];
  v5 = [(SCATInputController *)self keyboardInputSource];
  v6 = [(SCATInputController *)self mfiInputSource];
  v7 = [(SCATInputController *)self atvRemoteInputSource];
  v8 = [(SCATInputController *)self midiInputSource];
  v9 = [(SCATInputController *)self gamepadInputSource];
  v10 = [NSArray axArrayByIgnoringNilElementsWithCount:5, v5, v6, v7, v8, v9];
  v11 = [v10 mutableCopy];

  v12 = [(SCATInputController *)self airPodsSource];
  [v11 axSafelyAddObject:v12];

  v13 = [(SCATInputController *)self tadmorInputSource];
  [v11 axSafelyAddObject:v13];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v35;
    do
    {
      v18 = 0;
      do
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v34 + 1) + 8 * v18);
        if (v19)
        {
          [*(*(&v34 + 1) + 8 * v18) stopRunning];
          [v19 setDelegate:0 queue:0];
          [(SCATInputController *)self _hideAlertForSource:2];
        }

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v16);
  }

  [(SCATInputController *)self setKeyboardInputSource:0];
  [(SCATInputController *)self setMfiInputSource:0];
  [(SCATInputController *)self setAtvRemoteInputSource:0];
  [(SCATInputController *)self setMidiInputSource:0];
  [(SCATInputController *)self setGamepadInputSource:0];
  [(SCATInputController *)self setAirPodsSource:0];
  [(SCATInputController *)self setTadmorInputSource:0];
  v20 = [(SCATInputController *)self screenInputSource];
  v21 = v20;
  if (v20)
  {
    [v20 stopRunning];
    [v21 setDelegate:0 queue:0];
    [(SCATInputController *)self setScreenInputSource:0];
  }

  v22 = [(SCATInputController *)self interDeviceInputSource];
  [v22 stopRunning];

  v23 = [(SCATInputController *)self interDeviceInputSource];
  [v23 setDelegate:0 queue:0];

  [(SCATInputController *)self setInterDeviceInputSource:0];
  v24 = [(SCATInputController *)self motionTrackerInputSource];
  v25 = v24;
  if (v24)
  {
    [v24 stopRunning];
    [v25 setDelegate:0 queue:0];
    [(SCATInputController *)self setMotionTrackerInputSource:0];
    v26 = [(SCATInputController *)self motionTrackerDelayedShowAlertTimer];

    if (v26)
    {
      v27 = [(SCATInputController *)self motionTrackerDelayedShowAlertTimer];
      [v27 invalidate];

      [(SCATInputController *)self setMotionTrackerDelayedShowAlertTimer:0];
    }

    v28 = [(SCATInputController *)self motionTrackerDelayedHideAlertTimer];
    v29 = [v28 isValid];

    if ((v29 & 1) == 0)
    {
      [(SCATInputController *)self _hideAlertForMotionTrackerInputSource];
    }
  }

  v30 = [(SCATInputController *)self accessibilityEventInputSource];
  v31 = v30;
  if (v30)
  {
    [v30 stopRunning];
    [v31 setDelegate:0 queue:0];
    [(SCATInputController *)self setAccessibilityEventInputSource:0];
  }

  v32 = [(SCATInputController *)self remoteControlInputSource];
  v33 = v32;
  if (v32)
  {
    [v32 stopRunning];
    [v33 setDelegate:0 queue:0];
    [(SCATInputController *)self setRemoteControlInputSource:0];
  }
}

- (void)_updateKeyboardInputSource
{
  v8 = [(SCATInputController *)self keyboardInputSource];
  v3 = [(SCATInputController *)self isEnabledSwitchWithSource:SCATSwitchSourceKeyboard];
  v4 = v8;
  if (v3)
  {
    v5 = v8 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v8 = objc_opt_new();
    [(SCATInputController *)self setKeyboardInputSource:v8];
    [(SCATInputController *)self _updateActionsForSource:v8];
    v6 = +[AXAccessQueue mainAccessQueue];
    [v8 setDelegate:self queue:v6];

    v3 = [v8 startRunning];
  }

  else if (!v8 || ((v3 ^ 1) & 1) != 0)
  {
    if (v8)
    {
      v7 = v3;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      goto LABEL_10;
    }

    [v8 stopRunning];
    [v8 setDelegate:0 queue:0];
    [(SCATInputController *)self setKeyboardInputSource:0];
    v3 = [(SCATInputController *)self _hideAlertForSource:2];
  }

  else
  {
    v3 = [(SCATInputController *)self _updateActionsForSource:v8];
  }

  v4 = v8;
LABEL_10:

  _objc_release_x1(v3, v4);
}

- (void)_updateMIDIInputSource
{
  v8 = [(SCATInputController *)self midiInputSource];
  v3 = [(SCATInputController *)self isEnabledSwitchWithSource:SCATSwitchSourceMIDI];
  v4 = [NSNumber numberWithBool:v8 != 0];
  v7 = [NSNumber numberWithBool:v3];
  AXPrintLine();

  v5 = v8;
  if (v8 || !v3)
  {
    if (v8 == 0 || !v3)
    {
      if (v8 == 0 || v3)
      {
        goto LABEL_9;
      }

      [v8 stopRunning];
      [v8 setDelegate:0 queue:0];
      [(SCATInputController *)self setMidiInputSource:0];
      [(SCATInputController *)self _hideAlertForSource:2];
    }

    else
    {
      [(SCATInputController *)self _updateActionsForSource:v8, v4, v7];
    }
  }

  else
  {
    v8 = objc_opt_new();
    [(SCATInputController *)self setMidiInputSource:v8, v4, v7];
    [(SCATInputController *)self _updateActionsForSource:v8];
    v6 = +[AXAccessQueue mainAccessQueue];
    [v8 setDelegate:self queue:v6];

    [v8 startRunning];
  }

  v5 = v8;
LABEL_9:
}

- (void)_updateMFIInputSource
{
  v6 = [(SCATInputController *)self mfiInputSource];
  v3 = [(SCATInputController *)self isEnabledSwitchWithSource:SCATSwitchSourceMFI];
  v4 = v6;
  if (v6)
  {
    if (!v3)
    {
      goto LABEL_6;
    }

    v3 = [(SCATInputController *)self _updateActionsForSource:v6];
  }

  else
  {
    v6 = objc_opt_new();
    [(SCATInputController *)self setMfiInputSource:v6];
    [(SCATInputController *)self _updateActionsForSource:v6];
    v5 = +[AXAccessQueue mainAccessQueue];
    [v6 setDelegate:self queue:v5];

    v3 = [v6 startRunning];
  }

  v4 = v6;
LABEL_6:

  _objc_release_x1(v3, v4);
}

- (void)_updateScreenInputSource
{
  v9 = [(SCATInputController *)self screenInputSource];
  v3 = [(SCATInputController *)self isEnabledSwitchWithSource:SCATSwitchSourceScreen];
  if (v3)
  {
    v4 = v9 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v9 = objc_opt_new();
    [(SCATInputController *)self setScreenInputSource:v9];
    [(SCATInputController *)self _updateActionsForSource:v9];
    v8 = +[AXAccessQueue mainAccessQueue];
    [v9 setDelegate:self queue:v8];

    [v9 startRunning];
  }

  else
  {
    if (v3)
    {
      v5 = v9 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      if (v9)
      {
        v6 = v3;
      }

      else
      {
        v6 = 1;
      }

      if (v3)
      {
        v7 = v9;
      }

      else
      {
        v7 = 0;
      }

      if (v6)
      {
        v9 = v7;
      }

      else
      {
        [v9 stopRunning];
        [v9 setDelegate:0 queue:0];
        [(SCATInputController *)self setScreenInputSource:0];
      }
    }

    else
    {
      [(SCATInputController *)self _updateActionsForSource:v9];
    }
  }

  [(SCATInputController *)self updateWhetherSwitchConfigurationHasScreenSwitch];
  [(SCATInputController *)self updateWhetherSwitchConfigurationRendersDeviceUnusable];
}

- (void)_updateGamepadInputSource
{
  v9 = [(SCATInputController *)self gamepadInputSource];
  v3 = [(SCATInputController *)self isEnabledSwitchWithSource:SCATSwitchSourceGamepad];
  v4 = v9;
  if (v3)
  {
    v5 = v9 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v9 = objc_opt_new();
    [(SCATInputController *)self setGamepadInputSource:v9];
    [(SCATInputController *)self _updateActionsForSource:v9];
    v8 = +[AXAccessQueue mainAccessQueue];
    [v9 setDelegate:self queue:v8];

    v3 = [v9 startRunning];
  }

  else
  {
    if (v3)
    {
      v6 = v9 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (v9)
      {
        v7 = v3;
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        goto LABEL_17;
      }

      [v9 stopRunning];
      [v9 setDelegate:0 queue:0];
      [(SCATInputController *)self setGamepadInputSource:0];
      v3 = [(SCATInputController *)self _hideAlertForSource:2];
    }

    else
    {
      v3 = [(SCATInputController *)self _updateActionsForSource:v9];
    }
  }

  v4 = v9;
LABEL_17:

  _objc_release_x1(v3, v4);
}

- (void)_updateTadmorInputSource
{
  v3 = [(SCATInputController *)self tadmorInputSource];
  if (v3)
  {
    v5 = v3;
    [(SCATInputController *)self _updateActionsForSource:v3];
  }

  else
  {
    v5 = objc_opt_new();
    [(SCATInputController *)self setTadmorInputSource:v5];
    [(SCATInputController *)self _updateActionsForSource:v5];
    v4 = +[AXAccessQueue mainAccessQueue];
    [v5 setDelegate:self queue:v4];

    [v5 startRunning];
  }
}

- (void)tadmorInputSource:(id)a3 didReceiveMovementDelta:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(SCATInputController *)self delegate];
  [v7 inputController:self didReceiveMovementDelta:{x, y}];
}

- (void)tadmorInputSource:(id)a3 didUpdateSignalQuality:(int64_t)a4
{
  v6 = [(SCATInputController *)self delegate];
  [v6 inputController:self didUpdateSignalQuality:a4];
}

- (void)tadmorInputSource:(id)a3 didReceiveItemSelectionIndex:(int64_t)a4
{
  v6 = [(SCATInputController *)self delegate];
  [v6 inputController:self didReceiveItemSelectionIndex:a4];
}

- (BOOL)isTadmorInputSourceConnected
{
  v2 = [(SCATInputController *)self tadmorInputSource];
  v3 = [v2 numberOfDevicesConnected] != 0;

  return v3;
}

- (void)_updateAirPodsSource
{
  v3 = [(SCATInputController *)self airPodsSource];
  v4 = [(SCATInputController *)self isEnabledSwitchWithSource:SCATSwitchSourceHeadGesture];
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v9 = SWCHLogHW();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "HeadGestures: Creating a new airPodsInputSource and updating actions for airPodsInputSource", buf, 2u);
    }

    v3 = objc_opt_new();
    [(SCATInputController *)self setAirPodsSource:v3];
    [(SCATInputController *)self _updateActionsForSource:v3];
    v10 = +[AXAccessQueue mainAccessQueue];
    [v3 setDelegate:self queue:v10];

    [v3 startRunning];
  }

  else
  {
    if (v4)
    {
      v6 = v3 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (v3)
      {
        v7 = v4;
      }

      else
      {
        v7 = 1;
      }

      if ((v7 & 1) == 0)
      {
        v8 = SWCHLogHW();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "HeadGestures: No switches configured for airPodsInputSource. Tearing it down.", v13, 2u);
        }

        [v3 stopRunning];
        [(SCATInputController *)self setAirPodsSource:0];
        [(SCATInputController *)self _hideAlertForSource:2];
      }
    }

    else
    {
      v11 = SWCHLogHW();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "HeadGestures: Updating actions for airPodsInputSource", v14, 2u);
      }

      [(SCATInputController *)self _updateActionsForSource:v3];
    }
  }
}

- (void)_updateHeadGesturesInputSource
{
  v3 = [(SCATInputController *)self headGestureSource];
  v4 = [(SCATInputController *)self isEnabledSwitchWithSource:SCATSwitchSourceCamera];
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v9 = SWCHLogHW();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "HeadGestures: Creating a new HeadTracker and updating actions for headGestureSource.", buf, 2u);
    }

    v3 = objc_opt_new();
    [(SCATInputController *)self setHeadGestureSource:v3];
    [(SCATInputController *)self _updateActionsForSource:v3];
    v10 = +[AXAccessQueue mainAccessQueue];
    [v3 setDelegate:self queue:v10];

    [v3 startRunning];
  }

  else
  {
    if (v4)
    {
      v6 = v3 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (v3)
      {
        v7 = v4;
      }

      else
      {
        v7 = 1;
      }

      if (v4)
      {
        v8 = v3;
      }

      else
      {
        v8 = 0;
      }

      if (v7)
      {
        v3 = v8;
      }

      else
      {
        v13 = SWCHLogHW();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "HeadGestures: No switches configured for headGestureSource. Tearing it down.", v14, 2u);
        }

        [v3 stopRunning];
        [v3 setDelegate:0 queue:0];
        [(SCATInputController *)self setHeadGestureSource:0];
        [(SCATInputController *)self _hideAlertForSource:1];
        [(SCATInputController *)self _hideStateForSource:1];
      }
    }

    else
    {
      v11 = SWCHLogHW();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "HeadGestures: Updating actions for headGestureSource.", v15, 2u);
      }

      [(SCATInputController *)self _updateActionsForSource:v3];
    }
  }

  [(SCATInputController *)self _updateSCNeedsCameraOnLockScreen];
}

- (void)_updateCameraHandGestureSource
{
  v3 = [(SCATInputController *)self handGestureSource];
  v4 = [(SCATInputController *)self isEnabledSwitchWithSource:SCATSwitchSourceCameraHandGesture];
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v9 = SWCHLogHW();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "HandGestures: Creating a new HandTracker and updating actions for handGestureSource", buf, 2u);
    }

    v3 = objc_opt_new();
    [(SCATInputController *)self setHandGestureSource:v3];
    [(SCATInputController *)self _updateActionsForSource:v3];
    v10 = +[AXAccessQueue mainAccessQueue];
    [v3 setDelegate:self queue:v10];

    [v3 startRunning];
  }

  else
  {
    if (v4)
    {
      v6 = v3 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (v3)
      {
        v7 = v4;
      }

      else
      {
        v7 = 1;
      }

      if (v4)
      {
        v8 = v3;
      }

      else
      {
        v8 = 0;
      }

      if (v7)
      {
        v3 = v8;
      }

      else
      {
        v13 = SWCHLogHW();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "HandGestures: No switches configured for handGestureSource. Tearing it down.", v14, 2u);
        }

        [v3 stopRunning];
        [v3 setDelegate:0 queue:0];
        [(SCATInputController *)self setHandGestureSource:0];
        [(SCATInputController *)self _hideAlertForSource:1];
        [(SCATInputController *)self _hideStateForSource:1];
      }
    }

    else
    {
      v11 = SWCHLogHW();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "HandGestures: Updating actions for handGestureSource", v15, 2u);
      }

      [(SCATInputController *)self _updateActionsForSource:v3];
    }
  }
}

- (void)_updateInterDeviceInputSource
{
  v3 = [(SCATInputController *)self interDeviceInputSource];

  if (!v3)
  {
    v4 = objc_opt_new();
    [(SCATInputController *)self setInterDeviceInputSource:v4];
    [(SCATInputController *)self _updateActionsForSource:v4];
    v5 = +[AXAccessQueue mainAccessQueue];
    [v4 setDelegate:self queue:v5];

    [v4 startRunning];
  }

  v6 = [(SCATInputController *)self interDeviceInputSource];
  [(SCATInputController *)self _updateActionsForSource:v6];
}

- (BOOL)isMotionTrackingEnabled
{
  if ([(SCATInputController *)self headMotionTrackingEnabled])
  {
    return 1;
  }

  return [(SCATInputController *)self eyeGazeMotionTrackingEnabled];
}

- (void)setHeadMotionTrackingEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = SWCHLogInputController();
  v6 = os_signpost_id_generate(v5);

  v7 = SWCHLogInputController();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "setupHeadTracking", "", buf, 2u);
  }

  headMotionTrackingEnabled = self->_headMotionTrackingEnabled;
  self->_headMotionTrackingEnabled = v3;
  if (headMotionTrackingEnabled != v3)
  {
    [(SCATInputController *)self _updateMotionTrackingInputSource];
  }

  if (v3)
  {
    [(SCATInputController *)self _updateHeadMotionTrackingInputSource];
  }

  v10 = SWCHLogInputController();
  v11 = v10;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v6, "setupHeadTracking", "", v12, 2u);
  }
}

- (BOOL)isOnDeviceEyeTrackingSupported
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {

    LOBYTE(v2) = AXDeviceSupportsOnDeviceEyeTracking();
  }

  return v2;
}

- (void)setEyeGazeMotionTrackingEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = SWCHLogInputController();
  v6 = os_signpost_id_generate(v5);

  v7 = SWCHLogInputController();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "setupEyeTracking", "", buf, 2u);
  }

  eyeGazeMotionTrackingEnabled = self->_eyeGazeMotionTrackingEnabled;
  self->_eyeGazeMotionTrackingEnabled = v3;
  if (eyeGazeMotionTrackingEnabled != v3)
  {
    [(SCATInputController *)self _updateMotionTrackingInputSource];
  }

  if (v3)
  {
    [(SCATInputController *)self _updateEyeGazeMotionTrackingInputSource];
  }

  v10 = SWCHLogInputController();
  v11 = v10;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v6, "setupEyeTracking", "", v12, 2u);
  }
}

- (void)setMotionTrackingEnabled:(BOOL)a3
{
  v3 = SWCHLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_100129C90(v3);
  }
}

- (void)overrideMotionTrackerLookAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(SCATInputController *)self isMotionTrackingEnabled])
  {
    v6 = [(SCATInputController *)self motionTrackerInputSource];

    if (v6)
    {
      v7 = [(SCATInputController *)self motionTrackerInputSource];
      [v7 overrideLookAtPoint:{x, y}];
    }
  }
}

- (void)_updateMotionTrackingInputSource
{
  v4 = [(SCATInputController *)self motionTrackerInputSource];
  v3 = [(SCATInputController *)self cameraInputSource];

  if ([(SCATInputController *)self isMotionTrackingEnabled]&& v3)
  {
    [(SCATInputController *)self _showHeadTrackingErrorMessageForHeadMovementSwitchConflict];
  }

  if (v3 && v4)
  {
    [(SCATInputController *)self _removeMotionTrackingInputSourceAndClearAlert:0];
  }

  if ([(SCATInputController *)self isMotionTrackingEnabled]|| !v3)
  {
    if ([(SCATInputController *)self isMotionTrackingEnabled]&& !v4 && !v3)
    {
      [(SCATInputController *)self _addMotionTrackingInputSource];
      goto LABEL_20;
    }
  }

  else
  {
    [(SCATInputController *)self _hideAlertForMotionTrackerInputSource];
    [(SCATInputController *)self isMotionTrackingEnabled];
  }

  if ([(SCATInputController *)self isMotionTrackingEnabled]&& v4)
  {
    [(SCATInputController *)self _updateActionsForSource:v4];
  }

  else if (![(SCATInputController *)self isMotionTrackingEnabled]&& v4)
  {
    [(SCATInputController *)self _removeMotionTrackingInputSourceAndClearAlert:1];
  }

LABEL_20:
}

- (void)_addMotionTrackingInputSource
{
  v8 = objc_opt_new();
  [(SCATInputController *)self setMotionTrackerInputSource:v8];
  [(SCATInputController *)self _updateActionsForSource:v8];
  v3 = +[AXAccessQueue mainAccessQueue];
  [v8 setDelegate:self queue:v3];

  v4 = +[AXSettings sharedInstance];
  [v4 switchControlCameraPointPickerSensitivity];
  [v8 setSensitivity:?];

  v5 = +[AXSettings sharedInstance];
  [v8 setMotionTrackingMode:{objc_msgSend(v5, "switchControlCameraPointPickerMode")}];

  v6 = +[AXSettings sharedInstance];
  [v6 switchControlCameraPointPickerMovementToleranceInJoystickMode];
  [v8 setJoystickModeMovementThreshold:?];

  [(SCATInputController *)self setMotionTrackerErrorCode:0x7FFFFFFFFFFFFFFFLL];
  [(SCATInputController *)self _updateSCNeedsCameraOnLockScreen];
  if ([(SCATInputController *)self isOnDeviceEyeTrackingSupported]&& [(SCATInputController *)self eyeGazeMotionTrackingEnabled])
  {
    [(SCATInputController *)self _updateEyeGazeMotionTrackingInputSource];
  }

  else
  {
    [(SCATInputController *)self _updateHeadMotionTrackingInputSource];
  }

  v7 = [(SCATInputController *)self motionTrackerInputSource];
  [v7 startRunning];
}

- (void)_updateHeadMotionTrackingInputSource
{
  v3 = [(SCATInputController *)self motionTrackerInputSource];
  if (v3)
  {
    v4 = v3;
    v5 = [(SCATInputController *)self motionTrackerInputSource];
    v6 = [v5 isHeadTracking];

    if ((v6 & 1) == 0)
    {
      v8 = [NSSet setWithObjects:&off_1001E5478, 0];
      v7 = [(SCATInputController *)self motionTrackerInputSource];
      [v7 setAllowedTrackingTypes:v8];
    }
  }
}

- (void)_updateEyeGazeMotionTrackingInputSource
{
  if ([(SCATInputController *)self isOnDeviceEyeTrackingSupported])
  {
    v3 = [(SCATInputController *)self motionTrackerInputSource];
    if (v3)
    {
      v4 = v3;
      v5 = [(SCATInputController *)self motionTrackerInputSource];
      v6 = [v5 isEyeTracking];

      if ((v6 & 1) == 0)
      {
        v8 = [NSSet setWithObjects:&off_1001E5490, 0];
        v7 = [(SCATInputController *)self motionTrackerInputSource];
        [v7 setAllowedTrackingTypes:v8];
      }
    }
  }
}

- (void)_removeMotionTrackingInputSourceAndClearAlert:(BOOL)a3
{
  v3 = a3;
  v5 = [(SCATInputController *)self motionTrackerInputSource];
  [v5 stopRunning];

  v6 = [(SCATInputController *)self motionTrackerInputSource];
  [v6 setDelegate:0 queue:0];

  [(SCATInputController *)self setMotionTrackerInputSource:0];
  v7 = [(SCATInputController *)self motionTrackerDelayedShowAlertTimer];

  if (v7)
  {
    v8 = [(SCATInputController *)self motionTrackerDelayedShowAlertTimer];
    [v8 invalidate];

    [(SCATInputController *)self setMotionTrackerDelayedShowAlertTimer:0];
  }

  v9 = [(SCATInputController *)self motionTrackerDelayedHideAlertTimer];
  v10 = [v9 isValid];

  if (!v10 && v3)
  {
    [(SCATInputController *)self _hideAlertForMotionTrackerInputSource];
  }

  [(SCATInputController *)self setMotionTrackerErrorCode:0x7FFFFFFFFFFFFFFFLL];

  [(SCATInputController *)self _updateSCNeedsCameraOnLockScreen];
}

- (void)_updateSCNeedsCameraOnLockScreen
{
  v3 = [(SCATInputController *)self motionTrackerInputSource];
  if (v3)
  {

    v4 = 1;
  }

  else
  {
    v5 = [(SCATInputController *)self cameraInputSource];
    v4 = v5 != 0;
  }

  __AXSSetAccessibilityNeedsCameraOnLockScreen(v4);
}

- (void)_updateSCNeedsMicrophoneOnLockScreen
{
  v2 = [(SCATInputController *)self isEnabledSwitchWithSource:SCATSwitchSourceSound];
  v3 = AXLogSoundActions();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      sub_100129D18(v3);
    }
  }

  else if (v4)
  {
    sub_100129CD4(v3);
  }

  _AXSSetAccessibilityNeedsMicrophoneOnLockScreen();
}

- (void)_updateAccessibilityEventInputSource
{
  v8 = [(SCATInputController *)self accessibilityEventInputSource];
  if ([(SCATInputController *)self isEnabledSwitchWithSource:SCATSwitchSourceAccessibility]|| [(SCATInputController *)self isEnabledSwitchWithSource:SCATSwitchSourceBackTap])
  {
    [(SCATInputController *)self _updateSCNeedsMicrophoneOnLockScreen];
  }

  else
  {
    v7 = [(SCATInputController *)self isEnabledSwitchWithSource:SCATSwitchSourceSound];
    [(SCATInputController *)self _updateSCNeedsMicrophoneOnLockScreen];
    if ((v7 & 1) == 0 && ![(SCATInputController *)self isEnabledSwitchWithSource:SCATSwitchSourceHandGestures]&& ![(SCATInputController *)self isEnabledSwitchWithSource:SCATSwitchSourceGamepad]&& ![(SCATInputController *)self isEnabledSwitchWithSource:SCATSwitchSourceTadmor])
    {
      v3 = [(SCATInputController *)self isEnabledSwitchWithSource:SCATSwitchSourceAutomation];
      goto LABEL_5;
    }
  }

  v3 = 1;
LABEL_5:
  v4 = v8;
  if (v3 && !v8)
  {
    v8 = objc_opt_new();
    [(SCATInputController *)self setAccessibilityEventInputSource:v8];
    [(SCATInputController *)self _updateActionsForSource:v8];
    v5 = +[AXAccessQueue mainAccessQueue];
    [v8 setDelegate:self queue:v5];

    v3 = [v8 startRunning];
LABEL_16:
    v4 = v8;
    goto LABEL_17;
  }

  if (v8)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  if (v6 == 1)
  {
    v3 = [(SCATInputController *)self _updateActionsForSource:v8];
    goto LABEL_16;
  }

  if ((v3 & 1) == 0 && v8)
  {
    [v8 stopRunning];
    [v8 setDelegate:0 queue:0];
    v3 = [(SCATInputController *)self setAccessibilityEventInputSource:0];
    goto LABEL_16;
  }

LABEL_17:

  _objc_release_x1(v3, v4);
}

- (void)_updateRemoteControlInputSource
{
  v3 = [(SCATInputController *)self remoteControlInputSource];

  if (!v3)
  {
    v4 = objc_opt_new();
    [(SCATInputController *)self setRemoteControlInputSource:v4];

    v5 = [(SCATInputController *)self remoteControlInputSource];
    v6 = +[AXAccessQueue mainAccessQueue];
    [v5 setDelegate:self queue:v6];

    v7 = [(SCATInputController *)self remoteControlInputSource];
    [v7 startRunning];
  }
}

- (void)_updateInputSources
{
  [(SCATInputController *)self _updateHeadGesturesInputSource];
  [(SCATInputController *)self _updateCameraHandGestureSource];
  [(SCATInputController *)self _updateKeyboardInputSource];
  [(SCATInputController *)self _updateMIDIInputSource];
  [(SCATInputController *)self _updateATVRemoteInputSource];
  [(SCATInputController *)self _updateMFIInputSource];
  [(SCATInputController *)self _updateGamepadInputSource];
  [(SCATInputController *)self _updateScreenInputSource];
  [(SCATInputController *)self _updateTadmorInputSource];
  [(SCATInputController *)self _updateAirPodsSource];
  [(SCATInputController *)self _updateInterDeviceInputSource];
  [(SCATInputController *)self _updateMotionTrackingInputSource];
  [(SCATInputController *)self _updateAccessibilityEventInputSource];
  [(SCATInputController *)self _updateRemoteControlInputSource];
  [(SCATInputController *)self _endAction];

  [(SCATInputController *)self setHasInitializedInputSources:1];
}

- (BOOL)_switchConfigurationRendersDeviceUnusable
{
  v3 = [(SCATInputController *)self _allSwitchesInUse];
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  +[NSMutableDictionary dictionary];
  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_1000767A0;
  v4 = v74[3] = &unk_1001D5968;
  v75 = v4;
  v76 = &v87;
  v77 = &v83;
  v78 = &v79;
  [v3 enumerateObjectsUsingBlock:v74];
  v5 = [(SCATInputController *)self recipe];
  if (v5)
  {
    v6 = [(SCATInputController *)self recipe];
    v7 = [v6 shouldContinueScanning];

    if ((v7 & 1) == 0)
    {
      goto LABEL_91;
    }
  }

  v8 = +[AXSettings sharedInstance];
  v9 = [v8 switchControlScanningStyle];

  if (!v9)
  {
    goto LABEL_7;
  }

  if (v9 == 1)
  {
    v10 = [(SCATInputController *)self keyboardInputSource];
    v11 = [v10 numberOfDevicesConnected];

    v12 = [(SCATInputController *)self mfiInputSource];
    v13 = [v12 numberOfDevicesConnected];

    v14 = [(SCATInputController *)self midiInputSource];
    v72 = [v14 numberOfDevicesConnected];

    v15 = [(SCATInputController *)self gamepadInputSource];
    v70 = [v15 numberOfDevicesConnected];

    v16 = [(SCATInputController *)self tadmorInputSource];
    v68 = [v16 numberOfDevicesConnected];

    v17 = [(SCATInputController *)self interDeviceCommunicator];
    v18 = [v17 isReceivingSwitchEvents];

    if (*(v88 + 24) == 1)
    {
      v19 = [v4 objectForKeyedSubscript:SCATSwitchSourceScreen];
      v20 = [v19 firstObject];
      if ([v20 BOOLValue])
      {
        v21 = 1;
      }

      else
      {
        v22 = [v4 objectForKeyedSubscript:SCATSwitchSourceKeyboard];
        v23 = [v22 firstObject];
        if ([v23 BOOLValue] && v11)
        {
          v21 = 1;
        }

        else
        {
          v66 = [v4 objectForKeyedSubscript:SCATSwitchSourceMFI];
          v64 = [v66 firstObject];
          if ([v64 BOOLValue] && v13)
          {
            v21 = 1;
          }

          else
          {
            v62 = [v4 objectForKeyedSubscript:SCATSwitchSourceMIDI];
            v60 = [v62 firstObject];
            if ([v60 BOOLValue] && v72)
            {
              v21 = 1;
            }

            else
            {
              v58 = [v4 objectForKeyedSubscript:SCATSwitchSourceRemote];
              v56 = [v58 firstObject];
              if ([v56 BOOLValue] & v18)
              {
                v21 = 1;
              }

              else
              {
                v54 = [v4 objectForKeyedSubscript:SCATSwitchSourceGamepad];
                v52 = [v54 firstObject];
                if ([v52 BOOLValue] && v70)
                {
                  v21 = 1;
                }

                else
                {
                  v50 = [v4 objectForKeyedSubscript:SCATSwitchSourceBackTap];
                  v48 = [v50 firstObject];
                  if ([v48 BOOLValue])
                  {
                    v21 = 1;
                  }

                  else
                  {
                    v46 = [v4 objectForKeyedSubscript:SCATSwitchSourceSound];
                    v44 = [v46 firstObject];
                    if ([v44 BOOLValue])
                    {
                      v21 = 1;
                    }

                    else
                    {
                      v42 = [v4 objectForKeyedSubscript:SCATSwitchSourceTadmor];
                      v40 = [v42 firstObject];
                      if ([v40 BOOLValue] && v68)
                      {
                        v21 = 1;
                      }

                      else
                      {
                        v38 = [v4 objectForKeyedSubscript:SCATSwitchSourceCamera];
                        v37 = [v38 firstObject];
                        if ([v37 BOOLValue])
                        {
                          v21 = 1;
                        }

                        else
                        {
                          v36 = [v4 objectForKeyedSubscript:SCATSwitchSourceCameraHandGesture];
                          v35 = [v36 firstObject];
                          if ([v35 BOOLValue])
                          {
                            v21 = 1;
                          }

                          else
                          {
                            v34 = [v4 objectForKeyedSubscript:SCATSwitchSourceAutomation];
                            v33 = [v34 firstObject];
                            v21 = [v33 BOOLValue];
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v21 = 0;
    }

    if (*(v84 + 24) != 1)
    {
      goto LABEL_91;
    }

    v24 = [v4 objectForKeyedSubscript:SCATSwitchSourceScreen];
    v25 = [v24 lastObject];
    if ([v25 BOOLValue])
    {
      v26 = 1;
    }

    else
    {
      v27 = [v4 objectForKeyedSubscript:SCATSwitchSourceKeyboard];
      v28 = [v27 lastObject];
      if ([v28 BOOLValue] && v11)
      {
        v26 = 1;
      }

      else
      {
        v67 = [v4 objectForKeyedSubscript:SCATSwitchSourceMFI];
        v29 = [v67 lastObject];
        if ([v29 BOOLValue] && v13)
        {
          v26 = 1;
        }

        else
        {
          v65 = [v4 objectForKeyedSubscript:SCATSwitchSourceMIDI];
          v30 = [v65 lastObject];
          if ([v30 BOOLValue] && v72)
          {
            v26 = 1;
          }

          else
          {
            v73 = [v4 objectForKeyedSubscript:SCATSwitchSourceRemote];
            v63 = [v73 lastObject];
            if ([v63 BOOLValue] & v18)
            {
              v26 = 1;
            }

            else
            {
              v61 = [v4 objectForKeyedSubscript:SCATSwitchSourceGamepad];
              v59 = [v61 lastObject];
              if ([v59 BOOLValue] && v70)
              {
                v26 = 1;
              }

              else
              {
                v71 = [v4 objectForKeyedSubscript:SCATSwitchSourceBackTap];
                v57 = [v71 lastObject];
                if ([v57 BOOLValue])
                {
                  v26 = 1;
                }

                else
                {
                  v55 = [v4 objectForKeyedSubscript:SCATSwitchSourceSound];
                  v53 = [v55 lastObject];
                  if ([v53 BOOLValue])
                  {
                    v26 = 1;
                  }

                  else
                  {
                    v51 = [v4 objectForKeyedSubscript:SCATSwitchSourceTadmor];
                    v49 = [v51 lastObject];
                    if ([v49 BOOLValue] && v68)
                    {
                      v26 = 1;
                    }

                    else
                    {
                      v69 = [v4 objectForKeyedSubscript:SCATSwitchSourceCamera];
                      v47 = [v69 lastObject];
                      if ([v47 BOOLValue])
                      {
                        v26 = 1;
                      }

                      else
                      {
                        v45 = [v4 objectForKeyedSubscript:SCATSwitchSourceCameraHandGesture];
                        v43 = [v45 lastObject];
                        if ([v43 BOOLValue])
                        {
                          v26 = 1;
                        }

                        else
                        {
                          v41 = [v4 objectForKeyedSubscript:SCATSwitchSourceAutomation];
                          v39 = [v41 lastObject];
                          v26 = [v39 BOOLValue];
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    if ((v21 & v26 & 1) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

  if (v9 != 2)
  {
LABEL_91:
    v31 = *(v80 + 24);
    goto LABEL_92;
  }

  if ((v84[3] & 1) == 0)
  {
LABEL_7:
    if ((v88[3] & 1) == 0)
    {
      goto LABEL_91;
    }
  }

LABEL_90:
  v31 = 0;
LABEL_92:

  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(&v87, 8);

  return v31 & 1;
}

- (void)_removeInputTimers
{
  v7 = [(SCATInputController *)self inputHoldTimer];
  if (v7)
  {
    [v7 cancel];
    [(SCATInputController *)self setInputHoldTimer:0];
  }

  v3 = [(SCATInputController *)self inputRepeatTimer];
  v4 = v3;
  if (v3)
  {
    [v3 cancel];
    [(SCATInputController *)self setInputRepeatTimer:0];
  }

  v5 = [(SCATInputController *)self ignoreActionsTimer];
  v6 = v5;
  if (v5)
  {
    [v5 cancel];
    [(SCATInputController *)self setIgnoreActionsTimer:0];
  }
}

- (void)_setupInputTimers
{
  v5 = [(SCATInputController *)self inputHoldTimer];
  if (!v5)
  {
    v5 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    [v5 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    [v5 setLabel:@"input hold timer"];
    [(SCATInputController *)self setInputHoldTimer:v5];
  }

  v3 = [(SCATInputController *)self inputRepeatTimer];
  if (!v3)
  {
    v3 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    [v3 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    [v3 setLabel:@"input repeat timer"];
    [(SCATInputController *)self setInputRepeatTimer:v3];
  }

  v4 = [(SCATInputController *)self ignoreActionsTimer];
  if (!v4)
  {
    v4 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    [v4 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    [v4 setLabel:@"ignore actions timer"];
    [(SCATInputController *)self setIgnoreActionsTimer:v4];
  }
}

- (void)dealloc
{
  v3 = +[AXSettings sharedInstance];
  v4 = [NSNumber numberWithUnsignedLongLong:self];
  [v3 unregisterUpdateBlockForRetrieveSelector:"assistiveTouchInputHoldDuration" withListenerID:v4];

  v5 = +[AXSettings sharedInstance];
  v6 = [NSNumber numberWithUnsignedLongLong:self];
  [v5 unregisterUpdateBlockForRetrieveSelector:"assistiveTouchInputHoldEnabled" withListenerID:v6];

  v7 = +[AXSettings sharedInstance];
  v8 = [NSNumber numberWithUnsignedLongLong:self];
  [v7 unregisterUpdateBlockForRetrieveSelector:"assistiveTouchActionRepeatInterval" withListenerID:v8];

  v9 = +[AXSettings sharedInstance];
  v10 = [NSNumber numberWithUnsignedLongLong:self];
  [v9 unregisterUpdateBlockForRetrieveSelector:"assistiveTouchActionRepeatEnabled" withListenerID:v10];

  v11 = +[AXSettings sharedInstance];
  v12 = [NSNumber numberWithUnsignedLongLong:self];
  [v11 unregisterUpdateBlockForRetrieveSelector:"assistiveTouchInputCoalescingDuration" withListenerID:v12];

  v13 = +[AXSettings sharedInstance];
  v14 = [NSNumber numberWithUnsignedLongLong:self];
  [v13 unregisterUpdateBlockForRetrieveSelector:"assistiveTouchInputCoalescingEnabled" withListenerID:v14];

  v15 = +[AXSettings sharedInstance];
  v16 = [NSNumber numberWithUnsignedLongLong:self];
  [v15 unregisterUpdateBlockForRetrieveSelector:"assistiveTouchSwitches" withListenerID:v16];

  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_100076E30;
  v22 = &unk_1001D3488;
  v23 = self;
  AXPerformBlockSynchronouslyOnMainThread();
  [(AXSSInterDeviceCommunicator *)self->_interDeviceCommunicator setActionReceiver:0];
  if (AXDeviceHasJindo())
  {
    [(SCATInputController *)self _invalidateAssertionForSystemApertureInert];
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v18.receiver = self;
  v18.super_class = SCATInputController;
  [(SCATInputController *)&v18 dealloc];
}

- (SCATInputController)initWithInterDeviceCommunicator:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SCATInputController;
  v6 = [(SCATInputController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(SCATInputController *)v6 _sharedInit];
    objc_storeStrong(&v7->_interDeviceCommunicator, a3);
    [(AXSSInterDeviceCommunicator *)v7->_interDeviceCommunicator setActionReceiver:v7];
  }

  return v7;
}

- (void)_sharedInit
{
  location[1] = _NSConcreteStackBlock;
  location[2] = 3221225472;
  location[3] = sub_1000775BC;
  location[4] = &unk_1001D3488;
  location[5] = self;
  AXPerformBlockAsynchronouslyOnMainThread();
  objc_initWeak(location, self);
  v3 = +[AXSettings sharedInstance];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100077634;
  v40[3] = &unk_1001D3460;
  objc_copyWeak(&v41, location);
  [v3 registerUpdateBlock:v40 forRetrieveSelector:"assistiveTouchInputHoldDuration" withListener:self];

  objc_destroyWeak(&v41);
  v4 = +[AXSettings sharedInstance];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100077714;
  v38[3] = &unk_1001D3460;
  objc_copyWeak(&v39, location);
  [v4 registerUpdateBlock:v38 forRetrieveSelector:"assistiveTouchInputHoldEnabled" withListener:self];

  objc_destroyWeak(&v39);
  v5 = +[AXSettings sharedInstance];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000777F4;
  v36[3] = &unk_1001D3460;
  objc_copyWeak(&v37, location);
  [v5 registerUpdateBlock:v36 forRetrieveSelector:"assistiveTouchActionRepeatInterval" withListener:self];

  objc_destroyWeak(&v37);
  v6 = +[AXSettings sharedInstance];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000778D4;
  v34[3] = &unk_1001D3460;
  objc_copyWeak(&v35, location);
  [v6 registerUpdateBlock:v34 forRetrieveSelector:"assistiveTouchActionRepeatEnabled" withListener:self];

  objc_destroyWeak(&v35);
  v7 = +[AXSettings sharedInstance];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000779B4;
  v32[3] = &unk_1001D3460;
  objc_copyWeak(&v33, location);
  [v7 registerUpdateBlock:v32 forRetrieveSelector:"assistiveTouchInputCoalescingDuration" withListener:self];

  objc_destroyWeak(&v33);
  v8 = +[AXSettings sharedInstance];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100077A94;
  v30[3] = &unk_1001D3460;
  objc_copyWeak(&v31, location);
  [v8 registerUpdateBlock:v30 forRetrieveSelector:"assistiveTouchInputCoalescingEnabled" withListener:self];

  objc_destroyWeak(&v31);
  v9 = +[AXSettings sharedInstance];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100077B74;
  v28[3] = &unk_1001D3460;
  objc_copyWeak(&v29, location);
  [v9 registerUpdateBlock:v28 forRetrieveSelector:"assistiveTouchSwitches" withListener:self];

  objc_destroyWeak(&v29);
  v10 = +[AXSettings sharedInstance];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100077C54;
  v26[3] = &unk_1001D3460;
  objc_copyWeak(&v27, location);
  [v10 registerUpdateBlock:v26 forRetrieveSelector:"switchControlUseCameraForPointMode" withListener:self];

  objc_destroyWeak(&v27);
  v11 = +[AXSettings sharedInstance];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100077DA0;
  v24[3] = &unk_1001D3460;
  objc_copyWeak(&v25, location);
  [v11 registerUpdateBlock:v24 forRetrieveSelector:"switchControlCameraPointPickerMode" withListener:self];

  objc_destroyWeak(&v25);
  v12 = +[AXSettings sharedInstance];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100077EF8;
  v22[3] = &unk_1001D3460;
  objc_copyWeak(&v23, location);
  [v12 registerUpdateBlock:v22 forRetrieveSelector:"switchControlCameraPointPickerSensitivity" withListener:self];

  objc_destroyWeak(&v23);
  v13 = +[AXSettings sharedInstance];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10007805C;
  v20[3] = &unk_1001D3460;
  objc_copyWeak(&v21, location);
  [v13 registerUpdateBlock:v20 forRetrieveSelector:"switchControlCameraPointPickerMovementToleranceInJoystickMode" withListener:self];

  objc_destroyWeak(&v21);
  v14 = +[AXSettings sharedInstance];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000781C0;
  v18[3] = &unk_1001D3460;
  objc_copyWeak(&v19, location);
  [v14 registerUpdateBlock:v18 forRetrieveSelector:"assistiveTouchMouseOnDeviceEyeTrackingShouldShowUncalibratedPoints" withListener:self];

  objc_destroyWeak(&v19);
  v15 = objc_alloc_init(SBSSystemApertureRestrictionService);
  restrictionService = self->_restrictionService;
  self->_restrictionService = v15;

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_100078278, kAXSContinuityDisplayStateChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  objc_destroyWeak(location);
}

- (id)_allSwitchesInUse
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 assistiveTouchSwitches];
  v5 = [(SCATInputController *)self recipe];

  if (v5)
  {
    v6 = [(SCATInputController *)self recipe];
    v7 = [v6 mappings];
    v8 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v7 count]);

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = [(SCATInputController *)self recipe];
    v10 = [v9 mappings];

    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          v16 = [v15 switchUUID];

          if (v16)
          {
            v17 = [v15 switchUUID];
            [v8 addObject:v17];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10007850C;
    v21[3] = &unk_1001D5990;
    v22 = v8;
    v18 = v8;
    v19 = [v4 objectsPassingTest:v21];
  }

  else
  {
    v19 = [v4 objectsPassingTest:&stru_1001D59D0];
  }

  return v19;
}

- (int64_t)role
{
  v3 = [(SCATInputController *)self interDeviceCommunicator];
  v4 = [v3 isReceivingSwitchEvents];

  if (v4)
  {
    return 2;
  }

  v6 = [(SCATInputController *)self interDeviceCommunicator];
  v7 = [v6 isForwardingSwitchEvents];

  return v7;
}

- (void)setRecipe:(id)a3
{
  v5 = a3;
  p_recipe = &self->_recipe;
  if (self->_recipe != v5)
  {
    v7 = v5;
    objc_storeStrong(p_recipe, a3);
    p_recipe = [(SCATInputController *)self hasInitializedInputSources];
    v5 = v7;
    if (p_recipe)
    {
      p_recipe = [(SCATInputController *)self _updateInputSources];
      v5 = v7;
    }
  }

  _objc_release_x1(p_recipe, v5);
}

- (BOOL)_isSwitchWithSource:(id)a3 isEnabled:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SCATInputController *)self _allSwitchesInUse];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100078780;
  v12[3] = &unk_1001D59F8;
  v9 = v6;
  v13 = v9;
  v10 = v7;
  v14 = v10;
  v15 = &v16;
  [v8 enumerateObjectsUsingBlock:v12];
  LOBYTE(v7) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v7;
}

- (void)updateWhetherSwitchConfigurationRendersDeviceUnusable
{
  v3 = [(SCATInputController *)self _switchConfigurationRendersDeviceUnusable];
  v4 = [(SCATInputController *)self isValid];
  if (v3)
  {
    if (v4)
    {
      [(SCATInputController *)self setValid:[(SCATInputController *)self isValid]^ 1];
      v5 = AXLocStringKeyForHomeButton();
      v6 = sub_100042B24(v5);

      [(SCATInputController *)self _showAlert:v6 forSource:3];
    }
  }

  else if ((v4 & 1) == 0)
  {
    [(SCATInputController *)self setValid:[(SCATInputController *)self isValid]^ 1];
    [(SCATInputController *)self _hideAlertForSource:3];
  }

  v7 = +[AXBackBoardServer server];
  [v7 setSwitchControlRendersDeviceUnusable:v3];
}

- (void)updateWhetherSwitchConfigurationHasScreenSwitch
{
  v3 = +[AXBackBoardServer server];
  [v3 setSwitchControlHasScreenSwitch:{-[SCATInputController _switchConfigurationHasScreenSwitch](self, "_switchConfigurationHasScreenSwitch")}];
}

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v6 = a4;
  [(SCATInputController *)self setDelegate:a3];
  [(SCATInputController *)self setQueue:v6];
}

- (AXUIClient)userInterfaceClient
{
  v3 = [(SCATInputController *)self delegate];
  v4 = [v3 userInterfaceClientForInputController:self];

  return v4;
}

- (void)_hideAlerts
{
  v3 = [(SCATInputController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SCATInputController *)self delegate];
    [v5 inputController:self shouldHideAlerts:1];
  }
}

- (void)_hideAlertForSource:(unint64_t)a3
{
  v4 = [(SCATInputController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SCATInputController *)self delegate];
    [v6 inputController:self shouldHideAlerts:1];
  }
}

- (void)_hideStateForSource:(unint64_t)a3
{
  v6 = [(SCATInputController *)self userInterfaceClient];
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  v5 = [NSDictionary dictionaryWithObjectsAndKeys:v4, @"input source", 0];

  [v6 sendAsynchronousMessage:v5 withIdentifier:5 targetAccessQueue:0 completion:0];
}

- (void)_showAlert:(id)a3 forSource:(unint64_t)a4
{
  v6 = a3;
  v7 = +[AXSettings sharedInstance];
  v8 = [v7 switchControlIgnoreInvalidSwitchConfiguration];

  if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 2 && v8)
  {
    v9 = SWCHLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [NSNumber numberWithUnsignedInteger:a4];
      v14 = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not showing alert because switchControlIgnoreInvalidSwitchConfiguration is enabled. Input Source: %@. Alert: %@", &v14, 0x16u);
    }
  }

  else
  {
    v11 = [(SCATInputController *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(SCATInputController *)self delegate];
      [v13 inputController:self showAlert:v6];
    }
  }
}

- (void)_showState:(id)a3 forSource:(unint64_t)a4
{
  v6 = a3;
  v9 = [(SCATInputController *)self userInterfaceClient];
  v7 = [NSNumber numberWithUnsignedInteger:a4];
  v8 = [NSDictionary dictionaryWithObjectsAndKeys:v7, @"input source", v6, @"input state", 0];

  [v9 sendAsynchronousMessage:v8 withIdentifier:6 targetAccessQueue:0 completion:0];
}

- (void)_restrictSystemApertureLayoutToInert
{
  if (AXDeviceHasJindo())
  {
    [(SCATInputController *)self _invalidateAssertionForSystemApertureInert];
    v3 = [(SCATInputController *)self systemApertureInvalidatable];

    if (!v3)
    {
      v4 = [(SBSSystemApertureRestrictionService *)self->_restrictionService acquireRestrictSystemApertureLayoutToInertAssertionWithReason:@"switchControlBanner"];
      [(SCATInputController *)self setSystemApertureInvalidatable:v4];
    }
  }
}

- (void)_invalidateAssertionForSystemApertureInert
{
  if (AXDeviceHasJindo())
  {
    v3 = [(SCATInputController *)self systemApertureInvalidatable];

    if (v3)
    {
      v4 = [(SCATInputController *)self systemApertureInvalidatable];
      [v4 invalidate];

      [(SCATInputController *)self setSystemApertureInvalidatable:0];
    }
  }
}

- (void)didReceiveSwitchEvent:(id)a3 forDeviceWithName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SCATInputController *)self interDeviceInputSource];
  [v8 handleReceivedSwitchEvent:v7 deviceName:v6];
}

- (void)performSysdiagnose
{
  v3 = [(SCATInputController *)self delegate];
  [v3 performSysdiagnoseForInputController:self];
}

- (SCATInputControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end