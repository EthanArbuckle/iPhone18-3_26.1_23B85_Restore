@interface BKAppearanceFontViewController
- (BEHairlineDividerView)dividerView;
- (BKAppearanceFontViewController)initWithNibName:(id)name bundle:(id)bundle;
- (BKAppearanceFontViewControllerDelegate)delegate;
- (CGSize)contentSize;
- (CGSize)desiredContentSize;
- (CGSize)estimatedContentSize;
- (CGSize)preferredContentSize;
- (double)fontSizeForFontFamilyName:(id)name;
- (id)indexPathForSelectedFont;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)dealloc;
- (void)downloadFont:(id)font;
- (void)fontDownloadFailed:(id)failed;
- (void)loadView;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)releaseViews;
- (void)setTheme:(id)theme;
- (void)stopDownloadingFont:(id)font;
- (void)stylizeForTheme;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)useSelectedFont:(id)font;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation BKAppearanceFontViewController

- (BKAppearanceFontViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = BKAppearanceFontViewController;
  v4 = [(BKViewController *)&v8 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = AEBundle();
    v6 = [v5 localizedStringForKey:@"Fonts" value:&stru_1E7188 table:0];
    [(BKAppearanceFontViewController *)v4 setTitle:v6];
  }

  return v4;
}

- (void)dealloc
{
  [(BKAppearanceFontViewController *)self releaseViews];
  v3.receiver = self;
  v3.super_class = BKAppearanceFontViewController;
  [(BKViewController *)&v3 dealloc];
}

- (void)loadView
{
  v40.receiver = self;
  v40.super_class = BKAppearanceFontViewController;
  [(BKAppearanceFontViewController *)&v40 loadView];
  v3 = [UITableView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:0 style:{CGRectZero.origin.x, y, width, height}];
  tableView = self->_tableView;
  self->_tableView = v7;

  [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setSeparatorInset:0.0, 45.0, 0.0, 0.0];
  v9 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(UITableView *)self->_tableView setTableFooterView:v9];

  view = [(BKAppearanceFontViewController *)self view];
  v11 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  arrowBackgroundView = self->_arrowBackgroundView;
  self->_arrowBackgroundView = v11;

  [(UIView *)self->_arrowBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:self->_arrowBackgroundView];
  [view addSubview:self->_tableView];
  leadingAnchor = [(UITableView *)self->_tableView leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v41[0] = v37;
  trailingAnchor = [(UITableView *)self->_tableView trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v41[1] = v34;
  topAnchor = [(UITableView *)self->_tableView topAnchor];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v30 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v41[2] = v30;
  bottomAnchor = [(UITableView *)self->_tableView bottomAnchor];
  safeAreaLayoutGuide2 = [view safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
  v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v41[3] = v26;
  topAnchor3 = [(UIView *)self->_arrowBackgroundView topAnchor];
  topAnchor4 = [view topAnchor];
  v22 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v41[4] = v22;
  leadingAnchor3 = [(UIView *)self->_arrowBackgroundView leadingAnchor];
  leadingAnchor4 = [view leadingAnchor];
  v15 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v41[5] = v15;
  trailingAnchor3 = [(UIView *)self->_arrowBackgroundView trailingAnchor];
  trailingAnchor4 = [view trailingAnchor];
  v18 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v41[6] = v18;
  bottomAnchor3 = [(UIView *)self->_arrowBackgroundView bottomAnchor];
  topAnchor5 = [(UITableView *)self->_tableView topAnchor];
  v21 = [bottomAnchor3 constraintEqualToAnchor:topAnchor5];
  v41[7] = v21;
  v23 = [NSArray arrayWithObjects:v41 count:8];

  [view addConstraints:v23];
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = BKAppearanceFontViewController;
  [(BKAppearanceFontViewController *)&v22 viewDidLoad];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"fontDownloadFailed:" name:BEFontDownloadFailedNotification object:0];

  navigationController = [(BKAppearanceFontViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];

  dividerView = [(BKAppearanceFontViewController *)self dividerView];
  [navigationBar _setHidesShadow:1];
  [navigationBar addSubview:dividerView];
  leadingAnchor = [dividerView leadingAnchor];
  leadingAnchor2 = [navigationBar leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v23[0] = v19;
  trailingAnchor = [dividerView trailingAnchor];
  trailingAnchor2 = [navigationBar trailingAnchor];
  v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v23[1] = v8;
  bottomAnchor = [dividerView bottomAnchor];
  bottomAnchor2 = [navigationBar bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v23[2] = v11;
  heightAnchor = [dividerView heightAnchor];
  v13 = +[UIScreen mainScreen];
  [v13 scale];
  v15 = 1.0 / v14;

  v16 = [heightAnchor constraintEqualToConstant:v15];
  v23[3] = v16;
  v17 = [NSArray arrayWithObjects:v23 count:4];

  [NSLayoutConstraint activateConstraints:v17];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v14.receiver = self;
  v14.super_class = BKAppearanceFontViewController;
  [(BKAppearanceFontViewController *)&v14 viewWillAppear:?];
  [(BKAppearanceFontViewController *)self stylizeForTheme];
  ba_analyticsTracker = [(BKAppearanceFontViewController *)self ba_analyticsTracker];

  if (!ba_analyticsTracker)
  {
    v6 = [(BKAppearanceFontViewController *)self ba_setupNewAnalyticsTrackerWithName:@"ContentFontSettings"];
  }

  navigationController = [(BKAppearanceFontViewController *)self navigationController];
  [navigationController setNavigationBarHidden:0 animated:appearCopy];

  [(BKAppearanceFontViewController *)self preferredContentSize];
  v9 = v8;
  v11 = v10;
  presentingViewController = [(BKAppearanceFontViewController *)self presentingViewController];
  presentedViewController = [presentingViewController presentedViewController];
  [presentedViewController setPreferredContentSize:{v9, v11}];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = BKAppearanceFontViewController;
  [(BKAppearanceFontViewController *)&v6 viewDidAppear:?];
  indexPathForSelectedFont = [(BKAppearanceFontViewController *)self indexPathForSelectedFont];
  if (indexPathForSelectedFont)
  {
    [(UITableView *)self->_tableView scrollToRowAtIndexPath:indexPathForSelectedFont atScrollPosition:0 animated:appearCopy];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(BKAppearanceFontViewController *)self setDisappearing:1];
  v5.receiver = self;
  v5.super_class = BKAppearanceFontViewController;
  [(BKAppearanceFontViewController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(BKAppearanceFontViewController *)self setDisappearing:0];
  v5.receiver = self;
  v5.super_class = BKAppearanceFontViewController;
  [(BKAppearanceFontViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)releaseViews
{
  v5.receiver = self;
  v5.super_class = BKAppearanceFontViewController;
  [(BKViewController *)&v5 releaseViews];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:BEFontDownloadFailedNotification object:0];

  tableView = self->_tableView;
  self->_tableView = 0;
}

- (CGSize)preferredContentSize
{
  tableView = [(BKAppearanceFontViewController *)self tableView];
  [tableView layoutIfNeeded];

  [(BKAppearanceFontViewController *)self contentSize];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)contentSize
{
  tableView = [(BKAppearanceFontViewController *)self tableView];
  [tableView contentSize];
  v5 = v4;
  navigationController = [(BKAppearanceFontViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar frame];
  v8 = v5 + CGRectGetHeight(v14);

  [(BKAppearanceFontViewController *)self desiredContentSize];
  v10 = v9;
  [(BKAppearanceFontViewController *)self desiredContentSize];
  if (v8 >= v11)
  {
    v11 = v8;
  }

  v12 = v10;
  result.height = v11;
  result.width = v12;
  return result;
}

- (CGSize)estimatedContentSize
{
  tableView = [(BKAppearanceFontViewController *)self tableView];
  visibleCells = [tableView visibleCells];
  firstObject = [visibleCells firstObject];

  if (firstObject)
  {
    contentView = [firstObject contentView];
    [contentView systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  fonts = [(BKAppearanceFontViewController *)self fonts];
  v10 = [fonts count];
  +[IMRadialProgressButton minimumBoundingBox];
  v12 = v11;
  v13 = _BKFontCellAppearanceFontHeight() * 0.55;
  if (v12 >= v13)
  {
    v13 = v12;
  }

  if (v8 >= v13)
  {
    v13 = v8;
  }

  v14 = v13 * v10;

  traitCollection = [(BKAppearanceFontViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  v17 = _BKFontTableViewSizePaddingForContentSizeCategory(preferredContentSizeCategory);
  navigationController = [(BKAppearanceFontViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar frame];
  v20 = v17 + v14 + CGRectGetHeight(v27);

  [(BKAppearanceFontViewController *)self desiredContentSize];
  v22 = v21;
  [(BKAppearanceFontViewController *)self desiredContentSize];
  if (v20 < v23)
  {
    v20 = v23;
  }

  v24 = v22;
  v25 = v20;
  result.height = v25;
  result.width = v24;
  return result;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (([pathCopy isEqualToString:@"state"] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"downloadProgress"))
  {
    if ([(BKAppearanceFontViewController *)self isVisible])
    {
      v13 = [(NSArray *)self->_fonts indexOfObject:objectCopy];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_F311C;
      block[3] = &unk_1E4548;
      block[4] = self;
      block[5] = v13;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = BKAppearanceFontViewController;
    [(BKAppearanceFontViewController *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (id)indexPathForSelectedFont
{
  styleManager = [(BKAppearanceFontViewController *)self styleManager];
  font = [styleManager font];

  fonts = [(BKAppearanceFontViewController *)self fonts];
  v6 = [fonts count];

  if (v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      fonts2 = [(BKAppearanceFontViewController *)self fonts];
      v10 = [fonts2 objectAtIndex:v7];

      familyName = [v10 familyName];
      v12 = [font isEqualToString:familyName];

      if (v12)
      {
        v13 = [NSIndexPath indexPathForRow:v7 inSection:0];

        v8 = v13;
      }

      ++v7;
      fonts3 = [(BKAppearanceFontViewController *)self fonts];
      v15 = [fonts3 count];
    }

    while (v15 > v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BEHairlineDividerView)dividerView
{
  dividerView = self->_dividerView;
  if (!dividerView)
  {
    v4 = [[BEHairlineDividerView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_dividerView;
    self->_dividerView = v4;

    [(BEHairlineDividerView *)self->_dividerView setTranslatesAutoresizingMaskIntoConstraints:0];
    dividerView = self->_dividerView;
  }

  return dividerView;
}

- (void)setTheme:(id)theme
{
  themeCopy = theme;
  theme = [(BKAppearanceFontViewController *)self theme];

  if (theme != themeCopy)
  {
    v6.receiver = self;
    v6.super_class = BKAppearanceFontViewController;
    [(BKAppearanceFontViewController *)&v6 setTheme:themeCopy];
    [(BKAppearanceFontViewController *)self stylizeForTheme];
  }
}

- (void)stylizeForTheme
{
  themePage = [(BKAppearanceFontViewController *)self themePage];
  overrideUserInterfaceStyle = [(BKAppearanceFontViewController *)self overrideUserInterfaceStyle];
  navigationController = [(BKAppearanceFontViewController *)self navigationController];
  [navigationController setOverrideUserInterfaceStyle:overrideUserInterfaceStyle];

  [themePage stylizeTableView:self->_tableView];
  tableViewCellBackgroundColor = [themePage tableViewCellBackgroundColor];
  [(UITableView *)self->_tableView setBackgroundColor:tableViewCellBackgroundColor];
  navigationController2 = [(BKAppearanceFontViewController *)self navigationController];
  navigationBar = [navigationController2 navigationBar];

  [navigationBar setOverrideUserInterfaceStyle:{-[BKAppearanceFontViewController overrideUserInterfaceStyle](self, "overrideUserInterfaceStyle")}];
  keyColor = [themePage keyColor];
  [navigationBar setTintColor:keyColor];

  [navigationBar setBackgroundColor:tableViewCellBackgroundColor];
  backgroundColor = [navigationBar backgroundColor];
  arrowBackgroundView = [(BKAppearanceFontViewController *)self arrowBackgroundView];
  [arrowBackgroundView setBackgroundColor:backgroundColor];

  v18 = NSForegroundColorAttributeName;
  primaryTextColor = [themePage primaryTextColor];
  v19 = primaryTextColor;
  v13 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [navigationBar setTitleTextAttributes:v13];

  separatorColor = [themePage separatorColor];
  dividerView = [(BKAppearanceFontViewController *)self dividerView];
  [dividerView setBackgroundColor:separatorColor];

  navigationController3 = [(BKAppearanceFontViewController *)self navigationController];
  viewIfLoaded = [navigationController3 viewIfLoaded];
  [viewIfLoaded setBackgroundColor:tableViewCellBackgroundColor];

  [(UITableView *)self->_tableView reloadData];
}

- (double)fontSizeForFontFamilyName:(id)name
{
  nameCopy = name;
  if (([nameCopy isEqualToString:@"Iowan Old Style"] & 1) != 0 || (objc_msgSend(nameCopy, "isEqualToString:", @"Charter") & 1) != 0 || (objc_msgSend(nameCopy, "isEqualToString:", @"Athelas") & 1) != 0 || (v4 = 20.0, objc_msgSend(nameCopy, "isEqualToString:", @"Seravek")))
  {
    v4 = 22.0;
  }

  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v5 _scaledValueForValue:v4];
  v7 = v6;

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"BKFontTableViewCell"];
  if (!v7)
  {
    v7 = [[BKFontTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"BKFontTableViewCell"];
  }

  fonts = [(BKAppearanceFontViewController *)self fonts];
  v9 = [fonts objectAtIndex:{objc_msgSend(pathCopy, "row")}];
  familyName = [v9 familyName];
  book = [(BKAppearanceFontViewController *)self book];
  useGlobalContentStyle = [book useGlobalContentStyle];
  bOOLValue = [useGlobalContentStyle BOOLValue];

  if (familyName)
  {
    v14 = v7;
    displayName = [v9 displayName];
    v54 = fonts;
    if ([v9 kind] == &dword_0 + 1)
    {
      v16 = AEBundle();
      v17 = [v16 localizedStringForKey:@"Original" value:&stru_1E7188 table:0];
      v18 = displayName;
      v19 = v17;

      v20 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
      [v20 _scaledValueForValue:20.0];
      v21 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
      [(BKFontTableViewCell *)v14 setLabelFont:v21];

      v22 = bOOLValue ^ 1;
      goto LABEL_16;
    }

    [(BKAppearanceFontViewController *)self fontSizeForFontFamilyName:familyName];
    v24 = v23;
    [(BKFontTableViewCell *)v14 setFont:v9];
    v51 = displayName;
    if ([v9 kind] && objc_msgSend(v9, "kind") != &dword_0 + 2)
    {
      if ([v9 kind] != &dword_4)
      {
        [v9 kind];
        goto LABEL_14;
      }

      _fontAdjustedForCurrentContentSizeCategory = [UIFont systemFontOfSize:kCTFontUIFontDesignSerif weight:v24 design:UIFontWeightRegular];
    }

    else
    {
      v25 = [UIFont fontWithName:familyName size:v24, displayName];
      _fontAdjustedForCurrentContentSizeCategory = [v25 _fontAdjustedForCurrentContentSizeCategory];
    }

    if (_fontAdjustedForCurrentContentSizeCategory)
    {
LABEL_15:
      [(BKFontTableViewCell *)v14 setLabelFont:_fontAdjustedForCurrentContentSizeCategory, v51];

      styleManager = [(BKAppearanceFontViewController *)self styleManager];
      font = [styleManager font];
      v29 = [font isEqualToString:familyName];

      v22 = v29 & bOOLValue;
      v19 = v52;
LABEL_16:
      label = [(BKFontTableViewCell *)v14 label];
      [label setText:v19];

      themePage = [(BKAppearanceFontViewController *)self themePage];
      keyColor = [themePage keyColor];

      selectionView = [(BKFontTableViewCell *)v14 selectionView];
      [selectionView setHidden:v22 ^ 1u];

      selectionView2 = [(BKFontTableViewCell *)v14 selectionView];
      [selectionView2 setTintColor:keyColor];

      if (v22)
      {
LABEL_33:

        fonts = v54;
        goto LABEL_34;
      }

      if ([v9 state] == 3)
      {
        v53 = v19;
        accessoryView = [(BKFontTableViewCell *)v14 accessoryView];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          accessoryView2 = [(BKFontTableViewCell *)v14 accessoryView];
        }

        else
        {
          accessoryView2 = objc_alloc_init(IMRadialProgressButton);
          [accessoryView2 addTarget:self action:"stopDownloadingFont:" forControlEvents:64];
        }

        [v9 downloadProgress];
        [accessoryView2 setProgress:?];
      }

      else
      {
        if ([v9 state] != 2)
        {
          accessoryView2 = 0;
          goto LABEL_27;
        }

        v53 = v19;
        familyName2 = [v9 familyName];
        v39 = [familyName2 isEqualToString:&stru_1E7188];

        if (v39)
        {
          accessoryView2 = 0;
        }

        else
        {
          accessoryView2 = [UIButton buttonWithType:0];
          [accessoryView2 addTarget:self action:"downloadFont:" forControlEvents:64];
          v48 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleTitle3];
          v49 = [UIImage systemImageNamed:@"icloud.and.arrow.down"];
          v50 = [v49 bc_imageWithConfiguration:v48 limitedToContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];

          [accessoryView2 setImage:v50 forState:0];
          [accessoryView2 setTintColor:keyColor];
        }
      }

      v19 = v53;
LABEL_27:
      [accessoryView2 setTag:{objc_msgSend(pathCopy, "row")}];
      if (accessoryView2)
      {
        buttonContainerView = [(BKFontTableViewCell *)v14 buttonContainerView];
        [buttonContainerView addSubview:accessoryView2];

        [accessoryView2 bc_constraintsToFitInSuperviewCentered];
        v42 = v41 = v19;
        [NSLayoutConstraint activateConstraints:v42];

        v19 = v41;
        +[IMRadialProgressButton minimumBoundingBox];
        v44 = v43;
        v45 = _BKFontCellAppearanceFontHeight() * 0.55;
        if (v44 < v45)
        {
          v44 = v45;
        }
      }

      else
      {
        v44 = 0.0;
      }

      buttonContainerWidthConstraint = [(BKFontTableViewCell *)v14 buttonContainerWidthConstraint];
      [buttonContainerWidthConstraint setConstant:v44];

      goto LABEL_33;
    }

LABEL_14:
    _fontAdjustedForCurrentContentSizeCategory = [UIFont systemFontOfSize:v24, v51];
    goto LABEL_15;
  }

LABEL_34:

  return v7;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(BKAppearanceFontViewController *)self fonts:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  fonts = [(BKAppearanceFontViewController *)self fonts];
  v7 = [fonts objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  if (![v7 isInstalled] || objc_msgSend(v7, "state") == 2 || (v8 = pathCopy, objc_msgSend(v7, "state") == 4))
  {
    familyName = [v7 familyName];
    v10 = [familyName isEqualToString:&stru_1E7188];

    v8 = pathCopy;
    if ((v10 & 1) == 0)
    {

      v8 = 0;
    }
  }

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  fonts = [(BKAppearanceFontViewController *)self fonts];
  v9 = [fonts objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  [(BKAppearanceFontViewController *)self useSelectedFont:v9];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];

  [viewCopy reloadData];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  theme = [(BKAppearanceFontViewController *)self theme];
  [theme stylizeTableViewCell:cellCopy];

  fonts = [(BKAppearanceFontViewController *)self fonts];
  v10 = [pathCopy row];

  v11 = [fonts objectAtIndex:v10];

  textLabel = [cellCopy textLabel];
  textColor = [textLabel textColor];

  if ([v11 state] == 4)
  {
    label2 = [textColor colorWithAlphaComponent:0.5];
    label = [cellCopy label];
    [label setTextColor:label2];
  }

  else
  {
    label2 = [cellCopy label];
    [label2 setTextColor:textColor];
  }
}

- (void)useSelectedFont:(id)font
{
  fontCopy = font;
  styleManager = [(BKAppearanceFontViewController *)self styleManager];
  familyName = [fontCopy familyName];
  v6 = [familyName length] != 0;
  book = [(BKAppearanceFontViewController *)self book];
  v8 = [NSNumber numberWithBool:v6];
  [book setUseGlobalContentStyle:v8];

  font = [styleManager font];
  LOBYTE(book) = [familyName isEqualToString:font];

  if (book)
  {
    [styleManager notifyStyleChanged];
  }

  else
  {
    [styleManager setFont:familyName];
    delegate = [(BKAppearanceFontViewController *)self delegate];
    displayName = [fontCopy displayName];
    [delegate appearanceFontViewController:self didChangeToFontWithName:displayName];
  }
}

- (void)downloadFont:(id)font
{
  fontCopy = font;
  fonts = [(BKAppearanceFontViewController *)self fonts];
  v6 = [fontCopy tag];

  v7 = [fonts objectAtIndex:v6];

  self->_shownCannotDownloadFontAlert = 0;
  [v7 download];
}

- (void)stopDownloadingFont:(id)font
{
  fontCopy = font;
  fonts = [(BKAppearanceFontViewController *)self fonts];
  v6 = [fontCopy tag];

  v7 = [fonts objectAtIndex:v6];

  [v7 cancelDownload];
}

- (void)fontDownloadFailed:(id)failed
{
  if (!self->_shownCannotDownloadFontAlert)
  {
    failedCopy = failed;
    v5 = MGGetBoolAnswer();
    v6 = AEBundle();
    v7 = v6;
    if (v5)
    {
      v8 = @"To download fonts, connect to WLAN.";
    }

    else
    {
      v8 = @"To download fonts, connect to Wi-Fi.";
    }

    v16 = [v6 localizedStringForKey:v8 value:&stru_1E7188 table:0];

    v9 = AEBundle();
    v10 = [v9 localizedStringForKey:@"Couldn’t Download" value:&stru_1E7188 table:0];
    v11 = [UIAlertController alertControllerWithTitle:v10 message:v16 preferredStyle:1];

    v12 = AEBundle();
    v13 = [v12 localizedStringForKey:@"OK" value:&stru_1E7188 table:0];
    v14 = [UIAlertAction actionWithTitle:v13 style:1 handler:0];
    [v11 addAction:v14];

    [(BKAppearanceFontViewController *)self presentViewController:v11 animated:1 completion:0];
    self->_shownCannotDownloadFontAlert = 1;
    object = [failedCopy object];

    [object checkStateSynchronously:0];
    [(UITableView *)self->_tableView reloadData];
  }
}

- (BKAppearanceFontViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)desiredContentSize
{
  width = self->_desiredContentSize.width;
  height = self->_desiredContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end