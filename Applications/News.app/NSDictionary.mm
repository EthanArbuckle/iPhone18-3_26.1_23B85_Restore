@interface NSDictionary
- (unint64_t)sync_headlineCount;
- (unint64_t)sync_type;
@end

@implementation NSDictionary

- (unint64_t)sync_headlineCount
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"sync_headlineCount"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (unint64_t)sync_type
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"sync_type"];
  v3 = [v2 unsignedIntegerValue];

  if (v3 >= 6)
  {
    v4 = NNSetupCompanionSyncLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Unknown type %lu", &v6, 0xCu);
    }

    return 0;
  }

  return v3;
}

@end