@interface _GCSonyDualShockControllerProfile
+ (BOOL)logicalDevice:(id)device getSystemButtonName:(id *)name sfSymbolName:(id *)symbolName needsMFiCompatibility:(BOOL *)compatibility;
+ (_GCPhysicalDeviceManager)deviceManager;
+ (id)logicalDevice:(id)device makeControllerInputDescriptionWithIdentifier:(id)identifier bindings:(id)bindings;
+ (id)logicalDevice:(id)device makeControllerMotionWithIdentifier:(id)identifier;
+ (id)logicalDevice:(id)device makeControllerPhysicalInputProfileWithIdentifier:(id)identifier;
+ (id)physicalDeviceGetHapticCapabilities:(id)capabilities;
+ (id)physicalDeviceGetHapticCapabilityGraph:(id)graph;
+ (void)physicalDevice:(id)device getBatteryWithReply:(id)reply;
+ (void)physicalDevice:(id)device getLightWithReply:(id)reply;
+ (void)physicalDevice:(id)device getSensorsEnabledWithReply:(id)reply;
+ (void)physicalDevice:(id)device setLight:(id)light;
@end

@implementation _GCSonyDualShockControllerProfile

+ (_GCPhysicalDeviceManager)deviceManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50___GCSonyDualShockControllerProfile_deviceManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (deviceManager_onceToken_4 != -1)
  {
    dispatch_once(&deviceManager_onceToken_4, block);
  }

  v2 = deviceManager_deviceManager_4;

  return v2;
}

+ (BOOL)logicalDevice:(id)device getSystemButtonName:(id *)name sfSymbolName:(id *)symbolName needsMFiCompatibility:(BOOL *)compatibility
{
  *name = *MEMORY[0x1E69A0400];
  *symbolName = @"logo.playstation";
  return 1;
}

+ (id)logicalDevice:(id)device makeControllerPhysicalInputProfileWithIdentifier:(id)identifier
{
  deviceCopy = device;
  identifierCopy = identifier;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  memset(v11, 0, sizeof(v11));
  GCExtendedGamepadInitInfoMake(v11);
  for (i = 0; i != 1152; i += 72)
  {
    *(v11 + i + 8) = 257;
  }

  BYTE1(v12) = 0;
  BYTE9(v16) = 0;
  v21 = 0;
  v22 = 0;
  v8 = [(GCExtendedGamepad *)[GCDualShockGamepad alloc] initWithIdentifier:identifierCopy info:v11];
  for (j = 0; j != 1584; j += 72)
  {
    __destructor_8_s0_s48_s56_s64(v11 + j);
  }

  return v8;
}

+ (id)logicalDevice:(id)device makeControllerInputDescriptionWithIdentifier:(id)identifier bindings:(id)bindings
{
  v154[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69A0690];
  bindingsCopy = bindings;
  identifierCopy = identifier;
  v139 = [v6 descriptionWithIdentifier:@"button.logo"];
  v7 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Home"];
  [v139 setAliases:v7];

  [v139 setLocalizedName:*MEMORY[0x1E69A0400]];
  v8 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"logo.playstation"];
  [v139 setSymbol:v8];

  [v139 setEventPressedValueField:22];
  v138 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.options"];
  v9 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Menu"];
  [v138 setAliases:v9];

  [v138 setLocalizedName:*MEMORY[0x1E69A0410]];
  v10 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"capsule.portrait"];
  [v138 setSymbol:v10];

  [v138 setEventPressedValueField:23];
  v137 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.share"];
  v11 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Options"];
  [v137 setAliases:v11];

  [v137 setLocalizedName:*MEMORY[0x1E69A0418]];
  v12 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"capsule.portrait"];
  [v137 setSymbol:v12];

  [v137 setEventPressedValueField:24];
  v136 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.xmark"];
  v13 = [MEMORY[0x1E695DFD8] setWithObject:@"Button A"];
  [v136 setAliases:v13];

  [v136 setLocalizedName:*MEMORY[0x1E69A03F0]];
  v14 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"xmark.circle"];
  [v136 setSymbol:v14];

  [v136 setEventPressedValueField:4];
  v135 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.circle"];
  v15 = [MEMORY[0x1E695DFD8] setWithObject:@"Button B"];
  [v135 setAliases:v15];

  [v135 setLocalizedName:*MEMORY[0x1E69A03F8]];
  v16 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"circle.circle"];
  [v135 setSymbol:v16];

  [v135 setEventPressedValueField:5];
  v134 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.square"];
  v17 = [MEMORY[0x1E695DFD8] setWithObject:@"Button X"];
  [v134 setAliases:v17];

  [v134 setLocalizedName:*MEMORY[0x1E69A0428]];
  v18 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"square.circle"];
  [v134 setSymbol:v18];

  [v134 setEventPressedValueField:6];
  v133 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.triangle"];
  v19 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Y"];
  [v133 setAliases:v19];

  [v133 setLocalizedName:*MEMORY[0x1E69A0430]];
  v20 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"triangle.circle"];
  [v133 setSymbol:v20];

  [v133 setEventPressedValueField:7];
  v130 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.l1"];
  v21 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Shoulder"];
  [v130 setAliases:v21];

  [v130 setLocalizedName:*MEMORY[0x1E69A0440]];
  v22 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l1.rectangle.roundedbottom"];
  [v130 setSymbol:v22];

  [v130 setEventPressedValueField:8];
  v129 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.r1"];
  v23 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Shoulder"];
  [v129 setAliases:v23];

  [v129 setLocalizedName:*MEMORY[0x1E69A0458]];
  v24 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r1.rectangle.roundedbottom"];
  [v129 setSymbol:v24];

  [v129 setEventPressedValueField:9];
  v128 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.l2"];
  v25 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Trigger"];
  [v128 setAliases:v25];

  [v128 setLocalizedName:*MEMORY[0x1E69A0450]];
  v26 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l2.rectangle.roundedtop"];
  [v128 setSymbol:v26];

  [v128 setAnalog:1];
  [v128 setEventPressedValueField:18];
  v127 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.r2"];
  v27 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Trigger"];
  [v127 setAliases:v27];

  [v127 setLocalizedName:*MEMORY[0x1E69A0468]];
  v28 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r2.rectangle.roundedtop"];
  [v127 setSymbol:v28];

  [v127 setAnalog:1];
  [v127 setEventPressedValueField:19];
  v126 = [MEMORY[0x1E69A06A8] descriptionWithIdentifier:@"dpad"];
  v29 = [MEMORY[0x1E695DFD8] setWithObject:@"Direction Pad"];
  [v126 setAliases:v29];

  [v126 setLocalizedName:*MEMORY[0x1E69A0438]];
  v30 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"dpad"];
  [v126 setSymbol:v30];

  [v126 setAnalog:0];
  [v126 setEventUpValueField:0];
  [v126 setEventDownValueField:1];
  [v126 setEventLeftValueField:2];
  [v126 setEventRightValueField:3];
  v31 = [MEMORY[0x1E69A06A0] descriptionWithIdentifier:@"stick.left"];
  v32 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Left Thumbstick", @"Left Thumbstick Button", 0}];
  [v31 setAliases:v32];

  [v31 setLocalizedName:*MEMORY[0x1E69A0448]];
  v33 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l.joystick"];
  [v31 setSymbol:v33];

  [v31 setAnalog:1];
  [v31 setEventUpValueField:10];
  [v31 setEventDownValueField:11];
  [v31 setEventLeftValueField:12];
  [v31 setEventRightValueField:13];
  [v31 setEventPressedValueField:20];
  v34 = MEMORY[0x1E69A06B8];
  v35 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName = [v31 localizedName];
  symbol = [v31 symbol];
  v38 = [v34 sourceWithElementAliases:v35 localizedName:localizedName symbol:symbol direction:10];
  v154[0] = v38;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:1];
  [v31 setXSources:v39];

  v40 = MEMORY[0x1E69A06B8];
  v41 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName2 = [v31 localizedName];
  symbol2 = [v31 symbol];
  v44 = [v40 sourceWithElementAliases:v41 localizedName:localizedName2 symbol:symbol2 direction:5];
  v153 = v44;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v153 count:1];
  [v31 setYSources:v45];

  v46 = MEMORY[0x1E69A06B8];
  v47 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName3 = [v31 localizedName];
  symbol3 = [v31 symbol];
  v50 = [v46 sourceWithElementAliases:v47 localizedName:localizedName3 symbol:symbol3 direction:1];
  v152 = v50;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v152 count:1];
  [v31 setUpSources:v51];

  v52 = MEMORY[0x1E69A06B8];
  v53 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName4 = [v31 localizedName];
  symbol4 = [v31 symbol];
  v56 = [v52 sourceWithElementAliases:v53 localizedName:localizedName4 symbol:symbol4 direction:2];
  v151 = v56;
  v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v151 count:1];
  [v31 setRightSources:v57];

  v58 = MEMORY[0x1E69A06B8];
  v59 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName5 = [v31 localizedName];
  symbol5 = [v31 symbol];
  v62 = [v58 sourceWithElementAliases:v59 localizedName:localizedName5 symbol:symbol5 direction:4];
  v150 = v62;
  v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v150 count:1];
  [v31 setDownSources:v63];

  v64 = MEMORY[0x1E69A06B8];
  v65 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName6 = [v31 localizedName];
  symbol6 = [v31 symbol];
  v68 = [v64 sourceWithElementAliases:v65 localizedName:localizedName6 symbol:symbol6 direction:8];
  v149 = v68;
  v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v149 count:1];
  [v31 setLeftSources:v69];

  v70 = MEMORY[0x1E69A06B8];
  v71 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick Button"];
  v72 = *MEMORY[0x1E69A0408];
  v73 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l.joystick.press.down"];
  v74 = [v70 sourceWithElementAliases:v71 localizedName:v72 symbol:v73];
  v148 = v74;
  v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v148 count:1];
  [v31 setPressedSources:v75];

  v76 = [MEMORY[0x1E69A06A0] descriptionWithIdentifier:@"stick.right"];
  v77 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Right Thumbstick", @"Right Thumbstick Button", 0}];
  [v76 setAliases:v77];

  [v76 setLocalizedName:*MEMORY[0x1E69A0460]];
  v78 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r.joystick"];
  [v76 setSymbol:v78];

  [v76 setAnalog:1];
  [v76 setEventUpValueField:14];
  [v76 setEventDownValueField:15];
  [v76 setEventLeftValueField:16];
  [v76 setEventRightValueField:17];
  [v76 setEventPressedValueField:21];
  v79 = MEMORY[0x1E69A06B8];
  v80 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName7 = [v76 localizedName];
  symbol7 = [v76 symbol];
  v83 = [v79 sourceWithElementAliases:v80 localizedName:localizedName7 symbol:symbol7 direction:10];
  v147 = v83;
  v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v147 count:1];
  [v76 setXSources:v84];

  v85 = MEMORY[0x1E69A06B8];
  v86 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName8 = [v76 localizedName];
  symbol8 = [v76 symbol];
  v89 = [v85 sourceWithElementAliases:v86 localizedName:localizedName8 symbol:symbol8 direction:5];
  v146 = v89;
  v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v146 count:1];
  [v76 setYSources:v90];

  v91 = MEMORY[0x1E69A06B8];
  v92 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName9 = [v76 localizedName];
  symbol9 = [v76 symbol];
  v95 = [v91 sourceWithElementAliases:v92 localizedName:localizedName9 symbol:symbol9 direction:1];
  v145 = v95;
  v96 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v145 count:1];
  [v76 setUpSources:v96];

  v97 = MEMORY[0x1E69A06B8];
  v98 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName10 = [v76 localizedName];
  symbol10 = [v76 symbol];
  v101 = [v97 sourceWithElementAliases:v98 localizedName:localizedName10 symbol:symbol10 direction:2];
  v144 = v101;
  v102 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v144 count:1];
  [v76 setRightSources:v102];

  v103 = MEMORY[0x1E69A06B8];
  v104 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName11 = [v76 localizedName];
  symbol11 = [v76 symbol];
  v107 = [v103 sourceWithElementAliases:v104 localizedName:localizedName11 symbol:symbol11 direction:4];
  v143 = v107;
  v108 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v143 count:1];
  [v76 setDownSources:v108];

  v109 = MEMORY[0x1E69A06B8];
  v110 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName12 = [v76 localizedName];
  symbol12 = [v76 symbol];
  v113 = [v109 sourceWithElementAliases:v110 localizedName:localizedName12 symbol:symbol12 direction:8];
  v142 = v113;
  v114 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v142 count:1];
  [v76 setLeftSources:v114];

  v115 = MEMORY[0x1E69A06B8];
  v116 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick Button"];
  v117 = *MEMORY[0x1E69A0420];
  v118 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r.joystick.press.down"];
  v119 = [v115 sourceWithElementAliases:v116 localizedName:v117 symbol:v118];
  v141 = v119;
  v120 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v141 count:1];
  [v76 setPressedSources:v120];

  v121 = objc_opt_new();
  v140[0] = v139;
  v140[1] = v138;
  v140[2] = v137;
  v140[3] = v136;
  v140[4] = v135;
  v140[5] = v134;
  v140[6] = v133;
  v140[7] = v130;
  v140[8] = v129;
  v140[9] = v128;
  v140[10] = v127;
  v140[11] = v126;
  v140[12] = v31;
  v140[13] = v76;
  v122 = [MEMORY[0x1E695DEC8] arrayWithObjects:v140 count:14];
  [v121 setElements:v122];

  v125 = [[_GCControllerInputComponentDescription alloc] initWithIdentifier:identifierCopy controllerInputs:v121 bindings:bindingsCopy];
  v123 = *MEMORY[0x1E69E9840];

  return v125;
}

+ (id)logicalDevice:(id)device makeControllerMotionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[GCMotion alloc] initWithIdentifier:identifierCopy];

  [(GCMotion *)v5 _setHasRotationRate:1];
  [(GCMotion *)v5 _setHasAttitude:0];

  return v5;
}

+ (void)physicalDevice:(id)device getLightWithReply:(id)reply
{
  deviceCopy = device;
  replyCopy = reply;
  if (gc_isInternalBuild())
  {
    +[_GCSonyDualShockControllerProfile physicalDevice:getLightWithReply:];
  }

  lightServiceServer = [deviceCopy lightServiceServer];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70___GCSonyDualShockControllerProfile_physicalDevice_getLightWithReply___block_invoke;
  v10[3] = &unk_1E841A3C0;
  v11 = deviceCopy;
  v12 = replyCopy;
  v8 = replyCopy;
  v9 = deviceCopy;
  [lightServiceServer readLightWithReply:v10];
}

+ (void)physicalDevice:(id)device setLight:(id)light
{
  lightCopy = light;
  lightServiceServer = [device lightServiceServer];
  color = [lightCopy color];
  [color red];
  v8 = v7;
  color2 = [lightCopy color];
  [color2 green];
  v11 = v10;
  color3 = [lightCopy color];

  [color3 blue];
  LODWORD(v14) = v13;
  LODWORD(v15) = v8;
  LODWORD(v16) = v11;
  [lightServiceServer updateLightWithRed:v15 green:v16 blue:v14];
}

+ (void)physicalDevice:(id)device getSensorsEnabledWithReply:(id)reply
{
  deviceCopy = device;
  replyCopy = reply;
  if (gc_isInternalBuild())
  {
    +[_GCSonyDualShockControllerProfile physicalDevice:getSensorsEnabledWithReply:];
  }

  motionServiceServer = [deviceCopy motionServiceServer];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79___GCSonyDualShockControllerProfile_physicalDevice_getSensorsEnabledWithReply___block_invoke;
  v10[3] = &unk_1E841A3E8;
  v11 = deviceCopy;
  v12 = replyCopy;
  v8 = replyCopy;
  v9 = deviceCopy;
  [motionServiceServer readSensorsActiveWithReply:v10];
}

+ (void)physicalDevice:(id)device getBatteryWithReply:(id)reply
{
  deviceCopy = device;
  replyCopy = reply;
  if (gc_isInternalBuild())
  {
    +[_GCSonyDualShockControllerProfile physicalDevice:getBatteryWithReply:];
  }

  batteryServiceServer = [deviceCopy batteryServiceServer];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72___GCSonyDualShockControllerProfile_physicalDevice_getBatteryWithReply___block_invoke;
  v10[3] = &unk_1E841A410;
  v11 = deviceCopy;
  v12 = replyCopy;
  v8 = replyCopy;
  v9 = deviceCopy;
  [batteryServiceServer readBatteryWithReply:v10];
}

+ (id)physicalDeviceGetHapticCapabilities:(id)capabilities
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = [[GCHapticActuator alloc] initWithLabel:@"Low Band" type:0 index:0];
  v8[0] = v3;
  v4 = [[GCHapticActuator alloc] initWithLabel:@"High Band" type:0 index:1];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)physicalDeviceGetHapticCapabilityGraph:(id)graph
{
  v3 = objc_opt_class();
  v4 = loadNSDictionaryFromJSON(v3, @"DualShockHapticCapabilityGraph");
  v5 = [[GCHapticCapabilityGraph alloc] initWithJSONDictionaryRepresentation:v4];

  return v5;
}

+ (void)physicalDevice:getLightWithReply:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)physicalDevice:getSensorsEnabledWithReply:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)physicalDevice:getBatteryWithReply:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end