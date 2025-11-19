@interface APSigningClientValidator
+ (BOOL)_validateAllowListingForPoolCreation:(id)a3;
+ (BOOL)hasEntitlement:(id)a3;
+ (BOOL)isAllowedClient;
+ (id)mockXPCObject;
+ (void)setMockXPCObject:(id)a3;
@end

@implementation APSigningClientValidator

+ (id)mockXPCObject
{
  v2 = a1;
  objc_sync_enter(v2);
  v3 = qword_1EBC37088;
  objc_sync_exit(v2);

  return v3;
}

+ (void)setMockXPCObject:(id)a3
{
  v4 = a3;
  obj = a1;
  objc_sync_enter(obj);
  v5 = qword_1EBC37088;
  qword_1EBC37088 = v4;

  objc_sync_exit(obj);
}

+ (BOOL)isAllowedClient
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, v2, v3);
  v8 = objc_msgSend_bundleIdentifier(v4, v5, v6, v7);

  if (v8 && (objc_msgSend_isEqualToString_(v8, v9, &stru_1F38FD5F0, v10) & 1) == 0 && objc_msgSend__validateAllowListingForPoolCreation_(APSigningClientValidator, v9, v8, v10) && (objc_msgSend_hasEntitlement_(APSigningClientValidator, v9, @"com.apple.ap.signingservice.client", v10) & 1) != 0)
  {
    v11 = 1;
  }

  else
  {
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, @"Client bundle id %@ is nil, not allow listed or not entitled to use signing service.", v10, v8);
    v13 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = v12;
      _os_log_impl(&dword_1BADC1000, v13, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    APSimulateCrash(5, v12, 0);
    v11 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)hasEntitlement:(id)a3
{
  v3 = a3;
  v4 = v3;
  objc_msgSend_UTF8String(v4, v5, v6, v7);
  v11 = xpc_copy_entitlement_for_self();
  if (v11)
  {
    goto LABEL_4;
  }

  v12 = objc_msgSend_mockXPCObject(APSigningClientValidator, v8, v9, v10);
  if (v12)
  {
    v13 = v3;
    v17 = objc_msgSend_UTF8String(v13, v14, v15, v16);
    v11 = xpc_dictionary_get_value(v12, v17);

LABEL_4:
    LOBYTE(v12) = xpc_BOOL_get_value(v11);
  }

  return v12;
}

+ (BOOL)_validateAllowListingForPoolCreation:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v7 = objc_msgSend_sha256hash(@"com.apple.ap.promotedcontentd", v4, v5, v6);
  v18[0] = v7;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v18, 1);

  v13 = objc_msgSend_sha256hash(v3, v10, v11, v12);

  LOBYTE(v7) = objc_msgSend_containsObject_(v9, v14, v13, v15);
  v16 = *MEMORY[0x1E69E9840];
  return v7;
}

@end