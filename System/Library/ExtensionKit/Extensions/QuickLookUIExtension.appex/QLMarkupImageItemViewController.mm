@interface QLMarkupImageItemViewController
- (BOOL)canPerformFirstTimeAppearanceActions:(unint64_t)actions;
- (BOOL)shouldAcceptTouch:(id)touch ofGestureRecognizer:(id)recognizer;
- (BOOL)shouldDisplayInfoButton;
- (CGSize)imageSize;
- (UIEdgeInsets)customEdgeInsets;
- (UIEdgeInsets)customSketchOverlayInsets;
- (id)clientPreviewOptions;
- (id)imageAnalysisToolbarButton;
- (id)imageForAnalysis;
- (id)scrollView;
- (id)toolbarButtonsForTraitCollection:(id)collection;
- (void)buttonPressedWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler;
- (void)performFirstTimeAppearanceActions:(unint64_t)actions;
- (void)transitionWillFinish:(BOOL)finish didComplete:(BOOL)complete;
@end

@implementation QLMarkupImageItemViewController

- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000119FC;
  v9[3] = &unk_100024C80;
  selfCopy = self;
  handlerCopy = handler;
  v8.receiver = selfCopy;
  v8.super_class = QLMarkupImageItemViewController;
  v7 = handlerCopy;
  [(QLMarkupItemViewController *)&v8 loadPreviewControllerWithContents:contents context:context completionHandler:v9];
}

- (id)toolbarButtonsForTraitCollection:(id)collection
{
  v8.receiver = self;
  v8.super_class = QLMarkupImageItemViewController;
  v4 = [(QLMarkupItemViewController *)&v8 toolbarButtonsForTraitCollection:collection];
  v5 = [v4 mutableCopy];

  if (!v5)
  {
    v5 = +[NSMutableArray array];
  }

  if ([(QLMarkupImageItemViewController *)self shouldDisplayInfoButton])
  {
    imageAnalysisToolbarButton = [(QLMarkupImageItemViewController *)self imageAnalysisToolbarButton];
    [v5 addObject:imageAnalysisToolbarButton];
  }

  return v5;
}

- (BOOL)shouldDisplayInfoButton
{
  if ([(QLMarkupImageItemViewController *)self isVisualIntelligenceV2Enabled])
  {
    return 1;
  }

  markupViewController = [(QLMarkupItemViewController *)self markupViewController];
  if ([markupViewController isInteractionActive])
  {
    markupViewController2 = [(QLMarkupItemViewController *)self markupViewController];
    hasResultsForVisualSearch = [markupViewController2 hasResultsForVisualSearch];
  }

  else
  {
    hasResultsForVisualSearch = 0;
  }

  return hasResultsForVisualSearch;
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

    markupViewController = [(QLMarkupItemViewController *)self markupViewController];
    isVisualSearchEnabled = [markupViewController isVisualSearchEnabled];

    if (isVisualSearchEnabled)
    {
      v10 = v7;
    }

    else
    {
      v10 = @"apple.visual.intelligence";
    }

    [(QLToolbarButton *)self->_infoButton setSymbolImageName:v10];
    [(QLToolbarButton *)self->_infoButton setUseInternalSymbolImage:1];
    infoButtonGlyphName = @"info.circle.and.sparkles";
    filledInfoButtonGlyphName = @"info.circle.and.sparkles.fill";
  }

  else
  {
    markupViewController2 = [(QLMarkupItemViewController *)self markupViewController];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([markupViewController2 infoButtonGlyphName], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
    {
      infoButtonGlyphName = [markupViewController2 infoButtonGlyphName];
    }

    else
    {
      infoButtonGlyphName = @"info.circle.and.sparkles";
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && ([markupViewController2 filledInfoButtonGlyphName], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
    {
      filledInfoButtonGlyphName = [markupViewController2 filledInfoButtonGlyphName];
    }

    else
    {
      filledInfoButtonGlyphName = @"info.circle.and.sparkles.fill";
    }

    markupViewController3 = [(QLMarkupItemViewController *)self markupViewController];
    isVisualSearchEnabled2 = [markupViewController3 isVisualSearchEnabled];

    if (isVisualSearchEnabled2)
    {
      v18 = filledInfoButtonGlyphName;
    }

    else
    {
      v18 = infoButtonGlyphName;
    }

    [(QLToolbarButton *)self->_infoButton setSymbolImageName:v18];
    [(QLToolbarButton *)self->_infoButton setUseInternalSymbolImage:1];
  }

  v19 = self->_infoButton;
  v20 = v19;

  return v19;
}

- (void)buttonPressedWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = _os_feature_enabled_impl();
  if ([identifierCopy isEqualToString:QLVisualSearchButtonIdentifier])
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
    [(QLMarkupItemViewController *)&v11 buttonPressedWithIdentifier:identifierCopy completionHandler:handlerCopy];
  }

  else
  {
    markupViewController = [(QLMarkupItemViewController *)self markupViewController];
    [markupViewController infoButtonTapped];

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }
}

- (UIEdgeInsets)customEdgeInsets
{
  appearance = [(QLMarkupImageItemViewController *)self appearance];
  presentationMode = [appearance presentationMode];

  [(QLMarkupImageItemViewController *)self imageSize];
  view = [(QLMarkupImageItemViewController *)self view];
  [view frame];
  v6 = QLSizeAspectRatioEqualToSizeAspectRatioWithTolerance();

  if (presentationMode == 4 || v6)
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  else
  {
    appearance2 = [(QLMarkupImageItemViewController *)self appearance];
    [appearance2 peripheryInsets];
    top = v8;
    left = v10;
    bottom = v12;
    right = v14;
  }

  markupViewController = [(QLMarkupItemViewController *)self markupViewController];
  annotationEditingEnabled = [markupViewController annotationEditingEnabled];

  if (annotationEditingEnabled)
  {
    appearance3 = [(QLMarkupImageItemViewController *)self appearance];
    [appearance3 topInset];
    v20 = v19;

    if (top < v20)
    {
      top = v20;
    }

    markupViewController2 = [(QLMarkupItemViewController *)self markupViewController];
    toolbar = [markupViewController2 toolbar];
    [toolbar frame];
    v24 = v23;

    if (bottom >= v24)
    {
      v24 = bottom;
    }

    appearance4 = [(QLMarkupImageItemViewController *)self appearance];
    [appearance4 bottomInset];
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
    markupViewController = [(QLMarkupItemViewController *)self markupViewController];
    contentViewScrollView = [markupViewController contentViewScrollView];
    v6 = self->_scrollView;
    self->_scrollView = contentViewScrollView;

    [(UIScrollView *)self->_scrollView setShowsVerticalScrollIndicator:0];
    [(UIScrollView *)self->_scrollView setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)self->_scrollView setClipsToBounds:0];
    scrollView = self->_scrollView;
  }

  return scrollView;
}

- (void)transitionWillFinish:(BOOL)finish didComplete:(BOOL)complete
{
  completeCopy = complete;
  v8.receiver = self;
  v8.super_class = QLMarkupImageItemViewController;
  [QLMarkupImageItemViewController transitionWillFinish:"transitionWillFinish:didComplete:" didComplete:?];
  if (completeCopy && !finish)
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
  imageForAnalysis = [(QLMarkupImageItemViewController *)self imageForAnalysis];
  [imageForAnalysis size];
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
    image = imageForAnalysis;
  }

  else
  {
    contents = [(QLMarkupImageItemViewController *)self contents];
    image = [contents image];
  }

  return image;
}

- (BOOL)canPerformFirstTimeAppearanceActions:(unint64_t)actions
{
  actionsCopy = actions;
  v7.receiver = self;
  v7.super_class = QLMarkupImageItemViewController;
  v4 = [(QLMarkupItemViewController *)&v7 canPerformFirstTimeAppearanceActions:?];
  v5 = (actionsCopy & 0x28) != 0;
  if (v4)
  {
    v5 = 1;
  }

  return (actionsCopy & 0x10) != 0 || v5;
}

- (void)performFirstTimeAppearanceActions:(unint64_t)actions
{
  actionsCopy = actions;
  v11.receiver = self;
  v11.super_class = QLMarkupImageItemViewController;
  [(QLMarkupItemViewController *)&v11 performFirstTimeAppearanceActions:?];
  markupViewController = [(QLMarkupItemViewController *)self markupViewController];
  annotationEditingEnabled = [markupViewController annotationEditingEnabled];

  markupViewController2 = [(QLMarkupItemViewController *)self markupViewController];
  v8 = markupViewController2;
  if (actionsCopy & 8) == 0 || (annotationEditingEnabled)
  {
    if ((actionsCopy & 0x10) != 0)
    {
      v9 = annotationEditingEnabled;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if ((actionsCopy & 0x20) != 0)
      {
        v10 = annotationEditingEnabled;
      }

      else
      {
        v10 = 1;
      }

      if ((v10 & 1) == 0)
      {
        [markupViewController2 setShouldUpliftSubjectAfterNextAnalysis:1];
      }
    }

    else
    {
      [markupViewController2 setShouldEnterVisualSearchAfterNextAnalysis:1];
    }
  }

  else
  {
    [markupViewController2 setShouldHighlightTextAndDDAfterNextAnalysis:1];
  }
}

- (BOOL)shouldAcceptTouch:(id)touch ofGestureRecognizer:(id)recognizer
{
  touchCopy = touch;
  recognizerCopy = recognizer;
  v12.receiver = self;
  v12.super_class = QLMarkupImageItemViewController;
  if ([(QLMarkupItemViewController *)&v12 shouldAcceptTouch:touchCopy ofGestureRecognizer:recognizerCopy])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      markupViewController = [(QLMarkupItemViewController *)self markupViewController];
      v9 = [markupViewController acceptSingleTouch:touchCopy];

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
  context = [(QLMarkupImageItemViewController *)self context];
  clientPreviewOptions = [context clientPreviewOptions];

  return clientPreviewOptions;
}

@end