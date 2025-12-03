@interface ASAObject
- (ASAObject)init;
- (ASAObject)initWithAudioObjectID:(unsigned int)d;
- (BOOL)getProperty:(unsigned int)property scope:(unsigned int)scope ofElement:(unsigned int)element withData:(void *)data ofSize:(unsigned int *)size withQualifier:(void *)qualifier ofSize:(unsigned int)inQualifierDataSize;
- (BOOL)hasProperty:(unsigned int)property scope:(unsigned int)scope ofElement:(unsigned int)element;
- (BOOL)isPropertySettable:(unsigned int)settable scope:(unsigned int)scope ofElement:(unsigned int)element;
- (BOOL)onQueue:(id)queue forProperty:(unsigned int)property scope:(unsigned int)scope ofElement:(unsigned int)element addListener:(id)listener;
- (BOOL)onQueue:(id)queue forProperty:(unsigned int)property scope:(unsigned int)scope ofElement:(unsigned int)element removeListener:(id)listener;
- (BOOL)setProperty:(unsigned int)property scope:(unsigned int)scope ofElement:(unsigned int)element withData:(void *)data ofSize:(unsigned int)size withQualifier:(void *)qualifier ofSize:(unsigned int)ofSize;
- (NSArray)ownedObjectIDs;
- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree;
- (unsigned)baseClass;
- (unsigned)objectClass;
- (unsigned)ownerID;
- (unsigned)sizeOfProperty:(unsigned int)property scope:(unsigned int)scope ofElement:(unsigned int)element withQualifier:(void *)qualifier ofSize:(unsigned int)size;
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

- (ASAObject)initWithAudioObjectID:(unsigned int)d
{
  v5.receiver = self;
  v5.super_class = ASAObject;
  result = [(ASAObject *)&v5 init];
  if (result)
  {
    if (d)
    {
      result->_objectID = d;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

- (BOOL)hasProperty:(unsigned int)property scope:(unsigned int)scope ofElement:(unsigned int)element
{
  inAddress.mSelector = property;
  inAddress.mScope = scope;
  inAddress.mElement = element;
  return AudioObjectHasProperty(self->_objectID, &inAddress) != 0;
}

- (unsigned)sizeOfProperty:(unsigned int)property scope:(unsigned int)scope ofElement:(unsigned int)element withQualifier:(void *)qualifier ofSize:(unsigned int)size
{
  v29 = *MEMORY[0x277D85DE8];
  v17.mElement = element;
  outDataSize = 0;
  v17.mSelector = property;
  v17.mScope = scope;
  result = AudioObjectHasProperty(self->_objectID, &v17);
  if (result)
  {
    PropertyDataSize = AudioObjectGetPropertyDataSize(self->_objectID, &v17, size, qualifier, &outDataSize);
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
      propertyCopy = property;
      v23 = 1024;
      scopeCopy = scope;
      v25 = 1024;
      elementCopy = element;
      v27 = 1024;
      v28 = PropertyDataSize;
      _os_log_debug_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "object %u sizeOfProperty {%u, %u, %u} returned status %u", buf, 0x20u);
    }

    result = outDataSize;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)getProperty:(unsigned int)property scope:(unsigned int)scope ofElement:(unsigned int)element withData:(void *)data ofSize:(unsigned int *)size withQualifier:(void *)qualifier ofSize:(unsigned int)inQualifierDataSize
{
  v32 = *MEMORY[0x277D85DE8];
  inAddress.mSelector = property;
  inAddress.mScope = scope;
  inAddress.mElement = element;
  if (AudioObjectHasProperty(self->_objectID, &inAddress))
  {
    PropertyData = AudioObjectGetPropertyData(self->_objectID, &inAddress, inQualifierDataSize, qualifier, size, data);
    v17 = PropertyData == 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      objectID = self->_objectID;
      *buf = 67110144;
      v23 = objectID;
      v24 = 1024;
      propertyCopy = property;
      v26 = 1024;
      scopeCopy = scope;
      v28 = 1024;
      elementCopy = element;
      v30 = 1024;
      v31 = PropertyData;
      _os_log_debug_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "object %u getProperty {%u, %u, %u} returned status %u", buf, 0x20u);
    }
  }

  else
  {
    v17 = 0;
    if (data && size)
    {
      bzero(data, *size);
      v17 = 0;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)setProperty:(unsigned int)property scope:(unsigned int)scope ofElement:(unsigned int)element withData:(void *)data ofSize:(unsigned int)size withQualifier:(void *)qualifier ofSize:(unsigned int)ofSize
{
  v33 = *MEMORY[0x277D85DE8];
  inAddress.mSelector = property;
  inAddress.mScope = scope;
  inAddress.mElement = element;
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
      v17 = AudioObjectSetPropertyData(self->_objectID, &inAddress, 0, 0, size, data);
      v15 = v17 == 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        objectID = self->_objectID;
        *buf = 67110144;
        v24 = objectID;
        v25 = 1024;
        propertyCopy = property;
        v27 = 1024;
        scopeCopy = scope;
        v29 = 1024;
        elementCopy = element;
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

- (BOOL)isPropertySettable:(unsigned int)settable scope:(unsigned int)scope ofElement:(unsigned int)element
{
  v28 = *MEMORY[0x277D85DE8];
  outIsSettable = 0;
  v16.mSelector = settable;
  v16.mScope = scope;
  v16.mElement = element;
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
      settableCopy = settable;
      v22 = 1024;
      scopeCopy = scope;
      v24 = 1024;
      elementCopy = element;
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

- (BOOL)onQueue:(id)queue forProperty:(unsigned int)property scope:(unsigned int)scope ofElement:(unsigned int)element addListener:(id)listener
{
  v30 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  listenerCopy = listener;
  inAddress.mSelector = property;
  inAddress.mScope = scope;
  inAddress.mElement = element;
  if (property == 707406378 || AudioObjectHasProperty(self->_objectID, &inAddress))
  {
    v14 = AudioObjectAddPropertyListenerBlock(self->_objectID, &inAddress, queueCopy, listenerCopy);
    v15 = v14 == 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      objectID = self->_objectID;
      *buf = 67110144;
      v21 = objectID;
      v22 = 1024;
      propertyCopy = property;
      v24 = 1024;
      scopeCopy = scope;
      v26 = 1024;
      elementCopy = element;
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

- (BOOL)onQueue:(id)queue forProperty:(unsigned int)property scope:(unsigned int)scope ofElement:(unsigned int)element removeListener:(id)listener
{
  v30 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  listenerCopy = listener;
  inAddress.mSelector = property;
  inAddress.mScope = scope;
  inAddress.mElement = element;
  if (property == 707406378 || AudioObjectHasProperty(self->_objectID, &inAddress))
  {
    v14 = AudioObjectRemovePropertyListenerBlock(self->_objectID, &inAddress, queueCopy, listenerCopy);
    v15 = v14 == 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      objectID = self->_objectID;
      *buf = 67110144;
      v21 = objectID;
      v22 = 1024;
      propertyCopy = property;
      v24 = 1024;
      scopeCopy = scope;
      v26 = 1024;
      elementCopy = element;
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
    array = 0;
    if (v7)
    {
      v9 = v15;
      array = [MEMORY[0x277CBEB18] array];
      if (v9 >= 4)
      {
        v10 = v9 >> 2;
        v11 = v6;
        do
        {
          v12 = *v11++;
          v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v12];
          [array addObject:v13];

          --v10;
        }

        while (v10);
      }
    }

    free(v6);
  }

  else
  {
    array = 0;
  }

  return array;
}

- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree
{
  v32 = *MEMORY[0x277D85DE8];
  indentCopy = indent;
  string = [MEMORY[0x277CCAB68] string];
  coreAudioClassName = [(ASAObject *)self coreAudioClassName];
  [string appendFormat:@"%@+%s\n", indentCopy, objc_msgSend(coreAudioClassName, "UTF8String")];

  [string appendFormat:@"%@|    Object ID: %u\n", indentCopy, -[ASAObject objectID](self, "objectID")];
  baseClass = [(ASAObject *)self baseClass];
  LODWORD(v9) = baseClass >> 24;
  if (((baseClass >> 24) - 32) >= 0x5F)
  {
    v9 = 32;
  }

  else
  {
    v9 = v9;
  }

  LODWORD(v10) = baseClass << 8 >> 24;
  if ((v10 - 32) >= 0x5F)
  {
    v10 = 32;
  }

  else
  {
    v10 = v10;
  }

  LODWORD(v11) = baseClass >> 8;
  if ((v11 - 32) >= 0x5F)
  {
    v11 = 32;
  }

  else
  {
    v11 = v11;
  }

  if ((baseClass - 32) >= 0x5F)
  {
    v12 = 32;
  }

  else
  {
    v12 = baseClass;
  }

  [string appendFormat:@"%@|    Base Class: %c%c%c%c\n", indentCopy, v9, v10, v11, v12];
  objectClass = [(ASAObject *)self objectClass];
  LODWORD(v14) = objectClass >> 24;
  if (((objectClass >> 24) - 32) >= 0x5F)
  {
    v14 = 32;
  }

  else
  {
    v14 = v14;
  }

  LODWORD(v15) = objectClass << 8 >> 24;
  if ((v15 - 32) >= 0x5F)
  {
    v15 = 32;
  }

  else
  {
    v15 = v15;
  }

  LODWORD(v16) = objectClass >> 8;
  if ((v16 - 32) >= 0x5F)
  {
    v16 = 32;
  }

  else
  {
    v16 = v16;
  }

  if ((objectClass - 32) >= 0x5F)
  {
    v17 = 32;
  }

  else
  {
    v17 = objectClass;
  }

  [string appendFormat:@"%@|    Object Class: %c%c%c%c\n", indentCopy, v14, v15, v16, v17];
  [string appendFormat:@"%@|    Owner ID: %u\n", indentCopy, -[ASAObject ownerID](self, "ownerID")];
  ownedObjectIDs = [(ASAObject *)self ownedObjectIDs];
  if ([ownedObjectIDs count])
  {
    [string appendFormat:@"%@|    Owned Objects:\n", indentCopy];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v19 = ownedObjectIDs;
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

          [string appendFormat:@"%@|        %u: %u\n", indentCopy, v22, objc_msgSend(*(*(&v27 + 1) + 8 * i), "unsignedIntValue")];
          v22 = (v22 + 1);
        }

        v21 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v21);
    }
  }

  v25 = *MEMORY[0x277D85DE8];

  return string;
}

@end