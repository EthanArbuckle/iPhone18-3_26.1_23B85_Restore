@interface CNQuickActionsUsageManager
+ (BOOL)sortUsingCoreDuetAvailable;
+ (id)managerForContact:(id)a3;
- (CNQuickActionsUsageManager)init;
- (NSCountedSet)actionsUsageSet;
- (NSMutableSet)enabledActionIdentifiers;
- (double)scoreForAction:(id)a3;
- (id)sortedActions:(id)a3;
- (void)_updateDuetInteractionsIfNeeded;
- (void)actionPerformed:(id)a3;
- (void)cacheEnabledStateForAction:(id)a3;
- (void)updateCachedEnabledStateForAction:(id)a3;
@end

@implementation CNQuickActionsUsageManager

- (id)sortedActions:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 mutableCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (([v11 enabled] & 1) == 0)
        {
          [v5 removeObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    if ([(CNQuickActionsUsageManager *)self sortsWithDuet])
    {
      [(CNQuickActionsUsageManager *)self _updateDuetInteractionsIfNeeded];
    }

    [v5 sortUsingComparator:{&__block_literal_global_26_57587, v13}];
  }

  return v5;
}

uint64_t __44__CNQuickActionsUsageManager_sortedActions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  v8 = [v6 score];
  if (v8 <= [v7 score])
  {
    v10 = [v6 score];
    if (v10 >= [v7 score])
    {
      v11 = [v6 titleForContext:2];
      v12 = [v7 titleForContext:2];
      v9 = [v11 compare:v12];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (void)_updateDuetInteractionsIfNeeded
{
  v27[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [(CNQuickActionsUsageManager *)self cachedInteractions];
  if (!v4 || (-[CNQuickActionsUsageManager cachedInteractionsDate](self, "cachedInteractionsDate"), v5 = objc_claimAutoreleasedReturnValue(), [v3 timeIntervalSinceDate:v5], v7 = v6, v5, v4, v7 >= 5.0))
  {
    if (_updateDuetInteractionsIfNeeded_cn_once_token_1 != -1)
    {
      dispatch_once(&_updateDuetInteractionsIfNeeded_cn_once_token_1, &__block_literal_global_14_57591);
    }

    v8 = _updateDuetInteractionsIfNeeded_cn_once_object_1;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v9 = get_CDInteractionAdvisorSettingsClass_softClass;
    v26 = get_CDInteractionAdvisorSettingsClass_softClass;
    if (!get_CDInteractionAdvisorSettingsClass_softClass)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __get_CDInteractionAdvisorSettingsClass_block_invoke;
      v22[3] = &unk_1E74E7518;
      v22[4] = &v23;
      __get_CDInteractionAdvisorSettingsClass_block_invoke(v22);
      v9 = v24[3];
    }

    v10 = v9;
    _Block_object_dispose(&v23, 8);
    v11 = [v9 interactionAdvisorSettingsDefault];
    v12 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F0D4BA60];
    [v11 setConstrainPersonIdType:v12];

    v13 = MEMORY[0x1E695DFD8];
    v14 = [(CNQuickActionsUsageManager *)self contact];
    v15 = [v14 identifier];
    v27[0] = v15;
    v16 = MEMORY[0x1E696AEC0];
    v17 = [(CNQuickActionsUsageManager *)self contact];
    v18 = [v16 stringWithFormat:@"%d", objc_msgSend(v17, "iOSLegacyIdentifier")];
    v27[1] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v20 = [v13 setWithArray:v19];
    [v11 setConstrainPersonIds:v20];

    v21 = [v8 adviseInteractionsUsingSettings:v11];
    [(CNQuickActionsUsageManager *)self setCachedInteractions:v21];
    [(CNQuickActionsUsageManager *)self setCachedInteractionsDate:v3];
  }
}

void __61__CNQuickActionsUsageManager__updateDuetInteractionsIfNeeded__block_invoke()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = get_CDInteractionAdvisorClass_softClass;
  v8 = get_CDInteractionAdvisorClass_softClass;
  if (!get_CDInteractionAdvisorClass_softClass)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __get_CDInteractionAdvisorClass_block_invoke;
    v4[3] = &unk_1E74E7518;
    v4[4] = &v5;
    __get_CDInteractionAdvisorClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = [v0 interactionAdvisor];
  v3 = _updateDuetInteractionsIfNeeded_cn_once_object_1;
  _updateDuetInteractionsIfNeeded_cn_once_object_1 = v2;
}

- (void)updateCachedEnabledStateForAction:(id)a3
{
  v4 = a3;
  [v4 setCached:1];
  v6 = [(CNQuickActionsUsageManager *)self enabledActionIdentifiers];
  v5 = [v4 globalIdentifier];
  [v4 setEnabled:{objc_msgSend(v6, "containsObject:", v5)}];
}

- (void)cacheEnabledStateForAction:(id)a3
{
  v4 = a3;
  v5 = [v4 enabled];
  v7 = [(CNQuickActionsUsageManager *)self enabledActionIdentifiers];
  v6 = [v4 globalIdentifier];

  if (v5)
  {
    [v7 addObject:v6];
  }

  else
  {
    [v7 removeObject:v6];
  }
}

- (double)scoreForAction:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CNQuickActionsUsageManager *)self sortsWithDuet])
  {
    v5 = [(CNQuickActionsUsageManager *)self cachedInteractions];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      v9 = 0.0;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if ([v4 matchesDuetInteraction:v11])
          {
            [v11 score];
            v9 = v9 + v12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    else
    {
      v9 = 0.0;
    }
  }

  else
  {
    v5 = [(CNQuickActionsUsageManager *)self actionsUsageSet];
    v13 = [v4 globalIdentifier];
    v9 = [v5 countForObject:v13];
  }

  return v9;
}

- (void)actionPerformed:(id)a3
{
  v4 = a3;
  v6 = [(CNQuickActionsUsageManager *)self actionsUsageSet];
  v5 = [v4 globalIdentifier];

  [v6 addObject:v5];
  [(CNQuickActionsUsageManager *)self setCachedInteractions:0];
}

- (NSMutableSet)enabledActionIdentifiers
{
  enabledActionIdentifiers = self->_enabledActionIdentifiers;
  if (!enabledActionIdentifiers)
  {
    v4 = [MEMORY[0x1E695DFA8] set];
    v5 = self->_enabledActionIdentifiers;
    self->_enabledActionIdentifiers = v4;

    enabledActionIdentifiers = self->_enabledActionIdentifiers;
  }

  return enabledActionIdentifiers;
}

- (NSCountedSet)actionsUsageSet
{
  actionsUsageSet = self->_actionsUsageSet;
  if (!actionsUsageSet)
  {
    v4 = [MEMORY[0x1E696AB50] set];
    v5 = self->_actionsUsageSet;
    self->_actionsUsageSet = v4;

    actionsUsageSet = self->_actionsUsageSet;
  }

  return actionsUsageSet;
}

- (CNQuickActionsUsageManager)init
{
  v4.receiver = self;
  v4.super_class = CNQuickActionsUsageManager;
  v2 = [(CNQuickActionsUsageManager *)&v4 init];
  -[CNQuickActionsUsageManager setSortsWithDuet:](v2, "setSortsWithDuet:", [objc_opt_class() sortUsingCoreDuetAvailable]);
  return v2;
}

+ (BOOL)sortUsingCoreDuetAvailable
{
  if (sortUsingCoreDuetAvailable_onceToken != -1)
  {
    dispatch_once(&sortUsingCoreDuetAvailable_onceToken, &__block_literal_global_3_57626);
  }

  return sortUsingCoreDuetAvailable_enabled;
}

void __56__CNQuickActionsUsageManager_sortUsingCoreDuetAvailable__block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"CNQuickActionsSortedWithCoreDuet", *MEMORY[0x1E695E890], &keyExistsAndHasValidFormat))
  {
    v4 = 1;
  }

  else
  {
    v4 = keyExistsAndHasValidFormat == 0;
  }

  v5 = v4;
  sortUsingCoreDuetAvailable_enabled = v5;
  if (v4)
  {
    v6 = [MEMORY[0x1E69966E8] currentEnvironment];
    v7 = [v6 entitlementVerifier];
    sortUsingCoreDuetAvailable_enabled = [v7 currentProcessHasBooleanEntitlement:*MEMORY[0x1E69964F0] error:0];
  }

  else
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNQuickActionsUsageManager.m", 67, 4, @"Missing entitlement for CoreDuet. Please add com.apple.coreduetd.allow to the entitlements of the app.", v0, v1, v2, v3, v8);
  }
}

+ (id)managerForContact:(id)a3
{
  v3 = a3;
  if (managerForContact__onceToken != -1)
  {
    dispatch_once(&managerForContact__onceToken, &__block_literal_global_57636);
  }

  v4 = [v3 identifier];
  v5 = [managerForContact__mapTable objectForKey:v4];
  if (!v5)
  {
    v5 = objc_alloc_init(CNQuickActionsUsageManager);
    [(CNQuickActionsUsageManager *)v5 setContact:v3];
    [managerForContact__mapTable setObject:v5 forKey:v4];
  }

  return v5;
}

uint64_t __48__CNQuickActionsUsageManager_managerForContact___block_invoke()
{
  v0 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v1 = managerForContact__mapTable;
  managerForContact__mapTable = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end