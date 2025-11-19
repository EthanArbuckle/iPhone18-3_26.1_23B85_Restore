@interface ASASelectorControl
- (NSArray)availableItems;
- (NSArray)currentItems;
- (id)coreAudioClassName;
- (id)nameForItem:(unsigned int)a3;
- (unsigned)currentItem;
- (void)setCurrentItem:(unsigned int)a3;
@end

@implementation ASASelectorControl

- (void)setCurrentItem:(unsigned int)a3
{
  v4 = a3;
  if (![(ASAObject *)self setMainGlobalProperty:1935893353 withData:&v4 ofSize:4 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not set current item property\n", v3, 2u);
  }
}

- (unsigned)currentItem
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1935893353 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read current item property\n", v3, 2u);
  }

  return v4;
}

- (NSArray)currentItems
{
  v3 = [(ASAObject *)self sizeOfMainGlobalProperty:1935893353 withQualifier:0 ofSize:0];
  v15 = v3;
  if (v3 && (v4 = v3, (v5 = malloc_type_malloc(v3, 0xB12852E2uLL)) != 0))
  {
    v6 = v5;
    bzero(v5, v4);
    if ([(ASAObject *)self getMainGlobalProperty:1935893353 withData:v6 ofSize:&v15 withQualifier:0 ofSize:0])
    {
      v7 = v15;
      v8 = [MEMORY[0x277CBEB18] array];
      if (v7 >= 4)
      {
        v9 = v7 >> 2;
        v10 = v6;
        do
        {
          v11 = *v10++;
          v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11];
          [v8 addObject:v12];

          --v9;
        }

        while (v9);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v14[0] = 0;
        _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read current items property\n", v14, 2u);
      }

      v8 = 0;
    }

    free(v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSArray)availableItems
{
  v3 = [(ASAObject *)self sizeOfMainGlobalProperty:1935892841 withQualifier:0 ofSize:0];
  v15 = v3;
  if (v3 && (v4 = v3, (v5 = malloc_type_malloc(v3, 0x47F98D9BuLL)) != 0))
  {
    v6 = v5;
    bzero(v5, v4);
    if ([(ASAObject *)self getMainGlobalProperty:1935892841 withData:v6 ofSize:&v15 withQualifier:0 ofSize:0])
    {
      v7 = v15;
      v8 = [MEMORY[0x277CBEB18] array];
      if (v7 >= 4)
      {
        v9 = v7 >> 2;
        v10 = v6;
        do
        {
          v11 = *v10++;
          v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11];
          [v8 addObject:v12];

          --v9;
        }

        while (v9);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v14[0] = 0;
        _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read available items property\n", v14, 2u);
      }

      v8 = 0;
    }

    free(v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)nameForItem:(unsigned int)a3
{
  v8 = a3;
  v7 = 8;
  cf = 0;
  if ([(ASAObject *)self getMainGlobalProperty:1935894894 withData:&cf ofSize:&v7 withQualifier:&v8 ofSize:4])
  {
    if (cf)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithString:?];
      CFRelease(cf);
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read name for item property\n", v5, 2u);
  }

  v3 = 0;
LABEL_7:

  return v3;
}

- (id)coreAudioClassName
{
  v2 = [(ASAObject *)self objectClass];
  v3 = @"AudioSelectorControl";
  v4 = @"AudioDataSourceControl";
  if (v2 != 1685287523)
  {
    v4 = @"AudioSelectorControl";
  }

  if (v2 == 1751740518)
  {
    v5 = @"AudioHighPassFilterControl";
  }

  else
  {
    v5 = v4;
  }

  if (v2 == 1852601964)
  {
    v6 = @"AudioLineLevelControl";
  }

  else
  {
    v6 = v5;
  }

  if (v2 == 1684370292)
  {
    v3 = @"AudioDataDestinationControl";
  }

  if (v2 == 1668047723)
  {
    v3 = @"AudioClockSourceControl";
  }

  if (v2 <= 1685287522)
  {
    return v3;
  }

  else
  {
    return v6;
  }
}

@end