@interface _GCSonyPSVR2SenseControllerProfile
+ (BOOL)device:(id)device fuseWithDevice:(id *)withDevice forClient:(id)client;
+ (BOOL)logicalDevice:(id)device getSystemButtonName:(id *)name sfSymbolName:(id *)symbolName needsMFiCompatibility:(BOOL *)compatibility;
+ (BOOL)logicalDevice:(id)device shouldMakeControllerForClient:(id)client;
+ (_GCPhysicalDeviceManager)deviceManager;
+ (id)logicalDevice:(id)device makeControllerInputDescriptionWithIdentifier:(id)identifier bindings:(id)bindings forClient:(id)client;
+ (id)logicalDevice:(id)device makeControllerMotionWithIdentifier:(id)identifier;
+ (id)logicalDevice:(id)device makeControllerPhysicalInputProfileDescriptionWithIdentifier:(id)identifier bindings:(id)bindings forClient:(id)client;
+ (id)logicalDevice:(id)device makeControllerSpatialDescriptionWithIdentifier:(id)identifier forClient:(id)client;
+ (id)logicalDeviceControllerProductCategory:(id)category forClient:(id)client;
+ (id)logicalDeviceControllerVendorName:(id)name forClient:(id)client;
+ (id)physicalDeviceGetHapticCapabilities:(id)capabilities;
+ (id)physicalDeviceGetHapticCapabilityGraph:(id)graph;
+ (void)deviceManager:(id)manager willPublishPhysicalDevice:(id)device;
+ (void)physicalDevice:(id)device getBatteryWithReply:(id)reply;
+ (void)physicalDevice:(id)device getSensorsEnabledWithReply:(id)reply;
@end

@implementation _GCSonyPSVR2SenseControllerProfile

+ (_GCPhysicalDeviceManager)deviceManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51___GCSonyPSVR2SenseControllerProfile_deviceManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (deviceManager_onceToken != -1)
  {
    dispatch_once(&deviceManager_onceToken, block);
  }

  v2 = deviceManager_deviceManager;

  return v2;
}

+ (void)deviceManager:(id)manager willPublishPhysicalDevice:(id)device
{
  [device setDelegate:self];
  v4 = GCLookupService();
  [v4 setHasPairedSpatialController:1];
}

+ (void)physicalDevice:(id)device getSensorsEnabledWithReply:(id)reply
{
  replyCopy = reply;
  motionServiceServer = [device motionServiceServer];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80___GCSonyPSVR2SenseControllerProfile_physicalDevice_getSensorsEnabledWithReply___block_invoke;
  v8[3] = &unk_1E8419550;
  v9 = replyCopy;
  v7 = replyCopy;
  [motionServiceServer readSensorsActiveWithReply:v8];
}

+ (BOOL)device:(id)device fuseWithDevice:(id *)withDevice forClient:(id)client
{
  v34 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  configuration = [client configuration];
  if (([configuration spatialGamepadSupported] & 1) == 0)
  {
    v10 = [deviceCopy propertyForKey:@"PSVR2DeviceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uTF8String = [v10 UTF8String];
      if (uTF8String)
      {
        v12 = uTF8String;
        if (strcmp(uTF8String, "Unknown"))
        {
          if (!strcmp(v12, "Sense Left"))
          {
            *withDevice = 0;
            v9 = 1;
            goto LABEL_9;
          }

          if (!strcmp(v12, "Sense Right"))
          {
            v15 = +[_GCControllerManagerServer sharedInstance];
            v29 = 0u;
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            physicalDevices = [v15 physicalDevices];
            allValues = [physicalDevices allValues];

            v18 = [allValues countByEnumeratingWithState:&v29 objects:v33 count:16];
            if (v18)
            {
              v19 = v18;
              withDeviceCopy = withDevice;
              v28 = v15;
              v20 = *v30;
              while (2)
              {
                for (i = 0; i != v19; ++i)
                {
                  if (*v30 != v20)
                  {
                    objc_enumerationMutation(allValues);
                  }

                  v22 = *(*(&v29 + 1) + 8 * i);
                  v23 = [v22 propertyForKey:@"PSVR2DeviceType"];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    uTF8String2 = [v23 UTF8String];
                    if (uTF8String2)
                    {
                      v25 = uTF8String2;
                      if (strcmp(uTF8String2, "Unknown"))
                      {
                        if (!strcmp(v25, "Sense Left"))
                        {
                          v26 = v22;
                          *withDeviceCopy = v22;

                          v9 = 1;
                          goto LABEL_25;
                        }
                      }
                    }
                  }
                }

                v19 = [allValues countByEnumeratingWithState:&v29 objects:v33 count:16];
                if (v19)
                {
                  continue;
                }

                break;
              }

              v9 = 0;
LABEL_25:
              v15 = v28;
            }

            else
            {
              v9 = 0;
            }

            goto LABEL_9;
          }
        }
      }
    }

    v9 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v9 = 0;
LABEL_10:

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (BOOL)logicalDevice:(id)device shouldMakeControllerForClient:(id)client
{
  v6 = 0;
  v4 = [self device:device fuseWithDevice:&v6 forClient:client] ^ 1;
  if (v6)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

+ (id)logicalDeviceControllerProductCategory:(id)category forClient:(id)client
{
  categoryCopy = category;
  clientCopy = client;
  v16 = 0;
  if ([self device:categoryCopy fuseWithDevice:&v16 forClient:clientCopy] && v16)
  {
    v8 = @"MFi";
    goto LABEL_14;
  }

  configuration = [clientCopy configuration];
  v10 = configuration;
  if (!configuration || ![configuration spatialGamepadProductCategoryIncludesChirality])
  {
    goto LABEL_12;
  }

  v11 = [categoryCopy propertyForKey:@"PSVR2DeviceType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uTF8String = [v11 UTF8String];
    if (uTF8String)
    {
      v13 = uTF8String;
      if (strcmp(uTF8String, "Unknown"))
      {
        if (!strcmp(v13, "Sense Left"))
        {
          v15 = GCProductCategoryLeftSpatialController;
        }

        else
        {
          if (strcmp(v13, "Sense Right"))
          {
            goto LABEL_11;
          }

          v15 = GCProductCategoryRightSpatialController;
        }

        v8 = *v15;

        goto LABEL_13;
      }
    }
  }

LABEL_11:

LABEL_12:
  v8 = [self logicalDeviceControllerProductCategory:categoryCopy];
LABEL_13:

LABEL_14:

  return v8;
}

+ (id)logicalDeviceControllerVendorName:(id)name forClient:(id)client
{
  nameCopy = name;
  v10 = 0;
  if ([self device:nameCopy fuseWithDevice:&v10 forClient:client] && v10)
  {
    v7 = @"PlayStation VR2 Sense Controllers (L/R)";
  }

  else
  {
    underlyingDevice = [nameCopy underlyingDevice];
    v7 = [underlyingDevice propertyForKey:@"Product"];
  }

  return v7;
}

+ (BOOL)logicalDevice:(id)device getSystemButtonName:(id *)name sfSymbolName:(id *)symbolName needsMFiCompatibility:(BOOL *)compatibility
{
  *name = *MEMORY[0x1E69A0400];
  *symbolName = @"logo.playstation";
  return 1;
}

+ (id)logicalDevice:(id)device makeControllerPhysicalInputProfileDescriptionWithIdentifier:(id)identifier bindings:(id)bindings forClient:(id)client
{
  v124[1] = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  identifierCopy = identifier;
  bindingsCopy = bindings;
  clientCopy = client;
  v119 = 0;
  LODWORD(bindings) = [self device:deviceCopy fuseWithDevice:&v119 forClient:clientCopy];
  v116 = v119;
  bindingsCopy2 = bindings;
  v113 = deviceCopy;
  v105 = clientCopy;
  v106 = identifierCopy;
  if (bindings)
  {
    spatialGamepadProductCategoryIncludesChirality = 1;
  }

  else
  {
    configuration = [clientCopy configuration];
    spatialGamepadProductCategoryIncludesChirality = [configuration spatialGamepadProductCategoryIncludesChirality];
  }

  v15 = [GCDeviceButtonInputDescription alloc];
  v16 = [*MEMORY[0x1E69A03F0] key];
  v110 = [(GCDeviceButtonInputDescription *)v15 initWithName:@"Button A" additionalAliases:0 attributes:2 nameLocalizationKey:v16 symbolName:@"xmark.circle" sourceAttributes:1 sourceExtendedEventField:4];

  v17 = [GCDeviceButtonInputDescription alloc];
  v18 = [*MEMORY[0x1E69A03F8] key];
  v114 = [(GCDeviceButtonInputDescription *)v17 initWithName:@"Button B" additionalAliases:0 attributes:2 nameLocalizationKey:v18 symbolName:@"circle.circle" sourceAttributes:1 sourceExtendedEventField:5];

  v19 = [GCDeviceButtonInputDescription alloc];
  v20 = [*MEMORY[0x1E69A0428] key];
  v21 = (spatialGamepadProductCategoryIncludesChirality & 1) == 0;
  if (spatialGamepadProductCategoryIncludesChirality)
  {
    v22 = @"Button X";
  }

  else
  {
    v22 = @"Button A";
  }

  if (spatialGamepadProductCategoryIncludesChirality)
  {
    v23 = @"Button Y";
  }

  else
  {
    v23 = @"Button B";
  }

  if (spatialGamepadProductCategoryIncludesChirality)
  {
    v24 = @"Left Shoulder";
  }

  else
  {
    v24 = @"Grip";
  }

  if (spatialGamepadProductCategoryIncludesChirality)
  {
    v25 = @"Right Shoulder";
  }

  else
  {
    v25 = @"Grip";
  }

  if (spatialGamepadProductCategoryIncludesChirality)
  {
    v26 = @"Left Trigger";
  }

  else
  {
    v26 = @"Trigger";
  }

  if (spatialGamepadProductCategoryIncludesChirality)
  {
    v27 = @"Right Trigger";
  }

  else
  {
    v27 = @"Trigger";
  }

  if (v21)
  {
    v28 = @"Thumbstick";
  }

  else
  {
    v28 = @"Left Thumbstick";
  }

  if (v21)
  {
    v29 = @"Thumbstick Button";
  }

  else
  {
    v29 = @"Left Thumbstick Button";
  }

  v30 = @"Right Thumbstick";
  if (v21)
  {
    v30 = @"Thumbstick";
  }

  v97 = v30;
  v31 = @"Right Thumbstick Button";
  if (v21)
  {
    v31 = @"Thumbstick Button";
  }

  v107 = v31;
  v112 = [(GCDeviceButtonInputDescription *)v19 initWithName:v22 additionalAliases:0 attributes:2 nameLocalizationKey:v20 symbolName:@"square.circle" sourceAttributes:1 sourceExtendedEventField:6];

  v32 = [GCDeviceButtonInputDescription alloc];
  v33 = [*MEMORY[0x1E69A0430] key];
  v109 = [(GCDeviceButtonInputDescription *)v32 initWithName:v23 additionalAliases:0 attributes:2 nameLocalizationKey:v33 symbolName:@"triangle.circle" sourceAttributes:1 sourceExtendedEventField:7];

  v34 = [GCDeviceButtonInputDescription alloc];
  v35 = [*MEMORY[0x1E69A0440] key];
  v36 = [(GCDeviceButtonInputDescription *)v34 initWithName:v24 additionalAliases:0 attributes:2 nameLocalizationKey:v35 symbolName:@"l1.rectangle.roundedbottom" sourceAttributes:1 sourceExtendedEventField:8];

  v37 = [GCDeviceButtonInputDescription alloc];
  v38 = [*MEMORY[0x1E69A0458] key];
  v104 = [(GCDeviceButtonInputDescription *)v37 initWithName:v25 additionalAliases:0 attributes:2 nameLocalizationKey:v38 symbolName:@"r1.rectangle.roundedbottom" sourceAttributes:1 sourceExtendedEventField:9];

  v39 = [GCDeviceButtonInputDescription alloc];
  v40 = [*MEMORY[0x1E69A0450] key];
  v111 = [(GCDeviceButtonInputDescription *)v39 initWithName:v26 additionalAliases:0 attributes:2 nameLocalizationKey:v40 symbolName:@"l2.rectangle.roundedtop" sourceAttributes:0 sourceExtendedEventField:18];

  v41 = [GCDeviceButtonInputDescription alloc];
  v42 = [*MEMORY[0x1E69A0468] key];
  v43 = [(GCDeviceButtonInputDescription *)v41 initWithName:v27 additionalAliases:0 attributes:2 nameLocalizationKey:v42 symbolName:@"r2.rectangle.roundedtop" sourceAttributes:0 sourceExtendedEventField:19];

  v100 = [[GCDeviceDirectionPadDescription alloc] initWithName:@"Direction Pad" additionalAliases:0 attributes:2 nameLocalizationKey:@"DIRECTION_PAD" symbolName:@"dpad" sourceAttributes:1 sourceUpExtendedEventField:0 sourceDownExtendedEventField:1 sourceLeftExtendedEventField:2 sourceRightExtendedEventField:3];
  v44 = [GCDeviceDirectionPadDescription alloc];
  v45 = [*MEMORY[0x1E69A0448] key];
  v99 = [(GCDeviceDirectionPadDescription *)v44 initWithName:v28 additionalAliases:0 attributes:2 nameLocalizationKey:v45 symbolName:@"l.joystick" sourceAttributes:0 sourceUpExtendedEventField:10 sourceDownExtendedEventField:11 sourceLeftExtendedEventField:12 sourceRightExtendedEventField:13];

  v46 = [GCDeviceButtonInputDescription alloc];
  v47 = [*MEMORY[0x1E69A0408] key];
  v103 = [(GCDeviceButtonInputDescription *)v46 initWithName:v29 additionalAliases:0 attributes:2 nameLocalizationKey:v47 symbolName:@"l.joystick.press.down" sourceAttributes:0 sourceExtendedEventField:20];

  v48 = [GCDeviceDirectionPadDescription alloc];
  v49 = [*MEMORY[0x1E69A0460] key];
  v50 = [(GCDeviceDirectionPadDescription *)v48 initWithName:v97 additionalAliases:0 attributes:2 nameLocalizationKey:v49 symbolName:@"r.joystick" sourceAttributes:0 sourceUpExtendedEventField:14 sourceDownExtendedEventField:15 sourceLeftExtendedEventField:16 sourceRightExtendedEventField:17];

  v51 = [GCDeviceButtonInputDescription alloc];
  v52 = [*MEMORY[0x1E69A0420] key];
  v53 = [(GCDeviceButtonInputDescription *)v51 initWithName:v107 additionalAliases:0 attributes:2 nameLocalizationKey:v52 symbolName:@"r.joystick.press.down" sourceAttributes:0 sourceExtendedEventField:21];

  v54 = [GCDeviceButtonInputDescription alloc];
  v55 = [*MEMORY[0x1E69A0470] key];
  v56 = [(GCDeviceButtonInputDescription *)v54 initWithName:@"Button Menu" additionalAliases:0 attributes:0x4000 nameLocalizationKey:v55 symbolName:@"capsule.portrait" sourceAttributes:1 sourceExtendedEventField:23];

  if (v116)
  {
    v57 = bindingsCopy2;
  }

  else
  {
    v57 = 0;
  }

  v115 = v36;
  v108 = v53;
  v96 = v43;
  v98 = v50;
  v95 = v56;
  if (v57 == 1)
  {
    firstObject = [bindingsCopy firstObject];
    gamepadEventSource = [v116 gamepadEventSource];
    v58 = [[_GCGamepadEventFusionConfig alloc] initWithSourceCount:2];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:6 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:7 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:10 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:11 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:12 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:13 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:8 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:18 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:20 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:4 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:5 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:14 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:15 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:16 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:17 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:9 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:19 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:21 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:22 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:23 forSourceAtIndex:0];
    v59 = [_GCGamepadEventFusionDescription alloc];
    v123[0] = firstObject;
    v123[1] = gamepadEventSource;
    v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v123 count:2];
    v61 = v43;
    v62 = v53;
    v63 = v61;
    v64 = v60;
    v65 = [(_GCGamepadEventFusionDescription *)v59 initWithConfiguration:v58 sources:v60];
    v124[0] = v65;
    v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:1];

    v118 = [_GCDeviceExtendedGamepadComponentDescription alloc];
    v122[0] = v56;
    v122[1] = v112;
    v122[2] = v109;
    v122[3] = v110;
    v122[4] = v114;
    v122[5] = v36;
    v66 = v104;
    v122[6] = v111;
    v122[7] = v104;
    v67 = v99;
    v68 = v100;
    v122[8] = v63;
    v122[9] = v99;
    v122[10] = v103;
    v122[11] = v50;
    v122[12] = v62;
    v122[13] = v100;
    v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:v122 count:14];
    v102 = [(_GCDevicePhysicalInputComponentDescription *)v118 initWithIdentifier:v106 elements:v69 bindings:v92];

    v70 = v116;
    v71 = firstObject;
    bindingsCopy = v92;
    v72 = v103;
    v73 = v106;
    v74 = v109;
    v76 = v111;
    v75 = v112;
    v77 = v110;
    goto LABEL_47;
  }

  v75 = v112;
  v78 = [v113 propertyForKey:@"PSVR2DeviceType"];
  objc_opt_class();
  v79 = v78;
  v73 = v106;
  v77 = v110;
  v67 = v99;
  v68 = v100;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_44;
  }

  uTF8String = [v78 UTF8String];
  if (!uTF8String)
  {
    goto LABEL_44;
  }

  v81 = uTF8String;
  if (!strcmp(uTF8String, "Unknown"))
  {
    goto LABEL_44;
  }

  if (!strcmp(v81, "Sense Left"))
  {
    v85 = [_GCDevicePhysicalInputComponentDescription alloc];
    v121[0] = v56;
    v121[1] = v112;
    v121[2] = v109;
    v121[3] = v115;
    v121[4] = v111;
    v121[5] = v99;
    v121[6] = v103;
    v86 = [MEMORY[0x1E695DEC8] arrayWithObjects:v121 count:7];
    v87 = v85;
    v76 = v111;
    v72 = v103;
    v102 = [(_GCDevicePhysicalInputComponentDescription *)v87 initWithIdentifier:v106 elements:v86 bindings:bindingsCopy];

    v67 = v99;
    v74 = v109;
    v77 = v110;
    v66 = v104;
    goto LABEL_46;
  }

  if (!strcmp(v81, "Sense Right"))
  {
    v88 = [_GCDevicePhysicalInputComponentDescription alloc];
    v89 = v50;
    v90 = v88;
    v120[0] = v56;
    v120[1] = v110;
    v66 = v104;
    v120[2] = v114;
    v120[3] = v104;
    v120[4] = v43;
    v120[5] = v89;
    v120[6] = v108;
    v91 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:7];
    v76 = v111;
    v102 = [(_GCDevicePhysicalInputComponentDescription *)v90 initWithIdentifier:v106 elements:v91 bindings:bindingsCopy];

    v67 = v99;
    v74 = v109;
    v77 = v110;
  }

  else
  {
LABEL_44:
    v82 = [_GCDevicePhysicalInputComponentDescription alloc];
    v76 = v111;
    v102 = [(_GCDevicePhysicalInputComponentDescription *)v82 initWithIdentifier:v106 elements:MEMORY[0x1E695E0F0] bindings:bindingsCopy];
    v74 = v109;
    v66 = v104;
  }

  v72 = v103;
LABEL_46:
  v71 = v79;
  v70 = v116;
LABEL_47:

  v83 = *MEMORY[0x1E69E9840];

  return v102;
}

+ (id)logicalDevice:(id)device makeControllerInputDescriptionWithIdentifier:(id)identifier bindings:(id)bindings forClient:(id)client
{
  v220[1] = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  bindingsCopy = bindings;
  clientCopy = client;
  v199 = 0;
  identifierCopy = identifier;
  v181 = [self device:deviceCopy fuseWithDevice:&v199 forClient:clientCopy];
  v186 = clientCopy;
  v187 = deviceCopy;
  v185 = v199;
  if (v181)
  {
    spatialGamepadProductCategoryIncludesChirality = 1;
  }

  else
  {
    configuration = [clientCopy configuration];
    spatialGamepadProductCategoryIncludesChirality = [configuration spatialGamepadProductCategoryIncludesChirality];
  }

  v14 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.options"];
  v15 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Menu"];
  [v14 setAliases:v15];

  v16 = *MEMORY[0x1E69A0470];
  [v14 setLocalizedName:*MEMORY[0x1E69A0470]];
  v17 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"capsule.portrait"];
  [v14 setSymbol:v17];

  v184 = v14;
  [v14 setEventPressedValueField:23];
  v18 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.create"];
  v19 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Menu"];
  [v18 setAliases:v19];

  [v18 setLocalizedName:v16];
  v20 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"capsule.portrait"];
  [v18 setSymbol:v20];

  v188 = v18;
  [v18 setEventPressedValueField:23];
  v21 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.xmark"];
  [v21 setSupportsTouch:1];
  v22 = [MEMORY[0x1E695DFD8] setWithObject:@"Button A"];
  [v21 setAliases:v22];

  [v21 setLocalizedName:*MEMORY[0x1E69A03F0]];
  v23 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"xmark.circle"];
  [v21 setSymbol:v23];

  [v21 setEventPressedValueField:4];
  [v21 setEventTouchValueField:26];
  v24 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.circle"];
  [v21 setSupportsTouch:1];
  v25 = [MEMORY[0x1E695DFD8] setWithObject:@"Button B"];
  [v24 setAliases:v25];

  [v24 setLocalizedName:*MEMORY[0x1E69A03F8]];
  v26 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"circle.circle"];
  [v24 setSymbol:v26];

  [v24 setEventPressedValueField:5];
  v193 = v24;
  [v24 setEventTouchValueField:28];
  v27 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.square"];
  [v21 setSupportsTouch:1];
  v178 = spatialGamepadProductCategoryIncludesChirality & 1;
  v179 = spatialGamepadProductCategoryIncludesChirality;
  if (spatialGamepadProductCategoryIncludesChirality)
  {
    v28 = @"Button X";
  }

  else
  {
    v28 = @"Button A";
  }

  if (spatialGamepadProductCategoryIncludesChirality)
  {
    v29 = @"Button Y";
  }

  else
  {
    v29 = @"Button B";
  }

  if (spatialGamepadProductCategoryIncludesChirality)
  {
    v30 = @"Left Shoulder";
  }

  else
  {
    v30 = @"Grip";
  }

  if (spatialGamepadProductCategoryIncludesChirality)
  {
    v31 = @"Right Shoulder";
  }

  else
  {
    v31 = @"Grip";
  }

  if (spatialGamepadProductCategoryIncludesChirality)
  {
    v32 = @"Left Trigger";
  }

  else
  {
    v32 = @"Trigger";
  }

  v33 = @"Right Trigger";
  if ((spatialGamepadProductCategoryIncludesChirality & 1) == 0)
  {
    v33 = @"Trigger";
  }

  v190 = v33;
  v34 = [MEMORY[0x1E695DFD8] setWithObject:v28];
  [v27 setAliases:v34];

  [v27 setLocalizedName:*MEMORY[0x1E69A0428]];
  v35 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"square.circle"];
  [v27 setSymbol:v35];

  [v27 setEventPressedValueField:6];
  v198 = v27;
  [v27 setEventTouchValueField:25];
  v36 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.triangle"];
  [v21 setSupportsTouch:1];
  v37 = [MEMORY[0x1E695DFD8] setWithObject:v29];
  [v36 setAliases:v37];

  [v36 setLocalizedName:*MEMORY[0x1E69A0430]];
  v38 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"triangle.circle"];
  [v36 setSymbol:v38];

  [v36 setEventPressedValueField:7];
  v197 = v36;
  [v36 setEventTouchValueField:27];
  v39 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.l1"];
  [v21 setSupportsTouch:1];
  v40 = [MEMORY[0x1E695DFD8] setWithObject:v30];
  [v39 setAliases:v40];

  [v39 setLocalizedName:*MEMORY[0x1E69A0440]];
  v41 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l1.rectangle.roundedbottom"];
  [v39 setSymbol:v41];

  [v39 setEventPressedValueField:8];
  v196 = v39;
  [v39 setEventTouchValueField:29];
  v42 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.r1"];
  [v21 setSupportsTouch:1];
  v43 = [MEMORY[0x1E695DFD8] setWithObject:v31];
  [v42 setAliases:v43];

  [v42 setLocalizedName:*MEMORY[0x1E69A0458]];
  v44 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r1.rectangle.roundedbottom"];
  [v42 setSymbol:v44];

  [v42 setEventPressedValueField:9];
  v192 = v42;
  [v42 setEventTouchValueField:30];
  v45 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.l2"];
  [v21 setSupportsTouch:1];
  v46 = [MEMORY[0x1E695DFD8] setWithObject:v32];
  [v45 setAliases:v46];

  [v45 setLocalizedName:*MEMORY[0x1E69A0450]];
  v47 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l2.rectangle.roundedtop"];
  [v45 setSymbol:v47];

  [v45 setAnalog:1];
  [v45 setEventPressedValueField:18];
  v195 = v45;
  [v45 setEventTouchValueField:31];
  v48 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.r2"];
  v194 = v21;
  [v21 setSupportsTouch:1];
  v49 = [MEMORY[0x1E695DFD8] setWithObject:v190];
  [v48 setAliases:v49];

  [v48 setLocalizedName:*MEMORY[0x1E69A0468]];
  v50 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r2.rectangle.roundedtop"];
  [v48 setSymbol:v50];

  [v48 setAnalog:1];
  [v48 setEventPressedValueField:19];
  v191 = v48;
  [v48 setEventTouchValueField:32];
  v51 = [MEMORY[0x1E69A0698] descriptionWithIdentifier:@"stick.left"];
  if (v178)
  {
    [MEMORY[0x1E695DFD8] setWithObjects:{@"Left Thumbstick", @"Left Thumbstick Button", 0}];
  }

  else
  {
    [MEMORY[0x1E695DFD8] setWithObjects:{@"Thumbstick", @"Thumbstick Button", 0}];
  }
  v52 = ;
  [v51 setAliases:v52];

  [v51 setLocalizedName:*MEMORY[0x1E69A0448]];
  v53 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l.joystick"];
  [v51 setSymbol:v53];

  [v51 setAnalog:1];
  [v51 setEventUpValueField:10];
  [v51 setEventDownValueField:11];
  [v51 setEventLeftValueField:12];
  [v51 setEventRightValueField:13];
  [v51 setEventPressedValueField:20];
  [v51 setEventTouchedValueField:33];
  v54 = MEMORY[0x1E69A06B8];
  v55 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName = [v51 localizedName];
  symbol = [v51 symbol];
  v58 = [v54 sourceWithElementAliases:v55 localizedName:localizedName symbol:symbol direction:10];
  v220[0] = v58;
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v220 count:1];
  [v51 setXSources:v59];

  v60 = MEMORY[0x1E69A06B8];
  v61 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName2 = [v51 localizedName];
  symbol2 = [v51 symbol];
  v64 = [v60 sourceWithElementAliases:v61 localizedName:localizedName2 symbol:symbol2 direction:5];
  v219 = v64;
  v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v219 count:1];
  [v51 setYSources:v65];

  v66 = MEMORY[0x1E69A06B8];
  v67 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName3 = [v51 localizedName];
  symbol3 = [v51 symbol];
  v70 = [v66 sourceWithElementAliases:v67 localizedName:localizedName3 symbol:symbol3 direction:1];
  v218 = v70;
  v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v218 count:1];
  [v51 setUpSources:v71];

  v72 = MEMORY[0x1E69A06B8];
  v73 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName4 = [v51 localizedName];
  symbol4 = [v51 symbol];
  v76 = [v72 sourceWithElementAliases:v73 localizedName:localizedName4 symbol:symbol4 direction:2];
  v217 = v76;
  v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v217 count:1];
  [v51 setRightSources:v77];

  v78 = MEMORY[0x1E69A06B8];
  v79 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName5 = [v51 localizedName];
  symbol5 = [v51 symbol];
  v82 = [v78 sourceWithElementAliases:v79 localizedName:localizedName5 symbol:symbol5 direction:4];
  v216 = v82;
  v83 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v216 count:1];
  [v51 setDownSources:v83];

  v84 = MEMORY[0x1E69A06B8];
  v85 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName6 = [v51 localizedName];
  symbol6 = [v51 symbol];
  v88 = [v84 sourceWithElementAliases:v85 localizedName:localizedName6 symbol:symbol6 direction:8];
  v215 = v88;
  v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v215 count:1];
  [v51 setLeftSources:v89];

  v90 = MEMORY[0x1E69A06B8];
  v91 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick Button"];
  v92 = *MEMORY[0x1E69A0408];
  v93 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l.joystick.press.down"];
  v94 = [v90 sourceWithElementAliases:v91 localizedName:v92 symbol:v93];
  v214 = v94;
  v95 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v214 count:1];
  [v51 setPressedSources:v95];

  v96 = MEMORY[0x1E69A06B8];
  v97 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick Button"];
  v98 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l.joystick.press.down"];
  v99 = [v96 sourceWithElementAliases:v97 localizedName:v92 symbol:v98];
  v213 = v99;
  v100 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v213 count:1];
  [v51 setTouchedSources:v100];

  v101 = [MEMORY[0x1E69A0698] descriptionWithIdentifier:@"stick.right"];
  if (v179)
  {
    [MEMORY[0x1E695DFD8] setWithObjects:{@"Right Thumbstick", @"Right Thumbstick Button", 0}];
  }

  else
  {
    [MEMORY[0x1E695DFD8] setWithObjects:{@"Thumbstick", @"Thumbstick Button", 0}];
  }
  v102 = ;
  [v101 setAliases:v102];

  [v101 setLocalizedName:*MEMORY[0x1E69A0460]];
  v103 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r.joystick"];
  [v101 setSymbol:v103];

  [v101 setAnalog:1];
  [v101 setEventUpValueField:14];
  [v101 setEventDownValueField:15];
  [v101 setEventLeftValueField:16];
  [v101 setEventRightValueField:17];
  [v101 setEventPressedValueField:21];
  [v101 setEventTouchedValueField:34];
  v104 = MEMORY[0x1E69A06B8];
  v105 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName7 = [v101 localizedName];
  symbol7 = [v101 symbol];
  v108 = [v104 sourceWithElementAliases:v105 localizedName:localizedName7 symbol:symbol7 direction:10];
  v212 = v108;
  v109 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v212 count:1];
  [v101 setXSources:v109];

  v110 = MEMORY[0x1E69A06B8];
  v111 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName8 = [v101 localizedName];
  symbol8 = [v101 symbol];
  v114 = [v110 sourceWithElementAliases:v111 localizedName:localizedName8 symbol:symbol8 direction:5];
  v211 = v114;
  v115 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v211 count:1];
  [v101 setYSources:v115];

  v116 = MEMORY[0x1E69A06B8];
  v117 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName9 = [v101 localizedName];
  symbol9 = [v101 symbol];
  v120 = [v116 sourceWithElementAliases:v117 localizedName:localizedName9 symbol:symbol9 direction:1];
  v210 = v120;
  v121 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v210 count:1];
  [v101 setUpSources:v121];

  v122 = MEMORY[0x1E69A06B8];
  v123 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName10 = [v101 localizedName];
  symbol10 = [v101 symbol];
  v126 = [v122 sourceWithElementAliases:v123 localizedName:localizedName10 symbol:symbol10 direction:2];
  v209 = v126;
  v127 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v209 count:1];
  [v101 setRightSources:v127];

  v128 = MEMORY[0x1E69A06B8];
  v129 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName11 = [v101 localizedName];
  symbol11 = [v101 symbol];
  v132 = [v128 sourceWithElementAliases:v129 localizedName:localizedName11 symbol:symbol11 direction:4];
  v208 = v132;
  v133 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v208 count:1];
  [v101 setDownSources:v133];

  v134 = MEMORY[0x1E69A06B8];
  v135 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName12 = [v101 localizedName];
  symbol12 = [v101 symbol];
  v138 = [v134 sourceWithElementAliases:v135 localizedName:localizedName12 symbol:symbol12 direction:8];
  v207 = v138;
  v139 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v207 count:1];
  [v101 setLeftSources:v139];

  v140 = MEMORY[0x1E69A06B8];
  v141 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick Button"];
  v142 = *MEMORY[0x1E69A0420];
  v143 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r.joystick.press.down"];
  v144 = [v140 sourceWithElementAliases:v141 localizedName:v142 symbol:v143];
  v206 = v144;
  v145 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v206 count:1];
  [v101 setPressedSources:v145];

  v146 = MEMORY[0x1E69A06B8];
  v147 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick Button"];
  v148 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r.joystick.press.down"];
  v149 = [v146 sourceWithElementAliases:v147 localizedName:v142 symbol:v148];
  v205 = v149;
  v150 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v205 count:1];
  [v101 setTouchedSources:v150];

  v151 = [MEMORY[0x1E69A06A8] descriptionWithIdentifier:@"dpad"];
  v152 = [MEMORY[0x1E695DFD8] setWithObject:@"Direction Pad"];
  [v151 setAliases:v152];

  [v151 setLocalizedName:*MEMORY[0x1E69A03B8]];
  v153 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"dpad"];
  [v151 setSymbol:v153];

  [v151 setAnalog:0];
  [v151 setEventUpValueField:0];
  [v151 setEventDownValueField:1];
  [v151 setEventLeftValueField:2];
  [v151 setEventRightValueField:3];
  v154 = objc_opt_new();
  if (v185)
  {
    v155 = v181;
  }

  else
  {
    v155 = 0;
  }

  if (v155 == 1)
  {
    firstObject = [bindingsCopy firstObject];
    gamepadEventSource = [v185 gamepadEventSource];
    v156 = [[_GCGamepadEventFusionConfig alloc] initWithSourceCount:2];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:6 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:7 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:10 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:11 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:12 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:13 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:8 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:18 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:20 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:4 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:5 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:14 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:15 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:16 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:17 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:9 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:19 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:21 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:22 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:23 forSourceAtIndex:0];
    v157 = [_GCGamepadEventFusionDescription alloc];
    v203[0] = firstObject;
    v203[1] = gamepadEventSource;
    v158 = [MEMORY[0x1E695DEC8] arrayWithObjects:v203 count:2];
    v159 = [(_GCGamepadEventFusionDescription *)v157 initWithConfiguration:v156 sources:v158];
    v204 = v159;
    v160 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v204 count:1];

    v202[0] = v194;
    v202[1] = v193;
    v161 = v184;
    v202[2] = v184;
    v202[3] = v198;
    v202[4] = v197;
    v202[5] = v196;
    v202[6] = v195;
    v202[7] = v51;
    v202[8] = v192;
    v202[9] = v191;
    v202[10] = v101;
    v202[11] = v151;
    v162 = firstObject;
    v163 = [MEMORY[0x1E695DEC8] arrayWithObjects:v202 count:12];
    [v154 setElements:v163];

    v164 = v160;
    v165 = gamepadEventSource;
    v166 = v187;
LABEL_32:

    goto LABEL_38;
  }

  v166 = v187;
  v162 = [v187 propertyForKey:@"PSVR2DeviceType"];
  objc_opt_class();
  v164 = bindingsCopy;
  v161 = v184;
  if (objc_opt_isKindOfClass())
  {
    uTF8String = [v162 UTF8String];
    if (uTF8String)
    {
      v168 = uTF8String;
      if (strcmp(uTF8String, "Unknown"))
      {
        if (!strcmp(v168, "Sense Left"))
        {
          v172 = &v201;
          v174 = v197;
          v173 = v198;
          v201 = v184;
          v176 = v195;
          v175 = v196;
          v177 = v51;
        }

        else
        {
          if (strcmp(v168, "Sense Right"))
          {
            goto LABEL_38;
          }

          v172 = &v200;
          v200 = v188;
          v174 = v193;
          v173 = v194;
          v176 = v191;
          v175 = v192;
          v177 = v101;
        }

        v172[1] = v173;
        v172[2] = v174;
        v172[3] = v175;
        v172[4] = v176;
        v172[5] = v177;
        v165 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
        [v154 setElements:v165];
        goto LABEL_32;
      }
    }
  }

LABEL_38:

  v169 = [[_GCControllerInputComponentDescription alloc] initWithIdentifier:identifierCopy controllerInputs:v154 bindings:v164];
  v170 = *MEMORY[0x1E69E9840];

  return v169;
}

+ (id)logicalDevice:(id)device makeControllerMotionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[GCMotion alloc] initWithIdentifier:identifierCopy];

  [(GCMotion *)v5 _setHasRotationRate:1];
  [(GCMotion *)v5 _setHasAttitude:0];

  return v5;
}

+ (id)logicalDevice:(id)device makeControllerSpatialDescriptionWithIdentifier:(id)identifier forClient:(id)client
{
  deviceCopy = device;
  identifierCopy = identifier;
  configuration = [client configuration];
  spatialGamepadSupported = [configuration spatialGamepadSupported];

  if (!spatialGamepadSupported)
  {
    v17 = 0;
    goto LABEL_12;
  }

  v11 = objc_opt_new();
  v12 = [deviceCopy propertyForKey:@"RegistryID"];
  [(_GCDeviceSpatialParameters *)v11 setTrackingSourceIOServiceRegistryID:v12];

  v13 = [deviceCopy propertyForKey:@"PSVR2DeviceType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uTF8String = [v13 UTF8String];
    if (uTF8String)
    {
      v15 = uTF8String;
      if (strcmp(uTF8String, "Unknown"))
      {
        if (!strcmp(v15, "Sense Left"))
        {
          v16 = 1;
          goto LABEL_10;
        }

        if (!strcmp(v15, "Sense Right"))
        {
          v16 = 2;
LABEL_10:
          [(_GCDeviceSpatialParameters *)v11 setInherentChirality:v16];
        }
      }
    }
  }

  v17 = [[_GCControllerRemoteSpatialComponentDescription alloc] initWithIdentifier:identifierCopy facade:v11];

LABEL_12:

  return v17;
}

+ (void)physicalDevice:(id)device getBatteryWithReply:(id)reply
{
  replyCopy = reply;
  batteryServiceServer = [device batteryServiceServer];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73___GCSonyPSVR2SenseControllerProfile_physicalDevice_getBatteryWithReply___block_invoke;
  v8[3] = &unk_1E8419578;
  v9 = replyCopy;
  v7 = replyCopy;
  [batteryServiceServer readBatteryWithReply:v8];
}

+ (id)physicalDeviceGetHapticCapabilities:(id)capabilities
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [capabilities propertyForKey:@"PSVR2DeviceType"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  uTF8String = [v3 UTF8String];
  if (!uTF8String)
  {
    goto LABEL_6;
  }

  v5 = uTF8String;
  if (!strcmp(uTF8String, "Unknown"))
  {
    goto LABEL_6;
  }

  if (!strcmp(v5, "Sense Left"))
  {
    v9 = [[GCHapticActuator alloc] initWithLabel:@"Low Band" type:0 index:0];
    v12[0] = v9;
    v10 = v12;
  }

  else
  {
    if (strcmp(v5, "Sense Right"))
    {
LABEL_6:
      v6 = MEMORY[0x1E695E0F0];
      goto LABEL_7;
    }

    v9 = [[GCHapticActuator alloc] initWithLabel:@"High Band" type:0 index:0];
    v11 = v9;
    v10 = &v11;
  }

  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

LABEL_7:
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)physicalDeviceGetHapticCapabilityGraph:(id)graph
{
  v3 = [graph propertyForKey:@"PSVR2DeviceType"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  uTF8String = [v3 UTF8String];
  if (!uTF8String)
  {
    goto LABEL_6;
  }

  v5 = uTF8String;
  if (!strcmp(uTF8String, "Unknown"))
  {
    goto LABEL_6;
  }

  if (!strcmp(v5, "Sense Left"))
  {
    v8 = @"PSVR2LeftHapticCapabilityGraph";
  }

  else
  {
    if (strcmp(v5, "Sense Right"))
    {
LABEL_6:
      v6 = 0;
      goto LABEL_7;
    }

    v8 = @"PSVR2RightHapticCapabilityGraph";
  }

  v9 = objc_opt_class();
  v10 = loadNSDictionaryFromJSON(v9, v8);
  v6 = [[GCHapticCapabilityGraph alloc] initWithJSONDictionaryRepresentation:v10];

LABEL_7:

  return v6;
}

@end