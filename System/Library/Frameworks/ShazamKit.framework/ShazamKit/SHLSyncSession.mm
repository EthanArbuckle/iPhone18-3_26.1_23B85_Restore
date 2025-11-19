@interface SHLSyncSession
- (BOOL)commitTransactionWithError:(id *)a3;
- (BOOL)startTransactionWithError:(id *)a3;
- (BOOL)undoTransactionWithError:(id *)a3;
- (SHLSyncSession)initWithConfiguration:(id)a3;
- (SHLSyncSessionDelegate)delegate;
- (void)executeFetchTask:(id)a3;
- (void)executeModifyTask:(id)a3;
- (void)executeTask:(id)a3;
@end

@implementation SHLSyncSession

- (SHLSyncSession)initWithConfiguration:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SHLSyncSession;
  v5 = [(SHLSyncSession *)&v11 init];
  if (v5)
  {
    v6 = [[SHLTaskSchedulerFactory alloc] initWithConfiguration:v4];
    schedulerFactory = v5->_schedulerFactory;
    v5->_schedulerFactory = v6;

    v8 = dispatch_queue_create("com.shazam.ShazamLibrary.syncSession.dispatchQueue", 0);
    sessionDispatchQueue = v5->_sessionDispatchQueue;
    v5->_sessionDispatchQueue = v8;
  }

  return v5;
}

- (void)executeTask:(id)a3
{
  v5 = a3;
  v4 = [v5 type];
  if (v4 == 1)
  {
    [(SHLSyncSession *)self executeFetchTask:v5];
  }

  else if (!v4)
  {
    [(SHLSyncSession *)self executeModifyTask:v5];
  }

  _objc_release_x1();
}

- (void)executeModifyTask:(id)a3
{
  v4 = a3;
  v5 = [(SHLSyncSession *)self delegate];
  v6 = [v5 conformsToProtocol:&OBJC_PROTOCOL___SHLSyncSessionModifyTaskDelegate];

  if ((v6 & 1) == 0)
  {
    v13 = [NSException shl_exceptionWithName:NSInvalidArgumentException reason:@"You must conform to the protocol of the modify task you're trying to add."];
    objc_exception_throw(v13);
  }

  v7 = [(SHLSyncSession *)self delegate];
  [v4 setDelegate:v7];

  [v4 setSession:self];
  v8 = [(SHLSyncSession *)self schedulerFactory];
  v9 = [v8 modifyTaskScheduler];

  objc_initWeak(&location, self);
  v10 = [v9 preconditions];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000413BC;
  v14[3] = &unk_10007E050;
  objc_copyWeak(&v17, &location);
  v11 = v4;
  v15 = v11;
  v12 = v9;
  v16 = v12;
  [SHLTaskPreconditionEvaluator evaluatePreconditions:v10 withCompletion:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)executeFetchTask:(id)a3
{
  v4 = a3;
  v5 = [(SHLSyncSession *)self delegate];
  v6 = [v5 conformsToProtocol:&OBJC_PROTOCOL___SHLSyncSessionFetchTaskDelegate];

  if ((v6 & 1) == 0)
  {
    v13 = [NSException shl_exceptionWithName:NSInvalidArgumentException reason:@"You must conform to the protocol of the fetch task you're trying to add."];
    objc_exception_throw(v13);
  }

  v7 = [(SHLSyncSession *)self delegate];
  [v4 setDelegate:v7];

  [v4 setSession:self];
  v8 = [(SHLSyncSession *)self schedulerFactory];
  v9 = [v8 fetchTaskScheduler];

  objc_initWeak(&location, self);
  v10 = [v9 preconditions];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000417E8;
  v14[3] = &unk_10007E050;
  objc_copyWeak(&v17, &location);
  v11 = v4;
  v15 = v11;
  v12 = v9;
  v16 = v12;
  [SHLTaskPreconditionEvaluator evaluatePreconditions:v10 withCompletion:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (BOOL)startTransactionWithError:(id *)a3
{
  v5 = [(SHLSyncSession *)self schedulerFactory];
  v6 = [v5 createTransaction];
  [(SHLSyncSession *)self setTransaction:v6];

  v7 = [(SHLSyncSession *)self transaction];
  LOBYTE(a3) = [v7 startTransactionWithError:a3];

  return a3;
}

- (BOOL)commitTransactionWithError:(id *)a3
{
  v5 = [(SHLSyncSession *)self transaction];
  LOBYTE(a3) = [v5 commitTransactionWithError:a3];

  [(SHLSyncSession *)self setTransaction:0];
  return a3;
}

- (BOOL)undoTransactionWithError:(id *)a3
{
  v5 = [(SHLSyncSession *)self transaction];
  LOBYTE(a3) = [v5 undoTransactionWithError:a3];

  [(SHLSyncSession *)self setTransaction:0];
  return a3;
}

- (SHLSyncSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end