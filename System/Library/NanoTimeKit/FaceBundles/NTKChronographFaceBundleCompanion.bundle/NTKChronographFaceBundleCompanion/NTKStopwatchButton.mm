@interface NTKStopwatchButton
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (NTKStopwatchButton)initWithFrame:(CGRect)a3 forDevice:(id)a4;
- (UIEdgeInsets)touchEdgeInsets;
- (void)layoutSubviews;
- (void)setGlyphBackgroundColor:(id)a3;
- (void)setGlyphColor:(id)a3;
@end

@implementation NTKStopwatchButton

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = NTKStopwatchButton;
  v5 = [(NTKStopwatchButton *)&v9 beginTrackingWithTouch:a3 withEvent:a4];
  if (v5)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_8E04;
    v8[3] = &unk_1C7A0;
    v8[4] = self;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_8E58;
    v7[3] = &unk_1C898;
    v7[4] = self;
    [UIView animateWithDuration:0x10000 delay:v8 options:v7 animations:0.2 completion:0.0];
  }

  return v5;
}

- (NTKStopwatchButton)initWithFrame:(CGRect)a3 forDevice:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v23.receiver = self;
  v23.super_class = NTKStopwatchButton;
  v11 = [(NTKStopwatchButton *)&v23 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_device, a4);
    v13 = objc_alloc_init(UIView);
    innerView = v12->_innerView;
    v12->_innerView = v13;

    [(UIView *)v12->_innerView setUserInteractionEnabled:0];
    v15 = v12->_innerView;
    v16 = [UIColor colorWithWhite:0.149019608 alpha:1.0];
    [(UIView *)v15 setBackgroundColor:v16];

    [(NTKStopwatchButton *)v12 addSubview:v12->_innerView];
    v17 = [UIImage systemImageNamed:@"stopwatch.fill"];
    v18 = [v17 _imageThatSuppressesAccessibilityHairlineThickening];
    v19 = [[CLKUIColoringImageView alloc] initWithImage:v18];
    glyphView = v12->_glyphView;
    v12->_glyphView = v19;

    v21 = [UIColor colorWithWhite:0.541176471 alpha:1.0];
    [(CLKUIColoringImageView *)v12->_glyphView setColor:v21];

    [(UIView *)v12->_innerView addSubview:v12->_glyphView];
  }

  return v12;
}

- (void)setGlyphColor:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_glyphColor] & 1) == 0)
  {
    objc_storeStrong(&self->_glyphColor, a3);
    [(CLKUIColoringImageView *)self->_glyphView setColor:self->_glyphColor];
  }
}

- (void)setGlyphBackgroundColor:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_glyphBackgroundColor] & 1) == 0)
  {
    objc_storeStrong(&self->_glyphBackgroundColor, a3);
    [(UIView *)self->_innerView setBackgroundColor:v5];
  }
}

- (void)layoutSubviews
{
  [(NTKStopwatchButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  CLKRectGetCenter();
  v12 = v11;
  v14 = v13;
  [(CLKDevice *)self->_device screenScale];
  [(UIView *)self->_innerView setCenter:v12, v14];
  [(UIView *)self->_innerView setBounds:v4, v6, v8, v10];
  v15 = [(UIView *)self->_innerView layer];
  [v15 setCornerRadius:v10 * 0.5];

  [(CLKUIColoringImageView *)self->_glyphView sizeToFit];
  [(CLKUIColoringImageView *)self->_glyphView frame];
  CLKRectCenteredIntegralRectForDevice();
  glyphView = self->_glyphView;

  [(CLKUIColoringImageView *)glyphView setFrame:?];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(NTKStopwatchButton *)self bounds];
  top = self->_touchEdgeInsets.top;
  left = self->_touchEdgeInsets.left;
  v10 = v9 + left;
  v12 = v11 + top;
  v14 = v13 - (left + self->_touchEdgeInsets.right);
  v16 = v15 - (top + self->_touchEdgeInsets.bottom);
  v17 = x;
  v18 = y;

  return CGRectContainsPoint(*&v10, *&v17);
}

- (UIEdgeInsets)touchEdgeInsets
{
  top = self->_touchEdgeInsets.top;
  left = self->_touchEdgeInsets.left;
  bottom = self->_touchEdgeInsets.bottom;
  right = self->_touchEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end