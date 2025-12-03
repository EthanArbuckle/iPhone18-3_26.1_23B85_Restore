@interface AVSinkSubscriber
- (AVSinkSubscriber)initWithPublisher:(id)publisher requestingInitialValue:(BOOL)value sink:(id)sink;
- (void)cancel;
- (void)dealloc;
@end

@implementation AVSinkSubscriber

- (AVSinkSubscriber)initWithPublisher:(id)publisher requestingInitialValue:(BOOL)value sink:(id)sink
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = AVSinkSubscriber;
  v8 = [(AVSinkSubscriber *)&v11 init];
  if (v8)
  {
    v8->_publisher = publisher;
    v9 = [sink copy];
    v8->_sink = v9;
    v8->_token = [(AVPublisher *)v8->_publisher subscribeRequestingInitialValue:valueCopy block:v9];
    v8->_cancelMutex = FigSimpleMutexCreate();
  }

  return v8;
}

- (void)dealloc
{
  [(AVSinkSubscriber *)self cancel];
  if (self->_cancelMutex)
  {
    FigSimpleMutexDestroy();
  }

  v3.receiver = self;
  v3.super_class = AVSinkSubscriber;
  [(AVSinkSubscriber *)&v3 dealloc];
}

- (void)cancel
{
  FigSimpleMutexLock();
  [(AVCancellable *)self->_token cancel];

  self->_token = 0;
  self->_publisher = 0;

  self->_sink = 0;

  FigSimpleMutexUnlock();
}

@end