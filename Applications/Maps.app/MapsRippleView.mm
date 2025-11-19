@interface MapsRippleView
- (CGSize)intrinsicContentSize;
- (MapsRippleView)initWithCoder:(id)a3;
- (MapsRippleView)initWithFrame:(CGRect)a3;
- (double)timeUntilAnimationStop;
- (void)_commonInit;
- (void)_drawRingInContext:(CGContext *)a3 withProgress:(double)a4 isSecondRing:(BOOL)a5;
- (void)_updateDisplayLink;
- (void)_userInterfaceStyleDidChange;
- (void)didMoveToSuperview;
- (void)drawRect:(CGRect)a3;
- (void)startAnimating;
- (void)stopAnimating;
@end

@implementation MapsRippleView

- (void)_drawRingInContext:(CGContext *)a3 withProgress:(double)a4 isSecondRing:(BOOL)a5
{
  v5 = a5;
  v8 = 0.0;
  if (a4 > 0.0)
  {
    if (a4 <= 0.4)
    {
      v8 = a4 * 5.0;
    }

    else
    {
      v8 = 2.0;
      if (a4 > 0.6)
      {
        v8 = 0.0;
        if (a4 <= 0.8)
        {
          v8 = a4 * -10.0 + 8.0;
        }
      }
    }
  }

  if ([(MapsRippleView *)self isDarkMode])
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor blackColor];
  }
  v9 = ;
  v10 = v9;
  if (a4 <= 0.0)
  {
    goto LABEL_14;
  }

  if (a4 <= 0.4)
  {
    v12 = a4 * 1.00000001;
  }

  else if (a4 <= 0.6)
  {
    v12 = 0.400000006;
  }

  else
  {
    if (a4 > 0.8)
    {
LABEL_14:
      v11 = +[UIColor clearColor];
      goto LABEL_19;
    }

    v12 = a4 * -2.00000003 + 1.60000002;
  }

  v11 = [v9 colorWithAlphaComponent:v12];
LABEL_19:
  v17 = v11;
  v13 = 70.0;
  if (v5)
  {
    v13 = 48.0;
  }

  v14 = v13 * a4;
  v15 = 24.0;
  if (!v5)
  {
    v15 = 35.0;
  }

  v16 = 35.0 - v15 * a4;

  [v17 setStroke];
  CGContextSetLineWidth(a3, v8);
  v19.origin.x = v16;
  v19.origin.y = v16;
  v19.size.width = v14;
  v19.size.height = v14;
  CGContextStrokeEllipseInRect(a3, v19);
}

- (void)drawRect:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = MapsRippleView;
  [(MapsRippleView *)&v12 drawRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  CurrentContext = UIGraphicsGetCurrentContext();
  if (CurrentContext)
  {
    if (self->_animating)
    {
      v5 = CurrentContext;
      v6 = CACurrentMediaTime() - self->_startTime;
      if (self->_looping || v6 <= 1.0)
      {
        v7 = v6 - trunc(v6);
        if (v6 <= 0.2)
        {
          v9 = self;
          v10 = v5;
          v11 = 0;
        }

        else
        {
          v8 = v6 + -0.2 - trunc(v6 + -0.2);
          [(MapsRippleView *)self _drawRingInContext:v5 withProgress:0 isSecondRing:v7];
          if (v8 <= 0.0)
          {
            return;
          }

          v9 = self;
          v10 = v5;
          v7 = v8;
          v11 = 1;
        }

        [(MapsRippleView *)v9 _drawRingInContext:v10 withProgress:v11 isSecondRing:v7];
      }
    }
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = 70.0;
  v3 = 70.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = MapsRippleView;
  [(MapsRippleView *)&v3 didMoveToSuperview];
  [(MapsRippleView *)self _updateDisplayLink];
}

- (void)_userInterfaceStyleDidChange
{
  v3 = [(MapsRippleView *)self traitCollection];
  -[MapsRippleView setDarkMode:](self, "setDarkMode:", [v3 userInterfaceStyle] == 2);
}

- (void)_updateDisplayLink
{
  v3 = [(MapsRippleView *)self superview];
  if (v3 && (animating = self->_animating, v3, animating))
  {
    if (self->_displayLink)
    {
      return;
    }

    v5 = sub_1007989A4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "MapsRippleView Creating ripple view display link", buf, 2u);
    }

    v6 = [CADisplayLink displayLinkWithTarget:self selector:"_onFrameDraw:"];
    displayLink = self->_displayLink;
    self->_displayLink = v6;

    v8 = self->_displayLink;
    v9 = +[NSRunLoop mainRunLoop];
    [(CADisplayLink *)v8 addToRunLoop:v9 forMode:NSRunLoopCommonModes];
  }

  else
  {
    if (!self->_displayLink)
    {
      return;
    }

    v10 = sub_1007989A4();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "MapsRippleView Destroying ripple view display link", v13, 2u);
    }

    v11 = self->_displayLink;
    v12 = +[NSRunLoop mainRunLoop];
    [(CADisplayLink *)v11 removeFromRunLoop:v12 forMode:NSRunLoopCommonModes];

    v9 = self->_displayLink;
    self->_displayLink = 0;
  }
}

- (double)timeUntilAnimationStop
{
  v3 = CACurrentMediaTime() - self->_startTime;
  if (!self->_looping)
  {
    if (v3 <= 1.0)
    {
      v7 = 1.0 - v3;
    }

    else
    {
      v7 = 0.0;
    }

    v6 = sub_1007989A4();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    v12 = 134217984;
    v13 = v7;
    v8 = "MapsRippleView timeUntilAnimationStop: %f (short-circuit)";
LABEL_14:
    v9 = v6;
    v10 = 12;
    goto LABEL_15;
  }

  v4 = v3 - trunc(v3);
  v5 = 0.0;
  if (v3 <= 0.2 || (v5 = v3 + -0.2 - trunc(v3 + -0.2), v4 <= 0.8) || v5 <= 0.8)
  {
    v7 = 0.8 - fmin(v4, v5);
    v6 = sub_1007989A4();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    v12 = 134217984;
    v13 = v7;
    v8 = "MapsRippleView timeUntilAnimationStop: %f";
    goto LABEL_14;
  }

  v6 = sub_1007989A4();
  v7 = 0.0;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LOWORD(v12) = 0;
    v8 = "MapsRippleView timeUntilAnimationStop: 0.0 (non-visible)";
    v9 = v6;
    v10 = 2;
LABEL_15:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v8, &v12, v10);
  }

LABEL_16:

  return v7;
}

- (void)stopAnimating
{
  if (self->_animating)
  {
    v3 = sub_1007989A4();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "MapsRippleView stopAnimating", v4, 2u);
    }

    self->_animating = 0;
    [(MapsRippleView *)self _updateDisplayLink];
  }
}

- (void)startAnimating
{
  self->_startTime = CACurrentMediaTime();
  if (!self->_animating)
  {
    v3 = sub_1007989A4();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "MapsRippleView startAnimating", v4, 2u);
    }

    self->_animating = 1;
    [(MapsRippleView *)self _updateDisplayLink];
  }
}

- (void)_commonInit
{
  [(MapsRippleView *)self setOpaque:0];
  [(MapsRippleView *)self setClearsContextBeforeDrawing:1];
  [(MapsRippleView *)self _userInterfaceStyleDidChange];
  v5 = objc_opt_class();
  v3 = [NSArray arrayWithObjects:&v5 count:1];
  v4 = [(MapsRippleView *)self registerForTraitChanges:v3 withTarget:self action:"_userInterfaceStyleDidChange"];
}

- (MapsRippleView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MapsRippleView;
  v3 = [(MapsRippleView *)&v6 initWithFrame:0.0, 0.0, 70.0, 70.0];
  v4 = v3;
  if (v3)
  {
    [(MapsRippleView *)v3 _commonInit];
  }

  return v4;
}

- (MapsRippleView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = MapsRippleView;
  v3 = [(MapsRippleView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(MapsRippleView *)v3 setFrame:0.0, 0.0, 70.0, 70.0];
    [(MapsRippleView *)v4 _commonInit];
  }

  return v4;
}

@end