@interface _SSSPDFPageMiniMapVisibleRegionView
- (CGRect)visibleRect;
- (_SSSPDFPageMiniMapVisibleRegionView)initWithFrame:(CGRect)frame;
- (double)_scaledSelectionCornerRadius;
- (void)layoutSubviews;
- (void)updateHiddenRegionViewWithVisibleRect:(CGRect)rect;
- (void)updateVisibleRegionViewWithVisibleRect:(CGRect)rect;
@end

@implementation _SSSPDFPageMiniMapVisibleRegionView

- (_SSSPDFPageMiniMapVisibleRegionView)initWithFrame:(CGRect)frame
{
  v24.receiver = self;
  v24.super_class = _SSSPDFPageMiniMapVisibleRegionView;
  v3 = [(_SSSPDFPageMiniMapVisibleRegionView *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = objc_alloc_init(CAShapeLayer);
  shadowMask = v3->_shadowMask;
  v3->_shadowMask = v4;

  v6 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  shadowView = v3->_shadowView;
  v3->_shadowView = v10;

  v12 = v3->_shadowView;
  v13 = [UIColor colorWithWhite:0.0 alpha:0.5];
  [(UIView *)v12 setBackgroundColor:v13];

  layer = [(UIView *)v3->_shadowView layer];
  [layer setMask:v3->_shadowMask];

  if (_SSScreenshotsRedesign2025Enabled())
  {
    layer2 = [(UIView *)v3->_shadowView layer];
    [layer2 setCornerCurve:kCACornerCurveContinuous];

    layer3 = [(UIView *)v3->_shadowView layer];
    [layer3 setCornerRadius:4.0];
  }

  [(_SSSPDFPageMiniMapVisibleRegionView *)v3 addSubview:v3->_shadowView];
  v17 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  highlightView = v3->_highlightView;
  v3->_highlightView = v17;

  layer4 = [(UIView *)v3->_highlightView layer];
  v20 = +[UIColor whiteColor];
  [layer4 setBorderColor:{objc_msgSend(v20, "CGColor")}];

  layer5 = [(UIView *)v3->_highlightView layer];
  [layer5 setBorderWidth:2.0];

  if (_SSScreenshotsRedesign2025Enabled())
  {
    layer6 = [(UIView *)v3->_highlightView layer];
    [layer6 setCornerCurve:kCACornerCurveContinuous];
  }

  [(_SSSPDFPageMiniMapVisibleRegionView *)v3 addSubview:v3->_highlightView];
  return v3;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = _SSSPDFPageMiniMapVisibleRegionView;
  [(_SSSPDFPageMiniMapVisibleRegionView *)&v4 layoutSubviews];
  [(_SSSPDFPageMiniMapVisibleRegionView *)self visibleRect];
  [(_SSSPDFPageMiniMapVisibleRegionView *)self updateVisibleRegionViewWithVisibleRect:?];
  [(_SSSPDFPageMiniMapVisibleRegionView *)self visibleRect];
  [(_SSSPDFPageMiniMapVisibleRegionView *)self updateHiddenRegionViewWithVisibleRect:?];
  layer = [(UIView *)self->_highlightView layer];
  [(_SSSPDFPageMiniMapVisibleRegionView *)self _scaledSelectionCornerRadius];
  [layer setCornerRadius:?];
}

- (double)_scaledSelectionCornerRadius
{
  if (_SSScreenshotsRedesign2025Enabled())
  {
    v3 = 8.0;
  }

  else
  {
    v3 = 2.0;
  }

  [(_SSSPDFPageMiniMapVisibleRegionView *)self visibleRect];
  v5 = v3 * v4;
  [(UIView *)self->_highlightView bounds];
  return v5 / v6;
}

- (void)updateVisibleRegionViewWithVisibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  highlightView = self->_highlightView;
  v12 = CGRectInset(rect, -2.0, -2.0);
  [(UIView *)highlightView setFrame:v12.origin.x, v12.origin.y, v12.size.width, v12.size.height];
  v9 = self->_highlightView;
  v14.origin.x = CGRectZero.origin.x;
  v14.origin.y = CGRectZero.origin.y;
  v14.size.width = CGRectZero.size.width;
  v14.size.height = CGRectZero.size.height;
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v10 = CGRectEqualToRect(v13, v14);

  [(UIView *)v9 setHidden:v10];
}

- (void)updateHiddenRegionViewWithVisibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  shadowView = self->_shadowView;
  [(_SSSPDFPageMiniMapVisibleRegionView *)self bounds];
  [(UIView *)shadowView setFrame:?];
  shadowMask = self->_shadowMask;
  [(_SSSPDFPageMiniMapVisibleRegionView *)self bounds];
  [(CAShapeLayer *)shadowMask setFrame:?];
  Mutable = CGPathCreateMutable();
  [(_SSSPDFPageMiniMapVisibleRegionView *)self bounds];
  CGPathAddRect(Mutable, 0, v20);
  [(UIView *)self->_shadowView convertRect:self fromView:x, y, width, height];
  v22 = CGRectInset(v21, -1.0, -1.0);
  v11 = v22.origin.x;
  v12 = v22.origin.y;
  v13 = v22.size.width;
  v14 = v22.size.height;
  [(_SSSPDFPageMiniMapVisibleRegionView *)self _scaledSelectionCornerRadius];
  v16 = v15;
  if (_SSScreenshotsRedesign2025Enabled())
  {
    if (v16 >= v13 + v13)
    {
      v17 = v13 + v13;
    }

    else
    {
      v17 = v16;
    }

    v18 = [UIBezierPath bezierPathWithRoundedRect:-1 byRoundingCorners:v11 cornerRadii:v12, v13, v14, v17, v17];
    CGPathAddPath(Mutable, 0, [v18 CGPath]);
  }

  else
  {
    v23.origin.x = v11;
    v23.origin.y = v12;
    v23.size.width = v13;
    v23.size.height = v14;
    CGPathAddRect(Mutable, 0, v23);
  }

  [(CAShapeLayer *)self->_shadowMask setPath:Mutable];
  [(CAShapeLayer *)self->_shadowMask setFillRule:kCAFillRuleEvenOdd];

  CGPathRelease(Mutable);
}

- (CGRect)visibleRect
{
  x = self->_visibleRect.origin.x;
  y = self->_visibleRect.origin.y;
  width = self->_visibleRect.size.width;
  height = self->_visibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end