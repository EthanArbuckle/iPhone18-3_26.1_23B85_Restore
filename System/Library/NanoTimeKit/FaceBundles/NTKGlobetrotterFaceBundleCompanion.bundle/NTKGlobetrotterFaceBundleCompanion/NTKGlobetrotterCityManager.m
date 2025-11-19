@interface NTKGlobetrotterCityManager
+ (CLLocationCoordinate2D)idealizedCityCoordinate;
+ (id)_idealizedCity;
+ (id)idealizedTimeZone;
+ (id)sharedInstance;
- (BOOL)_skipLocalization;
- (CLLocationCoordinate2D)cityCoordinateForHourOffset:(int64_t)a3;
- (NTKGlobetrotterCityManager)init;
- (id)_cityAtIndex:(unint64_t)a3;
- (id)displayNameForCityAtIndex:(unint64_t)a3;
- (id)timeZoneForCityAtIndex:(unint64_t)a3 hourOffset:(int64_t)a4;
@end

@implementation NTKGlobetrotterCityManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2668;
  block[3] = &unk_10490;
  block[4] = a1;
  if (qword_15B98 != -1)
  {
    dispatch_once(&qword_15B98, block);
  }

  v2 = qword_15BA0;

  return v2;
}

- (NTKGlobetrotterCityManager)init
{
  v15.receiver = self;
  v15.super_class = NTKGlobetrotterCityManager;
  v2 = [(NTKGlobetrotterCityManager *)&v15 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [&off_11238 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(&off_11238);
          }

          v8 = [[WorldClockCity alloc] initWithALCityIdentifier:{objc_msgSend(*(*(&v11 + 1) + 8 * v7), "intValue")}];
          if (v8)
          {
            [(NSArray *)v3 addObject:v8];
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [&off_11238 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v5);
    }

    cities = v2->_cities;
    v2->_cities = v3;
  }

  return v2;
}

- (id)displayNameForCityAtIndex:(unint64_t)a3
{
  v4 = [(NTKGlobetrotterCityManager *)self _cityAtIndex:a3];
  v5 = v4;
  if (!v4)
  {
    v9 = 0;
    goto LABEL_38;
  }

  v6 = [v4 alCityId];
  v7 = [v6 intValue];

  if (v7 <= 151)
  {
    if (v7 <= 59)
    {
      switch(v7)
      {
        case 12:
          v8 = @"CITY_NAME_ALASKA_TIME_ZONE";
          goto LABEL_37;
        case 26:
          v8 = @"CITY_NAME_INDOCHINA_TIME_ZONE";
          goto LABEL_37;
        case 31:
          v8 = @"CITY_NAME_CHINA_STANDARD_TIME_ZONE";
          goto LABEL_37;
      }
    }

    else if (v7 > 118)
    {
      if (v7 == 119)
      {
        v8 = @"CITY_NAME_HAWAII_STANDARD_TIME_ZONE";
        goto LABEL_37;
      }

      if (v7 == 149)
      {
        v8 = @"CITY_NAME_WESTERN_EUROPEAN_TIME_ZONE";
        goto LABEL_37;
      }
    }

    else
    {
      if (v7 == 60)
      {
        v8 = @"CITY_NAME_VENEZUELAN_STANDARD_TIME_ZONE";
        goto LABEL_37;
      }

      if (v7 == 105)
      {
        v8 = @"CITY_NAME_SOUTH_GEORGIA_TIME_ZONE";
LABEL_37:
        v9 = [NTKGlobetrotterFaceBundle localizedStringForKey:v8 comment:@"city override name"];
        goto LABEL_38;
      }
    }

    goto LABEL_41;
  }

  if (v7 <= 231)
  {
    switch(v7)
    {
      case 152:
        v8 = @"CITY_NAME_PACIFIC_TIME_ZONE";
        goto LABEL_37;
      case 173:
        v8 = @"CITY_NAME_CENTRAL_TIME_ZONE";
        goto LABEL_37;
      case 199:
        v8 = @"CITY_NAME_EASTERN_TIME_ZONE";
        goto LABEL_37;
    }

    goto LABEL_41;
  }

  if (v7 <= 367)
  {
    if (v7 == 232)
    {
      v8 = @"CITY_NAME_AZORES_TIME_ZONE";
      goto LABEL_37;
    }

    if (v7 == 246)
    {
      v8 = @"CITY_NAME_BRASILIA_TIME_ZONE";
      goto LABEL_37;
    }

    goto LABEL_41;
  }

  if (v7 == 509)
  {
    v8 = @"CITY_NAME_PAKISTAN_STANDARD_TIME_ZONE";
    goto LABEL_37;
  }

  if (v7 != 368)
  {
LABEL_41:
    if ([(NTKGlobetrotterCityManager *)self _skipLocalization])
    {
      v10 = [v5 unlocalizedCityName];
      goto LABEL_43;
    }

    v14 = [v5 name];
LABEL_46:
    v12 = v14;
    v13 = [v14 localizedUppercaseString];
    goto LABEL_47;
  }

  if (![(NTKGlobetrotterCityManager *)self _skipLocalization])
  {
    v14 = [v5 countryName];
    goto LABEL_46;
  }

  v10 = [v5 unlocalizedCountryName];
LABEL_43:
  v12 = v10;
  v13 = [v10 uppercaseString];
LABEL_47:
  v9 = v13;

LABEL_38:

  return v9;
}

- (CLLocationCoordinate2D)cityCoordinateForHourOffset:(int64_t)a3
{
  v4 = 12 - a3;
  if (a3 >= 13)
  {
    v4 += [(NSArray *)self->_cities count];
  }

  v5 = [(NTKGlobetrotterCityManager *)self _cityAtIndex:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 alCity];
    [v7 latitude];
    v9 = v8;
    [v7 longitude];
    v11 = CLLocationCoordinate2DMake(v9, v10);
    latitude = v11.latitude;
    longitude = v11.longitude;
  }

  else
  {
    v14 = CLLocationCoordinate2DMake(0.0, 0.0);
    latitude = v14.latitude;
    longitude = v14.longitude;
  }

  v15 = latitude;
  v16 = longitude;
  result.longitude = v16;
  result.latitude = v15;
  return result;
}

- (id)timeZoneForCityAtIndex:(unint64_t)a3 hourOffset:(int64_t)a4
{
  v5 = a4 + a3;
  v6 = [(NSArray *)self->_cities count];
  if (v5 < 0)
  {
    v7 = v6 + v5;
  }

  else
  {
    v7 = v5 % v6;
  }

  v8 = [(NTKGlobetrotterCityManager *)self _cityAtIndex:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 timeZone];
    v11 = [NSTimeZone timeZoneWithName:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)idealizedTimeZone
{
  v2 = [a1 _idealizedCity];
  v3 = [v2 timeZone];
  v4 = [NSTimeZone timeZoneWithName:v3];

  return v4;
}

+ (CLLocationCoordinate2D)idealizedCityCoordinate
{
  v2 = [a1 _idealizedCity];
  v3 = [v2 alCity];

  [v3 latitude];
  v5 = v4;
  [v3 longitude];
  v7 = CLLocationCoordinate2DMake(v5, v6);

  latitude = v7.latitude;
  longitude = v7.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (id)_cityAtIndex:(unint64_t)a3
{
  if ([(NSArray *)self->_cities count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_cities objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (BOOL)_skipLocalization
{
  v2 = +[NSLocale currentLocale];
  v3 = [v2 objectForKey:NSLocaleLanguageCode];

  LOBYTE(v2) = [v3 isEqualToString:@"ja"];
  return v2;
}

+ (id)_idealizedCity
{
  if (qword_15BA8 != -1)
  {
    sub_92D0();
  }

  v3 = qword_15BB0;

  return v3;
}

@end