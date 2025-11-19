const void *getUserPasswordID(const __CFDictionary *a1, CFTypeRef cf)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1 && (Value = CFDictionaryGetValue(a1, @"AuthPasswordEncryption"), TypeID = CFStringGetTypeID(), Value) && CFGetTypeID(Value) == TypeID && CFEqual(Value, @"Keychain") && (result = CFDictionaryGetValue(a1, @"AuthPassword")) != 0)
  {
    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];

    return SCUserPreferencesGetUniqueID(cf);
  }

  return result;
}

__CFString *copyUserSharedSecretID(const __CFDictionary *a1, CFTypeRef cf)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1 && (Value = CFDictionaryGetValue(a1, @"SharedSecretEncryption"), TypeID = CFStringGetTypeID(), Value) && CFGetTypeID(Value) == TypeID && CFEqual(Value, @"Keychain") && (v6 = CFDictionaryGetValue(a1, @"SharedSecret")) != 0)
  {
    MutableCopy = v6;
    CFRetain(v6);
  }

  else
  {
    UserPasswordID = getUserPasswordID(a1, cf);
    MutableCopy = CFStringCreateMutableCopy(0, 0, UserPasswordID);
    CFStringAppend(MutableCopy, @".SS");
  }

  v9 = *MEMORY[0x1E69E9840];
  return MutableCopy;
}

__CFString *copyUserXAuthID(const __CFDictionary *a1, CFTypeRef cf)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1 && (Value = CFDictionaryGetValue(a1, @"XAuthPasswordEncryption"), TypeID = CFStringGetTypeID(), Value) && CFGetTypeID(Value) == TypeID && CFEqual(Value, @"Keychain") && (v6 = CFDictionaryGetValue(a1, @"XAuthPassword")) != 0)
  {
    MutableCopy = v6;
    CFRetain(v6);
  }

  else
  {
    UserPasswordID = getUserPasswordID(a1, cf);
    MutableCopy = CFStringCreateMutableCopy(0, 0, UserPasswordID);
    CFStringAppend(MutableCopy, @".XAUTH");
  }

  v9 = *MEMORY[0x1E69E9840];
  return MutableCopy;
}

uint64_t SCUserPreferencesCopyInterfacePassword(const void *a1, const void *a2, int a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v17[0] = 0;
  if (!checkUserPreferencesPassword(a1, a2, a3))
  {
    goto LABEL_10;
  }

  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v6 = SCUserPreferencesCopyInterfaceConfiguration(a1, a2);
      v7 = copyUserXAuthID(v6, a1);
      v8 = @"XAuthPassword";
      v9 = @"XAuthPasswordEncryption";
      v10 = &kSCValNetIPSecXAuthPasswordEncryptionKeychain;
      goto LABEL_15;
    }

    if (a3 != 5)
    {
      goto LABEL_9;
    }

    v11 = SCUserPreferencesCopyInterfaceConfiguration(a1, a2);
    UserPasswordID = getUserPasswordID(v11, a1);
    v13 = kSCValNetVPNAuthPasswordEncryptionKeychain;
LABEL_12:
    __extract_password(0, v11, @"AuthPassword", @"AuthPasswordEncryption", *v13, UserPasswordID, v17);
    if (!v11)
    {
LABEL_19:
      result = v17[0];
      goto LABEL_20;
    }

    v15 = v11;
LABEL_18:
    CFRelease(v15);
    goto LABEL_19;
  }

  if (a3 == 1)
  {
    v11 = SCUserPreferencesCopyInterfaceConfiguration(a1, a2);
    UserPasswordID = getUserPasswordID(v11, a1);
    v13 = &kSCValNetPPPAuthPasswordEncryptionKeychain;
    goto LABEL_12;
  }

  if (a3 == 2)
  {
    v6 = SCUserPreferencesCopyExtendedInterfaceConfiguration(a1, a2, @"IPSec");
    v7 = copyUserSharedSecretID(v6, a1);
    v8 = @"SharedSecret";
    v9 = @"SharedSecretEncryption";
    v10 = &kSCValNetIPSecSharedSecretEncryptionKeychain;
LABEL_15:
    __extract_password(0, v6, v8, v9, *v10, v7, v17);
    if (v6)
    {
      CFRelease(v6);
    }

    v15 = v7;
    goto LABEL_18;
  }

LABEL_9:
  _SCErrorSet(1002);
LABEL_10:
  result = 0;
LABEL_20:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SCUserPreferencesRemoveInterfacePassword(const void *a1, const void *a2, int a3)
{
  cf[1] = *MEMORY[0x1E69E9840];
  if (!checkUserPreferencesPassword(a1, a2, a3))
  {
    goto LABEL_11;
  }

  if (a3 > 3)
  {
    if (a3 == 4)
    {
      cf[0] = 0;
      v6 = SCUserPreferencesCopyInterfaceConfiguration(a1, a2);
      v7 = copyUserXAuthID(v6, a1);
      if (__remove_password(0, v6, @"XAuthPassword", @"XAuthPasswordEncryption", @"Keychain", v7, cf))
      {
        v8 = SCUserPreferencesSetInterfaceConfiguration(a1, a2, cf[0]);
LABEL_20:
        v12 = v8;
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        if (!v6)
        {
          goto LABEL_24;
        }

LABEL_23:
        CFRelease(v6);
LABEL_24:
        v13 = v7;
LABEL_27:
        CFRelease(v13);
        goto LABEL_28;
      }

LABEL_29:
      v12 = 0;
      if (!v6)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (a3 != 5)
    {
      goto LABEL_10;
    }

    cf[0] = 0;
    v9 = SCUserPreferencesCopyInterfaceConfiguration(a1, a2);
    UserPasswordID = getUserPasswordID(v9, a1);
    v11 = kSCValNetVPNAuthPasswordEncryptionKeychain;
  }

  else
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        cf[0] = 0;
        v6 = SCUserPreferencesCopyExtendedInterfaceConfiguration(a1, a2, @"IPSec");
        v7 = copyUserSharedSecretID(v6, a1);
        if (__remove_password(0, v6, @"SharedSecret", @"SharedSecretEncryption", @"Keychain", v7, cf))
        {
          v8 = SCUserPreferencesSetExtendedInterfaceConfiguration(a1, a2, @"IPSec", cf[0]);
          goto LABEL_20;
        }

        goto LABEL_29;
      }

LABEL_10:
      _SCErrorSet(1002);
LABEL_11:
      v12 = 0;
      goto LABEL_28;
    }

    cf[0] = 0;
    v9 = SCUserPreferencesCopyInterfaceConfiguration(a1, a2);
    UserPasswordID = getUserPasswordID(v9, a1);
    v11 = &kSCValNetPPPAuthPasswordEncryptionKeychain;
  }

  if (!__remove_password(0, v9, @"AuthPassword", @"AuthPasswordEncryption", *v11, UserPasswordID, cf))
  {
    v12 = 0;
    if (!v9)
    {
      goto LABEL_28;
    }

LABEL_26:
    v13 = v9;
    goto LABEL_27;
  }

  v12 = SCUserPreferencesSetInterfaceConfiguration(a1, a2, cf[0]);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v9)
  {
    goto LABEL_26;
  }

LABEL_28:
  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t SCUserPreferencesSetInterfacePassword(const void *a1, const void *a2, int a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!checkUserPreferencesPassword(a1, a2, a3))
  {
    goto LABEL_15;
  }

  v6 = _SC_CFBundleGet();
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v15 = SCUserPreferencesCopyInterfaceConfiguration(a1, a2);
      v8 = copyUserXAuthID(v15, a1);
      if (v15)
      {
        CFDictionaryGetValue(v15, @"XAuthName");
      }

      v19 = SCUserPreferencesCopyName(a1);
      if (v6)
      {
        v6 = CFBundleCopyLocalizedString(v6, @"KEYCHAIN_KIND_IPSEC_XAUTH_PASSWORD", @"IPSec XAuth Password", 0);
      }

      if (_SCSecKeychainPasswordItemSet())
      {
        if (v15)
        {
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v15);
        }

        else
        {
          MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        }

        v26 = MutableCopy;
        CFDictionarySetValue(MutableCopy, @"XAuthPassword", v8);
        CFDictionarySetValue(v26, @"XAuthPasswordEncryption", @"Keychain");
        v13 = SCUserPreferencesSetInterfaceConfiguration(a1, a2, v26);
        CFRelease(v26);
      }

      else
      {
        v13 = 0;
      }

      if (v15)
      {
        CFRelease(v15);
      }

      if (v6)
      {
        CFRelease(v6);
      }

      if (!v19)
      {
        goto LABEL_67;
      }

      v22 = v19;
      goto LABEL_66;
    }

    if (a3 != 5)
    {
      goto LABEL_14;
    }

    v11 = SCUserPreferencesCopyInterfaceConfiguration(a1, a2);
    UserPasswordID = getUserPasswordID(v11, a1);
    if (v11)
    {
      CFDictionaryGetValue(v11, @"AuthName");
    }

    v16 = SCUserPreferencesCopyName(a1);
    if (v6)
    {
      v6 = CFBundleCopyLocalizedString(v6, @"KEYCHAIN_KIND_VPN_PASSWORD", @"VPN Password", 0);
    }

    if (_SCSecKeychainPasswordItemSet())
    {
      if (v11)
      {
        Mutable = CFDictionaryCreateMutableCopy(0, 0, v11);
      }

      else
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      v23 = Mutable;
      if (!Mutable)
      {
        SCUserPreferencesSetInterfacePassword_cold_1();
      }

      CFDictionarySetValue(Mutable, @"AuthPassword", UserPasswordID);
      v24 = kSCValNetVPNAuthPasswordEncryptionKeychain;
LABEL_52:
      CFDictionarySetValue(v23, @"AuthPasswordEncryption", *v24);
      v13 = SCUserPreferencesSetInterfaceConfiguration(a1, a2, v23);
      CFRelease(v23);
      if (!v11)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }
  }

  else
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        v7 = SCUserPreferencesCopyExtendedInterfaceConfiguration(a1, a2, @"IPSec");
        v8 = copyUserSharedSecretID(v7, a1);
        v9 = SCUserPreferencesCopyName(a1);
        if (v6)
        {
          v6 = CFBundleCopyLocalizedString(v6, @"KEYCHAIN_KIND_IPSEC_SHARED_SECRET", @"IPSec Shared Secret", 0);
        }

        if (_SCSecKeychainPasswordItemSet())
        {
          if (v7)
          {
            v10 = CFDictionaryCreateMutableCopy(0, 0, v7);
          }

          else
          {
            v10 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          }

          v21 = v10;
          CFDictionarySetValue(v10, @"SharedSecret", v8);
          CFDictionarySetValue(v21, @"SharedSecretEncryption", @"Keychain");
          v13 = SCUserPreferencesSetExtendedInterfaceConfiguration(a1, a2, @"IPSec", v21);
          CFRelease(v21);
        }

        else
        {
          v13 = 0;
        }

        if (v7)
        {
          CFRelease(v7);
        }

        if (v6)
        {
          CFRelease(v6);
        }

        if (!v9)
        {
          goto LABEL_67;
        }

        v22 = v9;
LABEL_66:
        CFRelease(v22);
LABEL_67:
        v25 = v8;
        goto LABEL_68;
      }

LABEL_14:
      _SCErrorSet(1002);
LABEL_15:
      v13 = 0;
      goto LABEL_69;
    }

    v11 = SCUserPreferencesCopyInterfaceConfiguration(a1, a2);
    v14 = getUserPasswordID(v11, a1);
    if (v11)
    {
      CFDictionaryGetValue(v11, @"AuthName");
    }

    v16 = SCUserPreferencesCopyName(a1);
    if (v6)
    {
      v6 = CFBundleCopyLocalizedString(v6, @"KEYCHAIN_KIND_PPP_PASSWORD", @"PPP Password", 0);
    }

    if (_SCSecKeychainPasswordItemSet())
    {
      if (v11)
      {
        v18 = CFDictionaryCreateMutableCopy(0, 0, v11);
      }

      else
      {
        v18 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      v23 = v18;
      CFDictionarySetValue(v18, @"AuthPassword", v14);
      v24 = &kSCValNetPPPAuthPasswordEncryptionKeychain;
      goto LABEL_52;
    }
  }

  v13 = 0;
  if (v11)
  {
LABEL_53:
    CFRelease(v11);
  }

LABEL_54:
  if (v6)
  {
    CFRelease(v6);
  }

  if (v16)
  {
    v25 = v16;
LABEL_68:
    CFRelease(v25);
  }

LABEL_69:
  v27 = *MEMORY[0x1E69E9840];
  return v13;
}

void __SCUserPreferencesDeallocate(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  CFRelease(*(a1 + 24));
  v2 = *(a1 + 16);
  v3 = *MEMORY[0x1E69E9840];

  CFRelease(v2);
}

BOOL __SCUserPreferencesEqual(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = a1 == a2 || CFEqual(*(a1 + 24), *(a2 + 24)) != 0;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

CFHashCode __SCUserPreferencesHash(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  v2 = *MEMORY[0x1E69E9840];

  return CFHash(v1);
}

__CFString *__SCUserPreferencesCopyDescription(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<SCUserPreferences %p [%p]> {", a1, v2);
  CFStringAppendFormat(Mutable, 0, @"service = %@", a1[2]);
  CFStringAppendFormat(Mutable, 0, @", id = %@", a1[3]);
  CFStringAppendFormat(Mutable, 0, @"}");
  v4 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void logCFPreferencesChange(const __CFString *a1, const void *a2)
{
  v121 = *MEMORY[0x1E69E9840];
  v4 = CFPreferencesCopyAppValue(@"LOG_SC_CHANGES", @"com.apple.networkConnect");
  if (!v4)
  {
    goto LABEL_33;
  }

  v5 = v4;
  TypeID = CFBooleanGetTypeID();
  if (CFGetTypeID(v5) == TypeID)
  {
    Value = CFBooleanGetValue(v5);
    CFRelease(v5);
    if (!Value)
    {
      goto LABEL_33;
    }

    memset(&v118, 0, sizeof(v118));
    v117.tv_sec = 0;
    *&v117.tv_usec = 0;
    gettimeofday(&v117, 0);
    localtime_r(&v117.tv_sec, &v118);
    v8 = CFStringCreateWithFormat(0, 0, @"/var/tmp/com.apple.networkConnect-%@-%4d%02d%02d.%02d%02d%02d.%03d", a1, (v118.tm_year + 1900), (v118.tm_mon + 1), v118.tm_mday, v118.tm_hour, v118.tm_min, v118.tm_sec, (v117.tv_usec / 1000));
    _SC_cfstring_to_cstring(v8, v120, 256, 0x8000100u);
    CFRelease(v8);
    v9 = __log_SCNetworkConfiguration();
    v10 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v9, v10))
    {
      v11 = _os_log_pack_size();
      v19 = &v117 - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = *__error();
      v21 = _os_log_pack_fill();
      *v21 = 136315138;
      *(v21 + 4) = v120;
      __SC_log_send(5, v9, v10, v19);
    }

    if (mkdir(v120, 0x1EDu) == -1)
    {
      v47 = __log_SCNetworkConfiguration();
      v48 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v47, v48))
      {
LABEL_22:
        v49 = _os_log_pack_size();
        v57 = &v117 - ((MEMORY[0x1EEE9AC00](v49, v50, v51, v52, v53, v54, v55, v56) + 15) & 0xFFFFFFFFFFFFFFF0);
        v58 = *__error();
        v59 = _os_log_pack_fill();
        v60 = __error();
        v61 = SCErrorString(*v60);
        *v59 = 136315138;
        *(v59 + 4) = v61;
        __SC_log_send(5, v47, v48, v57);
      }

LABEL_33:
      v104 = *MEMORY[0x1E69E9840];
      return;
    }

    v22 = _SC_copyBacktrace();
    if (v22)
    {
      v23 = v22;
      __strlcpy_chk();
      __strlcat_chk();
      v24 = open(v119, 3585, 420);
      if (v24 == -1)
      {
        v62 = __log_SCNetworkConfiguration();
        v63 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v62, v63))
        {
          v64 = _os_log_pack_size();
          v72 = &v117 - ((MEMORY[0x1EEE9AC00](v64, v65, v66, v67, v68, v69, v70, v71) + 15) & 0xFFFFFFFFFFFFFFF0);
          v73 = *__error();
          v74 = _os_log_pack_fill();
          v75 = __error();
          v76 = SCErrorString(*v75);
          *v74 = 136315138;
          *(v74 + 4) = v76;
          __SC_log_send(5, v62, v63, v72);
        }

        v45 = v23;
        goto LABEL_32;
      }

      v25 = fdopen(v24, "w");
      SCPrint(1, v25, @"%@", v26, v27, v28, v29, v30, v23);
      fclose(v25);
      CFRelease(v23);
    }

    v31 = CFPreferencesCopyAppValue(a1, @"com.apple.networkConnect");
    if (!v31)
    {
      goto LABEL_14;
    }

    v32 = v31;
    __strlcpy_chk();
    __strlcat_chk();
    v33 = open(v119, 3585, 420);
    if (v33 == -1)
    {
      v77 = __log_SCNetworkConfiguration();
      v78 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v77, v78))
      {
        v79 = _os_log_pack_size();
        v87 = &v117 - ((MEMORY[0x1EEE9AC00](v79, v80, v81, v82, v83, v84, v85, v86) + 15) & 0xFFFFFFFFFFFFFFF0);
        v88 = *__error();
        v89 = _os_log_pack_fill();
        v90 = __error();
        v91 = SCErrorString(*v90);
        *v89 = 136315138;
        *(v89 + 4) = v91;
        __SC_log_send(5, v77, v78, v87);
      }
    }

    else
    {
      v34 = v33;
      Data = CFPropertyListCreateData(0, v32, kCFPropertyListXMLFormat_v1_0, 0, 0);
      if (Data)
      {
        v36 = Data;
        BytePtr = CFDataGetBytePtr(Data);
        Length = CFDataGetLength(v36);
        write(v34, BytePtr, Length);
        close(v34);
        CFRelease(v36);
        CFRelease(v32);
LABEL_14:
        if (a2)
        {
          __strlcpy_chk();
          __strlcat_chk();
          v39 = open(v119, 3585, 420);
          if (v39 != -1)
          {
            v40 = v39;
            v41 = CFPropertyListCreateData(0, a2, kCFPropertyListXMLFormat_v1_0, 0, 0);
            if (!v41)
            {
              v105 = __log_SCNetworkConfiguration();
              v106 = _SC_syslog_os_log_mapping(5);
              if (__SC_log_enabled(5, v105, v106))
              {
                v107 = _os_log_pack_size();
                v115 = &v117 - ((MEMORY[0x1EEE9AC00](v107, v108, v109, v110, v111, v112, v113, v114) + 15) & 0xFFFFFFFFFFFFFFF0);
                v116 = *__error();
                *_os_log_pack_fill() = 0;
                __SC_log_send(5, v105, v106, v115);
              }

              close(v40);
              goto LABEL_33;
            }

            v42 = v41;
            v43 = CFDataGetBytePtr(v41);
            v44 = CFDataGetLength(v42);
            write(v40, v43, v44);
            close(v40);
            v45 = v42;
            goto LABEL_32;
          }

          v47 = __log_SCNetworkConfiguration();
          v48 = _SC_syslog_os_log_mapping(5);
          if (!__SC_log_enabled(5, v47, v48))
          {
            goto LABEL_33;
          }

          goto LABEL_22;
        }

        goto LABEL_33;
      }

      v92 = __log_SCNetworkConfiguration();
      v93 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v92, v93))
      {
        v94 = _os_log_pack_size();
        v102 = &v117 - ((MEMORY[0x1EEE9AC00](v94, v95, v96, v97, v98, v99, v100, v101) + 15) & 0xFFFFFFFFFFFFFFF0);
        v103 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send(5, v92, v93, v102);
      }

      close(v34);
    }

    v45 = v32;
LABEL_32:
    CFRelease(v45);
    goto LABEL_33;
  }

  v46 = *MEMORY[0x1E69E9840];

  CFRelease(v5);
}

SCNetworkReachabilityRef SCNetworkReachabilityCreateWithAddressPair(CFAllocatorRef allocator, const sockaddr *localAddress, const sockaddr *remoteAddress)
{
  v28[1] = *MEMORY[0x1E69E9840];
  if (!(localAddress | remoteAddress))
  {
    goto LABEL_2;
  }

  v6 = remoteAddress;
  if (!localAddress)
  {
    v7 = 0;
    if (!remoteAddress)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v7 = is_valid_address(&localAddress->sa_len);
  if (!v7)
  {
    goto LABEL_2;
  }

  if (v6)
  {
LABEL_9:
    v6 = is_valid_address(&v6->sa_len);
    if (v6)
    {
      goto LABEL_10;
    }

LABEL_2:
    _SCErrorSet(1002);
    v3 = 0;
    goto LABEL_3;
  }

LABEL_10:
  Private = __SCNetworkReachabilityCreatePrivate();
  v3 = Private;
  if (!Private)
  {
    goto LABEL_3;
  }

  *(Private + 20) = 1;
  if (v7)
  {
    *(Private + 12) = nw_endpoint_create_address(v7);
    if (v6)
    {
      v9 = v7[1];
      if (v9 != v6->sa_family || *v7 != v6->sa_len)
      {
        goto LABEL_28;
      }

      if (v9 == 30)
      {
        if (*(v7 + 6) != *&v6[1].sa_data[6])
        {
          goto LABEL_28;
        }

        v12 = v7 + 8;
        v11 = &v6->sa_data[6];
        v10 = 16;
      }

      else
      {
        if (v9 == 2)
        {
          v10 = 4;
        }

        else
        {
          v10 = *v7;
        }

        if (v9 == 2)
        {
          v11 = &v6->sa_data[2];
        }

        else
        {
          v11 = v6;
        }

        if (v9 == 2)
        {
          v12 = v7 + 4;
        }

        else
        {
          v12 = v7;
        }
      }

      if (!bcmp(v12, v11, v10))
      {
        address = nw_retain(*(v3 + 12));
LABEL_29:
        *(v3 + 13) = address;
        goto LABEL_30;
      }

LABEL_28:
      address = nw_endpoint_create_address(v6);
      goto LABEL_29;
    }
  }

  else if (v6)
  {
    goto LABEL_28;
  }

LABEL_30:
  *(v3 + 29) = MEMORY[0x1B26F5100]();
  v14 = *(v3 + 12);
  MEMORY[0x1B26F5170]();
  v15 = __log_SCNetworkReachability_log;
  if (!__log_SCNetworkReachability_log)
  {
    v15 = os_log_create("com.apple.SystemConfiguration", "SCNetworkReachability");
    __log_SCNetworkReachability_log = v15;
  }

  v16 = _SC_syslog_os_log_mapping(7);
  if (__SC_log_enabled(7, v15, v16))
  {
    v17 = _os_log_pack_size();
    v25 = v28 - ((MEMORY[0x1EEE9AC00](v17, v18, v19, v20, v21, v22, v23, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = *__error();
    v27 = _os_log_pack_fill();
    *v27 = 136315650;
    *(v27 + 4) = v3 + 193;
    *(v27 + 12) = 2080;
    *(v27 + 14) = "create w/address pair";
    *(v27 + 22) = 2112;
    *(v27 + 24) = v3;
    __SC_log_send(7, v15, v16, v25);
  }

LABEL_3:
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

char *__SCNetworkReachabilityCreateWithPTR(unsigned __int8 *a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v1 = is_valid_address(a1);
  if (v1)
  {
    v2 = v1;
    Private = __SCNetworkReachabilityCreatePrivate();
    v4 = Private;
    if (Private)
    {
      *(Private + 20) = 3;
      *(Private + 13) = nw_endpoint_create_address(v2);
      *(v4 + 29) = MEMORY[0x1B26F5100]();
      nw_parameters_set_resolve_ptr();
      v5 = __log_SCNetworkReachability_log;
      if (!__log_SCNetworkReachability_log)
      {
        v5 = os_log_create("com.apple.SystemConfiguration", "SCNetworkReachability");
        __log_SCNetworkReachability_log = v5;
      }

      v6 = _SC_syslog_os_log_mapping(7);
      if (__SC_log_enabled(7, v5, v6))
      {
        v7 = _os_log_pack_size();
        v15 = v20 - ((MEMORY[0x1EEE9AC00](v7, v8, v9, v10, v11, v12, v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
        v16 = *__error();
        v17 = _os_log_pack_fill();
        *v17 = 136315650;
        *(v17 + 4) = v4 + 193;
        *(v17 + 12) = 2080;
        *(v17 + 14) = "create w/ptr";
        *(v17 + 22) = 2112;
        *(v17 + 24) = v4;
        __SC_log_send(7, v5, v6, v15);
      }
    }
  }

  else
  {
    _SCErrorSet(1002);
    v4 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v4;
}

CFTypeID SCNetworkReachabilityGetTypeID(void)
{
  v2 = *MEMORY[0x1E69E9840];
  if (__SCNetworkReachabilityInitialize_initialized != -1)
  {
    __SCNetworkReachabilityCreatePrivate_cold_1();
  }

  result = __kSCNetworkReachabilityTypeID;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

CFMutableArrayRef SCNetworkReachabilityCopyResolvedAddress(char *cf, _DWORD *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (__SCNetworkReachabilityInitialize_initialized != -1)
  {
    __SCNetworkReachabilityCreatePrivate_cold_1();
    if (cf)
    {
      goto LABEL_3;
    }

LABEL_14:
    _SCErrorSet(1002);
    Mutable = 0;
    goto LABEL_15;
  }

  if (!cf)
  {
    goto LABEL_14;
  }

LABEL_3:
  v4 = __kSCNetworkReachabilityTypeID;
  if (CFGetTypeID(cf) != v4 || *(cf + 20) <= 1u)
  {
    goto LABEL_14;
  }

  if (a2)
  {
    *a2 = 0;
  }

  if (pthread_mutex_lock((cf + 16)))
  {
    SCNetworkReachabilityCopyResolvedAddress_cold_2();
  }

  v5 = *(cf + 35);
  if (nw_array_get_count())
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v7 = *(cf + 35);
    nw_array_apply();
  }

  else
  {
    Mutable = 0;
  }

  if (pthread_mutex_unlock((cf + 16)))
  {
    SCNetworkReachabilityCopyResolvedAddress_cold_3();
  }

  _SCErrorSet(0);
LABEL_15:
  v8 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t __SCNetworkReachabilityCopyResolvedAddress_block_invoke(uint64_t a1, int a2, nw_endpoint_t endpoint)
{
  v40[1] = *MEMORY[0x1E69E9840];
  type = nw_endpoint_get_type(endpoint);
  if (type == nw_endpoint_type_host)
  {
    hostname = nw_endpoint_get_hostname(endpoint);
    if (hostname)
    {
      v10 = *MEMORY[0x1E695E480];
      v11 = CFStringCreateWithCString(*MEMORY[0x1E695E480], hostname, 0x600u);
      if (v11)
      {
        v8 = v11;
        if (CFStringHasPrefix(v11, @".") || CFStringHasSuffix(v8, @"."))
        {
          MutableCopy = CFStringCreateMutableCopy(v10, 0, v8);
          CFRelease(v8);
          CFStringTrim(MutableCopy, @".");
          v8 = MutableCopy;
        }

        goto LABEL_10;
      }

      v26 = __log_SCNetworkReachability_log;
      if (!__log_SCNetworkReachability_log)
      {
        v26 = os_log_create("com.apple.SystemConfiguration", "SCNetworkReachability");
        __log_SCNetworkReachability_log = v26;
      }

      v27 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v26, v27))
      {
LABEL_26:
        v28 = _os_log_pack_size();
        v36 = v40 - ((MEMORY[0x1EEE9AC00](v28, v29, v30, v31, v32, v33, v34, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
        v37 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send(3, v26, v27, v36);
      }
    }

    else
    {
      v26 = __log_SCNetworkReachability_log;
      if (!__log_SCNetworkReachability_log)
      {
        v26 = os_log_create("com.apple.SystemConfiguration", "SCNetworkReachability");
        __log_SCNetworkReachability_log = v26;
      }

      v27 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v26, v27))
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
    v6 = type;
    if (type == nw_endpoint_type_address)
    {
      address = nw_endpoint_get_address(endpoint);
      if (address)
      {
        v8 = CFDataCreate(*MEMORY[0x1E695E480], &address->sa_len, address->sa_len);
LABEL_10:
        CFArrayAppendValue(*(a1 + 32), v8);
        CFRelease(v8);
        goto LABEL_27;
      }

      v26 = __log_SCNetworkReachability_log;
      if (!__log_SCNetworkReachability_log)
      {
        v26 = os_log_create("com.apple.SystemConfiguration", "SCNetworkReachability");
        __log_SCNetworkReachability_log = v26;
      }

      v27 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v26, v27))
      {
        goto LABEL_26;
      }
    }

    else
    {
      v13 = __log_SCNetworkReachability_log;
      if (!__log_SCNetworkReachability_log)
      {
        v13 = os_log_create("com.apple.SystemConfiguration", "SCNetworkReachability");
        __log_SCNetworkReachability_log = v13;
      }

      v14 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v13, v14))
      {
        v15 = _os_log_pack_size();
        v23 = v40 - ((MEMORY[0x1EEE9AC00](v15, v16, v17, v18, v19, v20, v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
        v24 = *__error();
        v25 = _os_log_pack_fill();
        *v25 = 67109120;
        v25[1] = v6;
        __SC_log_send(3, v13, v14, v23);
      }
    }
  }

LABEL_27:
  v38 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t SCNetworkReachabilityGetInterfaceIndex(char *cf)
{
  v7 = *MEMORY[0x1E69E9840];
  if (__SCNetworkReachabilityInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_13:
      _SCErrorSet(1002);
      interface_index = 0xFFFFFFFFLL;
      goto LABEL_14;
    }
  }

  else
  {
    __SCNetworkReachabilityCreatePrivate_cold_1();
    if (!cf)
    {
      goto LABEL_13;
    }
  }

  v2 = __kSCNetworkReachabilityTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_13;
  }

  if (pthread_mutex_lock((cf + 16)))
  {
    SCNetworkReachabilityGetInterfaceIndex_cold_2();
  }

  if ((__SCNetworkReachabilityGetFlagsFromPath((cf + 193), "GetInterfaceIndex", *(cf + 31), *(cf + 20), 0, 0, cf[288], *(cf + 73)) & 6) == 2)
  {
    if (cf[288])
    {
      interface_index = *(cf + 74);
    }

    else
    {
      v4 = *(cf + 31);
      interface_index = nw_path_get_interface_index();
    }
  }

  else
  {
    interface_index = 0xFFFFFFFFLL;
  }

  if (pthread_mutex_unlock((cf + 16)))
  {
    SCNetworkReachabilityGetInterfaceIndex_cold_3();
  }

LABEL_14:
  v5 = *MEMORY[0x1E69E9840];
  return interface_index;
}

CFStringRef reachRLSCopyDescription(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = CFStringCreateWithFormat(0, 0, @"<SCNetworkReachability RLS> {target = %p}", a1);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

Boolean SCNetworkReachabilityUnscheduleFromRunLoop(SCNetworkReachabilityRef target, CFRunLoopRef runLoop, CFStringRef runLoopMode)
{
  v12 = *MEMORY[0x1E69E9840];
  if (__SCNetworkReachabilityInitialize_initialized != -1)
  {
    __SCNetworkReachabilityCreatePrivate_cold_1();
    if (target)
    {
      goto LABEL_3;
    }

LABEL_16:
    _SCErrorSet(1002);
    v9 = 0;
    goto LABEL_17;
  }

  if (!target)
  {
    goto LABEL_16;
  }

LABEL_3:
  v6 = __kSCNetworkReachabilityTypeID;
  v7 = CFGetTypeID(target);
  if (!runLoopMode || !runLoop || v7 != v6)
  {
    goto LABEL_16;
  }

  if (pthread_mutex_lock((target + 16)))
  {
    SCNetworkReachabilityUnscheduleFromRunLoop_cold_2();
  }

  v8 = *(target + 22);
  if (!v8 || !*(target + 15) || !*(target + 112))
  {
    if (pthread_mutex_unlock((target + 16)))
    {
      SCNetworkReachabilityUnscheduleFromRunLoop_cold_4();
    }

    goto LABEL_16;
  }

  if (!_SC_unschedule(target, runLoop, runLoopMode, v8, 0))
  {
LABEL_14:
    v9 = 1;
    goto LABEL_19;
  }

  if (CFArrayGetCount(*(target + 22)))
  {
    if (!_SC_isScheduled(0, runLoop, runLoopMode, *(target + 22)))
    {
      CFRunLoopRemoveSource(runLoop, *(target + 15), runLoopMode);
    }

    goto LABEL_14;
  }

  CFRunLoopRemoveSource(runLoop, *(target + 15), runLoopMode);
  CFRelease(*(target + 22));
  *(target + 22) = 0;
  CFRunLoopSourceInvalidate(*(target + 15));
  CFRelease(*(target + 15));
  *(target + 15) = 0;
  v9 = __SCNetworkReachabilitySetDispatchQueue(target, 0);
LABEL_19:
  if (pthread_mutex_unlock((target + 16)))
  {
    SCNetworkReachabilityUnscheduleFromRunLoop_cold_3();
  }

LABEL_17:
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t _SC_checkResolverReachabilityByAddress(uint64_t a1, _DWORD *a2, char *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  default_evaluator = nw_path_create_default_evaluator();
  v6 = nw_path_evaluator_copy_path();
  if (nw_path_get_status(v6) == nw_path_status_unsatisfied)
  {
    if (a2)
    {
      *a2 = 0;
    }

    if (a3)
    {
      v7 = 0;
LABEL_10:
      *a3 = v7;
    }
  }

  else
  {
    if (a2)
    {
      *a2 = 2;
    }

    if (a3)
    {
      v7 = 1;
      goto LABEL_10;
    }
  }

  nw_release(default_evaluator);
  nw_release(v6);
  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

__CFString *__SCNetworkReachabilityCopyDescription(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = CFGetAllocator(a1);
  if (pthread_mutex_lock((a1 + 16)))
  {
    __SCNetworkReachabilityCopyDescription_cold_1();
  }

  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<SCNetworkReachability %p [%p]> {", a1, v2);
  v4 = CFGetAllocator(a1);
  v5 = CFStringCreateMutable(v4, 0);
  v6 = *(a1 + 80);
  if (v6 < 2)
  {
    v9 = *(a1 + 96);
    if (v9)
    {
      address = nw_endpoint_get_address(v9);
      _SC_sockaddr_to_string(address, v30, 0x40uLL);
      CFStringAppendFormat(v5, 0, @"local address = %s", v30);
    }

    v11 = *(a1 + 104);
    if (v11)
    {
      v12 = nw_endpoint_get_address(v11);
      _SC_sockaddr_to_string(v12, v30, 0x40uLL);
      if (*(a1 + 96))
      {
        v13 = ", ";
      }

      else
      {
        v13 = "";
      }

      if (*(a1 + 80) == 1)
      {
        v14 = "remote ";
      }

      else
      {
        v14 = "";
      }

      CFStringAppendFormat(v5, 0, @"%s%saddress = %s", v13, v14, v30);
    }

    else
    {
      CFStringAppendFormat(v5, 0, @"default path", v27, v29);
    }
  }

  else if (v6 == 2)
  {
    hostname = nw_endpoint_get_hostname(*(a1 + 88));
    CFStringAppendFormat(v5, 0, @"name = %s", hostname, v29);
  }

  else if (v6 == 3)
  {
    v7 = *(a1 + 104);
    if (v7)
    {
      v8 = nw_endpoint_get_address(v7);
      _SC_sockaddr_to_string(v8, v30, 0x40uLL);
      CFStringAppendFormat(v5, 0, @"ptr = %s", v30, v29);
    }
  }

  if (*(a1 + 232))
  {
    required_interface_index = nw_parameters_get_required_interface_index();
    if (required_interface_index)
    {
      CFStringAppendFormat(v5, 0, @", if_index = %u", required_interface_index);
    }
  }

  CFStringAppend(Mutable, v5);
  CFRelease(v5);
  if (*(a1 + 80) >= 2u)
  {
    v16 = *(a1 + 272);
    if (*(a1 + 264))
    {
      if (!v16)
      {
        CFStringAppendFormat(Mutable, 0, @" (DNS query active)");
        goto LABEL_34;
      }
    }

    else if (!v16)
    {
      goto LABEL_34;
    }

    if (v16 == 2)
    {
      v17 = "complete";
    }

    else
    {
      v17 = "in progress";
    }

    CFStringAppendFormat(Mutable, 0, @" (%s"), v17;
    v18 = *(a1 + 280);
    if (nw_array_get_count())
    {
      v19 = *(a1 + 280);
      nw_array_apply();
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @", no addresses");
    }

    CFStringAppendFormat(Mutable, 0, @""));
  }

LABEL_34:
  if (*(a1 + 192))
  {
    CFStringAppendFormat(Mutable, 0, @", !resolve");
  }

  if (*(a1 + 112))
  {
    v20 = CFGetAllocator(a1);
    FlagsFromPath = __SCNetworkReachabilityGetFlagsFromPath(a1 + 193, "CopyTargetFlags", *(a1 + 248), *(a1 + 80), *(a1 + 272), *(a1 + 280), *(a1 + 288), *(a1 + 292));
    if (*(a1 + 288))
    {
      interface_index = *(a1 + 296);
    }

    else
    {
      v23 = *(a1 + 248);
      interface_index = nw_path_get_interface_index();
    }

    v24 = CFStringCreateWithFormat(v20, 0, @"flags = 0x%08x, if_index = %u", FlagsFromPath, interface_index);
    CFStringAppendFormat(Mutable, 0, @", %@", v24);
    CFRelease(v24);
  }

  CFStringAppendFormat(Mutable, 0, @"}");
  if (pthread_mutex_unlock((a1 + 16)))
  {
    __SCNetworkReachabilityCopyDescription_cold_2();
  }

  v25 = *MEMORY[0x1E69E9840];
  return Mutable;
}

CFStringRef SCDynamicStoreKeyCreateProxies(CFAllocatorRef allocator)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return SCDynamicStoreKeyCreateNetworkGlobalEntity(allocator, @"State:", @"Proxies");
}

CFDictionaryRef SCDynamicStoreCopyProxies(SCDynamicStoreRef store)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return SCDynamicStoreCopyProxiesWithOptions(store, 0);
}

CFDictionaryRef SCDynamicStoreCopyProxiesWithOptions(const __SCDynamicStore *a1, const __CFDictionary *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_6;
  }

  TypeID = CFDictionaryGetTypeID();
  if (CFGetTypeID(a2) == TypeID)
  {
    Value = CFDictionaryGetValue(a2, @"NO_GLOBAL");
    v6 = CFBooleanGetTypeID();
    if (Value && CFGetTypeID(Value) == v6)
    {
      v7 = CFBooleanGetValue(Value) != 0;
      goto LABEL_7;
    }

LABEL_6:
    v7 = 0;
LABEL_7:
    v8 = SCPreferencesCreate(0, @"SCDynamicStoreCopyProxiesWithOptions", @"/Library/Managed Preferences/mobile/com.apple.SystemConfiguration.plist");
    if (v8)
    {
      v9 = v8;
      v10 = SCPreferencesGetValue(v8, @"Proxies");
      v11 = v10;
      if (v10)
      {
        CFRetain(v10);
      }

      CFRelease(v9);
      if (v7 && v11)
      {
        valuePtr = 0;
        v12 = CFDictionaryGetValue(v11, @"BypassAllowed");
        v13 = CFNumberGetTypeID();
        if (v12 && CFGetTypeID(v12) == v13 && CFNumberGetValue(v12, kCFNumberIntType, &valuePtr) && valuePtr)
        {
          CFRelease(v11);
          goto LABEL_24;
        }
      }

      else
      {
        if (!v11)
        {
          goto LABEL_24;
        }

        if (!v7)
        {
          valuePtr = 0;
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v11);
          CFRelease(v11);
          v16 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          CFDictionarySetValue(MutableCopy, @"BypassAllowed", v16);
          CFRelease(v16);
          v11 = MutableCopy;
        }
      }

      if (CFDictionaryContainsKey(v11, @"FallBackAllowed"))
      {
        if (v11)
        {
LABEL_30:
          v14 = __SCNetworkProxiesCopyNormalized(v11);
          CFRelease(v11);
          goto LABEL_32;
        }

LABEL_31:
        v14 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        goto LABEL_32;
      }

      valuePtr = 0;
      v19 = CFDictionaryCreateMutableCopy(0, 0, v11);
      CFRelease(v11);
      v20 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(v19, @"FallBackAllowed", v20);
      CFRelease(v20);
LABEL_29:
      v11 = v19;
      if (v19)
      {
        goto LABEL_30;
      }

      goto LABEL_31;
    }

LABEL_24:
    NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, @"State:", @"Proxies");
    v11 = SCDynamicStoreCopyValue(a1, NetworkGlobalEntity);
    CFRelease(NetworkGlobalEntity);
    v18 = CFDictionaryGetTypeID();
    if (!v11)
    {
      goto LABEL_31;
    }

    if (CFGetTypeID(v11) != v18 || !CFDictionaryContainsKey(v11, @"BypassAllowed"))
    {
      goto LABEL_30;
    }

    v19 = CFDictionaryCreateMutableCopy(0, 0, v11);
    CFRelease(v11);
    CFDictionaryRemoveValue(v19, @"BypassAllowed");
    goto LABEL_29;
  }

  _SCErrorSet(1002);
  v14 = 0;
LABEL_32:
  v21 = *MEMORY[0x1E69E9840];
  return v14;
}

CFDictionaryRef __SCNetworkProxiesCopyNormalized(const __CFDictionary *a1)
{
  v36[9] = *MEMORY[0x1E69E9840];
  TypeID = CFDictionaryGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a1);
    v4 = 0;
    v36[0] = @"FTPEnable";
    v36[1] = @"FTPProxy";
    v36[2] = @"FTPPort";
    v36[3] = @"GopherEnable";
    v36[4] = @"GopherProxy";
    v36[5] = @"GopherPort";
    v36[6] = @"RTSPEnable";
    v36[7] = @"RTSPProxy";
    v36[8] = @"RTSPPort";
    do
    {
      CFDictionaryRemoveValue(MutableCopy, v36[v4++]);
    }

    while (v4 != 9);
    validate_proxy_content(MutableCopy, @"HTTPEnable", @"HTTPProxy", @"HTTPPort", "http", 0x50u, 0);
    validate_proxy_content(MutableCopy, @"HTTPSEnable", @"HTTPSProxy", @"HTTPSPort", "https", 0x1BBu, 0);
    validate_proxy_content(MutableCopy, @"SOCKSEnable", @"SOCKSProxy", @"SOCKSPort", "socks", 0x438u, 0);
    validate_proxy_content(MutableCopy, @"TransportConverterEnable", @"TransportConverterProxy", @"TransportConverterPort", 0, 0, 1);
    if (CFDictionaryContainsKey(MutableCopy, @"ProxyAutoConfigURLString"))
    {
      validate_proxy_content(MutableCopy, @"ProxyAutoConfigEnable", @"ProxyAutoConfigURLString", 0, 0, 0, 0);
      CFDictionaryRemoveValue(MutableCopy, @"ProxyAutoConfigJavaScript");
    }

    else
    {
      validate_proxy_content(MutableCopy, @"ProxyAutoConfigEnable", @"ProxyAutoConfigJavaScript", 0, 0, 0, 0);
    }

    validate_proxy_content(MutableCopy, @"ProxyAutoDiscoveryEnable", 0, 0, 0, 0, 0);
    validate_proxy_content(MutableCopy, @"FallBackAllowed", 0, 0, 0, 0, 0);
    Value = CFDictionaryGetValue(MutableCopy, @"FTPPassive");
    if (Value)
    {
      v10 = Value;
      LODWORD(v36[0]) = 0;
      v11 = CFNumberGetTypeID();
      if (CFGetTypeID(v10) != v11 || !CFNumberGetValue(v10, kCFNumberIntType, v36))
      {
        LODWORD(v36[0]) = 1;
        v12 = CFNumberCreate(0, kCFNumberIntType, v36);
        CFDictionarySetValue(MutableCopy, @"FTPPassive", v12);
        CFRelease(v12);
      }
    }

    v13 = CFDictionaryGetValue(MutableCopy, @"ExceptionsList");
    if (!v13)
    {
      goto LABEL_26;
    }

    v14 = v13;
    v15 = CFArrayGetTypeID();
    if (CFGetTypeID(v14) == v15)
    {
      Count = CFArrayGetCount(v14);
      v17 = Count;
      if (Count < 1)
      {
        if (Count)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v18 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v14, v18);
          v20 = CFStringGetTypeID();
          if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != v20 || !CFStringGetLength(ValueAtIndex))
          {
            break;
          }

          if (v17 == ++v18)
          {
            goto LABEL_26;
          }
        }
      }
    }

    CFDictionaryRemoveValue(MutableCopy, @"ExceptionsList");
LABEL_26:
    v21 = CFDictionaryGetValue(MutableCopy, @"ExcludeSimpleHostnames");
    if (v21)
    {
      v22 = v21;
      LODWORD(v36[0]) = 0;
      v23 = CFNumberGetTypeID();
      if (CFGetTypeID(v22) != v23 || !CFNumberGetValue(v22, kCFNumberIntType, v36))
      {
        LODWORD(v36[0]) = 0;
        v24 = CFNumberCreate(0, kCFNumberIntType, v36);
        CFDictionarySetValue(MutableCopy, @"ExcludeSimpleHostnames", v24);
        CFRelease(v24);
      }
    }

    v25 = CFDictionaryGetValue(MutableCopy, @"__SCOPED__");
    v26 = CFDictionaryGetTypeID();
    if (v25 && CFGetTypeID(v25) == v26)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionaryApplyFunction(v25, normalize_scoped_proxy, Mutable);
      CFDictionarySetValue(MutableCopy, @"__SCOPED__", Mutable);
      CFRelease(Mutable);
    }

    v28 = CFDictionaryGetValue(MutableCopy, @"__SERVICES__");
    v29 = CFDictionaryGetTypeID();
    if (v28 && CFGetTypeID(v28) == v29)
    {
      v30 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionaryApplyFunction(v28, normalize_services_proxy, v30);
      CFDictionarySetValue(MutableCopy, @"__SERVICES__", v30);
      CFRelease(v30);
    }

    v31 = CFDictionaryGetValue(MutableCopy, @"__SUPPLEMENTAL__");
    v32 = CFArrayGetTypeID();
    if (v31)
    {
      if (CFGetTypeID(v31) == v32)
      {
        v33 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        v38.length = CFArrayGetCount(v31);
        v38.location = 0;
        CFArrayApplyFunction(v31, v38, normalize_supplemental_proxy, v33);
        CFDictionarySetValue(MutableCopy, @"__SUPPLEMENTAL__", v33);
        CFRelease(v33);
      }
    }

    Copy = CFDictionaryCreateCopy(0, MutableCopy);
    CFRelease(MutableCopy);
    v35 = *MEMORY[0x1E69E9840];
    return Copy;
  }

  v5 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695E9D8];
  v7 = MEMORY[0x1E695E9E8];

  return CFDictionaryCreate(0, 0, 0, 0, v6, v7);
}

CFDataRef SCNetworkProxiesCreateProxyAgentData(void *a1)
{
  values[1] = *MEMORY[0x1E69E9840];
  v19 = 0;
  values[0] = a1;
  TypeID = CFDictionaryGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID)
  {
    v3 = CFArrayCreate(0, values, 1, MEMORY[0x1E695E9C0]);
    _SCSerialize(v3, &v19, 0, 0);
    CFRelease(v3);
    result = v19;
  }

  else
  {
    v5 = _SC_LOG_DEFAULT();
    v6 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v5, v6))
    {
      v7 = _os_log_pack_size();
      v15 = &v18 - ((MEMORY[0x1EEE9AC00](v7, v8, v9, v10, v11, v12, v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(3, v5, v6, v15);
    }

    _SCErrorSet(1002);
    result = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void *SCNetworkProxiesCopyMatchingWithOptions(const void *a1, const __CFDictionary *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return _SCNetworkProxiesCopyMatchingInternal(a1, 0, 0, a2);
}

void validate_proxy_content(const __CFDictionary *a1, const void *a2, const void *a3, const void *a4, const char *a5, unsigned int a6, int a7)
{
  v36 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v15 = Value;
    TypeID = CFNumberGetTypeID();
    if (CFGetTypeID(v15) != TypeID || !CFNumberGetValue(v15, kCFNumberIntType, &valuePtr))
    {
      goto LABEL_26;
    }
  }

  if (a3)
  {
    v17 = CFDictionaryGetValue(a1, a3);
    v18 = v17;
    if (!valuePtr && v17)
    {
      goto LABEL_26;
    }

    if (valuePtr)
    {
      v19 = CFStringGetTypeID();
      if (!v18)
      {
        CFArrayGetTypeID();
        goto LABEL_26;
      }

      if (CFGetTypeID(v18) == v19)
      {
        if (a7 || !CFStringGetLength(v18))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v20 = CFArrayGetTypeID();
        v21 = CFGetTypeID(v18);
        if (!a7)
        {
          goto LABEL_26;
        }

        if (v21 != v20)
        {
          goto LABEL_26;
        }

        Count = CFArrayGetCount(v18);
        if (!Count)
        {
          goto LABEL_26;
        }

        if (Count >= 1)
        {
          v22 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v18, v22);
            v24 = CFStringGetTypeID();
            if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != v24 || !CFStringGetLength(ValueAtIndex))
            {
              goto LABEL_26;
            }
          }

          while (Count != ++v22);
        }
      }
    }
  }

  if (!a4)
  {
    goto LABEL_30;
  }

  v34 = 0;
  v25 = CFDictionaryGetValue(a1, a4);
  v26 = v25;
  v27 = valuePtr;
  if (!valuePtr && v25)
  {
    goto LABEL_26;
  }

  if (valuePtr && v25)
  {
    v30 = CFNumberGetTypeID();
    if (CFGetTypeID(v26) == v30 && CFNumberGetValue(v26, kCFNumberIntType, &v34) && v34 < 0x10000)
    {
      if (!v34)
      {
        v26 = 0;
      }

      v27 = valuePtr;
      goto LABEL_39;
    }

LABEL_26:
    valuePtr = 0;
    v28 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(a1, a2, v28);
    CFRelease(v28);
    if (a3)
    {
      CFDictionaryRemoveValue(a1, a3);
    }

    if (a4)
    {
      CFDictionaryRemoveValue(a1, a4);
    }

    goto LABEL_30;
  }

LABEL_39:
  if (!v27 || v26)
  {
    goto LABEL_30;
  }

  if (!a5)
  {
    goto LABEL_26;
  }

  v31 = getservbyname(a5, "tcp");
  if (v31)
  {
    a6 = bswap32(LOWORD(v31->s_port)) >> 16;
  }

  v34 = a6;
  v32 = CFNumberCreate(0, kCFNumberIntType, &v34);
  CFDictionarySetValue(a1, a4, v32);
  CFRelease(v32);
LABEL_30:
  v29 = *MEMORY[0x1E69E9840];
}

void normalize_scoped_proxy(const void *a1, uint64_t a2, __CFDictionary *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = __SCNetworkProxiesCopyNormalized(a2);
  CFDictionarySetValue(a3, a1, v5);
  v6 = *MEMORY[0x1E69E9840];

  CFRelease(v5);
}

void normalize_services_proxy(const void *a1, uint64_t a2, __CFDictionary *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = __SCNetworkProxiesCopyNormalized(a2);
  CFDictionarySetValue(a3, a1, v5);
  v6 = *MEMORY[0x1E69E9840];

  CFRelease(v5);
}

void normalize_supplemental_proxy(uint64_t a1, __CFArray *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = __SCNetworkProxiesCopyNormalized(a1);
  CFArrayAppendValue(a2, v3);
  v4 = *MEMORY[0x1E69E9840];

  CFRelease(v3);
}

Boolean DHCPClientPreferencesSetApplicationOptions(CFStringRef applicationID, const UInt8 *options, CFIndex count)
{
  v25 = *MEMORY[0x1E69E9840];
  if (applicationID && (v5 = CFStringCreateWithFormat(0, 0, @"/Application/%@", applicationID)) != 0)
  {
    v6 = v5;
    v7 = SCPreferencesCreate(0, @"DHCPClientSetAppReqParams", @"DHCPClient.xml");
    if (!v7)
    {
      LOBYTE(v11) = 0;
      v12 = v6;
LABEL_35:
      CFRelease(v12);
      goto LABEL_36;
    }

    v8 = v7;
    Value = SCPreferencesPathGetValue(v7, v6);
    if (Value)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v12 = MutableCopy;
    if (!MutableCopy)
    {
      goto LABEL_33;
    }

    if (options && count >= 1)
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      if (!Mutable)
      {
        goto LABEL_33;
      }

      v14 = Mutable;
      v15 = 0;
      while (1)
      {
        if (options[v15] && options[v15] != 255)
        {
          valuePtr = options[v15];
          v16 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          if (!v16)
          {
            CFRelease(v14);
            goto LABEL_33;
          }

          v17 = v16;
          v18 = CFArrayGetCount(v14);
          if (v18 < 1)
          {
LABEL_21:
            CFArrayAppendValue(v14, v17);
          }

          else
          {
            v19 = v18;
            v20 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v14, v20);
              if (CFEqual(ValueAtIndex, v17))
              {
                break;
              }

              if (v19 == ++v20)
              {
                goto LABEL_21;
              }
            }
          }

          CFRelease(v17);
        }

        if (++v15 == count)
        {
          CFDictionarySetValue(v12, @"DHCPRequestedParameterList", v14);
          CFRelease(v14);
          goto LABEL_26;
        }
      }
    }

    CFDictionaryRemoveValue(MutableCopy, @"DHCPRequestedParameterList");
LABEL_26:
    if (SCPreferencesLock(v8, 1u))
    {
      if (SCPreferencesPathSetValue(v8, v6, v12))
      {
        v11 = SCPreferencesCommitChanges(v8);
        if (v11)
        {
          SCPreferencesApplyChanges(v8);
        }
      }

      else
      {
        LOBYTE(v11) = 0;
      }

      SCPreferencesUnlock(v8);
    }

    else
    {
LABEL_33:
      LOBYTE(v11) = 0;
    }

    CFRelease(v8);
    CFRelease(v6);
    if (v12)
    {
      goto LABEL_35;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

LABEL_36:
  v22 = *MEMORY[0x1E69E9840];
  return v11;
}

UInt8 *__cdecl DHCPClientPreferencesCopyApplicationOptions(CFStringRef applicationID, CFIndex *count)
{
  v21 = *MEMORY[0x1E69E9840];
  if (applicationID)
  {
    v3 = CFStringCreateWithFormat(0, 0, @"/Application/%@", applicationID);
    if (v3)
    {
      v4 = v3;
      v5 = SCPreferencesCreate(0, @"DHCPClientCopyAppReqParams", @"DHCPClient.xml");
      if (!v5)
      {
        v13 = 0;
LABEL_25:
        CFRelease(v4);
        goto LABEL_26;
      }

      v6 = v5;
      Value = SCPreferencesPathGetValue(v5, v4);
      if (Value)
      {
        v8 = CFDictionaryGetValue(Value, @"DHCPRequestedParameterList");
        TypeID = CFArrayGetTypeID();
        if (v8)
        {
          if (CFGetTypeID(v8) == TypeID)
          {
            v10 = CFArrayGetCount(v8);
            v11 = v10;
            if (!v10 || (v12 = malloc_type_malloc(v10, 0xB7D1F9C5uLL)) == 0)
            {
              v13 = 0;
              *count = v11;
LABEL_24:
              CFRelease(v6);
              goto LABEL_25;
            }

            v13 = v12;
            if (v11 < 1)
            {
              *count = 0;
            }

            else
            {
              v14 = 0;
              for (i = 0; i != v11; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v8, i);
                v17 = CFNumberGetTypeID();
                if (ValueAtIndex)
                {
                  if (CFGetTypeID(ValueAtIndex) == v17)
                  {
                    valuePtr = 0;
                    if (CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr))
                    {
                      v13[v14++] = valuePtr;
                    }
                  }
                }
              }

              *count = v14;
              if (v14)
              {
                goto LABEL_24;
              }
            }

            free(v13);
          }
        }
      }

      v13 = 0;
      goto LABEL_24;
    }
  }

  v13 = 0;
LABEL_26:
  v18 = *MEMORY[0x1E69E9840];
  return v13;
}

CFDictionaryRef SCDynamicStoreCopyDHCPInfo(SCDynamicStoreRef store, CFStringRef serviceID)
{
  v14 = *MEMORY[0x1E69E9840];
  if (serviceID)
  {
    Value = serviceID;
    v4 = 0;
  }

  else
  {
    NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, @"State:", @"IPv4");
    if (!NetworkGlobalEntity)
    {
      v7 = 0;
      goto LABEL_19;
    }

    v4 = NetworkGlobalEntity;
    v10 = SCDynamicStoreCopyValue(store, NetworkGlobalEntity);
    if (!v10)
    {
      v7 = 0;
      goto LABEL_18;
    }

    v11 = v10;
    Value = CFDictionaryGetValue(v10, @"PrimaryService");
    CFRelease(v4);
    if (!Value)
    {
      v7 = 0;
      v4 = v11;
      goto LABEL_18;
    }

    v4 = v11;
  }

  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, @"State:", Value, @"DHCP");
  if (!NetworkServiceEntity)
  {
    v7 = 0;
    if (!v4)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v6 = NetworkServiceEntity;
  v7 = SCDynamicStoreCopyValue(store, NetworkServiceEntity);
  if (v7)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(v7) != TypeID)
    {
      CFRelease(v7);
      v7 = 0;
    }
  }

  CFRelease(v6);
  if (v4)
  {
LABEL_18:
    CFRelease(v4);
  }

LABEL_19:
  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

CFDataRef DHCPInfoGetOptionData(CFDictionaryRef info, UInt8 code)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = CFStringCreateWithFormat(0, 0, @"Option_%d", code);
  if (v3)
  {
    v4 = v3;
    Value = CFDictionaryGetValue(info, v3);
    TypeID = CFDataGetTypeID();
    if (Value && CFGetTypeID(Value) != TypeID)
    {
      Value = 0;
    }

    CFRelease(v4);
  }

  else
  {
    Value = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return Value;
}

CFDateRef DHCPInfoGetLeaseStartTime(CFDictionaryRef info)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return CFDictionaryGetValue(info, @"LeaseStartTime");
}

CFDateRef DHCPInfoGetLeaseExpirationTime(CFDictionaryRef info)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return CFDictionaryGetValue(info, @"LeaseExpirationTime");
}

uint64_t __SCNetworkInterfaceCreateCapabilities(const void *a1, unsigned int a2, const __CFDictionary *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = a2;
  v23 = 0;
  TypeID = SCNetworkInterfaceGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID && (BSDName = SCNetworkInterfaceGetBSDName(a1)) != 0)
  {
    if (a2 == -1)
    {
      v8 = &v22;
    }

    else
    {
      v8 = 0;
    }

    Capabilities = __getCapabilities(BSDName, v8, &v23);
    if (a3 && Capabilities && v23)
    {
      v10 = &byte_1E79BDB60;
      v11 = 10;
      do
      {
        valuePtr = 0;
        number = 0;
        v12 = *(v10 + 1);
        if ((v12 & v23) != 0)
        {
          if (*v10)
          {
            if (CFDictionaryGetValueIfPresent(a3, **(v10 - 1), &number))
            {
              v13 = number;
              v14 = CFNumberGetTypeID();
              if (v13)
              {
                if (CFGetTypeID(v13) == v14 && CFNumberGetValue(number, kCFNumberIntType, &valuePtr))
                {
                  if (valuePtr)
                  {
                    v15 = v23;
                    v16 = v22 | v23 & v12;
                    v17 = ~v12;
                  }

                  else
                  {
                    v17 = ~v12;
                    v15 = v23;
                    v16 = v22 & ~v12;
                  }

                  v22 = v16;
                  v23 = v15 & v17;
                }
              }
            }
          }
        }

        v10 += 16;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    _SCErrorSet(1002);
  }

  result = v22;
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __getCapabilities(const __CFString *a1, _DWORD *a2, _DWORD *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v55 = 0u;
  v56 = 0u;
  if (!_SC_cfstring_to_cstring(a1, &v55, 16, 0x600u))
  {
    v8 = __log_SCNetworkConfiguration();
    v9 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v8, v9))
    {
      v10 = _os_log_pack_size();
      v18 = &v55 - ((MEMORY[0x1EEE9AC00](v10, v11, v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(5, v8, v9, v18);
    }

    _SCErrorSet(1002);
    goto LABEL_15;
  }

  v5 = socket(2, 2, 0);
  if (v5 == -1)
  {
    v20 = __error();
    _SCErrorSet(*v20);
    v21 = __log_SCNetworkConfiguration();
    v22 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v21, v22))
    {
      v23 = _os_log_pack_size();
      v31 = &v55 - ((MEMORY[0x1EEE9AC00](v23, v24, v25, v26, v27, v28, v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
      v32 = *__error();
      v33 = _os_log_pack_fill();
      v34 = __error();
      v35 = strerror(*v34);
      *v33 = 136315138;
      *(v33 + 4) = v35;
      __SC_log_send(3, v21, v22, v31);
    }

LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v6 = v5;
  if (ioctl(v5, 0xC020695BuLL, &v55) == -1)
  {
    v38 = __error();
    _SCErrorSet(*v38);
    v7 = 0;
    v39 = *__error();
    if (v39 != 6 && v39 != 16)
    {
      v40 = __log_SCNetworkConfiguration();
      v41 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v40, v41))
      {
        v42 = _os_log_pack_size();
        v50 = &v55 - ((MEMORY[0x1EEE9AC00](v42, v43, v44, v45, v46, v47, v48, v49) + 15) & 0xFFFFFFFFFFFFFFF0);
        v51 = *__error();
        v52 = _os_log_pack_fill();
        v53 = __error();
        v54 = strerror(*v53);
        *v52 = 136315138;
        *(v52 + 4) = v54;
        __SC_log_send(5, v40, v41, v50);
      }

      v7 = 0;
    }
  }

  else
  {
    if (a2)
    {
      *a2 = DWORD1(v56);
    }

    if (a3)
    {
      *a3 = v56;
    }

    v7 = 1;
  }

  close(v6);
LABEL_16:
  v36 = *MEMORY[0x1E69E9840];
  return v7;
}

CFNumberRef SCNetworkInterfaceCopyCapability(const void *a1, CFNumberRef Mutable)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v19[0] = 0;
  TypeID = SCNetworkInterfaceGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID || (BSDName = SCNetworkInterfaceGetBSDName(a1)) == 0)
  {
LABEL_19:
    _SCErrorSet(1002);
    goto LABEL_20;
  }

  valuePtr = 0;
  if (!__getCapabilities(BSDName, v19 + 1, v19))
  {
LABEL_20:
    Mutable = 0;
    goto LABEL_21;
  }

  if (Mutable)
  {
    v6 = &capabilityMappings;
    v7 = 10;
    while (!CFEqual(Mutable, **v6))
    {
      v6 += 2;
      if (!--v7)
      {
        goto LABEL_19;
      }
    }

    v15 = *(v6 + 3);
    if ((v15 & ~LODWORD(v19[0])) == 0)
    {
      valuePtr = (v15 & ~HIDWORD(v19[0])) == 0;
      Mutable = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v8 = v19[0];
  v9 = 10;
  v10 = MEMORY[0x1E695E9D8];
  v11 = &capabilityMappings;
  v12 = MEMORY[0x1E695E9E8];
  do
  {
    v13 = *(v11 + 3);
    if ((v13 & ~v8) == 0)
    {
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, v10, v12);
      }

      valuePtr = (v13 & ~HIDWORD(v19[0])) == 0;
      v14 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(Mutable, **v11, v14);
      CFRelease(v14);
      v8 = v19[0] & ~v13;
      LODWORD(v19[0]) = v8;
    }

    v11 += 2;
    --v9;
  }

  while (v9);
LABEL_21:
  v16 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t SCNetworkInterfaceSetCapability(const void *a1, const void *a2, const void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v17 = 0;
  TypeID = SCNetworkInterfaceGetTypeID();
  if (!a1)
  {
    goto LABEL_15;
  }

  if (CFGetTypeID(a1) != TypeID)
  {
    goto LABEL_15;
  }

  BSDName = SCNetworkInterfaceGetBSDName(a1);
  if (!BSDName)
  {
    goto LABEL_15;
  }

  v8 = BSDName;
  v9 = &byte_1E79BDB60;
  v10 = 10;
  while (!CFEqual(a2, **(v9 - 1)))
  {
    v9 += 16;
    if (!--v10)
    {
      goto LABEL_15;
    }
  }

  if (!*v9)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    v11 = CFNumberGetTypeID();
    if (CFGetTypeID(a3) != v11)
    {
      goto LABEL_15;
    }
  }

  if (!__getCapabilities(v8, 0, &v17))
  {
LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  if ((*(v9 + 1) & v17) == 0)
  {
LABEL_15:
    _SCErrorSet(1002);
    goto LABEL_16;
  }

  Configuration = SCNetworkInterfaceGetConfiguration(a1);
  if (Configuration)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Configuration);
    CFDictionaryRemoveValue(MutableCopy, @"__INACTIVE__");
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  if (a3)
  {
    CFDictionarySetValue(MutableCopy, a2, a3);
  }

  else
  {
    CFDictionaryRemoveValue(MutableCopy, a2);
    if (!CFDictionaryGetCount(MutableCopy))
    {
      CFRelease(MutableCopy);
      v14 = SCNetworkInterfaceSetConfiguration(a1, 0);
      goto LABEL_17;
    }
  }

  v14 = SCNetworkInterfaceSetConfiguration(a1, MutableCopy);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

LABEL_17:
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t __SCNetworkInterfaceCreateMediaOptions(const void *a1, const __CFDictionary *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  TypeID = SCNetworkInterfaceGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID && (BSDName = SCNetworkInterfaceGetBSDName(a1)) != 0)
  {
    v6 = __copyMediaList(BSDName, 0);
    if (v6)
    {
      if (*(v6 + 32) <= 0)
      {
        __freeMediaList(v6);
      }

      else
      {
        v7 = **(v6 + 36) & 0xE0;
        __freeMediaList(v6);
        if (v7 == 128)
        {
          v8 = 0;
          v9 = &ifm_subtype_ieee80211_descriptions;
          v10 = &ifm_subtype_ieee80211_option_descriptions;
        }

        else if (v7 == 32)
        {
          v8 = 0;
          v9 = &ifm_subtype_ethernet_descriptions;
          v10 = &ifm_subtype_ethernet_option_descriptions;
        }

        else
        {
          v10 = 0;
          v9 = 0;
          v8 = 1;
        }

        Value = CFDictionaryGetValue(a2, @"MediaSubType");
        v14 = CFStringGetTypeID();
        if (!Value)
        {
          goto LABEL_10;
        }

        if (CFGetTypeID(Value) != v14)
        {
          goto LABEL_10;
        }

        v15 = _SC_cfstring_to_cstring(Value, 0, 0, 0x600u);
        if (!v15)
        {
          goto LABEL_10;
        }

        v16 = v15;
        if (!strcasecmp(v15, "autoselect"))
        {
          v20 = 0;
          v17 = &ifm_subtype_shared_descriptions;
LABEL_24:
          v7 = *v17 | v7;
        }

        else
        {
          v17 = &ifm_subtype_shared_descriptions;
          v18 = 3;
          while (1)
          {
            v19 = *(v17 + 3);
            if (!--v18)
            {
              break;
            }

            v17 += 4;
            if (!strcasecmp(v16, v19))
            {
              v20 = v19 == 0;
              goto LABEL_24;
            }
          }

          v20 = v19 == 0;
        }

        if (v8)
        {
          CFAllocatorDeallocate(0, v16);
          if (v20)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v20)
          {
            v21 = *(v9 + 1);
            if (!v21)
            {
LABEL_33:
              v22 = v16;
LABEL_64:
              CFAllocatorDeallocate(0, v22);
              goto LABEL_10;
            }

            while (strcasecmp(v16, v21))
            {
              v21 = *(v9 + 3);
              v9 += 4;
              if (!v21)
              {
                goto LABEL_33;
              }
            }

            v7 = *v9 | v7;
          }

          CFAllocatorDeallocate(0, v16);
        }

        v23 = CFDictionaryGetValue(a2, @"MediaOptions");
        v24 = CFArrayGetTypeID();
        if (v23 && CFGetTypeID(v23) == v24)
        {
          Count = CFArrayGetCount(v23);
          if (Count < 1)
          {
            goto LABEL_11;
          }

          v26 = Count;
          v27 = 0;
          v28 = "full-duplex";
          v40 = Count;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v23, v27);
            v30 = CFStringGetTypeID();
            if (!ValueAtIndex)
            {
              break;
            }

            if (CFGetTypeID(ValueAtIndex) != v30)
            {
              break;
            }

            v31 = _SC_cfstring_to_cstring(ValueAtIndex, 0, 0, 0x600u);
            if (!v31)
            {
              break;
            }

            v32 = v31;
            if (!strcasecmp(v31, v28))
            {
              v37 = 0;
              v34 = &ifm_shared_option_descriptions;
LABEL_49:
              v7 = *v34 | v7;
            }

            else
            {
              v33 = v28;
              v34 = &ifm_shared_option_descriptions;
              v35 = 8;
              while (1)
              {
                v36 = *(v34 + 3);
                if (!--v35)
                {
                  break;
                }

                v34 += 4;
                if (!strcasecmp(v32, v36))
                {
                  v37 = v36 == 0;
                  v28 = v33;
                  v26 = v40;
                  goto LABEL_49;
                }
              }

              v37 = v36 == 0;
              v28 = v33;
              v26 = v40;
            }

            if (v8)
            {
              CFAllocatorDeallocate(0, v32);
              if (v37)
              {
                break;
              }
            }

            else
            {
              if (v37)
              {
                v38 = *(v10 + 1);
                v39 = v10;
                if (!v38)
                {
LABEL_63:
                  v22 = v32;
                  goto LABEL_64;
                }

                while (strcasecmp(v32, v38))
                {
                  v38 = *(v39 + 3);
                  v39 += 4;
                  if (!v38)
                  {
                    goto LABEL_63;
                  }
                }

                v7 = *v39 | v7;
              }

              CFAllocatorDeallocate(0, v32);
            }

            if (++v27 == v26)
            {
              goto LABEL_11;
            }
          }
        }
      }
    }
  }

  else
  {
    _SCErrorSet(1002);
  }

LABEL_10:
  v7 = 0xFFFFFFFFLL;
LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t __copyMediaList(const __CFString *a1, char *a2)
{
  v51[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1B26F3AA0](0, 44, 0x1010040C57E4BAFLL, 0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 28) = 0u;
  if (!_SC_cfstring_to_cstring(a1, v4, 16, 0x600u))
  {
    v9 = __log_SCNetworkConfiguration();
    v10 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v9, v10))
    {
      goto LABEL_16;
    }

    v11 = _os_log_pack_size();
    v19 = v51 - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = *__error();
    *_os_log_pack_fill() = 0;
    v21 = 5;
LABEL_12:
    __SC_log_send(v21, v9, v10, v19);
    goto LABEL_16;
  }

  v5 = socket(2, 2, 0);
  if (v5 == -1)
  {
    v9 = __log_SCNetworkConfiguration();
    v10 = _SC_syslog_os_log_mapping(3);
    if (!__SC_log_enabled(3, v9, v10))
    {
      goto LABEL_16;
    }

    v22 = _os_log_pack_size();
    v19 = v51 - ((MEMORY[0x1EEE9AC00](v22, v23, v24, v25, v26, v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = *__error();
    v31 = _os_log_pack_fill();
    v32 = __error();
    v33 = strerror(*v32);
    *v31 = 136315138;
    *(v31 + 4) = v33;
    v21 = 3;
    goto LABEL_12;
  }

  v6 = v5;
  if (ioctl(v5, 0xC02C6948uLL, v4) != -1)
  {
    v7 = *(v4 + 32);
    if (v7 < 1 || (*(v4 + 36) = MEMORY[0x1B26F3AA0](0, 4 * v7, 0x100004052888210, 0), ioctl(v6, 0xC02C6948uLL, v4) != -1))
    {
      close(v6);
      v8 = 1;
      if (!a2)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v34 = __log_SCNetworkConfiguration();
    v35 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v34, v35))
    {
      v36 = _os_log_pack_size();
      v44 = v51 - ((MEMORY[0x1EEE9AC00](v36, v37, v38, v39, v40, v41, v42, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
      v45 = *__error();
      v46 = _os_log_pack_fill();
      v47 = __error();
      v48 = strerror(*v47);
      *v46 = 136315138;
      *(v46 + 4) = v48;
      __SC_log_send(5, v34, v35, v44);
    }
  }

  close(v6);
LABEL_16:
  __freeMediaList(v4);
  _SCErrorSet(1001);
  v8 = 0;
  v4 = 0;
  if (a2)
  {
LABEL_17:
    *a2 = v8;
  }

LABEL_18:
  v49 = *MEMORY[0x1E69E9840];
  return v4;
}

void __freeMediaList(char *ptr)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *(ptr + 36);
  if (v2)
  {
    CFAllocatorDeallocate(0, v2);
  }

  v3 = *MEMORY[0x1E69E9840];

  CFAllocatorDeallocate(0, ptr);
}

Boolean SCNetworkInterfaceCopyMediaOptions(SCNetworkInterfaceRef interface, CFDictionaryRef *current, CFDictionaryRef *active, CFArrayRef *available, Boolean filter)
{
  v5 = filter;
  v22 = *MEMORY[0x1E69E9840];
  TypeID = SCNetworkInterfaceGetTypeID();
  if (interface && CFGetTypeID(interface) == TypeID && (BSDName = SCNetworkInterfaceGetBSDName(interface)) != 0)
  {
    v12 = __copyMediaList(BSDName, 0);
    if (v12)
    {
      v13 = v12;
      if (active)
      {
        *active = 0;
      }

      if (current)
      {
        *current = 0;
      }

      if (available)
      {
        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        if (*(v13 + 32) >= 1)
        {
          v15 = 0;
          do
          {
            MediaDictionary = __createMediaDictionary(*(*(v13 + 36) + 4 * v15), v5);
            if (MediaDictionary)
            {
              v17 = MediaDictionary;
              if (active && !*active && *(v13 + 28) == *(*(v13 + 36) + 4 * v15))
              {
                *active = CFRetain(MediaDictionary);
              }

              if (current && !*current && *(v13 + 16) == *(*(v13 + 36) + 4 * v15))
              {
                *current = CFRetain(v17);
              }

              v23.length = CFArrayGetCount(Mutable);
              v23.location = 0;
              if (!CFArrayContainsValue(Mutable, v23, v17))
              {
                CFArrayAppendValue(Mutable, v17);
              }

              CFRelease(v17);
            }

            ++v15;
          }

          while (v15 < *(v13 + 32));
        }

        *available = Mutable;
      }

      if (active && !*active)
      {
        *active = __createMediaDictionary(*(v13 + 28), 0);
      }

      if (!current || *current)
      {
        goto LABEL_40;
      }

      if (active)
      {
        v18 = *(v13 + 16);
        if (*(v13 + 28) == v18)
        {
          if (!*active)
          {
LABEL_40:
            __freeMediaList(v13);
            LOBYTE(v12) = 1;
            goto LABEL_36;
          }

          v19 = CFRetain(*active);
LABEL_39:
          *current = v19;
          goto LABEL_40;
        }
      }

      else
      {
        v18 = *(v13 + 16);
      }

      v19 = __createMediaDictionary(v18, 0);
      goto LABEL_39;
    }
  }

  else
  {
    _SCErrorSet(1002);
    LOBYTE(v12) = 0;
  }

LABEL_36:
  v20 = *MEMORY[0x1E69E9840];
  return v12;
}

__CFDictionary *__createMediaDictionary(int a1, int a2)
{
  v2 = a1;
  v29 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if ((a1 & 0xF001F) == 2 || (a1 & 0x8000000) != 0)
    {
      goto LABEL_10;
    }
  }

  if ((a1 & 0xE0) == 0x20)
  {
    v4 = &ifm_subtype_ethernet_descriptions;
    v5 = &ifm_subtype_ethernet_option_descriptions;
  }

  else
  {
    if ((a1 & 0xE0) != 0x80)
    {
LABEL_10:
      Mutable = 0;
      goto LABEL_40;
    }

    v4 = &ifm_subtype_ieee80211_descriptions;
    v5 = &ifm_subtype_ieee80211_option_descriptions;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = v2 & 0xF001F;
  if ((v2 & 0xF001F) != 0)
  {
    v8 = &dword_1E79BE3D8;
    v9 = 3;
    while (--v9)
    {
      v10 = v8 + 4;
      v11 = *v8;
      v8 += 4;
      if (v7 == v11)
      {
        v12 = *(v10 - 1);
        goto LABEL_18;
      }
    }

    goto LABEL_19;
  }

  v12 = "autoselect";
LABEL_18:
  v13 = CFStringCreateWithCString(0, v12, 0x600u);
  if (!v13)
  {
LABEL_19:
    v14 = *(v4 + 1);
    if (!v14)
    {
      goto LABEL_26;
    }

    v15 = v4;
    while (1)
    {
      v16 = *v15;
      v15 += 4;
      if (v7 == v16)
      {
        break;
      }

      v14 = *(v4 + 3);
      v4 = v15;
      if (!v14)
      {
        goto LABEL_26;
      }
    }

    v13 = CFStringCreateWithCString(0, v14, 0x600u);
    if (!v13)
    {
      goto LABEL_26;
    }
  }

  v17 = v13;
  CFDictionaryAddValue(Mutable, @"MediaSubType", v13);
  CFRelease(v17);
LABEL_26:
  v18 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if ((v2 & 0xFF0FF00) != 0)
  {
    v19 = &off_1E79BE410;
    v20 = 9;
    while (--v20)
    {
      v21 = v19 + 2;
      v22 = *(v19 - 2);
      if ((v22 & v2) != 0)
      {
        v23 = CFStringCreateWithCString(0, *v19, 0x600u);
        CFArrayAppendValue(v18, v23);
        CFRelease(v23);
        v2 &= ~v22;
      }

      v19 = v21;
      if ((v2 & 0xFF0FF00) == 0)
      {
        goto LABEL_39;
      }
    }

    if ((v2 & 0xFF0FF00) != 0)
    {
      v24 = (v5 + 2);
      do
      {
        if (!*v24)
        {
          break;
        }

        v25 = *(v24 - 2);
        if ((v25 & v2) != 0)
        {
          v26 = CFStringCreateWithCString(0, *v24, 0x600u);
          CFArrayAppendValue(v18, v26);
          CFRelease(v26);
          v2 &= ~v25;
        }

        v24 += 2;
      }

      while ((v2 & 0xFF0FF00) != 0);
    }
  }

LABEL_39:
  CFDictionaryAddValue(Mutable, @"MediaOptions", v18);
  CFRelease(v18);
LABEL_40:
  v27 = *MEMORY[0x1E69E9840];
  return Mutable;
}

CFArrayRef SCNetworkInterfaceCopyMediaSubTypes(CFArrayRef available)
{
  v14 = *MEMORY[0x1E69E9840];
  TypeID = CFArrayGetTypeID();
  if (!available || CFGetTypeID(available) != TypeID)
  {
    v11 = 1002;
    goto LABEL_15;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  Count = CFArrayGetCount(available);
  if (Count >= 1)
  {
    v5 = Count;
    for (i = 0; i != v5; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(available, i);
      v8 = CFDictionaryGetTypeID();
      if (ValueAtIndex)
      {
        if (CFGetTypeID(ValueAtIndex) == v8)
        {
          Value = CFDictionaryGetValue(ValueAtIndex, @"MediaSubType");
          v10 = CFStringGetTypeID();
          if (Value)
          {
            if (CFGetTypeID(Value) == v10)
            {
              v15.length = CFArrayGetCount(Mutable);
              v15.location = 0;
              if (!CFArrayContainsValue(Mutable, v15, Value))
              {
                CFArrayAppendValue(Mutable, Value);
              }
            }
          }
        }
      }
    }
  }

  if (!CFArrayGetCount(Mutable))
  {
    CFRelease(Mutable);
    v11 = 0;
LABEL_15:
    _SCErrorSet(v11);
    Mutable = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return Mutable;
}

CFArrayRef SCNetworkInterfaceCopyMediaSubTypeOptions(CFArrayRef available, CFStringRef subType)
{
  v18 = *MEMORY[0x1E69E9840];
  TypeID = CFArrayGetTypeID();
  if (!available || CFGetTypeID(available) != TypeID)
  {
    v15 = 1002;
    goto LABEL_18;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  Count = CFArrayGetCount(available);
  if (Count >= 1)
  {
    v7 = Count;
    for (i = 0; i != v7; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(available, i);
      v10 = CFDictionaryGetTypeID();
      if (ValueAtIndex)
      {
        if (CFGetTypeID(ValueAtIndex) == v10)
        {
          Value = CFDictionaryGetValue(ValueAtIndex, @"MediaSubType");
          v12 = CFStringGetTypeID();
          if (Value)
          {
            if (CFGetTypeID(Value) == v12)
            {
              if (CFEqual(subType, Value))
              {
                v13 = CFDictionaryGetValue(ValueAtIndex, @"MediaOptions");
                v14 = CFArrayGetTypeID();
                if (v13)
                {
                  if (CFGetTypeID(v13) == v14)
                  {
                    v19.length = CFArrayGetCount(Mutable);
                    v19.location = 0;
                    if (!CFArrayContainsValue(Mutable, v19, v13))
                    {
                      CFArrayAppendValue(Mutable, v13);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (!CFArrayGetCount(Mutable))
  {
    CFRelease(Mutable);
    v15 = 0;
LABEL_18:
    _SCErrorSet(v15);
    Mutable = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return Mutable;
}

BOOL _SCNetworkInterfaceIsPhysicalEthernet(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = 0;
  _SCErrorSet(0);
  TypeID = SCNetworkInterfaceGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    goto LABEL_14;
  }

  InterfaceType = SCNetworkInterfaceGetInterfaceType(a1);
  if (!CFEqual(InterfaceType, @"Ethernet") || _SCNetworkInterfaceIsHiddenConfiguration(a1) || _SCNetworkInterfaceIsHiddenInterface(a1) || _SCNetworkInterfaceIsTethered(a1) || _SCNetworkInterfaceIsBluetoothPAN(a1))
  {
    goto LABEL_15;
  }

  BSDName = SCNetworkInterfaceGetBSDName(a1);
  if (!BSDName)
  {
LABEL_14:
    _SCErrorSet(1002);
LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  v5 = __copyMediaList(BSDName, &v12);
  if (v5)
  {
    v6 = v5;
    _SCErrorSet(0);
    if ((*(v6 + 16) & 0xE0) == 0x20)
    {
      v7 = *(v6 + 32);
      if (v7 == 1)
      {
        if ((**(v6 + 36) & 0xF001F) == 0)
        {
          goto LABEL_22;
        }

LABEL_19:
        v11 = *(v6 + 36);
        while ((*(v11 + 2) & 0x10) == 0)
        {
          v11 += 4;
          if (!--v7)
          {
            goto LABEL_22;
          }
        }

        v8 = 1;
        goto LABEL_23;
      }

      if (v7 >= 1)
      {
        goto LABEL_19;
      }
    }

LABEL_22:
    v8 = 0;
LABEL_23:
    __freeMediaList(v6);
    goto LABEL_16;
  }

  v8 = v12 != 0;
LABEL_16:
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

Boolean SCNetworkInterfaceCopyMTU(SCNetworkInterfaceRef interface, int *mtu_cur, int *mtu_min, int *mtu_max)
{
  v71 = *MEMORY[0x1E69E9840];
  TypeID = SCNetworkInterfaceGetTypeID();
  if (!interface || CFGetTypeID(interface) != TypeID || (v9 = SCNetworkInterfaceGetBSDName(interface)) == 0)
  {
LABEL_15:
    _SCErrorSet(1002);
    goto LABEL_16;
  }

  *bsdName = 0u;
  v70 = 0u;
  if (!_SC_cfstring_to_cstring(v9, bsdName, 16, 0x600u))
  {
    v13 = __log_SCNetworkConfiguration();
    v14 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v13, v14))
    {
      v15 = _os_log_pack_size();
      v23 = &valuePtr - ((MEMORY[0x1EEE9AC00](v15, v16, v17, v18, v19, v20, v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
      v24 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(5, v13, v14, v23);
    }

    goto LABEL_15;
  }

  v10 = socket(2, 2, 0);
  if (v10 != -1)
  {
    v11 = v10;
    if (ioctl(v10, 0xC0206933uLL, bsdName) == -1)
    {
      v44 = __error();
      _SCErrorSet(*v44);
      v25 = 0;
LABEL_85:
      close(v11);
      goto LABEL_17;
    }

    if (mtu_cur)
    {
      *mtu_cur = v70;
    }

    if (mtu_min)
    {
      *mtu_min = v70;
      if (!mtu_max)
      {
        if (!ioctl(v11, 0xC0206944uLL, bsdName))
        {
          v62 = DWORD1(v70);
          if (SDWORD1(v70) <= 72)
          {
            v62 = 72;
          }

          *mtu_min = v62;
          v12 = 1;
          goto LABEL_76;
        }

        v12 = 1;
        goto LABEL_24;
      }
    }

    else if (!mtu_max)
    {
      goto LABEL_84;
    }

    *mtu_max = v70;
    if (!ioctl(v11, 0xC0206944uLL, bsdName))
    {
      if (mtu_min)
      {
        v56 = DWORD1(v70);
        if (SDWORD1(v70) <= 72)
        {
          v56 = 72;
        }

        *mtu_min = v56;
      }

      v12 = 0;
      *mtu_max = DWORD2(v70);
      goto LABEL_74;
    }

    v12 = 0;
LABEL_24:
    *existing = 0;
    parent = 0;
    v45 = __getIOMTULimits_masterPort;
    if (!__getIOMTULimits_masterPort)
    {
      if (MEMORY[0x1B26F45E0]())
      {
LABEL_53:
        InterfaceType = SCNetworkInterfaceGetInterfaceType(interface);
        if (CFEqual(InterfaceType, @"Bridge"))
        {
          MemberInterfaces = SCBridgeInterfaceGetMemberInterfaces(interface);
          if (MemberInterfaces)
          {
            v59 = MemberInterfaces;
            Count = CFArrayGetCount(MemberInterfaces);
            v61 = Count;
            if (Count < 2)
            {
              if (Count != 1)
              {
                goto LABEL_74;
              }
            }

            else
            {
              if (mtu_min)
              {
                *mtu_min = 72;
              }

              if ((v12 & 1) == 0)
              {
                *mtu_max = 0xFFFF;
              }
            }

            v63 = 0;
            do
            {
              *existing = 0;
              ValueAtIndex = CFArrayGetValueAtIndex(v59, v63);
              if (SCNetworkInterfaceCopyMTU(ValueAtIndex, 0, &existing[1], existing))
              {
                if (mtu_min && *mtu_min < existing[1])
                {
                  *mtu_min = existing[1];
                }

                if ((v12 & 1) == 0 && *mtu_max > existing[0])
                {
                  *mtu_max = existing[0];
                }
              }

              ++v63;
            }

            while (v61 != v63);
          }
        }

LABEL_74:
        if (mtu_min)
        {
          v62 = *mtu_min;
LABEL_76:
          if (v62 <= 1279)
          {
            v62 = 1280;
            *mtu_min = 1280;
          }

          if (mtu_cur)
          {
            v65 = *mtu_cur;
            if (v62 > *mtu_cur)
            {
              *mtu_min = v65;
              v62 = v65;
            }
          }

          if ((v12 & 1) == 0 && v62 > *mtu_max)
          {
            *mtu_min = *mtu_max;
          }
        }

LABEL_84:
        v25 = 1;
        goto LABEL_85;
      }

      v45 = __getIOMTULimits_masterPort;
    }

    v46 = IOBSDNameMatching(v45, 0, bsdName);
    if (v46)
    {
      MatchingServices = IOServiceGetMatchingServices(__getIOMTULimits_masterPort, v46, existing);
      v48 = 0;
      v49 = existing[0];
      if (!MatchingServices && existing[0])
      {
        v48 = IOIteratorNext(existing[0]);
        v49 = existing[0];
      }

      if (v49)
      {
        IOObjectRelease(v49);
      }

      if (v48)
      {
        CFProperty = IORegistryEntryCreateCFProperty(v48, @"IOInterfaceType", 0, 0);
        if (CFProperty)
        {
          v51 = CFProperty;
          v52 = CFNumberGetTypeID();
          if (CFGetTypeID(v51) == v52)
          {
            CFNumberGetValue(v51, kCFNumberIntType, &existing[1]);
          }

          CFRelease(v51);
        }

        IORegistryEntryGetParentEntry(v48, "IOService", &parent);
        IOObjectRelease(v48);
        if (parent)
        {
          v53 = IORegistryEntryCreateCFProperty(parent, @"IOMaxPacketSize", 0, 0);
          if (v53)
          {
            v54 = v53;
            v55 = CFNumberGetTypeID();
            if (CFGetTypeID(v54) == v55)
            {
              valuePtr = 0;
              CFNumberGetValue(v54, kCFNumberIntType, &valuePtr);
              if (existing[1] == 6)
              {
                valuePtr -= 18;
              }

              if (mtu_min)
              {
                *mtu_min = 72;
              }

              if ((v12 & 1) == 0)
              {
                *mtu_max = valuePtr;
              }
            }

            CFRelease(v54);
          }

          IOObjectRelease(parent);
        }

        goto LABEL_74;
      }
    }

    goto LABEL_53;
  }

  v28 = __error();
  _SCErrorSet(*v28);
  v29 = __log_SCNetworkConfiguration();
  v30 = _SC_syslog_os_log_mapping(3);
  if (__SC_log_enabled(3, v29, v30))
  {
    v31 = _os_log_pack_size();
    v39 = &valuePtr - ((MEMORY[0x1EEE9AC00](v31, v32, v33, v34, v35, v36, v37, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = *__error();
    v41 = _os_log_pack_fill();
    v42 = __error();
    v43 = strerror(*v42);
    *v41 = 136315138;
    *(v41 + 4) = v43;
    __SC_log_send(3, v29, v30, v39);
  }

LABEL_16:
  v25 = 0;
LABEL_17:
  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

Boolean SCNetworkInterfaceSetMediaOptions(SCNetworkInterfaceRef interface, CFStringRef subtype, CFArrayRef options)
{
  available[1] = *MEMORY[0x1E69E9840];
  TypeID = SCNetworkInterfaceGetTypeID();
  if (!interface || CFGetTypeID(interface) != TypeID)
  {
    _SCErrorSet(1002);
    v15 = 0;
    goto LABEL_40;
  }

  Configuration = SCNetworkInterfaceGetConfiguration(interface);
  if (Configuration)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Configuration);
    CFDictionaryRemoveValue(MutableCopy, @"__INACTIVE__");
    if (subtype)
    {
      goto LABEL_5;
    }
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (subtype)
    {
LABEL_5:
      available[0] = 0;
      v9 = options;
      if (!options)
      {
        v9 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
      }

      if (SCNetworkInterfaceCopyMediaOptions(interface, 0, 0, available, 0))
      {
        if (available[0])
        {
          v10 = SCNetworkInterfaceCopyMediaSubTypes(available[0]);
          v11 = v10;
          if (v10 && (v70.length = CFArrayGetCount(v10), v70.location = 0, CFArrayContainsValue(v11, v70, subtype)))
          {
            v12 = SCNetworkInterfaceCopyMediaSubTypeOptions(available[0], subtype);
            v13 = v12;
            if (v12)
            {
              v71.length = CFArrayGetCount(v12);
              v71.location = 0;
              if (CFArrayContainsValue(v13, v71, v9))
              {
                CFDictionarySetValue(MutableCopy, @"MediaSubType", subtype);
                CFDictionarySetValue(MutableCopy, @"MediaOptions", v9);
                v14 = 0;
                goto LABEL_28;
              }
            }

            v54 = __log_SCNetworkConfiguration();
            v55 = _SC_syslog_os_log_mapping(6);
            if (__SC_log_enabled(6, v54, v55))
            {
              v56 = _os_log_pack_size();
              v68[1] = v68;
              v64 = MEMORY[0x1EEE9AC00](v56, v57, v58, v59, v60, v61, v62, v63);
              v68[0] = v54;
              v65 = v68 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
              v66 = *__error();
              v67 = _os_log_pack_fill();
              *v67 = 138412290;
              *(v67 + 4) = subtype;
              __SC_log_send(6, v68[0], v55, v65);
            }

            _SCErrorSet(1002);
          }

          else
          {
            v40 = __log_SCNetworkConfiguration();
            v41 = _SC_syslog_os_log_mapping(6);
            if (__SC_log_enabled(6, v40, v41))
            {
              v42 = _os_log_pack_size();
              v50 = v68 - ((MEMORY[0x1EEE9AC00](v42, v43, v44, v45, v46, v47, v48, v49) + 15) & 0xFFFFFFFFFFFFFFF0);
              v51 = *__error();
              *_os_log_pack_fill() = 0;
              __SC_log_send(6, v40, v41, v50);
            }

            _SCErrorSet(1002);
            v13 = 0;
          }

          goto LABEL_27;
        }

        _SCErrorSet(1002);
      }

      else
      {
        v28 = __log_SCNetworkConfiguration();
        v29 = _SC_syslog_os_log_mapping(6);
        if (__SC_log_enabled(6, v28, v29))
        {
          v30 = _os_log_pack_size();
          v38 = v68 - ((MEMORY[0x1EEE9AC00](v30, v31, v32, v33, v34, v35, v36, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
          v39 = *__error();
          *_os_log_pack_fill() = 0;
          __SC_log_send(6, v28, v29, v38);
          v14 = 1;
          v13 = 0;
          v11 = 0;
          goto LABEL_28;
        }
      }

      v13 = 0;
      v11 = 0;
LABEL_27:
      v14 = 1;
LABEL_28:
      if (available[0])
      {
        CFRelease(available[0]);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      if (v13)
      {
        CFRelease(v13);
      }

      if (options)
      {
        if (v14)
        {
          goto LABEL_38;
        }
      }

      else
      {
        CFRelease(v9);
        if (v14)
        {
          goto LABEL_38;
        }
      }

LABEL_43:
      v15 = SCNetworkInterfaceSetConfiguration(interface, MutableCopy);
      if (!MutableCopy)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }
  }

  if (!options)
  {
    CFDictionaryRemoveValue(MutableCopy, @"MediaSubType");
    CFDictionaryRemoveValue(MutableCopy, @"MediaOptions");
    if (!CFDictionaryGetCount(MutableCopy))
    {
      CFRelease(MutableCopy);
      MutableCopy = 0;
    }

    goto LABEL_43;
  }

  v16 = __log_SCNetworkConfiguration();
  v17 = _SC_syslog_os_log_mapping(6);
  if (__SC_log_enabled(6, v16, v17))
  {
    v18 = _os_log_pack_size();
    v26 = v68 - ((MEMORY[0x1EEE9AC00](v18, v19, v20, v21, v22, v23, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send(6, v16, v17, v26);
  }

  _SCErrorSet(1002);
LABEL_38:
  v15 = 0;
  if (MutableCopy)
  {
LABEL_39:
    CFRelease(MutableCopy);
  }

LABEL_40:
  v52 = *MEMORY[0x1E69E9840];
  return v15;
}

Boolean SCNetworkInterfaceSetMTU(SCNetworkInterfaceRef interface, int mtu)
{
  v38 = *MEMORY[0x1E69E9840];
  valuePtr = mtu;
  TypeID = SCNetworkInterfaceGetTypeID();
  if (!interface || CFGetTypeID(interface) != TypeID)
  {
    _SCErrorSet(1002);
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  *mtu_max = 0;
  if (!SCNetworkInterfaceCopyMTU(interface, 0, mtu_max, &mtu_max[1]))
  {
    v10 = __log_SCNetworkConfiguration();
    v11 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v10, v11))
    {
      v12 = _os_log_pack_size();
      v20 = &v35[-((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17, v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v21 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(6, v10, v11, v20);
    }

    goto LABEL_7;
  }

  Configuration = SCNetworkInterfaceGetConfiguration(interface);
  if (Configuration)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Configuration);
    CFDictionaryRemoveValue(MutableCopy, @"__INACTIVE__");
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  if (mtu_max[0] <= mtu && mtu_max[1] >= mtu)
  {
    v22 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(MutableCopy, @"MTU", v22);
    goto LABEL_15;
  }

  if (!mtu)
  {
    CFDictionaryRemoveValue(MutableCopy, @"MTU");
    if (CFDictionaryGetCount(MutableCopy))
    {
LABEL_16:
      v7 = SCNetworkInterfaceSetConfiguration(interface, MutableCopy);
      if (!MutableCopy)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }

    v22 = MutableCopy;
    MutableCopy = 0;
LABEL_15:
    CFRelease(v22);
    goto LABEL_16;
  }

  v23 = __log_SCNetworkConfiguration();
  v24 = _SC_syslog_os_log_mapping(6);
  if (__SC_log_enabled(6, v23, v24))
  {
    v25 = _os_log_pack_size();
    v33 = &v35[-((MEMORY[0x1EEE9AC00](v25, v26, v27, v28, v29, v30, v31, v32) + 15) & 0xFFFFFFFFFFFFFFF0)];
    v34 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send(6, v23, v24, v33);
  }

  _SCErrorSet(1002);
  v7 = 0;
  if (MutableCopy)
  {
LABEL_22:
    CFRelease(MutableCopy);
  }

LABEL_8:
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

CFStringRef SCPreferencesPathKeyCreate(const __CFAllocator *a1, CFStringRef format, ...)
{
  va_start(va, format);
  v4 = *MEMORY[0x1E69E9840];
  result = CFStringCreateWithFormatAndArguments(a1, 0, format, va);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef SCPreferencesPathKeyCreateNetworkServices(const __CFAllocator *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = CFStringCreateWithFormat(a1, 0, @"/%@", @"NetworkServices");
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef SCPreferencesPathKeyCreateNetworkServiceEntity(const __CFAllocator *a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    result = CFStringCreateWithFormat(a1, 0, @"/%@/%@/%@", @"NetworkServices", a2, a3, v6);
  }

  else
  {
    result = CFStringCreateWithFormat(a1, 0, @"/%@/%@", @"NetworkServices", a2, v5, v6);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef SCPreferencesPathKeyCreateSets(const __CFAllocator *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = CFStringCreateWithFormat(a1, 0, @"/%@", @"Sets");
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef SCPreferencesPathKeyCreateSet(const __CFAllocator *a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = CFStringCreateWithFormat(a1, 0, @"/%@/%@", @"Sets", a2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef SCPreferencesPathKeyCreateSetNetworkGlobalEntity(const __CFAllocator *a1, uint64_t a2, uint64_t a3)
{
  result = CFStringCreateWithFormat(a1, 0, @"/%@/%@/%@/%@/%@", @"Sets", a2, @"Network", @"Global", a3, *MEMORY[0x1E69E9840]);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef SCPreferencesPathKeyCreateSetNetworkInterfaceEntity(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    result = CFStringCreateWithFormat(a1, 0, @"/%@/%@/%@/%@/%@/%@", @"Sets", a2, @"Network", @"Interface", a3, a4);
  }

  else
  {
    result = CFStringCreateWithFormat(a1, 0, @"/%@/%@/%@/%@/%@", @"Sets", a2, @"Network", @"Interface", a3);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef SCPreferencesPathKeyCreateSetNetworkService(const __CFAllocator *a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    result = CFStringCreateWithFormat(a1, 0, @"/%@/%@/%@/%@/%@", @"Sets", a2, @"Network", @"Service", a3, v6);
  }

  else
  {
    result = CFStringCreateWithFormat(a1, 0, @"/%@/%@/%@/%@", @"Sets", a2, @"Network", @"Service", v5, v6);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef SCPreferencesPathKeyCreateSetNetworkServiceEntity(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    result = CFStringCreateWithFormat(a1, 0, @"/%@/%@/%@/%@/%@/%@", @"Sets", a2, @"Network", @"Service", a3, a4);
  }

  else
  {
    result = CFStringCreateWithFormat(a1, 0, @"/%@/%@/%@/%@/%@", @"Sets", a2, @"Network", @"Service", a3);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef SCPreferencesPathKeyCreateCategories(const __CFAllocator *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = CFStringCreateWithFormat(a1, 0, @"/%@", @"Categories");
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef SCPreferencesPathKeyCreateCategory(const __CFAllocator *a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = CFStringCreateWithFormat(a1, 0, @"/%@/%@", @"Categories", a2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef SCPreferencesPathKeyCreateCategoryService(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    result = CFStringCreateWithFormat(a1, 0, @"/%@/%@/%@/%@/%@", @"Categories", a2, a3, @"Service", a4, v7);
  }

  else
  {
    result = CFStringCreateWithFormat(a1, 0, @"/%@/%@/%@/%@", @"Categories", a2, a3, @"Service", v6, v7);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef SCPreferencesPathKeyCreateCategoryServiceEntity(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *MEMORY[0x1E69E9840];
  result = CFStringCreateWithFormat(a1, 0, @"/%@/%@/%@/%@/%@/%@", @"Categories", a2, a3, @"Service", a4, a5);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

os_log_t __log_SCNetworkConfiguration()
{
  v2 = *MEMORY[0x1E69E9840];
  result = __log_SCNetworkConfiguration_log;
  if (!__log_SCNetworkConfiguration_log)
  {
    result = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
    __log_SCNetworkConfiguration_log = result;
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void __SCNetworkConfigurationReport(int a1, const char *a2, const __SCPreferences *a3, SCPreferencesRef prefs)
{
  v8 = *MEMORY[0x1E69E9840];
  logConfiguration_NetworkInterfaces(a1, a2, prefs);
  v7 = *MEMORY[0x1E69E9840];

  logConfiguration_preferences(a1, a2, a3);
}

void logConfiguration_NetworkInterfaces(int a1, const char *a2, SCPreferencesRef prefs)
{
  v61 = *MEMORY[0x1E69E9840];
  Value = SCPreferencesGetValue(prefs, @"Interfaces");
  TypeID = CFArrayGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    v8 = SCPreferencesGetValue(prefs, @"Model");
    Count = CFArrayGetCount(Value);
    v10 = __log_SCNetworkConfiguration_log;
    if (!__log_SCNetworkConfiguration_log)
    {
      v10 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
      __log_SCNetworkConfiguration_log = v10;
    }

    v11 = _SC_syslog_os_log_mapping(a1);
    v60 = a1;
    if (__SC_log_enabled(a1, v10, v11))
    {
      v13 = _os_log_pack_size();
      v21 = &v55 - ((MEMORY[0x1EEE9AC00](v13, v14, v15, v16, v17, v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = *__error();
      v23 = _os_log_pack_fill();
      if (a2)
      {
        v24 = a2;
      }

      else
      {
        v24 = "";
      }

      v25 = " ";
      if (!a2)
      {
        v25 = "";
      }

      *v23 = 136315650;
      *(v23 + 4) = v24;
      if (v8)
      {
        v26 = v8;
      }

      else
      {
        v26 = @"No model";
      }

      *(v23 + 12) = 2080;
      *(v23 + 14) = v25;
      *(v23 + 22) = 2112;
      *(v23 + 24) = v26;
      __SC_log_send(v60, v10, v11, v21);
      a1 = v60;
    }

    if (Count >= 1)
    {
      v27 = 0;
      v57 = @"UserDefinedName";
      *&v12 = 138413058;
      v55 = v12;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Value, v27);
        v29 = CFDictionaryGetTypeID();
        if (ValueAtIndex)
        {
          if (CFGetTypeID(ValueAtIndex) == v29)
          {
            v30 = CFDictionaryGetValue(ValueAtIndex, @"BSD Name");
            v31 = CFStringGetTypeID();
            if (v30)
            {
              if (CFGetTypeID(v30) == v31)
              {
                v32 = CFDictionaryGetValue(ValueAtIndex, @"IOBuiltin");
                if (v32)
                {
                  v33 = CFBooleanGetValue(v32);
                  v34 = ", built-in";
                  if (!v33)
                  {
                    v34 = "";
                  }

                  v59 = v34;
                }

                else
                {
                  v59 = "";
                }

                v35 = CFDictionaryContainsKey(ValueAtIndex, @"HiddenConfiguration");
                v36 = ", hidden";
                if (!v35)
                {
                  v37 = CFDictionaryContainsKey(ValueAtIndex, @"HiddenInterface");
                  v36 = ", hidden";
                  if (!v37)
                  {
                    v36 = "";
                  }
                }

                v58 = v36;
                v38 = CFDictionaryGetValue(ValueAtIndex, @"SCNetworkInterfaceInfo");
                v39 = CFDictionaryGetValue(v38, v57);
                v40 = __log_SCNetworkConfiguration_log;
                if (!__log_SCNetworkConfiguration_log)
                {
                  v40 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
                  __log_SCNetworkConfiguration_log = v40;
                }

                v41 = _SC_syslog_os_log_mapping(a1);
                if (__SC_log_enabled(a1, v40, v41))
                {
                  v42 = _os_log_pack_size();
                  v56 = &v55;
                  v50 = &v55 - ((MEMORY[0x1EEE9AC00](v42, v43, v44, v45, v46, v47, v48, v49) + 15) & 0xFFFFFFFFFFFFFFF0);
                  v51 = *__error();
                  v52 = _os_log_pack_fill();
                  *v52 = v55;
                  v53 = @"???";
                  if (v39)
                  {
                    v53 = v39;
                  }

                  *(v52 + 4) = v30;
                  *(v52 + 12) = 2112;
                  *(v52 + 14) = v53;
                  *(v52 + 22) = 2080;
                  *(v52 + 24) = v59;
                  *(v52 + 32) = 2080;
                  *(v52 + 34) = v58;
                  __SC_log_send(v60, v40, v41, v50);
                  a1 = v60;
                }
              }
            }
          }
        }

        ++v27;
      }

      while (Count != v27);
    }
  }

  v54 = *MEMORY[0x1E69E9840];
}

void logConfiguration_preferences(int a1, const char *a2, SCPreferencesRef prefs)
{
  v256 = *MEMORY[0x1E69E9840];
  v235 = prefs;
  Value = SCPreferencesGetValue(prefs, @"Model");
  v6 = __log_SCNetworkConfiguration_log;
  if (!__log_SCNetworkConfiguration_log)
  {
    v6 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
    __log_SCNetworkConfiguration_log = v6;
  }

  v7 = _SC_syslog_os_log_mapping(a1);
  if (__SC_log_enabled(a1, v6, v7))
  {
    v8 = _os_log_pack_size();
    v16 = &v235 - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = *__error();
    v18 = _os_log_pack_fill();
    if (a2)
    {
      v19 = a2;
    }

    else
    {
      v19 = "";
    }

    v20 = " ";
    if (!a2)
    {
      v20 = "";
    }

    *v18 = 136315650;
    *(v18 + 4) = v19;
    if (Value)
    {
      v21 = Value;
    }

    else
    {
      v21 = @"No model";
    }

    *(v18 + 12) = 2080;
    *(v18 + 14) = v20;
    *(v18 + 22) = 2112;
    *(v18 + 24) = v21;
    __SC_log_send(a1, v6, v7, v16);
  }

  v255 = a1;
  v22 = SCNetworkServiceCopyAll(v235);
  if (v22)
  {
    v23 = v22;
    MutableCopy = CFArrayCreateMutableCopy(0, 0, v22);
    CFRelease(v23);
  }

  else
  {
    MutableCopy = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v25 = v255;
  v26 = SCNetworkSetCopyAll(v235);
  v245 = MutableCopy;
  if (v26)
  {
    v27 = v26;
    v238 = SCNetworkSetCopyCurrent(v235);
    Count = CFArrayGetCount(v27);
    if (Count < 1)
    {
      goto LABEL_102;
    }

    v29 = 0;
    *&v28 = 138412802;
    v237 = v28;
    v236 = v27;
    while (1)
    {
      v240 = v29;
      ValueAtIndex = CFArrayGetValueAtIndex(v27, v29);
      v31 = __log_SCNetworkConfiguration_log;
      if (!__log_SCNetworkConfiguration_log)
      {
        v31 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
        __log_SCNetworkConfiguration_log = v31;
      }

      v32 = _SC_syslog_os_log_mapping(v25);
      if (__SC_log_enabled(v25, v31, v32))
      {
        v33 = _os_log_pack_size();
        v41 = &v235 - ((MEMORY[0x1EEE9AC00](v33, v34, v35, v36, v37, v38, v39, v40) + 15) & 0xFFFFFFFFFFFFFFF0);
        v42 = *__error();
        v43 = _os_log_pack_fill();
        SetID = SCNetworkSetGetSetID(ValueAtIndex);
        Name = SCNetworkSetGetName(ValueAtIndex);
        if (ValueAtIndex == v238 || v238 && ValueAtIndex && CFEqual(ValueAtIndex, v238))
        {
          v46 = ", current";
        }

        else
        {
          v46 = "";
        }

        *v43 = v237;
        *(v43 + 4) = SetID;
        *(v43 + 12) = 2112;
        *(v43 + 14) = Name;
        *(v43 + 22) = 2080;
        *(v43 + 24) = v46;
        v25 = v255;
        __SC_log_send(v255, v31, v32, v41);
      }

      v47 = SCNetworkSetCopyServices(ValueAtIndex);
      if (!v47)
      {
        goto LABEL_101;
      }

      v48 = v47;
      ServiceOrder = SCNetworkSetGetServiceOrder(ValueAtIndex);
      v50 = ServiceOrder;
      if (ServiceOrder)
      {
        v243 = CFArrayGetCount(ServiceOrder);
      }

      else
      {
        v243 = 0;
      }

      v51 = CFArrayGetCount(v48);
      v52 = v51;
      v244 = v50;
      if (v51 < 2)
      {
        if (v51 != 1)
        {
          goto LABEL_100;
        }
      }

      else
      {
        v53 = CFArrayCreateMutableCopy(0, 0, v48);
        v257.length = CFArrayGetCount(v53);
        v257.location = 0;
        CFArraySortValues(v53, v257, _SCNetworkServiceCompare, v244);
        CFRelease(v48);
        v48 = v53;
        v50 = v244;
      }

      v54 = 0;
      v242 = v48;
      v250 = v52;
      do
      {
        v55 = CFArrayGetValueAtIndex(v48, v54);
        ServiceID = SCNetworkServiceGetServiceID(v55);
        v57 = SCNetworkServiceGetName(v55);
        if (v57)
        {
          v58 = v57;
        }

        else
        {
          v58 = &stru_1F22591E8;
        }

        Interface = SCNetworkServiceGetInterface(v55);
        BSDName = SCNetworkInterfaceGetBSDName(Interface);
        UserDefinedName = __SCNetworkInterfaceGetUserDefinedName(Interface);
        *&v253 = v58;
        if (v58 == UserDefinedName || (v61 = UserDefinedName) != 0 && CFEqual(v58, UserDefinedName))
        {
          v61 = 0;
        }

        v62 = v48;
        v254 = ServiceID;
        if (!v50 || (v258.location = 0, v258.length = v243, FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v50, v258, ServiceID), FirstIndexOfValue == -1))
        {
          v91 = MutableCopy;
          v92 = __log_SCNetworkConfiguration_log;
          if (!__log_SCNetworkConfiguration_log)
          {
            v92 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
            __log_SCNetworkConfiguration_log = v92;
          }

          v93 = v255;
          v94 = _SC_syslog_os_log_mapping(v255);
          v95 = __SC_log_enabled(v93, v92, v94);
          MutableCopy = v91;
          v48 = v62;
          if (v95)
          {
            v96 = _os_log_pack_size();
            v251 = &v235;
            v104 = &v235 - ((MEMORY[0x1EEE9AC00](v96, v97, v98, v99, v100, v101, v102, v103) + 15) & 0xFFFFFFFFFFFFFFF0);
            v105 = *__error();
            v249 = _os_log_pack_fill();
            LODWORD(v248) = __SCNetworkInterfaceOrder(Interface);
            if (BSDName)
            {
              v106 = ", ";
            }

            else
            {
              v106 = "";
            }

            if (BSDName)
            {
              v107 = BSDName;
            }

            else
            {
              v107 = &stru_1F22591E8;
            }

            BSDName = v107;
            v108 = " : ";
            if (!v61)
            {
              v108 = "";
            }

            v246 = v108;
            v247 = v106;
            if (!v61)
            {
              v61 = &stru_1F22591E8;
            }

            if (SCNetworkInterfaceGetDisablePrivateRelay(Interface))
            {
              v109 = ", no-private-relay";
            }

            else
            {
              v109 = "";
            }

            if (SCNetworkInterfaceGetDisableUntilNeeded(Interface))
            {
              v110 = ", disable-until-needed";
            }

            else
            {
              v110 = "";
            }

            if (_SCNetworkInterfaceIsHiddenConfiguration(Interface))
            {
              v111 = ", hidden";
            }

            else
            {
              v111 = "";
            }

            Enabled = SCNetworkServiceGetEnabled(v55);
            v113 = ", disabled";
            if (Enabled)
            {
              v113 = "";
            }

            __os_log_helper_1_2_11_8_64_4_0_8_64_8_32_8_64_8_32_8_64_8_32_8_32_8_32_8_32(v249, v254, v248, v253, v247, BSDName, v246, v61, v109, v110, v111, v113);
            v87 = v255;
            v88 = v92;
            v89 = v94;
            v90 = v104;
            goto LABEL_95;
          }
        }

        else
        {
          v64 = FirstIndexOfValue;
          v65 = MutableCopy;
          v66 = __log_SCNetworkConfiguration_log;
          if (!__log_SCNetworkConfiguration_log)
          {
            v66 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
            __log_SCNetworkConfiguration_log = v66;
          }

          v67 = v255;
          LODWORD(v249) = _SC_syslog_os_log_mapping(v255);
          v68 = __SC_log_enabled(v67, v66, v249);
          MutableCopy = v65;
          v48 = v62;
          if (v68)
          {
            v69 = _os_log_pack_size();
            v251 = &v235;
            v77 = &v235 - ((MEMORY[0x1EEE9AC00](v69, v70, v71, v72, v73, v74, v75, v76) + 15) & 0xFFFFFFFFFFFFFFF0);
            v78 = *__error();
            v248 = _os_log_pack_fill();
            LODWORD(v247) = __SCNetworkInterfaceOrder(Interface);
            v79 = ", ";
            if (!BSDName)
            {
              v79 = "";
            }

            v246 = v79;
            if (BSDName)
            {
              v80 = BSDName;
            }

            else
            {
              v80 = &stru_1F22591E8;
            }

            BSDName = v80;
            v81 = " : ";
            if (!v61)
            {
              v81 = "";
            }

            v241 = v81;
            if (!v61)
            {
              v61 = &stru_1F22591E8;
            }

            if (SCNetworkInterfaceGetDisablePrivateRelay(Interface))
            {
              v82 = ", no-private-relay";
            }

            else
            {
              v82 = "";
            }

            if (SCNetworkInterfaceGetDisableUntilNeeded(Interface))
            {
              v83 = ", disable-until-needed";
            }

            else
            {
              v83 = "";
            }

            if (_SCNetworkInterfaceIsHiddenConfiguration(Interface))
            {
              v84 = ", hidden";
            }

            else
            {
              v84 = "";
            }

            v85 = SCNetworkServiceGetEnabled(v55);
            v86 = ", disabled";
            if (v85)
            {
              v86 = "";
            }

            __os_log_helper_1_2_12_8_0_8_64_4_0_8_64_8_32_8_64_8_32_8_64_8_32_8_32_8_32_8_32(v248, v64 + 1, v254, v247, v253, v246, BSDName, v241, v61, v82, v83, v84, v86);
            v87 = v255;
            v88 = v66;
            v89 = v249;
            v90 = v77;
LABEL_95:
            __SC_log_send(v87, v88, v89, v90);
            v50 = v244;
            MutableCopy = v245;
            v48 = v242;
          }
        }

        v259.length = CFArrayGetCount(MutableCopy);
        v259.location = 0;
        v114 = CFArrayGetFirstIndexOfValue(MutableCopy, v259, v55);
        if (v114 != -1)
        {
          CFArrayRemoveValueAtIndex(MutableCopy, v114);
        }

        ++v54;
      }

      while (v250 != v54);
      v27 = v236;
      v25 = v255;
LABEL_100:
      CFRelease(v48);
LABEL_101:
      v29 = v240 + 1;
      if (v240 + 1 == Count)
      {
LABEL_102:
        CFRelease(v27);
        if (v238)
        {
          CFRelease(v238);
        }

        break;
      }
    }
  }

  v254 = CFArrayGetCount(MutableCopy);
  if (v254 >= 1)
  {
    v115 = __log_SCNetworkConfiguration_log;
    if (!__log_SCNetworkConfiguration_log)
    {
      v115 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
      __log_SCNetworkConfiguration_log = v115;
    }

    v116 = _SC_syslog_os_log_mapping(v25);
    if (__SC_log_enabled(v25, v115, v116))
    {
      v118 = _os_log_pack_size();
      v126 = &v235 - ((MEMORY[0x1EEE9AC00](v118, v119, v120, v121, v122, v123, v124, v125) + 15) & 0xFFFFFFFFFFFFFFF0);
      v127 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(v25, v115, v116, v126);
    }

    v128 = 0;
    *&v117 = 138413314;
    v253 = v117;
    do
    {
      v129 = CFArrayGetValueAtIndex(MutableCopy, v128);
      v130 = SCNetworkServiceGetServiceID(v129);
      v131 = SCNetworkServiceGetName(v129);
      v132 = SCNetworkServiceGetInterface(v129);
      v133 = SCNetworkInterfaceGetBSDName(v132);
      v134 = __log_SCNetworkConfiguration_log;
      if (!__log_SCNetworkConfiguration_log)
      {
        v134 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
        __log_SCNetworkConfiguration_log = v134;
      }

      v135 = _SC_syslog_os_log_mapping(v25);
      if (__SC_log_enabled(v25, v134, v135))
      {
        if (v131)
        {
          v136 = v131;
        }

        else
        {
          v136 = &stru_1F22591E8;
        }

        v137 = _os_log_pack_size();
        v145 = &v235 - ((MEMORY[0x1EEE9AC00](v137, v138, v139, v140, v141, v142, v143, v144) + 15) & 0xFFFFFFFFFFFFFFF0);
        v146 = *__error();
        v147 = _os_log_pack_fill();
        v148 = SCNetworkServiceGetInterface(v129);
        v149 = __SCNetworkInterfaceOrder(v148);
        *v147 = v253;
        v150 = "";
        if (v133)
        {
          v150 = ", ";
        }

        *(v147 + 4) = v130;
        v151 = &stru_1F22591E8;
        if (v133)
        {
          v151 = v133;
        }

        *(v147 + 12) = 1024;
        *(v147 + 14) = v149;
        *(v147 + 18) = 2112;
        *(v147 + 20) = v136;
        *(v147 + 28) = 2080;
        *(v147 + 30) = v150;
        *(v147 + 38) = 2112;
        *(v147 + 40) = v151;
        __SC_log_send(v255, v134, v135, v145);
        v25 = v255;
      }

      ++v128;
      MutableCopy = v245;
    }

    while (v254 != v128);
  }

  CFRelease(MutableCopy);
  v152 = SCBridgeInterfaceCopyAll(v235);
  if (v152)
  {
    v153 = v152;
    v254 = CFArrayGetCount(v152);
    if (v254 >= 1)
    {
      v154 = __log_SCNetworkConfiguration_log;
      if (!__log_SCNetworkConfiguration_log)
      {
        v154 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
        __log_SCNetworkConfiguration_log = v154;
      }

      v155 = _SC_syslog_os_log_mapping(v25);
      if (__SC_log_enabled(v25, v154, v155))
      {
        v157 = _os_log_pack_size();
        v165 = &v235 - ((MEMORY[0x1EEE9AC00](v157, v158, v159, v160, v161, v162, v163, v164) + 15) & 0xFFFFFFFFFFFFFFF0);
        v166 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send(v255, v154, v155, v165);
        v25 = v255;
      }

      v167 = 0;
      *&v156 = 138412290;
      v253 = v156;
      do
      {
        v168 = CFArrayGetValueAtIndex(v153, v167);
        v169 = SCNetworkInterfaceGetBSDName(v168);
        if (v169)
        {
          v170 = v169;
          Mutable = CFStringCreateMutable(0, 0);
          CFStringAppendFormat(Mutable, 0, @"%@: ", v170);
          MemberInterfaces = SCBridgeInterfaceGetMemberInterfaces(v168);
          if (MemberInterfaces)
          {
            v173 = MemberInterfaces;
            v174 = CFArrayGetCount(MemberInterfaces);
            if (v174 >= 1)
            {
              v175 = v174;
              for (i = 0; i != v175; ++i)
              {
                v177 = CFArrayGetValueAtIndex(v173, i);
                v178 = SCNetworkInterfaceGetBSDName(v177);
                if (v178)
                {
                  v179 = v178;
                }

                else
                {
                  v179 = @"?";
                }

                if (i)
                {
                  v180 = ", ";
                }

                else
                {
                  v180 = "";
                }

                CFStringAppendFormat(Mutable, 0, @"%s%@", v180, v179);
              }
            }
          }

          v181 = __log_SCNetworkConfiguration_log;
          if (!__log_SCNetworkConfiguration_log)
          {
            v181 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
            __log_SCNetworkConfiguration_log = v181;
          }

          v25 = v255;
          v182 = _SC_syslog_os_log_mapping(v255);
          if (__SC_log_enabled(v25, v181, v182))
          {
            v183 = _os_log_pack_size();
            v191 = &v235 - ((MEMORY[0x1EEE9AC00](v183, v184, v185, v186, v187, v188, v189, v190) + 15) & 0xFFFFFFFFFFFFFFF0);
            v192 = *__error();
            v25 = v255;
            v193 = _os_log_pack_fill();
            *v193 = v253;
            *(v193 + 4) = Mutable;
            __SC_log_send(v25, v181, v182, v191);
          }

          CFRelease(Mutable);
        }

        ++v167;
      }

      while (v167 != v254);
    }

    CFRelease(v153);
  }

  v194 = SCVLANInterfaceCopyAll(v235);
  if (v194)
  {
    v195 = v194;
    v196 = CFArrayGetCount(v194);
    if (v196 >= 1)
    {
      v197 = v196;
      v198 = __log_SCNetworkConfiguration_log;
      if (!__log_SCNetworkConfiguration_log)
      {
        v198 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
        __log_SCNetworkConfiguration_log = v198;
      }

      v199 = _SC_syslog_os_log_mapping(v25);
      if (__SC_log_enabled(v25, v198, v199))
      {
        v201 = _os_log_pack_size();
        v209 = &v235 - ((MEMORY[0x1EEE9AC00](v201, v202, v203, v204, v205, v206, v207, v208) + 15) & 0xFFFFFFFFFFFFFFF0);
        v210 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send(v255, v198, v199, v209);
        v25 = v255;
      }

      v211 = 0;
      *&v200 = 138412802;
      v253 = v200;
      v254 = v195;
      do
      {
        v212 = CFArrayGetValueAtIndex(v195, v211);
        v213 = SCNetworkInterfaceGetBSDName(v212);
        if (v213)
        {
          v214 = v213;
          PhysicalInterface = SCVLANInterfaceGetPhysicalInterface(v212);
          if (PhysicalInterface)
          {
            v216 = SCNetworkInterfaceGetBSDName(PhysicalInterface);
          }

          else
          {
            v216 = 0;
          }

          Tag = SCVLANInterfaceGetTag(v212);
          v218 = __log_SCNetworkConfiguration_log;
          if (!__log_SCNetworkConfiguration_log)
          {
            v218 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
            __log_SCNetworkConfiguration_log = v218;
          }

          v219 = _SC_syslog_os_log_mapping(v25);
          if (__SC_log_enabled(v25, v218, v219))
          {
            v220 = _os_log_pack_size();
            v228 = &v235 - ((MEMORY[0x1EEE9AC00](v220, v221, v222, v223, v224, v225, v226, v227) + 15) & 0xFFFFFFFFFFFFFFF0);
            v229 = *__error();
            v230 = _os_log_pack_fill();
            v231 = @"?";
            if (v216)
            {
              v232 = v216;
            }

            else
            {
              v232 = @"?";
            }

            *v230 = v253;
            *(v230 + 4) = v214;
            if (Tag)
            {
              v231 = Tag;
            }

            *(v230 + 12) = 2112;
            *(v230 + 14) = v232;
            *(v230 + 22) = 2112;
            *(v230 + 24) = v231;
            v233 = v228;
            v25 = v255;
            __SC_log_send(v255, v218, v219, v233);
            v195 = v254;
          }
        }

        ++v211;
      }

      while (v197 != v211);
    }

    CFRelease(v195);
  }

  v234 = *MEMORY[0x1E69E9840];
}

CFDictionaryRef __SCNetworkConfigurationGetValue(const __SCPreferences *a1, const __CFString *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  Value = SCPreferencesPathGetValue(a1, a2);
  TypeID = CFDictionaryGetTypeID();
  if (Value)
  {
    if (CFGetTypeID(Value) != TypeID || (Count = CFDictionaryGetCount(Value)) == 0 || Count == 1 && CFDictionaryContainsKey(Value, @"__INACTIVE__"))
    {
      Value = 0;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return Value;
}

uint64_t __SCNetworkConfigurationSetValue(SCPreferencesRef prefs, CFStringRef path, const void *a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(a3) != TypeID)
    {
      _SCErrorSet(1002);
      result = 0;
LABEL_25:
      v14 = *MEMORY[0x1E69E9840];
      return result;
    }
  }

  Value = SCPreferencesPathGetValue(prefs, path);
  v10 = CFDictionaryGetTypeID();
  if (Value && CFGetTypeID(Value) != v10)
  {
    Value = 0;
  }

  if (a3)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a3);
    if (!a4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (!a4)
    {
      if (!Value)
      {
        goto LABEL_24;
      }

      goto LABEL_29;
    }

    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v13 = CFDictionaryGetTypeID();
  if (Value && CFGetTypeID(Value) == v13 && CFDictionaryContainsKey(Value, @"__INACTIVE__"))
  {
    CFDictionarySetValue(MutableCopy, @"__INACTIVE__", *MEMORY[0x1E695E4D0]);
  }

  else
  {
    CFDictionaryRemoveValue(MutableCopy, @"__INACTIVE__");
  }

LABEL_17:
  if (Value == MutableCopy)
  {
    if (!Value)
    {
LABEL_24:
      result = 1;
      goto LABEL_25;
    }

LABEL_23:
    CFRelease(MutableCopy);
    goto LABEL_24;
  }

  if (Value && MutableCopy)
  {
    if (!CFEqual(Value, MutableCopy))
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  if (!MutableCopy)
  {
LABEL_29:
    result = SCPreferencesPathRemoveValue(prefs, path);
    if (!result)
    {
      result = SCError() == 1004;
    }

    goto LABEL_25;
  }

LABEL_27:
  v15 = SCPreferencesPathSetValue(prefs, path, MutableCopy);
  CFRelease(MutableCopy);
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

BOOL __getPrefsEnabled(const __SCPreferences *a1, const __CFString *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  Value = SCPreferencesPathGetValue(a1, a2);
  TypeID = CFDictionaryGetTypeID();
  result = !Value || CFGetTypeID(Value) != TypeID || !CFDictionaryContainsKey(Value, @"__INACTIVE__");
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __setPrefsEnabled(const __SCPreferences *a1, const __CFString *a2, int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  Value = SCPreferencesPathGetValue(a1, a2);
  if (!Value)
  {
    if (a3)
    {
      goto LABEL_14;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"__INACTIVE__", *MEMORY[0x1E695E4D0]);
    if (!Mutable)
    {
      goto LABEL_14;
    }

LABEL_16:
    if (!Mutable)
    {
      result = SCPreferencesPathRemoveValue(a1, a2);
      if (!result)
      {
        result = SCError() == 1004;
      }

      goto LABEL_15;
    }

    goto LABEL_17;
  }

  TypeID = CFDictionaryGetTypeID();
  if (CFGetTypeID(Value) != TypeID)
  {
    _SCErrorSet(1001);
    result = 0;
LABEL_15:
    v11 = *MEMORY[0x1E69E9840];
    return result;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
  Mutable = MutableCopy;
  if (a3)
  {
    CFDictionaryRemoveValue(MutableCopy, @"__INACTIVE__");
  }

  else
  {
    CFDictionarySetValue(MutableCopy, @"__INACTIVE__", *MEMORY[0x1E695E4D0]);
  }

  if (Value == Mutable)
  {
    goto LABEL_13;
  }

  if (!Mutable)
  {
    goto LABEL_16;
  }

  if (CFEqual(Value, Mutable))
  {
LABEL_13:
    CFRelease(Mutable);
LABEL_14:
    result = 1;
    goto LABEL_15;
  }

LABEL_17:
  v12 = SCPreferencesPathSetValue(a1, a2, Mutable);
  CFRelease(Mutable);
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

const void *__copyInterfaceTemplate(const void *a1, const __CFString *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = __copyTemplates();
  if (v4)
  {
    v5 = v4;
    Value = CFDictionaryGetValue(v4, @"Interface");
    TypeID = CFDictionaryGetTypeID();
    if (!Value || CFGetTypeID(Value) != TypeID)
    {
      goto LABEL_14;
    }

    if (a2)
    {
      location = CFStringFind(a2, @".", 0).location;
      v9 = @"*";
      if (location == -1)
      {
        v9 = a2;
      }

      v10 = CFStringCreateWithFormat(0, 0, @"%@-%@", a1, v9);
      v11 = CFDictionaryGetValue(Value, v10);
      CFRelease(v10);
    }

    else
    {
      v11 = CFDictionaryGetValue(Value, a1);
    }

    v12 = CFDictionaryGetTypeID();
    if (!v11)
    {
      goto LABEL_15;
    }

    if (CFGetTypeID(v11) == v12 && CFDictionaryGetCount(v11) >= 1)
    {
      CFRetain(v11);
    }

    else
    {
LABEL_14:
      v11 = 0;
    }

LABEL_15:
    CFRelease(v5);
    goto LABEL_16;
  }

  v11 = 0;
LABEL_16:
  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

CFPropertyListRef __copyTemplates()
{
  v33[1] = *MEMORY[0x1E69E9840];
  v0 = _SC_CFBundleGet();
  if (!v0)
  {
    goto LABEL_15;
  }

  v1 = CFBundleCopyResourceURL(v0, @"NetworkConfiguration", @"plist", 0);
  if (!v1)
  {
    v2 = __log_SCNetworkConfiguration_log;
    if (!__log_SCNetworkConfiguration_log)
    {
      v2 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
      __log_SCNetworkConfiguration_log = v2;
    }

    v3 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v2, v3))
    {
      v4 = _os_log_pack_size();
      v12 = v33 - ((MEMORY[0x1EEE9AC00](v4, v5, v6, v7, v8, v9, v10, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = *__error();
      v14 = _os_log_pack_fill();
      *v14 = 136315138;
      *(v14 + 4) = "NetworkConfiguration.plist";
      __SC_log_send(3, v2, v3, v12);
    }

    v1 = CFURLCreateWithFileSystemPath(0, @"/System/Library/Frameworks/SystemConfiguration.framework/NetworkConfiguration.plist", kCFURLPOSIXPathStyle, 1u);
    if (!v1)
    {
      v18 = __log_SCNetworkConfiguration_log;
      if (!__log_SCNetworkConfiguration_log)
      {
        v18 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
        __log_SCNetworkConfiguration_log = v18;
      }

      v19 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v18, v19))
      {
        v20 = _os_log_pack_size();
        v28 = v33 - ((MEMORY[0x1EEE9AC00](v20, v21, v22, v23, v24, v25, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
        v29 = *__error();
        v30 = _os_log_pack_fill();
        *v30 = 136315138;
        *(v30 + 4) = "/System/Library/Frameworks/SystemConfiguration.framework/NetworkConfiguration.plist";
        __SC_log_send(3, v18, v19, v28);
      }

      goto LABEL_15;
    }
  }

  v15 = v1;
  v16 = _SCCreatePropertyListFromResource(v1);
  CFRelease(v15);
  if (v16)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(v16) != TypeID)
    {
      CFRelease(v16);
LABEL_15:
      v16 = 0;
    }
  }

  v31 = *MEMORY[0x1E69E9840];
  return v16;
}

const void *__copyProtocolTemplate(const void *a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = __copyTemplates();
  if (v6)
  {
    v7 = v6;
    Value = CFDictionaryGetValue(v6, @"Protocol");
    TypeID = CFDictionaryGetTypeID();
    if (Value && CFGetTypeID(Value) == TypeID)
    {
      if (a2)
      {
        location = CFStringFind(a2, @".", 0).location;
        v11 = @"*";
        if (location == -1)
        {
          v11 = a2;
        }

        v12 = CFStringCreateWithFormat(0, 0, @"%@-%@", a1, v11);
        v13 = CFDictionaryGetValue(Value, v12);
        CFRelease(v12);
      }

      else
      {
        v13 = CFDictionaryGetValue(Value, a1);
      }

      v15 = CFDictionaryGetTypeID();
      if (v13)
      {
        if (CFGetTypeID(v13) == v15)
        {
          v14 = CFDictionaryGetValue(v13, a3);
          v16 = CFDictionaryGetTypeID();
          if (!v14)
          {
LABEL_16:
            CFRelease(v7);
            goto LABEL_17;
          }

          if (CFGetTypeID(v14) == v16)
          {
            CFRetain(v14);
            goto LABEL_16;
          }
        }
      }
    }

    v14 = 0;
    goto LABEL_16;
  }

  v14 = 0;
LABEL_17:
  v17 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t __createInterface(int a1, const __CFString *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v36 = 0u;
  v37 = 0u;
  _SC_cfstring_to_cstring(a2, &v36, 16, 0x8000100u);
  if (ioctl(a1, 0xC0206978uLL, &v36) != -1)
  {
    v36 = 0u;
    v37 = 0u;
    _SC_cfstring_to_cstring(a2, &v36, 16, 0x8000100u);
    if (ioctl(a1, 0xC0206911uLL, &v36) == -1)
    {
      v4 = __log_SCNetworkConfiguration_log;
      if (!__log_SCNetworkConfiguration_log)
      {
        v4 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
        __log_SCNetworkConfiguration_log = v4;
      }

      v5 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v4, v5))
      {
        goto LABEL_16;
      }
    }

    else if ((v37 & 1) == 0)
    {
      LOWORD(v37) = v37 | 1;
      if (ioctl(a1, 0x80206910uLL, &v36) == -1)
      {
        v4 = __log_SCNetworkConfiguration_log;
        if (!__log_SCNetworkConfiguration_log)
        {
          v4 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
          __log_SCNetworkConfiguration_log = v4;
        }

        v5 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v4, v5))
        {
LABEL_16:
          v22 = _os_log_pack_size();
          v30 = &v36 - ((MEMORY[0x1EEE9AC00](v22, v23, v24, v25, v26, v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
          v31 = *__error();
          v32 = _os_log_pack_fill();
          v33 = __error();
          v34 = strerror(*v33);
          *v32 = 138412546;
          *(v32 + 4) = a2;
          *(v32 + 12) = 2080;
          *(v32 + 14) = v34;
          __SC_log_send(5, v4, v5, v30);
          result = 1;
          goto LABEL_18;
        }
      }
    }

    result = 1;
    goto LABEL_18;
  }

  v6 = __log_SCNetworkConfiguration_log;
  if (!__log_SCNetworkConfiguration_log)
  {
    v6 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
    __log_SCNetworkConfiguration_log = v6;
  }

  v7 = _SC_syslog_os_log_mapping(5);
  result = __SC_log_enabled(5, v6, v7);
  if (result)
  {
    v9 = _os_log_pack_size();
    v17 = &v36 - ((MEMORY[0x1EEE9AC00](v9, v10, v11, v12, v13, v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = *__error();
    v19 = _os_log_pack_fill();
    v20 = __error();
    v21 = strerror(*v20);
    *v19 = 138412546;
    *(v19 + 4) = a2;
    *(v19 + 12) = 2080;
    *(v19 + 14) = v21;
    __SC_log_send(5, v6, v7, v17);
    result = 0;
  }

LABEL_18:
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __destroyInterface(int a1, const __CFString *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  memset(v21, 0, sizeof(v21));
  _SC_cfstring_to_cstring(a2, v21, 16, 0x8000100u);
  if (ioctl(a1, 0x80206979uLL, v21) == -1)
  {
    v5 = __log_SCNetworkConfiguration_log;
    if (!__log_SCNetworkConfiguration_log)
    {
      v5 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
      __log_SCNetworkConfiguration_log = v5;
    }

    v6 = _SC_syslog_os_log_mapping(5);
    result = __SC_log_enabled(5, v5, v6);
    if (result)
    {
      v7 = _os_log_pack_size();
      v15 = v21 - ((MEMORY[0x1EEE9AC00](v7, v8, v9, v10, v11, v12, v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = *__error();
      v17 = _os_log_pack_fill();
      v18 = __error();
      v19 = strerror(*v18);
      *v17 = 138412546;
      *(v17 + 4) = a2;
      *(v17 + 12) = 2080;
      *(v17 + 14) = v19;
      __SC_log_send(5, v5, v6, v15);
      result = 0;
    }
  }

  else
  {
    result = 1;
  }

  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __extract_password(uint64_t a1, CFDictionaryRef theDict, const void *a3, void *key, const void *a5, uint64_t a6, uint64_t *a7)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!theDict || (Value = CFDictionaryGetValue(theDict, key)) == 0)
  {
    v16 = 1;
    if (a7)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  v13 = Value;
  TypeID = CFStringGetTypeID();
  if (CFGetTypeID(v13) != TypeID)
  {
    result = 0;
    goto LABEL_25;
  }

  result = CFEqual(v13, a5);
  v16 = 0;
  if (result)
  {
    if (a7)
    {
LABEL_6:
      if (a1)
      {
        v17 = _SCPreferencesSystemKeychainPasswordItemCopy();
      }

      else
      {
        v17 = _SCSecKeychainPasswordItemCopy();
      }

      *a7 = v17;
      result = v17 != 0;
LABEL_14:
      if (result)
      {
        v18 = 0;
      }

      else
      {
        v18 = v16;
      }

      if (theDict)
      {
        if (v18)
        {
          v19 = CFDictionaryGetValue(theDict, a3);
          result = __copy_legacy_password(v19);
          if (result)
          {
            if (a7)
            {
              *a7 = result;
            }

            else
            {
              CFRelease(result);
            }

            result = 1;
          }
        }
      }

      goto LABEL_25;
    }

LABEL_9:
    if (a1)
    {
      result = _SCPreferencesSystemKeychainPasswordItemExists();
    }

    else
    {
      result = _SCSecKeychainPasswordItemExists();
    }

    goto LABEL_14;
  }

LABEL_25:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

CFDataRef __copy_legacy_password(const __CFData *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_13;
  }

  TypeID = CFDataGetTypeID();
  if (CFGetTypeID(a1) == TypeID)
  {
    Length = CFDataGetLength(a1);
    if ((Length & 1) == 0)
    {
      if (*CFDataGetBytePtr(a1))
      {
        v4 = 335544576;
      }

      else
      {
        v4 = 268435712;
      }

      BytePtr = CFDataGetBytePtr(a1);
      v6 = CFStringCreateWithBytes(0, BytePtr, Length, v4, 0);
      ExternalRepresentation = CFStringCreateExternalRepresentation(0, v6, 0x8000100u, 0);
      CFRelease(v6);
      v8 = *MEMORY[0x1E69E9840];
      return ExternalRepresentation;
    }

LABEL_13:
    v12 = *MEMORY[0x1E69E9840];
    return 0;
  }

  v10 = CFStringGetTypeID();
  if (CFGetTypeID(a1) != v10 || CFStringGetLength(a1) < 1)
  {
    goto LABEL_13;
  }

  v11 = *MEMORY[0x1E69E9840];

  return CFStringCreateExternalRepresentation(0, a1, 0x8000100u, 0);
}

uint64_t __remove_password(uint64_t a1, CFDictionaryRef theDict, const void *a3, void *key, const void *a5, uint64_t a6, __CFDictionary **a7)
{
  v26 = *MEMORY[0x1E69E9840];
  if (theDict && (Value = CFDictionaryGetValue(theDict, key)) != 0)
  {
    v14 = Value;
    TypeID = CFStringGetTypeID();
    if (CFGetTypeID(v14) != TypeID || (v16 = CFEqual(v14, a5), v17 = 0, !v16))
    {
LABEL_16:
      v19 = 0;
      goto LABEL_17;
    }

    if (a1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v17 = 1;
    if (a1)
    {
LABEL_6:
      v18 = _SCPreferencesSystemKeychainPasswordItemRemove();
      goto LABEL_9;
    }
  }

  v18 = _SCSecKeychainPasswordItemRemove();
LABEL_9:
  v19 = v18;
  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = v17;
  }

  if (theDict && v20)
  {
    v21 = CFDictionaryGetValue(theDict, a3);
    v22 = __copy_legacy_password(v21);
    if (v22)
    {
      CFRelease(v22);
      v19 = 1;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_17:
  if (a7)
  {
    MutableCopy = 0;
    if (theDict && v19)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
      CFDictionaryRemoveValue(MutableCopy, a3);
      CFDictionaryRemoveValue(MutableCopy, key);
    }

    *a7 = MutableCopy;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t __rank_to_str(int a1, __CFString **a2)
{
  result = 0;
  v6 = *MEMORY[0x1E69E9840];
  if (a1 <= 1)
  {
    if (!a1)
    {
      v5 = 0;
      goto LABEL_12;
    }

    if (a1 != 1)
    {
      return result;
    }

    v4 = kSCValNetServicePrimaryRankFirst;
  }

  else
  {
    switch(a1)
    {
      case 2:
        v4 = kSCValNetServicePrimaryRankLast;
        break;
      case 3:
        v4 = kSCValNetServicePrimaryRankNever;
        break;
      case 4:
        v4 = kSCValNetServicePrimaryRankScoped;
        break;
      default:
        return result;
    }
  }

  v5 = *v4;
LABEL_12:
  *a2 = v5;
  return 1;
}

uint64_t __str_to_rank(const void *a1, int *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  TypeID = CFStringGetTypeID();
  if (a1)
  {
    if (CFGetTypeID(a1) != TypeID)
    {
      result = 0;
      goto LABEL_8;
    }

    if (CFEqual(a1, @"First"))
    {
      v5 = 1;
    }

    else if (CFEqual(a1, @"Last"))
    {
      v5 = 2;
    }

    else if (CFEqual(a1, @"Never"))
    {
      v5 = 3;
    }

    else
    {
      result = CFEqual(a1, @"Scoped");
      if (!result)
      {
        goto LABEL_8;
      }

      v5 = 4;
    }
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  result = 1;
LABEL_8:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _SCNetworkConfigurationBypassSystemInterfaces(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  NetworkConfigurationFlags = __SCPreferencesGetNetworkConfigurationFlags(a1);
  if ((NetworkConfigurationFlags & 3) != 0)
  {
    result = NetworkConfigurationFlags & 1;
  }

  else
  {
    result = __SCPreferencesUsingDefaultPrefs(a1) == 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _SCNetworkConfigurationSetBypassSystemInterfaces(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = __SCPreferencesGetNetworkConfigurationFlags(a1) & 0xFFFFFFFC;
  if (a2)
  {
    ++v4;
  }

  v5 = *MEMORY[0x1E69E9840];

  return __SCPreferencesSetNetworkConfigurationFlags(a1, v4 | 2u);
}

double __os_log_helper_1_2_12_8_0_8_64_4_0_8_64_8_32_8_64_8_32_8_64_8_32_8_32_8_32_8_32(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = *MEMORY[0x1E69E9840];
  *&result = 134220802;
  *a1 = 134220802;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2112;
  *(a1 + 14) = a3;
  *(a1 + 22) = 1024;
  *(a1 + 24) = a4;
  *(a1 + 28) = 2112;
  *(a1 + 30) = a5;
  *(a1 + 38) = 2080;
  *(a1 + 40) = a6;
  *(a1 + 48) = 2112;
  *(a1 + 50) = a7;
  *(a1 + 58) = 2080;
  *(a1 + 60) = a8;
  *(a1 + 68) = 2112;
  *(a1 + 70) = a9;
  *(a1 + 78) = 2080;
  *(a1 + 80) = a10;
  *(a1 + 88) = 2080;
  *(a1 + 90) = a11;
  *(a1 + 98) = 2080;
  *(a1 + 100) = a12;
  *(a1 + 108) = 2080;
  *(a1 + 110) = a13;
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

double __os_log_helper_1_2_11_8_64_4_0_8_64_8_32_8_64_8_32_8_64_8_32_8_32_8_32_8_32(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *MEMORY[0x1E69E9840];
  *&result = 138414850;
  *a1 = 138414850;
  *(a1 + 4) = a2;
  *(a1 + 12) = 1024;
  *(a1 + 14) = a3;
  *(a1 + 18) = 2112;
  *(a1 + 20) = a4;
  *(a1 + 28) = 2080;
  *(a1 + 30) = a5;
  *(a1 + 38) = 2112;
  *(a1 + 40) = a6;
  *(a1 + 48) = 2080;
  *(a1 + 50) = a7;
  *(a1 + 58) = 2112;
  *(a1 + 60) = a8;
  *(a1 + 68) = 2080;
  *(a1 + 70) = a9;
  *(a1 + 78) = 2080;
  *(a1 + 80) = a10;
  *(a1 + 88) = 2080;
  *(a1 + 90) = a11;
  *(a1 + 98) = 2080;
  *(a1 + 100) = a12;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL __SCNetworkInterfaceSupportsVLAN(const __CFString *a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v39 = 0;
  v1 = _SC_cfstring_to_cstring(a1, 0, 0, 0x600u);
  if (!v1)
  {
    v5 = 0;
    goto LABEL_18;
  }

  v2 = v1;
  v3 = if_nametoindex(v1);
  if (!v3)
  {
LABEL_10:
    v5 = 0;
    v4 = v2;
LABEL_17:
    CFAllocatorDeallocate(0, v4);
    goto LABEL_18;
  }

  *v40 = xmmword_1AD329780;
  v41 = 3;
  v42 = v3;
  if (sysctl(v40, 6u, 0, &v39, 0, 0) == -1)
  {
    v6 = __log_SCNetworkConfiguration();
    v7 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v6, v7))
    {
      v8 = _os_log_pack_size();
      v16 = &v38 - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = *__error();
      v18 = _os_log_pack_fill();
      v19 = __error();
      v20 = strerror(*v19);
      *v18 = 136315138;
      *(v18 + 4) = v20;
      __SC_log_send(5, v6, v7, v16);
    }

    goto LABEL_10;
  }

  v4 = MEMORY[0x1B26F3AA0](0, v39, 3900559081, 0);
  if (sysctl(v40, 6u, v4, &v39, 0, 0) != -1)
  {
    v5 = v4[3] == 14 && (v4[102] & 3) != 0;
    CFAllocatorDeallocate(0, v2);
    goto LABEL_17;
  }

  v21 = __log_SCNetworkConfiguration();
  v22 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v21, v22))
  {
    v23 = _os_log_pack_size();
    v31 = &v38 - ((MEMORY[0x1EEE9AC00](v23, v24, v25, v26, v27, v28, v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = *__error();
    v33 = _os_log_pack_fill();
    v34 = __error();
    v35 = strerror(*v34);
    *v33 = 136315138;
    *(v33 + 4) = v35;
    __SC_log_send(5, v21, v22, v31);
  }

  CFAllocatorDeallocate(0, v2);
  v5 = 0;
  if (v4)
  {
    goto LABEL_17;
  }

LABEL_18:
  v36 = *MEMORY[0x1E69E9840];
  return v5;
}

CFDataRef __SCCopyMacAddress(const __CFString *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = 0;
  if (!_SC_cfstring_to_cstring(a1, __s1, 16, 0x8000100u))
  {
LABEL_11:
    v2 = 0;
    goto LABEL_15;
  }

  if (getifaddrs(&v22) == -1)
  {
    v4 = __error();
    _SCErrorSet(*v4);
    v5 = __log_SCNetworkConfiguration();
    v6 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v5, v6))
    {
      v7 = _os_log_pack_size();
      v15 = &__s1[-((MEMORY[0x1EEE9AC00](v7, v8, v9, v10, v11, v12, v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      v16 = *__error();
      v17 = _os_log_pack_fill();
      v18 = __error();
      v19 = strerror(*v18);
      *v17 = 136315138;
      *(v17 + 4) = v19;
      __SC_log_send(5, v5, v6, v15);
    }

    goto LABEL_11;
  }

  v1 = v22;
  if (v22)
  {
    v2 = v22;
    while (1)
    {
      if (!strcmp(__s1, *(v2 + 1)))
      {
        v3 = *(v2 + 3);
        if (v3[1] == 18)
        {
          break;
        }
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_14;
      }
    }

    v2 = CFDataCreate(0, &v3[v3[5] + 8], v3[6]);
    v1 = v22;
  }

  else
  {
    v2 = 0;
  }

LABEL_14:
  MEMORY[0x1B26F4BC0](v1);
LABEL_15:
  v20 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t _SCBridgeInterfaceCreatePrivate(const __CFAllocator *a1, const __CFString *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  Private = __SCNetworkInterfaceCreatePrivate(a1, 0, 0, 0);
  v5 = Private;
  if (Private)
  {
    *(Private + 16) = @"Bridge";
    *(Private + 128) = @"Ethernet";
    Copy = CFStringCreateCopy(a1, a2);
    *(v5 + 112) = Copy;
    *(v5 + 160) = __SCCopyMacAddress(Copy);
    *(v5 + 176) = 1;
    *(v5 + 368) = __SCNetworkInterfaceSupportsVLAN(a2);
    *(v5 + 312) = 10;
    *(v5 + 48) = @"bridge";
    *(v5 + 56) = CFRetain(*(v5 + 112));
    *(v5 + 352) = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t _SCVLANInterfaceCreatePrivate(const __CFAllocator *a1, const __CFString *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  Private = __SCNetworkInterfaceCreatePrivate(a1, 0, 0, 0);
  v5 = Private;
  if (Private)
  {
    *(Private + 16) = @"VLAN";
    *(Private + 128) = @"Ethernet";
    Copy = CFStringCreateCopy(a1, a2);
    *(v5 + 112) = Copy;
    *(v5 + 160) = __SCCopyMacAddress(Copy);
    *(v5 + 176) = 1;
    *(v5 + 312) = 9;
    *(v5 + 48) = @"vlan";
    *(v5 + 56) = CFRetain(*(v5 + 112));
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t _SCNetworkInterfaceCompare(uint64_t a1, uint64_t a2)
{
  __endptr[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 312);
  v3 = *(a2 + 312);
  if (v2 != v3)
  {
    if (v2 < v3)
    {
      v26 = -1;
    }

    else
    {
      v26 = 1;
    }

    goto LABEL_52;
  }

  if (*(a1 + 176) != *(a2 + 176))
  {
    if (*(a1 + 176))
    {
      v26 = -1;
    }

    else
    {
      v26 = 1;
    }

    goto LABEL_52;
  }

  if (*(a1 + 176))
  {
    v6 = *(a1 + 200);
    if (v6 != *(a2 + 200))
    {
      TypeID = CFStringGetTypeID();
      if (!v6 || CFGetTypeID(v6) != TypeID)
      {
        v26 = 1;
        goto LABEL_52;
      }

      v8 = *(a2 + 200);
      v9 = CFStringGetTypeID();
      if (!v8 || CFGetTypeID(v8) != v9)
      {
        v26 = -1;
        goto LABEL_52;
      }

      v10 = CFStringCompare(*(a1 + 200), *(a2 + 200), 0);
      if (v10)
      {
        goto LABEL_50;
      }
    }
  }

  v11 = *(a1 + 208);
  if (!v11 || !*(a2 + 208))
  {
    goto LABEL_44;
  }

  theArray = split_path(v11);
  Count = CFArrayGetCount(theArray);
  v13 = split_path(*(a2 + 208));
  v14 = CFArrayGetCount(v13);
  v34 = v14;
  v35 = Count;
  if (Count >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = Count;
  }

  if (v15 < 1)
  {
LABEL_38:
    if (v35 >= v34)
    {
      v26 = 0;
    }

    else
    {
      v26 = -1;
    }

    goto LABEL_43;
  }

  v16 = 0;
  while (1)
  {
    __endptr[0] = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v16);
    v18 = CFArrayGetValueAtIndex(v13, v16);
    v19 = _SC_cfstring_to_cstring(ValueAtIndex, 0, 0, 0x8000100u);
    *__error() = 0;
    v20 = strtoq(v19, __endptr, 16);
    if (!*v19 || *__endptr[0])
    {
LABEL_19:
      CFAllocatorDeallocate(0, v19);
      goto LABEL_20;
    }

    v22 = v20;
    v23 = *__error();
    CFAllocatorDeallocate(0, v19);
    if (!v23)
    {
      v19 = _SC_cfstring_to_cstring(v18, 0, 0, 0x8000100u);
      *__error() = 0;
      v24 = strtoq(v19, __endptr, 16);
      if (!*v19 || *__endptr[0])
      {
        goto LABEL_19;
      }

      v33 = v24;
      v25 = *__error();
      CFAllocatorDeallocate(0, v19);
      if (!v25)
      {
        break;
      }
    }

LABEL_20:
    v21 = CFStringCompare(ValueAtIndex, v18, 0);
    if (v21)
    {
      v26 = v21;
      goto LABEL_43;
    }

LABEL_21:
    if (v15 == ++v16)
    {
      goto LABEL_38;
    }
  }

  if (v22 == v33)
  {
    goto LABEL_21;
  }

  if (v22 < v33)
  {
    v26 = -1;
  }

  else
  {
    v26 = 1;
  }

LABEL_43:
  CFRelease(theArray);
  CFRelease(v13);
  if (!v26)
  {
LABEL_44:
    v27 = *(a1 + 112);
    if (v27 && (v28 = *(a2 + 112)) != 0 && (v10 = CFStringCompare(v27, v28, 0)) != kCFCompareEqualTo)
    {
LABEL_50:
      v26 = v10;
    }

    else
    {
      v29 = *(a1 + 120);
      if (v29)
      {
        v30 = *(a2 + 120);
        if (v30)
        {
          v10 = CFStringCompare(v29, v30, 0);
          goto LABEL_50;
        }
      }

      v26 = 0;
    }
  }

LABEL_52:
  v31 = *MEMORY[0x1E69E9840];
  return v26;
}

CFArrayRef split_path(CFStringRef theString)
{
  v5 = *MEMORY[0x1E69E9840];
  MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
  v6.length = CFStringGetLength(MutableCopy);
  v6.location = 0;
  CFStringFindAndReplace(MutableCopy, @"@", @"/", v6, 0);
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, MutableCopy, @"/");
  CFRelease(MutableCopy);
  v3 = *MEMORY[0x1E69E9840];
  return ArrayBySeparatingStrings;
}

uint64_t __SCNetworkInterfaceOrder(CFTypeRef cf)
{
  v5 = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_6:
      result = 0x7FFFFFFFLL;
      goto LABEL_7;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!cf)
    {
      goto LABEL_6;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_6;
  }

  result = (*(cf + 176) == 0) | (2 * *(cf + 78));
LABEL_7:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *__SCNetworkInterfaceGetDefaultConfigurationType(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 96))
  {
    goto LABEL_8;
  }

  v2 = 0;
  v3 = *(a1 + 16);
  v4 = &off_1E79BE548;
  while (!CFEqual(v3, **(v4 - 1)))
  {
    ++v2;
    v4 += 5;
    if (v2 == 19)
    {
      result = *(a1 + 16);
      goto LABEL_9;
    }
  }

  if ((0x61200uLL >> v2))
  {
LABEL_8:
    _SCErrorSet(1002);
    result = 0;
  }

  else
  {
    result = **v4;
  }

LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t findConfiguration(CFTypeRef cf1)
{
  v2 = 0;
  v6 = *MEMORY[0x1E69E9840];
  v3 = configurations;
  while (!CFEqual(cf1, **v3))
  {
    ++v2;
    v3 += 5;
    if (v2 == 19)
    {
      v2 = -1;
      break;
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t __SCNetworkInterfaceIsValidExtendedConfigurationType(const __SCNetworkInterface *a1, const void *a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  DefaultConfigurationType = __SCNetworkInterfaceGetDefaultConfigurationType(a1);
  if (!DefaultConfigurationType || CFEqual(a2, DefaultConfigurationType))
  {
    goto LABEL_22;
  }

  v7 = 0;
  v8 = *(a1 + 2);
  v9 = configurations;
  while (!CFEqual(v8, **v9))
  {
    ++v7;
    v9 += 5;
    if (v7 == 19)
    {
      goto LABEL_22;
    }
  }

  if (CFEqual(a2, @"IPSec") && (v10 = SCNetworkInterfaceGetInterfaceType(a1), CFEqual(v10, @"PPP")) && (Interface = SCNetworkInterfaceGetInterface(a1)) != 0)
  {
    InterfaceType = SCNetworkInterfaceGetInterfaceType(Interface);
    v13 = CFEqual(InterfaceType, @"L2TP") != 0;
    if (!a3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = 0;
    if (!a3)
    {
      goto LABEL_16;
    }
  }

  v14 = !v13;
  if ((0x240ECuLL >> v7))
  {
    v14 = 0;
  }

  if (v14)
  {
LABEL_22:
    _SCErrorSet(1002);
    result = 0;
    goto LABEL_23;
  }

LABEL_16:
  v15 = 0;
  while (!CFEqual(a2, *configurations[v15]))
  {
    v15 += 5;
    if (v15 == 95)
    {
      goto LABEL_21;
    }
  }

  if (!v13)
  {
    goto LABEL_22;
  }

LABEL_21:
  result = 1;
LABEL_23:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

__CFDictionary *__SCNetworkInterfaceCopyInterfaceEntity(SCNetworkInterfaceRef Interface)
{
  v17 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = Mutable;
  v4 = *(Interface + 16);
  if (v4)
  {
    CFDictionarySetValue(Mutable, @"Type", v4);
  }

  v5 = *(Interface + 17);
  if (v5)
  {
    CFDictionarySetValue(v3, @"SubType", v5);
  }

  v6 = *(Interface + 14);
  if (v6)
  {
    CFDictionarySetValue(v3, @"DeviceName", v6);
  }

  v7 = *(Interface + 15);
  if (v7)
  {
    CFDictionarySetValue(v3, @"DeviceUniqueIdentifier", v7);
  }

  v8 = MEMORY[0x1E695E4D0];
  if (*(Interface + 192))
  {
    CFDictionarySetValue(v3, @"HiddenConfiguration", *MEMORY[0x1E695E4D0]);
  }

  if (*(Interface + 240))
  {
    CFDictionarySetValue(v3, @"TrustRequired", *v8);
  }

  do
  {
    v9 = Interface;
    Interface = SCNetworkInterfaceGetInterface(Interface);
  }

  while (Interface);
  if (!CFEqual(v9, &__kSCNetworkInterfaceIPv4))
  {
    v10 = 0;
    v12 = v9 + 2;
    v11 = v9[2];
    v13 = &off_1E79BE548;
    while (!CFEqual(v11, **(v13 - 1)))
    {
      ++v10;
      v13 += 5;
      if (v10 == 19)
      {
        goto LABEL_21;
      }
    }

    if ((0x61200uLL >> v10))
    {
      goto LABEL_22;
    }

    v12 = *v13;
LABEL_21:
    CFDictionarySetValue(v3, @"Hardware", *v12);
LABEL_22:
    LocalizedDisplayName = SCNetworkInterfaceGetLocalizedDisplayName(v9);
    CFDictionarySetValue(v3, @"UserDefinedName", LocalizedDisplayName);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v3;
}

CFStringRef SCNetworkInterfaceGetLocalizedDisplayName(SCNetworkInterfaceRef interface)
{
  v5 = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!interface)
    {
LABEL_7:
      _SCErrorSet(1002);
      result = 0;
      goto LABEL_8;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!interface)
    {
      goto LABEL_7;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(interface) != v2)
  {
    goto LABEL_7;
  }

  result = *(interface + 5);
  if (!result)
  {
    result = copy_display_name(interface, 1, 0);
    *(interface + 5) = result;
  }

LABEL_8:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void __SCNetworkInterfaceSetIOInterfaceUnit(uint64_t a1, const void *a2)
{
  v57[1] = *MEMORY[0x1E69E9840];
  TypeID = CFNumberGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID)
  {
    goto LABEL_34;
  }

  BSDName = SCNetworkInterfaceGetBSDName(a1);
  v6 = *(a1 + 232);
  if (!v6)
  {
    v7 = *(a1 + 112);
    v8 = CFStringGetTypeID();
    if (v7 && CFGetTypeID(v7) == v8)
    {
      v9 = _SCNetworkInterfaceCopyPrefixFromBSDName(*(a1 + 112));
      if (v9)
      {
        v10 = v9;
        v11 = CFStringGetTypeID();
        if (CFGetTypeID(v10) == v11)
        {
          CFRetain(v10);
          v12 = *(a1 + 232);
          if (v12)
          {
            CFRelease(v12);
          }

          *(a1 + 232) = v10;
        }

        CFRelease(v10);
      }

      else
      {
        v13 = __log_SCNetworkConfiguration();
        v14 = _SC_syslog_os_log_mapping(6);
        if (__SC_log_enabled(6, v13, v14))
        {
          v15 = _os_log_pack_size();
          v23 = v57 - ((MEMORY[0x1EEE9AC00](v15, v16, v17, v18, v19, v20, v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
          v24 = *__error();
          *_os_log_pack_fill() = 0;
          __SC_log_send(6, v13, v14, v23);
        }
      }
    }

    v6 = *(a1 + 232);
    if (!v6)
    {
      v25 = 0;
      goto LABEL_19;
    }
  }

  v25 = CFStringCreateWithFormat(0, 0, @"%@%@", v6, a2);
  if (!v25)
  {
LABEL_19:
    v26 = 1;
    goto LABEL_20;
  }

  v26 = 0;
  if (!__SCNetworkInterfaceUpdateBSDName(a1, BSDName, v25))
  {
LABEL_20:
    v27 = __log_SCNetworkConfiguration();
    v28 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v27, v28))
    {
      v29 = _os_log_pack_size();
      v37 = v57 - ((MEMORY[0x1EEE9AC00](v29, v30, v31, v32, v33, v34, v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
      v38 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(6, v27, v28, v37);
    }
  }

  v39 = *(a1 + 208);
  v40 = CFStringGetTypeID();
  if (v39 && CFGetTypeID(v39) == v40)
  {
    v41 = CFStringCreateWithFormat(0, 0, @"Migrated_From: %@", v39);
    v42 = *(a1 + 208);
    if (v42)
    {
      CFRelease(v42);
    }

    *(a1 + 208) = CFRetain(v41);
    if (v41)
    {
      CFRelease(v41);
    }
  }

  else
  {
    v43 = __log_SCNetworkConfiguration();
    v44 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v43, v44))
    {
      v45 = _os_log_pack_size();
      v53 = v57 - ((MEMORY[0x1EEE9AC00](v45, v46, v47, v48, v49, v50, v51, v52) + 15) & 0xFFFFFFFFFFFFFFF0);
      v54 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(6, v43, v44, v53);
    }
  }

  CFRetain(a2);
  v55 = *(a1 + 256);
  if (v55)
  {
    CFRelease(v55);
  }

  *(a1 + 256) = a2;
  if ((v26 & 1) == 0)
  {
    CFRelease(v25);
  }

LABEL_34:
  v56 = *MEMORY[0x1E69E9840];
}

CFMutableStringRef _SCNetworkInterfaceCopyPrefixFromBSDName(const __CFString *a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  TypeID = CFStringGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID)
  {
    MutableCopy = CFStringCreateMutableCopy(0, 0, a1);
    Length = CFStringGetLength(MutableCopy);
    if (Length >= 1)
    {
      do
      {
        v5 = Length - 1;
        if (CFStringGetCharacterAtIndex(MutableCopy, Length - 1) - 48 > 9)
        {
          break;
        }

        v21.location = v5;
        v21.length = 1;
        CFStringDelete(MutableCopy, v21);
        Length = CFStringGetLength(MutableCopy);
      }

      while (Length > 0);
    }
  }

  else
  {
    v6 = __log_SCNetworkConfiguration();
    v7 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v6, v7))
    {
      v8 = _os_log_pack_size();
      v16 = v20 - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(7, v6, v7, v16);
    }

    MutableCopy = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return MutableCopy;
}

uint64_t __SCNetworkInterfaceUpdateBSDName(CFTypeRef cf, const void *a2, const void *a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_9:
      v9 = __log_SCNetworkConfiguration();
      v10 = _SC_syslog_os_log_mapping(6);
      result = __SC_log_enabled(6, v9, v10);
      if (!result)
      {
        goto LABEL_12;
      }

      v11 = _os_log_pack_size();
      v19 = v22 - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(6, v9, v10, v19);
LABEL_11:
      result = 0;
      goto LABEL_12;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!cf)
    {
      goto LABEL_9;
    }
  }

  v6 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) != v6)
  {
    goto LABEL_9;
  }

  if (CFEqual(a2, a3))
  {
    goto LABEL_11;
  }

  v7 = *(cf + 14);
  if (v7)
  {
    CFRelease(v7);
  }

  *(cf + 14) = CFRetain(a3);
  result = 1;
LABEL_12:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *__SCNetworkInterfaceCopyStorageEntity(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  BSDName = SCNetworkInterfaceGetBSDName(a1);
  TypeID = CFStringGetTypeID();
  if (BSDName)
  {
    if (CFGetTypeID(BSDName) != TypeID)
    {
      goto LABEL_29;
    }

    v4 = *MEMORY[0x1E695E4D0];
    v5 = (*(a1 + 176) ? *MEMORY[0x1E695E4D0] : *MEMORY[0x1E695E4C0]);
    v6 = *(a1 + 232);
    v7 = CFStringGetTypeID();
    if (!v6)
    {
      goto LABEL_29;
    }

    if (CFGetTypeID(v6) != v7)
    {
      goto LABEL_29;
    }

    v8 = *(a1 + 248);
    v9 = CFNumberGetTypeID();
    if (!v8)
    {
      goto LABEL_29;
    }

    if (CFGetTypeID(v8) != v9)
    {
      goto LABEL_29;
    }

    v10 = *(a1 + 256);
    v11 = CFNumberGetTypeID();
    if (!v10)
    {
      goto LABEL_29;
    }

    if (CFGetTypeID(v10) == v11 && (v12 = *(a1 + 160), v13 = CFDataGetTypeID(), v12) && CFGetTypeID(v12) == v13 && (v14 = *(a1 + 208), v15 = CFStringGetTypeID(), v14) && CFGetTypeID(v14) == v15 && (v16 = _SCNetworkInterfaceCopyInterfaceInfo(a1), v17 = CFDictionaryGetTypeID(), v16))
    {
      cf = v16;
      if (CFGetTypeID(v16) == v17 && (InterfaceType = SCNetworkInterfaceGetInterfaceType(a1), v26 = CFStringGetTypeID(), InterfaceType) && (v25 = v14, v19 = BSDName, CFGetTypeID(InterfaceType) == v26))
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        BSDName = Mutable;
        if (*(a1 + 24))
        {
          CFDictionaryAddValue(Mutable, @"Active", v4);
        }

        CFDictionaryAddValue(BSDName, @"BSD Name", v19);
        if (*(a1 + 192))
        {
          CFDictionaryAddValue(BSDName, @"HiddenConfiguration", v4);
        }

        if (*(a1 + 193))
        {
          CFDictionaryAddValue(BSDName, @"HiddenInterface", v4);
        }

        CFDictionaryAddValue(BSDName, @"IOBuiltin", v5);
        CFDictionaryAddValue(BSDName, @"IOInterfaceNamePrefix", v6);
        CFDictionaryAddValue(BSDName, @"IOInterfaceType", v8);
        CFDictionaryAddValue(BSDName, @"IOInterfaceUnit", v10);
        CFDictionaryAddValue(BSDName, @"IOMACAddress", v12);
        CFDictionaryAddValue(BSDName, @"IOPathMatch", v25);
        CFDictionaryAddValue(BSDName, @"SCNetworkInterfaceInfo", cf);
        CFDictionaryAddValue(BSDName, @"SCNetworkInterfaceType", InterfaceType);
        v21 = *(a1 + 304);
        v22 = CFArrayGetTypeID();
        if (v21 && CFGetTypeID(v21) == v22)
        {
          CFDictionaryAddValue(BSDName, @"MatchingMACs", *(a1 + 304));
        }
      }

      else
      {
        BSDName = 0;
      }

      CFRelease(cf);
    }

    else
    {
LABEL_29:
      BSDName = 0;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return BSDName;
}

uint64_t _SCNetworkInterfaceGetIOInterfaceNamePrefix(uint64_t a1)
{
  result = *(a1 + 232);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _SCNetworkInterfaceGetIOInterfaceType(uint64_t a1)
{
  result = *(a1 + 248);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _SCNetworkInterfaceGetIOInterfaceUnit(uint64_t a1)
{
  result = *(a1 + 256);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _SCNetworkInterfaceGetHardwareAddress(uint64_t a1)
{
  result = *(a1 + 160);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _SCNetworkInterfaceGetIOPath(uint64_t a1)
{
  result = *(a1 + 208);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

__CFDictionary *_SCNetworkInterfaceCopyInterfaceInfo(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_14;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  NonLocalizedDisplayName = __SCNetworkInterfaceGetNonLocalizedDisplayName(a1);
  if (NonLocalizedDisplayName)
  {
    CFDictionaryAddValue(Mutable, @"UserDefinedName", NonLocalizedDisplayName);
  }

  v4 = *(a1 + 288);
  if (v4 || *(a1 + 296))
  {
    if (*(a1 + 280))
    {
      CFDictionaryAddValue(Mutable, @"kUSBProductString", *(a1 + 280));
      v4 = *(a1 + 288);
    }

    if (v4)
    {
      CFDictionaryAddValue(Mutable, @"idVendor", v4);
    }

    v5 = *(a1 + 296);
    if (v5)
    {
      CFDictionaryAddValue(Mutable, @"idProduct", v5);
    }
  }

  if (!CFDictionaryGetCount(Mutable))
  {
    CFRelease(Mutable);
LABEL_14:
    Mutable = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t matchesName(__CFBundle *a1, const __CFString *a2, const __CFString *a3, int a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = copy_interface_string(a1, a3, a4);
  if (v5)
  {
    v6 = v5;
    v7 = CFEqual(a2, v5);
    if (!v7)
    {
      if (CFStringHasSuffix(v6, @" %@"))
      {
        Length = CFStringGetLength(a2);
        do
        {
          v9 = Length;
          if (Length < 3)
          {
            break;
          }

          --Length;
        }

        while (CFStringGetCharacterAtIndex(a2, v9 - 1) - 58 > 0xFFFFFFF5);
        v15.location = 0;
        v15.length = v9;
        v10 = CFStringCreateWithSubstring(0, a2, v15);
        v16.length = CFStringGetLength(v6) - 2;
        v16.location = 0;
        v11 = CFStringCreateWithSubstring(0, v6, v16);
        v7 = CFEqual(v10, v11);
        CFRelease(v10);
        CFRelease(v11);
      }

      else
      {
        v7 = 0;
      }
    }

    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

void _SCNetworkInterfaceCacheOpen()
{
  v29[1] = *MEMORY[0x1E69E9840];
  v0 = __SCGetThreadSpecificData();
  v1 = v0[1];
  if (v1)
  {
    CFRetain(v1);
    v2 = __log_SCNetworkConfiguration();
    v3 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v2, v3))
    {
      v4 = _os_log_pack_size();
      v12 = v29 - ((MEMORY[0x1EEE9AC00](v4, v5, v6, v7, v8, v9, v10, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = *__error();
      v14 = _os_log_pack_fill();
      v15 = v0[1];
      v16 = CFGetRetainCount(v15);
      *v14 = 134218240;
      *(v14 + 4) = v15;
      *(v14 + 12) = 2048;
      *(v14 + 14) = v16;
LABEL_6:
      __SC_log_send(7, v2, v3, v12);
    }
  }

  else
  {
    v0[1] = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v2 = __log_SCNetworkConfiguration();
    v3 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v2, v3))
    {
      v17 = _os_log_pack_size();
      v12 = v29 - ((MEMORY[0x1EEE9AC00](v17, v18, v19, v20, v21, v22, v23, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
      v25 = *__error();
      v26 = _os_log_pack_fill();
      v27 = v0[1];
      *v26 = 134217984;
      *(v26 + 4) = v27;
      goto LABEL_6;
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

void _SCNetworkInterfaceCacheClose()
{
  v31[1] = *MEMORY[0x1E69E9840];
  v0 = __SCGetThreadSpecificData();
  v1 = v0[1];
  if (v1)
  {
    v2 = CFGetRetainCount(v1);
    CFRelease(v0[1]);
    v3 = __log_SCNetworkConfiguration();
    v4 = _SC_syslog_os_log_mapping(7);
    v5 = __SC_log_enabled(7, v3, v4);
    if (v2 < 2)
    {
      if (v5)
      {
        v18 = _os_log_pack_size();
        v26 = v31 - ((MEMORY[0x1EEE9AC00](v18, v19, v20, v21, v22, v23, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
        v27 = *__error();
        v28 = _os_log_pack_fill();
        v29 = v0[1];
        *v28 = 134217984;
        *(v28 + 4) = v29;
        __SC_log_send(7, v3, v4, v26);
      }

      v0[1] = 0;
    }

    else if (v5)
    {
      v6 = _os_log_pack_size();
      v14 = v31 - ((MEMORY[0x1EEE9AC00](v6, v7, v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = *__error();
      v16 = _os_log_pack_fill();
      v17 = v0[1];
      *v16 = 134218240;
      *(v16 + 4) = v17;
      *(v16 + 12) = 2048;
      *(v16 + 14) = v2;
      __SC_log_send(7, v3, v4, v14);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

CFTypeRef __SCNetworkInterfaceCreateCopy(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized != -1)
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
  }

  if (a2 == &__kSCNetworkInterfaceIPv4)
  {
    v40 = *MEMORY[0x1E69E9840];

    return CFRetain(&__kSCNetworkInterfaceIPv4);
  }

  else
  {
    Private = __SCNetworkInterfaceCreatePrivate(0, 0, a3, a4);
    *(Private + 16) = *(a2 + 16);
    if (*(a2 + 72))
    {
      *(Private + 72) = __SCNetworkInterfaceCreateCopy();
    }

    v8 = *(a2 + 32);
    if (v8)
    {
      *(Private + 32) = CFRetain(v8);
    }

    v9 = *(a2 + 232);
    if (v9)
    {
      *(Private + 232) = CFRetain(v9);
    }

    v10 = *(a2 + 40);
    if (v10)
    {
      *(Private + 40) = CFRetain(v10);
    }

    v11 = *(a2 + 56);
    *(Private + 48) = *(a2 + 48);
    if (v11)
    {
      *(Private + 56) = CFRetain(v11);
    }

    v12 = *(a2 + 64);
    if (v12)
    {
      *(Private + 64) = CFRetain(v12);
    }

    v13 = *(a2 + 104);
    if (v13)
    {
      *(Private + 104) = CFDictionaryCreateMutableCopy(0, 0, v13);
    }

    v14 = *(a2 + 112);
    if (v14)
    {
      *(Private + 112) = CFRetain(v14);
    }

    v15 = *(a2 + 120);
    if (v15)
    {
      *(Private + 120) = CFRetain(v15);
    }

    *(Private + 128) = *(a2 + 128);
    v16 = *(a2 + 144);
    if (v16)
    {
      *(Private + 144) = CFArrayCreateMutableCopy(0, 0, v16);
    }

    v17 = *(a2 + 152);
    if (v17)
    {
      *(Private + 152) = CFArrayCreateMutableCopy(0, 0, v17);
    }

    v18 = *(a2 + 160);
    if (v18)
    {
      *(Private + 160) = CFRetain(v18);
    }

    *(Private + 176) = *(a2 + 176);
    v19 = *(a2 + 184);
    if (v19)
    {
      *(Private + 184) = CFRetain(v19);
    }

    *(Private + 192) = *(a2 + 192);
    *(Private + 240) = *(a2 + 240);
    v20 = *(a2 + 200);
    if (v20)
    {
      *(Private + 200) = CFRetain(v20);
    }

    v21 = *(a2 + 208);
    if (v21)
    {
      *(Private + 208) = CFRetain(v21);
    }

    v22 = *(a2 + 224);
    *(Private + 216) = *(a2 + 216);
    if (v22)
    {
      *(Private + 224) = CFDictionaryCreateMutableCopy(0, 0, v22);
    }

    v23 = *(a2 + 248);
    if (v23)
    {
      *(Private + 248) = CFRetain(v23);
    }

    v24 = *(a2 + 256);
    if (v24)
    {
      *(Private + 256) = CFRetain(v24);
    }

    v25 = *(a2 + 264);
    if (v25)
    {
      *(Private + 264) = CFRetain(v25);
    }

    v26 = *(a2 + 272);
    if (v26)
    {
      *(Private + 272) = CFRetain(v26);
    }

    v27 = *(a2 + 280);
    if (v27)
    {
      *(Private + 280) = CFRetain(v27);
    }

    v28 = *(a2 + 288);
    if (v28)
    {
      *(Private + 288) = CFRetain(v28);
    }

    v29 = *(a2 + 296);
    if (v29)
    {
      *(Private + 296) = CFRetain(v29);
    }

    *(Private + 312) = *(a2 + 312);
    *(Private + 316) = *(a2 + 316);
    v30 = *(a2 + 320);
    if (v30)
    {
      *(Private + 320) = CFRetain(v30);
    }

    v31 = *(a2 + 328);
    if (v31)
    {
      *(Private + 328) = CFRetain(v31);
    }

    v32 = *(a2 + 336);
    if (v32)
    {
      *(Private + 336) = CFRetain(v32);
    }

    *(Private + 344) = *(a2 + 344);
    v33 = *(a2 + 352);
    if (v33)
    {
      *(Private + 352) = CFRetain(v33);
    }

    v34 = *(a2 + 360);
    if (v34)
    {
      *(Private + 360) = CFRetain(v34);
    }

    *(Private + 368) = *(a2 + 368);
    v35 = *(a2 + 376);
    if (v35)
    {
      *(Private + 376) = CFRetain(v35);
    }

    v36 = *(a2 + 384);
    if (v36)
    {
      *(Private + 384) = CFRetain(v36);
    }

    v37 = *(a2 + 392);
    if (v37)
    {
      *(Private + 392) = CFRetain(v37);
    }

    v38 = *MEMORY[0x1E69E9840];
    return Private;
  }
}

uint64_t processSerialInterface(uint64_t a1, io_registry_entry_t entry, const __CFDictionary *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = IORegistryEntrySearchCFProperty(entry, "IOService", @"Initializing", 0, 3u);
  if (v6)
  {
    v7 = v6;
    TypeID = CFBooleanGetTypeID();
    if (CFGetTypeID(v7) == TypeID)
    {
      Value = CFBooleanGetValue(v7);
      CFRelease(v7);
      if (Value)
      {
LABEL_18:
        v22 = 0;
        goto LABEL_41;
      }
    }

    else
    {
      CFRelease(v7);
    }
  }

  v10 = IORegistryEntrySearchCFProperty(entry, "IOService", @"WWAN", 0, 3u);
  if (v10)
  {
    v11 = v10;
    v12 = CFBooleanGetTypeID();
    v13 = CFGetTypeID(v11) != v12 || CFBooleanGetValue(v11) == 0;
    CFRelease(v11);
  }

  else
  {
    v13 = 1;
  }

  v14 = CFDictionaryGetValue(a3, @"IOTTYDevice");
  v15 = IOCopyCFStringValue(v14);
  *(a1 + 112) = v15;
  if (!v15)
  {
    goto LABEL_18;
  }

  v16 = CFDictionaryGetValue(a3, @"IOTTYBaseName");
  v17 = IOCopyCFStringValue(v16);
  if (!v17)
  {
    v17 = CFRetain(*(a1 + 112));
  }

  Length = CFStringGetLength(@"bluetooth");
  v19 = CFStringGetTypeID();
  if (!v17)
  {
    CFDataGetTypeID();
    goto LABEL_28;
  }

  if (CFGetTypeID(v17) == v19)
  {
    v20 = 0;
    v21 = v17;
    goto LABEL_22;
  }

  v23 = CFDataGetTypeID();
  if (CFGetTypeID(v17) != v23 || (BytePtr = CFDataGetBytePtr(v17), v21 = CFStringCreateWithCStringNoCopy(0, BytePtr, 0x8000100u, *MEMORY[0x1E695E498]), (v20 = v21) == 0))
  {
LABEL_28:
    v26 = @"Modem";
    if (v13)
    {
      v27 = 2;
    }

    else
    {
      v26 = @"WWAN";
      v27 = 4;
    }

    *(a1 + 16) = v26;
    *(a1 + 312) = v27;
LABEL_32:
    *(a1 + 128) = @"Modem";
    v28 = CFDictionaryGetValue(a3, @"IOSerialBSDClientType");
    v29 = CFStringGetTypeID();
    if (v28 && CFGetTypeID(v28) == v29 && CFEqual(v28, @"IOSerialStream"))
    {
      if (CFEqual(v17, @"modem"))
      {
        v30 = 0;
        *(a1 + 176) = 1;
      }

      else
      {
        if (!CFEqual(v17, @"usbmodem"))
        {
          goto LABEL_47;
        }

        v30 = 1;
      }

      *(a1 + 312) = v30;
LABEL_47:
      merge_override(a1, entry, @"PPP");
      merge_override(a1, entry, @"Modem");
      v34 = *(a1 + 224);
      if (!v34)
      {
        goto LABEL_56;
      }

      v35 = CFDictionaryGetValue(v34, @"Modem");
      if (!v35)
      {
        goto LABEL_56;
      }

      v36 = v35;
      v37 = CFDictionaryGetValue(v35, @"ConnectionScript");
      v38 = CFStringGetTypeID();
      if (v37)
      {
        v39 = CFGetTypeID(v37) != v38;
      }

      else
      {
        v39 = 1;
      }

      v40 = CFDictionaryGetValue(v36, @"UniqueIdentifier");
      v41 = CFStringGetTypeID();
      if (v40 && CFGetTypeID(v40) == v41)
      {
        CFRelease(*(a1 + 112));
        *(a1 + 112) = CFRetain(v17);
        *(a1 + 120) = CFStringCreateCopy(0, v40);
      }

      if (v39)
      {
LABEL_56:
        v42 = IORegistryEntrySearchCFProperty(entry, "IOService", @"ModemCCL", 0, 3u);
        if (v42)
        {
          v43 = v42;
          v44 = IOCopyCFStringValue(v42);
          LOBYTE(v39) = v44 == 0;
          if (v44)
          {
            v45 = v44;
            set_connection_script(a1, v44);
            CFRelease(v45);
          }

          CFRelease(v43);
        }

        else
        {
          LOBYTE(v39) = 1;
        }
      }

      if (CFEqual(*(a1 + 16), @"Bluetooth"))
      {
        *(a1 + 48) = @"bluetooth";
        goto LABEL_80;
      }

      MutableCopy = CFStringCreateMutableCopy(0, 0, v17);
      CFStringLowercase(MutableCopy, 0);
      if (bundle)
      {
        v47 = copy_interface_string(bundle, MutableCopy, 0);
        if (v47)
        {
          v48 = v47;
          if (!CFEqual(MutableCopy, v47))
          {
LABEL_68:
            *(a1 + 32) = v48;
            if (bundle)
            {
              v49 = copy_interface_string(bundle, MutableCopy, 1);
              if (v49)
              {
                Copy = v49;
                if (!CFEqual(MutableCopy, v49))
                {
LABEL_73:
                  *(a1 + 40) = Copy;
                  if (!CFEqual(v17, @"modem"))
                  {
                    processUSBInterface(a1, entry);
                    updated = update_interface_name(a1, entry, 1);
                    v52 = !v39;
                    if (!updated)
                    {
                      v52 = 1;
                    }

                    if ((v52 & 1) == 0 && is_valid_connection_script(*(a1 + 32)))
                    {
                      set_connection_script(a1, *(a1 + 32));
                    }
                  }

                  CFRelease(MutableCopy);
LABEL_80:
                  v22 = 1;
                  if (!v17)
                  {
                    goto LABEL_41;
                  }

                  goto LABEL_40;
                }

                CFRelease(Copy);
              }
            }

            Copy = CFStringCreateCopy(0, v17);
            goto LABEL_73;
          }

          CFRelease(v48);
        }
      }

      v48 = CFStringCreateCopy(0, v17);
      goto LABEL_68;
    }

    goto LABEL_38;
  }

LABEL_22:
  if (CFStringGetLength(v21) >= Length)
  {
    v55.location = 0;
    v55.length = Length;
    v25 = CFStringCompareWithOptions(v21, @"bluetooth", v55, 1uLL) != kCFCompareEqualTo;
    if (!v20)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v25 = 1;
  if (v20)
  {
LABEL_26:
    CFRelease(v20);
  }

LABEL_27:
  if (v25)
  {
    goto LABEL_28;
  }

  v53 = 0;
  *(a1 + 16) = @"Bluetooth";
  *(a1 + 312) = 3;
  *(a1 + 176) = isBluetoothBuiltin(&v53);
  if (v53)
  {
    goto LABEL_32;
  }

LABEL_38:
  v31 = *(a1 + 112);
  if (!v31)
  {
    v22 = 0;
    if (!v17)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  CFRelease(v31);
  v22 = 0;
  *(a1 + 112) = 0;
  if (v17)
  {
LABEL_40:
    CFRelease(v17);
  }

LABEL_41:
  v32 = *MEMORY[0x1E69E9840];
  return v22;
}

SCNetworkInterfaceRef SCNetworkInterfaceCreateWithInterface(SCNetworkInterfaceRef interface, CFStringRef interfaceType)
{
  v31 = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!interface)
    {
LABEL_7:
      _SCErrorSet(1002);
      Private = 0;
      goto LABEL_8;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!interface)
    {
      goto LABEL_7;
    }
  }

  v4 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(interface) != v4)
  {
    goto LABEL_7;
  }

  TypeID = CFStringGetTypeID();
  if (!interfaceType || CFGetTypeID(interfaceType) != TypeID || CFEqual(interface, &__kSCNetworkInterfaceLoopback))
  {
    goto LABEL_7;
  }

  v9 = 0;
  v10 = *(interface + 2);
  v11 = configurations;
  while (!CFEqual(v10, **v11))
  {
    ++v9;
    v11 += 5;
    if (v9 == 19)
    {
      v9 = -1;
      break;
    }
  }

  Private = __SCNetworkInterfaceCreatePrivate(0, interface, *(interface + 10), *(interface + 12));
  if (!Private)
  {
    _SCErrorSet(1001);
    goto LABEL_8;
  }

  if (CFEqual(interfaceType, @"PPP"))
  {
    *(Private + 16) = @"PPP";
    *(Private + 128) = @"PPP";
    if (v9 == -1)
    {
      v12 = (interface + 128);
      goto LABEL_23;
    }

    if (((0x6895DuLL >> v9) & 1) == 0)
    {
      v12 = configurations[5 * v9 + 3];
LABEL_23:
      *(Private + 136) = *v12;
      v14 = *(interface + 14);
      if (v14)
      {
        *(Private + 112) = CFStringCreateCopy(0, v14);
      }

      v15 = *(interface + 15);
      if (v15)
      {
        *(Private + 120) = CFStringCreateCopy(0, v15);
      }

      goto LABEL_32;
    }

    goto LABEL_52;
  }

  if (!CFEqual(interfaceType, @"L2TP"))
  {
    if (CFEqual(interfaceType, @"PPTP"))
    {
      if (v9 == 18)
      {
        *(Private + 16) = @"PPTP";
        *(Private + 48) = @"pptp";
        v13 = &kSCEntNetPPTP;
        goto LABEL_30;
      }
    }

    else if (CFEqual(interfaceType, @"6to4"))
    {
      if (v9 == 18)
      {
        *(Private + 16) = @"6to4";
        *(Private + 48) = @"6to4";
        *(Private + 128) = @"6to4";
        *(Private + 112) = CFRetain(@"stf0");
        goto LABEL_32;
      }
    }

    else if (CFEqual(interfaceType, @"IPSec"))
    {
      if (v9 == 18)
      {
        *(Private + 16) = @"IPSec";
        *(Private + 48) = @"ipsec";
        v13 = &kSCValNetInterfaceTypeIPSec;
        goto LABEL_30;
      }
    }

    else if (CFEqual(interfaceType, @"VPN"))
    {
      if (v9 == -1)
      {
        *(Private + 16) = @"VPN";
        *(Private + 48) = @"vpn";
        *(Private + 56) = CFRetain(*(interface + 16));
        *(Private + 128) = @"VPN";
        v22 = *(interface + 16);
        *(Private + 136) = v22;
        v23 = *(interface + 14);
        if (v23)
        {
          *(Private + 112) = CFStringCreateCopy(0, v23);
          v22 = *(Private + 136);
        }

        if (v22)
        {
          if (CFEqual(v22, @"com.cisco.anyconnect.applevpn.plugin"))
          {
            v24 = @"com.cisco.Cisco-AnyConnect.vpnplugin";
          }

          else if (CFEqual(*(Private + 136), @"net.juniper.sslvpn"))
          {
            v24 = @"net.juniper.Junos-Pulse.vpnplugin";
          }

          else
          {
            v24 = v22;
          }

          ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v24, @".");
          Count = CFArrayGetCount(ArrayBySeparatingStrings);
          if (Count >= 4)
          {
            v27 = Count;
            ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, Count - 1);
            if (CFEqual(ValueAtIndex, @"vpnplugin"))
            {
              v29 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, v27 - 2);
              MutableCopy = CFStringCreateMutableCopy(0, 0, v29);
              v32.length = CFStringGetLength(MutableCopy);
              v32.location = 0;
              CFStringFindAndReplace(MutableCopy, @"-", @" ", v32, 0);
              *(Private + 40) = MutableCopy;
            }
          }

          CFRelease(ArrayBySeparatingStrings);
        }

        goto LABEL_32;
      }
    }

    else
    {
      if (CFStringFind(interfaceType, @".", 0).location != -1)
      {
        pthread_mutex_lock(&lock_1);
        Mutable = vendor_interface_types;
        if (!vendor_interface_types)
        {
          Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
          vendor_interface_types = Mutable;
        }

        CFSetAddValue(Mutable, interfaceType);
        *(Private + 16) = CFSetGetValue(vendor_interface_types, interfaceType);
        pthread_mutex_unlock(&lock_1);
        v16 = *(Private + 16);
        goto LABEL_31;
      }

      if (CFEqual(interfaceType, @"AppleVPN"))
      {
        *(Private + 16) = @"AppleVPN";
        *(Private + 128) = @"AppleVPN";
        goto LABEL_32;
      }
    }

LABEL_52:
    CFRelease(Private);
    goto LABEL_7;
  }

  if (v9 != 18)
  {
    goto LABEL_52;
  }

  *(Private + 16) = @"L2TP";
  *(Private + 48) = @"l2tp";
  v13 = &kSCEntNetL2TP;
LABEL_30:
  v16 = *v13;
LABEL_31:
  *(Private + 128) = v16;
LABEL_32:
  *(Private + 192) = *(interface + 96);
  *(Private + 240) = *(interface + 240);
  v17 = *(interface + 28);
  if (v17)
  {
    *(Private + 224) = CFDictionaryCreateMutableCopy(0, 0, v17);
  }

  v18 = *(Private + 136);
  if (v18 && CFEqual(v18, @"PPPoE"))
  {
    v19 = *(interface + 2);
    if (v19 && CFEqual(v19, @"IEEE80211"))
    {
      v20 = 6;
    }

    else
    {
      v20 = 5;
    }
  }

  else
  {
    v20 = *(interface + 78);
  }

  *(Private + 312) = v20;
LABEL_8:
  v7 = *MEMORY[0x1E69E9840];
  return Private;
}

const __SCNetworkInterface *findBridgeInterface(const __SCPreferences *a1, const void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1 && (v3 = SCBridgeInterfaceCopyAll(a1)) != 0)
  {
    v4 = v3;
    Interface = findInterface(v3, a2);
    CFRelease(v4);
    v6 = *MEMORY[0x1E69E9840];
    return Interface;
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

const __SCNetworkInterface *findVLANInterface(const __SCPreferences *a1, const void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1 && (v3 = SCVLANInterfaceCopyAll(a1)) != 0)
  {
    v4 = v3;
    Interface = findInterface(v3, a2);
    CFRelease(v4);
    v6 = *MEMORY[0x1E69E9840];
    return Interface;
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

CFStringRef __SCNetworkInterfaceGetNonLocalizedDisplayName(CFStringRef *cf)
{
  v5 = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_7:
      _SCErrorSet(1002);
      result = 0;
      goto LABEL_8;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!cf)
    {
      goto LABEL_7;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_7;
  }

  result = cf[4];
  if (!result)
  {
    result = copy_display_name(cf, 0, 0);
    cf[4] = result;
  }

LABEL_8:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeRef __SCNetworkInterfaceSetService(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 80);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 80) = 0;
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 96) = 0;
  }

  v6 = *(a2 + 32);
  if (v6)
  {
    *(a1 + 80) = CFRetain(v6);
  }

  result = *(a2 + 16);
  if (result)
  {
    result = CFRetain(result);
    *(a1 + 96) = result;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

__CFArray *__SCNetworkInterfaceCopyAll_IONetworkInterface(int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = IOServiceMatching("IONetworkInterface");
  MatchingInterfaces = findMatchingInterfaces(v2, processNetworkInterface, @"HiddenInterface", 0, a1);
  CFRelease(v2);
  v4 = *MEMORY[0x1E69E9840];
  return MatchingInterfaces;
}

__CFArray *_SCNetworkInterfaceCopyAllWithPreferences(const __SCPreferences *a1)
{
  keys[2] = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized != -1)
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
  }

  if (__wait_for_IOKit_to_quiesce_iokit_quiet != -1)
  {
    _SCNetworkInterfaceCopyAllWithPreferences_cold_2();
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v3 = __SCNetworkInterfaceCopyAll_IONetworkInterface(0);
  if (v3)
  {
    v4 = v3;
    add_interfaces(Mutable, v3);
    CFRelease(v4);
  }

  keys[0] = @"IOProviderClass";
  keys[1] = @"IOSerialBSDClientType";
  values[0] = @"IOSerialBSDClient";
  values[1] = @"IOSerialStream";
  v5 = CFDictionaryCreate(0, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  MatchingInterfaces = findMatchingInterfaces(v5, processSerialInterface, @"HiddenPort", 0, 0);
  CFRelease(v5);
  if (MatchingInterfaces)
  {
    add_interfaces(Mutable, MatchingInterfaces);
    CFRelease(MatchingInterfaces);
  }

  v7 = a1;
  if (a1 || (v7 = SCPreferencesCreate(0, @"SCNetworkInterfaceCopyAll", 0)) != 0)
  {
    v8 = SCBridgeInterfaceCopyAll(v7);
    if (v8)
    {
      v9 = v8;
      add_interfaces(Mutable, v8);
      CFRelease(v9);
    }

    v10 = SCVLANInterfaceCopyAll(v7);
    if (v10)
    {
      v11 = v10;
      add_interfaces(Mutable, v10);
      CFRelease(v11);
    }

    if (!a1)
    {
      CFRelease(v7);
    }
  }

  Count = CFArrayGetCount(Mutable);
  if (Count >= 2)
  {
    v17.length = Count;
    v17.location = 0;
    CFArraySortValues(Mutable, v17, _SCNetworkInterfaceCompare, 0);
  }

  v13 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void add_interfaces(__CFArray *a1, CFArrayRef theArray)
{
  v9 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v5 = Count;
    for (i = 0; i != v5; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      if (SCNetworkInterfaceGetBSDName(ValueAtIndex))
      {
        CFArrayAppendValue(a1, ValueAtIndex);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

CFArrayRef SCNetworkInterfaceCopyAll(void)
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return _SCNetworkInterfaceCopyAllWithPreferences(0);
}

CFArrayRef SCNetworkInterfaceGetSupportedInterfaceTypes(SCNetworkInterfaceRef interface)
{
  v12 = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!interface)
    {
LABEL_21:
      _SCErrorSet(1002);
      result = 0;
      goto LABEL_22;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!interface)
    {
      goto LABEL_21;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(interface) != v2)
  {
    goto LABEL_21;
  }

  if (!*(interface + 18))
  {
    v4 = 0;
    v5 = *(interface + 2);
    v6 = configurations;
    while (!CFEqual(v5, **v6))
    {
      --v4;
      v6 += 5;
      if (v4 == -19)
      {
        v7 = SCNetworkInterfaceGetInterface(interface);
        if (v7 && CFEqual(v7, &__kSCNetworkInterfaceIPv4))
        {
          Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
          *(interface + 18) = Mutable;
          v9 = @"VPN";
LABEL_19:
          CFArrayAppendValue(Mutable, v9);
          goto LABEL_5;
        }

        goto LABEL_5;
      }
    }

    if (((0x2C95DuLL >> -v4) & 1) == 0)
    {
      v10 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      *(interface + 18) = v10;
      if (v4 == -18)
      {
        CFArrayAppendValue(v10, @"6to4");
        CFArrayAppendValue(*(interface + 18), @"L2TP");
      }

      if (((0x6C95DuLL >> -v4) & 1) == 0)
      {
        CFArrayAppendValue(*(interface + 18), @"PPP");
      }

      if (v4 == -18)
      {
        Mutable = *(interface + 18);
        v9 = @"IPSec";
        goto LABEL_19;
      }
    }
  }

LABEL_5:
  result = *(interface + 18);
LABEL_22:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

CFArrayRef SCNetworkInterfaceGetSupportedProtocolTypes(SCNetworkInterfaceRef interface)
{
  v9 = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!interface)
    {
LABEL_18:
      _SCErrorSet(1002);
      result = 0;
      goto LABEL_19;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!interface)
    {
      goto LABEL_18;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(interface) != v2)
  {
    goto LABEL_18;
  }

  if (!*(interface + 19))
  {
    v3 = 0;
    v4 = *(interface + 2);
    v5 = configurations;
    while (!CFEqual(v4, **v5))
    {
      ++v3;
      v5 += 5;
      if (v3 == 19)
      {
        goto LABEL_16;
      }
    }

    if (((0x53612uLL >> v3) & 1) == 0)
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      *(interface + 19) = Mutable;
      if (((0x73613uLL >> v3) & 1) == 0)
      {
        CFArrayAppendValue(Mutable, @"DNS");
        Mutable = *(interface + 19);
      }

      if (((0x53613uLL >> v3) & 1) == 0)
      {
        CFArrayAppendValue(Mutable, @"IPv4");
        Mutable = *(interface + 19);
      }

      CFArrayAppendValue(Mutable, @"IPv6");
      if (((0x73613uLL >> v3) & 1) == 0)
      {
        CFArrayAppendValue(*(interface + 19), @"Proxies");
      }
    }
  }

LABEL_16:
  result = *(interface + 19);
LABEL_19:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

CFDictionaryRef __SCNetworkInterfaceGetDefaultConfiguration(const __SCNetworkSet *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized != -1)
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
  }

  DefaultConfigurationType = __SCNetworkInterfaceGetDefaultConfigurationType(a2);
  Value = 0;
  if (a1)
  {
    v6 = DefaultConfigurationType;
    if (DefaultConfigurationType)
    {
      SetID = SCNetworkSetGetSetID(a1);
      SetNetworkInterfaceEntity = SCPreferencesPathKeyCreateSetNetworkInterfaceEntity(0, SetID, *(a2 + 112), v6);
      if (SetNetworkInterfaceEntity)
      {
        v9 = SetNetworkInterfaceEntity;
        Value = __SCNetworkConfigurationGetValue(*(a2 + 80), SetNetworkInterfaceEntity);
        CFRelease(v9);
        if (Value)
        {
          TypeID = CFDictionaryGetTypeID();
LABEL_8:
          if (CFGetTypeID(Value) == TypeID && !CFDictionaryGetCount(Value))
          {
            Value = 0;
          }

          goto LABEL_18;
        }

        v11 = *(a2 + 104);
        if (v11)
        {
          v12 = CFDictionaryGetValue(v11, v6);
          if (v12 != *MEMORY[0x1E695E738])
          {
            Value = v12;
            TypeID = CFDictionaryGetTypeID();
            if (!Value)
            {
              goto LABEL_18;
            }

            goto LABEL_8;
          }
        }

        CFDictionaryGetTypeID();
      }

      Value = 0;
    }
  }

LABEL_18:
  v13 = *MEMORY[0x1E69E9840];
  return Value;
}

CFDictionaryRef SCNetworkInterfaceGetConfiguration(SCNetworkInterfaceRef interface)
{
  v11 = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!interface)
    {
LABEL_11:
      v7 = 1002;
LABEL_12:
      _SCErrorSet(v7);
      goto LABEL_13;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!interface)
    {
      goto LABEL_11;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(interface) != v2)
  {
    goto LABEL_11;
  }

  DefaultConfigurationType = __SCNetworkInterfaceGetDefaultConfigurationType(interface);
  if (!DefaultConfigurationType)
  {
LABEL_13:
    Value = 0;
    goto LABEL_14;
  }

  v4 = DefaultConfigurationType;
  Configuration = __SCNetworkInterfaceGetConfiguration(interface, DefaultConfigurationType);
  if (!Configuration)
  {
    v7 = CFEqual(v4, @"AirPort");
    if (v7)
    {
      NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(interface + 12), @"AirPort");
      Value = __SCNetworkConfigurationGetValue(*(interface + 10), NetworkServiceEntity);
      CFRelease(NetworkServiceEntity);
      if (Value)
      {
        goto LABEL_14;
      }

      v7 = 0;
    }

    goto LABEL_12;
  }

  Value = Configuration;
LABEL_14:
  v9 = *MEMORY[0x1E69E9840];
  return Value;
}

const void *__SCNetworkInterfaceGetConfiguration(uint64_t a1, const void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized != -1)
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
  }

  v4 = copyConfigurationPaths(a1, a2);
  if (v4)
  {
    v5 = v4;
    ValueAtIndex = CFArrayGetValueAtIndex(v4, 0);
    Value = __SCNetworkConfigurationGetValue(*(a1 + 80), ValueAtIndex);
    CFRelease(v5);
  }

  else
  {
    v9 = *(a1 + 104);
    if (!v9 || (Value = CFDictionaryGetValue(v9, a2), Value == *MEMORY[0x1E695E738]))
    {
      CFDictionaryGetTypeID();
      Value = 0;
      goto LABEL_13;
    }
  }

  TypeID = CFDictionaryGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID && !CFDictionaryGetCount(Value))
  {
    Value = 0;
  }

LABEL_13:
  v10 = *MEMORY[0x1E69E9840];
  return Value;
}

CFDictionaryRef SCNetworkInterfaceGetExtendedConfiguration(SCNetworkInterfaceRef interface, CFStringRef extendedType)
{
  v7 = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized != -1)
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (interface)
    {
      goto LABEL_3;
    }

LABEL_8:
    LODWORD(result) = 1002;
LABEL_9:
    _SCErrorSet(result);
    result = 0;
    goto LABEL_10;
  }

  if (!interface)
  {
    goto LABEL_8;
  }

LABEL_3:
  v4 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(interface) != v4 || !__SCNetworkInterfaceIsValidExtendedConfigurationType(interface, extendedType, 1))
  {
    goto LABEL_8;
  }

  result = __SCNetworkInterfaceGetConfiguration(interface, extendedType);
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_10:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SCNetworkInterfaceGetEntityType(uint64_t a1)
{
  result = *(a1 + 128);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SCNetworkInterfaceGetEntitySubType(uint64_t a1)
{
  result = *(a1 + 136);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef SCNetworkInterfaceGetHardwareAddressString(SCNetworkInterfaceRef interface)
{
  v13 = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!interface)
    {
LABEL_16:
      _SCErrorSet(1002);
      result = 0;
      goto LABEL_17;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!interface)
    {
      goto LABEL_16;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(interface) != v2)
  {
    goto LABEL_16;
  }

  v3 = *(interface + 20);
  if (v3 && !*(interface + 21))
  {
    BytePtr = CFDataGetBytePtr(v3);
    Length = CFDataGetLength(*(interface + 20));
    v6 = 3 * Length;
    if ((3 * Length) < 0x19)
    {
      v7 = v12;
    }

    else
    {
      v7 = MEMORY[0x1B26F3AA0](0, v6, 1217767894, 0);
    }

    if (Length)
    {
      v8 = v7;
      do
      {
        v9 = *BytePtr++;
        v8 += snprintf(v8, v6, "%2.2x:", v9);
        v6 -= 3;
      }

      while (v6);
    }

    *(interface + 21) = CFStringCreateWithCString(0, v7, 0x8000100u);
    if (v7 != v12)
    {
      CFAllocatorDeallocate(0, v7);
    }
  }

  result = *(interface + 21);
LABEL_17:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef __SCNetworkInterfaceCopyOldLocalizedDisplayName(CFTypeRef cf, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_8:
      _SCErrorSet(1002);
      v7 = *MEMORY[0x1E69E9840];
      return 0;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!cf)
    {
      goto LABEL_8;
    }
  }

  v4 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) != v4)
  {
    goto LABEL_8;
  }

  v5 = *MEMORY[0x1E69E9840];

  return copy_display_name(cf, 1, a2);
}

CFStringRef copy_display_name(uint64_t a1, int a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  Mutable = CFStringCreateMutable(0, 0);
  if (a1)
  {
    while (1)
    {
      v7 = *(a1 + 72);
      if (v7)
      {
        v8 = v7 == &__kSCNetworkInterfaceIPv4;
      }

      else
      {
        v8 = 1;
      }

      if (v8 || CFEqual(*(a1 + 16), @"VPN"))
      {
        v9 = 0;
      }

      else
      {
        v9 = *(a1 + 72);
      }

      if (!bundle)
      {
        goto LABEL_27;
      }

      v10 = *(a1 + 48);
      if (!v10)
      {
        goto LABEL_27;
      }

      if (a3)
      {
        v10 = CFStringCreateWithFormat(0, 0, @"%@-%@", a3, v10);
      }

      else
      {
        CFRetain(*(a1 + 48));
      }

      v11 = copy_interface_string(bundle, v10, a2);
      CFRelease(v10);
      if (v11)
      {
        if (a2)
        {
          localizeNumberString((a1 + 56));
          localizeNumberString((a1 + 64));
        }

        v12 = *(a1 + 56);
        if (v12)
        {
          if (*(a1 + 64))
          {
            v22 = *(a1 + 64);
          }

          CFStringAppendFormat(Mutable, 0, v11, v12, v22);
        }

        else
        {
          CFStringAppend(Mutable, v11);
        }

        CFRelease(v11);
        if (!v9)
        {
          break;
        }
      }

      else
      {
LABEL_27:
        if (*(a1 + 80))
        {
          v13 = *(a1 + 96);
          if (v13)
          {
            if (!v9)
            {
              NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, v13, @"Interface");
              Value = SCPreferencesPathGetValue(*(a1 + 80), NetworkServiceEntity);
              CFRelease(NetworkServiceEntity);
              TypeID = CFDictionaryGetTypeID();
              if (Value)
              {
                if (CFGetTypeID(Value) == TypeID)
                {
                  v17 = CFDictionaryGetValue(Value, @"UserDefinedName");
                  v18 = CFStringGetTypeID();
                  if (v17)
                  {
                    if (CFGetTypeID(v17) == v18)
                    {
                      CFStringAppend(Mutable, v17);
                      break;
                    }
                  }
                }
              }
            }
          }
        }

        CFStringAppend(Mutable, *(a1 + 16));
        if (*(a1 + 112) && !v9)
        {
          CFStringAppendFormat(Mutable, 0, @" (%@)", *(a1 + 112));
          break;
        }

        if (!v9)
        {
          break;
        }
      }

      CFStringAppend(Mutable, @" --> ");
      a1 = v9;
    }
  }

  Copy = CFStringCreateCopy(0, Mutable);
  CFRelease(Mutable);
  v20 = *MEMORY[0x1E69E9840];
  return Copy;
}

CFStringRef __SCNetworkInterfaceCopyOldNonLocalizedDisplayName(CFTypeRef cf, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_8:
      _SCErrorSet(1002);
      v7 = *MEMORY[0x1E69E9840];
      return 0;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!cf)
    {
      goto LABEL_8;
    }
  }

  v4 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) != v4)
  {
    goto LABEL_8;
  }

  v5 = *MEMORY[0x1E69E9840];

  return copy_display_name(cf, 0, a2);
}

uint64_t __SCNetworkInterfaceGetUserDefinedName(CFTypeRef cf)
{
  v5 = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_6:
      result = 0;
      goto LABEL_7;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!cf)
    {
      goto LABEL_6;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_6;
  }

  result = *(cf + 4);
LABEL_7:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

const void *__SCNetworkInterfaceGetTemplateOverrides(uint64_t a1, const void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 224);
  if (v2)
  {
    v3 = *MEMORY[0x1E69E9840];
    v4 = *MEMORY[0x1E69E9840];

    return CFDictionaryGetValue(v2, a2);
  }

  else
  {
    v6 = *MEMORY[0x1E69E9840];
    v7 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

CFTypeID SCNetworkInterfaceGetTypeID(void)
{
  v2 = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized != -1)
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
  }

  result = __kSCNetworkInterfaceTypeID;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SCNetworkInterfaceSetDefaultConfiguration(const __SCNetworkSet *a1, uint64_t a2, __CFString *a3, const void *a4, int a5)
{
  DefaultConfigurationType = a3;
  v20 = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (a3)
    {
      goto LABEL_4;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (DefaultConfigurationType)
    {
      goto LABEL_4;
    }
  }

  DefaultConfigurationType = __SCNetworkInterfaceGetDefaultConfigurationType(a2);
  if (!DefaultConfigurationType)
  {
LABEL_21:
    v14 = 0;
    goto LABEL_22;
  }

LABEL_4:
  TypeID = CFDictionaryGetTypeID();
  if (a4 && CFGetTypeID(a4) == TypeID && !CFDictionaryGetCount(a4))
  {
    a4 = 0;
  }

  if (!a1)
  {
    goto LABEL_21;
  }

  SetID = SCNetworkSetGetSetID(a1);
  SetNetworkInterfaceEntity = SCPreferencesPathKeyCreateSetNetworkInterfaceEntity(0, SetID, *(a2 + 112), DefaultConfigurationType);
  if (SetNetworkInterfaceEntity)
  {
    v13 = SetNetworkInterfaceEntity;
    v14 = __SCNetworkConfigurationSetValue(*(a2 + 80), SetNetworkInterfaceEntity, a4, 0);
    CFRelease(v13);
    if (v14)
    {
      v15 = *(a2 + 104);
      if (v15)
      {
        CFDictionaryRemoveValue(v15, DefaultConfigurationType);
        if (!CFDictionaryGetCount(*(a2 + 104)))
        {
          CFRelease(*(a2 + 104));
          *(a2 + 104) = 0;
        }
      }
    }

    goto LABEL_22;
  }

  if (!a5)
  {
    _SCErrorSet(1004);
    goto LABEL_21;
  }

  v16 = *MEMORY[0x1E695E738];
  if (!a4)
  {
    a4 = *MEMORY[0x1E695E738];
  }

  Mutable = *(a2 + 104);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(a2 + 104) = Mutable;
  }

  CFDictionarySetValue(Mutable, DefaultConfigurationType, a4);
  v14 = 1;
LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t __SCNetworkInterfaceSetConfiguration(uint64_t a1, __CFString *a2, const void *a3, uint64_t a4)
{
  DefaultConfigurationType = a2;
  v20 = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (a2)
    {
      goto LABEL_4;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (DefaultConfigurationType)
    {
      goto LABEL_4;
    }
  }

  DefaultConfigurationType = __SCNetworkInterfaceGetDefaultConfigurationType(a1);
  if (!DefaultConfigurationType)
  {
    a4 = 0;
    goto LABEL_26;
  }

LABEL_4:
  TypeID = CFDictionaryGetTypeID();
  if (a3 && CFGetTypeID(a3) == TypeID && !CFDictionaryGetCount(a3))
  {
    a3 = 0;
  }

  v9 = copyConfigurationPaths(a1, DefaultConfigurationType);
  if (v9)
  {
    v10 = v9;
    Count = CFArrayGetCount(v9);
    if (Count < 1)
    {
      a4 = 0;
    }

    else
    {
      v12 = Count;
      v13 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v10, v13);
        a4 = __SCNetworkConfigurationSetValue(*(a1 + 80), ValueAtIndex, a3, 0);
        if (!a4)
        {
          break;
        }

        if (v12 == ++v13)
        {
          v15 = *(a1 + 104);
          if (v15)
          {
            CFDictionaryRemoveValue(v15, DefaultConfigurationType);
            if (!CFDictionaryGetCount(*(a1 + 104)))
            {
              CFRelease(*(a1 + 104));
              *(a1 + 104) = 0;
            }
          }

          break;
        }
      }
    }

    CFRelease(v10);
  }

  else if (a4)
  {
    v16 = *MEMORY[0x1E695E738];
    if (!a3)
    {
      a3 = *MEMORY[0x1E695E738];
    }

    Mutable = *(a1 + 104);
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *(a1 + 104) = Mutable;
    }

    CFDictionarySetValue(Mutable, DefaultConfigurationType, a3);
    a4 = 1;
  }

  else
  {
    _SCErrorSet(1004);
  }

LABEL_26:
  v18 = *MEMORY[0x1E69E9840];
  return a4;
}

__CFArray *copyConfigurationPaths(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  v6 = configurations;
  while (!CFEqual(v5, **v6))
  {
    ++v4;
    v6 += 5;
    if (v4 == 19)
    {
      v7 = *(a1 + 96);
      goto LABEL_10;
    }
  }

  v7 = *(a1 + 96);
  if ((0x5BF13uLL >> v4))
  {
LABEL_10:
    NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, v7, a2);
    v13[0] = NetworkServiceEntity;
    v11 = CFArrayCreate(0, v13, 1, MEMORY[0x1E695E9C0]);
    CFRelease(NetworkServiceEntity);
LABEL_11:
    v12 = *MEMORY[0x1E69E9840];
    return v11;
  }

  if (!v7)
  {
    v11 = 0;
    goto LABEL_11;
  }

  v8 = *MEMORY[0x1E69E9840];

  return copyPerInterfaceConfigurationPaths(a1, a2);
}

Boolean SCNetworkInterfaceSetConfiguration(SCNetworkInterfaceRef interface, CFDictionaryRef config)
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!interface)
    {
LABEL_11:
      _SCErrorSet(1002);
      goto LABEL_12;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!interface)
    {
      goto LABEL_11;
    }
  }

  v4 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(interface) != v4)
  {
    goto LABEL_11;
  }

  DefaultConfigurationType = __SCNetworkInterfaceGetDefaultConfigurationType(interface);
  if (!DefaultConfigurationType)
  {
LABEL_12:
    LOBYTE(v6) = 0;
    goto LABEL_13;
  }

  v6 = __SCNetworkInterfaceSetConfiguration(interface, DefaultConfigurationType, config, 0);
  if (v6)
  {
    v7 = __log_SCNetworkConfiguration();
    v8 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v7, v8))
    {
      v9 = _os_log_pack_size();
      v17 = v23 - ((MEMORY[0x1EEE9AC00](v9, v10, v11, v12, v13, v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = *__error();
      v19 = _os_log_pack_fill();
      v20 = @"NULL";
      if (config)
      {
        v20 = config;
      }

      *v19 = 138412546;
      *(v19 + 4) = interface;
      *(v19 + 12) = 2112;
      *(v19 + 14) = v20;
      __SC_log_send(7, v7, v8, v17);
    }
  }

LABEL_13:
  v21 = *MEMORY[0x1E69E9840];
  return v6;
}

Boolean SCNetworkInterfaceSetExtendedConfiguration(SCNetworkInterfaceRef interface, CFStringRef extendedType, CFDictionaryRef config)
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!interface)
    {
LABEL_11:
      _SCErrorSet(1002);
      goto LABEL_12;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!interface)
    {
      goto LABEL_11;
    }
  }

  v6 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(interface) != v6)
  {
    goto LABEL_11;
  }

  if (!__SCNetworkInterfaceIsValidExtendedConfigurationType(interface, extendedType, 1))
  {
LABEL_12:
    LOBYTE(v7) = 0;
    goto LABEL_13;
  }

  v7 = __SCNetworkInterfaceSetConfiguration(interface, extendedType, config, 0);
  if (v7)
  {
    v8 = __log_SCNetworkConfiguration();
    v9 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v8, v9))
    {
      v10 = _os_log_pack_size();
      v18 = v24 - ((MEMORY[0x1EEE9AC00](v10, v11, v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = *__error();
      v20 = _os_log_pack_fill();
      v21 = @"NULL";
      if (config)
      {
        v21 = config;
      }

      *v20 = 138412546;
      *(v20 + 4) = interface;
      *(v20 + 12) = 2112;
      *(v20 + 14) = v21;
      __SC_log_send(7, v8, v9, v18);
    }
  }

LABEL_13:
  v22 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t _SCNetworkInterfaceForceConfigurationRefresh(const __CFString *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  TypeID = CFStringGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID)
  {
    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, @"State:", a1, @"RefreshConfiguration");
    v4 = SCDynamicStoreNotifyValue(0, NetworkInterfaceEntity);
    CFRelease(NetworkInterfaceEntity);
    v5 = *MEMORY[0x1E69E9840];
    return v4;
  }

  else
  {
    _SCErrorSet(1002);
    v7 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

Boolean SCNetworkInterfaceForceConfigurationRefresh(SCNetworkInterfaceRef interface)
{
  cf[1] = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized != -1)
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (interface)
    {
      goto LABEL_3;
    }

LABEL_22:
    v9 = 1002;
    goto LABEL_23;
  }

  if (!interface)
  {
    goto LABEL_22;
  }

LABEL_3:
  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(interface) != v2)
  {
    goto LABEL_22;
  }

  BSDName = SCNetworkInterfaceGetBSDName(interface);
  if (!BSDName)
  {
    goto LABEL_22;
  }

  v4 = BSDName;
  v5 = *(interface + 10);
  if (v5 && *(v5 + 312))
  {
    cf[0] = 0;
    v13 = 0;
    if (!*(v5 + 320))
    {
      helper = __SCPreferencesCreate_helper(v5);
      if (!helper)
      {
        goto LABEL_24;
      }
    }

    v7 = (v5 + 320);
    if (!_SCSerializeString(v4, cf, 0, 0))
    {
      goto LABEL_28;
    }

    v13 = 0;
    v8 = _SCHelperExec(*v7, 200, cf[0], &v13, 0);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (v8)
    {
      v9 = v13;
      if (!v13)
      {
        LOBYTE(helper) = 1;
LABEL_24:
        v11 = *MEMORY[0x1E69E9840];
        return helper;
      }
    }

    else
    {
LABEL_28:
      if (*v7)
      {
        _SCHelperClose(v7);
      }

      v9 = 1003;
      v13 = 1003;
    }

LABEL_23:
    _SCErrorSet(v9);
    LOBYTE(helper) = 0;
    goto LABEL_24;
  }

  v10 = *MEMORY[0x1E69E9840];

  LOBYTE(helper) = _SCNetworkInterfaceForceConfigurationRefresh(BSDName);
  return helper;
}

uint64_t SCNetworkInterfaceCheckPassword(const void *a1, int a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = 0;
  *v28 = 0;
  if (!checkInterfacePassword(a1, a2, v28, &v27))
  {
    goto LABEL_24;
  }

  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      Configuration = SCNetworkInterfaceGetConfiguration(a1);
      PasswordID = getPasswordID(Configuration, v27);
      v6 = *v28;
      v22 = *MEMORY[0x1E69E9840];
      v8 = &kSCValNetPPPAuthPasswordEncryptionKeychain;
      goto LABEL_19;
    }

    if (a2 != 2)
    {
      goto LABEL_22;
    }

    InterfaceType = SCNetworkInterfaceGetInterfaceType(a1);
    if (CFEqual(InterfaceType, @"PPP"))
    {
      ExtendedConfiguration = SCNetworkInterfaceGetExtendedConfiguration(a1, @"IPSec");
    }

    else
    {
      ExtendedConfiguration = SCNetworkInterfaceGetConfiguration(a1);
    }

    v16 = ExtendedConfiguration;
    v17 = copySharedSecretID(ExtendedConfiguration, v27);
    v18 = *v28;
    v19 = @"SharedSecret";
    v20 = @"SharedSecretEncryption";
    v21 = &kSCValNetIPSecSharedSecretEncryptionKeychain;
    goto LABEL_27;
  }

  if (a2 != 3)
  {
    if (a2 != 4)
    {
      if (a2 == 5)
      {
        Configuration = SCNetworkInterfaceGetConfiguration(a1);
        PasswordID = getPasswordID(Configuration, v27);
        v6 = *v28;
        v7 = *MEMORY[0x1E69E9840];
        v8 = kSCValNetVPNAuthPasswordEncryptionKeychain;
LABEL_19:
        v23 = *v8;

        return __extract_password(v6, Configuration, @"AuthPassword", @"AuthPasswordEncryption", v23, PasswordID, 0);
      }

LABEL_22:
      _SCErrorSet(1002);
LABEL_24:
      v24 = *MEMORY[0x1E69E9840];
      return 0;
    }

    v16 = SCNetworkInterfaceGetConfiguration(a1);
    v17 = copyXAuthID(v16, v27);
    v18 = *v28;
    v19 = @"XAuthPassword";
    v20 = @"XAuthPasswordEncryption";
    v21 = &kSCValNetIPSecXAuthPasswordEncryptionKeychain;
LABEL_27:
    password = __extract_password(v18, v16, v19, v20, *v21, v17, 0);
    CFRelease(v17);
    v26 = *MEMORY[0x1E69E9840];
    return password;
  }

  v11 = SCNetworkInterfaceGetExtendedConfiguration(a1, @"EAPOL");
  if (!v11)
  {
    CFStringGetTypeID();
    goto LABEL_24;
  }

  Value = CFDictionaryGetValue(v11, @"UserPasswordKeychainItemID");
  TypeID = CFStringGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    goto LABEL_24;
  }

  v14 = *MEMORY[0x1E69E9840];

  return _SCPreferencesSystemKeychainPasswordItemExists();
}