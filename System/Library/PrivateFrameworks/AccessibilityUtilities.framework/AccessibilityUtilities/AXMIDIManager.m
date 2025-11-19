@interface AXMIDIManager
- (AXMIDIManager)initWithIdentifier:(id)a3 eventHandler:(id)a4;
- (id)_deviceForMidiDevice:(unsigned int)a3 addIfNeeded:(BOOL)a4;
- (id)_nameForMidiObjectType:(int)a3;
- (void)_addMidiDestination:(unsigned int)a3;
- (void)_addMidiEntity:(unsigned int)a3;
- (void)_addMidiSource:(unsigned int)a3;
- (void)_handleIOErrorNotification:(MIDIIOErrorNotification *)a3;
- (void)_handleObjectAddedNotification:(MIDIObjectAddRemoveNotification *)a3;
- (void)_handleObjectRemovedNotification:(MIDIObjectAddRemoveNotification *)a3;
- (void)_handlePropertyChangedNotification:(MIDIObjectPropertyChangeNotification *)a3;
- (void)_handleSerialPortOwnerChangedNotification:(MIDIObjectPropertyChangeNotification *)a3;
- (void)_handleThruConnectionsChangedNotification:(MIDIObjectPropertyChangeNotification *)a3;
- (void)_removeMidiDestination:(unsigned int)a3;
- (void)_removeMidiDevice:(unsigned int)a3;
- (void)_removeMidiEntity:(unsigned int)a3;
- (void)_removeMidiSource:(unsigned int)a3;
- (void)_resetAndDetectDevices;
- (void)dealloc;
- (void)device:(id)a3 entity:(id)a4 didAddSource:(id)a5;
- (void)device:(id)a3 entity:(id)a4 didRemoveSource:(id)a5;
- (void)printAttachedDevices;
@end

@implementation AXMIDIManager

- (AXMIDIManager)initWithIdentifier:(id)a3 eventHandler:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {

LABEL_9:
    v8 = 0;
    goto LABEL_15;
  }

  v38.receiver = self;
  v38.super_class = AXMIDIManager;
  v8 = [(AXMIDIManager *)&v38 init];
  if (!v8)
  {

    goto LABEL_9;
  }

  v9 = [MEMORY[0x1E696AFB0] UUID];
  v10 = [v9 UUIDString];
  v11 = [v6 stringByAppendingFormat:@"-%@", v10];

  [(AXMIDIManager *)v8 setEventHandler:v7];
  v12 = objc_alloc_init(AXMIDIParser);
  parser = v8->_parser;
  v8->_parser = v12;

  objc_storeStrong(&v8->_clientIdentifier, v11);
  v14 = [MEMORY[0x1E695DFA8] set];
  devices = v8->_devices;
  v8->_devices = v14;

  objc_initWeak(&location, v8);
  v16 = AXLogMIDI();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v40 = v11;
    _os_log_impl(&dword_18B15E000, v16, OS_LOG_TYPE_INFO, "Will create MIDI client with identifier: %@", buf, 0xCu);
  }

  notifyBlock[0] = MEMORY[0x1E69E9820];
  notifyBlock[1] = 3221225472;
  notifyBlock[2] = __49__AXMIDIManager_initWithIdentifier_eventHandler___block_invoke;
  notifyBlock[3] = &unk_1E71EC878;
  objc_copyWeak(&v36, &location);
  v17 = MIDIClientCreateWithBlock(v11, &v8->_midiClientRef, notifyBlock);
  v18 = MEMORY[0x1E696AEC0];
  v19 = [(AXMIDIManager *)v8 clientIdentifier];
  v20 = [v18 stringWithFormat:@"Error creating MIDI client with identifier: %@", v19];
  v21 = _AXMIDIHandleErrorOSStatus(v17, 1, v20);

  if (v21)
  {

    v8 = 0;
  }

  else
  {
    midiClientRef = v8->_midiClientRef;
    readBlock = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __49__AXMIDIManager_initWithIdentifier_eventHandler___block_invoke_15;
    v33 = &unk_1E71EC8A0;
    objc_copyWeak(&v34, &location);
    v23 = MIDIInputPortCreateWithBlock(midiClientRef, @"Input", &v8->_midiInputPortRef, &readBlock);
    v24 = MEMORY[0x1E696AEC0];
    v25 = objc_loadWeakRetained(&location);
    v26 = [v25 clientIdentifier];
    v27 = [v24 stringWithFormat:@"Error creating MIDI client input port with identifier: %@", v26, readBlock, v31, v32, v33];
    v28 = _AXMIDIHandleErrorOSStatus(v23, 3, v27);

    if (v28)
    {

      v8 = 0;
    }

    else
    {
      [(AXMIDIManager *)v8 _resetAndDetectDevices];
    }

    objc_destroyWeak(&v34);
  }

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);

LABEL_15:
  return v8;
}

void __49__AXMIDIManager_initWithIdentifier_eventHandler___block_invoke(uint64_t a1, unsigned int *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = AXLogMIDI();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:*a2];
    v21 = 138412290;
    v22 = v5;
    _os_log_impl(&dword_18B15E000, v4, OS_LOG_TYPE_INFO, "MIDI system change occurred. change type: %@", &v21, 0xCu);
  }

  v6 = *a2;
  if (*a2 <= 3)
  {
    switch(v6)
    {
      case 1:
        return;
      case 2:
        WeakRetained = objc_loadWeakRetained((a1 + 32));
        v8 = WeakRetained;
        if (a2[1] == 24)
        {
          v20 = a2;
        }

        else
        {
          v20 = 0;
        }

        [WeakRetained _handleObjectAddedNotification:v20];
        goto LABEL_38;
      case 3:
        v10 = objc_loadWeakRetained((a1 + 32));
        v8 = v10;
        if (a2[1] == 24)
        {
          v11 = a2;
        }

        else
        {
          v11 = 0;
        }

        [v10 _handleObjectRemovedNotification:v11];
        goto LABEL_38;
    }

    goto LABEL_24;
  }

  if (v6 > 5)
  {
    if (v6 == 6)
    {
      v17 = objc_loadWeakRetained((a1 + 32));
      v8 = v17;
      if (a2[1] == 24)
      {
        v18 = a2;
      }

      else
      {
        v18 = 0;
      }

      [v17 _handleSerialPortOwnerChangedNotification:v18];
      goto LABEL_38;
    }

    if (v6 == 7)
    {
      v12 = objc_loadWeakRetained((a1 + 32));
      v8 = v12;
      if (a2[1] == 16)
      {
        v13 = a2;
      }

      else
      {
        v13 = 0;
      }

      [v12 _handleIOErrorNotification:v13];
      goto LABEL_38;
    }

    goto LABEL_24;
  }

  if (v6 == 4)
  {
    v15 = objc_loadWeakRetained((a1 + 32));
    v8 = v15;
    if (a2[1] == 24)
    {
      v16 = a2;
    }

    else
    {
      v16 = 0;
    }

    [v15 _handlePropertyChangedNotification:v16];
    goto LABEL_38;
  }

  if (v6 != 5)
  {
LABEL_24:
    v8 = AXLogMIDI();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = [MEMORY[0x1E696AD98] numberWithInt:*a2];
      v21 = 138412290;
      v22 = v14;
      _os_log_impl(&dword_18B15E000, v8, OS_LOG_TYPE_INFO, "Unhandled MIDI notification: %@", &v21, 0xCu);
    }

    goto LABEL_38;
  }

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = v7;
  if (a2[1] == 24)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0;
  }

  [v7 _handleThruConnectionsChangedNotification:v9];
LABEL_38:
}

void __49__AXMIDIManager_initWithIdentifier_eventHandler___block_invoke_15(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = a3;
    v7 = [v6 entity];
    v8 = [v7 device];
    v9 = [WeakRetained parser];
    v15 = 0;
    v10 = [v9 parse:a2 error:&v15];
    v11 = v15;

    if (v11)
    {
      AXMIDILogError(v11);
    }

    else
    {
      v12 = AXLogMIDI();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v17 = v10;
        _os_log_impl(&dword_18B15E000, v12, OS_LOG_TYPE_INFO, "Dispatching event: %@", buf, 0xCu);
      }

      v13 = [WeakRetained eventHandler];

      if (v13)
      {
        v14 = [WeakRetained eventHandler];
        (v14)[2](v14, v10, v8, v7, v6);
      }
    }
  }
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = AXLogMIDI();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(AXMIDIManager *)self clientIdentifier];
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_18B15E000, v3, OS_LOG_TYPE_INFO, "Will dispose of MIDI client with identifier: %@", buf, 0xCu);
  }

  midiClientRef = self->_midiClientRef;
  if (midiClientRef)
  {
    v6 = MIDIClientDispose(midiClientRef);
    v7 = MEMORY[0x1E696AEC0];
    v8 = [(AXMIDIManager *)self clientIdentifier];
    v9 = [v7 stringWithFormat:@"Error disposing MIDI client with identifier: %@", v8];
    _AXMIDIHandleErrorOSStatus(v6, 2, v9);
  }

  v10.receiver = self;
  v10.super_class = AXMIDIManager;
  [(AXMIDIManager *)&v10 dealloc];
}

- (void)printAttachedDevices
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(AXMIDIManager *)self devices];
  v3 = [v2 allObjects];

  v4 = [v3 count];
  v5 = AXLogMIDI();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_INFO, "%@ attached devices", buf, 0xCu);
  }

  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v8 = AXLogMIDI();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i + 1];
        v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
        *buf = 138412546;
        v14 = v9;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&dword_18B15E000, v8, OS_LOG_TYPE_INFO, "Device %@ of %@:", buf, 0x16u);
      }

      v11 = AXLogMIDI();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v3 objectAtIndex:i];
        *buf = 138412290;
        v14 = v12;
        _os_log_impl(&dword_18B15E000, v11, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }
    }
  }
}

- (id)_nameForMidiObjectType:(int)a3
{
  if ((a3 + 1) > 0x14)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E71EC8C0[a3 + 1];
  }
}

- (void)_handleObjectAddedNotification:(MIDIObjectAddRemoveNotification *)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = AXLogMIDI();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(AXMIDIManager *)self _nameForMidiObjectType:a3->childType];
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_INFO, "MIDI Notification: add object: %@", &v11, 0xCu);
    }

    childType = a3->childType;
    if (childType > kMIDIObjectType_Entity)
    {
      if (childType == kMIDIObjectType_Source)
      {
        [(AXMIDIManager *)self _addMidiSource:a3->child];
        return;
      }

      if (childType == kMIDIObjectType_Destination)
      {
        [(AXMIDIManager *)self _addMidiDestination:a3->child];
        return;
      }
    }

    else
    {
      if (childType == kMIDIObjectType_Device)
      {
        v10 = [(AXMIDIManager *)self _deviceForMidiDevice:a3->child addIfNeeded:1];
        return;
      }

      if (childType == kMIDIObjectType_Entity)
      {
        [(AXMIDIManager *)self _addMidiEntity:a3->child];
        return;
      }
    }

    v8 = AXLogMIDI();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(AXMIDIManager *)self _nameForMidiObjectType:a3->childType];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_18B15E000, v8, OS_LOG_TYPE_INFO, "Unhandled Object added: %@", &v11, 0xCu);
    }
  }
}

- (void)_handleObjectRemovedNotification:(MIDIObjectAddRemoveNotification *)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = AXLogMIDI();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(AXMIDIManager *)self _nameForMidiObjectType:a3->childType];
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_INFO, "MIDI Notification: Remove object: %@", &v10, 0xCu);
    }

    childType = a3->childType;
    if (childType > kMIDIObjectType_Entity)
    {
      if (childType == kMIDIObjectType_Source)
      {
        [(AXMIDIManager *)self _removeMidiSource:a3->child];
        return;
      }

      if (childType == kMIDIObjectType_Destination)
      {
        [(AXMIDIManager *)self _removeMidiDestination:a3->child];
        return;
      }
    }

    else
    {
      if (childType == kMIDIObjectType_Device)
      {
        [(AXMIDIManager *)self _removeMidiDevice:a3->child];
        return;
      }

      if (childType == kMIDIObjectType_Entity)
      {
        [(AXMIDIManager *)self _removeMidiEntity:a3->child];
        return;
      }
    }

    v8 = AXLogMIDI();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(AXMIDIManager *)self _nameForMidiObjectType:a3->childType];
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_18B15E000, v8, OS_LOG_TYPE_INFO, "Unhandled Object removed: %@", &v10, 0xCu);
    }
  }
}

- (void)_handlePropertyChangedNotification:(MIDIObjectPropertyChangeNotification *)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = AXLogMIDI();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(AXMIDIManager *)self _nameForMidiObjectType:a3->objectType];
      propertyName = a3->propertyName;
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = propertyName;
      _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_INFO, "MIDI Notification: Property Changed: %@ - %@", &v8, 0x16u);
    }
  }
}

- (void)_handleThruConnectionsChangedNotification:(MIDIObjectPropertyChangeNotification *)a3
{
  v3 = AXLogMIDI();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_18B15E000, v3, OS_LOG_TYPE_INFO, "MIDI Notification: Thru Connections Changed", v4, 2u);
  }
}

- (void)_handleSerialPortOwnerChangedNotification:(MIDIObjectPropertyChangeNotification *)a3
{
  v3 = AXLogMIDI();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_18B15E000, v3, OS_LOG_TYPE_INFO, "MIDI Notification: Serial Port Owner Changed", v4, 2u);
  }
}

- (void)_handleIOErrorNotification:(MIDIIOErrorNotification *)a3
{
  if (a3)
  {
    v3 = a3;
    v5 = [(AXMIDIManager *)self _deviceForMidiDevice:a3->driverDevice addIfNeeded:0];
    LODWORD(v3) = v3->errorCode;
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MIDI Notification: MIDI I/O error. Device: %@", v5];
    _AXMIDIHandleErrorOSStatus(v3, 6, v4);
  }
}

- (void)_resetAndDetectDevices
{
  v3 = [(AXMIDIManager *)self devices];
  [v3 removeAllObjects];

  v4 = MIDIGetNumberOfDevices();
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      v7 = [(AXMIDIManager *)self _deviceForMidiDevice:MIDIGetDevice(i) addIfNeeded:1];
    }
  }
}

- (void)_removeMidiDevice:(unsigned int)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [(AXMIDIManager *)self _deviceForMidiDevice:*&a3 addIfNeeded:0];
  if (v4)
  {
    v5 = AXLogMIDI();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_INFO, "Removing device: %@", &v7, 0xCu);
    }

    v6 = [(AXMIDIManager *)self devices];
    [v6 removeObject:v4];
  }
}

- (id)_deviceForMidiDevice:(unsigned int)a3 addIfNeeded:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  v24 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [(AXMIDIManager *)self devices];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v12 midiDevice] == v5)
        {
          v13 = v12;

          goto LABEL_15;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  if (v4)
  {
    v13 = [[AXMIDIDevice alloc] initWithMIDIDevice:v5 delegate:self];
    v14 = [(AXMIDIManager *)self devices];
    [v14 addObject:v13];

    v15 = AXLogMIDI();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v13;
      _os_log_impl(&dword_18B15E000, v15, OS_LOG_TYPE_INFO, "Did add device: %@", buf, 0xCu);
    }

    [(AXMIDIDevice *)v13 resetAndDetectEntities];
  }

  else
  {
    v13 = 0;
  }

LABEL_15:

  return v13;
}

- (void)_addMidiEntity:(unsigned int)a3
{
  v3 = *&a3;
  v5 = AXMIDIDeviceForEntity(a3);
  if (v5)
  {
    v7 = v5;
    v6 = -[AXMIDIManager _deviceForMidiDevice:addIfNeeded:](self, "_deviceForMidiDevice:addIfNeeded:", [v5 MIDIDevice], 1);
    [v6 addMidiEntity:v3];

    v5 = v7;
  }
}

- (void)_removeMidiEntity:(unsigned int)a3
{
  v3 = *&a3;
  v5 = AXMIDIDeviceForEntity(a3);
  if (v5)
  {
    v7 = v5;
    v6 = -[AXMIDIManager _deviceForMidiDevice:addIfNeeded:](self, "_deviceForMidiDevice:addIfNeeded:", [v5 MIDIDevice], 1);
    [v6 removeMidiEntity:v3];

    v5 = v7;
  }
}

- (void)_addMidiSource:(unsigned int)a3
{
  v3 = *&a3;
  v5 = AXMIDIDeviceForEndpoint(a3);
  if (v5)
  {
    v7 = v5;
    v6 = -[AXMIDIManager _deviceForMidiDevice:addIfNeeded:](self, "_deviceForMidiDevice:addIfNeeded:", [v5 MIDIDevice], 1);
    [v6 addMidiSource:v3];

    v5 = v7;
  }
}

- (void)_removeMidiSource:(unsigned int)a3
{
  v3 = *&a3;
  v5 = AXMIDIDeviceForEndpoint(a3);
  if (v5)
  {
    v7 = v5;
    v6 = -[AXMIDIManager _deviceForMidiDevice:addIfNeeded:](self, "_deviceForMidiDevice:addIfNeeded:", [v5 MIDIDevice], 0);
    [v6 removeMidiSource:v3];

    v5 = v7;
  }
}

- (void)_addMidiDestination:(unsigned int)a3
{
  v3 = *&a3;
  v5 = AXMIDIDeviceForEndpoint(a3);
  if (v5)
  {
    v7 = v5;
    v6 = -[AXMIDIManager _deviceForMidiDevice:addIfNeeded:](self, "_deviceForMidiDevice:addIfNeeded:", [v5 MIDIDevice], 1);
    [v6 addMidiDestination:v3];

    v5 = v7;
  }
}

- (void)_removeMidiDestination:(unsigned int)a3
{
  v3 = *&a3;
  v5 = AXMIDIDeviceForEndpoint(a3);
  if (v5)
  {
    v7 = v5;
    v6 = -[AXMIDIManager _deviceForMidiDevice:addIfNeeded:](self, "_deviceForMidiDevice:addIfNeeded:", [v5 MIDIDevice], 0);
    [v6 removeMidiDestination:v3];

    v5 = v7;
  }
}

- (void)device:(id)a3 entity:(id)a4 didAddSource:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = MIDIPortConnectSource(self->_midiInputPortRef, [v6 midiEndpoint], v6);
  v8 = AXLogMIDI();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:v7];
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_18B15E000, v8, OS_LOG_TYPE_INFO, "Did attempt to connect inputPort to source: %@. result: %@", &v11, 0x16u);
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not connect end point to input port"];
  _AXMIDIHandleErrorOSStatus(v7, 4, v10);
}

- (void)device:(id)a3 entity:(id)a4 didRemoveSource:(id)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = MIDIPortDisconnectSource(self->_midiInputPortRef, [v6 midiEndpoint]);
  v8 = AXLogMIDI();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:v7];
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_18B15E000, v8, OS_LOG_TYPE_INFO, "Did attempt to disconnect inputPort from source: %@. result: %@", &v10, 0x16u);
  }
}

@end