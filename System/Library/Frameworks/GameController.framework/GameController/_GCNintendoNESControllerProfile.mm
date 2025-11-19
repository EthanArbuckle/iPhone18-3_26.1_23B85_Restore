@interface _GCNintendoNESControllerProfile
+ (id)logicalDevice:(id)a3 makeControllerInputDescriptionWithIdentifier:(id)a4 bindings:(id)a5;
+ (id)logicalDevice:(id)a3 makeControllerPhysicalInputProfileDescriptionWithIdentifier:(id)a4 bindings:(id)a5;
@end

@implementation _GCNintendoNESControllerProfile

+ (id)logicalDevice:(id)a3 makeControllerPhysicalInputProfileDescriptionWithIdentifier:(id)a4 bindings:(id)a5
{
  v20[7] = *MEMORY[0x1E69E9840];
  v19 = a5;
  v18 = a4;
  v6 = [[GCDeviceButtonInputDescription alloc] initWithName:@"Button A" additionalAliases:0 attributes:2 nameLocalizationKey:@"BUTTON_A" symbolName:@"a.circle" sourceAttributes:1 sourceExtendedEventField:4];
  v17 = [[GCDeviceButtonInputDescription alloc] initWithName:@"Button B" additionalAliases:0 attributes:2 nameLocalizationKey:@"BUTTON_B" symbolName:@"b.circle" sourceAttributes:1 sourceExtendedEventField:5];
  v7 = [[GCDeviceButtonInputDescription alloc] initWithName:@"Left Shoulder" additionalAliases:0 attributes:2 nameLocalizationKey:@"LEFT_SHOULDER" symbolName:@"l1.rectangle.roundedbottom" sourceAttributes:1 sourceExtendedEventField:8];
  v8 = [[GCDeviceButtonInputDescription alloc] initWithName:@"Right Shoulder" additionalAliases:0 attributes:2 nameLocalizationKey:@"RIGHT_SHOULDER" symbolName:@"r1.rectangle.roundedbottom" sourceAttributes:1 sourceExtendedEventField:9];
  v9 = [[GCDeviceButtonInputDescription alloc] initWithName:@"Button Menu" additionalAliases:0 attributes:0x4000 nameLocalizationKey:@"BUTTON_MENU" symbolName:@"line.horizontal.3.circle" sourceAttributes:1 sourceExtendedEventField:23];
  v10 = [[GCDeviceButtonInputDescription alloc] initWithName:@"Button Options" additionalAliases:0 attributes:49152 nameLocalizationKey:@"BUTTON_OPTIONS" symbolName:@"ellipsis.circle" sourceAttributes:1 sourceExtendedEventField:24];
  v11 = [[GCDeviceDirectionPadDescription alloc] initWithName:@"Direction Pad" additionalAliases:0 attributes:2 nameLocalizationKey:@"DIRECTION_PAD" symbolName:@"dpad" sourceAttributes:1 sourceUpExtendedEventField:0 sourceDownExtendedEventField:1 sourceLeftExtendedEventField:2 sourceRightExtendedEventField:3];
  v12 = [_GCDevicePhysicalInputComponentDescription alloc];
  v20[0] = v6;
  v20[1] = v17;
  v20[2] = v7;
  v20[3] = v8;
  v20[4] = v9;
  v20[5] = v10;
  v20[6] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:7];
  v14 = [(_GCDevicePhysicalInputComponentDescription *)v12 initWithIdentifier:v18 elements:v13 bindings:v19];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)logicalDevice:(id)a3 makeControllerInputDescriptionWithIdentifier:(id)a4 bindings:(id)a5
{
  v35[7] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69A0690];
  v34 = a5;
  v33 = a4;
  v32 = [v6 descriptionWithIdentifier:@"button.a"];
  v7 = [MEMORY[0x1E695DFD8] setWithObject:@"Button A"];
  [v32 setAliases:v7];

  [v32 setLocalizedName:*MEMORY[0x1E69A0338]];
  v8 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"a.circle"];
  [v32 setSymbol:v8];

  [v32 setEventPressedValueField:4];
  v9 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.b"];
  v10 = [MEMORY[0x1E695DFD8] setWithObject:@"Button B"];
  [v9 setAliases:v10];

  [v9 setLocalizedName:*MEMORY[0x1E69A0340]];
  v11 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"b.circle"];
  [v9 setSymbol:v11];

  [v9 setEventPressedValueField:5];
  v12 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.l"];
  v13 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Shoulder"];
  [v12 setAliases:v13];

  [v12 setLocalizedName:*MEMORY[0x1E69A0480]];
  v14 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l1.rectangle.roundedbottom"];
  [v12 setSymbol:v14];

  [v12 setEventPressedValueField:8];
  v15 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.r"];
  v16 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Shoulder"];
  [v15 setAliases:v16];

  [v15 setLocalizedName:*MEMORY[0x1E69A0518]];
  v17 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r1.rectangle.roundedbottom"];
  [v15 setSymbol:v17];

  [v15 setEventPressedValueField:9];
  v18 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.start"];
  v19 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Menu"];
  [v18 setAliases:v19];

  [v18 setLocalizedName:*MEMORY[0x1E69A0380]];
  v20 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"line.horizontal.3.circle"];
  [v18 setSymbol:v20];

  [v18 setEventPressedValueField:23];
  v21 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.select"];
  v22 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Options"];
  [v21 setAliases:v22];

  [v21 setLocalizedName:*MEMORY[0x1E69A0388]];
  v23 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"ellipsis.circle"];
  [v21 setSymbol:v23];

  [v21 setEventPressedValueField:24];
  v24 = [MEMORY[0x1E69A06A8] descriptionWithIdentifier:@"dpad"];
  v25 = [MEMORY[0x1E695DFD8] setWithObject:@"Direction Pad"];
  [v24 setAliases:v25];

  [v24 setLocalizedName:*MEMORY[0x1E69A03B8]];
  v26 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"dpad"];
  [v24 setSymbol:v26];

  [v24 setAnalog:0];
  [v24 setEventUpValueField:0];
  [v24 setEventDownValueField:1];
  [v24 setEventLeftValueField:2];
  [v24 setEventRightValueField:3];
  v27 = objc_opt_new();
  v35[0] = v32;
  v35[1] = v9;
  v35[2] = v12;
  v35[3] = v15;
  v35[4] = v18;
  v35[5] = v21;
  v35[6] = v24;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:7];
  [v27 setElements:v28];

  v29 = [[_GCControllerInputComponentDescription alloc] initWithIdentifier:v33 controllerInputs:v27 bindings:v34];
  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

@end