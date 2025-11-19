@interface NTKSiderealAuxiliaryDialLabels
- (NTKSiderealAuxiliaryDialLabels)initWithFrame:(CGRect)a3 device:(id)a4;
- (id)_curvedLabel;
- (void)_layoutTopLabel;
- (void)_setFontSize:(double)a3 monospaced:(BOOL)a4 offset:(CGPoint)a5 onLabel:(id)a6;
- (void)applyTransitionFraction:(double)a3;
- (void)didFinishTransition;
- (void)setBottomText:(id)a3;
- (void)setTopText:(id)a3;
- (void)setup;
- (void)traitCollectionDidChange:(id)a3;
- (void)willStartTransition;
@end

@implementation NTKSiderealAuxiliaryDialLabels

- (NTKSiderealAuxiliaryDialLabels)initWithFrame:(CGRect)a3 device:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = NTKSiderealAuxiliaryDialLabels;
  v11 = [(NTKSiderealAuxiliaryDialLabels *)&v16 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_device, a4);
    v13 = +[NSMutableDictionary dictionary];
    fontSizeCache = v12->_fontSizeCache;
    v12->_fontSizeCache = v13;

    [(NTKSiderealAuxiliaryDialLabels *)v12 setup];
  }

  return v12;
}

- (void)setup
{
  [(NTKSiderealAuxiliaryDialLabels *)self bounds];
  CLKRectGetCenter();
  [(NTKSiderealAuxiliaryDialLabels *)self bounds];
  v40 = NTKCircleSectorPath();
  v3 = [UIView alloc];
  [(NTKSiderealAuxiliaryDialLabels *)self bounds];
  v4 = [v3 initWithFrame:?];
  topLabelContainerView = self->_topLabelContainerView;
  self->_topLabelContainerView = v4;

  [(NTKSiderealAuxiliaryDialLabels *)self addSubview:self->_topLabelContainerView];
  v6 = [(NTKSiderealAuxiliaryDialLabels *)self _curvedLabel];
  topLabel = self->_topLabel;
  self->_topLabel = v6;

  [(CLKUICurvedColoringLabel *)self->_topLabel setAlpha:1.0];
  sub_BF58(self->_device, v43);
  [(CLKUICurvedColoringLabel *)self->_topLabel setCircleRadius:v44 * 0.5];
  [(UIView *)self->_topLabelContainerView addSubview:self->_topLabel];
  v8 = +[CAShapeLayer layer];
  topLabelMask = self->_topLabelMask;
  self->_topLabelMask = v8;

  v10 = self->_topLabelMask;
  [(NTKSiderealAuxiliaryDialLabels *)self bounds];
  [(CAShapeLayer *)v10 setBounds:?];
  v11 = self->_topLabelMask;
  v12 = +[UIColor whiteColor];
  -[CAShapeLayer setFillColor:](v11, "setFillColor:", [v12 CGColor]);

  v13 = self->_topLabelMask;
  [(NTKSiderealAuxiliaryDialLabels *)self bounds];
  CLKRectGetCenter();
  [(CAShapeLayer *)v13 setPosition:?];
  v14 = self->_topLabelMask;
  v15 = v40;
  -[CAShapeLayer setPath:](v14, "setPath:", [v40 CGPath]);
  [(CAShapeLayer *)self->_topLabelMask setShadowRadius:7.0];
  LODWORD(v16) = 1.0;
  [(CAShapeLayer *)self->_topLabelMask setShadowOpacity:v16];
  height = CGSizeZero.height;
  [(CAShapeLayer *)self->_topLabelMask setShadowOffset:CGSizeZero.width, height];
  v18 = self->_topLabelMask;
  v19 = +[UIColor whiteColor];
  -[CAShapeLayer setShadowColor:](v18, "setShadowColor:", [v19 CGColor]);

  v20 = [(UIView *)self->_topLabelContainerView layer];
  [v20 setMask:self->_topLabelMask];

  v21 = [UIView alloc];
  [(NTKSiderealAuxiliaryDialLabels *)self bounds];
  v22 = [v21 initWithFrame:?];
  bottomLabelContainerView = self->_bottomLabelContainerView;
  self->_bottomLabelContainerView = v22;

  [(NTKSiderealAuxiliaryDialLabels *)self addSubview:self->_bottomLabelContainerView];
  v24 = [(NTKSiderealAuxiliaryDialLabels *)self _curvedLabel];
  bottomLabel = self->_bottomLabel;
  self->_bottomLabel = v24;

  [(CLKUICurvedColoringLabel *)self->_bottomLabel setAlpha:1.0];
  sub_BF58(self->_device, v41);
  [(CLKUICurvedColoringLabel *)self->_bottomLabel setCircleRadius:v42 * 0.5];
  [(CLKUICurvedColoringLabel *)self->_bottomLabel setInterior:1];
  v26 = [(CLKUICurvedColoringLabel *)self->_bottomLabel font];
  v27 = [v26 CLKFontWithMonospacedNumbers];
  [(CLKUICurvedColoringLabel *)self->_bottomLabel setFont:v27];

  [(UIView *)self->_bottomLabelContainerView addSubview:self->_bottomLabel];
  v28 = +[CAShapeLayer layer];
  bottomLabelMask = self->_bottomLabelMask;
  self->_bottomLabelMask = v28;

  v30 = self->_bottomLabelMask;
  [(NTKSiderealAuxiliaryDialLabels *)self bounds];
  [(CAShapeLayer *)v30 setBounds:?];
  v31 = self->_bottomLabelMask;
  v32 = +[UIColor whiteColor];
  -[CAShapeLayer setFillColor:](v31, "setFillColor:", [v32 CGColor]);

  v33 = self->_bottomLabelMask;
  [(NTKSiderealAuxiliaryDialLabels *)self bounds];
  CLKRectGetCenter();
  [(CAShapeLayer *)v33 setPosition:?];
  v34 = self->_bottomLabelMask;
  v35 = v40;
  -[CAShapeLayer setPath:](v34, "setPath:", [v40 CGPath]);
  [(CAShapeLayer *)self->_bottomLabelMask setShadowRadius:7.0];
  LODWORD(v36) = 1.0;
  [(CAShapeLayer *)self->_bottomLabelMask setShadowOpacity:v36];
  [(CAShapeLayer *)self->_bottomLabelMask setShadowOffset:CGSizeZero.width, height];
  v37 = self->_bottomLabelMask;
  v38 = +[UIColor whiteColor];
  -[CAShapeLayer setShadowColor:](v37, "setShadowColor:", [v38 CGColor]);

  v39 = [(UIView *)self->_bottomLabelContainerView layer];
  [v39 setMask:self->_bottomLabelMask];

  [(NTKSiderealAuxiliaryDialLabels *)self applyTransitionFraction:0.0];
}

- (void)setTopText:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_topText isEqualToString:?])
  {
    objc_storeStrong(&self->_topText, a3);
    [(NTKSiderealAuxiliaryDialLabels *)self _layoutTopLabel];
  }
}

- (void)setBottomText:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_bottomText isEqualToString:?])
  {
    objc_storeStrong(&self->_bottomText, a3);
    [(NTKSiderealAuxiliaryDialLabels *)self _layoutBottomLabel];
  }
}

- (void)_layoutTopLabel
{
  topLabel = self->_topLabel;
  topText = self->_topText;
  sub_BF58(self->_device, v7);
  v5 = v8;
  v6 = v9;

  [(NTKSiderealAuxiliaryDialLabels *)self _layoutLabel:topLabel text:topText monospaced:0 offset:1 useCache:v5, v6];
}

- (void)_setFontSize:(double)a3 monospaced:(BOOL)a4 offset:(CGPoint)a5 onLabel:(id)a6
{
  y = a5.y;
  x = a5.x;
  v8 = a4;
  v11 = CLKRoundedFontDesignName;
  v12 = a6;
  v13 = [CLKFont systemFontOfSize:v11 weight:a3 design:UIFontWeightRegular];
  v14 = [v13 CLKFontWithAlternativePunctuation];

  if (v8)
  {
    v15 = [v14 CLKFontWithMonospacedNumbers];

    v14 = v15;
  }

  [v12 setFont:v14];
  [v12 sizeToFit];
  v20 = 0.0;
  v21 = 0.0;
  [v12 getTextCenter:&v20 startAngle:0 endAngle:0];
  [(NTKSiderealAuxiliaryDialLabels *)self bounds];
  CLKRectGetCenter();
  v17 = x + v16 - v20;
  v19 = y + v18 - v21;
  [v12 frame];
  [v12 setFrame:{v17, v19}];
}

- (void)willStartTransition
{
  v3 = [(UIView *)self->_topLabelContainerView layer];
  [v3 setMask:self->_topLabelMask];

  v4 = [(UIView *)self->_bottomLabelContainerView layer];
  [v4 setMask:self->_bottomLabelMask];
}

- (void)applyTransitionFraction:(double)a3
{
  CLKInterpolateBetweenFloatsUnclipped();
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  topLabelMask = self->_topLabelMask;
  CLKDegreesToRadians();
  CATransform3DMakeRotation(&v8, v5, 0.0, 0.0, 1.0);
  [(CAShapeLayer *)topLabelMask setTransform:&v8];
  bottomLabelMask = self->_bottomLabelMask;
  CLKDegreesToRadians();
  CATransform3DMakeRotation(&v8, v7, 0.0, 0.0, 1.0);
  [(CAShapeLayer *)bottomLabelMask setTransform:&v8];
  +[CATransaction commit];
}

- (void)didFinishTransition
{
  v3 = [(UIView *)self->_topLabelContainerView layer];
  [v3 setMask:0];

  v4 = [(UIView *)self->_bottomLabelContainerView layer];
  [v4 setMask:0];
}

- (id)_curvedLabel
{
  v2 = objc_opt_new();
  v3 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:16.0 design:UIFontWeightRegular];
  v4 = [v3 CLKFontWithAlternativePunctuation];

  [v2 setFont:v4];
  v5 = +[UIColor whiteColor];
  [v2 setColor:v5];

  [v2 setUsesLegibility:0];
  [v2 setUppercase:1];
  [v2 setInterior:0];
  [v2 setCenterAngle:0.0];
  CLKDegreesToRadians();
  [v2 setMaxAngularWidth:?];
  [v2 setTracking:100.0];

  return v2;
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = NTKSiderealAuxiliaryDialLabels;
  v4 = a3;
  [(NTKSiderealAuxiliaryDialLabels *)&v8 traitCollectionDidChange:v4];
  v5 = [(NTKSiderealAuxiliaryDialLabels *)self traitCollection:v8.receiver];
  v6 = [v5 legibilityWeight];
  v7 = [v4 legibilityWeight];

  if (v6 != v7)
  {
    [(NSMutableDictionary *)self->_fontSizeCache removeAllObjects];
    [(NTKSiderealAuxiliaryDialLabels *)self setNeedsLayout];
    [(NTKSiderealAuxiliaryDialLabels *)self _layoutTopLabel];
    [(NTKSiderealAuxiliaryDialLabels *)self _layoutBottomLabel];
  }
}

@end