@interface TSWClipView
- (BOOL)needInnerMask;
- (TSWClipView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)fadeSizes;
- (id)p_innerMaskLayerWithBounds:(CGRect)bounds path:(CGPath *)path fadeSizes:(UIEdgeInsets)sizes;
- (id)p_outerMaskLayerWithFrame:(CGRect)frame path:(CGPath *)path;
- (void)addBackgroundView:(id)view;
- (void)addContentView:(id)view;
- (void)dealloc;
- (void)p_clearViewMasks;
- (void)p_updateViewMasks;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)updateClipWithOuterPath:(CGPath *)path innerPath:(CGPath *)innerPath fadeSizes:(UIEdgeInsets)sizes;
@end

@implementation TSWClipView

- (TSWClipView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = TSWClipView;
  v3 = [(TSWClipView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UIView alloc];
    [(TSWClipView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    v3->_outerClipView = v5;
    [(TSWClipView *)v3 addSubview:v5];
    v6 = [UIView alloc];
    [(TSWClipView *)v3 bounds];
    v7 = [v6 initWithFrame:?];
    v3->_innerClipView = v7;
    [(UIView *)v3->_outerClipView addSubview:v7];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWClipView;
  [(TSWClipView *)&v3 dealloc];
}

- (void)setFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = TSWClipView;
  [(TSWClipView *)&v12 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(TSWClipView *)self bounds];
  [(UIView *)[(TSWClipView *)self outerClipView] setFrame:v4, v5, v6, v7];
  [(TSWClipView *)self bounds];
  [(UIView *)[(TSWClipView *)self innerClipView] setFrame:v8, v9, v10, v11];
  [(TSWClipView *)self p_clearViewMasks];
  [(TSWClipView *)self p_updateViewMasks];
}

- (void)setBounds:(CGRect)bounds
{
  v12.receiver = self;
  v12.super_class = TSWClipView;
  [(TSWClipView *)&v12 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(TSWClipView *)self bounds];
  [(UIView *)[(TSWClipView *)self outerClipView] setFrame:v4, v5, v6, v7];
  [(TSWClipView *)self bounds];
  [(UIView *)[(TSWClipView *)self innerClipView] setFrame:v8, v9, v10, v11];
  [(TSWClipView *)self p_clearViewMasks];
  [(TSWClipView *)self p_updateViewMasks];
}

- (void)updateClipWithOuterPath:(CGPath *)path innerPath:(CGPath *)innerPath fadeSizes:(UIEdgeInsets)sizes
{
  right = sizes.right;
  bottom = sizes.bottom;
  left = sizes.left;
  top = sizes.top;

  self->_outerPath = [TSDBezierPath bezierPathWithCGPath:path];
  self->_innerPath = [TSDBezierPath bezierPathWithCGPath:innerPath];
  self->_fadeSizes.top = top;
  self->_fadeSizes.left = left;
  self->_fadeSizes.bottom = bottom;
  self->_fadeSizes.right = right;
  TSURound();
  self->_fadeSizes.top = v12;
  TSURound();
  self->_fadeSizes.bottom = v13;
  TSURound();
  self->_fadeSizes.left = v14;
  TSURound();
  self->_fadeSizes.right = v15;
  [(TSWClipView *)self p_clearViewMasks];

  [(TSWClipView *)self p_updateViewMasks];
}

- (void)addBackgroundView:(id)view
{
  [(UIView *)self->_outerClipView insertSubview:view belowSubview:self->_innerClipView];

  [(TSWClipView *)self p_updateViewMasks];
}

- (void)addContentView:(id)view
{
  [(UIView *)self->_innerClipView addSubview:view];

  [(TSWClipView *)self p_updateViewMasks];
}

- (BOOL)needInnerMask
{
  v3 = [(NSArray *)[(UIView *)self->_innerClipView subviews] count];
  if (v3)
  {
    LOBYTE(v3) = self->_innerPath != 0;
  }

  return v3;
}

- (void)p_clearViewMasks
{
  [(CALayer *)[(UIView *)self->_outerClipView layer] setMask:0];
  layer = [(UIView *)self->_innerClipView layer];

  [(CALayer *)layer setMask:0];
}

- (void)p_updateViewMasks
{
  needOuterMask = [(TSWClipView *)self needOuterMask];
  layer = [(UIView *)self->_outerClipView layer];
  if (needOuterMask)
  {
    if ([(CALayer *)layer mask])
    {
      goto LABEL_6;
    }

    [(UIView *)self->_outerClipView bounds];
    v9 = [(TSWClipView *)self p_outerMaskLayerWithFrame:[(TSDBezierPath *)self->_outerPath CGPath] path:v5, v6, v7, v8];
    layer = [(UIView *)self->_outerClipView layer];
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  [(CALayer *)layer setMask:v10];
LABEL_6:
  needInnerMask = [(TSWClipView *)self needInnerMask];
  layer2 = [(UIView *)self->_innerClipView layer];
  if (needInnerMask)
  {
    if ([(CALayer *)layer2 mask])
    {
      return;
    }

    [(UIView *)self->_innerClipView bounds];
    v18 = [(TSWClipView *)self p_innerMaskLayerWithBounds:[(TSDBezierPath *)self->_innerPath CGPath] path:v14 fadeSizes:v15, v16, v17, self->_fadeSizes.top, self->_fadeSizes.left, self->_fadeSizes.bottom, self->_fadeSizes.right];
    layer2 = [(UIView *)self->_innerClipView layer];
    v13 = v18;
  }

  else
  {
    v13 = 0;
  }

  [(CALayer *)layer2 setMask:v13];
}

- (id)p_innerMaskLayerWithBounds:(CGRect)bounds path:(CGPath *)path fadeSizes:(UIEdgeInsets)sizes
{
  rect_8 = sizes.bottom;
  rect_16 = bounds.size.width;
  top = sizes.top;
  rect_24 = bounds.size.height;
  x = bounds.origin.x;
  y = bounds.origin.y;
  [(TSWClipView *)self maskGroupVerticalInset:bounds.origin.x];
  v7 = top;
  CGPathGetBoundingBox(path);
  TSDRoundedRectForMainScreen();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = TSUCreateRGBABitmapContext();
  v17 = +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", [+[TSUColor colorWithWhite:alpha:](TSUColor CGColor:0.0], [[TSUColor colorWithWhite:0 alpha:?];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v19 = CGGradientCreateWithColors(DeviceRGB, v17, 0);
  CGContextAddPath(v16, path);
  CGContextClip(v16);
  v38.origin.x = v9;
  v38.origin.y = v11;
  v38.size.width = v13;
  v38.size.height = v15;
  MinY = CGRectGetMinY(v38);
  v39.origin.x = v9;
  v39.origin.y = v11;
  v39.size.width = v13;
  v39.size.height = v15;
  v36.y = v7 + CGRectGetMinY(v39);
  v34.x = 0.0;
  v36.x = 0.0;
  v34.y = MinY;
  CGContextDrawLinearGradient(v16, v19, v34, v36, 0);
  v40.origin.x = v9;
  v40.origin.y = v11;
  v40.size.width = v13;
  v40.size.height = v15;
  MaxY = CGRectGetMaxY(v40);
  v41.origin.x = v9;
  v41.origin.y = v11;
  v41.size.width = v13;
  v41.size.height = v15;
  v37.y = CGRectGetMaxY(v41) - rect_8;
  v35.x = 0.0;
  v37.x = 0.0;
  v35.y = MaxY;
  CGContextDrawLinearGradient(v16, v19, v35, v37, 0);
  CGContextSetRGBFillColor(v16, 0.0, 0.0, 0.0, 1.0);
  v42.origin.x = v9;
  v42.origin.y = v11;
  v42.size.width = v13;
  v42.size.height = v15;
  rect = CGRectGetMinX(v42);
  v43.origin.x = v9;
  v43.origin.y = v11;
  v43.size.width = v13;
  v43.size.height = v15;
  v22 = v7 + CGRectGetMinY(v43);
  v44.origin.x = v9;
  v44.origin.y = v11;
  v44.size.width = v13;
  v44.size.height = v15;
  Width = CGRectGetWidth(v44);
  v45.origin.x = v9;
  v45.origin.y = v11;
  v45.size.width = v13;
  v45.size.height = v15;
  v46.size.height = CGRectGetHeight(v45) - v7 - rect_8;
  v46.origin.x = rect;
  v46.origin.y = v22;
  v46.size.width = Width;
  CGContextFillRect(v16, v46);
  CGGradientRelease(v19);
  CGColorSpaceRelease(DeviceRGB);
  Image = CGBitmapContextCreateImage(v16);
  CGContextRelease(v16);
  v25 = objc_alloc_init(CALayer);
  [v25 setFrame:{x, y, rect_16, rect_24}];
  [v25 setContents:Image];
  CGImageRelease(Image);

  return v25;
}

- (id)p_outerMaskLayerWithFrame:(CGRect)frame path:(CGPath *)path
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9 = objc_alloc_init(CAShapeLayer);
  [v9 setFrame:{x, y, width, height}];
  [v9 setPath:path];

  return v9;
}

- (UIEdgeInsets)fadeSizes
{
  top = self->_fadeSizes.top;
  left = self->_fadeSizes.left;
  bottom = self->_fadeSizes.bottom;
  right = self->_fadeSizes.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end