@interface NERelay
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (NERelay)init;
- (NERelay)initWithCoder:(id)coder;
- (NSArray)certificateReferences;
- (NSData)identityReferenceInternal;
- (__SecIdentity)copySecIdentityRef;
- (id)copyWithZone:(_NSZone *)zone;
- (void)clearKeychainItemsInDomain:(int64_t)domain removeItems:(BOOL)items;
- (void)copyPasswordsFromKeychainInDomain:(int64_t)domain;
- (void)encodeWithCoder:(id)coder;
- (void)setCertificateReferences:(id)references;
- (void)setIdentityData:(NSData *)identityData;
- (void)setIdentityReferenceInternal:(id)internal;
- (void)setIdentityWithKey:(id)key keyRef:(id)ref;
- (void)syncWithKeychainInDomainCommon:(int64_t)common;
@end

@implementation NERelay

- (__SecIdentity)copySecIdentityRef
{
  v46[3] = *MEMORY[0x1E69E9840];
  identity = [(NERelay *)self identity];
  isModernSystem = [identity isModernSystem];

  v5 = *MEMORY[0x1E697B328];
  if (isModernSystem)
  {
    v6 = *MEMORY[0x1E695E4D0];
    v40[0] = *MEMORY[0x1E695E4D0];
    v7 = *MEMORY[0x1E697B3C8];
    v39[0] = v5;
    v39[1] = v7;
    identity2 = [(NERelay *)self identity];
    persistentReference = [identity2 persistentReference];
    v10 = *MEMORY[0x1E697AFF8];
    v39[2] = *MEMORY[0x1E697AFF8];
    v11 = *MEMORY[0x1E697B000];
    v40[1] = persistentReference;
    v40[2] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:3];

    result = 0;
    v13 = SecItemCopyMatching(v12, &result);
    if (result)
    {
      v38[0] = v6;
      v37[0] = v5;
      v37[1] = v7;
      identity3 = [(NERelay *)self identity];
      keyPersistentReference = [identity3 keyPersistentReference];
      v37[2] = v10;
      v16 = *MEMORY[0x1E697B020];
      v38[1] = keyPersistentReference;
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
          selfCopy4 = self;
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
          selfCopy4 = self;
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
      selfCopy4 = self;
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
    identity4 = [(NERelay *)self identity];
    persistentReference2 = [identity4 persistentReference];
    v46[2] = persistentReference2;
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
        selfCopy4 = self;
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

- (void)copyPasswordsFromKeychainInDomain:(int64_t)domain
{
  if (!domain)
  {
    identityDataPasswordKeychainItem = [(NERelay *)self identityDataPasswordKeychainItem];

    if (identityDataPasswordKeychainItem)
    {
      identityDataPasswordKeychainItem2 = [(NERelay *)self identityDataPasswordKeychainItem];
      copyPassword = [identityDataPasswordKeychainItem2 copyPassword];
      [(NERelay *)self setIdentityDataPassword:copyPassword];
    }
  }
}

- (void)clearKeychainItemsInDomain:(int64_t)domain removeItems:(BOOL)items
{
  itemsCopy = items;
  v27 = *MEMORY[0x1E69E9840];
  identityDataPasswordKeychainItem = [(NERelay *)self identityDataPasswordKeychainItem];
  if (identityDataPasswordKeychainItem)
  {
    v8 = identityDataPasswordKeychainItem;
    identityDataPasswordKeychainItem2 = [(NERelay *)self identityDataPasswordKeychainItem];
    domain = [identityDataPasswordKeychainItem2 domain];

    if (domain == domain)
    {
      identityDataPasswordKeychainItem3 = [(NERelay *)self identityDataPasswordKeychainItem];
      [identityDataPasswordKeychainItem3 setIdentifier:0];
    }
  }

  if (itemsCopy)
  {
    identity = [(NERelay *)self identity];
    [identity remove];

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

- (void)syncWithKeychainInDomainCommon:(int64_t)common
{
  identity = [(NERelay *)self identity];
  if (identity)
  {
    v6 = identity;
    identity2 = [(NERelay *)self identity];
    domain = [identity2 domain];

    if (domain == common)
    {
      identity3 = [(NERelay *)self identity];
      [identity3 sync];
    }
  }

  if (!common)
  {

    [(NERelay *)self setIdentityDataPassword:0];
  }
}

- (NSArray)certificateReferences
{
  v18 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy && objc_getProperty(selfCopy, v3, 96, 1))
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = objc_getProperty(selfCopy, v5, 96, 1);
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

          persistentReference = [*(*(&v13 + 1) + 8 * i) persistentReference];
          if (persistentReference)
          {
            [v4 addObject:persistentReference];
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

  objc_sync_exit(selfCopy);

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setCertificateReferences:(id)references
{
  v27 = *MEMORY[0x1E69E9840];
  referencesCopy = references;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (referencesCopy)
  {
    newValue = objc_alloc_init(MEMORY[0x1E695DF70]);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = referencesCopy;
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
          if (selfCopy)
          {
            keychainDomain = selfCopy->_keychainDomain;
            Property = objc_getProperty(selfCopy, v12, 88, 1);
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

    if (selfCopy)
    {
      objc_setProperty_atomic(selfCopy, v19, newValue, 96);
    }
  }

  else if (selfCopy)
  {
    objc_setProperty_atomic(selfCopy, v6, 0, 96);
  }

  objc_sync_exit(selfCopy);

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  identity = [(NERelay *)selfCopy identity];

  if (identity)
  {
    identity2 = [(NERelay *)selfCopy identity];
    identity = [identity2 persistentReference];
  }

  objc_sync_exit(selfCopy);

  return identity;
}

- (void)setIdentityWithKey:(id)key keyRef:(id)ref
{
  keyCopy = key;
  refCopy = ref;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [NEIdentityKeychainItem alloc];
  if (selfCopy)
  {
    keychainDomain = selfCopy->_keychainDomain;
    Property = objc_getProperty(selfCopy, v8, 88, 1);
  }

  else
  {
    keychainDomain = 0;
    Property = 0;
  }

  v12 = Property;
  v13 = [(NEKeychainItem *)v9 initWithPersistentReference:keyCopy keyReference:refCopy isModernSystem:1 domain:keychainDomain accessGroup:v12];
  [(NERelay *)selfCopy setIdentity:v13];

  objc_sync_exit(selfCopy);
}

- (void)setIdentityReferenceInternal:(id)internal
{
  internalCopy = internal;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (internalCopy)
  {
    identity = [(NERelay *)selfCopy identity];

    if (identity)
    {
      identity2 = [(NERelay *)selfCopy identity];
      [identity2 setPersistentReference:internalCopy];
    }

    else
    {
      v8 = [NEIdentityKeychainItem alloc];
      if (selfCopy)
      {
        keychainDomain = selfCopy->_keychainDomain;
        Property = objc_getProperty(selfCopy, v7, 88, 1);
      }

      else
      {
        keychainDomain = 0;
        Property = 0;
      }

      identity2 = Property;
      v11 = [(NEKeychainItem *)v8 initWithPersistentReference:internalCopy domain:keychainDomain accessGroup:identity2];
      [(NERelay *)selfCopy setIdentity:v11];
    }
  }

  else
  {
    [(NERelay *)selfCopy setIdentity:0];
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  v33 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  hTTP3RelayURL = [(NERelay *)self HTTP3RelayURL];
  if (hTTP3RelayURL)
  {

LABEL_4:
    LOBYTE(hTTP2RelayURL) = 1;
    goto LABEL_5;
  }

  hTTP2RelayURL = [(NERelay *)self HTTP2RelayURL];

  if (hTTP2RelayURL)
  {
    goto LABEL_4;
  }

  [NEConfiguration addError:errorsCopy toList:?];
LABEL_5:
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  additionalHTTPHeaderFields = [(NERelay *)self additionalHTTPHeaderFields];
  v8 = [additionalHTTPHeaderFields countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(additionalHTTPHeaderFields);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        if (isa_nsstring(v12))
        {
          additionalHTTPHeaderFields2 = [(NERelay *)self additionalHTTPHeaderFields];
          v14 = [additionalHTTPHeaderFields2 objectForKeyedSubscript:v12];
          v15 = isa_nsstring(v14);

          if (v15)
          {
            continue;
          }
        }

        [NEConfiguration addError:errorsCopy toList:?];
        LOBYTE(hTTP2RelayURL) = 0;
        goto LABEL_16;
      }

      v9 = [additionalHTTPHeaderFields countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  dnsOverHTTPSURL = [(NERelay *)self dnsOverHTTPSURL];

  if (dnsOverHTTPSURL)
  {
    dnsOverHTTPSURL2 = [(NERelay *)self dnsOverHTTPSURL];
    host = [dnsOverHTTPSURL2 host];

    hTTP3RelayURL2 = [(NERelay *)self HTTP3RelayURL];

    if (hTTP3RelayURL2)
    {
      hTTP3RelayURL3 = [(NERelay *)self HTTP3RelayURL];
      host2 = [hTTP3RelayURL3 host];
      LODWORD(hTTP3RelayURL2) = [host isEqualToString:host2];
    }

    hTTP2RelayURL2 = [(NERelay *)self HTTP2RelayURL];

    if (hTTP2RelayURL2)
    {
      hTTP2RelayURL3 = [(NERelay *)self HTTP2RelayURL];
      host3 = [hTTP2RelayURL3 host];
      v25 = [host isEqualToString:host3];

      if ((v25 | hTTP3RelayURL2))
      {
LABEL_22:

        goto LABEL_23;
      }
    }

    else if (hTTP3RelayURL2)
    {
      goto LABEL_22;
    }

    [NEConfiguration addError:errorsCopy toList:?];
    LOBYTE(hTTP2RelayURL) = 0;
    goto LABEL_22;
  }

LABEL_23:

  v26 = *MEMORY[0x1E69E9840];
  return hTTP2RelayURL;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  hTTP3RelayURL = [(NERelay *)self HTTP3RelayURL];
  [v4 setHTTP3RelayURL:hTTP3RelayURL];

  hTTP2RelayURL = [(NERelay *)self HTTP2RelayURL];
  [v4 setHTTP2RelayURL:hTTP2RelayURL];

  dnsOverHTTPSURL = [(NERelay *)self dnsOverHTTPSURL];
  [v4 setDnsOverHTTPSURL:dnsOverHTTPSURL];

  syntheticDNSAnswerIPv4Prefix = [(NERelay *)self syntheticDNSAnswerIPv4Prefix];
  [v4 setSyntheticDNSAnswerIPv4Prefix:syntheticDNSAnswerIPv4Prefix];

  syntheticDNSAnswerIPv6Prefix = [(NERelay *)self syntheticDNSAnswerIPv6Prefix];
  [v4 setSyntheticDNSAnswerIPv6Prefix:syntheticDNSAnswerIPv6Prefix];

  identity = [(NERelay *)self identity];
  [v4 setIdentity:identity];

  identityDataInternal = [(NERelay *)self identityDataInternal];
  [v4 setIdentityDataInternal:identityDataInternal];

  identityDataPassword = [(NERelay *)self identityDataPassword];
  [v4 setIdentityDataPassword:identityDataPassword];

  identityDataPasswordKeychainItem = [(NERelay *)self identityDataPasswordKeychainItem];
  [v4 setIdentityDataPasswordKeychainItem:identityDataPasswordKeychainItem];

  [v4 setIdentityDataImported:{-[NERelay identityDataImported](self, "identityDataImported")}];
  identityDataHash = [(NERelay *)self identityDataHash];
  [v4 setIdentityDataHash:identityDataHash];

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
  additionalHTTPHeaderFields = [(NERelay *)self additionalHTTPHeaderFields];
  [v4 setAdditionalHTTPHeaderFields:additionalHTTPHeaderFields];

  rawPublicKeys = [(NERelay *)self rawPublicKeys];
  [v4 setRawPublicKeys:rawPublicKeys];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  hTTP3RelayURL = [(NERelay *)self HTTP3RelayURL];
  [coderCopy encodeObject:hTTP3RelayURL forKey:@"HTTP3RelayURL"];

  hTTP2RelayURL = [(NERelay *)self HTTP2RelayURL];
  [coderCopy encodeObject:hTTP2RelayURL forKey:@"HTTP2RelayURL"];

  dnsOverHTTPSURL = [(NERelay *)self dnsOverHTTPSURL];
  [coderCopy encodeObject:dnsOverHTTPSURL forKey:@"DNSOverHTTPSURL"];

  syntheticDNSAnswerIPv4Prefix = [(NERelay *)self syntheticDNSAnswerIPv4Prefix];
  [coderCopy encodeObject:syntheticDNSAnswerIPv4Prefix forKey:@"SyntheticIPv4Prefix"];

  syntheticDNSAnswerIPv6Prefix = [(NERelay *)self syntheticDNSAnswerIPv6Prefix];
  [coderCopy encodeObject:syntheticDNSAnswerIPv6Prefix forKey:@"SyntheticIPv6Prefix"];

  identity = [(NERelay *)self identity];
  [coderCopy encodeObject:identity forKey:@"Identity"];

  identityDataInternal = [(NERelay *)self identityDataInternal];
  [coderCopy encodeObject:identityDataInternal forKey:@"IdentityData"];

  identityDataPassword = [(NERelay *)self identityDataPassword];
  [coderCopy encodeObject:identityDataPassword forKey:@"IdentityDataPassword"];

  identityDataPasswordKeychainItem = [(NERelay *)self identityDataPasswordKeychainItem];
  [coderCopy encodeObject:identityDataPasswordKeychainItem forKey:@"IdentityDataPasswordKeychainItem"];

  [coderCopy encodeBool:-[NERelay identityDataImported](self forKey:{"identityDataImported"), @"IdentityDataImported"}];
  identityDataHash = [(NERelay *)self identityDataHash];
  [coderCopy encodeObject:identityDataHash forKey:@"IdentityDataHash"];

  if (self)
  {
    [coderCopy encodeObject:objc_getProperty(self forKey:{v14, 96, 1), @"Certificates"}];
    additionalHTTPHeaderFields = [(NERelay *)self additionalHTTPHeaderFields];
    [coderCopy encodeObject:additionalHTTPHeaderFields forKey:@"AdditionalHTTPHeaders"];

    rawPublicKeys = [(NERelay *)self rawPublicKeys];
    [coderCopy encodeObject:rawPublicKeys forKey:@"RawPublicKeys"];

    hTTP3RelayURL2 = [(NERelay *)self HTTP3RelayURL];
    if (hTTP3RelayURL2)
    {
      self = 0;
    }

    else
    {
      hTTP2RelayURL2 = [(NERelay *)self HTTP2RelayURL];
      self = (hTTP2RelayURL2 != 0);
    }
  }

  else
  {
    [coderCopy encodeObject:0 forKey:@"Certificates"];
    additionalHTTPHeaderFields2 = [0 additionalHTTPHeaderFields];
    [coderCopy encodeObject:additionalHTTPHeaderFields2 forKey:@"AdditionalHTTPHeaders"];

    hTTP3RelayURL2 = [0 rawPublicKeys];
    [coderCopy encodeObject:hTTP3RelayURL2 forKey:@"RawPublicKeys"];
  }

  [coderCopy encodeBool:self forKey:@"HTTP2Only"];
}

- (NERelay)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(NERelay *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HTTP3RelayURL"];
    HTTP3RelayURL = v5->_HTTP3RelayURL;
    v5->_HTTP3RelayURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HTTP2RelayURL"];
    HTTP2RelayURL = v5->_HTTP2RelayURL;
    v5->_HTTP2RelayURL = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DNSOverHTTPSURL"];
    dnsOverHTTPSURL = v5->_dnsOverHTTPSURL;
    v5->_dnsOverHTTPSURL = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SyntheticIPv4Prefix"];
    syntheticDNSAnswerIPv4Prefix = v5->_syntheticDNSAnswerIPv4Prefix;
    v5->_syntheticDNSAnswerIPv4Prefix = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SyntheticIPv6Prefix"];
    syntheticDNSAnswerIPv6Prefix = v5->_syntheticDNSAnswerIPv6Prefix;
    v5->_syntheticDNSAnswerIPv6Prefix = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identity"];
    identity = v5->_identity;
    v5->_identity = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IdentityData"];
    identityDataInternal = v5->_identityDataInternal;
    v5->_identityDataInternal = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IdentityDataPassword"];
    identityDataPassword = v5->_identityDataPassword;
    v5->_identityDataPassword = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IdentityDataPasswordKeychainItem"];
    identityDataPasswordKeychainItem = v5->_identityDataPasswordKeychainItem;
    v5->_identityDataPasswordKeychainItem = v22;

    v5->_identityDataImported = [coderCopy decodeBoolForKey:@"IdentityDataImported"];
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IdentityDataHash"];
    identityDataHash = v5->_identityDataHash;
    v5->_identityDataHash = v24;

    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"Certificates"];
    certificates = v5->_certificates;
    v5->_certificates = v29;

    v31 = MEMORY[0x1E695DFD8];
    v32 = objc_opt_class();
    v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
    v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"AdditionalHTTPHeaders"];
    additionalHTTPHeaderFields = v5->_additionalHTTPHeaderFields;
    v5->_additionalHTTPHeaderFields = v34;

    v36 = MEMORY[0x1E695DFD8];
    v37 = objc_opt_class();
    v38 = [v36 setWithObjects:{v37, objc_opt_class(), 0}];
    v39 = [coderCopy decodeObjectOfClasses:v38 forKey:@"RawPublicKeys"];
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