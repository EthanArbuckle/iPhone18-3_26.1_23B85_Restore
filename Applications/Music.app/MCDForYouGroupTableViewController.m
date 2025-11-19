@interface MCDForYouGroupTableViewController
- (MCDForYouGroupTableViewController)initWithRecommendationGroup:(id)a3;
- (MCDForYouGroupTableViewController)initWithRecommendationItem:(id)a3;
- (id)_contentManager;
- (id)contentManager:(id)a3 viewControllerForItem:(id)a4 indexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation MCDForYouGroupTableViewController

- (MCDForYouGroupTableViewController)initWithRecommendationGroup:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = MCDForYouGroupTableViewController;
  v6 = [(MCDFuseTableViewController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recommendation, a3);
    if ([v5 groupType] == 4)
    {
      v8 = +[MusicCarPlayApplicationCapabilitiesController sharedController];
      v9 = [v8 userSubscriptionState];

      if (v9 == 3)
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

- (MCDForYouGroupTableViewController)initWithRecommendationItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MCDForYouGroupTableViewController;
  v6 = [(MCDFuseTableViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recommendation, a3);
    [(MCDForYouGroupTableViewController *)v7 setPlayActivityFeatureName:@"grouping"];
  }

  return v7;
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = MCDForYouGroupTableViewController;
  [(MCDFuseTableViewController *)&v22 viewDidLoad];
  v3 = [(MCDForYouGroupTableViewController *)self recommendation];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [(MCDForYouGroupTableViewController *)self recommendation];
  if (isKindOfClass)
  {
    v6 = 0;
  }

  else
  {
    objc_opt_class();
    v7 = objc_opt_isKindOfClass();

    if (v7)
    {
      v6 = [(MCDForYouGroupTableViewController *)self recommendation];
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
  }

  v8 = [v5 groupType] == 4;
  v9 = [v5 title];
  v10 = v9;
  if (v8)
  {
    if (!v9)
    {
      v11 = [v6 title];
      if (v11)
      {
        [(MCDForYouGroupTableViewController *)self setTitle:v11];
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

  if (v9)
  {
LABEL_9:
    [(MCDForYouGroupTableViewController *)self setTitle:v9];
    goto LABEL_17;
  }

  v12 = [v6 title];
  [(MCDForYouGroupTableViewController *)self setTitle:v12];

LABEL_17:
  v15 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(MCDForYouGroupTableViewController *)self title];
    *buf = 138412290;
    v24 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Loading For You group view, title: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  objc_copyWeak(&v21, buf);
  v17 = v5;
  v20 = v17;
  v18 = [(MCDFuseTableViewController *)self contentManager:_NSConcreteStackBlock];
  [v18 setTableCellConfigurationBlock:&v19];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
}

- (id)_contentManager
{
  v3 = [(MCDForYouGroupTableViewController *)self recommendation];
  v4 = objc_opt_new();
  [v4 appendSection:v3];
  v5 = [MCDForYouGroupContentManager alloc];
  v6 = [[MCDForYouDataSource alloc] initWithRecommendationGroup:v3];
  v7 = [(MCDFuseTableViewController *)self playbackManager];
  v8 = [(MCDForYouGroupTableViewController *)self traitCollection];
  v9 = [v8 shouldLimitMusicLists];
  v10 = [v4 copy];
  v11 = [(MCDForYouContentManager *)v5 initWithDataSource:v6 delegate:self viewController:self playbackManager:v7 limitedUI:v9 contentResults:v10];

  return v11;
}

- (id)contentManager:(id)a3 viewControllerForItem:(id)a4 indexPath:(id)a5
{
  v5 = a4;
  if ([v5 itemType] == 4)
  {
    v6 = [MCDForYouGroupTableViewController alloc];
    v7 = [v5 subgroup];
    v8 = [(MCDForYouGroupTableViewController *)v6 initWithRecommendationGroup:v7];
    goto LABEL_10;
  }

  v9 = [v5 itemType];
  if (v9 == 2)
  {
    v13 = [_TtC5Music27MCDItemDetailViewController alloc];
    v11 = [v5 playlist];
    v12 = [(MCDItemDetailViewController *)v13 initWithPlaylist:v11 onlyDownloaded:0 preferCatalog:1];
  }

  else
  {
    if (v9 != 1)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v10 = [_TtC5Music27MCDItemDetailViewController alloc];
    v11 = [v5 album];
    v12 = [(MCDItemDetailViewController *)v10 initWithAlbum:v11 onlyDownloaded:0 preferCatalog:1];
  }

  v8 = v12;

LABEL_9:
  v7 = [v5 identifiers];
  v14 = [v7 personalizedStore];
  v15 = [v14 recommendationID];
  v16 = [v15 dataUsingEncoding:4];
  [(MCDForYouGroupTableViewController *)v8 setPlayActivityForwardedRecommendationData:v16];

LABEL_10:

  return v8;
}

@end