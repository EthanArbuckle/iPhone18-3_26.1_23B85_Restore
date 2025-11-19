@interface WFWeatherData
+ (id)userTemperatureUnitString:(id)a3;
- (NSString)wfName;
- (WFWeatherData)initWithCoder:(id)a3;
- (WFWeatherData)initWithDate:(id)a3 location:(id)a4 userTemperatureUnitString:(id)a5 temperature:(id)a6 highTemperature:(id)a7 lowTemperature:(id)a8 feelsLikeTemperature:(id)a9 localizedConditionString:(id)a10 visibility:(id)a11 dewpoint:(id)a12 humidity:(id)a13 pressure:(id)a14 precipitationAmount:(id)a15 precipitationChance:(id)a16 windSpeed:(id)a17 windDirection:(id)a18 uvIndex:(id)a19 sunriseTime:(id)a20 sunsetTime:(id)a21 localizedAirQualityIndex:(id)a22 localizedAirQualityCategory:(id)a23 pollutants:(id)a24;
- (id)temperatureString;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFWeatherData

- (void)encodeWithCoder:(id)a3
{
  date = self->_date;
  v5 = a3;
  [v5 encodeObject:date forKey:@"date"];
  [v5 encodeObject:self->_location forKey:@"location"];
  [v5 encodeObject:self->_temperature forKey:@"temperature"];
  [v5 encodeObject:self->_highTemperature forKey:@"highTemperature"];
  [v5 encodeObject:self->_lowTemperature forKey:@"lowTemperature"];
  [v5 encodeObject:self->_feelsLikeTemperature forKey:@"feelsLikeTemperature"];
  [v5 encodeObject:self->_localizedConditionString forKey:@"localizedConditionString"];
  [v5 encodeObject:self->_visibility forKey:@"visibility"];
  [v5 encodeObject:self->_dewpoint forKey:@"dewpoint"];
  [v5 encodeObject:self->_humidity forKey:@"humidity"];
  [v5 encodeObject:self->_pressure forKey:@"pressure"];
  [v5 encodeObject:self->_precipitationAmount forKey:@"precipitationAmount"];
  [v5 encodeObject:self->_precipitationChance forKey:@"precipitationChance"];
  [v5 encodeObject:self->_windSpeed forKey:@"windSpeed"];
  [v5 encodeObject:self->_windDirection forKey:@"windDirection"];
  [v5 encodeObject:self->_uvIndex forKey:@"uvIndex"];
  [v5 encodeObject:self->_sunriseTime forKey:@"sunriseTime"];
  [v5 encodeObject:self->_sunsetTime forKey:@"sunsetTime"];
  [v5 encodeObject:self->_localizedAirQualityIndex forKey:@"localizedAirQualityIndex"];
  [v5 encodeObject:self->_localizedAirQualityCategory forKey:@"localizedAirQualityCategory"];
  [v5 encodeObject:self->_pollutants forKey:@"pollutants"];
}

- (WFWeatherData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFWeatherData *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
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
    v10 = [v4 decodeObjectOfClass:v8 forKey:@"location"];
    location = v5->_location;
    v5->_location = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"temperature"];
    temperature = v5->_temperature;
    v5->_temperature = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"highTemperature"];
    highTemperature = v5->_highTemperature;
    v5->_highTemperature = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lowTemperature"];
    lowTemperature = v5->_lowTemperature;
    v5->_lowTemperature = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"feelsLikeTemperature"];
    feelsLikeTemperature = v5->_feelsLikeTemperature;
    v5->_feelsLikeTemperature = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedConditionString"];
    localizedConditionString = v5->_localizedConditionString;
    v5->_localizedConditionString = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"visibility"];
    visibility = v5->_visibility;
    v5->_visibility = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dewpoint"];
    dewpoint = v5->_dewpoint;
    v5->_dewpoint = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"humidity"];
    humidity = v5->_humidity;
    v5->_humidity = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pressure"];
    pressure = v5->_pressure;
    v5->_pressure = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"precipitationAmount"];
    precipitationAmount = v5->_precipitationAmount;
    v5->_precipitationAmount = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"precipitationChance"];
    precipitationChance = v5->_precipitationChance;
    v5->_precipitationChance = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"windSpeed"];
    windSpeed = v5->_windSpeed;
    v5->_windSpeed = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"windDirection"];
    windDirection = v5->_windDirection;
    v5->_windDirection = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uvIndex"];
    uvIndex = v5->_uvIndex;
    v5->_uvIndex = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sunriseTime"];
    sunriseTime = v5->_sunriseTime;
    v5->_sunriseTime = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sunsetTime"];
    sunsetTime = v5->_sunsetTime;
    v5->_sunsetTime = v42;

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedAirQualityIndex"];
    localizedAirQualityIndex = v5->_localizedAirQualityIndex;
    v5->_localizedAirQualityIndex = v44;

    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedAirQualityCategory"];
    localizedAirQualityCategory = v5->_localizedAirQualityCategory;
    v5->_localizedAirQualityCategory = v46;

    v48 = MEMORY[0x277CBEB98];
    v49 = objc_opt_class();
    v50 = [v48 setWithObjects:{v49, objc_opt_class(), 0}];
    v51 = [v4 decodeObjectOfClasses:v50 forKey:@"pollutants"];
    pollutants = v5->_pollutants;
    v5->_pollutants = v51;

    v53 = v5;
  }

  return v5;
}

- (NSString)wfName
{
  v3 = [(WFWeatherData *)self temperatureString];
  v4 = [(WFWeatherData *)self localizedConditionString];
  v5 = v4;
  if (v3 && v4)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = WFLocalizedString(@"%1$@ and %2$@");
    v8 = [v6 stringWithFormat:v7, v3, v5];

    goto LABEL_9;
  }

  if (v3)
  {
    v9 = v3;
LABEL_8:
    v8 = v9;
    goto LABEL_9;
  }

  if (v4)
  {
    v9 = v4;
    goto LABEL_8;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (id)temperatureString
{
  v2 = [(WFWeatherData *)self temperature];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAB18]);
    [v3 setUnitOptions:1];
    v4 = [v3 numberFormatter];
    [v4 setRoundingMode:5];

    v5 = [v3 numberFormatter];
    [v5 setMaximumFractionDigits:0];

    v6 = [v3 stringFromMeasurement:v2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (WFWeatherData)initWithDate:(id)a3 location:(id)a4 userTemperatureUnitString:(id)a5 temperature:(id)a6 highTemperature:(id)a7 lowTemperature:(id)a8 feelsLikeTemperature:(id)a9 localizedConditionString:(id)a10 visibility:(id)a11 dewpoint:(id)a12 humidity:(id)a13 pressure:(id)a14 precipitationAmount:(id)a15 precipitationChance:(id)a16 windSpeed:(id)a17 windDirection:(id)a18 uvIndex:(id)a19 sunriseTime:(id)a20 sunsetTime:(id)a21 localizedAirQualityIndex:(id)a22 localizedAirQualityCategory:(id)a23 pollutants:(id)a24
{
  v86 = a3;
  v92 = a4;
  v89 = a5;
  v29 = a6;
  v91 = a7;
  v90 = a8;
  v30 = a9;
  v85 = a10;
  v31 = a11;
  v32 = a12;
  v33 = a13;
  v34 = a14;
  v35 = a15;
  v36 = a16;
  v37 = a17;
  v88 = a18;
  v87 = a19;
  v84 = a20;
  v83 = a21;
  v82 = a22;
  v81 = a23;
  v80 = a24;
  v93.receiver = self;
  v93.super_class = WFWeatherData;
  v38 = [(WFWeatherData *)&v93 init];
  if (v38)
  {
    [WFWeatherData userTemperatureUnitString:v89];
    v77 = v32;
    v39 = v79 = v31;
    objc_storeStrong(&v38->_date, a3);
    v40 = [v92 copy];
    location = v38->_location;
    v38->_location = v40;

    v42 = [v29 measurementByConvertingToUnit:v39];
    temperature = v38->_temperature;
    v38->_temperature = v42;

    v44 = [v91 measurementByConvertingToUnit:v39];
    highTemperature = v38->_highTemperature;
    v38->_highTemperature = v44;

    v46 = [v90 measurementByConvertingToUnit:v39];
    lowTemperature = v38->_lowTemperature;
    v38->_lowTemperature = v46;

    v48 = [v30 measurementByConvertingToUnit:v39];
    feelsLikeTemperature = v38->_feelsLikeTemperature;
    v38->_feelsLikeTemperature = v48;

    objc_storeStrong(&v38->_localizedConditionString, a10);
    +[WFWeatherData visibilityUnit];
    v50 = v34;
    v52 = v51 = v33;
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
    v63 = [v35 measurementByConvertingToUnit:v62];
    precipitationAmount = v38->_precipitationAmount;
    v38->_precipitationAmount = v63;

    v65 = [v36 copy];
    precipitationChance = v38->_precipitationChance;
    v38->_precipitationChance = v65;

    v67 = +[WFWeatherData windSpeedUnit];
    v68 = [v37 measurementByConvertingToUnit:v67];
    windSpeed = v38->_windSpeed;
    v38->_windSpeed = v68;

    v33 = v51;
    v34 = v50;
    v70 = [v88 copy];
    windDirection = v38->_windDirection;
    v38->_windDirection = v70;

    v72 = [v87 copy];
    uvIndex = v38->_uvIndex;
    v38->_uvIndex = v72;

    objc_storeStrong(&v38->_sunriseTime, a20);
    objc_storeStrong(&v38->_sunsetTime, a21);
    objc_storeStrong(&v38->_localizedAirQualityIndex, a22);
    objc_storeStrong(&v38->_localizedAirQualityCategory, a23);
    objc_storeStrong(&v38->_pollutants, a24);
    v74 = v38;

    v32 = v77;
    v31 = v79;
  }

  return v38;
}

+ (id)userTemperatureUnitString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [MEMORY[0x277CBEAF8] currentLocale];
    v5 = [v6 objectForKey:*MEMORY[0x277CBE700]];
  }

  if ([v5 isEqualToString:*MEMORY[0x277CBE708]])
  {
    v7 = [MEMORY[0x277CCAE48] celsius];
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
    v7 = ;
  }

  v8 = v7;

  return v8;
}

@end