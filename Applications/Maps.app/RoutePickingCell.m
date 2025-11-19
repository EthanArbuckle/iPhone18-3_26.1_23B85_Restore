@interface RoutePickingCell
- (RoutePickingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_createSubviews;
@end

@implementation RoutePickingCell

- (void)_createSubviews
{
  v3 = +[UIColor clearColor];
  [(RoutePickingCell *)self setBackgroundColor:v3];

  [(RoutePickingCell *)self setOpaque:0];
  v4 = +[UIColor clearColor];
  v5 = [(RoutePickingCell *)self contentView];
  [v5 setBackgroundColor:v4];

  v6 = [(RoutePickingCell *)self contentView];
  [v6 setOpaque:0];

  v7 = +[RoutingAppearanceManager customGrayBlurCellBackgroundView];
  [(RoutePickingCell *)self setSelectedBackgroundView:v7];
}

- (RoutePickingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = RoutePickingCell;
  v4 = [(CenteredTableViewCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CenteredTableViewCell *)v4 setMinimumHorizontalMargins:0.0, 16.0, 0.0, 16.0];
    [(RoutePickingCell *)v5 _createSubviews];
    v6 = [(RoutePickingCell *)v5 _autolayoutConstraints];
    [NSLayoutConstraint activateConstraints:v6];

    v7 = v5;
  }

  return v5;
}

@end