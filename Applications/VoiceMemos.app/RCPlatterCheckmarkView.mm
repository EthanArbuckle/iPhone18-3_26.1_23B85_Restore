@interface RCPlatterCheckmarkView
- (RCPlatterCheckmarkView)initWithFrame:(CGRect)frame;
- (void)_setupViews;
- (void)layoutSubviews;
@end

@implementation RCPlatterCheckmarkView

- (RCPlatterCheckmarkView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = RCPlatterCheckmarkView;
  v3 = [(RCPlatterCheckmarkView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  centerYAnchor = [(RCPlatterStopButton *)self->_stopButton centerYAnchor];
  centerYAnchor2 = [(RCPlatterCheckmarkView *)self centerYAnchor];
  v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v18[0] = v15;
  centerXAnchor = [(RCPlatterStopButton *)self->_stopButton centerXAnchor];
  centerXAnchor2 = [(RCPlatterCheckmarkView *)self centerXAnchor];
  v7 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v18[1] = v7;
  heightAnchor = [(RCPlatterStopButton *)self->_stopButton heightAnchor];
  heightAnchor2 = [(RCPlatterCheckmarkView *)self heightAnchor];
  v10 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v18[2] = v10;
  widthAnchor = [(RCPlatterStopButton *)self->_stopButton widthAnchor];
  heightAnchor3 = [(RCPlatterCheckmarkView *)self heightAnchor];
  v13 = [widthAnchor constraintEqualToAnchor:heightAnchor3];
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

      stopButton = [(RCPlatterCheckmarkView *)self stopButton];
      [stopButton transitionToState:2 viaState:0 transitionDuration:v7];
    }
  }
}

@end