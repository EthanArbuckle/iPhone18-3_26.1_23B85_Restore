@interface MODefaultsManager
+ (BOOL)isExtendedLogEnabled:(id)enabled forDetaultsManager:(id)manager;
+ (id)momentsDaemonDefaults;
- (MODefaultsManager)initWithSuiteName:(id)name;
- (MODefaultsManager)initWithUniverse:(id)universe;
- (id)objectForKey:(id)key;
- (id)objectForKeyWithoutLog:(id)log;
- (void)deleteObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
- (void)setObjectWithoutLog:(id)log forKey:(id)key;
@end

@implementation MODefaultsManager

- (MODefaultsManager)initWithUniverse:(id)universe
{
  v7.receiver = self;
  v7.super_class = MODefaultsManager;
  v3 = [(MODefaultsManager *)&v7 init];
  if (v3)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    userDefaults = v3->_userDefaults;
    v3->_userDefaults = v4;
  }

  return v3;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v6 = [(NSUserDefaults *)self->_userDefaults objectForKey:keyCopy];
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityDefaults);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(MODefaultsManager *)keyCopy objectForKey:v6, v7];
    }
  }

  else
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MODefaultsManager objectForKey:];
    }

    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MODefaultsManager.m" lineNumber:32 description:{@"Invalid parameter not satisfying: key (in %s:%d)", "-[MODefaultsManager objectForKey:]", 32}];

    v7 = _mo_log_facility_get_os_log(&MOLogFacilityDefaults);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MODefaultsManager objectForKey:v7];
    }

    v6 = 0;
  }

  return v6;
}

- (id)objectForKeyWithoutLog:(id)log
{
  if (log)
  {
    v4 = [(NSUserDefaults *)self->_userDefaults objectForKey:?];
  }

  else
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MODefaultsManager objectForKeyWithoutLog:];
    }

    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MODefaultsManager.m" lineNumber:52 description:{@"Invalid parameter not satisfying: key (in %s:%d)", "-[MODefaultsManager objectForKeyWithoutLog:]", 52}];

    v8 = _mo_log_facility_get_os_log(&MOLogFacilityDefaults);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MODefaultsManager objectForKeyWithoutLog:v8];
    }

    v4 = 0;
  }

  return v4;
}

- (void)deleteObjectForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityDefaults);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v10 = "[MODefaultsManager deleteObjectForKey:]";
      v11 = 2112;
      v12 = keyCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s, deleting key, %@", buf, 0x16u);
    }

    [(NSUserDefaults *)self->_userDefaults removeObjectForKey:keyCopy];
  }

  else
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MODefaultsManager deleteObjectForKey:];
    }

    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MODefaultsManager.m" lineNumber:66 description:{@"Invalid parameter not satisfying: key (in %s:%d)", "-[MODefaultsManager deleteObjectForKey:]", 66}];
  }
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (keyCopy)
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityDefaults);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v13 = "[MODefaultsManager setObject:forKey:]";
      v14 = 2112;
      v15 = keyCopy;
      v16 = 2112;
      v17 = objectCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s, key, %@, value, %@", buf, 0x20u);
    }

    [(NSUserDefaults *)self->_userDefaults setObject:objectCopy forKey:keyCopy];
  }

  else
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MODefaultsManager setObject:forKey:];
    }

    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MODefaultsManager.m" lineNumber:80 description:{@"Invalid parameter not satisfying: key (in %s:%d)", "-[MODefaultsManager setObject:forKey:]", 80}];
  }
}

- (void)setObjectWithoutLog:(id)log forKey:(id)key
{
  if (key)
  {
    userDefaults = self->_userDefaults;

    [(NSUserDefaults *)userDefaults setObject:log forKey:?];
  }

  else
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MODefaultsManager setObjectWithoutLog:forKey:];
    }

    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MODefaultsManager.m" lineNumber:97 description:{@"Invalid parameter not satisfying: key (in %s:%d)", "-[MODefaultsManager setObjectWithoutLog:forKey:]", 97}];
  }
}

- (MODefaultsManager)initWithSuiteName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = MODefaultsManager;
  v5 = [(MODefaultsManager *)&v9 init];
  if (v5)
  {
    v6 = [[NSUserDefaults alloc] initWithSuiteName:nameCopy];
    userDefaults = v5->_userDefaults;
    v5->_userDefaults = v6;
  }

  return v5;
}

+ (id)momentsDaemonDefaults
{
  if (momentsDaemonDefaults_onceToken != -1)
  {
    +[MODefaultsManager momentsDaemonDefaults];
  }

  v3 = momentsDaemonDefaults_shared;

  return v3;
}

void __42__MODefaultsManager_momentsDaemonDefaults__block_invoke(id a1)
{
  v1 = +[NSBundle mainBundle];
  v5 = [v1 bundleIdentifier];

  LODWORD(v1) = [v5 isEqualToString:@"com.apple.momentsd"];
  v2 = [MODefaultsManager alloc];
  if (v1)
  {
    v3 = [(MODefaultsManager *)v2 initWithUniverse:0];
  }

  else
  {
    v3 = [(MODefaultsManager *)v2 initWithSuiteName:@"com.apple.momentsd"];
  }

  v4 = momentsDaemonDefaults_shared;
  momentsDaemonDefaults_shared = v3;
}

+ (BOOL)isExtendedLogEnabled:(id)enabled forDetaultsManager:(id)manager
{
  v4 = [manager objectForKey:enabled];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)objectForKey:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 136315650;
  v4 = "[MODefaultsManager objectForKey:]";
  v5 = 2112;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s, key, %@, value, %@", &v3, 0x20u);
}

- (void)objectForKey:(os_log_t)log .cold.3(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MODefaultsManager objectForKey:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s, key cannot be nil!", &v1, 0xCu);
}

- (void)objectForKeyWithoutLog:(os_log_t)log .cold.2(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MODefaultsManager objectForKeyWithoutLog:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s, key cannot be nil!", &v1, 0xCu);
}

@end