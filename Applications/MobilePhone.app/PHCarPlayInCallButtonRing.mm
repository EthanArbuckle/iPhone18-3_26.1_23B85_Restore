@interface PHCarPlayInCallButtonRing
- (CGSize)intrinsicContentSize;
- (PHCarPlayInCallButtonRing)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)setDimmed:(BOOL)a3;
- (void)setFillColor:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setToggledOn:(BOOL)a3;
@end

@implementation PHCarPlayInCallButtonRing

- (void)setFillColor:(id)a3
{
  objc_storeStrong(&self->_fillColor, a3);

  [(PHCarPlayInCallButtonRing *)self setNeedsDisplay];
}

- (void)setDimmed:(BOOL)a3
{
  if (self->_dimmed != a3)
  {
    v13 = v7;
    v14 = v4;
    v15 = v3;
    v9 = a3;
    self->_dimmed = a3;
    if (_UISolariumEnabled())
    {
      if (v9)
      {
        v11 = 1.0;
      }

      else
      {
        v11 = 0.0;
      }

      v12 = [(PHCarPlayInCallButtonRing *)self dimmingView:v8];
      [v12 setAlpha:v11];
    }

    else
    {
      if (v9)
      {
        +[UIColor dynamicCarQuaternaryColor];
      }

      else
      {
        +[UIColor dynamicCarTertiaryColor];
      }
      v12 = ;
      [(PHCarPlayInCallButtonRing *)self setFillColor:v12, v8, v7, v14, v15, v5];
    }

    [(PHCarPlayInCallButtonRing *)self setNeedsDisplay];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  self->_highlighted = a3;
  if (_UISolariumEnabled())
  {
    if (v3)
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.0;
    }

    v6 = [(PHCarPlayInCallButtonRing *)self dimmingView];
    [v6 setAlpha:v5];
  }

  [(PHCarPlayInCallButtonRing *)self setNeedsDisplay];
}

- (void)setToggledOn:(BOOL)a3
{
  self->_toggledOn = a3;
  if (_UISolariumEnabled())
  {
    if (a3)
    {
      +[UIColor whiteColor];
    }

    else
    {
      +[UIColor clearColor];
    }
  }

  else if (a3)
  {
    +[UIColor dynamicCarPrimaryColor];
  }

  else
  {
    +[UIColor dynamicCarTertiaryColor];
  }
  v5 = ;
  v6 = v5;
  [(PHCarPlayInCallButtonRing *)self setFillColor:v5];

  [(PHCarPlayInCallButtonRing *)self setNeedsDisplay];
}

- (PHCarPlayInCallButtonRing)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v17.receiver = self;
  v17.super_class = PHCarPlayInCallButtonRing;
  v5 = [(PHCarPlayInCallButtonRing *)&v17 initWithFrame:a3.origin.x, a3.origin.y];
  if (v5 && _UISolariumEnabled())
  {
    v6 = [[UIView alloc] initWithFrame:{0.0, 0.0, width, height}];
    glassView = v5->_glassView;
    v5->_glassView = v6;

    v8 = [(UIView *)v5->_glassView layer];
    [v8 setCornerRadius:width * 0.5];

    [(UIView *)v5->_glassView applyRegularGlassBackground];
    [(PHCarPlayInCallButtonRing *)v5 addSubview:v5->_glassView];
    v9 = [[UIView alloc] initWithFrame:{0.0, 0.0, width, height}];
    dimmingView = v5->_dimmingView;
    v5->_dimmingView = v9;

    v11 = [(UIView *)v5->_dimmingView layer];
    [v11 setCornerRadius:width * 0.5];

    v12 = +[UIColor blackColor];
    v13 = [v12 colorWithAlphaComponent:0.3];
    [(UIView *)v5->_dimmingView setBackgroundColor:v13];

    v14 = [CAFilter filterWithType:kCAFilterPlusD];
    v15 = [(UIView *)v5->_dimmingView layer];
    [v15 setCompositingFilter:v14];

    [(UIView *)v5->_dimmingView setAlpha:0.0];
    [(PHCarPlayInCallButtonRing *)v5 addSubview:v5->_dimmingView];
  }

  return v5;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetLineWidth(CurrentContext, 1.0);
  v7 = +[UIColor whiteColor];
  [v7 setStroke];

  v8 = [(PHCarPlayInCallButtonRing *)self dimmingView];
  [v8 setBounds:{0.0, 0.0, width, height}];

  v9 = [(PHCarPlayInCallButtonRing *)self fillColor];

  v10 = [(PHCarPlayInCallButtonRing *)self highlighted];
  v11 = v10;
  if (v9)
  {
    v12 = _UISolariumEnabled();
    if (v11)
    {
      if (v12)
      {
        glassView = self->_glassView;
        v14 = [(PHCarPlayInCallButtonRing *)self fillColor];
        [(UIView *)glassView applyDiscreetRegularGlassBackgroundWithTintColor:v14];
LABEL_17:

        if ([(PHCarPlayInCallButtonRing *)self selected])
        {
          CGContextSetLineWidth(CurrentContext, 0.0);
          v49.size.width = 46.0;
          v49.origin.x = 4.0;
          v49.origin.y = 4.0;
          v49.size.height = 46.0;
          CGContextFillEllipseInRect(CurrentContext, v49);
          v22 = +[UIColor clearColor];
          [v22 set];

          if (_UISolariumEnabled())
          {
            v23 = [(PHCarPlayInCallButtonRing *)self traitCollection];
            v24 = [v23 userInterfaceStyle];

            if (v24 == 2)
            {
              v25 = +[UIColor whiteColor];
              v26 = v25;
              v27 = 0.7;
            }

            else
            {
              v25 = +[UIColor blackColor];
              v26 = v25;
              v27 = 0.5;
            }

            v35 = [v25 colorWithAlphaComponent:v27];
            [v35 setStroke];
          }

          else
          {
            v26 = +[UIColor dynamicCarFocusedColor];
            [v26 setStroke];
          }

          CGContextSetLineWidth(CurrentContext, 3.0);
          v51.size.width = 49.0;
          v51.origin.x = 2.5;
          v51.origin.y = 2.5;
          v51.size.height = 49.0;
          CGContextStrokeEllipseInRect(CurrentContext, v51);
          [(UIView *)self->_glassView setFrame:4.0, 4.0, 46.0, 46.0];
          v28 = [(UIView *)self->_glassView layer];
          v47 = v28;
          v29 = 23.0;
        }

        else
        {
          if ((_UISolariumEnabled() & 1) == 0)
          {
            v50.size.width = 52.0;
            v50.origin.x = 1.0;
            v50.origin.y = 1.0;
            v50.size.height = 52.0;
            CGContextFillEllipseInRect(CurrentContext, v50);
          }

          [(UIView *)self->_glassView setFrame:1.0, 1.0, 52.0, 52.0];
          v28 = [(UIView *)self->_glassView layer];
          v47 = v28;
          v29 = 26.0;
        }

        [v28 setCornerRadius:v29];
        goto LABEL_33;
      }

      v19 = [(PHCarPlayInCallButtonRing *)self fillColor];
      v14 = v19;
      v20 = 0.5;
    }

    else
    {
      if (!v12)
      {
        v14 = [(PHCarPlayInCallButtonRing *)self fillColor];
        [v14 set];
        goto LABEL_17;
      }

      v17 = self->_glassView;
      v18 = [(PHCarPlayInCallButtonRing *)self fillColor];
      [(UIView *)v17 applyDiscreetRegularGlassBackgroundWithTintColor:v18];

      v19 = +[UIColor blackColor];
      v14 = v19;
      v20 = 0.0;
    }

    v21 = [v19 colorWithAlphaComponent:v20];
    [v21 set];

    goto LABEL_17;
  }

  if (v10)
  {
    if (_UISolariumEnabled())
    {
      v15 = self->_glassView;
      v16 = +[UIColor dynamicCarQuaternaryColor];
LABEL_13:
      v47 = v16;
      [(UIView *)v15 applyDiscreetRegularGlassBackgroundWithTintColor:v16];
LABEL_33:

      return;
    }

    v30 = +[UIColor dynamicCarQuaternaryColor];
LABEL_37:
    v36 = v30;
    [v30 set];

    v37 = 0x404A000000000000;
    v38 = 1.0;
    v39 = 1.0;
    v40 = 0x404A000000000000;

    CGContextFillEllipseInRect(CurrentContext, *&v38);
    return;
  }

  if ([(PHCarPlayInCallButtonRing *)self selected])
  {
    if (_UISolariumEnabled())
    {
      v15 = self->_glassView;
      v16 = +[UIColor dynamicCarFocusedColor];
      goto LABEL_13;
    }

    v30 = +[UIColor dynamicCarFocusedColor];
    goto LABEL_37;
  }

  v31 = [(PHCarPlayInCallButtonRing *)self dimmed];
  v32 = _UISolariumEnabled();
  if (v31)
  {
    if (v32)
    {
      v33 = self->_glassView;
      v34 = +[UIColor lightGrayColor];
LABEL_42:
      v41 = v34;
      [(UIView *)v33 applyDiscreetRegularGlassBackgroundWithTintColor:v34];
      goto LABEL_46;
    }

    v42 = +[UIColor lightGrayColor];
  }

  else
  {
    if (v32)
    {
      v33 = self->_glassView;
      v34 = +[UIColor dynamicCarQuaternaryColor];
      goto LABEL_42;
    }

    v42 = +[UIColor dynamicCarQuaternaryColor];
  }

  v41 = v42;
  [v42 set];
LABEL_46:

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v43 = 0x404A000000000000;
    v44 = 1.0;
    v45 = 1.0;
    v46 = 0x404A000000000000;

    CGContextStrokeEllipseInRect(CurrentContext, *&v44);
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = 54.0;
  v3 = 54.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end