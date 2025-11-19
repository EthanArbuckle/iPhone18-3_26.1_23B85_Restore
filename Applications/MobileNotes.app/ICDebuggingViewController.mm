@interface ICDebuggingViewController
+ (id)createLayout;
+ (void)presentDebugView:(id)a3;
+ (void)setupDebuggingGestureInWindow:(id)a3;
- (BOOL)disableSearchResultsAnimation;
- (BOOL)shouldShowRecentItems;
- (NSArray)filteredSections;
- (NSArray)recentItemIdentifiers;
- (NSArray)recentItems;
- (id)URLsForTestDataDirectories;
- (id)addRandomNoteToFolder:(id)a3;
- (id)createSnapshot;
- (void)addDivergedAttachment:(id)a3;
- (void)addFolders:(unint64_t)a3 toAccount:(id)a4 maxNotesInFolder:(unint64_t)a5;
- (void)addRecentItemWithIdentifier:(id)a3;
- (void)addSomeFoldersWithRandomNotesToAllModernAccounts:(id)a3;
- (void)addSomeRandomNotes:(id)a3;
- (void)addSomeRandomNotes:(unint64_t)a3 toFolder:(id)a4;
- (void)bluetoothKeyboardHint:(id)a3;
- (void)checkiCloudKeychainSyncStatus:(id)a3;
- (void)clearAnalyticsIdentifiers:(id)a3;
- (void)clearRecentItems;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)confirmDestructiveActionWithTitle:(id)a3 message:(id)a4 buttonText:(id)a5 block:(id)a6;
- (void)createPartiallySupportedSmartFolder:(id)a3;
- (void)deleteAllTags:(id)a3;
- (void)deleteMigratedDuplicates:(id)a3;
- (void)deleteSearchIndex:(id)a3;
- (void)deleteServerChangeTokens:(id)a3;
- (void)dismiss:(id)a3;
- (void)dumpAnalyticsIdentifiers:(id)a3;
- (void)fakeIncompatibleDevices:(id)a3;
- (void)fixDivergedAttachments:(id)a3;
- (void)generateSystemPaperChrome:(id)a3;
- (void)importTestDataFromDirectoryAtURL:(id)a3;
- (void)loadTestData:(id)a3;
- (void)logHashtagsIndexedByOtherApps:(id)a3;
- (void)logSearchIndex:(id)a3;
- (void)migrateAccounts:(id)a3 toMode:(signed __int16)a4;
- (void)migrateLocalAccount:(id)a3;
- (void)migratePrimaryICloudAccount:(id)a3;
- (void)migrateToCustomPasswordMode:(id)a3;
- (void)migrateToDevicePasscodeMode:(id)a3;
- (void)prefetchHashtagsIndexedByOtherApps:(id)a3;
- (void)purgeAllHandwritingSummaries:(id)a3;
- (void)regenerateAllAttachmentPreviewImages:(id)a3;
- (void)regenerateAllHandwritingSummaries:(id)a3;
- (void)regenerateAllImageClassifications:(id)a3;
- (void)regenerateAllOCR:(id)a3;
- (void)regenerateAnalyticsIdentifiers:(id)a3;
- (void)regenerateStandardizedContentForAllHashtags:(id)a3;
- (void)regenerateSystemPaperThumbnails:(id)a3;
- (void)reindexEverything:(id)a3;
- (void)reloadDataAnimated:(BOOL)a3;
- (void)removeAccountPassword:(id)a3;
- (void)removeWhatsNewVersion:(id)a3;
- (void)resetAutoSortChecklistAlert:(id)a3;
- (void)resetLockedNotesMode:(id)a3;
- (void)resetPassword:(id)a3;
- (void)resetPencilUnsupportedAlertState:(id)a3;
- (void)resetServerSideUpdateTaskState:(id)a3;
- (void)resetSupportsV1Neo:(id)a3;
- (void)resetUpdateDrawingsAlert:(id)a3;
- (void)sendStateOfTheWorld:(id)a3;
- (void)setCanShowRecentItems:(BOOL)a3;
- (void)setCloudConfiguration:(id)a3;
- (void)setRecentItemIdentifiers:(id)a3;
- (void)setUpDataSource;
- (void)setUpDebuggingItems;
- (void)setUpSearch;
- (void)setWhatsNewToCurrentOS:(id)a3;
- (void)setWhatsNewToIOS9:(id)a3;
- (void)showSimplifiedUITextViewEditor:(id)a3;
- (void)showSimplifiedWebEditor:(id)a3;
- (void)simulateBackgroundSnapshot:(id)a3;
- (void)simulateBackgroundSnapshotExpiration:(id)a3;
- (void)syncLocalWithCloud:(id)a3;
- (void)testAllowNotificationsWarmingSheet:(id)a3;
- (void)testAppRemoval:(id)a3;
- (void)testNotificationsNotAllowedAlert:(id)a3;
- (void)toggleDebuggingItemWithDefaultsKey:(id)a3 sender:(id)a4;
- (void)toggleNonContiguousLayout:(id)a3;
- (void)toggleSupportsV1Neo:(id)a3;
- (void)triggerCloudOperationEndEventWithNilErrorDomain:(id)a3;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
@end

@implementation ICDebuggingViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = ICDebuggingViewController;
  [(ICDebuggingViewController *)&v3 viewDidLoad];
  [(ICDebuggingViewController *)self setUpDebuggingItems];
  [(ICDebuggingViewController *)self setUpDataSource];
  [(ICDebuggingViewController *)self setUpSearch];
}

+ (void)setupDebuggingGestureInWindow:(id)a3
{
  v4 = a3;
  v5 = [[ICShowDebugMenuGestureRecognizer alloc] initWithTarget:a1 action:"presentDebugView:"];
  [v4 addGestureRecognizer:v5];
}

+ (void)presentDebugView:(id)a3
{
  v24 = a3;
  v4 = [ICDebuggingViewController alloc];
  v5 = [a1 createLayout];
  v6 = [(ICDebuggingViewController *)v4 initWithCollectionViewLayout:v5];

  v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:v6 action:"dismiss:"];
  v8 = [(ICDebuggingViewController *)v6 navigationItem];
  [v8 setLeftBarButtonItem:v7];

  v9 = +[UIDevice ic_isVision];
  v10 = @"ant.circle";
  if (v9)
  {
    v10 = @"ant";
  }

  v11 = v10;
  v12 = [UIBarButtonItem alloc];
  v13 = [UIImage systemImageNamed:v11];

  v14 = [v12 initWithImage:v13 style:0 target:a1 action:"fileRadar:"];
  v15 = [(ICDebuggingViewController *)v6 navigationItem];
  [v15 setRightBarButtonItem:v14];

  v16 = [(ICDebuggingViewController *)v6 navigationItem];
  [v16 setTitle:@"Debugging"];

  v17 = [(ICDebuggingViewController *)v6 ic_embedInNavigationControllerForModalPresentation];
  [v17 setNavigationBarHidden:0];
  objc_opt_class();
  v18 = ICDynamicCast();
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    objc_opt_class();
    objc_opt_class();
    v21 = ICDynamicCast();
    v22 = [v21 view];
    v23 = ICDynamicCast();
    v20 = [v23 rootViewController];
  }

  [v20 presentViewController:v17 animated:1 completion:0];
}

+ (id)createLayout
{
  v2 = objc_alloc_init(UICollectionViewCompositionalLayoutConfiguration);
  v3 = [[UICollectionViewCompositionalLayout alloc] initWithSectionProvider:&stru_100648F30 configuration:v2];

  return v3;
}

- (void)setUpSearch
{
  v3 = objc_alloc_init(UISearchController);
  [(ICDebuggingViewController *)self setSearchController:v3];

  v4 = [(ICDebuggingViewController *)self searchController];
  [v4 setSearchResultsUpdater:self];

  v5 = [(ICDebuggingViewController *)self searchController];
  [v5 setDelegate:self];

  v6 = [(ICDebuggingViewController *)self searchController];
  v7 = [v6 searchBar];
  [v7 setAutocapitalizationType:0];

  v8 = [(ICDebuggingViewController *)self searchController];
  [v8 setObscuresBackgroundDuringPresentation:0];

  v9 = [(ICDebuggingViewController *)self searchController];
  v10 = [(ICDebuggingViewController *)self navigationItem];
  [v10 setSearchController:v9];

  [(ICDebuggingViewController *)self setCanShowRecentItems:0];
}

- (void)confirmDestructiveActionWithTitle:(id)a3 message:(id)a4 buttonText:(id)a5 block:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = [UIAlertController alertControllerWithTitle:a3 message:a4 preferredStyle:1];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000D22DC;
  v16[3] = &unk_100646938;
  v17 = v10;
  v13 = v10;
  v14 = [UIAlertAction actionWithTitle:v11 style:2 handler:v16];

  [v12 addAction:v14];
  v15 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:0];
  [v12 addAction:v15];

  [(ICDebuggingViewController *)self presentViewController:v12 animated:1 completion:0];
}

- (void)setUpDataSource
{
  objc_initWeak(&location, self);
  v3 = objc_opt_class();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000D25B4;
  v18[3] = &unk_100648F58;
  objc_copyWeak(&v19, &location);
  v4 = [UICollectionViewCellRegistration registrationWithCellClass:v3 configurationHandler:v18];
  v5 = [UICollectionViewDiffableDataSource alloc];
  v6 = [(ICDebuggingViewController *)self collectionView];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000D2724;
  v16[3] = &unk_100648F80;
  v7 = v4;
  v17 = v7;
  v8 = [v5 initWithCollectionView:v6 cellProvider:v16];
  [(ICDebuggingViewController *)self setDiffableDataSource:v8];

  v9 = objc_opt_class();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000D2738;
  v14[3] = &unk_100648FA8;
  objc_copyWeak(&v15, &location);
  [UICollectionViewSupplementaryRegistration registrationWithSupplementaryClass:v9 elementKind:UICollectionElementKindSectionHeader configurationHandler:v14];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000D2910;
  v10 = v12[3] = &unk_100648FD0;
  v13 = v10;
  v11 = [(ICDebuggingViewController *)self diffableDataSource];
  [v11 setSupplementaryViewProvider:v12];

  [(ICDebuggingViewController *)self reloadDataAnimated:0];
  objc_destroyWeak(&v15);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)reloadDataAnimated:(BOOL)a3
{
  v3 = a3;
  v6 = [(ICDebuggingViewController *)self createSnapshot];
  v5 = [(ICDebuggingViewController *)self diffableDataSource];
  [v5 applySnapshot:v6 animatingDifferences:v3];
}

- (id)createSnapshot
{
  v3 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  if ([(ICDebuggingViewController *)self shouldShowRecentItems])
  {
    v12 = @"RECENT";
    v4 = [NSArray arrayWithObjects:&v12 count:1];
    [v3 appendSectionsWithIdentifiers:v4];

    v5 = [(ICDebuggingViewController *)self recentItems];
    v6 = [v5 ic_map:&stru_100649010];

    [v3 appendItemsWithIdentifiers:v6 intoSectionWithIdentifier:@"RECENT"];
  }

  else
  {
    v7 = [(ICDebuggingViewController *)self filteredSections];
    v6 = [v7 ic_map:&stru_100649050];

    [v3 appendSectionsWithIdentifiers:v6];
    v8 = [(ICDebuggingViewController *)self filteredSections];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000D2B44;
    v10[3] = &unk_100649098;
    v11 = v3;
    [v8 enumerateObjectsUsingBlock:v10];
  }

  return v3;
}

- (void)addRecentItemWithIdentifier:(id)a3
{
  v8 = a3;
  v4 = [(ICDebuggingViewController *)self recentItemIdentifiers];
  v5 = [v4 mutableCopy];

  v6 = [v5 indexOfObject:v8];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v5 removeObjectAtIndex:v6];
  }

  [v5 insertObject:v8 atIndex:0];
  v7 = [v5 copy];
  [(ICDebuggingViewController *)self setRecentItemIdentifiers:v7];
}

- (void)clearRecentItems
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 removeObjectForKey:@"DebuggingRecentItemIdentifiers"];

  v4 = [(ICDebuggingViewController *)self disableSearchResultsAnimation]^ 1;

  [(ICDebuggingViewController *)self reloadDataAnimated:v4];
}

- (void)setRecentItemIdentifiers:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setObject:v3 forKey:@"DebuggingRecentItemIdentifiers"];
}

- (NSArray)recentItemIdentifiers
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 arrayForKey:@"DebuggingRecentItemIdentifiers"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  v6 = v5;

  return v5;
}

- (NSArray)recentItems
{
  v3 = [(ICDebuggingViewController *)self allSections];
  v4 = [v3 ic_flatMap:&stru_1006490D8];

  v5 = [v4 ic_map:&stru_1006490F8];
  v6 = [(ICDebuggingViewController *)self recentItemIdentifiers];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000D2F0C;
  v11[3] = &unk_100649120;
  v12 = v5;
  v13 = v4;
  v7 = v4;
  v8 = v5;
  v9 = [v6 ic_compactMap:v11];

  return v9;
}

- (void)toggleDebuggingItemWithDefaultsKey:(id)a3 sender:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NSUserDefaults standardUserDefaults];
  [v8 setBool:objc_msgSend(v8 forKey:{"BOOLForKey:", v7) ^ 1, v7}];

  objc_opt_class();
  v9 = ICDynamicCast();

  v10 = [v9 item];
  if (v10)
  {
    v11 = [(ICDebuggingViewController *)self diffableDataSource];
    v12 = [v11 snapshot];
    v13 = [v10 identifier];
    v15 = v13;
    v14 = [NSArray arrayWithObjects:&v15 count:1];
    [v12 reconfigureItemsWithIdentifiers:v14];
  }
}

- (void)dismiss:(id)a3
{
  v3 = [(ICDebuggingViewController *)self presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (BOOL)disableSearchResultsAnimation
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"DebuggingDisableSearchAnimation"];

  return v3;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v15 = a4;
  v6 = a3;
  if ([(ICDebuggingViewController *)self shouldShowRecentItems])
  {
    v7 = [(ICDebuggingViewController *)self recentItems];
  }

  else
  {
    v8 = [(ICDebuggingViewController *)self filteredSections];
    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v15, "section")}];
    v7 = [v9 items];
  }

  v10 = [v7 objectAtIndexedSubscript:{objc_msgSend(v15, "row")}];
  v11 = [v10 selector];
  v12 = [(ICDebuggingViewController *)self methodForSelector:v11];
  v13 = [v6 cellForItemAtIndexPath:v15];
  v12(self, v11, v13);
  v14 = [v10 identifier];
  [(ICDebuggingViewController *)self addRecentItemWithIdentifier:v14];

  [v6 deselectItemAtIndexPath:v15 animated:1];
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v7 = a3;
  v4 = [v7 searchBar];
  v5 = [v4 text];
  if ([v5 length])
  {
    v6 = 0;
  }

  else
  {
    v6 = [v7 isActive];
  }

  [(ICDebuggingViewController *)self setCanShowRecentItems:v6];

  [(ICDebuggingViewController *)self reloadDataAnimated:[(ICDebuggingViewController *)self disableSearchResultsAnimation]^ 1];
}

- (void)setUpDebuggingItems
{
  v2 = +[ICNoteContext sharedContext];
  v3 = [v2 managedObjectContext];
  v160 = [ICAccount allActiveAccountsInContext:v3];

  v145 = [[ICDebuggingItem alloc] initWithTitle:@"Reset Auto Sort Checklist Alert" selector:"resetAutoSortChecklistAlert:"];
  v181 = v145;
  v182 = [[ICDebuggingItem alloc] initWithTitle:@"Reset Recently Deleted Warning" selector:"resetRecentlyDeletedWarning:"];
  v144 = v182;
  v143 = [[ICDebuggingItem alloc] initWithTitle:@"Reset Update Drawings Alert" selector:"resetUpdateDrawingsAlert:"];
  v183 = v143;
  v184 = [[ICDebuggingItem alloc] initWithTitle:@"Test Allow Notifications Warming Sheet" selector:"testAllowNotificationsWarmingSheet:"];
  v142 = v184;
  v141 = [[ICDebuggingItem alloc] initWithTitle:@"Test Notifications Not Allowed Alert" selector:"testNotificationsNotAllowedAlert:"];
  v185 = v141;
  v186 = [[ICDebuggingItem alloc] initWithTitle:@"Test Notes TTR" selector:"testTTR:"];
  v140 = v186;
  v139 = [NSArray arrayWithObjects:&v181 count:6];
  v159 = [[ICDebuggingSection alloc] initWithTitle:@"Alerts" items:v139];
  v138 = [[ICDebuggingItem alloc] initWithTitle:@"Dump Identifiers" selector:"dumpAnalyticsIdentifiers:"];
  v175 = v138;
  v176 = [[ICDebuggingItem alloc] initWithTitle:@"Regenerate Identifiers" selector:"regenerateAnalyticsIdentifiers:"];
  v137 = v176;
  v136 = [[ICDebuggingItem alloc] initWithTitle:@"Clear Identifiers" selector:"clearAnalyticsIdentifiers:"];
  v177 = v136;
  v178 = [[ICDebuggingItem alloc] initWithTitle:@"Simulate Background Snapshot" selector:"simulateBackgroundSnapshot:"];
  v135 = v178;
  v134 = [[ICDebuggingItem alloc] initWithTitle:@"Simulate Background Snapshot Expiration" selector:"simulateBackgroundSnapshotExpiration:"];
  v179 = v134;
  v180 = [[ICDebuggingItem alloc] initWithTitle:@"Fire Cloud Error Domain=nil" selector:"triggerCloudOperationEndEventWithNilErrorDomain:"];
  v133 = v180;
  v132 = [NSArray arrayWithObjects:&v175 count:6];
  v158 = [[ICDebuggingSection alloc] initWithTitle:@"Analytics" items:v132];
  v4 = [[ICDebuggingItem alloc] initWithTitle:@"Refresh From Cloud" selector:"syncLocalWithCloud:"];
  v5 = [[ICDebuggingItem alloc] initWithTitle:@"Push Everything to Cloud" selector:"pushEverythingToCloud:"];
  v6 = [[ICDebuggingItem alloc] initWithTitle:@"Delete Cloud Change Tokens" selector:"deleteServerChangeTokens:"];
  v7 = [[ICDebuggingItem alloc] initWithTitle:@"Cloud Configuration" selector:"setCloudConfiguration:"];
  [(ICDebuggingItem *)v7 setPresenter:1];
  v131 = v4;
  v174[0] = v4;
  v174[1] = v5;
  v130 = v5;
  v128 = v6;
  v174[2] = v6;
  v174[3] = v7;
  v127 = v7;
  v126 = [[ICDebuggingItem alloc] initWithTitle:@"Reset Server Side Update Task State" selector:"resetServerSideUpdateTaskState:"];
  v174[4] = v126;
  v125 = [NSArray arrayWithObjects:v174 count:5];
  v157 = [[ICDebuggingSection alloc] initWithTitle:@"Cloud" items:v125];
  v8 = [[ICDebuggingItem alloc] initWithTitle:@"Delete Data" selector:"purgeEverything:"];
  [(ICDebuggingItem *)v8 setDestructive:1];
  [(ICDebuggingItem *)v8 setPresenter:1];
  [(ICDebuggingItem *)v8 setSubtitle:@"Keep in Cloud"];
  v9 = [[ICDebuggingItem alloc] initWithTitle:@"Delete Data" selector:"deleteEverything:"];
  [(ICDebuggingItem *)v9 setDestructive:1];
  [(ICDebuggingItem *)v9 setPresenter:1];
  [(ICDebuggingItem *)v9 setSubtitle:@"Delete From Cloud"];
  v10 = [[ICDebuggingItem alloc] initWithTitle:@"Load Test Data" selector:"loadTestData:"];
  [(ICDebuggingItem *)v10 setPresenter:1];
  v11 = [[ICDebuggingItem alloc] initWithTitle:@"Add 1000 Random Notes" selector:"addSomeRandomNotes:"];
  v12 = [[ICDebuggingItem alloc] initWithTitle:@"Add Folders With Random Notes" selector:"addSomeFoldersWithRandomNotesToAllModernAccounts:"];
  [(ICDebuggingItem *)v12 setSubtitle:@"Adds to all ICAccounts"];
  v124 = v8;
  v173[0] = v8;
  v123 = v9;
  v173[1] = v9;
  v122 = v10;
  v173[2] = v10;
  v121 = v11;
  v173[3] = v11;
  v120 = v12;
  v173[4] = v12;
  v119 = [NSArray arrayWithObjects:v173 count:5];
  v156 = [[ICDebuggingSection alloc] initWithTitle:@"Data" items:v119];
  v13 = [[ICDebuggingItem alloc] initWithTitle:@"Disable Search Results Animation" selector:"disableDebuggingSearchAnimation:"];
  [(ICDebuggingItem *)v13 setSelectedDefaultsKey:@"DebuggingDisableSearchAnimation"];
  v14 = [[ICDebuggingItem alloc] initWithTitle:@"Grey Parrot UI" selector:"toggleGreyParrotUI:"];
  [(ICDebuggingItem *)v14 setSelectedDefaultsKey:@"DebuggingGreyParrotUI"];
  v118 = v13;
  v172[0] = v13;
  v117 = v14;
  v172[1] = v14;
  v116 = [NSArray arrayWithObjects:v172 count:2];
  v155 = [[ICDebuggingSection alloc] initWithTitle:@"Debugging UI" items:v116];
  v15 = [[ICDebuggingItem alloc] initWithTitle:@"Migrate Primary iCloud Account" selector:"migratePrimaryICloudAccount:"];
  v16 = [[ICDebuggingItem alloc] initWithTitle:@"Migrate Local Account" selector:"migrateLocalAccount:"];
  v17 = [[ICDebuggingItem alloc] initWithTitle:@"Delete Migrated Duplicates" selector:"deleteMigratedDuplicates:"];
  v18 = [[ICDebuggingItem alloc] initWithTitle:@"Reset Local Account Migration" selector:"resetLocalAccountMigration:"];
  v19 = [[ICDebuggingItem alloc] initWithTitle:@"Reset Migration" selector:"startFresh:"];
  v20 = [[ICDebuggingItem alloc] initWithTitle:@"Reset Pencil Unsupported Alert State" selector:"resetPencilUnsupportedAlertState:"];
  v21 = [[ICDebuggingItem alloc] initWithTitle:@"Simplified UITextView Editor" selector:"showSimplifiedUITextViewEditor:"];
  [(ICDebuggingItem *)v21 setPresenter:1];
  v22 = [[ICDebuggingItem alloc] initWithTitle:@"Simplified WKWebView Editor" selector:"showSimplifiedWebEditor:"];
  [(ICDebuggingItem *)v22 setPresenter:1];
  v114 = v16;
  v115 = v15;
  v171[0] = v15;
  v171[1] = v16;
  v112 = v18;
  v113 = v17;
  v171[2] = v17;
  v171[3] = v18;
  v110 = v20;
  v111 = v19;
  v171[4] = v19;
  v171[5] = v20;
  v108 = v22;
  v109 = v21;
  v171[6] = v21;
  v171[7] = v22;
  v107 = [NSArray arrayWithObjects:v171 count:8];
  v154 = [[ICDebuggingSection alloc] initWithTitle:@"Legacy" items:v107];
  v23 = [[ICDebuggingItem alloc] initWithTitle:@"Send State of the World" selector:"sendStateOfTheWorld:"];
  [(ICDebuggingItem *)v23 setPresenter:1];
  v106 = v23;
  v170 = v23;
  v105 = [NSArray arrayWithObjects:&v170 count:1];
  v153 = [[ICDebuggingSection alloc] initWithTitle:@"Logging" items:v105];
  v24 = [[ICDebuggingItem alloc] initWithTitle:@"Toggle Non-Contiguous Layout" selector:"toggleNonContiguousLayout:"];
  [(ICDebuggingItem *)v24 setPresenter:1];
  v104 = v24;
  v169 = v24;
  v103 = [NSArray arrayWithObjects:&v169 count:1];
  v152 = [[ICDebuggingSection alloc] initWithTitle:@"Note Editor View" items:v103];
  v25 = [[ICDebuggingItem alloc] initWithTitle:@"Remove Account Passwords" selector:"removeAccountPassword:"];
  v26 = [[ICDebuggingItem alloc] initWithTitle:@"Reset Locked Notes Mode" selector:"resetLockedNotesMode:"];
  v27 = [v160 ic_allSatisfy:&stru_100649160];
  v28 = @"Enable v1 Neo Support";
  if (v27)
  {
    v28 = @"Disable v1 Neo Support";
  }

  v29 = v28;
  v30 = [[ICDebuggingItem alloc] initWithTitle:v29 selector:"toggleSupportsV1Neo:"];

  v31 = [[ICDebuggingItem alloc] initWithTitle:@"Reset v1 Neo Support" selector:"resetSupportsV1Neo:"];
  v32 = [[ICDebuggingItem alloc] initWithTitle:@"Migrate to Custom Password Mode" selector:"migrateToCustomPasswordMode:"];
  v33 = [[ICDebuggingItem alloc] initWithTitle:@"Migrate to Device Passcode Mode" selector:"migrateToDevicePasscodeMode:"];
  v34 = [[ICDebuggingItem alloc] initWithTitle:@"Reset Password" selector:"resetPassword:"];
  v35 = [[ICDebuggingItem alloc] initWithTitle:@"Add Diverged Attachment" selector:"addDivergedAttachment:"];
  v36 = [[ICDebuggingItem alloc] initWithTitle:@"Fix Diverged Attachments" selector:"fixDivergedAttachments:"];
  v101 = v26;
  v102 = v25;
  v168[0] = v25;
  v168[1] = v26;
  v99 = v31;
  v100 = v30;
  v168[2] = v30;
  v168[3] = v31;
  v97 = v33;
  v98 = v32;
  v168[4] = v32;
  v168[5] = v33;
  v95 = v35;
  v96 = v34;
  v168[6] = v34;
  v168[7] = v35;
  v93 = [[ICDebuggingItem alloc] initWithTitle:@"Check Keychain Sync" selector:"checkiCloudKeychainSyncStatus:"];
  v94 = v36;
  v168[8] = v36;
  v168[9] = v93;
  v92 = [NSArray arrayWithObjects:v168 count:10];
  v151 = [[ICDebuggingSection alloc] initWithTitle:@"Password Protected Notes" items:v92];
  v37 = [[ICDebuggingItem alloc] initWithTitle:@"Pre-fetch Other-App-Indexed Hashtags" selector:"prefetchHashtagsIndexedByOtherApps:"];
  v38 = [[ICDebuggingItem alloc] initWithTitle:@"Log Other-App-Indexed Hashtags" selector:"logHashtagsIndexedByOtherApps:"];
  v39 = [[ICDebuggingItem alloc] initWithTitle:@"Delete Search Index" selector:"deleteSearchIndex:"];
  v90 = v38;
  v91 = v37;
  v167[0] = v37;
  v167[1] = v38;
  v88 = [[ICDebuggingItem alloc] initWithTitle:@"Refresh Search Index" selector:"reindexEverything:"];
  v89 = v39;
  v167[2] = v39;
  v167[3] = v88;
  v87 = [[ICDebuggingItem alloc] initWithTitle:@"Log Index" selector:"logSearchIndex:"];
  v167[4] = v87;
  v86 = [NSArray arrayWithObjects:v167 count:5];
  v150 = [[ICDebuggingSection alloc] initWithTitle:@"Search Index" items:v86];
  v40 = [[ICDebuggingItem alloc] initWithTitle:@"Create partially supported Smart Folder" selector:"createPartiallySupportedSmartFolder:"];
  [(ICDebuggingItem *)v40 setSubtitle:@"Uses Pinned Notes Query"];
  v85 = v40;
  v166 = v40;
  v84 = [NSArray arrayWithObjects:&v166 count:1];
  v149 = [[ICDebuggingSection alloc] initWithTitle:@"Smart Folders" items:v84];
  v41 = [[ICDebuggingItem alloc] initWithTitle:@"Delete All Tags" selector:"deleteAllTags:"];
  v82 = [[ICDebuggingItem alloc] initWithTitle:@"Regenerate Standardized Contents" selector:"regenerateStandardizedContentForAllHashtags:"];
  v83 = v41;
  v165[0] = v41;
  v165[1] = v82;
  v81 = [NSArray arrayWithObjects:v165 count:2];
  v148 = [[ICDebuggingSection alloc] initWithTitle:@"Tags" items:v81];
  v147 = [[ICDebuggingItem alloc] initWithTitle:@"Regenerate Attachment Previews" selector:"regenerateAllAttachmentPreviewImages:"];
  v42 = [[ICDebuggingItem alloc] initWithTitle:@"Regenerate OCR" selector:"regenerateAllOCR:"];
  v43 = [[ICDebuggingItem alloc] initWithTitle:@"Regenerate Image Classifications" selector:"regenerateAllImageClassifications:"];
  v44 = [[ICDebuggingItem alloc] initWithTitle:@"Regenerate Handwriting Summaries" selector:"regenerateAllHandwritingSummaries:"];
  v45 = [[ICDebuggingItem alloc] initWithTitle:@"Purge Handwriting Summaries" selector:"purgeAllHandwritingSummaries:"];
  v46 = [[ICDebuggingItem alloc] initWithTitle:@"Regenerate System Paper Thumbnails" selector:"regenerateSystemPaperThumbnails:"];
  v47 = [[ICDebuggingItem alloc] initWithTitle:@"Generate System Paper Chrome" selector:"generateSystemPaperChrome:"];
  [(ICDebuggingItem *)v47 setPresenter:1];
  v48 = [[ICDebuggingItem alloc] initWithTitle:@"Delete Doc Cam PDFs" selector:"deleteDocCamPDFs:"];
  v49 = [[ICDebuggingItem alloc] initWithTitle:@"Generate Fallback Image For Sketches" selector:"generateFallbackImageForSketches:"];
  [(ICDebuggingItem *)v49 setSelectedDefaultsKey:ICGenerateFallbackImageForSketchesDefaultKey];
  v50 = [[ICDebuggingItem alloc] initWithTitle:@"Disable Fallback PDF Generation" selector:"generateFallbackPDFForPaperDocuments:"];
  [(ICDebuggingItem *)v50 setSelectedDefaultsKey:ICDisableFallbackPDFGenerationDefaultKey];
  v164[0] = v147;
  v79 = v43;
  v80 = v42;
  v164[1] = v42;
  v164[2] = v43;
  v77 = v45;
  v78 = v44;
  v164[3] = v44;
  v164[4] = v45;
  v75 = v47;
  v76 = v46;
  v164[5] = v46;
  v164[6] = v47;
  v73 = v49;
  v74 = v48;
  v164[7] = v48;
  v164[8] = v49;
  v72 = v50;
  v164[9] = v50;
  v71 = [NSArray arrayWithObjects:v164 count:10];
  v51 = [[ICDebuggingSection alloc] initWithTitle:@"Thumbnails items:Previews, and OCR", v71];
  v52 = [[ICDebuggingItem alloc] initWithTitle:@"Toggle Force Show Bluetooth Keyboard Hint" selector:"bluetoothKeyboardHint:"];
  [(ICDebuggingItem *)v52 setSubtitle:@"After note editor keyboard dismissal"];
  v70 = v52;
  v163 = v52;
  v69 = [NSArray arrayWithObjects:&v163 count:1];
  v146 = [[ICDebuggingSection alloc] initWithTitle:@"visionOS" items:v69];
  v53 = [[ICDebuggingItem alloc] initWithTitle:@"Reset Welcome Screen State" selector:"resetWelcomeScreenState:"];
  v54 = [[ICDebuggingItem alloc] initWithTitle:@"Remove Version" selector:"removeWhatsNewVersion:"];
  v55 = [[ICDebuggingItem alloc] initWithTitle:@"Set to Current OS" selector:"setWhatsNewToCurrentOS:"];
  v56 = [[ICDebuggingItem alloc] initWithTitle:@"Set to iOS 9" selector:"setWhatsNewToIOS9:"];
  v67 = v54;
  v68 = v53;
  v162[0] = v53;
  v162[1] = v54;
  v66 = v55;
  v162[2] = v55;
  v162[3] = v56;
  v57 = [NSArray arrayWithObjects:v162 count:4];
  v58 = [[ICDebuggingSection alloc] initWithTitle:@"Welcome and What's New Screen" items:v57];
  v59 = [[ICDebuggingItem alloc] initWithTitle:@"Crash This App" selector:"crashThisApp:"];
  v60 = [[ICDebuggingItem alloc] initWithTitle:@"Run App Removal Service" selector:"testAppRemoval:"];
  [(ICDebuggingItem *)v60 setPresenter:1];
  v161[0] = v59;
  v161[1] = v60;
  v61 = [NSArray arrayWithObjects:v161 count:2];
  v62 = [[ICDebuggingSection alloc] initWithTitle:@"Danger Zone" items:v61];
  [(ICDebuggingSection *)v62 setDestructive:1];
  v63 = v51;
  v64 = [NSMutableArray arrayWithObjects:v159, v158, v157, v156, v155, v154, v153, v152, v151, v150, v149, v148, v51, 0];
  if (+[UIDevice ic_isVision])
  {
    [v64 addObject:v146];
  }

  [v64 addObject:v58];
  [v64 addObject:v62];
  v65 = [v64 copy];
  [(ICDebuggingViewController *)self setAllSections:v65];
}

- (NSArray)filteredSections
{
  v3 = [(ICDebuggingViewController *)self searchController];
  v4 = [v3 searchBar];
  v5 = [v4 text];
  v6 = [v5 lowercaseString];

  v7 = [(ICDebuggingViewController *)self searchController];
  if (![v7 isActive])
  {

    goto LABEL_17;
  }

  v8 = [v6 length];

  if (!v8)
  {
LABEL_17:
    v21 = [(ICDebuggingViewController *)self allSections];
    goto LABEL_18;
  }

  v9 = [(ICDebuggingViewController *)self allSections];
  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(ICDebuggingViewController *)self allSections];
  v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v16 = [v15 title];
        v17 = [v16 lowercaseString];

        if ([v17 containsString:v6])
        {
          [v10 addObject:v15];
        }

        else
        {
          v18 = [v15 items];
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_1000D4A20;
          v24[3] = &unk_100649188;
          v25 = v6;
          v19 = [v18 ic_objectsPassingTest:v24];

          if ([v19 count])
          {
            v20 = [v15 copy];
            [v20 setItems:v19];
            [v10 addObject:v20];
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  v21 = [v10 copy];
LABEL_18:

  return v21;
}

- (void)setCanShowRecentItems:(BOOL)a3
{
  if (self->_canShowRecentItems != a3)
  {
    self->_canShowRecentItems = a3;
    [(ICDebuggingViewController *)self reloadDataAnimated:0];
  }
}

- (BOOL)shouldShowRecentItems
{
  if (![(ICDebuggingViewController *)self canShowRecentItems])
  {
    return 0;
  }

  v3 = [(ICDebuggingViewController *)self recentItems];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)resetAutoSortChecklistAlert:(id)a3
{
  [ICTextController setChecklistAutoAlertShown:0];

  [ICTextController setChecklistAutoSortEnabled:0];
}

- (void)resetUpdateDrawingsAlert:(id)a3
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 removeObjectForKey:kICDidAlertAboutUpdatingDrawingsFall2021];

  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 removeObjectForKey:kICDidAlertAboutUpdatingDrawingsFall2022];
}

- (void)testAllowNotificationsWarmingSheet:(id)a3
{
  v3 = +[ICAppDelegate sharedInstance];
  [v3 showAllowNotificationsWarmingSheet:&stru_1006491A8];
}

- (void)testNotificationsNotAllowedAlert:(id)a3
{
  v3 = +[ICAppDelegate sharedInstance];
  v4 = [v3 viewControllerManagers];
  v7 = [v4 firstObject];

  v5 = [v7 folderListViewController];
  v6 = [v5 collectionView];

  [v6 setShouldShowAllowNotificationsView:1];
}

- (void)dumpAnalyticsIdentifiers:(id)a3
{
  v3 = +[ICNAIdentityManager sharedManager];
  [v3 debug_dumpIdentifiers];
}

- (void)regenerateAnalyticsIdentifiers:(id)a3
{
  v3 = +[ICNAIdentityManager sharedManager];
  [v3 debug_forceRegenerateIdentifiers];
}

- (void)clearAnalyticsIdentifiers:(id)a3
{
  v3 = +[ICNAIdentityManager sharedManager];
  [v3 debug_clearIdentifiers];
}

- (void)simulateBackgroundSnapshot:(id)a3
{
  v5 = +[ICNASnapshotBackgroundTask makeTaskRequest];
  v3 = +[BGTaskScheduler sharedScheduler];
  v4 = [v5 identifier];
  [v3 _simulateLaunchForTaskWithIdentifier:v4];
}

- (void)simulateBackgroundSnapshotExpiration:(id)a3
{
  v5 = +[ICNASnapshotBackgroundTask makeTaskRequest];
  v3 = +[BGTaskScheduler sharedScheduler];
  v4 = [v5 identifier];
  [v3 _simulateExpirationForTaskWithIdentifier:v4];
}

- (void)triggerCloudOperationEndEventWithNilErrorDomain:(id)a3
{
  v3 = [ICASAccountData alloc];
  v4 = [[ICASAccountType alloc] initWithAccountType:1];
  v5 = [v3 initWithAccountType:v4 accountID:@"Test_Account_ID_For_Nil_Error_Domain"];

  v6 = [ICASCloudOperationData alloc];
  v7 = [[ICASOperationType alloc] initWithOperationType:5];
  v8 = [v6 initWithOperationID:@"Test_Operation_ID_For_Nil_Error_Domain" operationType:v7 operationGroupName:@"Test_Group_Name_For_Nil_Error_Domain"];

  v9 = [[ICASCloudSyncableData alloc] initWithSyncableDataSummary:&__NSArray0__struct];
  v10 = [NSString stringWithFormat:@"%@_%ld", 0, 7];
  v11 = [ICASFullErrorData alloc];
  v12 = [NSNumber numberWithInteger:7];
  v13 = [v11 initWithFullErrorCode:v12 errorString:v10];

  v14 = [[ICASErrorStatus alloc] initWithErrorStatus:3];
  v15 = [[ICASCloudErrorData alloc] initWithErrorStatus:v14];
  v16 = +[ICNAController sharedController];
  v17 = objc_opt_class();
  v19[0] = v5;
  v19[1] = v8;
  v19[2] = v9;
  v19[3] = v13;
  v19[4] = v15;
  v18 = [NSArray arrayWithObjects:v19 count:5];
  [v16 submitEventOfType:v17 pushThenPopDataObjects:v18 subTracker:0];
}

- (void)syncLocalWithCloud:(id)a3
{
  v3 = +[ICCloudContext sharedContext];
  [v3 syncWithReason:@"DebugMenu-RefreshFromCloud" completionHandler:0];
}

- (void)deleteServerChangeTokens:(id)a3
{
  v3 = +[ICCloudContext sharedContext];
  [v3 clearZoneFetchState];

  v4 = +[ICCloudContext sharedContext];
  [v4 deleteAllServerChangeTokens];
}

- (void)setCloudConfiguration:(id)a3
{
  v3 = [UIAlertController alertControllerWithTitle:@"Cloud Configuration" message:@"How often would you like to sync your notes?" preferredStyle:1];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = +[ICCloudConfiguration availableConfigurationURLs];
  v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [v8 lastPathComponent];
        v10 = [v9 stringByDeletingPathExtension];

        v11 = +[ICCloudConfiguration defaultConfigurationURL];
        v12 = [v8 isEqual:v11];

        if (v12)
        {
          v13 = [NSString localizedStringWithFormat:@"✓ %@", v10];

          v10 = v13;
        }

        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_1000D54C8;
        v18[3] = &unk_100647218;
        v18[4] = v8;
        v14 = [UIAlertAction actionWithTitle:v10 style:0 handler:v18];
        [v3 addAction:v14];
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  v15 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:0];
  [v3 addAction:v15];

  [(ICDebuggingViewController *)self presentViewController:v3 animated:1 completion:0];
}

- (void)resetServerSideUpdateTaskState:(id)a3
{
  v3 = +[ICNoteContext sharedContext];
  v5 = [v3 managedObjectContext];

  v4 = [[ICServerSideUpdateTaskController alloc] initWithWorkerContext:v5];
  [(ICServerSideUpdateTaskController *)v4 resetState];
}

- (void)loadTestData:(id)a3
{
  v4 = a3;
  v5 = [UIAlertController alertControllerWithTitle:@"Load Test Data" message:@"Select a set of test data to load" preferredStyle:0];
  v6 = [v5 popoverPresentationController];
  v15 = v4;
  [v6 setSourceView:v4];

  [(ICDebuggingViewController *)self URLsForTestDataDirectories];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v21 = 0u;
  v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 lastPathComponent];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1000D599C;
        v17[3] = &unk_1006471F0;
        v17[4] = self;
        v17[5] = v11;
        v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:v17];
        [v5 addAction:v13];
      }

      v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v14 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:0];
  [v5 addAction:v14];

  [(ICDebuggingViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (id)URLsForTestDataDirectories
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 resourceURL];
  v4 = [v3 URLByAppendingPathComponent:@"TestData" isDirectory:1];

  v5 = +[NSFileManager defaultManager];
  v6 = [v5 enumeratorAtURL:v4 includingPropertiesForKeys:0 options:5 errorHandler:0];

  v7 = [v6 allObjects];

  return v7;
}

- (void)importTestDataFromDirectoryAtURL:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 enumeratorAtURL:v3 includingPropertiesForKeys:0 options:5 errorHandler:0];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 allObjects];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = +[ICNoteContext sharedContext];
        v13 = [v12 importNoteFromFileAtURL:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)addSomeRandomNotes:(unint64_t)a3 toFolder:(id)a4
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v7 = [(ICDebuggingViewController *)self addRandomNoteToFolder:a4];
      --v5;
    }

    while (v5);
  }

  v8 = +[ICNoteContext sharedContext];
  [v8 save];
}

- (id)addRandomNoteToFolder:(id)a3
{
  v3 = [ICNote newEmptyNoteInFolder:a3];
  v4 = +[NSDate date];
  [v3 setCreationDate:v4];

  v5 = +[NSDate date];
  [v3 setModificationDate:v5];

  v6 = [v3 textStorage];
  [v6 setWantsUndoCommands:0];

  v8 = sub_1000D5DC4(v7, 8);
  v9 = sub_1000D5DC4(v8, 10);
  v10 = [NSString localizedStringWithFormat:@"%@\n%@", v8, v9];

  v11 = [v3 textStorage];
  v12 = [v3 textStorage];
  [v11 replaceCharactersInRange:0 withString:{objc_msgSend(v12, "length"), v10}];

  v13 = [v3 textStorage];
  [v13 setWantsUndoCommands:1];

  [v3 updateChangeCountWithReason:@"Created random note"];

  return v3;
}

- (void)addSomeFoldersWithRandomNotesToAllModernAccounts:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [ICNoteContext sharedContext:a3];
  v5 = [v4 managedObjectContext];
  v6 = [ICAccount allAccountsInContext:v5];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(ICDebuggingViewController *)self addFolders:50 toAccount:*(*(&v12 + 1) + 8 * v10) maxNotesInFolder:100];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = +[ICNoteContext sharedContext];
  [v11 save];
}

- (void)addFolders:(unint64_t)a3 toAccount:(id)a4 maxNotesInFolder:(unint64_t)a5
{
  v12 = a4;
  if (a3)
  {
    v8 = 0;
    do
    {
      v9 = [NSString localizedStringWithFormat:@"Random Folder %lu", v8];
      v10 = [ICFolder newFolderInAccount:v12];
      [v10 setTitle:v9];
      v11 = +[NSDate date];
      [v10 setDateForLastTitleModification:v11];

      [(ICDebuggingViewController *)self addSomeRandomNotes:arc4random() % a5 toFolder:v10];
      ++v8;
    }

    while (a3 != v8);
  }
}

- (void)addSomeRandomNotes:(id)a3
{
  v4 = +[ICNoteContext sharedContext];
  v5 = [v4 managedObjectContext];
  v10 = [ICAccount localAccountInContext:v5];

  v6 = v10;
  if (v10 || (+[ICNoteContext sharedContext](ICNoteContext, "sharedContext"), v7 = objc_claimAutoreleasedReturnValue(), [v7 managedObjectContext], v8 = objc_claimAutoreleasedReturnValue(), +[ICAccount cloudKitAccountInContext:](ICAccount, "cloudKitAccountInContext:", v8), v11 = objc_claimAutoreleasedReturnValue(), v8, v7, (v6 = v11) != 0))
  {
    v12 = v6;
    v9 = [v6 defaultFolder];
    [(ICDebuggingViewController *)self addSomeRandomNotes:1000 toFolder:v9];
  }
}

- (void)fakeIncompatibleDevices:(id)a3
{
  v5 = +[ICCompatibilityController sharedController];
  v3 = [v5 fakesIncompatibleDevicesForDebugging];
  v4 = +[ICCompatibilityController sharedController];
  [v4 setFakesIncompatibleDevicesForDebugging:v3 ^ 1];
}

- (void)migratePrimaryICloudAccount:(id)a3
{
  v3 = +[ICAccountUtilities sharedInstance];
  v6 = [v3 primaryICloudACAccount];

  v4 = [v6 identifier];
  if (v4)
  {
    v5 = +[ICMigrationController sharedController];
    [v5 startMigrationForICloudAccountID:v4];
  }
}

- (void)migrateLocalAccount:(id)a3
{
  [ICMigrationController setDidChooseToMigrateLocalAccount:1];
  [ICMigrationController setDidMigrateLocalAccount:0];

  +[ICMigrationController migrateLocalAccountIfNecessary];
}

- (void)deleteMigratedDuplicates:(id)a3
{
  v3 = objc_alloc_init(ICDebugSpinner);
  [(ICDebugSpinner *)v3 show];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000D6410;
  v5[3] = &unk_100645E30;
  v6 = v3;
  v4 = v3;
  [ICDebugUtilities deleteMigratedDuplicatesWithCompletionHandler:v5];
}

- (void)resetPencilUnsupportedAlertState:(id)a3
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 removeObjectForKey:@"hasShownPencilUnsupportedAlertForHTMLNote"];
}

- (void)showSimplifiedUITextViewEditor:(id)a3
{
  v7 = objc_alloc_init(ICUITextViewDebuggingViewController);
  v4 = [[UINavigationController alloc] initWithRootViewController:v7];
  v5 = [[UIBarButtonItem alloc] initWithTitle:@"Done" style:2 target:v7 action:"dismiss:"];
  v6 = [(ICUITextViewDebuggingViewController *)v7 navigationItem];
  [v6 setLeftBarButtonItem:v5];

  [(ICDebuggingViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)showSimplifiedWebEditor:(id)a3
{
  v7 = objc_alloc_init(ICWKWebViewDebuggingViewController);
  v4 = [[UINavigationController alloc] initWithRootViewController:v7];
  v5 = [[UIBarButtonItem alloc] initWithTitle:@"Done" style:2 target:v7 action:"dismiss:"];
  v6 = [(ICWKWebViewDebuggingViewController *)v7 navigationItem];
  [v6 setLeftBarButtonItem:v5];

  [(ICDebuggingViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)sendStateOfTheWorld:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ICDebugSpinner);
  [(ICDebugSpinner *)v5 show];
  v6 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D6A38;
  block[3] = &unk_100645D40;
  v10 = v5;
  v11 = v4;
  v12 = self;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)toggleNonContiguousLayout:(id)a3
{
  v4 = a3;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = ICViewControllerUseNonContiguousLayoutDefaultKey;
  v23 = ICViewControllerUseNonContiguousLayoutDefaultKey;
  v24 = &__kCFBooleanTrue;
  v7 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  [v5 registerDefaults:v7];

  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = [v8 BOOLForKey:v6];

  if (v9)
  {
    v10 = @"on";
  }

  else
  {
    v10 = @"off";
  }

  if (v9)
  {
    v11 = @"off";
  }

  else
  {
    v11 = @"on";
  }

  v12 = [NSString localizedStringWithFormat:@"Non-contiguous layout is %@.", v10];
  v13 = [NSString localizedStringWithFormat:@"Would you like to turn it %@?", v11];
  v14 = [UIAlertController alertControllerWithTitle:v12 message:v13 preferredStyle:0];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000D70B4;
  v21[3] = &unk_100649248;
  v22 = v9;
  v15 = [UIAlertAction actionWithTitle:@"Yes" style:0 handler:v21];
  [v14 addAction:v15];

  v16 = [UIAlertAction actionWithTitle:@"No" style:1 handler:0];
  [v14 addAction:v16];

  if (+[UIDevice ic_isVision])
  {
    v17 = -2;
  }

  else
  {
    v17 = 7;
  }

  [v14 setModalPresentationStyle:v17];
  [(ICDebuggingViewController *)self presentViewController:v14 animated:1 completion:0];
  v18 = [v14 popoverPresentationController];
  objc_opt_class();
  v19 = ICDynamicCast();

  v20 = [v19 viewForFirstBaselineLayout];
  [v18 setSourceView:v20];

  [v18 setPermittedArrowDirections:3];
}

- (void)removeAccountPassword:(id)a3
{
  v3 = +[ICNoteContext sharedContext];
  v4 = [v3 managedObjectContext];

  v5 = [ICAccount allAccountsInContext:v4];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [[ICAccountPassphraseManager alloc] initWithAccount:*(*(&v12 + 1) + 8 * v9)];
        [v10 removePassphrase];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = +[ICCloudContext sharedContext];
  [v11 syncWithReason:@"DebugMenu-RemoveAccountPassword" completionHandler:&stru_100649268];
}

- (void)resetLockedNotesMode:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [ICNoteContext sharedContext:a3];
  v4 = [v3 managedObjectContext];
  v5 = [ICAccount allAccountsInContext:v4];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [v10 setResolvedLockedNotesMode:0];
        [ICAuthenticationAlert resetPresentationsForAccount:v10];
        v11 = [v10 managedObjectContext];
        [v11 ic_save];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)toggleSupportsV1Neo:(id)a3
{
  v4 = +[ICNoteContext sharedContext];
  v5 = [v4 managedObjectContext];
  v6 = [ICAccount allActiveAccountsInContext:v5];

  v7 = [v6 ic_allSatisfy:&stru_100649288];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v14 + 1) + 8 * v12) accountDataCreateIfNecessary];
        [v13 setSupportsV1Neo:v7 ^ 1];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [(ICDebuggingViewController *)self setUpDebuggingItems];
}

- (void)resetSupportsV1Neo:(id)a3
{
  v3 = +[ICNoteContext sharedContext];
  v4 = [v3 managedObjectContext];
  v5 = [ICAccount allActiveAccountsInContext:v4];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = +[ICCompatibilityController sharedController];
        [v12 clearCachedDevicesForAccount:v11];

        v13 = [v11 accountDataCreateIfNecessary];
        v14 = ICKeyPathFromSelector();
        [v13 setPrimitiveValue:0 forKey:v14];

        v15 = [v11 accountDataCreateIfNecessary];
        [v15 updateSupportsV1Neo:0];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

- (void)migrateToCustomPasswordMode:(id)a3
{
  v4 = +[ICNoteContext sharedContext];
  v5 = [v4 managedObjectContext];
  v6 = [ICAccount allAccountsInContext:v5];

  [(ICDebuggingViewController *)self migrateAccounts:v6 toMode:1];
}

- (void)migrateToDevicePasscodeMode:(id)a3
{
  v4 = +[ICNoteContext sharedContext];
  v5 = [v4 managedObjectContext];
  v6 = [ICAccount allAccountsInContext:v5];

  [(ICDebuggingViewController *)self migrateAccounts:v6 toMode:2];
}

- (void)migrateAccounts:(id)a3 toMode:(signed __int16)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 firstObject];
  if (v7)
  {
    v8 = [(ICDebuggingViewController *)self navigationController];
    v9 = [v8 view];
    v10 = [v9 window];

    v11 = [ICAuthenticationPrompt promptForChangingMode:v4 account:v7];
    v12 = +[ICAuthentication shared];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000D7A44;
    v14[3] = &unk_100649300;
    v19 = v4;
    v15 = v7;
    v16 = v10;
    v17 = self;
    v18 = v6;
    v13 = v10;
    [v12 authenticateWithPrompt:v11 displayWindow:v13 completionHandler:v14];
  }
}

- (void)resetPassword:(id)a3
{
  v4 = +[ICNoteContext sharedContext];
  v5 = [v4 managedObjectContext];
  v6 = [ICAccount allActiveAccountsInContext:v5];
  v7 = [v6 firstObject];

  v8 = [ICAuthenticationPrompt promptForIntent:6 object:v7];
  v9 = +[ICAuthentication shared];
  v10 = [(ICDebuggingViewController *)self view];
  v11 = [v10 window];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000D7E24;
  v13[3] = &unk_100649328;
  v13[4] = self;
  v14 = v7;
  v12 = v7;
  [v9 authenticateWithPrompt:v8 displayWindow:v11 completionHandler:v13];
}

- (void)addDivergedAttachment:(id)a3
{
  v4 = a3;
  v5 = +[ICNoteContext sharedContext];
  v6 = [v5 currentNote];

  if ([v6 isPasswordProtected] && objc_msgSend(v6, "isAuthenticated"))
  {
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = sub_1000D8140;
    v17[4] = sub_1000D8150;
    v18 = 0;
    v7 = ICUnlocalizedString();
    v8 = [UIAlertController alertControllerWithTitle:v7 message:0 preferredStyle:1];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000D8158;
    v16[3] = &unk_100649350;
    v16[4] = v17;
    [v8 addTextFieldWithConfigurationHandler:v16];
    v9 = ICUnlocalizedString();
    v10 = [UIAlertAction actionWithTitle:v9 style:1 handler:0];
    [v8 addAction:v10];

    v11 = ICUnlocalizedString();
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000D81EC;
    v13[3] = &unk_100649378;
    v14 = v6;
    v15 = v17;
    v12 = [UIAlertAction actionWithTitle:v11 style:0 handler:v13];
    [v8 addAction:v12];

    [(ICDebuggingViewController *)self presentViewController:v8 animated:1 completion:0];
    _Block_object_dispose(v17, 8);
  }
}

- (void)fixDivergedAttachments:(id)a3
{
  v4 = a3;
  v5 = +[ICNoteContext sharedContext];
  v6 = [v5 currentNote];

  if ([v6 isPasswordProtected] && objc_msgSend(v6, "isAuthenticated"))
  {
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = sub_1000D8140;
    v17[4] = sub_1000D8150;
    v18 = 0;
    v7 = ICUnlocalizedString();
    v8 = [UIAlertController alertControllerWithTitle:v7 message:0 preferredStyle:1];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000D8654;
    v16[3] = &unk_100649350;
    v16[4] = v17;
    [v8 addTextFieldWithConfigurationHandler:v16];
    v9 = ICUnlocalizedString();
    v10 = [UIAlertAction actionWithTitle:v9 style:1 handler:0];
    [v8 addAction:v10];

    v11 = ICUnlocalizedString();
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000D86E8;
    v13[3] = &unk_1006493A0;
    v15 = v17;
    v14 = v6;
    v12 = [UIAlertAction actionWithTitle:v11 style:0 handler:v13];
    [v8 addAction:v12];

    [(ICDebuggingViewController *)self presentViewController:v8 animated:1 completion:0];
    _Block_object_dispose(v17, 8);
  }
}

- (void)checkiCloudKeychainSyncStatus:(id)a3
{
  v4 = +[ICNoteContext sharedContext];
  v5 = [v4 managedObjectContext];

  [ICAccount allActiveCloudKitAccountsInContext:v5];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v18 = 0u;
  v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [ICKeychain isSyncAvailableForAccount:v10];
        v12 = [v10 accountName];
        if (v11)
        {
          v13 = @"Healthy";
        }

        else
        {
          v13 = @"Unhealthy";
        }

        [UIAlertController ic_showAlertWithTitle:v12 message:v13 viewController:self];
      }

      v7 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)reindexEverything:(id)a3
{
  v3 = +[ICReindexer reindexer];
  [v3 reindexAllSearchableItemsWithCompletionHandler:0];
}

- (void)logSearchIndex:(id)a3
{
  v3 = dispatch_get_global_queue(2, 0);
  dispatch_async(v3, &stru_1006493C0);
}

- (void)deleteSearchIndex:(id)a3
{
  v3 = objc_alloc_init(ICDebugSpinner);
  [(ICDebugSpinner *)v3 show];
  v4 = +[ICReindexer reindexer];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000D8C14;
  v6[3] = &unk_100646638;
  v7 = v3;
  v5 = v3;
  [v4 deleteAllSearchableItemsWithCompletionHandler:v6];
}

- (void)prefetchHashtagsIndexedByOtherApps:(id)a3
{
  +[ICCrossAppHashtagManager prefetchHashtagDisplayTextsFromOtherApps];
  v3 = os_log_create("com.apple.notes", "Internal");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DEFE8(v3);
  }
}

- (void)logHashtagsIndexedByOtherApps:(id)a3
{
  v3 = +[ICCrossAppHashtagManager hashtagDisplayTextsFromOtherApps];
  v4 = os_log_create("com.apple.notes", "Internal");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DF02C();
  }
}

- (void)createPartiallySupportedSmartFolder:(id)a3
{
  v3 = +[ICNoteContext sharedContext];
  v4 = [v3 managedObjectContext];
  v5 = [ICAccount defaultAccountInContext:v4];
  [ICQuery queryForPinnedNotes:1 allowsRecentlyDeleted:0];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000D8E0C;
  v10 = v9[3] = &unk_100645D40;
  v11 = v5;
  v12 = v4;
  v6 = v4;
  v7 = v5;
  v8 = v10;
  [v6 performBlockAndWait:v9];
}

- (void)deleteAllTags:(id)a3
{
  v3 = +[ICNoteContext sharedContext];
  v4 = [v3 managedObjectContext];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000D8F28;
  v6[3] = &unk_100645E30;
  v7 = v4;
  v5 = v4;
  [v5 performBlockAndWait:v6];
}

- (void)regenerateStandardizedContentForAllHashtags:(id)a3
{
  v4 = +[ICNoteContext sharedContext];
  v3 = [v4 managedObjectContext];
  [ICHashtag regenerateStandardizedContentForAllHashtagsInContext:v3 hasChanges:0];
}

- (void)regenerateAllAttachmentPreviewImages:(id)a3
{
  v3 = +[ICNoteContext sharedContext];
  v4 = [v3 managedObjectContext];

  [ICAttachmentPreviewImage purgeAllAttachmentPreviewImagesInContext:v4];
  v5 = +[ICAttachmentPreviewGenerator sharedGenerator];
  [v5 generatePreviewsIfNeeded];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D91A0;
  v7[3] = &unk_100645E30;
  v8 = v4;
  v6 = v4;
  [v6 performBlockAndWait:v7];
}

- (void)regenerateAllOCR:(id)a3
{
  v3 = +[ICNoteContext sharedContext];
  v4 = [v3 managedObjectContext];

  [ICAttachmentPreviewGenerator purgeOCRInContext:v4];
  v5 = +[ICAttachmentPreviewGenerator sharedGenerator];
  [v5 generateMissingOrOutdatedAttachmentMetaDataIfNeededInContext:v4];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D9280;
  v7[3] = &unk_100645E30;
  v8 = v4;
  v6 = v4;
  [v6 performBlockAndWait:v7];
}

- (void)regenerateAllImageClassifications:(id)a3
{
  v3 = +[ICNoteContext sharedContext];
  v4 = [v3 managedObjectContext];

  [ICAttachmentPreviewGenerator purgeImageClassificationsInContext:v4];
  v5 = +[ICAttachmentPreviewGenerator sharedGenerator];
  [v5 generateMissingOrOutdatedAttachmentMetaDataIfNeededInContext:v4];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D9360;
  v7[3] = &unk_100645E30;
  v8 = v4;
  v6 = v4;
  [v6 performBlockAndWait:v7];
}

- (void)regenerateAllHandwritingSummaries:(id)a3
{
  v3 = +[ICNoteContext sharedContext];
  v4 = [v3 workerManagedObjectContext];

  [ICAttachment purgeHandwritingSummariesInContext:v4];
  v5 = +[ICPaperSearchIndexer shared];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D9444;
  v7[3] = &unk_100645E30;
  v8 = v4;
  v6 = v4;
  [v5 updateIndexWithManagedObjectContext:v6 completionHandler:v7];
}

- (void)purgeAllHandwritingSummaries:(id)a3
{
  v3 = +[ICNoteContext sharedContext];
  v4 = [v3 workerManagedObjectContext];

  [ICAttachment purgeHandwritingSummariesInContext:v4];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000D958C;
  v6[3] = &unk_100645E30;
  v7 = v4;
  v5 = v4;
  [v5 performBlockAndWait:v6];
}

- (void)regenerateSystemPaperThumbnails:(id)a3
{
  v3 = +[ICSystemPaperThumbnailService sharedService];
  [v3 invalidate];

  v4 = +[ICSystemPaperThumbnailService sharedService];
  [v4 updateIfNeededForNote:0 completion:0];
}

- (void)generateSystemPaperChrome:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_TtC11MobileNotes33ICSystemPaperChromeLayerGenerator);
  v11 = 0;
  v6 = [(ICSystemPaperChromeLayerGenerator *)v5 generateChromeThumbnailsWithError:&v11];
  v7 = v11;
  if (v7)
  {
    v8 = os_log_create("com.apple.notes", "Thumbnails");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1004DF0A0();
    }
  }

  else
  {
    v8 = [[UIActivityViewController alloc] initWithActivityItems:v6 applicationActivities:&__NSArray0__struct];
    v12[0] = UIActivityTypeOpenInIBooks;
    v12[1] = ICActivityTypeShareToNote;
    v12[2] = UIActivityTypeSharePlay;
    v9 = [NSArray arrayWithObjects:v12 count:3];
    [v8 setExcludedActivityTypes:v9];

    v10 = [v8 popoverPresentationController];
    [v10 setSourceView:v4];

    [(ICDebuggingViewController *)self presentViewController:v8 animated:1 completion:0];
  }
}

- (void)bluetoothKeyboardHint:(id)a3
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = ICBluetoothKeyboardHintViewControllerForceShowDefaultsKey;
  v5 = [v3 BOOLForKey:ICBluetoothKeyboardHintViewControllerForceShowDefaultsKey];

  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 setBool:v5 ^ 1 forKey:v4];
}

- (void)removeWhatsNewVersion:(id)a3
{
  v4 = +[NSUserDefaults standardUserDefaults];
  v3 = +[ICStartupController lastShownStartupDefaultsKey];
  [v4 removeObjectForKey:v3];
}

- (void)setWhatsNewToCurrentOS:(id)a3
{
  v3 = +[NSProcessInfo processInfo];
  v4 = v3;
  if (v3)
  {
    [v3 operatingSystemVersion];
  }

  v5 = [NSNumber numberWithInteger:0];
  v11[0] = v5;
  v6 = [NSNumber numberWithInteger:0];
  v11[1] = v6;
  v7 = [NSNumber numberWithInteger:0];
  v11[2] = v7;
  v8 = [NSArray arrayWithObjects:v11 count:3];

  v9 = +[NSUserDefaults standardUserDefaults];
  v10 = +[ICStartupController lastShownStartupDefaultsKey];
  [v9 setObject:v8 forKey:v10];
}

- (void)setWhatsNewToIOS9:(id)a3
{
  v4 = +[NSUserDefaults standardUserDefaults];
  v3 = +[ICStartupController lastShownStartupDefaultsKey];
  [v4 setObject:&off_10066E320 forKey:v3];
}

- (void)testAppRemoval:(id)a3
{
  v4 = [UIAlertController alertControllerWithTitle:@"Test Notes App Removal" message:@"This will delete all Notes app data. Local notes will be lost!" preferredStyle:1];
  v5 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:0];
  [v4 addAction:v5];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D9BA0;
  v7[3] = &unk_100647218;
  v7[4] = self;
  v6 = [UIAlertAction actionWithTitle:@"Continue" style:0 handler:v7];
  [v4 addAction:v6];

  [(ICDebuggingViewController *)self presentViewController:v4 animated:1 completion:0];
}

@end