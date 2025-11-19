@interface _GCLunaGamepad
- (_GCLunaGamepad)initWithCoder:(id)a3;
- (_GCLunaGamepad)initWithController:(id)a3;
- (void)initializeExtraControllerElements;
@end

@implementation _GCLunaGamepad

- (_GCLunaGamepad)initWithController:(id)a3
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
  for (i = 9; i != 1161; i += 72)
  {
    *(v11 + i) = 1;
  }

  BYTE1(v12) = 0;
  BYTE9(v16) = 0;
  v21 = 0;
  v22 = 0;
  v10.receiver = self;
  v10.super_class = _GCLunaGamepad;
  v6 = [(GCExtendedGamepad *)&v10 initWithController:v4 initInfo:v11];
  v7 = v6;
  if (v6)
  {
    [(_GCLunaGamepad *)v6 initializeExtraControllerElements];
  }

  for (j = 0; j != 1584; j += 72)
  {
    __destructor_8_s0_s48_s56_s64(v11 + j);
  }

  return v7;
}

- (_GCLunaGamepad)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _GCLunaGamepad;
  v3 = [(GCExtendedGamepad *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(_GCLunaGamepad *)v3 initializeExtraControllerElements];
  }

  return v4;
}

- (void)initializeExtraControllerElements
{
  v3 = [(GCExtendedGamepad *)self leftTrigger];
  [v3 setUnmappedSfSymbolsName:@"lt.rectangle.roundedtop"];

  v4 = [(GCExtendedGamepad *)self rightTrigger];
  [v4 setUnmappedSfSymbolsName:@"rt.rectangle.roundedtop"];

  v5 = [(GCExtendedGamepad *)self leftShoulder];
  [v5 setUnmappedSfSymbolsName:@"lb.rectangle.roundedbottom"];

  v6 = [(GCExtendedGamepad *)self rightShoulder];
  [v6 setUnmappedSfSymbolsName:@"rb.rectangle.roundedbottom"];

  v7 = [(GCExtendedGamepad *)self buttonHome];
  [v7 setUnmappedNameLocalizationKey:@"LUNA_BUTTON_HOME"];

  v8 = [(GCExtendedGamepad *)self buttonOptions];
  [v8 setUnmappedNameLocalizationKey:@"LUNA_BUTTON_OPTIONS"];

  v9 = [(GCExtendedGamepad *)self buttonMenu];
  [v9 setUnmappedNameLocalizationKey:@"LUNA_BUTTON_MENU"];

  v10 = [(GCExtendedGamepad *)self dpad];
  [v10 setUnmappedNameLocalizationKey:@"LUNA_DIRECTION_PAD"];

  v11 = [(GCExtendedGamepad *)self buttonA];
  [v11 setUnmappedNameLocalizationKey:@"LUNA_BUTTON_A"];

  v12 = [(GCExtendedGamepad *)self buttonB];
  [v12 setUnmappedNameLocalizationKey:@"LUNA_BUTTON_B"];

  v13 = [(GCExtendedGamepad *)self buttonX];
  [v13 setUnmappedNameLocalizationKey:@"LUNA_BUTTON_X"];

  v14 = [(GCExtendedGamepad *)self buttonY];
  [v14 setUnmappedNameLocalizationKey:@"LUNA_BUTTON_Y"];

  v15 = [(GCExtendedGamepad *)self leftShoulder];
  [v15 setUnmappedNameLocalizationKey:@"LUNA_LEFT_SHOULDER"];

  v16 = [(GCExtendedGamepad *)self rightShoulder];
  [v16 setUnmappedNameLocalizationKey:@"LUNA_RIGHT_SHOULDER"];

  v17 = [(GCExtendedGamepad *)self leftTrigger];
  [v17 setUnmappedNameLocalizationKey:@"LUNA_LEFT_TRIGGER"];

  v18 = [(GCExtendedGamepad *)self rightTrigger];
  [v18 setUnmappedNameLocalizationKey:@"LUNA_RIGHT_TRIGGER"];

  v19 = [(GCExtendedGamepad *)self leftThumbstick];
  [v19 setUnmappedNameLocalizationKey:@"LUNA_LEFT_THUMBSTICK"];

  v20 = [(GCExtendedGamepad *)self rightThumbstick];
  [v20 setUnmappedNameLocalizationKey:@"LUNA_RIGHT_THUMBSTICK"];

  v21 = [(GCExtendedGamepad *)self leftThumbstickButton];
  [v21 setUnmappedNameLocalizationKey:@"LUNA_BUTTON_LEFT_THUMBSTICK"];

  v22 = [(GCExtendedGamepad *)self rightThumbstickButton];
  [v22 setUnmappedNameLocalizationKey:@"LUNA_BUTTON_RIGHT_THUMBSTICK"];
}

@end