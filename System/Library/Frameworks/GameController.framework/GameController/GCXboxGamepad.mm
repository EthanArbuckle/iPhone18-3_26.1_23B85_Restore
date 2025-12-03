@interface GCXboxGamepad
- (GCXboxGamepad)initWithCoder:(id)coder;
- (GCXboxGamepad)initWithController:(id)controller;
- (GCXboxGamepad)initWithIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
- (void)initializeExtraControllerElements;
@end

@implementation GCXboxGamepad

- (GCXboxGamepad)initWithController:(id)controller
{
  controllerCopy = controller;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  memset(v22, 0, sizeof(v22));
  GCExtendedGamepadInitInfoMake(v22);
  for (i = 9; i != 1161; i += 72)
  {
    *(v22 + i) = 1;
  }

  BYTE1(v23) = 0;
  BYTE9(v27) = 0;
  v32 = 0;
  v33 = 0;
  v21.receiver = self;
  v21.super_class = GCXboxGamepad;
  v6 = [(GCExtendedGamepad *)&v21 initWithController:controllerCopy initInfo:v22];
  v7 = v6;
  if (v6)
  {
    controller = [(GCPhysicalInputProfile *)v6 controller];
    hidServices = [controller hidServices];
    firstObject = [hidServices firstObject];
    v11 = [firstObject numberPropertyForKey:@"ProductID"];
    unsignedIntValue = [v11 unsignedIntValue];

    v13 = unsignedIntValue - 2;
    if ((unsignedIntValue - 2818) <= 0x3A)
    {
      if (((1 << v13) & 0x400000100000009) != 0)
      {
        if (gc_isInternalBuild())
        {
          v17 = getGCLogger();
          [GCXboxGamepad initWithController:v17];
        }

        v14 = 1;
        goto LABEL_20;
      }

      if (((1 << v13) & 0x200030000) != 0)
      {
        if (gc_isInternalBuild())
        {
          v18 = getGCLogger();
          [GCXboxGamepad initWithController:v18];
        }

        v34 = 1;
        v14 = 3;
LABEL_20:
        v7->_type = v14;
        [(GCXboxGamepad *)v7 initializeExtraControllerElements];
        goto LABEL_21;
      }

      if (((1 << v13) & 0x80000400) != 0)
      {
        if (gc_isInternalBuild())
        {
          v19 = getGCLogger();
          [GCXboxGamepad initWithController:v19];
        }

        v14 = 2;
        goto LABEL_20;
      }
    }

    if (gc_isInternalBuild())
    {
      v20 = getGCLogger();
      [GCXboxGamepad initWithController:v20];
    }

    v14 = 0;
    goto LABEL_20;
  }

LABEL_21:
  for (j = 0; j != 1584; j += 72)
  {
    __destructor_8_s0_s48_s56_s64(v22 + j);
  }

  return v7;
}

- (GCXboxGamepad)initWithIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = GCXboxGamepad;
  v3 = [(GCExtendedGamepad *)&v6 initWithIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    [(GCXboxGamepad *)v3 initializeExtraControllerElements];
  }

  return v4;
}

- (GCXboxGamepad)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = GCXboxGamepad;
  v5 = [(GCExtendedGamepad *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"GCXboxGamepadType"];
    [(GCXboxGamepad *)v5 initializeExtraControllerElements];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GCXboxGamepad;
  coderCopy = coder;
  [(GCExtendedGamepad *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:+[GCXboxGamepad version](GCXboxGamepad forKey:{"version", v5.receiver, v5.super_class), @"version"}];
  [coderCopy encodeInteger:self->_type forKey:@"GCXboxGamepadType"];
}

- (void)initializeExtraControllerElements
{
  if (self->_type == 1)
  {
    v66 = @"Paddle 1";
    v67 = 257;
    v69 = 0;
    v70 = 0;
    v68 = 25;
    v71 = 1;
    v72 = 1;
    v73 = 0;
    v74 = @"1.circle";
    v75 = @"XBOX_BUTTON_PADDLE_1";
    v76 = 0;
    v3 = [(GCPhysicalInputProfile *)self _buttonWithInfo:&v66];
    paddleButton1 = self->_paddleButton1;
    self->_paddleButton1 = v3;

    v55 = @"Paddle 2";
    v56 = 257;
    v58 = 0;
    v59 = 0;
    v57 = 26;
    v60 = 1;
    v61 = 1;
    v62 = 0;
    v63 = @"2.circle";
    v64 = @"XBOX_BUTTON_PADDLE_2";
    v65 = 0;
    v5 = [(GCPhysicalInputProfile *)self _buttonWithInfo:&v55];
    paddleButton2 = self->_paddleButton2;
    self->_paddleButton2 = v5;

    v44 = @"Paddle 3";
    v45 = 257;
    v47 = 0;
    v48 = 0;
    v46 = 27;
    v49 = 1;
    v50 = 1;
    v51 = 0;
    v52 = @"3.circle";
    v53 = @"XBOX_BUTTON_PADDLE_3";
    v54 = 0;
    v7 = [(GCPhysicalInputProfile *)self _buttonWithInfo:&v44];
    paddleButton3 = self->_paddleButton3;
    self->_paddleButton3 = v7;

    v33 = @"Paddle 4";
    v34 = 257;
    v36 = 0;
    v37 = 0;
    v35 = 28;
    v38 = 1;
    v39 = 1;
    v40 = 0;
    v41 = @"4.circle";
    v42 = @"XBOX_BUTTON_PADDLE_4";
    v43 = 0;
    v9 = [(GCPhysicalInputProfile *)self _buttonWithInfo:&v33];
    paddleButton4 = self->_paddleButton4;
    self->_paddleButton4 = v9;
  }

  leftTrigger = [(GCExtendedGamepad *)self leftTrigger];
  [leftTrigger setUnmappedSfSymbolsName:@"lt.rectangle.roundedtop"];

  rightTrigger = [(GCExtendedGamepad *)self rightTrigger];
  [rightTrigger setUnmappedSfSymbolsName:@"rt.rectangle.roundedtop"];

  leftShoulder = [(GCExtendedGamepad *)self leftShoulder];
  [leftShoulder setUnmappedSfSymbolsName:@"lb.rectangle.roundedbottom"];

  rightShoulder = [(GCExtendedGamepad *)self rightShoulder];
  [rightShoulder setUnmappedSfSymbolsName:@"rb.rectangle.roundedbottom"];

  buttonHome = [(GCExtendedGamepad *)self buttonHome];
  [buttonHome setUnmappedSfSymbolsName:@"logo.xbox"];

  buttonOptions = [(GCExtendedGamepad *)self buttonOptions];
  [buttonOptions setUnmappedSfSymbolsName:@"rectangle.fill.on.rectangle.fill.circle"];

  buttonHome2 = [(GCExtendedGamepad *)self buttonHome];
  [buttonHome2 setUnmappedNameLocalizationKey:@"XBOX_BUTTON_HOME"];

  buttonOptions2 = [(GCExtendedGamepad *)self buttonOptions];
  [buttonOptions2 setUnmappedNameLocalizationKey:@"XBOX_BUTTON_OPTIONS"];

  buttonMenu = [(GCExtendedGamepad *)self buttonMenu];
  [buttonMenu setUnmappedNameLocalizationKey:@"XBOX_BUTTON_MENU"];

  dpad = [(GCExtendedGamepad *)self dpad];
  [dpad setUnmappedNameLocalizationKey:@"XBOX_DIRECTION_PAD"];

  buttonA = [(GCExtendedGamepad *)self buttonA];
  [buttonA setUnmappedNameLocalizationKey:@"XBOX_BUTTON_A"];

  buttonB = [(GCExtendedGamepad *)self buttonB];
  [buttonB setUnmappedNameLocalizationKey:@"XBOX_BUTTON_B"];

  buttonX = [(GCExtendedGamepad *)self buttonX];
  [buttonX setUnmappedNameLocalizationKey:@"XBOX_BUTTON_X"];

  buttonY = [(GCExtendedGamepad *)self buttonY];
  [buttonY setUnmappedNameLocalizationKey:@"XBOX_BUTTON_Y"];

  leftShoulder2 = [(GCExtendedGamepad *)self leftShoulder];
  [leftShoulder2 setUnmappedNameLocalizationKey:@"XBOX_LEFT_SHOULDER"];

  rightShoulder2 = [(GCExtendedGamepad *)self rightShoulder];
  [rightShoulder2 setUnmappedNameLocalizationKey:@"XBOX_RIGHT_SHOULDER"];

  leftTrigger2 = [(GCExtendedGamepad *)self leftTrigger];
  [leftTrigger2 setUnmappedNameLocalizationKey:@"XBOX_LEFT_TRIGGER"];

  rightTrigger2 = [(GCExtendedGamepad *)self rightTrigger];
  [rightTrigger2 setUnmappedNameLocalizationKey:@"XBOX_RIGHT_TRIGGER"];

  leftThumbstick = [(GCExtendedGamepad *)self leftThumbstick];
  [leftThumbstick setUnmappedNameLocalizationKey:@"XBOX_LEFT_THUMBSTICK"];

  rightThumbstick = [(GCExtendedGamepad *)self rightThumbstick];
  [rightThumbstick setUnmappedNameLocalizationKey:@"XBOX_RIGHT_THUMBSTICK"];

  leftThumbstickButton = [(GCExtendedGamepad *)self leftThumbstickButton];
  [leftThumbstickButton setUnmappedNameLocalizationKey:@"XBOX_BUTTON_LEFT_THUMBSTICK"];

  rightThumbstickButton = [(GCExtendedGamepad *)self rightThumbstickButton];
  [rightThumbstickButton setUnmappedNameLocalizationKey:@"XBOX_BUTTON_RIGHT_THUMBSTICK"];
}

- (void)initWithController:(NSObject *)a1 .cold.1(NSObject *a1)
{
  if (OUTLINED_FUNCTION_4_5(a1))
  {
    OUTLINED_FUNCTION_0_1(&dword_1D2CD5000, v2, v3, "recognized series X controller", v4, v5, v6, v7, 0);
  }
}

- (void)initWithController:(NSObject *)a1 .cold.2(NSObject *a1)
{
  if (OUTLINED_FUNCTION_4_5(a1))
  {
    OUTLINED_FUNCTION_0_1(&dword_1D2CD5000, v2, v3, "recognized adaptive controller", v4, v5, v6, v7, 0);
  }
}

- (void)initWithController:(NSObject *)a1 .cold.3(NSObject *a1)
{
  if (OUTLINED_FUNCTION_4_5(a1))
  {
    OUTLINED_FUNCTION_0_1(&dword_1D2CD5000, v2, v3, "recognized elite controller", v4, v5, v6, v7, 0);
  }
}

- (void)initWithController:(NSObject *)a1 .cold.4(NSObject *a1)
{
  if (OUTLINED_FUNCTION_4_5(a1))
  {
    OUTLINED_FUNCTION_0_1(&dword_1D2CD5000, v2, v3, "recognized standard controller", v4, v5, v6, v7, 0);
  }
}

@end