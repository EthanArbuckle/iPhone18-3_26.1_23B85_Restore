@interface PedestrianARSessionUsageTracker
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
+ (PedestrianARSessionUsageTracker)sharedInstance;
+ (id)keyPathsForValuesAffectingValueForKey:(id)a3;
- (BOOL)hasARElementRendered;
- (BOOL)hasAREverLocalizedForRoute:(id)a3;
- (BOOL)hasUserEnteredAR;
- (BOOL)hasUserEnteredARForRoute:(id)a3 entryPoint:(int64_t)a4;
- (PedestrianARSessionUsageTracker)init;
- (int64_t)numberOfTimesARLocalized;
- (void)clearARElementRenderedFlag;
- (void)clearARLocalizationsFlag;
- (void)clearAll;
- (void)clearUserEnteredARFlag;
- (void)migrateUsageFromRoute:(id)a3 toRoute:(id)a4;
- (void)registerARElementRendered;
- (void)registerLocalizationSuccessForRoute:(id)a3;
- (void)registerUserEnteredARForRoute:(id)a3 entryPoint:(int64_t)a4;
- (void)setNumberOfTimesARLocalized:(int64_t)a3;
@end

@implementation PedestrianARSessionUsageTracker

- (void)clearARElementRenderedFlag
{
  v3 = sub_100FD37CC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Clearing user entered VLF flag", v7, 2u);
  }

  v4 = NSStringFromSelector("hasARElementRendered");
  [(PedestrianARSessionUsageTracker *)self willChangeValueForKey:v4];

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 removeObjectForKey:@"kPedestrianARSessionUsageARElementRenderedKey"];

  v6 = NSStringFromSelector("hasARElementRendered");
  [(PedestrianARSessionUsageTracker *)self didChangeValueForKey:v6];
}

- (void)clearARLocalizationsFlag
{
  v3 = sub_100FD37CC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Clearing AR localizations flag", v9, 2u);
  }

  v4 = self;
  objc_sync_enter(v4);
  v5 = [(PedestrianARSessionUsageTracker *)v4 localizedRouteIDs];
  [v5 removeAllObjects];

  objc_sync_exit(v4);
  v6 = NSStringFromSelector("hasAREverLocalized");
  [(PedestrianARSessionUsageTracker *)v4 willChangeValueForKey:v6];

  v7 = +[NSUserDefaults standardUserDefaults];
  [v7 removeObjectForKey:@"kPedestrianARSessionUsageLocalizationSuccessCountKey"];

  v8 = NSStringFromSelector("hasAREverLocalized");
  [(PedestrianARSessionUsageTracker *)v4 didChangeValueForKey:v8];
}

- (void)clearUserEnteredARFlag
{
  v3 = sub_100FD37CC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Clearing user entered AR flag", v9, 2u);
  }

  v4 = self;
  objc_sync_enter(v4);
  v5 = [(PedestrianARSessionUsageTracker *)v4 enteredEntryPointToRouteIDs];
  [v5 removeAllObjects];

  objc_sync_exit(v4);
  v6 = NSStringFromSelector("hasUserEnteredAR");
  [(PedestrianARSessionUsageTracker *)v4 willChangeValueForKey:v6];

  v7 = +[NSUserDefaults standardUserDefaults];
  [v7 removeObjectForKey:@"kPedestrianARSessionUsageARWasEnteredKey"];

  v8 = NSStringFromSelector("hasUserEnteredAR");
  [(PedestrianARSessionUsageTracker *)v4 didChangeValueForKey:v8];
}

- (void)clearAll
{
  [(PedestrianARSessionUsageTracker *)self clearUserEnteredARFlag];
  [(PedestrianARSessionUsageTracker *)self clearARLocalizationsFlag];

  [(PedestrianARSessionUsageTracker *)self clearARElementRenderedFlag];
}

- (void)migrateUsageFromRoute:(id)a3 toRoute:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100FD37CC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v26 = 138412546;
    v27 = v6;
    v28 = 2112;
    v29 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Migrating usage flags from %@ to %@", &v26, 0x16u);
  }

  v9 = self;
  objc_sync_enter(v9);
  v10 = [(PedestrianARSessionUsageTracker *)v9 localizedRouteIDs];
  v11 = [v10 containsObject:v6];

  if (v11)
  {
    v12 = sub_100FD37CC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Migrating localized flag", &v26, 2u);
    }

    v13 = [(PedestrianARSessionUsageTracker *)v9 localizedRouteIDs];
    [v13 addObject:v7];
  }

  v14 = [(PedestrianARSessionUsageTracker *)v9 enteredEntryPointToRouteIDs];
  v15 = [v14 objectForKey:&off_1016EAC40];
  v16 = [v15 containsObject:v6];

  if (v16)
  {
    v17 = sub_100FD37CC();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Migrating route planning entry flag", &v26, 2u);
    }

    v18 = [(PedestrianARSessionUsageTracker *)v9 enteredEntryPointToRouteIDs];
    v19 = [v18 objectForKey:&off_1016EAC40];
    [v19 addObject:v7];
  }

  v20 = [(PedestrianARSessionUsageTracker *)v9 enteredEntryPointToRouteIDs];
  v21 = [v20 objectForKey:&off_1016EAC58];
  v22 = [v21 containsObject:v6];

  if (v22)
  {
    v23 = sub_100FD37CC();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Migrating navigation entry flag", &v26, 2u);
    }

    v24 = [(PedestrianARSessionUsageTracker *)v9 enteredEntryPointToRouteIDs];
    v25 = [v24 objectForKey:&off_1016EAC58];
    [v25 addObject:v7];
  }

  objc_sync_exit(v9);
}

- (void)registerARElementRendered
{
  v3 = sub_100FD37CC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Registering AR element rendered", v7, 2u);
  }

  v4 = NSStringFromSelector("hasARElementRendered");
  [(PedestrianARSessionUsageTracker *)self willChangeValueForKey:v4];

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setBool:1 forKey:@"kPedestrianARSessionUsageARElementRenderedKey"];

  v6 = NSStringFromSelector("hasARElementRendered");
  [(PedestrianARSessionUsageTracker *)self didChangeValueForKey:v6];
}

- (BOOL)hasAREverLocalizedForRoute:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(PedestrianARSessionUsageTracker *)v5 localizedRouteIDs];
  v7 = [v6 containsObject:v4];

  objc_sync_exit(v5);
  return v7;
}

- (void)registerLocalizationSuccessForRoute:(id)a3
{
  v4 = a3;
  v5 = sub_100FD37CC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Registering localization success for route: %@", &v10, 0xCu);
  }

  v6 = NSStringFromSelector("numberOfTimesARLocalized");
  [(PedestrianARSessionUsageTracker *)self willChangeValueForKey:v6];

  v7 = self;
  objc_sync_enter(v7);
  v8 = [(PedestrianARSessionUsageTracker *)v7 localizedRouteIDs];
  [v8 addObject:v4];

  [(PedestrianARSessionUsageTracker *)v7 setNumberOfTimesARLocalized:[(PedestrianARSessionUsageTracker *)v7 numberOfTimesARLocalized]+ 1];
  objc_sync_exit(v7);

  v9 = NSStringFromSelector("numberOfTimesARLocalized");
  [(PedestrianARSessionUsageTracker *)v7 didChangeValueForKey:v9];
}

- (BOOL)hasUserEnteredARForRoute:(id)a3 entryPoint:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(PedestrianARSessionUsageTracker *)v7 enteredEntryPointToRouteIDs];
  v9 = [NSNumber numberWithInteger:a4];
  v10 = [v8 objectForKey:v9];
  v11 = [v10 containsObject:v6];

  objc_sync_exit(v7);
  return v11;
}

- (void)registerUserEnteredARForRoute:(id)a3 entryPoint:(int64_t)a4
{
  v6 = a3;
  v7 = sub_100FD37CC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v21 = 138412290;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Registering user entered AR for route: %@", &v21, 0xCu);
  }

  v8 = self;
  objc_sync_enter(v8);
  v9 = [(PedestrianARSessionUsageTracker *)v8 enteredEntryPointToRouteIDs];
  v10 = [NSNumber numberWithInteger:a4];
  v11 = [v9 objectForKey:v10];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = +[NSMutableSet set];
  }

  v14 = v13;

  [v14 addObject:v6];
  v15 = [(PedestrianARSessionUsageTracker *)v8 enteredEntryPointToRouteIDs];
  v16 = [NSNumber numberWithInteger:a4];
  [v15 setObject:v14 forKey:v16];

  objc_sync_exit(v8);
  v17 = NSStringFromSelector("hasUserEnteredAR");
  [(PedestrianARSessionUsageTracker *)v8 willChangeValueForKey:v17];

  v18 = +[NSUserDefaults standardUserDefaults];
  v19 = +[NSDate date];
  [v18 setObject:v19 forKey:@"kPedestrianARSessionUsageARWasEnteredKey"];

  v20 = NSStringFromSelector("hasUserEnteredAR");
  [(PedestrianARSessionUsageTracker *)v8 didChangeValueForKey:v20];
}

- (BOOL)hasARElementRendered
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"kPedestrianARSessionUsageARElementRenderedKey"];

  return v3;
}

- (void)setNumberOfTimesARLocalized:(int64_t)a3
{
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setInteger:a3 forKey:@"kPedestrianARSessionUsageLocalizationSuccessCountKey"];
}

- (int64_t)numberOfTimesARLocalized
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 integerForKey:@"kPedestrianARSessionUsageLocalizationSuccessCountKey"];

  return v3;
}

- (BOOL)hasUserEnteredAR
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"kPedestrianARSessionUsageARWasEnteredKey"];
  v4 = v3 != 0;

  return v4;
}

- (PedestrianARSessionUsageTracker)init
{
  v11.receiver = self;
  v11.super_class = PedestrianARSessionUsageTracker;
  v2 = [(PedestrianARSessionUsageTracker *)&v11 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    enteredEntryPointToRouteIDs = v2->_enteredEntryPointToRouteIDs;
    v2->_enteredEntryPointToRouteIDs = v3;

    v5 = +[NSMutableSet set];
    localizedRouteIDs = v2->_localizedRouteIDs;
    v2->_localizedRouteIDs = v5;

    v7 = +[NSUserDefaults standardUserDefaults];
    v8 = [v7 BOOLForKey:@"kPedestrianARSessionUsageLocalizationSuccessKey"];

    if (v8)
    {
      v9 = +[NSUserDefaults standardUserDefaults];
      [v9 removeObjectForKey:@"kPedestrianARSessionUsageLocalizationSuccessKey"];

      [(PedestrianARSessionUsageTracker *)v2 setNumberOfTimesARLocalized:[(PedestrianARSessionUsageTracker *)v2 numberOfTimesARLocalized]+ 1];
    }
  }

  return v2;
}

+ (id)keyPathsForValuesAffectingValueForKey:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector("hasAREverLocalized");
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = NSStringFromSelector("numberOfTimesARLocalized");
    v8 = [NSSet setWithObject:v7];
  }

  else
  {
    v10.receiver = a1;
    v10.super_class = &OBJC_METACLASS___PedestrianARSessionUsageTracker;
    v8 = objc_msgSendSuper2(&v10, "keyPathsForValuesAffectingValueForKey:", v4);
  }

  return v8;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector("hasUserEnteredAR");
  if ([v4 isEqualToString:v5])
  {
    goto LABEL_4;
  }

  v6 = NSStringFromSelector("numberOfTimesARLocalized");
  if ([v4 isEqualToString:v6])
  {

LABEL_4:
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v9 = NSStringFromSelector("hasARElementRendered");
  v10 = [v4 isEqualToString:v9];

  if (v10)
  {
    goto LABEL_5;
  }

  v11 = NSStringFromSelector("hasAREverLocalized");
  v12 = [v4 isEqualToString:v11];

  if (v12)
  {
    v7 = 1;
  }

  else
  {
    v13.receiver = a1;
    v13.super_class = &OBJC_METACLASS___PedestrianARSessionUsageTracker;
    v7 = objc_msgSendSuper2(&v13, "automaticallyNotifiesObserversForKey:", v4);
  }

LABEL_6:

  return v7;
}

+ (PedestrianARSessionUsageTracker)sharedInstance
{
  if (qword_10195F9B8 != -1)
  {
    dispatch_once(&qword_10195F9B8, &stru_1016605B0);
  }

  v3 = qword_10195F9B0;

  return v3;
}

@end