@interface AXAssetsActivityTransactionManager
- (AXAssetsActivityTransactionManager)init;
- (AXAssetsActivityTransactionManagerDelegate)delegate;
- (void)_queue_addActiveReason:(id)reason;
- (void)_queue_handleInactiveTimerFired;
- (void)_queue_removeActiveReason:(id)reason;
- (void)simpleTaskFinished:(id)finished;
- (void)simpleTaskStarted:(id)started;
@end

@implementation AXAssetsActivityTransactionManager

- (AXAssetsActivityTransactionManager)init
{
  v11.receiver = self;
  v11.super_class = AXAssetsActivityTransactionManager;
  v2 = [(AXAssetsActivityTransactionManager *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AXAssetsActivityTransactionManager", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = +[NSMutableArray array];
    queue_activeReasons = v2->_queue_activeReasons;
    v2->_queue_activeReasons = v6;

    v8 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:v2->_queue];
    queue_activityTimer = v2->_queue_activityTimer;
    v2->_queue_activityTimer = v8;

    [(AXDispatchTimer *)v2->_queue_activityTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  }

  return v2;
}

- (void)simpleTaskStarted:(id)started
{
  startedCopy = started;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006430;
  v7[3] = &unk_1000187D8;
  v7[4] = self;
  v8 = startedCopy;
  v6 = startedCopy;
  dispatch_sync(queue, v7);
}

- (void)simpleTaskFinished:(id)finished
{
  finishedCopy = finished;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000064D4;
  v7[3] = &unk_1000187D8;
  v7[4] = self;
  v8 = finishedCopy;
  v6 = finishedCopy;
  dispatch_async(queue, v7);
}

- (void)_queue_addActiveReason:(id)reason
{
  reasonCopy = reason;
  if ([(NSMutableArray *)self->_queue_activeReasons containsObject:reasonCopy])
  {
    v5 = AXLogAssetDaemon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10000DCF4(reasonCopy, v5);
    }

LABEL_4:

    goto LABEL_9;
  }

  [(AXDispatchTimer *)self->_queue_activityTimer cancel];
  v6 = [(NSMutableArray *)self->_queue_activeReasons count];
  [(NSMutableArray *)self->_queue_activeReasons addObject:reasonCopy];
  v7 = AXLogAssetDaemon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(NSMutableArray *)self->_queue_activeReasons count];
    v10 = 138412546;
    v11 = reasonCopy;
    v12 = 2048;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AXATM: Added active reason: '%@'. Reason count=%ld", &v10, 0x16u);
  }

  if (!v6 && !self->_queue_transitioningToIdle)
  {
    v9 = AXLogAssetDaemon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "AXATM: Will begin os_transaction", &v10, 2u);
    }

    v5 = os_transaction_create();
    [(AXAssetsActivityTransactionManager *)self setTransaction:v5];
    goto LABEL_4;
  }

LABEL_9:
}

- (void)_queue_removeActiveReason:(id)reason
{
  reasonCopy = reason;
  if (([(NSMutableArray *)self->_queue_activeReasons containsObject:reasonCopy]& 1) != 0)
  {
    [(NSMutableArray *)self->_queue_activeReasons removeObject:reasonCopy];
    v5 = AXLogAssetDaemon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(NSMutableArray *)self->_queue_activeReasons count];
      *buf = 138412546;
      v12 = reasonCopy;
      v13 = 2048;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "AXATM: Removed active reason: '%@'. Reason count=%ld", buf, 0x16u);
    }

    if (![(NSMutableArray *)self->_queue_activeReasons count])
    {
      v7 = AXLogAssetDaemon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v12 = 0x4020000000000000;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AXATM: No active reasons remain. Beginning timer of %.2f seconds before we go inactive", buf, 0xCu);
      }

      queue_activityTimer = self->_queue_activityTimer;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100006850;
      v10[3] = &unk_100018938;
      v10[4] = self;
      [(AXDispatchTimer *)queue_activityTimer afterDelay:v10 processBlock:0 cancelBlock:8.0];
    }
  }

  else
  {
    v9 = AXLogAssetDaemon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10000DD6C(reasonCopy, v9);
    }
  }
}

- (void)_queue_handleInactiveTimerFired
{
  v3 = AXLogAssetDaemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AXATM: Inactive timer fired. Will give delegate a chance to clean up and then transition to idle", buf, 2u);
  }

  self->_queue_transitioningToIdle = 1;
  objc_initWeak(buf, self);
  delegate = [(AXAssetsActivityTransactionManager *)self delegate];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100006988;
  v5[3] = &unk_100018788;
  objc_copyWeak(&v6, buf);
  [delegate willBecomeIdle:self completion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (AXAssetsActivityTransactionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end