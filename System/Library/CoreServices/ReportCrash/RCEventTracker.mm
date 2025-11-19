@interface RCEventTracker
- (RCEventTracker)init;
- (int64_t)increment:(const char *)a3;
- (void)decrement:(const char *)a3;
- (void)waitForAll;
@end

@implementation RCEventTracker

- (RCEventTracker)init
{
  v3.receiver = self;
  v3.super_class = RCEventTracker;
  return [(RCEventTracker *)&v3 initWithCondition:0];
}

- (int64_t)increment:(const char *)a3
{
  [(RCEventTracker *)self lock];
  v5 = [(RCEventTracker *)self condition];
  v6 = v5;
  if (v5 >= 0)
  {
    v7 = v5 + 1;
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
    v12 = a3;
    v13 = 2048;
    v14 = v6;
    v15 = 2048;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s condition bump %ld -> %ld", &v11, 0x20u);
  }

  [(RCEventTracker *)self unlockWithCondition:v7];
  return v7;
}

- (void)decrement:(const char *)a3
{
  [(RCEventTracker *)self lock];
  v5 = [(RCEventTracker *)self condition];
  v6 = v5;
  if (v5 <= 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5 - 1;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = a3;
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