@interface AVCaptureVisibilityHelperLayer
- (AVCaptureVisibilityHelperLayer)initWithDelegate:(id)delegate;
- (void)dealloc;
- (void)layerDidBecomeVisible:(BOOL)visible;
@end

@implementation AVCaptureVisibilityHelperLayer

- (AVCaptureVisibilityHelperLayer)initWithDelegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = AVCaptureVisibilityHelperLayer;
  v4 = [(AVCaptureVisibilityHelperLayer *)&v6 init];
  if (v4)
  {
    v4->_delegate = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:delegate];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureVisibilityHelperLayer;
  [(AVCaptureVisibilityHelperLayer *)&v3 dealloc];
}

- (void)layerDidBecomeVisible:(BOOL)visible
{
  visibleCopy = visible;
  referencedObject = [(AVWeakReference *)self->_delegate referencedObject];
  if (referencedObject)
  {

    [referencedObject externalDisplayLayerObserver:self visibiltyChanged:visibleCopy];
  }
}

@end