@interface TransitPreferences
+ (BOOL)isModeDisabled:(unint64_t)a3 inUserDefaults:(id)a4;
+ (unint64_t)disabledModesByTogglingMode:(unint64_t)a3 inModes:(unint64_t)a4;
+ (void)toggleMode:(unint64_t)a3 inUserDefaults:(id)a4;
- (BOOL)isModeDisabled:(unint64_t)a3;
- (TransitPreferences)initWithCopy:(id)a3;
- (TransitPreferences)initWithTransitOptions:(id)a3 defaults:(id)a4;
- (id)_values;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)transitOptions;
- (id)transitPreferencesByOverridingPropertiesWithUserInfo:(id)a3;
- (void)_copyPropertiesTo:(id)a3;
- (void)loadValuesFromDefaults;
@end

@implementation TransitPreferences

- (void)loadValuesFromDefaults
{
  v3 = [(WatchSyncedPreferences *)self defaults];
  -[TransitPreferences setDisabledModes:](self, "setDisabledModes:", [v3 integerForKey:@"DefaultDisabledTransitModesKey"] & 0xF);

  v4 = [(WatchSyncedPreferences *)self defaults];
  -[TransitPreferences setSortOption:](self, "setSortOption:", [v4 integerForKey:@"MapsTransitSortOption"]);

  v5 = [(WatchSyncedPreferences *)self defaults];
  v6 = [v5 objectForKey:@"MapsTransitSurchargeOption"];
  [(TransitPreferences *)self setSurchargeOption:v6];

  v7 = [(WatchSyncedPreferences *)self defaults];
  v9 = [v7 objectForKey:@"MapsTransitShowICFaresKey"];

  if (v9)
  {
    v8 = [v9 BOOLValue];
  }

  else
  {
    v8 = 1;
  }

  [(TransitPreferences *)self setShowICFares:v8];
}

- (id)transitOptions
{
  v2 = self;
  if (v2)
  {
    v3 = objc_alloc_init(GEOTransitOptions);
    [v3 setPrioritization:{-[TransitPreferences sortOption](v2, "sortOption")}];
    v4 = objc_alloc_init(GEOFareOptions);
    [v4 setPaymentType:{-[TransitPreferences showICFares](v2, "showICFares")}];
    v5 = [(TransitPreferences *)v2 surchargeOption];

    if (v5)
    {
      v6 = [(TransitPreferences *)v2 surchargeOption];
      [v4 setPreferredSurchargeType:{objc_msgSend(v6, "integerValue")}];
    }

    [v3 setFareOptions:v4];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = [(TransitPreferences *)v2 disabledModes];
    v8 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v26 = v2;
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

          v14 = [*(*(&v31 + 1) + 8 * i) integerValue];
          if ((v14 & v7) != 0)
          {
            v15 = v14;
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

    v2 = v26;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)transitPreferencesByOverridingPropertiesWithUserInfo:(id)a3
{
  v4 = a3;
  if (!v4)
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
  v6 = [v4 objectForKeyedSubscript:@"DirectionsAvoidedTransitModesKey"];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"DirectionsAvoidedTransitModesKey"];
    [v5 setDisabledModes:{objc_msgSend(v7, "integerValue") & 0xF}];
  }

  v8 = [v4 objectForKeyedSubscript:@"DirectionsSortOptionKey"];

  if (v8)
  {
    v9 = [v4 objectForKeyedSubscript:@"DirectionsSortOptionKey"];
    [v5 setSortOption:{objc_msgSend(v9, "integerValue")}];
  }

  v10 = [v4 objectForKeyedSubscript:@"DirectionsTransitSurchargeOptionKey"];

  if (v10)
  {
    v11 = [v4 objectForKeyedSubscript:@"DirectionsTransitSurchargeOptionKey"];
    [v5 setSurchargeOption:v11];
  }

  v12 = [v5 copy];

  return v12;
}

- (BOOL)isModeDisabled:(unint64_t)a3
{
  v5 = objc_opt_class();
  v6 = [(TransitPreferences *)self disabledModes];

  return [v5 isModeDisabled:a3 inModes:v6];
}

- (void)_copyPropertiesTo:(id)a3
{
  v5 = a3;
  [v5 setDisabledModes:{-[TransitPreferences disabledModes](self, "disabledModes")}];
  [v5 setSortOption:{-[TransitPreferences sortOption](self, "sortOption")}];
  v4 = [(TransitPreferences *)self surchargeOption];
  [v5 setSurchargeOption:v4];

  [v5 setShowICFares:{-[TransitPreferences showICFares](self, "showICFares")}];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TransitMutablePreferences allocWithZone:a3];
  v5 = [(WatchSyncedPreferences *)self defaults];
  v6 = [(WatchSyncedPreferences *)v4 initWithDefaults:v5];

  [(TransitPreferences *)self _copyPropertiesTo:v6];
  return v6;
}

+ (void)toggleMode:(unint64_t)a3 inUserDefaults:(id)a4
{
  v6 = a4;
  v7 = [a1 disabledModesByTogglingMode:a3 inModes:{objc_msgSend(v6, "integerForKey:", @"DefaultDisabledTransitModesKey"}];
  [v6 setInteger:v7 forKey:@"DefaultDisabledTransitModesKey"];

  v8 = +[NSUserDefaults __maps_groupUserDefaults];
  [v8 setInteger:v7 forKey:@"DefaultDisabledTransitModesKey"];
}

+ (BOOL)isModeDisabled:(unint64_t)a3 inUserDefaults:(id)a4
{
  v6 = [a4 integerForKey:@"DefaultDisabledTransitModesKey"] & 0xF;

  return [a1 isModeDisabled:a3 inModes:v6];
}

+ (unint64_t)disabledModesByTogglingMode:(unint64_t)a3 inModes:(unint64_t)a4
{
  if ((a4 & a3) != 0)
  {
    return a4 & ~a3;
  }

  else
  {
    return a4 | a3;
  }
}

- (id)_values
{
  v3 = [NSNumber numberWithUnsignedInteger:[(TransitPreferences *)self disabledModes]];
  v10[0] = v3;
  v4 = [NSNumber numberWithInt:[(TransitPreferences *)self sortOption]];
  v10[1] = v4;
  v5 = [(TransitPreferences *)self surchargeOption];
  v6 = v5;
  if (!v5)
  {
    v6 = +[NSNull null];
  }

  v10[2] = v6;
  v7 = [NSNumber numberWithBool:[(TransitPreferences *)self showICFares]];
  v10[3] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:4];

  if (!v5)
  {
  }

  return v8;
}

- (TransitPreferences)initWithCopy:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TransitPreferences;
  v5 = [(WatchSyncedPreferences *)&v8 initWithCopy:v4];
  if (v5)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (v4)
    {
      if (isKindOfClass)
      {
        [v4 _copyPropertiesTo:v5];
      }
    }
  }

  return v5;
}

- (TransitPreferences)initWithTransitOptions:(id)a3 defaults:(id)a4
{
  v6 = a3;
  v7 = [(WatchSyncedPreferences *)self initWithDefaults:a4];
  if (v7)
  {
    -[TransitPreferences setSortOption:](v7, "setSortOption:", [v6 prioritization]);
    v8 = [v6 fareOptions];
    v9 = v8;
    if (v8)
    {
      -[TransitPreferences setShowICFares:](v7, "setShowICFares:", [v8 paymentType] == 1);
      if ([v9 hasPreferredSurchargeType])
      {
        v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 preferredSurchargeType]);
        [(TransitPreferences *)v7 setSurchargeOption:v10];
      }
    }

    if ([v6 avoidedModesCount])
    {
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v13 = [v6 avoidedModeAtIndex:v11];
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
        if (++v11 >= [v6 avoidedModesCount])
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