@interface SBMainDisplayConfigurationTransformer
+ (id)transformedMainDisplayConfigurationForConfiguration:(id)a3;
- (id)transformDisplayConfiguration:(id)a3;
@end

@implementation SBMainDisplayConfigurationTransformer

+ (id)transformedMainDisplayConfigurationForConfiguration:(id)a3
{
  v5 = a3;
  v6 = objc_alloc_init(SBMainDisplayConfigurationTransformer);
  v7 = [(SBMainDisplayConfigurationTransformer *)v6 transformDisplayConfiguration:v5];

  if ([v7 count] != &dword_0 + 1)
  {
    sub_F30C(a2, a1);
  }

  v8 = [v7 anyObject];

  return v8;
}

- (id)transformDisplayConfiguration:(id)a3
{
  v3 = a3;
  if ([v3 isMainRootDisplay]&& +[FBSDeviceEmulationConfiguration isEmulatedDevice](FBSDeviceEmulationConfiguration, "isEmulatedDevice") && +[FBSDeviceEmulationConfiguration hasEmulatedDeviceBounds])
  {
    +[FBSDeviceEmulationConfiguration emulatedDeviceBounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [v3 scale];
    v13 = v12 * v9;
    v14 = v12 * v11;
    v15 = [v3 currentMode];
    v16 = [v15 _copyWithOverrideSize:{v9, v11}];

    v17 = [[FBSDisplayConfigurationBuilder alloc] initWithConfiguration:v3];
    v18 = [v3 availableModes];
    [v17 setCurrentMode:v16 preferredMode:v16 otherModes:v18];

    [v3 _nativeBounds];
    [v17 setPixelSize:v13 nativeBounds:v14 bounds:{v19, v20, v21, v22, v5, v7, *&v9, *&v11}];
    v39 = 0;
    v23 = [v17 buildConfigurationWithError:&v39];
    v24 = v39;
    if (v23)
    {
      v25 = v3;
      v3 = v23;
    }

    else
    {
      v25 = SBLogDisplayTransforming();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_F380(v24, v3, v25);
      }
    }
  }

  [v3 bounds];
  v27 = v26;
  v29 = v28;
  BSCGFloatEpsilon();
  v31 = v30;
  v32 = [v3 CADisplay];
  v33 = v32;
  if (v27 <= v31 || v27 >= 1.79769313e308 || v29 <= v31 || v29 >= 1.79769313e308)
  {
    sub_F408(v32, v3);
  }

  v37 = [NSSet setWithObject:v3];

  return v37;
}

@end