@interface MIDICIMutableDevice
- (BOOL)addProfile:(id)profile error:(id *)error;
- (BOOL)handleDiscoveryInquiry:(unsigned __int8)inquiry view:(const discovery_inquiry_view *)view;
- (BOOL)handleEndpointInformationInquiry:(unsigned __int8)inquiry view:(const endpoint_information_inquiry_view *)view;
- (BOOL)handleInvalidateMUID:(unsigned __int8)d view:(const invalidate_muid_view *)view;
- (BOOL)handleProfileIDView:(unsigned __int8)view view:(const profile_id_view *)a4;
- (BOOL)handleProfileInquiry:(unsigned __int8)inquiry view:(const profile_inquiry_view *)view;
- (BOOL)handleProfileSpecificData:(unsigned __int8)data fromDevice:(id)device view:(const profile_specific_data_view *)view;
- (BOOL)handleSysExIdentityRequest:(unsigned __int8)request;
- (BOOL)handleSysex:(unsigned __int8)sysex sysEx:(const void *)ex;
- (BOOL)receiveMessageViaSource:(const void *)source error:(id *)error;
- (BOOL)registerWithServer;
- (BOOL)removeProfile:(id)profile error:(id *)error;
- (BOOL)sendMessageToCIDevice:(id)device withSubType:(unsigned __int8)type deviceID:(unsigned __int8)d data:(id)data error:(id *)error;
- (BOOL)setEnabled:(BOOL)enabled error:(id *)error;
- (BOOL)setProfile:(id)profile newState:(BOOL)state enabledChannelCount:(unsigned __int16)count error:(id *)error;
- (BOOL)setResourceList:(id)list error:(id *)error;
- (MIDICIMutableDevice)initWithUMPEndpointPair:(id)pair functionBlock:(id)block capabilities:(unsigned __int8)capabilities sysExSizeLimit:(unint64_t)limit maxPERequests:(unint64_t)requests queue:(id)queue profileSpecificDataCallback:(id)callback messageCallback:(id)self0;
- (id).cxx_construct;
- (id)findProfile:(profile_id)profile;
- (void)dealloc;
- (void)receiveMessageViaSource:(-[MIDICIMutableDevice)receiveMessageViaSource:error:]::$_2 error:;
- (void)setupMIDIStreamObjects;
@end

@implementation MIDICIMutableDevice

- (id).cxx_construct
{
  *(self + 17) = 0;
  *(self + 18) = 0;
  return self;
}

- (BOOL)handleProfileSpecificData:(unsigned __int8)data fromDevice:(id)device view:(const profile_specific_data_view *)view
{
  deviceCopy = device;
  v8 = [(MIDICIMutableDevice *)self findProfile:*(*(view->var0 + 1) + 12) | (*(*(view->var0 + 1) + 13) << 8)];
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = *(view->var0 + 1);
  if (*(view->var0 + 2) - v9 <= 0x14uLL)
  {
    __assert_rtn("make_uint28", "sysex.h", 249, "data_pos + 3 < data.size()");
  }

  if (v9[17] | (v9[18] << 7) | (v9[19] << 14) | (v9[20] << 21))
  {
    v10 = objc_alloc(MEMORY[0x277CBEA90]);
    v11 = *(view->var0 + 1);
    if (*(view->var0 + 2) - v11 <= 0x14uLL)
    {
      __assert_rtn("make_uint28", "sysex.h", 249, "data_pos + 3 < data.size()");
    }

    v12 = [v10 initWithBytes:v11 + 21 length:v11[17] | (v11[18] << 7) | (v11[19] << 14) | (v11[20] << 21)];
    callbackQueue = self->_callbackQueue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __65__MIDICIMutableDevice_handleProfileSpecificData_fromDevice_view___block_invoke;
    v17[3] = &unk_278A287C8;
    v17[4] = self;
    v18 = deviceCopy;
    v19 = v8;
    v20 = v12;
    v14 = v12;
    dispatch_sync(callbackQueue, v17);

    v15 = 1;
  }

  else
  {
LABEL_6:
    v15 = 0;
  }

  return v15;
}

- (BOOL)handleProfileIDView:(unsigned __int8)view view:(const profile_id_view *)a4
{
  v6 = [(MIDICIMutableDevice *)self findProfile:*(*(a4->var0 + 1) + 12) | (*(*(a4->var0 + 1) + 13) << 8)];
  v8 = v6;
  if (v6)
  {
    v9 = *(a4->var0 + 1);
    if ((*(a4->var0 + 2) - v9) >= 3 && (v10 = *(v9 + 2), (v10 & 0xFE) == 0x22))
    {
      v14 = 0;
      v11 = [v6 setProfileState:v10 == 34 enabledChannelCount:0 error:&v14];
      if (v14)
      {
        v12 = 0;
      }

      else
      {
        v12 = v11;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v20[0] = "Invalid profile for device!";
    v20[1] = 27;
    v19 = 0;
    v18 = 0;
    midi::ci::make_nak_message(v15, *(a4->var0 + 1), *(a4->var0 + 2), &v18, v20, v7);
    v12 = [(MIDICIMutableDevice *)self receiveMessageViaSource:v15 error:0];
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }
  }

  return v12;
}

- (BOOL)handleProfileInquiry:(unsigned __int8)inquiry view:(const profile_inquiry_view *)view
{
  v64 = *MEMORY[0x277D85DE8];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  profiles = [(MIDICIDevice *)self profiles];
  v6 = [profiles countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v6)
  {
    viewCopy = view;
    v7 = 0;
    v52 = 0;
    v53 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v47 = profiles;
    v48 = *v58;
    do
    {
      v11 = 0;
      v49 = v6;
      do
      {
        if (*v58 != v48)
        {
          objc_enumerationMutation(profiles);
        }

        v12 = *(*(&v57 + 1) + 8 * v11);
        profileID = [v12 profileID];
        isEnabled = [v12 isEnabled];
        v15 = isEnabled;
        if (isEnabled)
        {
          v16 = v7;
        }

        else
        {
          v16 = v9;
        }

        v17 = v53;
        if (!isEnabled)
        {
          v17 = v52;
        }

        if (v16 >= v17)
        {
          if (isEnabled)
          {
            v19 = v10;
          }

          else
          {
            v19 = v8;
          }

          v20 = v16 - v19;
          v21 = 0xCCCCCCCCCCCCCCCDLL * (v16 - v19);
          v22 = v21 + 1;
          if (v21 + 1 >= 0x3333333333333334)
          {
            std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
          }

          v23 = 0xCCCCCCCCCCCCCCCDLL * (v17 - v19);
          if (2 * v23 > v22)
          {
            v22 = 2 * v23;
          }

          if (v23 >= 0x1999999999999999)
          {
            v24 = 0x3333333333333333;
          }

          else
          {
            v24 = v22;
          }

          v50 = v8;
          if (v24)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<midi::ci::profile_id>>(v24);
          }

          v25 = v10;
          v26 = 5 * v21;
          *(v26 + 4) = BYTE4(profileID);
          *v26 = profileID;
          v18 = 5 * v21 + 5;
          v27 = v26 - v20;
          memcpy((v26 - v20), v19, v20);
          if (v15)
          {
            v28 = v50;
          }

          else
          {
            v28 = v27;
          }

          if (v15)
          {
            v25 = v27;
            v7 = v18;
          }

          else
          {
            v9 = v18;
          }

          v29 = v53;
          if (v15)
          {
            v29 = 0;
          }

          v53 = v29;
          v30 = v52;
          if (!v15)
          {
            v30 = 0;
          }

          v51 = v28;
          v52 = v30;
          if (v19)
          {
            operator delete(v19);
          }

          v10 = v25;
          v8 = v51;
        }

        else
        {
          *v16 = profileID;
          *(v16 + 4) = BYTE4(profileID);
          v18 = v16 + 5;
        }

        profiles = v47;
        if (v15)
        {
          v7 = v18;
        }

        else
        {
          v9 = v18;
        }

        ++v11;
      }

      while (v49 != v11);
      v6 = [v47 countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v6);
    view = viewCopy;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  v31 = *(view->var0 + 1);
  if (*(view->var0 + 2) - v31 < 8uLL)
  {
    v41 = "data_pos + 3 < data.size()";
    v42 = 249;
    v43 = "sysex.h";
    v44 = "make_uint28";
    goto LABEL_78;
  }

  v32 = 0xCCCCCCCCCCCCCCCDLL * (v7 - v10);
  if (v32 >> 14)
  {
    v41 = "num_enabled_profiles <= sysex7::uint14_max";
    v42 = 134;
LABEL_77:
    v43 = "capability_inquiry.cpp";
    v44 = "make_profile_inquiry_reply";
LABEL_78:
    __assert_rtn(v44, v43, v42, v41);
  }

  v33 = v8;
  v34 = 0xCCCCCCCCCCCCCCCDLL * (v9 - v8);
  if (v34 >= 0x4000u)
  {
    v41 = "num_disabled_profiles <= sysex7::uint14_max";
    v42 = 135;
    goto LABEL_77;
  }

  midi::ci::message::make_with_payload_size(v54, 5 * ((v34 + v32) & 0x7FFF) + 4, 33, self->super._MUID, v31[4] | (v31[5] << 7) | (v31[6] << 14) | (v31[7] << 21), 127);
  __src = v32 & 0x7F;
  v62 = v32 >> 7;
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, __dst, &__src, v63, 2);
  if (v32)
  {
    v35 = v32 & 0x3FFF;
    v36 = v10 + 2;
    do
    {
      if (*(v36 - 2) < 0)
      {
        __assert_rtn("add_uint7", "sysex.h", 208, "value <= uint7_max");
      }

      __src = *(v36 - 2);
      std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, __dst, &__src, &v62, 1);
      if (*(v36 - 1) < 0 || (__src = *(v36 - 1), std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, __dst, &__src, &v62, 1), *v36 < 0) || (__src = *v36, std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, __dst, &__src, &v62, 1), v36[1] < 0) || (__src = v36[1], std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, __dst, &__src, &v62, 1), v36[2] < 0))
      {
        __assert_rtn("add_uint7", "sysex.h", 208, "value <= uint7_max");
      }

      __src = v36[2];
      std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, __dst, &__src, &v62, 1);
      v36 += 5;
      --v35;
    }

    while (v35);
  }

  __src = v34 & 0x7F;
  v62 = v34 >> 7;
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, __dst, &__src, v63, 2);
  if (v34)
  {
    v37 = v34 & 0x3FFF;
    v38 = v33 + 2;
    do
    {
      if (*(v38 - 2) < 0)
      {
        __assert_rtn("add_uint7", "sysex.h", 208, "value <= uint7_max");
      }

      __src = *(v38 - 2);
      std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, __dst, &__src, &v62, 1);
      if (*(v38 - 1) < 0 || (__src = *(v38 - 1), std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, __dst, &__src, &v62, 1), *v38 < 0) || (__src = *v38, std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, __dst, &__src, &v62, 1), v38[1] < 0) || (__src = v38[1], std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, __dst, &__src, &v62, 1), v38[2] < 0))
      {
        __assert_rtn("add_uint7", "sysex.h", 208, "value <= uint7_max");
      }

      __src = v38[2];
      std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, __dst, &__src, &v62, 1);
      v38 += 5;
      --v37;
    }

    while (v37);
  }

  v39 = [(MIDICIMutableDevice *)self receiveMessageViaSource:v54 error:0];
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  if (v33)
  {
    operator delete(v33);
  }

  if (v10)
  {
    operator delete(v10);
  }

  return v39;
}

- (BOOL)handleEndpointInformationInquiry:(unsigned __int8)inquiry view:(const endpoint_information_inquiry_view *)view
{
  __dst[2] = *MEMORY[0x277D85DE8];
  if (*(*(view->var0 + 1) + 12))
  {
    return 0;
  }

  productInstanceID = [(MIDIUMPEndpoint *)self->super._endpoint productInstanceID];
  uTF8String = [productInstanceID UTF8String];

  v9 = strlen(uTF8String);
  if (v9 >= 0x10)
  {
    v10 = 16;
  }

  else
  {
    v10 = v9;
  }

  __dst[0] = 0;
  __dst[1] = 0;
  memcpy(__dst, uTF8String, v10);
  v11 = *(view->var0 + 1);
  if (*(view->var0 + 2) - v11 <= 7uLL)
  {
    __assert_rtn("make_uint28", "sysex.h", 249, "data_pos + 3 < data.size()");
  }

  midi::ci::message::make_with_payload_size(&v13, v10 + 3, 115, self->super._MUID, v11[4] | (v11[5] << 7) | (v11[6] << 14) | (v11[7] << 21), 127);
  __src = 0;
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, v15, &__src, &v17, 1);
  __src = v10;
  v17 = 0;
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, v15, &__src, __dst, 2);
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, v15, __dst, __dst + v10, v10);
  v4 = [(MIDICIMutableDevice *)self receiveMessageViaSource:&v13 error:0];
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v4;
}

- (BOOL)handleInvalidateMUID:(unsigned __int8)d view:(const invalidate_muid_view *)view
{
  v4 = *(view->var0 + 1);
  if (*(view->var0 + 2) - v4 <= 0xFuLL)
  {
    __assert_rtn("make_uint28", "sysex.h", 249, "data_pos + 3 < data.size()");
  }

  v6 = v4[12] | (v4[13] << 7) | (v4[14] << 14) | (v4[15] << 21);
  MUID = self->super._MUID;
  if (v6 == MUID)
  {
    v8 = MUIDGenerator::instance(self);
    self->super._MUID = MUIDGenerator::operator()(v8);
  }

  return v6 == MUID;
}

- (BOOL)handleSysExIdentityRequest:(unsigned __int8)request
{
  v7 = deviceInfoToIdentity(self->super._deviceInfo);
  v8 = v4;
  midi::universal_sysex::identity_reply::identity_reply(&v12, &v7);
  v9 = v12;
  *__p = v13;
  v11 = v14;
  v5 = [(MIDICIMutableDevice *)self receiveMessageViaSource:&v9 error:0];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v5;
}

- (BOOL)handleDiscoveryInquiry:(unsigned __int8)inquiry view:(const discovery_inquiry_view *)view
{
  v17 = deviceInfoToIdentity(self->super._deviceInfo);
  v18 = v6;
  v7 = *(view->var0 + 1);
  if (*(view->var0 + 2) - v7 <= 7uLL)
  {
    __assert_rtn("make_uint28", "sysex.h", 249, "data_pos + 3 < data.size()");
  }

  if (self->super._supportsProfileConfiguration)
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  if (self->super._supportsPropertyExchange)
  {
    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 | v8;
  if (self->super._supportsProcessInquiry)
  {
    v11 = 16;
  }

  else
  {
    v11 = 0;
  }

  midi::ci::discovery::make_discovery_message(&v14, 113, self->super._MUID, v7[4] | (v7[5] << 7) | (v7[6] << 14) | (v7[7] << 21), &v17, v10 | v11, self->super._maxSysExSize, 0);
  __src = 127;
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, __dst, &__src, &v20, 1);
  v12 = [(MIDICIMutableDevice *)self receiveMessageViaSource:&v14 error:0];
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  return v12;
}

- (BOOL)handleSysex:(unsigned __int8)sysex sysEx:(const void *)ex
{
  if (*ex == 8257536)
  {
    v5 = *(ex + 1);
    if ((*(ex + 2) - v5) >= 0xC && *(v5 + 1) == 13)
    {
      sysexCopy = sysex;
      midi::universal_sysex::message_view::message_view(&v73, ex);
      if (*ex != 8257536 || (v8 = *(ex + 1), (*(ex + 2) - v8) < 0xC) || *(v8 + 1) != 13)
      {
        __assert_rtn("capability_inquiry_view", "capability_inquiry.h", 2486, "validate(sx)");
      }

      v9 = v73;
      v10 = +[MIDICIDeviceManager sharedInstance];
      serverMUID = [v10 serverMUID];

      v12 = *(v9 + 8);
      if (*(v9 + 16) - v12 <= 7uLL)
      {
        __assert_rtn("make_uint28", "sysex.h", 249, "data_pos + 3 < data.size()");
      }

      v13 = v12[4] | (v12[5] << 7) | (v12[6] << 14) | (v12[7] << 21);
      v14 = +[MIDICIDeviceManager sharedInstance];
      v15 = [v14 findDeviceWithMUID:v13];

      os_unfair_recursive_lock_lock_with_options();
      v77 = -9;
      v16 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:*(ex + 1) length:*(ex + 2) - *(ex + 1)];
      [v16 appendBytes:&v77 length:1];
      if (self->_messageCallback)
      {
        v73 = 0;
        v74 = &v73;
        v75 = 0x2020000000;
        v76 = 0;
        callbackQueue = self->_callbackQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __41__MIDICIMutableDevice_handleSysex_sysEx___block_invoke;
        block[3] = &unk_278A287A0;
        v69 = &v73;
        block[4] = self;
        v67 = v15;
        v70 = v9;
        v18 = 1;
        v71 = 1;
        v72 = sysexCopy;
        v68 = v16;
        dispatch_sync(callbackQueue, block);
        LOBYTE(callbackQueue) = *(v74 + 24);

        _Block_object_dispose(&v73, 8);
        if (callbackQueue)
        {
          goto LABEL_77;
        }
      }

      v19 = *(v9 + 8);
      if (*(v9 + 16) - v19 <= 0xBuLL)
      {
        __assert_rtn("make_uint28", "sysex.h", 249, "data_pos + 3 < data.size()");
      }

      v20 = v19[8] | (v19[9] << 7) | (v19[10] << 14) | (v19[11] << 21);
      if (v20 != 0xFFFFFFF && v20 != self->super._MUID && v20 != serverMUID)
      {
        goto LABEL_14;
      }

      v22 = *ex;
      if (*ex == 8257536)
      {
        v23 = *(ex + 1);
        v24 = *(ex + 2);
        v25 = v24 - v23;
        v26 = v23[3];
        v27 = 28;
        if (v26 > 1)
        {
          v27 = 29;
        }

        if (v25 >= v27 && v23[1] == 13 && v23[2] == 112)
        {
          midi::universal_sysex::message_view::message_view(&v64, ex);
          if (*ex != 8257536 || (v28 = *(ex + 1), (*(ex + 2) - v28) < 0xC) || *(v28 + 1) != 13)
          {
            __assert_rtn("capability_inquiry_view", "capability_inquiry.h", 2486, "validate(sx)");
          }

          v73 = v64;
          LOBYTE(v74) = 1;
          v29 = [(MIDICIMutableDevice *)self handleDiscoveryInquiry:sysexCopy view:&v73];
          goto LABEL_76;
        }

        v73 = 0;
        LOBYTE(v74) = 0;
        v30 = v26 > 1;
        v31 = 28;
        if (v30)
        {
          v31 = 30;
        }

        if (v25 >= v31 && v23[1] == 13 && v23[2] == 113)
        {
          midi::universal_sysex::message_view::message_view(&v62, ex);
          if (*ex != 8257536 || (v32 = *(ex + 1), (*(ex + 2) - v32) < 0xC) || *(v32 + 1) != 13)
          {
            __assert_rtn("capability_inquiry_view", "capability_inquiry.h", 2486, "validate(sx)");
          }

          v64 = v62;
          v65 = 1;
          v29 = [(MIDICIMutableDevice *)self handleDiscoveryReply:sysexCopy view:&v64];
          goto LABEL_76;
        }
      }

      else
      {
        v73 = 0;
        LOBYTE(v74) = 0;
        v64 = 0;
        v65 = 0;
        if (v22 != 8323072)
        {
          goto LABEL_52;
        }

        v23 = *(ex + 1);
        v24 = *(ex + 2);
      }

      v33 = v24 - v23;
      if (v33 > 1)
      {
        v34 = v23[1];
        if ((v34 | (v22 >> 8)) == 0x7E06)
        {
          if ((v22 | 0x10000) != 0x7F0000 || v33 == 2)
          {
            goto LABEL_52;
          }

          if (v23[2] == 1)
          {
            [(MIDICIMutableDevice *)self handleSysExIdentityRequest:sysexCopy];
LABEL_14:
            v18 = 0;
LABEL_77:

            os_unfair_recursive_lock_unlock();
            return v18;
          }
        }

        if (v33 >= 0xD && v34 == 13 && v22 == 8257536)
        {
          if (v23[2] == 114)
          {
            midi::universal_sysex::message_view::message_view(&v60, ex);
            if (*ex != 8257536 || (v35 = *(ex + 1), (*(ex + 2) - v35) < 0xC) || *(v35 + 1) != 13)
            {
              __assert_rtn("capability_inquiry_view", "capability_inquiry.h", 2486, "validate(sx)");
            }

            v62 = v60;
            v63 = 1;
            v29 = [(MIDICIMutableDevice *)self handleEndpointInformationInquiry:sysexCopy view:&v62];
            goto LABEL_76;
          }

LABEL_53:
          v36 = *(ex + 1);
          v37 = *(ex + 2) - v36;
          if (v37 >= 2 && (*(v36 + 1) | (v22 >> 8)) == 0x7E0D && (v22 | 0x10000) == 0x7F0000 && v37 >= 0x10 && *(v36 + 2) == 126)
          {
            midi::universal_sysex::message_view::message_view(&v58, ex);
            if (*ex != 8257536 || (v43 = *(ex + 1), (*(ex + 2) - v43) < 0xC) || *(v43 + 1) != 13)
            {
              __assert_rtn("capability_inquiry_view", "capability_inquiry.h", 2486, "validate(sx)");
            }

            v60 = v58;
            v61 = 1;
            [(MIDICIMutableDevice *)self handleInvalidateMUID:sysexCopy view:&v60];
            goto LABEL_14;
          }

LABEL_57:
          v60 = 0;
          v58 = midi::ci::as<midi::ci::nak_view>(ex);
          v59 = v38;
          if (v38)
          {
            v29 = [(MIDICIMutableDevice *)self handleNAK:sysexCopy view:&v58];
          }

          else
          {
            v56 = midi::ci::as<midi::ci::profile_inquiry_view>(ex);
            v57 = v39;
            if (v39)
            {
              v29 = [(MIDICIMutableDevice *)self handleProfileInquiry:sysexCopy view:&v56];
            }

            else
            {
              v54 = midi::ci::as<midi::ci::profile_id_view>(ex);
              v55 = v40;
              if (v40)
              {
                v29 = [(MIDICIMutableDevice *)self handleProfileIDView:sysexCopy view:&v54];
              }

              else
              {
                v52 = midi::ci::as<midi::ci::profile_details_inquiry_view>(ex);
                v53 = v41;
                if (v41)
                {
                  v29 = [(MIDICIMutableDevice *)self handleProfileDetailsInquiry:sysexCopy view:&v52];
                }

                else
                {
                  v50 = midi::ci::as<midi::ci::profile_id_view>(ex);
                  v51 = v42;
                  if (v42)
                  {
                    v29 = [(MIDICIMutableDevice *)self handleProfileIDView:sysexCopy view:&v50];
                  }

                  else
                  {
                    v48 = midi::ci::as<midi::ci::profile_specific_data_view>(ex);
                    v49 = v44;
                    if (v44)
                    {
                      v29 = [(MIDICIMutableDevice *)self handleProfileSpecificData:sysexCopy fromDevice:v15 view:&v48];
                    }

                    else
                    {
                      property_data = midi::ci::as<midi::ci::get_property_data_view>(ex);
                      v47 = v45;
                      if ((v45 & 1) == 0)
                      {
                        goto LABEL_14;
                      }

                      v29 = [(MIDICIMutableDevice *)self handleGetProperty:sysexCopy fromDevice:v15 view:&property_data];
                    }
                  }
                }
              }
            }
          }

LABEL_76:
          v18 = v29;
          goto LABEL_77;
        }
      }

LABEL_52:
      if ((v22 | 0x10000) != 0x7F0000)
      {
        goto LABEL_57;
      }

      goto LABEL_53;
    }
  }

  return 0;
}

void __41__MIDICIMutableDevice_handleSysex_sysEx___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 160);
  v4 = *(*(a1 + 64) + 8);
  if ((*(*(a1 + 64) + 16) - v4) < 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v4 + 2);
  }

  v6 = *(a1 + 80);
  v7 = [*(a1 + 48) copy];
  *(*(*(a1 + 56) + 8) + 24) = (*(v3 + 16))(v3, v2, v5, v6);
}

- (void)setupMIDIStreamObjects
{
  objc_destroyWeak((self + 8));

  JUMPOUT(0x2383C8250);
}

- (BOOL)receiveMessageViaSource:(const void *)source error:(id *)error
{
  group = [(MIDICIDevice *)self group];
  selfCopy = self;
  v9 = 3;
  if ((*source & 0xFF0000) != 0)
  {
    v9 = 1;
  }

  if (*source)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  std::vector<unsigned char>::vector[abi:ne200100](&__p, ((2 * (((v10 + *(source + 2) - *(source + 1)) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFF8) + 28);
  v11 = __p;
  evtlist[0] = __p;
  evtlist[1] = (v28 - __p);
  *__p = 1;
  evtlist[2] = (v11 + 8);
  *(v11 + 4) = 0;
  if (group >= 0x10)
  {
    __assert_rtn("set_group", "universal_packet.h", 414, "c < 16");
  }

  v12 = *source;
  v13 = 3;
  if ((*source & 0xFF0000) != 0)
  {
    v13 = 1;
  }

  if (!v12)
  {
    v13 = 0;
  }

  v14 = (v13 + *(source + 2) - *(source + 1)) >= 7;
  v15 = 806354944;
  if (!v14)
  {
    v15 = 805306368;
  }

  v29 = v15 | (group << 24);
  v30 = 0;
  midi::sysex7_packet::add_payload_byte(&v29, BYTE2(v12) & 0x7F);
  if (*source)
  {
    midi::sysex7_packet::add_payload_byte(&v29, BYTE1(*source) & 0x7F);
    midi::sysex7_packet::add_payload_byte(&v29, *source & 0x7F);
  }

  v18 = source + 8;
  v16 = *(source + 1);
  v17 = *(v18 + 1);
  if (v16 == v17)
  {
    LODWORD(v21) = v29;
  }

  else
  {
    v19 = group << 24;
    v20 = &v17[~v16];
    do
    {
      midi::sysex7_packet::add_payload_byte(&v29, *v16);
      LODWORD(v21) = v29;
      if ((v29 & 0xF0000) == 0x60000)
      {
        SysexMessageToEventList<[MIDICIMutableDevice receiveMessageViaSource:error:]::$_2>(unsigned char,midi::sysex7 const&,[MIDICIMutableDevice receiveMessageViaSource:error:]::$_2)::{lambda(midi::data_message const&)#1}::operator()(evtlist, &v29);
        if (v20 >= 7)
        {
          v22 = 807403520;
        }

        else
        {
          v22 = 808452096;
        }

        v21 = v22 | v19;
        v29 = v21;
        v30 = 0;
      }

      ++v16;
      --v20;
    }

    while (v16 != v17);
  }

  if ((v21 & 0xF0000) != 0)
  {
    SysexMessageToEventList<[MIDICIMutableDevice receiveMessageViaSource:error:]::$_2>(unsigned char,midi::sysex7 const&,[MIDICIMutableDevice receiveMessageViaSource:error:]::$_2)::{lambda(midi::data_message const&)#1}::operator()(evtlist, &v29);
  }

  v23 = MIDIReceivedEventList(selfCopy->super._MIDISource, evtlist[0]);
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  if (error && v23)
  {
    v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v23 userInfo:0];
    *error = v24;
  }

  return v23 == 0;
}

- (void)receiveMessageViaSource:(-[MIDICIMutableDevice)receiveMessageViaSource:error:]::$_2 error:
{
  v2 = result;
  v3 = *a2;
  v4 = *(&unk_23726C5F0 + ((v3 >> 25) & 0x78));
  v5 = result[2];
  v6 = *result + result[1];
  v7 = v3 & 0xF0000000;
  v8 = *(*result + 4);
  if (v5)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = *(v5 + 8);
    v11 = v10 >= 2;
    v12 = v10 - 2;
    if (v11 && *(v5 + 12) >> 28 == 3)
    {
      v13 = *(v5 + 12 + 4 * v12);
      if (v13 >> 28 == 3)
      {
        v14 = (v13 >> 20) & 0xF;
      }

      else
      {
        v14 = 255;
      }

      if (v14)
      {
        v15 = v14 == 3;
      }

      else
      {
        v15 = 1;
      }

      v16 = v15;
      v17 = 1;
LABEL_24:
      if ((v3 & 0xF0E00000) != 0x30000000 && (((v7 == 805306368) ^ v17) & 1) == 0 && !*v5 && (v16 & 1) == 0)
      {
LABEL_28:
        v18 = *(v5 + 8);
        if (v5 + 4 * (v4 + v18) + 12 > v6)
        {
          return result;
        }

        goto LABEL_33;
      }

      goto LABEL_30;
    }

LABEL_23:
    v17 = 0;
    v16 = 0;
    goto LABEL_24;
  }

  if (v8)
  {
    if (!v5)
    {
      if (v7 != 805306368)
      {
        goto LABEL_28;
      }

LABEL_30:
      v5 += 4 * *(v5 + 8) + 12;
      goto LABEL_31;
    }

    goto LABEL_23;
  }

LABEL_31:
  if (v5 + 4 * v4 + 12 > v6)
  {
    return result;
  }

  LODWORD(v18) = 0;
  *(*result + 4) = v8 + 1;
  *v5 = 0;
  *(v5 + 8) = 0;
LABEL_33:
  result = (v5 + 4 * v18 + 12);
  if (v4 > 1)
  {
    switch(v4)
    {
      case 2:
LABEL_39:
        v21 = *a2++;
        *result = v21;
        result = (result + 4);
LABEL_42:
        *result = *a2;
        goto LABEL_43;
      case 3:
LABEL_38:
        v20 = *a2++;
        *result = v20;
        result = (result + 4);
        goto LABEL_39;
      case 4:
        v19 = *a2++;
        *result = v19;
        result = (v5 + 4 * v18 + 16);
        goto LABEL_38;
    }

LABEL_45:
    result = memmove(result, a2, 4 * v4);
    goto LABEL_43;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      goto LABEL_42;
    }

    goto LABEL_45;
  }

LABEL_43:
  *(v5 + 8) += v4;
  v2[2] = v5;
  return result;
}

- (BOOL)setProfile:(id)profile newState:(BOOL)state enabledChannelCount:(unsigned __int16)count error:(id *)error
{
  stateCopy = state;
  v29 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  os_unfair_recursive_lock_lock_with_options();
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = self->super._profiles;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = *v25;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v10);
        }

        if (*(*(&v24 + 1) + 8 * i) == profileCopy)
        {

          profileID = [profileCopy profileID];
          __src = profileID;
          v22 = BYTE4(profileID);
          MUID = self->super._MUID;
          if (stateCopy)
          {
            midi::ci::message::make_with_payload_size(v18, 5, 36, MUID, 0xFFFFFFFu, 127);
          }

          else
          {
            midi::ci::message::make_with_payload_size(v18, 5, 37, MUID, 0xFFFFFFFu, 127);
          }

          std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, __dst, &__src, v23, 5);
          LOBYTE(error) = [(MIDICIMutableDevice *)self receiveMessageViaSource:v18 error:error];
          if (__p)
          {
            __dst = __p;
            operator delete(__p);
          }

          goto LABEL_16;
        }
      }

      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  if (error)
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-10842 userInfo:0];
    *error = v14;

    LOBYTE(error) = 0;
  }

LABEL_16:
  os_unfair_recursive_lock_unlock();

  return error;
}

- (BOOL)sendMessageToCIDevice:(id)device withSubType:(unsigned __int8)type deviceID:(unsigned __int8)d data:(id)data error:(id *)error
{
  deviceCopy = device;
  dataCopy = data;
  midi::ci::message::message(&v14, type, self->super._MUID, [deviceCopy MUID], d);
}

- (BOOL)setResourceList:(id)list error:(id *)error
{
  listCopy = list;
  os_unfair_recursive_lock_lock_with_options();
  v7 = [MEMORY[0x277CBEA60] arrayWithArray:listCopy];
  resourceList = self->super._resourceList;
  self->super._resourceList = v7;

  os_unfair_recursive_lock_unlock();
  serializeDescription = [(MIDICIDevice *)self serializeDescription];
  v10 = UMPCIObjectSetDescription([(MIDICIDevice *)self objectRef], serializeDescription);
  v11 = v10;
  if (error && v10)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-10844 userInfo:0];
    *error = v12;
  }

  return v11 == 0;
}

- (id)findProfile:(profile_id)profile
{
  v3 = *&profile.var0;
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_recursive_lock_lock_with_options();
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  profiles = [(MIDICIDevice *)self profiles];
  v6 = [profiles countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    v8 = v3 & 0xFFFFFFFFFFLL;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(profiles);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (([v10 profileID] & 0xFFFFFFFFFFLL) == v8)
        {
          v6 = v10;
          goto LABEL_11;
        }
      }

      v6 = [profiles countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (BOOL)removeProfile:(id)profile error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  os_unfair_recursive_lock_lock_with_options();
  v7 = [(NSArray *)self->super._profiles mutableCopy];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = *v24;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v8);
        }

        if (*(*(&v23 + 1) + 8 * i) == profileCopy)
        {

          [v8 removeObject:profileCopy];
          v13 = [v8 copy];
          profiles = self->super._profiles;
          self->super._profiles = v13;

          if (self->super._isEnabled)
          {
            profileID = [profileCopy profileID];
            __src = profileID;
            v21 = BYTE4(profileID);
            midi::ci::message::make_with_payload_size(v17, 5, 39, self->super._MUID, 0xFFFFFFFu, 127);
            std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, __dst, &__src, v22, 5);
            LOBYTE(error) = [(MIDICIMutableDevice *)self receiveMessageViaSource:v17 error:error];
            if (__p)
            {
              __dst = __p;
              operator delete(__p);
            }
          }

          else
          {
            LOBYTE(error) = 1;
          }

          goto LABEL_15;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  if (error)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-10842 userInfo:0];
    *error = v12;

    LOBYTE(error) = 0;
  }

LABEL_15:

  os_unfair_recursive_lock_unlock();
  return error;
}

- (BOOL)addProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  os_unfair_recursive_lock_lock_with_options();
  v7 = [(NSArray *)self->super._profiles mutableCopy];
  [v7 addObject:profileCopy];
  [profileCopy registerToDevice:self];
  v8 = [v7 copy];
  profiles = self->super._profiles;
  self->super._profiles = v8;

  if (self->super._isEnabled)
  {
    profileID = [profileCopy profileID];
    __src = profileID;
    v17 = BYTE4(profileID);
    midi::ci::message::make_with_payload_size(v13, 5, 38, self->super._MUID, 0xFFFFFFFu, 127);
    std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, __dst, &__src, v18, 5);
    v11 = [(MIDICIMutableDevice *)self receiveMessageViaSource:v13 error:error];
    if (__p)
    {
      __dst = __p;
      operator delete(__p);
    }
  }

  else
  {
    v11 = 1;
  }

  os_unfair_recursive_lock_unlock();
  return v11;
}

- (BOOL)setEnabled:(BOOL)enabled error:(id *)error
{
  enabledCopy = enabled;
  os_unfair_recursive_lock_lock_with_options();
  objectRef = self->super._objectRef;
  if (objectRef)
  {
LABEL_4:
    v8 = UMPCIObjectSetEnableState(objectRef, enabledCopy);
    if (v8)
    {
      if (error)
      {
        v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v8 userInfo:0];
LABEL_10:
        v10 = v9;
        *error = v10;

        LOBYTE(error) = 0;
        goto LABEL_11;
      }
    }

    else
    {
      self->super._isEnabled = enabledCopy;
      LOBYTE(error) = 1;
    }

    goto LABEL_11;
  }

  if ([(MIDICIMutableDevice *)self registerWithServer])
  {
    objectRef = self->super._objectRef;
    goto LABEL_4;
  }

  if (error)
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-10844 userInfo:0];
    goto LABEL_10;
  }

LABEL_11:
  os_unfair_recursive_lock_unlock();
  return error;
}

- (BOOL)registerWithServer
{
  v42 = *MEMORY[0x277D85DE8];
  v39.receiver = self;
  v39.super_class = MIDICIMutableDevice;
  serializeDescription = [(MIDICIDevice *)&v39 serializeDescription];
  v38 = 0;
  if (UMPCIObjectCreate(4, serializeDescription, &v38))
  {
    v2 = 0;
  }

  else
  {
    self->super._objectRef = v38;
    outDict = 0;
    MIDIObjectGetDictionaryProperty([(MIDICIDevice *)self objectRef], @"object description", &outDict);
    v21 = outDict;
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"profiles"];
    v22 = [(__CFDictionary *)v21 objectForKey:v3];

    if (v22)
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      obj = v22;
      v4 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v4)
      {
        v25 = *v34;
        while (2)
        {
          for (i = 0; i != v4; ++i)
          {
            if (*v34 != v25)
            {
              objc_enumerationMutation(obj);
            }

            v6 = *(*(&v33 + 1) + 8 * i);
            v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"object"];
            v8 = [v6 objectForKey:v7];

            v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"id"];
            v10 = [v6 objectForKey:v9];

            if (v8)
            {
              v11 = v10 == 0;
            }

            else
            {
              v11 = 1;
            }

            if (v11)
            {

              v2 = 0;
              goto LABEL_30;
            }

            v12 = NSNumberArrayToProfileID(v10);
            v31 = v12;
            v32 = WORD2(v12);
            v27 = 0u;
            v28 = 0u;
            v29 = 0u;
            v30 = 0u;
            v13 = self->super._profiles;
            v14 = [(NSArray *)v13 countByEnumeratingWithState:&v27 objects:v40 count:16];
            if (v14)
            {
              v15 = *v28;
              while (2)
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v28 != v15)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v17 = *(*(&v27 + 1) + 8 * j);
                  profileID = [v17 profileID];
                  if (profileID == v31 && BYTE4(profileID) == v32)
                  {
                    [v17 setObjectRef:{objc_msgSend(v8, "unsignedIntValue")}];

                    goto LABEL_26;
                  }
                }

                v14 = [(NSArray *)v13 countByEnumeratingWithState:&v27 objects:v40 count:16];
                if (v14)
                {
                  continue;
                }

                break;
              }
            }

LABEL_26:
          }

          v4 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v4)
          {
            continue;
          }

          break;
        }
      }

      v2 = 1;
LABEL_30:
    }

    else
    {
      v2 = 1;
    }
  }

  return v2;
}

- (void)dealloc
{
  endpoint = self->super._endpoint;
  v7 = 0;
  [(MIDIUMPMutableEndpoint *)endpoint setReceiveTapBlock:&v7];
  v4 = v7;
  v7 = 0;

  v5 = +[MIDICIDeviceManager sharedInstance];
  [v5 removeMutableDevice:self];

  UMPCIObjectDispose(self->super._objectRef);
  v6.receiver = self;
  v6.super_class = MIDICIMutableDevice;
  [(MIDICIMutableDevice *)&v6 dealloc];
}

- (MIDICIMutableDevice)initWithUMPEndpointPair:(id)pair functionBlock:(id)block capabilities:(unsigned __int8)capabilities sysExSizeLimit:(unint64_t)limit maxPERequests:(unint64_t)requests queue:(id)queue profileSpecificDataCallback:(id)callback messageCallback:(id)self0
{
  capabilitiesCopy = capabilities;
  pairCopy = pair;
  blockCopy = block;
  queueCopy = queue;
  aBlock = callback;
  messageCallbackCopy = messageCallback;
  if (CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed < 0)
  {
    CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed = 0;
    MainBundle = CFBundleGetMainBundle();
    if (MainBundle && (ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(MainBundle, @"UIBackgroundModes"), (v20 = ValueForInfoDictionaryKey) != 0) && (v21 = CFGetTypeID(ValueForInfoDictionaryKey), v21 == CFArrayGetTypeID()) && (v51.length = CFArrayGetCount(v20), v51.location = 0, CFArrayContainsValue(v20, v51, @"audio")))
    {
      CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed = 1;
    }

    else if (!CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed)
    {
LABEL_11:
      selfCopy = 0;
      goto LABEL_12;
    }
  }

  else if (!CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed)
  {
    goto LABEL_11;
  }

  objc_storeStrong(&self->_callbackQueue, queue);
  v22 = MUIDGenerator::instance([(MIDICIMutableDevice *)self setupMIDIStreamObjects]);
  v23 = MUIDGenerator::operator()(v22);
  self->super._MUID = v23;
  UMPCIClients::instance(v23);
  self->super._ownerClientRef = UMPCIClients::instance(void)::all;
  v24 = *&vshl_u16(vdup_n_s16(capabilitiesCopy), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01;
  *&self->super._supportsProtocolNegotiation = vuzp1_s8(v24, v24).u32[0];
  self->super._maxSysExSize = limit;
  self->super._maxPropertyExchangeRequests = requests;
  v25 = _Block_copy(aBlock);
  profileSpecificDataCallback = self->_profileSpecificDataCallback;
  self->_profileSpecificDataCallback = v25;

  v27 = _Block_copy(messageCallbackCopy);
  messageCallback = self->_messageCallback;
  self->_messageCallback = v27;

  self->super._MIDISource = [pairCopy MIDISource];
  self->super._MIDIDestination = [pairCopy MIDIDestination];
  deviceInfo = [pairCopy deviceInfo];
  deviceInfo = self->super._deviceInfo;
  self->super._deviceInfo = deviceInfo;

  objc_storeStrong(&self->super._endpoint, pair);
  v31 = objc_opt_new();
  profiles = self->super._profiles;
  self->super._profiles = v31;

  -[MIDICIDevice setGroup:](self, "setGroup:", [blockCopy firstGroup]);
  receiveBlock = [pairCopy receiveBlock];
  ptr = self->_messenger.__ptr_;
  v35 = self->_sysexCollector.__ptr_;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __153__MIDICIMutableDevice_initWithUMPEndpointPair_functionBlock_capabilities_sysExSizeLimit_maxPERequests_queue_profileSpecificDataCallback_messageCallback___block_invoke;
  v47[3] = &unk_278A28778;
  v49 = ptr;
  v50 = v35;
  v36 = receiveBlock;
  v48 = v36;
  v37 = _Block_copy(v47);
  v46 = _Block_copy(v37);
  [pairCopy setReceiveTapBlock:&v46];
  v38 = v46;
  v46 = 0;

  v39 = +[MIDICIDeviceManager sharedInstance];
  [v39 addMutableDevice:self];

  selfCopy = self;
LABEL_12:

  return selfCopy;
}

uint64_t __153__MIDICIMutableDevice_initWithUMPEndpointPair_functionBlock_capabilities_sysExSizeLimit_maxPERequests_queue_profileSpecificDataCallback_messageCallback___block_invoke(uint64_t a1, uint64_t a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v49 = *(a1 + 40);
  v52 = v50;
  v53 = 276;
  v2 = *(a2 + 4);
  v50[0] = *a2;
  v50[1] = 0;
  v3 = v51;
  v54 = v51;
  v51[2] = 0;
  if (v2)
  {
    v4 = *(a2 + 8);
    v5 = (a2 + 20);
    v6 = *(a2 + 16);
    v7 = a2 + 4 * v6;
    v8 = v7 + 20;
    if (!v6)
    {
      if (--v2)
      {
        v4 = *(v7 + 20);
        v5 = (v7 + 32);
        v8 = v7 + 32 + 4 * *(v7 + 28);
      }

      else
      {
        v2 = 1;
      }
    }
  }

  else
  {
    v8 = 0;
    v5 = 0;
    v4 = 0;
  }

  while (1)
  {
    if (v5 == v8)
    {
      if (v2 < 2)
      {
        break;
      }

      --v2;
      v4 = *v8;
      v5 = (v8 + 12);
      v8 += 12 + 4 * *(v8 + 8);
    }

    if (v5 == v8)
    {
      break;
    }

    v9 = *v5;
    v10 = MIDI::UniversalPacket::word_sizes[v9 >> 28];
    if (MIDI::UniversalPacket::word_sizes[v9 >> 28])
    {
      v11 = &v52[v53 / 4];
      v12 = v9 & 0xF0000000;
      v13 = v52[1];
      if (v3 && v13)
      {
        v14 = v3[2];
        v15 = v14 >= 2;
        v16 = v14 - 2;
        if (v15 && v3[3] >> 28 == 3)
        {
          v17 = v3[v16 + 3];
          if (v17 >> 28 == 3)
          {
            v18 = (v17 >> 20) & 0xF;
          }

          else
          {
            v18 = 255;
          }

          if (v18)
          {
            v19 = v18 == 3;
          }

          else
          {
            v19 = 1;
          }

          v20 = v19;
          v21 = 1;
          goto LABEL_32;
        }

LABEL_31:
        v21 = 0;
        v20 = 0;
LABEL_32:
        if ((v9 & 0xF0E00000) != 0x30000000 && (((v12 == 805306368) ^ v21) & 1) == 0 && *v3 == v4 && (v20 & 1) == 0)
        {
LABEL_36:
          v22 = v3[2];
          if (&v3[v22 + 3 + v10] <= v11)
          {
            goto LABEL_58;
          }

          goto LABEL_41;
        }

        goto LABEL_39;
      }

      if (v13)
      {
        if (v3)
        {
          goto LABEL_31;
        }

        if (v12 != 805306368)
        {
          goto LABEL_36;
        }

LABEL_39:
        v3 += v3[2] + 3;
      }

      if (&v3[v10 + 3] <= v11)
      {
        v22 = 0;
        v52[1] = v13 + 1;
        *v3 = v4;
        v3[2] = 0;
LABEL_58:
        v34 = &v3[v22 + 3];
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v36 = v5;
          }

          else
          {
            if (v10 != 4)
            {
              goto LABEL_76;
            }

            v36 = v5 + 1;
            *v34 = *v5;
            v34 = &v3[v22 + 4];
          }

          v40 = *v36;
          v35 = v36 + 1;
          *v34++ = v40;
LABEL_80:
          v41 = *v35;
          v39 = v35 + 1;
          *v34++ = v41;
        }

        else
        {
          if (v10 != 1)
          {
            if (v10 != 2)
            {
              goto LABEL_76;
            }

            v35 = v5;
            goto LABEL_80;
          }

          v39 = v5;
        }

        *v34 = *v39;
        goto LABEL_99;
      }

      goto LABEL_41;
    }

    if (v3)
    {
      LODWORD(v10) = 0;
      goto LABEL_101;
    }

LABEL_41:
    _ZN4MIDI23ChunkedEventListEmitterIZZ153__MIDICIMutableDevice_initWithUMPEndpointPair_functionBlock_capabilities_sysExSizeLimit_maxPERequests_queue_profileSpecificDataCallback_messageCallback__EUb_E3__1E5flushEv(&v49);
    v23 = *v5;
    v10 = MIDI::UniversalPacket::word_sizes[v23 >> 28];
    v3 = v54;
    if (!MIDI::UniversalPacket::word_sizes[v23 >> 28])
    {
      if (!v54)
      {
        goto LABEL_101;
      }

      goto LABEL_100;
    }

    v24 = &v52[v53 / 4];
    v25 = v23 & 0xF0000000;
    v26 = v52[1];
    if (v54 && v26)
    {
      v27 = v54[2];
      v15 = v27 >= 2;
      v28 = v27 - 2;
      if (v15 && v54[3] >> 28 == 3)
      {
        v29 = v54[v28 + 3];
        if (v29 >> 28 == 3)
        {
          v30 = (v29 >> 20) & 0xF;
        }

        else
        {
          v30 = 255;
        }

        if (v30)
        {
          v31 = v30 == 3;
        }

        else
        {
          v31 = 1;
        }

        v32 = v31;
        v33 = 1;
      }

      else
      {
LABEL_69:
        v33 = 0;
        v32 = 0;
      }

      if ((v23 & 0xF0E00000) != 0x30000000 && (((v25 == 805306368) ^ v33) & 1) == 0 && *v54 == v4 && (v32 & 1) == 0)
      {
LABEL_74:
        v38 = v54[2];
        if (&v54[v38 + 3 + v10] > v24)
        {
          goto LABEL_101;
        }

LABEL_86:
        v34 = &v3[v38 + 3];
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v43 = v5;
          }

          else
          {
            if (v10 != 4)
            {
              goto LABEL_76;
            }

            v43 = v5 + 1;
            *v34 = *v5;
            v34 = &v3[v38 + 4];
          }

          v45 = *v43;
          v42 = v43 + 1;
          *v34++ = v45;
LABEL_97:
          v46 = *v42;
          v44 = v42 + 1;
          *v34++ = v46;
        }

        else
        {
          if (v10 != 1)
          {
            if (v10 == 2)
            {
              v42 = v5;
              goto LABEL_97;
            }

LABEL_76:
            memmove(v34, v5, 4 * v10);
LABEL_99:
            v3[2] += v10;
            LODWORD(v10) = MIDI::UniversalPacket::word_sizes[*v5 >> 28];
LABEL_100:
            v54 = v3;
            goto LABEL_101;
          }

          v44 = v5;
        }

        *v34 = *v44;
        goto LABEL_99;
      }

      goto LABEL_83;
    }

    v37 = v54;
    if (!v26)
    {
      goto LABEL_84;
    }

    if (v54)
    {
      goto LABEL_69;
    }

    if (v25 != 805306368)
    {
      goto LABEL_74;
    }

LABEL_83:
    v37 = &v54[v54[2] + 3];
LABEL_84:
    if (v37 + 4 * v10 + 12 <= v24)
    {
      v38 = 0;
      v52[1] = v26 + 1;
      *v37 = v4;
      *(v37 + 8) = 0;
      v3 = v37;
      goto LABEL_86;
    }

LABEL_101:
    v5 += v10;
    if (v5 == v8 && v2 >= 2)
    {
      --v2;
      v5 = (v8 + 12);
      v4 = *v8;
      v8 += 12 + 4 * *(v8 + 8);
    }
  }

  _ZN4MIDI23ChunkedEventListEmitterIZZ153__MIDICIMutableDevice_initWithUMPEndpointPair_functionBlock_capabilities_sysExSizeLimit_maxPERequests_queue_profileSpecificDataCallback_messageCallback__EUb_E3__1E5flushEv(&v49);
  return (*(*(a1 + 32) + 16))();
}

@end