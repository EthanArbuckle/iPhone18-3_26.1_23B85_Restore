@interface GCMicroGamepad
+ (id)_current;
- (BOOL)supportsDpadTaps;
- (GCMicroGamepad)initWithCoder:(id)coder;
- (GCMicroGamepad)initWithIdentifier:(id)identifier;
- (GCMicroGamepadSnapshot)saveSnapshot;
- (id)productCategory;
- (void)_legacy_handleEvent:(__IOHIDEvent *)event;
- (void)_triggerValueChangedHandlerForElement:(id)element queue:(id)queue;
- (void)encodeWithCoder:(id)coder;
- (void)microControllerWithDigitizerX:(float)x digitizerY:(float)y timestamp:(unint64_t)timestamp touchDown:(BOOL)down;
- (void)setLastEventTimestamp:(double)timestamp;
- (void)setStateFromMicroGamepad:(GCMicroGamepad *)microGamepad;
@end

@implementation GCMicroGamepad

- (BOOL)supportsDpadTaps
{
  controller = [(GCPhysicalInputProfile *)self controller];
  isForwarded = [controller isForwarded];

  return isForwarded;
}

- (id)productCategory
{
  if (GCCurrentProcessLinkedOnAfter(0x7E50901FFFFFFFFuLL) && [(GCMicroGamepad *)self conformsToProtocol:&unk_1F4E9C418])
  {
    deviceType = [(GCMicroGamepad *)self deviceType];
    if ((deviceType - 1) > 2)
    {
      v4 = @"Generic Remote";
    }

    else
    {
      v4 = *off_1E841B650[deviceType - 1];
    }
  }

  else
  {
    v4 = @"Siri Remote";
  }

  return v4;
}

- (void)microControllerWithDigitizerX:(float)x digitizerY:(float)y timestamp:(unint64_t)timestamp touchDown:(BOOL)down
{
  downCopy = down;
  controller = [(GCPhysicalInputProfile *)self controller];
  profile = [controller profile];

  controller2 = [(GCPhysicalInputProfile *)self controller];
  profile2 = [controller2 profile];
  dpad = [profile dpad];
  if (downCopy)
  {
    [profile digitizerTouchEvent:dpad x:timestamp y:0 timestamp:x forceSkipDpadRotation:y];
  }

  else
  {
    [profile digitizerTouchUp:dpad timestamp:timestamp forceSkipDpadRotation:0];
  }

  controller3 = [(GCPhysicalInputProfile *)self controller];
  handlerQueue = [controller3 handlerQueue];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __87__GCMicroGamepad_Legacy__microControllerWithDigitizerX_digitizerY_timestamp_touchDown___block_invoke;
  v21[3] = &unk_1E841B630;
  v22 = controller2;
  v23 = profile;
  v24 = profile2;
  selfCopy = self;
  v18 = profile2;
  v19 = profile;
  v20 = controller2;
  dispatch_async(handlerQueue, v21);
}

void __87__GCMicroGamepad_Legacy__microControllerWithDigitizerX_digitizerY_timestamp_touchDown___block_invoke(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __87__GCMicroGamepad_Legacy__microControllerWithDigitizerX_digitizerY_timestamp_touchDown___block_invoke_cold_1(a1);
  }

  v2 = [*(a1 + 48) valueDidChangeHandler];
  if (v2)
  {
    v3 = *(a1 + 56);
    v4 = [*(a1 + 40) dpad];
    (v2)[2](v2, v3, v4);
  }

  v5 = *(*(a1 + 48) + 648);
  if (v5)
  {
    v6 = *(a1 + 56);
    v7 = [*(a1 + 40) dpad];
    (*(v5 + 16))(v5, v6, v7);
  }
}

- (void)_legacy_handleEvent:(__IOHIDEvent *)event
{
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  [(GCMicroGamepad *)self setLastEventTimestamp:?];

  Type = IOHIDEventGetType();
  if (Type != 11)
  {
    if (Type != 3)
    {
      return;
    }

    selfCopy = self;
    IntegerValue = IOHIDEventGetIntegerValue();
    v8 = IOHIDEventGetIntegerValue();
    v9 = v8;
    v10 = IntegerValue == 12 && v8 == 547 || IntegerValue == 1 && v8 == 134;
    v22 = IOHIDEventGetIntegerValue();
    controller = [(GCPhysicalInputProfile *)selfCopy controller];
    handlerQueue = [controller handlerQueue];
    v25 = handlerQueue;
    if (handlerQueue)
    {
      v26 = handlerQueue;
    }

    else
    {
      v26 = MEMORY[0x1E69E96A0];
      v27 = MEMORY[0x1E69E96A0];
    }

    if (v22 == 1 && v10)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __46__GCMicroGamepad_Legacy___legacy_handleEvent___block_invoke;
      block[3] = &unk_1E8418C28;
      v54 = controller;
      dispatch_async(v26, block);
    }

    if ([(GCMicroGamepad *)selfCopy conformsToProtocol:&unk_1F4EA4010])
    {
      v29 = selfCopy;
    }

    else
    {
      v29 = 0;
    }

    if (IntegerValue == 12)
    {
      if (v9 <= 68)
      {
        if (v9 <= 66)
        {
          if (v9 != 65)
          {
            if (v9 == 66)
            {
              dpad = [(GCMicroGamepad *)selfCopy dpad];
              if (v29)
              {
                v31 = v22 != 0;
                v32 = v29;
                v33 = dpad;
                v34 = 1;
LABEL_56:
                buttonA2 = [(GCMicroGamepad *)v32 dpadDirectionEvent:v33 direction:v34 pressed:v31];
                goto LABEL_57;
              }

              v41 = v22;
              goto LABEL_66;
            }

LABEL_75:

            return;
          }

          goto LABEL_44;
        }

        if (v9 == 67)
        {
          dpad = [(GCMicroGamepad *)selfCopy dpad];
          if (v29)
          {
            v31 = v22 != 0;
            v32 = v29;
            v33 = dpad;
            v34 = 8;
            goto LABEL_56;
          }

          v41 = -v22;
LABEL_66:
          controller2 = [(GCPhysicalInputProfile *)selfCopy controller];
          handlerQueue2 = [controller2 handlerQueue];
          dpad = dpad;
          yAxis = [dpad yAxis];
LABEL_69:
          v46 = yAxis;
          *&v45 = v41;
          v47 = [yAxis _setValue:handlerQueue2 queue:v45];

          if (v47)
          {
            [0 addObject:dpad];

            dpad2 = [(GCMicroGamepad *)selfCopy dpad];
          }

          else
          {

            dpad2 = 0;
          }

          goto LABEL_73;
        }

        dpad = [(GCMicroGamepad *)selfCopy dpad];
        if (v29)
        {
          v31 = v22 != 0;
          v32 = v29;
          v33 = dpad;
          v34 = 4;
          goto LABEL_56;
        }

        v41 = -v22;
        goto LABEL_68;
      }

      if (v9 <= 204)
      {
        if (v9 != 69)
        {
          if (v9 != 128)
          {
            goto LABEL_75;
          }

LABEL_44:
          buttonA = [(GCMicroGamepad *)selfCopy buttonA];
          dpad = buttonA;
          if (v29)
          {
            buttonA2 = [(GCMicroGamepad *)v29 centerButtonEvent:buttonA pressed:v22 != 0];
            goto LABEL_57;
          }

          *&v38 = v22;
          if ([buttonA _setValue:v26 queue:v38])
          {
            buttonA2 = [(GCMicroGamepad *)selfCopy buttonA];
            goto LABEL_57;
          }

          goto LABEL_62;
        }

        dpad = [(GCMicroGamepad *)selfCopy dpad];
        if (v29)
        {
          v31 = v22 != 0;
          v32 = v29;
          v33 = dpad;
          v34 = 2;
          goto LABEL_56;
        }

        v41 = v22;
LABEL_68:
        controller2 = [(GCPhysicalInputProfile *)selfCopy controller];
        handlerQueue2 = [controller2 handlerQueue];
        dpad = dpad;
        yAxis = [dpad xAxis];
        goto LABEL_69;
      }

      if (v9 == 205)
      {
        dpad = [(GCMicroGamepad *)selfCopy buttonX];
        *&v40 = v22;
        if ([dpad _setValue:v26 queue:v40])
        {
          buttonA2 = [(GCMicroGamepad *)selfCopy buttonX];
          goto LABEL_57;
        }

        goto LABEL_62;
      }

      if (v9 != 547)
      {
        goto LABEL_75;
      }
    }

    else if (IntegerValue != 1 || v9 != 134)
    {
      goto LABEL_75;
    }

    dpad = [(GCMicroGamepad *)selfCopy buttonMenu];
    *&v35 = v22;
    if ([dpad _setValue:v26 queue:v35])
    {
      buttonA2 = [(GCMicroGamepad *)selfCopy buttonMenu];
LABEL_57:
      dpad2 = buttonA2;
      goto LABEL_73;
    }

LABEL_62:
    dpad2 = 0;
LABEL_73:

    if (dpad2)
    {
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __46__GCMicroGamepad_Legacy___legacy_handleEvent___block_invoke_167;
      v49[3] = &unk_1E8419BC0;
      v50 = selfCopy;
      v51 = dpad2;
      v52 = v50;
      v48 = dpad2;
      dispatch_async(v26, v49);
    }

    goto LABEL_75;
  }

  IOHIDEventGetFloatValue();
  v12 = v11;
  IOHIDEventGetFloatValue();
  v14 = v13;
  TimeStamp = IOHIDEventGetTimeStamp();
  if (IOHIDEventGetIntegerValue() && IOHIDEventGetIntegerValue() == 1)
  {
    v16 = v12 * 2.0 + -1.0;
    *&v16 = v16;
    v17 = v14 * 2.0 + -1.0;
    *&v17 = v17;
    *&v17 = -*&v17;
    selfCopy3 = self;
    v19 = TimeStamp;
    v20 = 1;
  }

  else
  {
    v16 = 0.0;
    v17 = 0.0;
    selfCopy3 = self;
    v19 = TimeStamp;
    v20 = 0;
  }

  [(GCMicroGamepad *)selfCopy3 microControllerWithDigitizerX:v19 digitizerY:v20 timestamp:v16 touchDown:v17];
}

void __46__GCMicroGamepad_Legacy___legacy_handleEvent___block_invoke(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __46__GCMicroGamepad_Legacy___legacy_handleEvent___block_invoke_cold_1(a1);
  }

  v2 = [*(a1 + 32) __deprecated_controllerPausedHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) __deprecated_controllerPausedHandler];
    v3[2](v3, *(a1 + 32));
  }
}

void __46__GCMicroGamepad_Legacy___legacy_handleEvent___block_invoke_167(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __46__GCMicroGamepad_Legacy___legacy_handleEvent___block_invoke_167_cold_1(a1);
  }

  v2 = [*(a1 + 32) valueDidChangeHandler];
  v3 = v2;
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 48), *(a1 + 40));
  }

  v4 = *(*(a1 + 32) + 648);
  if (v4)
  {
    (*(v4 + 16))(v4, *(a1 + 48), *(a1 + 40));
  }
}

- (void)setLastEventTimestamp:(double)timestamp
{
  v3.receiver = self;
  v3.super_class = GCMicroGamepad;
  [(GCPhysicalInputProfile *)&v3 setLastEventTimestamp:timestamp];
}

- (GCMicroGamepad)initWithIdentifier:(id)identifier
{
  v33.receiver = self;
  v33.super_class = GCMicroGamepad;
  v3 = [(GCPhysicalInputProfile *)&v33 initWithIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    v29[8] = 1;
    v31 = @"SIRI_REMOTE_DIRECTION_PAD";
    v32 = 0;
    v5 = [(GCPhysicalInputProfile *)v3 _directionPadWithInfo:v29];
    dpad = v4->_dpad;
    v4->_dpad = v5;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = @"Button A";
    LOWORD(v25) = 257;
    *&v28 = @"SIRI_REMOTE_BUTTON_A";
    v7 = [(GCPhysicalInputProfile *)v4 _buttonWithInfo:&v24];
    button0 = v4->_button0;
    v4->_button0 = v7;

    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v19 = @"Button X";
    LOWORD(v20) = 257;
    *&v23 = @"SIRI_REMOTE_BUTTON_X";
    v9 = [(GCPhysicalInputProfile *)v4 _buttonWithInfo:&v19];
    button1 = v4->_button1;
    v4->_button1 = v9;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = @"Button Menu";
    LOWORD(v15) = 257;
    *&v18 = @"SIRI_REMOTE_BUTTON_MENU";
    v11 = [(GCPhysicalInputProfile *)v4 _buttonWithInfo:&v14];
    buttonMenu = v4->_buttonMenu;
    v4->_buttonMenu = v11;
  }

  return v4;
}

- (GCMicroGamepad)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = GCIPCObjectIdentifier_Classes();
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"identifier"];

  v7 = [(GCMicroGamepad *)self initWithIdentifier:v6];
  if (v7)
  {
    -[GCControllerDirectionPad setNonAnalog:](v7->_dpad, "setNonAnalog:", [coderCopy decodeBoolForKey:@"digital"]);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(GCPhysicalInputProfile *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  [coderCopy encodeBool:0 forKey:@"digital"];
}

- (GCMicroGamepadSnapshot)saveSnapshot
{
  snapshotData.version = 256;
  snapshotData.size = 20;
  dpad = [(GCMicroGamepad *)self dpad];
  xAxis = [dpad xAxis];
  [xAxis value];
  snapshotData.dpadX = v5;

  dpad2 = [(GCMicroGamepad *)self dpad];
  yAxis = [dpad2 yAxis];
  [yAxis value];
  snapshotData.dpadY = v8;

  buttonA = [(GCMicroGamepad *)self buttonA];
  [buttonA value];
  snapshotData.buttonA = v10;

  buttonX = [(GCMicroGamepad *)self buttonX];
  [buttonX value];
  snapshotData.buttonX = v12;

  v13 = NSDataFromGCMicroGamepadSnapshotData(&snapshotData);
  v14 = [GCMicroGamepadSnapshot alloc];
  controller = [(GCPhysicalInputProfile *)self controller];
  v16 = [(GCMicroGamepadSnapshot *)v14 initWithController:controller snapshotData:v13];

  return v16;
}

- (void)setStateFromMicroGamepad:(GCMicroGamepad *)microGamepad
{
  v66 = *MEMORY[0x1E69E9840];
  v57 = microGamepad;
  controller = [(GCPhysicalInputProfile *)self controller];
  if (!controller || (v5 = controller, -[GCPhysicalInputProfile controller](self, "controller"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isSnapshot], v6, v5, v7))
  {
    array = [MEMORY[0x1E695DF70] array];
    controller2 = [(GCPhysicalInputProfile *)self controller];
    handlerQueue = [controller2 handlerQueue];

    dpad = self->_dpad;
    dpad = [(GCMicroGamepad *)v57 dpad];
    xAxis = [dpad xAxis];
    [xAxis value];
    v13 = v12;
    dpad2 = [(GCMicroGamepad *)v57 dpad];
    yAxis = [dpad2 yAxis];
    [yAxis value];
    v17 = v16;
    v18 = dpad;
    v19 = handlerQueue;
    v20 = array;
    xAxis2 = [(GCControllerDirectionPad *)v18 xAxis];
    LODWORD(v22) = v13;
    v23 = [xAxis2 _setValue:v19 queue:v22];

    yAxis2 = [(GCControllerDirectionPad *)v18 yAxis];
    LODWORD(v25) = v17;
    v26 = [yAxis2 _setValue:v19 queue:v25];

    if ((v23 & 1) != 0 || v26)
    {
      [v20 addObject:v18];
    }

    buttonMenu = self->_buttonMenu;
    buttonMenu = [(GCMicroGamepad *)v57 buttonMenu];
    [buttonMenu value];
    v30 = v29;
    v31 = buttonMenu;
    v32 = v20;
    LODWORD(v33) = v30;
    if ([(GCControllerButtonInput *)v31 _setValue:v19 queue:v33])
    {
      [v32 addObject:v31];
    }

    button0 = self->_button0;
    buttonA = [(GCMicroGamepad *)v57 buttonA];
    [buttonA value];
    v37 = v36;
    v38 = button0;
    v39 = v32;
    LODWORD(v40) = v37;
    if ([(GCControllerButtonInput *)v38 _setValue:v19 queue:v40])
    {
      [v39 addObject:v38];
    }

    button1 = self->_button1;
    buttonX = [(GCMicroGamepad *)v57 buttonX];
    [buttonX value];
    v44 = v43;
    v45 = button1;
    v46 = v39;
    LODWORD(v47) = v44;
    if ([(GCControllerButtonInput *)v45 _setValue:v19 queue:v47])
    {
      [v46 addObject:v45];
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v48 = v46;
    v49 = [v48 countByEnumeratingWithState:&v61 objects:v65 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v62;
      do
      {
        v52 = 0;
        do
        {
          if (*v62 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v53 = *(*(&v61 + 1) + 8 * v52);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __43__GCMicroGamepad_setStateFromMicroGamepad___block_invoke;
          block[3] = &unk_1E8419BC0;
          block[4] = self;
          v59 = v57;
          v60 = v53;
          dispatch_async(v19, block);

          ++v52;
        }

        while (v50 != v52);
        v50 = [v48 countByEnumeratingWithState:&v61 objects:v65 count:16];
      }

      while (v50);
    }
  }

  v54 = *MEMORY[0x1E69E9840];
}

void __43__GCMicroGamepad_setStateFromMicroGamepad___block_invoke(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __43__GCMicroGamepad_setStateFromMicroGamepad___block_invoke_cold_1(a1);
  }

  v2 = [*(a1 + 32) valueDidChangeHandler];
  v3 = v2;
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32), *(a1 + 48));
  }

  v4 = *(*(a1 + 32) + 648);
  if (v4)
  {
    v5 = *(a1 + 48);
    (*(v4 + 16))();
  }
}

+ (id)_current
{
  v2 = +[_GCLegacyDeviceSession sharedInstance];
  currentMicroGamepad = [v2 currentMicroGamepad];

  return currentMicroGamepad;
}

- (void)_triggerValueChangedHandlerForElement:(id)element queue:(id)queue
{
  elementCopy = element;
  queueCopy = queue;
  if (gc_isInternalBuild())
  {
    [GCExtendedGamepad _triggerValueChangedHandlerForElement:elementCopy queue:?];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__GCMicroGamepad__triggerValueChangedHandlerForElement_queue___block_invoke;
  block[3] = &unk_1E8418C78;
  block[4] = self;
  v10 = elementCopy;
  selfCopy = self;
  v8 = elementCopy;
  dispatch_async(queueCopy, block);
}

void __62__GCMicroGamepad__triggerValueChangedHandlerForElement_queue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) valueDidChangeHandler];
  v3 = v2;
  v5 = v2;
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32), *(a1 + 40));
    v3 = v5;
  }

  v4 = *(*(a1 + 32) + 648);
  if (v4)
  {
    (*(v4 + 16))(v4, *(a1 + 48), *(a1 + 40), v3);
    v3 = v5;
  }
}

void __87__GCMicroGamepad_Legacy__microControllerWithDigitizerX_digitizerY_timestamp_touchDown___block_invoke_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) debugName];
    v10 = [*(a1 + 40) dpad];
    OUTLINED_FUNCTION_10();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __46__GCMicroGamepad_Legacy___legacy_handleEvent___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) debugName];
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __46__GCMicroGamepad_Legacy___legacy_handleEvent___block_invoke_167_cold_1(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) controller];
    v10 = [v3 debugName];
    v11 = *(a1 + 40);
    OUTLINED_FUNCTION_10();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __43__GCMicroGamepad_setStateFromMicroGamepad___block_invoke_cold_1(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) controller];
    v4 = [v3 debugName];
    v5 = [*(a1 + 40) controller];
    v6 = [v5 debugName];
    v7 = *(a1 + 48);
    v9 = 138412802;
    v10 = v4;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_DEFAULT, "set %@ StateFromMicroGamepad %@: %@", &v9, 0x20u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end