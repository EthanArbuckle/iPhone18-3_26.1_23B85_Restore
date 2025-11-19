@interface RoutePlanningFooterCell
- (RoutePlanningFooterCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation RoutePlanningFooterCell

- (RoutePlanningFooterCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v19.receiver = self;
  v19.super_class = RoutePlanningFooterCell;
  v4 = [(RoutePlanningFooterCell *)&v19 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = +[UIColor clearColor];
    [(RoutePlanningFooterCell *)v4 setBackgroundColor:v5];

    v6 = +[UIColor clearColor];
    v7 = [(RoutePlanningFooterCell *)v4 contentView];
    [v7 setBackgroundColor:v6];

    v8 = [RoutePlanningFooterView alloc];
    v9 = [(RoutePlanningFooterCell *)v4 contentView];
    [v9 bounds];
    v10 = [(RoutePlanningFooterView *)v8 initWithFrame:?];
    footerView = v4->_footerView;
    v4->_footerView = v10;

    [(RoutePlanningFooterView *)v4->_footerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [(RoutePlanningFooterCell *)v4 contentView];
    [v12 addSubview:v4->_footerView];

    v13 = v4->_footerView;
    v14 = [(RoutePlanningFooterCell *)v4 contentView];
    LODWORD(v15) = 1148846080;
    v16 = [(RoutePlanningFooterView *)v13 _maps_constraintsEqualToEdgesOfView:v14 priority:v15];
    v17 = [v16 allConstraints];
    [NSLayoutConstraint activateConstraints:v17];
  }

  return v4;
}

@end