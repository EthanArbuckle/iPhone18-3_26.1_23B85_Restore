@interface AXElementInteractionCursorView
+ (CGRect)resizeFrameForDisplay:(CGRect)display;
- (AXElementInteractionCursorView)initWithFrame:(CGRect)frame;
- (CGRect)cursorFrame;
- (id)_retrieveBezierPaths:(CGRect)paths usingRealPaths:(BOOL *)realPaths;
- (id)_retrieveFrameBezierPath:(CGRect)path;
- (id)_retrievePathBezierPaths;
- (void)_orderIn;
- (void)_orderOut;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)setCursorFrame:(CGRect)frame;
- (void)setIsHidden:(BOOL)hidden;
- (void)setPath:(CGPath *)path;
@end

@implementation AXElementInteractionCursorView

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

  v21 = v6;
  v22 = v5;
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

  AXDeviceGetMainScreenPixelBounds();
  v11 = v24.origin.x;
  v12 = v24.origin.y;
  v13 = v24.size.width;
  v14 = v24.size.height;
  if (width > CGRectGetWidth(v24))
  {
    v25.origin.x = v11;
    v25.origin.y = v12;
    v25.size.width = v13;
    v25.size.height = v14;
    width = CGRectGetWidth(v25) - v22;
  }

  v26.origin.x = v11;
  v26.origin.y = v12;
  v26.size.width = v13;
  v26.size.height = v14;
  if (height > CGRectGetHeight(v26))
  {
    v27.origin.x = v11;
    v27.origin.y = v12;
    v27.size.width = v13;
    v27.size.height = v14;
    height = CGRectGetHeight(v27) - v21;
  }

  v16 = v21;
  v15 = v22;
  if (y >= 0.0)
  {
    v17 = y;
  }

  else
  {
    v17 = v21;
  }

  if (x >= 0.0)
  {
    v18 = x;
  }

  else
  {
    v18 = v22;
  }

  if (width - v22 * 2.0 <= 0.0)
  {
    v15 = 0.0;
  }

  if (height - v21 * 2.0 <= 0.0)
  {
    v16 = 0.0;
  }

  v19 = width;
  v20 = height;

  return CGRectInset(*(&v17 - 1), v15, v16);
}

- (AXElementInteractionCursorView)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = AXElementInteractionCursorView;
  v3 = [(AXElementInteractionCursorView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(AXElementInteractionCursorView *)v3 setClipsToBounds:1];
  [(AXElementInteractionCursorView *)v3 setOpaque:0];
  return v3;
}

- (void)dealloc
{
  [(AXElementInteractionCursorView *)self setPath:0];
  v3.receiver = self;
  v3.super_class = AXElementInteractionCursorView;
  [(AXElementInteractionCursorView *)&v3 dealloc];
}

- (void)setPath:(CGPath *)path
{
  if (path && !CGPathIsEmpty(path))
  {
    self->_path = path;
    CFRetain(path);
    window = [(AXElementInteractionCursorView *)self window];
    [window frame];
    [(AXElementInteractionCursorView *)self setFrame:?];
  }

  else
  {
    path = self->_path;
    if (path)
    {
      CFRelease(path);
      self->_path = 0;
    }
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
      [(AXElementInteractionCursorView *)self _orderOut];
    }
  }

  else
  {
    self->_isHidden = 0;
    [(AXElementInteractionCursorView *)self _orderIn];
  }
}

- (void)_orderOut
{
  [(AXElementInteractionCursorView *)self alpha];
  self->_cachedAlpha = v3;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1188;
  v4[3] = &unk_4170;
  v4[4] = self;
  [UIView animateWithDuration:196608 delay:v4 options:0 animations:0.05 completion:0.0];
}

- (void)_orderIn
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1220;
  v2[3] = &unk_4170;
  v2[4] = self;
  [UIView animateWithDuration:196608 delay:v2 options:0 animations:0.05 completion:0.0];
}

- (void)setCursorFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(AXElementInteractionCursorView *)self lineWidth];
  v9 = -(v8 + 6.0);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v17 = CGRectInset(v16, v9, v9);
  v10 = v17.origin.x;
  v11 = v17.origin.y;
  v12 = v17.size.width;
  v13 = v17.size.height;
  v14 = +[UIView areAnimationsEnabled];
  [UIView setAnimationsEnabled:0];
  [(AXElementInteractionCursorView *)self setFrame:v10, v11, v12, v13];
  [UIView setAnimationsEnabled:v14];
  self->_cursorFrame.origin.x = v10;
  self->_cursorFrame.origin.y = v11;
  self->_cursorFrame.size.width = v12;
  self->_cursorFrame.size.height = v13;

  [(AXElementInteractionCursorView *)self setNeedsDisplay];
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
    v17 = 0;
  }

  else
  {
    v20 = CGRectInset(path, 3.0, 3.0);
    x = v20.origin.x;
    y = v20.origin.y;
    width = v20.size.width;
    height = v20.size.height;
    [(AXElementInteractionCursorView *)self lineWidth];
    if (height >= 3.0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0.5;
    }

    v11 = x + v10 * 0.5;
    v12 = y + v10 * 0.5;
    v13 = width - v10;
    v14 = height - v10;
    v15 = [UIBezierPath bezierPathWithRoundedRect:-1 byRoundingCorners:v11 cornerRadii:v12, v13, v14, 5.0, 5.0];
    v21.origin.x = v11;
    v21.origin.y = v12;
    v21.size.width = v13;
    v21.size.height = v14;
    v22 = CGRectInset(v21, v10 / 3.0, v10 / 3.0);
    v16 = [UIBezierPath bezierPathWithRoundedRect:-1 byRoundingCorners:v22.origin.x cornerRadii:v22.origin.y, v22.size.width, v22.size.height, 5.0, 5.0];
    v17 = [NSArray arrayWithObjects:v15, v16, 0];
  }

  return v17;
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
      _retrievePathBezierPaths = [(AXElementInteractionCursorView *)self _retrievePathBezierPaths];
      goto LABEL_6;
    }
  }

  else
  {
    *realPaths = 0;
  }

  _retrievePathBezierPaths = [(AXElementInteractionCursorView *)self _retrieveFrameBezierPath:x, y, width, height];
LABEL_6:

  return _retrievePathBezierPaths;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v16 = 0;
  v8 = [(AXElementInteractionCursorView *)self _retrieveBezierPaths:&v16 usingRealPaths:?];
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v18 = CGRectInset(v17, 3.0, 3.0);
  v9 = v18.size.height;
  [(AXElementInteractionCursorView *)self lineWidth:v18.origin.x];
  if (v9 < 3.0)
  {
    v10 = 0.5;
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_16E8;
  v12[3] = &unk_4198;
  v14 = v10;
  v15 = v16;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v11 enumerateObjectsUsingBlock:v12];
}

- (CGRect)cursorFrame
{
  x = self->_cursorFrame.origin.x;
  y = self->_cursorFrame.origin.y;
  width = self->_cursorFrame.size.width;
  height = self->_cursorFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end