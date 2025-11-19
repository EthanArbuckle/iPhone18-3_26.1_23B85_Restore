@interface APSKeychainClientIdentityProvider
- (APSKeychainClientIdentityProvider)init;
- (BOOL)generateNonceAndSignatureWithPublicKey:(__SecKey *)a3 privateKey:(__SecKey *)a4 dataToSign:(id)a5 time:(id)a6 useIDSNonceVersion:(BOOL)a7 nonceOut:(id *)a8 signatureOut:(id *)a9;
- (BOOL)hasUnderlyingIdentityChanged;
- (BOOL)isReadyToFetchIdentity;
- (__SecIdentity)clientIdentity;
- (id)fetchVMHostCertsAndSignData:(id)a3 error:(id *)a4;
- (void)_copyClientIdentityFromKeychain:(__SecIdentity *)a3;
- (void)_processPotentialIdentityChanged;
- (void)checkIdentityIsAvailable:(id)a3 hasExistingToken:(BOOL)a4;
- (void)dealloc;
- (void)debugForceIdentitySwap;
- (void)fetchClientIdentityWithReason:(unint64_t)a3 hasExistingToken:(BOOL)a4 completionHandler:(id)a5;
- (void)forceIdentityRefresh:(id)a3;
- (void)noteInvalidServerPresence;
- (void)noteValidServerPresence;
- (void)preloadIdentity:(id)a3;
@end

@implementation APSKeychainClientIdentityProvider

- (APSKeychainClientIdentityProvider)init
{
  v7.receiver = self;
  v7.super_class = APSKeychainClientIdentityProvider;
  v2 = [(APSKeychainClientIdentityProvider *)&v7 init];
  if (v2)
  {
    if (sub_10000712C())
    {
      v3 = objc_alloc_init(APSDefaultsDebugOverrides);
      [(APSKeychainClientIdentityProvider *)v2 setDebugOverrides:v3];
    }

    else
    {
      [(APSKeychainClientIdentityProvider *)v2 setDebugOverrides:0];
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_1000807B8, @"com.apple.mobile.keybagd.first_unlock", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v5 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v5, v2, sub_1000807B8, kLockdownNotificationIdentityChanged, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

- (void)dealloc
{
  cachedClientIdentity = self->_cachedClientIdentity;
  if (cachedClientIdentity)
  {
    CFRelease(cachedClientIdentity);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.mobile.keybagd.first_unlock", 0);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v5, self, kLockdownNotificationIdentityChanged, 0);
  v6.receiver = self;
  v6.super_class = APSKeychainClientIdentityProvider;
  [(APSKeychainClientIdentityProvider *)&v6 dealloc];
}

- (__SecIdentity)clientIdentity
{
  p_cachedClientIdentity = &self->_cachedClientIdentity;
  if (self->_cachedClientIdentity)
  {
    v3 = +[APSLog courier];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *p_cachedClientIdentity;
      *buf = 138412290;
      *&buf[4] = v4;
      v5 = "_getClientIdentity: already had identity: %@";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v5, buf, 0xCu);
      goto LABEL_29;
    }

    goto LABEL_29;
  }

  [(APSKeychainClientIdentityProvider *)self _copyClientIdentityFromKeychain:&self->_cachedClientIdentity];
  cachedClientIdentity = self->_cachedClientIdentity;
  v3 = +[APSLog courier];
  v8 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (!cachedClientIdentity)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "No identity found in keychain. Copying activation identity.", buf, 2u);
    }

    v22 = 0;
    v10 = sub_100080DCC(&v22);
    v3 = v22;
    *p_cachedClientIdentity = v10;
    MGGetBoolAnswer();
    if (!*p_cachedClientIdentity)
    {
      v11 = +[APSLog courier];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10010BC20();
      }

      if (!*p_cachedClientIdentity)
      {
        goto LABEL_29;
      }
    }

    v12 = +[APSLog courier];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *p_cachedClientIdentity;
      *buf = 138412290;
      *&buf[4] = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Got identity from keychain: %@", buf, 0xCu);
    }

    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(Mutable, kSecAttrAccessGroup, APSBundleIdentifier);
    CFDictionaryAddValue(Mutable, kSecAttrLabel, @"APSClientIdentity");
    CFDictionaryAddValue(Mutable, kSecValueRef, *p_cachedClientIdentity);
    CFDictionaryAddValue(Mutable, kSecReturnPersistentRef, kCFBooleanTrue);
    v15 = +[APSMultiUserMode sharedInstance];
    v16 = [v15 isMultiUser];

    if (v16)
    {
      CFDictionaryAddValue(Mutable, kSecUseSystemKeychain, kCFBooleanTrue);
    }

    *buf = 0;
    v17 = SecItemAdd(Mutable, buf);
    v18 = *buf;
    if (v17 || *buf)
    {
      if (!v17)
      {
LABEL_26:
        if (v18)
        {
          CFRelease(v18);
        }

        CFRelease(Mutable);
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotificationWithOptions(DarwinNotifyCenter, APSClientIdentityUpdatedNotification, 0, 0, 1uLL);
        goto LABEL_29;
      }

      v19 = +[APSLog courier];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10010BCFC(v17, v19);
      }
    }

    else
    {
      v19 = +[APSLog courier];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10010BCB8(v19);
      }
    }

    v18 = *buf;
    goto LABEL_26;
  }

  if (v8)
  {
    v9 = *p_cachedClientIdentity;
    *buf = 138412290;
    *&buf[4] = v9;
    v5 = "Found identity in keychain: %@";
    goto LABEL_7;
  }

LABEL_29:

  return *p_cachedClientIdentity;
}

- (void)_copyClientIdentityFromKeychain:(__SecIdentity *)a3
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, kSecAttrAccessGroup, APSBundleIdentifier);
  CFDictionaryAddValue(Mutable, kSecAttrLabel, @"APSClientIdentity");
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassIdentity);
  CFDictionaryAddValue(Mutable, kSecReturnRef, kCFBooleanTrue);
  v5 = +[APSMultiUserMode sharedInstance];
  v6 = [v5 isMultiUser];

  if (v6)
  {
    CFDictionaryAddValue(Mutable, kSecUseSystemKeychain, kCFBooleanTrue);
  }

  v7 = SecItemCopyMatching(Mutable, a3);
  if (v7 != -25300)
  {
    v8 = v7;
    if (v7)
    {
      v9 = +[APSLog courier];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10010BB20(v8, v9);
      }
    }
  }

  CFRelease(Mutable);
}

- (void)_processPotentialIdentityChanged
{
  if ([(APSKeychainClientIdentityProvider *)self hasUnderlyingIdentityChanged])
  {
    v3 = [(APSKeychainClientIdentityProvider *)self identityAvailabilityDidChangeBlock];

    if (v3)
    {
      v4 = [(APSKeychainClientIdentityProvider *)self identityAvailabilityDidChangeBlock];
      v4[2](v4, [(APSKeychainClientIdentityProvider *)self isReadyToFetchIdentity]);
    }
  }
}

- (void)preloadIdentity:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100080B00;
  v5[3] = &unk_100187FD0;
  v6 = a3;
  v4 = v6;
  [(APSKeychainClientIdentityProvider *)self fetchClientIdentityWithReason:2 hasExistingToken:1 completionHandler:v5];
}

- (void)forceIdentityRefresh:(id)a3
{
  v4 = a3;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, kSecAttrAccessGroup, APSBundleIdentifier);
  CFDictionaryAddValue(Mutable, kSecAttrLabel, @"APSClientIdentity");
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassIdentity);
  v6 = +[APSMultiUserMode sharedInstance];
  v7 = [v6 isMultiUser];

  if (v7)
  {
    CFDictionaryAddValue(Mutable, kSecUseSystemKeychain, kCFBooleanTrue);
  }

  if (SecItemDelete(Mutable))
  {
    v8 = +[APSLog courier];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10010BB9C();
    }
  }

  CFRelease(Mutable);
  cachedClientIdentity = self->_cachedClientIdentity;
  if (cachedClientIdentity)
  {
    CFRelease(cachedClientIdentity);
    self->_cachedClientIdentity = 0;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100080D60;
  v11[3] = &unk_100188048;
  v12 = v4;
  v10 = v4;
  [(APSKeychainClientIdentityProvider *)self preloadIdentity:v11];
}

- (BOOL)isReadyToFetchIdentity
{
  if (self->_cachedClientIdentity)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v6[1] = v2;
    v6[2] = v3;
    v6[0] = 0;
    [(APSKeychainClientIdentityProvider *)self _copyClientIdentityFromKeychain:v6];
    v4 = v6[0];
    if (v6[0] || (v4 = sub_100080DCC(0)) != 0)
    {
      CFRelease(v4);
      LOBYTE(v4) = 1;
    }
  }

  return v4;
}

- (void)checkIdentityIsAvailable:(id)a3 hasExistingToken:(BOOL)a4
{
  v6 = a3;
  (*(a3 + 2))(v6, [(APSKeychainClientIdentityProvider *)self isReadyToFetchIdentity]);
}

- (void)fetchClientIdentityWithReason:(unint64_t)a3 hasExistingToken:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = [(APSKeychainClientIdentityProvider *)self clientIdentity];
  certificate = 0;
  privateKeyRef = 0;
  v8 = +[NSMutableArray array];
  if (!v7)
  {
    goto LABEL_13;
  }

  if (SecIdentityCopyPrivateKey(v7, &privateKeyRef))
  {
    v9 = +[APSLog courier];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ could not copy private key!", buf, 0xCu);
    }
  }

  v10 = SecIdentityCopyCertificate(v7, &certificate);
  v11 = [(APSKeychainClientIdentityProvider *)self debugOverrides];
  v12 = [v11 forceInvalidAlbertCert];

  if (v12)
  {
    v13 = +[APSLog courier];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = self;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ default set, forcing invalid albert cert", buf, 0xCu);
    }

    v21 = NSDebugDescriptionErrorKey;
    v22 = @"Force invalid albert cert default set";
    v14 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v15 = [NSError errorWithDomain:@"APSClientIdentityProviderErrorDomain" code:-10008 userInfo:v14];

    goto LABEL_17;
  }

  if (!v10 && certificate)
  {
    v16 = SecCertificateCopyData(certificate);
    [v8 addObject:v16];

LABEL_13:
    v15 = 0;
    goto LABEL_17;
  }

  v17 = +[APSLog courier];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = self;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@ could not copy device certificate!", buf, 0xCu);
  }

  v15 = [NSError errorWithDomain:@"APSClientIdentityProviderErrorDomain" code:-10008 userInfo:0];
LABEL_17:
  v18 = privateKeyRef;
  if (v6)
  {
    v6[2](v6, privateKeyRef, v8, v15);
    v18 = privateKeyRef;
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (certificate)
  {
    CFRelease(certificate);
  }
}

- (BOOL)generateNonceAndSignatureWithPublicKey:(__SecKey *)a3 privateKey:(__SecKey *)a4 dataToSign:(id)a5 time:(id)a6 useIDSNonceVersion:(BOOL)a7 nonceOut:(id *)a8 signatureOut:(id *)a9
{
  v10 = a7;
  v15 = a6;
  v16 = a5;
  LOBYTE(a8) = sub_10001BDD8(a3, a4, v16, v15, v10, [(APSKeychainClientIdentityProvider *)self signatureTypeForSigning], a8, a9);

  return a8;
}

- (BOOL)hasUnderlyingIdentityChanged
{
  v3 = sub_100080DCC(0);
  cf2 = 0;
  [(APSKeychainClientIdentityProvider *)self _copyClientIdentityFromKeychain:&cf2];
  if (v3)
  {
    if (cf2 && CFEqual(v3, cf2))
    {
      cachedClientIdentity = self->_cachedClientIdentity;
      if (cachedClientIdentity && CFEqual(v3, cachedClientIdentity))
      {
        v5 = 0;
LABEL_16:
        CFRelease(v3);
        goto LABEL_17;
      }

      v6 = +[APSLog courier];
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
LABEL_15:

        v5 = 1;
        goto LABEL_16;
      }

      v10 = self->_cachedClientIdentity;
      *buf = 138412802;
      v13 = self;
      v14 = 2112;
      v15 = v3;
      v16 = 2112;
      v17 = v10;
      v7 = "%@ device mobile activation identity doesn't match cached identity. {mobileActivationIdentiy %@; apsCachedIdentity %@}";
    }

    else
    {
      v6 = +[APSLog courier];
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      *buf = 138412802;
      v13 = self;
      v14 = 2112;
      v15 = v3;
      v16 = 2112;
      v17 = cf2;
      v7 = "%@ device mobile activation identity doesn't match apsd's keychain identity. {mobileActivationIdentiy %@; apsKeychainIdentity %@}";
    }

    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, v7, buf, 0x20u);
    goto LABEL_15;
  }

  if (cf2 || self->_cachedClientIdentity)
  {
    v8 = +[APSLog courier];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10010BD78(self, &cf2);
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

LABEL_17:
  if (cf2)
  {
    CFRelease(cf2);
  }

  return v5;
}

- (id)fetchVMHostCertsAndSignData:(id)a3 error:(id *)a4
{
  v5 = [APSLog courier:a3];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ can't fetch host VM identity with an albert identity provider!", &v7, 0xCu);
  }

  return 0;
}

- (void)noteValidServerPresence
{
  v3 = +[APSLog courier];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ informed of a valid server presence. Ignoring.", &v4, 0xCu);
  }
}

- (void)noteInvalidServerPresence
{
  v3 = +[APSLog courier];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ informed of an invalid server presence. Not doing anything, the next presence will use the same identity.", &v4, 0xCu);
  }
}

- (void)debugForceIdentitySwap
{
  v3 = +[APSLog courier];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ swapping identity providers not supported, not using a multi identity provider", &v4, 0xCu);
  }
}

@end