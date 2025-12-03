@interface BCTransactionQueue
+ (id)newWithOptions:(unint64_t)options queue:(id)queue;
- (BCTransactionQueue)initWithOptions:(unint64_t)options queue:(id)queue;
- (id)newTransactionWithName:(id)name info:(id)info context:(id)context originatingSceneController:(id)controller targetSceneDescriptor:(id)descriptor;
- (void)_cancelTransactionsConflictedByTransaction:(id)transaction;
- (void)_process;
- (void)_processTransaction:(id)transaction;
- (void)sq_activateTransactions;
- (void)sq_removeFinishedTransactions;
@end

@implementation BCTransactionQueue

- (BCTransactionQueue)initWithOptions:(unint64_t)options queue:(id)queue
{
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = BCTransactionQueue;
  v8 = [(BCTransactionQueue *)&v16 init];
  if (v8)
  {
    if (queueCopy == &_dispatch_main_q)
    {
      options |= 0x10uLL;
    }

    v9 = objc_opt_new();
    blocksToProcess = v8->_blocksToProcess;
    v8->_blocksToProcess = v9;

    v11 = objc_opt_new();
    pendingTransactions = v8->_pendingTransactions;
    v8->_pendingTransactions = v11;

    v8->_options = options;
    objc_storeStrong(&v8->_queue, queue);
    v13 = dispatch_queue_create("BCTransactionQueue.sync", 0);
    sync = v8->_sync;
    v8->_sync = v13;
  }

  return v8;
}

+ (id)newWithOptions:(unint64_t)options queue:(id)queue
{
  queueCopy = queue;
  v6 = [[BCTransactionQueue alloc] initWithOptions:options queue:queueCopy];

  return v6;
}

- (id)newTransactionWithName:(id)name info:(id)info context:(id)context originatingSceneController:(id)controller targetSceneDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  controllerCopy = controller;
  contextCopy = context;
  infoCopy = info;
  nameCopy = name;
  v17 = objc_opt_new();
  [v17 setQueue:self];
  [v17 setName:nameCopy];

  [v17 setInfo:infoCopy];
  [v17 setOriginatingSceneController:controllerCopy];

  [v17 setTargetSceneDescriptor:descriptorCopy];
  v18 = BCTransactionLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v17 debugDescription];
    *buf = 138543362;
    v31 = v19;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Creating transaction: %{public}@", buf, 0xCu);
  }

  sync = self->_sync;
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_1355E0;
  v27 = &unk_2C7BE8;
  selfCopy = self;
  v29 = v17;
  v21 = v17;
  dispatch_sync(sync, &v24);
  [v21 setContext:{contextCopy, v24, v25, v26, v27, selfCopy}];

  v22 = [[_BCTransactionProxy alloc] initWithTransaction:v21];
  return v22;
}

- (void)_cancelTransactionsConflictedByTransaction:(id)transaction
{
  transactionCopy = transaction;
  sync = self->_sync;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1356CC;
  v7[3] = &unk_2C7BE8;
  v7[4] = self;
  v8 = transactionCopy;
  v6 = transactionCopy;
  dispatch_sync(sync, v7);
}

- (void)_processTransaction:(id)transaction
{
  transactionCopy = transaction;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  sync = self->_sync;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_135C54;
  block[3] = &unk_2C95A0;
  v6 = transactionCopy;
  selfCopy = self;
  v10 = &v11;
  v8 = v6;
  dispatch_sync(sync, block);
  if (*(v12 + 24) == 1)
  {
    [(BCTransactionQueue *)self _process];
  }

  _Block_object_dispose(&v11, 8);
}

- (void)sq_removeFinishedTransactions
{
  activeTransaction = [(BCTransactionQueue *)self activeTransaction];
  sq_isFinal = [activeTransaction sq_isFinal];

  if (sq_isFinal)
  {
    v5 = BCTransactionLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      activeTransaction2 = [(BCTransactionQueue *)self activeTransaction];
      v7 = [activeTransaction2 debugDescription];
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "removing active transaction: %{public}@", &v8, 0xCu);
    }

    [(BCTransactionQueue *)self setActiveTransaction:0];
  }
}

- (void)sq_activateTransactions
{
  activeTransaction = [(BCTransactionQueue *)self activeTransaction];
  if (!activeTransaction)
  {
    pendingTransactions = [(BCTransactionQueue *)self pendingTransactions];
    v5 = [pendingTransactions count];

    if (!v5)
    {
      return;
    }

    pendingTransactions2 = [(BCTransactionQueue *)self pendingTransactions];
    firstObject = [pendingTransactions2 firstObject];

    pendingTransactions3 = [(BCTransactionQueue *)self pendingTransactions];
    [pendingTransactions3 removeObjectAtIndex:0];

    [(BCTransactionQueue *)self setActiveTransaction:firstObject];
    activeTransaction = firstObject;
  }
}

- (void)_process
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_136058;
  v4[3] = &unk_2C7D40;
  v4[4] = self;
  v3 = objc_retainBlock(v4);
  if ((self->_options & 0x10) != 0 && +[NSThread isMainThread])
  {
    (v3[2])(v3);
  }

  else
  {
    dispatch_async(self->_queue, v3);
  }
}

@end