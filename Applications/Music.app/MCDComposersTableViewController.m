@interface MCDComposersTableViewController
- (MCDComposersTableViewController)initWithIdentifier:(id)a3 showLocalContent:(BOOL)a4;
- (id)sectionIndexTitlesForContentManager:(id)a3;
- (id)textForHeaderViewInContentManager:(id)a3;
- (void)viewDidLoad;
@end

@implementation MCDComposersTableViewController

- (MCDComposersTableViewController)initWithIdentifier:(id)a3 showLocalContent:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v10.receiver = self;
  v10.super_class = MCDComposersTableViewController;
  v8 = [(MCDLibraryTableViewController *)&v10 initWithIdentifier:v6 showLocalContent:v4 dataSource:v7];

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
  v3 = [(MCDLibraryTableViewController *)self contentManager];
  [v3 setTableCellConfigurationBlock:&stru_101097F20];
}

- (id)textForHeaderViewInContentManager:(id)a3
{
  v4 = [(MCDComposersTableViewController *)self traitCollection];
  v5 = [v4 shouldLimitMusicLists];

  if (v5)
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

- (id)sectionIndexTitlesForContentManager:(id)a3
{
  v4 = a3;
  v5 = [(MCDComposersTableViewController *)self traitCollection];
  v6 = [v5 shouldLimitMusicLists];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = +[NSMutableArray array];
    v9 = [v4 lastReceivedResponse];
    v10 = [v9 results];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000E0140;
    v13[3] = &unk_101097CA8;
    v14 = v8;
    v11 = v8;
    [v10 enumerateSectionsUsingBlock:v13];

    v7 = [NSArray arrayWithArray:v11];
  }

  return v7;
}

@end