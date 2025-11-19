@interface CLMController
- (AXOnboardingContinueButtonEnablingDelegate)continueButtonEnablingDelegate;
- (CLMController)init;
- (id)_playlistsSpecifiers;
- (id)_specifierForPlaylistEntry:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_loadPlaylists;
- (void)_showPlaylistSelectionAlert;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation CLMController

- (CLMController)init
{
  v9.receiver = self;
  v9.super_class = CLMController;
  v2 = [(CLMController *)&v9 initWithNibName:0 bundle:0];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC22ClarityUIMusicSettings18CLMInterfaceHelper);
    [(CLMController *)v2 setInterfaceHelper:v3];

    v4 = +[CLFMusicSettings sharedInstance];
    v5 = [v4 selectedPlaylists];
    v6 = [v5 mutableCopy];
    playlistEntries = v2->_playlistEntries;
    v2->_playlistEntries = v6;
  }

  return v2;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = CLMController;
  [(CLMController *)&v7 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"MUSIC" value:&stru_10CA0 table:@"CLMMusicSettings"];
  v5 = [(CLMController *)self navigationItem];
  [v5 setTitle:v4];

  [(CLMController *)self _loadPlaylists];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_loadPlaylists" name:UIApplicationWillEnterForegroundNotification object:0];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXCLFBasePrivacyLinkController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(CLMController *)self loadSpecifiersFromPlistName:@"CLMController" target:self];
    v6 = [(CLMController *)self _playlistsSpecifiers];
    v7 = [(CLMController *)self specifiersWithPrivacyLinkSupport:v6];
    v8 = *&self->AXCLFBasePrivacyLinkController_opaque[v3];
    *&self->AXCLFBasePrivacyLinkController_opaque[v3] = v7;

    v4 = *&self->AXCLFBasePrivacyLinkController_opaque[v3];
  }

  return v4;
}

- (id)_specifierForPlaylistEntry:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:4 edit:0];

  [v6 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v6 setProperty:v4 forKey:@"playlistEntry"];

  return v6;
}

- (id)_playlistsSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"PLAYLISTS" value:&stru_10CA0 table:@"CLMMusicSettings"];
  v6 = [PSSpecifier groupSpecifierWithName:v5];

  [v3 addObject:v6];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [(CLMController *)self interfaceHelper];
  v8 = [v7 playlists];

  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(CLMController *)self _specifierForPlaylistEntry:*(*(&v24 + 1) + 8 * i)];
        [v3 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v14 = [(CLMInterfaceHelper *)self->_interfaceHelper playlists];
  v15 = [v14 count];
  v16 = [NSBundle bundleForClass:objc_opt_class()];
  v17 = v16;
  if (v15)
  {
    v18 = @"EDIT_PLAYLIST";
  }

  else
  {
    v18 = @"ADD_PLAYLIST";
  }

  v19 = [v16 localizedStringForKey:v18 value:&stru_10CA0 table:@"CLMMusicSettings"];

  v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:self set:0 get:0 detail:0 cell:13 edit:0];
  [(CLMController *)self setEditPlaylistSpecifier:v20];

  v21 = [(CLMController *)self editPlaylistSpecifier];
  [v21 setButtonAction:"_openMusicApp:"];

  v22 = [(CLMController *)self editPlaylistSpecifier];
  [v3 addObject:v22];

  return v3;
}

- (void)_loadPlaylists
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v3 = qword_14E10;
  v18 = qword_14E10;
  if (!qword_14E10)
  {
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_2A68;
    v13 = &unk_109B8;
    v14 = &v15;
    sub_2A68(&v10);
    v3 = v16[3];
  }

  v4 = v3;
  _Block_object_dispose(&v15, 8);
  v5 = [v3 applicationWithBundleIdentifier:AX_MusicBundleName];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v6 = qword_14E20;
  v18 = qword_14E20;
  if (!qword_14E20)
  {
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_2C30;
    v13 = &unk_109B8;
    v14 = &v15;
    sub_2C30(&v10);
    v6 = v16[3];
  }

  v7 = v6;
  _Block_object_dispose(&v15, 8);
  v8 = [v6 sharedGuard];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_239C;
  v9[3] = &unk_10990;
  v9[4] = self;
  [v8 authenticateForSubject:v5 completion:v9];
}

- (void)_showPlaylistSelectionAlert
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PLAYLIST_SELECTION_ALERT_MESSAGE" value:&stru_10CA0 table:@"CLMMusicSettings"];
  v8 = [UIAlertController alertControllerWithTitle:0 message:v4 preferredStyle:1];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"OK" value:&stru_10CA0 table:@"CLMMusicSettings"];
  v7 = [UIAlertAction actionWithTitle:v6 style:0 handler:0];

  [v8 addAction:v7];
  [(CLMController *)self presentViewController:v8 animated:1 completion:0];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v14.receiver = self;
  v14.super_class = CLMController;
  v5 = [(CLMController *)&v14 tableView:a3 cellForRowAtIndexPath:a4];
  v6 = [v5 specifier];
  v7 = [(CLMController *)self editPlaylistSpecifier];

  if (v6 != v7)
  {
    v8 = [CLMUtilities playlistEntryForSpecifier:v6];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 updateCellContent];
    }

    v9 = +[CLFMusicSettings sharedInstance];
    v10 = [v9 selectedPlaylists];
    v11 = [v8 musicItemID];
    v12 = [v10 containsObject:v11];

    if (v12)
    {
      [v5 setAccessoryType:3];
    }
  }

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = CLMController;
  [(CLMController *)&v16 tableView:v6 didSelectRowAtIndexPath:v7];
  v8 = [(CLMController *)self specifierAtIndexPath:v7];
  v9 = [CLMUtilities playlistEntryForSpecifier:v8];
  v10 = [(CLMController *)self editPlaylistSpecifier];

  if (v8 != v10)
  {
    v11 = [v6 cellForRowAtIndexPath:v7];
    v12 = [v9 musicItemID];
    if ([(NSMutableArray *)self->_playlistEntries containsObject:v12])
    {
      if ([(NSMutableArray *)self->_playlistEntries count]== &dword_0 + 1)
      {
        [(CLMController *)self _showPlaylistSelectionAlert];
      }

      else
      {
        [v11 setAccessoryType:0];
        [(NSMutableArray *)self->_playlistEntries removeObject:v12];
      }
    }

    else
    {
      [v11 setAccessoryType:3];
      [(NSMutableArray *)self->_playlistEntries addObject:v12];
    }

    [v11 invalidateIntrinsicContentSize];
    playlistEntries = self->_playlistEntries;
    v14 = +[CLFMusicSettings sharedInstance];
    [v14 setSelectedPlaylists:playlistEntries];

    v15 = [(CLMController *)self continueButtonEnablingDelegate];
    [v15 didUpdateIsContinueButtonEnabledForController:self];
  }
}

- (AXOnboardingContinueButtonEnablingDelegate)continueButtonEnablingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->continueButtonEnablingDelegate);

  return WeakRetained;
}

@end