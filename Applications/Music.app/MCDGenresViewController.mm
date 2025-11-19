@interface MCDGenresViewController
- (MCDGenresViewController)initWithIdentifier:(id)a3 showLocalContent:(BOOL)a4;
- (id)contentManager:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)textForHeaderViewInContentManager:(id)a3;
- (void)viewDidLoad;
@end

@implementation MCDGenresViewController

- (MCDGenresViewController)initWithIdentifier:(id)a3 showLocalContent:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v10.receiver = self;
  v10.super_class = MCDGenresViewController;
  v8 = [(MCDLibraryTableViewController *)&v10 initWithIdentifier:v6 showLocalContent:v4 dataSource:v7];

  if (v8)
  {
    [(MCDGenresViewController *)v8 setPlayActivityFeatureName:@"genres"];
  }

  return v8;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = MCDGenresViewController;
  [(MCDLibraryTableViewController *)&v4 viewDidLoad];
  v3 = [(MCDLibraryTableViewController *)self contentManager];
  [v3 setTableCellConfigurationBlock:&stru_1010981C8];
}

- (id)textForHeaderViewInContentManager:(id)a3
{
  v4 = [(MCDGenresViewController *)self traitCollection];
  v5 = [v4 shouldLimitMusicLists];

  if (v5)
  {
    v6 = MCDCarDisplayBundle();
    v7 = [v6 localizedStringForKey:@"RECENTLY_ADDED_GENRES" value:&stru_101107168 table:@"MusicCarDisplayUI"];
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

- (id)contentManager:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(MCDGenresViewController *)self traitCollection];
  v6 = [v5 shouldLimitMusicLists];

  v7 = 0;
  if (!a4 && v6)
  {
    v8 = MCDCarDisplayBundle();
    v7 = [v8 localizedStringForKey:@"RECENTLY_ADDED_GENRES" value:&stru_101107168 table:@"MusicCarDisplayUI"];
  }

  return v7;
}

@end