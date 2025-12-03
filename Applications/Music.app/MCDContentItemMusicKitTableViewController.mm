@interface MCDContentItemMusicKitTableViewController
- (MCDContentItemMusicKitTableViewController)initWithSectionItem:(id)item radioDomain:(BOOL)domain;
- (id)_contentManager;
- (void)viewDidLoad;
@end

@implementation MCDContentItemMusicKitTableViewController

- (MCDContentItemMusicKitTableViewController)initWithSectionItem:(id)item radioDomain:(BOOL)domain
{
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = MCDContentItemMusicKitTableViewController;
  v8 = [(MCDFuseTableViewController *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_parentSection, item);
    v9->_useRadioDomain = domain;
    title = [itemCopy title];
    if (title)
    {
      [(MCDContentItemMusicKitTableViewController *)v9 setTitle:title];
    }

    else
    {
      title2 = [(MCDContentItemMusicKitTableViewController *)v9 title];
      [(MCDContentItemMusicKitTableViewController *)v9 setTitle:title2];
    }

    [(MCDContentItemMusicKitTableViewController *)v9 setPlayActivityFeatureName:@"grouping"];
  }

  return v9;
}

- (id)_contentManager
{
  useRadioDomain = [(MCDContentItemMusicKitTableViewController *)self useRadioDomain];
  v4 = off_10108B708;
  if (!useRadioDomain)
  {
    v4 = off_10108B700;
  }

  v5 = objc_alloc(*v4);
  parentSection = [(MCDContentItemMusicKitTableViewController *)self parentSection];
  v7 = [v5 initWithParentSection:parentSection];

  v8 = [MCDBrowseItemsMusicKitContentManager alloc];
  playbackManager = [(MCDFuseTableViewController *)self playbackManager];
  traitCollection = [(MCDContentItemMusicKitTableViewController *)self traitCollection];
  shouldLimitMusicLists = [traitCollection shouldLimitMusicLists];
  contentResults = [(MCDContentItemMusicKitTableViewController *)self contentResults];
  v13 = [(MCDFuseContentManager *)v8 initWithDataSource:v7 delegate:self viewController:self playbackManager:playbackManager limitedUI:shouldLimitMusicLists contentResults:contentResults];

  return v13;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = MCDContentItemMusicKitTableViewController;
  [(MCDFuseTableViewController *)&v8 viewDidLoad];
  tableView = [(MCDContentItemMusicKitTableViewController *)self tableView];
  [tableView setSeparatorStyle:1];

  objc_initWeak(&location, self);
  objc_copyWeak(&v6, &location);
  v4 = [(MCDFuseTableViewController *)self contentManager:_NSConcreteStackBlock];
  [v4 setTableCellConfigurationBlock:&v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

@end