@interface COSTitleSubTitleCell
- (COSTitleSubTitleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation COSTitleSubTitleCell

- (COSTitleSubTitleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = COSTitleSubTitleCell;
  v4 = [(COSTitleSubTitleCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(COSTitleSubTitleCell *)v4 detailTextLabel];
    [v6 setNumberOfLines:0];

    v7 = [(COSTitleSubTitleCell *)v5 detailTextLabel];
    [v7 setLineBreakMode:0];
  }

  return v5;
}

@end