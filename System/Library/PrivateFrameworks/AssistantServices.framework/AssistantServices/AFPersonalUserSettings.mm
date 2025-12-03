@interface AFPersonalUserSettings
- (AFPersonalUserSettings)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFPersonalUserSettings

- (AFPersonalUserSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = AFPersonalUserSettings;
  v5 = [(AFPersonalUserSettings *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_temperatureUnit"];
    temperatureUnit = v5->_temperatureUnit;
    v5->_temperatureUnit = v6;

    v5->_twentyFourHourTimeDisplay = [coderCopy decodeBoolForKey:@"_twentyFourHourTimeDisplay"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_region"];
    region = v5->_region;
    v5->_region = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_preferredLanguage"];
    preferredLanguage = v5->_preferredLanguage;
    v5->_preferredLanguage = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  temperatureUnit = self->_temperatureUnit;
  coderCopy = coder;
  [coderCopy encodeObject:temperatureUnit forKey:@"_temperatureUnit"];
  [coderCopy encodeBool:self->_twentyFourHourTimeDisplay forKey:@"_twentyFourHourTimeDisplay"];
  [coderCopy encodeObject:self->_region forKey:@"_region"];
  [coderCopy encodeObject:self->_countryCode forKey:@"_countryCode"];
  [coderCopy encodeObject:self->_preferredLanguage forKey:@"_preferredLanguage"];
}

@end