@interface DockedPlaceholderView
- (DockedPlaceholderView)initWithFrame:(CGRect)a3;
- (id)backgroundColor;
- (id)preferredSpringLoadingEffect;
- (void)_updateShadow;
- (void)_updateShadowPathIfNeededForChangeFromRect:(CGRect)a3 toRect:(CGRect)a4;
- (void)installMaskCutoutView:(id)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setCornerRadius:(double)a3;
- (void)setDimmingAmount:(double)a3;
- (void)setFalseShadowEdge:(unint64_t)a3;
- (void)setFrame:(CGRect)a3;
- (void)setShadowOpacity:(double)a3;
- (void)setShadowRadius:(double)a3;
- (void)setShadowVisible:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateCornerRadii;
@end

@implementation DockedPlaceholderView

- (DockedPlaceholderView)initWithFrame:(CGRect)a3
{
  v27.receiver = self;
  v27.super_class = DockedPlaceholderView;
  v3 = [(DockedPlaceholderView *)&v27 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [UITraitCollection traitCollectionWithUserInterfaceLevel:1];
    [(DockedPlaceholderView *)v3 _setLocalOverrideTraitCollection:v4];

    v5 = [(DockedPlaceholderView *)v3 layer];
    [v5 setShadowOffset:{CGSizeZero.width, CGSizeZero.height}];

    v6 = [(DockedPlaceholderView *)v3 layer];
    [v6 setAllowsGroupOpacity:1];

    v3->_falseShadowEdge = 0;
    if (MUISolariumFeatureEnabled())
    {
      [objc_opt_class() defaultCornerRadius];
      v8 = v7 + 50.0;
    }

    else
    {
      v8 = 50.0;
    }

    [(DockedPlaceholderView *)v3 bounds];
    v9 = [[DockedHeaderView alloc] initWithFrame:0.0, 0.0, CGRectGetWidth(v28), v8];
    headerView = v3->_headerView;
    v3->_headerView = v9;

    [(DockedHeaderView *)v3->_headerView setAutoresizingMask:2];
    v11 = [(DockedPlaceholderView *)v3 headerView];
    [(DockedPlaceholderView *)v3 addSubview:v11];

    v12 = [UIView alloc];
    [(DockedPlaceholderView *)v3 bounds];
    v13 = [v12 initWithFrame:?];
    roundedBackgroundView = v3->_roundedBackgroundView;
    v3->_roundedBackgroundView = v13;

    v15 = +[UIColor clearColor];
    [(UIView *)v3->_roundedBackgroundView setBackgroundColor:v15];

    [(UIView *)v3->_roundedBackgroundView setAutoresizingMask:18];
    [(UIView *)v3->_roundedBackgroundView setClipsToBounds:1];
    v16 = [(UIView *)v3->_roundedBackgroundView layer];
    [v16 setMaskedCorners:10];

    v17 = [(UIView *)v3->_roundedBackgroundView layer];
    [v17 setAllowsGroupOpacity:1];

    [(DockedPlaceholderView *)v3 insertSubview:v3->_roundedBackgroundView below:v3->_headerView];
    v18 = [UIView alloc];
    [(DockedPlaceholderView *)v3 bounds];
    v19 = [v18 initWithFrame:?];
    overlayView = v3->_overlayView;
    v3->_overlayView = v19;

    [(UIView *)v3->_overlayView setAutoresizingMask:18];
    [(UIView *)v3->_overlayView setClipsToBounds:1];
    v21 = [(UIView *)v3->_overlayView layer];
    [v21 setAllowsGroupOpacity:1];

    v22 = objc_alloc_init(CALayer);
    dimmingLayer = v3->_dimmingLayer;
    v3->_dimmingLayer = v22;

    [(CALayer *)v3->_dimmingLayer setOpacity:0.0];
    [(CALayer *)v3->_dimmingLayer setAllowsGroupOpacity:1];
    v24 = +[UIColor _dimmingViewColor];
    -[CALayer setBackgroundColor:](v3->_dimmingLayer, "setBackgroundColor:", [v24 CGColor]);

    v25 = [(UIView *)v3->_overlayView layer];
    [v25 addSublayer:v3->_dimmingLayer];

    [(DockedPlaceholderView *)v3 insertSubview:v3->_overlayView above:v3->_headerView];
    [objc_opt_class() defaultCornerRadius];
    [(DockedPlaceholderView *)v3 setCornerRadius:?];
    v3->_shadowVisible = 1;
    v3->_shadowOpacity = 0.2;
    v3->_shadowRadius = 3.0;
    [(DockedPlaceholderView *)v3 _updateShadow];
  }

  return v3;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(DockedPlaceholderView *)self frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v20.receiver = self;
  v20.super_class = DockedPlaceholderView;
  [(DockedPlaceholderView *)&v20 setFrame:x, y, width, height];
  [(DockedPlaceholderView *)self frame];
  [(DockedPlaceholderView *)self _updateShadowPathIfNeededForChangeFromRect:v9 toRect:v11, v13, v15, v16, v17, v18, v19];
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(DockedPlaceholderView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v20.receiver = self;
  v20.super_class = DockedPlaceholderView;
  [(DockedPlaceholderView *)&v20 setBounds:x, y, width, height];
  [(DockedPlaceholderView *)self bounds];
  [(DockedPlaceholderView *)self _updateShadowPathIfNeededForChangeFromRect:v9 toRect:v11, v13, v15, v16, v17, v18, v19];
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = DockedPlaceholderView;
  [(DockedPlaceholderView *)&v15 layoutSubviews];
  v3 = [(DockedPlaceholderView *)self falseEdgeShadowView];
  if (v3)
  {
    v4 = v3;
    v5 = [(DockedPlaceholderView *)self falseEdgeShadowView];
    v6 = [v5 superview];

    if (v6 == self)
    {
      v7 = [(DockedPlaceholderView *)self falseEdgeShadowView];
      [(DockedPlaceholderView *)self bringSubviewToFront:v7];
    }
  }

  [(DockedPlaceholderView *)self cornerRadius];
  v9 = v8;
  [(DockedPlaceholderView *)self bounds];
  v10 = CGRectGetHeight(v16) - v9;
  [(DockedPlaceholderView *)self bounds];
  Width = CGRectGetWidth(v17);
  v12 = [(DockedPlaceholderView *)self roundedBackgroundView];
  [v12 setFrame:{0.0, v9, Width, v10}];

  v13 = [(DockedPlaceholderView *)self headerView];
  [(DockedPlaceholderView *)self bringSubviewToFront:v13];

  v14 = [(DockedPlaceholderView *)self overlayView];
  [(DockedPlaceholderView *)self bringSubviewToFront:v14];
}

- (id)backgroundColor
{
  v2 = [(DockedPlaceholderView *)self roundedBackgroundView];
  v3 = [v2 backgroundColor];

  return v3;
}

- (void)setBackgroundColor:(id)a3
{
  v6 = a3;
  v4 = [(DockedPlaceholderView *)self roundedBackgroundView];
  [v4 setBackgroundColor:v6];

  v5 = [(DockedPlaceholderView *)self headerView];
  [v5 setBackgroundColor:v6];
}

- (void)traitCollectionDidChange:(id)a3
{
  v10 = a3;
  v4 = [(DockedPlaceholderView *)self traitCollection];
  v5 = [v4 userInterfaceStyle];
  v6 = [v10 userInterfaceStyle];

  if (v5 != v6)
  {
    v7 = +[UIColor _dimmingViewColor];
    v8 = [v7 CGColor];
    v9 = [(DockedPlaceholderView *)self dimmingLayer];
    [v9 setBackgroundColor:v8];
  }
}

- (void)setDimmingAmount:(double)a3
{
  v3 = a3;
  v5 = [(DockedPlaceholderView *)self dimmingLayer];
  *&v4 = v3;
  [v5 setOpacity:v4];
}

- (id)preferredSpringLoadingEffect
{
  v3 = [TargetedSpringLoadedBlinkEffect alloc];
  v4 = [(DockedPlaceholderView *)self overlayView];
  v5 = [(TargetedSpringLoadedBlinkEffect *)v3 initWithTargetView:v4];

  return v5;
}

- (void)setShadowRadius:(double)a3
{
  if (self->_shadowRadius != a3)
  {
    self->_shadowRadius = a3;
    [(DockedPlaceholderView *)self _updateShadow];
  }
}

- (void)setShadowOpacity:(double)a3
{
  if (self->_shadowOpacity != a3)
  {
    self->_shadowOpacity = a3;
    [(DockedPlaceholderView *)self _updateShadow];
  }
}

- (void)setFalseShadowEdge:(unint64_t)a3
{
  if (self->_falseShadowEdge != a3)
  {
    self->_falseShadowEdge = a3;
    [(DockedPlaceholderView *)self _updateShadow];
  }
}

- (void)_updateShadowPathIfNeededForChangeFromRect:(CGRect)a3 toRect:(CGRect)a4
{
  if (!CGRectEqualToRect(a3, a4))
  {
    [(DockedPlaceholderView *)self shadowOpacity];
    if (v5 > 0.00000011920929)
    {

      [(DockedPlaceholderView *)self _updateShadow];
    }
  }
}

- (void)setShadowVisible:(BOOL)a3
{
  if (self->_shadowVisible != a3)
  {
    self->_shadowVisible = a3;
    [(DockedPlaceholderView *)self _updateShadow];
  }
}

- (void)_updateShadow
{
  if ([(DockedPlaceholderView *)self falseShadowEdge])
  {
    v3 = [(DockedPlaceholderView *)self layer];
    [v3 setShadowOpacity:0.0];

    v4 = [(DockedPlaceholderView *)self layer];
    [v4 setShadowRadius:0.0];

    v5 = [(DockedPlaceholderView *)self layer];
    [v5 setShadowPath:0];

    v6 = [(DockedPlaceholderView *)self falseEdgeShadowView];

    if (v6)
    {
      y = CGRectZero.origin.y;
      x = CGRectZero.origin.x;
      height = CGRectZero.size.height;
      width = CGRectZero.size.width;
    }

    else
    {
      v26 = [MUIGradientView alloc];
      y = CGRectZero.origin.y;
      x = CGRectZero.origin.x;
      height = CGRectZero.size.height;
      width = CGRectZero.size.width;
      v27 = [v26 initWithFrame:?];
      [(DockedPlaceholderView *)self setFalseEdgeShadowView:v27];

      v28 = +[UIColor blackColor];
      v69[0] = v28;
      v29 = [UIColor colorWithWhite:0.0 alpha:0.5];
      v69[1] = v29;
      v30 = [UIColor colorWithWhite:0.0 alpha:0.0];
      v69[2] = v30;
      v31 = [NSArray arrayWithObjects:v69 count:3];
      v32 = [(DockedPlaceholderView *)self falseEdgeShadowView];
      [v32 setGradientColors:v31];

      v33 = [(DockedPlaceholderView *)self falseEdgeShadowView];
      [v33 setLocations:&off_100674EE0];
    }

    [(DockedPlaceholderView *)self bounds];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    [(DockedPlaceholderView *)self shadowRadius];
    v43 = v42;
    v44 = [(DockedPlaceholderView *)self falseShadowEdge];
    v45 = 0;
    v46 = CGPointZero.x;
    v47 = CGPointZero.y;
    v48 = v43 + v43;
    if (v44 <= 3)
    {
      if (v44 == 1)
      {
        v74.origin.x = v35;
        v74.origin.y = v37;
        v74.size.width = v39;
        v74.size.height = v41;
        MinY = CGRectGetMinY(v74);
        v75.origin.x = v35;
        v75.origin.y = v37;
        v75.size.width = v39;
        v75.size.height = v41;
        width = CGRectGetWidth(v75);
        v52 = v48 + MinY;
        v53 = v48;
        v50 = 1.0;
        v46 = 0.5;
        y = v52;
        x = 0.0;
        v45 = 34;
        height = v53;
        v47 = 0.0;
        v49 = 0.5;
      }

      else
      {
        v62 = v48;
        v49 = CGPointZero.x;
        v50 = CGPointZero.y;
        if (v44 == 2)
        {
          v71.origin.x = v35;
          v71.origin.y = v37;
          v71.size.width = v39;
          v71.size.height = v41;
          height = CGRectGetHeight(v71);
          v49 = 1.0;
          v47 = 0.5;
          y = 0.0;
          x = -v62;
          v45 = 20;
          width = v62;
          v46 = 0.0;
LABEL_19:
          v50 = 0.5;
        }
      }

LABEL_20:
      [(DockedPlaceholderView *)self shadowOpacity];
      v55 = v54;
      v56 = [(DockedPlaceholderView *)self falseEdgeShadowView];
      [v56 setAlpha:v55];

      v57 = [(DockedPlaceholderView *)self falseEdgeShadowView];
      [v57 setStartPoint:{v49, v50}];

      v58 = [(DockedPlaceholderView *)self falseEdgeShadowView];
      [v58 setEndPoint:{v46, v47}];

      v59 = [(DockedPlaceholderView *)self falseEdgeShadowView];
      [v59 setFrame:{x, y, width, height}];

      v60 = [(DockedPlaceholderView *)self falseEdgeShadowView];
      [v60 setAutoresizingMask:v45];

      v61 = [(DockedPlaceholderView *)self falseEdgeShadowView];
      [(DockedPlaceholderView *)self addSubview:v61];

      return;
    }

    if (v44 != 8)
    {
      v63 = v48;
      v49 = CGPointZero.x;
      v50 = CGPointZero.y;
      if (v44 == 4)
      {
        v72.origin.x = v35;
        v72.origin.y = v37;
        v72.size.width = v39;
        v72.size.height = v41;
        y = CGRectGetMaxY(v72);
        v73.origin.x = v35;
        v73.origin.y = v37;
        v73.size.width = v39;
        v73.size.height = v41;
        width = CGRectGetWidth(v73);
        v47 = 1.0;
        v46 = 0.5;
        x = 0.0;
        v45 = 10;
        height = v63;
        v49 = 0.5;
        v50 = 0.0;
      }

      goto LABEL_20;
    }

    v76.origin.x = v35;
    v76.origin.y = v37;
    v76.size.width = v39;
    v76.size.height = v41;
    x = CGRectGetMaxX(v76);
    v77.origin.x = v35;
    v77.origin.y = v37;
    v77.size.width = v39;
    v77.size.height = v41;
    height = CGRectGetHeight(v77);
    v47 = 0.5;
    v46 = 1.0;
    width = v48;
    y = 0.0;
    v45 = 17;
    v49 = 0.0;
    goto LABEL_19;
  }

  [(DockedPlaceholderView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(DockedPlaceholderView *)self cornerRadius];
  v68 = [UIBezierPath bezierPathWithRoundedRect:v8 cornerRadius:v10, v12, v14, v15];
  v16 = [v68 CGPath];
  v17 = [(DockedPlaceholderView *)self layer];
  [v17 setShadowPath:v16];

  v18 = 0.0;
  if ([(DockedPlaceholderView *)self shadowVisible])
  {
    [(DockedPlaceholderView *)self shadowOpacity];
    v18 = v19;
  }

  v20 = [(DockedPlaceholderView *)self layer];
  *&v21 = v18;
  [v20 setShadowOpacity:v21];

  [(DockedPlaceholderView *)self shadowRadius];
  v23 = v22;
  v24 = [(DockedPlaceholderView *)self layer];
  [v24 setShadowRadius:v23];

  v25 = [(DockedPlaceholderView *)self falseEdgeShadowView];
  [v25 removeFromSuperview];
}

- (void)setCornerRadius:(double)a3
{
  if (self->_cornerRadius != a3)
  {
    self->_cornerRadius = a3;
    [(DockedPlaceholderView *)self updateCornerRadii];
  }
}

- (void)updateCornerRadii
{
  [(DockedPlaceholderView *)self cornerRadius];
  v4 = v3;
  v9 = [(DockedPlaceholderView *)self headerView];
  [v9 setCornerRadius:v4];

  [(DockedPlaceholderView *)self cornerRadius];
  v6 = v5;
  v10 = [(DockedPlaceholderView *)self roundedBackgroundView];
  [v10 _setContinuousCornerRadius:v6];

  [(DockedPlaceholderView *)self cornerRadius];
  v8 = v7;
  v11 = [(DockedPlaceholderView *)self overlayView];
  [v11 _setContinuousCornerRadius:v8];
}

- (void)installMaskCutoutView:(id)a3
{
  v4 = a3;
  [(DockedPlaceholderView *)self setClipsToBounds:0];
  [(DockedPlaceholderView *)self bounds];
  [v4 setFrame:?];
  [(DockedPlaceholderView *)self addSubview:v4];
}

@end