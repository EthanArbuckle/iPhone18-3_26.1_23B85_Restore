@interface MCDBrowseTableViewController
- (MCDBrowseTableViewController)init;
- (id)_contentManager;
- (id)contentManager:(id)manager viewControllerForItem:(id)item indexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation MCDBrowseTableViewController

- (MCDBrowseTableViewController)init
{
  v5.receiver = self;
  v5.super_class = MCDBrowseTableViewController;
  v2 = [(MCDFuseTableViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MCDBrowseTableViewController *)v2 setPlayActivityFeatureName:@"new"];
  }

  return v3;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = MCDBrowseTableViewController;
  [(MCDFuseTableViewController *)&v7 viewDidLoad];
  tableView = [(MCDBrowseTableViewController *)self tableView];
  [tableView setSeparatorStyle:0];

  v4 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Loading view for Browse", v6, 2u);
  }

  contentManager = [(MCDFuseTableViewController *)self contentManager];
  [contentManager setTableCellConfigurationBlock:&stru_101097E10];
}

- (id)_contentManager
{
  v3 = [MCDBrowseContentManager alloc];
  v4 = objc_opt_new();
  playbackManager = [(MCDFuseTableViewController *)self playbackManager];
  traitCollection = [(MCDBrowseTableViewController *)self traitCollection];
  shouldLimitMusicLists = [traitCollection shouldLimitMusicLists];
  contentResults = [(MCDBrowseTableViewController *)self contentResults];
  v9 = [(MCDFuseContentManager *)v3 initWithDataSource:v4 delegate:self viewController:self playbackManager:playbackManager limitedUI:shouldLimitMusicLists contentResults:contentResults];

  return v9;
}

- (id)contentManager:(id)manager viewControllerForItem:(id)item indexPath:(id)path
{
  managerCopy = manager;
  itemCopy = item;
  pathCopy = path;
  sectionType = [itemCopy sectionType];
  v12 = (sectionType - 1);
  if ((sectionType - 1) < 3)
  {
    v13 = 1u >> ((sectionType - 1) & 7);
  }

  else
  {
    v13 = 0;
  }

  loadAdditionalContentURL = [itemCopy loadAdditionalContentURL];
  if (loadAdditionalContentURL)
  {

    goto LABEL_12;
  }

  if ([itemCopy sectionType] != 8)
  {
LABEL_12:
    v16 = [[MCDContentItemTableViewController alloc] initWithSectionItem:itemCopy showRankedList:v12 < 3 queueListForPlayback:v13 radioDomain:0];
    loadAdditionalContentURL2 = [itemCopy loadAdditionalContentURL];

    if (loadAdditionalContentURL2)
    {
      v15 = 0;
    }

    else
    {
      v21 = objc_opt_new();
      [v21 appendSection:itemCopy];
      contentResults = [managerCopy contentResults];

      if (contentResults)
      {
        contentResults2 = [managerCopy contentResults];
        firstSection = [contentResults2 firstSection];

        contentResults3 = [managerCopy contentResults];
        v26 = [contentResults3 itemsInSectionAtIndex:{objc_msgSend(pathCopy, "row")}];
        if (firstSection == itemCopy)
        {
          [v21 appendItems:v26];
          results = v26;
        }

        else
        {

          results = [v26 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
          v28 = [results itemsInSectionAtIndex:0];
          [v21 appendItems:v28];

          contentResults3 = v26;
        }
      }

      else
      {
        contentResults3 = [managerCopy lastReceivedResponse];
        results = [contentResults3 results];
        v29 = [results itemsInSectionAtIndex:{objc_msgSend(pathCopy, "section")}];
        [v21 appendItems:v29];
      }

      [(MCDContentItemTableViewController *)v16 setContentResults:v21];
      v16 = v16;

      v15 = v16;
    }

    goto LABEL_20;
  }

  v15 = objc_opt_new();
  v16 = objc_opt_new();
  [(MCDContentItemTableViewController *)v16 appendSection:itemCopy];
  contentResults4 = [managerCopy contentResults];
  results2 = contentResults4;
  if (!contentResults4)
  {
    lastReceivedResponse = [managerCopy lastReceivedResponse];
    results2 = [lastReceivedResponse results];
  }

  v19 = [results2 itemsInSectionAtIndex:{objc_msgSend(pathCopy, "row")}];
  [(MCDContentItemTableViewController *)v16 appendItems:v19];

  if (!contentResults4)
  {
  }

  [v15 setContentResults:v16];
LABEL_20:

  title = [itemCopy title];
  [v15 setTitle:title];

  return v15;
}

@end