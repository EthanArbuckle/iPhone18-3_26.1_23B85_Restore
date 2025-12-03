@interface TransitPreferences
+ (BOOL)isModeDisabled:(unint64_t)disabled inUserDefaults:(id)defaults;
+ (unint64_t)disabledModesByTogglingMode:(unint64_t)mode inModes:(unint64_t)modes;
+ (void)toggleMode:(unint64_t)mode inUserDefaults:(id)defaults;
- (BOOL)isModeDisabled:(unint64_t)disabled;
- (TransitPreferences)initWithCopy:(id)copy;
- (TransitPreferences)initWithTransitOptions:(id)options defaults:(id)defaults;
- (id)_values;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)_copyPropertiesTo:(id)to;
- (void)loadValuesFromDefaults;
@end

@implementation TransitPreferences

- (TransitPreferences)initWithTransitOptions:(id)options defaults:(id)defaults
{
  optionsCopy = options;
  v7 = [(WatchSyncedPreferences *)self initWithDefaults:defaults];
  if (v7)
  {
    -[TransitPreferences setSortOption:](v7, "setSortOption:", [optionsCopy prioritization]);
    fareOptions = [optionsCopy fareOptions];
    v9 = fareOptions;
    if (fareOptions)
    {
      -[TransitPreferences setShowICFares:](v7, "setShowICFares:", [fareOptions paymentType] == 1);
      if ([v9 hasPreferredSurchargeType])
      {
        v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 preferredSurchargeType]);
        [(TransitPreferences *)v7 setSurchargeOption:v10];
      }
    }

    if ([optionsCopy avoidedModesCount])
    {
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v13 = [optionsCopy avoidedModeAtIndex:v11];
        if (v13 <= 2)
        {
          if (v13 != 1)
          {
            if (v13 == 2)
            {
              v12 |= 4uLL;
            }

            goto LABEL_19;
          }
        }

        else if (v13 != 3)
        {
          v14 = v12 | 1;
          if (v13 != 4)
          {
            v14 = v12;
          }

          if (v13 == 5)
          {
            v12 |= 8uLL;
          }

          else
          {
            v12 = v14;
          }

          goto LABEL_19;
        }

        v12 |= 2uLL;
LABEL_19:
        if (++v11 >= [optionsCopy avoidedModesCount])
        {
          goto LABEL_22;
        }
      }
    }

    v12 = 0;
LABEL_22:
    [(TransitPreferences *)v7 setDisabledModes:v12];
  }

  return v7;
}

- (TransitPreferences)initWithCopy:(id)copy
{
  copyCopy = copy;
  v8.receiver = self;
  v8.super_class = TransitPreferences;
  v5 = [(WatchSyncedPreferences *)&v8 initWithCopy:copyCopy];
  if (v5)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (copyCopy)
    {
      if (isKindOfClass)
      {
        [copyCopy _copyPropertiesTo:v5];
      }
    }
  }

  return v5;
}

- (void)loadValuesFromDefaults
{
  defaults = [(WatchSyncedPreferences *)self defaults];
  -[TransitPreferences setDisabledModes:](self, "setDisabledModes:", [defaults integerForKey:@"DefaultDisabledTransitModesKey"] & 0xF);

  defaults2 = [(WatchSyncedPreferences *)self defaults];
  -[TransitPreferences setSortOption:](self, "setSortOption:", [defaults2 integerForKey:@"MapsTransitSortOption"]);

  defaults3 = [(WatchSyncedPreferences *)self defaults];
  v6 = [defaults3 objectForKey:@"MapsTransitSurchargeOption"];
  [(TransitPreferences *)self setSurchargeOption:v6];

  defaults4 = [(WatchSyncedPreferences *)self defaults];
  v9 = [defaults4 objectForKey:@"MapsTransitShowICFaresKey"];

  if (v9)
  {
    bOOLValue = [v9 BOOLValue];
  }

  else
  {
    bOOLValue = &dword_0 + 1;
  }

  [(TransitPreferences *)self setShowICFares:bOOLValue];
}

- (id)_values
{
  v3 = [NSNumber numberWithUnsignedInteger:[(TransitPreferences *)self disabledModes]];
  v10[0] = v3;
  v4 = [NSNumber numberWithInt:[(TransitPreferences *)self sortOption]];
  v10[1] = v4;
  surchargeOption = [(TransitPreferences *)self surchargeOption];
  v6 = surchargeOption;
  if (!surchargeOption)
  {
    v6 = +[NSNull null];
  }

  v10[2] = v6;
  v7 = [NSNumber numberWithBool:[(TransitPreferences *)self showICFares]];
  v10[3] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:4];

  if (!surchargeOption)
  {
  }

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TransitMutablePreferences allocWithZone:zone];
  defaults = [(WatchSyncedPreferences *)self defaults];
  v6 = [(WatchSyncedPreferences *)v4 initWithDefaults:defaults];

  [(TransitPreferences *)self _copyPropertiesTo:v6];
  return v6;
}

- (void)_copyPropertiesTo:(id)to
{
  toCopy = to;
  [toCopy setDisabledModes:{-[TransitPreferences disabledModes](self, "disabledModes")}];
  [toCopy setSortOption:{-[TransitPreferences sortOption](self, "sortOption")}];
  surchargeOption = [(TransitPreferences *)self surchargeOption];
  [toCopy setSurchargeOption:surchargeOption];

  [toCopy setShowICFares:{-[TransitPreferences showICFares](self, "showICFares")}];
}

- (BOOL)isModeDisabled:(unint64_t)disabled
{
  v5 = objc_opt_class();
  disabledModes = [(TransitPreferences *)self disabledModes];

  return [v5 isModeDisabled:disabled inModes:disabledModes];
}

+ (unint64_t)disabledModesByTogglingMode:(unint64_t)mode inModes:(unint64_t)modes
{
  if ((modes & mode) != 0)
  {
    return modes & ~mode;
  }

  else
  {
    return modes | mode;
  }
}

+ (BOOL)isModeDisabled:(unint64_t)disabled inUserDefaults:(id)defaults
{
  v6 = [defaults integerForKey:@"DefaultDisabledTransitModesKey"] & 0xF;

  return [self isModeDisabled:disabled inModes:v6];
}

+ (void)toggleMode:(unint64_t)mode inUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v7 = [self disabledModesByTogglingMode:mode inModes:{objc_msgSend(defaultsCopy, "integerForKey:", @"DefaultDisabledTransitModesKey"}];
  [defaultsCopy setInteger:v7 forKey:@"DefaultDisabledTransitModesKey"];

  v8 = +[NSUserDefaults __maps_groupUserDefaults];
  [v8 setInteger:v7 forKey:@"DefaultDisabledTransitModesKey"];
}

@end