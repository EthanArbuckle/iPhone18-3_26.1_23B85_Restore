@interface MCDContentItemTableViewController
- (MCDContentItemTableViewController)initWithSectionItem:(id)item showRankedList:(BOOL)list queueListForPlayback:(BOOL)playback radioDomain:(BOOL)domain musicKit:(BOOL)kit;
- (id)_contentManager;
- (id)contentManager:(id)manager viewControllerForItem:(id)item indexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation MCDContentItemTableViewController

- (MCDContentItemTableViewController)initWithSectionItem:(id)item showRankedList:(BOOL)list queueListForPlayback:(BOOL)playback radioDomain:(BOOL)domain musicKit:(BOOL)kit
{
  itemCopy = item;
  v19.receiver = self;
  v19.super_class = MCDContentItemTableViewController;
  v14 = [(MCDFuseTableViewController *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_parentSection, item);
    v15->_displayRankings = list;
    v15->_customListForPlayback = playback;
    v15->_useRadioDomain = domain;
    v15->_useMusicKit = kit;
    [(MCDContentItemTableViewController *)v15 setPlayActivityFeatureName:@"grouping"];
    title = [itemCopy title];
    if (title)
    {
      [(MCDContentItemTableViewController *)v15 setTitle:title];
    }

    else
    {
      title2 = [(MCDContentItemTableViewController *)v15 title];
      [(MCDContentItemTableViewController *)v15 setTitle:title2];
    }
  }

  return v15;
}

- (id)_contentManager
{
  useRadioDomain = [(MCDContentItemTableViewController *)self useRadioDomain];
  v4 = off_10108B708;
  if (!useRadioDomain)
  {
    v4 = off_10108B700;
  }

  v5 = objc_alloc(*v4);
  parentSection = [(MCDContentItemTableViewController *)self parentSection];
  v7 = [v5 initWithParentSection:parentSection];

  v8 = [MCDBrowseItemsContentManager alloc];
  playbackManager = [(MCDFuseTableViewController *)self playbackManager];
  traitCollection = [(MCDContentItemTableViewController *)self traitCollection];
  shouldLimitMusicLists = [traitCollection shouldLimitMusicLists];
  contentResults = [(MCDContentItemTableViewController *)self contentResults];
  v13 = [(MCDFuseContentManager *)v8 initWithDataSource:v7 delegate:self viewController:self playbackManager:playbackManager limitedUI:shouldLimitMusicLists contentResults:contentResults];

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

- (id)contentManager:(id)manager viewControllerForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  identifiers = [itemCopy identifiers];
  personalizedStore = [identifiers personalizedStore];
  recommendationID = [personalizedStore recommendationID];
  v9 = [recommendationID dataUsingEncoding:4];

  itemType = [itemCopy itemType];
  if (itemType == 4)
  {
    v15 = [_TtC5Music27MCDItemDetailViewController alloc];
    playlist = [itemCopy playlist];
    v13 = [(MCDItemDetailViewController *)v15 initWithPlaylist:playlist onlyDownloaded:0 preferCatalog:1];
    goto LABEL_7;
  }

  if (itemType == 3)
  {
    v14 = [MCDCuratedPlaylistsTableViewController alloc];
    playlist = [itemCopy curator];
    v13 = [(MCDCuratedPlaylistsTableViewController *)v14 initWithCurator:playlist];
    goto LABEL_7;
  }

  if (itemType == 1)
  {
    v11 = [_TtC5Music27MCDItemDetailViewController alloc];
    playlist = [itemCopy album];
    v13 = [(MCDItemDetailViewController *)v11 initWithAlbum:playlist onlyDownloaded:0 preferCatalog:1];
LABEL_7:
    v16 = v13;

    goto LABEL_9;
  }

  v16 = 0;
LABEL_9:
  identifiers2 = [itemCopy identifiers];
  personalizedStore2 = [identifiers2 personalizedStore];
  recommendationID2 = [personalizedStore2 recommendationID];
  v20 = [recommendationID2 dataUsingEncoding:4];
  [(MCDItemDetailViewController *)v16 setPlayActivityForwardedRecommendationData:v20];

  return v16;
}

@end