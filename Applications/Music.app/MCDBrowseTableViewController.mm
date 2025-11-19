@interface MCDBrowseTableViewController
- (MCDBrowseTableViewController)init;
- (id)_contentManager;
- (id)contentManager:(id)a3 viewControllerForItem:(id)a4 indexPath:(id)a5;
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
  v3 = [(MCDBrowseTableViewController *)self tableView];
  [v3 setSeparatorStyle:0];

  v4 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Loading view for Browse", v6, 2u);
  }

  v5 = [(MCDFuseTableViewController *)self contentManager];
  [v5 setTableCellConfigurationBlock:&stru_101097E10];
}

- (id)_contentManager
{
  v3 = [MCDBrowseContentManager alloc];
  v4 = objc_opt_new();
  v5 = [(MCDFuseTableViewController *)self playbackManager];
  v6 = [(MCDBrowseTableViewController *)self traitCollection];
  v7 = [v6 shouldLimitMusicLists];
  v8 = [(MCDBrowseTableViewController *)self contentResults];
  v9 = [(MCDFuseContentManager *)v3 initWithDataSource:v4 delegate:self viewController:self playbackManager:v5 limitedUI:v7 contentResults:v8];

  return v9;
}

- (id)contentManager:(id)a3 viewControllerForItem:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 sectionType];
  v12 = (v11 - 1);
  if ((v11 - 1) < 3)
  {
    v13 = 1u >> ((v11 - 1) & 7);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v9 loadAdditionalContentURL];
  if (v14)
  {

    goto LABEL_12;
  }

  if ([v9 sectionType] != 8)
  {
LABEL_12:
    v16 = [[MCDContentItemTableViewController alloc] initWithSectionItem:v9 showRankedList:v12 < 3 queueListForPlayback:v13 radioDomain:0];
    v20 = [v9 loadAdditionalContentURL];

    if (v20)
    {
      v15 = 0;
    }

    else
    {
      v21 = objc_opt_new();
      [v21 appendSection:v9];
      v22 = [v8 contentResults];

      if (v22)
      {
        v23 = [v8 contentResults];
        v24 = [v23 firstSection];

        v25 = [v8 contentResults];
        v26 = [v25 itemsInSectionAtIndex:{objc_msgSend(v10, "row")}];
        if (v24 == v9)
        {
          [v21 appendItems:v26];
          v27 = v26;
        }

        else
        {

          v27 = [v26 objectAtIndexedSubscript:{objc_msgSend(v10, "row")}];
          v28 = [v27 itemsInSectionAtIndex:0];
          [v21 appendItems:v28];

          v25 = v26;
        }
      }

      else
      {
        v25 = [v8 lastReceivedResponse];
        v27 = [v25 results];
        v29 = [v27 itemsInSectionAtIndex:{objc_msgSend(v10, "section")}];
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
  [(MCDContentItemTableViewController *)v16 appendSection:v9];
  v17 = [v8 contentResults];
  v18 = v17;
  if (!v17)
  {
    v5 = [v8 lastReceivedResponse];
    v18 = [v5 results];
  }

  v19 = [v18 itemsInSectionAtIndex:{objc_msgSend(v10, "row")}];
  [(MCDContentItemTableViewController *)v16 appendItems:v19];

  if (!v17)
  {
  }

  [v15 setContentResults:v16];
LABEL_20:

  v30 = [v9 title];
  [v15 setTitle:v30];

  return v15;
}

@end