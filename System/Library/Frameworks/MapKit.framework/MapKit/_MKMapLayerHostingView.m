@interface _MKMapLayerHostingView
- (_MKMapLayerHostingView)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation _MKMapLayerHostingView

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _MKMapLayerHostingView;
  [(_MKMapLayerHostingView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(_MKMapLayerHostingView *)self bounds];
  [(VKMapView *)self->_mapView setFrame:?];
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _MKMapLayerHostingView;
  [(_MKMapLayerHostingView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(_MKMapLayerHostingView *)self bounds];
  [(VKMapView *)self->_mapView setFrame:?];
}

- (void)dealloc
{
  v3 = [(_MKMapLayerHostingView *)self layer];
  [v3 setHostView:0];

  v4.receiver = self;
  v4.super_class = _MKMapLayerHostingView;
  [(_MKMapLayerHostingView *)&v4 dealloc];
}

- (_MKMapLayerHostingView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = _MKMapLayerHostingView;
  v3 = [(_MKMapLayerHostingView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(_MKMapLayerHostingView *)v3 layer];
    [v5 setHostView:v4];
    v6 = v4;
  }

  return v4;
}

@end