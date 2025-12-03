@interface SCATInputController
- (AXUIClient)userInterfaceClient;
- (BOOL)_handleHoldAtPointForActionIdentifier:(id)identifier start:(BOOL)start;
- (BOOL)_hasExternalSwitchConfigured;
- (BOOL)_isSwitchWithSource:(id)source isEnabled:(id)enabled;
- (BOOL)_switchConfigurationRendersDeviceUnusable;
- (BOOL)isMotionTrackingEnabled;
- (BOOL)isOnDeviceEyeTrackingSupported;
- (BOOL)isTadmorInputSourceConnected;
- (SCATInputController)initWithInterDeviceCommunicator:(id)communicator;
- (SCATInputControllerDelegate)delegate;
- (id)_allSwitchesInUse;
- (int64_t)role;
- (void)_addMotionTrackingInputSource;
- (void)_configureMFIAccessoryIfNecessary:(id)necessary;
- (void)_didReceiveActionWithIdentifier:(id)identifier start:(BOOL)start ignoreInputHold:(BOOL)hold;
- (void)_endAction;
- (void)_hideAlertForSource:(unint64_t)source;
- (void)_hideAlerts;
- (void)_hideStateForSource:(unint64_t)source;
- (void)_invalidateAssertionForSystemApertureInert;
- (void)_removeInputSource:(id)source;
- (void)_removeInputSources;
- (void)_removeInputTimers;
- (void)_removeMotionTrackingInputSourceAndClearAlert:(BOOL)alert;
- (void)_restrictSystemApertureLayoutToInert;
- (void)_sendActionWithIdentifier:(id)identifier;
- (void)_setupInputTimers;
- (void)_sharedInit;
- (void)_showAlert:(id)alert forSource:(unint64_t)source;
- (void)_showHeadTrackingErrorMessageForHeadMovementSwitchConflict;
- (void)_showState:(id)state forSource:(unint64_t)source;
- (void)_updateAccessibilityEventInputSource;
- (void)_updateActionsForSource:(id)source;
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
- (void)airPodsInputSource:(id)source didReceiveActionWithIdentifier:(int64_t)identifier start:(BOOL)start;
- (void)airPodsInputSource:(id)source didUpdateAvailability:(BOOL)availability withDetail:(int64_t)detail;
- (void)cameraInputSource:(id)source didUpdateAvailability:(BOOL)availability withDetail:(unint64_t)detail;
- (void)cameraInputSource:(id)source didUpdateState:(id)state;
- (void)dealloc;
- (void)didBeginLongPressForInputSource:(id)source;
- (void)didEndLongPressForInputSource:(id)source;
- (void)didReceiveSwitchEvent:(id)event forDeviceWithName:(id)name;
- (void)handTrackerInputSource:(id)source didReceiveActionWithIdentifier:(int64_t)identifier start:(BOOL)start ignoreInputHold:(BOOL)hold;
- (void)handTrackerInputSource:(id)source didUpdateAvailability:(BOOL)availability withDetail:(int64_t)detail;
- (void)handleInterDeviceBailOutForInputSource:(id)source;
- (void)hardwareInputSource:(id)source didUpdateAvailability:(BOOL)availability withDetail:(unint64_t)detail;
- (void)headTrackerInputSource:(id)source didReceiveActionWithIdentifier:(int64_t)identifier start:(BOOL)start ignoreInputHold:(BOOL)hold;
- (void)headTrackerInputSource:(id)source didUpdateAvailability:(BOOL)availability withDetail:(int64_t)detail;
- (void)headTrackerInputSource:(id)source didUpdateState:(id)state;
- (void)inputSource:(id)source forwardSwitchEvent:(id)event;
- (void)motionTrackerInputSource:(id)source didReceivePoint:(CGPoint)point;
- (void)motionTrackerInputSource:(id)source failedToTrackFaceWithError:(id)error;
- (void)motionTrackerInputSource:(id)source isShowingCalibrationUI:(BOOL)i;
- (void)overrideMotionTrackerLookAtPoint:(CGPoint)point;
- (void)performSysdiagnose;
- (void)setDelegate:(id)delegate queue:(id)queue;
- (void)setEyeGazeMotionTrackingEnabled:(BOOL)enabled;
- (void)setHeadMotionTrackingEnabled:(BOOL)enabled;
- (void)setMotionTrackingEnabled:(BOOL)enabled;
- (void)setRecipe:(id)recipe;
- (void)tadmorInputSource:(id)source didReceiveItemSelectionIndex:(int64_t)index;
- (void)tadmorInputSource:(id)source didReceiveMovementDelta:(CGPoint)delta;
- (void)tadmorInputSource:(id)source didUpdateSignalQuality:(int64_t)quality;
- (void)updateWhetherSwitchConfigurationHasScreenSwitch;
- (void)updateWhetherSwitchConfigurationRendersDeviceUnusable;
@end

@implementation SCATInputController

- (void)_updateActionsForSource:(id)source
{
  sourceCopy = source;
  _allSwitchesInUse = [(SCATInputController *)self _allSwitchesInUse];
  recipe = [(SCATInputController *)self recipe];
  [sourceCopy updateWithSwitches:_allSwitchesInUse recipe:recipe];
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

- (BOOL)_handleHoldAtPointForActionIdentifier:(id)identifier start:(BOOL)start
{
  startCopy = start;
  identifierCopy = identifier;
  if (![identifierCopy action])
  {
    shortcutIdentifier = [identifierCopy shortcutIdentifier];

    if (!shortcutIdentifier)
    {
      goto LABEL_10;
    }
  }

  recipe = [(SCATInputController *)self recipe];

  if (!recipe)
  {
    goto LABEL_10;
  }

  v32 = 0x7FFFFFFFFFFFFFFFLL;
  v31 = 0;
  SCATGetRecipeMappingIndexAndLongPressVariant(identifierCopy, &v32, &v31);
  v9 = v32;
  recipe2 = [(SCATInputController *)self recipe];
  mappings = [recipe2 mappings];
  v12 = [mappings count];

  if (v9 >= v12)
  {
    v13 = v32;
    recipe3 = [(SCATInputController *)self recipe];
    mappings2 = [recipe3 mappings];
    v29 = identifierCopy;
    v30 = [mappings2 count];
    v28 = v13;
    _AXAssert();
  }

  v16 = v32;
  v17 = [(SCATInputController *)self recipe:v28];
  mappings3 = [v17 mappings];
  v19 = [mappings3 count];

  if (v16 < v19)
  {
    recipe4 = [(SCATInputController *)self recipe];
    mappings4 = [recipe4 mappings];
    v22 = [mappings4 objectAtIndexedSubscript:v32];

    if (v31 || ([v22 action], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isEqualToString:", AXSwitchRecipeMappingActionHoldAtPoint), v23, !v24))
    {
      v26 = 0;
    }

    else
    {
      delegate = [(SCATInputController *)self delegate];
      [v22 holdPoint];
      [delegate inputController:self didReceiveRecipeHoldAtPoint:startCopy isDown:?];

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

- (void)_didReceiveActionWithIdentifier:(id)identifier start:(BOOL)start ignoreInputHold:(BOOL)hold
{
  startCopy = start;
  identifierCopy = identifier;
  if ([(SCATInputController *)self shouldIgnoreActions])
  {
    v9 = SWCHLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Input controller is currently ignoring switch actions", buf, 2u);
    }
  }

  else if (![(SCATInputController *)self _handleHoldAtPointForActionIdentifier:identifierCopy start:startCopy])
  {
    if (startCopy)
    {
      v12 = _NSConcreteStackBlock;
      v13 = 3221225472;
      v14 = sub_100071F3C;
      v15 = &unk_1001D36E8;
      selfCopy = self;
      v17 = identifierCopy;
      v10 = objc_retainBlock(&v12);
      if (![(SCATInputController *)self isInputHoldEnabled:v12]|| hold)
      {
        (v10[2])(v10);
      }

      else
      {
        inputHoldTimer = [(SCATInputController *)self inputHoldTimer];
        [(SCATInputController *)self timeIntervalBeforeSendAction];
        [inputHoldTimer afterDelay:v10 processBlock:?];
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
  inputHoldTimer = [(SCATInputController *)self inputHoldTimer];
  [inputHoldTimer cancel];
  inputRepeatTimer = [(SCATInputController *)self inputRepeatTimer];
  [inputRepeatTimer cancel];
}

- (void)_sendActionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(SCATInputController *)self delegate];
  queue = [(SCATInputController *)self queue];
  queue2 = [(SCATInputController *)self queue];
  if (queue2)
  {
    v8 = queue2;
    v9 = identifierCopy;
    if ([v9 action])
    {
    }

    else
    {
      shortcutIdentifier = [v9 shortcutIdentifier];

      if (!shortcutIdentifier)
      {
        goto LABEL_15;
      }
    }

    recipe = [(SCATInputController *)self recipe];

    if (!recipe)
    {
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1000723BC;
      v31[3] = &unk_1001D3C80;
      v32 = delegate;
      selfCopy = self;
      v22 = v9;
      v34 = v22;
      [queue performAsynchronousWritingBlock:v31];
      if (-[SCATInputController isInputRepeatEnabled](self, "isInputRepeatEnabled") && ([v22 action] & 0xFFFFFFFFFFFFFFFELL) == 0x68)
      {
        inputRepeatTimer = [(SCATInputController *)self inputRepeatTimer];
        [(SCATInputController *)self timeIntervalBeforeSendRepeatAction];
        v25 = v24;
        objc_initWeak(&location, self);
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_1000723CC;
        v28[3] = &unk_1001D3438;
        objc_copyWeak(&v30, &location);
        v29 = v22;
        [inputRepeatTimer afterDelay:v28 processBlock:v25];

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
    recipe2 = [(SCATInputController *)self recipe];
    mappings = [recipe2 mappings];
    v15 = [mappings count];

    if (v12 >= v15)
    {
      v16 = location;
      [(SCATInputController *)self recipe];
      v27 = v26 = v16;
      _AXAssert();
    }

    v17 = location;
    v18 = [(SCATInputController *)self recipe:v26];
    mappings2 = [v18 mappings];
    v20 = [mappings2 count];

    if (v17 < v20)
    {
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1000723A8;
      v35[3] = &unk_1001D5918;
      v36 = delegate;
      selfCopy2 = self;
      v38 = location;
      v39 = v40;
      [queue performAsynchronousWritingBlock:v35];
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

- (void)didBeginLongPressForInputSource:(id)source
{
  delegate = [(SCATInputController *)self delegate];
  [delegate didBeginLongPressForInputController:self];
}

- (void)didEndLongPressForInputSource:(id)source
{
  delegate = [(SCATInputController *)self delegate];
  [delegate didEndLongPressForInputController:self];
}

- (void)inputSource:(id)source forwardSwitchEvent:(id)event
{
  eventCopy = event;
  interDeviceCommunicator = [(SCATInputController *)self interDeviceCommunicator];
  [interDeviceCommunicator forwardSwitchEvent:eventCopy];
}

- (void)handleInterDeviceBailOutForInputSource:(id)source
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

    delegate = [(SCATInputController *)self delegate];
    [delegate performSysdiagnoseForInputController:self];

    interDeviceCommunicator = [(SCATInputController *)self interDeviceCommunicator];
    [interDeviceCommunicator performSysdiagnoseOnReceiver];
  }

  interDeviceCommunicator2 = [(SCATInputController *)self interDeviceCommunicator];
  [interDeviceCommunicator2 stop];
}

- (void)cameraInputSource:(id)source didUpdateAvailability:(BOOL)availability withDetail:(unint64_t)detail
{
  if (availability)
  {

    [(SCATInputController *)self _hideAlertForSource:1];
  }

  else
  {
    v6 = SCATCameraInputSourceAvailabilityDetailLocalizedDescription(detail);
    [(SCATInputController *)self _showAlert:v6 forSource:1];
    [(SCATInputController *)self _endAction];
  }
}

- (void)cameraInputSource:(id)source didUpdateState:(id)state
{
  var1 = state.var1;
  v6 = [NSNumber numberWithDouble:source, state.var0];
  v9[0] = v6;
  v7 = [NSNumber numberWithDouble:var1];
  v9[1] = v7;
  v8 = [NSArray arrayWithObjects:v9 count:2];

  [(SCATInputController *)self _showState:v8 forSource:1];
}

- (void)headTrackerInputSource:(id)source didReceiveActionWithIdentifier:(int64_t)identifier start:(BOOL)start ignoreInputHold:(BOOL)hold
{
  holdCopy = hold;
  startCopy = start;
  v10 = objc_opt_new();
  [v10 setAction:identifier];
  [(SCATInputController *)self _didReceiveActionWithIdentifier:v10 start:startCopy ignoreInputHold:holdCopy];
}

- (void)headTrackerInputSource:(id)source didUpdateAvailability:(BOOL)availability withDetail:(int64_t)detail
{
  if (availability)
  {

    [(SCATInputController *)self _hideAlertForSource:1];
  }

  else
  {
    v6 = [source localizedDescriptionForAvailabilityDetail:detail];
    [(SCATInputController *)self _showAlert:v6 forSource:1];
    [(SCATInputController *)self _endAction];
  }
}

- (void)headTrackerInputSource:(id)source didUpdateState:(id)state
{
  var1 = state.var1;
  v6 = [NSNumber numberWithDouble:source, state.var0];
  v9[0] = v6;
  v7 = [NSNumber numberWithDouble:var1];
  v9[1] = v7;
  v8 = [NSArray arrayWithObjects:v9 count:2];

  [(SCATInputController *)self _showState:v8 forSource:1];
}

- (void)handTrackerInputSource:(id)source didReceiveActionWithIdentifier:(int64_t)identifier start:(BOOL)start ignoreInputHold:(BOOL)hold
{
  holdCopy = hold;
  startCopy = start;
  v10 = objc_opt_new();
  [v10 setAction:identifier];
  [(SCATInputController *)self _didReceiveActionWithIdentifier:v10 start:startCopy ignoreInputHold:holdCopy];
}

- (void)handTrackerInputSource:(id)source didUpdateAvailability:(BOOL)availability withDetail:(int64_t)detail
{
  if (availability)
  {

    [(SCATInputController *)self _hideAlertForSource:1];
  }

  else
  {
    v6 = [source localizedDescriptionForAvailabilityDetail:detail];
    [(SCATInputController *)self _showAlert:v6 forSource:1];
    [(SCATInputController *)self _endAction];
  }
}

- (void)airPodsInputSource:(id)source didReceiveActionWithIdentifier:(int64_t)identifier start:(BOOL)start
{
  startCopy = start;
  v8 = objc_opt_new();
  [v8 setAction:identifier];
  [(SCATInputController *)self _didReceiveActionWithIdentifier:v8 start:startCopy ignoreInputHold:0];
}

- (void)airPodsInputSource:(id)source didUpdateAvailability:(BOOL)availability withDetail:(int64_t)detail
{
  if (availability)
  {

    [(SCATInputController *)self _hideAlertForSource:5];
  }

  else
  {
    v6 = [source localizedDescriptionForAvailabilityDetail:detail];
    [(SCATInputController *)self _showAlert:v6 forSource:5];
    [(SCATInputController *)self _endAction];
  }
}

- (void)hardwareInputSource:(id)source didUpdateAvailability:(BOOL)availability withDetail:(unint64_t)detail
{
  availabilityCopy = availability;
  sourceCopy = source;
  v9 = SWCHLogHW();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [NSNumber numberWithBool:availabilityCopy];
    v11 = [NSNumber numberWithUnsignedInteger:detail];
    v27 = 138412802;
    v28 = sourceCopy;
    v29 = 2112;
    v30 = v10;
    v31 = 2112;
    v32 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Hardware Input Source: %@ - updated availability: %@ - with detail: %@", &v27, 0x20u);
  }

  if (self->_availableDevices)
  {
    if (!sourceCopy)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v12 = objc_opt_new();
    availableDevices = self->_availableDevices;
    self->_availableDevices = v12;

    if (!sourceCopy)
    {
LABEL_13:
      if (sourceCopy)
      {
        v17 = SWCHLogHW();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 138412290;
          v28 = sourceCopy;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Removing Hardware Input Source to available devices: %@", &v27, 0xCu);
        }

        [(NSMutableSet *)self->_availableDevices removeObject:sourceCopy];
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
          assistiveTouchScanningMode = [v20 assistiveTouchScanningMode];

          if (assistiveTouchScanningMode == 6)
          {
            v22 = +[AXSettings sharedInstance];
            switchControlFirstLaunchScanningMode = [v22 switchControlFirstLaunchScanningMode];
            v24 = +[AXSettings sharedInstance];
            [v24 setAssistiveTouchScanningMode:switchControlFirstLaunchScanningMode];
          }
        }
      }

      [(SCATInputController *)self _endAction];
      goto LABEL_22;
    }
  }

  if (!availabilityCopy)
  {
    goto LABEL_13;
  }

  v14 = SWCHLogHW();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412290;
    v28 = sourceCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Adding Hardware Input Source to available devices: %@", &v27, 0xCu);
  }

  [(NSMutableSet *)self->_availableDevices addObject:sourceCopy];
  v15 = SWCHLogHW();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = self->_availableDevices;
    v27 = 138412290;
    v28 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "We now have %@ availableDevices", &v27, 0xCu);
  }

  [(SCATInputController *)self _configureMFIAccessoryIfNecessary:sourceCopy];
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

    v26 = SCATHardwareInputSourceAvailabilityDetailLocalizedDescription(detail);
    [(SCATInputController *)self _showAlert:v26 forSource:2];
  }

  [(SCATInputController *)self updateWhetherSwitchConfigurationRendersDeviceUnusable];
}

- (void)motionTrackerInputSource:(id)source didReceivePoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  delegate = [(SCATInputController *)self delegate];
  [delegate inputController:self didReceivePoint:{x, y}];

  if ([(SCATInputController *)self motionTrackerLostFace])
  {
    motionTrackerDelayedShowAlertTimer = [(SCATInputController *)self motionTrackerDelayedShowAlertTimer];

    if (motionTrackerDelayedShowAlertTimer)
    {
      motionTrackerDelayedShowAlertTimer2 = [(SCATInputController *)self motionTrackerDelayedShowAlertTimer];
      [motionTrackerDelayedShowAlertTimer2 invalidate];

      [(SCATInputController *)self setMotionTrackerDelayedShowAlertTimer:0];
    }

    [(SCATInputController *)self _hideAlertForMotionTrackerInputSource];
    [(SCATInputController *)self setMotionTrackerErrorCode:0x7FFFFFFFFFFFFFFFLL];

    [(SCATInputController *)self setMotionTrackerLostFace:0];
  }
}

- (void)motionTrackerInputSource:(id)source isShowingCalibrationUI:(BOOL)i
{
  iCopy = i;
  sourceCopy = source;
  if (iCopy)
  {
    [(SCATInputController *)self setShouldIgnoreActions:1];
    ignoreActionsTimer = [(SCATInputController *)self ignoreActionsTimer];
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
    [ignoreActionsTimer afterDelay:v11 processBlock:60.0];
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
    ignoreActionsTimer = [(SCATInputController *)self ignoreActionsTimer];
    [ignoreActionsTimer cancel];
  }
}

- (void)motionTrackerInputSource:(id)source failedToTrackFaceWithError:(id)error
{
  sourceCopy = source;
  code = [error code];
  v8 = code;
  if (code > 9 || ((1 << code) & 0x281) == 0)
  {
    if (![(SCATInputController *)self motionTrackerLostFace]|| [(SCATInputController *)self motionTrackerErrorCode]!= v8)
    {
      [(SCATInputController *)self setMotionTrackerLostFace:1];
      motionTrackerDelayedShowAlertTimer = [(SCATInputController *)self motionTrackerDelayedShowAlertTimer];
      [motionTrackerDelayedShowAlertTimer invalidate];

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
      v18 = sourceCopy;
      v16 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v17 block:v15];
      [(SCATInputController *)self setMotionTrackerDelayedShowAlertTimer:v16];
    }

    goto LABEL_16;
  }

  v9 = AXSSHumanReadableDescriptionForMotionTrackingErrorCode();
  if (![sourceCopy isCalibrationPresented])
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

    delegate = [(SCATInputController *)self delegate];
    [delegate inputControllerPointPickerInterrupted:self];

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
  isContinuitySessionActive = [v3 isContinuitySessionActive];

  if (isContinuitySessionActive)
  {
    delegate = [(SCATInputController *)self delegate];
    [delegate inputControllerPointPickerInterrupted:self];
  }
}

- (void)_configureMFIAccessoryIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  isMFIInputSource = [necessaryCopy isMFIInputSource];
  v5 = necessaryCopy;
  if (isMFIInputSource)
  {
    v6 = necessaryCopy;
    v7 = SCATSwitchSourceMFI;
    v8 = [(SCATInputController *)self isEnabledSwitchWithSource:SCATSwitchSourceMFI];
    v9 = v8;
    NSLog(@"Attempting MFI autoconfigure : %d", v8);
    if (v9)
    {
LABEL_19:

      v5 = necessaryCopy;
      goto LABEL_20;
    }

    v10 = +[AXSettings sharedInstance];
    assistiveTouchSwitches = [v10 assistiveTouchSwitches];
    v12 = [assistiveTouchSwitches mutableCopy];

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
    productName = [v6 productName];
    [v14 setProductName:productName];

    productName2 = [v6 productName];
    [v16 setProductName:productName2];

    manufacturerName = [v6 manufacturerName];
    [v14 setManufacturerName:manufacturerName];

    manufacturerName2 = [v6 manufacturerName];
    [v16 setManufacturerName:manufacturerName2];

    NSLog(@"Auto Configuring Setting up switches: %@", v12);
    v23 = +[AXSettings sharedInstance];
    [v23 setAssistiveTouchSwitches:v12];

    goto LABEL_19;
  }

LABEL_20:

  _objc_release_x1(isMFIInputSource, v5);
}

- (void)_removeInputSource:(id)source
{
  sourceCopy = source;
  if (sourceCopy)
  {
    v4 = sourceCopy;
    [sourceCopy stopRunning];
    [v4 setDelegate:0 queue:0];
  }
}

- (void)_removeInputSources
{
  headGestureSource = [(SCATInputController *)self headGestureSource];
  [(SCATInputController *)self _removeInputSource:headGestureSource];

  [(SCATInputController *)self setHeadGestureSource:0];
  handGestureSource = [(SCATInputController *)self handGestureSource];
  [(SCATInputController *)self _removeInputSource:handGestureSource];

  [(SCATInputController *)self setHandGestureSource:0];
  [(SCATInputController *)self _hideAlertForSource:1];
  [(SCATInputController *)self _hideStateForSource:1];
  keyboardInputSource = [(SCATInputController *)self keyboardInputSource];
  mfiInputSource = [(SCATInputController *)self mfiInputSource];
  atvRemoteInputSource = [(SCATInputController *)self atvRemoteInputSource];
  midiInputSource = [(SCATInputController *)self midiInputSource];
  gamepadInputSource = [(SCATInputController *)self gamepadInputSource];
  v10 = [NSArray axArrayByIgnoringNilElementsWithCount:5, keyboardInputSource, mfiInputSource, atvRemoteInputSource, midiInputSource, gamepadInputSource];
  v11 = [v10 mutableCopy];

  airPodsSource = [(SCATInputController *)self airPodsSource];
  [v11 axSafelyAddObject:airPodsSource];

  tadmorInputSource = [(SCATInputController *)self tadmorInputSource];
  [v11 axSafelyAddObject:tadmorInputSource];

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
  screenInputSource = [(SCATInputController *)self screenInputSource];
  v21 = screenInputSource;
  if (screenInputSource)
  {
    [screenInputSource stopRunning];
    [v21 setDelegate:0 queue:0];
    [(SCATInputController *)self setScreenInputSource:0];
  }

  interDeviceInputSource = [(SCATInputController *)self interDeviceInputSource];
  [interDeviceInputSource stopRunning];

  interDeviceInputSource2 = [(SCATInputController *)self interDeviceInputSource];
  [interDeviceInputSource2 setDelegate:0 queue:0];

  [(SCATInputController *)self setInterDeviceInputSource:0];
  motionTrackerInputSource = [(SCATInputController *)self motionTrackerInputSource];
  v25 = motionTrackerInputSource;
  if (motionTrackerInputSource)
  {
    [motionTrackerInputSource stopRunning];
    [v25 setDelegate:0 queue:0];
    [(SCATInputController *)self setMotionTrackerInputSource:0];
    motionTrackerDelayedShowAlertTimer = [(SCATInputController *)self motionTrackerDelayedShowAlertTimer];

    if (motionTrackerDelayedShowAlertTimer)
    {
      motionTrackerDelayedShowAlertTimer2 = [(SCATInputController *)self motionTrackerDelayedShowAlertTimer];
      [motionTrackerDelayedShowAlertTimer2 invalidate];

      [(SCATInputController *)self setMotionTrackerDelayedShowAlertTimer:0];
    }

    motionTrackerDelayedHideAlertTimer = [(SCATInputController *)self motionTrackerDelayedHideAlertTimer];
    isValid = [motionTrackerDelayedHideAlertTimer isValid];

    if ((isValid & 1) == 0)
    {
      [(SCATInputController *)self _hideAlertForMotionTrackerInputSource];
    }
  }

  accessibilityEventInputSource = [(SCATInputController *)self accessibilityEventInputSource];
  v31 = accessibilityEventInputSource;
  if (accessibilityEventInputSource)
  {
    [accessibilityEventInputSource stopRunning];
    [v31 setDelegate:0 queue:0];
    [(SCATInputController *)self setAccessibilityEventInputSource:0];
  }

  remoteControlInputSource = [(SCATInputController *)self remoteControlInputSource];
  v33 = remoteControlInputSource;
  if (remoteControlInputSource)
  {
    [remoteControlInputSource stopRunning];
    [v33 setDelegate:0 queue:0];
    [(SCATInputController *)self setRemoteControlInputSource:0];
  }
}

- (void)_updateKeyboardInputSource
{
  keyboardInputSource = [(SCATInputController *)self keyboardInputSource];
  startRunning = [(SCATInputController *)self isEnabledSwitchWithSource:SCATSwitchSourceKeyboard];
  v4 = keyboardInputSource;
  if (startRunning)
  {
    v5 = keyboardInputSource == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    keyboardInputSource = objc_opt_new();
    [(SCATInputController *)self setKeyboardInputSource:keyboardInputSource];
    [(SCATInputController *)self _updateActionsForSource:keyboardInputSource];
    v6 = +[AXAccessQueue mainAccessQueue];
    [keyboardInputSource setDelegate:self queue:v6];

    startRunning = [keyboardInputSource startRunning];
  }

  else if (!keyboardInputSource || ((startRunning ^ 1) & 1) != 0)
  {
    if (keyboardInputSource)
    {
      v7 = startRunning;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      goto LABEL_10;
    }

    [keyboardInputSource stopRunning];
    [keyboardInputSource setDelegate:0 queue:0];
    [(SCATInputController *)self setKeyboardInputSource:0];
    startRunning = [(SCATInputController *)self _hideAlertForSource:2];
  }

  else
  {
    startRunning = [(SCATInputController *)self _updateActionsForSource:keyboardInputSource];
  }

  v4 = keyboardInputSource;
LABEL_10:

  _objc_release_x1(startRunning, v4);
}

- (void)_updateMIDIInputSource
{
  midiInputSource = [(SCATInputController *)self midiInputSource];
  v3 = [(SCATInputController *)self isEnabledSwitchWithSource:SCATSwitchSourceMIDI];
  v4 = [NSNumber numberWithBool:midiInputSource != 0];
  v7 = [NSNumber numberWithBool:v3];
  AXPrintLine();

  v5 = midiInputSource;
  if (midiInputSource || !v3)
  {
    if (midiInputSource == 0 || !v3)
    {
      if (midiInputSource == 0 || v3)
      {
        goto LABEL_9;
      }

      [midiInputSource stopRunning];
      [midiInputSource setDelegate:0 queue:0];
      [(SCATInputController *)self setMidiInputSource:0];
      [(SCATInputController *)self _hideAlertForSource:2];
    }

    else
    {
      [(SCATInputController *)self _updateActionsForSource:midiInputSource, v4, v7];
    }
  }

  else
  {
    midiInputSource = objc_opt_new();
    [(SCATInputController *)self setMidiInputSource:midiInputSource, v4, v7];
    [(SCATInputController *)self _updateActionsForSource:midiInputSource];
    v6 = +[AXAccessQueue mainAccessQueue];
    [midiInputSource setDelegate:self queue:v6];

    [midiInputSource startRunning];
  }

  v5 = midiInputSource;
LABEL_9:
}

- (void)_updateMFIInputSource
{
  mfiInputSource = [(SCATInputController *)self mfiInputSource];
  startRunning = [(SCATInputController *)self isEnabledSwitchWithSource:SCATSwitchSourceMFI];
  v4 = mfiInputSource;
  if (mfiInputSource)
  {
    if (!startRunning)
    {
      goto LABEL_6;
    }

    startRunning = [(SCATInputController *)self _updateActionsForSource:mfiInputSource];
  }

  else
  {
    mfiInputSource = objc_opt_new();
    [(SCATInputController *)self setMfiInputSource:mfiInputSource];
    [(SCATInputController *)self _updateActionsForSource:mfiInputSource];
    v5 = +[AXAccessQueue mainAccessQueue];
    [mfiInputSource setDelegate:self queue:v5];

    startRunning = [mfiInputSource startRunning];
  }

  v4 = mfiInputSource;
LABEL_6:

  _objc_release_x1(startRunning, v4);
}

- (void)_updateScreenInputSource
{
  screenInputSource = [(SCATInputController *)self screenInputSource];
  v3 = [(SCATInputController *)self isEnabledSwitchWithSource:SCATSwitchSourceScreen];
  if (v3)
  {
    v4 = screenInputSource == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    screenInputSource = objc_opt_new();
    [(SCATInputController *)self setScreenInputSource:screenInputSource];
    [(SCATInputController *)self _updateActionsForSource:screenInputSource];
    v8 = +[AXAccessQueue mainAccessQueue];
    [screenInputSource setDelegate:self queue:v8];

    [screenInputSource startRunning];
  }

  else
  {
    if (v3)
    {
      v5 = screenInputSource == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      if (screenInputSource)
      {
        v6 = v3;
      }

      else
      {
        v6 = 1;
      }

      if (v3)
      {
        v7 = screenInputSource;
      }

      else
      {
        v7 = 0;
      }

      if (v6)
      {
        screenInputSource = v7;
      }

      else
      {
        [screenInputSource stopRunning];
        [screenInputSource setDelegate:0 queue:0];
        [(SCATInputController *)self setScreenInputSource:0];
      }
    }

    else
    {
      [(SCATInputController *)self _updateActionsForSource:screenInputSource];
    }
  }

  [(SCATInputController *)self updateWhetherSwitchConfigurationHasScreenSwitch];
  [(SCATInputController *)self updateWhetherSwitchConfigurationRendersDeviceUnusable];
}

- (void)_updateGamepadInputSource
{
  gamepadInputSource = [(SCATInputController *)self gamepadInputSource];
  startRunning = [(SCATInputController *)self isEnabledSwitchWithSource:SCATSwitchSourceGamepad];
  v4 = gamepadInputSource;
  if (startRunning)
  {
    v5 = gamepadInputSource == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    gamepadInputSource = objc_opt_new();
    [(SCATInputController *)self setGamepadInputSource:gamepadInputSource];
    [(SCATInputController *)self _updateActionsForSource:gamepadInputSource];
    v8 = +[AXAccessQueue mainAccessQueue];
    [gamepadInputSource setDelegate:self queue:v8];

    startRunning = [gamepadInputSource startRunning];
  }

  else
  {
    if (startRunning)
    {
      v6 = gamepadInputSource == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (gamepadInputSource)
      {
        v7 = startRunning;
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        goto LABEL_17;
      }

      [gamepadInputSource stopRunning];
      [gamepadInputSource setDelegate:0 queue:0];
      [(SCATInputController *)self setGamepadInputSource:0];
      startRunning = [(SCATInputController *)self _hideAlertForSource:2];
    }

    else
    {
      startRunning = [(SCATInputController *)self _updateActionsForSource:gamepadInputSource];
    }
  }

  v4 = gamepadInputSource;
LABEL_17:

  _objc_release_x1(startRunning, v4);
}

- (void)_updateTadmorInputSource
{
  tadmorInputSource = [(SCATInputController *)self tadmorInputSource];
  if (tadmorInputSource)
  {
    v5 = tadmorInputSource;
    [(SCATInputController *)self _updateActionsForSource:tadmorInputSource];
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

- (void)tadmorInputSource:(id)source didReceiveMovementDelta:(CGPoint)delta
{
  y = delta.y;
  x = delta.x;
  delegate = [(SCATInputController *)self delegate];
  [delegate inputController:self didReceiveMovementDelta:{x, y}];
}

- (void)tadmorInputSource:(id)source didUpdateSignalQuality:(int64_t)quality
{
  delegate = [(SCATInputController *)self delegate];
  [delegate inputController:self didUpdateSignalQuality:quality];
}

- (void)tadmorInputSource:(id)source didReceiveItemSelectionIndex:(int64_t)index
{
  delegate = [(SCATInputController *)self delegate];
  [delegate inputController:self didReceiveItemSelectionIndex:index];
}

- (BOOL)isTadmorInputSourceConnected
{
  tadmorInputSource = [(SCATInputController *)self tadmorInputSource];
  v3 = [tadmorInputSource numberOfDevicesConnected] != 0;

  return v3;
}

- (void)_updateAirPodsSource
{
  airPodsSource = [(SCATInputController *)self airPodsSource];
  v4 = [(SCATInputController *)self isEnabledSwitchWithSource:SCATSwitchSourceHeadGesture];
  if (v4)
  {
    v5 = airPodsSource == 0;
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

    airPodsSource = objc_opt_new();
    [(SCATInputController *)self setAirPodsSource:airPodsSource];
    [(SCATInputController *)self _updateActionsForSource:airPodsSource];
    v10 = +[AXAccessQueue mainAccessQueue];
    [airPodsSource setDelegate:self queue:v10];

    [airPodsSource startRunning];
  }

  else
  {
    if (v4)
    {
      v6 = airPodsSource == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (airPodsSource)
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

        [airPodsSource stopRunning];
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

      [(SCATInputController *)self _updateActionsForSource:airPodsSource];
    }
  }
}

- (void)_updateHeadGesturesInputSource
{
  headGestureSource = [(SCATInputController *)self headGestureSource];
  v4 = [(SCATInputController *)self isEnabledSwitchWithSource:SCATSwitchSourceCamera];
  if (v4)
  {
    v5 = headGestureSource == 0;
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

    headGestureSource = objc_opt_new();
    [(SCATInputController *)self setHeadGestureSource:headGestureSource];
    [(SCATInputController *)self _updateActionsForSource:headGestureSource];
    v10 = +[AXAccessQueue mainAccessQueue];
    [headGestureSource setDelegate:self queue:v10];

    [headGestureSource startRunning];
  }

  else
  {
    if (v4)
    {
      v6 = headGestureSource == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (headGestureSource)
      {
        v7 = v4;
      }

      else
      {
        v7 = 1;
      }

      if (v4)
      {
        v8 = headGestureSource;
      }

      else
      {
        v8 = 0;
      }

      if (v7)
      {
        headGestureSource = v8;
      }

      else
      {
        v13 = SWCHLogHW();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "HeadGestures: No switches configured for headGestureSource. Tearing it down.", v14, 2u);
        }

        [headGestureSource stopRunning];
        [headGestureSource setDelegate:0 queue:0];
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

      [(SCATInputController *)self _updateActionsForSource:headGestureSource];
    }
  }

  [(SCATInputController *)self _updateSCNeedsCameraOnLockScreen];
}

- (void)_updateCameraHandGestureSource
{
  handGestureSource = [(SCATInputController *)self handGestureSource];
  v4 = [(SCATInputController *)self isEnabledSwitchWithSource:SCATSwitchSourceCameraHandGesture];
  if (v4)
  {
    v5 = handGestureSource == 0;
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

    handGestureSource = objc_opt_new();
    [(SCATInputController *)self setHandGestureSource:handGestureSource];
    [(SCATInputController *)self _updateActionsForSource:handGestureSource];
    v10 = +[AXAccessQueue mainAccessQueue];
    [handGestureSource setDelegate:self queue:v10];

    [handGestureSource startRunning];
  }

  else
  {
    if (v4)
    {
      v6 = handGestureSource == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (handGestureSource)
      {
        v7 = v4;
      }

      else
      {
        v7 = 1;
      }

      if (v4)
      {
        v8 = handGestureSource;
      }

      else
      {
        v8 = 0;
      }

      if (v7)
      {
        handGestureSource = v8;
      }

      else
      {
        v13 = SWCHLogHW();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "HandGestures: No switches configured for handGestureSource. Tearing it down.", v14, 2u);
        }

        [handGestureSource stopRunning];
        [handGestureSource setDelegate:0 queue:0];
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

      [(SCATInputController *)self _updateActionsForSource:handGestureSource];
    }
  }
}

- (void)_updateInterDeviceInputSource
{
  interDeviceInputSource = [(SCATInputController *)self interDeviceInputSource];

  if (!interDeviceInputSource)
  {
    v4 = objc_opt_new();
    [(SCATInputController *)self setInterDeviceInputSource:v4];
    [(SCATInputController *)self _updateActionsForSource:v4];
    v5 = +[AXAccessQueue mainAccessQueue];
    [v4 setDelegate:self queue:v5];

    [v4 startRunning];
  }

  interDeviceInputSource2 = [(SCATInputController *)self interDeviceInputSource];
  [(SCATInputController *)self _updateActionsForSource:interDeviceInputSource2];
}

- (BOOL)isMotionTrackingEnabled
{
  if ([(SCATInputController *)self headMotionTrackingEnabled])
  {
    return 1;
  }

  return [(SCATInputController *)self eyeGazeMotionTrackingEnabled];
}

- (void)setHeadMotionTrackingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
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
  self->_headMotionTrackingEnabled = enabledCopy;
  if (headMotionTrackingEnabled != enabledCopy)
  {
    [(SCATInputController *)self _updateMotionTrackingInputSource];
  }

  if (enabledCopy)
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

- (void)setEyeGazeMotionTrackingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
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
  self->_eyeGazeMotionTrackingEnabled = enabledCopy;
  if (eyeGazeMotionTrackingEnabled != enabledCopy)
  {
    [(SCATInputController *)self _updateMotionTrackingInputSource];
  }

  if (enabledCopy)
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

- (void)setMotionTrackingEnabled:(BOOL)enabled
{
  v3 = SWCHLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_100129C90(v3);
  }
}

- (void)overrideMotionTrackerLookAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(SCATInputController *)self isMotionTrackingEnabled])
  {
    motionTrackerInputSource = [(SCATInputController *)self motionTrackerInputSource];

    if (motionTrackerInputSource)
    {
      motionTrackerInputSource2 = [(SCATInputController *)self motionTrackerInputSource];
      [motionTrackerInputSource2 overrideLookAtPoint:{x, y}];
    }
  }
}

- (void)_updateMotionTrackingInputSource
{
  motionTrackerInputSource = [(SCATInputController *)self motionTrackerInputSource];
  cameraInputSource = [(SCATInputController *)self cameraInputSource];

  if ([(SCATInputController *)self isMotionTrackingEnabled]&& cameraInputSource)
  {
    [(SCATInputController *)self _showHeadTrackingErrorMessageForHeadMovementSwitchConflict];
  }

  if (cameraInputSource && motionTrackerInputSource)
  {
    [(SCATInputController *)self _removeMotionTrackingInputSourceAndClearAlert:0];
  }

  if ([(SCATInputController *)self isMotionTrackingEnabled]|| !cameraInputSource)
  {
    if ([(SCATInputController *)self isMotionTrackingEnabled]&& !motionTrackerInputSource && !cameraInputSource)
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

  if ([(SCATInputController *)self isMotionTrackingEnabled]&& motionTrackerInputSource)
  {
    [(SCATInputController *)self _updateActionsForSource:motionTrackerInputSource];
  }

  else if (![(SCATInputController *)self isMotionTrackingEnabled]&& motionTrackerInputSource)
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

  motionTrackerInputSource = [(SCATInputController *)self motionTrackerInputSource];
  [motionTrackerInputSource startRunning];
}

- (void)_updateHeadMotionTrackingInputSource
{
  motionTrackerInputSource = [(SCATInputController *)self motionTrackerInputSource];
  if (motionTrackerInputSource)
  {
    v4 = motionTrackerInputSource;
    motionTrackerInputSource2 = [(SCATInputController *)self motionTrackerInputSource];
    isHeadTracking = [motionTrackerInputSource2 isHeadTracking];

    if ((isHeadTracking & 1) == 0)
    {
      v8 = [NSSet setWithObjects:&off_1001E5478, 0];
      motionTrackerInputSource3 = [(SCATInputController *)self motionTrackerInputSource];
      [motionTrackerInputSource3 setAllowedTrackingTypes:v8];
    }
  }
}

- (void)_updateEyeGazeMotionTrackingInputSource
{
  if ([(SCATInputController *)self isOnDeviceEyeTrackingSupported])
  {
    motionTrackerInputSource = [(SCATInputController *)self motionTrackerInputSource];
    if (motionTrackerInputSource)
    {
      v4 = motionTrackerInputSource;
      motionTrackerInputSource2 = [(SCATInputController *)self motionTrackerInputSource];
      isEyeTracking = [motionTrackerInputSource2 isEyeTracking];

      if ((isEyeTracking & 1) == 0)
      {
        v8 = [NSSet setWithObjects:&off_1001E5490, 0];
        motionTrackerInputSource3 = [(SCATInputController *)self motionTrackerInputSource];
        [motionTrackerInputSource3 setAllowedTrackingTypes:v8];
      }
    }
  }
}

- (void)_removeMotionTrackingInputSourceAndClearAlert:(BOOL)alert
{
  alertCopy = alert;
  motionTrackerInputSource = [(SCATInputController *)self motionTrackerInputSource];
  [motionTrackerInputSource stopRunning];

  motionTrackerInputSource2 = [(SCATInputController *)self motionTrackerInputSource];
  [motionTrackerInputSource2 setDelegate:0 queue:0];

  [(SCATInputController *)self setMotionTrackerInputSource:0];
  motionTrackerDelayedShowAlertTimer = [(SCATInputController *)self motionTrackerDelayedShowAlertTimer];

  if (motionTrackerDelayedShowAlertTimer)
  {
    motionTrackerDelayedShowAlertTimer2 = [(SCATInputController *)self motionTrackerDelayedShowAlertTimer];
    [motionTrackerDelayedShowAlertTimer2 invalidate];

    [(SCATInputController *)self setMotionTrackerDelayedShowAlertTimer:0];
  }

  motionTrackerDelayedHideAlertTimer = [(SCATInputController *)self motionTrackerDelayedHideAlertTimer];
  isValid = [motionTrackerDelayedHideAlertTimer isValid];

  if (!isValid && alertCopy)
  {
    [(SCATInputController *)self _hideAlertForMotionTrackerInputSource];
  }

  [(SCATInputController *)self setMotionTrackerErrorCode:0x7FFFFFFFFFFFFFFFLL];

  [(SCATInputController *)self _updateSCNeedsCameraOnLockScreen];
}

- (void)_updateSCNeedsCameraOnLockScreen
{
  motionTrackerInputSource = [(SCATInputController *)self motionTrackerInputSource];
  if (motionTrackerInputSource)
  {

    v4 = 1;
  }

  else
  {
    cameraInputSource = [(SCATInputController *)self cameraInputSource];
    v4 = cameraInputSource != 0;
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
  accessibilityEventInputSource = [(SCATInputController *)self accessibilityEventInputSource];
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
      startRunning = [(SCATInputController *)self isEnabledSwitchWithSource:SCATSwitchSourceAutomation];
      goto LABEL_5;
    }
  }

  startRunning = 1;
LABEL_5:
  v4 = accessibilityEventInputSource;
  if (startRunning && !accessibilityEventInputSource)
  {
    accessibilityEventInputSource = objc_opt_new();
    [(SCATInputController *)self setAccessibilityEventInputSource:accessibilityEventInputSource];
    [(SCATInputController *)self _updateActionsForSource:accessibilityEventInputSource];
    v5 = +[AXAccessQueue mainAccessQueue];
    [accessibilityEventInputSource setDelegate:self queue:v5];

    startRunning = [accessibilityEventInputSource startRunning];
LABEL_16:
    v4 = accessibilityEventInputSource;
    goto LABEL_17;
  }

  if (accessibilityEventInputSource)
  {
    v6 = startRunning;
  }

  else
  {
    v6 = 0;
  }

  if (v6 == 1)
  {
    startRunning = [(SCATInputController *)self _updateActionsForSource:accessibilityEventInputSource];
    goto LABEL_16;
  }

  if ((startRunning & 1) == 0 && accessibilityEventInputSource)
  {
    [accessibilityEventInputSource stopRunning];
    [accessibilityEventInputSource setDelegate:0 queue:0];
    startRunning = [(SCATInputController *)self setAccessibilityEventInputSource:0];
    goto LABEL_16;
  }

LABEL_17:

  _objc_release_x1(startRunning, v4);
}

- (void)_updateRemoteControlInputSource
{
  remoteControlInputSource = [(SCATInputController *)self remoteControlInputSource];

  if (!remoteControlInputSource)
  {
    v4 = objc_opt_new();
    [(SCATInputController *)self setRemoteControlInputSource:v4];

    remoteControlInputSource2 = [(SCATInputController *)self remoteControlInputSource];
    v6 = +[AXAccessQueue mainAccessQueue];
    [remoteControlInputSource2 setDelegate:self queue:v6];

    remoteControlInputSource3 = [(SCATInputController *)self remoteControlInputSource];
    [remoteControlInputSource3 startRunning];
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
  _allSwitchesInUse = [(SCATInputController *)self _allSwitchesInUse];
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
  [_allSwitchesInUse enumerateObjectsUsingBlock:v74];
  recipe = [(SCATInputController *)self recipe];
  if (recipe)
  {
    recipe2 = [(SCATInputController *)self recipe];
    shouldContinueScanning = [recipe2 shouldContinueScanning];

    if ((shouldContinueScanning & 1) == 0)
    {
      goto LABEL_91;
    }
  }

  v8 = +[AXSettings sharedInstance];
  switchControlScanningStyle = [v8 switchControlScanningStyle];

  if (!switchControlScanningStyle)
  {
    goto LABEL_7;
  }

  if (switchControlScanningStyle == 1)
  {
    keyboardInputSource = [(SCATInputController *)self keyboardInputSource];
    numberOfDevicesConnected = [keyboardInputSource numberOfDevicesConnected];

    mfiInputSource = [(SCATInputController *)self mfiInputSource];
    numberOfDevicesConnected2 = [mfiInputSource numberOfDevicesConnected];

    midiInputSource = [(SCATInputController *)self midiInputSource];
    numberOfDevicesConnected3 = [midiInputSource numberOfDevicesConnected];

    gamepadInputSource = [(SCATInputController *)self gamepadInputSource];
    numberOfDevicesConnected4 = [gamepadInputSource numberOfDevicesConnected];

    tadmorInputSource = [(SCATInputController *)self tadmorInputSource];
    numberOfDevicesConnected5 = [tadmorInputSource numberOfDevicesConnected];

    interDeviceCommunicator = [(SCATInputController *)self interDeviceCommunicator];
    isReceivingSwitchEvents = [interDeviceCommunicator isReceivingSwitchEvents];

    if (*(v88 + 24) == 1)
    {
      v19 = [v4 objectForKeyedSubscript:SCATSwitchSourceScreen];
      firstObject = [v19 firstObject];
      if ([firstObject BOOLValue])
      {
        bOOLValue = 1;
      }

      else
      {
        v22 = [v4 objectForKeyedSubscript:SCATSwitchSourceKeyboard];
        firstObject2 = [v22 firstObject];
        if ([firstObject2 BOOLValue] && numberOfDevicesConnected)
        {
          bOOLValue = 1;
        }

        else
        {
          v66 = [v4 objectForKeyedSubscript:SCATSwitchSourceMFI];
          firstObject3 = [v66 firstObject];
          if ([firstObject3 BOOLValue] && numberOfDevicesConnected2)
          {
            bOOLValue = 1;
          }

          else
          {
            v62 = [v4 objectForKeyedSubscript:SCATSwitchSourceMIDI];
            firstObject4 = [v62 firstObject];
            if ([firstObject4 BOOLValue] && numberOfDevicesConnected3)
            {
              bOOLValue = 1;
            }

            else
            {
              v58 = [v4 objectForKeyedSubscript:SCATSwitchSourceRemote];
              firstObject5 = [v58 firstObject];
              if ([firstObject5 BOOLValue] & isReceivingSwitchEvents)
              {
                bOOLValue = 1;
              }

              else
              {
                v54 = [v4 objectForKeyedSubscript:SCATSwitchSourceGamepad];
                firstObject6 = [v54 firstObject];
                if ([firstObject6 BOOLValue] && numberOfDevicesConnected4)
                {
                  bOOLValue = 1;
                }

                else
                {
                  v50 = [v4 objectForKeyedSubscript:SCATSwitchSourceBackTap];
                  firstObject7 = [v50 firstObject];
                  if ([firstObject7 BOOLValue])
                  {
                    bOOLValue = 1;
                  }

                  else
                  {
                    v46 = [v4 objectForKeyedSubscript:SCATSwitchSourceSound];
                    firstObject8 = [v46 firstObject];
                    if ([firstObject8 BOOLValue])
                    {
                      bOOLValue = 1;
                    }

                    else
                    {
                      v42 = [v4 objectForKeyedSubscript:SCATSwitchSourceTadmor];
                      firstObject9 = [v42 firstObject];
                      if ([firstObject9 BOOLValue] && numberOfDevicesConnected5)
                      {
                        bOOLValue = 1;
                      }

                      else
                      {
                        v38 = [v4 objectForKeyedSubscript:SCATSwitchSourceCamera];
                        firstObject10 = [v38 firstObject];
                        if ([firstObject10 BOOLValue])
                        {
                          bOOLValue = 1;
                        }

                        else
                        {
                          v36 = [v4 objectForKeyedSubscript:SCATSwitchSourceCameraHandGesture];
                          firstObject11 = [v36 firstObject];
                          if ([firstObject11 BOOLValue])
                          {
                            bOOLValue = 1;
                          }

                          else
                          {
                            v34 = [v4 objectForKeyedSubscript:SCATSwitchSourceAutomation];
                            firstObject12 = [v34 firstObject];
                            bOOLValue = [firstObject12 BOOLValue];
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
      bOOLValue = 0;
    }

    if (*(v84 + 24) != 1)
    {
      goto LABEL_91;
    }

    v24 = [v4 objectForKeyedSubscript:SCATSwitchSourceScreen];
    lastObject = [v24 lastObject];
    if ([lastObject BOOLValue])
    {
      bOOLValue2 = 1;
    }

    else
    {
      v27 = [v4 objectForKeyedSubscript:SCATSwitchSourceKeyboard];
      lastObject2 = [v27 lastObject];
      if ([lastObject2 BOOLValue] && numberOfDevicesConnected)
      {
        bOOLValue2 = 1;
      }

      else
      {
        v67 = [v4 objectForKeyedSubscript:SCATSwitchSourceMFI];
        lastObject3 = [v67 lastObject];
        if ([lastObject3 BOOLValue] && numberOfDevicesConnected2)
        {
          bOOLValue2 = 1;
        }

        else
        {
          v65 = [v4 objectForKeyedSubscript:SCATSwitchSourceMIDI];
          lastObject4 = [v65 lastObject];
          if ([lastObject4 BOOLValue] && numberOfDevicesConnected3)
          {
            bOOLValue2 = 1;
          }

          else
          {
            v73 = [v4 objectForKeyedSubscript:SCATSwitchSourceRemote];
            lastObject5 = [v73 lastObject];
            if ([lastObject5 BOOLValue] & isReceivingSwitchEvents)
            {
              bOOLValue2 = 1;
            }

            else
            {
              v61 = [v4 objectForKeyedSubscript:SCATSwitchSourceGamepad];
              lastObject6 = [v61 lastObject];
              if ([lastObject6 BOOLValue] && numberOfDevicesConnected4)
              {
                bOOLValue2 = 1;
              }

              else
              {
                v71 = [v4 objectForKeyedSubscript:SCATSwitchSourceBackTap];
                lastObject7 = [v71 lastObject];
                if ([lastObject7 BOOLValue])
                {
                  bOOLValue2 = 1;
                }

                else
                {
                  v55 = [v4 objectForKeyedSubscript:SCATSwitchSourceSound];
                  lastObject8 = [v55 lastObject];
                  if ([lastObject8 BOOLValue])
                  {
                    bOOLValue2 = 1;
                  }

                  else
                  {
                    v51 = [v4 objectForKeyedSubscript:SCATSwitchSourceTadmor];
                    lastObject9 = [v51 lastObject];
                    if ([lastObject9 BOOLValue] && numberOfDevicesConnected5)
                    {
                      bOOLValue2 = 1;
                    }

                    else
                    {
                      v69 = [v4 objectForKeyedSubscript:SCATSwitchSourceCamera];
                      lastObject10 = [v69 lastObject];
                      if ([lastObject10 BOOLValue])
                      {
                        bOOLValue2 = 1;
                      }

                      else
                      {
                        v45 = [v4 objectForKeyedSubscript:SCATSwitchSourceCameraHandGesture];
                        lastObject11 = [v45 lastObject];
                        if ([lastObject11 BOOLValue])
                        {
                          bOOLValue2 = 1;
                        }

                        else
                        {
                          v41 = [v4 objectForKeyedSubscript:SCATSwitchSourceAutomation];
                          lastObject12 = [v41 lastObject];
                          bOOLValue2 = [lastObject12 BOOLValue];
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

    if ((bOOLValue & bOOLValue2 & 1) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

  if (switchControlScanningStyle != 2)
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
  inputHoldTimer = [(SCATInputController *)self inputHoldTimer];
  if (inputHoldTimer)
  {
    [inputHoldTimer cancel];
    [(SCATInputController *)self setInputHoldTimer:0];
  }

  inputRepeatTimer = [(SCATInputController *)self inputRepeatTimer];
  v4 = inputRepeatTimer;
  if (inputRepeatTimer)
  {
    [inputRepeatTimer cancel];
    [(SCATInputController *)self setInputRepeatTimer:0];
  }

  ignoreActionsTimer = [(SCATInputController *)self ignoreActionsTimer];
  v6 = ignoreActionsTimer;
  if (ignoreActionsTimer)
  {
    [ignoreActionsTimer cancel];
    [(SCATInputController *)self setIgnoreActionsTimer:0];
  }
}

- (void)_setupInputTimers
{
  inputHoldTimer = [(SCATInputController *)self inputHoldTimer];
  if (!inputHoldTimer)
  {
    inputHoldTimer = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    [inputHoldTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    [inputHoldTimer setLabel:@"input hold timer"];
    [(SCATInputController *)self setInputHoldTimer:inputHoldTimer];
  }

  inputRepeatTimer = [(SCATInputController *)self inputRepeatTimer];
  if (!inputRepeatTimer)
  {
    inputRepeatTimer = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    [inputRepeatTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    [inputRepeatTimer setLabel:@"input repeat timer"];
    [(SCATInputController *)self setInputRepeatTimer:inputRepeatTimer];
  }

  ignoreActionsTimer = [(SCATInputController *)self ignoreActionsTimer];
  if (!ignoreActionsTimer)
  {
    ignoreActionsTimer = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    [ignoreActionsTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    [ignoreActionsTimer setLabel:@"ignore actions timer"];
    [(SCATInputController *)self setIgnoreActionsTimer:ignoreActionsTimer];
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
  selfCopy = self;
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

- (SCATInputController)initWithInterDeviceCommunicator:(id)communicator
{
  communicatorCopy = communicator;
  v9.receiver = self;
  v9.super_class = SCATInputController;
  v6 = [(SCATInputController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(SCATInputController *)v6 _sharedInit];
    objc_storeStrong(&v7->_interDeviceCommunicator, communicator);
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
  assistiveTouchSwitches = [v3 assistiveTouchSwitches];
  recipe = [(SCATInputController *)self recipe];

  if (recipe)
  {
    recipe2 = [(SCATInputController *)self recipe];
    mappings = [recipe2 mappings];
    v8 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [mappings count]);

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    recipe3 = [(SCATInputController *)self recipe];
    mappings2 = [recipe3 mappings];

    v11 = [mappings2 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(mappings2);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          switchUUID = [v15 switchUUID];

          if (switchUUID)
          {
            switchUUID2 = [v15 switchUUID];
            [v8 addObject:switchUUID2];
          }
        }

        v12 = [mappings2 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10007850C;
    v21[3] = &unk_1001D5990;
    v22 = v8;
    v18 = v8;
    v19 = [assistiveTouchSwitches objectsPassingTest:v21];
  }

  else
  {
    v19 = [assistiveTouchSwitches objectsPassingTest:&stru_1001D59D0];
  }

  return v19;
}

- (int64_t)role
{
  interDeviceCommunicator = [(SCATInputController *)self interDeviceCommunicator];
  isReceivingSwitchEvents = [interDeviceCommunicator isReceivingSwitchEvents];

  if (isReceivingSwitchEvents)
  {
    return 2;
  }

  interDeviceCommunicator2 = [(SCATInputController *)self interDeviceCommunicator];
  isForwardingSwitchEvents = [interDeviceCommunicator2 isForwardingSwitchEvents];

  return isForwardingSwitchEvents;
}

- (void)setRecipe:(id)recipe
{
  recipeCopy = recipe;
  p_recipe = &self->_recipe;
  if (self->_recipe != recipeCopy)
  {
    v7 = recipeCopy;
    objc_storeStrong(p_recipe, recipe);
    p_recipe = [(SCATInputController *)self hasInitializedInputSources];
    recipeCopy = v7;
    if (p_recipe)
    {
      p_recipe = [(SCATInputController *)self _updateInputSources];
      recipeCopy = v7;
    }
  }

  _objc_release_x1(p_recipe, recipeCopy);
}

- (BOOL)_isSwitchWithSource:(id)source isEnabled:(id)enabled
{
  sourceCopy = source;
  enabledCopy = enabled;
  _allSwitchesInUse = [(SCATInputController *)self _allSwitchesInUse];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100078780;
  v12[3] = &unk_1001D59F8;
  v9 = sourceCopy;
  v13 = v9;
  v10 = enabledCopy;
  v14 = v10;
  v15 = &v16;
  [_allSwitchesInUse enumerateObjectsUsingBlock:v12];
  LOBYTE(enabledCopy) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return enabledCopy;
}

- (void)updateWhetherSwitchConfigurationRendersDeviceUnusable
{
  _switchConfigurationRendersDeviceUnusable = [(SCATInputController *)self _switchConfigurationRendersDeviceUnusable];
  isValid = [(SCATInputController *)self isValid];
  if (_switchConfigurationRendersDeviceUnusable)
  {
    if (isValid)
    {
      [(SCATInputController *)self setValid:[(SCATInputController *)self isValid]^ 1];
      v5 = AXLocStringKeyForHomeButton();
      v6 = sub_100042B24(v5);

      [(SCATInputController *)self _showAlert:v6 forSource:3];
    }
  }

  else if ((isValid & 1) == 0)
  {
    [(SCATInputController *)self setValid:[(SCATInputController *)self isValid]^ 1];
    [(SCATInputController *)self _hideAlertForSource:3];
  }

  v7 = +[AXBackBoardServer server];
  [v7 setSwitchControlRendersDeviceUnusable:_switchConfigurationRendersDeviceUnusable];
}

- (void)updateWhetherSwitchConfigurationHasScreenSwitch
{
  v3 = +[AXBackBoardServer server];
  [v3 setSwitchControlHasScreenSwitch:{-[SCATInputController _switchConfigurationHasScreenSwitch](self, "_switchConfigurationHasScreenSwitch")}];
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  queueCopy = queue;
  [(SCATInputController *)self setDelegate:delegate];
  [(SCATInputController *)self setQueue:queueCopy];
}

- (AXUIClient)userInterfaceClient
{
  delegate = [(SCATInputController *)self delegate];
  v4 = [delegate userInterfaceClientForInputController:self];

  return v4;
}

- (void)_hideAlerts
{
  delegate = [(SCATInputController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(SCATInputController *)self delegate];
    [delegate2 inputController:self shouldHideAlerts:1];
  }
}

- (void)_hideAlertForSource:(unint64_t)source
{
  delegate = [(SCATInputController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SCATInputController *)self delegate];
    [delegate2 inputController:self shouldHideAlerts:1];
  }
}

- (void)_hideStateForSource:(unint64_t)source
{
  userInterfaceClient = [(SCATInputController *)self userInterfaceClient];
  v4 = [NSNumber numberWithUnsignedInteger:source];
  v5 = [NSDictionary dictionaryWithObjectsAndKeys:v4, @"input source", 0];

  [userInterfaceClient sendAsynchronousMessage:v5 withIdentifier:5 targetAccessQueue:0 completion:0];
}

- (void)_showAlert:(id)alert forSource:(unint64_t)source
{
  alertCopy = alert;
  v7 = +[AXSettings sharedInstance];
  switchControlIgnoreInvalidSwitchConfiguration = [v7 switchControlIgnoreInvalidSwitchConfiguration];

  if ((source & 0xFFFFFFFFFFFFFFFELL) == 2 && switchControlIgnoreInvalidSwitchConfiguration)
  {
    v9 = SWCHLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [NSNumber numberWithUnsignedInteger:source];
      v14 = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = alertCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not showing alert because switchControlIgnoreInvalidSwitchConfiguration is enabled. Input Source: %@. Alert: %@", &v14, 0x16u);
    }
  }

  else
  {
    delegate = [(SCATInputController *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegate2 = [(SCATInputController *)self delegate];
      [delegate2 inputController:self showAlert:alertCopy];
    }
  }
}

- (void)_showState:(id)state forSource:(unint64_t)source
{
  stateCopy = state;
  userInterfaceClient = [(SCATInputController *)self userInterfaceClient];
  v7 = [NSNumber numberWithUnsignedInteger:source];
  v8 = [NSDictionary dictionaryWithObjectsAndKeys:v7, @"input source", stateCopy, @"input state", 0];

  [userInterfaceClient sendAsynchronousMessage:v8 withIdentifier:6 targetAccessQueue:0 completion:0];
}

- (void)_restrictSystemApertureLayoutToInert
{
  if (AXDeviceHasJindo())
  {
    [(SCATInputController *)self _invalidateAssertionForSystemApertureInert];
    systemApertureInvalidatable = [(SCATInputController *)self systemApertureInvalidatable];

    if (!systemApertureInvalidatable)
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
    systemApertureInvalidatable = [(SCATInputController *)self systemApertureInvalidatable];

    if (systemApertureInvalidatable)
    {
      systemApertureInvalidatable2 = [(SCATInputController *)self systemApertureInvalidatable];
      [systemApertureInvalidatable2 invalidate];

      [(SCATInputController *)self setSystemApertureInvalidatable:0];
    }
  }
}

- (void)didReceiveSwitchEvent:(id)event forDeviceWithName:(id)name
{
  nameCopy = name;
  eventCopy = event;
  interDeviceInputSource = [(SCATInputController *)self interDeviceInputSource];
  [interDeviceInputSource handleReceivedSwitchEvent:eventCopy deviceName:nameCopy];
}

- (void)performSysdiagnose
{
  delegate = [(SCATInputController *)self delegate];
  [delegate performSysdiagnoseForInputController:self];
}

- (SCATInputControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end