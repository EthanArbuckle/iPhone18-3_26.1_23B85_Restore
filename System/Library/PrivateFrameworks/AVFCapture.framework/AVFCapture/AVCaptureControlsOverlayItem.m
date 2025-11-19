@interface AVCaptureControlsOverlayItem
- (AVCaptureControlsOverlayItem)initWithControl:(id)a3 overlayControl:(id)a4;
- (NSString)identifier;
- (void)dealloc;
@end

@implementation AVCaptureControlsOverlayItem

- (NSString)identifier
{
  v2 = [(NSString *)[(AVCaptureControl *)self->_control identifier] copy];

  return v2;
}

- (AVCaptureControlsOverlayItem)initWithControl:(id)a3 overlayControl:(id)a4
{
  v8.receiver = self;
  v8.super_class = AVCaptureControlsOverlayItem;
  v6 = [(AVCaptureControlsOverlayItem *)&v8 init];
  if (v6)
  {
    v6->_control = a3;
    v6->_overlayControl = a4;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureControlsOverlayItem;
  [(AVCaptureControlsOverlayItem *)&v3 dealloc];
}

@end