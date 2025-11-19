uint64_t MCMContainerContentClassForMBContainerType(int a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_17790[a1 - 1];
  }
}

__CFString *MBStringForContainerType(int a1)
{
  if ((a1 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_24998[a1 - 1];
  }
}

uint64_t sub_1858(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Data/Application"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Data/PluginKitPlugin"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Shared/AppGroup"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"System/Data"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"System/Shared"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_2484(void *a1)
{
  v1 = [a1 stringByStandardizingPath];
  v2 = [v1 stringByDeletingLastPathComponent];
  v3 = [v1 substringFromIndex:{objc_msgSend(v2, "length") + 1}];
  v4 = [v3 stringByAppendingPathComponent:@"PlaceholderEntitlements.plist"];

  return v4;
}

id sub_2D38()
{
  if (qword_2A7A8 != -1)
  {
    sub_135E0();
  }

  v1 = qword_2A7A0;

  return v1;
}

id sub_2D7C()
{
  if (qword_2A7B8 != -1)
  {
    sub_135F4();
  }

  v1 = qword_2A7B0;

  return v1;
}

id sub_2DC0()
{
  if (qword_2A7C8 != -1)
  {
    sub_13608();
  }

  v1 = qword_2A7C0;

  return v1;
}

void sub_3414(id a1)
{
  qword_2A760 = [NSSet setWithObjects:kCFBundleIdentifierKey, @"ContainerContentClass", kCFBundleVersionKey, @"Path", @"SafeHarborDockingDate", 0];

  _objc_release_x1();
}

void sub_3498(id a1)
{
  qword_2A770 = [NSSet setWithObjects:&stru_251F0, 0];

  _objc_release_x1();
}

void sub_34EC(id a1)
{
  v4 = sub_2D7C();
  v1 = [NSSet setWithObjects:@".com.apple.mobile_container_manager.metadata.plist", @"SystemData/com.apple.AuthenticationServices", @"Library/SplashBoard", 0];
  v2 = [v4 setByAddingObjectsFromSet:v1];
  v3 = qword_2A780;
  qword_2A780 = v2;
}

void sub_3588(id a1)
{
  v4 = sub_2DC0();
  v1 = [NSSet setWithObjects:@"SystemData/com.apple.AuthenticationServices", @"Library/SplashBoard", @"Library/Caches/NeverRestore", 0];
  v2 = [v4 setByAddingObjectsFromSet:v1];
  v3 = qword_2A790;
  qword_2A790 = v2;
}

void sub_3624(id a1)
{
  qword_2A7A0 = [NSSet setWithObjects:@"Documents", @"Library", @"GeoJSON", 0];

  _objc_release_x1();
}

void sub_368C(id a1)
{
  qword_2A7B0 = [NSSet setWithObjects:@"Library/Caches", @"Library/SyncedPreferences", @"Library/Saved Application State", @"SystemData/com.apple.AuthenticationServices", @"Library/SplashBoard", @"SystemData/com.apple.chrono", 0];

  _objc_release_x1();
}

void sub_3710(id a1)
{
  qword_2A7C0 = [NSSet setWithObjects:@"NewsstandArtwork", @"Library/Saved Application State", @"SystemData/com.apple.AuthenticationServices", @"Library/SplashBoard", @"SystemData/com.apple.chrono", 0];

  _objc_release_x1();
}

void sub_378C(id a1)
{
  qword_2A7D0 = [NSSet setWithObjects:&stru_251F0, 0];

  _objc_release_x1();
}

void sub_37E0(id a1)
{
  v4 = sub_2D7C();
  v1 = [NSSet setWithObjects:@".com.apple.mobile_container_manager.metadata.plist", @"Library/Saved Application State", @"SystemData/com.apple.AuthenticationServices", @"Library/SplashBoard", 0];
  v2 = [v4 setByAddingObjectsFromSet:v1];
  v3 = qword_2A7E0;
  qword_2A7E0 = v2;
}

void sub_3884(id a1)
{
  v4 = sub_2DC0();
  v1 = [NSSet setWithObjects:@"Library/Saved Application State", @"SystemData/com.apple.AuthenticationServices", @"Library/SplashBoard", 0];
  v2 = [v4 setByAddingObjectsFromSet:v1];
  v3 = qword_2A7F0;
  qword_2A7F0 = v2;
}

void sub_3964(id a1)
{
  qword_2A800 = [[MBManagedPolicy alloc] _init];

  _objc_release_x1();
}

void sub_506C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) _configurePlaceholderIPA:*(a1 + 40) personaIdentifier:*(a1 + 48) isDataSeparated:*(a1 + 88) installType:*(a1 + 80)])
  {
    atomic_fetch_add((*(*(a1 + 72) + 8) + 24), 1u);
  }

  dispatch_semaphore_signal(*(a1 + 56));
  dispatch_group_leave(*(a1 + 64));

  objc_autoreleasePoolPop(v2);
}

CFStringRef copyPasswordFromKeychain()
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(v1, kSecAttrService, @"BackupAgent");
  CFDictionaryAddValue(v1, kSecAttrAccount, @"BackupPassword");
  CFDictionaryAddValue(v1, kSecReturnData, kCFBooleanTrue);
  result = 0;
  v2 = SecItemCopyMatching(v1, &result);
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = result == 0;
  }

  if (v3)
  {
    v4 = MBGetDefaultLog();
    v5 = v4;
    if (v2 == -25300)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Couldn't find an encrypted backup password in the keychain.", buf, 2u);
LABEL_13:
        _MBLog();
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v12 = v2;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Could not copy encrypted backup password from keychain: %d", buf, 8u);
      goto LABEL_13;
    }

    v8 = 0;
    goto LABEL_15;
  }

  BytePtr = CFDataGetBytePtr(result);
  Length = CFDataGetLength(result);
  v8 = CFStringCreateWithBytes(0, BytePtr, Length, 0x8000100u, 1u);
LABEL_15:
  if (result)
  {
    CFRelease(result);
    result = 0;
  }

  CFRelease(v1);
  return v8;
}

void setLockdownEncryptionInfo(uint64_t a1)
{
  if (lockdown_connect())
  {
    v2 = lockdown_set_value();
    v3 = MBGetDefaultLog();
    v4 = v3;
    if (v2)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v7) = v2;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Could not set lockdown key for encryption: %d", buf, 8u);
LABEL_10:
        _MBLog();
      }
    }

    else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v7 = @"WillEncrypt";
      v8 = 2112;
      v9 = a1;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%@ key successfully set to %@", buf, 0x16u);
      goto LABEL_10;
    }

    lockdown_disconnect();
    return;
  }

  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Could not connect to lockdown!", buf, 2u);
    _MBLog();
  }
}

void makeLockdownEncryptionInfoConsistentWithKeychain()
{
  v0 = MBGetDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v0, OS_LOG_TYPE_INFO, "Setting lockdown key to be consistent with the keychain", buf, 2u);
    _MBLog();
  }

  v1 = copyPasswordFromKeychain();
  v2 = MBGetDefaultLog();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
  if (v1)
  {
    if (v3)
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "setting lockdown encryption info since a password exists in the keychain", v5, 2u);
      _MBLog();
    }

    setLockdownEncryptionInfo(kCFBooleanTrue);
    CFRelease(v1);
  }

  else
  {
    if (v3)
    {
      *v4 = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "clearing lockdown encryption info since a password doesn't exist in the keychain", v4, 2u);
      _MBLog();
    }

    setLockdownEncryptionInfo(kCFBooleanFalse);
  }
}

uint64_t setPasswordInKeychain(const __CFString *a1)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v3 = Mutable;
    v4 = kCFBooleanFalse;
    CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
    CFDictionaryAddValue(v3, kSecAttrService, @"BackupAgent");
    CFDictionaryAddValue(v3, kSecAttrAccount, @"BackupPassword");
    CFDictionaryAddValue(v3, kSecReturnData, kCFBooleanFalse);
    if (!a1)
    {
      v10 = SecItemDelete(v3);
      if (v10 != -25300)
      {
        v11 = v10;
        if (!v10)
        {
          v12 = MBGetDefaultLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Encrypted backup password successfully deleted from the keychain", buf, 2u);
            _MBLog();
          }

          v9 = 0;
          goto LABEL_31;
        }

        v19 = MBGetDefaultLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v22 = v11;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Could not delete encrypted backup password from the keychain: %d", buf, 8u);
          _MBLog();
        }
      }

      v9 = 1;
      goto LABEL_31;
    }

    ExternalRepresentation = CFStringCreateExternalRepresentation(0, a1, 0x8000100u, 0x3Fu);
    if (SecItemCopyMatching(v3, 0))
    {
      CFDictionaryAddValue(v3, kSecValueData, ExternalRepresentation);
      v6 = SecItemAdd(v3, 0);
      if (!v6)
      {
        v4 = kCFBooleanTrue;
        v18 = MBGetDefaultLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Encrypted backup password successfully added to the keychain", buf, 2u);
          _MBLog();
        }

        v9 = 0;
        if (!ExternalRepresentation)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      v7 = v6;
      v8 = MBGetDefaultLog();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
LABEL_29:

        v9 = 1;
        if (ExternalRepresentation)
        {
LABEL_30:
          CFRelease(ExternalRepresentation);
        }

LABEL_31:
        setLockdownEncryptionInfo(v4);
        CFRelease(v3);
        return v9;
      }

      *buf = 67109120;
      v22 = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Could not add the encrypted backup password to the keychain: %d", buf, 8u);
    }

    else
    {
      v13 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v13)
      {
        v14 = v13;
        CFDictionaryAddValue(v13, kSecValueData, ExternalRepresentation);
        v15 = SecItemUpdate(v3, v14);
        v16 = MBGetDefaultLog();
        v17 = v16;
        if (v15)
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v22 = v15;
            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "There was an error updating the backup password in the keychain: %d", buf, 8u);
            _MBLog();
          }

          v9 = 1;
        }

        else
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Encrypted backup password successfully updated in the keychain", buf, 2u);
            _MBLog();
          }

          v9 = 0;
          v4 = kCFBooleanTrue;
        }

        CFRelease(v14);
        if (!ExternalRepresentation)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      v8 = MBGetDefaultLog();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Could not create a dictionary for the new encrypted backup password", buf, 2u);
    }

    _MBLog();
    goto LABEL_29;
  }

  return 1;
}

uint64_t MBExcludedAppTypeFromAppRecord(void *a1)
{
  v1 = a1;
  v2 = [v1 managementDomain];
  v3 = [v2 hasPrefix:@"swift-playgrounds"];

  if (v3)
  {
    v4 = 2;
  }

  else
  {
    v5 = [v1 appClipMetadata];
    v4 = v5 != 0;
  }

  return v4;
}

id sub_96FC(void *a1, void *a2)
{
  v3 = a1;
  v104 = a2;
  v4 = +[NSMutableDictionary dictionary];
  v5 = [v3 bundleIdentifier];
  if (!v5)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v126 = v3;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "app.bundleIdentifier is nil: %@", buf, 0xCu);
      v73 = v3;
      _MBLog();
    }
  }

  [v4 setObject:v5 forKeyedSubscript:v73];
  v7 = MBStringForContainerType(1);
  [v4 setObject:v7 forKeyedSubscript:@"ContainerContentClass"];

  v8 = [v3 bundleVersion];

  if (v8)
  {
    v9 = [v3 bundleVersion];
    [v4 setObject:v9 forKeyedSubscript:kCFBundleVersionKey];
  }

  v10 = [v3 mb_applicationType];
  v85 = v10;
  if (v10)
  {
    [v4 setObject:v10 forKeyedSubscript:@"ApplicationType"];
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v126 = v5;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "app.applicationType is nil for %@", buf, 0xCu);
      v74 = v5;
      _MBLog();
    }
  }

  v12 = [v3 mb_bundleURL];
  v84 = v12;
  if (v12)
  {
    v13 = sub_CBD0(v12);
    [v4 setObject:v13 forKeyedSubscript:@"Path"];
  }

  else
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v126 = v5;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "app.bundleURL is nil for %@", buf, 0xCu);
      v75 = v5;
      _MBLog();
    }
  }

  v14 = [v3 dataContainerURL];
  v83 = v14;
  if (v14)
  {
    v15 = sub_CBD0(v14);
    [v4 setObject:v15 forKeyedSubscript:@"Container"];
  }

  else
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v126 = v5;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "app.dataContainerURL is nil for %@", buf, 0xCu);
      v75 = v5;
      _MBLog();
    }
  }

  v16 = [v3 mb_entitlements];
  v87 = v16;
  v88 = v5;
  if (![v16 count])
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      if (v87)
      {
        v18 = "empty";
      }

      else
      {
        v18 = "nil";
      }

      *buf = 136315394;
      v126 = v18;
      v127 = 2112;
      v128 = v88;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "Found %s entitlements dictionary for %@", buf, 0x16u);
      v75 = v18;
      v79 = v88;
      _MBLog();
    }

    v16 = v87;
  }

  if (v16)
  {
    [v4 setObject:v16 forKeyedSubscript:@"Entitlements"];
  }

  v19 = [v3 applicationExtensionRecords];
  v20 = [v19 count];

  v98 = v3;
  v86 = v4;
  if (v20)
  {
    v91 = +[NSMutableArray array];
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v21 = [v3 applicationExtensionRecords];
    v22 = [v21 countByEnumeratingWithState:&v114 objects:v134 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v115;
      v89 = *v115;
      v90 = v21;
      do
      {
        v25 = 0;
        v92 = v23;
        do
        {
          if (*v115 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v114 + 1) + 8 * v25);
          v27 = [v26 dataContainerURL];
          v28 = [v26 mb_bundleURL];
          v103 = [v26 mb_pluginIdentifier];
          v99 = v28;
          if (!v27)
          {
            v48 = MBGetDefaultLog();
            if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_78;
            }

            *buf = 138412546;
            v126 = v103;
            v127 = 2112;
            v128 = 0;
            _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEFAULT, "Plugin %@ found without a data container (%@) - will not be backed up.", buf, 0x16u);
            v76 = v103;
            v80 = 0;
LABEL_70:
            _MBLog();
            goto LABEL_78;
          }

          if (!v28)
          {
            v48 = MBGetDefaultLog();
            if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_78;
            }

            *buf = 138412546;
            v126 = v103;
            v127 = 2112;
            v128 = 0;
            _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEFAULT, "Plugin %@ found without a bundle URL (%@) - will not be backed up.", buf, 0x16u);
            v76 = v103;
            v80 = 0;
            goto LABEL_70;
          }

          if (!v103)
          {
            v48 = MBGetDefaultLog();
            if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_78;
            }

            *buf = 138412546;
            v126 = 0;
            v127 = 2112;
            v128 = 0;
            _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEFAULT, "Plugin %@ found without a pluginIdentifier (%@) - will not be backed up.", buf, 0x16u);
            v76 = 0;
            v80 = 0;
            goto LABEL_70;
          }

          v29 = sub_CBD0(v28);
          v30 = sub_CBD0(v27);
          v97 = v29;
          if (v29)
          {
            v96 = v30;
            if (v30)
            {
              v31 = [v26 mb_entitlements];
              if (!v31)
              {
                v32 = MBGetDefaultLog();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v126 = v103;
                  _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEBUG, "Plugin %@ found without entitlements.", buf, 0xCu);
                  v76 = v103;
                  _MBLog();
                }

                v31 = &__NSDictionary0__struct;
              }

              v93 = v31;
              v94 = v27;
              v95 = v25;
              v100 = +[NSMutableArray array];
              v110 = 0u;
              v111 = 0u;
              v112 = 0u;
              v113 = 0u;
              v33 = [v26 groupContainerURLs];
              v34 = [v33 countByEnumeratingWithState:&v110 objects:v133 count:16];
              if (v34)
              {
                v35 = v34;
                v36 = *v111;
                v101 = v33;
                do
                {
                  for (i = 0; i != v35; i = i + 1)
                  {
                    if (*v111 != v36)
                    {
                      objc_enumerationMutation(v33);
                    }

                    v38 = *(*(&v110 + 1) + 8 * i);
                    v39 = [v26 groupContainerURLs];
                    v40 = [v39 objectForKeyedSubscript:v38];

                    if (v40)
                    {
                      v41 = sub_CBD0(v40);
                      if (v41)
                      {
                        if (MBPathHasVolumePrefix())
                        {
                          v124[0] = v38;
                          v123[0] = kCFBundleIdentifierKey;
                          v123[1] = @"ContainerContentClass";
                          v42 = MBStringForContainerType(3);
                          v123[2] = @"Container";
                          v124[1] = v42;
                          v124[2] = v41;
                          v43 = [NSDictionary dictionaryWithObjects:v124 forKeys:v123 count:3];

                          [v100 addObject:v43];
LABEL_60:

                          goto LABEL_61;
                        }

                        v43 = MBGetDefaultLog();
                        if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_60;
                        }

                        *buf = 138413058;
                        v126 = v103;
                        v127 = 2112;
                        v128 = v38;
                        v129 = 2112;
                        v130 = v41;
                        v131 = 2112;
                        v132 = v104;
                        _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "Plugin %@ groupContainer %@ at %@ does not reside on the user data volume %@ - will not be backed up", buf, 0x2Au);
                        v81 = v41;
                        v82 = v104;
                        v33 = v101;
                        v76 = v103;
                        v80 = v38;
                      }

                      else
                      {
                        v43 = MBGetDefaultLog();
                        if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_60;
                        }

                        *buf = 138412546;
                        v126 = v103;
                        v127 = 2112;
                        v128 = v38;
                        _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "Plugin %@ groupContainer %@ found with a nil SanitizedFilesystemRepresentation for container - will not be backed up", buf, 0x16u);
                        v76 = v103;
                        v80 = v38;
                        v33 = v101;
                      }

                      _MBLog();
                      goto LABEL_60;
                    }

                    v41 = MBGetDefaultLog();
                    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      v126 = v103;
                      v127 = 2112;
                      v128 = v38;
                      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "Plugin %@ groupContainer %@ found without a container - will not be backed up", buf, 0x16u);
                      v76 = v103;
                      v80 = v38;
                      _MBLog();
                    }

LABEL_61:
                  }

                  v35 = [v33 countByEnumeratingWithState:&v110 objects:v133 count:16];
                }

                while (v35);
              }

              v122[0] = v103;
              v121[0] = kCFBundleIdentifierKey;
              v121[1] = @"ContainerContentClass";
              v44 = MBStringForContainerType(2);
              v122[1] = v44;
              v45 = v96;
              v122[2] = v97;
              v121[2] = @"Path";
              v121[3] = @"Container";
              v122[3] = v96;
              v46 = v93;
              v122[4] = v93;
              v121[4] = @"Entitlements";
              v121[5] = @"GroupContainers";
              v122[5] = v100;
              v47 = [NSDictionary dictionaryWithObjects:v122 forKeys:v121 count:6];

              v48 = v97;
              [v91 addObject:v47];

              v3 = v98;
              v24 = v89;
              v21 = v90;
              v23 = v92;
              v27 = v94;
              v25 = v95;
            }

            else
            {
              v46 = MBGetDefaultLog();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v126 = v103;
                _os_log_impl(&dword_0, v46, OS_LOG_TYPE_DEFAULT, "Plugin %@ found with a nil SanitizedFilesystemRepresentation for dataContainerURL - will not be backed up.", buf, 0xCu);
                v76 = v103;
                _MBLog();
              }

              v45 = 0;
              v48 = v97;
            }
          }

          else
          {
            v45 = v30;
            v46 = MBGetDefaultLog();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v126 = v103;
              _os_log_impl(&dword_0, v46, OS_LOG_TYPE_DEFAULT, "Plugin %@ found with a nil SanitizedFilesystemRepresentation for bundleURL - will not be backed up.", buf, 0xCu);
              v76 = v103;
              _MBLog();
            }

            v48 = 0;
          }

LABEL_78:
          v25 = v25 + 1;
        }

        while (v25 != v23);
        v23 = [v21 countByEnumeratingWithState:&v114 objects:v134 count:16];
      }

      while (v23);
    }

    v4 = v86;
    [v86 setObject:v91 forKeyedSubscript:@"Plugins"];
  }

  v49 = [v3 groupContainerURLs];
  v50 = [v49 count];

  if (!v50)
  {
    goto LABEL_102;
  }

  v51 = +[NSMutableArray array];
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v52 = [v3 groupContainerURLs];
  v53 = [v52 countByEnumeratingWithState:&v106 objects:v120 count:16];
  if (!v53)
  {
    goto LABEL_101;
  }

  v54 = v53;
  v55 = *v107;
  do
  {
    v56 = 0;
    v102 = v54;
    do
    {
      if (*v107 != v55)
      {
        objc_enumerationMutation(v52);
      }

      v57 = *(*(&v106 + 1) + 8 * v56);
      v58 = [v3 groupContainerURLs];
      v59 = [v58 objectForKeyedSubscript:v57];

      if (v59)
      {
        v60 = sub_CBD0(v59);
        if (v60)
        {
          if (MBPathHasVolumePrefix())
          {
            v119[0] = v57;
            v118[0] = kCFBundleIdentifierKey;
            v118[1] = @"ContainerContentClass";
            v61 = MBStringForContainerType(3);
            v118[2] = @"Container";
            v119[1] = v61;
            v119[2] = v60;
            v62 = [NSDictionary dictionaryWithObjects:v119 forKeys:v118 count:3];

            [v51 addObject:v62];
LABEL_98:

            v3 = v98;
            goto LABEL_99;
          }

          v62 = MBGetDefaultLog();
          if (!os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_98;
          }

          *buf = 138412802;
          v126 = v57;
          v127 = 2112;
          v128 = v60;
          v129 = 2112;
          v130 = v104;
          _os_log_impl(&dword_0, v62, OS_LOG_TYPE_DEFAULT, "GroupContainer %@ at %@ does not reside on the user data volume %@ - will not be backed up", buf, 0x20u);
          v80 = v60;
          v81 = v104;
          v54 = v102;
          v77 = v57;
        }

        else
        {
          v62 = MBGetDefaultLog();
          if (!os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_98;
          }

          *buf = 138412290;
          v126 = v57;
          _os_log_impl(&dword_0, v62, OS_LOG_TYPE_DEFAULT, "GroupContainer %@ found with a nil SanitizedFilesystemRepresentation for container - will not be backed up", buf, 0xCu);
          v77 = v57;
        }

        _MBLog();
        goto LABEL_98;
      }

      v60 = MBGetDefaultLog();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v126 = v57;
        _os_log_impl(&dword_0, v60, OS_LOG_TYPE_DEFAULT, "GroupContainer %@ found without a container - will not be backed up", buf, 0xCu);
        v77 = v57;
        _MBLog();
      }

LABEL_99:

      v56 = v56 + 1;
    }

    while (v54 != v56);
    v54 = [v52 countByEnumeratingWithState:&v106 objects:v120 count:16];
  }

  while (v54);
LABEL_101:

  v4 = v86;
  [v86 setObject:v51 forKeyedSubscript:@"GroupContainers"];

LABEL_102:
  v63 = [v3 isPlaceholder];
  v64 = [NSNumber numberWithBool:v63];
  [v4 setObject:v64 forKeyedSubscript:@"IsPlaceholder"];

  v65 = [v3 applicationState];
  v66 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v65 isInstalled]);
  [v4 setObject:v66 forKeyedSubscript:@"IsInstalled"];

  if ((v63 & 1) == 0)
  {
    v105 = 0;
    v67 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v88 allowPlaceholder:1 error:&v105];
    v68 = v105;
    if ([v67 hasParallelPlaceholder])
    {
      v69 = MBGetDefaultLog();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        v70 = [v3 bundleIdentifier];
        *buf = 138412290;
        v126 = v70;
        _os_log_impl(&dword_0, v69, OS_LOG_TYPE_INFO, "%@ has a parallel placeholder", buf, 0xCu);

        v78 = [v3 bundleIdentifier];
        _MBLog();
      }

      v71 = &__kCFBooleanTrue;
    }

    else
    {
      v71 = &__kCFBooleanFalse;
    }

    [v4 setObject:v71 forKeyedSubscript:{@"IsUpdating", v78}];
  }

  return v4;
}

void sub_C198(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0xC14CLL);
  }

  _Unwind_Resume(exception_object);
}

id sub_CBD0(void *a1)
{
  v1 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [a1 fileSystemRepresentation]);
  if ([v1 hasPrefix:@"/private"])
  {
    v2 = [v1 substringFromIndex:{objc_msgSend(@"/private", "length")}];

    v1 = v2;
  }

  return v1;
}

void sub_DA18(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  Name = class_getName(v2);
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_UTILITY, 0);
  v5 = dispatch_queue_create(Name, v4);
  v6 = qword_2A828;
  qword_2A828 = v5;
}

void sub_F1B4(uint64_t a1)
{
  v2 = +[ACAccountStore defaultStore];
  v3 = [*(a1 + 32) accountIdentifier];
  v4 = [v2 accountWithIdentifier:v3];

  [*(a1 + 32) _reloadAccountPropertiesFromACAccount:v4];
}

void sub_F56C(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_UTILITY, 0);

  v2 = dispatch_queue_create("com.apple.backupd.saveAccount", attr);
  v3 = qword_2A838;
  qword_2A838 = v2;
}

void sub_F5F0(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 == [*(a1 + 32) isEnabledForDataclass:*(a1 + 40)])
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      v6 = *(a1 + 64);
      *buf = 138543874;
      v19 = v4;
      v20 = 2114;
      v21 = v5;
      v22 = 1024;
      v23 = v6;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "No need to save the %{public}@ state for account %{public}@: %d", buf, 0x1Cu);
      v11 = *(a1 + 48);
      v12 = *(a1 + 64);
      v10 = *(a1 + 40);
      _MBLog();
    }

    (*(*(a1 + 56) + 16))(*(a1 + 56), 0, v7);
  }

  else
  {
    [*(a1 + 32) setEnabled:*(a1 + 64) forDataclass:*(a1 + 40)];
    v8 = +[ACAccountStore defaultStore];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_F7CC;
    v13[3] = &unk_24AD0;
    v9 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v17 = *(a1 + 64);
    v16 = *(a1 + 56);
    [v8 saveAccount:v9 withCompletionHandler:v13];
  }
}

void sub_F7CC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = MBGetDefaultLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = *(a1 + 56);
      *buf = 138543874;
      v20 = v8;
      v21 = 2114;
      v22 = v9;
      v23 = 1024;
      LODWORD(v24) = v10;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Saved the %{public}@ state for account %{public}@: %d", buf, 0x1Cu);
      v16 = *(a1 + 40);
      v18 = *(a1 + 56);
      v14 = *(a1 + 32);
      _MBLog();
    }

    v7 = v5;
    v5 = 0;
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    *buf = 138543874;
    v20 = v11;
    v21 = 2114;
    v22 = v12;
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Failed to save %{public}@ state for account %{public}@: %@", buf, 0x20u);
    v17 = *(a1 + 40);
    v15 = *(a1 + 32);
    _MBLog();
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v5, v13);
}

void sub_FD34(uint64_t a1)
{
  v2 = +[ACAccountStore defaultStore];
  v3 = [*(a1 + 32) accountIdentifier];
  v4 = [v2 accountWithIdentifier:v3];

  if (v4)
  {
    v5 = +[ACAccountStore defaultStore];
    [v5 renewCredentialsForAccount:v4 completion:&stru_24B38];
  }

  else
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Unable to retrieve account, cannot renew credentials", v6, 2u);
      _MBLog();
    }
  }
}

void sub_FE28(id a1, int64_t a2, NSError *a3)
{
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MBServiceAccount _stringForAccountCredentialRenewResult:a2];
    *buf = 138412546;
    v8 = v5;
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Account credentials %@ (%d)", buf, 0x12u);

    v6 = [MBServiceAccount _stringForAccountCredentialRenewResult:a2];
    _MBLog();
  }
}

void sub_1018C(uint64_t a1)
{
  v2 = +[ACAccountStore defaultStore];
  v3 = [*(a1 + 32) accountIdentifier];
  v4 = [v2 accountWithIdentifier:v3];

  v5 = MBGetDefaultLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Updating account", buf, 2u);
      _MBLog();
    }

    v7 = +[ACAccountStore defaultStore];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1038C;
    v10[3] = &unk_24B60;
    v10[4] = *(a1 + 32);
    v11 = v4;
    v12 = *(a1 + 40);
    [v7 aa_updatePropertiesForAppleAccount:v11 completion:v10];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "No primary account found to update", buf, 2u);
      _MBLog();
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = [MBError errorWithCode:1 format:@"No primary account found to update"];
      (*(v8 + 16))(v8, v9);
    }
  }
}

void sub_1038C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = MBGetDefaultLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Updated account", buf, 2u);
      _MBLog();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = [MBError descriptionForError:v5];
    *buf = 138412290;
    v12 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Error updating account: %@", buf, 0xCu);

    v10 = [MBError descriptionForError:v5];
    _MBLog();
  }

  [*(a1 + 32) _reloadAccountPropertiesFromACAccount:*(a1 + 40)];
  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, v5);
  }
}

void sub_10648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1066C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10684(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 48) + 8) + 24) = 1;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1080C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10824(uint64_t a1)
{
  v2 = +[ACAccountStore defaultStore];
  v3 = [*(a1 + 32) accountIdentifier];
  v9 = [v2 accountWithIdentifier:v3];

  if (v9)
  {
    v4 = [v9 username];
    v5 = [v4 copy];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    v8 = *(*(a1 + 40) + 8);
    v4 = *(v8 + 40);
    *(v8 + 40) = 0;
  }
}

void sub_109EC(uint64_t a1)
{
  v2 = +[ACAccountStore defaultStore];
  v3 = [*(a1 + 32) accountIdentifier];
  v4 = [v2 accountWithIdentifier:v3];

  v5 = MBGetDefaultLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Re-authenticating account", buf, 2u);
      _MBLog();
    }

    [v4 aa_setPassword:&stru_251F0];
    [v4 aa_setPassword:*(a1 + 40)];
    v7 = +[ACAccountStore defaultStore];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10BF4;
    v10[3] = &unk_24C00;
    v10[4] = *(a1 + 32);
    v11 = *(a1 + 48);
    [v7 verifyCredentialsForAccount:v4 withHandler:v10];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "No primary account found to update", buf, 2u);
      _MBLog();
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = [MBError errorWithCode:1 format:@"No primary account found to update"];
      (*(v8 + 16))(v8, v9);
    }
  }
}

void sub_10BF4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MBGetDefaultLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Authenticated account", buf, 2u);
      _MBLog();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = [MBError descriptionForError:v6];
    *buf = 138412290;
    v16 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Error authenticating account: %@", buf, 0xCu);

    v14 = [MBError descriptionForError:v6];
    _MBLog();
  }

  v10 = +[ACAccountStore defaultStore];
  v11 = [*(a1 + 32) accountIdentifier];
  v12 = [v10 accountWithIdentifier:v11];

  [*(a1 + 32) _reloadAccountPropertiesFromACAccount:v12];
  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, v6);
  }
}

void sub_10F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_10F40(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 48) + 8) + 24) = 1;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_113BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_11404(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:AKAuthenticationPasswordKey];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_1169C(uint64_t a1)
{
  result = lockdown_connect();
  *(*(a1 + 32) + 8) = result;
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 8) != 0;
  return result;
}

uint64_t sub_11758(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(v2 + 8);
  if (result)
  {
    result = lockdown_disconnect();
    v2 = *(a1 + 32);
  }

  *(v2 + 8) = 0;
  return result;
}

uint64_t sub_11884(void *a1)
{
  result = *(a1[4] + 8);
  if (result)
  {
    v3 = a1[5];
    v4 = a1[6];
    result = lockdown_copy_value();
    *(*(a1[7] + 8) + 40) = result;
  }

  return result;
}

uint64_t sub_11980(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    result = lockdown_save_value();
    if (result)
    {
      v6 = result;
      v7 = MBGetDefaultLog();
      result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        *buf = 138412802;
        v13 = v8;
        v14 = 2112;
        v15 = v9;
        v16 = 1024;
        v17 = v6;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Failed to save object to lockdown with domain '%@', key '%@': %d", buf, 0x1Cu);
        v11 = *(a1 + 48);
        v10 = *(a1 + 40);
        result = _MBLog();
      }

      if (*(a1 + 72))
      {
        result = [MBError errorWithCode:1 format:@"Failed to save object to lockdown"];
        **(a1 + 72) = result;
      }

      *(*(*(a1 + 64) + 8) + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_11B70(uint64_t a1)
{
  if (([*(a1 + 32) isEqualToString:@"com.apple.mobile.backup"] & 1) != 0 || (objc_msgSend(*(a1 + 32), "isEqualToString:", @"com.apple.mobile.ldbackup") & 1) != 0 || objc_msgSend(*(a1 + 32), "isEqualToString:", @"com.apple.purplebuddy"))
  {
    v2 = *(a1 + 32);
    if ([(__CFString *)v2 isEqualToString:@"com.apple.mobile.backup"])
    {
      v2 = @"com.apple.mobile.ldbackup";
    }

    v3 = kMBMobileUserName;
    CFPreferencesSetValue(*(a1 + 40), 0, v2, kMBMobileUserName, kCFPreferencesAnyHost);
    result = CFPreferencesSynchronize(v2, v3, kCFPreferencesAnyHost);
    if (!result)
    {
      v5 = MBGetDefaultLog();
      result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v6 = *(a1 + 40);
        *buf = 138412546;
        v17 = v2;
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Failed to sync preferences for %@ domain (%@)", buf, 0x16u);
        v14 = *(a1 + 40);
        return _MBLog();
      }
    }
  }

  else
  {
    result = *(*(a1 + 48) + 8);
    if (result)
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      result = lockdown_remove_value();
      if (result)
      {
        v9 = result;
        v10 = MBGetDefaultLog();
        result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
        if (result)
        {
          v11 = *(a1 + 32);
          v12 = *(a1 + 40);
          *buf = 138412802;
          v17 = v11;
          v18 = 2112;
          v19 = v12;
          v20 = 1024;
          v21 = v9;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Failed to remove object from lockdown with domain '%@', key '%@': %d", buf, 0x1Cu);
          v15 = *(a1 + 40);
          v13 = *(a1 + 32);
          result = _MBLog();
        }

        if (*(a1 + 64))
        {
          result = [MBError errorWithCode:1 format:@"Failed to remove object from lockdown"];
          **(a1 + 64) = result;
        }

        *(*(*(a1 + 56) + 8) + 24) = 0;
      }
    }
  }

  return result;
}

unint64_t sub_122BC(void *a1, void *a2, char a3)
{
  if (!a3)
  {
    sub_13B18(43);

    v11 = 0xD000000000000028;
    v13._countAndFlagsBits = a1;
    v13._object = a2;
    sub_13AF8(v13);
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    sub_13B18(50);

    v11 = 0xD00000000000002FLL;
    v4 = [a1 persona];
    v5 = [v4 personaIdentifier];

    v6 = sub_13AD8();
    v8 = v7;

    v12._countAndFlagsBits = v6;
    v12._object = v8;
    sub_13AF8(v12);

LABEL_5:
    v14._countAndFlagsBits = 41;
    v14._object = 0xE100000000000000;
    sub_13AF8(v14);
    return v11;
  }

  return 0xD000000000000019;
}

uint64_t sub_1242C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      if (v4 == 1)
      {
        sub_12F08();
        return sub_13B08() & 1;
      }

      return 0;
    }

    return v4 == 2 && (v2 | v3) == 0;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  if (*a1 == v3 && a1[1] == v2)
  {
    return 1;
  }

  v7 = *a1;

  return sub_13B38();
}

id sub_12A08(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_13A68();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {

    v16 = 22;
LABEL_6:
    v22 = v16;
    sub_13084(&_swiftEmptyArrayStorage);
    sub_13194();
    sub_13A78();
    sub_13A58();
    (*(v11 + 8))(v14, v10);
    swift_willThrow();
    return swift_deallocPartialClassInstance();
  }

  if ((a4 & 1) == 0)
  {

    a1 = 0;
    a2 = 0;
    v15 = 2;
    goto LABEL_8;
  }

  if (!a2)
  {
    v16 = 2;
    goto LABEL_6;
  }

  v15 = 0;
LABEL_8:
  v18 = &v5[OBJC_IVAR____TtC18RestorePostProcess14MigratorConfig_state];
  *v18 = a1;
  *(v18 + 1) = a2;
  v18[16] = v15;
  v21.receiver = v5;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, "init");
}

id sub_12D04()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_12D88(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_12DA8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_2A618)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2A618);
    }
  }
}

uint64_t sub_12E20(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_12E3C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_12E50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_12E98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_12EE0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_12F08()
{
  result = qword_2A620;
  if (!qword_2A620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A620);
  }

  return result;
}

unint64_t sub_12F54(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_13B48();
  sub_13AE8();
  v6 = sub_13B58();

  return sub_12FCC(a1, a2, v6);
}

unint64_t sub_12FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_13B38())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_13084(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_131EC(&qword_2A630, &qword_179C0);
    v3 = sub_13B28();
    v4 = a1 + 32;

    while (1)
    {
      sub_13234(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_12F54(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_132A4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_13194()
{
  result = qword_2A628;
  if (!qword_2A628)
  {
    sub_13A68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A628);
  }

  return result;
}

uint64_t sub_131EC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_13234(uint64_t a1, uint64_t a2)
{
  v4 = sub_131EC(&qword_2A638, qword_179C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_132A4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_132B4(void *a1, id a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_132DC()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_13344(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_133E8()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 96)]);
  return v0;
}

uint64_t sub_13468()
{
  sub_133E8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_13508(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MBApp.m" lineNumber:301 description:@"Not a safe harbor"];
}