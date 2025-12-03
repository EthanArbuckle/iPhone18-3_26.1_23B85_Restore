@interface MCDRadioMusicKitTableViewController
- (MCDRadioMusicKitTableViewController)init;
- (id)_contentManager;
- (id)contentManager:(id)manager viewControllerForItem:(id)item indexPath:(id)path;
- (void)playbackManagerShouldShowNowPlaying:(id)playing;
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
  recentlyPlayedObserver = [(MCDRadioMusicKitTableViewController *)self recentlyPlayedObserver];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_1000DBBD0;
  v9 = &unk_101097D20;
  objc_copyWeak(&v10, &location);
  [recentlyPlayedObserver registerHandler:&v6];

  v4 = [(MCDRadioMusicKitTableViewController *)self tableView:v6];
  [v4 setSeparatorStyle:1];

  contentManager = [(MCDFuseTableViewController *)self contentManager];
  [contentManager setTableCellConfigurationBlock:&stru_101097D60];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (id)contentManager:(id)manager viewControllerForItem:(id)item indexPath:(id)path
{
  managerCopy = manager;
  itemCopy = item;
  pathCopy = path;
  if ([itemCopy hasLoadedValueForKey:MPModelStoreBrowseSectionRelationshipRadioStation])
  {
    v10 = 0;
    goto LABEL_31;
  }

  loadAdditionalContentURL = [itemCopy loadAdditionalContentURL];
  if (loadAdditionalContentURL)
  {
  }

  else if ([itemCopy sectionType] == 8 || objc_msgSend(itemCopy, "sectionType") == 11)
  {
    v10 = objc_opt_new();
    v13 = objc_opt_new();
    contentResults = [managerCopy contentResults];
    v23 = contentResults;
    if (contentResults)
    {
      results = contentResults;
    }

    else
    {
      lastReceivedResponse = [managerCopy lastReceivedResponse];
      results = [lastReceivedResponse results];
    }

    numberOfSections = [results numberOfSections];
    if (numberOfSections <= [pathCopy section])
    {
      v28 = MCDMusicGeneralLogging();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_100DEEB3C(pathCopy, results, v28);
      }
    }

    else
    {
      v27 = [results sectionAtIndex:{objc_msgSend(pathCopy, "section")}];
      [v13 appendSection:v27];

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v28 = [results itemsInSectionAtIndex:{objc_msgSend(pathCopy, "section", 0)}];
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

  v10 = [[MCDContentItemMusicKitTableViewController alloc] initWithSectionItem:itemCopy radioDomain:1];
  loadAdditionalContentURL2 = [itemCopy loadAdditionalContentURL];

  if (!loadAdditionalContentURL2)
  {
    v13 = objc_opt_new();
    [v13 appendSection:itemCopy];
    contentResults2 = [managerCopy contentResults];

    if (contentResults2)
    {
      contentResults3 = [managerCopy contentResults];
      firstSection = [contentResults3 firstSection];

      contentResults4 = [managerCopy contentResults];
      lastReceivedResponse2 = contentResults4;
      if (firstSection == itemCopy)
      {
        results2 = [contentResults4 itemsInSectionAtIndex:{objc_msgSend(pathCopy, "row")}];
        [v13 appendItems:results2];
      }

      else
      {
        v19 = [contentResults4 itemsInSectionAtIndex:0];

        results2 = [v19 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
        v21 = [results2 itemsInSectionAtIndex:0];
        [v13 appendItems:v21];

        lastReceivedResponse2 = v19;
      }
    }

    else
    {
      lastReceivedResponse2 = [managerCopy lastReceivedResponse];
      results2 = [lastReceivedResponse2 results];
      v33 = [results2 itemsInSectionAtIndex:{objc_msgSend(pathCopy, "section")}];
      [v13 appendItems:v33];
    }

    [(MCDContentItemMusicKitTableViewController *)v10 setContentResults:v13];
LABEL_29:
  }

  title = [itemCopy title];
  [(MCDContentItemMusicKitTableViewController *)v10 setTitle:title];

LABEL_31:

  return v10;
}

- (void)playbackManagerShouldShowNowPlaying:(id)playing
{
  contentManager = [(MCDFuseTableViewController *)self contentManager];
  shouldPushNowPlayingOnNextPlaybackManagerCall = [contentManager shouldPushNowPlayingOnNextPlaybackManagerCall];

  if (shouldPushNowPlayingOnNextPlaybackManagerCall)
  {
    navigationController = [(MCDRadioMusicKitTableViewController *)self navigationController];
    [navigationController MCD_pushNowPlayingViewControllerAnimated:1 fromViewController:self];
  }

  contentManager2 = [(MCDFuseTableViewController *)self contentManager];
  [contentManager2 clearActivityIndicatorForSelectedIndexPath];
}

- (id)_contentManager
{
  v3 = [MCDRadioMusicKitContentManager alloc];
  v4 = objc_opt_new();
  playbackManager = [(MCDFuseTableViewController *)self playbackManager];
  traitCollection = [(MCDRadioMusicKitTableViewController *)self traitCollection];
  shouldLimitMusicLists = [traitCollection shouldLimitMusicLists];
  contentResults = [(MCDContentItemTableViewController *)self contentResults];
  v9 = [(MCDFuseContentManager *)v3 initWithDataSource:v4 delegate:self viewController:self playbackManager:playbackManager limitedUI:shouldLimitMusicLists contentResults:contentResults];

  return v9;
}

@end