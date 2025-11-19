@interface COSHeadphoneLevelLimitDescriptionCell
- (COSHeadphoneLevelLimitDescriptionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setSeparatorStyle:(int64_t)a3;
@end

@implementation COSHeadphoneLevelLimitDescriptionCell

- (COSHeadphoneLevelLimitDescriptionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v10.receiver = self;
  v10.super_class = COSHeadphoneLevelLimitDescriptionCell;
  v4 = [(COSHeadphoneLevelLimitDescriptionCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    v6 = [(COSHeadphoneLevelLimitDescriptionCell *)v4 detailTextLabel];
    [v6 setFont:v5];

    v7 = [(COSHeadphoneLevelLimitDescriptionCell *)v4 detailTextLabel];
    [v7 setNumberOfLines:0];

    v8 = [(COSHeadphoneLevelLimitDescriptionCell *)v4 detailTextLabel];
    [v8 setLineBreakMode:0];
  }

  return v4;
}

- (void)setSeparatorStyle:(int64_t)a3
{
  v3.receiver = self;
  v3.super_class = COSHeadphoneLevelLimitDescriptionCell;
  [(COSHeadphoneLevelLimitDescriptionCell *)&v3 setSeparatorStyle:0];
}

@end