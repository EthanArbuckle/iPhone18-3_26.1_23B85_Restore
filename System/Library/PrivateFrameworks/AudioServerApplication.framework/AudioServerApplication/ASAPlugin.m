@interface ASAPlugin
+ (id)pluginWithBundleIdentifier:(id)a3;
- (ASAPlugin)initWithBundleIdentifier:(id)a3;
- (NSArray)audioDeviceObjectIDs;
- (NSArray)audioDevices;
- (NSArray)boxObjectIDs;
- (NSArray)boxes;
- (NSArray)clockDeviceObjectIDs;
- (NSArray)clockDevices;
- (NSString)bundleID;
- (NSString)manufacturer;
- (NSURL)resourceBundleURL;
- (id)audioDeviceWithUID:(id)a3;
- (id)boxWithUID:(id)a3;
- (id)clockDeviceWithUID:(id)a3;
- (unsigned)audioDeviceObjectIDWithUID:(id)a3;
- (unsigned)boxObjectIDWithUID:(id)a3;
- (unsigned)clockDeviceObjectIDWithUID:(id)a3;
@end

@implementation ASAPlugin

+ (id)pluginWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithBundleIdentifier:v4];

  return v5;
}

- (ASAPlugin)initWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[ASACoreAudio sharedCoreAudioObject];
  v6 = [v5 pluginObjectIDWithBundleID:v4];

  if (v6)
  {
    v8.receiver = self;
    v8.super_class = ASAPlugin;
    return [(ASAObject *)&v8 initWithAudioObjectID:v6];
  }

  else
  {

    return 0;
  }
}

- (NSString)bundleID
{
  v6 = 8;
  cf = 0;
  if ([(ASAObject *)self getMainGlobalProperty:1885956452 withData:&cf ofSize:&v6 withQualifier:0 ofSize:0])
  {
    if (cf)
    {
      v2 = [MEMORY[0x277CCACA8] stringWithString:?];
      CFRelease(cf);
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read bundle ID property\n", v4, 2u);
  }

  v2 = 0;
LABEL_7:

  return v2;
}

- (NSURL)resourceBundleURL
{
  if (![(ASAObject *)self hasMainGlobalProperty:1768124270])
  {
    goto LABEL_7;
  }

  cf = 0;
  v6 = 8;
  if (![(ASAObject *)self getMainOutputProperty:1920168547 withData:&cf ofSize:&v6 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read output resource bundle property\n", v5, 2u);
  }

  if (cf)
  {
    v3 = [cf absoluteURL];
    CFRelease(cf);
  }

  else
  {
LABEL_7:
    v3 = 0;
  }

  return v3;
}

- (NSString)manufacturer
{
  v6 = 8;
  cf = 0;
  if ([(ASAObject *)self getMainGlobalProperty:1819107691 withData:&cf ofSize:&v6 withQualifier:0 ofSize:0])
  {
    if (cf)
    {
      v2 = [MEMORY[0x277CCACA8] stringWithString:?];
      CFRelease(cf);
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read manufacturer property\n", v4, 2u);
  }

  v2 = 0;
LABEL_7:

  return v2;
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
  v6 = [(ASAPlugin *)self boxObjectIDWithUID:v4];

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

  [(ASAObject *)self getMainGlobalProperty:1969841252 withData:&v7 ofSize:&v6 withQualifier:&v8 ofSize:8];
  v4 = v7;

  return v4;
}

- (id)audioDeviceWithUID:(id)a3
{
  v4 = a3;
  v5 = [ASAAudioDevice alloc];
  v6 = [(ASAPlugin *)self audioDeviceObjectIDWithUID:v4];

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
  v6 = [(ASAPlugin *)self clockDeviceObjectIDWithUID:v4];

  v7 = [(ASAObject *)v5 initWithAudioObjectID:v6];

  return v7;
}

- (NSArray)boxObjectIDs
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(ASAObject *)self sizeOfMainGlobalProperty:1651472419 withQualifier:0 ofSize:0];
  v13 = v4;
  if (v4)
  {
    v5 = v4;
    v6 = malloc_type_malloc(v4, 0xA8A9D3F6uLL);
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
  v2 = [(ASAPlugin *)self boxObjectIDs];
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
  v4 = [(ASAObject *)self sizeOfMainGlobalProperty:1684370979 withQualifier:0 ofSize:0];
  v13 = v4;
  if (v4)
  {
    v5 = v4;
    v6 = malloc_type_malloc(v4, 0x292D906uLL);
    if (v6)
    {
      v7 = v6;
      bzero(v6, v5);
      if ([(ASAObject *)self getMainGlobalProperty:1684370979 withData:v7 ofSize:&v13 withQualifier:0 ofSize:0]&& v13 >= 4)
      {
        v8 = v13 >> 2;
        v9 = v7;
        do
        {
          if (*v9++)
          {
            v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:?];
            [v3 addObject:v11];
          }

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
  v2 = [(ASAPlugin *)self audioDeviceObjectIDs];
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
    v6 = malloc_type_malloc(v4, 0x132A2AAAuLL);
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
  v2 = [(ASAPlugin *)self clockDeviceObjectIDs];
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

@end