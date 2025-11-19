@interface AXMIdleManager
- (AXMIdleManager)init;
- (AXMIdleManagerDelegate)delegate;
- (void)_queue_addActiveReason:(id)a3;
- (void)_queue_removeActiveReason:(id)a3;
- (void)_queue_voiceOverActivityOccurred;
- (void)voiceOverActivityOccurred;
@end

@implementation AXMIdleManager

- (AXMIdleManager)init
{
  v10.receiver = self;
  v10.super_class = AXMIdleManager;
  v2 = [(AXMIdleManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("AXMIdleManager", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = +[NSMutableArray array];
    queue_activeReasons = v2->_queue_activeReasons;
    v2->_queue_activeReasons = v5;

    v7 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:v2->_queue];
    queue_voiceOverActivityTimer = v2->_queue_voiceOverActivityTimer;
    v2->_queue_voiceOverActivityTimer = v7;

    [(AXDispatchTimer *)v2->_queue_voiceOverActivityTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  }

  return v2;
}

- (void)voiceOverActivityOccurred
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __43__AXMIdleManager_voiceOverActivityOccurred__block_invoke;
  block[3] = &unk_100008268;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_queue_voiceOverActivityOccurred
{
  if (([(NSMutableArray *)self->_queue_activeReasons containsObject:@"VoiceOverActivity"]& 1) == 0)
  {
    [(AXMIdleManager *)self _queue_addActiveReason:@"VoiceOverActivity"];
  }

  queue_voiceOverActivityTimer = self->_queue_voiceOverActivityTimer;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __50__AXMIdleManager__queue_voiceOverActivityOccurred__block_invoke;
  v4[3] = &unk_100008268;
  v4[4] = self;
  [(AXDispatchTimer *)queue_voiceOverActivityTimer afterDelay:v4 processBlock:0 cancelBlock:180.0];
}

- (void)_queue_addActiveReason:(id)a3
{
  v4 = a3;
  if ([(NSMutableArray *)self->_queue_activeReasons containsObject:v4])
  {
    v5 = AXMediaLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(AXMIdleManager *)v4 _queue_addActiveReason:v5];
    }
  }

  v6 = [(NSMutableArray *)self->_queue_activeReasons count];
  [(NSMutableArray *)self->_queue_activeReasons addObject:v4];
  v7 = AXMediaLogService();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    queue_activeReasons = self->_queue_activeReasons;
    v11 = 138412546;
    v12 = v4;
    v13 = 2112;
    v14 = queue_activeReasons;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Added activeReason: '%@'. all:[%@]", &v11, 0x16u);
  }

  if (!v6 && !self->_queue_transitioningToIdle)
  {
    v9 = AXMediaLogService();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Will begin xpc transaction now", &v11, 2u);
    }

    [v4 UTF8String];
    v10 = os_transaction_create();
    [(AXMIdleManager *)self setTransaction:v10];
  }
}

- (void)_queue_removeActiveReason:(id)a3
{
  v4 = a3;
  if (([(NSMutableArray *)self->_queue_activeReasons containsObject:v4]& 1) == 0)
  {
    v5 = AXMediaLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(AXMIdleManager *)v4 _queue_removeActiveReason:v5];
    }
  }

  [(NSMutableArray *)self->_queue_activeReasons removeObject:v4];
  v6 = AXMediaLogService();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    queue_activeReasons = self->_queue_activeReasons;
    *buf = 138412546;
    v12 = v4;
    v13 = 2112;
    v14 = queue_activeReasons;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removed activeReason: '%@'. all:[%@]", buf, 0x16u);
  }

  if (![(NSMutableArray *)self->_queue_activeReasons count])
  {
    v8 = AXMediaLogService();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No activeReasons remain. Will transition to idle", buf, 2u);
    }

    self->_queue_transitioningToIdle = 1;
    v9 = [(AXMIdleManager *)self delegate];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __44__AXMIdleManager__queue_removeActiveReason___block_invoke;
    v10[3] = &unk_100008268;
    v10[4] = self;
    [v9 willBecomeIdle:self completion:v10];
  }
}

void __44__AXMIdleManager__queue_removeActiveReason___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __44__AXMIdleManager__queue_removeActiveReason___block_invoke_2;
  block[3] = &unk_100008268;
  block[4] = v1;
  dispatch_async(v2, block);
}

void __44__AXMIdleManager__queue_removeActiveReason___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 32) = 0;
  v2 = [*(*(a1 + 32) + 16) count];
  v3 = AXMediaLogService();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "activeReason added while transitioning to idle. aborting", v5, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Will end xpc transaction now", buf, 2u);
    }

    [*(a1 + 32) setTransaction:0];
  }
}

- (AXMIdleManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_queue_addActiveReason:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "active reason already exists: %@", &v2, 0xCu);
}

- (void)_queue_removeActiveReason:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "active reason did not exist: %@", &v2, 0xCu);
}

@end