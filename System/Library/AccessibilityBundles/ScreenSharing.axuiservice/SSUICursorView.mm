@interface SSUICursorView
+ (CGRect)resizeFrameForDisplay:(CGRect)a3;
- (CGPoint)hotspotAdjustmentForCursorFrame:(CGRect)a3;
- (CGRect)resizeFrameForWindow:(CGRect)a3;
- (SSUICursorView)initWithFrame:(CGRect)a3;
- (double)lineWidth;
- (id)_retrieveBezierPaths:(CGRect)a3 usingRealPaths:(BOOL *)a4;
- (id)_retrieveFrameBezierPath:(CGRect)a3;
- (id)_retrievePathBezierPaths;
- (void)_orderIn;
- (void)_orderOut;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)setCursorFrame:(CGRect)a3 animated:(BOOL)a4;
- (void)setIsHidden:(BOOL)a3;
- (void)setPath:(CGPath *)a3;
@end

@implementation SSUICursorView

+ (CGRect)resizeFrameForDisplay:(CGRect)a3
{
  y = a3.origin.y;
  x = a3.origin.x;
  if (a3.size.width >= 15.0)
  {
    v5 = 2.5;
  }

  else
  {
    v5 = 15.0 - a3.size.width + 2.5;
  }

  if (a3.size.height >= 15.0)
  {
    v6 = 2.5;
  }

  else
  {
    v6 = 15.0 - a3.size.height;
  }

  v26 = v6;
  v28 = v5;
  v7 = a3.size.width - fabs(x);
  if (x >= 0.0)
  {
    width = a3.size.width;
  }

  else
  {
    width = v7;
  }

  v9 = a3.size.height - fabs(a3.origin.y);
  if (a3.origin.y >= 0.0)
  {
    height = a3.size.height;
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

- (CGRect)resizeFrameForWindow:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(SSUICursorView *)self window];
  [v7 bounds];
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

- (SSUICursorView)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = SSUICursorView;
  v3 = [(SSUICursorView *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(SSUICursorView *)v3 setClipsToBounds:1];
  [(SSUICursorView *)v3 setOpaque:0];
  return v3;
}

- (void)dealloc
{
  [(SSUICursorView *)self setPath:0];
  v3.receiver = self;
  v3.super_class = SSUICursorView;
  [(SSUICursorView *)&v3 dealloc];
}

- (CGPoint)hotspotAdjustmentForCursorFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  x = CGPointZero.x;
  y = CGPointZero.y;
  v8 = [(SSUICursorView *)self incomingFlags:a3.origin.x];
  v9 = [(SSUICursorView *)self incomingFlags];
  if ((v8 & 0x20000000) != 0)
  {
    if ((v9 & 0x10000000) != 0)
    {
      x = width * 0.5 + -2.0 + CGPointZero.x;
      y = height * 0.5 + -2.0 + y;
    }

    else
    {
      x = width + -3.0 + CGPointZero.x;
    }
  }

  else if ((v9 & 0x10000000) != 0)
  {
    x = width * 0.5 + -2.0 + CGPointZero.x;
    y = y - height * 0.5;
  }

  v10 = x;
  v11 = y;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)setPath:(CGPath *)a3
{
  if (a3 && !CGPathIsEmpty(a3))
  {
    path = self->_path;
    if (path)
    {
      CFRelease(path);
    }

    self->_path = a3;
    CFRetain(a3);
    v7 = [(SSUICursorView *)self window];
    [v7 frame];
    [(SSUICursorView *)self setFrame:?];
  }

  else
  {
    v5 = self->_path;
    if (v5)
    {
      CFRelease(v5);
      self->_path = 0;
    }
  }
}

- (void)setIsHidden:(BOOL)a3
{
  isHidden = self->_isHidden;
  if (!isHidden || a3)
  {
    if (a3 && !isHidden)
    {
      self->_isHidden = 1;
      [(SSUICursorView *)self _orderOut];
    }
  }

  else
  {
    self->_isHidden = 0;
    [(SSUICursorView *)self _orderIn];
  }
}

- (void)_orderOut
{
  [(SSUICursorView *)self alpha];
  self->_cachedAlpha = v3;
  [UIView beginAnimations:@"CursorHide" context:0];
  [UIView setAnimationDuration:0.05];
  [UIView setAnimationCurve:3];
  [(SSUICursorView *)self setAlpha:0.0];

  +[UIView commitAnimations];
}

- (void)_orderIn
{
  [UIView beginAnimations:@"CursorShow" context:0];
  [UIView setAnimationDuration:0.05];
  [UIView setAnimationCurve:3];
  [(SSUICursorView *)self setAlpha:self->_cachedAlpha];

  +[UIView commitAnimations];
}

- (double)lineWidth
{
  v2 = [(SSUICursorView *)self largeCursorEnabled];
  result = 2.0;
  if (v2)
  {
    return 8.0;
  }

  return result;
}

- (void)setCursorFrame:(CGRect)a3 animated:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(SSUICursorView *)self lineWidth];
  v11 = v10 + 6.0;
  v12 = -(v10 + 6.0);
  if ([(SSUICursorView *)self largeCursorEnabled])
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
  v23[2] = sub_62A8;
  v23[3] = &unk_104E0;
  v24 = v26;
  v23[4] = self;
  v18 = objc_retainBlock(v23);
  v19 = v18;
  if (v4)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_6324;
    v21[3] = &unk_105A8;
    v22 = v18;
    [UIView animateWithDuration:196612 delay:v21 options:0 animations:0.15 completion:0.0];
  }

  else
  {
    v20 = +[UIView areAnimationsEnabled];
    [UIView setAnimationsEnabled:0];
    v19[2](v19);
    [UIView setAnimationsEnabled:v20];
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

- (id)_retrieveFrameBezierPath:(CGRect)a3
{
  if (CGSizeZero.width == self->_cursorFrame.size.width && CGSizeZero.height == self->_cursorFrame.size.height)
  {
    v19 = 0;
  }

  else
  {
    v22 = CGRectInset(a3, 3.0, 3.0);
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
    [(SSUICursorView *)self lineWidth];
    v10 = v9;
    v11 = [(SSUICursorView *)self largeCursorEnabled];
    if (height >= 3.0)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    if (!v12)
    {
      v10 = 0.5;
    }

    v13 = x + v10 * 0.5;
    v14 = y + v10 * 0.5;
    v15 = width - v10;
    v16 = height - v10;
    v17 = [UIBezierPath bezierPathWithRoundedRect:-1 byRoundingCorners:v13 cornerRadii:v14, v15, v16, 5.0, 5.0];
    v23.origin.x = v13;
    v23.origin.y = v14;
    v23.size.width = v15;
    v23.size.height = v16;
    v24 = CGRectInset(v23, v10 / 3.0, v10 / 3.0);
    v18 = [UIBezierPath bezierPathWithRoundedRect:-1 byRoundingCorners:v24.origin.x cornerRadii:v24.origin.y, v24.size.width, v24.size.height, 5.0, 5.0];
    v19 = [NSArray arrayWithObjects:v17, v18, 0];
  }

  return v19;
}

- (id)_retrieveBezierPaths:(CGRect)a3 usingRealPaths:(BOOL *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  path = self->_path;
  if (path)
  {
    IsEmpty = CGPathIsEmpty(path);
    *a4 = !IsEmpty;
    if (!IsEmpty)
    {
      v12 = [(SSUICursorView *)self _retrievePathBezierPaths];
      goto LABEL_6;
    }
  }

  else
  {
    *a4 = 0;
  }

  v12 = [(SSUICursorView *)self _retrieveFrameBezierPath:x, y, width, height];
LABEL_6:

  return v12;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v20 = 0;
  v8 = [(SSUICursorView *)self _retrieveBezierPaths:&v20 usingRealPaths:?];
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v22 = CGRectInset(v21, 3.0, 3.0);
  v9 = v22.size.height;
  [(SSUICursorView *)self lineWidth:v22.origin.x];
  v11 = v10;
  v12 = [(SSUICursorView *)self largeCursorEnabled];
  if (v9 >= 3.0)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  v14 = 0.5;
  if (v13)
  {
    v14 = v11;
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_6720;
  v16[3] = &unk_105D0;
  v18 = v14;
  v19 = v20;
  v16[4] = self;
  v17 = v8;
  v15 = v8;
  [v15 enumerateObjectsUsingBlock:v16];
}

@end