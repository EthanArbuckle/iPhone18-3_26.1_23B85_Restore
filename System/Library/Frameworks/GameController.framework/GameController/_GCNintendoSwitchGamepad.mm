@interface _GCNintendoSwitchGamepad
- (_GCNintendoSwitchGamepad)initWithCoder:(id)coder;
- (_GCNintendoSwitchGamepad)initWithController:(id)controller;
- (void)initializeExtraControllerElements;
@end

@implementation _GCNintendoSwitchGamepad

- (_GCNintendoSwitchGamepad)initWithController:(id)controller
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
  for (i = 0; i != 1152; i += 72)
  {
    *(v11 + i + 8) = 257;
  }

  BYTE1(v12) = 0;
  BYTE9(v16) = 0;
  v10.receiver = self;
  v10.super_class = _GCNintendoSwitchGamepad;
  v6 = [(GCExtendedGamepad *)&v10 initWithController:controllerCopy initInfo:v11];
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

- (_GCNintendoSwitchGamepad)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _GCNintendoSwitchGamepad;
  v3 = [(GCExtendedGamepad *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(_GCNintendoSwitchGamepad *)v3 initializeExtraControllerElements];
  }

  return v4;
}

- (void)initializeExtraControllerElements
{
  buttonHome = [(GCExtendedGamepad *)self buttonHome];
  [buttonHome setUnmappedNameLocalizationKey:@"SWITCH_BUTTON_HOME"];

  buttonOptions = [(GCExtendedGamepad *)self buttonOptions];
  [buttonOptions setUnmappedNameLocalizationKey:@"SWITCH_BUTTON_OPTIONS"];

  buttonMenu = [(GCExtendedGamepad *)self buttonMenu];
  [buttonMenu setUnmappedNameLocalizationKey:@"SWITCH_BUTTON_MENU"];

  dpad = [(GCExtendedGamepad *)self dpad];
  [dpad setUnmappedNameLocalizationKey:@"SWITCH_DIRECTION_PAD"];

  buttonA = [(GCExtendedGamepad *)self buttonA];
  [buttonA setUnmappedNameLocalizationKey:@"SWITCH_BUTTON_A"];

  buttonB = [(GCExtendedGamepad *)self buttonB];
  [buttonB setUnmappedNameLocalizationKey:@"SWITCH_BUTTON_B"];

  buttonX = [(GCExtendedGamepad *)self buttonX];
  [buttonX setUnmappedNameLocalizationKey:@"SWITCH_BUTTON_X"];

  buttonY = [(GCExtendedGamepad *)self buttonY];
  [buttonY setUnmappedNameLocalizationKey:@"SWITCH_BUTTON_Y"];

  leftShoulder = [(GCExtendedGamepad *)self leftShoulder];
  [leftShoulder setUnmappedNameLocalizationKey:@"SWITCH_LEFT_SHOULDER"];

  rightShoulder = [(GCExtendedGamepad *)self rightShoulder];
  [rightShoulder setUnmappedNameLocalizationKey:@"SWITCH_RIGHT_SHOULDER"];

  leftTrigger = [(GCExtendedGamepad *)self leftTrigger];
  [leftTrigger setUnmappedNameLocalizationKey:@"SWITCH_LEFT_TRIGGER"];

  rightTrigger = [(GCExtendedGamepad *)self rightTrigger];
  [rightTrigger setUnmappedNameLocalizationKey:@"SWITCH_RIGHT_TRIGGER"];

  leftThumbstick = [(GCExtendedGamepad *)self leftThumbstick];
  [leftThumbstick setUnmappedNameLocalizationKey:@"SWITCH_LEFT_THUMBSTICK"];

  rightThumbstick = [(GCExtendedGamepad *)self rightThumbstick];
  [rightThumbstick setUnmappedNameLocalizationKey:@"SWITCH_RIGHT_THUMBSTICK"];

  leftThumbstickButton = [(GCExtendedGamepad *)self leftThumbstickButton];
  [leftThumbstickButton setUnmappedNameLocalizationKey:@"SWITCH_BUTTON_LEFT_THUMBSTICK"];

  rightThumbstickButton = [(GCExtendedGamepad *)self rightThumbstickButton];
  [rightThumbstickButton setUnmappedNameLocalizationKey:@"SWITCH_BUTTON_RIGHT_THUMBSTICK"];

  leftTrigger2 = [(GCExtendedGamepad *)self leftTrigger];
  [leftTrigger2 setUnmappedSfSymbolsName:@"zl.rectangle.roundedtop"];

  rightTrigger2 = [(GCExtendedGamepad *)self rightTrigger];
  [rightTrigger2 setUnmappedSfSymbolsName:@"zr.rectangle.roundedtop"];

  leftShoulder2 = [(GCExtendedGamepad *)self leftShoulder];
  [leftShoulder2 setUnmappedSfSymbolsName:@"l.rectangle.roundedbottom"];

  rightShoulder2 = [(GCExtendedGamepad *)self rightShoulder];
  [rightShoulder2 setUnmappedSfSymbolsName:@"r.rectangle.roundedbottom"];

  buttonOptions2 = [(GCExtendedGamepad *)self buttonOptions];
  [buttonOptions2 setUnmappedSfSymbolsName:@"minus.circle"];

  buttonMenu2 = [(GCExtendedGamepad *)self buttonMenu];
  [buttonMenu2 setUnmappedSfSymbolsName:@"plus.circle"];
}

@end