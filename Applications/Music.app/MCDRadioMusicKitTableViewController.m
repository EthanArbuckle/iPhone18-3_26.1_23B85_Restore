@interface MCDRadioMusicKitTableViewController
- (MCDRadioMusicKitTableViewController)init;
- (id)_contentManager;
- (id)contentManager:(id)a3 viewControllerForItem:(id)a4 indexPath:(id)a5;
- (void)playbackManagerShouldShowNowPlaying:(id)a3;
- (void)viewDidLoad;
@end

@implementation MCDRadioMusicKitTableViewController

- (MCDRadioMusicKitTableViewController)init
{
  v6.receiver = self;
  v6.super_class = MCDRadioMusicKitTableViewController;
  v2 = [(MCDFuseTableViewController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(MCDRadioMusicKitTableViewController *)v2 setPlayActivityFeatureName:@"radio"];
    v4 = objc_opt_new();
    [(MCDRadioMusicKitTableViewController *)v3 setRecentlyPlayedObserver:v4];
  }

  return v3;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = MCDRadioMusicKitTableViewController;
  [(MCDContentItemTableViewController *)&v12 viewDidLoad];
  objc_initWeak(&location, self);
  v3 = [(MCDRadioMusicKitTableViewController *)self recentlyPlayedObserver];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_1000DBBD0;
  v9 = &unk_101097D20;
  objc_copyWeak(&v10, &location);
  [v3 registerHandler:&v6];

  v4 = [(MCDRadioMusicKitTableViewController *)self tableView:v6];
  [v4 setSeparatorStyle:1];

  v5 = [(MCDFuseTableViewController *)self contentManager];
  [v5 setTableCellConfigurationBlock:&stru_101097D60];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (id)contentManager:(id)a3 viewControllerForItem:(id)a4 indexPath:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 hasLoadedValueForKey:MPModelStoreBrowseSectionRelationshipRadioStation])
  {
    v10 = 0;
    goto LABEL_31;
  }

  v11 = [v8 loadAdditionalContentURL];
  if (v11)
  {
  }

  else if ([v8 sectionType] == 8 || objc_msgSend(v8, "sectionType") == 11)
  {
    v10 = objc_opt_new();
    v13 = objc_opt_new();
    v22 = [v7 contentResults];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v25 = [v7 lastReceivedResponse];
      v24 = [v25 results];
    }

    v26 = [v24 numberOfSections];
    if (v26 <= [v9 section])
    {
      v28 = MCDMusicGeneralLogging();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_100DEEB3C(v9, v24, v28);
      }
    }

    else
    {
      v27 = [v24 sectionAtIndex:{objc_msgSend(v9, "section")}];
      [v13 appendSection:v27];

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v28 = [v24 itemsInSectionAtIndex:{objc_msgSend(v9, "section", 0)}];
      v29 = [v28 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v37;
        do
        {
          for (i = 0; i != v30; i = i + 1)
          {
            if (*v37 != v31)
            {
              objc_enumerationMutation(v28);
            }

            [v13 appendItem:*(*(&v36 + 1) + 8 * i)];
          }

          v30 = [v28 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v30);
      }
    }

    [(MCDContentItemMusicKitTableViewController *)v10 setContentResults:v13];
    goto LABEL_29;
  }

  v10 = [[MCDContentItemMusicKitTableViewController alloc] initWithSectionItem:v8 radioDomain:1];
  v12 = [v8 loadAdditionalContentURL];

  if (!v12)
  {
    v13 = objc_opt_new();
    [v13 appendSection:v8];
    v14 = [v7 contentResults];

    if (v14)
    {
      v15 = [v7 contentResults];
      v16 = [v15 firstSection];

      v17 = [v7 contentResults];
      v18 = v17;
      if (v16 == v8)
      {
        v20 = [v17 itemsInSectionAtIndex:{objc_msgSend(v9, "row")}];
        [v13 appendItems:v20];
      }

      else
      {
        v19 = [v17 itemsInSectionAtIndex:0];

        v20 = [v19 objectAtIndexedSubscript:{objc_msgSend(v9, "row")}];
        v21 = [v20 itemsInSectionAtIndex:0];
        [v13 appendItems:v21];

        v18 = v19;
      }
    }

    else
    {
      v18 = [v7 lastReceivedResponse];
      v20 = [v18 results];
      v33 = [v20 itemsInSectionAtIndex:{objc_msgSend(v9, "section")}];
      [v13 appendItems:v33];
    }

    [(MCDContentItemMusicKitTableViewController *)v10 setContentResults:v13];
LABEL_29:
  }

  v34 = [v8 title];
  [(MCDContentItemMusicKitTableViewController *)v10 setTitle:v34];

LABEL_31:

  return v10;
}

- (void)playbackManagerShouldShowNowPlaying:(id)a3
{
  v4 = [(MCDFuseTableViewController *)self contentManager];
  v5 = [v4 shouldPushNowPlayingOnNextPlaybackManagerCall];

  if (v5)
  {
    v6 = [(MCDRadioMusicKitTableViewController *)self navigationController];
    [v6 MCD_pushNowPlayingViewControllerAnimated:1 fromViewController:self];
  }

  v7 = [(MCDFuseTableViewController *)self contentManager];
  [v7 clearActivityIndicatorForSelectedIndexPath];
}

- (id)_contentManager
{
  v3 = [MCDRadioMusicKitContentManager alloc];
  v4 = objc_opt_new();
  v5 = [(MCDFuseTableViewController *)self playbackManager];
  v6 = [(MCDRadioMusicKitTableViewController *)self traitCollection];
  v7 = [v6 shouldLimitMusicLists];
  v8 = [(MCDContentItemTableViewController *)self contentResults];
  v9 = [(MCDFuseContentManager *)v3 initWithDataSource:v4 delegate:self viewController:self playbackManager:v5 limitedUI:v7 contentResults:v8];

  return v9;
}

@end