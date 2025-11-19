@interface CarFocusableProgressButton
- (void)_commonInit;
- (void)_makeCloseButtonImagesWithColor:(id)a3 isFocus:(BOOL)a4;
- (void)_updateColors;
- (void)focusDidChange:(BOOL)a3;
- (void)setProgressFillColor:(id)a3;
- (void)setProgressFillFocusedColor:(id)a3;
- (void)setProgressionHidden:(BOOL)a3;
- (void)startProgressAnimation;
@end

@implementation CarFocusableProgressButton

- (void)_updateColors
{
  v3 = [(CarFocusableProgressButton *)self isFocused];
  v4 = [(CarFocusableProgressButton *)self progressionHidden];
  v5 = &OBJC_IVAR___CarFocusableProgressButton__closeButtonImageUnFocusedProgress;
  if (v4)
  {
    v5 = &OBJC_IVAR___CarFocusableProgressButton__closeButtonImageUnFocusedNoProgress;
  }

  v6 = &OBJC_IVAR___CarFocusableProgressButton__closeButtonImageFocusedProgress;
  if (v4)
  {
    v6 = &OBJC_IVAR___CarFocusableProgressButton__closeButtonImageFocusedNoProgress;
  }

  if (v3)
  {
    v5 = v6;
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  if (v3)
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

- (void)_makeCloseButtonImagesWithColor:(id)a3 isFocus:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v18 = v6;
  v7 = [NSArray arrayWithObjects:&v18 count:1];
  v8 = [UIImage _mapsCar_systemImageNamed:@"xmark" textStyle:UIFontTextStyleCallout weight:6 paletteColors:v7];

  v9 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:12.0];
  v10 = [v8 imageByApplyingSymbolConfiguration:v9];
  v11 = &OBJC_IVAR___CarFocusableProgressButton__closeButtonImageUnFocusedNoProgress;
  if (v4)
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

- (void)focusDidChange:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CarFocusableProgressButton;
  [(CarFocusableButton *)&v4 focusDidChange:a3];
  [(CarFocusableProgressButton *)self _updateColors];
}

- (void)setProgressFillFocusedColor:(id)a3
{
  objc_storeStrong(&self->_progressFillFocusedColor, a3);
  v5 = a3;
  [(CarFocusableProgressButton *)self _makeCloseButtonImagesWithColor:v5 isFocus:1];

  [(CarFocusableProgressButton *)self _updateColors];
}

- (void)setProgressFillColor:(id)a3
{
  objc_storeStrong(&self->_progressFillColor, a3);
  v5 = a3;
  [(CarFocusableProgressButton *)self _makeCloseButtonImagesWithColor:v5 isFocus:0];

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

- (void)setProgressionHidden:(BOOL)a3
{
  [(MapsCircularProgressView *)self->_progressView setHidden:a3];
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
  v19 = [(MapsCircularProgressView *)self->_progressView leadingAnchor];
  v18 = [(CarFocusableProgressButton *)self leadingAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v21[0] = v17;
  v16 = [(MapsCircularProgressView *)self->_progressView trailingAnchor];
  v15 = [(CarFocusableProgressButton *)self trailingAnchor];
  v5 = [v16 constraintEqualToAnchor:v15];
  v21[1] = v5;
  v6 = [(MapsCircularProgressView *)self->_progressView topAnchor];
  v7 = [(CarFocusableProgressButton *)self topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v21[2] = v8;
  v9 = [(MapsCircularProgressView *)self->_progressView bottomAnchor];
  v10 = [(CarFocusableProgressButton *)self bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v21[3] = v11;
  v12 = [NSArray arrayWithObjects:v21 count:4];
  [NSLayoutConstraint activateConstraints:v12];

  [(MapsCircularProgressView *)self->_progressView setHidden:1];
  v13 = +[UIColor _carSystemFocusColor];
  progressFillFocusedColor = self->_progressFillFocusedColor;
  self->_progressFillFocusedColor = v13;
}

@end