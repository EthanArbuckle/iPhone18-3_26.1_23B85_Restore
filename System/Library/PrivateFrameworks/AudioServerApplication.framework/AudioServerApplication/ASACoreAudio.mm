@interface ASACoreAudio
+ (id)coreAudio;
+ (id)sharedCoreAudioObject;
- (ASAAudioDevice)defaultInputAudioDevice;
- (ASAAudioDevice)defaultOutputAudioDevice;
- (ASAAudioDevice)defaultSystemOutputAudioDevice;
- (NSArray)audioDeviceObjectIDs;
- (NSArray)audioDevices;
- (NSArray)boxObjectIDs;
- (NSArray)boxes;
- (NSArray)clockDeviceObjectIDs;
- (NSArray)clockDevices;
- (NSArray)pluginObjectIDs;
- (NSArray)plugins;
- (id)audioDeviceWithUID:(id)d;
- (id)boxWithUID:(id)d;
- (id)clockDeviceWithUID:(id)d;
- (id)pluginWithBundleID:(id)d;
- (id)transportManagerWithBundleID:(id)d;
- (unsigned)audioDeviceObjectIDWithUID:(id)d;
- (unsigned)boxObjectIDWithUID:(id)d;
- (unsigned)clockDeviceObjectIDWithUID:(id)d;
- (unsigned)defaultInputAudioDeviceObjectID;
- (unsigned)defaultOutputAudioDeviceObjectID;
- (unsigned)defaultSystemOutputAudioDeviceObjectID;
- (unsigned)pluginObjectIDWithBundleID:(id)d;
- (unsigned)transportManagerObjectIDWithBundleID:(id)d;
- (void)_setDefaultInputAudioDeviceObjectID:(unsigned int)d transient:(BOOL)transient;
- (void)_setDefaultOutputAudioDeviceObjectID:(unsigned int)d transient:(BOOL)transient;
- (void)_setDefaultSystemOutputAudioDeviceObjectID:(unsigned int)d transient:(BOOL)transient;
- (void)addClient:(id)client;
- (void)addPlugin:(id)plugin;
- (void)dealloc;
- (void)removeClient:(id)client;
- (void)removePlugin:(id)plugin;
- (void)setDefaultInputAudioDevice:(id)device;
- (void)setDefaultOutputAudioDevice:(id)device;
- (void)setDefaultSystemOutputAudioDevice:(id)device;
- (void)setTransientDefaultInputAudioDevice:(id)device;
- (void)setTransientDefaultOutputAudioDevice:(id)device;
- (void)setTransientDefaultSystemOutputAudioDevice:(id)device;
@end

@implementation ASACoreAudio

+ (id)sharedCoreAudioObject
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ASACoreAudio_sharedCoreAudioObject__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedCoreAudioObject_onceToken != -1)
  {
    dispatch_once(&sharedCoreAudioObject_onceToken, block);
  }

  v2 = _sharedCoreAudioObject;

  return v2;
}

uint64_t __37__ASACoreAudio_sharedCoreAudioObject__block_invoke(uint64_t a1)
{
  _sharedCoreAudioObject = [*(a1 + 32) coreAudio];

  return MEMORY[0x2821F96F8]();
}

+ (id)coreAudio
{
  v2 = [objc_alloc(objc_opt_class()) initWithAudioObjectID:1];

  return v2;
}

- (void)addClient:(id)client
{
  clientCopy = client;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26__ASACoreAudio_addClient___block_invoke;
  v7[3] = &unk_278CE2B40;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_sync(clientQueue, v7);
}

void __26__ASACoreAudio_addClient___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(a1 + 32) + 40);
  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = *(*(a1 + 32) + 40);
  }

  if (([v3 containsObject:*(a1 + 40)] & 1) == 0)
  {
    [*(*(a1 + 32) + 40) addObject:*(a1 + 40)];
  }

  objc_autoreleasePoolPop(v2);
}

- (void)removeClient:(id)client
{
  clientCopy = client;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__ASACoreAudio_removeClient___block_invoke;
  v7[3] = &unk_278CE2B40;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_sync(clientQueue, v7);
}

uint64_t __29__ASACoreAudio_removeClient___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 40) containsObject:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 40);

    return [v4 removeObject:v3];
  }

  return result;
}

- (void)addPlugin:(id)plugin
{
  pluginCopy = plugin;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26__ASACoreAudio_addPlugin___block_invoke;
  v7[3] = &unk_278CE2B40;
  v7[4] = self;
  v8 = pluginCopy;
  v6 = pluginCopy;
  dispatch_sync(clientQueue, v7);
}

void __26__ASACoreAudio_addPlugin___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(a1 + 32) + 48);
  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
    *(v5 + 48) = v4;

    v3 = *(*(a1 + 32) + 48);
  }

  if (([v3 containsObject:*(a1 + 40)] & 1) == 0)
  {
    [*(*(a1 + 32) + 48) addObject:*(a1 + 40)];
  }

  objc_autoreleasePoolPop(v2);
}

- (void)removePlugin:(id)plugin
{
  pluginCopy = plugin;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__ASACoreAudio_removePlugin___block_invoke;
  v7[3] = &unk_278CE2B40;
  v7[4] = self;
  v8 = pluginCopy;
  v6 = pluginCopy;
  dispatch_sync(clientQueue, v7);
}

uint64_t __29__ASACoreAudio_removePlugin___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 48) containsObject:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 48);

    return [v4 removeObject:v3];
  }

  return result;
}

- (unsigned)boxObjectIDWithUID:(id)d
{
  dCopy = d;
  v6 = 4;
  v7 = 0;
  if (!dCopy)
  {
    return 0;
  }

  [(ASAObject *)self getMainGlobalProperty:1969841250 withData:&v7 ofSize:&v6 withQualifier:&dCopy ofSize:8];
  v4 = v7;

  return v4;
}

- (id)boxWithUID:(id)d
{
  dCopy = d;
  v5 = [ASABox alloc];
  v6 = [(ASACoreAudio *)self boxObjectIDWithUID:dCopy];

  v7 = [(ASAObject *)v5 initWithAudioObjectID:v6];

  return v7;
}

- (unsigned)audioDeviceObjectIDWithUID:(id)d
{
  dCopy = d;
  v6 = 4;
  v7 = 0;
  if (!dCopy)
  {
    return 0;
  }

  [(ASAObject *)self getMainGlobalProperty:1920297316 withData:&v7 ofSize:&v6 withQualifier:&dCopy ofSize:8];
  v4 = v7;

  return v4;
}

- (id)audioDeviceWithUID:(id)d
{
  dCopy = d;
  v5 = [ASAAudioDevice alloc];
  v6 = [(ASACoreAudio *)self audioDeviceObjectIDWithUID:dCopy];

  v7 = [(ASAObject *)v5 initWithAudioObjectID:v6];

  return v7;
}

- (unsigned)clockDeviceObjectIDWithUID:(id)d
{
  dCopy = d;
  v6 = 4;
  v7 = 0;
  if (!dCopy)
  {
    return 0;
  }

  [(ASAObject *)self getMainGlobalProperty:1969841251 withData:&v7 ofSize:&v6 withQualifier:&dCopy ofSize:8];
  v4 = v7;

  return v4;
}

- (id)clockDeviceWithUID:(id)d
{
  dCopy = d;
  v5 = [ASAClockDevice alloc];
  v6 = [(ASACoreAudio *)self clockDeviceObjectIDWithUID:dCopy];

  v7 = [(ASAObject *)v5 initWithAudioObjectID:v6];

  return v7;
}

- (unsigned)defaultInputAudioDeviceObjectID
{
  v4 = 4;
  v3 = 0;
  [(ASAObject *)self getMainGlobalProperty:1682533920 withData:&v3 ofSize:&v4 withQualifier:0 ofSize:0];
  return v3;
}

- (void)_setDefaultInputAudioDeviceObjectID:(unsigned int)d transient:(BOOL)transient
{
  dCopy = d;
  transientCopy = transient;
  [(ASAObject *)self setMainGlobalProperty:1682533920 withData:&dCopy ofSize:4 withQualifier:&transientCopy ofSize:4];
}

- (ASAAudioDevice)defaultInputAudioDevice
{
  v2 = [(ASAObject *)[ASAAudioDevice alloc] initWithAudioObjectID:[(ASACoreAudio *)self defaultInputAudioDeviceObjectID]];

  return v2;
}

- (void)setDefaultInputAudioDevice:(id)device
{
  objectID = [device objectID];

  [(ASACoreAudio *)self setDefaultInputAudioDeviceObjectID:objectID];
}

- (unsigned)defaultOutputAudioDeviceObjectID
{
  v4 = 4;
  v3 = 0;
  [(ASAObject *)self getMainGlobalProperty:1682929012 withData:&v3 ofSize:&v4 withQualifier:0 ofSize:0];
  return v3;
}

- (void)_setDefaultOutputAudioDeviceObjectID:(unsigned int)d transient:(BOOL)transient
{
  dCopy = d;
  transientCopy = transient;
  [(ASAObject *)self setMainGlobalProperty:1682929012 withData:&dCopy ofSize:4 withQualifier:&transientCopy ofSize:4];
}

- (ASAAudioDevice)defaultOutputAudioDevice
{
  v2 = [(ASAObject *)[ASAAudioDevice alloc] initWithAudioObjectID:[(ASACoreAudio *)self defaultOutputAudioDeviceObjectID]];

  return v2;
}

- (void)setDefaultOutputAudioDevice:(id)device
{
  objectID = [device objectID];

  [(ASACoreAudio *)self setDefaultOutputAudioDeviceObjectID:objectID];
}

- (unsigned)defaultSystemOutputAudioDeviceObjectID
{
  v4 = 4;
  v3 = 0;
  [(ASAObject *)self getMainGlobalProperty:1934587252 withData:&v3 ofSize:&v4 withQualifier:0 ofSize:0];
  return v3;
}

- (void)_setDefaultSystemOutputAudioDeviceObjectID:(unsigned int)d transient:(BOOL)transient
{
  dCopy = d;
  transientCopy = transient;
  [(ASAObject *)self setMainGlobalProperty:1934587252 withData:&dCopy ofSize:4 withQualifier:&transientCopy ofSize:4];
}

- (ASAAudioDevice)defaultSystemOutputAudioDevice
{
  v2 = [(ASAObject *)[ASAAudioDevice alloc] initWithAudioObjectID:[(ASACoreAudio *)self defaultSystemOutputAudioDeviceObjectID]];

  return v2;
}

- (void)setDefaultSystemOutputAudioDevice:(id)device
{
  objectID = [device objectID];

  [(ASACoreAudio *)self setDefaultSystemOutputAudioDeviceObjectID:objectID];
}

- (void)setTransientDefaultInputAudioDevice:(id)device
{
  objectID = [device objectID];

  [(ASACoreAudio *)self _setDefaultInputAudioDeviceObjectID:objectID transient:1];
}

- (void)setTransientDefaultOutputAudioDevice:(id)device
{
  objectID = [device objectID];

  [(ASACoreAudio *)self _setDefaultOutputAudioDeviceObjectID:objectID transient:1];
}

- (void)setTransientDefaultSystemOutputAudioDevice:(id)device
{
  objectID = [device objectID];

  [(ASACoreAudio *)self _setDefaultSystemOutputAudioDeviceObjectID:objectID transient:1];
}

- (unsigned)transportManagerObjectIDWithBundleID:(id)d
{
  dCopy = d;
  v5 = 0;
  v6 = 4;
  [(ASAObject *)self getMainGlobalProperty:1953325673 withData:&v5 ofSize:&v6 withQualifier:&dCopy ofSize:8];
  LODWORD(self) = v5;

  return self;
}

- (id)transportManagerWithBundleID:(id)d
{
  dCopy = d;
  v5 = [ASAPlugin alloc];
  v6 = [(ASACoreAudio *)self transportManagerObjectIDWithBundleID:dCopy];

  v7 = [(ASAObject *)v5 initWithAudioObjectID:v6];

  return v7;
}

- (unsigned)pluginObjectIDWithBundleID:(id)d
{
  dCopy = d;
  v5 = 0;
  v6 = 4;
  [(ASAObject *)self getMainGlobalProperty:1651074160 withData:&v5 ofSize:&v6 withQualifier:&dCopy ofSize:8];
  LODWORD(self) = v5;

  return self;
}

- (id)pluginWithBundleID:(id)d
{
  dCopy = d;
  v5 = [ASAPlugin alloc];
  v6 = [(ASACoreAudio *)self pluginObjectIDWithBundleID:dCopy];

  v7 = [(ASAObject *)v5 initWithAudioObjectID:v6];

  return v7;
}

- (NSArray)pluginObjectIDs
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(ASAObject *)self sizeOfMainGlobalProperty:1886152483 withQualifier:0 ofSize:0];
  v13 = v4;
  if (v4)
  {
    v5 = v4;
    v6 = malloc_type_malloc(v4, 0xCE04967BuLL);
    if (v6)
    {
      v7 = v6;
      bzero(v6, v5);
      if ([(ASAObject *)self getMainGlobalProperty:1886152483 withData:v7 ofSize:&v13 withQualifier:0 ofSize:0]&& v13 >= 4)
      {
        v8 = v13 >> 2;
        v9 = v7;
        do
        {
          v10 = *v9++;
          v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v10];
          [array addObject:v11];

          --v8;
        }

        while (v8);
      }

      free(v7);
    }
  }

  return array;
}

- (NSArray)plugins
{
  v19 = *MEMORY[0x277D85DE8];
  pluginObjectIDs = [(ASACoreAudio *)self pluginObjectIDs];
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = pluginObjectIDs;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [ASAPlugin alloc];
        v11 = -[ASAObject initWithAudioObjectID:](v10, "initWithAudioObjectID:", [v9 unsignedIntValue]);
        if (v11)
        {
          [array addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return array;
}

- (NSArray)boxObjectIDs
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(ASAObject *)self sizeOfMainGlobalProperty:1651472419 withQualifier:0 ofSize:0];
  v13 = v4;
  if (v4)
  {
    v5 = v4;
    v6 = malloc_type_malloc(v4, 0x1A1C49B9uLL);
    if (v6)
    {
      v7 = v6;
      bzero(v6, v5);
      if ([(ASAObject *)self getMainGlobalProperty:1651472419 withData:v7 ofSize:&v13 withQualifier:0 ofSize:0]&& v13 >= 4)
      {
        v8 = v13 >> 2;
        v9 = v7;
        do
        {
          v10 = *v9++;
          v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v10];
          [array addObject:v11];

          --v8;
        }

        while (v8);
      }

      free(v7);
    }
  }

  return array;
}

- (NSArray)boxes
{
  v19 = *MEMORY[0x277D85DE8];
  boxObjectIDs = [(ASACoreAudio *)self boxObjectIDs];
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = boxObjectIDs;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [ASABox alloc];
        v11 = -[ASAObject initWithAudioObjectID:](v10, "initWithAudioObjectID:", [v9 unsignedIntValue]);
        if (v11)
        {
          [array addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return array;
}

- (NSArray)audioDeviceObjectIDs
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(ASAObject *)self sizeOfMainGlobalProperty:1919186467 withQualifier:0 ofSize:0];
  v13 = v4;
  if (v4)
  {
    v5 = v4;
    v6 = malloc_type_malloc(v4, 0x9A1B209FuLL);
    if (v6)
    {
      v7 = v6;
      bzero(v6, v5);
      if ([(ASAObject *)self getMainGlobalProperty:1919186467 withData:v7 ofSize:&v13 withQualifier:0 ofSize:0]&& v13 >= 4)
      {
        v8 = v13 >> 2;
        v9 = v7;
        do
        {
          v10 = *v9++;
          v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v10];
          [array addObject:v11];

          --v8;
        }

        while (v8);
      }

      free(v7);
    }
  }

  return array;
}

- (NSArray)audioDevices
{
  v19 = *MEMORY[0x277D85DE8];
  audioDeviceObjectIDs = [(ASACoreAudio *)self audioDeviceObjectIDs];
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = audioDeviceObjectIDs;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [ASAAudioDevice alloc];
        v11 = -[ASAObject initWithAudioObjectID:](v10, "initWithAudioObjectID:", [v9 unsignedIntValue]);
        if (v11)
        {
          [array addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return array;
}

- (NSArray)clockDeviceObjectIDs
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(ASAObject *)self sizeOfMainGlobalProperty:1668049699 withQualifier:0 ofSize:0];
  v13 = v4;
  if (v4)
  {
    v5 = v4;
    v6 = malloc_type_malloc(v4, 0x71C6B1FuLL);
    if (v6)
    {
      v7 = v6;
      bzero(v6, v5);
      if ([(ASAObject *)self getMainGlobalProperty:1668049699 withData:v7 ofSize:&v13 withQualifier:0 ofSize:0]&& v13 >= 4)
      {
        v8 = v13 >> 2;
        v9 = v7;
        do
        {
          v10 = *v9++;
          v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v10];
          [array addObject:v11];

          --v8;
        }

        while (v8);
      }

      free(v7);
    }
  }

  return array;
}

- (NSArray)clockDevices
{
  v19 = *MEMORY[0x277D85DE8];
  clockDeviceObjectIDs = [(ASACoreAudio *)self clockDeviceObjectIDs];
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = clockDeviceObjectIDs;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [ASAClockDevice alloc];
        v11 = -[ASAObject initWithAudioObjectID:](v10, "initWithAudioObjectID:", [v9 unsignedIntValue]);
        if (v11)
        {
          [array addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)dealloc
{
  [(ASACoreAudio *)self _teardownDeathSource];
  v3.receiver = self;
  v3.super_class = ASACoreAudio;
  [(ASACoreAudio *)&v3 dealloc];
}

@end