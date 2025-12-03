@interface QLLivePhotoItemViewController
- (BOOL)_isPointInNonImageSubjectItems:(CGPoint)items;
- (BOOL)_wasJustPlaying;
- (BOOL)canEnterFullScreen;
- (BOOL)canPerformFirstTimeAppearanceActions:(unint64_t)actions;
- (BOOL)canToggleFullScreen;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)livePhotoView:(id)view canBeginPlaybackWithStyle:(int64_t)style;
- (BOOL)shouldAcceptTouch:(id)touch ofGestureRecognizer:(id)recognizer;
- (BOOL)shouldDetectMachineReadableCode;
- (CGSize)imageSize;
- (NSDictionary)clientPreviewOptions;
- (UIImage)imageForAnalysis;
- (double)livePhotoView:(id)view extraMinimumTouchDurationForTouch:(id)touch withStyle:(int64_t)style;
- (id)toolbarButtonsForTraitCollection:(id)collection;
- (void)_setupAndStartImageAnalysisIfNeeded;
- (void)_updateLivePhotoBadgeAnimated:(BOOL)animated;
- (void)animateToPreferredDynamicRange;
- (void)buttonPressedWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)didEndZoomingAtScale:(double)scale;
- (void)imageAnalysisInteractionDidDismissVisualSearchController;
- (void)imageAnalysisInteractionWillPresentVisualSearchController;
- (void)livePhotoView:(id)view didEndPlaybackWithStyle:(int64_t)style;
- (void)livePhotoView:(id)view willBeginPlaybackWithStyle:(int64_t)style;
- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler;
- (void)performFirstTimeAppearanceActions:(unint64_t)actions;
- (void)previewWillFinishAppearing;
- (void)updatePreferredDynamicRangeForced:(BOOL)forced;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation QLLivePhotoItemViewController

- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler
{
  contentsCopy = contents;
  handlerCopy = handler;
  v8 = contentsCopy;
  [v8 size];
  if (v8)
  {
    v10 = v8;
    v11 = handlerCopy;
    QLRunInMainThread();
  }

  else if (handlerCopy)
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.quicklook.livePhotoItemViewController" code:1 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v9);
  }
}

uint64_t __93__QLLivePhotoItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke(uint64_t a1, double a2)
{
  v63[1] = *MEMORY[0x277D85DE8];
  gotLoadHelper_x23__OBJC_CLASS___PHLivePhotoView(a2);
  v4 = *(v2 + 3424);
  v5 = objc_opt_new();
  v6 = *(a1 + 32);
  v7 = *(v6 + 1176);
  *(v6 + 1176) = v5;

  [*(*(a1 + 32) + 1176) setDelegate:?];
  [*(*(a1 + 32) + 1176) setLivePhoto:*(a1 + 40)];
  [*(*(a1 + 32) + 1176) setAccessibilityIdentifier:@"QLLivePhotoViewControllerLivePhotoViewAccessibilityIdentifier"];
  v8 = *(a1 + 32);
  if (v8[1221] == 1)
  {
    [v8 animateToPreferredDynamicRange];
  }

  else
  {
    [v8 updatePreferredDynamicRangeForced:0];
  }

  v9 = (*(a1 + 32) + 1160);
  v10 = [*(a1 + 40) image];
  [v10 size];
  *v9 = v11;
  v9[1] = v12;

  [*(a1 + 32) setPreferredContentSize:{*(*(a1 + 32) + 1160), *(*(a1 + 32) + 1168)}];
  [*(a1 + 32) setContentView:*(*(a1 + 32) + 1176)];
  v13 = [*(*(a1 + 32) + 1176) playbackGestureRecognizer];
  v14 = [v13 view];
  v15 = [*(*(a1 + 32) + 1176) playbackGestureRecognizer];
  [v14 removeGestureRecognizer:v15];

  v16 = [*(a1 + 32) view];
  v17 = [*(*(a1 + 32) + 1176) playbackGestureRecognizer];
  [v16 addGestureRecognizer:v17];

  v18 = *(a1 + 32);
  v19 = [*(v18 + 1176) playbackGestureRecognizer];
  [v19 setDelegate:v18];

  v20 = objc_alloc_init(MEMORY[0x277D755E8]);
  v21 = *(a1 + 32);
  v22 = *(v21 + 1184);
  *(v21 + 1184) = v20;

  [*(*(a1 + 32) + 1184) setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = [*(v2 + 3424) livePhotoBadgeImageWithOptions:1];
  [*(*(a1 + 32) + 1184) setImage:v23];

  [*(*(a1 + 32) + 1184) setAccessibilityIdentifier:@"QLLivePhotoViewControllerLivePhotoBadgeAccessibilityIdentifier"];
  v24 = [*(a1 + 32) view];
  [v24 addSubview:*(*(a1 + 32) + 1184)];

  v25 = [*(*(a1 + 32) + 1184) image];
  [v25 size];
  v27 = v26;
  v29 = v28;

  v30 = [*(a1 + 32) view];
  v31 = MEMORY[0x277CCAAD0];
  v62 = @"width";
  v32 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
  v63[0] = v32;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:&v62 count:1];
  v34 = _NSDictionaryOfVariableBindings(&cfstr_Livephotobadge.isa, *(*(a1 + 32) + 1184), 0);
  v35 = [v31 constraintsWithVisualFormat:@"H:[_livePhotoBadge(width)]" options:0 metrics:v33 views:v34];
  [v30 addConstraints:v35];

  v36 = [*(a1 + 32) view];
  v37 = MEMORY[0x277CCAAD0];
  v60 = @"height";
  v38 = [MEMORY[0x277CCABB0] numberWithDouble:v29];
  v61 = v38;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
  v40 = _NSDictionaryOfVariableBindings(&cfstr_Livephotobadge.isa, *(*(a1 + 32) + 1184), 0);
  v41 = [v37 constraintsWithVisualFormat:@"V:[_livePhotoBadge(height)]" options:0 metrics:v39 views:v40];
  [v36 addConstraints:v41];

  v42 = MEMORY[0x277CCAAD0];
  v43 = *(a1 + 32);
  v44 = v43[148];
  v45 = [v43 view];
  v46 = [v42 constraintWithItem:v44 attribute:1 relatedBy:0 toItem:v45 attribute:1 multiplier:1.0 constant:0.0];
  v47 = [v46 ql_activatedConstraint];
  v48 = *(a1 + 32);
  v49 = *(v48 + 1192);
  *(v48 + 1192) = v47;

  v50 = MEMORY[0x277CCAAD0];
  v51 = *(a1 + 32);
  v52 = v51[148];
  v53 = [v51 view];
  v54 = [v50 constraintWithItem:v52 attribute:3 relatedBy:0 toItem:v53 attribute:3 multiplier:1.0 constant:0.0];
  v55 = [v54 ql_activatedConstraint];
  v56 = *(a1 + 32);
  v57 = *(v56 + 1200);
  *(v56 + 1200) = v55;

  *(*(a1 + 32) + 1232) = 1;
  *(*(a1 + 32) + 1219) = 1;
  [*(a1 + 32) _updateLivePhotoBadgeAnimated:0];
  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))(result, 0);
  }

  v59 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_updateLivePhotoBadgeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  livePhotoView = self->_livePhotoView;
  view = [(QLLivePhotoItemViewController *)self view];
  [(PHLivePhotoView *)livePhotoView convertPoint:view toView:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  v8 = v7;
  v10 = v9;

  appearance = [(QLItemViewController *)self appearance];
  [appearance topInset];
  v13 = v12;

  [(NSLayoutConstraint *)self->_livePhotoBadgeLeftConstraint setConstant:v8 + 5.0];
  v14 = v13 + 5.0;
  if (v10 + 5.0 >= v13 + 5.0)
  {
    v14 = v10 + 5.0;
  }

  [(NSLayoutConstraint *)self->_livePhotoBadgeTopConstraint setConstant:v14];
  if (!self->_fullyZoomedOut || self->_isFullScreen || self->_isPlaying || self->_transitionInProgress)
  {
    v15 = 0;
  }

  else
  {
    appearance2 = [(QLItemViewController *)self appearance];
    v15 = [appearance2 presentationMode] != 4;
  }

  self->_livePhotoBadgeVisible = v15;
  view2 = [(QLLivePhotoItemViewController *)self view];
  [view2 setNeedsLayout];

  view3 = [(QLLivePhotoItemViewController *)self view];
  [view3 layoutIfNeeded];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__QLLivePhotoItemViewController__updateLivePhotoBadgeAnimated___block_invoke;
  aBlock[3] = &unk_278B57190;
  aBlock[4] = self;
  v18 = _Block_copy(aBlock);
  v19 = v18;
  if (animatedCopy)
  {
    [MEMORY[0x277D75D18] animateWithDuration:v18 animations:0.2];
  }

  else
  {
    (*(v18 + 2))(v18);
  }
}

uint64_t __63__QLLivePhotoItemViewController__updateLivePhotoBadgeAnimated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 0.0;
  if (*(v1 + 1217))
  {
    v2 = 1.0;
  }

  return [*(v1 + 1184) setAlpha:v2];
}

- (BOOL)_wasJustPlaying
{
  if (!self->_didEndPlayingTimestamp)
  {
    return 0;
  }

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:self->_didEndPlayingTimestamp];
  v5 = v4 < 0.25;

  return v5;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = QLLivePhotoItemViewController;
  coordinatorCopy = coordinator;
  [(QLScrollableContentItemViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__QLLivePhotoItemViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_278B57208;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = QLLivePhotoItemViewController;
  [(QLLivePhotoItemViewController *)&v5 viewDidLayoutSubviews];
  if (self->_visualIntelligenceBarContainerView)
  {
    view = [(QLLivePhotoItemViewController *)self view];
    [view bounds];
    [(UIView *)self->_visualIntelligenceBarContainerView setFrame:?];

    view2 = [(QLLivePhotoItemViewController *)self view];
    [view2 bringSubviewToFront:self->_visualIntelligenceBarContainerView];
  }
}

- (void)previewWillFinishAppearing
{
  v2.receiver = self;
  v2.super_class = QLLivePhotoItemViewController;
  [(QLItemViewController *)&v2 previewWillFinishAppearing];
}

- (void)didEndZoomingAtScale:(double)scale
{
  scrollView = [(QLScrollableContentItemViewController *)self scrollView];
  [scrollView zoomScale];
  v6 = v5;
  scrollView2 = [(QLScrollableContentItemViewController *)self scrollView];
  [scrollView2 minZoomScale];
  self->_fullyZoomedOut = v6 == v8;

  [(QLLivePhotoItemViewController *)self _updateLivePhotoBadgeAnimated:1];
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)canEnterFullScreen
{
  playbackGestureRecognizer = [(PHLivePhotoView *)self->_livePhotoView playbackGestureRecognizer];
  if ([playbackGestureRecognizer state] == 1)
  {
    v4 = 0;
  }

  else
  {
    playbackGestureRecognizer2 = [(PHLivePhotoView *)self->_livePhotoView playbackGestureRecognizer];
    v4 = [playbackGestureRecognizer2 state] != 2 && !self->_isPlaying;
  }

  return v4;
}

- (BOOL)canToggleFullScreen
{
  if ([(QLLivePhotoItemViewController *)self _wasJustPlaying])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = QLLivePhotoItemViewController;
  return [(QLItemViewController *)&v4 canToggleFullScreen];
}

- (id)toolbarButtonsForTraitCollection:(id)collection
{
  v8.receiver = self;
  v8.super_class = QLLivePhotoItemViewController;
  v4 = [(QLItemViewController *)&v8 toolbarButtonsForTraitCollection:collection];
  array = [v4 mutableCopy];

  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  if (_os_feature_enabled_impl() && [(QLImageAnalysisManager *)self->_imageAnalysisManager isInteractionActive]&& [(QLImageAnalysisManager *)self->_imageAnalysisManager hasResultsForVisualSearch])
  {
    imageAnalysisToolbarButton = [(QLImageAnalysisManager *)self->_imageAnalysisManager imageAnalysisToolbarButton];
    [array addObject:imageAnalysisToolbarButton];
  }

  return array;
}

- (void)buttonPressedWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = _os_feature_enabled_impl();
  if ([identifierCopy isEqualToString:@"QLVisualSearchButton"])
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v13.receiver = self;
    v13.super_class = QLLivePhotoItemViewController;
    [(QLItemViewController *)&v13 buttonPressedWithIdentifier:identifierCopy completionHandler:handlerCopy];
  }

  else
  {
    if ([(QLImageAnalysisManager *)self->_imageAnalysisManager isVisualIntelligenceV2Enabled])
    {
      visualIntelligenceBarContainerView = [(QLImageAnalysisManager *)self->_imageAnalysisManager visualIntelligenceBarContainerView];
      if (visualIntelligenceBarContainerView)
      {
        if ([(QLImageAnalysisManager *)self->_imageAnalysisManager isVisualIntelligenceV2Active])
        {
          [visualIntelligenceBarContainerView removeFromSuperview];
          visualIntelligenceBarContainerView = self->_visualIntelligenceBarContainerView;
          self->_visualIntelligenceBarContainerView = 0;
        }

        else
        {
          objc_storeStrong(&self->_visualIntelligenceBarContainerView, visualIntelligenceBarContainerView);
          visualIntelligenceBarContainerView = [(QLLivePhotoItemViewController *)self view];
          [visualIntelligenceBarContainerView addSubview:visualIntelligenceBarContainerView];
        }

        view = [(QLLivePhotoItemViewController *)self view];
        [view setNeedsLayout];
      }
    }

    [(QLImageAnalysisManager *)self->_imageAnalysisManager infoButtonTapped];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }
}

- (void)livePhotoView:(id)view willBeginPlaybackWithStyle:(int64_t)style
{
  self->_isPlaying = 1;
  [(QLLivePhotoItemViewController *)self _updateLivePhotoBadgeAnimated:1, style];

  [(QLLivePhotoItemViewController *)self _updateImageAnalysisInteractionAnimated:1];
}

- (void)livePhotoView:(id)view didEndPlaybackWithStyle:(int64_t)style
{
  date = [MEMORY[0x277CBEAA8] date];
  didEndPlayingTimestamp = self->_didEndPlayingTimestamp;
  self->_didEndPlayingTimestamp = date;

  self->_isPlaying = 0;
  [(QLLivePhotoItemViewController *)self _updateLivePhotoBadgeAnimated:1];

  [(QLLivePhotoItemViewController *)self _updateImageAnalysisInteractionAnimated:1];
}

- (BOOL)livePhotoView:(id)view canBeginPlaybackWithStyle:(int64_t)style
{
  playbackGestureRecognizer = [view playbackGestureRecognizer];
  imageAnalysisView = [(QLLivePhotoItemViewController *)self imageAnalysisView];
  [playbackGestureRecognizer locationInView:imageAnalysisView];
  v8 = v7;
  v10 = v9;

  return ![(QLLivePhotoItemViewController *)self _isPointInNonImageSubjectItems:v8, v10];
}

- (double)livePhotoView:(id)view extraMinimumTouchDurationForTouch:(id)touch withStyle:(int64_t)style
{
  touchCopy = touch;
  imageAnalysisView = [(QLLivePhotoItemViewController *)self imageAnalysisView];
  [touchCopy locationInView:imageAnalysisView];
  v9 = v8;
  v11 = v10;

  if ([(QLImageAnalysisManager *)self->_imageAnalysisManager imageSubjectExistsAtPoint:v9, v11]&& ![(QLLivePhotoItemViewController *)self _isPointInNonImageSubjectItems:v9, v11])
  {
    return 0.4;
  }

  else
  {
    return 0.0;
  }
}

- (UIImage)imageForAnalysis
{
  livePhoto = [(PHLivePhotoView *)self->_livePhotoView livePhoto];
  image = [livePhoto image];

  return image;
}

- (NSDictionary)clientPreviewOptions
{
  context = [(QLItemViewController *)self context];
  clientPreviewOptions = [context clientPreviewOptions];

  return clientPreviewOptions;
}

- (void)imageAnalysisInteractionWillPresentVisualSearchController
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:self->_isFullScreen];
  savedFullScreenState = self->_savedFullScreenState;
  self->_savedFullScreenState = v3;

  delegate = [(QLItemViewController *)self delegate];
  [delegate previewItemViewController:self wantsFullScreen:1];
}

- (void)imageAnalysisInteractionDidDismissVisualSearchController
{
  savedFullScreenState = self->_savedFullScreenState;
  if (savedFullScreenState)
  {
    bOOLValue = [(NSNumber *)savedFullScreenState BOOLValue];
    v5 = self->_savedFullScreenState;
    self->_savedFullScreenState = 0;
  }

  else
  {
    bOOLValue = 0;
  }

  delegate = [(QLItemViewController *)self delegate];
  [delegate previewItemViewController:self wantsFullScreen:bOOLValue];
}

- (BOOL)shouldDetectMachineReadableCode
{
  context = [(QLItemViewController *)self context];
  shouldPreventMachineReadableCodeDetection = [context shouldPreventMachineReadableCodeDetection];

  return shouldPreventMachineReadableCodeDetection ^ 1;
}

- (void)_setupAndStartImageAnalysisIfNeeded
{
  imageAnalysisManager = self->_imageAnalysisManager;
  if (imageAnalysisManager)
  {
    hasAnalysis = [(QLImageAnalysisManager *)imageAnalysisManager hasAnalysis];
    v5 = self->_imageAnalysisManager;
    if (hasAnalysis)
    {

      [(QLImageAnalysisManager *)v5 addInteractionIfNeeded];
      return;
    }

    if (v5)
    {
      if ([(QLImageAnalysisManager *)v5 isAnalysisOngoing])
      {
        return;
      }

      v6 = self->_imageAnalysisManager;
      if (v6)
      {
        [(QLImageAnalysisManager *)v6 stopImageAnalysis];
      }
    }
  }

  v7 = [QLImageAnalysisManager alloc];
  view = [(QLLivePhotoItemViewController *)self view];
  v8 = [(QLImageAnalysisManager *)v7 initWithDelegate:self presentingView:view];
  v9 = self->_imageAnalysisManager;
  self->_imageAnalysisManager = v8;
}

- (void)viewDidLoad
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = QLLivePhotoItemViewController;
  [(QLLivePhotoItemViewController *)&v7 viewDidLoad];
  objc_initWeak(&v6, self);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v4 = [(QLLivePhotoItemViewController *)self registerForTraitChanges:v3 withHandler:&__block_literal_global_11];

  objc_destroyWeak(&v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)canPerformFirstTimeAppearanceActions:(unint64_t)actions
{
  actionsCopy = actions;
  v7.receiver = self;
  v7.super_class = QLLivePhotoItemViewController;
  v4 = [(QLItemViewController *)&v7 canPerformFirstTimeAppearanceActions:?];
  v5 = (actionsCopy & 0x28) != 0;
  if (v4)
  {
    v5 = 1;
  }

  return (actionsCopy & 0x10) != 0 || v5;
}

- (void)performFirstTimeAppearanceActions:(unint64_t)actions
{
  if ((actions & 8) != 0)
  {
    [(QLImageAnalysisManager *)self->_imageAnalysisManager setShouldHighlightTextAndDDAfterNextAnalysis:1];
  }

  else if ((actions & 0x10) != 0)
  {
    [(QLImageAnalysisManager *)self->_imageAnalysisManager setShouldEnterVisualSearchAfterNextAnalysis:1];
  }

  else if ((actions & 0x20) != 0)
  {
    [(QLImageAnalysisManager *)self->_imageAnalysisManager setShouldUpliftSubjectAfterNextAnalysis:1];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) == 0 || [gestureRecognizerCopy numberOfTapsRequired] != 2;

  return v5;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  livePhotoView = self->_livePhotoView;
  beginCopy = begin;
  playbackGestureRecognizer = [(PHLivePhotoView *)livePhotoView playbackGestureRecognizer];

  if (playbackGestureRecognizer != beginCopy)
  {
    return 1;
  }

  v8 = self->_livePhotoView;

  return [(QLLivePhotoItemViewController *)self livePhotoView:v8 canBeginPlaybackWithStyle:1];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  playbackGestureRecognizer = [(PHLivePhotoView *)self->_livePhotoView playbackGestureRecognizer];
  v9 = playbackGestureRecognizer;
  if (playbackGestureRecognizer == recognizerCopy)
  {
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      [(QLLivePhotoItemViewController *)self livePhotoView:self->_livePhotoView extraMinimumTouchDurationForTouch:touchCopy withStyle:1];
      [recognizerCopy setExtraMinimumTouchDuration:?];
    }
  }

  else
  {
  }

  return 1;
}

- (BOOL)shouldAcceptTouch:(id)touch ofGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  v16.receiver = self;
  v16.super_class = QLLivePhotoItemViewController;
  touchCopy = touch;
  v8 = [(QLItemViewController *)&v16 shouldAcceptTouch:touchCopy ofGestureRecognizer:recognizerCopy];
  v9 = [(QLLivePhotoItemViewController *)self imageAnalysisView:v16.receiver];
  [touchCopy locationInView:v9];
  v11 = v10;
  v13 = v12;

  LODWORD(v9) = [touchCopy _isPointerTouch];
  if (v9)
  {
    if ([(QLImageAnalysisManager *)self->_imageAnalysisManager isTextSelectionEnabled])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 &= ![(QLImageAnalysisManager *)self->_imageAnalysisManager textExistsAtPoint:v11, v13];
      }
    }
  }

  if ([(QLImageAnalysisManager *)self->_imageAnalysisManager visualSearchExistsAtPoint:v11, v13])
  {
    objc_opt_class();
    v8 &= objc_opt_isKindOfClass() ^ 1;
  }

  v14 = ![(QLImageAnalysisManager *)self->_imageAnalysisManager hasActiveTextSelection];

  return v14 & v8;
}

- (BOOL)_isPointInNonImageSubjectItems:(CGPoint)items
{
  y = items.y;
  x = items.x;
  if ([(QLImageAnalysisManager *)self->_imageAnalysisManager textExistsAtPoint:?]|| [(QLImageAnalysisManager *)self->_imageAnalysisManager dataDetectorExistsAtPoint:x, y])
  {
    return 1;
  }

  imageAnalysisManager = self->_imageAnalysisManager;

  return [(QLImageAnalysisManager *)imageAnalysisManager actionInfoItemExistsAtPoint:x, y];
}

- (void)updatePreferredDynamicRangeForced:(BOOL)forced
{
  forcedCopy = forced;
  if (_os_feature_enabled_impl())
  {
    if (!self->_HDRTransitionInProgress || forcedCopy)
    {
      appearance = [(QLItemViewController *)self appearance];
      presentationMode = [appearance presentationMode];

      livePhotoView = self->_livePhotoView;
      if (presentationMode == 2)
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }

      [(PHLivePhotoView *)livePhotoView setPreferredImageDynamicRange:v9];
    }
  }
}

- (void)animateToPreferredDynamicRange
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__QLLivePhotoItemViewController_animateToPreferredDynamicRange__block_invoke;
  v3[3] = &unk_278B57190;
  v3[4] = self;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __63__QLLivePhotoItemViewController_animateToPreferredDynamicRange__block_invoke_2;
  v2[3] = &unk_278B571B8;
  v2[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v3 animations:v2 completion:2.0];
}

@end