void sub_1817B4E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v9);
  _Unwind_Resume(a1);
}

void addPluginDataToNotificationDict(void *a1, void *a2)
{
  v12 = a1;
  v3 = a2;
  v4 = [v3 uniqueIdentifier];
  v5 = [v4 UUIDString];

  if (v5)
  {
    v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
    v7 = [v3 bundleIdentifier];
    if (v7)
    {
      [v6 setObject:v7 forKey:*MEMORY[0x1E695E4F0]];
    }

    v8 = [v3 effectiveBundleIdentifier];
    if (v8)
    {
      [v6 setObject:v8 forKey:@"NSExtensionIdentifier"];
    }

    v9 = [v3 bundleVersion];
    if (v9)
    {
      [v6 setObject:v9 forKey:*MEMORY[0x1E695E500]];
    }

    v10 = [v3 URL];
    v11 = [v10 path];

    if (v11)
    {
      [v6 setObject:v11 forKey:@"_LSBundlePath"];
    }

    if ([v6 count])
    {
      [v12 setObject:v6 forKey:v5];
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v11 = 0;
    v6 = 0;
  }
}

void sub_1817B7124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1817B7EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1817B8344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__333(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1865D71B0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1817BA2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t initMKBDeviceUnlockedSinceBoot()
{
  v0 = MobileKeyBagLibrary_frameworkLibrary;
  if (!MobileKeyBagLibrary_frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/MobileKeyBag.framework/MobileKeyBag", 2);
    MobileKeyBagLibrary_frameworkLibrary = v0;
  }

  v1 = dlsym(v0, "MKBDeviceUnlockedSinceBoot");
  softLinkMKBDeviceUnlockedSinceBoot[0] = v1;

  return v1();
}

SEL __recordSelectorsForPluginNotification_block_invoke()
{
  v0 = 0;
  recordSelectorsForPluginNotification_registeredSels = malloc_type_malloc(0x30uLL, 0x80040B8603338uLL);
  *(recordSelectorsForPluginNotification_registeredSels + 40) = 0;
  do
  {
    result = sel_registerName(recordSelectorsForPluginNotification_unregisteredSels[v0]);
    *(recordSelectorsForPluginNotification_registeredSels + v0 * 8) = result;
    ++v0;
  }

  while (v0 != 5);
  return result;
}

void OUTLINED_FUNCTION_5_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

uint64_t LSPersonaTypeForPersonaAttributes(void *a1)
{
  v1 = a1;
  if ([v1 isSystemPersona])
  {
    v2 = 3;
  }

  else if ([v1 isPersonalPersona])
  {
    v2 = 1;
  }

  else if ([v1 isEnterprisePersona])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t _AppleIDAuthenticationAddAppleIDWithBlock(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5)
{
  v7 = AppleIDGetLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "AddAppleID: This operation is not supported anymore\n", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___AppleIDAuthenticationAddAppleIDWithBlock_block_invoke;
  block[3] = &unk_1E6A1F498;
  block[4] = a5;
  dispatch_async(a4, block);
  return 1;
}

uint64_t _AppleIDAuthenticationAddAppleID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v5 = dispatch_semaphore_create(0);
  if (getAppleIDAuthDispatchQueue(void)::sOnce != -1)
  {
    _AppleIDAuthenticationAddAppleID_cold_1();
  }

  v6 = getAppleIDAuthDispatchQueue(void)::sAppleIDAuthDispatchQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1174405120;
  v12[2] = ___AppleIDAuthenticationAddAppleID_block_invoke;
  v12[3] = &unk_1EEF64868;
  v12[4] = &v15;
  v12[5] = a4;
  object = v5;
  v14 = 1;
  dispatch_retain(v5);
  _AppleIDAuthenticationAddAppleIDWithBlock(v7, v8, v9, v6, v12);
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  if (v14 == 1)
  {
    dispatch_release(object);
  }

  v10 = *(v16 + 24);
  dispatch_release(v5);
  _Block_object_dispose(&v15, 8);
  return v10;
}

void __copy_helper_block_8_48c14_ZTS9Semaphore(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 48) = v2;
  *(a1 + 56) = 1;
  dispatch_retain(v2);
}

void __destroy_helper_block_8_48c14_ZTS9Semaphore(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    dispatch_release(*(a1 + 48));
  }
}

uint64_t _AppleIDAuthenticationForgetAppleIDWithBlock(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v6 = AppleIDGetLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "ForgetAppleID: This operation is not supported anymore\n", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___AppleIDAuthenticationForgetAppleIDWithBlock_block_invoke;
  block[3] = &unk_1E6A1F4C0;
  block[4] = a4;
  dispatch_async(a3, block);
  return 1;
}

uint64_t _AppleIDAuthenticationForgetAppleID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v4 = dispatch_semaphore_create(0);
  if (getAppleIDAuthDispatchQueue(void)::sOnce != -1)
  {
    _AppleIDAuthenticationAddAppleID_cold_1();
  }

  v5 = getAppleIDAuthDispatchQueue(void)::sAppleIDAuthDispatchQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1174405120;
  v10[2] = ___AppleIDAuthenticationForgetAppleID_block_invoke;
  v10[3] = &unk_1EEF648A0;
  v10[4] = &v13;
  v10[5] = a3;
  object = v4;
  v12 = 1;
  dispatch_retain(v4);
  _AppleIDAuthenticationForgetAppleIDWithBlock(v6, v7, v5, v10);
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  if (v12 == 1)
  {
    dispatch_release(object);
  }

  v8 = *(v14 + 24);
  dispatch_release(v4);
  _Block_object_dispose(&v13, 8);
  return v8;
}

uint64_t _AppleIDAuthenticationCopyAppleIDsWithBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = AppleIDGetLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "CopyAppleIDs: Deferring to sharingd. \n", buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___AppleIDAuthenticationCopyAppleIDsWithBlock_block_invoke;
  v7[3] = &unk_1E6A1F4E8;
  v7[4] = a3;
  softLinkSFAppleIDClientCopyMyAppleID(a2, v7);
  return 1;
}

uint64_t _AppleIDAuthenticationCopyAppleIDs(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v3 = dispatch_semaphore_create(0);
  if (getAppleIDAuthDispatchQueue(void)::sOnce != -1)
  {
    _AppleIDAuthenticationAddAppleID_cold_1();
  }

  v4 = getAppleIDAuthDispatchQueue(void)::sAppleIDAuthDispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1174405120;
  v8[2] = ___AppleIDAuthenticationCopyAppleIDs_block_invoke;
  v8[3] = &unk_1EEF648D8;
  v8[4] = &v11;
  v8[5] = a2;
  object = v3;
  v10 = 1;
  dispatch_retain(v3);
  _AppleIDAuthenticationCopyAppleIDsWithBlock(v5, v4, v8);
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  if (v10 == 1)
  {
    dispatch_release(object);
  }

  v6 = v12[3];
  dispatch_release(v3);
  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t _AppleIDAuthenticationCopyCertificateInfoWithBlock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = AppleIDGetLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "CopyCertificateInfo: Deferring to sharingd. \n", buf, 2u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = ___AppleIDAuthenticationCopyCertificateInfoWithBlock_block_invoke;
  v10[3] = &unk_1E6A1F510;
  v10[4] = a5;
  softLinkSFAppleIDClientCopyCertificateInfo(a1, a4, v10);
  return 1;
}

uint64_t _AppleIDAuthenticationCopyCertificateInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v6 = dispatch_semaphore_create(0);
  if (getAppleIDAuthDispatchQueue(void)::sOnce != -1)
  {
    _AppleIDAuthenticationAddAppleID_cold_1();
  }

  v7 = getAppleIDAuthDispatchQueue(void)::sAppleIDAuthDispatchQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1174405120;
  v12[2] = ___AppleIDAuthenticationCopyCertificateInfo_block_invoke;
  v12[3] = &unk_1EEF64910;
  v12[4] = &v15;
  v12[5] = a4;
  object = v6;
  v14 = 1;
  dispatch_retain(v6);
  _AppleIDAuthenticationCopyCertificateInfoWithBlock(a1, v8, v9, v7, v12);
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  if (v14 == 1)
  {
    dispatch_release(object);
  }

  v10 = v16[3];
  dispatch_release(v6);
  _Block_object_dispose(&v15, 8);
  return v10;
}

uint64_t _AppleIDAuthenticationCopyMyInfoWithBlock(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v6 = AppleIDGetLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "CopyMyInfo: this operation is not supported anymore.\n", buf, 2u);
  }

  result = 0;
  if (a3)
  {
    if (a4)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = ___AppleIDAuthenticationCopyMyInfoWithBlock_block_invoke;
      block[3] = &unk_1E6A1F538;
      block[4] = a4;
      dispatch_async(a3, block);
      return 1;
    }
  }

  return result;
}

uint64_t _AppleIDAuthenticationCopyMyInfo(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v4 = dispatch_semaphore_create(0);
  if (getAppleIDAuthDispatchQueue(void)::sOnce != -1)
  {
    _AppleIDAuthenticationAddAppleID_cold_1();
  }

  v5 = getAppleIDAuthDispatchQueue(void)::sAppleIDAuthDispatchQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1174405120;
  v10[2] = ___AppleIDAuthenticationCopyMyInfo_block_invoke;
  v10[3] = &unk_1EEF64948;
  v10[4] = &v13;
  v10[5] = a3;
  object = v4;
  v12 = 1;
  dispatch_retain(v4);
  if (_AppleIDAuthenticationCopyMyInfoWithBlock(v6, v7, v5, v10))
  {
    dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  }

  else if (a3)
  {
    *a3 = CFErrorCreate(*MEMORY[0x1E695E480], @"CSIdentityErrorDomain", -99, 0);
  }

  if (v12 == 1)
  {
    dispatch_release(object);
  }

  v8 = v14[3];
  dispatch_release(v4);
  _Block_object_dispose(&v13, 8);
  return v8;
}

uint64_t _AppleIDAuthenticationFindPersonWithBlock(const __CFDictionary *ValueAtIndex, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = AppleIDGetLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "FindPerson: Deferring to sharingd.", buf, 2u);
  }

  if (ValueAtIndex)
  {
    Value = CFDictionaryGetValue(ValueAtIndex, @"email");
    TypeID = CFArrayGetTypeID();
    if (Value && TypeID && CFGetTypeID(Value) != TypeID)
    {
      Value = 0;
    }

    v10 = CFDictionaryGetValue(ValueAtIndex, @"phone");
    v11 = CFArrayGetTypeID();
    if (v10 && v11 && CFGetTypeID(v10) != v11)
    {
      v10 = 0;
    }

    if (!Value || !CFArrayGetCount(Value) || (ValueAtIndex = CFArrayGetValueAtIndex(Value, 0), v12 = CFStringGetTypeID(), !ValueAtIndex) || v12 && CFGetTypeID(ValueAtIndex) != v12)
    {
      if (!v10 || !CFArrayGetCount(v10) || (ValueAtIndex = CFArrayGetValueAtIndex(v10, 0), v13 = CFStringGetTypeID(), ValueAtIndex) && v13 && CFGetTypeID(ValueAtIndex) != v13)
      {
        ValueAtIndex = 0;
      }
    }
  }

  else
  {
    CFArrayGetTypeID();
    CFArrayGetTypeID();
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = ___AppleIDAuthenticationFindPersonWithBlock_block_invoke;
  v15[3] = &unk_1E6A1F560;
  v15[4] = a4;
  softLinkSFAppleIDClientCopyPersonInfo(ValueAtIndex, a3, v15);
  return 1;
}

void _AppleIDAuthenticationFindPerson()
{
  v0[0] = 0;
  v0[1] = v0;
  v0[2] = 0x2000000000;
  v0[3] = 0;
  operator new();
}

uint64_t _AppleIDCopySecIdentityForAppleIDAccount(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = AppleIDGetLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11[0]) = 0;
    _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "CopySecIdentity: Deferring to sharingd. \n", v11, 2u);
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1174405120;
  v11[2] = ___ZL41__AppleIDCopySecIdentityForAppleIDAccountPK10__CFStringPK14__CFDictionaryPP9__CFError_block_invoke;
  v11[3] = &unk_1EEF64A48;
  v11[4] = &v14;
  v11[5] = &v18;
  object = v5;
  v13 = 1;
  dispatch_retain(v5);
  softLinkSFAppleIDClientCopyIdentity(a1, global_queue, v11);
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  if (a3)
  {
    v8 = *(v19 + 6);
    if (v8)
    {
      *a3 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E638], v8, 0);
    }
  }

  v9 = v15[3];
  if (v13 == 1)
  {
    dispatch_release(object);
  }

  dispatch_release(v5);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v9;
}

CFStringRef _AppleIDCopyDSIDForCertificate(uint64_t a1, CFErrorRef *a2)
{
  v4 = AppleIDGetLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "AppleIDCopyDSIDForCertificate\n", v23, 2u);
  }

  if (a1)
  {
    v5 = SecCertificateCopyCommonNames();
    v6 = v5;
    if (v5 && CFArrayGetCount(v5) >= 1 && (ValueAtIndex = CFArrayGetValueAtIndex(v6, 0), TypeID = CFStringGetTypeID(), ValueAtIndex) && (!TypeID || CFGetTypeID(ValueAtIndex) == TypeID) && (v9 = CFRetain(ValueAtIndex)) != 0)
    {
      v10 = v9;
      Length = CFStringGetLength(v9);
      v12 = 0;
      v13 = 1;
      while (1)
      {
        v14 = v13;
        v15 = off_1E6A1F5A8[v12];
        if (CFStringHasPrefix(v10, v15))
        {
          break;
        }

        v13 = 0;
        v12 = 1;
        if ((v14 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      v19 = CFStringGetLength(v15);
      if (v19 < Length)
      {
        v20 = v19;
        v21 = *MEMORY[0x1E695E480];
        v22 = CFStringGetLength(v10);
        v24.location = v20 + 1;
        v24.length = v22 + ~v20;
        v17 = CFStringCreateWithSubstring(v21, v10, v24);
        v13 = 0;
        goto LABEL_36;
      }

      v13 = 0;
LABEL_35:
      v17 = 0;
LABEL_36:
      v16 = 0;
      if (!a2)
      {
LABEL_18:
        if (v6)
        {
          CFRelease(v6);
        }

        if ((v13 & 1) == 0)
        {
          CFRelease(v10);
        }

        if (!a2)
        {
          goto LABEL_28;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v16 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E638], -1, 0);
      v10 = 0;
      v17 = 0;
      v13 = 1;
      if (!a2)
      {
        goto LABEL_18;
      }
    }

    if (!v17 && !v16)
    {
      v16 = CFErrorCreate(*MEMORY[0x1E695E480], @"CSIdentityErrorDomain", -10, 0);
    }

    goto LABEL_18;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = CFErrorCreate(*MEMORY[0x1E695E480], @"CSIdentityErrorDomain", -99, 0);
  v17 = 0;
LABEL_26:
  if (!v17)
  {
    *a2 = v16;
    return v17;
  }

LABEL_28:
  if (v16)
  {
    CFRelease(v16);
  }

  return v17;
}

uint64_t _AppleIDAuthenticatePasswordWithBlock(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5)
{
  v7 = AppleIDGetLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "AuthenticatePasswordWithBlock: This operation is not supported anymore\n", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___AppleIDAuthenticatePasswordWithBlock_block_invoke;
  block[3] = &unk_1E6A1F5C0;
  block[4] = a5;
  dispatch_async(a4, block);
  return 1;
}

uint64_t _AppleIDAuthenticatePassword(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v5 = dispatch_semaphore_create(0);
  if (getAppleIDAuthDispatchQueue(void)::sOnce != -1)
  {
    _AppleIDAuthenticationAddAppleID_cold_1();
  }

  v6 = getAppleIDAuthDispatchQueue(void)::sAppleIDAuthDispatchQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1174405120;
  v12[2] = ___AppleIDAuthenticatePassword_block_invoke;
  v12[3] = &unk_1EEF64980;
  v12[4] = &v15;
  v12[5] = a4;
  object = v5;
  v14 = 1;
  dispatch_retain(v5);
  _AppleIDAuthenticatePasswordWithBlock(v7, v8, v9, v6, v12);
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  if (v14 == 1)
  {
    dispatch_release(object);
  }

  v10 = *(v16 + 24);
  dispatch_release(v5);
  _Block_object_dispose(&v15, 8);
  return v10;
}

uint64_t _AppleIDAuthenticationCopyStatusWithBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = AppleIDGetLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "CopyStatus: Deferring to sharingd. \n", buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___AppleIDAuthenticationCopyStatusWithBlock_block_invoke;
  v7[3] = &unk_1E6A1F5E8;
  v7[4] = a3;
  softLinkSFAppleIDClientCopyMyAccountInfo(a2, v7);
  return 1;
}

uint64_t _AppleIDAuthenticationCopyStatus(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v5 = dispatch_semaphore_create(0);
  if (getAppleIDAuthDispatchQueue(void)::sOnce != -1)
  {
    _AppleIDAuthenticationAddAppleID_cold_1();
  }

  v6 = getAppleIDAuthDispatchQueue(void)::sAppleIDAuthDispatchQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1174405120;
  v10[2] = ___AppleIDAuthenticationCopyStatus_block_invoke;
  v10[3] = &unk_1EEF649B8;
  v10[4] = &v13;
  v10[5] = a2;
  v10[6] = a3;
  object = v5;
  v12 = 1;
  dispatch_retain(v5);
  _AppleIDAuthenticationCopyStatusWithBlock(v7, v6, v10);
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  if (v12 == 1)
  {
    dispatch_release(object);
  }

  v8 = *(v14 + 24);
  dispatch_release(v5);
  _Block_object_dispose(&v13, 8);
  return v8;
}

void __copy_helper_block_8_56c14_ZTS9Semaphore(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(a1 + 56) = v2;
  *(a1 + 64) = 1;
  dispatch_retain(v2);
}

void __destroy_helper_block_8_56c14_ZTS9Semaphore(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    dispatch_release(*(a1 + 56));
  }
}

uint64_t _AppleIDUpdateLinkedIdentityProvisioningWithBlock(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v7 = AppleIDGetLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "UpdateLinkedIdentityProvisioning: Executing from framework\n", buf, 2u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___AppleIDUpdateLinkedIdentityProvisioningWithBlock_block_invoke;
  v9[3] = &unk_1E6A1F610;
  v9[4] = a4;
  v9[5] = a1;
  dispatch_async(a3, v9);
  return 1;
}

uint64_t _AppleIDUpdateLinkedIdentityProvisioning(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v5 = dispatch_semaphore_create(0);
  if (getAppleIDAuthDispatchQueue(void)::sOnce != -1)
  {
    _AppleIDAuthenticationAddAppleID_cold_1();
  }

  v6 = getAppleIDAuthDispatchQueue(void)::sAppleIDAuthDispatchQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1174405120;
  v10[2] = ___AppleIDUpdateLinkedIdentityProvisioning_block_invoke;
  v10[3] = &unk_1EEF649F0;
  v10[4] = &v13;
  v10[5] = a3;
  object = v5;
  v12 = 1;
  dispatch_retain(v5);
  _AppleIDUpdateLinkedIdentityProvisioningWithBlock(a1, v7, v6, v10);
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  if (v12 == 1)
  {
    dispatch_release(object);
  }

  v8 = *(v14 + 24);
  dispatch_release(v5);
  _Block_object_dispose(&v13, 8);
  return v8;
}

dispatch_queue_t ___ZL27getAppleIDAuthDispatchQueuev_block_invoke()
{
  result = dispatch_queue_create("AppleIDAuthDispatchQueue", 0);
  getAppleIDAuthDispatchQueue(void)::sAppleIDAuthDispatchQueue = result;
  return result;
}

uint64_t initSFAppleIDClientCopyMyAppleID(uint64_t a1, uint64_t a2)
{
  v4 = SharingLibrary(void)::frameworkLibrary;
  if (!SharingLibrary(void)::frameworkLibrary)
  {
    v4 = dlopen("/System/Library/PrivateFrameworks/Sharing.framework/Sharing", 2);
    SharingLibrary(void)::frameworkLibrary = v4;
  }

  v5 = dlsym(v4, "SFAppleIDClientCopyMyAppleID");
  softLinkSFAppleIDClientCopyMyAppleID = v5;

  return (v5)(a1, a2);
}

uint64_t initSFAppleIDClientCopyCertificateInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = SharingLibrary(void)::frameworkLibrary;
  if (!SharingLibrary(void)::frameworkLibrary)
  {
    v6 = dlopen("/System/Library/PrivateFrameworks/Sharing.framework/Sharing", 2);
    SharingLibrary(void)::frameworkLibrary = v6;
  }

  v7 = dlsym(v6, "SFAppleIDClientCopyCertificateInfo");
  softLinkSFAppleIDClientCopyCertificateInfo = v7;

  return (v7)(a1, a2, a3);
}

uint64_t initSFAppleIDClientCopyPersonInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = SharingLibrary(void)::frameworkLibrary;
  if (!SharingLibrary(void)::frameworkLibrary)
  {
    v6 = dlopen("/System/Library/PrivateFrameworks/Sharing.framework/Sharing", 2);
    SharingLibrary(void)::frameworkLibrary = v6;
  }

  v7 = dlsym(v6, "SFAppleIDClientCopyPersonInfo");
  softLinkSFAppleIDClientCopyPersonInfo = v7;

  return (v7)(a1, a2, a3);
}

uint64_t ___ZL41handleSFAppleIDClientCopyPersonInfoResultPK9__CFArrayiU13block_pointerFvS1_hP9__CFErrorE_block_invoke(uint64_t a1, const __CFDictionary *a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v5 = Mutable;
    TypeID = CFDictionaryGetTypeID();
    if (a2 && (!TypeID || CFGetTypeID(a2) == TypeID))
    {
      v7 = getkSFAppleIDClientPersonInfoAccountIdentifierCFKey();
      if (v7)
      {
        Value = CFDictionaryGetValue(a2, v7);
        v9 = CFStringGetTypeID();
        if (Value && (!v9 || CFGetTypeID(Value) == v9))
        {
          CFDictionaryAddValue(v5, @"certCN", Value);
        }
      }

      else
      {
        CFStringGetTypeID();
      }

      v10 = getkSFAppleIDClientPersonInfoMatchedValueCFKey();
      if (v10)
      {
        v11 = CFDictionaryGetValue(a2, v10);
        v12 = CFStringGetTypeID();
        if (v11 && (!v12 || CFGetTypeID(v11) == v12))
        {
          CFDictionaryAddValue(v5, @"value", v11);
        }
      }

      else
      {
        CFStringGetTypeID();
      }
    }

    if (CFDictionaryGetCount(v5))
    {
      CFArrayAppendValue(*(a1 + 32), v5);
    }

    CFRelease(v5);
  }

  return 1;
}

uint64_t initkSFAppleIDClientPersonInfoAccountIdentifierCFKey(void)
{
  v0 = SharingLibrary(void)::frameworkLibrary;
  if (!SharingLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/Sharing.framework/Sharing", 2);
    SharingLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "kSFAppleIDClientPersonInfoAccountIdentifierCFKey");
  constantkSFAppleIDClientPersonInfoAccountIdentifierCFKey = result;
  getkSFAppleIDClientPersonInfoAccountIdentifierCFKey = kSFAppleIDClientPersonInfoAccountIdentifierCFKeyFunction;
  return result;
}

uint64_t initkSFAppleIDClientPersonInfoMatchedValueCFKey(void)
{
  v0 = SharingLibrary(void)::frameworkLibrary;
  if (!SharingLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/Sharing.framework/Sharing", 2);
    SharingLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "kSFAppleIDClientPersonInfoMatchedValueCFKey");
  constantkSFAppleIDClientPersonInfoMatchedValueCFKey = result;
  getkSFAppleIDClientPersonInfoMatchedValueCFKey = kSFAppleIDClientPersonInfoMatchedValueCFKeyFunction;
  return result;
}

intptr_t ___ZL41__AppleIDCopySecIdentityForAppleIDAccountPK10__CFStringPK14__CFDictionaryPP9__CFError_block_invoke(void *a1, uint64_t a2, int a3)
{
  *(*(a1[4] + 8) + 24) = a2;
  v4 = a1[5];
  v3 = a1[6];
  *(*(v4 + 8) + 24) = a3;
  return dispatch_semaphore_signal(v3);
}

uint64_t initSFAppleIDClientCopyIdentity(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = SharingLibrary(void)::frameworkLibrary;
  if (!SharingLibrary(void)::frameworkLibrary)
  {
    v6 = dlopen("/System/Library/PrivateFrameworks/Sharing.framework/Sharing", 2);
    SharingLibrary(void)::frameworkLibrary = v6;
  }

  v7 = dlsym(v6, "SFAppleIDClientCopyIdentity");
  softLinkSFAppleIDClientCopyIdentity = v7;

  return (v7)(a1, a2, a3);
}

uint64_t initSFAppleIDClientCopyMyAccountInfo(uint64_t a1, uint64_t a2)
{
  v4 = SharingLibrary(void)::frameworkLibrary;
  if (!SharingLibrary(void)::frameworkLibrary)
  {
    v4 = dlopen("/System/Library/PrivateFrameworks/Sharing.framework/Sharing", 2);
    SharingLibrary(void)::frameworkLibrary = v4;
  }

  v5 = dlsym(v4, "SFAppleIDClientCopyMyAccountInfo");
  softLinkSFAppleIDClientCopyMyAccountInfo = v5;

  return (v5)(a1, a2);
}

uint64_t initkSFAppleIDClientAccountInfoAppleIDCFKey(void)
{
  v0 = SharingLibrary(void)::frameworkLibrary;
  if (!SharingLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/Sharing.framework/Sharing", 2);
    SharingLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "kSFAppleIDClientAccountInfoAppleIDCFKey");
  constantkSFAppleIDClientAccountInfoAppleIDCFKey = result;
  getkSFAppleIDClientAccountInfoAppleIDCFKey = kSFAppleIDClientAccountInfoAppleIDCFKeyFunction;
  return result;
}

uint64_t AppleIDGetLogHandle()
{
  if (AppleIDGetLogHandle::sOnce != -1)
  {
    AppleIDGetLogHandle_cold_1();
  }

  return AppleIDGetLogHandle::sHandle;
}

void __AppleIDGetLogHandle_block_invoke()
{
  AppleIDGetLogHandle::sHandle = os_log_create("com.apple.AppleIDAuth", "core");
  if (!AppleIDGetLogHandle::sHandle)
  {
    v0 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v1 = 0;
      _os_log_impl(&dword_18162D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "### AppleIDAuth create log handle failed\n", v1, 2u);
    }

    AppleIDGetLogHandle::sHandle = v0;
  }
}

const __CFArray *CFArrayApplyBlock(const __CFArray *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    Count = CFArrayGetCount(result);
    v5 = Count - 1;
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v6 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
        result = (*(a2 + 16))(a2, ValueAtIndex);
        if (result)
        {
          v8 = v5 == v6;
        }

        else
        {
          v8 = 1;
        }

        ++v6;
      }

      while (!v8);
    }
  }

  return result;
}

uint64_t CFDictionaryApplyBlock(const __CFDictionary *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      Count = CFDictionaryGetCount(a1);
      if (Count >= 1)
      {
        v4 = Count;
        CFDictionaryCreateCopy(*MEMORY[0x1E695E480], a1);
        memset(keys, 0, sizeof(keys));
        std::vector<void const*>::__vallocate[abi:nn200100](keys, v4);
      }
    }
  }

  return 0;
}

CFErrorRef _CFErrorCreateCSIdentityErrorWithInfo(CFIndex a1, const __CFString *a2, const __CFString *a3, const __CFString *a4, const __CFDictionary *a5, const char *a6, const char *a7, unsigned int a8)
{
  v15 = *MEMORY[0x1E695E480];
  if (a6)
  {
    v16 = a6;
  }

  else
  {
    v16 = "-";
  }

  v17 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v16, 0x8000100u);
  if (a7)
  {
    v18 = a7;
  }

  else
  {
    v18 = "-";
  }

  v19 = CFStringCreateWithCString(v15, v18, 0x8000100u);
  valuePtr = a8;
  v20 = CFNumberCreate(v15, kCFNumberLongLongType, &valuePtr);
  if (a5)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v15, 0, a5);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v15, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v22 = MutableCopy;
  v23 = *MEMORY[0x1E695E658];
  if (MutableCopy)
  {
    v24 = a2 == 0;
  }

  else
  {
    v24 = 1;
  }

  if (!v24 && v23 != 0)
  {
    CFDictionaryAddValue(MutableCopy, v23, a2);
  }

  v26 = *MEMORY[0x1E695E650];
  if (v22)
  {
    v27 = a3 == 0;
  }

  else
  {
    v27 = 1;
  }

  if (!v27 && v26 != 0)
  {
    CFDictionaryAddValue(v22, v26, a3);
  }

  v29 = *MEMORY[0x1E695E660];
  if (v22)
  {
    v30 = a4 == 0;
  }

  else
  {
    v30 = 1;
  }

  if (!v30 && v29 != 0)
  {
    CFDictionaryAddValue(v22, v29, a4);
  }

  if (v17 && v22)
  {
    CFDictionaryAddValue(v22, @"function", v17);
  }

  if (v19 && v22)
  {
    CFDictionaryAddValue(v22, @"file", v19);
  }

  if (v20 && v22)
  {
    CFDictionaryAddValue(v22, @"line", v20);
    v32 = CFErrorCreate(v15, @"CSIdentityErrorDomain", a1, v22);
  }

  else
  {
    v32 = CFErrorCreate(v15, @"CSIdentityErrorDomain", a1, v22);
    if (!v22)
    {
      goto LABEL_45;
    }
  }

  CFRelease(v22);
LABEL_45:
  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v32;
}

void _CSAddAppleIDAccountUsingCompletionBlock(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___CSAddAppleIDAccountUsingCompletionBlock_block_invoke;
  v6[3] = &unk_1E6A1F7A0;
  v6[4] = a4;
  if (!_AppleIDAuthenticationAddAppleIDWithBlock(a1, a2, 0, a3, v6))
  {
    v5 = CFErrorCreate(*MEMORY[0x1E695E480], @"CSIdentityErrorDomain", -99, 0);
    (*(a4 + 16))(a4, v5);
    if (v5)
    {
      CFRelease(v5);
    }
  }
}

uint64_t _CSAddAppleIDAccount(CFTypeRef cf, CFTypeRef a2)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___CSAddAppleIDAccount_block_invoke;
  v6[3] = &__block_descriptor_tmp_81;
  v6[4] = cf;
  v6[5] = a2;
  dispatch_async(global_queue, v6);
  return 1;
}

const void *_CSCopyAccountStatusForAppleID(const __CFString *a1, CFErrorRef *a2)
{
  theDict = 0;
  if (!_AppleIDAuthenticationCopyStatus(0, &theDict, a2))
  {
    v10 = 0;
    if (!a2)
    {
      return v10;
    }

    goto LABEL_13;
  }

  Value = CFDictionaryGetValue(theDict, @"AccountStatuses");
  if (Value && (v5 = Value, (MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1)) != 0))
  {
    v7 = MutableCopy;
    System = CFLocaleGetSystem();
    CFStringLowercase(v7, System);
    v9 = CFDictionaryGetValue(v5, v7);
    v10 = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    else if (a2)
    {
      *a2 = _CFErrorCreateCSIdentityErrorWithInfo(-115, @"The requested account does not exist", 0, 0, 0, "_CSCopyAccountStatusForAppleID", "/Library/Caches/com.apple.xbs/Sources/CoreServices/OSServices.subprj/IdentityServices/CSAuthenticationSupportPriv.cp", 0xD8u);
    }

    CFRelease(v7);
  }

  else
  {
    v10 = 0;
  }

  CFRelease(theDict);
  if (a2)
  {
LABEL_13:
    if (!v10 && !*a2)
    {
      *a2 = _CFErrorCreateCSIdentityErrorWithInfo(-115, @"The requested account does not exist", 0, 0, 0, "_CSCopyAccountStatusForAppleID", "/Library/Caches/com.apple.xbs/Sources/CoreServices/OSServices.subprj/IdentityServices/CSAuthenticationSupportPriv.cp", 0xE0u);
    }
  }

  return v10;
}

AppleIDIdentityAuthority *_CSCreateAppleIDIdentityWithNameAndAccountIdentifier(Identity *a1, const __CFString *a2, const __CFString *a3)
{
  if (!a3)
  {
    return 0;
  }

  v6 = Identity::Class(a1);
  result = CFObject::Allocate(0x30, v6, a1, v7);
  if (result)
  {
    v9 = result;
    v10 = AppleIDIdentityAuthority::Authority(result);
    AppleIDIdentity::AppleIDIdentity(v9, a2, a3, v10);
    return (v9 - 16);
  }

  return result;
}

const __CFString *_CSCreateAppleIDIdentityWithCertificate(AppleIDIdentityAuthority *a1, uint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5)
{
  v9 = AppleIDIdentityAuthority::Authority(a1);
  result = (*(*v9 + 152))(v9, a2, a5);
  if (result)
  {
    v11 = result;
    v12 = _CSCreateAppleIDIdentityWithNameAndAccountIdentifier(a1, a3, result);
    CFRelease(v11);
    return v12;
  }

  return result;
}

uint64_t _CSCopyAccountIdentifierForAppleIDCertificate(AppleIDIdentityAuthority *a1)
{
  v1 = *(*AppleIDIdentityAuthority::Authority(a1) + 152);

  return v1();
}

const __CFString *_CSCreateAppleIDIdentityWithCertificateChain(AppleIDIdentityAuthority *a1, uint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5)
{
  v9 = AppleIDIdentityAuthority::Authority(a1);
  result = (*(*v9 + 160))(v9, a2, a5);
  if (result)
  {
    v11 = result;
    v12 = _CSCreateAppleIDIdentityWithNameAndAccountIdentifier(a1, a3, result);
    CFRelease(v11);
    return v12;
  }

  return result;
}

uint64_t _CSCopyAccountIdentifierForAppleIDCertificateChain(AppleIDIdentityAuthority *a1)
{
  v1 = *(*AppleIDIdentityAuthority::Authority(a1) + 160);

  return v1();
}

const void *_CSCopyAppleIDAccountForAppleIDCertificate(AppleIDIdentityAuthority *a1, uint64_t a2)
{
  v4 = AppleIDIdentityAuthority::Authority(a1);
  v5 = (*(*v4 + 152))(v4, a1, a2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = _AppleIDAuthenticationCopyAppleIDs(0, a2);
  if (v7)
  {
    v8 = v7;
    Count = CFArrayGetCount(v7);
    if (Count < 1)
    {
      goto LABEL_17;
    }

    v10 = Count;
    v11 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v8, v11 - 1);
      v13 = _AppleIDAuthenticationCopyCertificateInfo(ValueAtIndex, 0, 0, a2);
      if (v13)
      {
        v14 = v13;
        Value = CFDictionaryGetValue(v13, @"encDsId");
        if (Value)
        {
          v16 = Value;
          v22.length = CFStringGetLength(v6);
          v22.location = 0;
          v17 = CFStringFindWithOptions(v6, v16, v22, 5uLL, &v21);
          v18 = 1;
          if (v17 && v21.location >= 1 && CFStringGetCharacterAtIndex(v6, v21.location - 1) == 46)
          {
            Length = CFStringGetLength(v6);
            v18 = Length != v21.length + v21.location;
          }
        }

        else
        {
          v18 = 1;
        }

        CFRelease(v14);
      }

      else
      {
        v18 = 1;
      }

      if (v11 >= v10)
      {
        break;
      }

      ++v11;
    }

    while (v18);
    if (v18)
    {
LABEL_17:
      ValueAtIndex = 0;
    }

    else
    {
      CFRetain(ValueAtIndex);
    }

    CFRelease(v8);
  }

  else
  {
    ValueAtIndex = 0;
  }

  CFRelease(v6);
  return ValueAtIndex;
}

CFArrayRef _CSCopyDefaultSharingSecIdentities(const void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!a1 || (v4 = _CSGetAppleIDIdentityAuthority(), CFEqual(a1, v4)))
  {
    v5 = _AppleIDAuthenticationCopyAppleIDs(0, 0);
    if (v5)
    {
      v6 = v5;
      if (CFArrayGetCount(v5) >= 1)
      {
        v7 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
          TypeID = CFStringGetTypeID();
          if (ValueAtIndex && (!TypeID || CFGetTypeID(ValueAtIndex) == TypeID))
          {
            v10 = _AppleIDCopySecIdentityForAppleIDAccount(ValueAtIndex, 0, 0);
            if (v10)
            {
              v11 = v10;
              CFArrayAppendValue(Mutable, v10);
              CFRelease(v11);
            }
          }

          ++v7;
        }

        while (v7 < CFArrayGetCount(v6));
      }

      CFRelease(v6);
    }
  }

  if (!Mutable)
  {
    return 0;
  }

  if (CFArrayGetCount(Mutable) < 1)
  {
    Copy = 0;
  }

  else
  {
    Copy = CFArrayCreateCopy(v2, Mutable);
  }

  CFRelease(Mutable);
  return Copy;
}

void AppleIDIdentity::AppleIDIdentity(AppleIDIdentity *this, const __CFString *a2, const __CFString *a3, AppleIDIdentityAuthority *a4)
{
  Identity::Identity(this, 1, 0);
  *v8 = &unk_1EEF64AA8;
  v8[3] = a4;
  v9 = v8 - 2;
  v10 = CFGetAllocator(v8 - 2);
  *(this + 4) = CFStringCreateCopy(v10, a2);
  v11 = CFGetAllocator(v9);
  *(this + 5) = CFStringCreateCopy(v11, a3);
  CFRetain((*(this + 3) - 16));
}

void AppleIDIdentity::AppleIDIdentity(AppleIDIdentity *this, const AppleIDIdentity *a2)
{
  Identity::Identity(this, *(a2 + 1), *(a2 + 2));
  *v4 = &unk_1EEF64AA8;
  v4[3] = *(a2 + 3);
  v5 = v4 - 2;
  v6 = CFGetAllocator(v4 - 2);
  v7 = (*(*a2 + 48))(a2);
  *(this + 4) = CFStringCreateCopy(v6, v7);
  v8 = CFGetAllocator(v5);
  v9 = (*(*a2 + 64))(a2);
  *(this + 5) = CFStringCreateCopy(v8, v9);
  CFRetain((*(this + 3) - 16));
}

void AppleIDIdentity::~AppleIDIdentity(AppleIDIdentity *this)
{
  *this = &unk_1EEF64AA8;
  CFRelease((*(this + 3) - 16));
  CFRelease(*(this + 4));
  CFRelease(*(this + 5));

  std::__function::__func<BOOL (*)(objc_object *),std::allocator<BOOL (*)(objc_object *)>,BOOL ()(objc_object *)>::~__func(this);
}

{
  AppleIDIdentity::~AppleIDIdentity(this);

  std::__function::__func<BOOL (*)(objc_object *),std::allocator<BOOL (*)(objc_object *)>,BOOL ()(objc_object *)>::~__func(v1);
}

void AppleIDIdentity::createCopy(AppleIDIdentity *this, const __CFAllocator *a2)
{
  v4 = Identity::Class(this);
  v6 = CFObject::Allocate(0x30, v4, a2, v5);
  if (v6)
  {
    AppleIDIdentity::AppleIDIdentity(v6, this);
  }
}

uint64_t AppleIDIdentity::copyPrincipalName(AppleIDIdentity *this)
{
  v2 = (*(*this + 72))(this);
  v4 = *(this + 4);
  v3 = *(this + 5);
  v5 = *(*v2 + 128);

  return v5();
}

uint64_t AppleIDIdentity::copyTrustSubjectDistinguishedName(AppleIDIdentity *this)
{
  v2 = (*(*this + 72))(this);
  v4 = *(this + 4);
  v3 = *(this + 5);
  v5 = *(*v2 + 136);

  return v5();
}

uint64_t AppleIDIdentity::authenticateCertificateChain(AppleIDIdentity *this, const __CFArray *a2, __CFError **a3)
{
  cf = 0;
  v5 = (*(**(this + 3) + 160))(*(this + 3), a2, &cf);
  if (v5)
  {
    v6 = v5;
    v7 = (*(*this + 64))(this);
    if (CFEqual(v7, v6))
    {
      CFRelease(v6);
      return 1;
    }

    syslog(4, "Identity posixName doesn't match accountIdentifier from certificate");
    CFRelease(v6);
  }

  v9 = cf;
  if (!cf)
  {
    if (!a3)
    {
      return 0;
    }

    v9 = CSCreateIdentityError(@"CSIdentityErrorDomain", -101);
LABEL_10:
    result = 0;
    *a3 = v9;
    return result;
  }

  if (a3)
  {
    goto LABEL_10;
  }

  CFRelease(cf);
  return 0;
}

CFArrayRef Identity::copyLinkedIdentityAuthorities(Identity *this)
{
  v1 = CFGetAllocator(this - 16);

  return CFArrayCreate(v1, 0, 0, 0);
}

CFArrayRef Identity::copyLinkedIdentityNamesWithAuthority(uint64_t a1)
{
  v1 = CFGetAllocator((a1 - 16));

  return CFArrayCreate(v1, 0, 0, 0);
}

uint64_t AppleIDIdentity::commit(AppleIDIdentity *this, void *a2, __CFError **a3)
{
  if (a3)
  {
    *a3 = CSCreateIdentityError(@"CSIdentityErrorDomain", -2);
  }

  return 0;
}

uint64_t AppleIDIdentityAuthority::InitializeAuthority(AppleIDIdentityAuthority *this)
{
  v1 = *MEMORY[0x1E695E480];
  v2 = IdentityAuthority::Class(this);
  v4 = CFObject::Allocate(0x18, v2, v1, v3);
  IdentityAuthority::IdentityAuthority(v4, @"appleid.apple.com", @"Apple Account");
  *v5 = &unk_1EEF64C58;
  AppleIDIdentityAuthority::authority = v5;

  return IdentityAuthority::RegisterAuthority(v5, v6);
}

uint64_t AppleIDIdentityAuthority::copyAccountIdentifierForCertificate(AppleIDIdentityAuthority *this, __SecCertificate *a2, __CFError **a3)
{
  values = a2;
  v5 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
  v6 = (*(*this + 160))(this, v5, a3);
  CFRelease(v5);
  return v6;
}

const __CFString *AppleIDIdentityAuthority::copyAccountIdentifierForCertificateChain(AppleIDIdentityAuthority *this, const __CFArray *a2, __CFError **a3)
{
  v26 = *MEMORY[0x1E69E9840];
  trust = 0;
  v23 = 0;
  AppleIDAuthorityPolicy = SecPolicyCreateAppleIDAuthorityPolicy();
  if (!AppleIDAuthorityPolicy)
  {
    v18 = 0;
    v19 = 14;
    goto LABEL_32;
  }

  v6 = SecTrustCreateWithCertificates(a2, AppleIDAuthorityPolicy, &trust);
  if (v6)
  {
    LODWORD(v19) = v6;
    v21 = AppleIDGetLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v19 = v19;
      *buf = 134217984;
      *&buf[4] = v19;
      v22 = "### SecTrustCreateWithCertificates failed with error %ld";
LABEL_41:
      _os_log_impl(&dword_18162D000, v21, OS_LOG_TYPE_ERROR, v22, buf, 0xCu);
LABEL_43:
      v18 = *MEMORY[0x1E695E638];
      goto LABEL_32;
    }

LABEL_42:
    v19 = v19;
    goto LABEL_43;
  }

  v7 = MEMORY[0x1865D5B00](trust, &v23);
  if (v7)
  {
    LODWORD(v19) = v7;
    v21 = AppleIDGetLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v19 = v19;
      *buf = 134217984;
      *&buf[4] = v19;
      v22 = "### SecTrustEvaluate failed with error %ld";
      goto LABEL_41;
    }

    goto LABEL_42;
  }

  v8 = 0;
  v9 = 0;
  if (v23 == 1 || v23 == 4)
  {
    goto LABEL_6;
  }

  AppleIDIdentityAuthority::copyAccountIdentifierForCertificateChain(&v23, buf);
  v18 = *buf;
  v19 = 15;
LABEL_32:
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = @"CSIdentityErrorDomain";
  }

  v9 = CFErrorCreate(*MEMORY[0x1E695E480], v20, v19, 0);
  v8 = 1;
LABEL_6:
  if (trust)
  {
    CFRelease(trust);
  }

  if (AppleIDAuthorityPolicy)
  {
    CFRelease(AppleIDAuthorityPolicy);
  }

  if ((v8 & 1) == 0)
  {
    CFArrayGetValueAtIndex(a2, 0);
    v10 = SecCertificateCopyCommonNames();
    if (v10)
    {
      v11 = v10;
      if (CFArrayGetCount(v10) >= 1 && (ValueAtIndex = CFArrayGetValueAtIndex(v11, 0)) != 0)
      {
        v13 = ValueAtIndex;
        CFRetain(ValueAtIndex);
        CFRelease(v11);
        Length = CFStringGetLength(v13);
        if (Length > 69)
        {
          if (CFStringHasPrefix(v13, @"com.apple.idms.appleid."))
          {
            goto LABEL_28;
          }

          syslog(3, "Invalid AppleID account identifier prefix");
          v15 = -13;
        }

        else
        {
          syslog(3, "Invalid AppleID account identifier lenth %d", Length);
          v15 = -12;
        }

        v11 = v13;
      }

      else
      {
        v15 = -10;
      }

      CFRelease(v11);
    }

    else
    {
      v15 = -10;
    }

    v9 = CSCreateIdentityError(@"CSIdentityErrorDomain", v15);
  }

  if (a3)
  {
    if (!v9)
    {
      v9 = CSCreateIdentityError(@"CSIdentityErrorDomain", -100);
    }

    v13 = 0;
    *a3 = v9;
    goto LABEL_30;
  }

  v13 = 0;
LABEL_28:
  if (v9)
  {
    CFRelease(v9);
  }

LABEL_30:
  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

CFArrayRef AppleIDIdentityAuthority::copyCertificateIssuerNames(AppleIDIdentityAuthority *this)
{
  values = @"Apple Application Integration Certification Authority";
  v1 = CFGetAllocator(this - 16);
  return CFArrayCreate(v1, &values, 1, MEMORY[0x1E695E9C0]);
}

CFStringRef AppleIDIdentityAuthority::copyPrincipalForCertificate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = CFGetAllocator((a1 - 16));
  v5 = *(a3 + 16);

  return CFStringCreateCopy(v4, v5);
}

AppleIDIdentityQuery *AppleIDIdentityAuthority::createQueryWithName(AppleIDIdentityAuthority *this, const __CFAllocator *a2, const __CFString *a3, uint64_t a4, uint64_t a5)
{
  result = 0;
  if (a4 == 1 && a5 == 1)
  {
    v9 = IdentityQuery::Class(0);
    result = CFObject::Allocate(0x40, v9, a2, v10);
    if (result)
    {
      return AppleIDIdentityQuery::AppleIDIdentityQuery(result, a3, this);
    }
  }

  return result;
}

AppleIDIdentityQuery *AppleIDIdentityAuthority::createQueryWithProperties(AppleIDIdentityAuthority *this, const __CFAllocator *a2, const void *a3)
{
  v6 = IdentityQuery::Class(this);
  result = CFObject::Allocate(0x40, v6, a2, v7);
  if (result)
  {
    return AppleIDIdentityQuery::AppleIDIdentityQuery(result, a3, this);
  }

  return result;
}

CFStringRef AppleIDIdentityAuthority::copyPrincipalForNamePair(AppleIDIdentityAuthority *this, const __CFString *a2, const __CFString *a3)
{
  v4 = CFGetAllocator(this - 16);

  return CFStringCreateCopy(v4, a2);
}

CFStringRef AppleIDIdentityAuthority::copyTrustAnchorDistinguishedName(AppleIDIdentityAuthority *this)
{
  v1 = CFGetAllocator(this - 16);

  return CFStringCreateCopy(v1, @"CN=Apple Root CA,OU=Apple Certification Authority,O=Apple Inc.,C=US");
}

void AppleIDIdentityAuthority::~AppleIDIdentityAuthority(CFTypeRef *this)
{
  IdentityAuthority::~IdentityAuthority(this);

  std::__function::__func<BOOL (*)(objc_object *),std::allocator<BOOL (*)(objc_object *)>,BOOL ()(objc_object *)>::~__func(v1);
}

CFStringRef IdentityAuthority::copyLocalizedName(IdentityAuthority *this)
{
  result = *(this + 2);
  if (result)
  {
    v3 = CFGetAllocator(result);
    v4 = *(this + 2);

    return CFStringCreateCopy(v3, v4);
  }

  return result;
}

void AppleIDIdentityAuthority::copyAccountIdentifierForCertificateChain(unsigned int *a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = AppleIDGetLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *a1;
    v7 = 134217984;
    v8 = v5;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_ERROR, "### Invalid trust result %ld", &v7, 0xCu);
  }

  *a2 = @"CSIdentityErrorDomain";
  v6 = *MEMORY[0x1E69E9840];
}

void AppleIDIdentityQuery::AppleIDIdentityQuery(AppleIDIdentityQuery *this, __CFString *a2, AppleIDIdentityAuthority *a3)
{
  values = a2;
  *this = &unk_1EEF64D10;
  *(this + 1) = 0;
  *(this + 2) = a3;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  CFRetain(a3 - 16);
  location = CFStringFind(a2, @"@", 0).location;
  v6 = @"email";
  if (location == -1)
  {
    v6 = @"phone";
  }

  keys = v6;
  v7 = CFGetAllocator(this - 16);
  cf = CFArrayCreate(v7, &values, 1, MEMORY[0x1E695E9C0]);
  v8 = CFGetAllocator(this - 16);
  *(this + 3) = CFDictionaryCreate(v8, &keys, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFRelease(cf);
}

__CFDictionary *createCriteriaWithNames(const __CFAllocator *a1, const __CFArray *a2)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  Count = CFArrayGetCount(a2);
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *MEMORY[0x1E695E480];
    v10 = MEMORY[0x1E695E9C0];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v8);
      if (CFStringFind(ValueAtIndex, @"@", 0).location == -1)
      {
        if (v7)
        {
          v12 = v7;
        }

        else
        {
          v12 = CFArrayCreateMutable(v9, 0, v10);
          v7 = v12;
        }
      }

      else if (v6)
      {
        v12 = v6;
      }

      else
      {
        v12 = CFArrayCreateMutable(v9, 0, v10);
        v6 = v12;
      }

      CFArrayAppendValue(v12, ValueAtIndex);
      ++v8;
    }

    while (v5 != v8);
    if (v7)
    {
      CFDictionaryAddValue(Mutable, @"phone", v7);
      CFRelease(v7);
    }

    if (v6)
    {
      CFDictionaryAddValue(Mutable, @"email", v6);
      CFRelease(v6);
    }
  }

  return Mutable;
}

void AppleIDIdentityQuery::AppleIDIdentityQuery(AppleIDIdentityQuery *this, const void *a2, AppleIDIdentityAuthority *a3)
{
  *this = &unk_1EEF64D10;
  *(this + 1) = 0;
  *(this + 2) = a3;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  CFRetain(a3 - 16);
  v5 = CFGetTypeID(a2);
  if (v5 == CFDictionaryGetTypeID())
  {
    valuePtr = 0;
    Value = CFDictionaryGetValue(a2, @"class");
    v7 = CFDictionaryGetValue(a2, @"full name");
    v13 = v7;
    if (Value)
    {
      v8 = CFGetTypeID(Value);
      if (v8 == CFNumberGetTypeID())
      {
        CFNumberGetValue(Value, kCFNumberLongType, &valuePtr);
      }
    }

    if (v7)
    {
      v9 = CFGetTypeID(v7);
      if (v9 == CFStringGetTypeID() && valuePtr == 1)
      {
        v10 = CFGetAllocator(this - 16);
        v11 = CFArrayCreate(v10, &v13, 1, MEMORY[0x1E695E9C0]);
        v12 = CFGetAllocator(this - 16);
        *(this + 3) = createCriteriaWithNames(v12, v11);
        CFRelease(v11);
      }
    }
  }
}

void AppleIDIdentityQuery::~AppleIDIdentityQuery(AppleIDIdentityQuery *this)
{
  *this = &unk_1EEF64D10;
  CFRelease((*(this + 2) - 16));
  v2 = *(this + 3);
  if (v2)
  {
    CFRelease(v2);
    *(this + 3) = 0;
  }

  v3 = *(this + 4);
  if (v3)
  {
    (*(*v3 + 24))(v3);
    v4 = *(this + 4);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    *(this + 4) = 0;
  }

  v5 = *(this + 5);
  if (v5)
  {
    CFRelease(v5);
    *(this + 5) = 0;
  }

  v6 = *(this + 6);
  if (v6)
  {
    CFRelease(v6);
    *(this + 6) = 0;
  }

  v7 = *(this + 7);
  if (v7)
  {
    CFRelease(v7);
    *(this + 7) = 0;
  }

  std::__function::__func<BOOL (*)(objc_object *),std::allocator<BOOL (*)(objc_object *)>,BOOL ()(objc_object *)>::~__func(this);
}

{
  AppleIDIdentityQuery::~AppleIDIdentityQuery(this);

  std::__function::__func<BOOL (*)(objc_object *),std::allocator<BOOL (*)(objc_object *)>,BOOL ()(objc_object *)>::~__func(v1);
}

CFArrayRef AppleIDIdentityQuery::copyResults(AppleIDIdentityQuery *this)
{
  v3 = *(this + 7);
  if (v3)
  {

    return CFRetain(v3);
  }

  else
  {
    v5 = CFGetAllocator(this - 16);

    return CFArrayCreate(v5, 0, 0, 0);
  }
}

void AppleIDIdentityQuery::processFindPersonResults(AppleIDIdentityQuery *this, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    Mutable = 0;
    v21 = this;
    v8 = this - 16;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
      Value = CFDictionaryGetValue(ValueAtIndex, @"value");
      v11 = CFDictionaryGetValue(ValueAtIndex, @"certCN");
      if (!v11)
      {
        v11 = CFDictionaryGetValue(ValueAtIndex, @"dsId");
      }

      if (Value && v11)
      {
        v12 = CFGetAllocator(v8);
        v13 = Identity::Class(v12);
        v15 = CFObject::Allocate(0x30, v13, v12, v14);
        v16 = v15;
        if (v15)
        {
          AppleIDIdentity::AppleIDIdentity(v15, Value, v11, *(v21 + 2));
        }

        if (!Mutable)
        {
          v17 = CFGetAllocator(v8);
          Mutable = CFArrayCreateMutable(v17, 0, MEMORY[0x1E695E9C0]);
        }

        v18 = v16 - 16;
        CFArrayAppendValue(Mutable, v18);
        CFRelease(v18);
      }

      ++v6;
    }

    while (v5 != v6);
    if (Mutable)
    {
      v19 = *(v21 + 7);
      if (!v19)
      {
        v20 = CFGetAllocator(v8);
        v19 = CFArrayCreateMutable(v20, 0, MEMORY[0x1E695E9C0]);
        *(v21 + 7) = v19;
      }

      v23.length = CFArrayGetCount(Mutable);
      v23.location = 0;
      CFArrayAppendArray(v19, Mutable, v23);
      AppleIDIdentityQuery::sendEvent(v21, 2, Mutable, 0);

      CFRelease(Mutable);
    }
  }
}

void AppleIDIdentityQuery::sendEvent(AppleIDIdentityQuery *this, uint64_t a2, CFTypeRef cf, CFTypeRef a4)
{
  if (*(this + 4))
  {
    if (cf)
    {
      CFRetain(cf);
    }

    if (a4)
    {
      CFRetain(a4);
    }

    CFRetain(this - 16);
    v8 = *(this + 5);
    v9 = *(this + 6);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = ___ZN20AppleIDIdentityQuery9sendEventElPK9__CFArrayP9__CFError_block_invoke;
    v10[3] = &__block_descriptor_tmp_4;
    v10[4] = this;
    v10[5] = a2;
    v10[6] = cf;
    v10[7] = a4;
    CFRunLoopPerformBlock(v8, v9, v10);
    CFRunLoopWakeUp(*(this + 5));
  }
}

void ___ZN20AppleIDIdentityQuery9sendEventElPK9__CFArrayP9__CFError_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 32);
  if (v3)
  {
    (*(*v3 + 32))(v3, v2, a1[5], a1[6], a1[7]);
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    CFRelease(v5);
  }

  CFRelease((v2 - 16));
}

uint64_t AppleIDIdentityQuery::execute(AppleIDIdentityQuery *this, unint64_t a2, __CFError **a3)
{
  v3 = *(this + 1);
  if ((v3 & 0x80000000) == 0)
  {
    *(this + 1) = v3 | 0x80000000;
    v4 = *(this + 3);
    _AppleIDAuthenticationFindPerson();
  }

  return 0;
}

BOOL AppleIDIdentityQuery::executeAsynchronously(void *a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5)
{
  v5 = a1[1];
  if ((v5 & 0x80000000) == 0)
  {
    a1[1] = v5 | 0x80000000;
    a1[4] = a3;
    (*(*a3 + 16))(a3);
    a1[5] = CFRetain(a4);
    a1[6] = CFRetain(a5);
    CFRetain(a1 - 2);
    v9 = a1[3];
    global_queue = dispatch_get_global_queue(0, 0);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = ___ZN20AppleIDIdentityQuery21executeAsynchronouslyEmP19IdentityQueryClientP11__CFRunLoopPK10__CFString_block_invoke;
    v12[3] = &__block_descriptor_tmp_27;
    v12[4] = a1;
    _AppleIDAuthenticationFindPersonWithBlock(v9, 0, global_queue, v12);
  }

  return v5 >= 0;
}

void ___ZN20AppleIDIdentityQuery21executeAsynchronouslyEmP19IdentityQueryClientP11__CFRunLoopPK10__CFString_block_invoke(uint64_t a1, const __CFArray *a2, int a3, const void *a4)
{
  v5 = *(a1 + 32);
  if ((*(v5 + 11) & 0x40) != 0)
  {
    if (!a3)
    {
      return;
    }

    goto LABEL_10;
  }

  if (a2)
  {
    AppleIDIdentityQuery::processFindPersonResults(*(a1 + 32), a2);
  }

  else if (a4)
  {
    AppleIDIdentityQuery::sendEvent(*(a1 + 32), 5, 0, a4);
    (*(*v5 + 72))(v5);
  }

  if (a3)
  {
    AppleIDIdentityQuery::sendEvent(v5, 1, 0, 0);
LABEL_10:

    CFRelease(v5 - 16);
  }
}

void *AppleIDIdentityQuery::stop(void *this)
{
  v1 = this[1];
  if ((v1 & 0x40000000) == 0)
  {
    v2 = this;
    this[1] = v1 | 0x40000000;
    this = this[4];
    if (this)
    {
      (*(*this + 24))(this);
      this = v2[4];
      if (this)
      {
        this = (*(*this + 8))(this);
      }

      v2[4] = 0;
    }
  }

  return this;
}

void Identity::Identity(Identity *this, uint64_t a2, uint64_t a3)
{
  *this = &unk_1EEF64D70;
  *(this + 1) = a2;
  *(this + 2) = a3;
}

uint64_t Identity::equal(void *a1, void *a2)
{
  if (a1[1] != a2[1])
  {
    return 0;
  }

  v4 = (*(*a1 + 88))(a1);
  v5 = *a1;
  if (v4)
  {
    v6 = (*(v5 + 88))(a1);
    v7 = (*(*a2 + 88))(a2);
  }

  else
  {
    v9 = (*(v5 + 64))(a1);
    v10 = *a1;
    if (v9)
    {
      v6 = (*(v10 + 64))(a1);
      v7 = (*(*a2 + 64))(a2);
    }

    else
    {
      result = (*(v10 + 48))(a1);
      if (!result)
      {
        return result;
      }

      v6 = (*(*a1 + 48))(a1);
      v7 = (*(*a2 + 48))(a2);
    }
  }

  return CFEqual(v6, v7) != 0;
}

uint64_t Identity::hash(Identity *this)
{
  v2 = *(this + 1);
  v3 = (*(*this + 88))(this);
  v4 = *this;
  if (v3)
  {
    v5 = (*(v4 + 88))(this);
LABEL_7:
    v2 += CFHash(v5);
    return v2;
  }

  v6 = (*(v4 + 64))(this);
  v7 = *this;
  if (v6)
  {
    v5 = (*(v7 + 64))(this);
    goto LABEL_7;
  }

  if ((*(v7 + 48))(this))
  {
    v5 = (*(*this + 48))(this);
    goto LABEL_7;
  }

  return v2;
}

CFTypeRef Identity::copyFormattingDesc(Identity *this, const __CFDictionary *a2)
{
  v2 = (*(*this + 48))(this, a2);

  return CFRetain(v2);
}

CFStringRef Identity::copyDebugDesc(Identity *this)
{
  if ((*(*this + 88))(this))
  {
    v2 = (*(*this + 88))(this);
    v3 = CFCopyDescription(v2);
  }

  else
  {
    v3 = CFRetain(@"<null>");
  }

  v4 = v3;
  v5 = CFGetAllocator(this - 16);
  v6 = CFGetAllocator(this - 16);
  v7 = *(this + 1);
  v8 = (*(*this + 48))(this);
  v9 = (*(*this + 64))(this);
  v10 = *(this + 2);
  v11 = (*(*this + 96))(this);
  v12 = CFStringCreateWithFormat(v5, 0, @"<CSIdentity %p [%p]>{class = %ld, full name = %@, posix name = %@, flags = %lx, uuid = %@, posixID = %d}", this - 16, v6, v7, v8, v9, v10, v4, v11);
  CFRelease(v4);
  return v12;
}

CFTypeRef Identity::createReferenceData(Identity *this, const __CFAllocator *a2)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31[0] = 0;
  v27 = 0;
  v28 = 0;
  v4 = *this;
  v25 = *(this + 1);
  keys[0] = @"authority";
  v5 = (*(v4 + 72))(this, a2);
  values[0] = CFRetain(*(v5 + 8));
  keys[1] = @"class";
  v6 = CFGetAllocator(this - 16);
  values[1] = CFNumberCreate(v6, kCFNumberLongType, &v25);
  if ((*(*this + 88))(this))
  {
    v27 = @"uuid";
    v7 = CFGetAllocator(this - 16);
    v8 = (*(*this + 88))(this);
    v30 = CFUUIDCreateString(v7, v8);
    v9 = 3;
  }

  else
  {
    if ((*(*this + 64))(this))
    {
      v10 = &v28;
      v11 = v31;
      v27 = @"name";
      v12 = (*(*this + 64))(this);
      v30 = CFRetain(v12);
      v9 = 3;
    }

    else
    {
      v11 = &v30;
      v10 = &v27;
      v9 = 2;
    }

    if ((*(*this + 48))(this))
    {
      *v10 = @"full name";
      v13 = (*(*this + 48))(this);
      ++v9;
      *v11 = CFRetain(v13);
    }
  }

  v14 = 0;
  while (values[v14])
  {
    if (v9 == ++v14)
    {
      goto LABEL_13;
    }
  }

  if (v9 == v14)
  {
LABEL_13:
    v15 = CFGetAllocator(this - 16);
    v16 = CFDictionaryCreate(v15, keys, values, v9, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    goto LABEL_15;
  }

  v16 = 0;
LABEL_15:
  v17 = 0;
  v18 = 8 * v9;
  do
  {
    v19 = values[v17 / 8];
    if (v19)
    {
      CFRelease(v19);
    }

    v17 += 8;
  }

  while (v18 != v17);
  if (v16)
  {
    v20 = CFWriteStreamCreateWithAllocatedBuffers(a2, a2);
    if (v20)
    {
      v21 = v20;
      if (CFWriteStreamOpen(v20))
      {
        if (CFPropertyListWriteToStream(v16, v21, kCFPropertyListBinaryFormat_v1_0, 0) < 1)
        {
          v22 = 0;
        }

        else
        {
          v22 = CFWriteStreamCopyProperty(v21, *MEMORY[0x1E695E900]);
        }

        CFWriteStreamClose(v21);
      }

      else
      {
        v22 = 0;
      }

      CFRelease(v21);
    }

    else
    {
      v22 = 0;
    }

    CFRelease(v16);
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t Identity::authenticateCertificateChain(Identity *this, const __CFArray *a2, __CFError **a3)
{
  if (a3)
  {
    *a3 = CSCreateIdentityError(@"CSIdentityErrorDomain", -101);
  }

  return 0;
}

uint64_t Identity::authenticatePassword(Identity *this, const __CFString *a2, __CFError **a3)
{
  if (a3)
  {
    *a3 = CSCreateIdentityError(@"CSIdentityErrorDomain", -2);
  }

  return 0;
}

uint64_t IdentityAuthority::RegisterAuthority(IdentityAuthority *this, IdentityAuthority *a2)
{
  v3 = (*(*this + 112))(this, a2);
  _os_nospin_lock_lock();
  Mutable = IdentityAuthority::sInstances;
  if (!IdentityAuthority::sInstances)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    IdentityAuthority::sInstances = Mutable;
  }

  if (!IdentityAuthority::sIssuerDict)
  {
    IdentityAuthority::sIssuerDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    Mutable = IdentityAuthority::sInstances;
  }

  v5 = *(this + 1);
  v6 = this - 16;
  CFDictionarySetValue(Mutable, v5, v6);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; i != v8; ++i)
      {
        v10 = IdentityAuthority::sIssuerDict;
        ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
        CFDictionaryAddValue(v10, ValueAtIndex, v6);
      }
    }

    CFRelease(v3);
  }

  return _os_nospin_lock_unlock();
}

uint64_t IdentityAuthority::IdentityAuthorityWithIdentifier(IdentityAuthority *this, const __CFString *a2)
{
  _os_nospin_lock_lock();
  if (IdentityAuthority::sInstances)
  {
    Value = CFDictionaryGetValue(IdentityAuthority::sInstances, this);
    _os_nospin_lock_unlock();
    if (Value)
    {
      return Value + 16;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    _os_nospin_lock_unlock();
    return 0;
  }
}

void IdentityAuthority::IdentityAuthority(IdentityAuthority *this, const __CFString *a2, const __CFString *a3)
{
  *this = &unk_1EEF64F20;
  v6 = this - 16;
  v7 = CFGetAllocator(this - 16);
  *(this + 1) = CFStringCreateCopy(v7, a2);
  v8 = CFGetAllocator(v6);
  *(this + 2) = CFStringCreateCopy(v8, a3);
}

void IdentityAuthority::~IdentityAuthority(CFTypeRef *this)
{
  *this = &unk_1EEF64F20;
  CFRelease(this[1]);
  CFRelease(this[2]);

  std::__function::__func<BOOL (*)(objc_object *),std::allocator<BOOL (*)(objc_object *)>,BOOL ()(objc_object *)>::~__func(this);
}

{
  IdentityAuthority::~IdentityAuthority(this);

  std::__function::__func<BOOL (*)(objc_object *),std::allocator<BOOL (*)(objc_object *)>,BOOL ()(objc_object *)>::~__func(v1);
}

CFStringRef IdentityAuthority::copyDebugDesc(IdentityAuthority *this)
{
  v1 = this - 16;
  v2 = (*(*this + 48))(this);
  v3 = CFGetAllocator(v1);
  v4 = CFGetAllocator(v1);
  v5 = CFStringCreateWithFormat(v3, 0, @"<CSIdentityAuthority %p [%p]>{localizedName = %@}", v1, v4, v2);
  CFRelease(v2);
  return v5;
}

uint64_t IdentityAuthority::copyIdentityWithName(IdentityAuthority *this, const __CFString *a2, uint64_t a3, Identity **a4, __CFError **a5)
{
  v10 = CFGetAllocator(this - 16);
  v11 = (*(*this + 72))(this, v10, a2, 1, a3);
  if (v11)
  {
    v12 = v11;
    v13 = (*(*v11 + 56))(v11, 2, a5);
    if (v13)
    {
      v14 = (*(*v12 + 48))(v12);
      if (CFArrayGetCount(v14) < 1)
      {
        *a4 = 0;
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v14, 0);
        *a4 = (ValueAtIndex + 16);
        CFRetain(ValueAtIndex);
      }

      CFRelease(v14);
    }

    CFRelease((v12 - 16));
  }

  else
  {
    v13 = 0;
    if (a5)
    {
      *a5 = CSCreateIdentityError(@"CSIdentityErrorDomain", -2);
    }
  }

  return v13;
}

uint64_t IdentityAuthority::authenticateNameAndPassword(IdentityAuthority *this, const __CFString *a2, const __CFString *a3, __CFError **a4)
{
  if (a4)
  {
    *a4 = CSCreateIdentityError(@"CSIdentityErrorDomain", -2);
  }

  return 0;
}

void CFClass::CFClass(CFClass *this, const char *a2)
{
  *this = 0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = CFClass::FinalizeObj;
  *(this + 5) = CFClass::EqualObj;
  *(this + 6) = CFClass::HashObj;
  *(this + 7) = CFClass::CopyFormattingDescObj;
  *(this + 8) = CFClass::CopyDebugDescObj;
  *(this + 12) = _CFRuntimeRegisterClass();
}

uint64_t CFObject::Allocate(CFObject *this, uint64_t a2, const CFClass *a3, const __CFAllocator *a4)
{
  v4 = *(a2 + 96);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    return Instance + 16;
  }

  else
  {
    return 0;
  }
}

CFStringRef IdentityQuery::copyDebugDesc(IdentityQuery *this)
{
  v1 = this - 16;
  v2 = CFGetAllocator(this - 16);
  v3 = CFGetAllocator(v1);
  return CFStringCreateWithFormat(v2, 0, @"<CSIdentityQuery %p [%p]>", v1, v3);
}

char *_CSIdentityAuthorityCopyIdentityWithName(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  v4 = 0;
  IdentityAuthority::copyIdentityWithName((a1 + 16), a2, a3, &v4, 0);
  if (v4)
  {
    return v4 - 16;
  }

  else
  {
    return 0;
  }
}

CFErrorRef CSCreateIdentityError(const void *a1, CFIndex a2)
{
  userInfoKeys[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695E670];
  userInfoKeys[0] = *MEMORY[0x1E695E620];
  userInfoKeys[1] = v3;
  cf = 0;
  v4 = CFEqual(a1, @"CSIdentityErrorDomain");
  v5 = MEMORY[0x1E695E480];
  if (v4)
  {
    v6 = 1;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    cf = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E638], a2, 0);
    if (cf)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  a2 = -2;
LABEL_8:
  pthread_once(&errorOnceLock, createErrorMaps);
  Value = CFDictionaryGetValue(errorDescMap, a2);
  v8 = @"Unknown error";
  if (Value)
  {
    v8 = Value;
  }

  userInfoValues = v8;
  v9 = CFErrorCreateWithUserInfoKeysAndValues(*v5, @"CSIdentityErrorDomain", a2, userInfoKeys, &userInfoValues, v6);
  if (cf)
  {
    CFRelease(cf);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

CFDictionaryRef createErrorMaps(void)
{
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], &errorKeys, errorDescriptions, 16, 0, 0);
  errorDescMap = result;
  return result;
}

CSIdentityRef CSIdentityCreateCopy(CFAllocatorRef allocator, CSIdentityRef identity)
{
  v2 = (*(*(identity + 2) + 352))(identity + 16, allocator);
  if (v2)
  {
    return (v2 - 16);
  }

  else
  {
    return 0;
  }
}

uint64_t _CSIdentityAuthenticateUsingCertificate(void *a1, void *a2, uint64_t a3)
{
  values = a2;
  v5 = CFGetAllocator(a1);
  v6 = CFArrayCreate(v5, &values, 1, MEMORY[0x1E695E9C0]);
  v7 = (*(a1[2] + 280))(a1 + 2, v6, a3);
  CFRelease(v6);
  return v7;
}

uint64_t _CSIdentityUpdateLinkedIdentityProvisioning(uint64_t a1, CFErrorRef *a2)
{
  if (a2)
  {
    *a2 = CSCreateIdentityError(@"CSIdentityErrorDomain", -4);
  }

  return 0;
}

uint64_t _CSDefaultLog()
{
  if (_CSDefaultLog_onceToken != -1)
  {
    _CSDefaultLog_cold_1();
  }

  return _CSDefaultLog_log;
}

uint64_t CSIdentityQueryClient::retain(uint64_t this)
{
  v1 = *(this + 24);
  if (v1)
  {
    v2 = this;
    this = v1(*(this + 16));
    *(v2 + 16) = this;
  }

  return this;
}

uint64_t CSIdentityQueryClient::release(uint64_t this)
{
  v1 = *(this + 32);
  if (v1)
  {
    return v1(*(this + 16));
  }

  return this;
}

uint64_t CSIdentityQueryClient::receiveEvent(uint64_t this, IdentityQuery *a2, uint64_t a3, const __CFArray *a4, __CFError *a5)
{
  v5 = *(this + 48);
  if (v5)
  {
    return v5(a2 - 16, a3, a4, a5, *(this + 16));
  }

  return this;
}

CSIdentityQueryRef CSIdentityQueryCreateForName(CFAllocatorRef allocator, CFStringRef name, CSIdentityQueryStringComparisonMethod comparisonMethod, CSIdentityClass identityClass, CSIdentityAuthorityRef authority)
{
  v5 = (*(*(authority + 2) + 72))(authority + 16, allocator, name, comparisonMethod, identityClass);
  if (v5)
  {
    return (v5 - 16);
  }

  else
  {
    return 0;
  }
}

CSIdentityQueryRef CSIdentityQueryCreateForPersistentReference(CFAllocatorRef allocator, CFDataRef referenceData)
{
  pthread_once(&gCSIdentityInitLock, _CSIdentityInitOnce);
  v4 = CFPropertyListCreateFromXMLData(allocator, referenceData, 0, 0);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFDictionaryGetTypeID() && (Value = CFDictionaryGetValue(v5, @"authority")) != 0 && (v8 = Value, v9 = CFGetTypeID(Value), v9 == CFStringGetTypeID()) && (v11 = IdentityAuthority::IdentityAuthorityWithIdentifier(v8, v10)) != 0)
    {
      v12 = (*(*v11 + 96))(v11, allocator, v5);
    }

    else
    {
      v12 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    return (v12 - 16);
  }

  else
  {
    return 0;
  }
}

CFStringRef _CSBackToMyMacCopyDomain()
{
  v0 = geteuid();
  v1 = copyBackToMyMacPreferences();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  NormalizedDomainName = CFStringCreateWithFormat(0, 0, @"%d", v0);
  if (NormalizedDomainName)
  {
    Value = CFDictionaryGetValue(v2, NormalizedDomainName);
    if (Value)
    {
      v5 = Value;
      CFRetain(Value);
      CFRelease(NormalizedDomainName);
      CFRelease(v2);
      NormalizedDomainName = createNormalizedDomainName(v5);
      v2 = v5;
    }

    else
    {
      CFRelease(NormalizedDomainName);
      NormalizedDomainName = 0;
    }
  }

  CFRelease(v2);
  return NormalizedDomainName;
}

CFMutableStringRef createNormalizedDomainName(const __CFString *a1)
{
  if (!CFStringGetLength(a1))
  {
    return 0;
  }

  MutableCopy = CFStringCreateMutableCopy(0, 0, a1);
  if (!CFStringHasSuffix(MutableCopy, @"."))
  {
    CFStringAppend(MutableCopy, @".");
  }

  CFStringLowercase(MutableCopy, 0);
  return MutableCopy;
}

__CFSet *_CSBackToMyMacCopyDomains()
{
  v12[1] = *MEMORY[0x1E69E9840];
  Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E530]);
  v1 = copyBackToMyMacPreferences();
  if (v1)
  {
    v2 = v1;
    Count = CFDictionaryGetCount(v1);
    if (Count)
    {
      v4 = Count;
      MEMORY[0x1EEE9AC00](Count);
      v6 = (v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      v7 = v5 >= 0x200 ? 512 : v5;
      bzero(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      CFDictionaryGetKeysAndValues(v2, 0, v6);
      if (v4 >= 1)
      {
        do
        {
          NormalizedDomainName = createNormalizedDomainName(*v6);
          if (NormalizedDomainName)
          {
            v9 = NormalizedDomainName;
            CFSetSetValue(Mutable, NormalizedDomainName);
            CFRelease(v9);
          }

          ++v6;
          --v4;
        }

        while (v4);
      }
    }

    CFRelease(v2);
  }

  v10 = *MEMORY[0x1E69E9840];
  return Mutable;
}

CFDictionaryRef copyBackToMyMacPreferences()
{
  v0 = SCPreferencesCreate(0, @"com.apple.BackToMyMac", 0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Value = SCPreferencesPathGetValue(v0, @"/System/Network/BackToMyMac");
  v3 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  CFRelease(v1);
  return v3;
}

uint64_t _CSDeviceSupportsAirDrop()
{
  v0 = _CSDeviceSupportsAirDrop_supportsAirDrop;
  if (_CSDeviceSupportsAirDrop_supportsAirDrop)
  {
    goto LABEL_27;
  }

  v1 = CFPreferencesCopyAppValue(@"DisableAirDrop", @"com.apple.NetworkBrowser");
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = v1;
  v3 = CFGetTypeID(v1);
  if (v3 == CFBooleanGetTypeID())
  {
    Value = CFBooleanGetValue(v2);
  }

  else
  {
    v5 = CFGetTypeID(v2);
    if (v5 != CFStringGetTypeID())
    {
      CFRelease(v2);
      goto LABEL_11;
    }

    Value = CFEqual(v2, @"1");
  }

  v6 = Value;
  CFRelease(v2);
  if (!v6)
  {
    v0 = _CSDeviceSupportsAirDrop_supportsAirDrop;
    if (_CSDeviceSupportsAirDrop_supportsAirDrop)
    {
      goto LABEL_27;
    }

    goto LABEL_12;
  }

LABEL_11:
  _CSDeviceSupportsAirDrop_supportsAirDrop = *MEMORY[0x1E695E4C0];
  v0 = _CSDeviceSupportsAirDrop_supportsAirDrop;
  if (_CSDeviceSupportsAirDrop_supportsAirDrop)
  {
    goto LABEL_27;
  }

LABEL_12:
  v7 = browseAllInterfacesEnabled_enabled;
  if (!browseAllInterfacesEnabled_enabled)
  {
    v8 = CFPreferencesCopyAppValue(@"BrowseAllInterfaces", @"com.apple.NetworkBrowser");
    if (!v8)
    {
      v12 = MEMORY[0x1E695E4D0];
LABEL_23:
      v7 = *v12;
      browseAllInterfacesEnabled_enabled = *v12;
      goto LABEL_24;
    }

    v9 = v8;
    v10 = CFGetTypeID(v8);
    if (v10 == CFBooleanGetTypeID())
    {
      v11 = CFBooleanGetValue(v9);
    }

    else
    {
      v13 = CFGetTypeID(v9);
      if (v13 != CFStringGetTypeID())
      {
        v14 = 1;
LABEL_21:
        CFRelease(v9);
        v12 = MEMORY[0x1E695E4D0];
        if (!v14)
        {
          v12 = MEMORY[0x1E695E4C0];
        }

        goto LABEL_23;
      }

      v11 = CFEqual(v9, @"1");
    }

    v14 = v11;
    goto LABEL_21;
  }

LABEL_24:
  if (CFBooleanGetValue(v7))
  {
    _CSDeviceSupportsAirDrop_supportsAirDrop = *MEMORY[0x1E695E4D0];
    v0 = _CSDeviceSupportsAirDrop_supportsAirDrop;
    if (_CSDeviceSupportsAirDrop_supportsAirDrop)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v0 = _CSDeviceSupportsAirDrop_supportsAirDrop;
  if (!_CSDeviceSupportsAirDrop_supportsAirDrop)
  {
LABEL_26:
    v0 = *MEMORY[0x1E695E4C0];
    _CSDeviceSupportsAirDrop_supportsAirDrop = *MEMORY[0x1E695E4C0];
  }

LABEL_27:

  return CFBooleanGetValue(v0);
}

CFStringRef _CSCopyCommentForServerName(const __CFAllocator *a1, CFStringRef theString)
{
  if (_CSCopyCommentForServerName_sOnce != -1)
  {
    _CSCopyCommentForServerName_cold_1();
  }

  v4 = _CSCopyCommentForServerName_dosEncoding;
  Length = CFStringGetLength(theString);
  v17.location = 0;
  v17.length = Length;
  Bytes = CFStringGetBytes(theString, v17, v4, 0, 0, 0, 0, 0);
  range.location = Bytes;
  if (Bytes == Length)
  {

    return CFStringCreateCopy(a1, theString);
  }

  else
  {
    v8 = Bytes;
    MutableCopy = CFStringCreateMutableCopy(a1, 0, theString);
    range.length = 0;
    if (v8 < Length)
    {
      v10 = 0;
      do
      {
        while (1)
        {
          RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(theString, v8);
          range.length = RangeOfComposedCharactersAtIndex.location + RangeOfComposedCharactersAtIndex.length - range.location;
          v18.length = Length - (RangeOfComposedCharactersAtIndex.location + RangeOfComposedCharactersAtIndex.length);
          v18.location = RangeOfComposedCharactersAtIndex.location + RangeOfComposedCharactersAtIndex.length;
          v12 = CFStringGetBytes(theString, v18, v4, 0, 0, 0, 0, 0);
          v13 = range.length;
          if (v12 <= 0)
          {
            break;
          }

          v14 = v12;
          range.location += v10;
          CFStringTransform(MutableCopy, &range, @"Publishing-Any; Any-Latin; NFKD; [:^ASCII:] Remove", 0);
          v10 = v10 - v13 + range.length;
          v8 = v14 + RangeOfComposedCharactersAtIndex.location + RangeOfComposedCharactersAtIndex.length;
          range.location = v8;
          range.length = 0;
          if (v8 >= Length)
          {
            goto LABEL_16;
          }
        }

        v8 = range.location + range.length;
      }

      while (range.location + range.length < Length);
      if (range.length >= 1)
      {
        CFStringTransform(MutableCopy, &range, @"Publishing-Any; Any-Latin; NFKD; [:^ASCII:] Remove", 0);
      }
    }

LABEL_16:
    CFStringNormalize(MutableCopy, kCFStringNormalizationFormC);
    return MutableCopy;
  }
}

CFStringRef createPosixNameFromString(const __CFAllocator *a1, CFStringRef theString, int a3)
{
  Length = CFStringGetLength(theString);
  if (Length < 1)
  {
    return 0;
  }

  v7 = Length;
  v8 = CFLocaleCopyPreferredLanguages();
  if (v8)
  {
    v9 = v8;
    if (CFArrayGetCount(v8) < 1)
    {
      v11 = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
      v11 = CFLocaleCreate(a1, ValueAtIndex);
    }

    CFRelease(v9);
  }

  else
  {
    v11 = 0;
  }

  v21.location = 0;
  v21.length = v7;
  v22.location = 0;
  v22.length = v7;
  v12 = CFStringTokenizerCreate(a1, theString, v22, 0x10004uLL, v11);
  if (!v12)
  {
    MutableCopy = CFStringCreateMutableCopy(a1, 0, theString);
    if (MutableCopy)
    {
      goto LABEL_14;
    }

LABEL_27:
    v19 = 0;
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v13 = v12;
  MutableCopy = CFStringCreateMutable(a1, 0);
  while (CFStringTokenizerAdvanceToNextToken(v13))
  {
    v15 = CFStringTokenizerCopyCurrentTokenAttribute(v13, 0x10000uLL);
    if (v15)
    {
      v16 = v15;
      CFStringAppend(MutableCopy, v15);
      CFRelease(v16);
    }
  }

  CFRelease(v13);
  if (!MutableCopy)
  {
    goto LABEL_27;
  }

LABEL_14:
  v21.location = 0;
  v21.length = CFStringGetLength(MutableCopy);
  CFStringTransform(MutableCopy, &v21, @"Latin; NFD; [^-_a-zA-Z0-9] Remove", 0);
  if (a3)
  {
    CFStringLowercase(MutableCopy, v11);
  }

  v17 = CFStringGetLength(MutableCopy);
  if (v17 >= 255)
  {
    v18.length = 255;
  }

  else
  {
    v18.length = v17;
  }

  v21.location = 0;
  v21.length = v18.length;
  v18.location = 0;
  v19 = CFStringCreateWithSubstring(a1, MutableCopy, v18);
  CFRelease(MutableCopy);
  if (v11)
  {
LABEL_20:
    CFRelease(v11);
  }

LABEL_21:
  if (v19 && !CFStringGetLength(v19))
  {
    CFRelease(v19);
    return 0;
  }

  return v19;
}

CFStringRef _CSCopyLocalHostnameForComputerName(const __CFAllocator *a1, CFStringRef theString)
{
  MutableCopy = CFStringCreateMutableCopy(a1, 0, theString);
  v7.length = CFStringGetLength(MutableCopy);
  v7.location = 0;
  CFStringFindAndReplace(MutableCopy, @" ", @"-", v7, 0);
  v8.length = CFStringGetLength(MutableCopy);
  v8.location = 0;
  CFStringFindAndReplace(MutableCopy, @"_", @"-", v8, 0);
  do
  {
    v9.length = CFStringGetLength(MutableCopy);
    v9.location = 0;
  }

  while (CFStringFindAndReplace(MutableCopy, @"--", @"-", v9, 0));
  CFStringTrim(MutableCopy, @"-");
  PosixNameFromString = createPosixNameFromString(a1, MutableCopy, 0);
  CFRelease(MutableCopy);
  if (PosixNameFromString)
  {
    return PosixNameFromString;
  }

  return CFStringCreateCopy(a1, @"Macintosh");
}

uint64_t _status(unsigned int a1, uint64_t a2, const UInt8 *a3, unsigned int a4)
{
  pthread_mutex_lock(&stru_1ED4452A0);
  Value = CFDictionaryGetValue(_MergedGlobals, a1);
  pthread_mutex_unlock(&stru_1ED4452A0);
  if (Value)
  {
    if (a4)
    {
      v8 = CFDataCreateWithBytesNoCopy(0, a3, a4, *MEMORY[0x1E695E498]);
      if (v8 && (v9 = v8, v10 = __MDTUnserializePropertyList(v8), CFRelease(v9), v10))
      {
        *(Value + 11) = __MDTCreateURLFromPropertyList(v10);
        v11 = __MDTCreateErrorFromPropertyList(v10);
      }

      else
      {
        v11 = CFErrorCreate(0, *MEMORY[0x1E695E640], 5, 0);
        v10 = 0;
      }

      *(Value + 12) = v11;
    }

    else
    {
      v10 = 0;
      v11 = *(Value + 12);
    }

    if (v11)
    {
      v12 = 3;
    }

    else
    {
      v12 = 1;
    }

    v13 = *(Value + 3);
    (*(Value + 2))(Value, v12, *(Value + 11));
    if (v10)
    {
      CFRelease(v10);
    }
  }

  return 0;
}

void _XCFRetain_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"const void *_XCFRetain(CFAllocatorRef, const void *)"}];
  [OUTLINED_FUNCTION_0_0(v0 v1];
}

void _XCFRelease_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _XCFRelease(CFAllocatorRef, const void *)"}];
  [OUTLINED_FUNCTION_0_0(v0 v1];
}

void XCFURLEnumerate_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void XCFURLEnumerate(CFURLRef, CFURLEnumeratorOptions, CFArrayRef, void (^__strong)(CFURLEnumeratorRef, CFURLRef, CFErrorRef, Boolean *))"}];
  [OUTLINED_FUNCTION_0_0(v0 v1];
}

void XCFURLEnumerate_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void XCFURLEnumerate(CFURLRef, CFURLEnumeratorOptions, CFArrayRef, void (^__strong)(CFURLEnumeratorRef, CFURLRef, CFErrorRef, Boolean *))"}];
  [OUTLINED_FUNCTION_0_0(v0 v1];
}

void _FSNodeGetNonFictionalDeviceNumber(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "Could not get non-fictional device number: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void _LSAliasGet_cold_1(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "bad alias at %p, size %ld too big\n", buf, 0x16u);
}

void computeIdentityString(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "could not escape bookmark string: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void ___ZN14LaunchServices13AppsAnalyticsL16sendCurrentStateEv_block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "couldn't bind %@: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void LaunchServices::AppRecordEnumeration::evaluateBundleNoIOCommon(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1(&dword_18162D000, a2, a3, "Skipping bundle %llx during enumeration because it is third-party", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

void LaunchServices::AppRecordEnumeration::findAppByIdentifierForEnumerator(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1(&dword_18162D000, a2, a3, "Found no viable bundles for bundle ID %{private}@", a5, a6, a7, a8, 3u);
  v8 = *MEMORY[0x1E69E9840];
}

id *_LSApplicationRestrictionsManagerIsApplicationRestricted(id *a1, void *a2)
{
  if (a1)
  {
    return OUTLINED_FUNCTION_3_1(a1, a2);
  }

  return a1;
}

void _LSServer_LSRegisterICLItem(void *a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 legacyRecordDictionary];
  v6 = [v5 objectForKeyedSubscript:@"ApplicationType"];

  if (!v6)
  {
    v7 = [v5 mutableCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = @"PluginKitPlugin";
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_8:

        goto LABEL_9;
      }

      v8 = @"Framework";
    }

    [v7 setObject:v8 forKeyedSubscript:@"ApplicationType"];
    goto LABEL_8;
  }

  v7 = v5;
LABEL_9:
  v11[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [(LSDatabaseRebuildContext *)v4 registerItems:v9];

  v10 = *MEMORY[0x1E69E9840];
}

void _LSServer_RefreshContentInFrameworkAtURL_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void _LSUnregisterAppWithBundleID_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void _LSUnregisterAppWithBundleID_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void openOptionsModifiedForOneTapOpen_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void openOptionsModifiedForOneTapOpen_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void _LSCommonOpenApplicationWithBundleIdentifier_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _LSCommonOpenApplicationWithBundleIdentifier(LSApplicationWorkspace *__strong, NSString *__strong, _LSOpenConfiguration *__strong, BOOL, void (^__strong)(BOOL, NSError *__strong))"}];
  [v1 handleFailureInFunction:v0 file:@"LSApplicationWorkspace.m" lineNumber:2277 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier != nil"}];
}

void handleSaveObserverBehavior_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_9_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void _LSServer_UpdateDatabaseWithInfo_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void _LSServer_UpdateDatabaseWithInfo_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void _LSServer_PerformExternalRebuildRegistration_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_4_0();
  v1 = v0;
  OUTLINED_FUNCTION_20();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

void _LSServer_PerformExternalRebuildRegistration_cold_2()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _LSServer_NoteMigratorRunningInMigration_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _LSServer_LSEnumerateAndRegisterAllCryptexContentWithContext_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void _getBlockToUpdateBundleRecordFromMIAndNotifyIfChanged_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void _LSServer_NoteTerminationRequestForMISync_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void LSApplicationStateChangedCallback_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3(&dword_18162D000, v0, v1, "Received %@ with %@");
  v2 = *MEMORY[0x1E69E9840];
}

void __LSApplicationWorkspacePluginsChangedCallback_block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __LSApplicationWorkspacePluginsChangedCallback_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __unsubscribeFromLSAWDistributedNotification_block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7_0(&dword_18162D000, v1, v2, "Subscriber count negative overflow for %@. Some caller may have over-unsubscribed its LSAW observer, or neglected to add it in the first place.", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void _LSSetCrashReporterMessage_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "%s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void ___getBlockToUpdatePluginRecordFromMIAndNotifyIfChanged_block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_17(a1, *MEMORY[0x1E69E9840]);
  v2 = *v1;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

void ___uninstallMIBundlesNotInSet_block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [[_LSAppToUnregister alloc] initWithContext:a2 bundleUnit:a3 bundleData:?];
  [*(a4 + 40) addObject:v5];
}

void _LSWriteBundlePlaceholderToURLInternal(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "Creating placeholder for bundle %@ with no iTunesMetadata.plist, this app cannot be recovered!", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void LaunchServices::BindingEvaluator::ContentTypeBindingAllowsOverride(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_18162D000, a2, OS_LOG_TYPE_DEBUG, "Override allowed for content type %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void LaunchServices::BindingEvaluation::runEvaluator()
{
  if (__cxa_guard_acquire(&qword_1ED4452E8))
  {
    _MergedGlobals_0 = 77998;
    __cxa_guard_release(&qword_1ED4452E8);
  }
}

void LaunchServices::BindingEvaluation::getKindStringFromState(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 67109378;
  v4[1] = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "isBetaApp bundle lookup error %d, node %@", v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

void LaunchServices::BindingEvaluation::getKindStringFromState(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "Canonical string not found for kind string %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void _LSSetCrashMessage()
{
  dispatch_once(&_LSLoggingQueue(void)::onceToken, &__block_literal_global_14);
}

{
  dispatch_once(&_LSLoggingQueue(void)::onceToken, &__block_literal_global_230);
}

void ___ZL18_LSSetCrashMessageP8NSString_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 136315138;
  v4 = a1;
  _os_log_debug_impl(&dword_18162D000, a2, OS_LOG_TYPE_DEBUG, "%s", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

int *bindingListDataHasValidLength(int *result, unsigned int a2)
{
  if (result)
  {
    if (a2 < 4)
    {
      return 0;
    }

    v4 = *result;
    v2 = result + 1;
    v3 = v4;
    if (v4)
    {
      v5 = 4;
      v6 = 4;
      while (v6 < a2)
      {
        v7 = *(v2 + v6);
        v5 += 4 * v7 + 8;
        v6 += 4 * v7 + 8;
        if (!--v3)
        {
          return (v5 == a2);
        }
      }

      return 0;
    }

    v5 = 4;
    return (v5 == a2);
  }

  return result;
}

void _LSBundleFindWithNode_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138477827;
  v4 = a1;
  _os_log_debug_impl(&dword_18162D000, a2, OS_LOG_TYPE_DEBUG, "Bundle %{private}@ was not found by name. Doing a linear search for it.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void _LSBundleCopyOrCheckNode(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = 136315651;
  v5 = "_LSBundleCopyOrCheckNode";
  v6 = 2113;
  v7 = a1;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "%s: error registering new node %{private}@: %{public}@", &v4, 0x20u);
  v3 = *MEMORY[0x1E69E9840];
}

void _LSBundleGetLocalizedName_cold_1()
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_6(v1, v2, v3, 5.8081e-34);
  OUTLINED_FUNCTION_2_3(&dword_18162D000, "Bundle %{private}@ (%llx) used localized name fast path", v4, v5);
}

void _LSBundleGetLocalizedName_cold_2()
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_6(v1, v2, v3, 5.8081e-34);
  OUTLINED_FUNCTION_2_3(&dword_18162D000, "Bundle %{private}@ (%llx) needs localized name slow path", v4, v5);
}

void _LSBundleGetLocalizedNameDictionary_cold_1()
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_6(v1, v2, v3, 5.8081e-34);
  OUTLINED_FUNCTION_2_3(&dword_18162D000, "Bundle %{private}@ (%llx) used localized name dict fast path", v4, v5);
}

void _LSBundleGetLocalizedNameDictionary_cold_2()
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_6(v1, v2, v3, 5.8081e-34);
  OUTLINED_FUNCTION_2_3(&dword_18162D000, "Bundle %{private}@ (%llx) needs localized name dict slow path", v4, v5);
}

void _LSCreateResolvedURL_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(&dword_18162D000, v0, OS_LOG_TYPE_DEBUG, "LaunchServices: getattrlist failed for URL %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void _LSCreateResolvedURL_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(&dword_18162D000, v0, OS_LOG_TYPE_DEBUG, "LaunchServices: CFURLGetFileSystemRepresentation failed for URL %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void _LSCreateResolvedURL_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_18162D000, v1, OS_LOG_TYPE_DEBUG, "failed to resolve symlinks in %@ <%@>", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void ___ZL15_LSContainerAddP9LSContextP6FSNodeP6NSDataS2_S4_tyhU13block_pointerFvjP7NSErrorE_block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEBUG, "Cheaply searching for volume %{private}@ in existing records", v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void ___ZL15_LSContainerAddP9LSContextP6FSNodeP6NSDataS2_S4_tyhU13block_pointerFvjP7NSErrorE_block_invoke_cold_2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEBUG, "Expensively searching for volume %{private}@ in existing records", v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void ___ZL15_LSContainerAddP9LSContextP6FSNodeP6NSDataS2_S4_tyhU13block_pointerFvjP7NSErrorE_block_invoke_cold_3(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *a2;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3(&dword_18162D000, v4, v5, "Found database record for volume %{private}@ with volume ID %llu");
  v6 = *MEMORY[0x1E69E9840];
}

void ___ZL15_LSContainerAddP9LSContextP6FSNodeP6NSDataS2_S4_tyhU13block_pointerFvjP7NSErrorE_block_invoke_cold_4(uint64_t *a1, uint64_t *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3(&dword_18162D000, v4, v5, "Adding database record for volume %{private}@ with volume ID %llu");
  v6 = *MEMORY[0x1E69E9840];
}

void _LSCopyGroupContainerIdentifiersFromEntitlements_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSSet<NSString *> * _Nonnull _LSCopyGroupContainerIdentifiersFromEntitlements(NSString *__strong _Nonnull, LSPropertyList *__strong _Nonnull)"}];
  [v2 handleFailureInFunction:v3 file:@"LSContainerHelpers.m" lineNumber:166 description:{@"Returned XPC object %@ was not an array, cannot continue", a1}];
}

void _LSCopyDataContainerURLFromContainermanager_cold_1(uint64_t a1, uint64_t *a2)
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_5(a1, a2);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_8(&dword_18162D000, v3, v4, "ContainerManager error fetching data container for %{private}@: %llu %{public}s", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x1E69E9840];
}

void _LSCopyGroupContainerURLSFromContainermanager_cold_1(uint64_t a1, uint64_t *a2)
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_5(a1, a2);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_8(&dword_18162D000, v3, v4, "ContainerManager error fetching group containers for %{private}@: %llu %{public}s", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x1E69E9840];
}

void _LSCopyEnvironmentVariablesFromContainermanager_cold_1(uint64_t a1, uint64_t *a2)
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_5(a1, a2);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_8(&dword_18162D000, v3, v4, "ContainerManager error populating env variables for %{private}@: %llu %{public}s", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x1E69E9840];
}

void _LSGetValidApplicationCategoryTypeSet_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 136446466;
  *(buf + 4) = "CFSetRef _LSGetValidApplicationCategoryTypeSet()";
  *(buf + 6) = 2114;
  *(buf + 14) = a1;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "%{public}s: unable to get categories: %{public}@", buf, 0x16u);
}

void _LSDatabaseSetSequenceNumber()
{
  OUTLINED_FUNCTION_14();
  __src[26] = *MEMORY[0x1E69E9840];
  bzero(__src, 0xD0uLL);
  _LSDatabaseGetHeader(v1, __src);
  __src[22] = v0;
  memcpy(__dst, __src, sizeof(__dst));
  _LSDatabaseSetHeader(v1);
  v2 = *MEMORY[0x1E69E9840];
}

id _LSDatabaseGetSeededModelCode(_LSDatabase *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  bzero(v12, 0xD0uLL);
  _LSDatabaseGetHeader(a1, v12);
  memset(__dst, 0, sizeof(__dst));
  strlcpy(__dst, v13, 0x40uLL);
  std::string::basic_string[abi:nn200100]<0>(&__p, __dst);
  v2 = v11;
  v3 = v11;
  if (v11 < 0)
  {
    v2 = v10;
  }

  if (!v2)
  {
    if (v11 < 0)
    {
      v10 = 1;
      p_p = __p;
    }

    else
    {
      v11 = 1;
      p_p = &__p;
    }

    *p_p = 63;
    v3 = v11;
  }

  if (v3 >= 0)
  {
    v5 = &__p;
  }

  else
  {
    v5 = __p;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
  if (v11 < 0)
  {
    operator delete(__p);
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

void sub_1817CC000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _LSDatabaseSetMutable(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = v1[5];
  }

  return _CSStoreSetMutable();
}

id _LSDatabaseCreateSnapshotAgainstAccessContext(void *a1, uint64_t a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  OUTLINED_FUNCTION_6_1();
  v39 = v6;
  OUTLINED_FUNCTION_5_1();
  v40 = v7;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = v8;
  OUTLINED_FUNCTION_6_1();
  v33 = v9;
  OUTLINED_FUNCTION_5_1();
  v34 = v10;
  v35 = 0;
  v12 = v11;
  if (v12)
  {
    v13 = v12[5];
    v14 = v12[3];
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = ___ZL45_LSDatabaseCreateSnapshotAgainstAccessContextP11_LSDatabaseP22__CSStoreAccessContextPU15__autoreleasingP7NSError_block_invoke;
  v25[3] = &unk_1E6A1B878;
  v29 = v13;
  v27 = &v30;
  v15 = v12;
  v26 = v15;
  v28 = &v36;
  v16 = MEMORY[0x1865D71B0](v25);
  if (a2)
  {
    if (v14 && v14 != a2)
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_LSDatabase *_LSDatabaseCreateSnapshotAgainstAccessContext(_LSDatabase *__strong, CSStoreAccessContextRef, NSError *__autoreleasing *)"}];
      [v22 handleFailureInFunction:v23 file:@"LSDatabase.mm" lineNumber:2851 description:@"provided a snapshot queue but it was not equal to the queue in the db to snapshot"];
    }

    OUTLINED_FUNCTION_1_5();
    v24 = v16;
    _CSStoreAccessContextAccessForRead();
  }

  else
  {
    if (v14)
    {
      _CSStoreAccessContextAssertReading();
    }

    v16[2](v16);
  }

  if (!v37[5])
  {
    v17 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v21 = v31[5];
      *buf = 138543362;
      v43 = v21;
      _os_log_error_impl(&dword_18162D000, v17, OS_LOG_TYPE_ERROR, "_LSDatabaseCreateSnapshotAgainstQueue failed with error %{public}@", buf, 0xCu);
    }

    if (a3)
    {
      *a3 = v31[5];
    }
  }

  v18 = v37[5];

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

void sub_1817CC634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void _LSSetLocalDatabaseIfNewer_cold_1()
{
  OUTLINED_FUNCTION_20_0();
  v1 = *(v0 + 176);
  OUTLINED_FUNCTION_12_1(3.8521e-34, v0, v2, v3);
  _os_log_debug_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEBUG, "Database with sequence number %llu is NOT newer than database with sequence number %llu, so NOT using it", v4, 0x16u);
}

void _LSSetLocalDatabaseIfNewer_cold_2()
{
  OUTLINED_FUNCTION_20_0();
  v1 = *(v0 + 176);
  OUTLINED_FUNCTION_12_1(3.8521e-34, v0, v2, v3);
  _os_log_debug_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEBUG, "Database with sequence number %llu is newer than database with sequence number %llu, so using it", v4, 0x16u);
}

void _LSDatabaseSetHeader(uint64_t *a1)
{
  OUTLINED_FUNCTION_17(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v1, v2, "Failed to write database header: %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void _LSDatabaseCreateWithAccessContext_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_17(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v1, v2, "CSStoreCreateMutableCopy failed with error %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void _LSDatabaseCreateWithAccessContext_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_17(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v1, v2, "_LSSchemaConfigureForStore failed with error %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void _LSDatabaseCreateWithAccessContext_cold_3(uint64_t a1, uint8_t *buf, os_log_t log)
{
  v3 = *(a1 + 176);
  *buf = 134217984;
  *(buf + 4) = v3;
  _os_log_debug_impl(&dword_18162D000, log, OS_LOG_TYPE_DEBUG, "Loaded LS database with sequence number %llu", buf, 0xCu);
}

void _LSDatabaseCreateFromPersistentStore_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "_LSCreateStoreWithFileContents, unable to removeDBOnStartup sentinel file, %{public}@", buf, 0xCu);
}

void _LSDatabaseCreateFromPersistentStore_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  v4 = 2114;
  v5 = v0;
  _os_log_error_impl(&dword_18162D000, v1, OS_LOG_TYPE_ERROR, "_LSCreateStoreWithFileContents, unable to remove database file at %{public}@, error=%{public}@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void _LSDatabaseCreateFromPersistentStore_cold_3()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _LSDatabaseCreateFromPersistentStore_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v0, v1, "_LSDatabaseCreateFromPersistentStoreIgnoringRecoveryFile failed with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _LSDatabaseCreateFromPersistentStore_cold_5()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v0, v1, "_LSDatabaseCreateFromPersistentStoreIgnoringRecoveryFile failed (forcing empty) with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _LSDatabaseCreateRecoveryFile_cold_1(uint64_t a1, int *a2, uint8_t *buf, os_log_t log)
{
  v4 = *a2;
  *buf = 136447234;
  *(buf + 4) = "void _LSDatabaseCreateRecoveryFile(NSURL *__strong)";
  *(buf + 6) = 2080;
  *(buf + 14) = a1;
  *(buf + 11) = 1024;
  *(buf + 6) = 2561;
  *(buf + 14) = 1024;
  *(buf + 30) = 436;
  *(buf + 17) = 1024;
  *(buf + 9) = v4;
  _os_log_fault_impl(&dword_18162D000, log, OS_LOG_TYPE_FAULT, "%{public}s: ::open_dprotected_np(%s, %x, %x) failed with error %i", buf, 0x28u);
}

void _LSDatabaseCreateRecoveryFile_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x1E69E9840];
}

void _LSDatabaseCreateRecoveryFile_cold_3()
{
  OUTLINED_FUNCTION_20_0();
  v1 = *v0;
  *v2 = 136446722;
  *(v2 + 4) = "void _LSDatabaseCreateRecoveryFile(NSURL *__strong)";
  *(v2 + 12) = 1024;
  *(v2 + 14) = v3;
  *(v2 + 18) = 1024;
  *(v2 + 20) = v1;
  _os_log_fault_impl(&dword_18162D000, v5, OS_LOG_TYPE_FAULT, "%{public}s: ::close(%i) failed with error %i", v4, 0x18u);
}

void _LSDatabaseCreateFromPersistentStoreIgnoringRecoveryFile()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v0, v1, "_LSCreateStoreWithFileContents Failed with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v0, v1, "_LSDatabaseCreate failed with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v0, v1, "_LSCreateEmptyStore failed with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _LSDatabaseDeleteRecoveryFile_cold_1(uint64_t a1, int *a2, uint8_t *buf, os_log_t log)
{
  v4 = *a2;
  *buf = 136446466;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = v4;
  _os_log_fault_impl(&dword_18162D000, log, OS_LOG_TYPE_FAULT, "Error: Failed to remove recovery file %{public}s with errno %d", buf, 0x12u);
}

void _LSCreateStoreWithFileContents(uint64_t *a1)
{
  OUTLINED_FUNCTION_17(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v1, v2, "_CSStoreCreateWithURL failed with error %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void _LSDatabaseClean()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void _LSDatabaseCommit_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "NotifyToken::Post(%{public}@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _LSDatabaseCreateStringArrayCommon(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_18162D000, log, OS_LOG_TYPE_DEBUG, "Null string in input array while constructing string array, but the caller is OK with that.", buf, 2u);
}

void _LSContextInitCommon(uint64_t *a1)
{
  OUTLINED_FUNCTION_17(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v1, v2, "Failed to initialize client context with error %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void _LSContextInvalidate_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_18162D000, log, OS_LOG_TYPE_DEBUG, "Client database invalidated for session: %@", buf, 0xCu);
}

void _LSDatabaseSentinelIncrement_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _LSDatabaseSentinelDecrement_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _LSResetServer_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v0, v1, "Error creating DB while resetting server: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _LSResetServer_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v0, v1, "Error creating store while resetting server: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t ___ZL41_LSSystemContentDatabaseSanitizeForExportP11_LSDatabase_block_invoke_cold_1(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_18_0(a1, a2);
  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = v3[5];
  }

  v5 = *(v2 + 32);
  OUTLINED_FUNCTION_0_9();
  v7 = *(v6 + 4);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_14_0();

  return _CSStoreWriteToUnit();
}

uint64_t ___ZL41_LSSystemContentDatabaseSanitizeForExportP11_LSDatabase_block_invoke_cold_2(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_7_1(a1, a2);
  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = v3[5];
  }

  v5 = *(v2 + 32);
  OUTLINED_FUNCTION_0_9();
  v7 = *(v6 + 4);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_14_0();

  return _CSStoreWriteToUnit();
}

uint64_t ___ZL41_LSSystemContentDatabaseSanitizeForExportP11_LSDatabase_block_invoke_cold_3(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_7_1(a1, a2);
  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = v3[5];
  }

  v5 = *(v2 + 32);
  OUTLINED_FUNCTION_0_9();
  v7 = *(v6 + 4);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_14_0();

  return _CSStoreWriteToUnit();
}

uint64_t ___ZL41_LSSystemContentDatabaseSanitizeForExportP11_LSDatabase_block_invoke_2_cold_1(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_18_0(a1, a2);
  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = v3[5];
  }

  v5 = *(v2 + 32);
  OUTLINED_FUNCTION_0_9();
  v7 = *(v6 + 1588);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_14_0();

  return _CSStoreWriteToUnit();
}

uint64_t ___ZL41_LSSystemContentDatabaseSanitizeForExportP11_LSDatabase_block_invoke_2_cold_2(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_7_1(a1, a2);
  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = v3[5];
  }

  v5 = *(v2 + 32);
  OUTLINED_FUNCTION_0_9();
  v7 = *(v6 + 1588);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_14_0();

  return _CSStoreWriteToUnit();
}

void ___ZL26_LSArmSaveTimerWithTimeouthdU13block_pointerFvbP11_LSDatabaseP7NSErrorE_block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v0, v1, "Wrote corrupt store file %{private}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void ___ZL26_LSArmSaveTimerWithTimeouthdU13block_pointerFvbP11_LSDatabaseP7NSErrorE_block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  v4 = 2114;
  v5 = v0;
  _os_log_fault_impl(&dword_18162D000, v1, OS_LOG_TYPE_FAULT, "Failed to save database to %{public}@: %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void ___ZL26_LSArmSaveTimerWithTimeouthdU13block_pointerFvbP11_LSDatabaseP7NSErrorE_block_invoke_cold_3(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 136446722;
  *(buf + 4) = "_LSSessionSave";
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  *(buf + 11) = 2114;
  *(buf + 3) = a2;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "%{public}s: error saving database for session %@: %{public}@", buf, 0x20u);
}

void ___ZL26_LSArmSaveTimerWithTimeouthdU13block_pointerFvbP11_LSDatabaseP7NSErrorE_block_invoke_cold_4()
{
  OUTLINED_FUNCTION_20_0();
  v1 = v0;
  *v2 = 136446722;
  *(v2 + 4) = "_LSSessionSave";
  *(v2 + 12) = 2112;
  *(v2 + 14) = v0;
  *(v2 + 22) = 1024;
  *(v2 + 24) = v3;
  _os_log_error_impl(&dword_18162D000, v5, OS_LOG_TYPE_ERROR, "%{public}s: error saving prefs for session %@: %i", v4, 0x1Cu);
}

void ___ZL26_LSArmSaveTimerWithTimeouthdU13block_pointerFvbP11_LSDatabaseP7NSErrorE_block_invoke_cold_5()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v0, v1, "Error saving session: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void ___ZL34_LSDatabasePostChangeNotificationsP11_LSDatabase_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_10_0(&dword_18162D000, v3, v4, "database was reset, not clearing change notification flags.", v5, v6, v7, v8, 0);
  }

  *v0 = v1;
}

void ___ZL16_LSDatabaseRemapP11_LSDatabaseU13block_pointerFvbP7NSErrorP8NSStringE_block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v0, v1, "_LSDatabaseCreateByRemappingDatabase failed with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void ___ZL16_LSDatabaseRemapP11_LSDatabaseU13block_pointerFvbP7NSErrorP8NSStringE_block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v0, v1, "_LSDatabaseCreateByRemappingDatabase() returned error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void ___ZL16_LSDatabaseRemapP11_LSDatabaseU13block_pointerFvbP7NSErrorP8NSStringE_block_invoke_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v0, v1, "_LSDatabaseCreateFromPersistentStore() returned error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _LSDatabaseContextStopAccessing_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 134217984;
  v5 = v2;
  _os_log_debug_impl(&dword_18162D000, a2, OS_LOG_TYPE_DEBUG, "Stopping database access (depth %li)", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void _LSDatabaseContextStartAccessingWithDomain_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 134218240;
  v6 = v3;
  v7 = 2048;
  v8 = a2;
  _os_log_debug_impl(&dword_18162D000, log, OS_LOG_TYPE_DEBUG, "Starting database access (depth %li, options: %llx)", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void getXPCObjectForNodeAndStore(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "could not get file system representation of store node while making XPC object: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void getXPCObjectForNodeAndStore(id *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "could not create XPC representation of store while making XPC object: %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void _LSContextCreateVisualizer_cold_1(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138543362;
  *a3 = a1;
  _os_log_debug_impl(&dword_18162D000, log, OS_LOG_TYPE_DEBUG, "No functions for table %{public}@", buf, 0xCu);
}

void ___ZN14LaunchServices21DatabaseVisualizationL14getAllHandlersEP9LSContext_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_18162D000, a2, OS_LOG_TYPE_DEBUG, "Table %{public}@ has no handler functions and will not display well in CSStore Viewer.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void _LSDefaultsBaseSystemContainerURL_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5 = 136446722;
  v6 = "NSURL *_LSDefaultsBaseSystemContainerURL(void)";
  v7 = 2048;
  v8 = v3;
  v9 = 2082;
  v10 = a2;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "%{public}s: error %llu getting container path: %{public}s", &v5, 0x20u);
  v4 = *MEMORY[0x1E69E9840];
}

void LaunchServices::DMFSupport::getPoliciesWithCompletionHandler(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7(&dword_18162D000, a1, a3, "no DMFApplicationPolicyMonitor available in %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void ___ZN14LaunchServices10DMFSupportL17reloadAllPoliciesEP27DMFApplicationPolicyMonitor_block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ___ZN14LaunchServices10DMFSupportL17reloadAllPoliciesEP27DMFApplicationPolicyMonitor_block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v0, v1, "Failed to get DMF policy for all applications: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void LaunchServices::DMFSupport::addKnownPoliciesToCache()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void ___ZN14LaunchServices10DMFSupportL32getPoliciesWithCompletionHandlerEP5NSSetIP8NSStringEhU13block_pointerFvP12NSDictionaryIS3_P8NSNumberEP7NSErrorE_block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ___ZN14LaunchServices10DMFSupportL32getPoliciesWithCompletionHandlerEP5NSSetIP8NSStringEhU13block_pointerFvP12NSDictionaryIS3_P8NSNumberEP7NSErrorE_block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v0, v1, "unable to get policies from DMF: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _LSDServiceGetXPCProxyForServiceClass_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7(&dword_18162D000, a1, a3, "%{public}s: could not create NSXPCConnection to talk to lsd", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void _LSIsAuditTokenSandboxed_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_fault_impl(&dword_18162D000, a2, OS_LOG_TYPE_FAULT, "sandbox_check_by_audit_token failed in lsd! That's a bad bug! errno=%d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

void _LSEnumeratorFireErrorHandler_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_0(&dword_18162D000, v0, v1, "Error during enumeration of %{private}@: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

void _LSDBEnumeratorPrepareIfNeeded_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_0(&dword_18162D000, v0, v1, "Failed to prepare enumerator %{private}@: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

void _LSDBEnumeratorPrepareIfNeeded_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138477827;
  v4 = a1;
  _os_log_debug_impl(&dword_18162D000, a2, OS_LOG_TYPE_DEBUG, "Prepared enumerator %{private}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void _LSDBEnumeratorPrepareIfNeeded_cold_3(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138478083;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "Failed to get DB when preparing enumerator %{private}@: %{public}@", buf, 0x16u);
}

void _LSGetOSStatusFromNSError_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "Launch Services, forced to convert an NSError to an OSStatus, came up with kLSUnknownError for %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void _LSGetOSStatusFromNSError_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "XPC error encountered: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void _LSGetOSStatusFromNSError_cold_3(int a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218242;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_debug_impl(&dword_18162D000, log, OS_LOG_TYPE_DEBUG, "Launch Services encountered an error, converting to OSStatus %li: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void LSInit_cold_1(unsigned int a1, uint8_t *buf, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a1;
  _os_log_impl(&dword_18162D000, log, OS_LOG_TYPE_DEFAULT, "LaunchServices: Completed database seeding for uid %lli", buf, 0xCu);
}

__CFSet *_LSCreatePackageExtensionsArrayForContext(const __CFAllocator *a1, LSContext *a2)
{
  result = _LSCopyPackageExtensions(a2);
  if (result)
  {
    v4 = result;
    v5 = XCFArrayCreateWithSet(a1, result, MEMORY[0x1E695E9C0]);
    CFRelease(v4);
    return v5;
  }

  return result;
}

void _LSCopyUserActivityDomainNamesForBundleID_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136446466;
  v4 = "CFArrayRef _LSCopyUserActivityDomainNamesForBundleID(CFStringRef)";
  v5 = 2114;
  v6 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "Error in %{public}s: %{public}@", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void ___ZL29pluginKitUserElectionStoreURLv_block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_fault_impl(&dword_18162D000, a2, OS_LOG_TYPE_FAULT, "Failed to get storage container: error=%llu", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void ___ZL29pluginKitUserElectionStoreURLv_block_invoke_250_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void ___ZL29pluginKitUserElectionStoreURLv_block_invoke_250_cold_2(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_2(a1, a2, 5.8381e-34);
  _os_log_debug_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEBUG, "Annotations are stored at [%{public}@]", v4, 0xCu);
}

void LSBundleMeetsBasicDefaultAppRequirements_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "Bundle 0x%llx is a placeholder, so it cannot be a default app.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void LSBundleMeetsBasicDefaultAppRequirements_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "Bundle 0x%llx is not an application, so it cannot be a default app.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void LSBundleMeetsBasicDefaultAppRequirements_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "Bundle 0x%llx is in an unsupported location, so it cannot be a default app.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void LSBundleMeetsBasicDefaultAppRequirements_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "Bundle 0x%llx has an unsupported format, so it cannot be a default app.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __LSCopyClaimListWithoutClaimsClaimingDefaultAppTypes_block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v0, v1, "claim for %@, which is a default app type. Ignoring this entire claim", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _LSServer_LSRemoveDefaultApp_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void _LSServer_LSSetDefaultAppByTypeIdentifier_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v0, v1, "Can't change category %lu!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _LSServer_LSSetDefaultAppByTypeIdentifier_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v0, v1, "couldn't write default apps state: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void LSDefaultAppCategoryMayBeChanged_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void LSDefaultAppCategoryMayBeChanged_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(*a1 + 40);
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void _LSServer_HasPreferenceEverBeenSetForDefaultAppCategory_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void std::__function::__func<_LSServer_NotePreferenceSetForCategory(LSDefaultAppCategory)::$_0,std::allocator<_LSServer_NotePreferenceSetForCategory(LSDefaultAppCategory)::$_0>,LaunchServices::LSDefaultAppsExtraState ()(std::optional<LaunchServices::LSDefaultAppsExtraState>,NSError *)>::operator()()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v0, v1, "couldn't read default apps set state to modify it, starting with default state: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

id _LSLazyPropertyListGetPropertyList(void *a1)
{
  v1 = [(_LSLazyPropertyList *)a1 propertyList];

  return v1;
}

void LaunchServices::LocalizedString::localizeUnsafely(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_18162D000, log, OS_LOG_TYPE_DEBUG, "kLSDefaultLocalizedValueKey encountered in matching localizations set.", buf, 2u);
}

void LaunchServices::EligibilityCache::refreshAnswerForDomain()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_0(&dword_18162D000, v0, v1, "could not find answer for domain %llu: %@");
  v2 = *MEMORY[0x1E69E9840];
}

void LaunchServices::EligibilityCache::getEligibilityGatedBrowsersCanBind(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "Couldn't get answer for lithium domain: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void LaunchServices::EligibilityCache::getEligibilityGatedBrowserEngineEmbeddersCanBind(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "Couldn't get answer for boron domain: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void LaunchServices::EligibilityCache::eligibleForDomainFailingClosed()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_0(&dword_18162D000, v0, v1, "Couldn't get answer for domain %llu: %@");
  v2 = *MEMORY[0x1E69E9840];
}

void _LSCopierCallback(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_debug_impl(&dword_18162D000, a2, OS_LOG_TYPE_DEBUG, "Unknown MDTCopierCallbackType %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

void anonymous namespace::StagedFileResource::~StagedFileResource(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "Unable to remove open staging container %@: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void makeStagingDirectoryURLInContainer()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(&dword_18162D000, v0, OS_LOG_TYPE_ERROR, "could not create new mailbox directory: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void ___ZL34makeStagingDirectoryURLInContainerP5NSURLPU15__autoreleasingP7NSError_block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_17(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

void _LSOpenOperationPerformContinueAfterAsyncGather(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138478083;
  *(buf + 4) = a1;
  *(buf + 6) = 2113;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_18162D000, log, OS_LOG_TYPE_DEBUG, "Default handler for node %{private}@ is already set to %{private}@", buf, 0x16u);
}

void ___ZL23_LSOpenOperationPerformP5NSURLP12NSFileHandleP8NSStringbS4_P12NSDictionaryIS4_P11objc_objectES9_PU42objcproto31LSOpenResourceOperationDelegate11objc_objectP15NSXPCConnectionU13block_pointerFvbP7NSErrorE_block_invoke_117_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_7(&dword_18162D000, a2, a3, "Failed to get bookmark string, continuing as usual. Error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void ___ZL23_LSUpdateDefaultHandlerP18LSApplicationProxyP5NSURL_block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v0, v1, "Failed to set default handler: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _LSPersistentIdentifierCompare_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_3(&dword_18162D000, v0, v1, "Persistent identifiers %p and %p are from the same database", v3, v4);
  v2 = *MEMORY[0x1E69E9840];
}

void _LSPersistentIdentifierCompare_cold_2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_3(&dword_18162D000, v0, v1, "Persistent identifiers %p and %p are exactly equal", v3, v4);
  v2 = *MEMORY[0x1E69E9840];
}

void _LSPlistDataGetHint_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_18162D000, a2, OS_LOG_TYPE_DEBUG, "Getting plist hint for data %p", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void _LSPlistDataGetValuesForKeys_cold_1(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_18162D000, log, OS_LOG_TYPE_DEBUG, "Got values for keys { %{public}@ } from CF SPI (fast path).", buf, 0xCu);
}

void _LSPlistDataGetValuesForKeys_cold_2(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_18162D000, log, OS_LOG_TYPE_DEBUG, "Keys { %{public}@ } were requested and require us to take a slow path.", buf, 0xCu);
}

void _LSPluginIsValid_cold_1(uint64_t a1, unsigned int *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void LaunchServices::LSStatePlist::modify(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "couldn't write plist: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void LaunchServices::LSStatePlist::save(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "Couldn't write state plist to %@: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void ___ZL39getkMISMinSupportedSignatureVersion_ptrv_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 136446210;
  v4 = a1;
  _os_log_fault_impl(&dword_18162D000, a2, OS_LOG_TYPE_FAULT, "could not find kMISMinSupportedSignatureVersion in libmis: %{public}s", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void ___ZL39getkMISMinSupportedSignatureVersion_ptrv_block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 136446210;
  v4 = a1;
  _os_log_fault_impl(&dword_18162D000, a2, OS_LOG_TYPE_FAULT, "could not dlopen libmis: %{public}s", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void LaunchServices::HandlerPrefs::display()
{
  {
    __cxa_atexit(std::array<NSString * {__strong},5ul>::~array, &LaunchServices::HandlerPrefs::display(LSContext *,unsigned int,unsigned int,CSStoreAttributedStringWriter *)::labels, &dword_18162D000);
  }
}

void ___ZN13LSHandlerPref12CopyHandlersEv_block_invoke_cold_1(uint8_t *buf, int a2, uint64_t a3, os_log_t log)
{
  *buf = 67109376;
  *(buf + 1) = a2;
  *(buf + 4) = 2048;
  *(buf + 10) = a3;
  _os_log_debug_impl(&dword_18162D000, log, OS_LOG_TYPE_DEBUG, "Handler prefs found; uid = %d; count = %ld;\n", buf, 0x12u);
}

void LaunchServices::PrefsStorage::_needsUpdate(uint64_t *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  OUTLINED_FUNCTION_3_5();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void ___ZN14LaunchServices12PrefsStorage7_updateEv_block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(&dword_18162D000, v0, OS_LOG_TYPE_ERROR, "Failed to read preferences from lsd. They will be unavailable. %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void LaunchServices::PrefsStorage::_updateOtherProcesses()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "Incremented prefs notify token value. New value is %llu", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void LaunchServices::PrefsStorage::_GetBundleIdentifierWithAppNode()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "Node %{private}@ has no bundle ID.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void LaunchServices::PrefsStorage::_SetValueForNodeInPrefsArray()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "Deleting app node %{private}@ from prefs.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_5();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "Deleting app node %{private}@ from prefs, but not present. Ignoring.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void LaunchServices::PrefsStorage::setValueForNode()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "Adding prefs[%{public}@] for the first time.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void applyStorageACLToURL(uint64_t a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 1024;
  v7 = a2;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "failed to set ACL on %@: %{darwin.errno}d", &v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

void bundleUnitsClaimingDefaultAppCategory(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

void bundleUnitIDsForBindingScheme()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void nonPlaceholderBundleUnitIDForIdentifier(uint64_t a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2048;
  v7 = a2;
  _os_log_debug_impl(&dword_18162D000, log, OS_LOG_TYPE_DEBUG, "no bundle for %@: %lu", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

uint64_t _LSGetHandlerRankFromDictKey(const __CFDictionary *a1, const void *a2)
{
  if (!a1)
  {
    CFStringGetTypeID();
    return 2;
  }

  Value = CFDictionaryGetValue(a1, @"LSHandlerRank");
  TypeID = CFStringGetTypeID();
  if (!Value || TypeID && CFGetTypeID(Value) != TypeID)
  {
    return 2;
  }

  v4 = CFGetTypeID(Value);
  if (v4 != CFStringGetTypeID())
  {
    return 2;
  }

  return _LSNumericHandlerRankFromHandlerRankString(Value);
}

uint64_t _LSGetRoleFromDictKey(const __CFDictionary *a1, const void *a2)
{
  if (!a1 || !a2)
  {
    CFStringGetTypeID();
    return 0;
  }

  Value = CFDictionaryGetValue(a1, a2);
  TypeID = CFStringGetTypeID();
  if (!Value || TypeID && CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  v4 = CFGetTypeID(Value);
  v5 = CFStringGetTypeID();
  if (v4 != v5)
  {
    return 0;
  }

  v6 = 1;
  v7 = OUTLINED_FUNCTION_2_12(v5, @"None");
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_2_12(v7, @"Viewer");
    if (v8)
    {
      v9 = OUTLINED_FUNCTION_2_12(v8, @"Editor");
      if (v9)
      {
        v10 = OUTLINED_FUNCTION_2_12(v9, @"Shell");
        if (v10)
        {
          v11 = OUTLINED_FUNCTION_2_12(v10, @"MDImporter");
          if (v11)
          {
            return 32 * (OUTLINED_FUNCTION_2_12(v11, @"QLGenerator") == kCFCompareEqualTo);
          }

          else
          {
            return 16;
          }
        }

        else
        {
          return 8;
        }
      }

      else
      {
        return 4;
      }
    }

    else
    {
      return 2;
    }
  }

  return v6;
}

void _LSServer_URLIsOnTrustedCryptex_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void _LSServer_URLIsOnTrustedCryptex_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void _LSServer_URLIsOnTrustedCryptex_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void _LSFindOrRegisterBundleNode_cold_1(uint64_t *a1, unsigned int a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5 = 134218240;
  v6 = v3;
  v7 = 2048;
  v8 = a2;
  _os_log_debug_impl(&dword_18162D000, log, OS_LOG_TYPE_DEBUG, "Skipping check that bundleData (%p) != NULL because we don't expect we'll have a valid pointer (caller didn't ask us (%llx) to reinitialize LS database context, so data is known-stale)", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void _LSUnregisterBundle_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(&dword_18162D000, v0, OS_LOG_TYPE_DEBUG, "Removing %{private}@ from protected apps store", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void _LSServerBundleRegistration_cold_1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_20();
    _os_log_impl(v2, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
  }
}

void _LSServerItemInfoRegistration_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void getLibIDs()
{
  if (__cxa_guard_acquire(&_MergedGlobals_2))
  {
    qword_1ED445310 = @"com.apple.system-library";
    unk_1ED445318 = @"com.apple.local-library";
    qword_1ED445320 = @"com.apple.network-library";
    unk_1ED445328 = @"com.apple.user-library";
    qword_1ED445330 = @"com.apple.apple-internal-library";

    __cxa_guard_release(&_MergedGlobals_2);
  }
}

void _LSRegisterPlugin()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_18162D000, v1, OS_LOG_TYPE_ERROR, "will not register %@: it is in an app clip and has EPID %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void _LSRegisterPlugin(NSObject *a1, id *a2, void *a3)
{
  *a2 = MEMORY[0x1E69E9820];
  a2[1] = 3221225472;
  a2[2] = ___ZL17_LSRegisterPluginP11_LSDatabaseRK12LSPluginInfoPK14__CFDictionaryPK10__CFStringS9_S6_jPj_block_invoke;
  a2[3] = &unk_1E6A1A830;
  v5 = a3;
  a2[4] = v5;
  dispatch_async(a1, a2);
}

void _LSCreateRegistrationDataForDirectoryNode()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void _LSCreateRegistrationDataForDirectoryNode(NSObject *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_20();
    _os_log_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

{
  v7 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_20();
    _os_log_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

{
  v7 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_20();
    _os_log_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void ___ZL37_LSSchemeApprovalGetBouncebackHistoryv_block_invoke_cold_1()
{
  if (__cxa_guard_acquire(&_ZGVZZL37_LSSchemeApprovalGetBouncebackHistoryvEUb_E14backlightToken))
  {
    __cxa_atexit(LaunchServices::notifyd::NotifyToken::~NotifyToken, &_ZZZL37_LSSchemeApprovalGetBouncebackHistoryvEUb_E14backlightToken, &dword_18162D000);

    __cxa_guard_release(&_ZGVZZL37_LSSchemeApprovalGetBouncebackHistoryvEUb_E14backlightToken);
  }
}

void _LSServer_RegisterItemInfo_cold_1(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v4 = 136446722;
  v5 = "OSStatus _LSServer_RegisterItemInfo(const LSRegistrationInfo *__strong, NSData *__strong, CFDictionaryRef, CFDictionaryRef, CSStoreUnitID *, CSStoreUnitID *, Boolean *, CFStringRef *)";
  v6 = 2048;
  v7 = 7;
  v8 = 2048;
  v9 = v2;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "%{public}s: registration info version should be %llu but is %llu", &v4, 0x20u);
  v3 = *MEMORY[0x1E69E9840];
}

void _LSServerMain_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void _LSServerMain_cold_3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  _os_log_fault_impl(&dword_18162D000, v0, OS_LOG_TYPE_FAULT, "could not set secure preferences class D: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void _LSServerMain_cold_4()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [__LSDefaultsGetSharedInstance() databaseContainerDirectoryURL];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void _LSServerMain_cold_6()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __listenForSigterm_block_invoke_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = *__error();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void __listenForSigterm_block_invoke_7_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = *__error();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void __listenForSigterm_block_invoke_7_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = *__error();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void __performFirstBootWorkIfNecessary_block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __migrateDefaultAppsToNewWorld_block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void _LSServer_GetiCloudHostNames_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void _LSServer_GetiCloudHostNames_cold_3()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void LaunchServices::URLOverrides::getiCloudHostNamesFromPlistAtURL()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(&dword_18162D000, v0, OS_LOG_TYPE_ERROR, "Error loading iCloud hosts plist from %{public}@: value was missing or not an array", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0(&dword_18162D000, v0, v1, "Error loading iCloud hosts plist from %{public}@: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

void LaunchServices::URLOverrides::State::State()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void ___ZN14LaunchServices12URLOverridesL20getURLOverrideCommonEP5NSURL_block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138478083;
  *(&v4 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0(&dword_18162D000, v1, v2, "XPC error getting URL override for %{private}@: %{public}@", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

void ___ZN14LaunchServices12URLOverridesL20getURLOverrideCommonEP5NSURL_block_invoke_233_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138478083;
  *(&v4 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0(&dword_18162D000, v1, v2, "Error getting URL override for %{private}@: %{public}@", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

void ___ZN14LaunchServices12URLOverridesL20getURLOverrideCommonEP5NSURL_block_invoke_233_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_0_10();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void ___ZN14LaunchServices12URLOverridesL18checkForiCloudHostEP15NSURLComponents_block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void LaunchServices::URLPropertyProvider::prepareLocalizedNameValue(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138477827;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_18162D000, log, OS_LOG_TYPE_DEBUG, "Not localizing name for %{private}@ because we are in _LSContextInit() and recursion/deadlock would occur.", buf, 0xCu);
}

void LaunchServices::URLPropertyProvider::prepareDistinctLocalizedNameValue(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7(&dword_18162D000, a1, a3, "Can't provide property in %s with mimic", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void LaunchServices::URLPropertyProvider::prepareLocalizedNameDictionaryValue(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7(&dword_18162D000, a1, a3, "Can't provide property in %s with mimic", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void LaunchServices::URLPropertyProvider::prepareLocalizedTypeDescriptionDictionaryValue(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7(&dword_18162D000, a1, a3, "Can't provide property in %s with mimic", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void LaunchServices::URLPropertyProvider::prepareArchitecturesValue(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7(&dword_18162D000, a1, a3, "Can't provide property in %s with mimic", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void LaunchServices::URLPropertyProvider::prepareCanSetStrongBindingValue(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7(&dword_18162D000, a1, a3, "Can't provide property in %s with mimic", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void LaunchServices::URLPropertyProvider::prepareStrongBindingValue(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7(&dword_18162D000, a1, a3, "Can't provide property in %s with mimic", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void LaunchServices::URLPropertyProvider::prepareVolumeLocalizedNameValue(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7(&dword_18162D000, a1, a3, "Can't provide property in %s with mimic", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void LaunchServices::URLPropertyProvider::prepareIsHiddenBySystemValue()
{
  {
    __cxa_atexit(LaunchServices::notifyd::NotifyToken::~NotifyToken, &LaunchServices::URLPropertyProvider::beginTranslatingHiddenBySystemNotifications(void)::preferenceDistributedNotificationToken, &dword_18162D000);
  }
}

{
  dispatch_once(&LaunchServices::URLPropertyProvider::beginTranslatingHiddenBySystemNotifications(void)::onceToken, &__block_literal_global_58_1);
}

void LaunchServices::URLPropertyProvider::prepareApplicationDeviceManagementPolicyValue(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7(&dword_18162D000, a1, a3, "Can't provide property in %s with mimic", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void _UTTypePrecachePropertiesOfIdentifiers_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136446210;
  v3 = "void _UTTypePrecachePropertiesOfIdentifiers(CFArrayRef)";
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "%{public}s is a no-op. Use the UniformTypeIdentifiers framework to get instances of the UTType class instead.", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void _UTTypeAddWithDeclarationDictionary_cold_1(void *a1, void *a2, uint64_t a3, NSObject *a4)
{
  v7 = a2;
  *a3 = 138412546;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2112;
  *(a3 + 14) = v7;
  _os_log_error_impl(&dword_18162D000, a4, OS_LOG_TYPE_ERROR, "Application %@ declares a type %@ without correct conformance to a file system type such as public.data. This is a bug in the application.", a3, 0x16u);
}

void LaunchServices::TypeEvaluation::runEvaluator()
{
  dispatch_once(&LaunchServices::TypeEvaluation::resolveBaseType(LaunchServices::TypeEvaluation::State &,NSError * {__autoreleasing}*)::once, &__block_literal_global_79);
}

{
  dispatch_once(&LaunchServices::TypeEvaluation::gnitsFileNames(void)::once, &__block_literal_global_50_0);
}

void *_LSPersonaWithAttributesPersonaUniqueString(void *a1)
{
  if (a1)
  {
    a1 = a1[1];
  }

  return a1;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFRange CFStringGetRangeOfComposedCharactersAtIndex(CFStringRef theString, CFIndex theIndex)
{
  v2 = MEMORY[0x1EEDB7A68](theString, theIndex);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

uint64_t FPExtendBookmarkForDocumentURL_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_FileProvider))
  {
    dlopenHelper_FileProvider(a1);
  }

  return MEMORY[0x1EEDC0CE0]();
}

double gotLoadHelper_x8__OBJC_CLASS___BSProcessHandle(double result)
{
  if (!atomic_load(&dlopenHelperFlag_BaseBoard))
  {
    return dlopenHelper_BaseBoard(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_FileProvider(double a1)
{
  dlopen("/System/Library/Frameworks/FileProvider.framework/FileProvider", 0);
  atomic_store(1u, &dlopenHelperFlag_FileProvider);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_BaseBoard(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/BaseBoard.framework/BaseBoard", 0);
  atomic_store(1u, &dlopenHelperFlag_BaseBoard);
  return a1;
}