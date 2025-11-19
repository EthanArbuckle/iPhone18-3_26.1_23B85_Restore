@interface QLMarkupImageItemViewController
- (BOOL)canPerformFirstTimeAppearanceActions:(unint64_t)a3;
- (BOOL)shouldAcceptTouch:(id)a3 ofGestureRecognizer:(id)a4;
- (BOOL)shouldDisplayInfoButton;
- (CGSize)imageSize;
- (UIEdgeInsets)customEdgeInsets;
- (UIEdgeInsets)customSketchOverlayInsets;
- (id)clientPreviewOptions;
- (id)imageAnalysisToolbarButton;
- (id)imageForAnalysis;
- (id)scrollView;
- (id)toolbarButtonsForTraitCollection:(id)a3;
- (void)buttonPressedWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)performFirstTimeAppearanceActions:(unint64_t)a3;
- (void)transitionWillFinish:(BOOL)a3 didComplete:(BOOL)a4;
@end

@implementation QLMarkupImageItemViewController

- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000119FC;
  v9[3] = &unk_100024C80;
  v10 = self;
  v11 = a5;
  v8.receiver = v10;
  v8.super_class = QLMarkupImageItemViewController;
  v7 = v11;
  [(QLMarkupItemViewController *)&v8 loadPreviewControllerWithContents:a3 context:a4 completionHandler:v9];
}

- (id)toolbarButtonsForTraitCollection:(id)a3
{
  v8.receiver = self;
  v8.super_class = QLMarkupImageItemViewController;
  v4 = [(QLMarkupItemViewController *)&v8 toolbarButtonsForTraitCollection:a3];
  v5 = [v4 mutableCopy];

  if (!v5)
  {
    v5 = +[NSMutableArray array];
  }

  if ([(QLMarkupImageItemViewController *)self shouldDisplayInfoButton])
  {
    v6 = [(QLMarkupImageItemViewController *)self imageAnalysisToolbarButton];
    [v5 addObject:v6];
  }

  return v5;
}

- (BOOL)shouldDisplayInfoButton
{
  if ([(QLMarkupImageItemViewController *)self isVisualIntelligenceV2Enabled])
  {
    return 1;
  }

  v4 = [(QLMarkupItemViewController *)self markupViewController];
  if ([v4 isInteractionActive])
  {
    v5 = [(QLMarkupItemViewController *)self markupViewController];
    v3 = [v5 hasResultsForVisualSearch];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)imageAnalysisToolbarButton
{
  if (!self->_infoButton)
  {
    v3 = [QLToolbarButton alloc];
    v4 = [v3 initWithIdentifier:QLVisualSearchButtonIdentifier];
    infoButton = self->_infoButton;
    self->_infoButton = v4;

    if (_UISolariumEnabled())
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    [(QLToolbarButton *)self->_infoButton setPlacement:v6];
    [(QLToolbarButton *)self->_infoButton setAccessibilityIdentifier:QLOverlayImageAnalysisButtonAccessibilityIdentifier];
  }

  if ([(QLMarkupImageItemViewController *)self isVisualIntelligenceV2Enabled])
  {
    if (_UISolariumEnabled())
    {
      v7 = @"apple.visual.intelligence.filled";
    }

    else
    {
      v7 = @"square.fill";
    }

    v8 = [(QLMarkupItemViewController *)self markupViewController];
    v9 = [v8 isVisualSearchEnabled];

    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = @"apple.visual.intelligence";
    }

    [(QLToolbarButton *)self->_infoButton setSymbolImageName:v10];
    [(QLToolbarButton *)self->_infoButton setUseInternalSymbolImage:1];
    v11 = @"info.circle.and.sparkles";
    v12 = @"info.circle.and.sparkles.fill";
  }

  else
  {
    v13 = [(QLMarkupItemViewController *)self markupViewController];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v13 infoButtonGlyphName], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
    {
      v11 = [v13 infoButtonGlyphName];
    }

    else
    {
      v11 = @"info.circle.and.sparkles";
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v13 filledInfoButtonGlyphName], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
    {
      v12 = [v13 filledInfoButtonGlyphName];
    }

    else
    {
      v12 = @"info.circle.and.sparkles.fill";
    }

    v16 = [(QLMarkupItemViewController *)self markupViewController];
    v17 = [v16 isVisualSearchEnabled];

    if (v17)
    {
      v18 = v12;
    }

    else
    {
      v18 = v11;
    }

    [(QLToolbarButton *)self->_infoButton setSymbolImageName:v18];
    [(QLToolbarButton *)self->_infoButton setUseInternalSymbolImage:1];
  }

  v19 = self->_infoButton;
  v20 = v19;

  return v19;
}

- (void)buttonPressedWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_feature_enabled_impl();
  if ([v6 isEqualToString:QLVisualSearchButtonIdentifier])
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v11.receiver = self;
    v11.super_class = QLMarkupImageItemViewController;
    [(QLMarkupItemViewController *)&v11 buttonPressedWithIdentifier:v6 completionHandler:v7];
  }

  else
  {
    v10 = [(QLMarkupItemViewController *)self markupViewController];
    [v10 infoButtonTapped];

    if (v7)
    {
      v7[2](v7);
    }
  }
}

- (UIEdgeInsets)customEdgeInsets
{
  v3 = [(QLMarkupImageItemViewController *)self appearance];
  v4 = [v3 presentationMode];

  [(QLMarkupImageItemViewController *)self imageSize];
  v5 = [(QLMarkupImageItemViewController *)self view];
  [v5 frame];
  v6 = QLSizeAspectRatioEqualToSizeAspectRatioWithTolerance();

  if (v4 == 4 || v6)
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  else
  {
    v7 = [(QLMarkupImageItemViewController *)self appearance];
    [v7 peripheryInsets];
    top = v8;
    left = v10;
    bottom = v12;
    right = v14;
  }

  v16 = [(QLMarkupItemViewController *)self markupViewController];
  v17 = [v16 annotationEditingEnabled];

  if (v17)
  {
    v18 = [(QLMarkupImageItemViewController *)self appearance];
    [v18 topInset];
    v20 = v19;

    if (top < v20)
    {
      top = v20;
    }

    v21 = [(QLMarkupItemViewController *)self markupViewController];
    v22 = [v21 toolbar];
    [v22 frame];
    v24 = v23;

    if (bottom >= v24)
    {
      v24 = bottom;
    }

    v25 = [(QLMarkupImageItemViewController *)self appearance];
    [v25 bottomInset];
    bottom = v26;

    if (v24 >= bottom)
    {
      bottom = v24;
    }
  }

  v27 = top;
  v28 = left;
  v29 = bottom;
  v30 = right;
  result.right = v30;
  result.bottom = v29;
  result.left = v28;
  result.top = v27;
  return result;
}

- (UIEdgeInsets)customSketchOverlayInsets
{
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)scrollView
{
  scrollView = self->_scrollView;
  if (!scrollView)
  {
    v4 = [(QLMarkupItemViewController *)self markupViewController];
    v5 = [v4 contentViewScrollView];
    v6 = self->_scrollView;
    self->_scrollView = v5;

    [(UIScrollView *)self->_scrollView setShowsVerticalScrollIndicator:0];
    [(UIScrollView *)self->_scrollView setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)self->_scrollView setClipsToBounds:0];
    scrollView = self->_scrollView;
  }

  return scrollView;
}

- (void)transitionWillFinish:(BOOL)a3 didComplete:(BOOL)a4
{
  v4 = a4;
  v8.receiver = self;
  v8.super_class = QLMarkupImageItemViewController;
  [QLMarkupImageItemViewController transitionWillFinish:"transitionWillFinish:didComplete:" didComplete:?];
  if (v4 && !a3)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100012518;
    v7[3] = &unk_100024A00;
    v7[4] = self;
    [UIView animateWithDuration:v7 animations:0.1];
  }
}

- (CGSize)imageSize
{
  v2 = [(QLMarkupImageItemViewController *)self imageForAnalysis];
  [v2 size];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)imageForAnalysis
{
  imageForAnalysis = self->_imageForAnalysis;
  if (imageForAnalysis)
  {
    v3 = imageForAnalysis;
  }

  else
  {
    v4 = [(QLMarkupImageItemViewController *)self contents];
    v3 = [v4 image];
  }

  return v3;
}

- (BOOL)canPerformFirstTimeAppearanceActions:(unint64_t)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = QLMarkupImageItemViewController;
  v4 = [(QLMarkupItemViewController *)&v7 canPerformFirstTimeAppearanceActions:?];
  v5 = (v3 & 0x28) != 0;
  if (v4)
  {
    v5 = 1;
  }

  return (v3 & 0x10) != 0 || v5;
}

- (void)performFirstTimeAppearanceActions:(unint64_t)a3
{
  v3 = a3;
  v11.receiver = self;
  v11.super_class = QLMarkupImageItemViewController;
  [(QLMarkupItemViewController *)&v11 performFirstTimeAppearanceActions:?];
  v5 = [(QLMarkupItemViewController *)self markupViewController];
  v6 = [v5 annotationEditingEnabled];

  v7 = [(QLMarkupItemViewController *)self markupViewController];
  v8 = v7;
  if (v3 & 8) == 0 || (v6)
  {
    if ((v3 & 0x10) != 0)
    {
      v9 = v6;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if ((v3 & 0x20) != 0)
      {
        v10 = v6;
      }

      else
      {
        v10 = 1;
      }

      if ((v10 & 1) == 0)
      {
        [v7 setShouldUpliftSubjectAfterNextAnalysis:1];
      }
    }

    else
    {
      [v7 setShouldEnterVisualSearchAfterNextAnalysis:1];
    }
  }

  else
  {
    [v7 setShouldHighlightTextAndDDAfterNextAnalysis:1];
  }
}

- (BOOL)shouldAcceptTouch:(id)a3 ofGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = QLMarkupImageItemViewController;
  if ([(QLMarkupItemViewController *)&v12 shouldAcceptTouch:v6 ofGestureRecognizer:v7])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(QLMarkupItemViewController *)self markupViewController];
      v9 = [v8 acceptSingleTouch:v6];

      v10 = v9 ^ 1;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (id)clientPreviewOptions
{
  v2 = [(QLMarkupImageItemViewController *)self context];
  v3 = [v2 clientPreviewOptions];

  return v3;
}

@end