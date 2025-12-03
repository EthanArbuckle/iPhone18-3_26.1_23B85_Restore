@interface MIDICIDeviceManager
+ (MIDICIDeviceManager)sharedInstance;
- (BOOL)postNotificationName:(id)name device:(id)device profile:(id)profile;
- (BOOL)removeDevice:(unsigned int)device;
- (BOOL)removeMutableDevice:(id)device;
- (BOOL)removeProfile:(unsigned int)profile;
- (MIDICIDeviceManager)init;
- (NSArray)discoveredCIDevices;
- (id)findDevice:(unsigned int)device;
- (id)findDeviceWithMUID:(unsigned int)d;
- (id)findProfile:(unsigned int)profile;
- (optional<std::pair<MIDICIDevice)findProfileAndDevice:(MIDICIDeviceManager *)self;
- (void)addDevice:(id)device;
- (void)addMutableDevice:(id)device;
- (void)addProfile:(id)profile;
- (void)handleProcessInquiryReplyMessage:(const InternalUMPCI_ProcessInquiryReport *)message;
- (void)handleProfileDetailsReplyMessage:(const void *)message;
- (void)updateDevice:(unsigned int)device description:(id)description;
- (void)updateProfile:(unsigned int)profile description:(id)description;
@end

@implementation MIDICIDeviceManager

- (void)handleProcessInquiryReplyMessage:(const InternalUMPCI_ProcessInquiryReport *)message
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->mMutex.m_lock);
  v5 = [(NSPointerArray *)self->_mutableDevices copy];
  v6 = [(NSMutableArray *)self->_devices copy];
  os_unfair_lock_unlock(&self->mMutex.m_lock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v14 + 1) + 8 * v10++) handleProcessInquiryReplyMessage:{message, v14}];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  for (i = 0; i < [v5 count]; ++i)
  {
    v12 = [v5 pointerAtIndex:i];
    v13 = v12;
    if (v12)
    {
      [v12 handleProcessInquiryReplyMessage:message];
    }
  }
}

- (void)handleProfileDetailsReplyMessage:(const void *)message
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->mMutex.m_lock);
  v5 = [(NSPointerArray *)self->_mutableDevices copy];
  v6 = [(NSMutableArray *)self->_devices copy];
  os_unfair_lock_unlock(&self->mMutex.m_lock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v14 + 1) + 8 * v10++) handleProfileDetailsReplyMessage:{message, v14}];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  for (i = 0; i < [v5 count]; ++i)
  {
    v12 = [v5 pointerAtIndex:i];
    v13 = v12;
    if (v12)
    {
      [v12 handleProfileDetailsReplyMessage:message];
    }
  }
}

- (BOOL)removeMutableDevice:(id)device
{
  deviceCopy = device;
  os_unfair_lock_lock(&self->mMutex.m_lock);
  for (i = 0; ; ++i)
  {
    v6 = [(NSPointerArray *)self->_mutableDevices count];
    if (i >= v6)
    {
      break;
    }

    v7 = [(NSPointerArray *)self->_mutableDevices pointerAtIndex:i];
    v8 = v7;
    if (v7 == deviceCopy)
    {
      [(NSPointerArray *)self->_mutableDevices removePointerAtIndex:i];

      break;
    }
  }

  os_unfair_lock_unlock(&self->mMutex.m_lock);

  return i < v6;
}

- (void)addMutableDevice:(id)device
{
  deviceCopy = device;
  os_unfair_lock_lock(&self->mMutex.m_lock);
  [(NSPointerArray *)self->_mutableDevices addPointer:deviceCopy];

  os_unfair_lock_unlock(&self->mMutex.m_lock);
}

- (void)updateDevice:(unsigned int)device description:(id)description
{
  v4 = *&device;
  descriptionCopy = description;
  os_unfair_lock_lock(&self->mMutex.m_lock);
  v6 = [(MIDICIDeviceManager *)self findDevice:v4];
  v7 = v6;
  if (v6)
  {
    [v6 deserialize:descriptionCopy];
  }

  os_unfair_lock_unlock(&self->mMutex.m_lock);
}

- (BOOL)removeDevice:(unsigned int)device
{
  v3 = *&device;
  os_unfair_lock_lock(&self->mMutex.m_lock);
  v5 = [(MIDICIDeviceManager *)self findDevice:v3];
  if (v5)
  {
    [(NSMutableArray *)self->_devices removeObject:v5];
    os_unfair_lock_unlock(&self->mMutex.m_lock);
    [(MIDICIDeviceManager *)self postNotificationName:@"MIDICIDeviceWasRemovedNotification" device:v5 profile:0];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-10842 userInfo:0];
    v7 = v6;

    v8 = v6;
    os_unfair_lock_unlock(&self->mMutex.m_lock);
  }

  return v5 != 0;
}

- (void)addDevice:(id)device
{
  deviceCopy = device;
  os_unfair_lock_lock(&self->mMutex.m_lock);
  [deviceCopy isMine];
  v4 = -[MIDICIDeviceManager findDevice:](self, "findDevice:", [deviceCopy objectRef]);

  if (v4)
  {
    os_unfair_lock_unlock(&self->mMutex.m_lock);
  }

  else
  {
    [(NSMutableArray *)self->_devices addObject:deviceCopy];
    os_unfair_lock_unlock(&self->mMutex.m_lock);
    [(MIDICIDeviceManager *)self postNotificationName:@"MIDICIDeviceWasAddedNotification" device:deviceCopy profile:0];
  }
}

- (id)findDeviceWithMUID:(unsigned int)d
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->mMutex.m_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_devices;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 MUID] == d)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  os_unfair_lock_unlock(&self->mMutex.m_lock);

  return v10;
}

- (id)findDevice:(unsigned int)device
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_devices;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 objectRef] == device)
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (void)updateProfile:(unsigned int)profile description:(id)description
{
  v4 = *&profile;
  descriptionCopy = description;
  LOBYTE(v11) = 0;
  v13 = 0;
  os_unfair_lock_lock(&self->mMutex.m_lock);
  [(MIDICIDeviceManager *)self findProfileAndDevice:v4];
  std::__optional_storage_base<std::pair<MIDICIDevice * {__strong},MIDIUMPCIProfile * {__strong}>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::pair<MIDICIDevice * {__strong},MIDIUMPCIProfile * {__strong}>,false>>(&v11, v9);
  if (v10 == 1)
  {
  }

  if (v13 == 1)
  {
    v7 = v12;
    v8 = [v12 deserialize:descriptionCopy];
    os_unfair_lock_unlock(&self->mMutex.m_lock);
    if (v8)
    {
      [(MIDICIDeviceManager *)self postNotificationName:@"MIDICIProfileWasUpdatedNotification" device:v11 profile:v7];
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->mMutex.m_lock);
  }
}

- (BOOL)removeProfile:(unsigned int)profile
{
  v3 = *&profile;
  LOBYTE(v12) = 0;
  v14 = 0;
  os_unfair_lock_lock(&self->mMutex.m_lock);
  [(MIDICIDeviceManager *)self findProfileAndDevice:v3];
  std::__optional_storage_base<std::pair<MIDICIDevice * {__strong},MIDIUMPCIProfile * {__strong}>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::pair<MIDICIDevice * {__strong},MIDIUMPCIProfile * {__strong}>,false>>(&v12, v10);
  if (v11 == 1)
  {
  }

  v5 = v14;
  if (v14)
  {
    v6 = v13;
    v7 = v12;
    [v7 removeProfile:v6];

    os_unfair_lock_unlock(&self->mMutex.m_lock);
    v8 = v7;
    [(MIDICIDeviceManager *)self postNotificationName:@"MIDICIProfileWasRemovedNotification" device:v8 profile:v6];
  }

  else
  {
    os_unfair_lock_unlock(&self->mMutex.m_lock);
  }

  return v5;
}

- (void)addProfile:(id)profile
{
  profileCopy = profile;
  os_unfair_lock_lock(&self->mMutex.m_lock);
  [profileCopy isMine];
  v4 = -[MIDICIDeviceManager findProfile:](self, "findProfile:", [profileCopy objectRef]);

  if (!v4)
  {
    v5 = -[MIDICIDeviceManager findDevice:](self, "findDevice:", [profileCopy ownerObjectRef]);
    [v5 addProfile:profileCopy];
  }

  os_unfair_lock_unlock(&self->mMutex.m_lock);
}

- (id)findProfile:(unsigned int)profile
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = self->_devices;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        profiles = [v8 profiles];
        v10 = [profiles countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v10)
        {
          v11 = *v17;
          while (2)
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v17 != v11)
              {
                objc_enumerationMutation(profiles);
              }

              v13 = *(*(&v16 + 1) + 8 * j);
              if ([v13 objectRef] == profile)
              {
                v14 = v13;

                goto LABEL_19;
              }
            }

            v10 = [profiles countByEnumeratingWithState:&v16 objects:v24 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
      v14 = 0;
    }

    while (v5);
  }

  else
  {
    v14 = 0;
  }

LABEL_19:

  return v14;
}

- (optional<std::pair<MIDICIDevice)findProfileAndDevice:(MIDICIDeviceManager *)self
{
  v18 = retstr;
  v30 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = self->_devices;
  v19 = v5;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        profiles = [v9 profiles];
        v11 = [profiles countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v11)
        {
          v12 = *v21;
          while (2)
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v21 != v12)
              {
                objc_enumerationMutation(profiles);
              }

              v14 = *(*(&v20 + 1) + 8 * j);
              if ([v14 objectRef] == a4)
              {
                v16 = v9;
                v17 = v14;
                v18->var0.var1.var0 = v16;
                v18->var0.var1.var1 = v17;
                v18->var1 = 1;

                return result;
              }
            }

            v11 = [profiles countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v5 = v19;
      }

      v6 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  v18->var0.var0 = 0;
  v18->var1 = 0;
  return result;
}

- (BOOL)postNotificationName:(id)name device:(id)device profile:(id)profile
{
  nameCopy = name;
  deviceCopy = device;
  profileCopy = profile;
  if (deviceCopy | profileCopy)
  {
    v11 = objc_opt_new();
    v12 = v11;
    if (deviceCopy)
    {
      [v11 setValue:deviceCopy forKey:@"MIDICIDeviceObjectKey"];
    }

    if (profileCopy)
    {
      [v12 setValue:profileCopy forKey:@"MIDICIProfileObjectKey"];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:nameCopy object:self userInfo:v12];
  }

  return (deviceCopy | profileCopy) != 0;
}

- (NSArray)discoveredCIDevices
{
  os_unfair_lock_lock(&self->mMutex.m_lock);
  v3 = [(NSMutableArray *)self->_devices copy];
  os_unfair_lock_unlock(&self->mMutex.m_lock);

  return v3;
}

- (MIDICIDeviceManager)init
{
  v26 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = MIDICIDeviceManager;
  v2 = [(MIDICIDeviceManager *)&v24 init];
  if (v2)
  {
    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    mutableDevices = v2->_mutableDevices;
    v2->_mutableDevices = weakObjectsPointerArray;

    v23 = 0;
    if (!UMPCIGlobalState(&v23, v5))
    {
      v6 = [v23 objectForKey:@"device_manager_muid"];
      v7 = v6;
      if (v6)
      {
        v2->_serverMUID = [v6 unsignedIntValue];
      }

      v8 = [v23 objectForKey:@"midi_ci_devices"];
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v11)
      {
        v12 = *v20;
        do
        {
          v13 = 0;
          do
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v19 + 1) + 8 * v13);
            v15 = [MIDICIDevice alloc];
            v16 = [(MIDICIDevice *)v15 initWithDescription:v14, v19];
            if (![(MIDICIDevice *)v16 isMine])
            {
              [(NSMutableArray *)v9 addObject:v16];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v10 countByEnumeratingWithState:&v19 objects:v25 count:16];
        }

        while (v11);
      }

      devices = v2->_devices;
      v2->_devices = v9;
    }
  }

  return v2;
}

+ (MIDICIDeviceManager)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__MIDICIDeviceManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[MIDICIDeviceManager sharedInstance]::onceToken != -1)
  {
    dispatch_once(&+[MIDICIDeviceManager sharedInstance]::onceToken, block);
  }

  v2 = +[MIDICIDeviceManager sharedInstance]::theInstance;

  return v2;
}

uint64_t __37__MIDICIDeviceManager_sharedInstance__block_invoke(Class *a1)
{
  UMPCIClients::instance(a1);
  +[MIDICIDeviceManager sharedInstance]::theInstance = objc_alloc_init(a1[4]);

  return MEMORY[0x2821F96F8]();
}

@end