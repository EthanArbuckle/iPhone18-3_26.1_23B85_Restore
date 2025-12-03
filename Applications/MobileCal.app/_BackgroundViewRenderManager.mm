@interface _BackgroundViewRenderManager
+ (id)sharedManager;
- (_BackgroundViewRenderManager)init;
- (void)addViewToQueue:(id)queue;
- (void)cancelAllRendering;
- (void)removeViewFromQueue:(id)queue;
@end

@implementation _BackgroundViewRenderManager

+ (id)sharedManager
{
  if (qword_100251940 != -1)
  {
    sub_10016FE18();
  }

  v3 = qword_100251938;

  return v3;
}

- (_BackgroundViewRenderManager)init
{
  v8.receiver = self;
  v8.super_class = _BackgroundViewRenderManager;
  v2 = [(_BackgroundViewRenderManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    queue = v2->_queue;
    v2->_queue = v3;

    [(NSOperationQueue *)v2->_queue setMaxConcurrentOperationCount:1];
    v5 = objc_alloc_init(NSMutableSet);
    viewsInQueue = v2->_viewsInQueue;
    v2->_viewsInQueue = v5;
  }

  return v2;
}

- (void)addViewToQueue:(id)queue
{
  queueCopy = queue;
  v5 = self->_viewsInQueue;
  objc_sync_enter(v5);
  if ([(NSMutableSet *)self->_viewsInQueue containsObject:queueCopy])
  {
    [(_BackgroundViewRenderManager *)self removeViewFromQueue:queueCopy];
  }

  [(NSMutableSet *)self->_viewsInQueue addObject:queueCopy];
  v6 = [_BackgroundViewRenderOperation alloc];
  viewsInQueue = self->_viewsInQueue;
  [queueCopy bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  traitCollection = [queueCopy traitCollection];
  v17 = [(_BackgroundViewRenderOperation *)v6 initWithView:queueCopy views:viewsInQueue bounds:traitCollection traitCollection:v9, v11, v13, v15];

  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_10005F79C;
  v22 = &unk_10020EC68;
  selfCopy = self;
  v18 = queueCopy;
  v24 = v18;
  [(_BackgroundViewRenderOperation *)v17 setCompletionBlock:&v19];
  [(NSOperationQueue *)self->_queue addOperation:v17, v19, v20, v21, v22, selfCopy];

  objc_sync_exit(v5);
}

- (void)removeViewFromQueue:(id)queue
{
  queueCopy = queue;
  v5 = self->_viewsInQueue;
  objc_sync_enter(v5);
  if ([(NSMutableSet *)self->_viewsInQueue containsObject:queueCopy])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    operations = [(NSOperationQueue *)self->_queue operations];
    v7 = [operations countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(operations);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          view = [v10 view];
          v12 = view == queueCopy;

          if (v12)
          {
            v13 = v10;

            if (v13)
            {
              [v13 cancel];
              [(NSMutableSet *)self->_viewsInQueue removeObject:queueCopy];
            }

            goto LABEL_13;
          }
        }

        v7 = [operations countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_13:
  }

  objc_sync_exit(v5);
}

- (void)cancelAllRendering
{
  [(NSOperationQueue *)self->_queue cancelAllOperations];
  obj = self->_viewsInQueue;
  objc_sync_enter(obj);
  [(NSMutableSet *)self->_viewsInQueue removeAllObjects];
  objc_sync_exit(obj);
}

@end