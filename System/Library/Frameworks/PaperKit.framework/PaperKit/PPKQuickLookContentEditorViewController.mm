@interface PPKQuickLookContentEditorViewController
+ (CGSize)_suggestedContentSizeForImageSource:(CGImageSource *)source;
+ (CGSize)_suggestedContentSizeForPDF:(id)f;
+ (CGSize)suggestedContentSizeForData:(id)data;
+ (CGSize)suggestedContentSizeForURL:(id)l;
- (BOOL)acceptSingleTouch:(id)touch;
- (BOOL)canEncryptDocument;
- (BOOL)documentIsLocked;
- (BOOL)hasResultsForVisualSearch;
- (BOOL)isBannerVisible;
- (BOOL)isInteractionActive;
- (BOOL)isVisualSearchEnabled;
- (BOOL)shouldAllowEditingContents:(id)contents;
- (BOOL)shouldEnterVisualSearchAfterNextAnalysis;
- (BOOL)shouldHighlightTextAndDDAfterNextAnalysis;
- (BOOL)shouldUpliftSubjectAfterNextAnalysis;
- (id)filledInfoButtonGlyphName;
- (id)findInteraction;
- (id)infoButtonGlyphName;
- (void)find:(id)find;
- (void)findNext:(id)next;
- (void)findPrevious:(id)previous;
- (void)flattenImageForAnalysis;
- (void)hideBanner;
- (void)infoButtonTapped;
- (void)markupContainerViewController:(id)controller contentFrameDidChange:(CGRect)change;
- (void)markupContainerViewController:(id)controller detectedFormInContent:(BOOL)content withAutofill:(BOOL)autofill;
- (void)markupContainerViewController:(id)controller didDismissViewControllerWithAnimation:(BOOL)animation;
- (void)markupContainerViewController:(id)controller openFormFilling:(BOOL)filling;
- (void)markupContainerViewController:(id)controller thumbnailViewDidCollapse:(BOOL)collapse;
- (void)markupContainerViewController:(id)controller updateChromeWithAnimation:(BOOL)animation;
- (void)markupContainerViewController:(id)controller willPresentViewControllerWithAnimation:(BOOL)animation;
- (void)markupContainerViewControllerActiveAnalysisInteractionTypesDidChange:(id)change;
- (void)markupContainerViewControllerAvailableAnalysisResultTypesDidChange:(id)change;
- (void)markupContainerViewControllerDidChangeContent:(id)content enablingMarkup:(BOOL)markup;
- (void)setShouldEnterVisualSearchAfterNextAnalysis:(BOOL)analysis;
- (void)setShouldHighlightTextAndDDAfterNextAnalysis:(BOOL)analysis;
- (void)setShouldUpliftSubjectAfterNextAnalysis:(BOOL)analysis;
- (void)setupAndStartImageAnalysisIfNeeded;
- (void)shouldHideMarkupOverlays:(BOOL)overlays animated:(BOOL)animated;
- (void)showBannerWithConfiguration:(id)configuration;
- (void)stopImageAnalysis;
- (void)updateForFullScreen:(BOOL)screen animated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation PPKQuickLookContentEditorViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PPKQuickLookContentEditorViewController;
  [(PPKMarkupViewController *)&v4 viewDidLoad];
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  [markupContainerVC setFindInteractionEnabled:1];
}

- (BOOL)acceptSingleTouch:(id)touch
{
  touchCopy = touch;
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  v6 = [markupContainerVC acceptSingleTouch:touchCopy];

  return v6;
}

+ (CGSize)suggestedContentSizeForURL:(id)l
{
  lCopy = l;
  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  if (lCopy)
  {
    v7 = [(PPKMarkupViewController *)PPKQuickLookContentEditorViewController _contentTypeForURL:lCopy];
    if ([v7 conformsToType:*MEMORY[0x1E6982F10]])
    {
      v8 = [objc_alloc(MEMORY[0x1E6978028]) initWithURL:lCopy];
      [self _suggestedContentSizeForPDF:v8];
      v5 = v9;
      v6 = v10;
    }

    else if ([v7 conformsToType:*MEMORY[0x1E6982E30]])
    {
      v11 = CGImageSourceCreateWithURL(lCopy, 0);
      if (v11)
      {
        v12 = v11;
        [self _suggestedContentSizeForImageSource:v11];
        v5 = v13;
        v6 = v14;
        CFRelease(v12);
      }
    }
  }

  v15 = v5;
  v16 = v6;
  result.height = v16;
  result.width = v15;
  return result;
}

+ (CGSize)suggestedContentSizeForData:(id)data
{
  dataCopy = data;
  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  if (dataCopy)
  {
    v7 = [(PPKMarkupViewController *)PPKQuickLookContentEditorViewController _contentTypeForData:dataCopy];
    if ([v7 conformsToType:*MEMORY[0x1E6982F10]])
    {
      v8 = [objc_alloc(MEMORY[0x1E6978028]) initWithData:dataCopy];
      [self _suggestedContentSizeForPDF:v8];
      v5 = v9;
      v6 = v10;
    }

    else if ([v7 conformsToType:*MEMORY[0x1E6982E30]])
    {
      v11 = CGImageSourceCreateWithData(dataCopy, 0);
      if (v11)
      {
        v12 = v11;
        [self _suggestedContentSizeForImageSource:v11];
        v5 = v13;
        v6 = v14;
        CFRelease(v12);
      }
    }
  }

  v15 = v5;
  v16 = v6;
  result.height = v16;
  result.width = v15;
  return result;
}

- (BOOL)documentIsLocked
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  documentIsLocked = [markupContainerVC documentIsLocked];

  return documentIsLocked;
}

- (BOOL)canEncryptDocument
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  canEncryptDocument = [markupContainerVC canEncryptDocument];

  return canEncryptDocument;
}

- (void)updateForFullScreen:(BOOL)screen animated:(BOOL)animated
{
  animatedCopy = animated;
  screenCopy = screen;
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  [markupContainerVC updateForFullscreen:screenCopy animated:animatedCopy];
}

- (void)shouldHideMarkupOverlays:(BOOL)overlays animated:(BOOL)animated
{
  animatedCopy = animated;
  overlaysCopy = overlays;
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  [markupContainerVC setShouldHideMarkupOverlays:overlaysCopy animated:animatedCopy];
}

- (BOOL)shouldHighlightTextAndDDAfterNextAnalysis
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  shouldHighlightTextAndODAfterNextAnalysis = [markupContainerVC shouldHighlightTextAndODAfterNextAnalysis];

  return shouldHighlightTextAndODAfterNextAnalysis;
}

- (void)setShouldHighlightTextAndDDAfterNextAnalysis:(BOOL)analysis
{
  analysisCopy = analysis;
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  [markupContainerVC setShouldHighlightTextAndODAfterNextAnalysis:analysisCopy];
}

- (BOOL)shouldEnterVisualSearchAfterNextAnalysis
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  shouldEnterVisualSearchAfterNextAnalysis = [markupContainerVC shouldEnterVisualSearchAfterNextAnalysis];

  return shouldEnterVisualSearchAfterNextAnalysis;
}

- (void)setShouldEnterVisualSearchAfterNextAnalysis:(BOOL)analysis
{
  analysisCopy = analysis;
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  [markupContainerVC setShouldEnterVisualSearchAfterNextAnalysis:analysisCopy];
}

- (BOOL)shouldUpliftSubjectAfterNextAnalysis
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  shouldUpliftSubjectAfterNextAnalysis = [markupContainerVC shouldUpliftSubjectAfterNextAnalysis];

  return shouldUpliftSubjectAfterNextAnalysis;
}

- (void)setShouldUpliftSubjectAfterNextAnalysis:(BOOL)analysis
{
  analysisCopy = analysis;
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  [markupContainerVC setShouldUpliftSubjectAfterNextAnalysis:analysisCopy];
}

- (void)infoButtonTapped
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  [markupContainerVC infoButtonTapped];
}

- (void)setupAndStartImageAnalysisIfNeeded
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  [markupContainerVC setupAndStartImageAnalysisIfNeeded];
}

- (void)stopImageAnalysis
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  [markupContainerVC stopImageAnalysis];
}

- (void)flattenImageForAnalysis
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  [markupContainerVC flattenImageForAnalysis];
}

- (BOOL)isInteractionActive
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  isInteractionActive = [markupContainerVC isInteractionActive];

  return isInteractionActive;
}

- (BOOL)hasResultsForVisualSearch
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  hasResultsForVisualSearch = [markupContainerVC hasResultsForVisualSearch];

  return hasResultsForVisualSearch;
}

- (BOOL)isVisualSearchEnabled
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  isVisualSearchEnabled = [markupContainerVC isVisualSearchEnabled];

  return isVisualSearchEnabled;
}

- (id)infoButtonGlyphName
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  infoButtonGlyphName = [markupContainerVC infoButtonGlyphName];

  return infoButtonGlyphName;
}

- (id)filledInfoButtonGlyphName
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  filledInfoButtonGlyphName = [markupContainerVC filledInfoButtonGlyphName];

  return filledInfoButtonGlyphName;
}

- (void)markupContainerViewController:(id)controller updateChromeWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  delegate = [(PPKMarkupViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate editor:self needsToUpdateChromeWithAnimation:animationCopy];
  }
}

- (void)markupContainerViewController:(id)controller willPresentViewControllerWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  delegate = [(PPKMarkupViewController *)self delegate];
  if ([(PPKMarkupViewController *)self annotationEditingEnabled])
  {
    [(PPKQuickLookContentEditorViewController *)self setNeedsToRestoreAnnotationEditingMode:1];
    [(PPKMarkupViewController *)self setAnnotationEditingEnabled:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [delegate editor:self willPresentViewControllerWithAnimation:animationCopy];
  }
}

- (void)markupContainerViewController:(id)controller didDismissViewControllerWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  delegate = [(PPKMarkupViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate editor:self didDismissViewControllerWithAnimation:animationCopy];
  }

  if ([(PPKQuickLookContentEditorViewController *)self needsToRestoreAnnotationEditingMode])
  {
    [(PPKMarkupViewController *)self setAnnotationEditingEnabled:1];
    [(PPKQuickLookContentEditorViewController *)self setNeedsToRestoreAnnotationEditingMode:0];
  }
}

- (void)markupContainerViewControllerActiveAnalysisInteractionTypesDidChange:(id)change
{
  delegate = [(PPKMarkupViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate editor:self needsToUpdateChromeWithAnimation:1];
  }
}

- (void)markupContainerViewControllerAvailableAnalysisResultTypesDidChange:(id)change
{
  delegate = [(PPKMarkupViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate editor:self needsToUpdateChromeWithAnimation:1];
  }
}

- (void)markupContainerViewController:(id)controller thumbnailViewDidCollapse:(BOOL)collapse
{
  collapseCopy = collapse;
  delegate = [(PPKMarkupViewController *)self delegate];
  v7 = delegate;
  if (delegate)
  {
    v9 = delegate;
    v8 = objc_opt_respondsToSelector();
    v7 = v9;
    if (v8)
    {
      [v9 editor:self needsScreenEdgePanGestureRecognition:!collapseCopy];
      v7 = v9;
    }
  }
}

+ (CGSize)_suggestedContentSizeForImageSource:(CGImageSource *)source
{
  ImageAtIndex = CGImageSourceCreateImageAtIndex(source, 0, 0);
  if (ImageAtIndex)
  {
    v4 = ImageAtIndex;
    CGImageGetSizeAfterOrientation();
    v6 = v5;
    v8 = v7;
    CFRelease(v4);
  }

  else
  {
    v6 = *MEMORY[0x1E695F060];
    v8 = *(MEMORY[0x1E695F060] + 8);
  }

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

+ (CGSize)_suggestedContentSizeForPDF:(id)f
{
  fCopy = f;
  v4 = fCopy;
  width = *MEMORY[0x1E695F060];
  height = *(MEMORY[0x1E695F060] + 8);
  if (fCopy && [fCopy pageCount])
  {
    v7 = [v4 pageAtIndex:0];
    BoxRect = CGPDFPageGetBoxRect([v7 pageRef], kCGPDFMediaBox);
    width = BoxRect.size.width;
    height = BoxRect.size.height;
  }

  v8 = width;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)markupContainerViewControllerDidChangeContent:(id)content enablingMarkup:(BOOL)markup
{
  markupCopy = markup;
  delegate = [(PPKMarkupViewController *)self delegate];
  v7 = delegate;
  if (delegate)
  {
    v9 = delegate;
    v8 = objc_opt_respondsToSelector();
    v7 = v9;
    if (v8)
    {
      [v9 editorDidChangeContent:self enablingMarkup:markupCopy];
      v7 = v9;
    }
  }
}

- (void)markupContainerViewController:(id)controller openFormFilling:(BOOL)filling
{
  fillingCopy = filling;
  delegate = [(PPKMarkupViewController *)self delegate];
  v7 = delegate;
  if (delegate)
  {
    v9 = delegate;
    v8 = objc_opt_respondsToSelector();
    v7 = v9;
    if (v8)
    {
      [v9 editorDidChangeContent:self enablingFormFilling:fillingCopy];
      v7 = v9;
    }
  }
}

- (void)markupContainerViewController:(id)controller contentFrameDidChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  delegate = [(PPKMarkupViewController *)self delegate];
  v10 = delegate;
  if (delegate)
  {
    v12 = delegate;
    v11 = objc_opt_respondsToSelector();
    v10 = v12;
    if (v11)
    {
      [v12 editor:self contentFrameDidChange:{x, y, width, height}];
      v10 = v12;
    }
  }
}

- (void)markupContainerViewController:(id)controller detectedFormInContent:(BOOL)content withAutofill:(BOOL)autofill
{
  autofillCopy = autofill;
  contentCopy = content;
  delegate = [(PPKMarkupViewController *)self delegate];
  v9 = delegate;
  if (delegate)
  {
    v11 = delegate;
    if (objc_opt_respondsToSelector())
    {
      [v11 editor:self detectedFormInContent:contentCopy withAutofill:autofillCopy];
    }

    else
    {
      v10 = objc_opt_respondsToSelector();
      v9 = v11;
      if ((v10 & 1) == 0)
      {
        goto LABEL_7;
      }

      [v11 editor:self detectedFormInContent:contentCopy];
    }

    v9 = v11;
  }

LABEL_7:
}

- (BOOL)shouldAllowEditingContents:(id)contents
{
  v9.receiver = self;
  v9.super_class = PPKQuickLookContentEditorViewController;
  v4 = [(PPKMarkupViewController *)&v9 shouldAllowEditingContents:contents];
  delegate = [(PPKMarkupViewController *)self delegate];
  v6 = delegate;
  if (v4)
  {
    v7 = delegate == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (objc_opt_respondsToSelector())
    {
      LOBYTE(v4) = [v6 editorShouldAllowEditingContents:self];
    }

    else
    {
      LOBYTE(v4) = 1;
    }
  }

  return v4;
}

- (void)showBannerWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  [markupContainerVC showBannerViewWith:configurationCopy];
}

- (void)hideBanner
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  bannerView = [markupContainerVC bannerView];
  [bannerView removeFromSuperview];
}

- (BOOL)isBannerVisible
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  bannerView = [markupContainerVC bannerView];
  window = [bannerView window];
  v5 = window != 0;

  return v5;
}

- (id)findInteraction
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  findInteraction = [markupContainerVC findInteraction];

  return findInteraction;
}

- (void)find:(id)find
{
  findInteraction = [(PPKQuickLookContentEditorViewController *)self findInteraction];
  [findInteraction presentFindNavigatorShowingReplace:0];
}

- (void)findNext:(id)next
{
  findInteraction = [(PPKQuickLookContentEditorViewController *)self findInteraction];
  [findInteraction findNext];
}

- (void)findPrevious:(id)previous
{
  findInteraction = [(PPKQuickLookContentEditorViewController *)self findInteraction];
  [findInteraction findPrevious];
}

@end