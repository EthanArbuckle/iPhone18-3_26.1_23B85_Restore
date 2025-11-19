@interface ASAObject
- (ASAObject)init;
- (ASAObject)initWithAudioObjectID:(unsigned int)a3;
- (BOOL)getProperty:(unsigned int)a3 scope:(unsigned int)a4 ofElement:(unsigned int)a5 withData:(void *)a6 ofSize:(unsigned int *)a7 withQualifier:(void *)a8 ofSize:(unsigned int)inQualifierDataSize;
- (BOOL)hasProperty:(unsigned int)a3 scope:(unsigned int)a4 ofElement:(unsigned int)a5;
- (BOOL)isPropertySettable:(unsigned int)a3 scope:(unsigned int)a4 ofElement:(unsigned int)a5;
- (BOOL)onQueue:(id)a3 forProperty:(unsigned int)a4 scope:(unsigned int)a5 ofElement:(unsigned int)a6 addListener:(id)a7;
- (BOOL)onQueue:(id)a3 forProperty:(unsigned int)a4 scope:(unsigned int)a5 ofElement:(unsigned int)a6 removeListener:(id)a7;
- (BOOL)setProperty:(unsigned int)a3 scope:(unsigned int)a4 ofElement:(unsigned int)a5 withData:(void *)a6 ofSize:(unsigned int)a7 withQualifier:(void *)a8 ofSize:(unsigned int)a9;
- (NSArray)ownedObjectIDs;
- (id)diagnosticDescriptionWithIndent:(id)a3 walkTree:(BOOL)a4;
- (unsigned)baseClass;
- (unsigned)objectClass;
- (unsigned)ownerID;
- (unsigned)sizeOfProperty:(unsigned int)a3 scope:(unsigned int)a4 ofElement:(unsigned int)a5 withQualifier:(void *)a6 ofSize:(unsigned int)a7;
@end

@implementation ASAObject

- (ASAObject)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[ASAObject init]"];
  [v3 raise:v4 format:{@"Do not call %@", v5}];

  return 0;
}

- (ASAObject)initWithAudioObjectID:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = ASAObject;
  result = [(ASAObject *)&v5 init];
  if (result)
  {
    if (a3)
    {
      result->_objectID = a3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

- (BOOL)hasProperty:(unsigned int)a3 scope:(unsigned int)a4 ofElement:(unsigned int)a5
{
  inAddress.mSelector = a3;
  inAddress.mScope = a4;
  inAddress.mElement = a5;
  return AudioObjectHasProperty(self->_objectID, &inAddress) != 0;
}

- (unsigned)sizeOfProperty:(unsigned int)a3 scope:(unsigned int)a4 ofElement:(unsigned int)a5 withQualifier:(void *)a6 ofSize:(unsigned int)a7
{
  v29 = *MEMORY[0x277D85DE8];
  v17.mElement = a5;
  outDataSize = 0;
  v17.mSelector = a3;
  v17.mScope = a4;
  result = AudioObjectHasProperty(self->_objectID, &v17);
  if (result)
  {
    PropertyDataSize = AudioObjectGetPropertyDataSize(self->_objectID, &v17, a7, a6, &outDataSize);
    if (PropertyDataSize)
    {
      outDataSize = 0;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      objectID = self->_objectID;
      *buf = 67110144;
      v20 = objectID;
      v21 = 1024;
      v22 = a3;
      v23 = 1024;
      v24 = a4;
      v25 = 1024;
      v26 = a5;
      v27 = 1024;
      v28 = PropertyDataSize;
      _os_log_debug_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "object %u sizeOfProperty {%u, %u, %u} returned status %u", buf, 0x20u);
    }

    result = outDataSize;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)getProperty:(unsigned int)a3 scope:(unsigned int)a4 ofElement:(unsigned int)a5 withData:(void *)a6 ofSize:(unsigned int *)a7 withQualifier:(void *)a8 ofSize:(unsigned int)inQualifierDataSize
{
  v32 = *MEMORY[0x277D85DE8];
  inAddress.mSelector = a3;
  inAddress.mScope = a4;
  inAddress.mElement = a5;
  if (AudioObjectHasProperty(self->_objectID, &inAddress))
  {
    PropertyData = AudioObjectGetPropertyData(self->_objectID, &inAddress, inQualifierDataSize, a8, a7, a6);
    v17 = PropertyData == 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      objectID = self->_objectID;
      *buf = 67110144;
      v23 = objectID;
      v24 = 1024;
      v25 = a3;
      v26 = 1024;
      v27 = a4;
      v28 = 1024;
      v29 = a5;
      v30 = 1024;
      v31 = PropertyData;
      _os_log_debug_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "object %u getProperty {%u, %u, %u} returned status %u", buf, 0x20u);
    }
  }

  else
  {
    v17 = 0;
    if (a6 && a7)
    {
      bzero(a6, *a7);
      v17 = 0;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)setProperty:(unsigned int)a3 scope:(unsigned int)a4 ofElement:(unsigned int)a5 withData:(void *)a6 ofSize:(unsigned int)a7 withQualifier:(void *)a8 ofSize:(unsigned int)a9
{
  v33 = *MEMORY[0x277D85DE8];
  inAddress.mSelector = a3;
  inAddress.mScope = a4;
  inAddress.mElement = a5;
  if (AudioObjectHasProperty(self->_objectID, &inAddress))
  {
    outIsSettable = 0;
    v15 = 0;
    if (AudioObjectIsPropertySettable(self->_objectID, &inAddress, &outIsSettable))
    {
      v16 = 1;
    }

    else
    {
      v16 = outIsSettable == 0;
    }

    if (!v16)
    {
      v17 = AudioObjectSetPropertyData(self->_objectID, &inAddress, 0, 0, a7, a6);
      v15 = v17 == 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        objectID = self->_objectID;
        *buf = 67110144;
        v24 = objectID;
        v25 = 1024;
        v26 = a3;
        v27 = 1024;
        v28 = a4;
        v29 = 1024;
        v30 = a5;
        v31 = 1024;
        v32 = v17;
        _os_log_debug_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "object %u setProperty {%u, %u, %u} returned status %u", buf, 0x20u);
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)isPropertySettable:(unsigned int)a3 scope:(unsigned int)a4 ofElement:(unsigned int)a5
{
  v28 = *MEMORY[0x277D85DE8];
  outIsSettable = 0;
  v16.mSelector = a3;
  v16.mScope = a4;
  v16.mElement = a5;
  if (AudioObjectHasProperty(self->_objectID, &v16))
  {
    IsPropertySettable = AudioObjectIsPropertySettable(self->_objectID, &v16, &outIsSettable);
    v10 = IsPropertySettable;
    if (outIsSettable)
    {
      v11 = IsPropertySettable == 0;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      objectID = self->_objectID;
      *buf = 67110144;
      v19 = objectID;
      v20 = 1024;
      v21 = a3;
      v22 = 1024;
      v23 = a4;
      v24 = 1024;
      v25 = a5;
      v26 = 1024;
      v27 = v10;
      _os_log_debug_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "object %u isPropertySettable {%u, %u, %u} returned status %u", buf, 0x20u);
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)onQueue:(id)a3 forProperty:(unsigned int)a4 scope:(unsigned int)a5 ofElement:(unsigned int)a6 addListener:(id)a7
{
  v30 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a7;
  inAddress.mSelector = a4;
  inAddress.mScope = a5;
  inAddress.mElement = a6;
  if (a4 == 707406378 || AudioObjectHasProperty(self->_objectID, &inAddress))
  {
    v14 = AudioObjectAddPropertyListenerBlock(self->_objectID, &inAddress, v12, v13);
    v15 = v14 == 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      objectID = self->_objectID;
      *buf = 67110144;
      v21 = objectID;
      v22 = 1024;
      v23 = a4;
      v24 = 1024;
      v25 = a5;
      v26 = 1024;
      v27 = a6;
      v28 = 1024;
      v29 = v14;
      _os_log_debug_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "object %u addListener {%u, %u, %u} returned status %u", buf, 0x20u);
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)onQueue:(id)a3 forProperty:(unsigned int)a4 scope:(unsigned int)a5 ofElement:(unsigned int)a6 removeListener:(id)a7
{
  v30 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a7;
  inAddress.mSelector = a4;
  inAddress.mScope = a5;
  inAddress.mElement = a6;
  if (a4 == 707406378 || AudioObjectHasProperty(self->_objectID, &inAddress))
  {
    v14 = AudioObjectRemovePropertyListenerBlock(self->_objectID, &inAddress, v12, v13);
    v15 = v14 == 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      objectID = self->_objectID;
      *buf = 67110144;
      v21 = objectID;
      v22 = 1024;
      v23 = a4;
      v24 = 1024;
      v25 = a5;
      v26 = 1024;
      v27 = a6;
      v28 = 1024;
      v29 = v14;
      _os_log_debug_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "object %u removeListener {%u, %u, %u} returned status %u", buf, 0x20u);
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (unsigned)baseClass
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1650682995 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read base class property\n", v3, 2u);
  }

  return v4;
}

- (unsigned)objectClass
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1668047219 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read object class property\n", v3, 2u);
  }

  return v4;
}

- (unsigned)ownerID
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1937007734 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read object owner property\n", v3, 2u);
  }

  return v4;
}

- (NSArray)ownedObjectIDs
{
  v3 = [(ASAObject *)self sizeOfMainGlobalProperty:1870098020 withQualifier:0 ofSize:0];
  v15 = v3;
  if (v3 && (v4 = v3, (v5 = malloc_type_malloc(v3, 0xF8F85096uLL)) != 0))
  {
    v6 = v5;
    bzero(v5, v4);
    v7 = [(ASAObject *)self getMainGlobalProperty:1870098020 withData:v6 ofSize:&v15 withQualifier:0 ofSize:0];
    v8 = 0;
    if (v7)
    {
      v9 = v15;
      v8 = [MEMORY[0x277CBEB18] array];
      if (v9 >= 4)
      {
        v10 = v9 >> 2;
        v11 = v6;
        do
        {
          v12 = *v11++;
          v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v12];
          [v8 addObject:v13];

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

- (id)diagnosticDescriptionWithIndent:(id)a3 walkTree:(BOOL)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CCAB68] string];
  v7 = [(ASAObject *)self coreAudioClassName];
  [v6 appendFormat:@"%@+%s\n", v5, objc_msgSend(v7, "UTF8String")];

  [v6 appendFormat:@"%@|    Object ID: %u\n", v5, -[ASAObject objectID](self, "objectID")];
  v8 = [(ASAObject *)self baseClass];
  LODWORD(v9) = v8 >> 24;
  if (((v8 >> 24) - 32) >= 0x5F)
  {
    v9 = 32;
  }

  else
  {
    v9 = v9;
  }

  LODWORD(v10) = v8 << 8 >> 24;
  if ((v10 - 32) >= 0x5F)
  {
    v10 = 32;
  }

  else
  {
    v10 = v10;
  }

  LODWORD(v11) = v8 >> 8;
  if ((v11 - 32) >= 0x5F)
  {
    v11 = 32;
  }

  else
  {
    v11 = v11;
  }

  if ((v8 - 32) >= 0x5F)
  {
    v12 = 32;
  }

  else
  {
    v12 = v8;
  }

  [v6 appendFormat:@"%@|    Base Class: %c%c%c%c\n", v5, v9, v10, v11, v12];
  v13 = [(ASAObject *)self objectClass];
  LODWORD(v14) = v13 >> 24;
  if (((v13 >> 24) - 32) >= 0x5F)
  {
    v14 = 32;
  }

  else
  {
    v14 = v14;
  }

  LODWORD(v15) = v13 << 8 >> 24;
  if ((v15 - 32) >= 0x5F)
  {
    v15 = 32;
  }

  else
  {
    v15 = v15;
  }

  LODWORD(v16) = v13 >> 8;
  if ((v16 - 32) >= 0x5F)
  {
    v16 = 32;
  }

  else
  {
    v16 = v16;
  }

  if ((v13 - 32) >= 0x5F)
  {
    v17 = 32;
  }

  else
  {
    v17 = v13;
  }

  [v6 appendFormat:@"%@|    Object Class: %c%c%c%c\n", v5, v14, v15, v16, v17];
  [v6 appendFormat:@"%@|    Owner ID: %u\n", v5, -[ASAObject ownerID](self, "ownerID")];
  v18 = [(ASAObject *)self ownedObjectIDs];
  if ([v18 count])
  {
    [v6 appendFormat:@"%@|    Owned Objects:\n", v5];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v19 = v18;
    v20 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      v23 = *v28;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v28 != v23)
          {
            objc_enumerationMutation(v19);
          }

          [v6 appendFormat:@"%@|        %u: %u\n", v5, v22, objc_msgSend(*(*(&v27 + 1) + 8 * i), "unsignedIntValue")];
          v22 = (v22 + 1);
        }

        v21 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v21);
    }
  }

  v25 = *MEMORY[0x277D85DE8];

  return v6;
}

@end