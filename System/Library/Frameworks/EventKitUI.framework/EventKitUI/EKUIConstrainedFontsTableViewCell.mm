@interface EKUIConstrainedFontsTableViewCell
- (EKUIConstrainedFontsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation EKUIConstrainedFontsTableViewCell

- (EKUIConstrainedFontsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = EKUIConstrainedFontsTableViewCell;
  v5 = [(EKUITableViewCell *)&v11 initWithStyle:style reuseIdentifier:identifier];
  if (v5)
  {
    v6 = +[EKUIConstrainedFontUtilities constrainedBodyTextLabelFont];
    textLabel = [(EKUIConstrainedFontsTableViewCell *)v5 textLabel];
    [textLabel setFont:v6];

    v8 = v6;
    if (style == 3)
    {
      v8 = +[EKUIConstrainedFontUtilities constrainedCaption1TextLabelFont];
    }

    detailTextLabel = [(EKUIConstrainedFontsTableViewCell *)v5 detailTextLabel];
    [detailTextLabel setFont:v8];

    if (style == 3)
    {
    }
  }

  return v5;
}

@end