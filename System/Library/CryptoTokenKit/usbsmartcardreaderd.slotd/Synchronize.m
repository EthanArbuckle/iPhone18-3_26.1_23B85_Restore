@interface Synchronize
+ (OS_dispatch_queue)queue;
+ (void)async:(id)a3;
+ (void)sync:(id)a3;
- (Synchronize)initWithQueueName:(id)a3;
- (void)async:(id)a3;
- (void)sync:(id)a3;
@end

@implementation Synchronize

- (Synchronize)initWithQueueName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = Synchronize;
  v5 = [(Synchronize *)&v9 init];
  if (v5)
  {
    v6 = dispatch_queue_create([v4 UTF8String], 0);
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

+ (void)sync:(id)a3
{
  v3 = a3;
  v4 = +[Synchronize queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B58C;
  block[3] = &unk_1000248A0;
  v7 = v3;
  v5 = v3;
  dispatch_sync(v4, block);
}

- (void)sync:(id)a3
{
  v4 = a3;
  v5 = [(Synchronize *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B648;
  block[3] = &unk_1000248A0;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, block);
}

+ (void)async:(id)a3
{
  v3 = a3;
  v4 = +[Synchronize queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B704;
  block[3] = &unk_1000248A0;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

- (void)async:(id)a3
{
  v4 = a3;
  v5 = [(Synchronize *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B7C0;
  block[3] = &unk_1000248A0;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, block);
}

@end