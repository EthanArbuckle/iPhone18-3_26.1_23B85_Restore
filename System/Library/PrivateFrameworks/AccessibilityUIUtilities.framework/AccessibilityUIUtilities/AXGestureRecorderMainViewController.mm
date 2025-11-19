@interface AXGestureRecorderMainViewController
- (AXGestureRecorderMainViewController)initWithType:(int64_t)a3;
- (AXGestureRecorderMainViewControllerDelegate)delegate;
- (BOOL)_canSaveGestureWithName:(id)a3;
- (BOOL)_isForRealTimeGesture;
- (BOOL)isChromeVisibleForGestureRecorderViewController:(id)a3;
- (id)_defaultInstructionalText;
- (id)appDidResignActiveNotificationHandlerToken;
- (void)_clearProgressView;
- (void)_commonInit;
- (void)_didSaveGestureWithName:(id)a3;
- (void)_enterReplayMode;
- (void)_enterWaitingMode;
- (void)_getButtonPropertiesForIdentifier:(unint64_t)a3 enabled:(BOOL)a4 color:(int *)a5 title:(id *)a6;
- (void)_hide;
- (void)_hideChrome;
- (void)_hideChromeButtonTapped:(id)a3;
- (void)_manageDisplayLinkManager:(BOOL)a3;
- (void)_releaseOutlets;
- (void)_reset;
- (void)_saveButtonTapped:(id)a3;
- (void)_savePoint:(CGPoint)a3;
- (void)_saveReplayableGesture;
- (void)_saveWithMessage:(id)a3;
- (void)_setLeftButtonIdentifier:(unint64_t)a3 enabled:(BOOL)a4 rightButtonIdentifier:(unint64_t)a5 enabled:(BOOL)a6 animate:(BOOL)a7 completion:(id)a8;
- (void)_unhideChrome;
- (void)_updateProgressView:(id)a3;
- (void)dealloc;
- (void)gestureRecorderControlsView:(id)a3 buttonTappedAtIndex:(unint64_t)a4;
- (void)gestureRecorderViewController:(id)a3 didStartRecordingAtomicFingerPathAtPoint:(CGPoint)a4;
- (void)gestureRecorderViewController:(id)a3 setChromeVisible:(BOOL)a4;
- (void)gestureRecorderViewControllerDidFinishReplayingRecordedGesture:(id)a3;
- (void)gestureRecorderViewControllerDidStopRecordingAtomicFingerPath:(id)a3;
- (void)loadView;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation AXGestureRecorderMainViewController

- (void)_commonInit
{
  v3 = objc_opt_new();
  [(AXGestureRecorderMainViewController *)self setStyleProvider:v3];
  v4 = objc_opt_new();
  [v4 setRecorderType:{-[AXGestureRecorderMainViewController recorderType](self, "recorderType")}];
  [v4 setStyleProvider:v3];
  [v4 setDelegate:self];
  [(AXGestureRecorderMainViewController *)self addChildViewController:v4];
  [(AXGestureRecorderMainViewController *)self setGestureRecorderViewController:v4];
  objc_initWeak(&location, self);
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = [MEMORY[0x1E696ADC8] mainQueue];
  v7 = *MEMORY[0x1E69DDBC8];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __50__AXGestureRecorderMainViewController__commonInit__block_invoke;
  v12 = &unk_1E812DF80;
  objc_copyWeak(&v13, &location);
  v8 = [v5 addObserverForName:v7 object:0 queue:v6 usingBlock:&v9];
  [(AXGestureRecorderMainViewController *)self setAppDidResignActiveNotificationHandlerToken:v8, v9, v10, v11, v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __50__AXGestureRecorderMainViewController__commonInit__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setDisableSystemGesturesAssertion:0];
}

- (AXGestureRecorderMainViewController)initWithType:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = AXGestureRecorderMainViewController;
  v4 = [(AXGestureRecorderMainViewController *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(AXGestureRecorderMainViewController *)v4 setRecorderType:a3];
    [(AXGestureRecorderMainViewController *)v5 _commonInit];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = [(AXGestureRecorderMainViewController *)self appDidResignActiveNotificationHandlerToken];
  [v3 removeObserver:v4];

  [(AXGestureRecorderMainViewController *)self _releaseOutlets];
  [(AXGestureRecorderViewController *)self->_gestureRecorderViewController setDelegate:0];
  v5.receiver = self;
  v5.super_class = AXGestureRecorderMainViewController;
  [(AXGestureRecorderMainViewController *)&v5 dealloc];
}

- (void)loadView
{
  v64[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 bounds];
  v5 = [v3 initWithFrame:?];

  [v5 setAutoresizingMask:18];
  [v5 setAutoresizesSubviews:1];
  [(AXGestureRecorderMainViewController *)self setView:v5];
  [v5 bounds];
  x = v65.origin.x;
  y = v65.origin.y;
  width = v65.size.width;
  height = v65.size.height;
  v10 = CGRectGetWidth(v65);
  v66.origin.x = x;
  v66.origin.y = y;
  v66.size.width = width;
  v66.size.height = height;
  v11 = CGRectGetHeight(v66);
  if ([(AXGestureRecorderMainViewController *)self recorderType]!= 2)
  {
    +[AXGestureRecorderControlsView defaultHeight];
    v13 = [[AXGestureRecorderControlsView alloc] initWithFrame:0.0, v11 - v12, v10, v12];
    [(AXGestureRecorderControlsView *)v13 setAutoresizingMask:10];
    [(AXGestureRecorderControlsView *)v13 setDelegate:self];
    [v5 addSubview:v13];
    [(AXGestureRecorderMainViewController *)self setControlsView:v13];
  }

  v14 = objc_alloc_init(MEMORY[0x1E69DD250]);
  topView = self->_topView;
  self->_topView = v14;

  v16 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [(UIView *)self->_topView setBackgroundColor:v16];

  v17 = objc_alloc_init(MEMORY[0x1E69DD250]);
  lineView = self->_lineView;
  self->_lineView = v17;

  v19 = [MEMORY[0x1E69DC888] separatorColor];
  [(UIView *)self->_lineView setBackgroundColor:v19];

  [v5 addSubview:self->_topView];
  [(UIView *)self->_topView addSubview:self->_lineView];
  v20 = [(AXGestureRecorderMainViewController *)self gestureRecorderViewController];
  v21 = [v20 gestureRecorderView];

  [v21 setFrame:{0.0, 0.0, v10, v11}];
  [v21 setAutoresizingMask:18];
  v62 = v21;
  [v5 insertSubview:v21 atIndex:0];
  v22 = [(AXGestureRecorderMainViewController *)self _defaultInstructionalText];
  v23 = [(AXGestureRecorderMainViewController *)self styleProvider];
  v24 = [v23 instructionsLabelFont];
  v25 = [v23 instructionsLabelTextColor];
  v26 = [v23 instructionsLabelBackgroundColor];
  v27 = [v23 instructionsLabelShadowColor];
  v60 = v23;
  [v23 instructionsLabelShadowOffset];
  v29 = v28;
  v31 = v30;
  v32 = objc_alloc(MEMORY[0x1E69DCC10]);
  v33 = [v32 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
  v59 = v24;
  [v33 setFont:v24];
  [v33 setAdjustsFontSizeToFitWidth:1];
  v58 = v25;
  [v33 setTextColor:v25];
  v57 = v26;
  [v33 setBackgroundColor:v26];
  v56 = v27;
  [v33 setShadowColor:v27];
  [v33 setShadowOffset:{v29, v31}];
  v61 = v22;
  [v33 setText:v22];
  [v33 setTextAlignment:1];
  [v33 setLineBreakMode:4];
  [v33 setNumberOfLines:0];
  [v33 setUserInteractionEnabled:0];
  [v33 setAdjustsFontForContentSizeCategory:1];
  [v33 setIsAccessibilityElement:0];
  [v5 addSubview:v33];
  [(AXGestureRecorderMainViewController *)self setInstructionsLabel:v33];
  v34 = [(AXGestureRecorderMainViewController *)self styleProvider];
  [v34 instructionsLabelHorizontalInset];
  v36 = v35;

  v37 = [v5 safeAreaLayoutGuide];
  v48 = MEMORY[0x1E696ACD8];
  v38 = [v33 leadingAnchor];
  v54 = [v37 leadingAnchor];
  v55 = v38;
  v53 = [v38 constraintEqualToAnchor:v36 constant:?];
  v64[0] = v53;
  v39 = [v37 trailingAnchor];
  v51 = [v33 trailingAnchor];
  v52 = v39;
  v50 = [v39 constraintEqualToAnchor:v36 constant:?];
  v64[1] = v50;
  v40 = [v33 topAnchor];
  v41 = [v37 topAnchor];
  v49 = v40;
  v42 = [v40 constraintEqualToAnchor:v41];
  v64[2] = v42;
  v43 = [v33 bottomAnchor];
  v44 = [(AXGestureRecorderMainViewController *)self controlsView];
  v63 = v5;
  if (v44)
  {
    v25 = [(AXGestureRecorderMainViewController *)self controlsView];
    [v25 topAnchor];
  }

  else
  {
    [v37 bottomAnchor];
  }
  v45 = ;
  v46 = [v43 constraintEqualToAnchor:v45];
  v64[3] = v46;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:4];
  [v48 activateConstraints:v47];

  if (v44)
  {

    v45 = v25;
  }
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = AXGestureRecorderMainViewController;
  [(AXGestureRecorderMainViewController *)&v17 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonTapped_];
  if ([(AXGestureRecorderMainViewController *)self recorderType]== 2)
  {
    v4 = @"ChoosePointNavControllerTitle";
  }

  else
  {
    v4 = @"CustomGesturesNavControllerTitle";
  }

  v5 = AXUILocalizedStringForKey(v4);
  [(AXGestureRecorderMainViewController *)self setTitle:v5];

  v6 = [(AXGestureRecorderMainViewController *)self navigationItem];
  [v6 setLeftBarButtonItem:v3];

  if ([(AXGestureRecorderMainViewController *)self recorderType]!= 2)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:3 target:self action:sel__saveButtonTapped_];
    [v7 setEnabled:0];
    v8 = [(AXGestureRecorderMainViewController *)self navigationItem];
    [v8 setRightBarButtonItem:v7];

    [(AXGestureRecorderMainViewController *)self setSaveButton:v7];
  }

  [(AXGestureRecorderMainViewController *)self _setLeftButtonIdentifier:3 enabled:0 rightButtonIdentifier:2 enabled:0 animate:0 completion:&__block_literal_global_3];
  v9 = [(AXGestureRecorderMainViewController *)self recorderType];
  if (v9 <= 1)
  {
    if (!v9)
    {
      v11 = [(AXGestureRecorderMainViewController *)self controlsView];
      [v11 setMiddleButton:0];
LABEL_18:

      goto LABEL_19;
    }

    if (v9 != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  if (v9 == 2)
  {
    v14 = [(AXGestureRecorderMainViewController *)self controlsView];

    if (v14)
    {
      _AXAssert();
    }

    v15 = objc_alloc(MEMORY[0x1E69DC708]);
    v16 = AXUILocalizedStringForKey(@"CustomGesturesHideControls");
    v11 = [v15 initWithTitle:v16 style:0 target:self action:sel__hideChromeButtonTapped_];

    v13 = [(AXGestureRecorderMainViewController *)self navigationItem];
    [v13 setRightBarButtonItem:v11];
    goto LABEL_17;
  }

  if (v9 == 3)
  {
LABEL_12:
    v10 = [(AXGestureRecorderMainViewController *)self controlsView];
    v11 = [v10 makeButton];

    v12 = AXUILocalizedStringForKey(@"CustomGesturesHideControls");
    [v11 setTitle:v12 forState:0];

    [v11 addTarget:self action:sel__hideChromeButtonTapped_ forControlEvents:64];
    v13 = [(AXGestureRecorderMainViewController *)self controlsView];
    [v13 setMiddleButton:v11];
LABEL_17:

    goto LABEL_18;
  }

LABEL_19:
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = AXGestureRecorderMainViewController;
  [(AXGestureRecorderMainViewController *)&v6 viewWillAppear:a3];
  v4 = [MEMORY[0x1E6989858] assertionWithType:*MEMORY[0x1E6989468] identifier:@"AST Gesture Recorder"];
  [(AXGestureRecorderMainViewController *)self setDisableSystemGesturesAssertion:v4];

  [(AXGestureRecorderMainViewController *)self _reset];
  v5 = [(AXGestureRecorderMainViewController *)self view];
  [v5 layoutSubviews];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AXGestureRecorderMainViewController;
  [(AXGestureRecorderMainViewController *)&v4 viewDidDisappear:a3];
  [(AXGestureRecorderMainViewController *)self setDisableSystemGesturesAssertion:0];
}

- (void)viewDidLayoutSubviews
{
  v20.receiver = self;
  v20.super_class = AXGestureRecorderMainViewController;
  [(AXGestureRecorderMainViewController *)&v20 viewDidLayoutSubviews];
  v3 = [(AXGestureRecorderMainViewController *)self navigationController];
  v4 = [v3 navigationBar];
  [v4 frame];
  v6 = v5;

  v7 = [(AXGestureRecorderMainViewController *)self view];
  v8 = [v7 safeAreaLayoutGuide];
  [v8 layoutFrame];
  [(UIView *)self->_topView setFrame:0.0, 0.0, v6, v9];

  [(UIView *)self->_topView bounds];
  v11 = v10;
  [(UIView *)self->_topView bounds];
  v13 = v12;
  [(UIView *)self->_topView bounds];
  v15 = v13 + v14 + -1.0;
  [(UIView *)self->_topView bounds];
  v17 = v16;
  v18 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v18 scale];
  [(UIView *)self->_lineView setFrame:v11, v15, v17, 1.0 / v19];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v6.receiver = self;
  v6.super_class = AXGestureRecorderMainViewController;
  [(AXGestureRecorderMainViewController *)&v6 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  v5 = [(AXGestureRecorderMainViewController *)self view];
  [v5 layoutSubviews];
}

- (void)_saveButtonTapped:(id)a3
{
  v4 = [(AXGestureRecorderMainViewController *)self recorderType];
  if (v4 == 3)
  {
LABEL_4:

    [(AXGestureRecorderMainViewController *)self _saveWithMessage:0];
    return;
  }

  if (v4 != 1)
  {
    if (v4)
    {
      [(AXGestureRecorderMainViewController *)self recorderType];
      _AXAssert();
      return;
    }

    goto LABEL_4;
  }

  [(AXGestureRecorderMainViewController *)self _saveReplayableGesture];
}

- (void)_unhideChrome
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__unhideChrome object:0];
  v3 = [(AXGestureRecorderMainViewController *)self navigationController];
  [v3 setNavigationBarHidden:0 animated:1];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__AXGestureRecorderMainViewController__unhideChrome__block_invoke;
  v5[3] = &unk_1E812DCA8;
  v5[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:0.25];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__AXGestureRecorderMainViewController__unhideChrome__block_invoke_2;
  v4[3] = &unk_1E812DCA8;
  v4[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v4 animations:0.25];
  UIAccessibilityPostNotification(*MEMORY[0x1E69DD8E8], 0);
}

void __52__AXGestureRecorderMainViewController__unhideChrome__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) controlsView];
  [v1 setAlpha:1.0];
}

void __52__AXGestureRecorderMainViewController__unhideChrome__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) instructionsLabel];
  [v1 setAlpha:0.0];
}

- (void)_hideChrome
{
  v3 = [(AXGestureRecorderMainViewController *)self navigationController];
  [v3 setNavigationBarHidden:1 animated:1];

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__AXGestureRecorderMainViewController__hideChrome__block_invoke;
  v4[3] = &unk_1E812DCA8;
  v4[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v4 animations:0.25];
  UIAccessibilityPostNotification(*MEMORY[0x1E69DD8E8], 0);
}

void __50__AXGestureRecorderMainViewController__hideChrome__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) controlsView];
  [v1 setAlpha:0.0];
}

- (void)_hideChromeButtonTapped:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = AXUILocalizedStringForKey(@"CustomHideChromeInstructionsFormat");
  v6 = [v4 localizedStringWithFormat:v5, 10];
  v7 = [(AXGestureRecorderMainViewController *)self instructionsLabel];
  [v7 setText:v6];

  v8 = [(AXGestureRecorderMainViewController *)self instructionsLabel];
  [v8 alpha];
  v10 = v9;

  if (v10 != 1.0)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __63__AXGestureRecorderMainViewController__hideChromeButtonTapped___block_invoke;
    v11[3] = &unk_1E812DCA8;
    v11[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v11 animations:0.25];
  }

  [(AXGestureRecorderMainViewController *)self _hideChrome];
  [(AXGestureRecorderMainViewController *)self performSelector:sel__unhideChrome withObject:0 afterDelay:10.0];
}

void __63__AXGestureRecorderMainViewController__hideChromeButtonTapped___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) instructionsLabel];
  [v1 setAlpha:1.0];
}

- (void)_setLeftButtonIdentifier:(unint64_t)a3 enabled:(BOOL)a4 rightButtonIdentifier:(unint64_t)a5 enabled:(BOOL)a6 animate:(BOOL)a7 completion:(id)a8
{
  v8 = a6;
  v10 = a4;
  v13 = a8;
  [(AXGestureRecorderMainViewController *)self setLeftButtonIdentifier:a3];
  [(AXGestureRecorderMainViewController *)self setRightButtonIdentifier:a5];
  v19 = 2;
  v20 = 2;
  v18 = 0;
  [(AXGestureRecorderMainViewController *)self _getButtonPropertiesForIdentifier:a3 enabled:v10 color:&v20 title:&v18];
  v14 = v18;
  v17 = 0;
  [(AXGestureRecorderMainViewController *)self _getButtonPropertiesForIdentifier:a5 enabled:v8 color:&v19 title:&v17];
  v15 = v17;
  v16 = [(AXGestureRecorderMainViewController *)self controlsView];
  [v16 setLeftButtonColor:v20 title:v14 enabled:v10 rightButtonColor:v19 title:v15 enabled:v8 animationDuration:0.0 completion:v13];
}

- (void)_getButtonPropertiesForIdentifier:(unint64_t)a3 enabled:(BOOL)a4 color:(int *)a5 title:(id *)a6
{
  v7 = @"Stop";
  v8 = a3 != 4;
  if (a3 != 4)
  {
    v7 = 0;
  }

  if (a3 == 3)
  {
    v8 = 0;
    v7 = @"Play";
  }

  if (a4)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = @"RE_RECORD";
  v11 = @"Stop";
  if (a3 != 2)
  {
    v11 = 0;
  }

  if (a3 == 1)
  {
    v12 = 0;
  }

  else
  {
    v9 = 0;
    v12 = a3 != 2;
  }

  if (a3 != 1)
  {
    v10 = v11;
  }

  if (a3 <= 2)
  {
    v13 = v9;
  }

  else
  {
    v13 = a3 == 3;
  }

  if (a3 <= 2)
  {
    v14 = v12;
  }

  else
  {
    v14 = v8;
  }

  if (a3 <= 2)
  {
    v15 = v10;
  }

  else
  {
    v15 = v7;
  }

  if (a5)
  {
    *a5 = v13;
  }

  if (a6)
  {
    if (v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = AXUILocalizedStringForKey(v15);
    }

    *a6 = v16;
  }
}

- (void)_updateProgressView:(id)a3
{
  Current = CFAbsoluteTimeGetCurrent();
  [(AXGestureRecorderMainViewController *)self gestureRecordingDidStartTimeInterval];
  v6 = (Current - v5) / 60.0;
  if (v6 >= 1.0)
  {
    [(AXGestureRecorderMainViewController *)self _manageDisplayLinkManager:0];
    if ([(AXGestureRecorderMainViewController *)self _isForRealTimeGesture])
    {
      v7 = [(AXGestureRecorderMainViewController *)self gestureRecorderViewController];
      [v7 freezeAllDynamicFingerPaths];

      v8 = [(AXGestureRecorderMainViewController *)self gestureRecorderViewController];
      [v8 preventFurtherRecording];
    }

    v6 = 1.0;
  }

  v10 = [(AXGestureRecorderMainViewController *)self controlsView];
  *&v9 = v6;
  [v10 setProgress:v9];
}

- (void)_clearProgressView
{
  v3 = [(AXGestureRecorderMainViewController *)self controlsView];
  [v3 setProgress:0.0];

  [(AXGestureRecorderMainViewController *)self _manageDisplayLinkManager:0];
}

- (void)_enterWaitingMode
{
  [(AXGestureRecorderMainViewController *)self _setLeftButtonIdentifier:3 enabled:1 rightButtonIdentifier:1 enabled:1 animate:1 completion:&__block_literal_global_349];
  v3 = [(AXGestureRecorderMainViewController *)self gestureRecorderViewController];
  [v3 preventFurtherRecording];

  [(AXGestureRecorderMainViewController *)self _clearProgressView];
}

- (void)_enterReplayMode
{
  [(AXGestureRecorderMainViewController *)self setInReplayMode:1];
  [(AXGestureRecorderMainViewController *)self _setLeftButtonIdentifier:3 enabled:0 rightButtonIdentifier:1 enabled:0 animate:1 completion:&__block_literal_global_351];
  v3 = [(AXGestureRecorderMainViewController *)self controlsView];
  [v3 setProgress:0.0];

  [(AXGestureRecorderMainViewController *)self setGestureRecordingDidStartTimeInterval:CFAbsoluteTimeGetCurrent()];
  [(AXGestureRecorderMainViewController *)self _manageDisplayLinkManager:1];
  v4 = [(AXGestureRecorderMainViewController *)self gestureRecorderViewController];
  [v4 replayRecordedGesture];
}

- (void)_releaseOutlets
{
  [(AXGestureRecorderMainViewController *)self setControlsView:0];
  [(AXGestureRecorderMainViewController *)self setInstructionsLabel:0];

  [(AXGestureRecorderMainViewController *)self setSaveButton:0];
}

- (void)_reset
{
  v3 = [(AXGestureRecorderMainViewController *)self saveButton];
  [v3 setEnabled:0];

  v4 = [(AXGestureRecorderMainViewController *)self _defaultInstructionalText];
  v5 = [(AXGestureRecorderMainViewController *)self instructionsLabel];
  [v5 setText:v4];

  v6 = [(AXGestureRecorderMainViewController *)self instructionsLabel];
  [v6 setAlpha:1.0];

  [(AXGestureRecorderMainViewController *)self _setLeftButtonIdentifier:3 enabled:0 rightButtonIdentifier:2 enabled:0 animate:0 completion:&__block_literal_global_353];
  v7 = [(AXGestureRecorderMainViewController *)self controlsView];
  [v7 setProgress:0.0];

  v8 = [(AXGestureRecorderMainViewController *)self gestureRecorderViewController];
  [v8 deleteAllFingerPaths];

  v9 = [(AXGestureRecorderMainViewController *)self gestureRecorderViewController];
  [v9 hideStaticView];

  v10 = [(AXGestureRecorderMainViewController *)self gestureRecorderViewController];
  v11 = [v10 view];
  [v11 setNeedsLayout];

  [(AXGestureRecorderMainViewController *)self setGestureRecordingDidStartTimeInterval:0.0];

  [(AXGestureRecorderMainViewController *)self _manageDisplayLinkManager:0];
}

- (void)_hide
{
  [(AXGestureRecorderMainViewController *)self _reset];

  [(AXGestureRecorderMainViewController *)self dismissViewControllerAnimated:1 completion:&__block_literal_global_355_0];
}

- (void)_saveWithMessage:(id)a3
{
  v4 = MEMORY[0x1E69DC650];
  v5 = a3;
  v6 = AXUILocalizedStringForKey(@"SaveAlertTitle");
  v7 = [v4 alertControllerWithTitle:v6 message:v5 preferredStyle:1];

  v8 = MEMORY[0x1E69DC648];
  v9 = AXUILocalizedStringForKey(@"CANCEL");
  v10 = [v8 actionWithTitle:v9 style:1 handler:&__block_literal_global_366];

  [v7 addAction:v10];
  v11 = MEMORY[0x1E69DC648];
  v12 = AXUILocalizedStringForKey(@"SAVE");
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __56__AXGestureRecorderMainViewController__saveWithMessage___block_invoke_2;
  v16[3] = &unk_1E812DFE8;
  v17 = v7;
  v18 = self;
  v13 = v7;
  v14 = [v11 actionWithTitle:v12 style:0 handler:v16];

  [v13 addAction:v14];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__AXGestureRecorderMainViewController__saveWithMessage___block_invoke_4;
  v15[3] = &unk_1E812E010;
  v15[4] = self;
  [v13 addTextFieldWithConfigurationHandler:v15];
  [(AXGestureRecorderMainViewController *)self presentViewController:v13 animated:1 completion:0];
}

void __56__AXGestureRecorderMainViewController__saveWithMessage___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) textFields];
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = [v3 text];

  if ([*(a1 + 40) _canSaveGestureWithName:v4])
  {
    [*(a1 + 40) _didSaveGestureWithName:v4];
    [*(a1 + 40) _reset];
  }

  else
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

void __56__AXGestureRecorderMainViewController__saveWithMessage___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = AXUILocalizedStringForKey(@"name.in.use");
  [v1 _saveWithMessage:v2];
}

void __56__AXGestureRecorderMainViewController__saveWithMessage___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = AXUILocalizedStringForKey(@"GestureNamePlaceholder");
  [v4 setPlaceholder:v3];

  [v4 setDelegate:*(a1 + 32)];
  [v4 setAutocapitalizationType:2];
  [v4 setAutocorrectionType:1];
  [v4 setEnablesReturnKeyAutomatically:1];
}

- (BOOL)_canSaveGestureWithName:(id)a3
{
  v4 = a3;
  v5 = [(AXGestureRecorderMainViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AXGestureRecorderMainViewController *)self delegate];
    v8 = [v7 gestureRecorder:self canSaveGestureWithName:v4];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)_didSaveGestureWithName:(id)a3
{
  v14 = a3;
  if ([(AXGestureRecorderMainViewController *)self recorderType]== 3)
  {
    v4 = [(AXGestureRecorderMainViewController *)self gestureRecorderViewController];
    v5 = [v4 recordedReplayableGestureRepresentation];

    if (v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E6989888]);
      [v6 setName:v14];
      [v6 addPointsFromReplayableGesture:v5];
      v7 = [(AXGestureRecorderMainViewController *)self delegate];
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        v9 = [(AXGestureRecorderMainViewController *)self delegate];
        [v9 gestureRecorder:self saveNamedReplayableGesture:v6];
      }
    }

    [(AXGestureRecorderMainViewController *)self _hide];
LABEL_7:

    goto LABEL_9;
  }

  if (![(AXGestureRecorderMainViewController *)self recorderType])
  {
    v10 = [(AXGestureRecorderMainViewController *)self gestureRecorderViewController];
    v5 = [v10 recordedGesturePropertyListRepresentationWithName:v14];

    if (v5)
    {
      v11 = [(AXGestureRecorderMainViewController *)self delegate];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v13 = [(AXGestureRecorderMainViewController *)self delegate];
        [v13 gestureRecorder:self saveGestureWithPropertyListRepresentation:v5];
      }
    }

    goto LABEL_7;
  }

LABEL_9:
  [(AXGestureRecorderMainViewController *)self _hide];
}

- (void)_saveReplayableGesture
{
  v3 = [(AXGestureRecorderMainViewController *)self gestureRecorderViewController];
  v7 = [v3 recordedReplayableGestureRepresentation];

  if (v7)
  {
    v4 = [(AXGestureRecorderMainViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(AXGestureRecorderMainViewController *)self delegate];
      [v6 gestureRecorder:self saveReplayableGesture:v7];
    }
  }

  [(AXGestureRecorderMainViewController *)self _hide];
}

- (void)_savePoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(AXGestureRecorderMainViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(AXGestureRecorderMainViewController *)self delegate];
    [v8 gestureRecorder:self savePoint:{x, y}];
  }

  AXPerformBlockOnMainThreadAfterDelay();
}

- (id)_defaultInstructionalText
{
  v2 = [(AXGestureRecorderMainViewController *)self recorderType];
  if (v2 > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = AXUILocalizedStringForKey(off_1E812E058[v2]);
  }

  return v3;
}

- (BOOL)_isForRealTimeGesture
{
  v2 = [(AXGestureRecorderMainViewController *)self recorderType];

  return AXGestureRecorderTypeIsForRealTimeGesture(v2);
}

- (void)_manageDisplayLinkManager:(BOOL)a3
{
  v3 = a3;
  v5 = [(AXGestureRecorderMainViewController *)self isDisplayLinkInEffect];
  if (v3)
  {
    if (v5)
    {
      return;
    }

    v6 = [MEMORY[0x1E6989868] currentDisplayLinkManager];
    [v6 addTarget:self selector:sel__updateProgressView_];
  }

  else
  {
    if (!v5)
    {
      return;
    }

    v6 = [MEMORY[0x1E6989868] currentDisplayLinkManager];
    [v6 removeTarget:self selector:sel__updateProgressView_];
  }

  [(AXGestureRecorderMainViewController *)self setIsDisplayLinkInEffect:v3];
}

- (void)gestureRecorderViewController:(id)a3 didStartRecordingAtomicFingerPathAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  if ([(AXGestureRecorderMainViewController *)self recorderType]== 2)
  {
    [(AXGestureRecorderMainViewController *)self _savePoint:x, y];

    [(AXGestureRecorderMainViewController *)self _enterWaitingMode];
  }

  else
  {
    v7 = [(AXGestureRecorderMainViewController *)self saveButton];
    [v7 setEnabled:1];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __110__AXGestureRecorderMainViewController_gestureRecorderViewController_didStartRecordingAtomicFingerPathAtPoint___block_invoke;
    v10[3] = &unk_1E812DCA8;
    v10[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v10 animations:0.25];
    if ([(AXGestureRecorderMainViewController *)self rightButtonIdentifier]== 2)
    {
      [(AXGestureRecorderMainViewController *)self _setLeftButtonIdentifier:3 enabled:0 rightButtonIdentifier:2 enabled:1 animate:1 completion:&__block_literal_global_401];
    }

    if (![(AXGestureRecorderMainViewController *)self recorderType]|| ([(AXGestureRecorderMainViewController *)self gestureRecordingDidStartTimeInterval], v8 == 0.0))
    {
      v9 = [(AXGestureRecorderMainViewController *)self controlsView];
      [v9 setProgress:0.0];

      [(AXGestureRecorderMainViewController *)self setGestureRecordingDidStartTimeInterval:CFAbsoluteTimeGetCurrent()];
    }

    [(AXGestureRecorderMainViewController *)self _manageDisplayLinkManager:1];
  }
}

void __110__AXGestureRecorderMainViewController_gestureRecorderViewController_didStartRecordingAtomicFingerPathAtPoint___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) instructionsLabel];
  [v1 setAlpha:0.0];
}

- (void)gestureRecorderViewControllerDidStopRecordingAtomicFingerPath:(id)a3
{
  if (![(AXGestureRecorderMainViewController *)self _isForRealTimeGesture])
  {
    v4 = [MEMORY[0x1E6989868] currentDisplayLinkManager];
    v5 = [v4 isPaused];

    if ((v5 & 1) == 0)
    {

      [(AXGestureRecorderMainViewController *)self _clearProgressView];
    }
  }
}

- (void)gestureRecorderViewControllerDidFinishReplayingRecordedGesture:(id)a3
{
  v4 = a3;
  [(AXGestureRecorderMainViewController *)self _clearProgressView];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __102__AXGestureRecorderMainViewController_gestureRecorderViewControllerDidFinishReplayingRecordedGesture___block_invoke;
  v5[3] = &unk_1E812E038;
  objc_copyWeak(&v6, &location);
  [(AXGestureRecorderMainViewController *)self _setLeftButtonIdentifier:3 enabled:1 rightButtonIdentifier:1 enabled:1 animate:1 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __102__AXGestureRecorderMainViewController_gestureRecorderViewControllerDidFinishReplayingRecordedGesture___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _manageDisplayLinkManager:0];
}

- (BOOL)isChromeVisibleForGestureRecorderViewController:(id)a3
{
  v3 = [(AXGestureRecorderMainViewController *)self navigationController];
  v4 = [v3 isNavigationBarHidden];

  return v4 ^ 1;
}

- (void)gestureRecorderViewController:(id)a3 setChromeVisible:(BOOL)a4
{
  if (a4)
  {
    [(AXGestureRecorderMainViewController *)self _unhideChrome];
  }

  else
  {
    [(AXGestureRecorderMainViewController *)self _hideChrome];
  }
}

- (void)gestureRecorderControlsView:(id)a3 buttonTappedAtIndex:(unint64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v9 = v6;
    v7 = [(AXGestureRecorderMainViewController *)self rightButtonIdentifier];
  }

  else
  {
    if (a4)
    {
      goto LABEL_13;
    }

    v9 = v6;
    v7 = [(AXGestureRecorderMainViewController *)self leftButtonIdentifier];
  }

  if (v7 == 1)
  {
    [(AXGestureRecorderMainViewController *)self _reset];
    goto LABEL_12;
  }

  if (v7 == 3)
  {
    [(AXGestureRecorderMainViewController *)self _enterReplayMode];
    goto LABEL_12;
  }

  v8 = v7 == 2;
  v6 = v9;
  if (v8)
  {
    [(AXGestureRecorderMainViewController *)self _enterWaitingMode];
LABEL_12:
    v6 = v9;
  }

LABEL_13:
}

- (AXGestureRecorderMainViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)appDidResignActiveNotificationHandlerToken
{
  WeakRetained = objc_loadWeakRetained(&self->_appDidResignActiveNotificationHandlerToken);

  return WeakRetained;
}

@end