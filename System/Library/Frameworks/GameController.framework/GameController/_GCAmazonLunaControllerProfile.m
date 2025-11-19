@interface _GCAmazonLunaControllerProfile
+ (BOOL)logicalDevice:(id)a3 getSystemButtonName:(id *)a4 sfSymbolName:(id *)a5 needsMFiCompatibility:(BOOL *)a6;
+ (_GCPhysicalDeviceManager)deviceManager;
+ (id)logicalDevice:(id)a3 makeControllerInputDescriptionWithIdentifier:(id)a4 bindings:(id)a5;
+ (id)logicalDevice:(id)a3 makeControllerPhysicalInputProfileWithIdentifier:(id)a4;
@end

@implementation _GCAmazonLunaControllerProfile

+ (_GCPhysicalDeviceManager)deviceManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47___GCAmazonLunaControllerProfile_deviceManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (deviceManager_onceToken_6 != -1)
  {
    dispatch_once(&deviceManager_onceToken_6, block);
  }

  v2 = deviceManager_deviceManager_6;

  return v2;
}

+ (BOOL)logicalDevice:(id)a3 getSystemButtonName:(id *)a4 sfSymbolName:(id *)a5 needsMFiCompatibility:(BOOL *)a6
{
  *a4 = *MEMORY[0x1E69A04A8];
  *a5 = @"house.circle";
  return 1;
}

+ (id)logicalDevice:(id)a3 makeControllerPhysicalInputProfileWithIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
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
  v8 = [(GCExtendedGamepad *)[_GCLunaGamepad alloc] initWithIdentifier:v6 info:v11];
  for (j = 0; j != 1584; j += 72)
  {
    __destructor_8_s0_s48_s56_s64(v11 + j);
  }

  return v8;
}

+ (id)logicalDevice:(id)a3 makeControllerInputDescriptionWithIdentifier:(id)a4 bindings:(id)a5
{
  v154[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69A0690];
  v132 = a5;
  v131 = a4;
  v139 = [v6 descriptionWithIdentifier:@"button.home"];
  v7 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Home"];
  [v139 setAliases:v7];

  [v139 setLocalizedName:*MEMORY[0x1E69A04A8]];
  v8 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"house.circle"];
  [v139 setSymbol:v8];

  [v139 setEventPressedValueField:22];
  v138 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.menu"];
  v9 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Menu"];
  [v138 setAliases:v9];

  [v138 setLocalizedName:*MEMORY[0x1E69A04B8]];
  v10 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"line.horizontal.3.circle"];
  [v138 setSymbol:v10];

  [v138 setEventPressedValueField:23];
  v137 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.action"];
  v11 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Options"];
  [v137 setAliases:v11];

  [v137 setLocalizedName:*MEMORY[0x1E69A04C0]];
  v12 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"ellipsis.circle"];
  [v137 setSymbol:v12];

  [v137 setEventPressedValueField:24];
  v136 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.a"];
  v13 = [MEMORY[0x1E695DFD8] setWithObject:@"Button A"];
  [v136 setAliases:v13];

  [v136 setLocalizedName:*MEMORY[0x1E69A0498]];
  v14 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"a.circle"];
  [v136 setSymbol:v14];

  [v136 setEventPressedValueField:4];
  v135 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.b"];
  v15 = [MEMORY[0x1E695DFD8] setWithObject:@"Button B"];
  [v135 setAliases:v15];

  [v135 setLocalizedName:*MEMORY[0x1E69A04A0]];
  v16 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"b.circle"];
  [v135 setSymbol:v16];

  [v135 setEventPressedValueField:5];
  v134 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.x"];
  v17 = [MEMORY[0x1E695DFD8] setWithObject:@"Button X"];
  [v134 setAliases:v17];

  [v134 setLocalizedName:*MEMORY[0x1E69A04D0]];
  v18 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"x.circle"];
  [v134 setSymbol:v18];

  [v134 setEventPressedValueField:6];
  v133 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.y"];
  v19 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Y"];
  [v133 setAliases:v19];

  [v133 setLocalizedName:*MEMORY[0x1E69A04D8]];
  v20 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"y.circle"];
  [v133 setSymbol:v20];

  [v133 setEventPressedValueField:7];
  v130 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.left.bumper"];
  v21 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Shoulder"];
  [v130 setAliases:v21];

  [v130 setLocalizedName:*MEMORY[0x1E69A04E8]];
  v22 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"lb.rectangle.roundedbottom"];
  [v130 setSymbol:v22];

  [v130 setEventPressedValueField:8];
  v129 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.right.bumper"];
  v23 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Shoulder"];
  [v129 setAliases:v23];

  [v129 setLocalizedName:*MEMORY[0x1E69A0500]];
  v24 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"rb.rectangle.roundedbottom"];
  [v129 setSymbol:v24];

  [v129 setEventPressedValueField:9];
  v128 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.left.trigger"];
  v25 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Trigger"];
  [v128 setAliases:v25];

  [v128 setLocalizedName:*MEMORY[0x1E69A04F8]];
  v26 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"lt.rectangle.roundedtop"];
  [v128 setSymbol:v26];

  [v128 setAnalog:1];
  [v128 setEventPressedValueField:18];
  v127 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.right.trigger"];
  v27 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Trigger"];
  [v127 setAliases:v27];

  [v127 setLocalizedName:*MEMORY[0x1E69A0510]];
  v28 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"rt.rectangle.roundedtop"];
  [v127 setSymbol:v28];

  [v127 setAnalog:1];
  [v127 setEventPressedValueField:19];
  v126 = [MEMORY[0x1E69A06A8] descriptionWithIdentifier:@"dpad"];
  v29 = [MEMORY[0x1E695DFD8] setWithObject:@"Direction Pad"];
  [v126 setAliases:v29];

  [v126 setLocalizedName:*MEMORY[0x1E69A04E0]];
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

  [v31 setLocalizedName:*MEMORY[0x1E69A04F0]];
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
  v36 = [v31 localizedName];
  v37 = [v31 symbol];
  v38 = [v34 sourceWithElementAliases:v35 localizedName:v36 symbol:v37 direction:10];
  v154[0] = v38;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:1];
  [v31 setXSources:v39];

  v40 = MEMORY[0x1E69A06B8];
  v41 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  v42 = [v31 localizedName];
  v43 = [v31 symbol];
  v44 = [v40 sourceWithElementAliases:v41 localizedName:v42 symbol:v43 direction:5];
  v153 = v44;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v153 count:1];
  [v31 setYSources:v45];

  v46 = MEMORY[0x1E69A06B8];
  v47 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  v48 = [v31 localizedName];
  v49 = [v31 symbol];
  v50 = [v46 sourceWithElementAliases:v47 localizedName:v48 symbol:v49 direction:1];
  v152 = v50;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v152 count:1];
  [v31 setUpSources:v51];

  v52 = MEMORY[0x1E69A06B8];
  v53 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  v54 = [v31 localizedName];
  v55 = [v31 symbol];
  v56 = [v52 sourceWithElementAliases:v53 localizedName:v54 symbol:v55 direction:2];
  v151 = v56;
  v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v151 count:1];
  [v31 setRightSources:v57];

  v58 = MEMORY[0x1E69A06B8];
  v59 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  v60 = [v31 localizedName];
  v61 = [v31 symbol];
  v62 = [v58 sourceWithElementAliases:v59 localizedName:v60 symbol:v61 direction:4];
  v150 = v62;
  v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v150 count:1];
  [v31 setDownSources:v63];

  v64 = MEMORY[0x1E69A06B8];
  v65 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  v66 = [v31 localizedName];
  v67 = [v31 symbol];
  v68 = [v64 sourceWithElementAliases:v65 localizedName:v66 symbol:v67 direction:8];
  v149 = v68;
  v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v149 count:1];
  [v31 setLeftSources:v69];

  v70 = MEMORY[0x1E69A06B8];
  v71 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick Button"];
  v72 = *MEMORY[0x1E69A04B0];
  v73 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l.joystick.press.down"];
  v74 = [v70 sourceWithElementAliases:v71 localizedName:v72 symbol:v73];
  v148 = v74;
  v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v148 count:1];
  [v31 setPressedSources:v75];

  v76 = [MEMORY[0x1E69A06A0] descriptionWithIdentifier:@"stick.right"];
  v77 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Right Thumbstick", @"Right Thumbstick Button", 0}];
  [v76 setAliases:v77];

  [v76 setLocalizedName:*MEMORY[0x1E69A0508]];
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
  v81 = [v76 localizedName];
  v82 = [v76 symbol];
  v83 = [v79 sourceWithElementAliases:v80 localizedName:v81 symbol:v82 direction:10];
  v147 = v83;
  v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v147 count:1];
  [v76 setXSources:v84];

  v85 = MEMORY[0x1E69A06B8];
  v86 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  v87 = [v76 localizedName];
  v88 = [v76 symbol];
  v89 = [v85 sourceWithElementAliases:v86 localizedName:v87 symbol:v88 direction:5];
  v146 = v89;
  v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v146 count:1];
  [v76 setYSources:v90];

  v91 = MEMORY[0x1E69A06B8];
  v92 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  v93 = [v76 localizedName];
  v94 = [v76 symbol];
  v95 = [v91 sourceWithElementAliases:v92 localizedName:v93 symbol:v94 direction:1];
  v145 = v95;
  v96 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v145 count:1];
  [v76 setUpSources:v96];

  v97 = MEMORY[0x1E69A06B8];
  v98 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  v99 = [v76 localizedName];
  v100 = [v76 symbol];
  v101 = [v97 sourceWithElementAliases:v98 localizedName:v99 symbol:v100 direction:2];
  v144 = v101;
  v102 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v144 count:1];
  [v76 setRightSources:v102];

  v103 = MEMORY[0x1E69A06B8];
  v104 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  v105 = [v76 localizedName];
  v106 = [v76 symbol];
  v107 = [v103 sourceWithElementAliases:v104 localizedName:v105 symbol:v106 direction:4];
  v143 = v107;
  v108 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v143 count:1];
  [v76 setDownSources:v108];

  v109 = MEMORY[0x1E69A06B8];
  v110 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  v111 = [v76 localizedName];
  v112 = [v76 symbol];
  v113 = [v109 sourceWithElementAliases:v110 localizedName:v111 symbol:v112 direction:8];
  v142 = v113;
  v114 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v142 count:1];
  [v76 setLeftSources:v114];

  v115 = MEMORY[0x1E69A06B8];
  v116 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick Button"];
  v117 = *MEMORY[0x1E69A04C8];
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

  v125 = [[_GCControllerInputComponentDescription alloc] initWithIdentifier:v131 controllerInputs:v121 bindings:v132];
  v123 = *MEMORY[0x1E69E9840];

  return v125;
}

@end