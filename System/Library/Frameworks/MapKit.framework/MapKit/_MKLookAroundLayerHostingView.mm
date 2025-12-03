@interface _MKLookAroundLayerHostingView
- (_MKLookAroundLayerHostingView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
@end

@implementation _MKLookAroundLayerHostingView

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = _MKLookAroundLayerHostingView;
  [(_MKLookAroundLayerHostingView *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(_MKLookAroundLayerHostingView *)self bounds];
  [(VKMapView *)self->_lookAroundView setFrame:?];
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = _MKLookAroundLayerHostingView;
  [(_MKLookAroundLayerHostingView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(_MKLookAroundLayerHostingView *)self bounds];
  [(VKMapView *)self->_lookAroundView setFrame:?];
}

- (void)dealloc
{
  layer = [(_MKLookAroundLayerHostingView *)self layer];
  [layer setHostView:0];

  v4.receiver = self;
  v4.super_class = _MKLookAroundLayerHostingView;
  [(_MKLookAroundLayerHostingView *)&v4 dealloc];
}

- (_MKLookAroundLayerHostingView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = _MKLookAroundLayerHostingView;
  v3 = [(_MKLookAroundLayerHostingView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(_MKLookAroundLayerHostingView *)v3 layer];
    [layer setHostView:v4];
    v6 = v4;
  }

  return v4;
}

@end