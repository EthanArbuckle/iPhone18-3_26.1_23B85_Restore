@interface AVCaptureVisibilityHelperLayer
- (AVCaptureVisibilityHelperLayer)initWithDelegate:(id)a3;
- (void)dealloc;
- (void)layerDidBecomeVisible:(BOOL)a3;
@end

@implementation AVCaptureVisibilityHelperLayer

- (AVCaptureVisibilityHelperLayer)initWithDelegate:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVCaptureVisibilityHelperLayer;
  v4 = [(AVCaptureVisibilityHelperLayer *)&v6 init];
  if (v4)
  {
    v4->_delegate = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:a3];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureVisibilityHelperLayer;
  [(AVCaptureVisibilityHelperLayer *)&v3 dealloc];
}

- (void)layerDidBecomeVisible:(BOOL)a3
{
  v3 = a3;
  v5 = [(AVWeakReference *)self->_delegate referencedObject];
  if (v5)
  {

    [v5 externalDisplayLayerObserver:self visibiltyChanged:v3];
  }
}

@end