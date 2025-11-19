@interface _GCNintendoN64ControllerProfile
+ (id)logicalDevice:(id)a3 makeControllerInputDescriptionWithIdentifier:(id)a4 bindings:(id)a5;
+ (id)logicalDevice:(id)a3 makeControllerPhysicalInputProfileDescriptionWithIdentifier:(id)a4 bindings:(id)a5;
@end

@implementation _GCNintendoN64ControllerProfile

+ (id)logicalDevice:(id)a3 makeControllerPhysicalInputProfileDescriptionWithIdentifier:(id)a4 bindings:(id)a5
{
  v49[12] = *MEMORY[0x1E69E9840];
  v44 = a5;
  v43 = a4;
  v6 = [GCDeviceButtonInputDescription alloc];
  v7 = [*MEMORY[0x1E69A0530] key];
  v47 = [(GCDeviceButtonInputDescription *)v6 initWithName:@"Button A" additionalAliases:0 attributes:2 nameLocalizationKey:v7 symbolName:@"a.circle" sourceAttributes:1 sourceExtendedEventField:4];

  v8 = [GCDeviceButtonInputDescription alloc];
  v9 = [*MEMORY[0x1E69A0538] key];
  v45 = [(GCDeviceButtonInputDescription *)v8 initWithName:@"Button B" additionalAliases:0 attributes:2 nameLocalizationKey:v9 symbolName:@"b.circle" sourceAttributes:1 sourceExtendedEventField:5];

  v10 = [GCDeviceButtonInputDescription alloc];
  v11 = [*MEMORY[0x1E69A0580] key];
  v48 = [(GCDeviceButtonInputDescription *)v10 initWithName:@"Left Shoulder" additionalAliases:0 attributes:2 nameLocalizationKey:v11 symbolName:@"l.button.roundedbottom.horizontal" sourceAttributes:1 sourceExtendedEventField:8];

  v12 = [GCDeviceButtonInputDescription alloc];
  v13 = [*MEMORY[0x1E69A05C0] key];
  v46 = [(GCDeviceButtonInputDescription *)v12 initWithName:@"Right Shoulder" additionalAliases:0 attributes:2 nameLocalizationKey:v13 symbolName:@"r.button.roundedbottom.horizontal" sourceAttributes:1 sourceExtendedEventField:9];

  v14 = [GCDeviceButtonInputDescription alloc];
  v15 = [*MEMORY[0x1E69A05B8] key];
  v42 = [(GCDeviceButtonInputDescription *)v14 initWithName:@"Left Trigger" additionalAliases:0 attributes:2 nameLocalizationKey:v15 symbolName:@"zl.button.roundedtop.horizontal" sourceAttributes:1 sourceExtendedEventField:18];

  v16 = [GCDeviceButtonInputDescription alloc];
  v17 = [*MEMORY[0x1E69A05D0] key];
  v41 = [(GCDeviceButtonInputDescription *)v16 initWithName:@"Right Trigger" additionalAliases:0 attributes:2 nameLocalizationKey:v17 symbolName:@"zr.button.roundedtop.horizontal" sourceAttributes:1 sourceExtendedEventField:19];

  v18 = [GCDeviceButtonInputDescription alloc];
  v19 = [*MEMORY[0x1E69A05A8] key];
  v20 = [(GCDeviceButtonInputDescription *)v18 initWithName:@"Button Menu" additionalAliases:0 attributes:0x4000 nameLocalizationKey:v19 symbolName:@"line.horizontal.3.circle" sourceAttributes:1 sourceExtendedEventField:23];

  v21 = [GCDeviceButtonInputDescription alloc];
  v22 = [*MEMORY[0x1E69A0540] key];
  v23 = [(GCDeviceButtonInputDescription *)v21 initWithName:@"Button Home" additionalAliases:0 attributes:49152 nameLocalizationKey:v22 symbolName:@"house.circle" sourceAttributes:1 sourceExtendedEventField:22];

  v24 = [GCDeviceButtonInputDescription alloc];
  v25 = [*MEMORY[0x1E69A03A0] key];
  v40 = [(GCDeviceButtonInputDescription *)v24 initWithName:@"Button Share" additionalAliases:0 attributes:49152 nameLocalizationKey:v25 symbolName:@"circle.square" sourceAttributes:1 sourceExtendedEventField:40];

  v26 = [GCDeviceDirectionPadDescription alloc];
  v27 = [*MEMORY[0x1E69A05A0] key];
  v39 = [(GCDeviceDirectionPadDescription *)v26 initWithName:@"Right Thumbstick" additionalAliases:0 attributes:2 nameLocalizationKey:v27 symbolName:@"circle.grid.cross" sourceAttributes:1 sourceUpExtendedEventField:14 sourceDownExtendedEventField:15 sourceLeftExtendedEventField:16 sourceRightExtendedEventField:17];

  v28 = [GCDeviceDirectionPadDescription alloc];
  v29 = [*MEMORY[0x1E69A0598] key];
  v38 = [(GCDeviceDirectionPadDescription *)v28 initWithName:@"Direction Pad" additionalAliases:0 attributes:2 nameLocalizationKey:v29 symbolName:@"dpad" sourceAttributes:1 sourceUpExtendedEventField:0 sourceDownExtendedEventField:1 sourceLeftExtendedEventField:2 sourceRightExtendedEventField:3];

  v30 = [GCDeviceDirectionPadDescription alloc];
  v31 = [*MEMORY[0x1E69A05B0] key];
  v32 = [(GCDeviceDirectionPadDescription *)v30 initWithName:@"Left Thumbstick" additionalAliases:0 attributes:2 nameLocalizationKey:v31 symbolName:@"l.joystick" sourceAttributes:0 sourceUpExtendedEventField:10 sourceDownExtendedEventField:11 sourceLeftExtendedEventField:12 sourceRightExtendedEventField:13];

  v33 = [_GCDevicePhysicalInputComponentDescription alloc];
  v49[0] = v47;
  v49[1] = v45;
  v49[2] = v48;
  v49[3] = v46;
  v49[4] = v42;
  v49[5] = v41;
  v49[6] = v20;
  v49[7] = v23;
  v49[8] = v40;
  v49[9] = v39;
  v49[10] = v38;
  v49[11] = v32;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:12];
  v35 = [(_GCDevicePhysicalInputComponentDescription *)v33 initWithIdentifier:v43 elements:v34 bindings:v44];

  v36 = *MEMORY[0x1E69E9840];

  return v35;
}

+ (id)logicalDevice:(id)a3 makeControllerInputDescriptionWithIdentifier:(id)a4 bindings:(id)a5
{
  v141[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69A0690];
  v122 = a5;
  v121 = a4;
  v128 = [v6 descriptionWithIdentifier:@"button.a"];
  v7 = [MEMORY[0x1E695DFD8] setWithObject:@"Button A"];
  [v128 setAliases:v7];

  [v128 setLocalizedName:*MEMORY[0x1E69A0530]];
  v8 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"a.circle"];
  [v128 setSymbol:v8];

  [v128 setEventPressedValueField:4];
  v127 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.b"];
  v9 = [MEMORY[0x1E695DFD8] setWithObject:@"Button B"];
  [v127 setAliases:v9];

  [v127 setLocalizedName:*MEMORY[0x1E69A0538]];
  v10 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"b.circle"];
  [v127 setSymbol:v10];

  [v127 setEventPressedValueField:5];
  v126 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.l"];
  v11 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Shoulder"];
  [v126 setAliases:v11];

  [v126 setLocalizedName:*MEMORY[0x1E69A0580]];
  v12 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l.button.roundedbottom.horizontal"];
  [v126 setSymbol:v12];

  [v126 setEventPressedValueField:8];
  v125 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.r"];
  v13 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Shoulder"];
  [v125 setAliases:v13];

  [v125 setLocalizedName:*MEMORY[0x1E69A05C0]];
  v14 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r.button.roundedbottom.horizontal"];
  [v125 setSymbol:v14];

  [v125 setEventPressedValueField:9];
  v124 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.z"];
  v15 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Trigger"];
  [v124 setAliases:v15];

  [v124 setLocalizedName:*MEMORY[0x1E69A05B8]];
  v16 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"zl.button.roundedtop.horizontal"];
  [v124 setSymbol:v16];

  [v124 setEventPressedValueField:18];
  v120 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.zr"];
  v17 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Trigger"];
  [v120 setAliases:v17];

  [v120 setLocalizedName:*MEMORY[0x1E69A05D0]];
  v18 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"zr.button.roundedtop.horizontal"];
  [v120 setSymbol:v18];

  [v120 setEventPressedValueField:19];
  v123 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.start"];
  v19 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Menu"];
  [v123 setAliases:v19];

  [v123 setLocalizedName:*MEMORY[0x1E69A05A8]];
  v20 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"line.horizontal.3.circle"];
  [v123 setSymbol:v20];

  [v123 setEventPressedValueField:23];
  v119 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.home"];
  v21 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Home"];
  [v119 setAliases:v21];

  [v119 setLocalizedName:*MEMORY[0x1E69A0540]];
  v22 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"house.circle"];
  [v119 setSymbol:v22];

  [v119 setEventPressedValueField:22];
  v118 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.capture"];
  v23 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Share"];
  [v118 setAliases:v23];

  [v118 setLocalizedName:*MEMORY[0x1E69A03A0]];
  v24 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"circle.square"];
  [v118 setSymbol:v24];

  [v118 setEventPressedValueField:40];
  v117 = [MEMORY[0x1E69A06A8] descriptionWithIdentifier:@"dpad"];
  v25 = [MEMORY[0x1E695DFD8] setWithObject:@"Direction Pad"];
  [v117 setAliases:v25];

  [v117 setLocalizedName:*MEMORY[0x1E69A0598]];
  v26 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"dpad"];
  [v117 setSymbol:v26];

  [v117 setAnalog:0];
  [v117 setEventUpValueField:0];
  [v117 setEventDownValueField:1];
  [v117 setEventLeftValueField:2];
  [v117 setEventRightValueField:3];
  v27 = [MEMORY[0x1E69A06A8] descriptionWithIdentifier:@"buttons.c"];
  v28 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  [v27 setAliases:v28];

  v29 = *MEMORY[0x1E69A05A0];
  [v27 setLocalizedName:*MEMORY[0x1E69A05A0]];
  v30 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"circle.grid.cross"];
  [v27 setSymbol:v30];

  [v27 setAnalog:0];
  [v27 setEventUpValueField:14];
  [v27 setEventDownValueField:15];
  [v27 setEventLeftValueField:16];
  [v27 setEventRightValueField:17];
  v31 = MEMORY[0x1E69A06B8];
  v32 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  v33 = objc_alloc(MEMORY[0x1E69A06C8]);
  v34 = [v33 initWithFormat:*MEMORY[0x1E69A03E0] arg:v29];
  v35 = [v27 symbol];
  v36 = [v31 sourceWithElementAliases:v32 localizedName:v34 symbol:v35 direction:10];
  v141[0] = v36;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v141 count:1];
  [v27 setXSources:v37];

  v38 = MEMORY[0x1E69A06B8];
  v39 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  v40 = objc_alloc(MEMORY[0x1E69A06C8]);
  v41 = [v40 initWithFormat:*MEMORY[0x1E69A03E8] arg:v29];
  v42 = [v27 symbol];
  v43 = [v38 sourceWithElementAliases:v39 localizedName:v41 symbol:v42 direction:5];
  v140 = v43;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v140 count:1];
  [v27 setYSources:v44];

  v45 = MEMORY[0x1E69A06B8];
  v46 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  v47 = objc_alloc(MEMORY[0x1E69A06C8]);
  v48 = [v47 initWithFormat:*MEMORY[0x1E69A03D8] arg:v29];
  v49 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"circle.grid.cross.up.filled"];
  v50 = [v45 sourceWithElementAliases:v46 localizedName:v48 symbol:v49 direction:1];
  v139 = v50;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v139 count:1];
  [v27 setUpSources:v51];

  v52 = MEMORY[0x1E69A06B8];
  v53 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  v54 = objc_alloc(MEMORY[0x1E69A06C8]);
  v55 = [v54 initWithFormat:*MEMORY[0x1E69A03D0] arg:v29];
  v56 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"circle.grid.cross.right.filled"];
  v57 = [v52 sourceWithElementAliases:v53 localizedName:v55 symbol:v56 direction:2];
  v138 = v57;
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v138 count:1];
  [v27 setRightSources:v58];

  v59 = MEMORY[0x1E69A06B8];
  v60 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  v61 = objc_alloc(MEMORY[0x1E69A06C8]);
  v62 = [v61 initWithFormat:*MEMORY[0x1E69A03C0] arg:v29];
  v63 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"circle.grid.cross.down.filled"];
  v64 = [v59 sourceWithElementAliases:v60 localizedName:v62 symbol:v63 direction:4];
  v137 = v64;
  v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v137 count:1];
  [v27 setDownSources:v65];

  v66 = MEMORY[0x1E69A06B8];
  v67 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  v68 = objc_alloc(MEMORY[0x1E69A06C8]);
  v69 = [v68 initWithFormat:*MEMORY[0x1E69A03C8] arg:v29];
  v70 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"circle.grid.cross.left.filled"];
  v71 = [v66 sourceWithElementAliases:v67 localizedName:v69 symbol:v70 direction:8];
  v136 = v71;
  v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v136 count:1];
  [v27 setLeftSources:v72];

  v73 = [MEMORY[0x1E69A06A8] descriptionWithIdentifier:@"controlstick"];
  v74 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Left Thumbstick", 0}];
  [v73 setAliases:v74];

  [v73 setLocalizedName:*MEMORY[0x1E69A05B0]];
  v75 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l.joystick"];
  [v73 setSymbol:v75];

  [v73 setAnalog:1];
  [v73 setEventUpValueField:10];
  [v73 setEventDownValueField:11];
  [v73 setEventLeftValueField:12];
  [v73 setEventRightValueField:13];
  v76 = MEMORY[0x1E69A06B8];
  v77 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  v78 = [v73 localizedName];
  v79 = [v73 symbol];
  v80 = [v76 sourceWithElementAliases:v77 localizedName:v78 symbol:v79 direction:10];
  v135 = v80;
  v81 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v135 count:1];
  [v73 setXSources:v81];

  v82 = MEMORY[0x1E69A06B8];
  v83 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  v84 = [v73 localizedName];
  v85 = [v73 symbol];
  v86 = [v82 sourceWithElementAliases:v83 localizedName:v84 symbol:v85 direction:5];
  v134 = v86;
  v87 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v134 count:1];
  [v73 setYSources:v87];

  v88 = MEMORY[0x1E69A06B8];
  v89 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  v90 = [v73 localizedName];
  v91 = [v73 symbol];
  v92 = [v88 sourceWithElementAliases:v89 localizedName:v90 symbol:v91 direction:1];
  v133 = v92;
  v93 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v133 count:1];
  [v73 setUpSources:v93];

  v94 = MEMORY[0x1E69A06B8];
  v95 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  v96 = [v73 localizedName];
  v97 = [v73 symbol];
  v98 = [v94 sourceWithElementAliases:v95 localizedName:v96 symbol:v97 direction:2];
  v132 = v98;
  v99 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v132 count:1];
  [v73 setRightSources:v99];

  v100 = MEMORY[0x1E69A06B8];
  v101 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  v102 = [v73 localizedName];
  v103 = [v73 symbol];
  v104 = [v100 sourceWithElementAliases:v101 localizedName:v102 symbol:v103 direction:4];
  v131 = v104;
  v105 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v131 count:1];
  [v73 setDownSources:v105];

  v106 = MEMORY[0x1E69A06B8];
  v107 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  v108 = [v73 localizedName];
  v109 = [v73 symbol];
  v110 = [v106 sourceWithElementAliases:v107 localizedName:v108 symbol:v109 direction:8];
  v130 = v110;
  v111 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v130 count:1];
  [v73 setLeftSources:v111];

  v112 = objc_opt_new();
  v129[0] = v119;
  v129[1] = v118;
  v129[2] = v123;
  v129[3] = v128;
  v129[4] = v127;
  v129[5] = v126;
  v129[6] = v125;
  v129[7] = v124;
  v129[8] = v120;
  v129[9] = v73;
  v129[10] = v27;
  v129[11] = v117;
  v113 = [MEMORY[0x1E695DEC8] arrayWithObjects:v129 count:12];
  [v112 setElements:v113];

  v114 = [[_GCControllerInputComponentDescription alloc] initWithIdentifier:v121 controllerInputs:v112 bindings:v122];
  v115 = *MEMORY[0x1E69E9840];

  return v114;
}

@end