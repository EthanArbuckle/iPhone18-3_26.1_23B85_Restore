@interface PedestrianARSessionUsageTracker
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (PedestrianARSessionUsageTracker)sharedInstance;
+ (id)keyPathsForValuesAffectingValueForKey:(id)key;
- (BOOL)hasARElementRendered;
- (BOOL)hasAREverLocalizedForRoute:(id)route;
- (BOOL)hasUserEnteredAR;
- (BOOL)hasUserEnteredARForRoute:(id)route entryPoint:(int64_t)point;
- (PedestrianARSessionUsageTracker)init;
- (int64_t)numberOfTimesARLocalized;
- (void)clearARElementRenderedFlag;
- (void)clearARLocalizationsFlag;
- (void)clearAll;
- (void)clearUserEnteredARFlag;
- (void)migrateUsageFromRoute:(id)route toRoute:(id)toRoute;
- (void)registerARElementRendered;
- (void)registerLocalizationSuccessForRoute:(id)route;
- (void)registerUserEnteredARForRoute:(id)route entryPoint:(int64_t)point;
- (void)setNumberOfTimesARLocalized:(int64_t)localized;
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

  selfCopy = self;
  objc_sync_enter(selfCopy);
  localizedRouteIDs = [(PedestrianARSessionUsageTracker *)selfCopy localizedRouteIDs];
  [localizedRouteIDs removeAllObjects];

  objc_sync_exit(selfCopy);
  v6 = NSStringFromSelector("hasAREverLocalized");
  [(PedestrianARSessionUsageTracker *)selfCopy willChangeValueForKey:v6];

  v7 = +[NSUserDefaults standardUserDefaults];
  [v7 removeObjectForKey:@"kPedestrianARSessionUsageLocalizationSuccessCountKey"];

  v8 = NSStringFromSelector("hasAREverLocalized");
  [(PedestrianARSessionUsageTracker *)selfCopy didChangeValueForKey:v8];
}

- (void)clearUserEnteredARFlag
{
  v3 = sub_100FD37CC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Clearing user entered AR flag", v9, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  enteredEntryPointToRouteIDs = [(PedestrianARSessionUsageTracker *)selfCopy enteredEntryPointToRouteIDs];
  [enteredEntryPointToRouteIDs removeAllObjects];

  objc_sync_exit(selfCopy);
  v6 = NSStringFromSelector("hasUserEnteredAR");
  [(PedestrianARSessionUsageTracker *)selfCopy willChangeValueForKey:v6];

  v7 = +[NSUserDefaults standardUserDefaults];
  [v7 removeObjectForKey:@"kPedestrianARSessionUsageARWasEnteredKey"];

  v8 = NSStringFromSelector("hasUserEnteredAR");
  [(PedestrianARSessionUsageTracker *)selfCopy didChangeValueForKey:v8];
}

- (void)clearAll
{
  [(PedestrianARSessionUsageTracker *)self clearUserEnteredARFlag];
  [(PedestrianARSessionUsageTracker *)self clearARLocalizationsFlag];

  [(PedestrianARSessionUsageTracker *)self clearARElementRenderedFlag];
}

- (void)migrateUsageFromRoute:(id)route toRoute:(id)toRoute
{
  routeCopy = route;
  toRouteCopy = toRoute;
  v8 = sub_100FD37CC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v26 = 138412546;
    v27 = routeCopy;
    v28 = 2112;
    v29 = toRouteCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Migrating usage flags from %@ to %@", &v26, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  localizedRouteIDs = [(PedestrianARSessionUsageTracker *)selfCopy localizedRouteIDs];
  v11 = [localizedRouteIDs containsObject:routeCopy];

  if (v11)
  {
    v12 = sub_100FD37CC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Migrating localized flag", &v26, 2u);
    }

    localizedRouteIDs2 = [(PedestrianARSessionUsageTracker *)selfCopy localizedRouteIDs];
    [localizedRouteIDs2 addObject:toRouteCopy];
  }

  enteredEntryPointToRouteIDs = [(PedestrianARSessionUsageTracker *)selfCopy enteredEntryPointToRouteIDs];
  v15 = [enteredEntryPointToRouteIDs objectForKey:&off_1016EAC40];
  v16 = [v15 containsObject:routeCopy];

  if (v16)
  {
    v17 = sub_100FD37CC();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Migrating route planning entry flag", &v26, 2u);
    }

    enteredEntryPointToRouteIDs2 = [(PedestrianARSessionUsageTracker *)selfCopy enteredEntryPointToRouteIDs];
    v19 = [enteredEntryPointToRouteIDs2 objectForKey:&off_1016EAC40];
    [v19 addObject:toRouteCopy];
  }

  enteredEntryPointToRouteIDs3 = [(PedestrianARSessionUsageTracker *)selfCopy enteredEntryPointToRouteIDs];
  v21 = [enteredEntryPointToRouteIDs3 objectForKey:&off_1016EAC58];
  v22 = [v21 containsObject:routeCopy];

  if (v22)
  {
    v23 = sub_100FD37CC();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Migrating navigation entry flag", &v26, 2u);
    }

    enteredEntryPointToRouteIDs4 = [(PedestrianARSessionUsageTracker *)selfCopy enteredEntryPointToRouteIDs];
    v25 = [enteredEntryPointToRouteIDs4 objectForKey:&off_1016EAC58];
    [v25 addObject:toRouteCopy];
  }

  objc_sync_exit(selfCopy);
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

- (BOOL)hasAREverLocalizedForRoute:(id)route
{
  routeCopy = route;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  localizedRouteIDs = [(PedestrianARSessionUsageTracker *)selfCopy localizedRouteIDs];
  v7 = [localizedRouteIDs containsObject:routeCopy];

  objc_sync_exit(selfCopy);
  return v7;
}

- (void)registerLocalizationSuccessForRoute:(id)route
{
  routeCopy = route;
  v5 = sub_100FD37CC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = routeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Registering localization success for route: %@", &v10, 0xCu);
  }

  v6 = NSStringFromSelector("numberOfTimesARLocalized");
  [(PedestrianARSessionUsageTracker *)self willChangeValueForKey:v6];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  localizedRouteIDs = [(PedestrianARSessionUsageTracker *)selfCopy localizedRouteIDs];
  [localizedRouteIDs addObject:routeCopy];

  [(PedestrianARSessionUsageTracker *)selfCopy setNumberOfTimesARLocalized:[(PedestrianARSessionUsageTracker *)selfCopy numberOfTimesARLocalized]+ 1];
  objc_sync_exit(selfCopy);

  v9 = NSStringFromSelector("numberOfTimesARLocalized");
  [(PedestrianARSessionUsageTracker *)selfCopy didChangeValueForKey:v9];
}

- (BOOL)hasUserEnteredARForRoute:(id)route entryPoint:(int64_t)point
{
  routeCopy = route;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  enteredEntryPointToRouteIDs = [(PedestrianARSessionUsageTracker *)selfCopy enteredEntryPointToRouteIDs];
  v9 = [NSNumber numberWithInteger:point];
  v10 = [enteredEntryPointToRouteIDs objectForKey:v9];
  v11 = [v10 containsObject:routeCopy];

  objc_sync_exit(selfCopy);
  return v11;
}

- (void)registerUserEnteredARForRoute:(id)route entryPoint:(int64_t)point
{
  routeCopy = route;
  v7 = sub_100FD37CC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v21 = 138412290;
    v22 = routeCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Registering user entered AR for route: %@", &v21, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  enteredEntryPointToRouteIDs = [(PedestrianARSessionUsageTracker *)selfCopy enteredEntryPointToRouteIDs];
  v10 = [NSNumber numberWithInteger:point];
  v11 = [enteredEntryPointToRouteIDs objectForKey:v10];
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

  [v14 addObject:routeCopy];
  enteredEntryPointToRouteIDs2 = [(PedestrianARSessionUsageTracker *)selfCopy enteredEntryPointToRouteIDs];
  v16 = [NSNumber numberWithInteger:point];
  [enteredEntryPointToRouteIDs2 setObject:v14 forKey:v16];

  objc_sync_exit(selfCopy);
  v17 = NSStringFromSelector("hasUserEnteredAR");
  [(PedestrianARSessionUsageTracker *)selfCopy willChangeValueForKey:v17];

  v18 = +[NSUserDefaults standardUserDefaults];
  v19 = +[NSDate date];
  [v18 setObject:v19 forKey:@"kPedestrianARSessionUsageARWasEnteredKey"];

  v20 = NSStringFromSelector("hasUserEnteredAR");
  [(PedestrianARSessionUsageTracker *)selfCopy didChangeValueForKey:v20];
}

- (BOOL)hasARElementRendered
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"kPedestrianARSessionUsageARElementRenderedKey"];

  return v3;
}

- (void)setNumberOfTimesARLocalized:(int64_t)localized
{
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setInteger:localized forKey:@"kPedestrianARSessionUsageLocalizationSuccessCountKey"];
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

+ (id)keyPathsForValuesAffectingValueForKey:(id)key
{
  keyCopy = key;
  v5 = NSStringFromSelector("hasAREverLocalized");
  v6 = [keyCopy isEqualToString:v5];

  if (v6)
  {
    v7 = NSStringFromSelector("numberOfTimesARLocalized");
    v8 = [NSSet setWithObject:v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = &OBJC_METACLASS___PedestrianARSessionUsageTracker;
    v8 = objc_msgSendSuper2(&v10, "keyPathsForValuesAffectingValueForKey:", keyCopy);
  }

  return v8;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  v5 = NSStringFromSelector("hasUserEnteredAR");
  if ([keyCopy isEqualToString:v5])
  {
    goto LABEL_4;
  }

  v6 = NSStringFromSelector("numberOfTimesARLocalized");
  if ([keyCopy isEqualToString:v6])
  {

LABEL_4:
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v9 = NSStringFromSelector("hasARElementRendered");
  v10 = [keyCopy isEqualToString:v9];

  if (v10)
  {
    goto LABEL_5;
  }

  v11 = NSStringFromSelector("hasAREverLocalized");
  v12 = [keyCopy isEqualToString:v11];

  if (v12)
  {
    v7 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = &OBJC_METACLASS___PedestrianARSessionUsageTracker;
    v7 = objc_msgSendSuper2(&v13, "automaticallyNotifiesObserversForKey:", keyCopy);
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