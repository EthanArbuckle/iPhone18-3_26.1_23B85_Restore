@interface BKThumbnailBookViewController
+ (BOOL)verticalScrollFeatureEnabled;
- (BKPreferredLayoutCache)preferredLayoutCache;
- (BKThumbnailBookViewConfiguration)configuration;
- (BKThumbnailBookViewController)initWithBook:(id)a3 storeID:(id)a4;
- (BKThumbnailScrubber)verticalScrubber;
- (BOOL)_isShowingUpsellPage;
- (BOOL)_isUsingContent:(id)a3;
- (BOOL)_shouldNavBarShowTitle;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canShowBookmarks;
- (BOOL)canShowControlsDuringOpenClose;
- (BOOL)canShowTableOfContents;
- (BOOL)canShowThumbnails;
- (BOOL)directoryTOCIsVisible;
- (BOOL)hasHighlightedText;
- (BOOL)isAnnotationVisible:(id)a3;
- (BOOL)isInterfaceRTL;
- (BOOL)isLocationOnCurrentPage:(id)a3;
- (BOOL)isScrolledContinuousFixedLayout;
- (BOOL)shouldDisplayBuyButton;
- (BOOL)shouldDisplayContentsButton;
- (BOOL)shouldShowBrightnessControl;
- (BOOL)shouldShowHUDs;
- (BOOL)supportsScrollLayout;
- (BOOL)turnPages:(int64_t)a3 animated:(BOOL)a4;
- (CGRect)_containerBoundsForGeometry;
- (NSArray)configurations;
- (NSDictionary)directoryTypeToSegmentIndex;
- (NSDictionary)segmentIndexToDirectoryType;
- (UIEdgeInsets)edgeInsetsForContentViewController:(id)a3;
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
- (id)_directoryForType:(unint64_t)a3;
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
- (id)contentViewControllerForPageNumber:(int64_t)a3;
- (id)currentPageLocation;
- (id)directoryTOCViewControllerView;
- (id)editRedoBarButtonItem;
- (id)editUndoBarButtonItem;
- (id)existingContentViewControllerForPageNumber:(int64_t)a3;
- (id)fontButton;
- (id)newGlassButton;
- (id)scrubber;
- (id)scrubberBarButtonItem;
- (id)snapshotView:(id)a3;
- (id)thumbnailDirectory:(id)a3 thumbnailForPage:(int64_t)a4 size:(CGSize)a5 context:(id)a6;
- (id)thumbnailScrubber:(id)a3 thumbnailForPage:(int64_t)a4 size:(CGSize)a5 context:(id)a6;
- (id)tocToolTip;
- (id)transitionContentBackgroundColor;
- (id)transitionContentView;
- (id)visibleContentViewController;
- (int64_t)bookToolbarMode;
- (int64_t)directoryContent:(id)a3 pageNumberForLocation:(id)a4;
- (int64_t)positionForBar:(id)a3;
- (int64_t)segmentIndexForDirectoryType:(unint64_t)a3;
- (unint64_t)defaultDirectoryType;
- (unint64_t)directoryType;
- (unint64_t)directoryTypeForSegmentIndex:(int64_t)a3;
- (unint64_t)validLayoutForBook:(id)a3 desiredLayout:(unint64_t)a4;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)_update;
- (void)_updateDirectorySwitch;
- (void)_updateLibraryBarButtonItem;
- (void)_updatePageNumberHUDVisible:(BOOL)a3;
- (void)_updateToolbarPositionAndBackgroundExtension;
- (void)_zoomInAnimationDidStop:(id)a3;
- (void)_zoomOutAnimationDidStop:(id)a3;
- (void)appearanceViewController:(id)a3 didChangeLayout:(unint64_t)a4;
- (void)assetViewControllerDidEndLiveResize;
- (void)assetViewControllerDidEnterFullScreen;
- (void)assetViewControllerDidExitFullScreen;
- (void)assetViewControllerDidFinishUpdateForLiveResize;
- (void)assetViewControllerUpdateToolbars;
- (void)assetViewControllerWillBeginLiveResize;
- (void)bookContentViewImage:(id)a3;
- (void)books_decreaseZoom:(id)a3;
- (void)books_disableContinuousScroll:(id)a3;
- (void)books_enableContinuousScroll:(id)a3;
- (void)books_increaseZoom:(id)a3;
- (void)books_resetZoom:(id)a3;
- (void)books_showBookmarks:(id)a3;
- (void)books_showTableOfContents:(id)a3;
- (void)books_showThumbnails:(id)a3;
- (void)books_toggleContinuousScroll:(id)a3;
- (void)books_togglePlaying:(id)a3;
- (void)buildHoverControlRegionWithBuilder:(id)a3;
- (void)close:(BOOL)a3;
- (void)contentSizeCategoryDidChange;
- (void)contentViewReady:(id)a3;
- (void)dealloc;
- (void)didChangeLocationClosing:(BOOL)a3 suspending:(BOOL)a4;
- (void)directoryContent:(id)a3 didSelectLocation:(id)a4;
- (void)directorySwitchPressed:(id)a3;
- (void)handleEditRedo:(id)a3;
- (void)handleEditUndo:(id)a3;
- (void)handleEditUndoAll:(id)a3;
- (void)highlightSearchResult:(id)a3;
- (void)jumpToLocation:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)makeContentVisible;
- (void)makeTOCVisible;
- (void)pageCountDidUpdate;
- (void)pageNavigationDidChangeLocation:(id)a3;
- (void)pageNavigationDidRemoveContentForPageNumber:(int64_t)a3;
- (void)pageNavigationDidRemoveContentViewController:(id)a3;
- (void)releaseViews;
- (void)renderingCacheCallbackImage:(id)a3 context:(id)a4 pageNumber:(int64_t)a5;
- (void)resume:(id)a3;
- (void)scrubValueChanged:(id)a3;
- (void)setControlsVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setDirectoryType:(unint64_t)a3;
- (void)setLayout:(unint64_t)a3;
- (void)setPageNumberHudTextLabelForValidatedPageNumber:(int64_t)a3 visiblePageCount:(unint64_t)a4 validatedPageCount:(unint64_t)a5;
- (void)setSection:(int)a3 animated:(BOOL)a4 adjustScrollToReveal:(BOOL)a5;
- (void)setTopToolBarVisible:(BOOL)a3;
- (void)showBookmarksFromToolbar:(id)a3;
- (void)showFontPicker:(id)a3;
- (void)showLibrary:(id)a3;
- (void)showOverlayViewController:(id)a3 fromView:(id)a4 popoverOnPhone:(BOOL)a5 passthroughViews:(id)a6;
- (void)showTOC:(id)a3;
- (void)showTOCFromToolbar:(id)a3;
- (void)showThumbnailTOCFromToolbar:(id)a3;
- (void)storeChangedNotification:(id)a3;
- (void)thumbnailDirectory:(id)a3 cancelPreviousRenderRequestsWithContext:(id)a4;
- (void)thumbnailScrubber:(id)a3 cancelPreviousRenderRequestsWithContext:(id)a4;
- (void)tocViewController:(id)a3 didSelectChapter:(id)a4;
- (void)toggleControls:(id)a3;
- (void)toggleEditAssetMode:(id)a3;
- (void)turnToPageNumber:(int64_t)a3 animated:(BOOL)a4;
- (void)updateBookmarkButton:(BOOL)a3;
- (void)updateBottomToolbar:(BOOL)a3;
- (void)updateHUDVisibilityAnimated:(BOOL)a3;
- (void)updateScrubber:(_NSRange)a3;
- (void)updateTopToolbar:(BOOL)a3;
- (void)validateCommand:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BKThumbnailBookViewController

- (BKThumbnailBookViewController)initWithBook:(id)a3 storeID:(id)a4
{
  v8.receiver = self;
  v8.super_class = BKThumbnailBookViewController;
  v4 = [(BKBookViewController *)&v8 initWithBook:a3 storeID:a4];
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
  v3 = [(BKThumbnailBookViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [[UIView alloc] initWithFrame:{v5, v7, v9, v11}];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v12;

  [(UIView *)self->_backgroundView setAutoresizingMask:18];
  [(UIView *)self->_backgroundView setOpaque:1];
  v14 = [(BKThumbnailBookViewController *)self view];
  [v14 insertSubview:self->_backgroundView atIndex:0];

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
  v22 = [(BKThumbnailBookViewController *)self theme];
  v23 = [v22 headerTextColor];
  v24 = [NSDictionary dictionaryWithObject:v23 forKey:NSForegroundColorAttributeName];
  [(BCNavigationBar *)v21 setTitleTextAttributes:v24];

  v78 = objc_alloc_init(_UIScrollPocketCollectorInteraction);
  v79 = [[_UIScrollPocketContainerInteraction alloc] initWithScrollView:0 edge:1];
  [v79 _setCollectorInteraction:v78];
  v25 = [(BKThumbnailBookViewController *)self topToolbar];
  [v25 addInteraction:v79];

  v26 = [(BKThumbnailBookViewController *)self view];
  [v26 addInteraction:v78];

  v27 = [(BKThumbnailBookViewController *)self theme];
  [v27 stylizeBCNavigationBarTranslucent:self->_topToolbar];

  v28 = [(BKThumbnailBookViewController *)self view];
  [v28 addSubview:self->_topToolbar];

  v76 = [(BCNavigationBar *)self->_topToolbar leadingAnchor];
  v77 = [(BKThumbnailBookViewController *)self view];
  v75 = [v77 leadingAnchor];
  v74 = [v76 constraintEqualToAnchor:v75];
  v82[0] = v74;
  v29 = [(BCNavigationBar *)self->_topToolbar trailingAnchor];
  v30 = [(BKThumbnailBookViewController *)self view];
  v31 = [v30 trailingAnchor];
  v32 = [v29 constraintEqualToAnchor:v31];
  v82[1] = v32;
  v33 = [(BCNavigationBar *)self->_topToolbar topAnchor];
  v34 = [(BKThumbnailBookViewController *)self view];
  v35 = [v34 topAnchor];
  v36 = [v33 constraintEqualToAnchor:v35];
  topBarTopConstraint = self->_topBarTopConstraint;
  self->_topBarTopConstraint = v36;

  v82[2] = v36;
  v38 = [NSArray arrayWithObjects:v82 count:3];
  [NSLayoutConstraint activateConstraints:v38];

  [(BKBookViewController *)self setSection:0];
  [(BKThumbnailBookViewController *)self updateTopToolbar:0];
  v39 = [[BKInfoHUD alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  pageNumberHUD = self->_pageNumberHUD;
  self->_pageNumberHUD = v39;

  [(BKInfoHUD *)self->_pageNumberHUD setUsesMonospacedDigitFont:1];
  [(BKInfoHUD *)self->_pageNumberHUD setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BKInfoHUD *)self->_pageNumberHUD setAlpha:0.0];
  [(BKInfoHUD *)self->_pageNumberHUD setUserInteractionEnabled:0];
  v41 = [(BKThumbnailBookViewController *)self view];
  [v41 addSubview:self->_pageNumberHUD];

  v42 = [(BKInfoHUD *)self->_pageNumberHUD trailingAnchor];
  v43 = [(BKThumbnailBookViewController *)self view];
  v44 = [v43 safeAreaLayoutGuide];
  v45 = [v44 trailingAnchor];
  v46 = [v42 constraintEqualToAnchor:v45 constant:-16.0];

  LODWORD(v47) = 1148846080;
  [v46 setPriority:v47];
  v48 = [(BCNavigationBar *)self->_topToolbar bottomAnchor];
  v49 = [(BKInfoHUD *)self->_pageNumberHUD topAnchor];
  v50 = [v49 constraintEqualToAnchor:v48 constant:16.0];
  [(BKThumbnailBookViewController *)self setPageNumberHUDTopConstraint:v50];

  v51 = [(BKInfoHUD *)self->_pageNumberHUD heightAnchor];
  [(BKThumbnailBookViewController *)self _infoHUDHeight];
  v52 = [v51 constraintGreaterThanOrEqualToConstant:?];
  [(BKThumbnailBookViewController *)self setPageNumberHUDHeightConstraint:v52];

  v53 = [(BKInfoHUD *)self->_pageNumberHUD widthAnchor];
  v54 = [(BKInfoHUD *)self->_pageNumberHUD superview];
  v55 = [v54 widthAnchor];
  [(BKThumbnailBookViewController *)self defaultPageNumberHUDWidthConstraintConstant];
  v56 = [v53 constraintLessThanOrEqualToAnchor:v55 constant:?];
  pageNumberHUDWidthConstraint = self->_pageNumberHUDWidthConstraint;
  self->_pageNumberHUDWidthConstraint = v56;

  v58 = [(BKThumbnailBookViewController *)self pageNumberHUDTopConstraint];
  v81[0] = v58;
  v59 = [(BKThumbnailBookViewController *)self pageNumberHUDHeightConstraint];
  v60 = self->_pageNumberHUDWidthConstraint;
  v81[1] = v59;
  v81[2] = v60;
  v81[3] = v46;
  v61 = [NSArray arrayWithObjects:v81 count:4];
  [NSLayoutConstraint activateConstraints:v61];

  v62 = [(BKBookViewController *)self location];
  [(BKThumbnailBookViewController *)self setInitialJumpLocation:v62];

  v63 = [(BKBookViewController *)self pageNavigationViewController];
  v64 = [v63 view];

  [v64 setFrame:{v5, v7, v9, v11}];
  v65 = [(BKThumbnailBookViewController *)self view];
  [v65 insertSubview:v64 aboveSubview:self->_backgroundView];

  [(BKBookViewController *)self createPaginationControllerIfNeeded:1];
  v66 = [(BKThumbnailBookViewController *)self pageNumberHUD];
  [v66 setAccessibilityContainerType:4];

  v67 = [(BKThumbnailBookViewController *)self topToolbar];
  [v67 _accessibilitySetSortPriority:5000];

  v68 = [(BKThumbnailBookViewController *)self pageNumberHUD];
  [v68 _accessibilitySetSortPriority:4000];

  v69 = [(BKThumbnailBookViewController *)self verticalScrubber];
  [v69 _accessibilitySetSortPriority:3000];

  v70 = [(BKThumbnailBookViewController *)self scrubber];
  [v70 _accessibilitySetSortPriority:2000];

  v71 = [(BKThumbnailBookViewController *)self _bk_backgroundColor];
  [(UIView *)self->_backgroundView setBackgroundColor:v71];

  v72 = [(BKBookViewController *)self book];
  v73 = [v72 assetID];
  [(BKThumbnailBookViewController *)self bc_setBookAppEntityVisible:v73];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v24.receiver = self;
  v24.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v24 viewIsAppearing:?];
  v5 = [(BKThumbnailBookViewController *)self currentPages];
  [(BKThumbnailBookViewController *)self updateScrubber:v5, v6];
  [(BKThumbnailBookViewController *)self updateHUDVisibilityAnimated:v3];
  v7 = [(BKThumbnailBookViewController *)self presentedViewController];

  if (!v7)
  {
    [(BKBookViewController *)self setControlsVisible:[(BKThumbnailBookViewController *)self canShowControlsDuringOpenClose]];
    [(BKThumbnailBookViewController *)self setNeedsStatusBarAppearanceUpdate];
  }

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"contentSizeCategoryDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];

  v9 = [(BKBookViewController *)self pageNavigationViewController];
  v10 = [v9 viewControllers];

  if (![v10 count])
  {
    v11 = [(BKThumbnailBookViewController *)self visibleContentViewController];

    if (v11)
    {
      v12 = [(BKThumbnailBookViewController *)self visibleContentViewController];
      v26 = v12;
      v13 = [NSArray arrayWithObjects:&v26 count:1];

      v10 = v13;
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = v10;
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

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  if (a3)
  {
    [(BKThumbnailBookViewController *)self _updateLibraryBarButtonItem:a3];

    [(BKThumbnailBookViewController *)self _updateToolbarPositionAndBackgroundExtension];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v6 viewWillDisappear:a3];
  [(IMThumbnailRenderingCache *)self->_imageCache cancelRenderingCacheOperationsForTarget:self];
  v4 = [(BKThumbnailBookViewController *)self currentLocation];
  [(BKBookViewController *)self setLocation:v4];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v12 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(BKBookViewController *)self assetViewControllerDelegate];
  v9 = [v8 inLiveResize];

  if ((v9 & 1) == 0)
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
    [v7 animateAlongsideTransition:v11 completion:v10];
  }
}

- (void)contentSizeCategoryDidChange
{
  [(BKThumbnailBookViewController *)self _infoHUDHeight];
  v4 = v3;
  v5 = [(BKThumbnailBookViewController *)self pageNumberHUDHeightConstraint];
  [v5 setConstant:v4];

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

  v7 = [(BKBookViewController *)self book];
  LODWORD(v4) = [v7 suppressTOC];

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

- (int64_t)segmentIndexForDirectoryType:(unint64_t)a3
{
  v4 = [(BKThumbnailBookViewController *)self directoryTypeToSegmentIndex];
  v5 = [v4 allKeys];
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v8 = [NSNumber numberWithUnsignedInteger:a3];
    v9 = [v4 objectForKeyedSubscript:v8];
    v10 = [v9 integerValue];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)directoryTypeForSegmentIndex:(int64_t)a3
{
  v4 = [(BKThumbnailBookViewController *)self segmentIndexToDirectoryType];
  v5 = [v4 allKeys];
  v6 = [NSNumber numberWithInteger:a3];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v8 = [NSNumber numberWithInteger:a3];
    v9 = [v4 objectForKeyedSubscript:v8];
    v10 = [v9 unsignedIntegerValue];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)close:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v5 close:a3];
  v4 = [(BKBookViewController *)self actionController];
  [v4 cancelActions];
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
  v3 = [(BKThumbnailBookViewController *)self imageCache];
  [v3 cancelRenderingCacheOperationsForTarget:self];

  v4 = [(BKThumbnailBookViewController *)self imageCache];
  [v4 suspend];
}

- (void)assetViewControllerDidEndLiveResize
{
  v2.receiver = self;
  v2.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v2 assetViewControllerDidEndLiveResize];
}

- (void)assetViewControllerDidFinishUpdateForLiveResize
{
  v2 = [(BKThumbnailBookViewController *)self imageCache];
  [v2 resume];
}

- (void)assetViewControllerDidExitFullScreen
{
  v2 = [(BKThumbnailBookViewController *)self imageCache];
  [v2 resume];
}

- (void)assetViewControllerDidEnterFullScreen
{
  v2 = [(BKThumbnailBookViewController *)self imageCache];
  [v2 resume];
}

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v5 = [(BKThumbnailBookViewController *)self themePage:a3];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(BKThumbnailBookViewController *)self directoryController];
  v7 = [v6 childViewControllers];
  v8 = [v7 arrayByAddingObject:self];

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

  v13 = [(BKThumbnailBookViewController *)self configuration];
  [v13 invalidate];

  [(BKThumbnailBookViewController *)self _update];
  [v5 stylizeBCNavigationBarTranslucent:self->_topToolbar];
  v14 = [(BKThumbnailBookViewController *)self initialJumpLocation];

  if (v14)
  {
    v15 = [(BKThumbnailBookViewController *)self initialJumpLocation];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_FFDA8;
    v16[3] = &unk_1E2BD0;
    v16[4] = self;
    [(BKThumbnailBookViewController *)self jumpToLocation:v15 animated:0 completion:v16];
  }
}

- (void)viewWillLayoutSubviews
{
  v2 = [(BKThumbnailBookViewController *)self configuration];
  [v2 invalidate];
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
  v2 = [(BKThumbnailBookViewController *)self configuration];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (void)setLayout:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v4 setLayout:a3];
  [(BKBookViewController *)self updateToolbarController];
}

- (BOOL)hasHighlightedText
{
  v3 = [(BKThumbnailBookViewController *)self currentPages];
  if (v3 >= &v3[v4])
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v5 = v3;
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

- (void)highlightSearchResult:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v11 highlightSearchResult:v4];
  if (v4)
  {
    v5 = [(BKThumbnailBookViewController *)self currentPages];
    if (v5 < &v5[v6])
    {
      v7 = v5;
      v8 = v6;
      do
      {
        v9 = [(BKThumbnailBookViewController *)self contentViewControllerForPageNumber:v7];
        v10 = [v4 location];
        [v9 highlightSearchLocation:v10];

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

- (BOOL)isLocationOnCurrentPage:(id)a3
{
  v4 = a3;
  if (v4 && (![v4 isMemberOfClass:objc_opt_class()] || -[BKThumbnailBookViewController canOrdinalOnlyLocationsBeVisible](self, "canOrdinalOnlyLocationsBeVisible")) && (-[BKBookViewController paginationController](self, "paginationController"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "pageNumberForDocumentOrdinal:", objc_msgSend(v4, "ordinal")), v5, v6 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v8 = [(BKThumbnailBookViewController *)self currentPages];
    v7 = v6 >= v8 && v6 - v8 < v9;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isAnnotationVisible:(id)a3
{
  v4 = a3;
  v5 = [v4 location];
  v6 = [(BKThumbnailBookViewController *)self isLocationOnCurrentPage:v5];

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

    v9 = [v4 annotationUuid];
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "isAnnotationVisible: Annotation is %@ for: %@", &v11, 0x16u);
  }

  return v6;
}

- (BOOL)turnPages:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(BKBookViewController *)self pageNavigationViewController];
  -[BKThumbnailBookViewController turnToPageNumber:animated:](self, "turnToPageNumber:animated:", [v7 pageOffset] + a3 + 1, v4);

  return 1;
}

- (void)turnToPageNumber:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  [BKPageNavigationViewController turnToPageNumber:"turnToPageNumber:animated:" animated:?];
  v7.receiver = self;
  v7.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v7 turnToPageNumber:a3 animated:v4];
}

- (void)jumpToLocation:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v15 = a3;
  v8 = a5;
  v9 = [(BKBookViewController *)self paginationController];

  if (v9)
  {
    [(BKBookViewController *)self clearSelection];
    v10 = [(BKBookViewController *)self paginationController];
    v11 = [v10 pageNumberForLocation:v15];

    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    [(BKThumbnailBookViewController *)self turnToPageNumber:v12 animated:v6];
  }

  v13 = objc_retainBlock(v8);
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
    v3 = [(BKThumbnailBookViewController *)self currentPages];
    [(BKThumbnailBookViewController *)self updateScrubber:v3, v4];
    [(BKThumbnailBookViewController *)self updateHUDVisibilityAnimated:0];
    [(BKThumbnailBookViewController *)self updateBookmarkButton:1];
  }
}

- (void)didChangeLocationClosing:(BOOL)a3 suspending:(BOOL)a4
{
  v11.receiver = self;
  v11.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v11 didChangeLocationClosing:a3 suspending:a4];
  v6 = [(BKThumbnailBookViewController *)self _isShowingUpsellPage];
  v7 = [(BKThumbnailBookViewController *)self currentLocation];
  [(BKBookViewController *)self setLocation:v7];

  v8 = [(BKThumbnailBookViewController *)self _isShowingUpsellPage];
  [(BKThumbnailBookViewController *)self setInitialJumpLocation:0];
  if (!a3)
  {
    v9 = [(BKThumbnailBookViewController *)self currentPages];
    [(BKThumbnailBookViewController *)self updateScrubber:v9, v10];
    [(BKThumbnailBookViewController *)self updateHUDVisibilityAnimated:0];
    [(BKThumbnailBookViewController *)self updateBookmarkButton:0];
    if (v6 != v8)
    {
      [(BKThumbnailBookViewController *)self updateTopToolbar:1];
    }
  }
}

- (unint64_t)validLayoutForBook:(id)a3 desiredLayout:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = BKThumbnailBookViewController;
  result = [(BKBookViewController *)&v6 validLayoutForBook:a3 desiredLayout:a4];
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

- (int64_t)positionForBar:(id)a3
{
  if (self->_topToolbar == a3)
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
  v3 = [(BKThumbnailBookViewController *)self currentPages];
  [(BKThumbnailBookViewController *)self updateScrubber:v3, v4];
  [(BKThumbnailBookViewController *)self updateTopToolbar:0];
  [(BKThumbnailBookViewController *)self updateBottomToolbar:0];
  [(BKThumbnailBookViewController *)self updateHUDVisibilityAnimated:0];

  [(BKThumbnailBookViewController *)self _updateDirectorySwitch];
}

- (void)updateTopToolbar:(BOOL)a3
{
  v3 = a3;
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
      v9 = [v8 userInterfaceIdiom];

      if ((v9 & 0xFFFFFFFFFFFFFFFBLL) == 1 && ([(BKThumbnailBookViewController *)self im_isCompactWidth]& 1) == 0)
      {
        v29 = [(BKThumbnailBookViewController *)self _directorySwitchBarButtonItem];
        if (v29)
        {
          [v5 addObject:v29];
        }

        v10 = v6;

        v13 = v3;
        if (v7)
        {
          [v5 addObject:v7];
        }

        v15 = 0;
      }

      else
      {
        v10 = v6;
        v11 = [(BKBookViewController *)self actionController];
        v12 = [v11 barButtonItem];
        if (v12)
        {
          [v5 addObject:v12];
        }

        v13 = v3;

        v14 = [(BKThumbnailBookViewController *)self _directorySwitchBarButtonItem];
        v15 = self->_directorySwitch;
      }

      v30 = [UIBarButtonItemGroup alloc];
      v31 = [(BKThumbnailBookViewController *)self _resumeBarButtonItem];
      v64 = v31;
      v32 = [NSArray arrayWithObjects:&v64 count:1];
      v33 = [v30 initWithBarButtonItems:v32 representativeItem:0];
      if (v33)
      {
        [v63 addObject:v33];
      }

      [(BKThumbnailBookViewController *)self _updateToolbarPositionAndBackgroundExtension];
      v3 = v13;
      v6 = v10;
      if (v15)
      {
        [(BCNavigationBar *)self->_topToolbar setLeftItems:v5 rightItems:0 titleView:v15 animated:0];
LABEL_77:
        [(BCNavigationBar *)self->_topToolbar setRightItemGroups:v63];
        [(BKThumbnailBookViewController *)self updateHUDVisibilityAnimated:v3];

        return;
      }
    }

    else
    {
      if (self->_libraryBarButtonItem)
      {
        v16 = [(BKThumbnailBookViewController *)self _libraryBarButtonItem];
        if (v16)
        {
          [v5 addObject:v16];
        }
      }

      if ([(BKThumbnailBookViewController *)self shouldShowTOCControl])
      {
        v17 = [(BKThumbnailBookViewController *)self _tocBarButtonItem];
        if (v17)
        {
          [v5 addObject:v17];
        }
      }

      v18 = [(BKBookViewController *)self assetViewControllerDelegate];
      v19 = [v18 assetViewControllerMinifiedBarButtonItem:self];
      if (v19)
      {
        [v5 addObject:v19];
      }

      if (![(BKThumbnailBookViewController *)self shouldShowUndoControls]&& ([(BKThumbnailBookViewController *)self im_isCompactWidth]& 1) == 0)
      {
        v20 = [(BKBookViewController *)self actionController];
        v21 = [v20 barButtonItem];
        if (v21)
        {
          [v5 addObject:v21];
        }
      }

      v22 = [(BKThumbnailBookViewController *)self _buyBarButtonItem];
      if (v22)
      {
        v23 = +[BUBag defaultBag];
        v24 = [v23 storeFront];
        if ([v24 isLoaded])
        {
          v25 = [(BKThumbnailBookViewController *)self _isShowingUpsellPage];

          if ((v25 & 1) == 0)
          {
            [v22 setSharesBackground:0];
            v26 = [(BKThumbnailBookViewController *)self theme];
            v27 = [v26 isNight:self];

            v28 = [(BKBookViewController *)self assetViewControllerDelegate];
            [v28 assetViewController:self updateBuyButton:v22 setIsDark:v27];

            [v5 addObject:v22];
          }
        }

        else
        {
        }

        v34 = 0;
      }

      else
      {
        [(BKThumbnailBookViewController *)self updateBookmarkButton:v3];
        v34 = [(BKThumbnailBookViewController *)self _bookmarkBarButtonItem];
      }

      if ([(BKThumbnailBookViewController *)self shouldShowUndoControls])
      {
        v61 = v22;
        v35 = v34;
        v36 = v6;
        v37 = v3;
        v38 = [UIBarButtonItemGroup alloc];
        v39 = [(BKThumbnailBookViewController *)self editUndoBarButtonItem];
        v66[0] = v39;
        v40 = [(BKThumbnailBookViewController *)self editRedoBarButtonItem];
        v66[1] = v40;
        v41 = [NSArray arrayWithObjects:v66 count:2];
        v42 = [v38 initWithBarButtonItems:v41 representativeItem:0];
        if (v42)
        {
          [v63 addObject:v42];
        }

        [(BKThumbnailBookViewController *)self _evaluateUndoRedoEnabled];
        v3 = v37;
        v6 = v36;
        v34 = v35;
        v22 = v61;
      }

      if ([(BKThumbnailBookViewController *)self shouldShowBookmarkControl]&& v34)
      {
        [v6 addObject:v34];
      }

      if ((!v22 || ([(BKThumbnailBookViewController *)self im_isCompactWidth]& 1) == 0) && ![(BKThumbnailBookViewController *)self isScrolledContinuousFixedLayout])
      {
        v43 = [(BKThumbnailBookViewController *)self _searchBarButtonItem];
        if (v43)
        {
          [v6 addObject:v43];
        }
      }

      if ([(BKThumbnailBookViewController *)self shouldShowBrightnessControl])
      {
        v44 = [(BKThumbnailBookViewController *)self _brightnessBarButtonItem];
        if (v44)
        {
          [v6 addObject:v44];
        }
      }

      if ([(BKThumbnailBookViewController *)self supportsScrollLayout])
      {
        v45 = [(BKThumbnailBookViewController *)self _fontBarButtonItem];
        if (v45)
        {
          [v6 addObject:v45];
        }
      }

      if ([(BKThumbnailBookViewController *)self _shouldShowAudioToolbarButton])
      {
        v46 = [(BKThumbnailBookViewController *)self _audioBarButtonItem];
        if (v46)
        {
          [v6 addObject:v46];
        }
      }

      if ([(BKThumbnailBookViewController *)self supportsDocumentEditing])
      {
        v47 = [(BKThumbnailBookViewController *)self _editToolboxBarButtonItem];
        if ([(BKThumbnailBookViewController *)self assetEditingEnabled])
        {
          topToolbar = self->_topToolbar;
          v48 = [UIBarButtonItemGroup alloc];
          v65 = v47;
          [NSArray arrayWithObjects:&v65 count:1];
          v49 = v22;
          v50 = v34;
          v51 = v6;
          v53 = v52 = v3;
          v54 = [v48 initWithBarButtonItems:v53 representativeItem:0];
          [(BCNavigationBar *)topToolbar setPinnedTrailingGroup:v54];

          v3 = v52;
          v6 = v51;
          v34 = v50;
          v22 = v49;
        }

        else if (v47)
        {
          [v6 addObject:v47];
        }
      }

      v55 = [UIBarButtonItemGroup alloc];
      v56 = [v6 bu_reversedArray];
      v57 = [v55 initWithBarButtonItems:v56 representativeItem:0];
      if (v57)
      {
        [v63 addObject:v57];
      }

      [(BKThumbnailBookViewController *)self _updateToolbarPositionAndBackgroundExtension];
    }

    v58 = self->_topToolbar;
    if ([(BKThumbnailBookViewController *)self _shouldNavBarShowTitle])
    {
      v59 = [(BKBookViewController *)self book];
      v60 = [v59 bookTitle];
      [(BCNavigationBar *)v58 setLeftItems:v5 rightItems:0 title:v60 animated:0];
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
  v3 = [(BKThumbnailBookViewController *)self view];
  [v3 bounds];
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

  v7 = [(BKThumbnailBookViewController *)self directoryTOCViewControllerView];
  v8 = [v7 superview];
  if (v8)
  {
    v9 = [(BKThumbnailBookViewController *)self directoryTOCViewControllerView];
    [v9 alpha];
    v6 = v10 > 0.0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)updateBottomToolbar:(BOOL)a3
{
  v3 = a3;
  if ([(BKThumbnailBookViewController *)self wantsBottomToolbar]&& ![(BKBookViewController *)self section]&& [(BKBookViewController *)self controlsVisible])
  {
    v5 = [(BKBookViewController *)self assetViewControllerDelegate];
    v6 = [v5 inLiveResize] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(BKThumbnailBookViewController *)self toolbarItems];
  v8 = [v7 count];

  if (!v8)
  {
    v9 = [(BKThumbnailBookViewController *)self scrubberBarButtonItem];
    v21 = v9;
    v10 = [NSArray arrayWithObjects:&v21 count:1];
    [(BKThumbnailBookViewController *)self setToolbarItems:v10];
  }

  if (_os_feature_enabled_impl())
  {
    v11 = objc_opt_new();
    v12 = [(BKThumbnailBookViewController *)self navigationController];
    v13 = [v12 toolbar];
    [v13 setScrollEdgeAppearance:v11];
  }

  if (v3)
  {
    v14 = UINavigationControllerHideShowBarDuration;
  }

  else
  {
    v14 = 0.0;
  }

  v15 = [(BKThumbnailBookViewController *)self navigationController];
  [v15 _setToolbarHidden:v6 ^ 1 edge:15 duration:v14];

  v16 = [(BKThumbnailBookViewController *)self scrubber];
  v17 = v16;
  if ((v6 ^ 1))
  {
    [v16 cancelPendingRenderRequests];
  }

  else
  {
    v18 = [v16 layer];
    [v18 removeAllAnimations];

    v19 = [(BKThumbnailBookViewController *)self currentPages];
    [(BKThumbnailBookViewController *)self updateScrubber:v19, v20];
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
  v3 = [(UIBarButtonItem *)self->_libraryBarButtonItem title];
  if (!v3)
  {
    v4 = [(UIBarButtonItem *)self->_libraryBarButtonItem image];

    if (v4)
    {
      v3 = &stru_1E7188;
    }

    else
    {
      v3 = 0;
    }
  }

  v10 = v3;
  v5 = [(BKBookViewController *)self assetViewControllerDelegate];
  v6 = [v5 libraryButtonItemForViewController:self selector:"showLibrary:"];
  libraryBarButtonItem = self->_libraryBarButtonItem;
  self->_libraryBarButtonItem = v6;

  v8 = [(BKBookViewController *)self assetViewControllerDelegate];
  v9 = [v8 canUpdateLibraryBarButtonItem:self->_libraryBarButtonItem withOldString:v10];

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
    v8 = [(UIBarButtonItem *)self->_fontBarButtonItem image];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1016E4;
    v14 = &unk_1E5FA0;
    objc_copyWeak(&v15, &location);
    v9 = [UIAction actionWithTitle:v7 image:v8 identifier:0 handler:&v11];
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
    v8 = [(UIBarButtonItem *)self->_searchBarButtonItem image];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1018FC;
    v14 = &unk_1E5FA0;
    objc_copyWeak(&v15, &location);
    v9 = [UIAction actionWithTitle:v7 image:v8 identifier:0 handler:&v11];
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
  v3 = [(BKThumbnailBookViewController *)self supportsBrightness];
  if (v3)
  {
    LOBYTE(v3) = ![(BKThumbnailBookViewController *)self supportsScrollLayout];
  }

  return v3;
}

- (BOOL)isScrolledContinuousFixedLayout
{
  v2 = [(BKBookViewController *)self book];
  v3 = [v2 fixedLayoutFlow];
  v4 = [v3 isEqualToString:@"scrolled-continuous"];

  return v4;
}

- (BOOL)supportsScrollLayout
{
  if (+[BKThumbnailBookViewController verticalScrollFeatureEnabled])
  {
    v3 = [(BKBookViewController *)self book];
    if ([v3 hasMediaOverlayElements])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v5 = [(BKBookViewController *)self book];
      v4 = [v5 isScrollModeDisabled] ^ 1;
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
    v5 = [(BKThumbnailBookViewController *)self _bookmarkButton];
    v6 = [v4 initWithView:v5];

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
    v4 = [(BKThumbnailBookViewController *)self newGlassButton];
    v5 = self->_bookmarkButton;
    self->_bookmarkButton = v4;

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
    v4 = [(BKBookViewController *)self assetViewControllerDelegate];
    v15 = [(BKBookViewController *)self book];
    v5 = [v15 sampleContent];
    v6 = [v5 BOOLValue];
    v7 = [(BKBookViewController *)self book];
    v8 = [v7 isPreorder];
    v9 = [v8 BOOLValue];
    v10 = [(BKBookViewController *)self book];
    v11 = [v10 storeId];
    v12 = [v4 assetViewControllerBuyButtonItem:self isSample:v6 isPreorder:v9 storeID:v11];
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

    v21 = [(BKBookViewController *)self book];
    v22 = [v21 suppressTOC];

    v23 = [NSArray alloc];
    if (v22)
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
  v3 = [(BKPageNavigationViewController *)self->super._pageNavigationViewController pageOffset];
  v4 = [(BKBookViewController *)self pageCountIncludingUpsell];
  if (v3 + 1 < v4)
  {
    v5 = v3 + 1;
  }

  else
  {
    v5 = v4;
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
  v3 = [(BKThumbnailBookViewController *)self currentPages];
  v5 = [(BKBookViewController *)self pageNumberFromRange:v3, v4];

  return [(BKThumbnailBookViewController *)self existingContentViewControllerForPageNumber:v5];
}

- (id)existingContentViewControllerForPageNumber:(int64_t)a3
{
  v4 = [(BKBookViewController *)self pageLocationForPageNumber:a3];
  if (v4)
  {
    v5 = [(BKBookViewController *)self contentViewControllers];
    v6 = [v5 objectForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)contentViewControllerForPageNumber:(int64_t)a3
{
  v5 = [(BKThumbnailBookViewController *)self existingContentViewControllerForPageNumber:?];
  if (!v5)
  {
    v6 = [(BKBookViewController *)self pageLocationForPageNumber:a3];
    v5 = [(BKBookViewController *)self contentViewControllerForLocation:v6];
    [v5 setDelegate:self];
    if (v5)
    {
      v7 = [(BKThumbnailBookViewController *)self imageCache];
      [v5 setContentViewImageCache:v7];

      v8 = [(BKBookViewController *)self contentViewControllers];
      [v8 setObject:v5 forKey:v6];

      [(BKPageNavigationViewController *)self->super._pageNavigationViewController addChildViewController:v5];
    }
  }

  return v5;
}

- (BOOL)_isUsingContent:(id)a3
{
  pageNavigationViewController = self->super._pageNavigationViewController;
  v4 = a3;
  v5 = [(BKPageNavigationViewController *)pageNavigationViewController allViewControllers];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)pageNavigationDidRemoveContentForPageNumber:(int64_t)a3
{
  v7 = [(BKBookViewController *)self pageLocationForPageNumber:a3];
  v4 = [(BKBookViewController *)self contentViewControllers];
  v5 = [v4 objectForKey:v7];

  if (v5 && ![(BKThumbnailBookViewController *)self _isUsingContent:v5])
  {
    [v5 removeFromParentViewController];
    v6 = [(BKBookViewController *)self contentViewControllers];
    [v6 removeObjectForKey:v7];
  }
}

- (void)pageNavigationDidRemoveContentViewController:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v9 = v4;
    v4 = [(BKThumbnailBookViewController *)self _isUsingContent:v4];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = [(BKBookViewController *)self contentViewControllers];
      v7 = [v6 allKeysForObject:v9];

      [v9 removeFromParentViewController];
      v8 = [(BKBookViewController *)self contentViewControllers];
      [v8 removeObjectsForKeys:v7];

      v5 = v9;
    }
  }

  _objc_release_x1(v4, v5);
}

- (void)pageNavigationDidChangeLocation:(id)a3
{
  v4.receiver = self;
  v4.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v4 pageNavigationDidChangeLocation:a3];
  [(BKThumbnailBookViewController *)self didChangeLocationClosing:0 suspending:0];
}

- (void)setControlsVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  if ([(BKBookViewController *)self section]== 1)
  {
    v9 = 1;
  }

  else
  {
    v10 = [(BKBookViewController *)self searchViewController];
    if ([v10 isVisible])
    {
      v9 = 1;
    }

    else
    {
      v9 = [(BKAppearanceViewController *)self->super._appearanceViewController isVisible];
    }
  }

  v11 = v9 | v6;
  v12 = [(BKBookViewController *)self assetViewControllerDelegate];
  v13 = [v12 inLiveResize];

  v14 = (v13 ^ 1) & v11;
  if (v14 != [(BKBookViewController *)self controlsVisible]|| [(BKBookViewController *)self bkaxAccessibilityUserIsRequestingControlsVisibilityToggle]|| v14 && (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning()))
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_102B48;
    v17[3] = &unk_1E5FC8;
    v17[4] = self;
    v18 = (v13 ^ 1) & v11;
    v19 = v5;
    v15 = objc_retainBlock(v17);
    [(BKThumbnailBookViewController *)self updateTopToolbar:v5];
    v16.receiver = self;
    v16.super_class = BKThumbnailBookViewController;
    [(BKBookViewController *)&v16 setControlsVisible:v14 animated:v5 animations:v15 completion:v8];
  }

  else if (v8)
  {
    v8[2](v8);
  }
}

- (void)setTopToolBarVisible:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    [(BCNavigationBar *)self->_topToolbar setAlpha:1.0];
    [(BCNavigationBar *)self->_topToolbar setAccessibilityElementsHidden:0];
  }

  else
  {
    [(BKBookViewController *)self dismissCurrentPopoverWithCompletion:0 animated:1];
  }

  [(BCNavigationBar *)self->_topToolbar setAlpha:v3];
  topToolbar = self->_topToolbar;

  [(BCNavigationBar *)topToolbar setAccessibilityElementsHidden:!v3];
}

- (void)toggleControls:(id)a3
{
  v4 = [(BKBookViewController *)self controlsVisible];
  if ((v4 & 1) != 0 || ![(BKThumbnailBookViewController *)self hasHighlightedText])
  {
    if ([(BKBookViewController *)self bkaxAccessibilityUserIsRequestingControlsVisibilityToggle]|| !UIAccessibilityIsVoiceOverRunning() && !UIAccessibilityIsSwitchControlRunning())
    {
      v5 = +[UIView areAnimationsEnabled];

      [(BKBookViewController *)self setControlsVisible:v4 ^ 1 animated:v5];
    }
  }

  else
  {
    [(BKBookViewController *)self clearSearchResult];

    [(BKBookViewController *)self clearSelection];
  }
}

- (void)showTOC:(id)a3
{
  v4 = a3;
  v5 = [(BKBookViewController *)self actionController];
  [v5 cancelActions];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_102E2C;
  v7[3] = &unk_1E3F50;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(BKThumbnailBookViewController *)self setControlsVisible:1 animated:1 completion:v7];
}

- (void)toggleEditAssetMode:(id)a3
{
  v4 = a3;
  v5 = [(BKBookViewController *)self actionController];
  [v5 cancelActions];

  v6.receiver = self;
  v6.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v6 toggleEditAssetMode:v4];
}

- (void)handleEditUndo:(id)a3
{
  v4 = a3;
  v5 = [(BKBookViewController *)self actionController];
  [v5 cancelActions];

  v6.receiver = self;
  v6.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v6 handleEditUndo:v4];
}

- (void)handleEditRedo:(id)a3
{
  v4 = a3;
  v5 = [(BKBookViewController *)self actionController];
  [v5 cancelActions];

  v6.receiver = self;
  v6.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v6 handleEditRedo:v4];
}

- (void)handleEditUndoAll:(id)a3
{
  v4 = a3;
  v5 = [(BKBookViewController *)self actionController];
  [v5 cancelActions];

  v6.receiver = self;
  v6.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v6 handleEditUndoAll:v4];
}

- (void)resume:(id)a3
{
  v4 = a3;
  v5 = [(BKBookViewController *)self actionController];
  [v5 cancelActions];

  v6.receiver = self;
  v6.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v6 resume:v4];
}

- (void)showLibrary:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_103140;
  v4[3] = &unk_1E3F50;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(BKViewController *)v5 dismissCurrentPopoverWithCompletion:v4];
}

- (void)showOverlayViewController:(id)a3 fromView:(id)a4 popoverOnPhone:(BOOL)a5 passthroughViews:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(BKBookViewController *)self actionController];
  [v13 cancelActions];

  v14.receiver = self;
  v14.super_class = BKThumbnailBookViewController;
  [(BKViewController *)&v14 showOverlayViewController:v12 fromItem:v11 popoverOnPhone:v6 passthroughViews:v10 popoverBackgroundColor:0];
}

- (void)showTOCFromToolbar:(id)a3
{
  v4 = a3;
  if ([(BKThumbnailBookViewController *)self canShowTableOfContents])
  {
    [(BKThumbnailBookViewController *)self books_showTableOfContents:v4];
  }

  else if ([(BKBookViewController *)self canShowContent])
  {
    [(BKBookViewController *)self books_showContent:v4];
  }
}

- (void)showThumbnailTOCFromToolbar:(id)a3
{
  v4 = a3;
  if ([(BKThumbnailBookViewController *)self canShowThumbnails])
  {
    [(BKThumbnailBookViewController *)self books_showThumbnails:v4];
  }

  else if ([(BKBookViewController *)self canShowContent])
  {
    [(BKBookViewController *)self books_showContent:v4];
  }
}

- (void)showBookmarksFromToolbar:(id)a3
{
  v4 = a3;
  if ([(BKThumbnailBookViewController *)self canShowBookmarks])
  {
    [(BKThumbnailBookViewController *)self books_showBookmarks:v4];
  }

  else if ([(BKBookViewController *)self canShowContent])
  {
    [(BKBookViewController *)self books_showContent:v4];
  }
}

- (BOOL)shouldDisplayBuyButton
{
  v2 = [(BKBookViewController *)self book];
  v3 = [v2 sampleContent];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)shouldDisplayContentsButton
{
  v2 = [(BKBookViewController *)self book];
  v3 = [v2 suppressTOC];

  return v3 ^ 1;
}

- (int64_t)bookToolbarMode
{
  v5.receiver = self;
  v5.super_class = BKThumbnailBookViewController;
  result = [(BKBookViewController *)&v5 bookToolbarMode];
  if (!result)
  {
    v4 = [(BKThumbnailBookViewController *)self directoryType];
    if (v4 - 1 > 5)
    {
      return 0;
    }

    else
    {
      return qword_193958[v4 - 1];
    }
  }

  return result;
}

- (id)bookToolbarTitle
{
  v2 = [(BKBookViewController *)self asset];
  v3 = [v2 displayTitle];

  return v3;
}

- (id)buttonTitleColor
{
  v3 = +[UIColor bc_booksWhite];
  objc_opt_class();
  v4 = [(BKThumbnailBookViewController *)self theme];
  v5 = BUDynamicCast();

  if (v5)
  {
    v6 = [v5 buttonColor];
    v7 = [v6 bc_invertedDynamicColor];

    v3 = v7;
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

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v20 validateCommand:v4];
  v5 = [v4 action];
  if (!sel_isEqual(v5, "books_toggleContinuousScroll:"))
  {
    if (sel_isEqual(v5, "books_disableContinuousScroll:"))
    {
      v6 = self->super._layout == 1;
      goto LABEL_5;
    }

    if (sel_isEqual(v5, "books_enableContinuousScroll:"))
    {
      [v4 setState:self->super._layout == 2];
      v8 = AEBundle();
      v9 = v8;
      v10 = @"Vertical Scrolling";
LABEL_18:
      v13 = [v8 localizedStringForKey:v10 value:&stru_1E7188 table:0];
      [v4 setTitle:v13];

LABEL_19:
      goto LABEL_20;
    }

    if (sel_isEqual(v5, "books_chapterRight:"))
    {
      v11 = [(BKViewController *)self layoutDirection];
      v9 = AEBundle();
      if (v11 == 1)
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
      if (!sel_isEqual(v5, "books_chapterLeft:"))
      {
        if (!sel_isEqual(v5, "books_togglePlaying:"))
        {
          goto LABEL_20;
        }

        v14 = [(BKBookViewController *)self isReading];
        v15 = AEBundle();
        v16 = v15;
        if (v14)
        {
          v17 = [v15 localizedStringForKey:@"Pause" value:&stru_1E7188 table:0];
          [v4 setTitle:v17];

          v18 = @"pause";
        }

        else
        {
          v19 = [v15 localizedStringForKey:@"Play" value:&stru_1E7188 table:0];
          [v4 setTitle:v19];

          v18 = @"play";
        }

        v9 = [UIImage systemImageNamed:v18];
        [v4 setImage:v9];
        goto LABEL_19;
      }

      v12 = [(BKViewController *)self layoutDirection];
      v9 = AEBundle();
      if (v12 != 1)
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
  [v4 setState:v7];
LABEL_20:
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v14.receiver = self;
  v14.super_class = BKThumbnailBookViewController;
  v6 = [(BKBookViewController *)&v14 canPerformAction:a3 withSender:a4];
  objc_opt_class();
  v7 = [(BKBookViewController *)self pageNavigationViewController];
  v8 = BUDynamicCast();

  if (!sel_isEqual(a3, "books_showTableOfContents:"))
  {
    if (sel_isEqual(a3, "books_showThumbnails:"))
    {
      if (v6)
      {
        v9 = [(BKThumbnailBookViewController *)self canShowThumbnails];
        goto LABEL_10;
      }

      goto LABEL_28;
    }

    if (sel_isEqual(a3, "books_showBookmarks:"))
    {
      if (v6)
      {
        v9 = [(BKThumbnailBookViewController *)self canShowBookmarks];
        goto LABEL_10;
      }

      goto LABEL_28;
    }

    if (sel_isEqual(a3, "books_toggleContinuousScroll:") || sel_isEqual(a3, "books_disableContinuousScroll:") || sel_isEqual(a3, "books_enableContinuousScroll:"))
    {
      v11 = [(BKThumbnailBookViewController *)self shouldDisplayReadaloudControls];
    }

    else
    {
      if (sel_isEqual(a3, "books_increaseZoom:"))
      {
        if (v6)
        {
          v9 = [v8 canZoomMore];
          goto LABEL_10;
        }

        goto LABEL_28;
      }

      if (!sel_isEqual(a3, "books_resetZoom:") && !sel_isEqual(a3, "books_decreaseZoom:"))
      {
        if (!sel_isEqual(a3, "books_togglePlaying:"))
        {
          if (sel_isEqual(a3, "books_stopPlaying:"))
          {
            if (!v6)
            {
              goto LABEL_28;
            }
          }

          else
          {
            isEqual = sel_isEqual(a3, "books_skipBackward:");
            if ((isEqual & v6 & 1) == 0)
            {
              v10 = !isEqual & v6;
              goto LABEL_29;
            }
          }

          v9 = [(BKBookViewController *)self isReading];
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

      v11 = [v8 isZoomedToSpread];
    }

    v10 = v11 ^ 1;
    goto LABEL_29;
  }

  if (!v6)
  {
    goto LABEL_28;
  }

  v9 = [(BKThumbnailBookViewController *)self canShowTableOfContents];
LABEL_10:
  v10 = v9;
LABEL_29:

  return v10;
}

- (BOOL)canShowTableOfContents
{
  v3 = [(BKBookViewController *)self book];
  v4 = [v3 suppressTOC];

  if (v4)
  {
    return 0;
  }

  if ([(BKBookViewController *)self section]!= 1)
  {
    return 1;
  }

  v6 = [(BKThumbnailBookViewController *)self directoryType];
  return v6 != [(BKThumbnailBookViewController *)self directoryTypeForTOC];
}

- (BOOL)canShowThumbnails
{
  if ([(BKBookViewController *)self section]!= 1)
  {
    return 1;
  }

  v3 = [(BKThumbnailBookViewController *)self directoryType];
  return v3 != [(BKThumbnailBookViewController *)self directoryTypeForPageThumbnails];
}

- (BOOL)canShowBookmarks
{
  if ([(BKBookViewController *)self section]!= 1)
  {
    return 1;
  }

  v3 = [(BKThumbnailBookViewController *)self directoryType];
  return v3 != [(BKThumbnailBookViewController *)self directoryTypeForBookmarks];
}

- (void)books_showTableOfContents:(id)a3
{
  v4 = a3;
  [(BKThumbnailBookViewController *)self setDirectoryType:[(BKThumbnailBookViewController *)self directoryTypeForTOC]];
  [(BKThumbnailBookViewController *)self showTOC:v4];
}

- (void)books_showBookmarks:(id)a3
{
  v4 = a3;
  [(BKThumbnailBookViewController *)self setDirectoryType:[(BKThumbnailBookViewController *)self directoryTypeForBookmarks]];
  [(BKThumbnailBookViewController *)self showTOC:v4];
}

- (void)books_showThumbnails:(id)a3
{
  v4 = a3;
  [(BKThumbnailBookViewController *)self setDirectoryType:[(BKThumbnailBookViewController *)self directoryTypeForPageThumbnails]];
  [(BKThumbnailBookViewController *)self showTOC:v4];
}

- (void)books_toggleContinuousScroll:(id)a3
{
  v4 = a3;
  if ([(BKBookViewController *)self layout]== &dword_0 + 1)
  {
    [(BKThumbnailBookViewController *)self books_enableContinuousScroll:v4];
  }

  else
  {
    [(BKThumbnailBookViewController *)self books_disableContinuousScroll:v4];
  }
}

- (void)books_disableContinuousScroll:(id)a3
{
  v4 = [(BKBookViewController *)self location];
  [(BKThumbnailBookViewController *)self setLayout:1];
  [(BKBookViewController *)self setLocation:v4];
}

- (void)books_enableContinuousScroll:(id)a3
{
  v4 = [(BKBookViewController *)self location];
  [(BKThumbnailBookViewController *)self setLayout:2];
  [(BKBookViewController *)self setLocation:v4];
}

- (void)books_togglePlaying:(id)a3
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

- (void)books_resetZoom:(id)a3
{
  objc_opt_class();
  v4 = [(BKBookViewController *)self pageNavigationViewController];
  v6 = BUDynamicCast();

  v5 = v6;
  if (v6)
  {
    [v6 zoomToSpread:1];
    v5 = v6;
  }
}

- (void)books_increaseZoom:(id)a3
{
  objc_opt_class();
  v4 = [(BKBookViewController *)self pageNavigationViewController];
  v7 = BUDynamicCast();

  v6 = v7;
  if (v7)
  {
    v5 = [v7 supportsSinglePageMode];
    v6 = v7;
    if (v5)
    {
      v5 = [v7 zoomToLeadingPageAnimated:1];
      v6 = v7;
    }
  }

  _objc_release_x1(v5, v6);
}

- (void)books_decreaseZoom:(id)a3
{
  objc_opt_class();
  v4 = [(BKBookViewController *)self pageNavigationViewController];
  v6 = BUDynamicCast();

  v5 = v6;
  if (v6)
  {
    [v6 zoomToSpread:1];
    v5 = v6;
  }
}

- (void)setSection:(int)a3 animated:(BOOL)a4 adjustScrollToReveal:(BOOL)a5
{
  if (self->super._section != a3)
  {
    v12 = v5;
    v13 = v6;
    v7 = a4;
    v11.receiver = self;
    v11.super_class = BKThumbnailBookViewController;
    [BKBookViewController setSection:"setSection:animated:adjustScrollToReveal:" animated:? adjustScrollToReveal:?];
    [(BKThumbnailBookViewController *)self updateHUDVisibilityAnimated:v7];
    if (a3)
    {
      if (a3 == 1)
      {
        [(BKThumbnailBookViewController *)self makeTOCVisible];
      }
    }

    else
    {
      [(BKThumbnailBookViewController *)self makeContentVisible];
    }

    [(BKThumbnailBookViewController *)self updateTopToolbar:v7];
    [(BKThumbnailBookViewController *)self updateBottomToolbar:v7];
    v10 = [(BKThumbnailBookViewController *)self scrubber];
    [v10 loadAnyMissingThumbnails];
  }
}

- (id)snapshotView:(id)a3
{
  v3 = a3;
  [v3 bounds];
  if (v4 <= 0.0 || (v6 = v5, v5 <= 0.0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_139334(v3);
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
    v13 = v3;
    v10 = [v9 imageWithActions:v12];
  }

  return v10;
}

- (id)bookContentViewControllerView
{
  v2 = [(BKBookViewController *)self pageNavigationViewController];
  v3 = [v2 view];

  return v3;
}

- (id)directoryTOCViewControllerView
{
  v2 = [(BKThumbnailBookViewController *)self directoryController];
  v3 = [v2 view];

  return v3;
}

- (BOOL)directoryTOCIsVisible
{
  v2 = [(IMSegmentedViewController *)self->_directoryController viewIfLoaded];
  v3 = [v2 superview];
  v4 = v3 != 0;

  return v4;
}

- (id)bookContentView
{
  v2 = [(BKBookViewController *)self pageNavigationViewController];
  v3 = [v2 contentView];

  return v3;
}

- (void)bookContentViewImage:(id)a3
{
  v4 = a3;
  v5 = [(BKBookViewController *)self pageNavigationViewController];
  [v5 contentViewImage:1 afterScreenUpdates:0 completion:v4];
}

- (void)makeTOCVisible
{
  v3 = [(BKThumbnailBookViewController *)self segmentIndexForDirectoryType:[(BKThumbnailBookViewController *)self directoryType]];
  v4 = [(BKThumbnailBookViewController *)self directoryController];
  v5 = [v4 selectedIndex];

  if (v5 != v3)
  {
    v6 = [(BKThumbnailBookViewController *)self directoryController];
    [v6 setSelectedIndex:v3];
  }

  v7 = [(BKThumbnailBookViewController *)self bookContentViewController];
  v8 = [(BKThumbnailBookViewController *)self directoryTOCViewController];
  v9 = [(BKThumbnailBookViewController *)self directoryTOCViewControllerView];
  if ([(BKThumbnailBookViewController *)v7 isViewLoaded])
  {
    v10 = [(BKThumbnailBookViewController *)self bookContentViewControllerView];
  }

  else
  {
    v10 = 0;
  }

  if (v7 == self)
  {
    v12 = 0;
  }

  else
  {
    v11 = [(BKThumbnailBookViewController *)self view];
    v12 = v10 != v11;
  }

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setAlpha:1.0];
  if (v12)
  {
    [(BKThumbnailBookViewController *)v7 beginAppearanceTransition:0 animated:+[UIView areAnimationsEnabled]];
  }

  v98 = v12;
  [v8 beginAppearanceTransition:1 animated:{+[UIView areAnimationsEnabled](UIView, "areAnimationsEnabled")}];
  topToolbar = self->_topToolbar;
  if (topToolbar)
  {
    [(BCNavigationBar *)topToolbar frame];
    [v8 setAdditionalSafeAreaInsets:{v14, 0.0, 0.0, 0.0}];
  }

  v15 = [(BKThumbnailBookViewController *)self view];
  v16 = [(BKThumbnailBookViewController *)self backgroundView];
  [v15 insertSubview:v9 aboveSubview:v16];

  v17 = [v9 leftAnchor];
  v18 = [(BKThumbnailBookViewController *)self view];
  v19 = [v18 leftAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  v21 = [v9 rightAnchor];
  v22 = [(BKThumbnailBookViewController *)self view];
  v23 = [v22 rightAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  [v24 setActive:1];

  v25 = [v9 bottomAnchor];
  v26 = [(BKThumbnailBookViewController *)self view];
  v27 = [v26 bottomAnchor];
  v28 = [v25 constraintEqualToAnchor:v27];
  [v28 setActive:1];

  v29 = [v9 topAnchor];
  v30 = [(BKThumbnailBookViewController *)self view];
  v31 = [v30 topAnchor];
  v32 = [v29 constraintEqualToAnchor:v31];
  [v32 setActive:1];

  v33 = [(BKThumbnailBookViewController *)self view];
  [v33 layoutIfNeeded];

  v34 = [(BKThumbnailBookViewController *)self directoryController];
  v35 = [v34 selectedViewController];

  objc_opt_class();
  v100 = v35;
  v36 = BUDynamicCast();
  objc_opt_class();
  v37 = [(BKBookViewController *)self pageNavigationViewController];
  v101 = BUDynamicCast();

  if (([(BKBookViewController *)self currentPageNumber]& 1) == 0 && [(BKBookViewController *)self isPageProgressionRTL])
  {
    v38 = v10;
    v39 = 1;
    if (!v36)
    {
      goto LABEL_30;
    }

LABEL_19:
    v40 = v7;
    v41 = v8;
    v42 = [(BKThumbnailBookViewController *)self currentLocation];
    [v36 scrollToLocation:v42];
    [v36 frameForThumbnailAtLocation:v42];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v51 = [(BKThumbnailBookViewController *)self view];
    v52 = [v36 view];
    [v51 convertRect:v52 fromView:{v44, v46, v48, v50}];
    MidX = v53;
    y = v55;
    v58 = v57;
    height = v59;

    if (v101)
    {
      if (([v101 shouldDisplaySpread] & 1) != 0 || -[BKThumbnailBookViewController hasSpreadPages](self, "hasSpreadPages"))
      {
        v8 = v41;
        v7 = v40;
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
        v8 = v41;
        v7 = v40;
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
      v8 = v41;
      v64 = v38;
      v7 = v40;
    }

    v65 = &_s13BookAnalytics9UtilitiesC29cellularRadioAccessTechnologyAA08CellularefG0OyFZTj_ptr;
LABEL_38:

    goto LABEL_39;
  }

  v38 = v10;
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
    v96 = v7;
    v66 = v8;
    v67 = [(BKThumbnailBookViewController *)self bookContentView];
    v68 = [v67 snapshotViewAfterScreenUpdates:0];
    [v67 bounds];
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v77 = [(BKThumbnailBookViewController *)self view];
    v78 = v67;
    [v67 convertRect:v77 toView:{v70, v72, v74, v76}];
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
    v91 = [(BKThumbnailBookViewController *)self view];
    [v91 insertSubview:v68 aboveSubview:v64];

    [v64 removeFromSuperview];
    [v9 setAlpha:0.0];
    v92 = v65[340];
    v104[0] = _NSConcreteStackBlock;
    v104[1] = 3221225472;
    v104[2] = sub_104EBC;
    v104[3] = &unk_1E5FF0;
    v105 = v9;
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
    v94 = [(BKThumbnailBookViewController *)self view];
    [v94 setUserInteractionEnabled:0];

    v8 = v66;
    v7 = v96;
    goto LABEL_59;
  }

  [v64 removeFromSuperview];
  if (v98)
  {
    [(BKThumbnailBookViewController *)v7 endAppearanceTransition];
  }

  [v8 endAppearanceTransition];
LABEL_59:
}

- (void)_zoomOutAnimationDidStop:(id)a3
{
  v4 = a3;
  v9 = [(BKThumbnailBookViewController *)self bookContentViewController];
  v5 = [(BKThumbnailBookViewController *)self directoryTOCViewController];
  v6 = [(BKThumbnailBookViewController *)self directoryTOCViewControllerView];
  [v6 setAlpha:1.0];

  [v4 removeFromSuperview];
  if ([(BKThumbnailBookViewController *)v9 isViewLoaded])
  {
    v7 = [(BKThumbnailBookViewController *)self bookContentViewControllerView];
    [v7 removeFromSuperview];
  }

  if (v9 != self)
  {
    [(BKThumbnailBookViewController *)v9 endAppearanceTransition];
  }

  [v5 endAppearanceTransition];
  v8 = [(BKThumbnailBookViewController *)self view];
  [v8 setUserInteractionEnabled:1];
}

- (void)makeContentVisible
{
  v3 = [(BKThumbnailBookViewController *)self bookContentViewController];
  v4 = [(BKThumbnailBookViewController *)self directoryTOCViewController];
  v5 = [(BKThumbnailBookViewController *)self bookContentViewControllerView];
  v6 = [(BKThumbnailBookViewController *)self view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v5 setFrame:{v8, v10, v12, v14}];
  [v4 beginAppearanceTransition:0 animated:{+[UIView areAnimationsEnabled](UIView, "areAnimationsEnabled")}];
  [v3 beginAppearanceTransition:1 animated:{+[UIView areAnimationsEnabled](UIView, "areAnimationsEnabled")}];
  v15 = [(BKThumbnailBookViewController *)self directoryController];
  v16 = [v15 selectedViewController];

  objc_opt_class();
  v17 = BUDynamicCast();
  if (v17)
  {
    v18 = [(BKBookViewController *)self location];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = [(BKThumbnailBookViewController *)self currentLocation];
    }

    v25 = v20;

    [v17 frameForThumbnailAtLocation:v25];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = [(BKThumbnailBookViewController *)self view];
    v35 = [v17 view];
    [v34 convertRect:v35 fromView:{v27, v29, v31, v33}];
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

  if ([v4 isViewLoaded])
  {
    v40 = [(BKThumbnailBookViewController *)self directoryTOCViewControllerView];
  }

  else
  {
    v40 = 0;
  }

  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  if (CGRectIsNull(v55) || !v40)
  {
    v44 = [(BKThumbnailBookViewController *)self view];
    if (!v40)
    {
      v45 = [(BKThumbnailBookViewController *)self backgroundView];
      [v44 insertSubview:v5 aboveSubview:v45];

LABEL_18:
      [(BKThumbnailBookViewController *)self updateBookContentConstraints];
      [(BKThumbnailBookViewController *)self updateContentScale];
      [(BKThumbnailBookViewController *)self updateHUDVisibilityAnimated:0];
      [v40 removeFromSuperview];
      [v4 endAppearanceTransition];
      [v3 endAppearanceTransition];
      goto LABEL_19;
    }

LABEL_17:
    [v44 insertSubview:v5 aboveSubview:v40];
    goto LABEL_18;
  }

  if (!+[UIView areAnimationsEnabled])
  {
    v44 = [(BKThumbnailBookViewController *)self view];
    goto LABEL_17;
  }

  objc_opt_class();
  v41 = [(BKBookViewController *)self pageNavigationViewController];
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
  v47 = v40;
  v48 = v5;
  v53 = v42 != 0;
  v43 = v42;
  v49 = v43;
  v50 = self;
  v51 = v17;
  [(BKThumbnailBookViewController *)self bookContentViewImage:v46];

  objc_destroyWeak(v52);
  objc_destroyWeak(location);

LABEL_19:
}

- (void)_zoomInAnimationDidStop:(id)a3
{
  v4 = a3;
  v9 = [(BKThumbnailBookViewController *)self directoryTOCViewController];
  v5 = [(BKThumbnailBookViewController *)self bookContentViewController];
  v6 = [(BKThumbnailBookViewController *)self bookContentViewControllerView];
  [v6 setAlpha:1.0];

  [v4 removeFromSuperview];
  if ([v9 isViewLoaded])
  {
    v7 = [(BKThumbnailBookViewController *)self directoryTOCViewControllerView];
    [v7 removeFromSuperview];
  }

  [v9 endAppearanceTransition];
  [v5 endAppearanceTransition];
  v8 = [(BKThumbnailBookViewController *)self view];
  [v8 setUserInteractionEnabled:1];
}

- (void)updateBookmarkButton:(BOOL)a3
{
  v4 = [(BKBookViewController *)self isPageBookmarked];
  if (self->super._pageBookmarksFRC)
  {
    v5 = @"bookmark.fill";
    if (!v4)
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

  if (v4)
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
  v2 = self;
  v3 = [(BKBookViewController *)self location];
  v4 = [v3 ordinal];
  LOBYTE(v2) = v4 == [(BKBookViewController *)v2 upsellOrdinal];

  return v2;
}

- (void)storeChangedNotification:(id)a3
{
  v4.receiver = self;
  v4.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v4 storeChangedNotification:a3];
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
    v5 = [(BKBookViewController *)self book];
    -[BKThumbnailScrubber setHidesSpine:](v4, "setHidesSpine:", [v5 hidesSpine]);

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
    v5 = [(BKBookViewController *)self book];
    -[BKThumbnailScrubber setHidesSpine:](v4, "setHidesSpine:", [v5 hidesSpine]);

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
  v4 = [(BKThumbnailBookViewController *)self scrubber];
  v5 = [v3 initWithCustomView:v4];

  return v5;
}

- (void)updateScrubber:(_NSRange)a3
{
  v4 = [(BKBookViewController *)self pageCountExcludingUpsell:a3.location];
  if (v4)
  {
    v5 = v4;
    if (v4 != 0x7FFFFFFFFFFFFFFFLL && [(BKBookViewController *)self controlsVisible]&& [(BKThumbnailBookViewController *)self wantsBottomToolbar])
    {
      v6 = [(BKThumbnailBookViewController *)self scrubber];
      [v6 setPageCount:v5];

      v7 = [(BKPageNavigationViewController *)self->super._pageNavigationViewController pageOffset];
      if (v7 + 1 < v5)
      {
        v8 = v7 + 1;
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

      v10 = [(BKThumbnailBookViewController *)self scrubber];
      [v10 setPageNumber:v9];

      v11 = [(BKThumbnailBookViewController *)self scrubber];
      [v11 setProgress:1.0];
    }
  }
}

- (void)renderingCacheCallbackImage:(id)a3 context:(id)a4 pageNumber:(int64_t)a5
{
  v10 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setThumbnail:v10 forPage:a5];
  }

  else
  {
    [(BKThumbnailScrubber *)self->_verticalScrubber setThumbnail:v10 forPage:a5 context:v8];
    v9 = [(BKThumbnailBookViewController *)self scrubber];
    [v9 setThumbnail:v10 forPage:a5 context:v8];
  }
}

- (id)thumbnailScrubber:(id)a3 thumbnailForPage:(int64_t)a4 size:(CGSize)a5 context:(id)a6
{
  height = a5.height;
  width = a5.width;
  v11 = a3;
  v12 = a6;
  if (a4 == 0x7FFFFFFFFFFFFFFFLL || [(BKBookViewController *)self upsellPageNumber]== a4)
  {
    v13 = 0;
  }

  else
  {
    v14 = [(BKThumbnailScrubber *)v11 track];

    v15 = -4;
    if (v14 != v12)
    {
      v15 = 0;
    }

    if (self->_verticalScrubber == v11)
    {
      v16 = 8;
    }

    else
    {
      v16 = v15;
    }

    v17 = [(BKThumbnailBookViewController *)self imageCache];
    v18 = [(BKBookViewController *)self book];
    [(BKThumbnailBookViewController *)self _containerBoundsForGeometry];
    v13 = [v17 thumbnailForPage:a4 asset:v18 size:self renderingCacheCallbackTarget:v12 renderingCacheCallbackContext:v16 priority:width containerBounds:{height, v19, v20, v21, v22}];
  }

  return v13;
}

- (void)thumbnailScrubber:(id)a3 cancelPreviousRenderRequestsWithContext:(id)a4
{
  imageCache = self->_imageCache;
  if (imageCache)
  {
    [(IMThumbnailRenderingCache *)imageCache cancelRenderingCacheOperationsForTarget:self context:a4];
  }
}

- (void)setPageNumberHudTextLabelForValidatedPageNumber:(int64_t)a3 visiblePageCount:(unint64_t)a4 validatedPageCount:(unint64_t)a5
{
  v9 = [(BKBookViewController *)self pageTitleForPageNumber:?];
  v22 = v9;
  if (v9)
  {
    if (a4 == 2)
    {
      v17 = [(BKBookViewController *)self pageTitleForPageNumber:a3 + 1];
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
    if (a4 == 2)
    {
      v10 = a3 + 1;
    }

    else
    {
      v10 = a3;
    }

    v11 = AEBundle();
    v12 = [v11 localizedStringForKey:@"%@ of %@" value:&stru_1E7188 table:0];
    v13 = [NSNumberFormatter imaxLocalizedUnsignedInteger:v10 usesGroupingSeparator:0];
    v14 = [NSNumberFormatter imaxLocalizedUnsignedInteger:a5 usesGroupingSeparator:0];
    v17 = [NSString stringWithFormat:v12, v13, v14];
  }

  v15 = self->_pageNumberHUD;
  v16 = v17;
LABEL_15:
  [(BKInfoHUD *)v15 setInfoText:v16];
LABEL_16:
}

- (void)scrubValueChanged:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_pageNumberHUD)
  {
    v6 = [v4 pageNumber];
    v7 = [(BKBookViewController *)self pageCountIncludingUpsell];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = v7;
      if (v7 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(BKThumbnailBookViewController *)self currentPages];
        [(BKThumbnailBookViewController *)self setPageNumberHudTextLabelForValidatedPageNumber:v6 visiblePageCount:v9 validatedPageCount:v8];
      }
    }

    v10 = [(BKThumbnailBookViewController *)self scrubber];
    v11 = [v10 callout];

    if (v11)
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

- (void)_updatePageNumberHUDVisible:(BOOL)a3
{
  pageNumberHUD = self->_pageNumberHUD;
  if (!pageNumberHUD)
  {
    return;
  }

  [(BKInfoHUD *)pageNumberHUD setAlpha:a3];
  v5 = [(BKThumbnailBookViewController *)self currentPages];
  v7 = v6;
  v8 = [(BKBookViewController *)self pageCountIncludingUpsell];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v8;
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [(BKBookViewController *)self pageNumberFromRange:v5, v7];
      v14 = [(BKBookViewController *)self pageTitleForPageNumber:v10];
      if (v14)
      {
        v11 = [(BKBookViewController *)self book];
        if ([v11 hasPhysicalPages])
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

- (void)updateHUDVisibilityAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(BKThumbnailBookViewController *)self isViewLoaded])
  {
    v5 = [(BKThumbnailBookViewController *)self shouldShowHUDs];
    [(BCNavigationBar *)self->_topToolbar alpha];
    v6 = 16.0;
    if (v7 <= 0.0)
    {
      [(BCNavigationBar *)self->_topToolbar bounds];
      v6 = 8.0 - CGRectGetHeight(v17);
    }

    v8 = [(BKThumbnailBookViewController *)self pageNumberHUDTopConstraint];
    [v8 setConstant:v6];

    v9 = [(BKThumbnailBookViewController *)self pageNumberHUD];
    [v9 setNeedsUpdateConstraints];

    [(BCNavigationBar *)self->_topToolbar alpha];
    v11 = v10 > 0.0;
    v12 = [(BKThumbnailBookViewController *)self pageNumberHUD];
    [v12 setIsAccessibilityElement:v11];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1068FC;
    v15[3] = &unk_1E3ED8;
    v15[4] = self;
    v16 = v5;
    v13 = objc_retainBlock(v15);
    v14 = v13;
    if (v3)
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
    v4 = [(BKThumbnailBookViewController *)self themePage];
    [v4 backgroundColorForTraitEnvironment:self];
  }

  else
  {
    v4 = [(BKThumbnailBookViewController *)self traitCollection];
    [UIColor bc_darkSystemBackgroundForTraitCollection:v4];
  }
  v5 = ;

  return v5;
}

- (void)showFontPicker:(id)a3
{
  v4 = a3;
  if ([(UIBarButtonItem *)self->_fontBarButtonItem isEnabled])
  {
    [(BKBookViewController *)self presentAppearanceViewControllerFromItem:v4];
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

- (void)appearanceViewController:(id)a3 didChangeLayout:(unint64_t)a4
{
  v6 = a3;
  v7 = [(BKBookViewController *)self location];
  v8.receiver = self;
  v8.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v8 appearanceViewController:v6 didChangeLayout:a4];

  [(BKBookViewController *)self setLocation:v7];
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
  v3 = [(BKThumbnailBookViewController *)self preferredLayoutCache];
  v4 = [(BKBookViewController *)self book];
  self->_directoryType = [v3 preferredDirectoryTypeForBook:v4];

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
  v3 = [(BKBookViewController *)self book];
  if ([v3 suppressTOC])
  {
    v4 = [(BKThumbnailBookViewController *)self directoryTypeForPageThumbnails];
  }

  else
  {
    v4 = [(BKThumbnailBookViewController *)self directoryTypeForTOC];
  }

  v5 = v4;

  return v5;
}

- (void)setDirectoryType:(unint64_t)a3
{
  if (self->_directoryType != a3)
  {
    self->_directoryType = a3;
    v4 = [(BKThumbnailBookViewController *)self preferredLayoutCache];
    directoryType = self->_directoryType;
    v6 = [(BKBookViewController *)self book];
    [v4 setPreferredDirectoryType:directoryType forBook:v6];

    v7 = [(BKThumbnailBookViewController *)self segmentIndexForDirectoryType:self->_directoryType];
    v8 = [(BKThumbnailBookViewController *)self _directoryController];
    [v8 setSelectedIndex:v7];

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
    v7 = [(BKBookViewController *)self paginationController];
    [(BKTOCViewController *)self->_tocDirectory setPaginationController:v7];

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
    v5 = [(BKThumbnailBookViewController *)self documentForDirectory];
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
    v5 = [(BKBookViewController *)self paginationController];
    [(BKTOCViewController *)v4 setPaginationController:v5];

    [(BKViewController *)v4 setLayoutDirection:[(BKViewController *)self layoutDirection]];
    [(BKContentViewController *)v4 setLayoutDelegate:self];
    objc_opt_class();
    v6 = [(BKThumbnailBookViewController *)self documentForDirectory];
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
    v5 = [(BKThumbnailBookViewController *)self documentForDirectory];
    v6 = BUDynamicCast();
    [(BKPDFPageThumbnailDirectory *)v4 setPdfDocument:v6];

    v7 = self->_pdfBookmarkDirectory;
    self->_pdfBookmarkDirectory = v4;

    pdfBookmarkDirectory = self->_pdfBookmarkDirectory;
  }

  return pdfBookmarkDirectory;
}

- (id)_directoryForType:(unint64_t)a3
{
  v4 = 0;
  if (a3 > 3)
  {
    switch(a3)
    {
      case 4uLL:
        v5 = [(BKThumbnailBookViewController *)self _pdfPageDirectory];
        break;
      case 5uLL:
        v5 = [(BKThumbnailBookViewController *)self _pdfOutlineDirectory];
        break;
      case 6uLL:
        v5 = [(BKThumbnailBookViewController *)self _pdfBookmarkDirectory];
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    switch(a3)
    {
      case 1uLL:
        v5 = [(BKThumbnailBookViewController *)self _pageDirectory];
        break;
      case 2uLL:
        v5 = [(BKThumbnailBookViewController *)self _tocDirectory];
        break;
      case 3uLL:
        v5 = [(BKThumbnailBookViewController *)self _bookmarkDirectory];
        break;
      default:
        goto LABEL_15;
    }
  }

  v4 = v5;
LABEL_15:
  v6 = [(BKBookViewController *)self book];
  [v4 setBook:v6];

  objc_opt_class();
  v7 = [(BKThumbnailBookViewController *)self theme];
  v8 = BUDynamicCast();
  [v4 setTheme:v8];

  [v4 setDirectoryDelegate:self];

  return v4;
}

- (void)directorySwitchPressed:(id)a3
{
  v4 = -[BKThumbnailBookViewController directoryTypeForSegmentIndex:](self, "directoryTypeForSegmentIndex:", [a3 selectedSegmentIndex]);

  [(BKThumbnailBookViewController *)self setDirectoryType:v4];
}

- (void)_updateDirectorySwitch
{
  v3 = [(BKThumbnailBookViewController *)self segmentIndexForDirectoryType:[(BKThumbnailBookViewController *)self directoryType]];
  directorySwitch = self->_directorySwitch;
  if (directorySwitch)
  {
    v5 = [(UISegmentedControl *)directorySwitch numberOfSegments];
    directorySwitch = self->_directorySwitch;
    if (v3 >= v5)
    {
      v3 = [(UISegmentedControl *)directorySwitch numberOfSegments]- 1;
      directorySwitch = self->_directorySwitch;
    }
  }

  [(UISegmentedControl *)directorySwitch setSelectedSegmentIndex:v3];
}

- (void)directoryContent:(id)a3 didSelectLocation:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_107674;
  v6[3] = &unk_1E2BD0;
  v6[4] = self;
  v5 = a4;
  [(BKBookViewController *)self recordedJumpToLocation:v5 animated:0 completion:v6];
  [(BKBookViewController *)self setLocation:v5];
}

- (int64_t)directoryContent:(id)a3 pageNumberForLocation:(id)a4
{
  v5 = a4;
  v6 = [(BKBookViewController *)self paginationController];
  v7 = [v6 pageNumberForLocation:v5];

  return v7;
}

- (void)tocViewController:(id)a3 didSelectChapter:(id)a4
{
  v5 = a4;
  objc_opt_class();
  v6 = [(BKBookViewController *)self pageNavigationViewController];
  v7 = BUDynamicCast();

  v8 = [(BKBookViewController *)self paginationController];
  v9 = [v8 pageRangeForChapter:v5];
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

- (id)thumbnailDirectory:(id)a3 thumbnailForPage:(int64_t)a4 size:(CGSize)a5 context:(id)a6
{
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    height = a5.height;
    width = a5.width;
    v11 = a6;
    v12 = [(BKThumbnailBookViewController *)self imageCache];
    v13 = [(BKBookViewController *)self book];
    [(BKThumbnailBookViewController *)self _containerBoundsForGeometry];
    v6 = [v12 thumbnailForPage:a4 asset:v13 size:self renderingCacheCallbackTarget:v11 renderingCacheCallbackContext:0 priority:width containerBounds:{height, v14, v15, v16, v17}];
  }

  return v6;
}

- (void)thumbnailDirectory:(id)a3 cancelPreviousRenderRequestsWithContext:(id)a4
{
  v5 = a4;
  v6 = [(BKThumbnailBookViewController *)self imageCache];
  [v6 cancelRenderingCacheOperationsForTarget:self context:v5];
}

- (void)contentViewReady:(id)a3
{
  v4.receiver = self;
  v4.super_class = BKThumbnailBookViewController;
  [(BKBookViewController *)&v4 contentViewReady:a3];
  [(BKThumbnailBookViewController *)self updateTopToolbar:0];
  [(BKBookViewController *)self readingLocationChanged];
}

- (UIEdgeInsets)edgeInsetsForContentViewController:(id)a3
{
  v4 = [(BKThumbnailBookViewController *)self configuration];
  [v4 sideContentInset];
  v6 = v5;
  v7 = [(BKThumbnailBookViewController *)self configuration];
  [v7 sideContentInset];
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
    v3 = [(BKThumbnailBookViewController *)self view];
  }

  else
  {
    v4 = [(BKBookViewController *)self pageNavigationViewController];
    v3 = [v4 contentView];
  }

  return v3;
}

- (id)transitionContentBackgroundColor
{
  v2 = [(BKThumbnailBookViewController *)self backgroundView];
  v3 = [v2 backgroundColor];

  return v3;
}

- (id)analyticsReadingSettingsData
{
  v3 = +[UIScreen mainScreen];
  [v3 brightness];
  v5 = v4;

  v6 = [(BKBookViewController *)self layout];
  if (v6 - 1 > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = qword_193988[v6 - 1];
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

  v3 = [(BKThumbnailBookViewController *)self view];
  v4 = +[UIView userInterfaceLayoutDirectionForSemanticContentAttribute:](UIView, "userInterfaceLayoutDirectionForSemanticContentAttribute:", [v3 semanticContentAttribute]) == &dword_0 + 1;

  return v4;
}

- (CGRect)_containerBoundsForGeometry
{
  v2 = [(BKThumbnailBookViewController *)self viewIfLoaded];
  v3 = [v2 window];
  v4 = v3;
  if (v3 || (v3 = v2) != 0)
  {
    [v3 bounds];
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
  v3 = [(BCNavigationBar *)self->_topToolbar window];
  v7 = [v3 windowScene];

  v4 = [v7 statusBarManager];
  [v4 defaultStatusBarHeightInOrientation:{objc_msgSend(v7, "interfaceOrientation")}];
  v6 = v5;

  if ([(BKThumbnailBookViewController *)self im_isCompactHeight])
  {
    v6 = 0.0;
  }

  [(BCNavigationBar *)self->_topToolbar _setOverrideBackgroundExtension:v6];
  [(NSLayoutConstraint *)self->_topBarTopConstraint setConstant:v6];
}

- (void)buildHoverControlRegionWithBuilder:(id)a3
{
  v31 = a3;
  v4 = [(BKThumbnailBookViewController *)self view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  v9 = [(BKThumbnailBookViewController *)self view];
  [(BCNavigationBar *)self->_topToolbar bounds];
  [v9 convertRect:self->_topToolbar fromView:?];
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

  [v31 addRegionWithRect:{v6, 0.0, v8, MaxY * v19}];
  v20 = [(BKThumbnailBookViewController *)self view];
  [v20 bounds];
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

  [v31 addRegionWithRect:{v22, v28 - v30 * (v28 - v29), v26}];
}

@end