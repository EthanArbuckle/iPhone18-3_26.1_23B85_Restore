@interface AVCaptureDataOutputDelegateCallbackHelper
- (AVCaptureDataOutputDelegateCallbackHelper)initWithQueueName:(id)name canSetClientDelegateCallbackQueueWhenRunningInsideMediaserverd:(BOOL)mediaserverd;
- (BOOL)_validateCallbackQueue:(id)queue exceptionReason:(id *)reason;
- (BOOL)setClientDelegate:(id)delegate clientCallbackQueue:(id)queue exceptionReason:(id *)reason;
- (BOOL)setDelegateOverride:(id)override delegateOverrideCallbackQueue:(id)queue exceptionReason:(id *)reason;
- (OS_dispatch_queue)activeCallbackQueue;
- (OS_dispatch_queue)clientCallbackQueue;
- (OS_dispatch_queue)delegateOverrideCallbackQueue;
- (id)_activeCallbackQueue;
- (id)_activeDelegate;
- (id)activeDelegate;
- (id)clientDelegate;
- (id)delegateOverride;
- (void)dealloc;
- (void)releaseRemoteQueueReceiver;
- (void)updateLocalQueue:(localQueueOpaque *)queue handler:(id)handler;
- (void)updateRemoteQueueReceiver:(remoteQueueReceiverOpaque *)receiver handler:(id)handler;
@end

@implementation AVCaptureDataOutputDelegateCallbackHelper

- (AVCaptureDataOutputDelegateCallbackHelper)initWithQueueName:(id)name canSetClientDelegateCallbackQueueWhenRunningInsideMediaserverd:(BOOL)mediaserverd
{
  v8.receiver = self;
  v8.super_class = AVCaptureDataOutputDelegateCallbackHelper;
  v6 = [(AVCaptureDataOutputDelegateCallbackHelper *)&v8 init];
  if (v6)
  {
    v6->_defaultCallbackQueueName = name;
    v6->_canSetClientDelegateCallbackQueueWhenRunningInsideMediaserverd = mediaserverd;
    v6->_stateMutex = FigSimpleMutexCreate();
    v6->_delegateStorage = objc_alloc_init(MEMORY[0x1E69881A0]);
  }

  return v6;
}

- (void)dealloc
{
  if (self->_remoteQueueReceiver)
  {
    FigRemoteQueueReceiverUnsetHandler();
    CFRelease(self->_remoteQueueReceiver);
  }

  if (self->_localQueue)
  {
    FigLocalQueueUnsetReceiverHandler();
    CFRelease(self->_localQueue);
  }

  FigSimpleMutexDestroy();
  v3.receiver = self;
  v3.super_class = AVCaptureDataOutputDelegateCallbackHelper;
  [(AVCaptureDataOutputDelegateCallbackHelper *)&v3 dealloc];
}

- (id)activeDelegate
{
  FigSimpleMutexLock();
  _activeDelegate = [(AVCaptureDataOutputDelegateCallbackHelper *)self _activeDelegate];
  FigSimpleMutexUnlock();
  return _activeDelegate;
}

- (OS_dispatch_queue)activeCallbackQueue
{
  FigSimpleMutexLock();
  _activeCallbackQueue = [(AVCaptureDataOutputDelegateCallbackHelper *)self _activeCallbackQueue];
  FigSimpleMutexUnlock();
  return _activeCallbackQueue;
}

- (BOOL)setClientDelegate:(id)delegate clientCallbackQueue:(id)queue exceptionReason:(id *)reason
{
  if (delegate)
  {
    queueCopy = queue;
    v8 = [(AVCaptureDataOutputDelegateCallbackHelper *)self _validateCallbackQueue:queue exceptionReason:reason];
    if (!v8)
    {
      return v8;
    }
  }

  else
  {
    queueCopy = 0;
  }

  FigSimpleMutexLock();
  [(AVWeakReferencingDelegateStorage *)self->_delegateStorage setDelegate:delegate queue:queueCopy];
  if (!self->_delegateOverrideStorage && self->_remoteQueueReceiver)
  {
    [(AVCaptureDataOutputDelegateCallbackHelper *)self _activeCallbackQueue];
    FigRemoteQueueReceiverSetHandler();
  }

  FigSimpleMutexUnlock();
  LOBYTE(v8) = 1;
  return v8;
}

- (id)clientDelegate
{
  FigSimpleMutexLock();
  delegate = [(AVWeakReferencingDelegateStorage *)self->_delegateStorage delegate];
  FigSimpleMutexUnlock();
  return delegate;
}

- (OS_dispatch_queue)clientCallbackQueue
{
  FigSimpleMutexLock();
  delegateQueue = [(AVWeakReferencingDelegateStorage *)self->_delegateStorage delegateQueue];
  FigSimpleMutexUnlock();
  return delegateQueue;
}

- (BOOL)setDelegateOverride:(id)override delegateOverrideCallbackQueue:(id)queue exceptionReason:(id *)reason
{
  if (override)
  {
    v8 = [(AVCaptureDataOutputDelegateCallbackHelper *)self _validateCallbackQueue:queue exceptionReason:reason];
    if (!v8)
    {
      return v8;
    }

    FigSimpleMutexLock();
    delegateOverrideStorage = self->_delegateOverrideStorage;
    if (!delegateOverrideStorage)
    {
      delegateOverrideStorage = objc_alloc_init(MEMORY[0x1E69881A0]);
      self->_delegateOverrideStorage = delegateOverrideStorage;
    }

    [(AVWeakReferencingDelegateStorage *)delegateOverrideStorage setDelegate:override queue:queue];
  }

  else
  {
    FigSimpleMutexLock();

    self->_delegateOverrideStorage = 0;
  }

  if (self->_remoteQueueReceiver)
  {
    [(AVCaptureDataOutputDelegateCallbackHelper *)self _activeCallbackQueue];
    FigRemoteQueueReceiverSetHandler();
  }

  FigSimpleMutexUnlock();
  LOBYTE(v8) = 1;
  return v8;
}

- (id)delegateOverride
{
  FigSimpleMutexLock();
  delegate = [(AVWeakReferencingDelegateStorage *)self->_delegateOverrideStorage delegate];
  FigSimpleMutexUnlock();
  return delegate;
}

- (OS_dispatch_queue)delegateOverrideCallbackQueue
{
  FigSimpleMutexLock();
  delegateQueue = [(AVWeakReferencingDelegateStorage *)self->_delegateOverrideStorage delegateQueue];
  FigSimpleMutexUnlock();

  return delegateQueue;
}

- (void)updateRemoteQueueReceiver:(remoteQueueReceiverOpaque *)receiver handler:(id)handler
{
  FigSimpleMutexLock();
  if (self->_localQueue)
  {
    FigSimpleMutexUnlock();
    if (receiver)
    {
      v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
      objc_exception_throw(v9);
    }
  }

  else
  {
    if (self->_remoteQueueReceiver)
    {
      FigRemoteQueueReceiverUnsetHandler();
      remoteQueueReceiver = self->_remoteQueueReceiver;
    }

    else
    {
      remoteQueueReceiver = 0;
    }

    self->_remoteQueueReceiver = receiver;
    if (receiver)
    {
      CFRetain(receiver);
    }

    if (remoteQueueReceiver)
    {
      CFRelease(remoteQueueReceiver);
    }

    remoteQueueHandler = self->_remoteQueueHandler;
    self->_remoteQueueHandler = handler;

    if (self->_remoteQueueReceiver && self->_remoteQueueHandler)
    {
      [(AVCaptureDataOutputDelegateCallbackHelper *)self _activeCallbackQueue];
      FigRemoteQueueReceiverSetHandler();
    }

    FigSimpleMutexUnlock();
  }
}

- (void)releaseRemoteQueueReceiver
{
  FigSimpleMutexLock();
  if (self->_remoteQueueReceiver)
  {
    FigRemoteQueueReceiverUnsetHandler();
    remoteQueueReceiver = self->_remoteQueueReceiver;
    if (remoteQueueReceiver)
    {
      CFRelease(remoteQueueReceiver);
      self->_remoteQueueReceiver = 0;
    }
  }

  FigSimpleMutexUnlock();
}

- (void)updateLocalQueue:(localQueueOpaque *)queue handler:(id)handler
{
  FigSimpleMutexLock();
  if (self->_remoteQueueReceiver)
  {
    FigSimpleMutexUnlock();
    if (queue)
    {
      v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
      objc_exception_throw(v8);
    }
  }

  else
  {
    if (self->_localQueue)
    {
      FigLocalQueueUnsetReceiverHandler();
      localQueue = self->_localQueue;
    }

    else
    {
      localQueue = 0;
    }

    self->_localQueue = queue;
    if (queue)
    {
      CFRetain(queue);
    }

    if (localQueue)
    {
      CFRelease(localQueue);
    }

    if (handler && self->_localQueue)
    {
      [(AVCaptureDataOutputDelegateCallbackHelper *)self _activeCallbackQueue];
      FigLocalQueueSetReceiverHandler();
    }

    FigSimpleMutexUnlock();
  }
}

- (id)_activeDelegate
{
  delegate = [(AVWeakReferencingDelegateStorage *)self->_delegateOverrideStorage delegate];
  v4 = 40;
  if (!delegate)
  {
    v4 = 32;
  }

  v5 = *(&self->super.isa + v4);

  return [v5 delegate];
}

- (id)_activeCallbackQueue
{
  if (AVCaptureIsRunningInMediaserverd() && !self->_canSetClientDelegateCallbackQueueWhenRunningInsideMediaserverd)
  {
    return 0;
  }

  delegateOverrideStorage = self->_delegateOverrideStorage;
  if (!delegateOverrideStorage)
  {
    delegateOverrideStorage = self->_delegateStorage;
  }

  result = [(AVWeakReferencingDelegateStorage *)delegateOverrideStorage delegateQueue];
  if (!result)
  {
    result = self->_defaultCallbackQueue;
    if (!result)
    {
      defaultCallbackQueueName = self->_defaultCallbackQueueName;
      if (defaultCallbackQueueName)
      {
        uTF8String = [(NSString *)defaultCallbackQueueName UTF8String];
      }

      else
      {
        uTF8String = "com.apple.avfoundation.dataoutput.delegate_callback_queue";
      }

      result = dispatch_queue_create(uTF8String, 0);
      self->_defaultCallbackQueue = result;
    }
  }

  return result;
}

- (BOOL)_validateCallbackQueue:(id)queue exceptionReason:(id *)reason
{
  if (AVCaptureIsRunningInMediaserverd() && !self->_canSetClientDelegateCallbackQueueWhenRunningInsideMediaserverd)
  {
    if (!queue)
    {
      return 1;
    }

    if (reason)
    {
      v8 = @"A callback queue can not be used in conjunction with a local queue";
      goto LABEL_10;
    }
  }

  else
  {
    if (queue)
    {
      return 1;
    }

    if (reason)
    {
      v8 = @"NULL queue passed";
LABEL_10:
      result = 0;
      *reason = v8;
      return result;
    }
  }

  return 0;
}

@end