@interface CarFocusableProgressBackgroundFillButton
- (CarFocusableProgressBackgroundFillButton)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
- (void)focusDidChange:(BOOL)a3;
- (void)setFilledBackgroundColor:(id)a3;
- (void)setFilledBackgroundColorFocused:(id)a3;
- (void)setFilledTintColor:(id)a3;
- (void)setFilledTintColorFocused:(id)a3;
- (void)setProgress:(double)a3;
- (void)setProgressionHidden:(BOOL)a3;
- (void)setTitle:(id)a3 forState:(unint64_t)a4;
- (void)setTitleFont:(id)a3;
- (void)unFilledBackgroundColor:(id)a3;
- (void)unFilledTintColor:(id)a3;
@end

@implementation CarFocusableProgressBackgroundFillButton

- (void)focusDidChange:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CarFocusableProgressBackgroundFillButton;
  [(CarFocusableButton *)&v4 focusDidChange:a3];
  [(MapsProgressBackgroundFillView *)self->_progressBackgroundFillView updateColorsWithFocus:[(CarFocusableProgressBackgroundFillButton *)self isFocused]];
}

- (void)setProgressionHidden:(BOOL)a3
{
  if (self->_progressionHidden != a3)
  {
    self->_progressionHidden = a3;
    [(MapsProgressBackgroundFillView *)self->_progressBackgroundFillView setHidden:?];
    [(CarFocusableProgressBackgroundFillButton *)self setNeedsLayout];

    [(CarFocusableProgressBackgroundFillButton *)self layoutIfNeeded];
  }
}

- (void)setFilledBackgroundColor:(id)a3
{
  objc_storeStrong(&self->_filledBackgroundColor, a3);
  v5 = a3;
  [(MapsProgressBackgroundFillView *)self->_progressBackgroundFillView setFilledBackgroundColor:v5];
}

- (void)setFilledBackgroundColorFocused:(id)a3
{
  objc_storeStrong(&self->_filledBackgroundColorFocused, a3);
  v5 = a3;
  [(MapsProgressBackgroundFillView *)self->_progressBackgroundFillView setFilledBackgroundColorFocus:v5];
}

- (void)setFilledTintColor:(id)a3
{
  objc_storeStrong(&self->_filledTintColor, a3);
  v5 = a3;
  [(MapsProgressBackgroundFillView *)self->_progressBackgroundFillView setFilledLabelColor:v5];
}

- (void)setFilledTintColorFocused:(id)a3
{
  objc_storeStrong(&self->_filledTintColorFocused, a3);
  v5 = a3;
  [(MapsProgressBackgroundFillView *)self->_progressBackgroundFillView setFilledLabelColorFocus:v5];
}

- (void)unFilledBackgroundColor:(id)a3
{
  objc_storeStrong(&self->_unFilledBackgroundColor, a3);
  v5 = a3;
  [(CarFocusableProgressBackgroundFillButton *)self setBackgroundColor:v5];
}

- (void)unFilledTintColor:(id)a3
{
  objc_storeStrong(&self->_unFilledTintColor, a3);
  v5 = a3;
  v6 = [(CarFocusableProgressBackgroundFillButton *)self titleLabel];
  [v6 setTextColor:v5];
}

- (void)setProgress:(double)a3
{
  if (self->_progress != a3)
  {
    v3 = fmin(fmax(a3, 0.0), 1.0);
    if (a3 < 0.0 || a3 > 1.0)
    {
      a3 = v3;
    }

    self->_progress = a3;
  }
}

- (void)setTitle:(id)a3 forState:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = CarFocusableProgressBackgroundFillButton;
  v6 = a3;
  [(CarFocusableProgressBackgroundFillButton *)&v7 setTitle:v6 forState:a4];
  [(MapsProgressBackgroundFillView *)self->_progressBackgroundFillView setTitle:v6, v7.receiver, v7.super_class];
}

- (void)setTitleFont:(id)a3
{
  v5 = a3;
  v4 = [(CarFocusableProgressBackgroundFillButton *)self titleLabel];
  [v4 setFont:v5];

  [(MapsProgressBackgroundFillView *)self->_progressBackgroundFillView setTitleFont:v5];
}

- (void)didMoveToWindow
{
  v2.receiver = self;
  v2.super_class = CarFocusableProgressBackgroundFillButton;
  [(CarFocusableButton *)&v2 didMoveToWindow];
}

- (CarFocusableProgressBackgroundFillButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v24.receiver = self;
  v24.super_class = CarFocusableProgressBackgroundFillButton;
  v7 = [(CarCardRoundedButton *)&v24 initWithFrame:?];
  if (v7)
  {
    v8 = [[MapsProgressBackgroundFillView alloc] initWithFrame:x, y, width, height];
    progressBackgroundFillView = v7->_progressBackgroundFillView;
    v7->_progressBackgroundFillView = v8;

    [(MapsProgressBackgroundFillView *)v7->_progressBackgroundFillView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MapsProgressBackgroundFillView *)v7->_progressBackgroundFillView setUserInteractionEnabled:0];
    [(CarFocusableProgressBackgroundFillButton *)v7 addSubview:v7->_progressBackgroundFillView];
    [(CarFocusableProgressBackgroundFillButton *)v7 bringSubviewToFront:v7->_progressBackgroundFillView];
    v23 = [(MapsProgressBackgroundFillView *)v7->_progressBackgroundFillView leadingAnchor];
    v22 = [(CarFocusableProgressBackgroundFillButton *)v7 leadingAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v25[0] = v21;
    v20 = [(MapsProgressBackgroundFillView *)v7->_progressBackgroundFillView trailingAnchor];
    v10 = [(CarFocusableProgressBackgroundFillButton *)v7 trailingAnchor];
    v11 = [v20 constraintEqualToAnchor:v10];
    v25[1] = v11;
    v12 = [(MapsProgressBackgroundFillView *)v7->_progressBackgroundFillView topAnchor];
    v13 = [(CarFocusableProgressBackgroundFillButton *)v7 topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v25[2] = v14;
    v15 = [(MapsProgressBackgroundFillView *)v7->_progressBackgroundFillView bottomAnchor];
    v16 = [(CarFocusableProgressBackgroundFillButton *)v7 bottomAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    v25[3] = v17;
    v18 = [NSArray arrayWithObjects:v25 count:4];
    [NSLayoutConstraint activateConstraints:v18];

    [(CarFocusableProgressBackgroundFillButton *)v7 startProgressAnimation];
  }

  return v7;
}

@end