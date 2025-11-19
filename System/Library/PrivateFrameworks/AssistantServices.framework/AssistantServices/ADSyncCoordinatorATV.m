@interface ADSyncCoordinatorATV
- (ADSyncCoordinatorATV)init;
@end

@implementation ADSyncCoordinatorATV

- (ADSyncCoordinatorATV)init
{
  v3 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Initializing ADSyncCoordinatorATV", buf, 2u);
  }

  v4 = +[ADSyncCoordinatorATV _defaultATVUser];
  v7.receiver = self;
  v7.super_class = ADSyncCoordinatorATV;
  v5 = [(ADSyncCoordinatorCommunalDevices *)&v7 initWithProfileUserId:v4];

  return v5;
}

@end