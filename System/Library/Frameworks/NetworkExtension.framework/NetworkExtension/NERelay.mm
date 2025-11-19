@interface NERelay
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (NERelay)init;
- (NERelay)initWithCoder:(id)a3;
- (NSArray)certificateReferences;
- (NSData)identityReferenceInternal;
- (__SecIdentity)copySecIdentityRef;
- (id)copyWithZone:(_NSZone *)a3;
- (void)clearKeychainItemsInDomain:(int64_t)a3 removeItems:(BOOL)a4;
- (void)copyPasswordsFromKeychainInDomain:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setCertificateReferences:(id)a3;
- (void)setIdentityData:(NSData *)identityData;
- (void)setIdentityReferenceInternal:(id)a3;
- (void)setIdentityWithKey:(id)a3 keyRef:(id)a4;
- (void)syncWithKeychainInDomainCommon:(int64_t)a3;
@end

@implementation NERelay

- (__SecIdentity)copySecIdentityRef
{
  v46[3] = *MEMORY[0x1E69E9840];
  v3 = [(NERelay *)self identity];
  v4 = [v3 isModernSystem];

  v5 = *MEMORY[0x1E697B328];
  if (v4)
  {
    v6 = *MEMORY[0x1E695E4D0];
    v40[0] = *MEMORY[0x1E695E4D0];
    v7 = *MEMORY[0x1E697B3C8];
    v39[0] = v5;
    v39[1] = v7;
    v8 = [(NERelay *)self identity];
    v9 = [v8 persistentReference];
    v10 = *MEMORY[0x1E697AFF8];
    v39[2] = *MEMORY[0x1E697AFF8];
    v11 = *MEMORY[0x1E697B000];
    v40[1] = v9;
    v40[2] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:3];

    result = 0;
    v13 = SecItemCopyMatching(v12, &result);
    if (result)
    {
      v38[0] = v6;
      v37[0] = v5;
      v37[1] = v7;
      v14 = [(NERelay *)self identity];
      v15 = [v14 keyPersistentReference];
      v37[2] = v10;
      v16 = *MEMORY[0x1E697B020];
      v38[1] = v15;
      v38[2] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:3];

      cf = 0;
      v18 = SecItemCopyMatching(v17, &cf);
      if (cf)
      {
        v19 = SecIdentityCreate();
        if (result)
        {
          CFRelease(result);
          result = 0;
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v19)
        {
          goto LABEL_24;
        }

        v20 = ne_log_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v42 = self;
          _os_log_error_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_ERROR, "%@ Failed to create identity reference", buf, 0xCu);
        }
      }

      else
      {
        v31 = v18;
        v32 = ne_log_obj();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v42 = self;
          v43 = 1024;
          v44 = v31;
          _os_log_error_impl(&dword_1BA83C000, v32, OS_LOG_TYPE_ERROR, "%@ SecItemCopyMatching for key failed %d", buf, 0x12u);
        }

        if (result)
        {
          CFRelease(result);
        }
      }

      v19 = 0;
LABEL_24:
      v12 = v17;
      goto LABEL_25;
    }

    v29 = v13;
    v30 = ne_log_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v42 = self;
      v43 = 1024;
      v44 = v29;
      _os_log_error_impl(&dword_1BA83C000, v30, OS_LOG_TYPE_ERROR, "%@ SecItemCopyMatching for cert failed %d", buf, 0x12u);
    }

    v19 = 0;
  }

  else
  {
    v21 = *MEMORY[0x1E695E4D0];
    v22 = *MEMORY[0x1E697AFF8];
    v45[0] = *MEMORY[0x1E697B328];
    v45[1] = v22;
    v23 = *MEMORY[0x1E697B010];
    v46[0] = v21;
    v46[1] = v23;
    v45[2] = *MEMORY[0x1E697B3C8];
    v24 = [(NERelay *)self identity];
    v25 = [v24 persistentReference];
    v46[2] = v25;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:3];

    result = 0;
    v26 = SecItemCopyMatching(v12, &result);
    v19 = result;
    if (!result)
    {
      v27 = v26;
      v28 = ne_log_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v42 = self;
        v43 = 1024;
        v44 = v27;
        _os_log_error_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_ERROR, "%@ SecItemCopyMatching for identity failed %d", buf, 0x12u);
      }
    }
  }

LABEL_25:

  v33 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)copyPasswordsFromKeychainInDomain:(int64_t)a3
{
  if (!a3)
  {
    v4 = [(NERelay *)self identityDataPasswordKeychainItem];

    if (v4)
    {
      v6 = [(NERelay *)self identityDataPasswordKeychainItem];
      v5 = [v6 copyPassword];
      [(NERelay *)self setIdentityDataPassword:v5];
    }
  }
}

- (void)clearKeychainItemsInDomain:(int64_t)a3 removeItems:(BOOL)a4
{
  v4 = a4;
  v27 = *MEMORY[0x1E69E9840];
  v7 = [(NERelay *)self identityDataPasswordKeychainItem];
  if (v7)
  {
    v8 = v7;
    v9 = [(NERelay *)self identityDataPasswordKeychainItem];
    v10 = [v9 domain];

    if (v10 == a3)
    {
      v11 = [(NERelay *)self identityDataPasswordKeychainItem];
      [v11 setIdentifier:0];
    }
  }

  if (v4)
  {
    v12 = [(NERelay *)self identity];
    [v12 remove];

    [(NERelay *)self setIdentityData:0];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    if (self)
    {
      Property = objc_getProperty(self, v13, 96, 1);
    }

    else
    {
      Property = 0;
    }

    v15 = Property;
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v22 + 1) + 8 * i) remove];
        }

        v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v17);
    }
  }

  else
  {
    [(NERelay *)self setIdentityData:0];
  }

  if (self)
  {
    objc_setProperty_atomic(self, v20, 0, 96);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)syncWithKeychainInDomainCommon:(int64_t)a3
{
  v5 = [(NERelay *)self identity];
  if (v5)
  {
    v6 = v5;
    v7 = [(NERelay *)self identity];
    v8 = [v7 domain];

    if (v8 == a3)
    {
      v9 = [(NERelay *)self identity];
      [v9 sync];
    }
  }

  if (!a3)
  {

    [(NERelay *)self setIdentityDataPassword:0];
  }
}

- (NSArray)certificateReferences
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if (v2 && objc_getProperty(v2, v3, 96, 1))
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = objc_getProperty(v2, v5, 96, 1);
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [*(*(&v13 + 1) + 8 * i) persistentReference];
          if (v10)
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(v2);

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setCertificateReferences:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v4)
  {
    newValue = objc_alloc_init(MEMORY[0x1E695DF70]);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = *v23;
      do
      {
        v10 = 0;
        do
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v22 + 1) + 8 * v10);
          v13 = [NEKeychainItem alloc];
          if (v5)
          {
            keychainDomain = v5->_keychainDomain;
            Property = objc_getProperty(v5, v12, 88, 1);
          }

          else
          {
            keychainDomain = 0;
            Property = 0;
          }

          v16 = Property;
          v17 = [(NEKeychainItem *)v13 initWithPersistentReference:v11 domain:keychainDomain accessGroup:v16];

          if (v17)
          {
            [newValue addObject:v17];
          }

          ++v10;
        }

        while (v8 != v10);
        v18 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
        v8 = v18;
      }

      while (v18);
    }

    if (v5)
    {
      objc_setProperty_atomic(v5, v19, newValue, 96);
    }
  }

  else if (v5)
  {
    objc_setProperty_atomic(v5, v6, 0, 96);
  }

  objc_sync_exit(v5);

  v20 = *MEMORY[0x1E69E9840];
}

- (void)setIdentityData:(NSData *)identityData
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = identityData;
  [(NERelay *)self setIdentityDataInternal:v4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
  if (v4)
  {
    CC_SHA1_Init(&v7);
    CC_SHA1_Update(&v7, [(NSData *)v4 bytes], [(NSData *)v4 length]);
    CC_SHA1_Final(md, &v7);
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:20];
    [(NERelay *)self setIdentityDataHash:v5];
  }

  else
  {
    [(NERelay *)self setIdentityDataHash:0];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (NSData)identityReferenceInternal
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NERelay *)v2 identity];

  if (v3)
  {
    v4 = [(NERelay *)v2 identity];
    v3 = [v4 persistentReference];
  }

  objc_sync_exit(v2);

  return v3;
}

- (void)setIdentityWithKey:(id)a3 keyRef:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v9 = [NEIdentityKeychainItem alloc];
  if (v7)
  {
    keychainDomain = v7->_keychainDomain;
    Property = objc_getProperty(v7, v8, 88, 1);
  }

  else
  {
    keychainDomain = 0;
    Property = 0;
  }

  v12 = Property;
  v13 = [(NEKeychainItem *)v9 initWithPersistentReference:v14 keyReference:v6 isModernSystem:1 domain:keychainDomain accessGroup:v12];
  [(NERelay *)v7 setIdentity:v13];

  objc_sync_exit(v7);
}

- (void)setIdentityReferenceInternal:(id)a3
{
  v12 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (v12)
  {
    v5 = [(NERelay *)v4 identity];

    if (v5)
    {
      v6 = [(NERelay *)v4 identity];
      [v6 setPersistentReference:v12];
    }

    else
    {
      v8 = [NEIdentityKeychainItem alloc];
      if (v4)
      {
        keychainDomain = v4->_keychainDomain;
        Property = objc_getProperty(v4, v7, 88, 1);
      }

      else
      {
        keychainDomain = 0;
        Property = 0;
      }

      v6 = Property;
      v11 = [(NEKeychainItem *)v8 initWithPersistentReference:v12 domain:keychainDomain accessGroup:v6];
      [(NERelay *)v4 setIdentity:v11];
    }
  }

  else
  {
    [(NERelay *)v4 setIdentity:0];
  }

  objc_sync_exit(v4);
}

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NERelay *)self HTTP3RelayURL];
  if (v5)
  {

LABEL_4:
    LOBYTE(v6) = 1;
    goto LABEL_5;
  }

  v6 = [(NERelay *)self HTTP2RelayURL];

  if (v6)
  {
    goto LABEL_4;
  }

  [NEConfiguration addError:v4 toList:?];
LABEL_5:
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [(NERelay *)self additionalHTTPHeaderFields];
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        if (isa_nsstring(v12))
        {
          v13 = [(NERelay *)self additionalHTTPHeaderFields];
          v14 = [v13 objectForKeyedSubscript:v12];
          v15 = isa_nsstring(v14);

          if (v15)
          {
            continue;
          }
        }

        [NEConfiguration addError:v4 toList:?];
        LOBYTE(v6) = 0;
        goto LABEL_16;
      }

      v9 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v16 = [(NERelay *)self dnsOverHTTPSURL];

  if (v16)
  {
    v17 = [(NERelay *)self dnsOverHTTPSURL];
    v18 = [v17 host];

    v19 = [(NERelay *)self HTTP3RelayURL];

    if (v19)
    {
      v20 = [(NERelay *)self HTTP3RelayURL];
      v21 = [v20 host];
      LODWORD(v19) = [v18 isEqualToString:v21];
    }

    v22 = [(NERelay *)self HTTP2RelayURL];

    if (v22)
    {
      v23 = [(NERelay *)self HTTP2RelayURL];
      v24 = [v23 host];
      v25 = [v18 isEqualToString:v24];

      if ((v25 | v19))
      {
LABEL_22:

        goto LABEL_23;
      }
    }

    else if (v19)
    {
      goto LABEL_22;
    }

    [NEConfiguration addError:v4 toList:?];
    LOBYTE(v6) = 0;
    goto LABEL_22;
  }

LABEL_23:

  v26 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NERelay *)self HTTP3RelayURL];
  [v4 setHTTP3RelayURL:v5];

  v6 = [(NERelay *)self HTTP2RelayURL];
  [v4 setHTTP2RelayURL:v6];

  v7 = [(NERelay *)self dnsOverHTTPSURL];
  [v4 setDnsOverHTTPSURL:v7];

  v8 = [(NERelay *)self syntheticDNSAnswerIPv4Prefix];
  [v4 setSyntheticDNSAnswerIPv4Prefix:v8];

  v9 = [(NERelay *)self syntheticDNSAnswerIPv6Prefix];
  [v4 setSyntheticDNSAnswerIPv6Prefix:v9];

  v10 = [(NERelay *)self identity];
  [v4 setIdentity:v10];

  v11 = [(NERelay *)self identityDataInternal];
  [v4 setIdentityDataInternal:v11];

  v12 = [(NERelay *)self identityDataPassword];
  [v4 setIdentityDataPassword:v12];

  v13 = [(NERelay *)self identityDataPasswordKeychainItem];
  [v4 setIdentityDataPasswordKeychainItem:v13];

  [v4 setIdentityDataImported:{-[NERelay identityDataImported](self, "identityDataImported")}];
  v14 = [(NERelay *)self identityDataHash];
  [v4 setIdentityDataHash:v14];

  if (!self)
  {
    Property = 0;
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  Property = objc_getProperty(self, v15, 96, 1);
  if (v4)
  {
LABEL_3:
    objc_setProperty_atomic(v4, v15, Property, 96);
  }

LABEL_4:
  v17 = [(NERelay *)self additionalHTTPHeaderFields];
  [v4 setAdditionalHTTPHeaderFields:v17];

  v18 = [(NERelay *)self rawPublicKeys];
  [v4 setRawPublicKeys:v18];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v20 = a3;
  v4 = [(NERelay *)self HTTP3RelayURL];
  [v20 encodeObject:v4 forKey:@"HTTP3RelayURL"];

  v5 = [(NERelay *)self HTTP2RelayURL];
  [v20 encodeObject:v5 forKey:@"HTTP2RelayURL"];

  v6 = [(NERelay *)self dnsOverHTTPSURL];
  [v20 encodeObject:v6 forKey:@"DNSOverHTTPSURL"];

  v7 = [(NERelay *)self syntheticDNSAnswerIPv4Prefix];
  [v20 encodeObject:v7 forKey:@"SyntheticIPv4Prefix"];

  v8 = [(NERelay *)self syntheticDNSAnswerIPv6Prefix];
  [v20 encodeObject:v8 forKey:@"SyntheticIPv6Prefix"];

  v9 = [(NERelay *)self identity];
  [v20 encodeObject:v9 forKey:@"Identity"];

  v10 = [(NERelay *)self identityDataInternal];
  [v20 encodeObject:v10 forKey:@"IdentityData"];

  v11 = [(NERelay *)self identityDataPassword];
  [v20 encodeObject:v11 forKey:@"IdentityDataPassword"];

  v12 = [(NERelay *)self identityDataPasswordKeychainItem];
  [v20 encodeObject:v12 forKey:@"IdentityDataPasswordKeychainItem"];

  [v20 encodeBool:-[NERelay identityDataImported](self forKey:{"identityDataImported"), @"IdentityDataImported"}];
  v13 = [(NERelay *)self identityDataHash];
  [v20 encodeObject:v13 forKey:@"IdentityDataHash"];

  if (self)
  {
    [v20 encodeObject:objc_getProperty(self forKey:{v14, 96, 1), @"Certificates"}];
    v15 = [(NERelay *)self additionalHTTPHeaderFields];
    [v20 encodeObject:v15 forKey:@"AdditionalHTTPHeaders"];

    v16 = [(NERelay *)self rawPublicKeys];
    [v20 encodeObject:v16 forKey:@"RawPublicKeys"];

    v17 = [(NERelay *)self HTTP3RelayURL];
    if (v17)
    {
      self = 0;
    }

    else
    {
      v18 = [(NERelay *)self HTTP2RelayURL];
      self = (v18 != 0);
    }
  }

  else
  {
    [v20 encodeObject:0 forKey:@"Certificates"];
    v19 = [0 additionalHTTPHeaderFields];
    [v20 encodeObject:v19 forKey:@"AdditionalHTTPHeaders"];

    v17 = [0 rawPublicKeys];
    [v20 encodeObject:v17 forKey:@"RawPublicKeys"];
  }

  [v20 encodeBool:self forKey:@"HTTP2Only"];
}

- (NERelay)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NERelay *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HTTP3RelayURL"];
    HTTP3RelayURL = v5->_HTTP3RelayURL;
    v5->_HTTP3RelayURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HTTP2RelayURL"];
    HTTP2RelayURL = v5->_HTTP2RelayURL;
    v5->_HTTP2RelayURL = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DNSOverHTTPSURL"];
    dnsOverHTTPSURL = v5->_dnsOverHTTPSURL;
    v5->_dnsOverHTTPSURL = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SyntheticIPv4Prefix"];
    syntheticDNSAnswerIPv4Prefix = v5->_syntheticDNSAnswerIPv4Prefix;
    v5->_syntheticDNSAnswerIPv4Prefix = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SyntheticIPv6Prefix"];
    syntheticDNSAnswerIPv6Prefix = v5->_syntheticDNSAnswerIPv6Prefix;
    v5->_syntheticDNSAnswerIPv6Prefix = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Identity"];
    identity = v5->_identity;
    v5->_identity = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IdentityData"];
    identityDataInternal = v5->_identityDataInternal;
    v5->_identityDataInternal = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IdentityDataPassword"];
    identityDataPassword = v5->_identityDataPassword;
    v5->_identityDataPassword = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IdentityDataPasswordKeychainItem"];
    identityDataPasswordKeychainItem = v5->_identityDataPasswordKeychainItem;
    v5->_identityDataPasswordKeychainItem = v22;

    v5->_identityDataImported = [v4 decodeBoolForKey:@"IdentityDataImported"];
    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IdentityDataHash"];
    identityDataHash = v5->_identityDataHash;
    v5->_identityDataHash = v24;

    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"Certificates"];
    certificates = v5->_certificates;
    v5->_certificates = v29;

    v31 = MEMORY[0x1E695DFD8];
    v32 = objc_opt_class();
    v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
    v34 = [v4 decodeObjectOfClasses:v33 forKey:@"AdditionalHTTPHeaders"];
    additionalHTTPHeaderFields = v5->_additionalHTTPHeaderFields;
    v5->_additionalHTTPHeaderFields = v34;

    v36 = MEMORY[0x1E695DFD8];
    v37 = objc_opt_class();
    v38 = [v36 setWithObjects:{v37, objc_opt_class(), 0}];
    v39 = [v4 decodeObjectOfClasses:v38 forKey:@"RawPublicKeys"];
    rawPublicKeys = v5->_rawPublicKeys;
    v5->_rawPublicKeys = v39;
  }

  return v5;
}

- (NERelay)init
{
  v3.receiver = self;
  v3.super_class = NERelay;
  result = [(NERelay *)&v3 init];
  if (result)
  {
    result->_keychainDomain = 0;
  }

  return result;
}

@end