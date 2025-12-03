@interface AVAssetWriterFigAssetWriterNotificationHandler
- (AVAssetWriterFigAssetWriterNotificationHandler)initWithFigAssetWriter:(OpaqueFigAssetWriter *)writer;
- (AVAssetWriterFigAssetWriterNotificationHandlerDelegate)delegate;
- (void)_callDelegateIfNotCalledWithSuccess:(BOOL)success error:(id)error;
- (void)_handleCompletedWritingNotification;
- (void)_handleFailedNotificationWithError:(id)error;
- (void)_handleServerDiedNotification;
- (void)_teardownNotificationHandlers;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
@end

@implementation AVAssetWriterFigAssetWriterNotificationHandler

- (AVAssetWriterFigAssetWriterNotificationHandlerDelegate)delegate
{
  _weakReferenceToDelegate = [(AVAssetWriterFigAssetWriterNotificationHandler *)self _weakReferenceToDelegate];

  return [(AVWeakReference *)_weakReferenceToDelegate referencedObject];
}

- (void)setDelegate:(id)delegate
{
  v4 = [[AVWeakReference alloc] initWithReferencedObject:delegate];
  [(AVAssetWriterFigAssetWriterNotificationHandler *)self _setWeakReferenceToDelegate:v4];
}

- (AVAssetWriterFigAssetWriterNotificationHandler)initWithFigAssetWriter:(OpaqueFigAssetWriter *)writer
{
  v8.receiver = self;
  v8.super_class = AVAssetWriterFigAssetWriterNotificationHandler;
  v4 = [(AVAssetWriterFigAssetWriterNotificationHandler *)&v8 init];
  if (v4)
  {
    if (writer)
    {
      v5 = CFRetain(writer);
    }

    else
    {
      v5 = 0;
    }

    v4->_figAssetWriter = v5;
    v4->_weakReferenceToSelf = [[AVWeakReference alloc] initWithReferencedObject:v4];
    v4->_didNotCallDelegate = 1;
    v6 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    [v6 addListenerWithWeakReference:v4->_weakReferenceToSelf callback:AVAssetWriterFigAssetWriterHandleServerDiedNotification name:*MEMORY[0x1E6971560] object:v4->_figAssetWriter flags:0];
    [v6 addListenerWithWeakReference:v4->_weakReferenceToSelf callback:AVAssetWriterFigAssetWriterHandleServerDiedNotification name:*MEMORY[0x1E69628A8] object:v4->_figAssetWriter flags:0];
    [v6 addListenerWithWeakReference:v4->_weakReferenceToSelf callback:AVAssetWriterFigAssetWriterHandleCompletedNotification name:*MEMORY[0x1E6971548] object:v4->_figAssetWriter flags:0];
    [v6 addListenerWithWeakReference:v4->_weakReferenceToSelf callback:AVAssetWriterFigAssetWriterHandleFailedNotification name:*MEMORY[0x1E6971550] object:v4->_figAssetWriter flags:0];
    CFRetain(v4->_weakReferenceToSelf);
    v4->_notificationHandlersAreRegistered = 1;
  }

  return v4;
}

- (void)dealloc
{
  [(AVAssetWriterFigAssetWriterNotificationHandler *)self _teardownNotificationHandlers];
  figAssetWriter = self->_figAssetWriter;
  if (figAssetWriter)
  {
    CFRelease(figAssetWriter);
  }

  v4.receiver = self;
  v4.super_class = AVAssetWriterFigAssetWriterNotificationHandler;
  [(AVAssetWriterFigAssetWriterNotificationHandler *)&v4 dealloc];
}

- (void)_callDelegateIfNotCalledWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  if (FigAtomicCompareAndSwap32())
  {
    delegate = [(AVAssetWriterFigAssetWriterNotificationHandler *)self delegate];

    [(AVAssetWriterFigAssetWriterNotificationHandlerDelegate *)delegate didReceiveFigAssetWriterNotificationWithSuccess:successCopy error:error];
  }
}

- (void)_teardownNotificationHandlers
{
  if (FigAtomicCompareAndSwap32())
  {
    v3 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    [v3 removeListenerWithWeakReference:self->_weakReferenceToSelf callback:AVAssetWriterFigAssetWriterHandleServerDiedNotification name:*MEMORY[0x1E6971560] object:self->_figAssetWriter];
    [v3 removeListenerWithWeakReference:self->_weakReferenceToSelf callback:AVAssetWriterFigAssetWriterHandleServerDiedNotification name:*MEMORY[0x1E69628A8] object:self->_figAssetWriter];
    [v3 removeListenerWithWeakReference:self->_weakReferenceToSelf callback:AVAssetWriterFigAssetWriterHandleCompletedNotification name:*MEMORY[0x1E6971548] object:self->_figAssetWriter];
    [v3 removeListenerWithWeakReference:self->_weakReferenceToSelf callback:AVAssetWriterFigAssetWriterHandleFailedNotification name:*MEMORY[0x1E6971550] object:self->_figAssetWriter];
    weakReferenceToSelf = self->_weakReferenceToSelf;

    CFRelease(weakReferenceToSelf);
  }
}

- (void)_handleServerDiedNotification
{
  [(AVAssetWriterFigAssetWriterNotificationHandler *)self _callDelegateIfNotCalledWithSuccess:0 error:AVLocalizedError(@"AVFoundationErrorDomain", -11819, 0)];

  [(AVAssetWriterFigAssetWriterNotificationHandler *)self _teardownNotificationHandlers];
}

- (void)_handleCompletedWritingNotification
{
  [(AVAssetWriterFigAssetWriterNotificationHandler *)self _callDelegateIfNotCalledWithSuccess:1 error:0];

  [(AVAssetWriterFigAssetWriterNotificationHandler *)self _teardownNotificationHandlers];
}

- (void)_handleFailedNotificationWithError:(id)error
{
  [(AVAssetWriterFigAssetWriterNotificationHandler *)self _callDelegateIfNotCalledWithSuccess:0 error:error];

  [(AVAssetWriterFigAssetWriterNotificationHandler *)self _teardownNotificationHandlers];
}

@end