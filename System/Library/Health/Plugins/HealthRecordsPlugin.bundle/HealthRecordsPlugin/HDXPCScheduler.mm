@interface HDXPCScheduler
+ (id)schedulerWithEventNamed:(id)a3 runBlock:(id)a4;
- (id)_criteriaForInterval:(double)a3 gracePeriod:(double)a4;
- (id)_identifierForEventName:(id)a3;
- (id)_initWithEventNamed:(id)a3 runBlock:(id)a4;
- (void)_dispatchBlock;
- (void)_registerWithCriteria:(id)a3;
- (void)scheduleWithInterval:(double)a3 gracePeriod:(double)a4;
- (void)unschedule;
@end

@implementation HDXPCScheduler

+ (id)schedulerWithEventNamed:(id)a3 runBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] _initWithEventNamed:v7 runBlock:v6];

  return v8;
}

- (id)_initWithEventNamed:(id)a3 runBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HDXPCScheduler;
  v8 = [(HDXPCScheduler *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    eventName = v8->_eventName;
    v8->_eventName = v9;

    v11 = [v7 copy];
    runBlock = v8->_runBlock;
    v8->_runBlock = v11;

    [(HDXPCScheduler *)v8 _checkIn];
  }

  return v8;
}

- (void)scheduleWithInterval:(double)a3 gracePeriod:(double)a4
{
  if (a4 <= 0.0)
  {
    sub_9EDC0(a2, self);
  }

  if (a3 <= 0.0)
  {
    sub_9EE3C(a2, self);
  }

  _HKInitializeLogging();
  v8 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    v10 = v8;
    v11 = [(HDXPCScheduler *)self eventName];
    v12 = 138543874;
    v13 = v11;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = a4;
    _os_log_debug_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "Scheduling XPC trigger %{public}@ to fire after %f with grace period %f", &v12, 0x20u);
  }

  v9 = [(HDXPCScheduler *)self _criteriaForInterval:a3 gracePeriod:a4];
  [(HDXPCScheduler *)self _registerWithCriteria:v9];
}

- (void)unschedule
{
  v3 = [(HDXPCScheduler *)self eventName];
  _HKInitializeLogging();
  v4 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_9EEB8(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = [(HDXPCScheduler *)self _identifierForEventName:v3];
  xpc_activity_unregister([v11 UTF8String]);
}

- (void)_dispatchBlock
{
  v3 = [(HDXPCScheduler *)self runBlock];
  v3[2](v3, self);
}

- (void)_registerWithCriteria:(id)a3
{
  v4 = a3;
  v5 = [(HDXPCScheduler *)self eventName];
  v6 = [(HDXPCScheduler *)self _identifierForEventName:v5];
  objc_initWeak(&location, self);
  v7 = [v6 UTF8String];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_226F0;
  v10[3] = &unk_1068A0;
  v8 = v5;
  v11 = v8;
  objc_copyWeak(&v13, &location);
  v9 = v6;
  v12 = v9;
  xpc_activity_register(v7, v4, v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (id)_criteriaForInterval:(double)a3 gracePeriod:(double)a4
{
  if (a3 <= 0.0)
  {
    sub_9F080(a2, self);
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(v6, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
  xpc_dictionary_set_int64(v6, XPC_ACTIVITY_DELAY, vcvtpd_s64_f64(a3));
  xpc_dictionary_set_int64(v6, XPC_ACTIVITY_GRACE_PERIOD, vcvtpd_s64_f64(a4));

  return v6;
}

- (id)_identifierForEventName:(id)a3
{
  v3 = a3;
  v4 = [[NSString alloc] initWithFormat:@"%@.%@", @"com.apple.healthd.healthrecords.scheduler", v3];

  return v4;
}

@end