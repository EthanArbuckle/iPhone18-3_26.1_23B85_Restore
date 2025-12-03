@interface SBMainDisplayConfigurationTransformer
+ (id)transformedMainDisplayConfigurationForConfiguration:(id)configuration;
- (id)transformDisplayConfiguration:(id)configuration;
@end

@implementation SBMainDisplayConfigurationTransformer

+ (id)transformedMainDisplayConfigurationForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6 = objc_alloc_init(SBMainDisplayConfigurationTransformer);
  v7 = [(SBMainDisplayConfigurationTransformer *)v6 transformDisplayConfiguration:configurationCopy];

  if ([v7 count] != &dword_0 + 1)
  {
    sub_F30C(a2, self);
  }

  anyObject = [v7 anyObject];

  return anyObject;
}

- (id)transformDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ([configurationCopy isMainRootDisplay]&& +[FBSDeviceEmulationConfiguration isEmulatedDevice](FBSDeviceEmulationConfiguration, "isEmulatedDevice") && +[FBSDeviceEmulationConfiguration hasEmulatedDeviceBounds])
  {
    +[FBSDeviceEmulationConfiguration emulatedDeviceBounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [configurationCopy scale];
    v13 = v12 * v9;
    v14 = v12 * v11;
    currentMode = [configurationCopy currentMode];
    v16 = [currentMode _copyWithOverrideSize:{v9, v11}];

    v17 = [[FBSDisplayConfigurationBuilder alloc] initWithConfiguration:configurationCopy];
    availableModes = [configurationCopy availableModes];
    [v17 setCurrentMode:v16 preferredMode:v16 otherModes:availableModes];

    [configurationCopy _nativeBounds];
    [v17 setPixelSize:v13 nativeBounds:v14 bounds:{v19, v20, v21, v22, v5, v7, *&v9, *&v11}];
    v39 = 0;
    v23 = [v17 buildConfigurationWithError:&v39];
    v24 = v39;
    if (v23)
    {
      v25 = configurationCopy;
      configurationCopy = v23;
    }

    else
    {
      v25 = SBLogDisplayTransforming();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_F380(v24, configurationCopy, v25);
      }
    }
  }

  [configurationCopy bounds];
  v27 = v26;
  v29 = v28;
  BSCGFloatEpsilon();
  v31 = v30;
  cADisplay = [configurationCopy CADisplay];
  v33 = cADisplay;
  if (v27 <= v31 || v27 >= 1.79769313e308 || v29 <= v31 || v29 >= 1.79769313e308)
  {
    sub_F408(cADisplay, configurationCopy);
  }

  v37 = [NSSet setWithObject:configurationCopy];

  return v37;
}

@end