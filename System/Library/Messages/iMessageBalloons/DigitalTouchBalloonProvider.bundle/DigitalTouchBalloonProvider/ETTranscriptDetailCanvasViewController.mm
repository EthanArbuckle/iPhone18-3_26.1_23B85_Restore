@interface ETTranscriptDetailCanvasViewController
- (BOOL)_canShowCompositionControls;
- (BOOL)_isRecognizer:(id)recognizer closeToButton:(id)button;
- (BOOL)_shouldAutoSend;
- (BOOL)_shouldDimColorPicker;
- (BOOL)_shouldShowCancelButton;
- (BOOL)_shouldShowOnButton;
- (BOOL)_shouldShowSendButton;
- (BOOL)_showingSendInProgress;
- (BOOL)_tapRecognizerShouldBegin:(id)begin;
- (BOOL)canShowReplayButton;
- (BOOL)shouldAutorotate;
- (BOOL)usesCompactKeyboardLayout;
- (ETTranscriptDetailCanvasViewController)init;
- (ETTranscriptDetailCanvasViewControllerPresentationDelegate)presentationDelegate;
- (double)elapsedTimeSinceStartOfMessage:(id)message;
- (id)_largeVideoOnButton;
- (id)_smallVideoOnButton;
- (id)_videoProgressTimeString:(unint64_t)string;
- (id)colorPicker;
- (unint64_t)supportedInterfaceOrientations;
- (void)_backToPreviewButtonTapped;
- (void)_cameraFlipButtonTapped;
- (void)_cancelButtonTapped;
- (void)_clearPhotoSendMessageTimer;
- (void)_composingOnlyIntroMessageType:(BOOL)type;
- (void)_dismissColorWheel;
- (void)_endIntroMessage;
- (void)_endMediaMessageComposition;
- (void)_endPhotoMessageComposition;
- (void)_expandColorPickerButtonTapped;
- (void)_hideVideoController;
- (void)_moveComposedMessagesIntoMediaMessage;
- (void)_photoCaptureButtonTapped;
- (void)_photoSendMessageTimerFired;
- (void)_sendButtonTapped;
- (void)_setCameraEnabled:(BOOL)enabled;
- (void)_setEntryViewHidden:(BOOL)hidden;
- (void)_setShowingCompositionControls:(BOOL)controls animated:(BOOL)animated;
- (void)_setShowingGestureInstructionView:(BOOL)view;
- (void)_setShowingVideoProgress:(BOOL)progress;
- (void)_setVideoZoomEnabled:(BOOL)enabled;
- (void)_showCompositionControlsTimerFired;
- (void)_showWriteErrorAlertForMediaType:(unint64_t)type outOfSpaceError:(BOOL)error completion:(id)completion;
- (void)_startCameraPreview;
- (void)_startPhotoSendMessageTimer;
- (void)_startShowCompositionControlsTimer;
- (void)_updateBackToPreviewButton;
- (void)_updateCompositionControls;
- (void)_updateCompositionControlsCenter;
- (void)_updateGestureInstructionButton;
- (void)_updateGestureInstructionViewFrame;
- (void)_updateLandscapeTrap;
- (void)_updateMediaInstructionView;
- (void)_updateSendButton;
- (void)_updateSkipButtonFrame;
- (void)_updateVideoOnButtonForHorizontalSizeClass:(int64_t)class;
- (void)_updateVideoOnButtonOpacity;
- (void)_updateVideoPreviewFrame;
- (void)_updateVideoProgressFrame;
- (void)_updateVideoRecorderTime:(unint64_t)time;
- (void)_videoRecordButtonTapped;
- (void)_videoZoomGestureRecognized:(id)recognized;
- (void)canvasView:(id)view didUpdateComposingMessageType:(unsigned __int16)type;
- (void)colorPicker:(id)picker requestsPresentColorWheel:(id)wheel;
- (void)dataSource:(id)source startPlaybackWithCompletion:(id)completion;
- (void)dataSourceStopPlayback:(id)playback;
- (void)didBeginComposingMessage;
- (void)didChangeColorPickerColor;
- (void)didEndComposingMessage;
- (void)expandUI;
- (void)loadView;
- (void)setPlayingMessages:(BOOL)messages;
- (void)traitCollectionDidChange:(id)change;
- (void)updateVideoUI;
- (void)videoControllerDidEndPhotoCapture:(id)capture photoImage:(id)image;
- (void)videoControllerDidEndPreview:(id)preview;
- (void)videoControllerDidEndRecording:(id)recording mediaURL:(id)l withError:(id)error;
- (void)videoControllerDidInterruptPreview:(id)preview withInterruptionReason:(int64_t)reason;
- (void)videoControllerDidStartPreview:(id)preview;
- (void)videoControllerDidStartRecording:(id)recording;
- (void)videoControllerDidStopPreview:(id)preview;
- (void)videoControllerWillBeginPhotoCapture:(id)capture;
- (void)videoControllerWillCancelRecording:(id)recording;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewDidTransitionToCompactPresentation;
- (void)viewDidTransitionToExpandedPresentation;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation ETTranscriptDetailCanvasViewController

- (ETTranscriptDetailCanvasViewController)init
{
  v62.receiver = self;
  v62.super_class = ETTranscriptDetailCanvasViewController;
  v2 = [(ETTranscriptDetailCanvasViewController *)&v62 init];
  if (v2)
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [UIButton buttonWithType:1];
    expandToCameraButton = v2->_expandToCameraButton;
    v2->_expandToCameraButton = v4;

    [(UIButton *)v2->_expandToCameraButton addTarget:v2 action:"_expandToCameraButtonTapped" forControlEvents:64];
    v6 = v2->_expandToCameraButton;
    v7 = [UIImage imageNamed:@"ExpandToCamera" inBundle:v3];
    [(UIButton *)v6 setImage:v7 forState:0];

    v8 = v2->_expandToCameraButton;
    v9 = +[UIColor whiteColor];
    [(UIButton *)v8 setTintColor:v9];

    v10 = v2->_expandToCameraButton;
    v11 = [UIColor colorWithWhite:0.4 alpha:1.0];
    [(UIButton *)v10 setBackgroundColor:v11];

    layer = [(UIButton *)v2->_expandToCameraButton layer];
    [layer setCornerRadius:20.0];

    [(UIButton *)v2->_expandToCameraButton setFrame:0.0, 0.0, 40.0, 40.0];
    [(UIButton *)v2->_expandToCameraButton setAlpha:0.0];
    v13 = [UIButton buttonWithType:1];
    expandColorPickerButton = v2->_expandColorPickerButton;
    v2->_expandColorPickerButton = v13;

    [(UIButton *)v2->_expandColorPickerButton addTarget:v2 action:"_expandColorPickerButtonTapped" forControlEvents:64];
    v15 = v2->_expandColorPickerButton;
    v16 = +[UIColor clearColor];
    [(UIButton *)v15 setBackgroundColor:v16];

    layer2 = [(UIButton *)v2->_expandColorPickerButton layer];
    [layer2 setCornerRadius:20.0];

    layer3 = [(UIButton *)v2->_expandColorPickerButton layer];
    v19 = +[UIColor redColor];
    [layer3 setBorderColor:{objc_msgSend(v19, "CGColor")}];

    layer4 = [(UIButton *)v2->_expandColorPickerButton layer];
    [layer4 setBorderWidth:13.0];

    [(UIButton *)v2->_expandColorPickerButton setFrame:0.0, 0.0, 40.0, 40.0];
    [(UIButton *)v2->_expandColorPickerButton setAlpha:0.0];
    v21 = [UIButton buttonWithType:1];
    sendButton = v2->_sendButton;
    v2->_sendButton = v21;

    [(UIButton *)v2->_sendButton addTarget:v2 action:"_sendButtonTapped" forControlEvents:64];
    v23 = v2->_sendButton;
    v24 = [UIImage imageNamed:@"Send" inBundle:v3];
    [(UIButton *)v23 setBackgroundImage:v24 forState:0];

    [(UIButton *)v2->_sendButton sizeToFit];
    [(UIButton *)v2->_sendButton setAlpha:0.0];
    LODWORD(v25) = -1093874483;
    [(UIButton *)v2->_sendButton setCharge:v25];
    v26 = [UIButton buttonWithType:1];
    cameraFlipButton = v2->_cameraFlipButton;
    v2->_cameraFlipButton = v26;

    [(UIButton *)v2->_cameraFlipButton addTarget:v2 action:"_cameraFlipButtonTapped" forControlEvents:64];
    v28 = v2->_cameraFlipButton;
    v29 = [UIImage imageNamed:@"CameraFlip" inBundle:v3];
    [(UIButton *)v28 setBackgroundImage:v29 forState:0];

    [(UIButton *)v2->_cameraFlipButton sizeToFit];
    [(UIButton *)v2->_cameraFlipButton setAlpha:0.0];
    LODWORD(v30) = -1093874483;
    [(UIButton *)v2->_cameraFlipButton setCharge:v30];
    v31 = [UIButton buttonWithType:1];
    backToPreviewButton = v2->_backToPreviewButton;
    v2->_backToPreviewButton = v31;

    [(UIButton *)v2->_backToPreviewButton addTarget:v2 action:"_backToPreviewButtonTapped" forControlEvents:64];
    v33 = v2->_backToPreviewButton;
    v34 = [UIImage imageNamed:@"BackToPreview" inBundle:v3];
    [(UIButton *)v33 setBackgroundImage:v34 forState:0];

    [(UIButton *)v2->_backToPreviewButton sizeToFit];
    [(UIButton *)v2->_backToPreviewButton setAlpha:0.0];
    LODWORD(v35) = -1093874483;
    [(UIButton *)v2->_backToPreviewButton setCharge:v35];
    v36 = [UIButton buttonWithType:1];
    gestureInstructionButton = v2->_gestureInstructionButton;
    v2->_gestureInstructionButton = v36;

    [(UIButton *)v2->_gestureInstructionButton addTarget:v2 action:"_gestureInstructionButtonTapped" forControlEvents:64];
    v38 = v2->_gestureInstructionButton;
    v39 = [UIImage imageNamed:@"GestureInstructionButton" inBundle:v3];
    [(UIButton *)v38 setBackgroundImage:v39 forState:0];

    [(UIButton *)v2->_gestureInstructionButton sizeToFit];
    [(UIButton *)v2->_gestureInstructionButton setAlpha:0.0];
    LODWORD(v40) = -1093874483;
    [(UIButton *)v2->_gestureInstructionButton setCharge:v40];
    v41 = [ETVideoRecordButton recordingRedColorDimmed:0];
    v42 = objc_alloc_init(UIView);
    videoProgressBar = v2->_videoProgressBar;
    v2->_videoProgressBar = v42;

    [(UIView *)v2->_videoProgressBar setBackgroundColor:v41];
    [(UIView *)v2->_videoProgressBar setAlpha:0.0];
    v44 = objc_alloc_init(UIView);
    videoProgressDot = v2->_videoProgressDot;
    v2->_videoProgressDot = v44;

    [(UIView *)v2->_videoProgressDot setBackgroundColor:v41];
    layer5 = [(UIView *)v2->_videoProgressDot layer];
    [layer5 setCornerRadius:2.5];

    [(UIView *)v2->_videoProgressDot setAlpha:0.0];
    v47 = objc_alloc_init(UILabel);
    videoProgressTimeLabel = v2->_videoProgressTimeLabel;
    v2->_videoProgressTimeLabel = v47;

    v49 = v2->_videoProgressTimeLabel;
    v50 = +[UIColor whiteColor];
    [(UILabel *)v49 setTextColor:v50];

    [(UILabel *)v2->_videoProgressTimeLabel setTextAlignment:0];
    v51 = v2->_videoProgressTimeLabel;
    v52 = [UIFont systemFontOfSize:16.0];
    [(UILabel *)v51 setFont:v52];

    v53 = v2->_videoProgressTimeLabel;
    v54 = [(ETTranscriptDetailCanvasViewController *)v2 _videoProgressTimeString:10.0];
    [(UILabel *)v53 setText:v54];

    [(UILabel *)v2->_videoProgressTimeLabel setAlpha:0.0];
    v55 = +[UIScreen mainScreen];
    traitCollection = [v55 traitCollection];
    -[ETTranscriptDetailCanvasViewController _updateVideoOnButtonForHorizontalSizeClass:](v2, "_updateVideoOnButtonForHorizontalSizeClass:", [traitCollection horizontalSizeClass]);

    v57 = objc_alloc_init(ETLandscapeTrapView);
    landscapeTrapView = v2->_landscapeTrapView;
    v2->_landscapeTrapView = v57;

    canvasView = [(ETTranscriptDetailCanvasViewController *)v2 canvasView];
    [canvasView setTimeSource:v2];

    v60 = v2;
  }

  return v2;
}

- (void)loadView
{
  v4 = objc_alloc_init(ETGestureIgnoringView);
  canvasView = [(ETTranscriptDetailCanvasViewController *)self canvasView];
  [(ETGestureIgnoringView *)v4 ignoreGesturesInView:canvasView];

  [(ETTranscriptDetailCanvasViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = ETTranscriptDetailCanvasViewController;
  [(ETTranscriptDetailCanvasViewController *)&v6 viewDidLoad];
  view = [(ETTranscriptDetailCanvasViewController *)self view];
  [view addSubview:self->_videoOnButton];
  [view addSubview:self->_sendButton];
  _replayButton = [(ETTranscriptDetailCanvasViewController *)self _replayButton];
  [view addSubview:_replayButton];

  [view addSubview:self->_cameraFlipButton];
  [view addSubview:self->_backToPreviewButton];
  [view addSubview:self->_videoProgressBar];
  [view addSubview:self->_videoProgressDot];
  [view addSubview:self->_videoProgressTimeLabel];
  [view addSubview:self->_expandToCameraButton];
  [view addSubview:self->_expandColorPickerButton];
  colorWheel = [(ETHorizontalColorPicker *)self->_expandedColorPicker colorWheel];
  [view addSubview:colorWheel];

  [view addSubview:self->_gestureInstructionButton];
}

- (BOOL)usesCompactKeyboardLayout
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 0;
  }

  presentationDelegate = [(ETTranscriptDetailCanvasViewController *)self presentationDelegate];
  v7 = [presentationDelegate canvasViewControllerUsesCompactKeyboardLayout:self];

  return v7;
}

- (id)colorPicker
{
  expandedColorPicker = self->_expandedColorPicker;
  if (!expandedColorPicker)
  {
    v4 = [[ETHorizontalColorPicker alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v5 = self->_expandedColorPicker;
    self->_expandedColorPicker = v4;

    [(ETHorizontalColorPicker *)self->_expandedColorPicker setPresentationDelegate:self];
    expandedColorPicker = self->_expandedColorPicker;
  }

  return expandedColorPicker;
}

- (void)viewDidTransitionToExpandedPresentation
{
  self->_requestedExpansion = 0;
  view = [(ETTranscriptDetailCanvasViewController *)self view];
  [view setNeedsLayout];

  [(ETTranscriptDetailCanvasViewController *)self setPlaybackEnabled:1];
  [(ETTranscriptDetailCanvasViewController *)self startMessagePlaybackLoop];
  if (self->_expandToCameraPreview)
  {
    [(ETTranscriptDetailCanvasViewController *)self _startCameraPreview];
  }

  else if (self->_expandToGestureInstructionView)
  {
    [(ETTranscriptDetailCanvasViewController *)self _setShowingGestureInstructionView:1];
    self->_expandToGestureInstructionView = 0;
  }

  colorPicker = [(ETTranscriptDetailCanvasViewController *)self colorPicker];
  [colorPicker setAlpha:1.0];
}

- (void)viewDidTransitionToCompactPresentation
{
  self->_requestedExpansion = 0;
  view = [(ETTranscriptDetailCanvasViewController *)self view];
  [view setNeedsLayout];

  colorPicker = [(ETTranscriptDetailCanvasViewController *)self colorPicker];
  [colorPicker setAlpha:1.0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = ETTranscriptDetailCanvasViewController;
  [(ETTranscriptDetailCanvasViewController *)&v5 viewDidDisappear:disappear];
  if (([(ETTranscriptDetailCanvasViewController *)self ignoreAppearanceCallbacks]& 1) == 0)
  {
    if (self->_mediaMessage)
    {
      [(ETVideoController *)self->_videoController deleteWrittenAssets];
    }

    [(ETTranscriptDetailCanvasViewController *)self _endMediaMessageComposition];
    [(ETTranscriptDetailCanvasViewController *)self _updateColorPickerEnabled];
    view = [(ETTranscriptDetailCanvasViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ETTranscriptDetailCanvasViewController;
  [(ETTranscriptDetailCanvasViewController *)&v4 viewWillAppear:appear];
  [(ETTranscriptDetailCanvasViewController *)self ignoreAppearanceCallbacks];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ETTranscriptDetailCanvasViewController;
  [(ETTranscriptDetailCanvasViewController *)&v4 viewDidAppear:appear];
  [(ETTranscriptDetailCanvasViewController *)self ignoreAppearanceCallbacks];
}

- (void)_setShowingGestureInstructionView:(BOOL)view
{
  viewCopy = view;
  if ([(ETTranscriptDetailCanvasViewController *)self _gestureInstructionViewIsShown]!= view)
  {
    gestureInstructionView = self->_gestureInstructionView;
    if (viewCopy)
    {
      if (!gestureInstructionView)
      {
        v6 = objc_alloc_init(GestureInstructionView);
        v7 = self->_gestureInstructionView;
        self->_gestureInstructionView = v6;

        view = [(ETTranscriptDetailCanvasViewController *)self view];
        v9 = self->_gestureInstructionView;
        canvasView = [(ETTranscriptDetailCanvasViewController *)self canvasView];
        [view insertSubview:v9 aboveSubview:canvasView];

        gestureInstructionView = self->_gestureInstructionView;
      }

      v11 = 1.0;
    }

    else
    {
      v11 = 0.0;
    }

    [(GestureInstructionView *)gestureInstructionView setAlpha:v11];
    [(ETTranscriptDetailCanvasViewController *)self _updateColorPickerEnabled];
    [(ETTranscriptDetailCanvasViewController *)self setComposeDisabled:viewCopy];
    [(ETTranscriptDetailCanvasViewController *)self _updatePlaybackControls];
    [(ETTranscriptDetailCanvasViewController *)self _updateVideoOnButtonOpacity];

    [(ETTranscriptDetailCanvasViewController *)self _updateGestureInstructionButton];
  }
}

- (void)_showCompositionControlsTimerFired
{
  showCompositionControlsTimer = self->_showCompositionControlsTimer;
  self->_showCompositionControlsTimer = 0;

  _canShowCompositionControls = [(ETTranscriptDetailCanvasViewController *)self _canShowCompositionControls];

  [(ETTranscriptDetailCanvasViewController *)self _setShowingCompositionControls:_canShowCompositionControls animated:1];
}

- (void)_startShowCompositionControlsTimer
{
  [(NSTimer *)self->_showCompositionControlsTimer invalidate];
  self->_showCompositionControlsTimer = [NSTimer scheduledTimerWithTimeInterval:self target:"_showCompositionControlsTimerFired" selector:0 userInfo:0 repeats:3.0];

  _objc_release_x1();
}

- (void)_expandColorPickerButtonTapped
{
  [(ETTranscriptDetailCanvasViewController *)self _setShowingCompositionControls:0 animated:1];

  [(ETTranscriptDetailCanvasViewController *)self _startShowCompositionControlsTimer];
}

- (void)_setShowingCompositionControls:(BOOL)controls animated:(BOOL)animated
{
  if (self->_showingCompositionControls != controls)
  {
    v22 = v7;
    v23 = v6;
    v24 = v4;
    v25 = v5;
    animatedCopy = animated;
    self->_showingCompositionControls = controls;
    colorPicker = [(ETTranscriptDetailCanvasViewController *)self colorPicker];
    v12 = colorPicker;
    v13 = self->_expansionState != 1;
    if (!controls)
    {
      [colorPicker setAlpha:0.0];
    }

    self->_animatingCompositionControls = animatedCopy;
    if (animatedCopy)
    {
      v14 = 0.25;
    }

    else
    {
      v14 = 0.0;
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_3BA0;
    v17[3] = &unk_24808;
    controlsCopy = controls;
    v17[4] = self;
    v18 = v12;
    v20 = !controls;
    v21 = v13;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_3CB0;
    v16[3] = &unk_24830;
    v16[4] = self;
    v15 = v12;
    [UIView animateWithDuration:v17 animations:v16 completion:v14];
  }
}

- (BOOL)_canShowCompositionControls
{
  if (![(ETTranscriptDetailCanvasViewController *)self usesCompactKeyboardLayout])
  {
    return 0;
  }

  canvasView = [(ETTranscriptDetailCanvasViewController *)self canvasView];
  v4 = ([canvasView isComposingSketch] & 1) == 0 && self->_expansionState != 1;

  return v4;
}

- (void)_updateCompositionControlsCenter
{
  view = [(ETTranscriptDetailCanvasViewController *)self view];
  [view bounds];
  v5 = v4;
  rect = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  canvasView = [(ETTranscriptDetailCanvasViewController *)self canvasView];
  [canvasView frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v27.origin.x = v5;
  v27.origin.y = v7;
  v27.size.width = v9;
  v27.size.height = v11;
  MidY = CGRectGetMidY(v27);
  v28.origin.x = v14;
  v28.origin.y = v16;
  v28.size.width = v18;
  v28.size.height = v20;
  [(UIButton *)self->_expandColorPickerButton setCenter:CGRectGetMinX(v28) * 0.5, MidY];
  v29.origin.x = v14;
  v29.origin.y = v16;
  v29.size.width = v18;
  v29.size.height = v20;
  MaxX = CGRectGetMaxX(v29);
  v30.origin.x = rect;
  v30.origin.y = v7;
  v30.size.width = v9;
  v30.size.height = v11;
  v23 = MaxX + (CGRectGetMaxX(v30) - MaxX) * 0.5;
  expandToCameraButton = self->_expandToCameraButton;

  [(UIButton *)expandToCameraButton setCenter:v23, MidY];
}

- (void)_updateCompositionControls
{
  [(ETTranscriptDetailCanvasViewController *)self _updateCompositionControlsCenter];
  colorPicker = [(ETTranscriptDetailCanvasViewController *)self colorPicker];
  selectedColor = [colorPicker selectedColor];
  cGColor = [selectedColor CGColor];

  layer = [(UIButton *)self->_expandColorPickerButton layer];
  [layer setBorderColor:cGColor];

  _canShowCompositionControls = [(ETTranscriptDetailCanvasViewController *)self _canShowCompositionControls];

  [(ETTranscriptDetailCanvasViewController *)self _setShowingCompositionControls:_canShowCompositionControls animated:0];
}

- (void)didChangeColorPickerColor
{
  layer = [(UIButton *)self->_expandColorPickerButton layer];
  colorPicker = [(ETTranscriptDetailCanvasViewController *)self colorPicker];
  selectedColor = [colorPicker selectedColor];
  [layer setBorderColor:{objc_msgSend(selectedColor, "CGColor")}];

  if ([(ETTranscriptDetailCanvasViewController *)self _canShowCompositionControls])
  {

    [(ETTranscriptDetailCanvasViewController *)self _startShowCompositionControlsTimer];
  }
}

- (void)didBeginComposingMessage
{
  _canShowCompositionControls = [(ETTranscriptDetailCanvasViewController *)self _canShowCompositionControls];

  [(ETTranscriptDetailCanvasViewController *)self _setShowingCompositionControls:_canShowCompositionControls animated:1];
}

- (void)didEndComposingMessage
{
  _canShowCompositionControls = [(ETTranscriptDetailCanvasViewController *)self _canShowCompositionControls];

  [(ETTranscriptDetailCanvasViewController *)self _setShowingCompositionControls:_canShowCompositionControls animated:1];
}

- (void)_updateLandscapeTrap
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    view = [(ETTranscriptDetailCanvasViewController *)self view];
    landscapeTrapView = self->_landscapeTrapView;
    v13 = view;
    [view bounds];
    [(ETLandscapeTrapView *)landscapeTrapView setFrame:?];
    view2 = [(ETTranscriptDetailCanvasViewController *)self view];
    window = [view2 window];
    windowScene = [window windowScene];
    interfaceOrientation = [windowScene interfaceOrientation];
    v11 = interfaceOrientation != &dword_0 + 1;

    if (self->_showingLandscapeTrap != v11)
    {
      self->_showingLandscapeTrap = v11;
      if (interfaceOrientation == &dword_0 + 1)
      {
        [(ETLandscapeTrapView *)self->_landscapeTrapView removeFromSuperview];
      }

      else
      {
        [v13 addSubview:self->_landscapeTrapView];
      }

      LOBYTE(v12) = self->_showingLandscapeTrap;
      [(ETLandscapeTrapView *)self->_landscapeTrapView setAlpha:v12];
    }
  }
}

- (void)viewWillLayoutSubviews
{
  v68.receiver = self;
  v68.super_class = ETTranscriptDetailCanvasViewController;
  [(ETTranscriptDetailCanvasViewController *)&v68 viewWillLayoutSubviews];
  view = [(ETTranscriptDetailCanvasViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  canvasView = [(ETTranscriptDetailCanvasViewController *)self canvasView];
  [(ETTranscriptDetailCanvasViewController *)self _updateLandscapeTrap];
  if (!self->_showingLandscapeTrap)
  {
    presentationDelegate = [(ETTranscriptDetailCanvasViewController *)self presentationDelegate];
    [presentationDelegate canvasViewControllerPercentExpanded:self];
    v11 = v10;

    v12 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v12 userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 || !self->_requestedExpansion && (v11 <= 0.0 || v11 >= 1.0 || self->_expansionState == 1))
    {
      if (v11 == 0.0 && self->_expansionState)
      {
        self->_expansionState = 0;
      }

      else if (v11 == 1.0 && self->_expansionState != 2)
      {
        self->_expansionState = 2;
        colorPicker = [(ETTranscriptDetailCanvasViewController *)self colorPicker];
        [colorPicker setAlpha:1.0];
      }
    }

    else
    {
      self->_expansionState = 1;
      colorPicker2 = [(ETTranscriptDetailCanvasViewController *)self colorPicker];
      [colorPicker2 setAlpha:0.0];

      v67[0] = _NSConcreteStackBlock;
      v67[1] = 3221225472;
      v67[2] = sub_4800;
      v67[3] = &unk_24858;
      v67[4] = self;
      [UIView performWithoutAnimation:v67];
      [(ETTranscriptDetailCanvasViewController *)self _dismissColorWheel];
      [(ETTranscriptDetailCanvasViewController *)self _setShowingCompositionControls:0 animated:0];
      [(ETTranscriptDetailCanvasViewController *)self _setShowingGestureInstructionView:0];
      [(ETTranscriptDetailCanvasViewController *)self setPlaybackEnabled:0];
    }

    usesCompactKeyboardLayout = [(ETTranscriptDetailCanvasViewController *)self usesCompactKeyboardLayout];
    if (usesCompactKeyboardLayout)
    {
      v17 = 3;
    }

    else
    {
      v17 = 0;
    }

    [(ETHorizontalColorPicker *)self->_expandedColorPicker setColorCircleSize:v17];
    [(ETHorizontalColorPicker *)self->_expandedColorPicker sizeThatFitsColumns:2];
    v20 = v19;
    v21 = 80.0;
    if (usesCompactKeyboardLayout)
    {
      v22 = v20;
    }

    else
    {
      v21 = 0.0;
      v22 = 0.0;
    }

    v23 = v5 + -16.0 - v21 - v22;
    if (v23 * 1.25 <= v7 + -48.0)
    {
      v24 = v23 * 1.25;
    }

    else
    {
      v24 = v7 + -48.0;
    }

    if (v23 * 1.25 <= v7 + -48.0)
    {
      v25 = v23;
    }

    else
    {
      v25 = (v7 + -48.0) / 1.25;
    }

    if (usesCompactKeyboardLayout)
    {
      v26 = (v5 - v25) * 0.5;
      v27 = v18;
      [(ETHorizontalColorPicker *)self->_expandedColorPicker setShouldCompressSpacingBetweenColumns:v20 > v26 + -8.0 + -14.0];
      shouldCompressSpacingBetweenColumns = [(ETHorizontalColorPicker *)self->_expandedColorPicker shouldCompressSpacingBetweenColumns];
      v29 = (v26 + -8.0 - v20) * 0.5;
      if (shouldCompressSpacingBetweenColumns)
      {
        v29 = 8.0;
      }

      v64 = v29;
      v65 = v27;
      v30 = (v7 - v27) * 0.5;
      [(ETTranscriptDetailCanvasViewController *)self _setShowingGestureInstructionView:0, (v7 - v24) * 0.5];
    }

    else
    {
      [(ETTranscriptDetailCanvasViewController *)self _topMarginForColorPicker];
      v32 = v7 - v31;
      v33 = (v7 - v31) / 1.25;
      if (v24 > v32)
      {
        v24 = v32;
        v25 = v33;
      }

      [(ETHorizontalColorPicker *)self->_expandedColorPicker minimumRowHeight];
      if (v7 - v24 + -14.0 < v34)
      {
        v25 = (v32 + -14.0 - v34) / 1.25;
      }

      [(ETHorizontalColorPicker *)self->_expandedColorPicker sizeThatFits:v25];
      v20 = v35;
      v37 = v36;
      v38 = (v5 - v35) * 0.5;
      [(ETTranscriptDetailCanvasViewController *)self _topMarginForColorPicker];
      v30 = v39 * 0.5;
      v64 = v38;
      v65 = v37;
      v69.origin.x = v38;
      v69.origin.y = v30;
      v69.size.width = v20;
      v69.size.height = v37;
      CGRectGetMidY(v69);
      [(ETTranscriptDetailCanvasViewController *)self _setShowingCompositionControls:0 animated:0];
    }

    v40 = +[UIScreen mainScreen];
    [v40 scale];
    v42 = v41;

    UIRectIntegralWithScale();
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v63 = v49;
    [canvasView setFrame:?];
    UIRoundToViewScale();
    v51 = v50;
    layer = [canvasView layer];
    [layer setCornerRadius:v51];

    [(ETTranscriptDetailCanvasViewController *)self _updateCompositionControlsCenter];
    if (self->_showingCompositionControls)
    {
      expandedColorPicker = self->_expandedColorPicker;
      [(UIButton *)self->_expandColorPickerButton center];
      [(ETHorizontalColorPicker *)expandedColorPicker setCenter:?];
    }

    else if (!self->_animatingCompositionControls)
    {
      v66[0] = _NSConcreteStackBlock;
      v66[1] = 3221225472;
      v66[2] = sub_483C;
      v66[3] = &unk_24880;
      v66[4] = self;
      *&v66[5] = v64;
      *&v66[6] = v30;
      *&v66[7] = v20;
      *&v66[8] = v65;
      v66[9] = v42;
      [UIView performWithoutAnimation:v66];
      [(ETTranscriptDetailCanvasViewController *)self _updateCompositionControls];
    }

    v70.origin.x = v64;
    v70.origin.y = v30;
    v70.size.width = v20;
    v70.size.height = v65;
    MidX = CGRectGetMidX(v70);
    v71.origin.x = v64;
    v71.origin.y = v30;
    v71.size.width = v20;
    v71.size.height = v65;
    MidY = CGRectGetMidY(v71);
    self->_expandedColorPickerCenter.x = MidX;
    self->_expandedColorPickerCenter.y = MidY;
    colorWheel = [(ETHorizontalColorPicker *)self->_expandedColorPicker colorWheel];
    [colorWheel setFrame:{v63, v44, v46, v48}];

    [(ETTranscriptDetailCanvasViewController *)self _updateGestureInstructionViewFrame];
    [(ETTranscriptDetailCanvasViewController *)self _updateVideoOnButtonOpacity];
    [(ETTranscriptDetailCanvasViewController *)self updateVideoUI];
    _cancelButton = [(ETTranscriptDetailCanvasViewController *)self _cancelButton];
    [_cancelButton center];
    v59 = v58;
    v61 = v60;

    _replayButton = [(ETTranscriptDetailCanvasViewController *)self _replayButton];
    [_replayButton setCenter:{v59, v61}];

    [(ETTranscriptDetailCanvasViewController *)self _updateBackToPreviewButton];
    [(ETTranscriptDetailCanvasViewController *)self _updatePlaybackControls];
    [(ETTranscriptDetailCanvasViewController *)self _updateVideoProgressFrame];
  }
}

- (BOOL)canShowReplayButton
{
  if ([(ETVideoController *)self->_videoController videoState])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = ETTranscriptDetailCanvasViewController;
  return [(ETTranscriptDetailCanvasViewController *)&v4 canShowReplayButton];
}

- (BOOL)_shouldAutoSend
{
  if (([(ETTranscriptDetailCanvasViewController *)self isComposingCompositeMessage]& 1) != 0)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    canvasView = [(ETTranscriptDetailCanvasViewController *)self canvasView];
    v3 = [canvasView isComposingSketch] ^ 1;
  }

  return v3;
}

- (void)colorPicker:(id)picker requestsPresentColorWheel:(id)wheel
{
  wheelCopy = wheel;
  canvasView = [(ETTranscriptDetailCanvasViewController *)self canvasView];
  [canvasView setPaused:1];

  canvasView2 = [(ETTranscriptDetailCanvasViewController *)self canvasView];
  [canvasView2 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [wheelCopy setFrame:{v9, v11, v13, v15}];
  [wheelCopy presentAnimatedWithDuration:0 completion:0.2];

  [(ETHorizontalColorPicker *)self->_expandedColorPicker selectedCircle];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_4A8C;
  v17[3] = &unk_248A8;
  v18 = v17[4] = self;
  v16 = v18;
  [UIView animateWithDuration:v17 animations:0.2];
}

- (void)_dismissColorWheel
{
  colorWheel = [(ETHorizontalColorPicker *)self->_expandedColorPicker colorWheel];
  if ([colorWheel isPresented])
  {
    objc_initWeak(&location, self);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_4D28;
    v12[3] = &unk_248D0;
    objc_copyWeak(&v13, &location);
    v4 = objc_retainBlock(v12);
    [colorWheel dismissAnimatedWithDuration:v4 completion:0.3];
    longPressRecognizer = [(ETHorizontalColorPicker *)self->_expandedColorPicker longPressRecognizer];
    [longPressRecognizer setEnabled:1];

    [(ETHorizontalColorPicker *)self->_expandedColorPicker selectedCircle];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_4DB4;
    v10[3] = &unk_248A8;
    v6 = v10[4] = self;
    v11 = v6;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_4E44;
    v8[3] = &unk_248F8;
    v7 = v4;
    v9 = v7;
    [UIView animateWithDuration:v10 animations:v8 completion:0.3];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)setPlayingMessages:(BOOL)messages
{
  messagesCopy = messages;
  v5.receiver = self;
  v5.super_class = ETTranscriptDetailCanvasViewController;
  [(ETTranscriptDetailCanvasViewController *)&v5 setPlayingMessages:?];
  v4 = +[UIApplication sharedApplication];
  [v4 setIdleTimerDisabled:messagesCopy];
}

- (void)expandUI
{
  self->_requestedExpansion = 1;
  presentationDelegate = [(ETTranscriptDetailCanvasViewController *)self presentationDelegate];
  [presentationDelegate canvasViewController:self requestsPresentationStyleExpanded:1];
}

- (BOOL)_showingSendInProgress
{
  [(UIButton *)self->_sendButton alpha];
  if (v3 == 0.0)
  {
    return 0;
  }

  else
  {
    return [(UIButton *)self->_sendButton isEnabled]^ 1;
  }
}

- (BOOL)_shouldShowCancelButton
{
  if (self->_expandToCameraPreview)
  {
    return 0;
  }

  v13 = v2;
  v14 = v3;
  v12.receiver = self;
  v12.super_class = ETTranscriptDetailCanvasViewController;
  if (![(ETTranscriptDetailCanvasViewController *)&v12 _shouldShowCancelButton])
  {
    goto LABEL_7;
  }

  videoController = self->_videoController;
  if (!videoController)
  {
    v8 = 1;
    goto LABEL_9;
  }

  if ([(ETVideoController *)videoController videoState]== &dword_0 + 1)
  {
    canvasView = [(ETTranscriptDetailCanvasViewController *)self canvasView];
    v8 = [canvasView isComposing] ^ 1;
  }

  else
  {
LABEL_7:
    v8 = 0;
  }

LABEL_9:
  canvasView2 = [(ETTranscriptDetailCanvasViewController *)self canvasView];
  if ([canvasView2 usesMediaAppearance])
  {
    isComposingSketch = 0;
  }

  else
  {
    canvasView3 = [(ETTranscriptDetailCanvasViewController *)self canvasView];
    isComposingSketch = [canvasView3 isComposingSketch];
  }

  if ([(ETTranscriptDetailCanvasViewController *)self _gestureInstructionViewIsShown])
  {
    return 1;
  }

  if ((isComposingSketch | v8))
  {
    return ![(ETTranscriptDetailCanvasViewController *)self _showingSendInProgress];
  }

  return 0;
}

- (BOOL)_shouldShowOnButton
{
  if (([(ETTranscriptDetailCanvasViewController *)self isPlayingCompositeMessage]& 1) != 0 || ([(ETTranscriptDetailCanvasViewController *)self isPlayingMessages]& 1) != 0 || [(ETTranscriptDetailCanvasViewController *)self usesCompactKeyboardLayout])
  {
    return 0;
  }

  canvasView = [(ETTranscriptDetailCanvasViewController *)self canvasView];
  v3 = ([canvasView isComposing] & 1) == 0 && !-[ETVideoController videoState](self->_videoController, "videoState") && !self->_expandToCameraPreview && !self->_expandToGestureInstructionView && !-[ETTranscriptDetailCanvasViewController _gestureInstructionViewIsShown](self, "_gestureInstructionViewIsShown") && self->_expansionState != 1;

  return v3;
}

- (void)_updateVideoPreviewFrame
{
  view = [(ETVideoController *)self->_videoController view];
  canvasView = [(ETTranscriptDetailCanvasViewController *)self canvasView];
  [canvasView frame];
  [view setFrame:{0.0, 0.0}];
}

- (void)updateVideoUI
{
  canvasView = [(ETTranscriptDetailCanvasViewController *)self canvasView];
  [canvasView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  view = [(ETTranscriptDetailCanvasViewController *)self view];
  [view bounds];

  if ([(ETTranscriptDetailCanvasViewController *)self usesCompactKeyboardLayout]|| self->_expansionState == 1)
  {
    [(ETTranscriptDetailCanvasViewController *)self _setCameraEnabled:0];
  }

  [(ETTranscriptDetailCanvasViewController *)self _updateVideoPreviewFrame];
  videoState = [(ETVideoController *)self->_videoController videoState];
  if (videoState - 1 <= 1)
  {
    videoRecordButton = self->_videoRecordButton;
    if (!videoRecordButton)
    {
      v15 = objc_alloc_init(ETVideoRecordButton);
      v16 = self->_videoRecordButton;
      self->_videoRecordButton = v15;

      [(ETVideoRecordButton *)self->_videoRecordButton setAlpha:0.0];
      [(ETVideoRecordButton *)self->_videoRecordButton addTarget:self action:"_videoRecordButtonTapped" forControlEvents:64];
      LODWORD(v17) = -1093874483;
      [(ETVideoRecordButton *)self->_videoRecordButton setCharge:v17];
      view2 = [(ETTranscriptDetailCanvasViewController *)self view];
      [view2 insertSubview:self->_videoRecordButton above:canvasView];

      videoRecordButton = self->_videoRecordButton;
    }

    [canvasView center];
    v20 = v19 + -27.0;
    v45.origin.x = v5;
    v45.origin.y = v7;
    v45.size.width = v9;
    v45.size.height = v11;
    [(ETVideoRecordButton *)videoRecordButton setFrame:v20, CGRectGetMaxY(v45) + 7.0, 54.0, 54.0];
  }

  [(ETVideoRecordButton *)self->_videoRecordButton alpha];
  if (videoState - 1 < 2 == (v21 == 0.0))
  {
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_5710;
    v43[3] = &unk_24920;
    v43[4] = self;
    v44 = videoState - 1 < 2;
    [UIView animateWithDuration:v43 animations:0.25];
  }

  [(ETVideoRecordButton *)self->_videoRecordButton setVideoState:videoState];
  v22 = videoState == 4 || videoState == 1;
  if (videoState == 1 || videoState == 4)
  {
    photoCaptureButton = self->_photoCaptureButton;
    if (!photoCaptureButton)
    {
      v25 = objc_alloc_init(ETVideoRecordButton);
      v26 = self->_photoCaptureButton;
      self->_photoCaptureButton = v25;

      v27 = self->_photoCaptureButton;
      v28 = +[UIColor whiteColor];
      [(ETVideoRecordButton *)v27 setInnerColor:v28];

      [(ETVideoRecordButton *)self->_photoCaptureButton setAlpha:0.0];
      [(ETVideoRecordButton *)self->_photoCaptureButton addTarget:self action:"_photoCaptureButtonTapped" forControlEvents:64];
      LODWORD(v29) = -1093874483;
      [(ETVideoRecordButton *)self->_photoCaptureButton setCharge:v29];
      view3 = [(ETTranscriptDetailCanvasViewController *)self view];
      [view3 insertSubview:self->_photoCaptureButton above:canvasView];

      photoCaptureButton = self->_photoCaptureButton;
    }

    v46.origin.x = v5;
    v46.origin.y = v7;
    v46.size.width = v9;
    v46.size.height = v11;
    MinX = CGRectGetMinX(v46);
    [(ETTranscriptDetailCanvasViewController *)self _cornerButtonInset];
    v33 = MinX + v32;
    v47.origin.x = v5;
    v47.origin.y = v7;
    v47.size.width = v9;
    v47.size.height = v11;
    [(ETVideoRecordButton *)photoCaptureButton setFrame:v33, CGRectGetMaxY(v47) + 7.0 + 5.0, 44.0, 44.0];
  }

  [(ETVideoRecordButton *)self->_photoCaptureButton alpha];
  if (((v22 ^ (v34 == 0.0)) & 1) == 0)
  {
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_5730;
    v41[3] = &unk_24920;
    v41[4] = self;
    v42 = v22;
    [UIView animateWithDuration:v41 animations:0.25];
  }

  [(ETTranscriptDetailCanvasViewController *)self _updateSendButton];
  [(ETTranscriptDetailCanvasViewController *)self _updatePlaybackControls];
  [(ETTranscriptDetailCanvasViewController *)self _updateBackToPreviewButton];
  traitCollection = [(ETTranscriptDetailCanvasViewController *)self traitCollection];
  -[ETTranscriptDetailCanvasViewController _updateVideoOnButtonForHorizontalSizeClass:](self, "_updateVideoOnButtonForHorizontalSizeClass:", [traitCollection horizontalSizeClass]);

  [(ETTranscriptDetailCanvasViewController *)self _updateGestureInstructionButton];
  v48.origin.x = v5;
  v48.origin.y = v7;
  v48.size.width = v9;
  v48.size.height = v11;
  CGRectGetMaxX(v48);
  [(UIButton *)self->_cameraFlipButton frame];
  [(ETTranscriptDetailCanvasViewController *)self _cornerButtonInset];
  [(ETVideoRecordButton *)self->_videoRecordButton center];
  cameraFlipButton = self->_cameraFlipButton;
  view4 = [(ETTranscriptDetailCanvasViewController *)self view];
  UIPointRoundToViewScale();
  [(UIButton *)cameraFlipButton setCenter:?];

  [(UIButton *)self->_cameraFlipButton alpha];
  if ((videoState == 1) == (v38 == 0.0))
  {
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_5750;
    v39[3] = &unk_24920;
    v39[4] = self;
    v40 = videoState == 1;
    [UIView animateWithDuration:v39 animations:0.25];
  }

  [(ETTranscriptDetailCanvasViewController *)self _setShowingVideoProgress:videoState == 2];
  [(ETTranscriptDetailCanvasViewController *)self _updateMediaInstructionView];
}

- (void)_updateBackToPreviewButton
{
  canvasView = [(ETTranscriptDetailCanvasViewController *)self canvasView];
  v4 = 0.0;
  if ([canvasView usesMediaAppearance])
  {
    videoController = self->_videoController;
    if (videoController)
    {
      if ([(ETVideoController *)videoController videoState]== &dword_0 + 1)
      {
        canvasView2 = [(ETTranscriptDetailCanvasViewController *)self canvasView];
        if ([canvasView2 isComposing])
        {
          v4 = ([(ETTranscriptDetailCanvasViewController *)self _showingSendInProgress]^ 1);
        }
      }

      else
      {
        v4 = ([(ETTranscriptDetailCanvasViewController *)self _showingSendInProgress]^ 1);
      }
    }
  }

  [(UIButton *)self->_backToPreviewButton setAlpha:v4];
  backToPreviewButton = self->_backToPreviewButton;
  _cancelButton = [(ETTranscriptDetailCanvasViewController *)self _cancelButton];
  [_cancelButton center];
  [(UIButton *)backToPreviewButton setCenter:?];
}

- (BOOL)_shouldShowSendButton
{
  videoState = [(ETVideoController *)self->_videoController videoState];
  if ([(ETTranscriptDetailCanvasViewController *)self _shouldAutoSend])
  {
    return 0;
  }

  if (videoState - 5 < 2)
  {
    return 1;
  }

  if (([(ETTranscriptDetailCanvasViewController *)self isComposingCompositeMessage]& 1) != 0)
  {
    return 0;
  }

  canvasView = [(ETTranscriptDetailCanvasViewController *)self canvasView];
  isComposingSketch = [canvasView isComposingSketch];

  return isComposingSketch;
}

- (void)_updateGestureInstructionButton
{
  _shouldShowOnButton = [(ETTranscriptDetailCanvasViewController *)self _shouldShowOnButton];
  [(UIButton *)self->_gestureInstructionButton setEnabled:_shouldShowOnButton];
  view = [(ETTranscriptDetailCanvasViewController *)self view];
  canvasView = [(ETTranscriptDetailCanvasViewController *)self canvasView];
  [canvasView frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v19.origin.x = v7;
  v19.origin.y = v9;
  v19.size.width = v11;
  v19.size.height = v13;
  CGRectGetMaxX(v19);
  [(UIButton *)self->_gestureInstructionButton frame];
  [(ETTranscriptDetailCanvasViewController *)self _cornerButtonInset];
  UIRoundToViewScale();
  v15 = v14;
  v20.origin.x = v7;
  v20.origin.y = v9;
  v20.size.width = v11;
  v20.size.height = v13;
  CGRectGetMaxY(v20);
  [(ETTranscriptDetailCanvasViewController *)self _cornerButtonInset];
  [(UIButton *)self->_videoOnButton frame];
  UIRoundToViewScale();
  [(UIButton *)self->_gestureInstructionButton setCenter:v15, v16];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_5A90;
  v17[3] = &unk_24920;
  v17[4] = self;
  v18 = _shouldShowOnButton;
  [UIView animateWithDuration:v17 animations:0.25];
}

- (void)_updateSendButton
{
  _shouldShowSendButton = [(ETTranscriptDetailCanvasViewController *)self _shouldShowSendButton];
  [(UIButton *)self->_sendButton alpha];
  if (((_shouldShowSendButton ^ (v4 == 0.0)) & 1) == 0)
  {
    v5 = 0.0;
    v27 = 3221225472;
    v26 = _NSConcreteStackBlock;
    v28 = sub_5CC8;
    v29 = &unk_24920;
    if (_shouldShowSendButton)
    {
      v5 = 0.25;
    }

    selfCopy = self;
    v31 = _shouldShowSendButton;
    [UIView animateWithDuration:&v26 animations:v5];
  }

  v6 = [(ETTranscriptDetailCanvasViewController *)self canvasView:v26];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if ([(ETTranscriptDetailCanvasViewController *)self usesCompactKeyboardLayout])
  {
    canvasView = [(ETTranscriptDetailCanvasViewController *)self canvasView];
    [canvasView frame];
    MaxX = CGRectGetMaxX(v32);

    view = [(ETTranscriptDetailCanvasViewController *)self view];
    [view bounds];
    v19 = MaxX + (v18 - MaxX) * 0.5;

    v33.origin.x = v8;
    v33.origin.y = v10;
    v33.size.width = v12;
    v33.size.height = v14;
    [(UIButton *)self->_sendButton setCenter:v19, CGRectGetMidY(v33)];
  }

  else
  {
    sendButton = self->_sendButton;
    v34.origin.x = v8;
    v34.origin.y = v10;
    v34.size.width = v12;
    v34.size.height = v14;
    v21 = CGRectGetMaxX(v34);
    [(UIButton *)self->_sendButton frame];
    v23 = v21 + v22 * -0.5;
    [(ETTranscriptDetailCanvasViewController *)self _cornerButtonInset];
    v25 = v23 - v24;
    v35.origin.x = v8;
    v35.origin.y = v10;
    v35.size.width = v12;
    v35.size.height = v14;
    [(UIButton *)sendButton setCenter:v25, CGRectGetMaxY(v35) + 7.0 + 27.0];
    if (((self->_videoController == 0) & _shouldShowSendButton) == 1)
    {
      [(ETTranscriptDetailCanvasViewController *)self _setEntryViewHidden:1];
    }
  }
}

- (void)_updateSkipButtonFrame
{
  _skipButton = [(ETTranscriptDetailCanvasViewController *)self _skipButton];
  _cancelButton = [(ETTranscriptDetailCanvasViewController *)self _cancelButton];
  [_cancelButton frame];
  [_skipButton setFrame:?];
}

- (void)_setEntryViewHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  presentationDelegate = [(ETTranscriptDetailCanvasViewController *)self presentationDelegate];
  v6 = presentationDelegate;
  if (hiddenCopy)
  {
    [presentationDelegate canvasViewControllerHideEntryView:self];
  }

  else
  {
    [presentationDelegate canvasViewControllerShowEntryView:self];
  }
}

- (void)_endPhotoMessageComposition
{
  [(ETTranscriptDetailCanvasViewController *)self _moveComposedMessagesIntoMediaMessage];
  mediaMessage = self->_mediaMessage;
  self->_mediaMessage = 0;

  [(UIButton *)self->_sendButton setEnabled:0];
  [(UIButton *)self->_sendButton setAlpha:0.25];
  [(ETTranscriptDetailCanvasViewController *)self _endMediaMessageComposition];
  [(ETTranscriptDetailCanvasViewController *)self _updateSendButton];
  [(ETTranscriptDetailCanvasViewController *)self updateVideoUI];

  [(ETTranscriptDetailCanvasViewController *)self _clearPhotoSendMessageTimer];
}

- (void)_sendButtonTapped
{
  if ([(UIButton *)self->_sendButton isEnabled])
  {
    usesCompactKeyboardLayout = [(ETTranscriptDetailCanvasViewController *)self usesCompactKeyboardLayout];
    [(UIButton *)self->_sendButton setEnabled:0];
    [(UIButton *)self->_sendButton setAlpha:0.25];
    mediaMessage = self->_mediaMessage;
    if (mediaMessage)
    {
      composedSketchMessage = mediaMessage;
      if ([(ETVideoMessage *)self->_mediaMessage mediaType]== &dword_0 + 1)
      {
        [(ETTranscriptDetailCanvasViewController *)self _stopPlaybackAnimated:1];
        [(ETTranscriptDetailCanvasViewController *)self _endMediaMessageComposition];
        [(ETTranscriptDetailCanvasViewController *)self updateVideoUI];
        [(ETTranscriptDetailCanvasViewController *)self _updateColorPickerEnabled];
      }

      else if ([(ETVideoMessage *)self->_mediaMessage mediaType]== &dword_0 + 2)
      {
        [(ETTranscriptDetailCanvasViewController *)self _endPhotoMessageComposition];
      }

      [(ETTranscriptDetailCanvasViewController *)self _updateBackToPreviewButton];
      +[MediaInstructionView disallowInstruction];
      if (usesCompactKeyboardLayout)
      {
        goto LABEL_13;
      }
    }

    else
    {
      canvasView = [(ETTranscriptDetailCanvasViewController *)self canvasView];
      v7 = canvasView;
      if (usesCompactKeyboardLayout)
      {
        [canvasView sendCurrentMessage];

        composedSketchMessage = 0;
LABEL_13:

        return;
      }

      composedSketchMessage = [canvasView composedSketchMessage];

      canvasView2 = [(ETTranscriptDetailCanvasViewController *)self canvasView];
      [canvasView2 clearCanvasAnimated:1];

      [(ETTranscriptDetailCanvasViewController *)self _updatePlaybackControls];
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_604C;
    v11[3] = &unk_24858;
    v11[4] = self;
    [UIView performWithoutAnimation:v11];
    sendDelegate = [(ETTranscriptDetailCanvasViewController *)self sendDelegate];
    [sendDelegate canvasViewController:self sendMessage:composedSketchMessage];

    presentationDelegate = [(ETTranscriptDetailCanvasViewController *)self presentationDelegate];
    [presentationDelegate canvasViewController:self requestsPresentationStyleExpanded:0];

    goto LABEL_13;
  }
}

- (void)_startCameraPreview
{
  canvasView = [(ETTranscriptDetailCanvasViewController *)self canvasView];
  [canvasView endMessageComposition];

  canvasView2 = [(ETTranscriptDetailCanvasViewController *)self canvasView];
  [canvasView2 clearCanvasAnimated:0];

  [(ETTranscriptDetailCanvasViewController *)self _setCameraEnabled:1];
  [(ETTranscriptDetailCanvasViewController *)self setComposingCompositeMessage:1];
  [(ETTranscriptDetailCanvasViewController *)self _setVideoZoomEnabled:1];

  [(ETTranscriptDetailCanvasViewController *)self _updatePlaybackControls];
}

- (void)_backToPreviewButtonTapped
{
  canvasView = [(ETTranscriptDetailCanvasViewController *)self canvasView];
  if ([canvasView isComposing] && (videoController = self->_videoController) != 0)
  {
    videoState = [(ETVideoController *)videoController videoState];

    if (videoState == &dword_0 + 1)
    {
      canvasView2 = [(ETTranscriptDetailCanvasViewController *)self canvasView];
      [canvasView2 clearCanvasAnimated:1];

      [(ETTranscriptDetailCanvasViewController *)self clearDeferredMessages];
      goto LABEL_9;
    }
  }

  else
  {
  }

  videoState2 = [(ETVideoController *)self->_videoController videoState];
  v8 = self->_videoController;
  if (videoState2 == 2)
  {
    [(ETVideoController *)v8 cancelRecording];
  }

  else
  {
    [(ETVideoController *)v8 deleteWrittenAssets];
    [(ETTranscriptDetailCanvasViewController *)self _endMediaMessageComposition];
    [(ETTranscriptDetailCanvasViewController *)self _stopPlaybackAnimated:1];
    [(ETTranscriptDetailCanvasViewController *)self _setCameraEnabled:1];
    [(ETTranscriptDetailCanvasViewController *)self setComposingCompositeMessage:1];
  }

LABEL_9:
  [(ETTranscriptDetailCanvasViewController *)self _setVideoZoomEnabled:1];

  [(ETTranscriptDetailCanvasViewController *)self updateVideoUI];
}

- (void)_endMediaMessageComposition
{
  [(ETTranscriptDetailCanvasViewController *)self setComposingCompositeMessage:0];

  [(ETTranscriptDetailCanvasViewController *)self _setCameraEnabled:0];
}

- (void)_cancelButtonTapped
{
  v4.receiver = self;
  v4.super_class = ETTranscriptDetailCanvasViewController;
  [(ETTranscriptDetailCanvasViewController *)&v4 _cancelButtonTapped];
  if ([(ETTranscriptDetailCanvasViewController *)self _gestureInstructionViewIsShown])
  {
    [(ETTranscriptDetailCanvasViewController *)self _setShowingGestureInstructionView:0];
  }

  else if (self->_mediaMessage)
  {
    [(ETVideoController *)self->_videoController deleteWrittenAssets];
    [(ETTranscriptDetailCanvasViewController *)self _endMediaMessageComposition];
  }

  else
  {
    canvasView = [(ETTranscriptDetailCanvasViewController *)self canvasView];
    [canvasView setCanComposeHeartbeat:1];
    [canvasView setCanComposeTap:1];
    [canvasView setCanComposeKiss:1];
    [canvasView setCanComposeAnger:1];
    [(ETTranscriptDetailCanvasViewController *)self _setEntryViewHidden:0];
  }

  [(ETTranscriptDetailCanvasViewController *)self _updateColorPickerEnabled];
  [(ETTranscriptDetailCanvasViewController *)self updateVideoUI];
}

- (void)_endIntroMessage
{
  canvasView = [(ETTranscriptDetailCanvasViewController *)self canvasView];
  [canvasView endMessageComposition];

  [(ETTranscriptDetailCanvasViewController *)self _setVideoZoomEnabled:0];
  deferredMessages = [(ETTranscriptDetailCanvasViewController *)self deferredMessages];
  if ([deferredMessages count])
  {
    v4 = [deferredMessages objectAtIndexedSubscript:0];
    strokes = [v4 strokes];
    v6 = [strokes count];

    if (v6)
    {
      [(ETVideoMessage *)self->_mediaMessage setIntroMessage:v4];
      [v4 setDelayWisp:1];
      [v4 setHideComet:1];
    }

    [(ETTranscriptDetailCanvasViewController *)self clearDeferredMessages];
  }

  [(ETTranscriptDetailCanvasViewController *)self _composingOnlyIntroMessageType:0];
}

- (void)_moveComposedMessagesIntoMediaMessage
{
  canvasView = [(ETTranscriptDetailCanvasViewController *)self canvasView];
  [canvasView endMessageComposition];

  mediaMessage = self->_mediaMessage;
  deferredMessages = [(ETTranscriptDetailCanvasViewController *)self deferredMessages];
  [(ETVideoMessage *)mediaMessage setPlayingMessages:deferredMessages];

  [(ETTranscriptDetailCanvasViewController *)self clearDeferredMessages];
}

- (void)_videoRecordButtonTapped
{
  if (([(ETVideoRecordButton *)self->_photoCaptureButton isTracking]& 1) == 0)
  {
    if ([(ETVideoRecordButton *)self->_videoRecordButton videoState]== &dword_0 + 1)
    {
      [(ETTranscriptDetailCanvasViewController *)self _endIntroMessage];
      videoController = self->_videoController;

      [(ETVideoController *)videoController startRecording];
    }

    else if ([(ETVideoRecordButton *)self->_videoRecordButton videoState]== &dword_0 + 2)
    {
      canvasView = [(ETTranscriptDetailCanvasViewController *)self canvasView];
      [canvasView endMessageComposition];

      v5 = self->_videoController;

      [(ETVideoController *)v5 finishRecording];
    }
  }
}

- (void)_photoCaptureButtonTapped
{
  if (([(ETVideoRecordButton *)self->_videoRecordButton isTracking]& 1) == 0)
  {
    videoController = self->_videoController;

    [(ETVideoController *)videoController capturePhoto];
  }
}

- (void)_startPhotoSendMessageTimer
{
  [(NSTimer *)self->_photoSendMessageTimer invalidate];
  self->_photoSendMessageTimer = [NSTimer scheduledTimerWithTimeInterval:self target:"_photoSendMessageTimerFired" selector:0 userInfo:0 repeats:30.0];

  _objc_release_x1();
}

- (void)_photoSendMessageTimerFired
{
  photoSendMessageTimer = self->_photoSendMessageTimer;
  self->_photoSendMessageTimer = 0;

  v4 = self->_mediaMessage;
  [(ETTranscriptDetailCanvasViewController *)self _endPhotoMessageComposition];
  sendDelegate = [(ETTranscriptDetailCanvasViewController *)self sendDelegate];
  [sendDelegate canvasViewController:self sendMessage:v4];
}

- (void)_clearPhotoSendMessageTimer
{
  [(NSTimer *)self->_photoSendMessageTimer invalidate];
  photoSendMessageTimer = self->_photoSendMessageTimer;
  self->_photoSendMessageTimer = 0;
}

- (void)_cameraFlipButtonTapped
{
  [(ETVideoController *)self->_videoController toggleCamera];
  self->_videoZoomScale = 0.0;
  self->_lastVideoZoomGestureScale = 0.0;
}

- (void)_setCameraEnabled:(BOOL)enabled
{
  if ((((self->_videoController == 0) ^ enabled) & 1) == 0)
  {
    enabledCopy = enabled;
    canvasView = [(ETTranscriptDetailCanvasViewController *)self canvasView];
    v17 = canvasView;
    if (enabledCopy)
    {
      [canvasView sendCurrentMessage];
      v6 = objc_alloc_init(ETVideoMessage);
      mediaMessage = self->_mediaMessage;
      self->_mediaMessage = v6;

      v8 = [ETVideoController alloc];
      identifier = [(ETVideoMessage *)self->_mediaMessage identifier];
      v10 = [(ETVideoController *)v8 initWithMessageIdentifier:identifier];
      videoController = self->_videoController;
      self->_videoController = v10;

      [(ETVideoController *)self->_videoController setDelegate:self];
      [(ETTranscriptDetailCanvasViewController *)self addChildViewController:self->_videoController];
      view = [(ETVideoController *)self->_videoController view];
      [v17 insertSubview:view atIndex:0];

      [(ETVideoController *)self->_videoController didMoveToParentViewController:self];
      [(ETTranscriptDetailCanvasViewController *)self _updateVideoPreviewFrame];
      [(ETVideoController *)self->_videoController startPreview];
    }

    else
    {
      [canvasView clearCanvasAnimated:0];
      playingMessage = [(ETTranscriptDetailCanvasViewController *)self playingMessage];
      [playingMessage stopPlaying];

      v14 = self->_mediaMessage;
      self->_mediaMessage = 0;

      [(ETVideoController *)self->_videoController setDelegate:0];
      [(ETVideoController *)self->_videoController stopPreview];
      view2 = [(ETVideoController *)self->_videoController view];
      [view2 removeFromSuperview];

      [(ETVideoController *)self->_videoController removeFromParentViewController];
      v16 = self->_videoController;
      self->_videoController = 0;

      [(ETTranscriptDetailCanvasViewController *)self setComposingCompositeMessage:0];
      [(ETTranscriptDetailCanvasViewController *)self _updateCanvasInteractionEnabled];
      self->_videoZoomScale = 0.0;
      self->_lastVideoZoomGestureScale = 0.0;
      [(ETTranscriptDetailCanvasViewController *)self _relinquishAudio];
      [(ETTranscriptDetailCanvasViewController *)self _clearPhotoSendMessageTimer];
      [(ETTranscriptDetailCanvasViewController *)self clearDeferredMessages];
      self->_expandToCameraPreview = 0;
    }

    [(ETTranscriptDetailCanvasViewController *)self _setEntryViewHidden:enabledCopy];
    [(ETTranscriptDetailCanvasViewController *)self setDeferMessageSend:enabledCopy];
    [(ETTranscriptDetailCanvasViewController *)self _composingOnlyIntroMessageType:enabledCopy];
    [v17 setUsesMediaAppearance:enabledCopy];
    [v17 setParentMessage:self->_mediaMessage];
  }
}

- (void)_updateVideoProgressFrame
{
  view = [(ETTranscriptDetailCanvasViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  videoProgressBar = self->_videoProgressBar;
  v27.origin.x = v5;
  v27.origin.y = v7;
  v27.size.width = v9;
  v27.size.height = v11;
  v13 = CGRectGetMaxY(v27) + -2.0;
  [(UIView *)self->_videoProgressBar frame];
  [(UIView *)videoProgressBar setFrame:0.0, v13];
  [(UILabel *)self->_videoProgressTimeLabel sizeToFit];
  [(UIView *)self->_videoProgressDot setFrame:0.0, 0.0, 5.0, 5.0];
  canvasView = [(ETTranscriptDetailCanvasViewController *)self canvasView];
  [canvasView frame];
  v16 = v15;

  videoProgressDot = self->_videoProgressDot;
  [(ETVideoRecordButton *)self->_videoRecordButton center];
  [(UIView *)videoProgressDot setCenter:v16 + 4.5];
  [(UILabel *)self->_videoProgressTimeLabel frame];
  v19 = v18;
  v21 = v20;
  videoProgressTimeLabel = self->_videoProgressTimeLabel;
  [(UIView *)self->_videoProgressDot frame];
  v23 = CGRectGetMaxX(v28) + 4.0;
  [(ETVideoRecordButton *)self->_videoRecordButton center];
  v25 = v24 + v21 * -0.5;

  [(UILabel *)videoProgressTimeLabel setFrame:v23, v25, v19 + 4.0, v21];
}

- (id)_videoProgressTimeString:(unint64_t)string
{
  if (!self->_videoProgressTimeFormatter)
  {
    v5 = objc_alloc_init(NSDateFormatter);
    videoProgressTimeFormatter = self->_videoProgressTimeFormatter;
    self->_videoProgressTimeFormatter = v5;

    [(NSDateFormatter *)self->_videoProgressTimeFormatter setDateFormat:@"mm:ss"];
  }

  v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:string];
  v8 = [(NSDateFormatter *)self->_videoProgressTimeFormatter stringFromDate:v7];

  return v8;
}

- (void)_setShowingVideoProgress:(BOOL)progress
{
  if (self->_showingVideoProgress != progress)
  {
    v16[5] = v6;
    v16[6] = v5;
    v16[17] = v3;
    v16[18] = v4;
    progressCopy = progress;
    self->_showingVideoProgress = progress;
    if (!progress)
    {
      videoProgressTimeLabel = self->_videoProgressTimeLabel;
      v10 = [(ETTranscriptDetailCanvasViewController *)self _videoProgressTimeString:10.0];
      [(UILabel *)videoProgressTimeLabel setText:v10];

      layer = [(UIView *)self->_videoProgressDot layer];
      [layer removeAllAnimations];

      layer2 = [(UIView *)self->_videoProgressBar layer];
      [layer2 removeAllAnimations];

      layer3 = [(UILabel *)self->_videoProgressTimeLabel layer];
      [layer3 removeAllAnimations];

      videoProgressBar = self->_videoProgressBar;
      view = [(ETTranscriptDetailCanvasViewController *)self view];
      [view bounds];
      [(UIView *)videoProgressBar setFrame:0.0, CGRectGetMaxY(v17) + -2.0, 0.0, 2.0];
    }

    [(UIView *)self->_videoProgressBar setAlpha:progressCopy];
    [(UIView *)self->_videoProgressDot setAlpha:progressCopy];
    [(UILabel *)self->_videoProgressTimeLabel setAlpha:progressCopy];
    [(ETTranscriptDetailCanvasViewController *)self _updateVideoProgressFrame];
    if (progressCopy)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_6E14;
      v16[3] = &unk_24858;
      v16[4] = self;
      [UIView animateWithDuration:196612 delay:v16 options:0 animations:10.0 completion:0.0];
      [(ETTranscriptDetailCanvasViewController *)self _updateVideoRecorderTime:10.0];
    }
  }
}

- (void)_updateVideoRecorderTime:(unint64_t)time
{
  [(UIView *)self->_videoProgressDot setAlpha:((time & 1) == 0)];
  videoProgressTimeLabel = self->_videoProgressTimeLabel;
  v6 = [(ETTranscriptDetailCanvasViewController *)self _videoProgressTimeString:time];
  [(UILabel *)videoProgressTimeLabel setText:v6];

  if (time)
  {
    if (self->_showingVideoProgress)
    {
      v7 = dispatch_time(0, 1000000000);
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_6FB0;
      v8[3] = &unk_24948;
      v8[4] = self;
      v8[5] = time;
      dispatch_after(v7, &_dispatch_main_q, v8);
    }
  }
}

- (BOOL)_shouldDimColorPicker
{
  if ([(ETVideoController *)self->_videoController videoState]== &dword_4 + 2 || self->_expandToGestureInstructionView || [(ETTranscriptDetailCanvasViewController *)self _gestureInstructionViewIsShown])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = ETTranscriptDetailCanvasViewController;
  return [(ETTranscriptDetailCanvasViewController *)&v4 _shouldDimColorPicker];
}

- (BOOL)_isRecognizer:(id)recognizer closeToButton:(id)button
{
  buttonCopy = button;
  recognizerCopy = recognizer;
  superview = [buttonCopy superview];
  [recognizerCopy locationInView:superview];
  v9 = v8;
  v11 = v10;

  [buttonCopy frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v24.origin.x = v13;
  v24.origin.y = v15;
  v24.size.width = v17;
  v24.size.height = v19;
  v25 = CGRectInset(v24, -44.0, -44.0);
  v20 = v9;
  v21 = v11;

  return CGRectContainsPoint(v25, *&v20);
}

- (BOOL)_tapRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  v5 = 104;
  [(UIButton *)self->_videoOnButton alpha];
  if (v6 == 0.0)
  {
    _replayButton = [(ETTranscriptDetailCanvasViewController *)self _replayButton];
    [_replayButton alpha];
    v9 = v8;

    if (v9 == 0.0)
    {
      _cancelButton = [(ETTranscriptDetailCanvasViewController *)self _cancelButton];
      [_cancelButton alpha];
      v13 = v12;

      if (v13 == 0.0)
      {
        v5 = 120;
        [(UIButton *)self->_backToPreviewButton alpha];
        if (v17 != 0.0)
        {
          goto LABEL_2;
        }

LABEL_11:
        v16 = 1;
        goto LABEL_12;
      }

      _cancelButton2 = [(ETTranscriptDetailCanvasViewController *)self _cancelButton];
    }

    else
    {
      _cancelButton2 = [(ETTranscriptDetailCanvasViewController *)self _replayButton];
    }

    v14 = _cancelButton2;
    v15 = [(ETTranscriptDetailCanvasViewController *)self _isRecognizer:beginCopy closeToButton:_cancelButton2];

    if (v15)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

LABEL_2:
  if (![(ETTranscriptDetailCanvasViewController *)self _isRecognizer:beginCopy closeToButton:*&self->DTSCanvasViewController_opaque[v5]])
  {
    goto LABEL_11;
  }

LABEL_9:
  v16 = 0;
LABEL_12:

  return v16;
}

- (void)_updateGestureInstructionViewFrame
{
  canvasView = [(ETTranscriptDetailCanvasViewController *)self canvasView];
  [canvasView frame];
  [(GestureInstructionView *)self->_gestureInstructionView setFrame:?];
  gestureInstructionView = self->_gestureInstructionView;
  [canvasView center];
  [(GestureInstructionView *)gestureInstructionView setCenter:?];
  layer = [(GestureInstructionView *)self->_gestureInstructionView layer];
  layer2 = [canvasView layer];
  [layer2 cornerRadius];
  [layer setCornerRadius:?];
}

- (void)_updateMediaInstructionView
{
  canvasView = [(ETTranscriptDetailCanvasViewController *)self canvasView];
  if (!self->_videoController || ([(ETTranscriptDetailCanvasViewController *)self isPlayingCompositeMessage]& 1) != 0 || ([(ETTranscriptDetailCanvasViewController *)self isPlayingMessages]& 1) != 0 || !+[MediaInstructionView isInstructionAllowed])
  {
    [(MediaInstructionView *)self->_mediaInstructionView removeFromSuperview];
    mediaInstructionView = self->_mediaInstructionView;
    self->_mediaInstructionView = 0;
  }

  else
  {
    if (!self->_mediaInstructionView)
    {
      v3 = objc_alloc_init(MediaInstructionView);
      v4 = self->_mediaInstructionView;
      self->_mediaInstructionView = v3;

      [canvasView addSubview:self->_mediaInstructionView];
    }

    [canvasView bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = +[UIApplication sharedApplication];
    preferredContentSizeCategory = [v13 preferredContentSizeCategory];
    IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

    if (IsAccessibilityContentSizeCategory)
    {
      [(MediaInstructionView *)self->_mediaInstructionView sizeThatFits:v10, v12];
      v17 = v16;
    }

    else
    {
      v17 = 64.0;
    }

    v21.origin.x = v6;
    v21.origin.y = v8;
    v21.size.width = v10;
    v21.size.height = v12;
    [(MediaInstructionView *)self->_mediaInstructionView setFrame:0.0, CGRectGetMaxY(v21) - v17, v10, v17];
    [(MediaInstructionView *)self->_mediaInstructionView updateForVideoState:[(ETVideoController *)self->_videoController videoState]];
  }
}

- (void)videoControllerDidStartPreview:(id)preview
{
  self->_expandToCameraPreview = 0;
  [(ETTranscriptDetailCanvasViewController *)self updateVideoUI];
  [(ETTranscriptDetailCanvasViewController *)self _updatePlaybackControls];

  [(ETTranscriptDetailCanvasViewController *)self _composingOnlyIntroMessageType:1];
}

- (void)videoControllerDidEndPreview:(id)preview
{
  [(ETTranscriptDetailCanvasViewController *)self updateVideoUI];

  [(ETTranscriptDetailCanvasViewController *)self _updatePlaybackControls];
}

- (void)videoControllerWillCancelRecording:(id)recording
{
  canvasView = [(ETTranscriptDetailCanvasViewController *)self canvasView];
  [canvasView clearCanvasAnimated:1];

  [(ETTranscriptDetailCanvasViewController *)self clearDeferredMessages];
  mediaMessage = self->_mediaMessage;

  [(ETVideoMessage *)mediaMessage setIntroMessage:0];
}

- (void)videoControllerDidStartRecording:(id)recording
{
  videoController = self->_videoController;
  if (videoController)
  {
    [(ETVideoController *)videoController writeStartTime];
  }

  [(ETTranscriptDetailCanvasViewController *)self updateVideoUI];
}

- (void)videoControllerDidEndRecording:(id)recording mediaURL:(id)l withError:(id)error
{
  if (error)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_77C8;
    v7[3] = &unk_24858;
    v7[4] = self;
    -[ETTranscriptDetailCanvasViewController _showWriteErrorAlertForMediaType:outOfSpaceError:completion:](self, "_showWriteErrorAlertForMediaType:outOfSpaceError:completion:", 1, [error code] == -11807, v7);
  }

  else
  {
    [(ETVideoMessage *)self->_mediaMessage setMediaURL:l];
    canvasView = [(ETTranscriptDetailCanvasViewController *)self canvasView];
    [(ETTranscriptDetailCanvasViewController *)self _moveComposedMessagesIntoMediaMessage];
    [(ETTranscriptDetailCanvasViewController *)self updateVideoUI];
    [(ETTranscriptDetailCanvasViewController *)self setPlayingCompositeMessage:1];
    [(ETTranscriptDetailCanvasViewController *)self _updateColorPickerEnabled];
    [(ETTranscriptDetailCanvasViewController *)self _updateCanvasInteractionEnabled];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_7758;
    v8[3] = &unk_24858;
    v8[4] = self;
    [canvasView wispVisibleSketchViewsWithCompletion:v8];
  }

  [(ETTranscriptDetailCanvasViewController *)self clearDeferredMessages];
}

- (void)_showWriteErrorAlertForMediaType:(unint64_t)type outOfSpaceError:(BOOL)error completion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = v8;
  if (type == 1)
  {
    v10 = @"MEDIA_CANNOT_CREATE_TITLE_VIDEO";
  }

  else
  {
    v10 = @"MEDIA_CANNOT_CREATE_TITLE_PHOTO";
  }

  v11 = [v8 localizedStringForKey:v10 value:&stru_24D60 table:@"DigitalTouchBalloonProvider-Localizable"];
  if (errorCopy)
  {
    if (type == 1)
    {
      v12 = @"MEDIA_OUT_OF_SPACE_MESSAGE_VIDEO";
    }

    else
    {
      v12 = @"MEDIA_OUT_OF_SPACE_MESSAGE_PHOTO";
    }

    v13 = [v9 localizedStringForKey:v12 value:&stru_24D60 table:@"DigitalTouchBalloonProvider-Localizable"];
  }

  else
  {
    v13 = 0;
  }

  v14 = [UIAlertController alertControllerWithTitle:v11 message:v13 preferredStyle:1];
  v15 = [v9 localizedStringForKey:@"MEDIA_ALERT_DONE" value:&stru_24D60 table:@"DigitalTouchBalloonProvider-Localizable"];
  v16 = [UIAlertAction actionWithTitle:v15 style:0 handler:0];

  [v14 addAction:v16];
  if (errorCopy)
  {
    v17 = [v9 localizedStringForKey:@"MEDIA_ALERT_SETTINGS" value:&stru_24D60 table:@"DigitalTouchBalloonProvider-Localizable"];
    v18 = [UIAlertAction actionWithTitle:v17 style:0 handler:&stru_24988];

    [v14 addAction:v18];
  }

  [(ETTranscriptDetailCanvasViewController *)self presentViewController:v14 animated:1 completion:completionCopy];
}

- (void)_hideVideoController
{
  [(ETVideoController *)self->_videoController view];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_7B78;
  v10 = v9[3] = &unk_24858;
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_7B84;
  v7 = &unk_24830;
  v8 = v10;
  v3 = v10;
  [UIView animateWithDuration:v9 animations:&v4 completion:0.25];
  [(ETTranscriptDetailCanvasViewController *)self updateVideoUI:v4];
}

- (void)videoControllerDidStopPreview:(id)preview
{
  [(ETTranscriptDetailCanvasViewController *)self updateVideoUI];

  [(ETTranscriptDetailCanvasViewController *)self _updateCanvasInteractionEnabled];
}

- (void)videoControllerWillBeginPhotoCapture:(id)capture
{
  [(ETTranscriptDetailCanvasViewController *)self updateVideoUI];

  [(ETTranscriptDetailCanvasViewController *)self _updateCanvasInteractionEnabled];
}

- (void)videoControllerDidEndPhotoCapture:(id)capture photoImage:(id)image
{
  captureCopy = capture;
  imageCopy = image;
  [(ETTranscriptDetailCanvasViewController *)self _endIntroMessage];
  [(ETVideoMessage *)self->_mediaMessage setMediaType:2];
  [(ETVideoMessage *)self->_mediaMessage setStillImage:imageCopy];
  [(ETTranscriptDetailCanvasViewController *)self updateVideoUI];
  [(ETTranscriptDetailCanvasViewController *)self _updateCanvasInteractionEnabled];
  canvasView = [(ETTranscriptDetailCanvasViewController *)self canvasView];
  stillImage = [(ETVideoMessage *)self->_mediaMessage stillImage];
  [canvasView showPhotoForImage:stillImage];

  [(ETTranscriptDetailCanvasViewController *)self _startPhotoSendMessageTimer];
  v10 = self->_mediaMessage;
  objc_initWeak(&location, self);
  v11 = self->_videoController;
  videoController = self->_videoController;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_7DEC;
  v15[3] = &unk_249B0;
  v13 = v10;
  v16 = v13;
  objc_copyWeak(&v18, &location);
  v14 = v11;
  v17 = v14;
  [(ETVideoController *)videoController writePhotoDataWithCompletion:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)videoControllerDidInterruptPreview:(id)preview withInterruptionReason:(int64_t)reason
{
  if (reason == 4 && ([(ETVideoController *)self->_videoController timeSinceStartOfPreview], v5 < 0.5))
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"MEDIA_CANNOT_START_CAMERA_ALERT_TITLE" value:&stru_24D60 table:@"DigitalTouchBalloonProvider-Localizable"];
    v8 = [v6 localizedStringForKey:@"MEDIA_CANNOT_START_CAMERA_ALERT_DESCRIPTION" value:&stru_24D60 table:@"DigitalTouchBalloonProvider-Localizable"];
    v9 = [UIAlertController alertControllerWithTitle:v7 message:v8 preferredStyle:1];
    v10 = [v6 localizedStringForKey:@"MEDIA_ALERT_DONE" value:&stru_24D60 table:@"DigitalTouchBalloonProvider-Localizable"];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_80F8;
    v12[3] = &unk_249D8;
    v12[4] = self;
    v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:v12];
    [v9 addAction:v11];
    [(ETTranscriptDetailCanvasViewController *)self presentViewController:v9 animated:1 completion:0];
  }

  else
  {

    [(ETTranscriptDetailCanvasViewController *)self _setCameraEnabled:0];
  }
}

- (void)_composingOnlyIntroMessageType:(BOOL)type
{
  typeCopy = type;
  canvasView = [(ETTranscriptDetailCanvasViewController *)self canvasView];
  [canvasView setCanComposeHeartbeat:!typeCopy];
  [canvasView setCanComposeTap:!typeCopy];
  [canvasView setCanComposeKiss:!typeCopy];
  [canvasView setCanComposeAnger:!typeCopy];
}

- (void)_videoZoomGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  [recognizedCopy scale];
  v6 = v5;
  state = [recognizedCopy state];

  if (state == &dword_0 + 2)
  {
    videoDevice = [(ETVideoController *)self->_videoController videoDevice];
    v9 = fmax(self->_lastVideoZoomGestureScale, 0.001);
    self->_lastVideoZoomGestureScale = v9;
    self->_videoZoomScale = fmax(self->_videoZoomScale * (v6 / v9), 1.0);
    activeFormat = [videoDevice activeFormat];
    [activeFormat videoMaxZoomFactor];
    v12 = v11;

    videoZoomScale = self->_videoZoomScale;
    if (v12 < videoZoomScale)
    {
      videoZoomScale = v12;
    }

    self->_videoZoomScale = videoZoomScale;
    v15 = 0;
    [videoDevice lockForConfiguration:&v15];
    v14 = v15;
    if (!v14)
    {
      [videoDevice setVideoZoomFactor:self->_videoZoomScale];
      [videoDevice unlockForConfiguration];
    }

    self->_lastVideoZoomGestureScale = v6;
  }

  else if (state == &dword_0 + 1)
  {
    self->_lastVideoZoomGestureScale = v6;
  }
}

- (void)_setVideoZoomEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (enabled && !self->_videoZoomGestureRecognizer)
  {
    v5 = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:"_videoZoomGestureRecognized:"];
    videoZoomGestureRecognizer = self->_videoZoomGestureRecognizer;
    self->_videoZoomGestureRecognizer = v5;

    canvasView = [(ETTranscriptDetailCanvasViewController *)self canvasView];
    [canvasView addGestureRecognizer:self->_videoZoomGestureRecognizer];
  }

  v8 = self->_videoZoomGestureRecognizer;

  [(UIPinchGestureRecognizer *)v8 setEnabled:enabledCopy];
}

- (void)canvasView:(id)view didUpdateComposingMessageType:(unsigned __int16)type
{
  if ([view isComposing])
  {

    [(ETTranscriptDetailCanvasViewController *)self _setVideoZoomEnabled:0];
  }
}

- (double)elapsedTimeSinceStartOfMessage:(id)message
{
  messageCopy = message;
  [(ETVideoController *)self->_videoController currentFrameIntervalSinceFirstFrame];
  v6 = v5;
  if ([(ETVideoMessage *)self->_mediaMessage canCompressTime])
  {
    [(ETVideoMessage *)self->_mediaMessage compressTimeSinceStartOfMessage:v6];
    v6 = v7;
    -[ETVideoMessage setPauseTimeCompression:](self->_mediaMessage, "setPauseTimeCompression:", [messageCopy messageType] != 1);
  }

  return v6;
}

- (BOOL)shouldAutorotate
{
  if (self->_showingLandscapeTrap)
  {
    return 1;
  }

  else
  {
    return ![(ETTranscriptDetailCanvasViewController *)self _shouldRestrictOrientation:v2];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  if ([(ETTranscriptDetailCanvasViewController *)self _shouldRestrictOrientation])
  {
    return 2;
  }

  else
  {
    return 30;
  }
}

- (id)_smallVideoOnButton
{
  smallVideoOnButton = self->_smallVideoOnButton;
  if (smallVideoOnButton)
  {
    v3 = smallVideoOnButton;
  }

  else
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [UIButton buttonWithType:1];
    v7 = self->_smallVideoOnButton;
    self->_smallVideoOnButton = v6;

    [(UIButton *)self->_smallVideoOnButton addTarget:self action:"_videoOnButtonTapped" forControlEvents:64];
    v8 = self->_smallVideoOnButton;
    v9 = [UIImage imageNamed:@"VideoOn" inBundle:v5];
    [(UIButton *)v8 setBackgroundImage:v9 forState:0];

    [(UIButton *)self->_smallVideoOnButton sizeToFit];
    [(UIButton *)self->_smallVideoOnButton setAlpha:0.0];
    LODWORD(v10) = -1088841318;
    [(UIButton *)self->_smallVideoOnButton setCharge:v10];
    v3 = self->_smallVideoOnButton;
  }

  return v3;
}

- (id)_largeVideoOnButton
{
  largeVideoOnButton = self->_largeVideoOnButton;
  if (largeVideoOnButton)
  {
    v3 = largeVideoOnButton;
  }

  else
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [UIButton buttonWithType:1];
    v7 = self->_largeVideoOnButton;
    self->_largeVideoOnButton = v6;

    [(UIButton *)self->_largeVideoOnButton addTarget:self action:"_videoOnButtonTapped" forControlEvents:64];
    v8 = self->_largeVideoOnButton;
    v9 = [UIImage imageNamed:@"ExpandToCamera" inBundle:v5];
    [(UIButton *)v8 setImage:v9 forState:0];

    v10 = self->_largeVideoOnButton;
    v11 = +[UIColor whiteColor];
    [(UIButton *)v10 setTintColor:v11];

    v12 = self->_largeVideoOnButton;
    v13 = [UIColor colorWithWhite:0.4 alpha:1.0];
    [(UIButton *)v12 setBackgroundColor:v13];

    layer = [(UIButton *)self->_largeVideoOnButton layer];
    [layer setCornerRadius:25.0];

    [(UIButton *)self->_largeVideoOnButton setFrame:0.0, 0.0, 50.0, 50.0];
    [(UIButton *)self->_largeVideoOnButton setAlpha:0.0];
    v3 = self->_largeVideoOnButton;
  }

  return v3;
}

- (void)_updateVideoOnButtonOpacity
{
  if (self->_largeVideoOnButton)
  {
    _gestureInstructionViewIsShown = [(ETTranscriptDetailCanvasViewController *)self _gestureInstructionViewIsShown];
  }

  else
  {
    _gestureInstructionViewIsShown = 0;
  }

  [(UIButton *)self->_videoOnButton setEnabled:_gestureInstructionViewIsShown ^ 1];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_8850;
  v4[3] = &unk_24920;
  v4[4] = self;
  v5 = _gestureInstructionViewIsShown;
  [UIView animateWithDuration:v4 animations:0.25];
}

- (void)_updateVideoOnButtonForHorizontalSizeClass:(int64_t)class
{
  if (class == 2 && (+[UIDevice currentDevice](UIDevice, "currentDevice"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 userInterfaceIdiom], v4, (v5 & 0xFFFFFFFFFFFFFFFBLL) != 1))
  {
    _largeVideoOnButton = [(ETTranscriptDetailCanvasViewController *)self _largeVideoOnButton];
  }

  else
  {
    _largeVideoOnButton = [(ETTranscriptDetailCanvasViewController *)self _smallVideoOnButton];
  }

  v7 = _largeVideoOnButton;
  videoOnButton = self->_videoOnButton;
  obj = v7;
  if (videoOnButton != v7)
  {
    [(UIButton *)videoOnButton setAlpha:0.0];
    objc_storeStrong(&self->_videoOnButton, obj);
  }

  if ([(ETTranscriptDetailCanvasViewController *)self isViewLoaded])
  {
    view = [(ETTranscriptDetailCanvasViewController *)self view];
    superview = [(UIButton *)self->_videoOnButton superview];

    if (!superview)
    {
      [view addSubview:self->_videoOnButton];
    }

    canvasView = [(ETTranscriptDetailCanvasViewController *)self canvasView];
    [canvasView frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = v13;
    v21 = v15;
    v22 = v17;
    v23 = v19;
    if (self->_videoOnButton == self->_smallVideoOnButton)
    {
      CGRectGetMinX(*&v20);
      [(UIButton *)self->_videoOnButton frame];
      [(ETTranscriptDetailCanvasViewController *)self _cornerButtonInset];
      UIRoundToViewScale();
      v28 = v30;
      v36.origin.x = v13;
      v36.origin.y = v15;
      v36.size.width = v17;
      v36.size.height = v19;
      CGRectGetMaxY(v36);
      [(ETTranscriptDetailCanvasViewController *)self _cornerButtonInset];
      [(UIButton *)self->_videoOnButton frame];
      UIRoundToViewScale();
      MidY = v31;
    }

    else
    {
      MaxX = CGRectGetMaxX(*&v20);
      view2 = [(ETTranscriptDetailCanvasViewController *)self view];
      [view2 bounds];
      v27 = v26;
      v34.origin.x = v13;
      v34.origin.y = v15;
      v34.size.width = v17;
      v34.size.height = v19;
      v28 = MaxX + (v27 - CGRectGetMaxX(v34)) * 0.5;
      v35.origin.x = v13;
      v35.origin.y = v15;
      v35.size.width = v17;
      v35.size.height = v19;
      MidY = CGRectGetMidY(v35);
    }

    [(UIButton *)self->_videoOnButton setCenter:v28, MidY];
    [(ETTranscriptDetailCanvasViewController *)self _updateVideoOnButtonOpacity];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = ETTranscriptDetailCanvasViewController;
  [(ETTranscriptDetailCanvasViewController *)&v5 traitCollectionDidChange:change];
  traitCollection = [(ETTranscriptDetailCanvasViewController *)self traitCollection];
  -[ETTranscriptDetailCanvasViewController _updateVideoOnButtonForHorizontalSizeClass:](self, "_updateVideoOnButtonForHorizontalSizeClass:", [traitCollection horizontalSizeClass]);

  [(ETTranscriptDetailCanvasViewController *)self _updateGestureInstructionButton];
}

- (void)dataSourceStopPlayback:(id)playback
{
  playbackCopy = playback;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "dataSourceStopPlayback: Data source is calling transcript methods on full-screen instance.", v5, 2u);
    }
  }
}

- (void)dataSource:(id)source startPlaybackWithCompletion:(id)completion
{
  sourceCopy = source;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "dataSource:startPlaybackWithCompletion: Data source is calling transcript methods on full-screen instance.", v8, 2u);
    }
  }
}

- (ETTranscriptDetailCanvasViewControllerPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

@end