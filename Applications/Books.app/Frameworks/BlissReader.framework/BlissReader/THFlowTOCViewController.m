@interface THFlowTOCViewController
- (BOOL)introMediaControllerIsActive;
- (BOOL)isSectionOpen:(id)a3;
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)tableViewCellShouldStayHighlighted:(id)a3;
- (CGRect)frameForOrdinalAtIndentLevel:(int64_t)a3;
- (CGRect)rectForPageThumbnailAtIndex:(unint64_t)a3 chapterIndex:(unint64_t)a4 inLayer:(id)a5;
- (CGSize)headerMaxSize;
- (THFlowTOCConfiguration)configuration;
- (THFlowTOCViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (THReflowablePaginationController)reflowablePaginationController;
- (double)bottomSeparatorYPositionForChapterIndex:(unint64_t)a3 lessonIndex:(unint64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)chapterTitleColor;
- (id)findVisibleCellInTable:(id)a3 forIndexPath:(id)a4;
- (id)labelFontForRow:(unint64_t)a3;
- (id)ordinalTextColor;
- (id)p_cellForChapterIndex:(unint64_t)a3 lessonIndex:(unint64_t)a4;
- (id)p_circledButtonImageFromImage:(id)a3 radius:(double)a4;
- (id)p_displayPageNumberForTileEntry:(id)a3;
- (id)p_indexPathForChapterIndex:(unint64_t)a3 lessonIndex:(unint64_t)a4;
- (id)p_maxAbsolutePageNumberForNodeAtTileEntry:(id)a3;
- (id)pageNumberColor;
- (id)pageNumberFont;
- (id)rasterizedImage;
- (id)subItemsForSection:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableViewCellBackgroundColor:(id)a3;
- (int64_t)numberOfRowsInSection:(int64_t)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)numberOfSubentriesForIndex:(int64_t)a3 inModel:(id)a4;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)accessoryTapped:(id)a3;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)didTransitionFromCanvas;
- (void)initTOCSectionUIState;
- (void)introMediaControllerShouldAdvancePast:(id)a3;
- (void)makeSectionClosed:(id)a3 withSender:(id)a4;
- (void)makeSectionOpen:(id)a3 withSender:(id)a4;
- (void)p_applyTheme;
- (void)p_loadHeaderImageAndUpdateLayout;
- (void)p_releaseOutlets;
- (void)p_setupTransitionView;
- (void)p_showPageForModelLink:(id)a3;
- (void)p_tapOnBackground;
- (void)p_updateMaxPageNumberWidth;
- (void)paginationController:(id)a3 paginationCompleteStateChangedTo:(BOOL)a4;
- (void)scrollToRowForChapterIndex:(unint64_t)a3 lessonIndex:(unint64_t)a4;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)setIntroMediaViewController:(id)a3;
- (void)setIntroMediaViewController:(id)a3 showIt:(BOOL)a4;
- (void)setReflowablePaginationController:(id)a3;
- (void)setSectionOpenInUIState:(BOOL)a3 forSection:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableViewCell:(id)a3 hideSeparators:(BOOL)a4;
- (void)tableViewCellHighlightDidChange:(id)a3;
- (void)transitionDidFinish:(id)a3;
- (void)transitionWillFinish:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionFromChapterIndex:(unint64_t)a3;
@end

@implementation THFlowTOCViewController

- (THFlowTOCViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = a3;
  v6 = THBundle();
  v15.receiver = self;
  v15.super_class = THFlowTOCViewController;
  v7 = [(THFlowTOCViewController *)&v15 initWithNibName:v5 bundle:v6];

  if (v7)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    mModelToUIMap = v7->mModelToUIMap;
    v7->mModelToUIMap = v8;

    v10 = objc_alloc_init(NSMutableDictionary);
    mUIToModelMap = v7->mUIToModelMap;
    v7->mUIToModelMap = v10;

    v12 = +[UITraitCollection bc_allAPITraits];
    v13 = [(THFlowTOCViewController *)v7 registerForTraitChanges:v12 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v7;
}

- (void)p_releaseOutlets
{
  mHeaderView = self->mHeaderView;
  self->mHeaderView = 0;

  mTOCTableView = self->mTOCTableView;
  self->mTOCTableView = 0;
}

- (void)dealloc
{
  [(THFlowTOCViewController *)self p_releaseOutlets];
  mModelToUIMap = self->mModelToUIMap;
  self->mModelToUIMap = 0;

  mUIToModelMap = self->mUIToModelMap;
  self->mUIToModelMap = 0;

  mZipPackage = self->mZipPackage;
  self->mZipPackage = 0;

  mHeaderImageData = self->mHeaderImageData;
  self->mHeaderImageData = 0;

  mBackgroundButton = self->mBackgroundButton;
  self->mBackgroundButton = 0;

  mChapterUIState = self->mChapterUIState;
  self->mChapterUIState = 0;

  mDrmContext = self->mDrmContext;
  self->mDrmContext = 0;

  mCloseSectionImage = self->mCloseSectionImage;
  self->mCloseSectionImage = 0;

  mOpenSectionImage = self->mOpenSectionImage;
  self->mOpenSectionImage = 0;

  configuration = self->_configuration;
  self->_configuration = 0;

  v13.receiver = self;
  v13.super_class = THFlowTOCViewController;
  [(THTOCViewController *)&v13 dealloc];
}

- (THFlowTOCConfiguration)configuration
{
  configuration = self->_configuration;
  if (!configuration)
  {
    v4 = self;
    v5 = [[THFlowTOCConfiguration alloc] initWithContext:v4];
    v6 = self->_configuration;
    self->_configuration = v5;

    configuration = self->_configuration;
  }

  return configuration;
}

- (void)p_loadHeaderImageAndUpdateLayout
{
  if (self->mHeaderImageData)
  {
    v3 = [(THFlowTOCViewController *)self headerImageViews];

    if (!v3)
    {
      v4 = [[UIButton alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [(THFlowTOCViewController *)self setHeaderImageViews:v4];

      v5 = [(THFlowTOCViewController *)self headerImageViews];
      [v5 setAutoresizesSubviews:0];

      v6 = [(THFlowTOCViewController *)self headerImageViews];
      [v6 addTarget:self action:"p_tapOnBackground" forControlEvents:64];

      v7 = objc_alloc_init(THImageView);
      mHeaderView = self->mHeaderView;
      self->mHeaderView = v7;

      [(THImageView *)self->mHeaderView setUserInteractionEnabled:0];
      v9 = [(THFlowTOCViewController *)self headerImageViews];
      [v9 addSubview:self->mHeaderView];
    }

    [(TSWTableView *)self->mTOCTableView frame];
    v11 = v10;
    TSUScreenScale();
    v13 = v12 * v11;
    [(THFlowTOCViewController *)self headerMaxSize];
    if (v15 != v13 || v14 != 0.0)
    {
      [(THFlowTOCViewController *)self setHeaderMaxSize:v13, 0.0];
      [(THImageView *)self->mHeaderView setImageData:self->mHeaderImageData maxSize:1 setLayerBounds:v13, 0.0];
    }

    [(THImageView *)self->mHeaderView frame];
    if (v16 <= 0.0)
    {
      v20 = [(THFlowTOCViewController *)self navigationController];
      v21 = [v20 navigationBar];
      [v21 bounds];
      Height = CGRectGetHeight(v30);
    }

    else
    {
      v18 = v11 * (v17 / v16);
      Height = floorf(v18);
    }

    [(THImageView *)self->mHeaderView setFrame:0.0, 0.0, v11, Height];
    v22 = [(THFlowTOCViewController *)self headerImageViews];
    [v22 setFrame:{0.0, 0.0, v11, Height}];

    v28 = [[UITableViewHeaderFooterView alloc] initWithFrame:{0.0, 0.0, v11, Height}];
    v23 = [v28 contentView];
    v24 = [(THFlowTOCViewController *)self headerImageViews];
    [v23 addSubview:v24];

    [(TSWTableView *)self->mTOCTableView setTableHeaderView:v28];
    mTOCTableView = self->mTOCTableView;
    v26 = [(THFlowTOCViewController *)self view];
    [v26 frame];
    [(TSWTableView *)mTOCTableView _setPinsTableHeaderView:Height / v27 < 0.3, Height / v27];
  }
}

- (void)setIntroMediaViewController:(id)a3
{
  v5 = a3;
  mIntroMediaViewController = self->mIntroMediaViewController;
  if (mIntroMediaViewController != v5)
  {
    v8 = v5;
    v7 = [(THiOSIntroMediaViewController *)mIntroMediaViewController delegate];

    if (v7 == self)
    {
      [(THiOSIntroMediaViewController *)self->mIntroMediaViewController setDelegate:0];
    }

    objc_storeStrong(&self->mIntroMediaViewController, a3);
    mIntroMediaViewController = [(THiOSIntroMediaViewController *)self->mIntroMediaViewController setDelegate:self];
    v5 = v8;
  }

  _objc_release_x1(mIntroMediaViewController, v5);
}

- (void)setIntroMediaViewController:(id)a3 showIt:(BOOL)a4
{
  if (a4)
  {
    v5 = a3;
    [(THFlowTOCViewController *)self view];

    [(THFlowTOCViewController *)self setIntroMediaViewController:v5];
    [(THTOCViewController *)self setForceStatusBarVisible:0];
    v6 = [(THFlowTOCViewController *)self view];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(THFlowTOCViewController *)self introMediaViewController];
    v16 = [v15 view];
    [v16 setFrame:{v8, v10, v12, v14}];

    v17 = [(THFlowTOCViewController *)self view];
    v18 = [(THFlowTOCViewController *)self introMediaViewController];
    v19 = [v18 view];
    [v17 addSubview:v19];

    self->mForceTransitionCompletion = 0;
  }

  [(THFlowTOCViewController *)self refreshStatusBarAppearance];
}

- (BOOL)introMediaControllerIsActive
{
  v2 = [(THFlowTOCViewController *)self introMediaViewController];
  v3 = v2 != 0;

  return v3;
}

- (void)viewDidLoad
{
  v31.receiver = self;
  v31.super_class = THFlowTOCViewController;
  [(THFlowTOCViewController *)&v31 viewDidLoad];
  v3 = [(THFlowTOCViewController *)self view];
  [v3 setAutoresizingMask:18];

  mTOCTableView = self->mTOCTableView;
  if (!mTOCTableView)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"[THFlowTOCViewController viewDidLoad]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowTOCViewController.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:539 description:{@"invalid nil value for '%s'", "mTOCTableView"}];

    mTOCTableView = self->mTOCTableView;
  }

  [(TSWTableView *)mTOCTableView setDelegate:self];
  [(TSWTableView *)self->mTOCTableView setDataSource:self];
  [(TSWTableView *)self->mTOCTableView setIgnoresEventsOutsideCells:1];
  v8 = [(THFlowTOCViewController *)self configuration];
  [v8 separatorColorWhite];
  v10 = [UIColor colorWithWhite:v9 / 255.0 alpha:1.0];
  [(TSWTableView *)self->mTOCTableView setSeparatorColor:v10];

  v11 = [(THFlowTOCViewController *)self configuration];
  LODWORD(v8) = [v11 constrainTableWidthToLegacyiPadWidth];

  v12 = 0.0;
  if (v8)
  {
    [(TSWTableView *)self->mTOCTableView bounds];
    v14 = (v13 + -768.0) * 0.5;
    if (v13 <= 768.0)
    {
      v14 = 0.0;
    }

    v12 = ceil(v14);
  }

  [(TSWTableView *)self->mTOCTableView _setSectionContentInset:0.0, v12, 0.0, v12];
  [(TSWTableView *)self->mTOCTableView _setPinsTableHeaderView:0];
  [(TSWTableView *)self->mTOCTableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(TSWTableView *)self->mTOCTableView registerClass:objc_opt_class() forCellReuseIdentifier:@"TOCCellReuseIdentifier"];
  y = CGRectZero.origin.y;
  height = CGRectZero.size.height;
  [(TSWTableView *)self->mTOCTableView frame];
  v18 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, v17, height}];
  [v18 setAutoresizingMask:2];
  v19 = [(TSWTableView *)self->mTOCTableView backgroundColor];
  [v18 setBackgroundColor:v19];

  [(TSWTableView *)self->mTOCTableView setTableFooterView:v18];
  self->mMaxPageNumberWidth = 0.0;
  self->mMaxOrdinalWidth = 0.0;
  [(THFlowTOCViewController *)self initTOCSectionUIState];
  v20 = [UIImage th_imageNamed:kTocArrowCloseImageN];
  v21 = [(THFlowTOCViewController *)self configuration];
  [v21 discloseButtonRadius];
  v23 = v22;

  v24 = [(THFlowTOCViewController *)self p_circledButtonImageFromImage:v20 radius:v23];
  [(THFlowTOCViewController *)self setCloseSectionImage:v24];

  v25 = [UIImage th_imageNamed:kTocArrowOpenImageN];
  v26 = [(THFlowTOCViewController *)self p_circledButtonImageFromImage:v25 radius:v23];
  [(THFlowTOCViewController *)self setOpenSectionImage:v26];

  v27 = [(THTOCViewController *)self dataSource];
  v28 = [v27 bookTOCHeaderImageDataForTOC:self];
  [(THFlowTOCViewController *)self setHeaderImageData:v28];

  [(THFlowTOCViewController *)self p_loadHeaderImageAndUpdateLayout];
  v29 = +[UIColor blackColor];
  v30 = [(THFlowTOCViewController *)self view];
  [v30 setBackgroundColor:v29];

  [(THFlowTOCViewController *)self p_applyTheme];
}

- (id)p_circledButtonImageFromImage:(id)a3 radius:(double)a4
{
  v5 = a3;
  v6 = a4 + a4;
  [v5 size];
  TSDCenterRectOverRect();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [UIGraphicsImageRenderer alloc];
  v16 = +[UIGraphicsImageRendererFormat preferredFormat];
  v17 = [v15 initWithSize:v16 format:{v6, v6}];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_C9CE8;
  v21[3] = &unk_45D138;
  v23 = 0;
  v24 = 0;
  v25 = v6;
  v26 = v6;
  v22 = v5;
  v27 = v8;
  v28 = v10;
  v29 = v12;
  v30 = v14;
  v18 = v5;
  v19 = [v17 imageWithActions:v21];

  return v19;
}

- (void)p_tapOnBackground
{
  if (!UIAccessibilityIsVoiceOverRunning() && !UIAccessibilityIsSwitchControlRunning())
  {
    v3 = [(THTOCViewController *)self delegate];
    v4 = [v3 isToolbarHidden];

    v5 = [(THTOCViewController *)self delegate];
    v6 = v5;
    if (v4)
    {
      [v5 showToolbarAnimated:1];
    }

    else
    {
      [v5 hideToolbarAnimated:1];
    }
  }
}

- (void)p_applyTheme
{
  if ([(THFlowTOCViewController *)self isViewLoaded])
  {
    v3 = [(THFlowTOCViewController *)self theme];

    if (v3)
    {
      v4 = [(THFlowTOCViewController *)self theme];
      v10 = [v4 backgroundColorForTraitEnvironment:self];

      v5 = [(THFlowTOCViewController *)self theme];
      v6 = [v5 tableViewSeparatorColor];
      [(TSWTableView *)self->mTOCTableView setSeparatorColor:v6];
    }

    else
    {
      v10 = +[UIColor systemBackgroundColor];
    }

    v7 = [(THFlowTOCViewController *)self view];
    [v7 setBackgroundColor:v10];

    [(TSWTableView *)self->mTOCTableView setBackgroundColor:v10];
    v8 = [(TSWTableView *)self->mTOCTableView tableFooterView];
    [v8 setBackgroundColor:v10];

    v9 = [(TSWTableView *)self->mTOCTableView tableHeaderView];
    [v9 setBackgroundColor:v10];

    [(TSWTableView *)self->mTOCTableView reloadData];
    [(THFlowTOCViewController *)self setNeedsStatusBarAppearanceUpdate];
    [(THFlowTOCViewController *)self setNeedsUpdateOfHomeIndicatorAutoHidden];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = THFlowTOCViewController;
  [(THFlowTOCViewController *)&v11 viewWillAppear:a3];
  v4 = [(THFlowTOCViewController *)self configuration];
  [v4 invalidate];

  v5 = [(THFlowTOCViewController *)self backgroundButton];

  if (!v5)
  {
    v6 = [UIButton alloc];
    v7 = [(THFlowTOCViewController *)self view];
    [v7 frame];
    v8 = [v6 initWithFrame:?];

    [v8 setAutoresizingMask:18];
    v9 = [(THFlowTOCViewController *)self view];
    [v9 insertSubview:v8 belowSubview:self->mTOCTableView];

    [(THFlowTOCViewController *)self setBackgroundButton:v8];
    v10 = [(THFlowTOCViewController *)self backgroundButton];
    [v10 addTarget:self action:"p_tapOnBackground" forControlEvents:64];
  }
}

- (void)setReflowablePaginationController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_reflowablePaginationController);

  if (WeakRetained != obj)
  {
    v5 = [(THFlowTOCViewController *)self reflowablePaginationController];
    [v5 unregisterObserver:self];

    objc_storeWeak(&self->_reflowablePaginationController, obj);
    v6 = [(THFlowTOCViewController *)self reflowablePaginationController];
    [v6 registerObserver:self];
  }
}

- (void)p_updateMaxPageNumberWidth
{
  v3 = [(THTOCViewController *)self dataSource];
  v31 = [v3 showPageNumbers];

  v30 = [(THFlowTOCViewController *)self pageNumberFont];
  v4 = [(THFlowTOCViewController *)self labelFontForRow:0];
  v5 = [(THFlowTOCViewController *)self labelFontForRow:1];
  v6 = [(THTOCViewController *)self dataSource];
  v7 = [v6 toc:self numberOfTilesInDivision:0];

  v27 = v7;
  if (v7)
  {
    v8 = 0;
    v29 = v4;
    do
    {
      v9 = [(THTOCViewController *)self dataSource];
      v28 = v8;
      v10 = [v9 toc:self tileModelForChapterIndex:v8];

      v11 = [v10 portraitEntries];
      v12 = [v11 count];

      if (v12)
      {
        for (i = 0; i != v12; ++i)
        {
          v14 = [v10 portraitEntries];
          v15 = [v14 objectAtIndex:i];

          if ([v15 includeInTOC])
          {
            v16 = [v15 sectionIdentifier];
            if (i)
            {
              v17 = v5;
            }

            else
            {
              v17 = v4;
            }

            v34 = NSFontAttributeName;
            v35 = v17;
            v18 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
            [v16 sizeWithAttributes:v18];
            v20 = v19;

            if (v20 > self->mMaxOrdinalWidth)
            {
              self->mMaxOrdinalWidth = v20;
            }

            if (v31)
            {
              if ([(THFlowTOCViewController *)self hasPaginatedData])
              {
                [(THFlowTOCViewController *)self p_displayPageNumberForTileEntry:v15];
              }

              else
              {
                [(THFlowTOCViewController *)self p_maxAbsolutePageNumberForNodeAtTileEntry:v15];
              }
              v21 = ;
              v32 = NSFontAttributeName;
              v33 = v30;
              v22 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
              [v21 sizeWithAttributes:v22];
              v24 = v23;

              if (v24 > self->mMaxPageNumberWidth)
              {
                self->mMaxPageNumberWidth = v24;
              }

              v4 = v29;
            }
          }
        }
      }

      v8 = v28 + 1;
    }

    while ((v28 + 1) != v27);
  }

  mMaxOrdinalWidth = self->mMaxOrdinalWidth;
  self->mMaxOrdinalWidth = ceilf(mMaxOrdinalWidth);
  mMaxPageNumberWidth = self->mMaxPageNumberWidth;
  self->mMaxPageNumberWidth = ceilf(mMaxPageNumberWidth);
}

- (void)viewDidLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = THFlowTOCViewController;
  [(THFlowTOCViewController *)&v15 viewDidLayoutSubviews];
  v3 = [(THFlowTOCViewController *)self configuration];
  [v3 cellHeight];
  [(TSWTableView *)self->mTOCTableView setRowHeight:?];

  [(THFlowTOCViewController *)self p_updateMaxPageNumberWidth];
  v4 = [(THFlowTOCViewController *)self configuration];
  [v4 ordinalNumberLeftMargin];
  v6 = v5;

  v7 = [(THFlowTOCViewController *)self configuration];
  [v7 discloseButtonRightMargin];
  v9 = v8;

  v10 = 0.0;
  [(TSWTableView *)self->mTOCTableView setSeparatorInset:0.0, v6, 0.0, v9];
  v11 = [(THFlowTOCViewController *)self configuration];
  v12 = [v11 constrainTableWidthToLegacyiPadWidth];

  if (v12)
  {
    [(TSWTableView *)self->mTOCTableView bounds];
    v14 = (v13 + -768.0) * 0.5;
    if (v13 <= 768.0)
    {
      v14 = 0.0;
    }

    v10 = ceil(v14);
  }

  [(TSWTableView *)self->mTOCTableView _setSectionContentInset:0.0, v10, 0.0, v10];
  [(THFlowTOCViewController *)self p_loadHeaderImageAndUpdateLayout];
  [(TSWTableView *)self->mTOCTableView reloadData];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = THFlowTOCViewController;
  [(THFlowTOCViewController *)&v6 viewDidAppear:a3];
  v4 = [(THTOCViewController *)self delegate];
  [v4 tocIsReadyToPresent:self];

  v5 = [(THTOCViewController *)self delegate];
  [v5 setupDVCForTOCController:self];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = THFlowTOCViewController;
  [(THFlowTOCViewController *)&v5 viewWillDisappear:a3];
  v4 = [(THFlowTOCViewController *)self findVisibleCellInTable:self->mTOCTableView forIndexPath:self->mLastSelectedRow];
  [v4 stopProgressIndicator];
}

- (id)findVisibleCellInTable:(id)a3 forIndexPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 indexPathsForVisibleRows];
  if ([v7 indexOfObject:v6] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v5 cellForRowAtIndexPath:v6];
  }

  return v8;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v9.receiver = self;
  v9.super_class = THFlowTOCViewController;
  [(THFlowTOCViewController *)&v9 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  v5 = [(THFlowTOCViewController *)self configuration];
  [v5 invalidate];

  v6 = [(THFlowTOCViewController *)self view];
  v7 = [v6 superview];

  if (v7)
  {
    [(THFlowTOCViewController *)self setNeedsStatusBarAppearanceUpdate];
    [(THFlowTOCViewController *)self setNeedsUpdateOfHomeIndicatorAutoHidden];
  }

  v8 = [(THFlowTOCViewController *)self view];
  [v8 setNeedsUpdateConstraints];
}

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v5 = [(THFlowTOCViewController *)self configuration:a3];
  [v5 invalidate];

  [(THFlowTOCViewController *)self p_applyTheme];
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  v2 = [(THTOCViewController *)self delegate];
  v3 = [v2 isToolbarHidden];

  return v3;
}

- (void)didReceiveMemoryWarning
{
  if (!self->mTransitionView)
  {
    v5 = v2;
    v6 = v3;
    v4.receiver = self;
    v4.super_class = THFlowTOCViewController;
    [(THFlowTOCViewController *)&v4 didReceiveMemoryWarning];
  }
}

- (void)willTransitionFromChapterIndex:(unint64_t)a3
{
  v5 = +[TSUAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"[THFlowTOCViewController willTransitionFromChapterIndex:]"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowTOCViewController.m"];
  [v5 handleFailureInFunction:v3 file:v4 lineNumber:850 description:@"Not supported in flow TOC"];
}

- (void)didTransitionFromCanvas
{
  v4 = +[TSUAssertionHandler currentHandler];
  v2 = [NSString stringWithUTF8String:"[THFlowTOCViewController didTransitionFromCanvas]"];
  v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowTOCViewController.m"];
  [v4 handleFailureInFunction:v2 file:v3 lineNumber:854 description:@"Not supported in flow TOC"];
}

- (CGRect)rectForPageThumbnailAtIndex:(unint64_t)a3 chapterIndex:(unint64_t)a4 inLayer:(id)a5
{
  v5 = [TSUAssertionHandler currentHandler:a3];
  v6 = [NSString stringWithUTF8String:"[THFlowTOCViewController rectForPageThumbnailAtIndex:chapterIndex:inLayer:]"];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowTOCViewController.m"];
  [v5 handleFailureInFunction:v6 file:v7 lineNumber:858 description:@"Not supported in flow TOC"];

  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)initTOCSectionUIState
{
  v3 = [(THTOCViewController *)self dataSource];
  v19 = self;
  v4 = [v3 toc:self numberOfTilesInDivision:0];

  v20 = [[NSMutableDictionary alloc] initWithCapacity:v4];
  v18 = v4;
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      v6 = [NSIndexPath indexPathForRow:0 inSection:v5];
      v7 = [NSIndexPath indexPathForRow:0 inSection:v5];
      v8 = [(THTOCViewController *)v19 dataSource];
      v9 = [v8 toc:v19 tileModelForChapterIndex:v5];

      v10 = [v9 portraitEntries];
      v11 = [v10 count];

      v12 = [[THFlowTOCChapterUIState alloc] initWithSection:v6];
      [(NSMutableDictionary *)v19->mModelToUIMap setObject:v7 forKey:v6];
      [(NSMutableDictionary *)v19->mUIToModelMap setObject:v6 forKey:v7];
      v13 = +[NSMutableArray array];
      if (v11 >= 2)
      {
        for (i = 1; i != v11; ++i)
        {
          v15 = [v9 portraitEntries];
          v16 = [v15 objectAtIndex:i];

          if ([v16 indentLevel] == &dword_0 + 1 && objc_msgSend(v16, "includeInTOC"))
          {
            v17 = [NSIndexPath indexPathForRow:i inSection:v5];
            [v13 addObject:v17];
          }
        }
      }

      [(THFlowTOCChapterUIState *)v12 setSubItems:v13];
      [v20 setObject:v12 forKey:v7];

      ++v5;
    }

    while (v5 != v18);
  }

  [(THFlowTOCViewController *)v19 setChapterUIState:v20];
}

- (BOOL)isSectionOpen:(id)a3
{
  v4 = a3;
  v5 = [(THFlowTOCViewController *)self chapterUIState];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [v6 opened];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setSectionOpenInUIState:(BOOL)a3 forSection:(id)a4
{
  v4 = a3;
  v21 = a4;
  v6 = [(THFlowTOCViewController *)self chapterUIState];
  v7 = [v6 objectForKey:v21];

  if (!v7)
  {
    v7 = [[THFlowTOCChapterUIState alloc] initWithSection:v21];
    v8 = [(THFlowTOCViewController *)self chapterUIState];
    [v8 setObject:v7 forKey:v21];
  }

  [(THFlowTOCChapterUIState *)v7 setOpened:v4];
  v9 = [(THFlowTOCChapterUIState *)v7 subItems];

  if (v9)
  {
    goto LABEL_12;
  }

  v10 = [(THTOCViewController *)self dataSource];
  v11 = [v10 toc:self tileModelForChapterIndex:{objc_msgSend(v21, "section")}];

  v12 = +[NSMutableArray array];
  v13 = [v21 row] + 1;
  v14 = [v11 portraitEntries];
  v15 = [v14 count];

  if (v13 >= v15)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v16 = [v11 portraitEntries];
    v17 = [v16 objectAtIndex:v13];

    if ([v17 indentLevel] < 2)
    {
      break;
    }

    v18 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", v13, [v21 section]);
    [v12 addObject:v18];

LABEL_8:
    ++v13;
    v19 = [v11 portraitEntries];
    v20 = [v19 count];

    if (v13 >= v20)
    {
      goto LABEL_11;
    }
  }

  if ([v17 indentLevel] != &dword_0 + 1)
  {
    goto LABEL_8;
  }

LABEL_11:
  [(THFlowTOCChapterUIState *)v7 setSubItems:v12];

LABEL_12:
}

- (id)subItemsForSection:(id)a3
{
  v4 = a3;
  v5 = [(THFlowTOCViewController *)self chapterUIState];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 subItems];

  return v7;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = [(THTOCViewController *)self dataSource];
  v5 = [v4 toc:self numberOfTilesInDivision:0];

  return v5;
}

- (int64_t)numberOfRowsInSection:(int64_t)a3
{
  v20[0] = a3;
  v20[1] = 0;
  v4 = [NSIndexPath indexPathWithIndexes:v20 length:2];
  if ([(THFlowTOCViewController *)self isSectionOpen:v4])
  {
    v5 = [(THFlowTOCViewController *)self subItemsForSection:v4];
    v6 = [v5 count] + 1;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([(THFlowTOCViewController *)self isSectionOpen:v12, v15])
          {
            v13 = [(THFlowTOCViewController *)self subItemsForSection:v12];
            v6 = &v6[[v13 count]];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = (&dword_0 + 1);
  }

  return v6;
}

- (CGRect)frameForOrdinalAtIndentLevel:(int64_t)a3
{
  v5 = [(THFlowTOCViewController *)self configuration];
  [v5 ordinalNumberLeftMargin];
  v7 = v6;

  v8 = [(THFlowTOCViewController *)self configuration];
  v9 = [v8 multiLevelIndent];

  if (v9)
  {
    v10 = [(THFlowTOCViewController *)self configuration];
    [v10 ordinalWidthLevel1];
    v12 = v11;

    if (a3 < 1)
    {
      v17 = 0.0;
    }

    else
    {
      v13 = [(THFlowTOCViewController *)self configuration];
      [v13 ordinalWidthLevel2];
      v12 = v14;

      v15 = [(THFlowTOCViewController *)self configuration];
      [v15 ordinalWidthLevel1];
      v17 = v16 + 0.0;

      if (a3 != 1)
      {
        v18 = [(THFlowTOCViewController *)self configuration];
        [v18 ordinalWidthLevel3];
        v12 = v19;

        v20 = [(THFlowTOCViewController *)self configuration];
        [v20 ordinalWidthLevel2];
        v17 = v17 + v21;

        if (a3 >= 3)
        {
          v22 = [(THFlowTOCViewController *)self configuration];
          [v22 ordinalWidthLevel3];
          v17 = v17 + v23 * (a3 - 2);
        }
      }
    }

    v7 = v7 + v17;
  }

  else
  {
    v24 = [(THFlowTOCViewController *)self configuration];
    v25 = v24;
    if (a3)
    {
      [v24 ordinalNumberRightMarginSection];
    }

    else
    {
      [v24 ordinalNumberRightMarginChapter];
    }

    v27 = v26;

    v12 = v27 + self->mMaxOrdinalWidth;
  }

  v28 = [(THFlowTOCViewController *)self configuration];
  [v28 cellHeight];
  v30 = v29;

  v31 = 0.0;
  v32 = v7;
  v33 = v12;
  v34 = v30;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v31;
  result.origin.x = v32;
  return result;
}

- (int64_t)numberOfSubentriesForIndex:(int64_t)a3 inModel:(id)a4
{
  v5 = [a4 portraitEntries];
  v6 = [v5 count];
  v7 = [v5 objectAtIndex:a3];
  v8 = [v7 indentLevel];
  v9 = 0;
  v10 = a3 + 1;
  while (v10 < v6)
  {
    v11 = [v5 objectAtIndex:v10];

    if ([v11 includeInTOC] && objc_msgSend(v11, "indentLevel") > v8)
    {
      ++v9;
    }

    ++v10;
    v7 = v11;
    if ([v11 indentLevel] <= v8)
    {
      goto LABEL_9;
    }
  }

  v11 = v7;
LABEL_9:

  return v9;
}

- (id)labelFontForRow:(unint64_t)a3
{
  v5 = [(THFlowTOCViewController *)self configuration];
  [v5 chapterLabelFontSize];
  v7 = v6;

  v8 = [(THFlowTOCViewController *)self configuration];
  [v8 sectionLabelFontSize];
  v10 = v9;

  if (a3)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  v12 = [UIFont systemFontOfSize:v11];

  return v12;
}

- (id)pageNumberFont
{
  v2 = [(THFlowTOCViewController *)self configuration];
  [v2 pageNumberFontSize];
  v4 = v3;

  return [UIFont systemFontOfSize:v4];
}

- (id)ordinalTextColor
{
  v3 = [(THFlowTOCViewController *)self theme];
  if (v3)
  {
    v4 = [(THFlowTOCViewController *)self theme];
    v5 = [v4 tocPageNumberTextColor];
  }

  else
  {
    v5 = +[UIColor bc_booksSecondaryLabelColor];
  }

  return v5;
}

- (id)chapterTitleColor
{
  v3 = [(THFlowTOCViewController *)self theme];
  if (v3)
  {
    v4 = [(THFlowTOCViewController *)self theme];
    v5 = [v4 contentTextColor];
  }

  else
  {
    v5 = +[UIColor bc_booksLabelColor];
  }

  return v5;
}

- (id)pageNumberColor
{
  v3 = [(THFlowTOCViewController *)self theme];
  if (v3)
  {
    v4 = [(THFlowTOCViewController *)self theme];
    v5 = [v4 tocPageNumberTextColor];
  }

  else
  {
    v5 = +[UIColor bc_booksSecondaryLabelColor];
  }

  return v5;
}

- (id)p_displayPageNumberForTileEntry:(id)a3
{
  v4 = a3;
  v5 = THBundle();
  v6 = [v5 localizedStringForKey:@"-" value:&stru_471858 table:0];

  if ([(THFlowTOCViewController *)self hasPaginatedData])
  {
    v7 = [v4 displayPageNumberValue];
  }

  else
  {
    v8 = [(THTOCViewController *)self delegate];
    v9 = [v8 absolutePageIndexForTileEntry:v4];

    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_7;
    }

    v7 = v9 + 1;
  }

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = +[NSString stringForValue:withListNumberFormat:includeFormatting:](NSString, "stringForValue:withListNumberFormat:includeFormatting:", v7, [v4 displayPageNumberFormat], 0);

    v6 = v10;
  }

LABEL_7:

  return v6;
}

- (id)p_maxAbsolutePageNumberForNodeAtTileEntry:(id)a3
{
  v4 = a3;
  v5 = THBundle();
  v6 = [v5 localizedStringForKey:@"-" value:&stru_471858 table:0];

  if (![(THFlowTOCViewController *)self hasPaginatedData])
  {
    v7 = [(THTOCViewController *)self delegate];
    v8 = [v7 maxAbsolutePageIndexForNodeAtTileEntry:v4];

    if (v8 <= 0x7FFFFFFFFFFFFFFDLL)
    {
      v9 = +[NSString stringForValue:withListNumberFormat:includeFormatting:](NSString, "stringForValue:withListNumberFormat:includeFormatting:", (v8 + 1), [v4 displayPageNumberFormat], 0);

      v6 = v9;
    }
  }

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(THTOCViewController *)self dataSource];
  v53 = [v8 showPageNumbers];

  v9 = [(THFlowTOCViewController *)self configuration];
  [v9 cellHeight];
  v11 = v10;

  v12 = [(THFlowTOCViewController *)self configuration];
  if ([v12 pageNumberDynamicWidth])
  {
    mMaxPageNumberWidth = self->mMaxPageNumberWidth;
    v14 = [(THFlowTOCViewController *)self configuration];
    [v14 pageNumberLeftMargin];
    v16 = mMaxPageNumberWidth + v15;
  }

  else
  {
    v14 = [(THFlowTOCViewController *)self configuration];
    [v14 pageNumberWidth];
    v16 = v17;
  }

  [v7 bounds];
  v19 = v18;
  v20 = [(THFlowTOCViewController *)self configuration];
  v21 = [v20 constrainTableWidthToLegacyiPadWidth];

  v22 = fmin(v19, 768.0);
  if (v21)
  {
    v19 = v22;
  }

  v23 = [v7 dequeueReusableCellWithIdentifier:@"TOCCellReuseIdentifier" forIndexPath:v6];

  [v23 setFrame:{0.0, 0.0, v19, v11}];
  v24 = [(THFlowTOCViewController *)self configuration];
  [v23 updateConstraintsWithConfiguration:v24];

  v25 = [(THFlowTOCViewController *)self theme];

  if (v25)
  {
    v26 = [(THFlowTOCViewController *)self theme];
    v27 = [v26 backgroundColorForTraitEnvironment:self];
    [v23 setBackgroundColor:v27];
  }

  if (!v23)
  {
    v28 = +[TSUAssertionHandler currentHandler];
    v29 = [NSString stringWithUTF8String:"[THFlowTOCViewController tableView:cellForRowAtIndexPath:]"];
    v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowTOCViewController.m"];
    [v28 handleFailureInFunction:v29 file:v30 lineNumber:1167 description:{@"invalid nil value for '%s'", "cell"}];
  }

  v55 = v6;
  v31 = [(NSMutableDictionary *)self->mUIToModelMap objectForKey:v6];
  v32 = [(THTOCViewController *)self dataSource];
  v33 = [v32 toc:self tileModelForChapterIndex:{objc_msgSend(v31, "section")}];

  v54 = v33;
  v34 = [v33 portraitEntries];
  v35 = [v34 objectAtIndex:{objc_msgSend(v31, "row")}];

  v36 = +[UIColor clearColor];
  v37 = -[THFlowTOCViewController labelFontForRow:](self, "labelFontForRow:", [v31 row]);
  v38 = [v23 ordinalLabel];
  [v38 setFont:v37];
  v39 = [(THFlowTOCViewController *)self ordinalTextColor];
  [v38 setTextColor:v39];

  [v38 setBackgroundColor:v36];
  v40 = [v35 sectionIdentifier];
  [v38 setText:v40];

  -[THFlowTOCViewController frameForOrdinalAtIndentLevel:](self, "frameForOrdinalAtIndentLevel:", [v35 indentLevel]);
  [v23 updateOrdinalLabelFrame:?];
  v41 = [v23 rowLabel];
  [v41 setFont:v37];
  v42 = [(THFlowTOCViewController *)self chapterTitleColor];
  [v41 setTextColor:v42];

  [v41 setBackgroundColor:v36];
  v43 = [v35 title];
  [v41 setText:v43];

  if (v53)
  {
    v44 = [v23 pageNumberLabel];
    v45 = [(THFlowTOCViewController *)self pageNumberFont];
    [v44 setFont:v45];

    v46 = [(THFlowTOCViewController *)self pageNumberColor];
    [v44 setTextColor:v46];

    [v44 setBackgroundColor:v36];
    [v44 setTextAlignment:2];
    v47 = [(THFlowTOCViewController *)self p_displayPageNumberForTileEntry:v35];
    [v44 setText:v47];

    [v44 setHidden:0];
    [v23 updatePageNumberLabelWidth:v16];
  }

  v48 = [v23 openCloseButton];
  if ([v35 indentLevel] > 1 || -[THFlowTOCViewController numberOfSubentriesForIndex:inModel:](self, "numberOfSubentriesForIndex:inModel:", objc_msgSend(v31, "row"), v54) < 1)
  {
    v49 = 1;
  }

  else
  {
    [v48 setBackgroundColor:v36];
    if ([(THFlowTOCViewController *)self isSectionOpen:v55])
    {
      [(THFlowTOCViewController *)self closeSectionImage];
    }

    else
    {
      [(THFlowTOCViewController *)self openSectionImage];
    }
    v50 = ;
    [v48 setImage:v50 forState:0];

    [v48 setTag:{objc_msgSend(v55, "section")}];
    [v48 addTarget:self action:"accessoryTapped:" forControlEvents:64];
    v49 = 0;
  }

  [v48 setHidden:v49];
  v51 = [v23 activityIndicatorView];
  [v51 setHidden:1];

  [v23 setDelegate:self];
  [v23 setIndexPath:v55];
  [v23 updateBackgroundImage];

  return v23;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = [(THFlowTOCViewController *)self configuration:a3];
  [v4 cellHeight];
  v6 = v5;

  return v6;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v12 = a4;
  v7 = a5;
  if ((TSUPadUI() & 1) == 0)
  {
    v8 = [(NSMutableDictionary *)self->mUIToModelMap objectForKey:v7];
    v9 = [v8 row];
    v10 = [(THFlowTOCViewController *)self theme];

    if (!v10)
    {
      if (v9)
      {
        +[UIColor bc_booksSecondaryBackground];
      }

      else
      {
        +[UIColor bc_booksBackground];
      }
      v11 = ;
      [v12 setBackgroundColor:v11];
    }
  }
}

- (void)makeSectionOpen:(id)a3 withSender:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->mUIToModelMap objectForKey:v6];
  v9 = -[THFlowTOCViewController numberOfRowsInSection:](self, "numberOfRowsInSection:", [v6 section]);
  [(THFlowTOCViewController *)self setSectionOpenInUIState:1 forSection:v8];
  v10 = [(THFlowTOCViewController *)self closeSectionImage];
  v42 = v7;
  [v7 setImage:v10 forState:0];

  v41 = v8;
  v40 = [(THFlowTOCViewController *)self subItemsForSection:v8];
  obj = [v40 count];
  v11 = [(NSMutableDictionary *)self->mModelToUIMap count];
  if (v11 != [(NSMutableDictionary *)self->mUIToModelMap count])
  {
    v12 = +[TSUAssertionHandler currentHandler];
    v13 = [NSString stringWithUTF8String:"[THFlowTOCViewController makeSectionOpen:withSender:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowTOCViewController.m"];
    [v12 handleFailureInFunction:v13 file:v14 lineNumber:1301 description:@"MAPS CORRUPT"];
  }

  v15 = v9 - 1;
  if (v9 - 1 >= [v6 row] + 1)
  {
    while (1)
    {
      v16 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", v15, [v6 section]);
      v17 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", &obj[v15], [v6 section]);
      v18 = [(NSMutableDictionary *)self->mUIToModelMap objectForKey:v16];
      if (!v18)
      {
        break;
      }

      v19 = v18;
      [(NSMutableDictionary *)self->mUIToModelMap removeObjectForKey:v16];
      [(NSMutableDictionary *)self->mUIToModelMap setObject:v19 forKey:v17];
      [(NSMutableDictionary *)self->mModelToUIMap setObject:v17 forKey:v19];
      v20 = [(NSMutableDictionary *)self->mModelToUIMap count];
      if (v20 != [(NSMutableDictionary *)self->mUIToModelMap count])
      {
        v21 = +[TSUAssertionHandler currentHandler];
        v22 = [NSString stringWithUTF8String:"[THFlowTOCViewController makeSectionOpen:withSender:]"];
        v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowTOCViewController.m"];
        [v21 handleFailureInFunction:v22 file:v23 lineNumber:1319 description:@"MAPS CORRUPT"];
      }

      if (--v15 < [v6 row] + 1)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_10:
  v24 = [(NSMutableDictionary *)self->mModelToUIMap count];
  if (v24 != [(NSMutableDictionary *)self->mUIToModelMap count])
  {
    v25 = +[TSUAssertionHandler currentHandler];
    v26 = [NSString stringWithUTF8String:"[THFlowTOCViewController makeSectionOpen:withSender:]"];
    v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowTOCViewController.m"];
    [v25 handleFailureInFunction:v26 file:v27 lineNumber:1321 description:@"MAPS CORRUPT"];
  }

  v43 = v6;
  v28 = [v6 row];
  v29 = +[NSMutableArray array];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obja = v40;
  v30 = [obja countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v47;
    do
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v47 != v32)
        {
          objc_enumerationMutation(obja);
        }

        ++v28;
        v34 = *(*(&v46 + 1) + 8 * i);
        v35 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", v28, [v34 section]);
        [v29 addObject:v35];
        [(NSMutableDictionary *)self->mModelToUIMap setObject:v35 forKey:v34];
        [(NSMutableDictionary *)self->mUIToModelMap setObject:v34 forKey:v35];
        v36 = [(NSMutableDictionary *)self->mModelToUIMap count];
        if (v36 != [(NSMutableDictionary *)self->mUIToModelMap count])
        {
          v37 = +[TSUAssertionHandler currentHandler];
          v38 = [NSString stringWithUTF8String:"[THFlowTOCViewController makeSectionOpen:withSender:]"];
          v39 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowTOCViewController.m"];
          [v37 handleFailureInFunction:v38 file:v39 lineNumber:1334 description:@"MAPS CORRUPT"];
        }
      }

      v31 = [obja countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v31);
  }

  [(TSWTableView *)self->mTOCTableView beginUpdates];
  [(TSWTableView *)self->mTOCTableView insertRowsAtIndexPaths:v29 withRowAnimation:3];
  [(TSWTableView *)self->mTOCTableView endUpdates];
}

- (void)makeSectionClosed:(id)a3 withSender:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->mUIToModelMap objectForKey:v6];
  v9 = [(THFlowTOCViewController *)self subItemsForSection:v8];
  v44 = -[THFlowTOCViewController numberOfRowsInSection:](self, "numberOfRowsInSection:", [v6 section]);
  v42 = v8;
  [(THFlowTOCViewController *)self setSectionOpenInUIState:0 forSection:v8];
  v10 = [(THFlowTOCViewController *)self openSectionImage];
  v43 = v7;
  [v7 setImage:v10 forState:0];

  [v6 row];
  v11 = +[NSMutableArray array];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v61 objects:v68 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v62;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v62 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [(NSMutableDictionary *)self->mModelToUIMap objectForKey:*(*(&v61 + 1) + 8 * i)];
        [v11 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v61 objects:v68 count:16];
    }

    while (v14);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v12;
  v18 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v58;
    v45 = *v58;
    do
    {
      v21 = 0;
      v46 = v19;
      do
      {
        if (*v58 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v57 + 1) + 8 * v21);
        if ([(THFlowTOCViewController *)self isSectionOpen:v22])
        {
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v23 = [(THFlowTOCViewController *)self subItemsForSection:v22];
          v24 = [v23 countByEnumeratingWithState:&v53 objects:v66 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v54;
            do
            {
              for (j = 0; j != v25; j = j + 1)
              {
                if (*v54 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = [(NSMutableDictionary *)self->mModelToUIMap objectForKey:*(*(&v53 + 1) + 8 * j)];
                [v11 addObject:v28];
              }

              v25 = [v23 countByEnumeratingWithState:&v53 objects:v66 count:16];
            }

            while (v25);
          }

          [(THFlowTOCViewController *)self setSectionOpenInUIState:0 forSection:v22];
          v20 = v45;
          v19 = v46;
        }

        v21 = v21 + 1;
      }

      while (v21 != v19);
      v19 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
    }

    while (v19);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v29 = v11;
  v30 = [v29 countByEnumeratingWithState:&v49 objects:v65 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v50;
    do
    {
      for (k = 0; k != v31; k = k + 1)
      {
        if (*v50 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v49 + 1) + 8 * k);
        v35 = [(NSMutableDictionary *)self->mUIToModelMap objectForKey:v34];
        [(NSMutableDictionary *)self->mModelToUIMap removeObjectForKey:v35];
        [(NSMutableDictionary *)self->mUIToModelMap removeObjectForKey:v34];
      }

      v31 = [v29 countByEnumeratingWithState:&v49 objects:v65 count:16];
    }

    while (v31);
  }

  v36 = v6;
  if (v44 >= 2)
  {
    v37 = 1;
    v38 = NSArray_ptr;
    v47 = 1;
    do
    {
      v39 = [v38[70] indexPathForRow:v37 inSection:{objc_msgSend(v36, "section")}];
      v40 = [(NSMutableDictionary *)self->mUIToModelMap objectForKey:v39];
      if (v40)
      {
        v41 = [v38[70] indexPathForRow:v47 inSection:{objc_msgSend(v36, "section")}];
        [(NSMutableDictionary *)self->mUIToModelMap setObject:v40 forKey:v41];
        [(NSMutableDictionary *)self->mModelToUIMap setObject:v41 forKey:v40];
        if ([v39 compare:v41])
        {
          [(NSMutableDictionary *)self->mUIToModelMap removeObjectForKey:v39];
        }

        ++v47;

        v36 = v6;
        v38 = NSArray_ptr;
      }

      ++v37;
    }

    while (v44 != v37);
  }

  [(TSWTableView *)self->mTOCTableView beginUpdates];
  [(TSWTableView *)self->mTOCTableView deleteRowsAtIndexPaths:v29 withRowAnimation:3];
  [(TSWTableView *)self->mTOCTableView endUpdates];
}

- (void)accessoryTapped:(id)a3
{
  mTOCTableView = self->mTOCTableView;
  v5 = a3;
  [v5 center];
  v7 = v6;
  v9 = v8;
  v10 = [v5 superview];
  [(TSWTableView *)mTOCTableView convertPoint:v10 fromView:v7, v9];
  v12 = [(TSWTableView *)mTOCTableView indexPathForRowAtPoint:?];

  v11 = [(NSMutableDictionary *)self->mUIToModelMap objectForKey:v12];
  if ([(THFlowTOCViewController *)self isSectionOpen:v11])
  {
    [(THFlowTOCViewController *)self makeSectionClosed:v12 withSender:v5];
  }

  else
  {
    [(THFlowTOCViewController *)self makeSectionOpen:v12 withSender:v5];
  }
}

- (void)p_showPageForModelLink:(id)a3
{
  v4 = a3;
  v5 = [(THTOCViewController *)self delegate];
  [v5 showPageForModelLink:v4 animated:1];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 indexPathForSelectedRow];
  [v7 deselectRowAtIndexPath:v8 animated:0];

  [v7 deselectRowAtIndexPath:self->mLastSelectedRow animated:0];
  v18 = [(THFlowTOCViewController *)self findVisibleCellInTable:v7 forIndexPath:self->mLastSelectedRow];
  self->mSuppressLastSelectedRow = 1;
  mLastSelectedRow = self->mLastSelectedRow;
  self->mLastSelectedRow = v6;
  v10 = v6;

  v11 = [(THFlowTOCViewController *)self findVisibleCellInTable:v7 forIndexPath:self->mLastSelectedRow];

  [v18 updateBackgroundImage];
  [v11 updateBackgroundImage];
  [v11 startProgressIndicator];
  v12 = [(NSMutableDictionary *)self->mUIToModelMap objectForKey:v10];
  v13 = [(THTOCViewController *)self dataSource];
  v14 = [v13 toc:self tileModelForChapterIndex:{objc_msgSend(v12, "section")}];

  v15 = [v14 portraitEntries];
  v16 = [v15 objectAtIndex:{objc_msgSend(v12, "row")}];

  v17 = [v16 modelLink];
  [(THFlowTOCViewController *)self performSelector:"p_showPageForModelLink:" withObject:v17 afterDelay:0.0];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (self->mSuppressLastSelectedRow)
  {
    self->mSuppressLastSelectedRow = 0;
    v5 = [(THFlowTOCViewController *)self findVisibleCellInTable:self->mTOCTableView forIndexPath:self->mLastSelectedRow];
    [v5 updateBackgroundImage];
  }
}

- (void)paginationController:(id)a3 paginationCompleteStateChangedTo:(BOOL)a4
{
  v4 = a4;
  if ([(THFlowTOCViewController *)self isViewLoaded])
  {
    if (v4)
    {
      [(THFlowTOCViewController *)self p_updateMaxPageNumberWidth];
    }

    mTOCTableView = self->mTOCTableView;

    [(TSWTableView *)mTOCTableView reloadData];
  }
}

- (void)tableViewCellHighlightDidChange:(id)a3
{
  if ([a3 isHighlighted])
  {
    self->mSuppressLastSelectedRow = 1;
    v4 = [(THFlowTOCViewController *)self findVisibleCellInTable:self->mTOCTableView forIndexPath:self->mLastSelectedRow];
    [v4 updateBackgroundImage];
  }
}

- (void)tableViewCell:(id)a3 hideSeparators:(BOOL)a4
{
  v4 = a4;
  mTOCTableView = self->mTOCTableView;
  v6 = [(TSWTableView *)mTOCTableView indexPathForCell:a3];
  [(TSWTableView *)mTOCTableView setSeparatorsHidden:v4 forCellAtIndexPath:v6];
}

- (BOOL)tableViewCellShouldStayHighlighted:(id)a3
{
  v4 = [a3 indexPath];
  if ([v4 isEqual:self->mLastSelectedRow])
  {
    v5 = !self->mSuppressLastSelectedRow;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tableViewCellBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(THFlowTOCViewController *)self tableViewCellShouldStayHighlighted:v4];
  v6 = [v4 isHighlighted];

  v7 = +[UIColor clearColor];
  v8 = [(THFlowTOCViewController *)self theme];

  v9 = v6 | v5;
  if (v8)
  {
    v10 = [(THFlowTOCViewController *)self theme];
    v11 = v10;
    if (v9)
    {
      [v10 tableViewCellSelectedColor];
    }

    else
    {
      [v10 backgroundColorForTraitEnvironment:self];
    }
    v14 = ;

    v7 = v14;
    goto LABEL_9;
  }

  if (((v6 | v5) & 1) == 0)
  {
    goto LABEL_10;
  }

  if (v6)
  {
    v12 = 0.882352941;
    v13 = 0.929411765;
LABEL_15:
    [UIColor colorWithRed:v12 green:v13 blue:1.0 alpha:1.0];
    v7 = v11 = v7;
LABEL_9:

    goto LABEL_10;
  }

  if (v5)
  {
    v12 = 0.929411765;
    v13 = 0.956862745;
    goto LABEL_15;
  }

LABEL_10:

  return v7;
}

- (void)transitionWillFinish:(id)a3
{
  v4 = a3;
  mTransitionView = self->mTransitionView;
  v9 = v4;
  if (mTransitionView != v4)
  {
    v6 = +[TSUAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"[THFlowTOCViewController transitionWillFinish:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowTOCViewController.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:1584 description:@"unexpected transition view"];

    mTransitionView = self->mTransitionView;
  }

  if (![(THTOCSplitTransitionView *)mTransitionView wasReversed])
  {
    [(THTOCViewController *)self setForceStatusBarVisible:1];
    [(THFlowTOCViewController *)self refreshStatusBarAppearance];
  }
}

- (void)transitionDidFinish:(id)a3
{
  v4 = a3;
  mTransitionView = self->mTransitionView;
  v21 = v4;
  if (mTransitionView != v4)
  {
    v6 = +[TSUAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"[THFlowTOCViewController transitionDidFinish:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowTOCViewController.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:1594 description:@"unexpected transition view"];

    mTransitionView = self->mTransitionView;
  }

  if (![(THTOCSplitTransitionView *)mTransitionView wasReversed])
  {
    v9 = [(THTOCViewController *)self delegate];
    [v9 TOCViewControllerDidShowChapter:self];

    v10 = [(THTOCViewController *)self delegate];
    v11 = [(THFlowTOCViewController *)self introMediaViewController];
    [v10 didTransitionFromViewController:v11 toTOCViewController:self];

    v12 = [(THFlowTOCViewController *)self introMediaViewController];
    LODWORD(v11) = [v12 isPlaying];

    if (v11)
    {
      v13 = [(THFlowTOCViewController *)self introMediaViewController];
      [v13 pause];
    }

    v14 = [(THFlowTOCViewController *)self introMediaViewController];
    [v14 prepareControlsForTOC];

    v15 = [(THFlowTOCViewController *)self introMediaViewController];
    [v15 prepareMovieForTOC];

    v16 = [(THFlowTOCViewController *)self introMediaViewController];
    v17 = [v16 isViewLoaded];

    if (v17)
    {
      v18 = [(THFlowTOCViewController *)self introMediaViewController];
      v19 = [v18 view];
      [v19 removeFromSuperview];
    }

    [(THFlowTOCViewController *)self setIntroMediaViewController:0];
  }

  v20 = self->mTransitionView;
  self->mTransitionView = 0;
}

- (void)introMediaControllerShouldAdvancePast:(id)a3
{
  self->mForceTransitionCompletion = 1;
  v4 = [(THFlowTOCViewController *)self introMediaViewController];
  [v4 prepareControlsForTOC];

  if (!self->mTransitionView)
  {
    [(THFlowTOCViewController *)self p_setupTransitionView];
    mTransitionView = self->mTransitionView;
    if (!mTransitionView)
    {
      v6 = +[TSUAssertionHandler currentHandler];
      v7 = [NSString stringWithUTF8String:"[THFlowTOCViewController introMediaControllerShouldAdvancePast:]"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowTOCViewController.m"];
      [v6 handleFailureInFunction:v7 file:v8 lineNumber:1637 description:{@"invalid nil value for '%s'", "mTransitionView"}];

      mTransitionView = self->mTransitionView;
    }

    [(THTOCSplitTransitionView *)mTransitionView beginTransition];
  }
}

- (id)p_indexPathForChapterIndex:(unint64_t)a3 lessonIndex:(unint64_t)a4
{
  if ([(TSWTableView *)self->mTOCTableView numberOfSections]<= a3)
  {
    v7 = +[TSUAssertionHandler currentHandler];
    v8 = [NSString stringWithUTF8String:"[THFlowTOCViewController p_indexPathForChapterIndex:lessonIndex:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowTOCViewController.m"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:1645 description:@"invalid chapter index"];
  }

  v10 = [NSIndexPath indexPathForRow:0 inSection:a3];
  if ([(THFlowTOCViewController *)self isSectionOpen:v10])
  {
    v11 = [(THTOCViewController *)self dataSource];
    v12 = [v11 toc:self tileModelForChapterIndex:a3];

    v13 = [v12 portraitEntries];
    if ([v13 count] <= a4)
    {
      v14 = +[TSUAssertionHandler currentHandler];
      v15 = [NSString stringWithUTF8String:"[THFlowTOCViewController p_indexPathForChapterIndex:lessonIndex:]"];
      v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowTOCViewController.m"];
      [v14 handleFailureInFunction:v15 file:v16 lineNumber:1651 description:@"invalid lesson index"];
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = v13;
    v18 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = 0;
      v22 = *v27;
LABEL_8:
      v23 = 0;
      while (1)
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(v17);
        }

        ++v21;
        v20 += [*(*(&v26 + 1) + 8 * v23) includeInTOC];
        if (v21 >= a4)
        {
          break;
        }

        if (v19 == ++v23)
        {
          v19 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v19)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }

    else
    {
      v20 = 0;
    }

    v24 = [NSIndexPath indexPathForRow:v20 inSection:a3];

    v10 = v24;
  }

  return v10;
}

- (id)p_cellForChapterIndex:(unint64_t)a3 lessonIndex:(unint64_t)a4
{
  v5 = [(THFlowTOCViewController *)self p_indexPathForChapterIndex:a3 lessonIndex:a4];
  objc_opt_class();
  v6 = [(TSWTableView *)self->mTOCTableView cellForRowAtIndexPath:v5];
  v7 = TSUDynamicCast();

  return v7;
}

- (double)bottomSeparatorYPositionForChapterIndex:(unint64_t)a3 lessonIndex:(unint64_t)a4
{
  v5 = [(THFlowTOCViewController *)self p_cellForChapterIndex:a3 lessonIndex:a4];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(THFlowTOCViewController *)self view];
  [v5 convertRect:v14 toView:{v7, v9, v11, v13}];
  MaxY = CGRectGetMaxY(v17);

  return MaxY;
}

- (void)scrollToRowForChapterIndex:(unint64_t)a3 lessonIndex:(unint64_t)a4
{
  v5 = [(THFlowTOCViewController *)self p_indexPathForChapterIndex:a3 lessonIndex:a4];
  [(TSWTableView *)self->mTOCTableView scrollToRowAtIndexPath:v5 atScrollPosition:2 animated:0];
}

- (id)rasterizedImage
{
  CATransform3DMakeTranslation(&v17, 10000.0, 10000.0, 0.0);
  v3 = [(THFlowTOCViewController *)self introMediaViewController];
  v4 = [v3 view];
  v5 = [v4 layer];
  v16 = v17;
  [v5 setTransform:&v16];

  v15.receiver = self;
  v15.super_class = THFlowTOCViewController;
  v6 = [(THFlowTOCViewController *)&v15 rasterizedImage];
  v7 = [(THFlowTOCViewController *)self introMediaViewController];
  v8 = [v7 view];
  v9 = [v8 layer];
  v10 = *&CATransform3DIdentity.m33;
  *&v16.m31 = *&CATransform3DIdentity.m31;
  *&v16.m33 = v10;
  v11 = *&CATransform3DIdentity.m43;
  *&v16.m41 = *&CATransform3DIdentity.m41;
  *&v16.m43 = v11;
  v12 = *&CATransform3DIdentity.m13;
  *&v16.m11 = *&CATransform3DIdentity.m11;
  *&v16.m13 = v12;
  v13 = *&CATransform3DIdentity.m23;
  *&v16.m21 = *&CATransform3DIdentity.m21;
  *&v16.m23 = v13;
  [v9 setTransform:&v16];

  return v6;
}

- (void)p_setupTransitionView
{
  if (self->mTransitionView)
  {
    v3 = +[TSUAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"[THFlowTOCViewController p_setupTransitionView]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowTOCViewController.m"];
    [v3 handleFailureInFunction:v4 file:v5 lineNumber:1706 description:{@"expected nil value for '%s'", "mTransitionView"}];
  }

  if (([(THFlowTOCViewController *)self isViewLoaded]& 1) == 0)
  {
    v6 = +[TSUAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"[THFlowTOCViewController p_setupTransitionView]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowTOCViewController.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:1707 description:@"THFlowTOCViewController view is not loaded"];
  }

  v9 = [THTOCSplitTransitionView alloc];
  v10 = [(THFlowTOCViewController *)self view];
  [v10 bounds];
  v11 = [(THTOCSplitTransitionView *)v9 initWithFrame:?];
  mTransitionView = self->mTransitionView;
  self->mTransitionView = v11;

  [(THTransitionView *)self->mTransitionView setDelegate:self];
  v13 = [(THFlowTOCViewController *)self introMediaViewController];
  [(THTransitionView *)self->mTransitionView setFromViewController:v13];

  [(THTOCSplitTransitionView *)self->mTransitionView setKeepScaleAnimationView:1];
  v14 = [(THFlowTOCViewController *)self introMediaViewController];
  v15 = [v14 view];
  v16 = [v15 snapshotViewAfterScreenUpdates:0];
  [(THTOCSplitTransitionView *)self->mTransitionView setScaleAnimationView:v16];

  [(THTOCSplitTransitionView *)self->mTransitionView setKeepSplitAnimationView:1];
  v17 = [(TSWTableView *)self->mTOCTableView snapshotViewAfterScreenUpdates:0];
  [(THTOCSplitTransitionView *)self->mTransitionView setSplitAnimationView:v17];

  [(THTransitionView *)self->mTransitionView setToViewController:self];
  [(THTOCSplitTransitionView *)self->mTransitionView setReverse:1];
  [(THTOCSplitTransitionView *)self->mTransitionView slideAnimationScalar];
  [(THTOCSplitTransitionView *)self->mTransitionView setAnimationDuration:0.349999994 / v18];
  v22 = [(THFlowTOCViewController *)self view];
  v19 = [v22 superview];
  v20 = self->mTransitionView;
  v21 = [(THFlowTOCViewController *)self view];
  [v19 insertSubview:v20 aboveSubview:v21];
}

- (THReflowablePaginationController)reflowablePaginationController
{
  WeakRetained = objc_loadWeakRetained(&self->_reflowablePaginationController);

  return WeakRetained;
}

- (CGSize)headerMaxSize
{
  width = self->_headerMaxSize.width;
  height = self->_headerMaxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end