@interface COSHeadphoneLevelLimitDescriptionCell
- (COSHeadphoneLevelLimitDescriptionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setSeparatorStyle:(int64_t)style;
@end

@implementation COSHeadphoneLevelLimitDescriptionCell

- (COSHeadphoneLevelLimitDescriptionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = COSHeadphoneLevelLimitDescriptionCell;
  v4 = [(COSHeadphoneLevelLimitDescriptionCell *)&v10 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    detailTextLabel = [(COSHeadphoneLevelLimitDescriptionCell *)v4 detailTextLabel];
    [detailTextLabel setFont:v5];

    detailTextLabel2 = [(COSHeadphoneLevelLimitDescriptionCell *)v4 detailTextLabel];
    [detailTextLabel2 setNumberOfLines:0];

    detailTextLabel3 = [(COSHeadphoneLevelLimitDescriptionCell *)v4 detailTextLabel];
    [detailTextLabel3 setLineBreakMode:0];
  }

  return v4;
}

- (void)setSeparatorStyle:(int64_t)style
{
  v3.receiver = self;
  v3.super_class = COSHeadphoneLevelLimitDescriptionCell;
  [(COSHeadphoneLevelLimitDescriptionCell *)&v3 setSeparatorStyle:0];
}

@end