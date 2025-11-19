uint64_t sub_100036A34(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v4 = v3;
  v5 = v2;
  sub_10001F2C4(__stack_chk_guard);
  v6 = 0x4000;
  bzero(__src, 0x4000uLL);
  __count = 0x4000;
  v7 = sub_10001B7FC();
  if (v7)
  {
    v6 = (v1 + 6);
    if (v5 && v4)
    {
      v12 = sub_10001C694(v7, 0x96u, 0, 0, v8, v9, v10, v11, __src, &__count);
      if (v12)
      {
        v6 = v12;
      }

      else
      {
        v13 = calloc(__count, 1uLL);
        *v5 = v13;
        if (v13)
        {
          v14 = __count;
          *v4 = __count;
          memcpy(v13, __src, v14);
          v6 = 0;
        }

        else
        {
          v6 = (v1 + 1);
        }
      }
    }
  }

  else
  {
    sub_10001C680();
    fprintf(v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v17, v18, v19, v20, v21, v22, v23, ":", 3992, "", "");
    sub_10001F1F0();
  }

  sub_10001F33C(__src);
  return v6;
}

void sub_100036B98()
{
  sub_1000151C0();
  if (v1 && v0 <= 0x30)
  {
    v2 = sub_10001B7FC();
    if (v2)
    {
      v3 = v2;
      ccder_sizeof_raw_octet_string();
      ccder_sizeof_uint64();
      ccder_sizeof_raw_octet_string();
      v4 = ccder_sizeof();
      v5 = v4;
      __chkstk_darwin(v4);
      v7 = &v18[-v6];
      bzero(&v18[-v6], v5);
      ccder_encode_raw_octet_string();
      ccder_encode_uint64();
      ccder_encode_raw_octet_string();
      if (ccder_encode_constructed_tl() == v7)
      {
        sub_10001C6F8(v3, 0x72u, 0, 0, v7, v5, v8, v9, 0, 0);
      }

      else
      {
        sub_10001F124();
      }
    }

    else
    {
      sub_10001C750();
      sub_10001C680();
      fprintf(v10, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v11, v12, v13, v14, v15, v16, v17, ":", 4036, "", "");
    }
  }

  sub_1000151D8();
}

void sub_100036D90(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v33 = v1;
  sub_10001F49C(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v23, v25, v27);
  __n = 4096;
  v9 = sub_10001B7FC();
  if (v9)
  {
    v15 = sub_10001F040(v9, 0x8Bu, &v33, v10, v11, v12, v13, v14, v32, &__n);
    v16 = __n;
    if (!v15)
    {
      sub_10001F1FC();
      if (v16 - 4097 >= 0xFFFFFFFFFFFFF000)
      {
        sub_10003AB90(v32);
        v16 = __n;
      }
    }
  }

  else
  {
    sub_10001C680();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v22, v24, v26, v28, v29, v30, ":", 4130, "", "");
    v16 = 4096;
  }

  sub_10001F244(v32, v16);
  sub_10001F25C();
}

uint64_t sub_100036EE0(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v18 = 4096;
  if (!v1)
  {
    return 4294967285;
  }

  v2 = v1;
  v3 = sub_10001B7FC();
  if (v3)
  {
    v4 = v3;
    bzero(v19, 0x1000uLL);
    result = sub_10001C694(v4, 0x98u, 0, 0, v5, v6, v7, v8, v19, &v18);
    if (!result)
    {
      if (v18 == 8)
      {
        result = 0;
        *v2 = v19[0];
      }

      else
      {
        return sub_10001F39C();
      }
    }
  }

  else
  {
    sub_10001C680();
    fprintf(v10, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v11, v12, v13, v14, v15, v16, v17, ":", 4183, "", "");
    return sub_10001F0EC();
  }

  return result;
}

void sub_10003701C()
{
  sub_10001F470();
  v1 = __chkstk_darwin(v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v26 = 4096;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v9 = sub_10001B7FC();
  if (v9)
  {
    v10 = v9;
    bzero(v27, 0x1000uLL);
    if (!sub_10001C694(v10, 0x9Eu, 0, 0, v11, v12, v13, v14, v27, &v26) && !sub_10003C284(v27, v26, &v23))
    {
      if (v8)
      {
        *v8 = *(&v25 + 1);
      }

      if (v7)
      {
        *v7 = v25;
      }

      if (v5)
      {
        *v5 = *(&v24 + 1);
      }

      if (v3)
      {
        *v3 = v24;
      }
    }
  }

  else
  {
    sub_10001C680();
    fprintf(v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v16, v17, v18, v19, v20, v21, v22, ":", 4204, "", "");
  }

  sub_10001F45C();
}

uint64_t sub_10003719C(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  value = 0;
  result = CFDictionaryGetValueIfPresent(a1, a2, &value);
  if (result)
  {
    if (CFGetTypeID(value) == a3)
    {
      if (CFNumberGetTypeID() == a3)
      {
        v8 = 0;
        if (!CFNumberGetValue(value, kCFNumberSInt64Type, &v8))
        {
          return 0xFFFFFFFFLL;
        }

        v5 = sub_10001A628();
        if (sub_100039FA4(v5, v6, v7))
        {
          return 0xFFFFFFFFLL;
        }

        return 0;
      }

      if (CFBooleanGetTypeID() == a3)
      {
        CFBooleanGetValue(value);
        sub_10001A628();
        if (sub_100039E7C())
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        if (CFDataGetTypeID() != a3)
        {
          return 0xFFFFFFFFLL;
        }

        CFDataGetBytePtr(value);
        CFDataGetLength(value);
        sub_10001A628();
        if (sub_100039CE0())
        {
          return 0xFFFFFFFFLL;
        }
      }

      return 0;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_100038888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(__s, 0, sizeof(__s));
  if (a4 == 3)
  {
    ccsha256_di();
    cchmac();
    v5 = 0;
    *a3 = __s[0];
    *(a3 + 2) = BYTE2(__s[0]);
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  memset_s(__s, 0x20uLL, 0, 0x20uLL);
  return v5;
}

uint64_t sub_100038954(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v5 = 0;
  sub_100038888(a2, a3, &v5, 3);
  return sub_10001FBC8(a1, &v5, 3uLL);
}

uint64_t sub_1000389AC(unsigned __int8 *a1, unint64_t a2, void *a3, unint64_t *a4)
{
  v5 = 0xFFFFFFFFLL;
  if ((a2 & 1) == 0)
  {
    v6 = a1;
    if (a1)
    {
      if (a3 && a4)
      {
        v9 = a2 >> 1;
        v10 = calloc(a2 >> 1, 1uLL);
        if (v10)
        {
          if (a2 >= 2)
          {
            v11 = a2 >> 1;
            v12 = v10;
            do
            {
              v13 = *v6;
              v14 = v13 - 48;
              v15 = v13 - 97;
              if ((v13 - 65) >= 6)
              {
                v16 = -1;
              }

              else
              {
                v16 = v13 - 55;
              }

              v17 = v13 - 87;
              if (v15 > 5)
              {
                v17 = v16;
              }

              if (v14 < 0xA)
              {
                v17 = v14;
              }

              v18 = 16 * v17;
              v19 = v6[1];
              v20 = v19 - 48;
              v21 = v19 - 97;
              if ((v19 - 65) >= 6)
              {
                v22 = -1;
              }

              else
              {
                v22 = v19 - 55;
              }

              v23 = v19 - 87;
              if (v21 > 5)
              {
                v23 = v22;
              }

              if (v20 < 0xA)
              {
                v23 = v20;
              }

              *v12++ = v23 | v18;
              v6 += 2;
              --v11;
            }

            while (v11);
          }

          v5 = 0;
          *a3 = v10;
          *a4 = v9;
        }

        else
        {
          return 4294967279;
        }
      }
    }
  }

  return v5;
}

uint64_t sub_100038AB0(void *a1, uint64_t a2, char a3)
{
  memset_s(a1, 0x10uLL, 0, 0x10uLL);
  if (a2 && *a2 && (v6 = *(a2 + 8)) != 0)
  {
    if (a3)
    {
      return 4294967285;
    }

    else
    {
      v8 = calloc(v6, 1uLL);
      if (v8)
      {
        *a1 = v8;
        v9 = *a2;
        v10 = *(a2 + 8);
        a1[1] = v10;
        memcpy(v8, v9, v10);
        return 0;
      }

      else
      {
        return 4294967279;
      }
    }
  }

  else
  {
    result = 0;
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t sub_100038B44(void **a1, _DWORD *a2, uint64_t a3, unsigned int a4, char a5)
{
  __s = 0;
  __n = 0;
  v10[0] = a3;
  v10[1] = a4;
  v7 = sub_100038AB0(&__s, v10, a5);
  if (v7)
  {
    v8 = v7;
LABEL_7:
    memset_s(__s, __n, 0, __n);
    free(__s);
    return v8;
  }

  if (HIDWORD(__n))
  {
    v8 = 4294967286;
    goto LABEL_7;
  }

  v8 = 0;
  *a2 = __n;
  *a1 = __s;
  return v8;
}

uint64_t sub_100038C54(int *a1, uint64_t (*a2)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), char a3, uint64_t *a4, unsigned int a5, uint64_t a6, unsigned int *a7, int a8)
{
  HIDWORD(v48) = 0;
  v53 = 0u;
  v54 = 0u;
  __s = 0u;
  v52 = 0u;
  *v49 = 0u;
  v50 = 0u;
  v9 = 0xFFFFFFFFLL;
  if (a6 && a7)
  {
    v14 = a1;
    if (a1)
    {
      v15 = *a1;
      if ((*a1 - 1) < 2)
      {
        if ((a3 & 4) != 0)
        {
          v16 = 64;
        }

        else
        {
          v16 = 72;
        }

        HIDWORD(v48) = v16;
        v9 = 0xFFFFFFFFLL;
        if (a2)
        {
          goto LABEL_45;
        }

        v17 = a5 == 32 && *a7 >= v16;
        if (!v17)
        {
          goto LABEL_45;
        }

        v18 = v16;
        if (v15 == 1)
        {
          LODWORD(a1) = sub_10001FF10((a1 + 10), &__s);
        }

        else
        {
          v30 = *(a1 + 6);
          __s = *(a1 + 2);
          v52 = v30;
          v31 = *(a1 + 14);
          v53 = *(a1 + 10);
          v54 = v31;
        }

        if ((a3 & 0x80) == 0)
        {
          v32 = v52;
          *a6 = __s;
          *(a6 + 16) = v32;
          if ((a3 & 4) != 0)
          {
            v33 = ccaes_cbc_encrypt_mode();
            v34 = sub_1000201EC(v33, 32, &v53, &unk_100063188, 0x20uLL);
            v35 = sub_10002011C(v34);
            LODWORD(a1) = sub_10001FE98(v35, 166, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_39:
            v45 = v18;
            v9 = 0;
LABEL_44:
            *a7 = v45;
            goto LABEL_45;
          }

          LODWORD(v48) = 40;
          if ((a3 & 8) != 0)
          {
            ccsha256_di();
            v47 = v49;
            sub_1000200D4();
          }

          sub_10002010C();
          LODWORD(a1) = sub_10001B398(v39, v40, v41, v42, a4, 0x20u, v43, v44);
          if (!a1)
          {
            goto LABEL_39;
          }
        }

        goto LABEL_48;
      }

      if (v15)
      {
        goto LABEL_48;
      }
    }

    if (a2)
    {
      v21 = sub_100020128();
      LODWORD(a1) = sub_10002D36C(v21, v22);
      if (a1)
      {
        sub_1000200FC();
        if (!v17)
        {
          goto LABEL_48;
        }

        v23 = 0;
        v24 = 0;
        v25 = a2;
        v26 = a4;
LABEL_42:
        LODWORD(a1) = sub_10001B398(v23, v24, 0xA6A6A6A6A6A6A6A6, v25, v26, a5, a6, &v48 + 1);
        if (!a1)
        {
          goto LABEL_43;
        }

LABEL_48:
        v9 = 0xFFFFFFFFLL;
        goto LABEL_45;
      }
    }

    else
    {
      if ((a3 & 4) != 0)
      {
        if ((a5 & 0xF) != 0 || *a7 < a5)
        {
          goto LABEL_48;
        }

        HIDWORD(v48) = a5;
        v36 = ccaes_cbc_encrypt_mode();
        v37 = sub_1000201EC(v36, 32, (v14 + 3), &unk_100063188, a5);
        v38 = sub_10002011C(v37);
        LODWORD(a1) = sub_10001FE98(v38, 121, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_43:
        v9 = 0;
        v45 = HIDWORD(v48);
        goto LABEL_44;
      }

      v28 = sub_100020128();
      LODWORD(a1) = sub_10002D36C(v28, v29);
      if (a1)
      {
        sub_1000200FC();
        if (!v17)
        {
          goto LABEL_48;
        }

        if ((a3 & 8) != 0)
        {
          ccsha256_di();
          v47 = v49;
          sub_1000200D4();
          v23 = v49;
        }

        else
        {
          v23 = (v14 + 3);
        }

        v24 = 32;
        v25 = 0;
        v26 = a4;
        goto LABEL_42;
      }
    }

    v9 = 4294967285;
  }

LABEL_45:
  if ((a3 & 8) != 0)
  {
    sub_10001C840(a1, a2, a3, a4, a5, a6, a7, a8, v47, v48, v49[0]);
  }

  memset_s(&__s, 0x40uLL, 0, 0x40uLL);
  return v9;
}

uint64_t sub_100038F88(_DWORD *a1, uint64_t (*a2)(void, void *, unint64_t *, unint64_t *, uint64_t), char a3, void *a4, unsigned int a5, void *a6, unsigned int *a7)
{
  HIDWORD(v47) = 0;
  memset(__s, 0, sizeof(__s));
  v8 = 0xFFFFFFFFLL;
  if (a4 && a5)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

    if (*a1 != 1)
    {
      if (!*a1)
      {
LABEL_6:
        if (a5 <= 0x28)
        {
          if (a2)
          {
            v15 = sub_100020128();
            if (!sub_10001B7B8(v15, v16))
            {
              goto LABEL_40;
            }

            sub_1000200FC();
            if (!v17)
            {
              goto LABEL_40;
            }

            v18 = &v47 + 1;
            v19 = 0;
            v20 = 0;
            v21 = 0xA6A6A6A6A6A6A6A6;
            v22 = a2;
          }

          else
          {
            if ((a3 & 4) != 0)
            {
              if ((a5 & 0xF) != 0 || *a7 < a5)
              {
                goto LABEL_40;
              }

              HIDWORD(v47) = a5;
              v25 = ccaes_cbc_decrypt_mode();
              v26 = sub_1000201EC(v25, 32, (a1 + 3), &unk_100063188, a5);
              v27 = sub_10002011C(v26);
              sub_10001FE98(v27, 273, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_33:
              v8 = 0;
              *a7 = HIDWORD(v47);
              goto LABEL_37;
            }

            v23 = sub_100020128();
            if (!sub_10001B7B8(v23, v24))
            {
              goto LABEL_40;
            }

            sub_1000200FC();
            if (!v17)
            {
              goto LABEL_40;
            }

            if ((a3 & 8) != 0)
            {
              ccsha256_di();
              sub_1000200D4();
            }

            sub_10002010C();
          }

          if (!sub_10001B74C(v19, v20, v21, v22, a4, a5, a6, v18))
          {
            goto LABEL_33;
          }
        }

        goto LABEL_42;
      }

LABEL_24:
      v8 = 0xFFFFFFFFLL;
      goto LABEL_37;
    }

    HIDWORD(v47) = 32;
    if (*a7 >= 0x20)
    {
      *v48 = 0uLL;
      v49 = 0uLL;
      if ((a3 & 4) != 0)
      {
        if (a5 == 64)
        {
          sub_100020134();
          v28 = ccaes_cbc_decrypt_mode();
          v29 = sub_1000201EC(v28, 32, v48, &unk_100063188, 0x20uLL);
          v30 = sub_10002011C(v29);
          v31 = sub_10001FE98(v30, 296, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
          goto LABEL_36;
        }
      }

      else if (a5 == 72)
      {
        sub_100020134();
        if (a3 < 0)
        {
          goto LABEL_24;
        }

        LODWORD(v47) = 32;
        if ((a3 & 8) != 0)
        {
          ccsha256_di();
          v46 = __s;
          sub_1000200D4();
        }

        sub_10002010C();
        v31 = sub_10001B74C(v39, v40, v41, v42, v43, 0x28u, a6, v44);
        if (v31)
        {
          sub_10001C840(v31, v32, v33, v34, v35, v36, v37, v38, v46, v47, v48[0]);
LABEL_42:
          v8 = 4294967277;
          goto LABEL_37;
        }

LABEL_36:
        sub_10001C840(v31, v32, v33, v34, v35, v36, v37, v38, v46, v47, v48[0]);
        v8 = 0;
        *a7 = 32;
        goto LABEL_37;
      }
    }

LABEL_40:
    v8 = 4294967285;
  }

LABEL_37:
  if ((a3 & 8) != 0)
  {
    memset_s(__s, 0x20uLL, 0, 0x20uLL);
  }

  return v8;
}

uint64_t sub_100039268(uint64_t *a1, void *a2, unint64_t *a3)
{
  v6 = *a1;
  v7 = cczp_bitlen();
  v8 = calloc(((v7 + 7) >> 2) | 1, 1uLL);
  if (!v8)
  {
    return 4294967279;
  }

  v9 = v8;
  v10 = *a1;
  v11 = ((cczp_bitlen() + 7) >> 2) | 1;
  ccec_export_pub();
  result = 0;
  *a2 = v9;
  *a3 = v11;
  return result;
}

BOOL sub_1000392F8(uint64_t *a1, void **a2)
{
  if (ccec_import_pub())
  {
    return 0;
  }

  v4 = *a1;
  v5 = &a2[3 * **a2];
  return ccn_read_uint() == 0;
}

uint64_t sub_100039374(uint64_t a1)
{
  if (ccder_blob_decode_tag() && ccder_blob_decode_len())
  {
    return a1 - a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000393DC()
{
  sub_100020C68();
  v14 = 0;
  v13 = 0;
  result = ccder_blob_decode_range();
  if (result)
  {
    v3 = ccder_blob_decode_sequence_tl();
    if (v3)
    {
      while (1)
      {
        v11 = v14;
        sub_100020CE0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14);
        result = ccder_blob_decode_tl();
        if (!result)
        {
          break;
        }

        if (v14 - v11 != 2)
        {
          return 0;
        }

        result = v1(v11, -v11, v14 + v13, -(v14 + v13), v0);
        if (!result)
        {
          return result;
        }

        v3 = ccder_blob_decode_sequence_tl();
        if ((v3 & 1) == 0)
        {
          return 1;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1000394AC(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    sub_100020B5C();
    sub_1000393DC();
    if (a2)
    {
      if (a3)
      {
        *a2 = 0;
        *a3 = 0;
      }
    }
  }

  return 0;
}

uint64_t sub_100039518(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  if (result)
  {
    sub_100020B70();
    sub_1000393DC();
    return 0;
  }

  return result;
}

uint64_t sub_100039590()
{
  sub_100020CC0();
  if (!ccder_blob_decode_tl())
  {
    return 0;
  }

  v0 = v5;
  if ((v5 - 9) < 0xFFFFFFFFFFFFFFF8)
  {
    return 0;
  }

  v1 = v4;
  result = *v4 >> 7;
  do
  {
    v3 = *v1++;
    result = v3 | (result << 8);
    --v0;
  }

  while (v0);
  return result;
}

uint64_t sub_1000395F0(uint64_t result)
{
  if (result)
  {
    sub_100020B70();
    sub_1000393DC();
    return 0;
  }

  return result;
}

__n128 sub_100039688(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4)
{
  sub_100020BF8(a1);
  if (sub_100020CF8())
  {
    *a4 = v8;
    *a3 = v9 - v8;
    result = v10;
    *v4 = v10;
  }

  return result;
}

uint64_t sub_1000396E4()
{
  sub_100020C68();
  *&v10 = v2;
  *(&v10 + 1) = v3;
  sub_10001C6B4();
  v4 = ccder_blob_decode_range();
  if (v4)
  {
    v9 = 0;
    v5 = v10;
    if (sub_100039790(&v10, &v8, &v9))
    {
      do
      {
        v6 = v10 + v9;
        if (!v1(v5, v10 + v9 - v5, v0))
        {
          break;
        }

        *&v10 = v6;
        v5 = v6;
      }

      while ((sub_100039790(&v10, &v8, &v9) & 1) != 0);
    }
  }

  return v4;
}

uint64_t sub_100039790(__int128 *a1, void *a2, void *a3)
{
  v7 = *a1;
  result = ccder_blob_decode_tag();
  if (result)
  {
    result = ccder_blob_decode_len();
    if (result)
    {
      *a1 = v7;
      *a2 = 0;
      *a3 = 0;
      return 1;
    }
  }

  return result;
}

BOOL sub_10003980C()
{
  sub_100020CC0();
  v0 = ccder_blob_decode_tl();
  result = 0;
  if (v0)
  {
    if (v3 == 1)
    {
      return *v2 != 0;
    }
  }

  return result;
}

uint64_t sub_10003985C(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  sub_100020BF8(a1);
  sub_100020ADC();
  v6 = ccder_blob_decode_range();
  if (v6)
  {
    sub_100020C40(v6, v27, v7, v8, v9, v10, v11, v12, v24, v26, v27, v28, v29);
    if (!a3)
    {
      return sub_100020B00(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }

    v22 = v21 - v14;
    if (v22 == a4)
    {
      v13 = memcpy(a3, v14, v22);
      return sub_100020B00(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }
  }

  return 0;
}

uint64_t sub_1000398D0()
{
  sub_100020C68();
  v3 = v2;
  v5 = strlen(v4);
  v10 = 0;
  v11 = 0;
  v9[0] = 12;
  v9[1] = v5;
  result = 0xFFFFFFFFLL;
  if (v1 && v5 <= 0x10)
  {
    __memcpy_chk();
    __src = 0;
    v8 = 0;
    if (sub_1000205BC(v3, v9, 0, &__src, &v8))
    {
      if (v8 == v0)
      {
        memcpy(v1, __src, v0);
        return 0;
      }

      else
      {
        return 4294967277;
      }
    }

    else
    {
      return 4294967293;
    }
  }

  return result;
}

uint64_t sub_1000399C4(uint64_t a1)
{
  if (a1)
  {
    return sub_1000393DC() - 1;
  }

  else
  {
    return 4294967285;
  }
}

uint64_t sub_100039A0C(void *a1, void *a2, size_t *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v7 = *a1;
        if (*a1)
        {
          v8 = 0;
          v9 = 0;
          v10 = 0;
          do
          {
            v10 += v7[2];
            v7 = *v7;
            v9 -= 16;
            --v8;
          }

          while (v7);
          if (v8 >= 0xF000000000000001 && (v11 = -v9, (v12 = calloc(-v9, 1uLL)) != 0))
          {
            v13 = v12;
            v14 = *a1;
            if (*a1)
            {
              v15 = v12;
              do
              {
                *v15 = *(v14 + 1);
                v15 += 16;
                v14 = *v14;
              }

              while (v14);
            }

            qsort(v12, -v8, 0x10uLL, sub_10003BFBC);
            v16 = ccder_sizeof();
            v17 = calloc(v16, 1uLL);
            v18 = v17;
            if (v17)
            {
              v27 = v17;
              v28 = &v17[v16];
              v19 = v8 - 1;
              v20 = &v13[-v9 - 8];
              while (!__CFADD__(v19++, 1))
              {
                v22 = v20 - 16;
                v24 = *(v20 - 1);
                v23 = *v20;
                v25 = ccder_blob_encode_body();
                v20 = v22;
                if ((v25 & 1) == 0)
                {
                  goto LABEL_16;
                }
              }

              if (!ccder_blob_encode_tl() || v27 != v28)
              {
LABEL_16:
                v3 = 0xFFFFFFFFLL;
                goto LABEL_20;
              }

              v3 = 0;
              *a2 = v18;
              *a3 = v16;
              v18 = 0;
            }

            else
            {
              v3 = 4294967279;
            }

LABEL_20:
            memset_s(v13, v11, 0, v11);
            free(v13);
            if (v18)
            {
              memset_s(v18, v16, 0, v16);
              free(v18);
            }
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return v3;
}

uint64_t sub_100039BDC()
{
  result = sub_100020CEC();
  if (v0)
  {
    v6 = v3;
    if (v3)
    {
      if (v4 && v5)
      {
        if (sub_100039374(v4) <= (v5 - v4))
        {
          v7 = *(v6 + 1);
          v8 = ccder_sizeof();
          if (!sub_100020CA8(v8))
          {
            return 4294967279;
          }

          sub_100020BC8();
          if (ccder_blob_encode_body())
          {
            sub_100020B10();
            sub_100020AF0();
            sub_100020BA4();
            sub_100020AF0();
            if (v9 == v1)
            {
              v10 = sub_100020C90();
              if (v10)
              {
                return sub_100020AC0(v10);
              }
            }
          }

          sub_100020B84();
          free(v1);
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t sub_100039CE0()
{
  result = sub_100020CEC();
  if (v0 && v3 && v4)
  {
    v5 = *(v3 + 1);
    ccder_sizeof();
    v6 = sub_100020C74();
    if (sub_100020CA8(v6))
    {
      sub_100020BC8();
      v7 = ccder_blob_encode_body();
      if (v7 && (sub_100020C5C(v7, v8, v9, v10, v11, v12, v13, v14, v17), ccder_blob_encode_tl()) && (sub_100020B10(), sub_100020AF0(), sub_100020BA4(), sub_100020AF0(), v15 == v1) && (v16 = sub_100020C90()) != 0)
      {
        return sub_100020AC0(v16);
      }

      else
      {
        sub_100020B84();
        free(v1);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t sub_100039DC4()
{
  sub_100020C68();
  v2 = strlen(v1);
  result = 4294967285;
  if (v0)
  {
    if (v2 <= 0x10)
    {
      __memcpy_chk();
      return sub_100039CE0();
    }
  }

  return result;
}

uint64_t sub_100039E7C()
{
  result = sub_100020CEC();
  if (v0)
  {
    v3 = v2;
    if (v2)
    {
      v4 = v2 + 2;
      v5 = *(v2 + 1);
      ccder_sizeof();
      v6 = sub_100020C74();
      v7 = sub_100020CA8(v6);
      if (v7)
      {
        v8 = v7;
        if (ccder_blob_encode_body() && ccder_blob_encode_tl() && (v9 = v4 + *(v3 + 1), ccder_blob_encode_body(), sub_100020B3C(), sub_10001C6B4(), ccder_blob_encode_tl(), sub_100020B3C(), v10 == v8) && (v11 = sub_100020C90()) != 0)
        {
          return sub_100020AC0(v11);
        }

        else
        {
          sub_100020B84();
          free(v8);
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        return 4294967279;
      }
    }
  }

  return result;
}

uint64_t sub_100039FA4(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = HIBYTE(a3);
  if (HIBYTE(a3) - 255 > 0xFFFFFF01)
  {
    v11 = 8;
  }

  else
  {
    v7 = 9;
    v8 = 48;
    v9 = 1;
    while ((v7 - 2) >= 2)
    {
      v10 = a3 >> v8;
      --v7;
      v8 -= 8;
      if (v6 != v10)
      {
        v9 = v7 - 1;
        goto LABEL_8;
      }
    }

    v7 = 2;
LABEL_8:
    if ((((a3 >> (8 * v9 - 8)) ^ v6) & 0x80) != 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = v9;
    }
  }

  v22 = 0;
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    v13 = a2 + 2;
    v14 = *(a2 + 1);
    ccder_sizeof();
    v15 = ccder_sizeof();
    v16 = calloc(v15, 1uLL);
    if (v16)
    {
      v17 = v16;
      v18 = v11;
      do
      {
        *(&v22 + v18 - 1) = v3;
        v3 >>= 8;
        --v18;
      }

      while (v18);
      if ((ccder_blob_encode_body() & 1) != 0 && ccder_blob_encode_tl() && (v19 = v13 + *(a2 + 1), ccder_blob_encode_body(), sub_100020AF0(), sub_10001C6B4(), ccder_blob_encode_tl(), sub_100020AF0(), v20 == v17) && sub_100020C90())
      {
        result = sub_100020BEC();
        v21[1] = v17;
        v21[2] = v15;
        *v21 = *a1;
        *a1 = v21;
      }

      else
      {
        memset_s(v17, v15, 0, v15);
        free(v17);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t sub_10003A1A8()
{
  result = sub_100020CEC();
  if (v0)
  {
    v5 = v3;
    if (v3)
    {
      if (v4)
      {
        strlen(v4);
        v6 = *(v5 + 1);
        ccder_sizeof();
        v7 = sub_100020C74();
        if (sub_100020CA8(v7))
        {
          sub_100020BC8();
          if (ccder_blob_encode_body() && ccder_blob_encode_tl() && (sub_100020B10(), sub_100020AF0(), sub_100020BA4(), sub_100020AF0(), v8 == v1) && (v9 = sub_100020C90()) != 0)
          {
            return sub_100020AC0(v9);
          }

          else
          {
            sub_100020B84();
            free(v1);
            return 0xFFFFFFFFLL;
          }
        }

        else
        {
          return 4294967279;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10003A298(void *a1, uint64_t a2, void *a3)
{
  v3 = 0;
  __s = 0;
  __n = 0;
  v4 = 0xFFFFFFFFLL;
  if (a1 && a2 && a3)
  {
    if (sub_100039A0C(a3, &__s, &__n))
    {
      v3 = 0;
    }

    else
    {
      v7 = a2 + 2 + *(a2 + 1);
      v8 = ccder_sizeof();
      v9 = sub_100020CA8(v8);
      v3 = v9;
      if (v9)
      {
        v15 = v9;
        if (!ccder_blob_encode_body())
        {
          goto LABEL_15;
        }

        v18 = v3;
        v19 = v15;
        v10 = a2 + 2 + *(a2 + 1);
        ccder_blob_encode_body();
        sub_100020B3C();
        v18 = v3;
        v19 = v11;
        sub_10001C6B4();
        ccder_blob_encode_tl();
        sub_100020B3C();
        if (v12 != v3)
        {
          goto LABEL_15;
        }

        v13 = sub_100020C90();
        if (v13)
        {
          v4 = 0;
          v13[1] = v3;
          v13[2] = 0;
          *v13 = *a1;
          *a1 = v13;
          v3 = 0;
        }

        else
        {
LABEL_15:
          v4 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        v4 = 4294967279;
      }
    }
  }

  if (__s)
  {
    memset_s(__s, __n, 0, __n);
    free(__s);
  }

  if (v3)
  {
    memset_s(v3, 0, 0, 0);
    free(v3);
  }

  return v4;
}

uint64_t sub_10003A424(uint64_t a1)
{
  v7 = sub_100020BF8(a1);
  if (v2)
  {
    v3 = v2;
    result = ccder_blob_encode_body_tl();
    if (!result)
    {
      return result;
    }

    v6 = *v3;
    v5 = v3[1];
    if ((ccder_blob_encode_body_tl() & 1) == 0)
    {
      return 0;
    }
  }

  else if (!ccder_blob_encode_body_tl() || (ccder_blob_encode_tl() & 1) == 0)
  {
    return 0;
  }

  *v1 = v7;
  return 1;
}

uint64_t sub_10003A4CC(__int128 *a1, int a2, uint64_t a3)
{
  v5 = *a3;
  v4 = *(a3 + 8);
  v6 = *(a3 + 20);
  v37 = *a1;
  if (a2)
  {
    v7 = *a1;
    sub_100020ADC();
    v8 = ccder_blob_decode_range();
    if ((v8 & 1) == 0)
    {
      return 0;
    }

    v5 = v38;
    v16 = (v39 - v38);
    sub_100020C40(v8, v9, v10, v11, v12, v13, v14, v15, v37, *(&v37 + 1), v38, v39, v40);
LABEL_4:
    sub_100020ADC();
    v17 = ccder_blob_decode_range();
    if (v17)
    {
      sub_100020C40(v17, v18, v19, v20, v21, v22, v23, v24, v37, *(&v37 + 1), v38, v39, v40);
      if (v34 <= 4)
      {
        v35 = *v33;
        *a3 = v5;
        *(a3 + 8) = v16;
        *(a3 + 16) = v35;
        *(a3 + 20) = v6;
        return sub_100020B00(v25, v26, v27, v28, v29, v30, v31, v32, v37);
      }
    }

    return 0;
  }

  LODWORD(v40) = v4;
  result = sub_10003A5A8(&v37, 4, v5, &v40);
  if (result)
  {
    v16 = v40;
    goto LABEL_4;
  }

  return result;
}

uint64_t sub_10003A5A8(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4)
{
  sub_100020BF8(a1);
  sub_100020ADC();
  v6 = ccder_blob_decode_range();
  if (v6)
  {
    sub_100020C40(v6, v27, v7, v8, v9, v10, v11, v12, v24, v26, v27, v28, v29);
    if (!a3 || !a4)
    {
      return sub_100020B00(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }

    v22 = v21 - v14;
    if (*a4 >= v21 - v14)
    {
      v13 = memcpy(a3, v14, v22);
      *a4 = v22;
      return sub_100020B00(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }
  }

  return 0;
}

uint64_t sub_10003A628(uint64_t a1)
{
  v17 = sub_100020BF8(a1);
  if (v2)
  {
    sub_100020C5C(v1, v2, v2[1], *v2, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_body_tl();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_100020C5C(v1, 0, v3, v4, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_tl();
    if (!result)
    {
      return result;
    }
  }

  return sub_100020B00(result, v10, v11, v12, v13, v14, v15, v16, *&v17);
}

uint64_t sub_10003A684(uint64_t a1)
{
  v17 = sub_100020BF8(a1);
  if (v2)
  {
    sub_100020C5C(v1, v2, v3, v2, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_body_tl();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_100020C5C(v1, 0, v3, v4, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_tl();
    if (!result)
    {
      return result;
    }
  }

  return sub_100020B00(result, v10, v11, v12, v13, v14, v15, v16, *&v17);
}

uint64_t sub_10003A6E4(uint64_t a1, void *a2)
{
  sub_100020BF8(a1);
  sub_100020ADC();
  v3 = ccder_blob_decode_range();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_100020C40(v3, v24, v4, v5, v6, v7, v8, v9, v21, v23, v24, v25, v26);
  if (v11 > 0x18)
  {
    return 0;
  }

  v12 = memcpy(a2, v10, v11 & 0x1F);
  return sub_100020B00(v12, v13, v14, v15, v16, v17, v18, v19, v22);
}

uint64_t sub_10003A74C()
{
  sub_100020C68();
  v1 = v0;
  v3 = v2;
  v18 = 0;
  if (sub_100039FA4(&v18, off_1000629E0, *v2) || sub_100039FA4(&v18, off_1000629E8, v3[1]) || sub_100039FA4(&v18, off_1000629F0, *(v3 + 1)) || sub_100039FA4(&v18, off_100062A00, v3[4]) || sub_100039FA4(&v18, off_100062A10, v3[5]) || sub_100039FA4(&v18, off_100062A28, *(v3 + 26)) || sub_100039FA4(&v18, off_100062A30, *(v3 + 34)) || sub_100039FA4(&v18, off_100062738, *(v3 + 42)) || sub_100039FA4(&v18, off_100062900, *(v3 + 46)) || (v4 = sub_100039CE0(), v4) || v1 && (sub_100039FA4(&v18, off_100062A18, *(v3 + 66)) || sub_100039FA4(&v18, off_100062A20, *(v3 + 67)) || sub_100039FA4(&v18, off_100062D08, *(v3 + 17)) || (v4 = sub_100039FA4(&v18, off_100062D58, *(v3 + 19)), v4)) || (v5 = sub_100020C04(v4), v5))
  {
    v13 = 0xFFFFFFFFLL;
  }

  else
  {
    v13 = 0;
    sub_100020BDC(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17);
  }

  sub_100020414(&v18);
  return v13;
}

uint64_t sub_10003A93C(uint64_t a1)
{
  result = sub_100020CD4(__stack_chk_guard);
  if (v4 && a1)
  {
    v5 = v3;
    if (v3)
    {
      memset_s(v3, 0x54uLL, 0, 0x54uLL);
      bzero(v7, 0x228uLL);
      v7[4] = off_1000629E8;
      v7[9] = off_1000629F0;
      v7[14] = off_100062A00;
      v7[19] = off_100062A10;
      v7[24] = off_100062A18;
      v7[29] = off_100062A20;
      v7[34] = off_100062A28;
      v7[39] = off_100062A30;
      v7[44] = off_100062738;
      v7[49] = off_100062900;
      v7[54] = off_100062AF8;
      v8[2] = off_100062D08;
      v8[7] = off_100062D58;
      sub_100020A80();
      sub_100020D18();
      *v5 = sub_100039590();
      *(v5 + 1) = sub_100039590();
      *(v5 + 1) = sub_100039590();
      *(v5 + 4) = sub_100039590();
      *(v5 + 5) = sub_100039590();
      *(v5 + 26) = sub_100039590();
      *(v5 + 34) = sub_100039590();
      *(v5 + 42) = sub_100039590();
      *(v5 + 46) = sub_100039590();
      sub_10003985C(v8, 4, v5 + 50, 16);
      v5[66] = sub_100039590();
      v5[67] = sub_100039590();
      *(v5 + 68) = sub_100039590();
      sub_100039590();
      result = sub_100020BEC();
      *(v5 + 76) = v6;
    }
  }

  return result;
}

uint64_t sub_10003AB90(uint64_t a1)
{
  result = sub_100020CD4(__stack_chk_guard);
  if (v4)
  {
    if (a1)
    {
      v5 = v3;
      if (v3)
      {
        sub_100020C24(v3);
        bzero(v7, 0x98uLL);
        v7[4] = off_100062A00;
        v7[9] = off_100062900;
        v7[14] = off_1000629E0;
        sub_100020A80();
        if (sub_100020D18())
        {
          *v5 = sub_100039590();
          v5[1] = sub_100039590();
          v5[2] = sub_100039590();
          sub_100039590();
          result = sub_100020BEC();
          v5[3] = v6;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10003ACBC(uint64_t a1)
{
  result = sub_100020CD4(__stack_chk_guard);
  if (v6)
  {
    if (a1)
    {
      v7 = v3;
      if (v3)
      {
        v8 = v4;
        if (v4)
        {
          v9 = v5;
          sub_100020C24(v3);
          sub_100020C24(v8);
          v12 = 0;
          v10[0] = 0u;
          v11 = 0u;
          v14 = 0u;
          v15 = 0u;
          v10[1] = off_100062CB0;
          v13 = off_1000627D8;
          sub_100020A80();
          sub_1000393DC();
          if (sub_10003985C(v10, 4, v7, 16) && sub_10003985C(&v11 + 8, 4, v8, 16))
          {
            return sub_10003985C(&v15, 4, v9, 16) - 1;
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10003AE1C(uint64_t a1)
{
  result = sub_100020CD4(__stack_chk_guard);
  if (v4)
  {
    if (a1)
    {
      v5 = v3;
      if (v3)
      {
        memset_s(v3, 0x58uLL, 0, 0x58uLL);
        bzero(v8, 0x200uLL);
        v8[4] = off_1000627D8;
        v9[2] = off_1000627B8;
        v10[2] = off_1000627B0;
        v10[7] = off_1000627D0;
        v10[12] = off_100062A58;
        v12 = off_100062A00;
        v13 = off_100062A08;
        v14 = off_100062900;
        v15 = off_1000629F0;
        v16 = off_1000629F8;
        v17 = off_100062BB8;
        v18 = off_100062C28;
        sub_100020A80();
        sub_100020D18();
        *v5 = sub_100039590();
        if (!sub_10003985C(v9, 4, v5 + 1, 16))
        {
          return 0xFFFFFFFFLL;
        }

        if (!sub_10003985C(v10, 4, v5 + 5, 16))
        {
          return 0xFFFFFFFFLL;
        }

        v5[9] = sub_100039590();
        v5[10] = sub_100039590();
        v5[11] = sub_100039590();
        v5[12] = sub_100039590();
        v5[15] = sub_100039590();
        v5[13] = sub_100039590();
        v5[14] = sub_100039590();
        if (!sub_100020968(&v11))
        {
          return 0xFFFFFFFFLL;
        }

        v6 = v5[9];
        if ((v6 & 0x400) != 0)
        {
          *(v5 + 9) = sub_100039590();
          if ((v5[9] & 0x800) == 0)
          {
            return 0;
          }
        }

        else if ((v6 & 0x800) == 0)
        {
          return 0;
        }

        sub_100039590();
        result = sub_100020BEC();
        v5[20] = v7;
      }
    }
  }

  return result;
}

uint64_t sub_10003B094(int *a1, void *a2, _DWORD *a3)
{
  v18 = 0;
  v3 = 4294967273;
  if (a2 && a3)
  {
    v4 = a1;
    if (a1 && (v5 = *a1) != 0)
    {
      if (v5)
      {
        a1 = sub_100039DC4();
        v5 = *v4;
      }

      if ((v5 & 2) != 0)
      {
        a1 = sub_100039DC4();
      }

      v7 = sub_100020C04(a1);
      if (!v7)
      {
        v3 = 0;
        sub_100020BDC(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }

    else
    {
      v3 = 0;
      *a2 = 0;
      *a3 = 0;
    }
  }

  sub_100020414(&v18);
  return v3;
}

uint64_t sub_10003B150(uint64_t a1, uint64_t a2, _DWORD *__s)
{
  v6 = 0;
  v3 = 0xFFFFFFFFLL;
  if (a2)
  {
    if (a1)
    {
      if (__s)
      {
        memset_s(__s, 0x24uLL, 0, 0x24uLL);
        sub_100020B48();
        if (sub_1000393DC())
        {
          if (!sub_1000398D0())
          {
            *__s |= 2u;
          }

          v3 = 0;
          if (!sub_1000398D0())
          {
            *__s |= 1u;
          }
        }
      }
    }
  }

  sub_100020414(&v6);
  return v3;
}

uint64_t sub_10003B228(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  v22 = 0;
  v3 = 4294967285;
  v23 = 0;
  if (a1 && a2 && a3)
  {
    if (*a1 && (v5 = a1[1], sub_100039CE0()) || a1[2] && (v6 = a1[3], sub_100039CE0()) || a1[4] && (v7 = a1[5], sub_100039CE0()) || a1[6] && (v8 = a1[7], sub_100039CE0()) || a1[8] && (v9 = a1[9], sub_100039CE0()) || a1[10] && (v10 = a1[11], sub_100039CE0()))
    {
      v3 = 4294967273;
    }

    else
    {
      v11 = sub_100039A0C(&v23, &v21, &v22);
      if (v11)
      {
        v3 = 0xFFFFFFFFLL;
      }

      else
      {
        v3 = 0;
        sub_100020BDC(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21, v22);
      }
    }
  }

  sub_100020414(&v23);
  return v3;
}

uint64_t sub_10003B388(int a1, int a2, void *__s)
{
  if (!__s)
  {
    return 4294967285;
  }

  memset_s(__s, 0x60uLL, 0, 0x60uLL);
  bzero(v72, 0xE8uLL);
  v71 = off_100062788;
  v72[4] = off_100062D78;
  v72[9] = off_100062D70;
  v72[14] = off_100062748;
  v72[19] = off_100062D68;
  v72[24] = off_1000627C0;
  v65 = xmmword_100043300;
  v66 = 0;
  v67 = &v71;
  sub_100020A80();
  sub_100020D18();
  sub_100020A94();
  v4 = ccder_blob_decode_range();
  if (v4)
  {
    v12 = sub_100020AA8(v4, v5, v6, v7, v8, v9, v10, v11, 6, 0, 0, &v71, v68, v69, v70);
    *(v13 + 24) = v12;
    *__s = v14;
    __s[1] = v15;
  }

  sub_100020A94();
  v16 = ccder_blob_decode_range();
  if (v16)
  {
    v24 = sub_100020AA8(v16, v17, v18, v19, v20, v21, v22, v23, v65, *(&v65 + 1), v66, v67, v68, v69, v70);
    v25[4] = v24;
    __s[2] = v26;
    __s[3] = v27;
  }

  sub_100020A94();
  v28 = ccder_blob_decode_range();
  if (v28)
  {
    v36 = sub_100020AA8(v28, v29, v30, v31, v32, v33, v34, v35, v65, *(&v65 + 1), v66, v67, v68, v69, v70);
    *(v37 + 104) = v36;
    __s[4] = v38;
    __s[5] = v39;
  }

  sub_100020A94();
  v40 = ccder_blob_decode_range();
  if (v40)
  {
    v48 = sub_100020AA8(v40, v41, v42, v43, v44, v45, v46, v47, v65, *(&v65 + 1), v66, v67, v68, v69, v70);
    v49[9] = v48;
    __s[6] = v50;
    __s[7] = v51;
  }

  sub_100020A94();
  v52 = ccder_blob_decode_range();
  if (v52)
  {
    v60 = sub_100020AA8(v52, v53, v54, v55, v56, v57, v58, v59, v65, *(&v65 + 1), v66, v67, v68, v69, v70);
    *(v61 + 184) = v60;
    __s[8] = v62;
    __s[9] = v63;
  }

  sub_100020A94();
  if ((ccder_blob_decode_range() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  __s[10] = v68;
  __s[11] = (v69 - v68);
  return result;
}

uint64_t sub_10003B580(uint64_t a1, void *a2, _DWORD *a3)
{
  v17 = 0;
  v3 = 4294967273;
  if (a2 && a3)
  {
    if (a1)
    {
      if (!sub_100039DC4())
      {
        v5 = sub_100039DC4();
        if (!v5)
        {
          v6 = sub_100020C04(v5);
          if (!v6)
          {
            v3 = 0;
            sub_100020BDC(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
          }
        }
      }
    }

    else
    {
      v3 = 0;
      *a2 = 0;
      *a3 = 0;
    }
  }

  sub_100020414(&v17);
  return v3;
}

uint64_t sub_10003B630(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 0;
  v3 = 0xFFFFFFFFLL;
  if (a2)
  {
    if (a1)
    {
      if (a3)
      {
        sub_100020C24(a3);
        sub_100020B48();
        if (sub_1000393DC())
        {
          sub_1000398D0();
          sub_1000398D0();
          v3 = 0;
        }
      }
    }
  }

  sub_100020414(&v5);
  return v3;
}

uint64_t sub_10003B6DC(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    sub_100020A80();
    sub_1000393DC();
    return sub_100039590() & 0x1F;
  }

  return v2;
}

uint64_t sub_10003B790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  bzero(v10, 0xE8uLL);
  v9 = off_100062A38;
  v10[4] = off_100062A40;
  v10[9] = off_100062A48;
  v10[14] = off_100062A50;
  v10[19] = off_1000627C0;
  v11[2] = off_100062D60;
  v6 = xmmword_100043300;
  v7 = 0;
  v8 = &v9;
  sub_100020A80();
  sub_1000393DC();
  *a3 = sub_100039590();
  *(a3 + 4) = sub_100039590();
  *(a3 + 8) = sub_100039590();
  *(a3 + 12) = sub_100039590();
  v5 = 65;
  if (!sub_10003A5A8(v11, 4, (a3 + 16), &v5))
  {
    return 0xFFFFFFFFLL;
  }

  *(a3 + 88) = v5;
  return sub_10003985C(&v12, 4, (a3 + 96), 3) - 1;
}

void *sub_10003B908(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1)
  {
    if (a2)
    {
      v2 = off_100062730;
      if (off_100062730)
      {
        sub_100020B5C();
        sub_1000393DC();
        return 0;
      }
    }
  }

  return v2;
}

void *sub_10003BCC8(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  sub_100020BF8(a1);
  sub_100020ADC();
  v6 = ccder_blob_decode_range();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v14 = v31;
  sub_100020C40(v6, v7, v8, v9, v10, v11, v12, v13, v28, v30, v31, v32, v33);
  if (a3 && a4)
  {
    v24 = v23 - v14;
    v25 = (v23 - v14);
    result = calloc(v25, 1uLL);
    if (!result)
    {
      return result;
    }

    v27 = result;
    v15 = memcpy(result, v14, v25);
    *a3 = v27;
    *a4 = v24;
  }

  return sub_100020B00(v15, v16, v17, v18, v19, v20, v21, v22, v29);
}

uint64_t sub_10003BD68(__int128 *a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  v5 = *a1;
  result = sub_100020CF8();
  if (result)
  {
    if (ccn_read_uint())
    {
      return 0;
    }

    else
    {
      *a1 = v7;
      if (a3)
      {
        *a3 = 0;
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_10003BDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a6 + a7;
  if (!ccder_blob_encode_implicit_raw_octet_string() || !ccder_blob_encode_implicit_uint64() || !ccder_blob_encode_implicit_uint64() || !ccder_blob_encode_implicit_uint64())
  {
    return 4294967273;
  }

  sub_10001C6B4();
  v7 = ccder_blob_encode_tl();
  result = 4294967273;
  if (v7)
  {
    if (a6 == v10)
    {
      return 0;
    }

    else
    {
      return 4294967273;
    }
  }

  return result;
}

uint64_t sub_10003BEB0(void *a1, void *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  LOBYTE(v51) = a6;
  *(&v51 + 1) = a6 + a7;
  sub_10001C6B4();
  v12 = ccder_blob_decode_range();
  if (!v12)
  {
    return 4294967277;
  }

  v20 = sub_100020CE0(v12, v13, v14, v15, v16, v17, v18, v19, v46, 0, v51);
  v22 = sub_10003BD68(v20, 0x8000000000000003, v21);
  if (!v22)
  {
    return 4294967277;
  }

  if (a5)
  {
    sub_100020C4C();
    *a5 = v30;
  }

  v31 = sub_100020CE0(v22, v23, v24, v25, v26, v27, v28, v29, v47, v49, v52);
  v33 = sub_10003BD68(v31, 0x8000000000000002, v32);
  if (!v33)
  {
    return 4294967277;
  }

  if (a4)
  {
    sub_100020C4C();
    *a4 = v41;
  }

  v42 = sub_100020CE0(v33, v34, v35, v36, v37, v38, v39, v40, v48, v50, v53);
  if (!sub_10003BD68(v42, 0x8000000000000001, v43))
  {
    return 4294967277;
  }

  if (a3)
  {
    sub_100020C4C();
    *a3 = v44;
  }

  sub_100020A94();
  if (ccder_blob_decode_range())
  {
    v51 = v56;
    if (a1)
    {
      if (a2)
      {
        *a1 = v54;
        *a2 = (v55 - v54);
      }
    }
  }

  if (v51 == *(&v51 + 1))
  {
    return 0;
  }

  else
  {
    return 4294967277;
  }
}

uint64_t sub_10003BFBC(uint64_t a1, uint64_t a2)
{
  v6 = *a1;
  v7 = *a1 + *(a1 + 8);
  __s2 = *a2;
  v5 = *a2 + *(a2 + 8);
  if (!ccder_blob_decode_sequence_tl() || !ccder_blob_decode_sequence_tl() || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !v6 || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !__s2)
  {
    return 4294967293;
  }

  v3 = memcmp(v6, __s2, 0);
  if (v3 > 0)
  {
    return 1;
  }

  else
  {
    return ((v3 != 0) << 31 >> 31);
  }
}

uint64_t sub_10003C1B8(unsigned int *a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a3;
  if (*a1 >= a3)
  {
    v19 = &a9;
    if (!a3)
    {
      return 0;
    }

    v11 = (a1 + 1);
    while (1)
    {
      v12 = v19;
      v13 = *v19;
      v19 += 2;
      v16 = *v11;
      v14 = v11 + 4;
      v15 = v16;
      if (v16 > a2)
      {
        break;
      }

      if (v13)
      {
        v17 = v12[1];
        if (*v17 < v15)
        {
          return 0xFFFFFFFFLL;
        }

        memcpy(v13, v14, v15);
        *v17 = v15;
      }

      v11 = &v14[v15];
      if (!--v9)
      {
        return 0;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10003C284(uint64_t a1, uint64_t a2, void *a3)
{
  *&v6 = a1;
  *(&v6 + 1) = a1 + a2;
  if (!ccder_blob_decode_range() || !sub_10003BD68(&v6, 0x8000000000000005, a3 + 3) || !sub_10003BD68(&v6, 0x8000000000000004, a3 + 5) || !sub_10003BD68(&v6, 0x8000000000000003, a3 + 2) || !sub_10003BD68(&v6, 0x8000000000000002, a3 + 4) || !sub_10003BD68(&v6, 0x8000000000000001, a3 + 1))
  {
    return 4294967277;
  }

  v4 = sub_10003BD68(&v6, 0x8000000000000000, a3);
  result = 4294967277;
  if (v4)
  {
    if (v6 == *(&v6 + 1))
    {
      return 0;
    }

    else
    {
      return 4294967277;
    }
  }

  return result;
}