@interface CarFocusableProgressButton
- (void)_commonInit;
- (void)_makeCloseButtonImagesWithColor:(id)color isFocus:(BOOL)focus;
- (void)_updateColors;
- (void)focusDidChange:(BOOL)change;
- (void)setProgressFillColor:(id)color;
- (void)setProgressFillFocusedColor:(id)color;
- (void)setProgressionHidden:(BOOL)hidden;
- (void)startProgressAnimation;
@end

@implementation CarFocusableProgressButton

- (void)_updateColors
{
  isFocused = [(CarFocusableProgressButton *)self isFocused];
  progressionHidden = [(CarFocusableProgressButton *)self progressionHidden];
  v5 = &OBJC_IVAR___CarFocusableProgressButton__closeButtonImageUnFocusedProgress;
  if (progressionHidden)
  {
    v5 = &OBJC_IVAR___CarFocusableProgressButton__closeButtonImageUnFocusedNoProgress;
  }

  v6 = &OBJC_IVAR___CarFocusableProgressButton__closeButtonImageFocusedProgress;
  if (progressionHidden)
  {
    v6 = &OBJC_IVAR___CarFocusableProgressButton__closeButtonImageFocusedNoProgress;
  }

  if (isFocused)
  {
    v5 = v6;
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  if (isFocused)
  {
    v8 = &OBJC_IVAR___CarFocusableProgressButton__progressFillFocusedColor;
  }

  else
  {
    v8 = &OBJC_IVAR___CarFocusableProgressButton__progressFillColor;
  }

  [(CarFocusableProgressButton *)self setImage:*(&self->super.super.super.super.super.super.super.isa + *v5) forState:v7];
  [(MapsCircularProgressView *)self->_progressView setProgressLayerColor:*(&self->super.super.super.super.super.super.super.isa + *v8)];
  v9 = +[UIColor systemGray2Color];
  [(MapsCircularProgressView *)self->_progressView setBackgroundLayerColor:v9];
}

- (void)_makeCloseButtonImagesWithColor:(id)color isFocus:(BOOL)focus
{
  focusCopy = focus;
  colorCopy = color;
  v18 = colorCopy;
  v7 = [NSArray arrayWithObjects:&v18 count:1];
  v8 = [UIImage _mapsCar_systemImageNamed:@"xmark" textStyle:UIFontTextStyleCallout weight:6 paletteColors:v7];

  v9 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:12.0];
  v10 = [v8 imageByApplyingSymbolConfiguration:v9];
  v11 = &OBJC_IVAR___CarFocusableProgressButton__closeButtonImageUnFocusedNoProgress;
  if (focusCopy)
  {
    v11 = &OBJC_IVAR___CarFocusableProgressButton__closeButtonImageFocusedNoProgress;
    v12 = &OBJC_IVAR___CarFocusableProgressButton__closeButtonImageFocusedProgress;
  }

  else
  {
    v12 = &OBJC_IVAR___CarFocusableProgressButton__closeButtonImageUnFocusedProgress;
  }

  v13 = *v11;
  v14 = *(&self->super.super.super.super.super.super.super.isa + v13);
  *(&self->super.super.super.super.super.super.super.isa + v13) = v8;
  v15 = v8;

  v16 = *v12;
  v17 = *(&self->super.super.super.super.super.super.super.isa + v16);
  *(&self->super.super.super.super.super.super.super.isa + v16) = v10;
}

- (void)focusDidChange:(BOOL)change
{
  v4.receiver = self;
  v4.super_class = CarFocusableProgressButton;
  [(CarFocusableButton *)&v4 focusDidChange:change];
  [(CarFocusableProgressButton *)self _updateColors];
}

- (void)setProgressFillFocusedColor:(id)color
{
  objc_storeStrong(&self->_progressFillFocusedColor, color);
  colorCopy = color;
  [(CarFocusableProgressButton *)self _makeCloseButtonImagesWithColor:colorCopy isFocus:1];

  [(CarFocusableProgressButton *)self _updateColors];
}

- (void)setProgressFillColor:(id)color
{
  objc_storeStrong(&self->_progressFillColor, color);
  colorCopy = color;
  [(CarFocusableProgressButton *)self _makeCloseButtonImagesWithColor:colorCopy isFocus:0];

  [(CarFocusableProgressButton *)self _updateColors];
}

- (void)startProgressAnimation
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1006FAEE4;
  v3[3] = &unk_101661B18;
  v3[4] = self;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1006FAF74;
  v2[3] = &unk_101661738;
  v2[4] = self;
  [UIView animateWithDuration:v3 animations:v2 completion:0.25];
}

- (void)setProgressionHidden:(BOOL)hidden
{
  [(MapsCircularProgressView *)self->_progressView setHidden:hidden];
  v4 = [UIFont systemFontOfSize:15.0];
  v5 = +[UIColor labelColor];
  v21 = v5;
  v6 = [NSArray arrayWithObjects:&v21 count:1];
  v7 = [UIImageSymbolConfiguration configurationWithPaletteColors:v6];

  v8 = [UIImageSymbolConfiguration configurationWithFont:v4];
  v9 = [v7 configurationByApplyingConfiguration:v8];

  v10 = [UIImageSymbolConfiguration configurationWithWeight:UIFontWeightMedium];
  v11 = [v9 configurationByApplyingConfiguration:v10];

  v12 = [UIImage systemImageNamed:@"xmark" withConfiguration:v11];
  [(CarFocusableProgressButton *)self setImage:v12 forState:0];
  progressFillFocusedColor = self->_progressFillFocusedColor;
  v13 = [NSArray arrayWithObjects:&progressFillFocusedColor count:1];
  v14 = [UIImageSymbolConfiguration configurationWithPaletteColors:v13];

  v15 = [UIImageSymbolConfiguration configurationWithFont:v4];
  v16 = [v14 configurationByApplyingConfiguration:v15];

  v17 = [UIImageSymbolConfiguration configurationWithWeight:UIFontWeightMedium];
  v18 = [v16 configurationByApplyingConfiguration:v17];

  v19 = [UIImage systemImageNamed:@"xmark" withConfiguration:v18];
  [(CarFocusableProgressButton *)self setImage:v19 forState:0];
  [(CarFocusableProgressButton *)self _updateColors];
}

- (void)_commonInit
{
  v20.receiver = self;
  v20.super_class = CarFocusableProgressButton;
  [(CarFocusableButton *)&v20 _commonInit];
  v3 = [[MapsCircularProgressView alloc] initWithFrame:0 animateButtonBackground:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  progressView = self->_progressView;
  self->_progressView = v3;

  [(MapsCircularProgressView *)self->_progressView setUserInteractionEnabled:0];
  [(MapsCircularProgressView *)self->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CarFocusableProgressButton *)self addSubview:self->_progressView];
  leadingAnchor = [(MapsCircularProgressView *)self->_progressView leadingAnchor];
  leadingAnchor2 = [(CarFocusableProgressButton *)self leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v21[0] = v17;
  trailingAnchor = [(MapsCircularProgressView *)self->_progressView trailingAnchor];
  trailingAnchor2 = [(CarFocusableProgressButton *)self trailingAnchor];
  v5 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v21[1] = v5;
  topAnchor = [(MapsCircularProgressView *)self->_progressView topAnchor];
  topAnchor2 = [(CarFocusableProgressButton *)self topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v21[2] = v8;
  bottomAnchor = [(MapsCircularProgressView *)self->_progressView bottomAnchor];
  bottomAnchor2 = [(CarFocusableProgressButton *)self bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v21[3] = v11;
  v12 = [NSArray arrayWithObjects:v21 count:4];
  [NSLayoutConstraint activateConstraints:v12];

  [(MapsCircularProgressView *)self->_progressView setHidden:1];
  v13 = +[UIColor _carSystemFocusColor];
  progressFillFocusedColor = self->_progressFillFocusedColor;
  self->_progressFillFocusedColor = v13;
}

@end