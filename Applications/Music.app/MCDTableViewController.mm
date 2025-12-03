@interface MCDTableViewController
+ (id)addAlbumArtViewWithImage:(id)image radiusKind:(unint64_t)kind toCell:(id)cell;
+ (void)addLeadingView:(id)view toCell:(id)cell;
+ (void)removeImageFromCell:(id)cell;
+ (void)setPlaceholderImage:(id)image tintColor:(id)color highlightedTintColor:(id)tintColor toCell:(id)cell;
- (BOOL)currentAppIsPlaying;
- (BOOL)hasRowsToDisplay;
- (BOOL)tableView:(id)view shouldUpdateFocusInContext:(id)context;
- (MCDTableViewController)init;
- (id)preferredFocusEnvironments;
- (void)_nowPlayingButtonTapped:(id)tapped;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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

+ (void)removeImageFromCell:(id)cell
{
  cellCopy = cell;
  [cellCopy setSeparatorInset:{UITableViewAutomaticDimension, UITableViewAutomaticDimension, UITableViewAutomaticDimension, UITableViewAutomaticDimension}];
  v5 = [cellCopy viewWithTag:1000];

  v4 = v5;
  if (v5)
  {
    [v5 removeFromSuperview];
    v4 = v5;
  }
}

+ (void)setPlaceholderImage:(id)image tintColor:(id)color highlightedTintColor:(id)tintColor toCell:(id)cell
{
  imageCopy = image;
  colorCopy = color;
  tintColorCopy = tintColor;
  cellCopy = cell;
  artworkImageView = [cellCopy artworkImageView];
  if (imageCopy)
  {
    [cellCopy sizeForArtwork];
    [cellCopy setSeparatorInset:{0.0, v14 + 4.0 + 8.0, 0.0, 0.0}];
    if (!artworkImageView)
    {
      artworkImageView = [[UIImageView alloc] initWithImage:imageCopy];
      [artworkImageView setTag:1000];
    }

    [self addLeadingView:artworkImageView toCell:cellCopy];
    [artworkImageView setContentMode:4];
    [cellCopy sizeForArtwork];
    v16 = [UIImageSymbolConfiguration configurationWithPointSize:v15 * 0.5];
    [artworkImageView setPreferredSymbolConfiguration:v16];

    [cellCopy setPlaceholderTintColor:colorCopy];
    [cellCopy setPlaceholderHighlightedTintColor:tintColorCopy];
  }
}

+ (void)addLeadingView:(id)view toCell:(id)cell
{
  cellCopy = cell;
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [cellCopy sizeForArtwork];
    v7 = v6;
  }

  else
  {
    v7 = 36.0;
  }

  [viewCopy frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [cellCopy addSubview:viewCopy];
  [cellCopy setSeparatorInset:{0.0, v7 + 4.0 + 8.0, 0.0, 0.0}];
  v27.origin.x = v9;
  v27.origin.y = v11;
  v27.size.width = v13;
  v27.size.height = v15;
  v16 = (v7 - CGRectGetWidth(v27)) * 0.5 + 4.0;
  [cellCopy frame];
  v17 = CGRectGetHeight(v28) * 0.5 - v15 * 0.5;
  layer = [viewCopy layer];
  [layer setContentsGravity:kCAGravityResizeAspect];

  effectiveUserInterfaceLayoutDirection = [cellCopy effectiveUserInterfaceLayoutDirection];
  contentView = [cellCopy contentView];
  [contentView frame];
  [viewCopy setFrame:{sub_1000FCE08(effectiveUserInterfaceLayoutDirection, v16, v17, v13, v15, v21, v22, v23, v24)}];
}

+ (id)addAlbumArtViewWithImage:(id)image radiusKind:(unint64_t)kind toCell:(id)cell
{
  imageCopy = image;
  cellCopy = cell;
  v9 = cellCopy;
  v10 = 0;
  if (imageCopy && cellCopy)
  {
    artworkImageView = [cellCopy artworkImageView];
    v12 = artworkImageView;
    if (artworkImageView)
    {
      [artworkImageView removeFromSuperview];
    }

    [v9 sizeForArtwork];
    v14 = v13;
    [v9 setSeparatorInset:{0.0, v13 + 4.0 + 8.0, 0.0, 0.0}];
    v10 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v10 setTag:1000];
    if ([imageCopy renderingMode] == 2)
    {
      [v10 setImage:imageCopy];
      v15 = +[UIColor _externalSystemWhiteColor];
      [v10 setTintColor:v15];

      [v10 setContentMode:4];
    }

    else
    {
      [v10 setContentMode:1];
      [v10 setImage:imageCopy];
    }

    [v10 setClipsToBounds:1];
    if (kind == 1)
    {
      layer = [v10 layer];
      [layer setCornerRadius:v14 * 0.5];
    }

    else
    {
      if (kind)
      {
LABEL_13:
        effectiveUserInterfaceLayoutDirection = [v9 effectiveUserInterfaceLayoutDirection];
        contentView = [v9 contentView];
        [contentView frame];
        [v10 setFrame:{sub_1000FCE08(effectiveUserInterfaceLayoutDirection, 4.0, 4.0, v14, v14, v20, v21, v22, v23)}];

        [v10 setContentMode:1];
        [v9 addSubview:v10];

        goto LABEL_14;
      }

      layer2 = [v10 layer];
      [layer2 setCornerRadius:4.5];

      layer = [v10 layer];
      [layer setCornerCurve:kCACornerCurveContinuous];
    }

    goto LABEL_13;
  }

LABEL_14:

  return v10;
}

- (BOOL)hasRowsToDisplay
{
  isViewLoaded = [(MCDTableViewController *)self isViewLoaded];
  if (isViewLoaded)
  {
    tableView = [(MCDTableViewController *)self tableView];
    numberOfSections = [tableView numberOfSections];

    v6 = numberOfSections - 1;
    if (numberOfSections < 1)
    {
      LOBYTE(isViewLoaded) = 0;
    }

    else
    {
      v7 = 0;
      do
      {
        tableView2 = [(MCDTableViewController *)self tableView];
        v9 = [tableView2 numberOfRowsInSection:v7];

        LOBYTE(isViewLoaded) = v9 > 0;
        if (v9 > 0)
        {
          break;
        }
      }

      while (v6 != v7++);
    }
  }

  return isViewLoaded;
}

- (id)preferredFocusEnvironments
{
  tableView = [(MCDTableViewController *)self tableView];
  v4 = tableView;
  if (tableView)
  {
    v9 = tableView;
    preferredFocusEnvironments = [NSArray arrayWithObjects:&v9 count:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MCDTableViewController;
    preferredFocusEnvironments = [(MCDTableViewController *)&v8 preferredFocusEnvironments];
  }

  v6 = preferredFocusEnvironments;

  return v6;
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = MCDTableViewController;
  [(MCDTableViewController *)&v29 viewDidLoad];
  [(MCDTableViewController *)self _setFilteredDataType:1];
  tableView = [(MCDTableViewController *)self tableView];
  [tableView setRowHeight:UITableViewAutomaticDimension];

  tableView2 = [(MCDTableViewController *)self tableView];
  [tableView2 setEstimatedRowHeight:UITableViewAutomaticDimension];

  tableView3 = [(MCDTableViewController *)self tableView];
  v6 = objc_opt_class();
  v7 = +[(_MCDReusableCell *)MCDTableViewCell];
  [tableView3 registerClass:v6 forCellReuseIdentifier:v7];

  tableView4 = [(MCDTableViewController *)self tableView];
  v9 = objc_opt_class();
  v10 = +[(_MCDReusableCell *)MCDTallCell];
  [tableView4 registerClass:v9 forCellReuseIdentifier:v10];

  tableView5 = [(MCDTableViewController *)self tableView];
  [tableView5 setShowsHorizontalScrollIndicator:0];

  tableView6 = [(MCDTableViewController *)self tableView];
  [tableView6 setShowsVerticalScrollIndicator:0];

  tableView7 = [(MCDTableViewController *)self tableView];
  [tableView7 setRemembersLastFocusedIndexPath:1];

  v30 = objc_opt_class();
  v14 = [NSArray arrayWithObjects:&v30 count:1];
  v15 = [(MCDTableViewController *)self registerForTraitChanges:v14 withHandler:&stru_101098018];

  v16 = +[UIColor clearColor];
  tableView8 = [(MCDTableViewController *)self tableView];
  [tableView8 setBackgroundColor:v16];

  tableView9 = [(MCDTableViewController *)self tableView];
  [tableView9 setSectionHeaderTopPadding:16.0];

  tableView10 = [(MCDTableViewController *)self tableView];
  [tableView10 contentInset];
  v21 = v20;
  tableView11 = [(MCDTableViewController *)self tableView];
  [tableView11 contentInset];
  v24 = v23;
  tableView12 = [(MCDTableViewController *)self tableView];
  [tableView12 contentInset];
  v27 = v26;
  tableView13 = [(MCDTableViewController *)self tableView];
  [tableView13 setContentInset:{v21, v24, 16.0, v27}];
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = MCDTableViewController;
  [(MCDTableViewController *)&v9 viewWillAppear:appear];
  alwaysShowNavBar = [(MCDTableViewController *)self alwaysShowNavBar];
  navigationController = [(MCDTableViewController *)self navigationController];
  v6 = navigationController;
  if (alwaysShowNavBar)
  {
    [navigationController setNavigationBarHidden:0 animated:1];
  }

  else
  {
    navigationController2 = [(MCDTableViewController *)self navigationController];
    viewControllers = [navigationController2 viewControllers];
    [v6 setNavigationBarHidden:objc_msgSend(viewControllers animated:{"count") < 2, 1}];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = MCDTableViewController;
  [(MCDTableViewController *)&v10 viewDidAppear:?];
  transitionCoordinator = [(MCDTableViewController *)self transitionCoordinator];
  v6 = transitionCoordinator;
  if (transitionCoordinator && [transitionCoordinator initiallyInteractive])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000E5F58;
    v8[3] = &unk_101098040;
    v8[4] = self;
    appearCopy = appear;
    [v6 notifyWhenInteractionChangesUsingBlock:v8];
  }

  else
  {
    tableView = [(MCDTableViewController *)self tableView];
    MCDClearTableViewSelection();
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v9.receiver = self;
  v9.super_class = MCDTableViewController;
  [(MCDTableViewController *)&v9 viewWillDisappear:disappear];
  alwaysShowNavBar = [(MCDTableViewController *)self alwaysShowNavBar];
  navigationController = [(MCDTableViewController *)self navigationController];
  v6 = navigationController;
  if (alwaysShowNavBar)
  {
    [navigationController setNavigationBarHidden:0 animated:1];
  }

  else
  {
    navigationController2 = [(MCDTableViewController *)self navigationController];
    viewControllers = [navigationController2 viewControllers];
    [v6 setNavigationBarHidden:objc_msgSend(viewControllers animated:{"count") < 2, 1}];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v5 = [(MCDTableViewController *)self viewControllerForRowAtIndexPath:path];
  if (v5)
  {
    v7 = v5;
    [v5 setPlayActivityFeatureNameSourceViewController:self];
    navigationController = [(MCDTableViewController *)self navigationController];
    [navigationController pushViewController:v7 animated:1];

    v5 = v7;
  }
}

- (BOOL)tableView:(id)view shouldUpdateFocusInContext:(id)context
{
  viewCopy = view;
  contextCopy = context;
  nextFocusedView = [contextCopy nextFocusedView];
  nextFocusedIndexPath = [contextCopy nextFocusedIndexPath];

  objc_opt_class();
  v11 = (objc_opt_isKindOfClass() & 1) == 0 || (v9 = [nextFocusedIndexPath section], (v10 = objc_msgSend(nextFocusedIndexPath, "row")) == 0) || v10 == objc_msgSend(viewCopy, "numberOfRowsInSection:", v9) - 1;

  return v11;
}

- (void)_nowPlayingButtonTapped:(id)tapped
{
  v5 = +[MCDMusicNowPlayingViewController musicNowPlayingViewController];
  [v5 setPlayActivityFeatureNameSourceViewController:self];
  navigationController = [(MCDTableViewController *)self navigationController];
  [navigationController pushViewController:v5 animated:1];
}

- (BOOL)currentAppIsPlaying
{
  v2 = +[_TtC5Music15CarPlayObserver shared];
  currentPlayingSong = [v2 currentPlayingSong];

  return currentPlayingSong != 0;
}

@end