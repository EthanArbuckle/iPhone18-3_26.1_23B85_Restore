@interface Promise
- (id)initOnScheduler:(id)scheduler withExecutor:(id)executor;
- (id)joinWithPromise:(id)promise;
- (void)thenPerform:(id)perform orCatchError:(id)error onScheduler:(id)scheduler;
@end

@implementation Promise

- (id)initOnScheduler:(id)scheduler withExecutor:(id)executor
{
  schedulerCopy = scheduler;
  executorCopy = executor;
  v8 = [(Promise *)self init];
  v9 = v8;
  if (v8)
  {
    sub_1001CE634(v8, executorCopy, schedulerCopy);
  }

  return v9;
}

- (void)thenPerform:(id)perform orCatchError:(id)error onScheduler:(id)scheduler
{
  performCopy = perform;
  errorCopy = error;
  schedulerCopy = scheduler;
  stateLock = self->_stateLock;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001CE8EC;
  v15[3] = &unk_10051B6C8;
  v18 = performCopy;
  v19 = errorCopy;
  v16 = schedulerCopy;
  selfCopy = self;
  v12 = schedulerCopy;
  v13 = errorCopy;
  v14 = performCopy;
  sub_100379C5C(stateLock, v15);
}

- (id)joinWithPromise:(id)promise
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001CEF1C;
  v12[3] = &unk_10051B768;
  promiseCopy = promise;
  v14 = objc_alloc_init(Promise);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001CF0E8;
  v10[3] = &unk_10051B5C0;
  v4 = v14;
  v11 = v4;
  v5 = promiseCopy;
  v6 = objc_opt_new();
  [(Promise *)self thenPerform:v12 orCatchError:v10 onScheduler:v6];

  v7 = v11;
  v8 = v4;

  return v4;
}

@end