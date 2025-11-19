@interface _GCNintendoSuperFamicomControllerProfile
+ (id)logicalDevice:(id)a3 makeControllerInputDescriptionWithIdentifier:(id)a4 bindings:(id)a5;
+ (id)logicalDevice:(id)a3 makeControllerPhysicalInputProfileDescriptionWithIdentifier:(id)a4 bindings:(id)a5;
@end

@implementation _GCNintendoSuperFamicomControllerProfile

+ (id)logicalDevice:(id)a3 makeControllerPhysicalInputProfileDescriptionWithIdentifier:(id)a4 bindings:(id)a5
{
  v20[9] = *MEMORY[0x1E69E9840];
  v18 = a5;
  v19 = [[GCDeviceButtonInputDescription alloc] initWithName:@"Button A" additionalAliases:0 attributes:2 nameLocalizationKey:@"BUTTON_A" symbolName:@"a.circle" sourceAttributes:1 sourceExtendedEventField:4];
  v5 = [[GCDeviceButtonInputDescription alloc] initWithName:@"Button B" additionalAliases:0 attributes:2 nameLocalizationKey:@"BUTTON_B" symbolName:@"b.circle" sourceAttributes:1 sourceExtendedEventField:5];
  v6 = [[GCDeviceButtonInputDescription alloc] initWithName:@"Button X" additionalAliases:0 attributes:2 nameLocalizationKey:@"BUTTON_X" symbolName:@"x.circle" sourceAttributes:1 sourceExtendedEventField:6];
  v7 = [[GCDeviceButtonInputDescription alloc] initWithName:@"Button Y" additionalAliases:0 attributes:2 nameLocalizationKey:@"BUTTON_Y" symbolName:@"y.circle" sourceAttributes:1 sourceExtendedEventField:7];
  v8 = [[GCDeviceButtonInputDescription alloc] initWithName:@"Left Shoulder" additionalAliases:0 attributes:2 nameLocalizationKey:@"LEFT_SHOULDER" symbolName:@"l1.rectangle.roundedbottom" sourceAttributes:1 sourceExtendedEventField:8];
  v9 = [[GCDeviceButtonInputDescription alloc] initWithName:@"Right Shoulder" additionalAliases:0 attributes:2 nameLocalizationKey:@"RIGHT_SHOULDER" symbolName:@"r1.rectangle.roundedbottom" sourceAttributes:1 sourceExtendedEventField:9];
  v17 = [[GCDeviceButtonInputDescription alloc] initWithName:@"Button Menu" additionalAliases:0 attributes:0x4000 nameLocalizationKey:@"BUTTON_MENU" symbolName:@"line.horizontal.3.circle" sourceAttributes:1 sourceExtendedEventField:23];
  v10 = [[GCDeviceButtonInputDescription alloc] initWithName:@"Button Options" additionalAliases:0 attributes:49152 nameLocalizationKey:@"BUTTON_OPTIONS" symbolName:@"ellipsis.circle" sourceAttributes:1 sourceExtendedEventField:24];
  v11 = [[GCDeviceDirectionPadDescription alloc] initWithName:@"Direction Pad" additionalAliases:0 attributes:2 nameLocalizationKey:@"DIRECTION_PAD" symbolName:@"dpad" sourceAttributes:1 sourceUpExtendedEventField:0 sourceDownExtendedEventField:1 sourceLeftExtendedEventField:2 sourceRightExtendedEventField:3];
  v12 = [_GCDeviceGamepadComponentDescription alloc];
  v20[0] = v19;
  v20[1] = v5;
  v20[2] = v6;
  v20[3] = v7;
  v20[4] = v8;
  v20[5] = v9;
  v20[6] = v17;
  v20[7] = v10;
  v20[8] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:9];
  v14 = [(_GCDevicePhysicalInputComponentDescription *)v12 initWithIdentifier:@"PhysicalInput" elements:v13 bindings:v18];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)logicalDevice:(id)a3 makeControllerInputDescriptionWithIdentifier:(id)a4 bindings:(id)a5
{
  v41[9] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69A0690];
  v39 = a5;
  v38 = a4;
  v40 = [v6 descriptionWithIdentifier:@"button.a"];
  v7 = [MEMORY[0x1E695DFD8] setWithObject:@"Button A"];
  [v40 setAliases:v7];

  [v40 setLocalizedName:*MEMORY[0x1E69A0338]];
  v8 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"a.circle"];
  [v40 setSymbol:v8];

  [v40 setEventPressedValueField:4];
  v9 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.b"];
  v10 = [MEMORY[0x1E695DFD8] setWithObject:@"Button B"];
  [v9 setAliases:v10];

  [v9 setLocalizedName:*MEMORY[0x1E69A0340]];
  v11 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"b.circle"];
  [v9 setSymbol:v11];

  [v9 setEventPressedValueField:5];
  v12 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.x"];
  v13 = [MEMORY[0x1E695DFD8] setWithObject:@"Button X"];
  [v12 setAliases:v13];

  [v12 setLocalizedName:*MEMORY[0x1E69A03A8]];
  v14 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"x.circle"];
  [v12 setSymbol:v14];

  [v12 setEventPressedValueField:6];
  v15 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.y"];
  v16 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Y"];
  [v15 setAliases:v16];

  [v15 setLocalizedName:*MEMORY[0x1E69A03B0]];
  v17 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"y.circle"];
  [v15 setSymbol:v17];

  [v15 setEventPressedValueField:7];
  v18 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.l"];
  v19 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Shoulder"];
  [v18 setAliases:v19];

  [v18 setLocalizedName:*MEMORY[0x1E69A0480]];
  v20 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l1.rectangle.roundedbottom"];
  [v18 setSymbol:v20];

  [v18 setEventPressedValueField:8];
  v37 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.r"];
  v21 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Shoulder"];
  [v37 setAliases:v21];

  [v37 setLocalizedName:*MEMORY[0x1E69A0518]];
  v22 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r1.rectangle.roundedbottom"];
  [v37 setSymbol:v22];

  [v37 setEventPressedValueField:9];
  v23 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.start"];
  v24 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Menu"];
  [v23 setAliases:v24];

  [v23 setLocalizedName:*MEMORY[0x1E69A0380]];
  v25 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"line.horizontal.3.circle"];
  [v23 setSymbol:v25];

  [v23 setEventPressedValueField:23];
  v26 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.select"];
  v27 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Options"];
  [v26 setAliases:v27];

  [v26 setLocalizedName:*MEMORY[0x1E69A0388]];
  v28 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"ellipsis.circle"];
  [v26 setSymbol:v28];

  [v26 setEventPressedValueField:24];
  v29 = [MEMORY[0x1E69A06A8] descriptionWithIdentifier:@"dpad"];
  v30 = [MEMORY[0x1E695DFD8] setWithObject:@"Direction Pad"];
  [v29 setAliases:v30];

  [v29 setLocalizedName:*MEMORY[0x1E69A03B8]];
  v31 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"dpad"];
  [v29 setSymbol:v31];

  [v29 setAnalog:0];
  [v29 setEventUpValueField:0];
  [v29 setEventDownValueField:1];
  [v29 setEventLeftValueField:2];
  [v29 setEventRightValueField:3];
  v32 = objc_opt_new();
  v41[0] = v40;
  v41[1] = v9;
  v41[2] = v12;
  v41[3] = v15;
  v41[4] = v18;
  v41[5] = v37;
  v41[6] = v23;
  v41[7] = v26;
  v41[8] = v29;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:9];
  [v32 setElements:v33];

  v34 = [[_GCControllerInputComponentDescription alloc] initWithIdentifier:v38 controllerInputs:v32 bindings:v39];
  v35 = *MEMORY[0x1E69E9840];

  return v34;
}

@end