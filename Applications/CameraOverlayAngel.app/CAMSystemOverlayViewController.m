@interface CAMSystemOverlayViewController
- (BOOL)_selectCurrentMenuItemIfMenuVisible;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isControlEnabledAtIndex:(unint64_t)a3;
- (BOOL)overlayViewShouldPresentMenu:(id)a3;
- (CAMSystemOverlayViewController)initWithMotionController:(id)a3;
- (CAMSystemOverlayViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (CAMSystemOverlayViewControllerDelegate)delegate;
- (NSNumberFormatter)_numberFormatter;
- (NSString)_selectedControlIdentifier;
- (id)_controlImageNames;
- (id)_disabledControlsIndices;
- (id)_displayNumberForControl:(id)a3 update:(id)a4;
- (id)_displayValueRangeForControl:(id)a3;
- (id)_fallbackTextForControlAtIndex:(unint64_t)a3;
- (id)_numberForUpdate:(id)a3;
- (id)_primaryValuesForControl:(id)a3;
- (id)_protectedValuesForControl:(id)a3;
- (id)_selectedControl;
- (id)_updateForControl:(id)a3 displayValue:(id)a4;
- (id)_valueRangeForControl:(id)a3;
- (id)_valueTextForControl:(id)a3 update:(id)a4 useLeadingZero:(BOOL)a5;
- (id)menuTitleForControlAtIndex:(unint64_t)a3;
- (id)overlayView:(id)a3 cellConfigurationForNumber:(id)a4;
- (id)valueTextForCurrentControl;
- (int64_t)_rangeScaleForControl:(id)a3;
- (unint64_t)_styleForControl:(id)a3;
- (void)_cancelHandleBarTimerIfNeeded;
- (void)_commonInitWithMotionController:(id)a3;
- (void)_currentPositionApplicatorApplyAction:(id)a3;
- (void)_forceUpdateSliderData;
- (void)_handleApplicationDidEnterBackground:(id)a3;
- (void)_handleBarTimerFired:(id)a3;
- (void)_handleButton:(unint64_t)a3 stage:(unint64_t)a4 phase:(unint64_t)a5 position:(double)a6 delta:(double)a7;
- (void)_handleTouchingGesture:(id)a3;
- (void)_motionControllerDidChangeOrientation:(id)a3;
- (void)_physicalButtonInteraction:(id)a3 handleAction:(id)a4 withActiveActions:(id)a5;
- (void)_promoteMenuSelectionIndexIfAvailableNotifyingDelegate:(BOOL)a3;
- (void)_recognizeContact:(id)a3 action:(id)a4 stage:(unint64_t)a5 phase:(unint64_t)a6;
- (void)_setCurrentPositionDeltaApplicator:(id)a3;
- (void)_startHandleBarTimerIfNeeded;
- (void)_updateContactRecognizers;
- (void)_updateCurrentPositionDeltaApplicatorForDelta:(double)a3;
- (void)_updateMetricsForButton:(unint64_t)a3 stage:(unint64_t)a4 phase:(unint64_t)a5;
- (void)_updateNumberFormatterRounding;
- (void)_updateSliderDataIfNeeded;
- (void)addContactRecognizer:(id)a3;
- (void)applyControlUpdate:(id)a3;
- (void)dismissOverlayForced:(BOOL)a3;
- (void)halfPressContactRecognizerDoubleHalfPressDidEnd:(id)a3;
- (void)halfPressContactRecognizerSingleHalfPressDidBegin:(id)a3;
- (void)halfPressContactRecognizerSingleHalfPressDidCancel:(id)a3;
- (void)halfPressContactRecognizerSingleHalfPressDidEnd:(id)a3;
- (void)idleContactRecognized:(id)a3;
- (void)loadView;
- (void)overlayView:(id)a3 menuDidChangePresented:(BOOL)a4;
- (void)overlayView:(id)a3 menuDidSelectControlAtIndex:(unint64_t)a4;
- (void)overlayView:(id)a3 menuWillChangePresented:(BOOL)a4;
- (void)overlayView:(id)a3 performedDismissGesture:(id)a4;
- (void)overlayViewSliderDidChangeCurrentValue:(id)a3;
- (void)overlayViewSliderDidEndScrolling:(id)a3;
- (void)overlayViewSliderWillBeginScrolling:(id)a3;
- (void)removeContactRecognizer:(id)a3;
- (void)restartControlMetrics;
- (void)setControls:(id)a3 updatesByID:(id)a4 activeControl:(id)a5;
- (void)setDoubleHalfPressForMenuSupported:(BOOL)a3;
- (void)setHalfPressForOverlaySupported:(BOOL)a3;
- (void)setHalfPressHaptics:(int64_t)a3;
- (void)setSwipeForOverlaySupported:(BOOL)a3;
- (void)submitMetrics;
- (void)systemOverlayVisibility:(id)a3 changedForReason:(int64_t)a4;
- (void)systemOverlayVisibilityBeganHidingTimer:(id)a3;
- (void)systemOverlayVisibilityCancelledHidingTimer:(id)a3;
- (void)viewDidLoad;
@end

@implementation CAMSystemOverlayViewController

- (CAMSystemOverlayViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = CAMSystemOverlayViewController;
  v4 = [(CAMSystemOverlayViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(CAMSystemOverlayViewController *)v4 _commonInitWithMotionController:0];
  }

  return v5;
}

- (CAMSystemOverlayViewController)initWithMotionController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CAMSystemOverlayViewController;
  v5 = [(CAMSystemOverlayViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CAMSystemOverlayViewController *)v5 _commonInitWithMotionController:v4];
  }

  return v6;
}

- (void)_commonInitWithMotionController:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v5 = objc_alloc_init(CAMMotionController);
  }

  objc_storeStrong(&self->__motionController, v5);
  if (!v4)
  {
  }

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_motionControllerDidChangeOrientation:" name:CAMMotionControllerCaptureOrientationChangedNotification object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"_handleApplicationDidEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];

  v8 = objc_alloc_init(CAMSystemOverlayStateMachine);
  stateMachine = self->__stateMachine;
  self->__stateMachine = v8;

  [(CAMSystemOverlayStateMachine *)self->__stateMachine setDelegate:self];
  self->_halfPressForOverlaySupported = 1;
  self->_doubleHalfPressForMenuSupported = 1;
  self->_swipeForOverlaySupported = 1;
  self->__debugLoggingEnabled = CFPreferencesGetAppIntegerValue(@"systemOverlay.debugLoggingEnabled", @"com.apple.camera", 0) != 0;
  self->__ignoreScrollUnderPressure = CFPreferencesGetAppIntegerValue(@"systemOverlay.ignoreScrollUnderPressure", @"com.apple.camera", 0) != 0;
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"systemOverlay.doubleHalfPressOpensMenu", @"com.apple.camera", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v11 = AppIntegerValue == 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = !v11;
  self->__doubleHalfPressOpensMenu = v12;
  v13 = +[CAMCaptureCapabilities capabilities];
  v14 = objc_alloc_init(NSMutableSet);
  contactRecognizers = self->__contactRecognizers;
  self->__contactRecognizers = v14;

  if ([v13 isCameraButtonSupported])
  {
    v16 = objc_alloc_init(CAMHalfPressContactRecognizer);
    halfPressRecognizer = self->__halfPressRecognizer;
    self->__halfPressRecognizer = v16;

    [(CAMHalfPressContactRecognizer *)self->__halfPressRecognizer setDelegate:self];
    [(NSMutableSet *)self->__contactRecognizers addObject:self->__halfPressRecognizer];
    v18 = objc_alloc_init(CAMHapticContactRecognizer);
    hapticContactRecognizer = self->__hapticContactRecognizer;
    self->__hapticContactRecognizer = v18;

    [(NSMutableSet *)self->__contactRecognizers addObject:self->__hapticContactRecognizer];
    v20 = objc_alloc_init(CAMIdleContactRecognizer);
    idleLockoutContactRecognizer = self->__idleLockoutContactRecognizer;
    self->__idleLockoutContactRecognizer = v20;

    [(CAMIdleContactRecognizer *)self->__idleLockoutContactRecognizer setDelegate:self];
    [(NSMutableSet *)self->__contactRecognizers addObject:self->__idleLockoutContactRecognizer];
  }

  self->_halfPressHaptics = 1;
  [(CAMSystemOverlayViewController *)self _updateContactRecognizers];
  if (CFPreferencesGetAppBooleanValue(@"systemOverlay.resetTipDataStoreOnOverlayLaunch", @"com.apple.camera", 0))
  {
    +[CAMSystemOverlayTipManager resetDataStore];
  }

  +[CAMSystemOverlayTipManager configure];
  if (+[CAMSystemOverlayTipManager anyTipPendingOrAvailable])
  {
    v22 = objc_alloc_init(CAMSystemOverlayTipManager);
    tipManager = self->__tipManager;
    self->__tipManager = v22;
  }

  if ([v13 bypassWelcomeScreens])
  {
    v24 = 1;
  }

  else
  {
    v24 = [v13 featureDevelopmentCameraControlHalfPressTipEnabled] ^ 1;
  }

  [(CAMSystemOverlayTipManager *)self->__tipManager setSkipTipParameter:v24];
  self->__isDraggingZoom = 0;
  [v13 zoomEventReportingInterval];
  v26 = [[CAMZoomEventReporter alloc] initWithRateLimit:objc_msgSend(v13 reportingAllEvents:{"zoomEventReportAllChanges"), v25}];
  zoomReporter = self->__zoomReporter;
  self->__zoomReporter = v26;
}

- (void)loadView
{
  v4 = objc_alloc_init(CAMSystemOverlayView);
  v3 = [(CAMSystemOverlayViewController *)self _motionController];
  -[CAMSystemOverlayView setOrientation:](v4, "setOrientation:", [v3 captureOrientation]);

  [(CAMSystemOverlayView *)v4 setDelegate:self];
  [(CAMSystemOverlayViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CAMSystemOverlayViewController;
  [(CAMSystemOverlayViewController *)&v5 viewDidLoad];
  v3 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"_handleTouchingGesture:"];
  [v3 setMinimumPressDuration:0.0];
  [v3 setDelegate:self];
  [v3 _wantsGESEvents:1];
  v4 = [(CAMSystemOverlayViewController *)self view];
  [v4 addGestureRecognizer:v3];

  [(CAMSystemOverlayViewController *)self restartControlMetrics];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v3 = [(CAMSystemOverlayViewController *)self overlayView];
  if ([v3 isSliderVisible])
  {
    v4 = [v3 sliderContent] != 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_handleTouchingGesture:(id)a3
{
  v4 = [a3 state];
  if ((v4 - 3) >= 2)
  {
    if (v4 != 1)
    {
      return;
    }

    v5 = [(CAMSystemOverlayViewController *)self _stateMachine];
    [v5 addReason:2];
  }

  else
  {
    v5 = [(CAMSystemOverlayViewController *)self _stateMachine];
    [v5 removeReason:2];
  }
}

- (void)overlayViewSliderDidChangeCurrentValue:(id)a3
{
  if (![a3 sliderContent] && -[CAMSystemOverlayViewController _overlayEnabled](self, "_overlayEnabled"))
  {
    v4 = [(CAMSystemOverlayViewController *)self overlayView];
    [v4 setHandleBarVisible:0 animated:1];

    v18 = [(CAMSystemOverlayViewController *)self _selectedControlIdentifier];
    v5 = [(CAMSystemOverlayViewController *)self overlayView];
    v6 = [v5 slider];
    v7 = [v6 currentNumber];

    v8 = [(CAMSystemOverlayViewController *)self controlsByID];
    v9 = [v8 objectForKeyedSubscript:v18];

    v10 = [(CAMSystemOverlayViewController *)self _updateForControl:v9 displayValue:v7];
    v11 = [(CAMSystemOverlayViewController *)self _updatesByID];
    [v11 setObject:v10 forKeyedSubscript:v18];

    v12 = [(CAMSystemOverlayViewController *)self delegate];
    [v12 systemOverlayViewController:self didUpdateControl:v10];

    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 sliderType]);
        v14 = [&off_100057C08 containsObject:v13];

        if (v14)
        {
          self->__isDraggingZoom = 1;
          [v10 floatValue];
          v16 = v15;
          v17 = [(CAMSystemOverlayViewController *)self _zoomReporter];
          [v17 zoomChangedToFactor:6 interactionType:v16];
        }
      }
    }
  }
}

- (void)overlayViewSliderWillBeginScrolling:(id)a3
{
  v3 = [(CAMSystemOverlayViewController *)self _stateMachine];
  [v3 addReason:3];
}

- (void)overlayViewSliderDidEndScrolling:(id)a3
{
  v4 = [(CAMSystemOverlayViewController *)self _stateMachine];
  [v4 removeReason:3];

  if (self->__isDraggingZoom)
  {
    self->__isDraggingZoom = 0;
    v5 = [(CAMSystemOverlayViewController *)self _zoomReporter];
    [v5 zoomEndedFromSource:6];
  }
}

- (BOOL)overlayViewShouldPresentMenu:(id)a3
{
  v3 = [(CAMSystemOverlayViewController *)self controls];
  v4 = [v3 count] > 1;

  return v4;
}

- (void)overlayView:(id)a3 menuWillChangePresented:(BOOL)a4
{
  v4 = a4;
  v8 = [a3 menu];
  if (v4)
  {
    v6 = [(CAMSystemOverlayViewController *)self _controlImageNames];
    [v8 setImageNames:v6];

    [v8 setSelectedControlIndex:{-[CAMSystemOverlayViewController _selectedControlIndex](self, "_selectedControlIndex")}];
    v7 = [(CAMSystemOverlayViewController *)self _disabledControlsIndices];
    [v8 setDisabledMenuItemsIndices:v7];
  }

  else
  {
    [(CAMSystemOverlayViewController *)self _promoteMenuSelectionIndexIfAvailableNotifyingDelegate:1];
  }
}

- (void)_promoteMenuSelectionIndexIfAvailableNotifyingDelegate:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMSystemOverlayViewController *)self overlayView];
  v6 = [v5 menu];
  if ([v5 isSliderVisible] && v6)
  {
    v7 = [v6 selectedControlIndex];
    v8 = [(CAMSystemOverlayViewController *)self controls];
    if (v7 >= [v8 count])
    {
      v11 = os_log_create("com.apple.camera.overlay", "Angel");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000360A4(v8);
      }
    }

    else
    {
      v9 = [v8 objectAtIndexedSubscript:v7];
      if ([v9 isEnabled])
      {
        if (v7 != [(CAMSystemOverlayViewController *)self _selectedControlIndex])
        {
          [(CAMSystemOverlayViewController *)self _setSelectedControlIndex:v7];
          [(CAMSystemOverlayViewController *)self _updateNumberFormatterRounding];
          [(CAMSystemOverlayViewController *)self _updateSliderDataIfNeeded];
          [(CAMSystemOverlayViewController *)self _setActiveControl:v9];
          if (v3)
          {
            v10 = [(CAMSystemOverlayViewController *)self delegate];
            [v10 systemOverlayViewController:self didChangeActiveControl:v9];
          }
        }
      }
    }
  }
}

- (void)overlayView:(id)a3 menuDidChangePresented:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  if (v4)
  {
    v6 = [(CAMSystemOverlayViewController *)self _stateMachine];
    [v6 addReason:4];

    v7 = [v12 slider];
    v8 = [v7 contactRecognizer];
    [v8 contactEndedWithAction:0];

    [(CAMSystemOverlayViewController *)self _cancelHandleBarTimerIfNeeded];
    v9 = [(CAMSystemOverlayViewController *)self _tipManager];
    [v9 recordMenuVisibleEvent];
LABEL_5:

    goto LABEL_7;
  }

  if ([(CAMSystemOverlayViewController *)self isControlEnabledAtIndex:[(CAMSystemOverlayViewController *)self _selectedControlIndex]])
  {
    v10 = [(CAMSystemOverlayViewController *)self _stateMachine];
    [v10 removeReason:4];

    v9 = [v12 menu];
    v11 = [v9 contactRecognizer];
    [v11 contactEndedWithAction:0];

    goto LABEL_5;
  }

  [(CAMSystemOverlayViewController *)self dismissOverlayForced:1];
LABEL_7:
}

- (void)overlayView:(id)a3 menuDidSelectControlAtIndex:(unint64_t)a4
{
  v6 = [(CAMSystemOverlayViewController *)self delegate];
  [v6 systemOverlayViewController:self menuDidScrollToControlAtIndex:a4];
}

- (id)overlayView:(id)a3 cellConfigurationForNumber:(id)a4
{
  v5 = a4;
  v6 = [(CAMSystemOverlayViewController *)self _selectedControl];
  if (![v6 controlType] && objc_msgSend(v6, "sliderType") == 7 && (objc_msgSend(v5, "floatValue"), v7 == CAMOverlayServiceSliderLensSelectorFrontFacingValue))
  {
    v8 = [UIImageSymbolConfiguration configurationWithPointSize:12.0];
    v9 = [UIImage systemImageNamed:@"person.fill" withConfiguration:v8];
    v10 = [[CEKTickCellConfiguration alloc] initWithImage:v9];
  }

  else
  {
    v8 = [(CAMSystemOverlayViewController *)self _updateForControl:v6 displayValue:v5];
    v9 = [(CAMSystemOverlayViewController *)self _valueTextForControl:v6 update:v8 useLeadingZero:0];
    v11 = [CEKTickCellConfiguration alloc];
    v12 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
    v10 = [v11 initWithText:v9 font:v12];
  }

  return v10;
}

- (id)_fallbackTextForControlAtIndex:(unint64_t)a3
{
  v4 = [(CAMSystemOverlayViewController *)self controls];
  v5 = [v4 count];

  if (v5 > a3)
  {
    return 0;
  }

  v7 = os_log_create("com.apple.camera.overlay", "Angel");
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100036128(a3, v5, v8);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "OverlayVC: Attempt to request text for control when there are no controls", v9, 2u);
  }

  return &stru_1000572E8;
}

- (id)valueTextForCurrentControl
{
  v3 = [(CAMSystemOverlayViewController *)self _fallbackTextForControlAtIndex:[(CAMSystemOverlayViewController *)self _selectedControlIndex]];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(CAMSystemOverlayViewController *)self _selectedControl];
    v7 = [(CAMSystemOverlayViewController *)self _updatesByID];
    v8 = [v6 identifier];
    v9 = [v7 objectForKeyedSubscript:v8];

    v5 = [(CAMSystemOverlayViewController *)self _valueTextForControl:v6 update:v9 useLeadingZero:1];
  }

  return v5;
}

- (id)_valueTextForControl:(id)a3 update:(id)a4 useLeadingZero:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(CAMSystemOverlayViewController *)self _displayValueRangeForControl:v8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v8 valueFormat];
  }

  else
  {
    v11 = 0;
  }

  if ([v10 isFloatingPoint])
  {
    v12 = [(CAMSystemOverlayViewController *)self _displayNumberForControl:v8 update:v9];
    v13 = [(CAMSystemOverlayViewController *)self _numberFormatter];
    [v13 setMinimumIntegerDigits:v5];
    if (v12)
    {
      v14 = [v13 stringFromNumber:v12];
    }

    else
    {
      v14 = &stru_1000572E8;
    }

    v16 = [v13 stringFromNumber:&off_100057C20];
    if ([(__CFString *)v14 isEqualToString:v16])
    {
      v17 = [v13 stringFromNumber:&off_100057B20];

      v14 = v17;
    }

    if (v11)
    {
      v18 = [NSString stringWithValidatedFormat:v11 validFormatSpecifiers:@"%@" error:0, v14];
      v19 = v18;
      if (v18)
      {
        v20 = v18;

        v14 = v20;
      }
    }

    goto LABEL_22;
  }

  if ([v10 valueType] == 1)
  {
    v12 = [v8 valueTitles];
    v15 = [v12 objectAtIndexedSubscript:{objc_msgSend(v9, "indexValue")}];
LABEL_9:
    v14 = v15;
LABEL_22:

    goto LABEL_23;
  }

  if ([v10 valueType] == 3)
  {
    v12 = v8;
    if ([v9 BOOLeanValue])
    {
      [v12 onTitle];
    }

    else
    {
      [v12 offTitle];
    }
    v15 = ;
    goto LABEL_9;
  }

  v14 = &stru_1000572E8;
LABEL_23:

  return v14;
}

- (id)menuTitleForControlAtIndex:(unint64_t)a3
{
  v5 = [(CAMSystemOverlayViewController *)self _fallbackTextForControlAtIndex:[(CAMSystemOverlayViewController *)self _selectedControlIndex]];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(CAMSystemOverlayViewController *)self controls];
    v9 = [v8 objectAtIndexedSubscript:a3];
    v7 = [v9 title];
  }

  return v7;
}

- (BOOL)isControlEnabledAtIndex:(unint64_t)a3
{
  v5 = [(CAMSystemOverlayViewController *)self controls];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    return 0;
  }

  v7 = [(CAMSystemOverlayViewController *)self controls];
  v8 = [v7 objectAtIndexedSubscript:a3];
  v9 = [v8 isEnabled];

  return v9;
}

- (void)overlayView:(id)a3 performedDismissGesture:(id)a4
{
  v5 = [CAMOverlayServer sharedInstance:a3];
  v6 = [v5 analyticsCollector];
  [v6 countDismissWithReason:1];

  [(CAMSystemOverlayViewController *)self dismissOverlayForced:1];
}

- (void)dismissOverlayForced:(BOOL)a3
{
  v5 = [(CAMSystemOverlayViewController *)self _stateMachine];
  [v5 hideSwipeCoachingImmediately];

  if (a3 || (-[CAMSystemOverlayViewController _stateMachine](self, "_stateMachine"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 currentStage], v6, !v7))
  {
    [(CAMSystemOverlayViewController *)self _promoteMenuSelectionIndexIfAvailableNotifyingDelegate:0];
    v8 = [(CAMSystemOverlayViewController *)self _stateMachine];
    [v8 endAllStages];

    [(CAMSystemOverlayViewController *)self _cancelHandleBarTimerIfNeeded];
    v9 = [(CAMSystemOverlayViewController *)self _stateMachine];
    [v9 hideImmediately];

    [(CAMSystemOverlayViewController *)self _updateSliderStateAnimated:1];
    v10 = [(CAMSystemOverlayViewController *)self _tipManager];
    [v10 setSliderVisibleParameter:0];

    [(CAMSystemOverlayViewController *)self _updateContactRecognizers];
    v11 = [(CAMSystemOverlayViewController *)self _halfPressRecognizer];
    [v11 reset];
  }

  else
  {

    [(CAMSystemOverlayViewController *)self _updateSliderStateAnimated:1];
  }
}

- (void)_motionControllerDidChangeOrientation:(id)a3
{
  v8 = [(CAMSystemOverlayViewController *)self _motionController];
  v4 = [(CAMSystemOverlayViewController *)self overlayView];
  v5 = [v4 isSliderVisible];

  v6 = [(CAMSystemOverlayViewController *)self overlayView];
  [v6 setOrientation:objc_msgSend(v8 animated:{"captureOrientation"), v5}];

  v7 = [(CAMSystemOverlayViewController *)self _tipManager];
  [v7 setIsPortraitOrientation:{objc_msgSend(v8, "captureOrientation") == 1}];
}

- (void)_handleApplicationDidEnterBackground:(id)a3
{
  [(CAMSystemOverlayViewController *)self submitMetrics];

  [(CAMSystemOverlayViewController *)self restartControlMetrics];
}

- (void)setControls:(id)a3 updatesByID:(id)a4 activeControl:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CAMSystemOverlayViewController *)self controls];
  if ([v8 isEqualToArray:v11])
  {
    v12 = [(CAMSystemOverlayViewController *)self _updatesByID];
    v13 = [v9 isEqualToDictionary:v12];

    if (v13)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  v46 = v10;
  v14 = [(CAMSystemOverlayViewController *)self activeControl];
  v15 = [(CAMSystemOverlayViewController *)self _updatesByID];
  v45 = v14;
  v16 = [v14 identifier];
  v17 = [v15 objectForKeyedSubscript:v16];
  v44 = [(CAMSystemOverlayViewController *)self _numberForUpdate:v17];

  v18 = [v9 mutableCopy];
  [(CAMSystemOverlayViewController *)self _setUpdatesByID:v18];

  v19 = +[NSMutableDictionary dictionary];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v20 = v8;
  v21 = [v20 countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v48;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v48 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v47 + 1) + 8 * i);
        v26 = [v25 identifier];
        [v19 setObject:v25 forKeyedSubscript:v26];
      }

      v22 = [v20 countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v22);
  }

  [(CAMSystemOverlayViewController *)self _setControlsByID:v19];
  [(CAMSystemOverlayViewController *)self _setControls:v20];
  [(CAMSystemOverlayViewController *)self _setSelectedControlIndex:0];
  [(CAMSystemOverlayViewController *)self _setActiveControl:0];
  if (v46)
  {
    v27 = [v20 indexOfObject:v46];
    if (v27 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(CAMSystemOverlayViewController *)self _setSelectedControlIndex:v27];
      [(CAMSystemOverlayViewController *)self _setActiveControl:v46];
    }
  }

  v28 = [(CAMSystemOverlayViewController *)self activeControl];

  if (!v28)
  {
    v29 = [v20 firstObject];
    [(CAMSystemOverlayViewController *)self _setActiveControl:v29];
  }

  v30 = [v20 count];
  if ((v30 != 0) != [(CAMSystemOverlayViewController *)self _overlayEnabled])
  {
    v31 = os_log_create("com.apple.camera.overlay", "Angel");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = @"disabled";
      if (v30)
      {
        v32 = @"enabled";
      }

      *buf = 138543362;
      v52 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "OverlayVC: %{public}@", buf, 0xCu);
    }

    [(CAMSystemOverlayViewController *)self _setOverlayEnabled:v30 != 0];
    v33 = [(CAMSystemOverlayViewController *)self _stateMachine];
    [v33 endAllStages];
  }

  v34 = [(CAMSystemOverlayViewController *)self _tipManager];
  v35 = [(CAMSystemOverlayViewController *)self controls];
  [v34 setControlsCountParameter:{objc_msgSend(v35, "count")}];

  v36 = [(CAMSystemOverlayViewController *)self activeControl];
  v37 = [v36 identifier];
  v38 = [v9 objectForKeyedSubscript:v37];
  v39 = [(CAMSystemOverlayViewController *)self _numberForUpdate:v38];

  v40 = [(CAMSystemOverlayViewController *)self activeControl];
  if ([v45 isContentEqual:v40])
  {
    v41 = v44;
    v42 = [v44 isEqualToNumber:v39];

    v10 = v46;
    if (v42)
    {
      goto LABEL_28;
    }
  }

  else
  {

    v10 = v46;
    v41 = v44;
  }

  v43 = [(CAMSystemOverlayViewController *)self _stateMachine];
  [v43 hideImmediately];

  [(CAMSystemOverlayViewController *)self _updateSliderStateAnimated:1];
LABEL_28:
  [(CAMSystemOverlayViewController *)self _updateNumberFormatterRounding];
  [(CAMSystemOverlayViewController *)self _updateContactRecognizers];

LABEL_29:
}

- (void)applyControlUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 controlIdentifier];
  v6 = [(CAMSystemOverlayViewController *)self controlsByID];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (v7)
  {
    if ([v4 isValueUpdate])
    {
      v8 = [(CAMSystemOverlayViewController *)self _updatesByID];
      [v8 setObject:v4 forKeyedSubscript:v5];
    }

    else
    {
      if ([v4 valueType] != 5)
      {
        goto LABEL_13;
      }

      v12 = [v4 isEnabled];
      [v7 setEnabled:v12];
      v8 = [(CAMSystemOverlayViewController *)self overlayView];
      if ([v8 isSliderVisible])
      {
        if ([v8 sliderContent] == 1)
        {
          v13 = [(CAMSystemOverlayViewController *)self _disabledControlsIndices];
          v14 = [v8 menu];
          [v14 setDisabledMenuItemsIndices:v13];

          [v8 reloadValueLabel];
        }

        else if (![v8 sliderContent])
        {
          v15 = [(CAMSystemOverlayViewController *)self _selectedControl];

          if (v7 == v15)
          {
            v16 = [v8 slider];
            [v16 setEnabled:v12];
          }
        }
      }
    }

    v9 = [(CAMSystemOverlayViewController *)self _selectedControlIdentifier];
    v10 = [v5 isEqualToString:v9];

    if (v10)
    {
      [(CAMSystemOverlayViewController *)self _updateSliderDataIfNeeded];
    }
  }

  else
  {
    v11 = os_log_create("com.apple.camera.overlay", "Angel");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000361B0(v5, v11);
    }
  }

LABEL_13:
}

- (id)_selectedControl
{
  v3 = [(CAMSystemOverlayViewController *)self controls];
  v4 = [(CAMSystemOverlayViewController *)self _selectedControlIndex];
  if (v4 >= [v3 count])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 objectAtIndexedSubscript:v4];
  }

  return v5;
}

- (NSString)_selectedControlIdentifier
{
  v2 = [(CAMSystemOverlayViewController *)self _selectedControl];
  v3 = [v2 identifier];

  return v3;
}

- (id)_controlImageNames
{
  v2 = [(CAMSystemOverlayViewController *)self controls];
  v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v2 count]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) imageName];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_disabledControlsIndices
{
  v2 = [(CAMSystemOverlayViewController *)self controls];
  +[NSMutableIndexSet indexSet];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000E260;
  v3 = v5[3] = &unk_1000556B0;
  v6 = v3;
  [v2 enumerateObjectsUsingBlock:v5];

  return v3;
}

- (NSNumberFormatter)_numberFormatter
{
  numberFormatter = self->__numberFormatter;
  if (!numberFormatter)
  {
    v4 = objc_alloc_init(NSNumberFormatter);
    v5 = self->__numberFormatter;
    self->__numberFormatter = v4;

    [(NSNumberFormatter *)self->__numberFormatter setNumberStyle:1];
    [(NSNumberFormatter *)self->__numberFormatter setMinimumFractionDigits:0];
    [(NSNumberFormatter *)self->__numberFormatter setMaximumFractionDigits:1];
    [(NSNumberFormatter *)self->__numberFormatter setRoundingIncrement:&off_100057B30];
    [(CAMSystemOverlayViewController *)self _updateNumberFormatterRounding];
    numberFormatter = self->__numberFormatter;
  }

  v6 = numberFormatter;

  return v6;
}

- (void)_updateNumberFormatterRounding
{
  v3 = [(CAMSystemOverlayViewController *)self _selectedControl];
  if (v3)
  {
    v7 = v3;
    if (![v3 controlType])
    {
      v4 = [(CAMSystemOverlayViewController *)self _numberFormatter];
      if ([(CAMSystemOverlayViewController *)self _styleForControl:v7]== 3)
      {
        [v4 setMaximumFractionDigits:0];
        [v4 setRoundingIncrement:&off_100057B40];
        [v4 setRoundingMode:5];
      }

      else
      {
        [v4 setMaximumFractionDigits:1];
        [v4 setRoundingIncrement:&off_100057B30];
        v5 = [(CAMSystemOverlayViewController *)self _valueRangeForControl:v7];
        if ([v5 isDiscrete])
        {
          v6 = 5;
        }

        else
        {
          v6 = 1;
        }

        [v4 setRoundingMode:v6];
      }
    }
  }

  _objc_release_x1();
}

- (void)_physicalButtonInteraction:(id)a3 handleAction:(id)a4 withActiveActions:(id)a5
{
  v8 = a3;
  v9 = a4;
  v44 = a5;
  v45 = [v9 _button];
  v10 = [v9 _stage];
  v11 = [v9 _numberOfStages];
  v12 = [v9 _contact];
  v13 = [v9 _stagePhase];
  v14 = 3;
  if (!v13)
  {
    v14 = 0;
  }

  v15 = v13 == 1;
  if (v13 == 1)
  {
    v14 = 1;
  }

  if (v13 == 2)
  {
    v15 = 0;
  }

  v43 = v15;
  if (v13 == 2)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14;
  }

  v17 = [v12 touchPositionHints];
  v18 = v17;
  v19 = (v17 & 0xC) != 0;
  if (v17)
  {
    v19 = 0;
  }

  v20 = 0.0;
  v21 = 0.0;
  if ((v17 & 0x10) == 0 && !v19)
  {
    v22 = [v9 _contact];
    [v22 positionDelta];
    v20 = v23;

    [v12 position];
    v21 = v24;
  }

  v25 = [v12 isTouching];
  v26 = 4;
  v27 = 3;
  v28 = 2;
  if (v10 == 1)
  {
    v29 = 1;
  }

  else
  {
    v29 = v25;
  }

  if (v10 <= 1)
  {
    v28 = v29;
  }

  if (v10 != 3)
  {
    v27 = v28;
  }

  if (v10 <= 3)
  {
    v26 = v27;
  }

  if (v11 <= 1)
  {
    v30 = 4 * (v10 > 0);
  }

  else
  {
    v30 = v26;
  }

  if ([(CAMSystemOverlayViewController *)self _debugLoggingEnabled])
  {
    v31 = os_log_create("com.apple.camera.overlay", "Angel");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      _NSStringFromUIPhysicalButton();
      v32 = v41 = v11;
      [v9 _state];
      _NSStringFromUIPhysicalButtonState();
      v33 = v42 = v8;
      v39 = off_100055710[v16];
      v40 = _NSStringFromUITouchSenstiveButtonPositionHint();
      *buf = 138544898;
      v47 = v32;
      v48 = 2114;
      v49 = v33;
      v50 = 1024;
      v51 = v10;
      v52 = 1024;
      v53 = v41;
      v54 = 2114;
      v55 = v39;
      v56 = 2114;
      v57 = v12;
      v58 = 2114;
      v59 = v40;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Observed physical button: %{public}@; state: %{public}@; stage: %d/%d; stagePhase: %{public}@; contact: %{public}@; hints: %{public}@", buf, 0x40u);

      v8 = v42;
    }
  }

  [(CAMSystemOverlayViewController *)self _recognizeContact:v12 action:v9 stage:v30 phase:v16];
  if ([(CAMSystemOverlayViewController *)self swipeForOverlaySupported])
  {
    v34 = [(CAMSystemOverlayViewController *)self _stateMachine];
    if (([v34 isVisible] & 1) == 0)
    {

      if ((v18 & 2) == 0)
      {
        goto LABEL_36;
      }

      v35 = [(CAMSystemOverlayViewController *)self _stateMachine];
      [v35 addReason:1];

      v34 = [(CAMSystemOverlayViewController *)self _stateMachine];
      [v34 removeReason:1];
    }
  }

LABEL_36:
  [(CAMSystemOverlayViewController *)self _handleButton:v45 stage:v30 phase:v16 position:v21 delta:v20];
  v36 = [(CAMSystemOverlayViewController *)self _stateMachine];
  v37 = [v36 currentStage];

  if (v37)
  {
    if (v43)
    {
      [(CAMSystemOverlayViewController *)self _currentPositionApplicatorApplyAction:v9];
    }
  }

  else
  {
    v38 = [(CAMSystemOverlayViewController *)self _currentPositionDeltaApplicator];
    [v38 contactEndedWithAction:v9];
  }

  [(CAMSystemOverlayViewController *)self _updateMetricsForButton:v45 stage:v10 phase:v16];
}

- (void)_handleButton:(unint64_t)a3 stage:(unint64_t)a4 phase:(unint64_t)a5 position:(double)a6 delta:(double)a7
{
  if ([(CAMSystemOverlayViewController *)self _overlayEnabled:a3])
  {
    v11 = [(CAMSystemOverlayViewController *)self overlayView];
    [(CAMSystemOverlayViewController *)self _updateCurrentPositionDeltaApplicatorForDelta:a7];
    if (a4)
    {
      v12 = [(CAMSystemOverlayViewController *)self _stateMachine];
      v13 = [v12 wantsOverlayVisible];
      [v12 handleStage:a4 phase:a5];
      v14 = [v12 wantsOverlayVisible];
      v15 = [v12 currentStage];
      if (v13 != v14)
      {
        v16 = os_log_create("com.apple.camera.overlay", "Angel");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          if (v15 > 4)
          {
            v17 = 0;
          }

          else
          {
            v17 = off_100055730[v15];
          }

          v18 = @"hidden";
          if (v14)
          {
            v18 = @"visible";
          }

          v23 = 138543618;
          v24 = v17;
          v25 = 2114;
          v26 = v18;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "OverlayVC: Button stage %{public}@ wants overlay %{public}@", &v23, 0x16u);
        }
      }

      if (v14)
      {
        [v12 addReason:0];
      }

      else
      {
        [v12 removeReason:0];
        [v11 performMenuPresentation:0];
      }

      v19 = [(CAMSystemOverlayViewController *)self _stateMachine];
      v20 = [v19 isVisible];

      v21 = [v11 sliderContent];
      if (a7 != 0.0 || v15 == 4 || v21 || !v20)
      {
        [(CAMSystemOverlayViewController *)self _cancelHandleBarTimerIfNeeded];
        v22 = [(CAMSystemOverlayViewController *)self overlayView];
        [v22 setHandleBarVisible:0 animated:1];

        if (!a5 && v15 == 4)
        {
          [(CAMSystemOverlayViewController *)self _selectCurrentMenuItemIfMenuVisible];
        }
      }

      else if (v15)
      {
        [(CAMSystemOverlayViewController *)self _startHandleBarTimerIfNeeded];
      }

      [v11 updateUIForButtonStage:a4];
    }
  }
}

- (void)_recognizeContact:(id)a3 action:(id)a4 stage:(unint64_t)a5 phase:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  if (a5 == 1 && !a6)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v12 = [(CAMSystemOverlayViewController *)self _contactRecognizers];
    v13 = [v12 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v35;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v34 + 1) + 8 * i) contactBeganWithAction:v11];
        }

        v14 = [v12 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v14);
    }
  }

  if (a5 == 1 && a6 == 2)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v17 = [(CAMSystemOverlayViewController *)self _contactRecognizers];
    v18 = [v17 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [*(*(&v30 + 1) + 8 * j) contactEndedWithAction:v11];
        }

        v19 = [v17 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v19);
    }
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = [(CAMSystemOverlayViewController *)self _contactRecognizers];
    v22 = [v17 countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v27;
      do
      {
        for (k = 0; k != v23; k = k + 1)
        {
          if (*v27 != v24)
          {
            objc_enumerationMutation(v17);
          }

          [*(*(&v26 + 1) + 8 * k) contactUpdatedWithAction:v11];
        }

        v23 = [v17 countByEnumeratingWithState:&v26 objects:v38 count:16];
      }

      while (v23);
    }
  }
}

- (void)addContactRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(CAMSystemOverlayViewController *)self _contactRecognizers];
  [v5 addObject:v4];
}

- (void)removeContactRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(CAMSystemOverlayViewController *)self _contactRecognizers];
  [v5 removeObject:v4];
}

- (void)setHalfPressHaptics:(int64_t)a3
{
  if (self->_halfPressHaptics != a3)
  {
    self->_halfPressHaptics = a3;
    [(CAMSystemOverlayViewController *)self _updateContactRecognizers];
  }
}

- (void)setHalfPressForOverlaySupported:(BOOL)a3
{
  if (self->_halfPressForOverlaySupported != a3)
  {
    v3 = a3;
    self->_halfPressForOverlaySupported = a3;
    v5 = os_log_create("com.apple.camera.overlay", "Angel");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"disabled";
      if (v3)
      {
        v6 = @"enabled";
      }

      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "OverlayVC: Half press for overlay %{public}@.", &v7, 0xCu);
    }

    [(CAMSystemOverlayViewController *)self _updateContactRecognizers];
  }
}

- (void)setDoubleHalfPressForMenuSupported:(BOOL)a3
{
  if (self->_doubleHalfPressForMenuSupported != a3)
  {
    self->_doubleHalfPressForMenuSupported = a3;
    [(CAMSystemOverlayViewController *)self _updateContactRecognizers];
  }
}

- (void)setSwipeForOverlaySupported:(BOOL)a3
{
  if (self->_swipeForOverlaySupported != a3)
  {
    self->_swipeForOverlaySupported = a3;
    [(CAMSystemOverlayViewController *)self _updateContactRecognizers];
  }
}

- (void)_updateContactRecognizers
{
  v13 = [(CAMSystemOverlayViewController *)self _stateMachine];
  v3 = [(CAMSystemOverlayViewController *)self _overlayEnabled];
  v4 = [v13 isVisible];
  if (v3)
  {
    v5 = [(CAMSystemOverlayViewController *)self swipeForOverlaySupported];
    v6 = [(CAMSystemOverlayViewController *)self halfPressForOverlaySupported];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = v4 ^ 1;
  v8 = v6;
  if (!v6)
  {
    v8 = v6;
    if ((v7 & 1) == 0)
    {
      v8 = [(CAMSystemOverlayViewController *)self doubleHalfPressForMenuSupported];
    }
  }

  v9 = [(CAMSystemOverlayViewController *)self halfPressHaptics]== 0 || v8;
  v10 = [(CAMSystemOverlayViewController *)self _hapticContactRecognizer];
  [v10 setIsSwipeEnabled:v5 & v7];
  [v10 setIsHalfPressEnabled:v9];
  v11 = [(CAMSystemOverlayViewController *)self _halfPressRecognizer];
  [v11 setEnabled:v8];

  v12 = [(CAMSystemOverlayViewController *)self _idleLockoutContactRecognizer];
  [v12 setIsEnabled:v3 & v4];

  [v13 setHalfPressEnabled:v6];
  [v13 setIsSwipeEnabled:v5];
}

- (void)_currentPositionApplicatorApplyAction:(id)a3
{
  v4 = a3;
  v5 = [(CAMSystemOverlayViewController *)self _currentPositionDeltaApplicator];
  [v5 contactBeganWithAction:v4];
  [v5 contactUpdatedWithAction:v4];
}

- (void)_updateCurrentPositionDeltaApplicatorForDelta:(double)a3
{
  v4 = [(CAMSystemOverlayViewController *)self overlayView];
  v5 = [(CAMSystemOverlayViewController *)self _stateMachine];
  v6 = [v5 currentStage];

  if (![v4 isSliderPresented] || v6 != 1 && -[CAMSystemOverlayViewController _ignoreScrollUnderPressure](self, "_ignoreScrollUnderPressure"))
  {
    goto LABEL_7;
  }

  v7 = [v4 sliderContent];
  if (!v7)
  {
    v8 = [v4 slider];
    goto LABEL_9;
  }

  if (v7 != 1)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_10;
  }

  v8 = [v4 menu];
LABEL_9:
  v10 = v8;
  v11 = [v8 contactRecognizer];

  v9 = v11;
LABEL_10:
  v12 = v9;
  [(CAMSystemOverlayViewController *)self _setCurrentPositionDeltaApplicator:v9];
}

- (void)_setCurrentPositionDeltaApplicator:(id)a3
{
  v5 = a3;
  currentPositionDeltaApplicator = self->__currentPositionDeltaApplicator;
  if (currentPositionDeltaApplicator != v5)
  {
    [(CEKContactRecognizer *)currentPositionDeltaApplicator contactEndedWithAction:0];
    objc_storeStrong(&self->__currentPositionDeltaApplicator, a3);
  }

  _objc_release_x1();
}

- (void)_updateSliderDataIfNeeded
{
  v3 = [(CAMSystemOverlayViewController *)self overlayView];
  v4 = [v3 isSliderVisible];

  if (v4)
  {

    [(CAMSystemOverlayViewController *)self _forceUpdateSliderData];
  }
}

- (void)_forceUpdateSliderData
{
  v14 = [(CAMSystemOverlayViewController *)self overlayView];
  v3 = [v14 slider];
  v4 = [(CAMSystemOverlayViewController *)self controls];
  v5 = [v4 objectAtIndexedSubscript:{-[CAMSystemOverlayViewController _selectedControlIndex](self, "_selectedControlIndex")}];

  v6 = [(CAMSystemOverlayViewController *)self _displayValueRangeForControl:v5];
  v7 = [(CAMSystemOverlayViewController *)self _updatesByID];
  v8 = [v5 identifier];
  v9 = [v7 objectForKeyedSubscript:v8];

  v10 = [(CAMSystemOverlayViewController *)self _styleForControl:v5];
  v11 = [(CAMSystemOverlayViewController *)self _protectedValuesForControl:v5];
  if (v11)
  {
    [v3 configureWithRange:v6 protectedRange:v11 style:v10 enabled:{objc_msgSend(v5, "isEnabled")}];
  }

  else
  {
    v12 = [(CAMSystemOverlayViewController *)self _primaryValuesForControl:v5];
    [v3 configureWithRange:v6 magneticRange:v12 style:v10 enabled:{objc_msgSend(v5, "isEnabled")}];
  }

  v13 = [(CAMSystemOverlayViewController *)self _displayNumberForControl:v5 update:v9];
  [v3 setCurrentNumber:v13];

  [v14 reloadValueLabel];
}

- (id)_valueRangeForControl:(id)a3
{
  v3 = a3;
  v4 = [v3 controlType];
  if (v4 == 2)
  {
    v5 = objc_alloc_init(CAMOverlayBooleanRange);
    goto LABEL_7;
  }

  if (v4 == 1)
  {
    v6 = [CAMOverlayIndexedRange alloc];
    v7 = [v3 valueTitles];
    v8 = [v6 initWithCount:{objc_msgSend(v7, "count")}];

    goto LABEL_9;
  }

  if (!v4)
  {
    v5 = [v3 valueRange];
LABEL_7:
    v8 = v5;
    goto LABEL_9;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (id)_displayValueRangeForControl:(id)a3
{
  v4 = a3;
  if ([v4 controlType])
  {
    v5 = [(CAMSystemOverlayViewController *)self _valueRangeForControl:v4];
  }

  else
  {
    v6 = [v4 displayValueRange];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [v4 valueRange];
    }

    v5 = v8;
  }

  return v5;
}

- (int64_t)_rangeScaleForControl:(id)a3
{
  v3 = a3;
  if ([v3 controlType])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 rangeScale];
  }

  return v4;
}

- (id)_primaryValuesForControl:(id)a3
{
  v3 = a3;
  if ([v3 controlType])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 primaryValues];
  }

  return v4;
}

- (id)_protectedValuesForControl:(id)a3
{
  v3 = a3;
  if ([v3 controlType] || objc_msgSend(v3, "sliderType") != 7)
  {
    v8 = 0;
  }

  else
  {
    v4 = [CAMOverlayDiscreteFloatRange alloc];
    LODWORD(v5) = CAMOverlayServiceSliderLensSelectorFrontFacingValue;
    v6 = [NSNumber numberWithFloat:v5];
    v10 = v6;
    v7 = [NSArray arrayWithObjects:&v10 count:1];
    v8 = [v4 initWithValues:v7];
  }

  return v8;
}

- (id)_numberForUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 valueType];
  if (v5 == 3)
  {
    v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 BOOLeanValue]);
    goto LABEL_10;
  }

  if (v5 == 1)
  {
    v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 indexValue]);
LABEL_10:
    v11 = v12;
    goto LABEL_12;
  }

  if (v5)
  {
    v11 = &off_100057B98;
  }

  else
  {
    v6 = [(CAMSystemOverlayViewController *)self controlsByID];
    v7 = [v4 controlIdentifier];
    v8 = [v6 objectForKeyedSubscript:v7];

    v9 = [(CAMSystemOverlayViewController *)self _valueRangeForControl:v8];
    if ([v9 isDiscrete] && !objc_msgSend(v9, "count"))
    {
      v11 = 0;
    }

    else
    {
      [v4 floatValue];
      [v9 valueClosestToValue:v10];
      v11 = [NSNumber numberWithDouble:?];
    }
  }

LABEL_12:

  return v11;
}

- (id)_displayNumberForControl:(id)a3 update:(id)a4
{
  v6 = a4;
  if (![a3 controlType])
  {
    v7 = [(CAMSystemOverlayViewController *)self controlsByID];
    v8 = [v6 controlIdentifier];
    v9 = [v7 objectForKeyedSubscript:v8];

    v10 = [v9 values];
    v11 = [v9 displayValues];
    if ([v10 count] && objc_msgSend(v11, "count"))
    {
      [v6 floatValue];
      [CAMZoomControlUtilities piecewiseLinearMappingForX:v10 fromXValues:v11 toYValues:v12];
      v13 = [NSNumber numberWithDouble:?];

      goto LABEL_7;
    }
  }

  v13 = [(CAMSystemOverlayViewController *)self _numberForUpdate:v6];
LABEL_7:

  return v13;
}

- (id)_updateForControl:(id)a3 displayValue:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 controlType];
  if (v7 == 2)
  {
    v15 = [v5 updateWithBooleanValue:{objc_msgSend(v6, "BOOLValue")}];
    goto LABEL_10;
  }

  if (v7 == 1)
  {
    v15 = [v5 updateWithIndexValue:{objc_msgSend(v6, "integerValue")}];
LABEL_10:
    v14 = v15;
    goto LABEL_12;
  }

  if (v7)
  {
    v14 = 0;
  }

  else
  {
    [v6 doubleValue];
    v9 = v8;
    v10 = v5;
    v11 = [v10 values];
    v12 = [v10 displayValues];
    if ([v11 count] && objc_msgSend(v12, "count"))
    {
      [CAMZoomControlUtilities piecewiseLinearMappingForX:v12 fromXValues:v11 toYValues:v9];
      v9 = v13;
    }

    *&v13 = v9;
    v14 = [v10 updateWithFloatValue:v13];
  }

LABEL_12:

  return v14;
}

- (unint64_t)_styleForControl:(id)a3
{
  v3 = a3;
  v4 = [v3 controlType];
  if ((v4 - 1) < 2)
  {
    goto LABEL_2;
  }

  if (v4)
  {
    v5 = 0;
    goto LABEL_21;
  }

  v6 = v3;
  v7 = [v6 sliderType];
  if (v7 > 4)
  {
    if ((v7 - 5) < 2)
    {
      v8 = [v6 displayValueRange];
      [v8 maximum];
      v10 = v9;
      [v8 minimum];
      if (v10 - v11 < 5.0)
      {
        v5 = 1;
      }

      else
      {
        v5 = 4;
      }

      goto LABEL_20;
    }

    if (v7 == 7)
    {
      v5 = 6;
      goto LABEL_20;
    }
  }

  else
  {
    if ((v7 - 2) < 3)
    {
      v5 = 3;
LABEL_20:

      goto LABEL_21;
    }

    if (!v7)
    {
      v5 = 0;
      goto LABEL_20;
    }

    if (v7 == 1)
    {
      v5 = 2;
      goto LABEL_20;
    }
  }

LABEL_2:
  v5 = 5;
LABEL_21:

  return v5;
}

- (void)_cancelHandleBarTimerIfNeeded
{
  v3 = [(CAMSystemOverlayViewController *)self _handleBarTimer];
  if (v3)
  {
    v4 = v3;
    dispatch_source_cancel(v3);
    [(CAMSystemOverlayViewController *)self _setHandleBarTimer:0];
    v3 = v4;
  }
}

- (void)_startHandleBarTimerIfNeeded
{
  v3 = [(CAMSystemOverlayViewController *)self _handleBarTimer];
  if (v3)
  {
  }

  else
  {
    v4 = [(CAMSystemOverlayViewController *)self controls];
    v5 = [v4 count];

    if (v5 >= 2)
    {
      AppIntegerValue = CFPreferencesGetAppIntegerValue(@"systemOverlay.sliderHandleAppearAfterMilliseconds", @"com.apple.camera", 0);
      if (AppIntegerValue <= 0)
      {
        v7 = 2000000000;
      }

      else
      {
        v7 = (AppIntegerValue * 1000000.0);
      }

      v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
      v9 = dispatch_time(0, v7);
      dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, (v7 * 0.1));
      [(CAMSystemOverlayViewController *)self _setHandleBarTimer:v8];
      objc_initWeak(&location, self);
      objc_initWeak(&from, v8);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10000FF70;
      v10[3] = &unk_1000555A8;
      objc_copyWeak(&v11, &location);
      objc_copyWeak(&v12, &from);
      dispatch_source_set_event_handler(v8, v10);
      dispatch_resume(v8);
      objc_destroyWeak(&v12);
      objc_destroyWeak(&v11);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_handleBarTimerFired:(id)a3
{
  v4 = a3;
  v8 = [(CAMSystemOverlayViewController *)self _handleBarTimer];
  v5 = [(CAMSystemOverlayViewController *)self _stateMachine];
  v6 = [v5 currentStage];

  if (v8 && v8 == v4 && v6)
  {
    v7 = [(CAMSystemOverlayViewController *)self overlayView];
    [v7 setHandleBarVisible:1 animated:1];
  }

  [(CAMSystemOverlayViewController *)self _cancelHandleBarTimerIfNeeded];
}

- (void)systemOverlayVisibility:(id)a3 changedForReason:(int64_t)a4
{
  v6 = a3;
  v7 = [(CAMSystemOverlayViewController *)self controls];
  v8 = [v7 count];

  if (v8)
  {
    [(CAMSystemOverlayViewController *)self _forceUpdateSliderData];
    [(CAMSystemOverlayViewController *)self _updateSliderStateAnimated:1];
    [(CAMSystemOverlayViewController *)self _updateContactRecognizers];
    if (([v6 isVisible] & 1) == 0)
    {
      v18 = [(CAMSystemOverlayViewController *)self _halfPressRecognizer];
      [v18 reset];

      [(CAMSystemOverlayViewController *)self _cancelHandleBarTimerIfNeeded];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v13 = [(CAMSystemOverlayViewController *)self _contactRecognizers];
      v19 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v26;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v26 != v21)
            {
              objc_enumerationMutation(v13);
            }

            [*(*(&v25 + 1) + 8 * i) contactEndedWithAction:0];
          }

          v20 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v20);
      }

      goto LABEL_24;
    }

    v9 = [(CAMSystemOverlayViewController *)self activeControl];

    if (!v9)
    {
      v10 = [(CAMSystemOverlayViewController *)self _selectedControl];
      [(CAMSystemOverlayViewController *)self _setActiveControl:v10];
      v11 = [(CAMSystemOverlayViewController *)self delegate];
      [v11 systemOverlayViewController:self didChangeActiveControl:v10];
    }

    v12 = +[CAMOverlayServer sharedInstance];
    v13 = [v12 analyticsCollector];

    if (a4 == 1)
    {
      v14 = [(CAMSystemOverlayViewController *)self activeControl];
      v15 = v13;
      v16 = 1;
    }

    else
    {
      if (a4)
      {
        v23 = os_log_create("com.apple.camera.overlay", "Analytics");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_100036228(a4);
        }

        goto LABEL_23;
      }

      v14 = [(CAMSystemOverlayViewController *)self activeControl];
      v15 = v13;
      v16 = 0;
    }

    [v15 countPresentationWithReason:v16 control:v14];

LABEL_23:
    v24 = [(CAMSystemOverlayViewController *)self _tipManager];
    [v24 recordSliderVisibleEvent];

LABEL_24:
    v17 = [(CAMSystemOverlayViewController *)self _tipManager];
    -[NSObject setSliderVisibleParameter:](v17, "setSliderVisibleParameter:", [v6 isVisible]);
    goto LABEL_25;
  }

  v17 = os_log_create("com.apple.camera.overlay", "Angel");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_1000362B8(v17);
  }

LABEL_25:
}

- (void)systemOverlayVisibilityBeganHidingTimer:(id)a3
{
  v4 = [(CAMSystemOverlayViewController *)self delegate];
  [v4 systemOverlayViewControllerWillHideSlider:self];
}

- (void)systemOverlayVisibilityCancelledHidingTimer:(id)a3
{
  v4 = [(CAMSystemOverlayViewController *)self delegate];
  [v4 systemOverlayViewControllerCancelledHidingSlider:self];
}

- (void)halfPressContactRecognizerSingleHalfPressDidBegin:(id)a3
{
  v5 = [(CAMSystemOverlayViewController *)self overlayView];
  if ([v5 isSliderVisible] && objc_msgSend(v5, "sliderContent") == 1)
  {
    v4 = [v5 menu];
    [v4 setHighlightCurrentSelectedIndex:1 animated:1];
  }

  [(CAMSystemOverlayViewController *)self set_numberHalfPress:[(CAMSystemOverlayViewController *)self _numberHalfPress]+ 1];
}

- (void)halfPressContactRecognizerSingleHalfPressDidCancel:(id)a3
{
  v5 = [(CAMSystemOverlayViewController *)self overlayView];
  if ([v5 isSliderVisible])
  {
    v3 = [v5 sliderContent] == 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = [v5 menu];
  [v4 setHighlightCurrentSelectedIndex:0 animated:v3];
}

- (void)halfPressContactRecognizerSingleHalfPressDidEnd:(id)a3
{
  v4 = a3;
  if ([(CAMSystemOverlayViewController *)self _selectCurrentMenuItemIfMenuVisible])
  {
    [v4 reset];
  }
}

- (BOOL)_selectCurrentMenuItemIfMenuVisible
{
  v3 = [(CAMSystemOverlayViewController *)self overlayView];
  if ([v3 isSliderVisible] && objc_msgSend(v3, "sliderContent") == 1)
  {
    v4 = [v3 menu];
    v5 = [v4 selectedControlIndex];

    v6 = [(CAMSystemOverlayViewController *)self controls];
    if (v5 >= [v6 count])
    {
      v10 = os_log_create("com.apple.camera.overlay", "Angel");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000362FC(v6);
      }
    }

    else
    {
      v7 = [v6 objectAtIndexedSubscript:v5];
      v8 = [v7 isEnabled];

      if (v8)
      {
        [v3 performMenuPresentation:2];
        v9 = 1;
LABEL_12:

        goto LABEL_13;
      }

      v11 = [v3 menu];
      [v11 setHighlightCurrentSelectedIndex:0 animated:1];
    }

    v9 = 0;
    goto LABEL_12;
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (void)halfPressContactRecognizerDoubleHalfPressDidEnd:(id)a3
{
  if ([(CAMSystemOverlayViewController *)self _doubleHalfPressOpensMenu])
  {
    v4 = [(CAMSystemOverlayViewController *)self overlayView];
    v5 = [v4 isSliderVisible];

    if (v5)
    {
      v8 = [(CAMSystemOverlayViewController *)self overlayView];
      if ([v8 isSliderVisible])
      {
        v6 = [v8 sliderContent] == 1;
      }

      else
      {
        v6 = 0;
      }

      v7 = [v8 menu];
      [v7 setHighlightCurrentSelectedIndex:0 animated:v6];

      if ([(CAMSystemOverlayViewController *)self overlayViewShouldPresentMenu:v8])
      {
        [v8 performMenuPresentation:1];
      }
    }
  }
}

- (void)idleContactRecognized:(id)a3
{
  v4 = +[CAMOverlayServer sharedInstance];
  v5 = [v4 analyticsCollector];
  [v5 countDismissWithReason:3];

  [(CAMSystemOverlayViewController *)self dismissOverlayForced:1];
}

- (void)restartControlMetrics
{
  v3 = +[NSDate distantFuture];
  [(CAMSystemOverlayViewController *)self set_touchStartTime:v3];

  [(CAMSystemOverlayViewController *)self set_touchTimeInterval:0.0];
  [(CAMSystemOverlayViewController *)self set_numberTouches:0];
  [(CAMSystemOverlayViewController *)self set_numberFullPress:0];

  [(CAMSystemOverlayViewController *)self set_numberHalfPress:0];
}

- (void)_updateMetricsForButton:(unint64_t)a3 stage:(unint64_t)a4 phase:(unint64_t)a5
{
  v9 = [(CAMSystemOverlayViewController *)self _stateMachine];
  v10 = [v9 currentStage];

  v11 = [(CAMSystemOverlayViewController *)self _touchStartTime];
  [v11 timeIntervalSinceNow];
  v13 = v12;

  if (!v10)
  {
    if (v13 < 0.0)
    {
      [(CAMSystemOverlayViewController *)self _touchTimeInterval];
      v16 = v15;
      v17 = [(CAMSystemOverlayViewController *)self _touchStartTime];
      [v17 timeIntervalSinceNow];
      [(CAMSystemOverlayViewController *)self set_touchTimeInterval:v16 - v18];

      [(CAMSystemOverlayViewController *)self set_numberTouches:[(CAMSystemOverlayViewController *)self _numberTouches]+ 1];
    }

    v14 = +[NSDate distantFuture];
    goto LABEL_7;
  }

  if (v13 > 0.0)
  {
    v14 = +[NSDate now];
LABEL_7:
    v19 = v14;
    [(CAMSystemOverlayViewController *)self set_touchStartTime:v14];
  }

  if (a3 == 5 && a4 == 4 && !a5)
  {
    v20 = [(CAMSystemOverlayViewController *)self _tipManager];
    [v20 recordCaptureEvent];

    v21 = [(CAMSystemOverlayViewController *)self _numberFullPress]+ 1;

    [(CAMSystemOverlayViewController *)self set_numberFullPress:v21];
  }
}

- (void)submitMetrics
{
  if (qword_1000605E8 != -1)
  {
    sub_100036380();
  }

  v8[0] = &off_100057BB0;
  v3 = [NSNumber numberWithUnsignedInteger:[(CAMSystemOverlayViewController *)self _numberFullPress]];
  v9[0] = v3;
  v8[1] = &off_100057BC8;
  v4 = [NSNumber numberWithUnsignedInteger:[(CAMSystemOverlayViewController *)self _numberHalfPress]];
  v9[1] = v4;
  v8[2] = &off_100057BE0;
  v5 = [NSNumber numberWithUnsignedInteger:[(CAMSystemOverlayViewController *)self _numberTouches]];
  v9[2] = v5;
  v8[3] = @"TouchTimeInterval";
  [(CAMSystemOverlayViewController *)self _touchTimeInterval];
  v6 = [NSNumber numberWithDouble:?];
  v9[3] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:4];

  PPSSendTelemetry();
}

- (CAMSystemOverlayViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end