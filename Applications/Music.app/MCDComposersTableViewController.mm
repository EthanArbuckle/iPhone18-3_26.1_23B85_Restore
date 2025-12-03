@interface MCDComposersTableViewController
- (MCDComposersTableViewController)initWithIdentifier:(id)identifier showLocalContent:(BOOL)content;
- (id)sectionIndexTitlesForContentManager:(id)manager;
- (id)textForHeaderViewInContentManager:(id)manager;
- (void)viewDidLoad;
@end

@implementation MCDComposersTableViewController

- (MCDComposersTableViewController)initWithIdentifier:(id)identifier showLocalContent:(BOOL)content
{
  contentCopy = content;
  identifierCopy = identifier;
  v7 = objc_opt_new();
  v10.receiver = self;
  v10.super_class = MCDComposersTableViewController;
  v8 = [(MCDLibraryTableViewController *)&v10 initWithIdentifier:identifierCopy showLocalContent:contentCopy dataSource:v7];

  if (v8)
  {
    [(MCDComposersTableViewController *)v8 setPlayActivityFeatureName:@"composers"];
  }

  return v8;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = MCDComposersTableViewController;
  [(MCDLibraryTableViewController *)&v4 viewDidLoad];
  contentManager = [(MCDLibraryTableViewController *)self contentManager];
  [contentManager setTableCellConfigurationBlock:&stru_101097F20];
}

- (id)textForHeaderViewInContentManager:(id)manager
{
  traitCollection = [(MCDComposersTableViewController *)self traitCollection];
  shouldLimitMusicLists = [traitCollection shouldLimitMusicLists];

  if (shouldLimitMusicLists)
  {
    v6 = MCDCarDisplayBundle();
    v7 = [v6 localizedStringForKey:@"RECENTLY_ADDED_COMPOSERS" value:&stru_101107168 table:@"MusicCarDisplayUI"];
  }

  else if ([(MCDLibraryTableViewController *)self showLocalContent])
  {
    v7 = +[NSString downloadedOnlyMessage];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)sectionIndexTitlesForContentManager:(id)manager
{
  managerCopy = manager;
  traitCollection = [(MCDComposersTableViewController *)self traitCollection];
  shouldLimitMusicLists = [traitCollection shouldLimitMusicLists];

  if (shouldLimitMusicLists)
  {
    v7 = 0;
  }

  else
  {
    v8 = +[NSMutableArray array];
    lastReceivedResponse = [managerCopy lastReceivedResponse];
    results = [lastReceivedResponse results];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000E0140;
    v13[3] = &unk_101097CA8;
    v14 = v8;
    v11 = v8;
    [results enumerateSectionsUsingBlock:v13];

    v7 = [NSArray arrayWithArray:v11];
  }

  return v7;
}

@end