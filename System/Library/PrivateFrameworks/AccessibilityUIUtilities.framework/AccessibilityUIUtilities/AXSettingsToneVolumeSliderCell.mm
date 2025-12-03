@interface AXSettingsToneVolumeSliderCell
- (double)defaultSliderValue;
- (double)initialValue;
- (double)roundValueIfNeeded:(double)needed;
- (void)saveNewValue:(double)value;
@end

@implementation AXSettingsToneVolumeSliderCell

- (double)defaultSliderValue
{
  isInWatchSettings = [(AXSettingsTickedSliderCell *)self isInWatchSettings];
  mEMORY[0x1E6989850] = [MEMORY[0x1E6989850] sharedInstance];
  btAddress = [(AXSettingsTickedSliderCell *)self btAddress];
  if (isInWatchSettings)
  {
    v6 = [mEMORY[0x1E6989850] nps_defaultToneVolumeForDeviceAddress:btAddress];
  }

  else
  {
    v6 = [mEMORY[0x1E6989850] defaultToneVolumeForDeviceAddress:btAddress];
  }

  v7 = v6;

  return v7;
}

- (double)initialValue
{
  isInWatchSettings = [(AXSettingsTickedSliderCell *)self isInWatchSettings];
  mEMORY[0x1E6989850] = [MEMORY[0x1E6989850] sharedInstance];
  btAddress = [(AXSettingsTickedSliderCell *)self btAddress];
  if (isInWatchSettings)
  {
    [mEMORY[0x1E6989850] nps_toneVolumeForDeviceAddress:btAddress];
    v7 = v6;
  }

  else
  {
    v7 = [mEMORY[0x1E6989850] toneVolumeForDeviceAddress:btAddress];
  }

  return v7;
}

- (void)saveNewValue:(double)value
{
  controller = [(AXSettingsTickedSliderCell *)self controller];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:value];
  [controller setToneVolume:v4 specifier:0];
}

- (double)roundValueIfNeeded:(double)needed
{
  v27 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  mEMORY[0x1E6989850] = [MEMORY[0x1E6989850] sharedInstance];
  btAddress = [(AXSettingsTickedSliderCell *)self btAddress];
  v8 = [mEMORY[0x1E6989850] defaultToneVolumeForDeviceAddress:btAddress];

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

@end