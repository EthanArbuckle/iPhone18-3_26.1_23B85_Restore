@interface RCMainView
- (RCMainView)initWithFrame:(CGRect)frame;
- (void)setBrowseFoldersView:(id)view;
- (void)updateConstraints;
@end

@implementation RCMainView

- (void)setBrowseFoldersView:(id)view
{
  viewCopy = view;
  [(UIView *)self->_browseFoldersView removeFromSuperview];
  browseFoldersView = self->_browseFoldersView;
  self->_browseFoldersView = viewCopy;
  v6 = viewCopy;

  [(RCMainView *)self addSubview:v6];

  [(RCMainView *)self setNeedsUpdateConstraints];
}

- (RCMainView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = RCMainView;
  v3 = [(RCMainView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(RCMainView *)v3 _commonInit];
  }

  return v4;
}

- (void)updateConstraints
{
  v8.receiver = self;
  v8.super_class = RCMainView;
  [(RCMainView *)&v8 updateConstraints];
  browseFoldersView = [(RCMainView *)self browseFoldersView];
  v4 = browseFoldersView;
  if (browseFoldersView)
  {
    [browseFoldersView alignCenterTopToCenterTopOfView:self padding:0.0];
    [v4 constrainWidthWithView:self padding:0.0];
    v5 = [NSLayoutConstraint constraintWithItem:v4 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
    v6 = [NSLayoutConstraint constraintWithItem:v4 attribute:4 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:0.0];
    v9[0] = v5;
    v9[1] = v6;
    v7 = [NSArray arrayWithObjects:v9 count:2];
    [(RCMainView *)self addConstraints:v7];
  }
}

@end