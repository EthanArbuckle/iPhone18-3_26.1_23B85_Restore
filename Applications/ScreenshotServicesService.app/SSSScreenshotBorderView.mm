@interface SSSScreenshotBorderView
- (CGRect)extent;
- (CGRect)unitRectForContent;
- (SSSScreenshotBorderView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
- (void)setBorderStyle:(int64_t)style;
- (void)setGeometryMultiplier:(double)multiplier;
@end

@implementation SSSScreenshotBorderView

- (SSSScreenshotBorderView)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = SSSScreenshotBorderView;
  v3 = [(SSSScreenshotBorderView *)&v16 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v3->_geometryMultiplier = 1.0;
  v4 = objc_opt_new();
  outerHairlineView = v3->_outerHairlineView;
  v3->_outerHairlineView = v4;

  v6 = objc_opt_new();
  thickBorderView = v3->_thickBorderView;
  v3->_thickBorderView = v6;

  v8 = objc_opt_new();
  innerHairlineView = v3->_innerHairlineView;
  v3->_innerHairlineView = v8;

  v3->_unitRectForContent.origin.x = 0.0;
  v3->_unitRectForContent.origin.y = 0.0;
  __asm { FMOV            V0.2D, #1.0 }

  v3->_unitRectForContent.size = _Q0;
  [(SSSScreenshotBorderView *)v3 addSubview:v3->_outerHairlineView];
  [(SSSScreenshotBorderView *)v3 addSubview:v3->_thickBorderView];
  [(SSSScreenshotBorderView *)v3 addSubview:v3->_innerHairlineView];
  return v3;
}

- (void)layoutSubviews
{
  borderStyle = [(SSSScreenshotBorderView *)self borderStyle];
  [(SSSScreenshotBorderView *)self bounds];
  if (!CGRectIsEmpty(v43))
  {
    [(SSSScreenshotBorderView *)self geometryMultiplier];
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    traitCollection = [(SSSScreenshotBorderView *)self traitCollection];
    sub_10000F490(traitCollection, v41);

    [(SSSScreenshotBorderView *)self unitRectForContent];
    if (SSRectIsValid())
    {
      sub_10000F53C();
      SSRoundRectToScale();
      v33 = v6;
      v34 = v5;
      SSRoundRectToScale();
      SSRoundRectToScale();
      UIRectCenteredIntegralRect();
      v39 = v8;
      v40 = v7;
      v37 = v10;
      v38 = v9;
      UIRectCenteredIntegralRect();
      v12 = v11;
      v14 = v13;
      v35 = v16;
      v36 = v15;
      UIRectCenteredIntegralRect();
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      [(_SSSAnimatableBorderCornerRadiusView *)self->_outerHairlineView setFrame:v40, v39, v38, v37];
      [(_SSSAnimatableBorderCornerRadiusView *)self->_thickBorderView setFrame:v12, v14, v36, v35];
      [(_SSSAnimatableBorderCornerRadiusView *)self->_innerHairlineView setFrame:v18, v20, v22, v24];
      if (borderStyle == 2)
      {
        v25 = 0.0;
      }

      else
      {
        v25 = 1.0;
      }

      [(_SSSAnimatableBorderCornerRadiusView *)self->_outerHairlineView setAlpha:v25, v33, v34];
      [(_SSSAnimatableBorderCornerRadiusView *)self->_thickBorderView setAlpha:v25];
      [(_SSSAnimatableBorderCornerRadiusView *)self->_innerHairlineView setAlpha:v25];
      v26 = [UIColor colorWithWhite:0.82 alpha:1.0];
      if (borderStyle == 1)
      {
        +[UIColor sss_miniatureBorderColor];
      }

      else
      {
        +[UIColor clearColor];
      }
      v27 = ;
      v28 = [UIColor colorWithWhite:0.65 alpha:1.0];
      [(_SSSAnimatableBorderCornerRadiusView *)self->_outerHairlineView setBackgroundColor:v26];
      [(_SSSAnimatableBorderCornerRadiusView *)self->_thickBorderView setBackgroundColor:v27];
      [(_SSSAnimatableBorderCornerRadiusView *)self->_innerHairlineView setBackgroundColor:v28];
      UIRoundToViewScale();
      v30 = v29;
      UIRoundToViewScale();
      v32 = v31;
      UIRoundToViewScale();
      [(_SSSAnimatableBorderCornerRadiusView *)self->_outerHairlineView setCornerRadius:?];
      [(_SSSAnimatableBorderCornerRadiusView *)self->_thickBorderView setCornerRadius:v32];
      [(_SSSAnimatableBorderCornerRadiusView *)self->_innerHairlineView setCornerRadius:v30];
    }
  }
}

- (CGRect)extent
{
  [(SSSScreenshotBorderView *)self bounds];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  thickBorderView = self->_thickBorderView;
  v31[0] = self->_outerHairlineView;
  v31[1] = thickBorderView;
  v31[2] = self->_innerHairlineView;
  [NSArray arrayWithObjects:v31 count:3];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = v29 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        [v17 bounds];
        [(SSSScreenshotBorderView *)self convertRect:v17 fromView:?];
        v35.origin.x = v18;
        v35.origin.y = v19;
        v35.size.width = v20;
        v35.size.height = v21;
        v32.origin.x = x;
        v32.origin.y = y;
        v32.size.width = width;
        v32.size.height = height;
        v33 = CGRectUnion(v32, v35);
        x = v33.origin.x;
        y = v33.origin.y;
        width = v33.size.width;
        height = v33.size.height;
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }

  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)setBorderStyle:(int64_t)style
{
  if (self->_borderStyle != style)
  {
    self->_borderStyle = style;
    [(SSSScreenshotBorderView *)self setNeedsLayout];

    [(SSSScreenshotBorderView *)self layoutIfNeeded];
  }
}

- (void)setGeometryMultiplier:(double)multiplier
{
  if (self->_geometryMultiplier != multiplier)
  {
    self->_geometryMultiplier = multiplier;
    [(SSSScreenshotBorderView *)self setNeedsLayout];

    [(SSSScreenshotBorderView *)self layoutIfNeeded];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = SSSScreenshotBorderView;
  v5 = [(SSSScreenshotBorderView *)&v9 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (CGRect)unitRectForContent
{
  x = self->_unitRectForContent.origin.x;
  y = self->_unitRectForContent.origin.y;
  width = self->_unitRectForContent.size.width;
  height = self->_unitRectForContent.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end