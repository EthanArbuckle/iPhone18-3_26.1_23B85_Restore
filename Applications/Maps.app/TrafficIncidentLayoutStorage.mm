@interface TrafficIncidentLayoutStorage
+ (id)sharedInstance;
- (id)_cachedIncidentLayoutWithIncidentKey:(id)key;
- (void)_saveIncidentLayout:(id)layout withIncidentKey:(id)key;
- (void)clearCache;
@end

@implementation TrafficIncidentLayoutStorage

+ (id)sharedInstance
{
  if (qword_10195D240 != -1)
  {
    dispatch_once(&qword_10195D240, &stru_101628E08);
  }

  v3 = qword_10195D248;

  return v3;
}

- (id)_cachedIncidentLayoutWithIncidentKey:(id)key
{
  keyCopy = key;
  _sharedUserDefaults = [(TrafficIncidentLayoutStorage *)self _sharedUserDefaults];
  v6 = [_sharedUserDefaults objectForKey:keyCopy];

  v12 = 0;
  v7 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v12];
  v8 = v12;
  if (v8)
  {
    v9 = sub_10002171C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "TrafficIncidentLayoutStorage error decoding incidentLayout %@", buf, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

- (void)_saveIncidentLayout:(id)layout withIncidentKey:(id)key
{
  keyCopy = key;
  layoutCopy = layout;
  _sharedUserDefaults = [(TrafficIncidentLayoutStorage *)self _sharedUserDefaults];
  v12 = 0;
  v9 = [NSKeyedArchiver archivedDataWithRootObject:layoutCopy requiringSecureCoding:1 error:&v12];

  v10 = v12;
  if (v10)
  {
    v11 = sub_10002171C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "TrafficIncidentLayoutStorage error archiving incidentLayout %@", buf, 0xCu);
    }
  }

  [_sharedUserDefaults setObject:v9 forKey:keyCopy];
  [_sharedUserDefaults synchronize];
}

- (void)clearCache
{
  _sharedUserDefaults = [(TrafficIncidentLayoutStorage *)self _sharedUserDefaults];
  [_sharedUserDefaults setObject:0 forKey:@"TrafficIncidentVotingDictionary"];
  [_sharedUserDefaults setObject:0 forKey:@"TrafficIncidentLayoutDictionary"];
  [_sharedUserDefaults synchronize];
}

@end