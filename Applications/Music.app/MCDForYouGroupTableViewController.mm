@interface MCDForYouGroupTableViewController
- (MCDForYouGroupTableViewController)initWithRecommendationGroup:(id)group;
- (MCDForYouGroupTableViewController)initWithRecommendationItem:(id)item;
- (id)_contentManager;
- (id)contentManager:(id)manager viewControllerForItem:(id)item indexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation MCDForYouGroupTableViewController

- (MCDForYouGroupTableViewController)initWithRecommendationGroup:(id)group
{
  groupCopy = group;
  v12.receiver = self;
  v12.super_class = MCDForYouGroupTableViewController;
  v6 = [(MCDFuseTableViewController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recommendation, group);
    if ([groupCopy groupType] == 4)
    {
      v8 = +[MusicCarPlayApplicationCapabilitiesController sharedController];
      userSubscriptionState = [v8 userSubscriptionState];

      if (userSubscriptionState == 3)
      {
        v10 = @"play_it_again";
      }

      else
      {
        v10 = @"recently_played";
      }
    }

    else
    {
      v10 = @"grouping";
    }

    [(MCDForYouGroupTableViewController *)v7 setPlayActivityFeatureName:v10];
  }

  return v7;
}

- (MCDForYouGroupTableViewController)initWithRecommendationItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = MCDForYouGroupTableViewController;
  v6 = [(MCDFuseTableViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recommendation, item);
    [(MCDForYouGroupTableViewController *)v7 setPlayActivityFeatureName:@"grouping"];
  }

  return v7;
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = MCDForYouGroupTableViewController;
  [(MCDFuseTableViewController *)&v22 viewDidLoad];
  recommendation = [(MCDForYouGroupTableViewController *)self recommendation];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  recommendation2 = [(MCDForYouGroupTableViewController *)self recommendation];
  if (isKindOfClass)
  {
    recommendation3 = 0;
  }

  else
  {
    objc_opt_class();
    v7 = objc_opt_isKindOfClass();

    if (v7)
    {
      recommendation3 = [(MCDForYouGroupTableViewController *)self recommendation];
    }

    else
    {
      recommendation3 = 0;
    }

    recommendation2 = 0;
  }

  v8 = [recommendation2 groupType] == 4;
  title = [recommendation2 title];
  v10 = title;
  if (v8)
  {
    if (!title)
    {
      title2 = [recommendation3 title];
      if (title2)
      {
        [(MCDForYouGroupTableViewController *)self setTitle:title2];
      }

      else
      {
        v13 = +[NSBundle mainBundle];
        v14 = [v13 localizedStringForKey:@"Recently Played" value:&stru_101107168 table:0];
        [(MCDForYouGroupTableViewController *)self setTitle:v14];
      }

      goto LABEL_17;
    }

    goto LABEL_9;
  }

  if (title)
  {
LABEL_9:
    [(MCDForYouGroupTableViewController *)self setTitle:title];
    goto LABEL_17;
  }

  title3 = [recommendation3 title];
  [(MCDForYouGroupTableViewController *)self setTitle:title3];

LABEL_17:
  v15 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    title4 = [(MCDForYouGroupTableViewController *)self title];
    *buf = 138412290;
    v24 = title4;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Loading For You group view, title: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  objc_copyWeak(&v21, buf);
  v17 = recommendation2;
  v20 = v17;
  v18 = [(MCDFuseTableViewController *)self contentManager:_NSConcreteStackBlock];
  [v18 setTableCellConfigurationBlock:&v19];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
}

- (id)_contentManager
{
  recommendation = [(MCDForYouGroupTableViewController *)self recommendation];
  v4 = objc_opt_new();
  [v4 appendSection:recommendation];
  v5 = [MCDForYouGroupContentManager alloc];
  v6 = [[MCDForYouDataSource alloc] initWithRecommendationGroup:recommendation];
  playbackManager = [(MCDFuseTableViewController *)self playbackManager];
  traitCollection = [(MCDForYouGroupTableViewController *)self traitCollection];
  shouldLimitMusicLists = [traitCollection shouldLimitMusicLists];
  v10 = [v4 copy];
  v11 = [(MCDForYouContentManager *)v5 initWithDataSource:v6 delegate:self viewController:self playbackManager:playbackManager limitedUI:shouldLimitMusicLists contentResults:v10];

  return v11;
}

- (id)contentManager:(id)manager viewControllerForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  if ([itemCopy itemType] == 4)
  {
    v6 = [MCDForYouGroupTableViewController alloc];
    subgroup = [itemCopy subgroup];
    v8 = [(MCDForYouGroupTableViewController *)v6 initWithRecommendationGroup:subgroup];
    goto LABEL_10;
  }

  itemType = [itemCopy itemType];
  if (itemType == 2)
  {
    v13 = [_TtC5Music27MCDItemDetailViewController alloc];
    playlist = [itemCopy playlist];
    v12 = [(MCDItemDetailViewController *)v13 initWithPlaylist:playlist onlyDownloaded:0 preferCatalog:1];
  }

  else
  {
    if (itemType != 1)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v10 = [_TtC5Music27MCDItemDetailViewController alloc];
    playlist = [itemCopy album];
    v12 = [(MCDItemDetailViewController *)v10 initWithAlbum:playlist onlyDownloaded:0 preferCatalog:1];
  }

  v8 = v12;

LABEL_9:
  subgroup = [itemCopy identifiers];
  personalizedStore = [subgroup personalizedStore];
  recommendationID = [personalizedStore recommendationID];
  v16 = [recommendationID dataUsingEncoding:4];
  [(MCDForYouGroupTableViewController *)v8 setPlayActivityForwardedRecommendationData:v16];

LABEL_10:

  return v8;
}

@end