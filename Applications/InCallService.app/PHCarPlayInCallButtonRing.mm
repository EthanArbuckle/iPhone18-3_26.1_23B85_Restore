@interface PHCarPlayInCallButtonRing
- (CGSize)intrinsicContentSize;
- (PHCarPlayInCallButtonRing)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)setDimmed:(BOOL)dimmed;
- (void)setFillColor:(id)color;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setToggledOn:(BOOL)on;
@end

@implementation PHCarPlayInCallButtonRing

- (CGSize)intrinsicContentSize
{
  v2 = 54.0;
  v3 = 54.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setFillColor:(id)color
{
  objc_storeStrong(&self->_fillColor, color);

  [(PHCarPlayInCallButtonRing *)self setNeedsDisplay];
}

- (void)setDimmed:(BOOL)dimmed
{
  if (self->_dimmed != dimmed)
  {
    v13 = v7;
    v14 = v4;
    v15 = v3;
    dimmedCopy = dimmed;
    self->_dimmed = dimmed;
    if (_UISolariumEnabled())
    {
      if (dimmedCopy)
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
      if (dimmedCopy)
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

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  self->_highlighted = highlighted;
  if (_UISolariumEnabled())
  {
    if (highlightedCopy)
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.0;
    }

    dimmingView = [(PHCarPlayInCallButtonRing *)self dimmingView];
    [dimmingView setAlpha:v5];
  }

  [(PHCarPlayInCallButtonRing *)self setNeedsDisplay];
}

- (void)setToggledOn:(BOOL)on
{
  self->_toggledOn = on;
  if (_UISolariumEnabled())
  {
    if (on)
    {
      +[UIColor whiteColor];
    }

    else
    {
      +[UIColor clearColor];
    }
  }

  else if (on)
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

- (PHCarPlayInCallButtonRing)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v17.receiver = self;
  v17.super_class = PHCarPlayInCallButtonRing;
  v5 = [(PHCarPlayInCallButtonRing *)&v17 initWithFrame:frame.origin.x, frame.origin.y];
  if (v5 && _UISolariumEnabled())
  {
    v6 = [[UIView alloc] initWithFrame:{0.0, 0.0, width, height}];
    glassView = v5->_glassView;
    v5->_glassView = v6;

    layer = [(UIView *)v5->_glassView layer];
    [layer setCornerRadius:width * 0.5];

    [(UIView *)v5->_glassView applyRegularGlassBackground];
    [(PHCarPlayInCallButtonRing *)v5 addSubview:v5->_glassView];
    v9 = [[UIView alloc] initWithFrame:{0.0, 0.0, width, height}];
    dimmingView = v5->_dimmingView;
    v5->_dimmingView = v9;

    layer2 = [(UIView *)v5->_dimmingView layer];
    [layer2 setCornerRadius:width * 0.5];

    v12 = +[UIColor blackColor];
    v13 = [v12 colorWithAlphaComponent:0.3];
    [(UIView *)v5->_dimmingView setBackgroundColor:v13];

    v14 = [CAFilter filterWithType:kCAFilterPlusD];
    layer3 = [(UIView *)v5->_dimmingView layer];
    [layer3 setCompositingFilter:v14];

    [(UIView *)v5->_dimmingView setAlpha:0.0];
    [(PHCarPlayInCallButtonRing *)v5 addSubview:v5->_dimmingView];
  }

  return v5;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetLineWidth(CurrentContext, 1.0);
  v7 = +[UIColor whiteColor];
  [v7 setStroke];

  dimmingView = [(PHCarPlayInCallButtonRing *)self dimmingView];
  [dimmingView setBounds:{0.0, 0.0, width, height}];

  fillColor = [(PHCarPlayInCallButtonRing *)self fillColor];

  highlighted = [(PHCarPlayInCallButtonRing *)self highlighted];
  v11 = highlighted;
  if (fillColor)
  {
    v12 = _UISolariumEnabled();
    if (v11)
    {
      if (v12)
      {
        glassView = self->_glassView;
        fillColor2 = [(PHCarPlayInCallButtonRing *)self fillColor];
        [(UIView *)glassView applyDiscreetRegularGlassBackgroundWithTintColor:fillColor2];
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
            traitCollection = [(PHCarPlayInCallButtonRing *)self traitCollection];
            userInterfaceStyle = [traitCollection userInterfaceStyle];

            if (userInterfaceStyle == 2)
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
          layer = [(UIView *)self->_glassView layer];
          v47 = layer;
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
          layer = [(UIView *)self->_glassView layer];
          v47 = layer;
          v29 = 26.0;
        }

        [layer setCornerRadius:v29];
        goto LABEL_33;
      }

      fillColor3 = [(PHCarPlayInCallButtonRing *)self fillColor];
      fillColor2 = fillColor3;
      v20 = 0.5;
    }

    else
    {
      if (!v12)
      {
        fillColor2 = [(PHCarPlayInCallButtonRing *)self fillColor];
        [fillColor2 set];
        goto LABEL_17;
      }

      v17 = self->_glassView;
      fillColor4 = [(PHCarPlayInCallButtonRing *)self fillColor];
      [(UIView *)v17 applyDiscreetRegularGlassBackgroundWithTintColor:fillColor4];

      fillColor3 = +[UIColor blackColor];
      fillColor2 = fillColor3;
      v20 = 0.0;
    }

    v21 = [fillColor3 colorWithAlphaComponent:v20];
    [v21 set];

    goto LABEL_17;
  }

  if (highlighted)
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

  dimmed = [(PHCarPlayInCallButtonRing *)self dimmed];
  v32 = _UISolariumEnabled();
  if (dimmed)
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

@end