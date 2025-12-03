@interface MFMailDebugMenuController
- (MFMailDebugMenuController)initWithScene:(id)scene;
- (MFMailDebugMenuPresenter)presenter;
- (MailScene)scene;
- (id)_navBarBackgroundImage;
- (id)_noTitleSectionForButtons;
- (id)_setupBlackPearlSection;
- (id)_setupBlankCellsSection;
- (id)_setupDatabaseSection;
- (id)_setupDebugInformationsSection;
- (id)_setupExperimentsSection;
- (id)_setupGreymatterSection;
- (id)_setupMailCleanupSection;
- (id)_setupMessageDisplaySection;
- (id)_setupRemoteContentSection;
- (id)_setupSMIMESection;
- (id)_setupSearchSection;
- (id)_setupTestingSupportSection;
- (id)_setupThreadingSection;
- (id)_tableViewCellsForSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)userActivity;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_clearAllUnseenState;
- (void)_clearRestorationState;
- (void)_debugDone;
- (void)_invokeTapToRadarWithDescription:(id)description;
- (void)_recategorizeAllMail;
- (void)_refreshMailCleanup;
- (void)_resetDatabaseOnNextLaunch;
- (void)_resetGroupingLogic;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation MFMailDebugMenuController

- (MFMailDebugMenuController)initWithScene:(id)scene
{
  sceneCopy = scene;
  v30.receiver = self;
  v30.super_class = MFMailDebugMenuController;
  v4 = [(MFMailDebugMenuController *)&v30 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    [(MFMailDebugMenuController *)v4 setScene:sceneCopy];
    v24 = [[NSMutableArray alloc] initWithObjects:{&stru_100662A88, @"Search 🔍", @"Experiments", @"Threading", @"Message Display", @"Blank Cells", @"Remote Content", @"S/MIME", @"Debug Information", @"Testing Support", @"Database Support", @"Greymatter", 0}];
    if (_os_feature_enabled_impl())
    {
      [v24 addObject:@"Black Pearl"];
    }

    if (+[MUIiCloudMailCleanupService isFeatureAvailable])
    {
      [v24 addObject:@"iCloud Mail Cleanup"];
    }

    v6 = [v24 copy];
    sectionNames = v5->_sectionNames;
    v5->_sectionNames = v6;

    v8 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSArray count](v5->_sectionNames, "count")}];
    cellsBySection = v5->_cellsBySection;
    v5->_cellsBySection = v8;

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = v5->_sectionNames;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v11)
    {
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          if ([v14 isEqualToString:&stru_100662A88])
          {
            _noTitleSectionForButtons = [(MFMailDebugMenuController *)v5 _noTitleSectionForButtons];
            [(NSMutableDictionary *)v5->_cellsBySection setObject:_noTitleSectionForButtons forKeyedSubscript:&stru_100662A88];
          }

          else if ([v14 isEqualToString:@"Search 🔍"])
          {
            _noTitleSectionForButtons = [(MFMailDebugMenuController *)v5 _setupSearchSection];
            [(NSMutableDictionary *)v5->_cellsBySection setObject:_noTitleSectionForButtons forKeyedSubscript:@"Search 🔍"];
          }

          else if ([v14 isEqualToString:@"Experiments"])
          {
            _noTitleSectionForButtons = [(MFMailDebugMenuController *)v5 _setupExperimentsSection];
            [(NSMutableDictionary *)v5->_cellsBySection setObject:_noTitleSectionForButtons forKeyedSubscript:@"Experiments"];
          }

          else if ([v14 isEqualToString:@"Threading"])
          {
            _noTitleSectionForButtons = [(MFMailDebugMenuController *)v5 _setupThreadingSection];
            [(NSMutableDictionary *)v5->_cellsBySection setObject:_noTitleSectionForButtons forKeyedSubscript:@"Threading"];
          }

          else if ([v14 isEqualToString:@"Message Display"])
          {
            _noTitleSectionForButtons = [(MFMailDebugMenuController *)v5 _setupMessageDisplaySection];
            [(NSMutableDictionary *)v5->_cellsBySection setObject:_noTitleSectionForButtons forKeyedSubscript:@"Message Display"];
          }

          else if ([v14 isEqualToString:@"Blank Cells"])
          {
            _noTitleSectionForButtons = [(MFMailDebugMenuController *)v5 _setupBlankCellsSection];
            [(NSMutableDictionary *)v5->_cellsBySection setObject:_noTitleSectionForButtons forKeyedSubscript:@"Blank Cells"];
          }

          else if ([v14 isEqualToString:@"Remote Content"])
          {
            _noTitleSectionForButtons = [(MFMailDebugMenuController *)v5 _setupRemoteContentSection];
            [(NSMutableDictionary *)v5->_cellsBySection setObject:_noTitleSectionForButtons forKeyedSubscript:@"Remote Content"];
          }

          else if ([v14 isEqualToString:@"S/MIME"])
          {
            _noTitleSectionForButtons = [(MFMailDebugMenuController *)v5 _setupSMIMESection];
            [(NSMutableDictionary *)v5->_cellsBySection setObject:_noTitleSectionForButtons forKeyedSubscript:@"S/MIME"];
          }

          else if ([v14 isEqualToString:@"Debug Information"])
          {
            _noTitleSectionForButtons = [(MFMailDebugMenuController *)v5 _setupDebugInformationsSection];
            [(NSMutableDictionary *)v5->_cellsBySection setObject:_noTitleSectionForButtons forKeyedSubscript:@"Debug Information"];
          }

          else if ([v14 isEqualToString:@"Testing Support"])
          {
            _noTitleSectionForButtons = [(MFMailDebugMenuController *)v5 _setupTestingSupportSection];
            [(NSMutableDictionary *)v5->_cellsBySection setObject:_noTitleSectionForButtons forKeyedSubscript:@"Testing Support"];
          }

          else if ([v14 isEqualToString:@"Greymatter"])
          {
            _noTitleSectionForButtons = [(MFMailDebugMenuController *)v5 _setupGreymatterSection];
            [(NSMutableDictionary *)v5->_cellsBySection setObject:_noTitleSectionForButtons forKeyedSubscript:@"Greymatter"];
          }

          else if ([v14 isEqualToString:@"Black Pearl"])
          {
            _noTitleSectionForButtons = [(MFMailDebugMenuController *)v5 _setupBlackPearlSection];
            [(NSMutableDictionary *)v5->_cellsBySection setObject:_noTitleSectionForButtons forKeyedSubscript:@"Black Pearl"];
          }

          else if ([v14 isEqualToString:@"iCloud Mail Cleanup"])
          {
            _noTitleSectionForButtons = [(MFMailDebugMenuController *)v5 _setupMailCleanupSection];
            [(NSMutableDictionary *)v5->_cellsBySection setObject:_noTitleSectionForButtons forKeyedSubscript:@"iCloud Mail Cleanup"];
          }

          else
          {
            if (![v14 isEqualToString:@"Database Support"])
            {
              continue;
            }

            _noTitleSectionForButtons = [(MFMailDebugMenuController *)v5 _setupDatabaseSection];
            [(NSMutableDictionary *)v5->_cellsBySection setObject:_noTitleSectionForButtons forKeyedSubscript:@"Database Support"];
          }
        }

        v11 = [(NSArray *)v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v11);
    }

    v16 = [UITableView alloc];
    view = [(MFMailDebugMenuController *)v5 view];
    [view bounds];
    v18 = [v16 initWithFrame:1 style:?];
    tableView = v5->_tableView;
    v5->_tableView = v18;

    [(UITableView *)v5->_tableView setDataSource:v5];
    [(UITableView *)v5->_tableView setDelegate:v5];
    v20 = objc_alloc_init(UITableViewController);
    [v20 setTableView:v5->_tableView];
    [v20 setTitle:@"Debug Menu"];
    v21 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:v5 action:"_debugDone"];
    navigationItem = [v20 navigationItem];
    [navigationItem setRightBarButtonItem:v21];

    [(MFMailDebugMenuController *)v5 pushViewController:v20 animated:1];
    [(MFMailDebugMenuController *)v5 setDelegate:v5];
  }

  return v5;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = MFMailDebugMenuController;
  [(MFMailDebugMenuController *)&v13 viewDidLoad];
  navigationBar = [(MFMailDebugMenuController *)self navigationBar];
  standardAppearance = [navigationBar standardAppearance];
  [standardAppearance configureWithOpaqueBackground];

  _navBarBackgroundImage = [(MFMailDebugMenuController *)self _navBarBackgroundImage];
  navigationBar2 = [(MFMailDebugMenuController *)self navigationBar];
  standardAppearance2 = [navigationBar2 standardAppearance];
  [standardAppearance2 setBackgroundImage:_navBarBackgroundImage];

  navigationBar3 = [(MFMailDebugMenuController *)self navigationBar];
  standardAppearance3 = [navigationBar3 standardAppearance];
  [standardAppearance3 setBackgroundImageContentMode:2];

  navigationBar4 = [(MFMailDebugMenuController *)self navigationBar];
  standardAppearance4 = [navigationBar4 standardAppearance];
  navigationBar5 = [(MFMailDebugMenuController *)self navigationBar];
  [navigationBar5 setScrollEdgeAppearance:standardAppearance4];
}

- (void)_debugDone
{
  presenter = [(MFMailDebugMenuController *)self presenter];
  if (presenter)
  {
    [presenter debugMenuWantsDismissal:self];
  }

  else
  {
    [(MFMailDebugMenuController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sectionNames = [(MFMailDebugMenuController *)self sectionNames];
  v4 = [sectionNames count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(MFMailDebugMenuController *)self _tableViewCellsForSection:section];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[MFMailDebugMenuController _tableViewCellsForSection:](self, "_tableViewCellsForSection:", [pathCopy section]);
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 setDelegate:self];
  }

  return v7;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  sectionNames = [(MFMailDebugMenuController *)self sectionNames];
  v6 = [sectionNames objectAtIndexedSubscript:section];

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v6 = [viewCopy cellForRowAtIndexPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 invokeAction];
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (id)_tableViewCellsForSection:(int64_t)section
{
  sectionNames = [(MFMailDebugMenuController *)self sectionNames];
  v6 = [sectionNames objectAtIndexedSubscript:section];

  cellsBySection = [(MFMailDebugMenuController *)self cellsBySection];
  v8 = [cellsBySection objectForKeyedSubscript:v6];

  return v8;
}

- (id)_setupSearchSection
{
  v2 = [DebugButtonCell cellShowingViewControllerClass:objc_opt_class()];
  v10[0] = v2;
  v3 = [DebugSwitchCell preferenceSwitchWithTitle:@"Hide maild indexed (local) results" preference:48];
  v10[1] = v3;
  v4 = [DebugSwitchCell preferenceSwitchWithTitle:@"Hide SearchIndexer (remote) results" preference:49];
  v10[2] = v4;
  v5 = [DebugSwitchCell preferenceSwitchWithTitle:@"Disable Server-Side Search" preference:14];
  v10[3] = v5;
  v6 = [DebugSwitchCell preferenceSwitchWithTitle:@"Disable Indexing" preference:33];
  v10[4] = v6;
  v7 = [DebugSwitchCell preferenceSwitchWithTitle:@"Include Fake Instant Answer" preference:62];
  v10[5] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:6];

  return v8;
}

- (id)_setupExperimentsSection
{
  v2 = [DebugSwitchCell alloc];
  v3 = mf_defaultsKeyForFeature();
  v4 = [(DebugSwitchCell *)v2 initWithTitle:@"Forward Raw Source" defaultsKey:v3 defaultKeyValue:0 completion:&stru_100654770];

  v5 = [DebugSwitchCell preferenceSwitchWithTitle:@"Show Debug Info" preference:4, v4];
  v13[1] = v5;
  v6 = [DebugSwitchCell preferenceSwitchWithTitle:@"Show Search Relevance Info" preference:5];
  v13[2] = v6;
  v7 = [DebugSwitchCell preferenceSwitchWithTitle:@"Favorite Flag Color Mailbox" preference:6];
  v13[3] = v7;
  v8 = [DebugSwitchCell preferenceSwitchWithTitle:@"Additional Pointer Interactions" preference:7];
  v13[4] = v8;
  v9 = [DebugSwitchCell preferenceSwitchWithTitle:@"Allow Filter by Sender" preference:54];
  v13[5] = v9;
  v10 = [DebugButtonCell cellShowingViewControllerClass:objc_opt_class()];
  v13[6] = v10;
  v11 = [NSArray arrayWithObjects:v13 count:7];

  return v11;
}

- (id)_setupThreadingSection
{
  objc_initWeak(&location, self);
  v2 = [DebugSwitchCell preferenceSwitchWithTitle:@"Force In-Memory Threading" preference:2];
  v9[0] = v2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001E1540;
  v6[3] = &unk_10064C838;
  objc_copyWeak(&v7, &location);
  v3 = [DebugButtonCell cellWithTitle:@"Reset Threads State" style:1 handler:v6];
  v9[1] = v3;
  v4 = [NSArray arrayWithObjects:v9 count:2];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

- (id)_setupMessageDisplaySection
{
  v2 = [DebugSwitchCell preferenceSwitchWithTitle:@"Ignore BIMI Allowlist" preference:18];
  v7[0] = v2;
  v3 = [DebugSwitchCell alloc];
  v4 = [(DebugSwitchCell *)v3 initWithTitle:@"Show Blocked Sender Banner" defaultsKey:EMPromptUserForBlockedSenderKey defaultKeyValue:1 completion:0];
  v7[1] = v4;
  v5 = [NSArray arrayWithObjects:v7 count:2];

  return v5;
}

- (id)_setupBlankCellsSection
{
  objc_initWeak(&location, self);
  v2 = [DebugSwitchCell preferenceSwitchWithTitle:@"Alert on Blank Cell" preference:19];
  v13[0] = v2;
  v3 = [DebugSwitchCell preferenceSwitchWithTitle:@"Block XPC Queue" preference:20];
  v13[1] = v3;
  v4 = [DebugSwitchCell preferenceSwitchWithTitle:@"Block SQL Queries" preference:21];
  v13[2] = v4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001E1974;
  v10[3] = &unk_10064C838;
  objc_copyWeak(&v11, &location);
  v5 = [DebugButtonCell cellWithTitle:@"Simulate Content Protection Changes" style:1 handler:v10];
  v13[3] = v5;
  v6 = [DebugButtonCell cellWithTitle:@"Simulate Locked Content Protection" style:0 handler:&stru_1006547B0];
  v13[4] = v6;
  v7 = [DebugButtonCell cellWithTitle:@"Reset Content Protection" style:0 handler:&stru_1006547D0];
  v13[5] = v7;
  v8 = [NSArray arrayWithObjects:v13 count:6];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v8;
}

- (id)_setupRemoteContentSection
{
  v2 = [DebugSwitchCell preferenceSwitchWithTitle:@"Request Remote Content Immediately" preference:8];
  v3 = [DebugSwitchCell preferenceSwitchWithTitle:@"Always Verify Server-Provided Links" preference:9, v2];
  v7[1] = v3;
  v4 = [DebugSwitchCell preferenceSwitchWithTitle:@"Log Remote Content Links Unredacted" preference:10];
  v7[2] = v4;
  v5 = [NSArray arrayWithObjects:v7 count:3];

  return v5;
}

- (id)_setupSMIMESection
{
  v2 = [DebugSwitchCell preferenceSwitchWithTitle:@"Most Secure" preference:24];
  v12[0] = v2;
  v3 = [DebugSwitchCell preferenceSwitchWithTitle:@"Sign Using application/pkcs7-mime" preference:25];
  v12[1] = v3;
  v4 = [DebugSwitchCell preferenceSwitchWithTitle:@"Skip Device Check" preference:26];
  v12[2] = v4;
  v5 = [DebugSwitchCell preferenceSwitchWithTitle:@"Force Advertise GCM" preference:27];
  v12[3] = v5;
  v6 = [DebugSwitchCell preferenceSwitchWithTitle:@"Force Advertise Subject Encryption" preference:28];
  v12[4] = v6;
  v7 = [DebugSwitchCell preferenceSwitchWithTitle:@"Force Encrypt With GCM" preference:29];
  v12[5] = v7;
  v8 = [DebugSwitchCell preferenceSwitchWithTitle:@"Force Encrypt Subject" preference:30];
  v12[6] = v8;
  v9 = [DebugSwitchCell preferenceSwitchWithTitle:@"Send Sign-Encrypt-Signed" preference:31];
  v12[7] = v9;
  v10 = [NSArray arrayWithObjects:v12 count:8];

  return v10;
}

- (id)_setupDebugInformationsSection
{
  v2 = [DebugButtonCell cellShowingViewControllerClass:objc_opt_class()];
  v6[0] = v2;
  v3 = [DebugButtonCell cellShowingViewControllerClass:objc_opt_class()];
  v6[1] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:2];

  return v4;
}

- (id)_noTitleSectionForButtons
{
  v3 = +[NSBundle mainBundle];
  infoDictionary = [v3 infoDictionary];
  v5 = [infoDictionary objectForKey:@"CFBundleVersion"];

  objc_initWeak(&location, self);
  v6 = v5;
  v7 = objc_alloc_init(UITableViewCell);
  textLabel = [v7 textLabel];
  [textLabel setText:@"Mail Version"];

  v9 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v9 setText:v6];
  [v9 sizeToFit];
  [v7 setAccessoryView:v9];
  [v7 setSelectionStyle:0];

  v18[0] = v7;
  v10 = [DebugButtonCell cellShowingViewControllerClass:objc_opt_class()];
  v18[1] = v10;
  v11 = [DebugButtonCell cellWithTitle:@"File A Radar" style:0 target:self action:"_invokeTapToRadar"];
  v18[2] = v11;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001E2274;
  v15[3] = &unk_10064C838;
  objc_copyWeak(&v16, &location);
  v12 = [DebugButtonCell cellWithTitle:@"Kill Mail and maild" style:1 handler:v15];
  v18[3] = v12;
  v13 = [NSArray arrayWithObjects:v18 count:4];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v13;
}

- (id)_setupTestingSupportSection
{
  v18 = [DebugSwitchCell preferenceSwitchWithTitle:@"Add Logo Origin Badges" preference:58];
  v19[0] = v18;
  v17 = [DebugSwitchCell preferenceSwitchWithTitle:@"Prefer BIMI Logos over Branded Mail" preference:60];
  v19[1] = v17;
  v16 = [DebugSwitchCell preferenceSwitchWithTitle:@"Add Remind Me Debug Date" preference:15];
  v19[2] = v16;
  v15 = [DebugSwitchCell preferenceSwitchWithTitle:@"Follow Up 10 second Start Date" preference:16];
  v19[3] = v15;
  v14 = [DebugSwitchCell preferenceSwitchWithTitle:@"Follow Up 60 second End Date" preference:17];
  v19[4] = v14;
  v3 = [DebugSwitchCell preferenceSwitchWithTitle:@"Disable Query Log Submission" preference:34];
  v19[5] = v3;
  v4 = [DebugSwitchCell preferenceSwitchWithTitle:@"Fake Managed Accounts" preference:3];
  v19[6] = v4;
  v5 = [DebugSwitchCell preferenceSwitchWithTitle:@"Force Mini Tip" preference:32];
  v19[7] = v5;
  v6 = [DebugSwitchCell preferenceSwitchWithTitle:@"Disable Snapshot Invalidation" preference:11];
  v19[8] = v6;
  v7 = [DebugSwitchCell preferenceSwitchWithTitle:@"Disable Initial Message Selection" preference:12];
  v19[9] = v7;
  v8 = [DebugSwitchCell preferenceSwitchWithTitle:@"Disable State Restoration" preference:13];
  v19[10] = v8;
  v9 = [DebugSwitchCell preferenceSwitchWithTitle:@"Simulate delayed free space state" preference:44];
  v19[11] = v9;
  v10 = [DebugButtonCell cellShowingViewControllerClass:objc_opt_class()];
  v19[12] = v10;
  v11 = [DebugButtonCell cellWithTitle:@"Clear Restoration State" style:1 target:self action:"_clearRestorationState"];
  v19[13] = v11;
  v12 = [NSArray arrayWithObjects:v19 count:14];

  return v12;
}

- (void)_clearRestorationState
{
  tableView = [(MFMailDebugMenuController *)self tableView];
  window = [tableView window];
  windowScene = [window windowScene];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001E27D0;
  v6[3] = &unk_10064D028;
  v6[4] = self;
  [MailRestorationStateClearer clearAllRestorationStates:windowScene errorHandler:v6];
}

- (id)_setupGreymatterSection
{
  v13 = [DebugSwitchCell preferenceSwitchWithTitle:@"CatchUp - Use flagged instead of urgent for query predicate" preference:45];
  v14[0] = v13;
  v2 = [DebugSwitchCell preferenceSwitchWithTitle:@"CatchUp - Remove time limit for Highlights" preference:46];
  v14[1] = v2;
  v3 = [DebugSwitchCell preferenceSwitchWithTitle:@"Greymatter - Override as supported device" preference:52];
  v14[2] = v3;
  v4 = [DebugSwitchCell preferenceSwitchWithTitle:@"Greymatter - Override Device Eligibility/Availaility" preference:53];
  v14[3] = v4;
  v5 = [DebugSwitchCell preferenceSwitchWithTitle:@"Dynamically update generated summaries" preference:47];
  v14[4] = v5;
  v6 = [DebugSwitchCell preferenceSwitchWithTitle:@"Create fake generated summaries for new messages" preference:50];
  v14[5] = v6;
  v7 = [DebugSwitchCell preferenceSwitchWithTitle:@"Create fake manual summaries" preference:51];
  v14[6] = v7;
  v8 = [DebugSwitchCell preferenceSwitchWithTitle:@"Simulate sensitive content error" preference:57];
  v14[7] = v8;
  v9 = [DebugSwitchCell preferenceSwitchWithTitle:@"Show FCS feedback options" preference:55];
  v14[8] = v9;
  v10 = [DebugButtonCell cellShowingViewControllerClass:objc_opt_class()];
  v14[9] = v10;
  v11 = [NSArray arrayWithObjects:v14 count:10];

  return v11;
}

- (id)_setupBlackPearlSection
{
  v15 = [DebugSwitchCell preferenceSwitchWithTitle:@"Disable Grouping in Business Mailbox" preference:38];
  v16[0] = v15;
  v14 = [DebugSwitchCell preferenceSwitchWithTitle:@"Show Category" preference:37];
  v16[1] = v14;
  v3 = [DebugSwitchCell preferenceSwitchWithTitle:@"Force Collapsed Sender Header" preference:40];
  v16[2] = v3;
  v4 = [DebugSwitchCell preferenceSwitchWithTitle:@"Digest Scrolls To Newest Message" preference:41];
  v16[3] = v4;
  v5 = [DebugSwitchCell preferenceSwitchWithTitle:@"Ignore Platform Restrictions" preference:39 didChangeHandler:&stru_1006547F0];
  v16[4] = v5;
  v6 = [DebugSwitchCell preferenceSwitchWithTitle:@"Ignore Locale Restrictions" preference:36 didChangeHandler:&stru_100654810];
  v16[5] = v6;
  v7 = [DebugSwitchCell preferenceSwitchWithTitle:@"Verify Message Body with DKIM" preference:35];
  v16[6] = v7;
  v8 = [DebugSwitchCell preferenceSwitchWithTitle:@"Allow BIMI Logos in Grouped Senders" preference:59];
  v16[7] = v8;
  v9 = [DebugSwitchCell preferenceSwitchWithTitle:@"Drag & Drop Recategorization" preference:42];
  v16[8] = v9;
  v10 = [DebugButtonCell cellWithTitle:@"Recategorize All Mail" style:0 target:self action:"_recategorizeAllMail"];
  v16[9] = v10;
  v11 = [DebugButtonCell cellWithTitle:@"Clear All Category Cloud Storage" style:1 target:self action:"_clearAllUnseenState"];
  v16[10] = v11;
  v12 = [NSArray arrayWithObjects:v16 count:11];

  return v12;
}

- (void)_clearAllUnseenState
{
  v9 = +[UIApplication sharedApplication];
  mailboxCategoryCloudStorage = [v9 mailboxCategoryCloudStorage];
  [mailboxCategoryCloudStorage clearAll];

  scene = [(MFMailDebugMenuController *)self scene];
  splitViewController = [scene splitViewController];
  messageListViewController = [splitViewController messageListViewController];
  bucketsViewController = [messageListViewController bucketsViewController];

  [bucketsViewController clearSessionState];
  daemonInterface = [scene daemonInterface];
  messageRepository = [daemonInterface messageRepository];
  [messageRepository removeAllEntriesFromBusinessCloudStorage];
}

- (void)_recategorizeAllMail
{
  scene = [(MFMailDebugMenuController *)self scene];
  daemonInterface = [scene daemonInterface];
  messageRepository = [daemonInterface messageRepository];
  v4 = +[NSDate distantPast];
  [messageRepository recategorizeMessageSinceDate:v4];
}

- (void)_resetGroupingLogic
{
  v3 = [UIAlertController alertControllerWithTitle:@"Are you sure?" message:@"This will remove any existing category overrides for senders preferredStyle:and the badging you see on grouped senders and the category bar will not be synced across devices. After selecting this, quit and re-start Mail.", 1];
  v4 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:0];
  [v3 addAction:v4];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001E329C;
  v6[3] = &unk_10064FCC0;
  v6[4] = self;
  v5 = [UIAlertAction actionWithTitle:@"Continue" style:2 handler:v6];
  [v3 addAction:v5];
  [(MFMailDebugMenuController *)self presentViewController:v3 animated:1 completion:0];
}

- (id)_setupMailCleanupSection
{
  v3 = [DebugButtonCell cellShowingViewControllerClass:objc_opt_class()];
  v7[0] = v3;
  v4 = [DebugButtonCell cellWithTitle:@"Refresh Mail Cleanup" style:0 target:self action:"_refreshMailCleanup"];
  v7[1] = v4;
  v5 = [NSArray arrayWithObjects:v7 count:2];

  return v5;
}

- (void)_refreshMailCleanup
{
  v3 = +[UIApplication sharedApplication];
  getiCloudMailCleanupService = [v3 getiCloudMailCleanupService];
  [getiCloudMailCleanupService forceSync];
}

- (id)_setupDatabaseSection
{
  v2 = [DebugButtonCell cellWithTitle:@"Reset Mail data" style:1 target:self action:"_resetDatabaseOnNextLaunch"];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (void)_resetDatabaseOnNextLaunch
{
  v5 = [UIAlertController alertControllerWithTitle:@"Are you sure?" message:@"This will wipe your Mail database. This might include messages that are not on the server. You need to restart the app for this to take effect." preferredStyle:1];
  v3 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:0];
  [v5 addAction:v3];
  v4 = [UIAlertAction actionWithTitle:@"Continue" style:2 handler:&stru_100654850];
  [v5 addAction:v4];
  [(MFMailDebugMenuController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)_invokeTapToRadarWithDescription:(id)description
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001E37D4;
  v8[3] = &unk_100654878;
  descriptionCopy = description;
  v9 = descriptionCopy;
  v5 = objc_retainBlock(v8);
  v6 = [MSRadarInteraction interactionWithTitle:@"Mail Issue?" message:@"See something wrong with Mail? Please provide as much information to help us track it down for you." builder:v5];
  interactionViewController = [v6 interactionViewController];
  [(MFMailDebugMenuController *)self presentViewController:interactionViewController animated:1 completion:0];
}

- (id)userActivity
{
  v2 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.mail.private.debugmenu"];
  [v2 setTargetContentIdentifier:@"com.apple.mail.private.debugmenu"];

  return v2;
}

- (id)_navBarBackgroundImage
{
  v2 = [[UIGraphicsImageRenderer alloc] initWithSize:{1500.0, 75.0}];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001E39F8;
  v7[3] = &unk_100654898;
  v7[4] = 20;
  v7[5] = 0x4052C00000000000;
  v3 = [v2 imageWithActions:v7];
  v4 = +[UIColor systemPurpleColor];
  v5 = [v3 imageWithTintColor:v4];

  return v5;
}

- (MFMailDebugMenuPresenter)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

- (MailScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end