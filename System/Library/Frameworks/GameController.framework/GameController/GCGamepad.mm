@interface GCGamepad
- (GCControllerButtonInput)buttonA;
- (GCControllerButtonInput)buttonB;
- (GCControllerButtonInput)buttonMenu;
- (GCControllerButtonInput)buttonX;
- (GCControllerButtonInput)buttonY;
- (GCControllerButtonInput)leftShoulder;
- (GCControllerButtonInput)rightShoulder;
- (GCControllerDirectionPad)dpad;
- (GCGamepad)initWithCoder:(id)coder;
- (GCGamepadSnapshot)saveSnapshot;
- (void)_initWithIdentifier:(int)identifier createDefaultElements:;
- (void)_legacy_handleEvent:(__IOHIDEvent *)event;
- (void)_triggerValueChangedHandlerForElement:(id)element queue:(id)queue;
- (void)_triggerValueChangedHandlerForElements:(id)elements queue:(id)queue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGamepad

- (void)_legacy_handleEvent:(__IOHIDEvent *)event
{
  v80 = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  [(GCPhysicalInputProfile *)self setLastEventTimestamp:?];

  Type = IOHIDEventGetType();
  if (Type == 35)
  {
    array = [MEMORY[0x1E695DF70] array];
    controller = [(GCPhysicalInputProfile *)self controller];
    handlerQueue = [controller handlerQueue];

    IOHIDEventGetFloatValue();
    v15 = v14;
    IOHIDEventGetFloatValue();
    v17 = v16;
    IOHIDEventGetFloatValue();
    v19 = v18;
    IOHIDEventGetFloatValue();
    v21 = v20;
    IOHIDEventGetFloatValue();
    v23 = v22;
    IOHIDEventGetFloatValue();
    v25 = v24;
    IOHIDEventGetFloatValue();
    v27 = v26;
    IOHIDEventGetFloatValue();
    v29 = v28;
    IOHIDEventGetFloatValue();
    v71 = v30;
    IOHIDEventGetFloatValue();
    v72 = v31;
    v32 = self->_dpad;
    v33 = handlerQueue;
    v34 = array;
    xAxis = [(GCControllerDirectionPad *)v32 xAxis];
    *&v36 = v21 - v19;
    v37 = [xAxis _setValue:v33 queue:v36];

    yAxis = [(GCControllerDirectionPad *)v32 yAxis];
    *&v39 = v15 - v17;
    v40 = [yAxis _setValue:v33 queue:v39];

    if ((v37 & 1) != 0 || v40)
    {
      [v34 addObject:{v32, *&v71}];
    }

    v41 = v25;

    v42 = self->_button0;
    v43 = v34;
    *&v44 = v23;
    if ([(GCControllerButtonInput *)v42 _setValue:v33 queue:v44])
    {
      [v43 addObject:v42];
    }

    v46 = self->_button1;
    v47 = v43;
    *&v48 = v41;
    if ([(GCControllerButtonInput *)v46 _setValue:v33 queue:v48])
    {
      [v47 addObject:v46];
    }

    v49 = v29;

    v50 = self->_button2;
    v51 = v47;
    v45 = v27;
    *&v52 = v45;
    if ([(GCControllerButtonInput *)v50 _setValue:v33 queue:v52])
    {
      [v51 addObject:v50];
    }

    v54 = self->_button3;
    v55 = v51;
    *&v56 = v49;
    if ([(GCControllerButtonInput *)v54 _setValue:v33 queue:v56])
    {
      [v55 addObject:v54];
    }

    v58 = self->_leftShoulder;
    v59 = v55;
    v53 = v71;
    *&v60 = v53;
    if ([(GCControllerButtonInput *)v58 _setValue:v33 queue:v60])
    {
      [v59 addObject:v58];
    }

    v61 = self->_rightShoulder;
    v62 = v59;
    v57 = v72;
    *&v63 = v57;
    if ([(GCControllerButtonInput *)v61 _setValue:v33 queue:v63])
    {
      [v62 addObject:v61];
    }

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v64 = v62;
    v65 = [v64 countByEnumeratingWithState:&v74 objects:v79 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = *v75;
      do
      {
        for (i = 0; i != v66; ++i)
        {
          if (*v75 != v67)
          {
            objc_enumerationMutation(v64);
          }

          v69 = *(*(&v74 + 1) + 8 * i);
          v73[0] = MEMORY[0x1E69E9820];
          v73[1] = 3221225472;
          v73[2] = __41__GCGamepad_Legacy___legacy_handleEvent___block_invoke_99;
          v73[3] = &unk_1E8418C50;
          v73[4] = self;
          v73[5] = v69;
          dispatch_async(v33, v73);
        }

        v66 = [v64 countByEnumeratingWithState:&v74 objects:v79 count:16];
      }

      while (v66);
    }
  }

  else if (Type == 3)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v7 = IOHIDEventGetIntegerValue();
    v8 = IOHIDEventGetIntegerValue();
    if (IntegerValue == 12 && v7 == 547 && v8 == 1)
    {
      controller2 = [(GCPhysicalInputProfile *)self controller];
      handlerQueue2 = [controller2 handlerQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __41__GCGamepad_Legacy___legacy_handleEvent___block_invoke;
      block[3] = &unk_1E8418C28;
      block[4] = self;
      dispatch_async(handlerQueue2, block);
    }
  }

  v70 = *MEMORY[0x1E69E9840];
}

void __41__GCGamepad_Legacy___legacy_handleEvent___block_invoke(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __41__GCGamepad_Legacy___legacy_handleEvent___block_invoke_cold_1(a1);
  }

  v2 = [*(a1 + 32) controller];
  v3 = [v2 __deprecated_controllerPausedHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) controller];
    v5 = [v4 __deprecated_controllerPausedHandler];
    v6 = [*(a1 + 32) controller];
    (v5)[2](v5, v6);
  }
}

void __41__GCGamepad_Legacy___legacy_handleEvent___block_invoke_99(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __41__GCGamepad_Legacy___legacy_handleEvent___block_invoke_99_cold_1(a1);
  }

  v2 = [*(a1 + 32) valueDidChangeHandler];
  v3 = v2;
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32), *(a1 + 40));
  }

  v4 = *(*(a1 + 32) + 648);
  if (v4)
  {
    v5 = *(a1 + 40);
    (*(v4 + 16))();
  }
}

- (GCGamepad)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = GCIPCObjectIdentifier_Classes();
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"identifier"];

  v7 = [(GCGamepad *)self initWithIdentifier:v6];
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

- (GCControllerDirectionPad)dpad
{
  dpad = self->_dpad;
  if (dpad)
  {
    v3 = dpad;
  }

  else
  {
    dpads = [(GCPhysicalInputProfile *)self dpads];
    v3 = [dpads objectForKeyedSubscript:@"Direction Pad"];
  }

  return v3;
}

- (GCControllerButtonInput)buttonA
{
  button0 = self->_button0;
  if (button0)
  {
    v3 = button0;
  }

  else
  {
    buttons = [(GCPhysicalInputProfile *)self buttons];
    v3 = [buttons objectForKeyedSubscript:@"Button A"];
  }

  return v3;
}

- (GCControllerButtonInput)buttonB
{
  button1 = self->_button1;
  if (button1)
  {
    v3 = button1;
  }

  else
  {
    buttons = [(GCPhysicalInputProfile *)self buttons];
    v3 = [buttons objectForKeyedSubscript:@"Button A"];
  }

  return v3;
}

- (GCControllerButtonInput)buttonX
{
  button2 = self->_button2;
  if (button2)
  {
    v3 = button2;
  }

  else
  {
    buttons = [(GCPhysicalInputProfile *)self buttons];
    v3 = [buttons objectForKeyedSubscript:@"Button A"];
  }

  return v3;
}

- (GCControllerButtonInput)buttonY
{
  button3 = self->_button3;
  if (button3)
  {
    v3 = button3;
  }

  else
  {
    buttons = [(GCPhysicalInputProfile *)self buttons];
    v3 = [buttons objectForKeyedSubscript:@"Button A"];
  }

  return v3;
}

- (GCControllerButtonInput)leftShoulder
{
  leftShoulder = self->_leftShoulder;
  if (leftShoulder)
  {
    v3 = leftShoulder;
  }

  else
  {
    buttons = [(GCPhysicalInputProfile *)self buttons];
    v3 = [buttons objectForKeyedSubscript:@"Left Shoulder"];
  }

  return v3;
}

- (GCControllerButtonInput)rightShoulder
{
  rightShoulder = self->_rightShoulder;
  if (rightShoulder)
  {
    v3 = rightShoulder;
  }

  else
  {
    buttons = [(GCPhysicalInputProfile *)self buttons];
    v3 = [buttons objectForKeyedSubscript:@"Right Shoulder"];
  }

  return v3;
}

- (GCControllerButtonInput)buttonMenu
{
  buttonMenu = self->_buttonMenu;
  if (buttonMenu)
  {
    v3 = buttonMenu;
  }

  else
  {
    buttons = [(GCPhysicalInputProfile *)self buttons];
    v3 = [buttons objectForKeyedSubscript:@"Button Menu"];
  }

  return v3;
}

- (GCGamepadSnapshot)saveSnapshot
{
  *&snapshotData.version = 2359552;
  dpad = [(GCGamepad *)self dpad];
  xAxis = [dpad xAxis];
  [xAxis value];
  snapshotData.dpadX = v5;

  dpad2 = [(GCGamepad *)self dpad];
  yAxis = [dpad2 yAxis];
  [yAxis value];
  snapshotData.dpadY = v8;

  buttonA = [(GCGamepad *)self buttonA];
  [buttonA value];
  snapshotData.buttonA = v10;

  buttonB = [(GCGamepad *)self buttonB];
  [buttonB value];
  snapshotData.buttonB = v12;

  buttonX = [(GCGamepad *)self buttonX];
  [buttonX value];
  snapshotData.buttonX = v14;

  buttonY = [(GCGamepad *)self buttonY];
  [buttonY value];
  snapshotData.buttonY = v16;

  leftShoulder = [(GCGamepad *)self leftShoulder];
  [leftShoulder value];
  snapshotData.leftShoulder = v18;

  rightShoulder = [(GCGamepad *)self rightShoulder];
  [rightShoulder value];
  snapshotData.rightShoulder = v20;

  v21 = NSDataFromGCGamepadSnapShotDataV100(&snapshotData);
  v22 = [GCGamepadSnapshot alloc];
  controller = [(GCPhysicalInputProfile *)self controller];
  v24 = [(GCGamepadSnapshot *)v22 initWithController:controller snapshotData:v21];

  return v24;
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
  block[2] = __57__GCGamepad__triggerValueChangedHandlerForElement_queue___block_invoke;
  block[3] = &unk_1E841B788;
  v10 = elementCopy;
  selfCopy = self;
  block[4] = self;
  v8 = elementCopy;
  dispatch_async(queueCopy, block);
}

void __57__GCGamepad__triggerValueChangedHandlerForElement_queue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) valueDidChangeHandler];
  v3 = v2;
  v5 = v2;
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 48), *(a1 + 40));
    v3 = v5;
  }

  v4 = *(*(a1 + 32) + 648);
  if (v4)
  {
    (*(v4 + 16))(v4, *(a1 + 48), *(a1 + 40), v3);
    v3 = v5;
  }
}

- (void)_triggerValueChangedHandlerForElements:(id)elements queue:(id)queue
{
  elementsCopy = elements;
  queueCopy = queue;
  valueChangedHandler = [(GCGamepad *)self valueChangedHandler];
  v9 = _Block_copy(self->_valueChangedHandler);
  if (valueChangedHandler | v9)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__GCGamepad__triggerValueChangedHandlerForElements_queue___block_invoke;
    v10[3] = &unk_1E841B7B0;
    v13 = valueChangedHandler;
    v11 = elementsCopy;
    selfCopy = self;
    v14 = v9;
    dispatch_async(queueCopy, v10);
  }
}

void __58__GCGamepad__triggerValueChangedHandlerForElements_queue___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v22;
      do
      {
        v6 = 0;
        do
        {
          if (*v22 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v21 + 1) + 8 * v6);
          v8 = *(a1 + 40);
          (*(*(a1 + 48) + 16))();
          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v4);
    }
  }

  if (*(a1 + 56))
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = *(a1 + 32);
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * v13);
          v15 = *(a1 + 40);
          (*(*(a1 + 56) + 16))(*(a1 + 56));
          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v11);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __41__GCGamepad_Legacy___legacy_handleEvent___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) controller];
    v4 = [v3 debugName];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_DEFAULT, "%@ pause event", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __41__GCGamepad_Legacy___legacy_handleEvent___block_invoke_99_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) controller];
    v4 = [v3 debugName];
    v5 = *(a1 + 40);
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_DEFAULT, "%@ changed: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_initWithIdentifier:(int)identifier createDefaultElements:
{
  if (!self)
  {
    return 0;
  }

  v52.receiver = self;
  v52.super_class = GCGamepad;
  v4 = objc_msgSendSuper2(&v52, sel_initWithIdentifier_, a2);
  v5 = v4;
  if (v4 && identifier)
  {
    memset(v50, 0, sizeof(v50));
    v51 = 0;
    v50[8] = 1;
    v6 = [v4 _directionPadWithInfo:v50];
    OUTLINED_FUNCTION_0_36(v6, 656);
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v45 = @"Button A";
    LOBYTE(v46) = 1;
    DWORD2(v46) = 4;
    v7 = [v5 _buttonWithInfo:&v45];
    OUTLINED_FUNCTION_0_36(v7, 664);
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = @"Button B";
    LOBYTE(v41) = 1;
    DWORD2(v41) = 5;
    v8 = [v5 _buttonWithInfo:&v40];
    OUTLINED_FUNCTION_0_36(v8, 672);
    v39 = 0u;
    v38 = 0u;
    v37 = 0u;
    v36 = 0u;
    v35 = @"Button X";
    LOBYTE(v36) = 1;
    DWORD2(v36) = 6;
    v9 = [v5 _buttonWithInfo:&v35];
    OUTLINED_FUNCTION_0_36(v9, 680);
    v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    v31 = 0u;
    v30 = @"Button Y";
    LOBYTE(v31) = 1;
    DWORD2(v31) = 7;
    v10 = [v5 _buttonWithInfo:&v30];
    OUTLINED_FUNCTION_0_36(v10, 688);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = @"Left Shoulder";
    LOBYTE(v26) = 1;
    DWORD2(v26) = 8;
    v11 = [v5 _buttonWithInfo:&v25];
    OUTLINED_FUNCTION_0_36(v11, 696);
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v20 = @"Right Shoulder";
    LOBYTE(v21) = 1;
    DWORD2(v21) = 9;
    v12 = [v5 _buttonWithInfo:&v20];
    OUTLINED_FUNCTION_0_36(v12, 704);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v15 = @"Button Menu";
    LOBYTE(v16) = 1;
    DWORD2(v16) = 23;
    v13 = [v5 _buttonWithInfo:&v15];
    OUTLINED_FUNCTION_0_36(v13, 712);
  }

  return v5;
}

@end