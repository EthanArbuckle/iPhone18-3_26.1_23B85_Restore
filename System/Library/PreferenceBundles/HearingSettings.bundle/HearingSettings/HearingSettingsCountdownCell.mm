@interface HearingSettingsCountdownCell
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation HearingSettingsCountdownCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v14.receiver = self;
  v14.super_class = HearingSettingsCountdownCell;
  specifierCopy = specifier;
  [(HearingSettingsCountdownCell *)&v14 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [(HearingSettingsCountdownCell *)self defaultContentConfiguration:v14.receiver];
  name = [specifierCopy name];
  [v5 setText:name];

  performGetter = [specifierCopy performGetter];

  [v5 setSecondaryText:performGetter];
  v8 = +[NSCharacterSet letterCharacterSet];
  v9 = [performGetter rangeOfCharacterFromSet:v8];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    secondaryTextProperties = [v5 secondaryTextProperties];
    font = [secondaryTextProperties font];

    secondaryTextProperties2 = [v5 secondaryTextProperties];
    [font pointSize];
    v13 = [UIFont monospacedDigitSystemFontOfSize:"monospacedDigitSystemFontOfSize:weight:" weight:?];
    [secondaryTextProperties2 setFont:v13];
  }

  [(HearingSettingsCountdownCell *)self setContentConfiguration:v5];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HearingSettingsCountdownCell;
  [(HearingSettingsCountdownCell *)&v3 prepareForReuse];
  [(HearingSettingsCountdownCell *)self setContentConfiguration:0];
}

@end