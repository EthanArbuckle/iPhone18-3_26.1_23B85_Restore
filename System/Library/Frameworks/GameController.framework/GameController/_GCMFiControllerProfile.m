@interface _GCMFiControllerProfile
+ (BOOL)determineAccelerometerSupportWithServiceInfo:(id)a3;
+ (BOOL)determineGyroSupportWithServiceInfo:(id)a3;
+ (BOOL)logicalDevice:(id)a3 getSystemButtonName:(id *)a4 sfSymbolName:(id *)a5 needsMFiCompatibility:(BOOL *)a6;
+ (BOOL)match:(id)a3;
+ (BOOL)physicalDeviceSupportsMotion:(id)a3;
+ (BOOL)physicalDeviceUsesACHomeForMenu:(id)a3;
+ (_GCPhysicalDeviceManager)deviceManager;
+ (id)logicalDevice:(id)a3 makeControllerInputDescriptionWithIdentifier:(id)a4 bindings:(id)a5;
+ (id)logicalDevice:(id)a3 makeControllerMotionWithIdentifier:(id)a4;
+ (id)logicalDevice:(id)a3 makeControllerPhysicalInputProfileDescriptionWithIdentifier:(id)a4 bindings:(id)a5;
+ (id)logicalDevice:(id)a3 makeControllerPhysicalInputProfileWithIdentifier:(id)a4;
+ (void)determineCapabilitiesWithServiceInfo:(id)a3 initInfo:(id *)a4;
+ (void)physicalDevice:(id)a3 setIndicatedPlayerIndex:(int64_t)a4;
+ (void)populateInitInfo:(id *)a3 forLogicalDevice:(id)a4;
@end

@implementation _GCMFiControllerProfile

+ (_GCPhysicalDeviceManager)deviceManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40___GCMFiControllerProfile_deviceManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (deviceManager_onceToken_1 != -1)
  {
    dispatch_once(&deviceManager_onceToken_1, block);
  }

  v2 = deviceManager_deviceManager_1;

  return v2;
}

+ (BOOL)match:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_getAssociatedObject(v3, "MFiControllerCapabilities");
  if (v4)
  {
    v5 = v4;
LABEL_4:
    v6 = [(_GCMFiControllerCapabilites *)v5 isExtendedGamepad];
    v7 = [(_GCMFiControllerCapabilites *)v5 isStandardGamepad];
    v8 = v7;
    if ((v6 & 1) == 0 && !v7)
    {
      goto LABEL_6;
    }

    v10 = [v3 numberPropertyForKey:@"Authenticated"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (-[NSObject BOOLValue](v10, "BOOLValue") & 1) != 0 || (isDeviceParentAuthenticated([v3 service]) & 1) != 0)
    {
      v11 = 1;
    }

    else
    {
      v12 = GCBypassMFiAuthentication();
      v13 = [v3 stringPropertyForKey:@"Product"];
      isInternalBuild = gc_isInternalBuild();
      if (!v12)
      {
        if (isInternalBuild)
        {
          [(_GCMFiControllerProfile *)v13 match:v3];
        }

        v9 = 0;
        goto LABEL_21;
      }

      if (isInternalBuild)
      {
        [(_GCMFiControllerProfile *)v13 match:v3];
      }

      v11 = 0;
    }

    objc_setAssociatedObject(v3, "MFiControllerCapabilities", v5, 0x301);
    if (!gc_isInternalBuild())
    {
      v9 = 1;
      goto LABEL_22;
    }

    v10 = getGCLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (v11)
      {
        v17 = " authenticated";
      }

      else
      {
        v17 = "";
      }

      v18 = " ?";
      if (v8)
      {
        v18 = " standard";
      }

      if (v6)
      {
        v19 = " extended";
      }

      else
      {
        v19 = v18;
      }

      v20 = [v3 name];
      v21 = 136316162;
      v22 = v17;
      v23 = 2080;
      v24 = v19;
      v25 = 2112;
      v26 = v3;
      v27 = 2112;
      v28 = v20;
      v29 = 2114;
      v30 = v5;
      _os_log_impl(&dword_1D2CD5000, v10, OS_LOG_TYPE_DEFAULT, "Matched%s%s MFi game controller %@ '%@' %{public}@", &v21, 0x34u);
    }

    v9 = 1;
LABEL_21:

    goto LABEL_22;
  }

  v5 = [[_GCMFiControllerCapabilites alloc] initWithServiceInfo:v3];
  if (v5)
  {
    goto LABEL_4;
  }

LABEL_6:
  v9 = 0;
LABEL_22:

  v15 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (BOOL)physicalDeviceSupportsMotion:(id)a3
{
  v4 = [a3 serviceInfo];
  LOBYTE(a1) = [a1 determineAccelerometerSupportWithServiceInfo:v4];

  return a1;
}

+ (void)physicalDevice:(id)a3 setIndicatedPlayerIndex:(int64_t)a4
{
  v5 = [a3 serviceInfo];
  v6 = [v5 service];

  if (v6)
  {

    GC_IOHIDSetLEDs(v6, a4);
  }
}

+ (id)logicalDevice:(id)a3 makeControllerPhysicalInputProfileWithIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  memset(v10, 0, 512);
  GCExtendedGamepadInitInfoMake(v10);
  [_GCMFiControllerProfile populateInitInfo:v10 forLogicalDevice:v5];
  v7 = [[GCExtendedGamepad alloc] initWithIdentifier:v6 info:v10];
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64(v10 + i);
  }

  return v7;
}

+ (id)logicalDevice:(id)a3 makeControllerMotionWithIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[GCMotion alloc] initWithIdentifier:v6];

  v9 = [v7 underlyingDevice];

  v10 = [v9 serviceInfo];
  -[GCMotion _setHasRotationRate:](v8, "_setHasRotationRate:", [a1 determineGyroSupportWithServiceInfo:v10]);

  [(GCMotion *)v8 _setHasAttitude:0];

  return v8;
}

+ (void)populateInitInfo:(id *)a3 forLogicalDevice:(id)a4
{
  a3->var0[5].var2 = 0;
  a3->var0[6].var2 = 0;
  a3->var0[9].var2 = 0;
  a3->var0[10].var2 = 0;
  a3->var0[11].var1 = 0;
  a3->var0[12].var1 = 0;
  a3->var0[13].var1 = 0;
  a3->var0[14].var1 = 0;
  a3->var0[15].var1 = 0;
  a3->var0[16].var1 = 0;
  a3->var0[17].var1 = 0;
  a3->var0[18].var1 = 0;
  a3->var0[19].var1 = 0;
  a3->var0[20].var1 = 0;
  a3->var0[21].var1 = 0;
  a3->var0[0].var2 = 1;
  v6 = [a4 underlyingDevice];
  v5 = [v6 serviceInfo];
  [_GCMFiControllerProfile determineCapabilitiesWithServiceInfo:v5 initInfo:a3];
}

+ (void)determineCapabilitiesWithServiceInfo:(id)a3 initInfo:(id *)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = [a3 service];
  v5 = IOHIDServiceClientCopyProperty(v4, @"GameControllerPointer");
  if (v5)
  {
    obj = v4;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v6 = CFDictionaryGetValue(v5, @"Elements");
    v7 = [v6 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v41;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v41 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v40 + 1) + 8 * i);
          v12 = [v11 objectForKeyedSubscript:{@"UsagePage", obj}];
          v13 = [v12 intValue];

          v14 = [v11 objectForKeyedSubscript:@"Usage"];
          v15 = [v14 intValue];

          v17 = __73___GCMFiControllerProfile_determineCapabilitiesWithServiceInfo_initInfo___block_invoke(v16, v11);
          v18 = v17;
          if (v13 == 9)
          {
            v19 = &a4->var0[__73___GCMFiControllerProfile_determineCapabilitiesWithServiceInfo_initInfo___block_invoke_2(v17, v15)];
            v19->var2 = v18;
            v19->var1 = 1;
          }

          else if (v13 == 1 && (v15 & 0xFFFFFFFC) == 0x90)
          {
            a4->var0[0].var2 &= v17;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v8);
    }

    v4 = obj;
  }

  v20 = IOHIDServiceClientCopyProperty(v4, @"Keyboard");
  if (v20)
  {
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obja = CFDictionaryGetValue(v20, @"Elements");
    v21 = [obja countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v37;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v37 != v23)
          {
            objc_enumerationMutation(obja);
          }

          v25 = *(*(&v36 + 1) + 8 * j);
          v26 = [v25 objectForKeyedSubscript:@"UsagePage"];
          v27 = [v26 intValue];

          v28 = [v25 objectForKeyedSubscript:@"Usage"];
          v29 = [v28 intValue];

          v31 = __73___GCMFiControllerProfile_determineCapabilitiesWithServiceInfo_initInfo___block_invoke(v30, v25);
          if (v27 == 12)
          {
            if (v29 <= 515)
            {
              if (v29 == 101)
              {
                a4->var2 = 1;
              }

              else if (v29 == 178)
              {
                a4->var1 = 1;
              }
            }

            else
            {
              switch(v29)
              {
                case 516:
                  a4->var0[14].var2 = v31;
                  a4->var0[14].var1 = 1;
                  break;
                case 547:
                  a4->var0[13].var2 = v31;
                  a4->var0[13].var1 = 1;
                  break;
                case 521:
                  a4->var0[15].var2 = v31;
                  a4->var0[15].var1 = 1;
                  break;
              }
            }
          }
        }

        v22 = [obja countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v22);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

+ (BOOL)determineAccelerometerSupportWithServiceInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 propertyForKey:@"Accel" ofClass:objc_opt_class()];

  if (v4)
  {
    v5 = [v4 objectForKey:@"Elements"];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)determineGyroSupportWithServiceInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 propertyForKey:@"Gyro" ofClass:objc_opt_class()];

  if (v4)
  {
    v5 = [v4 objectForKey:@"Elements"];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)physicalDeviceUsesACHomeForMenu:(id)a3
{
  v3 = [a3 serviceInfo];
  v4 = [(GCHIDServiceInfo *)v3 mfiControllerCapabilities];

  if (([(_GCMFiControllerCapabilites *)v4 home]& 1) != 0)
  {
    v5 = [(_GCMFiControllerCapabilites *)v4 menu]^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

+ (BOOL)logicalDevice:(id)a3 getSystemButtonName:(id *)a4 sfSymbolName:(id *)a5 needsMFiCompatibility:(BOOL *)a6
{
  v8 = [a3 underlyingDevice];
  v9 = [v8 serviceInfo];
  v10 = [(GCHIDServiceInfo *)v9 mfiControllerCapabilities];

  v11 = [(_GCMFiControllerCapabilites *)v10 home];
  if (v11)
  {
    *a4 = *MEMORY[0x1E69A0348];
    *a5 = @"house.circle";
  }

  return v11 & 1;
}

+ (id)logicalDevice:(id)a3 makeControllerPhysicalInputProfileDescriptionWithIdentifier:(id)a4 bindings:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 underlyingDevice];
  v11 = [v10 serviceInfo];
  v12 = [(GCHIDServiceInfo *)v11 mfiControllerCapabilities];

  if (([(_GCMFiControllerCapabilites *)v12 isExtendedGamepad]& 1) != 0)
  {
    v13 = 0;
    goto LABEL_53;
  }

  v14 = objc_opt_new();
  if (([(_GCMFiControllerCapabilites *)v12 a]& 1) != 0)
  {
    v15 = [GCDeviceButtonInputDescription alloc];
    v16 = [MEMORY[0x1E695DFD8] set];
    [*MEMORY[0x1E69A0338] key];
    objc_claimAutoreleasedReturnValue();
    v17 = OUTLINED_FUNCTION_8_5();
    [(_GCMFiControllerCapabilites *)v17 a];
    v18 = OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_6_5(v18);
  }

  if (([(_GCMFiControllerCapabilites *)v12 b]& 1) != 0)
  {
    v19 = [GCDeviceButtonInputDescription alloc];
    v20 = [MEMORY[0x1E695DFD8] set];
    [*MEMORY[0x1E69A0340] key];
    objc_claimAutoreleasedReturnValue();
    v21 = OUTLINED_FUNCTION_8_5();
    [(_GCMFiControllerCapabilites *)v21 b];
    v22 = OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_6_5(v22);
  }

  if (([(_GCMFiControllerCapabilites *)v12 x]& 1) != 0)
  {
    v23 = [GCDeviceButtonInputDescription alloc];
    v24 = [MEMORY[0x1E695DFD8] set];
    [*MEMORY[0x1E69A03A8] key];
    objc_claimAutoreleasedReturnValue();
    v25 = OUTLINED_FUNCTION_8_5();
    [(_GCMFiControllerCapabilites *)v25 x];
    v26 = OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_6_5(v26);
  }

  if (([(_GCMFiControllerCapabilites *)v12 y]& 1) != 0)
  {
    v27 = [GCDeviceButtonInputDescription alloc];
    v28 = [MEMORY[0x1E695DFD8] set];
    [*MEMORY[0x1E69A03B0] key];
    objc_claimAutoreleasedReturnValue();
    v29 = OUTLINED_FUNCTION_8_5();
    [(_GCMFiControllerCapabilites *)v29 y];
    v30 = OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_6_5(v30);
  }

  if (([(_GCMFiControllerCapabilites *)v12 l1]& 1) != 0)
  {
    v31 = [GCDeviceButtonInputDescription alloc];
    v32 = [MEMORY[0x1E695DFD8] set];
    [*MEMORY[0x1E69A0480] key];
    objc_claimAutoreleasedReturnValue();
    v33 = OUTLINED_FUNCTION_8_5();
    [(_GCMFiControllerCapabilites *)v33 l1];
    v34 = OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_6_5(v34);
  }

  if (([(_GCMFiControllerCapabilites *)v12 r1]& 1) != 0)
  {
    v35 = [GCDeviceButtonInputDescription alloc];
    v36 = [MEMORY[0x1E695DFD8] set];
    [*MEMORY[0x1E69A0518] key];
    objc_claimAutoreleasedReturnValue();
    v37 = OUTLINED_FUNCTION_8_5();
    [(_GCMFiControllerCapabilites *)v37 r1];
    v38 = OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_6_5(v38);
  }

  if (([(_GCMFiControllerCapabilites *)v12 l2]& 1) != 0)
  {
    v39 = [GCDeviceButtonInputDescription alloc];
    v40 = [MEMORY[0x1E695DFD8] set];
    [*MEMORY[0x1E69A0490] key];
    objc_claimAutoreleasedReturnValue();
    v41 = OUTLINED_FUNCTION_8_5();
    [(_GCMFiControllerCapabilites *)v41 l2];
    v42 = OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_6_5(v42);
  }

  if (([(_GCMFiControllerCapabilites *)v12 r2]& 1) != 0)
  {
    v43 = [GCDeviceButtonInputDescription alloc];
    v44 = [MEMORY[0x1E695DFD8] set];
    [*MEMORY[0x1E69A0528] key];
    objc_claimAutoreleasedReturnValue();
    v45 = OUTLINED_FUNCTION_8_5();
    [(_GCMFiControllerCapabilites *)v45 r2];
    v46 = OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_6_5(v46);
  }

  if (([(_GCMFiControllerCapabilites *)v12 l3]& 1) != 0)
  {
    v47 = [GCDeviceButtonInputDescription alloc];
    v48 = [MEMORY[0x1E695DFD8] set];
    [*MEMORY[0x1E69A0358] key];
    objc_claimAutoreleasedReturnValue();
    v49 = OUTLINED_FUNCTION_8_5();
    [(_GCMFiControllerCapabilites *)v49 l3];
    v50 = OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_6_5(v50);
  }

  if (([(_GCMFiControllerCapabilites *)v12 r3]& 1) != 0)
  {
    v51 = [GCDeviceButtonInputDescription alloc];
    v52 = [MEMORY[0x1E695DFD8] set];
    [*MEMORY[0x1E69A0398] key];
    objc_claimAutoreleasedReturnValue();
    v53 = OUTLINED_FUNCTION_8_5();
    [(_GCMFiControllerCapabilites *)v53 r3];
    v54 = OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_6_5(v54);
  }

  if (([(_GCMFiControllerCapabilites *)v12 l4]& 1) != 0)
  {
    v55 = [GCDeviceButtonInputDescription alloc];
    v56 = [MEMORY[0x1E695DFD8] set];
    [*MEMORY[0x1E69A0350] key];
    objc_claimAutoreleasedReturnValue();
    v57 = OUTLINED_FUNCTION_8_5();
    [(_GCMFiControllerCapabilites *)v57 l4];
    v58 = OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_6_5(v58);
  }

  if (([(_GCMFiControllerCapabilites *)v12 r4]& 1) != 0)
  {
    v59 = [GCDeviceButtonInputDescription alloc];
    v60 = [MEMORY[0x1E695DFD8] set];
    [*MEMORY[0x1E69A0390] key];
    objc_claimAutoreleasedReturnValue();
    v61 = OUTLINED_FUNCTION_8_5();
    [(_GCMFiControllerCapabilites *)v61 r4];
    v62 = OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_6_5(v62);
  }

  if (([(_GCMFiControllerCapabilites *)v12 m1]& 1) != 0)
  {
    v63 = [GCDeviceButtonInputDescription alloc];
    v64 = [MEMORY[0x1E695DFD8] setWithObject:@"Paddle 1"];
    [*MEMORY[0x1E69A0360] key];
    objc_claimAutoreleasedReturnValue();
    v65 = OUTLINED_FUNCTION_8_5();
    [(_GCMFiControllerCapabilites *)v65 m1];
    v66 = OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_6_5(v66);
  }

  if (([(_GCMFiControllerCapabilites *)v12 m2]& 1) != 0)
  {
    v67 = [GCDeviceButtonInputDescription alloc];
    v68 = [MEMORY[0x1E695DFD8] setWithObject:@"Paddle 3"];
    [*MEMORY[0x1E69A0368] key];
    objc_claimAutoreleasedReturnValue();
    v69 = OUTLINED_FUNCTION_8_5();
    [(_GCMFiControllerCapabilites *)v69 m2];
    v70 = OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_6_5(v70);
  }

  if (([(_GCMFiControllerCapabilites *)v12 m3]& 1) != 0)
  {
    v71 = [GCDeviceButtonInputDescription alloc];
    v72 = [MEMORY[0x1E695DFD8] setWithObject:@"Paddle 2"];
    [*MEMORY[0x1E69A0370] key];
    objc_claimAutoreleasedReturnValue();
    v73 = OUTLINED_FUNCTION_8_5();
    [(_GCMFiControllerCapabilites *)v73 m3];
    v74 = OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_6_5(v74);
  }

  if (([(_GCMFiControllerCapabilites *)v12 m4]& 1) != 0)
  {
    v75 = [GCDeviceButtonInputDescription alloc];
    v76 = [MEMORY[0x1E695DFD8] setWithObject:@"Paddle 4"];
    [*MEMORY[0x1E69A0378] key];
    objc_claimAutoreleasedReturnValue();
    v77 = OUTLINED_FUNCTION_8_5();
    [(_GCMFiControllerCapabilites *)v77 m4];
    v78 = OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_6_5(v78);
  }

  if (([(_GCMFiControllerCapabilites *)v12 home]& 1) != 0 && ([(_GCMFiControllerCapabilites *)v12 menu]& 1) != 0)
  {
    v79 = [GCDeviceButtonInputDescription alloc];
    v80 = [MEMORY[0x1E695DFD8] set];
    [*MEMORY[0x1E69A0348] key];
    objc_claimAutoreleasedReturnValue();
    v81 = OUTLINED_FUNCTION_8_5();
    [(_GCMFiControllerCapabilites *)v81 home];
    v82 = [OUTLINED_FUNCTION_3_6() initWithName:22 additionalAliases:? attributes:? nameLocalizationKey:? symbolName:? sourceAttributes:? sourceExtendedEventField:?];
    OUTLINED_FUNCTION_6_5(v82);

LABEL_39:
    v83 = [GCDeviceButtonInputDescription alloc];
    v84 = [MEMORY[0x1E695DFD8] set];
    [*MEMORY[0x1E69A0380] key];
    objc_claimAutoreleasedReturnValue();
    v85 = OUTLINED_FUNCTION_8_5();
    [(_GCMFiControllerCapabilites *)v85 menu];
    v86 = [OUTLINED_FUNCTION_3_6() initWithName:23 additionalAliases:? attributes:? nameLocalizationKey:? symbolName:? sourceAttributes:? sourceExtendedEventField:?];
    OUTLINED_FUNCTION_6_5(v86);

    goto LABEL_40;
  }

  if (([(_GCMFiControllerCapabilites *)v12 home]& 1) != 0)
  {
    goto LABEL_39;
  }

LABEL_40:
  if (([(_GCMFiControllerCapabilites *)v12 options]& 1) != 0)
  {
    v87 = [GCDeviceButtonInputDescription alloc];
    v88 = [MEMORY[0x1E695DFD8] set];
    [*MEMORY[0x1E69A0388] key];
    objc_claimAutoreleasedReturnValue();
    v89 = OUTLINED_FUNCTION_8_5();
    [(_GCMFiControllerCapabilites *)v89 options];
    v90 = [OUTLINED_FUNCTION_3_6() initWithName:24 additionalAliases:? attributes:? nameLocalizationKey:? symbolName:? sourceAttributes:? sourceExtendedEventField:?];
    OUTLINED_FUNCTION_6_5(v90);
  }

  if (([(_GCMFiControllerCapabilites *)v12 record]& 1) != 0)
  {
    v91 = [GCDeviceButtonInputDescription alloc];
    v92 = [MEMORY[0x1E695DFD8] set];
    [*MEMORY[0x1E69A03A0] key];
    objc_claimAutoreleasedReturnValue();
    v93 = OUTLINED_FUNCTION_8_5();
    [(_GCMFiControllerCapabilites *)v93 record];
    v94 = [OUTLINED_FUNCTION_3_6() initWithName:40 additionalAliases:? attributes:? nameLocalizationKey:? symbolName:? sourceAttributes:? sourceExtendedEventField:?];
    OUTLINED_FUNCTION_6_5(v94);
  }

  if (([(_GCMFiControllerCapabilites *)v12 dpad]& 1) != 0)
  {
    v95 = [GCDeviceDirectionPadDescription alloc];
    v96 = [MEMORY[0x1E695DFD8] set];
    [*MEMORY[0x1E69A03B8] key];
    objc_claimAutoreleasedReturnValue();
    v97 = OUTLINED_FUNCTION_8_5();
    [(_GCMFiControllerCapabilites *)v97 dpad];
    v98 = [OUTLINED_FUNCTION_10_5() initWithName:0 additionalAliases:1 attributes:2 nameLocalizationKey:3 symbolName:? sourceAttributes:? sourceUpExtendedEventField:? sourceDownExtendedEventField:? sourceLeftExtendedEventField:? sourceRightExtendedEventField:?];
    OUTLINED_FUNCTION_17_0(v98);
  }

  if (([(_GCMFiControllerCapabilites *)v12 leftThumbstick]& 1) != 0)
  {
    v99 = [GCDeviceDirectionPadDescription alloc];
    v100 = [MEMORY[0x1E695DFD8] set];
    v101 = [*MEMORY[0x1E69A0488] key];
    v102 = [OUTLINED_FUNCTION_10_5() initWithName:10 additionalAliases:11 attributes:12 nameLocalizationKey:13 symbolName:? sourceAttributes:? sourceUpExtendedEventField:? sourceDownExtendedEventField:? sourceLeftExtendedEventField:? sourceRightExtendedEventField:?];
    OUTLINED_FUNCTION_17_0(v102);
  }

  if (([(_GCMFiControllerCapabilites *)v12 rightThumbstick]& 1) != 0)
  {
    v103 = [GCDeviceDirectionPadDescription alloc];
    v104 = [MEMORY[0x1E695DFD8] set];
    v105 = [*MEMORY[0x1E69A0520] key];
    v106 = [OUTLINED_FUNCTION_10_5() initWithName:14 additionalAliases:15 attributes:16 nameLocalizationKey:17 symbolName:? sourceAttributes:? sourceUpExtendedEventField:? sourceDownExtendedEventField:? sourceLeftExtendedEventField:? sourceRightExtendedEventField:?];
    OUTLINED_FUNCTION_17_0(v106);
  }

  v107 = [(_GCMFiControllerCapabilites *)v12 isExtendedGamepad];
  v108 = off_1E84182A8;
  if (!v107)
  {
    v108 = off_1E84182B0;
  }

  v13 = [objc_alloc(*v108) initWithIdentifier:v8 elements:v14 bindings:v9];

LABEL_53:

  return v13;
}

+ (id)logicalDevice:(id)a3 makeControllerInputDescriptionWithIdentifier:(id)a4 bindings:(id)a5
{
  v88[1] = *MEMORY[0x1E69E9840];
  v73 = a5;
  v72 = a4;
  v74 = [a3 underlyingDevice];
  v9 = [v74 serviceInfo];
  v10 = [(GCHIDServiceInfo *)v9 mfiControllerCapabilities];

  v11 = objc_opt_new();
  v12 = [(_GCMFiControllerCapabilites *)v10 home];
  v13 = 0x1E69A0000uLL;
  v14 = 0x1E69A0000uLL;
  v15 = MEMORY[0x1E69A0380];
  if ((v12 & 1) != 0 && ([(_GCMFiControllerCapabilites *)v10 menu]& 1) != 0)
  {
    v5 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.home"];
    [MEMORY[0x1E695DFD8] setWithObject:@"Button Home"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_15() setAliases:?];

    [v5 setLocalizedName:*MEMORY[0x1E69A0348]];
    [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"house.circle"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_15() setSymbol:?];

    v16 = [(_GCMFiControllerCapabilites *)v10 home];
    OUTLINED_FUNCTION_7_4(v16);
    [v5 setEventPressedValueField:22];
    v6 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.menu"];
    v13 = 0x1E69A0000uLL;
    v17 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Menu"];
    [v6 setAliases:v17];

    [v6 setLocalizedName:*v15];
    v18 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"line.horizontal.3.circle"];
    [v6 setSymbol:v18];

    v14 = 0x1E69A0000;
    [v6 setAnalog:(-[_GCMFiControllerCapabilites menu](v10) & 0x100) == 0];
    [v6 setEventPressedValueField:23];
    [v11 addObject:v6];
    OUTLINED_FUNCTION_13_1();
  }

  else
  {
    if (([(_GCMFiControllerCapabilites *)v10 home]& 1) == 0)
    {
      goto LABEL_7;
    }

    v5 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.menu"];
    [MEMORY[0x1E695DFD8] setWithObject:@"Button Menu"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_15() setAliases:?];

    [v5 setLocalizedName:*v15];
    [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"line.horizontal.3.circle"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_15() setSymbol:?];

    v19 = [(_GCMFiControllerCapabilites *)v10 home];
    OUTLINED_FUNCTION_7_4(v19);
    [v5 setEventPressedValueField:22];
    OUTLINED_FUNCTION_13_1();
  }

LABEL_7:
  v20 = 0x1E695D000uLL;
  if (([(_GCMFiControllerCapabilites *)v10 options]& 1) != 0)
  {
    [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.options"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_9_4() setWithObject:@"Button Options"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_15() setAliases:?];

    [v5 setLocalizedName:*MEMORY[0x1E69A0388]];
    [*(v14 + 1728) symbolWithSFSymbolsName:@"ellipsis.circle"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_15() setSymbol:?];

    v21 = [(_GCMFiControllerCapabilites *)v10 options];
    OUTLINED_FUNCTION_7_4(v21);
    [v5 setEventPressedValueField:24];
    OUTLINED_FUNCTION_13_1();
  }

  if (([(_GCMFiControllerCapabilites *)v10 record]& 1) != 0)
  {
    [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.share"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_9_4() setWithObject:@"Button Share"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_15() setAliases:?];

    [v5 setLocalizedName:*MEMORY[0x1E69A03A0]];
    [*(v14 + 1728) symbolWithSFSymbolsName:@"square.and.arrow.up"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_15() setSymbol:?];

    [v5 setEventPressedValueField:40];
    OUTLINED_FUNCTION_13_1();
  }

  if (([(_GCMFiControllerCapabilites *)v10 a]& 1) != 0)
  {
    [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.a"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_9_4() setWithObject:@"Button A"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_15() setAliases:?];

    [v5 setLocalizedName:*MEMORY[0x1E69A0338]];
    [*(v14 + 1728) symbolWithSFSymbolsName:@"a.circle"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_15() setSymbol:?];

    v22 = [(_GCMFiControllerCapabilites *)v10 a];
    OUTLINED_FUNCTION_7_4(v22);
    [v5 setEventPressedValueField:4];
    OUTLINED_FUNCTION_13_1();
  }

  if (([(_GCMFiControllerCapabilites *)v10 b]& 1) != 0)
  {
    [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.b"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_9_4() setWithObject:@"Button B"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_15() setAliases:?];

    [v5 setLocalizedName:*MEMORY[0x1E69A0340]];
    [*(v14 + 1728) symbolWithSFSymbolsName:@"b.circle"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_15() setSymbol:?];

    v23 = [(_GCMFiControllerCapabilites *)v10 b];
    OUTLINED_FUNCTION_7_4(v23);
    [v5 setEventPressedValueField:5];
    OUTLINED_FUNCTION_13_1();
  }

  if (([(_GCMFiControllerCapabilites *)v10 x]& 1) != 0)
  {
    [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.x"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_9_4() setWithObject:@"Button X"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_15() setAliases:?];

    [v5 setLocalizedName:*MEMORY[0x1E69A03A8]];
    [*(v14 + 1728) symbolWithSFSymbolsName:@"x.circle"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_15() setSymbol:?];

    v24 = [(_GCMFiControllerCapabilites *)v10 x];
    OUTLINED_FUNCTION_7_4(v24);
    [v5 setEventPressedValueField:6];
    OUTLINED_FUNCTION_13_1();
  }

  if (([(_GCMFiControllerCapabilites *)v10 y]& 1) != 0)
  {
    [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.y"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_9_4() setWithObject:@"Button Y"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_15() setAliases:?];

    [v5 setLocalizedName:*MEMORY[0x1E69A03B0]];
    [*(v14 + 1728) symbolWithSFSymbolsName:@"y.circle"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_15() setSymbol:?];

    v25 = [(_GCMFiControllerCapabilites *)v10 y];
    OUTLINED_FUNCTION_7_4(v25);
    [v5 setEventPressedValueField:7];
    OUTLINED_FUNCTION_13_1();
  }

  if (([(_GCMFiControllerCapabilites *)v10 l1]& 1) != 0)
  {
    [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.left.shoulder"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_9_4() setWithObject:@"Left Shoulder"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_15() setAliases:?];

    [v5 setLocalizedName:*MEMORY[0x1E69A0480]];
    [*(v14 + 1728) symbolWithSFSymbolsName:@"l1.rectangle.roundedbottom"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_15() setSymbol:?];

    v26 = [(_GCMFiControllerCapabilites *)v10 l1];
    OUTLINED_FUNCTION_7_4(v26);
    [v5 setEventPressedValueField:8];
    OUTLINED_FUNCTION_13_1();
  }

  if (([(_GCMFiControllerCapabilites *)v10 r1]& 1) != 0)
  {
    [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.right.shoulder"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_9_4() setWithObject:@"Right Shoulder"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_15() setAliases:?];

    [v5 setLocalizedName:*MEMORY[0x1E69A0518]];
    [*(v14 + 1728) symbolWithSFSymbolsName:@"r1.rectangle.roundedbottom"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_15() setSymbol:?];

    v27 = [(_GCMFiControllerCapabilites *)v10 r1];
    OUTLINED_FUNCTION_7_4(v27);
    [v5 setEventPressedValueField:9];
    OUTLINED_FUNCTION_13_1();
  }

  if (([(_GCMFiControllerCapabilites *)v10 l2]& 1) != 0)
  {
    [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.left.trigger"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_9_4() setWithObject:@"Left Trigger"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_15() setAliases:?];

    [v5 setLocalizedName:*MEMORY[0x1E69A0490]];
    [*(v14 + 1728) symbolWithSFSymbolsName:@"l2.rectangle.roundedtop"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_15() setSymbol:?];

    v28 = [(_GCMFiControllerCapabilites *)v10 l2];
    OUTLINED_FUNCTION_7_4(v28);
    [v5 setEventPressedValueField:18];
    OUTLINED_FUNCTION_13_1();
  }

  if (([(_GCMFiControllerCapabilites *)v10 r2]& 1) != 0)
  {
    [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.right.trigger"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_9_4() setWithObject:@"Right Trigger"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_15() setAliases:?];

    [v5 setLocalizedName:*MEMORY[0x1E69A0528]];
    [*(v14 + 1728) symbolWithSFSymbolsName:@"r2.rectangle.roundedtop"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_15() setSymbol:?];

    v29 = [(_GCMFiControllerCapabilites *)v10 r2];
    OUTLINED_FUNCTION_7_4(v29);
    [v5 setEventPressedValueField:19];
    OUTLINED_FUNCTION_13_1();
  }

  v30 = 0x1E69A0000uLL;
  if (([(_GCMFiControllerCapabilites *)v10 dpad]& 1) != 0)
  {
    [MEMORY[0x1E69A06A8] descriptionWithIdentifier:@"dpad"];
    objc_claimAutoreleasedReturnValue();
    v31 = [OUTLINED_FUNCTION_9_4() setWithObject:@"Direction Pad"];
    [v5 setAliases:v31];

    v14 = 0x1E69A0000uLL;
    [v5 setLocalizedName:*MEMORY[0x1E69A03B8]];
    [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"dpad"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_15() setSymbol:?];

    v32 = [(_GCMFiControllerCapabilites *)v10 dpad];
    OUTLINED_FUNCTION_7_4(v32);
    [v5 setEventUpValueField:0];
    [v5 setEventDownValueField:1];
    [v5 setEventLeftValueField:2];
    [v5 setEventRightValueField:3];
    OUTLINED_FUNCTION_13_1();
  }

  v33 = 0x1E69A0000uLL;
  if (([(_GCMFiControllerCapabilites *)v10 leftThumbstick]& 1) != 0)
  {
    if (([(_GCMFiControllerCapabilites *)v10 l3]& 1) != 0)
    {
      [MEMORY[0x1E69A06A0] descriptionWithIdentifier:@"stick.left"];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_9_4() setWithObjects:{@"Left Thumbstick", @"Left Thumbstick Button", 0}];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_11_4() setAliases:0x1E69A0000uLL];

      [0x1E69A0000 setLocalizedName:*MEMORY[0x1E69A0488]];
      [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l.joystick"];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_11_4() setSymbol:0x1E69A0000uLL];

      OUTLINED_FUNCTION_19_0();
      [0x1E69A0000 setEventUpValueField:10];
      [0x1E69A0000 setEventDownValueField:11];
      [0x1E69A0000 setEventLeftValueField:12];
      [0x1E69A0000 setEventRightValueField:13];
      [0x1E69A0000 setEventPressedValueField:20];
      v34 = MEMORY[0x1E69A06B8];
      [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
      objc_claimAutoreleasedReturnValue();
      v35 = [OUTLINED_FUNCTION_11_4() localizedName];
      v36 = [0x1E69A0000 symbol];
      v37 = [v34 sourceWithElementAliases:0x1E69A0000uLL localizedName:v35 symbol:v36 direction:10];
      v88[0] = v37;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:1];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_15_1() setXSources:?];

      [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_11_4() localizedName];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_12_4() symbol];
      objc_claimAutoreleasedReturnValue();
      v38 = [OUTLINED_FUNCTION_0_22() sourceWithElementAliases:? localizedName:? symbol:? direction:?];
      v87 = v38;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v87 count:1];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_5_7() setYSources:?];

      [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_11_4() localizedName];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_12_4() symbol];
      objc_claimAutoreleasedReturnValue();
      v39 = [OUTLINED_FUNCTION_0_22() sourceWithElementAliases:? localizedName:? symbol:? direction:?];
      v86 = v39;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v86 count:1];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_5_7() setUpSources:?];

      [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_11_4() localizedName];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_12_4() symbol];
      objc_claimAutoreleasedReturnValue();
      v40 = [OUTLINED_FUNCTION_0_22() sourceWithElementAliases:? localizedName:? symbol:? direction:?];
      v85 = v40;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v85 count:1];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_5_7() setRightSources:?];

      [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_11_4() localizedName];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_12_4() symbol];
      objc_claimAutoreleasedReturnValue();
      v41 = [OUTLINED_FUNCTION_0_22() sourceWithElementAliases:? localizedName:? symbol:? direction:?];
      v84 = v41;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_5_7() setDownSources:?];

      v13 = 0x1E69A0000uLL;
      v42 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
      [0x1E69A0000 localizedName];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_12_4() symbol];
      objc_claimAutoreleasedReturnValue();
      v43 = [OUTLINED_FUNCTION_14_1() sourceWithElementAliases:? localizedName:? symbol:? direction:?];
      v83 = v43;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_11_4() setLeftSources:0x1E69A0000uLL];

      v14 = 0x1E69A0000uLL;
      v44 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick Button"];
      v45 = *MEMORY[0x1E69A0358];
      [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l.joystick.press.down"];
      objc_claimAutoreleasedReturnValue();
      v15 = [OUTLINED_FUNCTION_16_0() sourceWithElementAliases:? localizedName:? symbol:?];
      v82 = v15;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_15_1() setPressedSources:?];

      v30 = 0x1E69A0000;
      v33 = 0x1E69A0000;

      v20 = 0x1E695D000;
    }

    else
    {
      [MEMORY[0x1E69A06A8] descriptionWithIdentifier:@"stick.left"];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_9_4() setWithObjects:{@"Left Thumbstick", @"Left Thumbstick Button", 0}];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_4_7() setAliases:?];

      [0x1E69A0000 setLocalizedName:*MEMORY[0x1E69A0488]];
      [*(v14 + 1728) symbolWithSFSymbolsName:@"l.joystick"];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_4_7() setSymbol:?];

      OUTLINED_FUNCTION_19_0();
      [0x1E69A0000 setEventUpValueField:10];
      [0x1E69A0000 setEventDownValueField:11];
      [0x1E69A0000 setEventLeftValueField:12];
      [0x1E69A0000 setEventRightValueField:13];
    }

    OUTLINED_FUNCTION_13_1();
  }

  if (([(_GCMFiControllerCapabilites *)v10 rightThumbstick]& 1) != 0)
  {
    if (([(_GCMFiControllerCapabilites *)v10 r3]& 1) != 0)
    {
      [MEMORY[0x1E69A06A0] descriptionWithIdentifier:@"stick.right"];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_9_4() setWithObjects:{@"Right Thumbstick", @"Right Thumbstick Button", 0}];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_4_7() setAliases:?];

      [0x1E69A0000 setLocalizedName:*MEMORY[0x1E69A0520]];
      [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r.joystick"];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_4_7() setSymbol:?];

      OUTLINED_FUNCTION_19_0();
      [0x1E69A0000 setEventUpValueField:14];
      [0x1E69A0000 setEventDownValueField:15];
      [0x1E69A0000 setEventLeftValueField:16];
      [0x1E69A0000 setEventRightValueField:17];
      [0x1E69A0000 setEventPressedValueField:21];
      v46 = *(v33 + 1720);
      [*(v20 + 4056) setWithObject:@"Right Thumbstick"];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_11_4() localizedName];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_12_4() symbol];
      objc_claimAutoreleasedReturnValue();
      v47 = [OUTLINED_FUNCTION_0_22() sourceWithElementAliases:? localizedName:? symbol:? direction:?];
      v81 = v47;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_5_7() setXSources:?];

      v48 = *(v33 + 1720);
      [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_11_4() localizedName];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_12_4() symbol];
      objc_claimAutoreleasedReturnValue();
      v49 = [OUTLINED_FUNCTION_0_22() sourceWithElementAliases:? localizedName:? symbol:? direction:?];
      v80 = v49;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_5_7() setYSources:?];

      v50 = *(v33 + 1720);
      [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_11_4() localizedName];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_12_4() symbol];
      objc_claimAutoreleasedReturnValue();
      v51 = [OUTLINED_FUNCTION_0_22() sourceWithElementAliases:? localizedName:? symbol:? direction:?];
      v79 = v51;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v79 count:1];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_5_7() setUpSources:?];

      v52 = *(v33 + 1720);
      [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_11_4() localizedName];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_12_4() symbol];
      objc_claimAutoreleasedReturnValue();
      v53 = [OUTLINED_FUNCTION_0_22() sourceWithElementAliases:? localizedName:? symbol:? direction:?];
      v78 = v53;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_5_7() setRightSources:?];

      v54 = *(v33 + 1720);
      [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_11_4() localizedName];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_12_4() symbol];
      objc_claimAutoreleasedReturnValue();
      v55 = [OUTLINED_FUNCTION_0_22() sourceWithElementAliases:? localizedName:? symbol:? direction:?];
      v77 = v55;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_5_7() setDownSources:?];

      v13 = 0x1E69A0000;
      v56 = *(v33 + 1720);
      v57 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
      [0x1E69A0000 localizedName];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_12_4() symbol];
      objc_claimAutoreleasedReturnValue();
      v58 = [OUTLINED_FUNCTION_14_1() sourceWithElementAliases:? localizedName:? symbol:? direction:?];
      v76 = v58;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_11_4() setLeftSources:v30];

      v14 = 0x1E69A0000uLL;
      v59 = *(v33 + 1720);
      v60 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick Button"];
      v61 = *MEMORY[0x1E69A0398];
      [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r.joystick.press.down"];
      objc_claimAutoreleasedReturnValue();
      v15 = [OUTLINED_FUNCTION_16_0() sourceWithElementAliases:? localizedName:? symbol:?];
      v75 = v15;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_15_1() setPressedSources:?];
    }

    else
    {
      [*(v30 + 1704) descriptionWithIdentifier:@"stick.right"];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_9_4() setWithObjects:{@"Right Thumbstick", @"Right Thumbstick Button", 0}];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_4_7() setAliases:?];

      [0x1E69A0000 setLocalizedName:*MEMORY[0x1E69A0520]];
      [*(v14 + 1728) symbolWithSFSymbolsName:@"r.joystick"];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_4_7() setSymbol:?];

      OUTLINED_FUNCTION_19_0();
      [0x1E69A0000 setEventUpValueField:14];
      [0x1E69A0000 setEventDownValueField:15];
      [0x1E69A0000 setEventLeftValueField:16];
      [0x1E69A0000 setEventRightValueField:17];
    }

    OUTLINED_FUNCTION_13_1();
  }

  if (([(_GCMFiControllerCapabilites *)v10 l4]& 1) != 0)
  {
    [*(v13 + 1680) descriptionWithIdentifier:@"button.left.bumper"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_9_4() setWithObject:@"Left Bumper"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_4_7() setAliases:?];

    [0x1E69A0000 setLocalizedName:*MEMORY[0x1E69A0350]];
    [*(v14 + 1728) symbolWithSFSymbolsName:@"l4.button.horizontal"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_4_7() setSymbol:?];

    v62 = [(_GCMFiControllerCapabilites *)v10 l4];
    OUTLINED_FUNCTION_7_4(v62);
    [0x1E69A0000 setEventPressedValueField:41];
    OUTLINED_FUNCTION_13_1();
  }

  if (([(_GCMFiControllerCapabilites *)v10 r4]& 1) != 0)
  {
    [*(v13 + 1680) descriptionWithIdentifier:@"button.right.bumper"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_9_4() setWithObject:@"Right Bumper"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_4_7() setAliases:?];

    [0x1E69A0000 setLocalizedName:*MEMORY[0x1E69A0390]];
    [*(v14 + 1728) symbolWithSFSymbolsName:@"r4.button.horizontal"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_4_7() setSymbol:?];

    v63 = [(_GCMFiControllerCapabilites *)v10 r4];
    OUTLINED_FUNCTION_7_4(v63);
    [0x1E69A0000 setEventPressedValueField:42];
    OUTLINED_FUNCTION_13_1();
  }

  if (([(_GCMFiControllerCapabilites *)v10 m1]& 1) != 0)
  {
    [*(v13 + 1680) descriptionWithIdentifier:@"button.right.bottom.primary"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_9_4() setWithObject:@"Back Right Button 0"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_4_7() setAliases:?];

    [0x1E69A0000 setLocalizedName:*MEMORY[0x1E69A0360]];
    [*(v14 + 1728) symbolWithSFSymbolsName:@"m1.button.horizontal"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_4_7() setSymbol:?];

    v64 = [(_GCMFiControllerCapabilites *)v10 m1];
    OUTLINED_FUNCTION_7_4(v64);
    [0x1E69A0000 setEventPressedValueField:45];
    OUTLINED_FUNCTION_13_1();
  }

  if (([(_GCMFiControllerCapabilites *)v10 m2]& 1) != 0)
  {
    [*(v13 + 1680) descriptionWithIdentifier:@"button.left.bottom.primary"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_9_4() setWithObject:@"Back Left Button 0"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_4_7() setAliases:?];

    [0x1E69A0000 setLocalizedName:*MEMORY[0x1E69A0368]];
    [*(v14 + 1728) symbolWithSFSymbolsName:@"m2.button.horizontal"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_4_7() setSymbol:?];

    v65 = [(_GCMFiControllerCapabilites *)v10 m2];
    OUTLINED_FUNCTION_7_4(v65);
    [0x1E69A0000 setEventPressedValueField:43];
    OUTLINED_FUNCTION_13_1();
  }

  if (([(_GCMFiControllerCapabilites *)v10 m3]& 1) != 0)
  {
    [*(v13 + 1680) descriptionWithIdentifier:@"button.right.bottom.secondary"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_9_4() setWithObject:@"Back Right Button 1"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_4_7() setAliases:?];

    [0x1E69A0000 setLocalizedName:*MEMORY[0x1E69A0370]];
    [*(v14 + 1728) symbolWithSFSymbolsName:@"m3.button.horizontal"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_4_7() setSymbol:?];

    v66 = [(_GCMFiControllerCapabilites *)v10 m3];
    OUTLINED_FUNCTION_7_4(v66);
    [0x1E69A0000 setEventPressedValueField:46];
    OUTLINED_FUNCTION_13_1();
  }

  if (([(_GCMFiControllerCapabilites *)v10 m4]& 1) != 0)
  {
    [*(v13 + 1680) descriptionWithIdentifier:@"button.left.bottom.secondary"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_9_4() setWithObject:@"Back Left Button 1"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_4_7() setAliases:?];

    [0x1E69A0000 setLocalizedName:*MEMORY[0x1E69A0378]];
    [*(v14 + 1728) symbolWithSFSymbolsName:@"m4.button.horizontal"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_4_7() setSymbol:?];

    v67 = [(_GCMFiControllerCapabilites *)v10 m4];
    OUTLINED_FUNCTION_7_4(v67);
    [0x1E69A0000 setEventPressedValueField:44];
    OUTLINED_FUNCTION_13_1();
  }

  v68 = objc_opt_new();
  [v68 setElements:v11];
  v69 = [[_GCControllerInputComponentDescription alloc] initWithIdentifier:v72 controllerInputs:v68 bindings:v73];

  v70 = *MEMORY[0x1E69E9840];

  return v69;
}

+ (void)match:(void *)a1 .cold.1(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = getGCLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v11 = a1;
    if (!a1)
    {
      v11 = [a2 registryID];
    }

    OUTLINED_FUNCTION_0_14(&dword_1D2CD5000, v5, v6, "Service is NOT MFi authenticated: %@", v7, v8, v9, v10, 2u);
    if (!a1)
    {
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (void)match:(void *)a1 .cold.2(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = getGCLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v11 = a1;
    if (!a1)
    {
      v11 = [a2 registryID];
    }

    OUTLINED_FUNCTION_0_14(&dword_1D2CD5000, v5, v6, "Service MFi authenticated bypassed for: %@", v7, v8, v9, v10, 2u);
    if (!a1)
    {
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end