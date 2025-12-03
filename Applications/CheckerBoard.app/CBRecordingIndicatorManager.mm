@interface CBRecordingIndicatorManager
+ (BOOL)_supportsSecureIndicator;
- (CBRecordingIndicatorManager)initWithWindowScene:(id)scene;
- (UIWindowScene)windowScene;
- (id)_indicatorIdentifierForSensorType:(int64_t)type;
- (unint64_t)_indicatorTypeForSensorType:(int64_t)type;
- (void)_createRecordingIndicatorForStandaloneLocation;
- (void)_createRecordingIndicatorForStatusBarLocation;
- (void)_createRecordingIndicatorForSystemApertureLocation;
- (void)_dataProviderDidUpdate:(id)update;
- (void)_setIndicatorVisible:(BOOL)visible atLocation:(unint64_t)location;
- (void)_updateIndicatorStyleForSensorActivityAttributions:(id)attributions;
- (void)_updateIndicatorViewForSensorType:(int64_t)type;
- (void)_updateRecordingIndicatorForStatusBarChanges;
- (void)_updateRecordingIndicatorLocationIfNecessary;
- (void)activityDidChangeForSensorActivityDataProvider:(id)provider;
- (void)recordingIndicatorViewController:(id)controller didUpdateIndicatorState:(unint64_t)state;
- (void)setIndicatorVisible:(BOOL)visible;
- (void)setIndicatorVisibleAtStatusBarLocation:(BOOL)location;
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation CBRecordingIndicatorManager

- (CBRecordingIndicatorManager)initWithWindowScene:(id)scene
{
  sceneCopy = scene;
  v19.receiver = self;
  v19.super_class = CBRecordingIndicatorManager;
  v5 = [(CBRecordingIndicatorManager *)&v19 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_windowScene, sceneCopy);
    v7 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v7 userInterfaceIdiom];

    v9 = +[BSPlatform sharedInstance];
    homeButtonType = [v9 homeButtonType];

    _supportsSecureIndicator = [objc_opt_class() _supportsSecureIndicator];
    v12 = homeButtonType != 2 || userInterfaceIdiom == 1;
    v13 = 2;
    if (!v12)
    {
      v13 = 0;
    }

    if (_supportsSecureIndicator)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }

    v6->_displayMode = v14;
    [(CBRecordingIndicatorManager *)v6 _createRecordingIndicatorForStandaloneLocation];
    if (v14 >= 2)
    {
      [(CBRecordingIndicatorManager *)v6 _createRecordingIndicatorForStatusBarLocation];
    }

    v15 = +[UIApplication sharedApplication];
    delegate = [v15 delegate];

    sensorActivityDataProvider = [delegate sensorActivityDataProvider];
    [sensorActivityDataProvider addObserver:v6];
    [(CBRecordingIndicatorManager *)v6 activityDidChangeForSensorActivityDataProvider:sensorActivityDataProvider];
  }

  return v6;
}

- (void)_createRecordingIndicatorForStandaloneLocation
{
  windowScene = [(CBRecordingIndicatorManager *)self windowScene];
  v3 = [[CBRecordingIndicatorWindow alloc] initWithWindowScene:windowScene debugName:@"Recording Indicator"];
  v4 = [[CBRecordingIndicatorViewController alloc] initForLocation:0];
  recordingIndicatorViewController = self->_recordingIndicatorViewController;
  self->_recordingIndicatorViewController = v4;

  [(CBRecordingIndicatorWindow *)v3 setRootViewController:self->_recordingIndicatorViewController];
  [(CBRecordingIndicatorWindow *)v3 setWindowLevel:UIScreenshotServicesWindowLevel + 10.0];
  [(CBRecordingIndicatorWindow *)v3 setUserInteractionEnabled:0];
  [(CBRecordingIndicatorWindow *)v3 setHidden:0];
  recordingIndicatorWindow = self->_recordingIndicatorWindow;
  self->_recordingIndicatorWindow = &v3->super.super.super;
}

- (void)_createRecordingIndicatorForStatusBarLocation
{
  windowScene = [(CBRecordingIndicatorManager *)self windowScene];
  v3 = [[CBRecordingIndicatorWindow alloc] initWithWindowScene:windowScene debugName:@"Recording Indicator (UIKit Status Bar Portal)"];
  v4 = [[CBRecordingIndicatorViewController alloc] initForLocation:1];
  recordingIndicatorViewControllerUIKitStatusBarPortal = self->_recordingIndicatorViewControllerUIKitStatusBarPortal;
  self->_recordingIndicatorViewControllerUIKitStatusBarPortal = v4;

  [(CBRecordingIndicatorWindow *)v3 setRootViewController:self->_recordingIndicatorViewControllerUIKitStatusBarPortal];
  [(CBRecordingIndicatorWindow *)v3 setWindowLevel:UIWindowLevelNormal + -1.0];
  [(CBRecordingIndicatorWindow *)v3 setUserInteractionEnabled:0];
  [(CBRecordingIndicatorWindow *)v3 setHidden:0];
  recordingIndicatorWindowUIKitStatusBarPortal = self->_recordingIndicatorWindowUIKitStatusBarPortal;
  self->_recordingIndicatorWindowUIKitStatusBarPortal = &v3->super.super.super;
  v7 = v3;

  v8 = objc_opt_class();
  indicatorView = [(CBRecordingIndicatorViewController *)self->_recordingIndicatorViewControllerUIKitStatusBarPortal indicatorView];

  screen = [windowScene screen];
  [v8 registerSensorActivityIndicator:indicatorView forScreen:screen];
}

- (void)_createRecordingIndicatorForSystemApertureLocation
{
  windowScene = [(CBRecordingIndicatorManager *)self windowScene];
  v3 = [[CBRecordingIndicatorWindow alloc] initWithWindowScene:windowScene debugName:@"Recording Indicator (SystemAperture Portal)"];
  v4 = [[CBRecordingIndicatorViewController alloc] initForLocation:2];
  recordingIndicatorViewControllerSystemAperturePortal = self->_recordingIndicatorViewControllerSystemAperturePortal;
  self->_recordingIndicatorViewControllerSystemAperturePortal = v4;

  [(CBRecordingIndicatorWindow *)v3 setRootViewController:self->_recordingIndicatorViewControllerSystemAperturePortal];
  [(CBRecordingIndicatorWindow *)v3 setWindowLevel:UIScreenshotServicesWindowLevel + 5.0];
  [(CBRecordingIndicatorWindow *)v3 setUserInteractionEnabled:0];
  [(CBRecordingIndicatorWindow *)v3 setHidden:0];
  recordingIndicatorWindowSystemAperturePortal = self->_recordingIndicatorWindowSystemAperturePortal;
  self->_recordingIndicatorWindowSystemAperturePortal = &v3->super.super.super;
  v7 = v3;

  indicatorContainerView = [(CBRecordingIndicatorViewController *)self->_recordingIndicatorViewControllerSystemAperturePortal indicatorContainerView];
  v9 = [[_UIPortalView alloc] initWithSourceView:indicatorContainerView];
  [v9 setMatchesAlpha:1];
  [(CBRecordingIndicatorViewController *)self->_recordingIndicatorViewControllerSystemAperturePortal setDelegate:self];
}

- (unint64_t)_indicatorTypeForSensorType:(int64_t)type
{
  if (type != 1)
  {
    return 0;
  }

  if (UIAccessibilityShouldDifferentiateWithoutColor())
  {
    return 2;
  }

  return 1;
}

- (id)_indicatorIdentifierForSensorType:(int64_t)type
{
  if (type == 1)
  {
    return @"microphone-recording-indicator";
  }

  else
  {
    return @"camera-recording-indicator";
  }
}

- (void)_dataProviderDidUpdate:(id)update
{
  updateCopy = update;
  objc_storeStrong(&self->_dataProvider, update);
  if (self->_visibilityIsForcedByPrototypeSettings)
  {
    activeCameraAndMicrophoneActivityAttributions = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(activeCameraAndMicrophoneActivityAttributions, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, activeCameraAndMicrophoneActivityAttributions, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Visibility is forced by prototype settings", buf, 2u);
    }

    goto LABEL_19;
  }

  activeCameraAndMicrophoneActivityAttributions = [updateCopy activeCameraAndMicrophoneActivityAttributions];
  if ([activeCameraAndMicrophoneActivityAttributions count])
  {
    [(CBRecordingIndicatorManager *)self _updateIndicatorStyleForSensorActivityAttributions:activeCameraAndMicrophoneActivityAttributions];
    selfCopy3 = self;
    v8 = 1;
LABEL_6:
    [(CBRecordingIndicatorManager *)selfCopy3 setIndicatorVisible:v8];
    goto LABEL_17;
  }

  if ([(CBRecordingIndicatorManager *)self isIndicatorVisible])
  {
    v9 = +[NSDate date];
    [v9 timeIntervalSinceDate:self->_indicatorDisplayTime];
    v11 = v10;

    if (v11 <= 2.0)
    {
      isValid = [(NSTimer *)self->_minimumTimeOnScreenTimer isValid];
      v13 = CheckerBoardLogHandleForCategory();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (isValid)
      {
        if (v14)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Timer is already valid", buf, 2u);
        }
      }

      else
      {
        if (v14)
        {
          *buf = 134349312;
          v24 = 0x4000000000000000;
          v25 = 2050;
          v26 = v11;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Starting a timer to keep the indicator on screen for a minimum of %{public}.2f seconds (elapsed %{public}.2fs)", buf, 0x16u);
        }

        v17 = _NSConcreteStackBlock;
        v18 = 3221225472;
        v19 = sub_10001E8C4;
        v20 = &unk_10007DF50;
        selfCopy2 = self;
        v22 = updateCopy;
        v15 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v17 block:2.0 - v11];
        minimumTimeOnScreenTimer = self->_minimumTimeOnScreenTimer;
        self->_minimumTimeOnScreenTimer = v15;
      }

      goto LABEL_17;
    }

    selfCopy3 = self;
    v8 = 0;
    goto LABEL_6;
  }

LABEL_17:
  if ([(CBRecordingIndicatorManager *)self _supportsStatusBarItem:v17])
  {
    [(CBRecordingIndicatorManager *)self _updateRecordingIndicatorForStatusBarChanges];
  }

LABEL_19:
}

- (void)setIndicatorVisible:(BOOL)visible
{
  if (self->_indicatorVisible != visible)
  {
    visibleCopy = visible;
    self->_indicatorVisible = visible;
    v5 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"off";
      if (visibleCopy)
      {
        v6 = @"on";
      }

      v16 = 138543362;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Turning %{public}@...", &v16, 0xCu);
    }

    [(NSTimer *)self->_minimumTimeOnScreenTimer invalidate];
    minimumTimeOnScreenTimer = self->_minimumTimeOnScreenTimer;
    self->_minimumTimeOnScreenTimer = 0;

    v8 = 0;
    if (visibleCopy)
    {
      v8 = +[NSDate date];
    }

    indicatorDisplayTime = self->_indicatorDisplayTime;
    self->_indicatorDisplayTime = v8;

    displayMode = [(CBRecordingIndicatorManager *)self displayMode];
    if (displayMode < 2)
    {
      selfCopy2 = self;
      v12 = visibleCopy;
      v13 = 0;
      goto LABEL_12;
    }

    if (displayMode - 3 < 2)
    {
      [(CBRecordingIndicatorManager *)self _updateSystemApertureElementAssertion];
      return;
    }

    if (displayMode == 2)
    {
      if (visibleCopy)
      {
        v14 = +[CBStatusBarStateAggregator sharedInstance];
        isHidden = [v14 isHidden];
        [(CBRecordingIndicatorManager *)self _setIndicatorVisible:isHidden atLocation:0];
        [(CBRecordingIndicatorManager *)self _setIndicatorVisible:isHidden ^ 1 atLocation:1];

        return;
      }

      [(CBRecordingIndicatorManager *)self _setIndicatorVisible:0 atLocation:0];
      selfCopy2 = self;
      v12 = 0;
      v13 = 1;
LABEL_12:
      [(CBRecordingIndicatorManager *)selfCopy2 _setIndicatorVisible:v12 atLocation:v13];
    }
  }
}

- (void)setIndicatorVisibleAtStatusBarLocation:(BOOL)location
{
  if (self->_indicatorVisibleAtStatusBarLocation != location)
  {
    locationCopy = location;
    self->_indicatorVisibleAtStatusBarLocation = location;
    v4 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = @"off";
      if (locationCopy)
      {
        v5 = @"on";
      }

      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Turning %{public}@ at Status Bar location (via status bar data change)", &v7, 0xCu);
    }

    v6 = +[CBStatusBarStateAggregator sharedInstance];
    [v6 updateStatusBarItem:28];
  }
}

- (void)_updateRecordingIndicatorLocationIfNecessary
{
  isIndicatorVisible = [(CBRecordingIndicatorManager *)self isIndicatorVisible];
  if (!isIndicatorVisible || [(CBRecordingIndicatorManager *)self displayMode]- 3 <= 1)
  {
    [(CBRecordingIndicatorManager *)self _setIndicatorVisible:isIndicatorVisible atLocation:0];
    [(CBRecordingIndicatorManager *)self _setIndicatorVisible:0 atLocation:1];

    [(CBRecordingIndicatorManager *)self _setIndicatorVisible:0 atLocation:2];
  }
}

+ (BOOL)_supportsSecureIndicator
{
  if (qword_1000923A8 != -1)
  {
    sub_100047420();
  }

  return byte_1000923B0;
}

- (void)_setIndicatorVisible:(BOOL)visible atLocation:(unint64_t)location
{
  visibleCopy = visible;
  if (location == 2)
  {
    indicatorState = [(CBRecordingIndicatorViewController *)self->_recordingIndicatorViewControllerSystemAperturePortal indicatorState];
    if (visibleCopy)
    {
      if (indicatorState - 1 < 2)
      {
        return;
      }

      recordingIndicatorViewControllerSystemAperturePortal = self->_recordingIndicatorViewControllerSystemAperturePortal;
      goto LABEL_11;
    }

    if (indicatorState)
    {
      v11 = indicatorState == 3;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      recordingIndicatorViewControllerSystemAperturePortal = self->_recordingIndicatorViewControllerSystemAperturePortal;
      goto LABEL_24;
    }
  }

  else
  {
    if (location != 1)
    {
      if (location)
      {
        return;
      }

      indicatorState2 = [(CBRecordingIndicatorViewController *)self->_recordingIndicatorViewController indicatorState];
      if (visibleCopy)
      {
        if (indicatorState2 - 1 < 2)
        {
          return;
        }

        recordingIndicatorViewControllerSystemAperturePortal = self->_recordingIndicatorViewController;
LABEL_11:
        v10 = 1;
LABEL_25:

        [(CBRecordingIndicatorViewController *)recordingIndicatorViewControllerSystemAperturePortal updateIndicatorVisibility:v10];
        return;
      }

      if (!indicatorState2 || indicatorState2 == 3)
      {
        return;
      }

      recordingIndicatorViewControllerSystemAperturePortal = self->_recordingIndicatorViewController;
LABEL_24:
      v10 = 0;
      goto LABEL_25;
    }

    visibleCopy2 = visible;

    [(CBRecordingIndicatorManager *)self setIndicatorVisibleAtStatusBarLocation:visibleCopy2];
  }
}

- (void)_updateRecordingIndicatorForStatusBarChanges
{
  displayMode = [(CBRecordingIndicatorManager *)self displayMode];
  if (displayMode != 4)
  {
    if (displayMode != 2 || ![(CBRecordingIndicatorManager *)self isIndicatorVisible])
    {
      return;
    }

    v6 = +[CBStatusBarStateAggregator sharedInstance];
    if (self->_indicatorStatusBarPartIsHidden || [v6 isHidden])
    {
      if ([(CBRecordingIndicatorViewController *)self->_recordingIndicatorViewController indicatorState]== 1)
      {
LABEL_14:

        return;
      }

      v4 = 0;
      v5 = 1;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }

    [(CBRecordingIndicatorViewController *)self->_recordingIndicatorViewController updateIndicatorVisibilityWithFastFadeAnimation:v5];
    [(CBRecordingIndicatorManager *)self _setIndicatorVisible:v4 atLocation:1];
    goto LABEL_14;
  }

  [(CBRecordingIndicatorManager *)self _updateRecordingIndicatorLocationIfNecessary];
}

- (void)_updateIndicatorStyleForSensorActivityAttributions:(id)attributions
{
  attributionsCopy = attributions;
  if ([attributionsCopy count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = attributionsCopy;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if (![*(*(&v10 + 1) + 8 * v9) sensor])
          {
            [(CBRecordingIndicatorManager *)self _updateIndicatorViewForSensorType:0];

            goto LABEL_12;
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    [(CBRecordingIndicatorManager *)self _updateIndicatorViewForSensorType:1];
  }

LABEL_12:
}

- (void)_updateIndicatorViewForSensorType:(int64_t)type
{
  v5 = [(CBRecordingIndicatorManager *)self _indicatorTypeForSensorType:?];
  [(CBRecordingIndicatorViewController *)self->_recordingIndicatorViewController updateIndicatorType:v5];
  [(CBRecordingIndicatorViewController *)self->_recordingIndicatorViewControllerUIKitStatusBarPortal updateIndicatorType:v5];
  [(CBRecordingIndicatorViewController *)self->_recordingIndicatorViewControllerSystemAperturePortal updateIndicatorType:v5];
  v7 = [(CBRecordingIndicatorManager *)self _indicatorIdentifierForSensorType:type];
  indicatorView = [(CBRecordingIndicatorViewController *)self->_recordingIndicatorViewController indicatorView];
  [indicatorView setAccessibilityIdentifier:v7];
}

- (void)recordingIndicatorViewController:(id)controller didUpdateIndicatorState:(unint64_t)state
{
  controllerCopy = controller;
  v12 = controllerCopy;
  if (self->_recordingIndicatorViewControllerSystemAperturePortal == controllerCopy)
  {
    [(CBRecordingIndicatorManager *)self _updateSystemApertureElementAssertion];
    controllerCopy = v12;
  }

  viewIfLoaded = [(CBRecordingIndicatorViewController *)controllerCopy viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];

  traitCollection = [windowScene traitCollection];
  _backlightLuminance = [traitCollection _backlightLuminance];

  if (_backlightLuminance == 1)
  {
    _backlightSceneEnvironment = [windowScene _backlightSceneEnvironment];
    [_backlightSceneEnvironment invalidateAllTimelinesForReason:@"recording indicator visibility change"];
  }
}

- (void)activityDidChangeForSensorActivityDataProvider:(id)provider
{
  providerCopy = provider;
  activeCameraAndMicrophoneActivityAttributions = [providerCopy activeCameraAndMicrophoneActivityAttributions];
  if (![(NSSet *)self->_activeCameraAndMicrophoneActivityAttributions isEqualToSet:activeCameraAndMicrophoneActivityAttributions])
  {
    objc_storeStrong(&self->_activeCameraAndMicrophoneActivityAttributions, activeCameraAndMicrophoneActivityAttributions);
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = activeCameraAndMicrophoneActivityAttributions;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Active camera/microphone activity changed:\n%{public}@", &v7, 0xCu);
    }

    [(CBRecordingIndicatorManager *)self _dataProviderDidUpdate:providerCopy];
  }
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  v5 = [CBRecordingIndicatorDomain rootSettings:settings];
  sensorType = [v5 sensorType];

  if (sensorType == 1)
  {
    self->_visibilityIsForcedByPrototypeSettings = 1;
    [(CBRecordingIndicatorManager *)self setIndicatorVisible:1];
    selfCopy2 = self;
    v8 = 0;
    goto LABEL_5;
  }

  if (sensorType == 2)
  {
    self->_visibilityIsForcedByPrototypeSettings = 1;
    [(CBRecordingIndicatorManager *)self setIndicatorVisible:1];
    selfCopy2 = self;
    v8 = 1;
LABEL_5:

    [(CBRecordingIndicatorManager *)selfCopy2 _updateIndicatorViewForSensorType:v8];
    return;
  }

  self->_visibilityIsForcedByPrototypeSettings = 0;

  [(CBRecordingIndicatorManager *)self setIndicatorVisible:0];
}

- (UIWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end