@interface HealthActivityCacheProfileExtension
- (HDProfile)profile;
- (HealthActivityCacheProfileExtension)initWithProfile:(id)profile;
- (id)_activityCacheManager;
- (void)dealloc;
@end

@implementation HealthActivityCacheProfileExtension

- (HealthActivityCacheProfileExtension)initWithProfile:(id)profile
{
  profileCopy = profile;
  v15.receiver = self;
  v15.super_class = HealthActivityCacheProfileExtension;
  v5 = [(HealthActivityCacheProfileExtension *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    _activityCacheManager = [(HealthActivityCacheProfileExtension *)v6 _activityCacheManager];
    activityCacheInterface = v6->_activityCacheInterface;
    v6->_activityCacheInterface = _activityCacheManager;

    objc_initWeak(&location, v6);
    v9 = HKStandalonePhoneFitnessModeDidUpdateNotification;
    v10 = &_dispatch_main_q;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1E09C;
    v12[3] = &unk_34D58;
    objc_copyWeak(&v13, &location);
    notify_register_dispatch(v9, &v6->_standalonePhoneFitnessModeChangeToken, &_dispatch_main_q, v12);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)dealloc
{
  standalonePhoneFitnessModeChangeToken = self->_standalonePhoneFitnessModeChangeToken;
  if (standalonePhoneFitnessModeChangeToken != -1)
  {
    notify_cancel(standalonePhoneFitnessModeChangeToken);
  }

  v4.receiver = self;
  v4.super_class = HealthActivityCacheProfileExtension;
  [(HealthActivityCacheProfileExtension *)&v4 dealloc];
}

- (id)_activityCacheManager
{
  v3 = +[_HKBehavior sharedBehavior];
  isAppleWatch = [v3 isAppleWatch];

  v5 = +[_HKBehavior sharedBehavior];
  fitnessMode = [v5 fitnessMode];

  if (fitnessMode == &def_21990 + 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = isAppleWatch;
  }

  _HKInitializeLogging();
  v8 = HKLogActivityCache;
  if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (isAppleWatch)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    if (fitnessMode == &def_21990 + 2)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v16 = 138412802;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    if (v7)
    {
      v9 = @"YES";
    }

    v20 = 2112;
    v21 = v9;
    _os_log_impl(&def_21990, v8, OS_LOG_TYPE_DEFAULT, "isAppleWatch: %@, isStadalonePhone: %@, shouldCreateActivityCacheManager: %@", &v16, 0x20u);
  }

  if (v7)
  {
    v12 = [HDActivityCacheManager alloc];
    profile = [(HealthActivityCacheProfileExtension *)self profile];
    v14 = [(HDActivityCacheManager *)v12 initWithProfile:profile];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end