@interface PreciseLocationManagerDelegate
- (void)clInitLocationManagerDelegate;
@end

@implementation PreciseLocationManagerDelegate

- (void)clInitLocationManagerDelegate
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315138;
    v4 = "[PreciseLocationManagerDelegate clInitLocationManagerDelegate]";
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s isPreciseLocationEnabled delegate", &v3, 0xCu);
  }
}

@end