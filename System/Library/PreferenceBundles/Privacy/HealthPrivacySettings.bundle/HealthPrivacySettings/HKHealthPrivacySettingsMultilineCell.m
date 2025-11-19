@interface HKHealthPrivacySettingsMultilineCell
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation HKHealthPrivacySettingsMultilineCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKHealthPrivacySettingsMultilineCell;
  [(HKHealthPrivacySettingsMultilineCell *)&v5 refreshCellContentsWithSpecifier:a3];
  v4 = [(HKHealthPrivacySettingsMultilineCell *)self textLabel];
  [v4 setNumberOfLines:0];

  [(HKHealthPrivacySettingsMultilineCell *)self setNeedsLayout];
}

@end