uint64_t _gss_ntlm_cred_unhold(_DWORD *a1, uint64_t a2)
{
  if ((*(a2 + 16) & 1) == 0)
  {
    return 851968;
  }

  v4 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x277CBECE8], *(a2 + 36));
  if (v4)
  {
    v5 = v4;
    *a1 = 0;
    v6 = HeimCredCopyFromUUID();
    if (v6)
    {
      v7 = v6;
      HeimCredReleaseTransient();
      CFRelease(v7);
    }

    CFRelease(v5);
    return 0;
  }

  else
  {
    *a1 = -1765328191;
    return 851968;
  }
}

uint64_t _gss_ntlm_cred_label_get(_DWORD *a1, uint64_t a2, const char *a3, CFIndex *a4)
{
  keys[4] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CBECE8];
  v8 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x277CBECE8], *(a2 + 36));
  if (v8)
  {
    v9 = v8;
    *a1 = 0;
    v10 = CFStringCreateWithCString(v7, a3, 0x8000100u);
    if (v10)
    {
      v11 = *MEMORY[0x277D13148];
      keys[0] = *MEMORY[0x277D13160];
      keys[1] = v11;
      v12 = *MEMORY[0x277D13140];
      keys[2] = *MEMORY[0x277D13138];
      keys[3] = v12;
      v13 = *MEMORY[0x277D13170];
      values[0] = *MEMORY[0x277D13158];
      values[1] = v13;
      values[2] = v9;
      values[3] = v10;
      v14 = CFDictionaryCreate(0, keys, values, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!v14)
      {
        _gss_ntlm_cred_label_get_cold_1();
      }

      v15 = v14;
      v16 = HeimCredCopyQuery();
      CFRelease(v15);
      if (CFArrayGetCount(v16) <= 0)
      {
        v25 = 0;
        if (!v16)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v16, 0);
      if (!ValueAtIndex)
      {
        v25 = 851968;
        if (!v16)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v18 = ValueAtIndex;
      CFRetain(ValueAtIndex);
      if (v16)
      {
        CFRelease(v16);
      }

      v19 = *MEMORY[0x277D130E0];
      v16 = HeimCredCopyAttribute();
      CFRelease(v18);
      if (v16)
      {
        Length = CFDataGetLength(v16);
        v21 = malloc_type_malloc(Length, 0xB2578C23uLL);
        a4[1] = v21;
        if (v21)
        {
          v22 = v21;
          BytePtr = CFDataGetBytePtr(v16);
          v24 = CFDataGetLength(v16);
          memcpy(v22, BytePtr, v24);
          v25 = 0;
          *a4 = CFDataGetLength(v16);
        }

        else
        {
          v25 = 851968;
        }

LABEL_19:
        CFRelease(v16);
        goto LABEL_20;
      }
    }

    else
    {
      CFRelease(v9);
    }
  }

  else
  {
    *a1 = -1765328191;
  }

  v25 = 851968;
LABEL_20:
  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

uint64_t _gss_ntlm_cred_label_set(_DWORD *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  keys[3] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 16) & 1) == 0)
  {
    goto LABEL_14;
  }

  v8 = *MEMORY[0x277CBECE8];
  v9 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x277CBECE8], *(a2 + 36));
  if (!v9)
  {
    *a1 = -1765328191;
LABEL_14:
    v28 = 851968;
    goto LABEL_15;
  }

  v10 = v9;
  *a1 = 0;
  v11 = CFStringCreateWithCString(v8, a3, 0x8000100u);
  if (!v11)
  {
    CFRelease(v10);
    goto LABEL_14;
  }

  v12 = v11;
  v13 = *MEMORY[0x277D13138];
  v14 = *MEMORY[0x277D13148];
  keys[0] = *MEMORY[0x277D13138];
  keys[1] = v14;
  v15 = *MEMORY[0x277D13140];
  keys[2] = *MEMORY[0x277D13140];
  v16 = *MEMORY[0x277D13170];
  values[0] = v10;
  values[1] = v16;
  values[2] = v11;
  v17 = CFDictionaryCreate(0, keys, values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v17)
  {
    _gss_ntlm_cred_label_set_cold_2();
  }

  v18 = v17;
  HeimCredDeleteQuery();
  CFRelease(v18);
  if (!a4)
  {
    v28 = 0;
LABEL_18:
    CFRelease(v10);
    v31 = v12;
LABEL_27:
    CFRelease(v31);
    goto LABEL_15;
  }

  v19 = CFStringCreateWithCString(v8, *a2, 0x8000100u);
  if (!v19)
  {
    v28 = 851968;
    goto LABEL_18;
  }

  v20 = v19;
  v21 = CFStringCreateWithCString(v8, *(a2 + 8), 0x8000100u);
  if (!v21)
  {
    v23 = 0;
    goto LABEL_20;
  }

  v22 = CFDataCreateWithBytesNoCopy(0, *(a4 + 8), *a4, *MEMORY[0x277CBED00]);
  v23 = v22;
  if (!v22)
  {
LABEL_20:
    v26 = 0;
    goto LABEL_21;
  }

  v33[0] = *MEMORY[0x277D13160];
  v33[1] = v14;
  v24 = *MEMORY[0x277D13130];
  v33[2] = v13;
  v33[3] = v24;
  v33[4] = *MEMORY[0x277D13100];
  v33[5] = v15;
  v33[6] = *MEMORY[0x277D130E0];
  v32[0] = *MEMORY[0x277D13158];
  v32[1] = v16;
  v32[2] = v10;
  v32[3] = v20;
  v32[4] = v21;
  v32[5] = v12;
  v32[6] = v22;
  v25 = CFDictionaryCreate(0, v33, v32, 7, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v25)
  {
    _gss_ntlm_acquire_cred_ext_cold_1();
  }

  v26 = v25;
  v27 = HeimCredCreate();
  if (!v27)
  {
LABEL_21:
    CFRelease(v10);
    CFRelease(v20);
    v28 = 851968;
    if (!v21)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  CFRelease(v27);
  CFRelease(v10);
  CFRelease(v20);
  v28 = 0;
LABEL_22:
  CFRelease(v21);
LABEL_23:
  CFRelease(v12);
  if (v23)
  {
    CFRelease(v23);
  }

  if (v26)
  {
    v31 = v26;
    goto LABEL_27;
  }

LABEL_15:
  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

uint64_t _gss_ntlm_inquire_mechs_for_name(_DWORD *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    *a1 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  return 0;
}

uint64_t _gss_ntlm_release_cred(_DWORD *a1, void ***a2)
{
  if (a1)
  {
    *a1 = 0;
  }

  if (!a2 || !*a2)
  {
    return 0;
  }

  v3 = *a2;
  *a2 = 0;
  return _gss_ntlm_release_name(a1, &v3);
}

uint64_t _gss_ntlm_release_name(_DWORD *a1, void ***a2)
{
  if (a1)
  {
    *a1 = 0;
  }

  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *a2 = 0;
      free(*v2);
      free(v2[1]);
      free(v2);
    }
  }

  return 0;
}

uint64_t _gss_ntlm_iter_creds_f(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, gss_OID_desc *, void *))
{
  keys[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D13148];
  keys[0] = *MEMORY[0x277D13160];
  keys[1] = v3;
  v4 = *MEMORY[0x277D13170];
  values[0] = *MEMORY[0x277D13158];
  values[1] = v4;
  v5 = CFDictionaryCreate(0, keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v5)
  {
    _gss_ntlm_cred_label_get_cold_1();
  }

  v6 = v5;
  v7 = HeimCredCopyQuery();
  CFRelease(v6);
  Count = CFArrayGetCount(v7);
  if (Count >= 1)
  {
    v8 = 0;
    v9 = *MEMORY[0x277D13100];
    v25 = *MEMORY[0x277D13100];
    v26 = *MEMORY[0x277D13130];
    do
    {
      CFArrayGetValueAtIndex(v7, v8);
      v10 = HeimCredCopyAttribute();
      if (v10)
      {
        v11 = rk_cfstring2cstring();
      }

      else
      {
        v11 = 0;
      }

      v12 = HeimCredCopyAttribute();
      if (v12)
      {
        v13 = rk_cfstring2cstring();
      }

      else
      {
        v13 = 0;
      }

      UUID = HeimCredGetUUID();
      v15 = UUID;
      if (UUID)
      {
        v16 = CFUUIDGetUUIDBytes(UUID);
        v17 = *&v16.byte0;
        v18 = *&v16.byte8;
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      v19 = malloc_type_calloc(1uLL, 0x38uLL, 0x10100405C7453BFuLL);
      if (v19)
      {
        v20 = v19;
        if (v11 && v13 && v15)
        {
          *v19 = strdup(v11);
          v20[1] = strdup(v13);
          *(v20 + 4) = 1;
          *(v20 + 36) = v17;
          *(v20 + 44) = v18;
          a3(a2, &__gss_ntlm_mechanism_oid_desc, v20);
        }

        else
        {
          free(v19);
        }
      }

      free(v11);
      free(v13);
      if (v10)
      {
        CFRelease(v10);
      }

      if (v12)
      {
        CFRelease(v12);
      }

      ++v8;
    }

    while (Count != v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  result = (a3)(a2, 0, 0);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _gss_ntlm_inquire_sec_context_by_oid(OM_uint32 *a1, uint64_t a2, gss_const_OID a, gss_buffer_set_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  *a1 = 0;
  if (a2)
  {
    *a4 = 0;
    if (gss_oid_equal(a, &__gss_ntlm_get_session_key_x_oid_desc) || gss_oid_equal(a, &__gss_c_inq_sspi_session_key_oid_desc))
    {
      v13 = *(a2 + 48);
      if (v13)
      {
        v14 = *(a2 + 56);
LABEL_6:
        member_buffer.length = v13;
        member_buffer.value = v14;
        return gss_add_buffer_set_member(a1, &member_buffer, a4);
      }

      goto LABEL_15;
    }

    if (gss_oid_equal(a, &__gss_c_inq_win2k_pac_x_oid_desc))
    {
      if (!*(a2 + 256))
      {
LABEL_15:
        *a1 = 2;
        return 851968;
      }

      return gss_add_buffer_set_member(a1, (a2 + 256), a4);
    }

    else
    {
      if (gss_oid_equal(a, &__gss_c_ntlm_guest_oid_desc))
      {
        v16 = (*(a2 + 32) >> 3) & 1;
        v13 = 4;
        v14 = &v16;
        goto LABEL_6;
      }

      if (!gss_oid_equal(a, &__gss_c_peer_has_updated_spnego_oid_desc))
      {
        if (gss_oid_equal(a, &__gss_c_ntlm_reset_keys_oid_desc))
        {
          _gss_ntlm_set_keys(a2);
          return 0;
        }

        *a1 = 0;
        return 851968;
      }

      if ((*(a2 + 38) & 8) != 0)
      {
        return 0;
      }

      else
      {
        return 851968;
      }
    }
  }

  else
  {

    return gss_mg_set_error_string(&__gss_ntlm_mechanism_oid_desc, 0x80000, 0, "no context", a5, a6, a7, a8, a9);
  }
}

uint64_t _netlogon_delete_sec_context(OM_uint32 *minor_status, uint64_t *a2, void *a3)
{
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      *a2 = 0;
      _netlogon_release_name(minor_status, (v5 + 96));
      _netlogon_release_name(minor_status, (v5 + 104));
      pthread_mutex_destroy(v5);
      *v5 = 0u;
      *(v5 + 16) = 0u;
      *(v5 + 32) = 0u;
      *(v5 + 48) = 0u;
      *(v5 + 64) = 0u;
      *(v5 + 80) = 0u;
      *(v5 + 96) = 0u;
      *(v5 + 112) = 0u;
      free(v5);
    }
  }

  if (a3)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  *minor_status = 0;
  return 0;
}

uint64_t _netlogon_init_sec_context(OM_uint32 *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, uint64_t a8, void *a9, gss_OID_desc **a10, size_t *a11, _DWORD *a12, _DWORD *a13)
{
  v13 = *a3;
  *a1 = 0;
  *a11 = 0;
  a11[1] = 0;
  if (!a2)
  {
    return 458752;
  }

  if (!a4)
  {
    return 0x20000;
  }

  if (!v13)
  {
    if (*a9)
    {
      return 589824;
    }

    v21 = malloc_type_calloc(1uLL, 0x80uLL, 0x102004039E40906uLL);
    v13 = v21;
    if (v21)
    {
      v21[16] = 0;
      *(v21 + 72) = 1;
      v21[19] = 1;
      pthread_mutex_init(v21, 0);
      pthread_mutex_lock(v13);
      *a3 = v13;
      *(v13 + 68) = a6 & 0x103E;
      *(v13 + 80) = *(a2 + 8);
      v22 = _netlogon_duplicate_name(a1, *a2, (v13 + 96));
      if (WORD1(v22) || (v22 = _netlogon_duplicate_name(a1, a4, (v13 + 104)), WORD1(v22)))
      {
        initial_auth_message = v22;
      }

      else
      {
        *(v13 + 112) = *(a2 + 12);
        initial_auth_message = _netlogon_make_initial_auth_message(a1, v13, a11);
        if (initial_auth_message < 0x10000)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      *a1 = 12;
      initial_auth_message = 851968;
    }

    pthread_mutex_unlock(v13);
LABEL_32:
    minor_status = 0;
    _netlogon_delete_sec_context(&minor_status, a3, 0);
    return initial_auth_message;
  }

  pthread_mutex_lock(v13);
  if (*(v13 + 64))
  {
    initial_auth_message = 851968;
    v18 = 22;
LABEL_6:
    *a1 = v18;
    goto LABEL_13;
  }

  if (*a9 >= 8uLL)
  {
    v23 = a9[1];
    v26 = 0;
    _gss_mg_decode_le_uint32(v23, &v26);
    _gss_mg_decode_le_uint32(v23 + 1, &v26 + 1);
    initial_auth_message = 589824;
    if (v26 == 1)
    {
      v18 = HIDWORD(v26);
      if (!HIDWORD(v26))
      {
        initial_auth_message = 0;
        *(v13 + 64) = 1;
        goto LABEL_6;
      }
    }
  }

  else
  {
    initial_auth_message = 589824;
  }

LABEL_13:
  if (a12)
  {
    *a12 = *(v13 + 68);
  }

  if (a13)
  {
    *a13 = -1;
  }

  if (a10)
  {
    *a10 = &__gss_netlogon_mechanism_oid_desc;
  }

  pthread_mutex_unlock(v13);
  if (initial_auth_message >= 2)
  {
    goto LABEL_32;
  }

  return initial_auth_message;
}

uint64_t _netlogon_make_initial_auth_message(int *a1, uint64_t a2, size_t *a3)
{
  v34[9] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 104);
  v7 = &v33;
  if (*v6)
  {
    v7 = v34;
    v33 = *v6;
    *&v33 = v33 + 1;
    v8 = 1;
    v9 = 1;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = *(a2 + 96);
  if (*v10)
  {
    v8 = v8 | 2;
    *v7 = *v10;
    ++*v7;
    ++v9;
  }

  v12 = *(v6 + 2);
  v11 = (v6 + 1);
  v13 = v31;
  if (v12)
  {
    v14 = &v34[2 * v9 - 2];
    *v14 = 512;
    v14[1] = v31;
    result = _netlogon_encode_dns_string(a1, v11, v14);
    if (WORD1(result))
    {
      goto LABEL_31;
    }

    v13 = &v32;
    v8 = v8 | 4;
    ++v9;
    v10 = *(a2 + 96);
    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  if (*(v10 + 16))
  {
    v17 = &v34[2 * v9 - 2];
    *v17 = 512;
    v17[1] = v13;
    result = _netlogon_encode_dns_string(a1, v10 + 16, v17);
    if (WORD1(result))
    {
      goto LABEL_31;
    }

    ++v16;
    v8 = v8 | 8;
    ++v9;
    v10 = *(a2 + 96);
  }

  if (*v10)
  {
    v18 = &v34[2 * v9 - 2];
    *v18 = 512;
    v18[1] = &v31[512 * v16];
    result = _netlogon_encode_dns_string(a1, v10, v18);
    if (WORD1(result))
    {
      goto LABEL_31;
    }

    v8 = v8 | 0x10;
    ++v9;
    goto LABEL_17;
  }

  if (v9)
  {
LABEL_17:
    v19 = &v33;
    v20 = 8;
    v21 = v9;
    do
    {
      v22 = *v19;
      v19 += 2;
      v20 += v22;
      --v21;
    }

    while (v21);
    v23 = 0;
    goto LABEL_21;
  }

  v23 = 1;
  v20 = 8;
LABEL_21:
  v24 = malloc_type_malloc(v20, 0xFF79DE04uLL);
  a3[1] = v24;
  if (v24)
  {
    v25 = v24;
    _gss_mg_encode_le_uint32(0, v24);
    _gss_mg_encode_le_uint32(v8, v25 + 1);
    v26 = (v25 + 2);
    if ((v23 & 1) == 0)
    {
      v27 = &v33 + 1;
      do
      {
        v28 = *(v27 - 1);
        if (!v28)
        {
          _netlogon_make_initial_auth_message_cold_2();
        }

        if (*(*v27 + v28 - 1))
        {
          _netlogon_make_initial_auth_message_cold_1();
        }

        memcpy(v26, *v27, *(v27 - 1));
        v26 += v28;
        v27 += 2;
        --v9;
      }

      while (v9);
    }

    *a3 = v20;
    if (v26 != (a3[1] + v20))
    {
      _netlogon_make_initial_auth_message_cold_3();
    }

    v29 = 0;
    result = 1;
  }

  else
  {
    result = 851968;
    v29 = 12;
  }

  *a1 = v29;
LABEL_31:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _netlogon_encode_dns_string(int *a1, uint64_t a2, uint64_t a3)
{
  bzero(*(a3 + 8), *a3);
  v6 = res_9_ns_name_compress(*(a2 + 8), *(a3 + 8), *a3, 0, 0);
  if (v6 < 0)
  {
    v8 = *__error();
    result = 851968;
  }

  else
  {
    v7 = v6;
    v8 = 0;
    result = 0;
    *a3 = v7;
  }

  *a1 = v8;
  return result;
}

uint64_t _netlogon_accept_sec_context(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, _DWORD *a9, _DWORD *a10, void *a11)
{
  *a8 = 0;
  a8[1] = 0;
  *a1 = 0;
  if (a2 && a4)
  {
    if (a6)
    {
      *a6 = 0;
    }

    if (a7)
    {
      *a7 = 0;
    }

    if (a9)
    {
      *a9 = 0;
    }

    if (a10)
    {
      *a10 = 0;
    }

    if (a11)
    {
      *a11 = 0;
    }

    *a1 = 12;
  }

  return 851968;
}

uint64_t _netlogon_acquire_cred(OM_uint32 *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6, void *a7, _DWORD *a8)
{
  if (a5 != 1)
  {
    return 851968;
  }

  if (!a2)
  {
    return 0x20000;
  }

  v13 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040DCAC275BuLL);
  if (!v13)
  {
    *a1 = 12;
    return 851968;
  }

  v14 = v13;
  *(v13 + 2) = 7995511;
  v15 = _netlogon_duplicate_name(a1, a2, v13);
  if (v15 >= 0x10000)
  {
    v16 = v15;
    free(v14);
  }

  else
  {
    *a6 = v14;
    if (a7)
    {
      *a7 = 0;
    }

    v16 = 0;
    if (a8)
    {
      *a8 = -1;
    }
  }

  return v16;
}

uint64_t _netlogon_set_cred_option(int *a1, uint64_t *a2, gss_const_OID a, void *a4)
{
  if (!a4)
  {
    goto LABEL_18;
  }

  if (gss_oid_equal(a, &__gss_netlogon_set_session_key_x_oid_desc))
  {
    if (*a2)
    {
      if (*a4 == 16)
      {
        v8 = 0;
        result = 0;
        *(*a2 + 12) = *a4[1];
        goto LABEL_19;
      }

LABEL_20:
      result = 851968;
      v8 = 34;
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (!gss_oid_equal(a, &__gss_netlogon_set_sign_algorithm_x_oid_desc))
  {
    goto LABEL_18;
  }

  v10 = *a2;
  if (!*a2)
  {
    goto LABEL_18;
  }

  if (*a4 != 2)
  {
    goto LABEL_20;
  }

  v11 = *a4[1];
  if (v11 != 119 && v11 != 19)
  {
LABEL_18:
    result = 851968;
    v8 = 22;
    goto LABEL_19;
  }

  v8 = 0;
  result = 0;
  *(v10 + 8) = v11;
  if (v11 == 19)
  {
    v13 = 26;
  }

  else
  {
    v13 = 122;
  }

  *(v10 + 10) = v13;
LABEL_19:
  *a1 = v8;
  return result;
}

uint64_t _netlogon_add_cred(OM_uint32 *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t *a8, void *a9, _DWORD *a10, _DWORD *a11)
{
  v18 = 0;
  if (a2 && a3)
  {
    result = _netlogon_compare_name(a1, a3, *a2, &v18);
    if (WORD1(result))
    {
      return result;
    }

    if (!v18)
    {
      return 0x20000;
    }
  }

  else if (!a2)
  {
    result = _netlogon_acquire_cred(a1, a3, a6, 0, a5, a8, a9, a10);
    if (result >= 0x10000)
    {
      return result;
    }

    goto LABEL_10;
  }

  result = _netlogon_acquire_cred(a1, *a2, a6, 0, a5, a8, a9, a10);
  if (result >= 0x10000)
  {
    return result;
  }

  v17 = *a8;
  *(v17 + 8) = *(a2 + 8);
  *(v17 + 12) = *(a2 + 12);
LABEL_10:
  result = 0;
  if (a11)
  {
    *a11 = 0;
  }

  return result;
}

uint64_t _netlogon_compare_name(_DWORD *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *a4 = 0;
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = *(a3 + 8);
    if (v9)
    {
      *a4 = strcasecmp(v8, v9) == 0;
    }
  }

  v10 = *(a2 + 24);
  if (v10)
  {
    v11 = *(a3 + 24);
    if (v11)
    {
      *a4 = strcasecmp(v10, v11) == 0;
    }
  }

  *a1 = 0;
  return 0;
}

uint64_t _netlogon_context_time(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a3)
  {
    *a3 = -1;
  }

  return 0;
}

uint64_t _netlogon_display_name(int *a1, uint64_t a2, void *a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (a3)
  {
    v6 = *(a2 + 16);
    v7 = v6 == 0;
    v8 = 16 * (v6 != 0);
    if (v7)
    {
      v9 = a2;
    }

    else
    {
      v9 = a2 + 16;
    }

    v10 = malloc_type_malloc(*(a2 + v8) + 1, 0x40E95982uLL);
    a3[1] = v10;
    if (v10)
    {
      memcpy(v10, *(v9 + 8), *v9);
      v11 = 0;
      result = 0;
      *(a3[1] + *v9) = 0;
      *a3 = *v9;
    }

    else
    {
      result = 851968;
      v11 = 12;
    }
  }

  else
  {
    v11 = 0;
    result = 0;
  }

  *a1 = v11;
  return result;
}

uint64_t _netlogon_display_status(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, void *a6)
{
  if (a1)
  {
    *a1 = 0;
  }

  if (a6)
  {
    *a6 = 0;
    a6[1] = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  return 0;
}

uint64_t _netlogon_duplicate_name(OM_uint32 *a1, uint64_t a2, gss_buffer_desc_struct **a3)
{
  v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x10800403AF1B36BuLL);
  v14 = v6;
  if (v6)
  {
    v7 = v6;
    v8 = malloc_type_malloc(*a2 + 1, 0x6724D026uLL);
    v7->value = v8;
    if (v8)
    {
      memcpy(v8, *(a2 + 8), *a2);
      v9 = *a2;
      v7->length = *a2;
      *(v7->value + v9) = 0;
      v10 = *(a2 + 16);
      if (!v10)
      {
LABEL_6:
        result = 0;
        *a1 = 0;
        *a3 = v7;
        return result;
      }

      v11 = malloc_type_malloc(v10 + 1, 0x5EF4D11AuLL);
      v7[1].value = v11;
      if (v11)
      {
        memcpy(v11, *(a2 + 24), *(a2 + 16));
        v12 = *(a2 + 16);
        v7[1].length = v12;
        *(v7[1].value + v12) = 0;
        goto LABEL_6;
      }
    }
  }

  _netlogon_release_name(a1, &v14);
  *a1 = 12;
  return 851968;
}

uint64_t _netlogon_export_sec_context(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return 0x100000;
}

uint64_t _netlogon_import_name(OM_uint32 *a1, size_t *a2, gss_const_OID a, gss_buffer_desc_struct **a4)
{
  if (gss_oid_equal(a, &__gss_netlogon_nt_netbios_dns_name_oid_desc))
  {
    v7 = a2[1];
    v8 = strlen(v7);
    v9 = *a2;
    v10 = malloc_type_calloc(1uLL, 0x20uLL, 0x10800403AF1B36BuLL);
    v19 = v10;
    if (v10)
    {
      v11 = v10;
      v12 = malloc_type_malloc(v8 + 1, 0xEBA3CF19uLL);
      v11->value = v12;
      if (v12)
      {
        memcpy(v12, v7, v8 + 1);
        v11->length = v8;
        if (v8)
        {
          for (i = 0; i != v8; ++i)
          {
            value = v11->value;
            value[i] = __toupper(value[i]);
          }
        }

        if (v8 >= v9)
        {
          goto LABEL_11;
        }

        v15 = &v7[v8];
        if (!v15[1])
        {
          goto LABEL_11;
        }

        v16 = strdup(v15 + 1);
        v11[1].value = v16;
        if (v16)
        {
          v11[1].length = strlen(v15 + 1);
LABEL_11:
          v17 = 0;
          result = 0;
          *a4 = v11;
LABEL_13:
          *a1 = v17;
          return result;
        }
      }
    }

    _netlogon_release_name(a1, &v19);
    result = 851968;
    v17 = 12;
    goto LABEL_13;
  }

  return 0x20000;
}

uint64_t _netlogon_import_sec_context(_DWORD *a1, uint64_t a2, void *a3)
{
  *a1 = 0;
  if (a3)
  {
    *a3 = 0;
  }

  return 0x100000;
}

uint64_t _netlogon_inquire_context(OM_uint32 *a1, uint64_t a2, gss_buffer_desc_struct **a3, gss_buffer_desc_struct **a4, uint64_t a5, gss_OID_desc **a6, _DWORD *a7, _DWORD *a8, _DWORD *a9)
{
  if (!a3 || (result = _netlogon_duplicate_name(a1, *(a2 + 96), a3), !WORD1(result)))
  {
    if (!a4 || (result = _netlogon_duplicate_name(a1, *(a2 + 104), a4), !WORD1(result)))
    {
      if (a6)
      {
        *a6 = &__gss_netlogon_mechanism_oid_desc;
      }

      if (a7)
      {
        *a7 = *(a2 + 68);
      }

      if (a8)
      {
        *a8 = *(a2 + 72);
      }

      result = 0;
      if (a9)
      {
        *a9 = *(a2 + 64) == 1;
      }
    }
  }

  return result;
}

uint64_t _netlogon_inquire_cred_by_mech(OM_uint32 *a1, uint64_t *a2, uint64_t a3, gss_buffer_desc_struct **a4, _DWORD *a5, _DWORD *a6, _DWORD *a7)
{
  if (!a4 || (result = _netlogon_duplicate_name(a1, *a2, a4), !WORD1(result)))
  {
    if (a5)
    {
      *a5 = -1;
    }

    if (a6)
    {
      *a6 = -1;
    }

    if (a7)
    {
      *a7 = 1;
    }

    result = 0;
    *a1 = 0;
  }

  return result;
}

uint64_t _netlogon_inquire_cred(OM_uint32 *a1, uint64_t *a2, gss_buffer_desc_struct **a3, _DWORD *a4, _DWORD *a5, void *a6)
{
  *a1 = 0;
  if (!a2)
  {
    return 458752;
  }

  if (!a3 || (result = _netlogon_duplicate_name(a1, *a2, a3), !WORD1(result)))
  {
    if (a4)
    {
      *a4 = -1;
    }

    if (a5)
    {
      *a5 = 1;
    }

    result = 0;
    if (a6)
    {
      *a6 = 0;
    }
  }

  return result;
}

uint64_t _netlogon_inquire_mechs_for_name(_DWORD *a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  *a1 = 0;
  return 0;
}

uint64_t _netlogon_inquire_names_for_mech(OM_uint32 *a1, int a2, gss_OID_set *oid_set)
{
  empty_oid_set = gss_create_empty_oid_set(a1, oid_set);
  if (!empty_oid_set)
  {
    empty_oid_set = gss_add_oid_set_member(a1, &__gss_netlogon_nt_netbios_dns_name_oid_desc, oid_set);
    if (empty_oid_set)
    {
      minor_status = 0;
      gss_release_oid_set(&minor_status, oid_set);
    }

    else
    {
      *a1 = 0;
    }
  }

  return empty_oid_set;
}

uint64_t _netlogon_release_cred(OM_uint32 *a1, gss_buffer_t **a2)
{
  v2 = *a2;
  if (*a2)
  {
    _netlogon_release_name(a1, *a2);
    *v2 = 0u;
    *(v2 + 1) = 0u;
    free(v2);
    *a2 = 0;
  }

  return 0;
}

uint64_t _netlogon_release_name(OM_uint32 *minor_status, gss_buffer_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    gss_release_buffer(minor_status, *a2);
    gss_release_buffer(minor_status, v3 + 1);
    free(v3);
    *a2 = 0;
  }

  *minor_status = 0;
  return 0;
}

uint64_t _netlogon_wrap_iov(int *a1, uint64_t a2, int a3, uint64_t a4, _DWORD *a5, unsigned __int16 *a6, int a7)
{
  v24[7] = *MEMORY[0x277D85DE8];
  memset(&v24[4] + 2, 0, 22);
  memset(v24 + 2, 0, 32);
  if (*(a2 + 64) != 1 || (buffer = _gss_mg_find_buffer(a6, a7, 2)) == 0)
  {
    result = 851968;
    v18 = 22;
    goto LABEL_9;
  }

  v14 = buffer;
  v15 = 24;
  if (*(a2 + 80) == 19)
  {
    v15 = 48;
  }

  v16 = v15 + 8 * (a3 != 0);
  if (buffer[1])
  {
    result = _gss_mg_allocate_buffer(a1, buffer, v16);
    if (WORD1(result))
    {
      goto LABEL_10;
    }

    v16 = *(v14 + 1);
    goto LABEL_14;
  }

  if (*(buffer + 1) >= v16)
  {
    *(buffer + 1) = v16;
LABEL_14:
    bzero(*(v14 + 2), v16);
    LOWORD(v24[0]) = *(a2 + 80);
    if (a3)
    {
      WORD1(v24[0]) = *(a2 + 82);
      krb5_generate_random_block();
    }

    else
    {
      WORD1(v24[0]) = -1;
    }

    HIDWORD(v24[0]) = 0xFFFF;
    pthread_mutex_lock(a2);
    v20 = *(a2 + 92);
    v21 = *(a2 + 72);
    _gss_mg_encode_be_uint32(*(a2 + 88), &v24[1]);
    _gss_mg_encode_be_uint32(v20, &v24[1] + 1);
    if (v21)
    {
      BYTE4(v24[1]) |= 0x80u;
    }

    ++*(a2 + 88);
    pthread_mutex_unlock(a2);
    _netlogon_digest(a2, v24, a6, a7, &v24[2]);
    if (a3)
    {
      _netlogon_seal(a2, v24, a6, a7);
    }

    _netlogon_seq(a2, v24);
    v23 = *(v14 + 1);
    v22 = *(v14 + 2);
    *v22 = v24[0];
    if (v23 >= 9)
    {
      v22[1] = v24[1];
      if (v23 >= 0x11)
      {
        v22[2] = v24[2];
        if (SWORD1(v24[0]) != -1)
        {
          v22[3] = v24[3];
        }
      }
    }

    v18 = 0;
    result = 0;
    if (a5)
    {
      *a5 = a3;
    }

    goto LABEL_9;
  }

  result = 851968;
  v18 = -1765328194;
LABEL_9:
  *a1 = v18;
LABEL_10:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void _netlogon_digest(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  LODWORD(v6) = a4;
  v27 = *MEMORY[0x277D85DE8];
  if (*a2 == 19)
  {
    memset(&ctx, 0, sizeof(ctx));
    data[0] = 19;
    data[1] = *(a2 + 2);
    v25 = *(a2 + 4);
    CCHmacInit(&ctx, 2u, (a1 + 112), 0x10uLL);
    CCHmacUpdate(&ctx, data, 8uLL);
    if (*(a2 + 2) != -1)
    {
      CCHmacUpdate(&ctx, (a2 + 24), 8uLL);
    }

    if (v6 >= 1)
    {
      v10 = (a3 + 16);
      v6 = v6;
      do
      {
        v11 = *(v10 - 8);
        v12 = v11 > 0xB;
        v13 = (1 << v11) & 0xA02;
        if (!v12 && v13 != 0)
        {
          CCHmacUpdate(&ctx, *v10, *(v10 - 1));
        }

        v10 += 3;
        --v6;
      }

      while (v6);
    }

    CCHmacFinal(&ctx, macOut);
    v15 = macOut[0];
  }

  else
  {
    macOut[0] = *a2;
    CCDigestCreate();
    CCDigestUpdate();
    CCDigestUpdate();
    if (*(a2 + 2) != -1)
    {
      CCDigestUpdate();
    }

    if (v6 >= 1)
    {
      v16 = (a3 + 16);
      v6 = v6;
      do
      {
        v17 = *(v16 - 8);
        v12 = v17 > 0xB;
        v18 = (1 << v17) & 0xA02;
        if (!v12 && v18 != 0)
        {
          v21 = *(v16 - 1);
          v20 = *v16;
          CCDigestUpdate();
        }

        v16 += 3;
        --v6;
      }

      while (v6);
    }

    CCDigestFinal();
    CCDigestDestroy();
    CCHmac(1u, (a1 + 112), 0x10uLL, &ctx, 0x10uLL, &ctx);
    v15 = *ctx.ctx;
  }

  *a5 = v15;
  v22 = *MEMORY[0x277D85DE8];
}

uint64_t _netlogon_seal(int8x16_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v19 = *MEMORY[0x277D85DE8];
  hc_EVP_CIPHER_CTX_init();
  v8.i64[0] = 0xF0F0F0F0F0F0F0F0;
  v8.i64[1] = 0xF0F0F0F0F0F0F0F0;
  if (*(a2 + 2) == 26)
  {
    key = veorq_s8(a1[7], v8);
    v17 = *(a2 + 8);
    hc_EVP_aes_128_cfb8();
    hc_EVP_CipherInit_ex();
  }

  else
  {
    key = veorq_s8(a1[7], v8);
    _netlogon_derive_rc4_hmac_key(&key, (a2 + 8));
  }

  hc_EVP_Cipher();
  if (*(a2 + 2) == 122)
  {
    hc_EVP_CipherFinal_ex();
    v9.i64[0] = 0xF0F0F0F0F0F0F0F0;
    v9.i64[1] = 0xF0F0F0F0F0F0F0F0;
    key = veorq_s8(a1[7], v9);
    _netlogon_derive_rc4_hmac_key(&key, (a2 + 8));
  }

  v16 = 0;
  if (a4 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = (a3 + 24 * v10);
      if ((*v11 | 8) == 9)
      {
        v13 = *(v11 + 1);
        v12 = *(v11 + 2);
        hc_EVP_Cipher();
        v10 = v16;
      }

      v16 = ++v10;
    }

    while (v10 < a4);
  }

  hc_EVP_CipherFinal_ex();
  result = hc_EVP_CIPHER_CTX_cleanup();
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _netlogon_seq(uint64_t a1, _WORD *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  hc_EVP_CIPHER_CTX_init();
  v4 = (a2 + 8);
  if (*a2 == 19)
  {
    v7 = *v4;
    hc_EVP_aes_128_cfb8();
    hc_EVP_CipherInit_ex();
  }

  else
  {
    _netlogon_derive_rc4_hmac_key((a1 + 112), v4);
  }

  hc_EVP_Cipher();
  result = hc_EVP_CIPHER_CTX_cleanup();
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _netlogon_unwrap_iov(int *a1, int8x16_t *a2, _DWORD *a3, _DWORD *a4, unsigned __int16 *a5, int a6)
{
  v36 = *MEMORY[0x277D85DE8];
  if (a2[4].i32[0] != 1 || (buffer = _gss_mg_find_buffer(a5, a6, 2)) == 0)
  {
    *a1 = 22;
    v18 = 851968;
    goto LABEL_15;
  }

  v35 = 0u;
  v34 = 0u;
  v13 = *(buffer + 1);
  if (v13 < 0x10)
  {
    goto LABEL_12;
  }

  v14 = *(buffer + 2);
  v28 = *v14;
  v15 = v14[1];
  v29 = v14[1];
  v16 = v14[2];
  v30 = v14[2];
  v31 = v14[3];
  v32 = *(v14 + 1);
  if (v28 == 119)
  {
    v17 = 32;
  }

  else
  {
    if (v28 != 19)
    {
      v19 = 22;
      goto LABEL_13;
    }

    v17 = 56;
  }

  if (v15 == 0xFFFF)
  {
    v17 -= 8;
  }

  if (v17 > v13)
  {
LABEL_12:
    v19 = -1765328194;
LABEL_13:
    *a1 = v19;
LABEL_14:
    v18 = 589824;
    goto LABEL_15;
  }

  v33 = *(v14 + 2);
  if (v15 == 0xFFFF)
  {
    if (v28 == a2[5].i16[0])
    {
      if (v16 != 0xFFFF)
      {
        goto LABEL_14;
      }

      goto LABEL_27;
    }

LABEL_31:
    v18 = 393216;
    goto LABEL_15;
  }

  *&v34 = *(v14 + 3);
  if (v28 != a2[5].i16[0])
  {
    goto LABEL_31;
  }

  if (v15 != a2[5].u16[1] || v16 != 0xFFFF)
  {
    goto LABEL_14;
  }

LABEL_27:
  _netlogon_seq(a2, &v28);
  if ((a2[4].i8[8] != 0) == ((v32 & 0x8000000000) != 0))
  {
    v18 = 8;
    goto LABEL_15;
  }

  v26 = 0;
  v27[0] = 0;
  BYTE4(v32) &= ~0x80u;
  _gss_mg_decode_be_uint32(&v32, v27);
  _gss_mg_decode_be_uint32(&v32 + 1, &v26);
  v24 = v26;
  v23 = v27[0];
  if (v29 != -1)
  {
    _netlogon_seal(a2, &v28, a5, a6);
  }

  _netlogon_digest(a2, &v28, a5, a6, v27);
  if (v33 != *v27)
  {
    goto LABEL_31;
  }

  v25 = v23 | (v24 << 32);
  pthread_mutex_lock(a2);
  if (v25 == a2[5].i64[1])
  {
    v18 = 0;
    a2[5].i64[1] = v25 + 1;
  }

  else
  {
    v18 = 8;
  }

  pthread_mutex_unlock(a2);
  if (a3)
  {
    *a3 = v29 != -1;
  }

  if (a4)
  {
    *a4 = 0;
  }

  *a1 = 0;
LABEL_15:
  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t _netlogon_wrap_iov_length(int *a1, uint64_t a2, int a3, uint64_t a4, _DWORD *a5, unsigned __int16 *a6, int a7)
{
  buffer = _gss_mg_find_buffer(a6, a7, 2);
  if (buffer)
  {
    v14 = 24;
    if (*(a2 + 80) == 19)
    {
      v14 = 48;
    }

    if (a3)
    {
      v14 += 8;
    }

    *(buffer + 1) = v14;
    v15 = _gss_mg_find_buffer(a6, a7, 9);
    if (v15)
    {
      *(v15 + 1) = 0;
    }

    v16 = _gss_mg_find_buffer(a6, a7, 7);
    if (v16)
    {
      *(v16 + 1) = 0;
    }

    v17 = 0;
    result = 0;
    if (a5)
    {
      *a5 = a3;
    }
  }

  else
  {
    result = 851968;
    v17 = 22;
  }

  *a1 = v17;
  return result;
}

uint64_t _netlogon_get_mic(int *a1, uint64_t a2, uint64_t a3, __int128 *a4, _OWORD *a5)
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = 1;
  v9 = *a4;
  v10 = 65538;
  v11 = 0uLL;
  result = _netlogon_wrap_iov(a1, a2, 0, a4, 0, &v8, 2);
  if (!result)
  {
    *a5 = v11;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _netlogon_verify_mic(int *a1, int8x16_t *a2, __int128 *a3, __int128 *a4, _DWORD *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = 1;
  v8 = *a3;
  v9 = 2;
  v10 = *a4;
  result = _netlogon_unwrap_iov(a1, a2, 0, a5, &v7, 2);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _netlogon_wrap_size_limit(int *a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5, _DWORD *a6)
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = 2;
  v12 = 0;
  result = _netlogon_wrap_iov_length(a1, a2, a3, a4, 0, &v11, 1);
  if (!WORD1(result))
  {
    result = 0;
    if (v12 <= a5)
    {
      v9 = a5 - v12;
    }

    else
    {
      v9 = 0;
    }

    *a6 = v9;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _netlogon_derive_rc4_hmac_key(void *key, const void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  CCHmac(1u, key, 0x10uLL, &zeros, 4uLL, macOut);
  CCHmac(1u, macOut, 0x10uLL, a2, 8uLL, v5);
  hc_EVP_rc4();
  result = hc_EVP_CipherInit_ex();
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2821100F0](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}