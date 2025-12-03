@interface CBRecordingIndicatorView
- (CBRecordingIndicatorView)initWithCoder:(id)coder;
- (CBRecordingIndicatorView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setIndicatorType:(unint64_t)type;
@end

@implementation CBRecordingIndicatorView

- (CBRecordingIndicatorView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CBRecordingIndicatorView;
  v3 = [(CBRecordingIndicatorView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    sub_1000470D4(&v3->super.super.super.isa);
  }

  return v4;
}

- (CBRecordingIndicatorView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CBRecordingIndicatorView;
  v3 = [(CBRecordingIndicatorView *)&v6 initWithCoder:coder];
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

  layer = [(CBRecordingIndicatorView *)self layer];
  [layer setCornerRadius:v3];

  [(CBRecordingIndicatorView *)self _setAllowsHighContrastForBackgroundColor:1];
}

- (void)setIndicatorType:(unint64_t)type
{
  if (self->_indicatorType != type)
  {
    self->_indicatorType = type;
    layer = [(CBRecordingIndicatorView *)self layer];
    v6 = sub_100018610(type);
    privacyIndicatorType = [layer privacyIndicatorType];

    if (v6 != privacyIndicatorType)
    {
      v8 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] updating secure indicator type for view-dot to %@", &v9, 0xCu);
      }

      [layer setPrivacyIndicatorType:v6];
      [(CBRecordingIndicatorView *)self setNeedsLayout];
      [(CBRecordingIndicatorView *)self layoutIfNeeded];
    }
  }
}

@end