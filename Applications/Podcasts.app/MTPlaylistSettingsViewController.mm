@interface MTPlaylistSettingsViewController
+ (CGSize)podcastImageSize;
+ (id)cellClassForSettingType:(int64_t)type inGroupWithIdentifier:(id)identifier;
- (BOOL)isPresentedModally;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (MTPlaylistSettingsViewController)initWithPlaylistUuid:(id)uuid library:(id)library;
- (MTPlaylistSettingsViewControllerDelegate)delegate;
- (double)heightForRowWithDescription:(id)description inGroupWithIdentifier:(id)identifier;
- (id)metricDataSource;
- (id)newSettingsController;
- (id)titleForCurrentPodcasts;
- (void)_updateUngroupedListSetting:(BOOL)setting;
- (void)configureCell:(id)cell atIndexPath:(id)path withDescription:(id)description inGroupWithIdentifier:(id)identifier;
- (void)deletePlaylist:(id)playlist;
- (void)removePodcastAtIndex:(unint64_t)index;
- (void)saveNewPlaylists;
- (void)selectAppearancePathIfNecessary;
- (void)showAddPodcastsSheet;
- (void)syncControllerOperationCompleted:(id)completed;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)updateContainerOrder:(int)order;
- (void)updatePodcastCount;
- (void)updateSetting:(id)setting value:(id)value;
- (void)updateShowSetting:(int64_t)setting forSettings:(id)settings;
- (void)updateTitle:(id)title;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation MTPlaylistSettingsViewController

- (double)heightForRowWithDescription:(id)description inGroupWithIdentifier:(id)identifier
{
  descriptionCopy = description;
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"podcasts"] && (isTV() & 1) == 0 || (objc_msgSend(descriptionCopy, "identifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"played"), v8, v9))
  {
    v10 = UITableViewAutomaticDimension;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = MTPlaylistSettingsViewController;
    [(MTGenericSettingsViewController *)&v13 heightForRowWithDescription:descriptionCopy inGroupWithIdentifier:identifierCopy];
    v10 = v11;
  }

  return v10;
}

- (MTPlaylistSettingsViewController)initWithPlaylistUuid:(id)uuid library:(id)library
{
  uuidCopy = uuid;
  libraryCopy = library;
  v12.receiver = self;
  v12.super_class = MTPlaylistSettingsViewController;
  v9 = [(MTGenericSettingsViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_userDriven = 1;
    objc_storeStrong(&v9->_playlistUuid, uuid);
    objc_storeStrong(&v10->_library, library);
  }

  return v10;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = MTPlaylistSettingsViewController;
  [(MTGenericSettingsViewController *)&v4 viewDidLoad];
  newSettingsController = [(MTPlaylistSettingsViewController *)self newSettingsController];
  [(MTGenericSettingsViewController *)self setSettingsController:newSettingsController];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MTPlaylistSettingsViewController;
  [(MTGenericSettingsViewController *)&v4 viewWillAppear:appear];
  [(MTPlaylistSettingsViewController *)self selectAppearancePathIfNecessary];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v6.receiver = self;
  v6.super_class = MTPlaylistSettingsViewController;
  [(MTPlaylistSettingsViewController *)&v6 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  deleteStationAlertController = [(MTPlaylistSettingsViewController *)self deleteStationAlertController];
  [deleteStationAlertController dismissViewControllerAnimated:1 completion:0];
}

- (void)selectAppearancePathIfNecessary
{
  appearanceSelectedPath = [(MTPlaylistSettingsViewController *)self appearanceSelectedPath];

  if (appearanceSelectedPath)
  {
    [(MTPlaylistSettingsViewController *)self setUserDriven:0];
    tableView = [(MTPlaylistSettingsViewController *)self tableView];
    appearanceSelectedPath2 = [(MTPlaylistSettingsViewController *)self appearanceSelectedPath];
    [(MTGenericSettingsViewController *)self tableView:tableView didSelectRowAtIndexPath:appearanceSelectedPath2];

    [(MTPlaylistSettingsViewController *)self setUserDriven:1];

    [(MTPlaylistSettingsViewController *)self setAppearanceSelectedPath:0];
  }
}

- (BOOL)isPresentedModally
{
  presentingViewController = [(MTPlaylistSettingsViewController *)self presentingViewController];
  if (presentingViewController)
  {
    v4 = 1;
  }

  else
  {
    navigationController = [(MTPlaylistSettingsViewController *)self navigationController];
    presentingViewController2 = [navigationController presentingViewController];
    presentedViewController = [presentingViewController2 presentedViewController];
    navigationController2 = [(MTPlaylistSettingsViewController *)self navigationController];
    v4 = presentedViewController == navigationController2;
  }

  return v4;
}

- (void)deletePlaylist:(id)playlist
{
  playlistCopy = playlist;
  v5 = +[MTDB sharedInstance];
  mainQueueContext = [v5 mainQueueContext];

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
  v7 = mainQueueContext;
  v21 = v7;
  selfCopy = self;
  [v7 performBlockAndWait:v20];
  isPresentedModally = [(MTPlaylistSettingsViewController *)self isPresentedModally];
  objc_initWeak(&location, self);
  v9 = v25[5];
  library = [(MTPlaylistSettingsViewController *)self library];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10011C854;
  v16 = &unk_1004DCF68;
  v18 = isPresentedModally;
  objc_copyWeak(&v17, &location);
  v11 = [UIAlertController controllerForDeletingStation:v9 fromLibrary:library deletionCompletion:&v13];
  [(MTPlaylistSettingsViewController *)self setDeleteStationAlertController:v11, v13, v14, v15, v16];

  deleteStationAlertController = [(MTPlaylistSettingsViewController *)self deleteStationAlertController];
  [(MTPlaylistSettingsViewController *)self presentViewController:deleteStationAlertController animated:1 completion:0];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v24, 8);
}

+ (id)cellClassForSettingType:(int64_t)type inGroupWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (type == 5 && [identifierCopy isEqualToString:@"podcasts"])
  {
    isTV();
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
  }

  else
  {
    v12.receiver = self;
    v12.super_class = &OBJC_METACLASS___MTPlaylistSettingsViewController;
    v9 = objc_msgSendSuper2(&v12, "cellClassForSettingType:inGroupWithIdentifier:", type, v7);
  }

  v10 = v9;

  return v10;
}

- (void)configureCell:(id)cell atIndexPath:(id)path withDescription:(id)description inGroupWithIdentifier:(id)identifier
{
  cellCopy = cell;
  descriptionCopy = description;
  v26.receiver = self;
  v26.super_class = MTPlaylistSettingsViewController;
  identifierCopy = identifier;
  [(MTiOSGenericSettingsViewController *)&v26 configureCell:cellCopy atIndexPath:path withDescription:descriptionCopy inGroupWithIdentifier:identifierCopy];
  LODWORD(path) = [identifierCopy isEqualToString:{@"podcasts", v26.receiver, v26.super_class}];

  if (path && [descriptionCopy type] == 5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [descriptionCopy identifier];
      artworkView = [cellCopy artworkView];
      [artworkView setArtworkKey:identifier];
    }

    else
    {
      [objc_opt_class() podcastImageSize];
      v16 = v15;
      v18 = v17;
      identifier = [descriptionCopy identifier];
      v19 = +[MTImageStore defaultStore];
      artworkView = [v19 imageForKey:identifier size:{v16, v18}];

      if (!artworkView)
      {
        v20 = +[MTImageStore defaultStore];
        artworkView = [v20 imageForKey:kMTLibraryDefaultImageKey size:{v16, v18}];
      }

      imageView = [cellCopy imageView];
      [imageView setImage:artworkView];
    }
  }

  identifier2 = [descriptionCopy identifier];
  v23 = [identifier2 isEqualToString:@"add"];

  if (v23)
  {
    [cellCopy setAccessoryType:1];
  }

  identifier3 = [descriptionCopy identifier];
  if ([identifier3 isEqualToString:@"played"])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [cellCopy setMaximumNumberOfTextLines:3];
    }
  }

  else
  {
  }
}

- (id)newSettingsController
{
  v3 = +[MTDB sharedInstance];
  mainQueueContext = [v3 mainQueueContext];

  v5 = objc_alloc_init(MTSettingsController);
  objc_initWeak(&location, self);
  v6 = +[NSMutableDictionary dictionary];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10011CDAC;
  v11[3] = &unk_1004DD0C0;
  v7 = mainQueueContext;
  v12 = v7;
  selfCopy = self;
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
  mainOrPrivateContext = [v3 mainOrPrivateContext];

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
  v5 = mainOrPrivateContext;
  v15 = v5;
  selfCopy = self;
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
  settingsController = [(MTGenericSettingsViewController *)self settingsController];
  titleForCurrentPodcasts = [(MTPlaylistSettingsViewController *)self titleForCurrentPodcasts];
  [settingsController setValue:titleForCurrentPodcasts forSettingWithIdentifier:@"add" inGroup:@"podcasts"];
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  pathCopy = path;
  settingsController = [(MTGenericSettingsViewController *)self settingsController];
  order = [settingsController order];
  v8 = [order objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  settingsController2 = [(MTGenericSettingsViewController *)self settingsController];
  groups = [settingsController2 groups];
  v11 = [groups objectForKeyedSubscript:v8];

  if ([v8 isEqualToString:@"podcasts"])
  {
    groupSettings = [v11 groupSettings];
    v13 = [groupSettings objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    identifier = [v13 identifier];
    v15 = [identifier isEqualToString:@"add"];

    v16 = v15 ^ 1;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    v7 = [path row] - 1;

    [(MTPlaylistSettingsViewController *)self removePodcastAtIndex:v7];
  }
}

- (void)removePodcastAtIndex:(unint64_t)index
{
  v5 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v5 mainOrPrivateContext];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10011E858;
  v11[3] = &unk_1004D86D8;
  v12 = mainOrPrivateContext;
  selfCopy = self;
  indexCopy = index;
  v7 = mainOrPrivateContext;
  [v7 performBlockAndWaitWithSave:v11];
  v8 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v8 setIsPlaylistSyncDirty:1];

  settingsController = [(MTGenericSettingsViewController *)self settingsController];
  [settingsController removeSettingAtIndex:index + 1 fromGroupWithIdentifier:@"podcasts"];

  [(MTPlaylistSettingsViewController *)self updatePodcastCount];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained playlistSettingsDidChangeSetting:self];
}

- (void)updateShowSetting:(int64_t)setting forSettings:(id)settings
{
  settingsCopy = settings;
  v7 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v7 mainOrPrivateContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10011EA28;
  v13[3] = &unk_1004D86D8;
  v14 = mainOrPrivateContext;
  v15 = settingsCopy;
  settingCopy = setting;
  v9 = settingsCopy;
  v10 = mainOrPrivateContext;
  [v10 performBlockAndWaitWithSave:v13];
  v11 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v11 setIsPlaylistSyncDirty:1];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained playlistSettingsDidChangeSetting:self];
}

- (void)updateSetting:(id)setting value:(id)value
{
  settingCopy = setting;
  valueCopy = value;
  v8 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v8 mainOrPrivateContext];

  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10011EC28;
  v18 = &unk_1004D8DA8;
  v19 = mainOrPrivateContext;
  selfCopy = self;
  v21 = valueCopy;
  v22 = settingCopy;
  v10 = settingCopy;
  v11 = valueCopy;
  v12 = mainOrPrivateContext;
  [v12 performBlockAndWaitWithSave:&v15];
  v13 = [_TtC18PodcastsFoundation18SyncKeysRepository shared:v15];
  [v13 setIsPlaylistSyncDirty:1];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained playlistSettingsDidChangeSetting:self];
}

- (void)updateContainerOrder:(int)order
{
  v5 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v5 mainOrPrivateContext];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10011EE30;
  v10[3] = &unk_1004DD110;
  v11 = mainOrPrivateContext;
  selfCopy = self;
  orderCopy = order;
  v7 = mainOrPrivateContext;
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
  mainOrPrivateContext = [v4 mainOrPrivateContext];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10011F198;
  v16[3] = &unk_1004DC410;
  v6 = mainOrPrivateContext;
  v17 = v6;
  selfCopy = self;
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
  playlistUuid = [(MTPlaylistSettingsViewController *)self playlistUuid];
  [(MTPlaylistSelectPodcastListViewController *)v11 setPlaylistUuid:playlistUuid];

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"Podcasts Header" value:&stru_1004F3018 table:0];
  [(MTPlaylistSelectPodcastListViewController *)v11 setTitle:v14];

  navigationController = [(MTPlaylistSettingsViewController *)self navigationController];
  [navigationController pushViewController:v11 animated:{-[MTPlaylistSettingsViewController userDriven](self, "userDriven")}];

  [(MTPlaylistSettingsViewController *)self setAddPodcastsViewController:v11];
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
}

- (void)saveNewPlaylists
{
  v3 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v3 mainOrPrivateContext];

  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10011F418;
  v6[3] = &unk_1004DA270;
  v5 = mainOrPrivateContext;
  v7 = v5;
  selfCopy = self;
  objc_copyWeak(&v9, &location);
  [v5 performBlock:v6];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

- (void)_updateUngroupedListSetting:(BOOL)setting
{
  settingCopy = setting;
  v5 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v5 mainOrPrivateContext];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10011F884;
  v10[3] = &unk_1004DA0E0;
  v11 = mainOrPrivateContext;
  selfCopy = self;
  v13 = settingCopy;
  v7 = mainOrPrivateContext;
  [v7 performBlockAndWaitWithSave:v10];
  v8 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v8 setIsPlaylistSyncDirty:1];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained playlistSettings:self didChangeLayout:!settingCopy];
}

- (id)metricDataSource
{
  v3 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v3 mainOrPrivateContext];

  playlistUuid = [(MTPlaylistSettingsViewController *)self playlistUuid];
  v6 = [mainOrPrivateContext playlistForUuid:playlistUuid];

  return v6;
}

- (void)syncControllerOperationCompleted:(id)completed
{
  newSettingsController = [(MTPlaylistSettingsViewController *)self newSettingsController];
  [(MTGenericSettingsViewController *)self setSettingsController:newSettingsController];
}

- (void)updateTitle:(id)title
{
  titleCopy = title;
  v5 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v5 mainOrPrivateContext];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10011FB38;
  v11[3] = &unk_1004D94C8;
  v12 = mainOrPrivateContext;
  selfCopy = self;
  v14 = titleCopy;
  v7 = titleCopy;
  v8 = mainOrPrivateContext;
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