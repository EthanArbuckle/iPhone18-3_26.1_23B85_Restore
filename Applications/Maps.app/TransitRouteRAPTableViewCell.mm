@interface TransitRouteRAPTableViewCell
- (TransitRouteRAPTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setChecked:(BOOL)checked;
@end

@implementation TransitRouteRAPTableViewCell

- (void)setChecked:(BOOL)checked
{
  self->_checked = checked;
  if (checked)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  [(TransitRouteRAPTableViewCell *)self setAccessoryType:v3];
}

- (TransitRouteRAPTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = TransitRouteRAPTableViewCell;
  v4 = [(TransitRouteTableViewCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CenteredTableViewCell *)v4 setMinimumHorizontalMargins:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    v6 = +[UIColor secondarySystemGroupedBackgroundColor];
    [(TransitRouteRAPTableViewCell *)v5 setBackgroundColor:v6];

    [(TransitRouteTableViewCell *)v5 setLeftPadding:15.0];
  }

  return v5;
}

@end