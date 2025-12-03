@interface MCDRadioGenresTableViewController
- (MCDRadioGenresTableViewController)init;
- (id)_contentManager;
- (id)contentManager:(id)manager viewControllerForItem:(id)item indexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation MCDRadioGenresTableViewController

- (MCDRadioGenresTableViewController)init
{
  v5.receiver = self;
  v5.super_class = MCDRadioGenresTableViewController;
  v2 = [(MCDFuseTableViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MCDRadioGenresTableViewController *)v2 setPlayActivityFeatureName:@"all_genres"];
  }

  return v3;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = MCDRadioGenresTableViewController;
  [(MCDContentItemTableViewController *)&v6 viewDidLoad];
  v3 = MCDCarDisplayBundle();
  v4 = [v3 localizedStringForKey:@"All Genres" value:&stru_101107168 table:@"MusicCarDisplayUI"];
  [(MCDRadioGenresTableViewController *)self setTitle:v4];

  contentManager = [(MCDFuseTableViewController *)self contentManager];
  [contentManager setTableCellConfigurationBlock:&stru_101098880];
}

- (id)contentManager:(id)manager viewControllerForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  v6 = [[MCDContentItemTableViewController alloc] initWithSectionItem:itemCopy showRankedList:0 queueListForPlayback:0 radioDomain:1];

  return v6;
}

- (id)_contentManager
{
  v3 = [MCDRadioGenresContentManager alloc];
  v4 = objc_opt_new();
  playbackManager = [(MCDFuseTableViewController *)self playbackManager];
  traitCollection = [(MCDRadioGenresTableViewController *)self traitCollection];
  v7 = -[MCDFuseContentManager initWithDataSource:delegate:viewController:playbackManager:limitedUI:](v3, "initWithDataSource:delegate:viewController:playbackManager:limitedUI:", v4, self, self, playbackManager, [traitCollection shouldLimitMusicLists]);

  return v7;
}

@end