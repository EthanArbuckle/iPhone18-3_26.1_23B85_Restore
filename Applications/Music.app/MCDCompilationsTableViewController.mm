@interface MCDCompilationsTableViewController
- (MCDCompilationsTableViewController)initWithIdentifier:(id)identifier showLocalContent:(BOOL)content;
- (id)textForHeaderViewInContentManager:(id)manager;
@end

@implementation MCDCompilationsTableViewController

- (MCDCompilationsTableViewController)initWithIdentifier:(id)identifier showLocalContent:(BOOL)content
{
  contentCopy = content;
  identifierCopy = identifier;
  v7 = objc_opt_new();
  v10.receiver = self;
  v10.super_class = MCDCompilationsTableViewController;
  v8 = [(MCDLibraryTableViewController *)&v10 initWithIdentifier:identifierCopy showLocalContent:contentCopy dataSource:v7];

  if (v8)
  {
    [(MCDCompilationsTableViewController *)v8 setPlayActivityFeatureName:@"compilations"];
  }

  return v8;
}

- (id)textForHeaderViewInContentManager:(id)manager
{
  traitCollection = [(MCDCompilationsTableViewController *)self traitCollection];
  shouldLimitMusicLists = [traitCollection shouldLimitMusicLists];

  if (shouldLimitMusicLists)
  {
    v6 = MCDCarDisplayBundle();
    v7 = [v6 localizedStringForKey:@"RECENTLY_PLAYED_ALBUMS" value:&stru_101107168 table:@"MusicCarDisplayUI"];
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

@end