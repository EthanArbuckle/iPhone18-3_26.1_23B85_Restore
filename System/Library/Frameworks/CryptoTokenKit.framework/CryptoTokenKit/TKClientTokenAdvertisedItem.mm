@interface TKClientTokenAdvertisedItem
- (NSData)objectID;
- (NSString)localizedName;
- (TKClientTokenAdvertisedItem)initWithSession:(id)a3 keychainAttributes:(id)a4 secRef:(id)a5;
- (__SecCertificate)certificateRef;
- (__SecIdentity)identityRef;
- (__SecKey)keyRef;
- (id)keychainClass;
- (unint64_t)keyUsage;
- (void)certificateRef;
- (void)keyRef;
@end

@implementation TKClientTokenAdvertisedItem

- (TKClientTokenAdvertisedItem)initWithSession:(id)a3 keychainAttributes:(id)a4 secRef:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TKClientTokenAdvertisedItem;
  v12 = [(TKClientTokenAdvertisedItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_session, a3);
    objc_storeStrong(&v13->_keychainAttributes, a4);
    objc_storeStrong(&v13->_secRef, a5);
  }

  return v13;
}

- (NSData)objectID
{
  v2 = [(TKClientTokenAdvertisedItem *)self keychainAttributes];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E697AEE8]];

  return v3;
}

- (NSString)localizedName
{
  v2 = [(TKClientTokenAdvertisedItem *)self keychainAttributes];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E697ADC8]];

  return v3;
}

- (id)keychainClass
{
  v2 = [(TKClientTokenAdvertisedItem *)self keychainAttributes];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E697AFF8]];

  return v3;
}

- (unint64_t)keyUsage
{
  v2 = [(TKClientTokenAdvertisedItem *)self keychainAttributes];
  v3 = [v2 objectForKeyedSubscript:@"keyUsage"];
  v4 = [v3 integerValue];

  return v4;
}

- (__SecKey)keyRef
{
  v3 = [(TKClientTokenAdvertisedItem *)self keychainClass];
  v4 = [v3 isEqual:*MEMORY[0x1E697B020]];

  if (!v4)
  {
    return 0;
  }

  result = self->_secRef;
  if (!result)
  {
    v6 = [(TKClientTokenAdvertisedItem *)self session];
    v7 = [v6 token];
    v8 = [v7 tokenID];

    error = 0;
    v9 = [(TKClientTokenAdvertisedItem *)self keychainAttributes];
    v10 = [v9 mutableCopy];

    v11 = [(TKClientTokenAdvertisedItem *)self session];
    [v10 setObject:v11 forKeyedSubscript:@"u_TokenSession"];

    v12 = [MEMORY[0x1E695DEF0] data];
    v13 = SecKeyCreateWithData(v12, v10, &error);
    secRef = self->_secRef;
    self->_secRef = v13;

    if (!self->_secRef)
    {
      v15 = TK_LOG_client_1();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(TKClientTokenAdvertisedItem *)v8 keyRef];
      }
    }

    return self->_secRef;
  }

  return result;
}

- (__SecCertificate)certificateRef
{
  v3 = [(TKClientTokenAdvertisedItem *)self keychainClass];
  v4 = [v3 isEqual:*MEMORY[0x1E697B000]];

  if (!v4)
  {
    return 0;
  }

  result = self->_secRef;
  if (!result)
  {
    v6 = [(TKClientTokenAdvertisedItem *)self keychainAttributes];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E697B3C0]];

    v8 = SecCertificateCreateWithData(*MEMORY[0x1E695E480], v7);
    secRef = self->_secRef;
    self->_secRef = v8;

    if (!self->_secRef)
    {
      v10 = [(TKClientTokenAdvertisedItem *)self session];
      v11 = [v10 token];
      v12 = [v11 tokenID];

      v13 = TK_LOG_client_1();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(TKClientTokenAdvertisedItem *)v12 certificateRef];
      }
    }

    return self->_secRef;
  }

  return result;
}

- (__SecIdentity)identityRef
{
  v3 = [(TKClientTokenAdvertisedItem *)self keychainClass];
  v4 = [v3 isEqual:*MEMORY[0x1E697B010]];

  if (v4)
  {
    return self->_secRef;
  }

  else
  {
    return 0;
  }
}

- (void)keyRef
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_11(&dword_1DF413000, v3, v4, "Failed to create key from advertised item of token %{public}@, error: %{public}@");
  v5 = *MEMORY[0x1E69E9840];
}

- (void)certificateRef
{
  *v4 = 138543618;
  *&v4[4] = a1;
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_11(&dword_1DF413000, a2, a3, "Failed to create certificate from advertised item of token %{public}@, data: %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

@end