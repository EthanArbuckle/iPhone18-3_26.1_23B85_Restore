@interface RoutePlanningFooterCell
- (RoutePlanningFooterCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation RoutePlanningFooterCell

- (RoutePlanningFooterCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v19.receiver = self;
  v19.super_class = RoutePlanningFooterCell;
  v4 = [(RoutePlanningFooterCell *)&v19 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = +[UIColor clearColor];
    [(RoutePlanningFooterCell *)v4 setBackgroundColor:v5];

    v6 = +[UIColor clearColor];
    contentView = [(RoutePlanningFooterCell *)v4 contentView];
    [contentView setBackgroundColor:v6];

    v8 = [RoutePlanningFooterView alloc];
    contentView2 = [(RoutePlanningFooterCell *)v4 contentView];
    [contentView2 bounds];
    v10 = [(RoutePlanningFooterView *)v8 initWithFrame:?];
    footerView = v4->_footerView;
    v4->_footerView = v10;

    [(RoutePlanningFooterView *)v4->_footerView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView3 = [(RoutePlanningFooterCell *)v4 contentView];
    [contentView3 addSubview:v4->_footerView];

    v13 = v4->_footerView;
    contentView4 = [(RoutePlanningFooterCell *)v4 contentView];
    LODWORD(v15) = 1148846080;
    v16 = [(RoutePlanningFooterView *)v13 _maps_constraintsEqualToEdgesOfView:contentView4 priority:v15];
    allConstraints = [v16 allConstraints];
    [NSLayoutConstraint activateConstraints:allConstraints];
  }

  return v4;
}

@end