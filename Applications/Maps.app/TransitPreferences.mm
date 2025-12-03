@interface TransitPreferences
+ (BOOL)isModeDisabled:(unint64_t)disabled inUserDefaults:(id)defaults;
+ (unint64_t)disabledModesByTogglingMode:(unint64_t)mode inModes:(unint64_t)modes;
+ (void)toggleMode:(unint64_t)mode inUserDefaults:(id)defaults;
- (BOOL)isModeDisabled:(unint64_t)disabled;
- (TransitPreferences)initWithCopy:(id)copy;
- (TransitPreferences)initWithTransitOptions:(id)options defaults:(id)defaults;
- (id)_values;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)transitOptions;
- (id)transitPreferencesByOverridingPropertiesWithUserInfo:(id)info;
- (void)_copyPropertiesTo:(id)to;
- (void)loadValuesFromDefaults;
@end

@implementation TransitPreferences

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
    bOOLValue = 1;
  }

  [(TransitPreferences *)self setShowICFares:bOOLValue];
}

- (id)transitOptions
{
  selfCopy = self;
  if (selfCopy)
  {
    v3 = objc_alloc_init(GEOTransitOptions);
    [v3 setPrioritization:{-[TransitPreferences sortOption](selfCopy, "sortOption")}];
    v4 = objc_alloc_init(GEOFareOptions);
    [v4 setPaymentType:{-[TransitPreferences showICFares](selfCopy, "showICFares")}];
    surchargeOption = [(TransitPreferences *)selfCopy surchargeOption];

    if (surchargeOption)
    {
      surchargeOption2 = [(TransitPreferences *)selfCopy surchargeOption];
      [v4 setPreferredSurchargeType:{objc_msgSend(surchargeOption2, "integerValue")}];
    }

    [v3 setFareOptions:v4];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    disabledModes = [(TransitPreferences *)selfCopy disabledModes];
    v8 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v26 = selfCopy;
    if (qword_10195EA50 != -1)
    {
      dispatch_once(&qword_10195EA50, &stru_10164D218);
    }

    v25 = v4;
    v9 = qword_10195EA48;
    v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v32;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v9);
          }

          integerValue = [*(*(&v31 + 1) + 8 * i) integerValue];
          if ((integerValue & disabledModes) != 0)
          {
            v15 = integerValue;
            v16 = objc_opt_new();
            v17 = v16;
            if (v15 > 3)
            {
              if (v15 == 4)
              {
                v18 = &off_1016E9380;
              }

              else
              {
                if (v15 != 8)
                {
                  goto LABEL_22;
                }

                v18 = &off_1016E9398;
              }
            }

            else
            {
              if (v15 != 1)
              {
                if (v15 == 2)
                {
                  [v16 addObject:&off_1016E9350];
                  v18 = &off_1016E9368;
                  goto LABEL_21;
                }

LABEL_22:
                [v8 addObjectsFromArray:v17];

                continue;
              }

              v18 = &off_1016E9338;
            }

LABEL_21:
            [v17 addObject:v18];
            goto LABEL_22;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v11);
    }

    v19 = [v8 copy];
    v20 = [v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v28;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [v3 addAvoidedMode:{objc_msgSend(*(*(&v27 + 1) + 8 * j), "integerValue", v25)}];
        }

        v21 = [v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v21);
    }

    if (GEOConfigGetBOOL())
    {
      [v3 setRoutingBehavior:1];
    }

    selfCopy = v26;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)transitPreferencesByOverridingPropertiesWithUserInfo:(id)info
{
  infoCopy = info;
  if (!infoCopy)
  {
    v14 = sub_10006D178();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315906;
      v18 = "[TransitPreferences(DirectionsUserInfo) transitPreferencesByOverridingPropertiesWithUserInfo:]";
      v19 = 2080;
      v20 = "RoutePlanningPreferences+DirectionsUserInfo.m";
      v21 = 1024;
      v22 = 23;
      v23 = 2080;
      v24 = "userInfo != nil";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", &v17, 0x26u);
    }

    if (sub_100E03634())
    {
      v15 = sub_10006D178();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = +[NSThread callStackSymbols];
        v17 = 138412290;
        v18 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", &v17, 0xCu);
      }
    }
  }

  v5 = [(TransitPreferences *)self mutableCopy];
  v6 = [infoCopy objectForKeyedSubscript:@"DirectionsAvoidedTransitModesKey"];

  if (v6)
  {
    v7 = [infoCopy objectForKeyedSubscript:@"DirectionsAvoidedTransitModesKey"];
    [v5 setDisabledModes:{objc_msgSend(v7, "integerValue") & 0xF}];
  }

  v8 = [infoCopy objectForKeyedSubscript:@"DirectionsSortOptionKey"];

  if (v8)
  {
    v9 = [infoCopy objectForKeyedSubscript:@"DirectionsSortOptionKey"];
    [v5 setSortOption:{objc_msgSend(v9, "integerValue")}];
  }

  v10 = [infoCopy objectForKeyedSubscript:@"DirectionsTransitSurchargeOptionKey"];

  if (v10)
  {
    v11 = [infoCopy objectForKeyedSubscript:@"DirectionsTransitSurchargeOptionKey"];
    [v5 setSurchargeOption:v11];
  }

  v12 = [v5 copy];

  return v12;
}

- (BOOL)isModeDisabled:(unint64_t)disabled
{
  v5 = objc_opt_class();
  disabledModes = [(TransitPreferences *)self disabledModes];

  return [v5 isModeDisabled:disabled inModes:disabledModes];
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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TransitMutablePreferences allocWithZone:zone];
  defaults = [(WatchSyncedPreferences *)self defaults];
  v6 = [(WatchSyncedPreferences *)v4 initWithDefaults:defaults];

  [(TransitPreferences *)self _copyPropertiesTo:v6];
  return v6;
}

+ (void)toggleMode:(unint64_t)mode inUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v7 = [self disabledModesByTogglingMode:mode inModes:{objc_msgSend(defaultsCopy, "integerForKey:", @"DefaultDisabledTransitModesKey"}];
  [defaultsCopy setInteger:v7 forKey:@"DefaultDisabledTransitModesKey"];

  v8 = +[NSUserDefaults __maps_groupUserDefaults];
  [v8 setInteger:v7 forKey:@"DefaultDisabledTransitModesKey"];
}

+ (BOOL)isModeDisabled:(unint64_t)disabled inUserDefaults:(id)defaults
{
  v6 = [defaults integerForKey:@"DefaultDisabledTransitModesKey"] & 0xF;

  return [self isModeDisabled:disabled inModes:v6];
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

@end