@interface MCDContentItemTableViewController
- (MCDContentItemTableViewController)initWithSectionItem:(id)a3 showRankedList:(BOOL)a4 queueListForPlayback:(BOOL)a5 radioDomain:(BOOL)a6 musicKit:(BOOL)a7;
- (id)_contentManager;
- (id)contentManager:(id)a3 viewControllerForItem:(id)a4 indexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation MCDContentItemTableViewController

- (MCDContentItemTableViewController)initWithSectionItem:(id)a3 showRankedList:(BOOL)a4 queueListForPlayback:(BOOL)a5 radioDomain:(BOOL)a6 musicKit:(BOOL)a7
{
  v13 = a3;
  v19.receiver = self;
  v19.super_class = MCDContentItemTableViewController;
  v14 = [(MCDFuseTableViewController *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_parentSection, a3);
    v15->_displayRankings = a4;
    v15->_customListForPlayback = a5;
    v15->_useRadioDomain = a6;
    v15->_useMusicKit = a7;
    [(MCDContentItemTableViewController *)v15 setPlayActivityFeatureName:@"grouping"];
    v16 = [v13 title];
    if (v16)
    {
      [(MCDContentItemTableViewController *)v15 setTitle:v16];
    }

    else
    {
      v17 = [(MCDContentItemTableViewController *)v15 title];
      [(MCDContentItemTableViewController *)v15 setTitle:v17];
    }
  }

  return v15;
}

- (id)_contentManager
{
  v3 = [(MCDContentItemTableViewController *)self useRadioDomain];
  v4 = off_10108B708;
  if (!v3)
  {
    v4 = off_10108B700;
  }

  v5 = objc_alloc(*v4);
  v6 = [(MCDContentItemTableViewController *)self parentSection];
  v7 = [v5 initWithParentSection:v6];

  v8 = [MCDBrowseItemsContentManager alloc];
  v9 = [(MCDFuseTableViewController *)self playbackManager];
  v10 = [(MCDContentItemTableViewController *)self traitCollection];
  v11 = [v10 shouldLimitMusicLists];
  v12 = [(MCDContentItemTableViewController *)self contentResults];
  v13 = [(MCDFuseContentManager *)v8 initWithDataSource:v7 delegate:self viewController:self playbackManager:v9 limitedUI:v11 contentResults:v12];

  return v13;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = MCDContentItemTableViewController;
  [(MCDFuseTableViewController *)&v7 viewDidLoad];
  objc_initWeak(&location, self);
  objc_copyWeak(&v5, &location);
  v3 = [(MCDFuseTableViewController *)self contentManager:_NSConcreteStackBlock];
  [v3 setTableCellConfigurationBlock:&v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (id)contentManager:(id)a3 viewControllerForItem:(id)a4 indexPath:(id)a5
{
  v5 = a4;
  v6 = [v5 identifiers];
  v7 = [v6 personalizedStore];
  v8 = [v7 recommendationID];
  v9 = [v8 dataUsingEncoding:4];

  v10 = [v5 itemType];
  if (v10 == 4)
  {
    v15 = [_TtC5Music27MCDItemDetailViewController alloc];
    v12 = [v5 playlist];
    v13 = [(MCDItemDetailViewController *)v15 initWithPlaylist:v12 onlyDownloaded:0 preferCatalog:1];
    goto LABEL_7;
  }

  if (v10 == 3)
  {
    v14 = [MCDCuratedPlaylistsTableViewController alloc];
    v12 = [v5 curator];
    v13 = [(MCDCuratedPlaylistsTableViewController *)v14 initWithCurator:v12];
    goto LABEL_7;
  }

  if (v10 == 1)
  {
    v11 = [_TtC5Music27MCDItemDetailViewController alloc];
    v12 = [v5 album];
    v13 = [(MCDItemDetailViewController *)v11 initWithAlbum:v12 onlyDownloaded:0 preferCatalog:1];
LABEL_7:
    v16 = v13;

    goto LABEL_9;
  }

  v16 = 0;
LABEL_9:
  v17 = [v5 identifiers];
  v18 = [v17 personalizedStore];
  v19 = [v18 recommendationID];
  v20 = [v19 dataUsingEncoding:4];
  [(MCDItemDetailViewController *)v16 setPlayActivityForwardedRecommendationData:v20];

  return v16;
}

@end