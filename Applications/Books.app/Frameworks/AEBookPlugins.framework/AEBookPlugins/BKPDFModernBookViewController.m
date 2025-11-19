@interface BKPDFModernBookViewController
+ (int64_t)pageNumberForPageIndex:(unint64_t)a3;
+ (unint64_t)pageIndexForPageNumber:(int64_t)a3;
+ (void)_minScaleFactorForPageBounds:(CGFloat)a3 viewBounds:(CGFloat)a4 safeAreaInsets:(double)a5 pageBreakMargins:(double)a6;
- (BKPDFModernBookViewController)initWithBook:(id)a3 storeID:(id)a4;
- (BKPDFModernBookViewController)initWithBook:(id)a3 storeID:(id)a4 pdfDocumentCache:(id)a5;
- (BOOL)_needToSaveChanges;
- (BOOL)assetEditingEnabled;
- (BOOL)canBeEdited;
- (BOOL)canCopy;
- (BOOL)canShowControlsDuringOpenClose;
- (BOOL)dismissShouldBegin:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isLocationOnCurrentPage:(id)a3;
- (BOOL)isPageBookmarked;
- (BOOL)isPageProgressionRTL;
- (BOOL)prepareForContentScaling;
- (BOOL)shouldShowHUDs;
- (BOOL)shouldShowUndoControls;
- (BOOL)supportsDocumentEditing;
- (BOOL)turnPageInDirection:(int64_t)a3;
- (BOOL)turnPages:(int64_t)a3 animated:(BOOL)a4;
- (IMPerformSelectorProxy)performSelectorProxy;
- (PDFDocument)pdfDocument;
- (UIEdgeInsets)pdfViewContentInset;
- (UIScrollView)pdfScrollView;
- (_NSRange)currentPages;
- (double)_contentAspectRatio;
- (id)_bookContentViewImageOfPage:(unint64_t)a3;
- (id)_bookContentViewImageOfPage:(unint64_t)a3 boundingSize:(CGSize)a4;
- (id)_currentReadingProgress;
- (id)_uniqueIDForOutline:(id)a3;
- (id)actionController;
- (id)analyticsContentSettingData;
- (id)bookContentView;
- (id)currentPageLocation;
- (id)editRedoBarButtonItem;
- (id)editUndoBarButtonItem;
- (id)imageCache;
- (id)menuItems:(id)a3 forPage:(id)a4;
- (id)pageLocationForPageIndex:(unint64_t)a3;
- (id)pageLocationForPageNumber:(int64_t)a3;
- (id)searchViewController;
- (id)searchViewController:(id)a3 chapterNameForSearchResult:(id)a4 pageNumber:(int64_t)a5;
- (id)transitionContentHostingView;
- (id)transitionContentView;
- (id)transitionContentViewImage;
- (id)visiblePageBookmarks;
- (int64_t)pageCountIncludingUpsell;
- (int64_t)pageNumberForLocation:(id)a3;
- (int64_t)pageNumberFromRange:(_NSRange)a3;
- (unint64_t)_pageIndexForOutline:(id)a3;
- (unint64_t)_pageNumberForAnchor:(id)a3;
- (unint64_t)currentPageIndex;
- (unint64_t)pageIndexForLocation:(id)a3;
- (void)_didScrollPDFViewToPage;
- (void)_enableMarkupMode:(BOOL)a3;
- (void)_evaluateUndoRedoEnabled;
- (void)_jumpToLocationForVerticalScroll:(id)a3 animated:(BOOL)a4;
- (void)_jumpToLocationPaged:(id)a3 animated:(BOOL)a4;
- (void)_scrollToRect:(CGRect)a3 inPageAtIndex:(int64_t)a4;
- (void)_setupGestureRecognizers;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)_updateToolbarVisibilityAnimated:(BOOL)a3;
- (void)_willScrollPDFViewToPageNumber:(int64_t)a3;
- (void)actionControllerWillShow:(id)a3;
- (void)annotationsDidChange:(id)a3;
- (void)bookContentViewImage:(id)a3;
- (void)books_enableContinuousScroll:(id)a3;
- (void)books_pageBackward:(id)a3;
- (void)books_pageForward:(id)a3;
- (void)books_pageLeft:(id)a3;
- (void)books_pageRight:(id)a3;
- (void)buildContextTree:(id)a3;
- (void)clearSelection;
- (void)close:(BOOL)a3;
- (void)contentViewReady;
- (void)copy:(id)a3;
- (void)dealloc;
- (void)disableEditingAndSaveIfNecessary;
- (void)dismissCurrentPopoverWithCompletion:(id)a3 animated:(BOOL)a4;
- (void)endScroll:(id)a3;
- (void)handleContentScaling:(BOOL)a3;
- (void)handleSingleTap:(id)a3;
- (void)highlightSearchResult:(id)a3;
- (void)jumpToLocation:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)loadAKToolbarView;
- (void)loadView;
- (void)makeContentVisible;
- (void)open:(BOOL)a3;
- (void)openToLocation:(id)a3 animated:(BOOL)a4;
- (void)reloadPDFDocumentCompletion:(id)a3;
- (void)resetPDFDocument;
- (void)saveStateClosing:(BOOL)a3 suspending:(BOOL)a4;
- (void)scalePDFContent:(double)a3 locationInView:(CGPoint)a4 animated:(BOOL)a5;
- (void)scrollToPageNumber:(int64_t)a3 animate:(BOOL)a4;
- (void)scrollerViewPageDidChange:(id)a3;
- (void)scrub:(id)a3 isScrubbing:(BOOL)a4;
- (void)scrubValueChanged:(id)a3;
- (void)searchPDFUsingSelection:(id)a3;
- (void)setAssetEditingEnabled:(BOOL)a3;
- (void)setDefaultMarkupTool;
- (void)setLayout:(unint64_t)a3;
- (void)setScrollMode:(id)a3;
- (void)setSection:(int)a3 animated:(BOOL)a4 adjustScrollToReveal:(BOOL)a5;
- (void)startCountingAnnotations;
- (void)toggleBookmark:(id)a3;
- (void)toggleEditAssetMode:(id)a3;
- (void)turnToPageNumber:(int64_t)a3 animated:(BOOL)a4;
- (void)updateBookmarkButton:(BOOL)a3;
- (void)updateBottomToolbar:(BOOL)a3;
- (void)updateContentInsets;
- (void)updateContentScale;
- (void)updateHUDVisibilityAnimated:(BOOL)a3;
- (void)updateLayout;
- (void)updateProgressKitForNewLocation;
- (void)updateScrubber:(_NSRange)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)visiblePageDidChange:(id)a3;
@end

@implementation BKPDFModernBookViewController

- (PDFDocument)pdfDocument
{
  pdfDocument = self->_pdfDocument;
  if (!pdfDocument)
  {
    [(BKPDFModernBookViewController *)self reloadPDFDocument];
    pdfDocument = self->_pdfDocument;
  }

  return pdfDocument;
}

- (UIScrollView)pdfScrollView
{
  v2 = [(BKPDFModernBookViewController *)self pdfView];
  v3 = [v2 documentScrollView];

  return v3;
}

- (void)loadAKToolbarView
{
  akToolbarView = self->_akToolbarView;
  if (akToolbarView)
  {
    [(UIView *)akToolbarView removeFromSuperview];
    v4 = self->_akToolbarView;
    self->_akToolbarView = 0;
  }

  v5 = [(BKPDFModernBookViewController *)self pdfView];
  v6 = [v5 akToolbarView];
  v7 = self->_akToolbarView;
  self->_akToolbarView = v6;

  v8 = self->_akToolbarView;
  if (v8)
  {
    [(UIView *)v8 setAlpha:0.0];
    v9 = [(BKPDFModernBookViewController *)self theme];
    v10 = [v9 backgroundColorForTraitEnvironment:self];
    v11 = [(BKPDFModernBookViewController *)self pdfView];
    [v11 setAkToolbarViewTintColor:v10];

    v12 = [(BKPDFModernBookViewController *)self theme];
    v13 = [v12 tintColorForNavbarButtons];
    v14 = [(BKPDFModernBookViewController *)self pdfView];
    [v14 setAkToolbarViewItemTintColor:v13];

    v15 = [(BKPDFModernBookViewController *)self pdfView];
    v16 = [v15 tintColor];
    v17 = [(BKPDFModernBookViewController *)self pdfView];
    [v17 setInteractionTintColor:v16];

    v18 = [(BKPDFModernBookViewController *)self view];
    [v18 addSubview:self->_akToolbarView];

    [(UIView *)self->_akToolbarView setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [(UIView *)self->_akToolbarView leftAnchor];
    v20 = [(BKPDFModernBookViewController *)self view];
    v21 = [v20 leftAnchor];
    v22 = [v19 constraintEqualToAnchor:v21];
    [v22 setActive:1];

    v23 = [(UIView *)self->_akToolbarView rightAnchor];
    v24 = [(BKPDFModernBookViewController *)self view];
    v25 = [v24 rightAnchor];
    v26 = [v23 constraintEqualToAnchor:v25];
    [v26 setActive:1];

    v30 = [(UIView *)self->_akToolbarView bottomAnchor];
    v27 = [(BKPDFModernBookViewController *)self view];
    v28 = [v27 bottomAnchor];
    v29 = [v30 constraintEqualToAnchor:v28];
    [v29 setActive:1];
  }
}

- (void)reloadPDFDocumentCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BKBookViewController *)self book];
  v6 = [v5 url];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_E9CA0;
  v13[3] = &unk_1E5538;
  v13[4] = self;
  v7 = v6;
  v14 = v7;
  v8 = v4;
  v15 = v8;
  v9 = objc_retainBlock(v13);
  v10 = objc_retainBlock(v9);
  if (v10)
  {
    if (+[NSThread isMainThread])
    {
      v10[2](v10);
    }

    else
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_E9FE8;
      v11[3] = &unk_1E2E08;
      v12 = v10;
      dispatch_async(&_dispatch_main_q, v11);
    }
  }
}

- (BKPDFModernBookViewController)initWithBook:(id)a3 storeID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[AEPdfCache sharedInstance];
  v9 = [(BKPDFModernBookViewController *)self initWithBook:v7 storeID:v6 pdfDocumentCache:v8];

  return v9;
}

- (BKPDFModernBookViewController)initWithBook:(id)a3 storeID:(id)a4 pdfDocumentCache:(id)a5
{
  v8 = a3;
  v9 = a5;
  v27.receiver = self;
  v27.super_class = BKPDFModernBookViewController;
  v10 = [(BKThumbnailBookViewController *)&v27 initWithBook:v8 storeID:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_pdfDocumentCache, a5);
    v12 = [v8 url];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_get_global_queue(0, 0);
    v15 = dispatch_queue_create_with_target_V2("com.apple.iBooks.pdfwrite", v13, v14);
    writeQueue = v11->_writeQueue;
    v11->_writeQueue = v15;

    v11->_accessLock._os_unfair_lock_opaque = 0;
    v17 = [(AEPdfCache *)v11->_pdfDocumentCache copyCacheObjectForURL:v12];
    v18 = [v17 document];
    if (v18)
    {
      objc_storeStrong(&v11->_pdfDocument, v18);
      [(BKPDFModernBookViewController *)v11 startCountingAnnotations];
    }

    else
    {
      v19 = [[PDFDocument alloc] initWithURL:v12];
      pdfDocument = v11->_pdfDocument;
      v11->_pdfDocument = v19;

      v21 = BKModernPDFLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_138E34();
      }
    }

    v22 = [v17 pdfUndoManager];
    pdfUndoManager = v11->_pdfUndoManager;
    v11->_pdfUndoManager = v22;

    v11->_targetPageNumber = -1;
    v11->_initialZoomFactor = -1.0;
    [(PDFDocument *)v11->_pdfDocument setPDFAKControllerDelegate:v11];
    v24 = +[UITraitCollection bc_allAPITraits];
    v25 = [(BKPDFModernBookViewController *)v11 registerForTraitChanges:v24 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v11;
}

- (void)dealloc
{
  pdfDocumentCache = self->_pdfDocumentCache;
  v4 = [(AEBookInfo *)self->super.super._book url];
  [(AEPdfCache *)pdfDocumentCache removeCacheObjectForURL:v4];

  [(PDFDocument *)self->_pdfDocument setPDFAKControllerDelegate:0];
  [(UITapGestureRecognizer *)self->_controlsTapRecognizer setDelegate:0];
  [(UITapGestureRecognizer *)self->_controlsTapRecognizer removeTarget:self action:0];
  controlsTapRecognizer = self->_controlsTapRecognizer;
  self->_controlsTapRecognizer = 0;

  [(IMPerformSelectorProxy *)self->_performSelectorProxy teardown];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self];

  [(PDFView *)self->_pdfView setDocument:0];
  v7.receiver = self;
  v7.super_class = BKPDFModernBookViewController;
  [(BKThumbnailBookViewController *)&v7 dealloc];
}

- (IMPerformSelectorProxy)performSelectorProxy
{
  performSelectorProxy = self->_performSelectorProxy;
  if (!performSelectorProxy)
  {
    v4 = [[IMPerformSelectorProxy alloc] initWithTarget:self];
    v5 = self->_performSelectorProxy;
    self->_performSelectorProxy = v4;

    performSelectorProxy = self->_performSelectorProxy;
  }

  return performSelectorProxy;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(BKPDFModernBookViewController *)self _enableMarkupMode:0];
  v5.receiver = self;
  v5.super_class = BKPDFModernBookViewController;
  [(BKThumbnailBookViewController *)&v5 viewWillDisappear:v3];
  [(BKPDFModernBookViewController *)self clearSelection];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = BKPDFModernBookViewController;
  v7 = a4;
  [(BKThumbnailBookViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_EA55C;
  v8[3] = &unk_1E5BF8;
  v8[4] = self;
  [v7 animateAlongsideTransition:&stru_1E5BD0 completion:v8];
}

- (BOOL)prepareForContentScaling
{
  v2 = self;
  v3 = [(BKPDFModernBookViewController *)self pdfView];
  [v3 scaleFactor];
  v5 = v4;
  [(BKPDFModernBookViewController *)v2 initialZoomFactor];
  LOBYTE(v2) = v5 == v6;

  return v2;
}

+ (void)_minScaleFactorForPageBounds:(CGFloat)a3 viewBounds:(CGFloat)a4 safeAreaInsets:(double)a5 pageBreakMargins:(double)a6
{
  v27 = a5 + a10 + a14;
  v28 = a6 + a9 + a13;
  v29 = a7 - (a10 + a12) - (a14 + a16);
  v30 = a8 - (a9 + a11) - (a13 + a15);
  v33.origin.x = v27;
  v33.origin.y = v28;
  v33.size.width = v29;
  v33.size.height = v30;
  CGRectGetWidth(v33);
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  CGRectGetWidth(v34);
  v35.origin.x = v27;
  v35.origin.y = v28;
  v35.size.width = v29;
  v35.size.height = v30;
  CGRectGetHeight(v35);
  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.height = a4;
  v36.size.width = a3;
  CGRectGetHeight(v36);
}

- (void)handleContentScaling:(BOOL)a3
{
  v3 = a3;
  v5 = [(BKPDFModernBookViewController *)self pdfView];
  [v5 autoScaleFactor];
  v7 = v6;

  [(BKPDFModernBookViewController *)self setInitialZoomFactor:v7];
  if (![(BKPDFModernBookViewController *)self isScrolling])
  {
    v8 = [(BKPDFModernBookViewController *)self pdfView];
    [v8 setMinScaleFactor:v7];

    if (v3)
    {
      v9 = [(BKPDFModernBookViewController *)self pdfView];
      [v9 scaleFactor];
      v11 = v10;

      if (v11 != v7)
      {
        v12 = [(BKPDFModernBookViewController *)self pdfView];
        [v12 setScaleFactor:v7];
      }
    }
  }
}

- (void)updateContentScale
{
  v3 = [(BKPDFModernBookViewController *)self prepareForContentScaling];

  [(BKPDFModernBookViewController *)self handleContentScaling:v3];
}

- (void)viewWillLayoutSubviews
{
  v3 = [(BKPDFModernBookViewController *)self pdfScrollView];
  v4 = [v3 isZooming];

  if (v4)
  {
    v8.receiver = self;
    v8.super_class = BKPDFModernBookViewController;
    [(BKThumbnailBookViewController *)&v8 viewWillLayoutSubviews];
  }

  else
  {
    [(BKPDFModernBookViewController *)self initialZoomFactor];
    v6 = v5 < 0.0 && [(BKBookViewController *)self layout]== &dword_0 + 2 || [(BKPDFModernBookViewController *)self prepareForContentScaling];
    v7.receiver = self;
    v7.super_class = BKPDFModernBookViewController;
    [(BKThumbnailBookViewController *)&v7 viewWillLayoutSubviews];
    [(BKPDFModernBookViewController *)self handleContentScaling:v6];
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = BKPDFModernBookViewController;
  [(BKThumbnailBookViewController *)&v3 viewDidLayoutSubviews];
  [(BKPDFModernBookViewController *)self contentViewReady];
}

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = BKPDFModernBookViewController;
  [(BKThumbnailBookViewController *)&v26 viewDidLoad];
  v3 = [(BKPDFModernBookViewController *)self pdfView];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(BKPDFModernBookViewController *)self pdfView];
    [v5 setShowsScrollIndicators:0];
  }

  v6 = +[UIColor bc_booksBackground];
  v7 = [(BKThumbnailBookViewController *)self topToolbar];
  [v7 setBarTintColor:v6];

  v27 = NSForegroundColorAttributeName;
  v8 = +[UIColor bc_booksLabelColor];
  v28 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v10 = [(BKThumbnailBookViewController *)self topToolbar];
  [v10 setTitleTextAttributes:v9];

  v11 = +[UIColor bc_booksLabelColor];
  v12 = [(BKThumbnailBookViewController *)self topToolbar];
  [v12 setTintColor:v11];

  [(BKPDFModernBookViewController *)self updateLayout];
  v13 = +[NSNotificationCenter defaultCenter];
  v14 = [(BKPDFModernBookViewController *)self pdfView];
  [v13 addObserver:self selector:"visiblePageDidChange:" name:PDFViewPageChangedNotification object:v14];

  v15 = +[NSNotificationCenter defaultCenter];
  v16 = [(BKPDFModernBookViewController *)self pdfView];
  [v15 addObserver:self selector:"scrollerViewPageDidChange:" name:PDFViewVisiblePagesChangedNotification object:v16];

  v17 = +[NSNotificationCenter defaultCenter];
  v18 = PDFViewAnnotationsDidChangeNotification;
  v19 = [(BKPDFModernBookViewController *)self pdfView];
  [v17 addObserver:self selector:"annotationsDidChange:" name:v18 object:v19];

  v20 = +[NSNotificationCenter defaultCenter];
  v21 = PDFTextSelectionMenuWillChangeScrollPosition;
  v22 = [(BKPDFModernBookViewController *)self pdfView];
  [v20 addObserver:self selector:"beginScroll:" name:v21 object:v22];

  v23 = +[NSNotificationCenter defaultCenter];
  v24 = PDFTextSelectionMenuDidChangeScrollPosition;
  v25 = [(BKPDFModernBookViewController *)self pdfView];
  [v23 addObserver:self selector:"endScroll:" name:v24 object:v25];

  [(BKPDFModernBookViewController *)self setIgnoreKeyboardInteraction:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BKPDFModernBookViewController;
  [(BKBookViewController *)&v4 viewDidAppear:a3];
  [(BKPDFModernBookViewController *)self updateContentInsets];
}

- (void)resetPDFDocument
{
  [(PDFView *)self->_pdfView setDocument:0];
  [(UIView *)self->_akToolbarView removeFromSuperview];
  akToolbarView = self->_akToolbarView;
  self->_akToolbarView = 0;

  pdfUndoManager = self->_pdfUndoManager;
  self->_pdfUndoManager = 0;

  [(PDFDocument *)self->_pdfDocument setPDFAKControllerDelegate:0];
  pdfDocument = self->_pdfDocument;
  self->_pdfDocument = 0;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = BKPDFModernBookViewController;
  [(BKBookViewController *)&v7 viewDidDisappear:a3];
  if ([(BKPDFModernBookViewController *)self stateShouldClose])
  {
    v4 = +[BCProgressKitController sharedController];
    v5 = [(BKPDFModernBookViewController *)self asset];
    v6 = [v5 assetID];
    [v4 didCloseBookWithAssetID:v6 completion:0];

    [(BKPDFModernBookViewController *)self resetPDFDocument];
    [(BKPDFModernBookViewController *)self setStateShouldClose:0];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = BKPDFModernBookViewController;
  [(BKPDFModernBookViewController *)&v11 viewWillAppear:a3];
  v4 = [(BKPDFModernBookViewController *)self pdfView];
  v5 = [v4 currentPage];

  v6 = [(BKPDFModernBookViewController *)self pdfDocument];
  v7 = [v6 indexForPage:v5];

  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_EAF38;
  v8[3] = &unk_1E5C20;
  objc_copyWeak(v9, &location);
  v8[4] = self;
  v9[1] = v7;
  [(BKPDFModernBookViewController *)self reloadPDFDocumentCompletion:v8];
  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (void)open:(BOOL)a3
{
  v3 = a3;
  v5 = [(BKBookViewController *)self assetViewControllerDelegate];

  if (v5)
  {
    v6 = [(BKBookViewController *)self assetViewControllerDelegate];
    [v6 assetViewController:self willOpen:v3];
  }
}

- (void)openToLocation:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v13 = a3;
  v6 = [(BKBookViewController *)self assetViewControllerDelegate];

  if (v6)
  {
    v7 = [(BKBookViewController *)self assetViewControllerDelegate];
    [v7 assetViewController:self willOpen:v4];

    objc_opt_class();
    v8 = BUDynamicCast();
    v9 = [v8 anchor];
    v10 = [(BKPDFModernBookViewController *)self _pageNumberForAnchor:v9];

    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [(BKPDFModernBookViewController *)self pdfView];

      if (v11)
      {
        [(BKPDFModernBookViewController *)self turnToPageNumber:v10 animated:0];
      }

      else
      {
        v12 = [[BKPageLocation alloc] initWithOrdinal:0 andOffset:[BKPDFModernBookViewController pageIndexForPageNumber:v10]];
        [(BKBookViewController *)self setLocation:v12];
      }
    }
  }
}

- (void)close:(BOOL)a3
{
  v3 = a3;
  v5 = [(BKBookViewController *)self assetViewControllerDelegate];
  [v5 assetViewController:self willClose:v3];

  [(BKPDFModernBookViewController *)self setStateShouldClose:1];
}

- (unint64_t)_pageNumberForAnchor:(id)a3
{
  v3 = a3;
  v4 = +[NSCharacterSet whitespaceCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  if ([v5 hasPrefix:{@"page(", "hasSuffix:", @")"}])
  {
    v6 = [v5 substringWithRange:{5, objc_msgSend(v5, "length") - 6}];
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (void)contentViewReady
{
  v3 = [(BKBookViewController *)self contentOpenAnimator];

  if (v3)
  {
    v4 = [(BKBookViewController *)self contentOpenAnimator];
    [v4 bookContentDidLoad];

    [(BKBookViewController *)self setContentOpenAnimator:0];
    v5 = [(BKPDFModernBookViewController *)self assetReloading]|| UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning();

    [(BKBookViewController *)self setControlsVisible:v5 animated:0];
  }
}

- (void)loadView
{
  v31.receiver = self;
  v31.super_class = BKPDFModernBookViewController;
  [(BKPDFModernBookViewController *)&v31 loadView];
  v3 = [(BKPDFModernBookViewController *)self pdfDocument];
  [v3 setShowsAnnotations:1];

  v4 = [(BKPDFModernBookViewController *)self view];
  v5 = [PDFView alloc];
  [v4 bounds];
  v6 = [v5 initWithFrame:?];
  [(BKPDFModernBookViewController *)self setPdfView:v6];

  v7 = [(BKPDFModernBookViewController *)self pdfView];
  [v7 setAutoresizingMask:18];

  v8 = [(BKPDFModernBookViewController *)self pdfView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:1];

  v9 = [(BKPDFModernBookViewController *)self pdfView];
  [v9 setDelegate:self];

  v10 = [(BKPDFModernBookViewController *)self pdfView];
  [v10 setAutoScales:1];

  v11 = [(BKPDFModernBookViewController *)self pdfView];
  [v11 setMaxScaleFactor:32.0];

  v12 = [(BKPDFModernBookViewController *)self pdfView];
  [v12 setDisplaysBookmarksForPages:1];

  v13 = [(BKPDFModernBookViewController *)self pdfView];
  [v13 setDisplayDirection:1];

  v14 = [(BKPDFModernBookViewController *)self pdfView];
  v32 = UIPageViewControllerOptionInterPageSpacingKey;
  v33 = &off_1F18B0;
  v15 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  [v14 usePageViewController:1 withViewOptions:v15];

  v16 = [(BKPDFModernBookViewController *)self pdfView];
  v17 = [v16 documentViewController];
  [(BKPDFModernBookViewController *)self addChildViewController:v17];

  v18 = [(BKPDFModernBookViewController *)self pdfView];
  [v4 addSubview:v18];

  v19 = [(BKPDFModernBookViewController *)self pdfView];
  v20 = [v19 documentViewController];
  [v20 didMoveToParentViewController:self];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v24 = [(BKPDFModernBookViewController *)self pdfView];
  [v24 setPageBreakMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v25 = [(BKPDFModernBookViewController *)self pdfView];
  v26 = [(BKPDFModernBookViewController *)self pdfDocument];
  [v25 setDocument:v26];

  [(BKPDFModernBookViewController *)self _setupGestureRecognizers];
  v27 = [(BKPDFModernBookViewController *)self pdfView];
  v28 = [(BKBookViewController *)self book];
  [v27 setDisplaysRTL:{objc_msgSend(v28, "writingDirection") == &dword_0 + 1}];

  v29 = [IMTheme themeWithIdentifier:kIMThemeIdentifierDynamicTheme];
  [(BKBookViewController *)self setTheme:v29];

  v30 = [(BKPDFModernBookViewController *)self pdfView];
  [v30 setAkAnnotationEditingEnabled:0];

  [(BKPDFModernBookViewController *)self loadAKToolbarView];
}

- (BOOL)isPageProgressionRTL
{
  v2 = [(BKPDFModernBookViewController *)self pdfView];
  v3 = [v2 displaysRTL];

  return v3;
}

- (void)setLayout:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = BKPDFModernBookViewController;
  [(BKThumbnailBookViewController *)&v4 setLayout:a3];
  [(BKPDFModernBookViewController *)self updateLayout];
}

- (void)updateLayout
{
  v3 = [(BKPDFModernBookViewController *)self pdfView];
  v4 = [v3 currentPage];

  v5 = [(BKBookViewController *)self layout];
  v6 = [(BKPDFModernBookViewController *)self pdfView];
  v7 = v6;
  if (v5 == 2)
  {
    v8 = [v6 documentViewController];
    [v8 willMoveToParentViewController:0];

    v9 = [(BKPDFModernBookViewController *)self pdfView];
    v10 = [v9 documentViewController];
    [v10 removeFromParentViewController];

    v11 = [(BKPDFModernBookViewController *)self pdfView];
    [v11 usePageViewController:0 withViewOptions:0];

    v12 = [(BKPDFModernBookViewController *)self pdfView];
    [v12 setDisplayDirection:0];

    v13 = [(BKPDFModernBookViewController *)self pdfView];
    [v13 setDisplayMode:1];

    v14 = [(BKPDFModernBookViewController *)self pdfScrollView];
    [v14 setContentInsetAdjustmentBehavior:2];

    v15 = [(BKPDFModernBookViewController *)self pdfView];
    [v15 setAutoScales:1];

    v16 = [(BKPDFModernBookViewController *)self pdfView];
    [v16 setPageBreakMargins:{4.75, 4.0, 4.75, 4.0}];
  }

  else
  {
    v32 = UIPageViewControllerOptionInterPageSpacingKey;
    v33 = &off_1F18B0;
    v17 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    [v7 usePageViewController:1 withViewOptions:v17];

    v18 = [(BKPDFModernBookViewController *)self pdfView];
    [v18 setDisplayDirection:1];

    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v22 = [(BKPDFModernBookViewController *)self pdfView];
    [v22 setPageBreakMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

    v23 = [(BKPDFModernBookViewController *)self pdfView];
    v24 = [v23 documentViewController];
    [(BKPDFModernBookViewController *)self addChildViewController:v24];

    v16 = [(BKPDFModernBookViewController *)self pdfView];
    v25 = [v16 documentViewController];
    [v25 didMoveToParentViewController:self];
  }

  [(BKPDFModernBookViewController *)self updateContentInsets];
  v26 = [(BKPDFModernBookViewController *)self pdfView];
  [v26 layoutDocumentView];

  v27 = [(BKPDFModernBookViewController *)self pdfView];
  v28 = [(BKPDFModernBookViewController *)self controlsTapRecognizer];
  [v27 removeGestureRecognizer:v28];

  [(BKPDFModernBookViewController *)self _setupGestureRecognizers];
  v29 = [(BKPDFModernBookViewController *)self pdfView];
  [v29 goToPage:v4];

  v30 = +[UIColor clearColor];
  v31 = [(BKPDFModernBookViewController *)self pdfView];
  [v31 setBackgroundColor:v30];
}

- (void)setScrollMode:(id)a3
{
  if ([(BKBookViewController *)self layout]== &dword_0 + 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [(BKPDFModernBookViewController *)self setLayout:v4];
}

- (void)_setupGestureRecognizers
{
  v3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleSingleTap:"];
  [(BKPDFModernBookViewController *)self setControlsTapRecognizer:v3];

  v4 = [(BKPDFModernBookViewController *)self controlsTapRecognizer];
  [v4 setNumberOfTapsRequired:1];

  v5 = [(BKPDFModernBookViewController *)self controlsTapRecognizer];
  [v5 setDelegate:self];

  v6 = [(BKPDFModernBookViewController *)self pdfView];
  v7 = [(BKPDFModernBookViewController *)self controlsTapRecognizer];
  [v6 addGestureRecognizer:v7];

  v8 = [(BKPDFModernBookViewController *)self pdfView];
  v16 = [v8 longPressGestureRecognizer];

  v9 = [(BKPDFModernBookViewController *)self pdfView];
  v10 = [v9 tapGestureRecognizer];

  v11 = [(BKPDFModernBookViewController *)self pdfView];
  v12 = [v11 doubleTapGestureRecognizer];

  v13 = [(BKPDFModernBookViewController *)self controlsTapRecognizer];
  [v13 requireGestureRecognizerToFail:v10];

  v14 = [(BKPDFModernBookViewController *)self controlsTapRecognizer];
  [v14 requireGestureRecognizerToFail:v16];

  v15 = [(BKPDFModernBookViewController *)self controlsTapRecognizer];
  [v15 requireGestureRecognizerToFail:v12];
}

- (int64_t)pageCountIncludingUpsell
{
  v2 = [(BKPDFModernBookViewController *)self pdfDocument];
  v3 = [v2 pageCount];

  return v3;
}

- (id)actionController
{
  if (!self->super.super._actionController)
  {
    v3 = [(BKBookViewController *)self book];
    if ([v3 isManagedBook])
    {
      v4 = +[AEAnnotationSerializationManager managedBooksAllowedToSync];

      if ((v4 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v5 = objc_opt_new();
    actionController = self->super.super._actionController;
    self->super.super._actionController = v5;
    v7 = v5;

    [(BKActionController *)self->super.super._actionController setAncestorViewController:self];
    v8 = [(BKBookViewController *)self book];
    [(BKActionController *)self->super.super._actionController setBookInfo:v8];

    [(BKActionController *)self->super.super._actionController setDelegate:self];
  }

LABEL_7:
  v9 = self->super.super._actionController;

  return v9;
}

- (void)disableEditingAndSaveIfNecessary
{
  if ([(BKPDFModernBookViewController *)self assetEditingEnabled])
  {

    [(BKPDFModernBookViewController *)self _enableMarkupMode:0];
  }

  else if ([(BKPDFModernBookViewController *)self _needToSaveChanges])
  {

    [(BKPDFModernBookViewController *)self saveStateClosing:0];
  }
}

- (void)actionControllerWillShow:(id)a3
{
  v4.receiver = self;
  v4.super_class = BKPDFModernBookViewController;
  [(BKBookViewController *)&v4 actionControllerWillShow:a3];
  [(BKPDFModernBookViewController *)self disableEditingAndSaveIfNecessary];
}

- (void)setSection:(int)a3 animated:(BOOL)a4 adjustScrollToReveal:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = *&a3;
  if (a3 == 1 && [(BKPDFModernBookViewController *)self assetEditingEnabled])
  {
    [(BKPDFModernBookViewController *)self _enableMarkupMode:0];
  }

  v9.receiver = self;
  v9.super_class = BKPDFModernBookViewController;
  [(BKThumbnailBookViewController *)&v9 setSection:v7 animated:v6 adjustScrollToReveal:v5];
}

- (void)updateBottomToolbar:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = BKPDFModernBookViewController;
  [(BKThumbnailBookViewController *)&v6 updateBottomToolbar:a3];
  v4 = 0.0;
  if ([(BKPDFModernBookViewController *)self assetEditingEnabled])
  {
    v4 = [(BKBookViewController *)self controlsVisible];
  }

  v5 = [(BKPDFModernBookViewController *)self akToolbarView];
  [v5 setAlpha:v4];
}

- (BOOL)supportsDocumentEditing
{
  v3 = [(BKPDFModernBookViewController *)self akToolbarView];
  if (v3)
  {
    v4 = [(BKPDFModernBookViewController *)self canBeEdited];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)canBeEdited
{
  v2 = [(BKPDFModernBookViewController *)self pdfDocument];
  v3 = [v2 allowsDocumentChanges];

  return v3;
}

- (BOOL)shouldShowUndoControls
{
  v3 = [(BKPDFModernBookViewController *)self assetEditingEnabled];
  if (v3)
  {
    if (isPhone())
    {
      LOBYTE(v3) = 1;
    }

    else
    {

      LOBYTE(v3) = [(BKPDFModernBookViewController *)self im_isCompactWidth];
    }
  }

  return v3;
}

- (id)editUndoBarButtonItem
{
  editUndoBarButtonItem = self->super._editUndoBarButtonItem;
  if (!editUndoBarButtonItem)
  {
    v4 = [(BKPDFModernBookViewController *)self pdfView];
    v5 = [v4 akUndoToolbarItem];

    v10.receiver = self;
    v10.super_class = BKPDFModernBookViewController;
    v6 = [(BKThumbnailBookViewController *)&v10 editUndoBarButtonItem];
    v7 = self->super._editUndoBarButtonItem;
    self->super._editUndoBarButtonItem = v6;

    v8 = [v5 target];
    [(UIBarButtonItem *)self->super._editUndoBarButtonItem setTarget:v8];

    -[UIBarButtonItem setAction:](self->super._editUndoBarButtonItem, "setAction:", [v5 action]);
    [(UIBarButtonItem *)self->super._editUndoBarButtonItem setWidth:46.0];

    editUndoBarButtonItem = self->super._editUndoBarButtonItem;
  }

  return editUndoBarButtonItem;
}

- (id)editRedoBarButtonItem
{
  editRedoBarButtonItem = self->super._editRedoBarButtonItem;
  if (!editRedoBarButtonItem)
  {
    v4 = [(BKPDFModernBookViewController *)self pdfView];
    v5 = [v4 akRedoToolbarItem];

    v10.receiver = self;
    v10.super_class = BKPDFModernBookViewController;
    v6 = [(BKThumbnailBookViewController *)&v10 editRedoBarButtonItem];
    v7 = self->super._editRedoBarButtonItem;
    self->super._editRedoBarButtonItem = v6;

    v8 = [v5 target];
    [(UIBarButtonItem *)self->super._editRedoBarButtonItem setTarget:v8];

    -[UIBarButtonItem setAction:](self->super._editRedoBarButtonItem, "setAction:", [v5 action]);
    [(UIBarButtonItem *)self->super._editRedoBarButtonItem setWidth:46.0];

    editRedoBarButtonItem = self->super._editRedoBarButtonItem;
  }

  return editRedoBarButtonItem;
}

- (void)_evaluateUndoRedoEnabled
{
  v3 = [(BKPDFModernBookViewController *)self pdfView];
  v4 = [v3 akUndoToolbarItem];
  v5 = [v4 isEnabled];
  v6 = [(BKPDFModernBookViewController *)self editUndoBarButtonItem];
  [v6 setEnabled:v5];

  v10 = [(BKPDFModernBookViewController *)self pdfView];
  v7 = [v10 akRedoToolbarItem];
  v8 = [v7 isEnabled];
  v9 = [(BKPDFModernBookViewController *)self editRedoBarButtonItem];
  [v9 setEnabled:v8];
}

- (id)bookContentView
{
  v3 = [(BKPDFModernBookViewController *)self pdfView];
  v4 = [v3 pageViewForPageAtIndex:{-[BKPDFModernBookViewController currentPageIndex](self, "currentPageIndex")}];

  return v4;
}

- (id)_bookContentViewImageOfPage:(unint64_t)a3
{
  v5 = [(BKPDFModernBookViewController *)self view];
  v6 = [v5 window];
  if (v6)
  {
    v7 = [(BKPDFModernBookViewController *)self view];
    v8 = [v7 window];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v7 = +[UIScreen mainScreen];
    [v7 bounds];
    v10 = v13;
    v12 = v14;
  }

  return [(BKPDFModernBookViewController *)self _bookContentViewImageOfPage:a3 boundingSize:v10, v12];
}

- (id)_bookContentViewImageOfPage:(unint64_t)a3 boundingSize:(CGSize)a4
{
  v5 = [(BKPDFModernBookViewController *)self pdfDocument];
  v6 = [v5 pageAtIndex:a3];

  if (v6)
  {
    [v6 boundsForBox:1];
    CGSizeScaledToFitInSize();
    BKImageSizeForScreenSize(v7);
    objc_opt_class();
    CGSizeRound();
    v9 = v8;
    v11 = v10;
    v20[0] = PDFPageImageProperty_DrawBookmark;
    v20[1] = PDFPageImageProperty_DrawAnnotations;
    v21[0] = &__kCFBooleanFalse;
    v21[1] = &__kCFBooleanFalse;
    v20[2] = PDFPageImageProperty_WithRotation;
    v21[2] = &__kCFBooleanTrue;
    v12 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];
    v13 = [v6 imageOfSize:1 forBox:v12 withOptions:{v9, v11}];
    v14 = BUDynamicCast();

    v15 = [v14 CGImage];
    v16 = +[UIScreen mainScreen];
    [v16 scale];
    v18 = +[UIImage imageWithCGImage:scale:orientation:](UIImage, "imageWithCGImage:scale:orientation:", v15, [v14 imageOrientation], v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)bookContentViewImage:(id)a3
{
  v5 = a3;
  v6 = [(BKPDFModernBookViewController *)self _bookContentViewImageOfPage:[(BKPDFModernBookViewController *)self currentPageIndex]];
  (*(a3 + 2))(v5, v6);
}

- (void)makeContentVisible
{
  v3.receiver = self;
  v3.super_class = BKPDFModernBookViewController;
  [(BKThumbnailBookViewController *)&v3 makeContentVisible];
  [(BKThumbnailBookViewController *)self assetViewControllerUpdateToolbars];
  [(BKBookViewController *)self setControlsVisible:1 animated:1];
}

- (void)_updateToolbarVisibilityAnimated:(BOOL)a3
{
  v3 = a3;
  [(UIBarButtonItem *)self->super._editToolboxBarButtonItem setSelected:[(BKPDFModernBookViewController *)self assetEditingEnabled]];
  [(BKThumbnailBookViewController *)self updateTopToolbar:v3];

  [(BKPDFModernBookViewController *)self updateBottomToolbar:v3];
}

- (void)updateHUDVisibilityAnimated:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BKPDFModernBookViewController;
  [(BKThumbnailBookViewController *)&v4 updateHUDVisibilityAnimated:a3];
  [(BKPDFModernBookViewController *)self updateContentScale];
}

- (BOOL)shouldShowHUDs
{
  if ([(BKPDFModernBookViewController *)self assetEditingEnabled])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = BKPDFModernBookViewController;
  return [(BKThumbnailBookViewController *)&v4 shouldShowHUDs];
}

- (void)setDefaultMarkupTool
{
  v2 = [(BKPDFModernBookViewController *)self pdfDocument];
  v4 = [v2 akController];

  v3 = objc_opt_new();
  [v3 setTag:764017];
  [v4 performActionForSender:v3];
}

- (void)dismissCurrentPopoverWithCompletion:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(BKPDFModernBookViewController *)self assetEditingEnabled])
  {
    [(BKPDFModernBookViewController *)self _enableMarkupMode:0];
  }

  v7.receiver = self;
  v7.super_class = BKPDFModernBookViewController;
  [(BKBookViewController *)&v7 dismissCurrentPopoverWithCompletion:v6 animated:v4];
}

- (void)_enableMarkupMode:(BOOL)a3
{
  v3 = a3;
  if ([(BKPDFModernBookViewController *)self canBeEdited])
  {
    if ([(BKPDFModernBookViewController *)self assetEditingEnabled]!= v3)
    {
      v5 = +[UIView areAnimationsEnabled];
      [(BKPDFModernBookViewController *)self setAssetEditingEnabled:v3];
      if (v3)
      {
        [(BKPDFModernBookViewController *)self setDefaultMarkupTool];
      }

      [(BKPDFModernBookViewController *)self _updateToolbarVisibilityAnimated:v5];
      [(BKPDFModernBookViewController *)self updateHUDVisibilityAnimated:v5];
      if (![(BKPDFModernBookViewController *)self assetEditingEnabled]&& [(BKPDFModernBookViewController *)self _needToSaveChanges])
      {
        [(BKPDFModernBookViewController *)self saveStateClosing:0];
      }

      if (v3)
      {
        [(BKBookViewController *)self setControlsVisible:1 animated:1];
      }
    }

    v6 = [(BKPDFModernBookViewController *)self assetEditingEnabled];
    v7 = [(BKPDFModernBookViewController *)self controlsTapRecognizer];
    [v7 setEnabled:v6 ^ 1];
  }
}

- (void)scalePDFContent:(double)a3 locationInView:(CGPoint)a4 animated:(BOOL)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  v10 = [(BKPDFModernBookViewController *)self pdfView];
  [v10 minScaleFactor];
  v12 = v11;

  if (v12 <= a3)
  {
    v12 = a3;
  }

  v13 = [(BKPDFModernBookViewController *)self pdfView];
  [v13 maxScaleFactor];
  v15 = v14;

  v21 = 3221225472;
  v20 = _NSConcreteStackBlock;
  v22 = sub_ECC3C;
  v23 = &unk_1E5C48;
  if (v12 < v15)
  {
    v15 = v12;
  }

  v25 = x;
  v26 = y;
  v24 = self;
  v27 = v15;
  v16 = objc_retainBlock(&v20);
  v17 = [(BKPDFModernBookViewController *)self pdfView:v20];
  [v17 scaleFactor];
  v19 = v18;

  if (v19 != v15)
  {
    if (v5)
    {
      [UIView animateWithDuration:v16 animations:0.2];
    }

    else
    {
      (v16[2])(v16);
    }
  }
}

- (void)handleSingleTap:(id)a3
{
  v20 = a3;
  if (![(BKPDFModernBookViewController *)self assetEditingRequested])
  {
    if (-[BKPDFModernBookViewController assetEditingEnabled](self, "assetEditingEnabled") || -[BKBookViewController layout](self, "layout") != &dword_0 + 1 || ((-[BKPDFModernBookViewController view](self, "view"), v4 = objc_claimAutoreleasedReturnValue(), [v4 bounds], v6 = v5, v8 = v7, v10 = v9, v12 = v11, v4, -[BKPDFModernBookViewController controlsTapRecognizer](self, "controlsTapRecognizer"), v13 = objc_claimAutoreleasedReturnValue(), -[BKPDFModernBookViewController pdfView](self, "pdfView"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "locationInView:", v14), v16 = v15, v14, v13, v22.origin.x = v6, v22.origin.y = v8, v22.size.width = v10, v22.size.height = v12, v17 = CGRectGetWidth(v22) * 0.2, v18 = -[BKPDFModernBookViewController isPageProgressionRTL](self, "isPageProgressionRTL"), v16 <= v17) ? (v19 = v18 ^ 1) : v16 >= v10 - v17 ? (v19 = v18) : (v19 = -1), !-[BKPDFModernBookViewController turnPageInDirection:](self, "turnPageInDirection:", v19)))
    {
      [(BKThumbnailBookViewController *)self toggleControls:v20];
    }
  }
}

- (void)books_enableContinuousScroll:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_ECEC0;
  v4[3] = &unk_1E3F50;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(BKViewController *)v5 dismissCurrentPopoverWithCompletion:v4];
}

- (void)toggleEditAssetMode:(id)a3
{
  v5.receiver = self;
  v5.super_class = BKPDFModernBookViewController;
  [(BKThumbnailBookViewController *)&v5 toggleEditAssetMode:a3];
  v4 = BKModernPDFLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_138E68();
  }

  [(BKPDFModernBookViewController *)self _enableMarkupMode:[(BKPDFModernBookViewController *)self assetEditingRequested]^ 1];
}

- (void)setAssetEditingEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = BKModernPDFLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_138EA8(v3, v5);
  }

  v6 = [(BKPDFModernBookViewController *)self pdfView];
  [v6 setAkAnnotationEditingEnabled:v3];

  [(BKPDFModernBookViewController *)self setAssetEditingRequested:v3];
  if (!v3)
  {
    [(BKPDFModernBookViewController *)self becomeFirstResponder];
  }
}

- (BOOL)assetEditingEnabled
{
  v2 = [(BKPDFModernBookViewController *)self pdfView];
  v3 = [v2 akAnnotationEditingEnabled];

  return v3;
}

- (BOOL)_needToSaveChanges
{
  v18 = 0;
  v19[0] = &v18;
  v19[1] = 0x2020000000;
  v20 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v10 = sub_ED254;
  v11 = &unk_1E5C70;
  v12 = self;
  v13 = &v14;
  v3 = v9;
  os_unfair_lock_lock(&self->_accessLock);
  v10(v3);
  os_unfair_lock_unlock(&self->_accessLock);

  if ((v15[3] & 1) == 0)
  {
    writeQueue = self->_writeQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_ED288;
    v8[3] = &unk_1E5C70;
    v8[4] = self;
    v8[5] = &v18;
    dispatch_sync(writeQueue, v8);
  }

  v5 = BKModernPDFLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_138F38(v19, v5);
  }

  v6 = *(v19[0] + 24);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v6;
}

- (void)saveStateClosing:(BOOL)a3 suspending:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_ED47C;
  v14[3] = &unk_1E2BD0;
  v14[4] = self;
  os_unfair_lock_lock(&self->_accessLock);
  sub_ED47C(v14);
  os_unfair_lock_unlock(&self->_accessLock);
  [(BKThumbnailBookViewController *)self didChangeLocationClosing:v5 suspending:v4];
  v13.receiver = self;
  v13.super_class = BKPDFModernBookViewController;
  [(BKBookViewController *)&v13 saveStateClosing:v5 suspending:v4];
  v7 = [(BKPDFModernBookViewController *)self pdfDocument];
  writeQueue = self->_writeQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_ED488;
  block[3] = &unk_1E3F50;
  v11 = v7;
  v12 = self;
  v9 = v7;
  dispatch_async(writeQueue, block);
}

- (BOOL)dismissShouldBegin:(id)a3
{
  v4 = a3;
  if (-[BKPDFModernBookViewController assetEditingEnabled](self, "assetEditingEnabled") || ([v4 velocity], v6 = v5, objc_msgSend(v4, "velocity"), v6 >= v7))
  {
    v8 = 0;
  }

  else
  {
    v8 = [v4 proposedBeginState];
  }

  return v8;
}

- (double)_contentAspectRatio
{
  [(BKPDFModernBookViewController *)self aspectRatioFromPDF];
  if (v3 != 0.0)
  {
    return v3;
  }

  v12.receiver = self;
  v12.super_class = BKPDFModernBookViewController;
  [(BKThumbnailBookViewController *)&v12 _contentAspectRatio];
  v5 = v4;
  v6 = [(BKPDFModernBookViewController *)self pdfDocument];
  v7 = [v6 pageAtIndex:{-[BKPDFModernBookViewController pageCountIncludingUpsell](self, "pageCountIncludingUpsell") > 1}];
  v8 = v7;
  if (v7)
  {
    PDFPageGetBoxRectWithRotation(v7, 1);
    if (v10 > 0.0)
    {
      v5 = v9 / v10;
    }
  }

  [(BKPDFModernBookViewController *)self setAspectRatioFromPDF:v5];

  return v5;
}

- (BOOL)canShowControlsDuringOpenClose
{
  v4.receiver = self;
  v4.super_class = BKPDFModernBookViewController;
  if ([(BKThumbnailBookViewController *)&v4 canShowControlsDuringOpenClose])
  {
    return 1;
  }

  else
  {
    return [(BKPDFModernBookViewController *)self assetReloading];
  }
}

- (void)clearSelection
{
  v4.receiver = self;
  v4.super_class = BKPDFModernBookViewController;
  [(BKBookViewController *)&v4 clearSelection];
  v3 = [(BKPDFModernBookViewController *)self pdfView];
  [v3 clearSelection];
}

- (id)transitionContentView
{
  if ([(BKThumbnailBookViewController *)self directoryTOCIsVisible])
  {
    [(BKThumbnailBookViewController *)self directoryTOCViewControllerView];
  }

  else
  {
    [(BKPDFModernBookViewController *)self bookContentView];
  }
  v3 = ;
  if (!v3)
  {
    [(BKPDFModernBookViewController *)self reloadPDFDocument];
    v4 = [(BKPDFModernBookViewController *)self pdfView];
    v3 = [v4 pageViewForPageAtIndex:{-[BKPDFModernBookViewController currentPageIndex](self, "currentPageIndex")}];

    if (!v3)
    {
      v3 = [(BKPDFModernBookViewController *)self view];
    }
  }

  return v3;
}

- (id)transitionContentHostingView
{
  if ([(BKThumbnailBookViewController *)self directoryTOCIsVisible])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(BKPDFModernBookViewController *)self pdfView];
  }

  return v3;
}

- (id)transitionContentViewImage
{
  if ([(BKThumbnailBookViewController *)self directoryTOCIsVisible])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(BKPDFModernBookViewController *)self transitionContentView];
    [v4 bounds];
    [v4 convertRect:0 toView:?];
    v5 = [(BKPDFModernBookViewController *)self view];
    v6 = [v5 window];
    if (v6)
    {
      v7 = [(BKPDFModernBookViewController *)self view];
      v8 = [v7 window];
      [v8 bounds];
    }

    else
    {
      v7 = +[UIScreen mainScreen];
      [v7 bounds];
    }

    CGSizeScaledToFitInSize();
    v3 = [(BKPDFModernBookViewController *)self _bookContentViewImageOfPage:[(BKPDFModernBookViewController *)self currentPageIndex] boundingSize:v9, v10];
  }

  return v3;
}

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v6 = [(BKPDFModernBookViewController *)self theme:a3];
  v5 = [(BKBookViewController *)self searchViewControllerIfLoaded];
  [v5 setTheme:v6];
}

- (BOOL)turnPages:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = +[AETestDriver shared];
  [v7 postEvent:kBETestDriverPageTurnStart sender:self];

  v8 = +[AETestDriver shared];
  [v8 postEvent:kBETestDriverPageTurnSetupStart sender:self];

  [(BKPDFModernBookViewController *)self turnToPageNumber:[BKPDFModernBookViewController animated:"pageNumberForPageIndex:" pageNumberForPageIndex:?]+ a3, v4];
  return 1;
}

- (void)turnToPageNumber:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (a3 < 1 || (v6 = a3, [(BKPDFModernBookViewController *)self pageCountIncludingUpsell]< a3))
  {
    v6 = 1;
  }

  v7 = [(BKPDFModernBookViewController *)self isVisible]& v4;

  [(BKPDFModernBookViewController *)self scrollToPageNumber:v6 animate:v7];
}

- (id)searchViewController
{
  searchViewController = self->super.super._searchViewController;
  if (!searchViewController)
  {
    v7.receiver = self;
    v7.super_class = BKPDFModernBookViewController;
    v4 = [(BKBookViewController *)&v7 searchViewController];
    v5 = [(BKSearchViewController *)self->super.super._searchViewController searchController];
    [v5 setPageCount:{-[BKPDFModernBookViewController pageCountIncludingUpsell](self, "pageCountIncludingUpsell")}];

    searchViewController = self->super.super._searchViewController;
  }

  return searchViewController;
}

- (void)highlightSearchResult:(id)a3
{
  v4 = a3;
  [(BKPDFModernBookViewController *)self initialZoomFactor];
  [BKPDFModernBookViewController scalePDFContent:"scalePDFContent:locationInView:animated:" locationInView:1 animated:?];
  objc_opt_class();
  v9 = BUDynamicCast();

  v5 = v9;
  if (v9)
  {
    v6 = [v9 selection];
    if (v6)
    {
      v7 = +[UIColor yellowColor];
      [v6 setColor:v7];

      v8 = [(BKPDFModernBookViewController *)self pdfView];
      [v8 setCurrentSelection:v6 animate:1];
    }

    v5 = v9;
  }
}

- (id)searchViewController:(id)a3 chapterNameForSearchResult:(id)a4 pageNumber:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  v9 = BUDynamicCast();
  v10 = [v9 selection];
  if (v10)
  {
    v11 = [(BKPDFModernBookViewController *)self pdfDocument];
    v12 = [v11 outlineItemForSelection:v10];

    v13 = -3;
    do
    {
      v14 = [v12 parent];

      if (!v14)
      {
        break;
      }

      if (!v13)
      {
        v14 = 0;
        break;
      }

      v15 = [v12 label];
      v16 = [v15 length];

      if (v16)
      {
        v14 = [v12 label];
      }

      else
      {
        v17 = [v12 parent];

        v14 = 0;
        v12 = v17;
      }

      ++v13;
    }

    while (!v14);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)pageLocationForPageIndex:(unint64_t)a3
{
  if (a3 == -1)
  {
    v3 = 0;
  }

  else
  {
    v3 = a3;
  }

  v4 = [[BKPageLocation alloc] initWithOrdinal:0 andOffset:v3];

  return v4;
}

- (id)pageLocationForPageNumber:(int64_t)a3
{
  v4 = [BKPDFModernBookViewController pageIndexForPageNumber:a3];

  return [(BKPDFModernBookViewController *)self pageLocationForPageIndex:v4];
}

- (int64_t)pageNumberFromRange:(_NSRange)a3
{
  v4 = [BKPDFModernBookViewController pageNumberForPageIndex:a3.location, a3.length];
  result = [(BKPDFModernBookViewController *)self pageCountIncludingUpsell];
  if (v4 < result)
  {
    return v4;
  }

  return result;
}

- (void)_willScrollPDFViewToPageNumber:(int64_t)a3
{
  [(BKPDFModernBookViewController *)self setTargetPageNumber:a3];
  v4 = +[AETestDriver shared];
  [v4 postEvent:kBETestDriverPageTurnSetupEnd sender:self];

  v5 = +[AETestDriver shared];
  [v5 postEvent:kBETestDriverPageTurnAnimationStart sender:self];
}

- (void)_didScrollPDFViewToPage
{
  [(BKBookViewController *)self setLocation:0];

  [(BKBookViewController *)self setResumeLocation:0];
}

- (void)scrollToPageNumber:(int64_t)a3 animate:(BOOL)a4
{
  v4 = a4;
  v7 = [BKPDFModernBookViewController pageIndexForPageNumber:?];
  v8 = [(BKPDFModernBookViewController *)self pdfView];
  v9 = [v8 currentPage];

  if (v9)
  {
    v10 = [(BKPDFModernBookViewController *)self pdfDocument];
    v11 = [v10 indexForPage:v9];
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = _AEBookPluginsLifeCycleLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    [NSNumber numberWithInteger:a3];
    v13 = v23 = v9;
    v14 = [NSNumber numberWithUnsignedInteger:v11];
    v15 = [NSNumber numberWithUnsignedInteger:v7];
    v16 = [(BKBookViewController *)self book];
    [v16 assetLogID];
    v24 = v7;
    v17 = a3;
    v19 = v18 = v4;
    *buf = 138544130;
    v26 = v13;
    v27 = 2114;
    v28 = v14;
    v29 = 2114;
    v30 = v15;
    v31 = 2114;
    v32 = v19;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Scroll to page number:%{public}@, currentIndex:%{public}@, targetIndex:%{public}@, culogID:%{public}@", buf, 0x2Au);

    v4 = v18;
    a3 = v17;
    v7 = v24;

    v9 = v23;
  }

  if (v7 != v11)
  {
    [(BKPDFModernBookViewController *)self _willScrollPDFViewToPageNumber:a3];
    v20 = [(BKPDFModernBookViewController *)self pdfDocument];
    v21 = [v20 pageAtIndex:v7];

    v22 = [(BKPDFModernBookViewController *)self pdfView];
    [v22 goToPage:v21 animated:v4];

    [(BKPDFModernBookViewController *)self _didScrollPDFViewToPage];
  }
}

- (id)currentPageLocation
{
  v3 = [BKPDFModernBookViewController pageNumberForPageIndex:[(BKPDFModernBookViewController *)self currentPageIndex]];

  return [(BKPDFModernBookViewController *)self pageLocationForPageNumber:v3];
}

- (unint64_t)currentPageIndex
{
  v3 = [(BKPDFModernBookViewController *)self pdfView];
  v4 = [v3 currentPage];

  if (v4)
  {
    v5 = [(BKPDFModernBookViewController *)self pdfDocument];
    v6 = [v5 indexForPage:v4];
  }

  else
  {
    objc_opt_class();
    v7 = [(BKBookViewController *)self location];
    v5 = BUDynamicCast();

    v6 = [v5 pageOffset];
  }

  v8 = v6;

  return v8;
}

- (void)_scrollToRect:(CGRect)a3 inPageAtIndex:(int64_t)a4
{
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = BKModernPDFLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_139004();
    }

LABEL_10:

    return;
  }

  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(BKPDFModernBookViewController *)self pdfDocument:a3.origin.x];
  v10 = [v9 pageCount];

  if (v10 <= a4)
  {
    v4 = BKModernPDFLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_138FD0();
    }

    goto LABEL_10;
  }

  [(BKPDFModernBookViewController *)self _willScrollPDFViewToPageNumber:[BKPDFModernBookViewController pageNumberForPageIndex:a4]];
  v11 = [(BKPDFModernBookViewController *)self pdfView];
  [v11 constrainedScrollToPoint:{x, y}];

  [(BKPDFModernBookViewController *)self _didScrollPDFViewToPage];
}

- (void)jumpToLocation:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  [(BKPDFModernBookViewController *)self clearSelection];
  if ([(BKBookViewController *)self layout]== &dword_0 + 2)
  {
    [(BKPDFModernBookViewController *)self _jumpToLocationForVerticalScroll:v9 animated:v5];
  }

  else
  {
    [(BKPDFModernBookViewController *)self _jumpToLocationPaged:v9 animated:v5];
  }

  v11 = objc_retainBlock(v8);
  v10 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11);
    v10 = v11;
  }
}

- (void)_jumpToLocationPaged:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = [(BKPDFModernBookViewController *)self pageNumberForLocation:?];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_opt_class();
    v7 = BUDynamicCast();
    v8 = [v7 ordinal];
    v6 = [v7 pageOffset] + v8 + 1;
  }

  [(BKPDFModernBookViewController *)self scrollToPageNumber:v6 animate:v4];
}

- (void)_jumpToLocationForVerticalScroll:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v41 = a3;
  v6 = [(BKPDFModernBookViewController *)self pageIndexForLocation:?];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_opt_class();
    v7 = BUDynamicCast();
    v8 = [v7 ordinal];
    v6 = &v8[[v7 pageOffset]];
  }

  objc_opt_class();
  v9 = BUDynamicCast();
  v10 = v9;
  if (v9)
  {
    v11 = [v9 selection];
    v12 = [v11 pages];
    v13 = [v12 firstObject];

    v14 = [(BKPDFModernBookViewController *)self view];
    [v14 frame];
    v16 = v15;

    v17 = [(BKPDFModernBookViewController *)self pdfView];
    [v11 boundsForPage:v13];
    [v17 convertRect:v13 fromPage:?];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v26 = [(BKPDFModernBookViewController *)self pdfView];
    v27 = [v26 documentView];
    v28 = [(BKPDFModernBookViewController *)self pdfView];
    [v27 convertRect:v28 fromView:{v19, v21 + (v16 - v25) * -0.5, v23, v16}];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;

    v37 = [(BKPDFModernBookViewController *)self pdfView];
    v38 = [v37 documentView];
    [v38 bounds];
    v40 = v39 - v32;

    [(BKPDFModernBookViewController *)self _scrollToRect:v6 inPageAtIndex:v30, v40, v34, v36];
  }

  else
  {
    [(BKPDFModernBookViewController *)self scrollToPageNumber:[BKPDFModernBookViewController animate:"pageNumberForPageIndex:" pageNumberForPageIndex:v6], v4];
  }
}

- (int64_t)pageNumberForLocation:(id)a3
{
  v3 = [(BKPDFModernBookViewController *)self pageIndexForLocation:a3];

  return [BKPDFModernBookViewController pageNumberForPageIndex:v3];
}

- (unint64_t)pageIndexForLocation:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = BUDynamicCast();

  v5 = [v4 pageOffset];
  return v5;
}

- (_NSRange)currentPages
{
  v3 = [(BKPDFModernBookViewController *)self currentPageIndex];
  v4 = [(BKPDFModernBookViewController *)self pageCountIncludingUpsell];
  if (v3 >= v4 - 1)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = v3;
  }

  v6 = 1;
  result.length = v6;
  result.location = v5;
  return result;
}

- (id)_currentReadingProgress
{
  v3 = [(BKPDFModernBookViewController *)self pageCountIncludingUpsell];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v5 = v3;
    if (v3 < 1)
    {
      v4 = &off_1F18C0;
    }

    else
    {
      v7 = [(BKPDFModernBookViewController *)self currentPages];
      v4 = 0;
      if (v7 != 0x7FFFFFFFFFFFFFFFLL && v6)
      {
        *&v8 = (v7 + v6) / v5;
        v4 = [NSNumber numberWithFloat:v8];
      }
    }
  }

  return v4;
}

- (BOOL)isLocationOnCurrentPage:(id)a3
{
  v4 = a3;
  if (v4 && (![v4 isMemberOfClass:objc_opt_class()] || -[BKThumbnailBookViewController canOrdinalOnlyLocationsBeVisible](self, "canOrdinalOnlyLocationsBeVisible")) && (v5 = -[BKPDFModernBookViewController pageIndexForLocation:](self, "pageIndexForLocation:", v4), v5 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v7 = v5;
    v8 = [(BKPDFModernBookViewController *)self currentPages];
    v6 = v7 >= v8 && v7 - v8 < v9;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)turnPageInDirection:(int64_t)a3
{
  v5 = [(BKPDFModernBookViewController *)self currentPageIndex];
  v6 = [BKPDFModernBookViewController pageNumberForPageIndex:v5];
  if (a3 == 1)
  {
    v7 = -1;
  }

  else
  {
    if (a3)
    {
      return 0;
    }

    v7 = 1;
  }

  v8 = [BKPDFModernBookViewController pageNumberForPageIndex:v5 + v7];
  if (v8 != v6)
  {
    v9 = v8;
    v10 = [(BKPDFModernBookViewController *)self pageCountIncludingUpsell];
    if (v9 >= 1 && v9 <= v10)
    {
      v12 = 1;
      [(BKPDFModernBookViewController *)self setIgnoreKeyboardInteraction:1];
      [(BKPDFModernBookViewController *)self scrollToPageNumber:v9 animate:+[UIView areAnimationsEnabled]];
      return v12;
    }
  }

  return 0;
}

- (void)books_pageRight:(id)a3
{
  v4 = a3;
  if ([(BKPDFModernBookViewController *)self isPageProgressionRTL])
  {
    [(BKPDFModernBookViewController *)self books_pageBackward:v4];
  }

  else
  {
    [(BKPDFModernBookViewController *)self books_pageForward:v4];
  }
}

- (void)books_pageLeft:(id)a3
{
  v4 = a3;
  if ([(BKPDFModernBookViewController *)self isPageProgressionRTL])
  {
    [(BKPDFModernBookViewController *)self books_pageForward:v4];
  }

  else
  {
    [(BKPDFModernBookViewController *)self books_pageBackward:v4];
  }
}

- (void)books_pageForward:(id)a3
{
  if (![(BKPDFModernBookViewController *)self assetEditingEnabled]&& ![(BKPDFModernBookViewController *)self ignoreKeyboardInteraction])
  {

    [(BKPDFModernBookViewController *)self turnPageInDirection:0];
  }
}

- (void)books_pageBackward:(id)a3
{
  if (![(BKPDFModernBookViewController *)self assetEditingEnabled]&& ![(BKPDFModernBookViewController *)self ignoreKeyboardInteraction])
  {

    [(BKPDFModernBookViewController *)self turnPageInDirection:1];
  }
}

- (void)startCountingAnnotations
{
  if ([(BKBookViewController *)self _inAnalyticsReadSession])
  {
    v3 = [(PDFDocument *)self->_pdfDocument copy];
    objc_initWeak(&location, self);
    v4 = -[BKPDFAnnotationCounter initWithDocument:]([BKPDFAnnotationCounter alloc], "initWithDocument:", [v3 documentRef]);
    annotationCounter = self->_annotationCounter;
    self->_annotationCounter = v4;

    v6 = self->_annotationCounter;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_EF208;
    v7[3] = &unk_1E5CC0;
    objc_copyWeak(&v8, &location);
    [(BKPDFAnnotationCounter *)v6 countMarkupAnnotationsWithCompletion:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (id)analyticsContentSettingData
{
  if ([(BKBookViewController *)self _inAnalyticsReadSession]&& self->_annotationCountResults)
  {
    v3 = [BAContentSettingsData alloc];
    v4 = [(PDFDocument *)self->_pdfDocument bookmarkedPages];
    v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 count]);
    v6 = [NSNumber numberWithUnsignedInteger:[(BKPDFAnnotationCounterResult *)self->_annotationCountResults numberOfMarkupAnnotationsWithPopups]];
    v7 = [NSNumber numberWithUnsignedInteger:[(BKPDFAnnotationCounterResult *)self->_annotationCountResults numberOfMarkupAnnotations]];
    v8 = [v3 initWithBookmarkCount:v5 noteCount:v6 highlightCount:v7];
  }

  else
  {
    v8 = [[BAContentSettingsData alloc] initWithBookmarkCount:&off_1F1538 noteCount:&off_1F1538 highlightCount:&off_1F1538];
  }

  return v8;
}

- (BOOL)isPageBookmarked
{
  v2 = [(BKPDFModernBookViewController *)self pdfView];
  v3 = [v2 currentPage];

  if (v3)
  {
    v4 = [v3 isBookmarked];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)visiblePageBookmarks
{
  v2 = BKModernPDFLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_139038();
  }

  return 0;
}

- (void)updateBookmarkButton:(BOOL)a3
{
  v4 = [(BKPDFModernBookViewController *)self pdfDocument];
  v5 = [v4 allowsDocumentAssembly];

  v6 = [(BKPDFModernBookViewController *)self isPageBookmarked];
  v7 = @"bookmark";
  if (v6)
  {
    v7 = @"bookmark.fill";
  }

  v8 = v7;
  if ([(BKPDFModernBookViewController *)self im_isCompactHeight])
  {
    v9 = 2;
  }

  else
  {
    v9 = 3;
  }

  [(UIButton *)self->super._bookmarkButton setEnabled:v5];
  bookmarkButton = self->super._bookmarkButton;
  v11 = [UIImage systemImageNamed:v8];

  v12 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:v9 scale:17.0];
  v13 = [v11 imageWithConfiguration:v12];
  [(UIButton *)bookmarkButton setImage:v13 forState:0];

  if ([(BKPDFModernBookViewController *)self isPageBookmarked])
  {
    v15 = +[UIColor systemRedColor];
    [(UIButton *)self->super._bookmarkButton setTintColor:v15];
  }

  else
  {
    v14 = self->super._bookmarkButton;

    [(UIButton *)v14 setTintColor:0];
  }
}

- (void)toggleBookmark:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_EF654;
  v4[3] = &unk_1E2BD0;
  v4[4] = self;
  [(BKViewController *)self dismissCurrentPopoverWithCompletion:v4];
  [(BKPDFModernBookViewController *)self updateBookmarkButton:1];
}

- (BOOL)canCopy
{
  v2 = [(BKPDFModernBookViewController *)self pdfView];
  v3 = [v2 currentSelection];
  v4 = [v3 string];
  v5 = [v4 length] != 0;

  return v5;
}

- (void)copy:(id)a3
{
  v3 = [(BKPDFModernBookViewController *)self pdfView];
  v4 = [v3 currentSelection];

  v5 = [v4 string];
  if ([v5 length])
  {
    v6 = [UTTypeUTF8PlainText identifier];
    v24 = v6;
    v25 = v5;
    v7 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];

    v8 = [v4 attributedString];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 length];
      v22 = NSDocumentTypeDocumentAttribute;
      v23 = NSRTFTextDocumentType;
      v11 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v12 = [v9 dataFromRange:0 documentAttributes:v10 error:{v11, 0}];

      v13 = [UTTypeRTF identifier];
      v19 = v13;
      v14 = [[NSString alloc] initWithData:v12 encoding:4];
      v20 = v14;
      v15 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v21[0] = v15;
      v21[1] = v7;
      v16 = [NSArray arrayWithObjects:v21 count:2];
      v17 = +[UIPasteboard generalPasteboard];
      [v17 setItems:v16];
    }

    else
    {
      v18 = v7;
      v12 = [NSArray arrayWithObjects:&v18 count:1];
      v13 = +[UIPasteboard generalPasteboard];
      [v13 setItems:v12];
    }
  }
}

- (void)scrubValueChanged:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = BKPDFModernBookViewController;
  [(BKThumbnailBookViewController *)&v11 scrubValueChanged:v4];
  objc_initWeak(&location, self);
  v5 = dispatch_time(0, 100000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_EFB18;
  block[3] = &unk_1E36F8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_after(v5, &_dispatch_main_q, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)scrub:(id)a3 isScrubbing:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  objc_opt_class();
  v9 = BUDynamicCast();

  v7 = v9;
  if (v9)
  {
    v8 = [v9 pageNumber];
    [(BKPDFModernBookViewController *)self setScrubbing:v4];
    [(BKPDFModernBookViewController *)self turnToPageNumber:v8 animated:0];
    [(BKPDFModernBookViewController *)self setScrubbing:0];
    v7 = v9;
    if (!v4)
    {
      [(BKBookViewController *)self emitScrubEventStartPosition:[(BKBookViewController *)self pageNumberBeforeScrubbing] endPosition:v8 totalLength:[(BKPDFModernBookViewController *)self pageCountIncludingUpsell]];
      v7 = v9;
    }
  }
}

- (void)updateScrubber:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(BKPDFModernBookViewController *)self pageCountIncludingUpsell];
  if (v6)
  {
    v7 = v6;
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(BKBookViewController *)self controlsVisible])
      {
        v8 = [(BKThumbnailBookViewController *)self scrubber];
        [v8 setPageCount:v7];

        v9 = [(BKPDFModernBookViewController *)self pageNumberFromRange:location, length];
        if (v9 >= v7)
        {
          v10 = v7;
        }

        else
        {
          v10 = v9;
        }

        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        v12 = [(BKThumbnailBookViewController *)self scrubber];
        [v12 setPageNumber:v11];

        v13 = [(BKThumbnailBookViewController *)self scrubber];
        [v13 setProgress:1.0];
      }
    }
  }
}

- (id)imageCache
{
  if (!self->super._imageCache)
  {
    v3 = [(BKBookViewController *)self book];

    if (v3)
    {
      v4 = [(BKPDFModernBookViewController *)self pdfDocument];
      v5 = [v4 isLocked];

      if (v5)
      {
        v6 = 7340032;
      }

      else
      {
        v6 = 0x100000;
      }

      v7 = [AEPdfRenderingCache alloc];
      v8 = [(BKBookViewController *)self book];
      v9 = [v8 databaseKey];
      v10 = [(AEPdfRenderingCache *)v7 initWithIdentifier:v9 memorySize:v6];

      objc_storeStrong(&self->super._imageCache, v10);
      +[BKThumbnailDirectory defaultCellSize];
      [(IMThumbnailRenderingCache *)self->super._imageCache setPrimaryImageSize:?];
      v11 = [(AEPdfRenderingCache *)v10 persistentCachePath];
      v12 = [(BKBookViewController *)self book];
      v13 = [v12 persistentCachePath];
      v14 = [v11 isEqualToString:v13];

      if ((v14 & 1) == 0)
      {
        v15 = [(BKBookViewController *)self book];
        [v15 resetPersistentCache];

        v16 = [(BKBookViewController *)self book];
        v17 = [(AEPdfRenderingCache *)v10 persistentCachePath];
        [v16 setPersistentCachePath:v17];

        [(NSManagedObjectContext *)self->super.super._bookMoc save:0];
      }
    }
  }

  imageCache = self->super._imageCache;

  return imageCache;
}

+ (int64_t)pageNumberForPageIndex:(unint64_t)a3
{
  if (a3 == -1)
  {
    return 1;
  }

  else
  {
    return a3 + 1;
  }
}

+ (unint64_t)pageIndexForPageNumber:(int64_t)a3
{
  if (a3 <= 0)
  {
    return 0;
  }

  else
  {
    return a3 - 1;
  }
}

- (void)endScroll:(id)a3
{
  [(BKPDFModernBookViewController *)self setScrolling:0];

  [(BKPDFModernBookViewController *)self updateContentScale];
}

- (void)visiblePageDidChange:(id)a3
{
  v4 = [(BKPDFModernBookViewController *)self pdfView];
  v5 = [v4 currentPage];

  v6 = [(BKPDFModernBookViewController *)self pdfDocument];
  v7 = [v6 indexForPage:v5];

  v8 = BKModernPDFLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_139118(v7, v5);
  }

  v9 = [BKPDFModernBookViewController pageNumberForPageIndex:v7];
  v10 = [(BKThumbnailBookViewController *)self scrubber];
  [v10 setPageNumber:v9];

  v11 = [(BKPDFModernBookViewController *)self pageCountIncludingUpsell];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v11;
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(BKPDFModernBookViewController *)self currentPages];
      [(BKThumbnailBookViewController *)self setPageNumberHudTextLabelForValidatedPageNumber:v9 visiblePageCount:v13 validatedPageCount:v12];
      [(BKBookViewController *)self setUserNavigated:1];
    }
  }

  [(BKPDFModernBookViewController *)self updateBookmarkButton:1];
  [(BKPDFModernBookViewController *)self updateProgressKitForNewLocation];
}

- (void)scrollerViewPageDidChange:(id)a3
{
  v4 = [(BKPDFModernBookViewController *)self pdfView];
  v10 = [v4 currentPage];

  v5 = [(BKPDFModernBookViewController *)self pdfDocument];
  v6 = [v5 indexForPage:v10];

  v7 = [BKPDFModernBookViewController pageNumberForPageIndex:v6];
  if (v7 == [(BKPDFModernBookViewController *)self targetPageNumber])
  {
    v8 = +[AETestDriver shared];
    [v8 postEvent:kBETestDriverPageTurnAnimationEnd sender:self];

    v9 = +[AETestDriver shared];
    [v9 postEvent:kBETestDriverPageTurnEnd sender:self];
  }

  [(BKPDFModernBookViewController *)self setIgnoreKeyboardInteraction:0];
}

- (void)annotationsDidChange:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 userInfo];

  v6 = BUDynamicCast();

  objc_opt_class();
  v7 = [v6 objectForKeyedSubscript:@"page"];
  v8 = BUDynamicCast();

  if (v8)
  {
    v9 = [(BKPDFModernBookViewController *)self pdfDocument];
    v10 = [v9 indexForPage:v8];

    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (!v10)
      {
        [(BKPDFModernBookViewController *)self setCoverNeedsUpdate:1];
      }

      v11 = BKModernPDFLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_1391F0(v10);
      }
    }
  }

  [(BKPDFModernBookViewController *)self _evaluateUndoRedoEnabled];
}

- (id)menuItems:(id)a3 forPage:(id)a4
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_F03E4;
  v10[3] = &unk_1E5CE8;
  v4 = objc_opt_new();
  v11 = v4;
  v5 = objc_retainBlock(v10);
  v6 = AEBundle();
  v7 = [v6 localizedStringForKey:@"Search" value:&stru_1E7188 table:0];
  (v5[2])(v5, v7, "searchPDFUsingSelection:");

  v8 = v4;
  return v4;
}

- (UIEdgeInsets)pdfViewContentInset
{
  v3 = [(BKPDFModernBookViewController *)self pdfView];
  [v3 safeAreaInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(BKThumbnailBookViewController *)self topToolbar];
  [v12 alpha];
  if (v13 > 0.0)
  {
    [v12 frame];
    v5 = v5 + CGRectGetHeight(v18);
  }

  v14 = v5;
  v15 = v7;
  v16 = v9;
  v17 = v11;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (void)searchPDFUsingSelection:(id)a3
{
  v4 = a3;
  v5 = [(BKPDFModernBookViewController *)self pdfView];
  v8 = [v5 currentSelection];

  v6 = [v8 string];
  v7 = [(BKPDFModernBookViewController *)self pdfView];
  [v7 clearSelection];

  [(BKBookViewController *)self showSearchWithString:v6 sender:v4];
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = BKPDFModernBookViewController;
  [(BKPDFModernBookViewController *)&v3 viewSafeAreaInsetsDidChange];
  [(BKPDFModernBookViewController *)self updateContentInsets];
}

- (void)updateContentInsets
{
  v7 = [(BKPDFModernBookViewController *)self pdfScrollView];
  v3 = [(BKPDFModernBookViewController *)self view];
  [v3 safeAreaInsets];
  v5 = v4;
  v6 = [(BKPDFModernBookViewController *)self view];
  [v6 safeAreaInsets];
  [v7 setContentInset:{v5, 0.0}];
}

- (id)_uniqueIDForOutline:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = v3;
    v5 = &stru_1E7188;
    do
    {
      v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld/%@", [v4 index], v5);

      v7 = [v4 parent];

      v5 = v6;
      v4 = v7;
    }

    while (v7);
  }

  else
  {
    v6 = &stru_1E7188;
  }

  return v6;
}

- (void)buildContextTree:(id)a3
{
  v4 = objc_opt_new();
  v5 = [(BKPDFModernBookViewController *)self pdfDocument];
  v6 = [v5 outlineRoot];

  if ([v6 numberOfChildren])
  {
    v7 = 0;
    v24 = BCProgressContextTreeKey_uniqueID;
    v23 = BCProgressContextTreeKey_title;
    v22 = BCProgressContextTreeKey_displayOrder;
    v21 = BCProgressContextTreeKey_cfi;
    do
    {
      v8 = [v6 childAtIndex:v7];
      v9 = [v8 label];
      v10 = v9;
      v11 = &stru_1E7188;
      if (v9)
      {
        v11 = v9;
      }

      v12 = v11;

      v13 = [(BKPDFModernBookViewController *)self _uniqueIDForOutline:v8];
      v14 = [BKPDFModernBookViewController pageNumberForPageIndex:[(BKPDFModernBookViewController *)self _pageIndexForOutline:v8]];
      v25[0] = v24;
      v25[1] = v23;
      v26[0] = v13;
      v26[1] = v12;
      v25[2] = v22;
      v15 = [NSNumber numberWithInteger:v7];
      v26[2] = v15;
      v25[3] = v21;
      v16 = [NSString stringWithFormat:@"page(%lu)", v14];
      v26[3] = v16;
      v17 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:4];

      [v4 addObject:v17];
      ++v7;
    }

    while (v7 < [v6 numberOfChildren]);
  }

  if ([v4 count])
  {
    v18 = +[BCProgressKitController sharedController];
    v19 = [(BKBookViewController *)self book];
    v20 = [v19 assetID];
    [v18 buildContextTree:v4 forBook:v20 completion:0];
  }
}

- (void)updateProgressKitForNewLocation
{
  v3 = [(BKPDFModernBookViewController *)self currentPageIndex];
  v4 = [(BKPDFModernBookViewController *)self pdfDocument];
  v26 = [v4 outlineRoot];

  v5 = [v26 numberOfChildren];
  v6 = v5 - 1;
  if (v5 >= 1)
  {
    v7 = v5;
    v8 = 0;
    v9 = -1;
    do
    {
      v10 = [v26 childAtIndex:v8];
      v11 = [(BKPDFModernBookViewController *)self _pageIndexForOutline:v10];

      if (v11 > v3)
      {
        if (v8 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v8;
        }

        v9 = v12 - 1;
        goto LABEL_13;
      }

      if (v6 == v8)
      {
        v9 = v8;
      }

      ++v8;
    }

    while (v7 != v8);
    if (v9 < 0)
    {
      goto LABEL_20;
    }

LABEL_13:
    v13 = [v26 childAtIndex:v9];
    if (v9 >= v6)
    {
      v14 = 0;
    }

    else
    {
      v14 = [v26 childAtIndex:v9 + 1];
    }

    v25 = [(BKPDFModernBookViewController *)self _uniqueIDForOutline:v13];
    v15 = [(BKPDFModernBookViewController *)self _pageIndexForOutline:v13];
    if (v14)
    {
      v16 = [(BKPDFModernBookViewController *)self _pageIndexForOutline:v14];
    }

    else
    {
      v17 = [(BKPDFModernBookViewController *)self pdfDocument];
      v16 = [v17 pageCount];
    }

    v18 = +[BCProgressKitController sharedController];
    v19 = [(BKBookViewController *)self book];
    v20 = [v19 assetID];
    v21 = [v13 label];
    [v18 activateChapterForBook:v20 chapterID:v25 title:v21 currentPage:v3 chapterRange:v15 completion:{&v16[-v15], 0}];
  }

LABEL_20:
  v22 = +[BCProgressKitController sharedController];
  v23 = [(BKBookViewController *)self book];
  v24 = [v23 assetID];
  [v22 updateBookProgress:v24 currentPage:-[BKPDFModernBookViewController currentPageIndex](self completion:{"currentPageIndex"), 0}];
}

- (unint64_t)_pageIndexForOutline:(id)a3
{
  v4 = [a3 destination];
  v5 = [v4 page];
  v6 = [(BKPDFModernBookViewController *)self pdfDocument];
  v7 = [v6 indexForPage:v5];

  return v7;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  if (self->_controlsTapRecognizer != a3)
  {
    return 0;
  }

  v4 = [(BKPDFModernBookViewController *)self pdfView];
  v5 = [v4 currentSelection];
  v3 = v5 == 0;

  return v3;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  if (self->_controlsTapRecognizer == a3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 name];
    v8 = [v7 isEqualToString:@"UITextInteractionNameSingleTap"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end