@interface SPWeatherComplicationData
- (SPWeatherComplicationData)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPWeatherComplicationData

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SPWeatherComplicationData;
  coderCopy = coder;
  [(SPComplicationData *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_temperatureText forKey:{@"_TemperatureTextKey", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_locationText forKey:@"_LocationTextKey"];
  [coderCopy encodeObject:self->_currentConditionsText forKey:@"_CurrentConditionsTextKey"];
  [coderCopy encodeInteger:self->_currentConditionsEnum forKey:@"_CurrentConditionsEnumKey"];
  [coderCopy encodeObject:self->_highLowText forKey:@"_HighLowTextKey"];
}

- (SPWeatherComplicationData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = SPWeatherComplicationData;
  v5 = [(SPComplicationData *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_TemperatureTextKey"];
    temperatureText = v5->_temperatureText;
    v5->_temperatureText = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_LocationTextKey"];
    locationText = v5->_locationText;
    v5->_locationText = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_CurrentConditionsTextKey"];
    currentConditionsText = v5->_currentConditionsText;
    v5->_currentConditionsText = v10;

    v5->_currentConditionsEnum = [coderCopy decodeIntegerForKey:@"_CurrentConditionsEnumKey"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_HighLowTextKey"];
    highLowText = v5->_highLowText;
    v5->_highLowText = v12;
  }

  return v5;
}

@end