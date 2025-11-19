@interface MIDIUMPCIProfile
- ($CAB4DCDF46D014B19132C003A101DDEC)profileID;
- (BOOL)deserialize:(id)a3;
- (BOOL)hasOwner;
- (BOOL)isEnabled;
- (BOOL)isEqual:(id)a3;
- (BOOL)isMine;
- (BOOL)registerToDevice:(id)a3;
- (BOOL)sendProfileSpecificData:(id)a3 error:(id *)a4;
- (BOOL)setProfileState:(BOOL)a3 enabledChannelCount:(unsigned __int16)a4 error:(id *)a5;
- (MIDICIDevice)ciDevice;
- (MIDIUMPCIProfile)initWithDescription:(id)a3;
- (MIDIUMPCIProfile)initWithProfileID:(id)a3 name:(id)a4 profileType:(unsigned __int8)a5 groupOffset:(unsigned __int8)a6 firstChannel:(unsigned __int8)a7 enabledChannelCount:(unsigned __int16)a8 totalChannelCount:(unsigned __int16)a9;
- (NSString)name;
- (id)serializeDescription;
- (unsigned)enabledChannelCount;
- (unsigned)firstChannel;
- (unsigned)groupOffset;
- (unsigned)profileType;
- (unsigned)totalChannelCount;
- (void)detailsInquiryWithTarget:(unsigned __int8)a3 completion:(id)a4;
@end

@implementation MIDIUMPCIProfile

- (MIDICIDevice)ciDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_ciDevice);

  return WeakRetained;
}

- (BOOL)isEnabled
{
  os_unfair_recursive_lock_lock_with_options();
  isEnabled = self->_isEnabled;
  os_unfair_recursive_lock_unlock();
  return isEnabled;
}

- (unsigned)totalChannelCount
{
  os_unfair_recursive_lock_lock_with_options();
  totalChannelCount = self->_totalChannelCount;
  os_unfair_recursive_lock_unlock();
  return totalChannelCount;
}

- (unsigned)enabledChannelCount
{
  os_unfair_recursive_lock_lock_with_options();
  enabledChannelCount = self->_enabledChannelCount;
  os_unfair_recursive_lock_unlock();
  return enabledChannelCount;
}

- (unsigned)firstChannel
{
  os_unfair_recursive_lock_lock_with_options();
  firstChannel = self->_firstChannel;
  os_unfair_recursive_lock_unlock();
  return firstChannel;
}

- (unsigned)groupOffset
{
  os_unfair_recursive_lock_lock_with_options();
  groupOffset = self->_groupOffset;
  os_unfair_recursive_lock_unlock();
  return groupOffset;
}

- (unsigned)profileType
{
  os_unfair_recursive_lock_lock_with_options();
  profileType = self->_profileType;
  os_unfair_recursive_lock_unlock();
  return profileType;
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

- (void)detailsInquiryWithTarget:(unsigned __int8)a3 completion:(id)a4
{
  v4 = a3;
  v7 = a4;
  v6 = [(MIDIUMPCIProfile *)self ciDevice];
  [v6 detailsInquiry:self target:v4 completion:v7];
}

- (BOOL)sendProfileSpecificData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MIDIUMPCIProfile *)self ciDevice];
  LOBYTE(a4) = [v7 sendProfileSpecificData:self profileData:v6 error:a4];

  return a4;
}

- (BOOL)setProfileState:(BOOL)a3 enabledChannelCount:(unsigned __int16)a4 error:(id *)a5
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_ciDevice);

  if (!WeakRetained)
  {
    return 0;
  }

  os_unfair_recursive_lock_lock_with_options();
  v10 = objc_loadWeakRetained(&self->_ciDevice);
  v11 = [v10 setProfile:self newState:v7 enabledChannelCount:v6 error:a5];

  os_unfair_recursive_lock_unlock();
  return v11;
}

- ($CAB4DCDF46D014B19132C003A101DDEC)profileID
{
  os_unfair_recursive_lock_lock_with_options();
  if ([(NSData *)self->_profileID length]== 5)
  {
    v3 = [(NSData *)self->_profileID bytes];
    v4 = *v3;
    v5.i32[0] = *(v3 + 1);
    v6 = vmovl_u16(*&vmovl_u8(v5));
    v7.i64[0] = v6.u32[2];
    v7.i64[1] = v6.u32[3];
    v8.i64[0] = 255;
    v8.i64[1] = 255;
    v9 = vandq_s8(v7, v8);
    v10 = v9.i64[1];
    v11 = v9.i64[0];
    v7.i64[0] = v6.u32[0];
    v7.i64[1] = v6.u32[1];
    v12 = vandq_s8(v7, v8);
    v13 = v12.i64[1];
    v14 = v12.i64[0];
  }

  else
  {
    v4 = 0;
    v14 = 0;
    v13 = 0;
    v11 = 0;
    v10 = 0;
  }

  os_unfair_recursive_lock_unlock();
  v15.i64[0] = v14;
  v15.i64[1] = v13;
  v16.i64[0] = v11;
  v16.i64[1] = v10;
  v17 = vorrq_s8(vshlq_u64(v15, xmmword_23726C300), vshlq_u64(v16, xmmword_23726C310));
  v18 = *&vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL)) | v4;
  *&result.var0.var0 = v18;
  result.var0.var4 = BYTE4(v18);
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v5 = v4;
  v6 = [(MIDIUMPCIProfile *)self profileID];
  v11 = v6;
  v12 = BYTE4(v6);
  v7 = [v5 profileID];
  v9 = v11 == v7 && v12 == BYTE4(v7);

  os_unfair_recursive_lock_unlock();
  return v9;
}

- (MIDIUMPCIProfile)initWithDescription:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"name"];
  v32 = [v4 objectForKey:v5];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"midi_channel"];
  v31 = [v4 objectForKey:v6];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"profile_type"];
  v8 = [v4 objectForKey:v7];

  v27 = v8;
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"group_offset"];
  v30 = [v4 objectForKey:v9];

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"enabled"];
  v28 = [v4 objectForKey:v10];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"enabled_channel_count"];
  v29 = [v4 objectForKey:v11];

  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"total_channel_count"];
  v13 = [v4 objectForKey:v12];

  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"id"];
  v15 = [v4 objectForKey:v14];

  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"object"];
  v17 = [v4 objectForKey:v16];

  v18 = NSNumberArrayToProfileID(v15);
  if (BYTE5(v18))
  {
    v19 = v18 & 0xFFFFFFFFFFLL;
  }

  else
  {
    v19 = 0;
  }

  v20 = [v8 unsignedIntValue];
  v21 = [v30 unsignedIntValue];
  v22 = [v31 unsignedIntValue];
  v23 = [v29 unsignedIntValue];
  LOWORD(v26) = [v13 unsignedIntValue];
  v24 = [(MIDIUMPCIProfile *)self initWithProfileID:v19 name:v32 profileType:v20 groupOffset:v21 firstChannel:v22 enabledChannelCount:v23 totalChannelCount:v26];
  if (v24)
  {
    -[MIDIUMPCIProfile setObjectRef:](v24, "setObjectRef:", [v17 unsignedIntValue]);
    v24->_ownerClientRef = 0;
    v24->_isEnabled = [v28 BOOLValue];
  }

  return v24;
}

- (MIDIUMPCIProfile)initWithProfileID:(id)a3 name:(id)a4 profileType:(unsigned __int8)a5 groupOffset:(unsigned __int8)a6 firstChannel:(unsigned __int8)a7 enabledChannelCount:(unsigned __int16)a8 totalChannelCount:(unsigned __int16)a9
{
  v22 = a3;
  v14 = a4;
  v21.receiver = self;
  v21.super_class = MIDIUMPCIProfile;
  v15 = [(MIDIUMPCIProfile *)&v21 init];
  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v22 length:5];
    profileID = v15->_profileID;
    v15->_profileID = v16;

    if (v14)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithString:v14];
    }

    else
    {
      v18 = 0;
    }

    name = v15->_name;
    v15->_name = v18;

    v15->_profileType = a5;
    v15->_groupOffset = a6;
    v15->_firstChannel = a7;
    v15->_enabledChannelCount = a8;
    v15->_totalChannelCount = a9;
    v15->_isEnabled = 0;
  }

  return v15;
}

- (BOOL)deserialize:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  if (v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"name"];
    v30 = [v4 objectForKey:v5];

    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"midi_channel"];
    v29 = [v4 objectForKey:v6];

    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"profile_type"];
    v33 = [v4 objectForKey:v7];

    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"group_offset"];
    v32 = [v4 objectForKey:v8];

    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"enabled"];
    v31 = [v4 objectForKey:v9];

    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"enabled_channel_count"];
    v11 = [v4 objectForKey:v10];

    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"total_channel_count"];
    v13 = [v4 objectForKey:v12];

    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"id"];
    v15 = [v4 objectForKey:v14];

    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"object"];
    v17 = [v4 objectForKey:v16];

    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"owner_client_ref"];
    v19 = [v4 objectForKey:v18];

    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"owner"];
    v21 = [v4 objectForKey:v20];

    v22 = NSNumberArrayToProfileID(v15);
    v34 = v22;
    v35 = WORD2(v22);
    if (BYTE5(v22))
    {
      v23 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v34 length:5];
      profileID = self->_profileID;
      self->_profileID = v23;
    }

    v25 = v29;
    v26 = [MEMORY[0x277CCACA8] stringWithString:{v30, v29}];
    name = self->_name;
    self->_name = v26;

    self->_profileType = [v33 unsignedIntValue];
    self->_groupOffset = [v32 unsignedIntValue];
    self->_firstChannel = [v25 unsignedIntValue];
    self->_enabledChannelCount = [v11 unsignedIntValue];
    self->_totalChannelCount = [v13 unsignedIntValue];
    self->_isEnabled = [v31 BOOLValue];
    self->_objectRef = [v17 unsignedIntValue];
    self->_ownerClientRef = [v19 unsignedIntegerValue];
    self->_ownerObjectRef = [v21 unsignedIntegerValue];
  }

  os_unfair_recursive_lock_unlock();

  return v4 != 0;
}

- (id)serializeDescription
{
  v38[13] = *MEMORY[0x277D85DE8];
  os_unfair_recursive_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_ciDevice);

  if (WeakRetained)
  {
    v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"object"];
    v37[0] = v34;
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[MIDIUMPCIProfile objectRef](self, "objectRef")}];
    v38[0] = v30;
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"type"];
    v37[1] = v31;
    v38[1] = &unk_284A4D1B0;
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"name"];
    v37[2] = v32;
    v38[2] = self->_name;
    v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"type"];
    v37[3] = v33;
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_profileType];
    v38[3] = v35;
    v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"id"];
    v37[4] = v36;
    v4 = self->_profileID;
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
    v6 = [(NSData *)v4 bytes];
    for (i = 0; i != 5; ++i)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v6 + i)];
      [v5 addObject:v8];
    }

    v38[4] = v5;
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"midi_channel"];
    v37[5] = v28;
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_firstChannel];
    v38[5] = v27;
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"group_offset"];
    v37[6] = v26;
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_groupOffset];
    v38[6] = v25;
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"enabled"];
    v37[7] = v24;
    v23 = [MEMORY[0x277CCABB0] numberWithBool:self->_isEnabled];
    v38[7] = v23;
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"enabled_channel_count"];
    v37[8] = v22;
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:self->_enabledChannelCount];
    v38[8] = v21;
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"total_channel_count"];
    v37[9] = v20;
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:self->_totalChannelCount];
    v38[9] = v19;
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"owner"];
    v37[10] = v18;
    v9 = MEMORY[0x277CCABB0];
    v29 = objc_loadWeakRetained(&self->_ciDevice);
    v10 = [v9 numberWithUnsignedInt:{objc_msgSend(v29, "objectRef")}];
    v38[10] = v10;
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"owner_client_ref"];
    v37[11] = v11;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_ownerClientRef];
    v38[11] = v12;
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"owner"];
    v37[12] = v13;
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_ownerObjectRef];
    v38[12] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:13];
    v16 = [v15 mutableCopy];
  }

  else
  {
    v16 = 0;
  }

  os_unfair_recursive_lock_unlock();

  return v16;
}

- (BOOL)registerToDevice:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_ciDevice);

  if (!WeakRetained)
  {
    objc_storeWeak(&self->_ciDevice, v4);
  }

  return WeakRetained == 0;
}

- (BOOL)hasOwner
{
  os_unfair_recursive_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_ciDevice);
  v4 = WeakRetained != 0;

  os_unfair_recursive_lock_unlock();
  return v4;
}

@end