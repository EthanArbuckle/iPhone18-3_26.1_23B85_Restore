@interface ISGPUIdleTimer
- (ISGPUIdleTimer)initWithQueue:(id)queue;
- (void)_timerFiredForGeneration:(unint64_t)generation;
- (void)armTimer;
- (void)dealloc;
@end

@implementation ISGPUIdleTimer

- (ISGPUIdleTimer)initWithQueue:(id)queue
{
  queueCopy = queue;
  if (!queueCopy)
  {
    sub_100005E6C(a2, self);
  }

  v11.receiver = self;
  v11.super_class = ISGPUIdleTimer;
  v6 = [(ISGPUIdleTimer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_transactionLock._os_unfair_lock_opaque = 0;
    v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queueCopy);
    timer = v7->_timer;
    v7->_timer = v8;

    dispatch_source_set_timer(v7->_timer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(v7->_timer);
  }

  return v7;
}

- (void)dealloc
{
  dispatch_source_cancel(self->_timer);
  v3.receiver = self;
  v3.super_class = ISGPUIdleTimer;
  [(ISGPUIdleTimer *)&v3 dealloc];
}

- (void)armTimer
{
  v3 = _ISDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100005EE0(v3);
  }

  os_unfair_lock_lock(&self->_transactionLock);
  if (!self->_transaction)
  {
    v4 = _ISDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#ISGPUIDleTimer create transaction", buf, 2u);
    }

    v5 = os_transaction_create();
    transaction = self->_transaction;
    self->_transaction = v5;
  }

  v7 = (self->_generation + 1);
  self->_generation = v7;
  v8 = dispatch_time(0, 3000000000);
  dispatch_source_set_timer(self->_timer, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
  objc_initWeak(buf, self);
  timer = self->_timer;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000051BC;
  v10[3] = &unk_10000C628;
  objc_copyWeak(v11, buf);
  v11[1] = v7;
  dispatch_source_set_event_handler(timer, v10);
  os_unfair_lock_unlock(&self->_transactionLock);
  objc_destroyWeak(v11);
  objc_destroyWeak(buf);
}

- (void)_timerFiredForGeneration:(unint64_t)generation
{
  os_unfair_lock_lock(&self->_transactionLock);
  if (self->_generation == generation)
  {
    v5 = _ISDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#ISGPUIDleTimer purge", v8, 2u);
    }

    v6 = self->_transaction;
    transaction = self->_transaction;
    self->_transaction = 0;

    os_unfair_lock_unlock(&self->_transactionLock);
    objc_opt_class();
    if (objc_opt_respondsToSelector())
    {
      +[ICRTexturePool clear];
      +[RBDevice purgeResources];
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_transactionLock);
    v6 = 0;
  }
}

@end