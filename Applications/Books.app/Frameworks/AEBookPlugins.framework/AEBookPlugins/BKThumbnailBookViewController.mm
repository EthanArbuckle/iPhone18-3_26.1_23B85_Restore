@interface BKThumbnailBookViewController
+ (BOOL)verticalScrollFeatureEnabled;
- (BKPreferredLayoutCache)preferredLayoutCache;
- (BKThumbnailBookViewConfiguration)configuration;
- (BKThumbnailBookViewController)initWithBook:(id)book storeID:(id)d;
- (BKThumbnailScrubber)verticalScrubber;
- (BOOL)_isShowingUpsellPage;
- (BOOL)_isUsingContent:(id)content;
- (BOOL)_shouldNavBarShowTitle;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canShowBookmarks;
- (BOOL)canShowControlsDuringOpenClose;
- (BOOL)canShowTableOfContents;
- (BOOL)canShowThumbnails;
- (BOOL)directoryTOCIsVisible;
- (BOOL)hasHighlightedText;
- (BOOL)isAnnotationVisible:(id)visible;
- (BOOL)isInterfaceRTL;
- (BOOL)isLocationOnCurrentPage:(id)page;
- (BOOL)isScrolledContinuousFixedLayout;
- (BOOL)shouldDisplayBuyButton;
- (BOOL)shouldDisplayContentsButton;
- (BOOL)shouldShowBrightnessControl;
- (BOOL)shouldShowHUDs;
- (BOOL)supportsScrollLayout;
- (BOOL)turnPages:(int64_t)pages animated:(BOOL)animated;
- (CGRect)_containerBoundsForGeometry;
- (NSArray)configurations;
- (NSDictionary)directoryTypeToSegmentIndex;
- (NSDictionary)segmentIndexToDirectoryType;
- (UIEdgeInsets)edgeInsetsForContentViewController:(id)controller;
- (_NSRange)currentPages;
- (double)_infoHUDHeight;
- (id)_audioBarButtonItem;
- (id)_bk_backgroundColor;
- (id)_bookmarkBarButtonItem;
- (id)_bookmarkButton;
- (id)_bookmarkDirectory;
- (id)_brightnessBarButtonItem;
- (id)_buyBarButtonItem;
- (id)_directoryController;
- (id)_directoryForType:(unint64_t)type;
- (id)_directorySwitchBarButtonItem;
- (id)_editToolboxBarButtonItem;
- (id)_fontBarButtonItem;
- (id)_libraryBarButtonItem;
- (id)_pageDirectory;
- (id)_pdfBookmarkDirectory;
- (id)_pdfOutlineDirectory;
- (id)_pdfPageDirectory;
- (id)_resumeBarButtonItem;
- (id)_searchBarButtonItem;
- (id)_tocBarButtonItem;
- (id)_tocDirectory;
- (id)analyticsReadingSettingsData;
- (id)appearanceMenuItems;
- (id)bookContentView;
- (id)bookContentViewControllerView;
- (id)bookToolbarTitle;
- (id)bookmarkToolTip;
- (id)buttonTitleColor;
- (id)contentViewControllerForPageNumber:(int64_t)number;
- (id)currentPageLocation;
- (id)directoryTOCViewControllerView;
- (id)editRedoBarButtonItem;
- (id)editUndoBarButtonItem;
- (id)existingContentViewControllerForPageNumber:(int64_t)number;
- (id)fontButton;
- (id)newGlassButton;
- (id)scrubber;
- (id)scrubberBarButtonItem;
- (id)snapshotView:(id)view;
- (id)thumbnailDirectory:(id)directory thumbnailForPage:(int64_t)page size:(CGSize)size context:(id)context;
- (id)thumbnailScrubber:(id)scrubber thumbnailForPage:(int64_t)page size:(CGSize)size context:(id)context;
- (id)tocToolTip;
- (id)transitionContentBackgroundColor;
- (id)transitionContentView;
- (id)visibleContentViewController;
- (int64_t)bookToolbarMode;
- (int64_t)directoryContent:(id)content pageNumberForLocation:(id)location;
- (int64_t)positionForBar:(id)bar;
- (int64_t)segmentIndexForDirectoryType:(unint64_t)type;
- (unint64_t)defaultDirectoryType;
- (unint64_t)directoryType;
- (unint64_t)directoryTypeForSegmentIndex:(int64_t)index;
- (unint64_t)validLayoutForBook:(id)book desiredLayout:(unint64_t)layout;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)_update;
- (void)_updateDirectorySwitch;
- (void)_updateLibraryBarButtonItem;
- (void)_updatePageNumberHUDVisible:(BOOL)visible;
- (void)_updateToolbarPositionAndBackgroundExtension;
- (void)_zoomInAnimationDidStop:(id)stop;
- (void)_zoomOutAnimationDidStop:(id)stop;
- (void)appearanceViewController:(id)controller didChangeLayout:(unint64_t)layout;
- (void)assetViewControllerDidEndLiveResize;
- (void)assetViewControllerDidEnterFullScreen;
- (void)assetViewControllerDidExitFullScreen;
- (void)assetViewControllerDidFinishUpdateForLiveResize;
- (void)assetViewControllerUpdateToolbars;
- (void)assetViewControllerWillBeginLiveResize;
- (void)bookContentViewImage:(id)image;
- (void)books_decreaseZoom:(id)zoom;
- (void)books_disableContinuousScroll:(id)scroll;
- (void)books_enableContinuousScroll:(id)scroll;
- (void)books_increaseZoom:(id)zoom;
- (void)books_resetZoom:(id)zoom;
- (void)books_showBookmarks:(id)bookmarks;
- (void)books_showTableOfContents:(id)contents;
- (void)books_showThumbnails:(id)thumbnails;
- (void)books_toggleContinuousScroll:(id)scroll;
- (void)books_togglePlaying:(id)playing;
- (void)buildHoverControlRegionWithBuilder:(id)builder;
- (void)close:(BOOL)close;
- (void)contentSizeCategoryDidChange;
- (void)contentViewReady:(id)ready;
- (void)dealloc;
- (void)didChangeLocationClosing:(BOOL)closing suspending:(BOOL)suspending;
- (void)directoryContent:(id)content didSelectLocation:(id)location;
- (void)directorySwitchPressed:(id)pressed;
- (void)handleEditRedo:(id)redo;
- (void)handleEditUndo:(id)undo;
- (void)handleEditUndoAll:(id)all;
- (void)highlightSearchResult:(id)result;
- (void)jumpToLocation:(id)location animated:(BOOL)animated completion:(id)completion;
- (void)makeContentVisible;
- (void)makeTOCVisible;
- (void)pageCountDidUpdate;
- (void)pageNavigationDidChangeLocation:(id)location;
- (void)pageNavigationDidRemoveContentForPageNumber:(int64_t)number;
- (void)pageNavigationDidRemoveContentViewController:(id)controller;
- (void)releaseViews;
- (void)renderingCacheCallbackImage:(id)image context:(id)context pageNumber:(int64_t)number;
- (void)resume:(id)resume;
- (void)scrubValueChanged:(id)changed;
- (void)setControlsVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion;
- (void)setDirectoryType:(unint64_t)type;
- (void)setLayout:(unint64_t)layout;
- (void)setPageNumberHudTextLabelForValidatedPageNumber:(int64_t)number visiblePageCount:(unint64_t)count validatedPageCount:(unint64_t)pageCount;
- (void)setSection:(int)section animated:(BOOL)animated adjustScrollToReveal:(BOOL)reveal;
- (void)setTopToolBarVisible:(BOOL)visible;
- (void)showBookmarksFromToolbar:(id)toolbar;
- (void)showFontPicker:(id)picker;
- (void)showLibrary:(id)library;
- (void)showOverlayViewController:(id)controller fromView:(id)view popoverOnPhone:(BOOL)phone passthroughViews:(id)views;
- (void)showTOC:(id)c;
- (void)showTOCFromToolbar:(id)toolbar;
- (void)showThumbnailTOCFromToolbar:(id)toolbar;
- (void)storeChangedNotification:(id)notification;
- (void)thumbnailDirectory:(id)directory cancelPreviousRenderRequestsWithContext:(id)context;
- (void)thumbnailScrubber:(id)scrubber cancelPreviousRenderRequestsWithContext:(id)context;
- (void)tocViewController:(id)controller didSelectChapter:(id)chapter;
- (void)toggleControls:(id)controls;
- (void)toggleEditAssetMode:(id)mode;
- (void)turnToPageNumber:(int64_t)number animated:(BOOL)animated;
- (void)updateBookmarkButton:(BOOL)button;
- (void)updateBottomToolbar:(BOOL)toolbar;
- (void)updateHUDVisibilityAnimated:(BOOL)animated;
- (void)updateScrubber:(_NSRange)scrubber;
- (void)updateTopToolbar:(BOOL)toolbar;
- (void)validateCommand:(id)command;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BKThumbnailBookViewController

- (BKThumbnailBookViewController)initWithBook:(id)book storeID:(id)d
{
  v8.receiver = self;
  v8.super_class = BKThumbnailBookViewController;
  v4 = [(BKBookViewController *)&v8 initWithBook:book storeID:d];
  if (v4)
  {
    v5 = +[UITraitCollection bc_allAPITraits];
    v6 = [(BKThumbnailBookViewController *)v4 registerForTraitChanges:v5 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v4;
}

- (void)releaseViews
{
  backgroundView = self->_backgroundView;
  self->_backgroundView = 0;

  topToolbar = self->_topToolbar;
  self->_topToolbar = 0;

  pageNumberHUDHeightConstraint = self->_pageNumberHUDHeightConstraint;
  self->_pageNumberHUDHeightConstraint = 0;

  pageNumberHUDTopConstraint = self->_pageNumberHUDTopConstraint;
  self->_pageNumberHUDTopConstraint = 0;

  pageNumberHUD = self->_pageNumberHUD;
  self->_pageNumberHUD = 0;

  libraryBarButtonItem = self->_libraryBarButtonItem;
  self->_libraryBarButtonItem = 0;

  resumeBarButtonItem = self->_resumeBarButtonItem;
  self->_resumeBarButtonItem = 0;

  searchBarButtonItem = self->_searchBarButtonItem;
  self->_searchBarButtonItem = 0;

  tocBarButtonItem = self->_tocBarButtonItem;
  self->_tocBarButtonItem = 0;

  brightnessBarButtonItem = self->_brightnessBarButtonItem;
  self->_brightnessBarButtonItem = 0;

  editToolboxBarButtonItem = self->_editToolboxBarButtonItem;
  self->_editToolboxBarButtonItem = 0;

  editUndoBarButtonItem = self->_editUndoBarButtonItem;
  self->_editUndoBarButtonItem = 0;

  editRedoBarButtonItem = self->_editRedoBarButtonItem;
  self->_editRedoBarButtonItem = 0;

  audioBarButtonItem = self->_audioBarButtonItem;
  self->_audioBarButtonItem = 0;

  [(UISegmentedControl *)self->_directorySwitch removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  directorySwitch = self->_directorySwitch;
  self->_directorySwitch = 0;

  directorySwitchBarButtonItem = self->_directorySwitchBarButtonItem;
  self->_directorySwitchBarButtonItem = 0;

  bookmarkButton = self->_bookmarkButton;
  self->_bookmarkButton = 0;

  bookmarkBarButtonItem = self->_bookmarkBarButtonItem;
  self->_bookmarkBarButtonItem = 0;

  [(BKThumbnailScrubber *)self->_scrubber setDelegate:0];
  [(BKThumbnailScrubber *)self->_scrubber removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  scrubber = self->_scrubber;
  self->_scrubber = 0;

  [(BKThumbnailScrubber *)self->_verticalScrubber setDelegate:0];
  [(BKThumbnailScrubber *)self->_verticalScrubber removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  verticalScrubber = self->_verticalScrubber;
  self->_verticalScrubber = 0;

  v23.receiver = self;
  v23.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v23 releaseViews];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(BKThumbnailBookViewController *)self releaseViews];
  [(BKDirectoryContent *)self->_pageDirectory setDirectoryDelegate:0];
  [(BKTOCViewController *)self->_tocDirectory setDirectoryDelegate:0];
  [(BKDirectoryContent *)self->_bookmarkDirectory setDirectoryDelegate:0];
  [(BKDirectoryContent *)self->_pdfPageDirectory setDirectoryDelegate:0];
  [(BKTOCViewController *)self->_pdfOutlineDirectory setDirectoryDelegate:0];
  [(BKDirectoryContent *)self->_pdfBookmarkDirectory setDirectoryDelegate:0];
  [(IMThumbnailRenderingCache *)self->_imageCache cancelRenderingCacheOperationsForTarget:self];
  [(BKThumbnailBookViewController *)self bc_setBookAppEntityVisible:0];
  v4.receiver = self;
  v4.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v80.receiver = self;
  v80.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v80 viewDidLoad];
  view = [(BKThumbnailBookViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [[UIView alloc] initWithFrame:{v5, v7, v9, v11}];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v12;

  [(UIView *)self->_backgroundView setAutoresizingMask:18];
  [(UIView *)self->_backgroundView setOpaque:1];
  view2 = [(BKThumbnailBookViewController *)self view];
  [view2 insertSubview:self->_backgroundView atIndex:0];

  v15 = [BCNavigationBar alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v19 = [v15 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  topToolbar = self->_topToolbar;
  self->_topToolbar = v19;

  [(BCNavigationBar *)self->_topToolbar setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BCNavigationBar *)self->_topToolbar setAlpha:0.0];
  [(BCNavigationBar *)self->_topToolbar setDelegate:self];
  v21 = self->_topToolbar;
  theme = [(BKThumbnailBookViewController *)self theme];
  headerTextColor = [theme headerTextColor];
  v24 = [NSDictionary dictionaryWithObject:headerTextColor forKey:NSForegroundColorAttributeName];
  [(BCNavigationBar *)v21 setTitleTextAttributes:v24];

  v78 = objc_alloc_init(_UIScrollPocketCollectorInteraction);
  v79 = [[_UIScrollPocketContainerInteraction alloc] initWithScrollView:0 edge:1];
  [v79 _setCollectorInteraction:v78];
  topToolbar = [(BKThumbnailBookViewController *)self topToolbar];
  [topToolbar addInteraction:v79];

  view3 = [(BKThumbnailBookViewController *)self view];
  [view3 addInteraction:v78];

  theme2 = [(BKThumbnailBookViewController *)self theme];
  [theme2 stylizeBCNavigationBarTranslucent:self->_topToolbar];

  view4 = [(BKThumbnailBookViewController *)self view];
  [view4 addSubview:self->_topToolbar];

  leadingAnchor = [(BCNavigationBar *)self->_topToolbar leadingAnchor];
  view5 = [(BKThumbnailBookViewController *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v74 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v82[0] = v74;
  trailingAnchor = [(BCNavigationBar *)self->_topToolbar trailingAnchor];
  view6 = [(BKThumbnailBookViewController *)self view];
  trailingAnchor2 = [view6 trailingAnchor];
  v32 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v82[1] = v32;
  topAnchor = [(BCNavigationBar *)self->_topToolbar topAnchor];
  view7 = [(BKThumbnailBookViewController *)self view];
  topAnchor2 = [view7 topAnchor];
  v36 = [topAnchor constraintEqualToAnchor:topAnchor2];
  topBarTopConstraint = self->_topBarTopConstraint;
  self->_topBarTopConstraint = v36;

  v82[2] = v36;
  v38 = [NSArray arrayWithObjects:v82 count:3];
  [NSLayoutConstraint activateConstraints:v38];

  [(BKBookViewController *)self setSection:0];
  [(BKThumbnailBookViewController *)self updateTopToolbar:0];
  height = [[BKInfoHUD alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  pageNumberHUD = self->_pageNumberHUD;
  self->_pageNumberHUD = height;

  [(BKInfoHUD *)self->_pageNumberHUD setUsesMonospacedDigitFont:1];
  [(BKInfoHUD *)self->_pageNumberHUD setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BKInfoHUD *)self->_pageNumberHUD setAlpha:0.0];
  [(BKInfoHUD *)self->_pageNumberHUD setUserInteractionEnabled:0];
  view8 = [(BKThumbnailBookViewController *)self view];
  [view8 addSubview:self->_pageNumberHUD];

  trailingAnchor3 = [(BKInfoHUD *)self->_pageNumberHUD trailingAnchor];
  view9 = [(BKThumbnailBookViewController *)self view];
  safeAreaLayoutGuide = [view9 safeAreaLayoutGuide];
  trailingAnchor4 = [safeAreaLayoutGuide trailingAnchor];
  v46 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];

  LODWORD(v47) = 1148846080;
  [v46 setPriority:v47];
  bottomAnchor = [(BCNavigationBar *)self->_topToolbar bottomAnchor];
  topAnchor3 = [(BKInfoHUD *)self->_pageNumberHUD topAnchor];
  v50 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:16.0];
  [(BKThumbnailBookViewController *)self setPageNumberHUDTopConstraint:v50];

  heightAnchor = [(BKInfoHUD *)self->_pageNumberHUD heightAnchor];
  [(BKThumbnailBookViewController *)self _infoHUDHeight];
  v52 = [heightAnchor constraintGreaterThanOrEqualToConstant:?];
  [(BKThumbnailBookViewController *)self setPageNumberHUDHeightConstraint:v52];

  widthAnchor = [(BKInfoHUD *)self->_pageNumberHUD widthAnchor];
  superview = [(BKInfoHUD *)self->_pageNumberHUD superview];
  widthAnchor2 = [superview widthAnchor];
  [(BKThumbnailBookViewController *)self defaultPageNumberHUDWidthConstraintConstant];
  v56 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2 constant:?];
  pageNumberHUDWidthConstraint = self->_pageNumberHUDWidthConstraint;
  self->_pageNumberHUDWidthConstraint = v56;

  pageNumberHUDTopConstraint = [(BKThumbnailBookViewController *)self pageNumberHUDTopConstraint];
  v81[0] = pageNumberHUDTopConstraint;
  pageNumberHUDHeightConstraint = [(BKThumbnailBookViewController *)self pageNumberHUDHeightConstraint];
  v60 = self->_pageNumberHUDWidthConstraint;
  v81[1] = pageNumberHUDHeightConstraint;
  v81[2] = v60;
  v81[3] = v46;
  v61 = [NSArray arrayWithObjects:v81 count:4];
  [NSLayoutConstraint activateConstraints:v61];

  location = [(BKBookViewController *)self location];
  [(BKThumbnailBookViewController *)self setInitialJumpLocation:location];

  pageNavigationViewController = [(BKBookViewController *)self pageNavigationViewController];
  view10 = [pageNavigationViewController view];

  [view10 setFrame:{v5, v7, v9, v11}];
  view11 = [(BKThumbnailBookViewController *)self view];
  [view11 insertSubview:view10 aboveSubview:self->_backgroundView];

  [(BKBookViewController *)self createPaginationControllerIfNeeded:1];
  pageNumberHUD = [(BKThumbnailBookViewController *)self pageNumberHUD];
  [pageNumberHUD setAccessibilityContainerType:4];

  topToolbar2 = [(BKThumbnailBookViewController *)self topToolbar];
  [topToolbar2 _accessibilitySetSortPriority:5000];

  pageNumberHUD2 = [(BKThumbnailBookViewController *)self pageNumberHUD];
  [pageNumberHUD2 _accessibilitySetSortPriority:4000];

  verticalScrubber = [(BKThumbnailBookViewController *)self verticalScrubber];
  [verticalScrubber _accessibilitySetSortPriority:3000];

  scrubber = [(BKThumbnailBookViewController *)self scrubber];
  [scrubber _accessibilitySetSortPriority:2000];

  _bk_backgroundColor = [(BKThumbnailBookViewController *)self _bk_backgroundColor];
  [(UIView *)self->_backgroundView setBackgroundColor:_bk_backgroundColor];

  book = [(BKBookViewController *)self book];
  assetID = [book assetID];
  [(BKThumbnailBookViewController *)self bc_setBookAppEntityVisible:assetID];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v24.receiver = self;
  v24.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v24 viewIsAppearing:?];
  currentPages = [(BKThumbnailBookViewController *)self currentPages];
  [(BKThumbnailBookViewController *)self updateScrubber:currentPages, v6];
  [(BKThumbnailBookViewController *)self updateHUDVisibilityAnimated:appearingCopy];
  presentedViewController = [(BKThumbnailBookViewController *)self presentedViewController];

  if (!presentedViewController)
  {
    [(BKBookViewController *)self setControlsVisible:[(BKThumbnailBookViewController *)self canShowControlsDuringOpenClose]];
    [(BKThumbnailBookViewController *)self setNeedsStatusBarAppearanceUpdate];
  }

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"contentSizeCategoryDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];

  pageNavigationViewController = [(BKBookViewController *)self pageNavigationViewController];
  viewControllers = [pageNavigationViewController viewControllers];

  if (![viewControllers count])
  {
    visibleContentViewController = [(BKThumbnailBookViewController *)self visibleContentViewController];

    if (visibleContentViewController)
    {
      visibleContentViewController2 = [(BKThumbnailBookViewController *)self visibleContentViewController];
      v26 = visibleContentViewController2;
      v13 = [NSArray arrayWithObjects:&v26 count:1];

      viewControllers = v13;
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = viewControllers;
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v20 + 1) + 8 * i);
        if ([v19 isContentLoaded])
        {
          [(BKThumbnailBookViewController *)self contentViewReady:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v16);
  }
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  if (window)
  {
    [(BKThumbnailBookViewController *)self _updateLibraryBarButtonItem:window];

    [(BKThumbnailBookViewController *)self _updateToolbarPositionAndBackgroundExtension];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v6 viewWillDisappear:disappear];
  [(IMThumbnailRenderingCache *)self->_imageCache cancelRenderingCacheOperationsForTarget:self];
  currentLocation = [(BKThumbnailBookViewController *)self currentLocation];
  [(BKBookViewController *)self setLocation:currentLocation];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v12.receiver = self;
  v12.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v12 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];
  inLiveResize = [assetViewControllerDelegate inLiveResize];

  if ((inLiveResize & 1) == 0)
  {
    v10[4] = self;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_FF3E8;
    v11[3] = &unk_1E2A60;
    v11[4] = self;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_FF454;
    v10[3] = &unk_1E2A60;
    [coordinatorCopy animateAlongsideTransition:v11 completion:v10];
  }
}

- (void)contentSizeCategoryDidChange
{
  [(BKThumbnailBookViewController *)self _infoHUDHeight];
  v4 = v3;
  pageNumberHUDHeightConstraint = [(BKThumbnailBookViewController *)self pageNumberHUDHeightConstraint];
  [pageNumberHUDHeightConstraint setConstant:v4];

  pageNumberHUD = self->_pageNumberHUD;

  [(BKInfoHUD *)pageNumberHUD updateLabelFont];
}

- (NSDictionary)segmentIndexToDirectoryType
{
  v14[0] = &off_1F1550;
  v3 = [NSNumber numberWithUnsignedInteger:[(BKThumbnailBookViewController *)self directoryTypeForPageThumbnails]];
  v15[0] = v3;
  v14[1] = &off_1F1568;
  v4 = [NSNumber numberWithUnsignedInteger:[(BKThumbnailBookViewController *)self directoryTypeForTOC]];
  v15[1] = v4;
  v14[2] = &off_1F1580;
  v5 = [NSNumber numberWithUnsignedInteger:[(BKThumbnailBookViewController *)self directoryTypeForBookmarks]];
  v15[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];

  book = [(BKBookViewController *)self book];
  LODWORD(v4) = [book suppressTOC];

  if (v4)
  {
    v12[0] = &off_1F1550;
    v8 = [NSNumber numberWithUnsignedInteger:[(BKThumbnailBookViewController *)self directoryTypeForPageThumbnails]];
    v12[1] = &off_1F1568;
    v13[0] = v8;
    v9 = [NSNumber numberWithUnsignedInteger:[(BKThumbnailBookViewController *)self directoryTypeForBookmarks]];
    v13[1] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

    v6 = v10;
  }

  return v6;
}

- (NSDictionary)directoryTypeToSegmentIndex
{
  v3 = [NSNumber numberWithUnsignedInteger:[(BKThumbnailBookViewController *)self directoryTypeForPageThumbnails]];
  v8[0] = v3;
  v9[0] = &off_1F1550;
  v4 = [NSNumber numberWithUnsignedInteger:[(BKThumbnailBookViewController *)self directoryTypeForTOC]];
  v8[1] = v4;
  v9[1] = &off_1F1568;
  v5 = [NSNumber numberWithUnsignedInteger:[(BKThumbnailBookViewController *)self directoryTypeForBookmarks]];
  v8[2] = v5;
  v9[2] = &off_1F1580;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (int64_t)segmentIndexForDirectoryType:(unint64_t)type
{
  directoryTypeToSegmentIndex = [(BKThumbnailBookViewController *)self directoryTypeToSegmentIndex];
  allKeys = [directoryTypeToSegmentIndex allKeys];
  v6 = [NSNumber numberWithUnsignedInteger:type];
  v7 = [allKeys containsObject:v6];

  if (v7)
  {
    v8 = [NSNumber numberWithUnsignedInteger:type];
    v9 = [directoryTypeToSegmentIndex objectForKeyedSubscript:v8];
    integerValue = [v9 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (unint64_t)directoryTypeForSegmentIndex:(int64_t)index
{
  segmentIndexToDirectoryType = [(BKThumbnailBookViewController *)self segmentIndexToDirectoryType];
  allKeys = [segmentIndexToDirectoryType allKeys];
  v6 = [NSNumber numberWithInteger:index];
  v7 = [allKeys containsObject:v6];

  if (v7)
  {
    v8 = [NSNumber numberWithInteger:index];
    v9 = [segmentIndexToDirectoryType objectForKeyedSubscript:v8];
    unsignedIntegerValue = [v9 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (void)close:(BOOL)close
{
  v5.receiver = self;
  v5.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v5 close:close];
  actionController = [(BKBookViewController *)self actionController];
  [actionController cancelActions];
}

- (void)assetViewControllerUpdateToolbars
{
  v3.receiver = self;
  v3.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v3 assetViewControllerUpdateToolbars];
  [(BKThumbnailBookViewController *)self updateTopToolbar:0];
}

- (void)assetViewControllerWillBeginLiveResize
{
  v5.receiver = self;
  v5.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v5 assetViewControllerWillBeginLiveResize];
  imageCache = [(BKThumbnailBookViewController *)self imageCache];
  [imageCache cancelRenderingCacheOperationsForTarget:self];

  imageCache2 = [(BKThumbnailBookViewController *)self imageCache];
  [imageCache2 suspend];
}

- (void)assetViewControllerDidEndLiveResize
{
  v2.receiver = self;
  v2.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v2 assetViewControllerDidEndLiveResize];
}

- (void)assetViewControllerDidFinishUpdateForLiveResize
{
  imageCache = [(BKThumbnailBookViewController *)self imageCache];
  [imageCache resume];
}

- (void)assetViewControllerDidExitFullScreen
{
  imageCache = [(BKThumbnailBookViewController *)self imageCache];
  [imageCache resume];
}

- (void)assetViewControllerDidEnterFullScreen
{
  imageCache = [(BKThumbnailBookViewController *)self imageCache];
  [imageCache resume];
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  v5 = [(BKThumbnailBookViewController *)self themePage:change];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  directoryController = [(BKThumbnailBookViewController *)self directoryController];
  childViewControllers = [directoryController childViewControllers];
  v8 = [childViewControllers arrayByAddingObject:self];

  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v17 + 1) + 8 * v12) setTheme:v5];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  configuration = [(BKThumbnailBookViewController *)self configuration];
  [configuration invalidate];

  [(BKThumbnailBookViewController *)self _update];
  [v5 stylizeBCNavigationBarTranslucent:self->_topToolbar];
  initialJumpLocation = [(BKThumbnailBookViewController *)self initialJumpLocation];

  if (initialJumpLocation)
  {
    initialJumpLocation2 = [(BKThumbnailBookViewController *)self initialJumpLocation];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_FFDA8;
    v16[3] = &unk_1E2BD0;
    v16[4] = self;
    [(BKThumbnailBookViewController *)self jumpToLocation:initialJumpLocation2 animated:0 completion:v16];
  }
}

- (void)viewWillLayoutSubviews
{
  configuration = [(BKThumbnailBookViewController *)self configuration];
  [configuration invalidate];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = BKThumbnailBookViewController;
  [(BKThumbnailBookViewController *)&v3 viewDidLayoutSubviews];
  [(BKBookViewController *)self rebuildHoverRegions];
}

- (BKThumbnailBookViewConfiguration)configuration
{
  configuration = self->_configuration;
  if (!configuration)
  {
    v4 = [[BKThumbnailBookViewConfiguration alloc] initWithContext:self];
    v5 = self->_configuration;
    self->_configuration = v4;

    configuration = self->_configuration;
  }

  return configuration;
}

- (BKPreferredLayoutCache)preferredLayoutCache
{
  preferredLayoutCache = self->_preferredLayoutCache;
  if (!preferredLayoutCache)
  {
    v4 = objc_alloc_init(BKPreferredLayoutCache);
    v5 = self->_preferredLayoutCache;
    self->_preferredLayoutCache = v4;

    preferredLayoutCache = self->_preferredLayoutCache;
  }

  return preferredLayoutCache;
}

- (NSArray)configurations
{
  configuration = [(BKThumbnailBookViewController *)self configuration];
  v5 = configuration;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (void)setLayout:(unint64_t)layout
{
  v4.receiver = self;
  v4.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v4 setLayout:layout];
  [(BKBookViewController *)self updateToolbarController];
}

- (BOOL)hasHighlightedText
{
  currentPages = [(BKThumbnailBookViewController *)self currentPages];
  if (currentPages >= &currentPages[v4])
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v5 = currentPages;
    v6 = v4;
    v7 = 0;
    do
    {
      v8 = [(BKThumbnailBookViewController *)self contentViewControllerForPageNumber:v5];
      v7 |= [v8 hasHighlightedText];

      ++v5;
      --v6;
    }

    while (v6);
  }

  return v7 & 1;
}

- (void)highlightSearchResult:(id)result
{
  resultCopy = result;
  v11.receiver = self;
  v11.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v11 highlightSearchResult:resultCopy];
  if (resultCopy)
  {
    currentPages = [(BKThumbnailBookViewController *)self currentPages];
    if (currentPages < &currentPages[v6])
    {
      v7 = currentPages;
      v8 = v6;
      do
      {
        v9 = [(BKThumbnailBookViewController *)self contentViewControllerForPageNumber:v7];
        location = [resultCopy location];
        [v9 highlightSearchLocation:location];

        ++v7;
        --v8;
      }

      while (v8);
    }
  }
}

- (id)currentPageLocation
{
  v3 = [(BKPageNavigationViewController *)self->super._pageNavigationViewController pageOffset]+ 1;

  return [(BKBookViewController *)self pageLocationForPageNumber:v3];
}

- (BOOL)canShowControlsDuringOpenClose
{
  if ([(BKBookViewController *)self controlsVisible]|| UIAccessibilityIsVoiceOverRunning())
  {
    return 1;
  }

  return UIAccessibilityIsSwitchControlRunning();
}

- (BOOL)isLocationOnCurrentPage:(id)page
{
  pageCopy = page;
  if (pageCopy && (![pageCopy isMemberOfClass:objc_opt_class()] || -[BKThumbnailBookViewController canOrdinalOnlyLocationsBeVisible](self, "canOrdinalOnlyLocationsBeVisible")) && (-[BKBookViewController paginationController](self, "paginationController"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "pageNumberForDocumentOrdinal:", objc_msgSend(pageCopy, "ordinal")), v5, v6 != 0x7FFFFFFFFFFFFFFFLL))
  {
    currentPages = [(BKThumbnailBookViewController *)self currentPages];
    v7 = v6 >= currentPages && v6 - currentPages < v9;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isAnnotationVisible:(id)visible
{
  visibleCopy = visible;
  location = [visibleCopy location];
  v6 = [(BKThumbnailBookViewController *)self isLocationOnCurrentPage:location];

  v7 = _AEAnnotationLocationLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (v6)
    {
      v8 = @"Visible";
    }

    else
    {
      v8 = @"Not Visible";
    }

    annotationUuid = [visibleCopy annotationUuid];
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = annotationUuid;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "isAnnotationVisible: Annotation is %@ for: %@", &v11, 0x16u);
  }

  return v6;
}

- (BOOL)turnPages:(int64_t)pages animated:(BOOL)animated
{
  animatedCopy = animated;
  pageNavigationViewController = [(BKBookViewController *)self pageNavigationViewController];
  -[BKThumbnailBookViewController turnToPageNumber:animated:](self, "turnToPageNumber:animated:", [pageNavigationViewController pageOffset] + pages + 1, animatedCopy);

  return 1;
}

- (void)turnToPageNumber:(int64_t)number animated:(BOOL)animated
{
  animatedCopy = animated;
  [BKPageNavigationViewController turnToPageNumber:"turnToPageNumber:animated:" animated:?];
  v7.receiver = self;
  v7.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v7 turnToPageNumber:number animated:animatedCopy];
}

- (void)jumpToLocation:(id)location animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  locationCopy = location;
  completionCopy = completion;
  paginationController = [(BKBookViewController *)self paginationController];

  if (paginationController)
  {
    [(BKBookViewController *)self clearSelection];
    paginationController2 = [(BKBookViewController *)self paginationController];
    v11 = [paginationController2 pageNumberForLocation:locationCopy];

    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    [(BKThumbnailBookViewController *)self turnToPageNumber:v12 animated:animatedCopy];
  }

  v13 = objc_retainBlock(completionCopy);
  v14 = v13;
  if (v13)
  {
    (*(v13 + 2))(v13);
  }
}

- (void)pageCountDidUpdate
{
  v5.receiver = self;
  v5.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v5 pageCountDidUpdate];
  [(BKPageNavigationViewController *)self->super._pageNavigationViewController setPageCount:[(BKBookViewController *)self pageCountIncludingUpsell]];
  [(BKPageThumbnailDirectory *)self->_pageDirectory setPageCount:[(BKBookViewController *)self pageCountExcludingUpsell]];
  if ([(BKThumbnailBookViewController *)self isViewLoaded])
  {
    currentPages = [(BKThumbnailBookViewController *)self currentPages];
    [(BKThumbnailBookViewController *)self updateScrubber:currentPages, v4];
    [(BKThumbnailBookViewController *)self updateHUDVisibilityAnimated:0];
    [(BKThumbnailBookViewController *)self updateBookmarkButton:1];
  }
}

- (void)didChangeLocationClosing:(BOOL)closing suspending:(BOOL)suspending
{
  v11.receiver = self;
  v11.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v11 didChangeLocationClosing:closing suspending:suspending];
  _isShowingUpsellPage = [(BKThumbnailBookViewController *)self _isShowingUpsellPage];
  currentLocation = [(BKThumbnailBookViewController *)self currentLocation];
  [(BKBookViewController *)self setLocation:currentLocation];

  _isShowingUpsellPage2 = [(BKThumbnailBookViewController *)self _isShowingUpsellPage];
  [(BKThumbnailBookViewController *)self setInitialJumpLocation:0];
  if (!closing)
  {
    currentPages = [(BKThumbnailBookViewController *)self currentPages];
    [(BKThumbnailBookViewController *)self updateScrubber:currentPages, v10];
    [(BKThumbnailBookViewController *)self updateHUDVisibilityAnimated:0];
    [(BKThumbnailBookViewController *)self updateBookmarkButton:0];
    if (_isShowingUpsellPage != _isShowingUpsellPage2)
    {
      [(BKThumbnailBookViewController *)self updateTopToolbar:1];
    }
  }
}

- (unint64_t)validLayoutForBook:(id)book desiredLayout:(unint64_t)layout
{
  v6.receiver = self;
  v6.super_class = BKThumbnailBookViewController;
  result = [(BKBookViewController *)&v6 validLayoutForBook:book desiredLayout:layout];
  if (result == 2)
  {
    if ([(BKThumbnailBookViewController *)self supportsScrollLayout])
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (int64_t)positionForBar:(id)bar
{
  if (self->_topToolbar == bar)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (void)_update
{
  currentPages = [(BKThumbnailBookViewController *)self currentPages];
  [(BKThumbnailBookViewController *)self updateScrubber:currentPages, v4];
  [(BKThumbnailBookViewController *)self updateTopToolbar:0];
  [(BKThumbnailBookViewController *)self updateBottomToolbar:0];
  [(BKThumbnailBookViewController *)self updateHUDVisibilityAnimated:0];

  [(BKThumbnailBookViewController *)self _updateDirectorySwitch];
}

- (void)updateTopToolbar:(BOOL)toolbar
{
  toolbarCopy = toolbar;
  if ([(BKThumbnailBookViewController *)self isViewLoaded])
  {
    [(BKBookViewController *)self updateToolbarController];
    [(BCNavigationBar *)self->_topToolbar invalidateIntrinsicContentSize];
    v5 = [NSMutableArray arrayWithCapacity:5];
    v6 = [NSMutableArray arrayWithCapacity:7];
    v63 = [NSMutableArray arrayWithCapacity:7];
    if ([(BKBookViewController *)self section])
    {
      v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
      +[BCNavigationBar titlePadding];
      [v7 setWidth:?];
      v8 = +[UIDevice currentDevice];
      userInterfaceIdiom = [v8 userInterfaceIdiom];

      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && ([(BKThumbnailBookViewController *)self im_isCompactWidth]& 1) == 0)
      {
        _directorySwitchBarButtonItem = [(BKThumbnailBookViewController *)self _directorySwitchBarButtonItem];
        if (_directorySwitchBarButtonItem)
        {
          [v5 addObject:_directorySwitchBarButtonItem];
        }

        v10 = v6;

        v13 = toolbarCopy;
        if (v7)
        {
          [v5 addObject:v7];
        }

        v15 = 0;
      }

      else
      {
        v10 = v6;
        actionController = [(BKBookViewController *)self actionController];
        barButtonItem = [actionController barButtonItem];
        if (barButtonItem)
        {
          [v5 addObject:barButtonItem];
        }

        v13 = toolbarCopy;

        _directorySwitchBarButtonItem2 = [(BKThumbnailBookViewController *)self _directorySwitchBarButtonItem];
        v15 = self->_directorySwitch;
      }

      v30 = [UIBarButtonItemGroup alloc];
      _resumeBarButtonItem = [(BKThumbnailBookViewController *)self _resumeBarButtonItem];
      v64 = _resumeBarButtonItem;
      v32 = [NSArray arrayWithObjects:&v64 count:1];
      v33 = [v30 initWithBarButtonItems:v32 representativeItem:0];
      if (v33)
      {
        [v63 addObject:v33];
      }

      [(BKThumbnailBookViewController *)self _updateToolbarPositionAndBackgroundExtension];
      toolbarCopy = v13;
      v6 = v10;
      if (v15)
      {
        [(BCNavigationBar *)self->_topToolbar setLeftItems:v5 rightItems:0 titleView:v15 animated:0];
LABEL_77:
        [(BCNavigationBar *)self->_topToolbar setRightItemGroups:v63];
        [(BKThumbnailBookViewController *)self updateHUDVisibilityAnimated:toolbarCopy];

        return;
      }
    }

    else
    {
      if (self->_libraryBarButtonItem)
      {
        _libraryBarButtonItem = [(BKThumbnailBookViewController *)self _libraryBarButtonItem];
        if (_libraryBarButtonItem)
        {
          [v5 addObject:_libraryBarButtonItem];
        }
      }

      if ([(BKThumbnailBookViewController *)self shouldShowTOCControl])
      {
        _tocBarButtonItem = [(BKThumbnailBookViewController *)self _tocBarButtonItem];
        if (_tocBarButtonItem)
        {
          [v5 addObject:_tocBarButtonItem];
        }
      }

      assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];
      v19 = [assetViewControllerDelegate assetViewControllerMinifiedBarButtonItem:self];
      if (v19)
      {
        [v5 addObject:v19];
      }

      if (![(BKThumbnailBookViewController *)self shouldShowUndoControls]&& ([(BKThumbnailBookViewController *)self im_isCompactWidth]& 1) == 0)
      {
        actionController2 = [(BKBookViewController *)self actionController];
        barButtonItem2 = [actionController2 barButtonItem];
        if (barButtonItem2)
        {
          [v5 addObject:barButtonItem2];
        }
      }

      _buyBarButtonItem = [(BKThumbnailBookViewController *)self _buyBarButtonItem];
      if (_buyBarButtonItem)
      {
        v23 = +[BUBag defaultBag];
        storeFront = [v23 storeFront];
        if ([storeFront isLoaded])
        {
          _isShowingUpsellPage = [(BKThumbnailBookViewController *)self _isShowingUpsellPage];

          if ((_isShowingUpsellPage & 1) == 0)
          {
            [_buyBarButtonItem setSharesBackground:0];
            theme = [(BKThumbnailBookViewController *)self theme];
            v27 = [theme isNight:self];

            assetViewControllerDelegate2 = [(BKBookViewController *)self assetViewControllerDelegate];
            [assetViewControllerDelegate2 assetViewController:self updateBuyButton:_buyBarButtonItem setIsDark:v27];

            [v5 addObject:_buyBarButtonItem];
          }
        }

        else
        {
        }

        _bookmarkBarButtonItem = 0;
      }

      else
      {
        [(BKThumbnailBookViewController *)self updateBookmarkButton:toolbarCopy];
        _bookmarkBarButtonItem = [(BKThumbnailBookViewController *)self _bookmarkBarButtonItem];
      }

      if ([(BKThumbnailBookViewController *)self shouldShowUndoControls])
      {
        v61 = _buyBarButtonItem;
        v35 = _bookmarkBarButtonItem;
        v36 = v6;
        v37 = toolbarCopy;
        v38 = [UIBarButtonItemGroup alloc];
        editUndoBarButtonItem = [(BKThumbnailBookViewController *)self editUndoBarButtonItem];
        v66[0] = editUndoBarButtonItem;
        editRedoBarButtonItem = [(BKThumbnailBookViewController *)self editRedoBarButtonItem];
        v66[1] = editRedoBarButtonItem;
        v41 = [NSArray arrayWithObjects:v66 count:2];
        v42 = [v38 initWithBarButtonItems:v41 representativeItem:0];
        if (v42)
        {
          [v63 addObject:v42];
        }

        [(BKThumbnailBookViewController *)self _evaluateUndoRedoEnabled];
        toolbarCopy = v37;
        v6 = v36;
        _bookmarkBarButtonItem = v35;
        _buyBarButtonItem = v61;
      }

      if ([(BKThumbnailBookViewController *)self shouldShowBookmarkControl]&& _bookmarkBarButtonItem)
      {
        [v6 addObject:_bookmarkBarButtonItem];
      }

      if ((!_buyBarButtonItem || ([(BKThumbnailBookViewController *)self im_isCompactWidth]& 1) == 0) && ![(BKThumbnailBookViewController *)self isScrolledContinuousFixedLayout])
      {
        _searchBarButtonItem = [(BKThumbnailBookViewController *)self _searchBarButtonItem];
        if (_searchBarButtonItem)
        {
          [v6 addObject:_searchBarButtonItem];
        }
      }

      if ([(BKThumbnailBookViewController *)self shouldShowBrightnessControl])
      {
        _brightnessBarButtonItem = [(BKThumbnailBookViewController *)self _brightnessBarButtonItem];
        if (_brightnessBarButtonItem)
        {
          [v6 addObject:_brightnessBarButtonItem];
        }
      }

      if ([(BKThumbnailBookViewController *)self supportsScrollLayout])
      {
        _fontBarButtonItem = [(BKThumbnailBookViewController *)self _fontBarButtonItem];
        if (_fontBarButtonItem)
        {
          [v6 addObject:_fontBarButtonItem];
        }
      }

      if ([(BKThumbnailBookViewController *)self _shouldShowAudioToolbarButton])
      {
        _audioBarButtonItem = [(BKThumbnailBookViewController *)self _audioBarButtonItem];
        if (_audioBarButtonItem)
        {
          [v6 addObject:_audioBarButtonItem];
        }
      }

      if ([(BKThumbnailBookViewController *)self supportsDocumentEditing])
      {
        _editToolboxBarButtonItem = [(BKThumbnailBookViewController *)self _editToolboxBarButtonItem];
        if ([(BKThumbnailBookViewController *)self assetEditingEnabled])
        {
          topToolbar = self->_topToolbar;
          v48 = [UIBarButtonItemGroup alloc];
          v65 = _editToolboxBarButtonItem;
          [NSArray arrayWithObjects:&v65 count:1];
          v49 = _buyBarButtonItem;
          v50 = _bookmarkBarButtonItem;
          v51 = v6;
          v53 = v52 = toolbarCopy;
          v54 = [v48 initWithBarButtonItems:v53 representativeItem:0];
          [(BCNavigationBar *)topToolbar setPinnedTrailingGroup:v54];

          toolbarCopy = v52;
          v6 = v51;
          _bookmarkBarButtonItem = v50;
          _buyBarButtonItem = v49;
        }

        else if (_editToolboxBarButtonItem)
        {
          [v6 addObject:_editToolboxBarButtonItem];
        }
      }

      v55 = [UIBarButtonItemGroup alloc];
      bu_reversedArray = [v6 bu_reversedArray];
      v57 = [v55 initWithBarButtonItems:bu_reversedArray representativeItem:0];
      if (v57)
      {
        [v63 addObject:v57];
      }

      [(BKThumbnailBookViewController *)self _updateToolbarPositionAndBackgroundExtension];
    }

    v58 = self->_topToolbar;
    if ([(BKThumbnailBookViewController *)self _shouldNavBarShowTitle])
    {
      book = [(BKBookViewController *)self book];
      bookTitle = [book bookTitle];
      [(BCNavigationBar *)v58 setLeftItems:v5 rightItems:0 title:bookTitle animated:0];
    }

    else
    {
      [(BCNavigationBar *)v58 setLeftItems:v5 rightItems:0 title:0 animated:0];
    }

    v15 = 0;
    goto LABEL_77;
  }
}

- (BOOL)_shouldNavBarShowTitle
{
  view = [(BKThumbnailBookViewController *)self view];
  [view bounds];
  Width = CGRectGetWidth(v12);
  v5 = kIMConfigurationSize_largePhone[1];

  if (Width < v5)
  {
    return 0;
  }

  if ([(BKBookViewController *)self section]!= 1)
  {
    return 1;
  }

  directoryTOCViewControllerView = [(BKThumbnailBookViewController *)self directoryTOCViewControllerView];
  superview = [directoryTOCViewControllerView superview];
  if (superview)
  {
    directoryTOCViewControllerView2 = [(BKThumbnailBookViewController *)self directoryTOCViewControllerView];
    [directoryTOCViewControllerView2 alpha];
    v6 = v10 > 0.0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)updateBottomToolbar:(BOOL)toolbar
{
  toolbarCopy = toolbar;
  if ([(BKThumbnailBookViewController *)self wantsBottomToolbar]&& ![(BKBookViewController *)self section]&& [(BKBookViewController *)self controlsVisible])
  {
    assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];
    v6 = [assetViewControllerDelegate inLiveResize] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  toolbarItems = [(BKThumbnailBookViewController *)self toolbarItems];
  v8 = [toolbarItems count];

  if (!v8)
  {
    scrubberBarButtonItem = [(BKThumbnailBookViewController *)self scrubberBarButtonItem];
    v21 = scrubberBarButtonItem;
    v10 = [NSArray arrayWithObjects:&v21 count:1];
    [(BKThumbnailBookViewController *)self setToolbarItems:v10];
  }

  if (_os_feature_enabled_impl())
  {
    v11 = objc_opt_new();
    navigationController = [(BKThumbnailBookViewController *)self navigationController];
    toolbar = [navigationController toolbar];
    [toolbar setScrollEdgeAppearance:v11];
  }

  if (toolbarCopy)
  {
    v14 = UINavigationControllerHideShowBarDuration;
  }

  else
  {
    v14 = 0.0;
  }

  navigationController2 = [(BKThumbnailBookViewController *)self navigationController];
  [navigationController2 _setToolbarHidden:v6 ^ 1 edge:15 duration:v14];

  scrubber = [(BKThumbnailBookViewController *)self scrubber];
  v17 = scrubber;
  if ((v6 ^ 1))
  {
    [scrubber cancelPendingRenderRequests];
  }

  else
  {
    layer = [scrubber layer];
    [layer removeAllAnimations];

    currentPages = [(BKThumbnailBookViewController *)self currentPages];
    [(BKThumbnailBookViewController *)self updateScrubber:currentPages, v20];
  }
}

- (id)newGlassButton
{
  v2 = [[BKToolbarButton alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(BKToolbarButton *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BKToolbarButton *)v2 setMultipleTouchEnabled:0];
  [(BKToolbarButton *)v2 setExclusiveTouch:1];
  return v2;
}

- (void)_updateLibraryBarButtonItem
{
  title = [(UIBarButtonItem *)self->_libraryBarButtonItem title];
  if (!title)
  {
    image = [(UIBarButtonItem *)self->_libraryBarButtonItem image];

    if (image)
    {
      title = &stru_1E7188;
    }

    else
    {
      title = 0;
    }
  }

  v10 = title;
  assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];
  v6 = [assetViewControllerDelegate libraryButtonItemForViewController:self selector:"showLibrary:"];
  libraryBarButtonItem = self->_libraryBarButtonItem;
  self->_libraryBarButtonItem = v6;

  assetViewControllerDelegate2 = [(BKBookViewController *)self assetViewControllerDelegate];
  v9 = [assetViewControllerDelegate2 canUpdateLibraryBarButtonItem:self->_libraryBarButtonItem withOldString:v10];

  if (v9)
  {
    [(BKThumbnailBookViewController *)self assetViewControllerUpdateToolbars];
  }
}

- (id)_libraryBarButtonItem
{
  libraryBarButtonItem = self->_libraryBarButtonItem;
  if (!libraryBarButtonItem)
  {
    [(BKThumbnailBookViewController *)self _updateLibraryBarButtonItem];
    libraryBarButtonItem = self->_libraryBarButtonItem;
  }

  return libraryBarButtonItem;
}

- (id)_resumeBarButtonItem
{
  resumeBarButtonItem = self->_resumeBarButtonItem;
  if (!resumeBarButtonItem)
  {
    v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"resume:"];
    v5 = self->_resumeBarButtonItem;
    self->_resumeBarButtonItem = v4;

    resumeBarButtonItem = self->_resumeBarButtonItem;
  }

  return resumeBarButtonItem;
}

- (id)fontButton
{
  brightnessBarButtonItem = self->_brightnessBarButtonItem;
  if (!brightnessBarButtonItem)
  {
    brightnessBarButtonItem = self->_editToolboxBarButtonItem;
  }

  return brightnessBarButtonItem;
}

- (id)_fontBarButtonItem
{
  fontBarButtonItem = self->_fontBarButtonItem;
  if (!fontBarButtonItem)
  {
    v4 = [UIBarButtonItem bc_readingExperienceBarItem:@"textformat.size" target:self action:"showFontPicker:"];
    v5 = self->_fontBarButtonItem;
    self->_fontBarButtonItem = v4;

    [(UIButton *)self->_bookmarkButton frame];
    [(UIBarButtonItem *)self->_fontBarButtonItem setWidth:fmax(CGRectGetWidth(v18), 32.0)];
    objc_initWeak(&location, self);
    v6 = AEBundle();
    v7 = [v6 localizedStringForKey:@"Appearance" value:&stru_1E7188 table:0];
    image = [(UIBarButtonItem *)self->_fontBarButtonItem image];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1016E4;
    v14 = &unk_1E5FA0;
    objc_copyWeak(&v15, &location);
    v9 = [UIAction actionWithTitle:v7 image:image identifier:0 handler:&v11];
    [(UIBarButtonItem *)self->_fontBarButtonItem setMenuRepresentation:v9, v11, v12, v13, v14];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    fontBarButtonItem = self->_fontBarButtonItem;
  }

  return fontBarButtonItem;
}

- (id)_searchBarButtonItem
{
  searchBarButtonItem = self->_searchBarButtonItem;
  if (!searchBarButtonItem)
  {
    v4 = [UIBarButtonItem bc_readingExperienceBarItem:@"magnifyingglass" target:self action:"showSearch:"];
    v5 = self->_searchBarButtonItem;
    self->_searchBarButtonItem = v4;

    objc_initWeak(&location, self);
    v6 = AEBundle();
    v7 = [v6 localizedStringForKey:@"Search" value:&stru_1E7188 table:0];
    image = [(UIBarButtonItem *)self->_searchBarButtonItem image];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1018FC;
    v14 = &unk_1E5FA0;
    objc_copyWeak(&v15, &location);
    v9 = [UIAction actionWithTitle:v7 image:image identifier:0 handler:&v11];
    [(UIBarButtonItem *)self->_searchBarButtonItem setMenuRepresentation:v9, v11, v12, v13, v14];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    searchBarButtonItem = self->_searchBarButtonItem;
  }

  return searchBarButtonItem;
}

- (id)_tocBarButtonItem
{
  tocBarButtonItem = self->_tocBarButtonItem;
  if (!tocBarButtonItem)
  {
    v4 = [UIBarButtonItem bc_readingExperienceBarItem:@"list.bullet" target:self action:"showTOC:"];
    v5 = self->_tocBarButtonItem;
    self->_tocBarButtonItem = v4;

    tocBarButtonItem = self->_tocBarButtonItem;
  }

  return tocBarButtonItem;
}

- (BOOL)shouldShowBrightnessControl
{
  supportsBrightness = [(BKThumbnailBookViewController *)self supportsBrightness];
  if (supportsBrightness)
  {
    LOBYTE(supportsBrightness) = ![(BKThumbnailBookViewController *)self supportsScrollLayout];
  }

  return supportsBrightness;
}

- (BOOL)isScrolledContinuousFixedLayout
{
  book = [(BKBookViewController *)self book];
  fixedLayoutFlow = [book fixedLayoutFlow];
  v4 = [fixedLayoutFlow isEqualToString:@"scrolled-continuous"];

  return v4;
}

- (BOOL)supportsScrollLayout
{
  if (+[BKThumbnailBookViewController verticalScrollFeatureEnabled])
  {
    book = [(BKBookViewController *)self book];
    if ([book hasMediaOverlayElements])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      book2 = [(BKBookViewController *)self book];
      v4 = [book2 isScrollModeDisabled] ^ 1;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)_brightnessBarButtonItem
{
  brightnessBarButtonItem = self->_brightnessBarButtonItem;
  if (!brightnessBarButtonItem)
  {
    v4 = [UIBarButtonItem bc_readingExperienceBarItem:@"sun.max" target:self action:"showBrightness:"];
    v5 = self->_brightnessBarButtonItem;
    self->_brightnessBarButtonItem = v4;

    brightnessBarButtonItem = self->_brightnessBarButtonItem;
  }

  return brightnessBarButtonItem;
}

- (id)_editToolboxBarButtonItem
{
  editToolboxBarButtonItem = self->_editToolboxBarButtonItem;
  if (!editToolboxBarButtonItem)
  {
    v4 = AEBundle();
    v5 = [v4 localizedStringForKey:@"Markup" value:&stru_1E7188 table:0];
    v6 = [UIBarButtonItem bc_readingExperienceBarItem:@"pencil.tip.crop.circle" target:self action:"toggleEditAssetMode:" menuRepresentationTitle:v5];
    v7 = self->_editToolboxBarButtonItem;
    self->_editToolboxBarButtonItem = v6;

    [(UIBarButtonItem *)self->_editToolboxBarButtonItem setSelected:[(BKThumbnailBookViewController *)self assetEditingEnabled]];
    editToolboxBarButtonItem = self->_editToolboxBarButtonItem;
  }

  return editToolboxBarButtonItem;
}

- (id)editUndoBarButtonItem
{
  editUndoBarButtonItem = self->_editUndoBarButtonItem;
  if (!editUndoBarButtonItem)
  {
    v4 = [UIBarButtonItem bc_readingExperienceBarItem:@"arrow.uturn.backward" target:self action:"handleEditUndo:"];
    v5 = self->_editUndoBarButtonItem;
    self->_editUndoBarButtonItem = v4;

    editUndoBarButtonItem = self->_editUndoBarButtonItem;
  }

  return editUndoBarButtonItem;
}

- (id)editRedoBarButtonItem
{
  editRedoBarButtonItem = self->_editRedoBarButtonItem;
  if (!editRedoBarButtonItem)
  {
    v4 = [UIBarButtonItem bc_readingExperienceBarItem:@"arrow.uturn.forward" target:self action:"handleEditRedo:"];
    v5 = self->_editRedoBarButtonItem;
    self->_editRedoBarButtonItem = v4;

    editRedoBarButtonItem = self->_editRedoBarButtonItem;
  }

  return editRedoBarButtonItem;
}

- (id)_audioBarButtonItem
{
  audioBarButtonItem = self->_audioBarButtonItem;
  if (!audioBarButtonItem)
  {
    v4 = [UIBarButtonItem bc_readingExperienceBarItem:@"speaker.wave.2" target:self action:"showAudio:"];
    v5 = self->_audioBarButtonItem;
    self->_audioBarButtonItem = v4;

    audioBarButtonItem = self->_audioBarButtonItem;
  }

  return audioBarButtonItem;
}

- (id)_bookmarkBarButtonItem
{
  bookmarkBarButtonItem = self->_bookmarkBarButtonItem;
  if (!bookmarkBarButtonItem)
  {
    v4 = [BCUIFullHeightNavWrapper alloc];
    _bookmarkButton = [(BKThumbnailBookViewController *)self _bookmarkButton];
    v6 = [v4 initWithView:_bookmarkButton];

    [v6 setCursorInsets:{2.0, -8.0, 2.0, -8.0}];
    [(UIButton *)self->_bookmarkButton frame];
    [v6 setSpecifiedWidth:{fmax(CGRectGetWidth(v21), 32.0)}];
    v7 = [[UIBarButtonItem alloc] initWithCustomView:v6];
    v8 = self->_bookmarkBarButtonItem;
    self->_bookmarkBarButtonItem = v7;

    [v6 specifiedWidth];
    [(UIBarButtonItem *)self->_bookmarkBarButtonItem setWidth:?];
    objc_initWeak(&location, self);
    v9 = AEBundle();
    v10 = [v9 localizedStringForKey:@"Bookmark" value:&stru_1E7188 table:0];
    v11 = [UIImage systemImageNamed:@"bookmark"];
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_102000;
    v17 = &unk_1E5FA0;
    objc_copyWeak(&v18, &location);
    v12 = [UIAction actionWithTitle:v10 image:v11 identifier:0 handler:&v14];
    [(UIBarButtonItem *)self->_bookmarkBarButtonItem setMenuRepresentation:v12, v14, v15, v16, v17];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);

    bookmarkBarButtonItem = self->_bookmarkBarButtonItem;
  }

  return bookmarkBarButtonItem;
}

- (id)_bookmarkButton
{
  bookmarkButton = self->_bookmarkButton;
  if (!bookmarkButton)
  {
    newGlassButton = [(BKThumbnailBookViewController *)self newGlassButton];
    v5 = self->_bookmarkButton;
    self->_bookmarkButton = newGlassButton;

    [(UIButton *)self->_bookmarkButton addTarget:self action:"toggleBookmark:" forControlEvents:64];
    [(BKThumbnailBookViewController *)self updateBookmarkButton:1];
    [(UIButton *)self->_bookmarkButton sizeToFit];
    bookmarkButton = self->_bookmarkButton;
  }

  return bookmarkButton;
}

- (id)_buyBarButtonItem
{
  buyBarButtonItem = self->_buyBarButtonItem;
  if (!buyBarButtonItem)
  {
    assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];
    book = [(BKBookViewController *)self book];
    sampleContent = [book sampleContent];
    bOOLValue = [sampleContent BOOLValue];
    book2 = [(BKBookViewController *)self book];
    isPreorder = [book2 isPreorder];
    bOOLValue2 = [isPreorder BOOLValue];
    book3 = [(BKBookViewController *)self book];
    storeId = [book3 storeId];
    v12 = [assetViewControllerDelegate assetViewControllerBuyButtonItem:self isSample:bOOLValue isPreorder:bOOLValue2 storeID:storeId];
    v13 = self->_buyBarButtonItem;
    self->_buyBarButtonItem = v12;

    buyBarButtonItem = self->_buyBarButtonItem;
  }

  return buyBarButtonItem;
}

- (id)_directorySwitchBarButtonItem
{
  if (!self->_directorySwitchBarButtonItem)
  {
    v3 = [UIImage systemImageNamed:@"rectangle.grid.3x2"];
    v4 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:2 scale:13.0];
    v5 = [v3 imageWithConfiguration:v4];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = objc_opt_new();
    }

    v8 = v7;

    v9 = [UIImage systemImageNamed:@"list.bullet"];
    v10 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:2 scale:13.0];
    v11 = [v9 imageWithConfiguration:v10];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = objc_opt_new();
    }

    v14 = v13;

    v15 = [UIImage systemImageNamed:@"bookmark"];
    v16 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:2 scale:13.0];
    v17 = [v15 imageWithConfiguration:v16];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = objc_opt_new();
    }

    v20 = v19;

    book = [(BKBookViewController *)self book];
    suppressTOC = [book suppressTOC];

    v23 = [NSArray alloc];
    if (suppressTOC)
    {
      v24 = [v23 initWithObjects:{v8, v20, 0, v37}];
    }

    else
    {
      v24 = [v23 initWithObjects:{v8, v14, v20, 0}];
    }

    v25 = v24;
    v26 = [[BKSegmentedControl alloc] initWithItems:v24];
    directorySwitch = self->_directorySwitch;
    self->_directorySwitch = &v26->super;

    [(UISegmentedControl *)self->_directorySwitch addTarget:self action:"directorySwitchPressed:" forControlEvents:4096];
    [(BKThumbnailBookViewController *)self _updateDirectorySwitch];
    if ([v25 count] == &dword_0 + 3)
    {
      v28 = 132.0;
    }

    else
    {
      v28 = 120.0;
    }

    if ([v25 count])
    {
      v29 = v28 / [v25 count];
    }

    else
    {
      v29 = 40.0;
    }

    if ([v25 count])
    {
      v30 = 0;
      do
      {
        [(UISegmentedControl *)self->_directorySwitch setWidth:v30++ forSegmentAtIndex:v29];
      }

      while ([v25 count] > v30);
    }

    v31 = [[UIBarButtonItem alloc] initWithCustomView:self->_directorySwitch];
    directorySwitchBarButtonItem = self->_directorySwitchBarButtonItem;
    self->_directorySwitchBarButtonItem = v31;

    [(UIBarButtonItem *)self->_directorySwitchBarButtonItem setStyle:0];
    v33 = [v25 count];
    v34 = 0.0;
    if (v33)
    {
      v34 = v28;
    }

    [(UIBarButtonItem *)self->_directorySwitchBarButtonItem setWidth:v34];
  }

  [(UISegmentedControl *)self->_directorySwitch sizeToFit];
  v35 = self->_directorySwitchBarButtonItem;

  return v35;
}

- (_NSRange)currentPages
{
  pageOffset = [(BKPageNavigationViewController *)self->super._pageNavigationViewController pageOffset];
  pageCountIncludingUpsell = [(BKBookViewController *)self pageCountIncludingUpsell];
  if (pageOffset + 1 < pageCountIncludingUpsell)
  {
    v5 = pageOffset + 1;
  }

  else
  {
    v5 = pageCountIncludingUpsell;
  }

  if (v5 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = 1;
  result.length = v7;
  result.location = v6;
  return result;
}

- (id)visibleContentViewController
{
  currentPages = [(BKThumbnailBookViewController *)self currentPages];
  v5 = [(BKBookViewController *)self pageNumberFromRange:currentPages, v4];

  return [(BKThumbnailBookViewController *)self existingContentViewControllerForPageNumber:v5];
}

- (id)existingContentViewControllerForPageNumber:(int64_t)number
{
  v4 = [(BKBookViewController *)self pageLocationForPageNumber:number];
  if (v4)
  {
    contentViewControllers = [(BKBookViewController *)self contentViewControllers];
    v6 = [contentViewControllers objectForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)contentViewControllerForPageNumber:(int64_t)number
{
  v5 = [(BKThumbnailBookViewController *)self existingContentViewControllerForPageNumber:?];
  if (!v5)
  {
    v6 = [(BKBookViewController *)self pageLocationForPageNumber:number];
    v5 = [(BKBookViewController *)self contentViewControllerForLocation:v6];
    [v5 setDelegate:self];
    if (v5)
    {
      imageCache = [(BKThumbnailBookViewController *)self imageCache];
      [v5 setContentViewImageCache:imageCache];

      contentViewControllers = [(BKBookViewController *)self contentViewControllers];
      [contentViewControllers setObject:v5 forKey:v6];

      [(BKPageNavigationViewController *)self->super._pageNavigationViewController addChildViewController:v5];
    }
  }

  return v5;
}

- (BOOL)_isUsingContent:(id)content
{
  pageNavigationViewController = self->super._pageNavigationViewController;
  contentCopy = content;
  allViewControllers = [(BKPageNavigationViewController *)pageNavigationViewController allViewControllers];
  v6 = [allViewControllers containsObject:contentCopy];

  return v6;
}

- (void)pageNavigationDidRemoveContentForPageNumber:(int64_t)number
{
  v7 = [(BKBookViewController *)self pageLocationForPageNumber:number];
  contentViewControllers = [(BKBookViewController *)self contentViewControllers];
  v5 = [contentViewControllers objectForKey:v7];

  if (v5 && ![(BKThumbnailBookViewController *)self _isUsingContent:v5])
  {
    [v5 removeFromParentViewController];
    contentViewControllers2 = [(BKBookViewController *)self contentViewControllers];
    [contentViewControllers2 removeObjectForKey:v7];
  }
}

- (void)pageNavigationDidRemoveContentViewController:(id)controller
{
  controllerCopy = controller;
  v5 = controllerCopy;
  if (controllerCopy)
  {
    v9 = controllerCopy;
    controllerCopy = [(BKThumbnailBookViewController *)self _isUsingContent:controllerCopy];
    v5 = v9;
    if ((controllerCopy & 1) == 0)
    {
      contentViewControllers = [(BKBookViewController *)self contentViewControllers];
      v7 = [contentViewControllers allKeysForObject:v9];

      [v9 removeFromParentViewController];
      contentViewControllers2 = [(BKBookViewController *)self contentViewControllers];
      [contentViewControllers2 removeObjectsForKeys:v7];

      v5 = v9;
    }
  }

  _objc_release_x1(controllerCopy, v5);
}

- (void)pageNavigationDidChangeLocation:(id)location
{
  v4.receiver = self;
  v4.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v4 pageNavigationDidChangeLocation:location];
  [(BKThumbnailBookViewController *)self didChangeLocationClosing:0 suspending:0];
}

- (void)setControlsVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  visibleCopy = visible;
  completionCopy = completion;
  if ([(BKBookViewController *)self section]== 1)
  {
    isVisible = 1;
  }

  else
  {
    searchViewController = [(BKBookViewController *)self searchViewController];
    if ([searchViewController isVisible])
    {
      isVisible = 1;
    }

    else
    {
      isVisible = [(BKAppearanceViewController *)self->super._appearanceViewController isVisible];
    }
  }

  v11 = isVisible | visibleCopy;
  assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];
  inLiveResize = [assetViewControllerDelegate inLiveResize];

  v14 = (inLiveResize ^ 1) & v11;
  if (v14 != [(BKBookViewController *)self controlsVisible]|| [(BKBookViewController *)self bkaxAccessibilityUserIsRequestingControlsVisibilityToggle]|| v14 && (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning()))
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_102B48;
    v17[3] = &unk_1E5FC8;
    v17[4] = self;
    v18 = (inLiveResize ^ 1) & v11;
    v19 = animatedCopy;
    v15 = objc_retainBlock(v17);
    [(BKThumbnailBookViewController *)self updateTopToolbar:animatedCopy];
    v16.receiver = self;
    v16.super_class = BKThumbnailBookViewController;
    [(BKBookViewController *)&v16 setControlsVisible:v14 animated:animatedCopy animations:v15 completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)setTopToolBarVisible:(BOOL)visible
{
  visibleCopy = visible;
  if (visible)
  {
    [(BCNavigationBar *)self->_topToolbar setAlpha:1.0];
    [(BCNavigationBar *)self->_topToolbar setAccessibilityElementsHidden:0];
  }

  else
  {
    [(BKBookViewController *)self dismissCurrentPopoverWithCompletion:0 animated:1];
  }

  [(BCNavigationBar *)self->_topToolbar setAlpha:visibleCopy];
  topToolbar = self->_topToolbar;

  [(BCNavigationBar *)topToolbar setAccessibilityElementsHidden:!visibleCopy];
}

- (void)toggleControls:(id)controls
{
  controlsVisible = [(BKBookViewController *)self controlsVisible];
  if ((controlsVisible & 1) != 0 || ![(BKThumbnailBookViewController *)self hasHighlightedText])
  {
    if ([(BKBookViewController *)self bkaxAccessibilityUserIsRequestingControlsVisibilityToggle]|| !UIAccessibilityIsVoiceOverRunning() && !UIAccessibilityIsSwitchControlRunning())
    {
      v5 = +[UIView areAnimationsEnabled];

      [(BKBookViewController *)self setControlsVisible:controlsVisible ^ 1 animated:v5];
    }
  }

  else
  {
    [(BKBookViewController *)self clearSearchResult];

    [(BKBookViewController *)self clearSelection];
  }
}

- (void)showTOC:(id)c
{
  cCopy = c;
  actionController = [(BKBookViewController *)self actionController];
  [actionController cancelActions];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_102E2C;
  v7[3] = &unk_1E3F50;
  v8 = cCopy;
  selfCopy = self;
  v6 = cCopy;
  [(BKThumbnailBookViewController *)self setControlsVisible:1 animated:1 completion:v7];
}

- (void)toggleEditAssetMode:(id)mode
{
  modeCopy = mode;
  actionController = [(BKBookViewController *)self actionController];
  [actionController cancelActions];

  v6.receiver = self;
  v6.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v6 toggleEditAssetMode:modeCopy];
}

- (void)handleEditUndo:(id)undo
{
  undoCopy = undo;
  actionController = [(BKBookViewController *)self actionController];
  [actionController cancelActions];

  v6.receiver = self;
  v6.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v6 handleEditUndo:undoCopy];
}

- (void)handleEditRedo:(id)redo
{
  redoCopy = redo;
  actionController = [(BKBookViewController *)self actionController];
  [actionController cancelActions];

  v6.receiver = self;
  v6.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v6 handleEditRedo:redoCopy];
}

- (void)handleEditUndoAll:(id)all
{
  allCopy = all;
  actionController = [(BKBookViewController *)self actionController];
  [actionController cancelActions];

  v6.receiver = self;
  v6.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v6 handleEditUndoAll:allCopy];
}

- (void)resume:(id)resume
{
  resumeCopy = resume;
  actionController = [(BKBookViewController *)self actionController];
  [actionController cancelActions];

  v6.receiver = self;
  v6.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v6 resume:resumeCopy];
}

- (void)showLibrary:(id)library
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_103140;
  v4[3] = &unk_1E3F50;
  selfCopy = self;
  libraryCopy = library;
  v3 = libraryCopy;
  [(BKViewController *)selfCopy dismissCurrentPopoverWithCompletion:v4];
}

- (void)showOverlayViewController:(id)controller fromView:(id)view popoverOnPhone:(BOOL)phone passthroughViews:(id)views
{
  phoneCopy = phone;
  viewsCopy = views;
  viewCopy = view;
  controllerCopy = controller;
  actionController = [(BKBookViewController *)self actionController];
  [actionController cancelActions];

  v14.receiver = self;
  v14.super_class = BKThumbnailBookViewController;
  [(BKViewController *)&v14 showOverlayViewController:controllerCopy fromItem:viewCopy popoverOnPhone:phoneCopy passthroughViews:viewsCopy popoverBackgroundColor:0];
}

- (void)showTOCFromToolbar:(id)toolbar
{
  toolbarCopy = toolbar;
  if ([(BKThumbnailBookViewController *)self canShowTableOfContents])
  {
    [(BKThumbnailBookViewController *)self books_showTableOfContents:toolbarCopy];
  }

  else if ([(BKBookViewController *)self canShowContent])
  {
    [(BKBookViewController *)self books_showContent:toolbarCopy];
  }
}

- (void)showThumbnailTOCFromToolbar:(id)toolbar
{
  toolbarCopy = toolbar;
  if ([(BKThumbnailBookViewController *)self canShowThumbnails])
  {
    [(BKThumbnailBookViewController *)self books_showThumbnails:toolbarCopy];
  }

  else if ([(BKBookViewController *)self canShowContent])
  {
    [(BKBookViewController *)self books_showContent:toolbarCopy];
  }
}

- (void)showBookmarksFromToolbar:(id)toolbar
{
  toolbarCopy = toolbar;
  if ([(BKThumbnailBookViewController *)self canShowBookmarks])
  {
    [(BKThumbnailBookViewController *)self books_showBookmarks:toolbarCopy];
  }

  else if ([(BKBookViewController *)self canShowContent])
  {
    [(BKBookViewController *)self books_showContent:toolbarCopy];
  }
}

- (BOOL)shouldDisplayBuyButton
{
  book = [(BKBookViewController *)self book];
  sampleContent = [book sampleContent];
  bOOLValue = [sampleContent BOOLValue];

  return bOOLValue;
}

- (BOOL)shouldDisplayContentsButton
{
  book = [(BKBookViewController *)self book];
  suppressTOC = [book suppressTOC];

  return suppressTOC ^ 1;
}

- (int64_t)bookToolbarMode
{
  v5.receiver = self;
  v5.super_class = BKThumbnailBookViewController;
  result = [(BKBookViewController *)&v5 bookToolbarMode];
  if (!result)
  {
    directoryType = [(BKThumbnailBookViewController *)self directoryType];
    if (directoryType - 1 > 5)
    {
      return 0;
    }

    else
    {
      return qword_193958[directoryType - 1];
    }
  }

  return result;
}

- (id)bookToolbarTitle
{
  asset = [(BKBookViewController *)self asset];
  displayTitle = [asset displayTitle];

  return displayTitle;
}

- (id)buttonTitleColor
{
  v3 = +[UIColor bc_booksWhite];
  objc_opt_class();
  theme = [(BKThumbnailBookViewController *)self theme];
  v5 = BUDynamicCast();

  if (v5)
  {
    buttonColor = [v5 buttonColor];
    bc_invertedDynamicColor = [buttonColor bc_invertedDynamicColor];

    v3 = bc_invertedDynamicColor;
  }

  return v3;
}

- (id)bookmarkToolTip
{
  v2 = AEBundle();
  v3 = [v2 localizedStringForKey:@"Show bookmarked pages" value:&stru_1E7188 table:0];

  return v3;
}

- (id)tocToolTip
{
  v2 = AEBundle();
  v3 = [v2 localizedStringForKey:@"Show contents in list view" value:&stru_1E7188 table:0];

  return v3;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  v20.receiver = self;
  v20.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v20 validateCommand:commandCopy];
  action = [commandCopy action];
  if (!sel_isEqual(action, "books_toggleContinuousScroll:"))
  {
    if (sel_isEqual(action, "books_disableContinuousScroll:"))
    {
      v6 = self->super._layout == 1;
      goto LABEL_5;
    }

    if (sel_isEqual(action, "books_enableContinuousScroll:"))
    {
      [commandCopy setState:self->super._layout == 2];
      v8 = AEBundle();
      v9 = v8;
      v10 = @"Vertical Scrolling";
LABEL_18:
      v13 = [v8 localizedStringForKey:v10 value:&stru_1E7188 table:0];
      [commandCopy setTitle:v13];

LABEL_19:
      goto LABEL_20;
    }

    if (sel_isEqual(action, "books_chapterRight:"))
    {
      layoutDirection = [(BKViewController *)self layoutDirection];
      v9 = AEBundle();
      if (layoutDirection == 1)
      {
LABEL_13:
        v10 = @"Previous Chapter";
LABEL_17:
        v8 = v9;
        goto LABEL_18;
      }
    }

    else
    {
      if (!sel_isEqual(action, "books_chapterLeft:"))
      {
        if (!sel_isEqual(action, "books_togglePlaying:"))
        {
          goto LABEL_20;
        }

        isReading = [(BKBookViewController *)self isReading];
        v15 = AEBundle();
        v16 = v15;
        if (isReading)
        {
          v17 = [v15 localizedStringForKey:@"Pause" value:&stru_1E7188 table:0];
          [commandCopy setTitle:v17];

          v18 = @"pause";
        }

        else
        {
          v19 = [v15 localizedStringForKey:@"Play" value:&stru_1E7188 table:0];
          [commandCopy setTitle:v19];

          v18 = @"play";
        }

        v9 = [UIImage systemImageNamed:v18];
        [commandCopy setImage:v9];
        goto LABEL_19;
      }

      layoutDirection2 = [(BKViewController *)self layoutDirection];
      v9 = AEBundle();
      if (layoutDirection2 != 1)
      {
        goto LABEL_13;
      }
    }

    v10 = @"Next Chapter";
    goto LABEL_17;
  }

  v6 = self->super._layout == 2;
LABEL_5:
  v7 = v6;
  [commandCopy setState:v7];
LABEL_20:
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  v14.receiver = self;
  v14.super_class = BKThumbnailBookViewController;
  v6 = [(BKBookViewController *)&v14 canPerformAction:action withSender:sender];
  objc_opt_class();
  pageNavigationViewController = [(BKBookViewController *)self pageNavigationViewController];
  v8 = BUDynamicCast();

  if (!sel_isEqual(action, "books_showTableOfContents:"))
  {
    if (sel_isEqual(action, "books_showThumbnails:"))
    {
      if (v6)
      {
        canShowThumbnails = [(BKThumbnailBookViewController *)self canShowThumbnails];
        goto LABEL_10;
      }

      goto LABEL_28;
    }

    if (sel_isEqual(action, "books_showBookmarks:"))
    {
      if (v6)
      {
        canShowThumbnails = [(BKThumbnailBookViewController *)self canShowBookmarks];
        goto LABEL_10;
      }

      goto LABEL_28;
    }

    if (sel_isEqual(action, "books_toggleContinuousScroll:") || sel_isEqual(action, "books_disableContinuousScroll:") || sel_isEqual(action, "books_enableContinuousScroll:"))
    {
      shouldDisplayReadaloudControls = [(BKThumbnailBookViewController *)self shouldDisplayReadaloudControls];
    }

    else
    {
      if (sel_isEqual(action, "books_increaseZoom:"))
      {
        if (v6)
        {
          canShowThumbnails = [v8 canZoomMore];
          goto LABEL_10;
        }

        goto LABEL_28;
      }

      if (!sel_isEqual(action, "books_resetZoom:") && !sel_isEqual(action, "books_decreaseZoom:"))
      {
        if (!sel_isEqual(action, "books_togglePlaying:"))
        {
          if (sel_isEqual(action, "books_stopPlaying:"))
          {
            if (!v6)
            {
              goto LABEL_28;
            }
          }

          else
          {
            isEqual = sel_isEqual(action, "books_skipBackward:");
            if ((isEqual & v6 & 1) == 0)
            {
              v10 = !isEqual & v6;
              goto LABEL_29;
            }
          }

          canShowThumbnails = [(BKBookViewController *)self isReading];
          goto LABEL_10;
        }

        if (v6)
        {
          v10 = [(BKBookViewController *)self readAloudState]!= -1;
          goto LABEL_29;
        }

LABEL_28:
        v10 = 0;
        goto LABEL_29;
      }

      if (!v6)
      {
        goto LABEL_28;
      }

      shouldDisplayReadaloudControls = [v8 isZoomedToSpread];
    }

    v10 = shouldDisplayReadaloudControls ^ 1;
    goto LABEL_29;
  }

  if (!v6)
  {
    goto LABEL_28;
  }

  canShowThumbnails = [(BKThumbnailBookViewController *)self canShowTableOfContents];
LABEL_10:
  v10 = canShowThumbnails;
LABEL_29:

  return v10;
}

- (BOOL)canShowTableOfContents
{
  book = [(BKBookViewController *)self book];
  suppressTOC = [book suppressTOC];

  if (suppressTOC)
  {
    return 0;
  }

  if ([(BKBookViewController *)self section]!= 1)
  {
    return 1;
  }

  directoryType = [(BKThumbnailBookViewController *)self directoryType];
  return directoryType != [(BKThumbnailBookViewController *)self directoryTypeForTOC];
}

- (BOOL)canShowThumbnails
{
  if ([(BKBookViewController *)self section]!= 1)
  {
    return 1;
  }

  directoryType = [(BKThumbnailBookViewController *)self directoryType];
  return directoryType != [(BKThumbnailBookViewController *)self directoryTypeForPageThumbnails];
}

- (BOOL)canShowBookmarks
{
  if ([(BKBookViewController *)self section]!= 1)
  {
    return 1;
  }

  directoryType = [(BKThumbnailBookViewController *)self directoryType];
  return directoryType != [(BKThumbnailBookViewController *)self directoryTypeForBookmarks];
}

- (void)books_showTableOfContents:(id)contents
{
  contentsCopy = contents;
  [(BKThumbnailBookViewController *)self setDirectoryType:[(BKThumbnailBookViewController *)self directoryTypeForTOC]];
  [(BKThumbnailBookViewController *)self showTOC:contentsCopy];
}

- (void)books_showBookmarks:(id)bookmarks
{
  bookmarksCopy = bookmarks;
  [(BKThumbnailBookViewController *)self setDirectoryType:[(BKThumbnailBookViewController *)self directoryTypeForBookmarks]];
  [(BKThumbnailBookViewController *)self showTOC:bookmarksCopy];
}

- (void)books_showThumbnails:(id)thumbnails
{
  thumbnailsCopy = thumbnails;
  [(BKThumbnailBookViewController *)self setDirectoryType:[(BKThumbnailBookViewController *)self directoryTypeForPageThumbnails]];
  [(BKThumbnailBookViewController *)self showTOC:thumbnailsCopy];
}

- (void)books_toggleContinuousScroll:(id)scroll
{
  scrollCopy = scroll;
  if ([(BKBookViewController *)self layout]== &dword_0 + 1)
  {
    [(BKThumbnailBookViewController *)self books_enableContinuousScroll:scrollCopy];
  }

  else
  {
    [(BKThumbnailBookViewController *)self books_disableContinuousScroll:scrollCopy];
  }
}

- (void)books_disableContinuousScroll:(id)scroll
{
  location = [(BKBookViewController *)self location];
  [(BKThumbnailBookViewController *)self setLayout:1];
  [(BKBookViewController *)self setLocation:location];
}

- (void)books_enableContinuousScroll:(id)scroll
{
  location = [(BKBookViewController *)self location];
  [(BKThumbnailBookViewController *)self setLayout:2];
  [(BKBookViewController *)self setLocation:location];
}

- (void)books_togglePlaying:(id)playing
{
  if ([(BKBookViewController *)self isReadAloudPaused])
  {

    [(BKBookViewController *)self resumeReadAloud];
  }

  else if (self->super._isReading)
  {

    [(BKBookViewController *)self pauseReadAloud];
  }

  else
  {

    [(BKBookViewController *)self setReadAloudState:1];
  }
}

- (void)books_resetZoom:(id)zoom
{
  objc_opt_class();
  pageNavigationViewController = [(BKBookViewController *)self pageNavigationViewController];
  v6 = BUDynamicCast();

  v5 = v6;
  if (v6)
  {
    [v6 zoomToSpread:1];
    v5 = v6;
  }
}

- (void)books_increaseZoom:(id)zoom
{
  objc_opt_class();
  pageNavigationViewController = [(BKBookViewController *)self pageNavigationViewController];
  v7 = BUDynamicCast();

  v6 = v7;
  if (v7)
  {
    supportsSinglePageMode = [v7 supportsSinglePageMode];
    v6 = v7;
    if (supportsSinglePageMode)
    {
      supportsSinglePageMode = [v7 zoomToLeadingPageAnimated:1];
      v6 = v7;
    }
  }

  _objc_release_x1(supportsSinglePageMode, v6);
}

- (void)books_decreaseZoom:(id)zoom
{
  objc_opt_class();
  pageNavigationViewController = [(BKBookViewController *)self pageNavigationViewController];
  v6 = BUDynamicCast();

  v5 = v6;
  if (v6)
  {
    [v6 zoomToSpread:1];
    v5 = v6;
  }
}

- (void)setSection:(int)section animated:(BOOL)animated adjustScrollToReveal:(BOOL)reveal
{
  if (self->super._section != section)
  {
    v12 = v5;
    v13 = v6;
    animatedCopy = animated;
    v11.receiver = self;
    v11.super_class = BKThumbnailBookViewController;
    [BKBookViewController setSection:"setSection:animated:adjustScrollToReveal:" animated:? adjustScrollToReveal:?];
    [(BKThumbnailBookViewController *)self updateHUDVisibilityAnimated:animatedCopy];
    if (section)
    {
      if (section == 1)
      {
        [(BKThumbnailBookViewController *)self makeTOCVisible];
      }
    }

    else
    {
      [(BKThumbnailBookViewController *)self makeContentVisible];
    }

    [(BKThumbnailBookViewController *)self updateTopToolbar:animatedCopy];
    [(BKThumbnailBookViewController *)self updateBottomToolbar:animatedCopy];
    scrubber = [(BKThumbnailBookViewController *)self scrubber];
    [scrubber loadAnyMissingThumbnails];
  }
}

- (id)snapshotView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  if (v4 <= 0.0 || (v6 = v5, v5 <= 0.0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_139334(viewCopy);
    }

    v10 = 0;
  }

  else
  {
    v7 = v4;
    v8 = +[UIGraphicsImageRendererFormat preferredFormat];
    v9 = [[UIGraphicsImageRenderer alloc] initWithSize:v8 format:{v7, v6}];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1043C0;
    v12[3] = &unk_1E5DE8;
    v13 = viewCopy;
    v10 = [v9 imageWithActions:v12];
  }

  return v10;
}

- (id)bookContentViewControllerView
{
  pageNavigationViewController = [(BKBookViewController *)self pageNavigationViewController];
  view = [pageNavigationViewController view];

  return view;
}

- (id)directoryTOCViewControllerView
{
  directoryController = [(BKThumbnailBookViewController *)self directoryController];
  view = [directoryController view];

  return view;
}

- (BOOL)directoryTOCIsVisible
{
  viewIfLoaded = [(IMSegmentedViewController *)self->_directoryController viewIfLoaded];
  superview = [viewIfLoaded superview];
  v4 = superview != 0;

  return v4;
}

- (id)bookContentView
{
  pageNavigationViewController = [(BKBookViewController *)self pageNavigationViewController];
  contentView = [pageNavigationViewController contentView];

  return contentView;
}

- (void)bookContentViewImage:(id)image
{
  imageCopy = image;
  pageNavigationViewController = [(BKBookViewController *)self pageNavigationViewController];
  [pageNavigationViewController contentViewImage:1 afterScreenUpdates:0 completion:imageCopy];
}

- (void)makeTOCVisible
{
  v3 = [(BKThumbnailBookViewController *)self segmentIndexForDirectoryType:[(BKThumbnailBookViewController *)self directoryType]];
  directoryController = [(BKThumbnailBookViewController *)self directoryController];
  selectedIndex = [directoryController selectedIndex];

  if (selectedIndex != v3)
  {
    directoryController2 = [(BKThumbnailBookViewController *)self directoryController];
    [directoryController2 setSelectedIndex:v3];
  }

  bookContentViewController = [(BKThumbnailBookViewController *)self bookContentViewController];
  directoryTOCViewController = [(BKThumbnailBookViewController *)self directoryTOCViewController];
  directoryTOCViewControllerView = [(BKThumbnailBookViewController *)self directoryTOCViewControllerView];
  if ([(BKThumbnailBookViewController *)bookContentViewController isViewLoaded])
  {
    bookContentViewControllerView = [(BKThumbnailBookViewController *)self bookContentViewControllerView];
  }

  else
  {
    bookContentViewControllerView = 0;
  }

  if (bookContentViewController == self)
  {
    v12 = 0;
  }

  else
  {
    view = [(BKThumbnailBookViewController *)self view];
    v12 = bookContentViewControllerView != view;
  }

  [directoryTOCViewControllerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [directoryTOCViewControllerView setAlpha:1.0];
  if (v12)
  {
    [(BKThumbnailBookViewController *)bookContentViewController beginAppearanceTransition:0 animated:+[UIView areAnimationsEnabled]];
  }

  v98 = v12;
  [directoryTOCViewController beginAppearanceTransition:1 animated:{+[UIView areAnimationsEnabled](UIView, "areAnimationsEnabled")}];
  topToolbar = self->_topToolbar;
  if (topToolbar)
  {
    [(BCNavigationBar *)topToolbar frame];
    [directoryTOCViewController setAdditionalSafeAreaInsets:{v14, 0.0, 0.0, 0.0}];
  }

  view2 = [(BKThumbnailBookViewController *)self view];
  backgroundView = [(BKThumbnailBookViewController *)self backgroundView];
  [view2 insertSubview:directoryTOCViewControllerView aboveSubview:backgroundView];

  leftAnchor = [directoryTOCViewControllerView leftAnchor];
  view3 = [(BKThumbnailBookViewController *)self view];
  leftAnchor2 = [view3 leftAnchor];
  v20 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v20 setActive:1];

  rightAnchor = [directoryTOCViewControllerView rightAnchor];
  view4 = [(BKThumbnailBookViewController *)self view];
  rightAnchor2 = [view4 rightAnchor];
  v24 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v24 setActive:1];

  bottomAnchor = [directoryTOCViewControllerView bottomAnchor];
  view5 = [(BKThumbnailBookViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v28 setActive:1];

  topAnchor = [directoryTOCViewControllerView topAnchor];
  view6 = [(BKThumbnailBookViewController *)self view];
  topAnchor2 = [view6 topAnchor];
  v32 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v32 setActive:1];

  view7 = [(BKThumbnailBookViewController *)self view];
  [view7 layoutIfNeeded];

  directoryController3 = [(BKThumbnailBookViewController *)self directoryController];
  selectedViewController = [directoryController3 selectedViewController];

  objc_opt_class();
  v100 = selectedViewController;
  v36 = BUDynamicCast();
  objc_opt_class();
  pageNavigationViewController = [(BKBookViewController *)self pageNavigationViewController];
  v101 = BUDynamicCast();

  if (([(BKBookViewController *)self currentPageNumber]& 1) == 0 && [(BKBookViewController *)self isPageProgressionRTL])
  {
    v38 = bookContentViewControllerView;
    v39 = 1;
    if (!v36)
    {
      goto LABEL_30;
    }

LABEL_19:
    v40 = bookContentViewController;
    v41 = directoryTOCViewController;
    currentLocation = [(BKThumbnailBookViewController *)self currentLocation];
    [v36 scrollToLocation:currentLocation];
    [v36 frameForThumbnailAtLocation:currentLocation];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    view8 = [(BKThumbnailBookViewController *)self view];
    view9 = [v36 view];
    [view8 convertRect:view9 fromView:{v44, v46, v48, v50}];
    MidX = v53;
    y = v55;
    v58 = v57;
    height = v59;

    if (v101)
    {
      if (([v101 shouldDisplaySpread] & 1) != 0 || -[BKThumbnailBookViewController hasSpreadPages](self, "hasSpreadPages"))
      {
        directoryTOCViewController = v41;
        bookContentViewController = v40;
        if (([v36 showSpreads] & 1) == 0)
        {
          v111.origin.x = MidX;
          v111.origin.y = y;
          v111.size.width = v58;
          v111.size.height = height;
          Width = CGRectGetWidth(v111);
          v62 = MidX - Width;
          v63 = MidX + Width;
          if (v62 < 0.0)
          {
            v62 = MidX;
          }

          if (v39)
          {
            MidX = v62;
          }

          else
          {
            MidX = v63;
          }

          v112.origin.x = MidX;
          v112.origin.y = y;
          v112.size.width = v58;
          v112.size.height = height;
          y = y + CGRectGetHeight(v112) * -0.5;
          height = height + height;
          v58 = v58 + v58;
        }
      }

      else
      {
        directoryTOCViewController = v41;
        bookContentViewController = v40;
        if ([v36 showSpreads])
        {
          v64 = v38;
          v65 = &_s13BookAnalytics9UtilitiesC29cellularRadioAccessTechnologyAA08CellularefG0OyFZTj_ptr;
          if (v39)
          {
            v113.origin.x = MidX;
            v113.origin.y = y;
            v113.size.width = v58;
            v113.size.height = height;
            MidX = CGRectGetMidX(v113);
          }

          v114.origin.x = MidX;
          v114.origin.y = y;
          v114.size.width = v58;
          v114.size.height = height;
          v58 = CGRectGetWidth(v114) * 0.5;
          goto LABEL_38;
        }
      }

      v64 = v38;
    }

    else
    {
      directoryTOCViewController = v41;
      v64 = v38;
      bookContentViewController = v40;
    }

    v65 = &_s13BookAnalytics9UtilitiesC29cellularRadioAccessTechnologyAA08CellularefG0OyFZTj_ptr;
LABEL_38:

    goto LABEL_39;
  }

  v38 = bookContentViewControllerView;
  if (([(BKBookViewController *)self currentPageNumber]& 0x8000000000000001) == 1)
  {
    v39 = ![(BKBookViewController *)self isPageProgressionRTL];
    if (v36)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v39 = 0;
    if (v36)
    {
      goto LABEL_19;
    }
  }

LABEL_30:
  MidX = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  v58 = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v64 = v38;
  v65 = &_s13BookAnalytics9UtilitiesC29cellularRadioAccessTechnologyAA08CellularefG0OyFZTj_ptr;
LABEL_39:
  v115.origin.x = MidX;
  v115.origin.y = y;
  v115.size.width = v58;
  v115.size.height = height;
  if (!CGRectIsNull(v115) && v64 && [v65[340] areAnimationsEnabled])
  {
    v96 = bookContentViewController;
    v66 = directoryTOCViewController;
    bookContentView = [(BKThumbnailBookViewController *)self bookContentView];
    v68 = [bookContentView snapshotViewAfterScreenUpdates:0];
    [bookContentView bounds];
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v76 = v75;
    view10 = [(BKThumbnailBookViewController *)self view];
    v78 = bookContentView;
    [bookContentView convertRect:view10 toView:{v70, v72, v74, v76}];
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v86 = v85;

    v97 = v82;
    v99 = v80;
    if (!v101)
    {
LABEL_57:
      v90 = v86;
      v88 = v84;
      goto LABEL_58;
    }

    v116.origin.x = v80;
    v116.origin.y = v82;
    v116.size.width = v84;
    v116.size.height = v86;
    v95 = CGRectGetWidth(v116);
    [v68 frame];
    v88 = v87;
    v90 = v89;
    if (-[BKThumbnailBookViewController hasSpreadPages](self, "hasSpreadPages") && ([v36 showSpreads] & 1) == 0)
    {
      if (v88 > v95)
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (!-[BKThumbnailBookViewController hasSpreadPages](self, "hasSpreadPages") || ![v36 showSpreads])
      {
        goto LABEL_57;
      }

      if (v95 + v95 == v88 && v99 - v95 >= 0.0)
      {
        v99 = v99 - v95;
      }

      if (v88 > v95)
      {
        goto LABEL_58;
      }
    }

    v117.origin.y = v97;
    v117.origin.x = v99;
    v117.size.width = v84;
    v117.size.height = v86;
    if (v90 <= CGRectGetHeight(v117))
    {
      goto LABEL_57;
    }

LABEL_58:
    [v68 setFrame:{v99, v97, v88, v90}];
    view11 = [(BKThumbnailBookViewController *)self view];
    [view11 insertSubview:v68 aboveSubview:v64];

    [v64 removeFromSuperview];
    [directoryTOCViewControllerView setAlpha:0.0];
    v92 = v65[340];
    v104[0] = _NSConcreteStackBlock;
    v104[1] = 3221225472;
    v104[2] = sub_104EBC;
    v104[3] = &unk_1E5FF0;
    v105 = directoryTOCViewControllerView;
    v106 = v68;
    v107 = MidX;
    v108 = y;
    v109 = v58;
    v110 = height;
    v102[0] = _NSConcreteStackBlock;
    v102[1] = 3221225472;
    v102[2] = sub_104F04;
    v102[3] = &unk_1E3F28;
    v102[4] = self;
    v103 = v106;
    v93 = v106;
    [v92 animateWithDuration:v104 animations:v102 completion:0.2];
    view12 = [(BKThumbnailBookViewController *)self view];
    [view12 setUserInteractionEnabled:0];

    directoryTOCViewController = v66;
    bookContentViewController = v96;
    goto LABEL_59;
  }

  [v64 removeFromSuperview];
  if (v98)
  {
    [(BKThumbnailBookViewController *)bookContentViewController endAppearanceTransition];
  }

  [directoryTOCViewController endAppearanceTransition];
LABEL_59:
}

- (void)_zoomOutAnimationDidStop:(id)stop
{
  stopCopy = stop;
  bookContentViewController = [(BKThumbnailBookViewController *)self bookContentViewController];
  directoryTOCViewController = [(BKThumbnailBookViewController *)self directoryTOCViewController];
  directoryTOCViewControllerView = [(BKThumbnailBookViewController *)self directoryTOCViewControllerView];
  [directoryTOCViewControllerView setAlpha:1.0];

  [stopCopy removeFromSuperview];
  if ([(BKThumbnailBookViewController *)bookContentViewController isViewLoaded])
  {
    bookContentViewControllerView = [(BKThumbnailBookViewController *)self bookContentViewControllerView];
    [bookContentViewControllerView removeFromSuperview];
  }

  if (bookContentViewController != self)
  {
    [(BKThumbnailBookViewController *)bookContentViewController endAppearanceTransition];
  }

  [directoryTOCViewController endAppearanceTransition];
  view = [(BKThumbnailBookViewController *)self view];
  [view setUserInteractionEnabled:1];
}

- (void)makeContentVisible
{
  bookContentViewController = [(BKThumbnailBookViewController *)self bookContentViewController];
  directoryTOCViewController = [(BKThumbnailBookViewController *)self directoryTOCViewController];
  bookContentViewControllerView = [(BKThumbnailBookViewController *)self bookContentViewControllerView];
  view = [(BKThumbnailBookViewController *)self view];
  [view bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [bookContentViewControllerView setFrame:{v8, v10, v12, v14}];
  [directoryTOCViewController beginAppearanceTransition:0 animated:{+[UIView areAnimationsEnabled](UIView, "areAnimationsEnabled")}];
  [bookContentViewController beginAppearanceTransition:1 animated:{+[UIView areAnimationsEnabled](UIView, "areAnimationsEnabled")}];
  directoryController = [(BKThumbnailBookViewController *)self directoryController];
  selectedViewController = [directoryController selectedViewController];

  objc_opt_class();
  v17 = BUDynamicCast();
  if (v17)
  {
    location = [(BKBookViewController *)self location];
    v19 = location;
    if (location)
    {
      currentLocation = location;
    }

    else
    {
      currentLocation = [(BKThumbnailBookViewController *)self currentLocation];
    }

    v25 = currentLocation;

    [v17 frameForThumbnailAtLocation:v25];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    view2 = [(BKThumbnailBookViewController *)self view];
    view3 = [v17 view];
    [view2 convertRect:view3 fromView:{v27, v29, v31, v33}];
    x = v36;
    y = v37;
    width = v38;
    height = v39;
  }

  else
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  if ([directoryTOCViewController isViewLoaded])
  {
    directoryTOCViewControllerView = [(BKThumbnailBookViewController *)self directoryTOCViewControllerView];
  }

  else
  {
    directoryTOCViewControllerView = 0;
  }

  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  if (CGRectIsNull(v55) || !directoryTOCViewControllerView)
  {
    view4 = [(BKThumbnailBookViewController *)self view];
    if (!directoryTOCViewControllerView)
    {
      backgroundView = [(BKThumbnailBookViewController *)self backgroundView];
      [view4 insertSubview:bookContentViewControllerView aboveSubview:backgroundView];

LABEL_18:
      [(BKThumbnailBookViewController *)self updateBookContentConstraints];
      [(BKThumbnailBookViewController *)self updateContentScale];
      [(BKThumbnailBookViewController *)self updateHUDVisibilityAnimated:0];
      [directoryTOCViewControllerView removeFromSuperview];
      [directoryTOCViewController endAppearanceTransition];
      [bookContentViewController endAppearanceTransition];
      goto LABEL_19;
    }

LABEL_17:
    [view4 insertSubview:bookContentViewControllerView aboveSubview:directoryTOCViewControllerView];
    goto LABEL_18;
  }

  if (!+[UIView areAnimationsEnabled])
  {
    view4 = [(BKThumbnailBookViewController *)self view];
    goto LABEL_17;
  }

  objc_opt_class();
  pageNavigationViewController = [(BKBookViewController *)self pageNavigationViewController];
  v42 = BUDynamicCast();

  objc_initWeak(location, self);
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_105438;
  v46[3] = &unk_1E6040;
  objc_copyWeak(v52, location);
  v52[1] = *&x;
  v52[2] = *&y;
  v52[3] = *&width;
  v52[4] = *&height;
  v47 = directoryTOCViewControllerView;
  v48 = bookContentViewControllerView;
  v53 = v42 != 0;
  v43 = v42;
  v49 = v43;
  selfCopy = self;
  v51 = v17;
  [(BKThumbnailBookViewController *)self bookContentViewImage:v46];

  objc_destroyWeak(v52);
  objc_destroyWeak(location);

LABEL_19:
}

- (void)_zoomInAnimationDidStop:(id)stop
{
  stopCopy = stop;
  directoryTOCViewController = [(BKThumbnailBookViewController *)self directoryTOCViewController];
  bookContentViewController = [(BKThumbnailBookViewController *)self bookContentViewController];
  bookContentViewControllerView = [(BKThumbnailBookViewController *)self bookContentViewControllerView];
  [bookContentViewControllerView setAlpha:1.0];

  [stopCopy removeFromSuperview];
  if ([directoryTOCViewController isViewLoaded])
  {
    directoryTOCViewControllerView = [(BKThumbnailBookViewController *)self directoryTOCViewControllerView];
    [directoryTOCViewControllerView removeFromSuperview];
  }

  [directoryTOCViewController endAppearanceTransition];
  [bookContentViewController endAppearanceTransition];
  view = [(BKThumbnailBookViewController *)self view];
  [view setUserInteractionEnabled:1];
}

- (void)updateBookmarkButton:(BOOL)button
{
  isPageBookmarked = [(BKBookViewController *)self isPageBookmarked];
  if (self->super._pageBookmarksFRC)
  {
    v5 = @"bookmark.fill";
    if (!isPageBookmarked)
    {
      v5 = @"bookmark";
    }

    v14 = v5;
    v6 = [(BKThumbnailBookViewController *)self _isShowingUpsellPage]^ 1;
  }

  else
  {
    v6 = 0;
    v14 = @"bookmark";
  }

  if ([(BKThumbnailBookViewController *)self im_isCompactHeight])
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

  [(UIButton *)self->_bookmarkButton setEnabled:v6];
  bookmarkButton = self->_bookmarkButton;
  v9 = [UIImage systemImageNamed:v14];
  v10 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:v7 scale:17.0];
  v11 = [v9 imageWithConfiguration:v10];
  v12 = [v11 imageWithRenderingMode:0];
  [(UIButton *)bookmarkButton setImage:v12 forState:0];

  if (isPageBookmarked)
  {
    v13 = +[UIColor systemRedColor];
    [(UIButton *)self->_bookmarkButton setTintColor:v13];
  }

  else
  {
    [(UIButton *)self->_bookmarkButton setTintColor:0];
  }
}

- (BOOL)_isShowingUpsellPage
{
  selfCopy = self;
  location = [(BKBookViewController *)self location];
  ordinal = [location ordinal];
  LOBYTE(selfCopy) = ordinal == [(BKBookViewController *)selfCopy upsellOrdinal];

  return selfCopy;
}

- (void)storeChangedNotification:(id)notification
{
  v4.receiver = self;
  v4.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v4 storeChangedNotification:notification];
  [(BKThumbnailBookViewController *)self updateTopToolbar:0];
}

- (id)scrubber
{
  scrubber = self->_scrubber;
  if (!scrubber)
  {
    v4 = [[BKThumbnailScrubber alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(BKThumbnailScrubber *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(BKThumbnailScrubber *)v4 setDelegate:self];
    book = [(BKBookViewController *)self book];
    -[BKThumbnailScrubber setHidesSpine:](v4, "setHidesSpine:", [book hidesSpine]);

    v6 = [UIColor colorWithWhite:0.0 alpha:0.3];
    [(BKThumbnailScrubber *)v4 setStrokeColor:v6];

    [(BKThumbnailScrubber *)v4 addTarget:self action:"scrub:" forControlEvents:64];
    [(BKThumbnailScrubber *)v4 addTarget:self action:"scrub:" forControlEvents:128];
    [(BKThumbnailScrubber *)v4 addTarget:self action:"scrubberTouchDown:" forControlEvents:1];
    [(BKThumbnailScrubber *)v4 addTarget:self action:"scrubValueChanged:" forControlEvents:4096];
    [(BKThumbnailScrubber *)v4 setLayoutDirection:[(BKViewController *)self layoutDirection]];
    [(BKThumbnailScrubber *)v4 setBkAccessibilityDelegate:self];
    v7 = self->_scrubber;
    self->_scrubber = v4;

    scrubber = self->_scrubber;
  }

  return scrubber;
}

- (BKThumbnailScrubber)verticalScrubber
{
  verticalScrubber = self->_verticalScrubber;
  if (!verticalScrubber)
  {
    v4 = [[BKThumbnailScrubber alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(BKThumbnailScrubber *)v4 setAutoresizingMask:0];
    [(BKThumbnailBookViewController *)self _contentAspectRatio];
    [(BKThumbnailScrubber *)v4 setCellAspectRatio:?];
    [(BKThumbnailScrubber *)v4 setShowSpreads:0];
    [(BKThumbnailScrubber *)v4 setDelegate:self];
    [(BKThumbnailScrubber *)v4 setHideThumbView:1];
    [(BKThumbnailScrubber *)v4 setLayoutDirection:[(BKViewController *)self layoutDirection]];
    book = [(BKBookViewController *)self book];
    -[BKThumbnailScrubber setHidesSpine:](v4, "setHidesSpine:", [book hidesSpine]);

    v6 = [UIColor colorWithWhite:0.0 alpha:0.3];
    [(BKThumbnailScrubber *)v4 setStrokeColor:v6];

    [(BKThumbnailScrubber *)v4 addTarget:self action:"scrub:" forControlEvents:64];
    [(BKThumbnailScrubber *)v4 addTarget:self action:"scrub:" forControlEvents:128];
    [(BKThumbnailScrubber *)v4 addTarget:self action:"scrubberTouchDown:" forControlEvents:1];
    [(BKThumbnailScrubber *)v4 addTarget:self action:"scrubValueChanged:" forControlEvents:4096];
    [(BKThumbnailScrubber *)v4 setBkAccessibilityDelegate:self];
    [(BKThumbnailScrubber *)v4 setOrientation:1];
    v7 = self->_verticalScrubber;
    self->_verticalScrubber = v4;

    verticalScrubber = self->_verticalScrubber;
  }

  return verticalScrubber;
}

- (id)scrubberBarButtonItem
{
  v3 = [UIBarButtonItem alloc];
  scrubber = [(BKThumbnailBookViewController *)self scrubber];
  v5 = [v3 initWithCustomView:scrubber];

  return v5;
}

- (void)updateScrubber:(_NSRange)scrubber
{
  v4 = [(BKBookViewController *)self pageCountExcludingUpsell:scrubber.location];
  if (v4)
  {
    v5 = v4;
    if (v4 != 0x7FFFFFFFFFFFFFFFLL && [(BKBookViewController *)self controlsVisible]&& [(BKThumbnailBookViewController *)self wantsBottomToolbar])
    {
      scrubber = [(BKThumbnailBookViewController *)self scrubber];
      [scrubber setPageCount:v5];

      pageOffset = [(BKPageNavigationViewController *)self->super._pageNavigationViewController pageOffset];
      if (pageOffset + 1 < v5)
      {
        v8 = pageOffset + 1;
      }

      else
      {
        v8 = v5;
      }

      if (v8 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }

      scrubber2 = [(BKThumbnailBookViewController *)self scrubber];
      [scrubber2 setPageNumber:v9];

      scrubber3 = [(BKThumbnailBookViewController *)self scrubber];
      [scrubber3 setProgress:1.0];
    }
  }
}

- (void)renderingCacheCallbackImage:(id)image context:(id)context pageNumber:(int64_t)number
{
  imageCopy = image;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [contextCopy setThumbnail:imageCopy forPage:number];
  }

  else
  {
    [(BKThumbnailScrubber *)self->_verticalScrubber setThumbnail:imageCopy forPage:number context:contextCopy];
    scrubber = [(BKThumbnailBookViewController *)self scrubber];
    [scrubber setThumbnail:imageCopy forPage:number context:contextCopy];
  }
}

- (id)thumbnailScrubber:(id)scrubber thumbnailForPage:(int64_t)page size:(CGSize)size context:(id)context
{
  height = size.height;
  width = size.width;
  scrubberCopy = scrubber;
  contextCopy = context;
  if (page == 0x7FFFFFFFFFFFFFFFLL || [(BKBookViewController *)self upsellPageNumber]== page)
  {
    v13 = 0;
  }

  else
  {
    track = [(BKThumbnailScrubber *)scrubberCopy track];

    v15 = -4;
    if (track != contextCopy)
    {
      v15 = 0;
    }

    if (self->_verticalScrubber == scrubberCopy)
    {
      v16 = 8;
    }

    else
    {
      v16 = v15;
    }

    imageCache = [(BKThumbnailBookViewController *)self imageCache];
    book = [(BKBookViewController *)self book];
    [(BKThumbnailBookViewController *)self _containerBoundsForGeometry];
    v13 = [imageCache thumbnailForPage:page asset:book size:self renderingCacheCallbackTarget:contextCopy renderingCacheCallbackContext:v16 priority:width containerBounds:{height, v19, v20, v21, v22}];
  }

  return v13;
}

- (void)thumbnailScrubber:(id)scrubber cancelPreviousRenderRequestsWithContext:(id)context
{
  imageCache = self->_imageCache;
  if (imageCache)
  {
    [(IMThumbnailRenderingCache *)imageCache cancelRenderingCacheOperationsForTarget:self context:context];
  }
}

- (void)setPageNumberHudTextLabelForValidatedPageNumber:(int64_t)number visiblePageCount:(unint64_t)count validatedPageCount:(unint64_t)pageCount
{
  v9 = [(BKBookViewController *)self pageTitleForPageNumber:?];
  v22 = v9;
  if (v9)
  {
    if (count == 2)
    {
      v17 = [(BKBookViewController *)self pageTitleForPageNumber:number + 1];
      v9 = v22;
    }

    else
    {
      v17 = 0;
    }

    if ([v9 length] && objc_msgSend(v17, "length"))
    {
      pageNumberHUD = self->_pageNumberHUD;
      v19 = AEBundle();
      v20 = [v19 localizedStringForKey:@"%@-%@" value:&stru_1E7188 table:0];
      v21 = [NSString stringWithFormat:v20, v22, v17];
      [(BKInfoHUD *)pageNumberHUD setInfoText:v21];

      goto LABEL_16;
    }

    if ([v22 length] || !objc_msgSend(v17, "length"))
    {
      v15 = self->_pageNumberHUD;
      v16 = v22;
      goto LABEL_15;
    }
  }

  else
  {
    if (count == 2)
    {
      numberCopy = number + 1;
    }

    else
    {
      numberCopy = number;
    }

    v11 = AEBundle();
    v12 = [v11 localizedStringForKey:@"%@ of %@" value:&stru_1E7188 table:0];
    v13 = [NSNumberFormatter imaxLocalizedUnsignedInteger:numberCopy usesGroupingSeparator:0];
    v14 = [NSNumberFormatter imaxLocalizedUnsignedInteger:pageCount usesGroupingSeparator:0];
    v17 = [NSString stringWithFormat:v12, v13, v14];
  }

  v15 = self->_pageNumberHUD;
  v16 = v17;
LABEL_15:
  [(BKInfoHUD *)v15 setInfoText:v16];
LABEL_16:
}

- (void)scrubValueChanged:(id)changed
{
  changedCopy = changed;
  v5 = changedCopy;
  if (self->_pageNumberHUD)
  {
    pageNumber = [changedCopy pageNumber];
    pageCountIncludingUpsell = [(BKBookViewController *)self pageCountIncludingUpsell];
    if (pageNumber != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = pageCountIncludingUpsell;
      if (pageCountIncludingUpsell != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(BKThumbnailBookViewController *)self currentPages];
        [(BKThumbnailBookViewController *)self setPageNumberHudTextLabelForValidatedPageNumber:pageNumber visiblePageCount:v9 validatedPageCount:v8];
      }
    }

    scrubber = [(BKThumbnailBookViewController *)self scrubber];
    callout = [scrubber callout];

    if (callout)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_106524;
      v12[3] = &unk_1E2BD0;
      v12[4] = self;
      [UIView animateWithDuration:v12 animations:0.2];
    }
  }
}

- (double)_infoHUDHeight
{
  v2 = +[UIFont bc_accessibilityFontSizesEnabled];
  result = 30.0;
  if (v2)
  {
    if (([UIFont bc_contentSizeCategoryIsGreaterThan:UIContentSizeCategoryAccessibilityExtraLarge, 30.0]& 1) != 0)
    {
      return 57.0;
    }

    else
    {
      v4 = [UIFont bc_contentSizeCategoryIsGreaterThan:UIContentSizeCategoryAccessibilityLarge];
      result = 40.0;
      if (v4)
      {
        return 50.0;
      }
    }
  }

  return result;
}

- (void)_updatePageNumberHUDVisible:(BOOL)visible
{
  pageNumberHUD = self->_pageNumberHUD;
  if (!pageNumberHUD)
  {
    return;
  }

  [(BKInfoHUD *)pageNumberHUD setAlpha:visible];
  currentPages = [(BKThumbnailBookViewController *)self currentPages];
  v7 = v6;
  pageCountIncludingUpsell = [(BKBookViewController *)self pageCountIncludingUpsell];
  if (currentPages != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = pageCountIncludingUpsell;
    if (pageCountIncludingUpsell != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [(BKBookViewController *)self pageNumberFromRange:currentPages, v7];
      v14 = [(BKBookViewController *)self pageTitleForPageNumber:v10];
      if (v14)
      {
        book = [(BKBookViewController *)self book];
        if ([book hasPhysicalPages])
        {
          v12 = [v14 length];

          if (v12)
          {
            goto LABEL_7;
          }
        }

        else
        {
        }

        [(BKInfoHUD *)self->_pageNumberHUD setAlpha:0.0];
        goto LABEL_14;
      }

LABEL_7:
      [(BKThumbnailBookViewController *)self setPageNumberHudTextLabelForValidatedPageNumber:v10 visiblePageCount:v7 validatedPageCount:v9];
LABEL_14:

      return;
    }
  }

  v13 = self->_pageNumberHUD;

  [(BKInfoHUD *)v13 setAlpha:0.0];
}

- (BOOL)shouldShowHUDs
{
  if ([(BKBookViewController *)self section])
  {
    return 0;
  }

  if ([(BKBookViewController *)self controlsVisible])
  {
    return 1;
  }

  return [(BKThumbnailBookViewController *)self catalystToolbarActive];
}

- (void)updateHUDVisibilityAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(BKThumbnailBookViewController *)self isViewLoaded])
  {
    shouldShowHUDs = [(BKThumbnailBookViewController *)self shouldShowHUDs];
    [(BCNavigationBar *)self->_topToolbar alpha];
    v6 = 16.0;
    if (v7 <= 0.0)
    {
      [(BCNavigationBar *)self->_topToolbar bounds];
      v6 = 8.0 - CGRectGetHeight(v17);
    }

    pageNumberHUDTopConstraint = [(BKThumbnailBookViewController *)self pageNumberHUDTopConstraint];
    [pageNumberHUDTopConstraint setConstant:v6];

    pageNumberHUD = [(BKThumbnailBookViewController *)self pageNumberHUD];
    [pageNumberHUD setNeedsUpdateConstraints];

    [(BCNavigationBar *)self->_topToolbar alpha];
    v11 = v10 > 0.0;
    pageNumberHUD2 = [(BKThumbnailBookViewController *)self pageNumberHUD];
    [pageNumberHUD2 setIsAccessibilityElement:v11];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1068FC;
    v15[3] = &unk_1E3ED8;
    v15[4] = self;
    v16 = shouldShowHUDs;
    v13 = objc_retainBlock(v15);
    v14 = v13;
    if (animatedCopy)
    {
      [UIView animateWithDuration:v13 animations:0.2];
    }

    else
    {
      (v13[2])(v13);
    }
  }
}

- (id)_bk_backgroundColor
{
  [(BCNavigationBar *)self->_topToolbar alpha];
  if (v3 > 0.0)
  {
    themePage = [(BKThumbnailBookViewController *)self themePage];
    [themePage backgroundColorForTraitEnvironment:self];
  }

  else
  {
    themePage = [(BKThumbnailBookViewController *)self traitCollection];
    [UIColor bc_darkSystemBackgroundForTraitCollection:themePage];
  }
  v5 = ;

  return v5;
}

- (void)showFontPicker:(id)picker
{
  pickerCopy = picker;
  if ([(UIBarButtonItem *)self->_fontBarButtonItem isEnabled])
  {
    [(BKBookViewController *)self presentAppearanceViewControllerFromItem:pickerCopy];
  }
}

- (id)appearanceMenuItems
{
  v3 = +[NSMutableArray array];
  if ([(BKThumbnailBookViewController *)self supportsBrightness])
  {
    [v3 addObject:@"BKAppearanceMenuItemBrightness"];
  }

  if ([(BKThumbnailBookViewController *)self supportsScrollLayout]&& ![(BKThumbnailBookViewController *)self isScrolledContinuousFixedLayout])
  {
    [v3 addObject:@"BKAppearanceMenuItemVerticalScrollingView"];
  }

  return v3;
}

- (void)appearanceViewController:(id)controller didChangeLayout:(unint64_t)layout
{
  controllerCopy = controller;
  location = [(BKBookViewController *)self location];
  v8.receiver = self;
  v8.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v8 appearanceViewController:controllerCopy didChangeLayout:layout];

  [(BKBookViewController *)self setLocation:location];
}

- (id)_directoryController
{
  directoryController = self->_directoryController;
  if (!directoryController)
  {
    v4 = objc_alloc_init(IMSegmentedViewController);
    v5 = self->_directoryController;
    self->_directoryController = v4;

    [(BKThumbnailBookViewController *)self addChildViewController:self->_directoryController];
    v6 = [(BKThumbnailBookViewController *)self _directoryForType:[(BKThumbnailBookViewController *)self directoryTypeForPageThumbnails]];
    v7 = [(BKThumbnailBookViewController *)self _directoryForType:[(BKThumbnailBookViewController *)self directoryTypeForTOC]];
    v8 = [(BKThumbnailBookViewController *)self _directoryForType:[(BKThumbnailBookViewController *)self directoryTypeForBookmarks]];
    v9 = [[NSArray alloc] initWithObjects:{v6, v7, v8, 0}];
    [(IMSegmentedViewController *)self->_directoryController setViewControllers:v9];

    directoryController = self->_directoryController;
  }

  return directoryController;
}

- (unint64_t)directoryType
{
  preferredLayoutCache = [(BKThumbnailBookViewController *)self preferredLayoutCache];
  book = [(BKBookViewController *)self book];
  self->_directoryType = [preferredLayoutCache preferredDirectoryTypeForBook:book];

  result = self->_directoryType;
  if (!result)
  {
    result = [(BKThumbnailBookViewController *)self defaultDirectoryType];
    self->_directoryType = result;
  }

  return result;
}

- (unint64_t)defaultDirectoryType
{
  book = [(BKBookViewController *)self book];
  if ([book suppressTOC])
  {
    directoryTypeForPageThumbnails = [(BKThumbnailBookViewController *)self directoryTypeForPageThumbnails];
  }

  else
  {
    directoryTypeForPageThumbnails = [(BKThumbnailBookViewController *)self directoryTypeForTOC];
  }

  v5 = directoryTypeForPageThumbnails;

  return v5;
}

- (void)setDirectoryType:(unint64_t)type
{
  if (self->_directoryType != type)
  {
    self->_directoryType = type;
    preferredLayoutCache = [(BKThumbnailBookViewController *)self preferredLayoutCache];
    directoryType = self->_directoryType;
    book = [(BKBookViewController *)self book];
    [preferredLayoutCache setPreferredDirectoryType:directoryType forBook:book];

    v7 = [(BKThumbnailBookViewController *)self segmentIndexForDirectoryType:self->_directoryType];
    _directoryController = [(BKThumbnailBookViewController *)self _directoryController];
    [_directoryController setSelectedIndex:v7];

    [(BKThumbnailBookViewController *)self _updateDirectorySwitch];
    [(BKBookViewController *)self updateToolbarController];

    [(BKBookViewController *)self notifyAppIntentsInfoChanged];
  }
}

- (id)_pageDirectory
{
  pageDirectory = self->_pageDirectory;
  if (!pageDirectory)
  {
    v4 = objc_alloc_init(BKPageThumbnailDirectory);
    v5 = self->_pageDirectory;
    self->_pageDirectory = v4;

    [(BKPageThumbnailDirectory *)self->_pageDirectory setPageCount:[(BKBookViewController *)self pageCountExcludingUpsell]];
    [(BKThumbnailDirectory *)self->_pageDirectory setLayoutDirection:[(BKViewController *)self layoutDirection]];
    [(BKThumbnailBookViewController *)self _contentAspectRatio];
    [(BKThumbnailDirectory *)self->_pageDirectory setCellAspectRatio:?];
    [(BKThumbnailBookViewController *)self addChildViewController:self->_pageDirectory];
    pageDirectory = self->_pageDirectory;
  }

  return pageDirectory;
}

- (id)_tocDirectory
{
  tocDirectory = self->_tocDirectory;
  if (!tocDirectory)
  {
    v4 = objc_alloc_init(BKTOCContentViewController);
    [(BKTOCContentViewController *)v4 setPreferredFontSize:19.0];
    v5 = self->_tocDirectory;
    self->_tocDirectory = &v4->super;
    v6 = v4;

    [(BKTOCViewController *)self->_tocDirectory setTocContentType:0];
    [(BCNavigationBar *)self->_topToolbar frame];
    [(BKTOCViewController *)self->_tocDirectory setCenteringInsets:CGRectGetMaxY(v10), 0.0, 0.0, 0.0];
    paginationController = [(BKBookViewController *)self paginationController];
    [(BKTOCViewController *)self->_tocDirectory setPaginationController:paginationController];

    [(BKViewController *)self->_tocDirectory setLayoutDirection:[(BKViewController *)self layoutDirection]];
    [(BKContentViewController *)self->_tocDirectory setLayoutDelegate:self];

    tocDirectory = self->_tocDirectory;
  }

  return tocDirectory;
}

- (id)_bookmarkDirectory
{
  bookmarkDirectory = self->_bookmarkDirectory;
  if (!bookmarkDirectory)
  {
    v4 = objc_alloc_init(BKBookmarkThumbnailDirectory);
    v5 = self->_bookmarkDirectory;
    self->_bookmarkDirectory = v4;

    [(BKThumbnailDirectory *)self->_bookmarkDirectory setLayoutDirection:[(BKViewController *)self layoutDirection]];
    [(BKThumbnailBookViewController *)self _contentAspectRatio];
    [(BKThumbnailDirectory *)self->_bookmarkDirectory setCellAspectRatio:?];
    [(BKThumbnailBookViewController *)self addChildViewController:self->_bookmarkDirectory];
    bookmarkDirectory = self->_bookmarkDirectory;
  }

  return bookmarkDirectory;
}

- (id)_pdfPageDirectory
{
  pdfPageDirectory = self->_pdfPageDirectory;
  if (!pdfPageDirectory)
  {
    v4 = objc_alloc_init(BKPDFPageThumbnailDirectory);
    [(BKThumbnailDirectory *)v4 setLayoutDirection:[(BKViewController *)self layoutDirection]];
    [(BKThumbnailBookViewController *)self _contentAspectRatio];
    [(BKThumbnailDirectory *)v4 setCellAspectRatio:?];
    [(BKPDFPageThumbnailDirectory *)v4 setShowBookmarksOnly:0];
    [(BKPDFPageThumbnailDirectory *)v4 setShowBookmarks:1];
    objc_opt_class();
    documentForDirectory = [(BKThumbnailBookViewController *)self documentForDirectory];
    v6 = BUDynamicCast();
    [(BKPDFPageThumbnailDirectory *)v4 setPdfDocument:v6];

    v7 = self->_pdfPageDirectory;
    self->_pdfPageDirectory = v4;

    pdfPageDirectory = self->_pdfPageDirectory;
  }

  return pdfPageDirectory;
}

- (id)_pdfOutlineDirectory
{
  pdfOutlineDirectory = self->_pdfOutlineDirectory;
  if (!pdfOutlineDirectory)
  {
    v4 = objc_alloc_init(BKPDFTOCViewController);
    [(BKPDFTOCViewController *)v4 setPreferredFontSize:19.0];
    [(BKTOCViewController *)v4 setTocContentType:0];
    [(BCNavigationBar *)self->_topToolbar frame];
    [(BKTOCViewController *)v4 setCenteringInsets:CGRectGetMaxY(v11), 0.0, 0.0, 0.0];
    paginationController = [(BKBookViewController *)self paginationController];
    [(BKTOCViewController *)v4 setPaginationController:paginationController];

    [(BKViewController *)v4 setLayoutDirection:[(BKViewController *)self layoutDirection]];
    [(BKContentViewController *)v4 setLayoutDelegate:self];
    objc_opt_class();
    documentForDirectory = [(BKThumbnailBookViewController *)self documentForDirectory];
    v7 = BUDynamicCast();
    [(BKPDFTOCViewController *)v4 setPdfDocument:v7];

    v8 = self->_pdfOutlineDirectory;
    self->_pdfOutlineDirectory = v4;

    pdfOutlineDirectory = self->_pdfOutlineDirectory;
  }

  return pdfOutlineDirectory;
}

- (id)_pdfBookmarkDirectory
{
  pdfBookmarkDirectory = self->_pdfBookmarkDirectory;
  if (!pdfBookmarkDirectory)
  {
    v4 = objc_alloc_init(BKPDFPageThumbnailDirectory);
    [(BKThumbnailDirectory *)v4 setLayoutDirection:[(BKViewController *)self layoutDirection]];
    [(BKThumbnailBookViewController *)self _contentAspectRatio];
    [(BKThumbnailDirectory *)v4 setCellAspectRatio:?];
    [(BKPDFPageThumbnailDirectory *)v4 setShowBookmarksOnly:1];
    [(BKPDFPageThumbnailDirectory *)v4 setShowBookmarks:1];
    objc_opt_class();
    documentForDirectory = [(BKThumbnailBookViewController *)self documentForDirectory];
    v6 = BUDynamicCast();
    [(BKPDFPageThumbnailDirectory *)v4 setPdfDocument:v6];

    v7 = self->_pdfBookmarkDirectory;
    self->_pdfBookmarkDirectory = v4;

    pdfBookmarkDirectory = self->_pdfBookmarkDirectory;
  }

  return pdfBookmarkDirectory;
}

- (id)_directoryForType:(unint64_t)type
{
  v4 = 0;
  if (type > 3)
  {
    switch(type)
    {
      case 4uLL:
        _pdfPageDirectory = [(BKThumbnailBookViewController *)self _pdfPageDirectory];
        break;
      case 5uLL:
        _pdfPageDirectory = [(BKThumbnailBookViewController *)self _pdfOutlineDirectory];
        break;
      case 6uLL:
        _pdfPageDirectory = [(BKThumbnailBookViewController *)self _pdfBookmarkDirectory];
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    switch(type)
    {
      case 1uLL:
        _pdfPageDirectory = [(BKThumbnailBookViewController *)self _pageDirectory];
        break;
      case 2uLL:
        _pdfPageDirectory = [(BKThumbnailBookViewController *)self _tocDirectory];
        break;
      case 3uLL:
        _pdfPageDirectory = [(BKThumbnailBookViewController *)self _bookmarkDirectory];
        break;
      default:
        goto LABEL_15;
    }
  }

  v4 = _pdfPageDirectory;
LABEL_15:
  book = [(BKBookViewController *)self book];
  [v4 setBook:book];

  objc_opt_class();
  theme = [(BKThumbnailBookViewController *)self theme];
  v8 = BUDynamicCast();
  [v4 setTheme:v8];

  [v4 setDirectoryDelegate:self];

  return v4;
}

- (void)directorySwitchPressed:(id)pressed
{
  v4 = -[BKThumbnailBookViewController directoryTypeForSegmentIndex:](self, "directoryTypeForSegmentIndex:", [pressed selectedSegmentIndex]);

  [(BKThumbnailBookViewController *)self setDirectoryType:v4];
}

- (void)_updateDirectorySwitch
{
  v3 = [(BKThumbnailBookViewController *)self segmentIndexForDirectoryType:[(BKThumbnailBookViewController *)self directoryType]];
  directorySwitch = self->_directorySwitch;
  if (directorySwitch)
  {
    numberOfSegments = [(UISegmentedControl *)directorySwitch numberOfSegments];
    directorySwitch = self->_directorySwitch;
    if (v3 >= numberOfSegments)
    {
      v3 = [(UISegmentedControl *)directorySwitch numberOfSegments]- 1;
      directorySwitch = self->_directorySwitch;
    }
  }

  [(UISegmentedControl *)directorySwitch setSelectedSegmentIndex:v3];
}

- (void)directoryContent:(id)content didSelectLocation:(id)location
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_107674;
  v6[3] = &unk_1E2BD0;
  v6[4] = self;
  locationCopy = location;
  [(BKBookViewController *)self recordedJumpToLocation:locationCopy animated:0 completion:v6];
  [(BKBookViewController *)self setLocation:locationCopy];
}

- (int64_t)directoryContent:(id)content pageNumberForLocation:(id)location
{
  locationCopy = location;
  paginationController = [(BKBookViewController *)self paginationController];
  v7 = [paginationController pageNumberForLocation:locationCopy];

  return v7;
}

- (void)tocViewController:(id)controller didSelectChapter:(id)chapter
{
  chapterCopy = chapter;
  objc_opt_class();
  pageNavigationViewController = [(BKBookViewController *)self pageNavigationViewController];
  v7 = BUDynamicCast();

  paginationController = [(BKBookViewController *)self paginationController];
  v9 = [paginationController pageRangeForChapter:chapterCopy];
  v11 = v10;

  v12 = [(BKBookViewController *)self pageNumberFromRange:v9, v11];
  v13 = v12;
  if ((v12 - 1) >= 0x7FFFFFFFFFFFFFFELL)
  {
    v14 = _AEBookPluginsPageTurnLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v17 = v13;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "Received invalid page number %ld", buf, 0xCu);
    }

    [(BKThumbnailBookViewController *)self setSection:0 animated:+[UIView adjustScrollToReveal:"areAnimationsEnabled"], 0];
  }

  else if (v7)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_107920;
    v15[3] = &unk_1E4548;
    v15[4] = self;
    v15[5] = v12;
    [v7 turnToPageNumber:v12 animated:0 completion:v15];
  }

  else
  {
    [(BKThumbnailBookViewController *)self setSection:0 animated:+[UIView adjustScrollToReveal:"areAnimationsEnabled"], 0];
    [(BKThumbnailBookViewController *)self turnToPageNumber:v13 animated:0];
  }
}

- (id)thumbnailDirectory:(id)directory thumbnailForPage:(int64_t)page size:(CGSize)size context:(id)context
{
  if (page == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    height = size.height;
    width = size.width;
    contextCopy = context;
    imageCache = [(BKThumbnailBookViewController *)self imageCache];
    book = [(BKBookViewController *)self book];
    [(BKThumbnailBookViewController *)self _containerBoundsForGeometry];
    v6 = [imageCache thumbnailForPage:page asset:book size:self renderingCacheCallbackTarget:contextCopy renderingCacheCallbackContext:0 priority:width containerBounds:{height, v14, v15, v16, v17}];
  }

  return v6;
}

- (void)thumbnailDirectory:(id)directory cancelPreviousRenderRequestsWithContext:(id)context
{
  contextCopy = context;
  imageCache = [(BKThumbnailBookViewController *)self imageCache];
  [imageCache cancelRenderingCacheOperationsForTarget:self context:contextCopy];
}

- (void)contentViewReady:(id)ready
{
  v4.receiver = self;
  v4.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v4 contentViewReady:ready];
  [(BKThumbnailBookViewController *)self updateTopToolbar:0];
  [(BKBookViewController *)self readingLocationChanged];
}

- (UIEdgeInsets)edgeInsetsForContentViewController:(id)controller
{
  configuration = [(BKThumbnailBookViewController *)self configuration];
  [configuration sideContentInset];
  v6 = v5;
  configuration2 = [(BKThumbnailBookViewController *)self configuration];
  [configuration2 sideContentInset];
  v9 = v8;

  v10 = 0.0;
  v11 = 0.0;
  v12 = v6;
  v13 = v9;
  result.right = v13;
  result.bottom = v11;
  result.left = v12;
  result.top = v10;
  return result;
}

- (id)transitionContentView
{
  if ([(BKThumbnailBookViewController *)self directoryTOCIsVisible])
  {
    view = [(BKThumbnailBookViewController *)self view];
  }

  else
  {
    pageNavigationViewController = [(BKBookViewController *)self pageNavigationViewController];
    view = [pageNavigationViewController contentView];
  }

  return view;
}

- (id)transitionContentBackgroundColor
{
  backgroundView = [(BKThumbnailBookViewController *)self backgroundView];
  backgroundColor = [backgroundView backgroundColor];

  return backgroundColor;
}

- (id)analyticsReadingSettingsData
{
  v3 = +[UIScreen mainScreen];
  [v3 brightness];
  v5 = v4;

  layout = [(BKBookViewController *)self layout];
  if (layout - 1 > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = qword_193988[layout - 1];
  }

  v8 = [BAReadingSettingsData alloc];
  v9 = [NSNumber numberWithDouble:v5];
  v10 = [v8 initWithScrollViewStatus:v7 autoNightThemeStatus:0 backgroundColor:4 font:&stru_1E7188 fontSize:&off_1F1550 brightnessLevel:v9];

  return v10;
}

+ (BOOL)verticalScrollFeatureEnabled
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"BKMangaVerticalScrollModeDisabled-v2"];

  return v3 ^ 1;
}

- (BOOL)isInterfaceRTL
{
  if (![(BKThumbnailBookViewController *)self isViewLoaded])
  {
    return 0;
  }

  view = [(BKThumbnailBookViewController *)self view];
  v4 = +[UIView userInterfaceLayoutDirectionForSemanticContentAttribute:](UIView, "userInterfaceLayoutDirectionForSemanticContentAttribute:", [view semanticContentAttribute]) == &dword_0 + 1;

  return v4;
}

- (CGRect)_containerBoundsForGeometry
{
  viewIfLoaded = [(BKThumbnailBookViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  v4 = window;
  if (window || (window = viewIfLoaded) != 0)
  {
    [window bounds];
    x = v5;
    y = v7;
    width = v9;
    height = v11;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)_updateToolbarPositionAndBackgroundExtension
{
  window = [(BCNavigationBar *)self->_topToolbar window];
  windowScene = [window windowScene];

  statusBarManager = [windowScene statusBarManager];
  [statusBarManager defaultStatusBarHeightInOrientation:{objc_msgSend(windowScene, "interfaceOrientation")}];
  v6 = v5;

  if ([(BKThumbnailBookViewController *)self im_isCompactHeight])
  {
    v6 = 0.0;
  }

  [(BCNavigationBar *)self->_topToolbar _setOverrideBackgroundExtension:v6];
  [(NSLayoutConstraint *)self->_topBarTopConstraint setConstant:v6];
}

- (void)buildHoverControlRegionWithBuilder:(id)builder
{
  builderCopy = builder;
  view = [(BKThumbnailBookViewController *)self view];
  [view bounds];
  v6 = v5;
  v8 = v7;

  view2 = [(BKThumbnailBookViewController *)self view];
  [(BCNavigationBar *)self->_topToolbar bounds];
  [view2 convertRect:self->_topToolbar fromView:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v33.origin.x = v11;
  v33.origin.y = v13;
  v33.size.width = v15;
  v33.size.height = v17;
  MaxY = CGRectGetMaxY(v33);
  if ([(BKBookViewController *)self controlsVisible])
  {
    v19 = 1.0;
  }

  else
  {
    v19 = 0.5;
  }

  [builderCopy addRegionWithRect:{v6, 0.0, v8, MaxY * v19}];
  view3 = [(BKThumbnailBookViewController *)self view];
  [view3 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v34.origin.x = v22;
  v34.origin.y = v24;
  v34.size.width = v26;
  v34.size.height = v28;
  v29 = fmax(CGRectGetMaxY(v34) + -60.0, 0.0);
  if ([(BKBookViewController *)self controlsVisible])
  {
    v30 = 1.0;
  }

  else
  {
    v30 = 0.5;
  }

  [builderCopy addRegionWithRect:{v22, v28 - v30 * (v28 - v29), v26}];
}

@end