@interface BKAppLaunchCoordinator
- (BKAppLaunchCoordinator)init;
- (BOOL)appLaunchCoordinatorIsConditionSatisfied:(unint64_t)satisfied;
- (NSString)description;
- (id)_conditionSatisfied:(unint64_t)satisfied invalidatingAssertion:(BOOL)assertion;
- (id)_onConditionMask:(unint64_t)mask flags:(unint64_t)flags blockID:(id)d performBlock:(id)block;
- (id)appLaunchCoordinatorHoldAtConditionAssertion:(unint64_t)assertion;
- (void)_appLaunchCoordinatorOnConditionMask:(unint64_t)mask flags:(unint64_t)flags blockID:(id)d performBlock:(id)block;
- (void)_appLaunchCoordinatorOnConditionMask:(unint64_t)mask timeout:(double)timeout flags:(unint64_t)flags blockID:(id)d performBlock:(id)block;
- (void)_dispatchBlocks:(id)blocks;
- (void)_launchBlockTimedout:(id)timedout;
- (void)appLaunchCoordinatorPerformWhenLaunched:(id)launched block:(id)block;
- (void)signalConditionSatisfied:(unint64_t)satisfied;
- (void)signalConditionSatisfied:(unint64_t)satisfied blockID:(id)d notifyBlock:(id)block;
- (void)signalConditionSatisfied:(unint64_t)satisfied notifyWithTimeout:(double)timeout blockID:(id)d block:(id)block;
@end

@implementation BKAppLaunchCoordinator

- (BKAppLaunchCoordinator)init
{
  v10.receiver = self;
  v10.super_class = BKAppLaunchCoordinator;
  v2 = [(BKAppLaunchCoordinator *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("BKAppLaunchCoordinator", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_opt_new();
    launchBlocks = v2->_launchBlocks;
    v2->_launchBlocks = v5;

    v7 = objc_opt_new();
    coordinators = v2->_coordinators;
    v2->_coordinators = v7;
  }

  return v2;
}

- (NSString)description
{
  currentConditionMask = self->_currentConditionMask;
  pendingConditionMask = self->_pendingConditionMask;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = sub_100012EEC(currentConditionMask);
  v8 = sub_100012EEC(pendingConditionMask);
  v9 = [NSString stringWithFormat:@"<%@: %p, currentConditionMask: %@, pendingConditionMask: %@>", v6, self, v7, v8];

  return v9;
}

- (id)appLaunchCoordinatorHoldAtConditionAssertion:(unint64_t)assertion
{
  kdebug_trace();
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100005080;
  v16 = sub_100027988;
  v17 = 0;
  queue = [(BKAppLaunchCoordinator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019EDC0;
  block[3] = &unk_100A0A078;
  block[4] = self;
  block[5] = &v18;
  block[6] = &v12;
  block[7] = assertion;
  dispatch_sync(queue, block);

  if (*(v19 + 24) == 1 && v13[5])
  {
    v6 = [BKAppLaunchAssertion alloc];
    queue2 = [(BKAppLaunchCoordinator *)self queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10019EEF0;
    v10[3] = &unk_100A07588;
    v10[4] = self;
    v10[5] = &v12;
    v10[6] = assertion;
    v8 = [(BKAppLaunchAssertion *)v6 initWithQueue:queue2 releaseBlock:v10];
  }

  else
  {
    v8 = 0;
  }

  kdebug_trace();
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

- (BOOL)appLaunchCoordinatorIsConditionSatisfied:(unint64_t)satisfied
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  queue = [(BKAppLaunchCoordinator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019F15C;
  block[3] = &unk_100A07318;
  block[4] = self;
  block[5] = &v8;
  block[6] = satisfied;
  dispatch_sync(queue, block);

  LOBYTE(satisfied) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return satisfied;
}

- (id)_conditionSatisfied:(unint64_t)satisfied invalidatingAssertion:(BOOL)assertion
{
  assertionCopy = assertion;
  v7 = 1 << satisfied;
  coordinators = self->_coordinators;
  v9 = [NSNumber numberWithUnsignedInteger:?];
  v10 = [(NSMutableDictionary *)coordinators objectForKeyedSubscript:v9];

  if (!assertionCopy)
  {
    if (![v10 holdCount])
    {
      goto LABEL_8;
    }

    v12 = self->_pendingConditionMask | v7;
    v7 = 0;
    goto LABEL_6;
  }

  pendingConditionMask = self->_pendingConditionMask;
  if ((pendingConditionMask & v7) != 0)
  {
    v12 = pendingConditionMask & ~v7;
LABEL_6:
    self->_pendingConditionMask = v12;
    goto LABEL_8;
  }

  v7 = 0;
LABEL_8:
  if ((v7 & ~self->_currentConditionMask) == 0)
  {
    v13 = BCIMLog();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v14)
      {
        v15 = sub_100024BF8(satisfied);
        v16 = v15;
        v17 = @"NO";
        if (assertionCopy)
        {
          v17 = @"YES";
        }

        *buf = 138412546;
        v33 = v15;
        v34 = 2112;
        v35 = v17;
        v18 = "BKAppLaunchCoordinator: Condition already satisfied: %@, invalidatingAssertion: %@";
        v19 = v13;
        v20 = 22;
        goto LABEL_28;
      }

LABEL_29:

      v29 = 0;
      goto LABEL_30;
    }

    if (assertionCopy)
    {
      if (!v14)
      {
        goto LABEL_29;
      }

      v16 = sub_100024BF8(satisfied);
      *buf = 138412290;
      v33 = v16;
      v18 = "BKAppLaunchCoordinator: Assertion invalidated but waiting for explicit condition signal: %@";
    }

    else
    {
      if (!v14)
      {
        goto LABEL_29;
      }

      v16 = sub_100024BF8(satisfied);
      *buf = 138412290;
      v33 = v16;
      v18 = "BKAppLaunchCoordinator: Condition satisfied but waiting for assertion invalidation: %@";
    }

    v19 = v13;
    v20 = 12;
LABEL_28:
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);

    goto LABEL_29;
  }

  v21 = BCIMLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = sub_100024BF8(satisfied);
    v23 = v22;
    v24 = @"NO";
    if (assertionCopy)
    {
      v24 = @"YES";
    }

    *buf = 138412546;
    v33 = v22;
    v34 = 2112;
    v35 = v24;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "BKAppLaunchCoordinator: Condition Satisfied: %@, invalidatingAssertion: %@", buf, 0x16u);
  }

  v25 = self->_coordinators;
  v26 = [NSNumber numberWithUnsignedInteger:satisfied];
  [(NSMutableDictionary *)v25 setObject:0 forKeyedSubscript:v26];

  self->_currentConditionMask |= v7;
  launchBlocks = self->_launchBlocks;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10019F508;
  v31[3] = &unk_100A0A0C8;
  v31[4] = self;
  v31[5] = v7;
  v28 = [(NSMutableArray *)launchBlocks indexesOfObjectsPassingTest:v31];
  if ([v28 count])
  {
    v29 = [(NSMutableArray *)self->_launchBlocks objectsAtIndexes:v28];
    [(NSMutableArray *)self->_launchBlocks removeObjectsAtIndexes:v28];
  }

  else
  {
    v29 = 0;
  }

LABEL_30:

  return v29;
}

- (void)_dispatchBlocks:(id)blocks
{
  blocksCopy = blocks;
  v5 = blocksCopy;
  if ((self->_currentConditionMask & 8) == 0)
  {
    v6 = 0;
LABEL_5:
    lastIndex = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_6;
  }

  v7 = [blocksCopy indexesOfObjectsPassingTest:&stru_100A0A108];
  v6 = v7;
  if (!v7)
  {
    goto LABEL_5;
  }

  lastIndex = [v7 lastIndex];
LABEL_6:
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10019F750;
  v10[3] = &unk_100A0A130;
  v11 = v6;
  v12 = lastIndex;
  v9 = v6;
  [v5 enumerateObjectsUsingBlock:v10];
}

- (void)signalConditionSatisfied:(unint64_t)satisfied
{
  if (!+[NSThread isMainThread])
  {
    sub_100792EA8();
  }

  kdebug_trace();
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100005080;
  v11 = sub_100027988;
  v12 = 0;
  queue = [(BKAppLaunchCoordinator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019F98C;
  block[3] = &unk_100A07318;
  block[4] = self;
  block[5] = &v7;
  block[6] = satisfied;
  dispatch_sync(queue, block);

  [(BKAppLaunchCoordinator *)self _dispatchBlocks:v8[5]];
  kdebug_trace();
  _Block_object_dispose(&v7, 8);
}

- (void)signalConditionSatisfied:(unint64_t)satisfied blockID:(id)d notifyBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  [(BKAppLaunchCoordinator *)self signalConditionSatisfied:satisfied];
  if (blockCopy)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10019FAB8;
    v10[3] = &unk_100A03CA0;
    v11 = blockCopy;
    [(BKAppLaunchCoordinator *)self _appLaunchCoordinatorOnConditionMask:1 << satisfied flags:1 blockID:dCopy performBlock:v10];
  }
}

- (void)signalConditionSatisfied:(unint64_t)satisfied notifyWithTimeout:(double)timeout blockID:(id)d block:(id)block
{
  dCopy = d;
  blockCopy = block;
  [(BKAppLaunchCoordinator *)self signalConditionSatisfied:satisfied];
  if (blockCopy)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10019FBB0;
    v12[3] = &unk_100A0A158;
    v13 = blockCopy;
    [(BKAppLaunchCoordinator *)self _appLaunchCoordinatorOnConditionMask:1 << satisfied timeout:1 flags:dCopy blockID:v12 performBlock:timeout];
  }
}

- (void)appLaunchCoordinatorPerformWhenLaunched:(id)launched block:(id)block
{
  blockCopy = block;
  v7 = blockCopy;
  if (blockCopy)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10019FC70;
    v8[3] = &unk_100A03CA0;
    v9 = blockCopy;
    [(BKAppLaunchCoordinator *)self appLaunchCoordinatorOnConditionMask:32 blockID:launched performBlock:v8];
  }
}

- (id)_onConditionMask:(unint64_t)mask flags:(unint64_t)flags blockID:(id)d performBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100005080;
  v29 = sub_100027988;
  v30 = 0;
  queue = [(BKAppLaunchCoordinator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019FEF8;
  block[3] = &unk_100A0A180;
  v21 = &v31;
  v22 = &v25;
  block[4] = self;
  maskCopy = mask;
  v13 = blockCopy;
  v20 = v13;
  flagsCopy = flags;
  v14 = dCopy;
  v19 = v14;
  dispatch_sync(queue, block);

  if (v13 && *(v32 + 24) == 1)
  {
    v15 = BCIMLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v36 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "BKAppLaunchCoordinator: running #blockID:'%{public}@'", buf, 0xCu);
    }

    (*(v13 + 2))(v13, 1, 0);
  }

  v16 = v26[5];

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v16;
}

- (void)_launchBlockTimedout:(id)timedout
{
  timedoutCopy = timedout;
  if (!+[NSThread isMainThread])
  {
    sub_100792EE4();
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = [(BKAppLaunchCoordinator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A01EC;
  block[3] = &unk_100A03760;
  block[4] = self;
  v6 = timedoutCopy;
  v10 = v6;
  v11 = &v12;
  dispatch_sync(queue, block);

  if (v6 && (v13[3] & 1) != 0)
  {
    block = [v6 block];
    v8 = block;
    if (block)
    {
      (*(block + 16))(block, 1, 1);
    }
  }

  _Block_object_dispose(&v12, 8);
}

- (void)_appLaunchCoordinatorOnConditionMask:(unint64_t)mask flags:(unint64_t)flags blockID:(id)d performBlock:(id)block
{
  blockCopy = block;
  v11 = blockCopy;
  if (blockCopy)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001A0334;
    v13[3] = &unk_100A0A158;
    v14 = blockCopy;
    v12 = [(BKAppLaunchCoordinator *)self _onConditionMask:mask flags:flags blockID:d performBlock:v13];
  }
}

- (void)_appLaunchCoordinatorOnConditionMask:(unint64_t)mask timeout:(double)timeout flags:(unint64_t)flags blockID:(id)d performBlock:(id)block
{
  v9 = [(BKAppLaunchCoordinator *)self _onConditionMask:mask flags:flags blockID:d performBlock:block];
  if (v9)
  {
    v10 = dispatch_time(0, (timeout * 1000000000.0));
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001A042C;
    v11[3] = &unk_100A03440;
    v11[4] = self;
    v12 = v9;
    dispatch_after(v10, &_dispatch_main_q, v11);
  }
}

@end