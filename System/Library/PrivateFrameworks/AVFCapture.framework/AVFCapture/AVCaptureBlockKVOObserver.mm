@interface AVCaptureBlockKVOObserver
- (AVCaptureBlockKVOObserver)initWithObjectToObserve:(id)observe keyPath:(id)path options:(unint64_t)options handler:(id)handler;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation AVCaptureBlockKVOObserver

- (AVCaptureBlockKVOObserver)initWithObjectToObserve:(id)observe keyPath:(id)path options:(unint64_t)options handler:(id)handler
{
  v12.receiver = self;
  v12.super_class = AVCaptureBlockKVOObserver;
  v10 = [(AVCaptureBlockKVOObserver *)&v12 init];
  if (v10)
  {
    v10->_object = observe;
    v10->_keyPath = path;
    v10->_handler = handler;
    [observe addObserver:v10 forKeyPath:path options:options context:AVCaptureBlockKVOObserverContext];
  }

  return v10;
}

- (void)dealloc
{
  [self->_object removeObserver:self forKeyPath:self->_keyPath];

  v3.receiver = self;
  v3.super_class = AVCaptureBlockKVOObserver;
  [(AVCaptureBlockKVOObserver *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (AVCaptureBlockKVOObserverContext == context)
  {
    v8 = *(self->_handler + 2);

    v8();
  }

  else
  {
    v10 = v6;
    v11 = v7;
    v9.receiver = self;
    v9.super_class = AVCaptureBlockKVOObserver;
    [(AVCaptureBlockKVOObserver *)&v9 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

@end