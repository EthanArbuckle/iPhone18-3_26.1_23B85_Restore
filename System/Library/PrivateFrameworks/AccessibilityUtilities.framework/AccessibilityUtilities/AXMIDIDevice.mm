@interface AXMIDIDevice
- (AXMIDIDevice)initWithMIDIDevice:(unsigned int)device delegate:(id)delegate;
- (AXMIDIDeviceProtocol)delegate;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_entityForMidiEntity:(unsigned int)entity addIfNeeded:(BOOL)needed;
- (id)fullDescription;
- (unint64_t)hash;
- (void)addMidiDestination:(unsigned int)destination;
- (void)addMidiSource:(unsigned int)source;
- (void)entity:(id)entity didAddDestination:(id)destination;
- (void)entity:(id)entity didAddSource:(id)source;
- (void)entity:(id)entity didRemoveDestination:(id)destination;
- (void)entity:(id)entity didRemoveSource:(id)source;
- (void)removeMidiDestination:(unsigned int)destination;
- (void)removeMidiEntity:(unsigned int)entity;
- (void)removeMidiSource:(unsigned int)source;
- (void)resetAndDetectEntities;
@end

@implementation AXMIDIDevice

- (AXMIDIDevice)initWithMIDIDevice:(unsigned int)device delegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = AXMIDIDevice;
  v7 = [(AXMIDIDevice *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, delegateCopy);
    v8->_midiDevice = device;
    v9 = [MEMORY[0x1E695DFA8] set];
    entities = v8->_entities;
    v8->_entities = v9;
  }

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  name = [(AXMIDIDevice *)self name];
  v5 = [v3 stringWithFormat:@"<AXMIDIDevice:%p [%@]>", self, name];

  return v5;
}

- (id)fullDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"AXMIDIDevice<%p>\n", self];
  name = [(AXMIDIDevice *)self name];
  [v3 appendFormat:@" Name: %@\n", name];

  manufacturer = [(AXMIDIDevice *)self manufacturer];
  [v3 appendFormat:@" Manufacturer: %@\n", manufacturer];

  model = [(AXMIDIDevice *)self model];
  [v3 appendFormat:@" Model: %@\n", model];

  driverName = [(AXMIDIDevice *)self driverName];
  [v3 appendFormat:@" Driver: %@\n", driverName];

  uniqueID = [(AXMIDIDevice *)self uniqueID];
  [v3 appendFormat:@" Unique ID: %@\n", uniqueID];

  deviceID = [(AXMIDIDevice *)self deviceID];
  [v3 appendFormat:@" Device ID: %@\n", deviceID];

  isOffline = [(AXMIDIDevice *)self isOffline];
  [v3 appendFormat:@" Is Offline: %@\n", isOffline];

  isPrivate = [(AXMIDIDevice *)self isPrivate];
  [v3 appendFormat:@" Is Private: %@\n", isPrivate];

  supportsGeneralMIDI = [(AXMIDIDevice *)self supportsGeneralMIDI];
  [v3 appendFormat:@" Supports General MIDI: %@\n", supportsGeneralMIDI];

  supportsMMC = [(AXMIDIDevice *)self supportsMMC];
  [v3 appendFormat:@" Supports MMC: %@\n", supportsMMC];

  entities = [(AXMIDIDevice *)self entities];
  allObjects = [entities allObjects];

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(allObjects, "count")}];
  [v3 appendFormat:@" Entities: %@\n", v16];

  if ([allObjects count])
  {
    v17 = 0;
    v18 = @"     Name: %@\n";
    v19 = @"     Manufacturer: %@\n";
    v20 = @"     Model: %@\n";
    v21 = @"     Driver: %@\n";
    v82 = allObjects;
    do
    {
      v83 = v17 + 1;
      v22 = [MEMORY[0x1E696AD98] numberWithInteger:?];
      v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(allObjects, "count")}];
      [v3 appendFormat:@"  Entity %@ of %@\n", v22, v23];

      v24 = [allObjects objectAtIndex:v17];
      name2 = [v24 name];
      [v3 appendFormat:@"   Name: %@\n", name2];

      driverName2 = [v24 driverName];
      [v3 appendFormat:@"   Driver: %@\n", driverName2];

      uniqueID2 = [v24 uniqueID];
      [v3 appendFormat:@"   Unique ID: %@\n", uniqueID2];

      deviceID2 = [v24 deviceID];
      [v3 appendFormat:@"   Device ID: %@\n", deviceID2];

      isEmbedded = [v24 isEmbedded];
      [v3 appendFormat:@"   Is Embedded: %@\n", isEmbedded];

      isBroadcast = [v24 isBroadcast];
      [v3 appendFormat:@"   Is Broadcast: %@\n", isBroadcast];

      isOffline2 = [v24 isOffline];
      [v3 appendFormat:@"   Is Offline: %@\n", isOffline2];

      isPrivate2 = [v24 isPrivate];
      [v3 appendFormat:@"   Is Private: %@\n", isPrivate2];

      supportsGeneralMIDI2 = [v24 supportsGeneralMIDI];
      [v3 appendFormat:@"   Supports General MIDI: %@\n", supportsGeneralMIDI2];

      supportsMMC2 = [v24 supportsMMC];
      [v3 appendFormat:@"   Supports MMC: %@\n", supportsMMC2];

      v35 = MEMORY[0x1E696AD98];
      sources = [v24 sources];
      v37 = [v35 numberWithUnsignedInteger:{objc_msgSend(sources, "count")}];
      [v3 appendFormat:@"   Sources: %@\n", v37];

      v84 = v24;
      sources2 = [v24 sources];
      allObjects2 = [sources2 allObjects];

      if ([allObjects2 count])
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
          v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(allObjects2, "count")}];
          [v3 appendFormat:@"    Source %@ of %@\n", v42, v47];

          v18 = v46;
          v19 = v45;
          v20 = v44;
          v21 = v43;

          v48 = [allObjects2 objectAtIndex:v40];
          name3 = [v48 name];
          [v3 appendFormat:v18, name3];

          manufacturer2 = [v48 manufacturer];
          [v3 appendFormat:v19, manufacturer2];

          model2 = [v48 model];
          [v3 appendFormat:v20, model2];

          driverName3 = [v48 driverName];
          [v3 appendFormat:v43, driverName3];

          uniqueID3 = [v48 uniqueID];
          [v3 appendFormat:@"     Unique ID: %@\n", uniqueID3];

          receiveChannels = [v48 receiveChannels];
          [v3 appendFormat:@"     Receive Channels: %@\n", receiveChannels];

          transmitChannels = [v48 transmitChannels];
          [v3 appendFormat:@"     Transmit Channels: %@\n", transmitChannels];

          isEmbedded2 = [v48 isEmbedded];
          [v3 appendFormat:@"     Is Embedded: %@\n", isEmbedded2];

          isBroadcast2 = [v48 isBroadcast];
          [v3 appendFormat:@"     Is Broadcast: %@\n", isBroadcast2];

          isOffline3 = [v48 isOffline];
          [v3 appendFormat:@"     Is Offline: %@\n", isOffline3];

          isPrivate3 = [v48 isPrivate];
          [v3 appendFormat:@"     Is Private: %@\n", isPrivate3];

          v40 = v41;
        }

        while (v41 < [allObjects2 count]);
      }

      destinations = [v84 destinations];
      allObjects3 = [destinations allObjects];

      v62 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(allObjects3, "count")}];
      [v3 appendFormat:@"   Destinations: %@\n", v62];

      v63 = v20;
      v64 = v18;
      if ([allObjects3 count])
      {
        v65 = 0;
        do
        {
          v66 = v65 + 1;
          v67 = [MEMORY[0x1E696AD98] numberWithInteger:v65 + 1];
          v68 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(allObjects3, "count")}];
          [v3 appendFormat:@"    Destination %@ of %@\n", v67, v68];

          v69 = [allObjects3 objectAtIndex:v65];
          name4 = [v69 name];
          [v3 appendFormat:v64, name4];

          manufacturer3 = [v69 manufacturer];
          [v3 appendFormat:@"     Manufacturer: %@\n", manufacturer3];

          model3 = [v69 model];
          [v3 appendFormat:v63, model3];

          driverName4 = [v69 driverName];
          [v3 appendFormat:@"     Driver: %@\n", driverName4];

          uniqueID4 = [v69 uniqueID];
          [v3 appendFormat:@"     Unique ID: %@\n", uniqueID4];

          receiveChannels2 = [v69 receiveChannels];
          [v3 appendFormat:@"     Receive Channels: %@\n", receiveChannels2];

          transmitChannels2 = [v69 transmitChannels];
          [v3 appendFormat:@"     Transmit Channels: %@\n", transmitChannels2];

          isEmbedded3 = [v69 isEmbedded];
          [v3 appendFormat:@"     Is Embedded: %@\n", isEmbedded3];

          isBroadcast3 = [v69 isBroadcast];
          [v3 appendFormat:@"     Is Broadcast: %@\n", isBroadcast3];

          isOffline4 = [v69 isOffline];
          [v3 appendFormat:@"     Is Offline: %@\n", isOffline4];

          isPrivate4 = [v69 isPrivate];
          [v3 appendFormat:@"     Is Private: %@\n", isPrivate4];

          v65 = v66;
        }

        while (v66 < [allObjects3 count]);
      }

      allObjects = v82;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uniqueID = [(AXMIDIDevice *)self uniqueID];
    uniqueID2 = [equalCopy uniqueID];
    v7 = [uniqueID isEqual:uniqueID2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  uniqueID = [(AXMIDIDevice *)self uniqueID];
  unsignedIntegerValue = [uniqueID unsignedIntegerValue];

  return unsignedIntegerValue;
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

- (void)removeMidiEntity:(unsigned int)entity
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [(AXMIDIDevice *)self _entityForMidiEntity:*&entity addIfNeeded:0];
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
    entities = [(AXMIDIDevice *)self entities];
    [entities removeObject:v4];

    delegate = [(AXMIDIDevice *)self delegate];
    [delegate device:self didRemoveEntity:v4];
  }
}

- (void)addMidiSource:(unsigned int)source
{
  v3 = *&source;
  v5 = AXMIDIEntityForEndpoint(source);
  if (v5)
  {
    v7 = v5;
    v6 = -[AXMIDIDevice _entityForMidiEntity:addIfNeeded:](self, "_entityForMidiEntity:addIfNeeded:", [v5 MIDIEntity], 1);
    [v6 addMidiSource:v3];

    v5 = v7;
  }
}

- (void)removeMidiSource:(unsigned int)source
{
  v3 = *&source;
  v5 = AXMIDIEntityForEndpoint(source);
  if (v5)
  {
    v7 = v5;
    v6 = -[AXMIDIDevice _entityForMidiEntity:addIfNeeded:](self, "_entityForMidiEntity:addIfNeeded:", [v5 MIDIEntity], 0);
    [v6 removeMidiSource:v3];

    v5 = v7;
  }
}

- (void)addMidiDestination:(unsigned int)destination
{
  v3 = *&destination;
  v5 = AXMIDIEntityForEndpoint(destination);
  if (v5)
  {
    v7 = v5;
    v6 = -[AXMIDIDevice _entityForMidiEntity:addIfNeeded:](self, "_entityForMidiEntity:addIfNeeded:", [v5 MIDIEntity], 1);
    [v6 addMidiDestination:v3];

    v5 = v7;
  }
}

- (void)removeMidiDestination:(unsigned int)destination
{
  v3 = *&destination;
  v5 = AXMIDIEntityForEndpoint(destination);
  if (v5)
  {
    v7 = v5;
    v6 = -[AXMIDIDevice _entityForMidiEntity:addIfNeeded:](self, "_entityForMidiEntity:addIfNeeded:", [v5 MIDIEntity], 0);
    [v6 removeMidiDestination:v3];

    v5 = v7;
  }
}

- (id)_entityForMidiEntity:(unsigned int)entity addIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v5 = *&entity;
  v24 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  entities = [(AXMIDIDevice *)self entities];
  v8 = [entities countByEnumeratingWithState:&v17 objects:v23 count:16];
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
          objc_enumerationMutation(entities);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v12 midiEntity] == v5)
        {
          v13 = v12;
          goto LABEL_14;
        }
      }

      v9 = [entities countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  if (neededCopy)
  {
    v13 = [[AXMIDIDeviceEntity alloc] initWithMIDIEntity:v5 device:self];
    entities2 = [(AXMIDIDevice *)self entities];
    [entities2 addObject:v13];

    v15 = AXLogMIDI();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v13;
      _os_log_impl(&dword_18B15E000, v15, OS_LOG_TYPE_INFO, "Did add entity: %@", buf, 0xCu);
    }

    [(AXMIDIDeviceEntity *)v13 resetAndDetectEndpoints];
    entities = [(AXMIDIDevice *)self delegate];
    [entities device:self didAddEntity:v13];
LABEL_14:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)entity:(id)entity didAddSource:(id)source
{
  sourceCopy = source;
  entityCopy = entity;
  delegate = [(AXMIDIDevice *)self delegate];
  [delegate device:self entity:entityCopy didAddSource:sourceCopy];
}

- (void)entity:(id)entity didRemoveSource:(id)source
{
  sourceCopy = source;
  entityCopy = entity;
  delegate = [(AXMIDIDevice *)self delegate];
  [delegate device:self entity:entityCopy didRemoveSource:sourceCopy];
}

- (void)entity:(id)entity didAddDestination:(id)destination
{
  destinationCopy = destination;
  entityCopy = entity;
  delegate = [(AXMIDIDevice *)self delegate];
  [delegate device:self entity:entityCopy didAddDestination:destinationCopy];
}

- (void)entity:(id)entity didRemoveDestination:(id)destination
{
  destinationCopy = destination;
  entityCopy = entity;
  delegate = [(AXMIDIDevice *)self delegate];
  [delegate device:self entity:entityCopy didRemoveDestination:destinationCopy];
}

- (AXMIDIDeviceProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end