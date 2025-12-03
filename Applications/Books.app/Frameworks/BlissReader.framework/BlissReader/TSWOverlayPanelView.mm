@interface TSWOverlayPanelView
- (BOOL)p_addBackdropWithSettings:(id)settings;
- (BOOL)p_addBackgroundViewWithColor:(id)color;
- (CGRect)p_shadowFrame;
- (NSString)backdropGroupName;
- (TSWOverlayPanelView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)additionalBackgroundInset;
- (UIEdgeInsets)additionalShadowInset;
- (double)p_contentsScale;
- (id)p_hairlineColorForAppearance:(int)appearance;
- (void)alphaAnimationDidEnd;
- (void)alphaAnimationWillBegin;
- (void)dealloc;
- (void)layoutSubviews;
- (void)p_layoutSublayers;
- (void)p_resetAppearance;
- (void)setAdditionalBackgroundInset:(UIEdgeInsets)inset;
- (void)setAdditionalShadowInset:(UIEdgeInsets)inset;
- (void)setAppearance:(int)appearance;
- (void)setBackdropGroupName:(id)name;
- (void)setBottomHairlineColor:(id)color;
- (void)setBottomHairlineEnabled:(BOOL)enabled;
- (void)setShadowOpacity:(double)opacity;
- (void)setTopHairlineColor:(id)color;
- (void)setTopHairlineEnabled:(BOOL)enabled;
@end

@implementation TSWOverlayPanelView

- (TSWOverlayPanelView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = TSWOverlayPanelView;
  v3 = [(TSWOverlayPanelView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = TSDEdgeInsetsZero[1];
    *&v3->_additionalShadowInset.top = TSDEdgeInsetsZero[0];
    *&v3->_additionalShadowInset.bottom = v5;
    v6 = [TSWPassThroughView alloc];
    [(TSWOverlayPanelView *)v4 bounds];
    v7 = [(TSWPassThroughView *)v6 initWithFrame:?];
    [(TSWOverlayPanelView *)v4 setLayerHostingView:v7];
    [(TSWOverlayPanelView *)v4 addSubview:[(TSWOverlayPanelView *)v4 layerHostingView]];
    [(TSWOverlayPanelView *)v4 setAppearance:1];
  }

  return v4;
}

- (CGRect)p_shadowFrame
{
  [(TSWOverlayPanelView *)self bounds];
  top = self->_additionalShadowInset.top;
  left = self->_additionalShadowInset.left;
  v6 = v5 + left;
  v8 = v7 + top;
  v10 = v9 - (left + self->_additionalShadowInset.right);
  v12 = v11 - (top + self->_additionalShadowInset.bottom);

  return CGRectInset(*&v6, -4.0, -4.0);
}

- (void)p_layoutSublayers
{
  [(TSWOverlayPanelView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(TSWOverlayPanelView *)self p_shadowFrame];
  [(CALayer *)[(TSWOverlayPanelView *)self bakedShadowLayer] setFrame:v11, v12, v13, v14];
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  v20 = CGRectInset(v19, -1.0, 0.0);
  [(CAGradientLayer *)[(TSWOverlayPanelView *)self gradientLayer] setFrame:v20.origin.x, v20.origin.y, v20.size.width, v20.size.height];
  topHairlineLayer = self->_topHairlineLayer;
  if (topHairlineLayer)
  {
    [(CALayer *)topHairlineLayer contentsScale];
    TSDRectWithOriginAndSize();
    [(CALayer *)self->_topHairlineLayer setFrame:?];
  }

  bottomHairlineLayer = self->_bottomHairlineLayer;
  if (bottomHairlineLayer)
  {
    [(CALayer *)bottomHairlineLayer contentsScale];
    TSDRectWithOriginAndSize();
    v17 = self->_bottomHairlineLayer;

    [(CALayer *)v17 setFrame:?];
  }
}

- (void)setAdditionalShadowInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_additionalShadowInset.top, v3), vceqq_f64(*&self->_additionalShadowInset.bottom, v4)))) & 1) == 0)
  {
    self->_additionalShadowInset = inset;
    [(TSWOverlayPanelView *)self p_layoutSublayers];
  }
}

- (void)setAdditionalBackgroundInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_additionalBackgroundInset.top, v3), vceqq_f64(*&self->_additionalBackgroundInset.bottom, v4)))) & 1) == 0)
  {
    self->_additionalBackgroundInset = inset;
    [(TSWOverlayPanelView *)self layoutSubviews];
  }
}

- (void)setShadowOpacity:(double)opacity
{
  opacityCopy = opacity;
  bakedShadowLayer = [(TSWOverlayPanelView *)self bakedShadowLayer];
  *&v5 = opacityCopy;

  [(CALayer *)bakedShadowLayer setOpacity:v5];
}

- (double)p_contentsScale
{
  v2 = +[UIScreen mainScreen];

  [(UIScreen *)v2 scale];
  return result;
}

- (void)setTopHairlineColor:(id)color
{
  if (self->_topHairlineColor != color && ([color isEqual:?] & 1) == 0)
  {

    topHairlineColor = color;
    self->_topHairlineColor = topHairlineColor;
    topHairlineLayer = self->_topHairlineLayer;
    if (topHairlineColor)
    {
      if (!topHairlineLayer)
      {
        self->_topHairlineLayer = +[CALayer layer];
        [(TSWOverlayPanelView *)self p_contentsScale];
        [(CALayer *)self->_topHairlineLayer setContentsScale:?];
        [(CALayer *)self->_topHairlineLayer setZPosition:1.0];
        [(CALayer *)[(UIView *)[(TSWOverlayPanelView *)self layerHostingView] layer] addSublayer:self->_topHairlineLayer];
        [(TSWOverlayPanelView *)self p_layoutSublayers];
        topHairlineColor = self->_topHairlineColor;
        if (!self->_topHairlineLayer)
        {
          goto LABEL_10;
        }
      }

      [(CALayer *)self->_topHairlineLayer setBackgroundColor:[(TSUColor *)topHairlineColor CGColor]];
    }

    else if (topHairlineLayer)
    {
      [(CALayer *)self->_topHairlineLayer removeFromSuperlayer];

      self->_topHairlineLayer = 0;
    }

    topHairlineColor = self->_topHairlineColor;
LABEL_10:
    self->_topHairlineEnabled = topHairlineColor != 0;
  }
}

- (void)setBottomHairlineColor:(id)color
{
  if (self->_bottomHairlineColor != color && ([color isEqual:?] & 1) == 0)
  {

    bottomHairlineColor = color;
    self->_bottomHairlineColor = bottomHairlineColor;
    bottomHairlineLayer = self->_bottomHairlineLayer;
    if (bottomHairlineColor)
    {
      if (!bottomHairlineLayer)
      {
        self->_bottomHairlineLayer = +[CALayer layer];
        [(TSWOverlayPanelView *)self p_contentsScale];
        [(CALayer *)self->_bottomHairlineLayer setContentsScale:?];
        [(CALayer *)self->_bottomHairlineLayer setZPosition:1.0];
        [(CALayer *)[(UIView *)[(TSWOverlayPanelView *)self layerHostingView] layer] addSublayer:self->_bottomHairlineLayer];
        [(TSWOverlayPanelView *)self p_layoutSublayers];
        bottomHairlineColor = self->_bottomHairlineColor;
        if (!self->_bottomHairlineLayer)
        {
          goto LABEL_10;
        }
      }

      [(CALayer *)self->_bottomHairlineLayer setBackgroundColor:[(TSUColor *)bottomHairlineColor CGColor]];
    }

    else if (bottomHairlineLayer)
    {
      [(CALayer *)self->_bottomHairlineLayer removeFromSuperlayer];

      self->_bottomHairlineLayer = 0;
    }

    bottomHairlineColor = self->_bottomHairlineColor;
LABEL_10:
    self->_bottomHairlineEnabled = bottomHairlineColor != 0;
  }
}

- (id)p_hairlineColorForAppearance:(int)appearance
{
  if (!appearance)
  {
    v3 = 0.15;
    v4 = 1.0;
    v5 = 1.0;
    v6 = 1.0;
    return [TSUColor colorWithRed:v4 green:v5 blue:v6 alpha:v3];
  }

  if (appearance == 1)
  {
    v3 = 0.3;
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    return [TSUColor colorWithRed:v4 green:v5 blue:v6 alpha:v3];
  }

  return 0;
}

- (void)setTopHairlineEnabled:(BOOL)enabled
{
  if (self->_topHairlineEnabled != enabled)
  {
    if (enabled)
    {
      v5 = [(TSWOverlayPanelView *)self p_topHairlineColorForAppearance:[(TSWOverlayPanelView *)self appearance]];
    }

    else
    {
      v5 = 0;
    }

    [(TSWOverlayPanelView *)self setTopHairlineColor:v5];
  }
}

- (void)setBottomHairlineEnabled:(BOOL)enabled
{
  if (self->_bottomHairlineEnabled != enabled)
  {
    if (enabled)
    {
      v5 = [(TSWOverlayPanelView *)self p_bottomHairlineColorForAppearance:[(TSWOverlayPanelView *)self appearance]];
    }

    else
    {
      v5 = 0;
    }

    [(TSWOverlayPanelView *)self setBottomHairlineColor:v5];
  }
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = TSWOverlayPanelView;
  [(TSWOverlayPanelView *)&v15 layoutSubviews];
  [(TSWOverlayPanelView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(TSWOverlayPanelView *)self additionalBackgroundInset];
  [(UIView *)self->_backgroundView setFrame:v4 + v14, v6 + v11, v8 - (v14 + v12), v10 - (v11 + v13)];
  [(TSWOverlayPanelView *)self p_layoutSublayers];
}

- (NSString)backdropGroupName
{
  objc_opt_class();
  v2 = TSUDynamicCast();

  return [v2 groupName];
}

- (void)setBackdropGroupName:(id)name
{
  objc_opt_class();
  v4 = TSUDynamicCast();

  [v4 setGroupName:name];
}

- (void)dealloc
{
  self->_layerHostingView = 0;

  self->_backgroundView = 0;
  self->mGradientLayer = 0;

  self->mBakedShadowLayer = 0;
  self->_topHairlineColor = 0;

  self->_bottomHairlineColor = 0;
  self->_topHairlineLayer = 0;

  self->_bottomHairlineLayer = 0;
  v3.receiver = self;
  v3.super_class = TSWOverlayPanelView;
  [(TSWOverlayPanelView *)&v3 dealloc];
}

- (void)p_resetAppearance
{
  [(CAGradientLayer *)[(TSWOverlayPanelView *)self gradientLayer] setColors:0];
  [(CAGradientLayer *)[(TSWOverlayPanelView *)self gradientLayer] setBackgroundColor:0];
  [(CAGradientLayer *)[(TSWOverlayPanelView *)self gradientLayer] setBorderColor:0];
  [(CAGradientLayer *)[(TSWOverlayPanelView *)self gradientLayer] setBorderWidth:0.0];
  bakedShadowLayer = [(TSWOverlayPanelView *)self bakedShadowLayer];
  LODWORD(v4) = 1.0;
  [(CALayer *)bakedShadowLayer setOpacity:v4];
  backgroundView = self->_backgroundView;

  [(UIView *)backgroundView removeFromSuperview];
}

- (BOOL)p_addBackgroundViewWithColor:(id)color
{
  if (!self->_backgroundView)
  {
    v5 = [UIView alloc];
    [(TSWOverlayPanelView *)self bounds];
    TSDRectWithSize();
    v6 = [v5 initWithFrame:?];
    self->_backgroundView = v6;
    [(UIView *)v6 setAutoresizingMask:18];
  }

  -[UIView setBackgroundColor:](self->_backgroundView, "setBackgroundColor:", [color UIColor]);
  if (![(UIView *)self->_backgroundView superview])
  {
    [(TSWOverlayPanelView *)self addSubview:self->_backgroundView];
    [(TSWOverlayPanelView *)self sendSubviewToBack:self->_backgroundView];
  }

  return 1;
}

- (BOOL)p_addBackdropWithSettings:(id)settings
{
  if (!self->_backgroundView)
  {
    v5 = [[_UIBackdropView alloc] initWithSettings:settings];
    if ([(UIView *)v5 effectView])
    {
      self->_backgroundView = v5;
    }

    else
    {
    }
  }

  objc_opt_class();
  v6 = TSUDynamicCast();
  v7 = v6;
  if (v6)
  {
    [v6 transitionToSettings:settings];
    if (![v7 superview])
    {
      [(TSWOverlayPanelView *)self addSubview:self->_backgroundView];
      [(TSWOverlayPanelView *)self sendSubviewToBack:self->_backgroundView];
    }
  }

  return v7 != 0;
}

- (void)alphaAnimationWillBegin
{
  layer = [(TSWOverlayPanelView *)self layer];

  [layer setAllowsGroupOpacity:0];
}

- (void)alphaAnimationDidEnd
{
  layer = [(TSWOverlayPanelView *)self layer];

  [layer setAllowsGroupOpacity:1];
}

- (void)setAppearance:(int)appearance
{
  v3 = *&appearance;
  [(TSWOverlayPanelView *)self p_resetAppearance];
  if (v3 == 2)
  {
    [(CAGradientLayer *)[(TSWOverlayPanelView *)self gradientLayer] setColors:0];
    -[CAGradientLayer setBackgroundColor:]([(TSWOverlayPanelView *)self gradientLayer], "setBackgroundColor:", [+[TSUColor colorWithWhite:alpha:](TSUColor CGColor:0.0]);
    [(CALayer *)[(TSWOverlayPanelView *)self bakedShadowLayer] setOpacity:0.0];
    v7 = 2;
LABEL_11:
    self->mAppearance = v7;
    goto LABEL_13;
  }

  if (v3 == 1)
  {
    v6 = [TSUColor colorWithWhite:0.980392157 alpha:0.9];
    if (![(TSWOverlayPanelView *)self p_addBackdropWithSettings:[_UIBackdropViewSettings settingsForPrivateStyle:2020]])
    {
      [(TSWOverlayPanelView *)self p_addBackgroundViewWithColor:v6];
    }

    v7 = 1;
    goto LABEL_11;
  }

  if (v3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  else
  {
    v5 = [TSUColor colorWithWhite:0.0 alpha:0.8];
    if (![(TSWOverlayPanelView *)self p_addBackdropWithSettings:[_UIBackdropViewSettings settingsForPrivateStyle:2030]])
    {
      [(TSWOverlayPanelView *)self p_addBackgroundViewWithColor:v5];
    }

    self->mAppearance = 0;
  }

LABEL_13:
  if (self->_topHairlineEnabled)
  {
    [(TSWOverlayPanelView *)self setTopHairlineColor:[(TSWOverlayPanelView *)self p_topHairlineColorForAppearance:[(TSWOverlayPanelView *)self appearance]]];
  }

  if (self->_bottomHairlineEnabled)
  {
    v8 = [(TSWOverlayPanelView *)self p_bottomHairlineColorForAppearance:[(TSWOverlayPanelView *)self appearance]];

    [(TSWOverlayPanelView *)self setBottomHairlineColor:v8];
  }
}

- (UIEdgeInsets)additionalShadowInset
{
  top = self->_additionalShadowInset.top;
  left = self->_additionalShadowInset.left;
  bottom = self->_additionalShadowInset.bottom;
  right = self->_additionalShadowInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)additionalBackgroundInset
{
  top = self->_additionalBackgroundInset.top;
  left = self->_additionalBackgroundInset.left;
  bottom = self->_additionalBackgroundInset.bottom;
  right = self->_additionalBackgroundInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end