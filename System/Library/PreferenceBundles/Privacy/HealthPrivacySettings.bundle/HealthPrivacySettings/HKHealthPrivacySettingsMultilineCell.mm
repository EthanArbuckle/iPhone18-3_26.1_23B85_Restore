@interface HKHealthPrivacySettingsMultilineCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation HKHealthPrivacySettingsMultilineCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v5.receiver = self;
  v5.super_class = HKHealthPrivacySettingsMultilineCell;
  [(HKHealthPrivacySettingsMultilineCell *)&v5 refreshCellContentsWithSpecifier:specifier];
  textLabel = [(HKHealthPrivacySettingsMultilineCell *)self textLabel];
  [textLabel setNumberOfLines:0];

  [(HKHealthPrivacySettingsMultilineCell *)self setNeedsLayout];
}

@end