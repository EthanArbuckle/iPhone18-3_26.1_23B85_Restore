@interface AXSettingsCaseTonesVolumeSliderCell
- (double)_roundFactorIfNeeded:(double)needed forValue:(double)value;
- (double)defaultSliderValue;
- (double)initialValue;
- (double)roundValueIfNeeded:(double)needed;
- (void)saveNewValue:(double)value;
@end

@implementation AXSettingsCaseTonesVolumeSliderCell

- (double)defaultSliderValue
{
  mEMORY[0x1E6989850] = [MEMORY[0x1E6989850] sharedInstance];
  btAddress = [(AXSettingsTickedSliderCell *)self btAddress];
  v5 = [mEMORY[0x1E6989850] defaultCaseTonesVolumeForDeviceAddress:btAddress];

  return v5;
}

- (double)initialValue
{
  isInWatchSettings = [(AXSettingsTickedSliderCell *)self isInWatchSettings];
  mEMORY[0x1E6989850] = [MEMORY[0x1E6989850] sharedInstance];
  btAddress = [(AXSettingsTickedSliderCell *)self btAddress];
  if (isInWatchSettings)
  {
    [mEMORY[0x1E6989850] nps_caseTonesVolumeForDeviceAddress:btAddress];
    v7 = v6;
  }

  else
  {
    v7 = [mEMORY[0x1E6989850] caseTonesVolumeForDeviceAddress:btAddress];
  }

  return v7;
}

- (void)saveNewValue:(double)value
{
  controller = [(AXSettingsTickedSliderCell *)self controller];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:value];
  [controller setCaseTonesVolume:v4 specifier:0];
}

- (double)roundValueIfNeeded:(double)needed
{
  v27 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  mEMORY[0x1E6989850] = [MEMORY[0x1E6989850] sharedInstance];
  btAddress = [(AXSettingsTickedSliderCell *)self btAddress];
  v8 = [mEMORY[0x1E6989850] defaultCaseTonesVolumeForDeviceAddress:btAddress];

  v9 = (neededCopy - v8);
  v10 = (neededCopy - v8) > 0.0 && (neededCopy - v8) < 1.0;
  if (v10 || neededCopy < 0.0 && v9 > -0.1)
  {
    neededCopy = v8;
  }

  v11 = AXLogAirPodSettings();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:needed];
    *&v15 = neededCopy;
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

  return neededCopy;
}

- (double)_roundFactorIfNeeded:(double)needed forValue:(double)value
{
  [(AXSettingsCaseTonesVolumeSliderCell *)self defaultSliderValue];
  v8 = vabdd_f64(value, v7);
  if (fabs(needed / 10.0 + -0.1) < 0.001 || v8 < 0.001)
  {
    v9 = AXLogAirPodSettings();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [AXSettingsCaseTonesVolumeSliderCell _roundFactorIfNeeded:v9 forValue:?];
    }

    needed = 1.0;
    if (v8 >= 0.001)
    {
      [(AXSettingsCaseTonesVolumeSliderCell *)self defaultSliderValue];
      if (v10 >= value)
      {
        [(AXSettingsCaseTonesVolumeSliderCell *)self defaultSliderValue];
        if (v11 > value)
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

  return needed;
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