@interface AVCaptureDataOutputDelegateCallbackHelper
- (AVCaptureDataOutputDelegateCallbackHelper)initWithQueueName:(id)a3 canSetClientDelegateCallbackQueueWhenRunningInsideMediaserverd:(BOOL)a4;
- (BOOL)_validateCallbackQueue:(id)a3 exceptionReason:(id *)a4;
- (BOOL)setClientDelegate:(id)a3 clientCallbackQueue:(id)a4 exceptionReason:(id *)a5;
- (BOOL)setDelegateOverride:(id)a3 delegateOverrideCallbackQueue:(id)a4 exceptionReason:(id *)a5;
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
- (void)updateLocalQueue:(localQueueOpaque *)a3 handler:(id)a4;
- (void)updateRemoteQueueReceiver:(remoteQueueReceiverOpaque *)a3 handler:(id)a4;
@end

@implementation AVCaptureDataOutputDelegateCallbackHelper

- (AVCaptureDataOutputDelegateCallbackHelper)initWithQueueName:(id)a3 canSetClientDelegateCallbackQueueWhenRunningInsideMediaserverd:(BOOL)a4
{
  v8.receiver = self;
  v8.super_class = AVCaptureDataOutputDelegateCallbackHelper;
  v6 = [(AVCaptureDataOutputDelegateCallbackHelper *)&v8 init];
  if (v6)
  {
    v6->_defaultCallbackQueueName = a3;
    v6->_canSetClientDelegateCallbackQueueWhenRunningInsideMediaserverd = a4;
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
  v3 = [(AVCaptureDataOutputDelegateCallbackHelper *)self _activeDelegate];
  FigSimpleMutexUnlock();
  return v3;
}

- (OS_dispatch_queue)activeCallbackQueue
{
  FigSimpleMutexLock();
  v3 = [(AVCaptureDataOutputDelegateCallbackHelper *)self _activeCallbackQueue];
  FigSimpleMutexUnlock();
  return v3;
}

- (BOOL)setClientDelegate:(id)a3 clientCallbackQueue:(id)a4 exceptionReason:(id *)a5
{
  if (a3)
  {
    v7 = a4;
    v8 = [(AVCaptureDataOutputDelegateCallbackHelper *)self _validateCallbackQueue:a4 exceptionReason:a5];
    if (!v8)
    {
      return v8;
    }
  }

  else
  {
    v7 = 0;
  }

  FigSimpleMutexLock();
  [(AVWeakReferencingDelegateStorage *)self->_delegateStorage setDelegate:a3 queue:v7];
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
  v3 = [(AVWeakReferencingDelegateStorage *)self->_delegateStorage delegate];
  FigSimpleMutexUnlock();
  return v3;
}

- (OS_dispatch_queue)clientCallbackQueue
{
  FigSimpleMutexLock();
  v3 = [(AVWeakReferencingDelegateStorage *)self->_delegateStorage delegateQueue];
  FigSimpleMutexUnlock();
  return v3;
}

- (BOOL)setDelegateOverride:(id)a3 delegateOverrideCallbackQueue:(id)a4 exceptionReason:(id *)a5
{
  if (a3)
  {
    v8 = [(AVCaptureDataOutputDelegateCallbackHelper *)self _validateCallbackQueue:a4 exceptionReason:a5];
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

    [(AVWeakReferencingDelegateStorage *)delegateOverrideStorage setDelegate:a3 queue:a4];
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
  v3 = [(AVWeakReferencingDelegateStorage *)self->_delegateOverrideStorage delegate];
  FigSimpleMutexUnlock();
  return v3;
}

- (OS_dispatch_queue)delegateOverrideCallbackQueue
{
  FigSimpleMutexLock();
  v3 = [(AVWeakReferencingDelegateStorage *)self->_delegateOverrideStorage delegateQueue];
  FigSimpleMutexUnlock();

  return v3;
}

- (void)updateRemoteQueueReceiver:(remoteQueueReceiverOpaque *)a3 handler:(id)a4
{
  FigSimpleMutexLock();
  if (self->_localQueue)
  {
    FigSimpleMutexUnlock();
    if (a3)
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

    self->_remoteQueueReceiver = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (remoteQueueReceiver)
    {
      CFRelease(remoteQueueReceiver);
    }

    remoteQueueHandler = self->_remoteQueueHandler;
    self->_remoteQueueHandler = a4;

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

- (void)updateLocalQueue:(localQueueOpaque *)a3 handler:(id)a4
{
  FigSimpleMutexLock();
  if (self->_remoteQueueReceiver)
  {
    FigSimpleMutexUnlock();
    if (a3)
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

    self->_localQueue = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (localQueue)
    {
      CFRelease(localQueue);
    }

    if (a4 && self->_localQueue)
    {
      [(AVCaptureDataOutputDelegateCallbackHelper *)self _activeCallbackQueue];
      FigLocalQueueSetReceiverHandler();
    }

    FigSimpleMutexUnlock();
  }
}

- (id)_activeDelegate
{
  v3 = [(AVWeakReferencingDelegateStorage *)self->_delegateOverrideStorage delegate];
  v4 = 40;
  if (!v3)
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
        v6 = [(NSString *)defaultCallbackQueueName UTF8String];
      }

      else
      {
        v6 = "com.apple.avfoundation.dataoutput.delegate_callback_queue";
      }

      result = dispatch_queue_create(v6, 0);
      self->_defaultCallbackQueue = result;
    }
  }

  return result;
}

- (BOOL)_validateCallbackQueue:(id)a3 exceptionReason:(id *)a4
{
  if (AVCaptureIsRunningInMediaserverd() && !self->_canSetClientDelegateCallbackQueueWhenRunningInsideMediaserverd)
  {
    if (!a3)
    {
      return 1;
    }

    if (a4)
    {
      v8 = @"A callback queue can not be used in conjunction with a local queue";
      goto LABEL_10;
    }
  }

  else
  {
    if (a3)
    {
      return 1;
    }

    if (a4)
    {
      v8 = @"NULL queue passed";
LABEL_10:
      result = 0;
      *a4 = v8;
      return result;
    }
  }

  return 0;
}

@end