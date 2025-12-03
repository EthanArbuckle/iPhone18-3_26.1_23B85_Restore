@interface TUIVisibilityTracker
- (TUIVisibilityTracker)initWithThreshold:(double)threshold block:(id)block queue:(id)queue;
- (void)addVisibilityObserver:(id)observer;
- (void)q_notifyObserversWithRootNode:(id)node time:(double)time;
- (void)removeVisibilityObserver:(id)observer;
@end

@implementation TUIVisibilityTracker

- (TUIVisibilityTracker)initWithThreshold:(double)threshold block:(id)block queue:(id)queue
{
  blockCopy = block;
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = TUIVisibilityTracker;
  v10 = [(TUIVisibilityTracker *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_threshold = threshold;
    v12 = [blockCopy copy];
    block = v11->_block;
    v11->_block = v12;

    objc_storeStrong(&v11->_queue, queue);
    v14 = [NSHashTable hashTableWithOptions:517];
    q_observers = v11->_q_observers;
    v11->_q_observers = v14;
  }

  return v11;
}

- (void)addVisibilityObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, observerCopy);
  v5 = sub_19F7C();
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_19FC4;
  v7[3] = &unk_25E088;
  objc_copyWeak(v8, &location);
  v7[4] = self;
  v8[1] = *&v5;
  dispatch_async(queue, v7);
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

- (void)removeVisibilityObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, observerCopy);
  v5 = sub_19F7C();
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1A17C;
  v7[3] = &unk_25E088;
  objc_copyWeak(v8, &location);
  v7[4] = self;
  v8[1] = *&v5;
  dispatch_async(queue, v7);
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

- (void)q_notifyObserversWithRootNode:(id)node time:(double)time
{
  nodeCopy = node;
  v7 = [[TUIVisibilityChangeRecord alloc] initWithLastTimestamp:nodeCopy timestamp:self->_q_lastTimestamp rootNode:time];
  self->_q_lastTimestamp = time;
  rootNode = [(TUIVisibilityChangeRecord *)v7 rootNode];
  q_lastVisible = self->_q_lastVisible;
  self->_q_lastVisible = rootNode;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_q_observers;
  v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14) visibleContentsChanged:{v7, v15}];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [(NSHashTable *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

@end