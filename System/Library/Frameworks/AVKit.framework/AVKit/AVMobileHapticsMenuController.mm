@interface AVMobileHapticsMenuController
- (AVMobileHapticsMenuController)init;
- (AVMobileHapticsMenuDelegate)delegate;
- (BOOL)_hapticsIsOn;
- (void)_reloadHapticsOptionsMenu;
- (void)setHapticTrackIDs:(id)ds;
@end

@implementation AVMobileHapticsMenuController

- (AVMobileHapticsMenuDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_hapticsIsOn
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  hapticTrackIDs = [(AVMobileHapticsMenuController *)self hapticTrackIDs];
  allKeys = [hapticTrackIDs allKeys];

  v5 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        hapticTrackIDs2 = [(AVMobileHapticsMenuController *)self hapticTrackIDs];
        v11 = [hapticTrackIDs2 objectForKeyedSubscript:v9];
        isOn = [v11 isOn];

        if (isOn)
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (void)setHapticTrackIDs:(id)ds
{
  dsCopy = ds;
  p_hapticTrackIDs = &self->_hapticTrackIDs;
  if (self->_hapticTrackIDs != dsCopy)
  {
    v7 = dsCopy;
    objc_storeStrong(p_hapticTrackIDs, ds);
    [(AVMobileHapticsMenuController *)self _reloadHapticsOptionsMenu];
    dsCopy = v7;
  }

  MEMORY[0x1EEE66BB8](p_hapticTrackIDs, dsCopy);
}

- (void)_reloadHapticsOptionsMenu
{
  v51 = *MEMORY[0x1E69E9840];
  if (self)
  {
    configurationPreferringMonochrome = [MEMORY[0x1E69DCAD8] configurationPreferringMonochrome];
    v34 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"apple.haptics" withConfiguration:configurationPreferringMonochrome];
    v2 = self[1];
    self[1] = 0;

    hapticTrackIDs = [self hapticTrackIDs];
    v4 = [hapticTrackIDs count];

    if (v4)
    {
      v32 = MEMORY[0x1E69DCC60];
      objc_initWeak(&location, self);
      array = [MEMORY[0x1E695DF70] array];
      v33 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:0 ascending:1];
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      hapticTrackIDs2 = [self hapticTrackIDs];
      allKeys = [hapticTrackIDs2 allKeys];
      v49 = v33;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
      obj = [allKeys sortedArrayUsingDescriptors:v7];

      v8 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
      if (v8)
      {
        v37 = *v44;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v44 != v37)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v43 + 1) + 8 * i);
            unsignedIntValue = [v10 unsignedIntValue];
            hapticTrackIDs3 = [self hapticTrackIDs];
            v13 = [hapticTrackIDs3 objectForKeyedSubscript:v10];
            trackName = [v13 trackName];
            v15 = trackName == 0;

            if (v15)
            {
              capitalizedString = [MEMORY[0x1E696AEC0] stringWithFormat:@"Track %d", unsignedIntValue];
            }

            else
            {
              hapticTrackIDs4 = [self hapticTrackIDs];
              v17 = [hapticTrackIDs4 objectForKeyedSubscript:v10];
              trackName2 = [v17 trackName];
              capitalizedString = [trackName2 capitalizedString];
            }

            v20 = MEMORY[0x1E69DC628];
            v41[0] = MEMORY[0x1E69E9820];
            v41[1] = 3221225472;
            v41[2] = __57__AVMobileHapticsMenuController__elementsForHapticsTrack__block_invoke;
            v41[3] = &unk_1E7207630;
            objc_copyWeak(&v42, &location);
            v41[4] = v10;
            v41[5] = self;
            v21 = [v20 actionWithTitle:capitalizedString image:0 identifier:0 handler:v41];
            hapticTrackIDs5 = [self hapticTrackIDs];
            v23 = [hapticTrackIDs5 objectForKeyedSubscript:v10];
            [v21 setState:{objc_msgSend(v23, "isOn")}];

            [v21 setAttributes:{objc_msgSend(v21, "attributes") | 8}];
            [array addObject:v21];

            objc_destroyWeak(&v42);
          }

          v8 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
        }

        while (v8);
      }

      v24 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"title" ascending:1];
      v48 = v24;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
      v26 = [array sortedArrayUsingDescriptors:v25];
      v27 = [v26 mutableCopy];

      v28 = MEMORY[0x1E69DC628];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __57__AVMobileHapticsMenuController__elementsForHapticsTrack__block_invoke_2;
      v39[3] = &unk_1E7208C60;
      objc_copyWeak(&v40, &location);
      v39[4] = self;
      v29 = [v28 actionWithTitle:@"Off" image:0 identifier:0 handler:v39];
      [v29 setState:{objc_msgSend(self, "_hapticsIsOn") ^ 1}];
      [v27 addObject:v29];

      objc_destroyWeak(&v40);
      objc_destroyWeak(&location);
      v30 = [v32 menuWithTitle:@"Haptics (Internal)" image:v34 identifier:@"AVHapticsInternalMenu" options:0 children:v27];
      v31 = self[1];
      self[1] = v30;
    }
  }
}

void __57__AVMobileHapticsMenuController__elementsForHapticsTrack__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v6 = objc_loadWeakRetained((a1 + 48));
    v5 = [v6 delegate];
    [v5 hapticsMenuControllerDidSelectTrackID:*(a1 + 32) controller:*(a1 + 40)];
  }
}

void __57__AVMobileHapticsMenuController__elementsForHapticsTrack__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    v5 = [v6 delegate];
    [v5 hapticsMenuControllerDidSelectHapticsOff:*(a1 + 32)];
  }
}

- (AVMobileHapticsMenuController)init
{
  v7.receiver = self;
  v7.super_class = AVMobileHapticsMenuController;
  v2 = [(AVMobileHapticsMenuController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    hapticTrackIDs = v2->_hapticTrackIDs;
    v2->_hapticTrackIDs = MEMORY[0x1E695E0F8];

    hapticsOptionMenu = v3->_hapticsOptionMenu;
    v3->_hapticsOptionMenu = 0;

    [(AVMobileHapticsMenuController *)v3 _reloadHapticsOptionsMenu];
  }

  return v3;
}

@end