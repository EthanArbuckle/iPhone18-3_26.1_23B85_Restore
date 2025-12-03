@interface AXSpeakOverlayViewController
- (AXSpeakOverlayViewController)init;
- (BOOL)isPaused;
- (BOOL)isSpeaking;
- (CGPoint)_denormalizedNubbitOriginForViewSize:(CGSize)size;
- (CGPoint)gestureMoveStartPosition;
- (CGPoint)nubbitMoveStartPosition;
- (CGRect)overlayFrame;
- (NSArray)sentenceHighlightSelectionRects;
- (SSUIDelegate)delegate;
- (UIColor)highlightColor;
- (UIColor)underlineColor;
- (double)idleOpacityForNubbit:(id)nubbit;
- (double)speakingRateAsMultiplier;
- (id)_sliceRects:(id)rects withSentenceRects:(id)sentenceRects wordRects:(id)wordRects;
- (id)highlightColorForColor:(id)color;
- (id)sentenceHighlightColorForColor:(id)color;
- (void)_enqueueCollapseTimer;
- (void)_initializeContainingView;
- (void)_registerNubbit;
- (void)_saveNubbitPosition;
- (void)_subscribeEventMonitor;
- (void)_unsubscribeEventMonitors;
- (void)_updateForTabModeUsingSpeakFingerButton:(BOOL)button animated:(BOOL)animated;
- (void)_updateNubbitForTabModeChange;
- (void)_updateTabButtonToExpandCollapseButton;
- (void)_updateTabButtonToSpeakFingerButton;
- (void)_updateUI;
- (void)barDidReceiveFocus;
- (void)collapseNubbit;
- (void)controlBarDragged:(CGPoint)dragged gestureRecognizer:(id)recognizer;
- (void)dealloc;
- (void)deviceEventMonitorDidReceiveEvent:(id)event;
- (void)deviceLockMonitor:(id)monitor didReceiveDeviceLockStateChanged:(BOOL)changed timestamp:(double)timestamp;
- (void)didStop;
- (void)expandNubbit;
- (void)fastForwardButtonPressed;
- (void)finishLoading;
- (void)handleKBFrameWillUpdate:(id)update;
- (void)handleReachabilityToggled:(double)toggled;
- (void)headerTapped;
- (void)hideWithCompletion:(id)completion;
- (void)loadView;
- (void)moveBackInBounds;
- (void)nubbitDidUpdatePosition:(id)position;
- (void)panToPosition:(CGPoint)position;
- (void)pauseButtonPressed;
- (void)playButtonPressed;
- (void)resetUI;
- (void)rewindButtonPressed;
- (void)sbs_unlockDeviceIfNeededAndPerform:(id)perform;
- (void)screenTimeOutCheck;
- (void)setHighlightColor:(id)color;
- (void)setHighlightSelectionRects:(id)rects;
- (void)setSentenceHighlightSelectionRects:(id)rects;
- (void)setUnderlineColor:(id)color;
- (void)showErrorMessage:(id)message;
- (void)showUI;
- (void)showUIForApplication:(id)application;
- (void)speakUnderFingerButtonPressed;
- (void)speedButtonPressed;
- (void)startNewReadAllFromGesture;
- (void)startWithCompletion:(id)completion;
- (void)stop;
- (void)stopButtonPressed;
- (void)stopSpeakFingerButtonPressed;
- (void)tabModeButtonPressed;
- (void)updateBarWithAppTitleForApp:(id)app;
- (void)updateSpeakUnderFingerState:(unint64_t)state;
- (void)updateUIForDisplayChange;
- (void)updateUIForSpeakUnderFingerSettingsChange;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation AXSpeakOverlayViewController

- (AXSpeakOverlayViewController)init
{
  v8.receiver = self;
  v8.super_class = AXSpeakOverlayViewController;
  v2 = [(AXSpeakOverlayViewController *)&v8 init];
  if (v2)
  {
    v3 = +[SpeakThisUIStateManager sharedInstance];
    stateManager = v2->_stateManager;
    v2->_stateManager = v3;

    [(SpeakThisUIStateManager *)v2->_stateManager addObserver:v2];
  }

  v5 = dispatch_queue_create("Serial EventMonitor queue", 0);
  queue = v2->_queue;
  v2->_queue = v5;

  v2->_isSessionProtected = 0;
  v2->_isScreenLocked = 0;
  v2->_isScreenTimedOut = 0;
  return v2;
}

- (void)dealloc
{
  [(SpeakThisUIStateManager *)self->_stateManager removeObserver:self];
  [(AXSpeakOverlayControlBar *)self->_bar setDelegate:0];
  [(AXSpeakOverlayViewController *)self _unregisterNubbit];
  v3.receiver = self;
  v3.super_class = AXSpeakOverlayViewController;
  [(AXSpeakOverlayViewController *)&v3 dealloc];
}

- (void)_subscribeEventMonitor
{
  v3 = +[AXDeviceScreenLockMonitor sharedInstance];
  monitor = self->monitor;
  self->monitor = v3;

  v5 = self->monitor;

  [(AXDeviceEventMonitor *)v5 addObserver:self];
}

- (void)_unsubscribeEventMonitors
{
  [(AXDeviceEventMonitor *)self->monitor removeObserver:self];
  monitor = self->monitor;
  self->monitor = 0;
}

- (void)startWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_12AA8;
  block[3] = &unk_30ED0;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)stop
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_12BC8;
  v4[3] = &unk_30A30;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)loadView
{
  v3 = [UIView alloc];
  v4 = +[UIScreen mainScreen];
  [v4 bounds];
  v6 = [v3 initWithFrame:?];

  [(AXSpeakOverlayViewController *)self setView:v6];
  view = [(AXSpeakOverlayViewController *)self view];
  [view setAccessibilityIgnoresInvertColors:1];
}

- (void)_initializeContainingView
{
  if (AXDeviceSupportsAccessibilityReader())
  {
    speakScreenHudUIManager = [(AXSpeakOverlayViewController *)self speakScreenHudUIManager];
    [speakScreenHudUIManager showUI];
  }

  else
  {
    +[AXSpeakOverlayControlBar controlBarSize];
    v5 = v4;
    v7 = v6;
    view = [(AXSpeakOverlayViewController *)self view];
    [view frame];
    v10 = v9 * 0.5 - v5 * 0.5;
    view2 = [(AXSpeakOverlayViewController *)self view];
    [view2 frame];
    v13 = v12 * 0.5 - v7 * 0.5;

    v14 = [[UIVisualEffectView alloc] initWithFrame:{v10, v13, v5, v7}];
    containingView = self->_containingView;
    self->_containingView = v14;

    v16 = [UIBlurEffect effectWithStyle:19];
    [(UIVisualEffectView *)self->_containingView setEffect:v16];

    [(UIVisualEffectView *)self->_containingView setUserInteractionEnabled:1];
    layer = [(UIVisualEffectView *)self->_containingView layer];
    [layer setMasksToBounds:1];

    layer2 = [(UIVisualEffectView *)self->_containingView layer];
    [layer2 setCornerRadius:15.0];

    view3 = [(AXSpeakOverlayViewController *)self view];
    [view3 addSubview:self->_containingView];

    v20 = [AXSpeakOverlayControlBar alloc];
    [(UIVisualEffectView *)self->_containingView bounds];
    v21 = [(AXSpeakOverlayControlBar *)v20 initWithFrame:?];
    bar = self->_bar;
    self->_bar = v21;

    [(AXSpeakOverlayControlBar *)self->_bar setAutoresizingMask:18];
    [(AXSpeakOverlayControlBar *)self->_bar setDelegate:self];
    [(AXSpeakOverlayControlBar *)self->_bar currentSpeakingRateChanged];
    contentView = [(UIVisualEffectView *)self->_containingView contentView];
    [contentView addSubview:self->_bar];

    [(UIVisualEffectView *)self->_containingView setAlpha:0.0];
    [(AXSpeakOverlayViewController *)self setReachabilityOffset:0.0];
  }

  objc_initWeak(&location, self);
  v24 = +[AXSettings sharedInstance];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_12FA0;
  v26[3] = &unk_30EF8;
  v26[4] = self;
  objc_copyWeak(&v27, &location);
  v25 = objc_loadWeakRetained(&location);
  [v24 registerUpdateBlock:v26 forRetrieveSelector:"speechControllerIdleOpacity" withListener:v25];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

- (void)updateUIForDisplayChange
{
  [(AXSpeakOverlayViewController *)self showUI];
  stateManager = [(AXSpeakOverlayViewController *)self stateManager];
  currentState = [stateManager currentState];

  if (currentState)
  {
    stateManager2 = [(AXSpeakOverlayViewController *)self stateManager];
    currentState2 = [stateManager2 currentState];

    if (currentState2 != &dword_0 + 1)
    {
      return;
    }

    v7 = AXSpeakThisLocString(@"NO_SPEAKABLE_CONTENT_EXISTS");
    [(AXSpeakOverlayViewController *)self showErrorMessage:?];
  }

  else
  {
    v7 = +[AXSpeakFingerManager sharedInstance];
    -[AXSpeakOverlayViewController updateSpeakUnderFingerState:](self, "updateSpeakUnderFingerState:", [v7 speakFingerState]);
  }
}

- (void)showUI
{
  stateManager = [(AXSpeakOverlayViewController *)self stateManager];
  collapseTimer = [stateManager collapseTimer];
  [collapseTimer cancel];

  if (!self->_containingView)
  {
    [(AXSpeakOverlayViewController *)self _initializeContainingView];
  }

  stateManager2 = [(AXSpeakOverlayViewController *)self stateManager];
  if (![stateManager2 currentState])
  {

    goto LABEL_8;
  }

  stateManager3 = [(AXSpeakOverlayViewController *)self stateManager];
  currentState = [stateManager3 currentState];

  if (currentState == &dword_0 + 1)
  {
LABEL_8:
    [(AXSpeakOverlayControlBar *)self->_bar showSpeakFingerUI];
    goto LABEL_9;
  }

  stateManager4 = [(AXSpeakOverlayViewController *)self stateManager];
  currentState2 = [stateManager4 currentState];

  if (currentState2 == &dword_0 + 2)
  {
    [(AXSpeakOverlayViewController *)self finishLoading];
  }

LABEL_9:
  stateManager5 = [(AXSpeakOverlayViewController *)self stateManager];
  [stateManager5 setCurrentAppBundleIdentifier:0];

  [(AXSpeakOverlayViewController *)self _updateUI];
}

- (void)resetUI
{
  [(AXSpeakOverlayControlBar *)self->_bar showSpeakFingerUI];
  stateManager = [(AXSpeakOverlayViewController *)self stateManager];
  [stateManager setCurrentAppBundleIdentifier:0];

  self->_isSessionProtected = 0;
}

- (void)_updateUI
{
  [(UIVisualEffectView *)self->_containingView alpha];
  if (v3 == 0.0)
  {
    [(AXSpeakOverlayViewController *)self _updateForTabModeUsingSpeakFingerButton:0 animated:0];
    containingView = self->_containingView;

    [(UIVisualEffectView *)containingView setAlpha:1.0];
  }

  else
  {

    [(AXSpeakOverlayViewController *)self _updateForTabModeUsingSpeakFingerButton:0 animated:1];
  }
}

- (void)expandNubbit
{
  stateManager = [(AXSpeakOverlayViewController *)self stateManager];
  [stateManager setInTabMode:0];

  [(AXSpeakOverlayViewController *)self _updateUI];
}

- (void)collapseNubbit
{
  stateManager = [(AXSpeakOverlayViewController *)self stateManager];
  [stateManager setInTabMode:1];

  [(AXSpeakOverlayViewController *)self _updateUI];
}

- (void)updateUIForSpeakUnderFingerSettingsChange
{
  v3 = +[AXSettings sharedInstance];
  showSpeechController = [v3 showSpeechController];

  bar = self->_bar;
  if (showSpeechController)
  {
    [(AXSpeakOverlayControlBar *)bar hideStopButton];
  }

  else
  {
    [(AXSpeakOverlayControlBar *)bar showStopButton];
  }

  stateManager = [(AXSpeakOverlayViewController *)self stateManager];
  inTabMode = [stateManager inTabMode];

  if ((inTabMode & 1) == 0)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_13570;
    v8[3] = &unk_30AF0;
    v8[4] = self;
    [UIView animateWithDuration:v8 animations:0.25];
  }
}

- (void)updateBarWithAppTitleForApp:(id)app
{
  appCopy = app;
  stateManager = [(AXSpeakOverlayViewController *)self stateManager];
  bundleId = [appCopy bundleId];
  [stateManager setCurrentAppBundleIdentifier:bundleId];

  label = [appCopy label];
  LODWORD(stateManager) = [appCopy isSpringBoard];

  if (stateManager)
  {
    v7 = AXSpeakThisLocString(@"HOME_SCREEN");

    label = v7;
  }

  stateManager2 = [(AXSpeakOverlayViewController *)self stateManager];
  [stateManager2 setCurrentControllerTitle:label];
}

- (void)showUIForApplication:(id)application
{
  applicationCopy = application;
  if (self->_containingView)
  {
    stateManager = [(AXSpeakOverlayViewController *)self stateManager];
    inTabMode = [stateManager inTabMode];

    if (inTabMode)
    {
      [(AXSpeakOverlayViewController *)self tabModeButtonPressed];
    }
  }

  else
  {
    [(AXSpeakOverlayViewController *)self _initializeContainingView];
  }

  [(AXSpeakOverlayViewController *)self updateBarWithAppTitleForApp:applicationCopy];
  [(AXSpeakOverlayControlBar *)self->_bar showLoading];
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"showUI" object:0];
  [(UIVisualEffectView *)self->_containingView alpha];
  if (v7 == 0.0)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1386C;
    v8[3] = &unk_30AF0;
    v8[4] = self;
    [UIView animateWithDuration:v8 animations:0.25];
  }
}

- (void)panToPosition:(CGPoint)position
{
  containingView = self->_containingView;
  if (containingView)
  {
    [(UIVisualEffectView *)containingView frame];
    v5 = self->_containingView;

    [(UIVisualEffectView *)v5 setFrame:?];
  }
}

- (void)moveBackInBounds
{
  containingView = self->_containingView;
  if (containingView)
  {
    [(UIVisualEffectView *)containingView frame];
    v7 = v6;
    v8 = v4;
    v10 = v9;
    v11 = v5;
    v12 = 0.0;
    if (v4 >= 0.0)
    {
      v13 = v4 + v5;
      view = [(AXSpeakOverlayViewController *)self view];
      [view bounds];
      v16 = v15;

      v17 = v13 <= v16;
      v12 = v8;
      if (!v17)
      {
        view2 = [(AXSpeakOverlayViewController *)self view];
        [view2 bounds];
        v12 = v19 - v11;
      }
    }

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_13A0C;
    v20[3] = &unk_30F20;
    v20[4] = self;
    v20[5] = v7;
    *&v20[6] = v8;
    v20[7] = v10;
    *&v20[8] = v11;
    *&v20[9] = v12;
    [UIView animateWithDuration:v20 animations:0.25];
  }
}

- (void)finishLoading
{
  [(AXSpeakOverlayControlBar *)self->_bar showMainUI];
  [(AXSpeakOverlayViewController *)self _enqueueCollapseTimer];
  if ([(AXSpeakOverlayViewController *)self isSpeaking])
  {
    [(AXSpeakOverlayViewController *)self didResume];
  }

  else
  {
    [(AXSpeakOverlayViewController *)self didPause];
  }

  stateManager = [(AXSpeakOverlayViewController *)self stateManager];
  [stateManager setCurrentState:2];

  v4 = UIAccessibilityLayoutChangedNotification;

  UIAccessibilityPostNotification(v4, 0);
}

- (id)highlightColorForColor:(id)color
{
  colorCopy = color;
  v4 = +[AXSettings sharedInstance];
  quickSpeakSentenceHighlightColor = [v4 quickSpeakSentenceHighlightColor];

  v6 = 0.2;
  if (quickSpeakSentenceHighlightColor)
  {
    v6 = 0.5;
  }

  v7 = [colorCopy colorWithAlphaComponent:v6];

  return v7;
}

- (id)sentenceHighlightColorForColor:(id)color
{
  colorCopy = color;
  v4 = +[AXSettings sharedInstance];
  quickSpeakSentenceHighlightColor = [v4 quickSpeakSentenceHighlightColor];

  if (quickSpeakSentenceHighlightColor)
  {
    v6 = +[AXSettings sharedInstance];
    [v6 quickSpeakSentenceHighlightColor];
    v7 = [UIColor colorWithCGColor:AXSpeakHighlightColor()];
    v8 = [v7 colorWithAlphaComponent:0.5];
  }

  else
  {
    v16 = 0.0;
    v17 = 0.0;
    v14 = 0;
    v15 = 0.0;
    if ([colorCopy getRed:&v17 green:&v16 blue:&v15 alpha:&v14])
    {
      v9 = v17 * 0.8;
      if (v17 * 0.8 < 0.0)
      {
        v9 = 0.0;
      }

      v10 = v16 * 0.8;
      if (v16 * 0.8 < 0.0)
      {
        v10 = 0.0;
      }

      v11 = v15 * 0.8;
      if (v15 * 0.8 < 0.0)
      {
        v11 = 0.0;
      }

      v12 = [UIColor colorWithRed:v9 green:v10 blue:v11 alpha:0.2];
    }

    else
    {
      v12 = colorCopy;
    }

    v8 = v12;
  }

  return v8;
}

- (UIColor)highlightColor
{
  highlightColor = self->_highlightColor;
  if (highlightColor)
  {
    v3 = highlightColor;
  }

  else
  {
    v3 = [UIColor colorWithRed:0.0 green:0.33 blue:0.65 alpha:0.2];
  }

  return v3;
}

- (void)setHighlightColor:(id)color
{
  v9 = [(AXSpeakOverlayViewController *)self highlightColorForColor:color];
  objc_storeStrong(&self->_highlightColor, v9);
  highlightView = [(AXSpeakOverlayViewController *)self highlightView];

  if (highlightView)
  {
    highlightView2 = [(AXSpeakOverlayViewController *)self highlightView];
    [highlightView2 setSelectionColor:v9];
  }

  sentenceHighlightView = [(AXSpeakOverlayViewController *)self sentenceHighlightView];

  if (sentenceHighlightView)
  {
    v7 = [(AXSpeakOverlayViewController *)self sentenceHighlightColorForColor:v9];
    sentenceHighlightView2 = [(AXSpeakOverlayViewController *)self sentenceHighlightView];
    [sentenceHighlightView2 setSelectionColor:v7];
  }
}

- (UIColor)underlineColor
{
  underlineColor = self->_underlineColor;
  if (underlineColor)
  {
    v3 = underlineColor;
  }

  else
  {
    v3 = +[UIColor labelColor];
  }

  return v3;
}

- (void)setUnderlineColor:(id)color
{
  colorCopy = color;
  objc_storeStrong(&self->_underlineColor, color);
  sentenceHighlightView = [(AXSpeakOverlayViewController *)self sentenceHighlightView];

  if (sentenceHighlightView)
  {
    sentenceHighlightView2 = [(AXSpeakOverlayViewController *)self sentenceHighlightView];
    [sentenceHighlightView2 setUnderlineColor:colorCopy];
  }
}

- (void)setHighlightSelectionRects:(id)rects
{
  rectsCopy = rects;
  if ([rectsCopy count])
  {
    highlightView = [(AXSpeakOverlayViewController *)self highlightView];

    if (!highlightView)
    {
      v6 = [QSSelectionHighlightView alloc];
      v7 = +[UIScreen mainScreen];
      [v7 bounds];
      v8 = [v6 initWithFrame:?];

      highlightColor = [(AXSpeakOverlayViewController *)self highlightColor];
      [v8 setSelectionColor:highlightColor];

      view = [(AXSpeakOverlayViewController *)self view];
      [view insertSubview:v8 atIndex:0];

      [(AXSpeakOverlayViewController *)self setHighlightView:v8];
    }
  }

  sentenceHighlightSelectionRects = [(AXSpeakOverlayViewController *)self sentenceHighlightSelectionRects];
  if (sentenceHighlightSelectionRects && (v12 = sentenceHighlightSelectionRects, +[AXSettings sharedInstance](AXSettings, "sharedInstance"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 quickSpeakSentenceHighlightOption], v13, v12, v14 == &dword_0 + 2))
  {
    highlightView3 = +[NSMutableArray array];
    currentUnmodifiedSentenceRects = [(AXSpeakOverlayViewController *)self currentUnmodifiedSentenceRects];
    v17 = [(AXSpeakOverlayViewController *)self _sliceRects:highlightView3 withSentenceRects:currentUnmodifiedSentenceRects wordRects:rectsCopy];

    v18 = [(NSArray *)v17 count];
    if (v18 < [rectsCopy count])
    {
      v19 = rectsCopy;

      v17 = v19;
    }

    sentenceHighlightView = [(AXSpeakOverlayViewController *)self sentenceHighlightView];
    [sentenceHighlightView setHighlightSelectionRects:highlightView3];

    highlightView2 = [(AXSpeakOverlayViewController *)self highlightView];
    [highlightView2 setHighlightSelectionRects:v17];

    highlightSelectionRects = self->_highlightSelectionRects;
    self->_highlightSelectionRects = v17;
  }

  else
  {
    objc_storeStrong(&self->_highlightSelectionRects, rects);
    highlightView3 = [(AXSpeakOverlayViewController *)self highlightView];
    [highlightView3 setHighlightSelectionRects:rectsCopy];
  }

  sentenceHighlightView2 = [(AXSpeakOverlayViewController *)self sentenceHighlightView];
  [sentenceHighlightView2 updateVisualRects];
}

- (NSArray)sentenceHighlightSelectionRects
{
  sentenceHighlightView = [(AXSpeakOverlayViewController *)self sentenceHighlightView];
  highlightSelectionRects = [sentenceHighlightView highlightSelectionRects];

  return highlightSelectionRects;
}

- (void)setSentenceHighlightSelectionRects:(id)rects
{
  rectsCopy = rects;
  if ([rectsCopy count])
  {
    sentenceHighlightView = [(AXSpeakOverlayViewController *)self sentenceHighlightView];

    if (!sentenceHighlightView)
    {
      v5 = [QSSelectionHighlightView alloc];
      v6 = +[UIScreen mainScreen];
      [v6 bounds];
      v7 = [v5 initWithFrame:?];

      [v7 setSentenceHighlight:1];
      highlightColor = [(AXSpeakOverlayViewController *)self highlightColor];
      v9 = [(AXSpeakOverlayViewController *)self sentenceHighlightColorForColor:highlightColor];
      [v7 setSelectionColor:v9];

      underlineColor = [(AXSpeakOverlayViewController *)self underlineColor];
      [v7 setUnderlineColor:underlineColor];

      highlightView = [(AXSpeakOverlayViewController *)self highlightView];

      view = [(AXSpeakOverlayViewController *)self view];
      v13 = view;
      if (highlightView)
      {
        highlightView2 = [(AXSpeakOverlayViewController *)self highlightView];
        [v13 insertSubview:v7 belowSubview:highlightView2];
      }

      else
      {
        [view insertSubview:v7 atIndex:0];
      }

      [(AXSpeakOverlayViewController *)self setSentenceHighlightView:v7];
    }
  }

  highlightSelectionRects = [(AXSpeakOverlayViewController *)self highlightSelectionRects];
  if (highlightSelectionRects && (v16 = highlightSelectionRects, +[AXSettings sharedInstance](AXSettings, "sharedInstance"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 quickSpeakSentenceHighlightOption], v17, v16, v18 == &dword_0 + 2))
  {
    sentenceHighlightView3 = +[NSMutableArray array];
    highlightSelectionRects2 = [(AXSpeakOverlayViewController *)self highlightSelectionRects];
    v21 = [(AXSpeakOverlayViewController *)self _sliceRects:sentenceHighlightView3 withSentenceRects:rectsCopy wordRects:highlightSelectionRects2];

    highlightView3 = [(AXSpeakOverlayViewController *)self highlightView];
    [highlightView3 setHighlightSelectionRects:v21];

    sentenceHighlightView2 = [(AXSpeakOverlayViewController *)self sentenceHighlightView];
    [sentenceHighlightView2 setHighlightSelectionRects:sentenceHighlightView3];
  }

  else
  {
    sentenceHighlightView3 = [(AXSpeakOverlayViewController *)self sentenceHighlightView];
    [sentenceHighlightView3 setHighlightSelectionRects:rectsCopy];
  }

  [(AXSpeakOverlayViewController *)self setCurrentUnmodifiedSentenceRects:rectsCopy];
}

- (id)_sliceRects:(id)rects withSentenceRects:(id)sentenceRects wordRects:(id)wordRects
{
  rectsCopy = rects;
  sentenceRectsCopy = sentenceRects;
  wordRectsCopy = wordRects;
  v9 = wordRectsCopy;
  if (sentenceRectsCopy)
  {
    +[NSMutableArray array];
    v63 = v62 = sentenceRectsCopy;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    obj = sentenceRectsCopy;
    v73 = [obj countByEnumeratingWithState:&v78 objects:v83 count:16];
    if (!v73)
    {
      goto LABEL_48;
    }

    v71 = *v79;
    while (1)
    {
      for (i = 0; i != v73; i = i + 1)
      {
        if (*v79 != v71)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v78 + 1) + 8 * i);
        [v11 rectValue];
        v13 = v12;
        v14 = +[NSMutableArray array];
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v15 = v9;
        v16 = [v15 countByEnumeratingWithState:&v74 objects:v82 count:16];
        if (!v16)
        {

LABEL_45:
          [rectsCopy addObject:v11];
          goto LABEL_46;
        }

        v17 = v16;
        v18 = v9;
        v19 = 0;
        v20 = v13;
        v70 = v20;
        v21 = *v75;
        v22 = 1.17549435e-38;
        v23 = 3.40282347e38;
        v24 = 3.40282347e38;
        v25 = 1.17549435e-38;
        do
        {
          for (j = 0; j != v17; j = j + 1)
          {
            if (*v75 != v21)
            {
              objc_enumerationMutation(v15);
            }

            v27 = *(*(&v74 + 1) + 8 * j);
            [v11 rectValue];
            v29 = v28;
            v31 = v30;
            v33 = v32;
            v35 = v34;
            [v27 rectValue];
            AX_CGRectGetCenter();
            v85.x = v36;
            v85.y = v37;
            v86.origin.x = v29;
            v86.origin.y = v31;
            v86.size.width = v33;
            v86.size.height = v35;
            if (CGRectContainsPoint(v86, v85))
            {
              if ((v19 & 1) == 0)
              {
                [v14 addObject:v27];
              }

              [v27 rectValue];
              if (v23 >= v38)
              {
                v23 = v38;
              }

              [v27 rectValue];
              Width = CGRectGetWidth(v87);
              if (v25 < Width)
              {
                v25 = Width;
              }

              [v27 rectValue];
              MinY = CGRectGetMinY(v88);
              if (v24 >= MinY)
              {
                v24 = MinY;
              }

              [v27 rectValue];
              MaxY = CGRectGetMaxY(v89);
              if (v22 < MaxY)
              {
                v22 = MaxY;
              }

              v19 = 1;
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v74 objects:v82 count:16];
        }

        while (v17);

        v9 = v18;
        if ((v19 & 1) == 0)
        {
          goto LABEL_45;
        }

        [v11 rectValue];
        Height = CGRectGetHeight(v90);
        v43 = Height;
        if (v22 - v24 >= Height)
        {
          v44 = Height;
        }

        else
        {
          v44 = v22 - v24;
        }

        if (v44 < 0.0)
        {
          v44 = v43;
        }

        v65 = v44;
        [v11 rectValue];
        v46 = v45;
        v47 = v46;
        if (v23 >= v46)
        {
          v48 = v23;
        }

        else
        {
          v48 = v46;
        }

        v49 = v70;
        if (v24 <= v70)
        {
          v50 = v70;
        }

        else
        {
          v50 = v24;
        }

        v66 = vabdd_f64(v47, v48);
        [v11 rectValue];
        v51 = CGRectGetWidth(v91);
        v92.origin.x = v47;
        v92.origin.y = v70;
        v92.size.width = v66;
        v92.size.height = v43;
        v67 = vabdd_f64(v51 - CGRectGetWidth(v92), v25);
        v93.origin.x = v48;
        v93.origin.y = v50;
        v93.size.width = v25;
        v93.size.height = v65;
        v52 = CGRectGetMinY(v93) - v49;
        if (v52 < 0.0)
        {
          v52 = 0.0;
        }

        v68 = v52;
        v94.origin.x = v48;
        v94.origin.y = v50;
        v94.size.width = v25;
        v94.size.height = v65;
        v69 = CGRectGetMaxY(v94);
        [v11 rectValue];
        v53 = CGRectGetMaxY(v95);
        v96.origin.x = v48;
        v96.origin.y = v50;
        v96.size.width = v25;
        v96.size.height = v65;
        v54 = v53 - CGRectGetMaxY(v96);
        if (v54 >= 0.0)
        {
          v55 = v54;
        }

        else
        {
          v55 = 0.0;
        }

        v56 = [NSValue valueWithCGRect:v47, v49, v66, v43];
        [rectsCopy addObject:v56];

        v57 = [NSValue valueWithCGRect:v25 + v48, v49, v67, v43];
        [rectsCopy addObject:v57];

        v58 = [NSValue valueWithCGRect:v48, v49, v25, v68];
        [rectsCopy addObject:v58];

        v59 = [NSValue valueWithCGRect:v48, v69, v25, v55];
        [rectsCopy addObject:v59];

        v60 = [NSValue valueWithRect:v48, v50, v25, v65];
        [v63 addObject:v60];

LABEL_46:
      }

      v73 = [obj countByEnumeratingWithState:&v78 objects:v83 count:16];
      if (!v73)
      {
LABEL_48:

        sentenceRectsCopy = v62;
        goto LABEL_50;
      }
    }
  }

  v63 = wordRectsCopy;
LABEL_50:

  return v63;
}

- (void)_enqueueCollapseTimer
{
  stateManager = [(AXSpeakOverlayViewController *)self stateManager];
  collapseTimer = [stateManager collapseTimer];
  [collapseTimer cancel];

  if (!UIAccessibilityIsVoiceOverRunning() && !UIAccessibilityIsSwitchControlRunning())
  {
    objc_initWeak(&location, self);
    stateManager2 = [(AXSpeakOverlayViewController *)self stateManager];
    collapseTimer2 = [stateManager2 collapseTimer];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_14A08;
    v7[3] = &unk_30A30;
    objc_copyWeak(&v8, &location);
    [collapseTimer2 afterDelay:v7 processBlock:8.0];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (CGPoint)_denormalizedNubbitOriginForViewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = +[AXSettings sharedInstance];
  [v5 quickSpeakNubbitNormalizedPosition];
  v7 = v6;
  v9 = v8;

  +[AXSpeakOverlayControlBar nubbitSize];
  v12 = v10 * -0.5 + v7 * width;
  v13 = v11 * -0.5 + v9 * height;
  if (v12 < 0.0)
  {
    v12 = 0.0;
  }

  v14 = width - v10;
  if (v12 <= v14)
  {
    v14 = v12;
  }

  if (v13 < 0.0)
  {
    v13 = 0.0;
  }

  v15 = height - v11;
  if (v13 <= v15)
  {
    v15 = v13;
  }

  result.y = v15;
  result.x = v14;
  return result;
}

- (void)_saveNubbitPosition
{
  view = [(AXSpeakOverlayViewController *)self view];
  [(UIVisualEffectView *)self->_containingView frame];
  v4 = v3;
  [(UIVisualEffectView *)self->_containingView frame];
  MaxY = CGRectGetMaxY(v15);
  +[AXSpeakOverlayControlBar nubbitSize];
  v7 = v4 + v6 * 0.5;
  +[AXSpeakOverlayControlBar nubbitSize];
  v9 = MaxY - v8 * 0.5;
  [view frame];
  v10 = v7 / CGRectGetWidth(v16);
  [view frame];
  v11 = v9 / CGRectGetHeight(v17);
  v12 = +[AXSettings sharedInstance];
  [v12 setQuickSpeakNubbitNormalizedPosition:{v10, v11}];
}

- (void)_registerNubbit
{
  [(UIVisualEffectView *)self->_containingView alpha];
  v4 = v3;
  [(UIVisualEffectView *)self->_containingView setAlpha:1.0];
  v5 = +[AXUIDisplayManager sharedDisplayManager];
  [v5 registerNubbit:self->_containingView delegate:self];

  containingView = self->_containingView;

  [(UIVisualEffectView *)containingView setAlpha:v4];
}

- (void)_updateForTabModeUsingSpeakFingerButton:(BOOL)button animated:(BOOL)animated
{
  v5 = 0.0;
  v9 = 3221225472;
  v8 = _NSConcreteStackBlock;
  v10 = sub_14DB8;
  v11 = &unk_30F48;
  if (animated)
  {
    v5 = 0.25;
  }

  selfCopy = self;
  buttonCopy = button;
  [UIView animateWithDuration:&v8 animations:v5];
  v6 = [(AXSpeakOverlayViewController *)self stateManager:v8];
  inTabMode = [v6 inTabMode];

  if ((inTabMode & 1) == 0)
  {
    [(AXSpeakOverlayViewController *)self _enqueueCollapseTimer];
  }

  [(AXSpeakOverlayControlBar *)self->_bar updateNubbitGestureRecognizers];
  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
}

- (void)_updateNubbitForTabModeChange
{
  stateManager = [(AXSpeakOverlayViewController *)self stateManager];
  inTabMode = [stateManager inTabMode];

  if (inTabMode)
  {
    [(AXSpeakOverlayViewController *)self _registerNubbit];
    if (self->_nubbitMovedOutsideOfTabMode)
    {
      v5 = +[AXUIDisplayManager sharedDisplayManager];
      [v5 pinNubbitToEdge:self->_containingView];
    }
  }

  else
  {
    [(AXSpeakOverlayViewController *)self _unregisterNubbit];
    self->_nubbitMovedOutsideOfTabMode = 0;
  }
}

- (void)hideWithCompletion:(id)completion
{
  completionCopy = completion;
  stateManager = [(AXSpeakOverlayViewController *)self stateManager];
  collapseTimer = [stateManager collapseTimer];
  [collapseTimer cancel];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_15168;
  v10[3] = &unk_30AF0;
  v10[4] = self;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_15180;
  v8[3] = &unk_30F70;
  v9 = completionCopy;
  v7 = completionCopy;
  [UIView animateWithDuration:v10 animations:v8 completion:0.25];
  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
}

- (void)showErrorMessage:(id)message
{
  messageCopy = message;
  [(AXSpeakOverlayViewController *)self moveBackInBounds];
  stateManager = [(AXSpeakOverlayViewController *)self stateManager];
  [stateManager setCurrentState:1];

  [(AXSpeakOverlayControlBar *)self->_bar showErrorMessage:messageCopy];
}

- (void)didStop
{
  highlightView = [(AXSpeakOverlayViewController *)self highlightView];
  [highlightView setHighlightSelectionRects:0];

  sentenceHighlightView = [(AXSpeakOverlayViewController *)self sentenceHighlightView];
  [sentenceHighlightView setHighlightSelectionRects:0];

  highlightSelectionRects = self->_highlightSelectionRects;
  self->_highlightSelectionRects = 0;
}

- (void)barDidReceiveFocus
{
  v3 = +[AXUIDisplayManager sharedDisplayManager];
  [v3 cancelNubbitFade:self->_containingView];
}

- (BOOL)isSpeaking
{
  delegate = [(AXSpeakOverlayViewController *)self delegate];
  isSpeaking = [delegate isSpeaking];

  return isSpeaking;
}

- (BOOL)isPaused
{
  delegate = [(AXSpeakOverlayViewController *)self delegate];
  isPaused = [delegate isPaused];

  return isPaused;
}

- (double)speakingRateAsMultiplier
{
  delegate = [(AXSpeakOverlayViewController *)self delegate];
  [delegate speakingRateAsMultiplier];
  v4 = v3;

  return v4;
}

- (CGRect)overlayFrame
{
  [(UIVisualEffectView *)self->_containingView frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)_updateTabButtonToSpeakFingerButton
{
  stateManager = [(AXSpeakOverlayViewController *)self stateManager];
  inTabMode = [stateManager inTabMode];

  if (inTabMode)
  {
    bar = self->_bar;

    [(AXSpeakOverlayControlBar *)bar updateForTabModeChangeUsingSpeakFingerButton:1];
  }

  else
  {
    stateManager2 = [(AXSpeakOverlayViewController *)self stateManager];
    collapseTimer = [stateManager2 collapseTimer];
    [collapseTimer cancel];

    [(AXSpeakOverlayViewController *)self _updateForTabModeUsingSpeakFingerButton:1 animated:0];
  }
}

- (void)_updateTabButtonToExpandCollapseButton
{
  stateManager = [(AXSpeakOverlayViewController *)self stateManager];
  inTabMode = [stateManager inTabMode];

  if (inTabMode)
  {
    bar = self->_bar;

    [(AXSpeakOverlayControlBar *)bar updateForTabModeChangeUsingSpeakFingerButton:0];
  }

  else
  {
    stateManager2 = [(AXSpeakOverlayViewController *)self stateManager];
    collapseTimer = [stateManager2 collapseTimer];
    [collapseTimer cancel];

    [(AXSpeakOverlayViewController *)self _updateForTabModeUsingSpeakFingerButton:0 animated:0];
  }
}

- (void)updateSpeakUnderFingerState:(unint64_t)state
{
  stateManager = +[AXUIDisplayManager sharedDisplayManager];
  [stateManager cancelNubbitFade:self->_containingView];

  if (state == 4 || state == 1)
  {
    stateManager = [(AXSpeakOverlayViewController *)self stateManager];
    inTabMode = [stateManager inTabMode];
  }

  else
  {
    inTabMode = 0;
  }

  if (state == 4 || state == 1)
  {
  }

  if (inTabMode)
  {
    [(AXSpeakOverlayViewController *)self _updateTabButtonToSpeakFingerButton];
  }

  else
  {
    stateManager2 = [(AXSpeakOverlayViewController *)self stateManager];
    inTabMode2 = [stateManager2 inTabMode];

    if (inTabMode2)
    {
      [(AXSpeakOverlayViewController *)self _updateTabButtonToExpandCollapseButton];
    }
  }

  bar = self->_bar;
  if (state == 2)
  {

    [(AXSpeakOverlayControlBar *)bar changeToResumeButton];
  }

  else
  {

    [(AXSpeakOverlayControlBar *)bar changeToStopButton];
  }
}

- (void)fastForwardButtonPressed
{
  delegate = [(AXSpeakOverlayViewController *)self delegate];
  [delegate fastForwardButtonPressed];

  [(AXSpeakOverlayViewController *)self _enqueueCollapseTimer];
}

- (void)rewindButtonPressed
{
  delegate = [(AXSpeakOverlayViewController *)self delegate];
  [delegate rewindButtonPressed];

  [(AXSpeakOverlayViewController *)self _enqueueCollapseTimer];
}

- (void)startNewReadAllFromGesture
{
  delegate = [(AXSpeakOverlayViewController *)self delegate];
  [delegate startNewReadAllFromGesture];

  [(AXSpeakOverlayViewController *)self _enqueueCollapseTimer];
}

- (void)playButtonPressed
{
  if (!self->_isScreenLocked)
  {
    self->_isSessionProtected = 1;
  }

  if (self->_isScreenTimedOut)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_15820;
    v4[3] = &unk_30D70;
    v4[4] = self;
    [(AXSpeakOverlayViewController *)self sbs_unlockDeviceIfNeededAndPerform:v4];
  }

  else
  {
    delegate = [(AXSpeakOverlayViewController *)self delegate];
    [delegate playButtonPressedForBundleID:0 sceneID:0 rootAccessibilityElementIdentifier:0];
  }

  [(AXSpeakOverlayViewController *)self _enqueueCollapseTimer];
}

- (void)stopButtonPressed
{
  delegate = [(AXSpeakOverlayViewController *)self delegate];
  [delegate stopButtonPressed];

  stateManager = [(AXSpeakOverlayViewController *)self stateManager];
  [stateManager setCurrentAppBundleIdentifier:0];

  v5 = +[AXSettings sharedInstance];
  showSpeechController = [v5 showSpeechController];

  if (showSpeechController)
  {

    [(AXSpeakOverlayViewController *)self _enqueueCollapseTimer];
  }
}

- (void)stopSpeakFingerButtonPressed
{
  delegate = [(AXSpeakOverlayViewController *)self delegate];
  [delegate stopSpeakFingerButtonPressed];

  [(AXSpeakOverlayViewController *)self _enqueueCollapseTimer];
}

- (void)pauseButtonPressed
{
  delegate = [(AXSpeakOverlayViewController *)self delegate];
  [delegate pauseButtonPressed];

  [(AXSpeakOverlayViewController *)self screenTimeOutCheck];

  [(AXSpeakOverlayViewController *)self _enqueueCollapseTimer];
}

- (void)screenTimeOutCheck
{
  +[NSDate timeIntervalSinceReferenceDate];
  [(AXSpeakOverlayViewController *)self setLastDevicePausedTimestamp:?];
  if (__PAIR64__(self->_isSessionProtected, self->_isScreenLocked) == 0x100000001 && self->_lastDevicePausedTimestamp - self->_lastDeviceLockedTimestamp > 5.0)
  {
    self->_isScreenTimedOut = 1;
  }
}

- (void)speedButtonPressed
{
  delegate = [(AXSpeakOverlayViewController *)self delegate];
  [delegate speedButtonPressed];

  [(AXSpeakOverlayViewController *)self _enqueueCollapseTimer];
}

- (void)headerTapped
{
  v5 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  stateManager = [(AXSpeakOverlayViewController *)self stateManager];
  currentAppBundleIdentifier = [stateManager currentAppBundleIdentifier];
  [v5 openApplication:currentAppBundleIdentifier withOptions:0 completion:0];
}

- (void)controlBarDragged:(CGPoint)dragged gestureRecognizer:(id)recognizer
{
  y = dragged.y;
  x = dragged.x;
  [(UIVisualEffectView *)self->_containingView frame];
  v8 = v7;
  v10 = v9;
  v13 = y + v12;
  v14 = fmax(x + v11, 2.0);
  v15 = fmax(v13, 2.0);
  view = [(AXSpeakOverlayViewController *)self view];
  [view frame];
  v18 = v17 - v8 + -2.0;

  if (v18 < v14)
  {
    v14 = v18;
  }

  view2 = [(AXSpeakOverlayViewController *)self view];
  [view2 frame];
  v21 = v20 - v10 + -2.0;

  if (v21 >= v15)
  {
    v22 = v15;
  }

  else
  {
    v22 = v21;
  }

  [(UIVisualEffectView *)self->_containingView setFrame:v14, v22, v8, v10];
  self->_nubbitMovedOutsideOfTabMode = 1;
  [(AXSpeakOverlayViewController *)self setIgnoreNextNubbitPositionUpdate:0];

  [(AXSpeakOverlayViewController *)self _saveNubbitPosition];
}

- (void)speakUnderFingerButtonPressed
{
  stateManager = [(AXSpeakOverlayViewController *)self stateManager];
  collapseTimer = [stateManager collapseTimer];
  [collapseTimer cancel];

  stateManager2 = [(AXSpeakOverlayViewController *)self stateManager];
  LOBYTE(collapseTimer) = [stateManager2 inTabMode];

  if (collapseTimer)
  {
    stateManager3 = [(AXSpeakOverlayViewController *)self stateManager];
    [stateManager3 setCurrentState:0];

    [(AXSpeakOverlayViewController *)self showUI];
  }

  else
  {
    [(AXSpeakOverlayViewController *)self collapseNubbit];
  }

  delegate = [(AXSpeakOverlayViewController *)self delegate];
  [delegate speakUnderFingerButtonPressed];
}

- (void)tabModeButtonPressed
{
  stateManager = [(AXSpeakOverlayViewController *)self stateManager];
  collapseTimer = [stateManager collapseTimer];
  [collapseTimer cancel];

  stateManager2 = [(AXSpeakOverlayViewController *)self stateManager];
  LODWORD(collapseTimer) = [stateManager2 inTabMode];

  if (collapseTimer)
  {
    [(AXSpeakOverlayViewController *)self expandNubbit];
  }

  else
  {
    [(AXSpeakOverlayViewController *)self collapseNubbit];
  }

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"showUI" object:0];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v12.receiver = self;
  v12.super_class = AXSpeakOverlayViewController;
  [(AXSpeakOverlayViewController *)&v12 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  stateManager = [(AXSpeakOverlayViewController *)self stateManager];
  inTabMode = [stateManager inTabMode];

  if (inTabMode)
  {
    [(AXSpeakOverlayViewController *)self unregisterNubbit:0];
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_15E90;
  v11[3] = &unk_30F98;
  v11[4] = self;
  *&v11[5] = width;
  *&v11[6] = height;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_15F80;
  v10[3] = &unk_30FC0;
  v10[4] = self;
  [coordinatorCopy animateAlongsideTransition:v11 completion:v10];
}

- (void)nubbitDidUpdatePosition:(id)position
{
  if (![(AXSpeakOverlayViewController *)self ignoreNextNubbitPositionUpdate])
  {

    [(AXSpeakOverlayViewController *)self _saveNubbitPosition];
  }
}

- (double)idleOpacityForNubbit:(id)nubbit
{
  v3 = +[AXSettings sharedInstance];
  [v3 speechControllerIdleOpacity];
  v5 = v4;

  return v5;
}

- (void)handleReachabilityToggled:(double)toggled
{
  stateManager = [(AXSpeakOverlayViewController *)self stateManager];
  inTabMode = [stateManager inTabMode];

  if (inTabMode)
  {
    [(AXSpeakOverlayViewController *)self unregisterNubbit:0];
  }

  v7 = +[UIScreen mainScreen];
  [v7 bounds];
  v9 = v8;

  [(UIVisualEffectView *)self->_containingView frame];
  v10 = CGRectGetMaxY(v33) + toggled;
  if (v10 <= v9)
  {
    if (toggled == 0.0)
    {
      [(AXSpeakOverlayViewController *)self reachabilityOffset];
      if (v20 != 0.0)
      {
        [(UIVisualEffectView *)self->_containingView frame];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;
        [(AXSpeakOverlayViewController *)self reachabilityOffset];
        [(UIVisualEffectView *)self->_containingView setFrame:v22, v24 - v29, v26, v28];
        [(AXSpeakOverlayViewController *)self _saveNubbitPosition];
        [(AXSpeakOverlayViewController *)self setReachabilityOffset:0.0];
      }
    }
  }

  else
  {
    [(AXSpeakOverlayViewController *)self setReachabilityOffset:v9 - v10];
    [(UIVisualEffectView *)self->_containingView frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [(AXSpeakOverlayViewController *)self reachabilityOffset];
    [(UIVisualEffectView *)self->_containingView setFrame:v12, v19 + v14, v16, v18];
    [(AXSpeakOverlayViewController *)self _saveNubbitPosition];
  }

  stateManager2 = [(AXSpeakOverlayViewController *)self stateManager];
  inTabMode2 = [stateManager2 inTabMode];

  if (inTabMode2)
  {

    [(AXSpeakOverlayViewController *)self _registerNubbit];
  }
}

- (void)handleKBFrameWillUpdate:(id)update
{
  updateCopy = update;
  stateManager = [(AXSpeakOverlayViewController *)self stateManager];
  inTabMode = [stateManager inTabMode];

  if (inTabMode)
  {
    [(AXSpeakOverlayViewController *)self unregisterNubbit:0];
  }

  v7 = [updateCopy objectForKeyedSubscript:STSMessageKeyKBFrame];
  v22 = CGRectFromString(v7);
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;

  if (fabs(y) >= 2.22044605e-16)
  {
    v14 = [updateCopy objectForKeyedSubscript:UIKeyboardAnimationDurationUserInfoKey];
    [v14 floatValue];
    v16 = v15;

    v17 = [updateCopy objectForKeyedSubscript:UIKeyboardAnimationCurveUserInfoKey];
    unsignedIntegerValue = [v17 unsignedIntegerValue];

    if ((unsignedIntegerValue - 1) >= 6)
    {
      v19 = 0;
    }

    else
    {
      v19 = ((unsignedIntegerValue - 1) << 16) + 0x10000;
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1642C;
    v21[3] = &unk_30FE8;
    v21[4] = self;
    *&v21[5] = x;
    *&v21[6] = y;
    *&v21[7] = width;
    *&v21[8] = height;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_16684;
    v20[3] = &unk_30D70;
    v20[4] = self;
    [UIView animateWithDuration:v19 delay:v21 options:v20 animations:v16 completion:0.0];
  }

  else
  {
    stateManager2 = [(AXSpeakOverlayViewController *)self stateManager];
    inTabMode2 = [stateManager2 inTabMode];

    if (inTabMode2)
    {
      [(AXSpeakOverlayViewController *)self _registerNubbit];
    }
  }
}

- (void)deviceLockMonitor:(id)monitor didReceiveDeviceLockStateChanged:(BOOL)changed timestamp:(double)timestamp
{
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_167B8;
  v7[3] = &unk_31010;
  objc_copyWeak(&v8, &location);
  changedCopy = changed;
  v7[4] = self;
  dispatch_async(&_dispatch_main_q, v7);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)deviceEventMonitorDidReceiveEvent:(id)event
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_16924;
  v5[3] = &unk_30A30;
  objc_copyWeak(&v6, &location);
  dispatch_async(queue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)sbs_unlockDeviceIfNeededAndPerform:(id)perform
{
  performCopy = perform;
  v3 = performCopy;
  SBSRequestPasscodeUnlockUI();
}

- (SSUIDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)nubbitMoveStartPosition
{
  x = self->_nubbitMoveStartPosition.x;
  y = self->_nubbitMoveStartPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)gestureMoveStartPosition
{
  x = self->_gestureMoveStartPosition.x;
  y = self->_gestureMoveStartPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end