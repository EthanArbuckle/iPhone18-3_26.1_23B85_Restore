@interface EKUIConstrainedFontsTableViewCell
- (EKUIConstrainedFontsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation EKUIConstrainedFontsTableViewCell

- (EKUIConstrainedFontsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v11.receiver = self;
  v11.super_class = EKUIConstrainedFontsTableViewCell;
  v5 = [(EKUITableViewCell *)&v11 initWithStyle:a3 reuseIdentifier:a4];
  if (v5)
  {
    v6 = +[EKUIConstrainedFontUtilities constrainedBodyTextLabelFont];
    v7 = [(EKUIConstrainedFontsTableViewCell *)v5 textLabel];
    [v7 setFont:v6];

    v8 = v6;
    if (a3 == 3)
    {
      v8 = +[EKUIConstrainedFontUtilities constrainedCaption1TextLabelFont];
    }

    v9 = [(EKUIConstrainedFontsTableViewCell *)v5 detailTextLabel];
    [v9 setFont:v8];

    if (a3 == 3)
    {
    }
  }

  return v5;
}

@end