@interface _GCNintendoSwitchGamepad
- (_GCNintendoSwitchGamepad)initWithCoder:(id)a3;
- (_GCNintendoSwitchGamepad)initWithController:(id)a3;
- (void)initializeExtraControllerElements;
@end

@implementation _GCNintendoSwitchGamepad

- (_GCNintendoSwitchGamepad)initWithController:(id)a3
{
  v4 = a3;
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
  v10.receiver = self;
  v10.super_class = _GCNintendoSwitchGamepad;
  v6 = [(GCExtendedGamepad *)&v10 initWithController:v4 initInfo:v11];
  v7 = v6;
  if (v6)
  {
    [(_GCNintendoSwitchGamepad *)v6 initializeExtraControllerElements];
  }

  for (j = 0; j != 1584; j += 72)
  {
    __destructor_8_s0_s48_s56_s64(v11 + j);
  }

  return v7;
}

- (_GCNintendoSwitchGamepad)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _GCNintendoSwitchGamepad;
  v3 = [(GCExtendedGamepad *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(_GCNintendoSwitchGamepad *)v3 initializeExtraControllerElements];
  }

  return v4;
}

- (void)initializeExtraControllerElements
{
  v3 = [(GCExtendedGamepad *)self buttonHome];
  [v3 setUnmappedNameLocalizationKey:@"SWITCH_BUTTON_HOME"];

  v4 = [(GCExtendedGamepad *)self buttonOptions];
  [v4 setUnmappedNameLocalizationKey:@"SWITCH_BUTTON_OPTIONS"];

  v5 = [(GCExtendedGamepad *)self buttonMenu];
  [v5 setUnmappedNameLocalizationKey:@"SWITCH_BUTTON_MENU"];

  v6 = [(GCExtendedGamepad *)self dpad];
  [v6 setUnmappedNameLocalizationKey:@"SWITCH_DIRECTION_PAD"];

  v7 = [(GCExtendedGamepad *)self buttonA];
  [v7 setUnmappedNameLocalizationKey:@"SWITCH_BUTTON_A"];

  v8 = [(GCExtendedGamepad *)self buttonB];
  [v8 setUnmappedNameLocalizationKey:@"SWITCH_BUTTON_B"];

  v9 = [(GCExtendedGamepad *)self buttonX];
  [v9 setUnmappedNameLocalizationKey:@"SWITCH_BUTTON_X"];

  v10 = [(GCExtendedGamepad *)self buttonY];
  [v10 setUnmappedNameLocalizationKey:@"SWITCH_BUTTON_Y"];

  v11 = [(GCExtendedGamepad *)self leftShoulder];
  [v11 setUnmappedNameLocalizationKey:@"SWITCH_LEFT_SHOULDER"];

  v12 = [(GCExtendedGamepad *)self rightShoulder];
  [v12 setUnmappedNameLocalizationKey:@"SWITCH_RIGHT_SHOULDER"];

  v13 = [(GCExtendedGamepad *)self leftTrigger];
  [v13 setUnmappedNameLocalizationKey:@"SWITCH_LEFT_TRIGGER"];

  v14 = [(GCExtendedGamepad *)self rightTrigger];
  [v14 setUnmappedNameLocalizationKey:@"SWITCH_RIGHT_TRIGGER"];

  v15 = [(GCExtendedGamepad *)self leftThumbstick];
  [v15 setUnmappedNameLocalizationKey:@"SWITCH_LEFT_THUMBSTICK"];

  v16 = [(GCExtendedGamepad *)self rightThumbstick];
  [v16 setUnmappedNameLocalizationKey:@"SWITCH_RIGHT_THUMBSTICK"];

  v17 = [(GCExtendedGamepad *)self leftThumbstickButton];
  [v17 setUnmappedNameLocalizationKey:@"SWITCH_BUTTON_LEFT_THUMBSTICK"];

  v18 = [(GCExtendedGamepad *)self rightThumbstickButton];
  [v18 setUnmappedNameLocalizationKey:@"SWITCH_BUTTON_RIGHT_THUMBSTICK"];

  v19 = [(GCExtendedGamepad *)self leftTrigger];
  [v19 setUnmappedSfSymbolsName:@"zl.rectangle.roundedtop"];

  v20 = [(GCExtendedGamepad *)self rightTrigger];
  [v20 setUnmappedSfSymbolsName:@"zr.rectangle.roundedtop"];

  v21 = [(GCExtendedGamepad *)self leftShoulder];
  [v21 setUnmappedSfSymbolsName:@"l.rectangle.roundedbottom"];

  v22 = [(GCExtendedGamepad *)self rightShoulder];
  [v22 setUnmappedSfSymbolsName:@"r.rectangle.roundedbottom"];

  v23 = [(GCExtendedGamepad *)self buttonOptions];
  [v23 setUnmappedSfSymbolsName:@"minus.circle"];

  v24 = [(GCExtendedGamepad *)self buttonMenu];
  [v24 setUnmappedSfSymbolsName:@"plus.circle"];
}

@end