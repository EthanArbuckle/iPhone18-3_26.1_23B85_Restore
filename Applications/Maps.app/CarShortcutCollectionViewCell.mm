@interface CarShortcutCollectionViewCell
+ (id)subtitleFontWithTraitCollection:(id)collection;
+ (id)titleFontWithTraitCollection:(id)collection;
- (CarShortcutCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)_createFocusRingLayer;
- (void)_updateFocus;
- (void)didMoveToWindow;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setFocusOverridden:(BOOL)overridden;
- (void)traitCollectionDidChange:(id)change;
- (void)updateFocusRingColor;
@end

@implementation CarShortcutCollectionViewCell

- (void)updateFocusRingColor
{
  v5 = +[UITraitCollection _currentTraitCollection];
  traitCollection = [(CarShortcutCollectionViewCell *)self traitCollection];
  [UITraitCollection _setCurrentTraitCollection:traitCollection];

  focusColor = [(CarShortcutCollectionViewCell *)self focusColor];
  -[CAShapeLayer setStrokeColor:](self->_focusRingLayer, "setStrokeColor:", [focusColor CGColor]);

  [UITraitCollection _setCurrentTraitCollection:v5];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = CarShortcutCollectionViewCell;
  [(CarShortcutCollectionViewCell *)&v4 didMoveToWindow];
  window = [(CarShortcutCollectionViewCell *)self window];

  if (window)
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

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = CarShortcutCollectionViewCell;
  [(CarShortcutCollectionViewCell *)&v10 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  nextFocusedItem = [contextCopy nextFocusedItem];
  v8 = nextFocusedItem;
  if (nextFocusedItem == self)
  {

LABEL_5:
    [(CarShortcutCollectionViewCell *)self _updateFocus];
    goto LABEL_6;
  }

  previouslyFocusedItem = [contextCopy previouslyFocusedItem];

  if (previouslyFocusedItem == self)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = CarShortcutCollectionViewCell;
  changeCopy = change;
  [(ShortcutsRowCollectionViewCell *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(CarShortcutCollectionViewCell *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(CarShortcutCollectionViewCell *)self updateFocusRingColor];
  }
}

- (void)setFocusOverridden:(BOOL)overridden
{
  if (self->_focusOverridden != overridden)
  {
    self->_focusOverridden = overridden;
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
    contentView = [(CarShortcutCollectionViewCell *)self contentView];
    layer = [contentView layer];
    [layer addSublayer:self->_focusRingLayer];

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
  contentView = [(CarShortcutCollectionViewCell *)self contentView];
  [contentView bounds];
  CGRectGetWidth(v11);
  contentView2 = [(CarShortcutCollectionViewCell *)self contentView];
  UIRoundToViewScale();
  v6 = v5;
  [objc_opt_class() imageSize];
  v8 = v7;
  [objc_opt_class() imageTopMargin];
  [(CAShapeLayer *)self->_focusRingLayer setPosition:v6, v9 + v8 * 0.5];
}

- (CarShortcutCollectionViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CarShortcutCollectionViewCell;
  v3 = [(ShortcutsRowCollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CarShortcutCollectionViewCell *)v3 _createFocusRingLayer];
  }

  return v4;
}

+ (id)subtitleFontWithTraitCollection:(id)collection
{
  v3 = [UIFont system12CompatibleWithTraitCollection:collection];
  if (_os_feature_enabled_impl())
  {
    v4 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleCaption1];
    v5 = [v4 scaledFontForFont:v3 maximumPointSize:14.0];

    v3 = v5;
  }

  return v3;
}

+ (id)titleFontWithTraitCollection:(id)collection
{
  v3 = [UIFont system12MediumCompatibleWithTraitCollection:collection];
  if (_os_feature_enabled_impl())
  {
    v4 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleCaption1];
    v5 = [v4 scaledFontForFont:v3 maximumPointSize:14.0];

    v3 = v5;
  }

  return v3;
}

@end