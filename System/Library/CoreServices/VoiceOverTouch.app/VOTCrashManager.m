@interface VOTCrashManager
+ (VOTCrashManager)sharedInstance;
- (id)_init;
- (int64_t)consecutiveCrashCount;
- (void)_incrementConsecutiveCrashCount;
- (void)_resetConsecutiveCrashCount;
- (void)handleStartUp;
@end

@implementation VOTCrashManager

+ (VOTCrashManager)sharedInstance
{
  if (qword_1001FEA98 != -1)
  {
    sub_100128A3C();
  }

  v3 = qword_1001FEA90;

  return v3;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = VOTCrashManager;
  return [(VOTCrashManager *)&v3 init];
}

- (void)handleStartUp
{
  v3 = +[VOTConfiguration rootConfiguration];
  v4 = [v3 preferenceForKey:@"VOTIsRunningKey"];
  self->_didStartFromCrashState = [v4 BOOLValue];

  if (self->_didStartFromCrashState)
  {
    [(VOTCrashManager *)self _incrementConsecutiveCrashCount];
    v5 = VOTLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [NSNumber numberWithInteger:[(VOTCrashManager *)self consecutiveCrashCount]];
      v10 = 138412290;
      v11 = v6;
      v7 = "VoiceOver starting up from crash state. Consecutive crashes: %@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v7, &v10, 0xCu);
    }
  }

  else
  {
    v5 = VOTLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [NSNumber numberWithInteger:[(VOTCrashManager *)self consecutiveCrashCount]];
      v10 = 138412290;
      v11 = v6;
      v7 = "VoiceOver starting up from fresh state. Consecutive crashes: %@";
      goto LABEL_6;
    }
  }

  v8 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:0];
  [(VOTCrashManager *)self setCrashloopTimer:v8];

  v9 = [(VOTCrashManager *)self crashloopTimer];
  [v9 afterDelay:&stru_1001C7DB8 processBlock:20.0];
}

- (int64_t)consecutiveCrashCount
{
  v2 = +[VOTConfiguration rootConfiguration];
  v3 = [v2 preferenceForKey:@"VOTConsecutiveCrashCount"];
  v4 = [v3 integerValue];

  return v4;
}

- (void)_incrementConsecutiveCrashCount
{
  v2 = +[VOTConfiguration rootConfiguration];
  v3 = [v2 preferenceForKey:@"VOTConsecutiveCrashCount"];
  v4 = [v3 integerValue];

  v6 = +[VOTConfiguration rootConfiguration];
  v5 = [NSNumber numberWithInteger:v4 + 1];
  [v6 setPreferenceSync:v5 forKey:@"VOTConsecutiveCrashCount"];
}

- (void)_resetConsecutiveCrashCount
{
  v2 = +[VOTConfiguration rootConfiguration];
  [v2 setPreference:0 forKey:@"VOTConsecutiveCrashCount"];
}

@end