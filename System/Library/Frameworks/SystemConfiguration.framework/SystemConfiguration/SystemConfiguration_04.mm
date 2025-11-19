uint64_t checkInterfacePassword(CFTypeRef cf, int a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!cf)
    {
      goto LABEL_21;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!cf)
    {
      goto LABEL_21;
    }
  }

  v8 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) != v8)
  {
    goto LABEL_21;
  }

  v9 = *(cf + 12);
  *a4 = v9;
  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = *(cf + 10);
  *a3 = v10;
  if (!v10)
  {
    goto LABEL_21;
  }

  result = 1;
  if (a2 > 3)
  {
    if (a2 == 4)
    {
      InterfaceType = SCNetworkInterfaceGetInterfaceType(cf);
      v15 = @"IPSec";
    }

    else
    {
      if (a2 != 5)
      {
        goto LABEL_22;
      }

      InterfaceType = SCNetworkInterfaceGetInterfaceType(cf);
      v15 = @"VPN";
    }

LABEL_18:
    if (CFEqual(InterfaceType, v15))
    {
      result = 1;
      goto LABEL_22;
    }

LABEL_21:
    _SCErrorSet(1002);
    result = 0;
    goto LABEL_22;
  }

  if (a2 == 1)
  {
    InterfaceType = SCNetworkInterfaceGetInterfaceType(cf);
    v15 = @"PPP";
    goto LABEL_18;
  }

  if (a2 == 2)
  {
    v12 = SCNetworkInterfaceGetInterfaceType(cf);
    if (CFEqual(v12, @"PPP"))
    {
      Interface = SCNetworkInterfaceGetInterface(cf);
      if (!Interface)
      {
        goto LABEL_21;
      }

      InterfaceType = SCNetworkInterfaceGetInterfaceType(Interface);
      v15 = @"L2TP";
    }

    else
    {
      v15 = @"IPSec";
      InterfaceType = v12;
    }

    goto LABEL_18;
  }

LABEL_22:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFDictionary *getPasswordID(const __CFDictionary *result, const __CFDictionary *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    Value = CFDictionaryGetValue(result, @"AuthPasswordEncryption");
    TypeID = CFStringGetTypeID();
    if (Value && CFGetTypeID(Value) == TypeID && CFEqual(Value, @"Keychain"))
    {
      result = CFDictionaryGetValue(v3, @"AuthPassword");
    }

    else
    {
      result = 0;
    }
  }

  if (!result)
  {
    result = a2;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *copySharedSecretID(CFDictionaryRef theDict, const __CFDictionary *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (theDict && (Value = CFDictionaryGetValue(theDict, @"SharedSecretEncryption"), TypeID = CFStringGetTypeID(), Value) && CFGetTypeID(Value) == TypeID && CFEqual(Value, @"Keychain") && (v6 = CFDictionaryGetValue(theDict, @"SharedSecret")) != 0)
  {
    MutableCopy = v6;
    CFRetain(v6);
  }

  else
  {
    PasswordID = getPasswordID(theDict, a2);
    MutableCopy = CFStringCreateMutableCopy(0, 0, PasswordID);
    CFStringAppend(MutableCopy, @".SS");
  }

  v9 = *MEMORY[0x1E69E9840];
  return MutableCopy;
}

__CFString *copyXAuthID(CFDictionaryRef theDict, const __CFDictionary *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (theDict && (Value = CFDictionaryGetValue(theDict, @"XAuthPasswordEncryption"), TypeID = CFStringGetTypeID(), Value) && CFGetTypeID(Value) == TypeID && CFEqual(Value, @"Keychain") && (v6 = CFDictionaryGetValue(theDict, @"XAuthPassword")) != 0)
  {
    MutableCopy = v6;
    CFRetain(v6);
  }

  else
  {
    PasswordID = getPasswordID(theDict, a2);
    MutableCopy = CFStringCreateMutableCopy(0, 0, PasswordID);
    CFStringAppend(MutableCopy, @".XAUTH");
  }

  v9 = *MEMORY[0x1E69E9840];
  return MutableCopy;
}

uint64_t SCNetworkInterfaceCopyPassword(const void *a1, int a2)
{
  v24[1] = *MEMORY[0x1E69E9840];
  *v23 = 0;
  v24[0] = 0;
  v22 = 0;
  if (!checkInterfacePassword(a1, a2, v23, &v22))
  {
    goto LABEL_22;
  }

  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      Configuration = SCNetworkInterfaceGetConfiguration(a1);
      PasswordID = getPasswordID(Configuration, v22);
      v6 = *v23;
      v7 = &kSCValNetPPPAuthPasswordEncryptionKeychain;
      goto LABEL_17;
    }

    if (a2 != 2)
    {
      goto LABEL_18;
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

    v13 = ExtendedConfiguration;
    v14 = copySharedSecretID(ExtendedConfiguration, v22);
    v15 = *v23;
    v16 = @"SharedSecret";
    v17 = @"SharedSecretEncryption";
    v18 = &kSCValNetIPSecSharedSecretEncryptionKeychain;
LABEL_25:
    __extract_password(v15, v13, v16, v17, *v18, v14, v24);
    CFRelease(v14);
    goto LABEL_26;
  }

  switch(a2)
  {
    case 3:
      v10 = SCNetworkInterfaceGetExtendedConfiguration(a1, @"EAPOL");
      if (v10)
      {
        Value = CFDictionaryGetValue(v10, @"UserPasswordKeychainItemID");
        TypeID = CFStringGetTypeID();
        if (Value && CFGetTypeID(Value) == TypeID)
        {
          v24[0] = _SCPreferencesSystemKeychainPasswordItemCopy();
LABEL_26:
          result = v24[0];
          goto LABEL_27;
        }
      }

      else
      {
        CFStringGetTypeID();
      }

      v19 = 1001;
      goto LABEL_21;
    case 4:
      v13 = SCNetworkInterfaceGetConfiguration(a1);
      v14 = copyXAuthID(v13, v22);
      v15 = *v23;
      v16 = @"XAuthPassword";
      v17 = @"XAuthPasswordEncryption";
      v18 = &kSCValNetIPSecXAuthPasswordEncryptionKeychain;
      goto LABEL_25;
    case 5:
      Configuration = SCNetworkInterfaceGetConfiguration(a1);
      PasswordID = getPasswordID(Configuration, v22);
      v6 = *v23;
      v7 = kSCValNetVPNAuthPasswordEncryptionKeychain;
LABEL_17:
      __extract_password(v6, Configuration, @"AuthPassword", @"AuthPasswordEncryption", *v7, PasswordID, v24);
      goto LABEL_26;
  }

LABEL_18:
  v19 = 1002;
LABEL_21:
  _SCErrorSet(v19);
LABEL_22:
  result = 0;
LABEL_27:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SCNetworkInterfaceRemovePassword(const void *a1, int a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v25 = 0;
  *v26 = 0;
  if (!checkInterfacePassword(a1, a2, v26, &v25))
  {
    goto LABEL_27;
  }

  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      config = 0;
      Configuration = SCNetworkInterfaceGetConfiguration(a1);
      PasswordID = getPasswordID(Configuration, v25);
      v6 = *v26;
      v7 = &kSCValNetPPPAuthPasswordEncryptionKeychain;
LABEL_20:
      if (__remove_password(v6, Configuration, @"AuthPassword", @"AuthPasswordEncryption", *v7, PasswordID, &config))
      {
        v18 = SCNetworkInterfaceSetConfiguration(a1, config);
        v19 = config;
        if (!config)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

LABEL_27:
      v18 = 0;
LABEL_38:
      v23 = *MEMORY[0x1E69E9840];
      return v18;
    }

    if (a2 != 2)
    {
      goto LABEL_23;
    }

    config = 0;
    InterfaceType = SCNetworkInterfaceGetInterfaceType(a1);
    v9 = CFEqual(InterfaceType, @"PPP");
    if (v9)
    {
      ExtendedConfiguration = SCNetworkInterfaceGetExtendedConfiguration(a1, @"IPSec");
    }

    else
    {
      ExtendedConfiguration = SCNetworkInterfaceGetConfiguration(a1);
    }

    v21 = ExtendedConfiguration;
    v17 = copySharedSecretID(ExtendedConfiguration, v25);
    if (!__remove_password(*v26, v21, @"SharedSecret", @"SharedSecretEncryption", @"Keychain", v17, &config))
    {
LABEL_35:
      v18 = 0;
LABEL_36:
      v19 = v17;
LABEL_37:
      CFRelease(v19);
      goto LABEL_38;
    }

    if (v9)
    {
      v22 = SCNetworkInterfaceSetExtendedConfiguration(a1, @"IPSec", config);
      goto LABEL_33;
    }

LABEL_32:
    v22 = SCNetworkInterfaceSetConfiguration(a1, config);
LABEL_33:
    v18 = v22;
    if (config)
    {
      CFRelease(config);
    }

    goto LABEL_36;
  }

  if (a2 != 3)
  {
    if (a2 != 4)
    {
      if (a2 == 5)
      {
        config = 0;
        Configuration = SCNetworkInterfaceGetConfiguration(a1);
        PasswordID = getPasswordID(Configuration, v25);
        v6 = *v26;
        v7 = kSCValNetVPNAuthPasswordEncryptionKeychain;
        goto LABEL_20;
      }

LABEL_23:
      v20 = 1002;
LABEL_26:
      _SCErrorSet(v20);
      goto LABEL_27;
    }

    config = 0;
    v16 = SCNetworkInterfaceGetConfiguration(a1);
    v17 = copyXAuthID(v16, v25);
    if (!__remove_password(*v26, v16, @"XAuthPassword", @"XAuthPasswordEncryption", @"Keychain", v17, &config))
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  v11 = SCNetworkInterfaceGetExtendedConfiguration(a1, @"EAPOL");
  if (!v11)
  {
    CFStringGetTypeID();
LABEL_25:
    v20 = 1001;
    goto LABEL_26;
  }

  Value = CFDictionaryGetValue(v11, @"UserPasswordKeychainItemID");
  TypeID = CFStringGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    goto LABEL_25;
  }

  v14 = *MEMORY[0x1E69E9840];

  return _SCPreferencesSystemKeychainPasswordItemRemove();
}

uint64_t SCNetworkInterfaceSetPassword(const void *a1, int a2)
{
  v54[1] = *MEMORY[0x1E69E9840];
  v53 = 0;
  v54[0] = 0;
  if (!checkInterfacePassword(a1, a2, v54, &v53))
  {
    goto LABEL_24;
  }

  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      Configuration = SCNetworkInterfaceGetConfiguration(a1);
      v21 = v53;
      PasswordID = getPasswordID(Configuration, v53);
      if (Configuration && (CFDictionaryGetValue(Configuration, @"AuthName"), CFDictionaryGetValue(Configuration, @"UserDefinedName")))
      {
        Private = 0;
      }

      else
      {
        Private = __SCNetworkServiceCreatePrivate(0, v54[0], v21, a1);
        if (!SCNetworkServiceGetName(Private))
        {
          SCNetworkInterfaceGetLocalizedDisplayName(a1);
        }
      }

      if (bundle)
      {
        v25 = CFBundleCopyLocalizedString(bundle, @"KEYCHAIN_KIND_PPP_PASSWORD", @"PPP Password", 0);
      }

      else
      {
        v25 = 0;
      }

      if (_SCPreferencesSystemKeychainPasswordItemSet())
      {
        if (Configuration)
        {
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Configuration);
        }

        else
        {
          MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        }

        v44 = MutableCopy;
        CFDictionarySetValue(MutableCopy, @"AuthPassword", PasswordID);
        v45 = &kSCValNetPPPAuthPasswordEncryptionKeychain;
        goto LABEL_97;
      }

LABEL_52:
      v23 = 0;
      if (!v25)
      {
LABEL_100:
        if (!Private)
        {
          goto LABEL_113;
        }

        goto LABEL_111;
      }

LABEL_99:
      CFRelease(v25);
      goto LABEL_100;
    }

    if (a2 == 2)
    {
      InterfaceType = SCNetworkInterfaceGetInterfaceType(a1);
      v9 = CFEqual(InterfaceType, @"PPP");
      v10 = SCNetworkInterfaceGetConfiguration(a1);
      v11 = v10;
      if (v9)
      {
        ExtendedConfiguration = SCNetworkInterfaceGetExtendedConfiguration(a1, @"IPSec");
      }

      else
      {
        ExtendedConfiguration = v10;
        v11 = 0;
      }

      v29 = v53;
      v50 = copySharedSecretID(ExtendedConfiguration, v53);
      if (!ExtendedConfiguration)
      {
        goto LABEL_65;
      }

      value = 0;
      v52 = 0;
      if (CFDictionaryGetValueIfPresent(ExtendedConfiguration, @"LocalIdentifierType", &value))
      {
        if (CFEqual(value, @"KeyID"))
        {
          if (CFDictionaryGetValueIfPresent(ExtendedConfiguration, @"LocalIdentifier", &v52))
          {
            v30 = v52;
            CFStringGetTypeID();
            if (v30)
            {
              CFGetTypeID(v30);
            }
          }
        }
      }

      if (((v31 = ExtendedConfiguration, !v9) || (v31 = v11) != 0) && CFDictionaryGetValue(v31, @"UserDefinedName"))
      {
        v32 = 0;
      }

      else
      {
LABEL_65:
        v32 = __SCNetworkServiceCreatePrivate(0, v54[0], v29, a1);
        if (!SCNetworkServiceGetName(v32))
        {
          SCNetworkInterfaceGetLocalizedDisplayName(a1);
        }
      }

      if (bundle)
      {
        v33 = CFBundleCopyLocalizedString(bundle, @"KEYCHAIN_KIND_IPSEC_SHARED_SECRET", @"IPSec Shared Secret", 0);
      }

      else
      {
        v33 = 0;
      }

      Private = v50;
      if (_SCPreferencesSystemKeychainPasswordItemSet())
      {
        if (ExtendedConfiguration)
        {
          Mutable = CFDictionaryCreateMutableCopy(0, 0, ExtendedConfiguration);
        }

        else
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        }

        v46 = Mutable;
        CFDictionarySetValue(Mutable, @"SharedSecret", v50);
        CFDictionarySetValue(v46, @"SharedSecretEncryption", @"Keychain");
        if (v9)
        {
          v47 = SCNetworkInterfaceSetExtendedConfiguration(a1, @"IPSec", v46);
        }

        else
        {
          v47 = SCNetworkInterfaceSetConfiguration(a1, v46);
        }

        v23 = v47;
        CFRelease(v46);
      }

      else
      {
        v23 = 0;
      }

      if (v33)
      {
        CFRelease(v33);
      }

      if (v32)
      {
        CFRelease(v32);
      }

LABEL_111:
      v41 = Private;
      goto LABEL_112;
    }

    goto LABEL_23;
  }

  if (a2 != 3)
  {
    if (a2 == 4)
    {
      v17 = SCNetworkInterfaceGetConfiguration(a1);
      v18 = v53;
      v19 = copyXAuthID(v17, v53);
      if (v17 && (CFDictionaryGetValue(v17, @"XAuthName"), CFDictionaryGetValue(v17, @"UserDefinedName")))
      {
        Private = 0;
      }

      else
      {
        Private = __SCNetworkServiceCreatePrivate(0, v54[0], v18, a1);
        if (!SCNetworkServiceGetName(Private))
        {
          SCNetworkInterfaceGetLocalizedDisplayName(a1);
        }
      }

      if (bundle)
      {
        v25 = CFBundleCopyLocalizedString(bundle, @"KEYCHAIN_KIND_IPSEC_XAUTH_PASSWORD", @"IPSec XAuth Password", 0);
      }

      else
      {
        v25 = 0;
      }

      if (_SCPreferencesSystemKeychainPasswordItemSet())
      {
        if (v17)
        {
          v26 = CFDictionaryCreateMutableCopy(0, 0, v17);
        }

        else
        {
          v26 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        }

        v42 = v26;
        CFDictionarySetValue(v26, @"XAuthPassword", v19);
        CFDictionarySetValue(v42, @"XAuthPasswordEncryption", @"Keychain");
        v23 = SCNetworkInterfaceSetConfiguration(a1, v42);
        CFRelease(v42);
      }

      else
      {
        v23 = 0;
      }

      v43 = v19;
LABEL_98:
      CFRelease(v43);
      if (!v25)
      {
        goto LABEL_100;
      }

      goto LABEL_99;
    }

    if (a2 == 5)
    {
      v4 = SCNetworkInterfaceGetConfiguration(a1);
      v5 = v53;
      v6 = getPasswordID(v4, v53);
      if (v4 && (CFDictionaryGetValue(v4, @"AuthName"), CFDictionaryGetValue(v4, @"UserDefinedName")))
      {
        Private = 0;
      }

      else
      {
        Private = __SCNetworkServiceCreatePrivate(0, v54[0], v5, a1);
        if (!SCNetworkServiceGetName(Private))
        {
          SCNetworkInterfaceGetLocalizedDisplayName(a1);
        }
      }

      if (bundle)
      {
        v25 = CFBundleCopyLocalizedString(bundle, @"KEYCHAIN_KIND_VPN_PASSWORD", @"VPN Password", 0);
      }

      else
      {
        v25 = 0;
      }

      if (_SCPreferencesSystemKeychainPasswordItemSet())
      {
        if (v4)
        {
          v28 = CFDictionaryCreateMutableCopy(0, 0, v4);
        }

        else
        {
          v28 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        }

        v44 = v28;
        CFDictionarySetValue(v28, @"AuthPassword", v6);
        v45 = kSCValNetVPNAuthPasswordEncryptionKeychain;
LABEL_97:
        CFDictionarySetValue(v44, @"AuthPasswordEncryption", *v45);
        v23 = SCNetworkInterfaceSetConfiguration(a1, v44);
        v43 = v44;
        goto LABEL_98;
      }

      goto LABEL_52;
    }

LABEL_23:
    _SCErrorSet(1002);
LABEL_24:
    v23 = 0;
    goto LABEL_113;
  }

  v13 = SCNetworkInterfaceGetExtendedConfiguration(a1, @"EAPOL");
  v14 = v13;
  if (v13 && (v15 = CFDictionaryGetValue(v13, @"UserPasswordKeychainItemID"), TypeID = CFStringGetTypeID(), v15) && CFGetTypeID(v15) == TypeID)
  {
    CFRetain(v15);
  }

  else
  {
    v24 = CFUUIDCreate(0);
    v15 = CFUUIDCreateString(0, v24);
    CFRelease(v24);
    if (!v14)
    {
      goto LABEL_74;
    }
  }

  CFDictionaryGetValue(v14, @"UserName");
LABEL_74:
  if (bundle)
  {
    LocalizedDisplayName = SCNetworkInterfaceGetLocalizedDisplayName(a1);
    if (LocalizedDisplayName)
    {
      v36 = CFBundleCopyLocalizedString(bundle, @"KEYCHAIN_DESCRIPTION_EAPOL_INTERFACE", @"Network Connection (%@)", 0);
      v37 = CFStringCreateWithFormat(0, 0, v36, LocalizedDisplayName);
      CFRelease(v36);
    }

    else
    {
      v37 = CFBundleCopyLocalizedString(bundle, @"KEYCHAIN_DESCRIPTION_EAPOL", @"Network Connection", 0);
    }

    v38 = CFBundleCopyLocalizedString(bundle, @"KEYCHAIN_KIND_EAPOL", @"802.1X Password", 0);
  }

  else
  {
    v38 = 0;
    v37 = 0;
  }

  if (_SCPreferencesSystemKeychainPasswordItemSet())
  {
    if (v14)
    {
      v39 = CFDictionaryCreateMutableCopy(0, 0, v14);
    }

    else
    {
      v39 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v40 = v39;
    CFDictionarySetValue(v39, @"UserPasswordKeychainItemID", v15);
    v23 = SCNetworkInterfaceSetExtendedConfiguration(a1, @"EAPOL", v40);
    CFRelease(v40);
  }

  else
  {
    v23 = 0;
  }

  CFRelease(v15);
  if (v37)
  {
    CFRelease(v37);
  }

  if (v38)
  {
    v41 = v38;
LABEL_112:
    CFRelease(v41);
  }

LABEL_113:
  v48 = *MEMORY[0x1E69E9840];
  return v23;
}

uint64_t SCNetworkInterfaceSetAdvisory(const __SCNetworkInterface *a1, unsigned int a2, const __CFString *a3)
{
  theString[1] = *MEMORY[0x1E69E9840];
  theString[0] = 0;
  IPMonitorControl = _SCNetworkInterfaceGetIPMonitorControl(a1, theString);
  if (IPMonitorControl)
  {
    v6 = theString[0];
    v7 = *MEMORY[0x1E69E9840];

    return IPMonitorControlSetInterfaceAdvisory(IPMonitorControl, v6, a2, a3);
  }

  else
  {
    v9 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

uint64_t _SCNetworkInterfaceGetIPMonitorControl(const __SCNetworkInterface *a1, CFStringRef *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  BSDName = SCNetworkInterfaceGetBSDName(a1);
  if (!BSDName)
  {
    v6 = 1002;
    goto LABEL_6;
  }

  result = *(a1 + 50);
  if (!result)
  {
    result = IPMonitorControlCreate();
    if (result)
    {
      *(a1 + 50) = result;
      goto LABEL_7;
    }

    v6 = 1001;
LABEL_6:
    _SCErrorSet(v6);
    result = 0;
  }

LABEL_7:
  *a2 = BSDName;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL SCNetworkInterfaceAdvisoryIsSpecificSet(const __SCNetworkInterface *a1, unsigned int a2)
{
  theString[1] = *MEMORY[0x1E69E9840];
  theString[0] = 0;
  IPMonitorControl = _SCNetworkInterfaceGetIPMonitorControl(a1, theString);
  if (IPMonitorControl)
  {
    v4 = theString[0];
    v5 = *MEMORY[0x1E69E9840];

    return IPMonitorControlIsInterfaceAdvisorySet(IPMonitorControl, v4, a2);
  }

  else
  {
    v7 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

BOOL SCNetworkInterfaceAdvisoryIsSet(const __SCNetworkInterface *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return SCNetworkInterfaceAdvisoryIsSpecificSet(a1, 0);
}

CFStringRef SCNetworkInterfaceCopyAdvisoryNotificationKey(const __SCNetworkInterface *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  BSDName = SCNetworkInterfaceGetBSDName(a1);
  if (BSDName)
  {
    v2 = *MEMORY[0x1E69E9840];

    return IPMonitorControlCopyInterfaceAdvisoryNotificationKey(BSDName);
  }

  else
  {
    _SCErrorSet(1002);
    v4 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

uint64_t SCNetworkInterfaceCopyAdvisoryInfo(const __SCNetworkInterface *a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  result = _SCNetworkInterfaceGetIPMonitorControl(a1, v3);
  if (result)
  {
    result = IPMonitorControlCopyInterfaceAdvisoryInfo(result, v3[0]);
    if (!result)
    {
      _SCErrorSet(1001);
      result = 0;
    }
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SCNetworkInterfaceAdvisoryInfoGetAdvisory(const __CFDictionary *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return InterfaceAdvisoryInfoGetAdvisory(a1);
}

uint64_t SCNetworkInterfaceAdvisoryInfoGetProcessID(const __CFDictionary *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return InterfaceRankAssertionInfoGetProcessID(a1);
}

const void *SCNetworkInterfaceAdvisoryInfoGetProcessName(const __CFDictionary *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return InterfaceRankAssertionInfoGetProcessName(a1);
}

uint64_t SCNetworkInterfaceAdvisoryCopyInterfaceNames()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = IPMonitorControlCreate();
  if (v0)
  {
    v1 = v0;
    v2 = IPMonitorControlCopyInterfaceAdvisoryInterfaceNames(v0);
    if (!v2)
    {
      _SCErrorSet(1001);
    }

    CFRelease(v1);
  }

  else
  {
    _SCErrorSet(1001);
    v2 = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t _SCNetworkInterfaceCreateWithIONetworkInterfaceObject(uint64_t object)
{
  v10 = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized != -1)
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
  }

  if (IOObjectConformsTo(object, "IONetworkInterface"))
  {
    v2 = *MEMORY[0x1E69E9840];
    v3 = @"HiddenInterface";
    v4 = object;
    v5 = processNetworkInterface;
    v6 = 1;
  }

  else
  {
    if (!IOObjectConformsTo(object, "IOSerialBSDClient"))
    {
      v9 = *MEMORY[0x1E69E9840];
      return 0;
    }

    v7 = *MEMORY[0x1E69E9840];
    v3 = @"HiddenPort";
    v4 = object;
    v5 = processSerialInterface;
    v6 = 0;
  }

  return createInterface(v4, v5, v3, v6);
}

uint64_t _SCNetworkInterfaceGetConfigurationAction(uint64_t a1)
{
  result = *(a1 + 184);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _SCNetworkInterfaceGetFamilyType(const __CFNumber *interface)
{
  v4 = *MEMORY[0x1E69E9840];
  result = *(interface + 33);
  if (!result)
  {
    update_ift_family(interface);
    result = *(interface + 33);
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _SCNetworkInterfaceGetIORegistryEntryID(uint64_t a1)
{
  result = *(a1 + 216);
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _SCNetworkInterfaceIsBuiltin(unsigned __int8 *cf)
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

  result = cf[176];
LABEL_7:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _SCNetworkInterfaceIsTrustRequired(unsigned __int8 *cf)
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

  result = cf[240];
LABEL_7:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

const void *_SCNetworkInterfaceCopySlashDevPath(SCNetworkInterfaceRef interface)
{
  v39 = *MEMORY[0x1E69E9840];
  HIDWORD(v34) = 0;
  v1 = *(interface + 14);
  if (!v1)
  {
    CFProperty = 0;
    goto LABEL_26;
  }

  keys = 0;
  v38 = 0;
  values = 0;
  v36 = 0;
  if (*(interface + 15))
  {
    keys = @"IOTTYBaseName";
    values = v1;
    v3 = MEMORY[0x1E695E9D8];
    v4 = MEMORY[0x1E695E9E8];
    v5 = CFDictionaryCreate(0, &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    keys = @"IOProviderClass";
    v38 = @"IOPropertyMatch";
    values = @"IOSerialBSDClient";
    v36 = v5;
    v6 = CFDictionaryCreate(0, &keys, &values, 2, v3, v4);
    CFRelease(v5);
    MatchingServices = IOServiceGetMatchingServices(masterPort, v6, &v34 + 1);
    if (MatchingServices)
    {
      v8 = MatchingServices;
      v9 = __log_SCNetworkConfiguration();
      v10 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v9, v10))
      {
        v11 = _os_log_pack_size();
        v19 = &v34 - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
        v20 = *__error();
        v21 = _os_log_pack_fill();
        *v21 = 67109120;
        v21[1] = v8;
        __SC_log_send(6, v9, v10, v19);
      }

      goto LABEL_24;
    }

    while (1)
    {
      v23 = IOIteratorNext(HIDWORD(v34));
      if (!v23)
      {
        IOObjectRelease(HIDWORD(v34));
        break;
      }

      v24 = v23;
      v25 = IORegistryEntrySearchCFProperty(v23, "IOService", @"NetworkConfigurationOverrides", 0, 3u);
      if (v25)
      {
        v26 = v25;
        Value = CFDictionaryGetValue(v25, @"Modem");
        if (Value)
        {
          v28 = Value;
          CFRetain(Value);
          CFRelease(v26);
          goto LABEL_13;
        }

        CFRelease(v26);
      }

      v28 = IORegistryEntrySearchCFProperty(v24, "IOService", @"DeviceModemOverrides", 0, 3u);
      if (!v28)
      {
        CFProperty = 0;
        goto LABEL_21;
      }

LABEL_13:
      TypeID = CFDictionaryGetTypeID();
      if (CFGetTypeID(v28) != TypeID)
      {
        goto LABEL_18;
      }

      CFProperty = CFDictionaryGetValue(v28, @"UniqueIdentifier");
      v30 = CFStringGetTypeID();
      if (CFProperty)
      {
        if (CFGetTypeID(CFProperty) != v30 || !CFEqual(*(interface + 15), CFProperty))
        {
LABEL_18:
          CFProperty = 0;
          goto LABEL_19;
        }

        CFProperty = IORegistryEntryCreateCFProperty(v24, @"IOTTYDevice", 0, 0);
      }

LABEL_19:
      CFRelease(v28);
LABEL_21:
      IOObjectRelease(v24);
      if (CFProperty)
      {
        IOObjectRelease(HIDWORD(v34));
        goto LABEL_26;
      }
    }
  }

LABEL_24:
  BSDName = SCNetworkInterfaceGetBSDName(interface);
  CFProperty = BSDName;
  if (BSDName)
  {
    CFRetain(BSDName);
  }

LABEL_26:
  v32 = *MEMORY[0x1E69E9840];
  return CFProperty;
}

uint64_t _SCNetworkInterfaceIsApplePreconfigured(CFDictionaryRef *cf)
{
  v9 = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_15:
      result = 0;
      goto LABEL_16;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!cf)
    {
      goto LABEL_15;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_15;
  }

  result = _SCNetworkInterfaceIsHiddenConfiguration(cf);
  if (result)
  {
    if (!_SCNetworkInterfaceIsBuiltin(cf))
    {
      v4 = cf[36];
      TypeID = CFNumberGetTypeID();
      if (!v4 || CFGetTypeID(v4) != TypeID || (valuePtr = 0, !CFNumberGetValue(cf[36], kCFNumberIntType, &valuePtr)) || valuePtr != 1452)
      {
        if (!_SCNetworkInterfaceIsCarPlay(cf))
        {
          goto LABEL_15;
        }

        v6 = cf[28];
        if (!v6 || !CFDictionaryContainsKey(v6, @"IPv4") && !CFDictionaryContainsKey(cf[28], @"IPv6"))
        {
          goto LABEL_15;
        }
      }
    }

    result = 1;
  }

LABEL_16:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _SCNetworkInterfaceIsCarPlay(CFTypeRef cf)
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

  result = *(cf + 78) == 21;
LABEL_7:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _SCNetworkInterfaceIsBluetoothPAN_NAP(CFTypeRef cf)
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

  result = *(cf + 78) == 19;
LABEL_7:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _SCNetworkInterfaceIsBluetoothP2P(CFTypeRef cf)
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

  result = *(cf + 78) == 20;
LABEL_7:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _SCNetworkInterfaceIsVMNET(CFTypeRef cf)
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

  result = *(cf + 78) == 23;
LABEL_7:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFString *_SCNetworkInterfaceIsQoSMarkingProfileInstalled(const __SCNetworkInterface *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  result = SCNetworkInterfaceGetBSDName(a1);
  if (result)
  {
    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, @"State:", result, @"QoSMarkingPolicy");
    v3 = SCDynamicStoreCopyValue(0, NetworkInterfaceEntity);
    CFRelease(NetworkInterfaceEntity);
    if (v3)
    {
      CFRelease(v3);
      result = 1;
    }

    else
    {
      result = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _SCNetworkInterfaceIsTethered(CFTypeRef cf)
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

  result = (*(cf + 78) - 15) < 2;
LABEL_7:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _SCNetworkInterfaceIsEphemeral(unsigned __int8 *cf)
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

  result = cf[241];
LABEL_7:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _SCNetworkInterfaceSupportsVMNETBridgedMode(unsigned __int8 *cf)
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

  result = cf[244];
LABEL_7:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _SCNetworkInterfaceIsSelfNamed(unsigned __int8 *cf)
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

  result = cf[242];
LABEL_7:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _SCNetworkInterfaceIsUserEthernet(unsigned __int8 *cf)
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

  result = cf[243];
LABEL_7:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

const void *SCNetworkInterfaceGetQoSMarkingPolicy(CFTypeRef cf)
{
  v5 = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_7:
      LODWORD(result) = 1002;
LABEL_8:
      _SCErrorSet(result);
      result = 0;
      goto LABEL_9;
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

  result = __SCNetworkInterfaceGetConfiguration(cf, @"QoSMarkingPolicy");
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_9:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SCNetworkInterfaceSetQoSMarkingPolicy(CFTypeRef cf, __CFString *a2)
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_10:
      _SCErrorSet(1002);
      v5 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!cf)
    {
      goto LABEL_10;
    }
  }

  v4 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) != v4)
  {
    goto LABEL_10;
  }

  v5 = __SCNetworkInterfaceSetConfiguration(cf, @"QoSMarkingPolicy", a2, 0);
  if (v5)
  {
    v6 = __log_SCNetworkConfiguration();
    v7 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v6, v7))
    {
      v8 = _os_log_pack_size();
      v16 = v22 - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = *__error();
      v18 = _os_log_pack_fill();
      v19 = @"NULL";
      if (a2)
      {
        v19 = a2;
      }

      *v18 = 138412546;
      *(v18 + 4) = cf;
      *(v18 + 12) = 2112;
      *(v18 + 14) = v19;
      __SC_log_send(7, v6, v7, v16);
    }
  }

LABEL_11:
  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t SCNetworkInterfaceSetAutoConfigure(const __SCNetworkInterface *cf, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!cf)
    {
      goto LABEL_16;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!cf)
    {
      goto LABEL_16;
    }
  }

  v4 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) == v4)
  {
    InterfaceType = SCNetworkInterfaceGetInterfaceType(cf);
    if (CFEqual(InterfaceType, @"Bridge"))
    {
      v6 = *MEMORY[0x1E69E9840];

      return __SCBridgeInterfaceSetAutoConfigure(cf, a2);
    }
  }

  if (__SCNetworkInterfaceInitialize_initialized != -1)
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
  }

  v8 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) != v8 || (v9 = SCNetworkInterfaceGetInterfaceType(cf), !CFEqual(v9, @"VLAN")))
  {
LABEL_16:
    _SCErrorSet(1002);
    v11 = *MEMORY[0x1E69E9840];
    return 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return __SCVLANInterfaceSetAutoConfigure(cf, a2);
}

uint64_t SCNetworkInterfaceGetAutoConfigure(const __SCNetworkInterface *cf)
{
  v10 = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!cf)
    {
      goto LABEL_16;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!cf)
    {
      goto LABEL_16;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) == v2)
  {
    InterfaceType = SCNetworkInterfaceGetInterfaceType(cf);
    if (CFEqual(InterfaceType, @"Bridge"))
    {
      v4 = *MEMORY[0x1E69E9840];

      return __SCBridgeInterfaceGetAutoConfigure(cf);
    }
  }

  if (__SCNetworkInterfaceInitialize_initialized != -1)
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
  }

  v6 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) != v6 || (v7 = SCNetworkInterfaceGetInterfaceType(cf), !CFEqual(v7, @"VLAN")))
  {
LABEL_16:
    v9 = *MEMORY[0x1E69E9840];
    return 1;
  }

  v8 = *MEMORY[0x1E69E9840];

  return __SCVLANInterfaceGetAutoConfigure(cf);
}

__CFArray *__SCNetworkInterfaceCopyDeepConfiguration(const __SCNetworkSet *a1, const __SCNetworkInterface *Interface)
{
  v28 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v5 = Mutable;
  if (Interface)
  {
    v6 = *MEMORY[0x1E695E738];
    v7 = MEMORY[0x1E695E9D8];
    v8 = MEMORY[0x1E695E9E8];
    v27 = Mutable;
    do
    {
      v9 = CFDictionaryCreateMutable(0, 0, v7, v8);
      DefaultConfigurationType = __SCNetworkInterfaceGetDefaultConfigurationType(Interface);
      if (DefaultConfigurationType)
      {
        v11 = DefaultConfigurationType;
        v12 = a1 ? __SCNetworkInterfaceGetDefaultConfiguration(a1, Interface) : __SCNetworkInterfaceGetConfiguration(Interface, DefaultConfigurationType);
        v13 = v12 ? v12 : v6;
        CFDictionarySetValue(v9, v11, v13);
        v14 = extendedConfigurationTypes(Interface);
        if (v14)
        {
          v15 = v14;
          v16 = a1;
          v17 = v8;
          v18 = v7;
          Count = CFArrayGetCount(v14);
          if (Count >= 1)
          {
            v20 = Count;
            for (i = 0; i != v20; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v15, i);
              Configuration = __SCNetworkInterfaceGetConfiguration(Interface, ValueAtIndex);
              if (Configuration)
              {
                v24 = Configuration;
              }

              else
              {
                v24 = v6;
              }

              CFDictionarySetValue(v9, ValueAtIndex, v24);
            }
          }

          CFRelease(v15);
          v7 = v18;
          v8 = v17;
          a1 = v16;
          v5 = v27;
        }
      }

      CFArrayAppendValue(v5, v9);
      CFRelease(v9);
      Interface = SCNetworkInterfaceGetInterface(Interface);
    }

    while (Interface);
  }

  v25 = *MEMORY[0x1E69E9840];
  return v5;
}

CFMutableArrayRef extendedConfigurationTypes(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  Mutable = 0;
  context = __SCNetworkInterfaceGetDefaultConfigurationType(a1);
  if (context)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (*(a1 + 96))
    {
      v2 = 0;
      v3 = *(a1 + 16);
      v4 = configurations;
      while (!CFEqual(v3, **v4))
      {
        ++v2;
        v4 += 5;
        if (v2 == 19)
        {
          goto LABEL_23;
        }
      }

      if (((0x5BF13uLL >> v2) & 1) == 0)
      {
        Private = __SCNetworkServiceCreatePrivate(0, *(a1 + 80), *(a1 + 96), a1);
        v6 = SCNetworkSetCopyAll(*(a1 + 80));
        if (v6)
        {
          v7 = v6;
          Count = CFArrayGetCount(v6);
          if (Count >= 1)
          {
            v9 = Count;
            v10 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v7, v10);
              v12 = SCNetworkSetCopyServices(ValueAtIndex);
              v25.length = CFArrayGetCount(v12);
              v25.location = 0;
              v13 = CFArrayContainsValue(v12, v25, Private);
              CFRelease(v12);
              if (v13)
              {
                break;
              }

              if (v9 == ++v10)
              {
                goto LABEL_21;
              }
            }

            SetID = SCNetworkSetGetSetID(ValueAtIndex);
            SetNetworkInterfaceEntity = SCPreferencesPathKeyCreateSetNetworkInterfaceEntity(0, SetID, *(a1 + 112), 0);
            Value = __SCNetworkConfigurationGetValue(*(a1 + 80), SetNetworkInterfaceEntity);
            CFRelease(SetNetworkInterfaceEntity);
            TypeID = CFDictionaryGetTypeID();
            if (Value && CFGetTypeID(Value) == TypeID)
            {
              CFDictionaryApplyFunction(Value, __addExtendedConfigurationType, &context);
            }

            v19 = *(a1 + 104);
            if (v19)
            {
              CFDictionaryApplyFunction(v19, __addExtendedConfigurationType, &context);
            }
          }

LABEL_21:
          CFRelease(Private);
          v14 = v7;
        }

        else
        {
          v14 = Private;
        }

        CFRelease(v14);
      }
    }
  }

  else
  {
    Mutable = 0;
  }

LABEL_23:
  result = Mutable;
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SCNetworkInterfaceIsBusyMember(const __SCPreferences *a1, const __SCNetworkInterface *cf, int a3)
{
  Interface = cf;
  v14 = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_13:
      v11 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!Interface)
    {
      goto LABEL_13;
    }
  }

  v6 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(Interface) != v6)
  {
    goto LABEL_13;
  }

  Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
  v8 = SCBridgeInterfaceCopyAll(a1);
  if (v8)
  {
    v9 = v8;
    __SCBridgeInterfaceListCollectMembers(v8, Mutable, a3);
    CFRelease(v9);
  }

  if (CFSetGetCount(Mutable))
  {
    while (1)
    {
      v10 = CFSetContainsValue(Mutable, Interface);
      if (v10)
      {
        break;
      }

      Interface = SCNetworkInterfaceGetInterface(Interface);
      if (!Interface)
      {
        goto LABEL_9;
      }
    }

    v11 = v10;
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  CFRelease(Mutable);
LABEL_14:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

SCNetworkInterfaceRef __SCNetworkInterfaceSetDeepConfiguration(SCNetworkInterfaceRef result, const __SCNetworkInterface *a2, CFArrayRef theArray, __n128 a4)
{
  v94 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = theArray;
    v5 = a2;
    v6 = result;
    v7 = 0;
    v90 = *MEMORY[0x1E695E738];
    a4.n128_u64[0] = 138412546;
    v88 = a4;
    a4.n128_u64[0] = 138412802;
    v89 = a4;
    v85 = result;
    v86 = theArray;
    do
    {
      v87 = v7;
      if (v4)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
        DefaultConfigurationType = __SCNetworkInterfaceGetDefaultConfigurationType(v5);
        if (!DefaultConfigurationType)
        {
          goto LABEL_44;
        }

        v9 = DefaultConfigurationType;
        Value = ValueAtIndex;
        if (ValueAtIndex)
        {
          Value = CFDictionaryGetValue(ValueAtIndex, v9);
          v93 = 0;
          goto LABEL_11;
        }

        ValueAtIndex = 0;
      }

      else
      {
        v11 = __SCNetworkInterfaceGetDefaultConfigurationType(v5);
        if (!v11)
        {
          goto LABEL_44;
        }

        v9 = v11;
        ValueAtIndex = 0;
        Value = 0;
      }

      v93 = 1;
LABEL_11:
      if (Value == v90)
      {
        v12 = 0;
      }

      else
      {
        v12 = Value;
      }

      if (v6)
      {
        v13 = __SCNetworkInterfaceSetDefaultConfiguration(v6, v5, v9, v12, 1);
      }

      else
      {
        v13 = __SCNetworkInterfaceSetConfiguration(v5, v9, v12, 1);
      }

      v14 = v13;
      v15 = __log_SCNetworkConfiguration();
      if (v14)
      {
        v16 = _SC_syslog_os_log_mapping(7);
        if (!__SC_log_enabled(7, v15, v16))
        {
          goto LABEL_25;
        }

        v17 = _os_log_pack_size();
        v25 = &v84 - ((MEMORY[0x1EEE9AC00](v17, v18, v19, v20, v21, v22, v23, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
        v26 = *__error();
        v27 = _os_log_pack_fill();
        *v27 = v89.n128_u32[0];
        v28 = @"NULL";
        if (v12)
        {
          v28 = v12;
        }

        *(v27 + 4) = v5;
        *(v27 + 12) = 2112;
        *(v27 + 14) = v9;
        *(v27 + 22) = 2112;
        *(v27 + 24) = v28;
        v29 = 7;
        v30 = v15;
        v31 = v16;
        v32 = v25;
      }

      else
      {
        v33 = _SC_syslog_os_log_mapping(6);
        if (!__SC_log_enabled(6, v15, v33))
        {
          goto LABEL_25;
        }

        v34 = _os_log_pack_size();
        v42 = &v84 - ((MEMORY[0x1EEE9AC00](v34, v35, v36, v37, v38, v39, v40, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
        v43 = *__error();
        v44 = _os_log_pack_fill();
        *v44 = v88.n128_u32[0];
        *(v44 + 4) = v5;
        *(v44 + 12) = 2112;
        *(v44 + 14) = v9;
        v29 = 6;
        v30 = v15;
        v31 = v33;
        v32 = v42;
      }

      __SC_log_send(v29, v30, v31, v32);
LABEL_25:
      v45 = extendedConfigurationTypes(v5);
      if (v45)
      {
        v46 = v45;
        Count = CFArrayGetCount(v45);
        v47 = v90;
        if (Count >= 1)
        {
          for (i = 0; Count != i; ++i)
          {
            v49 = CFArrayGetValueAtIndex(v46, i);
            if (v93)
            {
              v50 = 0;
            }

            else
            {
              v50 = CFDictionaryGetValue(ValueAtIndex, v49);
            }

            if (v50 == v47)
            {
              v51 = 0;
            }

            else
            {
              v51 = v50;
            }

            v52 = __SCNetworkInterfaceSetConfiguration(v5, v49, v51, 1);
            v53 = __log_SCNetworkConfiguration();
            if (v52)
            {
              v54 = _SC_syslog_os_log_mapping(7);
              if (__SC_log_enabled(7, v53, v54))
              {
                v55 = _os_log_pack_size();
                v63 = &v84 - ((MEMORY[0x1EEE9AC00](v55, v56, v57, v58, v59, v60, v61, v62) + 15) & 0xFFFFFFFFFFFFFFF0);
                v64 = *__error();
                v47 = v90;
                v65 = _os_log_pack_fill();
                *v65 = v89.n128_u32[0];
                v66 = @"NULL";
                if (v51)
                {
                  v66 = v51;
                }

                *(v65 + 4) = v5;
                *(v65 + 12) = 2112;
                *(v65 + 14) = v49;
                *(v65 + 22) = 2112;
                *(v65 + 24) = v66;
                v67 = 7;
                v68 = v53;
                v69 = v54;
                v70 = v63;
                goto LABEL_41;
              }
            }

            else
            {
              v71 = _SC_syslog_os_log_mapping(6);
              if (__SC_log_enabled(6, v53, v71))
              {
                v72 = _os_log_pack_size();
                v80 = &v84 - ((MEMORY[0x1EEE9AC00](v72, v73, v74, v75, v76, v77, v78, v79) + 15) & 0xFFFFFFFFFFFFFFF0);
                v81 = *__error();
                v82 = _os_log_pack_fill();
                *v82 = v88.n128_u32[0];
                *(v82 + 4) = v5;
                *(v82 + 12) = 2112;
                *(v82 + 14) = v49;
                v67 = 6;
                v68 = v53;
                v69 = v71;
                v70 = v80;
LABEL_41:
                __SC_log_send(v67, v68, v69, v70);
              }
            }
          }
        }

        CFRelease(v46);
        v6 = v85;
        v4 = v86;
      }

LABEL_44:
      result = SCNetworkInterfaceGetInterface(v5);
      v5 = result;
      v7 = v87 + 1;
    }

    while (result);
  }

  v83 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _SCNetworkInterfaceCopyActive(const void *a1, const __CFString *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = _SCNetworkInterfaceCreateWithBSDName(a1, a2, -1);
  v4 = v3;
  if (a1 && v3)
  {
    CFRetain(a1);
    *(v4 + 88) = a1;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

int64_t SCNetworkInterfaceGetPrimaryRank(const __SCNetworkInterface *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 50);
  if (!v1)
  {
    goto LABEL_7;
  }

  BSDName = SCNetworkInterfaceGetBSDName(a1);
  if (!BSDName)
  {
    _SCErrorSet(1002);
LABEL_7:
    v5 = *MEMORY[0x1E69E9840];
    return 0;
  }

  v3 = *MEMORY[0x1E69E9840];

  return IPMonitorControlGetInterfacePrimaryRank(v1, BSDName);
}

uint64_t SCNetworkInterfaceSetPrimaryRank(const __SCNetworkInterface *a1, unsigned int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  BSDName = SCNetworkInterfaceGetBSDName(a1);
  if (!BSDName)
  {
    v9 = 1002;
    goto LABEL_9;
  }

  v5 = BSDName;
  v6 = *(a1 + 50);
  if (!v6)
  {
    v6 = IPMonitorControlCreate();
    if (v6)
    {
      *(a1 + 50) = v6;
      goto LABEL_5;
    }

    v9 = 1001;
LABEL_9:
    _SCErrorSet(v9);
    v10 = *MEMORY[0x1E69E9840];
    return 0;
  }

LABEL_5:
  v7 = *MEMORY[0x1E69E9840];

  return IPMonitorControlSetInterfacePrimaryRank(v6, v5, a2);
}

CFStringRef SCNetworkInterfaceCopyRankAssertionNotificationKey(const __SCNetworkInterface *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  BSDName = SCNetworkInterfaceGetBSDName(a1);
  if (BSDName)
  {
    v2 = *MEMORY[0x1E69E9840];

    return IPMonitorControlCopyInterfaceRankAssertionNotificationKey(BSDName);
  }

  else
  {
    _SCErrorSet(1002);
    v4 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

uint64_t SCNetworkInterfaceCopyRankAssertionInfo(const __SCNetworkInterface *a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  result = _SCNetworkInterfaceGetIPMonitorControl(a1, v3);
  if (result)
  {
    result = IPMonitorControlCopyInterfaceRankAssertionInfo(result, v3[0]);
    if (!result)
    {
      _SCErrorSet(1001);
      result = 0;
    }
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SCNetworkInterfaceRankAssertionInfoGetPrimaryRank(const __CFDictionary *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return InterfaceRankAssertionInfoGetPrimaryRank(a1);
}

uint64_t SCNetworkInterfaceRankAssertionInfoGetProcessID(const __CFDictionary *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return InterfaceRankAssertionInfoGetProcessID(a1);
}

const void *SCNetworkInterfaceRankAssertionInfoGetProcessName(const __CFDictionary *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return InterfaceRankAssertionInfoGetProcessName(a1);
}

uint64_t SCNetworkInterfaceRankAssertionCopyInterfaceNames()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = IPMonitorControlCreate();
  if (v0)
  {
    v1 = v0;
    v2 = IPMonitorControlCopyInterfaceRankAssertionInterfaceNames(v0);
    if (!v2)
    {
      _SCErrorSet(1001);
    }

    CFRelease(v1);
  }

  else
  {
    _SCErrorSet(1001);
    v2 = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

const void *__SCNetworkInterfaceGetDisableUntilNeededValue(const __SCPreferences **a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return get_number_value(a1, @"DisableUntilNeeded");
}

const void *get_number_value(const __SCPreferences **cf, const void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (cf)
    {
      goto LABEL_3;
    }

LABEL_20:
    v12 = 0;
    LODWORD(v8) = 1002;
    goto LABEL_21;
  }

  __SCNetworkInterfaceCreatePrivate_cold_1();
  if (!cf)
  {
    goto LABEL_20;
  }

LABEL_3:
  v4 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) != v4 || !cf[10])
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = cf[2];
  v7 = configurations;
  while (!CFEqual(v6, **v7))
  {
    ++v5;
    v7 += 5;
    if (v5 == 19)
    {
      goto LABEL_20;
    }
  }

  if ((0x5BF13uLL >> v5))
  {
    goto LABEL_20;
  }

  v8 = copyPerInterfaceConfigurationPaths(cf, 0);
  if (!v8)
  {
LABEL_17:
    v12 = 0;
    goto LABEL_21;
  }

  v9 = v8;
  ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
  Value = __SCNetworkConfigurationGetValue(cf[10], ValueAtIndex);
  CFRelease(v9);
  if (!Value)
  {
    LODWORD(v8) = 0;
    goto LABEL_17;
  }

  v12 = CFDictionaryGetValue(Value, a2);
  TypeID = CFNumberGetTypeID();
  if (v12)
  {
    v14 = TypeID;
    v15 = CFGetTypeID(v12);
    LODWORD(v8) = 0;
    if (v15 != v14)
    {
      v12 = 0;
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

LABEL_21:
  _SCErrorSet(v8);
  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

BOOL SCNetworkInterfaceGetDisableUntilNeeded(const __SCPreferences **a1)
{
  v7 = *MEMORY[0x1E69E9840];
  number_value = get_number_value(a1, @"DisableUntilNeeded");
  if (!number_value || (valuePtr = 0, Value = CFNumberGetValue(number_value, kCFNumberIntType, &valuePtr), result = valuePtr != 0, !Value))
  {
    result = _SCNetworkInterfaceIsTethered(a1);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SCNetworkInterfaceSetDisableUntilNeededValue(uint64_t a1, const void *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return set_number_value(a1, @"DisableUntilNeeded", a2);
}

uint64_t set_number_value(uint64_t a1, const void *a2, const void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 80))
  {
    goto LABEL_24;
  }

  if (a3)
  {
    TypeID = CFNumberGetTypeID();
    if (CFGetTypeID(a3) != TypeID)
    {
      goto LABEL_24;
    }
  }

  v7 = 0;
  v8 = *(a1 + 16);
  v9 = configurations;
  while (!CFEqual(v8, **v9))
  {
    ++v7;
    v9 += 5;
    if (v7 == 19)
    {
      goto LABEL_24;
    }
  }

  if (((0x5BF13uLL >> v7) & 1) == 0 && (v10 = copyPerInterfaceConfigurationPaths(a1, 0)) != 0)
  {
    v11 = v10;
    Count = CFArrayGetCount(v10);
    if (Count < 1)
    {
      v22 = 1;
LABEL_27:
      _SCErrorSet(0);
    }

    else
    {
      v13 = Count;
      v14 = 0;
      v15 = MEMORY[0x1E695E9E8];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v11, v14);
        Value = __SCNetworkConfigurationGetValue(*(a1 + 80), ValueAtIndex);
        v18 = Value ? CFDictionaryCreateMutableCopy(0, 0, Value) : CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], v15);
        v19 = v18;
        if (a3)
        {
          CFDictionarySetValue(v18, a2, a3);
        }

        else
        {
          CFDictionaryRemoveValue(v18, a2);
        }

        v20 = *(a1 + 80);
        v21 = CFDictionaryGetCount(v19) <= 0 ? 0 : v19;
        v22 = __SCNetworkConfigurationSetValue(v20, ValueAtIndex, v21, 0);
        CFRelease(v19);
        if (!v22)
        {
          break;
        }

        if (v13 == ++v14)
        {
          goto LABEL_27;
        }
      }
    }

    CFRelease(v11);
  }

  else
  {
LABEL_24:
    _SCErrorSet(1002);
    v22 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t SCNetworkInterfaceSetDisableUntilNeeded(uint64_t a1, int a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return set_BOOLean_value(a1, @"DisableUntilNeeded", a2);
}

uint64_t set_BOOLean_value(uint64_t a1, const void *a2, int a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = 1;
  if (a3)
  {
    v5 = &v11;
  }

  else
  {
    v5 = &v10;
  }

  v6 = CFNumberCreate(0, kCFNumberIntType, v5);
  v7 = set_number_value(a1, a2, v6);
  CFRelease(v6);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

const void *__SCNetworkInterfaceGetDisablePrivateRelayValue(const __SCPreferences **a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return get_number_value(a1, @"DisablePrivateRelay");
}

uint64_t SCNetworkInterfaceGetDisablePrivateRelay(const __SCPreferences **a1)
{
  v5 = *MEMORY[0x1E69E9840];
  result = get_number_value(a1, @"DisablePrivateRelay");
  if (result)
  {
    valuePtr = 0;
    if (CFNumberGetValue(result, kCFNumberIntType, &valuePtr))
    {
      v2 = valuePtr == 0;
    }

    else
    {
      v2 = 1;
    }

    result = !v2;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SCNetworkInterfaceSetDisablePrivateRelayValue(uint64_t a1, const void *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return set_number_value(a1, @"DisablePrivateRelay", a2);
}

uint64_t SCNetworkInterfaceSetDisablePrivateRelay(uint64_t a1, int a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return set_BOOLean_value(a1, @"DisablePrivateRelay", a2);
}

const void *__SCNetworkInterfaceGetEnableLowDataModeValue(const __SCPreferences **a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (SCNetworkInterfaceSupportsLowDataMode(a1))
  {
    v2 = *MEMORY[0x1E69E9840];

    return get_number_value(a1, @"EnableLowDataMode");
  }

  else
  {
    _SCErrorSet(1002);
    v4 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

uint64_t SCNetworkInterfaceGetEnableLowDataMode(const __SCPreferences **a1)
{
  v5 = *MEMORY[0x1E69E9840];
  result = __SCNetworkInterfaceGetEnableLowDataModeValue(a1);
  if (result)
  {
    valuePtr = 0;
    if (CFNumberGetValue(result, kCFNumberIntType, &valuePtr))
    {
      v2 = valuePtr == 0;
    }

    else
    {
      v2 = 1;
    }

    result = !v2;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SCNetworkInterfaceSetEnableLowDataModeValue(const __SCNetworkInterface *a1, const void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (SCNetworkInterfaceSupportsLowDataMode(a1))
  {
    v4 = *MEMORY[0x1E69E9840];

    return set_number_value(a1, @"EnableLowDataMode", a2);
  }

  else
  {
    _SCErrorSet(1002);
    v6 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

uint64_t SCNetworkInterfaceSetEnableLowDataMode(const __SCNetworkInterface *a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (SCNetworkInterfaceSupportsLowDataMode(a1))
  {
    v4 = *MEMORY[0x1E69E9840];

    return set_BOOLean_value(a1, @"EnableLowDataMode", a2);
  }

  else
  {
    _SCErrorSet(1002);
    v6 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

__CFArray *__SCNetworkInterfaceCopyStoredWithPreferences(const __SCPreferences *cf)
{
  v1 = cf;
  v13 = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (cf)
    {
LABEL_3:
      CFRetain(v1);
      goto LABEL_6;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  v1 = SCPreferencesCreate(0, @"SCNetworkInterface", @"NetworkInterfaces.plist");
  if (!v1)
  {
    __SCNetworkInterfaceCopyStoredWithPreferences_cold_2();
  }

LABEL_6:
  Value = SCPreferencesGetValue(v1, @"Interfaces");
  TypeID = CFArrayGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    Count = CFArrayGetCount(Value);
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
        v8 = CFDictionaryGetTypeID();
        if (ValueAtIndex)
        {
          if (CFGetTypeID(ValueAtIndex) == v8)
          {
            v9 = __SCNetworkInterfaceCreateWithStorageEntity(ValueAtIndex);
            if (v9)
            {
              v10 = v9;
              CFArrayAppendValue(Mutable, v9);
              CFRelease(v10);
            }
          }
        }
      }
    }
  }

  else
  {
    Mutable = 0;
  }

  CFRelease(v1);
  v11 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t __SCNetworkInterfaceCreateWithStorageEntity(const void *a1)
{
  v128 = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized != -1)
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
  }

  valuePtr = 0;
  TypeID = CFDictionaryGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    v9 = __log_SCNetworkConfiguration();
    v10 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v9, v10))
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

  Value = CFDictionaryGetValue(a1, @"Active");
  v4 = CFBooleanGetTypeID();
  v5 = MEMORY[0x1E695E4C0];
  if (Value)
  {
    v6 = v4;
    v7 = CFGetTypeID(Value);
    v8 = *v5;
    if (v7 == v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v8 = *MEMORY[0x1E695E4C0];
  }

  Value = v8;
LABEL_12:
  v22 = CFDictionaryGetValue(a1, @"BSD Name");
  v23 = CFStringGetTypeID();
  if (v22 && CFGetTypeID(v22) == v23)
  {
    v24 = CFDictionaryGetValue(a1, @"HiddenConfiguration");
    v25 = CFBooleanGetTypeID();
    v26 = v8;
    if (v24)
    {
      if (CFGetTypeID(v24) == v25)
      {
        v26 = v24;
      }

      else
      {
        v26 = v8;
      }
    }

    v27 = CFDictionaryGetValue(a1, @"HiddenInterface");
    v28 = CFBooleanGetTypeID();
    if (v27 && CFGetTypeID(v27) == v28)
    {
      v8 = v27;
    }

    v29 = CFDictionaryGetValue(a1, @"IOBuiltin");
    v30 = CFBooleanGetTypeID();
    if (!v29 || CFGetTypeID(v29) != v30)
    {
      v9 = __log_SCNetworkConfiguration();
      v10 = _SC_syslog_os_log_mapping(6);
      if (!__SC_log_enabled(6, v9, v10))
      {
        goto LABEL_29;
      }

      goto LABEL_9;
    }

    v31 = CFDictionaryGetValue(a1, @"IOInterfaceNamePrefix");
    v32 = CFStringGetTypeID();
    if (v31 && CFGetTypeID(v31) == v32)
    {
      CFRetain(v31);
LABEL_34:
      v45 = CFDictionaryGetValue(a1, @"IOInterfaceType");
      v46 = CFNumberGetTypeID();
      if (v45 && CFGetTypeID(v45) == v46)
      {
        if (!CFNumberGetValue(v45, kCFNumberIntType, &valuePtr))
        {
          v47 = __log_SCNetworkConfiguration();
          v48 = _SC_syslog_os_log_mapping(5);
          if (__SC_log_enabled(5, v47, v48))
          {
            v49 = _os_log_pack_size();
            v125 = v47;
            v126 = &v117;
            v57 = MEMORY[0x1EEE9AC00](v49, v50, v51, v52, v53, v54, v55, v56);
            LODWORD(v124) = v48;
            v58 = &v117 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
            v59 = *__error();
            *_os_log_pack_fill() = 0;
            __SC_log_send(5, v125, v124, v58);
          }
        }

        v60 = CFDictionaryGetValue(a1, @"IOInterfaceUnit");
        v61 = CFNumberGetTypeID();
        if (v60 && CFGetTypeID(v60) == v61)
        {
          v125 = v60;
          v62 = CFDictionaryGetValue(a1, @"IOMACAddress");
          v63 = CFDataGetTypeID();
          if (v62 && (v126 = v62, CFGetTypeID(v62) == v63))
          {
            v64 = CFDictionaryGetValue(a1, @"IOPathMatch");
            v65 = CFStringGetTypeID();
            if (v64 && CFGetTypeID(v64) == v65)
            {
              v124 = v64;
              v66 = CFDictionaryGetValue(a1, @"SCNetworkInterfaceInfo");
              v67 = CFDictionaryGetTypeID();
              if (v66 && CFGetTypeID(v66) == v67)
              {
                v118 = @"UserDefinedName";
                v68 = CFDictionaryGetValue(v66, @"UserDefinedName");
                v123 = CFStringGetTypeID();
                if (v68)
                {
                  v69 = CFGetTypeID(v68);
                  if (v69 == v123)
                  {
                    v70 = v68;
                  }

                  else
                  {
                    v70 = 0;
                  }

                  v120 = v70;
                }

                else
                {
                  v120 = 0;
                }

                v83 = CFDictionaryGetValue(v66, @"kUSBProductString");
                v123 = CFStringGetTypeID();
                if (v83)
                {
                  v84 = CFGetTypeID(v83);
                  if (v84 == v123)
                  {
                    v85 = v83;
                  }

                  else
                  {
                    v85 = 0;
                  }

                  v122 = v85;
                }

                else
                {
                  v122 = 0;
                }

                v86 = CFDictionaryGetValue(v66, @"idProduct");
                v123 = CFNumberGetTypeID();
                if (v86)
                {
                  v87 = CFGetTypeID(v86);
                  if (v87 == v123)
                  {
                    v88 = v86;
                  }

                  else
                  {
                    v88 = 0;
                  }

                  v123 = v88;
                }

                else
                {
                  v123 = 0;
                }

                v89 = CFDictionaryGetValue(v66, @"idVendor");
                v90 = CFNumberGetTypeID();
                if (v89)
                {
                  if (CFGetTypeID(v89) == v90)
                  {
                    v91 = v89;
                  }

                  else
                  {
                    v91 = 0;
                  }

                  v121 = v91;
                }

                else
                {
                  v121 = 0;
                }

                v92 = CFDictionaryGetValue(a1, @"MatchingMACs");
                v93 = CFArrayGetTypeID();
                if (v92)
                {
                  if (CFGetTypeID(v92) == v93)
                  {
                    v94 = v92;
                  }

                  else
                  {
                    v94 = 0;
                  }

                  v119 = v94;
                }

                else
                {
                  v119 = 0;
                }

                v95 = CFDictionaryGetValue(a1, @"SCNetworkInterfaceType");
                v96 = CFStringGetTypeID();
                if (v95 && CFGetTypeID(v95) == v96)
                {
                  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  v98 = Mutable;
                  if (valuePtr == 144)
                  {
                    v100 = &kSCValNetInterfaceTypeFireWire;
                  }

                  else
                  {
                    v99 = v95;
                    if (valuePtr != 6)
                    {
                      goto LABEL_101;
                    }

                    v100 = &kSCValNetInterfaceTypeEthernet;
                  }

                  v99 = *v100;
LABEL_101:
                  CFDictionarySetValue(Mutable, @"Type", v99);
                  Configuration = findConfiguration(v95);
                  if (Configuration == -1)
                  {
                    v112 = v98;
                    v111 = v95;
                  }

                  else
                  {
                    if ((0x61200uLL >> Configuration))
                    {
LABEL_106:
                      CFDictionarySetValue(v98, @"DeviceName", v22);
                      if (CFBooleanGetValue(v26))
                      {
                        CFDictionarySetValue(v98, @"HiddenConfiguration", *MEMORY[0x1E695E4D0]);
                      }

                      if (v120)
                      {
                        CFDictionarySetValue(v98, v118, v120);
                      }

                      v42 = _SCNetworkInterfaceCreateWithEntity();
                      CFRelease(v98);
                      *(v42 + 24) = CFBooleanGetValue(Value);
                      *(v42 + 176) = CFBooleanGetValue(v29);
                      *(v42 + 193) = CFBooleanGetValue(v8);
                      *(v42 + 232) = CFRetain(v31);
                      *(v42 + 248) = CFRetain(v45);
                      *(v42 + 256) = CFRetain(v125);
                      *(v42 + 160) = CFRetain(v126);
                      *(v42 + 208) = CFRetain(v124);
                      if (v122)
                      {
                        v113 = CFRetain(v122);
                      }

                      else
                      {
                        v113 = 0;
                      }

                      *(v42 + 280) = v113;
                      if (v123)
                      {
                        v114 = CFRetain(v123);
                      }

                      else
                      {
                        v114 = 0;
                      }

                      *(v42 + 296) = v114;
                      if (v121)
                      {
                        v115 = CFRetain(v121);
                      }

                      else
                      {
                        v115 = 0;
                      }

                      *(v42 + 288) = v115;
                      if (v119)
                      {
                        v116 = CFRetain(v119);
                      }

                      else
                      {
                        v116 = 0;
                      }

                      *(v42 + 304) = v116;
                      goto LABEL_98;
                    }

                    v111 = *configurations[5 * Configuration + 1];
                    v112 = v98;
                  }

                  CFDictionarySetValue(v112, @"Hardware", v111);
                  goto LABEL_106;
                }

                v71 = __log_SCNetworkConfiguration();
                v72 = _SC_syslog_os_log_mapping(6);
                if (__SC_log_enabled(6, v71, v72))
                {
                  goto LABEL_95;
                }

LABEL_97:
                v42 = 0;
LABEL_98:
                CFRelease(v31);
                goto LABEL_30;
              }

              v71 = __log_SCNetworkConfiguration();
              v72 = _SC_syslog_os_log_mapping(6);
              if (!__SC_log_enabled(6, v71, v72))
              {
                goto LABEL_97;
              }
            }

            else
            {
              v71 = __log_SCNetworkConfiguration();
              v72 = _SC_syslog_os_log_mapping(6);
              if (!__SC_log_enabled(6, v71, v72))
              {
                goto LABEL_97;
              }
            }
          }

          else
          {
            v71 = __log_SCNetworkConfiguration();
            v72 = _SC_syslog_os_log_mapping(6);
            if (!__SC_log_enabled(6, v71, v72))
            {
              goto LABEL_97;
            }
          }
        }

        else
        {
          v71 = __log_SCNetworkConfiguration();
          v72 = _SC_syslog_os_log_mapping(6);
          if (!__SC_log_enabled(6, v71, v72))
          {
            goto LABEL_97;
          }
        }

LABEL_95:
        v101 = _os_log_pack_size();
        v81 = &v117 - ((MEMORY[0x1EEE9AC00](v101, v102, v103, v104, v105, v106, v107, v108) + 15) & 0xFFFFFFFFFFFFFFF0);
        v109 = *__error();
        goto LABEL_96;
      }

      v71 = __log_SCNetworkConfiguration();
      v72 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v71, v72))
      {
        v73 = _os_log_pack_size();
        v81 = &v117 - ((MEMORY[0x1EEE9AC00](v73, v74, v75, v76, v77, v78, v79, v80) + 15) & 0xFFFFFFFFFFFFFFF0);
        v82 = *__error();
LABEL_96:
        *_os_log_pack_fill() = 0;
        __SC_log_send(6, v71, v72, v81);
        goto LABEL_97;
      }

      goto LABEL_97;
    }

    v31 = _SCNetworkInterfaceCopyPrefixFromBSDName(v22);
    if (v31)
    {
      goto LABEL_34;
    }

    v9 = __log_SCNetworkConfiguration();
    v10 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v9, v10))
    {
LABEL_9:
      v11 = _os_log_pack_size();
      v19 = &v117 - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = *__error();
      *_os_log_pack_fill() = 0;
      v21 = 6;
LABEL_28:
      __SC_log_send(v21, v9, v10, v19);
    }
  }

  else
  {
    v9 = __log_SCNetworkConfiguration();
    v10 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v9, v10))
    {
      v33 = _os_log_pack_size();
      v19 = &v117 - ((MEMORY[0x1EEE9AC00](v33, v34, v35, v36, v37, v38, v39, v40) + 15) & 0xFFFFFFFFFFFFFFF0);
      v41 = *__error();
      *_os_log_pack_fill() = 0;
      v21 = 7;
      goto LABEL_28;
    }
  }

LABEL_29:
  v42 = 0;
LABEL_30:
  v43 = *MEMORY[0x1E69E9840];
  return v42;
}

uint64_t __SCNetworkInterfaceSaveStoredWithPreferences(SCPreferencesRef a1, const void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  TypeID = CFArrayGetTypeID();
  if (a2 && CFGetTypeID(a2) == TypeID)
  {
    if (a1)
    {
      CFRetain(a1);
    }

    else
    {
      a1 = SCPreferencesCreate(0, @"SCNetworkInterface", @"NetworkInterfaces.plist");
      if (!a1)
      {
        __SCNetworkInterfaceSaveStoredWithPreferences_cold_1();
      }
    }

    v7 = SCPreferencesSetValue(a1, @"Interfaces", a2);
    CFRelease(a1);
    v8 = *MEMORY[0x1E69E9840];
    return v7;
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

uint64_t __SCNetworkInterfaceCreateWithNIPreferencesUsingBSDName(int a1, const __SCPreferences *cf, const void *a3)
{
  v4 = cf;
  v17 = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (cf)
    {
LABEL_3:
      CFRetain(v4);
      goto LABEL_6;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v4 = SCPreferencesCreate(0, @"SCNetworkInterface", @"NetworkInterfaces.plist");
  if (!v4)
  {
    __SCNetworkInterfaceCreateWithNIPreferencesUsingBSDName_cold_2();
  }

LABEL_6:
  Value = SCPreferencesGetValue(v4, @"Interfaces");
  TypeID = CFArrayGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID && (Count = CFArrayGetCount(Value), Count >= 1))
  {
    v8 = Count;
    v9 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Value, v9);
      v11 = CFDictionaryGetTypeID();
      if (ValueAtIndex)
      {
        if (CFGetTypeID(ValueAtIndex) == v11)
        {
          v12 = CFDictionaryGetValue(ValueAtIndex, @"BSD Name");
          v13 = CFStringGetTypeID();
          if (v12)
          {
            if (CFGetTypeID(v12) == v13 && CFEqual(a3, v12))
            {
              break;
            }
          }
        }
      }

      if (v8 == ++v9)
      {
        goto LABEL_16;
      }
    }

    v14 = __SCNetworkInterfaceCreateWithStorageEntity(ValueAtIndex);
  }

  else
  {
LABEL_16:
    v14 = 0;
  }

  CFRelease(v4);
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

__CFDictionary *__SCNetworkInterfaceCreateMappingUsingBSDName(const __CFArray *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    Mutable = 0;
  }

  else
  {
    v3 = Count;
    Mutable = 0;
    v5 = 0;
    v6 = MEMORY[0x1E695E9D8];
    v7 = MEMORY[0x1E695E9E8];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v5);
      BSDName = SCNetworkInterfaceGetBSDName(ValueAtIndex);
      if (BSDName)
      {
        v10 = BSDName;
        if (!Mutable)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, v6, v7);
        }

        CFDictionarySetValue(Mutable, v10, ValueAtIndex);
      }

      ++v5;
    }

    while (v3 != v5);
  }

  v11 = *MEMORY[0x1E69E9840];
  return Mutable;
}

BOOL __SCNetworkInterfaceEntityIsPPTP(_BOOL8 result)
{
  v3 = *MEMORY[0x1E69E9840];
  if (result)
  {
    Value = CFDictionaryGetValue(result, @"SubType");
    result = Value && CFEqual(Value, @"PPTP");
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SCNetworkInterfaceTypeSetTemporaryOverrideCost(const __SCPreferences *a1, CFTypeRef cf1, int a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (CFEqual(cf1, @"IEEE80211") || CFEqual(cf1, @"Cellular"))
  {
    v6 = CFStringCreateWithFormat(0, 0, @"%@%@/%@/%@/%@/%@", @"/", @"System", @"Network", @"Override", @"InterfaceType", cf1);
    Value = SCPreferencesPathGetValue(a1, v6);
    TypeID = CFDictionaryGetTypeID();
    if (Value && CFGetTypeID(Value) == TypeID)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v10 = MutableCopy;
    v11 = @"Inexpensive";
    if (a3 != 1)
    {
      v11 = 0;
    }

    if (a3 == 2)
    {
      v12 = @"Expensive";
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      CFDictionarySetValue(MutableCopy, @"Cost", v12);
      if (_SC_isAppleInternal_once_3 != -1)
      {
        SCNetworkInterfaceTypeSetTemporaryOverrideCost_cold_1();
      }

      if (!_SC_isAppleInternal_isInternal_3)
      {
        goto LABEL_23;
      }

      LODWORD(valuePtr) = 0;
      v13 = SCDynamicStoreCopyValue(0, @"Global:NetworkInterfaceOverrideExpensiveExpiration");
      v14 = CFDictionaryGetTypeID();
      if (!v13)
      {
        goto LABEL_23;
      }

      if (CFGetTypeID(v13) == v14)
      {
        v15 = CFDictionaryGetValue(v13, @"Delta");
        v16 = CFNumberGetTypeID();
        if (v15)
        {
          if (CFGetTypeID(v15) == v16)
          {
            CFNumberGetValue(v15, kCFNumberIntType, &valuePtr);
          }
        }
      }

      CFRelease(v13);
      v17 = LODWORD(valuePtr);
      if (SLODWORD(valuePtr) < 1 || (Current = CFAbsoluteTimeGetCurrent(), (v19 = CFDateCreate(0, Current + v17)) == 0))
      {
LABEL_23:
        v27 = 0;
        v25 = 0;
        v20 = CFCalendarCreateWithIdentifier(0, *MEMORY[0x1E695E678]);
        valuePtr = CFAbsoluteTimeGetCurrent();
        CFCalendarAddComponents(v20, &valuePtr, 0, "d", 1);
        CFCalendarDecomposeAbsoluteTime(v20, valuePtr, "yMd", &v25, &v25 + 4, &v27);
        CFCalendarComposeAbsoluteTime(v20, &valuePtr, "yMdHms", v25, HIDWORD(v25), v27, 5, 0, 0);
        CFRelease(v20);
        v19 = CFDateCreate(0, valuePtr);
      }

      CFDictionarySetValue(v10, @"Expiration", v19);
      CFRelease(v19);
    }

    else
    {
      CFDictionaryRemoveValue(MutableCopy, @"Cost");
      CFDictionaryRemoveValue(v10, @"Expiration");
      if (!CFDictionaryGetCount(v10))
      {
        CFRelease(v10);
        goto LABEL_30;
      }
    }

    if (v10)
    {
      v21 = SCPreferencesPathSetValue(a1, v6, v10);
      CFRelease(v10);
      goto LABEL_33;
    }

LABEL_30:
    v22 = CFDictionaryGetTypeID();
    if (!Value || CFGetTypeID(Value) != v22)
    {
      CFRelease(v6);
      v21 = 1;
LABEL_36:
      _SCErrorSet(0);
      goto LABEL_37;
    }

    v21 = SCPreferencesPathRemoveValue(a1, v6);
LABEL_33:
    CFRelease(v6);
    if (!v21)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  _SCErrorSet(1002);
  v21 = 0;
LABEL_37:
  v23 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t SCNetworkInterfaceTypeGetTemporaryOverrideCost(const __SCPreferences *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = CFStringCreateWithFormat(0, 0, @"%@%@/%@/%@/%@/%@", @"/", @"System", @"Network", @"Override", @"InterfaceType", a2);
  Value = SCPreferencesPathGetValue(a1, v3);
  CFRelease(v3);
  TypeID = CFDictionaryGetTypeID();
  if (!Value)
  {
    goto LABEL_6;
  }

  if (CFGetTypeID(Value) != TypeID)
  {
    goto LABEL_6;
  }

  v6 = CFDictionaryGetValue(Value, @"Expiration");
  v7 = CFDateGetTypeID();
  if (!v6)
  {
    goto LABEL_6;
  }

  if (CFGetTypeID(v6) == v7 && (Current = CFAbsoluteTimeGetCurrent(), v9 = CFDateCreate(0, Current), v10 = CFDateCompare(v9, v6, 0), CFRelease(v9), v10 == kCFCompareLessThan) && (v13 = CFDictionaryGetValue(Value, @"Cost"), v14 = CFStringGetTypeID(), v13) && CFGetTypeID(v13) == v14)
  {
    if (CFEqual(v13, @"Expensive"))
    {
      result = 2;
    }

    else
    {
      result = CFEqual(v13, @"Inexpensive") != 0;
    }
  }

  else
  {
LABEL_6:
    result = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SCNetworkInterfaceEqual(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
LABEL_44:
    result = 1;
    goto LABEL_45;
  }

  result = CFEqual(*(a1 + 16), *(a2 + 16));
  if (result)
  {
    v5 = *(a1 + 112);
    v6 = *(a2 + 112);
    if (v5 == v6 || (result = 0, v5) && v6 && (result = CFEqual(*(a1 + 112), v6), result))
    {
      v7 = *(a1 + 120);
      v8 = *(a2 + 120);
      if (v7)
      {
        if (v8)
        {
          if (v7 == v8)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }

      else if (!v8)
      {
        goto LABEL_17;
      }

      NonLocalizedDisplayName = __SCNetworkInterfaceGetNonLocalizedDisplayName(a1);
      v10 = __SCNetworkInterfaceGetNonLocalizedDisplayName(a2);
      if (!NonLocalizedDisplayName || (v8 = v10) == 0 || NonLocalizedDisplayName == v10)
      {
LABEL_17:
        if (!CFEqual(*(a1 + 16), @"Bond"))
        {
          goto LABEL_49;
        }

        v11 = *(a1 + 320);
        v12 = *(a2 + 320);
        if (v11 == v12 || (result = 0, v11) && v12 && (result = CFEqual(*(a1 + 320), v12), result))
        {
          v13 = *(a1 + 328);
          v14 = *(a2 + 328);
          if (v13 == v14 || (result = 0, v13) && v14 && (result = CFEqual(*(a1 + 328), v14), result))
          {
LABEL_49:
            if (!CFEqual(*(a1 + 16), @"Bridge") || (v15 = *(a1 + 352), v16 = *(a2 + 352), v15 == v16) || (result = 0, v15) && v16 && (result = CFEqual(*(a1 + 352), v16), result))
            {
              if (!CFEqual(*(a1 + 16), @"VLAN"))
              {
                goto LABEL_40;
              }

              v17 = *(a1 + 376);
              v18 = *(a2 + 376);
              if (v17 == v18 || (result = 0, v17) && v18 && (result = CFEqual(*(a1 + 376), v18), result))
              {
                v19 = *(a1 + 384);
                v20 = *(a2 + 384);
                if (v19 == v20 || (result = 0, v19) && v20 && (result = CFEqual(*(a1 + 384), v20), result))
                {
LABEL_40:
                  v21 = *(a1 + 72);
                  v22 = *(a2 + 72);
                  if (v21 != v22 && (!v21 || !v22 || !CFEqual(v21, v22)))
                  {
                    result = 0;
                    goto LABEL_45;
                  }

                  goto LABEL_44;
                }
              }
            }
          }
        }

        goto LABEL_45;
      }

      v7 = NonLocalizedDisplayName;
LABEL_16:
      result = CFEqual(v7, v8);
      if (!result)
      {
        goto LABEL_45;
      }

      goto LABEL_17;
    }
  }

LABEL_45:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

CFHashCode __SCNetworkInterfaceHash(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 112);
  if (v2)
  {
    v3 = *(a1 + 120);
    v4 = CFHash(v2);
    if (v3)
    {
      v4 ^= CFHash(*(a1 + 120));
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

__CFString *__SCNetworkInterfaceCopyFormattingDescription(uint64_t a1, const __CFDictionary *a2)
{
  valuePtr[1] = *MEMORY[0x1E69E9840];
  v4 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v4, 0);
  CFStringAppendFormat(Mutable, 0, @"<SCNetworkInterface %p [%p]> {", a1, v4);
  CFStringAppendFormat(Mutable, 0, @"type = %@", *(a1 + 16));
  CFStringAppendFormat(Mutable, 0, @", entity_device = %@", *(a1 + 112));
  if (*(a1 + 120))
  {
    CFStringAppendFormat(Mutable, 0, @"+%@", *(a1 + 120));
  }

  CFStringAppendFormat(Mutable, 0, @", entity_type = %@", *(a1 + 128));
  if (*(a1 + 136))
  {
    CFStringAppendFormat(Mutable, 0, @" / %@", *(a1 + 136));
  }

  if (*(a1 + 32))
  {
    CFStringAppendFormat(Mutable, 0, @", name = %@", *(a1 + 32));
  }

  if (*(a1 + 40))
  {
    CFStringAppendFormat(Mutable, 0, @", name(l) = %@", *(a1 + 40));
  }

  else if (*(a1 + 48))
  {
    CFStringAppendFormat(Mutable, 0, @", name(k) = %@", *(a1 + 48));
    if (*(a1 + 56))
    {
      CFStringAppendFormat(Mutable, 0, @"+%@", *(a1 + 56));
    }

    if (*(a1 + 64))
    {
      CFStringAppendFormat(Mutable, 0, @"+%@", *(a1 + 64));
    }
  }

  if (*(a1 + 160))
  {
    CFStringAppendFormat(Mutable, 0, @", address = ");
    BytePtr = CFDataGetBytePtr(*(a1 + 160));
    Length = CFDataGetLength(*(a1 + 160));
    if (Length >= 1)
    {
      v8 = Length;
      for (i = 0; i != v8; ++i)
      {
        if (i)
        {
          v10 = ":";
        }

        else
        {
          v10 = "";
        }

        CFStringAppendFormat(Mutable, 0, @"%s%02x", v10, BytePtr[i]);
      }
    }
  }

  if (*(a1 + 176))
  {
    v11 = "TRUE";
  }

  else
  {
    v11 = "FALSE";
  }

  CFStringAppendFormat(Mutable, 0, @", builtin = %s", v11);
  if (*(a1 + 192))
  {
    CFStringAppendFormat(Mutable, 0, @", hidden = TRUE");
  }

  if (*(a1 + 193))
  {
    CFStringAppendFormat(Mutable, 0, @", HIDDEN");
  }

  if (*(a1 + 240))
  {
    CFStringAppendFormat(Mutable, 0, @", trust required = TRUE");
  }

  if (*(a1 + 241))
  {
    CFStringAppendFormat(Mutable, 0, @", ephemeral");
  }

  if (*(a1 + 242))
  {
    CFStringAppendFormat(Mutable, 0, @", self-named");
  }

  if (*(a1 + 200))
  {
    CFStringAppendFormat(Mutable, 0, @", location = %@", *(a1 + 200));
  }

  if (*(a1 + 208))
  {
    CFStringAppendFormat(Mutable, 0, @", path = %@", *(a1 + 208));
  }

  if (*(a1 + 216))
  {
    CFStringAppendFormat(Mutable, 0, @", entryID = 0x%llx", *(a1 + 216));
  }

  if (*(a1 + 248))
  {
    CFStringAppendFormat(Mutable, 0, @", type = %@", *(a1 + 248));
  }

  if (*(a1 + 256))
  {
    CFStringAppendFormat(Mutable, 0, @", unit = %@", *(a1 + 256));
  }

  if (*(a1 + 264))
  {
    CFStringAppendFormat(Mutable, 0, @", family = %@", *(a1 + 264));
  }

  if (*(a1 + 272))
  {
    CFStringAppendFormat(Mutable, 0, @", subfamily = %@", *(a1 + 272));
  }

  v12 = *(a1 + 296);
  if (*(a1 + 288) != 0)
  {
    valuePtr[0] = 0;
    TypeID = CFNumberGetTypeID();
    if (!v12 || CFGetTypeID(v12) != TypeID || !CFNumberGetValue(*(a1 + 296), kCFNumberIntType, valuePtr + 4))
    {
      HIDWORD(valuePtr[0]) = 0;
    }

    v14 = *(a1 + 288);
    v15 = CFNumberGetTypeID();
    if (!v14 || CFGetTypeID(v14) != v15 || !CFNumberGetValue(*(a1 + 288), kCFNumberIntType, valuePtr))
    {
      LODWORD(valuePtr[0]) = 0;
    }

    if (*(a1 + 280))
    {
      CFStringAppendFormat(Mutable, 0, @", USB name = %@", *(a1 + 280));
    }

    CFStringAppendFormat(Mutable, 0, @", USB vid/pid = %d/%d", LODWORD(valuePtr[0]), HIDWORD(valuePtr[0]));
  }

  if (*(a1 + 184))
  {
    CFStringAppendFormat(Mutable, 0, @", action = %@", *(a1 + 184));
  }

  v16 = *(a1 + 224);
  if (v16)
  {
    v17 = _SCCopyDescription(v16, a2);
    CFStringAppendFormat(Mutable, a2, @", overrides = %@", v17);
    CFRelease(v17);
  }

  v18 = *(a1 + 312);
  if (v18 > 0x18)
  {
    v19 = "?";
  }

  else
  {
    v19 = sortOrderName[v18];
  }

  CFStringAppendFormat(Mutable, 0, @", order = %u (%s)", *(a1 + 312), v19);
  if (*(a1 + 80))
  {
    CFStringAppendFormat(Mutable, 0, @", prefs = %p", *(a1 + 80));
  }

  if (*(a1 + 96))
  {
    CFStringAppendFormat(Mutable, 0, @", service = %@", *(a1 + 96));
  }

  if (*(a1 + 72))
  {
    CFStringAppendFormat(Mutable, 0, @", interface = %@", *(a1 + 72));
  }

  if (*(a1 + 104))
  {
    CFStringAppendFormat(Mutable, a2, @", unsaved = %@", *(a1 + 104));
  }

  v20 = *(a1 + 320);
  if (v20)
  {
    Count = CFArrayGetCount(v20);
    if (Count >= 1)
    {
      v22 = Count;
      for (j = 0; j != v22; ++j)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 320), j);
        if (j)
        {
          v25 = ",";
        }

        else
        {
          v25 = ", interfaces = ";
        }

        BSDName = SCNetworkInterfaceGetBSDName(ValueAtIndex);
        CFStringAppendFormat(Mutable, 0, @"%s%@", v25, BSDName);
      }
    }
  }

  if (*(a1 + 328))
  {
    CFStringAppendFormat(Mutable, 0, @", mode = %@", *(a1 + 328));
  }

  v27 = *(a1 + 336);
  if (v27)
  {
    v28 = _SCCopyDescription(v27, a2);
    CFStringAppendFormat(Mutable, a2, @", options = %@", v28);
    CFRelease(v28);
  }

  v29 = *(a1 + 352);
  if (v29)
  {
    v30 = CFArrayGetCount(v29);
    if (v30 >= 1)
    {
      v31 = v30;
      for (k = 0; k != v31; ++k)
      {
        v33 = CFArrayGetValueAtIndex(*(a1 + 352), k);
        if (k)
        {
          v34 = ",";
        }

        else
        {
          v34 = ", interfaces = ";
        }

        v35 = SCNetworkInterfaceGetBSDName(v33);
        CFStringAppendFormat(Mutable, 0, @"%s%@", v34, v35);
      }
    }
  }

  v36 = *(a1 + 360);
  if (v36)
  {
    v37 = _SCCopyDescription(v36, a2);
    CFStringAppendFormat(Mutable, a2, @", options = %@", v37);
    CFRelease(v37);
  }

  v38 = *(a1 + 376);
  if (v38)
  {
    v39 = SCNetworkInterfaceGetBSDName(v38);
    CFStringAppendFormat(Mutable, 0, @", interface = %@", v39);
  }

  if (*(a1 + 384))
  {
    CFStringAppendFormat(Mutable, 0, @", tag = %@", *(a1 + 384));
  }

  v40 = *(a1 + 392);
  if (v40)
  {
    v41 = _SCCopyDescription(v40, a2);
    CFStringAppendFormat(Mutable, a2, @", options = %@", v41);
    CFRelease(v41);
  }

  CFStringAppendFormat(Mutable, 0, @"}");
  v42 = *MEMORY[0x1E69E9840];
  return Mutable;
}

__CFString *__SCNetworkInterfaceCopyDescription(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return __SCNetworkInterfaceCopyFormattingDescription(a1, 0);
}

CFStringRef copy_interface_string(__CFBundle *a1, const __CFString *a2, int a3)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v6 = copy_string_from_bundle(a1, a2, a3);
  v7 = v6;
  if (v6)
  {
    if (CFEqual(v6, a2) && (copy_interface_string_reported & 1) == 0)
    {
      v8 = copy_string_from_bundle(a1, @"airport", a3);
      v9 = v8;
      if (v8)
      {
        if (!CFEqual(v8, @"airport"))
        {
          goto LABEL_9;
        }
      }

      v10 = __log_SCNetworkConfiguration();
      v11 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v10, v11))
      {
        v12 = _os_log_pack_size();
        v20 = v38 - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17, v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
        v21 = *__error();
        v22 = _os_log_pack_fill();
        *v22 = 138412802;
        *(v22 + 4) = a1;
        *(v22 + 12) = 2112;
        *(v22 + 14) = @"airport";
        *(v22 + 22) = 1024;
        *(v22 + 24) = a3;
        __SC_log_send(3, v10, v11, v20);
      }

      _SC_crash("Failed to retrieve interface string", 0, 0);
      copy_interface_string_reported = 1;
      if (v9)
      {
LABEL_9:
        CFRelease(v9);
      }
    }
  }

  else
  {
    v23 = __log_SCNetworkConfiguration();
    v24 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v23, v24))
    {
      v25 = _os_log_pack_size();
      v33 = v38 - ((MEMORY[0x1EEE9AC00](v25, v26, v27, v28, v29, v30, v31, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = *__error();
      v35 = _os_log_pack_fill();
      *v35 = 138412802;
      *(v35 + 4) = a1;
      *(v35 + 12) = 2112;
      *(v35 + 14) = a2;
      *(v35 + 22) = 1024;
      *(v35 + 24) = a3;
      __SC_log_send(3, v23, v24, v33);
    }
  }

  v36 = *MEMORY[0x1E69E9840];
  return v7;
}

CFStringRef copy_string_from_bundle(__CFBundle *a1, CFStringRef value, int a3)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = *MEMORY[0x1E69E9840];

    return CFBundleCopyLocalizedString(a1, value, value, @"NetworkInterface");
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];

    return CFBundleCopyLocalizedStringForLocalization();
  }
}

uint64_t isBuiltin(io_registry_entry_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = pci_slot(a1, 0);
  if (v1)
  {
    CFRelease(v1);
    result = 0;
  }

  else
  {
    result = 1;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t pci_slot_info(io_registry_entry_t a1, int a2, CFMutableStringRef *a3, CFStringRef *a4)
{
  properties[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  properties[0] = 0;
  *a3 = 0;
  *a4 = 0;
  IORegistryEntryCreateCFProperties(a1, properties, 0, 0);
  if (properties[0])
  {
    v8 = IODictionaryCopyBSDName(properties[0]);
    CFRelease(properties[0]);
    if (v8)
    {
      v9 = pci_slot(a1, &cf);
      *a3 = v9;
      if (v9)
      {
        if (!cf)
        {
          v10 = 1;
LABEL_11:
          CFRelease(v8);
          goto LABEL_12;
        }

        *a4 = pci_port(cf, a2, v8);
        v10 = 1;
      }

      else
      {
        v10 = 0;
      }

      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_11;
    }
  }

  v10 = 0;
LABEL_12:
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t isThunderbolt(io_registry_entry_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = IORegistryEntrySearchCFProperty(a1, "IOService", @"PCI-Thunderbolt", 0, 3u);
  if (result)
  {
    CFRelease(result);
    result = 1;
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void *processUSBInterface(void *result, io_registry_entry_t entry)
{
  v3 = result;
  v5 = *MEMORY[0x1E69E9840];
  if (!result[35])
  {
    result = IORegistryEntrySearchCFProperty(entry, "IOService", @"kUSBProductString", 0, 3u);
    v3[35] = result;
  }

  if (!v3[36])
  {
    result = IORegistryEntrySearchCFProperty(entry, "IOService", @"idVendor", 0, 3u);
    v3[36] = result;
  }

  if (!v3[37])
  {
    result = IORegistryEntrySearchCFProperty(entry, "IOService", @"idProduct", 0, 3u);
    v3[37] = result;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

CFMutableStringRef pci_slot(io_registry_entry_t a1, CFTypeRef *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *a2 = 0;
  }

  CFProperty = IORegistryEntryCreateCFProperty(a1, @"AAPL,slot-name", 0, 0);
  if (CFProperty)
  {
    v5 = CFProperty;
    Mutable = CFStringCreateMutable(0, 0);
    TypeID = CFStringGetTypeID();
    if (CFGetTypeID(v5) == TypeID)
    {
      if (a2)
      {
        *a2 = CFStringCreateCopy(0, v5);
      }

      CFStringAppend(Mutable, v5);
    }

    else
    {
      v8 = CFDataGetTypeID();
      if (CFGetTypeID(v5) == v8)
      {
        if (a2)
        {
          *a2 = CFDataCreateCopy(0, v5);
        }

        BytePtr = CFDataGetBytePtr(v5);
        CFStringAppendCString(Mutable, BytePtr, 0x8000100u);
      }
    }

    for (i = 0; i != 3; ++i)
    {
      v11 = slot_prefixes[i];
      Length = CFStringGetLength(v11);
      if (CFStringGetLength(Mutable) > Length)
      {
        v37.location = 0;
        v37.length = Length;
        CFStringFindAndReplace(Mutable, v11, &stru_1F22591E8, v37, 9uLL);
      }
    }

    CFStringTrimWhitespace(Mutable);
    CFRelease(v5);
  }

  else
  {
    Mutable = 0;
  }

  parent = 0;
  ParentEntry = IORegistryEntryGetParentEntry(a1, "IOService", &parent);
  if (ParentEntry != -536870208)
  {
    v14 = ParentEntry;
    if (!ParentEntry)
    {
      v34 = 0;
      v15 = pci_slot(parent, &v34);
      if (v15)
      {
        v16 = v15;
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (a2)
        {
          if (*a2)
          {
            CFRelease(*a2);
          }

          v17 = v34;
          *a2 = v34;
          if (!v17)
          {
            goto LABEL_33;
          }

          CFRetain(v17);
        }
      }

      else
      {
        v16 = Mutable;
      }

      if (v34)
      {
        CFRelease(v34);
      }

LABEL_33:
      IOObjectRelease(parent);
      Mutable = v16;
      goto LABEL_34;
    }

    v18 = __log_SCNetworkConfiguration();
    v19 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v18, v19))
    {
      v20 = _os_log_pack_size();
      v28 = &v33 - ((MEMORY[0x1EEE9AC00](v20, v21, v22, v23, v24, v25, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
      v29 = *__error();
      v30 = _os_log_pack_fill();
      *v30 = 67109120;
      v30[1] = v14;
      __SC_log_send(6, v18, v19, v28);
    }
  }

LABEL_34:
  v31 = *MEMORY[0x1E69E9840];
  return Mutable;
}

CFStringRef pci_port(void *a1, int a2, const void *a3)
{
  v64 = *MEMORY[0x1E69E9840];
  existing = 0;
  keys = @"AAPL,slot-name";
  v63 = 0;
  values = a1;
  v61 = 0;
  v5 = MEMORY[0x1E695E9D8];
  v6 = MEMORY[0x1E695E9E8];
  v7 = CFDictionaryCreate(0, &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  keys = @"IOProviderClass";
  v63 = @"IOPropertyMatch";
  values = @"IOPCIDevice";
  v61 = v7;
  v8 = CFDictionaryCreate(0, &keys, &values, 2, v5, v6);
  CFRelease(v7);
  MatchingServices = IOServiceGetMatchingServices(masterPort, v8, &existing);
  if (MatchingServices)
  {
    v10 = MatchingServices;
    v11 = __log_SCNetworkConfiguration();
    v12 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v11, v12))
    {
      v13 = _os_log_pack_size();
      v21 = &v55[-((MEMORY[0x1EEE9AC00](v13, v14, v15, v16, v17, v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v22 = *__error();
      v23 = _os_log_pack_fill();
      *v23 = 67109120;
      v23[1] = v10;
      __SC_log_send(6, v11, v12, v21);
    }

LABEL_28:
    v38 = 0;
    goto LABEL_29;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v25 = IOIteratorNext(existing);
  if (v25)
  {
    v26 = v25;
    while (1)
    {
      v58 = 0;
      v27 = MEMORY[0x1B26F4630](v26, "IOService", 1, &v58);
      if (v27)
      {
        break;
      }

      while (1)
      {
        v28 = IOIteratorNext(v58);
        v29 = v28;
        if (!v28)
        {
          break;
        }

        if (IOObjectConformsTo(v28, "IONetworkInterface"))
        {
          properties = 0;
          IORegistryEntryCreateCFProperties(v29, &properties, 0, 0);
          if (properties)
          {
            valuePtr = a2;
            Value = CFDictionaryGetValue(properties, @"IOInterfaceType");
            if (Value)
            {
              v31 = Value;
              TypeID = CFNumberGetTypeID();
              if (CFGetTypeID(v31) != TypeID || !CFNumberGetValue(v31, kCFNumberIntType, &valuePtr))
              {
                valuePtr = a2;
              }
            }

            if (valuePtr == a2)
            {
              v33 = IODictionaryCopyBSDName(properties);
              if (v33)
              {
                v34 = v33;
                CFArrayAppendValue(Mutable, v33);
                CFRelease(v34);
              }
            }

            CFRelease(properties);
          }
        }

        IOObjectRelease(v29);
      }

      IOObjectRelease(v58);
      IOObjectRelease(v26);
      v26 = IOIteratorNext(existing);
      if (!v26)
      {
        goto LABEL_20;
      }
    }

    v39 = v27;
    v40 = __log_SCNetworkConfiguration();
    v41 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v40, v41))
    {
      v42 = _os_log_pack_size();
      v50 = &v55[-((MEMORY[0x1EEE9AC00](v42, v43, v44, v45, v46, v47, v48, v49) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v51 = *__error();
      v52 = _os_log_pack_fill();
      *v52 = 67109120;
      v52[1] = v39;
      __SC_log_send(6, v40, v41, v50);
    }

    CFRelease(Mutable);
    goto LABEL_28;
  }

LABEL_20:
  IOObjectRelease(existing);
  Count = CFArrayGetCount(Mutable);
  if (Count < 2 || (v36 = Count, v65.location = 0, v65.length = Count, CFArraySortValues(Mutable, v65, compare_bsdNames, 0), v66.location = 0, v66.length = v36, FirstIndexOfValue = CFArrayGetFirstIndexOfValue(Mutable, v66, a3), FirstIndexOfValue == -1))
  {
    v38 = 0;
  }

  else
  {
    v38 = CFStringCreateWithFormat(0, 0, @"%ld", FirstIndexOfValue + 1);
  }

  CFRelease(Mutable);
LABEL_29:
  v53 = *MEMORY[0x1E69E9840];
  return v38;
}

CFComparisonResult compare_bsdNames(const __CFString *a1, const __CFString *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return CFStringCompare(a1, a2, 0);
}

uint64_t isBluetoothBuiltin(_BYTE *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  existing = 0;
  v2 = masterPort;
  v3 = IOServiceMatching("IOBluetoothHCIController");
  MatchingServices = IOServiceGetMatchingServices(v2, v3, &existing);
  v5 = existing;
  if (MatchingServices)
  {
    v6 = 1;
  }

  else
  {
    v6 = existing == 0;
  }

  if (v6)
  {
    if (MatchingServices)
    {
      v7 = __log_SCNetworkConfiguration();
      v8 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v7, v8))
      {
        v9 = _os_log_pack_size();
        v17 = &valuePtr - ((MEMORY[0x1EEE9AC00](v9, v10, v11, v12, v13, v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
        v18 = *__error();
        v19 = _os_log_pack_fill();
        *v19 = 67109120;
        v19[1] = MatchingServices;
        __SC_log_send(6, v7, v8, v17);
      }
    }

    v20 = 0;
    *a1 = 0;
  }

  else
  {
    *a1 = 1;
    v21 = IOIteratorNext(v5);
    IOObjectRelease(existing);
    if (v21)
    {
      CFProperty = IORegistryEntryCreateCFProperty(v21, @"idVendor", 0, 0);
      if (CFProperty)
      {
        v23 = CFProperty;
        valuePtr = 0;
        TypeID = CFNumberGetTypeID();
        v20 = 0;
        if (CFGetTypeID(v23) == TypeID)
        {
          if (CFNumberGetValue(v23, kCFNumberIntType, &valuePtr))
          {
            v25 = valuePtr == 1452;
          }

          else
          {
            v25 = 0;
          }

          v20 = v25;
        }

        CFRelease(v23);
      }

      else
      {
        v20 = 0;
      }

      IOObjectRelease(v21);
    }

    else
    {
      v20 = 0;
    }
  }

  v26 = *MEMORY[0x1E69E9840];
  return v20;
}

void set_connection_script(uint64_t a1, const void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  Mutable = *(a1 + 224);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(a1 + 224) = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, @"Modem");
  if (Value)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v7 = MutableCopy;
  if (a2)
  {
    CFDictionarySetValue(MutableCopy, @"ConnectionScript", a2);
  }

  else
  {
    CFDictionaryRemoveValue(MutableCopy, @"ConnectionScript");
  }

  Count = CFDictionaryGetCount(v7);
  v9 = *(a1 + 224);
  if (Count < 1)
  {
    CFDictionaryRemoveValue(v9, @"Modem");
  }

  else
  {
    CFDictionarySetValue(v9, @"Modem", v7);
  }

  CFRelease(v7);
  if (!CFDictionaryGetCount(*(a1 + 224)))
  {
    CFRelease(*(a1 + 224));
    *(a1 + 224) = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t is_valid_connection_script(const __CFString *a1)
{
  v44 = *MEMORY[0x1E69E9840];
  _SC_cfstring_to_cstring(a1, v43, 1024, 0x8000100u);
  started = sysdir_start_search_path_enumeration(SYSDIR_DIRECTORY_LIBRARY, SYSDIR_DOMAIN_MASK_SYSTEM|SYSDIR_DOMAIN_MASK_LOCAL);
  result = MEMORY[0x1B26F5740](started, v42);
  if (result)
  {
    v4 = result;
    *&v3 = 136315138;
    v40 = v3;
    do
    {
      memset(&v41, 0, sizeof(v41));
      if (v43[0] == 47)
      {
        v42[0] = 0;
      }

      else
      {
        __strlcat_chk();
      }

      __strlcat_chk();
      if (stat(v42, &v41))
      {
        if (*__error() != 2)
        {
          v5 = __log_SCNetworkConfiguration();
          v6 = _SC_syslog_os_log_mapping(6);
          if (__SC_log_enabled(6, v5, v6))
          {
            v7 = _os_log_pack_size();
            v15 = &v40 - ((MEMORY[0x1EEE9AC00](v7, v8, v9, v10, v11, v12, v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
            v16 = *__error();
            v17 = _os_log_pack_fill();
            v18 = __error();
            v19 = strerror(*v18);
            *v17 = v40;
            *(v17 + 4) = v19;
            v20 = v5;
            v21 = v6;
            v22 = v15;
LABEL_17:
            __SC_log_send(6, v20, v21, v22);
            goto LABEL_19;
          }

          goto LABEL_19;
        }
      }

      else if ((v41.st_mode & 0xF000) == 0x8000)
      {
        goto LABEL_21;
      }

      v23 = strlen(v42);
      if (v23 < 5 || !strstr(&v42[v23 - 6], ".ccl"))
      {
        __strlcat_chk();
        if (stat(v42, &v41))
        {
          if (*__error() == 2)
          {
            goto LABEL_19;
          }

          v24 = __log_SCNetworkConfiguration();
          v25 = _SC_syslog_os_log_mapping(6);
          if (!__SC_log_enabled(6, v24, v25))
          {
            goto LABEL_19;
          }

          v26 = _os_log_pack_size();
          v34 = &v40 - ((MEMORY[0x1EEE9AC00](v26, v27, v28, v29, v30, v31, v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
          v35 = *__error();
          v36 = _os_log_pack_fill();
          v37 = __error();
          v38 = strerror(*v37);
          *v36 = v40;
          *(v36 + 4) = v38;
          v20 = v24;
          v21 = v25;
          v22 = v34;
          goto LABEL_17;
        }
      }

      if ((v41.st_mode & 0xF000) == 0x4000)
      {
LABEL_21:
        result = 1;
        break;
      }

LABEL_19:
      result = MEMORY[0x1B26F5740](v4, v42);
      v4 = result;
    }

    while (result);
  }

  v39 = *MEMORY[0x1E69E9840];
  return result;
}

const __SCNetworkInterface *findInterface(const __CFArray *a1, const void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
LABEL_6:
    ValueAtIndex = 0;
  }

  else
  {
    v5 = Count;
    v6 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
      BSDName = SCNetworkInterfaceGetBSDName(ValueAtIndex);
      if (BSDName)
      {
        if (CFEqual(BSDName, a2))
        {
          break;
        }
      }

      if (v5 == ++v6)
      {
        goto LABEL_6;
      }
    }

    CFRetain(ValueAtIndex);
  }

  v9 = *MEMORY[0x1E69E9840];
  return ValueAtIndex;
}

void localizeNumberString(CFStringRef *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  if (*a1)
  {
    Length = CFStringGetLength(*a1);
    rangep.location = 0;
    rangep.length = Length;
    v4 = CFLocaleCopyCurrent();
    v5 = CFNumberFormatterCreate(0, v4, kCFNumberFormatterNoStyle);
    v6 = CFNumberFormatterCreateNumberFromString(0, v5, v1, &rangep, 1uLL);
    if (v6 && (v7 = rangep.length, v7 == CFStringGetLength(v1)))
    {
      StringWithNumber = CFNumberFormatterCreateStringWithNumber(0, v5, v6);
    }

    else
    {
      StringWithNumber = CFRetain(v1);
    }

    v9 = StringWithNumber;
    if (v4)
    {
      CFRelease(v4);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    CFRelease(v1);
    *a1 = v9;
  }

  v10 = *MEMORY[0x1E69E9840];
}

__CFArray *copyPerInterfaceConfigurationPaths(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  Private = __SCNetworkServiceCreatePrivate(0, *(a1 + 80), *(a1 + 96), a1);
  v5 = SCNetworkSetCopyAll(*(a1 + 80));
  if (v5)
  {
    v6 = v5;
    Count = CFArrayGetCount(v5);
    if (Count < 1)
    {
      Mutable = 0;
    }

    else
    {
      v8 = Count;
      Mutable = 0;
      v10 = 0;
      v11 = MEMORY[0x1E695E9C0];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v10);
        v13 = SCNetworkSetCopyServices(ValueAtIndex);
        v19.length = CFArrayGetCount(v13);
        v19.location = 0;
        if (CFArrayContainsValue(v13, v19, Private))
        {
          SetID = SCNetworkSetGetSetID(ValueAtIndex);
          SetNetworkInterfaceEntity = SCPreferencesPathKeyCreateSetNetworkInterfaceEntity(0, SetID, *(a1 + 112), a2);
          if (!Mutable)
          {
            Mutable = CFArrayCreateMutable(0, 0, v11);
          }

          CFArrayAppendValue(Mutable, SetNetworkInterfaceEntity);
          CFRelease(SetNetworkInterfaceEntity);
        }

        CFRelease(v13);
        ++v10;
      }

      while (v8 != v10);
    }

    CFRelease(Private);
    CFRelease(v6);
  }

  else
  {
    CFRelease(Private);
    Mutable = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void __addExtendedConfigurationType(const void *a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (CFEqual(a1, *a3) || (v5 = *(a3 + 8), v11.length = CFArrayGetCount(v5), v11.location = 0, CFArrayContainsValue(v5, v11, a1)))
  {
    v6 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v7 = *(a3 + 8);
    v8 = *MEMORY[0x1E69E9840];

    CFArrayAppendValue(v7, a1);
  }
}

uint64_t _SCDynamicStoreCacheIsActive(unsigned __int8 *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  TypeID = SCDynamicStoreGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID)
  {
    result = a1[200];
  }

  else
  {
    _SCErrorSet(2001);
    result = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SCNetworkProtocolCreatePrivate(uint64_t a1, const __CFString *a2, const void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (__SCNetworkProtocolInitialize_initialized != -1)
  {
    __SCNetworkProtocolCreatePrivate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    *(Instance + 16) = CFStringCreateCopy(0, a2);
    *(Instance + 24) = CFRetain(a3);
  }

  v6 = *MEMORY[0x1E69E9840];
  return Instance;
}

BOOL __SCNetworkProtocolIsValidType(const __CFString *cf1)
{
  v2 = 0;
  v5 = *MEMORY[0x1E69E9840];
  while (!CFEqual(cf1, *__SCNetworkProtocolIsValidType_valid_types[v2]))
  {
    if (++v2 == 4)
    {
      v6.length = CFStringGetLength(cf1);
      v6.location = 0;
      result = CFStringFindWithOptions(cf1, @".", v6, 0, 0) != 0;
      goto LABEL_6;
    }
  }

  result = 1;
LABEL_6:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

CFComparisonResult _SCNetworkProtocolCompare(const __SCNetworkProtocol *a1, const __SCNetworkProtocol *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  ProtocolType = SCNetworkProtocolGetProtocolType(a1);
  v4 = SCNetworkProtocolGetProtocolType(a2);
  v5 = *MEMORY[0x1E69E9840];

  return CFStringCompare(ProtocolType, v4, 0);
}

CFStringRef SCNetworkProtocolGetProtocolType(SCNetworkProtocolRef protocol)
{
  v5 = *MEMORY[0x1E69E9840];
  if (__SCNetworkProtocolInitialize_initialized == -1)
  {
    if (!protocol)
    {
LABEL_6:
      _SCErrorSet(1002);
      result = 0;
      goto LABEL_7;
    }
  }

  else
  {
    __SCNetworkProtocolCreatePrivate_cold_1();
    if (!protocol)
    {
      goto LABEL_6;
    }
  }

  v2 = __kSCNetworkProtocolTypeID;
  if (CFGetTypeID(protocol) != v2)
  {
    goto LABEL_6;
  }

  result = *(protocol + 2);
LABEL_7:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeID SCNetworkProtocolGetTypeID(void)
{
  v2 = *MEMORY[0x1E69E9840];
  if (__SCNetworkProtocolInitialize_initialized != -1)
  {
    __SCNetworkProtocolCreatePrivate_cold_1();
  }

  result = __kSCNetworkProtocolTypeID;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

CFDictionaryRef SCNetworkProtocolGetConfiguration(SCNetworkProtocolRef protocol)
{
  v9 = *MEMORY[0x1E69E9840];
  if (__SCNetworkProtocolInitialize_initialized == -1)
  {
    if (!protocol)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __SCNetworkProtocolCreatePrivate_cold_1();
    if (!protocol)
    {
      goto LABEL_6;
    }
  }

  v2 = __kSCNetworkProtocolTypeID;
  if (CFGetTypeID(protocol) == v2)
  {
    v3 = *(protocol + 3);
    NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(v3 + 16), *(protocol + 2));
    Value = __SCNetworkConfigurationGetValue(*(v3 + 32), NetworkServiceEntity);
    CFRelease(NetworkServiceEntity);
    v6 = *MEMORY[0x1E69E9840];
    return Value;
  }

LABEL_6:
  _SCErrorSet(1002);
  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

Boolean SCNetworkProtocolGetEnabled(SCNetworkProtocolRef protocol)
{
  v9 = *MEMORY[0x1E69E9840];
  if (__SCNetworkProtocolInitialize_initialized == -1)
  {
    if (!protocol)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __SCNetworkProtocolCreatePrivate_cold_1();
    if (!protocol)
    {
      goto LABEL_6;
    }
  }

  v2 = __kSCNetworkProtocolTypeID;
  if (CFGetTypeID(protocol) == v2)
  {
    v3 = *(protocol + 3);
    NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(v3 + 16), *(protocol + 2));
    PrefsEnabled = __getPrefsEnabled(*(v3 + 32), NetworkServiceEntity);
    CFRelease(NetworkServiceEntity);
    v6 = *MEMORY[0x1E69E9840];
    return PrefsEnabled;
  }

LABEL_6:
  _SCErrorSet(1002);
  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

Boolean SCNetworkProtocolSetConfiguration(SCNetworkProtocolRef protocol, CFDictionaryRef config)
{
  block[7] = *MEMORY[0x1E69E9840];
  if (__SCNetworkProtocolInitialize_initialized == -1)
  {
    if (!protocol)
    {
LABEL_14:
      _SCErrorSet(1002);
      LOBYTE(v7) = 0;
      goto LABEL_15;
    }
  }

  else
  {
    __SCNetworkProtocolCreatePrivate_cold_1();
    if (!protocol)
    {
      goto LABEL_14;
    }
  }

  v4 = __kSCNetworkProtocolTypeID;
  if (CFGetTypeID(protocol) != v4)
  {
    goto LABEL_14;
  }

  v5 = *(protocol + 3);
  if (!__SCNetworkServiceExists(v5))
  {
    v22 = __log_SCNetworkConfiguration();
    v23 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v22, v23))
    {
      v24 = _os_log_pack_size();
      v32 = block - ((MEMORY[0x1EEE9AC00](v24, v25, v26, v27, v28, v29, v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = *__error();
      v34 = _os_log_pack_fill();
      v35 = *(protocol + 2);
      *v34 = 138412546;
      *(v34 + 4) = v35;
      *(v34 + 12) = 2112;
      *(v34 + 14) = v5;
      __SC_log_send(3, v22, v23, v32);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SC_crash_once_block_invoke_2;
    block[3] = &__block_descriptor_tmp_37_0;
    block[5] = 0;
    block[6] = 0;
    block[4] = "SCNetworkProtocolSetConfiguration() w/removed service";
    if (_SC_crash_once_once_2 != -1)
    {
      dispatch_once(&_SC_crash_once_once_2, block);
    }

    goto LABEL_14;
  }

  NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(*(protocol + 3) + 16), *(protocol + 2));
  v7 = __SCNetworkConfigurationSetValue(*(v5 + 32), NetworkServiceEntity, config, 1);
  CFRelease(NetworkServiceEntity);
  if (v7)
  {
    v8 = __log_SCNetworkConfiguration();
    v9 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v8, v9))
    {
      v10 = _os_log_pack_size();
      v18 = block - ((MEMORY[0x1EEE9AC00](v10, v11, v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = *__error();
      v20 = _os_log_pack_fill();
      v21 = @"NULL";
      if (config)
      {
        v21 = config;
      }

      *v20 = 138412546;
      *(v20 + 4) = protocol;
      *(v20 + 12) = 2112;
      *(v20 + 14) = v21;
      __SC_log_send(7, v8, v9, v18);
    }
  }

LABEL_15:
  v36 = *MEMORY[0x1E69E9840];
  return v7;
}

Boolean SCNetworkProtocolSetEnabled(SCNetworkProtocolRef protocol, Boolean enabled)
{
  v2 = enabled;
  block[7] = *MEMORY[0x1E69E9840];
  if (__SCNetworkProtocolInitialize_initialized == -1)
  {
    if (!protocol)
    {
LABEL_14:
      _SCErrorSet(1002);
      LOBYTE(v7) = 0;
      goto LABEL_15;
    }
  }

  else
  {
    __SCNetworkProtocolCreatePrivate_cold_1();
    if (!protocol)
    {
      goto LABEL_14;
    }
  }

  v4 = __kSCNetworkProtocolTypeID;
  if (CFGetTypeID(protocol) != v4)
  {
    goto LABEL_14;
  }

  v5 = *(protocol + 3);
  if (!__SCNetworkServiceExists(v5))
  {
    v22 = __log_SCNetworkConfiguration();
    v23 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v22, v23))
    {
      v24 = _os_log_pack_size();
      v32 = block - ((MEMORY[0x1EEE9AC00](v24, v25, v26, v27, v28, v29, v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = *__error();
      v34 = _os_log_pack_fill();
      v35 = *(protocol + 2);
      *v34 = 138412546;
      *(v34 + 4) = v35;
      *(v34 + 12) = 2112;
      *(v34 + 14) = v5;
      __SC_log_send(3, v22, v23, v32);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SC_crash_once_block_invoke_2;
    block[3] = &__block_descriptor_tmp_37_0;
    block[5] = 0;
    block[6] = 0;
    block[4] = "SCNetworkProtocolSetEnabled() w/removed service";
    if (_SC_crash_once_once_2 != -1)
    {
      dispatch_once(&_SC_crash_once_once_2, block);
    }

    goto LABEL_14;
  }

  NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(*(protocol + 3) + 16), *(protocol + 2));
  v7 = __setPrefsEnabled(*(v5 + 32), NetworkServiceEntity, v2);
  CFRelease(NetworkServiceEntity);
  if (v7)
  {
    v8 = __log_SCNetworkConfiguration();
    v9 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v8, v9))
    {
      v10 = _os_log_pack_size();
      v18 = block - ((MEMORY[0x1EEE9AC00](v10, v11, v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = *__error();
      v20 = _os_log_pack_fill();
      v21 = "Enabled";
      if (!v2)
      {
        v21 = "Disabled";
      }

      *v20 = 138412546;
      *(v20 + 4) = protocol;
      *(v20 + 12) = 2080;
      *(v20 + 14) = v21;
      __SC_log_send(7, v8, v9, v18);
    }
  }

LABEL_15:
  v36 = *MEMORY[0x1E69E9840];
  return v7;
}

void __SCNetworkProtocolDeallocate(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  CFRelease(*(a1 + 16));
  v2 = *(a1 + 24);
  v3 = *MEMORY[0x1E69E9840];

  CFRelease(v2);
}

uint64_t __SCNetworkProtocolEqual(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
LABEL_7:
    result = 1;
    goto LABEL_9;
  }

  result = CFEqual(*(a1 + 16), *(a2 + 16));
  if (result)
  {
    v5 = *(a1 + 24);
    v6 = *(a2 + 24);
    if (v5 != v6 && (!v5 || !v6 || !CFEqual(v5, v6)))
    {
      result = 0;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_9:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

CFHashCode __SCNetworkProtocolHash(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  v2 = *MEMORY[0x1E69E9840];

  return CFHash(v1);
}

__CFString *__SCNetworkProtocolCopyDescription(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<SCNetworkProtocol %p [%p]> {", a1, v2);
  CFStringAppendFormat(Mutable, 0, @"id = %@", a1[2]);
  CFStringAppendFormat(Mutable, 0, @", service = %p", a1[3]);
  CFStringAppendFormat(Mutable, 0, @", prefs = %p", *(a1[3] + 32));
  CFStringAppendFormat(Mutable, 0, @"}");
  v4 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void *__SCNetworkServiceCreatePrivate(uint64_t a1, const void *a2, const __CFString *a3, const void *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (__SCNetworkServiceInitialize_initialized != -1)
  {
    __SCNetworkServiceCreatePrivate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    if (a2)
    {
      v8 = CFRetain(a2);
    }

    else
    {
      v8 = 0;
    }

    Instance[4] = v8;
    Instance[2] = CFStringCreateCopy(0, a3);
    if (a4)
    {
      v9 = CFRetain(a4);
    }

    else
    {
      v9 = 0;
    }

    Instance[3] = v9;
  }

  v10 = *MEMORY[0x1E69E9840];
  return Instance;
}

CFComparisonResult _SCNetworkServiceCompare(const __SCNetworkService *a1, const __SCNetworkService *a2, const __CFArray *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  ServiceID = SCNetworkServiceGetServiceID(a1);
  v6 = SCNetworkServiceGetServiceID(a2);
  if (a3)
  {
    Count = CFArrayGetCount(a3);
    v17.location = 0;
    v17.length = Count;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(a3, v17, ServiceID);
    v18.location = 0;
    v18.length = Count;
    v9 = CFArrayGetFirstIndexOfValue(a3, v18, v6);
    if (FirstIndexOfValue > v9)
    {
      v10 = v9 == -1;
      v11 = -1;
LABEL_6:
      if (v10)
      {
        result = v11;
      }

      else
      {
        result = -v11;
      }

      v13 = *MEMORY[0x1E69E9840];
      return result;
    }

    if (FirstIndexOfValue < v9)
    {
      v10 = FirstIndexOfValue == -1;
      v11 = 1;
      goto LABEL_6;
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return CFStringCompare(ServiceID, v6, 0);
}

CFStringRef SCNetworkServiceGetServiceID(SCNetworkServiceRef service)
{
  v5 = *MEMORY[0x1E69E9840];
  if (__SCNetworkServiceInitialize_initialized == -1)
  {
    if (!service)
    {
LABEL_6:
      _SCErrorSet(1002);
      result = 0;
      goto LABEL_7;
    }
  }

  else
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (!service)
    {
      goto LABEL_6;
    }
  }

  v2 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(service) != v2)
  {
    goto LABEL_6;
  }

  result = *(service + 2);
LABEL_7:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

__CFArray *__SCNetworkServiceCopyAllEnabled(const __SCPreferences *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = SCNetworkSetCopyAll(a1);
  if (v1)
  {
    v2 = v1;
    Count = CFArrayGetCount(v1);
    if (Count >= 1)
    {
      v4 = Count;
      Mutable = 0;
      v6 = 0;
      v7 = MEMORY[0x1E695E9C0];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, v6);
        v9 = SCNetworkSetCopyServices(ValueAtIndex);
        if (v9)
        {
          v10 = v9;
          v11 = CFArrayGetCount(v9);
          if (v11 >= 1)
          {
            v12 = v11;
            for (i = 0; v12 != i; ++i)
            {
              v14 = CFArrayGetValueAtIndex(v10, i);
              if (SCNetworkServiceGetEnabled(v14))
              {
                if (!Mutable)
                {
                  Mutable = CFArrayCreateMutable(0, 0, v7);
LABEL_12:
                  CFArrayAppendValue(Mutable, v14);
                  continue;
                }

                v18.length = CFArrayGetCount(Mutable);
                v18.location = 0;
                if (!CFArrayContainsValue(Mutable, v18, v14))
                {
                  goto LABEL_12;
                }
              }
            }
          }

          CFRelease(v10);
        }

        if (++v6 == v4)
        {
          goto LABEL_19;
        }
      }
    }

    Mutable = 0;
LABEL_19:
    CFRelease(v2);
  }

  else
  {
    Mutable = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return Mutable;
}

Boolean SCNetworkServiceGetEnabled(SCNetworkServiceRef service)
{
  v8 = *MEMORY[0x1E69E9840];
  if (__SCNetworkServiceInitialize_initialized == -1)
  {
    if (!service)
    {
      goto LABEL_7;
    }
  }

  else
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (!service)
    {
      goto LABEL_7;
    }
  }

  v2 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(service) == v2 && *(service + 4))
  {
    NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(service + 2), 0);
    PrefsEnabled = __getPrefsEnabled(*(service + 4), NetworkServiceEntity);
    CFRelease(NetworkServiceEntity);
    v5 = *MEMORY[0x1E69E9840];
    return PrefsEnabled;
  }

LABEL_7:
  _SCErrorSet(1002);
  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __SCNetworkServiceExistsForInterface(const __CFArray *a1, const void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  TypeID = CFArrayGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID && (Count = CFArrayGetCount(a1), Count >= 1))
  {
    v6 = Count;
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
      Interface = SCNetworkServiceGetInterface(ValueAtIndex);
      if (Interface)
      {
        break;
      }

LABEL_9:
      result = 0;
      if (++v7 == v6)
      {
        goto LABEL_12;
      }
    }

    v10 = Interface;
    while (!CFEqual(a2, v10))
    {
      v10 = SCNetworkInterfaceGetInterface(v10);
      if (!v10)
      {
        goto LABEL_9;
      }
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

LABEL_12:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

SCNetworkInterfaceRef SCNetworkServiceGetInterface(SCNetworkServiceRef service)
{
  v8 = *MEMORY[0x1E69E9840];
  if (__SCNetworkServiceInitialize_initialized != -1)
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (service)
    {
      goto LABEL_3;
    }

LABEL_11:
    _SCErrorSet(1002);
    result = 0;
    goto LABEL_12;
  }

  if (!service)
  {
    goto LABEL_11;
  }

LABEL_3:
  v2 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(service) != v2 || !*(service + 4))
  {
    goto LABEL_11;
  }

  if (!*(service + 3))
  {
    NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(service + 2), @"Interface");
    Value = SCPreferencesPathGetValue(*(service + 4), NetworkServiceEntity);
    CFRelease(NetworkServiceEntity);
    TypeID = CFDictionaryGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == TypeID)
      {
        *(service + 3) = _SCNetworkInterfaceCreateWithEntity(0, Value, service);
      }
    }
  }

  result = *(service + 3);
LABEL_12:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

Boolean SCNetworkServiceAddProtocolType(SCNetworkServiceRef service, CFStringRef protocolType)
{
  block[7] = *MEMORY[0x1E69E9840];
  if (__SCNetworkServiceInitialize_initialized != -1)
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (service)
    {
      goto LABEL_3;
    }

LABEL_15:
    _SCErrorSet(1002);
    LOBYTE(v6) = 0;
    goto LABEL_16;
  }

  if (!service)
  {
    goto LABEL_15;
  }

LABEL_3:
  v4 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(service) != v4 || !*(service + 4) || !__SCNetworkProtocolIsValidType(protocolType))
  {
    goto LABEL_15;
  }

  if (!__SCNetworkServiceExists(service))
  {
    v7 = _SC_LOG_DEFAULT();
    v8 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v7, v8))
    {
      v9 = _os_log_pack_size();
      v17 = block - ((MEMORY[0x1EEE9AC00](v9, v10, v11, v12, v13, v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = *__error();
      v19 = _os_log_pack_fill();
      *v19 = 138412546;
      *(v19 + 4) = service;
      *(v19 + 12) = 2112;
      *(v19 + 14) = protocolType;
      __SC_log_send(3, v7, v8, v17);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SC_crash_once_block_invoke_3;
    block[3] = &__block_descriptor_tmp_51;
    block[5] = 0;
    block[6] = 0;
    block[4] = "SCNetworkServiceAddProtocolType() w/removed service";
    if (_SC_crash_once_once_3 != -1)
    {
      dispatch_once(&_SC_crash_once_once_3, block);
    }

    goto LABEL_15;
  }

  NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(service + 2), protocolType);
  if (!SCPreferencesPathGetValue(*(service + 4), NetworkServiceEntity))
  {
    v22 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v23 = SCPreferencesPathSetValue(*(service + 4), NetworkServiceEntity, v22);
    CFRelease(v22);
    if (!v23)
    {
      goto LABEL_9;
    }

    v24 = SCNetworkServiceCopyProtocol(service, protocolType);
    if (!v24)
    {
      SCNetworkServiceAddProtocolType_cold_3();
    }

    v25 = v24;
    v26 = *(service + 3);
    if (v26)
    {
      InterfaceType = SCNetworkInterfaceGetInterfaceType(*(service + 3));
      Interface = SCNetworkInterfaceGetInterface(*(service + 3));
      if (Interface)
      {
        v29 = Interface;
        v30 = SCNetworkInterfaceGetInterfaceType(Interface);
        v31 = __copyProtocolTemplate(InterfaceType, v30, protocolType);
        if (v31)
        {
          v32 = v31;
          do
          {
            v26 = v29;
            v29 = SCNetworkInterfaceGetInterface(v29);
          }

          while (v29);
LABEL_26:
          TemplateOverrides = __SCNetworkInterfaceGetTemplateOverrides(v26, protocolType);
          TypeID = CFDictionaryGetTypeID();
          if (TemplateOverrides && CFGetTypeID(TemplateOverrides) == TypeID)
          {
            MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v32);
            CFDictionaryApplyFunction(TemplateOverrides, mergeDict, MutableCopy);
            CFRelease(v32);
            v32 = MutableCopy;
          }

          if (v32)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        v32 = __copyProtocolTemplate(InterfaceType, 0, protocolType);
        if (v32)
        {
          goto LABEL_26;
        }
      }
    }

    v32 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v32)
    {
      SCNetworkServiceAddProtocolType_cold_2();
    }

LABEL_31:
    if (SCNetworkProtocolSetConfiguration(v25, v32))
    {
      v36 = CFDictionaryContainsKey(v32, @"__INACTIVE__") == 0;
      v6 = SCNetworkProtocolSetEnabled(v25, v36);
    }

    else
    {
      v6 = 0;
    }

    CFRelease(v32);
    CFRelease(v25);
    if (v6)
    {
      v37 = _SC_LOG_DEFAULT();
      v38 = _SC_syslog_os_log_mapping(7);
      if (__SC_log_enabled(7, v37, v38))
      {
        v39 = _os_log_pack_size();
        v47 = block - ((MEMORY[0x1EEE9AC00](v39, v40, v41, v42, v43, v44, v45, v46) + 15) & 0xFFFFFFFFFFFFFFF0);
        v48 = *__error();
        v49 = _os_log_pack_fill();
        *v49 = 138412546;
        *(v49 + 4) = service;
        *(v49 + 12) = 2112;
        *(v49 + 14) = protocolType;
        __SC_log_send(7, v37, v38, v47);
      }
    }

    goto LABEL_10;
  }

  _SCErrorSet(1005);
LABEL_9:
  LOBYTE(v6) = 0;
LABEL_10:
  CFRelease(NetworkServiceEntity);
LABEL_16:
  v20 = *MEMORY[0x1E69E9840];
  return v6;
}

BOOL __SCNetworkServiceExists(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  result = *(a1 + 32) && (NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(a1 + 16), @"Interface"), Value = SCPreferencesPathGetValue(*(a1 + 32), NetworkServiceEntity), CFRelease(NetworkServiceEntity), TypeID = CFDictionaryGetTypeID(), Value) && CFGetTypeID(Value) == TypeID;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

SCNetworkProtocolRef SCNetworkServiceCopyProtocol(SCNetworkServiceRef service, CFStringRef protocolType)
{
  v15 = *MEMORY[0x1E69E9840];
  if (__SCNetworkServiceInitialize_initialized != -1)
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (service)
    {
      goto LABEL_3;
    }

LABEL_18:
    v12 = 1002;
    goto LABEL_19;
  }

  if (!service)
  {
    goto LABEL_18;
  }

LABEL_3:
  v4 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(service) != v4)
  {
    goto LABEL_18;
  }

  if (!*(service + 4))
  {
    goto LABEL_18;
  }

  TypeID = CFStringGetTypeID();
  if (!protocolType || CFGetTypeID(protocolType) != TypeID)
  {
    goto LABEL_18;
  }

  NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(service + 2), 0);
  Value = SCPreferencesPathGetValue(*(service + 4), NetworkServiceEntity);
  CFRelease(NetworkServiceEntity);
  v8 = CFDictionaryGetTypeID();
  if (!Value || CFGetTypeID(Value) != v8)
  {
    v12 = 1001;
LABEL_19:
    _SCErrorSet(v12);
    Private = 0;
    goto LABEL_20;
  }

  v9 = _copyInterfaceEntityTypes(Value);
  if (CFSetContainsValue(v9, protocolType))
  {
    v10 = 1002;
  }

  else
  {
    if (CFDictionaryContainsKey(Value, protocolType))
    {
      Private = __SCNetworkProtocolCreatePrivate(0, protocolType, service);
      goto LABEL_15;
    }

    v10 = 1004;
  }

  _SCErrorSet(v10);
  Private = 0;
LABEL_15:
  CFRelease(v9);
LABEL_20:
  v13 = *MEMORY[0x1E69E9840];
  return Private;
}

CFArrayRef SCNetworkServiceCopyAll(SCPreferencesRef prefs)
{
  v71 = *MEMORY[0x1E69E9840];
  NetworkServices = SCPreferencesPathKeyCreateNetworkServices(0);
  Value = SCPreferencesPathGetValue(prefs, NetworkServices);
  CFRelease(NetworkServices);
  if (!Value)
  {
    v10 = *MEMORY[0x1E69E9840];
    v11 = MEMORY[0x1E695E9C0];

    return CFArrayCreateMutable(0, 0, v11);
  }

  TypeID = CFDictionaryGetTypeID();
  if (CFGetTypeID(Value) != TypeID)
  {
    Mutable = 0;
    goto LABEL_32;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  Count = CFDictionaryGetCount(Value);
  if (Count < 1)
  {
    goto LABEL_32;
  }

  v7 = Count;
  v64 = prefs;
  v65 = Mutable;
  memset(v70, 0, sizeof(v70));
  memset(v69, 0, sizeof(v69));
  if (Count < 0x41)
  {
    v8 = v70;
    v9 = v69;
  }

  else
  {
    v8 = MEMORY[0x1B26F3AA0](0, 8 * Count, 0xC0040B8AA526DLL, 0);
    v9 = MEMORY[0x1B26F3AA0](0, 8 * v7, 0xC0040B8AA526DLL, 0);
  }

  CFDictionaryGetKeysAndValues(Value, v8, v9);
  v13 = 0;
  v68 = @"Interface";
  *&v14 = 138412290;
  v67 = v14;
  *&v14 = 138412546;
  v66 = v14;
  do
  {
    v15 = v9[v13];
    v16 = CFDictionaryGetTypeID();
    if (!v15 || CFGetTypeID(v15) != v16)
    {
      v33 = _SC_LOG_DEFAULT();
      v34 = _SC_syslog_os_log_mapping(6);
      if (!__SC_log_enabled(6, v33, v34))
      {
        goto LABEL_25;
      }

      v35 = _os_log_pack_size();
      v43 = &v64 - ((MEMORY[0x1EEE9AC00](v35, v36, v37, v38, v39, v40, v41, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
      v44 = *__error();
      v45 = _os_log_pack_fill();
      v46 = v8[v13];
      *v45 = v67;
      *(v45 + 4) = v46;
      v31 = v33;
      v32 = v34;
      v47 = v43;
      goto LABEL_24;
    }

    v17 = CFDictionaryGetValue(v9[v13], v68);
    v18 = CFDictionaryGetTypeID();
    if (!v17 || CFGetTypeID(v17) != v18)
    {
      v48 = _SC_LOG_DEFAULT();
      v49 = _SC_syslog_os_log_mapping(6);
      if (!__SC_log_enabled(6, v48, v49))
      {
        goto LABEL_25;
      }

      v50 = _os_log_pack_size();
      v29 = &v64 - ((MEMORY[0x1EEE9AC00](v50, v51, v52, v53, v54, v55, v56, v57) + 15) & 0xFFFFFFFFFFFFFFF0);
      v58 = *__error();
      v59 = _os_log_pack_fill();
      v60 = v8[v13];
      *v59 = v66;
      *(v59 + 4) = v68;
      *(v59 + 12) = 2112;
      *(v59 + 14) = v60;
      v31 = v48;
      v32 = v49;
      goto LABEL_23;
    }

    if (__SCNetworkInterfaceEntityIsPPTP(v17))
    {
      v19 = _SC_LOG_DEFAULT();
      v20 = _SC_syslog_os_log_mapping(6);
      if (!__SC_log_enabled(6, v19, v20))
      {
        goto LABEL_25;
      }

      v21 = _os_log_pack_size();
      v29 = &v64 - ((MEMORY[0x1EEE9AC00](v21, v22, v23, v24, v25, v26, v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = *__error();
      *_os_log_pack_fill() = 0;
      v31 = v19;
      v32 = v20;
LABEL_23:
      v47 = v29;
LABEL_24:
      __SC_log_send(6, v31, v32, v47);
      goto LABEL_25;
    }

    Private = __SCNetworkServiceCreatePrivate(0, v64, v8[v13], 0);
    if (!Private)
    {
      SCNetworkServiceCopyAll_cold_1();
    }

    v62 = Private;
    CFArrayAppendValue(v65, Private);
    CFRelease(v62);
LABEL_25:
    ++v13;
  }

  while (v7 != v13);
  if (v8 != v70)
  {
    CFAllocatorDeallocate(0, v8);
    CFAllocatorDeallocate(0, v9);
  }

  Mutable = v65;
LABEL_32:
  v63 = *MEMORY[0x1E69E9840];
  return Mutable;
}

__CFArray *__SCNetworkServiceCopyAllInterfaces(const __SCPreferences *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = SCNetworkServiceCopyAll(a1);
  if (!v1)
  {
    Mutable = 0;
    goto LABEL_14;
  }

  v2 = v1;
  Count = CFArrayGetCount(v1);
  if (Count)
  {
    v4 = Count;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (v4 >= 1)
    {
      for (i = 0; i != v4; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, i);
        Interface = SCNetworkServiceGetInterface(ValueAtIndex);
        TypeID = SCNetworkInterfaceGetTypeID();
        if (Interface && CFGetTypeID(Interface) == TypeID)
        {
          CFArrayAppendValue(Mutable, Interface);
        }
      }
    }

    if (CFArrayGetCount(Mutable))
    {
      goto LABEL_12;
    }

    CFRelease(Mutable);
  }

  Mutable = 0;
LABEL_12:
  CFRelease(v2);
LABEL_14:
  v10 = *MEMORY[0x1E69E9840];
  return Mutable;
}

SCNetworkServiceRef SCNetworkServiceCopy(SCPreferencesRef prefs, CFStringRef serviceID)
{
  v24[1] = *MEMORY[0x1E69E9840];
  TypeID = CFStringGetTypeID();
  if (!serviceID || CFGetTypeID(serviceID) != TypeID)
  {
    v20 = 1002;
    goto LABEL_10;
  }

  NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, serviceID, @"Interface");
  Value = SCPreferencesPathGetValue(prefs, NetworkServiceEntity);
  CFRelease(NetworkServiceEntity);
  v7 = CFDictionaryGetTypeID();
  if (!Value || CFGetTypeID(Value) != v7)
  {
LABEL_8:
    v20 = 1004;
LABEL_10:
    _SCErrorSet(v20);
    v21 = *MEMORY[0x1E69E9840];
    return 0;
  }

  if (__SCNetworkInterfaceEntityIsPPTP(Value))
  {
    v8 = _SC_LOG_DEFAULT();
    v9 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v8, v9))
    {
      v10 = _os_log_pack_size();
      v18 = v24 - ((MEMORY[0x1EEE9AC00](v10, v11, v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(6, v8, v9, v18);
    }

    goto LABEL_8;
  }

  v23 = *MEMORY[0x1E69E9840];

  return __SCNetworkServiceCreatePrivate(0, prefs, serviceID, 0);
}

void *_SCNetworkServiceCopyActive(const void *a1, const __CFString *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  TypeID = CFStringGetTypeID();
  if (a2 && CFGetTypeID(a2) == TypeID)
  {
    Private = __SCNetworkServiceCreatePrivate(0, 0, a2, 0);
    if (!Private)
    {
      _SCNetworkServiceCopyActive_cold_1();
    }

    v6 = Private;
    if (a1)
    {
      Private[5] = a1;
      CFRetain(a1);
    }
  }

  else
  {
    _SCErrorSet(1002);
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

__CFSet *_copyInterfaceEntityTypes(const __CFDictionary *a1)
{
  v10[3] = *MEMORY[0x1E69E9840];
  Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
  Value = CFDictionaryGetValue(a1, @"Interface");
  TypeID = CFDictionaryGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    v10[0] = @"Type";
    v10[1] = @"SubType";
    v10[2] = @"Hardware";
    CFSetAddValue(Mutable, @"Interface");
    for (i = 0; i != 3; ++i)
    {
      v6 = CFDictionaryGetValue(Value, v10[i]);
      v7 = CFStringGetTypeID();
      if (v6 && CFGetTypeID(v6) == v7)
      {
        CFSetAddValue(Mutable, v6);
      }
    }

    CFSetAddValue(Mutable, @"PPP");
  }

  v8 = *MEMORY[0x1E69E9840];
  return Mutable;
}

CFArrayRef SCNetworkServiceCopyProtocols(SCNetworkServiceRef service)
{
  v21 = *MEMORY[0x1E69E9840];
  if (__SCNetworkServiceInitialize_initialized != -1)
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (service)
    {
      goto LABEL_3;
    }

LABEL_22:
    v12 = 1002;
    goto LABEL_23;
  }

  if (!service)
  {
    goto LABEL_22;
  }

LABEL_3:
  v2 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(service) != v2 || !*(service + 4))
  {
    goto LABEL_22;
  }

  NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(service + 2), 0);
  Value = SCPreferencesPathGetValue(*(service + 4), NetworkServiceEntity);
  CFRelease(NetworkServiceEntity);
  TypeID = CFDictionaryGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    v12 = 1001;
LABEL_23:
    _SCErrorSet(v12);
    Mutable = 0;
    goto LABEL_24;
  }

  v6 = _copyInterfaceEntityTypes(Value);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  Count = CFDictionaryGetCount(Value);
  if (Count >= 1)
  {
    v9 = Count;
    memset(v20, 0, sizeof(v20));
    memset(v19, 0, sizeof(v19));
    if (Count < 0x41)
    {
      v11 = v19;
      v10 = v20;
    }

    else
    {
      v10 = MEMORY[0x1B26F3AA0](0, 8 * Count, 0xC0040B8AA526DLL, 0);
      v11 = MEMORY[0x1B26F3AA0](0, 8 * v9, 0xC0040B8AA526DLL, 0);
    }

    CFDictionaryGetKeysAndValues(Value, v10, v11);
    for (i = 0; i != v9; ++i)
    {
      v14 = v11[i];
      v15 = CFDictionaryGetTypeID();
      if (v14 && CFGetTypeID(v14) == v15 && !CFSetContainsValue(v6, v10[i]))
      {
        Private = __SCNetworkProtocolCreatePrivate(0, v10[i], service);
        CFArrayAppendValue(Mutable, Private);
        CFRelease(Private);
      }
    }

    if (v10 != v20)
    {
      CFAllocatorDeallocate(0, v10);
      CFAllocatorDeallocate(0, v11);
    }
  }

  CFRelease(v6);
LABEL_24:
  v17 = *MEMORY[0x1E69E9840];
  return Mutable;
}

SCNetworkServiceRef SCNetworkServiceCreate(SCPreferencesRef prefs, SCNetworkInterfaceRef interface)
{
  v74 = *MEMORY[0x1E69E9840];
  TypeID = SCNetworkInterfaceGetTypeID();
  if (!interface || CFGetTypeID(interface) != TypeID || !SCNetworkInterfaceGetSupportedProtocolTypes(interface) && (InterfaceType = SCNetworkInterfaceGetInterfaceType(interface), CFStringFind(InterfaceType, @".", 0).location == -1))
  {
    v6 = 1002;
    goto LABEL_8;
  }

  if (__SCNetworkInterfaceIsBusyMember(prefs, interface, 1))
  {
    v6 = 1001;
LABEL_8:
    _SCErrorSet(v6);
    UniqueChild = 0;
    goto LABEL_9;
  }

  NetworkServices = SCPreferencesPathKeyCreateNetworkServices(0);
  UniqueChild = SCPreferencesPathCreateUniqueChild(prefs, NetworkServices);
  CFRelease(NetworkServices);
  if (!UniqueChild)
  {
    goto LABEL_9;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, UniqueChild, @"/");
  CFRelease(UniqueChild);
  ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 2);
  UniqueChild = __SCNetworkServiceCreatePrivate(0, prefs, ValueAtIndex, 0);
  CFRelease(ArrayBySeparatingStrings);
  Copy = __SCNetworkInterfaceCreateCopy(0, interface, prefs, ValueAtIndex);
  UniqueChild->length = Copy;
  if (!Copy)
  {
    goto LABEL_43;
  }

  v65 = UniqueChild;
  v15 = @"Bluetooth";
  v67 = @"Serial";
  v66 = @"WWAN";
  v16 = @"ConnectionScript";
  v73 = @"ConnectionPersonality";
  v72 = @"DeviceVendor";
  v71 = @"DeviceModel";
  v64 = @"PPP";
  v17 = MEMORY[0x1E695E9D8];
  v18 = MEMORY[0x1E695E9E8];
  v63 = @"VPN";
  *&v14 = 138412290;
  v68 = v14;
  v69 = @"ConnectionScript";
  v70 = @"Bluetooth";
  do
  {
    v19 = SCNetworkInterfaceGetInterfaceType(Copy);
    v20 = SCNetworkInterfaceGetInterface(Copy);
    if (v20)
    {
      v21 = SCNetworkInterfaceGetInterfaceType(v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = __copyInterfaceTemplate(v19, v21);
    if (v22)
    {
      v23 = v22;
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v22);
      CFRelease(v23);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, v17, v18);
    }

    if (CFEqual(v19, v15) || CFEqual(v19, @"Modem") || CFEqual(v19, v67) || CFEqual(v19, v66))
    {
      TemplateOverrides = __SCNetworkInterfaceGetTemplateOverrides(Copy, @"Modem");
      v26 = CFDictionaryGetTypeID();
      if (!TemplateOverrides)
      {
        CFDictionaryGetTypeID();
        goto LABEL_31;
      }

      if (CFGetTypeID(TemplateOverrides) == v26 && CFDictionaryContainsKey(TemplateOverrides, v16))
      {
        CFDictionaryRemoveValue(MutableCopy, v73);
        CFDictionaryRemoveValue(MutableCopy, v16);
        CFDictionaryRemoveValue(MutableCopy, v72);
        CFDictionaryRemoveValue(MutableCopy, v71);
      }

      v27 = CFDictionaryGetTypeID();
LABEL_28:
      if (CFGetTypeID(TemplateOverrides) == v27)
      {
        CFDictionaryApplyFunction(TemplateOverrides, mergeDict, MutableCopy);
      }

      goto LABEL_31;
    }

    v43 = v64;
    if (!CFEqual(v19, v64))
    {
      if (CFEqual(v19, v63))
      {
        v43 = v64;
      }

      else
      {
        v43 = v19;
      }
    }

    TemplateOverrides = __SCNetworkInterfaceGetTemplateOverrides(Copy, v43);
    v27 = CFDictionaryGetTypeID();
    if (TemplateOverrides)
    {
      goto LABEL_28;
    }

LABEL_31:
    if (CFDictionaryGetCount(MutableCopy) >= 1 && !__SCNetworkInterfaceSetConfiguration(Copy, 0, MutableCopy, 1))
    {
      v28 = _SC_LOG_DEFAULT();
      v29 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v28, v29))
      {
        v30 = _os_log_pack_size();
        v38 = v18;
        v39 = &v62 - ((MEMORY[0x1EEE9AC00](v30, v31, v32, v33, v34, v35, v36, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
        v40 = *__error();
        v41 = _os_log_pack_fill();
        *v41 = v68;
        *(v41 + 4) = Copy;
        v42 = v39;
        v18 = v38;
        __SC_log_send(6, v28, v29, v42);
        v16 = v69;
        v15 = v70;
      }
    }

    CFRelease(MutableCopy);
    Copy = SCNetworkInterfaceGetInterface(Copy);
  }

  while (Copy);
  UniqueChild = v65;
  Copy = v65->length;
LABEL_43:
  NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, UniqueChild->data, @"Interface");
  v45 = __SCNetworkInterfaceCopyInterfaceEntity(Copy);
  SCPreferencesPathSetValue(UniqueChild[1].isa, NetworkServiceEntity, v45);
  CFRelease(v45);
  CFRelease(NetworkServiceEntity);
  v46 = __SCNetworkInterfaceCopyDeepConfiguration(0, UniqueChild->length);
  __SCNetworkInterfaceSetDeepConfiguration(0, UniqueChild->length, v46, v47);
  if (v46)
  {
    CFRelease(v46);
  }

  Name = __SCNetworkServiceGetName(UniqueChild, 1);
  if (Name)
  {
    SCNetworkServiceSetName(UniqueChild, Name);
  }

  v49 = _SC_LOG_DEFAULT();
  v50 = _SC_syslog_os_log_mapping(7);
  if (__SC_log_enabled(7, v49, v50))
  {
    v51 = _os_log_pack_size();
    v59 = &v62 - ((MEMORY[0x1EEE9AC00](v51, v52, v53, v54, v55, v56, v57, v58) + 15) & 0xFFFFFFFFFFFFFFF0);
    v60 = *__error();
    v61 = _os_log_pack_fill();
    *v61 = 138412290;
    *(v61 + 4) = UniqueChild;
    __SC_log_send(7, v49, v50, v59);
  }

LABEL_9:
  v8 = *MEMORY[0x1E69E9840];
  return UniqueChild;
}

void mergeDict(void *key, void *value, CFMutableDictionaryRef theDict)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  CFDictionarySetValue(theDict, key, value);
}

CFStringRef SCNetworkServiceGetName(SCNetworkServiceRef service)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return __SCNetworkServiceGetName(service, 1);
}

Boolean SCNetworkServiceSetName(SCNetworkServiceRef service, CFStringRef name)
{
  block[7] = *MEMORY[0x1E69E9840];
  if (__SCNetworkServiceInitialize_initialized == -1)
  {
    if (!service)
    {
      goto LABEL_21;
    }
  }

  else
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (!service)
    {
      goto LABEL_21;
    }
  }

  v4 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(service) != v4 || !*(service + 4))
  {
    goto LABEL_21;
  }

  if (!__SCNetworkServiceExists(service))
  {
    v13 = _SC_LOG_DEFAULT();
    v14 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v13, v14))
    {
      v15 = _os_log_pack_size();
      v23 = &v67 - ((MEMORY[0x1EEE9AC00](v15, v16, v17, v18, v19, v20, v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
      v24 = *__error();
      v25 = _os_log_pack_fill();
      v26 = @"<NULL>";
      if (name)
      {
        v26 = name;
      }

      *v25 = 138412546;
      *(v25 + 4) = service;
      *(v25 + 12) = 2112;
      *(v25 + 14) = v26;
      __SC_log_send(3, v13, v14, v23);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SC_crash_once_block_invoke_3;
    block[3] = &__block_descriptor_tmp_51;
    block[5] = 0;
    block[6] = 0;
    block[4] = "SCNetworkServiceSetName() w/removed service";
    if (_SC_crash_once_once_3 != -1)
    {
      dispatch_once(&_SC_crash_once_once_3, block);
    }

    goto LABEL_21;
  }

  if (!name)
  {
    v6 = 0;
    goto LABEL_47;
  }

  TypeID = CFStringGetTypeID();
  if (CFGetTypeID(name) != TypeID)
  {
LABEL_21:
    v27 = 1002;
    goto LABEL_22;
  }

  v6 = CFRetain(name);
  Interface = SCNetworkServiceGetInterface(service);
  while (Interface)
  {
    v8 = Interface;
    Interface = SCNetworkInterfaceGetInterface(Interface);
    if (!Interface)
    {
      LocalizedDisplayName = SCNetworkInterfaceGetLocalizedDisplayName(v8);
      if (LocalizedDisplayName)
      {
        v10 = LocalizedDisplayName;
        if (CFEqual(name, LocalizedDisplayName))
        {
          NonLocalizedDisplayName = __SCNetworkInterfaceGetNonLocalizedDisplayName(v8);
          if (NonLocalizedDisplayName)
          {
            v12 = NonLocalizedDisplayName;
            CFRelease(v6);
            v6 = CFRetain(v12);
          }
        }

        else if (CFStringHasPrefix(name, v10))
        {
          Length = CFStringGetLength(v10);
          v70.length = CFStringGetLength(name) - Length;
          v70.location = Length;
          v32 = CFStringCreateWithSubstring(0, name, v70);
          v33 = __SCNetworkInterfaceGetNonLocalizedDisplayName(v8);
          if (v33)
          {
            v34 = v33;
            CFRelease(v6);
            v6 = CFStringCreateWithFormat(0, 0, @"%@%@", v34, v32);
          }

          CFRelease(v32);
        }
      }

      break;
    }
  }

  v35 = SCNetworkSetCopyAll(*(service + 4));
  if (!v35)
  {
LABEL_47:
    NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(service + 2), 0);
    Value = SCPreferencesPathGetValue(*(service + 4), NetworkServiceEntity);
    v50 = CFDictionaryGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == v50)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
LABEL_52:
        v52 = MutableCopy;
        if (v6)
        {
          CFDictionarySetValue(MutableCopy, @"UserDefinedName", v6);
        }

        else
        {
          CFDictionaryRemoveValue(MutableCopy, @"UserDefinedName");
        }

        v28 = SCPreferencesPathSetValue(*(service + 4), NetworkServiceEntity, v52);
        CFRelease(v52);
        goto LABEL_57;
      }
    }

    else if (name)
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      goto LABEL_52;
    }

    v28 = 0;
LABEL_57:
    CFRelease(NetworkServiceEntity);
    if (v6)
    {
      CFRelease(v6);
    }

    v53 = *(service + 6);
    if (v53)
    {
      CFRelease(v53);
    }

    if (name)
    {
      CFRetain(name);
    }

    *(service + 6) = name;
    if (v28)
    {
      v54 = _SC_LOG_DEFAULT();
      v55 = _SC_syslog_os_log_mapping(7);
      if (__SC_log_enabled(7, v54, v55))
      {
        v56 = _os_log_pack_size();
        v64 = &v67 - ((MEMORY[0x1EEE9AC00](v56, v57, v58, v59, v60, v61, v62, v63) + 15) & 0xFFFFFFFFFFFFFFF0);
        v65 = *__error();
        v66 = _os_log_pack_fill();
        *v66 = 138412290;
        *(v66 + 4) = service;
        __SC_log_send(7, v54, v55, v64);
      }
    }

    goto LABEL_23;
  }

  v36 = v35;
  v67 = v6;
  Count = CFArrayGetCount(v35);
  if (Count < 1)
  {
LABEL_46:
    CFRelease(v36);
    v6 = v67;
    goto LABEL_47;
  }

  v37 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v36, v37);
    v39 = SCNetworkSetCopyServices(ValueAtIndex);
    v40 = CFArrayGetCount(v39);
    if (v40 >= 1)
    {
      break;
    }

    CFRelease(v39);
LABEL_45:
    if (++v37 == Count)
    {
      goto LABEL_46;
    }
  }

  v41 = v40;
  v42 = 0;
  v43 = 0;
  for (i = 0; i != v41; ++i)
  {
    v45 = CFArrayGetValueAtIndex(v39, i);
    ServiceID = SCNetworkServiceGetServiceID(v45);
    if (CFEqual(*(service + 2), ServiceID))
    {
      v42 = 1;
    }

    else
    {
      v47 = __SCNetworkServiceGetName(v45, 1);
      if (v47 && CFEqual(name, v47))
      {
        v43 = 1;
      }
    }
  }

  CFRelease(v39);
  if (!v42 || !v43)
  {
    goto LABEL_45;
  }

  CFRelease(v36);
  if (v67)
  {
    CFRelease(v67);
  }

  v27 = 1005;
LABEL_22:
  _SCErrorSet(v27);
  LOBYTE(v28) = 0;
LABEL_23:
  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

const __SCNetworkService *_SCNetworkServiceCreatePreconfigured(const __SCPreferences *a1, SCNetworkInterfaceRef interface)
{
  v67[1] = *MEMORY[0x1E69E9840];
  BSDName = SCNetworkInterfaceGetBSDName(interface);
  v5 = SCNetworkServiceCreate(a1, interface);
  if (!v5)
  {
    v25 = _SC_LOG_DEFAULT();
    v26 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v25, v26))
    {
      v27 = _os_log_pack_size();
      v35 = v67 - ((MEMORY[0x1EEE9AC00](v27, v28, v29, v30, v31, v32, v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
      v36 = *__error();
      v37 = _os_log_pack_fill();
      v38 = SCError();
      v39 = SCErrorString(v38);
      *v37 = 138412546;
      *(v37 + 4) = BSDName;
      *(v37 + 12) = 2080;
      *(v37 + 14) = v39;
      __SC_log_send(3, v25, v26, v35);
    }

    goto LABEL_15;
  }

  v6 = v5;
  v7 = _SC_copyInterfaceUUID(BSDName);
  if (!v7)
  {
    v10 = _SC_LOG_DEFAULT();
    v11 = _SC_syslog_os_log_mapping(3);
    if (!__SC_log_enabled(3, v10, v11))
    {
      goto LABEL_11;
    }

    v40 = _os_log_pack_size();
    v20 = v67 - ((MEMORY[0x1EEE9AC00](v40, v41, v42, v43, v44, v45, v46, v47) + 15) & 0xFFFFFFFFFFFFFFF0);
    v48 = *__error();
    v49 = _os_log_pack_fill();
    *v49 = 138412290;
    *(v49 + 4) = BSDName;
    goto LABEL_10;
  }

  v8 = v7;
  v9 = _SCNetworkServiceSetServiceID(v6, v7);
  CFRelease(v8);
  if (!v9)
  {
    v10 = _SC_LOG_DEFAULT();
    v11 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v10, v11))
    {
      v12 = _os_log_pack_size();
      v20 = v67 - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17, v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = *__error();
      v22 = _os_log_pack_fill();
      v23 = SCError();
      v24 = SCErrorString(v23);
      *v22 = 136315138;
      *(v22 + 4) = v24;
LABEL_10:
      __SC_log_send(3, v10, v11, v20);
    }
  }

LABEL_11:
  if (!SCNetworkServiceEstablishDefaultConfiguration(v6))
  {
    v50 = _SC_LOG_DEFAULT();
    v51 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v50, v51))
    {
      v52 = _os_log_pack_size();
      v60 = v67 - ((MEMORY[0x1EEE9AC00](v52, v53, v54, v55, v56, v57, v58, v59) + 15) & 0xFFFFFFFFFFFFFFF0);
      v61 = *__error();
      v62 = _os_log_pack_fill();
      v63 = SCError();
      v64 = SCErrorString(v63);
      *v62 = 138412546;
      *(v62 + 4) = BSDName;
      *(v62 + 12) = 2080;
      *(v62 + 14) = v64;
      __SC_log_send(3, v50, v51, v60);
    }

    SCNetworkServiceRemove(v6);
    CFRelease(v6);
LABEL_15:
    v6 = 0;
  }

  v65 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t _SCNetworkServiceSetServiceID(uint64_t cf, const void *a2)
{
  block[7] = *MEMORY[0x1E69E9840];
  if (__SCNetworkServiceInitialize_initialized != -1)
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (cf)
    {
      goto LABEL_3;
    }

LABEL_26:
    _SCErrorSet(1002);
    v6 = 0;
    goto LABEL_27;
  }

  if (!cf)
  {
    goto LABEL_26;
  }

LABEL_3:
  v4 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(cf) != v4)
  {
    goto LABEL_26;
  }

  if (!*(cf + 32))
  {
    goto LABEL_26;
  }

  TypeID = CFStringGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID)
  {
    goto LABEL_26;
  }

  if (CFEqual(a2, *(cf + 16)))
  {
    v6 = 1;
    goto LABEL_27;
  }

  context = 0;
  v46 = 0;
  if (!__SCNetworkServiceExists(cf))
  {
    v29 = _SC_LOG_DEFAULT();
    v30 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v29, v30))
    {
      v31 = _os_log_pack_size();
      v39 = v44 - ((MEMORY[0x1EEE9AC00](v31, v32, v33, v34, v35, v36, v37, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
      v40 = *__error();
      v41 = _os_log_pack_fill();
      *v41 = 138412546;
      *(v41 + 4) = cf;
      *(v41 + 12) = 2112;
      *(v41 + 14) = a2;
      __SC_log_send(3, v29, v30, v39);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SC_crash_once_block_invoke_3;
    block[3] = &__block_descriptor_tmp_51;
    block[5] = 0;
    block[6] = 0;
    block[4] = "_SCNetworkServiceSetServiceID() w/removed service";
    if (_SC_crash_once_once_3 != -1)
    {
      dispatch_once(&_SC_crash_once_once_3, block);
    }

    goto LABEL_26;
  }

  NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, a2, 0);
  Value = SCPreferencesPathGetValue(*(cf + 32), NetworkServiceEntity);
  v9 = CFDictionaryGetTypeID();
  if (!Value || CFGetTypeID(Value) != v9)
  {
    v11 = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(cf + 16), 0);
    v12 = SCPreferencesPathGetValue(*(cf + 32), v11);
    v13 = CFDictionaryGetTypeID();
    if (v12 && CFGetTypeID(v12) == v13)
    {
      if (SCPreferencesPathSetValue(*(cf + 32), NetworkServiceEntity, v12))
      {
        v6 = SCPreferencesPathRemoveValue(*(cf + 32), v11);
        if (v6)
        {
          v10 = SCNetworkSetCopyAll(*(cf + 32));
          context = *(cf + 16);
          v46 = a2;
          v48.length = CFArrayGetCount(v10);
          v48.location = 0;
          CFArrayApplyFunction(v10, v48, replaceServiceID, &context);
          v14 = *(cf + 24);
          if (v14)
          {
            Copy = __SCNetworkInterfaceCreateCopy(0, v14, *(cf + 32), a2);
            CFRelease(*(cf + 24));
            *(cf + 24) = Copy;
          }

          v16 = _SC_LOG_DEFAULT();
          v17 = _SC_syslog_os_log_mapping(7);
          if (__SC_log_enabled(7, v16, v17))
          {
            v18 = _os_log_pack_size();
            v44[1] = v44;
            v26 = v44 - ((MEMORY[0x1EEE9AC00](v18, v19, v20, v21, v22, v23, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
            v27 = *__error();
            v28 = _os_log_pack_fill();
            *v28 = 138412546;
            *(v28 + 4) = cf;
            *(v28 + 12) = 2112;
            *(v28 + 14) = a2;
            __SC_log_send(7, v16, v17, v26);
          }

          CFRetain(a2);
          CFRelease(*(cf + 16));
          *(cf + 16) = a2;
          goto LABEL_31;
        }

LABEL_30:
        v10 = 0;
LABEL_31:
        if (v11)
        {
          CFRelease(v11);
        }

        goto LABEL_33;
      }
    }

    else
    {
      _SCErrorSet(1004);
    }

    v6 = 0;
    goto LABEL_30;
  }

  _SCErrorSet(1005);
  v10 = 0;
  v6 = 0;
LABEL_33:
  if (NetworkServiceEntity)
  {
    CFRelease(NetworkServiceEntity);
  }

  if (v10)
  {
    CFRelease(v10);
  }

LABEL_27:
  v42 = *MEMORY[0x1E69E9840];
  return v6;
}

Boolean SCNetworkServiceEstablishDefaultConfiguration(SCNetworkServiceRef service)
{
  v45 = *MEMORY[0x1E69E9840];
  if (__SCNetworkServiceInitialize_initialized != -1)
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (service)
    {
      goto LABEL_3;
    }

LABEL_23:
    _SCErrorSet(1002);
    LOBYTE(Interface) = 0;
    goto LABEL_24;
  }

  if (!service)
  {
    goto LABEL_23;
  }

LABEL_3:
  v2 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(service) != v2 || !*(service + 4))
  {
    goto LABEL_23;
  }

  Interface = SCNetworkServiceGetInterface(service);
  if (Interface)
  {
    v42 = Interface;
    SupportedProtocolTypes = SCNetworkInterfaceGetSupportedProtocolTypes(Interface);
    if (SupportedProtocolTypes)
    {
      v5 = SupportedProtocolTypes;
      Count = CFArrayGetCount(SupportedProtocolTypes);
      if (Count >= 1)
      {
        v8 = Count;
        v9 = 0;
        *&v7 = 138412290;
        v43 = v7;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v5, v9);
          if (!SCNetworkServiceAddProtocolType(service, ValueAtIndex))
          {
            v11 = _SC_LOG_DEFAULT();
            v12 = _SC_syslog_os_log_mapping(6);
            if (__SC_log_enabled(6, v11, v12))
            {
              v13 = _os_log_pack_size();
              v21 = &v41 - ((MEMORY[0x1EEE9AC00](v13, v14, v15, v16, v17, v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
              v22 = *__error();
              v23 = _os_log_pack_fill();
              *v23 = v43;
              *(v23 + 4) = ValueAtIndex;
              __SC_log_send(6, v11, v12, v21);
            }
          }

          ++v9;
        }

        while (v8 != v9);
      }
    }

    TemplateOverrides = __SCNetworkInterfaceGetTemplateOverrides(v42, @"PrimaryRank");
    TypeID = CFStringGetTypeID();
    if (!TemplateOverrides || CFGetTypeID(TemplateOverrides) != TypeID)
    {
      goto LABEL_21;
    }

    v44 = 0;
    if (__str_to_rank(TemplateOverrides, &v44))
    {
      if (SCNetworkServiceSetPrimaryRank(service, v44))
      {
        goto LABEL_21;
      }

      v26 = _SC_LOG_DEFAULT();
      v27 = _SC_syslog_os_log_mapping(6);
      if (!__SC_log_enabled(6, v26, v27))
      {
        goto LABEL_21;
      }
    }

    else
    {
      v26 = _SC_LOG_DEFAULT();
      v27 = _SC_syslog_os_log_mapping(6);
      if (!__SC_log_enabled(6, v26, v27))
      {
LABEL_21:
        LOBYTE(Interface) = 1;
        goto LABEL_24;
      }
    }

    v28 = _os_log_pack_size();
    v36 = &v41 - ((MEMORY[0x1EEE9AC00](v28, v29, v30, v31, v32, v33, v34, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = *__error();
    v38 = _os_log_pack_fill();
    *v38 = 138412290;
    *(v38 + 4) = TemplateOverrides;
    __SC_log_send(6, v26, v27, v36);
    goto LABEL_21;
  }

LABEL_24:
  v39 = *MEMORY[0x1E69E9840];
  return Interface;
}

Boolean SCNetworkServiceRemove(SCNetworkServiceRef service)
{
  block[7] = *MEMORY[0x1E69E9840];
  if (__SCNetworkServiceInitialize_initialized != -1)
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (service)
    {
      goto LABEL_3;
    }

LABEL_20:
    _SCErrorSet(1002);
LABEL_21:
    LOBYTE(v10) = 0;
    goto LABEL_22;
  }

  if (!service)
  {
    goto LABEL_20;
  }

LABEL_3:
  v2 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(service) != v2 || !*(service + 4))
  {
    goto LABEL_20;
  }

  if (!__SCNetworkServiceExists(service))
  {
    v24 = _SC_LOG_DEFAULT();
    v25 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v24, v25))
    {
      v26 = _os_log_pack_size();
      v34 = block - ((MEMORY[0x1EEE9AC00](v26, v27, v28, v29, v30, v31, v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
      v35 = *__error();
      v36 = _os_log_pack_fill();
      *v36 = 138412290;
      *(v36 + 4) = service;
      __SC_log_send(3, v24, v25, v34);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SC_crash_once_block_invoke_3;
    block[3] = &__block_descriptor_tmp_51;
    block[5] = 0;
    block[6] = 0;
    block[4] = "SCNetworkServiceRemove() w/removed service";
    if (_SC_crash_once_once_3 != -1)
    {
      dispatch_once(&_SC_crash_once_once_3, block);
    }

    goto LABEL_20;
  }

  _SCNetworkInterfaceCacheOpen();
  v3 = SCNetworkSetCopyAll(*(service + 4));
  if (v3)
  {
    v4 = v3;
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
        if (!SCNetworkSetRemoveService(ValueAtIndex, service) && SCError() != 1004)
        {
          break;
        }

        if (v6 == ++v7)
        {
          goto LABEL_12;
        }
      }

      CFRelease(v4);
      goto LABEL_21;
    }

LABEL_12:
    CFRelease(v4);
  }

  _SCNetworkInterfaceCacheClose();
  NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(service + 2), 0);
  v10 = SCPreferencesPathRemoveValue(*(service + 4), NetworkServiceEntity);
  CFRelease(NetworkServiceEntity);
  if (v10)
  {
    v11 = _SC_LOG_DEFAULT();
    v12 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v11, v12))
    {
      v13 = _os_log_pack_size();
      v21 = block - ((MEMORY[0x1EEE9AC00](v13, v14, v15, v16, v17, v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = *__error();
      v23 = _os_log_pack_fill();
      *v23 = 138412290;
      *(v23 + 4) = service;
      __SC_log_send(7, v11, v12, v21);
    }
  }

LABEL_22:
  v37 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t SCNetworkServiceSetPrimaryRank(uint64_t cf, unsigned int a2)
{
  block[7] = *MEMORY[0x1E69E9840];
  v37 = 0;
  if (__SCNetworkServiceInitialize_initialized == -1)
  {
    if (!cf)
    {
      goto LABEL_45;
    }
  }

  else
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (!cf)
    {
      goto LABEL_45;
    }
  }

  v4 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(cf) != v4)
  {
    goto LABEL_45;
  }

  if (*(cf + 32) && !__SCNetworkServiceExists(cf))
  {
    v11 = _SC_LOG_DEFAULT();
    v12 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v11, v12))
    {
      v13 = _os_log_pack_size();
      v21 = &v36 - ((MEMORY[0x1EEE9AC00](v13, v14, v15, v16, v17, v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = *__error();
      v23 = _os_log_pack_fill();
      *v23 = 138412290;
      *(v23 + 4) = cf;
      __SC_log_send(3, v11, v12, v21);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SC_crash_once_block_invoke_3;
    block[3] = &__block_descriptor_tmp_51;
    block[5] = 0;
    block[6] = 0;
    block[4] = "SCNetworkServiceSetPrimaryRank() w/removed service";
    if (_SC_crash_once_once_3 != -1)
    {
      dispatch_once(&_SC_crash_once_once_3, block);
    }

    goto LABEL_45;
  }

  v5 = __rank_to_str(a2, &v37);
  if (!v5)
  {
    _SCErrorSet(1002);
    goto LABEL_46;
  }

  if (*(cf + 32))
  {
    if (a2 <= 4 && ((1 << a2) & 0x19) != 0)
    {
      NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(cf + 16), 0);
      Value = SCPreferencesPathGetValue(*(cf + 32), NetworkServiceEntity);
      if (!Value)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        goto LABEL_23;
      }

      v8 = Value;
      TypeID = CFDictionaryGetTypeID();
      if (CFGetTypeID(v8) == TypeID)
      {
        Mutable = CFDictionaryCreateMutableCopy(0, 0, v8);
LABEL_23:
        MutableCopy = Mutable;
        if (v37)
        {
          CFDictionarySetValue(Mutable, @"PrimaryRank", v37);
        }

        else
        {
          CFDictionaryRemoveValue(Mutable, @"PrimaryRank");
        }

        Count = CFDictionaryGetCount(MutableCopy);
        v29 = *(cf + 32);
        if (Count < 1)
        {
          v30 = SCPreferencesPathRemoveValue(v29, NetworkServiceEntity);
        }

        else
        {
          v30 = SCPreferencesPathSetValue(v29, NetworkServiceEntity, MutableCopy);
        }

        goto LABEL_37;
      }

LABEL_33:
      _SCErrorSet(1001);
      goto LABEL_39;
    }

LABEL_45:
    _SCErrorSet(1002);
    v5 = 0;
    goto LABEL_46;
  }

  if (!*(cf + 40))
  {
    goto LABEL_45;
  }

  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, @"State:", *(cf + 16), 0);
  v24 = SCDynamicStoreCopyValue(*(cf + 40), NetworkServiceEntity);
  if (v24)
  {
    v25 = v24;
    v26 = CFDictionaryGetTypeID();
    if (CFGetTypeID(v25) != v26)
    {
      CFRelease(v25);
      goto LABEL_33;
    }

    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v25);
    CFRelease(v25);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  if (v37)
  {
    CFDictionarySetValue(MutableCopy, @"PrimaryRank", v37);
  }

  else
  {
    CFDictionaryRemoveValue(MutableCopy, @"PrimaryRank");
  }

  v31 = CFDictionaryGetCount(MutableCopy);
  v32 = *(cf + 40);
  if (v31 < 1)
  {
    v33 = SCDynamicStoreRemoveValue(v32, NetworkServiceEntity);
    if (SCError() == 1004)
    {
      v5 = 1;
    }

    else
    {
      v5 = v33;
    }

    goto LABEL_38;
  }

  v30 = SCDynamicStoreSetValue(v32, NetworkServiceEntity, MutableCopy);
LABEL_37:
  v5 = v30;
LABEL_38:
  CFRelease(MutableCopy);
LABEL_39:
  if (NetworkServiceEntity)
  {
    CFRelease(NetworkServiceEntity);
  }

LABEL_46:
  v34 = *MEMORY[0x1E69E9840];
  return v5;
}

const __CFString *__SCNetworkServiceGetName(CFTypeRef cf, int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (__SCNetworkServiceInitialize_initialized != -1)
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (cf)
    {
      goto LABEL_3;
    }

LABEL_51:
    _SCErrorSet(1002);
    goto LABEL_52;
  }

  if (!cf)
  {
    goto LABEL_51;
  }

LABEL_3:
  v4 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(cf) != v4 || !*(cf + 4))
  {
    goto LABEL_51;
  }

  Value = *(cf + 6);
  if (Value)
  {
    if (a2)
    {
      goto LABEL_53;
    }

    goto LABEL_16;
  }

  NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(cf + 2), 0);
  Value = SCPreferencesPathGetValue(*(cf + 4), NetworkServiceEntity);
  CFRelease(NetworkServiceEntity);
  TypeID = CFDictionaryGetTypeID();
  if (Value)
  {
    if (CFGetTypeID(Value) != TypeID)
    {
      Value = 0;
      goto LABEL_16;
    }

    Value = CFDictionaryGetValue(Value, @"UserDefinedName");
    v8 = CFStringGetTypeID();
    if (Value && CFGetTypeID(Value) == v8)
    {
      *(cf + 6) = CFRetain(Value);
      if (_SCNetworkConfigurationBypassSystemInterfaces(*(cf + 4)))
      {
        goto LABEL_48;
      }

      goto LABEL_16;
    }

    if (a2)
    {
      goto LABEL_16;
    }

LABEL_52:
    Value = 0;
    goto LABEL_53;
  }

LABEL_16:
  Interface = SCNetworkServiceGetInterface(cf);
  do
  {
    if (!Interface)
    {
      goto LABEL_48;
    }

    v10 = Interface;
    InterfaceType = SCNetworkInterfaceGetInterfaceType(Interface);
    if (CFEqual(InterfaceType, @"VPN"))
    {
      break;
    }

    v12 = SCNetworkInterfaceGetInterface(Interface);
    if (!v12)
    {
      break;
    }

    Interface = v12;
  }

  while (!CFEqual(v12, &__kSCNetworkInterfaceIPv4));
  v13 = 0;
  while (1)
  {
    if (!*(cf + 6))
    {
      v17 = 0;
      goto LABEL_40;
    }

    if (v13 != 2)
    {
      break;
    }

    v16 = __SCNetworkInterfaceCopyOldNonLocalizedDisplayName(v10, @"Y");
LABEL_30:
    v15 = v16;
    if (v16)
    {
      goto LABEL_31;
    }

LABEL_34:
    if (++v13 == 5)
    {
      v17 = 0;
      v18 = *(cf + 6) == 0;
      goto LABEL_41;
    }
  }

  if (v13 == 1)
  {
    v16 = __SCNetworkInterfaceCopyOldLocalizedDisplayName(v10, @"Y");
    goto LABEL_30;
  }

  if (v13)
  {
    goto LABEL_34;
  }

  NonLocalizedDisplayName = __SCNetworkInterfaceGetNonLocalizedDisplayName(v10);
  if (!NonLocalizedDisplayName)
  {
    goto LABEL_34;
  }

  v15 = NonLocalizedDisplayName;
  CFRetain(NonLocalizedDisplayName);
LABEL_31:
  if (CFEqual(Value, v15))
  {
    v17 = 0;
    goto LABEL_39;
  }

  if (!CFStringHasPrefix(Value, v15))
  {
    CFRelease(v15);
    goto LABEL_34;
  }

  Length = CFStringGetLength(v15);
  v24.length = CFStringGetLength(Value) - Length;
  v24.location = Length;
  v17 = CFStringCreateWithSubstring(0, Value, v24);
LABEL_39:
  CFRelease(v15);
  CFRelease(*(cf + 6));
  *(cf + 6) = 0;
LABEL_40:
  v18 = 1;
LABEL_41:
  if (a2 && v18 && (LocalizedDisplayName = SCNetworkInterfaceGetLocalizedDisplayName(v10)) != 0)
  {
    if (v17)
    {
      *(cf + 6) = CFStringCreateWithFormat(0, 0, @"%@%@", LocalizedDisplayName, v17);
      goto LABEL_47;
    }

    *(cf + 6) = CFRetain(LocalizedDisplayName);
  }

  else if (v17)
  {
LABEL_47:
    CFRelease(v17);
  }

LABEL_48:
  Value = *(cf + 6);
LABEL_53:
  v21 = *MEMORY[0x1E69E9840];
  return Value;
}

CFTypeID SCNetworkServiceGetTypeID(void)
{
  v2 = *MEMORY[0x1E69E9840];
  if (__SCNetworkServiceInitialize_initialized != -1)
  {
    __SCNetworkServiceCreatePrivate_cold_1();
  }

  result = __kSCNetworkServiceTypeID;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

Boolean SCNetworkServiceRemoveProtocolType(SCNetworkServiceRef service, CFStringRef protocolType)
{
  block[7] = *MEMORY[0x1E69E9840];
  if (__SCNetworkServiceInitialize_initialized == -1)
  {
    if (!service)
    {
      goto LABEL_15;
    }
  }

  else
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (!service)
    {
      goto LABEL_15;
    }
  }

  v4 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(service) != v4 || !*(service + 4))
  {
    goto LABEL_15;
  }

  if (!__SCNetworkServiceExists(service))
  {
    v20 = _SC_LOG_DEFAULT();
    v21 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v20, v21))
    {
      v22 = _os_log_pack_size();
      v30 = block - ((MEMORY[0x1EEE9AC00](v22, v23, v24, v25, v26, v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = *__error();
      v32 = _os_log_pack_fill();
      *v32 = 138412546;
      *(v32 + 4) = service;
      *(v32 + 12) = 2112;
      *(v32 + 14) = protocolType;
      __SC_log_send(3, v20, v21, v30);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SC_crash_once_block_invoke_3;
    block[3] = &__block_descriptor_tmp_51;
    block[5] = 0;
    block[6] = 0;
    block[4] = "SCNetworkServiceRemoveProtocolType() w/removed service";
    if (_SC_crash_once_once_3 != -1)
    {
      dispatch_once(&_SC_crash_once_once_3, block);
    }

    goto LABEL_15;
  }

  if (!__SCNetworkProtocolIsValidType(protocolType))
  {
LABEL_15:
    _SCErrorSet(1002);
    LOBYTE(v6) = 0;
    goto LABEL_16;
  }

  NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(service + 2), protocolType);
  if (SCPreferencesPathGetValue(*(service + 4), NetworkServiceEntity))
  {
    v6 = SCPreferencesPathRemoveValue(*(service + 4), NetworkServiceEntity);
    if (v6)
    {
      v7 = _SC_LOG_DEFAULT();
      v8 = _SC_syslog_os_log_mapping(7);
      if (__SC_log_enabled(7, v7, v8))
      {
        v9 = _os_log_pack_size();
        v17 = block - ((MEMORY[0x1EEE9AC00](v9, v10, v11, v12, v13, v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
        v18 = *__error();
        v19 = _os_log_pack_fill();
        *v19 = 138412546;
        *(v19 + 4) = service;
        *(v19 + 12) = 2112;
        *(v19 + 14) = protocolType;
        __SC_log_send(7, v7, v8, v17);
      }
    }
  }

  else
  {
    _SCErrorSet(1004);
    LOBYTE(v6) = 0;
  }

  CFRelease(NetworkServiceEntity);
LABEL_16:
  v33 = *MEMORY[0x1E69E9840];
  return v6;
}

Boolean SCNetworkServiceSetEnabled(SCNetworkServiceRef service, Boolean enabled)
{
  v2 = enabled;
  block[7] = *MEMORY[0x1E69E9840];
  if (__SCNetworkServiceInitialize_initialized != -1)
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (service)
    {
      goto LABEL_3;
    }

LABEL_19:
    v6 = 1002;
    goto LABEL_20;
  }

  if (!service)
  {
    goto LABEL_19;
  }

LABEL_3:
  v4 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(service) != v4 || !*(service + 4))
  {
    goto LABEL_19;
  }

  if (!__SCNetworkServiceExists(service))
  {
    v23 = _SC_LOG_DEFAULT();
    v24 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v23, v24))
    {
      v25 = _os_log_pack_size();
      v33 = block - ((MEMORY[0x1EEE9AC00](v25, v26, v27, v28, v29, v30, v31, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = *__error();
      v35 = _os_log_pack_fill();
      *v35 = 138412290;
      *(v35 + 4) = service;
      __SC_log_send(3, v23, v24, v33);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SC_crash_once_block_invoke_3;
    block[3] = &__block_descriptor_tmp_51;
    block[5] = 0;
    block[6] = 0;
    block[4] = "SCNetworkProtocolSetEnabled() w/removed service";
    if (_SC_crash_once_once_3 != -1)
    {
      dispatch_once(&_SC_crash_once_once_3, block);
    }

    goto LABEL_19;
  }

  if (v2)
  {
    Interface = SCNetworkServiceGetInterface(service);
    if (Interface)
    {
      if (__SCNetworkInterfaceIsBusyMember(*(service + 4), Interface, 1))
      {
        v6 = 1001;
LABEL_20:
        _SCErrorSet(v6);
        LOBYTE(v8) = 0;
        goto LABEL_21;
      }
    }
  }

  NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(service + 2), 0);
  v8 = __setPrefsEnabled(*(service + 4), NetworkServiceEntity, v2);
  CFRelease(NetworkServiceEntity);
  if (v8)
  {
    v9 = _SC_LOG_DEFAULT();
    v10 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v9, v10))
    {
      v11 = _os_log_pack_size();
      v19 = block - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = *__error();
      v21 = _os_log_pack_fill();
      v22 = "Enabled";
      if (!v2)
      {
        v22 = "Disabled";
      }

      *v21 = 138412546;
      *(v21 + 4) = service;
      *(v21 + 12) = 2080;
      *(v21 + 14) = v22;
      __SC_log_send(7, v9, v10, v19);
    }
  }

LABEL_21:
  v36 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t SCNetworkServiceGetPrimaryRank(CFTypeRef cf)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = 0;
  if (__SCNetworkServiceInitialize_initialized == -1)
  {
    if (!cf)
    {
      goto LABEL_18;
    }
  }

  else
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (!cf)
    {
      goto LABEL_18;
    }
  }

  v2 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_18;
  }

  if (*(cf + 4))
  {
    NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(cf + 2), 0);
    Value = SCPreferencesPathGetValue(*(cf + 4), NetworkServiceEntity);
    CFRelease(NetworkServiceEntity);
    TypeID = CFDictionaryGetTypeID();
    if (!Value || CFGetTypeID(Value) != TypeID)
    {
      goto LABEL_14;
    }

    v6 = CFDictionaryGetValue(Value, @"PrimaryRank");
    if (__str_to_rank(v6, &v15))
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  if (!*(cf + 5))
  {
LABEL_18:
    v12 = 1002;
    goto LABEL_19;
  }

  v7 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, @"State:", *(cf + 2), 0);
  v8 = SCDynamicStoreCopyValue(*(cf + 5), v7);
  CFRelease(v7);
  if (!v8)
  {
LABEL_14:
    v12 = 0;
LABEL_19:
    _SCErrorSet(v12);
    goto LABEL_20;
  }

  v9 = CFDictionaryGetTypeID();
  if (CFGetTypeID(v8) == v9)
  {
    v10 = CFDictionaryGetValue(v8, @"PrimaryRank");
    v11 = __str_to_rank(v10, &v15);
  }

  else
  {
    v11 = 1;
  }

  CFRelease(v8);
  if (!v11)
  {
LABEL_17:
    v15 = 0;
    goto LABEL_18;
  }

LABEL_8:
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_20:
  result = v15;
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

const __SCNetworkInterface *_SCNetworkServiceIsVPN(const __SCNetworkService *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  result = SCNetworkServiceGetInterface(a1);
  if (result)
  {
    v2 = result;
    InterfaceType = SCNetworkInterfaceGetInterfaceType(result);
    if (!CFEqual(InterfaceType, @"PPP"))
    {
      if (!CFEqual(InterfaceType, @"VPN"))
      {
        v4 = &kSCNetworkInterfaceTypeIPSec;
LABEL_8:
        if (!CFEqual(InterfaceType, *v4))
        {
          result = 0;
          goto LABEL_10;
        }
      }

LABEL_9:
      result = 1;
      goto LABEL_10;
    }

    result = SCNetworkInterfaceGetInterface(v2);
    if (result)
    {
      InterfaceType = SCNetworkInterfaceGetInterfaceType(result);
      if (!CFEqual(InterfaceType, @"L2TP"))
      {
        v4 = &kSCNetworkInterfaceTypePPTP;
        goto LABEL_8;
      }

      goto LABEL_9;
    }
  }

LABEL_10:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SCNetworkServiceSetExternalID(uint64_t cf, const void *a2, const void *a3)
{
  block[7] = *MEMORY[0x1E69E9840];
  if (__SCNetworkServiceInitialize_initialized == -1)
  {
    if (!cf)
    {
      goto LABEL_18;
    }
  }

  else
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (!cf)
    {
      goto LABEL_18;
    }
  }

  v6 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(cf) != v6)
  {
    goto LABEL_18;
  }

  if (!*(cf + 32))
  {
    goto LABEL_18;
  }

  TypeID = CFStringGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID)
  {
    goto LABEL_18;
  }

  if (!__SCNetworkServiceExists(cf))
  {
    v15 = _SC_LOG_DEFAULT();
    v16 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v15, v16))
    {
      v17 = _os_log_pack_size();
      v25 = block - ((MEMORY[0x1EEE9AC00](v17, v18, v19, v20, v21, v22, v23, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = *__error();
      v27 = _os_log_pack_fill();
      *v27 = 138412546;
      *(v27 + 4) = cf;
      *(v27 + 12) = 2112;
      *(v27 + 14) = a3;
      __SC_log_send(3, v15, v16, v25);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SC_crash_once_block_invoke_3;
    block[3] = &__block_descriptor_tmp_51;
    block[5] = 0;
    block[6] = 0;
    block[4] = "SCNetworkServiceSetExternalID() w/removed service";
    if (_SC_crash_once_once_3 != -1)
    {
      dispatch_once(&_SC_crash_once_once_3, block);
    }

    goto LABEL_18;
  }

  if (a3)
  {
    v8 = CFStringGetTypeID();
    if (CFGetTypeID(a3) != v8)
    {
LABEL_18:
      _SCErrorSet(1002);
      v28 = 0;
      goto LABEL_19;
    }
  }

  v9 = CFStringCreateWithFormat(0, 0, @"%s%@", "_", a2);
  NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(cf + 16), 0);
  Value = SCPreferencesPathGetValue(*(cf + 32), NetworkServiceEntity);
  v12 = CFDictionaryGetTypeID();
  if (!Value)
  {
    if (!a3)
    {
      CFRelease(NetworkServiceEntity);
      v28 = 0;
LABEL_30:
      v32 = *(cf + 56);
      if (v32)
      {
        CFDictionaryRemoveValue(v32, v9);
      }

      goto LABEL_32;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    goto LABEL_22;
  }

  if (CFGetTypeID(Value) == v12)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
    Mutable = MutableCopy;
    if (!a3)
    {
      CFDictionaryRemoveValue(MutableCopy, v9);
LABEL_23:
      v28 = SCPreferencesPathSetValue(*(cf + 32), NetworkServiceEntity, Mutable);
      CFRelease(Mutable);
      goto LABEL_25;
    }

LABEL_22:
    CFDictionarySetValue(Mutable, v9, a3);
    goto LABEL_23;
  }

  v28 = 0;
LABEL_25:
  CFRelease(NetworkServiceEntity);
  if (!a3)
  {
    goto LABEL_30;
  }

  v31 = *(cf + 56);
  if (!v31)
  {
    v31 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(cf + 56) = v31;
  }

  CFDictionarySetValue(v31, v9, a3);
LABEL_32:
  CFRelease(v9);
  if (!v28)
  {
    _SCErrorSet(1001);
  }

LABEL_19:
  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

const __CFDictionary *SCNetworkServiceCopyExternalID(CFTypeRef cf, const void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (__SCNetworkServiceInitialize_initialized != -1)
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (cf)
    {
      goto LABEL_3;
    }

LABEL_20:
    _SCErrorSet(1002);
    Value = 0;
    goto LABEL_21;
  }

  if (!cf)
  {
    goto LABEL_20;
  }

LABEL_3:
  v4 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(cf) != v4)
  {
    goto LABEL_20;
  }

  if (!*(cf + 4))
  {
    goto LABEL_20;
  }

  TypeID = CFStringGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID)
  {
    goto LABEL_20;
  }

  v6 = CFStringCreateWithFormat(0, 0, @"%s%@", "_", a2);
  v7 = *(cf + 7);
  if (v7 && (v8 = CFDictionaryGetValue(v7, v6)) != 0)
  {
    Value = v8;
    CFRetain(v8);
    CFRelease(v6);
  }

  else
  {
    NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(cf + 2), 0);
    Value = SCPreferencesPathGetValue(*(cf + 4), NetworkServiceEntity);
    v11 = CFDictionaryGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == v11)
      {
        v12 = CFDictionaryGetValue(Value, v6);
        Value = v12;
        if (v12)
        {
          CFRetain(v12);
          Mutable = *(cf + 7);
          if (!Mutable)
          {
            Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            *(cf + 7) = Mutable;
          }

          CFDictionarySetValue(Mutable, v6, Value);
        }
      }

      else
      {
        Value = 0;
      }
    }

    CFRelease(NetworkServiceEntity);
    CFRelease(v6);
    if (!Value)
    {
      _SCErrorSet(1004);
    }
  }

LABEL_21:
  v14 = *MEMORY[0x1E69E9840];
  return Value;
}

void replaceServiceID(uint64_t a1, CFTypeRef *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  ServiceOrder = SCNetworkSetGetServiceOrder(a1);
  TypeID = CFArrayGetTypeID();
  if (ServiceOrder)
  {
    if (CFGetTypeID(ServiceOrder) == TypeID)
    {
      v17.length = CFArrayGetCount(ServiceOrder);
      v17.location = 0;
      if (CFArrayContainsValue(ServiceOrder, v17, *a2))
      {
        MutableCopy = CFArrayCreateMutableCopy(0, 0, ServiceOrder);
        Count = CFArrayGetCount(MutableCopy);
        if (Count >= 1)
        {
          v8 = Count;
          for (i = 0; i != v8; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, i);
            if (CFEqual(ValueAtIndex, *a2))
            {
              CFArraySetValueAtIndex(MutableCopy, i, a2[1]);
            }
          }
        }

        SCNetworkSetSetServiceOrder(a1, MutableCopy);
        CFRelease(MutableCopy);
      }
    }
  }

  SetNetworkServiceEntity = SCPreferencesPathKeyCreateSetNetworkServiceEntity(0, *(a1 + 16), *a2, 0);
  if (SCPreferencesPathGetLink(*(a1 + 24), SetNetworkServiceEntity))
  {
    SCPreferencesPathRemoveValue(*(a1 + 24), SetNetworkServiceEntity);
    CFRelease(SetNetworkServiceEntity);
    SetNetworkServiceEntity = SCPreferencesPathKeyCreateSetNetworkServiceEntity(0, *(a1 + 16), a2[1], 0);
    NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, a2[1], 0);
    SCPreferencesPathSetLink(*(a1 + 24), SetNetworkServiceEntity, NetworkServiceEntity);
    if (!SetNetworkServiceEntity)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  NetworkServiceEntity = 0;
  if (SetNetworkServiceEntity)
  {
LABEL_12:
    CFRelease(SetNetworkServiceEntity);
  }

LABEL_13:
  if (NetworkServiceEntity)
  {
    v13 = *MEMORY[0x1E69E9840];

    CFRelease(NetworkServiceEntity);
  }

  else
  {
    v14 = *MEMORY[0x1E69E9840];
  }
}

void __SCNetworkServiceAddProtocolToService(const __SCNetworkService *a1, const __CFString *a2, const __CFDictionary *a3, Boolean a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = SCNetworkServiceCopyProtocol(a1, a2);
  if (v8 || SCError() == 1004 && SCNetworkServiceAddProtocolType(a1, a2) && (v8 = SCNetworkServiceCopyProtocol(a1, a2)) != 0)
  {
    v9 = v8;
    SCNetworkProtocolSetConfiguration(v8, a3);
    SCNetworkProtocolSetEnabled(v9, a4);
    v10 = *MEMORY[0x1E69E9840];

    CFRelease(v9);
  }

  else
  {
    v11 = *MEMORY[0x1E69E9840];
  }
}

uint64_t __SCNetworkServiceMigrateNew(const __SCPreferences *a1, uint64_t cf, const __CFDictionary *a3, const __CFDictionary *a4, const __CFDictionary *a5)
{
  v8 = cf;
  value[1] = *MEMORY[0x1E69E9840];
  value[0] = 0;
  if (__SCNetworkServiceInitialize_initialized == -1)
  {
    if (!cf)
    {
      goto LABEL_65;
    }
  }

  else
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (!v8)
    {
      goto LABEL_65;
    }
  }

  v10 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(v8) != v10)
  {
    goto LABEL_64;
  }

  v11 = *(v8 + 24);
  TypeID = SCNetworkInterfaceGetTypeID();
  if (!v11 || CFGetTypeID(v11) != TypeID || !*(v8 + 32))
  {
    goto LABEL_64;
  }

  v13 = *(v8 + 16);
  v14 = SCNetworkServiceCopy(a1, v13);
  if (v14)
  {
    v15 = v14;
    v16 = _SC_LOG_DEFAULT();
    v17 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v16, v17))
    {
      v18 = _os_log_pack_size();
      v26 = &v157 - ((MEMORY[0x1EEE9AC00](v18, v19, v20, v21, v22, v23, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(6, v16, v17, v26);
    }

    v8 = 0;
LABEL_11:
    CFRelease(v15);
    goto LABEL_65;
  }

  Interface = SCNetworkServiceGetInterface(v8);
  if (!Interface)
  {
    v53 = _SC_LOG_DEFAULT();
    v54 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v53, v54))
    {
      goto LABEL_63;
    }

    goto LABEL_64;
  }

  v29 = __SCNetworkInterfaceCopyInterfaceEntity(Interface);
  if (!v29)
  {
    v53 = _SC_LOG_DEFAULT();
    v54 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v53, v54))
    {
LABEL_63:
      v121 = _os_log_pack_size();
      v129 = &v157 - ((MEMORY[0x1EEE9AC00](v121, v122, v123, v124, v125, v126, v127, v128) + 15) & 0xFFFFFFFFFFFFFFF0);
      v130 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(6, v53, v54, v129);
    }

LABEL_64:
    v8 = 0;
    goto LABEL_65;
  }

  v30 = v29;
  if (a3 && (v31 = CFDictionaryGetValue(v29, @"DeviceName")) != 0 && (v32 = v31, (v33 = CFDictionaryGetValue(a3, v31)) != 0))
  {
    v34 = v33;
    v35 = _SC_LOG_DEFAULT();
    LODWORD(v159) = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v35, v159))
    {
      v36 = _os_log_pack_size();
      *&v157 = v35;
      v158 = &v157;
      v44 = MEMORY[0x1EEE9AC00](v36, v37, v38, v39, v40, v41, v42, v43);
      v160 = v34;
      v45 = &v157 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
      v46 = *__error();
      v47 = _os_log_pack_fill();
      *v47 = 138412546;
      *(v47 + 4) = v32;
      *(v47 + 12) = 2112;
      *(v47 + 14) = v160;
      v48 = v45;
      v34 = v160;
      __SC_log_send(6, v157, v159, v48);
    }

    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v30);
    CFDictionarySetValue(MutableCopy, @"DeviceName", v34);
    v160 = MutableCopy;
    v50 = CFDictionaryGetValue(MutableCopy, @"UserDefinedName");
    if (v50)
    {
      v51 = v34;
      v52 = CFStringCreateMutableCopy(0, 0, v50);
      v162.length = CFStringGetLength(v52);
      v162.location = 0;
      CFStringFindAndReplace(v52, v32, v51, v162, 0);
      CFDictionarySetValue(v160, @"UserDefinedName", v52);
      CFRelease(v52);
    }

    CFRelease(v30);
  }

  else
  {
    v160 = v30;
  }

  v55 = _SCNetworkInterfaceCreateWithEntity(0, v160, &__SCNetworkInterfaceSearchExternal);
  if (!a4 || !a5 || !CFDictionaryGetValueIfPresent(a5, v8, value))
  {
    v109 = _SC_LOG_DEFAULT();
    v110 = _SC_syslog_os_log_mapping(6);
    if (!__SC_log_enabled(6, v109, v110))
    {
LABEL_55:
      v8 = 0;
      v15 = 0;
      goto LABEL_56;
    }

LABEL_54:
    v111 = _os_log_pack_size();
    v119 = &v157 - ((MEMORY[0x1EEE9AC00](v111, v112, v113, v114, v115, v116, v117, v118) + 15) & 0xFFFFFFFFFFFFFFF0);
    v120 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send(6, v109, v110, v119);
    goto LABEL_55;
  }

  v56 = SCNetworkServiceCreate(a1, v55);
  if (!v56)
  {
    v109 = _SC_LOG_DEFAULT();
    v110 = _SC_syslog_os_log_mapping(6);
    if (!__SC_log_enabled(6, v109, v110))
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  v15 = v56;
  Enabled = SCNetworkServiceGetEnabled(v8);
  if (!SCNetworkServiceSetEnabled(v15, Enabled))
  {
    SCNetworkServiceRemove(v15);
    v133 = _SC_LOG_DEFAULT();
    v134 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v133, v134))
    {
      goto LABEL_75;
    }

    goto LABEL_76;
  }

  if (!SCNetworkServiceEstablishDefaultConfiguration(v15))
  {
    SCNetworkServiceRemove(v15);
    v133 = _SC_LOG_DEFAULT();
    v134 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v133, v134))
    {
LABEL_75:
      v147 = _os_log_pack_size();
      v155 = &v157 - ((MEMORY[0x1EEE9AC00](v147, v148, v149, v150, v151, v152, v153, v154) + 15) & 0xFFFFFFFFFFFFFFF0);
      v156 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(6, v133, v134, v155);
    }

LABEL_76:
    v8 = 0;
    goto LABEL_56;
  }

  _SCNetworkServiceSetServiceID(v15, v13);
  if (CFArrayGetCount(value[0]) < 1)
  {
    goto LABEL_72;
  }

  LODWORD(v158) = 0;
  v59 = 0;
  *&v58 = 138412290;
  v157 = v58;
  v159 = v55;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(value[0], v59);
    v61 = CFDictionaryGetValue(a4, ValueAtIndex);
    if (v61)
    {
      v62 = v61;
      v63 = _SC_LOG_DEFAULT();
      v64 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v63, v64))
      {
        v65 = _os_log_pack_size();
        v73 = &v157 - ((MEMORY[0x1EEE9AC00](v65, v66, v67, v68, v69, v70, v71, v72) + 15) & 0xFFFFFFFFFFFFFFF0);
        v74 = *__error();
        v75 = _os_log_pack_fill();
        SetID = SCNetworkSetGetSetID(v62);
        *v75 = v157;
        *(v75 + 4) = SetID;
        __SC_log_send(6, v63, v64, v73);
      }

      if (SCNetworkSetAddService(v62, v15))
      {
        LODWORD(v158) = 1;
      }

      else
      {
        v77 = _SC_LOG_DEFAULT();
        v78 = _SC_syslog_os_log_mapping(6);
        if (__SC_log_enabled(6, v77, v78))
        {
          v79 = _os_log_pack_size();
          v87 = &v157 - ((MEMORY[0x1EEE9AC00](v79, v80, v81, v82, v83, v84, v85, v86) + 15) & 0xFFFFFFFFFFFFFFF0);
          v88 = *__error();
          *_os_log_pack_fill() = 0;
          __SC_log_send(6, v77, v78, v87);
        }
      }

      v55 = v159;
    }

    ++v59;
  }

  while (v59 < CFArrayGetCount(value[0]));
  if (!v158)
  {
LABEL_72:
    SCNetworkServiceRemove(v15);
    v135 = _SC_LOG_DEFAULT();
    v136 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v135, v136))
    {
      v137 = _os_log_pack_size();
      v145 = &v157 - ((MEMORY[0x1EEE9AC00](v137, v138, v139, v140, v141, v142, v143, v144) + 15) & 0xFFFFFFFFFFFFFFF0);
      v146 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send(6, v135, v136, v145);
    }

    goto LABEL_76;
  }

  Name = __SCNetworkServiceGetName(v8, 0);
  if (Name)
  {
    if (!SCNetworkServiceSetName(v15, Name))
    {
      v90 = _SC_LOG_DEFAULT();
      v91 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v90, v91))
      {
        v92 = _os_log_pack_size();
        v100 = &v157 - ((MEMORY[0x1EEE9AC00](v92, v93, v94, v95, v96, v97, v98, v99) + 15) & 0xFFFFFFFFFFFFFFF0);
        v101 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send(6, v90, v91, v100);
      }
    }
  }

  v102 = SCNetworkServiceCopyProtocols(v8);
  if (v102)
  {
    v103 = v102;
    if (CFArrayGetCount(v102) >= 1)
    {
      v104 = 0;
      do
      {
        v105 = CFArrayGetValueAtIndex(v103, v104);
        Configuration = SCNetworkProtocolGetConfiguration(v105);
        ProtocolType = SCNetworkProtocolGetProtocolType(v105);
        v108 = SCNetworkProtocolGetEnabled(v105);
        __SCNetworkServiceAddProtocolToService(v15, ProtocolType, Configuration, v108);
        ++v104;
      }

      while (v104 < CFArrayGetCount(v103));
    }

    CFRelease(v103);
  }

  copyInterfaceConfiguration(v8, v15);
  v8 = 1;
LABEL_56:
  if (v160)
  {
    CFRelease(v160);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (v15)
  {
    goto LABEL_11;
  }

LABEL_65:
  v131 = *MEMORY[0x1E69E9840];
  return v8;
}

SCNetworkInterfaceRef copyInterfaceConfiguration(const __SCNetworkService *a1, const __SCNetworkService *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  Interface = SCNetworkServiceGetInterface(a1);
  result = SCNetworkServiceGetInterface(a2);
  if (Interface)
  {
    v5 = result;
    if (result)
    {
      v6 = @"PPP";
      v46 = @"L2TP";
      v7 = @"IPSec";
      v44 = @"IPSec";
      v45 = @"PPP";
      do
      {
        Configuration = SCNetworkInterfaceGetConfiguration(Interface);
        if ((Configuration || !SCError()) && !SCNetworkInterfaceSetConfiguration(v5, Configuration))
        {
          v9 = _SC_LOG_DEFAULT();
          v10 = _SC_syslog_os_log_mapping(6);
          if (__SC_log_enabled(6, v9, v10))
          {
            v11 = _os_log_pack_size();
            v19 = &v44 - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
            v20 = *__error();
            *_os_log_pack_fill() = 0;
            v21 = v19;
            v7 = v44;
            __SC_log_send(6, v9, v10, v21);
            v6 = v45;
          }
        }

        InterfaceType = SCNetworkInterfaceGetInterfaceType(Interface);
        if (CFEqual(InterfaceType, v6))
        {
          v23 = SCNetworkInterfaceGetInterface(Interface);
          if (v23)
          {
            v24 = SCNetworkInterfaceGetInterfaceType(v23);
            if (CFEqual(v24, v46))
            {
              ExtendedConfiguration = SCNetworkInterfaceGetExtendedConfiguration(Interface, v7);
              if ((ExtendedConfiguration || !SCError()) && !SCNetworkInterfaceSetExtendedConfiguration(v5, v7, ExtendedConfiguration))
              {
                v26 = _SC_LOG_DEFAULT();
                v27 = _SC_syslog_os_log_mapping(6);
                if (__SC_log_enabled(6, v26, v27))
                {
                  v28 = _os_log_pack_size();
                  v36 = &v44 - ((MEMORY[0x1EEE9AC00](v28, v29, v30, v31, v32, v33, v34, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
                  v37 = *__error();
                  v7 = v44;
                  *_os_log_pack_fill() = 0;
                  __SC_log_send(6, v26, v27, v36);
                  v6 = v45;
                }
              }
            }
          }
        }

        v38 = SCNetworkInterfaceGetExtendedConfiguration(Interface, @"EAPOL");
        if (v38 || !SCError())
        {
          SCNetworkInterfaceSetExtendedConfiguration(v5, @"EAPOL", v38);
        }

        v39 = SCNetworkInterfaceGetExtendedConfiguration(Interface, @"com.apple.payload");
        if (v39 || !SCError())
        {
          SCNetworkInterfaceSetExtendedConfiguration(v5, @"com.apple.payload", v39);
        }

        v40 = SCNetworkInterfaceGetExtendedConfiguration(Interface, @"EAP");
        if (v40 || !SCError())
        {
          SCNetworkInterfaceSetExtendedConfiguration(v5, @"EAP", v40);
        }

        v41 = SCNetworkInterfaceGetExtendedConfiguration(Interface, @"EAPOL.LoginWindow");
        if (v41 || !SCError())
        {
          SCNetworkInterfaceSetExtendedConfiguration(v5, @"EAPOL.LoginWindow", v41);
        }

        v42 = SCNetworkInterfaceGetExtendedConfiguration(Interface, @"IPSec");
        if (v42 || !SCError())
        {
          SCNetworkInterfaceSetExtendedConfiguration(v5, @"IPSec", v42);
        }

        Interface = SCNetworkInterfaceGetInterface(Interface);
        result = SCNetworkInterfaceGetInterface(v5);
        if (!Interface)
        {
          break;
        }

        v5 = result;
      }

      while (result);
    }
  }

  v43 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SCNetworkServiceCreate(SCPreferencesRef prefs, CFTypeRef cf, const __CFString *a3)
{
  v80[1] = *MEMORY[0x1E69E9840];
  if (!cf)
  {
LABEL_21:
    v38 = 0;
    goto LABEL_30;
  }

  UserDefinedName = a3;
  if (!a3)
  {
    UserDefinedName = __SCNetworkInterfaceGetUserDefinedName(cf);
    if (!UserDefinedName)
    {
      v41 = _SC_LOG_DEFAULT();
      v42 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v41, v42))
      {
        v43 = _os_log_pack_size();
        v51 = v80 - ((MEMORY[0x1EEE9AC00](v43, v44, v45, v46, v47, v48, v49, v50) + 15) & 0xFFFFFFFFFFFFFFF0);
        v52 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send(6, v41, v42, v51);
      }

      goto LABEL_21;
    }
  }

  v6 = SCNetworkServiceCreate(prefs, cf);
  v7 = v6;
  if (!v6)
  {
    v23 = _SC_LOG_DEFAULT();
    v24 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v23, v24))
    {
      v25 = _os_log_pack_size();
      v33 = v80 - ((MEMORY[0x1EEE9AC00](v25, v26, v27, v28, v29, v30, v31, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = *__error();
      v35 = _os_log_pack_fill();
      v36 = SCError();
      v37 = SCErrorString(v36);
      *v35 = 136315138;
      *(v35 + 4) = v37;
      __SC_log_send(6, v23, v24, v33);
    }

    v9 = SCNetworkSetCopyCurrent(prefs);
    v38 = 0;
    v10 = 0;
    if (v9)
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

  if (!SCNetworkServiceSetName(v6, UserDefinedName))
  {
    v39 = _SC_LOG_DEFAULT();
    v40 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v39, v40))
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if (!SCNetworkServiceEstablishDefaultConfiguration(v7))
  {
    v39 = _SC_LOG_DEFAULT();
    v40 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v39, v40))
    {
LABEL_23:
      v53 = _os_log_pack_size();
      v61 = v80 - ((MEMORY[0x1EEE9AC00](v53, v54, v55, v56, v57, v58, v59, v60) + 15) & 0xFFFFFFFFFFFFFFF0);
      v62 = *__error();
      v63 = _os_log_pack_fill();
      v64 = SCError();
      v65 = SCErrorString(v64);
      *v63 = 136315138;
      *(v63 + 4) = v65;
      __SC_log_send(6, v39, v40, v61);
    }

LABEL_24:
    v38 = 0;
LABEL_29:
    SCNetworkServiceRemove(v7);
    CFRelease(v7);
    goto LABEL_30;
  }

  v8 = SCNetworkSetCopyCurrent(prefs);
  if (v8)
  {
    v9 = v8;
    v10 = SCNetworkSetAddService(v8, v7);
    if (!v10)
    {
      v11 = _SC_LOG_DEFAULT();
      v12 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v11, v12))
      {
        v13 = _os_log_pack_size();
        v21 = v80 - ((MEMORY[0x1EEE9AC00](v13, v14, v15, v16, v17, v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
        v22 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send(6, v11, v12, v21);
      }

      SCNetworkServiceRemove(v7);
    }

    CFRelease(v7);
LABEL_16:
    CFRelease(v9);
    v38 = v10;
    goto LABEL_30;
  }

  v38 = 1;
LABEL_26:
  v66 = _SC_LOG_DEFAULT();
  v67 = _SC_syslog_os_log_mapping(6);
  if (__SC_log_enabled(6, v66, v67))
  {
    v68 = _os_log_pack_size();
    v76 = v80 - ((MEMORY[0x1EEE9AC00](v68, v69, v70, v71, v72, v73, v74, v75) + 15) & 0xFFFFFFFFFFFFFFF0);
    v77 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send(6, v66, v67, v76);
  }

  if (v7)
  {
    goto LABEL_29;
  }

LABEL_30:
  v78 = *MEMORY[0x1E69E9840];
  return v38;
}

uint64_t __SCNetworkServiceIsPPTP(uint64_t result)
{
  v2 = *MEMORY[0x1E69E9840];
  if (result)
  {
    result = *(result + 24);
    if (result)
    {
      result = __SCNetworkInterfaceGetEntitySubType(result);
      if (result)
      {
        result = CFEqual(result, @"PPTP") != 0;
      }
    }
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void __SCNetworkServiceDeallocate(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  CFRelease(*(a1 + 16));
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = *MEMORY[0x1E69E9840];

    CFRelease(v6);
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];
  }
}

BOOL __SCNetworkServiceEqual(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    result = 1;
  }

  else
  {
    result = *(a1 + 32) == *(a2 + 32) && CFEqual(*(a1 + 16), *(a2 + 16)) != 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

CFHashCode __SCNetworkServiceHash(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  v2 = *MEMORY[0x1E69E9840];

  return CFHash(v1);
}

__CFString *__SCNetworkServiceCopyDescription(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<SCNetworkService %p [%p]> {", a1, v2);
  CFStringAppendFormat(Mutable, 0, @"id = %@", a1[2]);
  if (a1[4])
  {
    CFStringAppendFormat(Mutable, 0, @", prefs = %p", a1[4]);
  }

  else if (a1[5])
  {
    CFStringAppendFormat(Mutable, 0, @", store = %p", a1[5]);
  }

  if (a1[6])
  {
    CFStringAppendFormat(Mutable, 0, @", name = %@", a1[6]);
  }

  if (!__SCNetworkServiceExists(a1))
  {
    CFStringAppendFormat(Mutable, 0, @", REMOVED");
  }

  CFStringAppendFormat(Mutable, 0, @"}");
  v4 = *MEMORY[0x1E69E9840];
  return Mutable;
}

Boolean SCNetworkSetAddService(SCNetworkSetRef set, SCNetworkServiceRef service)
{
  v66 = *MEMORY[0x1E69E9840];
  if (__SCNetworkSetInitialize_initialized == -1)
  {
    if (!set)
    {
LABEL_22:
      v24 = 1002;
      goto LABEL_23;
    }
  }

  else
  {
    SCNetworkSetAddService_cold_1();
    if (!set)
    {
      goto LABEL_22;
    }
  }

  v4 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(set) != v4)
  {
    goto LABEL_22;
  }

  TypeID = SCNetworkServiceGetTypeID();
  if (!service || CFGetTypeID(service) != TypeID || !*(service + 4))
  {
    goto LABEL_22;
  }

  if (!__SCNetworkSetExists(set))
  {
    v10 = __log_SCNetworkConfiguration();
    v11 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v10, v11))
    {
      v12 = _os_log_pack_size();
      v20 = &block - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17, v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = *__error();
      v22 = _os_log_pack_fill();
      *v22 = 138412546;
      *(v22 + 4) = set;
      *(v22 + 12) = 2112;
      *(v22 + 14) = service;
      __SC_log_send(3, v10, v11, v20);
    }

    block = MEMORY[0x1E69E9820];
    v60 = 0x40000000;
    v61 = ___SC_crash_once_block_invoke_4;
    v62 = &__block_descriptor_tmp_16;
    v64 = 0;
    v65 = 0;
    v63 = "SCNetworkSetAddService() w/removed set";
    if (_SC_crash_once_once_4 == -1)
    {
      goto LABEL_22;
    }

LABEL_41:
    dispatch_once(&_SC_crash_once_once_4, &block);
    goto LABEL_22;
  }

  if (!__SCNetworkServiceExists(service))
  {
    v25 = __log_SCNetworkConfiguration();
    v26 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v25, v26))
    {
      v27 = _os_log_pack_size();
      v35 = &block - ((MEMORY[0x1EEE9AC00](v27, v28, v29, v30, v31, v32, v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
      v36 = *__error();
      v37 = _os_log_pack_fill();
      *v37 = 138412546;
      *(v37 + 4) = set;
      *(v37 + 12) = 2112;
      *(v37 + 14) = service;
      __SC_log_send(3, v25, v26, v35);
    }

    block = MEMORY[0x1E69E9820];
    v60 = 0x40000000;
    v61 = ___SC_crash_once_block_invoke_4;
    v62 = &__block_descriptor_tmp_16;
    v64 = 0;
    v65 = 0;
    v63 = "SCNetworkSetAddService() w/removed service";
    if (_SC_crash_once_once_4 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_41;
  }

  v6 = SCNetworkSetCopyServices(set);
  if (v6)
  {
    v7 = v6;
    v67.length = CFArrayGetCount(v6);
    v67.location = 0;
    v8 = CFArrayContainsValue(v7, v67, service);
    CFRelease(v7);
    if (v8)
    {
      LOBYTE(v9) = 1;
      goto LABEL_24;
    }
  }

  Interface = SCNetworkServiceGetInterface(service);
  if (Interface && __SCNetworkInterfaceIsBusyMember(*(service + 4), Interface, 1))
  {
    v24 = 1001;
LABEL_23:
    _SCErrorSet(v24);
    LOBYTE(v9) = 0;
    goto LABEL_24;
  }

  v40 = SCNetworkServiceGetInterface(service);
  if (v40)
  {
    v41 = __SCNetworkInterfaceCopyDeepConfiguration(set, v40);
  }

  else
  {
    v41 = 0;
  }

  SetNetworkServiceEntity = SCPreferencesPathKeyCreateSetNetworkServiceEntity(0, *(set + 2), *(service + 2), 0);
  v43 = SCPreferencesPathGetLink(*(set + 3), SetNetworkServiceEntity) != 0;
  NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(service + 2), 0);
  if (SCPreferencesPathSetLink(*(set + 3), SetNetworkServiceEntity, NetworkServiceEntity))
  {
    _SCNetworkInterfaceCacheOpen();
    v9 = ensure_unique_service_name(service);
    _SCNetworkInterfaceCacheClose();
    if (!v9)
    {
      SCPreferencesPathRemoveValue(*(set + 3), SetNetworkServiceEntity);
    }
  }

  else
  {
    v9 = 0;
  }

  CFRelease(SetNetworkServiceEntity);
  CFRelease(NetworkServiceEntity);
  if (v9)
  {
    if (v40)
    {
      __SCNetworkInterfaceSetDeepConfiguration(set, v40, v41, v45);
    }

    _serviceOrder_add(set, service, v43);
    *(set + 40) = 1;
    v46 = __log_SCNetworkConfiguration();
    v47 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v46, v47))
    {
      v48 = _os_log_pack_size();
      v56 = &block - ((MEMORY[0x1EEE9AC00](v48, v49, v50, v51, v52, v53, v54, v55) + 15) & 0xFFFFFFFFFFFFFFF0);
      v57 = *__error();
      v58 = _os_log_pack_fill();
      *v58 = 138412546;
      *(v58 + 4) = set;
      *(v58 + 12) = 2112;
      *(v58 + 14) = service;
      __SC_log_send(7, v46, v47, v56);
    }
  }

  if (v41)
  {
    CFRelease(v41);
  }

LABEL_24:
  v38 = *MEMORY[0x1E69E9840];
  return v9;
}

BOOL __SCNetworkSetExists(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  result = *(a1 + 24) && (Set = SCPreferencesPathKeyCreateSet(0, *(a1 + 16)), Value = SCPreferencesPathGetValue(*(a1 + 24), Set), CFRelease(Set), TypeID = CFDictionaryGetTypeID(), Value) && CFGetTypeID(Value) == TypeID;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ensure_unique_service_name(const __SCNetworkService *a1)
{
  v37[1] = *MEMORY[0x1E69E9840];
  Interface = SCNetworkServiceGetInterface(a1);
  Name = SCNetworkServiceGetName(a1);
  v4 = Name;
  if (Name)
  {
    CFRetain(Name);
  }

  v5 = SCNetworkServiceSetName(a1, v4);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = MEMORY[0x1E695E9C0];
    while (SCError() == 1005)
    {
      if (!v4)
      {
        goto LABEL_18;
      }

      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v4, @" ");
      if (ArrayBySeparatingStrings)
      {
        v9 = ArrayBySeparatingStrings;
        MutableCopy = CFArrayCreateMutableCopy(0, 0, ArrayBySeparatingStrings);
        CFRelease(v9);
      }

      else
      {
        MutableCopy = CFArrayCreateMutable(0, 0, v7);
        CFArrayAppendValue(MutableCopy, v4);
      }

      Count = CFArrayGetCount(MutableCopy);
      if (Count < 2 || (v12 = Count - 1, ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, Count - 1), IntValue = CFStringGetIntValue(ValueAtIndex), IntValue < 1))
      {
        v15 = 2;
      }

      else
      {
        v15 = (IntValue + 1);
        CFArrayRemoveValueAtIndex(MutableCopy, v12);
      }

      v16 = CFStringCreateWithFormat(0, 0, @"%d", v15);
      CFArrayAppendValue(MutableCopy, v16);
      CFRelease(v16);
      v17 = CFStringCreateByCombiningStrings(0, MutableCopy, @" ");
      CFRelease(MutableCopy);
      if (!v17)
      {
LABEL_18:
        v19 = __log_SCNetworkConfiguration();
        v20 = _SC_syslog_os_log_mapping(6);
        if (!__SC_log_enabled(6, v19, v20))
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      CFRelease(v4);
      v18 = SCNetworkServiceSetName(a1, v17);
      v4 = v17;
      if (v18)
      {
        v6 = v18;
        goto LABEL_24;
      }
    }

    v19 = __log_SCNetworkConfiguration();
    v20 = _SC_syslog_os_log_mapping(6);
    if (!__SC_log_enabled(6, v19, v20))
    {
      goto LABEL_22;
    }

LABEL_21:
    v21 = _os_log_pack_size();
    v29 = v37 - ((MEMORY[0x1EEE9AC00](v21, v22, v23, v24, v25, v26, v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = *__error();
    v31 = _os_log_pack_fill();
    LocalizedDisplayName = SCNetworkInterfaceGetLocalizedDisplayName(Interface);
    v33 = SCError();
    v34 = SCErrorString(v33);
    *v31 = 138412546;
    *(v31 + 4) = LocalizedDisplayName;
    *(v31 + 12) = 2080;
    *(v31 + 14) = v34;
    __SC_log_send(6, v19, v20, v29);
LABEL_22:
    v6 = 0;
  }

  v17 = v4;
  if (v4)
  {
LABEL_24:
    CFRelease(v17);
  }

  v35 = *MEMORY[0x1E69E9840];
  return v6;
}

void _serviceOrder_add(SCPreferencesRef *a1, SCNetworkServiceRef service, int a3)
{
  v62 = *MEMORY[0x1E69E9840];
  ServiceID = SCNetworkServiceGetServiceID(service);
  v7 = _serviceOrder(service);
  ServiceOrder = SCNetworkSetGetServiceOrder(a1);
  if (ServiceOrder)
  {
    MutableCopy = CFArrayCreateMutableCopy(0, 0, ServiceOrder);
  }

  else
  {
    MutableCopy = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v10 = MutableCopy;
  if (!MutableCopy)
  {
    _serviceOrder_add_cold_1();
  }

  Count = CFArrayGetCount(MutableCopy);
  if (Count < 1)
  {
    goto LABEL_12;
  }

  v12 = Count;
  v13 = 0;
  for (i = 0; i != v12; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v10, i);
    if (CFEqual(ValueAtIndex, ServiceID))
    {
      ++v13;
    }
  }

  if (v13 != 1)
  {
    if (v13)
    {
      v30 = __log_SCNetworkConfiguration();
      v31 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v30, v31))
      {
        v32 = _os_log_pack_size();
        v54[1] = v54;
        v40 = MEMORY[0x1EEE9AC00](v32, v33, v34, v35, v36, v37, v38, v39);
        v54[0] = v30;
        v41 = v54 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
        v42 = *__error();
        v43 = _os_log_pack_fill();
        v44 = "";
        *v43 = 136315650;
        if (!a3)
        {
          v44 = "new ";
        }

        *(v43 + 4) = v44;
        *(v43 + 12) = 2048;
        *(v43 + 14) = v13;
        *(v43 + 22) = 2112;
        *(v43 + 24) = service;
        __SC_log_send(3, v54[0], v31, v41);
      }

      block = MEMORY[0x1E69E9820];
      v56 = 0x40000000;
      v57 = ___SC_crash_once_block_invoke_4;
      v58 = &__block_descriptor_tmp_16;
      v60 = 0;
      v61 = 0;
      v59 = "SCNetworkSetAddService() w/multiple ServiceOrder references";
      if (_SC_crash_once_once_4 != -1)
      {
        dispatch_once(&_SC_crash_once_once_4, &block);
      }

      _serviceOrder_clear(v10, ServiceID);
      goto LABEL_27;
    }

LABEL_12:
    if (a3)
    {
      v16 = __log_SCNetworkConfiguration();
      v17 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v16, v17))
      {
        v18 = _os_log_pack_size();
        v26 = v54 - ((MEMORY[0x1EEE9AC00](v18, v19, v20, v21, v22, v23, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
        v27 = *__error();
        v28 = _os_log_pack_fill();
        *v28 = 138412290;
        *(v28 + 4) = service;
        __SC_log_send(3, v16, v17, v26);
      }

      block = MEMORY[0x1E69E9820];
      v56 = 0x40000000;
      v57 = ___SC_crash_once_block_invoke_4;
      v58 = &__block_descriptor_tmp_16;
      v60 = 0;
      v61 = 0;
      v59 = "SCNetworkSetAddService() w/updated service not in ServiceOrder";
      if (_SC_crash_once_once_4 != -1)
      {
        dispatch_once(&_SC_crash_once_once_4, &block);
      }
    }

LABEL_27:
    v45 = CFArrayGetCount(v10);
    if (v45 < 1)
    {
      v48 = 0;
    }

    else
    {
      v46 = v45;
      v47 = 0;
      v48 = 0;
      do
      {
        v49 = CFArrayGetValueAtIndex(v10, v47);
        TypeID = CFStringGetTypeID();
        if (v49)
        {
          if (CFGetTypeID(v49) == TypeID)
          {
            v51 = SCNetworkServiceCopy(a1[3], v49);
            if (v51)
            {
              v52 = v51;
              if (v7 >= _serviceOrder(v51))
              {
                v48 = v47 + 1;
              }

              CFRelease(v52);
            }
          }
        }

        ++v47;
      }

      while (v46 != v47);
    }

    CFArrayInsertValueAtIndex(v10, v48, ServiceID);
    SCNetworkSetSetServiceOrder(a1, v10);
    CFRelease(v10);
    v53 = *MEMORY[0x1E69E9840];
    return;
  }

  v29 = *MEMORY[0x1E69E9840];

  CFRelease(v10);
}