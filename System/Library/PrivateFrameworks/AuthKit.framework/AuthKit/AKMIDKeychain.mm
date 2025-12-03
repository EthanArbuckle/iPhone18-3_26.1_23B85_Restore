@interface AKMIDKeychain
- (AKMIDKeychain)init;
- (BOOL)_clearLastKnownMID:(id *)d;
- (BOOL)updateLastKnownMID:(id)d error:(id *)error;
- (id)_lastKnownMIDDescriptor;
- (id)lastKnownMID:(id *)d;
@end

@implementation AKMIDKeychain

- (AKMIDKeychain)init
{
  v8 = a2;
  v9 = 0;
  v7.receiver = self;
  v7.super_class = AKMIDKeychain;
  v6 = [(AKMIDKeychain *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    v2 = objc_opt_new();
    keychainManager = v9->_keychainManager;
    v9->_keychainManager = v2;
    _objc_release(keychainManager);
  }

  v5 = _objc_retain(v9);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (id)lastKnownMID:(id *)d
{
  selfCopy = self;
  v26 = a2;
  dCopy = d;
  _lastKnownMIDDescriptor = [(AKMIDKeychain *)self _lastKnownMIDDescriptor];
  v23 = 0;
  keychainManager = selfCopy->_keychainManager;
  v21 = 0;
  v10 = [(AAFKeychainManager *)keychainManager keychainItemForDescriptor:_lastKnownMIDDescriptor error:&v21];
  objc_storeStrong(&v23, v21);
  v22 = v10;
  value = [v10 value];
  v18 = 0;
  v11 = 0;
  if ([v23 code] == -25300)
  {
    domain = [v23 domain];
    v18 = 1;
    v11 = [domain isEqualToString:NSOSStatusErrorDomain];
  }

  if (v18)
  {
    _objc_release(domain);
  }

  if (v11)
  {
    v17 = _AKLogSystem();
    v16 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_10001B098(v29, selfCopy, v23);
      _os_log_debug_impl(&_mh_execute_header, v17, v16, "%@: Last known MID not found in keychain (%@)", v29, 0x16u);
    }

    objc_storeStrong(&v17, 0);
    v28 = 0;
    v15 = 1;
  }

  else
  {
    v14 = 0;
    v4 = objc_opt_class();
    obj = v14;
    v9 = [NSKeyedUnarchiver unarchivedObjectOfClass:v4 fromData:value error:&obj];
    objc_storeStrong(&v14, obj);
    v13 = v9;
    if (value)
    {
      v28 = _objc_retain(v13);
      v15 = 1;
    }

    else
    {
      if (dCopy)
      {
        v8 = v14;
        v5 = v14;
        *dCopy = v8;
      }

      v28 = 0;
      v15 = 1;
    }

    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&value, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&_lastKnownMIDDescriptor, 0);
  v6 = v28;

  return v6;
}

- (BOOL)updateLastKnownMID:(id)d error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  errorCopy = error;
  if (location[0])
  {
    v19 = 0;
    v17 = 0;
    v11 = [NSKeyedArchiver archivedDataWithRootObject:location[0] requiringSecureCoding:1 error:&v17];
    objc_storeStrong(&v19, v17);
    v18 = v11;
    if (v11)
    {
      _lastKnownMIDDescriptor = [(AKMIDKeychain *)selfCopy _lastKnownMIDDescriptor];
      v5 = [AAFKeychainItem alloc];
      v15 = [v5 initWithDescriptor:_lastKnownMIDDescriptor value:v18];
      v14 = 0;
      keychainManager = selfCopy->_keychainManager;
      obj = 0;
      [(AAFKeychainManager *)keychainManager addOrUpdateKeychainItem:v15 error:&obj];
      objc_storeStrong(&v14, obj);
      if (v14)
      {
        if (errorCopy)
        {
          v9 = v14;
          v7 = v14;
          *errorCopy = v9;
        }

        v24 = 0;
        v20 = 1;
      }

      else
      {
        v24 = 1;
        v20 = 1;
      }

      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&_lastKnownMIDDescriptor, 0);
    }

    else
    {
      if (errorCopy)
      {
        v10 = v19;
        v4 = v19;
        *errorCopy = v10;
      }

      v24 = 0;
      v20 = 1;
    }

    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
  }

  else
  {
    v24 = [(AKMIDKeychain *)selfCopy _clearLastKnownMID:errorCopy];
    v20 = 1;
  }

  objc_storeStrong(location, 0);
  return v24 & 1;
}

- (id)_lastKnownMIDDescriptor
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = objc_alloc_init(AAFKeychainItemDescriptor);
  [v4[0] setItemClass:?];
  [v4[0] setItemAccessible:5];
  [v4[0] setInvisible:?];
  [v4[0] setSynchronizable:1];
  [v4[0] setUseDataProtection:2];
  [v4[0] setSysBound:2];
  [v4[0] setService:@"com.apple.authkit.MachineID.svc"];
  [v4[0] setLabel:@"com.apple.authkit.previousKnownMID"];
  v3 = _objc_retain(v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

- (BOOL)_clearLastKnownMID:(id *)d
{
  selfCopy = self;
  v7 = a2;
  dCopy = d;
  _lastKnownMIDDescriptor = [(AKMIDKeychain *)self _lastKnownMIDDescriptor];
  [(AAFKeychainManager *)selfCopy->_keychainManager deleteKeychainItemsForDescriptor:_lastKnownMIDDescriptor error:dCopy];
  v4 = dCopy != 0;
  objc_storeStrong(&_lastKnownMIDDescriptor, 0);
  return v4;
}

@end