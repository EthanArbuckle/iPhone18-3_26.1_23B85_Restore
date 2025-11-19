@interface BKAppearanceFontViewController
- (BEHairlineDividerView)dividerView;
- (BKAppearanceFontViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (BKAppearanceFontViewControllerDelegate)delegate;
- (CGSize)contentSize;
- (CGSize)desiredContentSize;
- (CGSize)estimatedContentSize;
- (CGSize)preferredContentSize;
- (double)fontSizeForFontFamilyName:(id)a3;
- (id)indexPathForSelectedFont;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)dealloc;
- (void)downloadFont:(id)a3;
- (void)fontDownloadFailed:(id)a3;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)releaseViews;
- (void)setTheme:(id)a3;
- (void)stopDownloadingFont:(id)a3;
- (void)stylizeForTheme;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)useSelectedFont:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation BKAppearanceFontViewController

- (BKAppearanceFontViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = BKAppearanceFontViewController;
  v4 = [(BKViewController *)&v8 initWithNibName:a3 bundle:a4];
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

  v10 = [(BKAppearanceFontViewController *)self view];
  v11 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  arrowBackgroundView = self->_arrowBackgroundView;
  self->_arrowBackgroundView = v11;

  [(UIView *)self->_arrowBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 addSubview:self->_arrowBackgroundView];
  [v10 addSubview:self->_tableView];
  v39 = [(UITableView *)self->_tableView leadingAnchor];
  v38 = [v10 leadingAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v41[0] = v37;
  v36 = [(UITableView *)self->_tableView trailingAnchor];
  v35 = [v10 trailingAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v41[1] = v34;
  v32 = [(UITableView *)self->_tableView topAnchor];
  v33 = [v10 safeAreaLayoutGuide];
  v31 = [v33 topAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v41[2] = v30;
  v28 = [(UITableView *)self->_tableView bottomAnchor];
  v29 = [v10 safeAreaLayoutGuide];
  v27 = [v29 bottomAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v41[3] = v26;
  v25 = [(UIView *)self->_arrowBackgroundView topAnchor];
  v24 = [v10 topAnchor];
  v22 = [v25 constraintEqualToAnchor:v24];
  v41[4] = v22;
  v13 = [(UIView *)self->_arrowBackgroundView leadingAnchor];
  v14 = [v10 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v41[5] = v15;
  v16 = [(UIView *)self->_arrowBackgroundView trailingAnchor];
  v17 = [v10 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  v41[6] = v18;
  v19 = [(UIView *)self->_arrowBackgroundView bottomAnchor];
  v20 = [(UITableView *)self->_tableView topAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  v41[7] = v21;
  v23 = [NSArray arrayWithObjects:v41 count:8];

  [v10 addConstraints:v23];
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = BKAppearanceFontViewController;
  [(BKAppearanceFontViewController *)&v22 viewDidLoad];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"fontDownloadFailed:" name:BEFontDownloadFailedNotification object:0];

  v4 = [(BKAppearanceFontViewController *)self navigationController];
  v5 = [v4 navigationBar];

  v6 = [(BKAppearanceFontViewController *)self dividerView];
  [v5 _setHidesShadow:1];
  [v5 addSubview:v6];
  v21 = [v6 leadingAnchor];
  v20 = [v5 leadingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v23[0] = v19;
  v18 = [v6 trailingAnchor];
  v7 = [v5 trailingAnchor];
  v8 = [v18 constraintEqualToAnchor:v7];
  v23[1] = v8;
  v9 = [v6 bottomAnchor];
  v10 = [v5 bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v23[2] = v11;
  v12 = [v6 heightAnchor];
  v13 = +[UIScreen mainScreen];
  [v13 scale];
  v15 = 1.0 / v14;

  v16 = [v12 constraintEqualToConstant:v15];
  v23[3] = v16;
  v17 = [NSArray arrayWithObjects:v23 count:4];

  [NSLayoutConstraint activateConstraints:v17];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v14.receiver = self;
  v14.super_class = BKAppearanceFontViewController;
  [(BKAppearanceFontViewController *)&v14 viewWillAppear:?];
  [(BKAppearanceFontViewController *)self stylizeForTheme];
  v5 = [(BKAppearanceFontViewController *)self ba_analyticsTracker];

  if (!v5)
  {
    v6 = [(BKAppearanceFontViewController *)self ba_setupNewAnalyticsTrackerWithName:@"ContentFontSettings"];
  }

  v7 = [(BKAppearanceFontViewController *)self navigationController];
  [v7 setNavigationBarHidden:0 animated:v3];

  [(BKAppearanceFontViewController *)self preferredContentSize];
  v9 = v8;
  v11 = v10;
  v12 = [(BKAppearanceFontViewController *)self presentingViewController];
  v13 = [v12 presentedViewController];
  [v13 setPreferredContentSize:{v9, v11}];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = BKAppearanceFontViewController;
  [(BKAppearanceFontViewController *)&v6 viewDidAppear:?];
  v5 = [(BKAppearanceFontViewController *)self indexPathForSelectedFont];
  if (v5)
  {
    [(UITableView *)self->_tableView scrollToRowAtIndexPath:v5 atScrollPosition:0 animated:v3];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(BKAppearanceFontViewController *)self setDisappearing:1];
  v5.receiver = self;
  v5.super_class = BKAppearanceFontViewController;
  [(BKAppearanceFontViewController *)&v5 viewWillDisappear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  [(BKAppearanceFontViewController *)self setDisappearing:0];
  v5.receiver = self;
  v5.super_class = BKAppearanceFontViewController;
  [(BKAppearanceFontViewController *)&v5 viewDidDisappear:v3];
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
  v3 = [(BKAppearanceFontViewController *)self tableView];
  [v3 layoutIfNeeded];

  [(BKAppearanceFontViewController *)self contentSize];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)contentSize
{
  v3 = [(BKAppearanceFontViewController *)self tableView];
  [v3 contentSize];
  v5 = v4;
  v6 = [(BKAppearanceFontViewController *)self navigationController];
  v7 = [v6 navigationBar];
  [v7 frame];
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
  v3 = [(BKAppearanceFontViewController *)self tableView];
  v4 = [v3 visibleCells];
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = [v5 contentView];
    [v6 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = [(BKAppearanceFontViewController *)self fonts];
  v10 = [v9 count];
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

  v15 = [(BKAppearanceFontViewController *)self traitCollection];
  v16 = [v15 preferredContentSizeCategory];

  v17 = _BKFontTableViewSizePaddingForContentSizeCategory(v16);
  v18 = [(BKAppearanceFontViewController *)self navigationController];
  v19 = [v18 navigationBar];
  [v19 frame];
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (([v10 isEqualToString:@"state"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"downloadProgress"))
  {
    if ([(BKAppearanceFontViewController *)self isVisible])
    {
      v13 = [(NSArray *)self->_fonts indexOfObject:v11];
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
    [(BKAppearanceFontViewController *)&v14 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (id)indexPathForSelectedFont
{
  v3 = [(BKAppearanceFontViewController *)self styleManager];
  v4 = [v3 font];

  v5 = [(BKAppearanceFontViewController *)self fonts];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = [(BKAppearanceFontViewController *)self fonts];
      v10 = [v9 objectAtIndex:v7];

      v11 = [v10 familyName];
      v12 = [v4 isEqualToString:v11];

      if (v12)
      {
        v13 = [NSIndexPath indexPathForRow:v7 inSection:0];

        v8 = v13;
      }

      ++v7;
      v14 = [(BKAppearanceFontViewController *)self fonts];
      v15 = [v14 count];
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

- (void)setTheme:(id)a3
{
  v4 = a3;
  v5 = [(BKAppearanceFontViewController *)self theme];

  if (v5 != v4)
  {
    v6.receiver = self;
    v6.super_class = BKAppearanceFontViewController;
    [(BKAppearanceFontViewController *)&v6 setTheme:v4];
    [(BKAppearanceFontViewController *)self stylizeForTheme];
  }
}

- (void)stylizeForTheme
{
  v3 = [(BKAppearanceFontViewController *)self themePage];
  v4 = [(BKAppearanceFontViewController *)self overrideUserInterfaceStyle];
  v5 = [(BKAppearanceFontViewController *)self navigationController];
  [v5 setOverrideUserInterfaceStyle:v4];

  [v3 stylizeTableView:self->_tableView];
  v6 = [v3 tableViewCellBackgroundColor];
  [(UITableView *)self->_tableView setBackgroundColor:v6];
  v7 = [(BKAppearanceFontViewController *)self navigationController];
  v8 = [v7 navigationBar];

  [v8 setOverrideUserInterfaceStyle:{-[BKAppearanceFontViewController overrideUserInterfaceStyle](self, "overrideUserInterfaceStyle")}];
  v9 = [v3 keyColor];
  [v8 setTintColor:v9];

  [v8 setBackgroundColor:v6];
  v10 = [v8 backgroundColor];
  v11 = [(BKAppearanceFontViewController *)self arrowBackgroundView];
  [v11 setBackgroundColor:v10];

  v18 = NSForegroundColorAttributeName;
  v12 = [v3 primaryTextColor];
  v19 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [v8 setTitleTextAttributes:v13];

  v14 = [v3 separatorColor];
  v15 = [(BKAppearanceFontViewController *)self dividerView];
  [v15 setBackgroundColor:v14];

  v16 = [(BKAppearanceFontViewController *)self navigationController];
  v17 = [v16 viewIfLoaded];
  [v17 setBackgroundColor:v6];

  [(UITableView *)self->_tableView reloadData];
}

- (double)fontSizeForFontFamilyName:(id)a3
{
  v3 = a3;
  if (([v3 isEqualToString:@"Iowan Old Style"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Charter") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Athelas") & 1) != 0 || (v4 = 20.0, objc_msgSend(v3, "isEqualToString:", @"Seravek")))
  {
    v4 = 22.0;
  }

  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v5 _scaledValueForValue:v4];
  v7 = v6;

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"BKFontTableViewCell"];
  if (!v7)
  {
    v7 = [[BKFontTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"BKFontTableViewCell"];
  }

  v8 = [(BKAppearanceFontViewController *)self fonts];
  v9 = [v8 objectAtIndex:{objc_msgSend(v6, "row")}];
  v10 = [v9 familyName];
  v11 = [(BKAppearanceFontViewController *)self book];
  v12 = [v11 useGlobalContentStyle];
  v13 = [v12 BOOLValue];

  if (v10)
  {
    v14 = v7;
    v15 = [v9 displayName];
    v54 = v8;
    if ([v9 kind] == &dword_0 + 1)
    {
      v16 = AEBundle();
      v17 = [v16 localizedStringForKey:@"Original" value:&stru_1E7188 table:0];
      v18 = v15;
      v19 = v17;

      v20 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
      [v20 _scaledValueForValue:20.0];
      v21 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
      [(BKFontTableViewCell *)v14 setLabelFont:v21];

      v22 = v13 ^ 1;
      goto LABEL_16;
    }

    [(BKAppearanceFontViewController *)self fontSizeForFontFamilyName:v10];
    v24 = v23;
    [(BKFontTableViewCell *)v14 setFont:v9];
    v51 = v15;
    if ([v9 kind] && objc_msgSend(v9, "kind") != &dword_0 + 2)
    {
      if ([v9 kind] != &dword_4)
      {
        [v9 kind];
        goto LABEL_14;
      }

      v26 = [UIFont systemFontOfSize:kCTFontUIFontDesignSerif weight:v24 design:UIFontWeightRegular];
    }

    else
    {
      v25 = [UIFont fontWithName:v10 size:v24, v15];
      v26 = [v25 _fontAdjustedForCurrentContentSizeCategory];
    }

    if (v26)
    {
LABEL_15:
      [(BKFontTableViewCell *)v14 setLabelFont:v26, v51];

      v27 = [(BKAppearanceFontViewController *)self styleManager];
      v28 = [v27 font];
      v29 = [v28 isEqualToString:v10];

      v22 = v29 & v13;
      v19 = v52;
LABEL_16:
      v30 = [(BKFontTableViewCell *)v14 label];
      [v30 setText:v19];

      v31 = [(BKAppearanceFontViewController *)self themePage];
      v32 = [v31 keyColor];

      v33 = [(BKFontTableViewCell *)v14 selectionView];
      [v33 setHidden:v22 ^ 1u];

      v34 = [(BKFontTableViewCell *)v14 selectionView];
      [v34 setTintColor:v32];

      if (v22)
      {
LABEL_33:

        v8 = v54;
        goto LABEL_34;
      }

      if ([v9 state] == 3)
      {
        v53 = v19;
        v35 = [(BKFontTableViewCell *)v14 accessoryView];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v37 = [(BKFontTableViewCell *)v14 accessoryView];
        }

        else
        {
          v37 = objc_alloc_init(IMRadialProgressButton);
          [v37 addTarget:self action:"stopDownloadingFont:" forControlEvents:64];
        }

        [v9 downloadProgress];
        [v37 setProgress:?];
      }

      else
      {
        if ([v9 state] != 2)
        {
          v37 = 0;
          goto LABEL_27;
        }

        v53 = v19;
        v38 = [v9 familyName];
        v39 = [v38 isEqualToString:&stru_1E7188];

        if (v39)
        {
          v37 = 0;
        }

        else
        {
          v37 = [UIButton buttonWithType:0];
          [v37 addTarget:self action:"downloadFont:" forControlEvents:64];
          v48 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleTitle3];
          v49 = [UIImage systemImageNamed:@"icloud.and.arrow.down"];
          v50 = [v49 bc_imageWithConfiguration:v48 limitedToContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];

          [v37 setImage:v50 forState:0];
          [v37 setTintColor:v32];
        }
      }

      v19 = v53;
LABEL_27:
      [v37 setTag:{objc_msgSend(v6, "row")}];
      if (v37)
      {
        v40 = [(BKFontTableViewCell *)v14 buttonContainerView];
        [v40 addSubview:v37];

        [v37 bc_constraintsToFitInSuperviewCentered];
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

      v46 = [(BKFontTableViewCell *)v14 buttonContainerWidthConstraint];
      [v46 setConstant:v44];

      goto LABEL_33;
    }

LABEL_14:
    v26 = [UIFont systemFontOfSize:v24, v51];
    goto LABEL_15;
  }

LABEL_34:

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(BKAppearanceFontViewController *)self fonts:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(BKAppearanceFontViewController *)self fonts];
  v7 = [v6 objectAtIndex:{objc_msgSend(v5, "row")}];

  if (![v7 isInstalled] || objc_msgSend(v7, "state") == 2 || (v8 = v5, objc_msgSend(v7, "state") == 4))
  {
    v9 = [v7 familyName];
    v10 = [v9 isEqualToString:&stru_1E7188];

    v8 = v5;
    if ((v10 & 1) == 0)
    {

      v8 = 0;
    }
  }

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKAppearanceFontViewController *)self fonts];
  v9 = [v8 objectAtIndex:{objc_msgSend(v6, "row")}];

  [(BKAppearanceFontViewController *)self useSelectedFont:v9];
  [v7 deselectRowAtIndexPath:v6 animated:1];

  [v7 reloadData];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v16 = a4;
  v7 = a5;
  v8 = [(BKAppearanceFontViewController *)self theme];
  [v8 stylizeTableViewCell:v16];

  v9 = [(BKAppearanceFontViewController *)self fonts];
  v10 = [v7 row];

  v11 = [v9 objectAtIndex:v10];

  v12 = [v16 textLabel];
  v13 = [v12 textColor];

  if ([v11 state] == 4)
  {
    v14 = [v13 colorWithAlphaComponent:0.5];
    v15 = [v16 label];
    [v15 setTextColor:v14];
  }

  else
  {
    v14 = [v16 label];
    [v14 setTextColor:v13];
  }
}

- (void)useSelectedFont:(id)a3
{
  v12 = a3;
  v4 = [(BKAppearanceFontViewController *)self styleManager];
  v5 = [v12 familyName];
  v6 = [v5 length] != 0;
  v7 = [(BKAppearanceFontViewController *)self book];
  v8 = [NSNumber numberWithBool:v6];
  [v7 setUseGlobalContentStyle:v8];

  v9 = [v4 font];
  LOBYTE(v7) = [v5 isEqualToString:v9];

  if (v7)
  {
    [v4 notifyStyleChanged];
  }

  else
  {
    [v4 setFont:v5];
    v10 = [(BKAppearanceFontViewController *)self delegate];
    v11 = [v12 displayName];
    [v10 appearanceFontViewController:self didChangeToFontWithName:v11];
  }
}

- (void)downloadFont:(id)a3
{
  v4 = a3;
  v5 = [(BKAppearanceFontViewController *)self fonts];
  v6 = [v4 tag];

  v7 = [v5 objectAtIndex:v6];

  self->_shownCannotDownloadFontAlert = 0;
  [v7 download];
}

- (void)stopDownloadingFont:(id)a3
{
  v4 = a3;
  v5 = [(BKAppearanceFontViewController *)self fonts];
  v6 = [v4 tag];

  v7 = [v5 objectAtIndex:v6];

  [v7 cancelDownload];
}

- (void)fontDownloadFailed:(id)a3
{
  if (!self->_shownCannotDownloadFontAlert)
  {
    v4 = a3;
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
    v15 = [v4 object];

    [v15 checkStateSynchronously:0];
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