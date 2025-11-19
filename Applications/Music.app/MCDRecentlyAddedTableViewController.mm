@interface MCDRecentlyAddedTableViewController
- (BOOL)contentManager:(id)a3 canDrillIntoItem:(id)a4;
- (MCDRecentlyAddedTableViewController)initWithIdentifier:(id)a3 showLocalContent:(BOOL)a4;
- (id)contentManager:(id)a3 viewControllerForItem:(id)a4;
- (id)textForHeaderViewInContentManager:(id)a3;
- (void)viewDidLoad;
@end

@implementation MCDRecentlyAddedTableViewController

- (MCDRecentlyAddedTableViewController)initWithIdentifier:(id)a3 showLocalContent:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v10.receiver = self;
  v10.super_class = MCDRecentlyAddedTableViewController;
  v8 = [(MCDLibraryTableViewController *)&v10 initWithIdentifier:v6 showLocalContent:v4 dataSource:v7];

  if (v8)
  {
    [(MCDRecentlyAddedTableViewController *)v8 setPlayActivityFeatureName:@"recently_added"];
  }

  return v8;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = MCDRecentlyAddedTableViewController;
  [(MCDLibraryTableViewController *)&v4 viewDidLoad];
  v3 = [(MCDLibraryTableViewController *)self contentManager];
  [v3 setTableCellConfigurationBlock:&stru_101098838];
}

- (id)contentManager:(id)a3 viewControllerForItem:(id)a4
{
  v5 = a4;
  v6 = [v5 album];
  if (v6 && (v7 = v6, [v5 album], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "orphanMusicVideo"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v7, !v9))
  {
    v15 = [_TtC5Music27MCDItemDetailViewController alloc];
    v12 = [v5 album];
    v13 = [(MCDItemDetailViewController *)v15 initWithAlbum:v12 onlyDownloaded:[(MCDLibraryTableViewController *)self showLocalContent] preferCatalog:0];
  }

  else
  {
    v10 = [v5 playlist];

    if (!v10)
    {
      v14 = 0;
      goto LABEL_8;
    }

    v11 = [_TtC5Music27MCDItemDetailViewController alloc];
    v12 = [v5 playlist];
    v13 = [(MCDItemDetailViewController *)v11 initWithPlaylist:v12 onlyDownloaded:[(MCDLibraryTableViewController *)self showLocalContent] preferCatalog:0];
  }

  v14 = v13;

LABEL_8:

  return v14;
}

- (BOOL)contentManager:(id)a3 canDrillIntoItem:(id)a4
{
  v4 = a4;
  v5 = [v4 album];
  v6 = [v5 orphanMusicVideo];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [v4 album];
    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v9 = [v4 playlist];
      v7 = v9 != 0;
    }
  }

  return v7;
}

- (id)textForHeaderViewInContentManager:(id)a3
{
  if ([(MCDLibraryTableViewController *)self showLocalContent])
  {
    v3 = +[NSString downloadedOnlyMessage];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end