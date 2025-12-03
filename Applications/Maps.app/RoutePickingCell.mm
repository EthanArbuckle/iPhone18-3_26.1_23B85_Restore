@interface RoutePickingCell
- (RoutePickingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_createSubviews;
@end

@implementation RoutePickingCell

- (void)_createSubviews
{
  v3 = +[UIColor clearColor];
  [(RoutePickingCell *)self setBackgroundColor:v3];

  [(RoutePickingCell *)self setOpaque:0];
  v4 = +[UIColor clearColor];
  contentView = [(RoutePickingCell *)self contentView];
  [contentView setBackgroundColor:v4];

  contentView2 = [(RoutePickingCell *)self contentView];
  [contentView2 setOpaque:0];

  v7 = +[RoutingAppearanceManager customGrayBlurCellBackgroundView];
  [(RoutePickingCell *)self setSelectedBackgroundView:v7];
}

- (RoutePickingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = RoutePickingCell;
  v4 = [(CenteredTableViewCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CenteredTableViewCell *)v4 setMinimumHorizontalMargins:0.0, 16.0, 0.0, 16.0];
    [(RoutePickingCell *)v5 _createSubviews];
    _autolayoutConstraints = [(RoutePickingCell *)v5 _autolayoutConstraints];
    [NSLayoutConstraint activateConstraints:_autolayoutConstraints];

    v7 = v5;
  }

  return v5;
}

@end