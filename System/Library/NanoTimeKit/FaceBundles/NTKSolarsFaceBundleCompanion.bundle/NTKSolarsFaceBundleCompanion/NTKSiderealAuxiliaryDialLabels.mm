@interface NTKSiderealAuxiliaryDialLabels
- (NTKSiderealAuxiliaryDialLabels)initWithFrame:(CGRect)frame device:(id)device;
- (id)_curvedLabel;
- (void)_layoutTopLabel;
- (void)_setFontSize:(double)size monospaced:(BOOL)monospaced offset:(CGPoint)offset onLabel:(id)label;
- (void)applyTransitionFraction:(double)fraction;
- (void)didFinishTransition;
- (void)setBottomText:(id)text;
- (void)setTopText:(id)text;
- (void)setup;
- (void)traitCollectionDidChange:(id)change;
- (void)willStartTransition;
@end

@implementation NTKSiderealAuxiliaryDialLabels

- (NTKSiderealAuxiliaryDialLabels)initWithFrame:(CGRect)frame device:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  v16.receiver = self;
  v16.super_class = NTKSiderealAuxiliaryDialLabels;
  height = [(NTKSiderealAuxiliaryDialLabels *)&v16 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_device, device);
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
  _curvedLabel = [(NTKSiderealAuxiliaryDialLabels *)self _curvedLabel];
  topLabel = self->_topLabel;
  self->_topLabel = _curvedLabel;

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

  layer = [(UIView *)self->_topLabelContainerView layer];
  [layer setMask:self->_topLabelMask];

  v21 = [UIView alloc];
  [(NTKSiderealAuxiliaryDialLabels *)self bounds];
  v22 = [v21 initWithFrame:?];
  bottomLabelContainerView = self->_bottomLabelContainerView;
  self->_bottomLabelContainerView = v22;

  [(NTKSiderealAuxiliaryDialLabels *)self addSubview:self->_bottomLabelContainerView];
  _curvedLabel2 = [(NTKSiderealAuxiliaryDialLabels *)self _curvedLabel];
  bottomLabel = self->_bottomLabel;
  self->_bottomLabel = _curvedLabel2;

  [(CLKUICurvedColoringLabel *)self->_bottomLabel setAlpha:1.0];
  sub_BF58(self->_device, v41);
  [(CLKUICurvedColoringLabel *)self->_bottomLabel setCircleRadius:v42 * 0.5];
  [(CLKUICurvedColoringLabel *)self->_bottomLabel setInterior:1];
  font = [(CLKUICurvedColoringLabel *)self->_bottomLabel font];
  cLKFontWithMonospacedNumbers = [font CLKFontWithMonospacedNumbers];
  [(CLKUICurvedColoringLabel *)self->_bottomLabel setFont:cLKFontWithMonospacedNumbers];

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

  layer2 = [(UIView *)self->_bottomLabelContainerView layer];
  [layer2 setMask:self->_bottomLabelMask];

  [(NTKSiderealAuxiliaryDialLabels *)self applyTransitionFraction:0.0];
}

- (void)setTopText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_topText isEqualToString:?])
  {
    objc_storeStrong(&self->_topText, text);
    [(NTKSiderealAuxiliaryDialLabels *)self _layoutTopLabel];
  }
}

- (void)setBottomText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_bottomText isEqualToString:?])
  {
    objc_storeStrong(&self->_bottomText, text);
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

- (void)_setFontSize:(double)size monospaced:(BOOL)monospaced offset:(CGPoint)offset onLabel:(id)label
{
  y = offset.y;
  x = offset.x;
  monospacedCopy = monospaced;
  v11 = CLKRoundedFontDesignName;
  labelCopy = label;
  v13 = [CLKFont systemFontOfSize:v11 weight:size design:UIFontWeightRegular];
  cLKFontWithAlternativePunctuation = [v13 CLKFontWithAlternativePunctuation];

  if (monospacedCopy)
  {
    cLKFontWithMonospacedNumbers = [cLKFontWithAlternativePunctuation CLKFontWithMonospacedNumbers];

    cLKFontWithAlternativePunctuation = cLKFontWithMonospacedNumbers;
  }

  [labelCopy setFont:cLKFontWithAlternativePunctuation];
  [labelCopy sizeToFit];
  v20 = 0.0;
  v21 = 0.0;
  [labelCopy getTextCenter:&v20 startAngle:0 endAngle:0];
  [(NTKSiderealAuxiliaryDialLabels *)self bounds];
  CLKRectGetCenter();
  v17 = x + v16 - v20;
  v19 = y + v18 - v21;
  [labelCopy frame];
  [labelCopy setFrame:{v17, v19}];
}

- (void)willStartTransition
{
  layer = [(UIView *)self->_topLabelContainerView layer];
  [layer setMask:self->_topLabelMask];

  layer2 = [(UIView *)self->_bottomLabelContainerView layer];
  [layer2 setMask:self->_bottomLabelMask];
}

- (void)applyTransitionFraction:(double)fraction
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
  layer = [(UIView *)self->_topLabelContainerView layer];
  [layer setMask:0];

  layer2 = [(UIView *)self->_bottomLabelContainerView layer];
  [layer2 setMask:0];
}

- (id)_curvedLabel
{
  v2 = objc_opt_new();
  v3 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:16.0 design:UIFontWeightRegular];
  cLKFontWithAlternativePunctuation = [v3 CLKFontWithAlternativePunctuation];

  [v2 setFont:cLKFontWithAlternativePunctuation];
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

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = NTKSiderealAuxiliaryDialLabels;
  changeCopy = change;
  [(NTKSiderealAuxiliaryDialLabels *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(NTKSiderealAuxiliaryDialLabels *)self traitCollection:v8.receiver];
  legibilityWeight = [v5 legibilityWeight];
  legibilityWeight2 = [changeCopy legibilityWeight];

  if (legibilityWeight != legibilityWeight2)
  {
    [(NSMutableDictionary *)self->_fontSizeCache removeAllObjects];
    [(NTKSiderealAuxiliaryDialLabels *)self setNeedsLayout];
    [(NTKSiderealAuxiliaryDialLabels *)self _layoutTopLabel];
    [(NTKSiderealAuxiliaryDialLabels *)self _layoutBottomLabel];
  }
}

@end