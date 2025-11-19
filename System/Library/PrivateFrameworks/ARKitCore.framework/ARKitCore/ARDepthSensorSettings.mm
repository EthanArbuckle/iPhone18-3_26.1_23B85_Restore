@interface ARDepthSensorSettings
- (ARDepthSensorSettings)initWithVideoFormat:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation ARDepthSensorSettings

- (ARDepthSensorSettings)initWithVideoFormat:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = ARDepthSensorSettings;
  v3 = [(ARImageSensorSettings *)&v21 initWithVideoFormat:a3];
  if (v3)
  {
    v4 = [ARKitUserDefaults integerForKey:@"com.apple.arkit.jasper.timeOfFlightProjectorMode"];
    v5 = @"ARTimeOfFlightProjectorModeNone";
    v6 = v5;
    v7 = v4 - 1;
    v8 = v5;
    if (v7 <= 5)
    {
      v8 = v5;
      if ((0x27u >> v7))
      {
        v8 = *off_1E817BBE8[v7];
      }
    }

    if (![(__CFString *)v8 isEqualToString:v6])
    {
      v9 = v8;
LABEL_16:
      timeOfFlightProjectorMode = v3->_timeOfFlightProjectorMode;
      v3->_timeOfFlightProjectorMode = &v9->isa;

      return v3;
    }

    v9 = @"ARTimeOfFlightProjectorModeNormalShortHybrid";

    if (ARShouldUseLogTypeError_onceToken != -1)
    {
      [ARDepthSensorSettings initWithVideoFormat:];
    }

    v10 = ARShouldUseLogTypeError_internalOSVersion;
    v11 = _ARLogGeneral();
    v12 = v11;
    if (v10 == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138543874;
        v23 = v14;
        v24 = 2048;
        v25 = v3;
        v26 = 2114;
        v27 = v9;
        v15 = "%{public}@ <%p>: Invalid default for ARJasperTimeOfFlightProjectorMode, falling back to %{public}@";
        v16 = v12;
        v17 = OS_LOG_TYPE_ERROR;
LABEL_14:
        _os_log_impl(&dword_1C241C000, v16, v17, v15, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v18 = objc_opt_class();
      v14 = NSStringFromClass(v18);
      *buf = 138543874;
      v23 = v14;
      v24 = 2048;
      v25 = v3;
      v26 = 2114;
      v27 = v9;
      v15 = "Error: %{public}@ <%p>: Invalid default for ARJasperTimeOfFlightProjectorMode, falling back to %{public}@";
      v16 = v12;
      v17 = OS_LOG_TYPE_INFO;
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v7.receiver = self;
  v7.super_class = ARDepthSensorSettings;
  v4 = [(ARImageSensorSettings *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@", v4];

  [v5 appendFormat:@"TimeOfFlightProjectorMode: %@\n", self->_timeOfFlightProjectorMode];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ARDepthSensorSettings;
  if ([(ARImageSensorSettings *)&v8 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 timeOfFlightProjectorMode];
    v6 = [v5 isEqualToString:self->_timeOfFlightProjectorMode];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = ARDepthSensorSettings;
  v5 = [(ARImageSensorSettings *)&v9 copyWithZone:?];
  v6 = [(NSString *)self->_timeOfFlightProjectorMode copyWithZone:a3];
  v7 = v5[9];
  v5[9] = v6;

  return v5;
}

@end