@interface COSTitleSubTitleCell
- (COSTitleSubTitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation COSTitleSubTitleCell

- (COSTitleSubTitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = COSTitleSubTitleCell;
  v4 = [(COSTitleSubTitleCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    detailTextLabel = [(COSTitleSubTitleCell *)v4 detailTextLabel];
    [detailTextLabel setNumberOfLines:0];

    detailTextLabel2 = [(COSTitleSubTitleCell *)v5 detailTextLabel];
    [detailTextLabel2 setLineBreakMode:0];
  }

  return v5;
}

@end