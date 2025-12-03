@interface MPHomeManagerObserver
+ (id)sharedObserver;
- (BOOL)hasCurrentAccessory;
- (BOOL)hasCurrentHome;
- (BOOL)hasCurrentUser;
- (BOOL)isSoundCheckEnabled;
- (BOOL)setupDidComplete;
- (HMUser)currentUser;
- (MPHomeManagerObserver)init;
- (MPHomeManagerObserverDelegate)delegate;
- (MPHomeUserMonitor)monitorForCurrentUser;
- (id)_userMonitorWithHomeIdentifiers:(id)identifiers;
- (id)homeAccesssoryWithRouteID:(id)d;
- (id)userMonitorWithHomeIdentifier:(id)identifier;
- (id)userMonitorWithHomeIdentifiers:(id)identifiers;
- (void)_currentHomeDidChange;
- (void)_currentUserDidChange;
- (void)_soundCheckDidChange;
- (void)_update;
- (void)_updateAsyncOnQueue;
- (void)_updateSoundCheck;
- (void)_usersDidChange;
- (void)home:(id)home didAddUser:(id)user;
- (void)home:(id)home didRemoveUser:(id)user;
- (void)homeDidUpdateAccessControlForCurrentUser:(id)user;
- (void)homeDidUpdateSoundCheck:(id)check;
- (void)homeManager:(id)manager didAddHome:(id)home;
- (void)homeManager:(id)manager didRemoveHome:(id)home;
- (void)homeManager:(id)manager didUpdateStatus:(unint64_t)status;
- (void)homeManagerDidRemoveCurrentAccessory:(id)accessory;
- (void)homeManagerDidUpdateCurrentHome:(id)home;
- (void)homeManagerDidUpdateHomes:(id)homes;
- (void)homeManagerDidUpdatePrimaryHome:(id)home;
- (void)setSoundCheckEnabled:(BOOL)enabled;
@end

@implementation MPHomeManagerObserver

- (MPHomeManagerObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)homeManagerDidRemoveCurrentAccessory:(id)accessory
{
  v10 = *MEMORY[0x1E69E9840];
  accessoryCopy = accessory;
  v5 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134218242;
    selfCopy = self;
    v8 = 2114;
    v9 = accessoryCopy;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEBUG, "<MPHomeManagerObserver %p> HMHomeManagerDelegatePrivate homeManagerDidRemoveCurrentAccessory:%{public}@", &v6, 0x16u);
  }

  [(MPHomeManagerObserver *)self _updateAsyncOnQueue];
}

- (void)homeManager:(id)manager didRemoveHome:(id)home
{
  v15 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  homeCopy = home;
  v8 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134218498;
    selfCopy = self;
    v11 = 2114;
    v12 = managerCopy;
    v13 = 2114;
    v14 = homeCopy;
    _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEBUG, "<MPHomeManagerObserver %p> HMHomeManagerDelegatePrivate homeManager:%{public}@ didRemoveHome:%{public}@", &v9, 0x20u);
  }

  [(MPHomeManagerObserver *)self _updateAsyncOnQueue];
}

- (void)homeManager:(id)manager didAddHome:(id)home
{
  v15 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  homeCopy = home;
  v8 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134218498;
    selfCopy = self;
    v11 = 2114;
    v12 = managerCopy;
    v13 = 2114;
    v14 = homeCopy;
    _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEBUG, "<MPHomeManagerObserver %p> HMHomeManagerDelegatePrivate homeManager:%{public}@ didAddHome:%{public}@", &v9, 0x20u);
  }

  [(MPHomeManagerObserver *)self _updateAsyncOnQueue];
}

- (void)homeManagerDidUpdatePrimaryHome:(id)home
{
  v10 = *MEMORY[0x1E69E9840];
  homeCopy = home;
  v5 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134218242;
    selfCopy = self;
    v8 = 2114;
    v9 = homeCopy;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEBUG, "<MPHomeManagerObserver %p> HMHomeManagerDelegatePrivate homeManagerDidUpdatePrimaryHome:%{public}@", &v6, 0x16u);
  }

  [(MPHomeManagerObserver *)self _updateAsyncOnQueue];
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  v13 = *MEMORY[0x1E69E9840];
  homesCopy = homes;
  v5 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134218242;
    selfCopy = self;
    v11 = 2114;
    v12 = homesCopy;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEBUG, "<MPHomeManagerObserver %p> HMHomeManagerDelegatePrivate homeManagerDidUpdateHomes:%{public}@", &v9, 0x16u);
  }

  v6 = os_log_create("com.apple.amp.mediaplayer", "Default");
  v7 = v6;
  homekitInitSignpostId = self->_homekitInitSignpostId;
  if (homekitInitSignpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v7, OS_SIGNPOST_INTERVAL_END, homekitInitSignpostId, "homekitInitialization", &unk_1A2797D62, &v9, 2u);
  }

  [(MPHomeManagerObserver *)self _updateAsyncOnQueue];
}

- (void)homeManager:(id)manager didUpdateStatus:(unint64_t)status
{
  v14 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  v7 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 134218498;
    selfCopy = self;
    v10 = 2114;
    v11 = managerCopy;
    v12 = 2048;
    statusCopy = status;
    _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEBUG, "<MPHomeManagerObserver %p> HMHomeManagerDelegatePrivate homeManager:%{public}@ didUpdateStatus:%lu", &v8, 0x20u);
  }

  [(MPHomeManagerObserver *)self _updateAsyncOnQueue];
}

- (void)homeManagerDidUpdateCurrentHome:(id)home
{
  v10 = *MEMORY[0x1E69E9840];
  homeCopy = home;
  v5 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134218242;
    selfCopy = self;
    v8 = 2114;
    v9 = homeCopy;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEBUG, "<MPHomeManagerObserver %p> HMHomeManagerDelegatePrivate homeManager:%{public}@ homeManagerDidUpdateCurrentHome:", &v6, 0x16u);
  }

  [(MPHomeManagerObserver *)self _updateAsyncOnQueue];
}

- (void)homeDidUpdateAccessControlForCurrentUser:(id)user
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEBUG, "<MPHomeManagerObserver %p> HMHomeDelegatePrivate homeDidUpdateAccessControlForCurrentUser", &v5, 0xCu);
  }

  [(MPHomeManagerObserver *)self _updateAsyncOnQueue];
}

- (void)homeDidUpdateSoundCheck:(id)check
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEBUG, "<MPHomeManagerObserver %p> HMHomeDelegatePrivate homeDidUpdateSoundCheck", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__MPHomeManagerObserver_homeDidUpdateSoundCheck___block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)home:(id)home didRemoveUser:(id)user
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEBUG, "<MPHomeManagerObserver %p> HMHomeDelegate home:didRemoveUser:", &v6, 0xCu);
  }

  [(MPHomeManagerObserver *)self _updateAsyncOnQueue];
}

- (void)home:(id)home didAddUser:(id)user
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEBUG, "<MPHomeManagerObserver %p> HMHomeDelegate home:didAddUser:", &v6, 0xCu);
  }

  [(MPHomeManagerObserver *)self _updateAsyncOnQueue];
}

- (void)_soundCheckDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    soundCheckCachedValue = self->_soundCheckCachedValue;
    calloutQueue = self->_calloutQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __45__MPHomeManagerObserver__soundCheckDidChange__block_invoke;
    v6[3] = &unk_1E7682280;
    v6[4] = self;
    v7 = soundCheckCachedValue;
    dispatch_async(calloutQueue, v6);
  }
}

void __45__MPHomeManagerObserver__soundCheckDidChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  [WeakRetained soundCheckSettingDidUpdate:*(a1 + 40)];
}

- (void)_usersDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    calloutQueue = self->_calloutQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__MPHomeManagerObserver__usersDidChange__block_invoke;
    block[3] = &unk_1E7682518;
    block[4] = self;
    dispatch_async(calloutQueue, block);
  }
}

void __40__MPHomeManagerObserver__usersDidChange__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "<MPHomeManagerObserver %p> homeUsersDidChange:", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  [WeakRetained homeUsersDidChange];
}

- (void)_currentUserDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    calloutQueue = self->_calloutQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__MPHomeManagerObserver__currentUserDidChange__block_invoke;
    block[3] = &unk_1E7682518;
    block[4] = self;
    dispatch_async(calloutQueue, block);
  }
}

void __46__MPHomeManagerObserver__currentUserDidChange__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "<MPHomeManagerObserver %p> currentUserDidChange:", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  [WeakRetained currentUserDidChange];
}

- (void)_currentHomeDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    calloutQueue = self->_calloutQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__MPHomeManagerObserver__currentHomeDidChange__block_invoke;
    block[3] = &unk_1E7682518;
    block[4] = self;
    dispatch_async(calloutQueue, block);
  }
}

void __46__MPHomeManagerObserver__currentHomeDidChange__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "<MPHomeManagerObserver %p> currentHomeDidChange:", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  [WeakRetained currentHomeDidChange];
}

- (void)_updateAsyncOnQueue
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MPHomeManagerObserver__updateAsyncOnQueue__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)_update
{
  v31 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_accessQueue);
  currentHome = [(HMHomeManager *)self->_homeManager currentHome];
  p_currentHome = &self->_currentHome;
  v5 = self->_currentHome;
  v6 = v5;
  if (v5 == currentHome)
  {
  }

  else
  {
    v7 = [(HMHome *)v5 isEqual:currentHome];

    if ((v7 & 1) == 0)
    {
      v8 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        currentHome = self->_currentHome;
        *buf = 134218496;
        selfCopy3 = self;
        v27 = 2048;
        v28 = currentHome;
        v29 = 2048;
        v30 = currentHome;
        _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEFAULT, "<MPHomeManagerObserver %p> currentHomeDidChange from %p to %p", buf, 0x20u);
      }

      [(HMHome *)self->_currentHome setDelegate:0];
      objc_storeStrong(&self->_currentHome, currentHome);
      [(HMHome *)self->_currentHome setDelegate:self];
      [(MPHomeManagerObserver *)self _currentHomeDidChange];
    }
  }

  currentUser = [(HMHome *)self->_currentHome currentUser];
  v11 = self->_currentUser;
  v12 = v11;
  if (v11 == currentUser)
  {
  }

  else
  {
    v13 = [(HMUser *)v11 isEqual:currentUser];

    if ((v13 & 1) == 0)
    {
      v14 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        currentUser = self->_currentUser;
        *buf = 134218496;
        selfCopy3 = self;
        v27 = 2048;
        v28 = currentUser;
        v29 = 2048;
        v30 = currentUser;
        _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_DEFAULT, "<MPHomeManagerObserver %p> currentUserDidChange from %p to %p", buf, 0x20u);
      }

      objc_storeStrong(&self->_currentUser, currentUser);
      [(MPHomeManagerObserver *)self _currentUserDidChange];
    }
  }

  v16 = *p_currentHome;
  if (*p_currentHome)
  {
    self->_setupDidComplete = 1;
    v17 = MEMORY[0x1E695DFA8];
    users = [(HMHome *)v16 users];
    v19 = [v17 setWithArray:users];

    [v19 addObject:self->_currentUser];
    if ([v19 count])
    {
      if ([(NSSet *)self->_homeUsers isEqualToSet:v19])
      {
LABEL_20:
        [(MPHomeManagerObserver *)self _updateSoundCheck];

        goto LABEL_21;
      }

      v20 = [(NSSet *)self->_homeUsers mutableCopy];
      [v20 minusSet:v19];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __32__MPHomeManagerObserver__update__block_invoke;
      v24[3] = &unk_1E7678468;
      v24[4] = self;
      [v20 enumerateObjectsUsingBlock:v24];
      v21 = [v19 mutableCopy];
      [v21 minusSet:self->_homeUsers];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __32__MPHomeManagerObserver__update__block_invoke_12;
      v23[3] = &unk_1E7678468;
      v23[4] = self;
      [v21 enumerateObjectsUsingBlock:v23];
      objc_storeStrong(&self->_homeUsers, v19);
      [(MPHomeManagerObserver *)self _usersDidChange];
    }

    else
    {
      v20 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v22 = self->_currentHome;
        *buf = 134218240;
        selfCopy3 = self;
        v27 = 2048;
        v28 = v22;
        _os_log_impl(&dword_1A238D000, v20, OS_LOG_TYPE_ERROR, "<MPHomeManagerObserver %p> currentUsers.count=0 in currentHome=%p", buf, 0x16u);
      }
    }

    goto LABEL_20;
  }

LABEL_21:
}

void __32__MPHomeManagerObserver__update__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v3 userID];
    v7 = [v3 uniqueIdentifier];
    v10 = 134218499;
    v11 = v5;
    v12 = 2113;
    v13 = v6;
    v14 = 2113;
    v15 = v7;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "<MPHomeManagerObserver %p> Removing MPHomeUserMonitor userID=%{private}@ uniqueIdentifier=%{private}@", &v10, 0x20u);
  }

  v8 = *(*(a1 + 32) + 56);
  v9 = [v3 uniqueIdentifier];
  [v8 removeObjectForKey:v9];
}

void __32__MPHomeManagerObserver__update__block_invoke_12(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [[MPHomeUserMonitor alloc] initWithUser:v3 homeManager:*(*(a1 + 32) + 24)];
  v5 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = [v3 userID];
    v8 = [v3 uniqueIdentifier];
    v11 = 134218755;
    v12 = v6;
    v13 = 2048;
    v14 = v4;
    v15 = 2113;
    v16 = v7;
    v17 = 2113;
    v18 = v8;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "<MPHomeManagerObserver %p> Adding <MPHomeUserMonitor %p> userID=%{private}@ uniqueIdentifier=%{private}@", &v11, 0x2Au);
  }

  v9 = *(*(a1 + 32) + 56);
  v10 = [v3 uniqueIdentifier];
  [v9 setObject:v4 forKeyedSubscript:v10];
}

- (void)_updateSoundCheck
{
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_accessQueue);
  currentHome = self->_currentHome;
  if (currentHome)
  {
    soundCheckEnabled = [(HMHome *)currentHome soundCheckEnabled];
  }

  else
  {
    v5 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = 134218240;
      selfCopy2 = self;
      v13 = 1024;
      v14 = 0;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "<MPHomeManagerObserver %p> _updateSoundCheck: _currentHome=nil using fallback value=%{BOOL}u", &v11, 0x12u);
    }

    soundCheckEnabled = 0;
  }

  v6 = +[MPPlaybackUserDefaults standardUserDefaults];
  soundCheckEnabled2 = [v6 soundCheckEnabled];

  if (soundCheckEnabled != soundCheckEnabled2)
  {
    v8 = +[MPPlaybackUserDefaults standardUserDefaults];
    [v8 setSoundCheckEnabled:soundCheckEnabled];
  }

  if (self->_soundCheckCachedValue != soundCheckEnabled)
  {
    v9 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      soundCheckCachedValue = self->_soundCheckCachedValue;
      v11 = 134218496;
      selfCopy2 = self;
      v13 = 1024;
      v14 = soundCheckCachedValue;
      v15 = 1024;
      v16 = soundCheckEnabled;
      _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEFAULT, "<MPHomeManagerObserver %p> _updateSoundCheck: cachedValue=%{BOOL}u currentValue=%{BOOL}u", &v11, 0x18u);
    }

    self->_soundCheckCachedValue = soundCheckEnabled;
    [(MPHomeManagerObserver *)self _soundCheckDidChange];
  }
}

- (id)_userMonitorWithHomeIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  dispatch_assert_queue_V2(self->_accessQueue);
  userMonitorMap = self->_userMonitorMap;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__MPHomeManagerObserver__userMonitorWithHomeIdentifiers___block_invoke;
  v11[3] = &unk_1E7678440;
  v12 = identifiersCopy;
  v6 = identifiersCopy;
  v7 = [(NSMutableDictionary *)userMonitorMap msv_firstWhere:v11];
  v8 = v7;
  if (v7)
  {
    second = [v7 second];
  }

  else
  {
    second = 0;
  }

  return second;
}

- (id)homeAccesssoryWithRouteID:(id)d
{
  v25 = *MEMORY[0x1E69E9840];
  dCopy = d;
  currentHome = [(HMHomeManager *)self->_homeManager currentHome];
  v6 = currentHome;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__14135;
  v19 = __Block_byref_object_dispose__14136;
  v20 = 0;
  if (!currentHome || ([currentHome accessories], v7 = objc_claimAutoreleasedReturnValue(), v12[0] = MEMORY[0x1E69E9820], v12[1] = 3221225472, v12[2] = __51__MPHomeManagerObserver_homeAccesssoryWithRouteID___block_invoke, v12[3] = &unk_1E7678500, v13 = dCopy, v14 = &v15, objc_msgSend(v7, "enumerateObjectsUsingBlock:", v12), v7, v13, (v8 = v16[5]) == 0))
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

void __51__MPHomeManagerObserver_homeAccesssoryWithRouteID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
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

- (id)userMonitorWithHomeIdentifiers:(id)identifiers
{
  v17 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__14135;
    v15 = __Block_byref_object_dispose__14136;
    v16 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__MPHomeManagerObserver_userMonitorWithHomeIdentifiers___block_invoke;
    block[3] = &unk_1E7681330;
    p_buf = &buf;
    block[4] = self;
    v10 = identifiersCopy;
    dispatch_sync(accessQueue, block);
    v6 = *(*(&buf + 1) + 40);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = self;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_ERROR, "<MPHomeManagerObserver %p> userMonitorWithHomeIdentifiers: returning nil [identifiers.count=0]", &buf, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

void __56__MPHomeManagerObserver_userMonitorWithHomeIdentifiers___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _userMonitorWithHomeIdentifiers:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [*(a1 + 40) description];
      v14 = 134218243;
      v15 = v6;
      v16 = 2113;
      v17 = v7;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "<MPHomeManagerObserver %p> userMonitorWithHomeIdentifiers: forcing update [no monitor found] homeIdentifiers=%{private}@", &v14, 0x16u);
    }

    [*(a1 + 32) _update];
    v8 = [*(a1 + 32) _userMonitorWithHomeIdentifiers:*(a1 + 40)];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v11 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 32);
        v13 = *(*(*(a1 + 48) + 8) + 40);
        v14 = 134218242;
        v15 = v12;
        v16 = 2112;
        v17 = v13;
        _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_ERROR, "<MPHomeManagerObserver %p> userMonitorWithHomeIdentifiers: homeUser found after forced update. monitor=%@", &v14, 0x16u);
      }
    }
  }
}

- (id)userMonitorWithHomeIdentifier:(id)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = MEMORY[0x1E695DEC8];
  identifierCopy2 = identifier;
  v6 = [v4 arrayWithObjects:&identifierCopy count:1];

  v7 = [(MPHomeManagerObserver *)self userMonitorWithHomeIdentifiers:v6, identifierCopy, v10];

  return v7;
}

- (MPHomeUserMonitor)monitorForCurrentUser
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__14135;
  v10 = __Block_byref_object_dispose__14136;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__MPHomeManagerObserver_monitorForCurrentUser__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __46__MPHomeManagerObserver_monitorForCurrentUser__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) currentUser];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = v3[7];
    v11 = [v3 currentUser];
    v5 = [v11 uniqueIdentifier];
    v6 = [v4 objectForKeyedSubscript:v5];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 134217984;
      v13 = v10;
      _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_ERROR, "<MPHomeManagerObserver %p> monitorForCurrentUser: currentUser=nil", buf, 0xCu);
    }
  }
}

- (void)setSoundCheckEnabled:(BOOL)enabled
{
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__MPHomeManagerObserver_setSoundCheckEnabled___block_invoke;
  v4[3] = &unk_1E7682280;
  v4[4] = self;
  enabledCopy = enabled;
  dispatch_async(accessQueue, v4);
}

uint64_t __46__MPHomeManagerObserver_setSoundCheckEnabled___block_invoke(uint64_t result)
{
  v3 = *(result + 32);
  v4 = *(result + 40);
  if (*(v3 + 64) != v4)
  {
    v8 = v1;
    v9 = v2;
    *(v3 + 64) = v4;
    v5 = *(result + 32);
    v6 = *(v5 + 32);
    LOBYTE(v7) = *(result + 40);
    return [v6 updateSoundCheckEnabled:MEMORY[0x1E69E9820] completion:{3221225472, __46__MPHomeManagerObserver_setSoundCheckEnabled___block_invoke_2, &unk_1E76784D8, v5, v7, v8, v9}];
  }

  return result;
}

void __46__MPHomeManagerObserver_setSoundCheckEnabled___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      *buf = 134218498;
      v11 = v5;
      v12 = 1024;
      v13 = v6;
      v14 = 2114;
      v15 = v3;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "<MPHomeManagerObserver %p> updateSoundCheckEnabled. shouldEnable=%{BOOL}u error=%{public}@", buf, 0x1Cu);
    }

    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__MPHomeManagerObserver_setSoundCheckEnabled___block_invoke_4;
    block[3] = &unk_1E7682518;
    block[4] = v7;
    dispatch_async(v8, block);
  }
}

- (BOOL)isSoundCheckEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__MPHomeManagerObserver_isSoundCheckEnabled__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (HMUser)currentUser
{
  v11 = *MEMORY[0x1E69E9840];
  currentHome = [(HMHomeManager *)self->_homeManager currentHome];
  v4 = currentHome;
  if (currentHome)
  {
    currentUser = [currentHome currentUser];
    if (currentUser)
    {
      goto LABEL_9;
    }

    v6 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 134217984;
      selfCopy2 = self;
      v7 = "<MPHomeManagerObserver %p> failed to fetch currentUser [HMHomeManager.currentHome.currentUser=nil]";
LABEL_7:
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_ERROR, v7, &v9, 0xCu);
    }
  }

  else
  {
    v6 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 134217984;
      selfCopy2 = self;
      v7 = "<MPHomeManagerObserver %p> failed to fetch currentUser [HMHomeManager.currentHome=nil]";
      goto LABEL_7;
    }
  }

  currentUser = 0;
LABEL_9:

  return currentUser;
}

- (BOOL)hasCurrentAccessory
{
  currentAccessory = [(MPHomeManagerObserver *)self currentAccessory];
  v3 = currentAccessory != 0;

  return v3;
}

- (BOOL)hasCurrentHome
{
  currentHome = [(MPHomeManagerObserver *)self currentHome];
  v3 = currentHome != 0;

  return v3;
}

- (BOOL)hasCurrentUser
{
  currentUser = [(MPHomeManagerObserver *)self currentUser];
  v3 = currentUser != 0;

  return v3;
}

- (BOOL)setupDidComplete
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__MPHomeManagerObserver_setupDidComplete__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (MPHomeManagerObserver)init
{
  v22.receiver = self;
  v22.super_class = MPHomeManagerObserver;
  v2 = [(MPHomeManagerObserver *)&v22 init];
  v3 = v2;
  if (v2)
  {
    v2->_setupDidComplete = 0;
    v4 = dispatch_queue_create("com.apple.mediaplayer.MPHomeManagerObserver.accessQueue", 0);
    accessQueue = v3->_accessQueue;
    v3->_accessQueue = v4;

    v6 = dispatch_queue_create("com.apple.mediaplayer.MPHomeManagerObserver.calloutQueue", MEMORY[0x1E69E96A8]);
    calloutQueue = v3->_calloutQueue;
    v3->_calloutQueue = v6;

    v8 = os_log_create("com.apple.amp.mediaplayer", "Default");
    v3->_homekitInitSignpostId = os_signpost_id_make_with_pointer(v8, v3);

    v9 = os_log_create("com.apple.amp.mediaplayer", "Default");
    v10 = v9;
    homekitInitSignpostId = v3->_homekitInitSignpostId;
    if (homekitInitSignpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A238D000, v10, OS_SIGNPOST_INTERVAL_BEGIN, homekitInitSignpostId, "homekitInitialization", &unk_1A2797D62, buf, 2u);
    }

    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v12 = getHMHomeManagerClass_softClass;
    v31 = getHMHomeManagerClass_softClass;
    if (!getHMHomeManagerClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __getHMHomeManagerClass_block_invoke;
      v26 = &unk_1E7680410;
      v27 = &v28;
      __getHMHomeManagerClass_block_invoke(buf);
      v12 = v29[3];
    }

    v13 = v12;
    _Block_object_dispose(&v28, 8);
    v14 = [[v12 alloc] initWithOptions:24];
    homeManager = v3->_homeManager;
    v3->_homeManager = v14;

    [(HMHomeManager *)v3->_homeManager setDelegate:v3];
    v3->_soundCheckCachedValue = 0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    userMonitorMap = v3->_userMonitorMap;
    v3->_userMonitorMap = dictionary;

    v18 = v3->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__MPHomeManagerObserver_init__block_invoke;
    block[3] = &unk_1E7682518;
    v21 = v3;
    dispatch_async(v18, block);
  }

  return v3;
}

+ (id)sharedObserver
{
  if (sharedObserver_onceToken != -1)
  {
    dispatch_once(&sharedObserver_onceToken, &__block_literal_global_14168);
  }

  v3 = sharedObserver___sharedObserver;

  return v3;
}

void __39__MPHomeManagerObserver_sharedObserver__block_invoke()
{
  v0 = objc_alloc_init(MPHomeManagerObserver);
  v1 = sharedObserver___sharedObserver;
  sharedObserver___sharedObserver = v0;
}

@end