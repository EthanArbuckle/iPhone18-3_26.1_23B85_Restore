@interface _GCNintendoProControllerProfile
+ (BOOL)logicalDevice:(id)a3 getSystemButtonName:(id *)a4 sfSymbolName:(id *)a5 needsMFiCompatibility:(BOOL *)a6;
+ (id)logicalDevice:(id)a3 makeControllerInputDescriptionWithIdentifier:(id)a4 bindings:(id)a5;
+ (id)logicalDevice:(id)a3 makeControllerMotionWithIdentifier:(id)a4;
+ (id)logicalDevice:(id)a3 makeControllerPhysicalInputProfileWithIdentifier:(id)a4;
+ (id)physicalDeviceGetHapticCapabilities:(id)a3;
+ (id)physicalDeviceGetHapticCapabilityGraph:(id)a3;
+ (void)physicalDevice:(id)a3 getSensorsEnabledWithReply:(id)a4;
@end

@implementation _GCNintendoProControllerProfile

+ (id)physicalDeviceGetHapticCapabilities:(id)a3
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = [[GCHapticActuator alloc] initWithLabel:@"Left Handle" type:1 index:0];
  v8[0] = v3;
  v4 = [[GCHapticActuator alloc] initWithLabel:@"Right Handle" type:1 index:1];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)physicalDeviceGetHapticCapabilityGraph:(id)a3
{
  v3 = objc_opt_class();
  v4 = loadNSDictionaryFromJSON(v3, @"ProControllerHapticCapabilityGraph");
  v5 = [[GCHapticCapabilityGraph alloc] initWithJSONDictionaryRepresentation:v4];

  return v5;
}

+ (void)physicalDevice:(id)a3 getSensorsEnabledWithReply:(id)a4
{
  v5 = a4;
  v6 = [a3 motionServiceServer];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77___GCNintendoProControllerProfile_physicalDevice_getSensorsEnabledWithReply___block_invoke;
  v8[3] = &unk_1E8419550;
  v9 = v5;
  v7 = v5;
  [v6 readSensorsActiveWithReply:v8];
}

+ (BOOL)logicalDevice:(id)a3 getSystemButtonName:(id *)a4 sfSymbolName:(id *)a5 needsMFiCompatibility:(BOOL *)a6
{
  *a4 = *MEMORY[0x1E69A0540];
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
  v21 = 1;
  v8 = [(GCExtendedGamepad *)[_GCNintendoSwitchGamepad alloc] initWithIdentifier:v6 info:v11];
  for (j = 0; j != 1584; j += 72)
  {
    __destructor_8_s0_s48_s56_s64(v11 + j);
  }

  return v8;
}

+ (id)logicalDevice:(id)a3 makeControllerInputDescriptionWithIdentifier:(id)a4 bindings:(id)a5
{
  v157[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69A0690];
  v134 = a5;
  v133 = a4;
  v142 = [v6 descriptionWithIdentifier:@"button.home"];
  v7 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Home"];
  [v142 setAliases:v7];

  [v142 setLocalizedName:*MEMORY[0x1E69A0540]];
  v8 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"house.circle"];
  [v142 setSymbol:v8];

  [v142 setEventPressedValueField:22];
  v141 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.capture"];
  v9 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Share"];
  [v141 setAliases:v9];

  [v141 setLocalizedName:*MEMORY[0x1E69A03A0]];
  v10 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"circle.square"];
  [v141 setSymbol:v10];

  [v141 setEventPressedValueField:40];
  v140 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.plus"];
  v11 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Menu"];
  [v140 setAliases:v11];

  [v140 setLocalizedName:*MEMORY[0x1E69A0550]];
  v12 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"plus.circle"];
  [v140 setSymbol:v12];

  [v140 setEventPressedValueField:23];
  v139 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.minus"];
  v13 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Options"];
  [v139 setAliases:v13];

  [v139 setLocalizedName:*MEMORY[0x1E69A0558]];
  v14 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"minus.circle"];
  [v139 setSymbol:v14];

  [v139 setEventPressedValueField:24];
  v138 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.a"];
  v15 = [MEMORY[0x1E695DFD8] setWithObject:@"Button A"];
  [v138 setAliases:v15];

  [v138 setLocalizedName:*MEMORY[0x1E69A0530]];
  v16 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"a.circle"];
  [v138 setSymbol:v16];

  [v138 setEventPressedValueField:4];
  v137 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.b"];
  v17 = [MEMORY[0x1E695DFD8] setWithObject:@"Button B"];
  [v137 setAliases:v17];

  [v137 setLocalizedName:*MEMORY[0x1E69A0538]];
  v18 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"b.circle"];
  [v137 setSymbol:v18];

  [v137 setEventPressedValueField:5];
  v136 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.x"];
  v19 = [MEMORY[0x1E695DFD8] setWithObject:@"Button X"];
  [v136 setAliases:v19];

  [v136 setLocalizedName:*MEMORY[0x1E69A0568]];
  v20 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"x.circle"];
  [v136 setSymbol:v20];

  [v136 setEventPressedValueField:6];
  v135 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.y"];
  v21 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Y"];
  [v135 setAliases:v21];

  [v135 setLocalizedName:*MEMORY[0x1E69A0570]];
  v22 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"y.circle"];
  [v135 setSymbol:v22];

  [v135 setEventPressedValueField:7];
  v132 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.l"];
  v23 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Shoulder"];
  [v132 setAliases:v23];

  [v132 setLocalizedName:*MEMORY[0x1E69A0580]];
  v24 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l1.rectangle.roundedbottom"];
  [v132 setSymbol:v24];

  [v132 setEventPressedValueField:8];
  v131 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.r"];
  v25 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Shoulder"];
  [v131 setAliases:v25];

  [v131 setLocalizedName:*MEMORY[0x1E69A05C0]];
  v26 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r1.rectangle.roundedbottom"];
  [v131 setSymbol:v26];

  [v131 setEventPressedValueField:9];
  v130 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.zl"];
  v27 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Trigger"];
  [v130 setAliases:v27];

  [v130 setLocalizedName:*MEMORY[0x1E69A0590]];
  v28 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"zl.rectangle.roundedtop"];
  [v130 setSymbol:v28];

  [v130 setEventPressedValueField:18];
  v129 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.zr"];
  v29 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Trigger"];
  [v129 setAliases:v29];

  [v129 setLocalizedName:*MEMORY[0x1E69A05D0]];
  v30 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"zr.rectangle.roundedtop"];
  [v129 setSymbol:v30];

  [v129 setEventPressedValueField:19];
  v128 = [MEMORY[0x1E69A06A8] descriptionWithIdentifier:@"dpad"];
  v31 = [MEMORY[0x1E695DFD8] setWithObject:@"Direction Pad"];
  [v128 setAliases:v31];

  [v128 setLocalizedName:*MEMORY[0x1E69A0578]];
  v32 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"dpad"];
  [v128 setSymbol:v32];

  [v128 setAnalog:0];
  [v128 setEventUpValueField:0];
  [v128 setEventDownValueField:1];
  [v128 setEventLeftValueField:2];
  [v128 setEventRightValueField:3];
  v33 = [MEMORY[0x1E69A06A0] descriptionWithIdentifier:@"stick.left"];
  v34 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Left Thumbstick", @"Left Thumbstick Button", 0}];
  [v33 setAliases:v34];

  [v33 setLocalizedName:*MEMORY[0x1E69A0588]];
  v35 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l.joystick"];
  [v33 setSymbol:v35];

  [v33 setAnalog:1];
  [v33 setEventUpValueField:10];
  [v33 setEventDownValueField:11];
  [v33 setEventLeftValueField:12];
  [v33 setEventRightValueField:13];
  [v33 setEventPressedValueField:20];
  v36 = MEMORY[0x1E69A06B8];
  v37 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  v38 = [v33 localizedName];
  v39 = [v33 symbol];
  v40 = [v36 sourceWithElementAliases:v37 localizedName:v38 symbol:v39 direction:10];
  v157[0] = v40;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v157 count:1];
  [v33 setXSources:v41];

  v42 = MEMORY[0x1E69A06B8];
  v43 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  v44 = [v33 localizedName];
  v45 = [v33 symbol];
  v46 = [v42 sourceWithElementAliases:v43 localizedName:v44 symbol:v45 direction:5];
  v156 = v46;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v156 count:1];
  [v33 setYSources:v47];

  v48 = MEMORY[0x1E69A06B8];
  v49 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  v50 = [v33 localizedName];
  v51 = [v33 symbol];
  v52 = [v48 sourceWithElementAliases:v49 localizedName:v50 symbol:v51 direction:1];
  v155 = v52;
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v155 count:1];
  [v33 setUpSources:v53];

  v54 = MEMORY[0x1E69A06B8];
  v55 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  v56 = [v33 localizedName];
  v57 = [v33 symbol];
  v58 = [v54 sourceWithElementAliases:v55 localizedName:v56 symbol:v57 direction:2];
  v154 = v58;
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v154 count:1];
  [v33 setRightSources:v59];

  v60 = MEMORY[0x1E69A06B8];
  v61 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  v62 = [v33 localizedName];
  v63 = [v33 symbol];
  v64 = [v60 sourceWithElementAliases:v61 localizedName:v62 symbol:v63 direction:4];
  v153 = v64;
  v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v153 count:1];
  [v33 setDownSources:v65];

  v66 = MEMORY[0x1E69A06B8];
  v67 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  v68 = [v33 localizedName];
  v69 = [v33 symbol];
  v70 = [v66 sourceWithElementAliases:v67 localizedName:v68 symbol:v69 direction:8];
  v152 = v70;
  v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v152 count:1];
  [v33 setLeftSources:v71];

  v72 = MEMORY[0x1E69A06B8];
  v73 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick Button"];
  v74 = *MEMORY[0x1E69A0548];
  v75 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l.joystick.press.down"];
  v76 = [v72 sourceWithElementAliases:v73 localizedName:v74 symbol:v75];
  v151 = v76;
  v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v151 count:1];
  [v33 setPressedSources:v77];

  v78 = [MEMORY[0x1E69A06A0] descriptionWithIdentifier:@"stick.right"];
  v79 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Right Thumbstick", @"Right Thumbstick Button", 0}];
  [v78 setAliases:v79];

  [v78 setLocalizedName:*MEMORY[0x1E69A05C8]];
  v80 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r.joystick"];
  [v78 setSymbol:v80];

  [v78 setAnalog:1];
  [v78 setEventUpValueField:14];
  [v78 setEventDownValueField:15];
  [v78 setEventLeftValueField:16];
  [v78 setEventRightValueField:17];
  [v78 setEventPressedValueField:21];
  v81 = MEMORY[0x1E69A06B8];
  v82 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  v83 = [v78 localizedName];
  v84 = [v78 symbol];
  v85 = [v81 sourceWithElementAliases:v82 localizedName:v83 symbol:v84 direction:10];
  v150 = v85;
  v86 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v150 count:1];
  [v78 setXSources:v86];

  v87 = MEMORY[0x1E69A06B8];
  v88 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  v89 = [v78 localizedName];
  v90 = [v78 symbol];
  v91 = [v87 sourceWithElementAliases:v88 localizedName:v89 symbol:v90 direction:5];
  v149 = v91;
  v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v149 count:1];
  [v78 setYSources:v92];

  v93 = MEMORY[0x1E69A06B8];
  v94 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  v95 = [v78 localizedName];
  v96 = [v78 symbol];
  v97 = [v93 sourceWithElementAliases:v94 localizedName:v95 symbol:v96 direction:1];
  v148 = v97;
  v98 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v148 count:1];
  [v78 setUpSources:v98];

  v99 = MEMORY[0x1E69A06B8];
  v100 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  v101 = [v78 localizedName];
  v102 = [v78 symbol];
  v103 = [v99 sourceWithElementAliases:v100 localizedName:v101 symbol:v102 direction:2];
  v147 = v103;
  v104 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v147 count:1];
  [v78 setRightSources:v104];

  v105 = MEMORY[0x1E69A06B8];
  v106 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  v107 = [v78 localizedName];
  v108 = [v78 symbol];
  v109 = [v105 sourceWithElementAliases:v106 localizedName:v107 symbol:v108 direction:4];
  v146 = v109;
  v110 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v146 count:1];
  [v78 setDownSources:v110];

  v111 = MEMORY[0x1E69A06B8];
  v112 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  v113 = [v78 localizedName];
  v114 = [v78 symbol];
  v115 = [v111 sourceWithElementAliases:v112 localizedName:v113 symbol:v114 direction:8];
  v145 = v115;
  v116 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v145 count:1];
  [v78 setLeftSources:v116];

  v117 = MEMORY[0x1E69A06B8];
  v118 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick Button"];
  v119 = *MEMORY[0x1E69A0560];
  v120 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r.joystick.press.down"];
  v121 = [v117 sourceWithElementAliases:v118 localizedName:v119 symbol:v120];
  v144 = v121;
  v122 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v144 count:1];
  [v78 setPressedSources:v122];

  v123 = objc_opt_new();
  v143[0] = v142;
  v143[1] = v141;
  v143[2] = v140;
  v143[3] = v139;
  v143[4] = v138;
  v143[5] = v137;
  v143[6] = v136;
  v143[7] = v135;
  v143[8] = v132;
  v143[9] = v131;
  v143[10] = v130;
  v143[11] = v129;
  v143[12] = v128;
  v143[13] = v33;
  v143[14] = v78;
  v124 = [MEMORY[0x1E695DEC8] arrayWithObjects:v143 count:15];
  [v123 setElements:v124];

  v127 = [[_GCControllerInputComponentDescription alloc] initWithIdentifier:v133 controllerInputs:v123 bindings:v134];
  v125 = *MEMORY[0x1E69E9840];

  return v127;
}

+ (id)logicalDevice:(id)a3 makeControllerMotionWithIdentifier:(id)a4
{
  v4 = a4;
  v5 = [[GCMotion alloc] initWithIdentifier:v4];

  [(GCMotion *)v5 _setHasRotationRate:1];
  [(GCMotion *)v5 _setHasAttitude:0];

  return v5;
}

@end