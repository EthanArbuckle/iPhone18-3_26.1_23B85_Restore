@interface FlyoverStatusView
- (CGSize)intrinsicContentSize;
- (FlyoverStatusView)initWithCoder:(id)a3;
- (FlyoverStatusView)initWithFrame:(CGRect)a3;
- (void)presentNewToastIfNecessary;
- (void)setDebouncedTrackingStateReason:(unint64_t)a3;
- (void)statusDebouncerOutputDidChange:(id)a3;
- (void)sv_commonInit;
@end

@implementation FlyoverStatusView

- (void)presentNewToastIfNecessary
{
  if (self->_debouncedTrackingStateReason - 2 <= 2)
  {
    v3 = [[FlyoverStatusToastView alloc] initWithTrackingStateReason:self->_debouncedTrackingStateReason];
    toastView = self->_toastView;
    self->_toastView = v3;

    [(FlyoverStatusToastView *)self->_toastView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(FlyoverStatusView *)self addSubview:self->_toastView];
    v17 = [(FlyoverStatusToastView *)self->_toastView topAnchor];
    v16 = [(FlyoverStatusView *)self topAnchor];
    v15 = [v17 constraintEqualToAnchor:v16];
    v18[0] = v15;
    v14 = [(FlyoverStatusToastView *)self->_toastView leftAnchor];
    v13 = [(FlyoverStatusView *)self leftAnchor];
    v5 = [v14 constraintEqualToAnchor:v13];
    v18[1] = v5;
    v6 = [(FlyoverStatusToastView *)self->_toastView bottomAnchor];
    v7 = [(FlyoverStatusView *)self bottomAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];
    v18[2] = v8;
    v9 = [(FlyoverStatusToastView *)self->_toastView rightAnchor];
    v10 = [(FlyoverStatusView *)self rightAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v18[3] = v11;
    v12 = [NSArray arrayWithObjects:v18 count:4];
    [NSLayoutConstraint activateConstraints:v12];

    [(FlyoverStatusView *)self layoutIfNeeded];
    [(FlyoverStatusToastView *)self->_toastView present];
  }
}

- (void)setDebouncedTrackingStateReason:(unint64_t)a3
{
  if (self->_debouncedTrackingStateReason != a3)
  {
    self->_debouncedTrackingStateReason = a3;
    toastView = self->_toastView;
    if (toastView)
    {
      if (![(FlyoverStatusToastView *)toastView didDismiss])
      {
        v5 = self->_toastView;
        v6[0] = _NSConcreteStackBlock;
        v6[1] = 3221225472;
        v6[2] = sub_10066F914;
        v6[3] = &unk_101661B18;
        v6[4] = self;
        [(FlyoverStatusToastView *)v5 dismissWithCompletionHandler:v6];
      }
    }

    else
    {

      [(FlyoverStatusView *)self presentNewToastIfNecessary];
    }
  }
}

- (void)statusDebouncerOutputDidChange:(id)a3
{
  v4 = [a3 output];

  [(FlyoverStatusView *)self setDebouncedTrackingStateReason:v4];
}

- (CGSize)intrinsicContentSize
{
  +[FlyoverStatusToastView preferredSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (FlyoverStatusView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = FlyoverStatusView;
  v3 = [(FlyoverStatusView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(FlyoverStatusView *)v3 sv_commonInit];
    v5 = v4;
  }

  return v4;
}

- (FlyoverStatusView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = FlyoverStatusView;
  v3 = [(FlyoverStatusView *)&v7 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(FlyoverStatusView *)v3 sv_commonInit];
    v5 = v4;
  }

  return v4;
}

- (void)sv_commonInit
{
  +[FlyoverStatusToastView preferredSize];
  [(FlyoverStatusView *)self setBounds:0.0, 0.0, v3, v4];
  [(FlyoverStatusView *)self setUserInteractionEnabled:0];
  [(FlyoverStatusView *)self setAccessibilityIdentifier:@"FlyoverStatusView"];
  v5 = objc_alloc_init(FlyoverStatusDebouncer);
  debouncer = self->_debouncer;
  self->_debouncer = v5;

  v7 = self->_debouncer;

  [(FlyoverStatusDebouncer *)v7 setDelegate:self];
}

@end