@interface MCDRadioGenresTableViewController
- (MCDRadioGenresTableViewController)init;
- (id)_contentManager;
- (id)contentManager:(id)a3 viewControllerForItem:(id)a4 indexPath:(id)a5;
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

  v5 = [(MCDFuseTableViewController *)self contentManager];
  [v5 setTableCellConfigurationBlock:&stru_101098880];
}

- (id)contentManager:(id)a3 viewControllerForItem:(id)a4 indexPath:(id)a5
{
  v5 = a4;
  v6 = [[MCDContentItemTableViewController alloc] initWithSectionItem:v5 showRankedList:0 queueListForPlayback:0 radioDomain:1];

  return v6;
}

- (id)_contentManager
{
  v3 = [MCDRadioGenresContentManager alloc];
  v4 = objc_opt_new();
  v5 = [(MCDFuseTableViewController *)self playbackManager];
  v6 = [(MCDRadioGenresTableViewController *)self traitCollection];
  v7 = -[MCDFuseContentManager initWithDataSource:delegate:viewController:playbackManager:limitedUI:](v3, "initWithDataSource:delegate:viewController:playbackManager:limitedUI:", v4, self, self, v5, [v6 shouldLimitMusicLists]);

  return v7;
}

@end