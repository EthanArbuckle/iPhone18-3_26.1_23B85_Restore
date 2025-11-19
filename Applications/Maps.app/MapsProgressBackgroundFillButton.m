@interface MapsProgressBackgroundFillButton
- (MapsProgressBackgroundFillButton)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAnimationDuration:(double)a3;
- (void)setFilledBackgroundColor:(id)a3;
- (void)setFilledLabelColor:(id)a3;
- (void)setProgressionHidden:(BOOL)a3;
- (void)setTitle:(id)a3 forState:(unint64_t)a4;
- (void)setTitleFont:(id)a3;
- (void)setUnfilledBackgroundColor:(id)a3;
- (void)setUnfilledLabelColor:(id)a3;
- (void)startProgressAnimation;
@end

@implementation MapsProgressBackgroundFillButton

- (void)setFilledBackgroundColor:(id)a3
{
  objc_storeStrong(&self->_filledBackgroundColor, a3);
  v5 = a3;
  [(MapsProgressBackgroundFillView *)self->_progressBackgroundFillView setFilledBackgroundColorFocus:v5];
}

- (void)setFilledLabelColor:(id)a3
{
  objc_storeStrong(&self->_filledLabelColor, a3);
  v5 = a3;
  [(MapsProgressBackgroundFillView *)self->_progressBackgroundFillView setFilledLabelColorFocus:v5];
}

- (void)setUnfilledBackgroundColor:(id)a3
{
  objc_storeStrong(&self->_unfilledBackgroundColor, a3);
  v5 = a3;
  [(BackgroundColorButton *)self setBackgroundColor:v5];
}

- (void)setUnfilledLabelColor:(id)a3
{
  objc_storeStrong(&self->_unfilledLabelColor, a3);
  v5 = a3;
  [(BackgroundColorButton *)self setTitleColor:v5];
}

- (void)startProgressAnimation
{
  v3 = sub_10088333C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 134349056;
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Progress animation started", &v4, 0xCu);
  }

  [(MapsProgressBackgroundFillView *)self->_progressBackgroundFillView startProgressAnimationWithCompletion:0];
}

- (void)setTitleFont:(id)a3
{
  v5 = a3;
  v4 = [(MapsProgressBackgroundFillButton *)self titleLabel];
  [v4 setFont:v5];

  [(MapsProgressBackgroundFillView *)self->_progressBackgroundFillView setTitleFont:v5];
}

- (void)setAnimationDuration:(double)a3
{
  v5 = sub_10088333C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134349570;
    v7 = self;
    v8 = 2080;
    v9 = "[MapsProgressBackgroundFillButton setAnimationDuration:]";
    v10 = 2048;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] %s: %f", &v6, 0x20u);
  }

  self->_animationDuration = a3;
  [(MapsProgressBackgroundFillView *)self->_progressBackgroundFillView setAnimationDuration:a3];
}

- (void)setProgressionHidden:(BOOL)a3
{
  v3 = a3;
  v5 = sub_10088333C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134349570;
    v7 = self;
    v8 = 2080;
    v9 = "[MapsProgressBackgroundFillButton setProgressionHidden:]";
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] %s: %d", &v6, 0x1Cu);
  }

  [(MapsProgressBackgroundFillView *)self->_progressBackgroundFillView setHidden:v3];
}

- (void)setTitle:(id)a3 forState:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = MapsProgressBackgroundFillButton;
  v6 = a3;
  [(MapsProgressBackgroundFillButton *)&v7 setTitle:v6 forState:a4];
  [(MapsProgressBackgroundFillView *)self->_progressBackgroundFillView setTitle:v6, v7.receiver, v7.super_class];
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
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = MapsProgressBackgroundFillButton;
  [(MapsProgressBackgroundFillButton *)&v4 dealloc];
}

- (MapsProgressBackgroundFillButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

    v9 = [[MapsProgressBackgroundFillView alloc] initWithFrame:x, y, width, height];
    progressBackgroundFillView = v7->_progressBackgroundFillView;
    v7->_progressBackgroundFillView = v9;

    [(MapsProgressBackgroundFillView *)v7->_progressBackgroundFillView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MapsProgressBackgroundFillView *)v7->_progressBackgroundFillView setUserInteractionEnabled:0];
    [(MapsProgressBackgroundFillButton *)v7 addSubview:v7->_progressBackgroundFillView];
    [(MapsProgressBackgroundFillButton *)v7 bringSubviewToFront:v7->_progressBackgroundFillView];
    v24 = [(MapsProgressBackgroundFillView *)v7->_progressBackgroundFillView leadingAnchor];
    v23 = [(MapsProgressBackgroundFillButton *)v7 leadingAnchor];
    v22 = [v24 constraintEqualToAnchor:v23];
    v26[0] = v22;
    v21 = [(MapsProgressBackgroundFillView *)v7->_progressBackgroundFillView trailingAnchor];
    v11 = [(MapsProgressBackgroundFillButton *)v7 trailingAnchor];
    v12 = [v21 constraintEqualToAnchor:v11];
    v26[1] = v12;
    v13 = [(MapsProgressBackgroundFillView *)v7->_progressBackgroundFillView topAnchor];
    v14 = [(MapsProgressBackgroundFillButton *)v7 topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v26[2] = v15;
    v16 = [(MapsProgressBackgroundFillView *)v7->_progressBackgroundFillView bottomAnchor];
    v17 = [(MapsProgressBackgroundFillButton *)v7 bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v26[3] = v18;
    v19 = [NSArray arrayWithObjects:v26 count:4];
    [NSLayoutConstraint activateConstraints:v19];
  }

  return v7;
}

@end