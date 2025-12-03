@interface ALSCGreenClient
- (ALSCGreenClient)init;
- (BOOL)_attemptReadingValuesFromDiskAndUpdateFileState;
- (BOOL)_readGreenKeysFromDictionary:(id)dictionary;
@end

@implementation ALSCGreenClient

- (ALSCGreenClient)init
{
  v5.receiver = self;
  v5.super_class = ALSCGreenClient;
  v2 = [(ALSCGreenClient *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ALSCGreenClient *)v2 _attemptReadingValuesFromDiskAndUpdateFileState];
  }

  return v3;
}

- (BOOL)_readGreenKeysFromDictionary:(id)dictionary
{
  v5 = [dictionary objectForKey:@"key1"];
  if (v5)
  {
    v6 = v5;
    if (objc_opt_respondsToSelector())
    {
      -[ALSCGreenClient setKey1Value:](self, "setKey1Value:", [v6 BOOLValue]);
    }
  }

  v7 = [dictionary objectForKey:@"key2"];
  if (v7)
  {
    v8 = v7;
    if (objc_opt_respondsToSelector())
    {
      -[ALSCGreenClient setKey2Value:](self, "setKey2Value:", [v8 BOOLValue]);
    }
  }

  v9 = [dictionary objectForKey:@"key3"];
  if (v9)
  {
    v10 = v9;
    if (objc_opt_respondsToSelector())
    {
      -[ALSCGreenClient setKey3Value:](self, "setKey3Value:", [v10 BOOLValue]);
    }
  }

  v11 = [dictionary objectForKey:@"state"];
  if (v11)
  {
    v12 = v11;
    LOBYTE(v11) = (objc_opt_respondsToSelector() & 1) != 0 && [v12 integerValue] > 0;
  }

  return v11;
}

- (BOOL)_attemptReadingValuesFromDiskAndUpdateFileState
{
  cachingAllowed = self->_cachingAllowed;
  if (!cachingAllowed)
  {
    if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
    {
      cachingAllowed = -[ALSCGreenClient _readGreenKeysFromDictionary:](self, "_readGreenKeysFromDictionary:", [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:@"/var/mobile/Library/Application Support/com.apple.palette.green.plist"]);
      self->_cachingAllowed = cachingAllowed;
    }

    else
    {
      return self->_cachingAllowed;
    }
  }

  return cachingAllowed;
}

@end