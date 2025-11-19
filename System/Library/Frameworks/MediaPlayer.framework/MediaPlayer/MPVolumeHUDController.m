@interface MPVolumeHUDController
+ (MPVolumeHUDController)sharedInstance;
- (MPVolumeHUDController)init;
- (void)_addCategory:(id)a3;
- (void)_updateVisibility;
- (void)_updateVisibilityForVolumeDisplays:(id)a3 inWindowScene:(id)a4;
- (void)addVolumeDisplay:(id)a3;
- (void)removeDeallocHandlerFromDisplay:(id)a3;
- (void)removeVolumeDisplay:(id)a3;
- (void)setNeedsUpdate;
- (void)setUpDeallocHandlerForDisplay:(id)a3;
@end

@implementation MPVolumeHUDController

+ (MPVolumeHUDController)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_7876);
  }

  v3 = sharedInstance_instance;

  return v3;
}

- (void)setNeedsUpdate
{
  if (!self->_needsUpdate)
  {
    self->_needsUpdate = 1;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__MPVolumeHUDController_setNeedsUpdate__block_invoke;
    block[3] = &unk_1E7682518;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_updateVisibility
{
  v50 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = MEMORY[0x1E695DFA8];
  v4 = [(NSHashTable *)self->_scenes allObjects];
  v34 = [v3 setWithArray:v4];

  v33 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [*MEMORY[0x1E69DDA98] _appAdoptsUISceneLifecycle];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v7 = self->_displays;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v43 objects:v49 count:16];
  v32 = v5;
  if (v8)
  {
    v9 = v8;
    v10 = *v44;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v43 + 1) + 8 * i);
        v13 = [v12 volumeAudioCategory];
        [(MPVolumeHUDController *)self _addCategory:v13];

        if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v14 = [v12 windowSceneForVolumeDisplay];
          if (v14)
          {
            v15 = [v33 objectForKey:v14];

            if (!v15)
            {
              v16 = [MEMORY[0x1E695DF70] array];
              [v33 setObject:v16 forKey:v14];
            }

            v17 = [v33 objectForKey:v14];
            [v17 addObject:v12];

            [v34 removeObject:v14];
            v5 = v32;
          }
        }

        else
        {
          [v5 addObject:v12];
        }
      }

      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v9);
  }

  if (v6)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v18 = v33;
    v19 = [v33 keyEnumerator];
    v20 = [v19 allObjects];

    v21 = [v20 countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v40;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v40 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v39 + 1) + 8 * j);
          v26 = [v33 objectForKey:{v25, v32}];
          [(MPVolumeHUDController *)self _updateVisibilityForVolumeDisplays:v26 inWindowScene:v25];
        }

        v22 = [v20 countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v22);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v27 = v34;
    v28 = [v27 countByEnumeratingWithState:&v35 objects:v47 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v36;
      do
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v36 != v30)
          {
            objc_enumerationMutation(v27);
          }

          [(MPVolumeHUDController *)self _updateVisibilityForVolumeDisplays:0 inWindowScene:*(*(&v35 + 1) + 8 * k), v32];
        }

        v29 = [v27 countByEnumeratingWithState:&v35 objects:v47 count:16];
      }

      while (v29);
    }

    v5 = v32;
  }

  else
  {
    [(MPVolumeHUDController *)self _updateVisibilityForVolumeDisplays:v5 inWindowScene:0];
    v18 = v33;
  }
}

- (void)removeDeallocHandlerFromDisplay:(id)a3
{
  object = a3;
  v3 = objc_getAssociatedObject(object, _DeallocHandlerGuardKey);
  v4 = v3;
  if (v3)
  {
    [v3 disarm];
    objc_setAssociatedObject(object, _DeallocHandlerGuardKey, 0, 0);
  }
}

- (void)setUpDeallocHandlerForDisplay:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x1E69B13F0]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__MPVolumeHUDController_setUpDeallocHandlerForDisplay___block_invoke;
  v7[3] = &unk_1E76825E8;
  objc_copyWeak(&v8, &location);
  v6 = [v5 initWithDeallocHandler:v7];
  objc_setAssociatedObject(v4, _DeallocHandlerGuardKey, v6, 1);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __55__MPVolumeHUDController_setUpDeallocHandlerForDisplay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsUpdate];
}

- (void)_updateVisibilityForVolumeDisplays:(id)a3 inWindowScene:(id)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v33 = a3;
  v6 = a4;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = self->_categories;
  v34 = [(NSMutableSet *)obj countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v34)
  {
    v32 = *v44;
    *&v7 = 67109634;
    v29 = v7;
    v31 = v6;
    do
    {
      v8 = 0;
      do
      {
        if (*v44 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v43 + 1) + 8 * v8);
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v10 = v33;
        v11 = [v10 countByEnumeratingWithState:&v39 objects:v54 count:16];
        if (!v11)
        {
          v18 = 1;
          goto LABEL_23;
        }

        v12 = v11;
        v13 = *v40;
        while (2)
        {
          v14 = 0;
          do
          {
            if (*v40 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v39 + 1) + 8 * v14);
            if (objc_opt_respondsToSelector())
            {
              if (([v15 isOnScreenForVolumeDisplay] & 1) == 0)
              {
                goto LABEL_17;
              }
            }

            else if ((objc_opt_respondsToSelector() & 1) != 0 && ![v15 isOnScreen])
            {
              goto LABEL_17;
            }

            v16 = [v15 volumeAudioCategory];
            v17 = [v9 isEqualToString:v16];

            if (v17)
            {
              v18 = 0;
              goto LABEL_21;
            }

LABEL_17:
            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v39 objects:v54 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }

        v18 = 1;
LABEL_21:
        v6 = v31;
LABEL_23:

        if (v6)
        {
          [v6 _setSystemVolumeHUDEnabled:v18 forAudioCategory:v9];
        }

        else
        {
          v19 = MPUIApplication();
          v20 = [v19 _appAdoptsUISceneLifecycle];

          if (v20)
          {
            v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count")}];
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v22 = v10;
            v23 = [v22 countByEnumeratingWithState:&v35 objects:v53 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v36;
              do
              {
                v26 = 0;
                do
                {
                  if (*v36 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  [v21 addObject:objc_opt_class()];
                  ++v26;
                }

                while (v24 != v26);
                v24 = [v22 countByEnumeratingWithState:&v35 objects:v53 count:16];
              }

              while (v24);
            }

            v27 = os_log_create("com.apple.amp.mediaplayer", "Volume");
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = v29;
              v48 = v18;
              v49 = 2114;
              v50 = v9;
              v51 = 2114;
              v52 = v21;
              _os_log_impl(&dword_1A238D000, v27, OS_LOG_TYPE_ERROR, "Attempting to setSystemVolumeHUDEnabled for application that supports UIScene lifecycle (enabled: %{BOOL}u | category: %{public}@ | volumeDisplays: %{public}@)", buf, 0x1Cu);
            }
          }

          else
          {
            v28 = MPUIApplication();
            [v28 setSystemVolumeHUDEnabled:v18 forAudioCategory:v9];
          }
        }

        ++v8;
      }

      while (v8 != v34);
      v34 = [(NSMutableSet *)obj countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v34);
  }
}

- (void)_addCategory:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    [(NSMutableSet *)self->_categories addObject:v4];
  }
}

- (void)removeVolumeDisplay:(id)a3
{
  v8 = a3;
  v4 = [v8 volumeAudioCategory];
  [(MPVolumeHUDController *)self _addCategory:v4];

  if (objc_opt_respondsToSelector())
  {
    v5 = [v8 windowSceneForVolumeDisplay];

    if (v5)
    {
      scenes = self->_scenes;
      v7 = [v8 windowSceneForVolumeDisplay];
      [(NSHashTable *)scenes addObject:v7];
    }
  }

  [(MPVolumeHUDController *)self removeDeallocHandlerFromDisplay:v8];
  [(NSHashTable *)self->_displays removeObject:v8];
  [(MPVolumeHUDController *)self setNeedsUpdate];
}

- (void)addVolumeDisplay:(id)a3
{
  v8 = a3;
  v4 = [v8 volumeAudioCategory];
  [(MPVolumeHUDController *)self _addCategory:v4];

  if (objc_opt_respondsToSelector())
  {
    v5 = [v8 windowSceneForVolumeDisplay];

    if (v5)
    {
      scenes = self->_scenes;
      v7 = [v8 windowSceneForVolumeDisplay];
      [(NSHashTable *)scenes addObject:v7];
    }
  }

  [(MPVolumeHUDController *)self setUpDeallocHandlerForDisplay:v8];
  [(NSHashTable *)self->_displays addObject:v8];
  [(MPVolumeHUDController *)self setNeedsUpdate];
}

- (MPVolumeHUDController)init
{
  v10.receiver = self;
  v10.super_class = MPVolumeHUDController;
  v2 = [(MPVolumeHUDController *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    scenes = v2->_scenes;
    v2->_scenes = v3;

    v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    displays = v2->_displays;
    v2->_displays = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    categories = v2->_categories;
    v2->_categories = v7;
  }

  return v2;
}

void __39__MPVolumeHUDController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(MPVolumeHUDController);
  v1 = sharedInstance_instance;
  sharedInstance_instance = v0;
}

@end