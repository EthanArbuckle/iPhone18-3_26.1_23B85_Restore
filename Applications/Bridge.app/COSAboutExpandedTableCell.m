@interface COSAboutExpandedTableCell
- (COSAboutExpandedTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation COSAboutExpandedTableCell

- (COSAboutExpandedTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v13.receiver = self;
  v13.super_class = COSAboutExpandedTableCell;
  v4 = [(COSAboutExpandedTableCell *)&v13 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = +[PSListController appearance];
    v6 = [v5 altTextColor];
    v7 = v6;
    if (!v6)
    {
      v7 = +[UIColor secondaryLabelColor];
    }

    v8 = [(COSAboutExpandedTableCell *)v4 detailTextLabel];
    [v8 setTextColor:v7];

    if (!v6)
    {
    }

    v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
    v10 = [(COSAboutExpandedTableCell *)v4 detailTextLabel];
    [v10 setFont:v9];

    v11 = [(COSAboutExpandedTableCell *)v4 detailTextLabel];
    [v11 setNumberOfLines:0];
  }

  return v4;
}

@end