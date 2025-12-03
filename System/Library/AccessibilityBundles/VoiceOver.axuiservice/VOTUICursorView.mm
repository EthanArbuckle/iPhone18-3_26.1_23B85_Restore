@interface VOTUICursorView
+ (CGRect)resizeFrameForDisplay:(CGRect)display;
- (BOOL)largeCursorEnabled;
- (CGRect)resizeFrameForWindow:(CGRect)window;
- (CGSize)cornerRadius;
- (VOTUICursorView)initWithFrame:(CGRect)frame;
- (double)lineWidth;
- (id)_retrieveBezierPaths:(CGRect)paths usingRealPaths:(BOOL *)realPaths;
- (id)_retrieveFrameBezierPath:(CGRect)path;
- (id)_retrievePathBezierPaths;
- (void)_orderIn;
- (void)_orderOut;
- (void)_traitCollectionDidChange:(id)change;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setCursorFrame:(CGRect)frame animated:(BOOL)animated;
- (void)setIsHidden:(BOOL)hidden;
- (void)setPath:(CGPath *)path;
@end

@implementation VOTUICursorView

+ (CGRect)resizeFrameForDisplay:(CGRect)display
{
  y = display.origin.y;
  x = display.origin.x;
  if (display.size.width >= 15.0)
  {
    v5 = 2.5;
  }

  else
  {
    v5 = 15.0 - display.size.width + 2.5;
  }

  if (display.size.height >= 15.0)
  {
    v6 = 2.5;
  }

  else
  {
    v6 = 15.0 - display.size.height;
  }

  v26 = v6;
  v28 = v5;
  v7 = display.size.width - fabs(x);
  if (x >= 0.0)
  {
    width = display.size.width;
  }

  else
  {
    width = v7;
  }

  v9 = display.size.height - fabs(display.origin.y);
  if (display.origin.y >= 0.0)
  {
    height = display.size.height;
  }

  else
  {
    height = v9;
  }

  v11 = +[UIScreen mainScreen];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v30.origin.x = v13;
  v30.origin.y = v15;
  v30.size.width = v17;
  v30.size.height = v19;
  if (width > CGRectGetWidth(v30))
  {
    v31.origin.x = v13;
    v31.origin.y = v15;
    v31.size.width = v17;
    v31.size.height = v19;
    width = CGRectGetWidth(v31) - v28;
  }

  v32.origin.x = v13;
  v32.origin.y = v15;
  v32.size.width = v17;
  v32.size.height = v19;
  if (height > CGRectGetHeight(v32))
  {
    v33.origin.x = v13;
    v33.origin.y = v15;
    v33.size.width = v17;
    v33.size.height = v19;
    height = CGRectGetHeight(v33) - v27;
  }

  v21 = v27;
  v20 = v28;
  if (y >= 0.0)
  {
    v22 = y;
  }

  else
  {
    v22 = v27;
  }

  if (x >= 0.0)
  {
    v23 = x;
  }

  else
  {
    v23 = v28;
  }

  if (width - v28 * 2.0 <= 0.0)
  {
    v20 = 0.0;
  }

  if (height - v27 * 2.0 <= 0.0)
  {
    v21 = 0.0;
  }

  v24 = width;
  v25 = height;

  return CGRectInset(*(&v22 - 1), v20, v21);
}

- (CGRect)resizeFrameForWindow:(CGRect)window
{
  height = window.size.height;
  width = window.size.width;
  y = window.origin.y;
  x = window.origin.x;
  window = [(VOTUICursorView *)self window];
  [window bounds];
  UIRectInset();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;

  return CGRectIntersection(*&v16, *&v20);
}

- (VOTUICursorView)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = VOTUICursorView;
  v3 = [(VOTUICursorView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(VOTUICursorView *)v3 setClipsToBounds:1];
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = sub_C850;
  v12[4] = sub_C860;
  v4 = v3;
  v13 = v4;
  v5 = +[AXSettings sharedInstance];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_C868;
  v11[3] = &unk_3D1A0;
  v11[4] = v12;
  [v5 registerUpdateBlock:v11 forRetrieveSelector:"voiceOverLargeCursorEnabled" withListener:v4];

  [(VOTUICursorView *)v4 setOpaque:0];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v6 = [NSArray arrayWithObjects:v15 count:2];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_C878;
  v10[3] = &unk_3D1C8;
  v10[4] = v12;
  v7 = [(VOTUICursorView *)v4 registerForTraitChanges:v6 withHandler:v10];

  v8 = v4;
  _Block_object_dispose(v12, 8);

  return v8;
}

- (void)dealloc
{
  [(VOTUICursorView *)self setPath:0];
  v3.receiver = self;
  v3.super_class = VOTUICursorView;
  [(VOTUICursorView *)&v3 dealloc];
}

- (BOOL)largeCursorEnabled
{
  v2 = +[AXSettings sharedInstance];
  voiceOverLargeCursorEnabled = [v2 voiceOverLargeCursorEnabled];

  return voiceOverLargeCursorEnabled;
}

- (void)setPath:(CGPath *)path
{
  BoundingBox = CGPathGetBoundingBox(path);
  if (!path || (x = BoundingBox.origin.x, y = BoundingBox.origin.y, width = BoundingBox.size.width, height = BoundingBox.size.height, CGPathIsEmpty(path)) || (v14.origin.x = x, v14.origin.y = y, v14.size.width = width, v14.size.height = height, CGRectIsEmpty(v14)))
  {
    path = self->_path;
    if (path)
    {
      CFRelease(path);
      self->_path = 0;
    }
  }

  else
  {
    v10 = self->_path;
    if (v10)
    {
      CFRelease(v10);
    }

    self->_path = path;
    CFRetain(path);
    window = [(VOTUICursorView *)self window];
    [window frame];
    [(VOTUICursorView *)self setFrame:?];
  }
}

- (void)setIsHidden:(BOOL)hidden
{
  isHidden = self->_isHidden;
  if (!isHidden || hidden)
  {
    if (hidden && !isHidden)
    {
      self->_isHidden = 1;
      [(VOTUICursorView *)self _orderOut];
    }
  }

  else
  {
    self->_isHidden = 0;
    [(VOTUICursorView *)self _orderIn];
  }
}

- (void)_orderOut
{
  [(VOTUICursorView *)self alpha];
  self->_cachedAlpha = v3;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_CB24;
  v4[3] = &unk_3D218;
  v4[4] = self;
  [UIView animateWithDuration:196608 delay:v4 options:0 animations:0.05 completion:0.0];
}

- (void)_orderIn
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_CBBC;
  v2[3] = &unk_3D218;
  v2[4] = self;
  [UIView animateWithDuration:196608 delay:v2 options:0 animations:0.05 completion:0.0];
}

- (CGSize)cornerRadius
{
  [(VOTUICursorView *)self lineWidth];
  v3 = v2 + v2;
  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (double)lineWidth
{
  largeCursorEnabled = [(VOTUICursorView *)self largeCursorEnabled];
  result = 2.0;
  if (largeCursorEnabled)
  {
    return 8.0;
  }

  return result;
}

- (void)setCursorFrame:(CGRect)frame animated:(BOOL)animated
{
  animatedCopy = animated;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(VOTUICursorView *)self lineWidth];
  v11 = v10 + 6.0;
  v12 = -(v10 + 6.0);
  if ([(VOTUICursorView *)self largeCursorEnabled])
  {
    v13 = v11 * -1.25;
  }

  else
  {
    v13 = v12;
  }

  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v26 = CGRectInset(v25, v13, v13);
  v14 = v26.origin.x;
  v15 = v26.origin.y;
  v16 = v26.size.width;
  v17 = v26.size.height;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_CDFC;
  v23[3] = &unk_3D308;
  v23[4] = self;
  v24 = v26;
  v18 = objc_retainBlock(v23);
  v19 = v18;
  if (animatedCopy)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_CE10;
    v21[3] = &unk_3D330;
    v22 = v18;
    [UIView animateWithDuration:196612 delay:v21 options:0 animations:0.15 completion:0.0];
  }

  else
  {
    v20 = +[UIView areAnimationsEnabled];
    [UIView setAnimationsEnabled:0];
    v19[2](v19);
    [UIView setAnimationsEnabled:v20];
    [(VOTUICursorView *)self setNeedsDisplay];
  }

  self->_cursorFrame.origin.x = v14;
  self->_cursorFrame.origin.y = v15;
  self->_cursorFrame.size.width = v16;
  self->_cursorFrame.size.height = v17;
}

- (id)_retrievePathBezierPaths
{
  if (self->_path)
  {
    v2 = [UIBezierPath bezierPathWithCGPath:?];
    v5 = v2;
    v3 = [NSArray arrayWithObjects:&v5 count:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_retrieveFrameBezierPath:(CGRect)path
{
  if (CGSizeZero.width == self->_cursorFrame.size.width && CGSizeZero.height == self->_cursorFrame.size.height)
  {
    v23 = 0;
  }

  else
  {
    v26 = CGRectInset(path, 3.0, 3.0);
    x = v26.origin.x;
    y = v26.origin.y;
    width = v26.size.width;
    height = v26.size.height;
    [(VOTUICursorView *)self lineWidth];
    v10 = v9;
    [(VOTUICursorView *)self cornerRadius];
    v12 = v11;
    v14 = v13;
    largeCursorEnabled = [(VOTUICursorView *)self largeCursorEnabled];
    if (height >= 3.0)
    {
      v16 = 1;
    }

    else
    {
      v16 = largeCursorEnabled;
    }

    if (!v16)
    {
      v10 = 0.5;
    }

    v17 = x + v10 * 0.5;
    v18 = y + v10 * 0.5;
    v19 = width - v10;
    v20 = height - v10;
    v21 = [UIBezierPath bezierPathWithRoundedRect:-1 byRoundingCorners:v17 cornerRadii:v18, v19, v20, v12, v14];
    v27.origin.x = v17;
    v27.origin.y = v18;
    v27.size.width = v19;
    v27.size.height = v20;
    v28 = CGRectInset(v27, v10 / 3.0, v10 / 3.0);
    v22 = [UIBezierPath bezierPathWithRoundedRect:-1 byRoundingCorners:v28.origin.x cornerRadii:v28.origin.y, v28.size.width, v28.size.height, v12, v14];
    v23 = [NSArray arrayWithObjects:v21, v22, 0];
  }

  return v23;
}

- (id)_retrieveBezierPaths:(CGRect)paths usingRealPaths:(BOOL *)realPaths
{
  height = paths.size.height;
  width = paths.size.width;
  y = paths.origin.y;
  x = paths.origin.x;
  path = self->_path;
  if (path)
  {
    IsEmpty = CGPathIsEmpty(path);
    *realPaths = !IsEmpty;
    if (!IsEmpty)
    {
      _retrievePathBezierPaths = [(VOTUICursorView *)self _retrievePathBezierPaths];
      goto LABEL_6;
    }
  }

  else
  {
    *realPaths = 0;
  }

  _retrievePathBezierPaths = [(VOTUICursorView *)self _retrieveFrameBezierPath:x, y, width, height];
LABEL_6:

  return _retrievePathBezierPaths;
}

- (void)_traitCollectionDidChange:(id)change
{
  userInterfaceStyle = [change userInterfaceStyle];
  traitCollection = [(VOTUICursorView *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(VOTUICursorView *)self setNeedsDisplay];

    [(VOTUICursorView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v16 = 0;
  [(VOTUICursorView *)self bounds];
  v3 = [(VOTUICursorView *)self _retrieveBezierPaths:&v16 usingRealPaths:?];
  layer = [(VOTUICursorView *)self layer];
  sublayers = [layer sublayers];
  v6 = [sublayers count];

  if (v6 <= 1)
  {
    do
    {
      v7 = objc_alloc_init(CAShapeLayer);
      layer2 = [(VOTUICursorView *)self layer];
      [layer2 addSublayer:v7];

      layer3 = [(VOTUICursorView *)self layer];
      sublayers2 = [layer3 sublayers];
      v11 = [sublayers2 count];
    }

    while (v11 < 2);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_D2E0;
  v13[3] = &unk_3D358;
  v15 = v16;
  v13[4] = self;
  v14 = v3;
  v12 = v3;
  [v12 enumerateObjectsUsingBlock:v13];
}

@end