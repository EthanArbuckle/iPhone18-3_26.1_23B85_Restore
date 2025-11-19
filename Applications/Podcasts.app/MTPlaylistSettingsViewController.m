@interface MTPlaylistSettingsViewController
+ (CGSize)podcastImageSize;
+ (id)cellClassForSettingType:(int64_t)a3 inGroupWithIdentifier:(id)a4;
- (BOOL)isPresentedModally;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (MTPlaylistSettingsViewController)initWithPlaylistUuid:(id)a3 library:(id)a4;
- (MTPlaylistSettingsViewControllerDelegate)delegate;
- (double)heightForRowWithDescription:(id)a3 inGroupWithIdentifier:(id)a4;
- (id)metricDataSource;
- (id)newSettingsController;
- (id)titleForCurrentPodcasts;
- (void)_updateUngroupedListSetting:(BOOL)a3;
- (void)configureCell:(id)a3 atIndexPath:(id)a4 withDescription:(id)a5 inGroupWithIdentifier:(id)a6;
- (void)deletePlaylist:(id)a3;
- (void)removePodcastAtIndex:(unint64_t)a3;
- (void)saveNewPlaylists;
- (void)selectAppearancePathIfNecessary;
- (void)showAddPodcastsSheet;
- (void)syncControllerOperationCompleted:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)updateContainerOrder:(int)a3;
- (void)updatePodcastCount;
- (void)updateSetting:(id)a3 value:(id)a4;
- (void)updateShowSetting:(int64_t)a3 forSettings:(id)a4;
- (void)updateTitle:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MTPlaylistSettingsViewController

- (double)heightForRowWithDescription:(id)a3 inGroupWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToString:@"podcasts"] && (isTV() & 1) == 0 || (objc_msgSend(v6, "identifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"played"), v8, v9))
  {
    v10 = UITableViewAutomaticDimension;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = MTPlaylistSettingsViewController;
    [(MTGenericSettingsViewController *)&v13 heightForRowWithDescription:v6 inGroupWithIdentifier:v7];
    v10 = v11;
  }

  return v10;
}

- (MTPlaylistSettingsViewController)initWithPlaylistUuid:(id)a3 library:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MTPlaylistSettingsViewController;
  v9 = [(MTGenericSettingsViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_userDriven = 1;
    objc_storeStrong(&v9->_playlistUuid, a3);
    objc_storeStrong(&v10->_library, a4);
  }

  return v10;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = MTPlaylistSettingsViewController;
  [(MTGenericSettingsViewController *)&v4 viewDidLoad];
  v3 = [(MTPlaylistSettingsViewController *)self newSettingsController];
  [(MTGenericSettingsViewController *)self setSettingsController:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MTPlaylistSettingsViewController;
  [(MTGenericSettingsViewController *)&v4 viewWillAppear:a3];
  [(MTPlaylistSettingsViewController *)self selectAppearancePathIfNecessary];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v6.receiver = self;
  v6.super_class = MTPlaylistSettingsViewController;
  [(MTPlaylistSettingsViewController *)&v6 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  v5 = [(MTPlaylistSettingsViewController *)self deleteStationAlertController];
  [v5 dismissViewControllerAnimated:1 completion:0];
}

- (void)selectAppearancePathIfNecessary
{
  v3 = [(MTPlaylistSettingsViewController *)self appearanceSelectedPath];

  if (v3)
  {
    [(MTPlaylistSettingsViewController *)self setUserDriven:0];
    v4 = [(MTPlaylistSettingsViewController *)self tableView];
    v5 = [(MTPlaylistSettingsViewController *)self appearanceSelectedPath];
    [(MTGenericSettingsViewController *)self tableView:v4 didSelectRowAtIndexPath:v5];

    [(MTPlaylistSettingsViewController *)self setUserDriven:1];

    [(MTPlaylistSettingsViewController *)self setAppearanceSelectedPath:0];
  }
}

- (BOOL)isPresentedModally
{
  v3 = [(MTPlaylistSettingsViewController *)self presentingViewController];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(MTPlaylistSettingsViewController *)self navigationController];
    v6 = [v5 presentingViewController];
    v7 = [v6 presentedViewController];
    v8 = [(MTPlaylistSettingsViewController *)self navigationController];
    v4 = v7 == v8;
  }

  return v4;
}

- (void)deletePlaylist:(id)a3
{
  v4 = a3;
  v5 = +[MTDB sharedInstance];
  v6 = [v5 mainQueueContext];

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100008B3C;
  v28 = sub_10003B574;
  v29 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10011C7E4;
  v20[3] = &unk_1004D9040;
  v23 = &v24;
  v7 = v6;
  v21 = v7;
  v22 = self;
  [v7 performBlockAndWait:v20];
  v8 = [(MTPlaylistSettingsViewController *)self isPresentedModally];
  objc_initWeak(&location, self);
  v9 = v25[5];
  v10 = [(MTPlaylistSettingsViewController *)self library];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10011C854;
  v16 = &unk_1004DCF68;
  v18 = v8;
  objc_copyWeak(&v17, &location);
  v11 = [UIAlertController controllerForDeletingStation:v9 fromLibrary:v10 deletionCompletion:&v13];
  [(MTPlaylistSettingsViewController *)self setDeleteStationAlertController:v11, v13, v14, v15, v16];

  v12 = [(MTPlaylistSettingsViewController *)self deleteStationAlertController];
  [(MTPlaylistSettingsViewController *)self presentViewController:v12 animated:1 completion:0];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v24, 8);
}

+ (id)cellClassForSettingType:(int64_t)a3 inGroupWithIdentifier:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 == 5 && [v6 isEqualToString:@"podcasts"])
  {
    isTV();
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
  }

  else
  {
    v12.receiver = a1;
    v12.super_class = &OBJC_METACLASS___MTPlaylistSettingsViewController;
    v9 = objc_msgSendSuper2(&v12, "cellClassForSettingType:inGroupWithIdentifier:", a3, v7);
  }

  v10 = v9;

  return v10;
}

- (void)configureCell:(id)a3 atIndexPath:(id)a4 withDescription:(id)a5 inGroupWithIdentifier:(id)a6
{
  v10 = a3;
  v11 = a5;
  v26.receiver = self;
  v26.super_class = MTPlaylistSettingsViewController;
  v12 = a6;
  [(MTiOSGenericSettingsViewController *)&v26 configureCell:v10 atIndexPath:a4 withDescription:v11 inGroupWithIdentifier:v12];
  LODWORD(a4) = [v12 isEqualToString:{@"podcasts", v26.receiver, v26.super_class}];

  if (a4 && [v11 type] == 5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v11 identifier];
      v14 = [v10 artworkView];
      [v14 setArtworkKey:v13];
    }

    else
    {
      [objc_opt_class() podcastImageSize];
      v16 = v15;
      v18 = v17;
      v13 = [v11 identifier];
      v19 = +[MTImageStore defaultStore];
      v14 = [v19 imageForKey:v13 size:{v16, v18}];

      if (!v14)
      {
        v20 = +[MTImageStore defaultStore];
        v14 = [v20 imageForKey:kMTLibraryDefaultImageKey size:{v16, v18}];
      }

      v21 = [v10 imageView];
      [v21 setImage:v14];
    }
  }

  v22 = [v11 identifier];
  v23 = [v22 isEqualToString:@"add"];

  if (v23)
  {
    [v10 setAccessoryType:1];
  }

  v24 = [v11 identifier];
  if ([v24 isEqualToString:@"played"])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [v10 setMaximumNumberOfTextLines:3];
    }
  }

  else
  {
  }
}

- (id)newSettingsController
{
  v3 = +[MTDB sharedInstance];
  v4 = [v3 mainQueueContext];

  v5 = objc_alloc_init(MTSettingsController);
  objc_initWeak(&location, self);
  v6 = +[NSMutableDictionary dictionary];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10011CDAC;
  v11[3] = &unk_1004DD0C0;
  v7 = v4;
  v12 = v7;
  v13 = self;
  objc_copyWeak(&v15, &location);
  v8 = v6;
  v14 = v8;
  [v7 performBlockAndWait:v11];
  [(MTSettingsController *)v5 setGroups:v8];
  v17[0] = @"station";
  v17[1] = @"include";
  v17[2] = @"podcasts";
  v9 = [NSArray arrayWithObjects:v17 count:3];
  [(MTSettingsController *)v5 setOrder:v9];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v5;
}

- (id)titleForCurrentPodcasts
{
  v3 = +[MTDB sharedInstance];
  v4 = [v3 mainOrPrivateContext];

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10011E46C;
  v14[3] = &unk_1004D91D0;
  v5 = v4;
  v15 = v5;
  v16 = self;
  v17 = &v28;
  v18 = &v24;
  v19 = &v20;
  [v5 performBlockAndWait:v14];
  if (*(v29 + 24) == 1)
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"PODCAST_ALL" value:&stru_1004F3018 table:0];
  }

  else
  {
    v8 = +[NSBundle mainBundle];
    v6 = [v8 localizedStringForKey:@"%@ of %@" value:&stru_1004F3018 table:0];

    v9 = [NSNumber numberWithUnsignedInteger:v25[3]];
    v10 = IMAccessibilityLocalizedNumber();
    v11 = [NSNumber numberWithUnsignedInteger:v21[3]];
    v12 = IMAccessibilityLocalizedNumber();
    v7 = [NSString stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@ %@" error:0, v10, v12];
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);

  return v7;
}

- (void)updatePodcastCount
{
  v4 = [(MTGenericSettingsViewController *)self settingsController];
  v3 = [(MTPlaylistSettingsViewController *)self titleForCurrentPodcasts];
  [v4 setValue:v3 forSettingWithIdentifier:@"add" inGroup:@"podcasts"];
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(MTGenericSettingsViewController *)self settingsController];
  v7 = [v6 order];
  v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];

  v9 = [(MTGenericSettingsViewController *)self settingsController];
  v10 = [v9 groups];
  v11 = [v10 objectForKeyedSubscript:v8];

  if ([v8 isEqualToString:@"podcasts"])
  {
    v12 = [v11 groupSettings];
    v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];

    v14 = [v13 identifier];
    v15 = [v14 isEqualToString:@"add"];

    v16 = v15 ^ 1;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    v7 = [a5 row] - 1;

    [(MTPlaylistSettingsViewController *)self removePodcastAtIndex:v7];
  }
}

- (void)removePodcastAtIndex:(unint64_t)a3
{
  v5 = +[MTDB sharedInstance];
  v6 = [v5 mainOrPrivateContext];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10011E858;
  v11[3] = &unk_1004D86D8;
  v12 = v6;
  v13 = self;
  v14 = a3;
  v7 = v6;
  [v7 performBlockAndWaitWithSave:v11];
  v8 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v8 setIsPlaylistSyncDirty:1];

  v9 = [(MTGenericSettingsViewController *)self settingsController];
  [v9 removeSettingAtIndex:a3 + 1 fromGroupWithIdentifier:@"podcasts"];

  [(MTPlaylistSettingsViewController *)self updatePodcastCount];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained playlistSettingsDidChangeSetting:self];
}

- (void)updateShowSetting:(int64_t)a3 forSettings:(id)a4
{
  v6 = a4;
  v7 = +[MTDB sharedInstance];
  v8 = [v7 mainOrPrivateContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10011EA28;
  v13[3] = &unk_1004D86D8;
  v14 = v8;
  v15 = v6;
  v16 = a3;
  v9 = v6;
  v10 = v8;
  [v10 performBlockAndWaitWithSave:v13];
  v11 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v11 setIsPlaylistSyncDirty:1];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained playlistSettingsDidChangeSetting:self];
}

- (void)updateSetting:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MTDB sharedInstance];
  v9 = [v8 mainOrPrivateContext];

  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10011EC28;
  v18 = &unk_1004D8DA8;
  v19 = v9;
  v20 = self;
  v21 = v7;
  v22 = v6;
  v10 = v6;
  v11 = v7;
  v12 = v9;
  [v12 performBlockAndWaitWithSave:&v15];
  v13 = [_TtC18PodcastsFoundation18SyncKeysRepository shared:v15];
  [v13 setIsPlaylistSyncDirty:1];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained playlistSettingsDidChangeSetting:self];
}

- (void)updateContainerOrder:(int)a3
{
  v5 = +[MTDB sharedInstance];
  v6 = [v5 mainOrPrivateContext];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10011EE30;
  v10[3] = &unk_1004DD110;
  v11 = v6;
  v12 = self;
  v13 = a3;
  v7 = v6;
  [v7 performBlockAndWaitWithSave:v10];
  v8 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v8 setIsPlaylistSyncDirty:1];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained playlistSettingsDidChangeSetting:self];
}

- (void)showAddPodcastsSheet
{
  v3 = objc_opt_new();
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100008B3C;
  v30 = sub_10003B574;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v4 = +[MTDB sharedInstance];
  v5 = [v4 mainOrPrivateContext];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10011F198;
  v16[3] = &unk_1004DC410;
  v6 = v5;
  v17 = v6;
  v18 = self;
  v20 = &v26;
  v21 = &v22;
  v7 = v3;
  v19 = v7;
  [v6 performBlockAndWait:v16];
  v8 = +[MTPodcast sortDescriptorsForAllPodcasts];
  v9 = [MTPlaylistSelectPodcastListViewController alloc];
  v10 = +[MTPodcast predicateForNotHiddenNotImplicitlyFollowedPodcasts];
  v11 = [(MTFetchedTableViewController *)v9 initWithEntityName:kMTPodcastEntityName predicate:v10 sortDescriptors:v8];

  [(MTPlaylistSelectPodcastListViewController *)v11 setSaveDelegate:self];
  [(MTPlaylistSelectPodcastListViewController *)v11 setPlaylistName:v27[5]];
  [(MTBasePodcastListViewController *)v11 setDelegate:self];
  [(MTPlaylistSelectPodcastListViewController *)v11 setPodcastUuids:v7];
  [(MTPlaylistSelectPodcastListViewController *)v11 setAllPodcastsSelected:*(v23 + 24)];
  v12 = [(MTPlaylistSettingsViewController *)self playlistUuid];
  [(MTPlaylistSelectPodcastListViewController *)v11 setPlaylistUuid:v12];

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"Podcasts Header" value:&stru_1004F3018 table:0];
  [(MTPlaylistSelectPodcastListViewController *)v11 setTitle:v14];

  v15 = [(MTPlaylistSettingsViewController *)self navigationController];
  [v15 pushViewController:v11 animated:{-[MTPlaylistSettingsViewController userDriven](self, "userDriven")}];

  [(MTPlaylistSettingsViewController *)self setAddPodcastsViewController:v11];
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
}

- (void)saveNewPlaylists
{
  v3 = +[MTDB sharedInstance];
  v4 = [v3 mainOrPrivateContext];

  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10011F418;
  v6[3] = &unk_1004DA270;
  v5 = v4;
  v7 = v5;
  v8 = self;
  objc_copyWeak(&v9, &location);
  [v5 performBlock:v6];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

- (void)_updateUngroupedListSetting:(BOOL)a3
{
  v3 = a3;
  v5 = +[MTDB sharedInstance];
  v6 = [v5 mainOrPrivateContext];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10011F884;
  v10[3] = &unk_1004DA0E0;
  v11 = v6;
  v12 = self;
  v13 = v3;
  v7 = v6;
  [v7 performBlockAndWaitWithSave:v10];
  v8 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v8 setIsPlaylistSyncDirty:1];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained playlistSettings:self didChangeLayout:!v3];
}

- (id)metricDataSource
{
  v3 = +[MTDB sharedInstance];
  v4 = [v3 mainOrPrivateContext];

  v5 = [(MTPlaylistSettingsViewController *)self playlistUuid];
  v6 = [v4 playlistForUuid:v5];

  return v6;
}

- (void)syncControllerOperationCompleted:(id)a3
{
  v4 = [(MTPlaylistSettingsViewController *)self newSettingsController];
  [(MTGenericSettingsViewController *)self setSettingsController:v4];
}

- (void)updateTitle:(id)a3
{
  v4 = a3;
  v5 = +[MTDB sharedInstance];
  v6 = [v5 mainOrPrivateContext];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10011FB38;
  v11[3] = &unk_1004D94C8;
  v12 = v6;
  v13 = self;
  v14 = v4;
  v7 = v4;
  v8 = v6;
  [v8 performBlockAndWaitWithSave:v11];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained playlistSettingsDidChangeSetting:self];

  v10 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v10 setIsPlaylistSyncDirty:1];
}

+ (CGSize)podcastImageSize
{
  v2 = 30.0;
  v3 = 30.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (MTPlaylistSettingsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end