@interface Synchronize
+ (OS_dispatch_queue)queue;
+ (void)async:(id)async;
+ (void)sync:(id)sync;
- (Synchronize)initWithQueueName:(id)name;
- (void)async:(id)async;
- (void)sync:(id)sync;
@end

@implementation Synchronize

- (Synchronize)initWithQueueName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = Synchronize;
  v5 = [(Synchronize *)&v9 init];
  if (v5)
  {
    v6 = dispatch_queue_create([nameCopy UTF8String], 0);
    queue = v5->_queue;
    v5->_queue = v6;
  }

  return v5;
}

+ (OS_dispatch_queue)queue
{
  if (qword_10002BFE0 != -1)
  {
    sub_100016A5C();
  }

  v3 = qword_10002BFE8;

  return v3;
}

+ (void)sync:(id)sync
{
  syncCopy = sync;
  v4 = +[Synchronize queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B58C;
  block[3] = &unk_1000248A0;
  v7 = syncCopy;
  v5 = syncCopy;
  dispatch_sync(v4, block);
}

- (void)sync:(id)sync
{
  syncCopy = sync;
  queue = [(Synchronize *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B648;
  block[3] = &unk_1000248A0;
  v8 = syncCopy;
  v6 = syncCopy;
  dispatch_sync(queue, block);
}

+ (void)async:(id)async
{
  asyncCopy = async;
  v4 = +[Synchronize queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B704;
  block[3] = &unk_1000248A0;
  v7 = asyncCopy;
  v5 = asyncCopy;
  dispatch_async(v4, block);
}

- (void)async:(id)async
{
  asyncCopy = async;
  queue = [(Synchronize *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B7C0;
  block[3] = &unk_1000248A0;
  v8 = asyncCopy;
  v6 = asyncCopy;
  dispatch_sync(queue, block);
}

@end