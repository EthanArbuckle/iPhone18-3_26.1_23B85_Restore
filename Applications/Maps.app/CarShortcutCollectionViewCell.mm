@interface CarShortcutCollectionViewCell
+ (id)subtitleFontWithTraitCollection:(id)a3;
+ (id)titleFontWithTraitCollection:(id)a3;
- (CarShortcutCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)_createFocusRingLayer;
- (void)_updateFocus;
- (void)didMoveToWindow;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setFocusOverridden:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateFocusRingColor;
@end

@implementation CarShortcutCollectionViewCell

- (void)updateFocusRingColor
{
  v5 = +[UITraitCollection _currentTraitCollection];
  v3 = [(CarShortcutCollectionViewCell *)self traitCollection];
  [UITraitCollection _setCurrentTraitCollection:v3];

  v4 = [(CarShortcutCollectionViewCell *)self focusColor];
  -[CAShapeLayer setStrokeColor:](self->_focusRingLayer, "setStrokeColor:", [v4 CGColor]);

  [UITraitCollection _setCurrentTraitCollection:v5];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = CarShortcutCollectionViewCell;
  [(CarShortcutCollectionViewCell *)&v4 didMoveToWindow];
  v3 = [(CarShortcutCollectionViewCell *)self window];

  if (v3)
  {
    [(CarShortcutCollectionViewCell *)self updateFocusRingColor];
  }
}

- (void)_updateFocus
{
  if (([(CarShortcutCollectionViewCell *)self isFocused]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(CarShortcutCollectionViewCell *)self focusOverridden]^ 1;
  }

  if (v3 != [(CAShapeLayer *)self->_focusRingLayer isHidden])
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [(CAShapeLayer *)self->_focusRingLayer setHidden:v3];

    +[CATransaction commit];
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = CarShortcutCollectionViewCell;
  [(CarShortcutCollectionViewCell *)&v10 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [v6 nextFocusedItem];
  v8 = v7;
  if (v7 == self)
  {

LABEL_5:
    [(CarShortcutCollectionViewCell *)self _updateFocus];
    goto LABEL_6;
  }

  v9 = [v6 previouslyFocusedItem];

  if (v9 == self)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = CarShortcutCollectionViewCell;
  v4 = a3;
  [(ShortcutsRowCollectionViewCell *)&v8 traitCollectionDidChange:v4];
  v5 = [(CarShortcutCollectionViewCell *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(CarShortcutCollectionViewCell *)self updateFocusRingColor];
  }
}

- (void)setFocusOverridden:(BOOL)a3
{
  if (self->_focusOverridden != a3)
  {
    self->_focusOverridden = a3;
    [(CarShortcutCollectionViewCell *)self _updateFocus];
  }
}

- (void)_createFocusRingLayer
{
  if (!self->_focusRingLayer)
  {
    v3 = +[CAShapeLayer layer];
    focusRingLayer = self->_focusRingLayer;
    self->_focusRingLayer = v3;

    [(CAShapeLayer *)self->_focusRingLayer setHidden:1];
    v5 = +[UIColor clearColor];
    -[CAShapeLayer setFillColor:](self->_focusRingLayer, "setFillColor:", [v5 CGColor]);

    [(CAShapeLayer *)self->_focusRingLayer setLineWidth:3.0];
    [(CAShapeLayer *)self->_focusRingLayer setAnchorPoint:0.5, 0.5];
    [objc_opt_class() imageSize];
    [(CAShapeLayer *)self->_focusRingLayer setBounds:0.0, 0.0, v6 + 3.0, v6 + 3.0];
    [(CAShapeLayer *)self->_focusRingLayer bounds];
    v7 = CGPathCreateWithEllipseInRect(v11, 0);
    [(CAShapeLayer *)self->_focusRingLayer setPath:v7];
    CGPathRelease(v7);
    [(CarShortcutCollectionViewCell *)self updateFocusRingColor];
    v8 = [(CarShortcutCollectionViewCell *)self contentView];
    v9 = [v8 layer];
    [v9 addSublayer:self->_focusRingLayer];

    [(CarShortcutCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CarShortcutCollectionViewCell;
  [(CarShortcutCollectionViewCell *)&v3 prepareForReuse];
  [(CarShortcutCollectionViewCell *)self setFocusOverridden:0];
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = CarShortcutCollectionViewCell;
  [(ShortcutsRowCollectionViewCell *)&v10 layoutSubviews];
  v3 = [(CarShortcutCollectionViewCell *)self contentView];
  [v3 bounds];
  CGRectGetWidth(v11);
  v4 = [(CarShortcutCollectionViewCell *)self contentView];
  UIRoundToViewScale();
  v6 = v5;
  [objc_opt_class() imageSize];
  v8 = v7;
  [objc_opt_class() imageTopMargin];
  [(CAShapeLayer *)self->_focusRingLayer setPosition:v6, v9 + v8 * 0.5];
}

- (CarShortcutCollectionViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CarShortcutCollectionViewCell;
  v3 = [(ShortcutsRowCollectionViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CarShortcutCollectionViewCell *)v3 _createFocusRingLayer];
  }

  return v4;
}

+ (id)subtitleFontWithTraitCollection:(id)a3
{
  v3 = [UIFont system12CompatibleWithTraitCollection:a3];
  if (_os_feature_enabled_impl())
  {
    v4 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleCaption1];
    v5 = [v4 scaledFontForFont:v3 maximumPointSize:14.0];

    v3 = v5;
  }

  return v3;
}

+ (id)titleFontWithTraitCollection:(id)a3
{
  v3 = [UIFont system12MediumCompatibleWithTraitCollection:a3];
  if (_os_feature_enabled_impl())
  {
    v4 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleCaption1];
    v5 = [v4 scaledFontForFont:v3 maximumPointSize:14.0];

    v3 = v5;
  }

  return v3;
}

@end