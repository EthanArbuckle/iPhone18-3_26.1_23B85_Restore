@interface WFWeatherAirQualityPollutant
- (WFWeatherAirQualityPollutant)initWithCoder:(id)coder;
- (WFWeatherAirQualityPollutant)initWithLocalizedName:(id)name localizedDescription:(id)description concentration:(id)concentration;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFWeatherAirQualityPollutant

- (void)encodeWithCoder:(id)coder
{
  localizedName = self->_localizedName;
  coderCopy = coder;
  [coderCopy encodeObject:localizedName forKey:@"localizedName"];
  [coderCopy encodeObject:self->_localizedDescription forKey:@"localizedDescription"];
  [coderCopy encodeObject:self->_concentration forKey:@"concentration"];
}

- (WFWeatherAirQualityPollutant)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(WFWeatherAirQualityPollutant *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];
    localizedName = v5->_localizedName;
    v5->_localizedName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"concentration"];
    concentration = v5->_concentration;
    v5->_concentration = v10;

    v12 = v5;
  }

  return v5;
}

- (WFWeatherAirQualityPollutant)initWithLocalizedName:(id)name localizedDescription:(id)description concentration:(id)concentration
{
  nameCopy = name;
  descriptionCopy = description;
  concentrationCopy = concentration;
  v19.receiver = self;
  v19.super_class = WFWeatherAirQualityPollutant;
  v11 = [(WFWeatherAirQualityPollutant *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_concentration, concentration);
    v13 = [nameCopy copy];
    localizedName = v12->_localizedName;
    v12->_localizedName = v13;

    v15 = [descriptionCopy copy];
    localizedDescription = v12->_localizedDescription;
    v12->_localizedDescription = v15;

    v17 = v12;
  }

  return v12;
}

@end