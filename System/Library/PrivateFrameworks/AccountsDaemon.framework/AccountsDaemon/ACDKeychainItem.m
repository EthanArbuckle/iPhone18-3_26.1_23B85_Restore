@interface ACDKeychainItem
- (ACDKeychainItem)init;
- (ACDKeychainItem)initWithPersistentRef:(__CFData *)a3;
- (ACDKeychainItem)initWithPersistentRef:(__CFData *)a3 properties:(id)a4;
- (BOOL)_setMetadata:(id)a3 withError:(id *)a4;
- (BOOL)hasCustomAccessControl;
- (BOOL)save:(id *)a3;
- (NSString)accessGroup;
- (NSString)accessibility;
- (NSString)account;
- (NSString)service;
- (id)_metadataWithError:(id *)a3;
- (id)_modifiedProperties;
- (id)debugDescription;
- (id)description;
- (int64_t)version;
- (void)_clearDirtyProperties;
- (void)_markPropertyDirty:(id)a3;
- (void)_reloadProperties;
- (void)_setValue:(id)a3 forProperty:(id)a4;
- (void)dealloc;
- (void)reload;
- (void)setAccessGroup:(id)a3;
- (void)setAccessibility:(id)a3;
- (void)setAccount:(id)a3;
- (void)setService:(id)a3;
- (void)setVersion:(int64_t)a3;
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
  v6 = [(ACDKeychainItem *)self account];
  v7 = ACHashedString();
  v8 = [(ACDKeychainItem *)self service];
  v9 = [(ACDKeychainItem *)self synchronizable];
  v10 = @"NO";
  if (v9)
  {
    v10 = @"YES";
  }

  v11 = [v3 stringWithFormat:@"<%@: %p {username: %@, service: %@, synchronizable: %@}>", v5, self, v7, v8, v10];

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

- (ACDKeychainItem)initWithPersistentRef:(__CFData *)a3
{
  v6.receiver = self;
  v6.super_class = ACDKeychainItem;
  v4 = [(ACDKeychainItem *)&v6 init];
  if (v4)
  {
    v4->_persistentRef = CFRetain(a3);
    [(ACDKeychainItem *)v4 _reloadProperties];
  }

  return v4;
}

- (ACDKeychainItem)initWithPersistentRef:(__CFData *)a3 properties:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = ACDKeychainItem;
  v7 = [(ACDKeychainItem *)&v11 init];
  if (v7)
  {
    v7->_persistentRef = CFRetain(a3);
    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v6];
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

- (BOOL)save:(id *)a3
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
      v8 = [(ACDKeychainItem *)self _modifiedProperties];
      v9 = SecItemUpdate(v7, v8);
      CFRelease(v7);
      v10 = v9 == 0;
      if (v9)
      {
        if (a3)
        {
          *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC8] code:v9 userInfo:0];
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

  else if (a3)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:10003 userInfo:0];
    *a3 = v10 = 0;
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

- (id)_metadataWithError:(id *)a3
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

      if (a3)
      {
        v8 = v6;
        *a3 = v6;
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
  v2 = [(ACDKeychainItem *)self metadata];
  v3 = [v2 objectForKeyedSubscript:@"ACKeychainItemVersion"];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAccount:(id)a3
{
  v7 = a3;
  v4 = [(ACDKeychainItem *)self account];
  v5 = [v7 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [v7 copy];
    [(ACDKeychainItem *)self _setValue:v6 forProperty:*MEMORY[0x277CDBF20]];
  }
}

- (void)setService:(id)a3
{
  v7 = a3;
  v4 = [(ACDKeychainItem *)self service];
  v5 = [v7 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [v7 copy];
    [(ACDKeychainItem *)self _setValue:v6 forProperty:*MEMORY[0x277CDC120]];
  }
}

- (void)setAccessGroup:(id)a3
{
  v7 = a3;
  v4 = [(ACDKeychainItem *)self accessGroup];
  v5 = [v7 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [v7 copy];
    [(ACDKeychainItem *)self _setValue:v6 forProperty:*MEMORY[0x277CDBEC8]];
  }
}

- (void)setAccessibility:(id)a3
{
  v7 = a3;
  v4 = [(ACDKeychainItem *)self accessibility];
  v5 = [v7 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [v7 copy];
    [(ACDKeychainItem *)self _setValue:v6 forProperty:*MEMORY[0x277CDBED8]];
  }
}

- (BOOL)_setMetadata:(id)a3 withError:(id *)a4
{
  if (a3)
  {
    v13 = 0;
    v6 = [MEMORY[0x277CCAC58] dataWithPropertyList:a3 format:100 options:0 error:&v13];
    v7 = v13;
    v8 = v7 == 0;
    if (v7)
    {
      v9 = _ACDKeychainLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [ACDKeychainItem _setMetadata:v7 withError:v9];
      }

      if (a4)
      {
        v10 = v7;
        *a4 = v7;
      }
    }

    else
    {
      [(ACDKeychainItem *)self _setValue:v6 forProperty:*MEMORY[0x277CDBFB8]];
    }
  }

  else
  {
    v11 = [MEMORY[0x277CBEA90] data];
    [(ACDKeychainItem *)self _setValue:v11 forProperty:*MEMORY[0x277CDBFB8]];

    return 1;
  }

  return v8;
}

- (void)setVersion:(int64_t)a3
{
  v5 = MEMORY[0x277CBEB38];
  v6 = [(ACDKeychainItem *)self metadata];
  v8 = [v5 dictionaryWithDictionary:v6];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v8 setObject:v7 forKey:@"ACKeychainItemVersion"];

  [(ACDKeychainItem *)self setMetadata:v8];
}

- (void)_setValue:(id)a3 forProperty:(id)a4
{
  properties = self->_properties;
  v7 = a4;
  [(NSMutableDictionary *)properties setObject:a3 forKey:v7];
  [(ACDKeychainItem *)self _markPropertyDirty:v7];
}

- (void)_markPropertyDirty:(id)a3
{
  v4 = a3;
  dirtyProperties = self->_dirtyProperties;
  v8 = v4;
  if (!dirtyProperties)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->_dirtyProperties;
    self->_dirtyProperties = v6;

    v4 = v8;
    dirtyProperties = self->_dirtyProperties;
  }

  [(NSMutableSet *)dirtyProperties addObject:v4];
}

- (void)_clearDirtyProperties
{
  dirtyProperties = self->_dirtyProperties;
  self->_dirtyProperties = 0;
  MEMORY[0x2821F96F8]();
}

- (id)_modifiedProperties
{
  v3 = [(NSMutableSet *)self->_dirtyProperties allObjects];
  properties = self->_properties;
  v5 = [MEMORY[0x277CBEB68] null];
  v6 = [(NSMutableDictionary *)properties objectsForKeys:v3 notFoundMarker:v5];

  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v3];

  return v7;
}

- (void)_reloadProperties
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:a1];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ACDKeychainItem *)self account];
  v7 = ACHashedString();
  v8 = [(ACDKeychainItem *)self service];
  v9 = [(ACDKeychainItem *)self accessGroup];
  v10 = [(ACDKeychainItem *)self accessibility];
  v11 = [(ACDKeychainItem *)self synchronizable];
  v12 = @"NO";
  if (v11)
  {
    v12 = @"YES";
  }

  v13 = [v3 stringWithFormat:@"<%@: %p {\n\taccount: %@, \n\tservice: %@, \n\taccessGroup: %@, \n\taccessibility: %@, \n\tsynchronizable: %@, \n\tdirtyProperties: %@\n}>", v5, self, v7, v8, v9, v10, v12, self->_dirtyProperties];

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