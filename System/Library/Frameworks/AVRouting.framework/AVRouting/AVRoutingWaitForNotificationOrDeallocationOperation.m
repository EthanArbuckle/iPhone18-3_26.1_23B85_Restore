@interface AVRoutingWaitForNotificationOrDeallocationOperation
- (AVRoutingWaitForNotificationOrDeallocationOperation)initWithObject:(id)a3 notificationNames:(id)a4;
- (void)_balanceMonitoringIsFinishedSemaphore;
- (void)_registerForObjectNotifications;
- (void)_signalMonitoringIsFinishedIfNeeded;
- (void)_unregisterForObjectNotifications;
- (void)_waitUntilFinishedIfNeeded;
- (void)dealloc;
@end

@implementation AVRoutingWaitForNotificationOrDeallocationOperation

- (AVRoutingWaitForNotificationOrDeallocationOperation)initWithObject:(id)a3 notificationNames:(id)a4
{
  v10.receiver = self;
  v10.super_class = AVRoutingWaitForNotificationOrDeallocationOperation;
  v6 = [(AVRoutingWaitForNotificationOrDeallocationOperation *)&v10 init];
  if (v6)
  {
    if (!a3)
    {
      goto LABEL_10;
    }

    v6->_weakReferenceToMonitoredObject = [[AVRoutingWeakReference alloc] initWithReferencedObject:a3];
    v7 = [[AVRoutingWeakReference alloc] initWithReferencedObject:v6];
    v6->_weakReferenceToSelf = v7;
    if (v7)
    {
      CFRetain(v7);
    }

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6->_operationStateSerializationQueue = dispatch_queue_create("com.apple.avfoundation.waitForNotificationOrDeallocationOperation", v8);
    v6->_monitoringIsFinishedSemaphore = dispatch_semaphore_create(0);
    v6->_notificationNames = [a4 copy];
    if (v6->_weakReferenceToSelf && v6->_weakReferenceToMonitoredObject && v6->_operationStateSerializationQueue && v6->_monitoringIsFinishedSemaphore)
    {
      [AVRoutingDepartureAnnouncingObjectMonitor attachDepartureAnnouncingObjectMonitorToObject:a3 monitoringObject:v6];
      [(AVRoutingWaitForNotificationOrDeallocationOperation *)v6 _registerForObjectNotifications];
    }

    else
    {
LABEL_10:

      return 0;
    }
  }

  return v6;
}

- (void)_registerForObjectNotifications
{
  v15 = *MEMORY[0x1E69E9840];
  if (!self->_registeredForObjectNotifications)
  {
    v3 = [AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    notificationNames = self->_notificationNames;
    v5 = [(NSArray *)notificationNames countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(notificationNames);
          }

          [v3 addListenerWithWeakReference:self->_weakReferenceToSelf callback:AVRoutingWaitForNotificationOrDeallocationOperationNotificationHandler name:*(*(&v10 + 1) + 8 * i) object:0 flags:0];
        }

        v6 = [(NSArray *)notificationNames countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    self->_registeredForObjectNotifications = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_unregisterForObjectNotifications
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_registeredForObjectNotifications)
  {
    v3 = [AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    notificationNames = self->_notificationNames;
    v5 = [(NSArray *)notificationNames countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(notificationNames);
          }

          [v3 removeListenerWithWeakReference:self->_weakReferenceToSelf callback:AVRoutingWaitForNotificationOrDeallocationOperationNotificationHandler name:*(*(&v10 + 1) + 8 * i) object:0];
        }

        v6 = [(NSArray *)notificationNames countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    self->_registeredForObjectNotifications = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(AVRoutingWaitForNotificationOrDeallocationOperation *)self _balanceMonitoringIsFinishedSemaphore];
  [(AVRoutingWaitForNotificationOrDeallocationOperation *)self _unregisterForObjectNotifications];
  weakReferenceToSelf = self->_weakReferenceToSelf;
  if (weakReferenceToSelf)
  {
    CFRelease(weakReferenceToSelf);
  }

  operationStateSerializationQueue = self->_operationStateSerializationQueue;
  if (operationStateSerializationQueue)
  {
    dispatch_release(operationStateSerializationQueue);
  }

  monitoringIsFinishedSemaphore = self->_monitoringIsFinishedSemaphore;
  if (monitoringIsFinishedSemaphore)
  {
    dispatch_release(monitoringIsFinishedSemaphore);
  }

  v6.receiver = self;
  v6.super_class = AVRoutingWaitForNotificationOrDeallocationOperation;
  [(AVRoutingWaitForNotificationOrDeallocationOperation *)&v6 dealloc];
}

- (void)_signalMonitoringIsFinishedIfNeeded
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  operationStateSerializationQueue = self->_operationStateSerializationQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __90__AVRoutingWaitForNotificationOrDeallocationOperation__signalMonitoringIsFinishedIfNeeded__block_invoke;
  v4[3] = &unk_1E794ED00;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(operationStateSerializationQueue, v4);
  if (*(v6 + 24) == 1)
  {
    dispatch_semaphore_signal(self->_monitoringIsFinishedSemaphore);
  }

  _Block_object_dispose(&v5, 8);
}

uint64_t __90__AVRoutingWaitForNotificationOrDeallocationOperation__signalMonitoringIsFinishedIfNeeded__block_invoke(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 290) ^ 1;
  *(*(result + 32) + 290) = 1;
  return result;
}

- (void)_waitUntilFinishedIfNeeded
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  operationStateSerializationQueue = self->_operationStateSerializationQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __81__AVRoutingWaitForNotificationOrDeallocationOperation__waitUntilFinishedIfNeeded__block_invoke;
  v4[3] = &unk_1E794ED00;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(operationStateSerializationQueue, v4);
  if (*(v6 + 24) == 1)
  {
    dispatch_semaphore_wait(self->_monitoringIsFinishedSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  }

  _Block_object_dispose(&v5, 8);
}

uint64_t __81__AVRoutingWaitForNotificationOrDeallocationOperation__waitUntilFinishedIfNeeded__block_invoke(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 289) ^ 1;
  *(*(result + 32) + 289) = 1;
  return result;
}

- (void)_balanceMonitoringIsFinishedSemaphore
{
  if (self->_operationStateSerializationQueue && self->_monitoringIsFinishedSemaphore)
  {
    [(AVRoutingWaitForNotificationOrDeallocationOperation *)self _signalMonitoringIsFinishedIfNeeded];

    [(AVRoutingWaitForNotificationOrDeallocationOperation *)self _waitUntilFinishedIfNeeded];
  }
}

@end