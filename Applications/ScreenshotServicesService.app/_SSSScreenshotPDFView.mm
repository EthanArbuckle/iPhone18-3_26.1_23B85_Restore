@interface _SSSScreenshotPDFView
- (CGSize)intrinsicContentSize;
- (SSSScreenshotPDFViewDelegate)delegate;
- (_SSSScreenshotPDFView)initWithFrame:(CGRect)frame;
- (id)_paperKitPDFViewOverlayViewController:(id)controller;
- (id)currentPDFView;
- (id)undoManager;
- (int64_t)currentPDFPage;
- (void)_paperKitPDFDidChangeInView:(id)view changeCounter:(unint64_t)counter;
- (void)_paperKitPDFView:(id)view startEditingOpacityInAccessoryView:(id)accessoryView;
- (void)deselectAllAnnotations;
- (void)didMoveToWindow;
- (void)endedEditing;
- (void)enterCropMode;
- (void)enterEditing;
- (void)enterMarkupMode;
- (void)exitMarkupMode;
- (void)layoutSubviews;
- (void)setCrop:(CGRect)crop;
- (void)setRulerHostView:(id)view;
- (void)setScreenshot:(id)screenshot;
- (void)setVellumOpacity:(double)opacity;
- (void)setupOverlayControllerWithPDFDocument:(id)document;
- (void)setupPDFData;
- (void)setupPDFView;
- (void)setupPaperKitView;
- (void)updatePaletteVisibilityIfNecessary:(BOOL)necessary;
- (void)updateViewState;
@end

@implementation _SSSScreenshotPDFView

- (_SSSScreenshotPDFView)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = _SSSScreenshotPDFView;
  v3 = [(_SSSScreenshotAnnotationView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (_os_feature_enabled_impl())
  {
    [(_SSSScreenshotPDFView *)v3 setupPaperKitView];
  }

  else
  {
    [(_SSSScreenshotPDFView *)v3 setupPDFView];
  }

  v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
  activityIndicatorView = v3->_activityIndicatorView;
  v3->_activityIndicatorView = v4;

  [(UIActivityIndicatorView *)v3->_activityIndicatorView setUserInteractionEnabled:0];
  [(UIActivityIndicatorView *)v3->_activityIndicatorView startAnimating];
  v6 = +[UIColor whiteColor];
  [(UIActivityIndicatorView *)v3->_activityIndicatorView setColor:v6];

  [(_SSSScreenshotPDFView *)v3 addSubview:v3->_activityIndicatorView];
  overlayController = [(_SSSScreenshotAnnotationView *)v3 overlayController];
  [overlayController setViewState:{1, 0}];

  [(_SSSScreenshotAnnotationView *)v3 setScreenshotEditsSnapshotted:1];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v8 = objc_alloc_init(UIView);
    [(_SSSScreenshotAnnotationView *)v3 setVellumView:v8];

    vellumView = [(_SSSScreenshotAnnotationView *)v3 vellumView];
    v10 = +[UIColor whiteColor];
    [vellumView setBackgroundColor:v10];

    vellumView2 = [(_SSSScreenshotAnnotationView *)v3 vellumView];
    [vellumView2 setUserInteractionEnabled:0];
  }

  v3->_currentVellumPage = 0x7FFFFFFFFFFFFFFFLL;
  return v3;
}

- (void)didMoveToWindow
{
  window = [(_SSSScreenshotPDFView *)self window];

  if (window)
  {
    if (_os_feature_enabled_impl())
    {
      paperKitView = self->_paperKitView;

      [(_SSSScreenshotPaperKitPDFView *)paperKitView setEditable:0];
    }

    else
    {
      document = [(PDFView *)self->_pdfView document];
      akController = [document akController];
      toolPicker = [akController toolPicker];

      [toolPicker setVisible:1 forFirstResponder:self->_pdfView];
    }
  }
}

- (void)enterEditing
{
  if (_os_feature_enabled_impl())
  {
    [(_SSSScreenshotPaperKitPDFView *)self->_paperKitView setEditable:1];
    [(_SSSScreenshotPaperKitPDFView *)self->_paperKitView updatePaletteVisibilityIfNecessary:1];
  }

  v3.receiver = self;
  v3.super_class = _SSSScreenshotPDFView;
  [(_SSSScreenshotAnnotationView *)&v3 enterEditing];
}

- (void)endedEditing
{
  if (_os_feature_enabled_impl())
  {
    [(_SSSScreenshotPaperKitPDFView *)self->_paperKitView setEditable:0];
  }

  v3.receiver = self;
  v3.super_class = _SSSScreenshotPDFView;
  [(_SSSScreenshotAnnotationView *)&v3 endedEditing];
}

- (void)updatePaletteVisibilityIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  if (_os_feature_enabled_impl())
  {
    paperKitView = self->_paperKitView;

    [(_SSSScreenshotPaperKitPDFView *)paperKitView updatePaletteVisibilityIfNecessary:necessaryCopy];
  }
}

- (void)setupPaperKitView
{
  v3 = [_SSSScreenshotPaperKitPDFView alloc];
  [(_SSSScreenshotPDFView *)self bounds];
  v4 = [(_SSSScreenshotPaperKitPDFView *)v3 initWithFrame:?];
  paperKitView = self->_paperKitView;
  self->_paperKitView = v4;

  [(_SSSScreenshotPaperKitPDFView *)self->_paperKitView setDelegate:self];
  v6 = self->_paperKitView;

  [(_SSSScreenshotPDFView *)self addSubview:v6];
}

- (void)setupPDFView
{
  +[PDFView EnableAnnotationKit];
  v3 = [PDFView alloc];
  [(_SSSScreenshotPDFView *)self bounds];
  v4 = [v3 initWithFrame:?];
  pdfView = self->_pdfView;
  self->_pdfView = v4;

  [(PDFView *)self->_pdfView setDisplayMode:1];
  [(PDFView *)self->_pdfView setDisplaysPageBreaks:1];
  [(PDFView *)self->_pdfView setMinScaleFactor:1.0];
  [(PDFView *)self->_pdfView setMaxScaleFactor:1.0];
  [(PDFView *)self->_pdfView setAutoScales:0];
  v6 = self->_pdfView;
  v7 = +[UIColor clearColor];
  [(PDFView *)v6 setBackgroundColor:v7];

  [(PDFView *)self->_pdfView setEnableDataDetectors:0];
  documentScrollView = [(PDFView *)self->_pdfView documentScrollView];
  [documentScrollView setShowsHorizontalScrollIndicator:0];

  documentScrollView2 = [(PDFView *)self->_pdfView documentScrollView];
  [documentScrollView2 setShowsVerticalScrollIndicator:0];

  [(_SSSScreenshotPDFView *)self addSubview:self->_pdfView];
  v10 = self->_pdfView;

  [(PDFView *)v10 setAkAnnotationEditingEnabled:1];
}

- (void)setVellumOpacity:(double)opacity
{
  v5.receiver = self;
  v5.super_class = _SSSScreenshotPDFView;
  [(_SSSScreenshotAnnotationView *)&v5 setVellumOpacity:?];
  [(_SSSScreenshotPaperKitPDFView *)self->_paperKitView setVellumOpacity:opacity];
}

- (void)setRulerHostView:(id)view
{
  viewCopy = view;
  if (_os_feature_enabled_impl())
  {
    [(_SSSScreenshotPaperKitPDFView *)self->_paperKitView setRulerHostView:viewCopy];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = _SSSScreenshotPDFView;
    [(_SSSScreenshotAnnotationView *)&v5 setRulerHostView:viewCopy];
  }
}

- (void)layoutSubviews
{
  v58.receiver = self;
  v58.super_class = _SSSScreenshotPDFView;
  [(_SSSScreenshotPDFView *)&v58 layoutSubviews];
  [(_SSSScreenshotPDFView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PDFView *)self->_pdfView setFrame:?];
  [(PDFView *)self->_pdfView layoutDocumentView];
  [(_SSSScreenshotPaperKitPDFView *)self->_paperKitView setFrame:v4, v6, v8, v10];
  if ((_os_feature_enabled_impl() & 1) != 0 || (-[_SSSScreenshotAnnotationView screenshot](self, "screenshot"), v11 = objc_claimAutoreleasedReturnValue(), [v11 pdfData], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, !v12))
  {
    overlayController = [(_SSSScreenshotAnnotationView *)self overlayController];
    [overlayController setViewState:{1, 0}];
    goto LABEL_9;
  }

  currentPDFPage = [(_SSSScreenshotPDFView *)self currentPDFPage];
  currentPDFPage2 = [(_SSSScreenshotPDFView *)self currentPDFPage];
  currentPDFView = [(_SSSScreenshotPDFView *)self currentPDFView];
  overlayController = [currentPDFView pageViewForPageAtIndex:currentPDFPage2];

  if (self->_currentVellumPage != currentPDFPage2)
  {
    goto LABEL_11;
  }

  vellumView = [(_SSSScreenshotAnnotationView *)self vellumView];
  superview = [vellumView superview];
  if (!superview)
  {

LABEL_11:
    vellumView2 = [(_SSSScreenshotAnnotationView *)self vellumView];
    [vellumView2 removeFromSuperview];

    if (_os_feature_enabled_impl())
    {
      vellumView3 = [(_SSSScreenshotAnnotationView *)self vellumView];
      [overlayController bounds];
      [vellumView3 setFrame:?];

      vellumView4 = [(_SSSScreenshotAnnotationView *)self vellumView];
      [overlayController addSubview:vellumView4];
    }

    else
    {
      document = [(PDFView *)self->_pdfView document];
      akController = [document akController];
      vellumView4 = [akController overlayViewAtIndex:currentPDFPage2];

      vellumView5 = [(_SSSScreenshotAnnotationView *)self vellumView];
      [vellumView4 bounds];
      [vellumView5 setFrame:?];

      vellumView6 = [(_SSSScreenshotAnnotationView *)self vellumView];
      [overlayController insertSubview:vellumView6 belowSubview:vellumView4];
    }

    self->_currentVellumPage = [(_SSSScreenshotPDFView *)self currentPDFPage];
    goto LABEL_15;
  }

  v19 = superview;
  vellumView7 = [(_SSSScreenshotAnnotationView *)self vellumView];
  [vellumView7 superview];
  v22 = v21 = currentPDFPage;

  v23 = v22 == overlayController;
  currentPDFPage = v21;
  if (!v23)
  {
    goto LABEL_11;
  }

LABEL_15:
  vellumView8 = [(_SSSScreenshotAnnotationView *)self vellumView];
  [(_SSSScreenshotAnnotationView *)self vellumOpacity];
  [vellumView8 setAlpha:?];

  vellumView9 = [(_SSSScreenshotAnnotationView *)self vellumView];
  [vellumView9 setHidden:0];

  if (_os_feature_enabled_impl())
  {
    currentPDFPage3 = [(_SSSScreenshotPDFView *)self currentPDFPage];
    pdfView = [(_SSSScreenshotPaperKitPDFView *)self->_paperKitView pdfView];
    v36 = [pdfView pageViewForPageAtIndex:currentPDFPage3];
  }

  else
  {
    pdfView = [(PDFView *)self->_pdfView document];
    akController2 = [pdfView akController];
    v36 = [akController2 overlayViewAtIndex:currentPDFPage2];
  }

  vellumView10 = [(_SSSScreenshotAnnotationView *)self vellumView];
  [v36 bounds];
  [vellumView10 setFrame:?];

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    currentPDFView2 = [(_SSSScreenshotPDFView *)self currentPDFView];
    visiblePages = [currentPDFView2 visiblePages];

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v41 = visiblePages;
    v42 = [v41 countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v55;
      do
      {
        for (i = 0; i != v43; i = i + 1)
        {
          if (*v55 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v54 + 1) + 8 * i);
          [(_SSSScreenshotAnnotationView *)self vellumOpacity];
          [v46 setVellumOpacity:?];
        }

        v43 = [v41 countByEnumeratingWithState:&v54 objects:v59 count:16];
      }

      while (v43);
    }

    overlayController2 = [(_SSSScreenshotAnnotationView *)self overlayController];
    [overlayController2 setViewState:{1, currentPDFPage}];
  }

  screenshot = [(_SSSScreenshotAnnotationView *)self screenshot];
  pDFDocument = [screenshot PDFDocument];
  pageCount = [pDFDocument pageCount];

  if (pageCount >= 2)
  {
    traitCollection = [(_SSSScreenshotPDFView *)self traitCollection];
    if ([traitCollection userInterfaceIdiom])
    {
      v52 = 24.0;
    }

    else
    {
      v52 = 8.0;
    }

    currentPDFView3 = [(_SSSScreenshotPDFView *)self currentPDFView];
    [currentPDFView3 setPageBreakMargins:{v52, v52, v52, v52}];
  }

LABEL_9:

  activityIndicatorView = self->_activityIndicatorView;
  [(_SSSScreenshotPDFView *)self bounds];
  [(UIActivityIndicatorView *)activityIndicatorView setFrame:?];
}

- (id)currentPDFView
{
  if (_os_feature_enabled_impl())
  {
    pdfView = [(_SSSScreenshotPaperKitPDFView *)self->_paperKitView pdfView];
  }

  else
  {
    pdfView = self->_pdfView;
  }

  return pdfView;
}

- (CGSize)intrinsicContentSize
{
  if (_os_feature_enabled_impl())
  {
    paperKitView = self->_paperKitView;

    [(_SSSScreenshotPaperKitPDFView *)paperKitView intrinsicContentSize];
  }

  else
  {
    currentPDFView = [(_SSSScreenshotPDFView *)self currentPDFView];
    document = [currentPDFView document];
    v8 = [document pageAtIndex:{-[_SSSScreenshotPDFView currentPDFPage](self, "currentPDFPage")}];
    [v8 boundsForBox:1];
    v10 = v9;
    v12 = v11;

    v4 = v10;
    v5 = v12;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (void)setCrop:(CGRect)crop
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  if (_os_feature_enabled_impl())
  {
    paperKitView = self->_paperKitView;

    [(_SSSScreenshotPaperKitPDFView *)paperKitView updateCurrentPageCropRect:x, y, width, height];
  }

  else
  {
    currentPDFView = [(_SSSScreenshotPDFView *)self currentPDFView];
    document = [currentPDFView document];
    v10 = [document pageAtIndex:{-[_SSSScreenshotPDFView currentPDFPage](self, "currentPDFPage")}];
    [v10 boundsForBox:0];
    v12 = v11;
    v14 = v13;

    document2 = [currentPDFView document];
    v16 = [document2 pageAtIndex:{-[_SSSScreenshotPDFView currentPDFPage](self, "currentPDFPage")}];
    [v16 setBounds:1 forBox:{x * v12, (1.0 - (y + height)) * v14, width * v12, height * v14}];

    [currentPDFView layoutDocumentView];
  }
}

- (void)deselectAllAnnotations
{
  if (_os_feature_enabled_impl())
  {
    paperKitView = self->_paperKitView;

    [(_SSSScreenshotPaperKitPDFView *)paperKitView deselectAllAnnotations];
  }
}

- (void)setScreenshot:(id)screenshot
{
  screenshotCopy = screenshot;
  if (_os_feature_enabled_impl())
  {
    [screenshotCopy setDocumentGenerator:self->_paperKitView];
  }

  screenshot = [(_SSSScreenshotAnnotationView *)self screenshot];
  v6 = [screenshot isEqual:screenshotCopy];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = _SSSScreenshotPDFView;
    [(_SSSScreenshotAnnotationView *)&v7 setScreenshot:screenshotCopy];
    [(_SSSScreenshotPaperKitPDFView *)self->_paperKitView setScreenshot:screenshotCopy];
    [(_SSSScreenshotPDFView *)self setDidFailToWritePDFToURL:[(_SSSScreenshotPaperKitPDFView *)self->_paperKitView didFailToWritePDFToURL]];
    [(_SSSScreenshotPDFView *)self setNeedsLayout];
  }

  [(_SSSScreenshotPDFView *)self setupPDFData];
}

- (id)undoManager
{
  screenshot = [(_SSSScreenshotAnnotationView *)self screenshot];
  v3 = [screenshot undoManagerForEditMode:1];

  return v3;
}

- (void)setupPDFData
{
  v3 = _os_feature_enabled_impl();
  screenshot = [(_SSSScreenshotAnnotationView *)self screenshot];
  v5 = screenshot;
  if (v3)
  {
    pdfData = [screenshot pdfData];

    pdfData2 = [(_SSSScreenshotPaperKitPDFView *)self->_paperKitView pdfData];
    v8 = [pdfData2 isEqual:pdfData];

    if ((v8 & 1) == 0)
    {
      [(_SSSScreenshotPaperKitPDFView *)self->_paperKitView setupDocumentViewController];
    }

    v9 = [pdfData length];

    if (!v9)
    {
      goto LABEL_11;
    }

LABEL_10:
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100033864;
    v15[3] = &unk_1000BA068;
    v15[4] = self;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10003387C;
    v14[3] = &unk_1000BA188;
    v14[4] = self;
    [UIView animateWithDuration:v15 animations:v14 completion:0.2];
    return;
  }

  pDFDocument = [screenshot PDFDocument];

  if (pDFDocument)
  {
    document = [(PDFView *)self->_pdfView document];
    v12 = [document isEqual:pDFDocument];

    if ((v12 & 1) == 0)
    {
      [(_SSSScreenshotPDFView *)self setupOverlayControllerWithPDFDocument:pDFDocument];
    }

    goto LABEL_10;
  }

LABEL_11:
  [(UIActivityIndicatorView *)self->_activityIndicatorView setAlpha:1.0];
  activityIndicatorView = self->_activityIndicatorView;

  [(UIActivityIndicatorView *)activityIndicatorView startAnimating];
}

- (void)setupOverlayControllerWithPDFDocument:(id)document
{
  pdfView = self->_pdfView;
  documentCopy = document;
  [(PDFView *)pdfView setDocument:documentCopy];
  documentView = [(PDFView *)self->_pdfView documentView];
  [documentView setUserInteractionEnabled:0];

  overlayController = [(_SSSScreenshotAnnotationView *)self overlayController];
  [documentCopy setPDFAKControllerDelegate:overlayController];

  akController = [documentCopy akController];

  overlayController2 = [(_SSSScreenshotAnnotationView *)self overlayController];
  [overlayController2 setAnnotationKitController:akController];
}

- (void)enterCropMode
{
  [(_SSSScreenshotPDFView *)self setIsInCropMode:1];
  [(_SSSScreenshotPDFView *)self invalidateIntrinsicContentSize];
  currentPDFView = [(_SSSScreenshotPDFView *)self currentPDFView];
  documentScrollView = [currentPDFView documentScrollView];

  [documentScrollView contentOffset];
  self->_scrollOffset.x = v4;
  self->_scrollOffset.y = v5;
  [documentScrollView zoomScale];
  self->_scrollZoomScale = v6;
  [documentScrollView setZoomScale:1.0];
  [documentScrollView setContentOffset:{CGPointZero.x, CGPointZero.y}];
  currentPDFView2 = [(_SSSScreenshotPDFView *)self currentPDFView];
  [currentPDFView2 setDisplayBox:0];

  [(_SSSScreenshotPDFView *)self setNeedsLayout];
}

- (void)enterMarkupMode
{
  [(_SSSScreenshotPDFView *)self setIsInCropMode:0];
  [(_SSSScreenshotPDFView *)self invalidateIntrinsicContentSize];
  currentPDFView = [(_SSSScreenshotPDFView *)self currentPDFView];
  [currentPDFView setDisplayBox:1];

  currentPDFView2 = [(_SSSScreenshotPDFView *)self currentPDFView];
  documentScrollView = [currentPDFView2 documentScrollView];

  if (self->_scrollZoomScale != 0.0)
  {
    [documentScrollView setZoomScale:?];
  }

  [documentScrollView setContentOffset:{self->_scrollOffset.x, self->_scrollOffset.y}];
  [(_SSSScreenshotPDFView *)self setNeedsLayout];
}

- (void)exitMarkupMode
{
  currentPDFView = [(_SSSScreenshotPDFView *)self currentPDFView];
  documentScrollView = [currentPDFView documentScrollView];

  [documentScrollView contentOffset];
  self->_scrollOffset.x = v4;
  self->_scrollOffset.y = v5;
  [(_SSSScreenshotPDFView *)self invalidateIntrinsicContentSize];
}

- (int64_t)currentPDFPage
{
  currentPDFView = [(_SSSScreenshotPDFView *)self currentPDFView];
  currentPage = [currentPDFView currentPage];
  document = [currentPDFView document];
  v5 = [document indexForPage:currentPage];

  return v5;
}

- (void)updateViewState
{
  screenshot = [(_SSSScreenshotAnnotationView *)self screenshot];
  pdfData = [screenshot pdfData];

  if (pdfData)
  {
    currentPDFPage = [(_SSSScreenshotPDFView *)self currentPDFPage];
    overlayController = [(_SSSScreenshotAnnotationView *)self overlayController];
    [overlayController setViewState:{1, currentPDFPage}];
  }
}

- (void)_paperKitPDFDidChangeInView:(id)view changeCounter:(unint64_t)counter
{
  v4 = [(_SSSScreenshotAnnotationView *)self screenshot:view];
  [v4 undoStateMightHaveChanged];
}

- (void)_paperKitPDFView:(id)view startEditingOpacityInAccessoryView:(id)accessoryView
{
  accessoryViewCopy = accessoryView;
  delegate = [(_SSSScreenshotPDFView *)self delegate];
  [delegate pdfView:self startEditingOpacityInAccessoryView:accessoryViewCopy];
}

- (id)_paperKitPDFViewOverlayViewController:(id)controller
{
  delegate = [(_SSSScreenshotPDFView *)self delegate];
  v5 = [delegate pdfViewOverlayViewController:self];

  return v5;
}

- (SSSScreenshotPDFViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end