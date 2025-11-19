@interface HPRFSessionTrackerMusicViewController
+ (BOOL)didSelectWorkoutMusicPlaylist;
+ (id)selectedMusicViewString;
- (HPRFSessionTrackerMusicViewController)init;
- (id)applicationBundleIdentifier;
- (id)bundle;
- (id)localizedPaneTitle;
- (id)specifiers;
- (void)_setWorkoutPlaylistID:(id)a3;
- (void)dealloc;
- (void)getAllPlaylistsWithCompletion:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation HPRFSessionTrackerMusicViewController

+ (BOOL)didSelectWorkoutMusicPlaylist
{
  v2 = +[NMSMediaPinningManager sharedManager];
  v3 = [v2 workoutPlaylistID];
  v4 = v3 != 0;

  return v4;
}

+ (id)selectedMusicViewString
{
  v2 = [a1 didSelectWorkoutMusicPlaylist];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = v3;
  if (v2)
  {
    v5 = @"MUSIC_ENABLED";
  }

  else
  {
    v5 = @"MUSIC_NONE";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_35B68 table:@"SessionTrackerAppSettings"];

  return v6;
}

- (HPRFSessionTrackerMusicViewController)init
{
  v8.receiver = self;
  v8.super_class = HPRFSessionTrackerMusicViewController;
  v2 = [(HPRFSessionTrackerMusicViewController *)&v8 init];
  if (v2)
  {
    v3 = +[NMSMediaPinningManager sharedManager];
    v4 = [v3 workoutPlaylistID];
    selectedPlaylistId = v2->_selectedPlaylistId;
    v2->_selectedPlaylistId = v4;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_33D0, kNLSessionTrackerAppPreferencesChangedNotification, 0, 0);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, kNLSessionTrackerAppPreferencesChangedNotification, 0);
  v4.receiver = self;
  v4.super_class = HPRFSessionTrackerMusicViewController;
  [(HPRFSessionTrackerMusicViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = HPRFSessionTrackerMusicViewController;
  [(HPRFSessionTrackerMusicViewController *)&v6 viewDidLoad];
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_3624;
  v3[3] = &unk_34F60;
  objc_copyWeak(&v4, &location);
  [(HPRFSessionTrackerMusicViewController *)self getAllPlaylistsWithCompletion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (id)localizedPaneTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"MUSIC_AUTOSTART_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];

  return v3;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = objc_alloc_init(PSSpecifier);
    [v6 setCellType:0];
    v7 = PSIsRadioGroupKey;
    [v6 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    [v6 setIdentifier:@"MUSIC_AUTOSTART_GROUP_ID"];
    [v5 addObject:v6];
    v8 = objc_alloc_init(PSSpecifier);
    [v8 setCellType:3];
    [v8 setIdentifier:@"NONE_AUTOSTART_ID"];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"MUSIC_NONE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    [v8 setName:v10];

    [v5 addObject:v8];
    v11 = [(HPRFSessionTrackerMusicViewController *)self localizedPaneTitle];
    [(HPRFSessionTrackerMusicViewController *)self setTitle:v11];

    v12 = objc_alloc_init(PSSpecifier);
    [v12 setCellType:0];
    [v12 setProperty:&__kCFBooleanTrue forKey:v7];
    [v12 setIdentifier:@"MUSIC_PLAYLIST_GROUP_ID"];
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"PLAYLISTS" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    [v12 setName:v14];

    [v5 addObject:v12];
    if (self->_userPlaylistSpecifiers)
    {
      [v5 addObjectsFromArray:?];
    }

    if (self->_selectedPlaylistId)
    {
      v15 = [NSString stringWithFormat:@"%@", self->_selectedPlaylistId];
      v16 = [v5 specifierForID:v15];
      [v12 setProperty:v16 forKey:PSRadioGroupCheckedSpecifierKey];
    }

    else
    {
      v15 = [v5 specifierForID:@"MUSIC_AUTOSTART_GROUP_ID"];
      [v15 setProperty:v8 forKey:PSRadioGroupCheckedSpecifierKey];
    }

    v17 = *&self->BPSNotificationAppController_opaque[v3];
    *&self->BPSNotificationAppController_opaque[v3] = v5;

    v4 = *&self->BPSNotificationAppController_opaque[v3];
  }

  return v4;
}

- (void)getAllPlaylistsWithCompletion:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MPModelLibraryRequest);
  v5 = [MPModelSong kindWithVariants:1];
  v19 = v5;
  v6 = [NSArray arrayWithObjects:&v19 count:1];
  v7 = [MPModelPlaylistEntry kindWithKinds:v6];

  v8 = [MPModelPlaylist kindWithVariants:19 playlistEntryKind:v7 options:0];
  [v4 setItemKind:v8];

  v9 = MPModelPropertyPlaylistName;
  v18 = MPModelPropertyPlaylistName;
  v10 = [NSArray arrayWithObjects:&v18 count:1];
  v11 = [MPPropertySet propertySetWithProperties:v10];
  [v4 setItemProperties:v11];

  v12 = [NSSortDescriptor sortDescriptorWithKey:v9 ascending:1];
  v17 = v12;
  v13 = [NSArray arrayWithObjects:&v17 count:1];
  [v4 setItemSortDescriptors:v13];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_3D20;
  v15[3] = &unk_34FB0;
  v16 = v3;
  v14 = v3;
  [v4 performWithResponseHandler:v15];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HPRFSessionTrackerMusicViewController *)self indexForIndexPath:v6];
  v9 = [*&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  v10 = [v9 identifier];
  v11 = [v10 isEqualToString:@"NONE_AUTOSTART_ID"];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = [v9 propertyForKey:@"MusicSpecifierPropertyPlaylistID"];
  }

  [(HPRFSessionTrackerMusicViewController *)self _setWorkoutPlaylistID:v12];
  selectedPlaylistId = self->_selectedPlaylistId;
  self->_selectedPlaylistId = v12;
  v14 = v12;

  [(HPRFSessionTrackerMusicViewController *)self reloadSpecifiers];
  WeakRetained = objc_loadWeakRetained(&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSViewController__parentController]);
  [WeakRetained reloadSpecifiers];

  v16.receiver = self;
  v16.super_class = HPRFSessionTrackerMusicViewController;
  [(HPRFSessionTrackerMusicViewController *)&v16 tableView:v7 didSelectRowAtIndexPath:v6];
}

- (void)_setWorkoutPlaylistID:(id)a3
{
  v3 = a3;
  v4 = +[NMSMediaPinningManager sharedManager];
  [v4 setWorkoutPlaylistID:v3];

  _HKInitializeLogging();
  v5 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[workoutmusic] Set playlist persistent ID %@ to sync", &v6, 0xCu);
  }

  if (v3)
  {
    +[HPRFSessionTrackerAppSettingsTipKitHelper sendWorkoutPlaylistSelectedTipEvent];
  }
}

- (id)bundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (id)applicationBundleIdentifier
{
  v2 = [(HPRFSessionTrackerMusicViewController *)self bundle];
  v3 = [v2 bundleIdentifier];

  return v3;
}

@end