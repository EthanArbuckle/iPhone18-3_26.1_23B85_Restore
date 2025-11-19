@interface VLFSessionUsageTracker
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
+ (VLFSessionUsageTracker)sharedInstance;
+ (id)keyPathsForValuesAffectingValueForKey:(id)a3;
- (BOOL)hasUserEnteredVLF;
- (BOOL)hasUserSeenVLFCallout;
- (VLFSessionUsageTracker)init;
- (double)timeSinceLastVLFInteraction;
- (id)allCalloutDismissalDates;
- (id)allCalloutTapDates;
- (int64_t)numberOfTimesVLFLocalized;
- (unint64_t)numberOfCalloutDismissals;
- (unint64_t)numberOfCalloutTaps;
- (void)clearAll;
- (void)clearDismissals;
- (void)clearSuccessfulVLFLocalizations;
- (void)clearTaps;
- (void)clearUserEnteredVLFFlag;
- (void)clearUserWasShownVLFCalloutFlag;
- (void)dealloc;
- (void)registerLocalizationSuccess;
- (void)registerUserDismissedCallout;
- (void)registerUserEnteredVLF;
- (void)registerUserTappedCallout;
- (void)registerUserWasShownCallout;
- (void)setNumberOfTimesVLFLocalized:(int64_t)a3;
- (void)valueChangedForGEOConfigKey:(id)a3;
@end

@implementation VLFSessionUsageTracker

- (void)valueChangedForGEOConfigKey:(id)a3
{
  if (a3.var0 == 220 && a3.var1 == &unk_10163E828)
  {
    v4 = NSStringFromSelector("isVLFCalloutEnabled");
    [(VLFSessionUsageTracker *)self willChangeValueForKey:v4];

    v8 = NSStringFromSelector("isVLFCalloutEnabled");
    [(VLFSessionUsageTracker *)self didChangeValueForKey:?];
  }

  else
  {
    v5 = sub_10006D178();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v10 = "[VLFSessionUsageTracker valueChangedForGEOConfigKey:]";
      v11 = 2080;
      v12 = "VLFSessionUsageTracker.m";
      v13 = 1024;
      v14 = 334;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v6 = sub_10006D178();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v10 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }
}

- (void)clearTaps
{
  v3 = sub_100E93724();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Clearing taps", v7, 2u);
  }

  v4 = NSStringFromSelector("numberOfCalloutTaps");
  [(VLFSessionUsageTracker *)self willChangeValueForKey:v4];

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 removeObjectForKey:@"kVLFSessionUsageCalloutTapsKey"];

  v6 = NSStringFromSelector("numberOfCalloutTaps");
  [(VLFSessionUsageTracker *)self didChangeValueForKey:v6];
}

- (void)clearDismissals
{
  v3 = sub_100E93724();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Clearing dismissals", v7, 2u);
  }

  v4 = NSStringFromSelector("numberOfCalloutDismissals");
  [(VLFSessionUsageTracker *)self willChangeValueForKey:v4];

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 removeObjectForKey:@"kVLFSessionUsageCalloutDismissalsKey"];

  v6 = NSStringFromSelector("numberOfCalloutDismissals");
  [(VLFSessionUsageTracker *)self didChangeValueForKey:v6];
}

- (void)clearSuccessfulVLFLocalizations
{
  v3 = sub_100E93724();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Clearing successful VLF localizations", v7, 2u);
  }

  v4 = NSStringFromSelector("numberOfTimesVLFLocalized");
  [(VLFSessionUsageTracker *)self willChangeValueForKey:v4];

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 removeObjectForKey:@"kVLFSessionUsageLocalizationSuccessCountKey"];

  v6 = NSStringFromSelector("numberOfTimesVLFLocalized");
  [(VLFSessionUsageTracker *)self didChangeValueForKey:v6];
}

- (void)clearUserWasShownVLFCalloutFlag
{
  v3 = sub_100E93724();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Clearing was shown VLF callout flag", v7, 2u);
  }

  v4 = NSStringFromSelector("hasUserSeenVLFCallout");
  [(VLFSessionUsageTracker *)self willChangeValueForKey:v4];

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 removeObjectForKey:@"kVLFSessionUsageCalloutWasShownKey"];

  v6 = NSStringFromSelector("hasUserSeenVLFCallout");
  [(VLFSessionUsageTracker *)self didChangeValueForKey:v6];
}

- (void)clearUserEnteredVLFFlag
{
  v3 = sub_100E93724();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Clearing user entered VLF flag", v7, 2u);
  }

  v4 = NSStringFromSelector("hasUserEnteredVLF");
  [(VLFSessionUsageTracker *)self willChangeValueForKey:v4];

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 removeObjectForKey:@"kVLFSessionUsageVLFWasEnteredKey"];

  v6 = NSStringFromSelector("hasUserEnteredVLF");
  [(VLFSessionUsageTracker *)self didChangeValueForKey:v6];
}

- (void)clearAll
{
  v3 = sub_100E93724();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Clearing all usage counts", v4, 2u);
  }

  [(VLFSessionUsageTracker *)self clearUserEnteredVLFFlag];
  [(VLFSessionUsageTracker *)self clearUserWasShownVLFCalloutFlag];
  [(VLFSessionUsageTracker *)self clearSuccessfulVLFLocalizations];
  [(VLFSessionUsageTracker *)self clearDismissals];
  [(VLFSessionUsageTracker *)self clearTaps];
}

- (id)allCalloutTapDates
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"kVLFSessionUsageCalloutTapsKey"];

  return v3;
}

- (id)allCalloutDismissalDates
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"kVLFSessionUsageCalloutDismissalsKey"];

  return v3;
}

- (void)registerLocalizationSuccess
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = 136316418;
        v13 = "[VLFSessionUsageTracker registerLocalizationSuccess]";
        v14 = 2080;
        v15 = "VLFSessionUsageTracker.m";
        v16 = 1024;
        v17 = 213;
        v18 = 2080;
        v19 = "dispatch_get_main_queue()";
        v20 = 2080;
        v21 = dispatch_queue_get_label(&_dispatch_main_q);
        v22 = 2080;
        v23 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v12, 0x3Au);
      }

      if (sub_100E03634())
      {
        v10 = sub_10006D178();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = +[NSThread callStackSymbols];
          v12 = 138412290;
          v13 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
        }
      }
    }
  }

  v6 = sub_100E93724();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Registering localization success", &v12, 2u);
  }

  v7 = NSStringFromSelector("numberOfTimesVLFLocalized");
  [(VLFSessionUsageTracker *)self willChangeValueForKey:v7];

  [(VLFSessionUsageTracker *)self setNumberOfTimesVLFLocalized:[(VLFSessionUsageTracker *)self numberOfTimesVLFLocalized]+ 1];
  v8 = NSStringFromSelector("numberOfTimesVLFLocalized");
  [(VLFSessionUsageTracker *)self didChangeValueForKey:v8];
}

- (void)registerUserTappedCallout
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v15 = sub_10006D178();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v18 = 136316418;
        v19 = "[VLFSessionUsageTracker registerUserTappedCallout]";
        v20 = 2080;
        v21 = "VLFSessionUsageTracker.m";
        v22 = 1024;
        v23 = 188;
        v24 = 2080;
        v25 = "dispatch_get_main_queue()";
        v26 = 2080;
        v27 = dispatch_queue_get_label(&_dispatch_main_q);
        v28 = 2080;
        v29 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v18, 0x3Au);
      }

      if (sub_100E03634())
      {
        v16 = sub_10006D178();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = +[NSThread callStackSymbols];
          v18 = 138412290;
          v19 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@", &v18, 0xCu);
        }
      }
    }
  }

  v6 = sub_100E93724();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Registering user tapped callout", &v18, 2u);
  }

  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 objectForKey:@"kVLFSessionUsageCalloutTapsKey"];

  if (!v8)
  {
    v8 = objc_opt_new();
  }

  v9 = [v8 mutableCopy];
  v10 = +[NSDate date];
  [v9 addObject:v10];

  if ([v9 count] == 11)
  {
    [v9 removeObjectAtIndex:0];
  }

  v11 = [v9 copy];

  v12 = NSStringFromSelector("numberOfCalloutTaps");
  [(VLFSessionUsageTracker *)self willChangeValueForKey:v12];

  v13 = +[NSUserDefaults standardUserDefaults];
  [v13 setObject:v11 forKey:@"kVLFSessionUsageCalloutTapsKey"];

  v14 = NSStringFromSelector("numberOfCalloutTaps");
  [(VLFSessionUsageTracker *)self didChangeValueForKey:v14];
}

- (void)registerUserDismissedCallout
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v15 = sub_10006D178();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v18 = 136316418;
        v19 = "[VLFSessionUsageTracker registerUserDismissedCallout]";
        v20 = 2080;
        v21 = "VLFSessionUsageTracker.m";
        v22 = 1024;
        v23 = 163;
        v24 = 2080;
        v25 = "dispatch_get_main_queue()";
        v26 = 2080;
        v27 = dispatch_queue_get_label(&_dispatch_main_q);
        v28 = 2080;
        v29 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v18, 0x3Au);
      }

      if (sub_100E03634())
      {
        v16 = sub_10006D178();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = +[NSThread callStackSymbols];
          v18 = 138412290;
          v19 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@", &v18, 0xCu);
        }
      }
    }
  }

  v6 = sub_100E93724();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Registering user dismissed callout", &v18, 2u);
  }

  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 objectForKey:@"kVLFSessionUsageCalloutDismissalsKey"];

  if (!v8)
  {
    v8 = objc_opt_new();
  }

  v9 = [v8 mutableCopy];
  v10 = +[NSDate date];
  [v9 addObject:v10];

  if ([v9 count] == 11)
  {
    [v9 removeObjectAtIndex:0];
  }

  v11 = [v9 copy];

  v12 = NSStringFromSelector("numberOfCalloutDismissals");
  [(VLFSessionUsageTracker *)self willChangeValueForKey:v12];

  v13 = +[NSUserDefaults standardUserDefaults];
  [v13 setObject:v11 forKey:@"kVLFSessionUsageCalloutDismissalsKey"];

  v14 = NSStringFromSelector("numberOfCalloutDismissals");
  [(VLFSessionUsageTracker *)self didChangeValueForKey:v14];
}

- (void)registerUserWasShownCallout
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v10 = sub_10006D178();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = 136316418;
        v14 = "[VLFSessionUsageTracker registerUserWasShownCallout]";
        v15 = 2080;
        v16 = "VLFSessionUsageTracker.m";
        v17 = 1024;
        v18 = 152;
        v19 = 2080;
        v20 = "dispatch_get_main_queue()";
        v21 = 2080;
        v22 = dispatch_queue_get_label(&_dispatch_main_q);
        v23 = 2080;
        v24 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v13, 0x3Au);
      }

      if (sub_100E03634())
      {
        v11 = sub_10006D178();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = +[NSThread callStackSymbols];
          v13 = 138412290;
          v14 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", &v13, 0xCu);
        }
      }
    }
  }

  v6 = sub_100E93724();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Registering user was shown callout", &v13, 2u);
  }

  v7 = NSStringFromSelector("hasUserSeenVLFCallout");
  [(VLFSessionUsageTracker *)self willChangeValueForKey:v7];

  v8 = +[NSUserDefaults standardUserDefaults];
  [v8 setBool:1 forKey:@"kVLFSessionUsageCalloutWasShownKey"];

  v9 = NSStringFromSelector("hasUserSeenVLFCallout");
  [(VLFSessionUsageTracker *)self didChangeValueForKey:v9];
}

- (void)registerUserEnteredVLF
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = 136316418;
        v15 = "[VLFSessionUsageTracker registerUserEnteredVLF]";
        v16 = 2080;
        v17 = "VLFSessionUsageTracker.m";
        v18 = 1024;
        v19 = 141;
        v20 = 2080;
        v21 = "dispatch_get_main_queue()";
        v22 = 2080;
        v23 = dispatch_queue_get_label(&_dispatch_main_q);
        v24 = 2080;
        v25 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v14, 0x3Au);
      }

      if (sub_100E03634())
      {
        v12 = sub_10006D178();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = +[NSThread callStackSymbols];
          v14 = 138412290;
          v15 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", &v14, 0xCu);
        }
      }
    }
  }

  v6 = sub_100E93724();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Registering user entered VLF", &v14, 2u);
  }

  v7 = NSStringFromSelector("hasUserEnteredVLF");
  [(VLFSessionUsageTracker *)self willChangeValueForKey:v7];

  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = +[NSDate date];
  [v8 setObject:v9 forKey:@"kVLFSessionUsageVLFWasEnteredKey"];

  v10 = NSStringFromSelector("hasUserEnteredVLF");
  [(VLFSessionUsageTracker *)self didChangeValueForKey:v10];
}

- (double)timeSinceLastVLFInteraction
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"kVLFSessionUsageCalloutDismissalsKey"];
  v4 = [v3 lastObject];

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 objectForKey:@"kVLFSessionUsageCalloutTapsKey"];
  v7 = [v6 lastObject];

  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = [v8 objectForKey:@"kVLFSessionUsageVLFWasEnteredKey"];

  v10 = +[NSMutableArray array];
  v11 = v10;
  if (v4)
  {
    [v10 addObject:v4];
  }

  if (v7)
  {
    [v11 addObject:v7];
  }

  if (v9)
  {
    [v11 addObject:v9];
  }

  if ([v11 count])
  {
    v24 = v7;
    v25 = v4;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      v16 = 1.79769313e308;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          v19 = [NSDate date:v24];
          [v19 timeIntervalSinceDate:v18];
          if (v16 >= v20)
          {
            v21 = +[NSDate date];
            [v21 timeIntervalSinceDate:v18];
            v16 = v22;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v14);
    }

    else
    {
      v16 = 1.79769313e308;
    }

    v7 = v24;
    v4 = v25;
  }

  else
  {
    v16 = 0.0;
  }

  return v16;
}

- (unint64_t)numberOfCalloutDismissals
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"kVLFSessionUsageCalloutDismissalsKey"];
  v4 = [v3 count];

  return v4;
}

- (unint64_t)numberOfCalloutTaps
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"kVLFSessionUsageCalloutTapsKey"];
  v4 = [v3 count];

  return v4;
}

- (void)setNumberOfTimesVLFLocalized:(int64_t)a3
{
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setInteger:a3 forKey:@"kVLFSessionUsageLocalizationSuccessCountKey"];
}

- (int64_t)numberOfTimesVLFLocalized
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 integerForKey:@"kVLFSessionUsageLocalizationSuccessCountKey"];

  return v3;
}

- (BOOL)hasUserSeenVLFCallout
{
  v3 = +[NSUserDefaults standardUserDefaults];
  if ([v3 BOOLForKey:@"kVLFSessionUsageCalloutWasShownKey"])
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = ![(VLFSessionUsageTracker *)self isVLFCalloutEnabled];
  }

  return v4;
}

- (BOOL)hasUserEnteredVLF
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"kVLFSessionUsageVLFWasEnteredKey"];
  v4 = v3 != 0;

  return v4;
}

- (void)dealloc
{
  GEOConfigRemoveDelegateListenerForAllKeys();
  v3.receiver = self;
  v3.super_class = VLFSessionUsageTracker;
  [(VLFSessionUsageTracker *)&v3 dealloc];
}

- (VLFSessionUsageTracker)init
{
  v7.receiver = self;
  v7.super_class = VLFSessionUsageTracker;
  v2 = [(VLFSessionUsageTracker *)&v7 init];
  if (v2)
  {
    _GEOConfigAddDelegateListenerForKey();
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 BOOLForKey:@"kVLFSessionUsageLocalizationSuccessKey"];

    if (v4)
    {
      v5 = +[NSUserDefaults standardUserDefaults];
      [v5 removeObjectForKey:@"kVLFSessionUsageLocalizationSuccessKey"];

      [(VLFSessionUsageTracker *)v2 setNumberOfTimesVLFLocalized:[(VLFSessionUsageTracker *)v2 numberOfTimesVLFLocalized]+ 1];
    }
  }

  return v2;
}

+ (id)keyPathsForValuesAffectingValueForKey:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector("numberOfCalloutInteractions");
  if ([v4 isEqualToString:v5])
  {

LABEL_4:
    v8 = NSStringFromSelector("numberOfCalloutDismissals");
    v9 = NSStringFromSelector("numberOfCalloutTaps");
    v10 = NSStringFromSelector("hasUserEnteredVLF");
    v11 = [NSSet setWithObjects:v8, v9, v10, 0];

LABEL_5:
    goto LABEL_6;
  }

  v6 = NSStringFromSelector("timeSinceLastVLFInteraction");
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    goto LABEL_4;
  }

  v13 = NSStringFromSelector("hasUserSeenVLFCallout");
  v14 = [v4 isEqualToString:v13];

  if (v14)
  {
    v15 = "isVLFCalloutEnabled";
LABEL_13:
    v8 = NSStringFromSelector(v15);
    v11 = [NSSet setWithObject:v8];
    goto LABEL_5;
  }

  v16 = NSStringFromSelector("hasVLFEverLocalized");
  v17 = [v4 isEqualToString:v16];

  if (v17)
  {
    v15 = "numberOfTimesVLFLocalized";
    goto LABEL_13;
  }

  v18.receiver = a1;
  v18.super_class = &OBJC_METACLASS___VLFSessionUsageTracker;
  v11 = objc_msgSendSuper2(&v18, "keyPathsForValuesAffectingValueForKey:", v4);
LABEL_6:

  return v11;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector("numberOfCalloutDismissals");
  if ([v4 isEqualToString:v5])
  {
    goto LABEL_8;
  }

  v6 = NSStringFromSelector("numberOfCalloutTaps");
  if ([v4 isEqualToString:v6])
  {
LABEL_7:

LABEL_8:
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v7 = NSStringFromSelector("numberOfTimesVLFLocalized");
  if ([v4 isEqualToString:v7])
  {
LABEL_6:

    goto LABEL_7;
  }

  v8 = NSStringFromSelector("hasUserSeenVLFCallout");
  if ([v4 isEqualToString:v8])
  {

    goto LABEL_6;
  }

  v11 = NSStringFromSelector("isVLFCalloutEnabled");
  v12 = [v4 isEqualToString:v11];

  if (v12)
  {
    goto LABEL_9;
  }

  v13 = NSStringFromSelector("hasVLFEverLocalized");
  v14 = [v4 isEqualToString:v13];

  if (v14)
  {
    v9 = 1;
  }

  else
  {
    v15.receiver = a1;
    v15.super_class = &OBJC_METACLASS___VLFSessionUsageTracker;
    v9 = objc_msgSendSuper2(&v15, "automaticallyNotifiesObserversForKey:", v4);
  }

LABEL_10:

  return v9;
}

+ (VLFSessionUsageTracker)sharedInstance
{
  if (qword_10195F470 != -1)
  {
    dispatch_once(&qword_10195F470, &stru_101657288);
  }

  v3 = qword_10195F468;

  return v3;
}

@end