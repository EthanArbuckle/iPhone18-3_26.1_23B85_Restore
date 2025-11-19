@interface AVCaptureBlockKVOObserver
- (AVCaptureBlockKVOObserver)initWithObjectToObserve:(id)a3 keyPath:(id)a4 options:(unint64_t)a5 handler:(id)a6;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation AVCaptureBlockKVOObserver

- (AVCaptureBlockKVOObserver)initWithObjectToObserve:(id)a3 keyPath:(id)a4 options:(unint64_t)a5 handler:(id)a6
{
  v12.receiver = self;
  v12.super_class = AVCaptureBlockKVOObserver;
  v10 = [(AVCaptureBlockKVOObserver *)&v12 init];
  if (v10)
  {
    v10->_object = a3;
    v10->_keyPath = a4;
    v10->_handler = a6;
    [a3 addObserver:v10 forKeyPath:a4 options:a5 context:AVCaptureBlockKVOObserverContext];
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (AVCaptureBlockKVOObserverContext == a6)
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
    [(AVCaptureBlockKVOObserver *)&v9 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

@end