@interface TrafficIncidentLayoutStorage
+ (id)sharedInstance;
- (id)_cachedIncidentLayoutWithIncidentKey:(id)a3;
- (void)_saveIncidentLayout:(id)a3 withIncidentKey:(id)a4;
- (void)clearCache;
@end

@implementation TrafficIncidentLayoutStorage

+ (id)sharedInstance
{
  if (qword_10000CED8 != -1)
  {
    sub_100002C9C();
  }

  v3 = qword_10000CEE0;

  return v3;
}

- (void)clearCache
{
  v2 = [(TrafficIncidentLayoutStorage *)self _sharedUserDefaults];
  [v2 setObject:0 forKey:@"TrafficIncidentVotingDictionary"];
  [v2 setObject:0 forKey:@"TrafficIncidentLayoutDictionary"];
  [v2 synchronize];
}

- (void)_saveIncidentLayout:(id)a3 withIncidentKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TrafficIncidentLayoutStorage *)self _sharedUserDefaults];
  v12 = 0;
  v9 = [NSKeyedArchiver archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v12];

  v10 = v12;
  if (v10)
  {
    v11 = MAPSGetIncidentsReportingLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "TrafficIncidentLayoutStorage error archiving incidentLayout %@", buf, 0xCu);
    }
  }

  [v8 setObject:v9 forKey:v6];
  [v8 synchronize];
}

- (id)_cachedIncidentLayoutWithIncidentKey:(id)a3
{
  v4 = a3;
  v5 = [(TrafficIncidentLayoutStorage *)self _sharedUserDefaults];
  v6 = [v5 objectForKey:v4];

  v12 = 0;
  v7 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v12];
  v8 = v12;
  if (v8)
  {
    v9 = MAPSGetIncidentsReportingLog();
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

@end