@interface BKPDFModernBookViewController
+ (int64_t)pageNumberForPageIndex:(unint64_t)index;
+ (unint64_t)pageIndexForPageNumber:(int64_t)number;
+ (void)_minScaleFactorForPageBounds:(CGFloat)bounds viewBounds:(CGFloat)viewBounds safeAreaInsets:(double)insets pageBreakMargins:(double)margins;
- (BKPDFModernBookViewController)initWithBook:(id)book storeID:(id)d;
- (BKPDFModernBookViewController)initWithBook:(id)book storeID:(id)d pdfDocumentCache:(id)cache;
- (BOOL)_needToSaveChanges;
- (BOOL)assetEditingEnabled;
- (BOOL)canBeEdited;
- (BOOL)canCopy;
- (BOOL)canShowControlsDuringOpenClose;
- (BOOL)dismissShouldBegin:(id)begin;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isLocationOnCurrentPage:(id)page;
- (BOOL)isPageBookmarked;
- (BOOL)isPageProgressionRTL;
- (BOOL)prepareForContentScaling;
- (BOOL)shouldShowHUDs;
- (BOOL)shouldShowUndoControls;
- (BOOL)supportsDocumentEditing;
- (BOOL)turnPageInDirection:(int64_t)direction;
- (BOOL)turnPages:(int64_t)pages animated:(BOOL)animated;
- (IMPerformSelectorProxy)performSelectorProxy;
- (PDFDocument)pdfDocument;
- (UIEdgeInsets)pdfViewContentInset;
- (UIScrollView)pdfScrollView;
- (_NSRange)currentPages;
- (double)_contentAspectRatio;
- (id)_bookContentViewImageOfPage:(unint64_t)page;
- (id)_bookContentViewImageOfPage:(unint64_t)page boundingSize:(CGSize)size;
- (id)_currentReadingProgress;
- (id)_uniqueIDForOutline:(id)outline;
- (id)actionController;
- (id)analyticsContentSettingData;
- (id)bookContentView;
- (id)currentPageLocation;
- (id)editRedoBarButtonItem;
- (id)editUndoBarButtonItem;
- (id)imageCache;
- (id)menuItems:(id)items forPage:(id)page;
- (id)pageLocationForPageIndex:(unint64_t)index;
- (id)pageLocationForPageNumber:(int64_t)number;
- (id)searchViewController;
- (id)searchViewController:(id)controller chapterNameForSearchResult:(id)result pageNumber:(int64_t)number;
- (id)transitionContentHostingView;
- (id)transitionContentView;
- (id)transitionContentViewImage;
- (id)visiblePageBookmarks;
- (int64_t)pageCountIncludingUpsell;
- (int64_t)pageNumberForLocation:(id)location;
- (int64_t)pageNumberFromRange:(_NSRange)range;
- (unint64_t)_pageIndexForOutline:(id)outline;
- (unint64_t)_pageNumberForAnchor:(id)anchor;
- (unint64_t)currentPageIndex;
- (unint64_t)pageIndexForLocation:(id)location;
- (void)_didScrollPDFViewToPage;
- (void)_enableMarkupMode:(BOOL)mode;
- (void)_evaluateUndoRedoEnabled;
- (void)_jumpToLocationForVerticalScroll:(id)scroll animated:(BOOL)animated;
- (void)_jumpToLocationPaged:(id)paged animated:(BOOL)animated;
- (void)_scrollToRect:(CGRect)rect inPageAtIndex:(int64_t)index;
- (void)_setupGestureRecognizers;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)_updateToolbarVisibilityAnimated:(BOOL)animated;
- (void)_willScrollPDFViewToPageNumber:(int64_t)number;
- (void)actionControllerWillShow:(id)show;
- (void)annotationsDidChange:(id)change;
- (void)bookContentViewImage:(id)image;
- (void)books_enableContinuousScroll:(id)scroll;
- (void)books_pageBackward:(id)backward;
- (void)books_pageForward:(id)forward;
- (void)books_pageLeft:(id)left;
- (void)books_pageRight:(id)right;
- (void)buildContextTree:(id)tree;
- (void)clearSelection;
- (void)close:(BOOL)close;
- (void)contentViewReady;
- (void)copy:(id)copy;
- (void)dealloc;
- (void)disableEditingAndSaveIfNecessary;
- (void)dismissCurrentPopoverWithCompletion:(id)completion animated:(BOOL)animated;
- (void)endScroll:(id)scroll;
- (void)handleContentScaling:(BOOL)scaling;
- (void)handleSingleTap:(id)tap;
- (void)highlightSearchResult:(id)result;
- (void)jumpToLocation:(id)location animated:(BOOL)animated completion:(id)completion;
- (void)loadAKToolbarView;
- (void)loadView;
- (void)makeContentVisible;
- (void)open:(BOOL)open;
- (void)openToLocation:(id)location animated:(BOOL)animated;
- (void)reloadPDFDocumentCompletion:(id)completion;
- (void)resetPDFDocument;
- (void)saveStateClosing:(BOOL)closing suspending:(BOOL)suspending;
- (void)scalePDFContent:(double)content locationInView:(CGPoint)view animated:(BOOL)animated;
- (void)scrollToPageNumber:(int64_t)number animate:(BOOL)animate;
- (void)scrollerViewPageDidChange:(id)change;
- (void)scrub:(id)scrub isScrubbing:(BOOL)scrubbing;
- (void)scrubValueChanged:(id)changed;
- (void)searchPDFUsingSelection:(id)selection;
- (void)setAssetEditingEnabled:(BOOL)enabled;
- (void)setDefaultMarkupTool;
- (void)setLayout:(unint64_t)layout;
- (void)setScrollMode:(id)mode;
- (void)setSection:(int)section animated:(BOOL)animated adjustScrollToReveal:(BOOL)reveal;
- (void)startCountingAnnotations;
- (void)toggleBookmark:(id)bookmark;
- (void)toggleEditAssetMode:(id)mode;
- (void)turnToPageNumber:(int64_t)number animated:(BOOL)animated;
- (void)updateBookmarkButton:(BOOL)button;
- (void)updateBottomToolbar:(BOOL)toolbar;
- (void)updateContentInsets;
- (void)updateContentScale;
- (void)updateHUDVisibilityAnimated:(BOOL)animated;
- (void)updateLayout;
- (void)updateProgressKitForNewLocation;
- (void)updateScrubber:(_NSRange)scrubber;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)visiblePageDidChange:(id)change;
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
  pdfView = [(BKPDFModernBookViewController *)self pdfView];
  documentScrollView = [pdfView documentScrollView];

  return documentScrollView;
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

  pdfView = [(BKPDFModernBookViewController *)self pdfView];
  akToolbarView = [pdfView akToolbarView];
  v7 = self->_akToolbarView;
  self->_akToolbarView = akToolbarView;

  v8 = self->_akToolbarView;
  if (v8)
  {
    [(UIView *)v8 setAlpha:0.0];
    theme = [(BKPDFModernBookViewController *)self theme];
    v10 = [theme backgroundColorForTraitEnvironment:self];
    pdfView2 = [(BKPDFModernBookViewController *)self pdfView];
    [pdfView2 setAkToolbarViewTintColor:v10];

    theme2 = [(BKPDFModernBookViewController *)self theme];
    tintColorForNavbarButtons = [theme2 tintColorForNavbarButtons];
    pdfView3 = [(BKPDFModernBookViewController *)self pdfView];
    [pdfView3 setAkToolbarViewItemTintColor:tintColorForNavbarButtons];

    pdfView4 = [(BKPDFModernBookViewController *)self pdfView];
    tintColor = [pdfView4 tintColor];
    pdfView5 = [(BKPDFModernBookViewController *)self pdfView];
    [pdfView5 setInteractionTintColor:tintColor];

    view = [(BKPDFModernBookViewController *)self view];
    [view addSubview:self->_akToolbarView];

    [(UIView *)self->_akToolbarView setTranslatesAutoresizingMaskIntoConstraints:0];
    leftAnchor = [(UIView *)self->_akToolbarView leftAnchor];
    view2 = [(BKPDFModernBookViewController *)self view];
    leftAnchor2 = [view2 leftAnchor];
    v22 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    [v22 setActive:1];

    rightAnchor = [(UIView *)self->_akToolbarView rightAnchor];
    view3 = [(BKPDFModernBookViewController *)self view];
    rightAnchor2 = [view3 rightAnchor];
    v26 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    [v26 setActive:1];

    bottomAnchor = [(UIView *)self->_akToolbarView bottomAnchor];
    view4 = [(BKPDFModernBookViewController *)self view];
    bottomAnchor2 = [view4 bottomAnchor];
    v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v29 setActive:1];
  }
}

- (void)reloadPDFDocumentCompletion:(id)completion
{
  completionCopy = completion;
  book = [(BKBookViewController *)self book];
  v6 = [book url];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_E9CA0;
  v13[3] = &unk_1E5538;
  v13[4] = self;
  v7 = v6;
  v14 = v7;
  v8 = completionCopy;
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

- (BKPDFModernBookViewController)initWithBook:(id)book storeID:(id)d
{
  dCopy = d;
  bookCopy = book;
  v8 = +[AEPdfCache sharedInstance];
  v9 = [(BKPDFModernBookViewController *)self initWithBook:bookCopy storeID:dCopy pdfDocumentCache:v8];

  return v9;
}

- (BKPDFModernBookViewController)initWithBook:(id)book storeID:(id)d pdfDocumentCache:(id)cache
{
  bookCopy = book;
  cacheCopy = cache;
  v27.receiver = self;
  v27.super_class = BKPDFModernBookViewController;
  v10 = [(BKThumbnailBookViewController *)&v27 initWithBook:bookCopy storeID:d];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_pdfDocumentCache, cache);
    v12 = [bookCopy url];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_get_global_queue(0, 0);
    v15 = dispatch_queue_create_with_target_V2("com.apple.iBooks.pdfwrite", v13, v14);
    writeQueue = v11->_writeQueue;
    v11->_writeQueue = v15;

    v11->_accessLock._os_unfair_lock_opaque = 0;
    v17 = [(AEPdfCache *)v11->_pdfDocumentCache copyCacheObjectForURL:v12];
    document = [v17 document];
    if (document)
    {
      objc_storeStrong(&v11->_pdfDocument, document);
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

    pdfUndoManager = [v17 pdfUndoManager];
    pdfUndoManager = v11->_pdfUndoManager;
    v11->_pdfUndoManager = pdfUndoManager;

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

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(BKPDFModernBookViewController *)self _enableMarkupMode:0];
  v5.receiver = self;
  v5.super_class = BKPDFModernBookViewController;
  [(BKThumbnailBookViewController *)&v5 viewWillDisappear:disappearCopy];
  [(BKPDFModernBookViewController *)self clearSelection];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = BKPDFModernBookViewController;
  coordinatorCopy = coordinator;
  [(BKThumbnailBookViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_EA55C;
  v8[3] = &unk_1E5BF8;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:&stru_1E5BD0 completion:v8];
}

- (BOOL)prepareForContentScaling
{
  selfCopy = self;
  pdfView = [(BKPDFModernBookViewController *)self pdfView];
  [pdfView scaleFactor];
  v5 = v4;
  [(BKPDFModernBookViewController *)selfCopy initialZoomFactor];
  LOBYTE(selfCopy) = v5 == v6;

  return selfCopy;
}

+ (void)_minScaleFactorForPageBounds:(CGFloat)bounds viewBounds:(CGFloat)viewBounds safeAreaInsets:(double)insets pageBreakMargins:(double)margins
{
  v27 = insets + a10 + a14;
  v28 = margins + a9 + a13;
  v29 = a7 - (a10 + a12) - (a14 + a16);
  v30 = a8 - (a9 + a11) - (a13 + a15);
  v33.origin.x = v27;
  v33.origin.y = v28;
  v33.size.width = v29;
  v33.size.height = v30;
  CGRectGetWidth(v33);
  v34.origin.x = self;
  v34.origin.y = a2;
  v34.size.width = bounds;
  v34.size.height = viewBounds;
  CGRectGetWidth(v34);
  v35.origin.x = v27;
  v35.origin.y = v28;
  v35.size.width = v29;
  v35.size.height = v30;
  CGRectGetHeight(v35);
  v36.origin.x = self;
  v36.origin.y = a2;
  v36.size.height = viewBounds;
  v36.size.width = bounds;
  CGRectGetHeight(v36);
}

- (void)handleContentScaling:(BOOL)scaling
{
  scalingCopy = scaling;
  pdfView = [(BKPDFModernBookViewController *)self pdfView];
  [pdfView autoScaleFactor];
  v7 = v6;

  [(BKPDFModernBookViewController *)self setInitialZoomFactor:v7];
  if (![(BKPDFModernBookViewController *)self isScrolling])
  {
    pdfView2 = [(BKPDFModernBookViewController *)self pdfView];
    [pdfView2 setMinScaleFactor:v7];

    if (scalingCopy)
    {
      pdfView3 = [(BKPDFModernBookViewController *)self pdfView];
      [pdfView3 scaleFactor];
      v11 = v10;

      if (v11 != v7)
      {
        pdfView4 = [(BKPDFModernBookViewController *)self pdfView];
        [pdfView4 setScaleFactor:v7];
      }
    }
  }
}

- (void)updateContentScale
{
  prepareForContentScaling = [(BKPDFModernBookViewController *)self prepareForContentScaling];

  [(BKPDFModernBookViewController *)self handleContentScaling:prepareForContentScaling];
}

- (void)viewWillLayoutSubviews
{
  pdfScrollView = [(BKPDFModernBookViewController *)self pdfScrollView];
  isZooming = [pdfScrollView isZooming];

  if (isZooming)
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
  pdfView = [(BKPDFModernBookViewController *)self pdfView];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    pdfView2 = [(BKPDFModernBookViewController *)self pdfView];
    [pdfView2 setShowsScrollIndicators:0];
  }

  v6 = +[UIColor bc_booksBackground];
  topToolbar = [(BKThumbnailBookViewController *)self topToolbar];
  [topToolbar setBarTintColor:v6];

  v27 = NSForegroundColorAttributeName;
  v8 = +[UIColor bc_booksLabelColor];
  v28 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  topToolbar2 = [(BKThumbnailBookViewController *)self topToolbar];
  [topToolbar2 setTitleTextAttributes:v9];

  v11 = +[UIColor bc_booksLabelColor];
  topToolbar3 = [(BKThumbnailBookViewController *)self topToolbar];
  [topToolbar3 setTintColor:v11];

  [(BKPDFModernBookViewController *)self updateLayout];
  v13 = +[NSNotificationCenter defaultCenter];
  pdfView3 = [(BKPDFModernBookViewController *)self pdfView];
  [v13 addObserver:self selector:"visiblePageDidChange:" name:PDFViewPageChangedNotification object:pdfView3];

  v15 = +[NSNotificationCenter defaultCenter];
  pdfView4 = [(BKPDFModernBookViewController *)self pdfView];
  [v15 addObserver:self selector:"scrollerViewPageDidChange:" name:PDFViewVisiblePagesChangedNotification object:pdfView4];

  v17 = +[NSNotificationCenter defaultCenter];
  v18 = PDFViewAnnotationsDidChangeNotification;
  pdfView5 = [(BKPDFModernBookViewController *)self pdfView];
  [v17 addObserver:self selector:"annotationsDidChange:" name:v18 object:pdfView5];

  v20 = +[NSNotificationCenter defaultCenter];
  v21 = PDFTextSelectionMenuWillChangeScrollPosition;
  pdfView6 = [(BKPDFModernBookViewController *)self pdfView];
  [v20 addObserver:self selector:"beginScroll:" name:v21 object:pdfView6];

  v23 = +[NSNotificationCenter defaultCenter];
  v24 = PDFTextSelectionMenuDidChangeScrollPosition;
  pdfView7 = [(BKPDFModernBookViewController *)self pdfView];
  [v23 addObserver:self selector:"endScroll:" name:v24 object:pdfView7];

  [(BKPDFModernBookViewController *)self setIgnoreKeyboardInteraction:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = BKPDFModernBookViewController;
  [(BKBookViewController *)&v4 viewDidAppear:appear];
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

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = BKPDFModernBookViewController;
  [(BKBookViewController *)&v7 viewDidDisappear:disappear];
  if ([(BKPDFModernBookViewController *)self stateShouldClose])
  {
    v4 = +[BCProgressKitController sharedController];
    asset = [(BKPDFModernBookViewController *)self asset];
    assetID = [asset assetID];
    [v4 didCloseBookWithAssetID:assetID completion:0];

    [(BKPDFModernBookViewController *)self resetPDFDocument];
    [(BKPDFModernBookViewController *)self setStateShouldClose:0];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = BKPDFModernBookViewController;
  [(BKPDFModernBookViewController *)&v11 viewWillAppear:appear];
  pdfView = [(BKPDFModernBookViewController *)self pdfView];
  currentPage = [pdfView currentPage];

  pdfDocument = [(BKPDFModernBookViewController *)self pdfDocument];
  v7 = [pdfDocument indexForPage:currentPage];

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

- (void)open:(BOOL)open
{
  openCopy = open;
  assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];

  if (assetViewControllerDelegate)
  {
    assetViewControllerDelegate2 = [(BKBookViewController *)self assetViewControllerDelegate];
    [assetViewControllerDelegate2 assetViewController:self willOpen:openCopy];
  }
}

- (void)openToLocation:(id)location animated:(BOOL)animated
{
  animatedCopy = animated;
  locationCopy = location;
  assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];

  if (assetViewControllerDelegate)
  {
    assetViewControllerDelegate2 = [(BKBookViewController *)self assetViewControllerDelegate];
    [assetViewControllerDelegate2 assetViewController:self willOpen:animatedCopy];

    objc_opt_class();
    v8 = BUDynamicCast();
    anchor = [v8 anchor];
    v10 = [(BKPDFModernBookViewController *)self _pageNumberForAnchor:anchor];

    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      pdfView = [(BKPDFModernBookViewController *)self pdfView];

      if (pdfView)
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

- (void)close:(BOOL)close
{
  closeCopy = close;
  assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];
  [assetViewControllerDelegate assetViewController:self willClose:closeCopy];

  [(BKPDFModernBookViewController *)self setStateShouldClose:1];
}

- (unint64_t)_pageNumberForAnchor:(id)anchor
{
  anchorCopy = anchor;
  v4 = +[NSCharacterSet whitespaceCharacterSet];
  v5 = [anchorCopy stringByTrimmingCharactersInSet:v4];

  if ([v5 hasPrefix:{@"page(", "hasSuffix:", @")"}])
  {
    v6 = [v5 substringWithRange:{5, objc_msgSend(v5, "length") - 6}];
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return integerValue;
}

- (void)contentViewReady
{
  contentOpenAnimator = [(BKBookViewController *)self contentOpenAnimator];

  if (contentOpenAnimator)
  {
    contentOpenAnimator2 = [(BKBookViewController *)self contentOpenAnimator];
    [contentOpenAnimator2 bookContentDidLoad];

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
  pdfDocument = [(BKPDFModernBookViewController *)self pdfDocument];
  [pdfDocument setShowsAnnotations:1];

  view = [(BKPDFModernBookViewController *)self view];
  v5 = [PDFView alloc];
  [view bounds];
  v6 = [v5 initWithFrame:?];
  [(BKPDFModernBookViewController *)self setPdfView:v6];

  pdfView = [(BKPDFModernBookViewController *)self pdfView];
  [pdfView setAutoresizingMask:18];

  pdfView2 = [(BKPDFModernBookViewController *)self pdfView];
  [pdfView2 setTranslatesAutoresizingMaskIntoConstraints:1];

  pdfView3 = [(BKPDFModernBookViewController *)self pdfView];
  [pdfView3 setDelegate:self];

  pdfView4 = [(BKPDFModernBookViewController *)self pdfView];
  [pdfView4 setAutoScales:1];

  pdfView5 = [(BKPDFModernBookViewController *)self pdfView];
  [pdfView5 setMaxScaleFactor:32.0];

  pdfView6 = [(BKPDFModernBookViewController *)self pdfView];
  [pdfView6 setDisplaysBookmarksForPages:1];

  pdfView7 = [(BKPDFModernBookViewController *)self pdfView];
  [pdfView7 setDisplayDirection:1];

  pdfView8 = [(BKPDFModernBookViewController *)self pdfView];
  v32 = UIPageViewControllerOptionInterPageSpacingKey;
  v33 = &off_1F18B0;
  v15 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  [pdfView8 usePageViewController:1 withViewOptions:v15];

  pdfView9 = [(BKPDFModernBookViewController *)self pdfView];
  documentViewController = [pdfView9 documentViewController];
  [(BKPDFModernBookViewController *)self addChildViewController:documentViewController];

  pdfView10 = [(BKPDFModernBookViewController *)self pdfView];
  [view addSubview:pdfView10];

  pdfView11 = [(BKPDFModernBookViewController *)self pdfView];
  documentViewController2 = [pdfView11 documentViewController];
  [documentViewController2 didMoveToParentViewController:self];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  pdfView12 = [(BKPDFModernBookViewController *)self pdfView];
  [pdfView12 setPageBreakMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  pdfView13 = [(BKPDFModernBookViewController *)self pdfView];
  pdfDocument2 = [(BKPDFModernBookViewController *)self pdfDocument];
  [pdfView13 setDocument:pdfDocument2];

  [(BKPDFModernBookViewController *)self _setupGestureRecognizers];
  pdfView14 = [(BKPDFModernBookViewController *)self pdfView];
  book = [(BKBookViewController *)self book];
  [pdfView14 setDisplaysRTL:{objc_msgSend(book, "writingDirection") == &dword_0 + 1}];

  v29 = [IMTheme themeWithIdentifier:kIMThemeIdentifierDynamicTheme];
  [(BKBookViewController *)self setTheme:v29];

  pdfView15 = [(BKPDFModernBookViewController *)self pdfView];
  [pdfView15 setAkAnnotationEditingEnabled:0];

  [(BKPDFModernBookViewController *)self loadAKToolbarView];
}

- (BOOL)isPageProgressionRTL
{
  pdfView = [(BKPDFModernBookViewController *)self pdfView];
  displaysRTL = [pdfView displaysRTL];

  return displaysRTL;
}

- (void)setLayout:(unint64_t)layout
{
  v4.receiver = self;
  v4.super_class = BKPDFModernBookViewController;
  [(BKThumbnailBookViewController *)&v4 setLayout:layout];
  [(BKPDFModernBookViewController *)self updateLayout];
}

- (void)updateLayout
{
  pdfView = [(BKPDFModernBookViewController *)self pdfView];
  currentPage = [pdfView currentPage];

  layout = [(BKBookViewController *)self layout];
  pdfView2 = [(BKPDFModernBookViewController *)self pdfView];
  v7 = pdfView2;
  if (layout == 2)
  {
    documentViewController = [pdfView2 documentViewController];
    [documentViewController willMoveToParentViewController:0];

    pdfView3 = [(BKPDFModernBookViewController *)self pdfView];
    documentViewController2 = [pdfView3 documentViewController];
    [documentViewController2 removeFromParentViewController];

    pdfView4 = [(BKPDFModernBookViewController *)self pdfView];
    [pdfView4 usePageViewController:0 withViewOptions:0];

    pdfView5 = [(BKPDFModernBookViewController *)self pdfView];
    [pdfView5 setDisplayDirection:0];

    pdfView6 = [(BKPDFModernBookViewController *)self pdfView];
    [pdfView6 setDisplayMode:1];

    pdfScrollView = [(BKPDFModernBookViewController *)self pdfScrollView];
    [pdfScrollView setContentInsetAdjustmentBehavior:2];

    pdfView7 = [(BKPDFModernBookViewController *)self pdfView];
    [pdfView7 setAutoScales:1];

    pdfView8 = [(BKPDFModernBookViewController *)self pdfView];
    [pdfView8 setPageBreakMargins:{4.75, 4.0, 4.75, 4.0}];
  }

  else
  {
    v32 = UIPageViewControllerOptionInterPageSpacingKey;
    v33 = &off_1F18B0;
    v17 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    [v7 usePageViewController:1 withViewOptions:v17];

    pdfView9 = [(BKPDFModernBookViewController *)self pdfView];
    [pdfView9 setDisplayDirection:1];

    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    pdfView10 = [(BKPDFModernBookViewController *)self pdfView];
    [pdfView10 setPageBreakMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

    pdfView11 = [(BKPDFModernBookViewController *)self pdfView];
    documentViewController3 = [pdfView11 documentViewController];
    [(BKPDFModernBookViewController *)self addChildViewController:documentViewController3];

    pdfView8 = [(BKPDFModernBookViewController *)self pdfView];
    documentViewController4 = [pdfView8 documentViewController];
    [documentViewController4 didMoveToParentViewController:self];
  }

  [(BKPDFModernBookViewController *)self updateContentInsets];
  pdfView12 = [(BKPDFModernBookViewController *)self pdfView];
  [pdfView12 layoutDocumentView];

  pdfView13 = [(BKPDFModernBookViewController *)self pdfView];
  controlsTapRecognizer = [(BKPDFModernBookViewController *)self controlsTapRecognizer];
  [pdfView13 removeGestureRecognizer:controlsTapRecognizer];

  [(BKPDFModernBookViewController *)self _setupGestureRecognizers];
  pdfView14 = [(BKPDFModernBookViewController *)self pdfView];
  [pdfView14 goToPage:currentPage];

  v30 = +[UIColor clearColor];
  pdfView15 = [(BKPDFModernBookViewController *)self pdfView];
  [pdfView15 setBackgroundColor:v30];
}

- (void)setScrollMode:(id)mode
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

  controlsTapRecognizer = [(BKPDFModernBookViewController *)self controlsTapRecognizer];
  [controlsTapRecognizer setNumberOfTapsRequired:1];

  controlsTapRecognizer2 = [(BKPDFModernBookViewController *)self controlsTapRecognizer];
  [controlsTapRecognizer2 setDelegate:self];

  pdfView = [(BKPDFModernBookViewController *)self pdfView];
  controlsTapRecognizer3 = [(BKPDFModernBookViewController *)self controlsTapRecognizer];
  [pdfView addGestureRecognizer:controlsTapRecognizer3];

  pdfView2 = [(BKPDFModernBookViewController *)self pdfView];
  longPressGestureRecognizer = [pdfView2 longPressGestureRecognizer];

  pdfView3 = [(BKPDFModernBookViewController *)self pdfView];
  tapGestureRecognizer = [pdfView3 tapGestureRecognizer];

  pdfView4 = [(BKPDFModernBookViewController *)self pdfView];
  doubleTapGestureRecognizer = [pdfView4 doubleTapGestureRecognizer];

  controlsTapRecognizer4 = [(BKPDFModernBookViewController *)self controlsTapRecognizer];
  [controlsTapRecognizer4 requireGestureRecognizerToFail:tapGestureRecognizer];

  controlsTapRecognizer5 = [(BKPDFModernBookViewController *)self controlsTapRecognizer];
  [controlsTapRecognizer5 requireGestureRecognizerToFail:longPressGestureRecognizer];

  controlsTapRecognizer6 = [(BKPDFModernBookViewController *)self controlsTapRecognizer];
  [controlsTapRecognizer6 requireGestureRecognizerToFail:doubleTapGestureRecognizer];
}

- (int64_t)pageCountIncludingUpsell
{
  pdfDocument = [(BKPDFModernBookViewController *)self pdfDocument];
  pageCount = [pdfDocument pageCount];

  return pageCount;
}

- (id)actionController
{
  if (!self->super.super._actionController)
  {
    book = [(BKBookViewController *)self book];
    if ([book isManagedBook])
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
    book2 = [(BKBookViewController *)self book];
    [(BKActionController *)self->super.super._actionController setBookInfo:book2];

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

- (void)actionControllerWillShow:(id)show
{
  v4.receiver = self;
  v4.super_class = BKPDFModernBookViewController;
  [(BKBookViewController *)&v4 actionControllerWillShow:show];
  [(BKPDFModernBookViewController *)self disableEditingAndSaveIfNecessary];
}

- (void)setSection:(int)section animated:(BOOL)animated adjustScrollToReveal:(BOOL)reveal
{
  revealCopy = reveal;
  animatedCopy = animated;
  v7 = *&section;
  if (section == 1 && [(BKPDFModernBookViewController *)self assetEditingEnabled])
  {
    [(BKPDFModernBookViewController *)self _enableMarkupMode:0];
  }

  v9.receiver = self;
  v9.super_class = BKPDFModernBookViewController;
  [(BKThumbnailBookViewController *)&v9 setSection:v7 animated:animatedCopy adjustScrollToReveal:revealCopy];
}

- (void)updateBottomToolbar:(BOOL)toolbar
{
  v6.receiver = self;
  v6.super_class = BKPDFModernBookViewController;
  [(BKThumbnailBookViewController *)&v6 updateBottomToolbar:toolbar];
  controlsVisible = 0.0;
  if ([(BKPDFModernBookViewController *)self assetEditingEnabled])
  {
    controlsVisible = [(BKBookViewController *)self controlsVisible];
  }

  akToolbarView = [(BKPDFModernBookViewController *)self akToolbarView];
  [akToolbarView setAlpha:controlsVisible];
}

- (BOOL)supportsDocumentEditing
{
  akToolbarView = [(BKPDFModernBookViewController *)self akToolbarView];
  if (akToolbarView)
  {
    canBeEdited = [(BKPDFModernBookViewController *)self canBeEdited];
  }

  else
  {
    canBeEdited = 0;
  }

  return canBeEdited;
}

- (BOOL)canBeEdited
{
  pdfDocument = [(BKPDFModernBookViewController *)self pdfDocument];
  allowsDocumentChanges = [pdfDocument allowsDocumentChanges];

  return allowsDocumentChanges;
}

- (BOOL)shouldShowUndoControls
{
  assetEditingEnabled = [(BKPDFModernBookViewController *)self assetEditingEnabled];
  if (assetEditingEnabled)
  {
    if (isPhone())
    {
      LOBYTE(assetEditingEnabled) = 1;
    }

    else
    {

      LOBYTE(assetEditingEnabled) = [(BKPDFModernBookViewController *)self im_isCompactWidth];
    }
  }

  return assetEditingEnabled;
}

- (id)editUndoBarButtonItem
{
  editUndoBarButtonItem = self->super._editUndoBarButtonItem;
  if (!editUndoBarButtonItem)
  {
    pdfView = [(BKPDFModernBookViewController *)self pdfView];
    akUndoToolbarItem = [pdfView akUndoToolbarItem];

    v10.receiver = self;
    v10.super_class = BKPDFModernBookViewController;
    editUndoBarButtonItem = [(BKThumbnailBookViewController *)&v10 editUndoBarButtonItem];
    v7 = self->super._editUndoBarButtonItem;
    self->super._editUndoBarButtonItem = editUndoBarButtonItem;

    target = [akUndoToolbarItem target];
    [(UIBarButtonItem *)self->super._editUndoBarButtonItem setTarget:target];

    -[UIBarButtonItem setAction:](self->super._editUndoBarButtonItem, "setAction:", [akUndoToolbarItem action]);
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
    pdfView = [(BKPDFModernBookViewController *)self pdfView];
    akRedoToolbarItem = [pdfView akRedoToolbarItem];

    v10.receiver = self;
    v10.super_class = BKPDFModernBookViewController;
    editRedoBarButtonItem = [(BKThumbnailBookViewController *)&v10 editRedoBarButtonItem];
    v7 = self->super._editRedoBarButtonItem;
    self->super._editRedoBarButtonItem = editRedoBarButtonItem;

    target = [akRedoToolbarItem target];
    [(UIBarButtonItem *)self->super._editRedoBarButtonItem setTarget:target];

    -[UIBarButtonItem setAction:](self->super._editRedoBarButtonItem, "setAction:", [akRedoToolbarItem action]);
    [(UIBarButtonItem *)self->super._editRedoBarButtonItem setWidth:46.0];

    editRedoBarButtonItem = self->super._editRedoBarButtonItem;
  }

  return editRedoBarButtonItem;
}

- (void)_evaluateUndoRedoEnabled
{
  pdfView = [(BKPDFModernBookViewController *)self pdfView];
  akUndoToolbarItem = [pdfView akUndoToolbarItem];
  isEnabled = [akUndoToolbarItem isEnabled];
  editUndoBarButtonItem = [(BKPDFModernBookViewController *)self editUndoBarButtonItem];
  [editUndoBarButtonItem setEnabled:isEnabled];

  pdfView2 = [(BKPDFModernBookViewController *)self pdfView];
  akRedoToolbarItem = [pdfView2 akRedoToolbarItem];
  isEnabled2 = [akRedoToolbarItem isEnabled];
  editRedoBarButtonItem = [(BKPDFModernBookViewController *)self editRedoBarButtonItem];
  [editRedoBarButtonItem setEnabled:isEnabled2];
}

- (id)bookContentView
{
  pdfView = [(BKPDFModernBookViewController *)self pdfView];
  v4 = [pdfView pageViewForPageAtIndex:{-[BKPDFModernBookViewController currentPageIndex](self, "currentPageIndex")}];

  return v4;
}

- (id)_bookContentViewImageOfPage:(unint64_t)page
{
  view = [(BKPDFModernBookViewController *)self view];
  window = [view window];
  if (window)
  {
    view2 = [(BKPDFModernBookViewController *)self view];
    window2 = [view2 window];
    [window2 bounds];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    view2 = +[UIScreen mainScreen];
    [view2 bounds];
    v10 = v13;
    v12 = v14;
  }

  return [(BKPDFModernBookViewController *)self _bookContentViewImageOfPage:page boundingSize:v10, v12];
}

- (id)_bookContentViewImageOfPage:(unint64_t)page boundingSize:(CGSize)size
{
  pdfDocument = [(BKPDFModernBookViewController *)self pdfDocument];
  v6 = [pdfDocument pageAtIndex:page];

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

    cGImage = [v14 CGImage];
    v16 = +[UIScreen mainScreen];
    [v16 scale];
    v18 = +[UIImage imageWithCGImage:scale:orientation:](UIImage, "imageWithCGImage:scale:orientation:", cGImage, [v14 imageOrientation], v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)bookContentViewImage:(id)image
{
  imageCopy = image;
  v6 = [(BKPDFModernBookViewController *)self _bookContentViewImageOfPage:[(BKPDFModernBookViewController *)self currentPageIndex]];
  (*(image + 2))(imageCopy, v6);
}

- (void)makeContentVisible
{
  v3.receiver = self;
  v3.super_class = BKPDFModernBookViewController;
  [(BKThumbnailBookViewController *)&v3 makeContentVisible];
  [(BKThumbnailBookViewController *)self assetViewControllerUpdateToolbars];
  [(BKBookViewController *)self setControlsVisible:1 animated:1];
}

- (void)_updateToolbarVisibilityAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(UIBarButtonItem *)self->super._editToolboxBarButtonItem setSelected:[(BKPDFModernBookViewController *)self assetEditingEnabled]];
  [(BKThumbnailBookViewController *)self updateTopToolbar:animatedCopy];

  [(BKPDFModernBookViewController *)self updateBottomToolbar:animatedCopy];
}

- (void)updateHUDVisibilityAnimated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = BKPDFModernBookViewController;
  [(BKThumbnailBookViewController *)&v4 updateHUDVisibilityAnimated:animated];
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
  pdfDocument = [(BKPDFModernBookViewController *)self pdfDocument];
  akController = [pdfDocument akController];

  v3 = objc_opt_new();
  [v3 setTag:764017];
  [akController performActionForSender:v3];
}

- (void)dismissCurrentPopoverWithCompletion:(id)completion animated:(BOOL)animated
{
  animatedCopy = animated;
  completionCopy = completion;
  if ([(BKPDFModernBookViewController *)self assetEditingEnabled])
  {
    [(BKPDFModernBookViewController *)self _enableMarkupMode:0];
  }

  v7.receiver = self;
  v7.super_class = BKPDFModernBookViewController;
  [(BKBookViewController *)&v7 dismissCurrentPopoverWithCompletion:completionCopy animated:animatedCopy];
}

- (void)_enableMarkupMode:(BOOL)mode
{
  modeCopy = mode;
  if ([(BKPDFModernBookViewController *)self canBeEdited])
  {
    if ([(BKPDFModernBookViewController *)self assetEditingEnabled]!= modeCopy)
    {
      v5 = +[UIView areAnimationsEnabled];
      [(BKPDFModernBookViewController *)self setAssetEditingEnabled:modeCopy];
      if (modeCopy)
      {
        [(BKPDFModernBookViewController *)self setDefaultMarkupTool];
      }

      [(BKPDFModernBookViewController *)self _updateToolbarVisibilityAnimated:v5];
      [(BKPDFModernBookViewController *)self updateHUDVisibilityAnimated:v5];
      if (![(BKPDFModernBookViewController *)self assetEditingEnabled]&& [(BKPDFModernBookViewController *)self _needToSaveChanges])
      {
        [(BKPDFModernBookViewController *)self saveStateClosing:0];
      }

      if (modeCopy)
      {
        [(BKBookViewController *)self setControlsVisible:1 animated:1];
      }
    }

    assetEditingEnabled = [(BKPDFModernBookViewController *)self assetEditingEnabled];
    controlsTapRecognizer = [(BKPDFModernBookViewController *)self controlsTapRecognizer];
    [controlsTapRecognizer setEnabled:assetEditingEnabled ^ 1];
  }
}

- (void)scalePDFContent:(double)content locationInView:(CGPoint)view animated:(BOOL)animated
{
  animatedCopy = animated;
  y = view.y;
  x = view.x;
  pdfView = [(BKPDFModernBookViewController *)self pdfView];
  [pdfView minScaleFactor];
  contentCopy = v11;

  if (contentCopy <= content)
  {
    contentCopy = content;
  }

  pdfView2 = [(BKPDFModernBookViewController *)self pdfView];
  [pdfView2 maxScaleFactor];
  v15 = v14;

  v21 = 3221225472;
  v20 = _NSConcreteStackBlock;
  v22 = sub_ECC3C;
  v23 = &unk_1E5C48;
  if (contentCopy < v15)
  {
    v15 = contentCopy;
  }

  v25 = x;
  v26 = y;
  selfCopy = self;
  v27 = v15;
  v16 = objc_retainBlock(&v20);
  v17 = [(BKPDFModernBookViewController *)self pdfView:v20];
  [v17 scaleFactor];
  v19 = v18;

  if (v19 != v15)
  {
    if (animatedCopy)
    {
      [UIView animateWithDuration:v16 animations:0.2];
    }

    else
    {
      (v16[2])(v16);
    }
  }
}

- (void)handleSingleTap:(id)tap
{
  tapCopy = tap;
  if (![(BKPDFModernBookViewController *)self assetEditingRequested])
  {
    if (-[BKPDFModernBookViewController assetEditingEnabled](self, "assetEditingEnabled") || -[BKBookViewController layout](self, "layout") != &dword_0 + 1 || ((-[BKPDFModernBookViewController view](self, "view"), v4 = objc_claimAutoreleasedReturnValue(), [v4 bounds], v6 = v5, v8 = v7, v10 = v9, v12 = v11, v4, -[BKPDFModernBookViewController controlsTapRecognizer](self, "controlsTapRecognizer"), v13 = objc_claimAutoreleasedReturnValue(), -[BKPDFModernBookViewController pdfView](self, "pdfView"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "locationInView:", v14), v16 = v15, v14, v13, v22.origin.x = v6, v22.origin.y = v8, v22.size.width = v10, v22.size.height = v12, v17 = CGRectGetWidth(v22) * 0.2, v18 = -[BKPDFModernBookViewController isPageProgressionRTL](self, "isPageProgressionRTL"), v16 <= v17) ? (v19 = v18 ^ 1) : v16 >= v10 - v17 ? (v19 = v18) : (v19 = -1), !-[BKPDFModernBookViewController turnPageInDirection:](self, "turnPageInDirection:", v19)))
    {
      [(BKThumbnailBookViewController *)self toggleControls:tapCopy];
    }
  }
}

- (void)books_enableContinuousScroll:(id)scroll
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_ECEC0;
  v4[3] = &unk_1E3F50;
  selfCopy = self;
  scrollCopy = scroll;
  v3 = scrollCopy;
  [(BKViewController *)selfCopy dismissCurrentPopoverWithCompletion:v4];
}

- (void)toggleEditAssetMode:(id)mode
{
  v5.receiver = self;
  v5.super_class = BKPDFModernBookViewController;
  [(BKThumbnailBookViewController *)&v5 toggleEditAssetMode:mode];
  v4 = BKModernPDFLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_138E68();
  }

  [(BKPDFModernBookViewController *)self _enableMarkupMode:[(BKPDFModernBookViewController *)self assetEditingRequested]^ 1];
}

- (void)setAssetEditingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = BKModernPDFLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_138EA8(enabledCopy, v5);
  }

  pdfView = [(BKPDFModernBookViewController *)self pdfView];
  [pdfView setAkAnnotationEditingEnabled:enabledCopy];

  [(BKPDFModernBookViewController *)self setAssetEditingRequested:enabledCopy];
  if (!enabledCopy)
  {
    [(BKPDFModernBookViewController *)self becomeFirstResponder];
  }
}

- (BOOL)assetEditingEnabled
{
  pdfView = [(BKPDFModernBookViewController *)self pdfView];
  akAnnotationEditingEnabled = [pdfView akAnnotationEditingEnabled];

  return akAnnotationEditingEnabled;
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
  selfCopy = self;
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

- (void)saveStateClosing:(BOOL)closing suspending:(BOOL)suspending
{
  suspendingCopy = suspending;
  closingCopy = closing;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_ED47C;
  v14[3] = &unk_1E2BD0;
  v14[4] = self;
  os_unfair_lock_lock(&self->_accessLock);
  sub_ED47C(v14);
  os_unfair_lock_unlock(&self->_accessLock);
  [(BKThumbnailBookViewController *)self didChangeLocationClosing:closingCopy suspending:suspendingCopy];
  v13.receiver = self;
  v13.super_class = BKPDFModernBookViewController;
  [(BKBookViewController *)&v13 saveStateClosing:closingCopy suspending:suspendingCopy];
  pdfDocument = [(BKPDFModernBookViewController *)self pdfDocument];
  writeQueue = self->_writeQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_ED488;
  block[3] = &unk_1E3F50;
  v11 = pdfDocument;
  selfCopy = self;
  v9 = pdfDocument;
  dispatch_async(writeQueue, block);
}

- (BOOL)dismissShouldBegin:(id)begin
{
  beginCopy = begin;
  if (-[BKPDFModernBookViewController assetEditingEnabled](self, "assetEditingEnabled") || ([beginCopy velocity], v6 = v5, objc_msgSend(beginCopy, "velocity"), v6 >= v7))
  {
    proposedBeginState = 0;
  }

  else
  {
    proposedBeginState = [beginCopy proposedBeginState];
  }

  return proposedBeginState;
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
  pdfDocument = [(BKPDFModernBookViewController *)self pdfDocument];
  v7 = [pdfDocument pageAtIndex:{-[BKPDFModernBookViewController pageCountIncludingUpsell](self, "pageCountIncludingUpsell") > 1}];
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
  pdfView = [(BKPDFModernBookViewController *)self pdfView];
  [pdfView clearSelection];
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
  view = ;
  if (!view)
  {
    [(BKPDFModernBookViewController *)self reloadPDFDocument];
    pdfView = [(BKPDFModernBookViewController *)self pdfView];
    view = [pdfView pageViewForPageAtIndex:{-[BKPDFModernBookViewController currentPageIndex](self, "currentPageIndex")}];

    if (!view)
    {
      view = [(BKPDFModernBookViewController *)self view];
    }
  }

  return view;
}

- (id)transitionContentHostingView
{
  if ([(BKThumbnailBookViewController *)self directoryTOCIsVisible])
  {
    pdfView = 0;
  }

  else
  {
    pdfView = [(BKPDFModernBookViewController *)self pdfView];
  }

  return pdfView;
}

- (id)transitionContentViewImage
{
  if ([(BKThumbnailBookViewController *)self directoryTOCIsVisible])
  {
    v3 = 0;
  }

  else
  {
    transitionContentView = [(BKPDFModernBookViewController *)self transitionContentView];
    [transitionContentView bounds];
    [transitionContentView convertRect:0 toView:?];
    view = [(BKPDFModernBookViewController *)self view];
    window = [view window];
    if (window)
    {
      view2 = [(BKPDFModernBookViewController *)self view];
      window2 = [view2 window];
      [window2 bounds];
    }

    else
    {
      view2 = +[UIScreen mainScreen];
      [view2 bounds];
    }

    CGSizeScaledToFitInSize();
    v3 = [(BKPDFModernBookViewController *)self _bookContentViewImageOfPage:[(BKPDFModernBookViewController *)self currentPageIndex] boundingSize:v9, v10];
  }

  return v3;
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  v6 = [(BKPDFModernBookViewController *)self theme:change];
  searchViewControllerIfLoaded = [(BKBookViewController *)self searchViewControllerIfLoaded];
  [searchViewControllerIfLoaded setTheme:v6];
}

- (BOOL)turnPages:(int64_t)pages animated:(BOOL)animated
{
  animatedCopy = animated;
  v7 = +[AETestDriver shared];
  [v7 postEvent:kBETestDriverPageTurnStart sender:self];

  v8 = +[AETestDriver shared];
  [v8 postEvent:kBETestDriverPageTurnSetupStart sender:self];

  [(BKPDFModernBookViewController *)self turnToPageNumber:[BKPDFModernBookViewController animated:"pageNumberForPageIndex:" pageNumberForPageIndex:?]+ pages, animatedCopy];
  return 1;
}

- (void)turnToPageNumber:(int64_t)number animated:(BOOL)animated
{
  animatedCopy = animated;
  if (number < 1 || (v6 = number, [(BKPDFModernBookViewController *)self pageCountIncludingUpsell]< number))
  {
    v6 = 1;
  }

  v7 = [(BKPDFModernBookViewController *)self isVisible]& animatedCopy;

  [(BKPDFModernBookViewController *)self scrollToPageNumber:v6 animate:v7];
}

- (id)searchViewController
{
  searchViewController = self->super.super._searchViewController;
  if (!searchViewController)
  {
    v7.receiver = self;
    v7.super_class = BKPDFModernBookViewController;
    searchViewController = [(BKBookViewController *)&v7 searchViewController];
    searchController = [(BKSearchViewController *)self->super.super._searchViewController searchController];
    [searchController setPageCount:{-[BKPDFModernBookViewController pageCountIncludingUpsell](self, "pageCountIncludingUpsell")}];

    searchViewController = self->super.super._searchViewController;
  }

  return searchViewController;
}

- (void)highlightSearchResult:(id)result
{
  resultCopy = result;
  [(BKPDFModernBookViewController *)self initialZoomFactor];
  [BKPDFModernBookViewController scalePDFContent:"scalePDFContent:locationInView:animated:" locationInView:1 animated:?];
  objc_opt_class();
  v9 = BUDynamicCast();

  v5 = v9;
  if (v9)
  {
    selection = [v9 selection];
    if (selection)
    {
      v7 = +[UIColor yellowColor];
      [selection setColor:v7];

      pdfView = [(BKPDFModernBookViewController *)self pdfView];
      [pdfView setCurrentSelection:selection animate:1];
    }

    v5 = v9;
  }
}

- (id)searchViewController:(id)controller chapterNameForSearchResult:(id)result pageNumber:(int64_t)number
{
  controllerCopy = controller;
  resultCopy = result;
  objc_opt_class();
  v9 = BUDynamicCast();
  selection = [v9 selection];
  if (selection)
  {
    pdfDocument = [(BKPDFModernBookViewController *)self pdfDocument];
    v12 = [pdfDocument outlineItemForSelection:selection];

    v13 = -3;
    do
    {
      parent = [v12 parent];

      if (!parent)
      {
        break;
      }

      if (!v13)
      {
        parent = 0;
        break;
      }

      label = [v12 label];
      v16 = [label length];

      if (v16)
      {
        parent = [v12 label];
      }

      else
      {
        parent2 = [v12 parent];

        parent = 0;
        v12 = parent2;
      }

      ++v13;
    }

    while (!parent);
  }

  else
  {
    parent = 0;
  }

  return parent;
}

- (id)pageLocationForPageIndex:(unint64_t)index
{
  if (index == -1)
  {
    indexCopy = 0;
  }

  else
  {
    indexCopy = index;
  }

  v4 = [[BKPageLocation alloc] initWithOrdinal:0 andOffset:indexCopy];

  return v4;
}

- (id)pageLocationForPageNumber:(int64_t)number
{
  v4 = [BKPDFModernBookViewController pageIndexForPageNumber:number];

  return [(BKPDFModernBookViewController *)self pageLocationForPageIndex:v4];
}

- (int64_t)pageNumberFromRange:(_NSRange)range
{
  v4 = [BKPDFModernBookViewController pageNumberForPageIndex:range.location, range.length];
  result = [(BKPDFModernBookViewController *)self pageCountIncludingUpsell];
  if (v4 < result)
  {
    return v4;
  }

  return result;
}

- (void)_willScrollPDFViewToPageNumber:(int64_t)number
{
  [(BKPDFModernBookViewController *)self setTargetPageNumber:number];
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

- (void)scrollToPageNumber:(int64_t)number animate:(BOOL)animate
{
  animateCopy = animate;
  v7 = [BKPDFModernBookViewController pageIndexForPageNumber:?];
  pdfView = [(BKPDFModernBookViewController *)self pdfView];
  currentPage = [pdfView currentPage];

  if (currentPage)
  {
    pdfDocument = [(BKPDFModernBookViewController *)self pdfDocument];
    v11 = [pdfDocument indexForPage:currentPage];
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = _AEBookPluginsLifeCycleLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    [NSNumber numberWithInteger:number];
    v13 = v23 = currentPage;
    v14 = [NSNumber numberWithUnsignedInteger:v11];
    v15 = [NSNumber numberWithUnsignedInteger:v7];
    book = [(BKBookViewController *)self book];
    [book assetLogID];
    v24 = v7;
    numberCopy = number;
    v19 = v18 = animateCopy;
    *buf = 138544130;
    v26 = v13;
    v27 = 2114;
    v28 = v14;
    v29 = 2114;
    v30 = v15;
    v31 = 2114;
    v32 = v19;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Scroll to page number:%{public}@, currentIndex:%{public}@, targetIndex:%{public}@, culogID:%{public}@", buf, 0x2Au);

    animateCopy = v18;
    number = numberCopy;
    v7 = v24;

    currentPage = v23;
  }

  if (v7 != v11)
  {
    [(BKPDFModernBookViewController *)self _willScrollPDFViewToPageNumber:number];
    pdfDocument2 = [(BKPDFModernBookViewController *)self pdfDocument];
    v21 = [pdfDocument2 pageAtIndex:v7];

    pdfView2 = [(BKPDFModernBookViewController *)self pdfView];
    [pdfView2 goToPage:v21 animated:animateCopy];

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
  pdfView = [(BKPDFModernBookViewController *)self pdfView];
  currentPage = [pdfView currentPage];

  if (currentPage)
  {
    pdfDocument = [(BKPDFModernBookViewController *)self pdfDocument];
    pageOffset = [pdfDocument indexForPage:currentPage];
  }

  else
  {
    objc_opt_class();
    location = [(BKBookViewController *)self location];
    pdfDocument = BUDynamicCast();

    pageOffset = [pdfDocument pageOffset];
  }

  v8 = pageOffset;

  return v8;
}

- (void)_scrollToRect:(CGRect)rect inPageAtIndex:(int64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = BKModernPDFLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_139004();
    }

LABEL_10:

    return;
  }

  y = rect.origin.y;
  x = rect.origin.x;
  v9 = [(BKPDFModernBookViewController *)self pdfDocument:rect.origin.x];
  pageCount = [v9 pageCount];

  if (pageCount <= index)
  {
    v4 = BKModernPDFLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_138FD0();
    }

    goto LABEL_10;
  }

  [(BKPDFModernBookViewController *)self _willScrollPDFViewToPageNumber:[BKPDFModernBookViewController pageNumberForPageIndex:index]];
  pdfView = [(BKPDFModernBookViewController *)self pdfView];
  [pdfView constrainedScrollToPoint:{x, y}];

  [(BKPDFModernBookViewController *)self _didScrollPDFViewToPage];
}

- (void)jumpToLocation:(id)location animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  locationCopy = location;
  [(BKPDFModernBookViewController *)self clearSelection];
  if ([(BKBookViewController *)self layout]== &dword_0 + 2)
  {
    [(BKPDFModernBookViewController *)self _jumpToLocationForVerticalScroll:locationCopy animated:animatedCopy];
  }

  else
  {
    [(BKPDFModernBookViewController *)self _jumpToLocationPaged:locationCopy animated:animatedCopy];
  }

  v11 = objc_retainBlock(completionCopy);
  v10 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11);
    v10 = v11;
  }
}

- (void)_jumpToLocationPaged:(id)paged animated:(BOOL)animated
{
  animatedCopy = animated;
  pagedCopy = paged;
  v6 = [(BKPDFModernBookViewController *)self pageNumberForLocation:?];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_opt_class();
    v7 = BUDynamicCast();
    ordinal = [v7 ordinal];
    v6 = [v7 pageOffset] + ordinal + 1;
  }

  [(BKPDFModernBookViewController *)self scrollToPageNumber:v6 animate:animatedCopy];
}

- (void)_jumpToLocationForVerticalScroll:(id)scroll animated:(BOOL)animated
{
  animatedCopy = animated;
  scrollCopy = scroll;
  v6 = [(BKPDFModernBookViewController *)self pageIndexForLocation:?];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_opt_class();
    v7 = BUDynamicCast();
    ordinal = [v7 ordinal];
    v6 = &ordinal[[v7 pageOffset]];
  }

  objc_opt_class();
  v9 = BUDynamicCast();
  v10 = v9;
  if (v9)
  {
    selection = [v9 selection];
    pages = [selection pages];
    firstObject = [pages firstObject];

    view = [(BKPDFModernBookViewController *)self view];
    [view frame];
    v16 = v15;

    pdfView = [(BKPDFModernBookViewController *)self pdfView];
    [selection boundsForPage:firstObject];
    [pdfView convertRect:firstObject fromPage:?];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    pdfView2 = [(BKPDFModernBookViewController *)self pdfView];
    documentView = [pdfView2 documentView];
    pdfView3 = [(BKPDFModernBookViewController *)self pdfView];
    [documentView convertRect:pdfView3 fromView:{v19, v21 + (v16 - v25) * -0.5, v23, v16}];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;

    pdfView4 = [(BKPDFModernBookViewController *)self pdfView];
    documentView2 = [pdfView4 documentView];
    [documentView2 bounds];
    v40 = v39 - v32;

    [(BKPDFModernBookViewController *)self _scrollToRect:v6 inPageAtIndex:v30, v40, v34, v36];
  }

  else
  {
    [(BKPDFModernBookViewController *)self scrollToPageNumber:[BKPDFModernBookViewController animate:"pageNumberForPageIndex:" pageNumberForPageIndex:v6], animatedCopy];
  }
}

- (int64_t)pageNumberForLocation:(id)location
{
  v3 = [(BKPDFModernBookViewController *)self pageIndexForLocation:location];

  return [BKPDFModernBookViewController pageNumberForPageIndex:v3];
}

- (unint64_t)pageIndexForLocation:(id)location
{
  locationCopy = location;
  objc_opt_class();
  v4 = BUDynamicCast();

  pageOffset = [v4 pageOffset];
  return pageOffset;
}

- (_NSRange)currentPages
{
  currentPageIndex = [(BKPDFModernBookViewController *)self currentPageIndex];
  pageCountIncludingUpsell = [(BKPDFModernBookViewController *)self pageCountIncludingUpsell];
  if (currentPageIndex >= pageCountIncludingUpsell - 1)
  {
    v5 = pageCountIncludingUpsell - 1;
  }

  else
  {
    v5 = currentPageIndex;
  }

  v6 = 1;
  result.length = v6;
  result.location = v5;
  return result;
}

- (id)_currentReadingProgress
{
  pageCountIncludingUpsell = [(BKPDFModernBookViewController *)self pageCountIncludingUpsell];
  if (pageCountIncludingUpsell == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v5 = pageCountIncludingUpsell;
    if (pageCountIncludingUpsell < 1)
    {
      v4 = &off_1F18C0;
    }

    else
    {
      currentPages = [(BKPDFModernBookViewController *)self currentPages];
      v4 = 0;
      if (currentPages != 0x7FFFFFFFFFFFFFFFLL && v6)
      {
        *&v8 = (currentPages + v6) / v5;
        v4 = [NSNumber numberWithFloat:v8];
      }
    }
  }

  return v4;
}

- (BOOL)isLocationOnCurrentPage:(id)page
{
  pageCopy = page;
  if (pageCopy && (![pageCopy isMemberOfClass:objc_opt_class()] || -[BKThumbnailBookViewController canOrdinalOnlyLocationsBeVisible](self, "canOrdinalOnlyLocationsBeVisible")) && (v5 = -[BKPDFModernBookViewController pageIndexForLocation:](self, "pageIndexForLocation:", pageCopy), v5 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v7 = v5;
    currentPages = [(BKPDFModernBookViewController *)self currentPages];
    v6 = v7 >= currentPages && v7 - currentPages < v9;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)turnPageInDirection:(int64_t)direction
{
  currentPageIndex = [(BKPDFModernBookViewController *)self currentPageIndex];
  v6 = [BKPDFModernBookViewController pageNumberForPageIndex:currentPageIndex];
  if (direction == 1)
  {
    v7 = -1;
  }

  else
  {
    if (direction)
    {
      return 0;
    }

    v7 = 1;
  }

  v8 = [BKPDFModernBookViewController pageNumberForPageIndex:currentPageIndex + v7];
  if (v8 != v6)
  {
    v9 = v8;
    pageCountIncludingUpsell = [(BKPDFModernBookViewController *)self pageCountIncludingUpsell];
    if (v9 >= 1 && v9 <= pageCountIncludingUpsell)
    {
      v12 = 1;
      [(BKPDFModernBookViewController *)self setIgnoreKeyboardInteraction:1];
      [(BKPDFModernBookViewController *)self scrollToPageNumber:v9 animate:+[UIView areAnimationsEnabled]];
      return v12;
    }
  }

  return 0;
}

- (void)books_pageRight:(id)right
{
  rightCopy = right;
  if ([(BKPDFModernBookViewController *)self isPageProgressionRTL])
  {
    [(BKPDFModernBookViewController *)self books_pageBackward:rightCopy];
  }

  else
  {
    [(BKPDFModernBookViewController *)self books_pageForward:rightCopy];
  }
}

- (void)books_pageLeft:(id)left
{
  leftCopy = left;
  if ([(BKPDFModernBookViewController *)self isPageProgressionRTL])
  {
    [(BKPDFModernBookViewController *)self books_pageForward:leftCopy];
  }

  else
  {
    [(BKPDFModernBookViewController *)self books_pageBackward:leftCopy];
  }
}

- (void)books_pageForward:(id)forward
{
  if (![(BKPDFModernBookViewController *)self assetEditingEnabled]&& ![(BKPDFModernBookViewController *)self ignoreKeyboardInteraction])
  {

    [(BKPDFModernBookViewController *)self turnPageInDirection:0];
  }
}

- (void)books_pageBackward:(id)backward
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
    bookmarkedPages = [(PDFDocument *)self->_pdfDocument bookmarkedPages];
    v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [bookmarkedPages count]);
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
  pdfView = [(BKPDFModernBookViewController *)self pdfView];
  currentPage = [pdfView currentPage];

  if (currentPage)
  {
    isBookmarked = [currentPage isBookmarked];
  }

  else
  {
    isBookmarked = 0;
  }

  return isBookmarked;
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

- (void)updateBookmarkButton:(BOOL)button
{
  pdfDocument = [(BKPDFModernBookViewController *)self pdfDocument];
  allowsDocumentAssembly = [pdfDocument allowsDocumentAssembly];

  isPageBookmarked = [(BKPDFModernBookViewController *)self isPageBookmarked];
  v7 = @"bookmark";
  if (isPageBookmarked)
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

  [(UIButton *)self->super._bookmarkButton setEnabled:allowsDocumentAssembly];
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

- (void)toggleBookmark:(id)bookmark
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
  pdfView = [(BKPDFModernBookViewController *)self pdfView];
  currentSelection = [pdfView currentSelection];
  string = [currentSelection string];
  v5 = [string length] != 0;

  return v5;
}

- (void)copy:(id)copy
{
  pdfView = [(BKPDFModernBookViewController *)self pdfView];
  currentSelection = [pdfView currentSelection];

  string = [currentSelection string];
  if ([string length])
  {
    identifier = [UTTypeUTF8PlainText identifier];
    v24 = identifier;
    v25 = string;
    v7 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];

    attributedString = [currentSelection attributedString];
    v9 = attributedString;
    if (attributedString)
    {
      v10 = [attributedString length];
      v22 = NSDocumentTypeDocumentAttribute;
      v23 = NSRTFTextDocumentType;
      v11 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v12 = [v9 dataFromRange:0 documentAttributes:v10 error:{v11, 0}];

      identifier2 = [UTTypeRTF identifier];
      v19 = identifier2;
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
      identifier2 = +[UIPasteboard generalPasteboard];
      [identifier2 setItems:v12];
    }
  }
}

- (void)scrubValueChanged:(id)changed
{
  changedCopy = changed;
  v11.receiver = self;
  v11.super_class = BKPDFModernBookViewController;
  [(BKThumbnailBookViewController *)&v11 scrubValueChanged:changedCopy];
  objc_initWeak(&location, self);
  v5 = dispatch_time(0, 100000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_EFB18;
  block[3] = &unk_1E36F8;
  objc_copyWeak(&v9, &location);
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_after(v5, &_dispatch_main_q, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)scrub:(id)scrub isScrubbing:(BOOL)scrubbing
{
  scrubbingCopy = scrubbing;
  scrubCopy = scrub;
  objc_opt_class();
  v9 = BUDynamicCast();

  v7 = v9;
  if (v9)
  {
    pageNumber = [v9 pageNumber];
    [(BKPDFModernBookViewController *)self setScrubbing:scrubbingCopy];
    [(BKPDFModernBookViewController *)self turnToPageNumber:pageNumber animated:0];
    [(BKPDFModernBookViewController *)self setScrubbing:0];
    v7 = v9;
    if (!scrubbingCopy)
    {
      [(BKBookViewController *)self emitScrubEventStartPosition:[(BKBookViewController *)self pageNumberBeforeScrubbing] endPosition:pageNumber totalLength:[(BKPDFModernBookViewController *)self pageCountIncludingUpsell]];
      v7 = v9;
    }
  }
}

- (void)updateScrubber:(_NSRange)scrubber
{
  length = scrubber.length;
  location = scrubber.location;
  pageCountIncludingUpsell = [(BKPDFModernBookViewController *)self pageCountIncludingUpsell];
  if (pageCountIncludingUpsell)
  {
    v7 = pageCountIncludingUpsell;
    if (pageCountIncludingUpsell != 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(BKBookViewController *)self controlsVisible])
      {
        scrubber = [(BKThumbnailBookViewController *)self scrubber];
        [scrubber setPageCount:v7];

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

        scrubber2 = [(BKThumbnailBookViewController *)self scrubber];
        [scrubber2 setPageNumber:v11];

        scrubber3 = [(BKThumbnailBookViewController *)self scrubber];
        [scrubber3 setProgress:1.0];
      }
    }
  }
}

- (id)imageCache
{
  if (!self->super._imageCache)
  {
    book = [(BKBookViewController *)self book];

    if (book)
    {
      pdfDocument = [(BKPDFModernBookViewController *)self pdfDocument];
      isLocked = [pdfDocument isLocked];

      if (isLocked)
      {
        v6 = 7340032;
      }

      else
      {
        v6 = 0x100000;
      }

      v7 = [AEPdfRenderingCache alloc];
      book2 = [(BKBookViewController *)self book];
      databaseKey = [book2 databaseKey];
      v10 = [(AEPdfRenderingCache *)v7 initWithIdentifier:databaseKey memorySize:v6];

      objc_storeStrong(&self->super._imageCache, v10);
      +[BKThumbnailDirectory defaultCellSize];
      [(IMThumbnailRenderingCache *)self->super._imageCache setPrimaryImageSize:?];
      persistentCachePath = [(AEPdfRenderingCache *)v10 persistentCachePath];
      book3 = [(BKBookViewController *)self book];
      persistentCachePath2 = [book3 persistentCachePath];
      v14 = [persistentCachePath isEqualToString:persistentCachePath2];

      if ((v14 & 1) == 0)
      {
        book4 = [(BKBookViewController *)self book];
        [book4 resetPersistentCache];

        book5 = [(BKBookViewController *)self book];
        persistentCachePath3 = [(AEPdfRenderingCache *)v10 persistentCachePath];
        [book5 setPersistentCachePath:persistentCachePath3];

        [(NSManagedObjectContext *)self->super.super._bookMoc save:0];
      }
    }
  }

  imageCache = self->super._imageCache;

  return imageCache;
}

+ (int64_t)pageNumberForPageIndex:(unint64_t)index
{
  if (index == -1)
  {
    return 1;
  }

  else
  {
    return index + 1;
  }
}

+ (unint64_t)pageIndexForPageNumber:(int64_t)number
{
  if (number <= 0)
  {
    return 0;
  }

  else
  {
    return number - 1;
  }
}

- (void)endScroll:(id)scroll
{
  [(BKPDFModernBookViewController *)self setScrolling:0];

  [(BKPDFModernBookViewController *)self updateContentScale];
}

- (void)visiblePageDidChange:(id)change
{
  pdfView = [(BKPDFModernBookViewController *)self pdfView];
  currentPage = [pdfView currentPage];

  pdfDocument = [(BKPDFModernBookViewController *)self pdfDocument];
  v7 = [pdfDocument indexForPage:currentPage];

  v8 = BKModernPDFLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_139118(v7, currentPage);
  }

  v9 = [BKPDFModernBookViewController pageNumberForPageIndex:v7];
  scrubber = [(BKThumbnailBookViewController *)self scrubber];
  [scrubber setPageNumber:v9];

  pageCountIncludingUpsell = [(BKPDFModernBookViewController *)self pageCountIncludingUpsell];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = pageCountIncludingUpsell;
    if (pageCountIncludingUpsell != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(BKPDFModernBookViewController *)self currentPages];
      [(BKThumbnailBookViewController *)self setPageNumberHudTextLabelForValidatedPageNumber:v9 visiblePageCount:v13 validatedPageCount:v12];
      [(BKBookViewController *)self setUserNavigated:1];
    }
  }

  [(BKPDFModernBookViewController *)self updateBookmarkButton:1];
  [(BKPDFModernBookViewController *)self updateProgressKitForNewLocation];
}

- (void)scrollerViewPageDidChange:(id)change
{
  pdfView = [(BKPDFModernBookViewController *)self pdfView];
  currentPage = [pdfView currentPage];

  pdfDocument = [(BKPDFModernBookViewController *)self pdfDocument];
  v6 = [pdfDocument indexForPage:currentPage];

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

- (void)annotationsDidChange:(id)change
{
  changeCopy = change;
  objc_opt_class();
  userInfo = [changeCopy userInfo];

  v6 = BUDynamicCast();

  objc_opt_class();
  v7 = [v6 objectForKeyedSubscript:@"page"];
  v8 = BUDynamicCast();

  if (v8)
  {
    pdfDocument = [(BKPDFModernBookViewController *)self pdfDocument];
    v10 = [pdfDocument indexForPage:v8];

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

- (id)menuItems:(id)items forPage:(id)page
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
  pdfView = [(BKPDFModernBookViewController *)self pdfView];
  [pdfView safeAreaInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  topToolbar = [(BKThumbnailBookViewController *)self topToolbar];
  [topToolbar alpha];
  if (v13 > 0.0)
  {
    [topToolbar frame];
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

- (void)searchPDFUsingSelection:(id)selection
{
  selectionCopy = selection;
  pdfView = [(BKPDFModernBookViewController *)self pdfView];
  currentSelection = [pdfView currentSelection];

  string = [currentSelection string];
  pdfView2 = [(BKPDFModernBookViewController *)self pdfView];
  [pdfView2 clearSelection];

  [(BKBookViewController *)self showSearchWithString:string sender:selectionCopy];
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
  pdfScrollView = [(BKPDFModernBookViewController *)self pdfScrollView];
  view = [(BKPDFModernBookViewController *)self view];
  [view safeAreaInsets];
  v5 = v4;
  view2 = [(BKPDFModernBookViewController *)self view];
  [view2 safeAreaInsets];
  [pdfScrollView setContentInset:{v5, 0.0}];
}

- (id)_uniqueIDForOutline:(id)outline
{
  outlineCopy = outline;
  if (outlineCopy)
  {
    v4 = outlineCopy;
    v5 = &stru_1E7188;
    do
    {
      v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld/%@", [v4 index], v5);

      parent = [v4 parent];

      v5 = v6;
      v4 = parent;
    }

    while (parent);
  }

  else
  {
    v6 = &stru_1E7188;
  }

  return v6;
}

- (void)buildContextTree:(id)tree
{
  v4 = objc_opt_new();
  pdfDocument = [(BKPDFModernBookViewController *)self pdfDocument];
  outlineRoot = [pdfDocument outlineRoot];

  if ([outlineRoot numberOfChildren])
  {
    v7 = 0;
    v24 = BCProgressContextTreeKey_uniqueID;
    v23 = BCProgressContextTreeKey_title;
    v22 = BCProgressContextTreeKey_displayOrder;
    v21 = BCProgressContextTreeKey_cfi;
    do
    {
      v8 = [outlineRoot childAtIndex:v7];
      label = [v8 label];
      v10 = label;
      v11 = &stru_1E7188;
      if (label)
      {
        v11 = label;
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

    while (v7 < [outlineRoot numberOfChildren]);
  }

  if ([v4 count])
  {
    v18 = +[BCProgressKitController sharedController];
    book = [(BKBookViewController *)self book];
    assetID = [book assetID];
    [v18 buildContextTree:v4 forBook:assetID completion:0];
  }
}

- (void)updateProgressKitForNewLocation
{
  currentPageIndex = [(BKPDFModernBookViewController *)self currentPageIndex];
  pdfDocument = [(BKPDFModernBookViewController *)self pdfDocument];
  outlineRoot = [pdfDocument outlineRoot];

  numberOfChildren = [outlineRoot numberOfChildren];
  v6 = numberOfChildren - 1;
  if (numberOfChildren >= 1)
  {
    v7 = numberOfChildren;
    v8 = 0;
    v9 = -1;
    do
    {
      v10 = [outlineRoot childAtIndex:v8];
      v11 = [(BKPDFModernBookViewController *)self _pageIndexForOutline:v10];

      if (v11 > currentPageIndex)
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
    v13 = [outlineRoot childAtIndex:v9];
    if (v9 >= v6)
    {
      v14 = 0;
    }

    else
    {
      v14 = [outlineRoot childAtIndex:v9 + 1];
    }

    v25 = [(BKPDFModernBookViewController *)self _uniqueIDForOutline:v13];
    v15 = [(BKPDFModernBookViewController *)self _pageIndexForOutline:v13];
    if (v14)
    {
      pageCount = [(BKPDFModernBookViewController *)self _pageIndexForOutline:v14];
    }

    else
    {
      pdfDocument2 = [(BKPDFModernBookViewController *)self pdfDocument];
      pageCount = [pdfDocument2 pageCount];
    }

    v18 = +[BCProgressKitController sharedController];
    book = [(BKBookViewController *)self book];
    assetID = [book assetID];
    label = [v13 label];
    [v18 activateChapterForBook:assetID chapterID:v25 title:label currentPage:currentPageIndex chapterRange:v15 completion:{&pageCount[-v15], 0}];
  }

LABEL_20:
  v22 = +[BCProgressKitController sharedController];
  book2 = [(BKBookViewController *)self book];
  assetID2 = [book2 assetID];
  [v22 updateBookProgress:assetID2 currentPage:-[BKPDFModernBookViewController currentPageIndex](self completion:{"currentPageIndex"), 0}];
}

- (unint64_t)_pageIndexForOutline:(id)outline
{
  destination = [outline destination];
  page = [destination page];
  pdfDocument = [(BKPDFModernBookViewController *)self pdfDocument];
  v7 = [pdfDocument indexForPage:page];

  return v7;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  if (self->_controlsTapRecognizer != begin)
  {
    return 0;
  }

  pdfView = [(BKPDFModernBookViewController *)self pdfView];
  currentSelection = [pdfView currentSelection];
  v3 = currentSelection == 0;

  return v3;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  if (self->_controlsTapRecognizer == recognizer && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    name = [gestureRecognizerCopy name];
    v8 = [name isEqualToString:@"UITextInteractionNameSingleTap"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end