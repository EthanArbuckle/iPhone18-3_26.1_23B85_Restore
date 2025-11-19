@interface AKKeychainManager
+ (id)sharedManager;
- (AKKeychainManager)init;
- (BOOL)_unsafe_addKeychainItem:(id)a3 shouldAttemptUpdate:(BOOL)a4 error:(id *)a5;
- (BOOL)_unsafe_deleteKeychainItemWithDescriptor:(id)a3 error:(id *)a4;
- (BOOL)_unsafe_updateKeychainItemWithDescriptor:(id)a3 newItem:(id)a4 error:(id *)a5;
- (id)_unsafe_fetchKeychainItemWithDescriptor:(id)a3 error:(id *)a4;
- (id)_unsafe_fetchKeychainItemsWithDescriptor:(id)a3 error:(id *)a4;
- (void)addKeychainItem:(id)a3 completion:(id)a4;
- (void)addOrUpdateKeychainItem:(id)a3 completion:(id)a4;
- (void)deleteKeychainItemWithDescriptor:(id)a3 completion:(id)a4;
- (void)fetchKeychainItemWithDescriptor:(id)a3 completion:(id)a4;
- (void)fetchKeychainItemsWithDescriptor:(id)a3 completion:(id)a4;
- (void)updateKeychainItem:(id)a3 completion:(id)a4;
@end

@implementation AKKeychainManager

- (AKKeychainManager)init
{
  v7 = a2;
  v8 = 0;
  v6.receiver = self;
  v6.super_class = AKKeychainManager;
  v8 = [(AKKeychainManager *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    v2 = dispatch_queue_create("com.apple.authkit.keychain", 0);
    keychainQueue = v8->_keychainQueue;
    v8->_keychainQueue = v2;
    _objc_release(keychainQueue);
  }

  v5 = _objc_retain(v8);
  objc_storeStrong(&v8, 0);
  return v5;
}

+ (id)sharedManager
{
  v5 = &unk_1003748E0;
  location = 0;
  objc_storeStrong(&location, &stru_100325298);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_1003748D8;

  return v2;
}

- (void)addKeychainItem:(id)a3 completion:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  queue = v16->_keychainQueue;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100175DF4;
  v10 = &unk_100320558;
  v11 = _objc_retain(v16);
  v12 = _objc_retain(location[0]);
  v13 = _objc_retain(v14);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)addOrUpdateKeychainItem:(id)a3 completion:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  queue = v16->_keychainQueue;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100176008;
  v10 = &unk_100320558;
  v11 = _objc_retain(v16);
  v12 = _objc_retain(location[0]);
  v13 = _objc_retain(v14);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)updateKeychainItem:(id)a3 completion:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  queue = v16->_keychainQueue;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10017621C;
  v10 = &unk_100320558;
  v11 = _objc_retain(v16);
  v12 = _objc_retain(location[0]);
  v13 = _objc_retain(v14);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchKeychainItemWithDescriptor:(id)a3 completion:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  queue = v16->_keychainQueue;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10017645C;
  v10 = &unk_100320558;
  v11 = _objc_retain(v16);
  v12 = _objc_retain(location[0]);
  v13 = _objc_retain(v14);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchKeychainItemsWithDescriptor:(id)a3 completion:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  queue = v16->_keychainQueue;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100176680;
  v10 = &unk_100320558;
  v11 = _objc_retain(v16);
  v12 = _objc_retain(location[0]);
  v13 = _objc_retain(v14);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)deleteKeychainItemWithDescriptor:(id)a3 completion:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  queue = v16->_keychainQueue;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1001768A4;
  v10 = &unk_100320558;
  v11 = _objc_retain(v16);
  v12 = _objc_retain(location[0]);
  v13 = _objc_retain(v14);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_unsafe_addKeychainItem:(id)a3 shouldAttemptUpdate:(BOOL)a4 error:(id *)a5
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = a4;
  v15 = a5;
  v14 = [location[0] itemAttributes];
  v13 = SecItemAdd(v14, 0);
  if (v13 == -25299 && v16)
  {
    v8 = v18;
    v9 = [location[0] descriptor];
    v12 = [AKKeychainManager _unsafe_updateKeychainItemWithDescriptor:v8 newItem:"_unsafe_updateKeychainItemWithDescriptor:newItem:error:" error:?];
    _objc_release(v9);
    v19 = v12 & 1;
  }

  else
  {
    if (v13 && v15)
    {
      Error = SecCopyLastError();
      v5 = Error;
      *v15 = Error;
    }

    v19 = v13 == 0;
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  return v19 & 1;
}

- (BOOL)_unsafe_updateKeychainItemWithDescriptor:(id)a3 newItem:(id)a4 error:(id *)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = a5;
  v12 = [location[0] attributes];
  v9 = [v14 itemAttributes];
  v11 = [v9 mutableCopy];
  _objc_release(v9);
  [v11 removeObjectForKey:kSecClass];
  v10[8] = 0;
  *v10 = SecItemUpdateWithError();
  if (a5)
  {
    v5 = *&v10[1];
    *v13 = *&v10[1];
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  return v10[0] & 1;
}

- (id)_unsafe_fetchKeychainItemWithDescriptor:(id)a3 error:(id *)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = a4;
  v13 = [location[0] attributes];
  v18 = [v13 mutableCopy];
  _objc_release(v13);
  [v18 setObject:? forKey:?];
  [v18 setObject:&__kCFBooleanTrue forKey:kSecReturnData];
  [v18 setObject:kSecMatchLimitOne forKey:kSecMatchLimit];
  result = 0;
  v16 = SecItemCopyMatching(v18, &result);
  if (v19)
  {
    Error = SecCopyLastError();
    v4 = Error;
    *v19 = Error;
  }

  if (result && (v10 = CFGetTypeID(result), v10 == CFDictionaryGetTypeID()))
  {
    v15 = result;
    v14 = [[AKKeychainItem alloc] initWithAttributes:result];
    v8 = [(AKKeychainItem *)v14 descriptor];
    v9 = [(AKKeychainItemDescriptor *)v8 itemClass];
    _objc_release(v8);
    if (!v9)
    {
      v7 = [(AKKeychainItem *)v14 descriptor];
      -[AKKeychainItemDescriptor setItemClass:](v7, "setItemClass:", [location[0] itemClass]);
      _objc_release(v7);
    }

    v21 = _objc_retain(v14);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v15, 0);
  }

  else
  {
    v21 = 0;
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  v5 = v21;

  return v5;
}

- (id)_unsafe_fetchKeychainItemsWithDescriptor:(id)a3 error:(id *)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = a4;
  v21 = [location[0] attributes];
  v30 = [v21 mutableCopy];
  _objc_release(v21);
  [v30 setObject:? forKey:?];
  [v30 setObject:&__kCFBooleanTrue forKey:kSecReturnData];
  [v30 setObject:kSecMatchLimitAll forKey:kSecMatchLimit];
  result = 0;
  v28 = SecItemCopyMatching(v30, &result);
  if (v31)
  {
    Error = SecCopyLastError();
    v4 = Error;
    *v31 = Error;
  }

  v27 = objc_alloc_init(NSMutableArray);
  if (result)
  {
    v18 = CFGetTypeID(result);
    if (v18 == CFArrayGetTypeID())
    {
      v26 = result;
      memset(__b, 0, sizeof(__b));
      obj = _objc_retain(result);
      v17 = [obj countByEnumeratingWithState:__b objects:v33 count:16];
      if (v17)
      {
        v13 = *__b[2];
        v14 = 0;
        v15 = v17;
        while (1)
        {
          v12 = v14;
          if (*__b[2] != v13)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(__b[1] + 8 * v14);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = _objc_retain(v25);
            v5 = [AKKeychainItem alloc];
            v22 = [(AKKeychainItem *)v5 initWithAttributes:v23];
            v10 = [(AKKeychainItem *)v22 descriptor];
            v11 = [(AKKeychainItemDescriptor *)v10 itemClass];
            _objc_release(v10);
            if (!v11)
            {
              v9 = [(AKKeychainItem *)v22 descriptor];
              -[AKKeychainItemDescriptor setItemClass:](v9, "setItemClass:", [location[0] itemClass]);
              _objc_release(v9);
            }

            [v27 addObject:v22];
            objc_storeStrong(&v22, 0);
            objc_storeStrong(&v23, 0);
          }

          ++v14;
          if (v12 + 1 >= v15)
          {
            v14 = 0;
            v15 = [obj countByEnumeratingWithState:__b objects:v33 count:16];
            if (!v15)
            {
              break;
            }
          }
        }
      }

      _objc_release(obj);
      objc_storeStrong(&v26, 0);
    }
  }

  v8 = [v27 copy];
  objc_storeStrong(v7, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (BOOL)_unsafe_deleteKeychainItemWithDescriptor:(id)a3 error:(id *)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = a4;
  v9 = [location[0] attributes];
  v8 = SecItemDelete(v9);
  if (a4)
  {
    Error = SecCopyLastError();
    v4 = Error;
    *v10 = Error;
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return v8 == 0;
}

@end