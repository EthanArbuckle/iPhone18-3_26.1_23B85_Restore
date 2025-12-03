@interface KeychainWrapper
- (KeychainWrapper)init;
- (id)dictionaryToSecItemFormat:(id)format;
- (id)secItemFormatToDictionary:(id)dictionary;
- (void)mySetObject:(id)object forKey:(id)key;
- (void)resetKeychainItem;
- (void)setPersonId:(id)id;
- (void)writeToKeychain;
@end

@implementation KeychainWrapper

- (KeychainWrapper)init
{
  v11.receiver = self;
  v11.super_class = KeychainWrapper;
  v2 = [(KeychainWrapper *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    genericPasswordQuery = v2->genericPasswordQuery;
    v2->genericPasswordQuery = v3;

    [(NSMutableDictionary *)v2->genericPasswordQuery setObject:kSecClassGenericPassword forKey:kSecClass];
    v5 = [NSData dataWithBytes:"com.apple.podcasts.accountId" length:28];
    [(NSMutableDictionary *)v2->genericPasswordQuery setObject:v5 forKey:kSecAttrGeneric];
    [(NSMutableDictionary *)v2->genericPasswordQuery setObject:kSecMatchLimitOne forKey:kSecMatchLimit];
    [(NSMutableDictionary *)v2->genericPasswordQuery setObject:kCFBooleanTrue forKey:kSecAttrSynchronizable];
    [(NSMutableDictionary *)v2->genericPasswordQuery setObject:kCFBooleanTrue forKey:kSecReturnAttributes];
    result = 0;
    v6 = SecItemCopyMatching(v2->genericPasswordQuery, &result);
    if (v6 == -25300)
    {
      [(KeychainWrapper *)v2 resetKeychainItem];
    }

    else if (!v6)
    {
      v7 = result;
      v8 = [(KeychainWrapper *)v2 secItemFormatToDictionary:result];
      [(KeychainWrapper *)v2 setKeychainData:v8];

LABEL_8:
      return v2;
    }

    if (result)
    {
      CFRelease(result);
    }

    goto LABEL_8;
  }

  return v2;
}

- (void)mySetObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (objectCopy)
  {
    v7 = [(NSMutableDictionary *)self->keychainData objectForKey:keyCopy];
    if (([v7 isEqual:objectCopy] & 1) == 0)
    {
      [(NSMutableDictionary *)self->keychainData setObject:objectCopy forKey:keyCopy];
      [(KeychainWrapper *)self writeToKeychain];
    }
  }
}

- (void)setPersonId:(id)id
{
  if (id)
  {

    [KeychainWrapper mySetObject:"mySetObject:forKey:" forKey:?];
  }

  else
  {
    [(KeychainWrapper *)self resetKeychainItem];

    [(KeychainWrapper *)self writeToKeychain];
  }
}

- (void)resetKeychainItem
{
  if (self->keychainData)
  {
    v3 = [(KeychainWrapper *)self dictionaryToSecItemFormat:?];
    v4 = SecItemDelete(v3);
    v5 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "problem deleting current keychain item (%li).", &v6, 0xCu);
    }
  }

  else
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    [(KeychainWrapper *)self setKeychainData:v3];
  }

  [(NSMutableDictionary *)self->keychainData setObject:@"Podcasts Account Identity" forKey:kSecAttrLabel];
  [(NSMutableDictionary *)self->keychainData setObject:@"Podcasts Account Identity" forKey:kSecAttrDescription];
  [(NSMutableDictionary *)self->keychainData setObject:@"accountId" forKey:kSecAttrAccount];
  [(NSMutableDictionary *)self->keychainData setObject:@"com.apple.podcasts" forKey:kSecAttrService];
  [(NSMutableDictionary *)self->keychainData setObject:&stru_1004F3018 forKey:kSecValueData];
  [(NSMutableDictionary *)self->keychainData setObject:kCFBooleanTrue forKey:kSecAttrSynchronizable];
  [(NSMutableDictionary *)self->keychainData setObject:kCFBooleanTrue forKey:kSecAttrIsInvisible];
}

- (id)dictionaryToSecItemFormat:(id)format
{
  formatCopy = format;
  v4 = [NSMutableDictionary dictionaryWithDictionary:formatCopy];
  v5 = [NSData dataWithBytes:"com.apple.podcasts.accountId" length:28];
  [v4 setObject:v5 forKey:kSecAttrGeneric];
  [v4 setObject:kSecClassGenericPassword forKey:kSecClass];
  v6 = [formatCopy objectForKey:kSecValueData];

  v7 = &stru_1004F3018;
  if (v6)
  {
    v7 = v6;
  }

  v8 = v7;

  v9 = [(__CFString *)v8 dataUsingEncoding:4];

  [v4 setObject:v9 forKey:kSecValueData];

  return v4;
}

- (id)secItemFormatToDictionary:(id)dictionary
{
  v3 = [NSMutableDictionary dictionaryWithDictionary:dictionary];
  [v3 setObject:kCFBooleanTrue forKey:kSecReturnData];
  [v3 setObject:kSecClassGenericPassword forKey:kSecClass];
  result = 0;
  if (SecItemCopyMatching(v3, &result))
  {
    if (result)
    {
      CFRelease(result);
    }
  }

  else
  {
    [v3 removeObjectForKey:kSecReturnData];
    v4 = [NSString alloc];
    v5 = result;
    bytes = [result bytes];
    v7 = [v4 initWithBytes:bytes length:objc_msgSend(result encoding:{"length"), 4}];

    [v3 setObject:v7 forKey:kSecValueData];
  }

  return v3;
}

- (void)writeToKeychain
{
  result = 0;
  NSLog(@"genericPasswordQuery: %@", a2, self->genericPasswordQuery);
  v3 = [(KeychainWrapper *)self dictionaryToSecItemFormat:self->keychainData];
  NSLog(@"secItemFormat: %@", v3);

  if (SecItemCopyMatching(self->genericPasswordQuery, &result))
  {
    if (SecItemAdd([(KeychainWrapper *)self dictionaryToSecItemFormat:self->keychainData], 0))
    {
      v4 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Couldn't add the Keychain Item.", buf, 2u);
      }
    }

    if (result)
    {
      CFRelease(result);
    }
  }

  else
  {
    v5 = result;
    v6 = [NSMutableDictionary dictionaryWithDictionary:result];

    v7 = [(NSMutableDictionary *)self->genericPasswordQuery objectForKey:kSecClass];
    [v6 setObject:v7 forKey:kSecClass];

    v8 = [(KeychainWrapper *)self dictionaryToSecItemFormat:self->keychainData];
    [v8 removeObjectForKey:kSecClass];
    if (SecItemUpdate(v6, v8))
    {
      v9 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Couldn't update the Keychain Item.", v11, 2u);
      }
    }
  }
}

@end