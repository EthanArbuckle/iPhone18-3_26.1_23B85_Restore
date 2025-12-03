@interface MCDGenresViewController
- (MCDGenresViewController)initWithIdentifier:(id)identifier showLocalContent:(BOOL)content;
- (id)contentManager:(id)manager titleForHeaderInSection:(int64_t)section;
- (id)textForHeaderViewInContentManager:(id)manager;
- (void)viewDidLoad;
@end

@implementation MCDGenresViewController

- (MCDGenresViewController)initWithIdentifier:(id)identifier showLocalContent:(BOOL)content
{
  contentCopy = content;
  identifierCopy = identifier;
  v7 = objc_opt_new();
  v10.receiver = self;
  v10.super_class = MCDGenresViewController;
  v8 = [(MCDLibraryTableViewController *)&v10 initWithIdentifier:identifierCopy showLocalContent:contentCopy dataSource:v7];

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
  contentManager = [(MCDLibraryTableViewController *)self contentManager];
  [contentManager setTableCellConfigurationBlock:&stru_1010981C8];
}

- (id)textForHeaderViewInContentManager:(id)manager
{
  traitCollection = [(MCDGenresViewController *)self traitCollection];
  shouldLimitMusicLists = [traitCollection shouldLimitMusicLists];

  if (shouldLimitMusicLists)
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

- (id)contentManager:(id)manager titleForHeaderInSection:(int64_t)section
{
  traitCollection = [(MCDGenresViewController *)self traitCollection];
  shouldLimitMusicLists = [traitCollection shouldLimitMusicLists];

  v7 = 0;
  if (!section && shouldLimitMusicLists)
  {
    v8 = MCDCarDisplayBundle();
    v7 = [v8 localizedStringForKey:@"RECENTLY_ADDED_GENRES" value:&stru_101107168 table:@"MusicCarDisplayUI"];
  }

  return v7;
}

@end