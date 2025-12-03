@interface BSUIFeedDataRequest
- (BSUIFeedDataRequest)init;
- (NSArray)operations;
- (void)addOperation:(id)operation;
- (void)cancelRequest;
- (void)setPriority:(float)priority;
@end

@implementation BSUIFeedDataRequest

- (BSUIFeedDataRequest)init
{
  v9.receiver = self;
  v9.super_class = BSUIFeedDataRequest;
  v2 = [(BSUIFeedDataRequest *)&v9 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    operationsArray = v2->_operationsArray;
    v2->_operationsArray = v3;

    LODWORD(v2->_priority) = TUIPriorityDefault;
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("BSUIFeedDataRequest.accessQueue", v5);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v6;
  }

  return v2;
}

- (void)addOperation:(id)operation
{
  operationCopy = operation;
  if (operationCopy)
  {
    [(BSUIFeedDataRequest *)self priority];
    [operationCopy setPriority:?];
    accessQueue = self->_accessQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_35188;
    v6[3] = &unk_386D98;
    v6[4] = self;
    v7 = operationCopy;
    dispatch_barrier_sync(accessQueue, v6);
  }
}

- (NSArray)operations
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_352B0;
  v11 = sub_352C0;
  v12 = 0;
  accessQueue = [(BSUIFeedDataRequest *)self accessQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_352C8;
  v6[3] = &unk_3870C8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(accessQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)cancelRequest
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  operations = [(BSUIFeedDataRequest *)self operations];
  v3 = [operations countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(operations);
        }

        [*(*(&v7 + 1) + 8 * v6) cancel];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [operations countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setPriority:(float)priority
{
  self->_priority = priority;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  operations = [(BSUIFeedDataRequest *)self operations];
  v5 = [operations countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(operations);
        }

        *&v6 = priority;
        [*(*(&v10 + 1) + 8 * v9) setPriority:v6];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [operations countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end