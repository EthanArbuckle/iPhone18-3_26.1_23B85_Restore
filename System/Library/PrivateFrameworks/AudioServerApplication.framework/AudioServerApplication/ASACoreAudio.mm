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
- (id)audioDeviceWithUID:(id)a3;
- (id)boxWithUID:(id)a3;
- (id)clockDeviceWithUID:(id)a3;
- (id)pluginWithBundleID:(id)a3;
- (id)transportManagerWithBundleID:(id)a3;
- (unsigned)audioDeviceObjectIDWithUID:(id)a3;
- (unsigned)boxObjectIDWithUID:(id)a3;
- (unsigned)clockDeviceObjectIDWithUID:(id)a3;
- (unsigned)defaultInputAudioDeviceObjectID;
- (unsigned)defaultOutputAudioDeviceObjectID;
- (unsigned)defaultSystemOutputAudioDeviceObjectID;
- (unsigned)pluginObjectIDWithBundleID:(id)a3;
- (unsigned)transportManagerObjectIDWithBundleID:(id)a3;
- (void)_setDefaultInputAudioDeviceObjectID:(unsigned int)a3 transient:(BOOL)a4;
- (void)_setDefaultOutputAudioDeviceObjectID:(unsigned int)a3 transient:(BOOL)a4;
- (void)_setDefaultSystemOutputAudioDeviceObjectID:(unsigned int)a3 transient:(BOOL)a4;
- (void)addClient:(id)a3;
- (void)addPlugin:(id)a3;
- (void)dealloc;
- (void)removeClient:(id)a3;
- (void)removePlugin:(id)a3;
- (void)setDefaultInputAudioDevice:(id)a3;
- (void)setDefaultOutputAudioDevice:(id)a3;
- (void)setDefaultSystemOutputAudioDevice:(id)a3;
- (void)setTransientDefaultInputAudioDevice:(id)a3;
- (void)setTransientDefaultOutputAudioDevice:(id)a3;
- (void)setTransientDefaultSystemOutputAudioDevice:(id)a3;
@end

@implementation ASACoreAudio

+ (id)sharedCoreAudioObject
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ASACoreAudio_sharedCoreAudioObject__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (void)addClient:(id)a3
{
  v4 = a3;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26__ASACoreAudio_addClient___block_invoke;
  v7[3] = &unk_278CE2B40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)removeClient:(id)a3
{
  v4 = a3;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__ASACoreAudio_removeClient___block_invoke;
  v7[3] = &unk_278CE2B40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)addPlugin:(id)a3
{
  v4 = a3;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26__ASACoreAudio_addPlugin___block_invoke;
  v7[3] = &unk_278CE2B40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)removePlugin:(id)a3
{
  v4 = a3;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__ASACoreAudio_removePlugin___block_invoke;
  v7[3] = &unk_278CE2B40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (unsigned)boxObjectIDWithUID:(id)a3
{
  v8 = a3;
  v6 = 4;
  v7 = 0;
  if (!v8)
  {
    return 0;
  }

  [(ASAObject *)self getMainGlobalProperty:1969841250 withData:&v7 ofSize:&v6 withQualifier:&v8 ofSize:8];
  v4 = v7;

  return v4;
}

- (id)boxWithUID:(id)a3
{
  v4 = a3;
  v5 = [ASABox alloc];
  v6 = [(ASACoreAudio *)self boxObjectIDWithUID:v4];

  v7 = [(ASAObject *)v5 initWithAudioObjectID:v6];

  return v7;
}

- (unsigned)audioDeviceObjectIDWithUID:(id)a3
{
  v8 = a3;
  v6 = 4;
  v7 = 0;
  if (!v8)
  {
    return 0;
  }

  [(ASAObject *)self getMainGlobalProperty:1920297316 withData:&v7 ofSize:&v6 withQualifier:&v8 ofSize:8];
  v4 = v7;

  return v4;
}

- (id)audioDeviceWithUID:(id)a3
{
  v4 = a3;
  v5 = [ASAAudioDevice alloc];
  v6 = [(ASACoreAudio *)self audioDeviceObjectIDWithUID:v4];

  v7 = [(ASAObject *)v5 initWithAudioObjectID:v6];

  return v7;
}

- (unsigned)clockDeviceObjectIDWithUID:(id)a3
{
  v8 = a3;
  v6 = 4;
  v7 = 0;
  if (!v8)
  {
    return 0;
  }

  [(ASAObject *)self getMainGlobalProperty:1969841251 withData:&v7 ofSize:&v6 withQualifier:&v8 ofSize:8];
  v4 = v7;

  return v4;
}

- (id)clockDeviceWithUID:(id)a3
{
  v4 = a3;
  v5 = [ASAClockDevice alloc];
  v6 = [(ASACoreAudio *)self clockDeviceObjectIDWithUID:v4];

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

- (void)_setDefaultInputAudioDeviceObjectID:(unsigned int)a3 transient:(BOOL)a4
{
  v5 = a3;
  v4 = a4;
  [(ASAObject *)self setMainGlobalProperty:1682533920 withData:&v5 ofSize:4 withQualifier:&v4 ofSize:4];
}

- (ASAAudioDevice)defaultInputAudioDevice
{
  v2 = [(ASAObject *)[ASAAudioDevice alloc] initWithAudioObjectID:[(ASACoreAudio *)self defaultInputAudioDeviceObjectID]];

  return v2;
}

- (void)setDefaultInputAudioDevice:(id)a3
{
  v4 = [a3 objectID];

  [(ASACoreAudio *)self setDefaultInputAudioDeviceObjectID:v4];
}

- (unsigned)defaultOutputAudioDeviceObjectID
{
  v4 = 4;
  v3 = 0;
  [(ASAObject *)self getMainGlobalProperty:1682929012 withData:&v3 ofSize:&v4 withQualifier:0 ofSize:0];
  return v3;
}

- (void)_setDefaultOutputAudioDeviceObjectID:(unsigned int)a3 transient:(BOOL)a4
{
  v5 = a3;
  v4 = a4;
  [(ASAObject *)self setMainGlobalProperty:1682929012 withData:&v5 ofSize:4 withQualifier:&v4 ofSize:4];
}

- (ASAAudioDevice)defaultOutputAudioDevice
{
  v2 = [(ASAObject *)[ASAAudioDevice alloc] initWithAudioObjectID:[(ASACoreAudio *)self defaultOutputAudioDeviceObjectID]];

  return v2;
}

- (void)setDefaultOutputAudioDevice:(id)a3
{
  v4 = [a3 objectID];

  [(ASACoreAudio *)self setDefaultOutputAudioDeviceObjectID:v4];
}

- (unsigned)defaultSystemOutputAudioDeviceObjectID
{
  v4 = 4;
  v3 = 0;
  [(ASAObject *)self getMainGlobalProperty:1934587252 withData:&v3 ofSize:&v4 withQualifier:0 ofSize:0];
  return v3;
}

- (void)_setDefaultSystemOutputAudioDeviceObjectID:(unsigned int)a3 transient:(BOOL)a4
{
  v5 = a3;
  v4 = a4;
  [(ASAObject *)self setMainGlobalProperty:1934587252 withData:&v5 ofSize:4 withQualifier:&v4 ofSize:4];
}

- (ASAAudioDevice)defaultSystemOutputAudioDevice
{
  v2 = [(ASAObject *)[ASAAudioDevice alloc] initWithAudioObjectID:[(ASACoreAudio *)self defaultSystemOutputAudioDeviceObjectID]];

  return v2;
}

- (void)setDefaultSystemOutputAudioDevice:(id)a3
{
  v4 = [a3 objectID];

  [(ASACoreAudio *)self setDefaultSystemOutputAudioDeviceObjectID:v4];
}

- (void)setTransientDefaultInputAudioDevice:(id)a3
{
  v4 = [a3 objectID];

  [(ASACoreAudio *)self _setDefaultInputAudioDeviceObjectID:v4 transient:1];
}

- (void)setTransientDefaultOutputAudioDevice:(id)a3
{
  v4 = [a3 objectID];

  [(ASACoreAudio *)self _setDefaultOutputAudioDeviceObjectID:v4 transient:1];
}

- (void)setTransientDefaultSystemOutputAudioDevice:(id)a3
{
  v4 = [a3 objectID];

  [(ASACoreAudio *)self _setDefaultSystemOutputAudioDeviceObjectID:v4 transient:1];
}

- (unsigned)transportManagerObjectIDWithBundleID:(id)a3
{
  v7 = a3;
  v5 = 0;
  v6 = 4;
  [(ASAObject *)self getMainGlobalProperty:1953325673 withData:&v5 ofSize:&v6 withQualifier:&v7 ofSize:8];
  LODWORD(self) = v5;

  return self;
}

- (id)transportManagerWithBundleID:(id)a3
{
  v4 = a3;
  v5 = [ASAPlugin alloc];
  v6 = [(ASACoreAudio *)self transportManagerObjectIDWithBundleID:v4];

  v7 = [(ASAObject *)v5 initWithAudioObjectID:v6];

  return v7;
}

- (unsigned)pluginObjectIDWithBundleID:(id)a3
{
  v7 = a3;
  v5 = 0;
  v6 = 4;
  [(ASAObject *)self getMainGlobalProperty:1651074160 withData:&v5 ofSize:&v6 withQualifier:&v7 ofSize:8];
  LODWORD(self) = v5;

  return self;
}

- (id)pluginWithBundleID:(id)a3
{
  v4 = a3;
  v5 = [ASAPlugin alloc];
  v6 = [(ASACoreAudio *)self pluginObjectIDWithBundleID:v4];

  v7 = [(ASAObject *)v5 initWithAudioObjectID:v6];

  return v7;
}

- (NSArray)pluginObjectIDs
{
  v3 = [MEMORY[0x277CBEB18] array];
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
          [v3 addObject:v11];

          --v8;
        }

        while (v8);
      }

      free(v7);
    }
  }

  return v3;
}

- (NSArray)plugins
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(ASACoreAudio *)self pluginObjectIDs];
  v3 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v2;
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
          [v3 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSArray)boxObjectIDs
{
  v3 = [MEMORY[0x277CBEB18] array];
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
          [v3 addObject:v11];

          --v8;
        }

        while (v8);
      }

      free(v7);
    }
  }

  return v3;
}

- (NSArray)boxes
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(ASACoreAudio *)self boxObjectIDs];
  v3 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v2;
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
          [v3 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSArray)audioDeviceObjectIDs
{
  v3 = [MEMORY[0x277CBEB18] array];
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
          [v3 addObject:v11];

          --v8;
        }

        while (v8);
      }

      free(v7);
    }
  }

  return v3;
}

- (NSArray)audioDevices
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(ASACoreAudio *)self audioDeviceObjectIDs];
  v3 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v2;
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
          [v3 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSArray)clockDeviceObjectIDs
{
  v3 = [MEMORY[0x277CBEB18] array];
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
          [v3 addObject:v11];

          --v8;
        }

        while (v8);
      }

      free(v7);
    }
  }

  return v3;
}

- (NSArray)clockDevices
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(ASACoreAudio *)self clockDeviceObjectIDs];
  v3 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v2;
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
          [v3 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)dealloc
{
  [(ASACoreAudio *)self _teardownDeathSource];
  v3.receiver = self;
  v3.super_class = ASACoreAudio;
  [(ASACoreAudio *)&v3 dealloc];
}

@end