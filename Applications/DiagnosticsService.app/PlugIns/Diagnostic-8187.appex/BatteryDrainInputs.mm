@interface BatteryDrainInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
- (BOOL)validateAndInitializeSpecifications:(id)specifications;
- (NSNumber)audioVolume;
- (NSNumber)displayBrightness;
- (NSString)audioFilename;
@end

@implementation BatteryDrainInputs

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  parametersCopy = parameters;
  v19 = 0;
  -[BatteryDrainInputs setDrainAudio:](self, "setDrainAudio:", [parametersCopy dk_BOOLFromRequiredKey:@"drainAudio" failed:&v19]);
  -[BatteryDrainInputs setDrainDisplay:](self, "setDrainDisplay:", [parametersCopy dk_BOOLFromRequiredKey:@"drainDisplay" failed:&v19]);
  -[BatteryDrainInputs setDrainCPU:](self, "setDrainCPU:", [parametersCopy dk_BOOLFromRequiredKey:@"drainCPU" failed:&v19]);
  -[BatteryDrainInputs setDrainGPU:](self, "setDrainGPU:", [parametersCopy dk_BOOLFromRequiredKey:@"drainGPU" failed:&v19]);
  v5 = [parametersCopy dk_stringFromKey:@"audioFilename" maxLength:1024 defaultValue:&stru_100018C00 failed:&v19];
  [(BatteryDrainInputs *)self setAudioFilename:v5];

  v6 = [parametersCopy dk_numberFromKey:@"audioVolume" lowerBound:&off_100018F68 upperBound:&off_100018F78 defaultValue:&off_100018F78 failed:&v19];
  [(BatteryDrainInputs *)self setAudioVolume:v6];

  v7 = [parametersCopy dk_numberFromKey:@"displayBrightness" lowerBound:&off_100018F68 upperBound:&off_100018F78 defaultValue:&off_100018F78 failed:&v19];
  [(BatteryDrainInputs *)self setDisplayBrightness:v7];

  -[BatteryDrainInputs setAutoBrightnessOff:](self, "setAutoBrightnessOff:", [parametersCopy dk_BOOLFromRequiredKey:@"autoBrightnessOff" failed:&v19]);
  -[BatteryDrainInputs setLowPowerModeOff:](self, "setLowPowerModeOff:", [parametersCopy dk_BOOLFromRequiredKey:@"lowPowerModeOff" failed:&v19]);
  v8 = [parametersCopy dk_numberFromKey:@"drainCPUIterationDelay" lowerBound:&off_100018EF0 upperBound:&off_100018F08 defaultValue:&off_100018EF0 failed:&v19];
  [(BatteryDrainInputs *)self setCpuDrainIterationDelay:v8];

  v9 = [parametersCopy dk_numberFromKey:@"drainGPUIterationDelay" lowerBound:&off_100018EF0 upperBound:&off_100018F08 defaultValue:&off_100018EF0 failed:&v19];
  [(BatteryDrainInputs *)self setGpuDrainIterationDelay:v9];

  -[BatteryDrainInputs setDisableUSBCharging:](self, "setDisableUSBCharging:", [parametersCopy dk_BOOLFromKey:@"disableUSBCharging" defaultValue:0 failed:&v19]);
  if ([(BatteryDrainInputs *)self disableUSBCharging])
  {
    v10 = &off_100018F88;
  }

  else
  {
    v10 = &off_100018FA8;
  }

  v11 = [parametersCopy dk_numberFromKey:@"targetBatteryPercentage" lowerBound:v10 upperBound:&off_100018F98 defaultValue:v10 failed:&v19];
  [(BatteryDrainInputs *)self setTargetBatteryPercentage:v11];

  v12 = [parametersCopy dk_dictionaryFromRequiredKey:@"interruptDetectors" failed:&v19];
  v13 = [v12 dk_dictionaryFromRequiredKey:@"accessory" failed:&v19];
  self->_accessoryDetectorActive = [v13 dk_BOOLFromKey:@"active" defaultValue:0 failed:&v19];
  if ((v19 & 1) == 0 && [(BatteryDrainInputs *)self isAccessoryDetectorActive])
  {
    v14 = [NSSet setWithObject:objc_opt_class()];
    v15 = [v13 dk_arrayFromRequiredKey:@"modelNumbers" types:v14 maxLength:50 failed:&v19 validator:&stru_100018570];
    accessoryDetectorModelNumbers = self->_accessoryDetectorModelNumbers;
    self->_accessoryDetectorModelNumbers = v15;
  }

  v17 = v19;

  return (v17 & 1) == 0;
}

- (BOOL)validateAndInitializeSpecifications:(id)specifications
{
  v6 = 0;
  v4 = [specifications dk_numberFromKey:@"drainCPUMatrixLength" lowerBound:&off_100018F20 upperBound:&off_100018F38 defaultValue:&off_100018F50 failed:&v6];
  [(BatteryDrainInputs *)self setCpuDrainMatrixLength:v4];

  return (v6 & 1) == 0;
}

- (NSString)audioFilename
{
  WeakRetained = objc_loadWeakRetained(&self->_audioFilename);

  return WeakRetained;
}

- (NSNumber)audioVolume
{
  WeakRetained = objc_loadWeakRetained(&self->_audioVolume);

  return WeakRetained;
}

- (NSNumber)displayBrightness
{
  WeakRetained = objc_loadWeakRetained(&self->_displayBrightness);

  return WeakRetained;
}

@end