@interface GCDualShockGamepad
- (GCDualShockGamepad)initWithCoder:(id)a3;
- (GCDualShockGamepad)initWithController:(id)a3;
- (GCDualShockGamepad)initWithIdentifier:(id)a3;
- (void)_activateExtendedSupport;
- (void)initializeExtraControllerElements;
@end

@implementation GCDualShockGamepad

- (GCDualShockGamepad)initWithController:(id)a3
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
  v10.super_class = GCDualShockGamepad;
  v6 = [(GCExtendedGamepad *)&v10 initWithController:v4 initInfo:v11];
  v7 = v6;
  if (v6)
  {
    [(GCDualShockGamepad *)v6 initializeExtraControllerElements];
  }

  for (j = 0; j != 1584; j += 72)
  {
    __destructor_8_s0_s48_s56_s64(v11 + j);
  }

  return v7;
}

- (GCDualShockGamepad)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = GCDualShockGamepad;
  v3 = [(GCExtendedGamepad *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(GCDualShockGamepad *)v3 initializeExtraControllerElements];
  }

  return v4;
}

- (GCDualShockGamepad)initWithIdentifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = GCDualShockGamepad;
  v3 = [(GCExtendedGamepad *)&v6 initWithIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    [(GCDualShockGamepad *)v3 initializeExtraControllerElements];
  }

  return v4;
}

- (void)initializeExtraControllerElements
{
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = @"Touchpad Button";
  LOWORD(v51) = 257;
  DWORD2(v51) = 33;
  LODWORD(v53) = 1;
  if (self)
  {
    v3 = [(GCPhysicalInputProfile *)self _buttonWithInfo:&v50];
  }

  else
  {
    __destructor_8_s0_s48_s56_s64(&v50);
    v3 = 0;
  }

  touchpadButton = self->_touchpadButton;
  self->_touchpadButton = v3;

  [(GCControllerElement *)self->_touchpadButton setRemappable:1];
  [(GCControllerElement *)self->_touchpadButton setUnmappedNameLocalizationKey:@"DS4_BUTTON_TOUCHPAD"];
  [(GCControllerElement *)self->_touchpadButton setUnmappedSfSymbolsName:@"plus.rectangle"];
  v41 = @"Touchpad 1";
  v42 = 1;
  v43 = xmmword_1D2DF0A60;
  v44 = 1;
  v45 = 0;
  v46 = 0;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  v5 = [(GCPhysicalInputProfile *)self _directionPadWithInfo:&v41];
  touchpadPrimary = self->_touchpadPrimary;
  self->_touchpadPrimary = v5;

  [(GCControllerElement *)self->_touchpadPrimary setRemappable:1];
  [(GCControllerDirectionPad *)self->_touchpadPrimary setUnmappedNameLocalizationKey:@"DS4_TOUCHPAD_FINGER_ONE"];
  [(GCControllerElement *)self->_touchpadPrimary setUnmappedSfSymbolsName:@"hand.draw"];
  v32 = @"Touchpad 2";
  v33 = 1;
  v34 = xmmword_1D2DF0A70;
  v35 = 1;
  v36 = 0;
  v37 = 0;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v7 = [(GCPhysicalInputProfile *)self _directionPadWithInfo:&v32];
  touchpadSecondary = self->_touchpadSecondary;
  self->_touchpadSecondary = v7;

  [(GCControllerElement *)self->_touchpadSecondary setRemappable:1];
  [(GCControllerDirectionPad *)self->_touchpadSecondary setUnmappedNameLocalizationKey:@"DS4_TOUCHPAD_FINGER_TWO"];
  [(GCControllerElement *)self->_touchpadSecondary setUnmappedSfSymbolsName:@"hand.draw"];
  v9 = [(GCExtendedGamepad *)self buttonHome];
  [v9 setUnmappedNameLocalizationKey:@"DS4_BUTTON_HOME"];

  v10 = [(GCExtendedGamepad *)self buttonOptions];
  [v10 setUnmappedNameLocalizationKey:@"DS4_BUTTON_OPTIONS"];

  v11 = [(GCExtendedGamepad *)self buttonMenu];
  [v11 setUnmappedNameLocalizationKey:@"DS4_BUTTON_MENU"];

  v12 = [(GCExtendedGamepad *)self dpad];
  [v12 setUnmappedNameLocalizationKey:@"DS4_DIRECTION_PAD"];

  v13 = [(GCExtendedGamepad *)self buttonA];
  [v13 setUnmappedNameLocalizationKey:@"DS4_BUTTON_A"];

  v14 = [(GCExtendedGamepad *)self buttonB];
  [v14 setUnmappedNameLocalizationKey:@"DS4_BUTTON_B"];

  v15 = [(GCExtendedGamepad *)self buttonX];
  [v15 setUnmappedNameLocalizationKey:@"DS4_BUTTON_X"];

  v16 = [(GCExtendedGamepad *)self buttonY];
  [v16 setUnmappedNameLocalizationKey:@"DS4_BUTTON_Y"];

  v17 = [(GCExtendedGamepad *)self leftShoulder];
  [v17 setUnmappedNameLocalizationKey:@"DS4_LEFT_SHOULDER"];

  v18 = [(GCExtendedGamepad *)self rightShoulder];
  [v18 setUnmappedNameLocalizationKey:@"DS4_RIGHT_SHOULDER"];

  v19 = [(GCExtendedGamepad *)self leftTrigger];
  [v19 setUnmappedNameLocalizationKey:@"DS4_LEFT_TRIGGER"];

  v20 = [(GCExtendedGamepad *)self rightTrigger];
  [v20 setUnmappedNameLocalizationKey:@"DS4_RIGHT_TRIGGER"];

  v21 = [(GCExtendedGamepad *)self leftThumbstick];
  [v21 setUnmappedNameLocalizationKey:@"DS4_LEFT_THUMBSTICK"];

  v22 = [(GCExtendedGamepad *)self rightThumbstick];
  [v22 setUnmappedNameLocalizationKey:@"DS4_RIGHT_THUMBSTICK"];

  v23 = [(GCExtendedGamepad *)self leftThumbstickButton];
  [v23 setUnmappedNameLocalizationKey:@"DS4_BUTTON_LEFT_THUMBSTICK"];

  v24 = [(GCExtendedGamepad *)self rightThumbstickButton];
  [v24 setUnmappedNameLocalizationKey:@"DS4_BUTTON_RIGHT_THUMBSTICK"];

  v25 = [(GCExtendedGamepad *)self buttonA];
  [v25 setUnmappedSfSymbolsName:@"xmark.circle"];

  v26 = [(GCExtendedGamepad *)self buttonB];
  [v26 setUnmappedSfSymbolsName:@"circle.circle"];

  v27 = [(GCExtendedGamepad *)self buttonX];
  [v27 setUnmappedSfSymbolsName:@"square.circle"];

  v28 = [(GCExtendedGamepad *)self buttonY];
  [v28 setUnmappedSfSymbolsName:@"triangle.circle"];

  v29 = [(GCExtendedGamepad *)self buttonOptions];
  [v29 setUnmappedSfSymbolsName:@"capsule.portrait"];

  v30 = [(GCExtendedGamepad *)self buttonMenu];
  [v30 setUnmappedSfSymbolsName:@"capsule.portrait"];

  v31 = [(GCExtendedGamepad *)self buttonHome];
  [v31 setUnmappedSfSymbolsName:@"logo.playstation"];
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