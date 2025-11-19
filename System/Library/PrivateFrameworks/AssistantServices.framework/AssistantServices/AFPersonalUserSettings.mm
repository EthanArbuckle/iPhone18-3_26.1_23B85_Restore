@interface AFPersonalUserSettings
- (AFPersonalUserSettings)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFPersonalUserSettings

- (AFPersonalUserSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AFPersonalUserSettings;
  v5 = [(AFPersonalUserSettings *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_temperatureUnit"];
    temperatureUnit = v5->_temperatureUnit;
    v5->_temperatureUnit = v6;

    v5->_twentyFourHourTimeDisplay = [v4 decodeBoolForKey:@"_twentyFourHourTimeDisplay"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_region"];
    region = v5->_region;
    v5->_region = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_preferredLanguage"];
    preferredLanguage = v5->_preferredLanguage;
    v5->_preferredLanguage = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  temperatureUnit = self->_temperatureUnit;
  v5 = a3;
  [v5 encodeObject:temperatureUnit forKey:@"_temperatureUnit"];
  [v5 encodeBool:self->_twentyFourHourTimeDisplay forKey:@"_twentyFourHourTimeDisplay"];
  [v5 encodeObject:self->_region forKey:@"_region"];
  [v5 encodeObject:self->_countryCode forKey:@"_countryCode"];
  [v5 encodeObject:self->_preferredLanguage forKey:@"_preferredLanguage"];
}

@end