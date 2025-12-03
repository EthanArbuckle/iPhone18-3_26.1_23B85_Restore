@interface PHASEMedium
- (PHASEEngine)engine;
- (PHASEMedium)init;
- (PHASEMedium)initWithEngine:(id)engine preset:(int64_t)preset privatePreset:(int64_t)privatePreset attenuationCoefficients:(id)coefficients speedOfSound:(float)sound;
- (PHASEMedium)initWithEngine:(id)engine privatePreset:(int64_t)preset;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initAirWithEngine:(id)engine temperature:(float)temperature pressure:(float)pressure humidity:(float)humidity bandcount:(int)bandcount;
- (id)initAirWithEngine:(id)engine temperature:(float)temperature pressure:(float)pressure humidity:(float)humidity frequencies:(id)frequencies;
- (id)initWaterWithEngine:(id)engine temperature:(float)temperature depth:(float)depth salinity:(float)salinity pH:(float)h frequencies:(id)frequencies;
- (void)dealloc;
- (void)setDefault;
@end

@implementation PHASEMedium

- (PHASEMedium)init
{
  [(PHASEMedium *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEMedium)initWithEngine:(id)engine privatePreset:(int64_t)preset
{
  engineCopy = engine;
  v7 = objc_opt_new();
  sGetFrequencies(v27, 0x1FuLL);
  if (preset == 1835291479)
  {
    Phase::Geometry::WaterUtility<double>::WaterUtility(v26);
    Phase::Geometry::WaterUtility<double>::SetTemperatureInCelsius(v26, 20.0);
    Phase::Geometry::WaterUtility<double>::SetDepthInMeters(v26, 10.0);
    for (i = 0; i != 124; i += 4)
    {
      v9 = *(v27[0] + i);
      v10 = Phase::Geometry::WaterUtility<double>::WaterAbsorptionInDecibelsPerMeter(v26, v9);
      v11 = [PHASESubband alloc];
      v12 = exp(v10 * -10.0 / 10.0 * 0.115129255);
      *&v13 = v12;
      *&v12 = v9;
      v14 = [(PHASESubband *)v11 initWithFrequency:v12 value:v13];
      [v7 addObject:v14];
    }

    v15 = v26[22];
  }

  else
  {
    Phase::Geometry::WeatherUtility<double>::WeatherUtility(v26);
    Phase::Geometry::WeatherUtility<double>::SetTemperatureInCelsius(v26, 20.0);
    Phase::Geometry::WeatherUtility<double>::SetRelativeHumidityPercentage(v26, 50.0);
    for (j = 0; j != 124; j += 4)
    {
      v17 = *(v27[0] + j);
      v18 = Phase::Geometry::WeatherUtility<double>::AtmosphericAbsorptionInDecibelsPerMeter(v26, v17);
      v19 = [PHASESubband alloc];
      v20 = exp(v18 * -10.0 / 10.0 * 0.115129255);
      *&v21 = v20;
      *&v20 = v17;
      v22 = [(PHASESubband *)v19 initWithFrequency:v20 value:v21];
      [v7 addObject:v22];
    }

    v15 = v26[17];
  }

  v23 = v15;
  if (v27[0])
  {
    v27[1] = v27[0];
    operator delete(v27[0]);
  }

  *&v15 = v23;
  v24 = [(PHASEMedium *)self initWithEngine:engineCopy preset:preset privatePreset:preset attenuationCoefficients:v7 speedOfSound:v15];

  return v24;
}

- (PHASEMedium)initWithEngine:(id)engine preset:(int64_t)preset privatePreset:(int64_t)privatePreset attenuationCoefficients:(id)coefficients speedOfSound:(float)sound
{
  v57 = *MEMORY[0x277D85DE8];
  obj = engine;
  coefficientsCopy = coefficients;
  v12 = [coefficientsCopy count];
  if (!v12)
  {
    v37 = **(Phase::Logger::GetInstance(0) + 448);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "PHASEMedium.mm";
      v53 = 1024;
      v54 = 183;
      v38 = "%25s:%-5d [PHASEMedium:initWithEngine:preset:privatePreset:attenuationCoefficients:speedOfSound]: attenuationCoefficients is empty";
      v39 = v37;
      v40 = 18;
LABEL_24:
      _os_log_impl(&dword_23A302000, v39, OS_LOG_TYPE_ERROR, v38, buf, v40);
    }

LABEL_25:
    selfCopy = 0;
    goto LABEL_26;
  }

  if (sound <= 0.0)
  {
    v41 = **(Phase::Logger::GetInstance(v12) + 448);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "PHASEMedium.mm";
      v53 = 1024;
      v54 = 191;
      v55 = 2048;
      soundCopy = sound;
      v38 = "%25s:%-5d [PHASEMedium:initWithEngine:preset:privatePreset:attenuationCoefficients:speedOfSound]: Invalid speedOfSound: %f";
      v39 = v41;
      v40 = 28;
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v50.receiver = self;
  v50.super_class = PHASEMedium;
  v13 = [(PHASEMedium *)&v50 init];
  if (!v13)
  {
    goto LABEL_19;
  }

  v43 = v13;
  objc_storeWeak(&v13->_engine, obj);
  v43->_preset = preset;
  v43->_privatePreset = privatePreset;
  v14 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v15 = coefficientsCopy;
  v16 = [v15 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v16)
  {
    v17 = *v47;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v47 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v46 + 1) + 8 * i);
        value = [v19 value];
        if (v21 < 0.0 || (value = [v19 value], v22 > 1.0))
        {
          v23 = **(Phase::Logger::GetInstance(value) + 448);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            [v19 value];
            *buf = 136315650;
            *&buf[4] = "PHASEMedium.mm";
            v53 = 1024;
            v54 = 213;
            v55 = 2048;
            soundCopy = v24;
            _os_log_impl(&dword_23A302000, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d PHASEMedium attenuation coefficient %f is out-of-range [0, 1]. Clamping...", buf, 0x1Cu);
          }
        }

        [v19 value];
        v26 = v25;
        [v19 value];
        v27 = v19;
        if (v28 != fminf(fmaxf(v26, 0.0), 1.0))
        {
          v29 = [PHASESubband alloc];
          [v19 frequency];
          v30 = [PHASESubband initWithFrequency:v29 value:"initWithFrequency:value:"];

          v27 = v30;
        }

        [v14 addObject:v27];
      }

      v16 = [v15 countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v16);
  }

  v31 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
  attenuationCoefficients = v43->_attenuationCoefficients;
  v43->_attenuationCoefficients = v31;

  v43->_speedOfSound = sound;
  *buf = v15;
  *&buf[8] = v43->_speedOfSound;
  WeakRetained = objc_loadWeakRetained(&v43->_engine);
  implementation = [WeakRetained implementation];
  [(PHASEMedium *)v43 setGeoMediumHandle:(*(**(implementation + 368) + 24))(*(implementation + 368), buf)];

  v35 = [(PHASEMedium *)v43 geoMediumHandle]== 0;
  v13 = v43;
  if (v35)
  {
    selfCopy = 0;
    self = v43;
  }

  else
  {
LABEL_19:
    self = v13;
    selfCopy = self;
  }

LABEL_26:

  return selfCopy;
}

- (id)initAirWithEngine:(id)engine temperature:(float)temperature pressure:(float)pressure humidity:(float)humidity bandcount:(int)bandcount
{
  v30 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  v13 = engineCopy;
  if ((bandcount - 32) <= 0xFFFFFFE2)
  {
    v14 = **(Phase::Logger::GetInstance(engineCopy) + 448);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "PHASEMedium.mm";
      *&__p[12] = 1024;
      *&__p[14] = 249;
      v28 = 1024;
      bandcountCopy = bandcount;
      _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d [PHASEMedium:initAirWithEngine:temperature:pressure:humidity:bandcount]: bandcount %d is out-of-range [3, 31]. Clamping...", __p, 0x18u);
    }

    if (bandcount <= 3)
    {
      bandcountCopy2 = 3;
    }

    else
    {
      bandcountCopy2 = bandcount;
    }

    bandcount = ((31 - bandcountCopy2) & ((31 - bandcountCopy2) >> 31)) + bandcountCopy2;
  }

  sGetFrequencies(__p, bandcount);
  v16 = objc_opt_new();
  if (bandcount >= 1)
  {
    v20 = 0;
    v21 = 4 * bandcount;
    do
    {
      v22 = objc_alloc(MEMORY[0x277CCABB0]);
      LODWORD(v23) = *(*__p + v20);
      v24 = [v22 initWithFloat:v23];
      [v16 addObject:v24];

      v20 += 4;
    }

    while (v21 != v20);
  }

  *&v17 = temperature;
  *&v18 = pressure;
  *&v19 = humidity;
  v25 = [(PHASEMedium *)self initAirWithEngine:v13 temperature:v16 pressure:v17 humidity:v18 frequencies:v19];

  if (*__p)
  {
    *&__p[8] = *__p;
    operator delete(*__p);
  }

  return v25;
}

- (id)initAirWithEngine:(id)engine temperature:(float)temperature pressure:(float)pressure humidity:(float)humidity frequencies:(id)frequencies
{
  v52 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  frequenciesCopy = frequencies;
  v13 = frequenciesCopy;
  if (pressure < 5.0)
  {
    v14 = **(Phase::Logger::GetInstance(frequenciesCopy) + 448);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v42 = "PHASEMedium.mm";
      v43 = 1024;
      v44 = 276;
      v45 = 2048;
      pressureCopy = pressure;
      _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d [PHASEMedium:initAirWithEngine:temperature:pressure:humidity:frequencies]: Pressure %2.2f must be > 0.001 (1 Pa). Clamping...", buf, 0x1Cu);
    }

    pressure = fmaxf(pressure, 5.0);
  }

  v15 = [(Phase::Logger *)v13 count];
  if (v15 < 3 || (v15 = [(Phase::Logger *)v13 count], v15 >= 0x20))
  {
    v16 = **(Phase::Logger::GetInstance(v15) + 448);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = COERCE_DOUBLE([(Phase::Logger *)v13 count]);
      *buf = 136315650;
      v42 = "PHASEMedium.mm";
      v43 = 1024;
      v44 = 285;
      v45 = 2048;
      pressureCopy = v17;
      _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d [PHASEMedium:initAirWithEngine:temperature:pressure:humidity:frequencies]: frequencies.count %zu is out-of-range [3, 31].", buf, 0x1Cu);
    }

    selfCopy = 0;
    goto LABEL_22;
  }

  Phase::Geometry::WeatherUtility<double>::WeatherUtility(buf);
  Phase::Geometry::WeatherUtility<double>::SetTemperatureInCelsius(buf, temperature);
  v20 = Phase::Controller::sClamp<double>(v19, (pressure * 1000.0), v47, v48);
  if (v20 != v49)
  {
    v49 = v20;
    v50 = 1;
LABEL_13:
    Phase::Geometry::WeatherUtility<double>::InitInternal(buf);
    goto LABEL_14;
  }

  if (v50)
  {
    goto LABEL_13;
  }

LABEL_14:
  Phase::Geometry::WeatherUtility<double>::SetRelativeHumidityPercentage(buf, humidity);
  v21 = v51;
  v22 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v23 = v13;
  v24 = [(Phase::Logger *)v23 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v24)
  {
    v25 = *v37;
    do
    {
      v26 = 0;
      do
      {
        if (*v37 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = *(*(&v36 + 1) + 8 * v26);
        [v27 floatValue];
        v29 = Phase::Geometry::WeatherUtility<double>::AtmosphericAbsorptionInDecibelsPerMeter(buf, v28);
        exp(v29 * -10.0 / 10.0 * 0.115129255);
        v30 = [PHASESubband alloc];
        [v27 floatValue];
        v31 = [PHASESubband initWithFrequency:v30 value:"initWithFrequency:value:"];
        [v22 addObject:v31];

        ++v26;
      }

      while (v24 != v26);
      v24 = [(Phase::Logger *)v23 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v24);
  }

  v32 = [MEMORY[0x277CBEA60] arrayWithArray:v22];
  *&v33 = v21;
  self = [(PHASEMedium *)self initWithEngine:engineCopy attenuationCoefficients:v32 speedOfSound:v33];

  selfCopy = self;
LABEL_22:

  return selfCopy;
}

- (id)initWaterWithEngine:(id)engine temperature:(float)temperature depth:(float)depth salinity:(float)salinity pH:(float)h frequencies:(id)frequencies
{
  v73 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  frequenciesCopy = frequencies;
  Phase::Geometry::WaterUtility<double>::WaterUtility(v58);
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = NSStringFromSelector(a2);
  v19 = PHASEGetPropertyBounded<float>(v17, v18, temperature, 0.0, 50.0);

  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v22 = NSStringFromSelector(a2);
  v23 = PHASEGetPropertyBounded<float>(v21, v22, depth, 0.0, 10000.0);

  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  v26 = NSStringFromSelector(a2);
  v27 = PHASEGetPropertyBounded<float>(v25, v26, salinity, 0.0, 50.0);

  v28 = objc_opt_class();
  v29 = NSStringFromClass(v28);
  v30 = NSStringFromSelector(a2);
  v31 = PHASEGetPropertyBounded<float>(v29, v30, h, 7.0, 9.0);

  Phase::Geometry::WaterUtility<double>::SetTemperatureInCelsius(v58, v19);
  Phase::Geometry::WaterUtility<double>::SetDepthInMeters(v58, v23);
  v34 = Phase::Controller::sClamp<double>(v32, v27, v58[10], v58[11]);
  if (v34 == v59)
  {
    if ((v60 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v59 = v34;
    v60 = 1;
  }

  Phase::Geometry::WaterUtility<double>::InitInternal(v58);
LABEL_5:
  inited = Phase::Controller::sClamp<double>(v33, v31, v61, v62);
  if (inited != v63)
  {
    v63 = inited;
    v64 = 1;
LABEL_8:
    inited = Phase::Geometry::WaterUtility<double>::InitInternal(v58);
    goto LABEL_9;
  }

  if (v64)
  {
    goto LABEL_8;
  }

LABEL_9:
  v36 = [frequenciesCopy count];
  if (v36 >= 3 && (v36 = [frequenciesCopy count], v36 < 0x20))
  {
    v40 = v65;
    v37 = objc_opt_new();
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v41 = frequenciesCopy;
    v42 = [v41 countByEnumeratingWithState:&v54 objects:v66 count:16];
    if (v42)
    {
      v43 = *v55;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v55 != v43)
          {
            objc_enumerationMutation(v41);
          }

          v45 = *(*(&v54 + 1) + 8 * i);
          [v45 floatValue];
          v47 = Phase::Geometry::WaterUtility<double>::WaterAbsorptionInDecibelsPerMeter(v58, v46);
          exp(v47 * -10.0 / 10.0 * 0.115129255);
          v48 = [PHASESubband alloc];
          [v45 floatValue];
          v49 = [PHASESubband initWithFrequency:v48 value:"initWithFrequency:value:"];
          [v37 addObject:v49];
        }

        v42 = [v41 countByEnumeratingWithState:&v54 objects:v66 count:16];
      }

      while (v42);
    }

    v50 = [MEMORY[0x277CBEA60] arrayWithArray:v37];
    *&v51 = v40;
    self = [(PHASEMedium *)self initWithEngine:engineCopy attenuationCoefficients:v50 speedOfSound:v51];

    selfCopy = self;
  }

  else
  {
    v37 = **(Phase::Logger::GetInstance(v36) + 448);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = [frequenciesCopy count];
      *buf = 136315650;
      v68 = "PHASEMedium.mm";
      v69 = 1024;
      v70 = 340;
      v71 = 2048;
      v72 = v38;
      _os_log_impl(&dword_23A302000, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d [PHASEMedium initWaterEWithEngine:temperature:depth:salinity:pH:frequencies]: Frequencies %lu out-of-range [3, 31].", buf, 0x1Cu);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setDefault
{
  v20[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *([WeakRetained implementation] + 368);
    (*(*v5 + 256))(v5, [(PHASEMedium *)self geoMediumHandle]);
  }

  else
  {
    v6 = *MEMORY[0x277CCA450];
    v19 = *MEMORY[0x277CCA450];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid PHASEEngine"];
    v20[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

    v10 = **(Phase::Logger::GetInstance(v9) + 448);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v8 objectForKeyedSubscript:v6];
      v12 = v11;
      v13 = 136315650;
      v14 = "PHASEMedium.mm";
      v15 = 1024;
      v16 = 367;
      v17 = 2080;
      uTF8String = [v11 UTF8String];
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", &v13, 0x1Cu);
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  preset = [(PHASEMedium *)self preset];
  privatePreset = [(PHASEMedium *)self privatePreset];
  attenuationCoefficients = [(PHASEMedium *)self attenuationCoefficients];
  [(PHASEMedium *)self speedOfSound];
  v9 = [v4 initWithEngine:WeakRetained preset:preset privatePreset:privatePreset attenuationCoefficients:attenuationCoefficients speedOfSound:?];

  return v9;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_engine);
    v5 = *([v4 implementation] + 368);
    (*(*v5 + 328))(v5, [(PHASEMedium *)self geoMediumHandle]);
  }

  v6.receiver = self;
  v6.super_class = PHASEMedium;
  [(PHASEMedium *)&v6 dealloc];
}

- (PHASEEngine)engine
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  return WeakRetained;
}

@end