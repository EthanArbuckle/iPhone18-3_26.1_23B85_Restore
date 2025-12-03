@interface GCDirectionalGamepad
- (BOOL)determineTouchStateWithDigitizerX:(float)x digitizerY:(float)y touchDown:(BOOL)down;
- (BOOL)ownershipClaimingElementsZero;
- (CGPoint)addCGPoint:(CGPoint)point toPoint:(CGPoint)toPoint;
- (CGPoint)clampPoint:(CGPoint)point toLength:(double)length;
- (CGPoint)mulCGPoint:(CGPoint)point byScalar:(double)scalar;
- (CGPoint)normalizeCGPoint:(CGPoint)point;
- (CGPoint)scaleCGPoint:(CGPoint)point toLength:(double)length;
- (CGPoint)subCGPoint:(CGPoint)point fromPoint:(CGPoint)fromPoint;
- (GCDirectionalGamepad)initWithIdentifier:(id)identifier;
- (id)centerButtonEvent:(id)event pressed:(BOOL)pressed;
- (id)dpadDirectionEvent:(id)event direction:(unint64_t)direction pressed:(BOOL)pressed;
- (id)productCategory;
- (void)reportDigitizerChange:(id)change;
- (void)reportDirectionpadChange:(id)change onQueue:(id)queue;
- (void)setDeviceType:(int64_t)type;
- (void)setReportsAbsoluteDpadValues:(BOOL)values;
@end

@implementation GCDirectionalGamepad

- (GCDirectionalGamepad)initWithIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = GCDirectionalGamepad;
  result = [(GCMicroGamepad *)&v4 initWithIdentifier:identifier];
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
    productCategory = @"Siri Remote";
    goto LABEL_9;
  }

  deviceType = [(GCDirectionalGamepad *)self deviceType];
  if (deviceType == 5)
  {
    v4 = &GCProductCategorySiriRemote2ndGen;
    goto LABEL_7;
  }

  if (deviceType == 4)
  {
    v4 = &GCProductCategoryUniversalElectronicsRemote;
LABEL_7:
    productCategory = *v4;
    goto LABEL_9;
  }

  v7.receiver = self;
  v7.super_class = GCDirectionalGamepad;
  productCategory = [(GCMicroGamepad *)&v7 productCategory];
LABEL_9:

  return productCategory;
}

- (void)setReportsAbsoluteDpadValues:(BOOL)values
{
  dpad = [(GCMicroGamepad *)self dpad];
  nonAnalog = [dpad nonAnalog];

  if ((nonAnalog & 1) == 0)
  {
    self->_reportsAbsoluteDpadValues = values;
  }
}

- (void)setDeviceType:(int64_t)type
{
  if (gc_isInternalBuild())
  {
    [GCDirectionalGamepad setDeviceType:];
  }

  dpad = [(GCMicroGamepad *)self dpad];
  [dpad setNonAnalog:0];

  if (type == 5)
  {
    goto LABEL_8;
  }

  if (type == 4)
  {
    dpad2 = [(GCMicroGamepad *)self dpad];
    [dpad2 setNonAnalog:1];

    controller = [(GCPhysicalInputProfile *)self controller];
    [controller setForwarded:0];

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

      buttonMenu = [(GCMicroGamepad *)self buttonMenu];
      [buttonMenu setUnmappedNameLocalizationKey:@"DIRECTIONAL_GAMEPAD_BUTTON_MENU"];

      v18 = _GCFConvertStringToLocalizedString();
      buttonMenu2 = [(GCMicroGamepad *)self buttonMenu];
      [buttonMenu2 setLocalizedName:v18];
    }

    goto LABEL_14;
  }

  if (type != 3)
  {
LABEL_14:
    controller2 = [(GCPhysicalInputProfile *)self controller];
    v7 = controller2;
    v8 = 0;
    goto LABEL_15;
  }

  controller2 = [(GCPhysicalInputProfile *)self controller];
  v7 = controller2;
  v8 = 1;
LABEL_15:
  [controller2 setForwarded:v8];

  self->_deviceType = type;
  controller3 = [(GCPhysicalInputProfile *)self controller];
  [controller3 setVendorName:0];
}

- (void)reportDigitizerChange:(id)change
{
  changeCopy = change;
  v5 = &OBJC_IVAR___GCDirectionalGamepad__relativePosition;
  if (self->_reportsAbsoluteDpadValues)
  {
    v5 = &OBJC_IVAR___GCDirectionalGamepad__absolutePosition;
  }

  touchState = self->_touchState;
  if (!touchState)
  {
    v27 = changeCopy;
    dpad = [(GCMicroGamepad *)self dpad];
    controller = [(GCPhysicalInputProfile *)self controller];
    handlerQueue = [controller handlerQueue];
    v15 = dpad;
    xAxis = [v15 xAxis];
    v24 = [xAxis _setValue:handlerQueue queue:0.0];

    yAxis = [v15 yAxis];
    v26 = [yAxis _setValue:handlerQueue queue:0.0];

    if ((v24 & 1) == 0 && !v26)
    {
      goto LABEL_12;
    }

LABEL_11:
    [0 addObject:v15];
LABEL_12:

    changeCopy = v27;
    goto LABEL_13;
  }

  v7 = (self + *v5);
  v8 = *v7;
  v9 = v7[1];
  if (touchState == 2 || touchState == 1)
  {
    v27 = changeCopy;
    dpad2 = [(GCMicroGamepad *)self dpad];
    controller = [(GCPhysicalInputProfile *)self controller];
    handlerQueue = [controller handlerQueue];
    v15 = dpad2;
    xAxis2 = [v15 xAxis];
    v11 = v8;
    *&v17 = v11;
    v18 = [xAxis2 _setValue:handlerQueue queue:v17];

    yAxis2 = [v15 yAxis];
    v12 = v9;
    *&v20 = v12;
    v21 = [yAxis2 _setValue:handlerQueue queue:v20];

    if ((v18 & 1) == 0 && (v21 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
}

- (void)reportDirectionpadChange:(id)change onQueue:(id)queue
{
  changeCopy = change;
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

  queueCopy = queue;
  xAxis = [changeCopy xAxis];
  *&v12 = v9;
  v13 = [xAxis _setValue:queueCopy queue:v12];

  yAxis = [changeCopy yAxis];
  *&v15 = v8;
  v16 = [yAxis _setValue:queueCopy queue:v15];

  if ((v13 & 1) != 0 || v16)
  {
    [0 addObject:changeCopy];
  }
}

- (BOOL)determineTouchStateWithDigitizerX:(float)x digitizerY:(float)y touchDown:(BOOL)down
{
  touchState = self->_touchState;
  if (touchState)
  {
    downCopy = 0;
  }

  else
  {
    downCopy = down;
  }

  v7 = touchState == 1 && down;
  if (downCopy || v7 || (v8 = self->_touchState, !down))
  {
    v9 = !v7;
    v10 = 1;
    if (!v9)
    {
      v10 = 2;
    }

    if (down)
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
    v11 = !down;
  }

  return !v11 && (v8 != 2 || self->_absolutePosition.x != x || self->_absolutePosition.y != y);
}

- (CGPoint)normalizeCGPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(GCDirectionalGamepad *)self magnitudeForCGPoint:?];
  v6 = y / v5;
  v7 = x / v5;
  result.y = v6;
  result.x = v7;
  return result;
}

- (CGPoint)scaleCGPoint:(CGPoint)point toLength:(double)length
{
  [(GCDirectionalGamepad *)self normalizeCGPoint:point.x, point.y];
  v6 = v5 * length;
  v8 = v7 * length;
  result.y = v8;
  result.x = v6;
  return result;
}

- (CGPoint)addCGPoint:(CGPoint)point toPoint:(CGPoint)toPoint
{
  v4 = point.x + toPoint.x;
  v5 = point.y + toPoint.y;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)subCGPoint:(CGPoint)point fromPoint:(CGPoint)fromPoint
{
  v4 = fromPoint.x - point.x;
  v5 = fromPoint.y - point.y;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)mulCGPoint:(CGPoint)point byScalar:(double)scalar
{
  v4 = point.x * scalar;
  v5 = point.y * scalar;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)clampPoint:(CGPoint)point toLength:(double)length
{
  y = point.y;
  x = point.x;
  [(GCDirectionalGamepad *)self magnitudeForCGPoint:?];
  if (v7 > length)
  {
    x = x / v7 * length;
    y = y / v7 * length;
  }

  v8 = x;
  v9 = y;
  result.y = v9;
  result.x = v8;
  return result;
}

- (BOOL)ownershipClaimingElementsZero
{
  buttonA = [(GCMicroGamepad *)self buttonA];
  [buttonA value];
  if (v4 == 0.0)
  {
    buttonX = [(GCMicroGamepad *)self buttonX];
    [buttonX value];
    if (v6 == 0.0)
    {
      dpad = [(GCMicroGamepad *)self dpad];
      xAxis = [dpad xAxis];
      [xAxis value];
      if (v9 == 0.0)
      {
        dpad2 = [(GCMicroGamepad *)self dpad];
        yAxis = [dpad2 yAxis];
        [yAxis value];
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

- (id)dpadDirectionEvent:(id)event direction:(unint64_t)direction pressed:(BOOL)pressed
{
  directionPadButtonsState = self->_directionPadButtonsState;
  v7 = directionPadButtonsState ^ direction;
  v8 = directionPadButtonsState | direction;
  if (!pressed)
  {
    v8 = v7;
  }

  self->_directionPadButtonsState = v8;
  if (gc_isInternalBuild())
  {
    [GCDirectionalGamepad(DirectionPadValueChangedDelegate) dpadDirectionEvent:? direction:? pressed:?];
  }

  dpad = [(GCMicroGamepad *)self dpad];
  v10 = dpad;
  if (self->_deviceType == 5)
  {
    v11 = self->_cardinalDpad;

    if (!self->_treatOnlyCenterRingAsButtonA)
    {
      v12 = self->_directionPadButtonsState;
      v13 = self->_directionPadButtonsState != 0;
      buttonA = [(GCMicroGamepad *)self buttonA];
      isPressed = [buttonA isPressed];

      if (v13 != isPressed && !self->_centerButtonPressed)
      {
        controller = [(GCPhysicalInputProfile *)self controller];
        handlerQueue = [controller handlerQueue];
        v18 = handlerQueue;
        if (handlerQueue)
        {
          v19 = handlerQueue;
        }

        else
        {
          v19 = MEMORY[0x1E69E96A0];
          v23 = MEMORY[0x1E69E96A0];
        }

        buttonA2 = [(GCMicroGamepad *)self buttonA];
        v25 = buttonA2;
        v26 = 0.0;
        if (v12)
        {
          *&v26 = 1.0;
        }

        [buttonA2 _setValue:v19 queue:v26];

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
    v11 = dpad;
  }

  controller2 = [(GCPhysicalInputProfile *)self controller];
  handlerQueue2 = [controller2 handlerQueue];
  [(GCDirectionalGamepad *)self reportDirectionpadChange:v11 onQueue:handlerQueue2];

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

- (id)centerButtonEvent:(id)event pressed:(BOOL)pressed
{
  pressedCopy = pressed;
  eventCopy = event;
  v7 = eventCopy;
  if (self->_centerButtonPressed == pressedCopy || (self->_centerButtonPressed = pressedCopy, !self->_treatOnlyCenterRingAsButtonA) && pressedCopy && self->_directionPadButtonsState)
  {
    v8 = 0;
  }

  else
  {
    v8 = eventCopy;
    if (v8)
    {
      controller = [(GCPhysicalInputProfile *)self controller];
      handlerQueue = [controller handlerQueue];
      v11 = handlerQueue;
      if (handlerQueue)
      {
        v12 = handlerQueue;
      }

      else
      {
        v12 = MEMORY[0x1E69E96A0];
        v13 = MEMORY[0x1E69E96A0];
      }

      *&v14 = pressedCopy;
      [v8 _setValue:v12 queue:v14];
      if (!self->_treatOnlyCenterRingAsButtonA)
      {
        *&v15 = pressedCopy;
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