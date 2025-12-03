@interface SHLSyncSession
- (BOOL)commitTransactionWithError:(id *)error;
- (BOOL)startTransactionWithError:(id *)error;
- (BOOL)undoTransactionWithError:(id *)error;
- (SHLSyncSession)initWithConfiguration:(id)configuration;
- (SHLSyncSessionDelegate)delegate;
- (void)executeFetchTask:(id)task;
- (void)executeModifyTask:(id)task;
- (void)executeTask:(id)task;
@end

@implementation SHLSyncSession

- (SHLSyncSession)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = SHLSyncSession;
  v5 = [(SHLSyncSession *)&v11 init];
  if (v5)
  {
    v6 = [[SHLTaskSchedulerFactory alloc] initWithConfiguration:configurationCopy];
    schedulerFactory = v5->_schedulerFactory;
    v5->_schedulerFactory = v6;

    v8 = dispatch_queue_create("com.shazam.ShazamLibrary.syncSession.dispatchQueue", 0);
    sessionDispatchQueue = v5->_sessionDispatchQueue;
    v5->_sessionDispatchQueue = v8;
  }

  return v5;
}

- (void)executeTask:(id)task
{
  taskCopy = task;
  type = [taskCopy type];
  if (type == 1)
  {
    [(SHLSyncSession *)self executeFetchTask:taskCopy];
  }

  else if (!type)
  {
    [(SHLSyncSession *)self executeModifyTask:taskCopy];
  }

  _objc_release_x1();
}

- (void)executeModifyTask:(id)task
{
  taskCopy = task;
  delegate = [(SHLSyncSession *)self delegate];
  v6 = [delegate conformsToProtocol:&OBJC_PROTOCOL___SHLSyncSessionModifyTaskDelegate];

  if ((v6 & 1) == 0)
  {
    v13 = [NSException shl_exceptionWithName:NSInvalidArgumentException reason:@"You must conform to the protocol of the modify task you're trying to add."];
    objc_exception_throw(v13);
  }

  delegate2 = [(SHLSyncSession *)self delegate];
  [taskCopy setDelegate:delegate2];

  [taskCopy setSession:self];
  schedulerFactory = [(SHLSyncSession *)self schedulerFactory];
  modifyTaskScheduler = [schedulerFactory modifyTaskScheduler];

  objc_initWeak(&location, self);
  preconditions = [modifyTaskScheduler preconditions];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000413BC;
  v14[3] = &unk_10007E050;
  objc_copyWeak(&v17, &location);
  v11 = taskCopy;
  v15 = v11;
  v12 = modifyTaskScheduler;
  v16 = v12;
  [SHLTaskPreconditionEvaluator evaluatePreconditions:preconditions withCompletion:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)executeFetchTask:(id)task
{
  taskCopy = task;
  delegate = [(SHLSyncSession *)self delegate];
  v6 = [delegate conformsToProtocol:&OBJC_PROTOCOL___SHLSyncSessionFetchTaskDelegate];

  if ((v6 & 1) == 0)
  {
    v13 = [NSException shl_exceptionWithName:NSInvalidArgumentException reason:@"You must conform to the protocol of the fetch task you're trying to add."];
    objc_exception_throw(v13);
  }

  delegate2 = [(SHLSyncSession *)self delegate];
  [taskCopy setDelegate:delegate2];

  [taskCopy setSession:self];
  schedulerFactory = [(SHLSyncSession *)self schedulerFactory];
  fetchTaskScheduler = [schedulerFactory fetchTaskScheduler];

  objc_initWeak(&location, self);
  preconditions = [fetchTaskScheduler preconditions];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000417E8;
  v14[3] = &unk_10007E050;
  objc_copyWeak(&v17, &location);
  v11 = taskCopy;
  v15 = v11;
  v12 = fetchTaskScheduler;
  v16 = v12;
  [SHLTaskPreconditionEvaluator evaluatePreconditions:preconditions withCompletion:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (BOOL)startTransactionWithError:(id *)error
{
  schedulerFactory = [(SHLSyncSession *)self schedulerFactory];
  createTransaction = [schedulerFactory createTransaction];
  [(SHLSyncSession *)self setTransaction:createTransaction];

  transaction = [(SHLSyncSession *)self transaction];
  LOBYTE(error) = [transaction startTransactionWithError:error];

  return error;
}

- (BOOL)commitTransactionWithError:(id *)error
{
  transaction = [(SHLSyncSession *)self transaction];
  LOBYTE(error) = [transaction commitTransactionWithError:error];

  [(SHLSyncSession *)self setTransaction:0];
  return error;
}

- (BOOL)undoTransactionWithError:(id *)error
{
  transaction = [(SHLSyncSession *)self transaction];
  LOBYTE(error) = [transaction undoTransactionWithError:error];

  [(SHLSyncSession *)self setTransaction:0];
  return error;
}

- (SHLSyncSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end