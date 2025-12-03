@interface CollectionHandlerRebuildQueue
+ (id)sharedInstance;
- (CollectionHandlerRebuildQueue)initWithMaxConcurrentTasks:(int64_t)tasks;
- (void)async:(id)async;
@end

@implementation CollectionHandlerRebuildQueue

- (void)async:(id)async
{
  asyncCopy = async;
  dispatch_semaphore_wait(self->_semaphore, 0xFFFFFFFFFFFFFFFFLL);
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100CAA708;
  v7[3] = &unk_101661090;
  v7[4] = self;
  v8 = asyncCopy;
  v6 = asyncCopy;
  dispatch_async(queue, v7);
}

- (CollectionHandlerRebuildQueue)initWithMaxConcurrentTasks:(int64_t)tasks
{
  v10.receiver = self;
  v10.super_class = CollectionHandlerRebuildQueue;
  v4 = [(CollectionHandlerRebuildQueue *)&v10 init];
  if (v4)
  {
    v5 = dispatch_queue_create("com.apple.Maps.CollectionHandler.ContentRebuildQueue", &_dispatch_queue_attr_concurrent);
    queue = v4->_queue;
    v4->_queue = v5;

    v7 = dispatch_semaphore_create(tasks);
    semaphore = v4->_semaphore;
    v4->_semaphore = v7;
  }

  return v4;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100CAA8A0;
  block[3] = &unk_1016611D0;
  block[4] = self;
  if (qword_10195EE90 != -1)
  {
    dispatch_once(&qword_10195EE90, block);
  }

  v2 = qword_10195EE88;

  return v2;
}

@end