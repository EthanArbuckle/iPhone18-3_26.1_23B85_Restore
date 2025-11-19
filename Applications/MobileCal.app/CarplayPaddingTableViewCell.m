@interface CarplayPaddingTableViewCell
- (CarplayPaddingTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation CarplayPaddingTableViewCell

- (CarplayPaddingTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v10.receiver = self;
  v10.super_class = CarplayPaddingTableViewCell;
  v4 = [(CarplayPaddingTableViewCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(CarplayPaddingTableViewCell *)v4 heightAnchor];
    v7 = [v6 constraintEqualToConstant:20.0];
    [v7 setActive:1];

    v8 = +[UIColor clearColor];
    [(CarplayPaddingTableViewCell *)v5 setBackgroundColor:v8];

    [(CarplayPaddingTableViewCell *)v5 setUserInteractionEnabled:0];
  }

  return v5;
}

@end