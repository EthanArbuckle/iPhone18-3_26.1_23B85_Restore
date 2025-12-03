@interface MPHomeUserMonitor
+ (BOOL)isExplicitSettingEnabledForCurrentUser;
+ (BOOL)isPrivateListeningEnabledForCurrentUserAndAccessory;
+ (MPHomeUserMonitor)monitorForCurrentUser;
+ (MPHomeUserMonitor)userMonitorWithHomeIdentifier:(id)identifier;
+ (MPHomeUserMonitor)userMonitorWithHomeIdentifiers:(id)identifiers;
+ (MPHomeUserMonitor)userMonitorWithUserIdentity:(id)identity fromUserIdentityStore:(id)store;
+ (void)setExplicitSettingEnabledForCurrentUser:(BOOL)user;
+ (void)setPrivateListeningEnabledForCurrentUserAndAccessory:(BOOL)accessory;
- (BOOL)hasAccessoryWithRouteID:(id)d;
- (BOOL)isExplicitSettingEnabled;
- (BOOL)isPrivateListeningEnabledForCurrentAccessory;
- (BOOL)privateListeningEnabledForAccessoryWithRouteID:(id)d;
- (MPHomeUserMonitor)initWithUser:(id)user homeManager:(id)manager;
- (id)_homeAccesssoryWithRouteID:(id)d;
- (id)privateListeningEnabledForGroupWithRouteIDs:(id)ds;
- (void)_loadAllowExplicitValue;
- (void)_loadCurrentAccessoryPrivateListening;
- (void)_postNotificationWithName:(id)name;
- (void)_update;
- (void)_updateUserListeningHistoryControlForAccessory:(id)accessory enable:(BOOL)enable;
- (void)setExplicitSettingEnabled:(BOOL)enabled;
- (void)setPrivateListeningEnabledForAccessoryWithRouteID:(id)d enabled:(BOOL)enabled;
- (void)setPrivateListeningEnabledForCurrentAccessory:(BOOL)accessory;
- (void)settingsDidUpdate:(id)update;
- (void)user:(id)user didUpdateUserListeningHistoryUpdateControl:(id)control forHome:(id)home;
@end

@implementation MPHomeUserMonitor

- (void)user:(id)user didUpdateUserListeningHistoryUpdateControl:(id)control forHome:(id)home
{
  v18 = *MEMORY[0x1E69E9840];
  userCopy = user;
  homeCopy = home;
  v9 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEBUG, "<MPHomeUserMonitor %p> HMUserDelegatePrivate user:didUpdateUserListeningHistoryUpdateControl:forHome:", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__MPHomeUserMonitor_user_didUpdateUserListeningHistoryUpdateControl_forHome___block_invoke;
  block[3] = &unk_1E76800A0;
  block[4] = self;
  v14 = userCopy;
  v15 = homeCopy;
  v11 = homeCopy;
  v12 = userCopy;
  dispatch_async(accessQueue, block);
}

void __77__MPHomeUserMonitor_user_didUpdateUserListeningHistoryUpdateControl_forHome___block_invoke(uint64_t a1)
{
  v9 = [*(*(a1 + 32) + 48) currentAccessory];
  v2 = *(*(a1 + 32) + 24);
  v3 = *(a1 + 40);
  v4 = v3;
  if (v3 == v2)
  {
  }

  else
  {
    v5 = [v3 isEqual:v2];

    if (!v5)
    {
      goto LABEL_11;
    }
  }

  v6 = *(a1 + 48);
  v7 = [*(*(a1 + 32) + 48) currentHome];
  if (v6 == v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = [v6 isEqual:v7];
  }

  if (v8 && v9)
  {
    [*(a1 + 32) _loadCurrentAccessoryPrivateListening];
  }

LABEL_11:
}

- (void)settingsDidUpdate:(id)update
{
  v13 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  v5 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEBUG, "<MPHomeUserMonitor %p> HMSettingsDelegate settingsDidUpdate", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__MPHomeUserMonitor_settingsDidUpdate___block_invoke;
  v8[3] = &unk_1E76823C0;
  v9 = updateCopy;
  selfCopy2 = self;
  v7 = updateCopy;
  dispatch_async(accessQueue, v8);
}

void __39__MPHomeUserMonitor_settingsDidUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) rootGroup];
  v3 = _findSettingWithKeyPath(v2);

  if (v3)
  {
    [*(a1 + 40) _loadAllowExplicitValue];
  }
}

- (void)_postNotificationWithName:(id)name
{
  nameCopy = name;
  calloutQueue = self->_calloutQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__MPHomeUserMonitor__postNotificationWithName___block_invoke;
  v7[3] = &unk_1E76823C0;
  v7[4] = self;
  v8 = nameCopy;
  v6 = nameCopy;
  dispatch_async(calloutQueue, v7);
}

void __47__MPHomeUserMonitor__postNotificationWithName___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 134218242;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "[<MPHomeUserMonitor %p> posting notification: %{public}@", &v6, 0x16u);
  }

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:*(a1 + 40) object:*(a1 + 32)];
}

- (void)_updateUserListeningHistoryControlForAccessory:(id)accessory enable:(BOOL)enable
{
  enableCopy = enable;
  v14 = *MEMORY[0x1E69E9840];
  accessoryCopy = accessory;
  dispatch_assert_queue_V2(self->_accessQueue);
  if (accessoryCopy)
  {
    currentHome = [(HMHomeManager *)self->_homeManager currentHome];
    if (currentHome)
    {
      v8 = [(HMUser *)self->_user userListeningHistoryUpdateControlForHome:currentHome];
      v9 = [v8 mutableCopy];

      if (v9)
      {
        if (enableCopy)
        {
          [v9 removeAccessory:accessoryCopy];
        }

        else
        {
          [v9 addAccessory:accessoryCopy];
        }
      }
    }
  }

  else
  {
    currentHome = os_log_create("com.apple.amp.mediaplayer", "Preferences");
    if (os_log_type_enabled(currentHome, OS_LOG_TYPE_ERROR))
    {
      v10 = 134218240;
      selfCopy = self;
      v12 = 1024;
      v13 = enableCopy;
      _os_log_impl(&dword_1A238D000, currentHome, OS_LOG_TYPE_ERROR, "[<MPHomeUserMonitor %p> _updateUserListeningHistoryControlForAccessory:] failed to set enable=%{BOOL}u [accessory=nil]", &v10, 0x12u);
    }
  }
}

- (void)_loadCurrentAccessoryPrivateListening
{
  v19 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_accessQueue);
  currentAccessory = [(HMHomeManager *)self->_homeManager currentAccessory];
  currentHome = [(HMHomeManager *)self->_homeManager currentHome];
  if (currentHome)
  {
    user = self->_user;
    currentHome2 = [(HMHomeManager *)self->_homeManager currentHome];
    v7 = [(HMUser *)user userListeningHistoryUpdateControlForHome:currentHome2];

    if (currentAccessory)
    {
      if (v7)
      {
        accessories = [v7 accessories];
        v9 = [accessories containsObject:currentAccessory] ^ 1;

        goto LABEL_13;
      }

      goto LABEL_6;
    }

LABEL_9:
    v10 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 134217984;
      selfCopy3 = self;
      _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_ERROR, "[<MPHomeUserMonitor %p> _loadCurrentAccessoryPrivateListening:] failed to fetch privateListeningSetting [currentAccessory=nil]", &v13, 0xCu);
    }

    goto LABEL_12;
  }

  if (!currentAccessory)
  {
    v7 = 0;
    goto LABEL_9;
  }

LABEL_6:
  v7 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v13 = 134217984;
    selfCopy3 = self;
    _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_ERROR, "[<MPHomeUserMonitor %p> _loadCurrentAccessoryPrivateListening:] failed to fetch privateListeningSetting [userListeningControl=nil]", &v13, 0xCu);
  }

LABEL_12:
  v9 = 1;
LABEL_13:

  if (self->_currentAccessoryPrivateListeningCachedValue != v9)
  {
    self->_currentAccessoryPrivateListeningCachedValue = v9;
    v11 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      userID = [(HMUser *)self->_user userID];
      v13 = 134218499;
      selfCopy3 = self;
      v15 = 1024;
      v16 = v9;
      v17 = 2113;
      v18 = userID;
      _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_DEFAULT, "[<MPHomeUserMonitor %p> _loadCurrentAccessoryPrivateListening:] updating value privateListeningEnabled=%{BOOL}u for userID=%{private}@", &v13, 0x1Cu);
    }

    [(MPHomeUserMonitor *)self _notifyPrivateListeningUpdated];
  }
}

- (void)_loadAllowExplicitValue
{
  v20 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_accessQueue);
  rootGroup = [(HMSettings *)self->_sharedSettings rootGroup];
  v4 = _findSettingWithKeyPath(rootGroup);

  v5 = objc_opt_class();
  if (_isValidSetting(v4, v5))
  {
    value = [v4 value];
    bOOLValue = [value BOOLValue];
  }

  else
  {
    v8 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_ERROR, "<MPHomeUserMonitor %p> _loadAllowExplicitValueFromSetting: failed [invalid setting]", &v12, 0xCu);
    }

    bOOLValue = 1;
  }

  if (self->_allowExplicitCachedValue != bOOLValue)
  {
    v9 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      userID = [(HMUser *)self->_user userID];
      allowExplicitCachedValue = self->_allowExplicitCachedValue;
      v12 = 134218755;
      selfCopy2 = self;
      v14 = 2113;
      v15 = userID;
      v16 = 1024;
      v17 = allowExplicitCachedValue;
      v18 = 1024;
      v19 = bOOLValue;
      _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEFAULT, "<MPHomeUserMonitor %p> _loadAllowExplicitValueFromSetting: userID=%{private}@ cachedValue=%{BOOL}u newValue=%{BOOL}u", &v12, 0x22u);
    }

    self->_allowExplicitCachedValue = bOOLValue;
    [(MPHomeUserMonitor *)self _notifyAllowExplicitUpdated];
  }
}

- (id)_homeAccesssoryWithRouteID:(id)d
{
  v25 = *MEMORY[0x1E69E9840];
  dCopy = d;
  currentHome = [(HMHomeManager *)self->_homeManager currentHome];
  v6 = currentHome;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__14429;
  v19 = __Block_byref_object_dispose__14430;
  v20 = 0;
  if (!currentHome || ([currentHome accessories], v7 = objc_claimAutoreleasedReturnValue(), v12[0] = MEMORY[0x1E69E9820], v12[1] = 3221225472, v12[2] = __48__MPHomeUserMonitor__homeAccesssoryWithRouteID___block_invoke, v12[3] = &unk_1E7678500, v13 = dCopy, v14 = &v15, objc_msgSend(v7, "enumerateObjectsUsingBlock:", v12), v7, v13, (v8 = v16[5]) == 0))
  {
    v9 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v23 = 2114;
      v24 = dCopy;
      _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_ERROR, "<MPHomeManagerObserver %p> homeAccesssoryWithRouteID: No homeAccessory with routeID=%{public}@", buf, 0x16u);
    }

    v8 = v16[5];
  }

  v10 = v8;
  _Block_object_dispose(&v15, 8);

  return v10;
}

void __48__MPHomeUserMonitor__homeAccesssoryWithRouteID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v10 = v7;
  v9 = [v7 deviceIdentifier];
  LODWORD(v8) = [v8 isEqualToString:v9];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)privateListeningEnabledForGroupWithRouteIDs:(id)ds
{
  dsCopy = ds;
  if (+[MPHomeMonitor isCurrentDeviceValidHomeAccessory])
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__14429;
    v12 = __Block_byref_object_dispose__14430;
    v13 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __65__MPHomeUserMonitor_privateListeningEnabledForGroupWithRouteIDs___block_invoke;
    v7[3] = &unk_1E7678528;
    v7[4] = self;
    v7[5] = &v8;
    [dsCopy enumerateObjectsUsingBlock:v7];
    v5 = v9[5];
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __65__MPHomeUserMonitor_privateListeningEnabledForGroupWithRouteIDs___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([*(a1 + 32) hasAccessoryWithRouteID:?])
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    v4 = MEMORY[0x1E696AD98];
    if (v3)
    {
      if ([v3 BOOLValue])
      {
        v5 = [*(a1 + 32) privateListeningEnabledForAccessoryWithRouteID:v9];
      }

      else
      {
        v5 = 0;
      }

      v6 = [v4 numberWithInt:v5];
    }

    else
    {
      v6 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "privateListeningEnabledForAccessoryWithRouteID:", v9)}];
    }

    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (BOOL)privateListeningEnabledForAccessoryWithRouteID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__MPHomeUserMonitor_privateListeningEnabledForAccessoryWithRouteID___block_invoke;
  block[3] = &unk_1E7681330;
  v9 = dCopy;
  selfCopy = self;
  v11 = &v12;
  v6 = dCopy;
  dispatch_sync(accessQueue, block);
  LOBYTE(accessQueue) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return accessQueue;
}

void __68__MPHomeUserMonitor_privateListeningEnabledForAccessoryWithRouteID___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = [*(*(a1 + 40) + 48) currentHome];
    if (v2 && ([*(*(a1 + 40) + 24) userListeningHistoryUpdateControlForHome:v2], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v4 = v3;
      *(*(*(a1 + 48) + 8) + 24) = 1;
      v5 = [v3 accessories];
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __68__MPHomeUserMonitor_privateListeningEnabledForAccessoryWithRouteID___block_invoke_17;
      v18 = &unk_1E7678500;
      v6 = *(a1 + 32);
      v7 = *(a1 + 48);
      v19 = v6;
      v20 = v7;
      [v5 enumerateObjectsUsingBlock:&v15];

      v8 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 40);
        v10 = [*(v9 + 24) userID];
        v11 = *(a1 + 32);
        v12 = *(*(*(a1 + 48) + 8) + 24);
        *buf = 134218755;
        v22 = v9;
        v23 = 2113;
        v24 = v10;
        v25 = 2114;
        v26 = v11;
        v27 = 1024;
        v28 = v12;
        _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEFAULT, "<MPHomeUserMonitor %p> privateListeningEnabledForAccessoryWithRouteID userID=%{private}@ routeID=%{public}@ privateListening=%{BOOL}u", buf, 0x26u);
      }
    }

    else
    {
      v4 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 40);
        *buf = 134217984;
        v22 = v13;
        _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "[<MPHomeUserMonitor %p> privateListeningEnabledForAccessoryWithRouteID:] failed to fetch privateListeningSetting [userListeningControl=nil]", buf, 0xCu);
      }
    }
  }

  else
  {
    v2 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 40);
      *buf = 134217984;
      v22 = v14;
      _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_ERROR, "[<MPHomeUserMonitor %p> privateListeningEnabledForAccessoryWithRouteID:] failed to fetch privateListeningSetting [routeID=nil]", buf, 0xCu);
    }
  }
}

void __68__MPHomeUserMonitor_privateListeningEnabledForAccessoryWithRouteID___block_invoke_17(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = [a2 deviceIdentifier];
  LODWORD(v6) = [v6 isEqualToString:v7];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (BOOL)hasAccessoryWithRouteID:(id)d
{
  dCopy = d;
  currentHome = [(HMHomeManager *)self->_homeManager currentHome];
  v6 = currentHome;
  if (currentHome)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    accessories = [currentHome accessories];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __45__MPHomeUserMonitor_hasAccessoryWithRouteID___block_invoke;
    v10[3] = &unk_1E7678500;
    v11 = dCopy;
    v12 = &v13;
    [accessories enumerateObjectsUsingBlock:v10];

    v8 = *(v14 + 24);
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void __45__MPHomeUserMonitor_hasAccessoryWithRouteID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = [a2 deviceIdentifier];
  LODWORD(v6) = [v6 isEqualToString:v7];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)setPrivateListeningEnabledForAccessoryWithRouteID:(id)d enabled:(BOOL)enabled
{
  dCopy = d;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__MPHomeUserMonitor_setPrivateListeningEnabledForAccessoryWithRouteID_enabled___block_invoke;
  block[3] = &unk_1E767A6F8;
  block[4] = self;
  v10 = dCopy;
  enabledCopy = enabled;
  v8 = dCopy;
  dispatch_async(accessQueue, block);
}

void __79__MPHomeUserMonitor_setPrivateListeningEnabledForAccessoryWithRouteID_enabled___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(v3 + 24) userID];
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = 134218755;
    v9 = v3;
    v10 = 2113;
    v11 = v4;
    v12 = 2114;
    v13 = v5;
    v14 = 1024;
    v15 = v6;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "<MPHomeUserMonitor %p> Setting privateListening for accessory. userID=%{private}@ routID=%{public}@ enabled=%{BOOL}u", &v8, 0x26u);
  }

  v7 = [*(a1 + 32) _homeAccesssoryWithRouteID:*(a1 + 40)];
  [*(a1 + 32) _updateUserListeningHistoryControlForAccessory:v7 enable:*(a1 + 48)];
}

- (void)setPrivateListeningEnabledForCurrentAccessory:(BOOL)accessory
{
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__MPHomeUserMonitor_setPrivateListeningEnabledForCurrentAccessory___block_invoke;
  v4[3] = &unk_1E7682280;
  v4[4] = self;
  accessoryCopy = accessory;
  dispatch_async(accessQueue, v4);
}

void __67__MPHomeUserMonitor_setPrivateListeningEnabledForCurrentAccessory___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 57) != *(a1 + 40))
  {
    v3 = [*(v1 + 48) currentAccessory];
    if (v3)
    {
      *(*(a1 + 32) + 57) = *(a1 + 40);
      v4 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        v6 = [*(v5 + 24) userID];
        v7 = *(a1 + 40);
        v11 = 134218499;
        v12 = v5;
        v13 = 2113;
        v14 = v6;
        v15 = 1024;
        v16 = v7;
        _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "<MPHomeUserMonitor %p> Setting privateListening for currentAccessory. userID=%{private}@ enabled=%{BOOL}u", &v11, 0x1Cu);
      }

      [*(a1 + 32) _updateUserListeningHistoryControlForAccessory:v3 enable:*(a1 + 40)];
    }

    else
    {
      v8 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        v11 = 134218240;
        v12 = v9;
        v13 = 1024;
        LODWORD(v14) = v10;
        _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_ERROR, "[<MPHomeUserMonitor %p> setPrivateListeningEnabledForCurrentAccessory:] failed to set enabled=%{BOOL}u [currentAccessory=nil]", &v11, 0x12u);
      }
    }
  }
}

- (BOOL)isPrivateListeningEnabledForCurrentAccessory
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__MPHomeUserMonitor_isPrivateListeningEnabledForCurrentAccessory__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setExplicitSettingEnabled:(BOOL)enabled
{
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__MPHomeUserMonitor_setExplicitSettingEnabled___block_invoke;
  v4[3] = &unk_1E7682280;
  v4[4] = self;
  enabledCopy = enabled;
  dispatch_async(accessQueue, v4);
}

void __47__MPHomeUserMonitor_setExplicitSettingEnabled___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (*(v3 + 56) != v4)
  {
    v12 = v1;
    v13 = v2;
    *(v3 + 56) = v4;
    v6 = [*(*(a1 + 32) + 40) rootGroup];
    v7 = _findSettingWithKeyPath(v6);

    v8 = objc_opt_class();
    if (_isValidSetting(v7, v8))
    {
      v9 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __47__MPHomeUserMonitor_setExplicitSettingEnabled___block_invoke_2;
      v10[3] = &unk_1E76784D8;
      v10[4] = *(a1 + 32);
      v11 = *(a1 + 40);
      [v7 updateValue:v9 completionHandler:v10];
    }
  }
}

void __47__MPHomeUserMonitor_setExplicitSettingEnabled___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      *buf = 134218754;
      v11 = v5;
      v12 = 2114;
      v13 = @"root.music.allowExplicitContent";
      v14 = 1024;
      v15 = v6;
      v16 = 2114;
      v17 = v3;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "<MPHomeUserMonitor %p> HMSetting %{public}@ failed to update. shouldAllowExplicit=%{BOOOL}u error=%{public}@", buf, 0x26u);
    }

    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__MPHomeUserMonitor_setExplicitSettingEnabled___block_invoke_14;
    block[3] = &unk_1E7682518;
    block[4] = v7;
    dispatch_async(v8, block);
  }
}

- (BOOL)isExplicitSettingEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__MPHomeUserMonitor_isExplicitSettingEnabled__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_update
{
  dispatch_assert_queue_V2(self->_accessQueue);
  [(MPHomeUserMonitor *)self _loadAllowExplicitValue];

  [(MPHomeUserMonitor *)self _loadCurrentAccessoryPrivateListening];
}

- (MPHomeUserMonitor)initWithUser:(id)user homeManager:(id)manager
{
  userCopy = user;
  managerCopy = manager;
  v19.receiver = self;
  v19.super_class = MPHomeUserMonitor;
  v8 = [(MPHomeUserMonitor *)&v19 init];
  if (v8)
  {
    v9 = dispatch_queue_create("com.apple.mediaplayer.MPHomeUserMonitor.accessQueue", 0);
    accessQueue = v8->_accessQueue;
    v8->_accessQueue = v9;

    v11 = dispatch_queue_create("com.apple.mediaplayer.MPHomeUserMonitor.calloutQueue", MEMORY[0x1E69E96A8]);
    calloutQueue = v8->_calloutQueue;
    v8->_calloutQueue = v11;

    v13 = v8->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__MPHomeUserMonitor_initWithUser_homeManager___block_invoke;
    block[3] = &unk_1E76800A0;
    v16 = v8;
    v17 = managerCopy;
    v18 = userCopy;
    dispatch_sync(v13, block);
  }

  return v8;
}

uint64_t __46__MPHomeUserMonitor_initWithUser_homeManager___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 48));
  [*(*(a1 + 32) + 24) setDelegate:?];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v4 = [*(v2 + 48) currentHome];
  v5 = [v3 userSettingsForHome:v4];
  v6 = [v5 settings];
  v7 = *(a1 + 32);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  [*(*(a1 + 32) + 40) setDelegate:?];
  v9 = *(a1 + 32);
  v10 = *(v9 + 24);
  v11 = [*(v9 + 48) currentHome];
  v12 = [v10 userSettingsForHome:v11];
  v13 = [v12 privateSettings];
  v14 = *(a1 + 32);
  v15 = *(v14 + 32);
  *(v14 + 32) = v13;

  [*(*(a1 + 32) + 32) setDelegate:?];
  v16 = *(a1 + 32);

  return [v16 _update];
}

+ (void)setPrivateListeningEnabledForCurrentUserAndAccessory:(BOOL)accessory
{
  accessoryCopy = accessory;
  v8 = *MEMORY[0x1E69E9840];
  v4 = +[MPHomeUserMonitor monitorForCurrentUser];
  v5 = v4;
  if (v4)
  {
    [v4 setPrivateListeningEnabledForCurrentAccessory:accessoryCopy];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = accessoryCopy;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_ERROR, "[MPHomeUserMonitor setPrivateListeningEnabledForCurrentUserAndAccessory:] failed to set privateListeningEnabled=%{BOOL}u [monitorForCurrentUser=nil]", v7, 8u);
    }
  }
}

+ (BOOL)isPrivateListeningEnabledForCurrentUserAndAccessory
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = +[MPHomeUserMonitor monitorForCurrentUser];
  v3 = v2;
  if (v2)
  {
    isPrivateListeningEnabledForCurrentAccessory = [v2 isPrivateListeningEnabledForCurrentAccessory];
  }

  else
  {
    v5 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = 1;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "MPHomeUserMonitor.isPrivateListeningEnabledForCurrentUserAndAccessory returning fallback value=%{BOOL}u [monitorForCurrentUser=nil]", v7, 8u);
    }

    isPrivateListeningEnabledForCurrentAccessory = 1;
  }

  return isPrivateListeningEnabledForCurrentAccessory;
}

+ (void)setExplicitSettingEnabledForCurrentUser:(BOOL)user
{
  userCopy = user;
  v8 = *MEMORY[0x1E69E9840];
  v4 = +[MPHomeUserMonitor monitorForCurrentUser];
  v5 = v4;
  if (v4)
  {
    [v4 setExplicitSettingEnabled:userCopy];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = userCopy;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_ERROR, "[MPHomeUserMonitor setExplicitSettingEnabledForCurrentUser:] failed to set explicitSettingEnabled=%{BOOL}u [monitorForCurrentUser=nil]", v7, 8u);
    }
  }
}

+ (BOOL)isExplicitSettingEnabledForCurrentUser
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = +[MPHomeUserMonitor monitorForCurrentUser];
  v3 = v2;
  if (v2)
  {
    isExplicitSettingEnabled = [v2 isExplicitSettingEnabled];
  }

  else
  {
    v5 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = 1;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "MPHomeUserMonitor.isExplicitSettingEnabledForCurrentUser returning fallback value=%{BOOL}u [monitorForCurrentUser=nil]", v7, 8u);
    }

    isExplicitSettingEnabled = 1;
  }

  return isExplicitSettingEnabled;
}

+ (MPHomeUserMonitor)monitorForCurrentUser
{
  if (+[MPHomeMonitor isCurrentDeviceValidHomeAccessory])
  {
    v2 = +[MPHomeManagerObserver sharedObserver];
    monitorForCurrentUser = [v2 monitorForCurrentUser];
  }

  else
  {
    monitorForCurrentUser = 0;
  }

  return monitorForCurrentUser;
}

+ (MPHomeUserMonitor)userMonitorWithUserIdentity:(id)identity fromUserIdentityStore:(id)store
{
  identityCopy = identity;
  storeCopy = store;
  if (!+[MPHomeMonitor isCurrentDeviceValidHomeAccessory])
  {
    v8 = 0;
    goto LABEL_16;
  }

  if (storeCopy)
  {
    defaultIdentityStore = storeCopy;
  }

  else
  {
    defaultIdentityStore = [MEMORY[0x1E69E4688] defaultIdentityStore];
  }

  v9 = defaultIdentityStore;
  v10 = [defaultIdentityStore getPropertiesForUserIdentity:identityCopy error:0];
  v11 = v10;
  if (!v10)
  {
    v14 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_ERROR, "[MPHomeUserMonitor userMonitorWithUserIdentity:fromUserIdentityStore:] identityProperties=nil", buf, 2u);
    }

    goto LABEL_14;
  }

  homeUserIdentifiers = [v10 homeUserIdentifiers];
  v13 = [MPHomeUserMonitor userMonitorWithHomeIdentifiers:homeUserIdentifiers];

  if (!v13)
  {
    v15 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_ERROR, "[MPHomeUserMonitor userMonitorWithUserIdentity:fromUserIdentityStore:] userMonitor=nil", v17, 2u);
    }

    v14 = 0;
LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  v14 = v13;
  v8 = v14;
LABEL_15:

LABEL_16:

  return v8;
}

+ (MPHomeUserMonitor)userMonitorWithHomeIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (+[MPHomeMonitor isCurrentDeviceValidHomeAccessory])
  {
    v4 = +[MPHomeManagerObserver sharedObserver];
    v5 = [v4 userMonitorWithHomeIdentifiers:identifiersCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (MPHomeUserMonitor)userMonitorWithHomeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (+[MPHomeMonitor isCurrentDeviceValidHomeAccessory])
  {
    v4 = +[MPHomeManagerObserver sharedObserver];
    v5 = [v4 userMonitorWithHomeIdentifier:identifierCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end