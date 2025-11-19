@interface BYODMultilineTextCell
- (BYODMultilineTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation BYODMultilineTextCell

- (BYODMultilineTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6 = a4;
  v17.receiver = self;
  v17.super_class = BYODMultilineTextCell;
  v7 = [(BYODMultilineTextCell *)&v17 initWithStyle:a3 reuseIdentifier:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [(BYODMultilineTextCell *)v7 valueLabel];
    [v9 setNumberOfLines:0];

    v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    v11 = [(BYODMultilineTextCell *)v8 valueLabel];
    [v11 setFont:v10];

    v12 = +[PSListController appearance];
    v13 = [v12 textColor];
    v14 = v13;
    if (!v13)
    {
      v14 = +[UIColor labelColor];
    }

    v15 = [(BYODMultilineTextCell *)v8 valueLabel];
    [v15 setTextColor:v14];

    if (!v13)
    {
    }
  }

  return v8;
}

@end