@interface SCATModernMenuBackgroundView
- (BOOL)scatPerformAction:(int)a3;
- (CGPath)_copyMenuPathWithNoTipForRect:(CGRect)a3;
- (CGPath)_copyMenuPathWithTipForRect:(CGRect)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3 includeTip:(BOOL)a4;
- (SCATModernMenuBackgroundView)initWithFrame:(CGRect)a3;
- (double)_adjustedXAnchorPositionToClearCornersOfRect:(CGRect)a3;
- (double)_menuCornerRadiusForRect:(CGRect)a3;
- (void)_updateBackdropWithPath:(CGPath *)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setMenuBorderPath:(CGPath *)a3;
- (void)setNormalizedHorizontalTipCenter:(double)a3;
- (void)setTip:(int64_t)a3;
@end

@implementation SCATModernMenuBackgroundView

- (SCATModernMenuBackgroundView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = SCATModernMenuBackgroundView;
  v3 = [(SCATModernMenuBackgroundView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    if ([objc_opt_class() _solariumGlassEnabled])
    {
      v4 = [[_AXGlassBackgroundView alloc] initWithFrame:0.0, 0.0, 100.0, 100.0];
      [(_AXGlassBackgroundView *)v4 setAutoresizingMask:18];
      [(SCATModernMenuBackgroundView *)v3 addSubview:v4];
      [(SCATModernMenuBackgroundView *)v3 setGlassBackgroundView:v4];
    }

    v5 = [[SCATModernMenuBackgroundContainerView alloc] initWithFrame:0.0, 0.0, 100.0, 100.0];
    [(SCATModernMenuBackgroundView *)v3 setContainerView:v5];
    [(SCATModernMenuBackgroundView *)v3 addSubview:v5];
    v6 = [UIBlurEffect effectWithStyle:9];
    if ([objc_opt_class() _solariumGlassEnabled])
    {

      v6 = 0;
    }

    v7 = [[UIVisualEffectView alloc] initWithEffect:v6];
    backdropView = v3->_backdropView;
    v3->_backdropView = v7;
  }

  return v3;
}

- (void)dealloc
{
  [(SCATModernMenuBackgroundView *)self setMenuBorderPath:0];
  v3.receiver = self;
  v3.super_class = SCATModernMenuBackgroundView;
  [(SCATModernMenuBackgroundView *)&v3 dealloc];
}

- (void)setTip:(int64_t)a3
{
  if (self->_tip != a3)
  {
    self->_tip = a3;
    [(SCATModernMenuBackgroundView *)self setNeedsLayout];
  }
}

- (void)setNormalizedHorizontalTipCenter:(double)a3
{
  if (self->_normalizedHorizontalTipCenter != a3)
  {
    [(SCATModernMenuBackgroundView *)self setNeedsLayout];
    self->_normalizedHorizontalTipCenter = a3;
  }
}

- (void)setMenuBorderPath:(CGPath *)a3
{
  if (a3)
  {
    CGPathRetain(a3);
  }

  menuBorderPath = self->_menuBorderPath;
  if (menuBorderPath)
  {
    CGPathRelease(menuBorderPath);
  }

  self->_menuBorderPath = a3;
}

- (CGSize)sizeThatFits:(CGSize)a3 includeTip:(BOOL)a4
{
  v4 = a4;
  v6 = [(SCATModernMenuBackgroundView *)self containerView:a3.width];
  [v6 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v8 = v7;
  v10 = v9;

  if (v4)
  {
    [(SCATModernMenuBackgroundView *)self _menuTipHeight];
    v10 = v10 + v11;
  }

  v12 = v8;
  v13 = v10;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(SCATModernMenuBackgroundView *)self tip]!= 0;

  [(SCATModernMenuBackgroundView *)self sizeThatFits:v6 includeTip:width, height];
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  tip = self->_tip;
  [(SCATModernMenuBackgroundView *)self bounds];
  if (tip)
  {
    v4 = [(SCATModernMenuBackgroundView *)self _copyMenuPathWithTipForRect:?];
  }

  else
  {
    v4 = [(SCATModernMenuBackgroundView *)self _copyMenuPathWithNoTipForRect:?];
  }

  v5 = v4;
  [(SCATModernMenuBackgroundView *)self setMenuBorderPath:v4];
  [(SCATModernMenuBackgroundView *)self _updateBackdropWithPath:v5];
  CGPathRelease(v5);
  [(SCATModernMenuBackgroundView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if ([(SCATModernMenuBackgroundView *)self tip]== 1)
  {
    [(SCATModernMenuBackgroundView *)self _menuTipHeight];
    v9 = v9 + v14;
  }

  else if ([(SCATModernMenuBackgroundView *)self tip]!= 2)
  {
    goto LABEL_8;
  }

  [(SCATModernMenuBackgroundView *)self _menuTipHeight];
  v13 = v13 - v15;
LABEL_8:
  v16 = [(SCATModernMenuBackgroundView *)self containerView];
  [v16 setFrame:{v7, v9, v11, v13}];
}

- (double)_menuCornerRadiusForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v5 = 0.0;
  if (![(SCATModernMenuBackgroundView *)self shouldRoundMenuCorners:a3.origin.x])
  {
    return v5;
  }

  v5 = 10.0;
  if (!_UISolariumEnabled())
  {
    return v5;
  }

  v6 = +[SCATStyleProvider sharedStyleProvider];
  [v6 cornerRadiusForSize:{width, height}];
  v8 = v7;

  return v8;
}

- (void)_updateBackdropWithPath:(CGPath *)a3
{
  v7 = objc_opt_new();
  [(SCATModernMenuBackgroundView *)self bounds];
  [v7 setFrame:?];
  [v7 setPath:a3];
  v5 = [(UIVisualEffectView *)self->_backdropView layer];
  [v5 setMask:v7];

  v6 = [(SCATModernMenuBackgroundView *)self glassBackgroundView];
  [v6 _updateGlassWithPath:a3];
}

- (double)_adjustedXAnchorPositionToClearCornersOfRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(SCATModernMenuBackgroundView *)self normalizedHorizontalTipCenter];
  v9 = width * v8;
  [(SCATModernMenuBackgroundView *)self _menuCornerRadiusForRect:x, y, width, height];
  v11 = v10;
  [(SCATModernMenuBackgroundView *)self _menuTipBase];
  v13 = v12;
  [(SCATModernMenuBackgroundView *)self _menuTipBaseCornerRadius];
  v15 = v13 * 0.5 + v11 + v14;
  if (v9 >= v15)
  {
    v16 = width - v11 - v14 - v13 * 0.5;
    v15 = v9;
    if (v9 > v16)
    {
      return v16;
    }
  }

  return v15;
}

- (CGPath)_copyMenuPathWithTipForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsEmpty(a3))
  {
    _AXLogWithFacility();

    return CGPathCreateMutable();
  }

  else
  {
    [(SCATModernMenuBackgroundView *)self _adjustedXAnchorPositionToClearCornersOfRect:x, y, width, height];
    v10 = v9;
    [(SCATModernMenuBackgroundView *)self _menuCornerRadiusForRect:x, y, width, height];
    v12 = v11;
    v25 = v11;
    [(SCATModernMenuBackgroundView *)self _menuTipBase];
    v24 = v13;
    [(SCATModernMenuBackgroundView *)self _menuTipHeight];
    v15 = v14;
    [(SCATModernMenuBackgroundView *)self _menuTipCornerRadius];
    v27 = x;
    v17 = v16;
    [(SCATModernMenuBackgroundView *)self _menuTipBaseCornerRadius];
    v26 = y;
    v19 = v18;
    v20 = +[UIBezierPath bezierPath];
    [v20 moveToPoint:{0.0, v12 + v15}];
    v21 = v12 / 1.528665;
    [v20 _addRoundedCornerWithTrueCorner:1 radius:0 corner:0.0 clockwise:{v15, v12 / 1.528665, v12 / 1.528665}];
    v22 = v10 - v24 * 0.5;
    [v20 addLineToPoint:{v22 - v19, v15}];
    [v20 ax_addArcWithFirstPoint:v22 secondPoint:v15 cornerRadius:{v10 - v17, v17, v19}];
    [v20 ax_addArcWithFirstPoint:v10 secondPoint:0.0 cornerRadius:{v10 + v17, v17, v17}];
    [v20 ax_addArcWithFirstPoint:v10 + v24 * 0.5 secondPoint:v15 cornerRadius:{v10 + v24 * 0.5 + v19, v15, v19}];
    [v20 addLineToPoint:{width - v25, v15}];
    [v20 _addRoundedCornerWithTrueCorner:2 radius:0 corner:width clockwise:{v15, v21, v21}];
    [v20 addLineToPoint:{width, height - v25}];
    [v20 _addRoundedCornerWithTrueCorner:8 radius:0 corner:width clockwise:{height, v21, v21}];
    [v20 addLineToPoint:{v25, height}];
    [v20 _addRoundedCornerWithTrueCorner:4 radius:0 corner:0.0 clockwise:{height, v21, v21}];
    [v20 closePath];
    memset(&transform, 0, sizeof(transform));
    CGAffineTransformMakeTranslation(&transform, v27, v26);
    if (self->_tip == 2)
    {
      v28 = transform;
      CGAffineTransformTranslate(&v29, &v28, 0.0, height);
      transform = v29;
      v28 = v29;
      CGAffineTransformScale(&v29, &v28, 1.0, -1.0);
      transform = v29;
    }

    v23 = CGPathCreateCopyByTransformingPath([v20 CGPath], &transform);

    return v23;
  }
}

- (CGPath)_copyMenuPathWithNoTipForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsEmpty(a3))
  {
    _AXLogWithFacility();

    return CGPathCreateMutable();
  }

  else
  {
    [(SCATModernMenuBackgroundView *)self _menuCornerRadiusForRect:x, y, width, height];
    v10 = [UIBezierPath bezierPathWithRoundedRect:x cornerRadius:y, width, height, v9];
    memset(&transform, 0, sizeof(transform));
    CGAffineTransformMakeTranslation(&transform, x, y);
    v11 = CGPathCreateCopyByTransformingPath([v10 CGPath], &transform);

    return v11;
  }
}

- (BOOL)scatPerformAction:(int)a3
{
  if (a3 == 2010)
  {
    v4 = +[SCATScannerManager sharedManager];
    v5 = [v4 menu];

    [v5 handleMenuWasActivatedByScanner];
    v6 = +[HNDAccessibilityManager sharedManager];
    [v6 refreshElements];
  }

  return a3 == 2010;
}

@end