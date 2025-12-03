@interface GCOverlaySettings
- (GCOverlaySettings)init;
- (id)gameForActiveController;
- (void)_onqueue_refresh;
- (void)_refresh;
- (void)refresh;
- (void)setController:(id)controller;
- (void)setGameBundleIdentifier:(id)identifier;
- (void)setSelectedProfile:(id)profile;
@end

@implementation GCOverlaySettings

- (GCOverlaySettings)init
{
  v6.receiver = self;
  v6.super_class = GCOverlaySettings;
  v2 = [(GCOverlaySettings *)&v6 init];
  if (v2)
  {
    v3 = +[_TtC14GameController22GCOverlaySettingsStore shared];
    settingsStore = v2->_settingsStore;
    v2->_settingsStore = v3;

    [(GCOverlaySettings *)v2 _refresh];
  }

  return v2;
}

- (void)refresh
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __28__GCOverlaySettings_refresh__block_invoke;
  v2[3] = &unk_1E8418D18;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __28__GCOverlaySettings_refresh__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onqueue_refresh];
}

- (void)_onqueue_refresh
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);

  [(GCOverlaySettings *)self _refresh];
}

- (id)gameForActiveController
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(GCOverlaySettingsStore *)self->_settingsStore getSettingsControllerFor:self->_controller];
  defaultGame = [(GCOverlaySettingsStore *)self->_settingsStore defaultGame];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  games = [(GCOverlaySettingsStore *)self->_settingsStore games];
  v6 = [games countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(games);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        bundleIdentifier = [v10 bundleIdentifier];
        v12 = [bundleIdentifier isEqualToString:self->_gameBundleIdentifier];

        if (v12)
        {
          if ([v10 profileExistsFor:v3 with:self->_settingsStore])
          {
            v13 = v10;

            defaultGame = v13;
          }

          goto LABEL_12;
        }
      }

      v7 = [games countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v14 = *MEMORY[0x1E69E9840];

  return defaultGame;
}

- (void)_refresh
{
  v32 = *MEMORY[0x1E69E9840];
  [(GCOverlaySettingsStore *)self->_settingsStore refresh];
  v3 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  profiles = [(GCOverlaySettingsStore *)self->_settingsStore profiles];
  v5 = [profiles countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(profiles);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = [GCOverlayProfile alloc];
        name = [v9 name];
        uuid = [v9 uuid];
        v13 = [(GCOverlayProfile *)v10 initWithName:name identifier:uuid];

        [v3 addObject:v13];
      }

      v6 = [profiles countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  [(GCOverlaySettings *)self setAvailableProfiles:v3];
  v14 = [(GCOverlaySettingsStore *)self->_settingsStore getSettingsControllerFor:self->_controller];
  if (v14)
  {
    gameForActiveController = [(GCOverlaySettings *)self gameForActiveController];
    v16 = [gameForActiveController profileFor:v14 with:self->_settingsStore];
    uuid2 = [v16 uuid];
    selectedProfile = [(GCOverlaySettings *)self selectedProfile];
    identifier = [selectedProfile identifier];
    v20 = [uuid2 isEqual:identifier];

    if ((v20 & 1) == 0)
    {
      v21 = [GCOverlayProfile alloc];
      name2 = [v16 name];
      uuid3 = [v16 uuid];
      v24 = [(GCOverlayProfile *)v21 initWithName:name2 identifier:uuid3];
      [(GCOverlaySettings *)self setSelectedProfile:v24];
    }
  }

  else
  {
    selectedProfile2 = [(GCOverlaySettings *)self selectedProfile];

    if (selectedProfile2)
    {
      [(GCOverlaySettings *)self setSelectedProfile:0];
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)setController:(id)controller
{
  objc_storeStrong(&self->_controller, controller);

  [(GCOverlaySettings *)self refresh];
}

- (void)setGameBundleIdentifier:(id)identifier
{
  objc_storeStrong(&self->_gameBundleIdentifier, identifier);

  [(GCOverlaySettings *)self refresh];
}

- (void)setSelectedProfile:(id)profile
{
  v24 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  objc_storeStrong(&self->_selectedProfile, profile);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  profiles = [(GCOverlaySettingsStore *)self->_settingsStore profiles];
  v7 = [profiles countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(profiles);
      }

      v11 = *(*(&v19 + 1) + 8 * v10);
      uuid = [v11 uuid];
      identifier = [profileCopy identifier];
      v14 = [uuid isEqual:identifier];

      if (v14)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [profiles countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v15 = v11;

    if (!v15)
    {
      goto LABEL_13;
    }

    v16 = [(GCOverlaySettingsStore *)self->_settingsStore getSettingsControllerFor:self->_controller];
    gameForActiveController = [(GCOverlaySettings *)self gameForActiveController];
    [(GCOverlaySettingsStore *)self->_settingsStore setSelectedProfileTo:v15 controller:v16 game:gameForActiveController];
    [(GCOverlaySettings *)self refresh];

    profiles = v15;
  }

LABEL_12:

LABEL_13:
  v18 = *MEMORY[0x1E69E9840];
}

@end