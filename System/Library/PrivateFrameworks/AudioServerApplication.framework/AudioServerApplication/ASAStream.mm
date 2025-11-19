@interface ASAStream
- (ASAAudioFormat)physicalFormat;
- (ASAAudioFormat)virtualFormat;
- (BOOL)isActive;
- (BOOL)isInput;
- (BOOL)isOutput;
- (BOOL)isTapStream;
- (NSArray)availablePhysicalFormats;
- (NSArray)availableVirtualFormats;
- (NSArray)controlObjectIDs;
- (NSArray)controls;
- (NSString)name;
- (unsigned)latency;
- (unsigned)startingChannel;
- (unsigned)terminalType;
- (void)setName:(id)a3;
- (void)setPhysicalFormat:(id)a3;
- (void)setVirtualFormat:(id)a3;
@end

@implementation ASAStream

- (NSString)name
{
  v6 = 8;
  cf = 0;
  if ([(ASAObject *)self getMainGlobalProperty:1819173229 withData:&cf ofSize:&v6 withQualifier:0 ofSize:0])
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
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read name property\n", v4, 2u);
  }

  v2 = 0;
LABEL_7:

  return v2;
}

- (void)setName:(id)a3
{
  v4 = a3;
  [(ASAObject *)self setMainGlobalProperty:1819173229 withData:&v4 ofSize:8 withQualifier:0 ofSize:0];
}

- (BOOL)isActive
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1935762292 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read is active property\n", v3, 2u);
  }

  return v4 != 0;
}

- (BOOL)isInput
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1935960434 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read direction property\n", v3, 2u);
  }

  return v4 == 1;
}

- (BOOL)isOutput
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1935960434 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read direction property\n", v3, 2u);
  }

  return v4 == 0;
}

- (unsigned)terminalType
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1952805485 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read terminal type property\n", v3, 2u);
  }

  return v4;
}

- (unsigned)startingChannel
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1935894638 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read starting channel property\n", v3, 2u);
  }

  return v4;
}

- (unsigned)latency
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1819569763 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read latency property\n", v3, 2u);
  }

  return v4;
}

- (ASAAudioFormat)virtualFormat
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v5 = 40;
  if ([(ASAObject *)self getMainGlobalProperty:1936092532 withData:v6 ofSize:&v5 withQualifier:0 ofSize:0])
  {
    v2 = [[ASAAudioFormat alloc] initWithAudioStreamBasicDescription:v6];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read virtual format property\n", v4, 2u);
    }

    v2 = 0;
  }

  return v2;
}

- (void)setVirtualFormat:(id)a3
{
  v4 = a3;
  if ([(ASAStream *)self isVirtualFormatSettable])
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    if (v4)
    {
      [v4 audioStreamBasicDescription];
    }

    if (![(ASAObject *)self setMainGlobalProperty:1936092532 withData:v6 ofSize:40 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not write virtual format property\n", v5, 2u);
    }
  }
}

- (ASAAudioFormat)physicalFormat
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v5 = 40;
  if ([(ASAObject *)self getMainGlobalProperty:1885762592 withData:v6 ofSize:&v5 withQualifier:0 ofSize:0])
  {
    v2 = [[ASAAudioFormat alloc] initWithAudioStreamBasicDescription:v6];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read physical format property\n", v4, 2u);
    }

    v2 = 0;
  }

  return v2;
}

- (void)setPhysicalFormat:(id)a3
{
  v4 = a3;
  if ([(ASAStream *)self isPhysicalFormatSettable])
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    if (v4)
    {
      [v4 audioStreamBasicDescription];
    }

    if (![(ASAObject *)self setMainGlobalProperty:1885762592 withData:v6 ofSize:40 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not write physical format property\n", v5, 2u);
    }
  }
}

- (NSArray)availableVirtualFormats
{
  v3 = [(ASAObject *)self sizeOfMainGlobalProperty:1936092513 withQualifier:0 ofSize:0];
  v14 = v3;
  if (v3 && (v4 = v3, (v5 = malloc_type_malloc(v3, 0x199FD535uLL)) != 0))
  {
    v6 = v5;
    bzero(v5, v4);
    v7 = [(ASAObject *)self getMainGlobalProperty:1936092513 withData:v6 ofSize:&v14 withQualifier:0 ofSize:0];
    v8 = 0;
    if (v7)
    {
      v9 = v14;
      v8 = [MEMORY[0x277CBEB18] array];
      if (v9 >= 0x38)
      {
        v10 = v9 / 0x38uLL;
        v11 = v6;
        do
        {
          v12 = [[ASAAudioFormat alloc] initWithAudioStreamRangedDescription:v11];
          [v8 addObject:v12];

          v11 += 56;
          --v10;
        }

        while (v10);
      }
    }

    free(v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSArray)availablePhysicalFormats
{
  v3 = [(ASAObject *)self sizeOfMainGlobalProperty:1885762657 withQualifier:0 ofSize:0];
  v14 = v3;
  if (v3 && (v4 = v3, (v5 = malloc_type_malloc(v3, 0xE734E876uLL)) != 0))
  {
    v6 = v5;
    bzero(v5, v4);
    v7 = [(ASAObject *)self getMainGlobalProperty:1885762657 withData:v6 ofSize:&v14 withQualifier:0 ofSize:0];
    v8 = 0;
    if (v7)
    {
      v9 = v14;
      v8 = [MEMORY[0x277CBEB18] array];
      if (v9 >= 0x38)
      {
        v10 = v9 / 0x38uLL;
        v11 = v6;
        do
        {
          v12 = [[ASAAudioFormat alloc] initWithAudioStreamRangedDescription:v11];
          [v8 addObject:v12];

          v11 += 56;
          --v10;
        }

        while (v10);
      }
    }

    free(v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSArray)controlObjectIDs
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(ASAObject *)self sizeOfMainGlobalProperty:1668575852 withQualifier:0 ofSize:0];
  v15 = v4;
  if (v4)
  {
    v5 = v4;
    v6 = malloc_type_malloc(v4, 0x99A834AEuLL);
    if (v6)
    {
      v7 = v6;
      bzero(v6, v5);
      if ([(ASAObject *)self getMainGlobalProperty:1668575852 withData:v7 ofSize:&v15 withQualifier:0 ofSize:0])
      {
        v8 = v15;
        v9 = [MEMORY[0x277CBEB18] array];

        if (v8 >= 4)
        {
          v10 = v8 >> 2;
          v11 = v7;
          do
          {
            v12 = *v11++;
            v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v12];
            [v9 addObject:v13];

            --v10;
          }

          while (v10);
        }

        v3 = v9;
      }

      free(v7);
    }
  }

  return v3;
}

- (NSArray)controls
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [(ASAStream *)self controlObjectIDs];
  v3 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [ASAObject alloc];
        v11 = -[ASAObject initWithAudioObjectID:](v10, "initWithAudioObjectID:", [v9 unsignedIntValue]);
        v12 = [(ASAObject *)v11 baseClass];
        if (v12 > 1936483441)
        {
          if (v12 != 1936483442)
          {
            v13 = off_278CE2A50;
            if (v12 == 1953458028)
            {
              goto LABEL_15;
            }

            goto LABEL_12;
          }

          v13 = off_278CE2AA0;
        }

        else
        {
          if (v12 != 1818588780)
          {
            if (v12 == 1936483188)
            {
              v13 = off_278CE2A98;
              goto LABEL_15;
            }

LABEL_12:
            v13 = off_278CE2A68;
            goto LABEL_15;
          }

          v13 = off_278CE2A78;
        }

LABEL_15:
        v14 = [objc_alloc(*v13) initWithAudioObjectID:{-[ASAObject objectID](v11, "objectID")}];
        if (v14)
        {
          [v3 addObject:v14];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)isTapStream
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1952542835 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read tap stream property\n", v3, 2u);
  }

  return v4 != 0;
}

@end