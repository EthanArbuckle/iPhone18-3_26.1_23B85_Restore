@interface _GCLunaGamepad
- (_GCLunaGamepad)initWithCoder:(id)coder;
- (_GCLunaGamepad)initWithController:(id)controller;
- (void)initializeExtraControllerElements;
@end

@implementation _GCLunaGamepad

- (_GCLunaGamepad)initWithController:(id)controller
{
  controllerCopy = controller;
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
  v6 = [(GCExtendedGamepad *)&v10 initWithController:controllerCopy initInfo:v11];
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

- (_GCLunaGamepad)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _GCLunaGamepad;
  v3 = [(GCExtendedGamepad *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(_GCLunaGamepad *)v3 initializeExtraControllerElements];
  }

  return v4;
}

- (void)initializeExtraControllerElements
{
  leftTrigger = [(GCExtendedGamepad *)self leftTrigger];
  [leftTrigger setUnmappedSfSymbolsName:@"lt.rectangle.roundedtop"];

  rightTrigger = [(GCExtendedGamepad *)self rightTrigger];
  [rightTrigger setUnmappedSfSymbolsName:@"rt.rectangle.roundedtop"];

  leftShoulder = [(GCExtendedGamepad *)self leftShoulder];
  [leftShoulder setUnmappedSfSymbolsName:@"lb.rectangle.roundedbottom"];

  rightShoulder = [(GCExtendedGamepad *)self rightShoulder];
  [rightShoulder setUnmappedSfSymbolsName:@"rb.rectangle.roundedbottom"];

  buttonHome = [(GCExtendedGamepad *)self buttonHome];
  [buttonHome setUnmappedNameLocalizationKey:@"LUNA_BUTTON_HOME"];

  buttonOptions = [(GCExtendedGamepad *)self buttonOptions];
  [buttonOptions setUnmappedNameLocalizationKey:@"LUNA_BUTTON_OPTIONS"];

  buttonMenu = [(GCExtendedGamepad *)self buttonMenu];
  [buttonMenu setUnmappedNameLocalizationKey:@"LUNA_BUTTON_MENU"];

  dpad = [(GCExtendedGamepad *)self dpad];
  [dpad setUnmappedNameLocalizationKey:@"LUNA_DIRECTION_PAD"];

  buttonA = [(GCExtendedGamepad *)self buttonA];
  [buttonA setUnmappedNameLocalizationKey:@"LUNA_BUTTON_A"];

  buttonB = [(GCExtendedGamepad *)self buttonB];
  [buttonB setUnmappedNameLocalizationKey:@"LUNA_BUTTON_B"];

  buttonX = [(GCExtendedGamepad *)self buttonX];
  [buttonX setUnmappedNameLocalizationKey:@"LUNA_BUTTON_X"];

  buttonY = [(GCExtendedGamepad *)self buttonY];
  [buttonY setUnmappedNameLocalizationKey:@"LUNA_BUTTON_Y"];

  leftShoulder2 = [(GCExtendedGamepad *)self leftShoulder];
  [leftShoulder2 setUnmappedNameLocalizationKey:@"LUNA_LEFT_SHOULDER"];

  rightShoulder2 = [(GCExtendedGamepad *)self rightShoulder];
  [rightShoulder2 setUnmappedNameLocalizationKey:@"LUNA_RIGHT_SHOULDER"];

  leftTrigger2 = [(GCExtendedGamepad *)self leftTrigger];
  [leftTrigger2 setUnmappedNameLocalizationKey:@"LUNA_LEFT_TRIGGER"];

  rightTrigger2 = [(GCExtendedGamepad *)self rightTrigger];
  [rightTrigger2 setUnmappedNameLocalizationKey:@"LUNA_RIGHT_TRIGGER"];

  leftThumbstick = [(GCExtendedGamepad *)self leftThumbstick];
  [leftThumbstick setUnmappedNameLocalizationKey:@"LUNA_LEFT_THUMBSTICK"];

  rightThumbstick = [(GCExtendedGamepad *)self rightThumbstick];
  [rightThumbstick setUnmappedNameLocalizationKey:@"LUNA_RIGHT_THUMBSTICK"];

  leftThumbstickButton = [(GCExtendedGamepad *)self leftThumbstickButton];
  [leftThumbstickButton setUnmappedNameLocalizationKey:@"LUNA_BUTTON_LEFT_THUMBSTICK"];

  rightThumbstickButton = [(GCExtendedGamepad *)self rightThumbstickButton];
  [rightThumbstickButton setUnmappedNameLocalizationKey:@"LUNA_BUTTON_RIGHT_THUMBSTICK"];
}

@end