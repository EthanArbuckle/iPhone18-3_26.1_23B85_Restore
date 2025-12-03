@interface GCDualSenseGamepad
- (GCDualSenseGamepad)initWithCoder:(id)coder;
- (GCDualSenseGamepad)initWithController:(id)controller;
- (GCDualSenseGamepad)initWithIdentifier:(id)identifier;
- (void)_activateExtendedSupport;
- (void)initializeExtraControllerElements;
@end

@implementation GCDualSenseGamepad

- (GCDualSenseGamepad)initWithController:(id)controller
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
  v23 = 0;
  v22 = 1;
  v24 = 1;
  v10.receiver = self;
  v10.super_class = GCDualSenseGamepad;
  v6 = [(GCExtendedGamepad *)&v10 initWithController:controllerCopy initInfo:v11];
  v7 = v6;
  if (v6)
  {
    [(GCDualSenseGamepad *)v6 initializeExtraControllerElements];
  }

  for (j = 0; j != 1584; j += 72)
  {
    __destructor_8_s0_s48_s56_s64(v11 + j);
  }

  return v7;
}

- (GCDualSenseGamepad)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = GCDualSenseGamepad;
  v3 = [(GCExtendedGamepad *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(GCDualSenseGamepad *)v3 initializeExtraControllerElements];
  }

  return v4;
}

- (GCDualSenseGamepad)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  memset(v10, 0, 512);
  GCExtendedGamepadInitInfoMake(v10);
  v11 = 1;
  v12 = 1;
  v9.receiver = self;
  v9.super_class = GCDualSenseGamepad;
  v5 = [(GCExtendedGamepad *)&v9 initWithIdentifier:identifierCopy info:v10];
  v6 = v5;
  if (v5)
  {
    [(GCDualSenseGamepad *)v5 initializeExtraControllerElements];
  }

  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64(v10 + i);
  }

  return v6;
}

- (void)initializeExtraControllerElements
{
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = @"Touchpad Button";
  LOWORD(v53) = 257;
  DWORD2(v53) = 33;
  LODWORD(v55) = 1;
  if (self)
  {
    v3 = [(GCPhysicalInputProfile *)self _buttonWithInfo:&v52];
  }

  else
  {
    __destructor_8_s0_s48_s56_s64(&v52);
    v3 = 0;
  }

  touchpadButton = self->_touchpadButton;
  self->_touchpadButton = v3;

  [(GCControllerElement *)self->_touchpadButton setRemappable:1];
  [(GCControllerElement *)self->_touchpadButton setUnmappedNameLocalizationKey:@"DS4_BUTTON_TOUCHPAD"];
  [(GCControllerElement *)self->_touchpadButton setUnmappedSfSymbolsName:@"plus.rectangle"];
  v43 = @"Touchpad 1";
  v44 = 1;
  v45 = xmmword_1D2DF0A60;
  v46 = 1;
  v47 = 0;
  v48 = 0;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  v5 = [(GCPhysicalInputProfile *)self _directionPadWithInfo:&v43];
  touchpadPrimary = self->_touchpadPrimary;
  self->_touchpadPrimary = v5;

  [(GCControllerElement *)self->_touchpadPrimary setRemappable:1];
  [(GCControllerDirectionPad *)self->_touchpadPrimary setUnmappedNameLocalizationKey:@"DS4_TOUCHPAD_FINGER_ONE"];
  [(GCControllerElement *)self->_touchpadPrimary setUnmappedSfSymbolsName:@"hand.draw"];
  v34 = @"Touchpad 2";
  v35 = 1;
  v36 = xmmword_1D2DF0A70;
  v37 = 1;
  v38 = 0;
  v39 = 0;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v7 = [(GCPhysicalInputProfile *)self _directionPadWithInfo:&v34];
  touchpadSecondary = self->_touchpadSecondary;
  self->_touchpadSecondary = v7;

  [(GCControllerElement *)self->_touchpadSecondary setRemappable:1];
  [(GCControllerDirectionPad *)self->_touchpadSecondary setUnmappedNameLocalizationKey:@"DS4_TOUCHPAD_FINGER_TWO"];
  [(GCControllerElement *)self->_touchpadSecondary setUnmappedSfSymbolsName:@"hand.draw"];
  leftTrigger = [(GCExtendedGamepad *)self leftTrigger];
  rightTrigger = [(GCExtendedGamepad *)self rightTrigger];
  [leftTrigger setIndex:0];
  [rightTrigger setIndex:1];
  buttonHome = [(GCExtendedGamepad *)self buttonHome];
  [buttonHome setUnmappedNameLocalizationKey:@"DS4_BUTTON_HOME"];

  buttonOptions = [(GCExtendedGamepad *)self buttonOptions];
  [buttonOptions setUnmappedNameLocalizationKey:@"DUALSENSE_BUTTON_OPTIONS"];

  buttonMenu = [(GCExtendedGamepad *)self buttonMenu];
  [buttonMenu setUnmappedNameLocalizationKey:@"DUALSENSE_BUTTON_MENU"];

  dpad = [(GCExtendedGamepad *)self dpad];
  [dpad setUnmappedNameLocalizationKey:@"DS4_DIRECTION_PAD"];

  buttonA = [(GCExtendedGamepad *)self buttonA];
  [buttonA setUnmappedNameLocalizationKey:@"DS4_BUTTON_A"];

  buttonB = [(GCExtendedGamepad *)self buttonB];
  [buttonB setUnmappedNameLocalizationKey:@"DS4_BUTTON_B"];

  buttonX = [(GCExtendedGamepad *)self buttonX];
  [buttonX setUnmappedNameLocalizationKey:@"DS4_BUTTON_X"];

  buttonY = [(GCExtendedGamepad *)self buttonY];
  [buttonY setUnmappedNameLocalizationKey:@"DS4_BUTTON_Y"];

  leftShoulder = [(GCExtendedGamepad *)self leftShoulder];
  [leftShoulder setUnmappedNameLocalizationKey:@"DS4_LEFT_SHOULDER"];

  rightShoulder = [(GCExtendedGamepad *)self rightShoulder];
  [rightShoulder setUnmappedNameLocalizationKey:@"DS4_RIGHT_SHOULDER"];

  leftTrigger2 = [(GCExtendedGamepad *)self leftTrigger];
  [leftTrigger2 setUnmappedNameLocalizationKey:@"DS4_LEFT_TRIGGER"];

  rightTrigger2 = [(GCExtendedGamepad *)self rightTrigger];
  [rightTrigger2 setUnmappedNameLocalizationKey:@"DS4_RIGHT_TRIGGER"];

  leftThumbstick = [(GCExtendedGamepad *)self leftThumbstick];
  [leftThumbstick setUnmappedNameLocalizationKey:@"DS4_LEFT_THUMBSTICK"];

  rightThumbstick = [(GCExtendedGamepad *)self rightThumbstick];
  [rightThumbstick setUnmappedNameLocalizationKey:@"DS4_RIGHT_THUMBSTICK"];

  leftThumbstickButton = [(GCExtendedGamepad *)self leftThumbstickButton];
  [leftThumbstickButton setUnmappedNameLocalizationKey:@"DS4_BUTTON_LEFT_THUMBSTICK"];

  rightThumbstickButton = [(GCExtendedGamepad *)self rightThumbstickButton];
  [rightThumbstickButton setUnmappedNameLocalizationKey:@"DS4_BUTTON_RIGHT_THUMBSTICK"];

  buttonA2 = [(GCExtendedGamepad *)self buttonA];
  [buttonA2 setUnmappedSfSymbolsName:@"xmark.circle"];

  buttonB2 = [(GCExtendedGamepad *)self buttonB];
  [buttonB2 setUnmappedSfSymbolsName:@"circle.circle"];

  buttonX2 = [(GCExtendedGamepad *)self buttonX];
  [buttonX2 setUnmappedSfSymbolsName:@"square.circle"];

  buttonY2 = [(GCExtendedGamepad *)self buttonY];
  [buttonY2 setUnmappedSfSymbolsName:@"triangle.circle"];

  buttonOptions2 = [(GCExtendedGamepad *)self buttonOptions];
  [buttonOptions2 setUnmappedSfSymbolsName:@"capsule.portrait"];

  buttonMenu2 = [(GCExtendedGamepad *)self buttonMenu];
  [buttonMenu2 setUnmappedSfSymbolsName:@"capsule.portrait"];

  buttonHome2 = [(GCExtendedGamepad *)self buttonHome];
  [buttonHome2 setUnmappedSfSymbolsName:@"logo.playstation"];
}

- (void)_activateExtendedSupport
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  controller = [(GCPhysicalInputProfile *)self controller];
  components = [controller components];
  v4 = [components copy];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 conformsToProtocol:&unk_1F4E9BB60])
        {
          v10 = v9;

          if (v10)
          {
            registryID = [v10 registryID];

            if (registryID)
            {
              [v10 setProperty:MEMORY[0x1E695E118] forKey:@"ActivateExtendedSupport"];
            }
          }

          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_13:

  v12 = *MEMORY[0x1E69E9840];
}

@end