@interface WeatherConditions
- (WeatherConditions)initWithTemperature:(id)temperature name:(id)name palette:(id)palette forLocation:(id)location withExpirationDate:(id)date conditionDescription:(id)description temperatureDescription:(id)temperatureDescription;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation WeatherConditions

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_temperature copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_name copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSArray *)self->_palette copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(CLLocation *)self->_location copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSDate *)self->_expirationDate copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(NSString *)self->_conditionDescription copyWithZone:zone];
  v17 = v5[6];
  v5[6] = v16;

  v18 = [(NSString *)self->_temperatureDescription copyWithZone:zone];
  v19 = v5[7];
  v5[7] = v18;

  return v5;
}

- (WeatherConditions)initWithTemperature:(id)temperature name:(id)name palette:(id)palette forLocation:(id)location withExpirationDate:(id)date conditionDescription:(id)description temperatureDescription:(id)temperatureDescription
{
  temperatureCopy = temperature;
  nameCopy = name;
  paletteCopy = palette;
  locationCopy = location;
  dateCopy = date;
  descriptionCopy = description;
  temperatureDescriptionCopy = temperatureDescription;
  v49.receiver = self;
  v49.super_class = WeatherConditions;
  v22 = [(WeatherConditions *)&v49 init];
  if (v22)
  {
    v23 = [temperatureCopy copy];
    temperature = v22->_temperature;
    v22->_temperature = v23;

    v25 = [nameCopy copy];
    name = v22->_name;
    v22->_name = v25;

    v27 = [paletteCopy copy];
    palette = v22->_palette;
    v22->_palette = v27;

    v29 = [locationCopy copy];
    location = v22->_location;
    v22->_location = v29;

    v31 = [dateCopy copy];
    expirationDate = v22->_expirationDate;
    v22->_expirationDate = v31;

    v33 = [descriptionCopy copy];
    conditionDescription = v22->_conditionDescription;
    v22->_conditionDescription = v33;

    v35 = [temperatureDescriptionCopy copy];
    temperatureDescription = v22->_temperatureDescription;
    v22->_temperatureDescription = v35;

    v37 = sub_100033B24();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v47 = locationCopy;
      v48 = nameCopy;
      v38 = paletteCopy;
      v39 = temperatureCopy;
      v40 = v22->_temperatureDescription;
      v41 = v22->_name;
      [(CLLocation *)v22->_location coordinate];
      v44 = [NSString stringWithFormat:@"%+.8f, %+.8f", v42, v43];
      v45 = v22->_expirationDate;
      *buf = 138413059;
      v51 = v40;
      temperatureCopy = v39;
      paletteCopy = v38;
      v52 = 2112;
      v53 = v41;
      locationCopy = v47;
      nameCopy = v48;
      v54 = 2113;
      v55 = v44;
      v56 = 2112;
      v57 = v45;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Weather %@, %@ for location = %{private}@ with expirationDate = %@", buf, 0x2Au);
    }
  }

  return v22;
}

@end