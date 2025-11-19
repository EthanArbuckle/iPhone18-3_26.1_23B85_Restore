@interface Task
- (BOOL)runTaskReturningError:(id *)a3;
- (Task)init;
- (Task)initWithLogKey:(id)a3;
- (Task)initWithoutKeepAlive;
- (void)completeWithError:(id)a3;
- (void)completeWithSuccess;
- (void)runTaskWithCompletionHandler:(id)a3;
@end

@implementation Task

- (Task)init
{
  v10.receiver = self;
  v10.super_class = Task;
  v2 = [(Task *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [KeepAlive keepAliveWithFormat:@"com.apple.appstored.%@", v4];
    keepAlive = v2->_keepAlive;
    v2->_keepAlive = v5;

    v7 = objc_alloc_init(NSLock);
    lock = v2->_lock;
    v2->_lock = v7;
  }

  return v2;
}

- (Task)initWithLogKey:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = Task;
  v5 = [(Task *)&v17 init];
  if (v5)
  {
    if (v4)
    {
      if ([v4 hasCategory])
      {
        v6 = [v4 description];
        v7 = [NSString stringWithFormat:@"[%@", v6];
      }

      else
      {
        v7 = [v4 description];
      }

      v11 = objc_opt_class();
      v10 = NSStringFromClass(v11);
      v12 = [KeepAlive keepAliveWithFormat:@"com.apple.appstored.%@.%@", v10, v7];
      keepAlive = v5->_keepAlive;
      v5->_keepAlive = v12;
    }

    else
    {
      v8 = objc_opt_class();
      v7 = NSStringFromClass(v8);
      v9 = [KeepAlive keepAliveWithFormat:@"com.apple.appstored.%@", v7];
      v10 = v5->_keepAlive;
      v5->_keepAlive = v9;
    }

    v14 = objc_alloc_init(NSLock);
    lock = v5->_lock;
    v5->_lock = v14;
  }

  return v5;
}

- (Task)initWithoutKeepAlive
{
  v6.receiver = self;
  v6.super_class = Task;
  v2 = [(Task *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSLock);
    lock = v2->_lock;
    v2->_lock = v3;
  }

  return v2;
}

- (void)completeWithError:(id)a3
{
  v4 = a3;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = 138543618;
    v10 = v8;
    v11 = 2114;
    v12 = v4;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@ completing with error: %{public}@", &v9, 0x16u);
  }

  [(NSLock *)self->_lock lock];
  objc_setProperty_atomic_copy(self, v6, v4, 32);
  self->_success = 0;
  [(NSLock *)self->_lock unlock];
}

- (void)completeWithSuccess
{
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ completing with success", &v7, 0xCu);
  }

  [(NSLock *)self->_lock lock];
  objc_setProperty_atomic_copy(self, v6, 0, 32);
  self->_success = 1;
  [(NSLock *)self->_lock unlock];
}

- (BOOL)runTaskReturningError:(id *)a3
{
  if ([(Task *)self isAsynchronous])
  {
    v5 = [TaskQueue alloc];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = sub_100284C30(&v5->super.isa, v7);

    if (v8)
    {
      [v8[1] addOperation:self];
      [v8[1] waitUntilAllOperationsAreFinished];
    }

LABEL_10:

    goto LABEL_11;
  }

  if (([(Task *)self isCancelled]& 1) != 0)
  {
    v9 = [NSError alloc];
    v10 = [v9 initWithDomain:ASDErrorDomain code:908 userInfo:0];
    [(Task *)self completeWithError:v10];
  }

  else
  {
    [(Task *)self main];
  }

  if (self)
  {
    v8 = [(Task *)self completionBlock];
    if (v8)
    {
      [(Task *)self setCompletionBlock:0];
      v12 = dispatch_get_global_queue(21, 0);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1002D86E0;
      v16[3] = &unk_10051B790;
      v16[4] = self;
      v17 = v8;
      dispatch_async(v12, v16);
    }

    goto LABEL_10;
  }

LABEL_11:
  if (a3)
  {
    if (self)
    {
      v13 = objc_getProperty(self, v11, 32, 1);
    }

    else
    {
      v13 = 0;
    }

    *a3 = v13;
  }

  return self && self->_success;
}

- (void)runTaskWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [TaskQueue alloc];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = sub_100284C30(&v5->super.isa, v7);

  if (v8)
  {
    [v8[1] addOperation:self];
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002D865C;
  v10[3] = &unk_10051B790;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  sub_100284D9C(v8, v10);
}

@end