@interface ACDKeychainItem
- (ACDKeychainItem)init;
- (ACDKeychainItem)initWithPersistentRef:(__CFData *)ref;
- (ACDKeychainItem)initWithPersistentRef:(__CFData *)ref properties:(id)properties;
- (BOOL)_setMetadata:(id)metadata withError:(id *)error;
- (BOOL)hasCustomAccessControl;
- (BOOL)save:(id *)save;
- (NSString)accessGroup;
- (NSString)accessibility;
- (NSString)account;
- (NSString)service;
- (id)_metadataWithError:(id *)error;
- (id)_modifiedProperties;
- (id)debugDescription;
- (id)description;
- (int64_t)version;
- (void)_clearDirtyProperties;
- (void)_markPropertyDirty:(id)dirty;
- (void)_reloadProperties;
- (void)_setValue:(id)value forProperty:(id)property;
- (void)dealloc;
- (void)reload;
- (void)setAccessGroup:(id)group;
- (void)setAccessibility:(id)accessibility;
- (void)setAccount:(id)account;
- (void)setService:(id)service;
- (void)setVersion:(int64_t)version;
@end

@implementation ACDKeychainItem

- (BOOL)hasCustomAccessControl
{
  v2 = [(NSMutableDictionary *)self->_properties valueForKey:*MEMORY[0x277CDBEC0]];
  if (v2)
  {
    LOBYTE(v2) = SecAccessControlGetConstraints() != 0;
  }

  return v2;
}

- (void)dealloc
{
  persistentRef = self->_persistentRef;
  if (persistentRef)
  {
    CFRelease(persistentRef);
  }

  v4.receiver = self;
  v4.super_class = ACDKeychainItem;
  [(ACDKeychainItem *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  account = [(ACDKeychainItem *)self account];
  v7 = ACHashedString();
  service = [(ACDKeychainItem *)self service];
  synchronizable = [(ACDKeychainItem *)self synchronizable];
  v10 = @"NO";
  if (synchronizable)
  {
    v10 = @"YES";
  }

  v11 = [v3 stringWithFormat:@"<%@: %p {username: %@, service: %@, synchronizable: %@}>", v5, self, v7, service, v10];

  return v11;
}

- (NSString)service
{
  v2 = [(NSMutableDictionary *)self->_properties stringValueForKey:*MEMORY[0x277CDC120]];
  v3 = [v2 copy];

  return v3;
}

- (NSString)account
{
  v2 = [(NSMutableDictionary *)self->_properties stringValueForKey:*MEMORY[0x277CDBF20]];
  v3 = [v2 copy];

  return v3;
}

- (ACDKeychainItem)init
{
  [(ACDKeychainItem *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ACDKeychainItem)initWithPersistentRef:(__CFData *)ref
{
  v6.receiver = self;
  v6.super_class = ACDKeychainItem;
  v4 = [(ACDKeychainItem *)&v6 init];
  if (v4)
  {
    v4->_persistentRef = CFRetain(ref);
    [(ACDKeychainItem *)v4 _reloadProperties];
  }

  return v4;
}

- (ACDKeychainItem)initWithPersistentRef:(__CFData *)ref properties:(id)properties
{
  propertiesCopy = properties;
  v11.receiver = self;
  v11.super_class = ACDKeychainItem;
  v7 = [(ACDKeychainItem *)&v11 init];
  if (v7)
  {
    v7->_persistentRef = CFRetain(ref);
    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:propertiesCopy];
    properties = v7->_properties;
    v7->_properties = v8;
  }

  return v7;
}

- (void)reload
{
  [(ACDKeychainItem *)self _clearDirtyProperties];

  [(ACDKeychainItem *)self _reloadProperties];
}

- (BOOL)save:(id *)save
{
  keys[2] = *MEMORY[0x277D85DE8];
  if (self->_persistentRef)
  {
    if ([(NSMutableSet *)self->_dirtyProperties count])
    {
      v5 = *MEMORY[0x277CDC5C8];
      keys[0] = *MEMORY[0x277CDC5F0];
      keys[1] = v5;
      v6 = *MEMORY[0x277CBED28];
      values[0] = self->_persistentRef;
      values[1] = v6;
      v7 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 2, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
      _modifiedProperties = [(ACDKeychainItem *)self _modifiedProperties];
      v9 = SecItemUpdate(v7, _modifiedProperties);
      CFRelease(v7);
      v10 = v9 == 0;
      if (v9)
      {
        if (save)
        {
          *save = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC8] code:v9 userInfo:0];
        }
      }

      else
      {
        [(ACDKeychainItem *)self _clearDirtyProperties];
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else if (save)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:10003 userInfo:0];
    *save = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (NSString)accessGroup
{
  v2 = [(NSMutableDictionary *)self->_properties stringValueForKey:*MEMORY[0x277CDBEC8]];
  v3 = [v2 copy];

  return v3;
}

- (NSString)accessibility
{
  v2 = [(NSMutableDictionary *)self->_properties stringValueForKey:*MEMORY[0x277CDBED8]];
  v3 = [v2 copy];

  return v3;
}

- (id)_metadataWithError:(id *)error
{
  v4 = [(NSMutableDictionary *)self->_properties dataValueForKey:*MEMORY[0x277CDBFB8]];
  if (v4)
  {
    v10 = 0;
    v5 = [MEMORY[0x277CCAC58] propertyListWithData:v4 options:0 format:0 error:&v10];
    v6 = v10;
    if (v6)
    {
      v7 = _ACDKeychainLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(ACDKeychainItem *)v6 _metadataWithError:v7];
      }

      if (error)
      {
        v8 = v6;
        *error = v6;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)version
{
  metadata = [(ACDKeychainItem *)self metadata];
  v3 = [metadata objectForKeyedSubscript:@"ACKeychainItemVersion"];

  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)setAccount:(id)account
{
  accountCopy = account;
  account = [(ACDKeychainItem *)self account];
  v5 = [accountCopy isEqualToString:account];

  if ((v5 & 1) == 0)
  {
    v6 = [accountCopy copy];
    [(ACDKeychainItem *)self _setValue:v6 forProperty:*MEMORY[0x277CDBF20]];
  }
}

- (void)setService:(id)service
{
  serviceCopy = service;
  service = [(ACDKeychainItem *)self service];
  v5 = [serviceCopy isEqualToString:service];

  if ((v5 & 1) == 0)
  {
    v6 = [serviceCopy copy];
    [(ACDKeychainItem *)self _setValue:v6 forProperty:*MEMORY[0x277CDC120]];
  }
}

- (void)setAccessGroup:(id)group
{
  groupCopy = group;
  accessGroup = [(ACDKeychainItem *)self accessGroup];
  v5 = [groupCopy isEqualToString:accessGroup];

  if ((v5 & 1) == 0)
  {
    v6 = [groupCopy copy];
    [(ACDKeychainItem *)self _setValue:v6 forProperty:*MEMORY[0x277CDBEC8]];
  }
}

- (void)setAccessibility:(id)accessibility
{
  accessibilityCopy = accessibility;
  accessibility = [(ACDKeychainItem *)self accessibility];
  v5 = [accessibilityCopy isEqualToString:accessibility];

  if ((v5 & 1) == 0)
  {
    v6 = [accessibilityCopy copy];
    [(ACDKeychainItem *)self _setValue:v6 forProperty:*MEMORY[0x277CDBED8]];
  }
}

- (BOOL)_setMetadata:(id)metadata withError:(id *)error
{
  if (metadata)
  {
    v13 = 0;
    v6 = [MEMORY[0x277CCAC58] dataWithPropertyList:metadata format:100 options:0 error:&v13];
    v7 = v13;
    v8 = v7 == 0;
    if (v7)
    {
      v9 = _ACDKeychainLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [ACDKeychainItem _setMetadata:v7 withError:v9];
      }

      if (error)
      {
        v10 = v7;
        *error = v7;
      }
    }

    else
    {
      [(ACDKeychainItem *)self _setValue:v6 forProperty:*MEMORY[0x277CDBFB8]];
    }
  }

  else
  {
    data = [MEMORY[0x277CBEA90] data];
    [(ACDKeychainItem *)self _setValue:data forProperty:*MEMORY[0x277CDBFB8]];

    return 1;
  }

  return v8;
}

- (void)setVersion:(int64_t)version
{
  v5 = MEMORY[0x277CBEB38];
  metadata = [(ACDKeychainItem *)self metadata];
  v8 = [v5 dictionaryWithDictionary:metadata];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:version];
  [v8 setObject:v7 forKey:@"ACKeychainItemVersion"];

  [(ACDKeychainItem *)self setMetadata:v8];
}

- (void)_setValue:(id)value forProperty:(id)property
{
  properties = self->_properties;
  propertyCopy = property;
  [(NSMutableDictionary *)properties setObject:value forKey:propertyCopy];
  [(ACDKeychainItem *)self _markPropertyDirty:propertyCopy];
}

- (void)_markPropertyDirty:(id)dirty
{
  dirtyCopy = dirty;
  dirtyProperties = self->_dirtyProperties;
  v8 = dirtyCopy;
  if (!dirtyProperties)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->_dirtyProperties;
    self->_dirtyProperties = v6;

    dirtyCopy = v8;
    dirtyProperties = self->_dirtyProperties;
  }

  [(NSMutableSet *)dirtyProperties addObject:dirtyCopy];
}

- (void)_clearDirtyProperties
{
  dirtyProperties = self->_dirtyProperties;
  self->_dirtyProperties = 0;
  MEMORY[0x2821F96F8]();
}

- (id)_modifiedProperties
{
  allObjects = [(NSMutableSet *)self->_dirtyProperties allObjects];
  properties = self->_properties;
  null = [MEMORY[0x277CBEB68] null];
  v6 = [(NSMutableDictionary *)properties objectsForKeys:allObjects notFoundMarker:null];

  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:allObjects];

  return v7;
}

- (void)_reloadProperties
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:self];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  account = [(ACDKeychainItem *)self account];
  v7 = ACHashedString();
  service = [(ACDKeychainItem *)self service];
  accessGroup = [(ACDKeychainItem *)self accessGroup];
  accessibility = [(ACDKeychainItem *)self accessibility];
  synchronizable = [(ACDKeychainItem *)self synchronizable];
  v12 = @"NO";
  if (synchronizable)
  {
    v12 = @"YES";
  }

  v13 = [v3 stringWithFormat:@"<%@: %p {\n\taccount: %@, \n\tservice: %@, \n\taccessGroup: %@, \n\taccessibility: %@, \n\tsynchronizable: %@, \n\tdirtyProperties: %@\n}>", v5, self, v7, service, accessGroup, accessibility, v12, self->_dirtyProperties];

  return v13;
}

- (void)_metadataWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_221D2F000, a2, OS_LOG_TYPE_ERROR, "Failed to decode keychain metadata: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_setMetadata:(uint64_t)a1 withError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_221D2F000, a2, OS_LOG_TYPE_ERROR, "Failed to encode keychain metadata: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end