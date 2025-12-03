@interface AXSwitchRegistrar
- (AXSwitchRegistrar)init;
- (AXSwitchRegistrarDelegate)delegate;
- (BOOL)_isSwitchWithSource:(id)source keyCode:(unsigned __int16)code buttonNumber:(unsigned int)number ATVRemoteButtonUsage:(int64_t)usage midiEvent:(id)event;
- (void)_filterEvents:(BOOL)events;
- (void)_handleATVRemoteButtonDownEvent:(__IOHIDEvent *)event;
- (void)_handleApplicationDidBecomeActive:(id)active;
- (void)_handleGamepadButtonPressedEvent:(__IOHIDEvent *)event;
- (void)_handleKeyboardKeyDownEvent:(__IOHIDEvent *)event;
- (void)_handleMFIButtonDownValue:(__IOHIDValue *)value;
- (void)_handleMIDIEvent:(id)event device:(id)device entity:(id)entity source:(id)source;
- (void)beginFilteringEvents;
- (void)dealloc;
- (void)endFilteringEvents;
@end

@implementation AXSwitchRegistrar

- (AXSwitchRegistrar)init
{
  v5.receiver = self;
  v5.super_class = AXSwitchRegistrar;
  v2 = [(AXSwitchRegistrar *)&v5 init];
  if (v2)
  {
    v3 = [AXSwitch switchWithAction:0 name:0 source:0 type:@"SwitchTypeOptional"];
    [(AXSwitchRegistrar *)v2 setASwitch:v3];
  }

  return v2;
}

- (void)dealloc
{
  [(AXSwitchRegistrar *)self _filterEvents:0];
  v3.receiver = self;
  v3.super_class = AXSwitchRegistrar;
  [(AXSwitchRegistrar *)&v3 dealloc];
}

- (void)beginFilteringEvents
{
  v12 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69887F0] = [MEMORY[0x1E69887F0] sharedInstance];
  ignoreLogging = [mEMORY[0x1E69887F0] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x1E69887F0] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        v10 = 138543362;
        v11 = v9;
        _os_log_impl(&dword_18B15E000, v6, v7, "%{public}@", &v10, 0xCu);
      }
    }
  }

  [(AXSwitchRegistrar *)self _filterEvents:1];
}

- (void)endFilteringEvents
{
  v12 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69887F0] = [MEMORY[0x1E69887F0] sharedInstance];
  ignoreLogging = [mEMORY[0x1E69887F0] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x1E69887F0] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        v10 = 138543362;
        v11 = v9;
        _os_log_impl(&dword_18B15E000, v6, v7, "%{public}@", &v10, 0xCu);
      }
    }
  }

  [(AXSwitchRegistrar *)self _filterEvents:0];
}

- (BOOL)_isSwitchWithSource:(id)source keyCode:(unsigned __int16)code buttonNumber:(unsigned int)number ATVRemoteButtonUsage:(int64_t)usage midiEvent:(id)event
{
  sourceCopy = source;
  eventCopy = event;
  v13 = +[AXSettings sharedInstance];
  assistiveTouchSwitches = [v13 assistiveTouchSwitches];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __93__AXSwitchRegistrar__isSwitchWithSource_keyCode_buttonNumber_ATVRemoteButtonUsage_midiEvent___block_invoke;
  v18[3] = &unk_1E71EB9C8;
  v15 = sourceCopy;
  codeCopy = code;
  numberCopy = number;
  v21 = &v25;
  usageCopy = usage;
  v19 = v15;
  v16 = eventCopy;
  v20 = v16;
  [assistiveTouchSwitches enumerateObjectsUsingBlock:v18];
  LOBYTE(number) = *(v26 + 24);

  _Block_object_dispose(&v25, 8);
  return number;
}

void __93__AXSwitchRegistrar__isSwitchWithSource_keyCode_buttonNumber_ATVRemoteButtonUsage_midiEvent___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v24 = a2;
  v5 = [v24 source];
  v6 = [v5 isEqual:*(a1 + 32)];

  v7 = v24;
  if (v6)
  {
    v8 = [v24 source];
    if ([v8 isEqual:@"SwitchSourceKeyboard"] && objc_msgSend(v24, "keyCode") == *(a1 + 68))
    {
      goto LABEL_10;
    }

    v9 = [v24 source];
    if ([v9 isEqual:@"SwitchSourceGamepad"] && objc_msgSend(v24, "keyCode") == *(a1 + 68))
    {
LABEL_9:

LABEL_10:
LABEL_11:
      *(*(*(a1 + 48) + 8) + 24) = 1;
      *a3 = 1;
LABEL_12:
      v7 = v24;
      goto LABEL_13;
    }

    v10 = [v24 source];
    if ([v10 isEqual:@"SwitchSourceMFI"] && objc_msgSend(v24, "buttonNumber") == *(a1 + 64))
    {

      goto LABEL_9;
    }

    v11 = [v24 source];
    if ([v11 isEqual:@"SwitchSourceATVRemote"])
    {
      v12 = [v24 buttonNumber];
      v13 = *(a1 + 56);

      if (v12 == v13)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    v14 = [v24 source];
    v15 = [v14 isEqual:@"SwitchSourceMIDI"];

    v7 = v24;
    if (v15)
    {
      v16 = [v24 midiEvent];
      v17 = *(a1 + 40);
      v18 = v17;
      if (!v16)
      {
        goto LABEL_34;
      }

      if (!v17)
      {
        goto LABEL_34;
      }

      if (([v16 isOmniChannel] & 1) == 0)
      {
        v19 = [v16 channel];
        if (v19 != [v18 channel])
        {
          goto LABEL_34;
        }
      }

      v20 = [v16 type];
      if (v20 != [v18 type])
      {
        goto LABEL_34;
      }

      v21 = [v16 type];
      if ((v21 - 1) >= 3)
      {
        if (v21 == 4)
        {
          v22 = [v16 control];
          v23 = [v18 control];
        }

        else
        {
          if (v21 != 5)
          {
            goto LABEL_33;
          }

          v22 = [v16 program];
          v23 = [v18 program];
        }
      }

      else
      {
        v22 = [v16 note];
        v23 = [v18 note];
      }

      if (v22 != v23)
      {
LABEL_34:

        goto LABEL_12;
      }

LABEL_33:
      *(*(*(a1 + 48) + 8) + 24) = 1;
      *a3 = 1;
      goto LABEL_34;
    }
  }

LABEL_13:
}

- (void)_handleApplicationDidBecomeActive:(id)active
{
  delegate = [(AXSwitchRegistrar *)self delegate];
  v5 = [delegate switchRegistrarShouldFilterEvents:self];

  if (v5)
  {

    [(AXSwitchRegistrar *)self _filterEvents:1];
  }
}

- (void)_handleKeyboardKeyDownEvent:(__IOHIDEvent *)event
{
  delegate = [(AXSwitchRegistrar *)self delegate];
  v5 = [delegate switchRegistrarShouldProcessKeyboardKeyEvent:self];

  if (v5)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    if ([(AXSwitchRegistrar *)self _isKeyboardSwitchWithKeyCode:IntegerValue longPress:[(AXSwitchRegistrar *)self addLongPressSwitch]])
    {
      delegate2 = [(AXSwitchRegistrar *)self delegate];
      [delegate2 switchRegistrarKeyboardKeyAlreadyInUseForSwitch:self];
    }

    else
    {
      delegate2 = [(AXSwitchRegistrar *)self aSwitch];
      [delegate2 setKeyCode:IntegerValue];
      [delegate2 setSource:@"SwitchSourceKeyboard"];
      delegate3 = [(AXSwitchRegistrar *)self delegate];
      [delegate3 switchRegistrar:self didUpdateSwitch:delegate2];
    }
  }
}

- (void)_handleGamepadButtonPressedEvent:(__IOHIDEvent *)event
{
  delegate = [(AXSwitchRegistrar *)self delegate];
  v6 = [delegate switchRegistrarShouldProcessGamepadEvent:self];

  if (v6)
  {
    v7 = [AXGameControllerEvent axGameControllerKeyCodeForEvent:event];
    if ((v7 - 13) >= 4u)
    {
      v8 = v7;
      if ([(AXSwitchRegistrar *)self _isGamepadSwitchWithKeyCode:v7 longPress:[(AXSwitchRegistrar *)self addLongPressSwitch]])
      {
        delegate2 = [(AXSwitchRegistrar *)self delegate];
        [delegate2 switchRegistrarGamepadSourceAlreadyInUseForSwitch:self];
      }

      else
      {
        delegate2 = [(AXSwitchRegistrar *)self aSwitch];
        [delegate2 setKeyCode:v8];
        [delegate2 setSource:@"SwitchSourceGamepad"];
        delegate3 = [(AXSwitchRegistrar *)self delegate];
        [delegate3 switchRegistrar:self didUpdateSwitch:delegate2];
      }
    }
  }
}

- (void)_handleMIDIEvent:(id)event device:(id)device entity:(id)entity source:(id)source
{
  eventCopy = event;
  type = [eventCopy type];
  if (type <= 7 && ((1 << type) & 0xB4) != 0)
  {
    delegate = [(AXSwitchRegistrar *)self delegate];
    v10 = [delegate switchRegistrarShouldProcessMIDIEvent:self];

    if (v10)
    {
      if ([(AXSwitchRegistrar *)self _isMIDISwitchWithMidiEvent:eventCopy])
      {
        delegate2 = [(AXSwitchRegistrar *)self delegate];
        [delegate2 switchRegistrarMIDISourceAlreadyInUseForSwitch:self];
      }

      else
      {
        delegate2 = [(AXSwitchRegistrar *)self aSwitch];
        [delegate2 setSource:@"SwitchSourceMIDI"];
        [delegate2 setMidiEvent:eventCopy];
        delegate3 = [(AXSwitchRegistrar *)self delegate];
        [delegate3 switchRegistrar:self didUpdateSwitch:delegate2];
      }
    }
  }
}

- (void)_handleATVRemoteButtonDownEvent:(__IOHIDEvent *)event
{
  delegate = [(AXSwitchRegistrar *)self delegate];
  v5 = [delegate switchRegistrarShouldProcessKeyboardKeyEvent:self];

  if (v5)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    if ([(AXSwitchRegistrar *)self _isATVRemoteButtonSwitchWithUsage:IntegerValue longPress:[(AXSwitchRegistrar *)self addLongPressSwitch]])
    {
      delegate2 = [(AXSwitchRegistrar *)self delegate];
      [delegate2 switchRegistrarMFIButtonAlreadyInUseForSwitch:self];
    }

    else
    {
      delegate2 = [(AXSwitchRegistrar *)self aSwitch];
      [delegate2 setButtonNumber:IntegerValue];
      [delegate2 setSource:@"SwitchSourceATVRemote"];
      delegate3 = [(AXSwitchRegistrar *)self delegate];
      [delegate3 switchRegistrar:self didUpdateSwitch:delegate2];
    }
  }
}

- (void)_handleMFIButtonDownValue:(__IOHIDValue *)value
{
  delegate = [(AXSwitchRegistrar *)self delegate];
  v6 = [delegate switchRegistrarShouldProcessMFIButtonEvent:self];

  if (v6)
  {
    Element = IOHIDValueGetElement(value);
    Usage = IOHIDElementGetUsage(Element);
    if ([(AXSwitchRegistrar *)self _isMFISwitchWithButtonNumber:Usage longPress:[(AXSwitchRegistrar *)self addLongPressSwitch]])
    {
      delegate2 = [(AXSwitchRegistrar *)self delegate];
      [delegate2 switchRegistrarMFIButtonAlreadyInUseForSwitch:self];
    }

    else
    {
      delegate2 = [(AXSwitchRegistrar *)self aSwitch];
      [delegate2 setButtonNumber:Usage];
      [delegate2 setSource:@"SwitchSourceMFI"];
      delegate3 = [(AXSwitchRegistrar *)self delegate];
      [delegate3 switchRegistrar:self didUpdateSwitch:delegate2];
    }
  }
}

- (void)_filterEvents:(BOOL)events
{
  eventsCopy = events;
  device = [(AXSwitchRegistrar *)self device];
  eventSystemClient = [(AXSwitchRegistrar *)self eventSystemClient];
  manager = [(AXSwitchRegistrar *)self manager];
  if (eventsCopy)
  {
    if (!eventSystemClient)
    {
      v8 = IOHIDEventSystemClientCreate();
      if (!v8)
      {
        v24 = @"Could not create event system client";
        LOBYTE(v23) = 1;
        _AXLogWithFacility();
        if (!manager)
        {
LABEL_6:
          v13 = IOHIDManagerCreate(*MEMORY[0x1E695E480], 0);
          if (v13)
          {
            v14 = v13;
            _mfiMatching = [(AXSwitchRegistrar *)self _mfiMatching];
            IOHIDManagerSetDeviceMatchingMultiple(v14, _mfiMatching);

            Current = CFRunLoopGetCurrent();
            IOHIDManagerScheduleWithRunLoop(v14, Current, *MEMORY[0x1E695E8E0]);
            IOHIDManagerRegisterDeviceMatchingCallback(v14, _ASUIDeviceMatchingCallback, self);
            v17 = IOHIDManagerOpen(v14, 0);
            if (v17)
            {
              v24 = @"Could not open HID manager: %d";
              v25 = v17;
              LOBYTE(v23) = 1;
              _AXLogWithFacility();
            }

            [(AXSwitchRegistrar *)self setManager:v14, v23, v24, v25];
            CFRelease(v14);
          }
        }

LABEL_20:
        objc_initWeak(&location, self);
        v21 = [AXMIDIManager alloc];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __35__AXSwitchRegistrar__filterEvents___block_invoke;
        v26[3] = &unk_1E71EB9F0;
        objc_copyWeak(&v27, &location);
        v22 = [(AXMIDIManager *)v21 initWithIdentifier:@"AXEventRegistrar" eventHandler:v26];
        [(AXSwitchRegistrar *)self setMidiManager:v22];

        objc_destroyWeak(&v27);
        objc_destroyWeak(&location);
        return;
      }

      v9 = v8;
      _keyboardMatching = [(AXSwitchRegistrar *)self _keyboardMatching];
      _gamepadMatching = [(AXSwitchRegistrar *)self _gamepadMatching];
      v12 = [_keyboardMatching arrayByAddingObjectsFromArray:_gamepadMatching];

      IOHIDEventSystemClientSetMatchingMultiple();
      CFRunLoopGetCurrent();
      IOHIDEventSystemClientScheduleWithRunLoop();
      IOHIDEventSystemClientRegisterEventFilterCallbackWithPriority();
      [(AXSwitchRegistrar *)self setEventSystemClient:v9];
      CFRelease(v9);
    }

    if (!manager)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  v18 = MEMORY[0x1E695E8E0];
  if (device)
  {
    v19 = CFRunLoopGetCurrent();
    IOHIDDeviceUnscheduleFromRunLoop(device, v19, *v18);
    IOHIDDeviceClose(device, 0);
    [(AXSwitchRegistrar *)self setDevice:0];
  }

  if (eventSystemClient)
  {
    IOHIDEventSystemClientUnregisterEventFilterCallback();
    CFRunLoopGetCurrent();
    IOHIDEventSystemClientUnscheduleWithRunLoop();
    [(AXSwitchRegistrar *)self setEventSystemClient:0];
  }

  if (manager)
  {
    v20 = CFRunLoopGetCurrent();
    IOHIDManagerUnscheduleFromRunLoop(manager, v20, *v18);
    IOHIDManagerClose(manager, 0);
    [(AXSwitchRegistrar *)self setManager:0];
  }

  [(AXSwitchRegistrar *)self setMidiManager:0];
}

void __35__AXSwitchRegistrar__filterEvents___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleMIDIEvent:v12 device:v11 entity:v10 source:v9];
}

- (AXSwitchRegistrarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end