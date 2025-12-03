@interface AXGestureRecorderMainViewController
- (AXGestureRecorderMainViewController)initWithType:(int64_t)type;
- (AXGestureRecorderMainViewControllerDelegate)delegate;
- (BOOL)_canSaveGestureWithName:(id)name;
- (BOOL)_isForRealTimeGesture;
- (BOOL)isChromeVisibleForGestureRecorderViewController:(id)controller;
- (id)_defaultInstructionalText;
- (id)appDidResignActiveNotificationHandlerToken;
- (void)_clearProgressView;
- (void)_commonInit;
- (void)_didSaveGestureWithName:(id)name;
- (void)_enterReplayMode;
- (void)_enterWaitingMode;
- (void)_getButtonPropertiesForIdentifier:(unint64_t)identifier enabled:(BOOL)enabled color:(int *)color title:(id *)title;
- (void)_hide;
- (void)_hideChrome;
- (void)_hideChromeButtonTapped:(id)tapped;
- (void)_manageDisplayLinkManager:(BOOL)manager;
- (void)_releaseOutlets;
- (void)_reset;
- (void)_saveButtonTapped:(id)tapped;
- (void)_savePoint:(CGPoint)point;
- (void)_saveReplayableGesture;
- (void)_saveWithMessage:(id)message;
- (void)_setLeftButtonIdentifier:(unint64_t)identifier enabled:(BOOL)enabled rightButtonIdentifier:(unint64_t)buttonIdentifier enabled:(BOOL)a6 animate:(BOOL)animate completion:(id)completion;
- (void)_unhideChrome;
- (void)_updateProgressView:(id)view;
- (void)dealloc;
- (void)gestureRecorderControlsView:(id)view buttonTappedAtIndex:(unint64_t)index;
- (void)gestureRecorderViewController:(id)controller didStartRecordingAtomicFingerPathAtPoint:(CGPoint)point;
- (void)gestureRecorderViewController:(id)controller setChromeVisible:(BOOL)visible;
- (void)gestureRecorderViewControllerDidFinishReplayingRecordedGesture:(id)gesture;
- (void)gestureRecorderViewControllerDidStopRecordingAtomicFingerPath:(id)path;
- (void)loadView;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
  v7 = *MEMORY[0x1E69DDBC8];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __50__AXGestureRecorderMainViewController__commonInit__block_invoke;
  v12 = &unk_1E812DF80;
  objc_copyWeak(&v13, &location);
  v8 = [defaultCenter addObserverForName:v7 object:0 queue:mainQueue usingBlock:&v9];
  [(AXGestureRecorderMainViewController *)self setAppDidResignActiveNotificationHandlerToken:v8, v9, v10, v11, v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __50__AXGestureRecorderMainViewController__commonInit__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setDisableSystemGesturesAssertion:0];
}

- (AXGestureRecorderMainViewController)initWithType:(int64_t)type
{
  v7.receiver = self;
  v7.super_class = AXGestureRecorderMainViewController;
  v4 = [(AXGestureRecorderMainViewController *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(AXGestureRecorderMainViewController *)v4 setRecorderType:type];
    [(AXGestureRecorderMainViewController *)v5 _commonInit];
  }

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  appDidResignActiveNotificationHandlerToken = [(AXGestureRecorderMainViewController *)self appDidResignActiveNotificationHandlerToken];
  [defaultCenter removeObserver:appDidResignActiveNotificationHandlerToken];

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
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
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

  secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [(UIView *)self->_topView setBackgroundColor:secondarySystemGroupedBackgroundColor];

  v17 = objc_alloc_init(MEMORY[0x1E69DD250]);
  lineView = self->_lineView;
  self->_lineView = v17;

  separatorColor = [MEMORY[0x1E69DC888] separatorColor];
  [(UIView *)self->_lineView setBackgroundColor:separatorColor];

  [v5 addSubview:self->_topView];
  [(UIView *)self->_topView addSubview:self->_lineView];
  gestureRecorderViewController = [(AXGestureRecorderMainViewController *)self gestureRecorderViewController];
  gestureRecorderView = [gestureRecorderViewController gestureRecorderView];

  [gestureRecorderView setFrame:{0.0, 0.0, v10, v11}];
  [gestureRecorderView setAutoresizingMask:18];
  v62 = gestureRecorderView;
  [v5 insertSubview:gestureRecorderView atIndex:0];
  _defaultInstructionalText = [(AXGestureRecorderMainViewController *)self _defaultInstructionalText];
  styleProvider = [(AXGestureRecorderMainViewController *)self styleProvider];
  instructionsLabelFont = [styleProvider instructionsLabelFont];
  instructionsLabelTextColor = [styleProvider instructionsLabelTextColor];
  instructionsLabelBackgroundColor = [styleProvider instructionsLabelBackgroundColor];
  instructionsLabelShadowColor = [styleProvider instructionsLabelShadowColor];
  v60 = styleProvider;
  [styleProvider instructionsLabelShadowOffset];
  v29 = v28;
  v31 = v30;
  v32 = objc_alloc(MEMORY[0x1E69DCC10]);
  v33 = [v32 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
  v59 = instructionsLabelFont;
  [v33 setFont:instructionsLabelFont];
  [v33 setAdjustsFontSizeToFitWidth:1];
  v58 = instructionsLabelTextColor;
  [v33 setTextColor:instructionsLabelTextColor];
  v57 = instructionsLabelBackgroundColor;
  [v33 setBackgroundColor:instructionsLabelBackgroundColor];
  v56 = instructionsLabelShadowColor;
  [v33 setShadowColor:instructionsLabelShadowColor];
  [v33 setShadowOffset:{v29, v31}];
  v61 = _defaultInstructionalText;
  [v33 setText:_defaultInstructionalText];
  [v33 setTextAlignment:1];
  [v33 setLineBreakMode:4];
  [v33 setNumberOfLines:0];
  [v33 setUserInteractionEnabled:0];
  [v33 setAdjustsFontForContentSizeCategory:1];
  [v33 setIsAccessibilityElement:0];
  [v5 addSubview:v33];
  [(AXGestureRecorderMainViewController *)self setInstructionsLabel:v33];
  styleProvider2 = [(AXGestureRecorderMainViewController *)self styleProvider];
  [styleProvider2 instructionsLabelHorizontalInset];
  v36 = v35;

  safeAreaLayoutGuide = [v5 safeAreaLayoutGuide];
  v48 = MEMORY[0x1E696ACD8];
  leadingAnchor = [v33 leadingAnchor];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v55 = leadingAnchor;
  v53 = [leadingAnchor constraintEqualToAnchor:v36 constant:?];
  v64[0] = v53;
  trailingAnchor = [safeAreaLayoutGuide trailingAnchor];
  trailingAnchor2 = [v33 trailingAnchor];
  v52 = trailingAnchor;
  v50 = [trailingAnchor constraintEqualToAnchor:v36 constant:?];
  v64[1] = v50;
  topAnchor = [v33 topAnchor];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v49 = topAnchor;
  v42 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v64[2] = v42;
  bottomAnchor = [v33 bottomAnchor];
  controlsView = [(AXGestureRecorderMainViewController *)self controlsView];
  v63 = v5;
  if (controlsView)
  {
    instructionsLabelTextColor = [(AXGestureRecorderMainViewController *)self controlsView];
    [instructionsLabelTextColor topAnchor];
  }

  else
  {
    [safeAreaLayoutGuide bottomAnchor];
  }
  v45 = ;
  v46 = [bottomAnchor constraintEqualToAnchor:v45];
  v64[3] = v46;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:4];
  [v48 activateConstraints:v47];

  if (controlsView)
  {

    v45 = instructionsLabelTextColor;
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

  navigationItem = [(AXGestureRecorderMainViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v3];

  if ([(AXGestureRecorderMainViewController *)self recorderType]!= 2)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:3 target:self action:sel__saveButtonTapped_];
    [v7 setEnabled:0];
    navigationItem2 = [(AXGestureRecorderMainViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:v7];

    [(AXGestureRecorderMainViewController *)self setSaveButton:v7];
  }

  [(AXGestureRecorderMainViewController *)self _setLeftButtonIdentifier:3 enabled:0 rightButtonIdentifier:2 enabled:0 animate:0 completion:&__block_literal_global_3];
  recorderType = [(AXGestureRecorderMainViewController *)self recorderType];
  if (recorderType <= 1)
  {
    if (!recorderType)
    {
      controlsView = [(AXGestureRecorderMainViewController *)self controlsView];
      [controlsView setMiddleButton:0];
LABEL_18:

      goto LABEL_19;
    }

    if (recorderType != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  if (recorderType == 2)
  {
    controlsView2 = [(AXGestureRecorderMainViewController *)self controlsView];

    if (controlsView2)
    {
      _AXAssert();
    }

    v15 = objc_alloc(MEMORY[0x1E69DC708]);
    v16 = AXUILocalizedStringForKey(@"CustomGesturesHideControls");
    controlsView = [v15 initWithTitle:v16 style:0 target:self action:sel__hideChromeButtonTapped_];

    navigationItem3 = [(AXGestureRecorderMainViewController *)self navigationItem];
    [navigationItem3 setRightBarButtonItem:controlsView];
    goto LABEL_17;
  }

  if (recorderType == 3)
  {
LABEL_12:
    controlsView3 = [(AXGestureRecorderMainViewController *)self controlsView];
    controlsView = [controlsView3 makeButton];

    v12 = AXUILocalizedStringForKey(@"CustomGesturesHideControls");
    [controlsView setTitle:v12 forState:0];

    [controlsView addTarget:self action:sel__hideChromeButtonTapped_ forControlEvents:64];
    navigationItem3 = [(AXGestureRecorderMainViewController *)self controlsView];
    [navigationItem3 setMiddleButton:controlsView];
LABEL_17:

    goto LABEL_18;
  }

LABEL_19:
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = AXGestureRecorderMainViewController;
  [(AXGestureRecorderMainViewController *)&v6 viewWillAppear:appear];
  v4 = [MEMORY[0x1E6989858] assertionWithType:*MEMORY[0x1E6989468] identifier:@"AST Gesture Recorder"];
  [(AXGestureRecorderMainViewController *)self setDisableSystemGesturesAssertion:v4];

  [(AXGestureRecorderMainViewController *)self _reset];
  view = [(AXGestureRecorderMainViewController *)self view];
  [view layoutSubviews];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = AXGestureRecorderMainViewController;
  [(AXGestureRecorderMainViewController *)&v4 viewDidDisappear:disappear];
  [(AXGestureRecorderMainViewController *)self setDisableSystemGesturesAssertion:0];
}

- (void)viewDidLayoutSubviews
{
  v20.receiver = self;
  v20.super_class = AXGestureRecorderMainViewController;
  [(AXGestureRecorderMainViewController *)&v20 viewDidLayoutSubviews];
  navigationController = [(AXGestureRecorderMainViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar frame];
  v6 = v5;

  view = [(AXGestureRecorderMainViewController *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  [(UIView *)self->_topView setFrame:0.0, 0.0, v6, v9];

  [(UIView *)self->_topView bounds];
  v11 = v10;
  [(UIView *)self->_topView bounds];
  v13 = v12;
  [(UIView *)self->_topView bounds];
  v15 = v13 + v14 + -1.0;
  [(UIView *)self->_topView bounds];
  v17 = v16;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  [(UIView *)self->_lineView setFrame:v11, v15, v17, 1.0 / v19];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v6.receiver = self;
  v6.super_class = AXGestureRecorderMainViewController;
  [(AXGestureRecorderMainViewController *)&v6 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  view = [(AXGestureRecorderMainViewController *)self view];
  [view layoutSubviews];
}

- (void)_saveButtonTapped:(id)tapped
{
  recorderType = [(AXGestureRecorderMainViewController *)self recorderType];
  if (recorderType == 3)
  {
LABEL_4:

    [(AXGestureRecorderMainViewController *)self _saveWithMessage:0];
    return;
  }

  if (recorderType != 1)
  {
    if (recorderType)
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
  navigationController = [(AXGestureRecorderMainViewController *)self navigationController];
  [navigationController setNavigationBarHidden:0 animated:1];

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
  navigationController = [(AXGestureRecorderMainViewController *)self navigationController];
  [navigationController setNavigationBarHidden:1 animated:1];

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

- (void)_hideChromeButtonTapped:(id)tapped
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = AXUILocalizedStringForKey(@"CustomHideChromeInstructionsFormat");
  v6 = [v4 localizedStringWithFormat:v5, 10];
  instructionsLabel = [(AXGestureRecorderMainViewController *)self instructionsLabel];
  [instructionsLabel setText:v6];

  instructionsLabel2 = [(AXGestureRecorderMainViewController *)self instructionsLabel];
  [instructionsLabel2 alpha];
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

- (void)_setLeftButtonIdentifier:(unint64_t)identifier enabled:(BOOL)enabled rightButtonIdentifier:(unint64_t)buttonIdentifier enabled:(BOOL)a6 animate:(BOOL)animate completion:(id)completion
{
  v8 = a6;
  enabledCopy = enabled;
  completionCopy = completion;
  [(AXGestureRecorderMainViewController *)self setLeftButtonIdentifier:identifier];
  [(AXGestureRecorderMainViewController *)self setRightButtonIdentifier:buttonIdentifier];
  v19 = 2;
  v20 = 2;
  v18 = 0;
  [(AXGestureRecorderMainViewController *)self _getButtonPropertiesForIdentifier:identifier enabled:enabledCopy color:&v20 title:&v18];
  v14 = v18;
  v17 = 0;
  [(AXGestureRecorderMainViewController *)self _getButtonPropertiesForIdentifier:buttonIdentifier enabled:v8 color:&v19 title:&v17];
  v15 = v17;
  controlsView = [(AXGestureRecorderMainViewController *)self controlsView];
  [controlsView setLeftButtonColor:v20 title:v14 enabled:enabledCopy rightButtonColor:v19 title:v15 enabled:v8 animationDuration:0.0 completion:completionCopy];
}

- (void)_getButtonPropertiesForIdentifier:(unint64_t)identifier enabled:(BOOL)enabled color:(int *)color title:(id *)title
{
  v7 = @"Stop";
  v8 = identifier != 4;
  if (identifier != 4)
  {
    v7 = 0;
  }

  if (identifier == 3)
  {
    v8 = 0;
    v7 = @"Play";
  }

  if (enabled)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = @"RE_RECORD";
  v11 = @"Stop";
  if (identifier != 2)
  {
    v11 = 0;
  }

  if (identifier == 1)
  {
    v12 = 0;
  }

  else
  {
    v9 = 0;
    v12 = identifier != 2;
  }

  if (identifier != 1)
  {
    v10 = v11;
  }

  if (identifier <= 2)
  {
    v13 = v9;
  }

  else
  {
    v13 = identifier == 3;
  }

  if (identifier <= 2)
  {
    v14 = v12;
  }

  else
  {
    v14 = v8;
  }

  if (identifier <= 2)
  {
    v15 = v10;
  }

  else
  {
    v15 = v7;
  }

  if (color)
  {
    *color = v13;
  }

  if (title)
  {
    if (v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = AXUILocalizedStringForKey(v15);
    }

    *title = v16;
  }
}

- (void)_updateProgressView:(id)view
{
  Current = CFAbsoluteTimeGetCurrent();
  [(AXGestureRecorderMainViewController *)self gestureRecordingDidStartTimeInterval];
  v6 = (Current - v5) / 60.0;
  if (v6 >= 1.0)
  {
    [(AXGestureRecorderMainViewController *)self _manageDisplayLinkManager:0];
    if ([(AXGestureRecorderMainViewController *)self _isForRealTimeGesture])
    {
      gestureRecorderViewController = [(AXGestureRecorderMainViewController *)self gestureRecorderViewController];
      [gestureRecorderViewController freezeAllDynamicFingerPaths];

      gestureRecorderViewController2 = [(AXGestureRecorderMainViewController *)self gestureRecorderViewController];
      [gestureRecorderViewController2 preventFurtherRecording];
    }

    v6 = 1.0;
  }

  controlsView = [(AXGestureRecorderMainViewController *)self controlsView];
  *&v9 = v6;
  [controlsView setProgress:v9];
}

- (void)_clearProgressView
{
  controlsView = [(AXGestureRecorderMainViewController *)self controlsView];
  [controlsView setProgress:0.0];

  [(AXGestureRecorderMainViewController *)self _manageDisplayLinkManager:0];
}

- (void)_enterWaitingMode
{
  [(AXGestureRecorderMainViewController *)self _setLeftButtonIdentifier:3 enabled:1 rightButtonIdentifier:1 enabled:1 animate:1 completion:&__block_literal_global_349];
  gestureRecorderViewController = [(AXGestureRecorderMainViewController *)self gestureRecorderViewController];
  [gestureRecorderViewController preventFurtherRecording];

  [(AXGestureRecorderMainViewController *)self _clearProgressView];
}

- (void)_enterReplayMode
{
  [(AXGestureRecorderMainViewController *)self setInReplayMode:1];
  [(AXGestureRecorderMainViewController *)self _setLeftButtonIdentifier:3 enabled:0 rightButtonIdentifier:1 enabled:0 animate:1 completion:&__block_literal_global_351];
  controlsView = [(AXGestureRecorderMainViewController *)self controlsView];
  [controlsView setProgress:0.0];

  [(AXGestureRecorderMainViewController *)self setGestureRecordingDidStartTimeInterval:CFAbsoluteTimeGetCurrent()];
  [(AXGestureRecorderMainViewController *)self _manageDisplayLinkManager:1];
  gestureRecorderViewController = [(AXGestureRecorderMainViewController *)self gestureRecorderViewController];
  [gestureRecorderViewController replayRecordedGesture];
}

- (void)_releaseOutlets
{
  [(AXGestureRecorderMainViewController *)self setControlsView:0];
  [(AXGestureRecorderMainViewController *)self setInstructionsLabel:0];

  [(AXGestureRecorderMainViewController *)self setSaveButton:0];
}

- (void)_reset
{
  saveButton = [(AXGestureRecorderMainViewController *)self saveButton];
  [saveButton setEnabled:0];

  _defaultInstructionalText = [(AXGestureRecorderMainViewController *)self _defaultInstructionalText];
  instructionsLabel = [(AXGestureRecorderMainViewController *)self instructionsLabel];
  [instructionsLabel setText:_defaultInstructionalText];

  instructionsLabel2 = [(AXGestureRecorderMainViewController *)self instructionsLabel];
  [instructionsLabel2 setAlpha:1.0];

  [(AXGestureRecorderMainViewController *)self _setLeftButtonIdentifier:3 enabled:0 rightButtonIdentifier:2 enabled:0 animate:0 completion:&__block_literal_global_353];
  controlsView = [(AXGestureRecorderMainViewController *)self controlsView];
  [controlsView setProgress:0.0];

  gestureRecorderViewController = [(AXGestureRecorderMainViewController *)self gestureRecorderViewController];
  [gestureRecorderViewController deleteAllFingerPaths];

  gestureRecorderViewController2 = [(AXGestureRecorderMainViewController *)self gestureRecorderViewController];
  [gestureRecorderViewController2 hideStaticView];

  gestureRecorderViewController3 = [(AXGestureRecorderMainViewController *)self gestureRecorderViewController];
  view = [gestureRecorderViewController3 view];
  [view setNeedsLayout];

  [(AXGestureRecorderMainViewController *)self setGestureRecordingDidStartTimeInterval:0.0];

  [(AXGestureRecorderMainViewController *)self _manageDisplayLinkManager:0];
}

- (void)_hide
{
  [(AXGestureRecorderMainViewController *)self _reset];

  [(AXGestureRecorderMainViewController *)self dismissViewControllerAnimated:1 completion:&__block_literal_global_355_0];
}

- (void)_saveWithMessage:(id)message
{
  v4 = MEMORY[0x1E69DC650];
  messageCopy = message;
  v6 = AXUILocalizedStringForKey(@"SaveAlertTitle");
  v7 = [v4 alertControllerWithTitle:v6 message:messageCopy preferredStyle:1];

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
  selfCopy = self;
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

- (BOOL)_canSaveGestureWithName:(id)name
{
  nameCopy = name;
  delegate = [(AXGestureRecorderMainViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AXGestureRecorderMainViewController *)self delegate];
    v8 = [delegate2 gestureRecorder:self canSaveGestureWithName:nameCopy];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)_didSaveGestureWithName:(id)name
{
  nameCopy = name;
  if ([(AXGestureRecorderMainViewController *)self recorderType]== 3)
  {
    gestureRecorderViewController = [(AXGestureRecorderMainViewController *)self gestureRecorderViewController];
    recordedReplayableGestureRepresentation = [gestureRecorderViewController recordedReplayableGestureRepresentation];

    if (recordedReplayableGestureRepresentation)
    {
      v6 = objc_alloc_init(MEMORY[0x1E6989888]);
      [v6 setName:nameCopy];
      [v6 addPointsFromReplayableGesture:recordedReplayableGestureRepresentation];
      delegate = [(AXGestureRecorderMainViewController *)self delegate];
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        delegate2 = [(AXGestureRecorderMainViewController *)self delegate];
        [delegate2 gestureRecorder:self saveNamedReplayableGesture:v6];
      }
    }

    [(AXGestureRecorderMainViewController *)self _hide];
LABEL_7:

    goto LABEL_9;
  }

  if (![(AXGestureRecorderMainViewController *)self recorderType])
  {
    gestureRecorderViewController2 = [(AXGestureRecorderMainViewController *)self gestureRecorderViewController];
    recordedReplayableGestureRepresentation = [gestureRecorderViewController2 recordedGesturePropertyListRepresentationWithName:nameCopy];

    if (recordedReplayableGestureRepresentation)
    {
      delegate3 = [(AXGestureRecorderMainViewController *)self delegate];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        delegate4 = [(AXGestureRecorderMainViewController *)self delegate];
        [delegate4 gestureRecorder:self saveGestureWithPropertyListRepresentation:recordedReplayableGestureRepresentation];
      }
    }

    goto LABEL_7;
  }

LABEL_9:
  [(AXGestureRecorderMainViewController *)self _hide];
}

- (void)_saveReplayableGesture
{
  gestureRecorderViewController = [(AXGestureRecorderMainViewController *)self gestureRecorderViewController];
  recordedReplayableGestureRepresentation = [gestureRecorderViewController recordedReplayableGestureRepresentation];

  if (recordedReplayableGestureRepresentation)
  {
    delegate = [(AXGestureRecorderMainViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(AXGestureRecorderMainViewController *)self delegate];
      [delegate2 gestureRecorder:self saveReplayableGesture:recordedReplayableGestureRepresentation];
    }
  }

  [(AXGestureRecorderMainViewController *)self _hide];
}

- (void)_savePoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  delegate = [(AXGestureRecorderMainViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(AXGestureRecorderMainViewController *)self delegate];
    [delegate2 gestureRecorder:self savePoint:{x, y}];
  }

  AXPerformBlockOnMainThreadAfterDelay();
}

- (id)_defaultInstructionalText
{
  recorderType = [(AXGestureRecorderMainViewController *)self recorderType];
  if (recorderType > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = AXUILocalizedStringForKey(off_1E812E058[recorderType]);
  }

  return v3;
}

- (BOOL)_isForRealTimeGesture
{
  recorderType = [(AXGestureRecorderMainViewController *)self recorderType];

  return AXGestureRecorderTypeIsForRealTimeGesture(recorderType);
}

- (void)_manageDisplayLinkManager:(BOOL)manager
{
  managerCopy = manager;
  isDisplayLinkInEffect = [(AXGestureRecorderMainViewController *)self isDisplayLinkInEffect];
  if (managerCopy)
  {
    if (isDisplayLinkInEffect)
    {
      return;
    }

    currentDisplayLinkManager = [MEMORY[0x1E6989868] currentDisplayLinkManager];
    [currentDisplayLinkManager addTarget:self selector:sel__updateProgressView_];
  }

  else
  {
    if (!isDisplayLinkInEffect)
    {
      return;
    }

    currentDisplayLinkManager = [MEMORY[0x1E6989868] currentDisplayLinkManager];
    [currentDisplayLinkManager removeTarget:self selector:sel__updateProgressView_];
  }

  [(AXGestureRecorderMainViewController *)self setIsDisplayLinkInEffect:managerCopy];
}

- (void)gestureRecorderViewController:(id)controller didStartRecordingAtomicFingerPathAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(AXGestureRecorderMainViewController *)self recorderType]== 2)
  {
    [(AXGestureRecorderMainViewController *)self _savePoint:x, y];

    [(AXGestureRecorderMainViewController *)self _enterWaitingMode];
  }

  else
  {
    saveButton = [(AXGestureRecorderMainViewController *)self saveButton];
    [saveButton setEnabled:1];

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
      controlsView = [(AXGestureRecorderMainViewController *)self controlsView];
      [controlsView setProgress:0.0];

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

- (void)gestureRecorderViewControllerDidStopRecordingAtomicFingerPath:(id)path
{
  if (![(AXGestureRecorderMainViewController *)self _isForRealTimeGesture])
  {
    currentDisplayLinkManager = [MEMORY[0x1E6989868] currentDisplayLinkManager];
    isPaused = [currentDisplayLinkManager isPaused];

    if ((isPaused & 1) == 0)
    {

      [(AXGestureRecorderMainViewController *)self _clearProgressView];
    }
  }
}

- (void)gestureRecorderViewControllerDidFinishReplayingRecordedGesture:(id)gesture
{
  gestureCopy = gesture;
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

- (BOOL)isChromeVisibleForGestureRecorderViewController:(id)controller
{
  navigationController = [(AXGestureRecorderMainViewController *)self navigationController];
  isNavigationBarHidden = [navigationController isNavigationBarHidden];

  return isNavigationBarHidden ^ 1;
}

- (void)gestureRecorderViewController:(id)controller setChromeVisible:(BOOL)visible
{
  if (visible)
  {
    [(AXGestureRecorderMainViewController *)self _unhideChrome];
  }

  else
  {
    [(AXGestureRecorderMainViewController *)self _hideChrome];
  }
}

- (void)gestureRecorderControlsView:(id)view buttonTappedAtIndex:(unint64_t)index
{
  viewCopy = view;
  if (index == 1)
  {
    v9 = viewCopy;
    rightButtonIdentifier = [(AXGestureRecorderMainViewController *)self rightButtonIdentifier];
  }

  else
  {
    if (index)
    {
      goto LABEL_13;
    }

    v9 = viewCopy;
    rightButtonIdentifier = [(AXGestureRecorderMainViewController *)self leftButtonIdentifier];
  }

  if (rightButtonIdentifier == 1)
  {
    [(AXGestureRecorderMainViewController *)self _reset];
    goto LABEL_12;
  }

  if (rightButtonIdentifier == 3)
  {
    [(AXGestureRecorderMainViewController *)self _enterReplayMode];
    goto LABEL_12;
  }

  v8 = rightButtonIdentifier == 2;
  viewCopy = v9;
  if (v8)
  {
    [(AXGestureRecorderMainViewController *)self _enterWaitingMode];
LABEL_12:
    viewCopy = v9;
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