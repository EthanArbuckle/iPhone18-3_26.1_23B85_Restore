@interface BYODMultilineTextCell
- (BYODMultilineTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation BYODMultilineTextCell

- (BYODMultilineTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = BYODMultilineTextCell;
  v7 = [(BYODMultilineTextCell *)&v17 initWithStyle:style reuseIdentifier:identifierCopy];
  v8 = v7;
  if (v7)
  {
    valueLabel = [(BYODMultilineTextCell *)v7 valueLabel];
    [valueLabel setNumberOfLines:0];

    v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    valueLabel2 = [(BYODMultilineTextCell *)v8 valueLabel];
    [valueLabel2 setFont:v10];

    v12 = +[PSListController appearance];
    textColor = [v12 textColor];
    v14 = textColor;
    if (!textColor)
    {
      v14 = +[UIColor labelColor];
    }

    valueLabel3 = [(BYODMultilineTextCell *)v8 valueLabel];
    [valueLabel3 setTextColor:v14];

    if (!textColor)
    {
    }
  }

  return v8;
}

@end