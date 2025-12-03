@interface TKClientTokenAdvertisedItem
- (NSData)objectID;
- (NSString)localizedName;
- (TKClientTokenAdvertisedItem)initWithSession:(id)session keychainAttributes:(id)attributes secRef:(id)ref;
- (__SecCertificate)certificateRef;
- (__SecIdentity)identityRef;
- (__SecKey)keyRef;
- (id)keychainClass;
- (unint64_t)keyUsage;
- (void)certificateRef;
- (void)keyRef;
@end

@implementation TKClientTokenAdvertisedItem

- (TKClientTokenAdvertisedItem)initWithSession:(id)session keychainAttributes:(id)attributes secRef:(id)ref
{
  sessionCopy = session;
  attributesCopy = attributes;
  refCopy = ref;
  v15.receiver = self;
  v15.super_class = TKClientTokenAdvertisedItem;
  v12 = [(TKClientTokenAdvertisedItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_session, session);
    objc_storeStrong(&v13->_keychainAttributes, attributes);
    objc_storeStrong(&v13->_secRef, ref);
  }

  return v13;
}

- (NSData)objectID
{
  keychainAttributes = [(TKClientTokenAdvertisedItem *)self keychainAttributes];
  v3 = [keychainAttributes objectForKeyedSubscript:*MEMORY[0x1E697AEE8]];

  return v3;
}

- (NSString)localizedName
{
  keychainAttributes = [(TKClientTokenAdvertisedItem *)self keychainAttributes];
  v3 = [keychainAttributes objectForKeyedSubscript:*MEMORY[0x1E697ADC8]];

  return v3;
}

- (id)keychainClass
{
  keychainAttributes = [(TKClientTokenAdvertisedItem *)self keychainAttributes];
  v3 = [keychainAttributes objectForKeyedSubscript:*MEMORY[0x1E697AFF8]];

  return v3;
}

- (unint64_t)keyUsage
{
  keychainAttributes = [(TKClientTokenAdvertisedItem *)self keychainAttributes];
  v3 = [keychainAttributes objectForKeyedSubscript:@"keyUsage"];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (__SecKey)keyRef
{
  keychainClass = [(TKClientTokenAdvertisedItem *)self keychainClass];
  v4 = [keychainClass isEqual:*MEMORY[0x1E697B020]];

  if (!v4)
  {
    return 0;
  }

  result = self->_secRef;
  if (!result)
  {
    session = [(TKClientTokenAdvertisedItem *)self session];
    token = [session token];
    tokenID = [token tokenID];

    error = 0;
    keychainAttributes = [(TKClientTokenAdvertisedItem *)self keychainAttributes];
    v10 = [keychainAttributes mutableCopy];

    session2 = [(TKClientTokenAdvertisedItem *)self session];
    [v10 setObject:session2 forKeyedSubscript:@"u_TokenSession"];

    data = [MEMORY[0x1E695DEF0] data];
    v13 = SecKeyCreateWithData(data, v10, &error);
    secRef = self->_secRef;
    self->_secRef = v13;

    if (!self->_secRef)
    {
      v15 = TK_LOG_client_1();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(TKClientTokenAdvertisedItem *)tokenID keyRef];
      }
    }

    return self->_secRef;
  }

  return result;
}

- (__SecCertificate)certificateRef
{
  keychainClass = [(TKClientTokenAdvertisedItem *)self keychainClass];
  v4 = [keychainClass isEqual:*MEMORY[0x1E697B000]];

  if (!v4)
  {
    return 0;
  }

  result = self->_secRef;
  if (!result)
  {
    keychainAttributes = [(TKClientTokenAdvertisedItem *)self keychainAttributes];
    v7 = [keychainAttributes objectForKeyedSubscript:*MEMORY[0x1E697B3C0]];

    v8 = SecCertificateCreateWithData(*MEMORY[0x1E695E480], v7);
    secRef = self->_secRef;
    self->_secRef = v8;

    if (!self->_secRef)
    {
      session = [(TKClientTokenAdvertisedItem *)self session];
      token = [session token];
      tokenID = [token tokenID];

      v13 = TK_LOG_client_1();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(TKClientTokenAdvertisedItem *)tokenID certificateRef];
      }
    }

    return self->_secRef;
  }

  return result;
}

- (__SecIdentity)identityRef
{
  keychainClass = [(TKClientTokenAdvertisedItem *)self keychainClass];
  v4 = [keychainClass isEqual:*MEMORY[0x1E697B010]];

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
  *&v4[4] = self;
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_11(&dword_1DF413000, a2, a3, "Failed to create certificate from advertised item of token %{public}@, data: %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

@end