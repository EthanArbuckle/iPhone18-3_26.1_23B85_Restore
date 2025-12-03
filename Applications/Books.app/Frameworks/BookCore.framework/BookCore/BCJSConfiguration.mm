@interface BCJSConfiguration
+ (BCJSConfiguration)sharedInstance;
- (NSDate)dateRequiredForActiveBook;
- (NSDate)dateSinceLastActiveOverride;
- (NSDate)oldestDateForUpgrade;
- (NSDate)oldestDateToAvoidPurgeOfBooks;
- (NSDate)oldestDateToAvoidPurgeOfSamples;
- (NSDate)oldestDateToKeepFinished;
- (NSNumber)launchesRequiredToPurge;
- (NSNumber)markFinishedPercentageOverride;
- (NSNumber)numberOfBooksAllowedInRecentsList;
- (NSNumber)timeThresholdForOpenEvent;
- (NSNumber)timeThresholdForPromotion;
- (NSNumber)validCollectionPeriod;
- (double)expectedResultForJSOverride:(id)override andDefaultsOverride:(id)defaultsOverride defaultValue:(int64_t)value forBehavior:(id)behavior;
- (double)openBookClosedSpreadBehaviorOverride;
- (double)openBookDefaultBehaviorOverride;
- (double)openBookOpenBehaviorOverride;
- (id)_init;
- (void)_notifyObservers:(id)observers;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (void)updateConfiguration:(id)configuration;
@end

@implementation BCJSConfiguration

+ (BCJSConfiguration)sharedInstance
{
  if (qword_342768 != -1)
  {
    sub_1E7408();
  }

  v3 = qword_342760;

  return v3;
}

- (id)_init
{
  v11.receiver = self;
  v11.super_class = BCJSConfiguration;
  v2 = [(BCJSConfiguration *)&v11 init];
  v3 = v2;
  if (v2)
  {
    overrides = v2->_overrides;
    v2->_overrides = 0;

    v3->_accessLock._os_unfair_lock_opaque = 0;
    v5 = +[NSUserDefaults standardUserDefaults];
    v3->_overrideAlgorithm = [v5 BOOLForKey:@"BCOverrideRecentBookAlgorithm"];

    v6 = +[NSUserDefaults standardUserDefaults];
    v3->_overridePercentage = [v6 BOOLForKey:@"BCOverrideMarkFinishedPercentage"];

    if (v3->_overrideAlgorithm)
    {
      v7 = BCJSConfigurationLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Using overridden values for recent book algorithm.", v10, 2u);
      }
    }

    if (v3->_overridePercentage)
    {
      v8 = BCJSConfigurationLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Using overridden values for mark finished percentage.", v10, 2u);
      }
    }
  }

  return v3;
}

- (void)updateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = BCJSConfigurationLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = configurationCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Updating configuration with %{public}@.", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = sub_81710;
  v17 = sub_81720;
  v18 = +[NSMutableArray array];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v9 = sub_81728;
  v10 = &unk_2C8838;
  selfCopy = self;
  v6 = configurationCopy;
  v12 = v6;
  p_buf = &buf;
  v7 = v8;
  os_unfair_lock_lock(&self->_accessLock);
  v9(v7);
  os_unfair_lock_unlock(&self->_accessLock);

  [(BCJSConfiguration *)self _notifyObservers:*(*(&buf + 1) + 40)];
  _Block_object_dispose(&buf, 8);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v5 = BCJSConfigurationLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1E741C();
  }

  observers = [(BCJSConfiguration *)self observers];

  if (!observers)
  {
    v7 = +[NSHashTable weakObjectsHashTable];
    [(BCJSConfiguration *)self setObservers:v7];
  }

  observers2 = [(BCJSConfiguration *)self observers];
  [observers2 addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v5 = BCJSConfigurationLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1E7484();
  }

  observers = [(BCJSConfiguration *)self observers];
  [observers removeObject:observerCopy];
}

- (void)_notifyObservers:(id)observers
{
  observersCopy = observers;
  v5 = BCJSConfigurationLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1E74EC(v5);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  observers = [(BCJSConfiguration *)self observers];
  v7 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(observers);
        }

        [*(*(&v11 + 1) + 8 * v10) javascriptConfiguration:self updatedKeys:observersCopy];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (NSNumber)markFinishedPercentageOverride
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 stringForKey:@"BCMarkFinishedPercentage"];

  overridePercentage = [(BCJSConfiguration *)self overridePercentage];
  v6 = 0;
  if (overridePercentage && v4)
  {
    if ([v4 length])
    {
      [v4 doubleValue];
      v6 = [NSNumber numberWithDouble:v7 / 100.0];
      v8 = BCJSConfigurationLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_1E7530();
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (NSDate)oldestDateToAvoidPurgeOfBooks
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_81710;
  v25 = sub_81720;
  v26 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v17 = sub_81E4C;
  v18 = &unk_2C7AE0;
  selfCopy = self;
  v20 = &v21;
  v3 = v16;
  os_unfair_lock_lock(&self->_accessLock);
  v17(v3);
  os_unfair_lock_unlock(&self->_accessLock);

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 stringForKey:@"BCInvalidationWindowOverride"];

  overrideAlgorithm = [(BCJSConfiguration *)self overrideAlgorithm];
  if (v5)
  {
    v7 = overrideAlgorithm;
  }

  else
  {
    v7 = 0;
  }

  if (v7 == 1 && [v5 length])
  {
    [v5 doubleValue];
    v8 = [NSNumber numberWithDouble:?];
    v9 = v22[5];
    v22[5] = v8;

    v10 = BCJSConfigurationLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1E7598();
    }
  }

  v11 = +[NSDate distantPast];
  v12 = v22[5];
  if (v12)
  {
    [v12 doubleValue];
    v14 = [NSDate dateWithTimeIntervalSinceNow:v13 * 60.0 * -60.0];

    v11 = v14;
  }

  _Block_object_dispose(&v21, 8);

  return v11;
}

- (NSDate)oldestDateToAvoidPurgeOfSamples
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_81710;
  v25 = sub_81720;
  v26 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v17 = sub_82114;
  v18 = &unk_2C7AE0;
  selfCopy = self;
  v20 = &v21;
  v3 = v16;
  os_unfair_lock_lock(&self->_accessLock);
  v17(v3);
  os_unfair_lock_unlock(&self->_accessLock);

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 stringForKey:@"BCInvalidationWindowForSamplesOverride"];

  overrideAlgorithm = [(BCJSConfiguration *)self overrideAlgorithm];
  if (v5)
  {
    v7 = overrideAlgorithm;
  }

  else
  {
    v7 = 0;
  }

  if (v7 == 1 && [v5 length])
  {
    [v5 doubleValue];
    v8 = [NSNumber numberWithDouble:?];
    v9 = v22[5];
    v22[5] = v8;

    v10 = BCJSConfigurationLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1E7598();
    }
  }

  v11 = +[NSDate distantPast];
  v12 = v22[5];
  if (v12)
  {
    [v12 doubleValue];
    v14 = [NSDate dateWithTimeIntervalSinceNow:v13 * 60.0 * -60.0];

    v11 = v14;
  }

  _Block_object_dispose(&v21, 8);

  return v11;
}

- (NSNumber)launchesRequiredToPurge
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_81710;
  v16 = sub_81720;
  v17 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v8 = sub_822FC;
  v9 = &unk_2C7AE0;
  selfCopy = self;
  v11 = &v12;
  v3 = v7;
  os_unfair_lock_lock(&self->_accessLock);
  v8(v3);
  os_unfair_lock_unlock(&self->_accessLock);

  v4 = v13[5];
  if (!v4)
  {
    v13[5] = &off_2E59C0;

    v4 = v13[5];
  }

  v5 = v4;
  _Block_object_dispose(&v12, 8);

  return v5;
}

- (NSDate)oldestDateToKeepFinished
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_81710;
  v25 = sub_81720;
  v26 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v17 = sub_825C4;
  v18 = &unk_2C7AE0;
  selfCopy = self;
  v20 = &v21;
  v3 = v16;
  os_unfair_lock_lock(&self->_accessLock);
  v17(v3);
  os_unfair_lock_unlock(&self->_accessLock);

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 stringForKey:@"BCFinishedWindowOverride"];

  overrideAlgorithm = [(BCJSConfiguration *)self overrideAlgorithm];
  if (v5)
  {
    v7 = overrideAlgorithm;
  }

  else
  {
    v7 = 0;
  }

  if (v7 == 1 && [v5 length])
  {
    [v5 doubleValue];
    v8 = [NSNumber numberWithDouble:?];
    v9 = v22[5];
    v22[5] = v8;

    v10 = BCJSConfigurationLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1E7600();
    }
  }

  v11 = +[NSDate distantPast];
  v12 = v22[5];
  if (v12)
  {
    [v12 doubleValue];
    v14 = [NSDate dateWithTimeIntervalSinceNow:v13 * 60.0 * -60.0];

    v11 = v14;
  }

  _Block_object_dispose(&v21, 8);

  return v11;
}

- (NSDate)oldestDateForUpgrade
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_81710;
  v25 = sub_81720;
  v26 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v17 = sub_8288C;
  v18 = &unk_2C7AE0;
  selfCopy = self;
  v20 = &v21;
  v3 = v16;
  os_unfair_lock_lock(&self->_accessLock);
  v17(v3);
  os_unfair_lock_unlock(&self->_accessLock);

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 stringForKey:@"BCUpgradeWindowOverride"];

  overrideAlgorithm = [(BCJSConfiguration *)self overrideAlgorithm];
  if (v5)
  {
    v7 = overrideAlgorithm;
  }

  else
  {
    v7 = 0;
  }

  if (v7 == 1 && [v5 length])
  {
    [v5 doubleValue];
    v8 = [NSNumber numberWithDouble:?];
    v9 = v22[5];
    v22[5] = v8;

    v10 = BCJSConfigurationLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1E7668();
    }
  }

  v11 = +[NSDate distantPast];
  v12 = v22[5];
  if (v12)
  {
    [v12 doubleValue];
    v14 = [NSDate dateWithTimeIntervalSinceNow:v13 * 60.0 * -60.0];

    v11 = v14;
  }

  _Block_object_dispose(&v21, 8);

  return v11;
}

- (NSNumber)timeThresholdForPromotion
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_81710;
  v24 = sub_81720;
  v25 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v16 = sub_82B28;
  v17 = &unk_2C7AE0;
  selfCopy = self;
  v19 = &v20;
  v3 = v15;
  os_unfair_lock_lock(&self->_accessLock);
  v16(v3);
  os_unfair_lock_unlock(&self->_accessLock);

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 stringForKey:@"BCTimeThresholdPromotionOverride"];

  overrideAlgorithm = [(BCJSConfiguration *)self overrideAlgorithm];
  if (v5)
  {
    v7 = overrideAlgorithm;
  }

  else
  {
    v7 = 0;
  }

  if (v7 == 1 && [v5 length])
  {
    [v5 doubleValue];
    v8 = [NSNumber numberWithDouble:?];
    v9 = v21[5];
    v21[5] = v8;

    v10 = BCJSConfigurationLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1E76D0();
    }
  }

  v11 = v21[5];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = [NSNumber numberWithDouble:30.0];
  }

  v13 = v12;

  _Block_object_dispose(&v20, 8);

  return v13;
}

- (NSNumber)validCollectionPeriod
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_81710;
  v23 = sub_81720;
  v24 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v15 = sub_82DC0;
  v16 = &unk_2C7AE0;
  selfCopy = self;
  v18 = &v19;
  v3 = v14;
  os_unfair_lock_lock(&self->_accessLock);
  v15(v3);
  os_unfair_lock_unlock(&self->_accessLock);

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 stringForKey:@"BCValidCollectionPeriodOverride"];

  overrideAlgorithm = [(BCJSConfiguration *)self overrideAlgorithm];
  if (v5)
  {
    v7 = overrideAlgorithm;
  }

  else
  {
    v7 = 0;
  }

  if (v7 == 1 && [v5 length])
  {
    [v5 doubleValue];
    v8 = [NSNumber numberWithDouble:?];
    v9 = v20[5];
    v20[5] = v8;

    v10 = BCJSConfigurationLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1E7738();
    }
  }

  v11 = v20[5];
  if (!v11)
  {
    v11 = &off_2EF498;
  }

  v12 = v11;

  _Block_object_dispose(&v19, 8);

  return v12;
}

- (NSNumber)timeThresholdForOpenEvent
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_81710;
  v23 = sub_81720;
  v24 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v15 = sub_8304C;
  v16 = &unk_2C7AE0;
  selfCopy = self;
  v18 = &v19;
  v3 = v14;
  os_unfair_lock_lock(&self->_accessLock);
  v15(v3);
  os_unfair_lock_unlock(&self->_accessLock);

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 stringForKey:@"BCTimeThresholdForOpenEvent"];

  overrideAlgorithm = [(BCJSConfiguration *)self overrideAlgorithm];
  if (v5)
  {
    v7 = overrideAlgorithm;
  }

  else
  {
    v7 = 0;
  }

  if (v7 == 1 && [v5 length])
  {
    [v5 doubleValue];
    v8 = [NSNumber numberWithDouble:?];
    v9 = v20[5];
    v20[5] = v8;

    v10 = BCJSConfigurationLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1E77A0();
    }
  }

  v11 = v20[5];
  if (!v11)
  {
    v11 = &off_2EF4A8;
  }

  v12 = v11;

  _Block_object_dispose(&v19, 8);

  return v12;
}

- (NSNumber)numberOfBooksAllowedInRecentsList
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_81710;
  v23 = sub_81720;
  v24 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v15 = sub_832DC;
  v16 = &unk_2C7AE0;
  selfCopy = self;
  v18 = &v19;
  v3 = v14;
  os_unfair_lock_lock(&self->_accessLock);
  v15(v3);
  os_unfair_lock_unlock(&self->_accessLock);

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 stringForKey:@"BCNumberOfBooksAllowedInRecentsList"];

  overrideAlgorithm = [(BCJSConfiguration *)self overrideAlgorithm];
  if (v5)
  {
    v7 = overrideAlgorithm;
  }

  else
  {
    v7 = 0;
  }

  if (v7 == 1 && [v5 length])
  {
    v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 integerValue]);
    v9 = v20[5];
    v20[5] = v8;

    v10 = BCJSConfigurationLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1E7808();
    }
  }

  v11 = v20[5];
  if (!v11)
  {
    v11 = &off_2E59D8;
  }

  v12 = v11;

  _Block_object_dispose(&v19, 8);

  return v12;
}

- (NSDate)dateRequiredForActiveBook
{
  dateSinceLastActiveOverride = [(BCJSConfiguration *)self dateSinceLastActiveOverride];
  v3 = dateSinceLastActiveOverride;
  if (dateSinceLastActiveOverride)
  {
    v4 = dateSinceLastActiveOverride;
  }

  else
  {
    v4 = [NSDate dateWithTimeIntervalSinceNow:-2592000.0];
  }

  v5 = v4;

  return v5;
}

- (NSDate)dateSinceLastActiveOverride
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_81710;
  v24 = sub_81720;
  v25 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v16 = sub_83610;
  v17 = &unk_2C7AE0;
  selfCopy = self;
  v19 = &v20;
  v3 = v15;
  os_unfair_lock_lock(&self->_accessLock);
  v16(v3);
  os_unfair_lock_unlock(&self->_accessLock);

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 stringForKey:@"BCWindowForActiveBookOverride"];

  overrideAlgorithm = [(BCJSConfiguration *)self overrideAlgorithm];
  if (v5)
  {
    v7 = overrideAlgorithm;
  }

  else
  {
    v7 = 0;
  }

  if (v7 == 1 && [v5 length])
  {
    [v5 doubleValue];
    v9 = [NSDate dateWithTimeIntervalSinceNow:-v8];
    v10 = BCJSConfigurationLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1E7870();
    }

LABEL_11:

    goto LABEL_13;
  }

  v11 = v21[5];
  if (v11)
  {
    [v11 doubleValue];
    v9 = [NSDate dateWithTimeIntervalSinceNow:-v12];
    v10 = BCJSConfigurationLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1E78D8();
    }

    goto LABEL_11;
  }

  v9 = 0;
LABEL_13:
  v13 = v9;

  _Block_object_dispose(&v20, 8);

  return v13;
}

- (double)openBookDefaultBehaviorOverride
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_81710;
  v19 = sub_81720;
  v20 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v11 = sub_8381C;
  v12 = &unk_2C7AE0;
  selfCopy = self;
  v14 = &v15;
  v3 = v10;
  os_unfair_lock_lock(&self->_accessLock);
  v11(v3);
  os_unfair_lock_unlock(&self->_accessLock);

  v4 = v16[5];
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 stringForKey:@"BCOpenBookDefaultBehaviorOverride"];
  [(BCJSConfiguration *)self expectedResultForJSOverride:v4 andDefaultsOverride:v6 defaultValue:1 forBehavior:@"default behavior"];
  v8 = v7;

  _Block_object_dispose(&v15, 8);
  return v8;
}

- (double)openBookOpenBehaviorOverride
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_81710;
  v19 = sub_81720;
  v20 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v11 = sub_83A28;
  v12 = &unk_2C7AE0;
  selfCopy = self;
  v14 = &v15;
  v3 = v10;
  os_unfair_lock_lock(&self->_accessLock);
  v11(v3);
  os_unfair_lock_unlock(&self->_accessLock);

  v4 = v16[5];
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 stringForKey:@"BCOpenBookOpenBehaviorOverride"];
  [(BCJSConfiguration *)self expectedResultForJSOverride:v4 andDefaultsOverride:v6 defaultValue:7 forBehavior:@"open book behavior"];
  v8 = v7;

  _Block_object_dispose(&v15, 8);
  return v8;
}

- (double)openBookClosedSpreadBehaviorOverride
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_81710;
  v19 = sub_81720;
  v20 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v11 = sub_83C34;
  v12 = &unk_2C7AE0;
  selfCopy = self;
  v14 = &v15;
  v3 = v10;
  os_unfair_lock_lock(&self->_accessLock);
  v11(v3);
  os_unfair_lock_unlock(&self->_accessLock);

  v4 = v16[5];
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 stringForKey:@"BCOpenBookClosedSpreadBehaviorOverride"];
  [(BCJSConfiguration *)self expectedResultForJSOverride:v4 andDefaultsOverride:v6 defaultValue:90 forBehavior:@"closed spread open book behavior"];
  v8 = v7;

  _Block_object_dispose(&v15, 8);
  return v8;
}

- (double)expectedResultForJSOverride:(id)override andDefaultsOverride:(id)defaultsOverride defaultValue:(int64_t)value forBehavior:(id)behavior
{
  overrideCopy = override;
  defaultsOverrideCopy = defaultsOverride;
  behaviorCopy = behavior;
  if (defaultsOverrideCopy && [defaultsOverrideCopy length])
  {
    [defaultsOverrideCopy doubleValue];
    valueCopy = v12;
    v14 = BCJSConfigurationLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_1E7940();
    }
  }

  else
  {
    if (!overrideCopy)
    {
      valueCopy = value;
      goto LABEL_10;
    }

    [overrideCopy doubleValue];
    valueCopy = v15;
    v14 = BCJSConfigurationLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_1E79B4();
    }
  }

LABEL_10:
  return valueCopy;
}

@end