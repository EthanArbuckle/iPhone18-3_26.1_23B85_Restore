@interface GCOverlaySettings
- (GCOverlaySettings)init;
- (id)gameForActiveController;
- (void)_onqueue_refresh;
- (void)_refresh;
- (void)refresh;
- (void)setController:(id)a3;
- (void)setGameBundleIdentifier:(id)a3;
- (void)setSelectedProfile:(id)a3;
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
  v4 = [(GCOverlaySettingsStore *)self->_settingsStore defaultGame];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(GCOverlaySettingsStore *)self->_settingsStore games];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 bundleIdentifier];
        v12 = [v11 isEqualToString:self->_gameBundleIdentifier];

        if (v12)
        {
          if ([v10 profileExistsFor:v3 with:self->_settingsStore])
          {
            v13 = v10;

            v4 = v13;
          }

          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v14 = *MEMORY[0x1E69E9840];

  return v4;
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
  v4 = [(GCOverlaySettingsStore *)self->_settingsStore profiles];
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = [GCOverlayProfile alloc];
        v11 = [v9 name];
        v12 = [v9 uuid];
        v13 = [(GCOverlayProfile *)v10 initWithName:v11 identifier:v12];

        [v3 addObject:v13];
      }

      v6 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  [(GCOverlaySettings *)self setAvailableProfiles:v3];
  v14 = [(GCOverlaySettingsStore *)self->_settingsStore getSettingsControllerFor:self->_controller];
  if (v14)
  {
    v15 = [(GCOverlaySettings *)self gameForActiveController];
    v16 = [v15 profileFor:v14 with:self->_settingsStore];
    v17 = [v16 uuid];
    v18 = [(GCOverlaySettings *)self selectedProfile];
    v19 = [v18 identifier];
    v20 = [v17 isEqual:v19];

    if ((v20 & 1) == 0)
    {
      v21 = [GCOverlayProfile alloc];
      v22 = [v16 name];
      v23 = [v16 uuid];
      v24 = [(GCOverlayProfile *)v21 initWithName:v22 identifier:v23];
      [(GCOverlaySettings *)self setSelectedProfile:v24];
    }
  }

  else
  {
    v25 = [(GCOverlaySettings *)self selectedProfile];

    if (v25)
    {
      [(GCOverlaySettings *)self setSelectedProfile:0];
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)setController:(id)a3
{
  objc_storeStrong(&self->_controller, a3);

  [(GCOverlaySettings *)self refresh];
}

- (void)setGameBundleIdentifier:(id)a3
{
  objc_storeStrong(&self->_gameBundleIdentifier, a3);

  [(GCOverlaySettings *)self refresh];
}

- (void)setSelectedProfile:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_selectedProfile, a3);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(GCOverlaySettingsStore *)self->_settingsStore profiles];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v19 + 1) + 8 * v10);
      v12 = [v11 uuid];
      v13 = [v5 identifier];
      v14 = [v12 isEqual:v13];

      if (v14)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
    v17 = [(GCOverlaySettings *)self gameForActiveController];
    [(GCOverlaySettingsStore *)self->_settingsStore setSelectedProfileTo:v15 controller:v16 game:v17];
    [(GCOverlaySettings *)self refresh];

    v6 = v15;
  }

LABEL_12:

LABEL_13:
  v18 = *MEMORY[0x1E69E9840];
}

@end