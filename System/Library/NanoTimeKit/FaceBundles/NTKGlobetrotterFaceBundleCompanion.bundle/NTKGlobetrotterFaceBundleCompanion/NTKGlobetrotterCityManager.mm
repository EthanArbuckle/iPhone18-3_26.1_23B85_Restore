@interface NTKGlobetrotterCityManager
+ (CLLocationCoordinate2D)idealizedCityCoordinate;
+ (id)_idealizedCity;
+ (id)idealizedTimeZone;
+ (id)sharedInstance;
- (BOOL)_skipLocalization;
- (CLLocationCoordinate2D)cityCoordinateForHourOffset:(int64_t)offset;
- (NTKGlobetrotterCityManager)init;
- (id)_cityAtIndex:(unint64_t)index;
- (id)displayNameForCityAtIndex:(unint64_t)index;
- (id)timeZoneForCityAtIndex:(unint64_t)index hourOffset:(int64_t)offset;
@end

@implementation NTKGlobetrotterCityManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2668;
  block[3] = &unk_10490;
  block[4] = self;
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

- (id)displayNameForCityAtIndex:(unint64_t)index
{
  v4 = [(NTKGlobetrotterCityManager *)self _cityAtIndex:index];
  v5 = v4;
  if (!v4)
  {
    v9 = 0;
    goto LABEL_38;
  }

  alCityId = [v4 alCityId];
  intValue = [alCityId intValue];

  if (intValue <= 151)
  {
    if (intValue <= 59)
    {
      switch(intValue)
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

    else if (intValue > 118)
    {
      if (intValue == 119)
      {
        v8 = @"CITY_NAME_HAWAII_STANDARD_TIME_ZONE";
        goto LABEL_37;
      }

      if (intValue == 149)
      {
        v8 = @"CITY_NAME_WESTERN_EUROPEAN_TIME_ZONE";
        goto LABEL_37;
      }
    }

    else
    {
      if (intValue == 60)
      {
        v8 = @"CITY_NAME_VENEZUELAN_STANDARD_TIME_ZONE";
        goto LABEL_37;
      }

      if (intValue == 105)
      {
        v8 = @"CITY_NAME_SOUTH_GEORGIA_TIME_ZONE";
LABEL_37:
        v9 = [NTKGlobetrotterFaceBundle localizedStringForKey:v8 comment:@"city override name"];
        goto LABEL_38;
      }
    }

    goto LABEL_41;
  }

  if (intValue <= 231)
  {
    switch(intValue)
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

  if (intValue <= 367)
  {
    if (intValue == 232)
    {
      v8 = @"CITY_NAME_AZORES_TIME_ZONE";
      goto LABEL_37;
    }

    if (intValue == 246)
    {
      v8 = @"CITY_NAME_BRASILIA_TIME_ZONE";
      goto LABEL_37;
    }

    goto LABEL_41;
  }

  if (intValue == 509)
  {
    v8 = @"CITY_NAME_PAKISTAN_STANDARD_TIME_ZONE";
    goto LABEL_37;
  }

  if (intValue != 368)
  {
LABEL_41:
    if ([(NTKGlobetrotterCityManager *)self _skipLocalization])
    {
      unlocalizedCityName = [v5 unlocalizedCityName];
      goto LABEL_43;
    }

    name = [v5 name];
LABEL_46:
    v12 = name;
    localizedUppercaseString = [name localizedUppercaseString];
    goto LABEL_47;
  }

  if (![(NTKGlobetrotterCityManager *)self _skipLocalization])
  {
    name = [v5 countryName];
    goto LABEL_46;
  }

  unlocalizedCityName = [v5 unlocalizedCountryName];
LABEL_43:
  v12 = unlocalizedCityName;
  localizedUppercaseString = [unlocalizedCityName uppercaseString];
LABEL_47:
  v9 = localizedUppercaseString;

LABEL_38:

  return v9;
}

- (CLLocationCoordinate2D)cityCoordinateForHourOffset:(int64_t)offset
{
  v4 = 12 - offset;
  if (offset >= 13)
  {
    v4 += [(NSArray *)self->_cities count];
  }

  v5 = [(NTKGlobetrotterCityManager *)self _cityAtIndex:v4];
  v6 = v5;
  if (v5)
  {
    alCity = [v5 alCity];
    [alCity latitude];
    v9 = v8;
    [alCity longitude];
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

- (id)timeZoneForCityAtIndex:(unint64_t)index hourOffset:(int64_t)offset
{
  v5 = offset + index;
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
    timeZone = [v8 timeZone];
    v11 = [NSTimeZone timeZoneWithName:timeZone];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)idealizedTimeZone
{
  _idealizedCity = [self _idealizedCity];
  timeZone = [_idealizedCity timeZone];
  v4 = [NSTimeZone timeZoneWithName:timeZone];

  return v4;
}

+ (CLLocationCoordinate2D)idealizedCityCoordinate
{
  _idealizedCity = [self _idealizedCity];
  alCity = [_idealizedCity alCity];

  [alCity latitude];
  v5 = v4;
  [alCity longitude];
  v7 = CLLocationCoordinate2DMake(v5, v6);

  latitude = v7.latitude;
  longitude = v7.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (id)_cityAtIndex:(unint64_t)index
{
  if ([(NSArray *)self->_cities count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_cities objectAtIndexedSubscript:index];
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