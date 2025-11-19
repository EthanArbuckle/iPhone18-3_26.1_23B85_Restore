@interface BCFutureValue
+ (id)reportState;
+ (void)futures:(id)a3 notify:(id)a4;
+ (void)initialize;
- (BCFutureValue)init;
- (BCFutureValue)initWithValue:(id)a3;
- (id)get;
- (id)getNonBlockingError:(id *)a3;
- (id)sq_get:(id)a3 caller:(void *)a4 value:(id *)a5 error:(id *)a6;
- (void)_addToState:(id)a3;
- (void)_get:(id)a3 caller:(void *)a4;
- (void)_notifyBlocks:(id)a3 withValue:(id)a4 error:(id)a5;
- (void)cancel;
- (void)dealloc;
- (void)get:(id)a3;
- (void)getBefore:(unint64_t)a3 block:(id)a4;
@end

@implementation BCFutureValue

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = dispatch_queue_create("BCFutureValue.outstandingSync", 0);
    v3 = qword_346010;
    qword_346010 = v2;

    v4 = [NSHashTable hashTableWithOptions:517];
    v5 = qword_346018;
    qword_346018 = v4;

    v6 = dispatch_get_global_queue(2, 0);
    os_state_add_handler();
  }
}

+ (id)reportState
{
  v2 = objc_opt_new();
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_160FC0;
  v19 = sub_160FD0;
  v20 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1618AC;
  block[3] = &unk_2CBA88;
  block[4] = &v15;
  dispatch_sync(qword_346010, block);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v16[5];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v23 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        [v7 _addToState:{v2, v10}];
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v23 count:16];
    }

    while (v4);
  }

  v21 = @"BCFutureValueThreadingState";
  v22 = v2;
  v8 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  _Block_object_dispose(&v15, 8);

  return v8;
}

- (void)_addToState:(id)a3
{
  v4 = a3;
  sync = self->_sync;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1619AC;
  v7[3] = &unk_2C7BE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(sync, v7);
}

- (BCFutureValue)init
{
  v11.receiver = self;
  v11.super_class = BCFutureValue;
  v2 = [(BCFutureValue *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_create("BCFutureValue", 0);
    sync = v2->_sync;
    v2->_sync = v3;

    v5 = objc_alloc_init(NSMutableArray);
    waitingBlocks = v2->_waitingBlocks;
    v2->_waitingBlocks = v5;

    v7 = qword_346010;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_161C20;
    block[3] = &unk_2C7D40;
    v10 = v2;
    dispatch_sync(v7, block);
  }

  return v2;
}

- (BCFutureValue)initWithValue:(id)a3
{
  v5 = a3;
  v6 = [(BCFutureValue *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, a3);
    v7->_hasValue = 1;
  }

  return v7;
}

- (void)dealloc
{
  if (![(BCFutureValue *)self hasValue]&& ![(BCFutureValue *)self cancelled])
  {
    [(BCFutureValue *)self setCancelled:1];
    v3 = [(BCFutureValue *)self waitingBlocks];
    v4 = [v3 copy];

    v5 = [(BCFutureValue *)self waitingBlocks];
    [v5 removeAllObjects];

    if (v4)
    {
      v6 = [NSError errorWithDomain:@"BCFutureErrorDomain" code:1 userInfo:0];
      [(BCFutureValue *)self _notifyBlocks:v4 withValue:0 error:v6];
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_161DD0;
  block[3] = &unk_2C7D40;
  block[4] = self;
  dispatch_sync(qword_346010, block);
  v7.receiver = self;
  v7.super_class = BCFutureValue;
  [(BCFutureValue *)&v7 dealloc];
}

- (void)cancel
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_160FC0;
  v11 = sub_160FD0;
  v12 = 0;
  sync = self->_sync;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_161F18;
  v6[3] = &unk_2CA7A8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(sync, v6);
  v4 = v8[5];
  if (v4)
  {
    v5 = [NSError errorWithDomain:@"BCFutureErrorDomain" code:1 userInfo:0];
    [(BCFutureValue *)self _notifyBlocks:v4 withValue:0 error:v5];
  }

  _Block_object_dispose(&v7, 8);
}

+ (void)futures:(id)a3 notify:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = dispatch_group_create();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * v12);
          dispatch_group_enter(v7);
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_162188;
          v16[3] = &unk_2CE990;
          v17 = v7;
          [v13 get:v16];

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    v14 = dispatch_get_global_queue(0, 0);
    dispatch_group_notify(v7, v14, v6);

    v5 = v15;
  }
}

- (id)getNonBlockingError:(id *)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_160FC0;
  v11 = sub_160FD0;
  v12 = 0;
  sync = self->_sync;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_162284;
  block[3] = &unk_2CA6F0;
  block[4] = self;
  block[5] = &v7;
  block[6] = a3;
  dispatch_sync(sync, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)get
{
  v15 = 0;
  v16 = 0;
  backtrace(&v15, 2);
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_160FC0;
  v13 = sub_160FD0;
  v14 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_162454;
  v6[3] = &unk_2CE9B8;
  v3 = dispatch_semaphore_create(0);
  v7 = v3;
  v8 = &v9;
  [(BCFutureValue *)self _get:v6 caller:v16];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

- (id)sq_get:(id)a3 caller:(void *)a4 value:(id *)a5 error:(id *)a6
{
  v10 = a3;
  if ([(BCFutureValue *)self hasValue])
  {
    if (a5)
    {
      *a5 = [(BCFutureValue *)self value];
    }

    if (a6)
    {
      v11 = [(BCFutureValue *)self error];
LABEL_11:
      v12 = 0;
      *a6 = v11;
      goto LABEL_14;
    }

LABEL_12:
    v12 = 0;
    goto LABEL_14;
  }

  if ([(BCFutureValue *)self cancelled])
  {
    if (a5)
    {
      *a5 = 0;
    }

    if (a6)
    {
      v11 = [NSError errorWithDomain:@"BCFutureErrorDomain" code:1 userInfo:0];
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v12 = objc_opt_new();
  [v12 setBlock:v10];
  [v12 setCaller:a4];
  v13 = [(BCFutureValue *)self waitingBlocks];
  [v13 addObject:v12];

LABEL_14:

  return v12;
}

- (void)get:(id)a3
{
  if (a3)
  {
    v5 = 0;
    v6 = 0;
    v4 = a3;
    backtrace(&v5, 2);
    [(BCFutureValue *)self _get:v4 caller:v6];
  }
}

- (void)_get:(id)a3 caller:(void *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = sub_160FC0;
    v30 = sub_160FD0;
    v31 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_160FC0;
    v24 = sub_160FD0;
    v25 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    sync = self->_sync;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_162834;
    v10[3] = &unk_2CE9E0;
    v12 = &v16;
    v10[4] = self;
    v9 = v6;
    v11 = v9;
    v13 = &v20;
    v14 = &v26;
    v15 = a4;
    dispatch_sync(sync, v10);
    if (*(v17 + 24) == 1)
    {
      (*(v9 + 2))(v9, v21[5], v27[5]);
    }

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v20, 8);

    _Block_object_dispose(&v26, 8);
  }
}

- (void)getBefore:(unint64_t)a3 block:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v33 = 0;
    v34 = 0;
    backtrace(&v33, 2);
    v7 = v34;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = sub_160FC0;
    v31 = sub_160FD0;
    v32 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = sub_160FC0;
    v25 = sub_160FD0;
    v26 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    sync = self->_sync;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_162AF4;
    v10[3] = &unk_2CEA08;
    v10[4] = self;
    v12 = &v27;
    v13 = &v21;
    v14 = &v17;
    v15 = a3;
    v9 = v6;
    v11 = v9;
    v16 = v7;
    dispatch_sync(sync, v10);
    if (*(v18 + 24) == 1)
    {
      (*(v9 + 2))(v9, v28[5], v22[5]);
    }

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v21, 8);

    _Block_object_dispose(&v27, 8);
  }
}

- (void)_notifyBlocks:(id)a3 withValue:(id)a4 error:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = [*(*(&v15 + 1) + 8 * v13) block];
        (v14)[2](v14, v8, v9);

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

@end