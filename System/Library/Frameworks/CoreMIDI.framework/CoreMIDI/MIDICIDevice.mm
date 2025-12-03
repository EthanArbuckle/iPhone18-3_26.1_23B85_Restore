@interface MIDICIDevice
- (BOOL)deserialize:(id)deserialize;
- (BOOL)handleProcessInquiryReplyMessage:(const InternalUMPCI_ProcessInquiryReport *)message;
- (BOOL)handleProfileDetailsReplyMessage:(const void *)message;
- (BOOL)isEqual:(id)equal;
- (BOOL)isMine;
- (BOOL)sendMessage:(unsigned __int8)message deviceID:(unsigned __int8)d data:(id)data error:(id *)error;
- (BOOL)sendProfileSpecificData:(id)data profileData:(id)profileData error:(id *)error;
- (BOOL)setProfile:(id)profile newState:(BOOL)state enabledChannelCount:(unsigned __int16)count error:(id *)error;
- (BOOL)supportsProcessInquiry;
- (BOOL)supportsProfileConfiguration;
- (BOOL)supportsPropertyExchange;
- (BOOL)supportsProtocolNegotiation;
- (MIDI2DeviceInfo)deviceInfo;
- (MIDICIDevice)initWithDescription:(id)description;
- (NSArray)profiles;
- (id).cxx_construct;
- (id)findProfileForID:(const void *)d;
- (id)serializeDescription;
- (id)serverSideTransactionDictionary:(int)dictionary;
- (unint64_t)maxPropertyExchangeRequests;
- (unint64_t)maxSysExSize;
- (unsigned)MUID;
- (unsigned)deviceType;
- (void)addProfile:(id)profile;
- (void)detailsInquiry:(id)inquiry target:(unsigned __int8)target completion:(id)completion;
- (void)removeProfile:(id)profile;
- (void)requestProcessInquiryMessageReport:(unsigned __int8)report channelControllerMessages:(unsigned __int8)messages noteDataMessages:(unsigned __int8)dataMessages dataControl:(unsigned __int8)control completion:(id)completion;
@end

@implementation MIDICIDevice

- (id).cxx_construct
{
  *(self + 14) = 0;
  *(self + 6) = 0u;
  *(self + 31) = 0;
  *(self + 32) = 0;
  return self;
}

- (NSArray)profiles
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(NSArray *)self->_profiles copy];
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (unsigned)deviceType
{
  os_unfair_recursive_lock_lock_with_options();
  deviceType = self->_deviceType;
  os_unfair_recursive_lock_unlock();
  return deviceType;
}

- (unint64_t)maxPropertyExchangeRequests
{
  os_unfair_recursive_lock_lock_with_options();
  maxPropertyExchangeRequests = self->_maxPropertyExchangeRequests;
  os_unfair_recursive_lock_unlock();
  return maxPropertyExchangeRequests;
}

- (unint64_t)maxSysExSize
{
  os_unfair_recursive_lock_lock_with_options();
  maxSysExSize = self->_maxSysExSize;
  os_unfair_recursive_lock_unlock();
  return maxSysExSize;
}

- (BOOL)supportsProcessInquiry
{
  os_unfair_recursive_lock_lock_with_options();
  supportsProcessInquiry = self->_supportsProcessInquiry;
  os_unfair_recursive_lock_unlock();
  return supportsProcessInquiry;
}

- (BOOL)supportsPropertyExchange
{
  os_unfair_recursive_lock_lock_with_options();
  supportsPropertyExchange = self->_supportsPropertyExchange;
  os_unfair_recursive_lock_unlock();
  return supportsPropertyExchange;
}

- (BOOL)supportsProfileConfiguration
{
  os_unfair_recursive_lock_lock_with_options();
  supportsProfileConfiguration = self->_supportsProfileConfiguration;
  os_unfair_recursive_lock_unlock();
  return supportsProfileConfiguration;
}

- (BOOL)supportsProtocolNegotiation
{
  os_unfair_recursive_lock_lock_with_options();
  supportsProtocolNegotiation = self->_supportsProtocolNegotiation;
  os_unfair_recursive_lock_unlock();
  return supportsProtocolNegotiation;
}

- (unsigned)MUID
{
  os_unfair_recursive_lock_lock_with_options();
  MUID = self->_MUID;
  os_unfair_recursive_lock_unlock();
  return MUID;
}

- (MIDI2DeviceInfo)deviceInfo
{
  v2 = [(MIDI2DeviceInfo *)self->_deviceInfo copy];

  return v2;
}

- (BOOL)isMine
{
  ownerClientRef = self->_ownerClientRef;
  UMPCIClients::instance(self);
  return ownerClientRef == UMPCIClients::instance(void)::all;
}

- (BOOL)sendMessage:(unsigned __int8)message deviceID:(unsigned __int8)d data:(id)data error:(id *)error
{
  dataCopy = data;
  v10 = +[MIDICIDeviceManager sharedInstance];
  serverMUID = [v10 serverMUID];

  midi::ci::message::make_with_payload_size(&v17, [dataCopy length], message, serverMUID, 0xFFFFFFFu, d);
  v12 = __p[1];
  bytes = [dataCopy bytes];
  bytes2 = [dataCopy bytes];
  v15 = [dataCopy length];
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__p, v12, bytes, (bytes2 + v15), bytes2 + v15 - bytes);
  os_unfair_recursive_lock_lock_with_options();
  sendUMPMessage(self->_MIDIDestination, [(MIDICIDevice *)self group], &v17);
  os_unfair_recursive_lock_unlock();
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return 1;
}

- (BOOL)handleProcessInquiryReplyMessage:(const InternalUMPCI_ProcessInquiryReport *)message
{
  os_unfair_recursive_lock_lock_with_options();
  begin = self->_activeTransactions.__begin_;
  end = self->_activeTransactions.__end_;
  if (begin != end)
  {
    while (*(begin + 2) != 2 || *(begin + 3) != message->var3)
    {
      begin = (begin + 48);
      if (begin == end)
      {
        goto LABEL_10;
      }
    }
  }

  if (begin != end && message->var3 == self->_MUID)
  {
    v7 = _Block_copy(*(begin + 3));
    v8 = _Block_copy(*(begin + 5));
    os_unfair_recursive_lock_unlock();
    if (message->var8)
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-10899 userInfo:0];
      (*(v8 + 2))(v8, message->var4, message->var5, message->var6, &__p, v9);
LABEL_52:

      v10 = 1;
      goto LABEL_11;
    }

    v12 = message->var7;
    v9 = v12;
    if (v12)
    {
      v13 = [(__CFData *)v12 length];
    }

    else
    {
      v13 = 0;
    }

    std::vector<unsigned char>::vector[abi:ne200100](&__p, v13 + 20);
    v14 = __p;
    v15 = v34;
    *__p = 2;
    v14[4] = 0;
    if (v13 < 4)
    {
LABEL_50:
      (*(v8 + 2))(v8, message->var4, message->var5, message->var6, v14, 0);
      if (__p)
      {
        v34 = __p;
        operator delete(__p);
      }

      goto LABEL_52;
    }

    bytes = [v9 bytes];
    v17 = bytes;
    v18 = (v14 + 2);
    v19 = v13 >> 2;
    v20 = v14[1];
    if (v20)
    {
      v21 = v14[4];
      if (v21 >= 2 && v14[5] >> 28 == 3)
      {
        v22 = v14[(v21 - 2) + 5];
        if (v22 >> 28 == 3)
        {
          v23 = (v22 >> 20) & 0xF;
        }

        else
        {
          v23 = 255;
        }

        if (v23)
        {
          v24 = v23 == 3;
        }

        else
        {
          v24 = 1;
        }

        v25 = v24;
        v26 = 1;
      }

      else
      {
        v25 = 0;
        v26 = 0;
      }

      v27 = (v14 + 5);
      if (!*(v14 + 1) && ((((*bytes & 0xF0000000) == 805306368) ^ v26) & 1) == 0 && (*bytes & 0xF0E00000) != 0x30000000 && !v25)
      {
        if (&v27[4 * v19 + 4 * v21] > v15)
        {
          goto LABEL_50;
        }

LABEL_39:
        v28 = &v18[4 * v21 + 12];
        v29 = v13 >> 2;
        if (v13 >> 2 <= 1)
        {
          if (!v29)
          {
LABEL_49:
            *(v18 + 2) += v19;
            goto LABEL_50;
          }

          if (v29 == 1)
          {
LABEL_48:
            *v28 = *v17;
            goto LABEL_49;
          }
        }

        else
        {
          switch(v29)
          {
            case 2:
LABEL_45:
              v32 = *v17++;
              *v28 = v32;
              v28 += 4;
              goto LABEL_48;
            case 3:
LABEL_44:
              v31 = *v17++;
              *v28 = v31;
              v28 += 4;
              goto LABEL_45;
            case 4:
              v30 = *v17++;
              *v28 = v30;
              v28 += 4;
              goto LABEL_44;
          }
        }

        memmove(v28, v17, v13 & 0xFFFFFFFFFFFFFFFCLL);
        goto LABEL_49;
      }

      v18 = &v27[4 * v21];
    }

    if (&v18[4 * v19 + 12] > v15)
    {
      goto LABEL_50;
    }

    v21 = 0;
    v14[1] = v20 + 1;
    *v18 = 0;
    *(v18 + 2) = 0;
    goto LABEL_39;
  }

LABEL_10:
  os_unfair_recursive_lock_unlock();
  v10 = 0;
  v8 = 0;
  v7 = 0;
LABEL_11:

  return v10;
}

- (void)requestProcessInquiryMessageReport:(unsigned __int8)report channelControllerMessages:(unsigned __int8)messages noteDataMessages:(unsigned __int8)dataMessages dataControl:(unsigned __int8)control completion:(id)completion
{
  controlCopy = control;
  dataMessagesCopy = dataMessages;
  reportCopy = report;
  completionCopy = completion;
  v12 = [(MIDICIDevice *)self serverSideTransactionDictionary:2];
  os_unfair_recursive_lock_lock_with_options();
  *&v27 = mach_absolute_time();
  MUID = self->_MUID;
  DWORD2(v27) = 2;
  HIDWORD(v27) = MUID;
  v28 = 0;
  memset(v29, 0, 13);
  v14 = _Block_copy(completionCopy);
  v30 = v14;
  end = self->_activeTransactions.__end_;
  if (end >= self->_activeTransactions.__cap_)
  {
    v18 = std::vector<CIAsyncTransaction>::__emplace_back_slow_path<CIAsyncTransaction>(&self->_activeTransactions, &v27);
    v17 = v30;
    v16 = v29[0];
  }

  else
  {
    v16 = 0;
    v17 = 0;
    *end = v27;
    *(end + 16) = v28;
    *(end + 3) = 0;
    *(end + 8) = v29[1];
    *(end + 36) = BYTE4(v29[1]);
    *(end + 5) = v14;
    v18 = (end + 48);
  }

  self->_activeTransactions.__end_ = v18;

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:reportCopy];
  v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"system_messages"];
  [v12 setValue:v19 forKey:v20];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:dataMessagesCopy];
  v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"channel_controller"];
  [v12 setValue:v21 forKey:v22];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:controlCopy];
  v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"note_data"];
  [v12 setValue:v23 forKey:v24];

  os_unfair_recursive_lock_unlock();
  v31 = 0;
  v25 = UMPCIServerSideMIDICITransaction(v12, &v31);
  if (v25)
  {
    v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v25 userInfo:0];
    *&v27 = 2;
    (*(completionCopy + 2))(completionCopy, 0, 0, 0, &v27, v26);
  }
}

- (BOOL)handleProfileDetailsReplyMessage:(const void *)message
{
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(MIDICIDevice *)self findProfileForID:message + 16];
  v6 = v5;
  v7 = *(message + 3);
  if (v7 != self->_MUID || v5 == 0)
  {
    goto LABEL_17;
  }

  begin = self->_activeTransactions.__begin_;
  end = self->_activeTransactions.__end_;
  if (begin != end)
  {
    while (*(begin + 2) != 1 || *(begin + 16) != *(message + 21) || *(begin + 3) != v7)
    {
      begin = (begin + 48);
      if (begin == end)
      {
        goto LABEL_17;
      }
    }
  }

  if (begin == end)
  {
LABEL_17:
    os_unfair_recursive_lock_unlock();
    v22 = 0;
    v12 = 0;
    v11 = 0;
  }

  else
  {
    v11 = _Block_copy(*(begin + 3));
    v12 = _Block_copy(*(begin + 5));
    v13 = self->_activeTransactions.__end_;
    if ((begin + 48) != v13)
    {
      do
      {
        v14 = (begin + 48);
        *begin = *(begin + 3);
        *(begin + 16) = *(begin + 64);
        v15 = *(begin + 9);
        *(begin + 9) = 0;
        v16 = *(begin + 3);
        *(begin + 3) = v15;

        *(begin + 8) = *(begin + 20);
        *(begin + 36) = *(begin + 84);
        v17 = *(begin + 11);
        *(begin + 11) = 0;
        v18 = *(begin + 5);
        *(begin + 5) = v17;

        v19 = (begin + 96);
        begin = (begin + 48);
      }

      while (v19 != v13);
      begin = v14;
    }

    std::vector<CIAsyncTransaction>::__base_destruct_at_end[abi:ne200100](&self->_activeTransactions, begin);
    os_unfair_recursive_lock_unlock();
    if (*(message + 32) == 1)
    {
      v20 = 0;
      v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-10899 userInfo:0];
    }

    else
    {
      v20 = *(message + 3);
      v21 = 0;
    }

    v11[2](v11, self, v6, *(message + 21), v20, v21);

    v22 = 1;
  }

  return v22;
}

- (void)detailsInquiry:(id)inquiry target:(unsigned __int8)target completion:(id)completion
{
  targetCopy = target;
  inquiryCopy = inquiry;
  completionCopy = completion;
  os_unfair_recursive_lock_lock_with_options();
  *&v27 = mach_absolute_time();
  MUID = self->_MUID;
  DWORD2(v27) = 1;
  HIDWORD(v27) = MUID;
  v28 = targetCopy;
  v11 = _Block_copy(completionCopy);
  v29 = v11;
  profileID = [inquiryCopy profileID];
  v30 = profileID;
  v31 = BYTE4(profileID);
  v32 = 0;
  end = self->_activeTransactions.__end_;
  if (end >= self->_activeTransactions.__cap_)
  {
    v16 = std::vector<CIAsyncTransaction>::__emplace_back_slow_path<CIAsyncTransaction>(&self->_activeTransactions, &v27);
    v15 = v32;
    v14 = v29;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    *end = v27;
    *(end + 16) = v28;
    *(end + 3) = v11;
    *(end + 8) = v30;
    *(end + 36) = v31;
    *(end + 5) = 0;
    v16 = (end + 48);
  }

  self->_activeTransactions.__end_ = v16;

  v17 = [(MIDICIDevice *)self serverSideTransactionDictionary:1];
  profileID2 = [inquiryCopy profileID];
  LODWORD(v27) = profileID2;
  BYTE4(v27) = BYTE4(profileID2);
  v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{5, v27}];
  for (i = 0; i != 5; ++i)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(&v27 + i)];
    [v19 addObject:v21];
  }

  v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"id"];
  [v17 setValue:v19 forKey:v22];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:targetCopy];
  v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"target"];
  [v17 setValue:v23 forKey:v24];

  *&v27 = 0;
  v25 = UMPCIServerSideMIDICITransaction(v17, &v27);
  if (v25)
  {
    std::vector<CIAsyncTransaction>::__base_destruct_at_end[abi:ne200100](&self->_activeTransactions, self->_activeTransactions.__end_ - 48);
    v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v25 userInfo:0];
    (*(completionCopy + 2))(completionCopy, self, inquiryCopy, targetCopy, 0, v26);
  }

  os_unfair_recursive_lock_unlock();
}

- (BOOL)sendProfileSpecificData:(id)data profileData:(id)profileData error:(id *)error
{
  dataCopy = data;
  profileDataCopy = profileData;
  os_unfair_recursive_lock_lock_with_options();
  v9 = +[MIDICIDeviceManager sharedInstance];
  serverMUID = [v9 serverMUID];

  profileID = [dataCopy profileID];
  __src = profileID;
  v23 = BYTE4(profileID);
  MUID = self->_MUID;
  bytes = [profileDataCopy bytes];
  v14 = [profileDataCopy length];
  midi::ci::message::make_with_payload_size(&v19, v14 + 9, 47, serverMUID, MUID, 127);
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, __dst, &__src, v24, 5);
  if ((v14 & 0xF0000000) != 0)
  {
    v16 = "value <= uint28_max";
    v17 = 238;
    v18 = "add_uint28";
    goto LABEL_10;
  }

  v25[0] = v14 & 0x7F;
  v25[1] = (v14 >> 7) & 0x7F;
  v25[2] = (v14 >> 14) & 0x7F;
  v25[3] = v14 >> 21;
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, __dst, v25, &v26, 4);
  if (!v14)
  {
    goto LABEL_5;
  }

  if (!bytes)
  {
    v16 = "d";
    v17 = 216;
    v18 = "add_data";
LABEL_10:
    __assert_rtn(v18, "sysex.h", v17, v16);
  }

  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, __dst, bytes, &bytes[v14], v14);
LABEL_5:
  sendUMPMessage(self->_MIDIDestination, [(MIDICIDevice *)self group], &v19);
  if (__p)
  {
    operator delete(__p);
  }

  os_unfair_recursive_lock_unlock();

  return 1;
}

- (id)serverSideTransactionDictionary:(int)dictionary
{
  v3 = *&dictionary;
  v17[4] = *MEMORY[0x277D85DE8];
  os_unfair_recursive_lock_lock_with_options();
  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"transaction_type"];
  v16[0] = v15;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  v17[0] = v5;
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"destination_muid"];
  v16[1] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_MUID];
  v17[1] = v7;
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"sender_object_ref"];
  v16[2] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_objectRef];
  v17[2] = v9;
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"owner_client_ref"];
  v16[3] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_ownerClientRef];
  v17[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v13 = [v12 mutableCopy];

  os_unfair_recursive_lock_unlock();

  return v13;
}

- (void)removeProfile:(id)profile
{
  v18 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:self->_profiles];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_profiles;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if ([v10 isEqual:{profileCopy, v13}])
        {
          [v5 removeObject:profileCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v5 mutableCopy];
  profiles = self->_profiles;
  self->_profiles = v11;

  os_unfair_recursive_lock_unlock();
}

- (void)addProfile:(id)profile
{
  v17 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  os_unfair_recursive_lock_lock_with_options();
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  profiles = self->_profiles;
  v6 = [(NSArray *)profiles countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(profiles);
      }

      v9 = *(*(&v12 + 1) + 8 * v8);
      v10 = [v9 isEqual:{profileCopy, v12}];

      if (v10)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSArray *)profiles countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v11 = [(NSArray *)self->_profiles arrayByAddingObject:profileCopy];
    profiles = self->_profiles;
    self->_profiles = v11;
  }

  os_unfair_recursive_lock_unlock();
}

- (id)findProfileForID:(const void *)d
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_recursive_lock_lock_with_options();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_profiles;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v13 + 1) + 8 * v8);
      profileID = [v9 profileID];
      if (profileID == *d && BYTE4(profileID) == *(d + 4))
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v9 = 0;
  }

  os_unfair_recursive_lock_unlock();

  return v9;
}

- (BOOL)setProfile:(id)profile newState:(BOOL)state enabledChannelCount:(unsigned __int16)count error:(id *)error
{
  stateCopy = state;
  profileCopy = profile;
  os_unfair_recursive_lock_lock_with_options();
  profileID = [profileCopy profileID];
  __src = profileID;
  v16 = BYTE4(profileID);
  v10 = +[MIDICIDeviceManager sharedInstance];
  serverMUID = [v10 serverMUID];

  if (stateCopy)
  {
    midi::ci::message::make_with_payload_size(v13, 5, 34, serverMUID, self->_MUID, 127);
  }

  else
  {
    midi::ci::message::make_with_payload_size(v13, 5, 35, serverMUID, self->_MUID, 127);
  }

  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__p, __p[1], &__src, v17, 5);
  sendUMPMessage(self->_MIDIDestination, [(MIDICIDevice *)self group], v13);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  os_unfair_recursive_lock_unlock();

  return 1;
}

- (id)serializeDescription
{
  v50[12] = *MEMORY[0x277D85DE8];
  os_unfair_recursive_lock_lock_with_options();
  v43 = mach_absolute_time();
  v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"type"];
  v49[0] = v32;
  v50[0] = &unk_284A4D1E0;
  v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"object"];
  v49[1] = v40;
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_objectRef];
  v50[1] = v39;
  v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"muid"];
  v49[2] = v38;
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_MUID];
  v50[2] = v37;
  v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"source"];
  v49[3] = v36;
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_MIDISource];
  v50[3] = v35;
  v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"destination"];
  v49[4] = v34;
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_MIDIDestination];
  v50[4] = v33;
  v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"supports_protocol_negotiation"];
  v49[5] = v31;
  v30 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsProtocolNegotiation];
  v50[5] = v30;
  v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"supports_profile_capability"];
  v49[6] = v29;
  v28 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsProfileConfiguration];
  v50[6] = v28;
  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"supports_property_exchange_capability"];
  v49[7] = v27;
  v2 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsPropertyExchange];
  v50[7] = v2;
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"supports_process_inquiry_capability"];
  v49[8] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsProcessInquiry];
  v50[8] = v4;
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"max_sysex_size"];
  v49[9] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_maxSysExSize];
  v50[9] = v6;
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"max_property_requests"];
  v49[10] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_maxPropertyExchangeRequests];
  v50[10] = v8;
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"owner_client_ref"];
  v49[11] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_ownerClientRef];
  v50[11] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:12];
  v41 = [v11 mutableCopy];

  if (self->_profiles)
  {
    array = [MEMORY[0x277CBEB18] array];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v13 = self->_profiles;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v14)
    {
      v15 = *v45;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v45 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v44 + 1) + 8 * i);
          ciDevice = [v17 ciDevice];
          v19 = ciDevice == 0;

          if (v19)
          {
            [v17 setCiDevice:self];
          }

          serializeDescription = [v17 serializeDescription];
          v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v43];
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"timestamp"];
          [serializeDescription setValue:v21 forKey:v22];

          [array addObject:serializeDescription];
        }

        v14 = [(NSArray *)v13 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v14);
    }

    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"profiles"];
    [v41 setValue:array forKey:v23];
  }

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v43];
  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"timestamp"];
  [v41 setValue:v24 forKey:v25];

  os_unfair_recursive_lock_unlock();

  return v41;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  os_unfair_recursive_lock_lock_with_options();
  v5 = equalCopy;
  mUID = [(MIDICIDevice *)self MUID];
  v11 = mUID == [v5 MUID] && (v7 = -[MIDICIDevice supportsProtocolNegotiation](self, "supportsProtocolNegotiation"), v7 == objc_msgSend(v5, "supportsProtocolNegotiation")) && (v8 = -[MIDICIDevice supportsProfileConfiguration](self, "supportsProfileConfiguration"), v8 == objc_msgSend(v5, "supportsProfileConfiguration")) && (v9 = -[MIDICIDevice supportsPropertyExchange](self, "supportsPropertyExchange"), v9 == objc_msgSend(v5, "supportsPropertyExchange")) && (v10 = -[MIDICIDevice supportsProcessInquiry](self, "supportsProcessInquiry"), v10 == objc_msgSend(v5, "supportsProcessInquiry")) && self->_maxSysExSize == v5[4] && self->_maxPropertyExchangeRequests == v5[5] && -[NSArray isEqualToArray:](self->_profiles, "isEqualToArray:", v5[7]);

  os_unfair_recursive_lock_unlock();
  return v11;
}

- (BOOL)deserialize:(id)deserialize
{
  v61 = *MEMORY[0x277D85DE8];
  deserializeCopy = deserialize;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"destination"];
  v6 = [deserializeCopy objectForKey:v5];
  unsignedIntValue = [v6 unsignedIntValue];

  outValue = 0;
  if (MIDIObjectGetIntegerProperty(unsignedIntValue, kMIDIPropertyProtocolID, &outValue))
  {
    v54 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"device_info"];
    v9 = [deserializeCopy objectForKey:v8];
    obj = [MIDI2DeviceInfo infoWithDescription:v9];

    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"source"];
    v11 = [deserializeCopy objectForKey:v10];
    unsignedIntValue2 = [v11 unsignedIntValue];

    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"muid"];
    v14 = [deserializeCopy objectForKey:v13];
    unsignedIntValue3 = [v14 unsignedIntValue];

    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"device_type"];
    v17 = [deserializeCopy objectForKey:v16];
    unsignedIntValue4 = [v17 unsignedIntValue];

    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"destination"];
    v19 = [deserializeCopy objectForKey:v18];
    unsignedIntValue5 = [v19 unsignedIntValue];

    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"supports_protocol_negotiation"];
    v48 = [deserializeCopy objectForKey:v21];

    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"supports_profile_capability"];
    v47 = [deserializeCopy objectForKey:v22];

    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"supports_property_exchange_capability"];
    v46 = [deserializeCopy objectForKey:v23];

    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"supports_process_inquiry_capability"];
    v44 = [deserializeCopy objectForKey:v24];

    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"max_sysex_size"];
    v43 = [deserializeCopy objectForKey:v25];

    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"max_property_requests"];
    v45 = [deserializeCopy objectForKey:v26];

    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"object"];
    v49 = [deserializeCopy objectForKey:v27];

    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"profiles"];
    v50 = [deserializeCopy objectForKey:v28];

    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"function_block_id"];
    v52 = [deserializeCopy objectForKey:v29];

    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"owner_client_ref"];
    v53 = [deserializeCopy objectForKey:v30];

    IntegerProperty = MIDIObjectGetIntegerProperty(unsignedIntValue, kMIDIPropertyProtocolID, &outValue);
    v54 = IntegerProperty == 0;
    if (!IntegerProperty)
    {
      objc_storeStrong(&self->_deviceInfo, obj);
      self->_MUID = unsignedIntValue3;
      self->_deviceType = unsignedIntValue4;
      self->_MIDISource = unsignedIntValue2;
      self->_MIDIDestination = unsignedIntValue5;
      self->_supportsProtocolNegotiation = [v48 BOOLValue];
      self->_supportsProfileConfiguration = [v47 BOOLValue];
      self->_supportsPropertyExchange = [v46 BOOLValue];
      self->_supportsProcessInquiry = [v44 BOOLValue];
      self->_maxSysExSize = [v43 unsignedIntValue];
      self->_maxPropertyExchangeRequests = [v45 unsignedIntValue];
      self->_objectRef = [v49 unsignedIntValue];
      self->_functionBlockID = [v52 unsignedIntValue];
      self->_ownerClientRef = [v53 unsignedIntegerValue];
      v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v33 = v50;
      v34 = [v33 countByEnumeratingWithState:&v55 objects:v60 count:16];
      if (v34)
      {
        v35 = *v56;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v56 != v35)
            {
              objc_enumerationMutation(v33);
            }

            v37 = *(*(&v55 + 1) + 8 * i);
            v38 = [[MIDIUMPCIProfile alloc] initWithDescription:v37];
            [(MIDIUMPCIProfile *)v38 registerToDevice:self];
            [v32 addObject:v38];
          }

          v34 = [v33 countByEnumeratingWithState:&v55 objects:v60 count:16];
        }

        while (v34);
      }

      v39 = [v32 mutableCopy];
      profiles = self->_profiles;
      self->_profiles = v39;
    }
  }

  os_unfair_recursive_lock_unlock();

  return v54;
}

- (MIDICIDevice)initWithDescription:(id)description
{
  descriptionCopy = description;
  v5 = [(MIDICIDevice *)self init];
  v6 = v5;
  if (v5)
  {
    [(MIDICIDevice *)v5 deserialize:descriptionCopy];
  }

  return v6;
}

@end