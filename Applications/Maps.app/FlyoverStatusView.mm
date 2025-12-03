@interface FlyoverStatusView
- (CGSize)intrinsicContentSize;
- (FlyoverStatusView)initWithCoder:(id)coder;
- (FlyoverStatusView)initWithFrame:(CGRect)frame;
- (void)presentNewToastIfNecessary;
- (void)setDebouncedTrackingStateReason:(unint64_t)reason;
- (void)statusDebouncerOutputDidChange:(id)change;
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
    topAnchor = [(FlyoverStatusToastView *)self->_toastView topAnchor];
    topAnchor2 = [(FlyoverStatusView *)self topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v18[0] = v15;
    leftAnchor = [(FlyoverStatusToastView *)self->_toastView leftAnchor];
    leftAnchor2 = [(FlyoverStatusView *)self leftAnchor];
    v5 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v18[1] = v5;
    bottomAnchor = [(FlyoverStatusToastView *)self->_toastView bottomAnchor];
    bottomAnchor2 = [(FlyoverStatusView *)self bottomAnchor];
    v8 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v18[2] = v8;
    rightAnchor = [(FlyoverStatusToastView *)self->_toastView rightAnchor];
    rightAnchor2 = [(FlyoverStatusView *)self rightAnchor];
    v11 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v18[3] = v11;
    v12 = [NSArray arrayWithObjects:v18 count:4];
    [NSLayoutConstraint activateConstraints:v12];

    [(FlyoverStatusView *)self layoutIfNeeded];
    [(FlyoverStatusToastView *)self->_toastView present];
  }
}

- (void)setDebouncedTrackingStateReason:(unint64_t)reason
{
  if (self->_debouncedTrackingStateReason != reason)
  {
    self->_debouncedTrackingStateReason = reason;
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

- (void)statusDebouncerOutputDidChange:(id)change
{
  output = [change output];

  [(FlyoverStatusView *)self setDebouncedTrackingStateReason:output];
}

- (CGSize)intrinsicContentSize
{
  +[FlyoverStatusToastView preferredSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (FlyoverStatusView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = FlyoverStatusView;
  v3 = [(FlyoverStatusView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(FlyoverStatusView *)v3 sv_commonInit];
    v5 = v4;
  }

  return v4;
}

- (FlyoverStatusView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = FlyoverStatusView;
  v3 = [(FlyoverStatusView *)&v7 initWithCoder:coder];
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