@interface MCDContentItemMusicKitTableViewController
- (MCDContentItemMusicKitTableViewController)initWithSectionItem:(id)a3 radioDomain:(BOOL)a4;
- (id)_contentManager;
- (void)viewDidLoad;
@end

@implementation MCDContentItemMusicKitTableViewController

- (MCDContentItemMusicKitTableViewController)initWithSectionItem:(id)a3 radioDomain:(BOOL)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = MCDContentItemMusicKitTableViewController;
  v8 = [(MCDFuseTableViewController *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_parentSection, a3);
    v9->_useRadioDomain = a4;
    v10 = [v7 title];
    if (v10)
    {
      [(MCDContentItemMusicKitTableViewController *)v9 setTitle:v10];
    }

    else
    {
      v11 = [(MCDContentItemMusicKitTableViewController *)v9 title];
      [(MCDContentItemMusicKitTableViewController *)v9 setTitle:v11];
    }

    [(MCDContentItemMusicKitTableViewController *)v9 setPlayActivityFeatureName:@"grouping"];
  }

  return v9;
}

- (id)_contentManager
{
  v3 = [(MCDContentItemMusicKitTableViewController *)self useRadioDomain];
  v4 = off_10108B708;
  if (!v3)
  {
    v4 = off_10108B700;
  }

  v5 = objc_alloc(*v4);
  v6 = [(MCDContentItemMusicKitTableViewController *)self parentSection];
  v7 = [v5 initWithParentSection:v6];

  v8 = [MCDBrowseItemsMusicKitContentManager alloc];
  v9 = [(MCDFuseTableViewController *)self playbackManager];
  v10 = [(MCDContentItemMusicKitTableViewController *)self traitCollection];
  v11 = [v10 shouldLimitMusicLists];
  v12 = [(MCDContentItemMusicKitTableViewController *)self contentResults];
  v13 = [(MCDFuseContentManager *)v8 initWithDataSource:v7 delegate:self viewController:self playbackManager:v9 limitedUI:v11 contentResults:v12];

  return v13;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = MCDContentItemMusicKitTableViewController;
  [(MCDFuseTableViewController *)&v8 viewDidLoad];
  v3 = [(MCDContentItemMusicKitTableViewController *)self tableView];
  [v3 setSeparatorStyle:1];

  objc_initWeak(&location, self);
  objc_copyWeak(&v6, &location);
  v4 = [(MCDFuseTableViewController *)self contentManager:_NSConcreteStackBlock];
  [v4 setTableCellConfigurationBlock:&v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

@end