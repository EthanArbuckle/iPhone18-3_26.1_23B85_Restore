@interface HearingSettingsCountdownCell
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation HearingSettingsCountdownCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v14.receiver = self;
  v14.super_class = HearingSettingsCountdownCell;
  v4 = a3;
  [(HearingSettingsCountdownCell *)&v14 refreshCellContentsWithSpecifier:v4];
  v5 = [(HearingSettingsCountdownCell *)self defaultContentConfiguration:v14.receiver];
  v6 = [v4 name];
  [v5 setText:v6];

  v7 = [v4 performGetter];

  [v5 setSecondaryText:v7];
  v8 = +[NSCharacterSet letterCharacterSet];
  v9 = [v7 rangeOfCharacterFromSet:v8];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [v5 secondaryTextProperties];
    v11 = [v10 font];

    v12 = [v5 secondaryTextProperties];
    [v11 pointSize];
    v13 = [UIFont monospacedDigitSystemFontOfSize:"monospacedDigitSystemFontOfSize:weight:" weight:?];
    [v12 setFont:v13];
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