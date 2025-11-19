@interface GCDualSenseGamepad
- (GCDualSenseGamepad)initWithCoder:(id)a3;
- (GCDualSenseGamepad)initWithController:(id)a3;
- (GCDualSenseGamepad)initWithIdentifier:(id)a3;
- (void)_activateExtendedSupport;
- (void)initializeExtraControllerElements;
@end

@implementation GCDualSenseGamepad

- (GCDualSenseGamepad)initWithController:(id)a3
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
  v23 = 0;
  v22 = 1;
  v24 = 1;
  v10.receiver = self;
  v10.super_class = GCDualSenseGamepad;
  v6 = [(GCExtendedGamepad *)&v10 initWithController:v4 initInfo:v11];
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

- (GCDualSenseGamepad)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = GCDualSenseGamepad;
  v3 = [(GCExtendedGamepad *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(GCDualSenseGamepad *)v3 initializeExtraControllerElements];
  }

  return v4;
}

- (GCDualSenseGamepad)initWithIdentifier:(id)a3
{
  v4 = a3;
  memset(v10, 0, 512);
  GCExtendedGamepadInitInfoMake(v10);
  v11 = 1;
  v12 = 1;
  v9.receiver = self;
  v9.super_class = GCDualSenseGamepad;
  v5 = [(GCExtendedGamepad *)&v9 initWithIdentifier:v4 info:v10];
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
  v9 = [(GCExtendedGamepad *)self leftTrigger];
  v10 = [(GCExtendedGamepad *)self rightTrigger];
  [v9 setIndex:0];
  [v10 setIndex:1];
  v11 = [(GCExtendedGamepad *)self buttonHome];
  [v11 setUnmappedNameLocalizationKey:@"DS4_BUTTON_HOME"];

  v12 = [(GCExtendedGamepad *)self buttonOptions];
  [v12 setUnmappedNameLocalizationKey:@"DUALSENSE_BUTTON_OPTIONS"];

  v13 = [(GCExtendedGamepad *)self buttonMenu];
  [v13 setUnmappedNameLocalizationKey:@"DUALSENSE_BUTTON_MENU"];

  v14 = [(GCExtendedGamepad *)self dpad];
  [v14 setUnmappedNameLocalizationKey:@"DS4_DIRECTION_PAD"];

  v15 = [(GCExtendedGamepad *)self buttonA];
  [v15 setUnmappedNameLocalizationKey:@"DS4_BUTTON_A"];

  v16 = [(GCExtendedGamepad *)self buttonB];
  [v16 setUnmappedNameLocalizationKey:@"DS4_BUTTON_B"];

  v17 = [(GCExtendedGamepad *)self buttonX];
  [v17 setUnmappedNameLocalizationKey:@"DS4_BUTTON_X"];

  v18 = [(GCExtendedGamepad *)self buttonY];
  [v18 setUnmappedNameLocalizationKey:@"DS4_BUTTON_Y"];

  v19 = [(GCExtendedGamepad *)self leftShoulder];
  [v19 setUnmappedNameLocalizationKey:@"DS4_LEFT_SHOULDER"];

  v20 = [(GCExtendedGamepad *)self rightShoulder];
  [v20 setUnmappedNameLocalizationKey:@"DS4_RIGHT_SHOULDER"];

  v21 = [(GCExtendedGamepad *)self leftTrigger];
  [v21 setUnmappedNameLocalizationKey:@"DS4_LEFT_TRIGGER"];

  v22 = [(GCExtendedGamepad *)self rightTrigger];
  [v22 setUnmappedNameLocalizationKey:@"DS4_RIGHT_TRIGGER"];

  v23 = [(GCExtendedGamepad *)self leftThumbstick];
  [v23 setUnmappedNameLocalizationKey:@"DS4_LEFT_THUMBSTICK"];

  v24 = [(GCExtendedGamepad *)self rightThumbstick];
  [v24 setUnmappedNameLocalizationKey:@"DS4_RIGHT_THUMBSTICK"];

  v25 = [(GCExtendedGamepad *)self leftThumbstickButton];
  [v25 setUnmappedNameLocalizationKey:@"DS4_BUTTON_LEFT_THUMBSTICK"];

  v26 = [(GCExtendedGamepad *)self rightThumbstickButton];
  [v26 setUnmappedNameLocalizationKey:@"DS4_BUTTON_RIGHT_THUMBSTICK"];

  v27 = [(GCExtendedGamepad *)self buttonA];
  [v27 setUnmappedSfSymbolsName:@"xmark.circle"];

  v28 = [(GCExtendedGamepad *)self buttonB];
  [v28 setUnmappedSfSymbolsName:@"circle.circle"];

  v29 = [(GCExtendedGamepad *)self buttonX];
  [v29 setUnmappedSfSymbolsName:@"square.circle"];

  v30 = [(GCExtendedGamepad *)self buttonY];
  [v30 setUnmappedSfSymbolsName:@"triangle.circle"];

  v31 = [(GCExtendedGamepad *)self buttonOptions];
  [v31 setUnmappedSfSymbolsName:@"capsule.portrait"];

  v32 = [(GCExtendedGamepad *)self buttonMenu];
  [v32 setUnmappedSfSymbolsName:@"capsule.portrait"];

  v33 = [(GCExtendedGamepad *)self buttonHome];
  [v33 setUnmappedSfSymbolsName:@"logo.playstation"];
}

- (void)_activateExtendedSupport
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(GCPhysicalInputProfile *)self controller];
  v3 = [v2 components];
  v4 = [v3 copy];

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
            v11 = [v10 registryID];

            if (v11)
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