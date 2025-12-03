@interface SHEventSignalScheduler
- (void)sendEventSignal:(id)signal;
@end

@implementation SHEventSignalScheduler

- (void)sendEventSignal:(id)signal
{
  signalCopy = signal;
  v4 = BiomeLibrary();
  discoverability = [v4 Discoverability];
  signals = [discoverability Signals];
  source = [signals source];

  v8 = [[BMDiscoverabilitySignals alloc] initWithContentIdentifier:signalCopy context:0 osBuild:0 userInfo:0];
  [source sendEvent:v8];
  v9 = sh_log_object();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Sent signal event: %@", &v10, 0xCu);
  }
}

@end