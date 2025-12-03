@interface FRAccountActionQueueBasedDataActionProvider
- (FRAccountActionQueueBasedDataActionProvider)init;
- (void)_consumeActionsUpToActionPassingTest:(id)test withBlock:(id)block;
- (void)consumeActionsUpToDestructiveActionSyncWithBlock:(id)block;
- (void)consumeNonDestructiveActionsSyncWithBlock:(id)block;
- (void)dealloc;
@end

@implementation FRAccountActionQueueBasedDataActionProvider

- (FRAccountActionQueueBasedDataActionProvider)init
{
  v8.receiver = self;
  v8.super_class = FRAccountActionQueueBasedDataActionProvider;
  v2 = [(FRAccountActionQueueBasedDataActionProvider *)&v8 init];
  if (v2)
  {
    v3 = [FCAccountActionQueue alloc];
    v4 = FCURLForAccountActionQueue();
    v5 = [v3 initWithFileURL:v4];
    accountActionQueue = v2->_accountActionQueue;
    v2->_accountActionQueue = v5;
  }

  return v2;
}

- (void)dealloc
{
  if ((![(FRAccountActionQueueBasedDataActionProvider *)self destructiveHasBeenConsumed]|| ![(FRAccountActionQueueBasedDataActionProvider *)self nonDestructiveHaveBeenConsumed]) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000726D8();
  }

  v3.receiver = self;
  v3.super_class = FRAccountActionQueueBasedDataActionProvider;
  [(FRAccountActionQueueBasedDataActionProvider *)&v3 dealloc];
}

- (void)consumeActionsUpToDestructiveActionSyncWithBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100072270();
  }

  if ([(FRAccountActionQueueBasedDataActionProvider *)self destructiveHasBeenConsumed]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100072334();
  }

  if ([(FRAccountActionQueueBasedDataActionProvider *)self nonDestructiveHaveBeenConsumed]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000723EC();
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100055A30;
  v6[3] = &unk_1000C59A8;
  v7 = blockCopy;
  v5 = blockCopy;
  [(FRAccountActionQueueBasedDataActionProvider *)self _consumeActionsUpToActionPassingTest:&stru_1000C5980 withBlock:v6];
  [(FRAccountActionQueueBasedDataActionProvider *)self setDestructiveHasBeenConsumed:1];
}

- (void)consumeNonDestructiveActionsSyncWithBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000724A4();
  }

  if (![(FRAccountActionQueueBasedDataActionProvider *)self destructiveHasBeenConsumed]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100072568();
  }

  if ([(FRAccountActionQueueBasedDataActionProvider *)self nonDestructiveHaveBeenConsumed]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100072620();
  }

  [(FRAccountActionQueueBasedDataActionProvider *)self _consumeActionsUpToActionPassingTest:&stru_1000C59C8 withBlock:blockCopy];
  [(FRAccountActionQueueBasedDataActionProvider *)self setNonDestructiveHaveBeenConsumed:1];
}

- (void)_consumeActionsUpToActionPassingTest:(id)test withBlock:(id)block
{
  testCopy = test;
  blockCopy = block;
  if (!testCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100072790();
    if (blockCopy)
    {
      goto LABEL_6;
    }
  }

  else if (blockCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100072854();
  }

LABEL_6:
  accountActionQueue = [(FRAccountActionQueueBasedDataActionProvider *)self accountActionQueue];
  peekAtActionTypes = [accountActionQueue peekAtActionTypes];
  v10 = [NSArray arrayWithArray:peekAtActionTypes];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100055D50;
  v21[3] = &unk_1000C59F0;
  v22 = testCopy;
  v11 = testCopy;
  v12 = [v10 indexOfObjectWithOptions:2 passingTest:v21];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12 + 1;
  }

  v14 = [v10 fc_subarrayUpToCountInclusive:v13];
  v15 = FRPrivateDataActionsForDataclassActionTypes(v14);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100055D98;
  v18[3] = &unk_1000C5A18;
  v19 = accountActionQueue;
  v20 = v13;
  v16 = blockCopy[2];
  v17 = accountActionQueue;
  v16(blockCopy, v15, v18);
}

@end