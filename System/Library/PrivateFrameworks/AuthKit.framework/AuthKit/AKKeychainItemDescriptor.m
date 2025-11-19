@interface AKKeychainItemDescriptor
+ (id)pcsAuthDescriptor;
- (AKKeychainItemDescriptor)initWithAttributes:(id)a3;
- (id)_keychainAccessibleWithAccessible:(unint64_t)a3;
- (id)_keychainClassWithClass:(unint64_t)a3;
- (id)attributes;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)_accessibleWithKeychainAccessible:(id)a3;
- (unint64_t)_classWithKeychainClass:(id)a3;
- (void)setInvisible:(BOOL)a3;
- (void)setSynchronizable:(BOOL)a3;
- (void)setUseDataProtection:(BOOL)a3;
@end

@implementation AKKeychainItemDescriptor

- (AKKeychainItemDescriptor)initWithAttributes:(id)a3
{
  v32 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v32;
  v32 = 0;
  v30.receiver = v3;
  v30.super_class = AKKeychainItemDescriptor;
  v32 = [(AKKeychainItemDescriptor *)&v30 init];
  objc_storeStrong(&v32, v32);
  if (v32)
  {
    v26 = v32;
    v27 = [location[0] objectForKeyedSubscript:kSecClass];
    v4 = [(AKKeychainItemDescriptor *)v26 _classWithKeychainClass:?];
    v32->_itemClass = v4;
    _objc_release(v27);
    v28 = v32;
    v29 = [location[0] objectForKeyedSubscript:kSecAttrAccessible];
    v5 = [(AKKeychainItemDescriptor *)v28 _accessibleWithKeychainAccessible:?];
    v32->_itemAccessible = v5;
    _objc_release(v29);
    v6 = [location[0] objectForKeyedSubscript:kSecAttrAccount];
    account = v32->_account;
    v32->_account = v6;
    _objc_release(account);
    v8 = [location[0] objectForKeyedSubscript:kSecAttrService];
    service = v32->_service;
    v32->_service = v8;
    _objc_release(service);
    v10 = [location[0] objectForKeyedSubscript:kSecAttrServer];
    server = v32->_server;
    v32->_server = v10;
    _objc_release(server);
    v12 = [location[0] objectForKeyedSubscript:kSecAttrSecurityDomain];
    securityDomain = v32->_securityDomain;
    v32->_securityDomain = v12;
    _objc_release(securityDomain);
    v14 = [location[0] objectForKeyedSubscript:kSecAttrLabel];
    label = v32->_label;
    v32->_label = v14;
    _objc_release(label);
    v16 = [location[0] objectForKeyedSubscript:kSecAttrAccessGroup];
    accessGroup = v32->_accessGroup;
    v32->_accessGroup = v16;
    _objc_release(accessGroup);
    v18 = [location[0] objectForKeyedSubscript:kSecAttrIsInvisible];
    invisible = v32->_invisible;
    v32->_invisible = v18;
    _objc_release(invisible);
    v20 = [location[0] objectForKeyedSubscript:kSecAttrSynchronizable];
    synchronizable = v32->_synchronizable;
    v32->_synchronizable = v20;
    _objc_release(synchronizable);
    v22 = [location[0] objectForKeyedSubscript:kSecUseDataProtectionKeychain];
    useDataProtection = v32->_useDataProtection;
    v32->_useDataProtection = v22;
    _objc_release(useDataProtection);
  }

  v25 = _objc_retain(v32);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v32, 0);
  return v25;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v24 = self;
  v23[2] = a2;
  v23[1] = a3;
  v23[0] = objc_alloc_init(AKKeychainItemDescriptor);
  *(v23[0] + 4) = v24->_itemClass;
  *(v23[0] + 5) = v24->_itemAccessible;
  v3 = [(NSString *)v24->_account copy];
  v4 = *(v23[0] + 6);
  *(v23[0] + 6) = v3;
  _objc_release(v4);
  v5 = [(NSString *)v24->_service copy];
  v6 = *(v23[0] + 7);
  *(v23[0] + 7) = v5;
  _objc_release(v6);
  v7 = [(NSString *)v24->_server copy];
  v8 = *(v23[0] + 8);
  *(v23[0] + 8) = v7;
  _objc_release(v8);
  v9 = [(NSString *)v24->_securityDomain copy];
  v10 = *(v23[0] + 9);
  *(v23[0] + 9) = v9;
  _objc_release(v10);
  v11 = [(NSString *)v24->_label copy];
  v12 = *(v23[0] + 10);
  *(v23[0] + 10) = v11;
  _objc_release(v12);
  v13 = [(NSString *)v24->_accessGroup copy];
  v14 = *(v23[0] + 11);
  *(v23[0] + 11) = v13;
  _objc_release(v14);
  v15 = [(NSNumber *)v24->_invisible copy];
  v16 = *(v23[0] + 1);
  *(v23[0] + 1) = v15;
  _objc_release(v16);
  v17 = [(NSNumber *)v24->_synchronizable copy];
  v18 = *(v23[0] + 2);
  *(v23[0] + 2) = v17;
  _objc_release(v18);
  v19 = [(NSNumber *)v24->_useDataProtection copy];
  v20 = *(v23[0] + 3);
  *(v23[0] + 3) = v19;
  _objc_release(v20);
  v22 = _objc_retain(v23[0]);
  objc_storeStrong(v23, 0);
  return v22;
}

- (void)setInvisible:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  invisible = self->_invisible;
  self->_invisible = v3;
  _objc_release(invisible);
}

- (void)setSynchronizable:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  synchronizable = self->_synchronizable;
  self->_synchronizable = v3;
  _objc_release(synchronizable);
}

- (void)setUseDataProtection:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  useDataProtection = self->_useDataProtection;
  self->_useDataProtection = v3;
  _objc_release(useDataProtection);
}

- (id)attributes
{
  v7 = self;
  v6[1] = a2;
  v6[0] = objc_alloc_init(NSMutableDictionary);
  v3 = [(AKKeychainItemDescriptor *)v7 _keychainClassWithClass:v7->_itemClass];
  [v6[0] setObject:? forKeyedSubscript:?];
  _objc_release(v3);
  v4 = [(AKKeychainItemDescriptor *)v7 _keychainAccessibleWithAccessible:v7->_itemAccessible];
  [v6[0] setObject:? forKeyedSubscript:?];
  _objc_release(v4);
  [v6[0] setObject:v7->_account forKeyedSubscript:kSecAttrAccount];
  [v6[0] setObject:v7->_service forKeyedSubscript:kSecAttrService];
  [v6[0] setObject:v7->_server forKeyedSubscript:kSecAttrServer];
  [v6[0] setObject:v7->_securityDomain forKeyedSubscript:kSecAttrSecurityDomain];
  [v6[0] setObject:v7->_label forKeyedSubscript:kSecAttrLabel];
  [v6[0] setObject:v7->_accessGroup forKeyedSubscript:kSecAttrAccessGroup];
  [v6[0] setObject:v7->_invisible forKeyedSubscript:kSecAttrIsInvisible];
  [v6[0] setObject:v7->_synchronizable forKeyedSubscript:kSecAttrSynchronizable];
  [v6[0] setObject:v7->_useDataProtection forKeyedSubscript:kSecUseDataProtectionKeychain];
  v5 = [v6[0] copy];
  objc_storeStrong(v6, 0);

  return v5;
}

- (id)_keychainClassWithClass:(unint64_t)a3
{
  if (a3 == 1)
  {
    v4 = _objc_retain(kSecClassGenericPassword);
  }

  else if (a3 == 2)
  {
    v4 = _objc_retain(kSecClassInternetPassword);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_classWithKeychainClass:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] isEqualToString:kSecClassGenericPassword])
  {
    v5 = 1;
  }

  else if ([location[0] isEqualToString:kSecClassInternetPassword])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  return v5;
}

- (id)_keychainAccessibleWithAccessible:(unint64_t)a3
{
  switch(a3)
  {
    case 1uLL:
      v4 = _objc_retain(kSecAttrAccessibleWhenUnlocked);
      break;
    case 2uLL:
      v4 = _objc_retain(kSecAttrAccessibleAfterFirstUnlock);
      break;
    case 3uLL:
      v4 = _objc_retain(kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly);
      break;
    case 4uLL:
      v4 = _objc_retain(kSecAttrAccessibleWhenUnlockedThisDeviceOnly);
      break;
    case 5uLL:
      v4 = _objc_retain(kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly);
      break;
    default:
      v4 = 0;
      break;
  }

  return v4;
}

- (unint64_t)_accessibleWithKeychainAccessible:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] isEqualToString:kSecAttrAccessibleWhenUnlocked])
  {
    v5 = 1;
  }

  else if ([location[0] isEqualToString:kSecAttrAccessibleAfterFirstUnlock])
  {
    v5 = 2;
  }

  else if ([location[0] isEqualToString:kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly])
  {
    v5 = 3;
  }

  else if ([location[0] isEqualToString:kSecAttrAccessibleWhenUnlockedThisDeviceOnly])
  {
    v5 = 4;
  }

  else if ([location[0] isEqualToString:kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly])
  {
    v5 = 5;
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  return v5;
}

+ (id)pcsAuthDescriptor
{
  v4[2] = a1;
  v4[1] = a2;
  v4[0] = objc_alloc_init(AKKeychainItemDescriptor);
  [v4[0] setService:@"com.apple.akd.pcsauth.keychain_service"];
  [v4[0] setAccessGroup:@"com.apple.akd.pcsauth"];
  [v4[0] setItemClass:1];
  [v4[0] setItemAccessible:0];
  [v4[0] setInvisible:1];
  [v4[0] setSynchronizable:0];
  [v4[0] setUseDataProtection:1];
  v3 = _objc_retain(v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

@end