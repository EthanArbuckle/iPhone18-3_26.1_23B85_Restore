@interface WeatherConditions
- (WeatherConditions)initWithTemperature:(id)a3 name:(id)a4 palette:(id)a5 forLocation:(id)a6 withExpirationDate:(id)a7 conditionDescription:(id)a8 temperatureDescription:(id)a9;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation WeatherConditions

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_temperature copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_name copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSArray *)self->_palette copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(CLLocation *)self->_location copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSDate *)self->_expirationDate copyWithZone:a3];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(NSString *)self->_conditionDescription copyWithZone:a3];
  v17 = v5[6];
  v5[6] = v16;

  v18 = [(NSString *)self->_temperatureDescription copyWithZone:a3];
  v19 = v5[7];
  v5[7] = v18;

  return v5;
}

- (WeatherConditions)initWithTemperature:(id)a3 name:(id)a4 palette:(id)a5 forLocation:(id)a6 withExpirationDate:(id)a7 conditionDescription:(id)a8 temperatureDescription:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v49.receiver = self;
  v49.super_class = WeatherConditions;
  v22 = [(WeatherConditions *)&v49 init];
  if (v22)
  {
    v23 = [v15 copy];
    temperature = v22->_temperature;
    v22->_temperature = v23;

    v25 = [v16 copy];
    name = v22->_name;
    v22->_name = v25;

    v27 = [v17 copy];
    palette = v22->_palette;
    v22->_palette = v27;

    v29 = [v18 copy];
    location = v22->_location;
    v22->_location = v29;

    v31 = [v19 copy];
    expirationDate = v22->_expirationDate;
    v22->_expirationDate = v31;

    v33 = [v20 copy];
    conditionDescription = v22->_conditionDescription;
    v22->_conditionDescription = v33;

    v35 = [v21 copy];
    temperatureDescription = v22->_temperatureDescription;
    v22->_temperatureDescription = v35;

    v37 = sub_100033B24();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v47 = v18;
      v48 = v16;
      v38 = v17;
      v39 = v15;
      v40 = v22->_temperatureDescription;
      v41 = v22->_name;
      [(CLLocation *)v22->_location coordinate];
      v44 = [NSString stringWithFormat:@"%+.8f, %+.8f", v42, v43];
      v45 = v22->_expirationDate;
      *buf = 138413059;
      v51 = v40;
      v15 = v39;
      v17 = v38;
      v52 = 2112;
      v53 = v41;
      v18 = v47;
      v16 = v48;
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