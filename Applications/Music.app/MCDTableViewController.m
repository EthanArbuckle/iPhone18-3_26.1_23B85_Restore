@interface MCDTableViewController
+ (id)addAlbumArtViewWithImage:(id)a3 radiusKind:(unint64_t)a4 toCell:(id)a5;
+ (void)addLeadingView:(id)a3 toCell:(id)a4;
+ (void)removeImageFromCell:(id)a3;
+ (void)setPlaceholderImage:(id)a3 tintColor:(id)a4 highlightedTintColor:(id)a5 toCell:(id)a6;
- (BOOL)currentAppIsPlaying;
- (BOOL)hasRowsToDisplay;
- (BOOL)tableView:(id)a3 shouldUpdateFocusInContext:(id)a4;
- (MCDTableViewController)init;
- (id)preferredFocusEnvironments;
- (void)_nowPlayingButtonTapped:(id)a3;
- (void)loadView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation MCDTableViewController

- (MCDTableViewController)init
{
  v5.receiver = self;
  v5.super_class = MCDTableViewController;
  v2 = [(MCDTableViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_alwaysHideNowPlayingButton = 0;
    [(MCDTableViewController *)v2 setClearsSelectionOnViewWillAppear:1];
  }

  return v3;
}

- (void)loadView
{
  v3 = [[MCDTableView alloc] initWithFrame:0 style:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(MCDTableView *)v3 setDataSource:self];
  [(MCDTableView *)v3 setDelegate:self];
  [(MCDTableViewController *)self setView:v3];
}

+ (void)removeImageFromCell:(id)a3
{
  v3 = a3;
  [v3 setSeparatorInset:{UITableViewAutomaticDimension, UITableViewAutomaticDimension, UITableViewAutomaticDimension, UITableViewAutomaticDimension}];
  v5 = [v3 viewWithTag:1000];

  v4 = v5;
  if (v5)
  {
    [v5 removeFromSuperview];
    v4 = v5;
  }
}

+ (void)setPlaceholderImage:(id)a3 tintColor:(id)a4 highlightedTintColor:(id)a5 toCell:(id)a6
{
  v17 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v12 artworkImageView];
  if (v17)
  {
    [v12 sizeForArtwork];
    [v12 setSeparatorInset:{0.0, v14 + 4.0 + 8.0, 0.0, 0.0}];
    if (!v13)
    {
      v13 = [[UIImageView alloc] initWithImage:v17];
      [v13 setTag:1000];
    }

    [a1 addLeadingView:v13 toCell:v12];
    [v13 setContentMode:4];
    [v12 sizeForArtwork];
    v16 = [UIImageSymbolConfiguration configurationWithPointSize:v15 * 0.5];
    [v13 setPreferredSymbolConfiguration:v16];

    [v12 setPlaceholderTintColor:v10];
    [v12 setPlaceholderHighlightedTintColor:v11];
  }
}

+ (void)addLeadingView:(id)a3 toCell:(id)a4
{
  v25 = a4;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v25 sizeForArtwork];
    v7 = v6;
  }

  else
  {
    v7 = 36.0;
  }

  [v5 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v25 addSubview:v5];
  [v25 setSeparatorInset:{0.0, v7 + 4.0 + 8.0, 0.0, 0.0}];
  v27.origin.x = v9;
  v27.origin.y = v11;
  v27.size.width = v13;
  v27.size.height = v15;
  v16 = (v7 - CGRectGetWidth(v27)) * 0.5 + 4.0;
  [v25 frame];
  v17 = CGRectGetHeight(v28) * 0.5 - v15 * 0.5;
  v18 = [v5 layer];
  [v18 setContentsGravity:kCAGravityResizeAspect];

  v19 = [v25 effectiveUserInterfaceLayoutDirection];
  v20 = [v25 contentView];
  [v20 frame];
  [v5 setFrame:{sub_1000FCE08(v19, v16, v17, v13, v15, v21, v22, v23, v24)}];
}

+ (id)addAlbumArtViewWithImage:(id)a3 radiusKind:(unint64_t)a4 toCell:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = v8;
  v10 = 0;
  if (v7 && v8)
  {
    v11 = [v8 artworkImageView];
    v12 = v11;
    if (v11)
    {
      [v11 removeFromSuperview];
    }

    [v9 sizeForArtwork];
    v14 = v13;
    [v9 setSeparatorInset:{0.0, v13 + 4.0 + 8.0, 0.0, 0.0}];
    v10 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v10 setTag:1000];
    if ([v7 renderingMode] == 2)
    {
      [v10 setImage:v7];
      v15 = +[UIColor _externalSystemWhiteColor];
      [v10 setTintColor:v15];

      [v10 setContentMode:4];
    }

    else
    {
      [v10 setContentMode:1];
      [v10 setImage:v7];
    }

    [v10 setClipsToBounds:1];
    if (a4 == 1)
    {
      v17 = [v10 layer];
      [v17 setCornerRadius:v14 * 0.5];
    }

    else
    {
      if (a4)
      {
LABEL_13:
        v18 = [v9 effectiveUserInterfaceLayoutDirection];
        v19 = [v9 contentView];
        [v19 frame];
        [v10 setFrame:{sub_1000FCE08(v18, 4.0, 4.0, v14, v14, v20, v21, v22, v23)}];

        [v10 setContentMode:1];
        [v9 addSubview:v10];

        goto LABEL_14;
      }

      v16 = [v10 layer];
      [v16 setCornerRadius:4.5];

      v17 = [v10 layer];
      [v17 setCornerCurve:kCACornerCurveContinuous];
    }

    goto LABEL_13;
  }

LABEL_14:

  return v10;
}

- (BOOL)hasRowsToDisplay
{
  v3 = [(MCDTableViewController *)self isViewLoaded];
  if (v3)
  {
    v4 = [(MCDTableViewController *)self tableView];
    v5 = [v4 numberOfSections];

    v6 = v5 - 1;
    if (v5 < 1)
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v7 = 0;
      do
      {
        v8 = [(MCDTableViewController *)self tableView];
        v9 = [v8 numberOfRowsInSection:v7];

        LOBYTE(v3) = v9 > 0;
        if (v9 > 0)
        {
          break;
        }
      }

      while (v6 != v7++);
    }
  }

  return v3;
}

- (id)preferredFocusEnvironments
{
  v3 = [(MCDTableViewController *)self tableView];
  v4 = v3;
  if (v3)
  {
    v9 = v3;
    v5 = [NSArray arrayWithObjects:&v9 count:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MCDTableViewController;
    v5 = [(MCDTableViewController *)&v8 preferredFocusEnvironments];
  }

  v6 = v5;

  return v6;
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = MCDTableViewController;
  [(MCDTableViewController *)&v29 viewDidLoad];
  [(MCDTableViewController *)self _setFilteredDataType:1];
  v3 = [(MCDTableViewController *)self tableView];
  [v3 setRowHeight:UITableViewAutomaticDimension];

  v4 = [(MCDTableViewController *)self tableView];
  [v4 setEstimatedRowHeight:UITableViewAutomaticDimension];

  v5 = [(MCDTableViewController *)self tableView];
  v6 = objc_opt_class();
  v7 = +[(_MCDReusableCell *)MCDTableViewCell];
  [v5 registerClass:v6 forCellReuseIdentifier:v7];

  v8 = [(MCDTableViewController *)self tableView];
  v9 = objc_opt_class();
  v10 = +[(_MCDReusableCell *)MCDTallCell];
  [v8 registerClass:v9 forCellReuseIdentifier:v10];

  v11 = [(MCDTableViewController *)self tableView];
  [v11 setShowsHorizontalScrollIndicator:0];

  v12 = [(MCDTableViewController *)self tableView];
  [v12 setShowsVerticalScrollIndicator:0];

  v13 = [(MCDTableViewController *)self tableView];
  [v13 setRemembersLastFocusedIndexPath:1];

  v30 = objc_opt_class();
  v14 = [NSArray arrayWithObjects:&v30 count:1];
  v15 = [(MCDTableViewController *)self registerForTraitChanges:v14 withHandler:&stru_101098018];

  v16 = +[UIColor clearColor];
  v17 = [(MCDTableViewController *)self tableView];
  [v17 setBackgroundColor:v16];

  v18 = [(MCDTableViewController *)self tableView];
  [v18 setSectionHeaderTopPadding:16.0];

  v19 = [(MCDTableViewController *)self tableView];
  [v19 contentInset];
  v21 = v20;
  v22 = [(MCDTableViewController *)self tableView];
  [v22 contentInset];
  v24 = v23;
  v25 = [(MCDTableViewController *)self tableView];
  [v25 contentInset];
  v27 = v26;
  v28 = [(MCDTableViewController *)self tableView];
  [v28 setContentInset:{v21, v24, 16.0, v27}];
}

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = MCDTableViewController;
  [(MCDTableViewController *)&v9 viewWillAppear:a3];
  v4 = [(MCDTableViewController *)self alwaysShowNavBar];
  v5 = [(MCDTableViewController *)self navigationController];
  v6 = v5;
  if (v4)
  {
    [v5 setNavigationBarHidden:0 animated:1];
  }

  else
  {
    v7 = [(MCDTableViewController *)self navigationController];
    v8 = [v7 viewControllers];
    [v6 setNavigationBarHidden:objc_msgSend(v8 animated:{"count") < 2, 1}];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = MCDTableViewController;
  [(MCDTableViewController *)&v10 viewDidAppear:?];
  v5 = [(MCDTableViewController *)self transitionCoordinator];
  v6 = v5;
  if (v5 && [v5 initiallyInteractive])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000E5F58;
    v8[3] = &unk_101098040;
    v8[4] = self;
    v9 = a3;
    [v6 notifyWhenInteractionChangesUsingBlock:v8];
  }

  else
  {
    v7 = [(MCDTableViewController *)self tableView];
    MCDClearTableViewSelection();
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = MCDTableViewController;
  [(MCDTableViewController *)&v9 viewWillDisappear:a3];
  v4 = [(MCDTableViewController *)self alwaysShowNavBar];
  v5 = [(MCDTableViewController *)self navigationController];
  v6 = v5;
  if (v4)
  {
    [v5 setNavigationBarHidden:0 animated:1];
  }

  else
  {
    v7 = [(MCDTableViewController *)self navigationController];
    v8 = [v7 viewControllers];
    [v6 setNavigationBarHidden:objc_msgSend(v8 animated:{"count") < 2, 1}];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = [(MCDTableViewController *)self viewControllerForRowAtIndexPath:a4];
  if (v5)
  {
    v7 = v5;
    [v5 setPlayActivityFeatureNameSourceViewController:self];
    v6 = [(MCDTableViewController *)self navigationController];
    [v6 pushViewController:v7 animated:1];

    v5 = v7;
  }
}

- (BOOL)tableView:(id)a3 shouldUpdateFocusInContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 nextFocusedView];
  v8 = [v6 nextFocusedIndexPath];

  objc_opt_class();
  v11 = (objc_opt_isKindOfClass() & 1) == 0 || (v9 = [v8 section], (v10 = objc_msgSend(v8, "row")) == 0) || v10 == objc_msgSend(v5, "numberOfRowsInSection:", v9) - 1;

  return v11;
}

- (void)_nowPlayingButtonTapped:(id)a3
{
  v5 = +[MCDMusicNowPlayingViewController musicNowPlayingViewController];
  [v5 setPlayActivityFeatureNameSourceViewController:self];
  v4 = [(MCDTableViewController *)self navigationController];
  [v4 pushViewController:v5 animated:1];
}

- (BOOL)currentAppIsPlaying
{
  v2 = +[_TtC5Music15CarPlayObserver shared];
  v3 = [v2 currentPlayingSong];

  return v3 != 0;
}

@end