@interface CarFocusableProgressBackgroundFillButton
- (CarFocusableProgressBackgroundFillButton)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
- (void)focusDidChange:(BOOL)change;
- (void)setFilledBackgroundColor:(id)color;
- (void)setFilledBackgroundColorFocused:(id)focused;
- (void)setFilledTintColor:(id)color;
- (void)setFilledTintColorFocused:(id)focused;
- (void)setProgress:(double)progress;
- (void)setProgressionHidden:(BOOL)hidden;
- (void)setTitle:(id)title forState:(unint64_t)state;
- (void)setTitleFont:(id)font;
- (void)unFilledBackgroundColor:(id)color;
- (void)unFilledTintColor:(id)color;
@end

@implementation CarFocusableProgressBackgroundFillButton

- (void)focusDidChange:(BOOL)change
{
  v4.receiver = self;
  v4.super_class = CarFocusableProgressBackgroundFillButton;
  [(CarFocusableButton *)&v4 focusDidChange:change];
  [(MapsProgressBackgroundFillView *)self->_progressBackgroundFillView updateColorsWithFocus:[(CarFocusableProgressBackgroundFillButton *)self isFocused]];
}

- (void)setProgressionHidden:(BOOL)hidden
{
  if (self->_progressionHidden != hidden)
  {
    self->_progressionHidden = hidden;
    [(MapsProgressBackgroundFillView *)self->_progressBackgroundFillView setHidden:?];
    [(CarFocusableProgressBackgroundFillButton *)self setNeedsLayout];

    [(CarFocusableProgressBackgroundFillButton *)self layoutIfNeeded];
  }
}

- (void)setFilledBackgroundColor:(id)color
{
  objc_storeStrong(&self->_filledBackgroundColor, color);
  colorCopy = color;
  [(MapsProgressBackgroundFillView *)self->_progressBackgroundFillView setFilledBackgroundColor:colorCopy];
}

- (void)setFilledBackgroundColorFocused:(id)focused
{
  objc_storeStrong(&self->_filledBackgroundColorFocused, focused);
  focusedCopy = focused;
  [(MapsProgressBackgroundFillView *)self->_progressBackgroundFillView setFilledBackgroundColorFocus:focusedCopy];
}

- (void)setFilledTintColor:(id)color
{
  objc_storeStrong(&self->_filledTintColor, color);
  colorCopy = color;
  [(MapsProgressBackgroundFillView *)self->_progressBackgroundFillView setFilledLabelColor:colorCopy];
}

- (void)setFilledTintColorFocused:(id)focused
{
  objc_storeStrong(&self->_filledTintColorFocused, focused);
  focusedCopy = focused;
  [(MapsProgressBackgroundFillView *)self->_progressBackgroundFillView setFilledLabelColorFocus:focusedCopy];
}

- (void)unFilledBackgroundColor:(id)color
{
  objc_storeStrong(&self->_unFilledBackgroundColor, color);
  colorCopy = color;
  [(CarFocusableProgressBackgroundFillButton *)self setBackgroundColor:colorCopy];
}

- (void)unFilledTintColor:(id)color
{
  objc_storeStrong(&self->_unFilledTintColor, color);
  colorCopy = color;
  titleLabel = [(CarFocusableProgressBackgroundFillButton *)self titleLabel];
  [titleLabel setTextColor:colorCopy];
}

- (void)setProgress:(double)progress
{
  if (self->_progress != progress)
  {
    v3 = fmin(fmax(progress, 0.0), 1.0);
    if (progress < 0.0 || progress > 1.0)
    {
      progress = v3;
    }

    self->_progress = progress;
  }
}

- (void)setTitle:(id)title forState:(unint64_t)state
{
  v7.receiver = self;
  v7.super_class = CarFocusableProgressBackgroundFillButton;
  titleCopy = title;
  [(CarFocusableProgressBackgroundFillButton *)&v7 setTitle:titleCopy forState:state];
  [(MapsProgressBackgroundFillView *)self->_progressBackgroundFillView setTitle:titleCopy, v7.receiver, v7.super_class];
}

- (void)setTitleFont:(id)font
{
  fontCopy = font;
  titleLabel = [(CarFocusableProgressBackgroundFillButton *)self titleLabel];
  [titleLabel setFont:fontCopy];

  [(MapsProgressBackgroundFillView *)self->_progressBackgroundFillView setTitleFont:fontCopy];
}

- (void)didMoveToWindow
{
  v2.receiver = self;
  v2.super_class = CarFocusableProgressBackgroundFillButton;
  [(CarFocusableButton *)&v2 didMoveToWindow];
}

- (CarFocusableProgressBackgroundFillButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v24.receiver = self;
  v24.super_class = CarFocusableProgressBackgroundFillButton;
  v7 = [(CarCardRoundedButton *)&v24 initWithFrame:?];
  if (v7)
  {
    height = [[MapsProgressBackgroundFillView alloc] initWithFrame:x, y, width, height];
    progressBackgroundFillView = v7->_progressBackgroundFillView;
    v7->_progressBackgroundFillView = height;

    [(MapsProgressBackgroundFillView *)v7->_progressBackgroundFillView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MapsProgressBackgroundFillView *)v7->_progressBackgroundFillView setUserInteractionEnabled:0];
    [(CarFocusableProgressBackgroundFillButton *)v7 addSubview:v7->_progressBackgroundFillView];
    [(CarFocusableProgressBackgroundFillButton *)v7 bringSubviewToFront:v7->_progressBackgroundFillView];
    leadingAnchor = [(MapsProgressBackgroundFillView *)v7->_progressBackgroundFillView leadingAnchor];
    leadingAnchor2 = [(CarFocusableProgressBackgroundFillButton *)v7 leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v25[0] = v21;
    trailingAnchor = [(MapsProgressBackgroundFillView *)v7->_progressBackgroundFillView trailingAnchor];
    trailingAnchor2 = [(CarFocusableProgressBackgroundFillButton *)v7 trailingAnchor];
    v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v25[1] = v11;
    topAnchor = [(MapsProgressBackgroundFillView *)v7->_progressBackgroundFillView topAnchor];
    topAnchor2 = [(CarFocusableProgressBackgroundFillButton *)v7 topAnchor];
    v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v25[2] = v14;
    bottomAnchor = [(MapsProgressBackgroundFillView *)v7->_progressBackgroundFillView bottomAnchor];
    bottomAnchor2 = [(CarFocusableProgressBackgroundFillButton *)v7 bottomAnchor];
    v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v25[3] = v17;
    v18 = [NSArray arrayWithObjects:v25 count:4];
    [NSLayoutConstraint activateConstraints:v18];

    [(CarFocusableProgressBackgroundFillButton *)v7 startProgressAnimation];
  }

  return v7;
}

@end