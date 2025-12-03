@interface COSAboutExpandedTableCell
- (COSAboutExpandedTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation COSAboutExpandedTableCell

- (COSAboutExpandedTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v13.receiver = self;
  v13.super_class = COSAboutExpandedTableCell;
  v4 = [(COSAboutExpandedTableCell *)&v13 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = +[PSListController appearance];
    altTextColor = [v5 altTextColor];
    v7 = altTextColor;
    if (!altTextColor)
    {
      v7 = +[UIColor secondaryLabelColor];
    }

    detailTextLabel = [(COSAboutExpandedTableCell *)v4 detailTextLabel];
    [detailTextLabel setTextColor:v7];

    if (!altTextColor)
    {
    }

    v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
    detailTextLabel2 = [(COSAboutExpandedTableCell *)v4 detailTextLabel];
    [detailTextLabel2 setFont:v9];

    detailTextLabel3 = [(COSAboutExpandedTableCell *)v4 detailTextLabel];
    [detailTextLabel3 setNumberOfLines:0];
  }

  return v4;
}

@end