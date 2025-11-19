@interface NavSignCollectionViewCell
- (NavSignCollectionViewCell)initWithFrame:(CGRect)a3;
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
  v18 = [(NavManeuverSignView *)self->_navSignView leadingAnchor];
  v19 = [(NavSignCollectionViewCell *)self contentView];
  v17 = [v19 leadingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v20[0] = v16;
  v14 = [(NavManeuverSignView *)self->_navSignView trailingAnchor];
  v15 = [(NavSignCollectionViewCell *)self contentView];
  v13 = [v15 trailingAnchor];
  v3 = [v14 constraintEqualToAnchor:v13];
  v20[1] = v3;
  v4 = [(NavManeuverSignView *)self->_navSignView topAnchor];
  v5 = [(NavSignCollectionViewCell *)self contentView];
  v6 = [v5 topAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  v20[2] = v7;
  v8 = [(NavManeuverSignView *)self->_navSignView bottomAnchor];
  v9 = [(NavSignCollectionViewCell *)self contentView];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintLessThanOrEqualToAnchor:v10];
  v20[3] = v11;
  v12 = [NSArray arrayWithObjects:v20 count:4];
  [NSLayoutConstraint activateConstraints:v12];
}

- (NavSignCollectionViewCell)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = NavSignCollectionViewCell;
  v3 = [(NavSignCollectionViewCell *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(NavSignCollectionViewCell *)v3 setAccessibilityIdentifier:v5];

    v6 = [(NavSignCollectionViewCell *)v3 contentView];
    [v6 setAccessibilityIdentifier:@"NavSignCollectionViewCellContent"];

    v7 = [(NavSignView *)[NavManeuverSignView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    navSignView = v3->_navSignView;
    v3->_navSignView = v7;

    [(NavManeuverSignView *)v3->_navSignView setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [(NavSignCollectionViewCell *)v3 contentView];
    [v9 addSubview:v3->_navSignView];

    [(NavSignCollectionViewCell *)v3 _configureConstraints];
  }

  return v3;
}

@end