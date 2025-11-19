uint64_t import_dn_name(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *a5 = 0;
  *a1 = 0;
  return 851968;
}

uint64_t import_pku2u_export_name(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *a5 = 0;
  *a1 = 0;
  return 851968;
}

uint64_t _gsskrb5_import_sec_context(int *a1, uint64_t *a2, uint64_t *a3)
{
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  memset(v31, 0, sizeof(v31));
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  memset(&v26, 0, sizeof(v26));
  v24 = 0;
  v25 = 0;
  v6 = __ApplePrivate__gsskrb5_init(&v33);
  if (v6)
  {
    *a1 = v6;
    return 851968;
  }

  *a3 = 0;
  v10 = *a2;
  v9 = a2[1];
  v11 = krb5_storage_from_mem();
  if (!v11)
  {
    *a1 = 12;
    return 851968;
  }

  v12 = v11;
  v13 = malloc_type_calloc(1uLL, 0x138uLL, 0x10B00402E3E967EuLL);
  if (!v13)
  {
    *a1 = 12;
    krb5_storage_free();
    return 851968;
  }

  v14 = v13;
  pthread_mutex_init(v13 + 2, 0);
  v15 = krb5_auth_con_init(v33, (v14 + 40));
  if (!v15)
  {
    *a1 = 0;
    if (!krb5_ret_int32())
    {
      v18 = *(v14 + 40);
      if (!krb5_ret_int32())
      {
        *v18 = v25;
        v21 = BYTE4(v25);
        if ((v25 & 0x100000000) != 0)
        {
          v16 = v32;
          if (krb5_ret_address())
          {
            goto LABEL_14;
          }

          v16 = v32;
          v21 = BYTE4(v25);
        }

        else
        {
          v16 = 0;
        }

        if ((v21 & 2) != 0)
        {
          v17 = v31;
          if (krb5_ret_address())
          {
            goto LABEL_15;
          }
        }

        else
        {
          v17 = 0;
        }

        krb5_auth_con_setaddrs(v33, v18, v16, v17);
        if (v16)
        {
          krb5_free_address();
        }

        if (v17)
        {
          krb5_free_address();
        }

        if (!krb5_ret_int16() && !krb5_ret_int16())
        {
          v22 = BYTE4(v25);
          if ((v25 & 0x400000000) != 0)
          {
            if (krb5_ret_keyblock())
            {
              goto LABEL_13;
            }

            krb5_auth_con_setkey();
            krb5_free_keyblock_contents(v33, &v26);
            v22 = BYTE4(v25);
          }

          if ((v22 & 8) != 0)
          {
            if (krb5_ret_keyblock())
            {
              goto LABEL_13;
            }

            krb5_auth_con_setlocalsubkey();
            krb5_free_keyblock_contents(v33, &v26);
            v22 = BYTE4(v25);
          }

          if ((v22 & 0x10) != 0)
          {
            if (krb5_ret_keyblock())
            {
              goto LABEL_13;
            }

            krb5_auth_con_setremotesubkey();
            krb5_free_keyblock_contents(v33, &v26);
          }

          if (!krb5_ret_uint32() && !krb5_ret_uint32() && !krb5_ret_int32())
          {
            *(v18 + 22) = v25;
            if (!krb5_ret_int32())
            {
              *(v18 + 23) = v25;
              if (!krb5_ret_data())
              {
                v27 = v29;
                v28 = v30;
                if (_gsskrb5_import_name(a1, &v27, &__gss_c_nt_export_name_oid_desc, &v24))
                {
                  v23 = _gsskrb5_import_name(a1, &v27, 0, &v24);
                  if (v23)
                  {
                    goto LABEL_56;
                  }
                }

                *(v14 + 56) = v24;
                krb5_data_free();
                if (!krb5_ret_data())
                {
                  v27 = v29;
                  v28 = v30;
                  if (_gsskrb5_import_name(a1, &v27, &__gss_c_nt_export_name_oid_desc, &v24))
                  {
                    v23 = _gsskrb5_import_name(a1, &v27, 0, &v24);
                    if (v23)
                    {
LABEL_56:
                      v7 = v23;
                      krb5_data_free();
LABEL_59:
                      v16 = 0;
                      v17 = 0;
                      goto LABEL_16;
                    }
                  }

                  *(v14 + 64) = v24;
                  krb5_data_free();
                  if (!krb5_ret_int32())
                  {
                    *(v14 + 72) = v25;
                    if (!krb5_ret_int32())
                    {
                      *(v14 + 76) = v25;
                      if (!krb5_ret_int32())
                      {
                        *(v14 + 120) = v25;
                        v7 = _gssapi_msg_order_import(a1, v12, (v14 + 24));
                        if (!v7)
                        {
                          krb5_storage_free();
                          _gsskrb5i_is_cfx(v33, v14, (*(v14 + 76) & 1) == 0);
                          *a3 = v14;
                          return v7;
                        }

                        goto LABEL_59;
                      }
                    }
                  }
                }

                v7 = 0;
                goto LABEL_59;
              }
            }
          }
        }
      }
    }

LABEL_13:
    v16 = 0;
LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v16 = 0;
  v17 = 0;
  *a1 = v15;
LABEL_15:
  v7 = 851968;
LABEL_16:
  krb5_auth_con_free(v33, *(v14 + 40));
  v19 = *(v14 + 56);
  if (v19)
  {
    krb5_free_principal(v33, v19);
  }

  v20 = *(v14 + 64);
  if (v20)
  {
    krb5_free_principal(v33, v20);
  }

  if (v16)
  {
    krb5_free_address();
  }

  if (v17)
  {
    krb5_free_address();
  }

  if (*(v14 + 24))
  {
    _gssapi_msg_order_destroy((v14 + 24));
  }

  pthread_mutex_destroy((v14 + 128));
  krb5_storage_free();
  free(v14);
  *a3 = 0;
  return v7;
}

uint64_t _gsskrb5_create_ctx(krb5_error_code *a1, void *a2, _krb5_context *a3, uint64_t a4, uint64_t a5)
{
  *a2 = 0;
  v10 = malloc_type_calloc(1uLL, 0x138uLL, 0x10B00402E3E967EuLL);
  if (!v10)
  {
    *a1 = 12;
    return 851968;
  }

  v11 = v10;
  *(v10 + 40) = 0u;
  v12 = v10 + 40;
  *(v10 + 4) = a5;
  *(v10 + 24) = 0;
  *(v10 + 56) = 0u;
  *(v10 + 9) = 0;
  *(v10 + 13) = 0;
  *(v10 + 14) = 0;
  *(v10 + 12) = 0;
  krb5_data_zero();
  pthread_mutex_init((v12 + 88), 0);
  v13 = krb5_auth_con_init(a3, v12);
  if (v13)
  {
    *a1 = v13;
LABEL_7:
    pthread_mutex_destroy((v12 + 88));
    return 851968;
  }

  v14 = krb5_auth_con_init(a3, v12 + 1);
  if (v14)
  {
    *a1 = v14;
    krb5_auth_con_free(a3, *v12);
    goto LABEL_7;
  }

  v16 = set_addresses(a3, *v12, a4);
  if (v16 || (v16 = set_addresses(a3, *(v12 + 1), a4)) != 0)
  {
    *a1 = v16;
    krb5_auth_con_free(a3, *v12);
    krb5_auth_con_free(a3, *(v12 + 1));
    pthread_mutex_destroy((v12 + 88));
    return 0x40000;
  }

  else
  {
    v17 = *(v11 + 5);
    krb5_auth_con_addflags();
    v18 = *(v11 + 6);
    krb5_auth_con_addflags();
    result = 0;
    *a2 = v11;
  }

  return result;
}

uint64_t set_addresses(_krb5_context *a1, _krb5_auth_context *a2, uint64_t a3)
{
  if (!a3 || *(a3 + 48) != 4)
  {
    return 0;
  }

  memset(&v11, 0, sizeof(v11));
  memset(&v10, 0, sizeof(v10));
  v6 = *(a3 + 56);
  *(a2 + 12) = *v6;
  *(a2 + 13) = v6[1];
  v7 = _gsskrb5i_address_to_krb5addr(a1, *(a3 + 24), a3 + 32);
  if (!v7)
  {
    v8 = *(a2 + 12);
    v7 = _gsskrb5i_address_to_krb5addr(a1, *a3, a3 + 8);
    if (!v7)
    {
      v7 = krb5_auth_con_setaddrs(a1, a2, &v11, &v10);
      krb5_free_address();
    }

    krb5_free_address();
  }

  return v7;
}

uint64_t _gsskrb5_iakerb_parse_header(_DWORD *a1, _krb5_context *a2, uint64_t a3, unint64_t *a4, uint64_t *a5)
{
  v17 = 0;
  result = _gssapi_decapsulate(a1, a4, &v18, a5, &__gss_iakerb_mechanism_oid_desc);
  if (!result)
  {
    if (v18 == 261)
    {
      __s1 = 0;
      v16 = 0;
      v11 = decode_IAKERB_HEADER(a5[1], *a5, &__s1, &v17);
      if (v11)
      {
        *a1 = v11;
        return 851968;
      }

      else
      {
        if (*a5 < v17)
        {
          _gsskrb5_iakerb_parse_header_cold_1();
        }

        v12 = a5[1] + v17;
        *a5 -= v17;
        a5[1] = v12;
        v13 = v16;
        if (v16)
        {
          if (*(a3 + 256))
          {
            krb5_free_data(a2, *(a3 + 256));
            v13 = v16;
          }

          krb5_copy_data(a2, v13, (a3 + 256));
        }

        v14 = *(a3 + 272);
        if (v14)
        {
          free(v14);
        }

        *(a3 + 272) = strdup(__s1);
        free_IAKERB_HEADER(&__s1);
        return 0;
      }
    }

    else
    {
      v10 = v18;
      *a1 = 0;
      if (v10 == 3)
      {
        return 851968;
      }

      else
      {
        return 589824;
      }
    }
  }

  return result;
}

uint64_t _gsskrb5_iakerb_make_header(int *a1, _krb5_context *a2, uint64_t a3, uint64_t a4, uint64_t a5, size_t *a6)
{
  v23 = 0;
  v24[0] = a4;
  v24[1] = *(a3 + 256);
  v11 = length_IAKERB_HEADER(v24);
  v12 = malloc_type_malloc(v11, 0xA17814B4uLL);
  if (!v12)
  {
    v15 = 12;
    goto LABEL_5;
  }

  v13 = v12;
  v14 = encode_IAKERB_HEADER(v12 + v11 - 1, v11, v24, &v23);
  if (v14)
  {
    v15 = v14;
    free(v13);
LABEL_5:
    *a1 = v15;
    return 851968;
  }

  if (v11 != v23)
  {
    _gsskrb5_iakerb_make_header_cold_1();
  }

  v18 = *(a3 + 256);
  if (v18)
  {
    krb5_free_data(a2, v18);
    *(a3 + 256) = 0;
  }

  v21 = *a5 + v11;
  v19 = malloc_type_malloc(v21, 0x6DCDF4C4uLL);
  v22 = v19;
  if (v19)
  {
    v20 = v19;
    memcpy(v19, v13, v11);
    memcpy(&v20[v11], *(a5 + 8), *a5);
    free(v13);
    v16 = _gsskrb5_encapsulate(a1, &v21, a6, "\x05\x01", *(a3 + 32));
    free(v22);
    return v16;
  }

  free(v13);
  *a1 = 12;
  return 851968;
}

uint64_t _gsskrb5_init_sec_context(krb5_error_code *a1, uint64_t a2, void **a3, const krb5_principal_data *a4, const gss_OID_desc *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, _DWORD *a12, _DWORD *a13)
{
  context = 0;
  v21 = __ApplePrivate__gsskrb5_init(&context);
  if (v21)
  {
    *a1 = v21;
    return 851968;
  }

  *a11 = 0;
  a11[1] = 0;
  if (!a3)
  {
LABEL_30:
    *a1 = 0;
    return 51183616;
  }

  if (a12)
  {
    *a12 = 0;
  }

  if (a13)
  {
    *a13 = 0;
  }

  if (!a4)
  {
    if (a10)
    {
      *a10 = 0;
    }

    *a1 = 0;
    return 0x20000;
  }

  if (a2 && *(a2 + 32) >= 2u)
  {
    krb5_set_error_message(context, 35224071, "ISC: Credentials not of usage type initiator or both");
    *a1 = 35224071;
    return 655360;
  }

  b = &__gss_krb5_mechanism_oid_desc;
  v23 = gss_oid_equal(a5, &__gss_krb5_mechanism_oid_desc);
  v24 = init_krb5_auth;
  if (!v23)
  {
    b = &__gss_iakerb_mechanism_oid_desc;
    v25 = gss_oid_equal(a5, &__gss_iakerb_mechanism_oid_desc);
    v24 = init_iakerb_auth;
    if (!v25)
    {
      b = &__gss_pku2u_mechanism_oid_desc;
      v26 = gss_oid_equal(a5, &__gss_pku2u_mechanism_oid_desc);
      v24 = init_pku2u_auth;
      if (!v26)
      {
        return 0x10000;
      }
    }
  }

  if (a9 && *a9)
  {
    v27 = *a3;
    if (!*a3)
    {
      goto LABEL_30;
    }

LABEL_35:
    pthread_mutex_lock(v27 + 2);
    if (a10)
    {
      *a10 = *(v27 + 4);
    }

    v38 = *(v27 + 11);
    while (1)
    {
      v39 = (v38)(a1, a2, v27, context, a4, b, a6, a7, a8, a9, a11, a12, a13);
      ctx = v39;
      if (v39)
      {
        break;
      }

      v38 = *(v27 + 11);
      if (v38 == step_completed || *a11)
      {
        goto LABEL_43;
      }
    }

    if (v39 < 0x10000)
    {
LABEL_43:
      pthread_mutex_unlock(v27 + 2);
      return ctx;
    }

    v56 = *(v27 + 13);
    if (v56 && (*(v27 + 76) & 0x10) != 0)
    {
      krb5_cc_close(context, v56);
    }

    *(v27 + 13) = 0;
    pthread_mutex_unlock(v27 + 2);
    check = 0;
    _gsskrb5_delete_sec_context(&check, a3, 0);
    return ctx;
  }

  v59 = v24;
  v28 = context;
  check = 0;
  pthread_mutex_lock(&nc_mutex);
  v60 = a7;
  if (!nc[0])
  {
    notify_register_check("com.apple.Kerberos.cache.changed", &dword_27DF41AE4);
    notify_register_check("com.apple.system.clock_set", &dword_27DF41AE8);
    nc[0] = 1;
  }

  notify_check(dword_27DF41AE4, &check);
  if (check || (notify_check(dword_27DF41AE8, &check), check))
  {
    v29 = &unk_27DF41AF8;
    v30 = 7;
    do
    {
      free_entry(v28, v29);
      v29 += 5;
      --v30;
    }

    while (v30);
    _gss_mg_log(1, "krb5-isc: got a notification, drop negative cache", v31, v32, v33, v34, v35, v36, v57);
    pthread_mutex_unlock(&nc_mutex);
LABEL_28:
    a7 = v60;
LABEL_29:
    if (*a3)
    {
      goto LABEL_30;
    }

    ctx = _gsskrb5_create_ctx(a1, a3, context, a8, b);
    if (ctx)
    {
      return ctx;
    }

    v27 = *a3;
    *(*a3 + 11) = v59;
    goto LABEL_35;
  }

  v40 = &qword_27DF41B18;
  v41 = 7;
  while (1)
  {
    if (!gss_oid_equal(*(v40 - 4), b))
    {
      goto LABEL_54;
    }

    v42 = *(v40 - 2);
    if (!v42 || !krb5_principal_compare(v28, a4, v42))
    {
      goto LABEL_54;
    }

    if (a2 && *a2)
    {
      break;
    }

    if (!*(v40 - 3))
    {
      goto LABEL_61;
    }

LABEL_54:
    v40 += 5;
    if (!--v41)
    {
      pthread_mutex_unlock(&nc_mutex);
      _gss_mg_log(1, "gss-isc: not negative cache", v50, v51, v52, v53, v54, v55, v57);
      goto LABEL_28;
    }
  }

  v49 = *(v40 - 3);
  if (!v49 || !krb5_principal_compare(v28, *a2, v49))
  {
    goto LABEL_54;
  }

LABEL_61:
  *a1 = *(v40 - 1);
  ctx = *(v40 - 2);
  v58 = *v40;
  _gss_mg_log(1, "gss-isc: negative cache %d/%d - %s", v43, v44, v45, v46, v47, v48, *(v40 - 2));
  krb5_set_error_message(v28, *a1, "%s (negative cache)", *v40);
  pthread_mutex_unlock(&nc_mutex);
  a7 = v60;
  if (!ctx)
  {
    goto LABEL_29;
  }

  return ctx;
}

uint64_t init_krb5_auth(krb5_error_code *a1, uint64_t a2, uint64_t a3, _krb5_context *a4, const krb5_principal_data *a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _DWORD *a13)
{
  *&v61.magic = 0;
  v61.data = 0;
  v59 = 0;
  v60 = 0;
  v58 = 0;
  krb5_data_zero();
  krb5_data_zero();
  *a1 = 0;
  v19 = (a3 + 104);
  if (!*(a3 + 104))
  {
    if (a2)
    {
      v21 = *(a2 + 40);
      *v19 = v21;
    }

    else
    {
      principal = krb5_cc_default(a4, (a3 + 104));
      if (principal)
      {
        goto LABEL_23;
      }

      *(a3 + 76) |= 0x10u;
      v21 = *(a3 + 104);
    }

    principal = krb5_cc_get_principal(a4, v21, (a3 + 56));
    if (!principal)
    {
      goto LABEL_2;
    }

LABEL_23:
    v40 = principal;
    *a1 = principal;
    full_name = 851968;
    goto LABEL_36;
  }

LABEL_2:
  if (a2)
  {
    v20 = *(a2 + 112);
  }

  krb5_set_default_in_tkt_etypes();
  if (krb5_cc_get_config(a4, *v19, 0, "realm-config", &v61))
  {
    v23 = 1;
  }

  else
  {
    v23 = *&v61.magic && (*v61.data & 2) == 0;
    krb5_data_free();
  }

  ImpersonateBundle = HeimCredGetImpersonateBundle();
  if (ImpersonateBundle)
  {
    v31 = "gss-krb5: ISC disabled kerberos DNS canonalization";
  }

  else
  {
    v31 = "gss-krb5: ISC no AppVPN";
  }

  _gss_mg_log(1, v31, v24, v25, v26, v27, v28, v29, v55);
  if (!_gss_mg_log_level(1))
  {
    goto LABEL_25;
  }

  v57 = 0;
  full_name = krb5_unparse_name(a4, *(a3 + 56), &v57);
  if (!full_name)
  {
    v33 = *v19;
    full_name = krb5_cc_get_full_name();
    if (full_name)
    {
      krb5_xfree();
      goto LABEL_34;
    }

    _gss_mg_log(1, "gss-krb5: ISC client: %s cache: %s", v34, v35, v36, v37, v38, v39, v57);
    krb5_xfree();
    krb5_xfree();
LABEL_25:
    full_name = gsskrb5_get_creds(a1, a4, *(a3 + 104), a3, a5, 0, a8, a13);
    v41 = !v23;
    if (!full_name)
    {
      v41 = 1;
    }

    if ((v41 & 1) == 0 && !ImpersonateBundle)
    {
      full_name = gsskrb5_get_creds(a1, a4, *(a3 + 104), a3, a5, 1, a8, a13);
    }

    if (!full_name)
    {
      *(a3 + 120) = *(*(a3 + 96) + 56);
      mic_compat = _gss_DES3_get_mic_compat(a1, a3, a4);
      if (!mic_compat)
      {
        mic_compat = _gsskrb5_lifetime_left(a1, a4, *(a3 + 120), &v58);
        if (!mic_compat)
        {
          if (v58)
          {
            full_name = 0;
            *(a3 + 88) = step_setup_keys;
            return full_name;
          }

          _gss_mg_log(1, "gss-krb5: credentials expired", v43, v44, v45, v46, v47, v48, v56);
          v40 = 0;
          *a1 = 0;
          full_name = 786432;
          goto LABEL_36;
        }
      }

      full_name = mic_compat;
    }
  }

LABEL_34:
  if (full_name < 0x10000)
  {
    return full_name;
  }

  v40 = *a1;
LABEL_36:
  v49 = *(a3 + 32);
  pthread_mutex_lock(&nc_mutex);
  free_entry(a4, &unk_27DF41AF8 + 5 * qword_27DF41AF0);
  v50 = (&unk_27DF41AF8 + 40 * qword_27DF41AF0);
  *v50 = v49;
  krb5_copy_principal(a4, a5, v50 + 2);
  if (a2 && *a2)
  {
    krb5_copy_principal(a4, *a2, &nc[10 * qword_27DF41AF0 + 8]);
  }

  v51 = &unk_27DF41AF8 + 40 * qword_27DF41AF0;
  *(v51 + 6) = full_name;
  *(v51 + 7) = v40;
  error_message = krb5_get_error_message(a4, v40);
  v53 = qword_27DF41AF0;
  *(&unk_27DF41AF8 + 5 * qword_27DF41AF0 + 4) = error_message;
  qword_27DF41AF0 = (v53 + 1) % 7uLL;
  pthread_mutex_unlock(&nc_mutex);
  return full_name;
}

uint64_t init_iakerb_auth(int *a1, uint64_t a2, uint64_t a3, _krb5_context *a4, const krb5_principal_data *a5)
{
  v10 = krb5_storage_emem();
  *(a3 + 224) = v10;
  if (!v10)
  {
    goto LABEL_9;
  }

  if (!a2)
  {
    return 851968;
  }

  v11 = krb5_copy_principal(a4, *a2, (a3 + 56));
  if (!v11)
  {
    v11 = krb5_copy_principal(a4, a5, (a3 + 64));
    if (!v11)
    {
      v14 = *(a3 + 64);
      v15 = *(*(a3 + 56) + 24);
      krb5_principal_set_realm();
      v16 = *(a2 + 128);
      if (v16)
      {
        v17 = strdup(v16);
        *(a3 + 264) = v17;
        if (!v17)
        {
LABEL_9:
          result = 851968;
          v12 = 12;
          goto LABEL_10;
        }
      }

      else if (*(a2 + 120))
      {
        *(a3 + 216) = heim_retain();
      }

      else if ((*(a2 + 8) & 4) == 0)
      {
        result = 851968;
        v12 = 22;
        goto LABEL_10;
      }

      v18 = *(a2 + 40);
      *(a3 + 104) = v18;
      krb5_cc_get_config(a4, v18, 0, "FriendlyName", (a3 + 280));
      krb5_cc_get_config(a4, *(a3 + 104), 0, "lkdc-hostname", (a3 + 296));
      v12 = 0;
      result = 0;
      v19 = step_iakerb_auth_tgs;
      if ((*(a2 + 8) & 4) == 0)
      {
        v19 = step_iakerb_auth_as;
      }

      *(a3 + 88) = v19;
      goto LABEL_10;
    }
  }

  v12 = v11;
  result = 851968;
LABEL_10:
  *a1 = v12;
  return result;
}

uint64_t init_pku2u_auth(krb5_error_code *a1, uint64_t a2, void *a3, _krb5_context *a4)
{
  v48 = 0;
  *a1 = 0;
  v8 = krb5_storage_emem();
  a3[28] = v8;
  if (!v8)
  {
    v10 = 12;
    goto LABEL_11;
  }

  if (a2)
  {
    if (*(a2 + 120))
    {
      v9 = krb5_copy_principal(a4, *a2, &v48);
      if (v9)
      {
        *a1 = v9;
        return 851968;
      }

      v16 = *(a2 + 120);
      a3[27] = heim_retain();
      goto LABEL_16;
    }

    v10 = 22;
LABEL_11:
    *a1 = v10;
    return 851968;
  }

  *&v41 = 0;
  v11 = _gsspku2u_acquire_cred(a1, 0, 0xFFFFFFFFLL, 0, 1u, &v41, 0, 0);
  if (v11)
  {
    return v11;
  }

  v12 = v41;
  v13 = krb5_copy_principal(a4, *v41, &v48);
  if (v13)
  {
    v14 = v13;
    _gsskrb5_release_cred(a1, &v41);
    *a1 = v14;
    return 851968;
  }

  v22 = *(v12 + 120);
  a3[27] = heim_retain();
  _gsskrb5_release_cred(a1, &v41);
LABEL_16:
  inited = setup_icc(a4, a3, v48, v17, v18, v19, v20, v21);
  if (inited || (v24 = a3[30], (inited = krb5_init_creds_set_service()) != 0))
  {
    *a1 = inited;
LABEL_19:
    v11 = 851968;
    goto LABEL_20;
  }

  if (!krb5_principal_is_null())
  {
    v27 = a3[30];
    v11 = _krb5_init_creds_set_pku2u();
    if (v11)
    {
LABEL_31:
      *a1 = v11;
      goto LABEL_19;
    }

LABEL_27:
    a3[11] = step_pku2u_auth;
LABEL_20:
    if (v48)
    {
      krb5_free_principal(a4, v48);
    }

    return v11;
  }

  v46 = 0;
  v43 = 0;
  v44[0] = 0;
  v47[1] = 0;
  v41 = 0u;
  v42 = 0u;
  v47[0] = malloc_type_calloc(1uLL, 0x30uLL, 0x10B204088662708uLL);
  if (!v47[0])
  {
    *a1 = 12;
    goto LABEL_19;
  }

  v25 = a3[27];
  subject = hx509_cert_get_subject();
  if (subject)
  {
    LODWORD(v11) = subject;
LABEL_30:
    free_InitiatorNameAssertion(v47);
    goto LABEL_31;
  }

  LODWORD(v11) = MEMORY[0x23EE69B30](v46, &v41);
  hx509_name_free();
  if (v11)
  {
    goto LABEL_30;
  }

  v28 = v47[0];
  *v47[0] = 2;
  *(v28 + 8) = 4;
  *(v28 + 16) = 1;
  *(v28 + 24) = DWORD2(v42);
  *(v28 + 32) = v43;
  v29 = length_InitiatorNameAssertion(v47);
  v44[1] = v29;
  v30 = malloc_type_malloc(v29, 0x846499EBuLL);
  v45 = v30;
  if (!v30)
  {
LABEL_35:
    free_InitiatorNameAssertion(v47);
    goto LABEL_19;
  }

  v31 = v30;
  if (encode_InitiatorNameAssertion(v30 + v29 - 1, v29, v47, v44))
  {
    free(v31);
    v45 = 0;
    goto LABEL_35;
  }

  free_InitiatorNameAssertion(v47);
  if (v44[0] == v29)
  {
    v32 = a3[30];
    v11 = _krb5_init_creds_set_pku2u();
    krb5_data_free();
    if (v11)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  v33 = krb5_abortx();
  return step_completed(v33, v34, v35, v36, v37, v38, v39, v40);
}

uint64_t step_completed(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _gsskrb5_set_status(22, "init_sec_context called one time too many", a3, a4, a5, a6, a7, a8, v10);
  *a1 = 22;
  return 327680;
}

uint64_t gsskrb5_get_creds(krb5_error_code *a1, krb5_context a2, _krb5_ccache *a3, uint64_t a4, const krb5_principal_data *a5, int a6, unsigned int a7, _DWORD *a8)
{
  v17 = (a4 + 64);
  v16 = *(a4 + 64);
  if (v16)
  {
    krb5_free_principal(a2, v16);
    *v17 = 0;
  }

  v19 = a4 + 96;
  v18 = *(a4 + 96);
  if (v18)
  {
    krb5_free_creds(a2, v18);
    *v19 = 0;
  }

  result = _gsskrb5_canon_name(a1, a2, a6, *(a4 + 56), a5, v17);
  if (!result)
  {
    v50 = 0;
    if (_krb5_have_debug())
    {
      *v51 = 0;
      if (!krb5_unparse_name(a2, *v17, v51))
      {
        _gss_mg_log(1, "gss-krb5: ISC server %s %s", v21, v22, v23, v24, v25, v26, v51[0]);
        krb5_xfree();
      }
    }

    v52 = 0u;
    memset(&v51[16], 0, 112);
    *v51 = *(a4 + 56);
    if (a7 - 1 <= 0xFFFFFFFD)
    {
      *v49 = 0;
      krb5_timeofday(a2, v49);
      *&v51[56] = *v49 + a7;
    }

    credentials = krb5_get_credentials(a2, 0x200000, a3, v51, (a4 + 96));
    if (credentials)
    {
      v34 = credentials;
      _gss_mg_log(1, "gss-krb5: ISC get cred failed with %d %s", v28, v29, v30, v31, v32, v33, credentials);
      *a1 = v34;
      return 851968;
    }

    else
    {
      if (_krb5_have_debug())
      {
        *v49 = 0;
        if (!krb5_unparse_name(a2, *(*v19 + 8), v49))
        {
          _gss_mg_log(1, "gss-krb5: ISC will use %s", v35, v36, v37, v38, v39, v40, v49[0]);
          krb5_xfree();
        }
      }

      v41 = *(*(a4 + 96) + 56);
      *(a4 + 120) = v41;
      result = _gsskrb5_lifetime_left(a1, a2, v41, &v50);
      if (!result)
      {
        if (v50)
        {
          result = 0;
          if (a8)
          {
            *a8 = v50;
          }
        }

        else
        {
          _gss_mg_log(1, "gss-krb5: credentials expired", v42, v43, v44, v45, v46, v47, v48);
          *a1 = 0;
          return 786432;
        }
      }
    }
  }

  return result;
}

uint64_t step_setup_keys(_DWORD *a1, uint64_t a2, void *a3)
{
  if (!a3[12])
  {
    step_setup_keys_cold_1();
  }

  v5 = a3[5];
  krb5_auth_con_setkey();
  v6 = a3[6];
  v7 = a3[12];
  krb5_auth_con_setkey();
  v8 = a3[5];
  v9 = a3[12];
  result = krb5_auth_con_generatelocalsubkey();
  if (result)
  {
    *a1 = result;
    return 851968;
  }

  else
  {
    a3[11] = init_auth_step;
  }

  return result;
}

uint64_t init_auth_step(int *a1, uint64_t a2, uint64_t a3, _krb5_context *a4, uint64_t a5, uint64_t a6, __int16 a7, uint64_t a8, unsigned int *a9, unint64_t *a10, size_t *a11, _DWORD *a12, int *a13)
{
  v82 = 0;
  v83 = 0;
  v81 = 0;
  v79[0] = 0;
  v79[1] = 0;
  *&v78.magic = 0;
  v78.data = 0;
  v76 = 0;
  v77 = 0;
  v75 = 0;
  krb5_data_zero();
  krb5_data_zero();
  krb5_data_zero();
  memset(v80, 0, sizeof(v80));
  *a1 = 0;
  if ((*(*(a3 + 96) + 137) & 0x20) == 0)
  {
    v18 = *(a3 + 104);
    if (v18)
    {
      *&v84.magic = 0;
      v84.data = 0;
      if (!krb5_cc_get_config(a4, v18, 0, "realm-config", &v84))
      {
        if (!*&v84.magic || (*v84.data & 1) == 0)
        {
          a7 &= 0x7FFEu;
        }

        krb5_data_free();
        if ((a7 & 0x8000) == 0)
        {
          goto LABEL_5;
        }

LABEL_10:
        v19 = (*(*(a3 + 96) + 137) << 26 >> 31) & 0x8001;
        goto LABEL_11;
      }
    }
  }

  if (a7 < 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v19 = 0;
LABEL_11:
  v20 = v19 | a7 & 1;
  if (v19 & 1 | a7 & 1)
  {
    v21 = *(a3 + 104);
    if (v21)
    {
      v73 = *(a3 + 48);
      v22 = *(a3 + 64);
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v84 = 0;
      krb5_data_zero();
      principal = krb5_cc_get_principal(a4, v21, &v84);
      v30 = "ok-as-delegate";
      if (!principal)
      {
        v72 = *(*&v84.magic + 24);
        v31 = krb5_make_principal();
        v30 = "ok-as-delegate";
        if (!v31)
        {
          *(&v87 + 1) = 0;
          if (*(v22 + 8) > 1u)
          {
            KDCOptions2int(6);
            v42 = *(*(v22 + 16) + 8);
            forwarded_creds = krb5_get_forwarded_creds();
            v50 = "ok-as-delegate";
            if (v19 < 0x8000)
            {
              LOBYTE(v50) = "delegate";
            }

            _gss_mg_log(1, "gss-krb5: delegation %s -> %s", v43, v44, v45, v46, v47, v48, v50);
            if (!forwarded_creds)
            {
              goto LABEL_21;
            }

            goto LABEL_20;
          }

          krb5_set_error_message(a4, 35224071, "ISC: only support forwarding to services", "krbtgt", v72, 0);
          v30 = "ok-as-delegate";
        }
      }

      if (v19 < 0x8000)
      {
        LOBYTE(v30) = "delegate";
      }

      _gss_mg_log(1, "gss-krb5: delegation %s -> %s", v24, v25, v26, v27, v28, v29, v30);
LABEL_20:
      v20 = 0;
LABEL_21:
      if (*&v84.magic)
      {
        krb5_free_principal(a4, *&v84.magic);
      }

      if (v84.data)
      {
        krb5_free_principal(a4, v84.data);
      }

      goto LABEL_26;
    }
  }

  v20 = 0;
LABEL_26:
  v32 = a7 & 2;
  if ((a7 & 0x1000) != 0)
  {
    v32 = 4098;
  }

  v33 = a7 & 0x603C | v32 | v20;
  if (!a2 || (*(a2 + 8) & 2) == 0)
  {
    v33 |= 0x30u;
  }

  v34 = *(a3 + 76) | 1;
  *(a3 + 72) = v33 | 0x100;
  *(a3 + 76) = v34;
  v35 = *(*(a3 + 40) + 40);
  v36 = krb5_crypto_init();
  if (v36)
  {
    goto LABEL_32;
  }

  if (!*(a3 + 224))
  {
    goto LABEL_50;
  }

  memset(v74, 0, sizeof(v74));
  v84.data = 0;
  *&v85 = 0;
  *&v84.magic = 0;
  checksum = krb5_storage_to_data();
  v39 = *(a3 + 224);
  krb5_storage_free();
  *(a3 + 224) = 0;
  if (checksum || (checksum = krb5_create_checksum(), krb5_data_free(), checksum))
  {
LABEL_33:
    if (v83)
    {
      krb5_crypto_destroy();
    }

    free_Checksum(v80);
    krb5_data_free();
    krb5_data_free();
    return checksum;
  }

  v76 = length_GSS_KRB5_FINISHED(&v84);
  v40 = malloc_type_malloc(v76, 0x5F4F904CuLL);
  v77 = v40;
  if (!v40)
  {
    checksum = 12;
    goto LABEL_48;
  }

  v41 = encode_GSS_KRB5_FINISHED(v40 + v76 - 1, v76, &v84, v74);
  if (v41)
  {
    checksum = v41;
    free(v77);
    v77 = 0;
LABEL_48:
    free_GSS_KRB5_FINISHED(&v84);
    goto LABEL_33;
  }

  free_GSS_KRB5_FINISHED(&v84);
  if (v76 == v74[0])
  {
LABEL_50:
    v36 = _gsskrb5_create_8003_checksum(a1, a4, v83, a9, v33, v79, &v76, v80);
    if (v36)
    {
LABEL_32:
      checksum = v36;
      goto LABEL_33;
    }

    v51 = **(*(a3 + 40) + 32);
    v52 = *(a3 + 104);
    if (v52 && !krb5_cc_get_config(a4, v52, *(a3 + 64), "time-offset", &v78))
    {
      if (*&v78.magic == 4)
      {
        v53 = bswap32(*v78.data);
        krb5_data_free();
        if (v53)
        {
          krb5_get_kdc_sec_offset();
          krb5_set_kdc_sec_offset();
          v54 = 0;
          goto LABEL_58;
        }
      }

      else
      {
        krb5_data_free();
      }
    }

    v54 = 1;
LABEL_58:
    if ((v33 & 2) != 0)
    {
      v55 = **(*(a3 + 40) + 32);
      v56 = _krb5_auth_con_setup_pfs();
      if (v56)
      {
        *a1 = v56;
LABEL_70:
        checksum = 851968;
        goto LABEL_33;
      }

      v57 = *(a3 + 40);
    }

    v58 = *(a3 + 96);
    v59 = _krb5_build_authenticator();
    if (v59)
    {
      v60 = v59;
      if ((v54 & 1) == 0)
      {
        krb5_set_kdc_sec_offset();
      }

      *a1 = v60;
    }

    else
    {
      v61 = *(a3 + 96);
      v62 = krb5_build_ap_req();
      if ((v54 & 1) == 0)
      {
        krb5_set_kdc_sec_offset();
      }

      if (!v62)
      {
        if ((v33 & 0x1000) != 0)
        {
          v63 = v82;
          *a11 = v81;
          a11[1] = v63;
        }

        else
        {
          checksum = _gsskrb5_encapsulate(a1, &v81, a11, &word_23894DBA3, *(a3 + 32));
          krb5_data_free();
          if (checksum)
          {
            goto LABEL_33;
          }
        }

        if (v83)
        {
          krb5_crypto_destroy();
        }

        free_Checksum(v80);
        krb5_data_free();
        krb5_data_free();
        if ((v33 & 2) == 0)
        {
          return initiator_ready(a1, a3, a4, a12);
        }

        *(a3 + 88) = wait_repl_mutual;
        return 1;
      }

      *a1 = v62;
    }

    goto LABEL_70;
  }

  v64 = krb5_abortx();
  return wait_repl_mutual(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13);
}

uint64_t wait_repl_mutual(int *a1, int a2, uint64_t a3, krb5_context a4, int a5, int a6, __int16 a7, int a8, uint64_t a9, unint64_t *a10, void *a11, _DWORD *a12, int *a13)
{
  *&v28.magic = 0;
  v28.data = 0;
  v27 = 0;
  *a11 = 0;
  a11[1] = 0;
  if ((*(a3 + 73) & 0x10) != 0)
  {
    v18 = a10[1];
    *&v28.magic = *a10;
    v28.data = v18;
    v19 = krb5_rd_rep(a4, *(a3 + 40), &v28, &v27);
    if (v19)
    {
      v20 = v19;
      if (!_gsskrb5_decapsulate(a1, a10, &v28, &word_23894DBA0, &__gss_krb5_mechanism_oid_desc))
      {
        return handle_error_packet(a1, a4, a3, *&v28.magic, v28.data);
      }

      *a1 = v20;
      return 851968;
    }

    goto LABEL_11;
  }

  result = _gsskrb5_decapsulate(a1, a10, &v28, &word_23894DBA6, *(a3 + 32));
  if (!result)
  {
    v21 = krb5_rd_rep(a4, *(a3 + 40), &v28, &v27);
    if (v21)
    {
LABEL_15:
      *a1 = v21;
      return 851968;
    }

LABEL_11:
    krb5_free_ap_rep_enc_part(a4, v27);
    *a1 = 0;
    if (a13)
    {
      result = _gsskrb5_lifetime_left(a1, a4, *(a3 + 120), a13);
      if (result)
      {
        return result;
      }
    }

    if ((a7 & 0x1000) != 0)
    {
      v25.data = 0;
      *v26 = 0;
      *&v25.magic = 0;
      krb5_auth_con_getremoteseqnumber(a4, *(a3 + 40), v26);
      krb5_auth_con_getlocalseqnumber(a4, *(a3 + 40), &v26[1]);
      v22 = *(a3 + 40);
      krb5_auth_con_setlocalseqnumber();
      v21 = krb5_mk_rep(a4, *(a3 + 40), &v25);
      if (v21)
      {
        goto LABEL_15;
      }

      v23 = *(a3 + 40);
      krb5_auth_con_setlocalseqnumber();
      data = v25.data;
      *a11 = *&v25.magic;
      a11[1] = data;
    }

    return initiator_ready(a1, a3, a4, a12);
  }

  if (result == 589824)
  {
    result = _gsskrb5_decapsulate(a1, a10, &v28, &word_23894DBA0, *(a3 + 32));
    if (!result)
    {
      return handle_error_packet(a1, a4, a3, *&v28.magic, v28.data);
    }
  }

  return result;
}

uint64_t initiator_ready(int *a1, uint64_t a2, krb5_context a3, _DWORD *a4)
{
  v8 = *(a2 + 96);
  if (v8)
  {
    krb5_free_creds(a3, v8);
    *(a2 + 96) = 0;
  }

  if ((*(a2 + 76) & 0x10) != 0)
  {
    krb5_cc_close(a3, *(a2 + 104));
  }

  v12 = 0;
  *(a2 + 104) = 0;
  krb5_auth_con_getremoteseqnumber(a3, *(a2 + 40), &v12);
  _gsskrb5i_is_cfx(a3, a2, 0);
  v9 = *(a2 + 76);
  v10 = _gssapi_msg_order_f(*(a2 + 72));
  result = _gssapi_msg_order_create(a1, (a2 + 24), v10, v12, 0);
  if (!result)
  {
    *(a2 + 88) = step_completed;
    *(a2 + 76) |= 2u;
    if (a4)
    {
      *a4 = *(a2 + 72);
    }
  }

  return result;
}

uint64_t handle_error_packet(int *a1, krb5_context a2, uint64_t a3, uint64_t a4, char *a5)
{
  *&v55.magic = a4;
  v55.data = a5;
  if (*(a3 + 88) != wait_repl_mutual)
  {
    handle_error_packet_cold_1();
  }

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v8 = krb5_rd_error(a2, &v55, &v48);
  if (!v8)
  {
    v8 = krb5_error_from_rd_error();
    _gss_mg_log(1, "gss-krb5: server return KRB-ERROR with error code %d", v9, v10, v11, v12, v13, v14, v8);
    if (v8 == -1765328347)
    {
      if (!*(a3 + 104))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v8 == -1765328343)
      {
        if (*(a3 + 104))
        {
          v21 = *(a3 + 76);
          if ((v21 & 0x200) == 0)
          {
            memset(creds, 0, sizeof(creds));
            _gss_mg_log(1, "gss-krb5: trying to renew ticket", v15, v16, v17, v18, v19, v20, v45);
            krb5_cc_clear_mcred();
            *creds = *(a3 + 56);
            krb5_cc_remove_cred(a2, *(a3 + 104), 0, creds);
            *(a3 + 88) = init_krb5_auth;
            v21 = *(a3 + 76);
          }

          v22 = v21 | 0x200;
LABEL_13:
          *(a3 + 76) = v22;
        }

LABEL_14:
        free_KRB_ERROR(&v48);
        goto LABEL_15;
      }

      if (v8 != -1765328324 || !v54)
      {
        goto LABEL_14;
      }

      *creds = 0;
      *&creds[8] = 0;
      _gss_mg_log(1, "gss-krb5: trying to decode a KRB5KRB_ERR_GENERIC", v15, v16, v17, v18, v19, v20, v45);
      if (decode_KERB_ERROR_DATA(v54[1], *v54, creds, 0))
      {
        v8 = -1765328324;
        goto LABEL_21;
      }

      if (*creds != 2)
      {
        if (*creds == 1)
        {
          if (*&creds[8] && **&creds[8] >= 4uLL)
          {
            v46 = 0;
            _gss_mg_decode_le_uint32(*(*&creds[8] + 8), &v46);
            _gss_mg_log(1, "gss-krb5: got an windows error code: %08x", v39, v40, v41, v42, v43, v44, v46);
          }
        }

        else
        {
          _gss_mg_log(1, "gss-krb5: got an KERB_ERROR_DATA of type %d", v33, v34, v35, v36, v37, v38, creds[0]);
        }

        free_KERB_ERROR_DATA(creds);
        goto LABEL_14;
      }

      free_KERB_ERROR_DATA(creds);
    }

    v23 = *(a3 + 76);
    if ((v23 & 0x100) == 0)
    {
      v24 = *(&v49 + 1);
      v25 = v24 - time(0);
      _gss_mg_encode_be_uint32(v25, &v46);
      *creds = 4;
      *&creds[8] = &v46;
      krb5_cc_set_config(a2, *(a3 + 104), *(a3 + 64), "time-offset", creds);
      _gss_mg_log(1, "gss-krb5: time skew of %d", v26, v27, v28, v29, v30, v31, v25);
      *(a3 + 88) = init_auth_step;
      v23 = *(a3 + 76);
    }

    v22 = v23 | 0x100;
    goto LABEL_13;
  }

LABEL_15:
  if (*(a3 + 88) != wait_repl_mutual)
  {
    return 0;
  }

LABEL_21:
  *a1 = v8;
  return 851968;
}

void free_entry(krb5_context a1, void *a2)
{
  v4 = a2[2];
  if (v4)
  {
    krb5_free_principal(a1, v4);
  }

  v5 = a2[1];
  if (v5)
  {
    krb5_free_principal(a1, v5);
  }

  v6 = a2[4];
  if (v6)
  {
    krb5_free_error_message(a1, v6);
  }

  a2[4] = 0;
  a2[1] = 0;
  a2[2] = 0;
}

uint64_t step_iakerb_auth_tgs(krb5_error_code *a1, uint64_t a2, uint64_t a3, _krb5_context *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t *a10, size_t *a11)
{
  v43 = 0;
  memset(v44, 0, sizeof(v44));
  v42 = 0;
  *a1 = 0;
  krb5_data_zero();
  if (!*(a3 + 248))
  {
    v41 = *(a3 + 56);
    v19 = *(a3 + 104);
    v20 = krb5_tkt_creds_init();
    if (v20)
    {
      *a1 = v20;
      _gsskrb5_error_token(a1, *(a3 + 32), a4, v20, 0, 0, a11);
      return 851968;
    }

LABEL_6:
    v21 = *(a3 + 248);
    v22 = krb5_tkt_creds_step();
    if (v22)
    {
      v29 = v22;
      _gss_mg_log(1, "gss-iakerb: tkt_creds_step: %d", v23, v24, v25, v26, v27, v28, v22);
    }

    else
    {
      if (v42)
      {
        step_iakerb_auth_tgs_cold_1();
      }

      _gss_mg_log(1, "gss-iakerb: going to state setup-keys", v23, v24, v25, v26, v27, v28, v40);
      v31 = *(a3 + 248);
      creds = krb5_tkt_creds_get_creds();
      if (!creds)
      {
        v39 = *(a3 + 248);
        krb5_tkt_creds_free();
        v18 = 0;
        *(a3 + 248) = 0;
        *(a3 + 120) = *(*(a3 + 96) + 56);
        *(a3 + 88) = step_setup_keys;
        return v18;
      }

      v29 = creds;
      _gss_mg_log(1, "gss-iakerb: tkt_get_creds: %d", v33, v34, v35, v36, v37, v38, creds);
    }

    _gsskrb5_error_token(a1, *(a3 + 32), a4, v29, 0, 0, a11);
    *a1 = v29;
    return 851968;
  }

  v14 = *(a3 + 224);
  v16 = *a10;
  v15 = a10[1];
  krb5_storage_write();
  v17 = _gsskrb5_iakerb_parse_header(a1, a4, a3, a10, v44);
  if (!v17)
  {
    goto LABEL_6;
  }

  return v17;
}

uint64_t step_iakerb_auth_as(krb5_error_code *a1, uint64_t a2, uint64_t a3, _krb5_context *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t *a10, size_t *a11)
{
  v48[0] = 0;
  v48[1] = 0;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  v44 = 0;
  if (*(a3 + 240))
  {
    v14 = *(a3 + 224);
    v16 = *a10;
    v15 = a10[1];
    krb5_storage_write();
    result = _gsskrb5_iakerb_parse_header(a1, a4, a3, a10, v48);
    if (result)
    {
      return result;
    }
  }

  else
  {
    persistent = setup_icc(a4, a3, *(a3 + 56), a4, a5, a6, a7, a8);
    if (persistent)
    {
      goto LABEL_5;
    }

    krb5_data_zero();
  }

  v19 = *(a3 + 240);
  inited = krb5_init_creds_step();
  if (inited)
  {
    v27 = inited;
    _gss_mg_log(1, "gss-iakerb: init_creds_step: %d", v21, v22, v23, v24, v25, v26, inited);
    _gsskrb5_error_token(a1, *(a3 + 32), a4, v27, 0, 0, a11);
    *a1 = v27;
    return 851968;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  *principal = 0u;
  _gss_mg_log(1, "gss-iakerb: going to state auth-tgs", v21, v22, v23, v24, v25, v26, v33);
  v28 = *(a3 + 240);
  creds = krb5_init_creds_get_creds();
  if (creds)
  {
    *a1 = creds;
    _gsskrb5_error_token(a1, *(a3 + 32), a4, creds, 0, 0, a11);
    return 851968;
  }

  krb5_cc_initialize(a4, *(a3 + 104), principal[0]);
  krb5_cc_store_cred(a4, *(a3 + 104), principal);
  v30 = *(a3 + 264);
  if (v30)
  {
    v34.data = *(a3 + 264);
    *&v34.magic = strlen(v30);
    krb5_cc_set_config(a4, *(a3 + 104), 0, "password", &v34);
  }

  if (*(a3 + 216))
  {
    *&v34.magic = 0;
    v34.data = 0;
    persistent = hx509_cert_get_persistent();
    if (!persistent)
    {
      krb5_cc_set_config(a4, *(a3 + 104), 0, "certificate-ref", &v34);
      der_free_octet_string();
      goto LABEL_18;
    }

LABEL_5:
    *a1 = persistent;
    return 851968;
  }

LABEL_18:
  if (*(a3 + 280))
  {
    krb5_cc_set_config(a4, *(a3 + 104), 0, "FriendlyName", (a3 + 280));
  }

  if (*(a3 + 296))
  {
    v34 = xmmword_278A5B0C0;
    krb5_cc_set_config(a4, *(a3 + 104), 0, "lkdc-hostname", (a3 + 296));
    krb5_cc_set_config(a4, *(a3 + 104), 0, "nah-created", &v34);
    krb5_cc_set_config(a4, *(a3 + 104), 0, "iakerb", &v34);
  }

  v32 = *(a3 + 56);
  v31 = a3 + 56;
  krb5_free_principal(a4, v32);
  krb5_copy_principal(a4, principal[0], v31);
  krb5_free_cred_contents(a4, principal);
  result = 0;
  *(v31 + 32) = step_iakerb_auth_tgs;
  return result;
}

uint64_t setup_icc(_krb5_context *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = (a2 + 29);
  if (a2[29])
  {
    setup_icc_cold_1();
  }

  if (a2[27])
  {
    v11 = "yes";
  }

  else
  {
    v11 = "no";
  }

  a2[33];
  _gss_mg_log(1, "gss-iakerb: setup_icc: cert: %s passwd: %s", a3, a4, a5, a6, a7, a8, v11);
  result = krb5_get_init_creds_opt_alloc(a1, v8);
  if (result)
  {
    goto LABEL_6;
  }

  krb5_get_init_creds_opt_set_canonicalize(a1, a2[29]);
  if (a2[27])
  {
    v14 = *v8;
    result = krb5_get_init_creds_opt_set_pkinit();
    if (result)
    {
      goto LABEL_6;
    }
  }

  v15 = a2[29];
  result = krb5_init_creds_init();
  if (result)
  {
    goto LABEL_6;
  }

  v16 = a2[27];
  if (!a2[33])
  {
    if (!v16)
    {
      setup_icc_cold_2();
    }

    goto LABEL_14;
  }

  if (v16)
  {
LABEL_14:
    v17 = a2[30];
    v18 = a2[27];
    result = krb5_init_creds_set_pkinit_client_cert();
    if (result)
    {
      goto LABEL_6;
    }

    if (!a2[33])
    {
LABEL_17:
      result = 0;
      goto LABEL_6;
    }
  }

  v19 = a2[30];
  result = krb5_init_creds_set_password();
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_6:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t step_pku2u_auth(int *a1, uint64_t a2, uint64_t a3, _krb5_context *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t *a10, size_t *a11)
{
  v28 = 0;
  v27[0] = 0;
  v27[1] = 0;
  v26[0] = 0;
  v26[1] = 0;
  krb5_data_zero();
  if (a10 && *a10)
  {
    v14 = *(a3 + 224);
    v15 = a10[1];
    krb5_storage_write();
    result = _gsskrb5_decapsulate(a1, a10, v27, &word_23894DBA9, *(a3 + 32));
    if (result)
    {
      return result;
    }
  }

  else
  {
    krb5_data_zero();
  }

  v17 = *(a3 + 240);
  inited = krb5_init_creds_step();
  if (inited)
  {
    goto LABEL_7;
  }

  if (v28)
  {
    creds = _gsskrb5_encapsulate(a1, v26, a11, &word_23894DBAC, *(a3 + 32));
    if (!creds)
    {
      v23 = *(a3 + 224);
      v25 = *a11;
      v24 = a11[1];
      krb5_storage_write();
      result = 1;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v20 = malloc_type_calloc(1uLL, 0x90uLL, 0x10A0040AAA52FDDuLL);
  *(a3 + 96) = v20;
  if (!v20)
  {
    creds = 12;
    goto LABEL_8;
  }

  v21 = *(a3 + 240);
  creds = krb5_init_creds_get_creds();
  v22 = *(a3 + 240);
  krb5_init_creds_free();
  *(a3 + 240) = 0;
  if (!creds)
  {
    inited = krb5_copy_principal(a4, **(a3 + 96), (a3 + 56));
    if (inited)
    {
LABEL_7:
      creds = inited;
      goto LABEL_8;
    }

    result = krb5_copy_principal(a4, *(*(a3 + 96) + 8), (a3 + 64));
    creds = result;
    if (!result)
    {
      *(a3 + 88) = step_setup_keys;
      goto LABEL_9;
    }
  }

LABEL_8:
  result = 851968;
LABEL_9:
  *a1 = creds;
  return result;
}

uint64_t __ApplePrivate__gsskrb5_init(krb5_context *a1)
{
  heim_base_once_f();
  v2 = pthread_getspecific(context_key);
  *a1 = v2;
  if (v2)
  {
    krb5_reload_config();
    return 0;
  }

  else
  {
    inited = krb5_init_context(a1);
    if (!inited)
    {
      inited = pthread_setspecific(context_key, *a1);
      if (inited)
      {
        v4 = *a1;
        heim_release();
        *a1 = 0;
      }
    }
  }

  return inited;
}

uint64_t once_func()
{
  _gsskrb5_kGSSICPassword = heim_string_create();
  _gsskrb5_kGSSICCertificate = heim_string_create();
  _gsskrb5_kGSSICSiteName = heim_string_create();
  _gsskrb5_kGSSICKerberosCacheName = heim_string_create();
  _gsskrb5_kGSSICLKDCHostname = heim_string_create();
  _gsskrb5_kGSSICAppIdentifierACL = heim_string_create();
  _gsskrb5_kGSSICAppleSourceApp = heim_string_create();
  _gsskrb5_kGSSICAppleSourceAppAuditToken = heim_string_create();
  _gsskrb5_kGSSICAppleSourceAppPID = heim_string_create();
  _gsskrb5_kGSSICAppleSourceAppUUID = heim_string_create();
  _gsskrb5_kGSSICAppleSourceAppSigningIdentity = heim_string_create();
  _gsskrb5_kGSSICVerifyCredential = heim_string_create();
  _gsskrb5_kGSSICVerifyCredentialAcceptorName = heim_string_create();
  _gsskrb5_kGSSICCreateNewCredential = heim_string_create();
  _gsskrb5_kGSSICAuthenticationContext = heim_string_create();

  return pthread_key_create(&context_key, destroy_context);
}

uint64_t destroy_context(uint64_t result)
{
  if (result)
  {
    return heim_release();
  }

  return result;
}

uint64_t _gsskrb5_inquire_context(_DWORD *a1, uint64_t a2, krb5_principal_data **a3, krb5_principal_data **a4, int *a5, void *a6, _DWORD *a7, int *a8, int *a9)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v23 = 0;
  v17 = __ApplePrivate__gsskrb5_init(&v23);
  if (v17)
  {
    *a1 = v17;
    return 851968;
  }

  pthread_mutex_lock((a2 + 128));
  if (a3)
  {
    v19 = *(a2 + 56);
    if (!v19)
    {
      v18 = 2529638933;
      goto LABEL_28;
    }

    v18 = _gsskrb5_duplicate_name(a1, v19, a3);
    if (v18)
    {
LABEL_28:
      _gsskrb5_release_name(0, a3);
      goto LABEL_29;
    }
  }

  if (!a4)
  {
    goto LABEL_13;
  }

  v20 = *(a2 + 64);
  if (!v20)
  {
    v18 = 2529638934;
    if (!a3)
    {
LABEL_29:
      if (a4)
      {
        _gsskrb5_release_name(0, a4);
      }

      pthread_mutex_unlock((a2 + 128));
      return v18;
    }

    goto LABEL_28;
  }

  v21 = _gsskrb5_duplicate_name(a1, v20, a4);
  if (v21)
  {
    goto LABEL_15;
  }

LABEL_13:
  if (a5)
  {
    v21 = _gsskrb5_lifetime_left(a1, v23, *(a2 + 120), a5);
    if (v21)
    {
LABEL_15:
      v18 = v21;
      if (!a3)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  if (a6)
  {
    *a6 = *(a2 + 32);
  }

  if (a7)
  {
    *a7 = *(a2 + 72);
  }

  if (a8)
  {
    *a8 = *(a2 + 76) & 1;
  }

  if (a9)
  {
    *a9 = *(a2 + 76) & 2;
  }

  *a1 = 0;
  pthread_mutex_unlock((a2 + 128));
  return 0;
}

uint64_t _gsskrb5_inquire_cred_by_mech(krb5_error_code *a1, uint64_t a2, uint64_t a3, krb5_ccache *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7)
{
  v13 = 0;
  result = _gsskrb5_inquire_cred(a1, a2, a4, &v13, &v13 + 1, 0);
  if (!result)
  {
    if (a5)
    {
      if (HIDWORD(v13) >= 2)
      {
        v11 = 0;
      }

      else
      {
        v11 = v13;
      }

      *a5 = v11;
    }

    if (a6)
    {
      if ((v13 & 0xFFFFFFFD00000000) != 0)
      {
        v12 = 0;
      }

      else
      {
        v12 = v13;
      }

      *a6 = v12;
    }

    if (a7)
    {
      *a7 = HIDWORD(v13);
    }
  }

  return result;
}

uint64_t _gsskrb5_inquire_cred_by_oid(OM_uint32 *a1, uint64_t a2, const gss_OID_desc *a3, gss_buffer_set_t *a4)
{
  v45 = *MEMORY[0x277D85DE8];
  member_buffer.value = 0;
  context = 0;
  member_buffer.length = 0;
  v8 = __ApplePrivate__gsskrb5_init(&context);
  if (v8)
  {
    *a1 = v8;
LABEL_3:
    result = 851968;
    goto LABEL_18;
  }

  if (!gss_oid_equal(a3, &__gss_krb5_copy_ccache_x_oid_desc))
  {
    if (gss_oid_equal(a3, &__gss_c_cred_validate_oid_desc))
    {
      k5_vic_options[0] = 0;
      k5_vic_options[1] = 0;
      cursor = 0;
      if (!*(a2 + 40) || !*a2)
      {
        goto LABEL_3;
      }

      krb5_verify_init_creds_opt_init(k5_vic_options);
      krb5_verify_init_creds_opt_set_ap_req_nofail(k5_vic_options, 1);
      pthread_mutex_lock((a2 + 48));
      v11 = *(a2 + 40);
      v12 = *(*a2 + 24);
      krbtgt = _krb5_get_krbtgt();
      if (krbtgt)
      {
        goto LABEL_12;
      }

      inited = krb5_verify_init_creds(context, cursor, 0, 0, (a2 + 40), k5_vic_options);
      krb5_free_creds(context, cursor);
      pthread_mutex_unlock((a2 + 48));
      if (inited)
      {
        goto LABEL_47;
      }

LABEL_51:
      result = 0;
      goto LABEL_18;
    }

    if (gss_oid_equal(a3, &__gss_c_nt_uuid_oid_desc))
    {
      k5_vic_options[0] = 0;
      k5_vic_options[1] = 0;
      pthread_mutex_lock((a2 + 48));
      if (*(a2 + 40))
      {
        inited = krb5_cc_get_uuid();
        pthread_mutex_unlock((a2 + 48));
        if (inited)
        {
          goto LABEL_47;
        }

        v16 = krb5_uuid_to_string();
        if (v16)
        {
          v17 = v16;
          member_buffer.value = v16;
          member_buffer.length = strlen(v16);
          v18 = gss_add_buffer_set_member(a1, &member_buffer, a4);
          free(v17);
          if (v18)
          {
            _gsskrb5_clear_status();
          }

          goto LABEL_51;
        }

        v24 = 12;
LABEL_50:
        *a1 = v24;
        goto LABEL_3;
      }

      pthread_mutex_unlock((a2 + 48));
LABEL_49:
      v24 = 22;
      goto LABEL_50;
    }

    if (gss_oid_equal(a3, &__gss_c_cred_diag_oid_desc))
    {
      __s = 0;
      cursor = 0;
      v43 = 0u;
      v44 = 0u;
      v42 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      *&k5_vic_options[0].flags = 0u;
      *v37 = 0u;
      if (!*(a2 + 40))
      {
        full_name = 22;
        goto LABEL_66;
      }

      full_name = krb5_cc_get_full_name();
      pthread_mutex_unlock((a2 + 48));
      if (full_name)
      {
LABEL_66:
        *a1 = full_name;
        goto LABEL_3;
      }

      member_buffer.value = __s;
      member_buffer.length = strlen(__s);
      v20 = gss_add_buffer_set_member(a1, &member_buffer, a4);
      free(__s);
      if (v20)
      {
        _gsskrb5_clear_status();
      }

      if (rtbl_create())
      {
        rtbl_add_column();
        rtbl_add_column();
        rtbl_add_column();
        rtbl_add_column();
        rtbl_set_separator();
        pthread_mutex_lock((a2 + 48));
        full_name = krb5_cc_start_seq_get(context, *(a2 + 40), &cursor);
        if (full_name)
        {
          goto LABEL_44;
        }

        for (i = krb5_cc_next_cred(context, *(a2 + 40), &cursor, k5_vic_options); !i; i = krb5_cc_next_cred(context, *(a2 + 40), &cursor, k5_vic_options))
        {
          if (!krb5_unparse_name(context, *&k5_vic_options[1], &__s))
          {
            rtbl_add_column_entry();
            free(__s);
            printable_time(v39);
            rtbl_add_column_entry();
            if (time(0) < *(&v39 + 1))
            {
              printable_time(*(&v39 + 1));
            }

            rtbl_add_column_entry();
            if (!krb5_enctype_to_string(context, LODWORD(v37[0]), &__s))
            {
              rtbl_add_column_entry();
              free(__s);
            }
          }

          krb5_free_cred_contents(context, k5_vic_options);
        }

        full_name = i;
        krb5_cc_end_seq_get(context, *(a2 + 40), &cursor);
        if (full_name != -1765328242)
        {
LABEL_44:
          pthread_mutex_unlock((a2 + 48));
          rtbl_destroy();
          if (!full_name)
          {
            goto LABEL_51;
          }

          goto LABEL_66;
        }

        v22 = rtbl_format_str();
        member_buffer.value = v22;
        if (v22)
        {
          member_buffer.length = strlen(v22);
          v23 = gss_add_buffer_set_member(a1, &member_buffer, a4);
          free(member_buffer.value);
          if (v23)
          {
            _gsskrb5_clear_status();
          }

          member_buffer.length = 0;
          member_buffer.value = 0;
          gss_add_buffer_set_member(a1, &member_buffer, a4);
          full_name = 0;
          goto LABEL_44;
        }
      }

      full_name = 12;
      goto LABEL_66;
    }

    if (gss_oid_equal(a3, &__gss_c_cred_set_default_oid_desc))
    {
      pthread_mutex_lock((a2 + 48));
      if (!*(a2 + 40))
      {
        pthread_mutex_unlock((a2 + 48));
        inited = 22;
        goto LABEL_47;
      }

      inited = krb5_cc_switch();
      pthread_mutex_unlock((a2 + 48));
      if (inited)
      {
LABEL_47:
        *a1 = inited;
        goto LABEL_3;
      }
    }

    else
    {
      if (!gss_oid_equal(a3, &__gss_c_cred_get_default_oid_desc))
      {
        if (!gss_oid_equal(a3, &__gss_c_cred_renew_oid_desc))
        {
          goto LABEL_49;
        }

        cursor = 0;
        *&k5_vic_options[0].flags = 0u;
        *v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        pthread_mutex_lock((a2 + 48));
        krbtgt = krb5_cc_get_principal(context, *(a2 + 40), k5_vic_options);
        if (krbtgt)
        {
LABEL_12:
          inited = krbtgt;
          pthread_mutex_unlock((a2 + 48));
          goto LABEL_47;
        }

        realm = krb5_principal_get_realm();
        principal = krb5_make_principal();
        if (principal || (principal = krb5_get_credentials(context, 1, *(a2 + 40), k5_vic_options, &cursor)) != 0)
        {
          inited = principal;
          pthread_mutex_unlock((a2 + 48));
          krb5_free_cred_contents(context, k5_vic_options);
          goto LABEL_47;
        }

        if ((*(cursor + 34) & 0x100) == 0)
        {
          pthread_mutex_unlock((a2 + 48));
          krb5_free_cred_contents(context, k5_vic_options);
          krb5_free_creds(context, cursor);
          krb5_set_error_message(context, 35224071, "Credential is not renewable", "krbtgt", realm, 0);
          *a1 = 35224071;
          goto LABEL_3;
        }

        krb5_free_creds(context, cursor);
        cursor = 0;
        v30 = *(a2 + 40);
        inited = krb5_get_kdc_cred();
        if (!inited)
        {
          krb5_cc_remove_cred(context, *(a2 + 40), 0, k5_vic_options);
          inited = krb5_cc_store_cred(context, *(a2 + 40), cursor);
          krb5_free_creds(context, cursor);
        }

        krb5_free_cred_contents(context, k5_vic_options);
        pthread_mutex_unlock((a2 + 48));
        if (inited)
        {
          goto LABEL_47;
        }

        v25 = "renewed";
LABEL_56:
        member_buffer.length = 7;
        member_buffer.value = v25;
        result = gss_add_buffer_set_member(a1, &member_buffer, a4);
        goto LABEL_18;
      }

      k5_vic_options[0] = 0;
      pthread_mutex_lock((a2 + 48));
      v26 = *(a2 + 40);
      inited = krb5_cc_get_full_name();
      pthread_mutex_unlock((a2 + 48));
      if (inited)
      {
        goto LABEL_47;
      }

      v27 = krb5_cc_default_name(context);
      v28 = k5_vic_options[0];
      if (!v27 || strcmp(*k5_vic_options, v27))
      {
        free(v28);
        goto LABEL_49;
      }

      free(v28);
    }

    v25 = "default";
    goto LABEL_56;
  }

  k5_vic_options[0] = 0;
  pthread_mutex_lock((a2 + 48));
  if (*(a2 + 40))
  {
    v10 = krb5_cc_get_full_name();
    pthread_mutex_unlock((a2 + 48));
    if (v10)
    {
      result = 851968;
    }

    else
    {
      member_buffer.value = k5_vic_options[0];
      member_buffer.length = strlen(*k5_vic_options);
      if (gss_add_buffer_set_member(a1, &member_buffer, a4))
      {
        _gsskrb5_clear_status();
      }

      free(*k5_vic_options);
      v10 = 0;
      result = 0;
    }
  }

  else
  {
    pthread_mutex_unlock((a2 + 48));
    result = 851968;
    v10 = 22;
  }

  *a1 = v10;
LABEL_18:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t printable_time(time_t a1)
{
  v2 = a1;
  ctime(&v2);
  result = __strlcpy_chk();
  byte_27DF41C34 = 0;
  return result;
}

uint64_t _gsskrb5_inquire_cred(krb5_error_code *a1, uint64_t a2, krb5_ccache *a3, int *a4, int *a5, gss_OID_set *a6)
{
  v30 = 0;
  v31 = 0;
  *a1 = 0;
  if (a3)
  {
    *a3 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  context = 0;
  v12 = __ApplePrivate__gsskrb5_init(&context);
  if (v12)
  {
    *a1 = v12;
    return 851968;
  }

  if (a2)
  {
    v14 = *(a2 + 16);
    if (v14)
    {
      v15 = a2;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = a2;
    }

    if (*(a2 + 32) == 1)
    {
      v17 = *a2;
      if (*a2)
      {
        cache = 0;
        v18 = krb5_cc_cache_match(context, v17, &cache);
        if (v18)
        {
          *a1 = v18;
          return 655360;
        }

        krb5_cc_close(context, cache);
      }
    }
  }

  else
  {
    if (_gsskrb5_acquire_cred(a1, 0, 0xFFFFFFFFLL, 0, 2u, &v30))
    {
      v15 = 0;
    }

    else
    {
      v15 = v30;
    }

    if (_gsskrb5_acquire_cred(a1, 0, 0xFFFFFFFFLL, 0, 1u, &v31))
    {
      v16 = 0;
    }

    else
    {
      v16 = v31;
    }

    if (!(v16 | v15))
    {
      *a1 = 0;
      return 458752;
    }
  }

  if (v15)
  {
    pthread_mutex_lock((v15 + 48));
  }

  if (v16)
  {
    pthread_mutex_lock((v16 + 48));
    if (!a3)
    {
      goto LABEL_46;
    }

    if (*v16)
    {
      if (!v15 || (v19 = *v15) == 0)
      {
        v19 = *v16;
      }

      empty_oid_set = _gsskrb5_duplicate_name(a1, v19, a3);
      if (empty_oid_set)
      {
        goto LABEL_70;
      }

      goto LABEL_46;
    }
  }

  else if (!a3)
  {
    goto LABEL_46;
  }

  if (v15 && *(v15 + 32) == 2)
  {
    cache = 0;
    v21 = krb5_sname_to_principal(context, 0, 0, 3, &cache);
    *a1 = v21;
    if (v21)
    {
      v13 = 851968;
LABEL_71:
      pthread_mutex_unlock((v15 + 48));
      goto LABEL_72;
    }

    *a3 = cache;
    if (a4)
    {
      goto LABEL_48;
    }

    goto LABEL_56;
  }

  cache = 0;
  default_principal = krb5_get_default_principal();
  *a1 = default_principal;
  if (default_principal)
  {
    v13 = 851968;
    if (!v15)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  *a3 = cache;
LABEL_46:
  if (a4)
  {
    if (!v15)
    {
      v23 = 0x7FFFFFFFLL;
      if (v16)
      {
        goto LABEL_49;
      }

      goto LABEL_51;
    }

LABEL_48:
    v23 = *(v15 + 24);
    if (v16)
    {
LABEL_49:
      v24 = *(v16 + 24);
      goto LABEL_52;
    }

LABEL_51:
    v24 = 0x7FFFFFFFLL;
LABEL_52:
    if (v23 >= v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = v23;
    }

    empty_oid_set = _gsskrb5_lifetime_left(a1, context, v25, a4);
    if (empty_oid_set)
    {
      goto LABEL_70;
    }
  }

LABEL_56:
  if (a5)
  {
    if (!(v15 | v16))
    {
      abort();
    }

    if (v16)
    {
      v26 = v15 == 0;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      v27 = 2;
    }

    else
    {
      v27 = 0;
    }

    if (!v15)
    {
      v27 = 1;
    }

    *a5 = v27;
  }

  if (!a6 || (empty_oid_set = gss_create_empty_oid_set(a1, a6), !empty_oid_set) && (empty_oid_set = gss_add_oid_set_member(a1, &__gss_krb5_mechanism_oid_desc, a6), !empty_oid_set))
  {
    v13 = 0;
    if (!v15)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

LABEL_70:
  v13 = empty_oid_set;
  if (v15)
  {
    goto LABEL_71;
  }

LABEL_72:
  if (v16)
  {
    pthread_mutex_unlock((v16 + 48));
  }

  if (v31)
  {
    v13 = _gsskrb5_release_cred(a1, &v31);
  }

  if (v30)
  {
    return _gsskrb5_release_cred(a1, &v30);
  }

  return v13;
}

uint64_t _gsskrb5_inquire_mechs_for_name(OM_uint32 *a1, int a2, gss_OID_set *oid_set)
{
  empty_oid_set = gss_create_empty_oid_set(a1, oid_set);
  if (!empty_oid_set)
  {
    empty_oid_set = gss_add_oid_set_member(a1, &__gss_krb5_mechanism_oid_desc, oid_set);
    if (empty_oid_set)
    {
      minor_status = 0;
      gss_release_oid_set(&minor_status, oid_set);
    }
  }

  return empty_oid_set;
}

uint64_t _gsskrb5_inquire_sec_context_by_oid(OM_uint32 *a1, uint64_t a2, gss_OID_desc *a3, gss_buffer_set_t *a4)
{
  if (!a2)
  {
    *a1 = 22;
    return 0x80000;
  }

  v27 = 0;
  v8 = __ApplePrivate__gsskrb5_init(&v27);
  if (v8)
  {
    *a1 = v8;
    return 851968;
  }

  if (gss_oid_equal(a3, &__gss_krb5_get_tkt_flags_x_oid_desc))
  {
    pthread_mutex_lock((a2 + 128));
    v10 = *(a2 + 112);
    if (!v10)
    {
      pthread_mutex_unlock((a2 + 128));
      _gsskrb5_set_status(22, "No ticket from which to obtain flags", v16, v17, v18, v19, v20, v21, v27);
      *a1 = 22;
      return 0x10000;
    }

    v11 = TicketFlags2int(*v10);
    pthread_mutex_unlock((a2 + 128));
    _gss_mg_encode_le_uint32(v11, &v29);
    member_buffer.length = 4;
    member_buffer.value = &v29;
    return gss_add_buffer_set_member(a1, &member_buffer, a4);
  }

  if (!gss_oid_equal(a3, &__gss_c_peer_has_updated_spnego_oid_desc))
  {
    if (gss_oid_equal(a3, &__gss_krb5_get_subkey_x_oid_desc))
    {
      v22 = v27;
      v23 = a1;
      v24 = a2;
      v25 = 2;
    }

    else if (gss_oid_equal(a3, &__gss_krb5_get_initiator_subkey_x_oid_desc))
    {
      v22 = v27;
      v23 = a1;
      v24 = a2;
      v25 = 1;
    }

    else
    {
      if (!gss_oid_equal(a3, &__gss_krb5_get_acceptor_subkey_x_oid_desc))
      {
        if (gss_oid_equal(a3, &__gss_c_inq_sspi_session_key_oid_desc))
        {
          return inquire_sec_context_get_sspi_session_key(a1, a2, v27, a4);
        }

        if (gss_oid_equal(a3, &__gss_krb5_get_authtime_x_oid_desc))
        {
          return get_authtime(a1, a2, a4);
        }

        if (gss_oid_equal(a3, &__gss_c_ctx_pfs_x_oid_desc))
        {
          return get_pfs_status(a1, a2, a4);
        }

        LODWORD(member_buffer.length) = 0;
        if (!oid_prefix_equal(&a3->length, &__gss_krb5_extract_authz_data_from_sec_context_x_oid_desc.length, &member_buffer))
        {
          if (oid_prefix_equal(&a3->length, &__gss_krb5_export_lucid_context_x_oid_desc.length, &member_buffer))
          {
            if (LODWORD(member_buffer.length) == 1)
            {
              return export_lucid_sec_context_v1(a1, a2, v27, a4);
            }
          }

          else if (gss_oid_equal(a3, &__gss_krb5_get_service_keyblock_x_oid_desc))
          {
            return get_service_keyblock(a1, a2, a4);
          }

          *a1 = 0;
          return 851968;
        }

        return inquire_sec_context_authz_data(a1, a2, v27, member_buffer.length, a4);
      }

      v22 = v27;
      v23 = a1;
      v24 = a2;
      v25 = 0;
    }

    return inquire_sec_context_get_subkey(v23, v24, v22, v25, a4);
  }

  *a1 = 0;
  *a4 = 0;
  pthread_mutex_lock((a2 + 128));
  v9 = 0;
  if ((*(a2 + 76) & 0x40) == 0)
  {
    v13 = *(a2 + 40);
    v14 = 48;
    if ((*(a2 + 76) & 1) == 0)
    {
      v14 = 40;
    }

    v15 = *(v13 + v14);
    v9 = 851968;
    if (v15)
    {
      if (*v15 == **(v13 + 32))
      {
        v9 = 851968;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  pthread_mutex_unlock((a2 + 128));
  return v9;
}

uint64_t inquire_sec_context_get_subkey(OM_uint32 *a1, pthread_mutex_t *a2, _krb5_context *a3, int a4, gss_buffer_set_t *a5)
{
  v23.value = 0;
  v24 = 0;
  v23.length = 0;
  krb5_data_zero();
  if (!krb5_storage_emem())
  {
    _gsskrb5_clear_status();
    krb5_data_free();
    v11 = 12;
LABEL_11:
    *a1 = v11;
    return 851968;
  }

  pthread_mutex_lock(a2 + 2);
  if (a4 == 2)
  {
    token_key = _gsskrb5i_get_token_key(a2, a3, &v24);
  }

  else if (a4 == 1)
  {
    token_key = _gsskrb5i_get_initiator_subkey(a2, a3, &v24);
  }

  else
  {
    token_key = _gsskrb5i_get_acceptor_subkey(a2, a3, &v24);
  }

  v11 = token_key;
  pthread_mutex_unlock(a2 + 2);
  if (v11)
  {
    goto LABEL_9;
  }

  if (!v24)
  {
    v11 = 22;
    _gsskrb5_set_status(22, "have no subkey of type %u", v12, v13, v14, v15, v16, v17, a4);
LABEL_9:
    v18 = 0;
    goto LABEL_10;
  }

  v20 = *&v24->magic;
  contents = v24->contents;
  member_buffer = v20;
  v11 = krb5_store_keyblock();
  krb5_free_keyblock(a3, v24);
  if (v11)
  {
    goto LABEL_9;
  }

  v11 = krb5_storage_to_data();
  if (v11)
  {
    goto LABEL_9;
  }

  member_buffer = v23;
  v18 = gss_add_buffer_set_member(a1, &member_buffer, a5);
LABEL_10:
  krb5_data_free();
  krb5_storage_free();
  if (v11)
  {
    goto LABEL_11;
  }

  return v18;
}

uint64_t inquire_sec_context_get_sspi_session_key(OM_uint32 *a1, pthread_mutex_t *a2, _krb5_context *a3, gss_buffer_set_t *a4)
{
  v13 = 0;
  pthread_mutex_lock(a2 + 2);
  token_key = _gsskrb5i_get_token_key(a2, a3, &v13);
  pthread_mutex_unlock(a2 + 2);
  if (!token_key)
  {
    if (v13)
    {
      contents = v13->contents;
      member_buffer.length = *&v13->length;
      member_buffer.value = contents;
      v9 = gss_add_buffer_set_member(a1, &member_buffer, a4);
      krb5_free_keyblock(a3, v13);
      return v9;
    }

    token_key = 22;
  }

  *a1 = token_key;
  return 851968;
}

uint64_t get_authtime(OM_uint32 *a1, uint64_t a2, gss_buffer_set_t *a3)
{
  pthread_mutex_lock((a2 + 128));
  v6 = *(a2 + 112);
  if (v6)
  {
    v7 = *(v6 + 88);
    pthread_mutex_unlock((a2 + 128));
    _gss_mg_encode_le_uint32(v7, &v16);
    member_buffer.length = 4;
    member_buffer.value = &v16;
    return gss_add_buffer_set_member(a1, &member_buffer, a3);
  }

  else
  {
    pthread_mutex_unlock((a2 + 128));
    _gsskrb5_set_status(22, "No ticket to obtain auth time from", v9, v10, v11, v12, v13, v14, v15);
    *a1 = 22;
    return 851968;
  }
}

uint64_t get_pfs_status(OM_uint32 *a1, uint64_t a2, gss_buffer_set_t *a3)
{
  pthread_mutex_lock((a2 + 128));
  v6 = *(a2 + 40);
  if (v6)
  {
    v7 = *v6;
    pthread_mutex_unlock((a2 + 128));
    if ((v7 & 0x100) != 0)
    {
      _gss_mg_encode_le_uint32(1, &v16);
      member_buffer.length = 4;
      member_buffer.value = &v16;
      return gss_add_buffer_set_member(a1, &member_buffer, a3);
    }
  }

  else
  {
    pthread_mutex_unlock((a2 + 128));
  }

  _gsskrb5_set_status(22, "No auth_context or PFS", v8, v9, v10, v11, v12, v13, v15);
  *a1 = 22;
  return 851968;
}

uint64_t oid_prefix_equal(unsigned int *a1, unsigned int *a2, _DWORD *a3)
{
  *a3 = 0;
  v4 = *(a1 + 1);
  v5 = *a1;
  if (!der_get_oid())
  {
    v6 = *(a2 + 1);
    v7 = *a2;
    if (!der_get_oid())
    {
      der_free_oid();
    }

    der_free_oid();
  }

  return 0;
}

uint64_t inquire_sec_context_authz_data(OM_uint32 *a1, uint64_t a2, uint64_t a3, int a4, gss_buffer_set_t *a5)
{
  *a1 = 0;
  *a5 = 0;
  pthread_mutex_lock((a2 + 128));
  if (!*(a2 + 112))
  {
    pthread_mutex_unlock((a2 + 128));
    *a1 = 22;
    v15 = "No ticket to obtain authz data from";
    v16 = 22;
    goto LABEL_8;
  }

  if (a4 == 128 && (*(a2 + 76) & 0x80) == 0)
  {
    pthread_mutex_unlock((a2 + 128));
    *a1 = 22;
    v15 = "pac not valid";
    v16 = -1980176556;
LABEL_8:
    _gsskrb5_set_status(v16, v15, v9, v10, v11, v12, v13, v14, v20.length);
    return 0x80000;
  }

  v21.length = 0;
  v21.value = 0;
  authorization_data_type = krb5_ticket_get_authorization_data_type();
  pthread_mutex_unlock((a2 + 128));
  if (authorization_data_type)
  {
    *a1 = authorization_data_type;
    return 851968;
  }

  else
  {
    v20 = v21;
    v18 = gss_add_buffer_set_member(a1, &v20, a5);
    krb5_data_free();
  }

  return v18;
}

uint64_t export_lucid_sec_context_v1(OM_uint32 *a1, uint64_t a2, _krb5_context *a3, gss_buffer_set_t *a4)
{
  v25 = 0;
  v24 = 0;
  v23 = 0;
  *a1 = 0;
  pthread_mutex_lock((a2 + 128));
  v8 = *(a2 + 76);
  v9 = krb5_storage_emem();
  if (!v9)
  {
    _gsskrb5_clear_status();
    v14 = 12;
    goto LABEL_13;
  }

  token_key = krb5_store_int32();
  if (token_key)
  {
    goto LABEL_11;
  }

  v11 = *(a2 + 76);
  token_key = krb5_store_int32();
  if (token_key)
  {
    goto LABEL_11;
  }

  v12 = *(a2 + 120);
  token_key = krb5_store_int32();
  if (token_key)
  {
    goto LABEL_11;
  }

  krb5_auth_con_getlocalseqnumber(a3, *(a2 + 40), &v24);
  token_key = krb5_store_int32();
  if (token_key)
  {
    goto LABEL_11;
  }

  token_key = krb5_store_int32();
  if (token_key)
  {
    goto LABEL_11;
  }

  krb5_auth_con_getremoteseqnumber(a3, *(a2 + 40), &v24);
  token_key = krb5_store_int32();
  if (token_key)
  {
    goto LABEL_11;
  }

  token_key = krb5_store_int32();
  if (token_key)
  {
    goto LABEL_11;
  }

  v13 = v8 & 0x40;
  token_key = krb5_store_int32();
  if (token_key)
  {
    goto LABEL_11;
  }

  token_key = _gsskrb5i_get_token_key(a2, a3, &v25);
  if (token_key)
  {
    goto LABEL_11;
  }

  if (v13)
  {
    v18 = *(a2 + 8);
    token_key = krb5_store_int32();
    if (token_key)
    {
      goto LABEL_11;
    }

    v19 = *&v25->magic;
    contents = v25->contents;
    v21 = v19;
    token_key = krb5_store_keyblock();
    if (token_key)
    {
      goto LABEL_11;
    }

    if ((v18 & 4) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    magic = v25->magic;
    token_key = krb5_store_int32();
    if (token_key)
    {
      goto LABEL_11;
    }

    token_key = krb5_store_int32();
    if (token_key)
    {
      goto LABEL_11;
    }
  }

  v20 = *&v25->magic;
  contents = v25->contents;
  v21 = v20;
  token_key = krb5_store_keyblock();
  if (token_key)
  {
LABEL_11:
    v14 = token_key;
    goto LABEL_13;
  }

LABEL_30:
  token_key = krb5_storage_to_data();
  if (token_key)
  {
    goto LABEL_11;
  }

  v21 = v23;
  v14 = gss_add_buffer_set_member(a1, &v21, a4);
  krb5_data_free();
LABEL_13:
  if (v25)
  {
    krb5_free_keyblock(a3, v25);
  }

  if (v9)
  {
    krb5_storage_free();
  }

  if (v14)
  {
    *a1 = v14;
    v15 = 851968;
  }

  else
  {
    v15 = 0;
  }

  pthread_mutex_unlock((a2 + 128));
  return v15;
}

uint64_t get_service_keyblock(OM_uint32 *a1, pthread_mutex_t *a2, gss_buffer_set_t *a3)
{
  if (!krb5_storage_emem())
  {
    _gsskrb5_clear_status();
    v8 = 12;
LABEL_10:
    *a1 = v8;
    return 851968;
  }

  pthread_mutex_lock(a2 + 2);
  if (!a2[3].__sig)
  {
    pthread_mutex_unlock(a2 + 2);
    krb5_storage_free();
    v8 = 22;
    _gsskrb5_set_status(22, "No service keyblock on gssapi context", v10, v11, v12, v13, v14, v15, v17.length);
    goto LABEL_10;
  }

  v19 = 0;
  krb5_data_zero();
  sig = a2[3].__sig;
  v7 = *sig;
  length = sig[1].length;
  v17 = v7;
  v8 = krb5_store_keyblock();
  pthread_mutex_unlock(a2 + 2);
  if (v8 || (v8 = krb5_storage_to_data()) != 0)
  {
    v9 = 0;
  }

  else
  {
    v17 = v19;
    v9 = gss_add_buffer_set_member(a1, &v17, a3);
  }

  krb5_data_free();
  krb5_storage_free();
  if (v8)
  {
    goto LABEL_10;
  }

  return v9;
}

uint64_t _gsskrb5_pseudo_random(_DWORD *a1, pthread_mutex_t *a2, int a3, uint64_t a4, uint64_t a5, gss_buffer_desc_struct *a6)
{
  v40 = 0;
  if (!a2)
  {
    *a1 = 0;
    return 0x80000;
  }

  v7 = a5;
  if (a5 >= 1 && *a4 < 0xFFFFFFFFFFFFFFFCLL)
  {
    v46 = 0;
    v47 = 0;
    v42 = 0;
    v43 = 0;
    minor_status = 0;
    v13 = __ApplePrivate__gsskrb5_init(&v47);
    if (v13)
    {
      *a1 = v13;
      return 851968;
    }

    if (a3 == 1)
    {
      _gsskrb5i_get_initiator_subkey(a2, v47, &v40);
    }

    else
    {
      if (a3)
      {
        v21 = "unknown kerberos prf_key";
LABEL_17:
        _gsskrb5_set_status(22, v21, v14, v15, v16, v17, v18, v19, v40);
        *a1 = 22;
        return 851968;
      }

      _gsskrb5i_get_acceptor_subkey(a2, v47, &v40);
    }

    if (v40)
    {
      v20 = krb5_crypto_init();
      krb5_free_keyblock(v47, v40);
      if (v20)
      {
        *a1 = v20;
      }

      else
      {
        v22 = malloc_type_malloc(v7, 0xD3207CEuLL);
        a6->value = v22;
        if (v22)
        {
          a6->length = v7;
          pthread_mutex_lock(a2 + 2);
          v44 = *a4 + 4;
          v29 = malloc_type_malloc(v44, 0x9C14CF9AuLL);
          v45 = v29;
          if (v29)
          {
            memcpy(v29 + 4, *(a4 + 8), *a4);
            v36 = 0;
            value = a6->value;
            while (1)
            {
              _gss_mg_encode_be_uint32(v36, v45);
              v38 = krb5_crypto_prf();
              if (v38)
              {
                break;
              }

              if (v7 >= v42)
              {
                v39 = v42;
              }

              else
              {
                v39 = v7;
              }

              memcpy(value, v43, v39);
              value += v39;
              v7 -= v39;
              krb5_data_free();
              v36 = (v36 + 1);
              if (!v7)
              {
                free(v45);
                krb5_crypto_destroy();
                pthread_mutex_unlock(a2 + 2);
                return 0;
              }
            }

            *a1 = v38;
            free(v45);
          }

          else
          {
            _gsskrb5_set_status(35224200, "Out of memory", v30, v31, v32, v33, v34, v35, v40);
            *a1 = 35224200;
          }

          gss_release_buffer(&minor_status, a6);
          krb5_crypto_destroy();
          pthread_mutex_unlock(a2 + 2);
        }

        else
        {
          _gsskrb5_set_status(35224200, "Out of memory", v23, v24, v25, v26, v27, v28, v40);
          *a1 = 35224200;
          krb5_crypto_destroy();
        }
      }

      return 851968;
    }

    v21 = "no prf_key found";
    goto LABEL_17;
  }

  *a1 = 0;
  return 851968;
}

uint64_t _gsskrb5_release_buffer(_DWORD *a1, uint64_t a2)
{
  *a1 = 0;
  free(*(a2 + 8));
  *a2 = 0;
  *(a2 + 8) = 0;
  return 0;
}

uint64_t _gsskrb5_release_cred(_DWORD *a1, uint64_t *a2)
{
  *a1 = 0;
  v2 = *a2;
  if (*a2)
  {
    context = 0;
    *a2 = 0;
    v4 = __ApplePrivate__gsskrb5_init(&context);
    if (v4)
    {
      *a1 = v4;
      return 851968;
    }

    pthread_mutex_lock((v2 + 48));
    if (*v2)
    {
      krb5_free_principal(context, *v2);
    }

    v6 = *(v2 + 16);
    if (v6)
    {
      krb5_kt_close(context, v6);
    }

    v7 = *(v2 + 40);
    if (v7)
    {
      if (*(v2 + 8))
      {
        krb5_cc_destroy(context, v7);
      }

      else
      {
        krb5_cc_close(context, v7);
      }
    }

    v8 = *(v2 + 112);
    if (v8)
    {
      free(v8);
    }

    if (*(v2 + 120))
    {
      heim_release();
    }

    v9 = *(v2 + 128);
    if (v9)
    {
      v10 = strlen(*(v2 + 128));
      bzero(v9, v10);
      free(*(v2 + 128));
    }

    pthread_mutex_unlock((v2 + 48));
    pthread_mutex_destroy((v2 + 48));
    *v2 = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = 0u;
    *(v2 + 96) = 0u;
    *(v2 + 112) = 0u;
    *(v2 + 128) = 0;
    free(v2);
  }

  return 0;
}

uint64_t _gsskrb5_release_name(_DWORD *a1, krb5_principal_data **a2)
{
  v7 = 0;
  v4 = *a2;
  *a1 = 0;
  v5 = __ApplePrivate__gsskrb5_init(&v7);
  if (v5)
  {
    *a1 = v5;
    return 851968;
  }

  else
  {
    *a2 = 0;
    krb5_free_principal(v7, v4);
    return 0;
  }
}

uint64_t _gssapi_msg_order_create(int *a1, void *a2, int a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v9 = a5;
  }

  else
  {
    v9 = 20;
  }

  v10 = malloc_type_calloc(1uLL, 4 * v9 + 20, 0x86D08F19uLL);
  *a2 = v10;
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 12;
  }

  *a1 = v11;
  if (!v10)
  {
    return 851968;
  }

  v12 = v10;
  result = 0;
  *v12 = a3;
  v12[2] = 0;
  v12[3] = v9;
  v12[4] = a4;
  v12[5] = a4 - 1;
  *a1 = 0;
  return result;
}

uint64_t _gssapi_msg_order_destroy(void **a1)
{
  free(*a1);
  *a1 = 0;
  return 0;
}

uint64_t _gssapi_msg_order_check(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v2 = *result & 0xC;
    if (!v2)
    {
      return 0;
    }

    v3 = *(result + 20);
    if (v3 == a2 - 1)
    {
      elem_insert(result, 0, a2);
      return 0;
    }

    if (v3 >= a2 && *(result + 16) <= a2 && (v4 = *(result + 8)) != 0)
    {
      v5 = (v4 - 1);
      v6 = *(result + 20 + 4 * v5);
      if (v6 <= a2)
      {
        if (v6 == a2)
        {
          return 2;
        }

        else
        {
          v8 = -v5;
          v9 = 6;
          while (v8 + v9 != 6)
          {
            if (v3 == a2)
            {
              return 2;
            }

            v10 = *(result + 4 * v9++);
            v11 = v3 >= a2;
            v3 = v10;
            if (!v11)
            {
              v3 = v10;
              if (v10 < a2)
              {
                v12 = v2 != 4;
                elem_insert(result, v9 - 7, a2);
                return (8 * v12);
              }
            }
          }

          return 851968;
        }
      }

      else if (v2 == 4)
      {
        return 4;
      }

      else
      {
        return 8;
      }
    }

    else
    {
      v7 = v2 != 4;
      elem_insert(result, 0, a2);
      return (16 * v7);
    }
  }

  return result;
}

unsigned int *elem_insert(unsigned int *result, unint64_t a2, unsigned int a3)
{
  v3 = result[3];
  if (v3 <= a2)
  {
    elem_insert_cold_1();
  }

  v5 = a2;
  v6 = result;
  v7 = result[2];
  if (v7 > a2)
  {
    result = memmove(&result[a2 + 6], &result[a2 + 5], 4 * (v7 + ~a2));
    LODWORD(v7) = v6[2];
    LODWORD(v3) = v6[3];
  }

  v6[v5 % v3 + 5] = a3;
  if (v7 < v3)
  {
    v6[2] = v7 + 1;
  }

  return result;
}

uint64_t _gssapi_msg_order_export(uint64_t a1, unsigned int *a2)
{
  v3 = *a2;
  result = krb5_store_int32();
  if (!result)
  {
    v5 = a2[1];
    result = krb5_store_int32();
    if (!result)
    {
      v6 = a2[2];
      result = krb5_store_int32();
      if (!result)
      {
        v7 = a2[3];
        result = krb5_store_int32();
        if (!result)
        {
          v8 = a2[4];
          result = krb5_store_int32();
          if (!result)
          {
            if (a2[3])
            {
              v9 = 0;
              do
              {
                v10 = a2[v9 + 5];
                result = krb5_store_int32();
                if (result)
                {
                  break;
                }

                ++v9;
              }

              while (v9 < a2[3]);
            }

            else
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t _gssapi_msg_order_import(int *a1, uint64_t a2, void **a3)
{
  v5 = krb5_ret_int32();
  if (v5 || (v5 = krb5_ret_int32()) != 0 || (v5 = krb5_ret_int32()) != 0 || (v5 = krb5_ret_int32()) != 0 || (v5 = krb5_ret_int32()) != 0)
  {
    v6 = v5;
    free(*a3);
    *a3 = 0;
    result = 851968;
    if (!a1)
    {
      return result;
    }
  }

  else
  {
    v8 = malloc_type_calloc(1uLL, 0x14uLL, 0x86D08F19uLL);
    *a3 = v8;
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = 12;
    }

    *a1 = v9;
    if (!v8)
    {
      return 851968;
    }

    *v8 = 0;
    v8[1] = 0;
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = 0;
    v6 = 0;
    result = 0;
  }

  *a1 = v6;
  return result;
}

uint64_t _gsskrb5_set_cred_option(krb5_error_code *a1, uint64_t *a2, const gss_OID_desc *a3, unint64_t *a4)
{
  v30 = 0;
  v8 = __ApplePrivate__gsskrb5_init(&v30);
  if (v8)
  {
    *a1 = v8;
    return 851968;
  }

  if (!a4)
  {
LABEL_28:
    v17 = 22;
LABEL_29:
    *a1 = v17;
    return 851968;
  }

  if (gss_oid_equal(a3, &__gss_krb5_import_cred_x_oid_desc))
  {
    v9 = v30;
    keytab = 0;
    v34 = 0;
    cache = 0;
    if (a2)
    {
      if (!*a2)
      {
        v11 = *a4;
        v10 = a4[1];
        if (krb5_storage_from_mem())
        {
          v31 = 0;
          v12 = krb5_ret_string();
          if (!v12)
          {
            v19 = v31;
            if (*v31)
            {
              v12 = krb5_cc_resolve(v9, v31, &cache);
              if (v12)
              {
                goto LABEL_9;
              }

              v19 = v31;
            }

            free(v19);
            v31 = 0;
            v12 = krb5_ret_string();
            if (!v12)
            {
              v20 = v31;
              if (*v31)
              {
                v12 = krb5_parse_name(v9, v31, &v34);
                if (v12)
                {
                  goto LABEL_9;
                }

                v20 = v31;
              }

              free(v20);
              v31 = 0;
              v12 = krb5_ret_string();
              if (!v12)
              {
                v21 = v31;
                if (*v31)
                {
                  v12 = krb5_kt_resolve(v9, v31, &keytab);
                  if (v12)
                  {
                    goto LABEL_9;
                  }

                  v21 = v31;
                }

                free(v21);
                v31 = 0;
                v13 = _gsskrb5_krb5_import_cred(a1, cache, v34, keytab, a2);
                goto LABEL_10;
              }
            }
          }

LABEL_9:
          *a1 = v12;
          v13 = 851968;
LABEL_10:
          if (cache)
          {
            krb5_cc_close(v9, cache);
          }

          if (v34)
          {
            krb5_free_principal(v9, v34);
          }

          if (keytab)
          {
            krb5_kt_close(v9, keytab);
          }

          if (v31)
          {
            free(v31);
          }

          krb5_storage_free();
          return v13;
        }
      }
    }

LABEL_23:
    *a1 = 0;
    return 851968;
  }

  if (!gss_oid_equal(a3, &__gss_krb5_set_allowable_enctypes_x_oid_desc))
  {
    if (gss_oid_equal(a3, &__gss_krb5_cred_no_ci_flags_x_oid_desc))
    {
      if (a2 && (v16 = *a2) != 0)
      {
        v13 = 0;
        *(v16 + 8) |= 2u;
      }

      else
      {
        v13 = 851968;
      }

      *a1 = 0;
      return v13;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    goto LABEL_23;
  }

  v14 = *a2;
  if (!*a2)
  {
    goto LABEL_23;
  }

  v15 = *a4;
  if ((*a4 & 3) != 0)
  {
    goto LABEL_23;
  }

  v22 = malloc_type_malloc(v15 + 4, 0xB6C3C972uLL);
  if (!v22)
  {
    v17 = 12;
    goto LABEL_29;
  }

  v23 = v22;
  v25 = *a4;
  v24 = a4[1];
  if (!krb5_storage_from_mem())
  {
    *a1 = 12;
LABEL_60:
    free(v23);
    return 851968;
  }

  v26 = 0;
  if (v15)
  {
    v27 = v15 >> 2;
    while (1)
    {
      LODWORD(v34) = 0;
      v28 = krb5_ret_uint32();
      if (v28)
      {
        break;
      }

      if (!krb5_enctype_valid())
      {
        *(v23 + v26++) = v34;
      }

      if (!--v27)
      {
        goto LABEL_54;
      }
    }

    *a1 = v28;
    krb5_storage_free();
    goto LABEL_60;
  }

LABEL_54:
  *(v23 + v26) = 0;
  v29 = *(v14 + 112);
  if (v29)
  {
    free(v29);
  }

  *(v14 + 112) = v23;
  krb5_storage_free();
  return 0;
}

uint64_t _gsskrb5_set_sec_context_option(krb5_error_code *a1, uint64_t *a2, const gss_OID_desc *a3, uint64_t *a4)
{
  v31 = 0;
  v8 = __ApplePrivate__gsskrb5_init(&v31);
  if (v8)
  {
    *a1 = v8;
    return 851968;
  }

  if (!a4)
  {
    goto LABEL_44;
  }

  if (gss_oid_equal(a3, &__gss_krb5_compat_des3_mic_x_oid_desc))
  {
    v9 = *a2;
    if (!*a2)
    {
      *a1 = 22;
      return 0x80000;
    }

    v10 = a4[1];
    if (v10 && *a4 == 1)
    {
      v11 = *v10 != 0;
      pthread_mutex_lock((v9 + 128));
      *(v9 + 76) = *(v9 + 76) & 0xFFFFFFF3 | (4 * v11) | 8;
      pthread_mutex_unlock((v9 + 128));
      return 0;
    }

    goto LABEL_44;
  }

  if (gss_oid_equal(a3, &__gss_krb5_set_dns_canonicalize_x_oid_desc))
  {
    v12 = a4[1];
    if (v12 && *a4 == 1)
    {
      v13 = *v12;
      krb5_set_dns_canonicalize_hostname();
      return 0;
    }

LABEL_44:
    *a1 = 22;
    return 851968;
  }

  if (gss_oid_equal(a3, &__gss_krb5_register_acceptor_identity_x_oid_desc))
  {
    *v30 = 0;
    string = get_string(a1, a4, v30);
    if (!string)
    {
      v15 = *v30;
      string = _gsskrb5_register_acceptor_identity(a1, *v30);
      free(v15);
    }

    return string;
  }

  if (gss_oid_equal(a3, &__gss_krb5_set_default_realm_x_oid_desc))
  {
    *v30 = 0;
    string = get_string(a1, a4, v30);
    if (string)
    {
      return string;
    }

    v16 = *v30;
    if (!*v30)
    {
      string = 0x1000000;
      goto LABEL_36;
    }

    krb5_set_default_realm(v31, *v30);
    free(v16);
LABEL_34:
    string = 0;
LABEL_36:
    *a1 = 0;
    return string;
  }

  if (gss_oid_equal(a3, &__gss_krb5_ccache_name_x_oid_desc))
  {
    *v30 = 0;
    string = get_string(a1, a4, v30);
    if (!string)
    {
      v17 = *v30;
      v18 = krb5_cc_set_default_name(v31, *v30);
      *a1 = v18;
      if (v17)
      {
        free(v17);
        v18 = *a1;
      }

      if (v18)
      {
        return 851968;
      }

      else
      {
        return 0;
      }
    }

    return string;
  }

  if (gss_oid_equal(a3, &__gss_krb5_set_time_offset_x_oid_desc))
  {
    *a1 = 0;
    v19 = *a4;
    if (!*a4)
    {
LABEL_33:
      v20 = time(0);
      krb5_set_real_time(v31, v20 + v19, 0);
      goto LABEL_34;
    }

    if (v19 == 4)
    {
      LODWORD(v19) = *a4[1];
      goto LABEL_33;
    }

    return 0x100000;
  }

  if (gss_oid_equal(a3, &__gss_krb5_get_time_offset_x_oid_desc))
  {
    *v30 = 0;
    v29 = 0;
    v21 = time(0);
    krb5_us_timeofday(v31, v30, &v29);
    v22 = v30[0];
    *a1 = 0;
    if (*a4 == 4)
    {
      string = 0;
      *a4[1] = v22 - v21;
      goto LABEL_36;
    }

    return 0x100000;
  }

  if (!gss_oid_equal(a3, &__gss_krb5_plugin_register_x_oid_desc))
  {
    goto LABEL_44;
  }

  if (*a4 == 24)
  {
    v23 = a4[1];
    v24 = *v23;
    v25 = *(v23 + 1);
    v26 = *(v23 + 2);
    krb5_plugin_register_module();
    v27 = 0;
    string = 0;
  }

  else
  {
    string = 851968;
    v27 = 22;
  }

  *a1 = v27;
  return string;
}

uint64_t get_string(_DWORD *a1, uint64_t a2, void *a3)
{
  if (*a2)
  {
    v6 = malloc_type_malloc(*a2 + 1, 0x7293C17BuLL);
    *a3 = v6;
    if (v6)
    {
      memcpy(v6, *(a2 + 8), *a2);
      result = 0;
      *(*a3 + *a2) = 0;
    }

    else
    {
      *a1 = 0;
      return 0x100000;
    }
  }

  else
  {
    result = 0;
    *a3 = 0;
  }

  return result;
}

uint64_t _gsskrb5_unwrap(krb5_error_code *a1, uint64_t a2, unint64_t *a3, size_t *a4, int *a5, _DWORD *a6)
{
  v54 = *MEMORY[0x277D85DE8];
  *a4 = 0;
  a4[1] = 0;
  if (a6)
  {
    *a6 = 0;
  }

  v41 = 0;
  v42 = 0;
  v12 = __ApplePrivate__gsskrb5_init(&v41);
  if (!v12)
  {
    if ((*(a2 + 76) & 0x40) != 0)
    {
      v14 = _gssapi_unwrap_cfx(a1, a2, v41, a3, a4, a5, a6, v13);
      goto LABEL_51;
    }

    pthread_mutex_lock((a2 + 128));
    token_key = _gsskrb5i_get_token_key(a2, v41, &v42);
    pthread_mutex_unlock((a2 + 128));
    if (token_key)
    {
      *a1 = token_key;
      goto LABEL_5;
    }

    *a1 = 0;
    magic = v42->magic;
    if ((v42->magic - 23) < 2)
    {
      v20 = _gssapi_unwrap_arcfour(a1, a2, v41, a3, a4, a5, a6, v42);
      goto LABEL_23;
    }

    if (magic != 16 && magic != 5)
    {
      goto LABEL_49;
    }

    v18 = v41;
    v19 = *a3;
    if ((*(a2 + 73) & 0x10) != 0)
    {
      if (v19 < 0x39)
      {
LABEL_21:
        v14 = 0x10000;
LABEL_50:
        krb5_free_keyblock(v41, v42);
        goto LABEL_51;
      }

      v19 = 57;
    }

    v49 = 0;
    v50 = 0;
    v48 = 0;
    inptr = 0;
    v47 = 0;
    v44 = 0;
    p_ivec = 0;
    seed = 0;
    size = a3[1];
    v20 = _gsskrb5_verify_header(&size, v19, "\x02\x01", &__gss_krb5_mechanism_oid_desc);
    if (v20)
    {
LABEL_23:
      v14 = v20;
      goto LABEL_50;
    }

    if (size - a3[1] + 42 > *a3)
    {
      goto LABEL_21;
    }

    if (ct_memcmp())
    {
LABEL_25:
      v14 = 393216;
      goto LABEL_50;
    }

    size += 2;
    v21 = ct_memcmp();
    if (v21)
    {
      if (ct_memcmp())
      {
        goto LABEL_25;
      }

      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    size += 2;
    if (a5)
    {
      *a5 = v22;
    }

    if (ct_memcmp() || (size += 30, v23 = size - a3[1], v23 > *a3))
    {
      v14 = 589824;
      goto LABEL_50;
    }

    if (v21)
    {
LABEL_36:
      v40 = v23;
      if ((*(a2 + 73) & 0x10) != 0)
      {
        v47 = 0;
LABEL_42:
        pthread_mutex_lock((a2 + 128));
        size -= 28;
        v27 = krb5_crypto_init();
        if (v27)
        {
          *a1 = v27;
        }

        else
        {
          *&ivec = *(size + 8);
          v28 = krb5_decrypt_ivec();
          krb5_crypto_destroy();
          if (!v28)
          {
            if (v49 == 8)
            {
              _gss_mg_decode_le_uint32(v50, &v48);
              *(a2 + 76);
              v31 = ct_memcmp();
              krb5_data_free();
              if (!v31)
              {
                v32 = _gssapi_msg_order_check(*(a2 + 24), v48);
                if (v32)
                {
                  v14 = v32;
                  *a1 = 0;
                  pthread_mutex_unlock((a2 + 128));
                  goto LABEL_50;
                }

                pthread_mutex_unlock((a2 + 128));
                v33 = *(size + 8);
                v53 = *(size + 24);
                ivec = v33;
                *(size + 20) = *(size - 8);
                LODWORD(seed) = 12;
                v44 = 20;
                p_ivec = &ivec;
                v34 = krb5_crypto_init();
                if (v34)
                {
                  *a1 = v34;
                }

                else
                {
                  v36 = krb5_verify_checksum(v18, inptr, 0x17, (size + 20), *a3 - v40 + 8, &seed, v35);
                  krb5_crypto_destroy();
                  if (!v36)
                  {
                    v37 = *a3 - v47 - v40 - 8;
                    *a4 = v37;
                    v38 = malloc_type_malloc(v37, 0x633CBFE0uLL);
                    a4[1] = v38;
                    if (*a4)
                    {
                      v39 = v38 == 0;
                    }

                    else
                    {
                      v39 = 0;
                    }

                    if (v39)
                    {
                      v14 = 851968;
                    }

                    else
                    {
                      v14 = 0;
                    }

                    if (v38)
                    {
                      memcpy(v38, (size + 36), *a4);
                      v14 = 0;
                    }

                    goto LABEL_50;
                  }

                  *a1 = v36;
                }

                goto LABEL_49;
              }
            }

            else
            {
              krb5_data_free();
            }

            *a1 = 0;
            pthread_mutex_unlock((a2 + 128));
            goto LABEL_25;
          }

          *a1 = v28;
        }

        pthread_mutex_unlock((a2 + 128));
LABEL_49:
        v14 = 851968;
        goto LABEL_50;
      }

      v20 = _gssapi_verify_pad(a3, *a3 - v23 - 8, &v47);
      if (!v20)
      {
        goto LABEL_42;
      }

      goto LABEL_23;
    }

    v24 = size - a3[1];
    ivec = 0uLL;
    v25 = krb5_crypto_init();
    if (v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = krb5_decrypt(v18, inptr, 0x16, size, (*a3 - v24), &ivec);
      krb5_crypto_destroy();
      if (!v26)
      {
        if (ivec != *a3 - v24)
        {
          _gsskrb5_unwrap_cold_1();
        }

        memcpy(size, *(&ivec + 1), ivec);
        krb5_data_free();
        v23 = v24;
        goto LABEL_36;
      }
    }

    *a1 = v26;
    goto LABEL_49;
  }

  *a1 = v12;
LABEL_5:
  v14 = 851968;
LABEL_51:
  v29 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t _gsskrb5_verify_mic_internal(krb5_error_code *a1, uint64_t a2, _krb5_context *a3, uint64_t a4, uint64_t a5, _DWORD *a6, unsigned __int16 *a7, uint64_t a8)
{
  v46[2] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 76) & 0x40) == 0)
  {
    v38 = 0;
    pthread_mutex_lock((a2 + 128));
    token_key = _gsskrb5i_get_token_key(a2, a3, &v38);
    pthread_mutex_unlock((a2 + 128));
    if (token_key)
    {
      *a1 = token_key;
      v16 = 851968;
LABEL_32:
      v29 = *MEMORY[0x277D85DE8];
      return v16;
    }

    *a1 = 0;
    magic = v38->magic;
    if ((v38->magic - 23) < 2)
    {
      v16 = _gssapi_verify_mic_arcfour(a1, a2, a3, a4, a5, a6, v38, a7);
      goto LABEL_31;
    }

    if (magic != 16 && magic != 5)
    {
      goto LABEL_30;
    }

    v45 = 0;
    v43 = 0;
    *ctype = 0;
    v41 = 0;
    v42 = 0;
    seed = 0;
    v40 = 0;
    v21 = *a5;
    v46[0] = *(a5 + 8);
    v16 = _gsskrb5_verify_header(v46, v21, a7, &__gss_krb5_mechanism_oid_desc);
    if (v16)
    {
LABEL_31:
      krb5_free_keyblock(a3, v38);
      goto LABEL_32;
    }

    v22 = v46[0];
    if (*v46[0] != 4 || (v46[0] += 2, *(v22 + 2) != -1))
    {
LABEL_16:
      v16 = 393216;
      goto LABEL_31;
    }

    v46[0] = v22 + 6;
    v23 = krb5_crypto_init();
    if (v23)
    {
      *a1 = v23;
LABEL_30:
      v16 = 851968;
      goto LABEL_31;
    }

    v24 = 1;
    while (1)
    {
      while (1)
      {
        v25 = v24;
        v26 = (v24 & 1) != 0 ? *(v46[0] + 1) : 0;
        v46[1] = v26;
        v27 = krb5_decrypt_ivec();
        if (!v27)
        {
          break;
        }

        v24 = 0;
        if ((v25 & 1) == 0)
        {
          v28 = v27;
          krb5_crypto_destroy();
          *a1 = v28;
          goto LABEL_30;
        }
      }

      if (v42 == 8)
      {
        break;
      }

      krb5_data_free();
      v24 = 0;
      if ((v25 & 1) == 0)
      {
        krb5_crypto_destroy();
        goto LABEL_16;
      }
    }

    pthread_mutex_lock((a2 + 128));
    _gss_mg_decode_le_uint32(v43, &v45);
    *(a2 + 76);
    v30 = ct_memcmp();
    krb5_data_free();
    if (v30)
    {
      krb5_crypto_destroy();
      *a1 = 0;
    }

    else
    {
      v31 = _gssapi_msg_order_check(*(a2 + 24), v45);
      if (v31)
      {
        v16 = v31;
        krb5_crypto_destroy();
        *a1 = 0;
        pthread_mutex_unlock((a2 + 128));
        goto LABEL_31;
      }

      v32 = malloc_type_malloc(*a4 + 8, 0xC0D34F3BuLL);
      if (!v32)
      {
        krb5_crypto_destroy();
        pthread_mutex_unlock((a2 + 128));
        *a1 = 12;
        goto LABEL_30;
      }

      v33 = v32;
      *v32 = *(v46[0] - 1);
      memcpy(v32 + 1, *(a4 + 8), *a4);
      krb5_crypto_destroy();
      v34 = krb5_crypto_init();
      if (v34)
      {
        v36 = v34;
        free(v33);
        *a1 = v36;
      }

      else
      {
        LODWORD(seed) = 12;
        v40 = 20;
        v41 = v46[0] + 8;
        v37 = krb5_verify_checksum(a3, ctype[0], 0x17, v33, *a4 + 8, &seed, v35);
        free(v33);
        if (!v37)
        {
          pthread_mutex_unlock((a2 + 128));
          krb5_crypto_destroy();
          v16 = 0;
          goto LABEL_31;
        }

        krb5_crypto_destroy();
        *a1 = v37;
      }
    }

    pthread_mutex_unlock((a2 + 128));
    goto LABEL_16;
  }

  v17 = *MEMORY[0x277D85DE8];

  return _gssapi_verify_mic_cfx(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t _gsskrb5_verify_mic(krb5_error_code *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v13 = 0;
  v10 = __ApplePrivate__gsskrb5_init(&v13);
  if (v10)
  {
    *a1 = v10;
    return 851968;
  }

  else
  {
    if (a5)
    {
      *a5 = 0;
    }

    return _gsskrb5_verify_mic_internal(a1, a2, v13, a3, a4, a5, "\x01\x01", v11);
  }
}

uint64_t _gsskrb5i_get_initiator_subkey(uint64_t a1, _krb5_context *a2, krb5_keyblock **a3)
{
  *a3 = 0;
  v6 = *(a1 + 40);
  if (*(a1 + 76))
  {
    result = krb5_auth_con_getlocalsubkey();
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = krb5_auth_con_getremotesubkey();
    if (result)
    {
      return result;
    }
  }

  if (*a3)
  {
    return 0;
  }

  result = krb5_auth_con_getkey(a2, *(a1 + 40), a3);
  if (!result)
  {
    if (*a3)
    {
      return 0;
    }

    krb5_set_error_message(a2, 0, "No initiator subkey available");
    return 35224195;
  }

  return result;
}

uint64_t _gsskrb5i_get_acceptor_subkey(uint64_t a1, _krb5_context *a2, void *a3)
{
  *a3 = 0;
  v5 = *(a1 + 40);
  if (*(a1 + 76))
  {
    result = krb5_auth_con_getremotesubkey();
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = krb5_auth_con_getlocalsubkey();
    if (result)
    {
      return result;
    }
  }

  if (*a3)
  {
    return 0;
  }

  krb5_set_error_message(a2, 0, "No acceptor subkey available");
  return 35224195;
}

uint64_t _gsskrb5i_get_token_key(uint64_t a1, _krb5_context *a2, krb5_keyblock **a3)
{
  _gsskrb5i_get_acceptor_subkey(a1, a2, a3);
  if (*a3)
  {
    return 0;
  }

  if ((*(a1 + 8) & 4) == 0)
  {
    _gsskrb5i_get_initiator_subkey(a1, a2, a3);
    if (*a3)
    {
      return 0;
    }
  }

  krb5_set_error_message(a2, 0, "No token key available");
  return 35224195;
}

uint64_t _gsskrb5_wrap_size_limit(_DWORD *a1, pthread_mutex_t *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int *a6)
{
  v20 = 0;
  v21 = 0;
  v12 = __ApplePrivate__gsskrb5_init(&v21);
  if (v12)
  {
    *a1 = v12;
    return 851968;
  }

  if ((a2[1].__opaque[4] & 0x40) != 0)
  {
    return _gssapi_wrap_size_cfx(a1, &a2->__sig, v21, a3, a4, a5, a6);
  }

  pthread_mutex_lock(a2 + 2);
  token_key = _gsskrb5i_get_token_key(a2, v21, &v20);
  pthread_mutex_unlock(a2 + 2);
  if (token_key)
  {
    *a1 = token_key;
    return 851968;
  }

  magic = v20->magic;
  if ((v20->magic - 23) < 2)
  {
    v13 = _gssapi_wrap_size_arcfour(a1, a2, v21, a3, a4, a5, a6);
  }

  else if (magic == 16 || magic == 5)
  {
    v22 = 0;
    v23 = a5 + 50;
    _gsskrb5_encap_length(v23, &v23, &v22, &__gss_krb5_mechanism_oid_desc);
    v13 = 0;
    v17 = v22 - a5;
    if (v17 >= a5)
    {
      v18 = 0;
    }

    else
    {
      v18 = (a5 - v17) & 0xFFFFFFF8;
    }

    *a6 = v18;
  }

  else
  {
    v13 = 851968;
  }

  krb5_free_keyblock(v21, v20);
  *a1 = 0;
  return v13;
}

uint64_t _gsskrb5_wrap(krb5_error_code *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7)
{
  v54 = *MEMORY[0x277D85DE8];
  v39 = 0;
  v40 = 0;
  *a7 = 0;
  *(a7 + 8) = 0;
  v14 = __ApplePrivate__gsskrb5_init(&v40);
  if (!v14)
  {
    if ((*(a2 + 76) & 0x40) != 0)
    {
      v15 = _gssapi_wrap_cfx(a1, a2, v40, a3, a5, a6, a7);
      goto LABEL_32;
    }

    pthread_mutex_lock((a2 + 128));
    token_key = _gsskrb5i_get_token_key(a2, v40, &v39);
    pthread_mutex_unlock((a2 + 128));
    if (token_key)
    {
      *a1 = token_key;
      goto LABEL_3;
    }

    magic = v39->magic;
    if ((v39->magic - 23) < 2)
    {
      v15 = _gssapi_wrap_arcfour(a1, a2, v40, a3, a4, a5, a6, a7, v39);
LABEL_31:
      krb5_free_keyblock(v40, v39);
      goto LABEL_32;
    }

    if (magic != 16 && magic != 5)
    {
      goto LABEL_25;
    }

    v19 = v40;
    v49 = 0;
    inptr = 0;
    v47 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v41 = 0;
    v42 = 0;
    v20 = *a5;
    if ((*(a2 + 73) & 0x10) != 0)
    {
      v48 = 42;
      _gsskrb5_encap_length(42, &v48, &v47, &__gss_krb5_mechanism_oid_desc);
      v21 = 0;
      v22 = v47 + v20;
      v47 += v20;
    }

    else
    {
      v21 = 8 - (*a5 & 7);
      v20 += v21;
      v48 = v20 + 42;
      _gsskrb5_encap_length(v20 + 42, &v48, &v47, &__gss_krb5_mechanism_oid_desc);
      v22 = v47;
    }

    *a7 = v22;
    v23 = malloc_type_malloc(v22, 0x30F88E07uLL);
    *(a7 + 8) = v23;
    if (!v23)
    {
      *a7 = 0;
      *a1 = 12;
LABEL_25:
      v15 = 851968;
      goto LABEL_31;
    }

    header = _gsskrb5_make_header(v23, v48, "\x02\x01", &__gss_krb5_mechanism_oid_desc);
    v25 = header;
    *header = 4;
    if (a3)
    {
      v26 = 2;
    }

    else
    {
      v26 = -1;
    }

    *(header + 1) = v26;
    *(header + 2) = -1;
    *(header + 26) = *(header - 2);
    krb5_generate_random_block();
    memcpy(v25 + 42, *(a5 + 8), *a5);
    memset(&v25[*a5 + 42], v21, v21);
    v27 = krb5_crypto_init();
    if (v27)
    {
      v28 = v27;
      free(*(a7 + 8));
      *a7 = 0;
      *(a7 + 8) = 0;
      v15 = 851968;
      *a1 = v28;
      goto LABEL_31;
    }

    v29 = v25;
    checksum = krb5_create_checksum();
    krb5_crypto_destroy();
    if (checksum)
    {
LABEL_30:
      free(*(a7 + 8));
      *a7 = 0;
      *(a7 + 8) = 0;
      v15 = 851968;
      *a1 = checksum;
      goto LABEL_31;
    }

    *(v29 + 14) = 0;
    *(v29 + 6) = 0;
    *(v29 + 22) = 0;
    *(v29 + 30) = 0;
    memcpy(v29 + 14, v45, v44);
    free_Checksum(&v43);
    pthread_mutex_lock((a2 + 128));
    krb5_auth_con_getlocalseqnumber(v19, *(a2 + 40), &v49);
    v31 = 16843009 * ((*(a2 + 76) & 1) - 1);
    v52 = v49;
    v53 = v31;
    v32 = krb5_crypto_init();
    if (v32)
    {
      checksum = v32;
      goto LABEL_30;
    }

    ivec = *(v29 + 14);
    checksum = krb5_encrypt_ivec();
    krb5_crypto_destroy();
    if (checksum)
    {
      goto LABEL_30;
    }

    if (v41 != 8)
    {
      _gsskrb5_wrap_cold_1();
    }

    *(v29 + 6) = *v42;
    krb5_data_free();
    v35 = *(a2 + 40);
    ++v49;
    krb5_auth_con_setlocalseqnumber();
    pthread_mutex_unlock((a2 + 128));
    if (a3)
    {
      ivec = 0;
      __src = 0;
      v36 = krb5_crypto_init();
      if (v36)
      {
        v37 = v36;
LABEL_38:
        free(*(a7 + 8));
        *a7 = 0;
        *(a7 + 8) = 0;
        v15 = 851968;
        *a1 = v37;
        goto LABEL_31;
      }

      v38 = v20 + 8;
      v37 = krb5_encrypt(v19, inptr, 0x16, (v29 + 34), (v20 + 8), &ivec);
      krb5_crypto_destroy();
      if (v37)
      {
        goto LABEL_38;
      }

      if (ivec != v38)
      {
        _gsskrb5_wrap_cold_2();
      }

      memcpy(v29 + 34, __src, v38);
      krb5_data_free();
    }

    if (a6)
    {
      *a6 = a3;
    }

    v15 = 0;
    *a1 = 0;
    goto LABEL_31;
  }

  *a1 = v14;
LABEL_3:
  v15 = 851968;
LABEL_32:
  v33 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t _gsskrb5_store_cred(int *a1, uint64_t a2, int a3, gss_const_OID a, uint64_t a5, int a6)
{
  v7 = 35224071;
  *a1 = 0;
  if (a3 != 1)
  {
    v11 = 851968;
    goto LABEL_7;
  }

  if (!gss_oid_equal(a, &__gss_krb5_mechanism_oid_desc))
  {
    return 0x10000;
  }

  if (!a2)
  {
    return 458752;
  }

  v17 = 0;
  context = 0;
  v10 = __ApplePrivate__gsskrb5_init(&context);
  if (!v10)
  {
    pthread_mutex_lock((a2 + 48));
    if (*(a2 + 32) <= 1u)
    {
      if (*a2)
      {
        v13 = krb5_cc_cache_match(context, *a2, &v17);
        if (v13 && (v14 = krb5_cc_new_unique(context, 0, 0, &v17)) != 0)
        {
          v7 = v14;
        }

        else
        {
          matched = krb5_cc_initialize(context, v17, *a2);
          if (!matched)
          {
            v16 = *(a2 + 40);
            matched = krb5_cc_copy_match_f();
            if (!matched)
            {
              if (a6)
              {
                krb5_cc_switch();
              }

              krb5_cc_close(context, v17);
              v7 = 0;
              v11 = 0;
              goto LABEL_23;
            }
          }

          v7 = matched;
          if (v13)
          {
            krb5_cc_destroy(context, v17);
          }

          else
          {
            krb5_cc_close(context, v17);
          }
        }
      }

      else
      {
        v7 = 35224194;
      }
    }

    v11 = 851968;
LABEL_23:
    pthread_mutex_unlock((a2 + 48));
    goto LABEL_7;
  }

  v11 = 851968;
  v7 = v10;
LABEL_7:
  *a1 = v7;
  return v11;
}

uint64_t iter_creds_f(const gss_OID_desc *a1, uint64_t a2, uint64_t (*a3)(uint64_t, const gss_OID_desc *, char *))
{
  cursor = 0;
  context = 0;
  ccache = 0;
  if (!__ApplePrivate__gsskrb5_init(&context) && !krb5_cccol_cursor_new(context, &cursor))
  {
    if (!krb5_cccol_cursor_next(context, cursor, &ccache))
    {
      v6 = ccache;
      if (ccache)
      {
        while (1)
        {
          v20 = 0;
          v18.data = 0;
          principal = 0;
          *&v18.magic = 0;
          v7 = krb5_cc_get_principal(context, v6, &principal);
          v8 = context;
          if (v7)
          {
            goto LABEL_6;
          }

          is_pku2u = krb5_principal_is_pku2u();
          v10 = &__gss_pku2u_mechanism_oid_desc;
          if (!is_pku2u)
          {
            config = krb5_cc_get_config(context, ccache, 0, "iakerb", &v18);
            v10 = &__gss_krb5_mechanism_oid_desc;
            if (!config)
            {
              krb5_data_free();
              v10 = &__gss_iakerb_mechanism_oid_desc;
            }
          }

          if (!gss_oid_equal(a1, v10))
          {
            break;
          }

          v12 = malloc_type_calloc(1uLL, 0x88uLL, 0x1030040BE4FC7E4uLL);
          if (!v12)
          {
            krb5_cc_close(context, ccache);
            return a3(a2, 0, 0);
          }

          v13 = v12;
          pthread_mutex_init((v12 + 48), 0);
          *(v13 + 8) = 1;
          v14 = principal;
          *v13 = principal;
          __gsskrb5_ccache_lifetime(&v20, context, ccache, v14, v13 + 3);
          *(v13 + 2) = 0;
          *(v13 + 5) = ccache;
          a3(a2, a1, v13);
LABEL_13:
          v15 = krb5_cccol_cursor_next(context, cursor, &ccache);
          v6 = ccache;
          if (v15)
          {
            v16 = 1;
          }

          else
          {
            v16 = ccache == 0;
          }

          if (v16)
          {
            goto LABEL_20;
          }
        }

        krb5_free_principal(context, principal);
        v8 = context;
LABEL_6:
        krb5_cc_close(v8, ccache);
        goto LABEL_13;
      }
    }

LABEL_20:
    krb5_cccol_cursor_free(context, &cursor);
  }

  return a3(a2, 0, 0);
}

uint64_t _gsskrb5_export_cred(int *a1, uint64_t a2, void *a3)
{
  v15 = 0;
  krb5_data_zero();
  v6 = __ApplePrivate__gsskrb5_init(&v15);
  if (!v6)
  {
    if (*(a2 + 32) >= 2u)
    {
      v11 = 35224071;
    }

    else
    {
      if (krb5_storage_emem())
      {
        if (!*(a2 + 40))
        {
          goto LABEL_25;
        }

        krbtgt = krb5_store_int32();
        if (krbtgt || (v8 = *(a2 + 40), v9 = *(*a2 + 24), (krbtgt = _krb5_get_krbtgt()) != 0))
        {
          v10 = krbtgt;
LABEL_9:
          krb5_storage_free();
          *a1 = v10;
          return 851968;
        }

        v10 = krb5_store_creds();
        krb5_free_creds(v15, 0);
        if (v10)
        {
          goto LABEL_9;
        }

        v12 = krb5_storage_to_data();
        krb5_storage_free();
        if (v12)
        {
LABEL_23:
          *a1 = v12;
          return 851968;
        }

        if (krb5_storage_emem())
        {
          v13 = krb5_store_data();
          if (v13)
          {
            v12 = v13;
            krb5_data_free();
LABEL_22:
            krb5_storage_free();
            goto LABEL_23;
          }

          v12 = krb5_store_data();
          krb5_data_free();
          if (v12)
          {
            goto LABEL_22;
          }

          v12 = krb5_storage_to_data();
          krb5_storage_free();
          if (v12)
          {
            goto LABEL_23;
          }

LABEL_25:
          result = 0;
          *a3 = 0;
          a3[1] = 0;
          return result;
        }

        krb5_data_free();
      }

      v11 = 12;
    }

    *a1 = v11;
    return 851968;
  }

  *a1 = v6;
  return 851968;
}

uint64_t _gsskrb5_import_cred(krb5_error_code *a1, uint64_t *a2, void *a3)
{
  id = 0;
  v32 = 0;
  v30 = 0;
  v29 = 0;
  *a3 = 0;
  v6 = __ApplePrivate__gsskrb5_init(&v32);
  if (v6)
  {
    *a1 = v6;
    return 851968;
  }

  v8 = *a2;
  v7 = a2[1];
  if (!krb5_storage_from_mem())
  {
LABEL_26:
    *a1 = 12;
    return 851968;
  }

  v9 = krb5_ret_uint32();
  if (v9)
  {
    v10 = v9;
    krb5_storage_free();
LABEL_6:
    *a1 = v10;
    return 851968;
  }

  if (v29 == 1)
  {
    v10 = krb5_ret_string();
    krb5_storage_free();
    if (v10)
    {
      goto LABEL_6;
    }

    v12 = krb5_cc_resolve(v32, v30, &id);
    krb5_xfree();
    if (v12)
    {
      *a1 = v12;
      return 851968;
    }

    v16 = 0;
  }

  else
  {
    if (v29)
    {
      krb5_storage_free();
      *a1 = 0;
      return 458752;
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    *principal = 0u;
    v10 = krb5_ret_creds();
    krb5_storage_free();
    if (v10)
    {
      goto LABEL_6;
    }

    v11 = krb5_cc_new_unique(v32, "API", 0, &id);
    if (v11)
    {
      v10 = v11;
      goto LABEL_6;
    }

    v10 = krb5_cc_initialize(v32, id, principal[0]);
    v15 = id;
    v14 = v32;
    if (v10)
    {
LABEL_19:
      krb5_cc_destroy(v14, v15);
      goto LABEL_6;
    }

    v10 = krb5_cc_store_cred(v32, id, principal);
    krb5_free_cred_contents(v32, principal);
    if (v10)
    {
      v15 = id;
      v14 = v32;
      goto LABEL_19;
    }

    v16 = 1;
  }

  v17 = malloc_type_calloc(1uLL, 0x88uLL, 0x1030040BE4FC7E4uLL);
  if (!v17)
  {
    krb5_cc_close(v32, id);
    goto LABEL_26;
  }

  v18 = v17;
  v17[8] = 1;
  krb5_cc_get_principal(v32, id, v17);
  v19 = id;
  *(v18 + 5) = id;
  v18[2] = v16;
  if (*v18)
  {
    __gsskrb5_ccache_lifetime(a1, v32, v19, *v18, v18 + 3);
  }

  result = 0;
  *a3 = v18;
  return result;
}

uint64_t change_hold(_DWORD *a1, uint64_t a2, uint64_t (*a3)(krb5_context, void))
{
  v7.data = 0;
  v8 = 0;
  *&v7.magic = 0;
  *a1 = 0;
  krb5_data_zero();
  LODWORD(result) = __ApplePrivate__gsskrb5_init(&v8);
  if (result)
  {
    goto LABEL_2;
  }

  if (!a2)
  {
    return 0;
  }

  if (*(a2 + 32) > 1u)
  {
    LODWORD(result) = 35224071;
LABEL_2:
    *a1 = result;
    return 851968;
  }

  LODWORD(result) = krb5_cc_get_config(v8, *(a2 + 40), 0, "nah-created", &v7);
  if (result)
  {
    goto LABEL_2;
  }

  krb5_data_free();
  result = a3(v8, *(a2 + 40));
  if (result)
  {
    goto LABEL_2;
  }

  return result;
}

uint64_t _gsskrb5_cred_label_get(_DWORD *a1, uint64_t a2, const char *a3, void *a4)
{
  v11.data = 0;
  v12 = 0;
  *&v11.magic = 0;
  LODWORD(result) = __ApplePrivate__gsskrb5_init(&v12);
  if (!result)
  {
    if (!a2)
    {
      return 0;
    }

    v9 = *(a2 + 40);
    if (!v9)
    {
      *a1 = 35224071;
      return 851968;
    }

    result = krb5_cc_get_config(v12, v9, 0, a3, &v11);
    if (!result)
    {
      data = v11.data;
      *a4 = *&v11.magic;
      a4[1] = data;
      return result;
    }
  }

  *a1 = result;
  return 851968;
}

uint64_t _gsskrb5_cred_label_set(_DWORD *a1, uint64_t a2, const char *a3, uint64_t *a4)
{
  v13 = 0;
  v14 = 0;
  v12 = 0;
  LODWORD(result) = __ApplePrivate__gsskrb5_init(&v14);
  if (result)
  {
    goto LABEL_2;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = *(a2 + 40);
  if (!v9)
  {
    LODWORD(result) = 35224071;
LABEL_2:
    *a1 = result;
    return 851968;
  }

  if (a4)
  {
    v10 = a4[1];
    v12 = *a4;
    v13 = v10;
    v11 = &v12;
  }

  else
  {
    v11 = 0;
  }

  result = krb5_cc_set_config(v14, v9, 0, a3, v11);
  if (result)
  {
    goto LABEL_2;
  }

  return result;
}

uint64_t _gsskrb5_appl_change_password(int *a1, krb5_principal_data *a2, char *a3, char *a4)
{
  *&result_code_string.magic = 0;
  result_code_string.data = 0;
  *&result_string.magic = 0;
  result_string.data = 0;
  v14 = 0;
  opt = 0;
  result_code = 0;
  v8 = __ApplePrivate__gsskrb5_init(&v14);
  if (v8)
  {
    *a1 = v8;
    return 851968;
  }

  else
  {
    memset(creds, 0, sizeof(creds));
    init_creds_opt_alloc = krb5_get_init_creds_opt_alloc(v14, &opt);
    if (init_creds_opt_alloc || (krb5_get_init_creds_opt_set_tkt_life(opt, 300), krb5_get_init_creds_opt_set_forwardable(opt, 0), krb5_get_init_creds_opt_set_proxiable(opt, 0), (init_creds_opt_alloc = krb5_get_init_creds_password(v14, creds, a2, a3, 0, 0, 0, "kadmin/changepw", opt)) != 0) || (init_creds_opt_alloc = krb5_set_password(v14, creds, a4, 0, &result_code, &result_code_string, &result_string)) != 0)
    {
      v11 = init_creds_opt_alloc;
    }

    else
    {
      krb5_data_free();
      krb5_data_free();
      if (result_code)
      {
        v11 = -1765328353;
        krb5_set_error_message(v14, -1765328353, "Failed to change invalid password: %d", result_code);
      }

      else
      {
        v11 = 0;
      }
    }

    if (opt)
    {
      krb5_get_init_creds_opt_free(v14, opt);
    }

    krb5_free_cred_contents(v14, creds);
    *a1 = v11;
    if (v11)
    {
      return 851968;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t _gsskrb5_authorize_localname(_DWORD *a1, krb5_principal_data *a2, uint64_t a3, gss_const_OID a)
{
  if (!gss_oid_equal(a, &__gss_c_nt_user_name_oid_desc))
  {
    return 196608;
  }

  v12 = 0;
  v7 = __ApplePrivate__gsskrb5_init(&v12);
  if (v7)
  {
    *a1 = v7;
    return 851968;
  }

  v9 = malloc_type_malloc(*a3 + 1, 0xB7933849uLL);
  if (!v9)
  {
    *a1 = 12;
    return 851968;
  }

  v10 = v9;
  memcpy(v9, *(a3 + 8), *a3);
  v10[*a3] = 0;
  *a1 = 0;
  v11 = krb5_kuserok(v12, a2, v10);
  free(v10);
  if (v11)
  {
    return 0;
  }

  else
  {
    return 983040;
  }
}

uint64_t _gsskrb5_pname_to_uid(_DWORD *a1, const krb5_principal_data *a2, uint64_t a3, uid_t *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v7 = __ApplePrivate__gsskrb5_init(&v12);
  if (v7 || (*a1 = 0, (v7 = krb5_aname_to_localname(v12, a2, 256, v13)) != 0))
  {
    *a1 = v7;
  }

  else
  {
    v10 = getpwnam(v13);
    if (v10)
    {
      v11 = v10;
      result = 0;
      *a4 = v11->pw_uid;
      goto LABEL_5;
    }

    *a1 = -1765328227;
  }

  result = 851968;
LABEL_5:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __ApplePrivate_gss_acquire_cred_ex(gss_name_t_desc_struct *a1, int a2, unsigned int a3, const gss_OID_desc *a4, unsigned int a5, uint64_t a6, void *aBlock)
{
  v12 = _Block_copy(aBlock);
  v14 = __ApplePrivate_gss_acquire_cred_ex_f(0, a1, v13, a3, a4, a5, a6, v12, complete_block);
  if (v14)
  {
    _Block_release(v12);
  }

  return v14;
}

uint64_t __ApplePrivate_gss_acquire_cred_ex_f(uint64_t a1, gss_name_t_desc_struct *a2, int a3, unsigned int a4, gss_const_OID member, unsigned int a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, void, uint64_t, void, void, uint64_t))
{
  input_name = 0;
  if (!a9)
  {
    return 0x1000000;
  }

  v14 = a2;
  v25 = 0;
  minor_status = 0;
  input_name_buffer.length = 0;
  input_name_buffer.value = 0;
  if (a2)
  {
    if (!member)
    {
LABEL_5:
      input_name_buffer.value = *(a7 + 24);
      input_name_buffer.length = strlen(input_name_buffer.value);
      *present = 0;
      v16 = __ApplePrivate_gss_acquire_cred_ext(&v25, v14, &__gss_c_cred_password_oid_desc, &input_name_buffer, a4, member, a6, present);
      if (input_name)
      {
        gss_release_name(&minor_status, &input_name);
      }

      if (!v16)
      {
        a9(a8, 0, a1, *present, 0, 0xFFFFFFFFLL);
      }

      return v16;
    }
  }

  else
  {
    *present = 0;
    v17 = *(a7 + 8);
    if (!v17)
    {
      return 851968;
    }

    v18 = *(a7 + 16);
    if (v18)
    {
      asprintf(present, "%s@%s", *(a7 + 8), v18);
      v19 = *present;
    }

    else
    {
      v19 = strdup(v17);
      *present = v19;
    }

    input_name_buffer.value = v19;
    input_name_buffer.length = strlen(v19);
    v16 = gss_import_name(&v25, &input_name_buffer, &__gss_c_nt_user_name_oid_desc, &input_name);
    free(*present);
    if (v16)
    {
      return v16;
    }

    v14 = input_name;
    if (!member)
    {
      goto LABEL_5;
    }
  }

  present[0] = 0;
  gss_test_oid_set_member(&minor_status, member, _gss_mech_oids, present);
  if (present[0])
  {
    goto LABEL_5;
  }

  if (input_name)
  {
    gss_release_name(&minor_status, &input_name);
  }

  return 0x10000;
}

void complete_block(void (**a1)(void, void, void, void, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a1[2](a1, a3, a4, a5, a6);

  _Block_release(a1);
}

uint64_t _gss_mg_get_error(uint64_t a1, int a2, size_t *a3)
{
  v5 = _gss_mechglue_thread();
  if (!v5)
  {
    return 327680;
  }

  v6 = v5;
  if (*(v5 + 2) != a2 || (v7 = v5[2]) == 0)
  {
    if (a3)
    {
      *a3 = 0;
      a3[1] = 0;
    }

    return 327680;
  }

  v8 = malloc_type_malloc(v7, 0x993A3E15uLL);
  a3[1] = v8;
  if (v8)
  {
    v10 = v6[2];
    v9 = v6[3];
    *a3 = v10;
    memcpy(v8, v9, v10);
    return 0;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    return 851968;
  }
}

void *_gss_mechglue_thread()
{
  pthread_mutex_lock(&context_mutex);
  if ((created_key & 1) == 0)
  {
    if (pthread_key_create(&context_key_0, destroy_context_0))
    {
      pthread_mutex_unlock(&context_mutex);
      return 0;
    }

    created_key = 1;
  }

  pthread_mutex_unlock(&context_mutex);
  v0 = pthread_getspecific(context_key_0);
  if (!v0)
  {
    v0 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A0040A9FF75A4uLL);
    if (v0)
    {
      if (!pthread_setspecific(context_key_0, v0))
      {
        v0[4] = os_log_create("org.h5l.gss", "gss");
        return v0;
      }

      free(v0);
      return 0;
    }
  }

  return v0;
}

void _gss_mg_error(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 128))
  {
    v4 = _gss_mechglue_thread();
    if (v4)
    {
      v5 = v4;
      minor_status = 0;
      gss_release_buffer(&minor_status, v4 + 1);
      v5->length = a1 + 16;
      LODWORD(v5->value) = a2;
      if ((*(a1 + 128))(&minor_status, a2, 2))
      {
        v5[1].length = 0;
        v5[1].value = 0;
      }

      else
      {
        v13 = *(a1 + 8);
        value = v5[1].value;
        _gss_mg_log(5, "_gss_mg_error: captured %.*s (%d) from underlaying mech %s", v6, v7, v8, v9, v10, v11, v5[1].length);
      }
    }
  }
}

void _gss_mg_log(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = 0;
  if (_gss_mg_log_level(a1))
  {
    v11 = _gss_mechglue_thread();
    if (v11)
    {
      v12 = v11;
      vasprintf(&v15, a2, &a9);
      v13 = v12[4];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v17 = v15;
        _os_log_impl(&dword_238923000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      }

      free(v15);
      if (log_func)
      {
        log_func(log_ctx, a1, a2, &a9);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void gss_mg_collect_error(const gss_OID_desc *a1, uint64_t a2, uint64_t a3)
{
  mechanism = __gss_get_mechanism(a1);
  if (mechanism)
  {

    _gss_mg_error(mechanism, a3);
  }
}

uint64_t gss_mg_set_error_string(size_t a1, uint64_t a2, int a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  __s = 0;
  v13 = _gss_mechglue_thread();
  if (v13)
  {
    v14 = v13;
    minor_status = 0;
    vasprintf(&__s, a4, &a9);
    if (__s)
    {
      gss_release_buffer(&minor_status, v14 + 1);
      v14->length = a1;
      LODWORD(v14->value) = a3;
      v15 = __s;
      v14[1].value = __s;
      v16 = strlen(v15);
      v14[1].length = v16;
      _gss_mg_log(5, "gss_mg_set_error_string: %.*s (%d/%d)", v17, v18, v19, v20, v21, v22, v16);
    }
  }

  return a2;
}

CFErrorRef _gss_mg_create_cferror(unsigned int a1, unsigned int a2, gss_OID_desc *a3)
{
  userInfoKeys[5] = *MEMORY[0x277D85DE8];
  v16 = a2;
  valuePtr = a1;
  userInfoKeys[0] = @"kGSSMajorErrorCode";
  userInfoKeys[1] = @"kGSSMinorErrorCode";
  userInfoKeys[2] = @"kGSSMechanismOID";
  userInfoKeys[3] = @"kGSSMechanism";
  userInfoKeys[4] = *MEMORY[0x277CBEE30];
  v19 = 0;
  v20 = 0;
  v21 = 0;
  oid_str.length = 0;
  oid_str.value = 0;
  minor_status = 0;
  userInfoValues[0] = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  userInfoValues[1] = CFNumberCreate(0, kCFNumberSInt32Type, &v16);
  if (!a3)
  {
    v19 = CFStringCreateWithFormat(0, 0, @"no-mech");
LABEL_8:
    v5 = CFStringCreateWithFormat(0, 0, @"no mech given", v12);
    goto LABEL_9;
  }

  if (gss_oid_to_str(&minor_status, a3, &oid_str))
  {
    v19 = CFStringCreateWithFormat(0, 0, @"no-mech");
  }

  else
  {
    v19 = CFStringCreateWithFormat(0, 0, @"%.*s", oid_str.length, oid_str.value);
    gss_release_buffer(&minor_status, &oid_str);
  }

  v4 = __ApplePrivate_gss_oid_to_name(a3);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = CFStringCreateWithFormat(0, 0, @"%s", v4);
LABEL_9:
  v20 = v5;
  v6 = _gss_mechglue_thread();
  if (v6 && v16 == *(v6 + 2) && v6[2])
  {
    v7 = CFStringCreateWithFormat(0, 0, @"%.*s", v6[2], v6[3]);
  }

  else
  {
    v7 = CFStringCreateWithFormat(0, 0, @"Unknown minor status: %d", v16, v13);
  }

  v21 = v7;
  v8 = CFErrorCreateWithUserInfoKeysAndValues(0, @"org.h5l.GSS", valuePtr, userInfoKeys, userInfoValues, 5);
  for (i = 0; i != 5; ++i)
  {
    CFRelease(userInfoValues[i]);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

CFPropertyListRef _gss_mg_copy_key(const __CFString *a1, const __CFString *a2)
{
  v4 = CFStringCreateWithFormat(0, 0, @"/Library/Preferences/%@.plist", a1);
  if (v4)
  {
    v5 = v4;
    v6 = CopyKeyFromFile(v4, a2);
    CFRelease(v5);
    if (v6)
    {
      return v6;
    }
  }

  if (!krb5_homedir_access())
  {
    return 0;
  }

  v7 = CFPreferencesCopyAppValue(a2, a1);
  if (v7)
  {
    return v7;
  }

  v9 = *MEMORY[0x277CBF020];
  v10 = *MEMORY[0x277CBF010];

  return CFPreferencesCopyValue(a2, a1, v9, v10);
}

uint64_t gss_set_log_function(uint64_t result, void *a2)
{
  if (!log_func)
  {
    log_func = a2;
    log_ctx = result;
  }

  return result;
}

BOOL _gss_mg_log_level(int a1)
{
  heim_base_once_f();
  if (config_token != -1)
  {
    check = 0;
    if (notify_check(config_token, &check))
    {
      v2 = 1;
    }

    else
    {
      v2 = check == 0;
    }

    if (!v2)
    {
      init_log();
    }
  }

  return log_level >= a1;
}

uint64_t setup_logging()
{
  init_log();

  return notify_register_check("com.apple.ManagedConfiguration.profileListChanged", &config_token);
}

const void *init_log()
{
  v0 = _gss_mg_copy_key(@"com.apple.GSS", @"DebugLevel");
  if (v0 || (!geteuid() || !krb5_homedir_access() ? (result = CopyKeyFromFile(@"/Library/Managed Preferences/mobile/.GlobalPreferences.plist", @"GSSDebugLevel")) : (result = CFPreferencesCopyAppValue(@"GSSDebugLevel", @".GlobalPreferences")), (v0 = result) != 0))
  {
    pthread_mutex_lock(&log_mutex);
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID())
    {
      log_level = CFBooleanGetValue(v0) != 0;
    }

    else
    {
      v3 = CFGetTypeID(v0);
      if (v3 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v0, kCFNumberIntType, &log_level);
      }
    }

    CFRelease(v0);

    return pthread_mutex_unlock(&log_mutex);
  }

  return result;
}

void _gss_mg_log_name(uint64_t a1, uint64_t a2, const gss_OID_desc *a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v25 = 0;
  if (_gss_mg_log_level(a1))
  {
    mechanism = __gss_get_mechanism(a3);
    if (mechanism)
    {
      v14 = mechanism;
      minor_status = 0;
      if (!_gss_find_mn(&minor_status, a2, a3, &v25))
      {
        buffer.length = 0;
        buffer.value = 0;
        if (v25)
        {
          if ((v14[19])(&minor_status, v25[1].elements, &buffer, 0))
          {
            return;
          }
        }

        else
        {
          buffer.length = 7;
          buffer.value = "no name";
        }

        v22 = 0;
        vasprintf(&v22, a4, &a9);
        if (v22)
        {
          _gss_mg_log(a1, "%s %.*s", v15, v16, v17, v18, v19, v20, v22);
          v21 = v22;
        }

        else
        {
          v21 = 0;
        }

        free(v21);
        if (v25)
        {
          gss_release_buffer(&minor_status, &buffer);
        }
      }
    }
  }
}

void _gss_mg_log_cred(int a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (_gss_mg_log_level(a1))
  {
    v19 = 0;
    vasprintf(&v19, a3, &a9);
    if (a2)
    {
      for (i = *(a2 + 16); i; i = *i)
      {
        v18 = *(i[1] + 8);
        _gss_mg_log(1, "%s: %s", v11, v12, v13, v14, v15, v16, v19);
      }
    }

    else
    {
      _gss_mg_log(1, "%s: GSS_C_NO_CREDENTIAL", v11, v12, v13, v14, v15, v16, v19);
    }

    free(v19);
  }
}

uint64_t load_plugins()
{
  v1 = 0;
  result = krb5_init_context(&v1);
  if (!result)
  {
    krb5_load_plugins();
    return heim_release();
  }

  return result;
}

void destroy_context_0(gss_buffer_desc_struct *a1)
{
  if (a1)
  {
    minor_status = 0;
    gss_release_buffer(&minor_status, a1 + 1);
    length = a1[2].length;
    if (length)
    {
      os_release(length);
    }

    free(a1);
  }
}

const void *CopyKeyFromFile(CFStringRef filePath, const void *a2)
{
  v3 = *MEMORY[0x277CBECE8];
  v4 = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBECE8], filePath, kCFURLPOSIXPathStyle, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = CFReadStreamCreateWithFile(v3, v4);
  CFRelease(v5);
  if (!v6)
  {
    return 0;
  }

  if (!CFReadStreamOpen(v6))
  {
    v11 = v6;
LABEL_11:
    CFRelease(v11);
    return 0;
  }

  error = 0;
  v7 = CFPropertyListCreateWithStream(v3, v6, 0, 0, 0, &error);
  CFRelease(v6);
  if (!v7)
  {
    return 0;
  }

  v8 = CFGetTypeID(v7);
  if (v8 != CFDictionaryGetTypeID())
  {
    v11 = v7;
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(v7, a2);
  v10 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  CFRelease(v7);
  return v10;
}

OM_uint32 gss_accept_sec_context(OM_uint32 *minor_status, gss_ctx_id_t *context_handle, gss_cred_id_t acceptor_cred_handle, gss_buffer_t input_token, gss_channel_bindings_t input_chan_bindings, gss_name_t *src_name, gss_OID *mech_type, gss_buffer_t output_token, OM_uint32 *ret_flags, OM_uint32 *time_rec, gss_cred_id_t *delegated_cred_handle)
{
  v15 = acceptor_cred_handle;
  v18 = *context_handle;
  a = 0;
  *minor_status = 0;
  if (src_name)
  {
    *src_name = 0;
  }

  if (mech_type)
  {
    *mech_type = 0;
  }

  if (ret_flags)
  {
    *ret_flags = 0;
  }

  if (time_rec)
  {
    *time_rec = 0;
  }

  if (delegated_cred_handle)
  {
    *delegated_cred_handle = 0;
  }

  if (output_token)
  {
    output_token->length = 0;
    output_token->value = 0;
  }

  cred_handle = 0;
  *minor_statusa = 0;
  v82 = 0;
  _gss_mg_check_credential(acceptor_cred_handle);
  if (*context_handle)
  {
    v25 = *v18;
    goto LABEL_15;
  }

  length = input_token->length;
  if (!input_token->length)
  {
LABEL_67:
    v51 = &__gss_spnego_mechanism_oid_desc;
    goto LABEL_68;
  }

  value = input_token->value;
  if (length == 1)
  {
    v34 = 589824;
LABEL_65:
    if (*value != 110)
    {
      _gss_mg_log(10, "Don't have client request mech", v19, v20, v21, v22, v23, v24, v78);
      return v34;
    }

    v51 = &__gss_krb5_mechanism_oid_desc;
    goto LABEL_68;
  }

  *&v85.length = 0;
  v46 = value[1];
  v47 = length - 2;
  if (value[1] < 0)
  {
    v65 = v46 & 0x7F;
    v66 = v47 - v65;
    if (v47 < v65)
    {
      goto LABEL_59;
    }

    v48 = value + 2;
    v46 = 0;
    if (v65)
    {
      v75 = v65;
      do
      {
        v76 = *v48++;
        v46 = v76 | (v46 << 8);
        --v75;
      }

      while (v75);
      v48 = &value[v65 + 2];
      v47 = v66;
    }
  }

  else
  {
    v48 = value + 2;
  }

  v34 = 589824;
  if (v47 < 2 || v46 != v47)
  {
    goto LABEL_60;
  }

  if (*v48 != 6)
  {
LABEL_59:
    v34 = 589824;
    goto LABEL_60;
  }

  v49 = v48[1];
  v34 = 589824;
  if ((v49 & 0x8000000000000000) == 0 && v47 - 2 >= v49)
  {
    v85.length = v48[1];
    v85.elements = v48 + 2;
    v50 = _gss_mg_support_mechanism(&v85);
    if (v50)
    {
      v51 = v50;
      goto LABEL_68;
    }

    length = input_token->length;
    v34 = 0x10000;
  }

LABEL_60:
  if (length < 9)
  {
    if (length)
    {
      value = input_token->value;
      goto LABEL_65;
    }

    goto LABEL_67;
  }

  value = input_token->value;
  if (*value != 0x5053534D4C544ELL)
  {
    goto LABEL_65;
  }

  v51 = &__gss_ntlm_mechanism_oid_desc;
LABEL_68:
  v67 = malloc_type_malloc(0x18uLL, 0x20040960023A9uLL);
  if (!v67)
  {
    *minor_status = 12;
    return 589824;
  }

  v18 = v67;
  *v67 = 0;
  *(v67 + 1) = 0;
  *(v67 + 2) = 0;
  mechanism = __gss_get_mechanism(v51);
  *v18 = mechanism;
  if (!mechanism)
  {
    free(v18);
    _gss_mg_log(10, "mechanism client used is unknown", v69, v70, v71, v72, v73, v74, v78);
    return 0x10000;
  }

  v25 = mechanism;
  *context_handle = v18;
LABEL_15:
  if ((*(v25 + 32) & 1) == 0 && v15)
  {
    v26 = (v15 + 16);
    v27 = v26;
    while (1)
    {
      v27 = *v27;
      if (!v27)
      {
        break;
      }

      if (v27[1] == v25)
      {
        v15 = v27[3];
        goto LABEL_21;
      }
    }

    gss_delete_sec_context(minor_statusa, context_handle, 0);
    _gss_mg_log(10, "gss-asc: client sent mech %s but no credential was matching", v52, v53, v54, v55, v56, v57, *(v25 + 8));
    v64 = *v26;
    if (*v26)
    {
      do
      {
        _gss_mg_log(10, "gss-asc: available creds where %s", v58, v59, v60, v61, v62, v63, *(v64[1] + 8));
        v64 = *v64;
      }

      while (v64);
    }

    return 0x10000;
  }

LABEL_21:
  cred_handle = 0;
  minor_statusa[1] = 0;
  v34 = (*(v25 + 64))(minor_status, v18 + 8, v15, input_token, input_chan_bindings, &v82, &a, output_token, &minor_statusa[1], time_rec, &cred_handle);
  if (v34 >= 2)
  {
    _gss_mg_error(v25, *minor_status);
    gss_delete_sec_context(minor_statusa, context_handle, 0);
    return v34;
  }

  if (mech_type)
  {
    *mech_type = a;
  }

  if (src_name && v82)
  {
    name = _gss_create_name(v82, v25);
    if (!name)
    {
      (*(v25 + 176))(minor_status, &v82);
      goto LABEL_55;
    }

    *src_name = name;
  }

  else if (v82)
  {
    (*(v25 + 176))(minor_status, &v82);
  }

  if ((minor_statusa[1] & 1) == 0)
  {
    goto LABEL_84;
  }

  v38 = *(v25 + 32);
  v39 = delegated_cred_handle;
  if (!delegated_cred_handle)
  {
    if (v38)
    {
      gss_release_cred(minor_status, &cred_handle);
    }

    else
    {
      (*(v25 + 48))(minor_status, &cred_handle);
    }

    minor_statusa[1] &= 0xFFFF7FFE;
    goto LABEL_84;
  }

  if (v38)
  {
    v41 = cred_handle;
  }

  else
  {
    v40 = gss_oid_equal(a, (v25 + 16));
    v41 = cred_handle;
    if (v40)
    {
      if (!cred_handle)
      {
        goto LABEL_84;
      }

      v42 = _gss_mg_alloc_cred();
      if (v42)
      {
        v43 = v42;
        v44 = malloc_type_malloc(0x20uLL, 0x20040DC1BFBCFuLL);
        if (v44)
        {
          v45 = cred_handle;
          v44[2] = v25 + 16;
          v44[3] = v45;
          *v44 = *(v43 + 2);
          v44[1] = v25;
          *(v43 + 2) = v44;
          *delegated_cred_handle = v43;
          goto LABEL_84;
        }

        free(v43);
      }

      *minor_status = 12;
LABEL_55:
      gss_delete_sec_context(minor_statusa, context_handle, 0);
      return 851968;
    }

    v39 = delegated_cred_handle;
  }

  *v39 = v41;
LABEL_84:
  v79 = *minor_status;
  _gss_mg_log(10, "gss-asc: return %d/%d", v28, v29, v30, v31, v32, v33, v34);
  if (ret_flags)
  {
    *ret_flags = minor_statusa[1];
  }

  return v34;
}

OM_uint32 gss_acquire_cred(OM_uint32 *minor_status, gss_name_t desired_name, OM_uint32 time_req, gss_OID_set desired_mechs, gss_cred_usage_t cred_usage, gss_cred_id_t *output_cred_handle, gss_OID_set *actual_mechs, OM_uint32 *time_rec)
{
  *minor_status = 0;
  if (!output_cred_handle)
  {
    return 0x1000000;
  }

  v8 = time_rec;
  if (actual_mechs)
  {
    *actual_mechs = 0;
  }

  if (time_rec)
  {
    *time_rec = 0;
  }

  minor_statusa = 0;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  _gss_load_mech();
  if (!desired_mechs)
  {
    goto LABEL_16;
  }

  count = desired_mechs->count;
  if (desired_mechs->count)
  {
    v49 = v8;
    v17 = time_req;
    v18 = 0;
    v19 = 0;
    do
    {
      present[0] = 0;
      gss_test_oid_set_member(minor_status, &desired_mechs->elements[v18], _gss_mech_oids, present);
      v20 = desired_mechs->count;
      if (present[0])
      {
        break;
      }

      ++v19;
      ++v18;
    }

    while (v19 < v20);
    v21 = v19 == v20;
    time_req = v17;
    v8 = v49;
    if (!v21)
    {
LABEL_16:
      if (actual_mechs)
      {
        result = gss_create_empty_oid_set(minor_status, actual_mechs);
        if (result)
        {
          return result;
        }

        v23 = _gss_mg_alloc_cred();
        if (!v23)
        {
          gss_release_oid_set(minor_status, actual_mechs);
LABEL_44:
          result = 851968;
          LODWORD(count) = 12;
          goto LABEL_53;
        }
      }

      else
      {
        v23 = _gss_mg_alloc_cred();
        if (!v23)
        {
          goto LABEL_44;
        }
      }

      cred_handle = output_cred_handle;
      v46 = v23;
      if (desired_mechs)
      {
        v29 = desired_mechs;
      }

      else
      {
        v29 = _gss_mech_oids;
      }

      v53 = 1;
      if (!v29->count)
      {
        v50 = -1;
LABEL_46:
        if (*(v46 + 16))
        {
          _gss_mg_log_cred(10, v46, "gss_acquire_cred", v24, v25, v26, v27, v28, v43);
          if (v8)
          {
            *v8 = v50;
          }

          LODWORD(count) = 0;
          result = 0;
          *cred_handle = v46;
        }

        else
        {
          *cred_handle = v46;
          gss_release_cred(&minor_statusa, cred_handle);
          if (actual_mechs)
          {
            gss_release_oid_set(&minor_statusa, actual_mechs);
          }

          LODWORD(count) = 0;
          result = 458752;
        }

        goto LABEL_53;
      }

      v47 = time_req;
      v48 = cred_usage;
      v30 = 0;
      v31 = 0;
      v50 = -1;
      while (1)
      {
        *present = 0;
        mechanism = __gss_get_mechanism(&v29->elements[v30]);
        if (!mechanism)
        {
          goto LABEL_42;
        }

        v33 = mechanism;
        if ((mechanism[4] & 1) != 0 || desired_name && _gss_find_mn(minor_status, desired_name, &v29->elements[v30], present))
        {
          goto LABEL_42;
        }

        v34 = malloc_type_malloc(0x20uLL, 0x20040DC1BFBCFuLL);
        if (!v34)
        {
          goto LABEL_42;
        }

        v35 = v34;
        v34[1] = v33;
        v34[2] = (v33 + 2);
        v54 = &v29->elements[v30];
        if (*present)
        {
          v36 = *(*present + 24);
        }

        else
        {
          v36 = 0;
        }

        v37 = (v33[5])(minor_status, v36, v47, &v53, v48, v34 + 3, 0, &v52);
        v44 = *minor_status;
        _gss_mg_log_name(10, desired_name, &v29->elements[v30], "gss_acquire_cred %s name: %ld/%ld", v38, v39, v40, v41, v33[1]);
        if (!v37)
        {
          v42 = v50;
          if (v52 < v50)
          {
            v42 = v52;
          }

          v50 = v42;
          if (!actual_mechs || !gss_add_oid_set_member(minor_status, v35[2], actual_mechs))
          {
            *v35 = *(v46 + 16);
            *(v46 + 16) = v35;
            goto LABEL_42;
          }

          (v33[6])(minor_status, v35 + 3);
        }

        free(v35);
LABEL_42:
        ++v31;
        ++v30;
        if (v31 >= v29->count)
        {
          goto LABEL_46;
        }
      }
    }

    LODWORD(count) = 0;
  }

  result = 0x10000;
LABEL_53:
  *minor_status = count;
  return result;
}

void *_gss_copy_cred(void *a1)
{
  v9 = 0;
  v8 = 0;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  v2 = a1[1];
  if ((*(v2 + 216))(&v9, a1[3], a1[2], &v8, &v6 + 4, &v6, &v5) || (v3 = (*(v2 + 208))(&v9, 0, v8, a1[2], v5, HIDWORD(v6), v6, &v7, 0, 0, 0), (*(v2 + 176))(&v9, &v8), v3))
  {
    _gss_mg_error(v2, v9);
  }

  else
  {
    result = malloc_type_malloc(0x20uLL, 0x20040DC1BFBCFuLL);
    if (result)
    {
      result[1] = v2;
      result[2] = v2 + 16;
      result[3] = v7;
      return result;
    }

    (*(v2 + 48))(&v9, &v7);
  }

  return 0;
}

OM_uint32 gss_add_cred(OM_uint32 *minor_status, gss_cred_id_t input_cred_handle, gss_name_t desired_name, gss_OID desired_mech, gss_cred_usage_t cred_usage, OM_uint32 initiator_time_req, OM_uint32 acceptor_time_req, gss_cred_id_t *output_cred_handle, gss_OID_set *actual_mechs, OM_uint32 *initiator_time_rec, OM_uint32 *acceptor_time_rec)
{
  *minor_status = 0;
  *output_cred_handle = 0;
  if (initiator_time_rec)
  {
    *initiator_time_rec = 0;
  }

  if (acceptor_time_rec)
  {
    *acceptor_time_rec = 0;
  }

  if (actual_mechs)
  {
    *actual_mechs = 0;
  }

  v17 = _gss_mg_alloc_cred();
  if (!v17)
  {
    goto LABEL_26;
  }

  v18 = v17;
  v32 = acceptor_time_req;
  v36 = 0;
  cred_handle = 0;
  minor_statusa = 0;
  if (!input_cred_handle)
  {
    i = 0;
    if (desired_name)
    {
      goto LABEL_14;
    }

LABEL_18:
    v36 = 0;
LABEL_19:
    v31 = output_cred_handle;
    mechanism = __gss_get_mechanism(desired_mech);
    if (!mechanism || (v25 = mechanism, (mechanism[4] & 1) != 0))
    {
      cred_handle = v18;
      gss_release_cred(&minor_statusa, &cred_handle);
      *minor_status = 0;
      return 851968;
    }

    v26 = malloc_type_malloc(0x20uLL, 0x20040DC1BFBCFuLL);
    if (v26)
    {
      *(v26 + 1) = v25;
      *(v26 + 2) = v25 + 16;
      if (i)
      {
        v27 = i[3];
      }

      else
      {
        v27 = 0;
      }

      if (desired_name)
      {
        elements = v36[1].elements;
      }

      else
      {
        elements = 0;
      }

      v30 = v26;
      v22 = (*(v25 + 208))(minor_status, v27, elements, desired_mech, cred_usage, initiator_time_req, v32, v26 + 3, actual_mechs, initiator_time_rec, acceptor_time_rec);
      if (!v22)
      {
        *v30 = *(v18 + 2);
        *(v18 + 2) = v30;
        *v31 = v18;
        return v22;
      }

      _gss_mg_error(v25, *minor_status);
      cred_handle = v18;
      gss_release_cred(&minor_statusa, &cred_handle);
      v23 = v30;
      goto LABEL_16;
    }

LABEL_25:
    cred_handle = v18;
    gss_release_cred(&minor_statusa, &cred_handle);
LABEL_26:
    *minor_status = 12;
    return 851968;
  }

  for (i = *(input_cred_handle + 2); i; i = *i)
  {
    if (gss_oid_equal(i[2], desired_mech))
    {
      break;
    }

    v20 = _gss_copy_cred(i);
    if (!v20)
    {
      goto LABEL_25;
    }

    *v20 = *(v18 + 2);
    *(v18 + 2) = v20;
  }

  if (!desired_name)
  {
    goto LABEL_18;
  }

LABEL_14:
  mn = _gss_find_mn(minor_status, desired_name, desired_mech, &v36);
  if (!mn)
  {
    goto LABEL_19;
  }

  v22 = mn;
  v23 = v18;
LABEL_16:
  free(v23);
  return v22;
}

OM_uint32 gss_add_oid_set_member(OM_uint32 *minor_status, gss_const_OID member_oid, gss_OID_set *oid_set)
{
  present = 0;
  result = gss_test_oid_set_member(minor_status, member_oid, *oid_set, &present);
  if (!result)
  {
    if (present)
    {
      v7 = 0;
      result = 0;
    }

    else
    {
      count = (*oid_set)->count;
      v9 = malloc_type_realloc((*oid_set)->elements, 16 * (count + 1), 0x10800407411B482uLL);
      if (v9)
      {
        v10 = v9;
        v7 = 0;
        result = 0;
        (*oid_set)->elements = v10;
        v11 = *oid_set;
        v11->count = count + 1;
        v11->elements[count] = *member_oid;
      }

      else
      {
        result = 851968;
        v7 = 12;
      }
    }

    *minor_status = v7;
  }

  return result;
}

uint64_t __ApplePrivate_gss_wrap_iov(_DWORD *a1, void *a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6, int a7)
{
  if (a1)
  {
    *a1 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (!a2)
  {
    return 0x80000;
  }

  if (!a6 && a7)
  {
    return 0x1000000;
  }

  v8 = *(*a2 + 312);
  if (!v8)
  {
    return 0x100000;
  }

  v9 = a2[1];
  return v8();
}

uint64_t __ApplePrivate_gss_unwrap_iov(_DWORD *a1, void *a2, _DWORD *a3, _DWORD *a4, uint64_t a5, int a6)
{
  if (a1)
  {
    *a1 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (!a2)
  {
    return 0x80000;
  }

  if (!a5 && a6)
  {
    return 0x1000000;
  }

  v7 = *(*a2 + 320);
  if (!v7)
  {
    return 0x100000;
  }

  v8 = a2[1];
  return v7();
}

uint64_t __ApplePrivate_gss_wrap_iov_length(_DWORD *a1, void *a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6, int a7)
{
  if (a1)
  {
    *a1 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (!a2)
  {
    return 0x80000;
  }

  if (!a6 && a7)
  {
    return 0x1000000;
  }

  v8 = *(*a2 + 328);
  if (!v8)
  {
    return 0x100000;
  }

  v9 = a2[1];
  return v8();
}

uint64_t __ApplePrivate_gss_release_iov_buffer(_DWORD *a1, uint64_t a2, int a3)
{
  if (a1)
  {
    *a1 = 0;
  }

  if (!a2 && a3)
  {
    return 0x1000000;
  }

  if (a3 < 1)
  {
    return 0;
  }

  v9 = v3;
  v10 = v4;
  minor_status = 0;
  v6 = a3;
  v7 = (a2 + 8);
  do
  {
    if ((BYTE2(v7[-1].value) & 2) != 0)
    {
      gss_release_buffer(&minor_status, v7);
      LODWORD(v7[-1].value) &= ~0x20000u;
    }

    v7 = (v7 + 24);
    --v6;
  }

  while (v6);
  return 0;
}

unsigned __int16 *_gss_mg_find_buffer(unsigned __int16 *result, int a2, int a3)
{
  if (a2 < 1)
  {
    return 0;
  }

  v3 = a2;
  while (*result != a3)
  {
    result += 12;
    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _gss_mg_allocate_buffer(_DWORD *a1, uint64_t a2, size_t size)
{
  if ((*(a2 + 2) & 2) != 0)
  {
    if (*(a2 + 8) == size)
    {
      return 0;
    }

    free(*(a2 + 16));
  }

  v7 = malloc_type_malloc(size, 0xC8B5B70AuLL);
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

uint64_t __ApplePrivate_gss_context_query_attributes(_DWORD *a1, int a2, gss_const_OID b, void *a4, size_t a5)
{
  if (a1)
  {
    *a1 = 0;
  }

  if (!gss_oid_equal(&__gss_c_attr_stream_sizes_oid_desc, b))
  {
    return 851968;
  }

  bzero(a4, a5);
  return 0;
}

OM_uint32 gss_create_empty_buffer_set(OM_uint32 *minor_status, gss_buffer_set_t *buffer_set)
{
  v4 = malloc_type_malloc(0x10uLL, 0x10200405730B0C9uLL);
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    result = 0;
    v5->count = 0;
    v5->elements = 0;
    *buffer_set = v5;
  }

  else
  {
    result = 851968;
    v6 = 12;
  }

  *minor_status = v6;
  return result;
}

OM_uint32 gss_add_buffer_set_member(OM_uint32 *minor_status, gss_buffer_t member_buffer, gss_buffer_set_t *buffer_set)
{
  v5 = *buffer_set;
  if (*buffer_set)
  {
    v6 = 16 * v5->count + 16;
  }

  else
  {
    v8 = malloc_type_malloc(0x10uLL, 0x10200405730B0C9uLL);
    if (!v8)
    {
LABEL_8:
      result = 851968;
      v12 = 12;
      goto LABEL_9;
    }

    v5 = v8;
    v8->count = 0;
    v8->elements = 0;
    *buffer_set = v8;
    v6 = 16;
    *minor_status = 0;
  }

  v9 = malloc_type_realloc(v5->elements, v6, 0x108004057E67DB5uLL);
  v5->elements = v9;
  if (!v9)
  {
    goto LABEL_8;
  }

  p_length = &v9[v5->count].length;
  v11 = malloc_type_malloc(member_buffer->length, 0xEEC882EAuLL);
  p_length[1] = v11;
  if (!v11)
  {
    goto LABEL_8;
  }

  memcpy(v11, member_buffer->value, member_buffer->length);
  v12 = 0;
  result = 0;
  *p_length = member_buffer->length;
  ++v5->count;
LABEL_9:
  *minor_status = v12;
  return result;
}

OM_uint32 gss_release_buffer_set(OM_uint32 *minor_status, gss_buffer_set_t *buffer_set)
{
  *minor_status = 0;
  v2 = *buffer_set;
  if (*buffer_set)
  {
    minor_statusa = 0;
    if (v2->count)
    {
      v4 = 0;
      v5 = 0;
      do
      {
        gss_release_buffer(&minor_statusa, &v2->elements[v4]);
        ++v5;
        v2 = *buffer_set;
        ++v4;
      }

      while (v5 < (*buffer_set)->count);
    }

    free(v2->elements);
    (*buffer_set)->elements = 0;
    free(*buffer_set);
    *buffer_set = 0;
  }

  return 0;
}

OM_uint32 gss_canonicalize_name(OM_uint32 *minor_status, gss_name_t input_name, gss_OID mech_type, gss_name_t *output_name)
{
  v12 = 0;
  v13 = 0;
  *minor_status = 0;
  *output_name = 0;
  mn = _gss_find_mn(minor_status, input_name, mech_type, &v13);
  if (!mn)
  {
    if (v13)
    {
      elements = v13->elements;
      v10 = elements[32](minor_status, v13[1].elements, mech_type, &v12);
      if (v10)
      {
        mn = v10;
        _gss_mg_error(elements, *minor_status);
      }

      else
      {
        *minor_status = 0;
        name = _gss_create_name(v12, elements);
        if (name)
        {
          mn = 0;
          *output_name = name;
        }

        else
        {
          (elements[22])(minor_status, &v12);
          *minor_status = 12;
          return 851968;
        }
      }
    }

    else
    {
      return 0x20000;
    }
  }

  return mn;
}

OM_uint32 gss_compare_name(OM_uint32 *minor_status, gss_name_t name1_arg, gss_name_t name2_arg, int *name_equal)
{
  if (*(name1_arg + 5) && *(name2_arg + 5))
  {
    *name_equal = 1;
    if (gss_oid_equal(name1_arg + 1, name2_arg + 1) && *(name1_arg + 4) == *(name2_arg + 4))
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    v9 = (name1_arg + 48);
    while (1)
    {
      v9 = *v9;
      if (!v9)
      {
        break;
      }

      if (_gss_find_mn(minor_status, name2_arg, v9[2], &v11))
      {
        v10 = 1;
      }

      else
      {
        v10 = v11 == 0;
      }

      if (!v10)
      {
        return (*&v9[1][9].length)(minor_status, v9[3], v11[1].elements, name_equal);
      }
    }
  }

  *name_equal = 0;
LABEL_6:
  result = 0;
  *minor_status = 0;
  return result;
}

OM_uint32 gss_create_empty_oid_set(OM_uint32 *minor_status, gss_OID_set *oid_set)
{
  *minor_status = 0;
  *oid_set = 0;
  v4 = malloc_type_malloc(0x10uLL, 0x10200405730B0C9uLL);
  if (v4)
  {
    v5 = v4;
    result = 0;
    v5->count = 0;
    v5->elements = 0;
    *oid_set = v5;
  }

  else
  {
    *minor_status = 12;
    return 851968;
  }

  return result;
}

OM_uint32 gss_decapsulate_token(gss_const_buffer_t input_token, gss_const_OID oid, gss_buffer_t output_token)
{
  if (output_token)
  {
    output_token->length = 0;
    output_token->value = 0;
  }

  v9 = 0u;
  v10 = 0;
  elements = oid->elements;
  length = oid->length;
  if (!der_get_oid())
  {
    if (!decode_GSSAPIContextToken(input_token->value, input_token->length, &v9, 0))
    {
      if (!der_heim_oid_cmp())
      {
        *output_token = v10;
        der_free_oid();
        v7 = 0;
        goto LABEL_9;
      }

      free_GSSAPIContextToken(&v9);
    }

    v7 = 851968;
LABEL_9:
    der_free_oid();
    return v7;
  }

  return 851968;
}

OM_uint32 gss_delete_sec_context(OM_uint32 *minor_status, gss_ctx_id_t *context_handle, gss_buffer_t output_token)
{
  v6 = *context_handle;
  if (output_token)
  {
    output_token->length = 0;
    output_token->value = 0;
  }

  *minor_status = 0;
  if (!v6)
  {
    return 0;
  }

  minor_statusa = 0;
  if (*(v6 + 2))
  {
    gss_release_cred(&minor_statusa, v6 + 2);
  }

  if (*(v6 + 1))
  {
    v7 = (*(*v6 + 80))(minor_status, v6 + 8, output_token);
  }

  else
  {
    v7 = 0;
  }

  free(v6);
  *context_handle = 0;
  return v7;
}

OM_uint32 gss_display_name(OM_uint32 *minor_status, gss_name_t input_name, gss_buffer_t output_name_buffer, gss_OID *output_name_type)
{
  if (output_name_buffer)
  {
    output_name_buffer->length = 0;
    output_name_buffer->value = 0;
  }

  if (output_name_type)
  {
    *output_name_type = 0;
  }

  if (input_name)
  {
    if (*(input_name + 5))
    {
      v8 = malloc_type_malloc(*(input_name + 4), 0x38FF0437uLL);
      output_name_buffer->value = v8;
      if (v8)
      {
        v10 = *(input_name + 4);
        v9 = *(input_name + 5);
        output_name_buffer->length = v10;
        memcpy(v8, v9, v10);
        v11 = 0;
        result = 0;
        if (output_name_type)
        {
          *output_name_type = (input_name + 16);
        }
      }

      else
      {
        result = 851968;
        v11 = 12;
      }
    }

    else
    {
      v13 = (input_name + 48);
      while (1)
      {
        v13 = *v13;
        if (!v13)
        {
          break;
        }

        result = (*(v13[1] + 152))(minor_status, v13[3], output_name_buffer, output_name_type);
        if (!result)
        {
          return result;
        }
      }

      v11 = 0;
      result = 851968;
    }
  }

  else
  {
    v11 = 0;
    result = 0x20000;
  }

  *minor_status = v11;
  return result;
}

OM_uint32 gss_display_status(OM_uint32 *minor_status, OM_uint32 status_value, int status_type, gss_OID mech_type, OM_uint32 *message_content, gss_buffer_t status_string)
{
  if (status_string)
  {
    status_string->length = 0;
    status_string->value = 0;
  }

  *message_content = 0;
  *minor_status = 0;
  if (status_type == 2)
  {
    minor_statusa = 0;
    oid_str.length = 0;
    oid_str.value = 0;
    __s = 0;
    if (_gss_mg_get_error(mech_type, status_value, &status_string->length))
    {
      if (gss_oid_to_str(&minor_statusa, mech_type, &oid_str))
      {
        oid_str.length = 7;
        oid_str.value = "unknown";
        if (asprintf(&__s, "unknown mech-code %lu for mech %.*s", status_value, 7, "unknown") < 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v13 = asprintf(&__s, "unknown mech-code %lu for mech %.*s", status_value, SLODWORD(oid_str.length), oid_str.value);
        gss_release_buffer(&minor_statusa, &oid_str);
        if (v13 < 0)
        {
          goto LABEL_29;
        }
      }

      v14 = __s;
      if (!__s)
      {
        goto LABEL_29;
      }

      status_string->length = strlen(__s);
      status_string->value = v14;
    }

    else
    {
      *message_content = 0;
      *minor_status = 0;
    }

    return 0;
  }

  if (status_type == 1)
  {
    oid_str.length = 0;
    if (status_value)
    {
      if (status_value <= 5u)
      {
        v11 = supplementary_error_msgs_0[status_value];
      }

      v12 = asprintf(&oid_str, "%s");
    }

    else
    {
      if (HIBYTE(status_value) && !(status_value >> 26))
      {
        v16 = calling_error_msgs_0[HIBYTE(status_value)];
      }

      if (BYTE2(status_value) <= 0x12u)
      {
        v17 = routine_error_msgs_0[(status_value & 0xFF0000) >> 16];
      }

      v12 = asprintf(&oid_str, "%s %s");
    }

    if ((v12 & 0x80000000) == 0)
    {
      length = oid_str.length;
      if (oid_str.length)
      {
        v19 = strlen(oid_str.length);
        result = 0;
        status_string->length = v19;
        status_string->value = length;
        return result;
      }
    }
  }

LABEL_29:
  if (status_string)
  {
    status_string->length = 0;
    status_string->value = 0;
  }

  return 327680;
}

OM_uint32 gss_duplicate_name(OM_uint32 *minor_status, gss_name_t src_name, gss_name_t *dest_name)
{
  _gss_mg_check_name(src_name);
  *minor_status = 0;
  *dest_name = 0;
  if (*(src_name + 5))
  {
    result = gss_import_name(minor_status, src_name + 2, src_name + 1, dest_name);
    if (result)
    {
      return result;
    }

    v7 = *(src_name + 6);
    if (v7)
    {
      v8 = *dest_name;
      do
      {
        v15 = 0;
        _gss_find_mn(minor_status, v8, v7[2], &v15);
        v7 = *v7;
      }

      while (v7);
    }

    return 0;
  }

  name = _gss_create_name(0, 0);
  if (name)
  {
    v10 = name;
    *dest_name = name;
    v11 = *(src_name + 6);
    if (!v11)
    {
      return 0;
    }

    while (1)
    {
      v12 = malloc_type_malloc(0x20uLL, 0x20040DC1BFBCFuLL);
      if (!v12)
      {
        break;
      }

      v13 = v12;
      v14 = *(v11 + 1);
      *(v12 + 8) = v14;
      if ((*(v14 + 264))(minor_status, v11[3], v12 + 24))
      {
        free(v13);
      }

      else
      {
        *v13 = *(v10 + 6);
        *(v10 + 6) = v13;
      }

      v11 = *v11;
      if (!v11)
      {
        return 0;
      }
    }
  }

  *minor_status = 12;
  return 851968;
}

OM_uint32 gss_duplicate_oid(OM_uint32 *minor_status, gss_OID src_oid, gss_OID *dest_oid)
{
  *minor_status = 0;
  if (src_oid)
  {
    v6 = malloc_type_malloc(0x10uLL, 0x10800407411B482uLL);
    *dest_oid = v6;
    if (v6)
    {
      (*dest_oid)->elements = malloc_type_malloc(src_oid->length, 0x3ED0C1AEuLL);
      elements = (*dest_oid)->elements;
      if (elements)
      {
        memcpy(elements, src_oid->elements, src_oid->length);
        result = 0;
        (*dest_oid)->length = src_oid->length;
        *minor_status = 0;
        return result;
      }

      free(*dest_oid);
      *dest_oid = 0;
    }

    *minor_status = 12;
    return 851968;
  }

  else
  {
    result = 0;
    *dest_oid = 0;
  }

  return result;
}

OM_uint32 gss_encapsulate_token(gss_const_buffer_t input_token, gss_const_OID oid, gss_buffer_t output_token)
{
  v12 = 0u;
  v13 = 0u;
  v11 = 0;
  elements = oid->elements;
  length = oid->length;
  if (der_get_oid())
  {
    if (!output_token)
    {
      return 851968;
    }

    goto LABEL_8;
  }

  value = input_token->value;
  *&v13 = input_token->length;
  *(&v13 + 1) = value;
  v8 = length_GSSAPIContextToken(&v12);
  output_token->length = v8;
  v9 = malloc_type_malloc(v8, 0xED7B60DAuLL);
  output_token->value = v9;
  if (!v9)
  {
LABEL_7:
    der_free_oid();
LABEL_8:
    output_token->length = 0;
    output_token->value = 0;
    return 851968;
  }

  if (encode_GSSAPIContextToken((v9 + output_token->length) - 1, output_token->length, &v12, &v11))
  {
    free(output_token->value);
    output_token->value = 0;
    goto LABEL_7;
  }

  der_free_oid();
  if (output_token->length != v11)
  {
    abort();
  }

  return 0;
}

OM_uint32 gss_export_name(OM_uint32 *minor_status, gss_name_t input_name, gss_buffer_t exported_name)
{
  _gss_mg_check_name(input_name);
  if (exported_name)
  {
    exported_name->length = 0;
    exported_name->value = 0;
  }

  v6 = *(input_name + 6);
  if (v6)
  {
    v7 = *(*(v6 + 8) + 168);
    v8 = *(v6 + 24);

    return v7(minor_status, v8, exported_name);
  }

  else
  {
    *minor_status = 0;
    return 1179648;
  }
}

uint64_t gss_mg_export_name(int *a1, const void **a2, const void *a3, size_t a4, size_t *a5)
{
  v10 = a4 + *a2 + 10;
  *a5 = v10;
  v11 = malloc_type_malloc(v10, 0x97F55341uLL);
  a5[1] = v11;
  if (v11)
  {
    *v11 = 260;
    v11[2] = (*a2 + 2) >> 8;
    v11[3] = *a2 + 2;
    v11[4] = 6;
    v11[5] = *a2;
    v12 = v11 + 6;
    memcpy(v11 + 6, a2[1], *a2);
    v13 = &v12[*a2];
    *v13 = bswap32(a4);
    memcpy(v13 + 4, a3, a4);
    v14 = 0;
    result = 0;
  }

  else
  {
    result = 851968;
    v14 = 12;
  }

  *a1 = v14;
  return result;
}

OM_uint32 gss_export_sec_context(OM_uint32 *minor_status, gss_ctx_id_t *context_handle, gss_buffer_t interprocess_token)
{
  *minor_status = 0;
  if (!interprocess_token)
  {
    return 0x1000000;
  }

  interprocess_token->length = 0;
  interprocess_token->value = 0;
  if (!context_handle)
  {
    return 0x80000;
  }

  v6 = *context_handle;
  if (!*context_handle || (v14.length = 0, v14.value = 0, !*(v6 + 1)))
  {
    *minor_status = 0;
    return 0x80000;
  }

  v7 = *v6;
  v8 = (*(*v6 + 224))(minor_status, v6 + 8, &v14);
  if (v8)
  {
    v9 = v8;
    _gss_mg_error(v7, *minor_status);
  }

  else
  {
    free(v6);
    *context_handle = 0;
    v11 = v14.length + *(v7 + 16) + 2;
    interprocess_token->length = v11;
    v12 = malloc_type_malloc(v11, 0x673EEE5BuLL);
    interprocess_token->value = v12;
    if (v12)
    {
      *v12 = BYTE1(*(v7 + 16));
      v12[1] = *(v7 + 16);
      v13 = v12 + 2;
      memcpy(v12 + 2, *(v7 + 24), *(v7 + 16));
      memcpy(&v13[*(v7 + 16)], v14.value, v14.length);
      gss_release_buffer(minor_status, &v14);
      return 0;
    }

    else
    {
      interprocess_token->length = 0;
      interprocess_token->value = 0;
      *minor_status = 12;
      return 851968;
    }
  }

  return v9;
}

OM_uint32 gss_import_name(OM_uint32 *minor_status, gss_buffer_t input_name_buffer, gss_const_OID input_name_type, gss_name_t *output_name)
{
  minor_statusa = 0;
  input_name = 0;
  *output_name = 0;
  _gss_load_mech();
  if (input_name_type)
  {
    v8 = input_name_type;
  }

  else
  {
    v8 = &__gss_c_nt_user_name_oid_desc;
  }

  if (gss_oid_equal(v8, &__gss_c_nt_export_name_oid_desc))
  {
    length = input_name_buffer->length;
    value = input_name_buffer->value;
    *minor_status = 0;
    *output_name = 0;
    if (length < 2)
    {
      return 0x20000;
    }

    v36 = 0;
    *&present.length = 0;
    if (*value != 4)
    {
      return 0x20000;
    }

    v11 = value[1];
    if (v11 != 1)
    {
      if (v11 != 2)
      {
        return 0x20000;
      }

      v11 = 0;
    }

    if ((length & 0xFFFFFFFFFFFFFFFELL) != 2 && value[4] == 6)
    {
      v12 = __rev16(*(value + 1));
      v13 = value[5];
      if (value[5] < 0)
      {
        v26 = 0;
        v14 = value + 6;
        v16 = v12 - 2;
        v27 = v13 - 1;
        do
        {
          v28 = *v14++;
          v26 = v28 | (v26 << 8);
          present.length = v26;
          --v16;
          --v13;
        }

        while (v13);
        v15 = length - v27 - 7;
        v13 = v26;
      }

      else
      {
        present.length = value[5];
        v14 = value + 6;
        v15 = length - 6;
        v16 = v12 - 2;
      }

      if (v16 == v13)
      {
        present.elements = v14;
        if (v15 >= v16 + 4 && (!v11 || v15 - v16 - 4 == ((v14[v16] << 24) | (v14[v16 + 1] << 16) | (v14[v16 + 2] << 8) | v14[v16 + 3])))
        {
          mechanism = __gss_get_mechanism(&present);
          if (!mechanism)
          {
            return 0x10000;
          }

          v31 = mechanism;
          v32 = (mechanism[20])(minor_status, input_name_buffer, &__gss_c_nt_export_name_oid_desc, &v36);
          if (v32)
          {
            v20 = v32;
            _gss_mg_error(v31, *minor_status);
            return v20;
          }

          name = _gss_create_name(v36, v31);
          if (name)
          {
            v20 = 0;
            *output_name = name;
            *minor_status = 0;
            return v20;
          }

          (*(v31 + 176))(minor_status, &v36);
          return 851968;
        }
      }
    }

    return 0x20000;
  }

  *minor_status = 0;
  v17 = _gss_create_name(0, 0);
  if (!v17)
  {
    *minor_status = 12;
    return 851968;
  }

  v18 = v17;
  v17[6] = 0;
  v19 = v17 + 2;
  if (_gss_copy_oid(minor_status, v8, (v17 + 2)))
  {
    input_name = v18;
    gss_release_name(&minor_statusa, &input_name);
    return 851968;
  }

  v20 = _gss_copy_buffer(minor_status, input_name_buffer, v18 + 4);
  if (v20)
  {
    goto LABEL_20;
  }

  for (i = _gss_mechs; i; i = *i)
  {
    present.length = 0;
    if (gss_test_oid_set_member(minor_status, v8, *(i + 24), &present))
    {
      v22 = 1;
    }

    else
    {
      v22 = present.length == 0;
    }

    if (!v22)
    {
      v23 = malloc_type_malloc(0x20uLL, 0x20040DC1BFBCFuLL);
      if (!v23)
      {
        *minor_status = 12;
        v20 = 851968;
LABEL_20:
        input_name = v18;
        gss_release_name(&minor_statusa, &input_name);
        return v20;
      }

      v24 = v23;
      if (v18[3])
      {
        v25 = v19;
      }

      else
      {
        v25 = 0;
      }

      if ((*(i + 200))(minor_status, v18 + 4, v25, v23 + 3))
      {
        _gss_mg_error(i + 40, *minor_status);
        free(v24);
      }

      else
      {
        v24[1] = i + 40;
        v24[2] = i + 8;
        *v24 = v18[6];
        v18[6] = v24;
      }
    }
  }

  if (!v18[6])
  {
    *minor_status = 0;
    v20 = 1179648;
    goto LABEL_20;
  }

  v20 = 0;
  *output_name = v18;
  return v20;
}

OM_uint32 gss_import_sec_context(OM_uint32 *minor_status, gss_buffer_t interprocess_token, gss_ctx_id_t *context_handle)
{
  *minor_status = 0;
  *context_handle = 0;
  length = interprocess_token->length;
  if (interprocess_token->length < 2)
  {
    return 589824;
  }

  value = interprocess_token->value;
  *&v15.length = 0;
  v5 = __rev16(*value);
  v15.length = v5;
  if (length < v5 + 2)
  {
    return 589824;
  }

  v15.elements = value + 1;
  v14[0] = length - v5 - 2;
  v14[1] = value + v5 + 2;
  mechanism = __gss_get_mechanism(&v15);
  if (!mechanism)
  {
    return 589824;
  }

  v9 = mechanism;
  v10 = malloc_type_malloc(0x18uLL, 0x20040960023A9uLL);
  if (v10)
  {
    v11 = v10;
    v10[2] = 0;
    v10[1] = 0;
    *v10 = v9;
    v12 = (*(v9 + 232))(minor_status, v14, v10 + 1);
    if (v12)
    {
      _gss_mg_error(v9, *minor_status);
      free(v11);
    }

    else
    {
      *context_handle = v11;
    }
  }

  else
  {
    *minor_status = 12;
    return 851968;
  }

  return v12;
}

OM_uint32 gss_indicate_mechs(OM_uint32 *minor_status, gss_OID_set *mech_set)
{
  _gss_load_mech();
  empty_oid_set = gss_create_empty_oid_set(minor_status, mech_set);
  if (!empty_oid_set)
  {
    v5 = _gss_mechs;
    if (_gss_mechs)
    {
      minor_statusa = 0;
      v12 = 0;
      do
      {
        v6 = *(v5 + 176);
        if (v6)
        {
          empty_oid_set = v6(minor_status, &v12);
          if (!empty_oid_set)
          {
            v7 = v12;
            if (v12->count)
            {
              v8 = 0;
              v9 = 0;
              while (1)
              {
                v10 = gss_add_oid_set_member(minor_status, &v7->elements[v8], mech_set);
                if (v10)
                {
                  break;
                }

                ++v9;
                v7 = v12;
                ++v8;
                if (v9 >= v12->count)
                {
                  goto LABEL_10;
                }
              }

              empty_oid_set = v10;
            }

            else
            {
LABEL_10:
              empty_oid_set = 0;
            }

            gss_release_oid_set(minor_status, &v12);
            if (empty_oid_set)
            {
              goto LABEL_17;
            }
          }
        }

        else
        {
          empty_oid_set = gss_add_oid_set_member(minor_status, (v5 + 8), mech_set);
          if (empty_oid_set)
          {
            goto LABEL_17;
          }
        }

        v5 = *v5;
      }

      while (v5);
      if (!empty_oid_set)
      {
        goto LABEL_19;
      }

LABEL_17:
      gss_release_oid_set(&minor_statusa, mech_set);
    }

    else
    {
      empty_oid_set = 0;
    }

LABEL_19:
    *minor_status = 0;
  }

  return empty_oid_set;
}

uint64_t replace_cred_fun(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 2529639161;
  dest_name = 0;
  if (!*a4)
  {
    if (*(a2 + 40))
    {
      if ((*(a4 + 8) & ~*(a2 + 32)) == 0)
      {
        minor_status = 0;
        if (!gss_duplicate_name(&minor_status, *(a4 + 24), &dest_name))
        {
          _gss_mg_log(1, "gss_isc running plugin %s", v8, v9, v10, v11, v12, v13, *(a2 + 24));
          *a4 = (*(a2 + 40))(dest_name, *(a4 + 32), *(a4 + 40), *(a4 + 16));
          _gss_mg_log(1, "gss_isc plugin %s done (%s replacement)", v14, v15, v16, v17, v18, v19, *(a2 + 24));
          gss_release_name(&minor_status, &dest_name);
          if (*a4)
          {
            _gss_mg_log_cred(1, *a4, "gss_isc %s replace the credential to", v20, v21, v22, v23, v24, *(a2 + 24));
            return 0;
          }
        }
      }
    }
  }

  return v4;
}

OM_uint32 gss_inquire_context(OM_uint32 *minor_status, gss_ctx_id_t context_handle, gss_name_t *src_name, gss_name_t *targ_name, OM_uint32 *lifetime_rec, gss_OID *mech_type, OM_uint32 *ctx_flags, int *locally_initiated, int *xopen)
{
  if (locally_initiated)
  {
    *locally_initiated = 0;
  }

  if (xopen)
  {
    *xopen = 0;
  }

  if (lifetime_rec)
  {
    *lifetime_rec = 0;
  }

  if (src_name)
  {
    *src_name = 0;
  }

  if (targ_name)
  {
    *targ_name = 0;
  }

  if (mech_type)
  {
    *mech_type = 0;
  }

  v22 = 0;
  v23 = 0;
  if (!context_handle || (v13 = *(context_handle + 1)) == 0)
  {
    *minor_status = 0;
    return 0x80000;
  }

  v14 = *context_handle;
  if (src_name)
  {
    v15 = &v23;
  }

  else
  {
    v15 = 0;
  }

  if (targ_name)
  {
    v16 = &v22;
  }

  else
  {
    v16 = 0;
  }

  v17 = (*(*context_handle + 192))(minor_status, v13, v15, v16);
  if (!v17)
  {
    if (src_name)
    {
      name = _gss_create_name(v23, v14);
      if (!name)
      {
        if (mech_type)
        {
          *mech_type = 0;
        }

        (*(v14 + 176))(minor_status, &v23);
        goto LABEL_40;
      }

      *src_name = name;
    }

    if (!targ_name)
    {
      return 0;
    }

    v21 = _gss_create_name(v22, v14);
    if (v21)
    {
      v18 = 0;
      *targ_name = v21;
      return v18;
    }

    if (mech_type)
    {
      *mech_type = 0;
    }

    if (src_name)
    {
      gss_release_name(minor_status, src_name);
    }

    (*(v14 + 176))(minor_status, &v22);
LABEL_40:
    *minor_status = 0;
    return 851968;
  }

  v18 = v17;
  _gss_mg_error(v14, *minor_status);
  return v18;
}

OM_uint32 gss_inquire_cred_by_mech(OM_uint32 *minor_status, gss_cred_id_t cred_handle, gss_OID mech_type, gss_name_t *cred_name, OM_uint32 *initiator_lifetime, OM_uint32 *acceptor_lifetime, gss_cred_usage_t *cred_usage)
{
  *minor_status = 0;
  if (cred_name)
  {
    *cred_name = 0;
  }

  if (initiator_lifetime)
  {
    *initiator_lifetime = 0;
  }

  if (acceptor_lifetime)
  {
    *acceptor_lifetime = 0;
  }

  if (cred_usage)
  {
    *cred_usage = 0;
  }

  mechanism = __gss_get_mechanism(mech_type);
  if (!mechanism)
  {
    return 458752;
  }

  v15 = mechanism;
  v16 = mechanism[27];
  if (!v16)
  {
    return 458752;
  }

  v23 = 0;
  if (cred_handle)
  {
    v17 = (cred_handle + 16);
    while (1)
    {
      v17 = *v17;
      if (!v17)
      {
        return 458752;
      }

      if (v17[1] == mechanism)
      {
        v18 = v17[3];
        goto LABEL_17;
      }
    }
  }

  v18 = 0;
LABEL_17:
  v19 = v16(minor_status, v18, mech_type, &v23, initiator_lifetime, acceptor_lifetime, cred_usage);
  if (!v19)
  {
    if (!cred_name)
    {
      (*(v15 + 176))(minor_status, &v23);
      return 0;
    }

    name = _gss_create_name(v23, v15);
    if (name)
    {
      v20 = 0;
      *cred_name = name;
      return v20;
    }

    (*(v15 + 176))(minor_status, &v23);
    return 458752;
  }

  v20 = v19;
  _gss_mg_error(v15, *minor_status);
  return v20;
}

OM_uint32 gss_inquire_cred_by_oid(OM_uint32 *minor_status, gss_cred_id_t cred_handle, gss_OID desired_object, gss_buffer_set_t *data_set)
{
  buffer_set = 0;
  *minor_status = 0;
  *data_set = 0;
  if (!cred_handle)
  {
    return 458752;
  }

  v4 = *(cred_handle + 2);
  if (!v4)
  {
    return 851968;
  }

  v8 = 851968;
  do
  {
    v17 = 0;
    v9 = v4[1];
    if (!v9)
    {
      gss_release_buffer_set(minor_status, &buffer_set);
      *minor_status = 0;
      return 0x10000;
    }

    v10 = *(v9 + 280);
    if (v10)
    {
      v11 = v10(minor_status, v4[3], desired_object, &v17);
      if (v11)
      {
        v8 = v11;
        _gss_mg_error(v9, *minor_status);
      }

      else
      {
        v12 = v17;
        if (v17)
        {
          v13 = 0;
          v14 = -1;
          do
          {
            if (++v14 >= v12->count)
            {
              break;
            }

            v15 = gss_add_buffer_set_member(minor_status, &v12->elements[v13], &buffer_set);
            if (v15)
            {
              v8 = v15;
              goto LABEL_15;
            }

            ++v13;
            v12 = v17;
          }

          while (v17);
        }

        v8 = 0;
LABEL_15:
        gss_release_buffer_set(minor_status, &v17);
      }
    }

    v4 = *v4;
  }

  while (v4);
  if (buffer_set)
  {
    result = 0;
    *data_set = buffer_set;
    *minor_status = 0;
  }

  else if (v8)
  {
    return v8;
  }

  else
  {
    return 851968;
  }

  return result;
}

OM_uint32 gss_inquire_cred(OM_uint32 *minor_status, gss_cred_id_t cred_handle, gss_name_t *name_ret, OM_uint32 *lifetime, gss_cred_usage_t *cred_usage, gss_OID_set *mechanisms)
{
  _gss_load_mech();
  *minor_status = 0;
  if (name_ret)
  {
    *name_ret = 0;
  }

  if (lifetime)
  {
    *lifetime = 0;
  }

  if (cred_usage)
  {
    *cred_usage = 0;
  }

  if (mechanisms)
  {
    *mechanisms = 0;
  }

  if (name_ret)
  {
    name = _gss_create_name(0, 0);
    if (!name)
    {
      *minor_status = 12;
      return 851968;
    }

    if (!mechanisms)
    {
      goto LABEL_17;
    }

LABEL_14:
    empty_oid_set = gss_create_empty_oid_set(minor_status, mechanisms);
    if (empty_oid_set)
    {
      v14 = empty_oid_set;
      if (name)
      {
        free(name);
      }

      return v14;
    }

    goto LABEL_17;
  }

  name = 0;
  if (mechanisms)
  {
    goto LABEL_14;
  }

LABEL_17:
  v33 = 0;
  if (cred_handle)
  {
    v15 = *(cred_handle + 2);
    if (v15)
    {
      v30 = cred_usage;
      v16 = 0;
      v17 = 0;
      v18 = -1;
      while (1)
      {
        input_name = 0;
        v31 = 0;
        if (!(v15[1][23])(minor_status, v15[3], &input_name, &v31, &v33, 0))
        {
          v19 = 3 - v33;
          if (v33 > 3)
          {
            v19 = 0;
          }

          v17 |= v19;
          if (!name)
          {
            (v15[1][22])(minor_status, &input_name);
            goto LABEL_27;
          }

          v20 = malloc_type_malloc(0x20uLL, 0x20040DC1BFBCFuLL);
          v21 = v15[1];
          if (v20)
          {
            v20[1] = v21;
            v22 = input_name;
            v20[2] = v15[2];
            v20[3] = v22;
            *v20 = name[6];
            name[6] = v20;
LABEL_27:
            if (v31 < v18)
            {
              v18 = v31;
            }

            if (mechanisms)
            {
              gss_add_oid_set_member(minor_status, v15[2], mechanisms);
            }

            ++v16;
            goto LABEL_33;
          }

          (v21[22])(minor_status, &input_name);
        }

LABEL_33:
        v15 = *v15;
        if (!v15)
        {
          goto LABEL_34;
        }
      }
    }

LABEL_64:
    v23 = 0;
    goto LABEL_65;
  }

  v24 = _gss_mechs;
  if (!_gss_mechs)
  {
    goto LABEL_64;
  }

  v30 = cred_usage;
  v16 = 0;
  v17 = 0;
  v18 = -1;
  do
  {
    input_name = 0;
    v31 = 0;
    v25 = *(v24 + 224);
    if (v25 && !v25(minor_status, 0, &input_name, &v31, &v33, 0))
    {
      v26 = 3 - v33;
      if (v33 > 3)
      {
        v26 = 0;
      }

      v17 |= v26;
      if (name && input_name)
      {
        v27 = malloc_type_malloc(0x20uLL, 0x20040DC1BFBCFuLL);
        if (!v27)
        {
          (*(v24 + 216))(minor_status, &input_name);
          goto LABEL_61;
        }

        v27[1] = v24 + 40;
        v27[2] = v24 + 8;
        v27[3] = input_name;
        *v27 = name[6];
        name[6] = v27;
      }

      else if (input_name)
      {
        (*(v24 + 216))(minor_status, &input_name);
      }

      if (v31 < v18)
      {
        v18 = v31;
      }

      if (mechanisms)
      {
        gss_add_oid_set_member(minor_status, (v24 + 8), mechanisms);
      }

      ++v16;
    }

LABEL_61:
    v24 = *v24;
  }

  while (v24);
LABEL_34:
  v23 = v18 == 0;
  if (v16 && v18)
  {
    *minor_status = 0;
    if (name_ret)
    {
      *name_ret = name;
    }

    if (lifetime)
    {
      *lifetime = v18;
    }

    if (!v30)
    {
      return 0;
    }

    if ((~v17 & 3) == 0)
    {
      v14 = 0;
      *v30 = 0;
      return v14;
    }

    if ((v17 & 2) != 0)
    {
      v14 = 0;
      v29 = 1;
    }

    else
    {
      if ((v17 & 1) == 0)
      {
        return 0;
      }

      v14 = 0;
      v29 = 2;
    }

    *v30 = v29;
    return v14;
  }

LABEL_65:
  input_name = name;
  if (name)
  {
    gss_release_name(minor_status, &input_name);
  }

  gss_release_oid_set(minor_status, mechanisms);
  *minor_status = 0;
  if (v23)
  {
    return 720896;
  }

  else
  {
    return 458752;
  }
}

OM_uint32 gss_inquire_mechs_for_name(OM_uint32 *minor_status, gss_name_t input_name, gss_OID_set *mech_types)
{
  *minor_status = 0;
  _gss_load_mech();
  empty_oid_set = gss_create_empty_oid_set(minor_status, mech_types);
  if (!empty_oid_set)
  {
    v7 = _gss_mechs;
    if (_gss_mechs)
    {
      name_types = 0;
      present = 0;
      while (1)
      {
        v8 = gss_inquire_names_for_mech(minor_status, (v7 + 8), &name_types);
        if (v8)
        {
          break;
        }

        gss_test_oid_set_member(minor_status, input_name + 1, name_types, &present);
        gss_release_oid_set(minor_status, &name_types);
        if (present)
        {
          v8 = gss_add_oid_set_member(minor_status, (v7 + 8), mech_types);
          if (v8)
          {
            break;
          }
        }

        v7 = *v7;
        if (!v7)
        {
          return 0;
        }
      }

      empty_oid_set = v8;
      gss_release_oid_set(minor_status, mech_types);
    }

    else
    {
      return 0;
    }
  }

  return empty_oid_set;
}

OM_uint32 gss_inquire_names_for_mech(OM_uint32 *minor_status, gss_const_OID mechanism, gss_OID_set *name_types)
{
  v6 = __gss_get_mechanism(mechanism);
  *minor_status = 0;
  *name_types = 0;
  if (!v6)
  {
    return 0x10000;
  }

  v7 = v6[30];
  if (!v7)
  {
    empty_oid_set = gss_create_empty_oid_set(minor_status, name_types);
    if (!empty_oid_set)
    {
      v10 = gss_add_oid_set_member(minor_status, &__gss_c_nt_hostbased_service_oid_desc, name_types);
      if (v10)
      {
        empty_oid_set = v10;
        v13 = 0;
        p_minor_statusa = &v13;
LABEL_12:
        gss_release_oid_set(p_minor_statusa, name_types);
        return empty_oid_set;
      }

      empty_oid_set = gss_add_oid_set_member(minor_status, &__gss_c_nt_user_name_oid_desc, name_types);
      if (empty_oid_set)
      {
        minor_statusa = 0;
        p_minor_statusa = &minor_statusa;
        goto LABEL_12;
      }
    }

    return empty_oid_set;
  }

  return v7(minor_status, mechanism, name_types);
}

OM_uint32 gss_inquire_sec_context_by_oid(OM_uint32 *minor_status, gss_ctx_id_t context_handle, gss_OID desired_object, gss_buffer_set_t *data_set)
{
  *minor_status = 0;
  *data_set = 0;
  if (!context_handle)
  {
    return 0x80000;
  }

  v4 = *context_handle;
  if (!*context_handle)
  {
    return 0x10000;
  }

  v5 = *(v4 + 272);
  if (!v5)
  {
    return 0x10000;
  }

  v7 = *(context_handle + 1);
  v8 = v5();
  if (v8)
  {
    _gss_mg_error(v4, *minor_status);
  }

  return v8;
}

OM_uint32 gss_krb5_copy_ccache(OM_uint32 *minor_status, gss_cred_id_t cred, krb5_ccache_data *out)
{
  v12 = 0;
  data_set = 0;
  v10 = 0;
  v11 = 0;
  result = gss_inquire_cred_by_oid(minor_status, cred, &__gss_krb5_copy_ccache_x_oid_desc, &data_set);
  if (!result)
  {
    if (data_set && data_set->count)
    {
      inited = krb5_init_context(&v12);
      if (inited)
      {
        *minor_status = inited;
        gss_release_buffer_set(minor_status, &data_set);
        return 851968;
      }

      v7 = asprintf(&v10, "%.*s", data_set->elements->length, data_set->elements->value);
      gss_release_buffer_set(minor_status, &data_set);
      if ((v7 & 0x80000000) == 0 && v10)
      {
        v8 = krb5_cc_resolve(v12, v10, &v11);
        free(v10);
        if (v8)
        {
          *minor_status = v8;
        }

        else
        {
          v9 = krb5_cc_copy_cache();
          krb5_cc_close(v12, v11);
          heim_release();
          if (!v9)
          {
            return 0;
          }

          *minor_status = v9;
        }

        return 851968;
      }

      v6 = 12;
    }

    else
    {
      gss_release_buffer_set(minor_status, &data_set);
      v6 = 22;
    }

    *minor_status = v6;
    return 851968;
  }

  return result;
}

uint64_t __ApplePrivate_gss_krb5_import_cred(OM_uint32 *a1, uint64_t a2, const krb5_principal_data *a3, uint64_t a4, gss_cred_id_t *a5)
{
  value.length = 0;
  value.value = 0;
  v20.value = 0;
  v21 = 0;
  v19 = 0;
  v20.length = 0;
  *a5 = 0;
  inited = krb5_init_context(&v21);
  if (!inited)
  {
    if (!krb5_storage_emem())
    {
      *a1 = 12;
      v11 = 851968;
LABEL_15:
      heim_release();
      return v11;
    }

    if (a2)
    {
      full_name = krb5_cc_get_full_name();
      if (!full_name)
      {
        full_name = krb5_store_string();
        free(v19);
        if (!full_name)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      full_name = krb5_store_string();
      if (!full_name)
      {
LABEL_7:
        if (a3)
        {
          v13 = krb5_unparse_name(v21, a3, &v19);
          if (v13)
          {
            v14 = v13;
LABEL_22:
            *a1 = v14;
            goto LABEL_13;
          }

          v14 = krb5_store_string();
          free(v19);
          if (v14)
          {
            goto LABEL_22;
          }
        }

        else
        {
          krb5_store_string();
        }

        if (a4)
        {
          v16 = krb5_kt_get_full_name();
          if (v16)
          {
            v17 = v16;
LABEL_27:
            *a1 = v17;
            goto LABEL_13;
          }

          v17 = krb5_store_string();
          free(v19);
          if (v17)
          {
            goto LABEL_27;
          }
        }

        else
        {
          krb5_store_string();
        }

        v18 = krb5_storage_to_data();
        if (!v18)
        {
          value = v20;
          v11 = gss_set_cred_option(a1, a5, &__gss_krb5_import_cred_x_oid_desc, &value);
          krb5_data_free();
          goto LABEL_14;
        }

        *a1 = v18;
LABEL_13:
        v11 = 851968;
LABEL_14:
        krb5_storage_free();
        goto LABEL_15;
      }
    }

    *a1 = full_name;
    goto LABEL_13;
  }

  *a1 = inited;
  return 851968;
}

OM_uint32 gsskrb5_register_acceptor_identity(const char *identity)
{
  _gss_load_mech();
  v6[1] = identity;
  v6[0] = strlen(identity);
  mechanism = __gss_get_mechanism(&__gss_krb5_mechanism_oid_desc);
  if (!mechanism)
  {
    return 851968;
  }

  v3 = mechanism[36];
  if (!v3)
  {
    return 851968;
  }

  v5 = 0;
  return v3(&v5, 0, &__gss_krb5_register_acceptor_identity_x_oid_desc, v6);
}

uint64_t __ApplePrivate_gsskrb5_set_dns_canonicalize(int a1)
{
  v4 = a1 != 0;
  _gss_load_mech();
  v6[0] = 1;
  v6[1] = &v4;
  v1 = _gss_mechs;
  if (_gss_mechs)
  {
    v5 = 0;
    do
    {
      v2 = v1[41];
      if (v2)
      {
        v2(&v5, 0, &__gss_krb5_set_dns_canonicalize_x_oid_desc, v6);
      }

      v1 = *v1;
    }

    while (v1);
  }

  return 0;
}

OM_uint32 gss_krb5_export_lucid_sec_context(OM_uint32 *minor_status, gss_ctx_id_t *context_handle, OM_uint32 version, void **rctx)
{
  data_set = 0;
  v17 = 0;
  if (context_handle)
  {
    if (version == 1)
    {
      v5 = *context_handle;
      if (v5)
      {
        v15 = 0;
        result = gss_inquire_sec_context_by_oid(minor_status, v5, &__gss_krb5_export_lucid_context_v1_x_oid_desc, &data_set);
        if (result)
        {
          return result;
        }

        if (data_set && data_set->count == 1)
        {
          inited = krb5_init_context(&v17);
          if (inited)
          {
            v8 = inited;
            v9 = 0;
          }

          else
          {
            v9 = malloc_type_calloc(1uLL, 0x68uLL, 0x108004058AB55F0uLL);
            if (v9)
            {
              elements = data_set->elements;
              length = elements->length;
              value = elements->value;
              if (krb5_storage_from_mem())
              {
                v13 = krb5_ret_uint32();
                if (v13)
                {
                  v8 = v13;
                }

                else
                {
                  v8 = 22;
                }

                gss_release_buffer_set(minor_status, &data_set);
                krb5_storage_free();
                goto LABEL_20;
              }
            }

            v8 = 12;
          }

          gss_release_buffer_set(minor_status, &data_set);
LABEL_20:
          if (v17)
          {
            heim_release();
          }

          LODWORD(v14) = 0;
          if (v9)
          {
            gss_krb5_free_lucid_sec_context(&v14, v9);
          }

          *minor_status = v8;
          return 851968;
        }

        gss_release_buffer_set(minor_status, &data_set);
      }
    }
  }

  *minor_status = 22;
  return 851968;
}

uint64_t set_key(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 4) = v4;
  v5 = malloc_type_malloc(v4, 0x8E89058uLL);
  *(a2 + 8) = v5;
  v6 = *(a2 + 4);
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (!v7)
  {
    return 12;
  }

  memcpy(v5, *(a1 + 16), v6);
  return 0;
}

OM_uint32 gss_krb5_free_lucid_sec_context(OM_uint32 *minor_status, void *c)
{
  if (*c != 1)
  {
    v8 = 851968;
    result = 851968;
    if (!minor_status)
    {
      return result;
    }

    goto LABEL_7;
  }

  v4 = *(c + 8);
  if (!v4)
  {
    v5 = 52;
    v6 = 56;
    v7 = 48;
    goto LABEL_10;
  }

  if (v4 == 1)
  {
    bzero(*(c + 10), *(c + 19));
    free(*(c + 10));
    *(c + 9) = 0;
    *(c + 10) = 0;
    if (*(c + 16))
    {
      v5 = 92;
      v6 = 96;
      v7 = 88;
LABEL_10:
      v10 = c + v7;
      bzero(*(c + v6), *(c + v5));
      free(*(c + v6));
      *v10 = 0;
      v10[1] = 0;
    }
  }

  free(c);
  v8 = 0;
  result = 0;
  if (!minor_status)
  {
    return result;
  }

LABEL_7:
  *minor_status = 0;
  return v8;
}