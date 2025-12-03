@interface TransitMutablePreferences
- (id)copyWithZone:(_NSZone *)zone;
- (void)setMode:(unint64_t)mode disabled:(BOOL)disabled;
- (void)toggleModeEnabled:(unint64_t)enabled;
@end

@implementation TransitMutablePreferences

- (void)setMode:(unint64_t)mode disabled:(BOOL)disabled
{
  if (disabled)
  {
    v5 = [(TransitPreferences *)self disabledModes]| mode;
  }

  else
  {
    v5 = [(TransitPreferences *)self disabledModes]& ~mode;
  }

  [(TransitPreferences *)self setDisabledModes:v5];
}

- (void)toggleModeEnabled:(unint64_t)enabled
{
  v4 = [objc_opt_class() disabledModesByTogglingMode:enabled inModes:{-[TransitPreferences disabledModes](self, "disabledModes")}];

  [(TransitPreferences *)self setDisabledModes:v4];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TransitPreferences allocWithZone:zone];
  defaults = [(WatchSyncedPreferences *)self defaults];
  v6 = [(WatchSyncedPreferences *)v4 initWithDefaults:defaults];

  [(TransitPreferences *)self _copyPropertiesTo:v6];
  return v6;
}

@end