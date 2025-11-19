@interface QLImageItemViewController
- (BOOL)canPerformFirstTimeAppearanceActions:(unint64_t)a3;
- (BOOL)draggableViewShouldStartDragSession:(id)a3;
- (BOOL)shouldAcceptTouch:(id)a3 ofGestureRecognizer:(id)a4;
- (BOOL)shouldDetectMachineReadableCode;
- (CGSize)imageSize;
- (NSDictionary)clientPreviewOptions;
- (id)toolbarButtonsForTraitCollection:(id)a3;
- (void)_setupAndStartImageAnalysisIfNeeded;
- (void)animateToPreferredDynamicRange;
- (void)animationTimerFired:(double)a3;
- (void)buttonPressedWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)imageAnalysisInteractionDidDismissVisualSearchController;
- (void)imageAnalysisInteractionWillPresentVisualSearchController;
- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)performFirstTimeAppearanceActions:(unint64_t)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)updatePreferredDynamicRangeForced:(BOOL)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation QLImageItemViewController

- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x277D755E8]);
  imageView = self->_imageView;
  self->_imageView = v10;

  [(UIImageView *)self->_imageView setUserInteractionEnabled:1];
  v12 = [MEMORY[0x277D75348] clearColor];
  [(UIImageView *)self->_imageView setBackgroundColor:v12];

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
    objc_storeStrong(&self->_animatedImage, a3);
    v18 = v9;
    QLRunInMainThread();
  }

  else
  {
    v14 = [v8 image];
    [(UIImageView *)self->_imageView setImage:v14];

    v15 = [(UIImageView *)self->_imageView image];
    [v15 size];
    self->_imageSize.width = v16;
    self->_imageSize.height = v17;

    [(QLScrollableContentItemViewController *)self setContentView:self->_imageView];
    [(QLImageItemViewController *)self setPreferredContentSize:self->_imageSize.width, self->_imageSize.height];
    if (v9)
    {
      (*(v9 + 2))(v9, 0);
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
    v3 = [(QLImageItemViewController *)self view];
    [v3 bounds];
    [(UIView *)self->_visualIntelligenceBarContainerView setFrame:?];

    v4 = [(QLImageItemViewController *)self view];
    [v4 bringSubviewToFront:self->_visualIntelligenceBarContainerView];
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

- (void)animationTimerFired:(double)a3
{
  if (self->_imageIsAnimated)
  {
    initialTimeStamp = self->_initialTimeStamp;
    if (initialTimeStamp == 1.79769313e308)
    {
      initialTimeStamp = a3 - self->_currentPlaybackTime;
      self->_initialTimeStamp = initialTimeStamp;
    }

    v6 = a3 - initialTimeStamp;
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

- (id)toolbarButtonsForTraitCollection:(id)a3
{
  v8.receiver = self;
  v8.super_class = QLImageItemViewController;
  v4 = [(QLItemViewController *)&v8 toolbarButtonsForTraitCollection:a3];
  v5 = [v4 mutableCopy];

  if (!v5)
  {
    v5 = [MEMORY[0x277CBEB18] array];
  }

  if ([(QLImageAnalysisManager *)self->_imageAnalysisManager shouldDisplayInfoButton])
  {
    v6 = [(QLImageAnalysisManager *)self->_imageAnalysisManager imageAnalysisToolbarButton];
    [v5 addObject:v6];
  }

  return v5;
}

- (void)buttonPressedWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"QLVisualSearchButton"])
  {
    if ([(QLImageAnalysisManager *)self->_imageAnalysisManager isVisualIntelligenceV2Enabled])
    {
      v8 = [(QLImageAnalysisManager *)self->_imageAnalysisManager visualIntelligenceBarContainerView];
      if (v8)
      {
        if ([(QLImageAnalysisManager *)self->_imageAnalysisManager isVisualIntelligenceV2Active])
        {
          [v8 removeFromSuperview];
          visualIntelligenceBarContainerView = self->_visualIntelligenceBarContainerView;
          self->_visualIntelligenceBarContainerView = 0;
        }

        else
        {
          objc_storeStrong(&self->_visualIntelligenceBarContainerView, v8);
          visualIntelligenceBarContainerView = [(QLImageItemViewController *)self view];
          [visualIntelligenceBarContainerView addSubview:v8];
        }

        v10 = [(QLImageItemViewController *)self view];
        [v10 setNeedsLayout];
      }
    }

    [(QLImageAnalysisManager *)self->_imageAnalysisManager infoButtonTapped];
    if (v7)
    {
      v7[2](v7);
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = QLImageItemViewController;
    [(QLItemViewController *)&v11 buttonPressedWithIdentifier:v6 completionHandler:v7];
  }
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = [(QLItemViewController *)self delegate];
  [v4 previewItemViewController:self wantsFullScreen:0];
}

- (BOOL)draggableViewShouldStartDragSession:(id)a3
{
  v4 = a3;
  v5 = [(QLImageItemViewController *)self imageAnalysisView];
  [v4 locationInView:v5];
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
    v10 = [(QLItemViewController *)&v12 draggableViewShouldStartDragSession:v4];
  }

  return v10;
}

- (NSDictionary)clientPreviewOptions
{
  v2 = [(QLItemViewController *)self context];
  v3 = [v2 clientPreviewOptions];

  return v3;
}

- (void)imageAnalysisInteractionWillPresentVisualSearchController
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:self->_isFullScreen];
  savedFullScreenState = self->_savedFullScreenState;
  self->_savedFullScreenState = v3;

  v5 = [(QLItemViewController *)self delegate];
  [v5 previewItemViewController:self wantsFullScreen:1];
}

- (void)imageAnalysisInteractionDidDismissVisualSearchController
{
  savedFullScreenState = self->_savedFullScreenState;
  if (savedFullScreenState)
  {
    v4 = [(NSNumber *)savedFullScreenState BOOLValue];
    v5 = self->_savedFullScreenState;
    self->_savedFullScreenState = 0;
  }

  else
  {
    v4 = 0;
  }

  v6 = [(QLItemViewController *)self delegate];
  [v6 previewItemViewController:self wantsFullScreen:v4];
}

- (void)_setupAndStartImageAnalysisIfNeeded
{
  imageAnalysisManager = self->_imageAnalysisManager;
  if (imageAnalysisManager)
  {
    v4 = [(QLImageAnalysisManager *)imageAnalysisManager hasAnalysis];
    v5 = self->_imageAnalysisManager;
    if (v4)
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
  v10 = [(QLImageItemViewController *)self view];
  v8 = [(QLImageAnalysisManager *)v7 initWithDelegate:self presentingView:v10];
  v9 = self->_imageAnalysisManager;
  self->_imageAnalysisManager = v8;
}

- (BOOL)shouldDetectMachineReadableCode
{
  v2 = [(QLItemViewController *)self context];
  v3 = [v2 shouldPreventMachineReadableCodeDetection];

  return v3 ^ 1;
}

- (BOOL)canPerformFirstTimeAppearanceActions:(unint64_t)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = QLImageItemViewController;
  v4 = [(QLItemViewController *)&v7 canPerformFirstTimeAppearanceActions:?];
  v5 = (v3 & 0x28) != 0;
  if (v4)
  {
    v5 = 1;
  }

  return (v3 & 0x10) != 0 || v5;
}

- (void)performFirstTimeAppearanceActions:(unint64_t)a3
{
  if ((a3 & 8) != 0)
  {
    [(QLImageAnalysisManager *)self->_imageAnalysisManager setShouldHighlightTextAndDDAfterNextAnalysis:1];
  }

  else if ((a3 & 0x10) != 0)
  {
    [(QLImageAnalysisManager *)self->_imageAnalysisManager setShouldEnterVisualSearchAfterNextAnalysis:1];
  }

  else if ((a3 & 0x20) != 0)
  {
    [(QLImageAnalysisManager *)self->_imageAnalysisManager setShouldUpliftSubjectAfterNextAnalysis:1];
  }
}

- (BOOL)shouldAcceptTouch:(id)a3 ofGestureRecognizer:(id)a4
{
  v6 = a4;
  v16.receiver = self;
  v16.super_class = QLImageItemViewController;
  v7 = a3;
  v8 = [(QLItemViewController *)&v16 shouldAcceptTouch:v7 ofGestureRecognizer:v6];
  v9 = [(QLImageItemViewController *)self imageAnalysisView:v16.receiver];
  [v7 locationInView:v9];
  v11 = v10;
  v13 = v12;

  LODWORD(v9) = [v7 _isPointerTouch];
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

- (void)updatePreferredDynamicRangeForced:(BOOL)a3
{
  v3 = a3;
  if (_os_feature_enabled_impl())
  {
    if (!self->_HDRTransitionInProgress || v3)
    {
      v6 = [(QLItemViewController *)self appearance];
      v7 = [v6 presentationMode];

      imageView = self->_imageView;
      if (v7 == 2)
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