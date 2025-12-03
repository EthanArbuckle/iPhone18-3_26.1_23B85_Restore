@interface MIDICISession
- (BOOL)sendProfile:(MIDICIProfile *)profile onChannel:(MIDIChannelNumber)channel profileData:(NSData *)profileSpecificData;
- (BOOL)toggleProfile:(id)profile onChannel:(unsigned __int8)channel enabling:(BOOL)enabling error:(id *)error;
- (BOOL)updateProfileStateForChannel:(unsigned __int8)channel withProfile:(id)profile enabled:(BOOL)enabled;
- (MIDICIDeviceIdentification)deviceID;
- (MIDICIProfileState)profileStateForChannel:(MIDIChannelNumber)channel;
- (MIDICISession)init;
- (MIDICISession)initWithDiscoveredNode:(MIDICIDiscoveredNode *)discoveredNode dataReadyHandler:(void *)handler disconnectHandler:(MIDICISessionDisconnectBlock)disconnectHandler;
- (MIDICISession)initWithMIDIDestination:(unsigned int)destination dataReadyHandler:(id)handler disconnectHandler:(id)disconnectHandler profileSpecificDataHandler:(id)dataHandler;
- (id)description;
- (void)addProfileState:(char *)state length:(unsigned int)length channel:(unsigned __int8)channel;
- (void)getProperty:(id)property onChannel:(unsigned __int8)channel responseHandler:(id)handler;
- (void)handleCINotification:(const MIDINotification *)notification withHandler:(id)handler;
- (void)hasProperty:(id)property onChannel:(unsigned __int8)channel responseHandler:(id)handler;
- (void)setProperty:(id)property onChannel:(unsigned __int8)channel responseHandler:(id)handler;
@end

@implementation MIDICISession

- (MIDICIDeviceIdentification)deviceID
{
  v2 = *&self->_deviceID.revisionLevel[1];
  v3 = *self->_deviceID.manufacturer;
  *&result.revisionLevel[1] = v2;
  *&result.reserved[1] = HIDWORD(v2);
  *result.manufacturer = v3;
  result.manufacturer[2] = BYTE2(v3);
  *result.family = *(&v3 + 3);
  *result.modelNumber = *(&v3 + 5);
  result.revisionLevel[0] = HIBYTE(v3);
  return result;
}

- (BOOL)updateProfileStateForChannel:(unsigned __int8)channel withProfile:(id)profile enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  channelCopy = channel;
  v32 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v9 = profileCopy;
  v10 = "NO";
  if (enabledCopy)
  {
    v10 = "YES";
  }

  NSLog(&cfstr_Updateprofiles.isa, channelCopy, profileCopy, v10);
  if (channelCopy == 127)
  {
    v11 = 16;
  }

  else
  {
    v11 = channelCopy;
  }

  v12 = [(NSMutableArray *)self->_profileStates objectAtIndex:v11];
  v13 = v12;
  if (v12)
  {
    disabledProfiles = [v12 disabledProfiles];
    if (enabledCopy)
    {
      v15 = [disabledProfiles mutableCopy];

      enabledProfiles = [v13 enabledProfiles];
      v17 = [enabledProfiles mutableCopy];
      v18 = v15;
    }

    else
    {
      v17 = [disabledProfiles mutableCopy];

      enabledProfiles = [v13 enabledProfiles];
      v15 = [enabledProfiles mutableCopy];
      v18 = v17;
    }

    NSLog(&cfstr_RemovingFrom.isa, v15);
    NSLog(&cfstr_AddingTo.isa, v17);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v19 = v15;
    v20 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v20)
    {
      v21 = *v28;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v27 + 1) + 8 * i);
          if ([v23 isEqual:v9])
          {
            [v19 removeObject:v23];
            [v17 addObject:v23];

            NSLog(&cfstr_Updating.isa);
            if (enabledCopy)
            {
              v25 = v17;
            }

            else
            {
              v25 = v19;
            }

            [v13 updateWithEnabledProfiles:v25 disabledProfiles:v18];
            v24 = 1;
            goto LABEL_25;
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v24 = 0;
LABEL_25:

  return v24;
}

- (void)addProfileState:(char *)state length:(unsigned int)length channel:(unsigned __int8)channel
{
  channelCopy = channel;
  v7 = state + 2;
  v6 = *state;
  v8 = *&state[5 * *state + 2];
  if (channel == 127)
  {
    channelCopy2 = 16;
  }

  else
  {
    channelCopy2 = channel;
  }

  v19 = channelCopy2;
  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v6)
  {
    for (i = 0; i < v6; ++i)
    {
      v12 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v7 length:5];
      v13 = [[MIDICIProfile alloc] initWithData:v12];
      [v21 addObject:v13];
      v7 += 5;
    }
  }

  if (v8)
  {
    v14 = 0;
    v15 = v7 + 2;
    do
    {
      v16 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v15 length:5];
      v17 = [[MIDICIProfile alloc] initWithData:v16];
      [v10 addObject:v17];
      v15 += 5;

      ++v14;
    }

    while (v14 < v8);
  }

  v18 = [[MIDICIProfileState alloc] initWithChannel:channelCopy enabledProfiles:v21 disabledProfiles:v10];
  [(NSMutableArray *)self->_profileStates replaceObjectAtIndex:v19 withObject:v18];
}

- (BOOL)sendProfile:(MIDICIProfile *)profile onChannel:(MIDIChannelNumber)channel profileData:(NSData *)profileSpecificData
{
  v5 = channel;
  v6 = profile;
  v7 = v6;
  if (v6 && (v5 == 127 || v5 <= 0xF))
  {
    profileID = [(MIDICIProfile *)v6 profileID];
    [profileID bytes];
  }

  return 0;
}

- (BOOL)toggleProfile:(id)profile onChannel:(unsigned __int8)channel enabling:(BOOL)enabling error:(id *)error
{
  channelCopy = channel;
  profileCopy = profile;
  v9 = profileCopy;
  if (profileCopy && (channelCopy == 127 || channelCopy <= 0xF))
  {
    profileID = [profileCopy profileID];
    [profileID bytes];

    if (error)
    {
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-10844 userInfo:0];
      *error = v11;
    }
  }

  return 0;
}

- (MIDICIProfileState)profileStateForChannel:(MIDIChannelNumber)channel
{
  if (channel == 127)
  {
    *&channel = 16;
  }

  else
  {
    *&channel = channel;
  }

  return [(NSMutableArray *)self->_profileStates objectAtIndex:channel];
}

- (void)handleCINotification:(const MIDINotification *)notification withHandler:(id)handler
{
  handlerCopy = handler;
  v6 = 0;
  messageID = notification->messageID;
  messageSize = notification->messageSize;
  while (1)
  {
    if (messageID <= 20)
    {
      if (messageID == 11)
      {
        NSLog(&cfstr_Handlecinotifi.isa);
        *&v36[16] = notification[3];
        *v36 = *&notification[1].messageID;
        self->_destination = notification[4].messageID;
        self->_deviceID = *&v36[4];
        v10 = [[MIDICIDeviceInfo alloc] initWithDestination:0 deviceID:&self->_deviceID];
        deviceInfo = self->_deviceInfo;
        self->_deviceInfo = v10;
      }

      else
      {
        if (messageID != 20)
        {
          goto LABEL_28;
        }

        NSLog(&cfstr_Handlecinotifi_0.isa);
        self->_supportsProfileCapability = 1;
        [(MIDICISession *)self addProfileState:&notification[1].messageID + 1 length:messageSize - 1 channel:LOBYTE(notification[1].messageID)];
      }

      notification = (notification + messageSize + 8);
      goto LABEL_11;
    }

    if (messageID <= 30)
    {
      break;
    }

    if (messageID != 31)
    {
      if (messageID == 32)
      {
        propertyChangedCallback = [(MIDICISession *)self propertyChangedCallback];

        if (propertyChangedCallback)
        {
          messageID_low = LOBYTE(notification[1].messageID);
          v32 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&notification[1].messageID + 1 length:messageSize - 1];
          propertyChangedCallback2 = [(MIDICISession *)self propertyChangedCallback];
          (propertyChangedCallback2)[2](propertyChangedCallback2, self, messageID_low, v32);

          v19 = 0;
          v27 = 0;
          [(MIDICISession *)self setPropertyChangedCallback:0];
          goto LABEL_33;
        }
      }

      else if (messageID != 40)
      {
LABEL_28:
        v19 = 0;
        v27 = 0;
        NSLog(&cfstr_UnexpectedMsgI.isa, messageID, messageSize);
        v32 = 0;
        goto LABEL_33;
      }

      v19 = 0;
      v32 = 0;
      v27 = 0;
      if ((v6 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    self->_supportsPropertyCapability = 1;
    v9 = notification[1].messageID;
    notification = (notification + messageSize + 8);
    self->_maxRequests = v9;
LABEL_11:
    messageID = notification->messageID;
    messageSize = notification->messageSize;
    v6 = 1;
  }

  if ((messageID - 21) >= 2)
  {
    if (messageID != 23)
    {
      goto LABEL_28;
    }

    profileSpecificDataBlock = [(MIDICISession *)self profileSpecificDataBlock];
    v24 = _Block_copy(profileSpecificDataBlock);
    NSLog(&cfstr_Handlecinotifi_2.isa, @"kMIDIMsgProfileSpecificData", v24);

    v34 = LOBYTE(notification[1].messageID);
    v25 = [MIDICIProfile alloc];
    v26 = [MEMORY[0x277CBEA90] dataWithBytes:&notification[1].messageID + 1 length:5];
    v19 = [(MIDICIProfile *)v25 initWithData:v26];

    v27 = [MEMORY[0x277CBEA90] dataWithBytes:&notification[1].messageSize + 2 length:messageSize - 5];
    profileSpecificDataBlock2 = [(MIDICISession *)self profileSpecificDataBlock];

    if (profileSpecificDataBlock2)
    {
      NSLog(&cfstr_NotifyingProfi.isa);
      profileSpecificDataBlock3 = [(MIDICISession *)self profileSpecificDataBlock];
      (profileSpecificDataBlock3)[2](profileSpecificDataBlock3, self, v34, v19, v27);

      NSLog(&cfstr_DoneNotifying.isa);
    }

    else
    {
      NSLog(&cfstr_NotNotifyingSi.isa);
    }

    v32 = 0;
  }

  else
  {
    profileChangedCallback = [(MIDICISession *)self profileChangedCallback];
    v13 = profileChangedCallback;
    if (messageID == 21)
    {
      v14 = @"kMIDIMsgProfileEnabled";
    }

    else
    {
      v14 = @"kMIDIMsgProfileDisabled";
    }

    v15 = _Block_copy(profileChangedCallback);
    NSLog(&cfstr_Handlecinotifi_1.isa, v14, v15);

    v16 = LOBYTE(notification[1].messageID);
    v17 = [MIDICIProfile alloc];
    v18 = [MEMORY[0x277CBEA90] dataWithBytes:&notification[1].messageID + 1 length:5];
    v19 = [(MIDICIProfile *)v17 initWithData:v18];

    [(MIDICISession *)self updateProfileStateForChannel:v16 withProfile:v19 enabled:messageID == 21];
    profileChangedCallback2 = [(MIDICISession *)self profileChangedCallback];

    if (profileChangedCallback2)
    {
      NSLog(&cfstr_Notifying.isa);
      profileChangedCallback3 = [(MIDICISession *)self profileChangedCallback];
      (profileChangedCallback3)[2](profileChangedCallback3, self, v16, v19, messageID == 21);

      v22 = @"Done notifying.";
    }

    else
    {
      v22 = @"Not notifying.";
    }

    v27 = 0;
    NSLog(&v22->isa);
    v32 = 0;
  }

LABEL_33:
  if ((v6 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_34:
  handlerCopy[2]();
LABEL_35:
}

- (id)description
{
  v2 = @"supports Profiles";
  if (self->_supportsPropertyCapability)
  {
    v2 = @"supports Profiles & Properties";
    v3 = @"supports Properties";
  }

  else
  {
    v3 = @"MIDI-CI supported?";
  }

  if (!self->_supportsProfileCapability)
  {
    v2 = v3;
  }

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"<MIDICISession(%p) (%@)>", self, v2];

  return v4;
}

- (MIDICISession)initWithMIDIDestination:(unsigned int)destination dataReadyHandler:(id)handler disconnectHandler:(id)disconnectHandler profileSpecificDataHandler:(id)dataHandler
{
  v8 = *&destination;
  handlerCopy = handler;
  disconnectHandlerCopy = disconnectHandler;
  dataHandlerCopy = dataHandler;
  if (v8)
  {
    v13 = [(MIDICISession *)self initWithMIDIDestination:v8 dataReadyHandler:handlerCopy];
    if (v13)
    {
      v14 = _Block_copy(disconnectHandlerCopy);
      sessionDisconnectCallback = v13->_sessionDisconnectCallback;
      v13->_sessionDisconnectCallback = v14;

      v16 = _Block_copy(dataHandlerCopy);
      profileSpecificDataCallback = v13->_profileSpecificDataCallback;
      v13->_profileSpecificDataCallback = v16;
    }

    self = v13;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MIDICISession)initWithDiscoveredNode:(MIDICIDiscoveredNode *)discoveredNode dataReadyHandler:(void *)handler disconnectHandler:(MIDICISessionDisconnectBlock)disconnectHandler
{
  v8 = discoveredNode;
  v9 = handler;
  v10 = disconnectHandler;
  if (v8 && (-[MIDICIDiscoveredNode deviceInfo](v8, "deviceInfo"), (v11 = objc_claimAutoreleasedReturnValue()) != 0) && (-[MIDICIDiscoveredNode deviceInfo](v8, "deviceInfo"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 midiDestination], v12, v11, v13))
  {
    v19.receiver = self;
    v19.super_class = MIDICISession;
    selfCopy = [(MIDICISession *)&v19 init];
    if (selfCopy)
    {
      selfCopy->_destination = [(MIDICIDiscoveredNode *)v8 destination];
      v15 = _Block_copy(v10);
      sessionDisconnectCallback = selfCopy->_sessionDisconnectCallback;
      selfCopy->_sessionDisconnectCallback = v15;

      maximumSysExSize = [(MIDICIDiscoveredNode *)v8 maximumSysExSize];
      selfCopy->_maxSysExSize = [maximumSysExSize unsignedLongValue];

      selfCopy->_client = 0;
    }
  }

  else
  {
    selfCopy = self;
  }

  return 0;
}

- (MIDICISession)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[MIDICISession init]"];
  [v3 raise:*MEMORY[0x277CBE660] format:{@"Unsupported! Don't call %@.", v4}];

  return 0;
}

- (void)setProperty:(id)property onChannel:(unsigned __int8)channel responseHandler:(id)handler
{
  self->_propertyResponseCallback = _Block_copy(handler);

  MEMORY[0x2821F96F8]();
}

- (void)getProperty:(id)property onChannel:(unsigned __int8)channel responseHandler:(id)handler
{
  self->_propertyResponseCallback = _Block_copy(handler);

  MEMORY[0x2821F96F8]();
}

- (void)hasProperty:(id)property onChannel:(unsigned __int8)channel responseHandler:(id)handler
{
  self->_propertyResponseCallback = _Block_copy(handler);

  MEMORY[0x2821F96F8]();
}

@end