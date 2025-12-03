@interface HDXPCScheduler
+ (id)schedulerWithEventNamed:(id)named runBlock:(id)block;
- (id)_criteriaForInterval:(double)interval gracePeriod:(double)period;
- (id)_identifierForEventName:(id)name;
- (id)_initWithEventNamed:(id)named runBlock:(id)block;
- (void)_dispatchBlock;
- (void)_registerWithCriteria:(id)criteria;
- (void)scheduleWithInterval:(double)interval gracePeriod:(double)period;
- (void)unschedule;
@end

@implementation HDXPCScheduler

+ (id)schedulerWithEventNamed:(id)named runBlock:(id)block
{
  blockCopy = block;
  namedCopy = named;
  v8 = [[self alloc] _initWithEventNamed:namedCopy runBlock:blockCopy];

  return v8;
}

- (id)_initWithEventNamed:(id)named runBlock:(id)block
{
  namedCopy = named;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = HDXPCScheduler;
  v8 = [(HDXPCScheduler *)&v14 init];
  if (v8)
  {
    v9 = [namedCopy copy];
    eventName = v8->_eventName;
    v8->_eventName = v9;

    v11 = [blockCopy copy];
    runBlock = v8->_runBlock;
    v8->_runBlock = v11;

    [(HDXPCScheduler *)v8 _checkIn];
  }

  return v8;
}

- (void)scheduleWithInterval:(double)interval gracePeriod:(double)period
{
  if (period <= 0.0)
  {
    sub_9EDC0(a2, self);
  }

  if (interval <= 0.0)
  {
    sub_9EE3C(a2, self);
  }

  _HKInitializeLogging();
  v8 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    v10 = v8;
    eventName = [(HDXPCScheduler *)self eventName];
    v12 = 138543874;
    v13 = eventName;
    v14 = 2048;
    intervalCopy = interval;
    v16 = 2048;
    periodCopy = period;
    _os_log_debug_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "Scheduling XPC trigger %{public}@ to fire after %f with grace period %f", &v12, 0x20u);
  }

  v9 = [(HDXPCScheduler *)self _criteriaForInterval:interval gracePeriod:period];
  [(HDXPCScheduler *)self _registerWithCriteria:v9];
}

- (void)unschedule
{
  eventName = [(HDXPCScheduler *)self eventName];
  _HKInitializeLogging();
  v4 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_9EEB8(eventName, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = [(HDXPCScheduler *)self _identifierForEventName:eventName];
  xpc_activity_unregister([v11 UTF8String]);
}

- (void)_dispatchBlock
{
  runBlock = [(HDXPCScheduler *)self runBlock];
  runBlock[2](runBlock, self);
}

- (void)_registerWithCriteria:(id)criteria
{
  criteriaCopy = criteria;
  eventName = [(HDXPCScheduler *)self eventName];
  v6 = [(HDXPCScheduler *)self _identifierForEventName:eventName];
  objc_initWeak(&location, self);
  uTF8String = [v6 UTF8String];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_226F0;
  v10[3] = &unk_1068A0;
  v8 = eventName;
  v11 = v8;
  objc_copyWeak(&v13, &location);
  v9 = v6;
  v12 = v9;
  xpc_activity_register(uTF8String, criteriaCopy, v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (id)_criteriaForInterval:(double)interval gracePeriod:(double)period
{
  if (interval <= 0.0)
  {
    sub_9F080(a2, self);
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(v6, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
  xpc_dictionary_set_int64(v6, XPC_ACTIVITY_DELAY, vcvtpd_s64_f64(interval));
  xpc_dictionary_set_int64(v6, XPC_ACTIVITY_GRACE_PERIOD, vcvtpd_s64_f64(period));

  return v6;
}

- (id)_identifierForEventName:(id)name
{
  nameCopy = name;
  nameCopy = [[NSString alloc] initWithFormat:@"%@.%@", @"com.apple.healthd.healthrecords.scheduler", nameCopy];

  return nameCopy;
}

@end