@interface GCXboxGamepad
- (GCXboxGamepad)initWithCoder:(id)a3;
- (GCXboxGamepad)initWithController:(id)a3;
- (GCXboxGamepad)initWithIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)initializeExtraControllerElements;
@end

@implementation GCXboxGamepad

- (GCXboxGamepad)initWithController:(id)a3
{
  v4 = a3;
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
  v6 = [(GCExtendedGamepad *)&v21 initWithController:v4 initInfo:v22];
  v7 = v6;
  if (v6)
  {
    v8 = [(GCPhysicalInputProfile *)v6 controller];
    v9 = [v8 hidServices];
    v10 = [v9 firstObject];
    v11 = [v10 numberPropertyForKey:@"ProductID"];
    v12 = [v11 unsignedIntValue];

    v13 = v12 - 2;
    if ((v12 - 2818) <= 0x3A)
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

- (GCXboxGamepad)initWithIdentifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = GCXboxGamepad;
  v3 = [(GCExtendedGamepad *)&v6 initWithIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    [(GCXboxGamepad *)v3 initializeExtraControllerElements];
  }

  return v4;
}

- (GCXboxGamepad)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = GCXboxGamepad;
  v5 = [(GCExtendedGamepad *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"GCXboxGamepadType"];
    [(GCXboxGamepad *)v5 initializeExtraControllerElements];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GCXboxGamepad;
  v4 = a3;
  [(GCExtendedGamepad *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:+[GCXboxGamepad version](GCXboxGamepad forKey:{"version", v5.receiver, v5.super_class), @"version"}];
  [v4 encodeInteger:self->_type forKey:@"GCXboxGamepadType"];
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

  v11 = [(GCExtendedGamepad *)self leftTrigger];
  [v11 setUnmappedSfSymbolsName:@"lt.rectangle.roundedtop"];

  v12 = [(GCExtendedGamepad *)self rightTrigger];
  [v12 setUnmappedSfSymbolsName:@"rt.rectangle.roundedtop"];

  v13 = [(GCExtendedGamepad *)self leftShoulder];
  [v13 setUnmappedSfSymbolsName:@"lb.rectangle.roundedbottom"];

  v14 = [(GCExtendedGamepad *)self rightShoulder];
  [v14 setUnmappedSfSymbolsName:@"rb.rectangle.roundedbottom"];

  v15 = [(GCExtendedGamepad *)self buttonHome];
  [v15 setUnmappedSfSymbolsName:@"logo.xbox"];

  v16 = [(GCExtendedGamepad *)self buttonOptions];
  [v16 setUnmappedSfSymbolsName:@"rectangle.fill.on.rectangle.fill.circle"];

  v17 = [(GCExtendedGamepad *)self buttonHome];
  [v17 setUnmappedNameLocalizationKey:@"XBOX_BUTTON_HOME"];

  v18 = [(GCExtendedGamepad *)self buttonOptions];
  [v18 setUnmappedNameLocalizationKey:@"XBOX_BUTTON_OPTIONS"];

  v19 = [(GCExtendedGamepad *)self buttonMenu];
  [v19 setUnmappedNameLocalizationKey:@"XBOX_BUTTON_MENU"];

  v20 = [(GCExtendedGamepad *)self dpad];
  [v20 setUnmappedNameLocalizationKey:@"XBOX_DIRECTION_PAD"];

  v21 = [(GCExtendedGamepad *)self buttonA];
  [v21 setUnmappedNameLocalizationKey:@"XBOX_BUTTON_A"];

  v22 = [(GCExtendedGamepad *)self buttonB];
  [v22 setUnmappedNameLocalizationKey:@"XBOX_BUTTON_B"];

  v23 = [(GCExtendedGamepad *)self buttonX];
  [v23 setUnmappedNameLocalizationKey:@"XBOX_BUTTON_X"];

  v24 = [(GCExtendedGamepad *)self buttonY];
  [v24 setUnmappedNameLocalizationKey:@"XBOX_BUTTON_Y"];

  v25 = [(GCExtendedGamepad *)self leftShoulder];
  [v25 setUnmappedNameLocalizationKey:@"XBOX_LEFT_SHOULDER"];

  v26 = [(GCExtendedGamepad *)self rightShoulder];
  [v26 setUnmappedNameLocalizationKey:@"XBOX_RIGHT_SHOULDER"];

  v27 = [(GCExtendedGamepad *)self leftTrigger];
  [v27 setUnmappedNameLocalizationKey:@"XBOX_LEFT_TRIGGER"];

  v28 = [(GCExtendedGamepad *)self rightTrigger];
  [v28 setUnmappedNameLocalizationKey:@"XBOX_RIGHT_TRIGGER"];

  v29 = [(GCExtendedGamepad *)self leftThumbstick];
  [v29 setUnmappedNameLocalizationKey:@"XBOX_LEFT_THUMBSTICK"];

  v30 = [(GCExtendedGamepad *)self rightThumbstick];
  [v30 setUnmappedNameLocalizationKey:@"XBOX_RIGHT_THUMBSTICK"];

  v31 = [(GCExtendedGamepad *)self leftThumbstickButton];
  [v31 setUnmappedNameLocalizationKey:@"XBOX_BUTTON_LEFT_THUMBSTICK"];

  v32 = [(GCExtendedGamepad *)self rightThumbstickButton];
  [v32 setUnmappedNameLocalizationKey:@"XBOX_BUTTON_RIGHT_THUMBSTICK"];
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