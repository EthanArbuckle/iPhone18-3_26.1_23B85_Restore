@interface MapsProgressBackgroundFillButton
- (MapsProgressBackgroundFillButton)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAnimationDuration:(double)duration;
- (void)setFilledBackgroundColor:(id)color;
- (void)setFilledLabelColor:(id)color;
- (void)setProgressionHidden:(BOOL)hidden;
- (void)setTitle:(id)title forState:(unint64_t)state;
- (void)setTitleFont:(id)font;
- (void)setUnfilledBackgroundColor:(id)color;
- (void)setUnfilledLabelColor:(id)color;
- (void)startProgressAnimation;
@end

@implementation MapsProgressBackgroundFillButton

- (void)setFilledBackgroundColor:(id)color
{
  objc_storeStrong(&self->_filledBackgroundColor, color);
  colorCopy = color;
  [(MapsProgressBackgroundFillView *)self->_progressBackgroundFillView setFilledBackgroundColorFocus:colorCopy];
}

- (void)setFilledLabelColor:(id)color
{
  objc_storeStrong(&self->_filledLabelColor, color);
  colorCopy = color;
  [(MapsProgressBackgroundFillView *)self->_progressBackgroundFillView setFilledLabelColorFocus:colorCopy];
}

- (void)setUnfilledBackgroundColor:(id)color
{
  objc_storeStrong(&self->_unfilledBackgroundColor, color);
  colorCopy = color;
  [(BackgroundColorButton *)self setBackgroundColor:colorCopy];
}

- (void)setUnfilledLabelColor:(id)color
{
  objc_storeStrong(&self->_unfilledLabelColor, color);
  colorCopy = color;
  [(BackgroundColorButton *)self setTitleColor:colorCopy];
}

- (void)startProgressAnimation
{
  v3 = sub_10088333C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Progress animation started", &v4, 0xCu);
  }

  [(MapsProgressBackgroundFillView *)self->_progressBackgroundFillView startProgressAnimationWithCompletion:0];
}

- (void)setTitleFont:(id)font
{
  fontCopy = font;
  titleLabel = [(MapsProgressBackgroundFillButton *)self titleLabel];
  [titleLabel setFont:fontCopy];

  [(MapsProgressBackgroundFillView *)self->_progressBackgroundFillView setTitleFont:fontCopy];
}

- (void)setAnimationDuration:(double)duration
{
  v5 = sub_10088333C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134349570;
    selfCopy = self;
    v8 = 2080;
    v9 = "[MapsProgressBackgroundFillButton setAnimationDuration:]";
    v10 = 2048;
    durationCopy = duration;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] %s: %f", &v6, 0x20u);
  }

  self->_animationDuration = duration;
  [(MapsProgressBackgroundFillView *)self->_progressBackgroundFillView setAnimationDuration:duration];
}

- (void)setProgressionHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v5 = sub_10088333C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134349570;
    selfCopy = self;
    v8 = 2080;
    v9 = "[MapsProgressBackgroundFillButton setProgressionHidden:]";
    v10 = 1024;
    v11 = hiddenCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] %s: %d", &v6, 0x1Cu);
  }

  [(MapsProgressBackgroundFillView *)self->_progressBackgroundFillView setHidden:hiddenCopy];
}

- (void)setTitle:(id)title forState:(unint64_t)state
{
  v7.receiver = self;
  v7.super_class = MapsProgressBackgroundFillButton;
  titleCopy = title;
  [(MapsProgressBackgroundFillButton *)&v7 setTitle:titleCopy forState:state];
  [(MapsProgressBackgroundFillView *)self->_progressBackgroundFillView setTitle:titleCopy, v7.receiver, v7.super_class];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MapsProgressBackgroundFillButton;
  [(MapsProgressBackgroundFillButton *)&v3 layoutSubviews];
  [(MapsProgressBackgroundFillButton *)self bounds];
  [(MapsProgressBackgroundFillView *)self->_progressBackgroundFillView setBounds:?];
}

- (void)dealloc
{
  v3 = sub_10088333C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = MapsProgressBackgroundFillButton;
  [(MapsProgressBackgroundFillButton *)&v4 dealloc];
}

- (MapsProgressBackgroundFillButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v25.receiver = self;
  v25.super_class = MapsProgressBackgroundFillButton;
  v7 = [(MapsProgressBackgroundFillButton *)&v25 initWithFrame:?];
  if (v7)
  {
    v8 = sub_10088333C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v28 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{public}p] Initializing", buf, 0xCu);
    }

    height = [[MapsProgressBackgroundFillView alloc] initWithFrame:x, y, width, height];
    progressBackgroundFillView = v7->_progressBackgroundFillView;
    v7->_progressBackgroundFillView = height;

    [(MapsProgressBackgroundFillView *)v7->_progressBackgroundFillView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MapsProgressBackgroundFillView *)v7->_progressBackgroundFillView setUserInteractionEnabled:0];
    [(MapsProgressBackgroundFillButton *)v7 addSubview:v7->_progressBackgroundFillView];
    [(MapsProgressBackgroundFillButton *)v7 bringSubviewToFront:v7->_progressBackgroundFillView];
    leadingAnchor = [(MapsProgressBackgroundFillView *)v7->_progressBackgroundFillView leadingAnchor];
    leadingAnchor2 = [(MapsProgressBackgroundFillButton *)v7 leadingAnchor];
    v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v26[0] = v22;
    trailingAnchor = [(MapsProgressBackgroundFillView *)v7->_progressBackgroundFillView trailingAnchor];
    trailingAnchor2 = [(MapsProgressBackgroundFillButton *)v7 trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v26[1] = v12;
    topAnchor = [(MapsProgressBackgroundFillView *)v7->_progressBackgroundFillView topAnchor];
    topAnchor2 = [(MapsProgressBackgroundFillButton *)v7 topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v26[2] = v15;
    bottomAnchor = [(MapsProgressBackgroundFillView *)v7->_progressBackgroundFillView bottomAnchor];
    bottomAnchor2 = [(MapsProgressBackgroundFillButton *)v7 bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v26[3] = v18;
    v19 = [NSArray arrayWithObjects:v26 count:4];
    [NSLayoutConstraint activateConstraints:v19];
  }

  return v7;
}

@end