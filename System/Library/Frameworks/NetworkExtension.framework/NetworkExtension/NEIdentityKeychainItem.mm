@interface NEIdentityKeychainItem
+ (id)copyIdentities:(id)a3 fromDomain:(int64_t)a4;
+ (id)importPKCS12Data:(id)a3 passphrase:(id)a4;
+ (uint64_t)copyPropertiesForIdentity:(void *)a3 persistentReference:;
- (id)copyQueryWithReturnTypes:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)sync;
@end

@implementation NEIdentityKeychainItem

- (void)sync
{
  v62[1] = *MEMORY[0x1E69E9840];
  v3 = [(NEKeychainItem *)self persistentReference];
  if (v3)
  {
  }

  else
  {
    v4 = [(NEKeychainItem *)self identifier];

    if (v4)
    {
      v47 = 0;
      v5 = [NEKeychainItem copyDataFromKeychainItem:0 outData:0 outIdentifier:&v47 outPersistentReference:?];
      v6 = v47;
      if (v5)
      {
        [(NEKeychainItem *)self setPersistentReference:v6];
      }
    }
  }

  v7 = [(NEKeychainItem *)self persistentReference];

  if (v7)
  {
    result = 0;
    v62[0] = *MEMORY[0x1E697B328];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:1];
    v9 = [(NEIdentityKeychainItem *)self copyQueryWithReturnTypes:v8];

    if (!SecItemCopyMatching(v9, &result))
    {
      v17 = result;
      TypeID = SecIdentityGetTypeID();
      if (v17)
      {
        if (CFGetTypeID(v17) == TypeID)
        {
          *buf = 0;
          if (!SecIdentityCopyCertificate(result, buf))
          {
            v19 = SecCertificateCopySubjectSummary(*buf);
            v20 = v19;
            if (self)
            {
              v21 = self;
              objc_sync_enter(v21);
              objc_storeStrong(&v21->super._identifier, v19);
              objc_sync_exit(v21);
            }

            CFRelease(*buf);
          }
        }
      }
    }

    if (result)
    {
      CFRelease(result);
    }

    v10 = [(NEKeychainItem *)self accessGroup];

    if (!v10)
    {
      goto LABEL_40;
    }

    result = 0;
    v61 = *MEMORY[0x1E697B310];
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
    v12 = [(NEIdentityKeychainItem *)self copyQueryWithReturnTypes:v11];

    v13 = SecItemCopyMatching(v12, &result);
    if (v13)
    {
      v14 = v13;
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = [(NEKeychainItem *)self persistentReference];
        *buf = 138412546;
        *&buf[4] = v16;
        v49 = 1024;
        LODWORD(v50) = v14;
        _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, "Cannot update access group, failed to find item with persistent reference %@: %d", buf, 0x12u);
      }

      goto LABEL_37;
    }

    v15 = result;
    if (isa_nsdictionary(v15))
    {
      v22 = *MEMORY[0x1E697AE60];
      v23 = [v15 objectForKeyedSubscript:*MEMORY[0x1E697AE60]];
      if (isa_nsdata(v23))
      {
        v25 = *MEMORY[0x1E697B000];
        v57[0] = *MEMORY[0x1E697AFF8];
        v24 = v57[0];
        v57[1] = v22;
        v59[0] = v25;
        v59[1] = v23;
        v58 = *MEMORY[0x1E697B3A8];
        v26 = v58;
        v60 = *MEMORY[0x1E695E4D0];
        v27 = v60;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v57 count:3];
        v29 = *MEMORY[0x1E697B020];
        v30 = *MEMORY[0x1E697AC40];
        v55[0] = v24;
        v55[1] = v30;
        v56[0] = v29;
        v56[1] = v23;
        v55[2] = v26;
        v56[2] = v27;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:3];
        v53 = *MEMORY[0x1E697ABD0];
        v32 = [(NEKeychainItem *)self accessGroup];
        v54 = v32;
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];

        v34 = SecItemUpdate(v28, v33);
        if (v34)
        {
          v35 = v34;
          v36 = ne_log_obj();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v45 = [(NEKeychainItem *)self accessGroup];
            *buf = 138412802;
            *&buf[4] = v45;
            v49 = 2112;
            v50 = v23;
            v51 = 1024;
            v52 = v35;
            v37 = "Failed to update the access group to %@ for certificate %@: %d";
LABEL_45:
            _os_log_error_impl(&dword_1BA83C000, v36, OS_LOG_TYPE_ERROR, v37, buf, 0x1Cu);
          }
        }

        else
        {
          v41 = SecItemUpdate(v31, v33);
          if (!v41)
          {
LABEL_34:

            goto LABEL_35;
          }

          v42 = v41;
          v36 = ne_log_obj();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v45 = [(NEKeychainItem *)self accessGroup];
            *buf = 138412802;
            *&buf[4] = v45;
            v49 = 2112;
            v50 = v23;
            v51 = 1024;
            v52 = v42;
            v37 = "Failed to update the access group to %@ for key %@: %d";
            goto LABEL_45;
          }
        }

        goto LABEL_34;
      }

      v28 = ne_log_obj();
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
LABEL_35:

        goto LABEL_36;
      }

      *buf = 0;
      v38 = "Cannot update access group, identity has no public key hash attribute";
      v39 = v28;
      v40 = 2;
    }

    else
    {
      v23 = ne_log_obj();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
LABEL_36:

LABEL_37:
        [(NEKeychainItem *)self setAccessGroup:0];
        if (result)
        {
          CFRelease(result);
        }

LABEL_40:
        goto LABEL_41;
      }

      v28 = [(NEKeychainItem *)self persistentReference];
      *buf = 138412290;
      *&buf[4] = v28;
      v38 = "Cannot update access group, failed to fetch attributes for persistent reference %@";
      v39 = v23;
      v40 = 12;
    }

    _os_log_error_impl(&dword_1BA83C000, v39, OS_LOG_TYPE_ERROR, v38, buf, v40);
    goto LABEL_35;
  }

LABEL_41:
  [(NEKeychainItem *)self setData:0];
  if (self)
  {
    objc_setProperty_atomic_copy(self, v43, 0, 72);
  }

  v44 = *MEMORY[0x1E69E9840];
}

- (id)copyQueryWithReturnTypes:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [(NEKeychainItem *)self persistentReference];

  if (v6)
  {
    if (v4)
    {
      [v5 setObject:*MEMORY[0x1E697B010] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
    }

    v7 = [(NEKeychainItem *)self persistentReference];
    v8 = MEMORY[0x1E697B3C8];
  }

  else
  {
    v9 = [(NEKeychainItem *)self identifier];

    if (!v9)
    {
      goto LABEL_8;
    }

    [v5 setObject:*MEMORY[0x1E697B010] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
    v7 = [(NEKeychainItem *)self identifier];
    v8 = MEMORY[0x1E697ADC8];
  }

  [v5 setObject:v7 forKeyedSubscript:*v8];

LABEL_8:
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    v14 = MEMORY[0x1E695E118];
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [v5 setObject:v14 forKeyedSubscript:{*(*(&v18 + 1) + 8 * v15++), v18}];
      }

      while (v12 != v15);
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(NEKeychainItem *)self persistentReference];
  v6 = [(NEKeychainItem *)self domain];
  v7 = [(NEKeychainItem *)self accessGroup];
  v8 = [v4 initWithPersistentReference:v5 domain:v6 accessGroup:v7];

  return v8;
}

+ (id)importPKCS12Data:(id)a3 passphrase:(id)a4
{
  v33[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = *MEMORY[0x1E697B0B0];
    items = 0;
    v32 = v8;
    v33[0] = v6;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    if (!v9 || SecPKCS12Import(v5, v9, &items) || ((v10 = *MEMORY[0x1E695E480], Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), v12 = CFArrayCreateMutable(v10, 0, MEMORY[0x1E695E9C0]), Mutable) ? (v13 = v12 == 0) : (v13 = 1), v13 || (v14 = v12, !CFArrayGetCount(items))))
    {
      v14 = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(items, 0);
      Value = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E697B0B8]);
      trust = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E697B0C0]);
      CertificateCount = SecTrustGetCertificateCount(trust);
      if (CertificateCount >= 1)
      {
        v16 = 0;
        key = *MEMORY[0x1E697B3D0];
        v26 = *MEMORY[0x1E697B320];
        v17 = *MEMORY[0x1E695E4D0];
        v18 = *MEMORY[0x1E697ABD8];
        v19 = *MEMORY[0x1E697ABE0];
        v20 = *MEMORY[0x1E697B3A8];
        do
        {
          result = 0;
          CertificateAtIndex = Value;
          if (v16)
          {
            CertificateAtIndex = SecTrustGetCertificateAtIndex(trust, v16);
          }

          CFDictionarySetValue(Mutable, key, CertificateAtIndex);
          CFDictionarySetValue(Mutable, v26, v17);
          CFDictionarySetValue(Mutable, v18, v19);
          CFDictionarySetValue(Mutable, v20, v17);
          v22 = SecItemAdd(Mutable, &result);
          if (v22 == -25299)
          {
            CFDictionaryRemoveValue(Mutable, v18);
            v22 = SecItemCopyMatching(Mutable, &result);
          }

          if (!v22 && result)
          {
            CFArrayAppendValue(v14, result);
            CFRelease(result);
          }

          ++v16;
        }

        while (CertificateCount != v16);
      }

      CFRelease(Mutable);
      CFRelease(items);
    }
  }

  else
  {
    v14 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)copyIdentities:(id)a3 fromDomain:(int64_t)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  result = 0;
  [v5 setObject:*MEMORY[0x1E697B010] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B328]];
  if (v4)
  {
    v6 = *MEMORY[0x1E697B3C8];
    v7 = v5;
    v8 = v4;
  }

  else
  {
    v8 = *MEMORY[0x1E697B268];
    v6 = *MEMORY[0x1E697B260];
    v7 = v5;
  }

  [v7 setObject:v8 forKeyedSubscript:v6];
  [v5 setObject:*MEMORY[0x1E695E4D0] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  v9 = SecItemCopyMatching(v5, &result);
  if (v9)
  {
    v10 = v9;
    v11 = ne_log_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    *buf = 67109120;
    LODWORD(v38) = v10;
    v32 = "SecItemCopyMatching failed: %d";
    v33 = v11;
    v34 = 8;
    goto LABEL_35;
  }

  v15 = result;
  TypeID = CFArrayGetTypeID();
  if (v15 && CFGetTypeID(v15) == TypeID)
  {
    v35 = v4;
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v17 = 0;
    v12 = 0;
    v18 = result;
    v19 = 0x1E7F04000uLL;
    while (v17 < CFArrayGetCount(v18))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v18, v17);
      v21 = SecIdentityGetTypeID();
      if (ValueAtIndex && CFGetTypeID(ValueAtIndex) == v21)
      {
        v22 = [(NEIdentityKeychainItem *)*(v19 + 3184) copyPropertiesForIdentity:0 persistentReference:?];
        v23 = v22;
        if (v22)
        {
          v24 = [v22 objectForKeyedSubscript:@"persistent-reference"];
          v25 = [v11 objectForKeyedSubscript:v24];

          if (!v25)
          {
            v26 = [v23 objectForKeyedSubscript:@"persistent-reference"];
            [v11 setObject:v23 forKeyedSubscript:v26];

            if (!v12)
            {
              v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [v12 addObject:{v23, v35}];
            v19 = 0x1E7F04000;
          }
        }
      }

      ++v17;
    }

    v4 = v35;
  }

  else
  {
    v27 = result;
    v28 = SecIdentityGetTypeID();
    if (!v27 || CFGetTypeID(v27) != v28)
    {
      v29 = result;
      v30 = ne_log_obj();
      v11 = v30;
      if (!v29)
      {
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_INFO, "SecItemCopyMatching returned NULL while searching for identities", buf, 2u);
        }

        goto LABEL_6;
      }

      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
LABEL_6:
        v12 = 0;
        goto LABEL_7;
      }

      v31 = CFGetTypeID(result);
      *buf = 134217984;
      v38 = v31;
      v32 = "SecItemCopyMatching returned an unsupported type (%lu) when searching for identities";
      v33 = v11;
      v34 = 12;
LABEL_35:
      _os_log_error_impl(&dword_1BA83C000, v33, OS_LOG_TYPE_ERROR, v32, buf, v34);
      goto LABEL_6;
    }

    v11 = [NEIdentityKeychainItem copyPropertiesForIdentity:v4 persistentReference:?];
    if (!v11)
    {
      goto LABEL_6;
    }

    v12 = [MEMORY[0x1E695DF70] arrayWithObject:v11];
  }

LABEL_7:

  if (result)
  {
    CFRelease(result);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (uint64_t)copyPropertiesForIdentity:(void *)a3 persistentReference:
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_self();
  if (v4)
  {
    goto LABEL_2;
  }

  objc_opt_self();
  result = 0;
  v10 = *MEMORY[0x1E697B3D0];
  certificateRef[0] = *MEMORY[0x1E697B320];
  certificateRef[1] = v10;
  *buf = MEMORY[0x1E695E118];
  *&buf[8] = a2;
  certificateRef[2] = *MEMORY[0x1E697B3A8];
  *&buf[16] = *MEMORY[0x1E695E4D0];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:certificateRef count:3];
  if (SecItemCopyMatching(v11, &result))
  {
    goto LABEL_19;
  }

  v12 = result;
  TypeID = CFDataGetTypeID();
  if (!v12)
  {
    v4 = result;
LABEL_14:
    v16 = ne_log_obj();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      if (v17)
      {
        v18 = CFGetTypeID(result);
        *v27 = 134217984;
        v28 = v18;
        v19 = "SecItemCopyMatching returned an object with an unexpected type (%lu) when getting an identity's persistent reference";
        v20 = v16;
        v21 = 12;
LABEL_25:
        _os_log_error_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_ERROR, v19, v27, v21);
      }
    }

    else if (v17)
    {
      *v27 = 0;
      v19 = "SecItemCopyMatching returned NULL when getting an identity's persistent reference";
      v20 = v16;
      v21 = 2;
      goto LABEL_25;
    }

LABEL_19:
    if (result)
    {
      CFRelease(result);
    }

    v4 = 0;
    goto LABEL_22;
  }

  v14 = TypeID;
  v15 = CFGetTypeID(v12);
  v4 = result;
  if (v15 != v14)
  {
    goto LABEL_14;
  }

  if (!v4)
  {
LABEL_22:
    v9 = 0;
    goto LABEL_23;
  }

LABEL_2:
  certificateRef[0] = 0;
  v6 = SecIdentityCopyCertificate(a2, certificateRef);
  if (v6)
  {
    v7 = v6;
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = v5;
      *&buf[12] = 1024;
      *&buf[14] = v7;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "%@: failed to get the certificate from an identity: %d", buf, 0x12u);
    }

    v9 = 0;
  }

  else
  {
    v8 = SecCertificateCopyData(certificateRef[0]);
    CFRelease(certificateRef[0]);
    v25[0] = @"persistent-reference";
    v25[1] = @"certificate-data";
    v26[0] = v4;
    v26[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
  }

LABEL_23:
  v22 = *MEMORY[0x1E69E9840];
  return v9;
}

@end