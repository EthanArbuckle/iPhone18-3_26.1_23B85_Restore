@interface AXSettingsCaseTonesVolumeSliderCell
- (double)_roundFactorIfNeeded:(double)a3 forValue:(double)a4;
- (double)defaultSliderValue;
- (double)initialValue;
- (double)roundValueIfNeeded:(double)a3;
- (void)saveNewValue:(double)a3;
@end

@implementation AXSettingsCaseTonesVolumeSliderCell

- (double)defaultSliderValue
{
  v3 = [MEMORY[0x1E6989850] sharedInstance];
  v4 = [(AXSettingsTickedSliderCell *)self btAddress];
  v5 = [v3 defaultCaseTonesVolumeForDeviceAddress:v4];

  return v5;
}

- (double)initialValue
{
  v3 = [(AXSettingsTickedSliderCell *)self isInWatchSettings];
  v4 = [MEMORY[0x1E6989850] sharedInstance];
  v5 = [(AXSettingsTickedSliderCell *)self btAddress];
  if (v3)
  {
    [v4 nps_caseTonesVolumeForDeviceAddress:v5];
    v7 = v6;
  }

  else
  {
    v7 = [v4 caseTonesVolumeForDeviceAddress:v5];
  }

  return v7;
}

- (void)saveNewValue:(double)a3
{
  v5 = [(AXSettingsTickedSliderCell *)self controller];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v5 setCaseTonesVolume:v4 specifier:0];
}

- (double)roundValueIfNeeded:(double)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E6989850] sharedInstance];
  v7 = [(AXSettingsTickedSliderCell *)self btAddress];
  v8 = [v6 defaultCaseTonesVolumeForDeviceAddress:v7];

  v9 = (v5 - v8);
  v10 = (v5 - v8) > 0.0 && (v5 - v8) < 1.0;
  if (v10 || v5 < 0.0 && v9 > -0.1)
  {
    v5 = v8;
  }

  v11 = AXLogAirPodSettings();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    *&v15 = v5;
    v16 = [MEMORY[0x1E696AD98] numberWithFloat:v15];
    *&v17 = v8;
    v18 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
    v19 = 138413058;
    v20 = v13;
    v21 = 2112;
    v22 = v14;
    v23 = 2112;
    v24 = v16;
    v25 = 2112;
    v26 = v18;
    _os_log_debug_impl(&dword_1C0DFB000, v11, OS_LOG_TYPE_DEBUG, "roundValueIfNeeded difference: %@, new value: %@, display value: %@ defaultCaseTonesValue: %@", &v19, 0x2Au);
  }

  return v5;
}

- (double)_roundFactorIfNeeded:(double)a3 forValue:(double)a4
{
  [(AXSettingsCaseTonesVolumeSliderCell *)self defaultSliderValue];
  v8 = vabdd_f64(a4, v7);
  if (fabs(a3 / 10.0 + -0.1) < 0.001 || v8 < 0.001)
  {
    v9 = AXLogAirPodSettings();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [AXSettingsCaseTonesVolumeSliderCell _roundFactorIfNeeded:v9 forValue:?];
    }

    a3 = 1.0;
    if (v8 >= 0.001)
    {
      [(AXSettingsCaseTonesVolumeSliderCell *)self defaultSliderValue];
      if (v10 >= a4)
      {
        [(AXSettingsCaseTonesVolumeSliderCell *)self defaultSliderValue];
        if (v11 > a4)
        {
          return 0.99;
        }
      }

      else
      {
        return 1.01;
      }
    }
  }

  return a3;
}

- (void)_roundFactorIfNeeded:(NSObject *)a1 forValue:.cold.1(NSObject *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1C0DFB000, a1, OS_LOG_TYPE_DEBUG, "_roundFactorIfNeeded forced to 1.0 factor %@", &v3, 0xCu);
}

@end