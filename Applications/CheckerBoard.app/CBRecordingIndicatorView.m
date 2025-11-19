@interface CBRecordingIndicatorView
- (CBRecordingIndicatorView)initWithCoder:(id)a3;
- (CBRecordingIndicatorView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setIndicatorType:(unint64_t)a3;
@end

@implementation CBRecordingIndicatorView

- (CBRecordingIndicatorView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CBRecordingIndicatorView;
  v3 = [(CBRecordingIndicatorView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    sub_1000470D4(&v3->super.super.super.isa);
  }

  return v4;
}

- (CBRecordingIndicatorView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CBRecordingIndicatorView;
  v3 = [(CBRecordingIndicatorView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    sub_1000470D4(&v3->super.super.super.isa);
  }

  return v4;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = CBRecordingIndicatorView;
  [(CBRecordingIndicatorView *)&v6 layoutSubviews];
  v3 = 0.0;
  if ([(CBRecordingIndicatorView *)self indicatorType]<= 1)
  {
    [(CBRecordingIndicatorView *)self bounds];
    v3 = v4 * 0.5;
  }

  v5 = [(CBRecordingIndicatorView *)self layer];
  [v5 setCornerRadius:v3];

  [(CBRecordingIndicatorView *)self _setAllowsHighContrastForBackgroundColor:1];
}

- (void)setIndicatorType:(unint64_t)a3
{
  if (self->_indicatorType != a3)
  {
    self->_indicatorType = a3;
    v5 = [(CBRecordingIndicatorView *)self layer];
    v6 = sub_100018610(a3);
    v7 = [v5 privacyIndicatorType];

    if (v6 != v7)
    {
      v8 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] updating secure indicator type for view-dot to %@", &v9, 0xCu);
      }

      [v5 setPrivacyIndicatorType:v6];
      [(CBRecordingIndicatorView *)self setNeedsLayout];
      [(CBRecordingIndicatorView *)self layoutIfNeeded];
    }
  }
}

@end