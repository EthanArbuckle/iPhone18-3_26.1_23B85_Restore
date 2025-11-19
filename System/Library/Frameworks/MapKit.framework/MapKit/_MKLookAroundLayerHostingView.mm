@interface _MKLookAroundLayerHostingView
- (_MKLookAroundLayerHostingView)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation _MKLookAroundLayerHostingView

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _MKLookAroundLayerHostingView;
  [(_MKLookAroundLayerHostingView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(_MKLookAroundLayerHostingView *)self bounds];
  [(VKMapView *)self->_lookAroundView setFrame:?];
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _MKLookAroundLayerHostingView;
  [(_MKLookAroundLayerHostingView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(_MKLookAroundLayerHostingView *)self bounds];
  [(VKMapView *)self->_lookAroundView setFrame:?];
}

- (void)dealloc
{
  v3 = [(_MKLookAroundLayerHostingView *)self layer];
  [v3 setHostView:0];

  v4.receiver = self;
  v4.super_class = _MKLookAroundLayerHostingView;
  [(_MKLookAroundLayerHostingView *)&v4 dealloc];
}

- (_MKLookAroundLayerHostingView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = _MKLookAroundLayerHostingView;
  v3 = [(_MKLookAroundLayerHostingView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(_MKLookAroundLayerHostingView *)v3 layer];
    [v5 setHostView:v4];
    v6 = v4;
  }

  return v4;
}

@end