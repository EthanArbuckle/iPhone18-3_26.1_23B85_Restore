@interface SCATModernMenuBackgroundView
- (BOOL)scatPerformAction:(int)action;
- (CGPath)_copyMenuPathWithNoTipForRect:(CGRect)rect;
- (CGPath)_copyMenuPathWithTipForRect:(CGRect)rect;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits includeTip:(BOOL)tip;
- (SCATModernMenuBackgroundView)initWithFrame:(CGRect)frame;
- (double)_adjustedXAnchorPositionToClearCornersOfRect:(CGRect)rect;
- (double)_menuCornerRadiusForRect:(CGRect)rect;
- (void)_updateBackdropWithPath:(CGPath *)path;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setMenuBorderPath:(CGPath *)path;
- (void)setNormalizedHorizontalTipCenter:(double)center;
- (void)setTip:(int64_t)tip;
@end

@implementation SCATModernMenuBackgroundView

- (SCATModernMenuBackgroundView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = SCATModernMenuBackgroundView;
  v3 = [(SCATModernMenuBackgroundView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setTip:(int64_t)tip
{
  if (self->_tip != tip)
  {
    self->_tip = tip;
    [(SCATModernMenuBackgroundView *)self setNeedsLayout];
  }
}

- (void)setNormalizedHorizontalTipCenter:(double)center
{
  if (self->_normalizedHorizontalTipCenter != center)
  {
    [(SCATModernMenuBackgroundView *)self setNeedsLayout];
    self->_normalizedHorizontalTipCenter = center;
  }
}

- (void)setMenuBorderPath:(CGPath *)path
{
  if (path)
  {
    CGPathRetain(path);
  }

  menuBorderPath = self->_menuBorderPath;
  if (menuBorderPath)
  {
    CGPathRelease(menuBorderPath);
  }

  self->_menuBorderPath = path;
}

- (CGSize)sizeThatFits:(CGSize)fits includeTip:(BOOL)tip
{
  tipCopy = tip;
  v6 = [(SCATModernMenuBackgroundView *)self containerView:fits.width];
  [v6 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v8 = v7;
  v10 = v9;

  if (tipCopy)
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
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
  containerView = [(SCATModernMenuBackgroundView *)self containerView];
  [containerView setFrame:{v7, v9, v11, v13}];
}

- (double)_menuCornerRadiusForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  v5 = 0.0;
  if (![(SCATModernMenuBackgroundView *)self shouldRoundMenuCorners:rect.origin.x])
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

- (void)_updateBackdropWithPath:(CGPath *)path
{
  v7 = objc_opt_new();
  [(SCATModernMenuBackgroundView *)self bounds];
  [v7 setFrame:?];
  [v7 setPath:path];
  layer = [(UIVisualEffectView *)self->_backdropView layer];
  [layer setMask:v7];

  glassBackgroundView = [(SCATModernMenuBackgroundView *)self glassBackgroundView];
  [glassBackgroundView _updateGlassWithPath:path];
}

- (double)_adjustedXAnchorPositionToClearCornersOfRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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

- (CGPath)_copyMenuPathWithTipForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (CGRectIsEmpty(rect))
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

- (CGPath)_copyMenuPathWithNoTipForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (CGRectIsEmpty(rect))
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

- (BOOL)scatPerformAction:(int)action
{
  if (action == 2010)
  {
    v4 = +[SCATScannerManager sharedManager];
    menu = [v4 menu];

    [menu handleMenuWasActivatedByScanner];
    v6 = +[HNDAccessibilityManager sharedManager];
    [v6 refreshElements];
  }

  return action == 2010;
}

@end