@interface AXSpeakOverlayViewController
- (AXSpeakOverlayViewController)init;
- (BOOL)isPaused;
- (BOOL)isSpeaking;
- (CGPoint)_denormalizedNubbitOriginForViewSize:(CGSize)a3;
- (CGPoint)gestureMoveStartPosition;
- (CGPoint)nubbitMoveStartPosition;
- (CGRect)overlayFrame;
- (NSArray)sentenceHighlightSelectionRects;
- (SSUIDelegate)delegate;
- (UIColor)highlightColor;
- (UIColor)underlineColor;
- (double)idleOpacityForNubbit:(id)a3;
- (double)speakingRateAsMultiplier;
- (id)_sliceRects:(id)a3 withSentenceRects:(id)a4 wordRects:(id)a5;
- (id)highlightColorForColor:(id)a3;
- (id)sentenceHighlightColorForColor:(id)a3;
- (void)_enqueueCollapseTimer;
- (void)_initializeContainingView;
- (void)_registerNubbit;
- (void)_saveNubbitPosition;
- (void)_subscribeEventMonitor;
- (void)_unsubscribeEventMonitors;
- (void)_updateForTabModeUsingSpeakFingerButton:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateNubbitForTabModeChange;
- (void)_updateTabButtonToExpandCollapseButton;
- (void)_updateTabButtonToSpeakFingerButton;
- (void)_updateUI;
- (void)barDidReceiveFocus;
- (void)collapseNubbit;
- (void)controlBarDragged:(CGPoint)a3 gestureRecognizer:(id)a4;
- (void)dealloc;
- (void)deviceEventMonitorDidReceiveEvent:(id)a3;
- (void)deviceLockMonitor:(id)a3 didReceiveDeviceLockStateChanged:(BOOL)a4 timestamp:(double)a5;
- (void)didStop;
- (void)expandNubbit;
- (void)fastForwardButtonPressed;
- (void)finishLoading;
- (void)handleKBFrameWillUpdate:(id)a3;
- (void)handleReachabilityToggled:(double)a3;
- (void)headerTapped;
- (void)hideWithCompletion:(id)a3;
- (void)loadView;
- (void)moveBackInBounds;
- (void)nubbitDidUpdatePosition:(id)a3;
- (void)panToPosition:(CGPoint)a3;
- (void)pauseButtonPressed;
- (void)playButtonPressed;
- (void)resetUI;
- (void)rewindButtonPressed;
- (void)sbs_unlockDeviceIfNeededAndPerform:(id)a3;
- (void)screenTimeOutCheck;
- (void)setHighlightColor:(id)a3;
- (void)setHighlightSelectionRects:(id)a3;
- (void)setSentenceHighlightSelectionRects:(id)a3;
- (void)setUnderlineColor:(id)a3;
- (void)showErrorMessage:(id)a3;
- (void)showUI;
- (void)showUIForApplication:(id)a3;
- (void)speakUnderFingerButtonPressed;
- (void)speedButtonPressed;
- (void)startNewReadAllFromGesture;
- (void)startWithCompletion:(id)a3;
- (void)stop;
- (void)stopButtonPressed;
- (void)stopSpeakFingerButtonPressed;
- (void)tabModeButtonPressed;
- (void)updateBarWithAppTitleForApp:(id)a3;
- (void)updateSpeakUnderFingerState:(unint64_t)a3;
- (void)updateUIForDisplayChange;
- (void)updateUIForSpeakUnderFingerSettingsChange;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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

- (void)startWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_12AA8;
  block[3] = &unk_30ED0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
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
  v5 = [(AXSpeakOverlayViewController *)self view];
  [v5 setAccessibilityIgnoresInvertColors:1];
}

- (void)_initializeContainingView
{
  if (AXDeviceSupportsAccessibilityReader())
  {
    v3 = [(AXSpeakOverlayViewController *)self speakScreenHudUIManager];
    [v3 showUI];
  }

  else
  {
    +[AXSpeakOverlayControlBar controlBarSize];
    v5 = v4;
    v7 = v6;
    v8 = [(AXSpeakOverlayViewController *)self view];
    [v8 frame];
    v10 = v9 * 0.5 - v5 * 0.5;
    v11 = [(AXSpeakOverlayViewController *)self view];
    [v11 frame];
    v13 = v12 * 0.5 - v7 * 0.5;

    v14 = [[UIVisualEffectView alloc] initWithFrame:{v10, v13, v5, v7}];
    containingView = self->_containingView;
    self->_containingView = v14;

    v16 = [UIBlurEffect effectWithStyle:19];
    [(UIVisualEffectView *)self->_containingView setEffect:v16];

    [(UIVisualEffectView *)self->_containingView setUserInteractionEnabled:1];
    v17 = [(UIVisualEffectView *)self->_containingView layer];
    [v17 setMasksToBounds:1];

    v18 = [(UIVisualEffectView *)self->_containingView layer];
    [v18 setCornerRadius:15.0];

    v19 = [(AXSpeakOverlayViewController *)self view];
    [v19 addSubview:self->_containingView];

    v20 = [AXSpeakOverlayControlBar alloc];
    [(UIVisualEffectView *)self->_containingView bounds];
    v21 = [(AXSpeakOverlayControlBar *)v20 initWithFrame:?];
    bar = self->_bar;
    self->_bar = v21;

    [(AXSpeakOverlayControlBar *)self->_bar setAutoresizingMask:18];
    [(AXSpeakOverlayControlBar *)self->_bar setDelegate:self];
    [(AXSpeakOverlayControlBar *)self->_bar currentSpeakingRateChanged];
    v23 = [(UIVisualEffectView *)self->_containingView contentView];
    [v23 addSubview:self->_bar];

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
  v3 = [(AXSpeakOverlayViewController *)self stateManager];
  v4 = [v3 currentState];

  if (v4)
  {
    v5 = [(AXSpeakOverlayViewController *)self stateManager];
    v6 = [v5 currentState];

    if (v6 != &dword_0 + 1)
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
  v3 = [(AXSpeakOverlayViewController *)self stateManager];
  v4 = [v3 collapseTimer];
  [v4 cancel];

  if (!self->_containingView)
  {
    [(AXSpeakOverlayViewController *)self _initializeContainingView];
  }

  v5 = [(AXSpeakOverlayViewController *)self stateManager];
  if (![v5 currentState])
  {

    goto LABEL_8;
  }

  v6 = [(AXSpeakOverlayViewController *)self stateManager];
  v7 = [v6 currentState];

  if (v7 == &dword_0 + 1)
  {
LABEL_8:
    [(AXSpeakOverlayControlBar *)self->_bar showSpeakFingerUI];
    goto LABEL_9;
  }

  v8 = [(AXSpeakOverlayViewController *)self stateManager];
  v9 = [v8 currentState];

  if (v9 == &dword_0 + 2)
  {
    [(AXSpeakOverlayViewController *)self finishLoading];
  }

LABEL_9:
  v10 = [(AXSpeakOverlayViewController *)self stateManager];
  [v10 setCurrentAppBundleIdentifier:0];

  [(AXSpeakOverlayViewController *)self _updateUI];
}

- (void)resetUI
{
  [(AXSpeakOverlayControlBar *)self->_bar showSpeakFingerUI];
  v3 = [(AXSpeakOverlayViewController *)self stateManager];
  [v3 setCurrentAppBundleIdentifier:0];

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
  v3 = [(AXSpeakOverlayViewController *)self stateManager];
  [v3 setInTabMode:0];

  [(AXSpeakOverlayViewController *)self _updateUI];
}

- (void)collapseNubbit
{
  v3 = [(AXSpeakOverlayViewController *)self stateManager];
  [v3 setInTabMode:1];

  [(AXSpeakOverlayViewController *)self _updateUI];
}

- (void)updateUIForSpeakUnderFingerSettingsChange
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 showSpeechController];

  bar = self->_bar;
  if (v4)
  {
    [(AXSpeakOverlayControlBar *)bar hideStopButton];
  }

  else
  {
    [(AXSpeakOverlayControlBar *)bar showStopButton];
  }

  v6 = [(AXSpeakOverlayViewController *)self stateManager];
  v7 = [v6 inTabMode];

  if ((v7 & 1) == 0)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_13570;
    v8[3] = &unk_30AF0;
    v8[4] = self;
    [UIView animateWithDuration:v8 animations:0.25];
  }
}

- (void)updateBarWithAppTitleForApp:(id)a3
{
  v4 = a3;
  v5 = [(AXSpeakOverlayViewController *)self stateManager];
  v6 = [v4 bundleId];
  [v5 setCurrentAppBundleIdentifier:v6];

  v9 = [v4 label];
  LODWORD(v5) = [v4 isSpringBoard];

  if (v5)
  {
    v7 = AXSpeakThisLocString(@"HOME_SCREEN");

    v9 = v7;
  }

  v8 = [(AXSpeakOverlayViewController *)self stateManager];
  [v8 setCurrentControllerTitle:v9];
}

- (void)showUIForApplication:(id)a3
{
  v4 = a3;
  if (self->_containingView)
  {
    v5 = [(AXSpeakOverlayViewController *)self stateManager];
    v6 = [v5 inTabMode];

    if (v6)
    {
      [(AXSpeakOverlayViewController *)self tabModeButtonPressed];
    }
  }

  else
  {
    [(AXSpeakOverlayViewController *)self _initializeContainingView];
  }

  [(AXSpeakOverlayViewController *)self updateBarWithAppTitleForApp:v4];
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

- (void)panToPosition:(CGPoint)a3
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
      v14 = [(AXSpeakOverlayViewController *)self view];
      [v14 bounds];
      v16 = v15;

      v17 = v13 <= v16;
      v12 = v8;
      if (!v17)
      {
        v18 = [(AXSpeakOverlayViewController *)self view];
        [v18 bounds];
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

  v3 = [(AXSpeakOverlayViewController *)self stateManager];
  [v3 setCurrentState:2];

  v4 = UIAccessibilityLayoutChangedNotification;

  UIAccessibilityPostNotification(v4, 0);
}

- (id)highlightColorForColor:(id)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  v5 = [v4 quickSpeakSentenceHighlightColor];

  v6 = 0.2;
  if (v5)
  {
    v6 = 0.5;
  }

  v7 = [v3 colorWithAlphaComponent:v6];

  return v7;
}

- (id)sentenceHighlightColorForColor:(id)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  v5 = [v4 quickSpeakSentenceHighlightColor];

  if (v5)
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
    if ([v3 getRed:&v17 green:&v16 blue:&v15 alpha:&v14])
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
      v12 = v3;
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

- (void)setHighlightColor:(id)a3
{
  v9 = [(AXSpeakOverlayViewController *)self highlightColorForColor:a3];
  objc_storeStrong(&self->_highlightColor, v9);
  v4 = [(AXSpeakOverlayViewController *)self highlightView];

  if (v4)
  {
    v5 = [(AXSpeakOverlayViewController *)self highlightView];
    [v5 setSelectionColor:v9];
  }

  v6 = [(AXSpeakOverlayViewController *)self sentenceHighlightView];

  if (v6)
  {
    v7 = [(AXSpeakOverlayViewController *)self sentenceHighlightColorForColor:v9];
    v8 = [(AXSpeakOverlayViewController *)self sentenceHighlightView];
    [v8 setSelectionColor:v7];
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

- (void)setUnderlineColor:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_underlineColor, a3);
  v5 = [(AXSpeakOverlayViewController *)self sentenceHighlightView];

  if (v5)
  {
    v6 = [(AXSpeakOverlayViewController *)self sentenceHighlightView];
    [v6 setUnderlineColor:v7];
  }
}

- (void)setHighlightSelectionRects:(id)a3
{
  v24 = a3;
  if ([v24 count])
  {
    v5 = [(AXSpeakOverlayViewController *)self highlightView];

    if (!v5)
    {
      v6 = [QSSelectionHighlightView alloc];
      v7 = +[UIScreen mainScreen];
      [v7 bounds];
      v8 = [v6 initWithFrame:?];

      v9 = [(AXSpeakOverlayViewController *)self highlightColor];
      [v8 setSelectionColor:v9];

      v10 = [(AXSpeakOverlayViewController *)self view];
      [v10 insertSubview:v8 atIndex:0];

      [(AXSpeakOverlayViewController *)self setHighlightView:v8];
    }
  }

  v11 = [(AXSpeakOverlayViewController *)self sentenceHighlightSelectionRects];
  if (v11 && (v12 = v11, +[AXSettings sharedInstance](AXSettings, "sharedInstance"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 quickSpeakSentenceHighlightOption], v13, v12, v14 == &dword_0 + 2))
  {
    v15 = +[NSMutableArray array];
    v16 = [(AXSpeakOverlayViewController *)self currentUnmodifiedSentenceRects];
    v17 = [(AXSpeakOverlayViewController *)self _sliceRects:v15 withSentenceRects:v16 wordRects:v24];

    v18 = [(NSArray *)v17 count];
    if (v18 < [v24 count])
    {
      v19 = v24;

      v17 = v19;
    }

    v20 = [(AXSpeakOverlayViewController *)self sentenceHighlightView];
    [v20 setHighlightSelectionRects:v15];

    v21 = [(AXSpeakOverlayViewController *)self highlightView];
    [v21 setHighlightSelectionRects:v17];

    highlightSelectionRects = self->_highlightSelectionRects;
    self->_highlightSelectionRects = v17;
  }

  else
  {
    objc_storeStrong(&self->_highlightSelectionRects, a3);
    v15 = [(AXSpeakOverlayViewController *)self highlightView];
    [v15 setHighlightSelectionRects:v24];
  }

  v23 = [(AXSpeakOverlayViewController *)self sentenceHighlightView];
  [v23 updateVisualRects];
}

- (NSArray)sentenceHighlightSelectionRects
{
  v2 = [(AXSpeakOverlayViewController *)self sentenceHighlightView];
  v3 = [v2 highlightSelectionRects];

  return v3;
}

- (void)setSentenceHighlightSelectionRects:(id)a3
{
  v24 = a3;
  if ([v24 count])
  {
    v4 = [(AXSpeakOverlayViewController *)self sentenceHighlightView];

    if (!v4)
    {
      v5 = [QSSelectionHighlightView alloc];
      v6 = +[UIScreen mainScreen];
      [v6 bounds];
      v7 = [v5 initWithFrame:?];

      [v7 setSentenceHighlight:1];
      v8 = [(AXSpeakOverlayViewController *)self highlightColor];
      v9 = [(AXSpeakOverlayViewController *)self sentenceHighlightColorForColor:v8];
      [v7 setSelectionColor:v9];

      v10 = [(AXSpeakOverlayViewController *)self underlineColor];
      [v7 setUnderlineColor:v10];

      v11 = [(AXSpeakOverlayViewController *)self highlightView];

      v12 = [(AXSpeakOverlayViewController *)self view];
      v13 = v12;
      if (v11)
      {
        v14 = [(AXSpeakOverlayViewController *)self highlightView];
        [v13 insertSubview:v7 belowSubview:v14];
      }

      else
      {
        [v12 insertSubview:v7 atIndex:0];
      }

      [(AXSpeakOverlayViewController *)self setSentenceHighlightView:v7];
    }
  }

  v15 = [(AXSpeakOverlayViewController *)self highlightSelectionRects];
  if (v15 && (v16 = v15, +[AXSettings sharedInstance](AXSettings, "sharedInstance"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 quickSpeakSentenceHighlightOption], v17, v16, v18 == &dword_0 + 2))
  {
    v19 = +[NSMutableArray array];
    v20 = [(AXSpeakOverlayViewController *)self highlightSelectionRects];
    v21 = [(AXSpeakOverlayViewController *)self _sliceRects:v19 withSentenceRects:v24 wordRects:v20];

    v22 = [(AXSpeakOverlayViewController *)self highlightView];
    [v22 setHighlightSelectionRects:v21];

    v23 = [(AXSpeakOverlayViewController *)self sentenceHighlightView];
    [v23 setHighlightSelectionRects:v19];
  }

  else
  {
    v19 = [(AXSpeakOverlayViewController *)self sentenceHighlightView];
    [v19 setHighlightSelectionRects:v24];
  }

  [(AXSpeakOverlayViewController *)self setCurrentUnmodifiedSentenceRects:v24];
}

- (id)_sliceRects:(id)a3 withSentenceRects:(id)a4 wordRects:(id)a5
{
  v72 = a3;
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v7)
  {
    +[NSMutableArray array];
    v63 = v62 = v7;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    obj = v7;
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
          [v72 addObject:v11];
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
        [v72 addObject:v56];

        v57 = [NSValue valueWithCGRect:v25 + v48, v49, v67, v43];
        [v72 addObject:v57];

        v58 = [NSValue valueWithCGRect:v48, v49, v25, v68];
        [v72 addObject:v58];

        v59 = [NSValue valueWithCGRect:v48, v69, v25, v55];
        [v72 addObject:v59];

        v60 = [NSValue valueWithRect:v48, v50, v25, v65];
        [v63 addObject:v60];

LABEL_46:
      }

      v73 = [obj countByEnumeratingWithState:&v78 objects:v83 count:16];
      if (!v73)
      {
LABEL_48:

        v7 = v62;
        goto LABEL_50;
      }
    }
  }

  v63 = v8;
LABEL_50:

  return v63;
}

- (void)_enqueueCollapseTimer
{
  v3 = [(AXSpeakOverlayViewController *)self stateManager];
  v4 = [v3 collapseTimer];
  [v4 cancel];

  if (!UIAccessibilityIsVoiceOverRunning() && !UIAccessibilityIsSwitchControlRunning())
  {
    objc_initWeak(&location, self);
    v5 = [(AXSpeakOverlayViewController *)self stateManager];
    v6 = [v5 collapseTimer];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_14A08;
    v7[3] = &unk_30A30;
    objc_copyWeak(&v8, &location);
    [v6 afterDelay:v7 processBlock:8.0];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (CGPoint)_denormalizedNubbitOriginForViewSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
  v13 = [(AXSpeakOverlayViewController *)self view];
  [(UIVisualEffectView *)self->_containingView frame];
  v4 = v3;
  [(UIVisualEffectView *)self->_containingView frame];
  MaxY = CGRectGetMaxY(v15);
  +[AXSpeakOverlayControlBar nubbitSize];
  v7 = v4 + v6 * 0.5;
  +[AXSpeakOverlayControlBar nubbitSize];
  v9 = MaxY - v8 * 0.5;
  [v13 frame];
  v10 = v7 / CGRectGetWidth(v16);
  [v13 frame];
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

- (void)_updateForTabModeUsingSpeakFingerButton:(BOOL)a3 animated:(BOOL)a4
{
  v5 = 0.0;
  v9 = 3221225472;
  v8 = _NSConcreteStackBlock;
  v10 = sub_14DB8;
  v11 = &unk_30F48;
  if (a4)
  {
    v5 = 0.25;
  }

  v12 = self;
  v13 = a3;
  [UIView animateWithDuration:&v8 animations:v5];
  v6 = [(AXSpeakOverlayViewController *)self stateManager:v8];
  v7 = [v6 inTabMode];

  if ((v7 & 1) == 0)
  {
    [(AXSpeakOverlayViewController *)self _enqueueCollapseTimer];
  }

  [(AXSpeakOverlayControlBar *)self->_bar updateNubbitGestureRecognizers];
  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
}

- (void)_updateNubbitForTabModeChange
{
  v3 = [(AXSpeakOverlayViewController *)self stateManager];
  v4 = [v3 inTabMode];

  if (v4)
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

- (void)hideWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(AXSpeakOverlayViewController *)self stateManager];
  v6 = [v5 collapseTimer];
  [v6 cancel];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_15168;
  v10[3] = &unk_30AF0;
  v10[4] = self;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_15180;
  v8[3] = &unk_30F70;
  v9 = v4;
  v7 = v4;
  [UIView animateWithDuration:v10 animations:v8 completion:0.25];
  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
}

- (void)showErrorMessage:(id)a3
{
  v5 = a3;
  [(AXSpeakOverlayViewController *)self moveBackInBounds];
  v4 = [(AXSpeakOverlayViewController *)self stateManager];
  [v4 setCurrentState:1];

  [(AXSpeakOverlayControlBar *)self->_bar showErrorMessage:v5];
}

- (void)didStop
{
  v3 = [(AXSpeakOverlayViewController *)self highlightView];
  [v3 setHighlightSelectionRects:0];

  v4 = [(AXSpeakOverlayViewController *)self sentenceHighlightView];
  [v4 setHighlightSelectionRects:0];

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
  v2 = [(AXSpeakOverlayViewController *)self delegate];
  v3 = [v2 isSpeaking];

  return v3;
}

- (BOOL)isPaused
{
  v2 = [(AXSpeakOverlayViewController *)self delegate];
  v3 = [v2 isPaused];

  return v3;
}

- (double)speakingRateAsMultiplier
{
  v2 = [(AXSpeakOverlayViewController *)self delegate];
  [v2 speakingRateAsMultiplier];
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
  v3 = [(AXSpeakOverlayViewController *)self stateManager];
  v4 = [v3 inTabMode];

  if (v4)
  {
    bar = self->_bar;

    [(AXSpeakOverlayControlBar *)bar updateForTabModeChangeUsingSpeakFingerButton:1];
  }

  else
  {
    v6 = [(AXSpeakOverlayViewController *)self stateManager];
    v7 = [v6 collapseTimer];
    [v7 cancel];

    [(AXSpeakOverlayViewController *)self _updateForTabModeUsingSpeakFingerButton:1 animated:0];
  }
}

- (void)_updateTabButtonToExpandCollapseButton
{
  v3 = [(AXSpeakOverlayViewController *)self stateManager];
  v4 = [v3 inTabMode];

  if (v4)
  {
    bar = self->_bar;

    [(AXSpeakOverlayControlBar *)bar updateForTabModeChangeUsingSpeakFingerButton:0];
  }

  else
  {
    v6 = [(AXSpeakOverlayViewController *)self stateManager];
    v7 = [v6 collapseTimer];
    [v7 cancel];

    [(AXSpeakOverlayViewController *)self _updateForTabModeUsingSpeakFingerButton:0 animated:0];
  }
}

- (void)updateSpeakUnderFingerState:(unint64_t)a3
{
  v5 = +[AXUIDisplayManager sharedDisplayManager];
  [v5 cancelNubbitFade:self->_containingView];

  if (a3 == 4 || a3 == 1)
  {
    v5 = [(AXSpeakOverlayViewController *)self stateManager];
    v6 = [v5 inTabMode];
  }

  else
  {
    v6 = 0;
  }

  if (a3 == 4 || a3 == 1)
  {
  }

  if (v6)
  {
    [(AXSpeakOverlayViewController *)self _updateTabButtonToSpeakFingerButton];
  }

  else
  {
    v7 = [(AXSpeakOverlayViewController *)self stateManager];
    v8 = [v7 inTabMode];

    if (v8)
    {
      [(AXSpeakOverlayViewController *)self _updateTabButtonToExpandCollapseButton];
    }
  }

  bar = self->_bar;
  if (a3 == 2)
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
  v3 = [(AXSpeakOverlayViewController *)self delegate];
  [v3 fastForwardButtonPressed];

  [(AXSpeakOverlayViewController *)self _enqueueCollapseTimer];
}

- (void)rewindButtonPressed
{
  v3 = [(AXSpeakOverlayViewController *)self delegate];
  [v3 rewindButtonPressed];

  [(AXSpeakOverlayViewController *)self _enqueueCollapseTimer];
}

- (void)startNewReadAllFromGesture
{
  v3 = [(AXSpeakOverlayViewController *)self delegate];
  [v3 startNewReadAllFromGesture];

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
    v3 = [(AXSpeakOverlayViewController *)self delegate];
    [v3 playButtonPressedForBundleID:0 sceneID:0 rootAccessibilityElementIdentifier:0];
  }

  [(AXSpeakOverlayViewController *)self _enqueueCollapseTimer];
}

- (void)stopButtonPressed
{
  v3 = [(AXSpeakOverlayViewController *)self delegate];
  [v3 stopButtonPressed];

  v4 = [(AXSpeakOverlayViewController *)self stateManager];
  [v4 setCurrentAppBundleIdentifier:0];

  v5 = +[AXSettings sharedInstance];
  v6 = [v5 showSpeechController];

  if (v6)
  {

    [(AXSpeakOverlayViewController *)self _enqueueCollapseTimer];
  }
}

- (void)stopSpeakFingerButtonPressed
{
  v3 = [(AXSpeakOverlayViewController *)self delegate];
  [v3 stopSpeakFingerButtonPressed];

  [(AXSpeakOverlayViewController *)self _enqueueCollapseTimer];
}

- (void)pauseButtonPressed
{
  v3 = [(AXSpeakOverlayViewController *)self delegate];
  [v3 pauseButtonPressed];

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
  v3 = [(AXSpeakOverlayViewController *)self delegate];
  [v3 speedButtonPressed];

  [(AXSpeakOverlayViewController *)self _enqueueCollapseTimer];
}

- (void)headerTapped
{
  v5 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  v3 = [(AXSpeakOverlayViewController *)self stateManager];
  v4 = [v3 currentAppBundleIdentifier];
  [v5 openApplication:v4 withOptions:0 completion:0];
}

- (void)controlBarDragged:(CGPoint)a3 gestureRecognizer:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(UIVisualEffectView *)self->_containingView frame];
  v8 = v7;
  v10 = v9;
  v13 = y + v12;
  v14 = fmax(x + v11, 2.0);
  v15 = fmax(v13, 2.0);
  v16 = [(AXSpeakOverlayViewController *)self view];
  [v16 frame];
  v18 = v17 - v8 + -2.0;

  if (v18 < v14)
  {
    v14 = v18;
  }

  v19 = [(AXSpeakOverlayViewController *)self view];
  [v19 frame];
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
  v3 = [(AXSpeakOverlayViewController *)self stateManager];
  v4 = [v3 collapseTimer];
  [v4 cancel];

  v5 = [(AXSpeakOverlayViewController *)self stateManager];
  LOBYTE(v4) = [v5 inTabMode];

  if (v4)
  {
    v6 = [(AXSpeakOverlayViewController *)self stateManager];
    [v6 setCurrentState:0];

    [(AXSpeakOverlayViewController *)self showUI];
  }

  else
  {
    [(AXSpeakOverlayViewController *)self collapseNubbit];
  }

  v7 = [(AXSpeakOverlayViewController *)self delegate];
  [v7 speakUnderFingerButtonPressed];
}

- (void)tabModeButtonPressed
{
  v3 = [(AXSpeakOverlayViewController *)self stateManager];
  v4 = [v3 collapseTimer];
  [v4 cancel];

  v5 = [(AXSpeakOverlayViewController *)self stateManager];
  LODWORD(v4) = [v5 inTabMode];

  if (v4)
  {
    [(AXSpeakOverlayViewController *)self expandNubbit];
  }

  else
  {
    [(AXSpeakOverlayViewController *)self collapseNubbit];
  }

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"showUI" object:0];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = AXSpeakOverlayViewController;
  [(AXSpeakOverlayViewController *)&v12 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(AXSpeakOverlayViewController *)self stateManager];
  v9 = [v8 inTabMode];

  if (v9)
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
  [v7 animateAlongsideTransition:v11 completion:v10];
}

- (void)nubbitDidUpdatePosition:(id)a3
{
  if (![(AXSpeakOverlayViewController *)self ignoreNextNubbitPositionUpdate])
  {

    [(AXSpeakOverlayViewController *)self _saveNubbitPosition];
  }
}

- (double)idleOpacityForNubbit:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  [v3 speechControllerIdleOpacity];
  v5 = v4;

  return v5;
}

- (void)handleReachabilityToggled:(double)a3
{
  v5 = [(AXSpeakOverlayViewController *)self stateManager];
  v6 = [v5 inTabMode];

  if (v6)
  {
    [(AXSpeakOverlayViewController *)self unregisterNubbit:0];
  }

  v7 = +[UIScreen mainScreen];
  [v7 bounds];
  v9 = v8;

  [(UIVisualEffectView *)self->_containingView frame];
  v10 = CGRectGetMaxY(v33) + a3;
  if (v10 <= v9)
  {
    if (a3 == 0.0)
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

  v30 = [(AXSpeakOverlayViewController *)self stateManager];
  v31 = [v30 inTabMode];

  if (v31)
  {

    [(AXSpeakOverlayViewController *)self _registerNubbit];
  }
}

- (void)handleKBFrameWillUpdate:(id)a3
{
  v4 = a3;
  v5 = [(AXSpeakOverlayViewController *)self stateManager];
  v6 = [v5 inTabMode];

  if (v6)
  {
    [(AXSpeakOverlayViewController *)self unregisterNubbit:0];
  }

  v7 = [v4 objectForKeyedSubscript:STSMessageKeyKBFrame];
  v22 = CGRectFromString(v7);
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;

  if (fabs(y) >= 2.22044605e-16)
  {
    v14 = [v4 objectForKeyedSubscript:UIKeyboardAnimationDurationUserInfoKey];
    [v14 floatValue];
    v16 = v15;

    v17 = [v4 objectForKeyedSubscript:UIKeyboardAnimationCurveUserInfoKey];
    v18 = [v17 unsignedIntegerValue];

    if ((v18 - 1) >= 6)
    {
      v19 = 0;
    }

    else
    {
      v19 = ((v18 - 1) << 16) + 0x10000;
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
    v12 = [(AXSpeakOverlayViewController *)self stateManager];
    v13 = [v12 inTabMode];

    if (v13)
    {
      [(AXSpeakOverlayViewController *)self _registerNubbit];
    }
  }
}

- (void)deviceLockMonitor:(id)a3 didReceiveDeviceLockStateChanged:(BOOL)a4 timestamp:(double)a5
{
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_167B8;
  v7[3] = &unk_31010;
  objc_copyWeak(&v8, &location);
  v9 = a4;
  v7[4] = self;
  dispatch_async(&_dispatch_main_q, v7);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)deviceEventMonitorDidReceiveEvent:(id)a3
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

- (void)sbs_unlockDeviceIfNeededAndPerform:(id)a3
{
  v4 = a3;
  v3 = v4;
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