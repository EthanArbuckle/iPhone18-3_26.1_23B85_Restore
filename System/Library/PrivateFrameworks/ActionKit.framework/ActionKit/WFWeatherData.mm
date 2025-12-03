@interface WFWeatherData
+ (id)userTemperatureUnitString:(id)string;
- (NSString)wfName;
- (WFWeatherData)initWithCoder:(id)coder;
- (WFWeatherData)initWithDate:(id)date location:(id)location userTemperatureUnitString:(id)string temperature:(id)temperature highTemperature:(id)highTemperature lowTemperature:(id)lowTemperature feelsLikeTemperature:(id)likeTemperature localizedConditionString:(id)self0 visibility:(id)self1 dewpoint:(id)self2 humidity:(id)self3 pressure:(id)self4 precipitationAmount:(id)self5 precipitationChance:(id)self6 windSpeed:(id)self7 windDirection:(id)self8 uvIndex:(id)self9 sunriseTime:(id)time sunsetTime:(id)sunsetTime localizedAirQualityIndex:(id)qualityIndex localizedAirQualityCategory:(id)category pollutants:(id)pollutants;
- (id)temperatureString;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFWeatherData

- (void)encodeWithCoder:(id)coder
{
  date = self->_date;
  coderCopy = coder;
  [coderCopy encodeObject:date forKey:@"date"];
  [coderCopy encodeObject:self->_location forKey:@"location"];
  [coderCopy encodeObject:self->_temperature forKey:@"temperature"];
  [coderCopy encodeObject:self->_highTemperature forKey:@"highTemperature"];
  [coderCopy encodeObject:self->_lowTemperature forKey:@"lowTemperature"];
  [coderCopy encodeObject:self->_feelsLikeTemperature forKey:@"feelsLikeTemperature"];
  [coderCopy encodeObject:self->_localizedConditionString forKey:@"localizedConditionString"];
  [coderCopy encodeObject:self->_visibility forKey:@"visibility"];
  [coderCopy encodeObject:self->_dewpoint forKey:@"dewpoint"];
  [coderCopy encodeObject:self->_humidity forKey:@"humidity"];
  [coderCopy encodeObject:self->_pressure forKey:@"pressure"];
  [coderCopy encodeObject:self->_precipitationAmount forKey:@"precipitationAmount"];
  [coderCopy encodeObject:self->_precipitationChance forKey:@"precipitationChance"];
  [coderCopy encodeObject:self->_windSpeed forKey:@"windSpeed"];
  [coderCopy encodeObject:self->_windDirection forKey:@"windDirection"];
  [coderCopy encodeObject:self->_uvIndex forKey:@"uvIndex"];
  [coderCopy encodeObject:self->_sunriseTime forKey:@"sunriseTime"];
  [coderCopy encodeObject:self->_sunsetTime forKey:@"sunsetTime"];
  [coderCopy encodeObject:self->_localizedAirQualityIndex forKey:@"localizedAirQualityIndex"];
  [coderCopy encodeObject:self->_localizedAirQualityCategory forKey:@"localizedAirQualityCategory"];
  [coderCopy encodeObject:self->_pollutants forKey:@"pollutants"];
}

- (WFWeatherData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(WFWeatherData *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v6;

    v56 = 0;
    v57 = &v56;
    v58 = 0x2050000000;
    v8 = getCLLocationClass_softClass;
    v59 = getCLLocationClass_softClass;
    if (!getCLLocationClass_softClass)
    {
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __getCLLocationClass_block_invoke;
      v55[3] = &unk_278C222B8;
      v55[4] = &v56;
      __getCLLocationClass_block_invoke(v55);
      v8 = v57[3];
    }

    v9 = v8;
    _Block_object_dispose(&v56, 8);
    v10 = [coderCopy decodeObjectOfClass:v8 forKey:@"location"];
    location = v5->_location;
    v5->_location = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"temperature"];
    temperature = v5->_temperature;
    v5->_temperature = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"highTemperature"];
    highTemperature = v5->_highTemperature;
    v5->_highTemperature = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lowTemperature"];
    lowTemperature = v5->_lowTemperature;
    v5->_lowTemperature = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"feelsLikeTemperature"];
    feelsLikeTemperature = v5->_feelsLikeTemperature;
    v5->_feelsLikeTemperature = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedConditionString"];
    localizedConditionString = v5->_localizedConditionString;
    v5->_localizedConditionString = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"visibility"];
    visibility = v5->_visibility;
    v5->_visibility = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dewpoint"];
    dewpoint = v5->_dewpoint;
    v5->_dewpoint = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"humidity"];
    humidity = v5->_humidity;
    v5->_humidity = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pressure"];
    pressure = v5->_pressure;
    v5->_pressure = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"precipitationAmount"];
    precipitationAmount = v5->_precipitationAmount;
    v5->_precipitationAmount = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"precipitationChance"];
    precipitationChance = v5->_precipitationChance;
    v5->_precipitationChance = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"windSpeed"];
    windSpeed = v5->_windSpeed;
    v5->_windSpeed = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"windDirection"];
    windDirection = v5->_windDirection;
    v5->_windDirection = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uvIndex"];
    uvIndex = v5->_uvIndex;
    v5->_uvIndex = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sunriseTime"];
    sunriseTime = v5->_sunriseTime;
    v5->_sunriseTime = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sunsetTime"];
    sunsetTime = v5->_sunsetTime;
    v5->_sunsetTime = v42;

    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedAirQualityIndex"];
    localizedAirQualityIndex = v5->_localizedAirQualityIndex;
    v5->_localizedAirQualityIndex = v44;

    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedAirQualityCategory"];
    localizedAirQualityCategory = v5->_localizedAirQualityCategory;
    v5->_localizedAirQualityCategory = v46;

    v48 = MEMORY[0x277CBEB98];
    v49 = objc_opt_class();
    v50 = [v48 setWithObjects:{v49, objc_opt_class(), 0}];
    v51 = [coderCopy decodeObjectOfClasses:v50 forKey:@"pollutants"];
    pollutants = v5->_pollutants;
    v5->_pollutants = v51;

    v53 = v5;
  }

  return v5;
}

- (NSString)wfName
{
  temperatureString = [(WFWeatherData *)self temperatureString];
  localizedConditionString = [(WFWeatherData *)self localizedConditionString];
  v5 = localizedConditionString;
  if (temperatureString && localizedConditionString)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = WFLocalizedString(@"%1$@ and %2$@");
    v8 = [v6 stringWithFormat:v7, temperatureString, v5];

    goto LABEL_9;
  }

  if (temperatureString)
  {
    v9 = temperatureString;
LABEL_8:
    v8 = v9;
    goto LABEL_9;
  }

  if (localizedConditionString)
  {
    v9 = localizedConditionString;
    goto LABEL_8;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (id)temperatureString
{
  temperature = [(WFWeatherData *)self temperature];
  if (temperature)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAB18]);
    [v3 setUnitOptions:1];
    numberFormatter = [v3 numberFormatter];
    [numberFormatter setRoundingMode:5];

    numberFormatter2 = [v3 numberFormatter];
    [numberFormatter2 setMaximumFractionDigits:0];

    v6 = [v3 stringFromMeasurement:temperature];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (WFWeatherData)initWithDate:(id)date location:(id)location userTemperatureUnitString:(id)string temperature:(id)temperature highTemperature:(id)highTemperature lowTemperature:(id)lowTemperature feelsLikeTemperature:(id)likeTemperature localizedConditionString:(id)self0 visibility:(id)self1 dewpoint:(id)self2 humidity:(id)self3 pressure:(id)self4 precipitationAmount:(id)self5 precipitationChance:(id)self6 windSpeed:(id)self7 windDirection:(id)self8 uvIndex:(id)self9 sunriseTime:(id)time sunsetTime:(id)sunsetTime localizedAirQualityIndex:(id)qualityIndex localizedAirQualityCategory:(id)category pollutants:(id)pollutants
{
  dateCopy = date;
  locationCopy = location;
  stringCopy = string;
  temperatureCopy = temperature;
  highTemperatureCopy = highTemperature;
  lowTemperatureCopy = lowTemperature;
  likeTemperatureCopy = likeTemperature;
  conditionStringCopy = conditionString;
  visibilityCopy = visibility;
  dewpointCopy = dewpoint;
  humidityCopy = humidity;
  pressureCopy = pressure;
  amountCopy = amount;
  chanceCopy = chance;
  speedCopy = speed;
  directionCopy = direction;
  indexCopy = index;
  timeCopy = time;
  sunsetTimeCopy = sunsetTime;
  qualityIndexCopy = qualityIndex;
  categoryCopy = category;
  pollutantsCopy = pollutants;
  v93.receiver = self;
  v93.super_class = WFWeatherData;
  v38 = [(WFWeatherData *)&v93 init];
  if (v38)
  {
    [WFWeatherData userTemperatureUnitString:stringCopy];
    v77 = dewpointCopy;
    v39 = v79 = visibilityCopy;
    objc_storeStrong(&v38->_date, date);
    v40 = [locationCopy copy];
    location = v38->_location;
    v38->_location = v40;

    v42 = [temperatureCopy measurementByConvertingToUnit:v39];
    temperature = v38->_temperature;
    v38->_temperature = v42;

    v44 = [highTemperatureCopy measurementByConvertingToUnit:v39];
    highTemperature = v38->_highTemperature;
    v38->_highTemperature = v44;

    v46 = [lowTemperatureCopy measurementByConvertingToUnit:v39];
    lowTemperature = v38->_lowTemperature;
    v38->_lowTemperature = v46;

    v48 = [likeTemperatureCopy measurementByConvertingToUnit:v39];
    feelsLikeTemperature = v38->_feelsLikeTemperature;
    v38->_feelsLikeTemperature = v48;

    objc_storeStrong(&v38->_localizedConditionString, conditionString);
    +[WFWeatherData visibilityUnit];
    v50 = pressureCopy;
    v52 = v51 = humidityCopy;
    v53 = [v79 measurementByConvertingToUnit:v52];
    visibility = v38->_visibility;
    v38->_visibility = v53;

    v55 = [v77 measurementByConvertingToUnit:v39];
    dewpoint = v38->_dewpoint;
    v38->_dewpoint = v55;

    v57 = [v51 copy];
    humidity = v38->_humidity;
    v38->_humidity = v57;

    v59 = +[WFWeatherData pressureUnit];
    v60 = [v50 measurementByConvertingToUnit:v59];
    pressure = v38->_pressure;
    v38->_pressure = v60;

    v62 = +[WFWeatherData precipitationAmountUnit];
    v63 = [amountCopy measurementByConvertingToUnit:v62];
    precipitationAmount = v38->_precipitationAmount;
    v38->_precipitationAmount = v63;

    v65 = [chanceCopy copy];
    precipitationChance = v38->_precipitationChance;
    v38->_precipitationChance = v65;

    v67 = +[WFWeatherData windSpeedUnit];
    v68 = [speedCopy measurementByConvertingToUnit:v67];
    windSpeed = v38->_windSpeed;
    v38->_windSpeed = v68;

    humidityCopy = v51;
    pressureCopy = v50;
    v70 = [directionCopy copy];
    windDirection = v38->_windDirection;
    v38->_windDirection = v70;

    v72 = [indexCopy copy];
    uvIndex = v38->_uvIndex;
    v38->_uvIndex = v72;

    objc_storeStrong(&v38->_sunriseTime, time);
    objc_storeStrong(&v38->_sunsetTime, sunsetTime);
    objc_storeStrong(&v38->_localizedAirQualityIndex, qualityIndex);
    objc_storeStrong(&v38->_localizedAirQualityCategory, category);
    objc_storeStrong(&v38->_pollutants, pollutants);
    v74 = v38;

    dewpointCopy = v77;
    visibilityCopy = v79;
  }

  return v38;
}

+ (id)userTemperatureUnitString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy)
  {
    v5 = stringCopy;
  }

  else
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v5 = [currentLocale objectForKey:*MEMORY[0x277CBE700]];
  }

  if ([v5 isEqualToString:*MEMORY[0x277CBE708]])
  {
    celsius = [MEMORY[0x277CCAE48] celsius];
  }

  else
  {
    if ([v5 isEqualToString:*MEMORY[0x277CBE710]])
    {
      [MEMORY[0x277CCAE48] fahrenheit];
    }

    else
    {
      [MEMORY[0x277D7A050] defaultUnitForUnitType:*MEMORY[0x277D7A530]];
    }
    celsius = ;
  }

  v8 = celsius;

  return v8;
}

@end