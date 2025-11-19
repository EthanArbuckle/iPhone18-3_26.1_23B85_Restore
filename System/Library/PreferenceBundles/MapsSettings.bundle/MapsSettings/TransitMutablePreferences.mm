@interface TransitMutablePreferences
- (id)copyWithZone:(_NSZone *)a3;
- (void)setMode:(unint64_t)a3 disabled:(BOOL)a4;
- (void)toggleModeEnabled:(unint64_t)a3;
@end

@implementation TransitMutablePreferences

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TransitPreferences allocWithZone:a3];
  v5 = [(WatchSyncedPreferences *)self defaults];
  v6 = [(WatchSyncedPreferences *)v4 initWithDefaults:v5];

  [(TransitPreferences *)self _copyPropertiesTo:v6];
  return v6;
}

- (void)toggleModeEnabled:(unint64_t)a3
{
  v4 = [objc_opt_class() disabledModesByTogglingMode:a3 inModes:{-[TransitPreferences disabledModes](self, "disabledModes")}];

  [(TransitPreferences *)self setDisabledModes:v4];
}

- (void)setMode:(unint64_t)a3 disabled:(BOOL)a4
{
  if (a4)
  {
    v5 = [(TransitPreferences *)self disabledModes]| a3;
  }

  else
  {
    v5 = [(TransitPreferences *)self disabledModes]& ~a3;
  }

  [(TransitPreferences *)self setDisabledModes:v5];
}

@end