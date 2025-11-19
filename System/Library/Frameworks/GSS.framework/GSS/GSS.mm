uint64_t GSSItemGetTypeID()
{
  if (gss_init_once != -1)
  {
    GSSItemGetTypeID_cold_1();
  }

  return gssitemid;
}

const __CFURL *GSSItemAdd(const __CFDictionary *a1, CFErrorRef *a2)
{
  if (gss_init_once == -1)
  {
    if (a1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    GSSItemGetTypeID_cold_1();
    if (a1)
    {
LABEL_3:
      if (a2)
      {
        *a2 = 0;
      }

      v4 = copyConfiguration(1, a2);
      if (!v4)
      {
        return 0;
      }

      v5 = v4;
      v6 = searchCopyResult(v4, a1);
      if (v6)
      {
        v7 = v6;
      }

      else
      {
        v8 = GSSCreateItem(0);
        if (!v8)
        {
          goto LABEL_10;
        }

        v10 = CFUUIDCreate(0);
        if (v10 && (v11 = v10, v7 = CFUUIDCreateString(0, v10), CFRelease(v11), v7))
        {
          CFDictionarySetValue(v8[2], @"kGSSAttrUUID", v7);
          if (modifyItem(v8, a1, a2) & 1) != 0 && (applyClassItems(v8, v8[2], validateAttributes, a2))
          {
            updateTransientValues(v8);
            CFDictionarySetValue(v5, v7, v8);
            storeConfiguration(v5);
            goto LABEL_9;
          }

          CFRelease(v8);
        }

        else
        {
          v7 = v8;
        }
      }

      v8 = 0;
LABEL_9:
      CFRelease(v7);
LABEL_10:
      CFRelease(v5);
      return v8;
    }
  }

  v12 = GSSItemAdd_cold_2();
  return copyConfiguration(v12, v13);
}

const __CFURL *copyConfiguration(int a1, CFErrorRef *a2)
{
  v12 = 0;
  cf = 0;
  result = copyConfigurationURL();
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = *MEMORY[0x277CBECE8];
  v7 = CFReadStreamCreateWithFile(*MEMORY[0x277CBECE8], result);
  CFRelease(v5);
  if (v7)
  {
    if (CFReadStreamOpen(v7))
    {
      v8 = CFPropertyListCreateWithStream(v6, v7, 0, 0, 0, a2);
      CFRelease(v7);
      if (v8 && (v9 = CFGetTypeID(v8), v9 == CFDictionaryGetTypeID()))
      {
        initCreateContext(&v12);
        Value = CFDictionaryGetValue(v8, @"kGSSConfKeys");
        if (Value)
        {
          CFDictionaryApplyFunction(Value, createItem, &v12);
          v11 = v12;
          if (!a1)
          {
            goto LABEL_15;
          }
        }

        else
        {
          CFRelease(v12);
          v11 = 0;
          v12 = 0;
          if (!a1)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        v11 = 0;
        if (!a1)
        {
          goto LABEL_15;
        }
      }

LABEL_13:
      if (!v11)
      {
        initCreateContext(&v12);
        v11 = v12;
      }

      goto LABEL_15;
    }

    CFRelease(v7);
  }

  v11 = 0;
  v8 = 0;
  if (a1)
  {
    goto LABEL_13;
  }

LABEL_15:
  if (v11)
  {
    min_stat = 0;
    useriter[0] = MEMORY[0x277D85DD0];
    useriter[1] = 0x40000000;
    useriter[2] = __addTransientKeys_block_invoke;
    useriter[3] = &__block_descriptor_tmp_89;
    useriter[4] = &v12;
    gss_iter_creds(&min_stat, 0, &__gss_krb5_mechanism_oid_desc, useriter);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v12;
}

CFMutableArrayRef searchCopyResult(const __CFDictionary *a1, uint64_t a2)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v5 = Mutable;
  if (Mutable)
  {
    v7[0] = a2;
    v7[1] = Mutable;
    CFDictionaryApplyFunction(a1, searchFunction, v7);
    if (!CFArrayGetCount(v5))
    {
      CFRelease(v5);
      return 0;
    }
  }

  return v5;
}

uint64_t GSSCreateItem(const __CFDictionary *a1)
{
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    if (a1)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a1);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    *(Instance + 16) = MutableCopy;
    *(Instance + 24) = 0;
  }

  return Instance;
}

uint64_t modifyItem(uint64_t a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  v4 = applyClassItems(a1, a2, modifyAttributes, a3);
  if (v4)
  {
    Value = CFDictionaryGetValue(a2, @"kGSSAttrCredentialPassword");
    if (Value)
    {
      v6 = CFGetTypeID(Value);
      if (v6 == CFStringGetTypeID())
      {
        v7 = CFDictionaryGetValue(a2, @"kGSSAttrCredentialStore");
        if (v7)
        {
          v8 = v7;
          v9 = CFGetTypeID(v7);
          if (v9 == CFBooleanGetTypeID())
          {
            CFBooleanGetValue(v8);
          }
        }
      }
    }
  }

  return v4;
}

gss_buffer_set_desc_struct *updateTransientValues(uint64_t a1)
{
  minor_status = 0;
  v13 = 0;
  v2 = itemToGSSCred(a1, &v13, 0);
  buffer.length = 0;
  buffer.value = 0;
  v3 = *(a1 + 16);
  if (v2)
  {
    v4 = *MEMORY[0x277CBED28];
    CFDictionarySetValue(v3, @"kGSSAttrCredentialExists", *MEMORY[0x277CBED28]);
    if (!__ApplePrivate_gss_cred_label_get(&minor_status, v2, "kcm-status", &buffer))
    {
      v5 = CFDataCreate(0, buffer.value, buffer.length);
      if (v5)
      {
        v6 = v5;
        CFDictionarySetValue(*(a1 + 16), @"kGSSAttrStatusAutoAcquireStatus", v5);
        CFRelease(v6);
      }

      gss_release_buffer(&minor_status, &buffer);
    }

    if (v13)
    {
      v7 = time(0) + -978307200.0 + (v13 | 0xC1CD27E400000000);
    }

    else
    {
      v7 = 0.0;
    }

    v8 = CFDateCreate(0, v7);
    CFDictionarySetValue(*(a1 + 16), @"kGSSAttrTransientExpire", v8);
    CFRelease(v8);
    data_set = 0;
    LODWORD(v8) = gss_inquire_cred_by_oid(&minor_status, v2, &__gss_c_cred_get_default_oid_desc, &data_set);
    gss_release_buffer_set(&minor_status, &data_set);
    if (!v8)
    {
      CFDictionarySetValue(*(a1 + 16), @"kGSSAttrTransientDefaultInClass", v4);
    }

    CFRelease(v2);
  }

  else
  {
    CFDictionaryRemoveValue(v3, @"kGSSAttrTransientExpire");
  }

  result = itemCopyGSSName(a1);
  data_set = result;
  if (result)
  {
    if (!gss_display_name(&minor_status, result, &buffer, 0))
    {
      v10 = CFStringCreateWithFormat(0, 0, @"%.*s", buffer.length, buffer.value, data_set);
      gss_release_buffer(&minor_status, &buffer);
      if (v10)
      {
        CFDictionarySetValue(*(a1 + 16), @"kGSSAttrNameDisplay", v10);
        CFRelease(v10);
      }
    }

    return gss_release_name(&minor_status, &data_set);
  }

  return result;
}

void storeConfiguration(const __CFDictionary *a1)
{
  v2 = copyConfigurationURL();
  if (v2)
  {
    v3 = v2;
    v4 = CFWriteStreamCreateWithFile(0, v2);
    CFRelease(v3);
    if (v4)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v6 = Mutable;
        CFDictionaryApplyFunction(a1, storeItem, Mutable);
        v7 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v7)
        {
          v8 = v7;
          CFDictionarySetValue(v7, @"kGSSConfKeys", v6);
          CFRelease(v6);
          if (CFWriteStreamOpen(v4))
          {
            CFPropertyListWrite(v8, v4, kCFPropertyListBinaryFormat_v1_0, 0, 0);
            CFWriteStreamClose(v4);
          }

          v6 = v4;
        }

        else
        {
          v8 = v4;
        }

        CFRelease(v6);
        v4 = v8;
      }

      CFRelease(v4);
    }
  }
}

uint64_t GSSItemUpdate(uint64_t a1, const __CFDictionary *a2, CFErrorRef *a3)
{
  if (gss_init_once != -1)
  {
    GSSItemGetTypeID_cold_1();
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_18:
    updated = GSSItemUpdate_cold_2();
    return GSSItemDeleteItem(updated);
  }

  if (!a1)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (a3)
  {
    *a3 = 0;
  }

  v6 = copyConfiguration(1, a3);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = searchCopyResult(v6, a1);
  if (v8)
  {
    v9 = v8;
    Count = CFArrayGetCount(v8);
    if (Count >= 1)
    {
      v11 = Count;
      v12 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9, v12);
        if (modifyItem(ValueAtIndex, a2, a3))
        {
          break;
        }

        if (v11 == ++v12)
        {
          CFRelease(v9);
          goto LABEL_12;
        }
      }
    }

    CFRelease(v9);
    storeConfiguration(v7);
    v14 = 1;
  }

  else
  {
LABEL_12:
    v14 = 0;
  }

  CFRelease(v7);
  return v14;
}

uint64_t GSSItemDeleteItem(uint64_t a1, CFErrorRef *a2)
{
  v3 = copyConfiguration(0, a2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = ItemDeleteItem(v3, a1);
  if (v5)
  {
    storeConfiguration(v4);
  }

  CFRelease(v4);
  return v5;
}

uint64_t ItemDeleteItem(__CFDictionary *a1, uint64_t a2)
{
  result = CFDictionaryGetValue(*(a2 + 16), @"kGSSAttrUUID");
  if (result)
  {
    v5 = result;
    cred_handle = itemToGSSCred(a2, 0, 0);
    if (cred_handle)
    {
      min_stat = 0;
      gss_destroy_cred(&min_stat, &cred_handle);
    }

    CFDictionaryRemoveValue(a1, v5);
    return 1;
  }

  return result;
}

uint64_t GSSItemDelete(uint64_t a1, CFErrorRef *a2)
{
  if (gss_init_once == -1)
  {
    if (a1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    GSSItemGetTypeID_cold_1();
    if (a1)
    {
LABEL_3:
      if (a2)
      {
        *a2 = 0;
      }

      v4 = copyConfiguration(0, a2);
      if (!v4)
      {
        LOBYTE(v10) = 0;
        return v10;
      }

      v5 = v4;
      v6 = searchCopyResult(v4, a1);
      if (v6)
      {
        v7 = v6;
        Count = CFArrayGetCount(v6);
        if (Count >= 1)
        {
          v9 = Count;
          v10 = 0;
          for (i = 0; i != v9; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
            if (ItemDeleteItem(v5, ValueAtIndex))
            {
              v10 = 1;
            }
          }

          CFRelease(v7);
          if (v10)
          {
            storeConfiguration(v5);
          }

          goto LABEL_17;
        }

        CFRelease(v7);
      }

      LOBYTE(v10) = 0;
LABEL_17:
      CFRelease(v5);
      return v10;
    }
  }

  v14 = GSSItemDelete_cold_2();
  return GSSItemCopyMatching(v14);
}

const __CFArray *GSSItemCopyMatching(uint64_t a1, CFErrorRef *a2)
{
  if (gss_init_once == -1)
  {
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  GSSItemGetTypeID_cold_1();
  if (a2)
  {
LABEL_3:
    *a2 = 0;
  }

LABEL_4:
  v4 = copyConfiguration(1, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = searchCopyResult(v4, a1);
  CFRelease(v5);
  if (v6)
  {
    Count = CFArrayGetCount(v6);
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; i != v8; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
        updateTransientValues(ValueAtIndex);
      }
    }
  }

  return v6;
}

void itemAcquire(uint64_t a1, const __CFDictionary *a2, NSObject *a3, uint64_t a4)
{
  output_cred_handle = 0;
  error = 0;
  minor_status = 0;
  v8 = itemCopyGSSName(a1);
  input_name = v8;
  if (v8)
  {
    v9 = v8;
    v10 = itemToMechOID(a1);
    if (!v10)
    {
      goto LABEL_19;
    }

    v11 = v10;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      goto LABEL_19;
    }

    v13 = Mutable;
    if (a2)
    {
      Value = CFDictionaryGetValue(a2, @"kGSSAttrCredentialPassword");
      if (Value)
      {
        v15 = Value;
        v16 = @"kGSSICPassword";
      }

      else
      {
        v17 = CFDictionaryGetValue(a2, @"kGSSAttrCredentialSecIdentity");
        if (!v17)
        {
          goto LABEL_10;
        }

        v15 = v17;
        v16 = @"kGSSICCertificate";
      }

      CFDictionarySetValue(v13, v16, v15);
    }

LABEL_10:
    v18 = CFDictionaryGetValue(*(a1 + 16), @"kGSSAttrUUID");
    if (v18)
    {
      v19 = CFStringCreateWithFormat(0, 0, @"API:%@", v18);
      if (!v19)
      {
LABEL_18:
        CFRelease(v13);
LABEL_19:
        gss_release_name(&minor_status, &input_name);
        goto LABEL_20;
      }

      v20 = v19;
      CFDictionarySetValue(v13, @"kGSSICKerberosCacheName", v19);
      CFRelease(v20);
    }

    gss_aapl_initial_cred(v9, v11, v13, &output_cred_handle, &error);
    v21 = *(a1 + 24);
    if (v21)
    {
      CFRelease(v21);
      *(a1 + 24) = 0;
    }

    if (output_cred_handle)
    {
      *(a1 + 24) = GSSCredentialCopyUUID(output_cred_handle);
    }

    updateTransientValues(a1);
    goto LABEL_18;
  }

LABEL_20:
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __itemAcquire_block_invoke;
  block[3] = &unk_278A59FA0;
  block[4] = a4;
  block[5] = output_cred_handle;
  block[6] = error;
  dispatch_async(a3, block);
}

void itemDestroyTransient(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v11 = 0;
  min_stat = 0;
  cred_handle = itemToGSSCred(a1, 0, &v11);
  if (cred_handle)
  {
    gss_destroy_cred(&min_stat, &cred_handle);
    v6 = MEMORY[0x277CBED28];
  }

  else
  {
    v6 = MEMORY[0x277CBED10];
  }

  v7 = *v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = __itemDestroyTransient_block_invoke;
  v8[3] = &unk_278A59FC8;
  v8[4] = a4;
  v8[5] = v7;
  v8[6] = v11;
  dispatch_async(a3, v8);
}

void itemGetGSSCredential(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v8 = 0;
  v6 = itemToGSSCred(a1, 0, &v8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = __itemGetGSSCredential_block_invoke;
  v7[3] = &unk_278A59FF0;
  v7[4] = a4;
  v7[5] = v6;
  v7[6] = v8;
  dispatch_async(a3, v7);
}

void itemCredentialDiagnostics(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v18 = 0;
  minor_status = 0;
  v6 = itemToGSSCred(a1, 0, &v18);
  if (v6 && (v7 = v6, data_set = 0, !gss_inquire_cred_by_oid(&minor_status, v6, &__gss_c_cred_diag_oid_desc, &data_set)) && data_set->count)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v9 = data_set;
      if (data_set->count)
      {
        v10 = 0;
        v11 = 1;
        do
        {
          v12 = CFDataCreate(0, v9->elements[v10].value, v9->elements[v10].length);
          if (v12)
          {
            v13 = v12;
            CFArrayAppendValue(Mutable, v12);
            CFRelease(v13);
          }

          v10 = v11;
          v9 = data_set;
        }

        while (data_set->count > v11++);
      }

      gss_release_buffer_set(&minor_status, &data_set);
      CFRelease(v7);
    }
  }

  else
  {
    Mutable = 0;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 0x40000000;
  v15[2] = __itemCredentialDiagnostics_block_invoke;
  v15[3] = &unk_278A5A018;
  v15[4] = a4;
  v15[5] = Mutable;
  v15[6] = v18;
  dispatch_async(a3, v15);
}

void itemChangePassword(uint64_t a1, CFDictionaryRef theDict, NSObject *a3, uint64_t a4)
{
  error = 0;
  Value = CFDictionaryGetValue(theDict, @"kGSSOperationChangePasswordOldPassword");
  v9 = CFDictionaryGetValue(theDict, @"kGSSOperationChangePasswordNewPassword");
  if (Value)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && (v11 = v9, (v12 = itemToMechOID(a1)) != 0) && (v13 = v12, (Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150])) != 0) && (v15 = Mutable, (v16 = itemCopyGSSName(a1)) != 0))
  {
    v17 = v16;
    CFDictionaryAddValue(v15, @"kGSSChangePasswordOldPassword", Value);
    CFDictionaryAddValue(v15, @"kGSSChangePasswordNewPassword", v11);
    gss_aapl_change_password(v17, v13, v15, &error);
    CFRelease(v17);
    v18 = error;
  }

  else
  {
    v18 = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __itemChangePassword_block_invoke;
  block[3] = &unk_278A5A040;
  block[4] = a4;
  block[5] = v18;
  dispatch_async(a3, block);
}

void itemSetDefault(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  cferror = 0;
  v6 = itemToGSSCred(a1, 0, &cferror);
  if (v6)
  {
    v7 = v6;
    data_set = 0;
    minor_status = 0;
    v10 = 0;
    v8 = gss_inquire_cred_by_oid(&minor_status, v6, &__gss_c_cred_set_default_oid_desc, &data_set);
    gss_release_buffer_set(&v10, &data_set);
    CFRelease(v7);
    if (v8)
    {
      cferror = _gss_mg_create_cferror(v8, minor_status, 0);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __itemSetDefault_block_invoke;
  block[3] = &unk_278A5A068;
  block[4] = a4;
  block[5] = cferror;
  dispatch_async(a3, block);
}

void itemRenewCredential(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  cferror = 0;
  minor_status = 0;
  v6 = itemToGSSCred(a1, 0, &cferror);
  if (v6)
  {
    v7 = v6;
    data_set = 0;
    v8 = gss_inquire_cred_by_oid(&minor_status, v6, &__gss_c_cred_renew_oid_desc, &data_set);
    gss_release_buffer_set(&minor_status, &data_set);
    CFRelease(v7);
    if (v8)
    {
      cferror = _gss_mg_create_cferror(v8, minor_status, 0);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __itemRenewCredential_block_invoke;
  block[3] = &unk_278A5A090;
  block[4] = a4;
  block[5] = cferror;
  dispatch_async(a3, block);
}

void itemRemoveBackingCredential(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  Value = CFDictionaryGetValue(*(a1 + 16), @"kGSSAttrUUID");
  if (Value)
  {
    v7 = Value;
    v8 = CFGetTypeID(Value);
    if (v8 == CFStringGetTypeID())
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v10 = Mutable;
        CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
        CFDictionaryAddValue(v10, *MEMORY[0x277CDC188], kGSSSecPasswordType);
        CFDictionaryAddValue(v10, *MEMORY[0x277CDBF20], v7);
        CFDictionaryAddValue(v10, *MEMORY[0x277CDC120], @"GSS");
        SecItemDelete(v10);
        CFRelease(v10);
      }
    }
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 0x40000000;
  v11[2] = __itemRemoveBackingCredential_block_invoke;
  v11[3] = &unk_278A5A0B8;
  v11[4] = a4;
  v11[5] = 0;
  dispatch_async(a3, v11);
}

uint64_t GSSItemOperation(const void *a1, uint64_t a2, const void *a3, uint64_t a4, void *aBlock)
{
  if (gss_init_once != -1)
  {
    GSSItemGetTypeID_cold_1();
  }

  v10 = _Block_copy(aBlock);
  CFRetain(a1);
  if (a3)
  {
    CFRetain(a3);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __GSSItemOperation_block_invoke;
  block[3] = &unk_278A59F58;
  block[6] = a1;
  block[7] = a3;
  block[8] = a4;
  block[4] = v10;
  block[5] = a2;
  dispatch_async(bgq, block);
  return 1;
}

void __GSSItemOperation_block_invoke(uint64_t a1)
{
  (**(a1 + 40))(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 32));
  _Block_release(*(a1 + 32));
  CFRelease(*(a1 + 48));
  v2 = *(a1 + 56);
  if (v2)
  {

    CFRelease(v2);
  }
}

const void *GSSItemGetValue(uint64_t a1, const void *a2)
{
  check = 0;
  if (CFDictionaryGetValue(transient_types, a2))
  {
    if (notify_check(notify_token, &check))
    {
      v4 = 1;
    }

    else
    {
      v4 = check == 0;
    }

    if (!v4)
    {
      updateTransientValues(a1);
    }
  }

  return CFDictionaryGetValue(*(a1 + 16), a2);
}

uint64_t create_tables()
{
  bgq = dispatch_queue_create("org.h5l.gss.item", MEMORY[0x277D85CD8]);
  if (bgq)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v1 = Mutable;
      v2 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v3 = *MEMORY[0x277CBED28];
      CFDictionarySetValue(v2, @"kGSSAttrClass", *MEMORY[0x277CBED28]);
      CFDictionarySetValue(v2, @"kGSSAttrNameType", v3);
      CFDictionarySetValue(v2, @"kGSSAttrName", v3);
      CFDictionarySetValue(v2, @"kGSSAttrUUID", v3);
      v4 = *MEMORY[0x277CBED10];
      CFDictionarySetValue(v2, @"kGSSAttrCredentialPassword", *MEMORY[0x277CBED10]);
      CFDictionarySetValue(v2, @"kGSSAttrCredentialSecIdentity", v4);
      CFDictionarySetValue(v2, @"kGSSAttrStatusPersistant", v4);
      CFDictionarySetValue(v2, @"kGSSAttrStatusAutoAcquire", v4);
      CFDictionarySetValue(v2, @"kGSSAttrStatusTransient", v4);
      CFDictionarySetValue(v1, @"kGSSAttrClassKerberos", v2);
      CFRelease(v2);
      v5 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(v5, @"kGSSAttrClass", v3);
      CFDictionarySetValue(v5, @"kGSSAttrNameType", v3);
      CFDictionarySetValue(v5, @"kGSSAttrName", v3);
      CFDictionarySetValue(v5, @"kGSSAttrUUID", v3);
      CFDictionarySetValue(v5, @"kGSSAttrCredentialPassword", v4);
      CFDictionarySetValue(v5, @"kGSSAttrStatusPersistant", v4);
      CFDictionarySetValue(v5, @"kGSSAttrStatusAutoAcquire", v4);
      CFDictionarySetValue(v5, @"kGSSAttrStatusTransient", v4);
      CFDictionarySetValue(v1, @"kGSSAttrClassNTLM", v5);
      CFRelease(v5);
      valid_set_types = v1;
      v6 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(v6, @"kGSSAttrTransientExpire", v3);
      transient_types = v6;
      valuePtr = 1196643152;
      kGSSSecPasswordType = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      notify_register_check("com.apple.Kerberos.cache.changed", &notify_token);
      result = _CFRuntimeRegisterClass();
      gssitemid = result;
      return result;
    }
  }

  else
  {
    create_tables_cold_2();
  }

  tables_cold_1 = create_tables_cold_1();
  return _gssitem_release(tables_cold_1);
}

void _gssitem_release(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }
}

const __CFURL *copyConfigurationURL()
{
  result = CFCopyHomeDirectoryURLForUser();
  if (result)
  {
    v1 = result;
    v2 = CFURLCreateCopyAppendingPathComponent(0, result, @"Library/Preferences/com.apple.GSS.items.plist", 0);
    CFRelease(v1);
    return v2;
  }

  return result;
}

CFMutableDictionaryRef initCreateContext(CFMutableDictionaryRef *a1)
{
  if (*a1)
  {
    initCreateContext_cold_1();
    goto LABEL_6;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *a1 = Mutable;
  if (!Mutable)
  {
LABEL_6:
    initCreateContext_cold_3();
    goto LABEL_7;
  }

  result = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  a1[1] = result;
  if (!result)
  {
LABEL_7:
    Context_cold_2 = initCreateContext_cold_2();
    return createItem(Context_cold_2);
  }

  return result;
}

void createItem(const void *a1, const __CFDictionary *a2, CFMutableDictionaryRef *a3)
{
  v5 = GSSCreateItem(a2);
  if (v5)
  {
    v6 = v5;
    v7 = itemToGSSCred(v5, 0, 0);
    if (v7)
    {
      v8 = CopyTransientUUID(v7);
      if (v8)
      {
        v9 = v8;
        CFDictionarySetValue(a3[1], v8, *MEMORY[0x277CBED28]);
        CFRelease(v9);
      }
    }

    CFDictionarySetValue(*a3, a1, v6);

    CFRelease(v6);
  }
}

gss_cred_id_t itemToGSSCred(uint64_t a1, OM_uint32 *a2, CFErrorRef *a3)
{
  oid_set = 0;
  minor_status = 0;
  output_cred_handle = 0;
  v5 = *(a1 + 24);
  if (!v5)
  {
    v9 = itemToMechOID(a1);
    if (v9)
    {
      v10 = v9;
      desired_name = itemCopyGSSName(a1);
      if (desired_name)
      {
        v11 = gss_create_empty_oid_set(&minor_status, &oid_set);
        if (v11)
        {
          if (a3)
          {
            *a3 = _gss_mg_create_cferror(v11, minor_status, 0);
          }
        }

        else
        {
          v12 = gss_add_oid_set_member(&minor_status, v10, &oid_set);
          if (!v12)
          {
            v14 = gss_acquire_cred(&minor_status, desired_name, 0xFFFFFFFF, oid_set, 1, &output_cred_handle, 0, a2);
            gss_release_oid_set(&minor_status, &oid_set);
            gss_release_name(&minor_status, &desired_name);
            if (!v14)
            {
              *(a1 + 24) = GSSCredentialCopyUUID(output_cred_handle);
              return output_cred_handle;
            }

            if (a3)
            {
              v7 = 0;
              *a3 = _gss_mg_create_cferror(v14, minor_status, v10);
              return v7;
            }

            return 0;
          }

          if (a3)
          {
            *a3 = _gss_mg_create_cferror(v12, minor_status, 0);
          }

          gss_release_oid_set(&minor_status, &oid_set);
        }

        gss_release_name(&minor_status, &desired_name);
      }
    }

    return 0;
  }

  v6 = GSSCreateCredentialFromUUID(v5);
  v7 = v6;
  if (a2 && v6)
  {
    gss_inquire_cred(&minor_status, v6, 0, a2, 0, 0);
  }

  return v7;
}

const __CFUUID *CopyTransientUUID(gss_cred_id_t_desc_struct *a1)
{
  result = GSSCredentialCopyUUID(a1);
  if (result)
  {
    v2 = result;
    v3 = CFUUIDCreateString(0, result);
    CFRelease(v2);
    return v3;
  }

  return result;
}

gss_OID_desc *itemToMechOID(uint64_t a1)
{
  result = CFDictionaryGetValue(*(a1 + 16), @"kGSSAttrClass");
  if (result)
  {
    v2 = result;
    if (CFEqual(result, @"kGSSAttrClassKerberos"))
    {
      return &__gss_krb5_mechanism_oid_desc;
    }

    else if (CFEqual(v2, @"kGSSAttrClassNTLM"))
    {
      return &__gss_ntlm_mechanism_oid_desc;
    }

    else if (CFEqual(v2, @"kGSSAttrClassIAKerb"))
    {
      return &__gss_iakerb_mechanism_oid_desc;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

gss_name_t itemCopyGSSName(uint64_t a1)
{
  output_name = 0;
  result = CFDictionaryGetValue(*(a1 + 16), @"kGSSAttrNameType");
  if (result)
  {
    v3 = result;
    if (CFEqual(result, @"kGSSAttrNameTypeGSSUsername"))
    {
      v4 = &__gss_c_nt_user_name_oid_desc;
    }

    else if (CFEqual(v3, @"kGSSAttrNameTypeGSSHostBasedService"))
    {
      v4 = &__gss_c_nt_hostbased_service_oid_desc;
    }

    else
    {
      if (!CFEqual(v3, @"kGSSAttrNameTypeGSSExportedName"))
      {
        return 0;
      }

      v4 = &__gss_c_nt_export_name_oid_desc;
    }

    result = CFDictionaryGetValue(*(a1 + 16), @"kGSSAttrName");
    if (!result)
    {
      return result;
    }

    v5 = result;
    input_name_buffer.length = 0;
    input_name_buffer.value = 0;
    v6 = CFGetTypeID(result);
    if (v6 == CFStringGetTypeID())
    {
      result = rk_cfstring2cstring();
      input_name_buffer.value = result;
      if (!result)
      {
        return result;
      }

      v7 = strlen(result);
LABEL_15:
      minor_status = 0;
      input_name_buffer.length = v7;
      gss_import_name(&minor_status, &input_name_buffer, v4, &output_name);
      return output_name;
    }

    if (v6 == CFDataGetTypeID())
    {
      Length = CFDataGetLength(v5);
      result = malloc_type_malloc(Length, 0x298D72A4uLL);
      input_name_buffer.value = result;
      if (!result)
      {
        return result;
      }

      v9 = result;
      BytePtr = CFDataGetBytePtr(v5);
      v11 = CFDataGetLength(v5);
      memcpy(v9, BytePtr, v11);
      v7 = CFDataGetLength(v5);
      goto LABEL_15;
    }

    return 0;
  }

  return result;
}

void __addTransientKeys_block_invoke(uint64_t a1, uint64_t a2, gss_cred_id_t_desc_struct *a3)
{
  v5 = CopyTransientUUID(a3);
  if (v5)
  {
    v6 = v5;
    if (CFDictionaryGetValue(*(*(a1 + 32) + 8), v5) || (v7 = GSSCreateItem(0)) == 0)
    {

      CFRelease(v6);
    }

    else
    {
      v8 = v7;
      minor_status = 0;
      CFDictionarySetValue(*(v7 + 16), @"kGSSAttrUUID", v6);
      CFDictionarySetValue(*(v8 + 16), @"kGSSAttrClass", @"kGSSAttrClassKerberos");
      CFDictionarySetValue(*(v8 + 16), @"kGSSAttrNameType", @"kGSSAttrNameTypeGSSExportedName");
      v9 = _gss_cred_copy_name(&minor_status, a3, 0);
      input_name = v9;
      if (v9)
      {
        v14.length = 0;
        v14.value = 0;
        v10 = gss_export_name(&minor_status, v9, &v14);
        gss_release_name(&minor_status, &input_name);
        if (v10)
        {
          v11 = v6;
          v6 = v8;
        }

        else
        {
          v13 = CFDataCreate(0, v14.value, v14.length);
          CFDictionarySetValue(*(v8 + 16), @"kGSSAttrName", v13);
          CFRelease(v13);
          updateTransientValues(v8);
          CFDictionarySetValue(*(v8 + 16), @"kGSSAttrStatusTransient", *MEMORY[0x277CBED28]);
          CFDictionarySetValue(**(a1 + 32), v6, v8);
          *(v8 + 24) = GSSCredentialCopyUUID(a3);
          v11 = v8;
        }

        CFRelease(v11);
        v12 = v6;
      }

      else
      {
        CFRelease(v6);
        v12 = v8;
      }

      CFRelease(v12);
    }
  }
}

void searchFunction(int a1, const void *a2, CFDictionaryRef *a3)
{
  if (applyClassItems(a2, *a3, matchAttr, 0))
  {
    v5 = a3[1];

    CFArrayAppendValue(v5, a2);
  }
}

uint64_t applyClassItems(uint64_t a1, CFDictionaryRef theDict, void (__cdecl *a3)(const void *, const void *, void *), CFTypeRef *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  Value = CFDictionaryGetValue(theDict, @"kGSSAttrClass");
  if (!Value)
  {
    Value = CFDictionaryGetValue(*(a1 + 16), @"kGSSAttrClass");
    if (!Value)
    {
      goto LABEL_11;
    }
  }

  v9 = CFDictionaryGetValue(valid_set_types, Value);
  if (!v9)
  {
    goto LABEL_11;
  }

  v12[0] = a1;
  v12[1] = theDict;
  cf = 0;
  v14 = 1;
  CFDictionaryApplyFunction(v9, a3, v12);
  if (!cf)
  {
    v10 = v14;
    return v10 & 1;
  }

  if (!a4)
  {
    CFRelease(cf);
LABEL_11:
    v10 = 0;
    return v10 & 1;
  }

  v10 = 0;
  *a4 = cf;
  return v10 & 1;
}

uint64_t matchAttr(uint64_t key, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 24) == 1)
  {
    v4 = key;
    Value = CFDictionaryGetValue(*(a3 + 8), key);
    key = CFDictionaryGetValue(*(*a3 + 16), v4);
    if (Value)
    {
      v6 = key == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      key = CFEqual(Value, key);
      if (!key)
      {
        *(a3 + 24) = 0;
      }
    }
  }

  return key;
}

void modifyAttributes(void *key, const __CFBoolean *a2, CFDictionaryRef *a3)
{
  Value = CFDictionaryGetValue(a3[1], key);
  if (CFBooleanGetValue(a2) && Value)
  {
    v7 = *(*a3 + 2);

    CFDictionarySetValue(v7, key, Value);
  }
}

uint64_t validateAttributes(uint64_t result, CFBooleanRef BOOLean, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    v4 = result;
    result = CFBooleanGetValue(BOOLean);
    if (result)
    {
      result = CFDictionaryGetValue(*(a3 + 8), v4);
      if (!result)
      {
        result = CFErrorCreate(0, @"com.apple.GSS", 22, 0);
        *(a3 + 16) = result;
      }
    }
  }

  return result;
}

void storeItem(const void *a1, CFDictionaryRef *cf, __CFDictionary *a3)
{
  v6 = CFGetTypeID(cf);
  if (gss_init_once != -1)
  {
    GSSItemGetTypeID_cold_1();
  }

  if (v6 == gssitemid)
  {
    if (!CFDictionaryGetValue(cf[2], @"kGSSAttrStatusTransient"))
    {
      v7 = cf[2];

      CFDictionarySetValue(a3, a1, v7);
    }
  }

  else
  {
    v8 = storeItem_cold_2();
    __itemAcquire_block_invoke(v8);
  }
}

void __itemAcquire_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  (*(a1[4] + 16))();
  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[5];
  if (v5)
  {

    CFRelease(v5);
  }
}

void __itemDestroyTransient_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  (*(a1[4] + 16))();
  v4 = a1[6];
  if (v4)
  {

    CFRelease(v4);
  }
}

void __itemGetGSSCredential_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  (*(a1[4] + 16))();
  v4 = a1[6];
  if (v4)
  {

    CFRelease(v4);
  }
}

void __itemCredentialDiagnostics_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  (*(a1[4] + 16))();
  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {

    CFRelease(v5);
  }
}

void __itemChangePassword_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __itemSetDefault_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __itemRenewCredential_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __itemRemoveBackingCredential_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

OM_uint32 gss_aapl_initial_cred(gss_name_t desired_name, gss_const_OID desired_mech, CFDictionaryRef attributes, gss_cred_id_t *output_cred_handle, CFErrorRef *error)
{
  v30 = 0;
  v31 = 0;
  heim_warn_blocking();
  if (error)
  {
    *error = 0;
  }

  if (!desired_mech)
  {
    return 0x10000;
  }

  if (!desired_name)
  {
    return 0x20000;
  }

  if (!output_cred_handle)
  {
    return 0x1000000;
  }

  *output_cred_handle = 0;
  Value = CFDictionaryGetValue(attributes, @"kGSSICPassword");
  v11 = CFDictionaryGetValue(attributes, @"kGSSICCertificate");
  if (!(Value | v11))
  {
    return 0x1000000;
  }

  v14 = v11;
  v15 = CFDictionaryGetValue(attributes, @"kGSSCredentialUsage");
  if (v15 && (v16 = v15, v17 = CFGetTypeID(v15), v17 == CFStringGetTypeID()) && CFStringCompare(v16, @"kGSS_C_INITIATE", 0))
  {
    if (CFStringCompare(v16, @"kGSS_C_ACCEPT", 0))
    {
      if (CFStringCompare(v16, @"kGSS_C_BOTH", 0))
      {
        return 851968;
      }

      v18 = 0;
    }

    else
    {
      v18 = 2;
    }
  }

  else
  {
    v18 = 1;
  }

  if (!gss_oid_equal(desired_mech, &__gss_krb5_mechanism_oid_desc))
  {
    if (Value)
    {
      v20 = CFGetTypeID(Value);
      if (v20 == CFStringGetTypeID())
      {
        v21 = rk_cfstring2cstring();
        if (v21)
        {
          v31 = v21;
          v30 = strlen(v21);
LABEL_32:
          attributes = &v30;
          v19 = &__gss_c_cred_password_oid_desc;
          goto LABEL_20;
        }

        return 851968;
      }

      v22 = CFGetTypeID(Value);
      if (v22 == CFDataGetTypeID())
      {
        Length = CFDataGetLength(Value);
        v24 = malloc_type_malloc(Length, 0x95BA23C8uLL);
        v31 = v24;
        if (v24)
        {
          v25 = v24;
          v30 = CFDataGetLength(Value);
          BytePtr = CFDataGetBytePtr(Value);
          v27 = CFDataGetLength(Value);
          memcpy(v25, BytePtr, v27);
          goto LABEL_32;
        }

        return 851968;
      }
    }

    if (v14)
    {
      v28 = CFGetTypeID(v14);
      if (v28 == SecIdentityGetTypeID() || (v29 = CFGetTypeID(v14), v29 == SecCertificateGetTypeID()))
      {
        v19 = &__gss_c_cred_secidentity_oid_desc;
        attributes = v14;
        goto LABEL_20;
      }
    }

    return 851968;
  }

  v19 = &__gss_c_cred_heimbase_oid_desc;
LABEL_20:
  v32 = 0;
  v12 = __ApplePrivate_gss_acquire_cred_ext(&v32, desired_name, v19, attributes, 0xFFFFFFFF, desired_mech, v18, output_cred_handle);
  if (v30)
  {
    bzero(v31, v30);
    free(v31);
  }

  if (error && v12)
  {
    *error = _gss_mg_create_cferror(v12, v32, desired_mech);
  }

  return v12;
}

OM_uint32 gss_aapl_change_password(gss_name_t name, gss_const_OID mech, CFDictionaryRef attributes, CFErrorRef *error)
{
  v22 = 0;
  v21 = 0;
  _gss_load_mech();
  mechanism = __gss_get_mechanism(mech);
  if (!mechanism)
  {
    v12 = 0;
    v13 = 0;
    v21 = 0;
    v11 = 0x10000;
    goto LABEL_14;
  }

  v9 = mechanism;
  if (!mechanism[63])
  {
    v12 = 0;
    v13 = 0;
    v21 = 0;
    v11 = 0x100000;
    goto LABEL_14;
  }

  mn = _gss_find_mn(&v21, name, mech, &v22);
  if (mn)
  {
    v11 = mn;
    v12 = 0;
    v13 = 0;
    goto LABEL_14;
  }

  Value = CFDictionaryGetValue(attributes, @"kGSSChangePasswordOldPassword");
  v15 = CFDictionaryGetValue(attributes, @"kGSSChangePasswordNewPassword");
  if (!Value)
  {
    gss_aapl_change_password_cold_2();
    goto LABEL_22;
  }

  if (!v15)
  {
LABEL_22:
    v20 = gss_aapl_change_password_cold_1();
    return GSSCredentialCopyUUID(v20);
  }

  v12 = rk_cfstring2cstring();
  v16 = rk_cfstring2cstring();
  v13 = v16;
  if (!v12 || !v16)
  {
    v21 = 0;
    v11 = 851968;
LABEL_14:
    if (error)
    {
      *error = _gss_mg_create_cferror(v11, v21, mech);
    }

    if (!v12)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v11 = (*(v9 + 504))(&v21, v22[1].elements, v12, v16);
  if (v11)
  {
    _gss_mg_error(v9, v21);
    goto LABEL_14;
  }

LABEL_17:
  v17 = strlen(v12);
  bzero(v12, v17);
  free(v12);
LABEL_18:
  if (v13)
  {
    v18 = strlen(v13);
    bzero(v13, v18);
    free(v13);
  }

  return v11;
}

CFUUIDRef GSSCredentialCopyUUID(gss_cred_id_t credential)
{
  v9 = *MEMORY[0x277D85DE8];
  minor_status = 0;
  data_set = 0;
  *&v8.byte0 = 0;
  *&v8.byte8 = 0;
  if (gss_inquire_cred_by_oid(&minor_status, credential, &__gss_c_nt_uuid_oid_desc, &data_set) || data_set->count != 1 || (elements = data_set->elements, elements->length != 36))
  {
    gss_release_buffer_set(&minor_status, &data_set);
    goto LABEL_7;
  }

  value = elements->value;
  v3 = krb5_string_to_uuid();
  gss_release_buffer_set(&minor_status, &data_set);
  if (v3)
  {
LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  result = CFUUIDCreateFromUUIDBytes(0, v8);
LABEL_8:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

gss_cred_id_t GSSCreateCredentialFromUUID(CFUUIDRef uuid)
{
  result = CFUUIDCreateString(0, uuid);
  if (result)
  {
    v2 = result;
    v3 = GSSCreateName(result, &__gss_c_nt_uuid_oid_desc, 0);
    input_name = v3;
    CFRelease(v2);
    if (v3)
    {
      minor_status = 0;
      output_cred_handle = 0;
      v4 = gss_acquire_cred(&minor_status, v3, 0xFFFFFFFF, 0, 1, &output_cred_handle, 0, 0);
      gss_release_name(&minor_status, &input_name);
      if (v4)
      {
        return 0;
      }

      else
      {
        return output_cred_handle;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

gss_name_t GSSCreateName(CFTypeRef name, gss_const_OID name_type, CFErrorRef *error)
{
  if (error)
  {
    *error = 0;
  }

  minor_status = 0;
  input_name_buffer.length = 0;
  input_name_buffer.value = 0;
  v10 = 0;
  v5 = CFGetTypeID(name);
  if (v5 == CFStringGetTypeID())
  {
    v6 = rk_cfstring2cstring();
    input_name_buffer.value = v6;
    if (!v6)
    {
      return 851968;
    }

    input_name_buffer.length = strlen(v6);
    v7 = gss_import_name(&minor_status, &input_name_buffer, name_type, &v10);
    free(input_name_buffer.value);
  }

  else
  {
    v8 = CFGetTypeID(name);
    if (v8 != CFDataGetTypeID())
    {
      return 0;
    }

    input_name_buffer.value = CFDataGetBytePtr(name);
    input_name_buffer.length = CFDataGetLength(name);
    v7 = gss_import_name(&minor_status, &input_name_buffer, name_type, &v10);
  }

  if (v7)
  {
    return 0;
  }

  else
  {
    return v10;
  }
}

void GSSRuleAddMatch(const __CFDictionary *a1, const __CFString *a2, const void *a3)
{
  key = 0;
  value = 0;
  v22 = 0;
  if (FoldedHostName(a2, &value, &key, &v22))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v6 = value;
    if (Mutable)
    {
      v7 = Mutable;
      CFDictionarySetValue(Mutable, @"scheme", value);
      v8 = v22;
      CFDictionarySetValue(v7, @"path", v22);
      CFDictionarySetValue(v7, @"value", a3);
      v9 = key;
      v10 = CFDictionaryGetValue(a1, key);
      if (v10)
      {
        MutableCopy = CFArrayCreateMutableCopy(0, 0, v10);
      }

      else
      {
        MutableCopy = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      }

      v13 = MutableCopy;
      if (MutableCopy)
      {
        v20 = v9;
        v21 = a1;
        Count = CFArrayGetCount(MutableCopy);
        if (Count < 1)
        {
LABEL_14:
          CFArrayAppendValue(v13, v7);
        }

        else
        {
          v15 = Count;
          v16 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v13, v16);
            v18 = CFDictionaryGetValue(ValueAtIndex, @"path");
            v19 = CFDictionaryGetValue(ValueAtIndex, @"scheme");
            if (CFStringCompare(v19, v6, 1uLL) != kCFCompareLessThan)
            {
              if (CFStringHasPrefix(v8, v18))
              {
                break;
              }
            }

            if (v15 == ++v16)
            {
              goto LABEL_14;
            }
          }

          CFArrayInsertValueAtIndex(v13, v16, v7);
        }

        v9 = v20;
        CFDictionarySetValue(v21, v20, v13);
        CFRelease(v13);
      }

      CFRelease(v6);
      CFRelease(v9);
      CFRelease(v8);
      v12 = v7;
    }

    else
    {
      CFRelease(value);
      CFRelease(key);
      v12 = v22;
    }

    CFRelease(v12);
  }
}

uint64_t FoldedHostName(const __CFString *a1, CFTypeRef *a2, __CFString **a3, CFTypeRef *a4)
{
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  if (CFStringFind(a1, @":", 0).location == -1)
  {
    goto LABEL_16;
  }

  v8 = CFURLCreateWithString(0, a1, 0);
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = v8;
  v10 = CFURLCopyHostName(v8);
  if (v10)
  {
    v11 = v10;
    *a3 = CopyFoldString(v10);
    CFRelease(v11);
    if (!*a3)
    {
      CFRelease(v9);
      return 0;
    }
  }

  else
  {
    *a3 = &stru_284B4C108;
  }

  v13 = CFURLCopyScheme(v9);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = &stru_284B4C108;
  }

  *a2 = v14;
  v15 = CFURLCopyPath(v9);
  *a4 = v15;
  if (!v15)
  {
    goto LABEL_14;
  }

  if (CFStringCompare(v15, &stru_284B4C108, 0) == kCFCompareEqualTo)
  {
    if (*a4)
    {
      CFRelease(*a4);
    }

LABEL_14:
    *a4 = @"/";
  }

  CFRelease(v9);
LABEL_16:
  if (!*a3)
  {
    *a3 = CopyFoldString(a1);
    if (*a2)
    {
      CFRelease(*a2);
    }

    *a2 = @"any";
    *a4 = @"/";
  }

  return 1;
}

const void *GSSRuleGetMatch(const __CFDictionary *a1, const __CFString *a2)
{
  v19 = 0;
  v20 = 0;
  cf = 0;
  v2 = 0;
  if (FoldedHostName(a2, &cf, &v20, &v19))
  {
    v3 = v20;
    v4 = rk_cfstring2cstring();
    CFRelease(v3);
    if (v4)
    {
      v5 = cf;
      if (*v4)
      {
        v6 = v19;
        v17 = v4;
        do
        {
          v7 = CFStringCreateWithCString(0, v4, 0x8000100u);
          Value = CFDictionaryGetValue(a1, v7);
          CFRelease(v7);
          if (Value && (Count = CFArrayGetCount(Value), Count >= 1))
          {
            v10 = Count;
            v11 = 1;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(Value, v11 - 1);
              v13 = CFDictionaryGetValue(ValueAtIndex, @"scheme");
              if (CFStringCompare(v5, v13, 1uLL) && CFStringCompare(@"any", v13, 1uLL) || (v14 = CFDictionaryGetValue(ValueAtIndex, @"path"), !CFStringHasPrefix(v6, v14)))
              {
                v2 = 0;
              }

              else
              {
                v2 = CFDictionaryGetValue(ValueAtIndex, @"value");
              }

              if (v11 >= v10)
              {
                break;
              }

              ++v11;
            }

            while (!v2);
          }

          else
          {
            v2 = 0;
          }

          v15 = strchr((v4 + 1), 46);
          if (!v15)
          {
            break;
          }

          v4 = v15;
        }

        while (!v2);
        CFRelease(v5);
        free(v17);
        goto LABEL_22;
      }

      CFRelease(cf);
      free(v4);
    }

    v2 = 0;
    v6 = v19;
LABEL_22:
    CFRelease(v6);
  }

  return v2;
}

gss_name_t GSSCredentialCopyName(gss_cred_id_t cred)
{
  minor_status = 0;
  v2 = 0;
  if (gss_inquire_cred(&minor_status, cred, &v2, 0, 0, 0))
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

OM_uint32 GSSCredentialGetLifetime(gss_cred_id_t cred)
{
  minor_status = 0;
  lifetime = 0;
  if (gss_inquire_cred(&minor_status, cred, 0, &lifetime, 0, 0))
  {
    return 0;
  }

  else
  {
    return lifetime;
  }
}

CFStringRef GSSNameCreateDisplayString(gss_name_t name)
{
  minor_status = 0;
  output_name_buffer.length = 0;
  output_name_buffer.value = 0;
  v1 = 0;
  if (!gss_display_name(&minor_status, name, &output_name_buffer, 0))
  {
    v1 = CFStringCreateWithBytes(0, output_name_buffer.value, output_name_buffer.length, 0x8000100u, 0);
    gss_release_buffer(&minor_status, &output_name_buffer);
  }

  return v1;
}

uint64_t GSSCredGetLifetime(gss_cred_id_t cred_handle)
{
  minor_status = 0;
  lifetime = 0;
  if (gss_inquire_cred(&minor_status, cred_handle, 0, &lifetime, 0, 0))
  {
    return 0;
  }

  else
  {
    return lifetime;
  }
}

gss_name_t GSSCredCopyName(gss_cred_id_t cred_handle)
{
  minor_status = 0;
  v2 = 0;
  if (gss_inquire_cred(&minor_status, cred_handle, &v2, 0, 0, 0))
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

__CFString *CopyFoldString(CFStringRef theString)
{
  MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
  if (CopyFoldString_once != -1)
  {
    CopyFoldString_cold_1();
  }

  CFStringFold(MutableCopy, 1uLL, CopyFoldString_locale);
  return MutableCopy;
}

CFLocaleRef __CopyFoldString_block_invoke()
{
  result = CFLocaleCreate(0, @"C");
  CopyFoldString_locale = result;
  return result;
}

uint64_t add_MechTypeList(unsigned int *a1)
{
  v2 = malloc_type_realloc(*(a1 + 1), 16 * *a1 + 16, 0x8687B457uLL);
  if (!v2)
  {
    return 12;
  }

  *(a1 + 1) = v2;
  v3 = *a1;
  result = _asn1_copy_top();
  if (!result)
  {
    ++*a1;
  }

  return result;
}

uint64_t _gsskrb5_create_8003_checksum(int *a1, uint64_t a2, uint64_t a3, unsigned int *a4, char a5, uint64_t *a6, uint64_t *a7, _DWORD *a8)
{
  v33[2] = *MEMORY[0x277D85DE8];
  minor_status = 0;
  buffer.length = 0;
  buffer.value = 0;
  v15 = krb5_storage_emem();
  if (!v15)
  {
    gss_release_buffer(&minor_status, &buffer);
    v18 = 12;
    goto LABEL_7;
  }

  v16 = v15;
  krb5_storage_set_byteorder();
  checksum = krb5_store_int32();
  if (checksum)
  {
    goto LABEL_3;
  }

  if (a4)
  {
    if (gss_mg_gen_cb(a1, a4, v33, &buffer))
    {
      v18 = *a1;
      goto LABEL_4;
    }
  }

  else
  {
    v33[0] = 0;
    v33[1] = 0;
  }

  if (krb5_storage_write() != 16)
  {
    goto LABEL_26;
  }

  checksum = krb5_store_int32();
  if (checksum)
  {
    goto LABEL_3;
  }

  if (a5)
  {
    checksum = store_ext(v16, 1, a6);
    if (checksum)
    {
      goto LABEL_3;
    }
  }

  if (*a7)
  {
    checksum = store_ext(v16, 2, a7);
    if (checksum)
    {
      goto LABEL_3;
    }
  }

  if (!a3 || !a4 || !buffer.length)
  {
    goto LABEL_29;
  }

  v28 = 0;
  memset(v30, 0, sizeof(v30));
  checksum = krb5_create_checksum();
  if (checksum)
  {
LABEL_3:
    v18 = checksum;
    goto LABEL_4;
  }

  v21 = length_Checksum(v30);
  v29[0] = v21;
  v22 = malloc_type_malloc(v21, 0xB723104AuLL);
  v29[1] = v22;
  if (!v22)
  {
LABEL_26:
    v18 = 12;
    goto LABEL_4;
  }

  v23 = v22;
  v24 = encode_Checksum(v22 + v21 - 1, v21, v30, &v28);
  if (v24)
  {
    v18 = v24;
    free(v23);
    goto LABEL_4;
  }

  if (v21 == v28)
  {
    v18 = store_ext(v16, 0, v29);
    krb5_data_free();
    if (!v18)
    {
LABEL_29:
      *a8 = 32771;
      checksum = krb5_storage_to_data();
      goto LABEL_3;
    }

LABEL_4:
    gss_release_buffer(&minor_status, &buffer);
    krb5_storage_free();
    if (!v18)
    {
      result = 0;
LABEL_8:
      v20 = *MEMORY[0x277D85DE8];
      return result;
    }

LABEL_7:
    *a1 = v18;
    result = 851968;
    goto LABEL_8;
  }

  v25 = krb5_abortx();
  return store_ext(v25, v26, v27);
}

uint64_t store_ext(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = krb5_store_uint16();
  if (!result)
  {
    v5 = *a3;
    result = krb5_store_uint16();
    if (!result)
    {
      v7 = *a3;
      v6 = a3[1];
      v8 = krb5_storage_write();
      result = 12;
      if ((v8 & 0x8000000000000000) == 0)
      {
        if (v8 == *a3)
        {
          return 0;
        }

        else
        {
          return 12;
        }
      }
    }
  }

  return result;
}

uint64_t _gsskrb5_verify_8003_checksum(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v15 = 0uLL;
  v14 = 0;
  minor_status = 0;
  buffer.length = 0;
  buffer.value = 0;
  krb5_data_zero();
  if (*a5 == 32771 && *(a5 + 8) >= 0x18uLL)
  {
    v10 = *(a5 + 16);
    if (!krb5_storage_from_readonly_mem())
    {
      result = 851968;
      v7 = 12;
      goto LABEL_5;
    }

    krb5_storage_set_byteorder();
    v11 = krb5_ret_uint32();
    if (v11)
    {
      v7 = v11;
    }

    else
    {
      v7 = 12;
    }

    gss_release_buffer(&minor_status, &buffer);
    krb5_data_free();
    krb5_storage_free();
  }

  else
  {
    v7 = 0;
  }

  result = 0x40000;
LABEL_5:
  *a1 = v7;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t read_ext(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = krb5_ret_uint16();
  if (!result)
  {
    result = krb5_ret_uint16();
    if (!result)
    {
      result = krb5_data_alloc();
      if (!result)
      {
        v6 = *a3;
        v5 = a3[1];
        v7 = krb5_storage_read();
        if (v7 < 0 || v7 != *a3)
        {
          krb5_data_free();
          return 2314790661;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t _gsskrb5_register_acceptor_identity(_DWORD *a1, const char *a2)
{
  context = 0;
  *a1 = 0;
  if (__ApplePrivate__gsskrb5_init(&context))
  {
    return 851968;
  }

  pthread_mutex_lock(&gssapi_keytab_mutex);
  if (_gsskrb5_keytab)
  {
    krb5_kt_close(context, _gsskrb5_keytab);
    _gsskrb5_keytab = 0;
  }

  if (a2)
  {
    if (!validate_keytab(context, a2))
    {
      pthread_mutex_unlock(&gssapi_keytab_mutex);
      return 0;
    }

    v6 = 0;
    if (asprintf(&v6, "FILE:%s", a2) < 0 || !v6)
    {
      pthread_mutex_unlock(&gssapi_keytab_mutex);
      return 851968;
    }

    v5 = validate_keytab(context, v6);
    free(v6);
  }

  else
  {
    v5 = krb5_kt_default(context, &_gsskrb5_keytab);
  }

  pthread_mutex_unlock(&gssapi_keytab_mutex);
  if (!v5)
  {
    return 0;
  }

  *a1 = v5;
  return 851968;
}

uint64_t validate_keytab(_krb5_context *a1, const char *a2)
{
  have_content = krb5_kt_resolve(a1, a2, &_gsskrb5_keytab);
  if (!have_content)
  {
    have_content = krb5_kt_have_content();
    if (have_content)
    {
      krb5_kt_close(a1, _gsskrb5_keytab);
      _gsskrb5_keytab = 0;
    }
  }

  return have_content;
}

uint64_t _gsskrb5i_is_cfx(_krb5_context *a1, uint64_t a2, int a3)
{
  result = krb5_auth_con_getlocalseqnumber(a1, *(a2 + 40), (a2 + 12));
  *(a2 + 16) = 0;
  v6 = *(a2 + 40);
  if (a3)
  {
    v7 = v6[5];
    if (v7)
    {
      goto LABEL_8;
    }

    v8 = 6;
  }

  else
  {
    v7 = v6[6];
    if (v7)
    {
      goto LABEL_8;
    }

    v8 = 5;
  }

  v7 = v6[v8];
  if (!v7)
  {
    v7 = v6[4];
    if (!v7)
    {
      return result;
    }
  }

LABEL_8:
  if (*v7 > 0x18u || ((1 << *v7) & 0x18100AE) == 0)
  {
    *(a2 + 76) |= 0x40u;
    v10 = *(a2 + 8) & 0xFFFFFDFB;
    *(a2 + 8) = v10;
    if (a3)
    {
      v11 = v10 | 1;
      *(a2 + 8) = v10 | 1;
      if (!v6[5])
      {
        goto LABEL_24;
      }

      v12 = 5;
    }

    else
    {
      if (!v6[6])
      {
        v11 = v10;
LABEL_24:
        if ((*(a2 + 73) & 0x10) != 0)
        {
          *(a2 + 8) = v11 | 0x200;
        }

        goto LABEL_12;
      }

      v12 = 4;
    }

    v11 = v10 | v12;
    *(a2 + 8) = v10 | v12;
    goto LABEL_24;
  }

LABEL_12:
  if (*a2)
  {
    krb5_crypto_destroy();
  }

  return krb5_crypto_init();
}

uint64_t _gsskrb5_error_token(krb5_error_code *a1, const void **a2, krb5_context a3, krb5_error *a4, uint64_t a5, uint64_t a6, size_t *a7)
{
  v13[0] = 0;
  v13[1] = 0;
  v10 = krb5_mk_error(a3, a4, 0);
  if (v10)
  {
    v11 = 851968;
  }

  else
  {
    v11 = _gsskrb5_encapsulate(a1, v13, a7, &word_23894DB48, a2);
    krb5_data_free();
    if (v11)
    {
      return v11;
    }

    v10 = 0;
  }

  *a1 = v10;
  return v11;
}

uint64_t accept_sec_context(krb5_error_code *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v31 = 0;
  v20 = __ApplePrivate__gsskrb5_init(&v31);
  if (v20)
  {
    *a1 = v20;
    return 851968;
  }

  else
  {
    *a8 = 0;
    a8[1] = 0;
    if (a6)
    {
      *a6 = 0;
    }

    v28 = a8;
    if (a7)
    {
      *a7 = a12;
    }

    v23 = *a2;
    if (!*a2)
    {
      ctx = _gsskrb5_create_ctx(a1, a2, v31, a5, a12);
      if (ctx)
      {
        return ctx;
      }

      v23 = *a2;
      *(v23 + 2) = *(*a2 + 2) | 1;
      *(v23 + 10) = a13;
    }

    pthread_mutex_lock(v23 + 2);
    v24 = *(v23 + 10);
    while (1)
    {
      v25 = v23;
      v26 = (v24)(a1, v23, v31, a3, a4, a5, a6, a7, v28, a9, a10, a11);
      if (*v28 || v26 != 0)
      {
        break;
      }

      v24 = *(v23 + 10);
      if (v24 == step_acceptor_completed)
      {
        pthread_mutex_unlock(v23 + 2);
        return 0;
      }
    }

    ctx = v26;
    pthread_mutex_unlock(v25 + 2);
    if (ctx >= 0x10000)
    {
      v30 = 0;
      _gsskrb5_delete_sec_context(&v30, a2, 0);
    }
  }

  return ctx;
}

uint64_t pku2u_acceptor_start(_DWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, size_t *a9)
{
  if (!a2[28])
  {
    v12 = krb5_storage_emem();
    a2[28] = v12;
    if (!v12)
    {
      *a1 = 12;
      return 851968;
    }
  }

  v24[0] = 0;
  v24[1] = 0;
  v23[0] = 0;
  v23[1] = 0;
  v13 = _gsskrb5_decapsulate(a1, a5, v24, "\x05\x01", a2[4]);
  if (!v13)
  {
    v15 = a2[28];
    v17 = *a5;
    v16 = a5[1];
    krb5_storage_write();
    inited = heim_ipc_init_context();
    if (inited)
    {
      *a1 = inited;
    }

    else
    {
      v14 = _gsskrb5_encapsulate(a1, v23, a9, &word_23894DB4B, a2[4]);
      heim_ipc_free_data();
      if (v14)
      {
        return v14;
      }

      v19 = a2[28];
      v21 = *a9;
      v20 = a9[1];
      krb5_storage_write();
      *a1 = 0;
    }

    return 851968;
  }

  v14 = v13;
  if (v13 == 589824)
  {
    v14 = 0;
    a2[10] = gsskrb5_acceptor_start;
  }

  return v14;
}

uint64_t gsskrb5_acceptor_start(int *a1, uint64_t a2, _krb5_context *a3, const krb5_principal_data **a4, unint64_t *a5, uint64_t a6, krb5_principal *a7, void *a8, size_t *a9, unsigned int *a10, int *a11, void *a12)
{
  memset(&v86.client + 4, 0, 20);
  v18 = _gsskrb5_decapsulate(a1, a5, &v86.checksum, &word_23894DB4E, *(a2 + 32));
  if (v18)
  {
    v19 = a5[1];
    v86.checksum = *a5;
    *&v86.cusec = v19;
  }

  if (!a4)
  {
    v22 = 0;
    v21 = 0;
    *&ctype.magic = 0;
    v84 = 0;
    goto LABEL_10;
  }

  v20 = a4[2];
  if (!*a4)
  {
    *&ctype.magic = 0;
    v84 = 0;
    goto LABEL_9;
  }

  *&ctype.magic = 0;
  v84 = 0;
  if (!krb5_principal_is_gss_hostbased_service())
  {
LABEL_9:
    v22 = 0;
    v21 = *a4;
    goto LABEL_10;
  }

  v21 = 0;
  v22 = 1;
LABEL_10:
  v23 = krb5_rd_req_in_ctx_alloc();
  if (v23 || (v23 = krb5_rd_req_in_set_keytab()) != 0)
  {
    v24 = v23;
LABEL_13:
    *a1 = v24;
    return 851968;
  }

  v27 = a9;
  v28 = krb5_rd_req_ctx();
  krb5_rd_req_in_ctx_free();
  if (v18 && _gss_mg_log_level(5))
  {
    error_message = krb5_get_error_message(a3, v18);
    v79 = 0;
    if (v21)
    {
      krb5_unparse_name(a3, v21, &v79);
      v36 = v79;
    }

    else
    {
      v36 = 0;
    }

    if (!v36)
    {
      v36 = "<not specified>";
    }

    _gss_mg_log(5, "gss-asc: rd_req (server: %s) failed with: %u: %s", v29, v30, v31, v32, v33, v34, v36);
    krb5_free_error_message(a3, error_message);
    if (v79)
    {
      krb5_xfree();
    }

    v27 = a9;
  }

  if (v28 <= -1765328204)
  {
    if (v28 == -1765328351 || v28 == -1765328347)
    {
      v37 = *(a2 + 32);
      p_checksum = &v86.checksum;
      v38 = a1;
      v39 = a3;
      v40 = v28;
      v41 = v21;
      return send_error_token(v38, v39, v40, v41, p_checksum, v37, v27);
    }

    if (v28 != -1765328343)
    {
      goto LABEL_45;
    }

LABEL_32:
    v37 = *(a2 + 32);
    v38 = a1;
    v39 = a3;
    v40 = 2529638953;
    v41 = v21;
    p_checksum = 0;
    return send_error_token(v38, v39, v40, v41, p_checksum, v37, v27);
  }

  if ((v28 + 1765328203) < 2)
  {
    goto LABEL_32;
  }

  if (v28)
  {
LABEL_45:
    *a1 = v28;
    return 851968;
  }

  v44 = v27;
  ap_req_options = krb5_rd_req_out_get_ap_req_options();
  if (!ap_req_options)
  {
    ap_req_options = krb5_rd_req_out_get_ticket();
    if (!ap_req_options)
    {
      ap_req_options = krb5_rd_req_out_get_keyblock();
      if (!ap_req_options)
      {
        if (krb5_rd_req_out_get_flags())
        {
          *(a2 + 76) |= 0x80u;
        }

        if (!v22)
        {
          goto LABEL_51;
        }

        v47 = *(*(a2 + 112) + 144);
        v48 = *a4;
        if (*(v47 + 8))
        {
          v49 = **(v47 + 16);
          v50 = *v48->realm.data;
          if (!strcmp(v49, v50))
          {
LABEL_51:
            v24 = 0;
            goto LABEL_41;
          }
        }

        else
        {
          v50 = *v48->realm.data;
          v49 = **(v47 + 16);
        }

        krb5_set_error_message(a3, v18, "Expecting service %s but got %s", v50, v49);
        v24 = -1765328240;
        goto LABEL_41;
      }
    }
  }

  v24 = ap_req_options;
LABEL_41:
  *(a2 + 120) = *(*(a2 + 112) + 104);
  krb5_rd_req_out_ctx_free();
  if (v24)
  {
    goto LABEL_13;
  }

  v46 = krb5_copy_principal(a3, *(*(a2 + 112) + 136), (a2 + 56));
  if (v46)
  {
    goto LABEL_44;
  }

  v46 = krb5_copy_principal(a3, *(*(a2 + 112) + 144), (a2 + 64));
  if (v46)
  {
    goto LABEL_44;
  }

  mic_compat = _gss_DES3_get_mic_compat(a1, a2, a3);
  if (mic_compat)
  {
    return mic_compat;
  }

  if (a7)
  {
    v46 = krb5_copy_principal(a3, *(*(a2 + 112) + 136), a7);
    if (v46)
    {
      goto LABEL_44;
    }
  }

  *&v86.magic = 0;
  v46 = krb5_auth_con_getauthenticator(a3, *(a2 + 40), &v86);
  if (v46)
  {
    goto LABEL_44;
  }

  v51 = *(*&v86.magic + 40);
  if (!v51)
  {
    krb5_free_authenticator(a3, &v86);
    *a1 = 0;
    return 0x40000;
  }

  if (*v51 != 32771)
  {
    *&ctype.magic = 0;
    v52 = *(*(a2 + 40) + 32);
    v53 = krb5_crypto_init();
    if (v53)
    {
      v55 = v53;
      krb5_free_authenticator(a3, &v86);
LABEL_67:
      v25 = 851968;
LABEL_78:
      *a1 = v55;
      return v25;
    }

    v55 = krb5_verify_checksum(a3, ctype.magic, 0xA, 0, 0, *(*&v86.magic + 40), v54);
    krb5_free_authenticator(a3, &v86);
    krb5_crypto_destroy();
    if (!v55)
    {
      *(a2 + 72) = BYTE4(v86.client) & 2 | 0xC;
      goto LABEL_86;
    }

LABEL_77:
    v25 = 393216;
    goto LABEL_78;
  }

  v84 = 0;
  v85 = 0;
  *v83 = 0;
  if (*(*(a2 + 40) + 48))
  {
    v46 = krb5_crypto_init();
    if (v46)
    {
      goto LABEL_44;
    }
  }

  krb5_data_zero();
  v25 = _gsskrb5_verify_8003_checksum(a1, a3, *v83, a6, *(*&v86.magic + 40));
  krb5_free_authenticator(a3, &v86);
  if (v25)
  {
    krb5_crypto_destroy();
    return v25;
  }

  if (!v84)
  {
    goto LABEL_85;
  }

  v79 = 0;
  v80 = 0;
  ctype.data = 0;
  v82 = 0;
  *&ctype.magic = 0;
  if (!*(a2 + 224))
  {
    krb5_crypto_destroy();
LABEL_76:
    krb5_data_free();
    v55 = 0;
    goto LABEL_77;
  }

  v56 = krb5_storage_to_data();
  if (v56)
  {
    v55 = v56;
    krb5_crypto_destroy();
LABEL_74:
    krb5_data_free();
    goto LABEL_67;
  }

  if (!*(*(a2 + 40) + 48))
  {
    krb5_crypto_destroy();
    krb5_data_free();
    goto LABEL_76;
  }

  v55 = decode_GSS_KRB5_FINISHED(v85, v84, &ctype, 0);
  krb5_data_free();
  if (v55)
  {
    krb5_crypto_destroy();
    goto LABEL_74;
  }

  v55 = krb5_verify_checksum(a3, v83[0], 0x29, v80, v79, &ctype, v57);
  free_GSS_KRB5_FINISHED(&ctype);
  krb5_data_free();
  if (v55)
  {
    krb5_crypto_destroy();
    goto LABEL_67;
  }

LABEL_85:
  krb5_crypto_destroy();
LABEL_86:
  if (*(a2 + 200))
  {
    v46 = krb5_auth_con_init(a3, (a2 + 48));
    if (v46)
    {
      goto LABEL_44;
    }

    v58 = *(a2 + 48);
    v59 = *(*(a2 + 40) + 32);
    krb5_auth_con_setkey();
    v60 = *(a2 + 48);
    v61 = *(*(a2 + 40) + 48);
    krb5_auth_con_setremotesubkey();
  }

  if (_gss_mg_log_level(10))
  {
    *&ctype.magic = 0;
    v84 = 0;
    krb5_unparse_name(a3, *(a2 + 64), &ctype);
    krb5_unparse_name(a3, *(a2 + 56), &v84);
    v76 = **(*(a2 + 40) + 32);
    _gss_mg_log(10, "gss-asc: krb5 (server: %s client: %s) using session enctype: %d", v62, v63, v64, v65, v66, v67, ctype.magic);
    if (v84)
    {
      krb5_xfree();
    }

    if (*&ctype.magic)
    {
      krb5_xfree();
    }
  }

  v68 = *(a2 + 72);
  if ((v68 & 2) == 0)
  {
    goto LABEL_95;
  }

  *&ctype.magic = 0;
  ctype.data = 0;
  _gsskrb5i_is_cfx(a3, a2, 1);
  if ((*(a2 + 76) & 0x40) != 0 || (BYTE4(v86.client) & 4) != 0 || (v84 = 0, v71 = *(a2 + 40), !krb5_auth_con_getremotesubkey()) && (v72 = *(a2 + 40), v73 = krb5_auth_con_setlocalsubkey(), krb5_free_keyblock(a3, v84), !v73))
  {
    *(a2 + 8) |= 4u;
    v74 = *(a2 + 40);
    krb5_auth_con_addflags();
  }

  v46 = krb5_mk_rep(a3, *(a2 + 40), &ctype);
  if (v46)
  {
LABEL_44:
    *a1 = v46;
    return 851968;
  }

  v68 = *(a2 + 72);
  if ((v68 & 0x1000) != 0)
  {
    data = ctype.data;
    *v44 = *&ctype.magic;
    v44[1] = data;
  }

  else
  {
    v25 = _gsskrb5_encapsulate(a1, &ctype, v44, word_23894DB51, *(a2 + 32));
    krb5_data_free();
    if (v25)
    {
      return v25;
    }

    v68 = *(a2 + 72);
  }

LABEL_95:
  v69 = v68 | 0x100;
  *(a2 + 72) = v69;
  v70 = *(*(a2 + 112) + 104);
  *(a2 + 120) = v70;
  *(a2 + 76) |= 2u;
  if (a8)
  {
    *a8 = *(a2 + 32);
  }

  if (a11)
  {
    mic_compat = _gsskrb5_lifetime_left(a1, a3, v70, a11);
    if (mic_compat)
    {
      return mic_compat;
    }

    v69 = *(a2 + 72);
  }

  if ((v69 & 0x1000) != 0)
  {
    if (a10)
    {
      *a10 = v69 & 0xFFFFFFFE;
    }

    *(a2 + 80) = acceptor_wait_for_dcestyle;
    return 1;
  }

  else
  {
    v25 = gsskrb5_acceptor_ready(a1, a2, a3, a12);
    if (a10)
    {
      *a10 = *(a2 + 72);
    }
  }

  return v25;
}

uint64_t iakerb_acceptor_start(int *a1, uint64_t a2, _krb5_context *a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, size_t *a9)
{
  if (!*(a2 + 224))
  {
    v13 = krb5_storage_emem();
    *(a2 + 224) = v13;
    if (!v13)
    {
      v20 = 12;
LABEL_12:
      *a1 = v20;
      return 851968;
    }
  }

  v27[0] = 0;
  v27[1] = 0;
  v26[0] = 0;
  v26[1] = 0;
  v14 = _gsskrb5_iakerb_parse_header(a1, a3, a2, a5, v27);
  if (v14)
  {
    header = v14;
    if (v14 == 589824)
    {
      header = 0;
      *(a2 + 80) = gsskrb5_acceptor_start;
    }

    return header;
  }

  v16 = *(a2 + 224);
  v18 = *a5;
  v17 = a5[1];
  krb5_storage_write();
  if (!*(a2 + 272))
  {
    iakerb_acceptor_start_cold_1();
  }

  if (!krb5_realm_is_lkdc())
  {
    v20 = 22;
    goto LABEL_12;
  }

  inited = heim_ipc_init_context();
  if (inited)
  {
    *a1 = inited;
    return 851968;
  }

  v22 = heim_ipc_call();
  heim_ipc_free_context();
  if (v22)
  {
    _gsskrb5_error_token(a1, *(a2 + 32), a3, v22, 0, 0, a9);
    *a1 = v22;
    return 851968;
  }

  header = _gsskrb5_iakerb_make_header(a1, a3, a2, *(a2 + 272), v26, a9);
  heim_ipc_free_data();
  if (!header)
  {
    v23 = *(a2 + 224);
    v25 = *a9;
    v24 = a9[1];
    krb5_storage_write();
    return 1;
  }

  return header;
}

uint64_t send_error_token(krb5_error_code *a1, krb5_context a2, krb5_error *a3, krb5_principal_data *a4, uint64_t a5, const void **a6, size_t *a7)
{
  v9 = a4;
  v20 = 0;
  v19 = xmmword_278A5AFB8;
  if (!a4 && a5)
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    v13 = krb5_decode_ap_req();
    if (v13)
    {
      v14 = v13;
LABEL_6:
      *a1 = v14;
      return 851968;
    }

    v14 = _krb5_principalname2krb5_principal();
    free_AP_REQ(v17);
    if (v14)
    {
      goto LABEL_6;
    }

    v9 = v20;
  }

  v15 = _gsskrb5_error_token(a1, a6, a2, a3, &v19, v9, a7);
  if (v20)
  {
    krb5_free_principal(a2, v20);
  }

  if (v15)
  {
    return 851968;
  }

  *a1 = 0;
  return 1;
}

uint64_t acceptor_wait_for_dcestyle(int *a1, uint64_t a2, krb5_context a3, int a4, uint64_t *a5, int a6, krb5_principal *a7, int a8, uint64_t a9, _DWORD *a10, _DWORD *a11, void *a12)
{
  v16 = *a5;
  v17 = a5[1];
  *v25 = 0;
  *&v26.magic = v16;
  v26.data = v17;
  v18 = krb5_auth_con_getlocalseqnumber(a3, *(a2 + 40), v25);
  if (v18)
  {
    goto LABEL_5;
  }

  v18 = krb5_auth_con_getremoteseqnumber(a3, *(a2 + 40), &v25[1]);
  if (v18 || (v19 = *(a2 + 40), (v18 = krb5_auth_con_setremoteseqnumber()) != 0) || (*v24 = 0, v23 = 0, v20 = *(a2 + 40), krb5_auth_con_removeflags(), (v18 = krb5_rd_rep(a3, *(a2 + 40), &v26, v24)) != 0))
  {
LABEL_5:
    *a1 = v18;
    return 851968;
  }

  krb5_free_ap_rep_enc_part(a3, *v24);
  krb5_auth_con_setflags(a3, *(a2 + 40), v23);
  v24[0] = 0;
  result = _gsskrb5_lifetime_left(a1, a3, *(a2 + 120), v24);
  if (!result)
  {
    if (!v24[0])
    {
      return 786432;
    }

    if (a11)
    {
      *a11 = v24[0];
    }

    if (a10)
    {
      *a10 = *(a2 + 72);
    }

    if (!a7 || (v18 = krb5_copy_principal(a3, *(a2 + 56), a7)) == 0)
    {
      v23 = 0;
      v24[0] = 0;
      v18 = krb5_auth_con_getremoteseqnumber(a3, *(a2 + 40), v24);
      if (!v18)
      {
        v18 = krb5_auth_con_getlocalseqnumber(a3, *(a2 + 40), &v23);
        if (!v18)
        {
          if (v24[0] != v23)
          {
            return 8;
          }

          v22 = *(a2 + 40);
          v18 = krb5_auth_con_setremoteseqnumber();
          if (!v18)
          {
            return gsskrb5_acceptor_ready(a1, a2, a3, a12);
          }
        }
      }
    }

    goto LABEL_5;
  }

  return result;
}

uint64_t gsskrb5_acceptor_ready(int *a1, uint64_t a2, krb5_context a3, void *a4)
{
  v19 = 0;
  krb5_auth_con_getremoteseqnumber(a3, *(a2 + 40), &v19);
  _gsskrb5i_is_cfx(a3, a2, 1);
  v8 = *(a2 + 76);
  v9 = _gssapi_msg_order_f(*(a2 + 72));
  v10 = _gssapi_msg_order_create(a1, (a2 + 24), v9, v19, 0);
  if (v10)
  {
    return v10;
  }

  v11 = *(a2 + 72);
  if ((v11 & 2) == 0 && _gssapi_msg_order_f(v11))
  {
    v12 = *(a2 + 40);
    krb5_auth_con_setlocalseqnumber();
  }

  v13 = *(a2 + 72);
  if (!*(a2 + 200) || (v13 & 1) == 0)
  {
    *(a2 + 72) = v13 & 0xFFFFFFFE;
    goto LABEL_27;
  }

  id = 0;
  *a1 = 0;
  if (!a4)
  {
    if (!krb5_cc_default(a3, &id))
    {
      goto LABEL_12;
    }

LABEL_13:
    v10 = 0;
    *(a2 + 72) &= ~1u;
    goto LABEL_14;
  }

  *a4 = 0;
  if (krb5_cc_new_unique(a3, *MEMORY[0x277D13188], 0, &id))
  {
    goto LABEL_13;
  }

LABEL_12:
  if (krb5_cc_initialize(a3, id, *(a2 + 56)))
  {
    goto LABEL_13;
  }

  v15 = *(a2 + 48);
  v16 = krb5_rd_cred2();
  if (!v16)
  {
    v14 = id;
    if (a4)
    {
      v17 = _gsskrb5_krb5_import_cred(a1, id, 0, 0, a4);
      if (!v17)
      {
        *(*a4 + 8) |= 1u;
        krb5_cc_close(a3, id);
        goto LABEL_27;
      }

      v10 = v17;
      v14 = id;
      if (!id)
      {
        return v10;
      }

LABEL_16:
      krb5_cc_destroy(a3, v14);
      goto LABEL_26;
    }

    if (id)
    {
      v10 = 0;
      goto LABEL_25;
    }

LABEL_27:
    v10 = 0;
    *(a2 + 80) = step_acceptor_completed;
    *(a2 + 76) |= 2u;
    return v10;
  }

  *(a2 + 72) &= ~1u;
  *a1 = v16;
  v10 = 851968;
LABEL_14:
  v14 = id;
  if (!id)
  {
    goto LABEL_26;
  }

  if (a4)
  {
    goto LABEL_16;
  }

LABEL_25:
  krb5_cc_close(a3, v14);
LABEL_26:
  if (!v10)
  {
    goto LABEL_27;
  }

  return v10;
}

uint64_t __gsskrb5_ccache_lifetime(_DWORD *a1, _krb5_context *a2, _krb5_ccache *a3, uint64_t a4, void *a5)
{
  memset(&mcreds.client, 0, 112);
  v15 = 0u;
  v16 = 0;
  *&mcreds.magic = a4;
  if (!krb5_principal_get_realm())
  {
    _gsskrb5_clear_status();
    *a1 = -1765328238;
    return 851968;
  }

  v13 = 0u;
  memset(creds, 0, sizeof(creds));
  principal = krb5_make_principal();
  if (principal)
  {
    *a1 = principal;
    return 851968;
  }

  v11 = krb5_cc_retrieve_cred(a2, a3, 0, &mcreds, creds);
  krb5_free_principal(a2, mcreds.client);
  if (v11)
  {
    result = 0;
    *a1 = 0;
    *a5 = 0;
  }

  else
  {
    *a5 = *&creds[56];
    krb5_free_cred_contents(a2, creds);
    return 0;
  }

  return result;
}

uint64_t _gsskrb5_acquire_cred(krb5_error_code *a1, const krb5_principal_data *a2, uint64_t a3, uint64_t a4, unsigned __int16 a5, uint64_t *a6)
{
  v7 = a5;
  if (a5 < 3u)
  {
    v32 = 0;
    v33 = 0;
    v31 = 0;
    v12 = __ApplePrivate__gsskrb5_init(&v33);
    if (v12)
    {
      *a1 = v12;
      return 851968;
    }

    *a6 = 0;
    v15 = malloc_type_calloc(1uLL, 0x88uLL, 0x1030040BE4FC7E4uLL);
    v32 = v15;
    if (!v15)
    {
      v8 = 12;
      goto LABEL_3;
    }

    pthread_mutex_init((v15 + 48), 0);
    if (a2)
    {
      if (a2->magic == -1203)
      {
        *creds = 0;
        v16 = _acquire_uuid_name(a1, v33, a2, creds, v32);
        if (*creds)
        {
          *a1 = 0;
          v13 = 0x20000;
LABEL_36:
          v20 = &v32;
          goto LABEL_37;
        }

        v13 = v16;
        if (v16)
        {
          goto LABEL_36;
        }

LABEL_18:
        v19 = v32;
        *(v32 + 8) = v7;
        *a1 = 0;
        *a6 = v19;
        v13 = _gsskrb5_inquire_cred(a1);
        if (!v13)
        {
          return v13;
        }

        v20 = a6;
LABEL_37:
        _gsskrb5_release_cred(&v31, v20);
        return v13;
      }

      v17 = krb5_copy_principal(v33, a2, v32);
      if (v17)
      {
        v18 = v17;
        _gsskrb5_release_cred(&v31, &v32);
        *a1 = v18;
        return 851968;
      }
    }

    if (v7 == 2)
    {
      goto LABEL_17;
    }

    v22 = v32;
    v21 = v33;
    opt = 0;
    principal = 0;
    id = 0;
    memset(creds, 0, sizeof(creds));
    v38 = 0u;
    if (!*v32)
    {
      goto LABEL_23;
    }

    if (!krb5_cc_cache_match(v33, *v32, &id))
    {
      goto LABEL_49;
    }

    v23 = id;
    if (!id)
    {
LABEL_23:
      default_principal = krb5_cc_default(v21, &id);
      if (default_principal)
      {
        goto LABEL_46;
      }

      v23 = id;
    }

    if (krb5_cc_get_principal(v21, v23, &principal))
    {
      krb5_cc_close(v21, id);
      principal = 0;
    }

    else
    {
      if (*v32)
      {
        if (!krb5_principal_compare(v21, *v32, principal))
        {
          krb5_free_principal(v21, principal);
          principal = 0;
          krb5_cc_close(v21, id);
          id = 0;
        }
      }

      else
      {
        default_principal = krb5_copy_principal(v21, principal, v32);
        if (default_principal)
        {
          goto LABEL_46;
        }
      }

      if (principal)
      {
        goto LABEL_49;
      }
    }

    if (!*v32)
    {
      default_principal = krb5_get_default_principal();
      if (default_principal)
      {
        goto LABEL_46;
      }
    }

    default_principal = get_keytab(v21, v32, 0);
    if (default_principal)
    {
      goto LABEL_46;
    }

    if (krb5_cc_cache_match(v21, *v32, &id))
    {
      default_principal = krb5_get_init_creds_opt_alloc(v21, &opt);
      if (!default_principal)
      {
        init_creds_keytab = krb5_get_init_creds_keytab(v21, creds, *v32, *(v32 + 2), 0, 0, opt);
        krb5_get_init_creds_opt_free(v21, opt);
        if (init_creds_keytab)
        {
LABEL_47:
          v13 = 851968;
LABEL_56:
          if (*creds)
          {
            krb5_free_cred_contents(v21, creds);
          }

          if (principal)
          {
            krb5_free_principal(v21, principal);
          }

          if (v13 && init_creds_keytab)
          {
            *a1 = init_creds_keytab;
            goto LABEL_64;
          }

          if (v13)
          {
            goto LABEL_64;
          }

LABEL_17:
          if ((a5 & 0xFFFD) != 0)
          {
            goto LABEL_18;
          }

          v28 = acquire_acceptor_cred(a1, v33, v32);
          if (!v28)
          {
            goto LABEL_18;
          }

          v13 = v28;
LABEL_64:
          pthread_mutex_destroy((v32 + 48));
          krb5_free_principal(v33, *v32);
          free(v32);
          return v13;
        }

        default_principal = krb5_cc_new_unique(v21, *MEMORY[0x277D13188], 0, &id);
        if (!default_principal)
        {
          v26 = krb5_cc_initialize(v21, id, *creds);
          v27 = id;
          if (v26)
          {
            init_creds_keytab = v26;
LABEL_53:
            krb5_cc_destroy(v21, v27);
            goto LABEL_47;
          }

          v30 = krb5_cc_store_cred(v21, id, creds);
          if (v30)
          {
            init_creds_keytab = v30;
            v27 = id;
            goto LABEL_53;
          }

          *(v32 + 3) = *&creds[56];
          v22[2] |= 1u;
LABEL_55:
          v13 = 0;
          init_creds_keytab = 0;
          *(v22 + 5) = id;
          goto LABEL_56;
        }
      }

LABEL_46:
      init_creds_keytab = default_principal;
      goto LABEL_47;
    }

LABEL_49:
    v29 = __gsskrb5_ccache_lifetime(a1, v21, id, *v32, v32 + 3);
    if (v29)
    {
      v13 = v29;
      krb5_cc_close(v21, id);
      init_creds_keytab = 0;
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v8 = 35224071;
LABEL_3:
  *a1 = v8;
  return 851968;
}

uint64_t _acquire_uuid_name(_DWORD *a1, _krb5_context *a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  v17 = *MEMORY[0x277D85DE8];
  *a4 = 0;
  if (*a3 == -1203)
  {
    if (*(a3 + 8) == 1 && !strcmp(*(a3 + 24), "UUID") && (v15 = 0, v16 = 0, v10 = **(a3 + 16), !krb5_string_to_uuid()))
    {
      principal = krb5_cc_resolve_by_uuid();
      if (principal || (principal = krb5_cc_get_principal(a2, *(a5 + 40), a5)) != 0)
      {
        *a1 = principal;
        result = 851968;
      }

      else
      {
        *&v14.magic = 0;
        v14.data = 0;
        if (krb5_cc_get_config(a2, *(a5 + 40), 0, "iakerb", &v14))
        {
          result = __gsskrb5_ccache_lifetime(a1, a2, *(a5 + 40), *a5, (a5 + 24));
        }

        else
        {
          *a4 = 1;
          *(a5 + 24) = 0x7FFFFFFFLL;
          krb5_data_free();
          result = 0;
        }
      }
    }

    else
    {
      result = 0x20000;
    }
  }

  else
  {
    result = 196608;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t acquire_acceptor_cred(_DWORD *a1, _krb5_context *a2, uint64_t a3)
{
  result = get_keytab(a2, a3, 0);
  if (result)
  {
    v7 = result;
    v8 = *(a3 + 16);
    if (v8)
    {
      krb5_kt_close(a2, v8);
      *(a3 + 16) = 0;
    }

    *a1 = v7;
    return 851968;
  }

  else
  {
    *(a3 + 24) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t _gssiakerb_acquire_cred(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t *a6)
{
  v33 = 0;
  v32 = 0;
  *&v30.magic = 0;
  v30.data = 0;
  v29 = 0;
  v10 = __ApplePrivate__gsskrb5_init(&v32);
  if (v10)
  {
    *a1 = v10;
    return 851968;
  }

  *a1 = 0;
  *a6 = 0;
  v11 = 851968;
  if (a2)
  {
    if (a5 <= 1)
    {
      v13 = malloc_type_calloc(1uLL, 0x88uLL, 0x1030040BE4FC7E4uLL);
      v31 = v13;
      if (v13)
      {
        v14 = v13;
        pthread_mutex_init((v13 + 48), 0);
        v15 = _acquire_uuid_name(a1, v32, a2, &v29, v14);
        if (v15)
        {
          v11 = v15;
          _gsskrb5_release_cred(&v33, &v31);
          return v11;
        }

        if (!v29)
        {
          _gsskrb5_release_cred(&v33, &v31);
          return 0x20000;
        }

        if (!krb5_cc_get_config(v32, *(v14 + 40), 0, "password", &v30))
        {
          v16 = asprintf(v31 + 16, "%.*s", v30.magic, v30.data);
          bzero(v30.data, *&v30.magic);
          krb5_data_free();
          if (v16 < 1 || !*(v31 + 16))
          {
            _gsskrb5_release_cred(&v33, &v31);
            *a1 = 12;
            return v11;
          }

          goto LABEL_23;
        }

        if (krb5_cc_get_config(v32, *(v31 + 5), 0, "certificate-ref", &v30))
        {
          if (krb5_cc_get_config(v32, *(v31 + 5), 0, "iakerb", &v30))
          {
            _gsskrb5_release_cred(&v33, &v31);
LABEL_24:
            *a1 = 0;
            return v11;
          }

          *(v31 + 2) |= 4u;
          krb5_data_free();
LABEL_23:
          v11 = 0;
          v21 = v31;
          *(v31 + 8) = 1;
          *(v21 + 24) = 0x7FFFFFFFLL;
          *a6 = v21;
          goto LABEL_24;
        }

        v17 = *(v32 + 47);
        alloc = hx509_certs_init();
        if (alloc || (v19 = *(v32 + 47), (alloc = hx509_query_alloc()) != 0))
        {
          cert = alloc;
          krb5_data_free();
          hx509_certs_free();
        }

        else
        {
          hx509_query_match_option();
          hx509_query_match_option();
          hx509_query_match_persistent();
          cert = _krb5_pk_find_cert();
          krb5_data_free();
          hx509_certs_free();
          v22 = *(v32 + 47);
          hx509_query_free();
          if (!cert)
          {
            goto LABEL_23;
          }

          _gss_mg_log(1, "gss-krb5: failed to find certificate ref %d", v23, v24, v25, v26, v27, v28, cert);
        }

        _gsskrb5_release_cred(&v33, &v31);
        *a1 = cert;
      }
    }
  }

  return v11;
}

uint64_t _gss_iakerb_acquire_cred_ext(krb5_error_code *a1, const krb5_principal_data *a2, const gss_OID_desc *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, void *a8)
{
  v27 = 0;
  if (a7 > 1)
  {
    return 851968;
  }

  context = 0;
  if (__ApplePrivate__gsskrb5_init(&context))
  {
    return 851968;
  }

  if (gss_oid_equal(a3, &__gss_c_cred_password_oid_desc))
  {
    if (*a4 == -1 || !a2)
    {
      return 851968;
    }

LABEL_11:
    v14 = malloc_type_calloc(1uLL, 0x88uLL, 0x1030040BE4FC7E4uLL);
    if (v14)
    {
      v15 = v14;
      pthread_mutex_init((v14 + 48), 0);
      *(v15 + 8) = 1;
      v16 = krb5_copy_principal(context, a2, v15);
      if (v16)
      {
        v17 = v16;
LABEL_32:
        pthread_mutex_destroy((v15 + 48));
        free(v15);
        goto LABEL_33;
      }

      if (a4)
      {
        v20 = malloc_type_malloc(*a4 + 1, 0x664AE47uLL);
        *(v15 + 16) = v20;
        if (!v20)
        {
          krb5_free_principal(context, *v15);
          pthread_mutex_destroy((v15 + 48));
          free(v15);
          result = 851968;
          v17 = 12;
          goto LABEL_34;
        }

        memcpy(v20, *(a4 + 8), *a4);
        *(*(v15 + 16) + *a4) = 0;
      }

      if (v27)
      {
        *(v15 + 15) = heim_retain();
      }

      *(v15 + 5) = 0;
      v21 = (v15 + 40);
      *(v15 + 2) = 0;
      *(v15 + 3) = 0x7FFFFFFFLL;
      if (krb5_cc_cache_match(context, *v15, v15 + 5))
      {
        persistent = krb5_cc_new_unique(context, *MEMORY[0x277D13180], 0, v15 + 5);
        if (persistent)
        {
          goto LABEL_25;
        }
      }

      persistent = krb5_cc_initialize(context, *(v15 + 5), *v15);
      if (persistent)
      {
        goto LABEL_25;
      }

      *&v26.magic = 0;
      v26.data = 0;
      krb5_data_zero();
      krb5_cc_set_config(context, *(v15 + 5), 0, "iakerb", &v26);
      v25 = *(v15 + 16);
      if (v25)
      {
        v26.data = *(v15 + 16);
        *&v26.magic = strlen(v25);
        persistent = krb5_cc_set_config(context, *v21, 0, "password", &v26);
        if (persistent)
        {
          goto LABEL_25;
        }
      }

      if (!*(v15 + 15))
      {
LABEL_42:
        v17 = 0;
        result = 0;
        *a8 = v15;
        goto LABEL_34;
      }

      *&v26.magic = 0;
      v26.data = 0;
      persistent = hx509_cert_get_persistent();
      if (persistent)
      {
LABEL_25:
        v17 = persistent;
      }

      else
      {
        v17 = krb5_cc_set_config(context, *v21, 0, "certificate-ref", &v26);
        der_free_octet_string();
        if (!v17)
        {
          goto LABEL_42;
        }
      }

      krb5_free_principal(context, *v15);
      v23 = *(v15 + 16);
      if (v23)
      {
        v24 = strlen(*(v15 + 16));
        bzero(v23, v24);
        free(*(v15 + 16));
      }

      if (*(v15 + 15))
      {
        heim_release();
      }

      if (*v21)
      {
        krb5_cc_destroy(context, *v21);
      }

      goto LABEL_32;
    }

    return 851968;
  }

  if (gss_oid_equal(a3, &__gss_c_cred_certificate_oid_desc))
  {
    v27 = a4;
    goto LABEL_10;
  }

  if (!gss_oid_equal(a3, &__gss_c_cred_secidentity_oid_desc))
  {
    result = 851968;
    v17 = -1765328181;
    goto LABEL_34;
  }

  v18 = *(context + 47);
  inited = hx509_cert_init_SecFramework();
  if (!inited)
  {
LABEL_10:
    a4 = 0;
    if (!a2)
    {
      return 851968;
    }

    goto LABEL_11;
  }

  v17 = inited;
LABEL_33:
  result = 851968;
LABEL_34:
  *a1 = v17;
  return result;
}

uint64_t _gss_krb5_acquire_cred_ext(int *a1, const krb5_principal_data *a2, const gss_OID_desc *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int16 a7, void *a8)
{
  v93 = *MEMORY[0x277D85DE8];
  opt = 0;
  v86 = 0;
  v84 = 0;
  cache = 0;
  id = 0;
  v14 = __ApplePrivate__gsskrb5_init(&v84);
  if (v14)
  {
    *a1 = v14;
LABEL_72:
    result = 851968;
    goto LABEL_73;
  }

  v15 = a7;
  if (a7 >= 2u)
  {
    v16 = 35224071;
LABEL_5:
    *a1 = v16;
    goto LABEL_72;
  }

  if (!a2)
  {
    goto LABEL_72;
  }

  if (!gss_oid_equal(a3, &__gss_c_cred_heimbase_oid_desc))
  {
    if (!gss_oid_equal(a3, &__gss_c_cred_password_oid_desc))
    {
      goto LABEL_36;
    }

    v21 = malloc_type_malloc(*a4 + 1, 0x824DAD18uLL);
    v20 = v21;
    if (v21)
    {
      memcpy(v21, *(a4 + 8), *a4);
      v22 = 0;
      v77 = 0;
      v78 = 0;
      v23 = 0;
      v79 = 0;
      v80 = 0;
      v81 = 0;
      v24 = 0;
      v20[*a4] = 0;
      goto LABEL_38;
    }

    goto LABEL_19;
  }

  v17 = heim_dict_copy_value();
  if (v17)
  {
    v18 = v17;
    tid = heim_get_tid();
    if (tid == heim_string_get_type_id())
    {
      v20 = heim_string_copy_utf8();
      if (!v20)
      {
        goto LABEL_19;
      }

      goto LABEL_21;
    }

    v25 = heim_get_tid();
    if (v25 != heim_data_get_type_id())
    {
      v20 = 0;
      goto LABEL_21;
    }

    Length = CFDataGetLength(v18);
    v20 = malloc_type_malloc(Length + 1, 0x95993437uLL);
    if (v20)
    {
      BytePtr = CFDataGetBytePtr(v18);
      v28 = CFDataGetLength(v18);
      memcpy(v20, BytePtr, v28);
      v20[CFDataGetLength(v18)] = 0;
LABEL_21:
      heim_release();
      goto LABEL_22;
    }

LABEL_19:
    v24 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 12;
LABEL_53:
    if (opt)
    {
      krb5_get_init_creds_opt_free(v84, opt);
    }

    if (v86)
    {
      krb5_init_creds_free();
    }

    if (v24)
    {
      free(v24);
    }

    if (v29)
    {
      free(v29);
    }

    if (v20)
    {
      v43 = strlen(v20);
      bzero(v20, v43);
      free(v20);
    }

    if (cache)
    {
      krb5_cc_close(v84, cache);
    }

    if (id)
    {
      krb5_cc_destroy(v84, id);
    }

    if (v30)
    {
      if (*v30)
      {
        krb5_free_principal(v84, *v30);
      }

      pthread_mutex_destroy((v30 + 48));
      free(v30);
    }

    *a1 = v31;
    goto LABEL_72;
  }

  v20 = 0;
LABEL_22:
  if (heim_dict_copy_value())
  {
    v29 = heim_string_copy_utf8();
    heim_release();
  }

  else
  {
    v29 = 0;
  }

  if (heim_dict_copy_value())
  {
    v81 = heim_string_copy_utf8();
    heim_release();
  }

  else
  {
    v81 = 0;
  }

  v79 = heim_dict_copy_value();
  v80 = heim_dict_copy_value();
  v32 = heim_dict_copy_value();
  heim_dict_copy_value();
  if (v32)
  {
    v33 = *(v84 + 47);
    inited = hx509_cert_init_SecFrameworkAuth();
    if (inited)
    {
      v31 = inited;
      v30 = 0;
      v24 = 0;
      goto LABEL_47;
    }

    heim_release();
    heim_release();
  }

  v78 = v29;
  if (heim_dict_copy_value())
  {
    v24 = heim_string_copy_utf8();
    heim_release();
  }

  else
  {
    v24 = 0;
  }

  v23 = heim_dict_copy_value();
  v35 = heim_dict_copy_value();
  v22 = v20 == 0;
  if (!v20)
  {
LABEL_36:
    v16 = -1765328181;
    goto LABEL_5;
  }

  v77 = v35;
LABEL_38:
  *a8 = 0;
  v36 = malloc_type_calloc(1uLL, 0x88uLL, 0x1030040BE4FC7E4uLL);
  v30 = v36;
  if (!v36)
  {
    init_creds_opt_alloc = krb5_enomem();
LABEL_45:
    v31 = init_creds_opt_alloc;
LABEL_46:
    v29 = v78;
LABEL_47:
    v40 = v79;
    v41 = v80;
    v42 = v81;
    if (!v81)
    {
LABEL_49:
      if (v40)
      {
        heim_release();
      }

      if (v41)
      {
        heim_release();
      }

      goto LABEL_53;
    }

LABEL_48:
    free(v42);
    goto LABEL_49;
  }

  v76 = v23;
  pthread_mutex_init((v36 + 48), 0);
  init_creds_opt_alloc = krb5_copy_principal(v84, a2, v30);
  if (init_creds_opt_alloc)
  {
    goto LABEL_45;
  }

  prefix_ops = krb5_cc_get_prefix_ops();
  if (prefix_ops == MEMORY[0x277D131A8] || prefix_ops == MEMORY[0x277D13198] || prefix_ops == MEMORY[0x277D131A0])
  {
    v39 = "XCTEMP";
  }

  else
  {
    v39 = v78;
  }

  v31 = krb5_cc_new_unique(v84, v39, 0, &id);
  if (v31)
  {
    goto LABEL_46;
  }

  init_creds_opt_alloc = krb5_get_init_creds_opt_alloc(v84, &opt);
  if (init_creds_opt_alloc)
  {
    goto LABEL_45;
  }

  krb5_principal_get_realm();
  krb5_get_init_creds_opt_set_default_flags();
  krb5_get_init_creds_opt_set_forwardable(opt, 1);
  krb5_get_init_creds_opt_set_proxiable(opt, 1);
  krb5_get_init_creds_opt_set_renew_life(opt, 2592000);
  krb5_get_init_creds_opt_set_canonicalize(v84, opt);
  krb5_get_init_creds_opt_set_win2k();
  v46 = *v30;
  init_creds_opt_alloc = krb5_init_creds_init();
  if (init_creds_opt_alloc)
  {
    goto LABEL_45;
  }

  if (!v22)
  {
    v31 = krb5_init_creds_set_password();
    v47 = strlen(v20);
    bzero(v20, v47);
    free(v20);
    if (v31)
    {
      v20 = 0;
      goto LABEL_46;
    }
  }

  if (v24)
  {
    v31 = krb5_init_creds_set_kdc_hostname();
    free(v24);
    if (v31)
    {
LABEL_151:
      v20 = 0;
      v24 = 0;
      goto LABEL_46;
    }
  }

  if (v81)
  {
    v48 = krb5_init_creds_set_sitename();
    if (v48)
    {
      v31 = v48;
      v24 = 0;
      v20 = 0;
      v29 = v78;
      v40 = v79;
      v41 = v80;
      v42 = v81;
      goto LABEL_48;
    }
  }

  if (!v80 || (v49 = heim_get_tid(), v49 != heim_dict_get_type_id()))
  {
    theData = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    goto LABEL_96;
  }

  v92 = 0uLL;
  v50 = heim_dict_copy_value();
  theData = heim_dict_copy_value();
  v51 = heim_dict_copy_value();
  if (v51)
  {
    v52 = heim_string_copy_utf8();
    if (!v50)
    {
      v53 = NEHelperCacheCopyAppUUIDMapping();
      if (v53)
      {
        v56 = v53;
        if (MEMORY[0x23EE6AD30](v53, v54, v55) == MEMORY[0x277D86440] && xpc_array_get_count(v56))
        {
          v92 = *xpc_array_get_uuid(v56, 0);
          xpc_release(v56);
          v65 = "NEHelperCacheCopyAppUUIDMapping";
          goto LABEL_108;
        }

        xpc_release(v56);
      }

      v57 = v84;
      v73 = v52;
      v58 = "Failed getting app uuid for signing identity: %s";
LABEL_111:
      v31 = 22;
      krb5_set_error_message(v57, 22, v58, v73);
      goto LABEL_143;
    }
  }

  else
  {
    if (!v50)
    {
      if (!theData)
      {
        v31 = 22;
        krb5_set_error_message(v84, 22, "No useful app source identity");
        v52 = 0;
        goto LABEL_143;
      }

      v66 = 0;
      v52 = 0;
      v74 = "unknown";
      goto LABEL_131;
    }

    v52 = 0;
  }

  v62 = heim_get_tid();
  if (v62 != heim_data_get_type_id() || CFDataGetLength(v50) != 16)
  {
    v57 = v84;
    v58 = "Failed getting app uuid";
    goto LABEL_111;
  }

  v92 = *CFDataGetBytePtr(v50);
  v65 = "passed-in";
LABEL_108:
  LOBYTE(v74) = v65;
  if (!theData)
  {
    goto LABEL_138;
  }

  v66 = 1;
LABEL_131:
  v69 = heim_get_tid();
  if (v69 != heim_data_get_type_id() || CFDataGetLength(theData) != 32)
  {
    krb5_set_error_message(v84, 22, "Failed getting audittoken");
LABEL_137:
    v31 = 22;
    goto LABEL_143;
  }

  v70 = CFDataGetBytePtr(theData);
  v71 = *(v70 + 1);
  v90 = *v70;
  v91 = v71;
  *atoken.val = v90;
  *&atoken.val[4] = v71;
  v72 = audit_token_to_pid(&atoken);
  if (v66)
  {
    goto LABEL_138;
  }

  v89 = 0;
  v88 = 0u;
  memset(&atoken, 0, sizeof(atoken));
  if (proc_pidinfo(v72, 17, 1uLL, &atoken, 56) != 56)
  {
    krb5_set_error_message(v84, 22, "Failed getting PROC_PIDUNIQIDENTIFIERINFO");
    goto LABEL_137;
  }

  v92 = *atoken.val;
  v74 = "audit-token";
LABEL_138:
  _gss_mg_log(1, "gss-krb5: setting source app: %s - %s, %d uuid: %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", BYTE12(v92), BYTE13(v92), BYTE14(v92), HIBYTE(v92), v63, v64, v74);
  v59 = krb5_init_creds_set_source_process();
  if (v59)
  {
    goto LABEL_97;
  }

LABEL_96:
  v59 = krb5_init_creds_get();
  if (v59)
  {
    goto LABEL_97;
  }

  *(v30 + 3) = _krb5_init_creds_get_cred_endtime();
  cred_client = _krb5_init_creds_get_cred_client();
  if (cred_client)
  {
    v61 = cred_client;
    if (!krb5_principal_compare(v84, cred_client, *v30))
    {
      krb5_free_principal(v84, *v30);
      v59 = krb5_copy_principal(v84, v61, v30);
      if (v59)
      {
        goto LABEL_97;
      }
    }
  }

  if (v78)
  {
    v59 = krb5_cc_resolve(v84, v78, &cache);
    if (v59)
    {
      goto LABEL_97;
    }
  }

  else if (!v77)
  {
    krb5_cc_cache_match(v84, *v30, &cache);
  }

  v59 = krb5_init_creds_store();
  if (v59)
  {
    goto LABEL_97;
  }

  v59 = krb5_init_creds_store_config();
  if (v59)
  {
    goto LABEL_97;
  }

  if (v79)
  {
    krb5_cc_set_acl();
  }

  if (v76)
  {
    v59 = check_credential(v84, v86, *v30, id);
    if (v59)
    {
      goto LABEL_97;
    }
  }

  krb5_init_creds_free();
  v86 = 0;
  krb5_get_init_creds_opt_free(v84, opt);
  opt = 0;
  ops = krb5_cc_get_ops();
  v68 = cache;
  if (ops == MEMORY[0x277D131A8] && !cache)
  {
    v59 = krb5_cc_new_unique(v84, "XCACHE", 0, &cache);
    if (!v59)
    {
      v68 = cache;
      goto LABEL_124;
    }

LABEL_97:
    v31 = v59;
LABEL_143:
    if (v50)
    {
      heim_release();
    }

    if (theData)
    {
      heim_release();
    }

    if (v51)
    {
      heim_release();
    }

    if (v52)
    {
      free(v52);
    }

    goto LABEL_151;
  }

LABEL_124:
  if (!v68)
  {
    *(v30 + 5) = id;
    goto LABEL_154;
  }

  v59 = krb5_cc_move(v84, id, v68);
  if (v59)
  {
    goto LABEL_97;
  }

  *(v30 + 5) = cache;
  cache = 0;
  id = 0;
LABEL_154:
  *(v30 + 8) = v15;
  *a1 = 0;
  *a8 = v30;
  if (v78)
  {
    free(v78);
  }

  if (v81)
  {
    free(v81);
  }

  if (v80)
  {
    heim_release();
  }

  if (v50)
  {
    heim_release();
  }

  if (theData)
  {
    heim_release();
  }

  if (v51)
  {
    heim_release();
  }

  if (v52)
  {
    free(v52);
  }

  heim_release();
  result = 0;
LABEL_73:
  v45 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t check_credential(_krb5_context *a1, uint64_t a2, uint64_t a3, _krb5_ccache *a4)
{
  v23 = 0;
  v24 = 0;
  v19 = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  *&v16.magic = 0;
  v16.data = 0;
  memset(v21, 0, sizeof(v21));
  memset(&v22, 0, sizeof(v22));
  krb5_data_zero();
  type_id = heim_dict_get_type_id();
  if (type_id != heim_get_tid() || (v8 = heim_dict_copy_value()) == 0)
  {
LABEL_10:
    credentials = krb5_sname_to_principal(a1, 0, "host", 3, &v17);
    if (credentials)
    {
LABEL_13:
      v10 = credentials;
      goto LABEL_14;
    }

    v11 = v17;
    v18 = v17;
LABEL_12:
    *v21 = a3;
    *&v21[8] = v11;
    credentials = krb5_get_credentials(a1, 0, a4, v21, &v20);
    if (!credentials)
    {
      v10 = krb5_mk_req_extended(a1, &v19, 0, 0, v20, &v16);
      krb5_auth_con_free(a1, v19);
      v19 = 0;
      if (v10)
      {
        goto LABEL_14;
      }

      v10 = krb5_rd_req_in_ctx_alloc();
      if (v10)
      {
        return v10;
      }

      credentials = krb5_rd_req_in_set_pac_check();
      if (!credentials)
      {
        if (krb5_init_creds_get_as_reply_key() || (credentials = krb5_rd_req_in_set_as_reply_key(), !credentials))
        {
          credentials = krb5_rd_req_ctx();
          if (!credentials)
          {
            v13 = krb5_rd_req_out_copy_pac();
            if (v13)
            {
              v15[0] = 0;
              v15[1] = 0;
              if (!krb5_pac_copy_credential_package())
              {
                krb5_data_free();
              }
            }

            v10 = 0;
            goto LABEL_15;
          }
        }
      }
    }

    goto LABEL_13;
  }

  LODWORD(v15[0]) = 0;
  underlaying_mech_name = _gss_mg_get_underlaying_mech_name(v8, &__gss_krb5_mechanism_oid_desc);
  if (underlaying_mech_name)
  {
    if (_gsskrb5_canon_name(v15, a1, 0, 0, underlaying_mech_name, &v18))
    {
      if (LODWORD(v15[0]))
      {
        v10 = LODWORD(v15[0]);
      }

      else
      {
        v10 = 22;
      }

      goto LABEL_14;
    }

    v11 = v18;
    if (v18)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v10 = 22;
LABEL_14:
  v13 = 0;
LABEL_15:
  if (v20)
  {
    krb5_free_creds(a1, v20);
  }

  if (v17)
  {
    krb5_free_principal(a1, v17);
  }

  if (v23)
  {
    krb5_rd_req_in_ctx_free();
  }

  if (v24)
  {
    krb5_rd_req_out_ctx_free();
  }

  if (v13)
  {
    krb5_pac_free();
  }

  krb5_free_keyblock_contents(a1, &v22);
  krb5_auth_con_free(a1, v19);
  return v10;
}

uint64_t _gsspku2u_principal(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = 0;
  v17 = 0;
  v15 = 0;
  *a3 = 0;
  v5 = *(a1 + 376);
  if (!hx509_cert_find_subjectAltName_otherName())
  {
    if (v16)
    {
      v10 = 0;
      v11 = 1;
      do
      {
        memset(v14, 0, sizeof(v14));
        if (decode_KRB5PrincipalName(*(v17 + 16 * v10 + 8), *(v17 + 16 * v10), v14, 0))
        {
          LOBYTE(v12) = 1;
        }

        else
        {
          v13 = _krb5_principalname2krb5_principal();
          free_KRB5PrincipalName(v14);
          v12 = v13 != 0;
          if (!v12)
          {
            break;
          }
        }

        v10 = v11++;
      }

      while (v16 > v10);
      hx509_free_octet_string_list();
      if (!v12)
      {
        return 0;
      }
    }

    else
    {
      hx509_free_octet_string_list();
    }
  }

  v6 = *(a1 + 376);
  if (hx509_cert_get_appleid() || (principal = krb5_make_principal(), MEMORY[0x23EE69B90](v15), principal))
  {
    result = krb5_make_principal();
    if (result)
    {
      return result;
    }

    v9 = 11;
  }

  else
  {
    v9 = 10;
  }

  result = 0;
  **a3 = v9;
  return result;
}

uint64_t _gsspku2u_acquire_cred(_DWORD *a1, const krb5_principal_data *a2, uint64_t a3, uint64_t a4, unsigned __int16 a5, void *a6, void *a7, _DWORD *a8)
{
  v9 = a5;
  if (a5 >= 3u)
  {
    *a1 = 35224071;
    return 851968;
  }

  context = 0;
  v15 = __ApplePrivate__gsskrb5_init(&context);
  if (v15)
  {
    *a1 = v15;
    return 851968;
  }

  *a6 = 0;
  if (a8)
  {
    *a8 = -1;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (a2 && !krb5_principal_is_pku2u())
  {
    *a1 = 0;
    return 0x20000;
  }

  v17 = malloc_type_calloc(1uLL, 0x88uLL, 0x1030040BE4FC7E4uLL);
  if (!v17)
  {
    return 851968;
  }

  v18 = v17;
  pthread_mutex_init((v17 + 48), 0);
  *(v18 + 8) = v9;
  if (v9 != 2)
  {
    v19 = *(context + 47);
    alloc = hx509_certs_init();
    if (alloc || (v21 = *(context + 47), (alloc = hx509_query_alloc()) != 0))
    {
      cert = alloc;
    }

    else
    {
      hx509_query_match_option();
      hx509_query_match_option();
      if (a2)
      {
        hx509_query_match_cmp_func();
      }

      cert = _krb5_pk_find_cert();
      v25 = *(context + 47);
      hx509_query_free();
      if (!cert)
      {
        v26 = a2 ? krb5_copy_principal(context, a2, v18) : _gsspku2u_principal(context, *(v18 + 15), v18);
        cert = v26;
        if (!v26)
        {
          goto LABEL_14;
        }
      }
    }

    *a1 = cert;
LABEL_20:
    v23 = *(v18 + 2);
    if (v23)
    {
      krb5_kt_close(context, v23);
    }

    pthread_mutex_destroy((v18 + 48));
    free(v18);
    return 851968;
  }

LABEL_14:
  if ((a5 & 0xFFFD) == 0)
  {
    keytab = get_keytab(context, v18, 1);
    if (keytab)
    {
      *a1 = keytab;
      goto LABEL_20;
    }
  }

  result = 0;
  *a6 = v18;
  return result;
}

uint64_t get_keytab(_krb5_context *a1, krb5_keytab *a2, int a3)
{
  pthread_mutex_lock(&gssapi_keytab_mutex);
  if (_gsskrb5_keytab)
  {
    *&entry.magic = 0;
    full_name = krb5_kt_get_full_name();
    if (!full_name)
    {
      full_name = krb5_kt_resolve(a1, *&entry.magic, a2 + 2);
      krb5_xfree();
    }

    if (full_name)
    {
      goto LABEL_7;
    }
  }

  else
  {
    full_name = krb5_kt_default(a1, a2 + 2);
    if (full_name)
    {
      goto LABEL_7;
    }
  }

  if (*a2)
  {
    v12 = 0;
    memset(&entry, 0, sizeof(entry));
    if (krb5_principal_is_gss_hostbased_service())
    {
      v8 = **(*a2 + 2);
      if (!check_keytab(a1, a2, v8, a3))
      {
        full_name = 2529639093;
        krb5_set_error_message(a1, -1765328203, "Didn't find service %s in keytab", v8);
        goto LABEL_7;
      }

LABEL_14:
      full_name = 0;
      goto LABEL_15;
    }

    v10 = krb5_kt_get_entry(a1, a2[2], *a2, 0, 0, &entry);
    if (v10)
    {
      full_name = v10;
    }

    else
    {
      krb5_free_principal(a1, *a2);
      full_name = krb5_copy_principal(a1, *&entry.magic, a2);
      krb5_kt_free_entry();
      if (!full_name)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (check_keytab(a1, a2, 0, a3))
    {
      goto LABEL_14;
    }

    full_name = 2529639093;
  }

LABEL_7:
  v7 = a2[2];
  if (v7)
  {
    krb5_kt_close(a1, v7);
    a2[2] = 0;
  }

LABEL_15:
  pthread_mutex_unlock(&gssapi_keytab_mutex);
  return full_name;
}

uint64_t check_keytab(_krb5_context *a1, uint64_t a2, const char *a3, int a4)
{
  v17 = 0;
  memset(&entry, 0, sizeof(entry));
  memset(cursor, 0, sizeof(cursor));
  if (krb5_kt_start_seq_get(a1, *(a2 + 16), cursor))
  {
    return 0;
  }

  while (1)
  {
    while (1)
    {
      if (krb5_kt_next_entry(a1, *(a2 + 16), &entry, cursor))
      {
        v8 = 0;
        goto LABEL_20;
      }

      if (!a3)
      {
        break;
      }

      if (*(*&entry.magic + 8))
      {
        v9 = strcmp(**(*&entry.magic + 16), a3);
        if (v9)
        {
          v10 = 1;
        }

        else
        {
          v10 = a4 == 0;
        }

        if (!v10)
        {
          goto LABEL_13;
        }

        v11 = v9;
        krb5_kt_free_entry();
        if (!v11)
        {
          goto LABEL_19;
        }
      }

      else
      {
        krb5_kt_free_entry();
      }
    }

    if (!a4)
    {
      break;
    }

LABEL_13:
    is_lkdc = krb5_principal_is_lkdc();
    v13 = krb5_principal_is_pku2u() | is_lkdc;
    krb5_kt_free_entry();
    if (v13)
    {
      goto LABEL_19;
    }
  }

  krb5_kt_free_entry();
LABEL_19:
  v8 = 1;
LABEL_20:
  krb5_kt_end_seq_get(a1, *(a2 + 16), cursor);
  return v8;
}

uint64_t _gsskrb5_add_cred(krb5_error_code *a1, uint64_t a2, const krb5_principal_data *a3, const gss_OID_desc *a4, int a5, uint64_t a6, uint64_t a7, unint64_t a8, gss_OID_set *a9, _DWORD *a10, _DWORD *a11)
{
  context = 0;
  v43 = 0;
  v17 = __ApplePrivate__gsskrb5_init(&context);
  if (v17)
  {
    *a1 = v17;
    return 851968;
  }

  if (!gss_oid_equal(a4, &__gss_krb5_mechanism_oid_desc))
  {
    *a1 = 0;
    return 0x10000;
  }

  if (!(a2 | a8) || !a2)
  {
    *a1 = 0;
    return 458752;
  }

  if (a8)
  {
    pthread_mutex_lock((a2 + 48));
    v20 = *(a2 + 32);
    if (v20 != a5)
    {
      if (v20)
      {
        pthread_mutex_unlock((a2 + 48));
        v21 = 35224071;
LABEL_28:
        *a1 = v21;
        return 851968;
      }
    }
  }

  if (a3 && krb5_principal_compare(context, a3, *a2))
  {
    if (a8)
    {
      pthread_mutex_unlock((a2 + 48));
    }

    *a1 = 0;
    return 0x20000;
  }

  if (!a8)
  {
    v23 = 0;
    goto LABEL_24;
  }

  v22 = malloc_type_calloc(1uLL, 0x88uLL, 0x1030040BE4FC7E4uLL);
  if (!v22)
  {
    pthread_mutex_unlock((a2 + 48));
    v21 = 12;
    goto LABEL_28;
  }

  v23 = v22;
  *(v22 + 8) = a5;
  *(v22 + 3) = *(a2 + 24);
  *v22 = 0;
  *(v22 + 2) = 0;
  v24 = (v22 + 16);
  *(v22 + 5) = 0;
  v25 = (v22 + 40);
  pthread_mutex_init((v22 + 48), 0);
  v26 = krb5_copy_principal(context, *a2, v23);
  if (v26)
  {
    v27 = v26;
    pthread_mutex_unlock((a2 + 48));
    free(v23);
    *a1 = v27;
    return 851968;
  }

  if (*(a2 + 16))
  {
    v42 = 0;
    full_name = krb5_kt_get_full_name();
    if (full_name)
    {
      v30 = full_name;
LABEL_40:
      *a1 = v30;
      v18 = 851968;
      goto LABEL_54;
    }

    v30 = krb5_kt_resolve(context, v42, v24);
    krb5_xfree();
    if (v30)
    {
      goto LABEL_40;
    }
  }

  v31 = *(a2 + 40);
  if (v31)
  {
    v42 = 0;
    type = krb5_cc_get_type(context, v31);
    if (!type)
    {
      goto LABEL_49;
    }

    v33 = type;
    if (!strcmp(type, "MEMORY"))
    {
      v36 = krb5_cc_new_unique(context, v33, 0, v25);
      if (v36 || (v38 = *(a2 + 40), v39 = *v25, v36 = krb5_cc_copy_cache(), v36))
      {
        v18 = v36;
        goto LABEL_53;
      }

      goto LABEL_24;
    }

    name = krb5_cc_get_name(context, *(a2 + 40));
    if (!name)
    {
LABEL_49:
      v18 = 851968;
      LODWORD(v36) = 12;
      goto LABEL_53;
    }

    v35 = asprintf(&v42, "%s:%s", v33, name);
    v18 = 851968;
    LODWORD(v36) = 12;
    if (v35 < 0 || !v42)
    {
      goto LABEL_53;
    }

    v37 = krb5_cc_resolve(context, v42, v25);
    free(v42);
    if (v37)
    {
      LODWORD(v36) = v37;
      v18 = 851968;
LABEL_53:
      *a1 = v36;
      goto LABEL_54;
    }
  }

LABEL_24:
  pthread_mutex_unlock((a2 + 48));
  v28 = _gsskrb5_inquire_cred(a1, a2, 0, &v43, 0, a9);
  if (v28)
  {
    v18 = v28;
    if (!v23)
    {
LABEL_61:
      if (a8)
      {
        pthread_mutex_unlock((a2 + 48));
      }

      return v18;
    }

LABEL_54:
    if (*v23)
    {
      krb5_free_principal(context, *v23);
    }

    v40 = *(v23 + 2);
    if (v40)
    {
      krb5_kt_close(context, v40);
    }

    v41 = *(v23 + 5);
    if (v41)
    {
      krb5_cc_destroy(context, v41);
    }

    free(v23);
    goto LABEL_61;
  }

  if (a10)
  {
    *a10 = v43;
  }

  if (a11)
  {
    *a11 = v43;
  }

  if (a8)
  {
    *a8 = v23;
  }

  v18 = 0;
  *a1 = 0;
  return v18;
}

uint64_t _gsskrb5i_address_to_krb5addr(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a3 && (a2 == 24 || a2 == 2) && (v3 = *(a3 + 8), !krb5_h_addr2sockaddr()))
  {
    result = krb5_sockaddr2address();
  }

  else
  {
    result = 851968;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _gk_wrap_iov(int *a1, uint64_t a2, int a3, uint64_t a4, _DWORD *a5, unsigned __int16 *a6, int a7)
{
  v15 = 0;
  v13 = __ApplePrivate__gsskrb5_init(&v15);
  if (v13)
  {
    *a1 = v13;
  }

  else if ((*(a2 + 76) & 0x40) != 0)
  {
    return _gssapi_wrap_cfx_iov(a1, a2, v15, a3, a5, a6, a7);
  }

  return 851968;
}

uint64_t _gk_unwrap_iov(_DWORD *a1, uint64_t a2, int *a3, _DWORD *a4, unsigned __int16 *a5, int a6)
{
  v14 = 0;
  v12 = __ApplePrivate__gsskrb5_init(&v14);
  if (v12)
  {
    *a1 = v12;
  }

  else if ((*(a2 + 76) & 0x40) != 0)
  {
    return _gssapi_unwrap_cfx_iov(a1, a2, v14, a3, a4, a5, a6);
  }

  return 851968;
}

uint64_t _gk_wrap_iov_length(_DWORD *a1, uint64_t a2, int a3, uint64_t a4, _DWORD *a5, unsigned __int16 *a6, int a7)
{
  v16 = 0;
  v14 = __ApplePrivate__gsskrb5_init(&v16);
  if (v14)
  {
    *a1 = v14;
  }

  else if ((*(a2 + 76) & 0x40) != 0)
  {
    return _gssapi_wrap_iov_length_cfx(a1, a2, v16, a3, a4, a5, a6, a7);
  }

  return 851968;
}

uint64_t _gssapi_get_mic_arcfour(int *a1, uint64_t a2, _krb5_context *a3, uint64_t a4, uint64_t a5, size_t *a6, _DWORD *a7)
{
  v35 = *MEMORY[0x277D85DE8];
  v23 = 0;
  size = 0;
  v22 = 0;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  _gsskrb5_encap_length(22, &v22, &size, &__gss_krb5_mechanism_oid_desc);
  v13 = size;
  *a6 = size;
  v14 = malloc_type_malloc(v13, 0x74E1585DuLL);
  a6[1] = v14;
  if (v14)
  {
    mech_header = _gssapi_make_mech_header(v14, v22, &__gss_krb5_mechanism_oid_desc);
    *mech_header = 1114369;
    *(mech_header + 1) = -1;
    v16 = arcfour_mic_cksum(a3, a7, 23, mech_header + 2, mech_header, *(a5 + 8), *a5, 0, 0);
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = arcfour_mic_key(a3, a7);
      if (!v17)
      {
        pthread_mutex_lock((a2 + 128));
        krb5_auth_con_getlocalseqnumber(a3, *(a2 + 40), &v23);
        _gss_mg_encode_be_uint32(v23, mech_header + 2);
        v20 = *(a2 + 40);
        ++v23;
        krb5_auth_con_setlocalseqnumber();
        pthread_mutex_unlock((a2 + 128));
        *(mech_header + 3) = 16843009 * ((*(a2 + 76) & 1) - 1);
        hc_EVP_CIPHER_CTX_init();
        hc_EVP_rc4();
        hc_EVP_CipherInit_ex();
        hc_EVP_Cipher();
        hc_EVP_CIPHER_CTX_cleanup();
        result = 0;
        goto LABEL_7;
      }
    }

    _gsskrb5_release_buffer(a1, a6);
    result = 851968;
  }

  else
  {
    result = 851968;
    v17 = 12;
  }

LABEL_7:
  *a1 = v17;
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t arcfour_mic_cksum(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, const void *a6, size_t a7, const void *a8, size_t a9)
{
  v13 = malloc_type_malloc(a7 + a9 + 8, 0x6E553575uLL);
  if (!v13)
  {
    return 12;
  }

  v14 = v13;
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  *v13 = *a5;
  v15 = v13 + 1;
  memcpy(v13 + 1, a6, a7);
  memcpy(v15 + a7, a8, a9);
  v16 = krb5_crypto_init();
  if (v16)
  {
    checksum = v16;
    free(v14);
  }

  else
  {
    checksum = krb5_create_checksum();
    free(v14);
    if (!checksum)
    {
      *a4 = *v21;
      free_Checksum(v20);
    }

    krb5_crypto_destroy();
  }

  return checksum;
}

uint64_t arcfour_mic_key(uint64_t a1, _DWORD *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  if (*a2 == 24)
  {
    result = krb5_hmac();
    if (!result)
    {
      goto LABEL_5;
    }
  }

  else
  {
    result = krb5_hmac();
    if (!result)
    {
LABEL_5:
      result = krb5_hmac();
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _gssapi_verify_mic_arcfour(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, _DWORD *a6, _DWORD *a7, unsigned __int16 *a8)
{
  v37[1] = *MEMORY[0x277D85DE8];
  if (a6)
  {
    *a6 = 0;
  }

  v22 = 0;
  v13 = *a5;
  v21 = a5[1];
  v14 = _gsskrb5_verify_header(&v21, v13, a8, &__gss_krb5_mechanism_oid_desc);
  if (!v14)
  {
    v16 = v21;
    if (*v21 != 17 || (v21 += 2, *(v16 + 2) != -1))
    {
      v15 = 393216;
      goto LABEL_8;
    }

    v21 = v16 + 6;
    v19 = arcfour_mic_cksum(a3, a7, 23, &v36, v16 - 2, *(a4 + 8), *a4, 0, 0);
    if (v19 || (v19 = arcfour_mic_key(a3, a7)) != 0)
    {
      v15 = 851968;
    }

    else
    {
      v19 = ct_memcmp();
      if (v19)
      {
        v33 = 0;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        hc_EVP_CIPHER_CTX_init();
        hc_EVP_rc4();
        hc_EVP_CipherInit_ex();
        hc_EVP_Cipher();
        hc_EVP_CIPHER_CTX_cleanup();
        v34 = 0;
        v35 = 0;
        _gss_mg_decode_be_uint32(v37, &v22);
        *(a2 + 76);
        v20 = ct_memcmp();
        v37[0] = 0;
        if (!v20)
        {
          pthread_mutex_lock((a2 + 128));
          v15 = _gssapi_msg_order_check(*(a2 + 24), v22);
          pthread_mutex_unlock((a2 + 128));
          if (v15)
          {
            goto LABEL_8;
          }

          v19 = 0;
          goto LABEL_12;
        }

        v19 = 0;
      }

      v15 = 393216;
    }

LABEL_12:
    *a1 = v19;
    goto LABEL_8;
  }

  v15 = v14;
LABEL_8:
  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t _gssapi_wrap_arcfour(_DWORD *a1, uint64_t a2, _krb5_context *a3, int a4, uint64_t a5, uint64_t a6, _DWORD *a7, size_t *a8, uint64_t a9)
{
  v52[2] = *MEMORY[0x277D85DE8];
  if (a7)
  {
    *a7 = 0;
  }

  v36 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v16 = *a6;
  if ((*(a2 + 73) & 0x10) != 0)
  {
    v38 = 32;
    _gssapi_encap_length(32, &v38, &v37, &__gss_krb5_mechanism_oid_desc);
    v17 = v37 + v16;
    v37 += v16;
  }

  else
  {
    v38 = v16 + 33;
    _gssapi_encap_length(v16 + 33, &v38, &v37, &__gss_krb5_mechanism_oid_desc);
    v17 = v37;
    ++v16;
  }

  *a8 = v17;
  v18 = malloc_type_malloc(v17, 0x58C8E777uLL);
  a8[1] = v18;
  if (!v18)
  {
    *a1 = 12;
    goto LABEL_26;
  }

  mech_header = _gssapi_make_mech_header(v18, v38, &__gss_krb5_mechanism_oid_desc);
  v20 = mech_header;
  *mech_header = 1114370;
  if (a4)
  {
    v21 = 16;
  }

  else
  {
    v21 = -1;
  }

  if (a4)
  {
    v22 = 0;
  }

  else
  {
    v22 = -1;
  }

  mech_header[4] = v21;
  mech_header[5] = v22;
  *(mech_header + 3) = -1;
  pthread_mutex_lock((a2 + 128));
  krb5_auth_con_getlocalseqnumber(a3, *(a2 + 40), &v33);
  _gss_mg_encode_be_uint32(v33, v20 + 2);
  v23 = *(a2 + 40);
  ++v33;
  krb5_auth_con_setlocalseqnumber();
  pthread_mutex_unlock((a2 + 128));
  *(v20 + 3) = 16843009 * ((*(a2 + 76) & 1) - 1);
  krb5_generate_random_block();
  memcpy(v20 + 32, *(a6 + 8), *a6);
  if ((*(a2 + 73) & 0x10) == 0)
  {
    v20[*a6 + 32] = 1;
  }

  v24 = arcfour_mic_cksum(a3, a9, 22, v20 + 2, v20, v20 + 24, 8uLL, v20 + 32, v16);
  if (v24)
  {
    *a1 = v24;
    _gsskrb5_release_buffer(a1, a8);
LABEL_26:
    result = 851968;
    goto LABEL_27;
  }

  v25 = 0;
  LODWORD(v34) = *a9;
  v35 = 16;
  v36 = v52;
  v26 = *(a9 + 16);
  do
  {
    *(v52 + v25) = *(v26 + v25) ^ 0xF0;
    ++v25;
  }

  while (v25 != 16);
  v27 = arcfour_mic_key(a3, &v34);
  v52[0] = 0;
  v52[1] = 0;
  if (v27)
  {
    v28 = v27;
    _gsskrb5_release_buffer(a1, a8);
    *a1 = v28;
    goto LABEL_26;
  }

  if (a4)
  {
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    hc_EVP_CIPHER_CTX_init();
    hc_EVP_rc4();
    hc_EVP_CipherInit_ex();
    hc_EVP_Cipher();
    hc_EVP_CIPHER_CTX_cleanup();
  }

  v50 = 0;
  v51 = 0;
  v29 = arcfour_mic_key(a3, a9);
  if (v29)
  {
    v30 = v29;
    _gsskrb5_release_buffer(a1, a8);
    *a1 = v30;
    goto LABEL_26;
  }

  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  hc_EVP_CIPHER_CTX_init();
  hc_EVP_rc4();
  hc_EVP_CipherInit_ex();
  hc_EVP_Cipher();
  hc_EVP_CIPHER_CTX_cleanup();
  if (a7)
  {
    *a7 = a4;
  }

  result = 0;
  *a1 = 0;
LABEL_27:
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _gssapi_unwrap_arcfour(int *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, int *a6, _DWORD *a7, uint64_t a8)
{
  v56[2] = *MEMORY[0x277D85DE8];
  v35 = 0;
  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  v15 = *a4;
  v36 = a4[1];
  if ((*(a2 + 73) & 0x10) != 0)
  {
    if (v15 < 0x2D)
    {
LABEL_11:
      v17 = 0x10000;
      goto LABEL_15;
    }

    v15 = 45;
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  v16 = _gssapi_verify_mech_header(&v36, v15, &__gss_krb5_mechanism_oid_desc);
  if (!v16)
  {
    v18 = &v36[-a4[1] + 32];
    v19 = *a4 - v18;
    if (*a4 < v18)
    {
      goto LABEL_11;
    }

    if (*v36 != 258 || *(v36 + 1) != 17)
    {
LABEL_14:
      v17 = 393216;
      goto LABEL_15;
    }

    v22 = *(v36 + 2);
    v23 = v22 != 16;
    if (v22 == 16)
    {
      v24 = 1;
    }

    else
    {
      if (*(v36 + 2) != -1)
      {
        goto LABEL_14;
      }

      v24 = 0;
    }

    if (*(v36 + 3) != -1)
    {
      goto LABEL_14;
    }

    v25 = arcfour_mic_key(a3, a8);
    if (v25)
    {
      goto LABEL_22;
    }

    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    hc_EVP_CIPHER_CTX_init();
    hc_EVP_rc4();
    hc_EVP_CipherInit_ex();
    hc_EVP_Cipher();
    hc_EVP_CIPHER_CTX_cleanup();
    v54 = 0;
    v55 = 0;
    _gss_mg_decode_be_uint32(&v53, &v37);
    *(a2 + 76);
    if (!ct_memcmp())
    {
      v26 = 0;
      LODWORD(v38) = *a8;
      v39 = 16;
      v40 = v56;
      v27 = *(a8 + 16);
      do
      {
        *(v56 + v26) = *(v27 + v26) ^ 0xF0;
        ++v26;
      }

      while (v26 != 16);
      v25 = arcfour_mic_key(a3, &v38);
      v56[0] = 0;
      v56[1] = 0;
      if (v25)
      {
LABEL_22:
        v17 = 851968;
LABEL_25:
        *a1 = v25;
        goto LABEL_15;
      }

      v28 = malloc_type_malloc(v19, 0xDEFCD59uLL);
      *(a5 + 8) = v28;
      if (!v28)
      {
        v17 = 851968;
        v25 = 12;
        goto LABEL_25;
      }

      *a5 = v19;
      if (v23)
      {
        v52 = *(v36 + 3);
        memcpy(v28, v36 + 32, v19);
      }

      else
      {
        v51 = 0;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        hc_EVP_CIPHER_CTX_init();
        hc_EVP_rc4();
        hc_EVP_CipherInit_ex();
        hc_EVP_Cipher();
        v29 = *(a5 + 8);
        hc_EVP_Cipher();
        hc_EVP_CIPHER_CTX_cleanup();
      }

      v54 = 0;
      v55 = 0;
      if ((*(a2 + 73) & 0x10) != 0)
      {
        v31 = 0;
        v32 = *a5;
      }

      else
      {
        v30 = _gssapi_verify_pad(a5, v19, &v35);
        if (v30)
        {
          v17 = v30;
          _gsskrb5_release_buffer(a1, a5);
          v25 = 0;
          goto LABEL_25;
        }

        v31 = v35;
        v32 = *a5 - v35;
        *a5 = v32;
      }

      v33 = arcfour_mic_cksum(a3, a8, 22, &v41, v36, &v52, 8uLL, *(a5 + 8), v31 + v32);
      if (v33)
      {
        v34 = v33;
        _gsskrb5_release_buffer(a1, a5);
        v17 = 851968;
        v25 = v34;
        goto LABEL_25;
      }

      if (ct_memcmp())
      {
        pthread_mutex_lock((a2 + 128));
        v17 = _gssapi_msg_order_check(*(a2 + 24), v37);
        pthread_mutex_unlock((a2 + 128));
        if (v17)
        {
          goto LABEL_15;
        }

        v25 = 0;
        v17 = 0;
        if (a6)
        {
          *a6 = v24;
        }

        goto LABEL_25;
      }

      _gsskrb5_release_buffer(a1, a5);
    }

    v25 = 0;
    v17 = 393216;
    goto LABEL_25;
  }

  v17 = v16;
LABEL_15:
  v20 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t _gssapi_wrap_size_arcfour(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, _DWORD *a7)
{
  v11 = krb5_crypto_init();
  if (v11)
  {
    *a1 = v11;
    return 851968;
  }

  else
  {
    if ((*(a2 + 73) & 0x10) != 0)
    {
      v14 = 0;
      v15 = 32;
      _gssapi_encap_length(32, &v15, &v14, &__gss_krb5_mechanism_oid_desc);
      if (v15 <= a6)
      {
        v13 = a6 - v15;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v14 = 0;
      v15 = a6 + 48;
      _gsskrb5_encap_length(v15, &v15, &v14, &__gss_krb5_mechanism_oid_desc);
      if (v14 - a6 >= a6)
      {
        v13 = 0;
      }

      else
      {
        v13 = (a6 - (v14 - a6)) & 0xFFFFFFF8;
      }
    }

    *a7 = v13;
    krb5_crypto_destroy();
    return 0;
  }
}

uint64_t _gsskrb5_canonicalize_name(_DWORD *a1, const krb5_principal_data *a2, uint64_t a3, void *a4)
{
  v9 = 0;
  v10 = 0;
  *a4 = 0;
  v7 = __ApplePrivate__gsskrb5_init(&v10);
  if (v7)
  {
    *a1 = v7;
    return 851968;
  }

  else
  {
    result = _gsskrb5_canon_name(a1, v10, 1, 0, a2, &v9);
    if (!result)
    {
      *a4 = v9;
    }
  }

  return result;
}

uint64_t _gsskrb5cfx_wrap_length_cfx(uint64_t a1, uint64_t *a2, int a3, unint64_t a4, unint64_t *a5, void *a6, _WORD *a7)
{
  *a5 = 16;
  *a7 = 0;
  v12 = *a2;
  result = krb5_crypto_get_checksum_type();
  if (!result)
  {
    result = krb5_checksumsize();
    if (!result)
    {
      if (a3)
      {
        v14 = *a2;
        if ((*(a2 + 9) & 2) != 0)
        {
          result = krb5_crypto_getblocksize();
          if (result)
          {
            return result;
          }
        }

        else
        {
          result = krb5_crypto_getpadsize();
          if (result)
          {
            return result;
          }
        }

        a4 += 16;
        v16 = *a2;
        v15 = *a5 + krb5_get_wrapped_length();
      }

      else
      {
        v15 = *a6 + a4 + *a5;
      }

      *a5 = v15;
      if (v15 <= a4)
      {
        _gsskrb5cfx_wrap_length_cfx_cold_1();
      }

      return 0;
    }
  }

  return result;
}

uint64_t _gssapi_wrap_size_cfx(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, unsigned int *a7)
{
  *a7 = 0;
  v7 = a6 - 16;
  if (a6 < 0x10)
  {
    return 0;
  }

  if (a4)
  {
    v10 = a6 - 31;
    v11 = a6 - 15 - 1;
    do
    {
      v12 = *a2;
      wrapped_length = krb5_get_wrapped_length();
      --v10;
      v14 = v11-- != 0;
    }

    while (v14 && wrapped_length > v7);
    if ((v11 + 1) >= 0x10)
    {
      result = 0;
      *a7 = v10;
      return result;
    }

    return 0;
  }

  v16 = *a2;
  result = krb5_crypto_get_checksum_type();
  if (!result)
  {
    result = krb5_checksumsize();
    if (!result)
    {
      result = 0;
      *a7 = v7;
    }
  }

  return result;
}

uint64_t _gssapi_wrap_cfx_iov(int *a1, uint64_t *a2, uint64_t a3, int a4, _DWORD *a5, unsigned __int16 *a6, int a7)
{
  buffer = _gss_mg_find_buffer(a6, a7, 2);
  if (!buffer)
  {
    goto LABEL_21;
  }

  v14 = buffer;
  v15 = _gss_mg_find_buffer(a6, a7, 9);
  v16 = v15;
  if (v15)
  {
    *(v15 + 1) = 0;
  }

  v17 = _gss_mg_find_buffer(a6, a7, 7);
  v18 = v17;
  if ((*(a2 + 9) & 2) != 0)
  {
    if (v16 | v17)
    {
      goto LABEL_21;
    }
  }

  else if (!v16)
  {
    goto LABEL_21;
  }

  v78 = 0;
  *a1 = 0;
  if (!a4)
  {
    if ((*(a2 + 9) & 2) == 0)
    {
      v22 = *a2;
      v23 = krb5_crypto_length();
      *a1 = v23;
      if (v23)
      {
        return 851968;
      }

      v24 = 0;
      v25 = 16;
      if (!v18)
      {
        goto LABEL_33;
      }

      goto LABEL_18;
    }

LABEL_21:
    *a1 = 22;
    return 851968;
  }

  if (a7 >= 1)
  {
    v19 = 0;
    v20 = a7;
    v21 = a6 + 4;
    do
    {
      if (*(v21 - 4) == 1)
      {
        v19 += *v21;
      }

      v21 += 3;
      --v20;
    }

    while (v20);
  }

  v29 = *a2;
  v30 = krb5_crypto_length();
  *a1 = v30;
  if (v30)
  {
    return 851968;
  }

  v31 = *a2;
  v32 = krb5_crypto_length();
  *a1 = v32;
  if (v32)
  {
    return 851968;
  }

  v33 = *a2;
  v34 = krb5_crypto_length();
  *a1 = v34;
  if (v34)
  {
    return 851968;
  }

  if ((*(a2 + 9) & 2) != 0)
  {
    v36 = *a2;
    v37 = krb5_crypto_getblocksize();
    *a1 = v37;
    if (v37)
    {
      return 851968;
    }
  }

  v25 = 16;
  v24 = 16;
  if (!v18)
  {
LABEL_33:
    v26 = v24;
    v25 = v24 + 16;
    goto LABEL_34;
  }

LABEL_18:
  if (*(v18 + 2))
  {
    v35 = _gk_allocate_buffer(a1, v18, v24);
    if (v35)
    {
      goto LABEL_38;
    }

    v26 = 0;
    v25 = 16;
  }

  else
  {
    if (*(v18 + 8) < v24)
    {
LABEL_36:
      v38 = -1765328194;
LABEL_60:
      *a1 = v38;
LABEL_81:
      v27 = 851968;
      goto LABEL_82;
    }

    v26 = 0;
    *(v18 + 8) = v24;
  }

LABEL_34:
  if (*(v14 + 2))
  {
    v77 = v26;
    v35 = _gk_allocate_buffer(a1, v14, v25);
    if (!v35)
    {
      goto LABEL_40;
    }

LABEL_38:
    v27 = v35;
LABEL_82:
    __ApplePrivate_gss_release_iov_buffer(&v78, a6, a7);
    return v27;
  }

  if (*(v14 + 8) < v25)
  {
    goto LABEL_36;
  }

  v77 = v26;
  *(v14 + 8) = v25;
LABEL_40:
  v39 = *(v14 + 16);
  *v39 = -16776187;
  v40 = a2[1] & 5;
  if (v40)
  {
    *(v39 + 2) = v40;
  }

  if (a4)
  {
    *(v39 + 2) = v40 | 2;
  }

  v76 = v39;
  *(v39 + 5) = 0;
  v41 = v39 + 5;
  *(v39 + 4) = 0;
  *(v39 + 6) = 0;
  _gss_mg_encode_be_uint32(*(a2 + 4), (v39 + 8));
  v75 = v41;
  _gss_mg_encode_be_uint32(*(a2 + 3), (v41 + 7));
  v42 = *(a2 + 3);
  *(a2 + 3) = v42 + 1;
  if (v42 == -1)
  {
    ++*(a2 + 4);
  }

  v43 = malloc_type_calloc(a7 + 3, 0x18uLL, 0x10800404ACF7207uLL);
  if (!v43)
  {
    v38 = 12;
    goto LABEL_60;
  }

  v44 = v43;
  if (!a4)
  {
    if (a7 < 1)
    {
      v65 = 0;
    }

    else
    {
      v58 = v43 + 2;
      v59 = (a6 + 8);
      v60 = a7;
      do
      {
        v61 = *(v59 - 8);
        if (v61 == 11)
        {
          v62 = 3;
        }

        else
        {
          v62 = 0;
        }

        if (v61 == 1)
        {
          v63 = 2;
        }

        else
        {
          v63 = v62;
        }

        *(v58 - 4) = v63;
        v64 = *v59;
        *(v58 - 1) = *(v59 - 1);
        *v58 = v64;
        v58 += 3;
        v59 += 3;
        --v60;
      }

      while (v60);
      v65 = a7;
    }

    v71 = &v43[3 * v65];
    *v71 = 2;
    v72 = *(v14 + 16);
    *(v71 + 1) = 16;
    *(v71 + 2) = v72;
    *(v71 + 6) = 6;
    if (v18)
    {
      v73 = *(v18 + 16);
    }

    else
    {
      v73 = v72 + 16;
    }

    *(v71 + 4) = 0;
    *(v71 + 5) = v73;
    v74 = *a2;
    checksum_iov = krb5_create_checksum_iov();
    if (!checksum_iov)
    {
      if (v77)
      {
        *(v76 + 6) = bswap32(v77) >> 16;
      }

      *(v76 + 4) = 0;
      v69 = 0;
      v70 = v75;
      goto LABEL_86;
    }

LABEL_80:
    *a1 = checksum_iov;
    free(v44);
    goto LABEL_81;
  }

  v45 = 1;
  *v43 = 1;
  v46 = *(v14 + 16);
  v47 = v46 + *(v14 + 8);
  v43[1] = 0;
  v43[2] = v47;
  if (a7 >= 1)
  {
    v48 = 0;
    v45 = a7 + 1;
    do
    {
      v49 = &a6[v48 / 2];
      v50 = a6[v48 / 2];
      v51 = &v43[v48 / 8];
      if (v50 == 11)
      {
        v52 = 3;
      }

      else
      {
        v52 = 0;
      }

      if (v50 == 1)
      {
        v53 = 2;
      }

      else
      {
        v53 = v52;
      }

      *(v51 + 6) = v53;
      v55 = *(v49 + 1);
      v54 = *(v49 + 2);
      *(v51 + 4) = v55;
      *(v51 + 5) = v54;
      v48 += 24;
    }

    while (24 * (a7 + 1) - 24 != v48);
  }

  v56 = &v43[3 * v45];
  *v56 = 2;
  if (v18)
  {
    v57 = *(v18 + 16);
  }

  else
  {
    v57 = v46 + 16;
  }

  *(v56 + 1) = 16;
  *(v56 + 2) = v57;
  **(v56 + 2) = *v76;
  *(v56 + 6) = 5;
  v66 = *(v56 + 2) + 16;
  *(v56 + 4) = 0;
  *(v56 + 5) = v66;
  v67 = *a2;
  checksum_iov = krb5_encrypt_iov_ivec();
  if (checksum_iov)
  {
    goto LABEL_80;
  }

  v69 = v77;
  if (v77)
  {
    v70 = v75 + 2;
    *(v76 + 6) = BYTE1(v77);
LABEL_86:
    *v70 = v69;
  }

  if (a5)
  {
    *a5 = a4;
  }

  free(v44);
  v27 = 0;
  *a1 = 0;
  return v27;
}

uint64_t _gk_allocate_buffer(_DWORD *a1, uint64_t a2, size_t size)
{
  if ((*(a2 + 2) & 2) != 0)
  {
    if (*(a2 + 8) == size)
    {
      return 0;
    }

    free(*(a2 + 16));
  }

  v7 = malloc_type_malloc(size, 0x3770A649uLL);
  *(a2 + 8) = size;
  *(a2 + 16) = v7;
  if (v7)
  {
    result = 0;
    *a2 |= 0x20000u;
  }

  else
  {
    *a1 = 12;
    return 851968;
  }

  return result;
}

uint64_t _gssapi_unwrap_cfx_iov(_DWORD *a1, uint64_t a2, uint64_t a3, int *a4, _DWORD *a5, unsigned __int16 *a6, int a7)
{
  *a1 = 0;
  buffer = _gss_mg_find_buffer(a6, a7, 2);
  if (!buffer)
  {
    goto LABEL_18;
  }

  v20 = buffer;
  if (*(buffer + 1) <= 0xFuLL)
  {
    _gss_mg_log(5, "cfxunwrap-iov token too short: %lu", v14, v15, v16, v17, v18, v19, *(buffer + 1));
    return 589824;
  }

  v22 = _gss_mg_find_buffer(a6, a7, 9);
  v23 = v22;
  if (v22)
  {
    if (*(v22 + 1))
    {
      goto LABEL_18;
    }
  }

  v24 = _gss_mg_find_buffer(a6, a7, 7);
  if ((*(a2 + 9) & 2) == 0)
  {
    if (v23)
    {
      goto LABEL_9;
    }

LABEL_18:
    *a1 = 22;
    return 851968;
  }

  if (v23 | v24)
  {
    goto LABEL_18;
  }

LABEL_9:
  v74 = 0;
  v73 = 0;
  *a1 = 0;
  v30 = *(v20 + 2);
  if (*v30 == 5 && *(v30 + 1) == 4)
  {
    v70 = v24;
    v71 = *(v30 + 2);
    v21 = verify_flags(a2, v71 & 7, "unwrap-iov", v25, v26, v27, v28, v29);
    if (v21)
    {
      return v21;
    }

    if (*(v30 + 3) == 255)
    {
      if (a4)
      {
        *a4 = (v71 >> 1) & 1;
      }

      v31 = *(v30 + 4);
      v32 = *(v30 + 6);
      _gss_mg_decode_be_uint32((v30 + 8), &v74);
      _gss_mg_decode_be_uint32((v30 + 12), &v74 + 1);
      if (v74)
      {
        *a1 = 34;
        return 8;
      }

      v34 = _gssapi_msg_order_check(*(a2 + 24), HIDWORD(v74));
      if (v34)
      {
        v21 = v34;
LABEL_22:
        *a1 = 0;
        return v21;
      }

      *(a2 + 8);
      v35 = malloc_type_calloc(a7 + 3, 0x18uLL, 0x10800404ACF7207uLL);
      if (!v35)
      {
        *a1 = 12;
        v21 = 851968;
LABEL_81:
        __ApplePrivate_gss_release_iov_buffer(&v73, a6, a7);
        return v21;
      }

      v36 = __rev16(v31);
      v37 = __rev16(v32);
      if ((v71 & 2) == 0)
      {
        if (!v70)
        {
          v72 = v35;
          if (v37 == v36)
          {
            v38 = v36 + 16;
LABEL_38:
            if (*(v20 + 1) == v38)
            {
              if (a7 < 1)
              {
                v49 = 0;
              }

              else
              {
                v42 = v72 + 2;
                v43 = (a6 + 8);
                v44 = a7;
                do
                {
                  v45 = *(v43 - 8);
                  if (v45 == 11)
                  {
                    v46 = 3;
                  }

                  else
                  {
                    v46 = 0;
                  }

                  if (v45 == 1)
                  {
                    v47 = 2;
                  }

                  else
                  {
                    v47 = v46;
                  }

                  *(v42 - 4) = v47;
                  v48 = *v43;
                  *(v42 - 1) = *(v43 - 1);
                  *v42 = v48;
                  v42 += 3;
                  v43 += 3;
                  --v44;
                }

                while (v44);
                v49 = a7;
              }

              v66 = &v72[3 * v49];
              *v66 = 2;
              v67 = *(v20 + 2);
              *(v66 + 1) = 16;
              *(v66 + 2) = v67;
              *(v66 + 6) = 6;
              if (v70)
              {
                v68 = *(v70 + 2);
              }

              else
              {
                v68 = v67 + 16;
              }

              *(v66 + 4) = v36;
              *(v66 + 5) = v68;
              *(v67 + 4) = 0;
              v69 = *a2;
              v65 = krb5_verify_checksum_iov();
              if (v65)
              {
LABEL_77:
                *a1 = v65;
                goto LABEL_78;
              }

              goto LABEL_82;
            }

            goto LABEL_66;
          }

LABEL_49:
          *a1 = 22;
LABEL_78:
          v21 = 851968;
          goto LABEL_79;
        }

        if (*(v70 + 1) == v36)
        {
          v72 = v35;
          if (!v37)
          {
            v38 = 16;
            goto LABEL_38;
          }

          goto LABEL_49;
        }

        v21 = 589824;
LABEL_80:
        free(v35);
        goto LABEL_81;
      }

      v72 = v35;
      v39 = *a2;
      krb5_crypto_length();
      v40 = *a2;
      krb5_crypto_length();
      if (v70)
      {
        if (*(v70 + 1) == 16)
        {
          v41 = *(v20 + 1);
          if (v41 == 16)
          {
            if (v37)
            {
              v21 = unrotate_iov(a1, v37, a6, a7);
              v35 = v72;
              if (v21)
              {
                goto LABEL_80;
              }

              v41 = *(v20 + 1);
            }

LABEL_55:
            v51 = 1;
            *v72 = 1;
            v52 = *(v20 + 2) + v41;
            v72[1] = 0;
            v72[2] = v52;
            if (a7 >= 1)
            {
              v53 = 0;
              v51 = a7 + 1;
              do
              {
                v54 = &a6[v53 / 2];
                v55 = a6[v53 / 2];
                v56 = &v72[v53 / 8];
                if (v55 == 11)
                {
                  v57 = 3;
                }

                else
                {
                  v57 = 0;
                }

                if (v55 == 1)
                {
                  v58 = 2;
                }

                else
                {
                  v58 = v57;
                }

                *(v56 + 6) = v58;
                v60 = *(v54 + 1);
                v59 = *(v54 + 2);
                *(v56 + 4) = v60;
                *(v56 + 5) = v59;
                v53 += 24;
              }

              while (24 * a7 != v53);
            }

            v61 = &v72[3 * v51];
            *v61 = 2;
            if (v70)
            {
              v62 = *(v70 + 2);
            }

            else
            {
              v62 = v52 - v36 - 16;
            }

            *(v61 + 1) = v36 + 16;
            *(v61 + 2) = v62;
            *(v61 + 6) = 5;
            v63 = v62 + v36;
            *(v61 + 4) = 0;
            *(v61 + 5) = v62 + v36 + 16;
            v64 = *a2;
            v65 = krb5_decrypt_iov_ivec();
            if (v65)
            {
              goto LABEL_77;
            }

            *(v63 + 6) = *(v30 + 6);
            *(v63 + 7) = *(v30 + 7);
            if (!ct_memcmp())
            {
LABEL_82:
              if (a5)
              {
                *a5 = 0;
              }

              free(v72);
              v21 = 0;
              goto LABEL_22;
            }

            v21 = 393216;
LABEL_79:
            v35 = v72;
            goto LABEL_80;
          }
        }
      }

      else if (v37 == 16)
      {
        v50 = (*(a2 + 9) & 2) != 0 ? v36 : 0;
        v41 = v50 + 32;
        if (*(v20 + 1) == v41)
        {
          goto LABEL_55;
        }
      }

LABEL_66:
      v21 = 589824;
      goto LABEL_79;
    }
  }

  return 589824;
}

uint64_t verify_flags(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 8);
  if (a2)
  {
    if (v8)
    {
      _gss_mg_log(5, "cfx%s acceptor token set by initiator", a3, a4, a5, a6, a7, a8, a3);
      return 589824;
    }
  }

  else if ((v8 & 1) == 0)
  {
    _gss_mg_log(5, "cfx%s !acceptor token set by acceptor", a3, a4, a5, a6, a7, a8, a3);
    return 589824;
  }

  if ((v8 & 4) != 0)
  {
    if ((a2 & 4) == 0)
    {
      _gss_mg_log(5, "cfx%s no subkey", a3, a4, a5, a6, a7, a8, a3);
      return 589824;
    }
  }

  else if ((a2 & 4) != 0)
  {
    heim_base_once_f();
  }

  return 0;
}

uint64_t unrotate_iov(_DWORD *a1, size_t a2, uint64_t a3, int a4)
{
  v8 = a4;
  if (a4 >= 1)
  {
    v9 = 0;
    v10 = (a3 + 8);
    v11 = a4;
    do
    {
      v12 = *(v10 - 4);
      v13 = v12 > 9;
      v14 = (1 << v12) & 0x282;
      if (!v13 && v14 != 0)
      {
        v9 += *v10;
      }

      v10 += 3;
      --v11;
    }

    while (v11);
    v16 = malloc_type_malloc(v9, 0x7E3C42C6uLL);
    if (v16)
    {
      v17 = a3 + 8;
      v18 = v16;
      v19 = v8;
      __dst = v16;
      do
      {
        v20 = *(v17 - 8);
        v13 = v20 > 9;
        v21 = (1 << v20) & 0x282;
        if (!v13 && v21 != 0)
        {
          memcpy(v18, *(v17 + 8), *v17);
          v18 += *v17;
        }

        v17 += 24;
        --v19;
      }

      while (v19);
      v23 = __dst;
      goto LABEL_20;
    }

LABEL_44:
    *a1 = 12;
    return 851968;
  }

  v24 = malloc_type_malloc(0, 0x7E3C42C6uLL);
  if (!v24)
  {
    goto LABEL_44;
  }

  v23 = v24;
  v9 = 0;
  v18 = v24;
LABEL_20:
  if (v18 - v23 != v9)
  {
    unrotate_iov_cold_1();
  }

  if (a4 >= 1)
  {
    v25 = &v23[a2];
    v26 = (a3 + 8);
    v27 = v8;
    v28 = a2;
    do
    {
      v29 = *(v26 - 4);
      v13 = v29 > 9;
      v30 = (1 << v29) & 0x282;
      if (!v13 && v30 != 0)
      {
        if (*v26 <= v28)
        {
          v28 -= *v26;
        }

        else
        {
          memcpy((v26[1] + v28), v25, *v26 - v28);
          v32 = *v26 - v28;
          v28 = 0;
          v25 += v32;
        }
      }

      v26 += 3;
      --v27;
    }

    while (v27);
    v33 = a3 + 8;
    v34 = v23;
    do
    {
      v35 = *(v33 - 8);
      v13 = v35 > 9;
      v36 = (1 << v35) & 0x282;
      if (!v13 && v36 != 0)
      {
        if (*v33 >= a2)
        {
          v38 = a2;
        }

        else
        {
          v38 = *v33;
        }

        memcpy(v34, *(v33 + 8), v38);
        v39 = a2 >= *v33;
        a2 -= *v33;
        if (!v39)
        {
          break;
        }

        v34 += *v33;
      }

      v33 += 24;
      --v8;
    }

    while (v8);
  }

  free(v23);
  return 0;
}

uint64_t _gssapi_wrap_iov_length_cfx(_DWORD *a1, uint64_t *a2, _krb5_context *a3, int a4, uint64_t a5, _DWORD *a6, unsigned __int16 *a7, int a8)
{
  v37 = a3;
  v14 = __ApplePrivate__gsskrb5_init(&v37);
  if (v14)
  {
    *a1 = v14;
    return 851968;
  }

  *a1 = 0;
  if (a8 < 1)
  {
    goto LABEL_31;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = a8;
  do
  {
    v20 = v17;
    v21 = v16;
    v22 = v15;
    v23 = *a7;
    if (v23 > 6)
    {
      switch(v23)
      {
        case 7u:
          v15 = a7;
          if (v22)
          {
            return 851968;
          }

          break;
        case 9u:
          v16 = a7;
          if (v21)
          {
            return 851968;
          }

          break;
        case 0xBu:
          break;
        default:
          goto LABEL_31;
      }
    }

    else if (*a7)
    {
      if (v23 == 1)
      {
        v18 += *(a7 + 1);
      }

      else
      {
        if (v23 != 2)
        {
          goto LABEL_31;
        }

        v17 = a7;
        if (v20)
        {
          return 851968;
        }
      }
    }

    a7 += 12;
    --v19;
  }

  while (v19);
  if (!v17)
  {
    goto LABEL_31;
  }

  if ((*(a2 + 9) & 2) == 0)
  {
    if (v16)
    {
      goto LABEL_24;
    }

LABEL_31:
    *a1 = 22;
    return 851968;
  }

  if (v16 | v15)
  {
    goto LABEL_31;
  }

LABEL_24:
  if (a4)
  {
    v24 = *a2;
    v25 = krb5_crypto_length();
    *a1 = v25;
    if (v25)
    {
      return 851968;
    }

    v26 = *a2;
    v27 = krb5_crypto_length();
    *a1 = v27;
    if (v27)
    {
      return 851968;
    }

    v28 = *a2;
    v29 = krb5_crypto_length();
    *a1 = v29;
    if (v29)
    {
      return 851968;
    }

    if ((*(a2 + 9) & 2) != 0)
    {
      v35 = *a2;
      v36 = krb5_crypto_getblocksize();
      *a1 = v36;
      if (v36)
      {
        return 851968;
      }
    }

    v34 = 16;
    v33 = 16;
    if (!v15)
    {
LABEL_39:
      v34 = v33 + 16;
      goto LABEL_40;
    }
  }

  else
  {
    v31 = *a2;
    v32 = krb5_crypto_length();
    *a1 = v32;
    if (v32)
    {
      return 851968;
    }

    v33 = 0;
    v34 = 16;
    if (!v15)
    {
      goto LABEL_39;
    }
  }

  *(v15 + 8) = v33;
LABEL_40:
  *(v17 + 1) = v34;
  if (v16)
  {
    *(v16 + 8) = 0;
  }

  result = 0;
  if (a6)
  {
    *a6 = a4;
  }

  return result;
}

uint64_t _gssapi_wrap_cfx(_DWORD *a1, uint64_t a2, _krb5_context *a3, int a4, uint64_t a5, int *a6, size_t *a7)
{
  ivec = 0;
  v50 = 0;
  size = 0;
  memset(__len, 0, sizeof(__len));
  v14 = _gsskrb5cfx_wrap_length_cfx(a3, a2, a4, *a5, &size, &__len[1], __len);
  if (v14)
  {
    *a1 = v14;
    return 851968;
  }

  v42 = a6;
  v15 = *(a2 + 8);
  v16 = *&__len[1];
  v17 = size;
  *a7 = size;
  v18 = malloc_type_malloc(v17, 0x2259FD42uLL);
  v43 = a7;
  a7[1] = v18;
  if (!v18)
  {
    *a1 = 12;
    return 851968;
  }

  v19 = v18;
  *v18 = -16776187;
  v20 = *(a2 + 8) & 5;
  if (v20)
  {
    v18[2] = v20;
  }

  if (a4)
  {
    v18[2] = v20 | 2;
    v21 = __len[0];
    v22 = HIBYTE(__len[0]);
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  v23 = v15 << 22;
  v24 = v16 + 16 * (a4 != 0);
  v18[4] = v22;
  v18[5] = v21;
  *(v18 + 3) = 0;
  _gss_mg_encode_be_uint32(*(a2 + 16), v18 + 2);
  _gss_mg_encode_be_uint32(*(a2 + 12), v19 + 3);
  v25 = *(a2 + 12);
  *(a2 + 12) = v25 + 1;
  if (v25 == -1)
  {
    ++*(a2 + 16);
  }

  v26 = v24 & (v23 >> 31);
  if (*(a2 + 8))
  {
    v27 = 22;
  }

  else
  {
    v27 = 24;
  }

  if (a4)
  {
    v41 = v26;
    memcpy(v19 + 16, *(a5 + 8), *a5);
    v28 = v27;
    v29 = __len[0];
    memset(&v19[*a5 + 16], 255, __len[0]);
    *&v19[*a5 + 16 + v29] = *v19;
    v30 = krb5_encrypt(a3, *a2, v28, (v19 + 16), (v29 + *a5 + 16), &ivec);
    if (v30)
    {
      goto LABEL_19;
    }

    v31 = ivec;
    if (ivec + 16 != v17)
    {
      _gssapi_wrap_cfx_cold_1();
    }

    *(v19 + 3) = bswap32(v41) >> 16;
    v32 = v41 + (v29 & ((*(a2 + 8) << 22) >> 31));
    v30 = rrc_rotate(v50, v31, (v41 + (v29 & ((*(a2 + 8) << 6) >> 15))), 0);
    if (v30)
    {
LABEL_19:
      *a1 = v30;
LABEL_24:
      _gsskrb5_release_buffer(a1, v43);
      return 851968;
    }

    memcpy(v19 + 16, v50, ivec);
    krb5_data_free();
  }

  else
  {
    v44 = 0;
    v45 = 0;
    __src = 0;
    v33 = malloc_type_malloc(*a5 + 16, 0x1000040451B5BE8uLL);
    if (!v33)
    {
      *a1 = 12;
      goto LABEL_24;
    }

    v34 = v33;
    memcpy(v33, *(a5 + 8), *a5);
    *&v34[*a5] = *v19;
    v35 = *a2;
    v36 = *a5;
    checksum = krb5_create_checksum();
    if (checksum)
    {
      *a1 = checksum;
      _gsskrb5_release_buffer(a1, v43);
      free(v34);
      return 851968;
    }

    free(v34);
    v39 = v45;
    if (v45 != *&__len[1])
    {
      _gssapi_wrap_cfx_cold_2();
    }

    v19[4] = BYTE1(v45);
    v19[5] = v39;
    v19[6] = BYTE1(v26);
    v19[7] = v26;
    memcpy(v19 + 16, *(a5 + 8), *a5);
    memcpy(&v19[*a5 + 16], __src, v39);
    v40 = rrc_rotate(v19 + 16, v39 + *a5, v26, 0);
    if (v40)
    {
      *a1 = v40;
      _gsskrb5_release_buffer(a1, v43);
      free_Checksum(&v44);
      return 851968;
    }

    free_Checksum(&v44);
  }

  if (v42)
  {
    *v42 = a4;
  }

  result = 0;
  *a1 = 0;
  return result;
}

uint64_t rrc_rotate(char *__src, unint64_t a2, unsigned int a3, int a4)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = a3 % a2;
    if (v5)
    {
      if (v5 >= 0x101)
      {
        p_dst = malloc_type_malloc(a3 % a2, 0xB0800436uLL);
        if (!p_dst)
        {
          result = 12;
          goto LABEL_12;
        }
      }

      else
      {
        p_dst = &__dst;
      }

      v9 = a2 - v5;
      if (a4)
      {
        memcpy(p_dst, __src, v5);
        memmove(__src, &__src[v5], v9);
        __src += v9;
      }

      else
      {
        memcpy(p_dst, &__src[v9], v5);
        memmove(&__src[v5], __src, v9);
      }

      memcpy(__src, p_dst, v5);
      if (v5 >= 0x101)
      {
        free(p_dst);
      }
    }
  }

  result = 0;
LABEL_12:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _gssapi_unwrap_cfx(krb5_error_code *a1, uint64_t a2, _krb5_context *a3, unint64_t *a4, uint64_t a5, int *a6, _DWORD *a7, uint64_t a8)
{
  v61 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  if (*a4 <= 0xF)
  {
    _gss_mg_log(5, "cfxunwrap token too short: %lu", a3, a4, a5, a6, a7, a8, *a4);
LABEL_9:
    v23 = 589824;
    goto LABEL_10;
  }

  v60 = 0uLL;
  ivec = 0;
  v59 = 0;
  v9 = a4[1];
  v60 = *v9;
  if (v60 != 5 || BYTE1(v60) != 4)
  {
    _gss_mg_log(5, "cfxunwrap not a WRAP token: 0x%02x%02x", a3, a4, a5, a6, a7, a8, v60);
    goto LABEL_9;
  }

  v16 = BYTE2(v60);
  v23 = verify_flags(a2, BYTE2(v60) & 7, "unwrap", a4, a5, a6, a7, a8);
  if (!v23)
  {
    if (BYTE3(v60) != 255)
    {
      _gss_mg_log(5, "cfxunwrap filler bad: 0x%02x", v17, v18, v19, v20, v21, v22, SBYTE3(v60));
      goto LABEL_9;
    }

    if (a6)
    {
      *a6 = (BYTE2(v60) >> 1) & 1;
    }

    v57 = 0;
    v53 = WORD2(v60);
    v26 = WORD3(v60);
    _gss_mg_decode_be_uint32(&v60 + 2, &v57);
    _gss_mg_decode_be_uint32((&v60 | 0xC), &v57 + 1);
    if (v57)
    {
      *a1 = 34;
      v23 = 8;
      goto LABEL_10;
    }

    v27 = _gssapi_msg_order_check(*(a2 + 24), HIDWORD(v57));
    if (v27)
    {
      v23 = v27;
      *a1 = 0;
      _gsskrb5_release_buffer(a1, a5);
      goto LABEL_10;
    }

    v28 = *(a2 + 8);
    if (v28)
    {
      v29 = 24;
    }

    else
    {
      v29 = 22;
    }

    v30 = (v9 + 1);
    v31 = *a4;
    v32 = (a4[1] - v30 + *a4);
    if (v32 > v31)
    {
      goto LABEL_9;
    }

    v33 = __rev16(v53);
    v34 = bswap32(v26) >> 16;
    if ((v16 & 2) != 0)
    {
      v39 = v33;
      v40 = rrc_rotate(v30, v32, (v34 + (v33 & ((v28 << 6) >> 15))), 1);
      *a1 = v40;
      if (v40)
      {
        goto LABEL_26;
      }

      v41 = krb5_decrypt(a3, *a2, v29, v30, v32, &ivec);
      if (v41)
      {
        *a1 = v41;
LABEL_38:
        v23 = 393216;
        goto LABEL_10;
      }

      if (ivec < v39 + 16)
      {
        krb5_data_free();
        _gss_mg_log(5, "cfxunwrap pad and token not fitting: %lu", v42, v43, v44, v45, v46, v47, ivec);
        goto LABEL_9;
      }

      WORD3(v60) = *(v59 + ivec - 10);
      if (ct_memcmp())
      {
        krb5_data_free();
        goto LABEL_38;
      }

      v52 = v59;
      *a5 = ivec - v39 - 16;
      *(a5 + 8) = v52;
    }

    else
    {
      v35 = v33;
      seed = 0;
      v55 = 0;
      v56 = 0;
      v36 = rrc_rotate(v30, v32, v34, 1);
      *a1 = v36;
      if (v36)
      {
LABEL_26:
        v23 = 851968;
        goto LABEL_10;
      }

      v37 = *a2;
      checksum_type = krb5_crypto_get_checksum_type();
      if (checksum_type)
      {
        *a1 = checksum_type;
        goto LABEL_26;
      }

      v55 = v35;
      if (v32 < v35)
      {
        *a1 = 34;
        goto LABEL_38;
      }

      v48 = v32 - v35;
      v56 = &v30[v48];
      *a5 = v48;
      v49 = malloc_type_malloc(v48 + 16, 0x1000040451B5BE8uLL);
      *(a5 + 8) = v49;
      if (!v49)
      {
        *a1 = 12;
        goto LABEL_26;
      }

      memcpy(v49, v30, v48);
      *(*(a5 + 8) + v48) = v60;
      *(*(a5 + 8) + v48 + 4) = 0;
      v51 = krb5_verify_checksum(a3, *a2, v29, *(a5 + 8), v48 + 16, &seed, v50);
      if (v51)
      {
        *a1 = v51;
        _gsskrb5_release_buffer(a1, a5);
        goto LABEL_38;
      }
    }

    if (a7)
    {
      *a7 = 0;
    }

    v23 = 0;
    *a1 = 0;
  }

LABEL_10:
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t _gssapi_mic_cfx(_DWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = malloc_type_malloc(*a5 + 16, 0xB09E47C8uLL);
  if (v10)
  {
    v11 = v10;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    *(&v22 + 1) = 0;
    LOWORD(v22) = 1028;
    BYTE2(v22) = a2[1] & 5;
    *(&v22 + 3) = -1;
    BYTE7(v22) = -1;
    _gss_mg_encode_be_uint32(*(a2 + 4), &v22 + 2);
    _gss_mg_encode_be_uint32(*(a2 + 3), &v22 + 3);
    memcpy(v11, *(a5 + 8), *a5);
    *&v11[*a5] = v22;
    v12 = *(a2 + 3);
    *(a2 + 3) = v12 + 1;
    if (v12 == -1)
    {
      ++*(a2 + 4);
    }

    *(a2 + 2);
    v13 = *a2;
    checksum = krb5_create_checksum();
    if (checksum)
    {
      *a1 = checksum;
    }

    else
    {
      v17 = v20 + 16;
      *a6 = v20 + 16;
      v18 = malloc_type_malloc(v17, 0x405013F4uLL);
      a6[1] = v18;
      if (v18)
      {
        *v18 = v22;
        memcpy((a6[1] + 16), v21, v20);
        free_Checksum(&v19);
        free(v11);
        result = 0;
        *a1 = 0;
        goto LABEL_9;
      }

      *a1 = 12;
      free_Checksum(&v19);
    }

    free(v11);
  }

  else
  {
    *a1 = 12;
  }

  result = 851968;
LABEL_9:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _gssapi_verify_mic_cfx(krb5_error_code *a1, uint64_t a2, _krb5_context *a3, uint64_t a4, void *a5, _DWORD *a6, uint64_t a7, uint64_t a8)
{
  v32 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  if (*a5 <= 0xFuLL)
  {
    _gss_mg_log(5, "cfxverifymic token too short: %lu", a3, a4, a5, a6, a7, a8, *a4);
LABEL_10:
    result = 589824;
    goto LABEL_11;
  }

  seed = 0;
  v28 = 0;
  v29 = 0;
  v10 = a5[1];
  v31 = *v10;
  if (v31 != 4 || BYTE1(v31) != 4)
  {
    v26 = v31;
    v16 = "cfxverifymic not a MIC token: 0x%02x%02x";
    goto LABEL_9;
  }

  result = verify_flags(a2, BYTE2(v31) & 5, "mic", a4, a5, a6, a7, a8);
  if (!result)
  {
    v30 = 0;
    if (ct_memcmp())
    {
      v16 = "cfxmic filler bad";
LABEL_9:
      _gss_mg_log(5, v16, a3, a4, a5, a6, a7, a8, v26);
      goto LABEL_10;
    }

    _gss_mg_decode_be_uint32(&v31 + 2, &v30);
    _gss_mg_decode_be_uint32((&v31 | 0xC), &v30 + 1);
    if (v30)
    {
      *a1 = 34;
      result = 8;
      goto LABEL_11;
    }

    result = _gssapi_msg_order_check(*(a2 + 24), HIDWORD(v30));
    if (result)
    {
      *a1 = 0;
      goto LABEL_11;
    }

    v18 = *a2;
    checksum_type = krb5_crypto_get_checksum_type();
    if (checksum_type)
    {
      *a1 = checksum_type;
LABEL_18:
      result = 851968;
      goto LABEL_11;
    }

    v28 = *a5 - 16;
    v29 = v10 + 1;
    v20 = *(a2 + 8);
    v21 = malloc_type_malloc(*a4 + 16, 0x1000040451B5BE8uLL);
    if (!v21)
    {
      *a1 = 12;
      goto LABEL_18;
    }

    v22 = v21;
    if (v20)
    {
      v23 = 25;
    }

    else
    {
      v23 = 23;
    }

    memcpy(v21, *(a4 + 8), *a4);
    *&v22[*a4] = v31;
    v25 = krb5_verify_checksum(a3, *a2, v23, v22, *a4 + 16, &seed, v24);
    if (v25)
    {
      *a1 = v25;
      free(v22);
      result = 393216;
    }

    else
    {
      free(v22);
      result = 0;
      if (a6)
      {
        *a6 = 0;
      }
    }
  }

LABEL_11:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _gsskrb5_compare_name(_DWORD *a1, const krb5_principal_data *a2, const krb5_principal_data *a3, krb5_BOOLean *a4)
{
  v11 = 0;
  v8 = __ApplePrivate__gsskrb5_init(&v11);
  if (v8)
  {
    result = 851968;
  }

  else
  {
    v10 = krb5_principal_compare(v11, a2, a3);
    result = 0;
    *a4 = v10;
  }

  *a1 = v8;
  return result;
}

uint64_t _gss_DES3_get_mic_compat(krb5_error_code *a1, uint64_t a2, _krb5_context *a3)
{
  result = 0;
  v8 = 0;
  if ((*(a2 + 76) & 8) == 0)
  {
    result = check_compat(a1, a3, *(a2 + 64), "broken_des3_mic", &v8, 1);
    if (!result)
    {
      result = check_compat(a1, a3, *(a2 + 64), "correct_des3_mic", &v8, 0);
      if (!result)
      {
        if (v8)
        {
          v7 = *(a2 + 76) | 4;
        }

        else
        {
          v7 = *(a2 + 76);
        }

        *(a2 + 76) = v7 | 8;
      }
    }
  }

  return result;
}

uint64_t check_compat(krb5_error_code *a1, _krb5_context *a2, uint64_t a3, uint64_t a4, _DWORD *a5, int a6)
{
  result = krb5_config_get_strings();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v15 = 0;
  v12 = *result;
  if (!*result)
  {
LABEL_7:
    krb5_config_free_strings();
    return 0;
  }

  v13 = 8;
  while (1)
  {
    v14 = krb5_parse_name(a2, v12, &v15);
    if (v14)
    {
      break;
    }

    if (krb5_principal_match())
    {
      *a5 = a6;
      break;
    }

    krb5_free_principal(a2, v15);
    v15 = 0;
    v12 = *(v11 + v13);
    v13 += 8;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  if (v15)
  {
    krb5_free_principal(a2, v15);
  }

  krb5_config_free_strings();
  if (!v14)
  {
    return 0;
  }

  if (a1)
  {
    *a1 = v14;
  }

  return 851968;
}

uint64_t _gsskrb5_lifetime_left(_DWORD *a1, krb5_context a2, uint64_t a3, int *a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    result = 0;
    v6 = -1;
  }

  else
  {
    *v9 = 0;
    result = krb5_timeofday(a2, v9);
    if (result)
    {
      *a1 = result;
      return 851968;
    }

    if (a3 >= *v9)
    {
      v6 = a3 - v9[0];
    }

    else
    {
      v6 = 0;
    }
  }

  *a4 = v6;
  return result;
}

uint64_t _gsskrb5_context_time(_DWORD *a1, uint64_t a2, int *a3)
{
  v9 = 0;
  v6 = __ApplePrivate__gsskrb5_init(&v9);
  if (v6)
  {
    *a1 = v6;
    return 851968;
  }

  else
  {
    pthread_mutex_lock((a2 + 128));
    v8 = *(a2 + 120);
    pthread_mutex_unlock((a2 + 128));
    result = _gsskrb5_lifetime_left(a1, v9, v8, a3);
    if (!result)
    {
      *a1 = 0;
      if (*a3)
      {
        return 0;
      }

      else
      {
        return 786432;
      }
    }
  }

  return result;
}

uint64_t _gsskrb5_krb5_import_cred(krb5_error_code *a1, _krb5_ccache *a2, const krb5_principal_data *a3, uint64_t a4, void *a5)
{
  context = 0;
  *a5 = 0;
  v10 = __ApplePrivate__gsskrb5_init(&context);
  if (!v10)
  {
    v13 = malloc_type_calloc(1uLL, 0x88uLL, 0x1030040BE4FC7E4uLL);
    if (v13)
    {
      v14 = v13;
      pthread_mutex_init((v13 + 48), 0);
      *(v14 + 8) = 0;
      if (!a2)
      {
        goto LABEL_17;
      }

      *(v14 + 8) = 1;
      principal = krb5_cc_get_principal(context, a2, v14);
      if (principal)
      {
        v16 = principal;
        free(v14);
        *a1 = v16;
        return 851968;
      }

      if (!a3 || krb5_principal_compare(context, *v14, a3))
      {
        v11 = __gsskrb5_ccache_lifetime(a1, context, a2, *v14, v14 + 3);
        if (v11)
        {
          krb5_free_principal(context, *v14);
          free(v14);
          return v11;
        }

        full_name = krb5_cc_get_full_name();
        if (full_name)
        {
          goto LABEL_24;
        }

        v19 = krb5_cc_resolve(context, 0, v14 + 5);
        free(0);
        if (v19)
        {
          goto LABEL_25;
        }

LABEL_17:
        if (!a4)
        {
LABEL_22:
          v11 = 0;
          *a1 = 0;
          *a5 = v14;
          return v11;
        }

        *(v14 + 8) |= 2u;
        if (!a3 || *v14 || (full_name = krb5_copy_principal(context, a3, v14)) == 0)
        {
          full_name = krb5_kt_get_full_name();
          if (!full_name)
          {
            v19 = krb5_kt_resolve(context, 0, v14 + 2);
            free(0);
            if (!v19)
            {
              goto LABEL_22;
            }

LABEL_25:
            v20 = *(v14 + 5);
            if (v20)
            {
              krb5_cc_close(context, v20);
            }

            v21 = *(v14 + 2);
            if (v21)
            {
              krb5_kt_close(context, v21);
            }

            if (*v14)
            {
              krb5_free_principal(context, *v14);
            }

            pthread_mutex_destroy((v14 + 48));
            free(v14);
            *a1 = v19;
            return 851968;
          }
        }

LABEL_24:
        v19 = full_name;
        goto LABEL_25;
      }

      krb5_free_principal(context, *v14);
      free(v14);
      _gsskrb5_clear_status();
      v17 = 22;
    }

    else
    {
      _gsskrb5_clear_status();
      v17 = 12;
    }

    *a1 = v17;
    return 851968;
  }

  *a1 = v10;
  return 851968;
}

uint64_t _gsskrb5_get_mech(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return -1;
  }

  if (*a1 == 96 && !der_get_length())
  {
    return -1;
  }

  return -1;
}

uint64_t _gssapi_verify_mech_header(_BYTE **a1, unint64_t a2, uint64_t a3)
{
  mech = _gsskrb5_get_mech(*a1, a2);
  if ((mech & 0x8000000000000000) != 0)
  {
    return 589824;
  }

  v7 = mech;
  if (a2 < mech || mech != *a3)
  {
    return 0x10000;
  }

  if (-*a1 > a2 - mech)
  {
    return 0x10000;
  }

  result = memcmp(0, *(a3 + 8), mech);
  if (result)
  {
    return 0x10000;
  }

  *a1 = v7;
  return result;
}

uint64_t _gsskrb5_verify_header(_BYTE **a1, unint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  v7 = *a1;
  result = _gssapi_verify_mech_header(a1, a2, a4);
  if (!result)
  {
    v9 = *a1;
    if ((&v7[a2] - *a1) >= 2 && *v9 == *a3)
    {
      result = 0;
      *a1 = v9 + 2;
    }

    else
    {
      return 589824;
    }
  }

  return result;
}

uint64_t _gssapi_decapsulate(_DWORD *a1, unint64_t *a2, _WORD *a3, void *a4, uint64_t a5)
{
  v9 = *a2;
  v14 = a2[1];
  result = _gssapi_verify_mech_header(&v14, v9, a5);
  if (result)
  {
    *a1 = 0;
  }

  else
  {
    v12 = a2[1] - v14 + *a2;
    if (v12 > 1)
    {
      result = 0;
      v13 = v14 + 2;
      *a3 = *v14;
      *a4 = v12 - 2;
      a4[1] = v13;
    }

    else
    {
      *a1 = 0;
      return 589824;
    }
  }

  return result;
}

uint64_t _gsskrb5_decapsulate(_DWORD *a1, unint64_t *a2, void *a3, unsigned __int16 *a4, uint64_t a5)
{
  v8 = *a2;
  v12 = a2[1];
  result = _gsskrb5_verify_header(&v12, v8, a4, a5);
  if (result)
  {
    *a1 = 0;
  }

  else
  {
    v11 = v12;
    *a3 = *a2 - v12 + a2[1];
    a3[1] = v11;
  }

  return result;
}

uint64_t _gssapi_verify_pad(void *a1, unint64_t a2, void *a3)
{
  v3 = a1[1] + *a1;
  v6 = *(v3 - 1);
  v5 = (v3 - 1);
  v4 = v6;
  if (v6 > a2)
  {
    return 0x10000;
  }

  if (v4)
  {
    v8 = v4;
    while (1)
    {
      v9 = *v5--;
      if (v9 != v4)
      {
        return 393216;
      }

      if (!--v8)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    result = 0;
    *a3 = v4;
  }

  return result;
}

uint64_t _gsskrb5_delete_sec_context(_DWORD *a1, void **a2, void *a3)
{
  context = 0;
  v6 = __ApplePrivate__gsskrb5_init(&context);
  if (v6)
  {
    *a1 = v6;
    return 851968;
  }

  else
  {
    *a1 = 0;
    if (a3)
    {
      *a3 = 0;
      a3[1] = 0;
    }

    v8 = *a2;
    if (*a2)
    {
      *a2 = 0;
      pthread_mutex_lock(v8 + 2);
      v9 = *(v8 + 13);
      if (v9)
      {
        v10 = *(v8 + 19);
        if ((v10 & 0x10) != 0)
        {
          krb5_cc_close(context, v9);
        }

        else if ((v10 & 0x20) != 0)
        {
          krb5_cc_destroy(context, v9);
        }
      }

      krb5_auth_con_free(context, *(v8 + 5));
      krb5_auth_con_free(context, *(v8 + 6));
      v11 = *(v8 + 12);
      if (v11)
      {
        krb5_free_creds(context, v11);
      }

      v12 = *(v8 + 7);
      if (v12)
      {
        krb5_free_principal(context, v12);
      }

      v13 = *(v8 + 8);
      if (v13)
      {
        krb5_free_principal(context, v13);
      }

      v14 = *(v8 + 14);
      if (v14)
      {
        krb5_free_ticket(context, v14);
      }

      if (*(v8 + 3))
      {
        _gssapi_msg_order_destroy(v8 + 3);
      }

      v15 = *(v8 + 24);
      if (v15)
      {
        krb5_free_keyblock(context, v15);
      }

      krb5_data_free();
      if (*v8)
      {
        krb5_crypto_destroy();
      }

      if (*(v8 + 31))
      {
        krb5_tkt_creds_free();
      }

      if (*(v8 + 27))
      {
        heim_release();
      }

      v16 = *(v8 + 29);
      if (v16)
      {
        krb5_get_init_creds_opt_free(context, v16);
      }

      if (*(v8 + 30))
      {
        krb5_init_creds_free();
      }

      v17 = *(v8 + 33);
      if (v17)
      {
        v18 = strlen(*(v8 + 33));
        bzero(v17, v18);
        free(*(v8 + 33));
      }

      v19 = *(v8 + 32);
      if (v19)
      {
        krb5_free_data(context, v19);
      }

      v20 = *(v8 + 34);
      if (v20)
      {
        free(v20);
      }

      if (*(v8 + 28))
      {
        krb5_storage_free();
      }

      if (*(v8 + 35))
      {
        krb5_data_free();
      }

      if (*(v8 + 37))
      {
        krb5_data_free();
      }

      pthread_mutex_unlock(v8 + 2);
      pthread_mutex_destroy(v8 + 2);
      *v8 = 0u;
      *(v8 + 1) = 0u;
      *(v8 + 2) = 0u;
      *(v8 + 3) = 0u;
      *(v8 + 4) = 0u;
      *(v8 + 5) = 0u;
      *(v8 + 6) = 0u;
      *(v8 + 7) = 0u;
      *(v8 + 8) = 0u;
      *(v8 + 9) = 0u;
      *(v8 + 10) = 0u;
      *(v8 + 11) = 0u;
      *(v8 + 12) = 0u;
      *(v8 + 13) = 0u;
      *(v8 + 14) = 0u;
      *(v8 + 15) = 0u;
      *(v8 + 16) = 0u;
      *(v8 + 17) = 0u;
      *(v8 + 18) = 0u;
      *(v8 + 38) = 0;
      free(v8);
    }

    return 0;
  }
}

uint64_t _gsskrb5_display_name(_DWORD *a1, const krb5_principal_data *a2, size_t *a3, gss_OID_desc **a4)
{
  __s = 0;
  v13 = 0;
  v8 = __ApplePrivate__gsskrb5_init(&v13);
  if (v8 || (v8 = krb5_unparse_name_flags(v13, a2, 4, &__s)) != 0)
  {
    v9 = 851968;
  }

  else
  {
    v11 = __s;
    *a3 = strlen(__s);
    a3[1] = v11;
    v8 = 0;
    v9 = 0;
    if (a4)
    {
      *a4 = &__gss_krb5_nt_principal_name_oid_desc;
    }
  }

  *a1 = v8;
  return v9;
}

void _gsskrb5_clear_status()
{
  v0 = 0;
  if (!__ApplePrivate__gsskrb5_init(&v0))
  {
    krb5_clear_error_message(v0);
  }
}

void _gsskrb5_set_status(krb5_error_code a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = 0;
  v13 = 0;
  v11 = 0;
  if (!__ApplePrivate__gsskrb5_init(&v13))
  {
    v12 = &a9;
    if ((vasprintf(&v11, a2, &a9) & 0x80000000) == 0)
    {
      if (v11)
      {
        krb5_set_error_message(v13, a1, "%s", v11);
        free(v11);
      }
    }
  }
}

uint64_t _gsskrb5_display_status(_DWORD *a1, unsigned int a2, int a3, const gss_OID_desc *a4, _DWORD *a5, size_t *a6)
{
  __s = 0;
  v24 = 0;
  v12 = __ApplePrivate__gsskrb5_init(&v24);
  if (v12)
  {
    *a1 = v12;
    return 851968;
  }

  *a6 = 0;
  a6[1] = 0;
  if (!gss_oid_equal(a4, 0) && !gss_oid_equal(a4, &__gss_krb5_mechanism_oid_desc))
  {
    *a1 = 0;
    return 1;
  }

  if (a3 == 2)
  {
    error_message = krb5_get_error_message(v24, a2);
    if (error_message)
    {
      v15 = error_message;
      __s = strdup(error_message);
      krb5_free_error_message(v24, v15);
      goto LABEL_29;
    }

    v16 = asprintf(&__s, "unknown mech error-code %u");
  }

  else
  {
    if (a3 != 1)
    {
      *a1 = 22;
      return 327680;
    }

    if (a2)
    {
      if (a2 <= 5u)
      {
        v17 = supplementary_error_msgs[a2];
      }

      v16 = asprintf(&__s, "%s");
    }

    else
    {
      if (HIBYTE(a2) && !(a2 >> 26))
      {
        v18 = calling_error_msgs[HIBYTE(a2)];
      }

      if ((a2 & 0xFF0000) != 0)
      {
        v19 = (a2 & 0xFF0000) >> 16;
        if (v19 <= 0x12)
        {
          v20 = routine_error_msgs[v19];
        }
      }

      v16 = asprintf(&__s, "%s %s");
    }
  }

  if (v16 < 0)
  {
LABEL_31:
    *a1 = 12;
    return 851968;
  }

LABEL_29:
  v21 = __s;
  if (!__s)
  {
    goto LABEL_31;
  }

  *a5 = 0;
  *a1 = 0;
  v22 = strlen(v21);
  result = 0;
  *a6 = v22;
  a6[1] = v21;
  return result;
}

uint64_t _gsskrb5_duplicate_name(_DWORD *a1, const krb5_principal_data *a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  v6 = __ApplePrivate__gsskrb5_init(&v10);
  if (v6 || (v6 = krb5_copy_principal(v10, a2, &v9)) != 0)
  {
    v7 = 851968;
  }

  else
  {
    v7 = 0;
    *a3 = v9;
  }

  *a1 = v6;
  return v7;
}

uint64_t _gssapi_encap_length(uint64_t a1, void *a2, void *a3, _DWORD *a4)
{
  *a2 = (*a4 + 2) + a1;
  result = der_length_len();
  *a3 = result + *a2 + 1;
  return result;
}

uint64_t _gsskrb5_encap_length(uint64_t a1, void *a2, void *a3, _DWORD *a4)
{
  *a2 = a1 + (*a4 + 2) + 2;
  result = der_length_len();
  *a3 = result + *a2 + 1;
  return result;
}

char *_gsskrb5_make_header(_BYTE *a1, uint64_t a2, _WORD *a3, const void **a4)
{
  mech_header = _gssapi_make_mech_header(a1, a2, a4);
  *mech_header = *a3;
  return mech_header + 2;
}

char *_gssapi_make_mech_header(_BYTE *a1, uint64_t a2, const void **a3)
{
  *a1 = 96;
  v5 = der_length_len();
  v6 = &a1[v5];
  if (der_put_length())
  {
    v7 = 0;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (!v7)
  {
    abort();
  }

  v8 = v6 + 1;
  v6[1] = 6;
  v9 = v6 + 3;
  v8[1] = *a3;
  memcpy(v9, a3[1], *a3);
  return &v9[*a3];
}

uint64_t _gsskrb5_encapsulate(_DWORD *a1, uint64_t a2, size_t *a3, _WORD *a4, const void **a5)
{
  v10 = *a2 + (*a5 + 2) + 2;
  v11 = der_length_len() + v10 + 1;
  *a3 = v11;
  v12 = malloc_type_malloc(v11, 0xFBD7476FuLL);
  a3[1] = v12;
  if (v12)
  {
    mech_header = _gssapi_make_mech_header(v12, v10, a5);
    *mech_header = *a4;
    memcpy(mech_header + 2, *(a2 + 8), *a2);
    return 0;
  }

  else
  {
    *a1 = 12;
    return 851968;
  }
}

uint64_t export_name_common(int *a1, const void **a2, const krb5_principal_data *a3, size_t *a4)
{
  __s = 0;
  v13 = 0;
  v8 = __ApplePrivate__gsskrb5_init(&v13);
  if (v8 || (v8 = krb5_unparse_name(v13, a3, &__s)) != 0)
  {
    *a1 = v8;
    return 851968;
  }

  else
  {
    v11 = strlen(__s);
    v9 = gss_mg_export_name(a1, a2, __s, v11, a4);
    krb5_xfree();
  }

  return v9;
}

uint64_t _gsskrb5_export_sec_context(int *a1, void **a2, size_t *a3)
{
  v50 = 0;
  v6 = *a2;
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  v7 = __ApplePrivate__gsskrb5_init(&v50);
  if (v7)
  {
    *a1 = v7;
    return 851968;
  }

  pthread_mutex_lock(v6 + 2);
  if ((*(v6 + 73) & 1) == 0)
  {
    pthread_mutex_unlock(v6 + 2);
    *a1 = 0;
    return 0x100000;
  }

  v9 = krb5_storage_emem();
  if (!v9)
  {
    pthread_mutex_unlock(v6 + 2);
    *a1 = 12;
    return 851968;
  }

  v10 = v9;
  v11 = *(v6 + 5);
  *(v11 + 1);
  *(v11 + 2);
  *(v11 + 4);
  *(v11 + 5);
  *(v11 + 6);
  v12 = krb5_store_int32();
  if (v12)
  {
    goto LABEL_9;
  }

  v13 = *v11;
  v12 = krb5_store_int32();
  if (v12)
  {
    goto LABEL_9;
  }

  v15 = *(v11 + 1);
  if (v15)
  {
    v40 = *(v15 + 2);
    v35 = *v15;
    v12 = krb5_store_address();
    if (v12)
    {
      goto LABEL_9;
    }
  }

  v16 = *(v11 + 2);
  if (v16)
  {
    v41 = *(v16 + 2);
    v36 = *v16;
    v12 = krb5_store_address();
    if (v12)
    {
      goto LABEL_9;
    }
  }

  v17 = *(v11 + 12);
  v12 = krb5_store_int16();
  if (v12)
  {
    goto LABEL_9;
  }

  v18 = *(v11 + 13);
  v12 = krb5_store_int16();
  if (v12)
  {
    goto LABEL_9;
  }

  v19 = *(v11 + 4);
  if (v19)
  {
    v42 = *(v19 + 2);
    v37 = *v19;
    v12 = krb5_store_keyblock();
    if (v12)
    {
      goto LABEL_9;
    }
  }

  v20 = *(v11 + 5);
  if (v20)
  {
    v43 = *(v20 + 2);
    v38 = *v20;
    v12 = krb5_store_keyblock();
    if (v12)
    {
      goto LABEL_9;
    }
  }

  v21 = *(v11 + 6);
  if (v21)
  {
    v44 = *(v21 + 2);
    v39 = *v21;
    v12 = krb5_store_keyblock();
    if (v12)
    {
      goto LABEL_9;
    }
  }

  v22 = v11[14];
  v12 = krb5_store_int32();
  if (v12)
  {
    goto LABEL_9;
  }

  v23 = v11[15];
  v12 = krb5_store_int32();
  if (v12)
  {
    goto LABEL_9;
  }

  v24 = v11[22];
  v12 = krb5_store_int32();
  if (v12)
  {
    goto LABEL_9;
  }

  v25 = v11[23];
  v12 = krb5_store_int32();
  if (v12)
  {
    goto LABEL_9;
  }

  v26 = _gsskrb5_export_name(a1, *(v6 + 7), &v46);
  if (v26)
  {
LABEL_31:
    v8 = v26;
    goto LABEL_11;
  }

  v27 = krb5_store_data();
  _gsskrb5_release_buffer(&v45, &v46);
  if (v27)
  {
    v12 = v27;
LABEL_9:
    v8 = 0;
LABEL_10:
    *a1 = v12;
LABEL_11:
    pthread_mutex_unlock(v6 + 2);
    krb5_storage_free();
    return v8;
  }

  v26 = _gsskrb5_export_name(a1, *(v6 + 8), &v46);
  if (v26)
  {
    goto LABEL_31;
  }

  v48 = v46;
  v49 = v47;
  v28 = krb5_store_data();
  _gsskrb5_release_buffer(&v45, &v46);
  if (v28)
  {
    v12 = v28;
LABEL_41:
    v8 = 851968;
    goto LABEL_10;
  }

  v29 = v6[18];
  v12 = krb5_store_int32();
  if (v12)
  {
    goto LABEL_41;
  }

  v30 = v6[19];
  v12 = krb5_store_int32();
  if (v12)
  {
    goto LABEL_41;
  }

  v31 = v6[30];
  v12 = krb5_store_int32();
  if (v12)
  {
    goto LABEL_41;
  }

  v12 = _gssapi_msg_order_export(v10, *(v6 + 3));
  if (v12)
  {
    goto LABEL_41;
  }

  v32 = krb5_storage_to_data();
  krb5_storage_free();
  if (v32)
  {
    pthread_mutex_unlock(v6 + 2);
    *a1 = v32;
    return 851968;
  }

  v33 = v49;
  *a3 = v48;
  a3[1] = v33;
  pthread_mutex_unlock(v6 + 2);
  v34 = _gsskrb5_delete_sec_context(a1, a2, 0);
  if (v34)
  {
    _gsskrb5_release_buffer(0, a3);
  }

  *a1 = 0;
  return v34;
}

uint64_t _gsskrb5_get_mic(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31 = 0;
  v10 = __ApplePrivate__gsskrb5_init(&v31);
  if (!v10)
  {
    if ((*(a2 + 76) & 0x40) != 0)
    {
      mic_arcfour = _gssapi_mic_cfx(a1, a2, v31, a3, a4, a5);
      goto LABEL_32;
    }

    pthread_mutex_lock((a2 + 128));
    token_key = _gsskrb5i_get_token_key(a2, v31, &v30);
    pthread_mutex_unlock((a2 + 128));
    if (token_key)
    {
      *a1 = token_key;
      goto LABEL_3;
    }

    magic = v30->magic;
    if ((v30->magic - 23) < 2)
    {
      mic_arcfour = _gssapi_get_mic_arcfour(a1, a2, v31, a3, a4, a5, v30);
      goto LABEL_31;
    }

    if (magic != 16 && magic != 5)
    {
      mic_arcfour = 851968;
LABEL_31:
      krb5_free_keyblock(v31, v30);
      goto LABEL_32;
    }

    v15 = v31;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v37 = 0;
    size = 0;
    v36 = 0;
    v33 = 0;
    v34 = 0;
    v32 = 0;
    _gsskrb5_encap_length(36, &v36, &size, &__gss_krb5_mechanism_oid_desc);
    v16 = size;
    *a5 = size;
    v17 = malloc_type_malloc(v16, 0x9335B53AuLL);
    *(a5 + 8) = v17;
    if (v17)
    {
      header = _gsskrb5_make_header(v17, v36, "\x01\x01", &__gss_krb5_mechanism_oid_desc);
      *header = 4;
      *(header + 2) = -1;
      v19 = malloc_type_malloc(*a4 + 8, 0xE7E8F177uLL);
      if (v19)
      {
        v20 = v19;
        *v19 = *(header - 2);
        memcpy(v19 + 1, *(a4 + 8), *a4);
        v21 = krb5_crypto_init();
        if (v21)
        {
          checksum = v21;
          free(*(a5 + 8));
          *a5 = 0;
          *(a5 + 8) = 0;
          free(v20);
        }

        else
        {
          v23 = *a4;
          checksum = krb5_create_checksum();
          free(v20);
          krb5_crypto_destroy();
          if (!checksum)
          {
            memcpy(header + 14, v40, v39);
            pthread_mutex_lock((a2 + 128));
            krb5_auth_con_getlocalseqnumber(v15, *(a2 + 40), &v37);
            v24 = 16843009 * ((*(a2 + 76) & 1) - 1);
            v42 = v37;
            v43 = v24;
            v25 = krb5_crypto_init();
            if (v25)
            {
              checksum = v25;
            }

            else
            {
              if ((*(a2 + 76) & 4) != 0)
              {
                v26 = 0;
              }

              else
              {
                v26 = *(header + 14);
              }

              v41 = v26;
              checksum = krb5_encrypt_ivec();
              krb5_crypto_destroy();
              if (!checksum)
              {
                if (v32 != 8)
                {
                  _gsskrb5_get_mic_cold_1();
                }

                *(header + 6) = *v33;
                krb5_data_free();
                v29 = *(a2 + 40);
                ++v37;
                krb5_auth_con_setlocalseqnumber();
                pthread_mutex_unlock((a2 + 128));
                free_Checksum(&v38);
                checksum = 0;
                mic_arcfour = 0;
                goto LABEL_30;
              }
            }
          }

          free(*(a5 + 8));
          *a5 = 0;
          *(a5 + 8) = 0;
        }

        mic_arcfour = 851968;
LABEL_30:
        *a1 = checksum;
        goto LABEL_31;
      }

      free(*(a5 + 8));
      *(a5 + 8) = 0;
    }

    *a5 = 0;
    mic_arcfour = 851968;
    checksum = 12;
    goto LABEL_30;
  }

  *a1 = v10;
LABEL_3:
  mic_arcfour = 851968;
LABEL_32:
  v27 = *MEMORY[0x277D85DE8];
  return mic_arcfour;
}

uint64_t _gsskrb5_canon_name(_DWORD *a1, _krb5_context *a2, int a3, uint64_t a4, const krb5_principal_data *a5, krb5_principal *a6)
{
  *a1 = 0;
  if (krb5_principal_get_type() != -1202)
  {
    result = krb5_copy_principal(a2, a5, a6);
    goto LABEL_13;
  }

  if (a3)
  {
    magic = a5->realm.magic;
    if (!magic)
    {
      return 0x20000;
    }

    if (magic == 1)
    {
      v13 = 0;
      data = a5->realm.data;
    }

    else
    {
      data = a5->realm.data;
      v13 = data[1];
    }

    result = krb5_sname_to_principal(a2, v13, *data, 3, a6);
    goto LABEL_13;
  }

  LODWORD(result) = krb5_copy_principal(a2, a5, a6);
  if (!result)
  {
    v16 = *a6;
    krb5_principal_set_type();
    if (!a4)
    {
      return 0;
    }

    v17 = *a6;
    v18 = *(a4 + 24);
    result = krb5_principal_set_realm();
LABEL_13:
    if (!result)
    {
      return result;
    }
  }

  *a1 = result;
  return 851968;
}

uint64_t import_hostbased_name(_DWORD *a1, gss_const_OID a, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = 0;
  gss_oid_equal(a, &__gss_pku2u_mechanism_oid_desc);
  v8 = __ApplePrivate__gsskrb5_init(&v16);
  if (v8)
  {
    *a1 = v8;
    return 851968;
  }

  v10 = malloc_type_malloc(*a3 + 1, 0x9ACF89B2uLL);
  if (!v10)
  {
    *a1 = 12;
    return 851968;
  }

  v11 = v10;
  memcpy(v10, *(a3 + 8), *a3);
  v11[*a3] = 0;
  v12 = strchr(v11, 64);
  if (v12)
  {
    v13 = v12;
    if (v12[1])
    {
      *v12 = 0;
      v14 = strlen(v12 + 1);
      if (v14)
      {
        if (v13[v14] == 46)
        {
          v13[v14] = 0;
        }
      }
    }
  }

  principal = krb5_make_principal();
  free(v11);
  *a1 = principal;
  if ((principal + 1765328251) < 2)
  {
    return 0x20000;
  }

  if (principal)
  {
    return 851968;
  }

  krb5_principal_set_type();
  result = 0;
  *a5 = 0;
  return result;
}

uint64_t import_krb5_principal(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = 0;
  v10 = 0;
  LODWORD(result) = __ApplePrivate__gsskrb5_init(&v10);
  if (result || (result = krb5_copy_principal(v10, **(a3 + 8), &v9), result))
  {
    *a1 = result;
    return 851968;
  }

  else
  {
    *a5 = v9;
  }

  return result;
}

uint64_t import_krb5_name(krb5_error_code *a1, const gss_OID_desc *a2, uint64_t a3, const gss_OID_desc *a4, krb5_principal *a5)
{
  v21 = 0;
  v22 = 0;
  v10 = __ApplePrivate__gsskrb5_init(&v22);
  if (v10)
  {
    *a1 = v10;
    return 851968;
  }

  v11 = malloc_type_malloc(*a3 + 1, 0xB3F6961FuLL);
  if (!v11)
  {
    goto LABEL_21;
  }

  v12 = v11;
  memcpy(v11, *(a3 + 8), *a3);
  v12[*a3] = 0;
  if (*v12 == 64)
  {
    v13 = malloc_type_calloc(1uLL, 0x20uLL, 0x10900408A8AD7E9uLL);
    v21 = v13;
    if (v13)
    {
      v14 = v13;
      v15 = strdup(v12 + 1);
      v14->data = v15;
      if (!v15)
      {
        free(v12);
        free(v14);
        return 851968;
      }

      goto LABEL_12;
    }

    free(v12);
LABEL_21:
    *a1 = 12;
    return 851968;
  }

  v16 = krb5_parse_name(v22, v12, &v21);
  if (v16)
  {
    v17 = v16;
    free(v12);
    *a1 = v17;
    if ((v17 + 1765328251) >= 2)
    {
      return 851968;
    }

    else
    {
      return 0x20000;
    }
  }

LABEL_12:
  if (a2 && gss_oid_equal(a2, &__gss_pku2u_mechanism_oid_desc) && !strchr(v12, 64))
  {
    krb5_principal_set_realm();
  }

  free(v12);
  v19 = v21;
  if (v21->realm.magic == 2)
  {
    v20 = gss_oid_equal(a4, &__gss_krb5_nt_principal_name_referral_oid_desc);
    v19 = v21;
    if (v20)
    {
      krb5_principal_set_type();
      v19 = v21;
    }
  }

  result = 0;
  *a5 = v19;
  return result;
}

uint64_t import_uuid_name(_DWORD *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0;
  principal = __ApplePrivate__gsskrb5_init(&v15);
  if (principal)
  {
    goto LABEL_2;
  }

  if (*a3 < 0x24uLL || (v10 = a3[1], v11 = *(v10 + 32), v12 = *(v10 + 16), *__s = *v10, v17 = v12, v18 = v11, v19 = 0, strspn(__s, "0123456789abcdefABCDEF-") != 36))
  {
    principal = 0;
    v9 = 0x20000;
    goto LABEL_8;
  }

  principal = krb5_make_principal();
  if (principal)
  {
LABEL_2:
    v9 = 851968;
  }

  else
  {
    krb5_principal_set_type();
    principal = 0;
    v9 = 0;
    *a5 = 0;
  }

LABEL_8:
  *a1 = principal;
  v13 = *MEMORY[0x277D85DE8];
  return v9;
}