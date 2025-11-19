@interface _BackgroundViewRenderManager
+ (id)sharedManager;
- (_BackgroundViewRenderManager)init;
- (void)addViewToQueue:(id)a3;
- (void)cancelAllRendering;
- (void)removeViewFromQueue:(id)a3;
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

- (void)addViewToQueue:(id)a3
{
  v4 = a3;
  v5 = self->_viewsInQueue;
  objc_sync_enter(v5);
  if ([(NSMutableSet *)self->_viewsInQueue containsObject:v4])
  {
    [(_BackgroundViewRenderManager *)self removeViewFromQueue:v4];
  }

  [(NSMutableSet *)self->_viewsInQueue addObject:v4];
  v6 = [_BackgroundViewRenderOperation alloc];
  viewsInQueue = self->_viewsInQueue;
  [v4 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v4 traitCollection];
  v17 = [(_BackgroundViewRenderOperation *)v6 initWithView:v4 views:viewsInQueue bounds:v16 traitCollection:v9, v11, v13, v15];

  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_10005F79C;
  v22 = &unk_10020EC68;
  v23 = self;
  v18 = v4;
  v24 = v18;
  [(_BackgroundViewRenderOperation *)v17 setCompletionBlock:&v19];
  [(NSOperationQueue *)self->_queue addOperation:v17, v19, v20, v21, v22, v23];

  objc_sync_exit(v5);
}

- (void)removeViewFromQueue:(id)a3
{
  v4 = a3;
  v5 = self->_viewsInQueue;
  objc_sync_enter(v5);
  if ([(NSMutableSet *)self->_viewsInQueue containsObject:v4])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(NSOperationQueue *)self->_queue operations];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v10 view];
          v12 = v11 == v4;

          if (v12)
          {
            v13 = v10;

            if (v13)
            {
              [v13 cancel];
              [(NSMutableSet *)self->_viewsInQueue removeObject:v4];
            }

            goto LABEL_13;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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