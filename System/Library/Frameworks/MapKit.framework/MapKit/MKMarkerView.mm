@interface MKMarkerView
- (MKMarkerView)initWithImage:(id)image;
- (void)_updateWithImage:(id)image;
- (void)updateWithMarkerStyle:(id)style;
@end

@implementation MKMarkerView

- (void)_updateWithImage:(id)image
{
  imageCopy = image;
  [(MKMarkerView *)self setImage:imageCopy];
  [(MKMarkerView *)self bounds];
  v5 = v4;
  v7 = v6;
  [imageCopy size];
  if (v5 != v9 || v7 != v8)
  {
    [(MKMarkerView *)self bounds];
    v12 = v11;
    v14 = v13;
    [imageCopy size];
    [(MKMarkerView *)self setBounds:v12, v14, v15, v16];
    superview = [(MKMarkerView *)self superview];
    [superview _mapkit_setNeedsLayout];
  }
}

- (void)updateWithMarkerStyle:(id)style
{
  [style anchorPoint];
  v5 = v4;
  v7 = v6;
  layer = [(MKMarkerView *)self layer];
  [layer setAnchorPoint:{v5, v7}];
}

- (MKMarkerView)initWithImage:(id)image
{
  v4.receiver = self;
  v4.super_class = MKMarkerView;
  return [(MKMarkerView *)&v4 initWithImage:image];
}

@end