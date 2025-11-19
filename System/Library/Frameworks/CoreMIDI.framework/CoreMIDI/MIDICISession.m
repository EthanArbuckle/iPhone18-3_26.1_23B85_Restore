@interface MIDICISession
- (BOOL)sendProfile:(MIDICIProfile *)profile onChannel:(MIDIChannelNumber)channel profileData:(NSData *)profileSpecificData;
- (BOOL)toggleProfile:(id)a3 onChannel:(unsigned __int8)a4 enabling:(BOOL)a5 error:(id *)a6;
- (BOOL)updateProfileStateForChannel:(unsigned __int8)a3 withProfile:(id)a4 enabled:(BOOL)a5;
- (MIDICIDeviceIdentification)deviceID;
- (MIDICIProfileState)profileStateForChannel:(MIDIChannelNumber)channel;
- (MIDICISession)init;
- (MIDICISession)initWithDiscoveredNode:(MIDICIDiscoveredNode *)discoveredNode dataReadyHandler:(void *)handler disconnectHandler:(MIDICISessionDisconnectBlock)disconnectHandler;
- (MIDICISession)initWithMIDIDestination:(unsigned int)a3 dataReadyHandler:(id)a4 disconnectHandler:(id)a5 profileSpecificDataHandler:(id)a6;
- (id)description;
- (void)addProfileState:(char *)a3 length:(unsigned int)a4 channel:(unsigned __int8)a5;
- (void)getProperty:(id)a3 onChannel:(unsigned __int8)a4 responseHandler:(id)a5;
- (void)handleCINotification:(const MIDINotification *)a3 withHandler:(id)a4;
- (void)hasProperty:(id)a3 onChannel:(unsigned __int8)a4 responseHandler:(id)a5;
- (void)setProperty:(id)a3 onChannel:(unsigned __int8)a4 responseHandler:(id)a5;
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

- (BOOL)updateProfileStateForChannel:(unsigned __int8)a3 withProfile:(id)a4 enabled:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v32 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = v8;
  v10 = "NO";
  if (v5)
  {
    v10 = "YES";
  }

  NSLog(&cfstr_Updateprofiles.isa, v6, v8, v10);
  if (v6 == 127)
  {
    v11 = 16;
  }

  else
  {
    v11 = v6;
  }

  v12 = [(NSMutableArray *)self->_profileStates objectAtIndex:v11];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 disabledProfiles];
    if (v5)
    {
      v15 = [v14 mutableCopy];

      v16 = [v13 enabledProfiles];
      v17 = [v16 mutableCopy];
      v18 = v15;
    }

    else
    {
      v17 = [v14 mutableCopy];

      v16 = [v13 enabledProfiles];
      v15 = [v16 mutableCopy];
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
            if (v5)
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

- (void)addProfileState:(char *)a3 length:(unsigned int)a4 channel:(unsigned __int8)a5
{
  v5 = a5;
  v7 = a3 + 2;
  v6 = *a3;
  v8 = *&a3[5 * *a3 + 2];
  if (a5 == 127)
  {
    v9 = 16;
  }

  else
  {
    v9 = a5;
  }

  v19 = v9;
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

  v18 = [[MIDICIProfileState alloc] initWithChannel:v5 enabledProfiles:v21 disabledProfiles:v10];
  [(NSMutableArray *)self->_profileStates replaceObjectAtIndex:v19 withObject:v18];
}

- (BOOL)sendProfile:(MIDICIProfile *)profile onChannel:(MIDIChannelNumber)channel profileData:(NSData *)profileSpecificData
{
  v5 = channel;
  v6 = profile;
  v7 = v6;
  if (v6 && (v5 == 127 || v5 <= 0xF))
  {
    v8 = [(MIDICIProfile *)v6 profileID];
    [v8 bytes];
  }

  return 0;
}

- (BOOL)toggleProfile:(id)a3 onChannel:(unsigned __int8)a4 enabling:(BOOL)a5 error:(id *)a6
{
  v7 = a4;
  v8 = a3;
  v9 = v8;
  if (v8 && (v7 == 127 || v7 <= 0xF))
  {
    v10 = [v8 profileID];
    [v10 bytes];

    if (a6)
    {
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-10844 userInfo:0];
      *a6 = v11;
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

- (void)handleCINotification:(const MIDINotification *)a3 withHandler:(id)a4
{
  v35 = a4;
  v6 = 0;
  messageID = a3->messageID;
  messageSize = a3->messageSize;
  while (1)
  {
    if (messageID <= 20)
    {
      if (messageID == 11)
      {
        NSLog(&cfstr_Handlecinotifi.isa);
        *&v36[16] = a3[3];
        *v36 = *&a3[1].messageID;
        self->_destination = a3[4].messageID;
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
        [(MIDICISession *)self addProfileState:&a3[1].messageID + 1 length:messageSize - 1 channel:LOBYTE(a3[1].messageID)];
      }

      a3 = (a3 + messageSize + 8);
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
        v30 = [(MIDICISession *)self propertyChangedCallback];

        if (v30)
        {
          messageID_low = LOBYTE(a3[1].messageID);
          v32 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&a3[1].messageID + 1 length:messageSize - 1];
          v33 = [(MIDICISession *)self propertyChangedCallback];
          (v33)[2](v33, self, messageID_low, v32);

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
    v9 = a3[1].messageID;
    a3 = (a3 + messageSize + 8);
    self->_maxRequests = v9;
LABEL_11:
    messageID = a3->messageID;
    messageSize = a3->messageSize;
    v6 = 1;
  }

  if ((messageID - 21) >= 2)
  {
    if (messageID != 23)
    {
      goto LABEL_28;
    }

    v23 = [(MIDICISession *)self profileSpecificDataBlock];
    v24 = _Block_copy(v23);
    NSLog(&cfstr_Handlecinotifi_2.isa, @"kMIDIMsgProfileSpecificData", v24);

    v34 = LOBYTE(a3[1].messageID);
    v25 = [MIDICIProfile alloc];
    v26 = [MEMORY[0x277CBEA90] dataWithBytes:&a3[1].messageID + 1 length:5];
    v19 = [(MIDICIProfile *)v25 initWithData:v26];

    v27 = [MEMORY[0x277CBEA90] dataWithBytes:&a3[1].messageSize + 2 length:messageSize - 5];
    v28 = [(MIDICISession *)self profileSpecificDataBlock];

    if (v28)
    {
      NSLog(&cfstr_NotifyingProfi.isa);
      v29 = [(MIDICISession *)self profileSpecificDataBlock];
      (v29)[2](v29, self, v34, v19, v27);

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
    v12 = [(MIDICISession *)self profileChangedCallback];
    v13 = v12;
    if (messageID == 21)
    {
      v14 = @"kMIDIMsgProfileEnabled";
    }

    else
    {
      v14 = @"kMIDIMsgProfileDisabled";
    }

    v15 = _Block_copy(v12);
    NSLog(&cfstr_Handlecinotifi_1.isa, v14, v15);

    v16 = LOBYTE(a3[1].messageID);
    v17 = [MIDICIProfile alloc];
    v18 = [MEMORY[0x277CBEA90] dataWithBytes:&a3[1].messageID + 1 length:5];
    v19 = [(MIDICIProfile *)v17 initWithData:v18];

    [(MIDICISession *)self updateProfileStateForChannel:v16 withProfile:v19 enabled:messageID == 21];
    v20 = [(MIDICISession *)self profileChangedCallback];

    if (v20)
    {
      NSLog(&cfstr_Notifying.isa);
      v21 = [(MIDICISession *)self profileChangedCallback];
      (v21)[2](v21, self, v16, v19, messageID == 21);

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
  v35[2]();
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

- (MIDICISession)initWithMIDIDestination:(unsigned int)a3 dataReadyHandler:(id)a4 disconnectHandler:(id)a5 profileSpecificDataHandler:(id)a6
{
  v8 = *&a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v8)
  {
    v13 = [(MIDICISession *)self initWithMIDIDestination:v8 dataReadyHandler:v10];
    if (v13)
    {
      v14 = _Block_copy(v11);
      sessionDisconnectCallback = v13->_sessionDisconnectCallback;
      v13->_sessionDisconnectCallback = v14;

      v16 = _Block_copy(v12);
      profileSpecificDataCallback = v13->_profileSpecificDataCallback;
      v13->_profileSpecificDataCallback = v16;
    }

    self = v13;
    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  return v18;
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
    v14 = [(MIDICISession *)&v19 init];
    if (v14)
    {
      v14->_destination = [(MIDICIDiscoveredNode *)v8 destination];
      v15 = _Block_copy(v10);
      sessionDisconnectCallback = v14->_sessionDisconnectCallback;
      v14->_sessionDisconnectCallback = v15;

      v17 = [(MIDICIDiscoveredNode *)v8 maximumSysExSize];
      v14->_maxSysExSize = [v17 unsignedLongValue];

      v14->_client = 0;
    }
  }

  else
  {
    v14 = self;
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

- (void)setProperty:(id)a3 onChannel:(unsigned __int8)a4 responseHandler:(id)a5
{
  self->_propertyResponseCallback = _Block_copy(a5);

  MEMORY[0x2821F96F8]();
}

- (void)getProperty:(id)a3 onChannel:(unsigned __int8)a4 responseHandler:(id)a5
{
  self->_propertyResponseCallback = _Block_copy(a5);

  MEMORY[0x2821F96F8]();
}

- (void)hasProperty:(id)a3 onChannel:(unsigned __int8)a4 responseHandler:(id)a5
{
  self->_propertyResponseCallback = _Block_copy(a5);

  MEMORY[0x2821F96F8]();
}

@end