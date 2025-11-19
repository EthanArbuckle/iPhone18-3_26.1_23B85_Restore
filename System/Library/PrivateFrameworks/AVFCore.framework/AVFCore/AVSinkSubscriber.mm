@interface AVSinkSubscriber
- (AVSinkSubscriber)initWithPublisher:(id)a3 requestingInitialValue:(BOOL)a4 sink:(id)a5;
- (void)cancel;
- (void)dealloc;
@end

@implementation AVSinkSubscriber

- (AVSinkSubscriber)initWithPublisher:(id)a3 requestingInitialValue:(BOOL)a4 sink:(id)a5
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = AVSinkSubscriber;
  v8 = [(AVSinkSubscriber *)&v11 init];
  if (v8)
  {
    v8->_publisher = a3;
    v9 = [a5 copy];
    v8->_sink = v9;
    v8->_token = [(AVPublisher *)v8->_publisher subscribeRequestingInitialValue:v6 block:v9];
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