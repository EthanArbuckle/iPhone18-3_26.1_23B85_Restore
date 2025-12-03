@interface LazyPromise
- (id)initOnScheduler:(id)scheduler withExecutor:(id)executor;
- (id)joinWithPromise:(id)promise;
- (void)thenPerform:(id)perform orCatchError:(id)error onScheduler:(id)scheduler;
@end

@implementation LazyPromise

- (id)initOnScheduler:(id)scheduler withExecutor:(id)executor
{
  schedulerCopy = scheduler;
  executorCopy = executor;
  v13.receiver = self;
  v13.super_class = LazyPromise;
  v9 = [(Promise *)&v13 init];
  if (v9)
  {
    v10 = [executorCopy copy];
    executor = v9->_executor;
    v9->_executor = v10;

    objc_storeStrong(&v9->_scheduler, scheduler);
  }

  return v9;
}

- (void)thenPerform:(id)perform orCatchError:(id)error onScheduler:(id)scheduler
{
  stateLock = self->super._stateLock;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001CF664;
  v13[3] = &unk_10051AF98;
  v13[4] = self;
  schedulerCopy = scheduler;
  errorCopy = error;
  performCopy = perform;
  sub_100379C5C(stateLock, v13);
  v12.receiver = self;
  v12.super_class = LazyPromise;
  [(Promise *)&v12 thenPerform:performCopy orCatchError:errorCopy onScheduler:schedulerCopy];
}

- (id)joinWithPromise:(id)promise
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001CF7BC;
  v8[3] = &unk_10051B598;
  v8[4] = self;
  promiseCopy = promise;
  v3 = promiseCopy;
  v4 = objc_retainBlock(v8);
  v5 = sub_10020B714();
  v6 = sub_1001CE32C(LazyPromise, v5, v4);

  return v6;
}

@end