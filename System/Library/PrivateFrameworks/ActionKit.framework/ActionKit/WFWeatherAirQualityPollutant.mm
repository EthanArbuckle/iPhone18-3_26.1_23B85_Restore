@interface WFWeatherAirQualityPollutant
- (WFWeatherAirQualityPollutant)initWithCoder:(id)a3;
- (WFWeatherAirQualityPollutant)initWithLocalizedName:(id)a3 localizedDescription:(id)a4 concentration:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFWeatherAirQualityPollutant

- (void)encodeWithCoder:(id)a3
{
  localizedName = self->_localizedName;
  v5 = a3;
  [v5 encodeObject:localizedName forKey:@"localizedName"];
  [v5 encodeObject:self->_localizedDescription forKey:@"localizedDescription"];
  [v5 encodeObject:self->_concentration forKey:@"concentration"];
}

- (WFWeatherAirQualityPollutant)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFWeatherAirQualityPollutant *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];
    localizedName = v5->_localizedName;
    v5->_localizedName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"concentration"];
    concentration = v5->_concentration;
    v5->_concentration = v10;

    v12 = v5;
  }

  return v5;
}

- (WFWeatherAirQualityPollutant)initWithLocalizedName:(id)a3 localizedDescription:(id)a4 concentration:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = WFWeatherAirQualityPollutant;
  v11 = [(WFWeatherAirQualityPollutant *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_concentration, a5);
    v13 = [v8 copy];
    localizedName = v12->_localizedName;
    v12->_localizedName = v13;

    v15 = [v9 copy];
    localizedDescription = v12->_localizedDescription;
    v12->_localizedDescription = v15;

    v17 = v12;
  }

  return v12;
}

@end