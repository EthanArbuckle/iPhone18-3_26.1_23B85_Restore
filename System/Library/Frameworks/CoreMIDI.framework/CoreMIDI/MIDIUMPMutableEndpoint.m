@interface MIDIUMPMutableEndpoint
- (BOOL)deserialize:(id)a3;
- (BOOL)isEnabled;
- (BOOL)isEqual:(id)a3;
- (BOOL)registerFunctionBlocks:(id)a3 markAsStatic:(BOOL)a4 error:(id *)a5;
- (BOOL)registerWithServer;
- (BOOL)setEnabled:(BOOL)a3 error:(id *)a4;
- (BOOL)setName:(id)a3 error:(id *)a4;
- (BOOL)setStreamProtocol:(int)a3 error:(id *)a4;
- (MIDIUMPMutableEndpoint)initWithName:(id)a3 deviceInfo:(id)a4 productInstanceID:(id)a5 MIDIProtocol:(int)a6 destinationCallback:(id)a7;
- (NSArray)mutableFunctionBlocks;
- (id).cxx_construct;
- (id)serializeDescription;
- (void)dealloc;
- (void)setReceiveTapBlock:(block<void (const MIDIEventList *);
@end

@implementation MIDIUMPMutableEndpoint

- (id).cxx_construct
{
  v3 = self + 88;
  *(self + 11) = 0;
  caulk::concurrent::details::lf_read_sync_write_impl::lf_read_sync_write_impl((self + 96));
  *(v3 + 8) = 1;
  *(v3 + 3) = 0;
  *(self + 16) = 850045863;
  *(self + 136) = 0u;
  *(self + 152) = 0u;
  *(self + 168) = 0u;
  *(self + 23) = 0;
  return self;
}

- (BOOL)isEnabled
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = *(self + 192);
  os_unfair_recursive_lock_unlock();
  return v3;
}

- (NSArray)mutableFunctionBlocks
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = *(self + 25);
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setReceiveTapBlock:(block<void (const MIDIEventList *)
{
  v4 = _Block_copy(*a3.var0);
  caulk::concurrent::lf_read_synchronized_write<applesauce::dispatch::v1::block<void ()(MIDIEventList const*,void *)>>::operator=(self + 24, &v4);
}

- (BOOL)registerFunctionBlocks:(id)a3 markAsStatic:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = v8;
  if (v6)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v11)
    {
      v12 = *v29;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v28 + 1) + 8 * i);
          if (([v14 isEnabled] & 1) == 0)
          {
            if (a5)
            {
              v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-10844 userInfo:0];
              *a5 = v22;
            }

            goto LABEL_25;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = v9;
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v16)
  {
    v17 = *v25;
    v18 = 1;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v24 + 1) + 8 * j);
        [v20 setFunctionBlockID:{v18, v24}];
        [v20 setEndpoint:self];

        ++v18;
      }

      v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v16);
  }

  os_unfair_recursive_lock_lock_with_options();
  [(MIDIUMPEndpoint *)self setFunctionBlocks:v15];
  [(MIDIUMPMutableEndpoint *)self setMutableFunctionBlocks:v15];
  *(self + 48) = v6;
  os_unfair_recursive_lock_unlock();
  if ([(MIDIUMPMutableEndpoint *)self isEnabled])
  {
    v10 = [(MIDIUMPMutableEndpoint *)self serializeDescription];
    if (UMPCIObjectSetDescription([(MIDIUMPEndpoint *)self objectRef], v10))
    {
      if (a5)
      {
        v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-10844 userInfo:0];
        v21 = v14;
        *a5 = v14;
LABEL_25:

        LOBYTE(a5) = 0;
      }
    }

    else
    {
      LOBYTE(a5) = 1;
    }
  }

  else
  {
    LOBYTE(a5) = 1;
  }

  return a5;
}

- (BOOL)setEnabled:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  os_unfair_recursive_lock_lock_with_options();
  if ([(MIDIUMPEndpoint *)self objectRef]|| [(MIDIUMPMutableEndpoint *)self registerWithServer])
  {
    v7 = UMPCIObjectSetEnableState([(MIDIUMPEndpoint *)self objectRef], v5);
    if (v7)
    {
      if (a4)
      {
        v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v7 userInfo:0];
LABEL_9:
        v9 = v8;
        *a4 = v9;

        LOBYTE(a4) = 0;
      }
    }

    else
    {
      *(self + 192) = v5;
      LOBYTE(a4) = 1;
    }
  }

  else if (a4)
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-10844 userInfo:0];
    goto LABEL_9;
  }

  os_unfair_recursive_lock_unlock();
  return a4;
}

- (BOOL)setStreamProtocol:(int)a3 error:(id *)a4
{
  v5 = *&a3;
  v7 = [(MIDIUMPMutableEndpoint *)self serializeDescription];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"protocol"];
  [v7 setValue:v8 forKey:v9];

  v10 = UMPCIObjectSetDescription([(MIDIUMPEndpoint *)self objectRef], v7);
  if (v10)
  {
    if (a4)
    {
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-10844 userInfo:0];
      *a4 = v11;
    }
  }

  else
  {
    os_unfair_recursive_lock_lock_with_options();
    *(self + 4) = v5;
    os_unfair_recursive_lock_unlock();
  }

  return v10 == 0;
}

- (BOOL)registerWithServer
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = [(MIDIUMPMutableEndpoint *)self serializeDescription];
  v3 = v2;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"client_owned"];
  [v2 setValue:v4 forKey:v5];

  v39 = 0;
  if (UMPCIObjectCreate(2, v2, &v39))
  {
    v6 = 0;
  }

  else
  {
    os_unfair_recursive_lock_lock_with_options();
    [(MIDIUMPEndpoint *)self setObjectRef:v39];
    outDict = 0;
    if (MIDIObjectGetDictionaryProperty([(MIDIUMPEndpoint *)self objectRef], @"object description", &outDict))
    {
      v6 = 0;
    }

    else
    {
      v23 = outDict;
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"function_blocks"];
      v24 = [(__CFDictionary *)v23 objectForKey:v7];

      if (v24)
      {
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        obj = v24;
        v8 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
        if (v8)
        {
          v27 = *v35;
          while (2)
          {
            v26 = v8;
            for (i = 0; i != v26; ++i)
            {
              if (*v35 != v27)
              {
                objc_enumerationMutation(obj);
              }

              v29 = *(*(&v34 + 1) + 8 * i);
              v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"object"];
              v11 = [v29 objectForKey:v10];

              v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"id"];
              v13 = [v29 objectForKey:v12];

              if (v11)
              {
                v14 = v13 == 0;
              }

              else
              {
                v14 = 1;
              }

              if (v14)
              {

                v6 = 0;
                goto LABEL_29;
              }

              v15 = [(MIDIUMPEndpoint *)self functionBlocks];
              v32 = 0u;
              v33 = 0u;
              v30 = 0u;
              v31 = 0u;
              v16 = v15;
              v17 = [v16 countByEnumeratingWithState:&v30 objects:v40 count:16];
              if (v17)
              {
                v18 = *v31;
                while (2)
                {
                  for (j = 0; j != v17; ++j)
                  {
                    if (*v31 != v18)
                    {
                      objc_enumerationMutation(v16);
                    }

                    v20 = *(*(&v30 + 1) + 8 * j);
                    v21 = [v20 functionBlockID];
                    if ([v13 unsignedIntegerValue] == v21)
                    {
                      v2 = v3;
                      [v20 setObjectRef:{objc_msgSend(v11, "unsignedIntValue")}];

                      goto LABEL_25;
                    }
                  }

                  v2 = v3;
                  v17 = [v16 countByEnumeratingWithState:&v30 objects:v40 count:16];
                  if (v17)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_25:
            }

            v8 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
            if (v8)
            {
              continue;
            }

            break;
          }
        }

        v6 = 1;
LABEL_29:
      }

      else
      {
        v6 = 1;
      }
    }

    os_unfair_recursive_lock_unlock();
  }

  return v6;
}

- (BOOL)setName:(id)a3 error:(id *)a4
{
  v6 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v7 = [v6 copy];
  v8 = *(self + 1);
  *(self + 1) = v7;

  os_unfair_recursive_lock_unlock();
  v9 = [(MIDIUMPMutableEndpoint *)self serializeDescription];
  v10 = UMPCIObjectSetDescription([(MIDIUMPEndpoint *)self objectRef], v9);
  v11 = v10;
  if (a4 && v10)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-10844 userInfo:0];
    *a4 = v12;
  }

  return v11 == 0;
}

- (BOOL)deserialize:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"name"];
  obj = [v4 objectForKey:v5];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"device_info"];
  v7 = [v4 objectForKey:v6];
  v37 = [MIDI2DeviceInfo infoWithDescription:v7];

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"product_instance"];
  v31 = [v4 objectForKey:v8];

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"protocol"];
  v30 = [v4 objectForKey:v9];

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"has_static_function_blocks"];
  v29 = [v4 objectForKey:v10];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"jrts_receive_capability"];
  v32 = [v4 objectForKey:v11];

  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"jrts_transmit_capability"];
  v34 = [v4 objectForKey:v12];

  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"source"];
  v35 = [v4 objectForKey:v13];

  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"destination"];
  v36 = [v4 objectForKey:v14];

  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"function_blocks"];
  v27 = [v4 objectForKey:v15];

  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"supported_protocols"];
  v28 = [v4 objectForKey:v16];

  objc_storeStrong(self + 1, obj);
  objc_storeStrong(self + 4, v37);
  objc_storeStrong(self + 5, v31);
  *(self + 4) = [v30 intValue];
  v17 = [MIDI2DeviceInfo infoWithInfo:v37];
  v18 = *(self + 4);
  *(self + 4) = v17;

  *(self + 48) = [v29 BOOLValue];
  *(self + 49) = [v32 BOOLValue];
  *(self + 50) = [v34 BOOLValue];
  *(self + 6) = [v35 unsignedIntegerValue];
  *(self + 7) = [v36 unsignedIntegerValue];
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v20 = v27;
  v21 = [v20 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v21)
  {
    v22 = *v39;
    do
    {
      v23 = 0;
      do
      {
        if (*v39 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v38 + 1) + 8 * v23);
        v25 = [[MIDIUMPFunctionBlock alloc] initWithDescription:v24];
        [v19 addObject:v25];

        ++v23;
      }

      while (v21 != v23);
      v21 = [v20 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v21);
  }

  objc_storeStrong(self + 7, v19);
  *(self + 20) = [v28 unsignedIntegerValue];

  os_unfair_recursive_lock_unlock();
  return 1;
}

- (id)serializeDescription
{
  v8.receiver = self;
  v8.super_class = MIDIUMPMutableEndpoint;
  v3 = [(MIDIUMPEndpoint *)&v8 serializeDescription];
  if (v3)
  {
    os_unfair_recursive_lock_lock_with_options();
    v4 = [MEMORY[0x277CCABB0] numberWithBool:*(self + 192)];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"enabled"];
    [v3 setValue:v4 forKey:v5];

    v6 = v3;
    os_unfair_recursive_lock_unlock();
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MIDIUMPMutableEndpoint;
  v5 = [(MIDIUMPEndpoint *)&v9 isEqual:v4];
  os_unfair_recursive_lock_lock_with_options();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass & v5)
  {
    v7 = *(self + 192) == v4[192];
  }

  else
  {
    v7 = (isKindOfClass ^ 1) & v5;
  }

  os_unfair_recursive_lock_unlock();

  return v7 & 1;
}

- (void)dealloc
{
  v5 = 0;
  caulk::concurrent::lf_read_synchronized_write<applesauce::dispatch::v1::block<void ()(MIDIEventList const*,void *)>>::operator=(self + 24, &v5);
  v3 = v5;
  v5 = 0;

  MIDIEndpointDispose(*(self + 6));
  MIDIEndpointDispose(*(self + 7));
  UMPCIObjectDispose([(MIDIUMPEndpoint *)self objectRef]);
  v4.receiver = self;
  v4.super_class = MIDIUMPMutableEndpoint;
  [(MIDIUMPMutableEndpoint *)&v4 dealloc];
}

- (MIDIUMPMutableEndpoint)initWithName:(id)a3 deviceInfo:(id)a4 productInstanceID:(id)a5 MIDIProtocol:(int)a6 destinationCallback:(id)a7
{
  v8 = *&a6;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  MainBundle = a7;
  v17 = MainBundle;
  if (CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed < 0)
  {
    CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed = 0;
    MainBundle = CFBundleGetMainBundle();
    if (MainBundle && (MainBundle = CFBundleGetValueForInfoDictionaryKey(MainBundle, @"UIBackgroundModes"), (v18 = MainBundle) != 0) && (v19 = CFGetTypeID(MainBundle), MainBundle = CFArrayGetTypeID(), v19 == MainBundle) && (v37.length = CFArrayGetCount(v18), v37.location = 0, MainBundle = CFArrayContainsValue(v18, v37, @"audio"), MainBundle))
    {
      CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed = 1;
    }

    else if (!CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed)
    {
LABEL_11:
      v20 = 0;
      goto LABEL_22;
    }
  }

  else if (!CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed)
  {
    goto LABEL_11;
  }

  outSrc = 0;
  UMPCIClients::instance(MainBundle);
  if (MIDISourceCreateWithProtocol(UMPCIClients::instance(void)::all, v13, v8, &outSrc))
  {
    goto LABEL_11;
  }

  v21 = _Block_copy(v17);
  v22 = *(self + 11);
  *(self + 11) = v21;

  *(self + 6) = outSrc;
  outSrc = 0;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v35[3] = self + 88;
  UMPCIClients::instance(v23);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __101__MIDIUMPMutableEndpoint_initWithName_deviceInfo_productInstanceID_MIDIProtocol_destinationCallback___block_invoke;
  v34[3] = &unk_278A28B38;
  v34[4] = v35;
  if (MIDIDestinationCreateInternal(UMPCIClients::instance(void)::all, v13, v8, &outSrc, 0, v34))
  {
    v20 = 0;
  }

  else
  {
    *(self + 7) = outSrc;
    *outValue = 0;
    if (!MIDIObjectGetIntegerProperty(*(self + 6), kMIDIPropertyUniqueID, &outValue[1]) && !MIDIObjectGetIntegerProperty(*(self + 7), kMIDIPropertyUniqueID, outValue))
    {
      v24 = kMIDIPropertyAssociatedEndpoint;
      MIDIObjectSetIntegerProperty(*(self + 6), kMIDIPropertyAssociatedEndpoint, outValue[0]);
      MIDIObjectSetIntegerProperty(*(self + 7), v24, outValue[1]);
    }

    MIDIObjectSetIntegerProperty(*(self + 6), kMIDIPropertyUMPCanTransmitGroupless, 1);
    MIDIObjectSetIntegerProperty(*(self + 7), kMIDIPropertyUMPCanTransmitGroupless, 1);
    MIDIObjectSetIntegerProperty(*(self + 6), kMIDIPropertyUMPActiveGroupBitmap, 15);
    MIDIObjectSetIntegerProperty(*(self + 7), kMIDIPropertyUMPActiveGroupBitmap, 15);
    objc_storeStrong(self + 1, a3);
    v25 = [MIDI2DeviceInfo infoWithInfo:v14];
    v26 = *(self + 4);
    *(self + 4) = v25;

    v27 = [MEMORY[0x277CCACA8] stringWithString:v15];
    v28 = *(self + 5);
    *(self + 5) = v27;

    *(self + 4) = v8;
    if (v8 == 2)
    {
      v29 = 2;
    }

    else
    {
      v29 = 1;
    }

    *(self + 20) = v29;
    v30 = *(self + 7);
    *(self + 7) = MEMORY[0x277CBEBF8];

    v31 = [(MIDIUMPEndpoint *)self setReceiveBlock:v17];
    *(self + 51) = 1;
    UMPCIClients::instance(v31);
    *(self + 16) = UMPCIClients::instance(void)::all;
    v20 = self;
  }

  _Block_object_dispose(v35, 8);
LABEL_22:

  return v20;
}

uint64_t __101__MIDIUMPMutableEndpoint_initWithName_deviceInfo_productInstanceID_MIDIProtocol_destinationCallback___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(*(a1 + 32) + 8) + 24);
  result = caulk::concurrent::details::lf_read_sync_write_impl::begin_access((v6 + 8));
  if (*(v6 + result + 16))
  {
    v8 = _Block_copy(*(v6 + 8 * result + 24));
    v9 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8, a2, a3);
    }

    caulk::concurrent::details::lf_read_sync_write_impl::end_access((v6 + 8));
    result = **(*(*(a1 + 32) + 8) + 24);
    if (result)
    {
      v10 = *(result + 16);

      return v10();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end