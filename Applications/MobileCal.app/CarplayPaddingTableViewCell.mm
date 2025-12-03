@interface CarplayPaddingTableViewCell
- (CarplayPaddingTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation CarplayPaddingTableViewCell

- (CarplayPaddingTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = CarplayPaddingTableViewCell;
  v4 = [(CarplayPaddingTableViewCell *)&v10 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    heightAnchor = [(CarplayPaddingTableViewCell *)v4 heightAnchor];
    v7 = [heightAnchor constraintEqualToConstant:20.0];
    [v7 setActive:1];

    v8 = +[UIColor clearColor];
    [(CarplayPaddingTableViewCell *)v5 setBackgroundColor:v8];

    [(CarplayPaddingTableViewCell *)v5 setUserInteractionEnabled:0];
  }

  return v5;
}

@end