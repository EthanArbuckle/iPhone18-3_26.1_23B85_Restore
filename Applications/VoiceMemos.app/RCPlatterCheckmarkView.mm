@interface RCPlatterCheckmarkView
- (RCPlatterCheckmarkView)initWithFrame:(CGRect)a3;
- (void)_setupViews;
- (void)layoutSubviews;
@end

@implementation RCPlatterCheckmarkView

- (RCPlatterCheckmarkView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = RCPlatterCheckmarkView;
  v3 = [(RCPlatterCheckmarkView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(RCPlatterCheckmarkView *)v3 _setupViews];
  }

  return v4;
}

- (void)_setupViews
{
  v3 = [[RCPlatterStopButton alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  stopButton = self->_stopButton;
  self->_stopButton = v3;

  [(RCPlatterCheckmarkView *)self addSubview:self->_stopButton];
  [(RCPlatterStopButton *)self->_stopButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [(RCPlatterStopButton *)self->_stopButton centerYAnchor];
  v16 = [(RCPlatterCheckmarkView *)self centerYAnchor];
  v15 = [v17 constraintEqualToAnchor:v16];
  v18[0] = v15;
  v5 = [(RCPlatterStopButton *)self->_stopButton centerXAnchor];
  v6 = [(RCPlatterCheckmarkView *)self centerXAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v18[1] = v7;
  v8 = [(RCPlatterStopButton *)self->_stopButton heightAnchor];
  v9 = [(RCPlatterCheckmarkView *)self heightAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v18[2] = v10;
  v11 = [(RCPlatterStopButton *)self->_stopButton widthAnchor];
  v12 = [(RCPlatterCheckmarkView *)self heightAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v18[3] = v13;
  v14 = [NSArray arrayWithObjects:v18 count:4];
  [NSLayoutConstraint activateConstraints:v14];
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = RCPlatterCheckmarkView;
  [(RCPlatterCheckmarkView *)&v9 layoutSubviews];
  [(RCPlatterCheckmarkView *)self bounds];
  if (v3 != 0.0)
  {
    [(RCPlatterCheckmarkView *)self bounds];
    if (v4 != 0.0 && [(RCPlatterStopButton *)self->_stopButton state]!= 2)
    {
      v5 = +[RCRecorderStyleProvider sharedStyleProvider];
      [v5 platterEmptyViewToCheckmarkTransitionDuration];
      v7 = v6;

      v8 = [(RCPlatterCheckmarkView *)self stopButton];
      [v8 transitionToState:2 viaState:0 transitionDuration:v7];
    }
  }
}

@end