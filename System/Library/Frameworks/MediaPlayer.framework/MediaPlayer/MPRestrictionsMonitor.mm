@interface MPRestrictionsMonitor
+ (MPRestrictionsMonitor)sharedRestrictionsMonitor;
- (BOOL)_isRunningInStoreDemoMode;
- (BOOL)hasRestrictionsPasscode;
- (MPRestrictionsMonitor)init;
- (id)effectiveValueForSetting:(id)a3;
- (int64_t)maximumMovieRating;
- (int64_t)maximumTVShowRating;
- (void)_cacheValue:(id)a3 forSetting:(id)a4;
- (void)_updateWithCanPostNotifications:(BOOL)a3;
- (void)dealloc;
- (void)handleAllowExplicitSettingDidChangeNotification:(id)a3;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
@end

@implementation MPRestrictionsMonitor

+ (MPRestrictionsMonitor)sharedRestrictionsMonitor
{
  if (sharedRestrictionsMonitor___once != -1)
  {
    dispatch_once(&sharedRestrictionsMonitor___once, &__block_literal_global_11478);
  }

  v3 = sharedRestrictionsMonitor___sharedInstance;

  return v3;
}

- (MPRestrictionsMonitor)init
{
  v9.receiver = self;
  v9.super_class = MPRestrictionsMonitor;
  v2 = [(MPRestrictionsMonitor *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69ADFB8] sharedConnection];
    v4 = *(v2 + 3);
    *(v2 + 3) = v3;

    *(v2 + 2) = 0;
    v5 = [MEMORY[0x1E695DF90] dictionary];
    v6 = *(v2 + 2);
    *(v2 + 2) = v5;

    if (+[MPHomeMonitor isCurrentDeviceValidHomeAccessory])
    {
      v7 = [MEMORY[0x1E696AD88] defaultCenter];
      [v7 addObserver:v2 selector:sel_handleAllowExplicitSettingDidChangeNotification_ name:@"MPHomeUserObserverUserAllowExplicitSettingsDidChangeNotification" object:0];
    }

    *(v2 + 40) = vdupq_n_s64(0x3E8uLL);
    [*(v2 + 3) registerObserver:v2];
    [v2 _updateWithCanPostNotifications:0];
  }

  return v2;
}

- (BOOL)_isRunningInStoreDemoMode
{
  if (_isRunningInStoreDemoMode___once != -1)
  {
    dispatch_once(&_isRunningInStoreDemoMode___once, &__block_literal_global_11_11452);
  }

  return _isRunningInStoreDemoMode___isRunningInStoreDemoMode;
}

uint64_t __50__MPRestrictionsMonitor__isRunningInStoreDemoMode__block_invoke()
{
  result = [MEMORY[0x1E69DC668] isRunningInStoreDemoMode];
  _isRunningInStoreDemoMode___isRunningInStoreDemoMode = result;
  return result;
}

void __50__MPRestrictionsMonitor_sharedRestrictionsMonitor__block_invoke()
{
  v0 = objc_alloc_init(MPRestrictionsMonitor);
  v1 = sharedRestrictionsMonitor___sharedInstance;
  sharedRestrictionsMonitor___sharedInstance = v0;
}

- (void)_updateWithCanPostNotifications:(BOOL)a3
{
  v87 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:8];
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [(MPRestrictionsMonitor *)self _isRunningInStoreDemoMode];
  v8 = os_log_create("com.apple.amp.mediaplayer", "Restrictions");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    connection = self->_connection;
    *buf = 138543874;
    v79 = self;
    v80 = 2114;
    v81 = connection;
    v82 = 1024;
    LODWORD(v83) = v7;
    _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEFAULT, "Beginning update for properties of %{public}@. _connection = %{public}@, isRunningInStoreDemoMode = %{BOOL}u", buf, 0x1Cu);
  }

  os_unfair_lock_lock(&self->_lock);
  v10 = !v7;
  if (self->_allowsDeletion == !v7)
  {
    v11 = "Unchanged";
  }

  else
  {
    self->_allowsDeletion = v10;
    [v6 addObject:@"allowsDeletion"];
    v12 = [MEMORY[0x1E696AD80] notificationWithName:@"MPRestrictionsMonitorAllowsDeletionDidChangeNotification" object:self];
    [v5 addObject:v12];

    v11 = "Updated";
  }

  v13 = os_log_create("com.apple.amp.mediaplayer", "Restrictions");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v79 = v11;
    v80 = 1024;
    LODWORD(v81) = v10;
    _os_log_impl(&dword_1A238D000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s allowsDeletion = %{BOOL}u.", buf, 0x12u);
  }

  if (+[MPHomeMonitor isCurrentDeviceValidHomeAccessory])
  {
    v14 = +[MPHomeUserMonitor isExplicitSettingEnabledForCurrentUser];
    if (self->_allowsExplicitContent == v14)
    {
LABEL_13:
      v15 = "Unchanged";
      goto LABEL_21;
    }
  }

  else
  {
    v16 = *MEMORY[0x1E69ADE68];
    v17 = [(MCProfileConnection *)self->_connection effectiveBoolValueForSetting:*MEMORY[0x1E69ADE68]];
    v18 = os_log_create("com.apple.amp.mediaplayer", "Restrictions");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      if (v17 > 2)
      {
        v19 = @"????";
      }

      else
      {
        v19 = off_1E7677D18[v17];
      }

      *buf = 138543618;
      v79 = v16;
      v80 = 2114;
      v81 = v19;
      _os_log_impl(&dword_1A238D000, v18, OS_LOG_TYPE_DEFAULT, "Effective BOOL value for MCFeatureExplicitContentAllowed (%{public}@) = %{public}@.", buf, 0x16u);
    }

    v14 = v17 == 1;
    if (self->_allowsExplicitContent == v14)
    {
      goto LABEL_13;
    }
  }

  self->_allowsExplicitContent = v14;
  [v6 addObject:@"allowsExplicitContent"];
  v20 = [MEMORY[0x1E696AD80] notificationWithName:@"MPRestrictionsMonitorAllowsExplicitContentDidChangeNotification" object:self];
  [v5 addObject:v20];

  v15 = "Updated";
LABEL_21:
  v21 = os_log_create("com.apple.amp.mediaplayer", "Restrictions");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v79 = v15;
    v80 = 1024;
    LODWORD(v81) = v14;
    _os_log_impl(&dword_1A238D000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s allowsExplicitContent = %{BOOL}u.", buf, 0x12u);
  }

  v22 = *MEMORY[0x1E69ADD70];
  v23 = [(MCProfileConnection *)self->_connection effectiveBoolValueForSetting:*MEMORY[0x1E69ADD70]];
  v24 = os_log_create("com.apple.amp.mediaplayer", "Restrictions");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    if (v23 > 2)
    {
      v25 = @"????";
    }

    else
    {
      v25 = off_1E7677D18[v23];
    }

    *buf = 138543618;
    v79 = v22;
    v80 = 2114;
    v81 = v25;
    _os_log_impl(&dword_1A238D000, v24, OS_LOG_TYPE_DEFAULT, "Effective BOOL value for MCFeatureAccountModificationAllowed (%{public}@) = %{public}@.", buf, 0x16u);
  }

  v26 = v23 != 2;
  if (self->_allowsAccountModification == v26)
  {
    v27 = "Unchanged";
  }

  else
  {
    self->_allowsAccountModification = v26;
    [v6 addObject:@"allowsAccountModification"];
    v27 = "Updated";
  }

  v28 = os_log_create("com.apple.amp.mediaplayer", "Restrictions");
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v79 = v27;
    v80 = 1024;
    LODWORD(v81) = v26;
    _os_log_impl(&dword_1A238D000, v28, OS_LOG_TYPE_DEFAULT, "%{public}s allowsAccountModification = %{BOOL}u.", buf, 0x12u);
  }

  v29 = *MEMORY[0x1E69ADEF8];
  v30 = [(MCProfileConnection *)self->_connection effectiveBoolValueForSetting:*MEMORY[0x1E69ADEF8]];
  v31 = os_log_create("com.apple.amp.mediaplayer", "Restrictions");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    if (v30 > 2)
    {
      v32 = @"????";
    }

    else
    {
      v32 = off_1E7677D18[v30];
    }

    *buf = 138543618;
    v79 = v29;
    v80 = 2114;
    v81 = v32;
    _os_log_impl(&dword_1A238D000, v31, OS_LOG_TYPE_DEFAULT, "Effective BOOL value for MCFeatureMusicServiceAllowed (%{public}@) = %{public}@.", buf, 0x16u);
  }

  v33 = v30 != 2;
  if (self->_allowsMusicSubscription == v33)
  {
    v34 = "Unchanged";
  }

  else
  {
    self->_allowsMusicSubscription = v33;
    [v6 addObject:@"allowsMusicSubscription"];
    v35 = [MEMORY[0x1E696AD80] notificationWithName:@"MPRestrictionsMonitorMusicSubscriptionDidChangeNotification" object:self];
    [v5 addObject:v35];

    v34 = "Updated";
  }

  v36 = os_log_create("com.apple.amp.mediaplayer", "Restrictions");
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v79 = v34;
    v80 = 1024;
    LODWORD(v81) = v33;
    _os_log_impl(&dword_1A238D000, v36, OS_LOG_TYPE_DEFAULT, "%{public}s allowsMusicSubscription = %{BOOL}u.", buf, 0x12u);
  }

  v37 = *MEMORY[0x1E69ADF28];
  v38 = [(MCProfileConnection *)self->_connection effectiveBoolValueForSetting:*MEMORY[0x1E69ADF28]];
  v39 = os_log_create("com.apple.amp.mediaplayer", "Restrictions");
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    if (v38 > 2)
    {
      v40 = @"????";
    }

    else
    {
      v40 = off_1E7677D18[v38];
    }

    *buf = 138543618;
    v79 = v37;
    v80 = 2114;
    v81 = v40;
    _os_log_impl(&dword_1A238D000, v39, OS_LOG_TYPE_DEFAULT, "Effective BOOL value for MCFeatureRadioServiceAllowed (%{public}@) = %{public}@.", buf, 0x16u);
  }

  v41 = v38 == 1;
  if (self->_allowsRadioService == v41)
  {
    v42 = "Unchanged";
  }

  else
  {
    self->_allowsRadioService = v41;
    [v6 addObject:@"allowsRadioService"];
    v43 = [MEMORY[0x1E696AD80] notificationWithName:@"MPRestrictionsMonitorAllowsRadioServiceDidChangeNotification" object:self];
    [v5 addObject:v43];

    v42 = "Updated";
  }

  v44 = os_log_create("com.apple.amp.mediaplayer", "Restrictions");
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v79 = v42;
    v80 = 1024;
    LODWORD(v81) = v41;
    _os_log_impl(&dword_1A238D000, v44, OS_LOG_TYPE_DEFAULT, "%{public}s allowsRadioService = %{BOOL}u.", buf, 0x12u);
  }

  v45 = *MEMORY[0x1E69ADF00];
  v46 = [(MCProfileConnection *)self->_connection effectiveBoolValueForSetting:*MEMORY[0x1E69ADF00]];
  v47 = os_log_create("com.apple.amp.mediaplayer", "Restrictions");
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    if (v46 > 2)
    {
      v48 = @"????";
    }

    else
    {
      v48 = off_1E7677D18[v46];
    }

    *buf = 138543618;
    v79 = v45;
    v80 = 2114;
    v81 = v48;
    _os_log_impl(&dword_1A238D000, v47, OS_LOG_TYPE_DEFAULT, "Effective BOOL value for MCFeatureMusicVideosAllowed (%{public}@) = %{public}@.", buf, 0x16u);
  }

  v49 = v46 == 1;
  if (self->_allowsMusicVideos == v49)
  {
    v50 = "Unchanged";
  }

  else
  {
    self->_allowsMusicVideos = v49;
    [v6 addObject:@"allowsMusicVideos"];
    v51 = [MEMORY[0x1E696AD80] notificationWithName:@"MPRestrictionsMonitorAllowsMusicVideosDidChangeNotification" object:self];
    [v5 addObject:v51];

    v50 = "Updated";
  }

  v52 = os_log_create("com.apple.amp.mediaplayer", "Restrictions");
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v79 = v50;
    v80 = 1024;
    LODWORD(v81) = v49;
    _os_log_impl(&dword_1A238D000, v52, OS_LOG_TYPE_DEFAULT, "%{public}s allowsMusicVideos = %{BOOL}u.", buf, 0x12u);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v53 = [(NSMutableDictionary *)self->_cachedSettings copy];
  v54 = [v53 countByEnumeratingWithState:&v74 objects:v86 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v75;
    do
    {
      for (i = 0; i != v55; ++i)
      {
        if (*v75 != v56)
        {
          objc_enumerationMutation(v53);
        }

        v58 = *(*(&v74 + 1) + 8 * i);
        v59 = [(MCProfileConnection *)self->_connection effectiveValueForSetting:v58];
        [(MPRestrictionsMonitor *)self _cacheValue:v59 forSetting:v58];
      }

      v55 = [v53 countByEnumeratingWithState:&v74 objects:v86 count:16];
    }

    while (v55);
  }

  os_unfair_lock_unlock(&self->_lock);
  v60 = [v6 count];
  v61 = os_log_create("com.apple.amp.mediaplayer", "Restrictions");
  v62 = os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);
  if (v60)
  {
    if (!v62)
    {
      goto LABEL_78;
    }

    v63 = "properties";
    *buf = 138544130;
    v80 = 2048;
    v79 = self;
    if (v60 == 1)
    {
      v63 = "property";
    }

    v81 = v60;
    v82 = 2082;
    v83 = v63;
    v84 = 2114;
    v85 = v6;
    v64 = "Completed update for properties of %{public}@. %lu %{public}s updated: %{public}@";
    v65 = v61;
    v66 = 42;
  }

  else
  {
    if (!v62)
    {
      goto LABEL_78;
    }

    *buf = 138543362;
    v79 = self;
    v64 = "Completed update for properties of %{public}@. All properties remained unchanged.";
    v65 = v61;
    v66 = 12;
  }

  _os_log_impl(&dword_1A238D000, v65, OS_LOG_TYPE_DEFAULT, v64, buf, v66);
LABEL_78:

  v67 = [v5 count];
  v68 = os_log_create("com.apple.amp.mediaplayer", "Restrictions");
  v69 = os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT);
  if (!v67)
  {
    if (a3)
    {
      if (!v69)
      {
        goto LABEL_88;
      }

      *buf = 138543362;
      v79 = self;
      v71 = "%{public}@ : Completed posting notifications because there were no notifications to post.";
    }

    else
    {
      if (!v69)
      {
        goto LABEL_88;
      }

      *buf = 138543362;
      v79 = self;
      v71 = "%{public}@ : Skipping posting notifications because canPostNotifications = NO";
    }

    _os_log_impl(&dword_1A238D000, v68, OS_LOG_TYPE_DEFAULT, v71, buf, 0xCu);
    goto LABEL_88;
  }

  if (v69)
  {
    *buf = 138543618;
    v79 = self;
    v80 = 2048;
    v81 = v67;
    _os_log_impl(&dword_1A238D000, v68, OS_LOG_TYPE_DEFAULT, "%{public}@ : Posting %lu notifications", buf, 0x16u);
  }

  v70 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__MPRestrictionsMonitor__updateWithCanPostNotifications___block_invoke;
  block[3] = &unk_1E7682518;
  v73 = v5;
  dispatch_async(v70, block);

  v68 = v73;
LABEL_88:
}

void __57__MPRestrictionsMonitor__updateWithCanPostNotifications___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        v7 = [MEMORY[0x1E696AD88] defaultCenter];
        [v7 postNotification:v6];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }
}

- (void)_cacheValue:(id)a3 forSetting:(id)a4
{
  v8 = a3;
  v6 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  v7 = v8;
  if (!v8)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v9 = v7;
  [(NSMutableDictionary *)self->_cachedSettings setObject:v7 forKey:v6];
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.amp.mediaplayer", "Restrictions");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543874;
    v10 = self;
    v11 = 2114;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ handling effective settings changed notification for %{public}@ with user info: %{public}@.", &v9, 0x20u);
  }

  [(MPRestrictionsMonitor *)self _updateWithCanPostNotifications:1];
}

- (void)handleAllowExplicitSettingDidChangeNotification:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplayer", "Restrictions");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    v7 = self;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ handling allow explicit setting did change notification for home monitor: %{public}@.", &v6, 0x16u);
  }

  [(MPRestrictionsMonitor *)self _updateWithCanPostNotifications:1];
}

- (id)effectiveValueForSetting:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_cachedSettings objectForKey:v4];
  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    v5 = [(MCProfileConnection *)self->_connection effectiveValueForSetting:v4];
    os_unfair_lock_lock(&self->_lock);
    [(MPRestrictionsMonitor *)self _cacheValue:v5 forSetting:v4];
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_5;
  }

  v6 = [MEMORY[0x1E695DFB0] null];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
LABEL_5:

    v5 = 0;
  }

  return v5;
}

- (int64_t)maximumMovieRating
{
  v2 = [(MPRestrictionsMonitor *)self effectiveValueForSetting:*MEMORY[0x1E69ADEE0]];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 1000;
  }

  return v4;
}

- (int64_t)maximumTVShowRating
{
  v2 = [(MPRestrictionsMonitor *)self effectiveValueForSetting:*MEMORY[0x1E69ADEE8]];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 1000;
  }

  return v4;
}

- (BOOL)hasRestrictionsPasscode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = getSFRestrictionsPasscodeControllerClass_softClass;
  v9 = getSFRestrictionsPasscodeControllerClass_softClass;
  if (!getSFRestrictionsPasscodeControllerClass_softClass)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getSFRestrictionsPasscodeControllerClass_block_invoke;
    v5[3] = &unk_1E7680410;
    v5[4] = &v6;
    __getSFRestrictionsPasscodeControllerClass_block_invoke(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  return [v2 settingEnabled];
}

- (void)dealloc
{
  [(MCProfileConnection *)self->_connection unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = MPRestrictionsMonitor;
  [(MPRestrictionsMonitor *)&v3 dealloc];
}

@end