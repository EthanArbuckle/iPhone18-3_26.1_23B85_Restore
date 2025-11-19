@interface MKMarkerView
- (MKMarkerView)initWithImage:(id)a3;
- (void)_updateWithImage:(id)a3;
- (void)updateWithMarkerStyle:(id)a3;
@end

@implementation MKMarkerView

- (void)_updateWithImage:(id)a3
{
  v18 = a3;
  [(MKMarkerView *)self setImage:v18];
  [(MKMarkerView *)self bounds];
  v5 = v4;
  v7 = v6;
  [v18 size];
  if (v5 != v9 || v7 != v8)
  {
    [(MKMarkerView *)self bounds];
    v12 = v11;
    v14 = v13;
    [v18 size];
    [(MKMarkerView *)self setBounds:v12, v14, v15, v16];
    v17 = [(MKMarkerView *)self superview];
    [v17 _mapkit_setNeedsLayout];
  }
}

- (void)updateWithMarkerStyle:(id)a3
{
  [a3 anchorPoint];
  v5 = v4;
  v7 = v6;
  v8 = [(MKMarkerView *)self layer];
  [v8 setAnchorPoint:{v5, v7}];
}

- (MKMarkerView)initWithImage:(id)a3
{
  v4.receiver = self;
  v4.super_class = MKMarkerView;
  return [(MKMarkerView *)&v4 initWithImage:a3];
}

@end