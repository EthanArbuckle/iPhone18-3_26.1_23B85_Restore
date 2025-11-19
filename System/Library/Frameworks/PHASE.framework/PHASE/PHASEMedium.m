@interface PHASEMedium
- (PHASEEngine)engine;
- (PHASEMedium)init;
- (PHASEMedium)initWithEngine:(id)a3 preset:(int64_t)a4 privatePreset:(int64_t)a5 attenuationCoefficients:(id)a6 speedOfSound:(float)a7;
- (PHASEMedium)initWithEngine:(id)a3 privatePreset:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initAirWithEngine:(id)a3 temperature:(float)a4 pressure:(float)a5 humidity:(float)a6 bandcount:(int)a7;
- (id)initAirWithEngine:(id)a3 temperature:(float)a4 pressure:(float)a5 humidity:(float)a6 frequencies:(id)a7;
- (id)initWaterWithEngine:(id)a3 temperature:(float)a4 depth:(float)a5 salinity:(float)a6 pH:(float)a7 frequencies:(id)a8;
- (void)dealloc;
- (void)setDefault;
@end

@implementation PHASEMedium

- (PHASEMedium)init
{
  [(PHASEMedium *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEMedium)initWithEngine:(id)a3 privatePreset:(int64_t)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  sGetFrequencies(v27, 0x1FuLL);
  if (a4 == 1835291479)
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
  v24 = [(PHASEMedium *)self initWithEngine:v6 preset:a4 privatePreset:a4 attenuationCoefficients:v7 speedOfSound:v15];

  return v24;
}

- (PHASEMedium)initWithEngine:(id)a3 preset:(int64_t)a4 privatePreset:(int64_t)a5 attenuationCoefficients:(id)a6 speedOfSound:(float)a7
{
  v57 = *MEMORY[0x277D85DE8];
  obj = a3;
  v45 = a6;
  v12 = [v45 count];
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
    v36 = 0;
    goto LABEL_26;
  }

  if (a7 <= 0.0)
  {
    v41 = **(Phase::Logger::GetInstance(v12) + 448);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "PHASEMedium.mm";
      v53 = 1024;
      v54 = 191;
      v55 = 2048;
      v56 = a7;
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
  v43->_preset = a4;
  v43->_privatePreset = a5;
  v14 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v15 = v45;
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
        v20 = [v19 value];
        if (v21 < 0.0 || (v20 = [v19 value], v22 > 1.0))
        {
          v23 = **(Phase::Logger::GetInstance(v20) + 448);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            [v19 value];
            *buf = 136315650;
            *&buf[4] = "PHASEMedium.mm";
            v53 = 1024;
            v54 = 213;
            v55 = 2048;
            v56 = v24;
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

  v43->_speedOfSound = a7;
  *buf = v15;
  *&buf[8] = v43->_speedOfSound;
  WeakRetained = objc_loadWeakRetained(&v43->_engine);
  v34 = [WeakRetained implementation];
  [(PHASEMedium *)v43 setGeoMediumHandle:(*(**(v34 + 368) + 24))(*(v34 + 368), buf)];

  v35 = [(PHASEMedium *)v43 geoMediumHandle]== 0;
  v13 = v43;
  if (v35)
  {
    v36 = 0;
    self = v43;
  }

  else
  {
LABEL_19:
    self = v13;
    v36 = self;
  }

LABEL_26:

  return v36;
}

- (id)initAirWithEngine:(id)a3 temperature:(float)a4 pressure:(float)a5 humidity:(float)a6 bandcount:(int)a7
{
  v30 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = v12;
  if ((a7 - 32) <= 0xFFFFFFE2)
  {
    v14 = **(Phase::Logger::GetInstance(v12) + 448);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "PHASEMedium.mm";
      *&__p[12] = 1024;
      *&__p[14] = 249;
      v28 = 1024;
      v29 = a7;
      _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d [PHASEMedium:initAirWithEngine:temperature:pressure:humidity:bandcount]: bandcount %d is out-of-range [3, 31]. Clamping...", __p, 0x18u);
    }

    if (a7 <= 3)
    {
      v15 = 3;
    }

    else
    {
      v15 = a7;
    }

    a7 = ((31 - v15) & ((31 - v15) >> 31)) + v15;
  }

  sGetFrequencies(__p, a7);
  v16 = objc_opt_new();
  if (a7 >= 1)
  {
    v20 = 0;
    v21 = 4 * a7;
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

  *&v17 = a4;
  *&v18 = a5;
  *&v19 = a6;
  v25 = [(PHASEMedium *)self initAirWithEngine:v13 temperature:v16 pressure:v17 humidity:v18 frequencies:v19];

  if (*__p)
  {
    *&__p[8] = *__p;
    operator delete(*__p);
  }

  return v25;
}

- (id)initAirWithEngine:(id)a3 temperature:(float)a4 pressure:(float)a5 humidity:(float)a6 frequencies:(id)a7
{
  v52 = *MEMORY[0x277D85DE8];
  v35 = a3;
  v12 = a7;
  v13 = v12;
  if (a5 < 5.0)
  {
    v14 = **(Phase::Logger::GetInstance(v12) + 448);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v42 = "PHASEMedium.mm";
      v43 = 1024;
      v44 = 276;
      v45 = 2048;
      v46 = a5;
      _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d [PHASEMedium:initAirWithEngine:temperature:pressure:humidity:frequencies]: Pressure %2.2f must be > 0.001 (1 Pa). Clamping...", buf, 0x1Cu);
    }

    a5 = fmaxf(a5, 5.0);
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
      v46 = v17;
      _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d [PHASEMedium:initAirWithEngine:temperature:pressure:humidity:frequencies]: frequencies.count %zu is out-of-range [3, 31].", buf, 0x1Cu);
    }

    v18 = 0;
    goto LABEL_22;
  }

  Phase::Geometry::WeatherUtility<double>::WeatherUtility(buf);
  Phase::Geometry::WeatherUtility<double>::SetTemperatureInCelsius(buf, a4);
  v20 = Phase::Controller::sClamp<double>(v19, (a5 * 1000.0), v47, v48);
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
  Phase::Geometry::WeatherUtility<double>::SetRelativeHumidityPercentage(buf, a6);
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
  self = [(PHASEMedium *)self initWithEngine:v35 attenuationCoefficients:v32 speedOfSound:v33];

  v18 = self;
LABEL_22:

  return v18;
}

- (id)initWaterWithEngine:(id)a3 temperature:(float)a4 depth:(float)a5 salinity:(float)a6 pH:(float)a7 frequencies:(id)a8
{
  v73 = *MEMORY[0x277D85DE8];
  v53 = a3;
  v15 = a8;
  Phase::Geometry::WaterUtility<double>::WaterUtility(v58);
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = NSStringFromSelector(a2);
  v19 = PHASEGetPropertyBounded<float>(v17, v18, a4, 0.0, 50.0);

  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v22 = NSStringFromSelector(a2);
  v23 = PHASEGetPropertyBounded<float>(v21, v22, a5, 0.0, 10000.0);

  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  v26 = NSStringFromSelector(a2);
  v27 = PHASEGetPropertyBounded<float>(v25, v26, a6, 0.0, 50.0);

  v28 = objc_opt_class();
  v29 = NSStringFromClass(v28);
  v30 = NSStringFromSelector(a2);
  v31 = PHASEGetPropertyBounded<float>(v29, v30, a7, 7.0, 9.0);

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
  v36 = [v15 count];
  if (v36 >= 3 && (v36 = [v15 count], v36 < 0x20))
  {
    v40 = v65;
    v37 = objc_opt_new();
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v41 = v15;
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
    self = [(PHASEMedium *)self initWithEngine:v53 attenuationCoefficients:v50 speedOfSound:v51];

    v39 = self;
  }

  else
  {
    v37 = **(Phase::Logger::GetInstance(v36) + 448);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = [v15 count];
      *buf = 136315650;
      v68 = "PHASEMedium.mm";
      v69 = 1024;
      v70 = 340;
      v71 = 2048;
      v72 = v38;
      _os_log_impl(&dword_23A302000, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d [PHASEMedium initWaterEWithEngine:temperature:depth:salinity:pH:frequencies]: Frequencies %lu out-of-range [3, 31].", buf, 0x1Cu);
    }

    v39 = 0;
  }

  return v39;
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
      v18 = [v11 UTF8String];
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", &v13, 0x1Cu);
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v6 = [(PHASEMedium *)self preset];
  v7 = [(PHASEMedium *)self privatePreset];
  v8 = [(PHASEMedium *)self attenuationCoefficients];
  [(PHASEMedium *)self speedOfSound];
  v9 = [v4 initWithEngine:WeakRetained preset:v6 privatePreset:v7 attenuationCoefficients:v8 speedOfSound:?];

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