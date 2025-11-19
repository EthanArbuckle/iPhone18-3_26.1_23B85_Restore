@interface Promise
- (id)initOnScheduler:(id)a3 withExecutor:(id)a4;
- (id)joinWithPromise:(id)a3;
- (void)thenPerform:(id)a3 orCatchError:(id)a4 onScheduler:(id)a5;
@end

@implementation Promise

- (id)initOnScheduler:(id)a3 withExecutor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(Promise *)self init];
  v9 = v8;
  if (v8)
  {
    sub_1001CE634(v8, v7, v6);
  }

  return v9;
}

- (void)thenPerform:(id)a3 orCatchError:(id)a4 onScheduler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  stateLock = self->_stateLock;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001CE8EC;
  v15[3] = &unk_10051B6C8;
  v18 = v8;
  v19 = v9;
  v16 = v10;
  v17 = self;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  sub_100379C5C(stateLock, v15);
}

- (id)joinWithPromise:(id)a3
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001CEF1C;
  v12[3] = &unk_10051B768;
  v13 = a3;
  v14 = objc_alloc_init(Promise);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001CF0E8;
  v10[3] = &unk_10051B5C0;
  v4 = v14;
  v11 = v4;
  v5 = v13;
  v6 = objc_opt_new();
  [(Promise *)self thenPerform:v12 orCatchError:v10 onScheduler:v6];

  v7 = v11;
  v8 = v4;

  return v4;
}

@end