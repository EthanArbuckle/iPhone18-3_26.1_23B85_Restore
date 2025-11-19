@interface RCMainView
- (RCMainView)initWithFrame:(CGRect)a3;
- (void)setBrowseFoldersView:(id)a3;
- (void)updateConstraints;
@end

@implementation RCMainView

- (void)setBrowseFoldersView:(id)a3
{
  v4 = a3;
  [(UIView *)self->_browseFoldersView removeFromSuperview];
  browseFoldersView = self->_browseFoldersView;
  self->_browseFoldersView = v4;
  v6 = v4;

  [(RCMainView *)self addSubview:v6];

  [(RCMainView *)self setNeedsUpdateConstraints];
}

- (RCMainView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = RCMainView;
  v3 = [(RCMainView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(RCMainView *)self browseFoldersView];
  v4 = v3;
  if (v3)
  {
    [v3 alignCenterTopToCenterTopOfView:self padding:0.0];
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