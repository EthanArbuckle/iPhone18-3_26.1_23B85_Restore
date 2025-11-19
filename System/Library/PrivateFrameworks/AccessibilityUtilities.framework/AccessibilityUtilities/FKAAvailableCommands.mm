@interface FKAAvailableCommands
+ (FKAAvailableCommands)sharedInstance;
- (AXSSKeyboardCommandMap)commandMap;
- (FKAAvailableCommands)init;
- (NSArray)categories;
- (NSSet)commands;
- (id)_siriShortcutCommands;
- (id)registerUpdateBlock:(id)a3;
- (void)_updateCachedSiriShortcutsCommands;
- (void)commandMap;
- (void)dealloc;
- (void)setCommandMap:(id)a3;
- (void)unregisterUpdateBlockWithToken:(id)a3;
@end

@implementation FKAAvailableCommands

+ (FKAAvailableCommands)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__FKAAvailableCommands_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1, block);
  }

  v2 = sharedInstance_SharedInstance_0;

  return v2;
}

uint64_t __38__FKAAvailableCommands_sharedInstance__block_invoke()
{
  sharedInstance_SharedInstance_0 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (FKAAvailableCommands)init
{
  v28.receiver = self;
  v28.super_class = FKAAvailableCommands;
  v2 = [(FKAAvailableCommands *)&v28 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __28__FKAAvailableCommands_init__block_invoke;
    aBlock[3] = &unk_1E71EA778;
    objc_copyWeak(&v26, &location);
    v3 = _Block_copy(aBlock);
    v4 = +[AXSiriShortcutsManager sharedManager];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __28__FKAAvailableCommands_init__block_invoke_2;
    v23[3] = &unk_1E71EAF48;
    objc_copyWeak(&v24, &location);
    v5 = [v4 registerShortcutsDidChangeBlock:v23];
    siriShortcutsDidChangeObserverToken = v2->_siriShortcutsDidChangeObserverToken;
    v2->_siriShortcutsDidChangeObserverToken = v5;

    v7 = +[AXSettings sharedInstance];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __28__FKAAvailableCommands_init__block_invoke_3;
    v21[3] = &unk_1E71EA2F0;
    v8 = v3;
    v22 = v8;
    [v7 registerUpdateBlock:v21 forRetrieveSelector:sel_fullKeyboardAccessCommandMapData withListener:v2];

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = *MEMORY[0x1E69E4D18];
    v11 = [MEMORY[0x1E696ADC8] mainQueue];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __28__FKAAvailableCommands_init__block_invoke_4;
    v19[3] = &unk_1E71EAF70;
    v12 = v8;
    v20 = v12;
    v13 = [v9 addObserverForName:v10 object:0 queue:v11 usingBlock:v19];
    forceTouchEnabledDidChangeObserverToken = v2->_forceTouchEnabledDidChangeObserverToken;
    v2->_forceTouchEnabledDidChangeObserverToken = v13;

    cachedSiriShortcutsCommands = v2->_cachedSiriShortcutsCommands;
    v2->_cachedSiriShortcutsCommands = MEMORY[0x1E695E0F0];

    v16 = dispatch_queue_create("com.apple.Accessibility.FKAAvailableCommands.SiriShortcuts", 0);
    siriShortcutsQueue = v2->_siriShortcutsQueue;
    v2->_siriShortcutsQueue = v16;

    [(FKAAvailableCommands *)v2 _updateCachedSiriShortcutsCommands];
    objc_destroyWeak(&v24);

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __28__FKAAvailableCommands_init__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [WeakRetained tokensToUpdateBlocks];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [WeakRetained tokensToUpdateBlocks];
        v9 = [v8 objectForKeyedSubscript:v7];
        (v9)[2](v9, WeakRetained);

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void __28__FKAAvailableCommands_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateCachedSiriShortcutsCommands];
}

- (void)dealloc
{
  v3 = +[AXSiriShortcutsManager sharedManager];
  [v3 unregisterShortcutsDidChangeBlock:self->_siriShortcutsDidChangeObserverToken];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self->_forceTouchEnabledDidChangeObserverToken];

  v5.receiver = self;
  v5.super_class = FKAAvailableCommands;
  [(FKAAvailableCommands *)&v5 dealloc];
}

- (id)_siriShortcutCommands
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = +[AXSiriShortcutsManager sharedManager];
  v3 = [v2 shortcuts];

  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) identifier];
        v11 = [FKASiriShortcutKeyboardCommand commandWithSiriShortcutIdentifier:v10];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)_updateCachedSiriShortcutsCommands
{
  v3 = [(FKAAvailableCommands *)self siriShortcutsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__FKAAvailableCommands__updateCachedSiriShortcutsCommands__block_invoke;
  block[3] = &unk_1E71E9B98;
  block[4] = self;
  dispatch_async(v3, block);
}

void __58__FKAAvailableCommands__updateCachedSiriShortcutsCommands__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _siriShortcutCommands];
  v1 = v2;
  AXPerformBlockOnMainThread();
}

void __58__FKAAvailableCommands__updateCachedSiriShortcutsCommands__block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setCachedSiriShortcutsCommands:*(a1 + 40)];
  v2 = [*(a1 + 32) tokensToUpdateBlocks];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [v2 objectForKeyedSubscript:*(*(&v8 + 1) + 8 * v6)];
        v7[2](v7, *(a1 + 32));

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (NSSet)commands
{
  v45[38] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v4 = *MEMORY[0x1E6989288];
  v45[0] = *MEMORY[0x1E6989278];
  v45[1] = v4;
  v5 = *MEMORY[0x1E69892A8];
  v45[2] = *MEMORY[0x1E69892A0];
  v45[3] = v5;
  v6 = *MEMORY[0x1E69892B8];
  v45[4] = *MEMORY[0x1E69892B0];
  v45[5] = v6;
  v7 = *MEMORY[0x1E69892C8];
  v45[6] = *MEMORY[0x1E69892C0];
  v45[7] = v7;
  v8 = *MEMORY[0x1E69892E0];
  v45[8] = *MEMORY[0x1E69892D0];
  v45[9] = v8;
  v9 = *MEMORY[0x1E6989300];
  v45[10] = *MEMORY[0x1E69892F8];
  v45[11] = v9;
  v10 = *MEMORY[0x1E69892E8];
  v45[12] = *MEMORY[0x1E6989308];
  v45[13] = v10;
  v11 = *MEMORY[0x1E6989310];
  v45[14] = *MEMORY[0x1E69892F0];
  v45[15] = v11;
  v12 = *MEMORY[0x1E6989320];
  v45[16] = *MEMORY[0x1E6989318];
  v45[17] = v12;
  v13 = *MEMORY[0x1E6989330];
  v45[18] = *MEMORY[0x1E6989328];
  v45[19] = v13;
  v14 = *MEMORY[0x1E6989340];
  v45[20] = *MEMORY[0x1E6989338];
  v45[21] = v14;
  v15 = *MEMORY[0x1E6989358];
  v45[22] = *MEMORY[0x1E6989348];
  v45[23] = v15;
  v16 = *MEMORY[0x1E6989368];
  v45[24] = *MEMORY[0x1E6989360];
  v45[25] = v16;
  v17 = *MEMORY[0x1E6989378];
  v45[26] = *MEMORY[0x1E6989370];
  v45[27] = v17;
  v18 = *MEMORY[0x1E6989388];
  v45[28] = *MEMORY[0x1E6989380];
  v45[29] = v18;
  v19 = *MEMORY[0x1E69893B0];
  v45[30] = *MEMORY[0x1E69893A0];
  v45[31] = v19;
  v20 = *MEMORY[0x1E69893C8];
  v45[32] = *MEMORY[0x1E69893B8];
  v45[33] = v20;
  v21 = *MEMORY[0x1E69893D8];
  v45[34] = *MEMORY[0x1E69893D0];
  v45[35] = v21;
  v22 = *MEMORY[0x1E69893E8];
  v45[36] = *MEMORY[0x1E69893E0];
  v45[37] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:{38, 0}];
  v24 = [v23 arrayByAddingObject:*MEMORY[0x1E6989290]];

  v25 = [v24 arrayByAddingObject:*MEMORY[0x1E69892D8]];

  v26 = [v25 arrayByAddingObject:*MEMORY[0x1E6989398]];

  v27 = [v26 arrayByAddingObject:*MEMORY[0x1E6989350]];

  if (AXDeviceIsPad())
  {
    v28 = [v27 arrayByAddingObject:*MEMORY[0x1E69893A8]];

    v29 = [v28 arrayByAddingObject:*MEMORY[0x1E6989390]];

    v27 = [v29 arrayByAddingObject:*MEMORY[0x1E69893C0]];
  }

  if (AXDeviceIsSOSAvailable())
  {
    v30 = [v27 arrayByAddingObject:*MEMORY[0x1E6989280]];

    v27 = v30;
  }

  if (AXDeviceCanArmApplePay())
  {
    v31 = [v27 arrayByAddingObject:*MEMORY[0x1E6989298]];

    v27 = v31;
  }

  if (AXForceTouchAvailableAndEnabled())
  {
    v32 = [v27 arrayByAddingObject:*MEMORY[0x1E6989270]];

    v27 = v32;
  }

  v33 = [v27 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v41;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v41 != v35)
        {
          objc_enumerationMutation(v27);
        }

        v37 = [MEMORY[0x1E6989408] commandWithStandardCommandIdentifier:*(*(&v40 + 1) + 8 * i)];
        [v3 addObject:v37];
      }

      v34 = [v27 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v34);
  }

  v38 = [(FKAAvailableCommands *)self cachedSiriShortcutsCommands];
  [v3 addObjectsFromArray:v38];

  return v3;
}

- (NSArray)categories
{
  v3 = MEMORY[0x1E6989410];
  v4 = [(FKAAvailableCommands *)self commands];
  v5 = [v3 allCategoriesForAvailableCommands:v4];

  v6 = [(FKAAvailableCommands *)self cachedSiriShortcutsCommands];
  if ([v6 count])
  {
    v7 = objc_alloc(MEMORY[0x1E6989410]);
    v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"SIRI_SHORTCUTS_CATEGORY_NAME" value:&stru_1EFE6D570 table:@"FullKeyboardAccess"];
    v10 = [v7 initWithCommands:v6 localizedName:v9];

    v11 = [v5 arrayByAddingObject:v10];

    v5 = v11;
  }

  return v5;
}

- (AXSSKeyboardCommandMap)commandMap
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 fullKeyboardAccessCommandMapData];

  if (v4)
  {
    v13 = 0;
    v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v13];
    v6 = v13;
    v7 = v6;
    if (v5)
    {

      goto LABEL_10;
    }

    v8 = FKALogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(FKAAvailableCommands *)v7 commandMap];
    }
  }

  v9 = FKALogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_18B15E000, v9, OS_LOG_TYPE_INFO, "Creating new command map because none was saved in preferences", v12, 2u);
  }

  v5 = objc_opt_new();
LABEL_10:
  v10 = [(FKAAvailableCommands *)self commands];
  [v5 setAvailableCommands:v10];

  return v5;
}

- (void)setCommandMap:(id)a3
{
  if (a3)
  {
    v7 = 0;
    v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v7];
    v4 = v7;
    if (!v3)
    {
      v5 = FKALogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(FKAAvailableCommands *)v4 setCommandMap:v5];
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v6 = +[AXSettings sharedInstance];
  [v6 setFullKeyboardAccessCommandMapData:v3];
}

- (id)registerUpdateBlock:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AFB0] UUID];
  v6 = [(FKAAvailableCommands *)self tokensToUpdateBlocks];

  if (!v6)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    [(FKAAvailableCommands *)self setTokensToUpdateBlocks:v7];
  }

  v8 = _Block_copy(v4);
  v9 = [(FKAAvailableCommands *)self tokensToUpdateBlocks];
  [v9 setObject:v8 forKeyedSubscript:v5];

  return v5;
}

- (void)unregisterUpdateBlockWithToken:(id)a3
{
  v4 = a3;
  v5 = [(FKAAvailableCommands *)self tokensToUpdateBlocks];
  [v5 setObject:0 forKeyedSubscript:v4];
}

- (void)commandMap
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_18B15E000, a2, OS_LOG_TYPE_ERROR, "Error unarchiving command map: %@", &v2, 0xCu);
}

- (void)setCommandMap:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_18B15E000, a2, OS_LOG_TYPE_ERROR, "Unable to encode command map: %@", &v2, 0xCu);
}

@end