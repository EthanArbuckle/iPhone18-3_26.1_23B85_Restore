@interface _GCMicrosoftXboxControllerProfile
+ (BOOL)logicalDevice:(id)a3 getSystemButtonName:(id *)a4 sfSymbolName:(id *)a5 needsMFiCompatibility:(BOOL *)a6;
+ (BOOL)physicalDeviceSupportsBattery:(id)a3;
+ (_GCPhysicalDeviceManager)deviceManager;
+ (id)logicalDevice:(id)a3 makeControllerInputDescriptionWithIdentifier:(id)a4 bindings:(id)a5;
+ (id)logicalDevice:(id)a3 makeControllerPhysicalInputProfileWithIdentifier:(id)a4;
+ (id)logicalDeviceControllerDetailedProductCategory:(id)a3;
+ (id)physicalDeviceGetHapticCapabilities:(id)a3;
+ (id)physicalDeviceGetHapticCapabilityGraph:(id)a3;
+ (int64_t)logicalDeviceDeterminePhysicalInputType:(id)a3;
+ (int64_t)physicalDeviceGetIndicatedPlayerIndex:(id)a3;
+ (void)physicalDevice:(id)a3 getBatteryWithReply:(id)a4;
+ (void)physicalDevice:(id)a3 setIndicatedPlayerIndex:(int64_t)a4;
@end

@implementation _GCMicrosoftXboxControllerProfile

+ (_GCPhysicalDeviceManager)deviceManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50___GCMicrosoftXboxControllerProfile_deviceManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (deviceManager_onceToken_3 != -1)
  {
    dispatch_once(&deviceManager_onceToken_3, block);
  }

  v2 = deviceManager_deviceManager_3;

  return v2;
}

+ (id)logicalDeviceControllerDetailedProductCategory:(id)a3
{
  v3 = [a3 underlyingDevice];
  v4 = [v3 serviceInfo];
  v5 = [v4 numberPropertyForKey:@"ProductID"];
  v6 = [v5 unsignedIntValue];

  if ((v6 - 2816) > 0x3C)
  {
    goto LABEL_8;
  }

  if (((1 << v6) & 0x1000000400000025) != 0)
  {
    v7 = @"Xbox Elite";
    goto LABEL_11;
  }

  if (((1 << v6) & 0x8000C0000) != 0)
  {
    v7 = @"Xbox Series X";
    goto LABEL_11;
  }

  if (((1 << v6) & 0x200001000) != 0)
  {
    v7 = @"Xbox Adaptive";
  }

  else
  {
LABEL_8:
    if (v6 == 654)
    {
      v7 = @"Xbox 360";
    }

    else
    {
      v7 = @"Xbox One";
    }
  }

LABEL_11:

  return v7;
}

+ (BOOL)logicalDevice:(id)a3 getSystemButtonName:(id *)a4 sfSymbolName:(id *)a5 needsMFiCompatibility:(BOOL *)a6
{
  *a4 = *MEMORY[0x1E69A05E8];
  *a5 = @"logo.xbox";
  return 1;
}

+ (id)logicalDevice:(id)a3 makeControllerPhysicalInputProfileWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  GCExtendedGamepadInitInfoMake(v13);
  for (i = 0; i != 1152; i += 72)
  {
    *(v13 + i + 8) = 257;
  }

  BYTE1(v14) = 0;
  BYTE9(v18) = 0;
  v23 = 0;
  v24 = 0;
  v9 = [a1 logicalDeviceDeterminePhysicalInputType:v6];
  if (v9 == 3)
  {
    v25 = 1;
  }

  v10 = [(GCExtendedGamepad *)[GCXboxGamepad alloc] initWithIdentifier:v7 info:v13];
  [(GCXboxGamepad *)v10 setType:v9];
  for (j = 0; j != 1584; j += 72)
  {
    __destructor_8_s0_s48_s56_s64(v13 + j);
  }

  return v10;
}

+ (int64_t)logicalDeviceDeterminePhysicalInputType:(id)a3
{
  v3 = [a3 underlyingDevice];
  v4 = [v3 serviceInfo];
  v5 = [v4 numberPropertyForKey:@"ProductID"];
  v6 = [v5 unsignedIntValue];

  v7 = (v6 - 2818);
  if (v7 > 0x21)
  {
    goto LABEL_11;
  }

  if (((1 << (v6 - 2)) & 0x200030000) != 0)
  {
    if (!gc_isInternalBuild())
    {
      v8 = 3;
      goto LABEL_13;
    }

    v10 = getGCDLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D2CD5000, v10, OS_LOG_TYPE_DEFAULT, "recognized series x controller", buf, 2u);
    }

    v8 = 3;
LABEL_26:

    goto LABEL_13;
  }

  if (((1 << (v6 - 2)) & 9) == 0)
  {
    if (v7 == 10)
    {
      if (!gc_isInternalBuild())
      {
        v8 = 2;
        goto LABEL_13;
      }

      v10 = getGCDLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        v8 = 2;
        _os_log_impl(&dword_1D2CD5000, v10, OS_LOG_TYPE_DEFAULT, "recognized adaptive controller", v13, 2u);
      }

      else
      {
        v8 = 2;
      }

      goto LABEL_26;
    }

LABEL_11:
    if (!gc_isInternalBuild())
    {
      v8 = 0;
      goto LABEL_13;
    }

    v10 = getGCDLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1D2CD5000, v10, OS_LOG_TYPE_DEFAULT, "recognized standard controller", v11, 2u);
    }

    v8 = 0;
    goto LABEL_26;
  }

  if (gc_isInternalBuild())
  {
    v10 = getGCDLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1D2CD5000, v10, OS_LOG_TYPE_DEFAULT, "recognized elite controller", v14, 2u);
    }

    v8 = 1;
    goto LABEL_26;
  }

  v8 = 1;
LABEL_13:

  return v8;
}

+ (id)logicalDevice:(id)a3 makeControllerInputDescriptionWithIdentifier:(id)a4 bindings:(id)a5
{
  v183[1] = *MEMORY[0x1E69E9840];
  v158 = a5;
  v157 = a4;
  v155 = [a1 logicalDeviceDeterminePhysicalInputType:a3];
  v154 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.xbox"];
  v8 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Home"];
  [v154 setAliases:v8];

  [v154 setLocalizedName:*MEMORY[0x1E69A05E8]];
  v9 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"logo.xbox"];
  [v154 setSymbol:v9];

  [v154 setEventPressedValueField:22];
  v153 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.menu"];
  v10 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Menu"];
  [v153 setAliases:v10];

  [v153 setLocalizedName:*MEMORY[0x1E69A05F8]];
  v11 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"line.horizontal.3.circle"];
  [v153 setSymbol:v11];

  [v153 setEventPressedValueField:23];
  v152 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.view"];
  v12 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Options"];
  [v152 setAliases:v12];

  [v152 setLocalizedName:*MEMORY[0x1E69A0600]];
  v13 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"rectangle.fill.on.rectangle.fill.circle"];
  [v152 setSymbol:v13];

  [v152 setEventPressedValueField:24];
  v159 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.a"];
  v14 = [MEMORY[0x1E695DFD8] setWithObject:@"Button A"];
  [v159 setAliases:v14];

  [v159 setLocalizedName:*MEMORY[0x1E69A05D8]];
  v15 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"a.circle"];
  [v159 setSymbol:v15];

  [v159 setEventPressedValueField:4];
  v167 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.b"];
  v16 = [MEMORY[0x1E695DFD8] setWithObject:@"Button B"];
  [v167 setAliases:v16];

  [v167 setLocalizedName:*MEMORY[0x1E69A05E0]];
  v17 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"b.circle"];
  [v167 setSymbol:v17];

  [v167 setEventPressedValueField:5];
  v166 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.x"];
  v18 = [MEMORY[0x1E695DFD8] setWithObject:@"Button X"];
  [v166 setAliases:v18];

  [v166 setLocalizedName:*MEMORY[0x1E69A0630]];
  v19 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"x.circle"];
  [v166 setSymbol:v19];

  [v166 setEventPressedValueField:6];
  v165 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.y"];
  v20 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Y"];
  [v165 setAliases:v20];

  [v165 setLocalizedName:*MEMORY[0x1E69A0638]];
  v21 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"y.circle"];
  [v165 setSymbol:v21];

  [v165 setEventPressedValueField:7];
  v164 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.left.bumper"];
  v22 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Shoulder"];
  [v164 setAliases:v22];

  [v164 setLocalizedName:*MEMORY[0x1E69A0648]];
  v23 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"lb.rectangle.roundedbottom"];
  [v164 setSymbol:v23];

  [v164 setEventPressedValueField:8];
  v163 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.right.bumper"];
  v24 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Shoulder"];
  [v163 setAliases:v24];

  [v163 setLocalizedName:*MEMORY[0x1E69A0660]];
  v25 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"rb.rectangle.roundedbottom"];
  [v163 setSymbol:v25];

  [v163 setEventPressedValueField:9];
  v162 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.left.trigger"];
  v26 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Trigger"];
  [v162 setAliases:v26];

  [v162 setLocalizedName:*MEMORY[0x1E69A0658]];
  v27 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"lt.rectangle.roundedtop"];
  [v162 setSymbol:v27];

  [v162 setAnalog:1];
  [v162 setEventPressedValueField:18];
  v161 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.right.trigger"];
  v28 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Trigger"];
  [v161 setAliases:v28];

  [v161 setLocalizedName:*MEMORY[0x1E69A0670]];
  v29 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"rt.rectangle.roundedtop"];
  [v161 setSymbol:v29];

  [v161 setAnalog:1];
  [v161 setEventPressedValueField:19];
  v160 = [MEMORY[0x1E69A06A8] descriptionWithIdentifier:@"dpad"];
  v30 = [MEMORY[0x1E695DFD8] setWithObject:@"Direction Pad"];
  [v160 setAliases:v30];

  [v160 setLocalizedName:*MEMORY[0x1E69A0640]];
  v31 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"dpad"];
  [v160 setSymbol:v31];

  [v160 setAnalog:0];
  [v160 setEventUpValueField:0];
  [v160 setEventDownValueField:1];
  [v160 setEventLeftValueField:2];
  [v160 setEventRightValueField:3];
  v32 = [MEMORY[0x1E69A06A0] descriptionWithIdentifier:@"stick.left"];
  v33 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Left Thumbstick", @"Left Thumbstick Button", 0}];
  [v32 setAliases:v33];

  [v32 setLocalizedName:*MEMORY[0x1E69A0650]];
  v34 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l.joystick"];
  [v32 setSymbol:v34];

  [v32 setAnalog:1];
  [v32 setEventUpValueField:10];
  [v32 setEventDownValueField:11];
  [v32 setEventLeftValueField:12];
  [v32 setEventRightValueField:13];
  [v32 setEventPressedValueField:20];
  v35 = MEMORY[0x1E69A06B8];
  v36 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  v37 = [v32 localizedName];
  v38 = [v32 symbol];
  v39 = [v35 sourceWithElementAliases:v36 localizedName:v37 symbol:v38 direction:10];
  v183[0] = v39;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v183 count:1];
  [v32 setXSources:v40];

  v41 = MEMORY[0x1E69A06B8];
  v42 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  v43 = [v32 localizedName];
  v44 = [v32 symbol];
  v45 = [v41 sourceWithElementAliases:v42 localizedName:v43 symbol:v44 direction:5];
  v182 = v45;
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v182 count:1];
  [v32 setYSources:v46];

  v47 = MEMORY[0x1E69A06B8];
  v48 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  v49 = [v32 localizedName];
  v50 = [v32 symbol];
  v51 = [v47 sourceWithElementAliases:v48 localizedName:v49 symbol:v50 direction:1];
  v181 = v51;
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v181 count:1];
  [v32 setUpSources:v52];

  v53 = MEMORY[0x1E69A06B8];
  v54 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  v55 = [v32 localizedName];
  v56 = [v32 symbol];
  v57 = [v53 sourceWithElementAliases:v54 localizedName:v55 symbol:v56 direction:2];
  v180 = v57;
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v180 count:1];
  [v32 setRightSources:v58];

  v59 = MEMORY[0x1E69A06B8];
  v60 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  v61 = [v32 localizedName];
  v62 = [v32 symbol];
  v63 = [v59 sourceWithElementAliases:v60 localizedName:v61 symbol:v62 direction:4];
  v179 = v63;
  v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v179 count:1];
  [v32 setDownSources:v64];

  v65 = MEMORY[0x1E69A06B8];
  v66 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  v67 = [v32 localizedName];
  v68 = [v32 symbol];
  v69 = [v65 sourceWithElementAliases:v66 localizedName:v67 symbol:v68 direction:8];
  v178 = v69;
  v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v178 count:1];
  [v32 setLeftSources:v70];

  v71 = MEMORY[0x1E69A06B8];
  v72 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick Button"];
  v73 = *MEMORY[0x1E69A05F0];
  v74 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l.joystick.press.down"];
  v75 = [v71 sourceWithElementAliases:v72 localizedName:v73 symbol:v74];
  v177 = v75;
  v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v177 count:1];
  [v32 setPressedSources:v76];

  v77 = [MEMORY[0x1E69A06A0] descriptionWithIdentifier:@"stick.right"];
  v78 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Right Thumbstick", @"Right Thumbstick Button", 0}];
  [v77 setAliases:v78];

  [v77 setLocalizedName:*MEMORY[0x1E69A0668]];
  v79 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r.joystick"];
  [v77 setSymbol:v79];

  [v77 setAnalog:1];
  [v77 setEventUpValueField:14];
  [v77 setEventDownValueField:15];
  [v77 setEventLeftValueField:16];
  [v77 setEventRightValueField:17];
  [v77 setEventPressedValueField:21];
  v80 = MEMORY[0x1E69A06B8];
  v81 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  v82 = [v77 localizedName];
  v83 = [v77 symbol];
  v84 = [v80 sourceWithElementAliases:v81 localizedName:v82 symbol:v83 direction:10];
  v176 = v84;
  v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v176 count:1];
  [v77 setXSources:v85];

  v86 = MEMORY[0x1E69A06B8];
  v87 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  v88 = [v77 localizedName];
  v89 = [v77 symbol];
  v90 = [v86 sourceWithElementAliases:v87 localizedName:v88 symbol:v89 direction:5];
  v175 = v90;
  v91 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v175 count:1];
  [v77 setYSources:v91];

  v92 = MEMORY[0x1E69A06B8];
  v93 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  v94 = [v77 localizedName];
  v95 = [v77 symbol];
  v96 = [v92 sourceWithElementAliases:v93 localizedName:v94 symbol:v95 direction:1];
  v174 = v96;
  v97 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v174 count:1];
  [v77 setUpSources:v97];

  v98 = MEMORY[0x1E69A06B8];
  v99 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  v100 = [v77 localizedName];
  v101 = [v77 symbol];
  v102 = [v98 sourceWithElementAliases:v99 localizedName:v100 symbol:v101 direction:2];
  v173 = v102;
  v103 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v173 count:1];
  [v77 setRightSources:v103];

  v104 = MEMORY[0x1E69A06B8];
  v105 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  v106 = [v77 localizedName];
  v107 = [v77 symbol];
  v108 = [v104 sourceWithElementAliases:v105 localizedName:v106 symbol:v107 direction:4];
  v172 = v108;
  v109 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v172 count:1];
  [v77 setDownSources:v109];

  v110 = MEMORY[0x1E69A06B8];
  v111 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  v112 = [v77 localizedName];
  v113 = [v77 symbol];
  v114 = [v110 sourceWithElementAliases:v111 localizedName:v112 symbol:v113 direction:8];
  v171 = v114;
  v115 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v171 count:1];
  [v77 setLeftSources:v115];

  v116 = v159;
  v117 = v152;

  v118 = MEMORY[0x1E69A06B8];
  v119 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick Button"];
  v120 = *MEMORY[0x1E69A0628];
  v121 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r.joystick.press.down"];
  v122 = [v118 sourceWithElementAliases:v119 localizedName:v120 symbol:v121];
  v170 = v122;
  v123 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v170 count:1];
  [v77 setPressedSources:v123];

  v124 = v153;
  v125 = v154;
  v126 = objc_opt_new();
  v169[0] = v154;
  v169[1] = v153;
  v169[2] = v152;
  v169[3] = v159;
  v169[4] = v167;
  v169[5] = v166;
  v169[6] = v165;
  v169[7] = v164;
  v169[8] = v163;
  v169[9] = v162;
  v169[10] = v161;
  v169[11] = v160;
  v151 = v32;
  v169[12] = v32;
  v169[13] = v77;
  v127 = [MEMORY[0x1E695DEC8] arrayWithObjects:v169 count:14];
  [v126 setElements:v127];

  if (v155 == 3)
  {
    v143 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.share"];
    v144 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Share"];
    [v143 setAliases:v144];

    [v143 setLocalizedName:*MEMORY[0x1E69A03A0]];
    v145 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"square.and.arrow.up"];
    [v143 setSymbol:v145];

    [v143 setEventPressedValueField:40];
    v131 = [v126 elements];
    v134 = [v131 arrayByAddingObject:v143];
    [v126 setElements:v134];
  }

  else
  {
    if (v155 != 1)
    {
      goto LABEL_6;
    }

    v156 = v126;
    v128 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.paddle.1"];
    v129 = [MEMORY[0x1E695DFD8] setWithObject:@"Paddle 1"];
    [v128 setAliases:v129];

    v150 = v128;
    [v128 setLocalizedName:*MEMORY[0x1E69A0608]];
    v130 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"1.circle"];
    [v128 setSymbol:v130];

    [v128 setEventPressedValueField:25];
    v131 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.paddle.2"];
    v132 = [MEMORY[0x1E695DFD8] setWithObject:@"Paddle 2"];
    [v131 setAliases:v132];

    [v131 setLocalizedName:*MEMORY[0x1E69A0610]];
    v133 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"2.circle"];
    [v131 setSymbol:v133];

    [v131 setEventPressedValueField:26];
    v134 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.paddle.3"];
    v135 = [MEMORY[0x1E695DFD8] setWithObject:@"Paddle 3"];
    [v134 setAliases:v135];

    [v134 setLocalizedName:*MEMORY[0x1E69A0618]];
    v136 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"3.circle"];
    [v134 setSymbol:v136];

    [v134 setEventPressedValueField:27];
    v137 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.paddle.4"];
    v138 = [MEMORY[0x1E695DFD8] setWithObject:@"Paddle 4"];
    [v137 setAliases:v138];

    [v137 setLocalizedName:*MEMORY[0x1E69A0620]];
    v139 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"4.circle"];
    [v137 setSymbol:v139];

    [v137 setEventPressedValueField:28];
    v140 = [v156 elements];
    v168[0] = v150;
    v168[1] = v131;
    v168[2] = v134;
    v168[3] = v137;
    v141 = [MEMORY[0x1E695DEC8] arrayWithObjects:v168 count:4];
    v142 = [v140 arrayByAddingObjectsFromArray:v141];
    [v156 setElements:v142];

    v143 = v150;
    v125 = v154;
    v124 = v153;
    v117 = v152;
    v116 = v159;

    v126 = v156;
  }

LABEL_6:
  v146 = v126;
  v147 = [[_GCControllerInputComponentDescription alloc] initWithIdentifier:v157 controllerInputs:v126 bindings:v158];

  v148 = *MEMORY[0x1E69E9840];

  return v147;
}

+ (int64_t)physicalDeviceGetIndicatedPlayerIndex:(id)a3
{
  v3 = [a3 serviceInfo];
  v4 = IOHIDServiceClientCopyProperty([v3 service], @"LEDMode");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 unsignedIntValue];
    if ((v5 - 6) >= 4)
    {
      v6 = -1;
    }

    else
    {
      v6 = (v5 - 6);
    }
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

+ (void)physicalDevice:(id)a3 setIndicatedPlayerIndex:(int64_t)a4
{
  if (a4 >= 4)
  {
    v4 = 6;
  }

  else
  {
    v4 = a4 + 6;
  }

  v6 = [a3 serviceInfo];
  v5 = [v6 service];
  IOHIDServiceClientSetProperty(v5, @"LEDMode", [MEMORY[0x1E696AD98] numberWithUnsignedChar:v4]);
}

+ (BOOL)physicalDeviceSupportsBattery:(id)a3
{
  v3 = [a3 serviceInfo];
  v4 = [v3 numberPropertyForKey:@"ProductID"];
  v5 = [v4 unsignedIntValue];

  return v5 != 654;
}

+ (void)physicalDevice:(id)a3 getBatteryWithReply:(id)a4
{
  v5 = a4;
  v6 = [a3 batteryServiceServer];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72___GCMicrosoftXboxControllerProfile_physicalDevice_getBatteryWithReply___block_invoke;
  v8[3] = &unk_1E8419578;
  v9 = v5;
  v7 = v5;
  [v6 readBatteryWithReply:v8];
}

+ (id)physicalDeviceGetHapticCapabilities:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v3 = [a3 serviceInfo];
  v4 = [v3 numberPropertyForKey:@"ProductID"];
  v5 = [v4 unsignedIntValue];

  v6 = [v3 stringPropertyForKey:@"Product"];
  if (([v6 containsString:@"8BitDo M30"] & 1) != 0 || v5 == 2828)
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  else
  {
    if (v5 == 654)
    {
      v7 = [[GCHapticActuator alloc] initWithLabel:@"Low Band" type:0 index:0];
      v15[0] = v7;
      v8 = [[GCHapticActuator alloc] initWithLabel:@"High Band" type:0 index:1];
      v15[1] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    }

    else
    {
      v7 = [[GCHapticActuator alloc] initWithLabel:@"Low Band" type:0 index:0];
      v14[0] = v7;
      v8 = [[GCHapticActuator alloc] initWithLabel:@"High Band" type:0 index:1];
      v14[1] = v8;
      v10 = [[GCHapticActuator alloc] initWithLabel:@"Left Trigger" type:0 index:2];
      v14[2] = v10;
      v11 = [[GCHapticActuator alloc] initWithLabel:@"Right Trigger" type:0 index:3];
      v14[3] = v11;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:4];
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)physicalDeviceGetHapticCapabilityGraph:(id)a3
{
  v3 = [a3 serviceInfo];
  v4 = [v3 numberPropertyForKey:@"ProductID"];
  v5 = [v4 unsignedIntValue];

  v6 = objc_opt_class();
  if (v5 == 654)
  {
    v7 = @"Xbox360HapticCapabilityGraph";
  }

  else
  {
    v7 = @"XboxHapticCapabilityGraph";
  }

  v8 = loadNSDictionaryFromJSON(v6, v7);
  v9 = [[GCHapticCapabilityGraph alloc] initWithJSONDictionaryRepresentation:v8];

  return v9;
}

@end