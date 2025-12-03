@interface AirQualityConditions
- (AirQualityConditions)initWithAirQualityIndex:(unint64_t)index isNumerical:(BOOL)numerical color:(id)color learnMoreURL:(id)l forLocation:(id)location withExpirationDate:(id)date airQualityDescription:(id)description;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation AirQualityConditions

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = self->_airQualityIndex;
  *(v5 + 16) = self->_hasNumericalAirQualityIndex;
  v6 = [(UIColor *)self->_color copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSURL *)self->_learnMoreURL copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(CLLocation *)self->_location copyWithZone:zone];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(NSDate *)self->_expirationDate copyWithZone:zone];
  v13 = v5[6];
  v5[6] = v12;

  v14 = [(NSString *)self->_airQualityDescription copyWithZone:zone];
  v15 = v5[7];
  v5[7] = v14;

  return v5;
}

- (AirQualityConditions)initWithAirQualityIndex:(unint64_t)index isNumerical:(BOOL)numerical color:(id)color learnMoreURL:(id)l forLocation:(id)location withExpirationDate:(id)date airQualityDescription:(id)description
{
  colorCopy = color;
  lCopy = l;
  locationCopy = location;
  dateCopy = date;
  descriptionCopy = description;
  v39.receiver = self;
  v39.super_class = AirQualityConditions;
  v20 = [(AirQualityConditions *)&v39 init];
  v21 = v20;
  if (v20)
  {
    v20->_airQualityIndex = index;
    v20->_hasNumericalAirQualityIndex = numerical;
    v22 = [(AirQualityConditions *)v20 colorForString:colorCopy];
    color = v21->_color;
    v21->_color = v22;

    v24 = [lCopy copy];
    learnMoreURL = v21->_learnMoreURL;
    v21->_learnMoreURL = v24;

    v26 = [locationCopy copy];
    location = v21->_location;
    v21->_location = v26;

    v28 = [dateCopy copy];
    expirationDate = v21->_expirationDate;
    v21->_expirationDate = v28;

    v30 = [descriptionCopy copy];
    airQualityDescription = v21->_airQualityDescription;
    v21->_airQualityDescription = v30;

    v32 = sub_100033B24();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = v21->_airQualityDescription;
      [(CLLocation *)v21->_location coordinate];
      v36 = [NSString stringWithFormat:@"%+.8f, %+.8f", v34, v35];
      v37 = v21->_expirationDate;
      *buf = 138412803;
      v41 = v33;
      v42 = 2113;
      v43 = v36;
      v44 = 2112;
      v45 = v37;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Air quality = %@ for location = %{private}@ with expirationDate = %@", buf, 0x20u);
    }
  }

  return v21;
}

@end