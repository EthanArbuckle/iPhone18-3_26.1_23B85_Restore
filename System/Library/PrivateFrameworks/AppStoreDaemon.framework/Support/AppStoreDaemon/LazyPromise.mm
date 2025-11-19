@interface LazyPromise
- (id)initOnScheduler:(id)a3 withExecutor:(id)a4;
- (id)joinWithPromise:(id)a3;
- (void)thenPerform:(id)a3 orCatchError:(id)a4 onScheduler:(id)a5;
@end

@implementation LazyPromise

- (id)initOnScheduler:(id)a3 withExecutor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = LazyPromise;
  v9 = [(Promise *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    executor = v9->_executor;
    v9->_executor = v10;

    objc_storeStrong(&v9->_scheduler, a3);
  }

  return v9;
}

- (void)thenPerform:(id)a3 orCatchError:(id)a4 onScheduler:(id)a5
{
  stateLock = self->super._stateLock;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001CF664;
  v13[3] = &unk_10051AF98;
  v13[4] = self;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  sub_100379C5C(stateLock, v13);
  v12.receiver = self;
  v12.super_class = LazyPromise;
  [(Promise *)&v12 thenPerform:v11 orCatchError:v10 onScheduler:v9];
}

- (id)joinWithPromise:(id)a3
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001CF7BC;
  v8[3] = &unk_10051B598;
  v8[4] = self;
  v9 = a3;
  v3 = v9;
  v4 = objc_retainBlock(v8);
  v5 = sub_10020B714();
  v6 = sub_1001CE32C(LazyPromise, v5, v4);

  return v6;
}

@end