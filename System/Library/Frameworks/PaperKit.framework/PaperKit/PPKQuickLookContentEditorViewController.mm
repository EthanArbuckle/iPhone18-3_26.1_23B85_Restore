@interface PPKQuickLookContentEditorViewController
+ (CGSize)_suggestedContentSizeForImageSource:(CGImageSource *)a3;
+ (CGSize)_suggestedContentSizeForPDF:(id)a3;
+ (CGSize)suggestedContentSizeForData:(id)a3;
+ (CGSize)suggestedContentSizeForURL:(id)a3;
- (BOOL)acceptSingleTouch:(id)a3;
- (BOOL)canEncryptDocument;
- (BOOL)documentIsLocked;
- (BOOL)hasResultsForVisualSearch;
- (BOOL)isBannerVisible;
- (BOOL)isInteractionActive;
- (BOOL)isVisualSearchEnabled;
- (BOOL)shouldAllowEditingContents:(id)a3;
- (BOOL)shouldEnterVisualSearchAfterNextAnalysis;
- (BOOL)shouldHighlightTextAndDDAfterNextAnalysis;
- (BOOL)shouldUpliftSubjectAfterNextAnalysis;
- (id)filledInfoButtonGlyphName;
- (id)findInteraction;
- (id)infoButtonGlyphName;
- (void)find:(id)a3;
- (void)findNext:(id)a3;
- (void)findPrevious:(id)a3;
- (void)flattenImageForAnalysis;
- (void)hideBanner;
- (void)infoButtonTapped;
- (void)markupContainerViewController:(id)a3 contentFrameDidChange:(CGRect)a4;
- (void)markupContainerViewController:(id)a3 detectedFormInContent:(BOOL)a4 withAutofill:(BOOL)a5;
- (void)markupContainerViewController:(id)a3 didDismissViewControllerWithAnimation:(BOOL)a4;
- (void)markupContainerViewController:(id)a3 openFormFilling:(BOOL)a4;
- (void)markupContainerViewController:(id)a3 thumbnailViewDidCollapse:(BOOL)a4;
- (void)markupContainerViewController:(id)a3 updateChromeWithAnimation:(BOOL)a4;
- (void)markupContainerViewController:(id)a3 willPresentViewControllerWithAnimation:(BOOL)a4;
- (void)markupContainerViewControllerActiveAnalysisInteractionTypesDidChange:(id)a3;
- (void)markupContainerViewControllerAvailableAnalysisResultTypesDidChange:(id)a3;
- (void)markupContainerViewControllerDidChangeContent:(id)a3 enablingMarkup:(BOOL)a4;
- (void)setShouldEnterVisualSearchAfterNextAnalysis:(BOOL)a3;
- (void)setShouldHighlightTextAndDDAfterNextAnalysis:(BOOL)a3;
- (void)setShouldUpliftSubjectAfterNextAnalysis:(BOOL)a3;
- (void)setupAndStartImageAnalysisIfNeeded;
- (void)shouldHideMarkupOverlays:(BOOL)a3 animated:(BOOL)a4;
- (void)showBannerWithConfiguration:(id)a3;
- (void)stopImageAnalysis;
- (void)updateForFullScreen:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidLoad;
@end

@implementation PPKQuickLookContentEditorViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PPKQuickLookContentEditorViewController;
  [(PPKMarkupViewController *)&v4 viewDidLoad];
  v3 = [(PPKMarkupViewController *)self markupContainerVC];
  [v3 setFindInteractionEnabled:1];
}

- (BOOL)acceptSingleTouch:(id)a3
{
  v4 = a3;
  v5 = [(PPKMarkupViewController *)self markupContainerVC];
  v6 = [v5 acceptSingleTouch:v4];

  return v6;
}

+ (CGSize)suggestedContentSizeForURL:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  if (v4)
  {
    v7 = [(PPKMarkupViewController *)PPKQuickLookContentEditorViewController _contentTypeForURL:v4];
    if ([v7 conformsToType:*MEMORY[0x1E6982F10]])
    {
      v8 = [objc_alloc(MEMORY[0x1E6978028]) initWithURL:v4];
      [a1 _suggestedContentSizeForPDF:v8];
      v5 = v9;
      v6 = v10;
    }

    else if ([v7 conformsToType:*MEMORY[0x1E6982E30]])
    {
      v11 = CGImageSourceCreateWithURL(v4, 0);
      if (v11)
      {
        v12 = v11;
        [a1 _suggestedContentSizeForImageSource:v11];
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

+ (CGSize)suggestedContentSizeForData:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  if (v4)
  {
    v7 = [(PPKMarkupViewController *)PPKQuickLookContentEditorViewController _contentTypeForData:v4];
    if ([v7 conformsToType:*MEMORY[0x1E6982F10]])
    {
      v8 = [objc_alloc(MEMORY[0x1E6978028]) initWithData:v4];
      [a1 _suggestedContentSizeForPDF:v8];
      v5 = v9;
      v6 = v10;
    }

    else if ([v7 conformsToType:*MEMORY[0x1E6982E30]])
    {
      v11 = CGImageSourceCreateWithData(v4, 0);
      if (v11)
      {
        v12 = v11;
        [a1 _suggestedContentSizeForImageSource:v11];
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
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  v3 = [v2 documentIsLocked];

  return v3;
}

- (BOOL)canEncryptDocument
{
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  v3 = [v2 canEncryptDocument];

  return v3;
}

- (void)updateForFullScreen:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(PPKMarkupViewController *)self markupContainerVC];
  [v6 updateForFullscreen:v5 animated:v4];
}

- (void)shouldHideMarkupOverlays:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(PPKMarkupViewController *)self markupContainerVC];
  [v6 setShouldHideMarkupOverlays:v5 animated:v4];
}

- (BOOL)shouldHighlightTextAndDDAfterNextAnalysis
{
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  v3 = [v2 shouldHighlightTextAndODAfterNextAnalysis];

  return v3;
}

- (void)setShouldHighlightTextAndDDAfterNextAnalysis:(BOOL)a3
{
  v3 = a3;
  v4 = [(PPKMarkupViewController *)self markupContainerVC];
  [v4 setShouldHighlightTextAndODAfterNextAnalysis:v3];
}

- (BOOL)shouldEnterVisualSearchAfterNextAnalysis
{
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  v3 = [v2 shouldEnterVisualSearchAfterNextAnalysis];

  return v3;
}

- (void)setShouldEnterVisualSearchAfterNextAnalysis:(BOOL)a3
{
  v3 = a3;
  v4 = [(PPKMarkupViewController *)self markupContainerVC];
  [v4 setShouldEnterVisualSearchAfterNextAnalysis:v3];
}

- (BOOL)shouldUpliftSubjectAfterNextAnalysis
{
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  v3 = [v2 shouldUpliftSubjectAfterNextAnalysis];

  return v3;
}

- (void)setShouldUpliftSubjectAfterNextAnalysis:(BOOL)a3
{
  v3 = a3;
  v4 = [(PPKMarkupViewController *)self markupContainerVC];
  [v4 setShouldUpliftSubjectAfterNextAnalysis:v3];
}

- (void)infoButtonTapped
{
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  [v2 infoButtonTapped];
}

- (void)setupAndStartImageAnalysisIfNeeded
{
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  [v2 setupAndStartImageAnalysisIfNeeded];
}

- (void)stopImageAnalysis
{
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  [v2 stopImageAnalysis];
}

- (void)flattenImageForAnalysis
{
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  [v2 flattenImageForAnalysis];
}

- (BOOL)isInteractionActive
{
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  v3 = [v2 isInteractionActive];

  return v3;
}

- (BOOL)hasResultsForVisualSearch
{
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  v3 = [v2 hasResultsForVisualSearch];

  return v3;
}

- (BOOL)isVisualSearchEnabled
{
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  v3 = [v2 isVisualSearchEnabled];

  return v3;
}

- (id)infoButtonGlyphName
{
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  v3 = [v2 infoButtonGlyphName];

  return v3;
}

- (id)filledInfoButtonGlyphName
{
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  v3 = [v2 filledInfoButtonGlyphName];

  return v3;
}

- (void)markupContainerViewController:(id)a3 updateChromeWithAnimation:(BOOL)a4
{
  v4 = a4;
  v6 = [(PPKMarkupViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 editor:self needsToUpdateChromeWithAnimation:v4];
  }
}

- (void)markupContainerViewController:(id)a3 willPresentViewControllerWithAnimation:(BOOL)a4
{
  v4 = a4;
  v6 = [(PPKMarkupViewController *)self delegate];
  if ([(PPKMarkupViewController *)self annotationEditingEnabled])
  {
    [(PPKQuickLookContentEditorViewController *)self setNeedsToRestoreAnnotationEditingMode:1];
    [(PPKMarkupViewController *)self setAnnotationEditingEnabled:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v6 editor:self willPresentViewControllerWithAnimation:v4];
  }
}

- (void)markupContainerViewController:(id)a3 didDismissViewControllerWithAnimation:(BOOL)a4
{
  v4 = a4;
  v6 = [(PPKMarkupViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 editor:self didDismissViewControllerWithAnimation:v4];
  }

  if ([(PPKQuickLookContentEditorViewController *)self needsToRestoreAnnotationEditingMode])
  {
    [(PPKMarkupViewController *)self setAnnotationEditingEnabled:1];
    [(PPKQuickLookContentEditorViewController *)self setNeedsToRestoreAnnotationEditingMode:0];
  }
}

- (void)markupContainerViewControllerActiveAnalysisInteractionTypesDidChange:(id)a3
{
  v4 = [(PPKMarkupViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 editor:self needsToUpdateChromeWithAnimation:1];
  }
}

- (void)markupContainerViewControllerAvailableAnalysisResultTypesDidChange:(id)a3
{
  v4 = [(PPKMarkupViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 editor:self needsToUpdateChromeWithAnimation:1];
  }
}

- (void)markupContainerViewController:(id)a3 thumbnailViewDidCollapse:(BOOL)a4
{
  v4 = a4;
  v6 = [(PPKMarkupViewController *)self delegate];
  v7 = v6;
  if (v6)
  {
    v9 = v6;
    v8 = objc_opt_respondsToSelector();
    v7 = v9;
    if (v8)
    {
      [v9 editor:self needsScreenEdgePanGestureRecognition:!v4];
      v7 = v9;
    }
  }
}

+ (CGSize)_suggestedContentSizeForImageSource:(CGImageSource *)a3
{
  ImageAtIndex = CGImageSourceCreateImageAtIndex(a3, 0, 0);
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

+ (CGSize)_suggestedContentSizeForPDF:(id)a3
{
  v3 = a3;
  v4 = v3;
  width = *MEMORY[0x1E695F060];
  height = *(MEMORY[0x1E695F060] + 8);
  if (v3 && [v3 pageCount])
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

- (void)markupContainerViewControllerDidChangeContent:(id)a3 enablingMarkup:(BOOL)a4
{
  v4 = a4;
  v6 = [(PPKMarkupViewController *)self delegate];
  v7 = v6;
  if (v6)
  {
    v9 = v6;
    v8 = objc_opt_respondsToSelector();
    v7 = v9;
    if (v8)
    {
      [v9 editorDidChangeContent:self enablingMarkup:v4];
      v7 = v9;
    }
  }
}

- (void)markupContainerViewController:(id)a3 openFormFilling:(BOOL)a4
{
  v4 = a4;
  v6 = [(PPKMarkupViewController *)self delegate];
  v7 = v6;
  if (v6)
  {
    v9 = v6;
    v8 = objc_opt_respondsToSelector();
    v7 = v9;
    if (v8)
    {
      [v9 editorDidChangeContent:self enablingFormFilling:v4];
      v7 = v9;
    }
  }
}

- (void)markupContainerViewController:(id)a3 contentFrameDidChange:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [(PPKMarkupViewController *)self delegate];
  v10 = v9;
  if (v9)
  {
    v12 = v9;
    v11 = objc_opt_respondsToSelector();
    v10 = v12;
    if (v11)
    {
      [v12 editor:self contentFrameDidChange:{x, y, width, height}];
      v10 = v12;
    }
  }
}

- (void)markupContainerViewController:(id)a3 detectedFormInContent:(BOOL)a4 withAutofill:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = [(PPKMarkupViewController *)self delegate];
  v9 = v8;
  if (v8)
  {
    v11 = v8;
    if (objc_opt_respondsToSelector())
    {
      [v11 editor:self detectedFormInContent:v6 withAutofill:v5];
    }

    else
    {
      v10 = objc_opt_respondsToSelector();
      v9 = v11;
      if ((v10 & 1) == 0)
      {
        goto LABEL_7;
      }

      [v11 editor:self detectedFormInContent:v6];
    }

    v9 = v11;
  }

LABEL_7:
}

- (BOOL)shouldAllowEditingContents:(id)a3
{
  v9.receiver = self;
  v9.super_class = PPKQuickLookContentEditorViewController;
  v4 = [(PPKMarkupViewController *)&v9 shouldAllowEditingContents:a3];
  v5 = [(PPKMarkupViewController *)self delegate];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
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

- (void)showBannerWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(PPKMarkupViewController *)self markupContainerVC];
  [v5 showBannerViewWith:v4];
}

- (void)hideBanner
{
  v3 = [(PPKMarkupViewController *)self markupContainerVC];
  v2 = [v3 bannerView];
  [v2 removeFromSuperview];
}

- (BOOL)isBannerVisible
{
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  v3 = [v2 bannerView];
  v4 = [v3 window];
  v5 = v4 != 0;

  return v5;
}

- (id)findInteraction
{
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  v3 = [v2 findInteraction];

  return v3;
}

- (void)find:(id)a3
{
  v3 = [(PPKQuickLookContentEditorViewController *)self findInteraction];
  [v3 presentFindNavigatorShowingReplace:0];
}

- (void)findNext:(id)a3
{
  v3 = [(PPKQuickLookContentEditorViewController *)self findInteraction];
  [v3 findNext];
}

- (void)findPrevious:(id)a3
{
  v3 = [(PPKQuickLookContentEditorViewController *)self findInteraction];
  [v3 findPrevious];
}

@end