@interface MapsCircularProgressButton
- (MapsCircularProgressButton)initWithFrame:(CGRect)a3;
- (void)_resetButtonAndProgressView;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAnimationDuration:(double)a3;
- (void)setProgress:(double)a3;
- (void)setProgressionHidden:(BOOL)a3;
- (void)startProgressAnimation;
@end

@implementation MapsCircularProgressButton

- (void)_resetButtonAndProgressView
{
  v3 = sub_100884130();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf.a) = 134349056;
    *(&buf.a + 4) = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Reset state for future animations", &buf, 0xCu);
  }

  self->_progressAnimationHasStarted = 0;
  v4 = [(MapsCircularProgressButton *)self _backgroundView];
  [v4 setAlpha:1.0];

  v5 = *&CGAffineTransformIdentity.c;
  *&buf.a = *&CGAffineTransformIdentity.a;
  *&buf.c = v5;
  *&buf.tx = *&CGAffineTransformIdentity.tx;
  CGAffineTransformScale(&v6, &buf, 1.0, 1.0);
  buf = v6;
  [(MapsCircularProgressButton *)self setTransform:&buf];
  [(MapsCircularProgressView *)self->_progressView setProgress:0.0];
  [(MapsCircularProgressView *)self->_progressView setUpOpacityForFadeInAnimation:0.0];
  [(MapsCircularProgressView *)self->_progressView resetAllAnimation];
}

- (void)startProgressAnimation
{
  if (!self->_progressAnimationHasStarted)
  {
    self->_progressAnimationHasStarted = 1;
    v3 = sub_100884130();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v7 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Progress animation started", buf, 0xCu);
    }

    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100884324;
    v5[3] = &unk_101661B18;
    v5[4] = self;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1008843CC;
    v4[3] = &unk_101661738;
    v4[4] = self;
    [UIView animateWithDuration:v5 animations:v4 completion:0.25];
  }
}

- (void)setAnimationDuration:(double)a3
{
  v5 = sub_100884130();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134349570;
    v7 = self;
    v8 = 2080;
    v9 = "[MapsCircularProgressButton setAnimationDuration:]";
    v10 = 2048;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] %s: %f", &v6, 0x20u);
  }

  [(MapsCircularProgressView *)self->_progressView setAnimationDuration:a3];
}

- (void)setProgress:(double)a3
{
  v5 = sub_100884130();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134349570;
    v7 = self;
    v8 = 2080;
    v9 = "[MapsCircularProgressButton setProgress:]";
    v10 = 2048;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] %s: %f", &v6, 0x20u);
  }

  [(MapsCircularProgressView *)self->_progressView setProgress:a3];
}

- (void)setProgressionHidden:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100884130();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134349570;
    v7 = self;
    v8 = 2080;
    v9 = "[MapsCircularProgressButton setProgressionHidden:]";
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] %s: %d", &v6, 0x1Cu);
  }

  [(MapsCircularProgressView *)self->_progressView setHidden:v3];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MapsCircularProgressButton;
  [(MapsCircularProgressButton *)&v3 layoutSubviews];
  [(MapsCircularProgressButton *)self insertSubview:self->_progressView atIndex:0];
}

- (void)dealloc
{
  v3 = sub_100884130();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = MapsCircularProgressButton;
  [(MapsCircularProgressButton *)&v4 dealloc];
}

- (MapsCircularProgressButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v25.receiver = self;
  v25.super_class = MapsCircularProgressButton;
  v7 = [(MapsCircularProgressButton *)&v25 initWithFrame:?];
  if (v7)
  {
    v8 = sub_100884130();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v28 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{public}p] Initializing", buf, 0xCu);
    }

    v9 = [[MapsCircularProgressView alloc] initWithFrame:1 animateButtonBackground:x, y, width, height];
    progressView = v7->_progressView;
    v7->_progressView = v9;

    [(MapsCircularProgressView *)v7->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MapsCircularProgressView *)v7->_progressView setUserInteractionEnabled:0];
    [(MapsCircularProgressButton *)v7 addSubview:v7->_progressView];
    v24 = [(MapsCircularProgressView *)v7->_progressView leadingAnchor];
    v23 = [(MapsCircularProgressButton *)v7 leadingAnchor];
    v22 = [v24 constraintEqualToAnchor:v23];
    v26[0] = v22;
    v21 = [(MapsCircularProgressView *)v7->_progressView trailingAnchor];
    v20 = [(MapsCircularProgressButton *)v7 trailingAnchor];
    v11 = [v21 constraintEqualToAnchor:v20];
    v26[1] = v11;
    v12 = [(MapsCircularProgressView *)v7->_progressView topAnchor];
    v13 = [(MapsCircularProgressButton *)v7 topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v26[2] = v14;
    v15 = [(MapsCircularProgressView *)v7->_progressView bottomAnchor];
    v16 = [(MapsCircularProgressButton *)v7 bottomAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    v26[3] = v17;
    v18 = [NSArray arrayWithObjects:v26 count:4];
    [NSLayoutConstraint activateConstraints:v18];

    [(MapsCircularProgressView *)v7->_progressView setHidden:1];
    v7->_progressAnimationHasStarted = 0;
  }

  return v7;
}

@end