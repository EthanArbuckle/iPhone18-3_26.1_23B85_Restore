@interface GCDirectionalGamepad
- (BOOL)determineTouchStateWithDigitizerX:(float)a3 digitizerY:(float)a4 touchDown:(BOOL)a5;
- (BOOL)ownershipClaimingElementsZero;
- (CGPoint)addCGPoint:(CGPoint)a3 toPoint:(CGPoint)a4;
- (CGPoint)clampPoint:(CGPoint)a3 toLength:(double)a4;
- (CGPoint)mulCGPoint:(CGPoint)a3 byScalar:(double)a4;
- (CGPoint)normalizeCGPoint:(CGPoint)a3;
- (CGPoint)scaleCGPoint:(CGPoint)a3 toLength:(double)a4;
- (CGPoint)subCGPoint:(CGPoint)a3 fromPoint:(CGPoint)a4;
- (GCDirectionalGamepad)initWithIdentifier:(id)a3;
- (id)centerButtonEvent:(id)a3 pressed:(BOOL)a4;
- (id)dpadDirectionEvent:(id)a3 direction:(unint64_t)a4 pressed:(BOOL)a5;
- (id)productCategory;
- (void)reportDigitizerChange:(id)a3;
- (void)reportDirectionpadChange:(id)a3 onQueue:(id)a4;
- (void)setDeviceType:(int64_t)a3;
- (void)setReportsAbsoluteDpadValues:(BOOL)a3;
@end

@implementation GCDirectionalGamepad

- (GCDirectionalGamepad)initWithIdentifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = GCDirectionalGamepad;
  result = [(GCMicroGamepad *)&v4 initWithIdentifier:a3];
  if (result)
  {
    result->_touchState = 0;
    result->_touchpadRelativeWindowSize = 0.5;
    result->_touchpadRelativeOriginBufferSize = 0.225;
    result->_previousButtonState = 0.0;
  }

  return result;
}

- (id)productCategory
{
  if (!GCCurrentProcessLinkedOnAfter(0x7E50901FFFFFFFFuLL))
  {
    v5 = @"Siri Remote";
    goto LABEL_9;
  }

  v3 = [(GCDirectionalGamepad *)self deviceType];
  if (v3 == 5)
  {
    v4 = &GCProductCategorySiriRemote2ndGen;
    goto LABEL_7;
  }

  if (v3 == 4)
  {
    v4 = &GCProductCategoryUniversalElectronicsRemote;
LABEL_7:
    v5 = *v4;
    goto LABEL_9;
  }

  v7.receiver = self;
  v7.super_class = GCDirectionalGamepad;
  v5 = [(GCMicroGamepad *)&v7 productCategory];
LABEL_9:

  return v5;
}

- (void)setReportsAbsoluteDpadValues:(BOOL)a3
{
  v5 = [(GCMicroGamepad *)self dpad];
  v6 = [v5 nonAnalog];

  if ((v6 & 1) == 0)
  {
    self->_reportsAbsoluteDpadValues = a3;
  }
}

- (void)setDeviceType:(int64_t)a3
{
  if (gc_isInternalBuild())
  {
    [GCDirectionalGamepad setDeviceType:];
  }

  v5 = [(GCMicroGamepad *)self dpad];
  [v5 setNonAnalog:0];

  if (a3 == 5)
  {
    goto LABEL_8;
  }

  if (a3 == 4)
  {
    v9 = [(GCMicroGamepad *)self dpad];
    [v9 setNonAnalog:1];

    v10 = [(GCPhysicalInputProfile *)self controller];
    [v10 setForwarded:0];

LABEL_8:
    if (!self->_cardinalDpad)
    {
      v11 = GCCurrentProcessLinkedOnAfter(0x7E50301FFFFFFFFuLL);
      v12 = GCCurrentProcessLinkedOnAfter(0x7E50901FFFFFFFFuLL);
      self->_treatOnlyCenterRingAsButtonA = v11 & (v12 ^ 1);
      if (gc_isInternalBuild())
      {
        [(GCDirectionalGamepad *)&self->_treatOnlyCenterRingAsButtonA setDeviceType:v11, v12 & 1];
      }

      if (!self->_treatOnlyCenterRingAsButtonA)
      {
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v32 = 0;
        v27 = @"Button Center";
        LOWORD(v28) = 257;
        v31 = @"DIRECTIONAL_GAMEPAD_BUTTON_CENTER";
        v13 = [(GCPhysicalInputProfile *)self _buttonWithInfo:&v27];
        centerButton = self->_centerButton;
        self->_centerButton = v13;
      }

      v22 = 0u;
      v26 = 0;
      v24 = 0u;
      v23 = 0u;
      v21 = @"Cardinal Direction Pad";
      LOWORD(v22) = 1;
      v25 = @"DIRECTIONAL_GAMEPAD_CARDINAL_DIRECTION_PAD";
      v15 = [(GCPhysicalInputProfile *)self _directionPadWithInfo:&v21];
      cardinalDpad = self->_cardinalDpad;
      self->_cardinalDpad = v15;

      v17 = [(GCMicroGamepad *)self buttonMenu];
      [v17 setUnmappedNameLocalizationKey:@"DIRECTIONAL_GAMEPAD_BUTTON_MENU"];

      v18 = _GCFConvertStringToLocalizedString();
      v19 = [(GCMicroGamepad *)self buttonMenu];
      [v19 setLocalizedName:v18];
    }

    goto LABEL_14;
  }

  if (a3 != 3)
  {
LABEL_14:
    v6 = [(GCPhysicalInputProfile *)self controller];
    v7 = v6;
    v8 = 0;
    goto LABEL_15;
  }

  v6 = [(GCPhysicalInputProfile *)self controller];
  v7 = v6;
  v8 = 1;
LABEL_15:
  [v6 setForwarded:v8];

  self->_deviceType = a3;
  v20 = [(GCPhysicalInputProfile *)self controller];
  [v20 setVendorName:0];
}

- (void)reportDigitizerChange:(id)a3
{
  v4 = a3;
  v5 = &OBJC_IVAR___GCDirectionalGamepad__relativePosition;
  if (self->_reportsAbsoluteDpadValues)
  {
    v5 = &OBJC_IVAR___GCDirectionalGamepad__absolutePosition;
  }

  touchState = self->_touchState;
  if (!touchState)
  {
    v27 = v4;
    v22 = [(GCMicroGamepad *)self dpad];
    v13 = [(GCPhysicalInputProfile *)self controller];
    v14 = [v13 handlerQueue];
    v15 = v22;
    v23 = [v15 xAxis];
    v24 = [v23 _setValue:v14 queue:0.0];

    v25 = [v15 yAxis];
    v26 = [v25 _setValue:v14 queue:0.0];

    if ((v24 & 1) == 0 && !v26)
    {
      goto LABEL_12;
    }

LABEL_11:
    [0 addObject:v15];
LABEL_12:

    v4 = v27;
    goto LABEL_13;
  }

  v7 = (self + *v5);
  v8 = *v7;
  v9 = v7[1];
  if (touchState == 2 || touchState == 1)
  {
    v27 = v4;
    v10 = [(GCMicroGamepad *)self dpad];
    v13 = [(GCPhysicalInputProfile *)self controller];
    v14 = [v13 handlerQueue];
    v15 = v10;
    v16 = [v15 xAxis];
    v11 = v8;
    *&v17 = v11;
    v18 = [v16 _setValue:v14 queue:v17];

    v19 = [v15 yAxis];
    v12 = v9;
    *&v20 = v12;
    v21 = [v19 _setValue:v14 queue:v20];

    if ((v18 & 1) == 0 && (v21 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
}

- (void)reportDirectionpadChange:(id)a3 onQueue:(id)a4
{
  v17 = a3;
  v6 = -1.0;
  if ((self->_directionPadButtonsState & 8) != 0)
  {
    v7 = -1.0;
  }

  else
  {
    v7 = 0.0;
  }

  if (self->_directionPadButtonsState)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = v7;
  }

  if ((self->_directionPadButtonsState & 4) == 0)
  {
    v6 = 0.0;
  }

  if ((self->_directionPadButtonsState & 2) != 0)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = v6;
  }

  v10 = a4;
  v11 = [v17 xAxis];
  *&v12 = v9;
  v13 = [v11 _setValue:v10 queue:v12];

  v14 = [v17 yAxis];
  *&v15 = v8;
  v16 = [v14 _setValue:v10 queue:v15];

  if ((v13 & 1) != 0 || v16)
  {
    [0 addObject:v17];
  }
}

- (BOOL)determineTouchStateWithDigitizerX:(float)a3 digitizerY:(float)a4 touchDown:(BOOL)a5
{
  touchState = self->_touchState;
  if (touchState)
  {
    v6 = 0;
  }

  else
  {
    v6 = a5;
  }

  v7 = touchState == 1 && a5;
  if (v6 || v7 || (v8 = self->_touchState, !a5))
  {
    v9 = !v7;
    v10 = 1;
    if (!v9)
    {
      v10 = 2;
    }

    if (a5)
    {
      v8 = v10;
    }

    else
    {
      v8 = 0;
    }

    self->_touchState = v8;
  }

  if (touchState)
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    v11 = !a5;
  }

  return !v11 && (v8 != 2 || self->_absolutePosition.x != a3 || self->_absolutePosition.y != a4);
}

- (CGPoint)normalizeCGPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(GCDirectionalGamepad *)self magnitudeForCGPoint:?];
  v6 = y / v5;
  v7 = x / v5;
  result.y = v6;
  result.x = v7;
  return result;
}

- (CGPoint)scaleCGPoint:(CGPoint)a3 toLength:(double)a4
{
  [(GCDirectionalGamepad *)self normalizeCGPoint:a3.x, a3.y];
  v6 = v5 * a4;
  v8 = v7 * a4;
  result.y = v8;
  result.x = v6;
  return result;
}

- (CGPoint)addCGPoint:(CGPoint)a3 toPoint:(CGPoint)a4
{
  v4 = a3.x + a4.x;
  v5 = a3.y + a4.y;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)subCGPoint:(CGPoint)a3 fromPoint:(CGPoint)a4
{
  v4 = a4.x - a3.x;
  v5 = a4.y - a3.y;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)mulCGPoint:(CGPoint)a3 byScalar:(double)a4
{
  v4 = a3.x * a4;
  v5 = a3.y * a4;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)clampPoint:(CGPoint)a3 toLength:(double)a4
{
  y = a3.y;
  x = a3.x;
  [(GCDirectionalGamepad *)self magnitudeForCGPoint:?];
  if (v7 > a4)
  {
    x = x / v7 * a4;
    y = y / v7 * a4;
  }

  v8 = x;
  v9 = y;
  result.y = v9;
  result.x = v8;
  return result;
}

- (BOOL)ownershipClaimingElementsZero
{
  v3 = [(GCMicroGamepad *)self buttonA];
  [v3 value];
  if (v4 == 0.0)
  {
    v5 = [(GCMicroGamepad *)self buttonX];
    [v5 value];
    if (v6 == 0.0)
    {
      v7 = [(GCMicroGamepad *)self dpad];
      v8 = [v7 xAxis];
      [v8 value];
      if (v9 == 0.0)
      {
        v10 = [(GCMicroGamepad *)self dpad];
        v11 = [v10 yAxis];
        [v11 value];
        v13 = v12 == 0.0;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)dpadDirectionEvent:(id)a3 direction:(unint64_t)a4 pressed:(BOOL)a5
{
  directionPadButtonsState = self->_directionPadButtonsState;
  v7 = directionPadButtonsState ^ a4;
  v8 = directionPadButtonsState | a4;
  if (!a5)
  {
    v8 = v7;
  }

  self->_directionPadButtonsState = v8;
  if (gc_isInternalBuild())
  {
    [GCDirectionalGamepad(DirectionPadValueChangedDelegate) dpadDirectionEvent:? direction:? pressed:?];
  }

  v9 = [(GCMicroGamepad *)self dpad];
  v10 = v9;
  if (self->_deviceType == 5)
  {
    v11 = self->_cardinalDpad;

    if (!self->_treatOnlyCenterRingAsButtonA)
    {
      v12 = self->_directionPadButtonsState;
      v13 = self->_directionPadButtonsState != 0;
      v14 = [(GCMicroGamepad *)self buttonA];
      v15 = [v14 isPressed];

      if (v13 != v15 && !self->_centerButtonPressed)
      {
        v16 = [(GCPhysicalInputProfile *)self controller];
        v17 = [v16 handlerQueue];
        v18 = v17;
        if (v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = MEMORY[0x1E69E96A0];
          v23 = MEMORY[0x1E69E96A0];
        }

        v24 = [(GCMicroGamepad *)self buttonA];
        v25 = v24;
        v26 = 0.0;
        if (v12)
        {
          *&v26 = 1.0;
        }

        [v24 _setValue:v19 queue:v26];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __95__GCDirectionalGamepad_DirectionPadValueChangedDelegate__dpadDirectionEvent_direction_pressed___block_invoke;
        block[3] = &unk_1E8418C28;
        block[4] = self;
        dispatch_async(v19, block);
      }
    }
  }

  else
  {
    v11 = v9;
  }

  v20 = [(GCPhysicalInputProfile *)self controller];
  v21 = [v20 handlerQueue];
  [(GCDirectionalGamepad *)self reportDirectionpadChange:v11 onQueue:v21];

  return v11;
}

void __95__GCDirectionalGamepad_DirectionPadValueChangedDelegate__dpadDirectionEvent_direction_pressed___block_invoke(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __95__GCDirectionalGamepad_DirectionPadValueChangedDelegate__dpadDirectionEvent_direction_pressed___block_invoke_cold_1(a1);
  }

  v2 = [*(a1 + 32) valueChangedHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) valueChangedHandler];
    v4 = *(a1 + 32);
    v5 = [v4 buttonA];
    (v3)[2](v3, v4, v5);
  }
}

- (id)centerButtonEvent:(id)a3 pressed:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (self->_centerButtonPressed == v4 || (self->_centerButtonPressed = v4, !self->_treatOnlyCenterRingAsButtonA) && v4 && self->_directionPadButtonsState)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
    if (v8)
    {
      v9 = [(GCPhysicalInputProfile *)self controller];
      v10 = [v9 handlerQueue];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = MEMORY[0x1E69E96A0];
        v13 = MEMORY[0x1E69E96A0];
      }

      *&v14 = v4;
      [v8 _setValue:v12 queue:v14];
      if (!self->_treatOnlyCenterRingAsButtonA)
      {
        *&v15 = v4;
        [(GCControllerButtonInput *)self->_centerButton _setValue:v12 queue:v15];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __84__GCDirectionalGamepad_DirectionPadValueChangedDelegate__centerButtonEvent_pressed___block_invoke;
        block[3] = &unk_1E8418C28;
        block[4] = self;
        dispatch_async(v12, block);
      }
    }
  }

  return v8;
}

void __84__GCDirectionalGamepad_DirectionPadValueChangedDelegate__centerButtonEvent_pressed___block_invoke(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __84__GCDirectionalGamepad_DirectionPadValueChangedDelegate__centerButtonEvent_pressed___block_invoke_cold_1(a1);
  }

  v2 = [*(a1 + 32) valueChangedHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) valueChangedHandler];
    v3[2](v3, *(a1 + 32), *(*(a1 + 32) + 808));
  }
}

- (void)setDeviceType:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = getGCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_29(&dword_1D2CD5000, v1, v2, "Setting %@ device type to %ld", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setDeviceType:(char)a3 .cold.2(unsigned __int8 *a1, char a2, char a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = getGCLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = @"NO";
    v8 = *a1;
    v10 = 138412802;
    if (v8)
    {
      v7 = @"YES";
    }

    v11 = v7;
    v12 = 1024;
    v13 = a2 & 1;
    v14 = 1024;
    v15 = a3 & 1;
    _os_log_impl(&dword_1D2CD5000, v6, OS_LOG_TYPE_INFO, "GCDirectionalGamepad - treatOnlyCenterRingAsButtonA? %@ (14.5 ? %d, 15.0 ? %d)", &v10, 0x18u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __95__GCDirectionalGamepad_DirectionPadValueChangedDelegate__dpadDirectionEvent_direction_pressed___block_invoke_cold_1(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) controller];
    v4 = [v3 debugName];
    v12 = [*(a1 + 32) buttonA];
    OUTLINED_FUNCTION_0_29(&dword_1D2CD5000, v5, v6, "%@ changed: %@", v7, v8, v9, v10, 2u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __84__GCDirectionalGamepad_DirectionPadValueChangedDelegate__centerButtonEvent_pressed___block_invoke_cold_1(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) controller];
    v4 = [v3 debugName];
    v12 = *(*(a1 + 32) + 808);
    OUTLINED_FUNCTION_0_29(&dword_1D2CD5000, v5, v6, "%@ changed: %@", v7, v8, v9, v10, 2u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end