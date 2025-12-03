@interface DockedPlaceholderView
- (DockedPlaceholderView)initWithFrame:(CGRect)frame;
- (id)backgroundColor;
- (id)preferredSpringLoadingEffect;
- (void)_updateShadow;
- (void)_updateShadowPathIfNeededForChangeFromRect:(CGRect)rect toRect:(CGRect)toRect;
- (void)installMaskCutoutView:(id)view;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setBounds:(CGRect)bounds;
- (void)setCornerRadius:(double)radius;
- (void)setDimmingAmount:(double)amount;
- (void)setFalseShadowEdge:(unint64_t)edge;
- (void)setFrame:(CGRect)frame;
- (void)setShadowOpacity:(double)opacity;
- (void)setShadowRadius:(double)radius;
- (void)setShadowVisible:(BOOL)visible;
- (void)traitCollectionDidChange:(id)change;
- (void)updateCornerRadii;
@end

@implementation DockedPlaceholderView

- (DockedPlaceholderView)initWithFrame:(CGRect)frame
{
  v27.receiver = self;
  v27.super_class = DockedPlaceholderView;
  v3 = [(DockedPlaceholderView *)&v27 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UITraitCollection traitCollectionWithUserInterfaceLevel:1];
    [(DockedPlaceholderView *)v3 _setLocalOverrideTraitCollection:v4];

    layer = [(DockedPlaceholderView *)v3 layer];
    [layer setShadowOffset:{CGSizeZero.width, CGSizeZero.height}];

    layer2 = [(DockedPlaceholderView *)v3 layer];
    [layer2 setAllowsGroupOpacity:1];

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
    headerView = [(DockedPlaceholderView *)v3 headerView];
    [(DockedPlaceholderView *)v3 addSubview:headerView];

    v12 = [UIView alloc];
    [(DockedPlaceholderView *)v3 bounds];
    v13 = [v12 initWithFrame:?];
    roundedBackgroundView = v3->_roundedBackgroundView;
    v3->_roundedBackgroundView = v13;

    v15 = +[UIColor clearColor];
    [(UIView *)v3->_roundedBackgroundView setBackgroundColor:v15];

    [(UIView *)v3->_roundedBackgroundView setAutoresizingMask:18];
    [(UIView *)v3->_roundedBackgroundView setClipsToBounds:1];
    layer3 = [(UIView *)v3->_roundedBackgroundView layer];
    [layer3 setMaskedCorners:10];

    layer4 = [(UIView *)v3->_roundedBackgroundView layer];
    [layer4 setAllowsGroupOpacity:1];

    [(DockedPlaceholderView *)v3 insertSubview:v3->_roundedBackgroundView below:v3->_headerView];
    v18 = [UIView alloc];
    [(DockedPlaceholderView *)v3 bounds];
    v19 = [v18 initWithFrame:?];
    overlayView = v3->_overlayView;
    v3->_overlayView = v19;

    [(UIView *)v3->_overlayView setAutoresizingMask:18];
    [(UIView *)v3->_overlayView setClipsToBounds:1];
    layer5 = [(UIView *)v3->_overlayView layer];
    [layer5 setAllowsGroupOpacity:1];

    v22 = objc_alloc_init(CALayer);
    dimmingLayer = v3->_dimmingLayer;
    v3->_dimmingLayer = v22;

    [(CALayer *)v3->_dimmingLayer setOpacity:0.0];
    [(CALayer *)v3->_dimmingLayer setAllowsGroupOpacity:1];
    v24 = +[UIColor _dimmingViewColor];
    -[CALayer setBackgroundColor:](v3->_dimmingLayer, "setBackgroundColor:", [v24 CGColor]);

    layer6 = [(UIView *)v3->_overlayView layer];
    [layer6 addSublayer:v3->_dimmingLayer];

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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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
  falseEdgeShadowView = [(DockedPlaceholderView *)self falseEdgeShadowView];
  if (falseEdgeShadowView)
  {
    v4 = falseEdgeShadowView;
    falseEdgeShadowView2 = [(DockedPlaceholderView *)self falseEdgeShadowView];
    superview = [falseEdgeShadowView2 superview];

    if (superview == self)
    {
      falseEdgeShadowView3 = [(DockedPlaceholderView *)self falseEdgeShadowView];
      [(DockedPlaceholderView *)self bringSubviewToFront:falseEdgeShadowView3];
    }
  }

  [(DockedPlaceholderView *)self cornerRadius];
  v9 = v8;
  [(DockedPlaceholderView *)self bounds];
  v10 = CGRectGetHeight(v16) - v9;
  [(DockedPlaceholderView *)self bounds];
  Width = CGRectGetWidth(v17);
  roundedBackgroundView = [(DockedPlaceholderView *)self roundedBackgroundView];
  [roundedBackgroundView setFrame:{0.0, v9, Width, v10}];

  headerView = [(DockedPlaceholderView *)self headerView];
  [(DockedPlaceholderView *)self bringSubviewToFront:headerView];

  overlayView = [(DockedPlaceholderView *)self overlayView];
  [(DockedPlaceholderView *)self bringSubviewToFront:overlayView];
}

- (id)backgroundColor
{
  roundedBackgroundView = [(DockedPlaceholderView *)self roundedBackgroundView];
  backgroundColor = [roundedBackgroundView backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  roundedBackgroundView = [(DockedPlaceholderView *)self roundedBackgroundView];
  [roundedBackgroundView setBackgroundColor:colorCopy];

  headerView = [(DockedPlaceholderView *)self headerView];
  [headerView setBackgroundColor:colorCopy];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  traitCollection = [(DockedPlaceholderView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    v7 = +[UIColor _dimmingViewColor];
    cGColor = [v7 CGColor];
    dimmingLayer = [(DockedPlaceholderView *)self dimmingLayer];
    [dimmingLayer setBackgroundColor:cGColor];
  }
}

- (void)setDimmingAmount:(double)amount
{
  amountCopy = amount;
  dimmingLayer = [(DockedPlaceholderView *)self dimmingLayer];
  *&v4 = amountCopy;
  [dimmingLayer setOpacity:v4];
}

- (id)preferredSpringLoadingEffect
{
  v3 = [TargetedSpringLoadedBlinkEffect alloc];
  overlayView = [(DockedPlaceholderView *)self overlayView];
  v5 = [(TargetedSpringLoadedBlinkEffect *)v3 initWithTargetView:overlayView];

  return v5;
}

- (void)setShadowRadius:(double)radius
{
  if (self->_shadowRadius != radius)
  {
    self->_shadowRadius = radius;
    [(DockedPlaceholderView *)self _updateShadow];
  }
}

- (void)setShadowOpacity:(double)opacity
{
  if (self->_shadowOpacity != opacity)
  {
    self->_shadowOpacity = opacity;
    [(DockedPlaceholderView *)self _updateShadow];
  }
}

- (void)setFalseShadowEdge:(unint64_t)edge
{
  if (self->_falseShadowEdge != edge)
  {
    self->_falseShadowEdge = edge;
    [(DockedPlaceholderView *)self _updateShadow];
  }
}

- (void)_updateShadowPathIfNeededForChangeFromRect:(CGRect)rect toRect:(CGRect)toRect
{
  if (!CGRectEqualToRect(rect, toRect))
  {
    [(DockedPlaceholderView *)self shadowOpacity];
    if (v5 > 0.00000011920929)
    {

      [(DockedPlaceholderView *)self _updateShadow];
    }
  }
}

- (void)setShadowVisible:(BOOL)visible
{
  if (self->_shadowVisible != visible)
  {
    self->_shadowVisible = visible;
    [(DockedPlaceholderView *)self _updateShadow];
  }
}

- (void)_updateShadow
{
  if ([(DockedPlaceholderView *)self falseShadowEdge])
  {
    layer = [(DockedPlaceholderView *)self layer];
    [layer setShadowOpacity:0.0];

    layer2 = [(DockedPlaceholderView *)self layer];
    [layer2 setShadowRadius:0.0];

    layer3 = [(DockedPlaceholderView *)self layer];
    [layer3 setShadowPath:0];

    falseEdgeShadowView = [(DockedPlaceholderView *)self falseEdgeShadowView];

    if (falseEdgeShadowView)
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
      falseEdgeShadowView2 = [(DockedPlaceholderView *)self falseEdgeShadowView];
      [falseEdgeShadowView2 setGradientColors:v31];

      falseEdgeShadowView3 = [(DockedPlaceholderView *)self falseEdgeShadowView];
      [falseEdgeShadowView3 setLocations:&off_100018CD8];
    }

    [(DockedPlaceholderView *)self bounds];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    [(DockedPlaceholderView *)self shadowRadius];
    v43 = v42;
    falseShadowEdge = [(DockedPlaceholderView *)self falseShadowEdge];
    v45 = 0;
    v46 = CGPointZero.x;
    v47 = CGPointZero.y;
    v48 = v43 + v43;
    if (falseShadowEdge <= 3)
    {
      if (falseShadowEdge == 1)
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
        if (falseShadowEdge == 2)
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
      falseEdgeShadowView4 = [(DockedPlaceholderView *)self falseEdgeShadowView];
      [falseEdgeShadowView4 setAlpha:v55];

      falseEdgeShadowView5 = [(DockedPlaceholderView *)self falseEdgeShadowView];
      [falseEdgeShadowView5 setStartPoint:{v49, v50}];

      falseEdgeShadowView6 = [(DockedPlaceholderView *)self falseEdgeShadowView];
      [falseEdgeShadowView6 setEndPoint:{v46, v47}];

      falseEdgeShadowView7 = [(DockedPlaceholderView *)self falseEdgeShadowView];
      [falseEdgeShadowView7 setFrame:{x, y, width, height}];

      falseEdgeShadowView8 = [(DockedPlaceholderView *)self falseEdgeShadowView];
      [falseEdgeShadowView8 setAutoresizingMask:v45];

      falseEdgeShadowView9 = [(DockedPlaceholderView *)self falseEdgeShadowView];
      [(DockedPlaceholderView *)self addSubview:falseEdgeShadowView9];

      return;
    }

    if (falseShadowEdge != 8)
    {
      v63 = v48;
      v49 = CGPointZero.x;
      v50 = CGPointZero.y;
      if (falseShadowEdge == 4)
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
  cGPath = [v68 CGPath];
  layer4 = [(DockedPlaceholderView *)self layer];
  [layer4 setShadowPath:cGPath];

  v18 = 0.0;
  if ([(DockedPlaceholderView *)self shadowVisible])
  {
    [(DockedPlaceholderView *)self shadowOpacity];
    v18 = v19;
  }

  layer5 = [(DockedPlaceholderView *)self layer];
  *&v21 = v18;
  [layer5 setShadowOpacity:v21];

  [(DockedPlaceholderView *)self shadowRadius];
  v23 = v22;
  layer6 = [(DockedPlaceholderView *)self layer];
  [layer6 setShadowRadius:v23];

  falseEdgeShadowView10 = [(DockedPlaceholderView *)self falseEdgeShadowView];
  [falseEdgeShadowView10 removeFromSuperview];
}

- (void)setCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    [(DockedPlaceholderView *)self updateCornerRadii];
  }
}

- (void)updateCornerRadii
{
  [(DockedPlaceholderView *)self cornerRadius];
  v4 = v3;
  headerView = [(DockedPlaceholderView *)self headerView];
  [headerView setCornerRadius:v4];

  [(DockedPlaceholderView *)self cornerRadius];
  v6 = v5;
  roundedBackgroundView = [(DockedPlaceholderView *)self roundedBackgroundView];
  [roundedBackgroundView _setContinuousCornerRadius:v6];

  [(DockedPlaceholderView *)self cornerRadius];
  v8 = v7;
  overlayView = [(DockedPlaceholderView *)self overlayView];
  [overlayView _setContinuousCornerRadius:v8];
}

- (void)installMaskCutoutView:(id)view
{
  viewCopy = view;
  [(DockedPlaceholderView *)self setClipsToBounds:0];
  [(DockedPlaceholderView *)self bounds];
  [viewCopy setFrame:?];
  [(DockedPlaceholderView *)self addSubview:viewCopy];
}

@end