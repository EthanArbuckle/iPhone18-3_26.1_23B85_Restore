@interface MIDIUMPEndpoint
- (BOOL)containsFunctionBlock:(id)a3;
- (BOOL)deserialize:(id)a3;
- (BOOL)hasJRTSReceiveCapability;
- (BOOL)hasJRTSTransmitCapability;
- (BOOL)hasStaticFunctionBlocks;
- (BOOL)isEqual:(id)a3;
- (BOOL)isMine;
- (BOOL)sendEventList:(const MIDIEventList *)a3 error:(id *)a4;
- (BOOL)setStreamProtocol:(int)a3 error:(id *)a4;
- (MIDI2DeviceInfo)deviceInfo;
- (MIDIUMPEndpoint)initWithDescription:(id)a3;
- (NSArray)functionBlocks;
- (NSString)name;
- (NSString)productInstanceID;
- (id).cxx_construct;
- (id)serializeDescription;
- (int)MIDIProtocol;
- (unsigned)MIDIDestination;
- (unsigned)MIDISource;
- (unsigned)endpointType;
- (unsigned)supportedMIDIProtocols;
@end

@implementation MIDIUMPEndpoint

- (id).cxx_construct
{
  *(self + 17) = 0;
  *(self + 18) = 0;
  return self;
}

- (NSArray)functionBlocks
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_functionBlocks;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (unsigned)endpointType
{
  os_unfair_recursive_lock_lock_with_options();
  endpointType = self->_endpointType;
  os_unfair_recursive_lock_unlock();
  return endpointType;
}

- (BOOL)hasJRTSTransmitCapability
{
  os_unfair_recursive_lock_lock_with_options();
  hasJRTSTransmitCapability = self->_hasJRTSTransmitCapability;
  os_unfair_recursive_lock_unlock();
  return hasJRTSTransmitCapability;
}

- (BOOL)hasJRTSReceiveCapability
{
  os_unfair_recursive_lock_lock_with_options();
  hasJRTSReceiveCapability = self->_hasJRTSReceiveCapability;
  os_unfair_recursive_lock_unlock();
  return hasJRTSReceiveCapability;
}

- (BOOL)hasStaticFunctionBlocks
{
  os_unfair_recursive_lock_lock_with_options();
  hasStaticFunctionBlocks = self->_hasStaticFunctionBlocks;
  os_unfair_recursive_lock_unlock();
  return hasStaticFunctionBlocks;
}

- (NSString)productInstanceID
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_productInstanceID;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (MIDI2DeviceInfo)deviceInfo
{
  v2 = [(MIDI2DeviceInfo *)self->_deviceInfo copy];

  return v2;
}

- (unsigned)MIDISource
{
  os_unfair_recursive_lock_lock_with_options();
  MIDISource = self->_MIDISource;
  os_unfair_recursive_lock_unlock();
  return MIDISource;
}

- (unsigned)MIDIDestination
{
  os_unfair_recursive_lock_lock_with_options();
  MIDIDestination = self->_MIDIDestination;
  os_unfair_recursive_lock_unlock();
  return MIDIDestination;
}

- (unsigned)supportedMIDIProtocols
{
  os_unfair_recursive_lock_lock_with_options();
  supportedMIDIProtocols = self->_supportedMIDIProtocols;
  os_unfair_recursive_lock_unlock();
  return supportedMIDIProtocols;
}

- (int)MIDIProtocol
{
  os_unfair_recursive_lock_lock_with_options();
  MIDIProtocol = self->_MIDIProtocol;
  os_unfair_recursive_lock_unlock();
  return MIDIProtocol;
}

- (NSString)name
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_name;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (BOOL)isMine
{
  ownerClientRef = self->_ownerClientRef;
  UMPCIClients::instance(self);
  return ownerClientRef == UMPCIClients::instance(void)::all;
}

- (BOOL)sendEventList:(const MIDIEventList *)a3 error:(id *)a4
{
  os_unfair_recursive_lock_lock_with_options();
  sendUMPMessage(self->_MIDIDestination, a3);
  os_unfair_recursive_lock_unlock();
  return 1;
}

- (BOOL)setStreamProtocol:(int)a3 error:(id *)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = (a3 << 8) | 0xF0050000;
  v8 = 0;
  v9 = 0;
  MIDI::SingleUMPEventList::SingleUMPEventList(v10, &v7);
  return [(MIDIUMPEndpoint *)self sendEventList:v10 error:a4];
}

- (BOOL)containsFunctionBlock:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_functionBlocks;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v10 + 1) + 8 * i) == v4)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_recursive_lock_unlock();
  return v6;
}

- (BOOL)deserialize:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"name"];
  obj = [v4 objectForKey:v5];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"device_info"];
  v7 = [v4 objectForKey:v6];
  v43 = [MIDI2DeviceInfo infoWithDescription:v7];

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"product_instance"];
  v39 = [v4 objectForKey:v8];

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"protocol"];
  v38 = [v4 objectForKey:v9];

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"has_static_function_blocks"];
  v36 = [v4 objectForKey:v10];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"jrts_receive_capability"];
  v35 = [v4 objectForKey:v11];

  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"jrts_transmit_capability"];
  v33 = [v4 objectForKey:v12];

  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"source"];
  v34 = [v4 objectForKey:v13];

  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"destination"];
  v37 = [v4 objectForKey:v14];

  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"endpoint_type"];
  v31 = [v4 objectForKey:v15];

  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"function_blocks"];
  v30 = [v4 objectForKey:v16];

  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"object"];
  v41 = [v4 objectForKey:v17];

  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"supported_protocols"];
  v42 = [v4 objectForKey:v18];

  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"owner_client_ref"];
  v32 = [v4 objectForKey:v19];

  objc_storeStrong(&self->_name, obj);
  objc_storeStrong(&self->_deviceInfo, v43);
  objc_storeStrong(&self->_productInstanceID, v39);
  self->_MIDIProtocol = [v38 intValue];
  self->_supportedMIDIProtocols = [v42 unsignedIntegerValue];
  v20 = [MIDI2DeviceInfo infoWithInfo:v43];
  deviceInfo = self->_deviceInfo;
  self->_deviceInfo = v20;

  self->_hasStaticFunctionBlocks = [v36 BOOLValue];
  self->_hasJRTSReceiveCapability = [v35 BOOLValue];
  self->_hasJRTSTransmitCapability = [v33 BOOLValue];
  self->_MIDISource = [v34 unsignedIntegerValue];
  self->_MIDIDestination = [v37 unsignedIntegerValue];
  self->_objectRef = [v41 unsignedIntValue];
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v23 = v30;
  v24 = [v23 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v24)
  {
    v25 = *v45;
    do
    {
      v26 = 0;
      do
      {
        if (*v45 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = *(*(&v44 + 1) + 8 * v26);
        v28 = [[MIDIUMPFunctionBlock alloc] initWithDescription:v27];
        [(MIDIUMPFunctionBlock *)v28 setEndpoint:self];
        [v22 addObject:v28];

        ++v26;
      }

      while (v24 != v26);
      v24 = [v23 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v24);
  }

  objc_storeStrong(&self->_functionBlocks, v22);
  self->_endpointType = [v31 unsignedIntegerValue];
  self->_ownerClientRef = [v32 unsignedIntegerValue];

  os_unfair_recursive_lock_unlock();
  return 1;
}

- (MIDIUMPEndpoint)initWithDescription:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MIDIUMPEndpoint;
  v5 = [(MIDIUMPEndpoint *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(MIDIUMPEndpoint *)v5 deserialize:v4];
    v7 = v6;
  }

  return v6;
}

- (id)serializeDescription
{
  v52[15] = *MEMORY[0x277D85DE8];
  os_unfair_recursive_lock_lock_with_options();
  v45 = mach_absolute_time();
  v51[0] = [MEMORY[0x277CCACA8] stringWithUTF8String:"object"];
  v37 = v51[0];
  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_objectRef];
  v52[0] = v42;
  v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"type"];
  v51[1] = v41;
  v52[1] = &unk_284A4D1F8;
  v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"timestamp"];
  v51[2] = v40;
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v45];
  v52[2] = v39;
  v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"name"];
  v51[3] = v38;
  v52[3] = self->_name;
  v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"protocol"];
  v51[4] = v36;
  v35 = [MEMORY[0x277CCABB0] numberWithInt:self->_MIDIProtocol];
  v52[4] = v35;
  v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"source"];
  v51[5] = v34;
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_MIDISource];
  v52[5] = v33;
  v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"destination"];
  v51[6] = v32;
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_MIDIDestination];
  v52[6] = v31;
  v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"device_info"];
  v51[7] = v30;
  v29 = [(MIDI2DeviceInfo *)self->_deviceInfo serializeDescription];
  v52[7] = v29;
  v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"product_instance"];
  v51[8] = v28;
  v52[8] = self->_productInstanceID;
  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"has_static_function_blocks"];
  v51[9] = v27;
  v26 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasStaticFunctionBlocks];
  v52[9] = v26;
  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"jrts_receive_capability"];
  v51[10] = v25;
  v2 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasJRTSReceiveCapability];
  v52[10] = v2;
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"jrts_transmit_capability"];
  v51[11] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasJRTSTransmitCapability];
  v52[11] = v4;
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"endpoint_type"];
  v51[12] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_endpointType];
  v52[12] = v6;
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"supported_protocols"];
  v51[13] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_supportedMIDIProtocols];
  v52[13] = v8;
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"owner_client_ref"];
  v51[14] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_ownerClientRef];
  v52[14] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:15];
  v43 = [v11 mutableCopy];

  if (self->_functionBlocks)
  {
    v12 = [MEMORY[0x277CBEB18] array];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v13 = self->_functionBlocks;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v14)
    {
      v15 = *v47;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v47 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v46 + 1) + 8 * i);
          v18 = [v17 UMPEndpoint];
          v19 = v18 == 0;

          if (v19)
          {
            [v17 setEndpoint:self];
          }

          v20 = [v17 serializeDescription];
          v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v45];
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"timestamp"];
          [v20 setValue:v21 forKey:v22];

          [v12 addObject:v20];
        }

        v14 = [(NSArray *)v13 countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v14);
    }

    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"function_blocks"];
    [v43 setValue:v12 forKey:v23];
  }

  os_unfair_recursive_lock_unlock();

  return v43;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v5 = v4;
  v6 = v5 && [(NSString *)self->_name isEqualToString:v5[1]]&& self->_MIDIProtocol == *(v5 + 4) && self->_MIDIDestination == *(v5 + 7) && self->_MIDISource == *(v5 + 6) && [(MIDI2DeviceInfo *)self->_deviceInfo isEqual:v5[4]]&& self->_hasStaticFunctionBlocks == *(v5 + 48) && self->_hasJRTSReceiveCapability == *(v5 + 49) && self->_hasJRTSTransmitCapability == *(v5 + 50) && [(NSArray *)self->_functionBlocks isEqualToArray:v5[7]];

  os_unfair_recursive_lock_unlock();
  return v6;
}

@end