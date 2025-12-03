@interface CAMSystemOverlayViewController
- (BOOL)_selectCurrentMenuItemIfMenuVisible;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isControlEnabledAtIndex:(unint64_t)index;
- (BOOL)overlayViewShouldPresentMenu:(id)menu;
- (CAMSystemOverlayViewController)initWithMotionController:(id)controller;
- (CAMSystemOverlayViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CAMSystemOverlayViewControllerDelegate)delegate;
- (NSNumberFormatter)_numberFormatter;
- (NSString)_selectedControlIdentifier;
- (id)_controlImageNames;
- (id)_disabledControlsIndices;
- (id)_displayNumberForControl:(id)control update:(id)update;
- (id)_displayValueRangeForControl:(id)control;
- (id)_fallbackTextForControlAtIndex:(unint64_t)index;
- (id)_numberForUpdate:(id)update;
- (id)_primaryValuesForControl:(id)control;
- (id)_protectedValuesForControl:(id)control;
- (id)_selectedControl;
- (id)_updateForControl:(id)control displayValue:(id)value;
- (id)_valueRangeForControl:(id)control;
- (id)_valueTextForControl:(id)control update:(id)update useLeadingZero:(BOOL)zero;
- (id)menuTitleForControlAtIndex:(unint64_t)index;
- (id)overlayView:(id)view cellConfigurationForNumber:(id)number;
- (id)valueTextForCurrentControl;
- (int64_t)_rangeScaleForControl:(id)control;
- (unint64_t)_styleForControl:(id)control;
- (void)_cancelHandleBarTimerIfNeeded;
- (void)_commonInitWithMotionController:(id)controller;
- (void)_currentPositionApplicatorApplyAction:(id)action;
- (void)_forceUpdateSliderData;
- (void)_handleApplicationDidEnterBackground:(id)background;
- (void)_handleBarTimerFired:(id)fired;
- (void)_handleButton:(unint64_t)button stage:(unint64_t)stage phase:(unint64_t)phase position:(double)position delta:(double)delta;
- (void)_handleTouchingGesture:(id)gesture;
- (void)_motionControllerDidChangeOrientation:(id)orientation;
- (void)_physicalButtonInteraction:(id)interaction handleAction:(id)action withActiveActions:(id)actions;
- (void)_promoteMenuSelectionIndexIfAvailableNotifyingDelegate:(BOOL)delegate;
- (void)_recognizeContact:(id)contact action:(id)action stage:(unint64_t)stage phase:(unint64_t)phase;
- (void)_setCurrentPositionDeltaApplicator:(id)applicator;
- (void)_startHandleBarTimerIfNeeded;
- (void)_updateContactRecognizers;
- (void)_updateCurrentPositionDeltaApplicatorForDelta:(double)delta;
- (void)_updateMetricsForButton:(unint64_t)button stage:(unint64_t)stage phase:(unint64_t)phase;
- (void)_updateNumberFormatterRounding;
- (void)_updateSliderDataIfNeeded;
- (void)addContactRecognizer:(id)recognizer;
- (void)applyControlUpdate:(id)update;
- (void)dismissOverlayForced:(BOOL)forced;
- (void)halfPressContactRecognizerDoubleHalfPressDidEnd:(id)end;
- (void)halfPressContactRecognizerSingleHalfPressDidBegin:(id)begin;
- (void)halfPressContactRecognizerSingleHalfPressDidCancel:(id)cancel;
- (void)halfPressContactRecognizerSingleHalfPressDidEnd:(id)end;
- (void)idleContactRecognized:(id)recognized;
- (void)loadView;
- (void)overlayView:(id)view menuDidChangePresented:(BOOL)presented;
- (void)overlayView:(id)view menuDidSelectControlAtIndex:(unint64_t)index;
- (void)overlayView:(id)view menuWillChangePresented:(BOOL)presented;
- (void)overlayView:(id)view performedDismissGesture:(id)gesture;
- (void)overlayViewSliderDidChangeCurrentValue:(id)value;
- (void)overlayViewSliderDidEndScrolling:(id)scrolling;
- (void)overlayViewSliderWillBeginScrolling:(id)scrolling;
- (void)removeContactRecognizer:(id)recognizer;
- (void)restartControlMetrics;
- (void)setControls:(id)controls updatesByID:(id)d activeControl:(id)control;
- (void)setDoubleHalfPressForMenuSupported:(BOOL)supported;
- (void)setHalfPressForOverlaySupported:(BOOL)supported;
- (void)setHalfPressHaptics:(int64_t)haptics;
- (void)setSwipeForOverlaySupported:(BOOL)supported;
- (void)submitMetrics;
- (void)systemOverlayVisibility:(id)visibility changedForReason:(int64_t)reason;
- (void)systemOverlayVisibilityBeganHidingTimer:(id)timer;
- (void)systemOverlayVisibilityCancelledHidingTimer:(id)timer;
- (void)viewDidLoad;
@end

@implementation CAMSystemOverlayViewController

- (CAMSystemOverlayViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = CAMSystemOverlayViewController;
  v4 = [(CAMSystemOverlayViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(CAMSystemOverlayViewController *)v4 _commonInitWithMotionController:0];
  }

  return v5;
}

- (CAMSystemOverlayViewController)initWithMotionController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = CAMSystemOverlayViewController;
  v5 = [(CAMSystemOverlayViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CAMSystemOverlayViewController *)v5 _commonInitWithMotionController:controllerCopy];
  }

  return v6;
}

- (void)_commonInitWithMotionController:(id)controller
{
  controllerCopy = controller;
  v5 = controllerCopy;
  if (!controllerCopy)
  {
    v5 = objc_alloc_init(CAMMotionController);
  }

  objc_storeStrong(&self->__motionController, v5);
  if (!controllerCopy)
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
  _motionController = [(CAMSystemOverlayViewController *)self _motionController];
  -[CAMSystemOverlayView setOrientation:](v4, "setOrientation:", [_motionController captureOrientation]);

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
  view = [(CAMSystemOverlayViewController *)self view];
  [view addGestureRecognizer:v3];

  [(CAMSystemOverlayViewController *)self restartControlMetrics];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  overlayView = [(CAMSystemOverlayViewController *)self overlayView];
  if ([overlayView isSliderVisible])
  {
    v4 = [overlayView sliderContent] != 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_handleTouchingGesture:(id)gesture
{
  state = [gesture state];
  if ((state - 3) >= 2)
  {
    if (state != 1)
    {
      return;
    }

    _stateMachine = [(CAMSystemOverlayViewController *)self _stateMachine];
    [_stateMachine addReason:2];
  }

  else
  {
    _stateMachine = [(CAMSystemOverlayViewController *)self _stateMachine];
    [_stateMachine removeReason:2];
  }
}

- (void)overlayViewSliderDidChangeCurrentValue:(id)value
{
  if (![value sliderContent] && -[CAMSystemOverlayViewController _overlayEnabled](self, "_overlayEnabled"))
  {
    overlayView = [(CAMSystemOverlayViewController *)self overlayView];
    [overlayView setHandleBarVisible:0 animated:1];

    _selectedControlIdentifier = [(CAMSystemOverlayViewController *)self _selectedControlIdentifier];
    overlayView2 = [(CAMSystemOverlayViewController *)self overlayView];
    slider = [overlayView2 slider];
    currentNumber = [slider currentNumber];

    controlsByID = [(CAMSystemOverlayViewController *)self controlsByID];
    v9 = [controlsByID objectForKeyedSubscript:_selectedControlIdentifier];

    v10 = [(CAMSystemOverlayViewController *)self _updateForControl:v9 displayValue:currentNumber];
    _updatesByID = [(CAMSystemOverlayViewController *)self _updatesByID];
    [_updatesByID setObject:v10 forKeyedSubscript:_selectedControlIdentifier];

    delegate = [(CAMSystemOverlayViewController *)self delegate];
    [delegate systemOverlayViewController:self didUpdateControl:v10];

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
          _zoomReporter = [(CAMSystemOverlayViewController *)self _zoomReporter];
          [_zoomReporter zoomChangedToFactor:6 interactionType:v16];
        }
      }
    }
  }
}

- (void)overlayViewSliderWillBeginScrolling:(id)scrolling
{
  _stateMachine = [(CAMSystemOverlayViewController *)self _stateMachine];
  [_stateMachine addReason:3];
}

- (void)overlayViewSliderDidEndScrolling:(id)scrolling
{
  _stateMachine = [(CAMSystemOverlayViewController *)self _stateMachine];
  [_stateMachine removeReason:3];

  if (self->__isDraggingZoom)
  {
    self->__isDraggingZoom = 0;
    _zoomReporter = [(CAMSystemOverlayViewController *)self _zoomReporter];
    [_zoomReporter zoomEndedFromSource:6];
  }
}

- (BOOL)overlayViewShouldPresentMenu:(id)menu
{
  controls = [(CAMSystemOverlayViewController *)self controls];
  v4 = [controls count] > 1;

  return v4;
}

- (void)overlayView:(id)view menuWillChangePresented:(BOOL)presented
{
  presentedCopy = presented;
  menu = [view menu];
  if (presentedCopy)
  {
    _controlImageNames = [(CAMSystemOverlayViewController *)self _controlImageNames];
    [menu setImageNames:_controlImageNames];

    [menu setSelectedControlIndex:{-[CAMSystemOverlayViewController _selectedControlIndex](self, "_selectedControlIndex")}];
    _disabledControlsIndices = [(CAMSystemOverlayViewController *)self _disabledControlsIndices];
    [menu setDisabledMenuItemsIndices:_disabledControlsIndices];
  }

  else
  {
    [(CAMSystemOverlayViewController *)self _promoteMenuSelectionIndexIfAvailableNotifyingDelegate:1];
  }
}

- (void)_promoteMenuSelectionIndexIfAvailableNotifyingDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  overlayView = [(CAMSystemOverlayViewController *)self overlayView];
  menu = [overlayView menu];
  if ([overlayView isSliderVisible] && menu)
  {
    selectedControlIndex = [menu selectedControlIndex];
    controls = [(CAMSystemOverlayViewController *)self controls];
    if (selectedControlIndex >= [controls count])
    {
      v11 = os_log_create("com.apple.camera.overlay", "Angel");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000360A4(controls);
      }
    }

    else
    {
      v9 = [controls objectAtIndexedSubscript:selectedControlIndex];
      if ([v9 isEnabled])
      {
        if (selectedControlIndex != [(CAMSystemOverlayViewController *)self _selectedControlIndex])
        {
          [(CAMSystemOverlayViewController *)self _setSelectedControlIndex:selectedControlIndex];
          [(CAMSystemOverlayViewController *)self _updateNumberFormatterRounding];
          [(CAMSystemOverlayViewController *)self _updateSliderDataIfNeeded];
          [(CAMSystemOverlayViewController *)self _setActiveControl:v9];
          if (delegateCopy)
          {
            delegate = [(CAMSystemOverlayViewController *)self delegate];
            [delegate systemOverlayViewController:self didChangeActiveControl:v9];
          }
        }
      }
    }
  }
}

- (void)overlayView:(id)view menuDidChangePresented:(BOOL)presented
{
  presentedCopy = presented;
  viewCopy = view;
  if (presentedCopy)
  {
    _stateMachine = [(CAMSystemOverlayViewController *)self _stateMachine];
    [_stateMachine addReason:4];

    slider = [viewCopy slider];
    contactRecognizer = [slider contactRecognizer];
    [contactRecognizer contactEndedWithAction:0];

    [(CAMSystemOverlayViewController *)self _cancelHandleBarTimerIfNeeded];
    _tipManager = [(CAMSystemOverlayViewController *)self _tipManager];
    [_tipManager recordMenuVisibleEvent];
LABEL_5:

    goto LABEL_7;
  }

  if ([(CAMSystemOverlayViewController *)self isControlEnabledAtIndex:[(CAMSystemOverlayViewController *)self _selectedControlIndex]])
  {
    _stateMachine2 = [(CAMSystemOverlayViewController *)self _stateMachine];
    [_stateMachine2 removeReason:4];

    _tipManager = [viewCopy menu];
    contactRecognizer2 = [_tipManager contactRecognizer];
    [contactRecognizer2 contactEndedWithAction:0];

    goto LABEL_5;
  }

  [(CAMSystemOverlayViewController *)self dismissOverlayForced:1];
LABEL_7:
}

- (void)overlayView:(id)view menuDidSelectControlAtIndex:(unint64_t)index
{
  delegate = [(CAMSystemOverlayViewController *)self delegate];
  [delegate systemOverlayViewController:self menuDidScrollToControlAtIndex:index];
}

- (id)overlayView:(id)view cellConfigurationForNumber:(id)number
{
  numberCopy = number;
  _selectedControl = [(CAMSystemOverlayViewController *)self _selectedControl];
  if (![_selectedControl controlType] && objc_msgSend(_selectedControl, "sliderType") == 7 && (objc_msgSend(numberCopy, "floatValue"), v7 == CAMOverlayServiceSliderLensSelectorFrontFacingValue))
  {
    v8 = [UIImageSymbolConfiguration configurationWithPointSize:12.0];
    v9 = [UIImage systemImageNamed:@"person.fill" withConfiguration:v8];
    v10 = [[CEKTickCellConfiguration alloc] initWithImage:v9];
  }

  else
  {
    v8 = [(CAMSystemOverlayViewController *)self _updateForControl:_selectedControl displayValue:numberCopy];
    v9 = [(CAMSystemOverlayViewController *)self _valueTextForControl:_selectedControl update:v8 useLeadingZero:0];
    v11 = [CEKTickCellConfiguration alloc];
    v12 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
    v10 = [v11 initWithText:v9 font:v12];
  }

  return v10;
}

- (id)_fallbackTextForControlAtIndex:(unint64_t)index
{
  controls = [(CAMSystemOverlayViewController *)self controls];
  v5 = [controls count];

  if (v5 > index)
  {
    return 0;
  }

  v7 = os_log_create("com.apple.camera.overlay", "Angel");
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100036128(index, v5, v8);
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
    _selectedControl = [(CAMSystemOverlayViewController *)self _selectedControl];
    _updatesByID = [(CAMSystemOverlayViewController *)self _updatesByID];
    identifier = [_selectedControl identifier];
    v9 = [_updatesByID objectForKeyedSubscript:identifier];

    v5 = [(CAMSystemOverlayViewController *)self _valueTextForControl:_selectedControl update:v9 useLeadingZero:1];
  }

  return v5;
}

- (id)_valueTextForControl:(id)control update:(id)update useLeadingZero:(BOOL)zero
{
  zeroCopy = zero;
  controlCopy = control;
  updateCopy = update;
  v10 = [(CAMSystemOverlayViewController *)self _displayValueRangeForControl:controlCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    valueFormat = [controlCopy valueFormat];
  }

  else
  {
    valueFormat = 0;
  }

  if ([v10 isFloatingPoint])
  {
    valueTitles = [(CAMSystemOverlayViewController *)self _displayNumberForControl:controlCopy update:updateCopy];
    _numberFormatter = [(CAMSystemOverlayViewController *)self _numberFormatter];
    [_numberFormatter setMinimumIntegerDigits:zeroCopy];
    if (valueTitles)
    {
      v14 = [_numberFormatter stringFromNumber:valueTitles];
    }

    else
    {
      v14 = &stru_1000572E8;
    }

    v16 = [_numberFormatter stringFromNumber:&off_100057C20];
    if ([(__CFString *)v14 isEqualToString:v16])
    {
      v17 = [_numberFormatter stringFromNumber:&off_100057B20];

      v14 = v17;
    }

    if (valueFormat)
    {
      v18 = [NSString stringWithValidatedFormat:valueFormat validFormatSpecifiers:@"%@" error:0, v14];
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
    valueTitles = [controlCopy valueTitles];
    v15 = [valueTitles objectAtIndexedSubscript:{objc_msgSend(updateCopy, "indexValue")}];
LABEL_9:
    v14 = v15;
LABEL_22:

    goto LABEL_23;
  }

  if ([v10 valueType] == 3)
  {
    valueTitles = controlCopy;
    if ([updateCopy BOOLeanValue])
    {
      [valueTitles onTitle];
    }

    else
    {
      [valueTitles offTitle];
    }
    v15 = ;
    goto LABEL_9;
  }

  v14 = &stru_1000572E8;
LABEL_23:

  return v14;
}

- (id)menuTitleForControlAtIndex:(unint64_t)index
{
  v5 = [(CAMSystemOverlayViewController *)self _fallbackTextForControlAtIndex:[(CAMSystemOverlayViewController *)self _selectedControlIndex]];
  v6 = v5;
  if (v5)
  {
    title = v5;
  }

  else
  {
    controls = [(CAMSystemOverlayViewController *)self controls];
    v9 = [controls objectAtIndexedSubscript:index];
    title = [v9 title];
  }

  return title;
}

- (BOOL)isControlEnabledAtIndex:(unint64_t)index
{
  controls = [(CAMSystemOverlayViewController *)self controls];
  v6 = [controls count];

  if (v6 <= index)
  {
    return 0;
  }

  controls2 = [(CAMSystemOverlayViewController *)self controls];
  v8 = [controls2 objectAtIndexedSubscript:index];
  isEnabled = [v8 isEnabled];

  return isEnabled;
}

- (void)overlayView:(id)view performedDismissGesture:(id)gesture
{
  v5 = [CAMOverlayServer sharedInstance:view];
  analyticsCollector = [v5 analyticsCollector];
  [analyticsCollector countDismissWithReason:1];

  [(CAMSystemOverlayViewController *)self dismissOverlayForced:1];
}

- (void)dismissOverlayForced:(BOOL)forced
{
  _stateMachine = [(CAMSystemOverlayViewController *)self _stateMachine];
  [_stateMachine hideSwipeCoachingImmediately];

  if (forced || (-[CAMSystemOverlayViewController _stateMachine](self, "_stateMachine"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 currentStage], v6, !v7))
  {
    [(CAMSystemOverlayViewController *)self _promoteMenuSelectionIndexIfAvailableNotifyingDelegate:0];
    _stateMachine2 = [(CAMSystemOverlayViewController *)self _stateMachine];
    [_stateMachine2 endAllStages];

    [(CAMSystemOverlayViewController *)self _cancelHandleBarTimerIfNeeded];
    _stateMachine3 = [(CAMSystemOverlayViewController *)self _stateMachine];
    [_stateMachine3 hideImmediately];

    [(CAMSystemOverlayViewController *)self _updateSliderStateAnimated:1];
    _tipManager = [(CAMSystemOverlayViewController *)self _tipManager];
    [_tipManager setSliderVisibleParameter:0];

    [(CAMSystemOverlayViewController *)self _updateContactRecognizers];
    _halfPressRecognizer = [(CAMSystemOverlayViewController *)self _halfPressRecognizer];
    [_halfPressRecognizer reset];
  }

  else
  {

    [(CAMSystemOverlayViewController *)self _updateSliderStateAnimated:1];
  }
}

- (void)_motionControllerDidChangeOrientation:(id)orientation
{
  _motionController = [(CAMSystemOverlayViewController *)self _motionController];
  overlayView = [(CAMSystemOverlayViewController *)self overlayView];
  isSliderVisible = [overlayView isSliderVisible];

  overlayView2 = [(CAMSystemOverlayViewController *)self overlayView];
  [overlayView2 setOrientation:objc_msgSend(_motionController animated:{"captureOrientation"), isSliderVisible}];

  _tipManager = [(CAMSystemOverlayViewController *)self _tipManager];
  [_tipManager setIsPortraitOrientation:{objc_msgSend(_motionController, "captureOrientation") == 1}];
}

- (void)_handleApplicationDidEnterBackground:(id)background
{
  [(CAMSystemOverlayViewController *)self submitMetrics];

  [(CAMSystemOverlayViewController *)self restartControlMetrics];
}

- (void)setControls:(id)controls updatesByID:(id)d activeControl:(id)control
{
  controlsCopy = controls;
  dCopy = d;
  controlCopy = control;
  controls = [(CAMSystemOverlayViewController *)self controls];
  if ([controlsCopy isEqualToArray:controls])
  {
    _updatesByID = [(CAMSystemOverlayViewController *)self _updatesByID];
    v13 = [dCopy isEqualToDictionary:_updatesByID];

    if (v13)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  v46 = controlCopy;
  activeControl = [(CAMSystemOverlayViewController *)self activeControl];
  _updatesByID2 = [(CAMSystemOverlayViewController *)self _updatesByID];
  v45 = activeControl;
  identifier = [activeControl identifier];
  v17 = [_updatesByID2 objectForKeyedSubscript:identifier];
  v44 = [(CAMSystemOverlayViewController *)self _numberForUpdate:v17];

  v18 = [dCopy mutableCopy];
  [(CAMSystemOverlayViewController *)self _setUpdatesByID:v18];

  v19 = +[NSMutableDictionary dictionary];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v20 = controlsCopy;
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
        identifier2 = [v25 identifier];
        [v19 setObject:v25 forKeyedSubscript:identifier2];
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

  activeControl2 = [(CAMSystemOverlayViewController *)self activeControl];

  if (!activeControl2)
  {
    firstObject = [v20 firstObject];
    [(CAMSystemOverlayViewController *)self _setActiveControl:firstObject];
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
    _stateMachine = [(CAMSystemOverlayViewController *)self _stateMachine];
    [_stateMachine endAllStages];
  }

  _tipManager = [(CAMSystemOverlayViewController *)self _tipManager];
  controls2 = [(CAMSystemOverlayViewController *)self controls];
  [_tipManager setControlsCountParameter:{objc_msgSend(controls2, "count")}];

  activeControl3 = [(CAMSystemOverlayViewController *)self activeControl];
  identifier3 = [activeControl3 identifier];
  v38 = [dCopy objectForKeyedSubscript:identifier3];
  v39 = [(CAMSystemOverlayViewController *)self _numberForUpdate:v38];

  activeControl4 = [(CAMSystemOverlayViewController *)self activeControl];
  if ([v45 isContentEqual:activeControl4])
  {
    v41 = v44;
    v42 = [v44 isEqualToNumber:v39];

    controlCopy = v46;
    if (v42)
    {
      goto LABEL_28;
    }
  }

  else
  {

    controlCopy = v46;
    v41 = v44;
  }

  _stateMachine2 = [(CAMSystemOverlayViewController *)self _stateMachine];
  [_stateMachine2 hideImmediately];

  [(CAMSystemOverlayViewController *)self _updateSliderStateAnimated:1];
LABEL_28:
  [(CAMSystemOverlayViewController *)self _updateNumberFormatterRounding];
  [(CAMSystemOverlayViewController *)self _updateContactRecognizers];

LABEL_29:
}

- (void)applyControlUpdate:(id)update
{
  updateCopy = update;
  controlIdentifier = [updateCopy controlIdentifier];
  controlsByID = [(CAMSystemOverlayViewController *)self controlsByID];
  v7 = [controlsByID objectForKeyedSubscript:controlIdentifier];

  if (v7)
  {
    if ([updateCopy isValueUpdate])
    {
      _updatesByID = [(CAMSystemOverlayViewController *)self _updatesByID];
      [_updatesByID setObject:updateCopy forKeyedSubscript:controlIdentifier];
    }

    else
    {
      if ([updateCopy valueType] != 5)
      {
        goto LABEL_13;
      }

      isEnabled = [updateCopy isEnabled];
      [v7 setEnabled:isEnabled];
      _updatesByID = [(CAMSystemOverlayViewController *)self overlayView];
      if ([_updatesByID isSliderVisible])
      {
        if ([_updatesByID sliderContent] == 1)
        {
          _disabledControlsIndices = [(CAMSystemOverlayViewController *)self _disabledControlsIndices];
          menu = [_updatesByID menu];
          [menu setDisabledMenuItemsIndices:_disabledControlsIndices];

          [_updatesByID reloadValueLabel];
        }

        else if (![_updatesByID sliderContent])
        {
          _selectedControl = [(CAMSystemOverlayViewController *)self _selectedControl];

          if (v7 == _selectedControl)
          {
            slider = [_updatesByID slider];
            [slider setEnabled:isEnabled];
          }
        }
      }
    }

    _selectedControlIdentifier = [(CAMSystemOverlayViewController *)self _selectedControlIdentifier];
    v10 = [controlIdentifier isEqualToString:_selectedControlIdentifier];

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
      sub_1000361B0(controlIdentifier, v11);
    }
  }

LABEL_13:
}

- (id)_selectedControl
{
  controls = [(CAMSystemOverlayViewController *)self controls];
  _selectedControlIndex = [(CAMSystemOverlayViewController *)self _selectedControlIndex];
  if (_selectedControlIndex >= [controls count])
  {
    v5 = 0;
  }

  else
  {
    v5 = [controls objectAtIndexedSubscript:_selectedControlIndex];
  }

  return v5;
}

- (NSString)_selectedControlIdentifier
{
  _selectedControl = [(CAMSystemOverlayViewController *)self _selectedControl];
  identifier = [_selectedControl identifier];

  return identifier;
}

- (id)_controlImageNames
{
  controls = [(CAMSystemOverlayViewController *)self controls];
  v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [controls count]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = controls;
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

        imageName = [*(*(&v11 + 1) + 8 * i) imageName];
        [v3 addObject:imageName];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_disabledControlsIndices
{
  controls = [(CAMSystemOverlayViewController *)self controls];
  +[NSMutableIndexSet indexSet];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000E260;
  v3 = v5[3] = &unk_1000556B0;
  v6 = v3;
  [controls enumerateObjectsUsingBlock:v5];

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
  _selectedControl = [(CAMSystemOverlayViewController *)self _selectedControl];
  if (_selectedControl)
  {
    v7 = _selectedControl;
    if (![_selectedControl controlType])
    {
      _numberFormatter = [(CAMSystemOverlayViewController *)self _numberFormatter];
      if ([(CAMSystemOverlayViewController *)self _styleForControl:v7]== 3)
      {
        [_numberFormatter setMaximumFractionDigits:0];
        [_numberFormatter setRoundingIncrement:&off_100057B40];
        [_numberFormatter setRoundingMode:5];
      }

      else
      {
        [_numberFormatter setMaximumFractionDigits:1];
        [_numberFormatter setRoundingIncrement:&off_100057B30];
        v5 = [(CAMSystemOverlayViewController *)self _valueRangeForControl:v7];
        if ([v5 isDiscrete])
        {
          v6 = 5;
        }

        else
        {
          v6 = 1;
        }

        [_numberFormatter setRoundingMode:v6];
      }
    }
  }

  _objc_release_x1();
}

- (void)_physicalButtonInteraction:(id)interaction handleAction:(id)action withActiveActions:(id)actions
{
  interactionCopy = interaction;
  actionCopy = action;
  actionsCopy = actions;
  _button = [actionCopy _button];
  _stage = [actionCopy _stage];
  _numberOfStages = [actionCopy _numberOfStages];
  _contact = [actionCopy _contact];
  _stagePhase = [actionCopy _stagePhase];
  v14 = 3;
  if (!_stagePhase)
  {
    v14 = 0;
  }

  v15 = _stagePhase == 1;
  if (_stagePhase == 1)
  {
    v14 = 1;
  }

  if (_stagePhase == 2)
  {
    v15 = 0;
  }

  v43 = v15;
  if (_stagePhase == 2)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14;
  }

  touchPositionHints = [_contact touchPositionHints];
  v18 = touchPositionHints;
  v19 = (touchPositionHints & 0xC) != 0;
  if (touchPositionHints)
  {
    v19 = 0;
  }

  v20 = 0.0;
  v21 = 0.0;
  if ((touchPositionHints & 0x10) == 0 && !v19)
  {
    _contact2 = [actionCopy _contact];
    [_contact2 positionDelta];
    v20 = v23;

    [_contact position];
    v21 = v24;
  }

  isTouching = [_contact isTouching];
  v26 = 4;
  v27 = 3;
  v28 = 2;
  if (_stage == 1)
  {
    v29 = 1;
  }

  else
  {
    v29 = isTouching;
  }

  if (_stage <= 1)
  {
    v28 = v29;
  }

  if (_stage != 3)
  {
    v27 = v28;
  }

  if (_stage <= 3)
  {
    v26 = v27;
  }

  if (_numberOfStages <= 1)
  {
    v30 = 4 * (_stage > 0);
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
      v32 = v41 = _numberOfStages;
      [actionCopy _state];
      _NSStringFromUIPhysicalButtonState();
      v33 = v42 = interactionCopy;
      v39 = off_100055710[v16];
      v40 = _NSStringFromUITouchSenstiveButtonPositionHint();
      *buf = 138544898;
      v47 = v32;
      v48 = 2114;
      v49 = v33;
      v50 = 1024;
      v51 = _stage;
      v52 = 1024;
      v53 = v41;
      v54 = 2114;
      v55 = v39;
      v56 = 2114;
      v57 = _contact;
      v58 = 2114;
      v59 = v40;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Observed physical button: %{public}@; state: %{public}@; stage: %d/%d; stagePhase: %{public}@; contact: %{public}@; hints: %{public}@", buf, 0x40u);

      interactionCopy = v42;
    }
  }

  [(CAMSystemOverlayViewController *)self _recognizeContact:_contact action:actionCopy stage:v30 phase:v16];
  if ([(CAMSystemOverlayViewController *)self swipeForOverlaySupported])
  {
    _stateMachine = [(CAMSystemOverlayViewController *)self _stateMachine];
    if (([_stateMachine isVisible] & 1) == 0)
    {

      if ((v18 & 2) == 0)
      {
        goto LABEL_36;
      }

      _stateMachine2 = [(CAMSystemOverlayViewController *)self _stateMachine];
      [_stateMachine2 addReason:1];

      _stateMachine = [(CAMSystemOverlayViewController *)self _stateMachine];
      [_stateMachine removeReason:1];
    }
  }

LABEL_36:
  [(CAMSystemOverlayViewController *)self _handleButton:_button stage:v30 phase:v16 position:v21 delta:v20];
  _stateMachine3 = [(CAMSystemOverlayViewController *)self _stateMachine];
  currentStage = [_stateMachine3 currentStage];

  if (currentStage)
  {
    if (v43)
    {
      [(CAMSystemOverlayViewController *)self _currentPositionApplicatorApplyAction:actionCopy];
    }
  }

  else
  {
    _currentPositionDeltaApplicator = [(CAMSystemOverlayViewController *)self _currentPositionDeltaApplicator];
    [_currentPositionDeltaApplicator contactEndedWithAction:actionCopy];
  }

  [(CAMSystemOverlayViewController *)self _updateMetricsForButton:_button stage:_stage phase:v16];
}

- (void)_handleButton:(unint64_t)button stage:(unint64_t)stage phase:(unint64_t)phase position:(double)position delta:(double)delta
{
  if ([(CAMSystemOverlayViewController *)self _overlayEnabled:button])
  {
    overlayView = [(CAMSystemOverlayViewController *)self overlayView];
    [(CAMSystemOverlayViewController *)self _updateCurrentPositionDeltaApplicatorForDelta:delta];
    if (stage)
    {
      _stateMachine = [(CAMSystemOverlayViewController *)self _stateMachine];
      wantsOverlayVisible = [_stateMachine wantsOverlayVisible];
      [_stateMachine handleStage:stage phase:phase];
      wantsOverlayVisible2 = [_stateMachine wantsOverlayVisible];
      currentStage = [_stateMachine currentStage];
      if (wantsOverlayVisible != wantsOverlayVisible2)
      {
        v16 = os_log_create("com.apple.camera.overlay", "Angel");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          if (currentStage > 4)
          {
            v17 = 0;
          }

          else
          {
            v17 = off_100055730[currentStage];
          }

          v18 = @"hidden";
          if (wantsOverlayVisible2)
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

      if (wantsOverlayVisible2)
      {
        [_stateMachine addReason:0];
      }

      else
      {
        [_stateMachine removeReason:0];
        [overlayView performMenuPresentation:0];
      }

      _stateMachine2 = [(CAMSystemOverlayViewController *)self _stateMachine];
      isVisible = [_stateMachine2 isVisible];

      sliderContent = [overlayView sliderContent];
      if (delta != 0.0 || currentStage == 4 || sliderContent || !isVisible)
      {
        [(CAMSystemOverlayViewController *)self _cancelHandleBarTimerIfNeeded];
        overlayView2 = [(CAMSystemOverlayViewController *)self overlayView];
        [overlayView2 setHandleBarVisible:0 animated:1];

        if (!phase && currentStage == 4)
        {
          [(CAMSystemOverlayViewController *)self _selectCurrentMenuItemIfMenuVisible];
        }
      }

      else if (currentStage)
      {
        [(CAMSystemOverlayViewController *)self _startHandleBarTimerIfNeeded];
      }

      [overlayView updateUIForButtonStage:stage];
    }
  }
}

- (void)_recognizeContact:(id)contact action:(id)action stage:(unint64_t)stage phase:(unint64_t)phase
{
  contactCopy = contact;
  actionCopy = action;
  if (stage == 1 && !phase)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    _contactRecognizers = [(CAMSystemOverlayViewController *)self _contactRecognizers];
    v13 = [_contactRecognizers countByEnumeratingWithState:&v34 objects:v40 count:16];
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
            objc_enumerationMutation(_contactRecognizers);
          }

          [*(*(&v34 + 1) + 8 * i) contactBeganWithAction:actionCopy];
        }

        v14 = [_contactRecognizers countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v14);
    }
  }

  if (stage == 1 && phase == 2)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    _contactRecognizers2 = [(CAMSystemOverlayViewController *)self _contactRecognizers];
    v18 = [_contactRecognizers2 countByEnumeratingWithState:&v30 objects:v39 count:16];
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
            objc_enumerationMutation(_contactRecognizers2);
          }

          [*(*(&v30 + 1) + 8 * j) contactEndedWithAction:actionCopy];
        }

        v19 = [_contactRecognizers2 countByEnumeratingWithState:&v30 objects:v39 count:16];
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
    _contactRecognizers2 = [(CAMSystemOverlayViewController *)self _contactRecognizers];
    v22 = [_contactRecognizers2 countByEnumeratingWithState:&v26 objects:v38 count:16];
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
            objc_enumerationMutation(_contactRecognizers2);
          }

          [*(*(&v26 + 1) + 8 * k) contactUpdatedWithAction:actionCopy];
        }

        v23 = [_contactRecognizers2 countByEnumeratingWithState:&v26 objects:v38 count:16];
      }

      while (v23);
    }
  }
}

- (void)addContactRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  _contactRecognizers = [(CAMSystemOverlayViewController *)self _contactRecognizers];
  [_contactRecognizers addObject:recognizerCopy];
}

- (void)removeContactRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  _contactRecognizers = [(CAMSystemOverlayViewController *)self _contactRecognizers];
  [_contactRecognizers removeObject:recognizerCopy];
}

- (void)setHalfPressHaptics:(int64_t)haptics
{
  if (self->_halfPressHaptics != haptics)
  {
    self->_halfPressHaptics = haptics;
    [(CAMSystemOverlayViewController *)self _updateContactRecognizers];
  }
}

- (void)setHalfPressForOverlaySupported:(BOOL)supported
{
  if (self->_halfPressForOverlaySupported != supported)
  {
    supportedCopy = supported;
    self->_halfPressForOverlaySupported = supported;
    v5 = os_log_create("com.apple.camera.overlay", "Angel");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"disabled";
      if (supportedCopy)
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

- (void)setDoubleHalfPressForMenuSupported:(BOOL)supported
{
  if (self->_doubleHalfPressForMenuSupported != supported)
  {
    self->_doubleHalfPressForMenuSupported = supported;
    [(CAMSystemOverlayViewController *)self _updateContactRecognizers];
  }
}

- (void)setSwipeForOverlaySupported:(BOOL)supported
{
  if (self->_swipeForOverlaySupported != supported)
  {
    self->_swipeForOverlaySupported = supported;
    [(CAMSystemOverlayViewController *)self _updateContactRecognizers];
  }
}

- (void)_updateContactRecognizers
{
  _stateMachine = [(CAMSystemOverlayViewController *)self _stateMachine];
  _overlayEnabled = [(CAMSystemOverlayViewController *)self _overlayEnabled];
  isVisible = [_stateMachine isVisible];
  if (_overlayEnabled)
  {
    swipeForOverlaySupported = [(CAMSystemOverlayViewController *)self swipeForOverlaySupported];
    halfPressForOverlaySupported = [(CAMSystemOverlayViewController *)self halfPressForOverlaySupported];
  }

  else
  {
    swipeForOverlaySupported = 0;
    halfPressForOverlaySupported = 0;
  }

  v7 = isVisible ^ 1;
  doubleHalfPressForMenuSupported = halfPressForOverlaySupported;
  if (!halfPressForOverlaySupported)
  {
    doubleHalfPressForMenuSupported = halfPressForOverlaySupported;
    if ((v7 & 1) == 0)
    {
      doubleHalfPressForMenuSupported = [(CAMSystemOverlayViewController *)self doubleHalfPressForMenuSupported];
    }
  }

  v9 = [(CAMSystemOverlayViewController *)self halfPressHaptics]== 0 || doubleHalfPressForMenuSupported;
  _hapticContactRecognizer = [(CAMSystemOverlayViewController *)self _hapticContactRecognizer];
  [_hapticContactRecognizer setIsSwipeEnabled:swipeForOverlaySupported & v7];
  [_hapticContactRecognizer setIsHalfPressEnabled:v9];
  _halfPressRecognizer = [(CAMSystemOverlayViewController *)self _halfPressRecognizer];
  [_halfPressRecognizer setEnabled:doubleHalfPressForMenuSupported];

  _idleLockoutContactRecognizer = [(CAMSystemOverlayViewController *)self _idleLockoutContactRecognizer];
  [_idleLockoutContactRecognizer setIsEnabled:_overlayEnabled & isVisible];

  [_stateMachine setHalfPressEnabled:halfPressForOverlaySupported];
  [_stateMachine setIsSwipeEnabled:swipeForOverlaySupported];
}

- (void)_currentPositionApplicatorApplyAction:(id)action
{
  actionCopy = action;
  _currentPositionDeltaApplicator = [(CAMSystemOverlayViewController *)self _currentPositionDeltaApplicator];
  [_currentPositionDeltaApplicator contactBeganWithAction:actionCopy];
  [_currentPositionDeltaApplicator contactUpdatedWithAction:actionCopy];
}

- (void)_updateCurrentPositionDeltaApplicatorForDelta:(double)delta
{
  overlayView = [(CAMSystemOverlayViewController *)self overlayView];
  _stateMachine = [(CAMSystemOverlayViewController *)self _stateMachine];
  currentStage = [_stateMachine currentStage];

  if (![overlayView isSliderPresented] || currentStage != 1 && -[CAMSystemOverlayViewController _ignoreScrollUnderPressure](self, "_ignoreScrollUnderPressure"))
  {
    goto LABEL_7;
  }

  sliderContent = [overlayView sliderContent];
  if (!sliderContent)
  {
    slider = [overlayView slider];
    goto LABEL_9;
  }

  if (sliderContent != 1)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_10;
  }

  slider = [overlayView menu];
LABEL_9:
  v10 = slider;
  contactRecognizer = [slider contactRecognizer];

  v9 = contactRecognizer;
LABEL_10:
  v12 = v9;
  [(CAMSystemOverlayViewController *)self _setCurrentPositionDeltaApplicator:v9];
}

- (void)_setCurrentPositionDeltaApplicator:(id)applicator
{
  applicatorCopy = applicator;
  currentPositionDeltaApplicator = self->__currentPositionDeltaApplicator;
  if (currentPositionDeltaApplicator != applicatorCopy)
  {
    [(CEKContactRecognizer *)currentPositionDeltaApplicator contactEndedWithAction:0];
    objc_storeStrong(&self->__currentPositionDeltaApplicator, applicator);
  }

  _objc_release_x1();
}

- (void)_updateSliderDataIfNeeded
{
  overlayView = [(CAMSystemOverlayViewController *)self overlayView];
  isSliderVisible = [overlayView isSliderVisible];

  if (isSliderVisible)
  {

    [(CAMSystemOverlayViewController *)self _forceUpdateSliderData];
  }
}

- (void)_forceUpdateSliderData
{
  overlayView = [(CAMSystemOverlayViewController *)self overlayView];
  slider = [overlayView slider];
  controls = [(CAMSystemOverlayViewController *)self controls];
  v5 = [controls objectAtIndexedSubscript:{-[CAMSystemOverlayViewController _selectedControlIndex](self, "_selectedControlIndex")}];

  v6 = [(CAMSystemOverlayViewController *)self _displayValueRangeForControl:v5];
  _updatesByID = [(CAMSystemOverlayViewController *)self _updatesByID];
  identifier = [v5 identifier];
  v9 = [_updatesByID objectForKeyedSubscript:identifier];

  v10 = [(CAMSystemOverlayViewController *)self _styleForControl:v5];
  v11 = [(CAMSystemOverlayViewController *)self _protectedValuesForControl:v5];
  if (v11)
  {
    [slider configureWithRange:v6 protectedRange:v11 style:v10 enabled:{objc_msgSend(v5, "isEnabled")}];
  }

  else
  {
    v12 = [(CAMSystemOverlayViewController *)self _primaryValuesForControl:v5];
    [slider configureWithRange:v6 magneticRange:v12 style:v10 enabled:{objc_msgSend(v5, "isEnabled")}];
  }

  v13 = [(CAMSystemOverlayViewController *)self _displayNumberForControl:v5 update:v9];
  [slider setCurrentNumber:v13];

  [overlayView reloadValueLabel];
}

- (id)_valueRangeForControl:(id)control
{
  controlCopy = control;
  controlType = [controlCopy controlType];
  if (controlType == 2)
  {
    valueRange = objc_alloc_init(CAMOverlayBooleanRange);
    goto LABEL_7;
  }

  if (controlType == 1)
  {
    v6 = [CAMOverlayIndexedRange alloc];
    valueTitles = [controlCopy valueTitles];
    v8 = [v6 initWithCount:{objc_msgSend(valueTitles, "count")}];

    goto LABEL_9;
  }

  if (!controlType)
  {
    valueRange = [controlCopy valueRange];
LABEL_7:
    v8 = valueRange;
    goto LABEL_9;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (id)_displayValueRangeForControl:(id)control
{
  controlCopy = control;
  if ([controlCopy controlType])
  {
    v5 = [(CAMSystemOverlayViewController *)self _valueRangeForControl:controlCopy];
  }

  else
  {
    displayValueRange = [controlCopy displayValueRange];
    v7 = displayValueRange;
    if (displayValueRange)
    {
      valueRange = displayValueRange;
    }

    else
    {
      valueRange = [controlCopy valueRange];
    }

    v5 = valueRange;
  }

  return v5;
}

- (int64_t)_rangeScaleForControl:(id)control
{
  controlCopy = control;
  if ([controlCopy controlType])
  {
    rangeScale = 0;
  }

  else
  {
    rangeScale = [controlCopy rangeScale];
  }

  return rangeScale;
}

- (id)_primaryValuesForControl:(id)control
{
  controlCopy = control;
  if ([controlCopy controlType])
  {
    primaryValues = 0;
  }

  else
  {
    primaryValues = [controlCopy primaryValues];
  }

  return primaryValues;
}

- (id)_protectedValuesForControl:(id)control
{
  controlCopy = control;
  if ([controlCopy controlType] || objc_msgSend(controlCopy, "sliderType") != 7)
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

- (id)_numberForUpdate:(id)update
{
  updateCopy = update;
  valueType = [updateCopy valueType];
  if (valueType == 3)
  {
    v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [updateCopy BOOLeanValue]);
    goto LABEL_10;
  }

  if (valueType == 1)
  {
    v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [updateCopy indexValue]);
LABEL_10:
    v11 = v12;
    goto LABEL_12;
  }

  if (valueType)
  {
    v11 = &off_100057B98;
  }

  else
  {
    controlsByID = [(CAMSystemOverlayViewController *)self controlsByID];
    controlIdentifier = [updateCopy controlIdentifier];
    v8 = [controlsByID objectForKeyedSubscript:controlIdentifier];

    v9 = [(CAMSystemOverlayViewController *)self _valueRangeForControl:v8];
    if ([v9 isDiscrete] && !objc_msgSend(v9, "count"))
    {
      v11 = 0;
    }

    else
    {
      [updateCopy floatValue];
      [v9 valueClosestToValue:v10];
      v11 = [NSNumber numberWithDouble:?];
    }
  }

LABEL_12:

  return v11;
}

- (id)_displayNumberForControl:(id)control update:(id)update
{
  updateCopy = update;
  if (![control controlType])
  {
    controlsByID = [(CAMSystemOverlayViewController *)self controlsByID];
    controlIdentifier = [updateCopy controlIdentifier];
    v9 = [controlsByID objectForKeyedSubscript:controlIdentifier];

    values = [v9 values];
    displayValues = [v9 displayValues];
    if ([values count] && objc_msgSend(displayValues, "count"))
    {
      [updateCopy floatValue];
      [CAMZoomControlUtilities piecewiseLinearMappingForX:values fromXValues:displayValues toYValues:v12];
      v13 = [NSNumber numberWithDouble:?];

      goto LABEL_7;
    }
  }

  v13 = [(CAMSystemOverlayViewController *)self _numberForUpdate:updateCopy];
LABEL_7:

  return v13;
}

- (id)_updateForControl:(id)control displayValue:(id)value
{
  controlCopy = control;
  valueCopy = value;
  controlType = [controlCopy controlType];
  if (controlType == 2)
  {
    v15 = [controlCopy updateWithBooleanValue:{objc_msgSend(valueCopy, "BOOLValue")}];
    goto LABEL_10;
  }

  if (controlType == 1)
  {
    v15 = [controlCopy updateWithIndexValue:{objc_msgSend(valueCopy, "integerValue")}];
LABEL_10:
    v14 = v15;
    goto LABEL_12;
  }

  if (controlType)
  {
    v14 = 0;
  }

  else
  {
    [valueCopy doubleValue];
    v9 = v8;
    v10 = controlCopy;
    values = [v10 values];
    displayValues = [v10 displayValues];
    if ([values count] && objc_msgSend(displayValues, "count"))
    {
      [CAMZoomControlUtilities piecewiseLinearMappingForX:displayValues fromXValues:values toYValues:v9];
      v9 = v13;
    }

    *&v13 = v9;
    v14 = [v10 updateWithFloatValue:v13];
  }

LABEL_12:

  return v14;
}

- (unint64_t)_styleForControl:(id)control
{
  controlCopy = control;
  controlType = [controlCopy controlType];
  if ((controlType - 1) < 2)
  {
    goto LABEL_2;
  }

  if (controlType)
  {
    v5 = 0;
    goto LABEL_21;
  }

  v6 = controlCopy;
  sliderType = [v6 sliderType];
  if (sliderType > 4)
  {
    if ((sliderType - 5) < 2)
    {
      displayValueRange = [v6 displayValueRange];
      [displayValueRange maximum];
      v10 = v9;
      [displayValueRange minimum];
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

    if (sliderType == 7)
    {
      v5 = 6;
      goto LABEL_20;
    }
  }

  else
  {
    if ((sliderType - 2) < 3)
    {
      v5 = 3;
LABEL_20:

      goto LABEL_21;
    }

    if (!sliderType)
    {
      v5 = 0;
      goto LABEL_20;
    }

    if (sliderType == 1)
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
  _handleBarTimer = [(CAMSystemOverlayViewController *)self _handleBarTimer];
  if (_handleBarTimer)
  {
    v4 = _handleBarTimer;
    dispatch_source_cancel(_handleBarTimer);
    [(CAMSystemOverlayViewController *)self _setHandleBarTimer:0];
    _handleBarTimer = v4;
  }
}

- (void)_startHandleBarTimerIfNeeded
{
  _handleBarTimer = [(CAMSystemOverlayViewController *)self _handleBarTimer];
  if (_handleBarTimer)
  {
  }

  else
  {
    controls = [(CAMSystemOverlayViewController *)self controls];
    v5 = [controls count];

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

- (void)_handleBarTimerFired:(id)fired
{
  firedCopy = fired;
  _handleBarTimer = [(CAMSystemOverlayViewController *)self _handleBarTimer];
  _stateMachine = [(CAMSystemOverlayViewController *)self _stateMachine];
  currentStage = [_stateMachine currentStage];

  if (_handleBarTimer && _handleBarTimer == firedCopy && currentStage)
  {
    overlayView = [(CAMSystemOverlayViewController *)self overlayView];
    [overlayView setHandleBarVisible:1 animated:1];
  }

  [(CAMSystemOverlayViewController *)self _cancelHandleBarTimerIfNeeded];
}

- (void)systemOverlayVisibility:(id)visibility changedForReason:(int64_t)reason
{
  visibilityCopy = visibility;
  controls = [(CAMSystemOverlayViewController *)self controls];
  v8 = [controls count];

  if (v8)
  {
    [(CAMSystemOverlayViewController *)self _forceUpdateSliderData];
    [(CAMSystemOverlayViewController *)self _updateSliderStateAnimated:1];
    [(CAMSystemOverlayViewController *)self _updateContactRecognizers];
    if (([visibilityCopy isVisible] & 1) == 0)
    {
      _halfPressRecognizer = [(CAMSystemOverlayViewController *)self _halfPressRecognizer];
      [_halfPressRecognizer reset];

      [(CAMSystemOverlayViewController *)self _cancelHandleBarTimerIfNeeded];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      _contactRecognizers = [(CAMSystemOverlayViewController *)self _contactRecognizers];
      v19 = [_contactRecognizers countByEnumeratingWithState:&v25 objects:v29 count:16];
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
              objc_enumerationMutation(_contactRecognizers);
            }

            [*(*(&v25 + 1) + 8 * i) contactEndedWithAction:0];
          }

          v20 = [_contactRecognizers countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v20);
      }

      goto LABEL_24;
    }

    activeControl = [(CAMSystemOverlayViewController *)self activeControl];

    if (!activeControl)
    {
      _selectedControl = [(CAMSystemOverlayViewController *)self _selectedControl];
      [(CAMSystemOverlayViewController *)self _setActiveControl:_selectedControl];
      delegate = [(CAMSystemOverlayViewController *)self delegate];
      [delegate systemOverlayViewController:self didChangeActiveControl:_selectedControl];
    }

    v12 = +[CAMOverlayServer sharedInstance];
    _contactRecognizers = [v12 analyticsCollector];

    if (reason == 1)
    {
      activeControl2 = [(CAMSystemOverlayViewController *)self activeControl];
      v15 = _contactRecognizers;
      v16 = 1;
    }

    else
    {
      if (reason)
      {
        v23 = os_log_create("com.apple.camera.overlay", "Analytics");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_100036228(reason);
        }

        goto LABEL_23;
      }

      activeControl2 = [(CAMSystemOverlayViewController *)self activeControl];
      v15 = _contactRecognizers;
      v16 = 0;
    }

    [v15 countPresentationWithReason:v16 control:activeControl2];

LABEL_23:
    _tipManager = [(CAMSystemOverlayViewController *)self _tipManager];
    [_tipManager recordSliderVisibleEvent];

LABEL_24:
    _tipManager2 = [(CAMSystemOverlayViewController *)self _tipManager];
    -[NSObject setSliderVisibleParameter:](_tipManager2, "setSliderVisibleParameter:", [visibilityCopy isVisible]);
    goto LABEL_25;
  }

  _tipManager2 = os_log_create("com.apple.camera.overlay", "Angel");
  if (os_log_type_enabled(_tipManager2, OS_LOG_TYPE_ERROR))
  {
    sub_1000362B8(_tipManager2);
  }

LABEL_25:
}

- (void)systemOverlayVisibilityBeganHidingTimer:(id)timer
{
  delegate = [(CAMSystemOverlayViewController *)self delegate];
  [delegate systemOverlayViewControllerWillHideSlider:self];
}

- (void)systemOverlayVisibilityCancelledHidingTimer:(id)timer
{
  delegate = [(CAMSystemOverlayViewController *)self delegate];
  [delegate systemOverlayViewControllerCancelledHidingSlider:self];
}

- (void)halfPressContactRecognizerSingleHalfPressDidBegin:(id)begin
{
  overlayView = [(CAMSystemOverlayViewController *)self overlayView];
  if ([overlayView isSliderVisible] && objc_msgSend(overlayView, "sliderContent") == 1)
  {
    menu = [overlayView menu];
    [menu setHighlightCurrentSelectedIndex:1 animated:1];
  }

  [(CAMSystemOverlayViewController *)self set_numberHalfPress:[(CAMSystemOverlayViewController *)self _numberHalfPress]+ 1];
}

- (void)halfPressContactRecognizerSingleHalfPressDidCancel:(id)cancel
{
  overlayView = [(CAMSystemOverlayViewController *)self overlayView];
  if ([overlayView isSliderVisible])
  {
    v3 = [overlayView sliderContent] == 1;
  }

  else
  {
    v3 = 0;
  }

  menu = [overlayView menu];
  [menu setHighlightCurrentSelectedIndex:0 animated:v3];
}

- (void)halfPressContactRecognizerSingleHalfPressDidEnd:(id)end
{
  endCopy = end;
  if ([(CAMSystemOverlayViewController *)self _selectCurrentMenuItemIfMenuVisible])
  {
    [endCopy reset];
  }
}

- (BOOL)_selectCurrentMenuItemIfMenuVisible
{
  overlayView = [(CAMSystemOverlayViewController *)self overlayView];
  if ([overlayView isSliderVisible] && objc_msgSend(overlayView, "sliderContent") == 1)
  {
    menu = [overlayView menu];
    selectedControlIndex = [menu selectedControlIndex];

    controls = [(CAMSystemOverlayViewController *)self controls];
    if (selectedControlIndex >= [controls count])
    {
      v10 = os_log_create("com.apple.camera.overlay", "Angel");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000362FC(controls);
      }
    }

    else
    {
      v7 = [controls objectAtIndexedSubscript:selectedControlIndex];
      isEnabled = [v7 isEnabled];

      if (isEnabled)
      {
        [overlayView performMenuPresentation:2];
        v9 = 1;
LABEL_12:

        goto LABEL_13;
      }

      menu2 = [overlayView menu];
      [menu2 setHighlightCurrentSelectedIndex:0 animated:1];
    }

    v9 = 0;
    goto LABEL_12;
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (void)halfPressContactRecognizerDoubleHalfPressDidEnd:(id)end
{
  if ([(CAMSystemOverlayViewController *)self _doubleHalfPressOpensMenu])
  {
    overlayView = [(CAMSystemOverlayViewController *)self overlayView];
    isSliderVisible = [overlayView isSliderVisible];

    if (isSliderVisible)
    {
      overlayView2 = [(CAMSystemOverlayViewController *)self overlayView];
      if ([overlayView2 isSliderVisible])
      {
        v6 = [overlayView2 sliderContent] == 1;
      }

      else
      {
        v6 = 0;
      }

      menu = [overlayView2 menu];
      [menu setHighlightCurrentSelectedIndex:0 animated:v6];

      if ([(CAMSystemOverlayViewController *)self overlayViewShouldPresentMenu:overlayView2])
      {
        [overlayView2 performMenuPresentation:1];
      }
    }
  }
}

- (void)idleContactRecognized:(id)recognized
{
  v4 = +[CAMOverlayServer sharedInstance];
  analyticsCollector = [v4 analyticsCollector];
  [analyticsCollector countDismissWithReason:3];

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

- (void)_updateMetricsForButton:(unint64_t)button stage:(unint64_t)stage phase:(unint64_t)phase
{
  _stateMachine = [(CAMSystemOverlayViewController *)self _stateMachine];
  currentStage = [_stateMachine currentStage];

  _touchStartTime = [(CAMSystemOverlayViewController *)self _touchStartTime];
  [_touchStartTime timeIntervalSinceNow];
  v13 = v12;

  if (!currentStage)
  {
    if (v13 < 0.0)
    {
      [(CAMSystemOverlayViewController *)self _touchTimeInterval];
      v16 = v15;
      _touchStartTime2 = [(CAMSystemOverlayViewController *)self _touchStartTime];
      [_touchStartTime2 timeIntervalSinceNow];
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

  if (button == 5 && stage == 4 && !phase)
  {
    _tipManager = [(CAMSystemOverlayViewController *)self _tipManager];
    [_tipManager recordCaptureEvent];

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