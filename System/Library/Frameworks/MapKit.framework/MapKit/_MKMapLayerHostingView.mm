@interface _MKMapLayerHostingView
- (_MKMapLayerHostingView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
@end

@implementation _MKMapLayerHostingView

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = _MKMapLayerHostingView;
  [(_MKMapLayerHostingView *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(_MKMapLayerHostingView *)self bounds];
  [(VKMapView *)self->_mapView setFrame:?];
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = _MKMapLayerHostingView;
  [(_MKMapLayerHostingView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(_MKMapLayerHostingView *)self bounds];
  [(VKMapView *)self->_mapView setFrame:?];
}

- (void)dealloc
{
  layer = [(_MKMapLayerHostingView *)self layer];
  [layer setHostView:0];

  v4.receiver = self;
  v4.super_class = _MKMapLayerHostingView;
  [(_MKMapLayerHostingView *)&v4 dealloc];
}

- (_MKMapLayerHostingView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = _MKMapLayerHostingView;
  v3 = [(_MKMapLayerHostingView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(_MKMapLayerHostingView *)v3 layer];
    [layer setHostView:v4];
    v6 = v4;
  }

  return v4;
}

@end