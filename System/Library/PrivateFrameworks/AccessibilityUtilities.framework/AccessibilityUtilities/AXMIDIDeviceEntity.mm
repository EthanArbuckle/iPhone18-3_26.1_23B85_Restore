@interface AXMIDIDeviceEntity
- (AXMIDIDevice)device;
- (AXMIDIDeviceEntity)initWithMIDIEntity:(unsigned int)a3 device:(id)a4;
- (id)_destinationForMidiEndpoint:(unsigned int)a3 addIfNeeded:(BOOL)a4;
- (id)_sourceForMidiEndpoint:(unsigned int)a3 addIfNeeded:(BOOL)a4;
- (id)description;
- (void)removeMidiDestination:(unsigned int)a3;
- (void)removeMidiSource:(unsigned int)a3;
- (void)resetAndDetectEndpoints;
@end

@implementation AXMIDIDeviceEntity

- (AXMIDIDeviceEntity)initWithMIDIEntity:(unsigned int)a3 device:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = AXMIDIDeviceEntity;
  v7 = [(AXMIDIDeviceEntity *)&v14 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_device, v6);
    v8->_midiEntity = a3;
    v9 = [MEMORY[0x1E695DFA8] set];
    sources = v8->_sources;
    v8->_sources = v9;

    v11 = [MEMORY[0x1E695DFA8] set];
    destinations = v8->_destinations;
    v8->_destinations = v11;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AXMIDIDeviceEntity *)self device];
  v5 = [v3 stringWithFormat:@"<AXMIDIDeviceEntity:%p parent:%@>", self, v4];

  return v5;
}

- (void)resetAndDetectEndpoints
{
  NumberOfSources = MIDIEntityGetNumberOfSources(self->_midiEntity);
  if (NumberOfSources)
  {
    v4 = NumberOfSources;
    for (i = 0; i != v4; ++i)
    {
      [(AXMIDIDeviceEntity *)self addMidiSource:MIDIEntityGetSource(self->_midiEntity, i)];
    }
  }

  NumberOfDestinations = MIDIEntityGetNumberOfDestinations(self->_midiEntity);
  if (NumberOfDestinations)
  {
    v7 = NumberOfDestinations;
    for (j = 0; j != v7; ++j)
    {
      [(AXMIDIDeviceEntity *)self addMidiDestination:MIDIEntityGetDestination(self->_midiEntity, j)];
    }
  }
}

- (void)removeMidiSource:(unsigned int)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [(AXMIDIDeviceEntity *)self _sourceForMidiEndpoint:*&a3 addIfNeeded:0];
  if (v4)
  {
    v5 = AXLogMIDI();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_INFO, "Removing source: %@", &v8, 0xCu);
    }

    v6 = [(AXMIDIDeviceEntity *)self sources];
    [v6 removeObject:v4];

    v7 = [(AXMIDIDeviceEntity *)self device];
    [v7 entity:self didRemoveSource:v4];
  }
}

- (void)removeMidiDestination:(unsigned int)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [(AXMIDIDeviceEntity *)self _destinationForMidiEndpoint:*&a3 addIfNeeded:0];
  if (v4)
  {
    v5 = AXLogMIDI();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_INFO, "Removing destination: %@", &v8, 0xCu);
    }

    v6 = [(AXMIDIDeviceEntity *)self destinations];
    [v6 removeObject:v4];

    v7 = [(AXMIDIDeviceEntity *)self device];
    [v7 entity:self didRemoveDestination:v4];
  }
}

- (id)_sourceForMidiEndpoint:(unsigned int)a3 addIfNeeded:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  v24 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [(AXMIDIDeviceEntity *)self sources];
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
        if ([v12 midiEndpoint] == v5)
        {
          v13 = v12;
          goto LABEL_14;
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
    v13 = [[AXMIDIDeviceEntityEndpoint alloc] initWithMIDIEndpoint:v5 entity:self];
    v14 = [(AXMIDIDeviceEntity *)self sources];
    [v14 addObject:v13];

    v15 = AXLogMIDI();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v13;
      _os_log_impl(&dword_18B15E000, v15, OS_LOG_TYPE_INFO, "Did add source endpoint: %@", buf, 0xCu);
    }

    v7 = [(AXMIDIDeviceEntity *)self device];
    [v7 entity:self didAddSource:v13];
LABEL_14:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_destinationForMidiEndpoint:(unsigned int)a3 addIfNeeded:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  v24 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [(AXMIDIDeviceEntity *)self destinations];
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
        if ([v12 midiEndpoint] == v5)
        {
          v13 = v12;
          goto LABEL_14;
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
    v13 = [[AXMIDIDeviceEntityEndpoint alloc] initWithMIDIEndpoint:v5 entity:self];
    v14 = [(AXMIDIDeviceEntity *)self destinations];
    [v14 addObject:v13];

    v15 = AXLogMIDI();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v13;
      _os_log_impl(&dword_18B15E000, v15, OS_LOG_TYPE_INFO, "Did add destination endpoint: %@", buf, 0xCu);
    }

    v7 = [(AXMIDIDeviceEntity *)self device];
    [v7 entity:self didAddDestination:v13];
LABEL_14:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (AXMIDIDevice)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

@end