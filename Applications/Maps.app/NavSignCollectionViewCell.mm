@interface NavSignCollectionViewCell
- (NavSignCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)_configureConstraints;
- (void)prepareForReuse;
@end

@implementation NavSignCollectionViewCell

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = NavSignCollectionViewCell;
  [(NavSignCollectionViewCell *)&v3 prepareForReuse];
  [(NavManeuverSignView *)self->_navSignView clearContent];
}

- (void)_configureConstraints
{
  leadingAnchor = [(NavManeuverSignView *)self->_navSignView leadingAnchor];
  contentView = [(NavSignCollectionViewCell *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v20[0] = v16;
  trailingAnchor = [(NavManeuverSignView *)self->_navSignView trailingAnchor];
  contentView2 = [(NavSignCollectionViewCell *)self contentView];
  trailingAnchor2 = [contentView2 trailingAnchor];
  v3 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v20[1] = v3;
  topAnchor = [(NavManeuverSignView *)self->_navSignView topAnchor];
  contentView3 = [(NavSignCollectionViewCell *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v20[2] = v7;
  bottomAnchor = [(NavManeuverSignView *)self->_navSignView bottomAnchor];
  contentView4 = [(NavSignCollectionViewCell *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v11 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v20[3] = v11;
  v12 = [NSArray arrayWithObjects:v20 count:4];
  [NSLayoutConstraint activateConstraints:v12];
}

- (NavSignCollectionViewCell)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = NavSignCollectionViewCell;
  v3 = [(NavSignCollectionViewCell *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(NavSignCollectionViewCell *)v3 setAccessibilityIdentifier:v5];

    contentView = [(NavSignCollectionViewCell *)v3 contentView];
    [contentView setAccessibilityIdentifier:@"NavSignCollectionViewCellContent"];

    v7 = [(NavSignView *)[NavManeuverSignView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    navSignView = v3->_navSignView;
    v3->_navSignView = v7;

    [(NavManeuverSignView *)v3->_navSignView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(NavSignCollectionViewCell *)v3 contentView];
    [contentView2 addSubview:v3->_navSignView];

    [(NavSignCollectionViewCell *)v3 _configureConstraints];
  }

  return v3;
}

@end