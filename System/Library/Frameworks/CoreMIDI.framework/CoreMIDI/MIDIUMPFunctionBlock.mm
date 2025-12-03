@interface MIDIUMPFunctionBlock
- (BOOL)deserialize:(id)deserialize;
- (BOOL)isEnabled;
- (BOOL)isEqual:(id)equal;
- (BOOL)isMine;
- (MIDICIDevice)midiCIDevice;
- (MIDIUMPEndpoint)UMPEndpoint;
- (MIDIUMPFunctionBlock)initWithDescription:(id)description;
- (NSString)name;
- (id).cxx_construct;
- (id)serializeDescription;
- (int)MIDI1Info;
- (int)UIHint;
- (int)direction;
- (unsigned)firstGroup;
- (unsigned)functionBlockID;
- (unsigned)maxSysEx8Streams;
- (unsigned)totalGroupsSpanned;
- (void)setEndpoint:(id)endpoint;
- (void)setFunctionBlockID:(unsigned __int8)d;
@end

@implementation MIDIUMPFunctionBlock

- (id).cxx_construct
{
  *(self + 15) = 0;
  *(self + 16) = 0;
  return self;
}

- (BOOL)isEnabled
{
  os_unfair_recursive_lock_lock_with_options();
  isEnabled = self->_isEnabled;
  os_unfair_recursive_lock_unlock();
  return isEnabled;
}

- (MIDIUMPEndpoint)UMPEndpoint
{
  os_unfair_recursive_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_UMPEndpoint);
  os_unfair_recursive_lock_unlock();

  return WeakRetained;
}

- (int)UIHint
{
  os_unfair_recursive_lock_lock_with_options();
  UIHint = self->_UIHint;
  os_unfair_recursive_lock_unlock();
  return UIHint;
}

- (int)MIDI1Info
{
  os_unfair_recursive_lock_lock_with_options();
  MIDI1Info = self->_MIDI1Info;
  os_unfair_recursive_lock_unlock();
  return MIDI1Info;
}

- (unsigned)maxSysEx8Streams
{
  os_unfair_recursive_lock_lock_with_options();
  maxSysEx8Streams = self->_maxSysEx8Streams;
  os_unfair_recursive_lock_unlock();
  return maxSysEx8Streams;
}

- (unsigned)totalGroupsSpanned
{
  os_unfair_recursive_lock_lock_with_options();
  totalGroupsSpanned = self->_totalGroupsSpanned;
  os_unfair_recursive_lock_unlock();
  return totalGroupsSpanned;
}

- (unsigned)firstGroup
{
  os_unfair_recursive_lock_lock_with_options();
  firstGroup = self->_firstGroup;
  os_unfair_recursive_lock_unlock();
  return firstGroup;
}

- (int)direction
{
  os_unfair_recursive_lock_lock_with_options();
  direction = self->_direction;
  os_unfair_recursive_lock_unlock();
  return direction;
}

- (unsigned)functionBlockID
{
  os_unfair_recursive_lock_lock_with_options();
  functionBlockID = self->_functionBlockID;
  os_unfair_recursive_lock_unlock();
  return functionBlockID;
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
  v3 = os_unfair_recursive_lock_lock_with_options();
  ownerClientRef = self->_ownerClientRef;
  UMPCIClients::instance(v3);
  LOBYTE(ownerClientRef) = ownerClientRef == UMPCIClients::instance(void)::all;
  os_unfair_recursive_lock_unlock();
  return ownerClientRef;
}

- (MIDICIDevice)midiCIDevice
{
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_recursive_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_UMPEndpoint);

  if (!WeakRetained)
  {
    v7 = 0;
    goto LABEL_19;
  }

  v4 = +[MIDICIDeviceManager sharedInstance];
  devices = [v4 devices];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = devices;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = *v19;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v19 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v18 + 1) + 8 * i);
      mIDISource = [v10 MIDISource];
      v12 = objc_loadWeakRetained(&self->_UMPEndpoint);
      if (mIDISource != [v12 MIDISource])
      {
        goto LABEL_13;
      }

      mIDIDestination = [v10 MIDIDestination];
      v14 = objc_loadWeakRetained(&self->_UMPEndpoint);
      if (mIDIDestination != [v14 MIDIDestination] || objc_msgSend(v10, "functionBlockID") != self->_functionBlockID)
      {

LABEL_13:
        continue;
      }

      v15 = objc_loadWeakRetained(&self->_UMPEndpoint);
      v16 = [v15 containsFunctionBlock:self];

      if (v16)
      {
        v7 = v10;
        goto LABEL_18;
      }
    }

    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v7);
LABEL_18:

LABEL_19:
  os_unfair_recursive_lock_unlock();

  return v7;
}

- (void)setEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  os_unfair_recursive_lock_lock_with_options();
  objc_storeWeak(&self->_UMPEndpoint, endpointCopy);

  os_unfair_recursive_lock_unlock();
}

- (void)setFunctionBlockID:(unsigned __int8)d
{
  os_unfair_recursive_lock_lock_with_options();
  self->_functionBlockID = d;

  os_unfair_recursive_lock_unlock();
}

- (id)serializeDescription
{
  v34[13] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_UMPEndpoint);

  if (WeakRetained)
  {
    os_unfair_recursive_lock_lock_with_options();
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"object"];
    v33[0] = v32;
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_objectRef];
    v34[0] = v31;
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"type"];
    v33[1] = v30;
    v34[1] = &unk_284A4D1C8;
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"direction"];
    v33[2] = v29;
    v28 = [MEMORY[0x277CCABB0] numberWithInt:self->_direction];
    v34[2] = v28;
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"id"];
    v33[3] = v27;
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_functionBlockID];
    v34[3] = v26;
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"name"];
    v33[4] = v25;
    v34[4] = self->_name;
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"first_group"];
    v33[5] = v24;
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_firstGroup];
    v34[5] = v23;
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"groups_spanned"];
    v33[6] = v22;
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_totalGroupsSpanned];
    v34[6] = v21;
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"max_sysex8_stream"];
    v33[7] = v20;
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_maxSysEx8Streams];
    v34[7] = v19;
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"midi1_info"];
    v33[8] = v18;
    v17 = [MEMORY[0x277CCABB0] numberWithInt:self->_MIDI1Info];
    v34[8] = v17;
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ui_hint"];
    v33[9] = v16;
    v15 = [MEMORY[0x277CCABB0] numberWithInt:self->_UIHint];
    v34[9] = v15;
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"enabled"];
    v33[10] = v4;
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isEnabled];
    v34[10] = v5;
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"owner"];
    v33[11] = v6;
    v7 = MEMORY[0x277CCABB0];
    v8 = objc_loadWeakRetained(&self->_UMPEndpoint);
    v9 = [v7 numberWithUnsignedInt:{objc_msgSend(v8, "objectRef")}];
    v34[11] = v9;
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"owner_client_ref"];
    v33[12] = v10;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_ownerClientRef];
    v34[12] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:13];
    v13 = [v12 mutableCopy];

    os_unfair_recursive_lock_unlock();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)deserialize:(id)deserialize
{
  deserializeCopy = deserialize;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"id"];
  v24 = [deserializeCopy objectForKey:v5];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"name"];
  obj = [deserializeCopy objectForKey:v6];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"direction"];
  v26 = [deserializeCopy objectForKey:v7];

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"first_group"];
  v25 = [deserializeCopy objectForKey:v8];

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"groups_spanned"];
  v10 = [deserializeCopy objectForKey:v9];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"max_sysex8_stream"];
  v12 = [deserializeCopy objectForKey:v11];

  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"midi1_info"];
  v14 = [deserializeCopy objectForKey:v13];

  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ui_hint"];
  v16 = [deserializeCopy objectForKey:v15];

  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"enabled"];
  v18 = [deserializeCopy objectForKey:v17];

  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"object"];
  v20 = [deserializeCopy objectForKey:v19];

  v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"owner_client_ref"];
  v22 = [deserializeCopy objectForKey:v21];

  self->_functionBlockID = [v24 unsignedIntegerValue];
  objc_storeStrong(&self->_name, obj);
  self->_direction = [v26 unsignedIntegerValue];
  self->_firstGroup = [v25 unsignedIntegerValue];
  self->_totalGroupsSpanned = [v10 unsignedIntegerValue];
  self->_maxSysEx8Streams = [v12 unsignedIntValue];
  self->_MIDI1Info = [v14 unsignedIntegerValue];
  self->_UIHint = [v16 unsignedIntegerValue];
  self->_isEnabled = [v18 BOOLValue];
  self->_objectRef = [v20 unsignedIntValue];
  self->_ownerClientRef = [v22 unsignedIntegerValue];

  os_unfair_recursive_lock_unlock();
  return 1;
}

- (MIDIUMPFunctionBlock)initWithDescription:(id)description
{
  [(MIDIUMPFunctionBlock *)self deserialize:description];
  self->_ownerClientRef = 0;
  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  os_unfair_recursive_lock_lock_with_options();
  v5 = equalCopy;
  v6 = [(NSString *)self->_name isEqualToString:v5[1]]&& self->_functionBlockID == *(v5 + 16) && self->_direction == *(v5 + 5) && self->_firstGroup == *(v5 + 24) && self->_totalGroupsSpanned == *(v5 + 25) && self->_maxSysEx8Streams == *(v5 + 26) && self->_MIDI1Info == *(v5 + 7) && self->_UIHint == *(v5 + 8) && self->_isEnabled == *(v5 + 48);

  os_unfair_recursive_lock_unlock();
  return v6;
}

@end