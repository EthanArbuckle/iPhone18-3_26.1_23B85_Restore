@interface AXMIDIDevice
- (AXMIDIDevice)initWithMIDIDevice:(unsigned int)a3 delegate:(id)a4;
- (AXMIDIDeviceProtocol)delegate;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_entityForMidiEntity:(unsigned int)a3 addIfNeeded:(BOOL)a4;
- (id)fullDescription;
- (unint64_t)hash;
- (void)addMidiDestination:(unsigned int)a3;
- (void)addMidiSource:(unsigned int)a3;
- (void)entity:(id)a3 didAddDestination:(id)a4;
- (void)entity:(id)a3 didAddSource:(id)a4;
- (void)entity:(id)a3 didRemoveDestination:(id)a4;
- (void)entity:(id)a3 didRemoveSource:(id)a4;
- (void)removeMidiDestination:(unsigned int)a3;
- (void)removeMidiEntity:(unsigned int)a3;
- (void)removeMidiSource:(unsigned int)a3;
- (void)resetAndDetectEntities;
@end

@implementation AXMIDIDevice

- (AXMIDIDevice)initWithMIDIDevice:(unsigned int)a3 delegate:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = AXMIDIDevice;
  v7 = [(AXMIDIDevice *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, v6);
    v8->_midiDevice = a3;
    v9 = [MEMORY[0x1E695DFA8] set];
    entities = v8->_entities;
    v8->_entities = v9;
  }

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AXMIDIDevice *)self name];
  v5 = [v3 stringWithFormat:@"<AXMIDIDevice:%p [%@]>", self, v4];

  return v5;
}

- (id)fullDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"AXMIDIDevice<%p>\n", self];
  v4 = [(AXMIDIDevice *)self name];
  [v3 appendFormat:@" Name: %@\n", v4];

  v5 = [(AXMIDIDevice *)self manufacturer];
  [v3 appendFormat:@" Manufacturer: %@\n", v5];

  v6 = [(AXMIDIDevice *)self model];
  [v3 appendFormat:@" Model: %@\n", v6];

  v7 = [(AXMIDIDevice *)self driverName];
  [v3 appendFormat:@" Driver: %@\n", v7];

  v8 = [(AXMIDIDevice *)self uniqueID];
  [v3 appendFormat:@" Unique ID: %@\n", v8];

  v9 = [(AXMIDIDevice *)self deviceID];
  [v3 appendFormat:@" Device ID: %@\n", v9];

  v10 = [(AXMIDIDevice *)self isOffline];
  [v3 appendFormat:@" Is Offline: %@\n", v10];

  v11 = [(AXMIDIDevice *)self isPrivate];
  [v3 appendFormat:@" Is Private: %@\n", v11];

  v12 = [(AXMIDIDevice *)self supportsGeneralMIDI];
  [v3 appendFormat:@" Supports General MIDI: %@\n", v12];

  v13 = [(AXMIDIDevice *)self supportsMMC];
  [v3 appendFormat:@" Supports MMC: %@\n", v13];

  v14 = [(AXMIDIDevice *)self entities];
  v15 = [v14 allObjects];

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
  [v3 appendFormat:@" Entities: %@\n", v16];

  if ([v15 count])
  {
    v17 = 0;
    v18 = @"     Name: %@\n";
    v19 = @"     Manufacturer: %@\n";
    v20 = @"     Model: %@\n";
    v21 = @"     Driver: %@\n";
    v82 = v15;
    do
    {
      v83 = v17 + 1;
      v22 = [MEMORY[0x1E696AD98] numberWithInteger:?];
      v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
      [v3 appendFormat:@"  Entity %@ of %@\n", v22, v23];

      v24 = [v15 objectAtIndex:v17];
      v25 = [v24 name];
      [v3 appendFormat:@"   Name: %@\n", v25];

      v26 = [v24 driverName];
      [v3 appendFormat:@"   Driver: %@\n", v26];

      v27 = [v24 uniqueID];
      [v3 appendFormat:@"   Unique ID: %@\n", v27];

      v28 = [v24 deviceID];
      [v3 appendFormat:@"   Device ID: %@\n", v28];

      v29 = [v24 isEmbedded];
      [v3 appendFormat:@"   Is Embedded: %@\n", v29];

      v30 = [v24 isBroadcast];
      [v3 appendFormat:@"   Is Broadcast: %@\n", v30];

      v31 = [v24 isOffline];
      [v3 appendFormat:@"   Is Offline: %@\n", v31];

      v32 = [v24 isPrivate];
      [v3 appendFormat:@"   Is Private: %@\n", v32];

      v33 = [v24 supportsGeneralMIDI];
      [v3 appendFormat:@"   Supports General MIDI: %@\n", v33];

      v34 = [v24 supportsMMC];
      [v3 appendFormat:@"   Supports MMC: %@\n", v34];

      v35 = MEMORY[0x1E696AD98];
      v36 = [v24 sources];
      v37 = [v35 numberWithUnsignedInteger:{objc_msgSend(v36, "count")}];
      [v3 appendFormat:@"   Sources: %@\n", v37];

      v84 = v24;
      v38 = [v24 sources];
      v39 = [v38 allObjects];

      if ([v39 count])
      {
        v40 = 0;
        do
        {
          v41 = v40 + 1;
          v42 = [MEMORY[0x1E696AD98] numberWithInteger:v40 + 1];
          v43 = v21;
          v44 = v20;
          v45 = v19;
          v46 = v18;
          v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v39, "count")}];
          [v3 appendFormat:@"    Source %@ of %@\n", v42, v47];

          v18 = v46;
          v19 = v45;
          v20 = v44;
          v21 = v43;

          v48 = [v39 objectAtIndex:v40];
          v49 = [v48 name];
          [v3 appendFormat:v18, v49];

          v50 = [v48 manufacturer];
          [v3 appendFormat:v19, v50];

          v51 = [v48 model];
          [v3 appendFormat:v20, v51];

          v52 = [v48 driverName];
          [v3 appendFormat:v43, v52];

          v53 = [v48 uniqueID];
          [v3 appendFormat:@"     Unique ID: %@\n", v53];

          v54 = [v48 receiveChannels];
          [v3 appendFormat:@"     Receive Channels: %@\n", v54];

          v55 = [v48 transmitChannels];
          [v3 appendFormat:@"     Transmit Channels: %@\n", v55];

          v56 = [v48 isEmbedded];
          [v3 appendFormat:@"     Is Embedded: %@\n", v56];

          v57 = [v48 isBroadcast];
          [v3 appendFormat:@"     Is Broadcast: %@\n", v57];

          v58 = [v48 isOffline];
          [v3 appendFormat:@"     Is Offline: %@\n", v58];

          v59 = [v48 isPrivate];
          [v3 appendFormat:@"     Is Private: %@\n", v59];

          v40 = v41;
        }

        while (v41 < [v39 count]);
      }

      v60 = [v84 destinations];
      v61 = [v60 allObjects];

      v62 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v61, "count")}];
      [v3 appendFormat:@"   Destinations: %@\n", v62];

      v63 = v20;
      v64 = v18;
      if ([v61 count])
      {
        v65 = 0;
        do
        {
          v66 = v65 + 1;
          v67 = [MEMORY[0x1E696AD98] numberWithInteger:v65 + 1];
          v68 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v61, "count")}];
          [v3 appendFormat:@"    Destination %@ of %@\n", v67, v68];

          v69 = [v61 objectAtIndex:v65];
          v70 = [v69 name];
          [v3 appendFormat:v64, v70];

          v71 = [v69 manufacturer];
          [v3 appendFormat:@"     Manufacturer: %@\n", v71];

          v72 = [v69 model];
          [v3 appendFormat:v63, v72];

          v73 = [v69 driverName];
          [v3 appendFormat:@"     Driver: %@\n", v73];

          v74 = [v69 uniqueID];
          [v3 appendFormat:@"     Unique ID: %@\n", v74];

          v75 = [v69 receiveChannels];
          [v3 appendFormat:@"     Receive Channels: %@\n", v75];

          v76 = [v69 transmitChannels];
          [v3 appendFormat:@"     Transmit Channels: %@\n", v76];

          v77 = [v69 isEmbedded];
          [v3 appendFormat:@"     Is Embedded: %@\n", v77];

          v78 = [v69 isBroadcast];
          [v3 appendFormat:@"     Is Broadcast: %@\n", v78];

          v79 = [v69 isOffline];
          [v3 appendFormat:@"     Is Offline: %@\n", v79];

          v80 = [v69 isPrivate];
          [v3 appendFormat:@"     Is Private: %@\n", v80];

          v65 = v66;
        }

        while (v66 < [v61 count]);
      }

      v15 = v82;
      v17 = v83;
      v18 = v64;
      v19 = @"     Manufacturer: %@\n";
      v20 = v63;
      v21 = @"     Driver: %@\n";
    }

    while (v83 < [v82 count]);
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(AXMIDIDevice *)self uniqueID];
    v6 = [v4 uniqueID];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(AXMIDIDevice *)self uniqueID];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)resetAndDetectEntities
{
  NumberOfEntities = MIDIDeviceGetNumberOfEntities(self->_midiDevice);
  if (NumberOfEntities)
  {
    v4 = NumberOfEntities;
    for (i = 0; i != v4; ++i)
    {
      v6 = [(AXMIDIDevice *)self _entityForMidiEntity:MIDIDeviceGetEntity(self->_midiDevice addIfNeeded:i), 1];
    }
  }
}

- (void)removeMidiEntity:(unsigned int)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [(AXMIDIDevice *)self _entityForMidiEntity:*&a3 addIfNeeded:0];
  if (v4)
  {
    v5 = AXLogMIDI();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_INFO, "Removing entity: %@", &v8, 0xCu);
    }

    [v4 setDevice:0];
    v6 = [(AXMIDIDevice *)self entities];
    [v6 removeObject:v4];

    v7 = [(AXMIDIDevice *)self delegate];
    [v7 device:self didRemoveEntity:v4];
  }
}

- (void)addMidiSource:(unsigned int)a3
{
  v3 = *&a3;
  v5 = AXMIDIEntityForEndpoint(a3);
  if (v5)
  {
    v7 = v5;
    v6 = -[AXMIDIDevice _entityForMidiEntity:addIfNeeded:](self, "_entityForMidiEntity:addIfNeeded:", [v5 MIDIEntity], 1);
    [v6 addMidiSource:v3];

    v5 = v7;
  }
}

- (void)removeMidiSource:(unsigned int)a3
{
  v3 = *&a3;
  v5 = AXMIDIEntityForEndpoint(a3);
  if (v5)
  {
    v7 = v5;
    v6 = -[AXMIDIDevice _entityForMidiEntity:addIfNeeded:](self, "_entityForMidiEntity:addIfNeeded:", [v5 MIDIEntity], 0);
    [v6 removeMidiSource:v3];

    v5 = v7;
  }
}

- (void)addMidiDestination:(unsigned int)a3
{
  v3 = *&a3;
  v5 = AXMIDIEntityForEndpoint(a3);
  if (v5)
  {
    v7 = v5;
    v6 = -[AXMIDIDevice _entityForMidiEntity:addIfNeeded:](self, "_entityForMidiEntity:addIfNeeded:", [v5 MIDIEntity], 1);
    [v6 addMidiDestination:v3];

    v5 = v7;
  }
}

- (void)removeMidiDestination:(unsigned int)a3
{
  v3 = *&a3;
  v5 = AXMIDIEntityForEndpoint(a3);
  if (v5)
  {
    v7 = v5;
    v6 = -[AXMIDIDevice _entityForMidiEntity:addIfNeeded:](self, "_entityForMidiEntity:addIfNeeded:", [v5 MIDIEntity], 0);
    [v6 removeMidiDestination:v3];

    v5 = v7;
  }
}

- (id)_entityForMidiEntity:(unsigned int)a3 addIfNeeded:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  v24 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [(AXMIDIDevice *)self entities];
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
        if ([v12 midiEntity] == v5)
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
    v13 = [[AXMIDIDeviceEntity alloc] initWithMIDIEntity:v5 device:self];
    v14 = [(AXMIDIDevice *)self entities];
    [v14 addObject:v13];

    v15 = AXLogMIDI();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v13;
      _os_log_impl(&dword_18B15E000, v15, OS_LOG_TYPE_INFO, "Did add entity: %@", buf, 0xCu);
    }

    [(AXMIDIDeviceEntity *)v13 resetAndDetectEndpoints];
    v7 = [(AXMIDIDevice *)self delegate];
    [v7 device:self didAddEntity:v13];
LABEL_14:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)entity:(id)a3 didAddSource:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AXMIDIDevice *)self delegate];
  [v8 device:self entity:v7 didAddSource:v6];
}

- (void)entity:(id)a3 didRemoveSource:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AXMIDIDevice *)self delegate];
  [v8 device:self entity:v7 didRemoveSource:v6];
}

- (void)entity:(id)a3 didAddDestination:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AXMIDIDevice *)self delegate];
  [v8 device:self entity:v7 didAddDestination:v6];
}

- (void)entity:(id)a3 didRemoveDestination:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AXMIDIDevice *)self delegate];
  [v8 device:self entity:v7 didRemoveDestination:v6];
}

- (AXMIDIDeviceProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end