@interface VSTVAppDeveloperSettingsSubtitleCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation VSTVAppDeveloperSettingsSubtitleCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v4.receiver = self;
  v4.super_class = VSTVAppDeveloperSettingsSubtitleCell;
  [(VSTVAppDeveloperSettingsSubtitleCell *)&v4 refreshCellContentsWithSpecifier:specifier];
  [(VSTVAppDeveloperSettingsSubtitleCell *)self setNeedsUpdateConfiguration];
}

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  specifier = [(VSTVAppDeveloperSettingsSubtitleCell *)self specifier];
  v5 = [stateCopy copy];

  v6 = +[UIListContentConfiguration subtitleCellConfiguration];
  v7 = [v6 updatedConfigurationForState:v5];

  v8 = [specifier objectForKeyedSubscript:PSTitleKey];
  [v7 setText:v8];

  v9 = +[UIColor grayColor];
  secondaryTextProperties = [v7 secondaryTextProperties];
  [secondaryTextProperties setColor:v9];

  v11 = [specifier objectForKeyedSubscript:PSTableCellSubtitleTextKey];
  [v7 setSecondaryText:v11];

  identifier = [specifier identifier];
  [(VSTVAppDeveloperSettingsSubtitleCell *)self setAccessibilityIdentifier:identifier];

  [(VSTVAppDeveloperSettingsSubtitleCell *)self setContentConfiguration:v7];
}

@end