@interface _PHMeCardGeocoderAddress
- (BOOL)checkGeocodeAfterDateForSanity;
- (BOOL)expired;
- (_PHMeCardGeocoderAddress)initWithCoder:(id)a3;
- (_PHMeCardGeocoderAddress)initWithLabeledValue:(id)a3 entityID:(id)a4;
- (id)createGeocodeAfterDate;
- (id)debugDescription;
- (id)nextGeocodeAttempt;
- (void)attemptGeocodeWithCompletionBlock:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)recalculateGeocodeAfterDate;
@end

@implementation _PHMeCardGeocoderAddress

- (_PHMeCardGeocoderAddress)initWithLabeledValue:(id)a3 entityID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = _PHMeCardGeocoderAddress;
  v9 = [(_PHMeCardGeocoderAddress *)&v15 init];
  if (v9)
  {
    v10 = [v8 copy];
    entityID = v9->_entityID;
    v9->_entityID = v10;

    objc_storeStrong(&v9->_labeledValue, a3);
    v12 = objc_alloc_init(CLGeocoder);
    geocoder = v9->_geocoder;
    v9->_geocoder = v12;

    v9->_state = 0;
  }

  return v9;
}

- (void)dealloc
{
  [(CLGeocoder *)self->_geocoder cancelGeocode];
  v3.receiver = self;
  v3.super_class = _PHMeCardGeocoderAddress;
  [(_PHMeCardGeocoderAddress *)&v3 dealloc];
}

- (_PHMeCardGeocoderAddress)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = _PHMeCardGeocoderAddress;
  v5 = [(_PHMeCardGeocoderAddress *)&v22 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
    v8 = NSStringFromSelector("labeledValue");
    v9 = [v4 decodeObjectOfClasses:v7 forKey:v8];

    if (!v9)
    {
      v10 = objc_opt_class();
      v11 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
      v12 = [v4 decodeObjectOfClasses:v11 forKey:@"AddressDictionary"];

      if (v12)
      {
        v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Label"];
        v14 = [CNPostalAddress postalAddressWithAddressBookDictionaryRepresentation:v12];
        if (v14)
        {
          v9 = [[CNLabeledValue alloc] initWithLabel:v13 value:v14];
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EntityID"];
    entityID = v5->_entityID;
    v5->_entityID = v15;

    labeledValue = v5->_labeledValue;
    v5->_labeledValue = v9;
    v18 = v9;

    v5->_state = [v4 decodeIntForKey:@"State"];
    v5->_tries = [v4 decodeIntForKey:@"Tries"];
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LastGeocodeAttempt"];
    lastGeocodeAttempt = v5->_lastGeocodeAttempt;
    v5->_lastGeocodeAttempt = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  entityID = self->_entityID;
  v7 = a3;
  [v7 encodeObject:entityID forKey:@"EntityID"];
  labeledValue = self->_labeledValue;
  v6 = NSStringFromSelector("labeledValue");
  [v7 encodeObject:labeledValue forKey:v6];

  [v7 encodeInt:self->_state forKey:@"State"];
  [v7 encodeInt:self->_tries forKey:@"Tries"];
  [v7 encodeObject:self->_lastGeocodeAttempt forKey:@"LastGeocodeAttempt"];
  [v7 encodeObject:self->_locationDictionary forKey:@"LocationDictionary"];
  [v7 encodeObject:self->_geocodeAfter forKey:@"GeocodeAfter"];
}

- (id)createGeocodeAfterDate
{
  v2 = +[NSDate date];
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Our date is between start and end dates for geocoder, so we're throttling", &v17, 2u);
  }

  v4 = time(0);
  srandom(v4);
  v5 = random();
  v6 = +[_PHMeCardGeocoderPreferences sharedPreferences];
  v7 = [v6 isActivelyUsing];

  v8 = sub_100004F84();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "User has been actively using feature, so using active period length", &v17, 2u);
    }

    v10 = v5 / 2147483650.0;
    v11 = +[_PHMeCardGeocoderPreferences sharedPreferences];
    [v11 activeUsagePeriodLength];
  }

  else
  {
    if (v9)
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "User has not yet used the feature, so using normal period length", &v17, 2u);
    }

    v10 = v5 / 2147483650.0;
    v11 = +[_PHMeCardGeocoderPreferences sharedPreferences];
    [v11 periodLength];
  }

  v13 = v10 * v12;

  v14 = [NSDate dateWithTimeInterval:v2 sinceDate:v13];
  v15 = sub_100004F84();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Created geocode-after date of: %@", &v17, 0xCu);
  }

  return v14;
}

- (BOOL)checkGeocodeAfterDateForSanity
{
  v3 = +[_PHMeCardGeocoderPreferences sharedPreferences];
  v4 = [v3 isActivelyUsing];

  geocodeAfter = self->_geocodeAfter;
  v6 = +[NSDate date];
  [(NSDate *)geocodeAfter timeIntervalSinceDate:v6];
  v8 = v7;
  v9 = +[_PHMeCardGeocoderPreferences sharedPreferences];
  v10 = v9;
  if (v4)
  {
    [v9 activeUsagePeriodLength];
    v12 = v11;

    if (v8 > v12)
    {
      v13 = sub_100004F84();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = self->_geocodeAfter;
        v20 = 138412290;
        v21 = v14;
        v15 = "Geocode-after date had insane value for active use: %@";
LABEL_8:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v15, &v20, 0xCu);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    [v9 periodLength];
    v17 = v16;

    if (v8 > v17)
    {
      v13 = sub_100004F84();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v18 = self->_geocodeAfter;
        v20 = 138412290;
        v21 = v18;
        v15 = "Geocode-after date had insane value: %@";
        goto LABEL_8;
      }

LABEL_9:

      [(_PHMeCardGeocoderAddress *)self recalculateGeocodeAfterDate];
      return 1;
    }
  }

  return 0;
}

- (void)recalculateGeocodeAfterDate
{
  self->_geocodeAfter = [(_PHMeCardGeocoderAddress *)self createGeocodeAfterDate];

  _objc_release_x1();
}

- (void)attemptGeocodeWithCompletionBlock:(id)a3
{
  v4 = a3;
  if ([(CLGeocoder *)self->_geocoder isGeocoding])
  {
    v4[2](v4, 0, self);
  }

  else if (self->_state == 2)
  {
    v4[2](v4, 1, self);
  }

  else
  {
    v5 = +[NSDate date];
    lastGeocodeAttempt = self->_lastGeocodeAttempt;
    self->_lastGeocodeAttempt = v5;

    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1000B45DC;
    v13 = &unk_100358C20;
    v14 = self;
    v15 = v4;
    v7 = objc_retainBlock(&v10);
    v8 = [(_PHMeCardGeocoderAddress *)self geocoder:v10];
    v9 = [(_PHMeCardGeocoderAddress *)self postalAddress];
    [v8 geocodePostalAddress:v9 completionHandler:v7];
  }
}

- (id)nextGeocodeAttempt
{
  if (self->_state == 2)
  {
    v3 = 0;
  }

  else
  {
    if ([(CLGeocoder *)self->_geocoder isGeocoding])
    {
      v3 = 0;
    }

    else
    {
      lastGeocodeAttempt = self->_lastGeocodeAttempt;
      if (lastGeocodeAttempt)
      {
        tries = self->_tries;
        if (tries < 7)
        {
          if (tries)
          {
            v8 = (60 * dword_1002F92F8[tries - 1]);
          }

          else
          {
            v8 = 60.0;
          }
        }

        else
        {
          v8 = 21600.0;
        }

        v3 = [(NSDate *)lastGeocodeAttempt dateByAddingTimeInterval:v8];
      }

      else if ((self->_geocodeAfter || (v9 = -[_PHMeCardGeocoderAddress createGeocodeAfterDate](self, "createGeocodeAfterDate"), geocodeAfter = self->_geocodeAfter, self->_geocodeAfter = v9, geocodeAfter, self->_geocodeAfter)) && (+[NSDate date](NSDate, "date"), v11 = objc_claimAutoreleasedReturnValue(), [v11 laterDate:self->_geocodeAfter], v12 = objc_claimAutoreleasedReturnValue(), v13 = self->_geocodeAfter, v12, v11, v12 == v13))
      {
        v3 = self->_geocodeAfter;
      }

      else
      {
        v3 = +[NSDate date];
      }
    }
  }

  return v3;
}

- (BOOL)expired
{
  v3 = [(_PHMeCardGeocoderAddress *)self lastGeocodeAttempt];
  if (v3)
  {
    v4 = +[NSDate date];
    v5 = [(_PHMeCardGeocoderAddress *)self lastGeocodeAttempt];
    [v4 timeIntervalSinceDate:v5];
    v7 = v6 > 2592000.0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)debugDescription
{
  v3 = [(_PHMeCardGeocoderAddress *)self state];
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_100358CD8[v3];
  }

  v5 = objc_alloc_init(NSMutableString);
  [v5 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v6 = NSStringFromSelector("labeledValue");
  v7 = [(_PHMeCardGeocoderAddress *)self labeledValue];
  [v5 appendFormat:@"%@=%@", v6, v7];

  [v5 appendFormat:@", "];
  v8 = NSStringFromSelector("state");
  [v5 appendFormat:@"%@=%@", v8, v4];

  [v5 appendFormat:@", "];
  v9 = NSStringFromSelector("tries");
  [v5 appendFormat:@"%@=%d", v9, -[_PHMeCardGeocoderAddress tries](self, "tries")];

  [v5 appendFormat:@", "];
  v10 = NSStringFromSelector("lastGeocodeAttempt");
  v11 = [(_PHMeCardGeocoderAddress *)self lastGeocodeAttempt];
  [v5 appendFormat:@"%@=%@", v10, v11];

  [v5 appendFormat:@", "];
  v12 = NSStringFromSelector("geocodeAfter");
  v13 = [(_PHMeCardGeocoderAddress *)self geocodeAfter];
  [v5 appendFormat:@"%@=%@", v12, v13];

  [v5 appendFormat:@", "];
  v14 = NSStringFromSelector("expired");
  v15 = [(_PHMeCardGeocoderAddress *)self expired];
  v16 = @"NO";
  if (v15)
  {
    v16 = @"YES";
  }

  [v5 appendFormat:@"%@=%@", v14, v16];

  [v5 appendFormat:@", "];
  v17 = NSStringFromSelector("locationDictionary");
  v18 = [(_PHMeCardGeocoderAddress *)self locationDictionary];
  [v5 appendFormat:@"%@=%@", v17, v18];

  [v5 appendFormat:@">"];
  v19 = [v5 copy];

  return v19;
}

@end