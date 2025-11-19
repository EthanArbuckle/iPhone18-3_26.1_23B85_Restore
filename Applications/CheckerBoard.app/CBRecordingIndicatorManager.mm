@interface CBRecordingIndicatorManager
+ (BOOL)_supportsSecureIndicator;
- (CBRecordingIndicatorManager)initWithWindowScene:(id)a3;
- (UIWindowScene)windowScene;
- (id)_indicatorIdentifierForSensorType:(int64_t)a3;
- (unint64_t)_indicatorTypeForSensorType:(int64_t)a3;
- (void)_createRecordingIndicatorForStandaloneLocation;
- (void)_createRecordingIndicatorForStatusBarLocation;
- (void)_createRecordingIndicatorForSystemApertureLocation;
- (void)_dataProviderDidUpdate:(id)a3;
- (void)_setIndicatorVisible:(BOOL)a3 atLocation:(unint64_t)a4;
- (void)_updateIndicatorStyleForSensorActivityAttributions:(id)a3;
- (void)_updateIndicatorViewForSensorType:(int64_t)a3;
- (void)_updateRecordingIndicatorForStatusBarChanges;
- (void)_updateRecordingIndicatorLocationIfNecessary;
- (void)activityDidChangeForSensorActivityDataProvider:(id)a3;
- (void)recordingIndicatorViewController:(id)a3 didUpdateIndicatorState:(unint64_t)a4;
- (void)setIndicatorVisible:(BOOL)a3;
- (void)setIndicatorVisibleAtStatusBarLocation:(BOOL)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
@end

@implementation CBRecordingIndicatorManager

- (CBRecordingIndicatorManager)initWithWindowScene:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CBRecordingIndicatorManager;
  v5 = [(CBRecordingIndicatorManager *)&v19 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_windowScene, v4);
    v7 = +[UIDevice currentDevice];
    v8 = [v7 userInterfaceIdiom];

    v9 = +[BSPlatform sharedInstance];
    v10 = [v9 homeButtonType];

    v11 = [objc_opt_class() _supportsSecureIndicator];
    v12 = v10 != 2 || v8 == 1;
    v13 = 2;
    if (!v12)
    {
      v13 = 0;
    }

    if (v11)
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
    v16 = [v15 delegate];

    v17 = [v16 sensorActivityDataProvider];
    [v17 addObserver:v6];
    [(CBRecordingIndicatorManager *)v6 activityDidChangeForSensorActivityDataProvider:v17];
  }

  return v6;
}

- (void)_createRecordingIndicatorForStandaloneLocation
{
  v7 = [(CBRecordingIndicatorManager *)self windowScene];
  v3 = [[CBRecordingIndicatorWindow alloc] initWithWindowScene:v7 debugName:@"Recording Indicator"];
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
  v11 = [(CBRecordingIndicatorManager *)self windowScene];
  v3 = [[CBRecordingIndicatorWindow alloc] initWithWindowScene:v11 debugName:@"Recording Indicator (UIKit Status Bar Portal)"];
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
  v9 = [(CBRecordingIndicatorViewController *)self->_recordingIndicatorViewControllerUIKitStatusBarPortal indicatorView];

  v10 = [v11 screen];
  [v8 registerSensorActivityIndicator:v9 forScreen:v10];
}

- (void)_createRecordingIndicatorForSystemApertureLocation
{
  v10 = [(CBRecordingIndicatorManager *)self windowScene];
  v3 = [[CBRecordingIndicatorWindow alloc] initWithWindowScene:v10 debugName:@"Recording Indicator (SystemAperture Portal)"];
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

  v8 = [(CBRecordingIndicatorViewController *)self->_recordingIndicatorViewControllerSystemAperturePortal indicatorContainerView];
  v9 = [[_UIPortalView alloc] initWithSourceView:v8];
  [v9 setMatchesAlpha:1];
  [(CBRecordingIndicatorViewController *)self->_recordingIndicatorViewControllerSystemAperturePortal setDelegate:self];
}

- (unint64_t)_indicatorTypeForSensorType:(int64_t)a3
{
  if (a3 != 1)
  {
    return 0;
  }

  if (UIAccessibilityShouldDifferentiateWithoutColor())
  {
    return 2;
  }

  return 1;
}

- (id)_indicatorIdentifierForSensorType:(int64_t)a3
{
  if (a3 == 1)
  {
    return @"microphone-recording-indicator";
  }

  else
  {
    return @"camera-recording-indicator";
  }
}

- (void)_dataProviderDidUpdate:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_dataProvider, a3);
  if (self->_visibilityIsForcedByPrototypeSettings)
  {
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Visibility is forced by prototype settings", buf, 2u);
    }

    goto LABEL_19;
  }

  v6 = [v5 activeCameraAndMicrophoneActivityAttributions];
  if ([v6 count])
  {
    [(CBRecordingIndicatorManager *)self _updateIndicatorStyleForSensorActivityAttributions:v6];
    v7 = self;
    v8 = 1;
LABEL_6:
    [(CBRecordingIndicatorManager *)v7 setIndicatorVisible:v8];
    goto LABEL_17;
  }

  if ([(CBRecordingIndicatorManager *)self isIndicatorVisible])
  {
    v9 = +[NSDate date];
    [v9 timeIntervalSinceDate:self->_indicatorDisplayTime];
    v11 = v10;

    if (v11 <= 2.0)
    {
      v12 = [(NSTimer *)self->_minimumTimeOnScreenTimer isValid];
      v13 = CheckerBoardLogHandleForCategory();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v12)
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
        v21 = self;
        v22 = v5;
        v15 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v17 block:2.0 - v11];
        minimumTimeOnScreenTimer = self->_minimumTimeOnScreenTimer;
        self->_minimumTimeOnScreenTimer = v15;
      }

      goto LABEL_17;
    }

    v7 = self;
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

- (void)setIndicatorVisible:(BOOL)a3
{
  if (self->_indicatorVisible != a3)
  {
    v3 = a3;
    self->_indicatorVisible = a3;
    v5 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"off";
      if (v3)
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
    if (v3)
    {
      v8 = +[NSDate date];
    }

    indicatorDisplayTime = self->_indicatorDisplayTime;
    self->_indicatorDisplayTime = v8;

    v10 = [(CBRecordingIndicatorManager *)self displayMode];
    if (v10 < 2)
    {
      v11 = self;
      v12 = v3;
      v13 = 0;
      goto LABEL_12;
    }

    if (v10 - 3 < 2)
    {
      [(CBRecordingIndicatorManager *)self _updateSystemApertureElementAssertion];
      return;
    }

    if (v10 == 2)
    {
      if (v3)
      {
        v14 = +[CBStatusBarStateAggregator sharedInstance];
        v15 = [v14 isHidden];
        [(CBRecordingIndicatorManager *)self _setIndicatorVisible:v15 atLocation:0];
        [(CBRecordingIndicatorManager *)self _setIndicatorVisible:v15 ^ 1 atLocation:1];

        return;
      }

      [(CBRecordingIndicatorManager *)self _setIndicatorVisible:0 atLocation:0];
      v11 = self;
      v12 = 0;
      v13 = 1;
LABEL_12:
      [(CBRecordingIndicatorManager *)v11 _setIndicatorVisible:v12 atLocation:v13];
    }
  }
}

- (void)setIndicatorVisibleAtStatusBarLocation:(BOOL)a3
{
  if (self->_indicatorVisibleAtStatusBarLocation != a3)
  {
    v3 = a3;
    self->_indicatorVisibleAtStatusBarLocation = a3;
    v4 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = @"off";
      if (v3)
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
  v3 = [(CBRecordingIndicatorManager *)self isIndicatorVisible];
  if (!v3 || [(CBRecordingIndicatorManager *)self displayMode]- 3 <= 1)
  {
    [(CBRecordingIndicatorManager *)self _setIndicatorVisible:v3 atLocation:0];
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

- (void)_setIndicatorVisible:(BOOL)a3 atLocation:(unint64_t)a4
{
  v4 = a3;
  if (a4 == 2)
  {
    v9 = [(CBRecordingIndicatorViewController *)self->_recordingIndicatorViewControllerSystemAperturePortal indicatorState];
    if (v4)
    {
      if (v9 - 1 < 2)
      {
        return;
      }

      recordingIndicatorViewControllerSystemAperturePortal = self->_recordingIndicatorViewControllerSystemAperturePortal;
      goto LABEL_11;
    }

    if (v9)
    {
      v11 = v9 == 3;
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
    if (a4 != 1)
    {
      if (a4)
      {
        return;
      }

      v6 = [(CBRecordingIndicatorViewController *)self->_recordingIndicatorViewController indicatorState];
      if (v4)
      {
        if (v6 - 1 < 2)
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

      if (!v6 || v6 == 3)
      {
        return;
      }

      recordingIndicatorViewControllerSystemAperturePortal = self->_recordingIndicatorViewController;
LABEL_24:
      v10 = 0;
      goto LABEL_25;
    }

    v8 = a3;

    [(CBRecordingIndicatorManager *)self setIndicatorVisibleAtStatusBarLocation:v8];
  }
}

- (void)_updateRecordingIndicatorForStatusBarChanges
{
  v3 = [(CBRecordingIndicatorManager *)self displayMode];
  if (v3 != 4)
  {
    if (v3 != 2 || ![(CBRecordingIndicatorManager *)self isIndicatorVisible])
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

- (void)_updateIndicatorStyleForSensorActivityAttributions:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = v4;
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

- (void)_updateIndicatorViewForSensorType:(int64_t)a3
{
  v5 = [(CBRecordingIndicatorManager *)self _indicatorTypeForSensorType:?];
  [(CBRecordingIndicatorViewController *)self->_recordingIndicatorViewController updateIndicatorType:v5];
  [(CBRecordingIndicatorViewController *)self->_recordingIndicatorViewControllerUIKitStatusBarPortal updateIndicatorType:v5];
  [(CBRecordingIndicatorViewController *)self->_recordingIndicatorViewControllerSystemAperturePortal updateIndicatorType:v5];
  v7 = [(CBRecordingIndicatorManager *)self _indicatorIdentifierForSensorType:a3];
  v6 = [(CBRecordingIndicatorViewController *)self->_recordingIndicatorViewController indicatorView];
  [v6 setAccessibilityIdentifier:v7];
}

- (void)recordingIndicatorViewController:(id)a3 didUpdateIndicatorState:(unint64_t)a4
{
  v5 = a3;
  v12 = v5;
  if (self->_recordingIndicatorViewControllerSystemAperturePortal == v5)
  {
    [(CBRecordingIndicatorManager *)self _updateSystemApertureElementAssertion];
    v5 = v12;
  }

  v6 = [(CBRecordingIndicatorViewController *)v5 viewIfLoaded];
  v7 = [v6 window];
  v8 = [v7 windowScene];

  v9 = [v8 traitCollection];
  v10 = [v9 _backlightLuminance];

  if (v10 == 1)
  {
    v11 = [v8 _backlightSceneEnvironment];
    [v11 invalidateAllTimelinesForReason:@"recording indicator visibility change"];
  }
}

- (void)activityDidChangeForSensorActivityDataProvider:(id)a3
{
  v4 = a3;
  v5 = [v4 activeCameraAndMicrophoneActivityAttributions];
  if (![(NSSet *)self->_activeCameraAndMicrophoneActivityAttributions isEqualToSet:v5])
  {
    objc_storeStrong(&self->_activeCameraAndMicrophoneActivityAttributions, v5);
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Active camera/microphone activity changed:\n%{public}@", &v7, 0xCu);
    }

    [(CBRecordingIndicatorManager *)self _dataProviderDidUpdate:v4];
  }
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v5 = [CBRecordingIndicatorDomain rootSettings:a3];
  v6 = [v5 sensorType];

  if (v6 == 1)
  {
    self->_visibilityIsForcedByPrototypeSettings = 1;
    [(CBRecordingIndicatorManager *)self setIndicatorVisible:1];
    v7 = self;
    v8 = 0;
    goto LABEL_5;
  }

  if (v6 == 2)
  {
    self->_visibilityIsForcedByPrototypeSettings = 1;
    [(CBRecordingIndicatorManager *)self setIndicatorVisible:1];
    v7 = self;
    v8 = 1;
LABEL_5:

    [(CBRecordingIndicatorManager *)v7 _updateIndicatorViewForSensorType:v8];
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