@interface FRAccountActionQueueBasedDataActionProvider
- (FRAccountActionQueueBasedDataActionProvider)init;
- (void)_consumeActionsUpToActionPassingTest:(id)a3 withBlock:(id)a4;
- (void)consumeActionsUpToDestructiveActionSyncWithBlock:(id)a3;
- (void)consumeNonDestructiveActionsSyncWithBlock:(id)a3;
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

- (void)consumeActionsUpToDestructiveActionSyncWithBlock:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
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
  v7 = v4;
  v5 = v4;
  [(FRAccountActionQueueBasedDataActionProvider *)self _consumeActionsUpToActionPassingTest:&stru_1000C5980 withBlock:v6];
  [(FRAccountActionQueueBasedDataActionProvider *)self setDestructiveHasBeenConsumed:1];
}

- (void)consumeNonDestructiveActionsSyncWithBlock:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
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

  [(FRAccountActionQueueBasedDataActionProvider *)self _consumeActionsUpToActionPassingTest:&stru_1000C59C8 withBlock:v4];
  [(FRAccountActionQueueBasedDataActionProvider *)self setNonDestructiveHaveBeenConsumed:1];
}

- (void)_consumeActionsUpToActionPassingTest:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100072790();
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100072854();
  }

LABEL_6:
  v8 = [(FRAccountActionQueueBasedDataActionProvider *)self accountActionQueue];
  v9 = [v8 peekAtActionTypes];
  v10 = [NSArray arrayWithArray:v9];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100055D50;
  v21[3] = &unk_1000C59F0;
  v22 = v6;
  v11 = v6;
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
  v19 = v8;
  v20 = v13;
  v16 = v7[2];
  v17 = v8;
  v16(v7, v15, v18);
}

@end