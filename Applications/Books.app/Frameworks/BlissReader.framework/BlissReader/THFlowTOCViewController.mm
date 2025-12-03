@interface THFlowTOCViewController
- (BOOL)introMediaControllerIsActive;
- (BOOL)isSectionOpen:(id)open;
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)tableViewCellShouldStayHighlighted:(id)highlighted;
- (CGRect)frameForOrdinalAtIndentLevel:(int64_t)level;
- (CGRect)rectForPageThumbnailAtIndex:(unint64_t)index chapterIndex:(unint64_t)chapterIndex inLayer:(id)layer;
- (CGSize)headerMaxSize;
- (THFlowTOCConfiguration)configuration;
- (THFlowTOCViewController)initWithNibName:(id)name bundle:(id)bundle;
- (THReflowablePaginationController)reflowablePaginationController;
- (double)bottomSeparatorYPositionForChapterIndex:(unint64_t)index lessonIndex:(unint64_t)lessonIndex;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)chapterTitleColor;
- (id)findVisibleCellInTable:(id)table forIndexPath:(id)path;
- (id)labelFontForRow:(unint64_t)row;
- (id)ordinalTextColor;
- (id)p_cellForChapterIndex:(unint64_t)index lessonIndex:(unint64_t)lessonIndex;
- (id)p_circledButtonImageFromImage:(id)image radius:(double)radius;
- (id)p_displayPageNumberForTileEntry:(id)entry;
- (id)p_indexPathForChapterIndex:(unint64_t)index lessonIndex:(unint64_t)lessonIndex;
- (id)p_maxAbsolutePageNumberForNodeAtTileEntry:(id)entry;
- (id)pageNumberColor;
- (id)pageNumberFont;
- (id)rasterizedImage;
- (id)subItemsForSection:(id)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableViewCellBackgroundColor:(id)color;
- (int64_t)numberOfRowsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)numberOfSubentriesForIndex:(int64_t)index inModel:(id)model;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)accessoryTapped:(id)tapped;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)didTransitionFromCanvas;
- (void)initTOCSectionUIState;
- (void)introMediaControllerShouldAdvancePast:(id)past;
- (void)makeSectionClosed:(id)closed withSender:(id)sender;
- (void)makeSectionOpen:(id)open withSender:(id)sender;
- (void)p_applyTheme;
- (void)p_loadHeaderImageAndUpdateLayout;
- (void)p_releaseOutlets;
- (void)p_setupTransitionView;
- (void)p_showPageForModelLink:(id)link;
- (void)p_tapOnBackground;
- (void)p_updateMaxPageNumberWidth;
- (void)paginationController:(id)controller paginationCompleteStateChangedTo:(BOOL)to;
- (void)scrollToRowForChapterIndex:(unint64_t)index lessonIndex:(unint64_t)lessonIndex;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)setIntroMediaViewController:(id)controller;
- (void)setIntroMediaViewController:(id)controller showIt:(BOOL)it;
- (void)setReflowablePaginationController:(id)controller;
- (void)setSectionOpenInUIState:(BOOL)state forSection:(id)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableViewCell:(id)cell hideSeparators:(BOOL)separators;
- (void)tableViewCellHighlightDidChange:(id)change;
- (void)transitionDidFinish:(id)finish;
- (void)transitionWillFinish:(id)finish;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionFromChapterIndex:(unint64_t)index;
@end

@implementation THFlowTOCViewController

- (THFlowTOCViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  v6 = THBundle();
  v15.receiver = self;
  v15.super_class = THFlowTOCViewController;
  v7 = [(THFlowTOCViewController *)&v15 initWithNibName:nameCopy bundle:v6];

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
    selfCopy = self;
    v5 = [[THFlowTOCConfiguration alloc] initWithContext:selfCopy];
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
    headerImageViews = [(THFlowTOCViewController *)self headerImageViews];

    if (!headerImageViews)
    {
      v4 = [[UIButton alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [(THFlowTOCViewController *)self setHeaderImageViews:v4];

      headerImageViews2 = [(THFlowTOCViewController *)self headerImageViews];
      [headerImageViews2 setAutoresizesSubviews:0];

      headerImageViews3 = [(THFlowTOCViewController *)self headerImageViews];
      [headerImageViews3 addTarget:self action:"p_tapOnBackground" forControlEvents:64];

      v7 = objc_alloc_init(THImageView);
      mHeaderView = self->mHeaderView;
      self->mHeaderView = v7;

      [(THImageView *)self->mHeaderView setUserInteractionEnabled:0];
      headerImageViews4 = [(THFlowTOCViewController *)self headerImageViews];
      [headerImageViews4 addSubview:self->mHeaderView];
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
      navigationController = [(THFlowTOCViewController *)self navigationController];
      navigationBar = [navigationController navigationBar];
      [navigationBar bounds];
      Height = CGRectGetHeight(v30);
    }

    else
    {
      v18 = v11 * (v17 / v16);
      Height = floorf(v18);
    }

    [(THImageView *)self->mHeaderView setFrame:0.0, 0.0, v11, Height];
    headerImageViews5 = [(THFlowTOCViewController *)self headerImageViews];
    [headerImageViews5 setFrame:{0.0, 0.0, v11, Height}];

    v28 = [[UITableViewHeaderFooterView alloc] initWithFrame:{0.0, 0.0, v11, Height}];
    contentView = [v28 contentView];
    headerImageViews6 = [(THFlowTOCViewController *)self headerImageViews];
    [contentView addSubview:headerImageViews6];

    [(TSWTableView *)self->mTOCTableView setTableHeaderView:v28];
    mTOCTableView = self->mTOCTableView;
    view = [(THFlowTOCViewController *)self view];
    [view frame];
    [(TSWTableView *)mTOCTableView _setPinsTableHeaderView:Height / v27 < 0.3, Height / v27];
  }
}

- (void)setIntroMediaViewController:(id)controller
{
  controllerCopy = controller;
  mIntroMediaViewController = self->mIntroMediaViewController;
  if (mIntroMediaViewController != controllerCopy)
  {
    v8 = controllerCopy;
    delegate = [(THiOSIntroMediaViewController *)mIntroMediaViewController delegate];

    if (delegate == self)
    {
      [(THiOSIntroMediaViewController *)self->mIntroMediaViewController setDelegate:0];
    }

    objc_storeStrong(&self->mIntroMediaViewController, controller);
    mIntroMediaViewController = [(THiOSIntroMediaViewController *)self->mIntroMediaViewController setDelegate:self];
    controllerCopy = v8;
  }

  _objc_release_x1(mIntroMediaViewController, controllerCopy);
}

- (void)setIntroMediaViewController:(id)controller showIt:(BOOL)it
{
  if (it)
  {
    controllerCopy = controller;
    [(THFlowTOCViewController *)self view];

    [(THFlowTOCViewController *)self setIntroMediaViewController:controllerCopy];
    [(THTOCViewController *)self setForceStatusBarVisible:0];
    view = [(THFlowTOCViewController *)self view];
    [view bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    introMediaViewController = [(THFlowTOCViewController *)self introMediaViewController];
    view2 = [introMediaViewController view];
    [view2 setFrame:{v8, v10, v12, v14}];

    view3 = [(THFlowTOCViewController *)self view];
    introMediaViewController2 = [(THFlowTOCViewController *)self introMediaViewController];
    view4 = [introMediaViewController2 view];
    [view3 addSubview:view4];

    self->mForceTransitionCompletion = 0;
  }

  [(THFlowTOCViewController *)self refreshStatusBarAppearance];
}

- (BOOL)introMediaControllerIsActive
{
  introMediaViewController = [(THFlowTOCViewController *)self introMediaViewController];
  v3 = introMediaViewController != 0;

  return v3;
}

- (void)viewDidLoad
{
  v31.receiver = self;
  v31.super_class = THFlowTOCViewController;
  [(THFlowTOCViewController *)&v31 viewDidLoad];
  view = [(THFlowTOCViewController *)self view];
  [view setAutoresizingMask:18];

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
  configuration = [(THFlowTOCViewController *)self configuration];
  [configuration separatorColorWhite];
  v10 = [UIColor colorWithWhite:v9 / 255.0 alpha:1.0];
  [(TSWTableView *)self->mTOCTableView setSeparatorColor:v10];

  configuration2 = [(THFlowTOCViewController *)self configuration];
  LODWORD(configuration) = [configuration2 constrainTableWidthToLegacyiPadWidth];

  v12 = 0.0;
  if (configuration)
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
  backgroundColor = [(TSWTableView *)self->mTOCTableView backgroundColor];
  [v18 setBackgroundColor:backgroundColor];

  [(TSWTableView *)self->mTOCTableView setTableFooterView:v18];
  self->mMaxPageNumberWidth = 0.0;
  self->mMaxOrdinalWidth = 0.0;
  [(THFlowTOCViewController *)self initTOCSectionUIState];
  v20 = [UIImage th_imageNamed:kTocArrowCloseImageN];
  configuration3 = [(THFlowTOCViewController *)self configuration];
  [configuration3 discloseButtonRadius];
  v23 = v22;

  v24 = [(THFlowTOCViewController *)self p_circledButtonImageFromImage:v20 radius:v23];
  [(THFlowTOCViewController *)self setCloseSectionImage:v24];

  v25 = [UIImage th_imageNamed:kTocArrowOpenImageN];
  v26 = [(THFlowTOCViewController *)self p_circledButtonImageFromImage:v25 radius:v23];
  [(THFlowTOCViewController *)self setOpenSectionImage:v26];

  dataSource = [(THTOCViewController *)self dataSource];
  v28 = [dataSource bookTOCHeaderImageDataForTOC:self];
  [(THFlowTOCViewController *)self setHeaderImageData:v28];

  [(THFlowTOCViewController *)self p_loadHeaderImageAndUpdateLayout];
  v29 = +[UIColor blackColor];
  view2 = [(THFlowTOCViewController *)self view];
  [view2 setBackgroundColor:v29];

  [(THFlowTOCViewController *)self p_applyTheme];
}

- (id)p_circledButtonImageFromImage:(id)image radius:(double)radius
{
  imageCopy = image;
  v6 = radius + radius;
  [imageCopy size];
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
  v22 = imageCopy;
  v27 = v8;
  v28 = v10;
  v29 = v12;
  v30 = v14;
  v18 = imageCopy;
  v19 = [v17 imageWithActions:v21];

  return v19;
}

- (void)p_tapOnBackground
{
  if (!UIAccessibilityIsVoiceOverRunning() && !UIAccessibilityIsSwitchControlRunning())
  {
    delegate = [(THTOCViewController *)self delegate];
    isToolbarHidden = [delegate isToolbarHidden];

    delegate2 = [(THTOCViewController *)self delegate];
    v6 = delegate2;
    if (isToolbarHidden)
    {
      [delegate2 showToolbarAnimated:1];
    }

    else
    {
      [delegate2 hideToolbarAnimated:1];
    }
  }
}

- (void)p_applyTheme
{
  if ([(THFlowTOCViewController *)self isViewLoaded])
  {
    theme = [(THFlowTOCViewController *)self theme];

    if (theme)
    {
      theme2 = [(THFlowTOCViewController *)self theme];
      v10 = [theme2 backgroundColorForTraitEnvironment:self];

      theme3 = [(THFlowTOCViewController *)self theme];
      tableViewSeparatorColor = [theme3 tableViewSeparatorColor];
      [(TSWTableView *)self->mTOCTableView setSeparatorColor:tableViewSeparatorColor];
    }

    else
    {
      v10 = +[UIColor systemBackgroundColor];
    }

    view = [(THFlowTOCViewController *)self view];
    [view setBackgroundColor:v10];

    [(TSWTableView *)self->mTOCTableView setBackgroundColor:v10];
    tableFooterView = [(TSWTableView *)self->mTOCTableView tableFooterView];
    [tableFooterView setBackgroundColor:v10];

    tableHeaderView = [(TSWTableView *)self->mTOCTableView tableHeaderView];
    [tableHeaderView setBackgroundColor:v10];

    [(TSWTableView *)self->mTOCTableView reloadData];
    [(THFlowTOCViewController *)self setNeedsStatusBarAppearanceUpdate];
    [(THFlowTOCViewController *)self setNeedsUpdateOfHomeIndicatorAutoHidden];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = THFlowTOCViewController;
  [(THFlowTOCViewController *)&v11 viewWillAppear:appear];
  configuration = [(THFlowTOCViewController *)self configuration];
  [configuration invalidate];

  backgroundButton = [(THFlowTOCViewController *)self backgroundButton];

  if (!backgroundButton)
  {
    v6 = [UIButton alloc];
    view = [(THFlowTOCViewController *)self view];
    [view frame];
    v8 = [v6 initWithFrame:?];

    [v8 setAutoresizingMask:18];
    view2 = [(THFlowTOCViewController *)self view];
    [view2 insertSubview:v8 belowSubview:self->mTOCTableView];

    [(THFlowTOCViewController *)self setBackgroundButton:v8];
    backgroundButton2 = [(THFlowTOCViewController *)self backgroundButton];
    [backgroundButton2 addTarget:self action:"p_tapOnBackground" forControlEvents:64];
  }
}

- (void)setReflowablePaginationController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_reflowablePaginationController);

  if (WeakRetained != obj)
  {
    reflowablePaginationController = [(THFlowTOCViewController *)self reflowablePaginationController];
    [reflowablePaginationController unregisterObserver:self];

    objc_storeWeak(&self->_reflowablePaginationController, obj);
    reflowablePaginationController2 = [(THFlowTOCViewController *)self reflowablePaginationController];
    [reflowablePaginationController2 registerObserver:self];
  }
}

- (void)p_updateMaxPageNumberWidth
{
  dataSource = [(THTOCViewController *)self dataSource];
  showPageNumbers = [dataSource showPageNumbers];

  pageNumberFont = [(THFlowTOCViewController *)self pageNumberFont];
  v4 = [(THFlowTOCViewController *)self labelFontForRow:0];
  v5 = [(THFlowTOCViewController *)self labelFontForRow:1];
  dataSource2 = [(THTOCViewController *)self dataSource];
  v7 = [dataSource2 toc:self numberOfTilesInDivision:0];

  v27 = v7;
  if (v7)
  {
    v8 = 0;
    v29 = v4;
    do
    {
      dataSource3 = [(THTOCViewController *)self dataSource];
      v28 = v8;
      v10 = [dataSource3 toc:self tileModelForChapterIndex:v8];

      portraitEntries = [v10 portraitEntries];
      v12 = [portraitEntries count];

      if (v12)
      {
        for (i = 0; i != v12; ++i)
        {
          portraitEntries2 = [v10 portraitEntries];
          v15 = [portraitEntries2 objectAtIndex:i];

          if ([v15 includeInTOC])
          {
            sectionIdentifier = [v15 sectionIdentifier];
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
            [sectionIdentifier sizeWithAttributes:v18];
            v20 = v19;

            if (v20 > self->mMaxOrdinalWidth)
            {
              self->mMaxOrdinalWidth = v20;
            }

            if (showPageNumbers)
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
              v33 = pageNumberFont;
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
  configuration = [(THFlowTOCViewController *)self configuration];
  [configuration cellHeight];
  [(TSWTableView *)self->mTOCTableView setRowHeight:?];

  [(THFlowTOCViewController *)self p_updateMaxPageNumberWidth];
  configuration2 = [(THFlowTOCViewController *)self configuration];
  [configuration2 ordinalNumberLeftMargin];
  v6 = v5;

  configuration3 = [(THFlowTOCViewController *)self configuration];
  [configuration3 discloseButtonRightMargin];
  v9 = v8;

  v10 = 0.0;
  [(TSWTableView *)self->mTOCTableView setSeparatorInset:0.0, v6, 0.0, v9];
  configuration4 = [(THFlowTOCViewController *)self configuration];
  constrainTableWidthToLegacyiPadWidth = [configuration4 constrainTableWidthToLegacyiPadWidth];

  if (constrainTableWidthToLegacyiPadWidth)
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

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = THFlowTOCViewController;
  [(THFlowTOCViewController *)&v6 viewDidAppear:appear];
  delegate = [(THTOCViewController *)self delegate];
  [delegate tocIsReadyToPresent:self];

  delegate2 = [(THTOCViewController *)self delegate];
  [delegate2 setupDVCForTOCController:self];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = THFlowTOCViewController;
  [(THFlowTOCViewController *)&v5 viewWillDisappear:disappear];
  v4 = [(THFlowTOCViewController *)self findVisibleCellInTable:self->mTOCTableView forIndexPath:self->mLastSelectedRow];
  [v4 stopProgressIndicator];
}

- (id)findVisibleCellInTable:(id)table forIndexPath:(id)path
{
  tableCopy = table;
  pathCopy = path;
  indexPathsForVisibleRows = [tableCopy indexPathsForVisibleRows];
  if ([indexPathsForVisibleRows indexOfObject:pathCopy] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [tableCopy cellForRowAtIndexPath:pathCopy];
  }

  return v8;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v9.receiver = self;
  v9.super_class = THFlowTOCViewController;
  [(THFlowTOCViewController *)&v9 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  configuration = [(THFlowTOCViewController *)self configuration];
  [configuration invalidate];

  view = [(THFlowTOCViewController *)self view];
  superview = [view superview];

  if (superview)
  {
    [(THFlowTOCViewController *)self setNeedsStatusBarAppearanceUpdate];
    [(THFlowTOCViewController *)self setNeedsUpdateOfHomeIndicatorAutoHidden];
  }

  view2 = [(THFlowTOCViewController *)self view];
  [view2 setNeedsUpdateConstraints];
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  v5 = [(THFlowTOCViewController *)self configuration:change];
  [v5 invalidate];

  [(THFlowTOCViewController *)self p_applyTheme];
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  delegate = [(THTOCViewController *)self delegate];
  isToolbarHidden = [delegate isToolbarHidden];

  return isToolbarHidden;
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

- (void)willTransitionFromChapterIndex:(unint64_t)index
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

- (CGRect)rectForPageThumbnailAtIndex:(unint64_t)index chapterIndex:(unint64_t)chapterIndex inLayer:(id)layer
{
  v5 = [TSUAssertionHandler currentHandler:index];
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
  dataSource = [(THTOCViewController *)self dataSource];
  selfCopy = self;
  v4 = [dataSource toc:self numberOfTilesInDivision:0];

  v20 = [[NSMutableDictionary alloc] initWithCapacity:v4];
  v18 = v4;
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      v6 = [NSIndexPath indexPathForRow:0 inSection:v5];
      v7 = [NSIndexPath indexPathForRow:0 inSection:v5];
      dataSource2 = [(THTOCViewController *)selfCopy dataSource];
      v9 = [dataSource2 toc:selfCopy tileModelForChapterIndex:v5];

      portraitEntries = [v9 portraitEntries];
      v11 = [portraitEntries count];

      v12 = [[THFlowTOCChapterUIState alloc] initWithSection:v6];
      [(NSMutableDictionary *)selfCopy->mModelToUIMap setObject:v7 forKey:v6];
      [(NSMutableDictionary *)selfCopy->mUIToModelMap setObject:v6 forKey:v7];
      v13 = +[NSMutableArray array];
      if (v11 >= 2)
      {
        for (i = 1; i != v11; ++i)
        {
          portraitEntries2 = [v9 portraitEntries];
          v16 = [portraitEntries2 objectAtIndex:i];

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

  [(THFlowTOCViewController *)selfCopy setChapterUIState:v20];
}

- (BOOL)isSectionOpen:(id)open
{
  openCopy = open;
  chapterUIState = [(THFlowTOCViewController *)self chapterUIState];
  v6 = [chapterUIState objectForKey:openCopy];

  if (v6)
  {
    opened = [v6 opened];
  }

  else
  {
    opened = 0;
  }

  return opened;
}

- (void)setSectionOpenInUIState:(BOOL)state forSection:(id)section
{
  stateCopy = state;
  sectionCopy = section;
  chapterUIState = [(THFlowTOCViewController *)self chapterUIState];
  v7 = [chapterUIState objectForKey:sectionCopy];

  if (!v7)
  {
    v7 = [[THFlowTOCChapterUIState alloc] initWithSection:sectionCopy];
    chapterUIState2 = [(THFlowTOCViewController *)self chapterUIState];
    [chapterUIState2 setObject:v7 forKey:sectionCopy];
  }

  [(THFlowTOCChapterUIState *)v7 setOpened:stateCopy];
  subItems = [(THFlowTOCChapterUIState *)v7 subItems];

  if (subItems)
  {
    goto LABEL_12;
  }

  dataSource = [(THTOCViewController *)self dataSource];
  v11 = [dataSource toc:self tileModelForChapterIndex:{objc_msgSend(sectionCopy, "section")}];

  v12 = +[NSMutableArray array];
  v13 = [sectionCopy row] + 1;
  portraitEntries = [v11 portraitEntries];
  v15 = [portraitEntries count];

  if (v13 >= v15)
  {
    goto LABEL_11;
  }

  while (1)
  {
    portraitEntries2 = [v11 portraitEntries];
    v17 = [portraitEntries2 objectAtIndex:v13];

    if ([v17 indentLevel] < 2)
    {
      break;
    }

    v18 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", v13, [sectionCopy section]);
    [v12 addObject:v18];

LABEL_8:
    ++v13;
    portraitEntries3 = [v11 portraitEntries];
    v20 = [portraitEntries3 count];

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

- (id)subItemsForSection:(id)section
{
  sectionCopy = section;
  chapterUIState = [(THFlowTOCViewController *)self chapterUIState];
  v6 = [chapterUIState objectForKey:sectionCopy];

  subItems = [v6 subItems];

  return subItems;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  dataSource = [(THTOCViewController *)self dataSource];
  v5 = [dataSource toc:self numberOfTilesInDivision:0];

  return v5;
}

- (int64_t)numberOfRowsInSection:(int64_t)section
{
  v20[0] = section;
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

- (CGRect)frameForOrdinalAtIndentLevel:(int64_t)level
{
  configuration = [(THFlowTOCViewController *)self configuration];
  [configuration ordinalNumberLeftMargin];
  v7 = v6;

  configuration2 = [(THFlowTOCViewController *)self configuration];
  multiLevelIndent = [configuration2 multiLevelIndent];

  if (multiLevelIndent)
  {
    configuration3 = [(THFlowTOCViewController *)self configuration];
    [configuration3 ordinalWidthLevel1];
    v12 = v11;

    if (level < 1)
    {
      v17 = 0.0;
    }

    else
    {
      configuration4 = [(THFlowTOCViewController *)self configuration];
      [configuration4 ordinalWidthLevel2];
      v12 = v14;

      configuration5 = [(THFlowTOCViewController *)self configuration];
      [configuration5 ordinalWidthLevel1];
      v17 = v16 + 0.0;

      if (level != 1)
      {
        configuration6 = [(THFlowTOCViewController *)self configuration];
        [configuration6 ordinalWidthLevel3];
        v12 = v19;

        configuration7 = [(THFlowTOCViewController *)self configuration];
        [configuration7 ordinalWidthLevel2];
        v17 = v17 + v21;

        if (level >= 3)
        {
          configuration8 = [(THFlowTOCViewController *)self configuration];
          [configuration8 ordinalWidthLevel3];
          v17 = v17 + v23 * (level - 2);
        }
      }
    }

    v7 = v7 + v17;
  }

  else
  {
    configuration9 = [(THFlowTOCViewController *)self configuration];
    v25 = configuration9;
    if (level)
    {
      [configuration9 ordinalNumberRightMarginSection];
    }

    else
    {
      [configuration9 ordinalNumberRightMarginChapter];
    }

    v27 = v26;

    v12 = v27 + self->mMaxOrdinalWidth;
  }

  configuration10 = [(THFlowTOCViewController *)self configuration];
  [configuration10 cellHeight];
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

- (int64_t)numberOfSubentriesForIndex:(int64_t)index inModel:(id)model
{
  portraitEntries = [model portraitEntries];
  v6 = [portraitEntries count];
  v7 = [portraitEntries objectAtIndex:index];
  indentLevel = [v7 indentLevel];
  v9 = 0;
  v10 = index + 1;
  while (v10 < v6)
  {
    v11 = [portraitEntries objectAtIndex:v10];

    if ([v11 includeInTOC] && objc_msgSend(v11, "indentLevel") > indentLevel)
    {
      ++v9;
    }

    ++v10;
    v7 = v11;
    if ([v11 indentLevel] <= indentLevel)
    {
      goto LABEL_9;
    }
  }

  v11 = v7;
LABEL_9:

  return v9;
}

- (id)labelFontForRow:(unint64_t)row
{
  configuration = [(THFlowTOCViewController *)self configuration];
  [configuration chapterLabelFontSize];
  v7 = v6;

  configuration2 = [(THFlowTOCViewController *)self configuration];
  [configuration2 sectionLabelFontSize];
  v10 = v9;

  if (row)
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
  configuration = [(THFlowTOCViewController *)self configuration];
  [configuration pageNumberFontSize];
  v4 = v3;

  return [UIFont systemFontOfSize:v4];
}

- (id)ordinalTextColor
{
  theme = [(THFlowTOCViewController *)self theme];
  if (theme)
  {
    theme2 = [(THFlowTOCViewController *)self theme];
    tocPageNumberTextColor = [theme2 tocPageNumberTextColor];
  }

  else
  {
    tocPageNumberTextColor = +[UIColor bc_booksSecondaryLabelColor];
  }

  return tocPageNumberTextColor;
}

- (id)chapterTitleColor
{
  theme = [(THFlowTOCViewController *)self theme];
  if (theme)
  {
    theme2 = [(THFlowTOCViewController *)self theme];
    contentTextColor = [theme2 contentTextColor];
  }

  else
  {
    contentTextColor = +[UIColor bc_booksLabelColor];
  }

  return contentTextColor;
}

- (id)pageNumberColor
{
  theme = [(THFlowTOCViewController *)self theme];
  if (theme)
  {
    theme2 = [(THFlowTOCViewController *)self theme];
    tocPageNumberTextColor = [theme2 tocPageNumberTextColor];
  }

  else
  {
    tocPageNumberTextColor = +[UIColor bc_booksSecondaryLabelColor];
  }

  return tocPageNumberTextColor;
}

- (id)p_displayPageNumberForTileEntry:(id)entry
{
  entryCopy = entry;
  v5 = THBundle();
  v6 = [v5 localizedStringForKey:@"-" value:&stru_471858 table:0];

  if ([(THFlowTOCViewController *)self hasPaginatedData])
  {
    displayPageNumberValue = [entryCopy displayPageNumberValue];
  }

  else
  {
    delegate = [(THTOCViewController *)self delegate];
    v9 = [delegate absolutePageIndexForTileEntry:entryCopy];

    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_7;
    }

    displayPageNumberValue = v9 + 1;
  }

  if (displayPageNumberValue != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = +[NSString stringForValue:withListNumberFormat:includeFormatting:](NSString, "stringForValue:withListNumberFormat:includeFormatting:", displayPageNumberValue, [entryCopy displayPageNumberFormat], 0);

    v6 = v10;
  }

LABEL_7:

  return v6;
}

- (id)p_maxAbsolutePageNumberForNodeAtTileEntry:(id)entry
{
  entryCopy = entry;
  v5 = THBundle();
  v6 = [v5 localizedStringForKey:@"-" value:&stru_471858 table:0];

  if (![(THFlowTOCViewController *)self hasPaginatedData])
  {
    delegate = [(THTOCViewController *)self delegate];
    v8 = [delegate maxAbsolutePageIndexForNodeAtTileEntry:entryCopy];

    if (v8 <= 0x7FFFFFFFFFFFFFFDLL)
    {
      v9 = +[NSString stringForValue:withListNumberFormat:includeFormatting:](NSString, "stringForValue:withListNumberFormat:includeFormatting:", (v8 + 1), [entryCopy displayPageNumberFormat], 0);

      v6 = v9;
    }
  }

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  dataSource = [(THTOCViewController *)self dataSource];
  showPageNumbers = [dataSource showPageNumbers];

  configuration = [(THFlowTOCViewController *)self configuration];
  [configuration cellHeight];
  v11 = v10;

  configuration2 = [(THFlowTOCViewController *)self configuration];
  if ([configuration2 pageNumberDynamicWidth])
  {
    mMaxPageNumberWidth = self->mMaxPageNumberWidth;
    configuration3 = [(THFlowTOCViewController *)self configuration];
    [configuration3 pageNumberLeftMargin];
    v16 = mMaxPageNumberWidth + v15;
  }

  else
  {
    configuration3 = [(THFlowTOCViewController *)self configuration];
    [configuration3 pageNumberWidth];
    v16 = v17;
  }

  [viewCopy bounds];
  v19 = v18;
  configuration4 = [(THFlowTOCViewController *)self configuration];
  constrainTableWidthToLegacyiPadWidth = [configuration4 constrainTableWidthToLegacyiPadWidth];

  v22 = fmin(v19, 768.0);
  if (constrainTableWidthToLegacyiPadWidth)
  {
    v19 = v22;
  }

  v23 = [viewCopy dequeueReusableCellWithIdentifier:@"TOCCellReuseIdentifier" forIndexPath:pathCopy];

  [v23 setFrame:{0.0, 0.0, v19, v11}];
  configuration5 = [(THFlowTOCViewController *)self configuration];
  [v23 updateConstraintsWithConfiguration:configuration5];

  theme = [(THFlowTOCViewController *)self theme];

  if (theme)
  {
    theme2 = [(THFlowTOCViewController *)self theme];
    v27 = [theme2 backgroundColorForTraitEnvironment:self];
    [v23 setBackgroundColor:v27];
  }

  if (!v23)
  {
    v28 = +[TSUAssertionHandler currentHandler];
    v29 = [NSString stringWithUTF8String:"[THFlowTOCViewController tableView:cellForRowAtIndexPath:]"];
    v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowTOCViewController.m"];
    [v28 handleFailureInFunction:v29 file:v30 lineNumber:1167 description:{@"invalid nil value for '%s'", "cell"}];
  }

  v55 = pathCopy;
  v31 = [(NSMutableDictionary *)self->mUIToModelMap objectForKey:pathCopy];
  dataSource2 = [(THTOCViewController *)self dataSource];
  v33 = [dataSource2 toc:self tileModelForChapterIndex:{objc_msgSend(v31, "section")}];

  v54 = v33;
  portraitEntries = [v33 portraitEntries];
  v35 = [portraitEntries objectAtIndex:{objc_msgSend(v31, "row")}];

  v36 = +[UIColor clearColor];
  v37 = -[THFlowTOCViewController labelFontForRow:](self, "labelFontForRow:", [v31 row]);
  ordinalLabel = [v23 ordinalLabel];
  [ordinalLabel setFont:v37];
  ordinalTextColor = [(THFlowTOCViewController *)self ordinalTextColor];
  [ordinalLabel setTextColor:ordinalTextColor];

  [ordinalLabel setBackgroundColor:v36];
  sectionIdentifier = [v35 sectionIdentifier];
  [ordinalLabel setText:sectionIdentifier];

  -[THFlowTOCViewController frameForOrdinalAtIndentLevel:](self, "frameForOrdinalAtIndentLevel:", [v35 indentLevel]);
  [v23 updateOrdinalLabelFrame:?];
  rowLabel = [v23 rowLabel];
  [rowLabel setFont:v37];
  chapterTitleColor = [(THFlowTOCViewController *)self chapterTitleColor];
  [rowLabel setTextColor:chapterTitleColor];

  [rowLabel setBackgroundColor:v36];
  title = [v35 title];
  [rowLabel setText:title];

  if (showPageNumbers)
  {
    pageNumberLabel = [v23 pageNumberLabel];
    pageNumberFont = [(THFlowTOCViewController *)self pageNumberFont];
    [pageNumberLabel setFont:pageNumberFont];

    pageNumberColor = [(THFlowTOCViewController *)self pageNumberColor];
    [pageNumberLabel setTextColor:pageNumberColor];

    [pageNumberLabel setBackgroundColor:v36];
    [pageNumberLabel setTextAlignment:2];
    v47 = [(THFlowTOCViewController *)self p_displayPageNumberForTileEntry:v35];
    [pageNumberLabel setText:v47];

    [pageNumberLabel setHidden:0];
    [v23 updatePageNumberLabelWidth:v16];
  }

  openCloseButton = [v23 openCloseButton];
  if ([v35 indentLevel] > 1 || -[THFlowTOCViewController numberOfSubentriesForIndex:inModel:](self, "numberOfSubentriesForIndex:inModel:", objc_msgSend(v31, "row"), v54) < 1)
  {
    v49 = 1;
  }

  else
  {
    [openCloseButton setBackgroundColor:v36];
    if ([(THFlowTOCViewController *)self isSectionOpen:v55])
    {
      [(THFlowTOCViewController *)self closeSectionImage];
    }

    else
    {
      [(THFlowTOCViewController *)self openSectionImage];
    }
    v50 = ;
    [openCloseButton setImage:v50 forState:0];

    [openCloseButton setTag:{objc_msgSend(v55, "section")}];
    [openCloseButton addTarget:self action:"accessoryTapped:" forControlEvents:64];
    v49 = 0;
  }

  [openCloseButton setHidden:v49];
  activityIndicatorView = [v23 activityIndicatorView];
  [activityIndicatorView setHidden:1];

  [v23 setDelegate:self];
  [v23 setIndexPath:v55];
  [v23 updateBackgroundImage];

  return v23;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v4 = [(THFlowTOCViewController *)self configuration:view];
  [v4 cellHeight];
  v6 = v5;

  return v6;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  if ((TSUPadUI() & 1) == 0)
  {
    v8 = [(NSMutableDictionary *)self->mUIToModelMap objectForKey:pathCopy];
    v9 = [v8 row];
    theme = [(THFlowTOCViewController *)self theme];

    if (!theme)
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
      [cellCopy setBackgroundColor:v11];
    }
  }
}

- (void)makeSectionOpen:(id)open withSender:(id)sender
{
  openCopy = open;
  senderCopy = sender;
  v8 = [(NSMutableDictionary *)self->mUIToModelMap objectForKey:openCopy];
  v9 = -[THFlowTOCViewController numberOfRowsInSection:](self, "numberOfRowsInSection:", [openCopy section]);
  [(THFlowTOCViewController *)self setSectionOpenInUIState:1 forSection:v8];
  closeSectionImage = [(THFlowTOCViewController *)self closeSectionImage];
  v42 = senderCopy;
  [senderCopy setImage:closeSectionImage forState:0];

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
  if (v9 - 1 >= [openCopy row] + 1)
  {
    while (1)
    {
      v16 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", v15, [openCopy section]);
      v17 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", &obj[v15], [openCopy section]);
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

      if (--v15 < [openCopy row] + 1)
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

  v43 = openCopy;
  v28 = [openCopy row];
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

- (void)makeSectionClosed:(id)closed withSender:(id)sender
{
  closedCopy = closed;
  senderCopy = sender;
  v8 = [(NSMutableDictionary *)self->mUIToModelMap objectForKey:closedCopy];
  v9 = [(THFlowTOCViewController *)self subItemsForSection:v8];
  v44 = -[THFlowTOCViewController numberOfRowsInSection:](self, "numberOfRowsInSection:", [closedCopy section]);
  v42 = v8;
  [(THFlowTOCViewController *)self setSectionOpenInUIState:0 forSection:v8];
  openSectionImage = [(THFlowTOCViewController *)self openSectionImage];
  v43 = senderCopy;
  [senderCopy setImage:openSectionImage forState:0];

  [closedCopy row];
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

  v36 = closedCopy;
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

        v36 = closedCopy;
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

- (void)accessoryTapped:(id)tapped
{
  mTOCTableView = self->mTOCTableView;
  tappedCopy = tapped;
  [tappedCopy center];
  v7 = v6;
  v9 = v8;
  superview = [tappedCopy superview];
  [(TSWTableView *)mTOCTableView convertPoint:superview fromView:v7, v9];
  v12 = [(TSWTableView *)mTOCTableView indexPathForRowAtPoint:?];

  v11 = [(NSMutableDictionary *)self->mUIToModelMap objectForKey:v12];
  if ([(THFlowTOCViewController *)self isSectionOpen:v11])
  {
    [(THFlowTOCViewController *)self makeSectionClosed:v12 withSender:tappedCopy];
  }

  else
  {
    [(THFlowTOCViewController *)self makeSectionOpen:v12 withSender:tappedCopy];
  }
}

- (void)p_showPageForModelLink:(id)link
{
  linkCopy = link;
  delegate = [(THTOCViewController *)self delegate];
  [delegate showPageForModelLink:linkCopy animated:1];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  indexPathForSelectedRow = [viewCopy indexPathForSelectedRow];
  [viewCopy deselectRowAtIndexPath:indexPathForSelectedRow animated:0];

  [viewCopy deselectRowAtIndexPath:self->mLastSelectedRow animated:0];
  v18 = [(THFlowTOCViewController *)self findVisibleCellInTable:viewCopy forIndexPath:self->mLastSelectedRow];
  self->mSuppressLastSelectedRow = 1;
  mLastSelectedRow = self->mLastSelectedRow;
  self->mLastSelectedRow = pathCopy;
  v10 = pathCopy;

  v11 = [(THFlowTOCViewController *)self findVisibleCellInTable:viewCopy forIndexPath:self->mLastSelectedRow];

  [v18 updateBackgroundImage];
  [v11 updateBackgroundImage];
  [v11 startProgressIndicator];
  v12 = [(NSMutableDictionary *)self->mUIToModelMap objectForKey:v10];
  dataSource = [(THTOCViewController *)self dataSource];
  v14 = [dataSource toc:self tileModelForChapterIndex:{objc_msgSend(v12, "section")}];

  portraitEntries = [v14 portraitEntries];
  v16 = [portraitEntries objectAtIndex:{objc_msgSend(v12, "row")}];

  modelLink = [v16 modelLink];
  [(THFlowTOCViewController *)self performSelector:"p_showPageForModelLink:" withObject:modelLink afterDelay:0.0];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (self->mSuppressLastSelectedRow)
  {
    self->mSuppressLastSelectedRow = 0;
    v5 = [(THFlowTOCViewController *)self findVisibleCellInTable:self->mTOCTableView forIndexPath:self->mLastSelectedRow];
    [v5 updateBackgroundImage];
  }
}

- (void)paginationController:(id)controller paginationCompleteStateChangedTo:(BOOL)to
{
  toCopy = to;
  if ([(THFlowTOCViewController *)self isViewLoaded])
  {
    if (toCopy)
    {
      [(THFlowTOCViewController *)self p_updateMaxPageNumberWidth];
    }

    mTOCTableView = self->mTOCTableView;

    [(TSWTableView *)mTOCTableView reloadData];
  }
}

- (void)tableViewCellHighlightDidChange:(id)change
{
  if ([change isHighlighted])
  {
    self->mSuppressLastSelectedRow = 1;
    v4 = [(THFlowTOCViewController *)self findVisibleCellInTable:self->mTOCTableView forIndexPath:self->mLastSelectedRow];
    [v4 updateBackgroundImage];
  }
}

- (void)tableViewCell:(id)cell hideSeparators:(BOOL)separators
{
  separatorsCopy = separators;
  mTOCTableView = self->mTOCTableView;
  v6 = [(TSWTableView *)mTOCTableView indexPathForCell:cell];
  [(TSWTableView *)mTOCTableView setSeparatorsHidden:separatorsCopy forCellAtIndexPath:v6];
}

- (BOOL)tableViewCellShouldStayHighlighted:(id)highlighted
{
  indexPath = [highlighted indexPath];
  if ([indexPath isEqual:self->mLastSelectedRow])
  {
    v5 = !self->mSuppressLastSelectedRow;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tableViewCellBackgroundColor:(id)color
{
  colorCopy = color;
  v5 = [(THFlowTOCViewController *)self tableViewCellShouldStayHighlighted:colorCopy];
  isHighlighted = [colorCopy isHighlighted];

  v7 = +[UIColor clearColor];
  theme = [(THFlowTOCViewController *)self theme];

  v9 = isHighlighted | v5;
  if (theme)
  {
    theme2 = [(THFlowTOCViewController *)self theme];
    v11 = theme2;
    if (v9)
    {
      [theme2 tableViewCellSelectedColor];
    }

    else
    {
      [theme2 backgroundColorForTraitEnvironment:self];
    }
    v14 = ;

    v7 = v14;
    goto LABEL_9;
  }

  if (((isHighlighted | v5) & 1) == 0)
  {
    goto LABEL_10;
  }

  if (isHighlighted)
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

- (void)transitionWillFinish:(id)finish
{
  finishCopy = finish;
  mTransitionView = self->mTransitionView;
  v9 = finishCopy;
  if (mTransitionView != finishCopy)
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

- (void)transitionDidFinish:(id)finish
{
  finishCopy = finish;
  mTransitionView = self->mTransitionView;
  v21 = finishCopy;
  if (mTransitionView != finishCopy)
  {
    v6 = +[TSUAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"[THFlowTOCViewController transitionDidFinish:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowTOCViewController.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:1594 description:@"unexpected transition view"];

    mTransitionView = self->mTransitionView;
  }

  if (![(THTOCSplitTransitionView *)mTransitionView wasReversed])
  {
    delegate = [(THTOCViewController *)self delegate];
    [delegate TOCViewControllerDidShowChapter:self];

    delegate2 = [(THTOCViewController *)self delegate];
    introMediaViewController = [(THFlowTOCViewController *)self introMediaViewController];
    [delegate2 didTransitionFromViewController:introMediaViewController toTOCViewController:self];

    introMediaViewController2 = [(THFlowTOCViewController *)self introMediaViewController];
    LODWORD(introMediaViewController) = [introMediaViewController2 isPlaying];

    if (introMediaViewController)
    {
      introMediaViewController3 = [(THFlowTOCViewController *)self introMediaViewController];
      [introMediaViewController3 pause];
    }

    introMediaViewController4 = [(THFlowTOCViewController *)self introMediaViewController];
    [introMediaViewController4 prepareControlsForTOC];

    introMediaViewController5 = [(THFlowTOCViewController *)self introMediaViewController];
    [introMediaViewController5 prepareMovieForTOC];

    introMediaViewController6 = [(THFlowTOCViewController *)self introMediaViewController];
    isViewLoaded = [introMediaViewController6 isViewLoaded];

    if (isViewLoaded)
    {
      introMediaViewController7 = [(THFlowTOCViewController *)self introMediaViewController];
      view = [introMediaViewController7 view];
      [view removeFromSuperview];
    }

    [(THFlowTOCViewController *)self setIntroMediaViewController:0];
  }

  v20 = self->mTransitionView;
  self->mTransitionView = 0;
}

- (void)introMediaControllerShouldAdvancePast:(id)past
{
  self->mForceTransitionCompletion = 1;
  introMediaViewController = [(THFlowTOCViewController *)self introMediaViewController];
  [introMediaViewController prepareControlsForTOC];

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

- (id)p_indexPathForChapterIndex:(unint64_t)index lessonIndex:(unint64_t)lessonIndex
{
  if ([(TSWTableView *)self->mTOCTableView numberOfSections]<= index)
  {
    v7 = +[TSUAssertionHandler currentHandler];
    v8 = [NSString stringWithUTF8String:"[THFlowTOCViewController p_indexPathForChapterIndex:lessonIndex:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowTOCViewController.m"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:1645 description:@"invalid chapter index"];
  }

  v10 = [NSIndexPath indexPathForRow:0 inSection:index];
  if ([(THFlowTOCViewController *)self isSectionOpen:v10])
  {
    dataSource = [(THTOCViewController *)self dataSource];
    v12 = [dataSource toc:self tileModelForChapterIndex:index];

    portraitEntries = [v12 portraitEntries];
    if ([portraitEntries count] <= lessonIndex)
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
    v17 = portraitEntries;
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
        if (v21 >= lessonIndex)
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

    v24 = [NSIndexPath indexPathForRow:v20 inSection:index];

    v10 = v24;
  }

  return v10;
}

- (id)p_cellForChapterIndex:(unint64_t)index lessonIndex:(unint64_t)lessonIndex
{
  v5 = [(THFlowTOCViewController *)self p_indexPathForChapterIndex:index lessonIndex:lessonIndex];
  objc_opt_class();
  v6 = [(TSWTableView *)self->mTOCTableView cellForRowAtIndexPath:v5];
  v7 = TSUDynamicCast();

  return v7;
}

- (double)bottomSeparatorYPositionForChapterIndex:(unint64_t)index lessonIndex:(unint64_t)lessonIndex
{
  v5 = [(THFlowTOCViewController *)self p_cellForChapterIndex:index lessonIndex:lessonIndex];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  view = [(THFlowTOCViewController *)self view];
  [v5 convertRect:view toView:{v7, v9, v11, v13}];
  MaxY = CGRectGetMaxY(v17);

  return MaxY;
}

- (void)scrollToRowForChapterIndex:(unint64_t)index lessonIndex:(unint64_t)lessonIndex
{
  v5 = [(THFlowTOCViewController *)self p_indexPathForChapterIndex:index lessonIndex:lessonIndex];
  [(TSWTableView *)self->mTOCTableView scrollToRowAtIndexPath:v5 atScrollPosition:2 animated:0];
}

- (id)rasterizedImage
{
  CATransform3DMakeTranslation(&v17, 10000.0, 10000.0, 0.0);
  introMediaViewController = [(THFlowTOCViewController *)self introMediaViewController];
  view = [introMediaViewController view];
  layer = [view layer];
  v16 = v17;
  [layer setTransform:&v16];

  v15.receiver = self;
  v15.super_class = THFlowTOCViewController;
  rasterizedImage = [(THFlowTOCViewController *)&v15 rasterizedImage];
  introMediaViewController2 = [(THFlowTOCViewController *)self introMediaViewController];
  view2 = [introMediaViewController2 view];
  layer2 = [view2 layer];
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
  [layer2 setTransform:&v16];

  return rasterizedImage;
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
  view = [(THFlowTOCViewController *)self view];
  [view bounds];
  v11 = [(THTOCSplitTransitionView *)v9 initWithFrame:?];
  mTransitionView = self->mTransitionView;
  self->mTransitionView = v11;

  [(THTransitionView *)self->mTransitionView setDelegate:self];
  introMediaViewController = [(THFlowTOCViewController *)self introMediaViewController];
  [(THTransitionView *)self->mTransitionView setFromViewController:introMediaViewController];

  [(THTOCSplitTransitionView *)self->mTransitionView setKeepScaleAnimationView:1];
  introMediaViewController2 = [(THFlowTOCViewController *)self introMediaViewController];
  view2 = [introMediaViewController2 view];
  v16 = [view2 snapshotViewAfterScreenUpdates:0];
  [(THTOCSplitTransitionView *)self->mTransitionView setScaleAnimationView:v16];

  [(THTOCSplitTransitionView *)self->mTransitionView setKeepSplitAnimationView:1];
  v17 = [(TSWTableView *)self->mTOCTableView snapshotViewAfterScreenUpdates:0];
  [(THTOCSplitTransitionView *)self->mTransitionView setSplitAnimationView:v17];

  [(THTransitionView *)self->mTransitionView setToViewController:self];
  [(THTOCSplitTransitionView *)self->mTransitionView setReverse:1];
  [(THTOCSplitTransitionView *)self->mTransitionView slideAnimationScalar];
  [(THTOCSplitTransitionView *)self->mTransitionView setAnimationDuration:0.349999994 / v18];
  view3 = [(THFlowTOCViewController *)self view];
  superview = [view3 superview];
  v20 = self->mTransitionView;
  view4 = [(THFlowTOCViewController *)self view];
  [superview insertSubview:v20 aboveSubview:view4];
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