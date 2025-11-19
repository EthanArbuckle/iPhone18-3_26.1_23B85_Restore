@interface _PHMeCardGeocoderPreferences
+ (id)sharedPreferences;
- (BOOL)isActivelyUsing;
- (_PHMeCardGeocoderPreferences)init;
- (double)_bestTimeIntervalForKey:(id)a3;
- (id)_constructCurrentValues;
- (void)dealloc;
- (void)setActivelyUsing:(BOOL)a3;
@end

@implementation _PHMeCardGeocoderPreferences

+ (id)sharedPreferences
{
  if (qword_1003B0E68 != -1)
  {
    sub_100256198();
  }

  v3 = qword_1003B0E70;

  return v3;
}

- (_PHMeCardGeocoderPreferences)init
{
  v13.receiver = self;
  v13.super_class = _PHMeCardGeocoderPreferences;
  v2 = [(_PHMeCardGeocoderPreferences *)&v13 init];
  if (v2)
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [v3 pathForResource:@"PHMeCardGeocoderPreferenceDefaults" ofType:@"plist"];

    if (v4)
    {
      v5 = sub_100004F84();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Loading default PHMeCardGeocoder preferences from file: %@", buf, 0xCu);
      }

      v6 = [[NSDictionary alloc] initWithContentsOfFile:v4];
      defaultValues = v2->_defaultValues;
      v2->_defaultValues = v6;

      v8 = sub_100004F84();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v2->_defaultValues;
        *buf = 138412290;
        v15 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Default values = %@", buf, 0xCu);
      }
    }

    v10 = [(_PHMeCardGeocoderPreferences *)v2 _constructCurrentValues];
    currentValues = v2->_currentValues;
    v2->_currentValues = v10;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = _PHMeCardGeocoderPreferences;
  [(_PHMeCardGeocoderPreferences *)&v4 dealloc];
}

- (id)_constructCurrentValues
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = PHPreferencesGetValueInDomain();
  if (v3)
  {
    [v2 setValue:v3 forKey:@"PeriodLength"];
  }

  v4 = PHPreferencesGetValueInDomain();
  if (v4)
  {
    [v2 setValue:v4 forKey:@"ActiveUsagePeriodLength"];
  }

  v5 = [NSDictionary dictionaryWithDictionary:v2];

  return v5;
}

- (double)_bestTimeIntervalForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_currentValues valueForKey:v4];
  if (v5 || ([(NSDictionary *)self->_defaultValues valueForKey:v4], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v5 intValue];
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (BOOL)isActivelyUsing
{
  v2 = PHPreferencesGetValueInDomain();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setActivelyUsing:(BOOL)a3
{
  v3 = a3;
  if ([(_PHMeCardGeocoderPreferences *)self isActivelyUsing]!= a3)
  {
    v4 = sub_100004F84();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = @"NO";
      if (v3)
      {
        v5 = @"YES";
      }

      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting geocoder actively used value to %@", &v7, 0xCu);
    }

    v6 = [NSNumber numberWithBool:v3];
    PHPreferencesSetValueInDomain();
  }
}

@end