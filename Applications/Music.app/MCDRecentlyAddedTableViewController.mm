@interface MCDRecentlyAddedTableViewController
- (BOOL)contentManager:(id)manager canDrillIntoItem:(id)item;
- (MCDRecentlyAddedTableViewController)initWithIdentifier:(id)identifier showLocalContent:(BOOL)content;
- (id)contentManager:(id)manager viewControllerForItem:(id)item;
- (id)textForHeaderViewInContentManager:(id)manager;
- (void)viewDidLoad;
@end

@implementation MCDRecentlyAddedTableViewController

- (MCDRecentlyAddedTableViewController)initWithIdentifier:(id)identifier showLocalContent:(BOOL)content
{
  contentCopy = content;
  identifierCopy = identifier;
  v7 = objc_opt_new();
  v10.receiver = self;
  v10.super_class = MCDRecentlyAddedTableViewController;
  v8 = [(MCDLibraryTableViewController *)&v10 initWithIdentifier:identifierCopy showLocalContent:contentCopy dataSource:v7];

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
  contentManager = [(MCDLibraryTableViewController *)self contentManager];
  [contentManager setTableCellConfigurationBlock:&stru_101098838];
}

- (id)contentManager:(id)manager viewControllerForItem:(id)item
{
  itemCopy = item;
  album = [itemCopy album];
  if (album && (v7 = album, [itemCopy album], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "orphanMusicVideo"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v7, !v9))
  {
    v15 = [_TtC5Music27MCDItemDetailViewController alloc];
    album2 = [itemCopy album];
    v13 = [(MCDItemDetailViewController *)v15 initWithAlbum:album2 onlyDownloaded:[(MCDLibraryTableViewController *)self showLocalContent] preferCatalog:0];
  }

  else
  {
    playlist = [itemCopy playlist];

    if (!playlist)
    {
      v14 = 0;
      goto LABEL_8;
    }

    v11 = [_TtC5Music27MCDItemDetailViewController alloc];
    album2 = [itemCopy playlist];
    v13 = [(MCDItemDetailViewController *)v11 initWithPlaylist:album2 onlyDownloaded:[(MCDLibraryTableViewController *)self showLocalContent] preferCatalog:0];
  }

  v14 = v13;

LABEL_8:

  return v14;
}

- (BOOL)contentManager:(id)manager canDrillIntoItem:(id)item
{
  itemCopy = item;
  album = [itemCopy album];
  orphanMusicVideo = [album orphanMusicVideo];

  if (orphanMusicVideo)
  {
    v7 = 0;
  }

  else
  {
    album2 = [itemCopy album];
    if (album2)
    {
      v7 = 1;
    }

    else
    {
      playlist = [itemCopy playlist];
      v7 = playlist != 0;
    }
  }

  return v7;
}

- (id)textForHeaderViewInContentManager:(id)manager
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