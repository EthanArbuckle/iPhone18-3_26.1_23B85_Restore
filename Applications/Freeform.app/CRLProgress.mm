@interface CRLProgress
- (BOOL)protected_hasProgressObservers;
- (double)protected_minProgressObserverValueInterval;
- (id)addProgressObserverWithValueInterval:(double)interval queue:(id)queue handler:(id)handler;
- (id)initForSubclass;
- (void)protected_progressDidChange;
- (void)removeProgressObserver:(id)observer;
@end

@implementation CRLProgress

- (id)initForSubclass
{
  v12.receiver = self;
  v12.super_class = CRLProgress;
  v2 = [(CRLProgress *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableSet);
    progressObservers = v2->_progressObservers;
    v2->_progressObservers = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.freeform.CRLProgressObservers", v5);
    progressObserversQueue = v2->_progressObserversQueue;
    v2->_progressObserversQueue = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.freeform.CRLProgressObserverValue", v8);
    progressObserversValueQueue = v2->_progressObserversValueQueue;
    v2->_progressObserversValueQueue = v9;
  }

  return v2;
}

- (id)addProgressObserverWithValueInterval:(double)interval queue:(id)queue handler:(id)handler
{
  v5 = 0;
  if (queue && handler)
  {
    handlerCopy = handler;
    queueCopy = queue;
    v11 = [[CRLProgressObserver alloc] initWithValueInterval:queueCopy queue:handlerCopy handler:interval];

    progressObserversQueue = self->_progressObserversQueue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001CF70C;
    v14[3] = &unk_10183AE28;
    v14[4] = self;
    v5 = v11;
    v15 = v5;
    dispatch_async(progressObserversQueue, v14);
  }

  return v5;
}

- (void)removeProgressObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    progressObserversQueue = self->_progressObserversQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001CF7C0;
    v7[3] = &unk_10183AE28;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(progressObserversQueue, v7);
  }
}

- (void)protected_progressDidChange
{
  progressObserversValueQueue = self->_progressObserversValueQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CF840;
  block[3] = &unk_10183AB38;
  block[4] = self;
  dispatch_async(progressObserversValueQueue, block);
}

- (BOOL)protected_hasProgressObservers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  progressObserversQueue = self->_progressObserversQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001CFAC4;
  v5[3] = &unk_101839FF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(progressObserversQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)protected_minProgressObserverValueInterval
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0x7FF0000000000000;
  progressObserversQueue = self->_progressObserversQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001CFBB4;
  v5[3] = &unk_10183A0A8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(progressObserversQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end