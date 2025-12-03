@interface QLImageItemViewController
- (BOOL)canPerformFirstTimeAppearanceActions:(unint64_t)actions;
- (BOOL)draggableViewShouldStartDragSession:(id)session;
- (BOOL)shouldAcceptTouch:(id)touch ofGestureRecognizer:(id)recognizer;
- (BOOL)shouldDetectMachineReadableCode;
- (CGSize)imageSize;
- (NSDictionary)clientPreviewOptions;
- (id)toolbarButtonsForTraitCollection:(id)collection;
- (void)_setupAndStartImageAnalysisIfNeeded;
- (void)animateToPreferredDynamicRange;
- (void)animationTimerFired:(double)fired;
- (void)buttonPressedWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)imageAnalysisInteractionDidDismissVisualSearchController;
- (void)imageAnalysisInteractionWillPresentVisualSearchController;
- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler;
- (void)performFirstTimeAppearanceActions:(unint64_t)actions;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)updatePreferredDynamicRangeForced:(BOOL)forced;
- (void)viewDidLayoutSubviews;
@end

@implementation QLImageItemViewController

- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler
{
  contentsCopy = contents;
  handlerCopy = handler;
  v10 = objc_alloc_init(MEMORY[0x277D755E8]);
  imageView = self->_imageView;
  self->_imageView = v10;

  [(UIImageView *)self->_imageView setUserInteractionEnabled:1];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(UIImageView *)self->_imageView setBackgroundColor:clearColor];

  [(UIImageView *)self->_imageView setAccessibilityIdentifier:@"QLImageItemViewControllerImageViewAccessibilityIdentifier"];
  [(UIImageView *)self->_imageView setPreferredImageDynamicRange:0];
  if (self->_HDRTransitionInProgress)
  {
    [(QLImageItemViewController *)self animateToPreferredDynamicRange];
  }

  else
  {
    [(QLImageItemViewController *)self updatePreferredDynamicRangeForced:0];
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  self->_imageIsAnimated = isKindOfClass & 1;
  if (isKindOfClass)
  {
    objc_storeStrong(&self->_animatedImage, contents);
    v18 = handlerCopy;
    QLRunInMainThread();
  }

  else
  {
    image = [contentsCopy image];
    [(UIImageView *)self->_imageView setImage:image];

    image2 = [(UIImageView *)self->_imageView image];
    [image2 size];
    self->_imageSize.width = v16;
    self->_imageSize.height = v17;

    [(QLScrollableContentItemViewController *)self setContentView:self->_imageView];
    [(QLImageItemViewController *)self setPreferredContentSize:self->_imageSize.width, self->_imageSize.height];
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }
}

void __89__QLImageItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1184) = 0x7FEFFFFFFFFFFFFFLL;
  *(*(a1 + 32) + 1192) = 0;
  v6 = [*(*(a1 + 32) + 1168) frameAtTime:0.0];
  v2 = (*(a1 + 32) + 1200);
  [v6 size];
  *v2 = v3;
  v2[1] = v4;
  [*(*(a1 + 32) + 1160) setImage:v6];
  [*(a1 + 32) setContentView:*(*(a1 + 32) + 1160)];
  [*(a1 + 32) setPreferredContentSize:{*(*(a1 + 32) + 1200), *(*(a1 + 32) + 1208)}];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = QLImageItemViewController;
  [(QLImageItemViewController *)&v5 viewDidLayoutSubviews];
  if (self->_visualIntelligenceBarContainerView)
  {
    view = [(QLImageItemViewController *)self view];
    [view bounds];
    [(UIView *)self->_visualIntelligenceBarContainerView setFrame:?];

    view2 = [(QLImageItemViewController *)self view];
    [view2 bringSubviewToFront:self->_visualIntelligenceBarContainerView];
  }
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)animationTimerFired:(double)fired
{
  if (self->_imageIsAnimated)
  {
    initialTimeStamp = self->_initialTimeStamp;
    if (initialTimeStamp == 1.79769313e308)
    {
      initialTimeStamp = fired - self->_currentPlaybackTime;
      self->_initialTimeStamp = initialTimeStamp;
    }

    v6 = fired - initialTimeStamp;
    [(QLAnimatedImage *)self->_animatedImage duration];
    self->_currentPlaybackTime = fmod(v6, v7);
    v8 = [(QLAnimatedImage *)self->_animatedImage frameAtTime:?];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
      v8 = [(UIImageView *)self->_imageView setImage:v8];
      v9 = v10;
    }

    MEMORY[0x2821F96F8](v8, v9);
  }
}

- (id)toolbarButtonsForTraitCollection:(id)collection
{
  v8.receiver = self;
  v8.super_class = QLImageItemViewController;
  v4 = [(QLItemViewController *)&v8 toolbarButtonsForTraitCollection:collection];
  array = [v4 mutableCopy];

  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  if ([(QLImageAnalysisManager *)self->_imageAnalysisManager shouldDisplayInfoButton])
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
  if ([identifierCopy isEqualToString:@"QLVisualSearchButton"])
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
          visualIntelligenceBarContainerView = [(QLImageItemViewController *)self view];
          [visualIntelligenceBarContainerView addSubview:visualIntelligenceBarContainerView];
        }

        view = [(QLImageItemViewController *)self view];
        [view setNeedsLayout];
      }
    }

    [(QLImageAnalysisManager *)self->_imageAnalysisManager infoButtonTapped];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = QLImageItemViewController;
    [(QLItemViewController *)&v11 buttonPressedWithIdentifier:identifierCopy completionHandler:handlerCopy];
  }
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  delegate = [(QLItemViewController *)self delegate];
  [delegate previewItemViewController:self wantsFullScreen:0];
}

- (BOOL)draggableViewShouldStartDragSession:(id)session
{
  sessionCopy = session;
  imageAnalysisView = [(QLImageItemViewController *)self imageAnalysisView];
  [sessionCopy locationInView:imageAnalysisView];
  v7 = v6;
  v9 = v8;

  if ([(QLImageAnalysisManager *)self->_imageAnalysisManager textExistsAtPoint:v7, v9]|| [(QLImageAnalysisManager *)self->_imageAnalysisManager imageSubjectExistsAtPoint:v7, v9])
  {
    v10 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = QLImageItemViewController;
    v10 = [(QLItemViewController *)&v12 draggableViewShouldStartDragSession:sessionCopy];
  }

  return v10;
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
  view = [(QLImageItemViewController *)self view];
  v8 = [(QLImageAnalysisManager *)v7 initWithDelegate:self presentingView:view];
  v9 = self->_imageAnalysisManager;
  self->_imageAnalysisManager = v8;
}

- (BOOL)shouldDetectMachineReadableCode
{
  context = [(QLItemViewController *)self context];
  shouldPreventMachineReadableCodeDetection = [context shouldPreventMachineReadableCodeDetection];

  return shouldPreventMachineReadableCodeDetection ^ 1;
}

- (BOOL)canPerformFirstTimeAppearanceActions:(unint64_t)actions
{
  actionsCopy = actions;
  v7.receiver = self;
  v7.super_class = QLImageItemViewController;
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

- (BOOL)shouldAcceptTouch:(id)touch ofGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  v16.receiver = self;
  v16.super_class = QLImageItemViewController;
  touchCopy = touch;
  v8 = [(QLItemViewController *)&v16 shouldAcceptTouch:touchCopy ofGestureRecognizer:recognizerCopy];
  v9 = [(QLImageItemViewController *)self imageAnalysisView:v16.receiver];
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

- (void)updatePreferredDynamicRangeForced:(BOOL)forced
{
  forcedCopy = forced;
  if (_os_feature_enabled_impl())
  {
    if (!self->_HDRTransitionInProgress || forcedCopy)
    {
      appearance = [(QLItemViewController *)self appearance];
      presentationMode = [appearance presentationMode];

      imageView = self->_imageView;
      if (presentationMode == 2)
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }

      [(UIImageView *)imageView setPreferredImageDynamicRange:v9];
    }
  }
}

- (void)animateToPreferredDynamicRange
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__QLImageItemViewController_animateToPreferredDynamicRange__block_invoke;
  v3[3] = &unk_278B57190;
  v3[4] = self;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __59__QLImageItemViewController_animateToPreferredDynamicRange__block_invoke_2;
  v2[3] = &unk_278B571B8;
  v2[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v3 animations:v2 completion:2.0];
}

@end