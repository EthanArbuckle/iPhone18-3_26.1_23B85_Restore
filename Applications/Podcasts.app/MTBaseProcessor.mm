@interface MTBaseProcessor
+ (id)sharedInstance;
+ (void)initialize;
- (BOOL)isRunning;
- (BOOL)isStopping;
- (BOOL)start;
- (MTBaseProcessor)init;
- (id)createQueryObserver;
- (id)entityName;
- (id)predicate;
- (void)enqueueWorkBlock:(id)block;
- (void)results:(id)results;
- (void)resultsChangedWithDeletedIds:(id)ids insertIds:(id)insertIds updatedIds:(id)updatedIds;
- (void)setIsStopping:(BOOL)stopping;
- (void)stop;
- (void)updatePredicate;
@end

@implementation MTBaseProcessor

+ (void)initialize
{
  if (qword_100583C20 != -1)
  {
    sub_100020A70();
  }
}

+ (id)sharedInstance
{
  v3 = NSStringFromClass(self);
  v4 = qword_100583C18;
  objc_sync_enter(v4);
  v5 = [qword_100583C18 objectForKey:v3];
  objc_sync_exit(v4);

  if (!v5)
  {
    v6 = qword_100583C18;
    objc_sync_enter(v6);
    v5 = [qword_100583C18 objectForKey:v3];
    if (!v5)
    {
      v8.receiver = self;
      v8.super_class = &OBJC_METACLASS___MTBaseProcessor;
      v5 = [objc_msgSendSuper2(&v8 allocWithZone:{0), "init"}];
      [qword_100583C18 setObject:v5 forKey:v3];
    }

    objc_sync_exit(v6);
  }

  return v5;
}

- (MTBaseProcessor)init
{
  v6.receiver = self;
  v6.super_class = MTBaseProcessor;
  v2 = [(MTBaseProcessor *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    isStoppingLock = v2->_isStoppingLock;
    v2->_isStoppingLock = v3;

    v2->_isStopping = 0;
  }

  return v2;
}

- (BOOL)isRunning
{
  if (self->_workQueue)
  {
    return ![(MTBaseProcessor *)self isStopping];
  }

  else
  {
    return 0;
  }
}

- (BOOL)start
{
  isStopping = [(MTBaseProcessor *)self isStopping];
  if ((isStopping & 1) == 0)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [NSString stringWithFormat:@"%@SerialQueue", v5];

    v7 = dispatch_queue_create([v6 UTF8String], 0);
    workQueue = self->_workQueue;
    self->_workQueue = v7;

    objc_initWeak(&location, self);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004A5FC;
    v10[3] = &unk_1004DB990;
    v10[4] = self;
    objc_copyWeak(&v11, &location);
    [(MTBaseProcessor *)self enqueueWorkBlock:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return isStopping ^ 1;
}

- (BOOL)isStopping
{
  selfCopy = self;
  isStoppingLock = [(MTBaseProcessor *)self isStoppingLock];
  objc_sync_enter(isStoppingLock);
  LOBYTE(selfCopy) = selfCopy->_isStopping;
  objc_sync_exit(isStoppingLock);

  return selfCopy;
}

- (id)createQueryObserver
{
  v3 = [MTSafeUuidQueryObserver alloc];
  entityName = [(MTBaseProcessor *)self entityName];
  predicate = [(MTBaseProcessor *)self predicate];
  v6 = [(MTSafeUuidQueryObserver *)v3 initWithEntityName:entityName predicate:predicate];

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [(MTSafeUuidQueryObserver *)v6 setIdentifier:v8];

  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000D7FC8;
  v11[3] = &unk_1004DB9E0;
  objc_copyWeak(&v12, &location);
  v9 = [(MTSafeUuidQueryObserver *)v6 addResultsChangedHandler:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v6;
}

- (void)stop
{
  [(MTBaseProcessor *)self setIsStopping:1];
  queryObserver = [(MTBaseProcessor *)self queryObserver];
  [queryObserver stop];

  defaultsNotifier = [(MTBaseProcessor *)self defaultsNotifier];
  [defaultsNotifier stop];
}

- (void)setIsStopping:(BOOL)stopping
{
  obj = [(MTBaseProcessor *)self isStoppingLock];
  objc_sync_enter(obj);
  self->_isStopping = stopping;
  objc_sync_exit(obj);
}

- (void)updatePredicate
{
  v3 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ updated predicate", &v8, 0xCu);
  }

  queryObserver = [(MTBaseProcessor *)self queryObserver];
  predicate = [(MTBaseProcessor *)self predicate];
  [queryObserver setPredicate:predicate];
}

- (id)entityName
{
  v2 = [NSException exceptionWithName:NSGenericException reason:@"entityName must be implemented by subclasses" userInfo:0];
  objc_exception_throw(v2);
}

- (id)predicate
{
  v2 = [NSException exceptionWithName:NSGenericException reason:@"Predicate must be implemented by subclasses" userInfo:0];
  objc_exception_throw(v2);
}

- (void)resultsChangedWithDeletedIds:(id)ids insertIds:(id)insertIds updatedIds:(id)updatedIds
{
  idsCopy = ids;
  insertIdsCopy = insertIds;
  updatedIdsCopy = updatedIds;
  v10 = [NSException exceptionWithName:NSGenericException reason:@"resulstChanged must be implemented by subclasses" userInfo:0];
  objc_exception_throw(v10);
}

- (void)results:(id)results
{
  resultsCopy = results;
  queryObserver = [(MTBaseProcessor *)self queryObserver];
  [queryObserver results:resultsCopy];
}

- (void)enqueueWorkBlock:(id)block
{
  blockCopy = block;
  workQueue = [(MTBaseProcessor *)self workQueue];

  if (workQueue)
  {
    if (![(MTBaseProcessor *)self isStopping])
    {
      objc_initWeak(buf, self);
      workQueue2 = [(MTBaseProcessor *)self workQueue];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000D8508;
      v9[3] = &unk_1004DB888;
      objc_copyWeak(&v11, buf);
      v10 = blockCopy;
      dispatch_async(workQueue2, v9);

      objc_destroyWeak(&v11);
      objc_destroyWeak(buf);
      goto LABEL_10;
    }

    v6 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v7 = "Attempting to enqueue work after the processor has stopped.";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
    }
  }

  else
  {
    v6 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v7 = "Attempting to enqueue work before processor has been started.";
      goto LABEL_7;
    }
  }

LABEL_10:
}

@end