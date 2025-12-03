@interface RCEventTracker
- (RCEventTracker)init;
- (int64_t)increment:(const char *)increment;
- (void)decrement:(const char *)decrement;
- (void)waitForAll;
@end

@implementation RCEventTracker

- (RCEventTracker)init
{
  v3.receiver = self;
  v3.super_class = RCEventTracker;
  return [(RCEventTracker *)&v3 initWithCondition:0];
}

- (int64_t)increment:(const char *)increment
{
  [(RCEventTracker *)self lock];
  condition = [(RCEventTracker *)self condition];
  v6 = condition;
  if (condition >= 0)
  {
    v7 = condition + 1;
  }

  else
  {
    v7 = 1;
  }

  ++self->_total_count;
  if (!self->txn)
  {
    v8 = os_transaction_create();
    txn = self->txn;
    self->txn = v8;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    incrementCopy = increment;
    v13 = 2048;
    v14 = v6;
    v15 = 2048;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s condition bump %ld -> %ld", &v11, 0x20u);
  }

  [(RCEventTracker *)self unlockWithCondition:v7];
  return v7;
}

- (void)decrement:(const char *)decrement
{
  [(RCEventTracker *)self lock];
  condition = [(RCEventTracker *)self condition];
  v6 = condition;
  if (condition <= 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = condition - 1;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    decrementCopy = decrement;
    v11 = 2048;
    v12 = v6;
    v13 = 2048;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s condition decrement %ld -> %ld", &v9, 0x20u);
  }

  if (!v7)
  {
    txn = self->txn;
    self->txn = 0;
  }

  [(RCEventTracker *)self unlockWithCondition:v7];
}

- (void)waitForAll
{
  [(RCEventTracker *)self lockWhenCondition:0];

  [(RCEventTracker *)self unlock];
}

@end