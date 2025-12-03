@interface AXAuditUICursorView
+ (CGRect)resizeFrameForDisplay:(CGRect)display;
- (AXAuditUICursorView)initWithFrame:(CGRect)frame;
- (BOOL)largeCursorEnabled;
- (CGRect)_cursorFrame;
- (CGRect)resizeFrameForWindow:(CGRect)window;
- (double)lineWidth;
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

@implementation AXAuditUICursorView

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
  window = [(AXAuditUICursorView *)self window];
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

- (AXAuditUICursorView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = AXAuditUICursorView;
  v3 = [(AXAuditUICursorView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(AXAuditUICursorView *)v3 setClipsToBounds:1];
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = sub_1104;
  v9[4] = sub_1114;
  v4 = v3;
  v10 = v4;
  v5 = +[AXSettings sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_111C;
  v8[3] = &unk_81B0;
  v8[4] = v9;
  [v5 registerUpdateBlock:v8 forRetrieveSelector:"voiceOverLargeCursorEnabled" withListener:v4];

  [(AXAuditUICursorView *)v4 setOpaque:0];
  [(AXAuditUICursorView *)v4 setNeedsDisplayOnBoundsChange:1];
  v6 = v4;
  _Block_object_dispose(v9, 8);

  return v6;
}

- (void)dealloc
{
  [(AXAuditUICursorView *)self setPath:0];
  v3.receiver = self;
  v3.super_class = AXAuditUICursorView;
  [(AXAuditUICursorView *)&v3 dealloc];
}

- (BOOL)largeCursorEnabled
{
  v2 = +[AXSettings sharedInstance];
  voiceOverLargeCursorEnabled = [v2 voiceOverLargeCursorEnabled];

  return voiceOverLargeCursorEnabled;
}

- (void)setPath:(CGPath *)path
{
  if (path && !CGPathIsEmpty(path))
  {
    self->_path = path;
    CFRetain(path);
    window = [(AXAuditUICursorView *)self window];
    [window frame];
    [(AXAuditUICursorView *)self setFrame:?];
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
  hiddenCopy = hidden;
  if (![(AXAuditUICursorView *)self _isHidden]|| hiddenCopy)
  {
    if (![(AXAuditUICursorView *)self _isHidden]&& hiddenCopy)
    {
      [(AXAuditUICursorView *)self set_isHidden:1];

      [(AXAuditUICursorView *)self _orderOut];
    }
  }

  else
  {
    [(AXAuditUICursorView *)self set_isHidden:0];

    [(AXAuditUICursorView *)self _orderIn];
  }
}

- (void)_orderOut
{
  [(AXAuditUICursorView *)self alpha];
  [(AXAuditUICursorView *)self set_cachedAlpha:?];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_13B4;
  v3[3] = &unk_81D8;
  v3[4] = self;
  [UIView animateWithDuration:196608 delay:v3 options:0 animations:0.05 completion:0.0];
}

- (void)_orderIn
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_144C;
  v2[3] = &unk_81D8;
  v2[4] = self;
  [UIView animateWithDuration:196608 delay:v2 options:0 animations:0.05 completion:0.0];
}

- (double)lineWidth
{
  v3 = +[AXAuditTheme sharedTheme];
  [v3 borderWidthForHighlightStyle:{-[AXAuditUICursorView highlightStyle](self, "highlightStyle")}];
  v5 = v4;
  if ([(AXAuditUICursorView *)self largeCursorEnabled])
  {
    v5 = 8.0;
  }

  return v5;
}

- (void)setCursorFrame:(CGRect)frame
{
  v4 = round(frame.origin.x);
  v5 = round(frame.origin.y);
  v6 = round(frame.size.width);
  v7 = round(frame.size.height);
  [(AXAuditUICursorView *)self lineWidth];
  v9 = v8 + 6.0;
  v10 = -(v8 + 6.0);
  if ([(AXAuditUICursorView *)self largeCursorEnabled])
  {
    v11 = v9 * -1.25;
  }

  else
  {
    v11 = v10;
  }

  v20.origin.x = v4;
  v20.origin.y = v5;
  v20.size.width = v6;
  v20.size.height = v7;
  v21 = CGRectInset(v20, v11, v11);
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  [(AXAuditUICursorView *)self _cursorFrame];
  v16 = +[UIView areAnimationsEnabled];
  [UIView setAnimationsEnabled:0];
  v17 = CGSizeZero.height;
  [(AXAuditUICursorView *)self setSize:width, height];
  if (CGSizeZero.width != width || v17 != height)
  {
    [(AXAuditUICursorView *)self setOrigin:x, y];
  }

  [UIView setAnimationsEnabled:v16];

  [(AXAuditUICursorView *)self set_cursorFrame:x, y, width, height];
}

- (id)_retrievePathBezierPaths
{
  if ([(AXAuditUICursorView *)self path])
  {
    v3 = [UIBezierPath bezierPathWithCGPath:[(AXAuditUICursorView *)self path]];
    v6 = v3;
    v4 = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_retrieveFrameBezierPath:(CGRect)path
{
  height = path.size.height;
  width = path.size.width;
  y = path.origin.y;
  x = path.origin.x;
  [(AXAuditUICursorView *)self _cursorFrame];
  if (CGSizeZero.width == v9 && CGSizeZero.height == v8)
  {
    v25 = 0;
  }

  else
  {
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v29 = CGRectInset(v28, 3.0, 3.0);
    v11 = v29.origin.x;
    v12 = v29.origin.y;
    v13 = v29.size.width;
    v14 = v29.size.height;
    [(AXAuditUICursorView *)self lineWidth];
    v16 = v15;
    largeCursorEnabled = [(AXAuditUICursorView *)self largeCursorEnabled];
    if (v14 >= 3.0)
    {
      v18 = 1;
    }

    else
    {
      v18 = largeCursorEnabled;
    }

    if (!v18)
    {
      v16 = 0.5;
    }

    v19 = v11 + v16 * 0.5;
    v20 = v12 + v16 * 0.5;
    v21 = v13 - v16;
    v22 = v14 - v16;
    v23 = [UIBezierPath bezierPathWithRoundedRect:-1 byRoundingCorners:v19 cornerRadii:v20, v21, v22, 5.0, 5.0];
    v30.origin.x = v19;
    v30.origin.y = v20;
    v30.size.width = v21;
    v30.size.height = v22;
    v31 = CGRectInset(v30, v16 / 3.0, v16 / 3.0);
    v24 = [UIBezierPath bezierPathWithRoundedRect:-1 byRoundingCorners:v31.origin.x cornerRadii:v31.origin.y, v31.size.width, v31.size.height, 5.0, 5.0];
    v25 = [NSArray arrayWithObjects:v23, v24, 0];
  }

  return v25;
}

- (id)_retrieveBezierPaths:(CGRect)paths usingRealPaths:(BOOL *)realPaths
{
  height = paths.size.height;
  width = paths.size.width;
  if ([(AXAuditUICursorView *)self path:paths.origin.x])
  {
    IsEmpty = CGPathIsEmpty([(AXAuditUICursorView *)self path]);
    *realPaths = !IsEmpty;
    if (!IsEmpty)
    {
      _retrievePathBezierPaths = [(AXAuditUICursorView *)self _retrievePathBezierPaths];
      goto LABEL_6;
    }
  }

  else
  {
    *realPaths = 0;
  }

  _retrievePathBezierPaths = [(AXAuditUICursorView *)self _retrieveFrameBezierPath:0.0, 0.0, width, height];
LABEL_6:

  return _retrievePathBezierPaths;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v29 = 0;
  [(AXAuditUICursorView *)self bounds];
  v8 = [(AXAuditUICursorView *)self _retrieveBezierPaths:&v29 usingRealPaths:?];
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v31 = CGRectInset(v30, 3.0, 3.0);
  v9 = v31.size.height;
  [(AXAuditUICursorView *)self lineWidth:v31.origin.x];
  v11 = v10;
  largeCursorEnabled = [(AXAuditUICursorView *)self largeCursorEnabled];
  if (v9 >= 3.0)
  {
    v13 = 1;
  }

  else
  {
    v13 = largeCursorEnabled;
  }

  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0.5;
  }

  v15 = +[AXAuditTheme sharedTheme];
  highlightStyle = [(AXAuditUICursorView *)self highlightStyle];
  v17 = [v15 backgroundColorForHighlightStyle:highlightStyle];
  v18 = [v15 borderColorForHighlightStyle:highlightStyle];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1AD0;
  v22[3] = &unk_8200;
  v27 = v14;
  v28 = v29;
  v23 = v17;
  selfCopy = self;
  v25 = v8;
  v26 = v18;
  v19 = v18;
  v20 = v8;
  v21 = v17;
  [v20 enumerateObjectsUsingBlock:v22];
}

- (CGRect)_cursorFrame
{
  x = self->__cursorFrame.origin.x;
  y = self->__cursorFrame.origin.y;
  width = self->__cursorFrame.size.width;
  height = self->__cursorFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end