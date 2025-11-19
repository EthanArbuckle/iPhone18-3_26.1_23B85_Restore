@interface AXSettingsToneVolumeSliderCell
- (double)defaultSliderValue;
- (double)initialValue;
- (double)roundValueIfNeeded:(double)a3;
- (void)saveNewValue:(double)a3;
@end

@implementation AXSettingsToneVolumeSliderCell

- (double)defaultSliderValue
{
  v3 = [(AXSettingsTickedSliderCell *)self isInWatchSettings];
  v4 = [MEMORY[0x1E6989850] sharedInstance];
  v5 = [(AXSettingsTickedSliderCell *)self btAddress];
  if (v3)
  {
    v6 = [v4 nps_defaultToneVolumeForDeviceAddress:v5];
  }

  else
  {
    v6 = [v4 defaultToneVolumeForDeviceAddress:v5];
  }

  v7 = v6;

  return v7;
}

- (double)initialValue
{
  v3 = [(AXSettingsTickedSliderCell *)self isInWatchSettings];
  v4 = [MEMORY[0x1E6989850] sharedInstance];
  v5 = [(AXSettingsTickedSliderCell *)self btAddress];
  if (v3)
  {
    [v4 nps_toneVolumeForDeviceAddress:v5];
    v7 = v6;
  }

  else
  {
    v7 = [v4 toneVolumeForDeviceAddress:v5];
  }

  return v7;
}

- (void)saveNewValue:(double)a3
{
  v5 = [(AXSettingsTickedSliderCell *)self controller];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v5 setToneVolume:v4 specifier:0];
}

- (double)roundValueIfNeeded:(double)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E6989850] sharedInstance];
  v7 = [(AXSettingsTickedSliderCell *)self btAddress];
  v8 = [v6 defaultToneVolumeForDeviceAddress:v7];

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

@end