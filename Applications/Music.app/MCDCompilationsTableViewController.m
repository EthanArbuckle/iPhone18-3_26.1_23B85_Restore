@interface MCDCompilationsTableViewController
- (MCDCompilationsTableViewController)initWithIdentifier:(id)a3 showLocalContent:(BOOL)a4;
- (id)textForHeaderViewInContentManager:(id)a3;
@end

@implementation MCDCompilationsTableViewController

- (MCDCompilationsTableViewController)initWithIdentifier:(id)a3 showLocalContent:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v10.receiver = self;
  v10.super_class = MCDCompilationsTableViewController;
  v8 = [(MCDLibraryTableViewController *)&v10 initWithIdentifier:v6 showLocalContent:v4 dataSource:v7];

  if (v8)
  {
    [(MCDCompilationsTableViewController *)v8 setPlayActivityFeatureName:@"compilations"];
  }

  return v8;
}

- (id)textForHeaderViewInContentManager:(id)a3
{
  v4 = [(MCDCompilationsTableViewController *)self traitCollection];
  v5 = [v4 shouldLimitMusicLists];

  if (v5)
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