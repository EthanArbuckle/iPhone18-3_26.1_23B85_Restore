@interface SPWeatherComplicationData
- (SPWeatherComplicationData)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPWeatherComplicationData

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SPWeatherComplicationData;
  v4 = a3;
  [(SPComplicationData *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_temperatureText forKey:{@"_TemperatureTextKey", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_locationText forKey:@"_LocationTextKey"];
  [v4 encodeObject:self->_currentConditionsText forKey:@"_CurrentConditionsTextKey"];
  [v4 encodeInteger:self->_currentConditionsEnum forKey:@"_CurrentConditionsEnumKey"];
  [v4 encodeObject:self->_highLowText forKey:@"_HighLowTextKey"];
}

- (SPWeatherComplicationData)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SPWeatherComplicationData;
  v5 = [(SPComplicationData *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_TemperatureTextKey"];
    temperatureText = v5->_temperatureText;
    v5->_temperatureText = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_LocationTextKey"];
    locationText = v5->_locationText;
    v5->_locationText = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_CurrentConditionsTextKey"];
    currentConditionsText = v5->_currentConditionsText;
    v5->_currentConditionsText = v10;

    v5->_currentConditionsEnum = [v4 decodeIntegerForKey:@"_CurrentConditionsEnumKey"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_HighLowTextKey"];
    highLowText = v5->_highLowText;
    v5->_highLowText = v12;
  }

  return v5;
}

@end