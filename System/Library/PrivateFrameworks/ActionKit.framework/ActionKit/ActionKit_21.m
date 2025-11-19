uint64_t pkey_size_gost01(uint64_t a1)
{
  if (GOST_KEY_get_digest(*(a1 + 32)) == 942)
  {
    return 128;
  }

  else
  {
    return 64;
  }
}

uint64_t pkey_bits_gost01(uint64_t a1)
{
  if (GOST_KEY_get_digest(*(a1 + 32)) == 942)
  {
    return 512;
  }

  else
  {
    return 256;
  }
}

uint64_t param_decode_gost01(EVP_PKEY *a1, const unsigned __int8 **a2, int a3)
{
  a = 0;
  if (**a2 != 48)
  {
    if (d2i_ASN1_OBJECT(&a, a2, a3))
    {
      v5 = OBJ_obj2nid(a);
      ASN1_OBJECT_free(a);
      v6 = GOST_KEY_new();
      if (v6)
      {
        v7 = v6;
        v8 = EC_GROUP_new_by_curve_name(v5);
        if (v8)
        {
          v9 = v8;
          EC_GROUP_set_asn1_flag(v8, 1);
          if (!GOST_KEY_set_group(v7, v9))
          {
            ERR_put_error(50, 4095, 16, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_ameth.c", 558);
            EC_GROUP_free(v9);
LABEL_19:
            GOST_KEY_free(v7);
            return 0;
          }

          EC_GROUP_free(v9);
          if (GOST_KEY_set_digest(v7, 822))
          {
            result = EVP_PKEY_assign(a1, 811, v7);
            if (result)
            {
              return result;
            }

            goto LABEL_19;
          }

          v11 = 100;
          v12 = 566;
        }

        else
        {
          v11 = 119;
          v12 = 551;
        }

        ERR_put_error(50, 4095, v11, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_ameth.c", v12);
        goto LABEL_19;
      }

      v10 = 546;
    }

    else
    {
      v10 = 538;
    }

    ERR_put_error(50, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_ameth.c", v10);
    return 0;
  }

  return decode_gost01_algor_params(a1, a2, a3);
}

uint64_t param_encode_gost01(uint64_t a1, void **a2)
{
  v3 = encode_gost01_algor_params(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  length = v3->length;
  if (a2)
  {
    memcpy(*a2, v3->data, length);
  }

  ASN1_STRING_free(v4);
  return length;
}

uint64_t param_copy_gost01(EVP_PKEY *a1, uint64_t a2)
{
  attributes = a1->attributes;
  v5 = *(a2 + 32);
  v6 = EVP_PKEY_base_id(a2);
  if (v6 != EVP_PKEY_base_id(&a1->type))
  {
    v10 = 110;
    v11 = 598;
LABEL_10:
    ERR_put_error(50, 4095, v10, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_ameth.c", v11);
    return 0;
  }

  if (!v5)
  {
    v10 = 113;
    v11 = 602;
    goto LABEL_10;
  }

  if (attributes)
  {
    goto LABEL_4;
  }

  v12 = GOST_KEY_new();
  if (!v12)
  {
    v10 = 65;
    v11 = 608;
    goto LABEL_10;
  }

  attributes = v12;
  v13 = EVP_PKEY_base_id(a2);
  if (!EVP_PKEY_assign(a1, v13, attributes))
  {
    GOST_KEY_free(attributes);
    return 0;
  }

LABEL_4:
  v7 = GOST_KEY_get0_group(v5);
  GOST_KEY_set_group(attributes, v7);
  digest = GOST_KEY_get_digest(v5);
  GOST_KEY_set_digest(attributes, digest);
  if (!GOST_KEY_get0_private_key(attributes))
  {
    return 1;
  }

  return gost2001_compute_public(attributes);
}

BOOL param_cmp_gost01(uint64_t a1, uint64_t a2)
{
  v4 = GOST_KEY_get0_group(*(a1 + 32));
  curve_name = EC_GROUP_get_curve_name(v4);
  v6 = GOST_KEY_get0_group(*(a2 + 32));
  if (curve_name != EC_GROUP_get_curve_name(v6))
  {
    return 0;
  }

  digest = GOST_KEY_get_digest(*(a1 + 32));
  return digest == GOST_KEY_get_digest(*(a2 + 32));
}

uint64_t param_print_gost01(BIO *a1, uint64_t a2, int a3)
{
  v6 = GOST_KEY_get0_group(*(a2 + 32));
  curve_name = EC_GROUP_get_curve_name(v6);
  result = BIO_indent(a1, a3, 128);
  if (result)
  {
    v9 = OBJ_nid2ln(curve_name);
    BIO_printf(a1, "Parameter set: %s\n", v9);
    result = BIO_indent(a1, a3, 128);
    if (result)
    {
      digest = GOST_KEY_get_digest(*(a2 + 32));
      v11 = OBJ_nid2ln(digest);
      BIO_printf(a1, "Digest Algorithm: %s\n", v11);
      return 1;
    }
  }

  return result;
}

uint64_t pkey_ctrl_gost01(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v23 = 0;
  v24 = 0;
  v22 = 0;
  digest = GOST_KEY_get_digest(*(a1 + 32));
  v9 = digest;
  switch(a2)
  {
    case 3:
      *a4 = GostR3410_get_md_digest(digest);
      return 2;
    case 2:
      if (!a3)
      {
        PKCS7_RECIP_INFO_get0_alg(a4, &v22);
      }

      break;
    case 1:
      if (!a3)
      {
        PKCS7_SIGNER_INFO_get0_algs(a4, 0, &v24, &v23);
        v10 = v24;
        if (v24)
        {
          md_digest = GostR3410_get_md_digest(v9);
          v12 = OBJ_nid2obj(md_digest);
          X509_ALGOR_set0(v10, v12, 5, 0);
        }
      }

      break;
    default:
      return 4294967294;
  }

  v13 = v23;
  if (v23)
  {
    pk_digest = GostR3410_get_pk_digest(v9);
    v15 = OBJ_nid2obj(pk_digest);
    X509_ALGOR_set0(v13, v15, 5, 0);
  }

  if (!v22)
  {
    return 1;
  }

  v16 = encode_gost01_algor_params(a1);
  if (v16)
  {
    v17 = v16;
    v18 = v22;
    v19 = GostR3410_get_pk_digest(v9);
    v20 = OBJ_nid2obj(v19);
    X509_ALGOR_set0(v18, v20, 16, v17);
    return 1;
  }

  return 0xFFFFFFFFLL;
}

uint64_t decode_gost01_algor_params(EVP_PKEY *a1, const unsigned __int8 **a2, int a3)
{
  v4 = d2i_GOST_KEY_PARAMS(0, a2, a3);
  if (!v4)
  {
    v13 = 105;
    v14 = 90;
    goto LABEL_12;
  }

  v5 = v4;
  v6 = OBJ_obj2nid(*v4);
  v7 = OBJ_obj2nid(v5[1]);
  GOST_KEY_PARAMS_free(v5);
  attributes = a1->attributes;
  if (attributes)
  {
    goto LABEL_3;
  }

  v15 = GOST_KEY_new();
  if (!v15)
  {
    v13 = 65;
    v14 = 101;
    goto LABEL_12;
  }

  attributes = v15;
  result = EVP_PKEY_assign(a1, 811, v15);
  if (result)
  {
LABEL_3:
    v9 = EC_GROUP_new_by_curve_name(v6);
    if (v9)
    {
      v10 = v9;
      EC_GROUP_set_asn1_flag(v9, 1);
      v11 = GOST_KEY_set_group(attributes, v10);
      EC_GROUP_free(v10);
      if (v11)
      {
        return GOST_KEY_set_digest(attributes, v7) != 0;
      }

      return 0;
    }

    v13 = 119;
    v14 = 110;
LABEL_12:
    ERR_put_error(50, 4095, v13, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_ameth.c", v14);
    return 0;
  }

  return result;
}

ASN1_STRING *encode_gost01_algor_params(uint64_t a1)
{
  v2 = ASN1_STRING_new();
  v3 = GOST_KEY_PARAMS_new();
  v4 = v3;
  if (!v2 || !v3)
  {
    v9 = 132;
LABEL_7:
    ERR_put_error(50, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_ameth.c", v9);
    ASN1_STRING_free(v2);
    v2 = 0;
    goto LABEL_8;
  }

  v5 = GOST_KEY_get0_group(*(a1 + 32));
  curve_name = EC_GROUP_get_curve_name(v5);
  *v4 = OBJ_nid2obj(curve_name);
  digest = GOST_KEY_get_digest(*(a1 + 32));
  *(v4 + 1) = OBJ_nid2obj(digest);
  v8 = i2d_GOST_KEY_PARAMS(v4, &v2->data);
  v2->length = v8;
  if (v8 <= 0)
  {
    v9 = 145;
    goto LABEL_7;
  }

  v2->type = 16;
LABEL_8:
  GOST_KEY_PARAMS_free(v4);
  return v2;
}

int PEM_def_callback(char *buf, int num, int w, void *key)
{
  if (num < 0)
  {
    goto LABEL_15;
  }

  LODWORD(v5) = num;
  if (key)
  {
    v7 = strlen(key);
    if (v7 >= v5)
    {
      v5 = v5;
    }

    else
    {
      v5 = v7;
    }

    memcpy(buf, key, v5);
    return v5;
  }

  pw_prompt = EVP_get_pw_prompt();
  if (pw_prompt)
  {
    v10 = pw_prompt;
  }

  else
  {
    v10 = "Enter PEM pass phrase:";
  }

  if (EVP_read_pw_string_min(buf, 4, v5, v10, w))
  {
LABEL_14:
    ERR_put_error(9, 4095, 109, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pem/pem_lib.c", 116);
    bzero(buf, v5);
LABEL_15:
    LODWORD(v5) = -1;
    return v5;
  }

  v11 = MEMORY[0x277D85DF8];
  while (1)
  {
    v12 = strlen(buf);
    if (v12 > 3)
    {
      break;
    }

    fprintf(*v11, "phrase is too short, needs to be at least %zu chars\n", 4uLL);
    if (EVP_read_pw_string_min(buf, 4, v5, v10, w))
    {
      goto LABEL_14;
    }
  }

  LODWORD(v5) = v12;
  return v5;
}

void PEM_proc_type(char *buf, int type)
{
  v3 = "MIC-ONLY";
  v4 = "BAD-TYPE";
  if (type == 30)
  {
    v4 = "MIC-CLEAR";
  }

  if (type != 20)
  {
    v3 = v4;
  }

  if (type == 10)
  {
    v5 = "ENCRYPTED";
  }

  else
  {
    v5 = v3;
  }

  strlcat(buf, "Proc-Type: 4,", 0x400uLL);
  strlcat(buf, v5, 0x400uLL);

  strlcat(buf, "\n", 0x400uLL);
}

void PEM_dek_info(char *buf, const char *type, int len, char *str)
{
  strlcat(buf, "DEK-Info: ", 0x400uLL);
  strlcat(buf, type, 0x400uLL);
  strlcat(buf, ",", 0x400uLL);
  v8 = strlen(buf);
  if (v8 + 2 * len <= 1023)
  {
    if (len < 1)
    {
      v12 = 0;
    }

    else
    {
      v9 = &buf[v8 + 1];
      v10 = len;
      do
      {
        *(v9 - 1) = PEM_dek_info_map[*str >> 4];
        v11 = *str++;
        *v9 = PEM_dek_info_map[v11 & 0xF];
        v9 += 2;
        --v10;
      }

      while (v10);
      v12 = 2 * len;
    }

    *&buf[v8 + v12] = 10;
  }
}

void *__cdecl PEM_ASN1_read(d2i_of_void *d2i, const char *name, FILE *fp, void **x, pem_password_cb *cb, void *u)
{
  v12 = BIO_s_file();
  v13 = BIO_new(v12);
  if (v13)
  {
    v14 = v13;
    BIO_ctrl(v13, 106, 0, fp);
    bio = PEM_ASN1_read_bio(d2i, name, v14, x, cb, u);
    BIO_free(v14);
    return bio;
  }

  else
  {
    ERR_put_error(9, 4095, 7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pem/pem_lib.c", 179);
    return 0;
  }
}

int PEM_bytes_read_bio(unsigned __int8 **pdata, uint64_t *plen, char **pnm, const char *name, BIO *bp, pem_password_cb *cb, void *u)
{
  v34 = *MEMORY[0x277D85DE8];
  memset(&cipher, 0, sizeof(cipher));
  header = 0;
  namea = 0;
  len = 0;
  data = 0;
  if (PEM_read_bio(bp, &namea, &header, &data, &len))
  {
    while (1)
    {
      v9 = namea;
      if (!strcmp(namea, name))
      {
        break;
      }

      if (!strcmp(name, "ANY PRIVATE KEY"))
      {
        if (!strcmp(v9, "ENCRYPTED PRIVATE KEY"))
        {
          break;
        }

        if (!strcmp(v9, "PRIVATE KEY"))
        {
          break;
        }

        v12 = pem_check_suffix(v9, "PRIVATE KEY");
        if (v12 >= 1)
        {
          str = EVP_PKEY_asn1_find_str(0, v9, v12);
          if (str)
          {
            if (*(str + 23))
            {
              break;
            }
          }
        }
      }

      else if (!strcmp(name, "PARAMETERS"))
      {
        v14 = pem_check_suffix(v9, "PARAMETERS");
        if (v14 >= 1)
        {
          e = 0;
          v15 = EVP_PKEY_asn1_find_str(&e, v9, v14);
          if (v15)
          {
            v16 = *(v15 + 14);
            ENGINE_finish(e);
            if (v16)
            {
              break;
            }
          }
        }
      }

      else
      {
        v10 = strcmp(v9, "X509 CERTIFICATE");
        if (!v10 && !strcmp(name, "CERTIFICATE"))
        {
          break;
        }

        if (!strcmp(v9, "NEW CERTIFICATE REQUEST") && !strcmp(name, "CERTIFICATE REQUEST"))
        {
          break;
        }

        v11 = strcmp(v9, "CERTIFICATE");
        if (!v11 && !strcmp(name, "TRUSTED CERTIFICATE"))
        {
          break;
        }

        if (!v10 && !strcmp(name, "TRUSTED CERTIFICATE") || !v11 && !strcmp(name, "PKCS7") || !strcmp(v9, "PKCS #7 SIGNED DATA") && !strcmp(name, "PKCS7") || !v11 && !strcmp(name, "CMS") || !strcmp(v9, "PKCS7") && !strcmp(name, "CMS"))
        {
          break;
        }
      }

      free(v9);
      free(header);
      free(data);
      if (!PEM_read_bio(bp, &namea, &header, &data, &len))
      {
        goto LABEL_32;
      }
    }

    v18 = header;
    if (PEM_get_EVP_CIPHER_INFO(header, &cipher) && (v19 = data, PEM_do_header(&cipher, data, &len, cb, u)))
    {
      *pdata = v19;
      *plen = len;
      if (pnm)
      {
        *pnm = v9;
        free(v18);
        v17 = 1;
        goto LABEL_42;
      }

      v17 = 1;
      v20 = 1;
    }

    else
    {
      v17 = 0;
      v20 = 0;
    }

    free(v9);
    free(v18);
    if ((v20 & 1) == 0)
    {
      free(data);
    }
  }

  else
  {
LABEL_32:
    if ((ERR_peek_error() & 0xFFF) == 0x6C)
    {
      ERR_asprintf_error_data("Expecting: %s", name);
    }

    v17 = 0;
  }

LABEL_42:
  v21 = *MEMORY[0x277D85DE8];
  return v17;
}

int PEM_read_bio(BIO *bp, char **name, char **header, unsigned __int8 **data, uint64_t *len)
{
  v52 = *MEMORY[0x277D85DE8];
  outl = 0;
  v10 = BUF_MEM_new();
  v11 = BUF_MEM_new();
  v12 = BUF_MEM_new();
  v13 = v12;
  if (!v10 || !v11 || !v12)
  {
    BUF_MEM_free(v10);
    BUF_MEM_free(v11);
    BUF_MEM_free(v13);
    ERR_put_error(9, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pem/pem_lib.c", 685);
    goto LABEL_19;
  }

  v45 = len;
  str = v11;
  v43 = header;
  v44 = data;
  v14 = v12;
  memset(&ctx, 0, sizeof(ctx));
  v48 = 0;
  v50[243] = 0;
  v15 = BIO_gets(bp, buf, 254);
  if (v15 < 1)
  {
LABEL_16:
    ERR_put_error(9, 4095, 108, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pem/pem_lib.c", 694);
    v19 = str;
    v20 = v14;
    v21 = v10;
    goto LABEL_17;
  }

  while (1)
  {
    do
    {
      if (buf[v15] > 32)
      {
        goto LABEL_9;
      }

      v16 = v15-- <= 0;
    }

    while (!v16);
    v15 = -1;
LABEL_9:
    buf[v15 + 1] = 10;
    buf[v15 + 2] = 0;
    if (*buf == 0x4745422D2D2D2D2DLL && *&buf[3] == 0x204E494745422D2DLL)
    {
      v18 = strlen(v50);
      if (!strncmp(&buf[((v18 << 32) + 0x500000000) >> 32], "-----\n", 6uLL))
      {
        break;
      }
    }

    v15 = BIO_gets(bp, buf, 254);
    if (v15 < 1)
    {
      goto LABEL_16;
    }
  }

  v24 = v18 << 32;
  v21 = v10;
  v20 = v14;
  if (!BUF_MEM_grow(v10, ((v18 << 32) + 0x900000000) >> 32))
  {
    ERR_put_error(9, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pem/pem_lib.c", 709);
    v19 = str;
    goto LABEL_17;
  }

  memcpy(v10->data, v50, (v24 - 0x600000000) >> 32);
  v10->data[(v24 - 0x600000000) >> 32] = 0;
  if (!BUF_MEM_grow(str, 256))
  {
    v31 = 719;
    goto LABEL_69;
  }

  *str->data = 0;
  v25 = BIO_gets(bp, buf, 254);
  if (v25 >= 1)
  {
    LODWORD(v26) = 0;
    while (1)
    {
      if (buf[v25] > 32)
      {
        goto LABEL_29;
      }

      v16 = v25-- <= 0;
      if (v16)
      {
        v25 = -1;
LABEL_29:
        buf[v25 + 1] = 10;
        v27 = (v25 + 2);
        buf[v27] = 0;
        if (buf[0] == 10)
        {
          goto LABEL_40;
        }

        v28 = v27 + v26;
        if (!BUF_MEM_grow(str, v28 + 9))
        {
          v31 = 736;
          goto LABEL_69;
        }

        if (*buf == 0x444E452D2D2D2D2DLL && buf[8] == 32)
        {
          v30 = 0;
          goto LABEL_43;
        }

        memcpy(&str->data[v26], buf, v27);
        str->data[v28] = 0;
        v25 = BIO_gets(bp, buf, 254);
        LODWORD(v26) = v27 + v26;
        if (v25 <= 0)
        {
          v30 = 1;
          LODWORD(v26) = v28;
          goto LABEL_43;
        }
      }
    }
  }

  LODWORD(v26) = 0;
LABEL_40:
  v30 = 1;
LABEL_43:
  outl = 0;
  if (!BUF_MEM_grow(v14, 1024))
  {
    v31 = 750;
    goto LABEL_69;
  }

  *v14->data = 0;
  if (!v30)
  {
    outl = v26;
    v19 = v14;
    v20 = str;
LABEL_71:
    v38 = *buf == 0x444E452D2D2D2D2DLL && buf[8] == 32;
    if (v38 && (v39 = strlen(v10->data), !strncmp(v10->data, &buf[9], v39)) && !strncmp(&buf[((v39 << 32) + 0x900000000) >> 32], "-----\n", 6uLL))
    {
      EVP_DecodeInit(&ctx);
      if (EVP_DecodeUpdate(&ctx, v20->data, &outl, v20->data, v26) < 0)
      {
        v40 = 100;
        v41 = 811;
      }

      else
      {
        if ((EVP_DecodeFinal(&ctx, &v20->data[outl], &v48) & 0x80000000) == 0)
        {
          v42 = outl + v48;
          outl = v42;
          if (!v42)
          {
            goto LABEL_17;
          }

          *name = v10->data;
          *v43 = v19->data;
          *v44 = v20->data;
          *v45 = v42;
          free(v10);
          free(v19);
          free(v20);
          result = 1;
          goto LABEL_20;
        }

        v40 = 100;
        v41 = 816;
      }
    }

    else
    {
      v40 = 102;
      v41 = 802;
    }

    ERR_put_error(9, 4095, v40, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pem/pem_lib.c", v41);
    goto LABEL_17;
  }

  LODWORD(v26) = 0;
  while (1)
  {
    v32 = BIO_gets(bp, buf, 254);
    if (v32 < 1)
    {
      goto LABEL_67;
    }

    while (buf[v32] <= 32)
    {
      v16 = v32-- <= 0;
      if (v16)
      {
        v32 = -1;
        break;
      }
    }

    buf[v32 + 1] = 10;
    v33 = (v32 + 2);
    buf[v33] = 0;
    v34 = *buf == 0x444E452D2D2D2D2DLL && buf[8] == 32;
    v35 = !v34;
    if (v32 > 63 || !v35)
    {
      goto LABEL_67;
    }

    if (!BUF_MEM_grow_clean(v14, v32 + v26 + 11))
    {
      break;
    }

    v36 = v26;
    memcpy(&v14->data[v26], buf, v33);
    v26 = v26 + v33;
    v14->data[v26] = 0;
    outl = v36 + v33;
    if (v33 != 65)
    {
      buf[0] = 0;
      v37 = BIO_gets(bp, buf, 254);
      if (v37 >= 1)
      {
        while (buf[v37] <= 32)
        {
          v16 = v37-- <= 0;
          if (v16)
          {
            v37 = -1;
            break;
          }
        }

        buf[v37 + 1] = 10;
        buf[v37 + 2] = 0;
      }

LABEL_67:
      v19 = str;
      goto LABEL_71;
    }
  }

  v31 = 772;
LABEL_69:
  ERR_put_error(9, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pem/pem_lib.c", v31);
  v19 = str;
LABEL_17:
  BUF_MEM_free(v21);
  BUF_MEM_free(v19);
  BUF_MEM_free(v20);
LABEL_19:
  result = 0;
LABEL_20:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

int PEM_get_EVP_CIPHER_INFO(char *header, EVP_CIPHER_INFO *cipher)
{
  cipher->cipher = 0;
  if (!header)
  {
    return 1;
  }

  if (*header)
  {
    v3 = *header == 10;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 1;
  }

  if (!strncmp(header, "Proc-Type: ", 0xBuLL))
  {
    if (header[11] != 52 || header[12] != 44)
    {
      return 0;
    }

    if (!strncmp(header + 13, "ENCRYPTED", 9uLL))
    {
      for (i = header + 24; ; ++i)
      {
        if (!*(i - 11))
        {
          v6 = 112;
          v7 = 515;
          goto LABEL_11;
        }

        if (*(i - 11) == 10)
        {
          break;
        }
      }

      if (strncmp(i - 10, "DEK-Info: ", 0xAuLL))
      {
        v6 = 105;
        v7 = 520;
        goto LABEL_11;
      }

      v9 = i;
      do
      {
        do
        {
          v14 = v9;
          v11 = *v9++;
          v10 = v11;
        }

        while ((v11 - 48) < 0xA);
      }

      while (v10 == 45 || (v10 - 65) < 0x1A);
      *(v9 - 1) = 0;
      cipherbyname = EVP_get_cipherbyname(i);
      cipher->cipher = cipherbyname;
      *(v9 - 1) = v10;
      v14 = v9;
      if (cipherbyname)
      {
        return load_iv(&v14, cipher->iv, cipherbyname->iv_len);
      }

      v6 = 114;
      v7 = 539;
    }

    else
    {
      v6 = 106;
      v7 = 509;
    }
  }

  else
  {
    v6 = 107;
    v7 = 498;
  }

LABEL_11:
  ERR_put_error(9, 4095, v6, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pem/pem_lib.c", v7);
  return 0;
}

int PEM_do_header(EVP_CIPHER_INFO *cipher, unsigned __int8 *data, uint64_t *len, pem_password_cb *callback, void *u)
{
  v19 = *MEMORY[0x277D85DE8];
  if (cipher->cipher)
  {
    v7 = *len;
    outl = 0;
    memset(&a, 0, sizeof(a));
    if (callback)
    {
      v8 = (callback)(buf, 1024, 0, u);
    }

    else
    {
      v8 = PEM_def_callback(buf, 1024, 0, u);
    }

    v9 = v8;
    if (v8 <= 0)
    {
      ERR_put_error(9, 4095, 104, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pem/pem_lib.c", 461);
      result = 0;
    }

    else
    {
      v10 = cipher->cipher;
      v11 = EVP_md5();
      result = EVP_BytesToKey(v10, v11, cipher->iv, buf, v9, 1, key, 0);
      if (result)
      {
        v14 = v7;
        EVP_CIPHER_CTX_init(&a);
        if (EVP_DecryptInit_ex(&a, cipher->cipher, 0, key, cipher->iv))
        {
          if (EVP_DecryptUpdate(&a, data, &outl, data, v7))
          {
            EVP_DecryptFinal_ex(&a, &data[outl], &v14);
            EVP_CIPHER_CTX_cleanup(&a);
            explicit_bzero(buf, 0x400uLL);
          }
        }

        EVP_CIPHER_CTX_cleanup(&a);
        explicit_bzero(buf, 0x400uLL);
      }
    }
  }

  else
  {
    result = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

int PEM_ASN1_write(i2d_of_void *i2d, const char *name, FILE *fp, char *x, const EVP_CIPHER *enc, unsigned __int8 *kstr, int klen, pem_password_cb *callback, void *u)
{
  v17 = BIO_s_file();
  v18 = BIO_new(v17);
  if (v18)
  {
    v19 = v18;
    BIO_ctrl(v18, 106, 0, fp);
    v20 = PEM_ASN1_write_bio(i2d, name, v19, x, enc, kstr, klen, callback, u);
    BIO_free(v19);
    return v20;
  }

  else
  {
    ERR_put_error(9, 4095, 7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pem/pem_lib.c", 335);
    return 0;
  }
}

int PEM_ASN1_write_bio(i2d_of_void *i2d, const char *name, BIO *bp, char *x, const EVP_CIPHER *enc, unsigned __int8 *kstr, int klen, pem_password_cb *cb, void *u)
{
  v38 = *MEMORY[0x277D85DE8];
  memset(&a, 0, sizeof(a));
  v32 = 0;
  *outl = 0;
  if (enc)
  {
    v17 = EVP_CIPHER_nid(enc);
    v18 = OBJ_nid2sn(v17);
    if (!v18)
    {
      v19 = 113;
      v20 = 360;
LABEL_12:
      ERR_put_error(9, 4095, v19, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pem/pem_lib.c", v20);
      goto LABEL_28;
    }
  }

  else
  {
    v18 = 0;
  }

  v21 = (i2d)(x, 0);
  if (v21 < 0)
  {
    v19 = 13;
    v20 = 366;
    goto LABEL_12;
  }

  namea = name;
  v22 = malloc_type_malloc((v21 + 20), 0xC2BFAC05uLL);
  v23 = v22;
  if (v22)
  {
    v32 = v22;
    v24 = (i2d)(x, &v32);
    outl[1] = v24;
    if (enc)
    {
      if (!kstr)
      {
        if (cb)
        {
          v25 = (cb)(hdr, 1024, 1, u);
        }

        else
        {
          v25 = PEM_def_callback(hdr, 1024, 1, u);
        }

        klen = v25;
        if (v25 <= 0)
        {
          v26 = 111;
          v27 = 387;
          goto LABEL_27;
        }

        kstr = hdr;
      }

      iv_len = enc->iv_len;
      if (iv_len >= 0x11)
      {
        v26 = 102;
        v27 = 393;
        goto LABEL_27;
      }

      arc4random_buf(__buf, iv_len);
      v29 = EVP_md5();
      if (!EVP_BytesToKey(enc, v29, __buf, kstr, klen, 1, key, 0))
      {
        goto LABEL_28;
      }

      if (kstr == hdr)
      {
        explicit_bzero(hdr, 0x400uLL);
      }

      if (strlen(v18) + 2 * enc->iv_len - 989 <= 0xFFFFFFFFFFFFFBFELL)
      {
        v26 = 107;
        v27 = 407;
        goto LABEL_27;
      }

      hdr[0] = 0;
      PEM_proc_type(hdr, 10);
      PEM_dek_info(hdr, v18, enc->iv_len, __buf);
      EVP_CIPHER_CTX_init(&a);
      if (!EVP_EncryptInit_ex(&a, enc, 0, key, __buf) || !EVP_EncryptUpdate(&a, v23, outl, v23, v24) || !EVP_EncryptFinal_ex(&a, &v23[outl[0]], &outl[1]))
      {
        EVP_CIPHER_CTX_cleanup(&a);
LABEL_28:
        explicit_bzero(key, 0x40uLL);
      }

      EVP_CIPHER_CTX_cleanup(&a);
      v24 = outl[1] + outl[0];
      outl[1] += outl[0];
    }

    else
    {
      hdr[0] = 0;
    }

    outl[1] = PEM_write_bio(bp, namea, hdr, v23, v24);
    goto LABEL_28;
  }

  v26 = 65;
  v27 = 374;
LABEL_27:
  ERR_put_error(9, 4095, v26, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pem/pem_lib.c", v27);
  goto LABEL_28;
}

int PEM_write_bio(BIO *bp, const char *name, char *hdr, unsigned __int8 *data, uint64_t len)
{
  v25 = *MEMORY[0x277D85DE8];
  outl = 0;
  memset(&ctx, 0, sizeof(ctx));
  EVP_EncodeInit(&ctx);
  v10 = strlen(name);
  if (BIO_write(bp, "-----BEGIN ", 11) != 11)
  {
    goto LABEL_30;
  }

  if (BIO_write(bp, name, v10) != v10)
  {
    goto LABEL_30;
  }

  if (BIO_write(bp, "-----\n", 6) != 6)
  {
    goto LABEL_30;
  }

  if (hdr)
  {
    v11 = strlen(hdr);
    if (v11 >= 1 && (BIO_write(bp, hdr, v11) != v11 || BIO_write(bp, "\n", 1) != 1))
    {
      goto LABEL_30;
    }
  }

  v12 = reallocarray(0, 0x400uLL, 8uLL);
  if (!v12)
  {
    v19 = 65;
LABEL_32:
    freezero(v12, 0x2000uLL);
    ERR_put_error(9, 4095, v19, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pem/pem_lib.c", 647);
    result = 0;
    goto LABEL_33;
  }

  if (len >= 1)
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = len >= 0x1400 ? 5120 : len;
      EVP_EncodeUpdate(&ctx, v12, &outl, &data[v13], v15);
      if (!v16)
      {
        goto LABEL_31;
      }

      if (outl)
      {
        v17 = BIO_write(bp, v12, outl);
        if (v17 != outl)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v17 = 0;
      }

      v14 += v17;
      v13 += v15;
      v18 = len <= v15;
      len -= v15;
      if (v18)
      {
        goto LABEL_24;
      }
    }
  }

  v14 = 0;
LABEL_24:
  EVP_EncodeFinal(&ctx, v12, &outl);
  if (outl >= 1)
  {
    v20 = BIO_write(bp, v12, outl);
    if (v20 != outl)
    {
      goto LABEL_31;
    }
  }

  freezero(v12, 0x2000uLL);
  if (BIO_write(bp, "-----END ", 9) != 9 || BIO_write(bp, name, v10) != v10 || BIO_write(bp, "-----\n", 6) != 6)
  {
LABEL_30:
    v12 = 0;
LABEL_31:
    v19 = 7;
    goto LABEL_32;
  }

  result = outl + v14;
LABEL_33:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t load_iv(unsigned __int8 **a1, void *a2, int a3)
{
  v4 = *a1;
  if (a3 < 1)
  {
LABEL_11:
    *a1 = v4;
    return 1;
  }

  bzero(a2, a3);
  v7 = 0;
  v8 = 0;
  v9 = 2 * a3;
  if (2 * a3 <= 1)
  {
    v9 = 1;
  }

  while (1)
  {
    v10 = *v4;
    if ((v10 - 48) > 9)
    {
      break;
    }

    v11 = v10 - 48;
LABEL_10:
    ++v4;
    *(a2 + (v8++ >> 1)) |= v11 << (~v7 & 4);
    v7 += 4;
    if (v9 == v8)
    {
      goto LABEL_11;
    }
  }

  if ((v10 - 65) <= 5)
  {
    v11 = v10 - 55;
    goto LABEL_10;
  }

  if ((v10 - 97) <= 5)
  {
    v11 = v10 - 87;
    goto LABEL_10;
  }

  ERR_put_error(9, 4095, 103, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pem/pem_lib.c", 566);
  return 0;
}

int PEM_write(FILE *fp, char *name, char *hdr, unsigned __int8 *data, uint64_t len)
{
  v10 = BIO_s_file();
  v11 = BIO_new(v10);
  if (v11)
  {
    v12 = v11;
    BIO_ctrl(v11, 106, 0, fp);
    v13 = PEM_write_bio(v12, name, hdr, data, len);
    BIO_free(v12);
    return v13;
  }

  else
  {
    ERR_put_error(9, 4095, 7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pem/pem_lib.c", 585);
    return 0;
  }
}

int PEM_read(FILE *fp, char **name, char **header, unsigned __int8 **data, uint64_t *len)
{
  v10 = BIO_s_file();
  v11 = BIO_new(v10);
  if (v11)
  {
    v12 = v11;
    BIO_ctrl(v11, 106, 0, fp);
    bio = PEM_read_bio(v12, name, header, data, len);
    BIO_free(v12);
    return bio;
  }

  else
  {
    ERR_put_error(9, 4095, 7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pem/pem_lib.c", 658);
    return 0;
  }
}

uint64_t pem_check_suffix(const char *a1, const char *a2)
{
  v4 = strlen(a1);
  v5 = strlen(a2);
  if (v5 + 1 < v4 && (v6 = &a1[v4 - v5], !strcmp(v6, a2)) && (v8 = *(v6 - 1), v7 = v6 - 1, v8 == 32))
  {
    return (v7 - a1);
  }

  else
  {
    return 0;
  }
}

uint64_t asn1_get_identifier_cbs(void *a1, int a2, _BYTE *a3, int *a4, int *a5)
{
  v17 = 0;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  result = CBS_get_u8(a1, &v17);
  if (result)
  {
    v11 = v17;
    v12 = v17 & 0x1F;
    if (v12 == 31)
    {
      v13 = 0;
      while (1)
      {
        result = CBS_get_u8(a1, &v17);
        if (!result)
        {
          break;
        }

        if (a2)
        {
          v14 = v17 == 128;
        }

        else
        {
          v14 = 0;
        }

        if (v14 && v13 == 0 || v13 >> 25 != 0)
        {
          return 0;
        }

        v12 = v17 & 0x7F | (v13 << 7);
        v13 = v12;
        if ((v17 & 0x80) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
      *a3 = v11 >> 6;
      *a4 = (v11 >> 5) & 1;
      *a5 = v12;
      return 1;
    }
  }

  return result;
}

uint64_t asn1_get_length_cbs(void *a1, int a2, _DWORD *a3, unint64_t *a4)
{
  v14 = 0;
  *a4 = 0;
  *a3 = 0;
  result = CBS_get_u8(a1, &v14);
  if (result)
  {
    if ((v14 & 0x8000000000000000) == 0)
    {
      *a4 = v14;
      return 1;
    }

    if (v14 == -128)
    {
      result = 1;
      *a3 = 1;
    }

    else
    {
      v9 = v14 & 0x7F;
      if ((v14 & 0x7F) == 0)
      {
        v10 = v14 & 0x7F;
LABEL_26:
        *a4 = v10;
        return 1;
      }

      if (v9 == 127)
      {
        return 0;
      }

      else
      {
        v10 = 0;
        while (1)
        {
          result = CBS_get_u8(a1, &v14);
          if (!result)
          {
            break;
          }

          if (a2)
          {
            v11 = v14 == 0;
          }

          else
          {
            v11 = 0;
          }

          if (v11 && v10 == 0 || HIBYTE(v10) != 0)
          {
            return 0;
          }

          --v9;
          v10 = v14 | (v10 << 8);
          if (!v9)
          {
            goto LABEL_26;
          }
        }
      }
    }
  }

  return result;
}

uint64_t asn1_get_object_cbs(void *a1, int a2, _BYTE *a3, int *a4, _DWORD *a5, _DWORD *a6, void *a7)
{
  v21 = 0;
  v19 = 0;
  v18 = 0;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  *a7 = 0;
  result = asn1_get_identifier_cbs(a1, a2, &v18, &v21, &v19);
  if (result)
  {
    v20 = 0;
    v17 = 0;
    result = asn1_get_length_cbs(a1, a2, &v20, &v17);
    if (result)
    {
      v15 = v20;
      v16 = v21;
      if (!v20 || v21)
      {
        *a3 = v18;
        *a4 = v16;
        *a5 = v19;
        *a6 = v15;
        *a7 = v17;
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t asn1_get_primitive(uint64_t *a1, int a2, _DWORD *a3, void *a4)
{
  HIDWORD(v12) = 0;
  v11 = 0;
  *a3 = 0;
  CBS_init(a4, 0, 0);
  result = asn1_get_identifier_cbs(a1, a2, &v10, &v12 + 1, &v11);
  if (result)
  {
    LODWORD(v12) = 0;
    v9 = 0;
    result = asn1_get_length_cbs(a1, a2, &v12, &v9);
    if (result)
    {
      if (v12)
      {
        return 0;
      }

      else
      {
        result = CBS_get_bytes(a1, a4, v9);
        if (result)
        {
          *a3 = v11;
          return 1;
        }
      }
    }
  }

  return result;
}

int DSA_generate_key(DSA *a)
{
  comp = a->ex_data.sk[2].comp;
  if (!comp)
  {
    v4 = BN_new();
    if (v4)
    {
      v5 = BN_new();
      if (v5)
      {
        v6 = BN_CTX_new();
        if (v6)
        {
          v7 = BN_value_one();
          if (bn_rand_interval(v4, v7, a->p))
          {
            if (BN_mod_exp_ct(v5, a->q, v4, *&a->write_params, v6))
            {
              BN_free(a->pub_key);
              a->pub_key = v4;
              BN_free(a->g);
              v4 = 0;
              a->g = v5;
              v8 = 1;
              v5 = 0;
LABEL_14:
              BN_free(v5);
              BN_free(v4);
              BN_CTX_free(v6);
              return v8;
            }
          }
        }

LABEL_13:
        v8 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 0;
    goto LABEL_13;
  }

  return comp();
}

uint64_t des_cbc_cipher(uint64_t a1, unsigned __int8 *output, unsigned __int8 *input, unint64_t length)
{
  for (i = length; i > 0x7FFFFFFFFFFFFEFFLL; output += 0x7FFFFFFFFFFFFF00)
  {
    DES_ncbc_encrypt(input, output, 0x7FFFFFFFFFFFFF00, *(a1 + 120), (a1 + 40), *(a1 + 16));
    i -= 0x7FFFFFFFFFFFFF00;
    input += 0x7FFFFFFFFFFFFF00;
  }

  if (i)
  {
    DES_ncbc_encrypt(input, output, i, *(a1 + 120), (a1 + 40), *(a1 + 16));
  }

  return 1;
}

uint64_t des_ctrl(int a1, int a2, int a3, DES_cblock *ret)
{
  if (a2 == 6)
  {
    return DES_random_key(ret) != 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t des_cfb64_cipher(uint64_t a1, unsigned __int8 *out, unsigned __int8 *in, unint64_t length)
{
  for (i = length; i > 0x7FFFFFFFFFFFFEFFLL; out += 0x7FFFFFFFFFFFFF00)
  {
    DES_cfb64_encrypt(in, out, 0x7FFFFFFFFFFFFF00, *(a1 + 120), (a1 + 40), (a1 + 88), *(a1 + 16));
    i -= 0x7FFFFFFFFFFFFF00;
    in += 0x7FFFFFFFFFFFFF00;
  }

  if (i)
  {
    DES_cfb64_encrypt(in, out, i, *(a1 + 120), (a1 + 40), (a1 + 88), *(a1 + 16));
  }

  return 1;
}

uint64_t des_ofb_cipher(uint64_t a1, unsigned __int8 *out, unsigned __int8 *in, unint64_t length)
{
  for (i = length; i > 0x7FFFFFFFFFFFFEFFLL; out += 0x7FFFFFFFFFFFFF00)
  {
    DES_ofb64_encrypt(in, out, 0x7FFFFFFFFFFFFF00, *(a1 + 120), (a1 + 40), (a1 + 88));
    i -= 0x7FFFFFFFFFFFFF00;
    in += 0x7FFFFFFFFFFFFF00;
  }

  if (i)
  {
    DES_ofb64_encrypt(in, out, i, *(a1 + 120), (a1 + 40), (a1 + 88));
  }

  return 1;
}

uint64_t des_ecb_cipher(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *(*a1 + 4);
  v5 = a4 - v4;
  if (a4 >= v4)
  {
    v9 = 0;
    do
    {
      DES_ecb_encrypt((a3 + v9), (a2 + v9), *(a1 + 120), *(a1 + 16));
      v9 += v4;
    }

    while (v9 <= v5);
  }

  return 1;
}

uint64_t des_cfb1_cipher(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    if (a4 >= 0xFFFFFFFFFFFFFFFLL)
    {
      v8 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = a4;
    }

    do
    {
      if (v8)
      {
        v9 = 0;
        do
        {
          in = *(a3 + (v9 >> 3)) >> (v9 & 7 ^ 7) << 7;
          DES_cfb_encrypt(&in, &out, 1, 1, *(a1 + 120), (a1 + 40), *(a1 + 16));
          *(a2 + (v9 >> 3)) = ((out & 0x80) >> (v9 & 7)) | (-129 >> (v9 & 7)) & *(a2 + (v9 >> 3));
          ++v9;
        }

        while (8 * v8 != v9);
      }

      a3 += v8;
      a2 += v8;
      v4 -= v8;
      if (v4 < v8)
      {
        v8 = v4;
      }
    }

    while (v4);
  }

  return 1;
}

uint64_t des_cfb8_cipher(uint64_t a1, unsigned __int8 *out, unsigned __int8 *in, unint64_t length)
{
  for (i = length; i > 0x7FFFFFFFFFFFFEFFLL; out += 0x7FFFFFFFFFFFFF00)
  {
    DES_cfb_encrypt(in, out, 8, 0x7FFFFFFFFFFFFF00, *(a1 + 120), (a1 + 40), *(a1 + 16));
    i -= 0x7FFFFFFFFFFFFF00;
    in += 0x7FFFFFFFFFFFFF00;
  }

  if (i)
  {
    DES_cfb_encrypt(in, out, 8, i, *(a1 + 120), (a1 + 40), *(a1 + 16));
  }

  return 1;
}

uint64_t PKCS5_PBKDF2_HMAC(const char *a1, int a2, const unsigned __int8 *a3, int a4, int a5, EVP_MD *md, int a7, char *a8)
{
  v49 = *MEMORY[0x277D85DE8];
  v16 = EVP_MD_size(md);
  if ((v16 & 0x80000000) == 0)
  {
    v17 = v16;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    memset(&ctx, 0, sizeof(ctx));
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    memset(&v38, 0, sizeof(v38));
    HMAC_CTX_init(&ctx);
    if (a1)
    {
      if (a2 == -1)
      {
        a2 = strlen(a1);
      }
    }

    else
    {
      a2 = 0;
    }

    p_ctx = &ctx;
    HMAC_Init_ex(&ctx, a1, a2, md, 0);
    if (v20)
    {
      if (!a7)
      {
        v18 = 1;
        p_ctx = &ctx;
        goto LABEL_31;
      }

      v21 = 1;
      len = a4;
      while (1)
      {
        v22 = a7 >= v17 ? v17 : a7;
        *data = bswap32(v21);
        p_ctx = &ctx;
        if (!HMAC_CTX_copy(&v38, &ctx))
        {
          break;
        }

        v23 = a3;
        HMAC_Update(&v38, a3, len);
        if (!v24 || (HMAC_Update(&v38, data, 4uLL), !v25) || (HMAC_Final(&v38, mda, 0), !v26))
        {
LABEL_29:
          HMAC_CTX_cleanup(&ctx);
          v18 = 0;
          p_ctx = &v38;
          goto LABEL_31;
        }

        HMAC_CTX_cleanup(&v38);
        memcpy(a8, mda, v22);
        if (a5 >= 2)
        {
          v27 = 1;
          do
          {
            p_ctx = &ctx;
            if (!HMAC_CTX_copy(&v38, &ctx))
            {
              goto LABEL_28;
            }

            HMAC_Update(&v38, mda, v17);
            if (!v28)
            {
              goto LABEL_29;
            }

            HMAC_Final(&v38, mda, 0);
            if (!v29)
            {
              goto LABEL_29;
            }

            HMAC_CTX_cleanup(&v38);
            if (v22 >= 1)
            {
              v30 = mda;
              v31 = v22;
              v32 = a8;
              do
              {
                v33 = *v30++;
                *v32++ ^= v33;
                --v31;
              }

              while (v31);
            }
          }

          while (++v27 != a5);
        }

        ++v21;
        a8 += v22;
        v18 = 1;
        p_ctx = &ctx;
        a7 -= v22;
        a3 = v23;
        if (!a7)
        {
          goto LABEL_31;
        }
      }
    }

LABEL_28:
    v18 = 0;
LABEL_31:
    HMAC_CTX_cleanup(p_ctx);
    goto LABEL_32;
  }

  v18 = 0;
LABEL_32:
  v34 = *MEMORY[0x277D85DE8];
  return v18;
}

int PKCS5_PBKDF2_HMAC_SHA1(const char *pass, int passlen, const unsigned __int8 *salt, int saltlen, int iter, int keylen, unsigned __int8 *out)
{
  v14 = EVP_sha1();

  return PKCS5_PBKDF2_HMAC(pass, passlen, salt, saltlen, iter, v14, keylen, out);
}

int PKCS5_v2_PBE_keyivgen(EVP_CIPHER_CTX *ctx, const char *pass, int passlen, ASN1_TYPE *param, const EVP_CIPHER *cipher, const EVP_MD *md, int en_de)
{
  in = 0;
  if (!param || param->type != 16 || (ptr = param->value.ptr) == 0)
  {
    ERR_put_error(6, 4095, 114, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/p5_crpt2.c", 179);
    v13 = 0;
    goto LABEL_11;
  }

  in = *(ptr + 1);
  v12 = d2i_PBE2PARAM(0, &in, *ptr);
  v13 = v12;
  if (!v12)
  {
    v21 = 114;
    v22 = 186;
LABEL_17:
    ERR_put_error(6, 4095, v21, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/p5_crpt2.c", v22);
    goto LABEL_11;
  }

  if (OBJ_obj2nid(v12->keyfunc->algorithm) != 69)
  {
    v21 = 124;
    v22 = 193;
    goto LABEL_17;
  }

  v14 = OBJ_obj2nid(v13->encryption->algorithm);
  v15 = OBJ_nid2sn(v14);
  cipherbyname = EVP_get_cipherbyname(v15);
  if (!cipherbyname)
  {
    v21 = 107;
    v22 = 203;
    goto LABEL_17;
  }

  if (!EVP_CipherInit_ex(ctx, cipherbyname, 0, 0, 0, en_de))
  {
LABEL_11:
    v19 = 0;
    goto LABEL_12;
  }

  if (EVP_CIPHER_asn1_to_param(ctx, v13->encryption->parameter) < 0)
  {
    v21 = 122;
    v22 = 211;
    goto LABEL_17;
  }

  v19 = PKCS5_v2_PBKDF2_keyivgen(ctx, pass, passlen, v13->keyfunc->parameter, v17, v18, en_de);
LABEL_12:
  PBE2PARAM_free(v13);
  return v19;
}

uint64_t PKCS5_v2_PBKDF2_keyivgen(EVP_CIPHER_CTX *a1, const char *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!EVP_CIPHER_CTX_cipher(a1))
  {
    v13 = 131;
    v14 = 236;
    goto LABEL_13;
  }

  v12 = EVP_CIPHER_CTX_key_length(a1);
  if (v12 < 0x41)
  {
    if (!a4 || *a4 != 16)
    {
      v13 = 114;
      v14 = 248;
      goto LABEL_13;
    }

    v15 = v12;
    n = 0;
    v16 = *(a4 + 8);
    in = *(v16 + 1);
    v17 = d2i_PBKDF2PARAM(0, &in, *v16);
    if (!v17)
    {
      v13 = 114;
      v14 = 256;
      goto LABEL_13;
    }

    v18 = v17;
    keylength = v17->keylength;
    if (keylength && ASN1_INTEGER_get(keylength) != v15)
    {
      v24 = 123;
      v25 = 264;
    }

    else
    {
      p_algorithm = &v18->prf->algorithm;
      if (p_algorithm)
      {
        v21 = OBJ_obj2nid(*p_algorithm);
      }

      else
      {
        v21 = 163;
      }

      if (EVP_PBE_find(1, v21, 0, &n, 0))
      {
        v26 = OBJ_nid2sn(n);
        digestbyname = EVP_get_digestbyname(v26);
        if (digestbyname)
        {
          if (v18->salt->type == 4)
          {
            v28 = digestbyname;
            ptr = v18->salt->value.ptr;
            v30 = *(ptr + 1);
            v31 = *ptr;
            v32 = ASN1_INTEGER_get(v18->iter);
            if (v32 > 0)
            {
              if (PKCS5_PBKDF2_HMAC(a2, a3, v30, v31, v32, v28, v15, key))
              {
                EVP_CipherInit_ex(a1, 0, 0, key, 0, a7);
              }

LABEL_28:
              explicit_bzero(key, v15);
            }

            v24 = 135;
            v25 = 293;
          }

          else
          {
            v24 = 126;
            v25 = 285;
          }
        }

        else
        {
          v24 = 125;
          v25 = 280;
        }
      }

      else
      {
        v24 = 125;
        v25 = 274;
      }
    }

    ERR_put_error(6, 4095, v24, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/p5_crpt2.c", v25);
    goto LABEL_28;
  }

  v13 = 137;
  v14 = 241;
LABEL_13:
  ERR_put_error(6, 4095, v13, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/p5_crpt2.c", v14);
  v22 = *MEMORY[0x277D85DE8];
  return 0;
}

STACK *i2v_POLICY_MAPPINGS(int a1, STACK *a2, STACK *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = a3;
  if (a3)
  {
    v4 = a3;
    v5 = 0;
  }

  else
  {
    v4 = sk_new_null();
    v11 = v4;
    v5 = v4;
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  if (sk_num(a2) >= 1)
  {
    v6 = 0;
    while (1)
    {
      v7 = sk_value(a2, v6);
      if (!v7)
      {
        break;
      }

      v8 = v7;
      if (!i2t_ASN1_OBJECT(buf, 80, *v7) || !i2t_ASN1_OBJECT(value, 80, *(v8 + 1)) || !X509V3_add_value(buf, value, &v11))
      {
        break;
      }

      if (++v6 >= sk_num(a2))
      {
        v4 = v11;
        goto LABEL_13;
      }
    }

    sk_pop_free(v5, X509V3_conf_free);
    v4 = 0;
  }

LABEL_13:
  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

STACK *v2i_POLICY_MAPPINGS(uint64_t a1, uint64_t a2, const STACK *a3)
{
  v4 = sk_new_null();
  if (!v4)
  {
    ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_pmaps.c", 196);
    return v4;
  }

  if (sk_num(a3) >= 1)
  {
    v5 = 0;
    while (1)
    {
      v6 = sk_value(a3, v5);
      v7 = v6;
      if (!*(v6 + 2))
      {
        break;
      }

      v8 = *(v6 + 1);
      if (!v8)
      {
        break;
      }

      v9 = OBJ_txt2obj(v8, 0);
      v10 = OBJ_txt2obj(v7[2], 0);
      v11 = v10;
      if (v9)
      {
        v12 = v10 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        v14 = 0;
        goto LABEL_17;
      }

      v13 = ASN1_item_new(&POLICY_MAPPING_it);
      v14 = v13;
      if (!v13)
      {
        goto LABEL_19;
      }

      *v13 = v9;
      *(v13 + 1) = v11;
      if (!sk_push(v4, v13))
      {
        v9 = 0;
        v11 = 0;
LABEL_19:
        v16 = 0;
        v15 = 65;
LABEL_20:
        sk_pop_free(v4, POLICY_MAPPING_free);
        ERR_put_error(34, 4095, v15, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_pmaps.c", 230);
        if (v16)
        {
          ERR_asprintf_error_data("section:%s,name:%s,value:%s", *v7, v7[1], v7[2]);
        }

        ASN1_OBJECT_free(v9);
        ASN1_OBJECT_free(v11);
        ASN1_item_free(v14, &POLICY_MAPPING_it);
        return 0;
      }

      if (++v5 >= sk_num(a3))
      {
        return v4;
      }
    }

    v14 = 0;
    v9 = 0;
    v11 = 0;
LABEL_17:
    v15 = 110;
    v16 = 1;
    goto LABEL_20;
  }

  return v4;
}

int SHA384_Init(SHA512_CTX *c)
{
  *&c->num = 0;
  *&c->u.p[96] = 0u;
  *&c->u.p[112] = 0u;
  *&c->u.p[64] = 0u;
  *&c->u.p[80] = 0u;
  *&c->u.p[32] = 0u;
  *&c->u.p[48] = 0u;
  *c->u.d = 0u;
  *&c->u.p[16] = 0u;
  *c->h = xmmword_23E23D630;
  *&c->h[2] = xmmword_23E23D640;
  *&c->h[4] = xmmword_23E23D650;
  *&c->h[6] = xmmword_23E23D660;
  *&c->Nl = 0u;
  c->md_len = 48;
  return 1;
}

int SHA512_Update(SHA512_CTX *c, const void *data, size_t len)
{
  if (len)
  {
    v3 = len;
    v4 = data;
    p_u = &c->u;
    *&c->Nl += __PAIR128__(len >> 61, 8 * len);
    num = c->num;
    if (num)
    {
      v8 = 128 - num;
      v9 = len - (128 - num);
      if (len < 128 - num)
      {
        memcpy(p_u + num, data, len);
        LODWORD(v3) = c->num + v3;
LABEL_10:
        c->num = v3;
        return 1;
      }

      memcpy(p_u + num, data, 128 - num);
      c->num = 0;
      v4 = (v4 + v8);
      sha512_block_data_order(c, p_u->d, 1);
      v3 = v9;
    }

    if (v3 >= 0x80)
    {
      sha512_block_data_order(c, v4, v3 >> 7);
      v10 = v4 + v3;
      v3 &= 0x7Fu;
      v4 = &v10[-v3];
    }

    if (v3)
    {
      memcpy(p_u, v4, v3);
      goto LABEL_10;
    }
  }

  return 1;
}

int SHA512_Final(unsigned __int8 *md, SHA512_CTX *c)
{
  p_u = &c->u;
  num = c->num;
  c->u.p[num] = 0x80;
  v6 = num + 1;
  if (num >= 0x70)
  {
    bzero(p_u + v6, 127 - num);
    sha512_block_data_order(c, p_u->d, 1);
    v6 = 0;
  }

  bzero(p_u + v6, 112 - v6);
  v7 = vrev64q_s8(*&c->Nl);
  *&c->u.p[112] = vextq_s8(v7, v7, 8uLL);
  sha512_block_data_order(c, p_u->d, 1);
  result = 0;
  if (md)
  {
    HIDWORD(v10) = c->md_len - 28;
    LODWORD(v10) = HIDWORD(v10);
    v9 = v10 >> 2;
    if (v9 > 4)
    {
      if (v9 == 5)
      {
        for (i = 0; i != 6; ++i)
        {
          *&md[i * 8] = bswap64(c->h[i]);
        }
      }

      else
      {
        if (v9 != 9)
        {
          return result;
        }

        for (j = 0; j != 8; ++j)
        {
          *&md[j * 8] = bswap64(c->h[j]);
        }
      }
    }

    else if (v9)
    {
      if (v9 != 1)
      {
        return result;
      }

      for (k = 0; k != 4; ++k)
      {
        *&md[k * 8] = bswap64(c->h[k]);
      }
    }

    else
    {
      for (m = 0; m != 3; ++m)
      {
        *&md[m * 8] = bswap64(c->h[m]);
      }

      *(md + 6) = bswap32(HIDWORD(c->h[3]));
    }

    return 1;
  }

  return result;
}

unsigned __int8 *__cdecl SHA384(const unsigned __int8 *d, size_t n, unsigned __int8 *md)
{
  memset(&v5.u.p[64], 0, 72);
  if (md)
  {
    v3 = md;
  }

  else
  {
    v3 = &SHA384_m;
  }

  *v5.h = xmmword_23E23D630;
  *&v5.h[2] = xmmword_23E23D640;
  *&v5.h[4] = xmmword_23E23D650;
  *&v5.h[6] = xmmword_23E23D660;
  memset(&v5.Nl, 0, 80);
  v5.md_len = 48;
  SHA512_Update(&v5, d, n);
  SHA512_Final(v3, &v5);
  explicit_bzero(&v5, 0xD8uLL);
}

int SHA512_Init(SHA512_CTX *c)
{
  *&c->num = 0;
  *&c->u.p[96] = 0u;
  *&c->u.p[112] = 0u;
  *&c->u.p[64] = 0u;
  *&c->u.p[80] = 0u;
  *&c->u.p[32] = 0u;
  *&c->u.p[48] = 0u;
  *c->u.d = 0u;
  *&c->u.p[16] = 0u;
  *c->h = xmmword_23E23D670;
  *&c->h[2] = xmmword_23E23D680;
  *&c->h[4] = xmmword_23E23D690;
  *&c->h[6] = xmmword_23E23D6A0;
  *&c->Nl = 0u;
  c->md_len = 64;
  return 1;
}

unint64_t sha512_block_data_order(unint64_t result, unint64_t *a2, uint64_t a3)
{
  v122 = result;
  if (a3)
  {
    v4 = *result;
    v3 = *(result + 8);
    v6 = *(result + 16);
    v5 = *(result + 24);
    v8 = *(result + 32);
    v7 = *(result + 40);
    v10 = *(result + 48);
    v9 = *(result + 56);
    do
    {
      v132 = a3;
      v11 = 0;
      v123 = v9;
      v138 = bswap64(*a2);
      v12 = (__ROR8__(v8, 14) ^ __ROR8__(v8, 18) ^ __ROR8__(v8, 41)) + v9 + (v10 & ~v8 | v7 & v8) + v138 + 0x428A2F98D728AE22;
      v127 = v5;
      v13 = v12 + v5;
      v14 = ((v6 ^ v3) & v4 ^ v6 & v3) + (__ROR8__(v4, 28) ^ __ROR8__(v4, 34) ^ __ROR8__(v4, 39)) + v12;
      v15 = bswap64(a2[1]);
      v124 = v10;
      v16 = v10 + (v13 & v8 | v7 & ~v13) + v15 + 0x7137449123EF65CDLL + (__ROR8__(v13, 14) ^ __ROR8__(v13, 18) ^ __ROR8__(v13, 41));
      v128 = v6;
      v17 = v16 + v6;
      v18 = (__ROR8__(v14, 28) ^ __ROR8__(v14, 34) ^ __ROR8__(v14, 39)) + (v14 & (v3 ^ v4) ^ v3 & v4) + v16;
      v19 = bswap64(a2[2]);
      v125 = v7;
      v20 = v7 + (v17 & v13 | v8 & ~v17) + v19 - 0x4A3F043013B2C4D1 + (__ROR8__(v17, 14) ^ __ROR8__(v17, 18) ^ __ROR8__(v17, 41));
      v129 = v3;
      v21 = v20 + v3;
      v22 = (__ROR8__(v18, 28) ^ __ROR8__(v18, 34) ^ __ROR8__(v18, 39)) + (v18 & (v14 ^ v4) ^ v14 & v4) + v20;
      v23 = bswap64(a2[3]);
      v126 = v8;
      v24 = v8 + (v21 & v17 | v13 & ~v21) + v23 - 0x164A245A7E762444 + (__ROR8__(v21, 14) ^ __ROR8__(v21, 18) ^ __ROR8__(v21, 41));
      v130 = v4;
      v25 = v24 + v4;
      v26 = (__ROR8__(v22, 28) ^ __ROR8__(v22, 34) ^ __ROR8__(v22, 39)) + (v22 & (v18 ^ v14) ^ v18 & v14) + v24;
      v27 = bswap64(a2[4]);
      v28 = v13 + (v25 & v21 | v17 & ~v25) + v27 + 0x3956C25BF348B538 + (__ROR8__(v25, 14) ^ __ROR8__(v25, 18) ^ __ROR8__(v25, 41));
      v29 = v28 + v14;
      v30 = (__ROR8__(v26, 28) ^ __ROR8__(v26, 34) ^ __ROR8__(v26, 39)) + (v26 & (v22 ^ v18) ^ v22 & v18) + v28;
      v31 = bswap64(a2[5]);
      v32 = v17 + (v29 & v25 | v21 & ~v29) + v31 + 0x59F111F1B605D019 + (__ROR8__(v29, 14) ^ __ROR8__(v29, 18) ^ __ROR8__(v29, 41));
      v33 = v32 + v18;
      v34 = (__ROR8__(v30, 28) ^ __ROR8__(v30, 34) ^ __ROR8__(v30, 39)) + (v30 & (v26 ^ v22) ^ v26 & v22) + v32;
      v35 = bswap64(a2[6]);
      v36 = v21 + (v33 & v29 | v25 & ~v33) + v35 - 0x6DC07D5B50E6B065 + (__ROR8__(v33, 14) ^ __ROR8__(v33, 18) ^ __ROR8__(v33, 41));
      v37 = v36 + v22;
      v38 = (__ROR8__(v34, 28) ^ __ROR8__(v34, 34) ^ __ROR8__(v34, 39)) + (v34 & (v30 ^ v26) ^ v30 & v26) + v36;
      v137 = bswap64(a2[7]);
      v39 = v25 + (v37 & v33 | v29 & ~v37) + v137 - 0x54E3A12A25927EE8 + (__ROR8__(v37, 14) ^ __ROR8__(v37, 18) ^ __ROR8__(v37, 41));
      v40 = v39 + v26;
      v41 = (__ROR8__(v38, 28) ^ __ROR8__(v38, 34) ^ __ROR8__(v38, 39)) + (v38 & (v34 ^ v30) ^ v34 & v30) + v39;
      v136 = bswap64(a2[8]);
      v42 = v29 + (v40 & v37 | v33 & ~v40) + v136 - 0x27F855675CFCFDBELL + (__ROR8__(v40, 14) ^ __ROR8__(v40, 18) ^ __ROR8__(v40, 41));
      v43 = v42 + v30;
      v44 = (__ROR8__(v41, 28) ^ __ROR8__(v41, 34) ^ __ROR8__(v41, 39)) + (v41 & (v38 ^ v34) ^ v38 & v34) + v42;
      v135 = bswap64(a2[9]);
      v45 = v33 + (v43 & v40 | v37 & ~v43) + v135 + 0x12835B0145706FBELL + (__ROR8__(v43, 14) ^ __ROR8__(v43, 18) ^ __ROR8__(v43, 41));
      v46 = v45 + v34;
      v47 = (__ROR8__(v44, 28) ^ __ROR8__(v44, 34) ^ __ROR8__(v44, 39)) + (v44 & (v41 ^ v38) ^ v41 & v38) + v45;
      v48 = bswap64(a2[10]);
      v49 = v37 + (v46 & v43 | v40 & ~v46) + v48 + 0x243185BE4EE4B28CLL + (__ROR8__(v45 + v34, 14) ^ __ROR8__(v45 + v34, 18) ^ __ROR8__(v46, 41));
      v50 = v49 + v38;
      v51 = (__ROR8__(v47, 28) ^ __ROR8__(v47, 34) ^ __ROR8__(v47, 39)) + (v47 & (v44 ^ v41) ^ v44 & v41) + v49;
      v52 = bswap64(a2[11]);
      v53 = v40 + (v50 & v46 | v43 & ~v50) + v52 + 0x550C7DC3D5FFB4E2 + (__ROR8__(v49 + v38, 14) ^ __ROR8__(v49 + v38, 18) ^ __ROR8__(v50, 41));
      v54 = v53 + v41;
      v55 = (__ROR8__(v51, 28) ^ __ROR8__(v51, 34) ^ __ROR8__(v51, 39)) + (v51 & (v47 ^ v44) ^ v47 & v44) + v53;
      v56 = bswap64(a2[12]);
      v57 = v43 + (v54 & v50 | v46 & ~v54) + v56 + 0x72BE5D74F27B896FLL + (__ROR8__(v54, 14) ^ __ROR8__(v54, 18) ^ __ROR8__(v54, 41));
      v58 = v57 + v44;
      v59 = (__ROR8__(v55, 28) ^ __ROR8__(v55, 34) ^ __ROR8__(v55, 39)) + (v55 & (v51 ^ v47) ^ v51 & v47) + v57;
      v60 = bswap64(a2[13]);
      v61 = v46 + (v58 & v54 | v50 & ~v58) + v60 - 0x7F214E01C4E9694FLL + (__ROR8__(v57 + v44, 14) ^ __ROR8__(v57 + v44, 18) ^ __ROR8__(v58, 41));
      v62 = v61 + v47;
      v63 = (__ROR8__(v59, 28) ^ __ROR8__(v59, 34) ^ __ROR8__(v59, 39)) + (v59 & (v55 ^ v51) ^ v55 & v51) + v61;
      v131 = a2;
      v64 = bswap64(a2[14]);
      v65 = v50 + (v62 & v58 | v54 & ~v62) + v64 - 0x6423F958DA38EDCBLL + (__ROR8__(v61 + v47, 14) ^ __ROR8__(v61 + v47, 18) ^ __ROR8__(v62, 41));
      result = v65 + v51;
      v66 = (__ROR8__(v63, 28) ^ __ROR8__(v63, 34) ^ __ROR8__(v63, 39)) + (v63 & (v59 ^ v55) ^ v59 & v55) + v65;
      v67 = bswap64(a2[15]);
      v68 = v54 + (result & v62 | v58 & ~result) + v67 - 0x3E640E8B3096D96CLL + (__ROR8__(result, 14) ^ __ROR8__(result, 18) ^ __ROR8__(result, 41));
      v69 = v68 + v55;
      v70 = (__ROR8__(v66, 28) ^ __ROR8__(v66, 34) ^ __ROR8__(v66, 39)) + (v66 & (v63 ^ v59) ^ v63 & v59) + v68;
      v71 = &unk_23E23D828;
      do
      {
        v134 = v11;
        v72 = v135 + v138 + (__ROR8__(v64, 19) ^ __ROR8__(v64, 61) ^ (v64 >> 6)) + (__ROR8__(v15, 1) ^ __ROR8__(v15, 8) ^ (v15 >> 7));
        v73 = v58 + (v62 & ~v69 | result & v69) + (__ROR8__(v69, 14) ^ __ROR8__(v69, 18) ^ __ROR8__(v69, 41)) + *(v71 - 15) + v72;
        v74 = v73 + v59;
        v75 = ((v63 ^ v66) & v70 ^ v63 & v66) + (__ROR8__(v70, 28) ^ __ROR8__(v70, 34) ^ __ROR8__(v70, 39)) + v73;
        v76 = v48 + v15 + (__ROR8__(v67, 19) ^ __ROR8__(v67, 61) ^ (v67 >> 6)) + (__ROR8__(v19, 1) ^ __ROR8__(v19, 8) ^ (v19 >> 7));
        v77 = v76 + v62 + *(v71 - 14) + (v74 & v69 | result & ~v74) + (__ROR8__(v74, 14) ^ __ROR8__(v74, 18) ^ __ROR8__(v74, 41));
        v78 = v77 + v63;
        v79 = (__ROR8__(v75, 28) ^ __ROR8__(v75, 34) ^ __ROR8__(v75, 39)) + (v75 & (v66 ^ v70) ^ v66 & v70) + v77;
        v80 = v19 + v52 + (__ROR8__(v23, 1) ^ __ROR8__(v23, 8) ^ (v23 >> 7)) + (__ROR8__(v72, 19) ^ __ROR8__(v72, 61) ^ (v72 >> 6));
        v81 = (v80 + result + *(v71 - 13) + (v78 & v74 | v69 & ~v78) + (__ROR8__(v77 + v63, 14) ^ __ROR8__(v77 + v63, 18) ^ __ROR8__(v78, 41)));
        v82 = &v81[v66];
        v83 = &v81[(__ROR8__(v79, 28) ^ __ROR8__(v79, 34) ^ __ROR8__(v79, 39)) + (v79 & (v75 ^ v70) ^ v75 & v70)];
        v84 = v76;
        v133 = v76;
        v85 = v23 + v56 + (__ROR8__(v27, 1) ^ __ROR8__(v27, 8) ^ (v27 >> 7)) + (__ROR8__(v76, 19) ^ __ROR8__(v76, 61) ^ (v76 >> 6));
        v86 = v85 + v69 + *(v71 - 12) + (v82 & (v77 + v63) | v74 & ~v82) + (__ROR8__(v82, 14) ^ __ROR8__(v82, 18) ^ __ROR8__(v82, 41));
        v87 = v86 + v70;
        v88 = (__ROR8__(v83, 28) ^ __ROR8__(v83, 34) ^ __ROR8__(v83, 39)) + (v83 & (v79 ^ v75) ^ v79 & v75) + v86;
        v27 += v60 + (__ROR8__(v31, 1) ^ __ROR8__(v31, 8) ^ (v31 >> 7)) + (__ROR8__(v80, 19) ^ __ROR8__(v80, 61) ^ (v80 >> 6));
        v89 = v74 + *(v71 - 11) + v27 + (v87 & v82 | (v77 + v63) & ~v87) + (__ROR8__(v86 + v70, 14) ^ __ROR8__(v86 + v70, 18) ^ __ROR8__(v86 + v70, 41));
        v90 = v89 + v75;
        v91 = (__ROR8__(v88, 28) ^ __ROR8__(v88, 34) ^ __ROR8__(v88, 39)) + (v88 & (v83 ^ v79) ^ v83 & v79) + v89;
        v139 = v85;
        v31 += v64 + (__ROR8__(v35, 1) ^ __ROR8__(v35, 8) ^ (v35 >> 7)) + (__ROR8__(v85, 19) ^ __ROR8__(v85, 61) ^ (v85 >> 6));
        v92 = *(v71 - 10) + v78 + v31 + (v90 & v87 | v82 & ~v90) + (__ROR8__(v89 + v75, 14) ^ __ROR8__(v89 + v75, 18) ^ __ROR8__(v90, 41));
        v93 = v92 + v79;
        v94 = (__ROR8__(v91, 28) ^ __ROR8__(v91, 34) ^ __ROR8__(v91, 39)) + (v91 & (v88 ^ v83) ^ v88 & v83) + v92;
        v35 += v67 + (__ROR8__(v137, 1) ^ __ROR8__(v137, 8) ^ (v137 >> 7)) + (__ROR8__(v27, 19) ^ __ROR8__(v27, 61) ^ (v27 >> 6));
        v95 = &v82[*(v71 - 9) + v35 + (v93 & v90 | v87 & ~v93) + (__ROR8__(v93, 14) ^ __ROR8__(v93, 18) ^ __ROR8__(v93, 41))];
        v96 = &v83[v95];
        v97 = (__ROR8__(v94, 28) ^ __ROR8__(v94, 34) ^ __ROR8__(v94, 39)) + (v94 & (v91 ^ v88) ^ v91 & v88) + v95;
        v98 = (__ROR8__(v136, 1) ^ __ROR8__(v136, 8) ^ (v136 >> 7)) + v137 + v72 + (__ROR8__(v31, 19) ^ __ROR8__(v31, 61) ^ (v31 >> 6));
        v99 = *(v71 - 8) + v98 + v87 + (v96 & v93 | v90 & ~v96) + (__ROR8__(v96, 14) ^ __ROR8__(v96, 18) ^ __ROR8__(v96, 41));
        v100 = v99 + v88;
        v101 = (__ROR8__(v97, 28) ^ __ROR8__(v97, 34) ^ __ROR8__(v97, 39)) + (v97 & (v94 ^ v91) ^ v94 & v91) + v99;
        v102 = (__ROR8__(v135, 1) ^ __ROR8__(v135, 8) ^ (v135 >> 7)) + v136 + v84 + (__ROR8__(v35, 19) ^ __ROR8__(v35, 61) ^ (v35 >> 6));
        v103 = *(v71 - 7) + v102 + v90 + (v100 & v96 | v93 & ~v100) + (__ROR8__(v100, 14) ^ __ROR8__(v100, 18) ^ __ROR8__(v100, 41));
        v104 = v103 + v91;
        v105 = (__ROR8__(v101, 28) ^ __ROR8__(v101, 34) ^ __ROR8__(v101, 39)) + (v101 & (v97 ^ v94) ^ v97 & v94) + v103;
        v106 = (__ROR8__(v48, 1) ^ __ROR8__(v48, 8) ^ (v48 >> 7)) + v135 + v80 + (__ROR8__(v98, 19) ^ __ROR8__(v98, 61) ^ (v98 >> 6));
        v107 = *(v71 - 6) + v106 + v93 + (v104 & v100 | v96 & ~v104) + (__ROR8__(v103 + v91, 14) ^ __ROR8__(v103 + v91, 18) ^ __ROR8__(v103 + v91, 41));
        v108 = v107 + v94;
        v109 = (__ROR8__(v105, 28) ^ __ROR8__(v105, 34) ^ __ROR8__(v105, 39)) + (v105 & (v101 ^ v97) ^ v101 & v97) + v107;
        v48 += (__ROR8__(v52, 1) ^ __ROR8__(v52, 8) ^ (v52 >> 7)) + v139 + (__ROR8__(v102, 19) ^ __ROR8__(v102, 61) ^ (v102 >> 6));
        v110 = &v96[*(v71 - 5) + v48 + (v108 & v104 | v100 & ~v108) + (__ROR8__(v108, 14) ^ __ROR8__(v108, 18) ^ __ROR8__(v108, 41))];
        v111 = v110 + v97;
        v112 = (__ROR8__(v109, 28) ^ __ROR8__(v109, 34) ^ __ROR8__(v109, 39)) + (v109 & (v105 ^ v101) ^ v105 & v101) + v110;
        v135 = v106;
        v52 += (__ROR8__(v56, 1) ^ __ROR8__(v56, 8) ^ (v56 >> 7)) + v27 + (__ROR8__(v106, 19) ^ __ROR8__(v106, 61) ^ (v106 >> 6));
        v113 = *(v71 - 4) + v52 + v100 + (v111 & v108 | v104 & ~v111) + (__ROR8__(v111, 14) ^ __ROR8__(v111, 18) ^ __ROR8__(v111, 41));
        v114 = v113 + v101;
        v115 = (__ROR8__(v112, 28) ^ __ROR8__(v112, 34) ^ __ROR8__(v112, 39)) + (v112 & (v109 ^ v105) ^ v109 & v105) + v113;
        v56 += (__ROR8__(v60, 1) ^ __ROR8__(v60, 8) ^ (v60 >> 7)) + v31 + (__ROR8__(v48, 19) ^ __ROR8__(v48, 61) ^ (v48 >> 6));
        v116 = *(v71 - 3) + v56 + v104 + (v114 & v111 | v108 & ~v114) + (__ROR8__(v113 + v101, 14) ^ __ROR8__(v113 + v101, 18) ^ __ROR8__(v114, 41));
        v58 = v116 + v105;
        v59 = (__ROR8__(v115, 28) ^ __ROR8__(v115, 34) ^ __ROR8__(v115, 39)) + (v115 & (v112 ^ v109) ^ v112 & v109) + v116;
        v60 += (__ROR8__(v64, 1) ^ __ROR8__(v64, 8) ^ (v64 >> 7)) + v35 + (__ROR8__(v52, 19) ^ __ROR8__(v52, 61) ^ (v52 >> 6));
        v117 = *(v71 - 2) + v60 + v108 + (v58 & v114 | v111 & ~v58) + (__ROR8__(v116 + v105, 14) ^ __ROR8__(v116 + v105, 18) ^ __ROR8__(v116 + v105, 41));
        v62 = v117 + v109;
        v63 = (__ROR8__(v59, 28) ^ __ROR8__(v59, 34) ^ __ROR8__(v59, 39)) + (v59 & (v115 ^ v112) ^ v115 & v112) + v117;
        v137 = v98;
        v118 = (__ROR8__(v67, 1) ^ __ROR8__(v67, 8) ^ (v67 >> 7)) + v64 + v98;
        v19 = v80;
        v64 = v118 + (__ROR8__(v56, 19) ^ __ROR8__(v56, 61) ^ (v56 >> 6));
        v119 = *(v71 - 1) + v64 + v111 + (v62 & v58 | v114 & ~v62) + (__ROR8__(v62, 14) ^ __ROR8__(v62, 18) ^ __ROR8__(v62, 41));
        result = v119 + v112;
        v66 = (__ROR8__(v63, 28) ^ __ROR8__(v63, 34) ^ __ROR8__(v63, 39)) + (v63 & (v59 ^ v115) ^ v59 & v115) + v119;
        v138 = v72;
        v136 = v102;
        v120 = (__ROR8__(v72, 1) ^ __ROR8__(v72, 8) ^ (v72 >> 7)) + v67 + v102;
        v23 = v139;
        v67 = v120 + (__ROR8__(v60, 19) ^ __ROR8__(v60, 61) ^ (v60 >> 6));
        v121 = *v71 + v67 + v114 + (result & v62 | v58 & ~result) + (__ROR8__(result, 14) ^ __ROR8__(result, 18) ^ __ROR8__(result, 41));
        v69 = v121 + v115;
        v70 = (__ROR8__(v66, 28) ^ __ROR8__(v66, 34) ^ __ROR8__(v66, 39)) + (v66 & (v63 ^ v59) ^ v63 & v59) + v121;
        v15 = v133;
        v11 = v134 + 16;
        v71 += 16;
      }

      while ((v134 + 16) < 0x40);
      v4 = v70 + v130;
      v3 = v66 + v129;
      *v122 = v70 + v130;
      v122[1] = v66 + v129;
      v6 = v63 + v128;
      v5 = v59 + v127;
      v122[2] = v63 + v128;
      v122[3] = v59 + v127;
      v8 = v69 + v126;
      v7 = result + v125;
      v122[4] = v69 + v126;
      v122[5] = result + v125;
      v10 = v62 + v124;
      v9 = v58 + v123;
      a2 = v131 + 16;
      v122[6] = v62 + v124;
      v122[7] = v58 + v123;
      a3 = v132 - 1;
    }

    while (v132 != 1);
  }

  return result;
}

unsigned __int8 *__cdecl SHA512(const unsigned __int8 *d, size_t n, unsigned __int8 *md)
{
  memset(&v5.u.p[64], 0, 72);
  if (md)
  {
    v3 = md;
  }

  else
  {
    v3 = &SHA512_m;
  }

  *v5.h = xmmword_23E23D670;
  *&v5.h[2] = xmmword_23E23D680;
  *&v5.h[4] = xmmword_23E23D690;
  *&v5.h[6] = xmmword_23E23D6A0;
  memset(&v5.Nl, 0, 80);
  v5.md_len = 64;
  SHA512_Update(&v5, d, n);
  SHA512_Final(v3, &v5);
  explicit_bzero(&v5, 0xD8uLL);
}

uint64_t SHA512_224_Init(uint64_t a1)
{
  *(a1 + 208) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *a1 = xmmword_23E23D6B0;
  *(a1 + 16) = xmmword_23E23D6C0;
  *(a1 + 32) = xmmword_23E23D6D0;
  *(a1 + 48) = xmmword_23E23D6E0;
  *(a1 + 64) = 0u;
  *(a1 + 212) = 28;
  return 1;
}

uint64_t SHA512_256_Init(uint64_t a1)
{
  *(a1 + 208) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *a1 = xmmword_23E23D6F0;
  *(a1 + 16) = xmmword_23E23D700;
  *(a1 + 32) = xmmword_23E23D710;
  *(a1 + 48) = xmmword_23E23D720;
  *(a1 + 64) = 0u;
  *(a1 + 212) = 32;
  return 1;
}

void BF_encrypt(unsigned int *data, const BF_KEY *key)
{
  v2 = key->P[0] ^ *data;
  v3 = key->P[1] ^ data[1] ^ (((key->S[BYTE2(v2) | 0x100] + key->S[HIBYTE(v2)]) ^ key->S[BYTE1(v2) | 0x200]) + key->S[(LOBYTE(key->P[0]) ^ *data) | 0x300]);
  v4 = key->P[2] ^ v2 ^ (((key->S[BYTE2(v3) | 0x100] + key->S[HIBYTE(v3)]) ^ key->S[BYTE1(v3) | 0x200]) + key->S[(LOBYTE(key->P[1]) ^ *(data + 4) ^ (((LOBYTE(key->S[BYTE2(v2) | 0x100]) + LOBYTE(key->S[HIBYTE(v2)])) ^ LOBYTE(key->S[BYTE1(v2) | 0x200])) + LOBYTE(key->S[(LOBYTE(key->P[0]) ^ *data) | 0x300]))) | 0x300]);
  v5 = key->P[3] ^ v3 ^ (((key->S[BYTE2(v4) | 0x100] + key->S[HIBYTE(v4)]) ^ key->S[BYTE1(v4) | 0x200]) + key->S[v4 | 0x300]);
  v6 = key->P[4] ^ v4 ^ (((key->S[BYTE2(v5) | 0x100] + key->S[HIBYTE(v5)]) ^ key->S[BYTE1(v5) | 0x200]) + key->S[v5 | 0x300]);
  v7 = key->P[5] ^ v5 ^ (((key->S[BYTE2(v6) | 0x100] + key->S[HIBYTE(v6)]) ^ key->S[BYTE1(v6) | 0x200]) + key->S[v6 | 0x300]);
  v8 = key->P[6] ^ v6 ^ (((key->S[BYTE2(v7) | 0x100] + key->S[HIBYTE(v7)]) ^ key->S[BYTE1(v7) | 0x200]) + key->S[v7 | 0x300]);
  v9 = key->P[7] ^ v7 ^ (((key->S[BYTE2(v8) | 0x100] + key->S[HIBYTE(v8)]) ^ key->S[BYTE1(v8) | 0x200]) + key->S[v8 | 0x300]);
  v10 = key->P[8] ^ v8 ^ (((key->S[BYTE2(v9) | 0x100] + key->S[HIBYTE(v9)]) ^ key->S[BYTE1(v9) | 0x200]) + key->S[v9 | 0x300]);
  v11 = key->P[9] ^ v9 ^ (((key->S[BYTE2(v10) | 0x100] + key->S[HIBYTE(v10)]) ^ key->S[BYTE1(v10) | 0x200]) + key->S[v10 | 0x300]);
  v12 = key->P[10] ^ v10 ^ (((key->S[BYTE2(v11) | 0x100] + key->S[HIBYTE(v11)]) ^ key->S[BYTE1(v11) | 0x200]) + key->S[v11 | 0x300]);
  v13 = key->P[11] ^ v11 ^ (((key->S[BYTE2(v12) | 0x100] + key->S[HIBYTE(v12)]) ^ key->S[BYTE1(v12) | 0x200]) + key->S[v12 | 0x300]);
  v14 = key->P[12] ^ v12 ^ (((key->S[BYTE2(v13) | 0x100] + key->S[HIBYTE(v13)]) ^ key->S[BYTE1(v13) | 0x200]) + key->S[v13 | 0x300]);
  v15 = key->P[13] ^ v13 ^ (((key->S[BYTE2(v14) | 0x100] + key->S[HIBYTE(v14)]) ^ key->S[BYTE1(v14) | 0x200]) + key->S[v14 | 0x300]);
  v16 = key->P[14] ^ v14 ^ (((key->S[BYTE2(v15) | 0x100] + key->S[HIBYTE(v15)]) ^ key->S[BYTE1(v15) | 0x200]) + key->S[v15 | 0x300]);
  v17 = key->P[15] ^ v15 ^ (((key->S[BYTE2(v16) | 0x100] + key->S[HIBYTE(v16)]) ^ key->S[BYTE1(v16) | 0x200]) + key->S[v16 | 0x300]);
  v18 = key->P[16] ^ v16 ^ (((key->S[BYTE2(v17) | 0x100] + key->S[HIBYTE(v17)]) ^ key->S[BYTE1(v17) | 0x200]) + key->S[v17 | 0x300]);
  *data = key->P[17] ^ v17;
  data[1] = v18;
}

void BF_decrypt(unsigned int *data, const BF_KEY *key)
{
  v2 = key->P[17] ^ *data;
  v3 = key->P[16] ^ data[1] ^ (((key->S[BYTE2(v2) | 0x100] + key->S[HIBYTE(v2)]) ^ key->S[BYTE1(v2) | 0x200]) + key->S[(LOBYTE(key->P[17]) ^ *data) | 0x300]);
  v4 = key->P[15] ^ v2 ^ (((key->S[BYTE2(v3) | 0x100] + key->S[HIBYTE(v3)]) ^ key->S[BYTE1(v3) | 0x200]) + key->S[(LOBYTE(key->P[16]) ^ *(data + 4) ^ (((LOBYTE(key->S[BYTE2(v2) | 0x100]) + LOBYTE(key->S[HIBYTE(v2)])) ^ LOBYTE(key->S[BYTE1(v2) | 0x200])) + LOBYTE(key->S[(LOBYTE(key->P[17]) ^ *data) | 0x300]))) | 0x300]);
  v5 = key->P[14] ^ v3 ^ (((key->S[BYTE2(v4) | 0x100] + key->S[HIBYTE(v4)]) ^ key->S[BYTE1(v4) | 0x200]) + key->S[v4 | 0x300]);
  v6 = key->P[13] ^ v4 ^ (((key->S[BYTE2(v5) | 0x100] + key->S[HIBYTE(v5)]) ^ key->S[BYTE1(v5) | 0x200]) + key->S[v5 | 0x300]);
  v7 = key->P[12] ^ v5 ^ (((key->S[BYTE2(v6) | 0x100] + key->S[HIBYTE(v6)]) ^ key->S[BYTE1(v6) | 0x200]) + key->S[v6 | 0x300]);
  v8 = key->P[11] ^ v6 ^ (((key->S[BYTE2(v7) | 0x100] + key->S[HIBYTE(v7)]) ^ key->S[BYTE1(v7) | 0x200]) + key->S[v7 | 0x300]);
  v9 = key->P[10] ^ v7 ^ (((key->S[BYTE2(v8) | 0x100] + key->S[HIBYTE(v8)]) ^ key->S[BYTE1(v8) | 0x200]) + key->S[v8 | 0x300]);
  v10 = key->P[9] ^ v8 ^ (((key->S[BYTE2(v9) | 0x100] + key->S[HIBYTE(v9)]) ^ key->S[BYTE1(v9) | 0x200]) + key->S[v9 | 0x300]);
  v11 = key->P[8] ^ v9 ^ (((key->S[BYTE2(v10) | 0x100] + key->S[HIBYTE(v10)]) ^ key->S[BYTE1(v10) | 0x200]) + key->S[v10 | 0x300]);
  v12 = key->P[7] ^ v10 ^ (((key->S[BYTE2(v11) | 0x100] + key->S[HIBYTE(v11)]) ^ key->S[BYTE1(v11) | 0x200]) + key->S[v11 | 0x300]);
  v13 = key->P[6] ^ v11 ^ (((key->S[BYTE2(v12) | 0x100] + key->S[HIBYTE(v12)]) ^ key->S[BYTE1(v12) | 0x200]) + key->S[v12 | 0x300]);
  v14 = key->P[5] ^ v12 ^ (((key->S[BYTE2(v13) | 0x100] + key->S[HIBYTE(v13)]) ^ key->S[BYTE1(v13) | 0x200]) + key->S[v13 | 0x300]);
  v15 = key->P[4] ^ v13 ^ (((key->S[BYTE2(v14) | 0x100] + key->S[HIBYTE(v14)]) ^ key->S[BYTE1(v14) | 0x200]) + key->S[v14 | 0x300]);
  v16 = key->P[3] ^ v14 ^ (((key->S[BYTE2(v15) | 0x100] + key->S[HIBYTE(v15)]) ^ key->S[BYTE1(v15) | 0x200]) + key->S[v15 | 0x300]);
  v17 = key->P[2] ^ v15 ^ (((key->S[BYTE2(v16) | 0x100] + key->S[HIBYTE(v16)]) ^ key->S[BYTE1(v16) | 0x200]) + key->S[v16 | 0x300]);
  v18 = key->P[1] ^ v16 ^ (((key->S[BYTE2(v17) | 0x100] + key->S[HIBYTE(v17)]) ^ key->S[BYTE1(v17) | 0x200]) + key->S[v17 | 0x300]);
  *data = key->P[0] ^ v17;
  data[1] = v18;
}

void BF_cbc_encrypt(const unsigned __int8 *in, unsigned __int8 *out, uint64_t length, const BF_KEY *schedule, unsigned __int8 *ivec, int enc)
{
  v8 = length;
  v46 = *MEMORY[0x277D85DE8];
  v10 = bswap32(*ivec);
  v11 = bswap32(*(ivec + 1));
  if (!enc)
  {
    if (length >= 8)
    {
      do
      {
        v18 = out;
        v19 = v10;
        v20 = v11;
        v21 = v8;
        v8 -= 8;
        v10 = bswap32(*in);
        v22 = in + 8;
        v11 = bswap32(*(in + 1));
        v44 = v10;
        v45 = v11;
        BF_decrypt(&v44, schedule);
        v23 = v44 ^ v19;
        v24 = v45 ^ v20;
        *v18 = (v44 ^ v19) >> 24;
        v18[1] = BYTE2(v23);
        v18[2] = BYTE1(v23);
        v18[3] = v23;
        v18[4] = HIBYTE(v24);
        v18[5] = BYTE2(v24);
        v18[6] = BYTE1(v24);
        out = v18 + 8;
        v18[7] = v24;
        in = v22;
      }

      while (v21 > 0xF);
      in = v22;
    }

    if (v8)
    {
      v25 = bswap32(*in);
      v26 = bswap32(*(in + 1));
      v44 = v25;
      v45 = v26;
      BF_decrypt(&v44, schedule);
      v27 = v44 ^ v10;
      v28 = &out[v8];
      if (v8 <= 3)
      {
        if (v8 == 1)
        {
LABEL_47:
          *(v28 - 1) = HIBYTE(v27);
          goto LABEL_48;
        }

        if (v8 == 2)
        {
LABEL_46:
          *--v28 = BYTE2(v27);
          goto LABEL_47;
        }

        if (v8 != 3)
        {
          goto LABEL_48;
        }

LABEL_45:
        *--v28 = BYTE1(v27);
        goto LABEL_46;
      }

      v29 = v45 ^ v11;
      if (v8 <= 5)
      {
        if (v8 == 4)
        {
LABEL_44:
          *--v28 = v27;
          goto LABEL_45;
        }

LABEL_43:
        *--v28 = HIBYTE(v29);
        goto LABEL_44;
      }

      if (v8 == 6)
      {
LABEL_42:
        *--v28 = BYTE2(v29);
        goto LABEL_43;
      }

      if (v8 == 7)
      {
        *--v28 = BYTE1(v29);
        goto LABEL_42;
      }
    }

    else
    {
      v25 = v10;
      v26 = v11;
    }

LABEL_48:
    *ivec = HIBYTE(v25);
    ivec[1] = BYTE2(v25);
    ivec[2] = BYTE1(v25);
    ivec[3] = v25;
    ivec[4] = HIBYTE(v26);
    ivec[5] = BYTE2(v26);
    ivec[6] = BYTE1(v26);
    goto LABEL_49;
  }

  if (length >= 8)
  {
    do
    {
      v12 = out;
      v13 = v8;
      v8 -= 8;
      v14 = in + 8;
      v15 = bswap32(*(in + 1));
      v44 = bswap32(*in) ^ v10;
      v45 = v15 ^ v11;
      BF_encrypt(&v44, schedule);
      v10 = v44;
      v11 = v45;
      *out = HIBYTE(v44);
      out[1] = BYTE2(v10);
      out[2] = BYTE1(v10);
      out[3] = v10;
      out[4] = HIBYTE(v11);
      out[5] = BYTE2(v11);
      out[6] = BYTE1(v11);
      out += 8;
      v12[7] = v11;
      in = v14;
    }

    while (v13 > 0xF);
    in = v14;
  }

  if (v8)
  {
    v16 = 0;
    v17 = &in[v8];
    if (v8 <= 3)
    {
      v36 = 0;
      if (v8 == 1)
      {
LABEL_32:
        v16 |= *(v17 - 1) << 24;
        goto LABEL_33;
      }

      if (v8 == 2)
      {
LABEL_31:
        v42 = *--v17;
        v16 |= v42 << 16;
        goto LABEL_32;
      }

      if (v8 != 3)
      {
        goto LABEL_33;
      }

LABEL_30:
      v41 = *--v17;
      v16 |= v41 << 8;
      goto LABEL_31;
    }

    if (v8 > 5)
    {
      if (v8 != 6)
      {
        v36 = 0;
        if (v8 != 7)
        {
LABEL_33:
          v44 = v16 ^ v10;
          v45 = v36 ^ v11;
          BF_encrypt(&v44, schedule);
          v10 = v44;
          v26 = v45;
          v30 = HIBYTE(v44);
          *out = HIBYTE(v44);
          v31 = HIWORD(v10);
          out[1] = BYTE2(v10);
          v32 = v10 >> 8;
          out[2] = BYTE1(v10);
          out[3] = v10;
          v33 = HIBYTE(v26);
          out[4] = HIBYTE(v26);
          v34 = HIWORD(v26);
          out[5] = BYTE2(v26);
          v35 = v26 >> 8;
          out[6] = BYTE1(v26);
          out[7] = v26;
          goto LABEL_34;
        }

        v37 = *--v17;
        v16 = v37 << 8;
      }

      v38 = *--v17;
      v16 |= v38 << 16;
    }

    else if (v8 == 4)
    {
LABEL_29:
      v36 = v16;
      v40 = *--v17;
      v16 = v40;
      goto LABEL_30;
    }

    v39 = *--v17;
    v16 |= v39 << 24;
    goto LABEL_29;
  }

  v30 = HIBYTE(v10);
  v31 = HIWORD(v10);
  v32 = v10 >> 8;
  v33 = HIBYTE(v11);
  v34 = HIWORD(v11);
  LOBYTE(v26) = v11;
  v35 = v11 >> 8;
LABEL_34:
  *ivec = v30;
  ivec[1] = v31;
  ivec[2] = v32;
  ivec[3] = v10;
  ivec[4] = v33;
  ivec[5] = v34;
  ivec[6] = v35;
LABEL_49:
  ivec[7] = v26;
  v43 = *MEMORY[0x277D85DE8];
}

BOOL ossl_ecdsa_sign(int a1, unsigned __int8 *dgst, int dgstlen, unsigned __int8 *a4, int *a5, BIGNUM *kinv, BIGNUM *rp, EC_KEY *eckey)
{
  pp = a4;
  v9 = ECDSA_do_sign_ex(dgst, dgstlen, kinv, rp, eckey);
  v10 = v9;
  if (v9)
  {
    v11 = i2d_ECDSA_SIG(v9, &pp);
    v12 = v11 & ~(v11 >> 31);
    v13 = v11 >= 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  *a5 = v12;
  ECDSA_SIG_free(v10);
  return v13;
}

void *ossl_ecdsa_sign_setup(EC_KEY *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = ecdsa_check(a1);
  if (result)
  {
    v9 = *(result[3] + 16);

    return v9(a1, a2, a3, a4);
  }

  return result;
}

void *ossl_ecdsa_sign_sig(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, EC_KEY *a5)
{
  result = ecdsa_check(a5);
  if (result)
  {
    v11 = *(result[3] + 8);

    return v11(a1, a2, a3, a4, a5);
  }

  return result;
}

uint64_t ossl_ecdsa_verify(uint64_t a1, const unsigned __int8 *a2, int a3, unsigned __int8 *a4, int a5, EC_KEY *a6)
{
  pp = a4;
  v16 = 0;
  v = ECDSA_SIG_new();
  if (v)
  {
    if (d2i_ECDSA_SIG(&v, &pp, a5))
    {
      v11 = i2d_ECDSA_SIG(v, &v16);
      v12 = v16;
      if (v11 != a5)
      {
        v13 = 0xFFFFFFFFLL;
        a5 = v11;
        goto LABEL_10;
      }

      if (!memcmp(a4, v16, a5))
      {
        v13 = ECDSA_do_verify(a2, a3, v, a6);
        v12 = v16;
LABEL_10:
        freezero(v12, a5);
        ECDSA_SIG_free(v);
        return v13;
      }
    }

    else
    {
      v12 = 0;
      a5 = -1;
    }

    v13 = 0xFFFFFFFFLL;
    goto LABEL_10;
  }

  return 0xFFFFFFFFLL;
}

void *ossl_ecdsa_verify_sig(uint64_t a1, uint64_t a2, uint64_t a3, EC_KEY *a4)
{
  result = ecdsa_check(a4);
  if (result)
  {
    v9 = *(result[3] + 24);

    return v9(a1, a2, a3, a4);
  }

  return result;
}

int ECDSA_sign_setup(EC_KEY *eckey, BN_CTX *ctx, BIGNUM **kinv, BIGNUM **rp)
{
  v5 = *(*eckey + 88);
  if (v5)
  {

    return v5();
  }

  else
  {
    ERR_put_error(42, 4095, 144, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ecdsa/ecs_ossl.c", 616);
    return 0;
  }
}

ECDSA_SIG *ecdsa_do_sign(const unsigned __int8 *a1, int a2, BIGNUM *a3, const BIGNUM *a4, EC_KEY *a5)
{
  kinv = 0;
  v10 = ecdsa_check(a5);
  v11 = EC_KEY_get0_group(a5);
  v12 = EC_KEY_get0_private_key(a5);
  if (!v11 || (v13 = v12) == 0 || !v10)
  {
    ERR_put_error(42, 4095, 67, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ecdsa/ecs_ossl.c", 301);
    return 0;
  }

  v14 = ECDSA_SIG_new();
  v15 = v14;
  if (!v14)
  {
    ERR_put_error(42, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ecdsa/ecs_ossl.c", 306);
    return v15;
  }

  s = v14->s;
  v17 = BN_CTX_new();
  if (!v17)
  {
    v27 = 0;
    v31 = 0;
    v32 = 0;
    v22 = 0;
    v18 = 0;
    goto LABEL_44;
  }

  v45 = s;
  v18 = BN_new();
  if (!v18 || (r = BN_new()) == 0)
  {
    v27 = 0;
    v31 = 0;
    v32 = 0;
    v22 = 0;
LABEL_44:
    v26 = 0;
LABEL_45:
    ERR_put_error(42, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ecdsa/ecs_ossl.c", 315);
    v33 = 0;
    goto LABEL_46;
  }

  rnd = BN_new();
  if (!rnd)
  {
    v27 = 0;
    v31 = 0;
    v32 = 0;
    v22 = 0;
    v26 = r;
    goto LABEL_45;
  }

  v43 = BN_new();
  if (!v43)
  {
    v31 = 0;
    v32 = 0;
    v22 = 0;
    v26 = r;
    v27 = rnd;
    goto LABEL_45;
  }

  v42 = BN_new();
  if (!v42)
  {
    v32 = 0;
    v22 = 0;
    v26 = r;
    v31 = v43;
    v27 = rnd;
    goto LABEL_45;
  }

  v41 = BN_new();
  if (!v41)
  {
    v22 = 0;
    v26 = r;
    v31 = v43;
    v27 = rnd;
    v32 = v42;
    goto LABEL_45;
  }

  b = BN_new();
  if (!b)
  {
    v26 = r;
    v31 = v43;
    v27 = rnd;
    v22 = v41;
    v32 = v42;
    goto LABEL_45;
  }

  if (!EC_GROUP_get_order(v11, v18, v17))
  {
    ERR_put_error(42, 4095, 16, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ecdsa/ecs_ossl.c", 320);
LABEL_55:
    v26 = r;
    v31 = v43;
    v27 = rnd;
    v32 = v42;
LABEL_56:
    v22 = v41;
    goto LABEL_75;
  }

  if (!ecdsa_prepare_digest(a1, a2, v18, b))
  {
    goto LABEL_55;
  }

  if (a4)
  {
    v19 = a3 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (a4)
  {
    v20 = a3 != 0;
  }

  else
  {
    v20 = 0;
  }

  v36 = v19;
  v37 = v20;
  v21 = 33;
  v22 = v41;
  while (!v19)
  {
    v24 = bn_copy(v15->r, a4);
    v23 = a3;
    if (!v24)
    {
      v29 = 65;
      v30 = 337;
      goto LABEL_72;
    }

LABEL_26:
    v39 = v23;
    v38 = v21;
    v25 = BN_value_one();
    v26 = r;
    if (!BN_sub(r, v18, v25))
    {
      ERR_put_error(42, 4095, 3, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ecdsa/ecs_ossl.c", 357);
      goto LABEL_73;
    }

    v27 = rnd;
    if (!BN_rand_range(rnd, r))
    {
      v35 = 361;
LABEL_61:
      ERR_put_error(42, 4095, 3, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ecdsa/ecs_ossl.c", v35);
      v26 = r;
      goto LABEL_74;
    }

    v28 = BN_value_one();
    if (!BN_add(rnd, rnd, v28))
    {
      v35 = 365;
      goto LABEL_61;
    }

    if (!BN_mod_inverse_ct(v43, rnd, v18, v17))
    {
      v35 = 370;
      goto LABEL_61;
    }

    if (!BN_mod_mul(v22, rnd, v13, v18, v17))
    {
      v29 = 3;
      v30 = 375;
      goto LABEL_72;
    }

    if (!BN_mod_mul(v22, v22, v15->r, v18, v17))
    {
      v29 = 3;
      v30 = 379;
      goto LABEL_72;
    }

    if (!BN_mod_mul(v42, rnd, b, v18, v17))
    {
      ERR_put_error(42, 4095, 3, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ecdsa/ecs_ossl.c", 383);
      v26 = r;
      v31 = v43;
      v27 = rnd;
      v32 = v42;
      goto LABEL_56;
    }

    v22 = v41;
    if (!BN_mod_add(v45, v42, v41, v18, v17))
    {
      v29 = 3;
      v30 = 387;
      goto LABEL_72;
    }

    if (!BN_mod_mul(v45, v45, v39, v18, v17))
    {
      v29 = 3;
      v30 = 391;
      goto LABEL_72;
    }

    if (!BN_mod_mul(v45, v45, v43, v18, v17))
    {
      v29 = 3;
      v30 = 395;
      goto LABEL_72;
    }

    if (!BN_is_zero(v45))
    {
      v26 = r;
      v31 = v43;
      v27 = rnd;
      v32 = v42;
      v33 = b;
      goto LABEL_47;
    }

    if (v37)
    {
      v29 = 106;
      v30 = 405;
      goto LABEL_72;
    }

    v21 = v38 - 1;
    v19 = v36;
    if (v38 == 1)
    {
      v29 = 145;
      v30 = 410;
      goto LABEL_72;
    }
  }

  if (ECDSA_sign_setup(a5, v17, &kinv, &v15->r))
  {
    v23 = kinv;
    goto LABEL_26;
  }

  v29 = 42;
  v30 = 330;
LABEL_72:
  ERR_put_error(42, 4095, v29, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ecdsa/ecs_ossl.c", v30);
  v26 = r;
LABEL_73:
  v27 = rnd;
LABEL_74:
  v32 = v42;
  v31 = v43;
LABEL_75:
  v33 = b;
LABEL_46:
  ECDSA_SIG_free(v15);
  v15 = 0;
LABEL_47:
  BN_CTX_free(v17);
  BN_free(v27);
  BN_free(v31);
  BN_free(v32);
  BN_free(v22);
  BN_free(kinv);
  BN_free(v33);
  BN_free(v18);
  BN_free(v26);
  return v15;
}

uint64_t ecdsa_sign_setup(const EC_KEY *a1, BN_CTX *a2, BIGNUM **a3, BIGNUM **a4)
{
  if (a1 && (v7 = EC_KEY_get0_group(a1)) != 0)
  {
    v8 = v7;
    v9 = a2;
    if (a2 || (v9 = BN_CTX_new()) != 0)
    {
      v10 = BN_new();
      if (v10)
      {
        v11 = BN_new();
        if (v11)
        {
          v12 = BN_new();
          if (v12)
          {
            v13 = BN_new();
            if (v13)
            {
              v14 = v13;
              v15 = EC_POINT_new(v8);
              if (v15)
              {
                if (EC_GROUP_get_order(v8, v12, v9))
                {
                  v16 = BN_value_one();
                  if (BN_cmp(v12, v16) <= 0)
                  {
                    v18 = 122;
                    v19 = 178;
                  }

                  else
                  {
                    v17 = BN_num_bits(v12);
                    if (v17 > 79)
                    {
                      n = v17;
                      if (!BN_set_bit(v10, v17) || !BN_set_bit(v11, n) || !BN_set_bit(v14, n))
                      {
LABEL_19:
                        BN_free(v10);
                        BN_free(v11);
                        v22 = 0;
                        if (a2)
                        {
LABEL_21:
                          BN_free(v12);
                          EC_POINT_free(v15);
                          BN_free(v14);
                          return v22;
                        }

LABEL_20:
                        BN_CTX_free(v9);
                        goto LABEL_21;
                      }

                      do
                      {
                        do
                        {
                          if (!BN_rand_range(v10, v12))
                          {
                            v18 = 104;
                            v19 = 198;
                            goto LABEL_27;
                          }
                        }

                        while (BN_is_zero(v10));
                        if (!BN_add(v11, v10, v12) || !BN_add(v14, v11, v12))
                        {
                          goto LABEL_19;
                        }

                        v24 = BN_num_bits(v11) <= n ? v14 : v11;
                        if (!bn_copy(v10, v24))
                        {
                          goto LABEL_19;
                        }

                        BN_set_flags(v10, 4);
                        if (!EC_POINT_mul(v8, v15, v10, 0, 0, v9))
                        {
                          v18 = 16;
                          v19 = 226;
                          goto LABEL_27;
                        }

                        if (!EC_POINT_get_affine_coordinates(v8, v15, v14, 0, v9))
                        {
                          v18 = 16;
                          v19 = 231;
                          goto LABEL_27;
                        }

                        if (!BN_nnmod(v11, v14, v12, v9))
                        {
                          v18 = 3;
                          v19 = 235;
                          goto LABEL_27;
                        }
                      }

                      while (BN_is_zero(v11));
                      if (BN_mod_inverse_ct(v10, v10, v12, v9))
                      {
                        BN_free(*a4);
                        BN_free(*a3);
                        *a4 = v11;
                        *a3 = v10;
                        v22 = 1;
                        if (a2)
                        {
                          goto LABEL_21;
                        }

                        goto LABEL_20;
                      }

                      v18 = 3;
                      v19 = 241;
                    }

                    else
                    {
                      v18 = 122;
                      v19 = 184;
                    }
                  }
                }

                else
                {
                  v18 = 16;
                  v19 = 173;
                }
              }

              else
              {
                v18 = 16;
                v19 = 169;
              }

LABEL_27:
              ERR_put_error(42, 4095, v18, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ecdsa/ecs_ossl.c", v19);
              goto LABEL_19;
            }
          }

LABEL_18:
          ERR_put_error(42, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ecdsa/ecs_ossl.c", 165);
          v14 = 0;
          v15 = 0;
          goto LABEL_19;
        }
      }

      else
      {
        v11 = 0;
      }

      v12 = 0;
      goto LABEL_18;
    }

    v20 = 65;
    v21 = 158;
  }

  else
  {
    v20 = 67;
    v21 = 152;
  }

  ERR_put_error(42, 4095, v20, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ecdsa/ecs_ossl.c", v21);
  return 0;
}

uint64_t ecdsa_do_verify(const unsigned __int8 *a1, int a2, uint64_t *a3, EC_KEY *a4)
{
  if (a4 && (v8 = EC_KEY_get0_group(a4)) != 0 && (v9 = v8, v10 = EC_KEY_get0_public_key(a4), a3) && (v11 = v10) != 0)
  {
    v12 = BN_CTX_new();
    if (v12)
    {
      v13 = v12;
      BN_CTX_start(v12);
      v14 = BN_CTX_get(v13);
      r = BN_CTX_get(v13);
      v15 = BN_CTX_get(v13);
      v16 = BN_CTX_get(v13);
      v17 = BN_CTX_get(v13);
      if (v17)
      {
        v18 = v17;
        if (EC_GROUP_get_order(v9, v14, v13))
        {
          if (BN_is_zero(*a3) || BN_is_negative(*a3) || (BN_ucmp(*a3, v14) & 0x80000000) == 0 || BN_is_zero(a3[1]) || BN_is_negative(a3[1]) || (BN_ucmp(a3[1], v14) & 0x80000000) == 0)
          {
            ERR_put_error(42, 4095, 100, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ecdsa/ecs_ossl.c", 517);
            v19 = 0;
            v20 = 0;
LABEL_24:
            BN_CTX_end(v13);
            BN_CTX_free(v13);
            EC_POINT_free(v19);
            return v20;
          }

          if (!ecdsa_prepare_digest(a1, a2, v14, v16))
          {
            goto LABEL_22;
          }

          if (BN_mod_inverse_ct(v15, a3[1], v14, v13))
          {
            if (BN_mod_mul(r, v16, v15, v14, v13))
            {
              if (BN_mod_mul(v15, *a3, v15, v14, v13))
              {
                v19 = EC_POINT_new(v9);
                if (v19)
                {
                  if (EC_POINT_mul(v9, v19, r, v11, v15, v13))
                  {
                    if (EC_POINT_get_affine_coordinates(v9, v19, v18, 0, v13))
                    {
                      if (BN_nnmod(r, v18, v14, v13))
                      {
                        v20 = BN_ucmp(r, *a3) == 0;
                        goto LABEL_24;
                      }

                      v26 = 3;
                      v27 = 552;
                    }

                    else
                    {
                      v26 = 16;
                      v27 = 548;
                    }
                  }

                  else
                  {
                    v26 = 16;
                    v27 = 544;
                  }
                }

                else
                {
                  v26 = 65;
                  v27 = 540;
                }

                ERR_put_error(42, 4095, v26, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ecdsa/ecs_ossl.c", v27);
                goto LABEL_23;
              }

              v24 = 3;
              v25 = 534;
            }

            else
            {
              v24 = 3;
              v25 = 530;
            }
          }

          else
          {
            v24 = 3;
            v25 = 526;
          }
        }

        else
        {
          v24 = 16;
          v25 = 508;
        }
      }

      else
      {
        v24 = 3;
        v25 = 503;
      }

      ERR_put_error(42, 4095, v24, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ecdsa/ecs_ossl.c", v25);
LABEL_22:
      v19 = 0;
LABEL_23:
      v20 = 0xFFFFFFFFLL;
      goto LABEL_24;
    }

    v21 = 65;
    v22 = 493;
  }

  else
  {
    v21 = 103;
    v22 = 488;
  }

  ERR_put_error(42, 4095, v21, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ecdsa/ecs_ossl.c", v22);
  return 0xFFFFFFFFLL;
}

uint64_t ecdsa_prepare_digest(const unsigned __int8 *a1, int a2, const BIGNUM *a3, BIGNUM *ret)
{
  if (BN_bin2bn(a1, a2, ret))
  {
    v7 = 8 * a2;
    v8 = BN_num_bits(a3);
    if (v7 <= v8 || BN_rshift(ret, ret, v7 - v8))
    {
      return 1;
    }

    v10 = 110;
  }

  else
  {
    v10 = 101;
  }

  ERR_put_error(42, 4095, 3, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ecdsa/ecs_ossl.c", v10);
  return 0;
}

BOOL ecx_pub_decode(uint64_t a1, uint64_t a2)
{
  algor = 0;
  pptype = 0;
  v11 = 0;
  v10 = 0;
  if (!X509_PUBKEY_get0_param(0, &v11, &v10, &algor, a2))
  {
    goto LABEL_14;
  }

  if (algor)
  {
    X509_ALGOR_get0(0, &pptype, 0, algor);
    if (pptype != -1)
    {
      v3 = 215;
LABEL_13:
      ERR_put_error(16, 4095, 102, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ecx_methods.c", v3);
LABEL_14:
      v6 = 0;
LABEL_15:
      v8 = 0;
      goto LABEL_16;
    }
  }

  if (!v11 || (v4 = **(a1 + 16), v10 != 32 * (((v4 - 950) & 0xFFFFFFFD) == 0)))
  {
    v3 = 221;
    goto LABEL_13;
  }

  v5 = ecx_key_new(v4);
  v6 = v5;
  if (!v5 || !ecx_key_set_pub(v5, v11, v10))
  {
    goto LABEL_15;
  }

  v7 = EVP_PKEY_assign(a1, **(a1 + 16), v6);
  v8 = v7 != 0;
  if (v7)
  {
    v6 = 0;
  }

LABEL_16:
  ecx_key_free(v6);
  return v8;
}

uint64_t ecx_pub_encode(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v11 = 0;
  v12 = 0;
  memset(v10, 0, sizeof(v10));
  if (!v2)
  {
    ERR_put_error(16, 4095, 165, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ecx_methods.c", 252);
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  if (*(v2 + 32) != *(v2 + 4))
  {
    goto LABEL_8;
  }

  v4 = OBJ_nid2obj(**(a2 + 16));
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  CBS_init(v10, *(v2 + 24), *(v2 + 32));
  v6 = CBS_stow(v10, &v12, &v11);
  v7 = v12;
  if (!v6)
  {
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if (X509_PUBKEY_set0_param(a1, v5, -1, 0, v12, v11))
  {
    v7 = 0;
    v11 = 0;
    v12 = 0;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    v7 = v12;
  }

LABEL_10:
  free(v7);
  return v8;
}

uint64_t ecx_pub_cmp(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 && (v3 = *(v2 + 24)) != 0 && (v4 = *(a2 + 32)) != 0 && (v5 = *(v4 + 24)) != 0 && (v6 = *(v2 + 32), v6 == *(v4 + 32)))
  {
    return timingsafe_memcmp(v3, v5, v6) == 0;
  }

  else
  {
    return 4294967294;
  }
}

const char *ecx_pub_print(BIO *a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 32);
  result = OBJ_nid2ln(**(a2 + 16));
  if (result)
  {
    if (v5 && *(v5 + 24))
    {
      if (BIO_printf(a1, "%*s%s Public-Key:\n", a3, "", result) < 1 || BIO_printf(a1, "%*spub:\n", a3, "") < 1)
      {
        return 0;
      }

      else
      {
        return (ASN1_buf_print(a1, *(v5 + 24), *(v5 + 32), a3 + 4) != 0);
      }
    }

    else
    {
      return (BIO_printf(a1, "%*s<INVALID PUBLIC KEY>\n", a3, "") > 0);
    }
  }

  return result;
}

BOOL ecx_priv_decode(uint64_t a1, uint64_t a2)
{
  algor = 0;
  pptype = 0;
  len_4 = 0;
  len = 0;
  if (!PKCS8_pkey_get0(0, &len_4, &len, &algor, a2))
  {
    v5 = 0;
    v3 = 0;
LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  v3 = d2i_ASN1_OCTET_STRING(0, &len_4, len);
  if (!v3)
  {
    goto LABEL_15;
  }

  if (algor)
  {
    X509_ALGOR_get0(0, &pptype, 0, algor);
    if (pptype != -1)
    {
      v4 = 339;
LABEL_14:
      ERR_put_error(16, 4095, 102, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ecx_methods.c", v4);
      goto LABEL_15;
    }
  }

  if (!ASN1_STRING_get0_data(v3) || (v6 = ASN1_STRING_length(v3), v7 = **(a1 + 16), v6 != 32 * (((v7 - 950) & 0xFFFFFFFD) == 0)))
  {
    v4 = 346;
    goto LABEL_14;
  }

  v8 = ecx_key_new(v7);
  if (!v8)
  {
LABEL_15:
    v5 = 0;
    goto LABEL_16;
  }

  v9 = v8;
  v10 = ASN1_STRING_get0_data(v3);
  v11 = ASN1_STRING_length(v3);
  ecx_key_set_priv(v9, v10, v11);
  v12 = EVP_PKEY_assign(a1, **(a1 + 16), v9);
  v13 = v12 != 0;
  if (v12)
  {
    v5 = 0;
  }

  else
  {
    v5 = v9;
  }

LABEL_17:
  ASN1_OCTET_STRING_free(v3);
  ecx_key_free(v5);
  return v13;
}

uint64_t ecx_priv_encode(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  out = 0;
  if (!v2 || !*(v2 + 8))
  {
    ERR_put_error(16, 4095, 123, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ecx_methods.c", 379);
    goto LABEL_10;
  }

  v4 = OBJ_nid2obj(**(a2 + 16));
  if (!v4)
  {
LABEL_10:
    v9 = 0;
    v7 = 0;
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  v5 = v4;
  v6 = ASN1_OCTET_STRING_new();
  v7 = v6;
  if (!v6 || !ASN1_OCTET_STRING_set(v6, *(v2 + 8), *(v2 + 16)))
  {
    v9 = 0;
    goto LABEL_11;
  }

  v8 = i2d_ASN1_OCTET_STRING(v7, &out);
  v9 = out;
  if (v8 < 0)
  {
LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  if (PKCS8_pkey_set0(a1, v5, 0, -1, 0, out, v8))
  {
    v9 = 0;
    v8 = 0;
    out = 0;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v9 = out;
  }

LABEL_13:
  freezero(v9, v8);
  ASN1_OCTET_STRING_free(v7);
  return v10;
}

const char *ecx_priv_print(BIO *a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 32);
  result = OBJ_nid2ln(**(a2 + 16));
  if (result)
  {
    if (v5 && v5[1])
    {
      if (BIO_printf(a1, "%*s%s Private-Key:\n", a3, "", result) < 1 || BIO_printf(a1, "%*spriv:\n", a3, "") < 1)
      {
        return 0;
      }

      result = ASN1_buf_print(a1, v5[1], v5[2], a3 + 4);
      if (!result)
      {
        return result;
      }

      if (BIO_printf(a1, "%*spub:\n", a3, "") < 1)
      {
        return 0;
      }

      else
      {
        return (ASN1_buf_print(a1, v5[3], v5[4], a3 + 4) != 0);
      }
    }

    else
    {
      return (BIO_printf(a1, "%*s<INVALID PRIVATE KEY>\n", a3, "") > 0);
    }
  }

  return result;
}

uint64_t ecx_bits(uint64_t a1)
{
  if (((**(a1 + 16) - 950) & 0xFFFFFFFD) != 0)
  {
    return 0;
  }

  else
  {
    return 253;
  }
}

BOOL ecx_set_priv_key(uint64_t a1, unsigned __int8 *a2, size_t a3)
{
  if (!a2 || (v5 = **(a1 + 16), a3 != 32 * (((v5 - 950) & 0xFFFFFFFD) == 0)))
  {
    ERR_put_error(16, 4095, 102, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ecx_methods.c", 518);
    v7 = 0;
    goto LABEL_8;
  }

  v7 = ecx_key_new(v5);
  if (!v7)
  {
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v8 = v7;
  ecx_key_set_priv(v7, a2, a3);
  v9 = EVP_PKEY_assign(a1, **(a1 + 16), v8);
  v10 = v9 != 0;
  if (v9)
  {
    v7 = 0;
  }

  else
  {
    v7 = v8;
  }

LABEL_9:
  ecx_key_free(v7);
  return v10;
}

BOOL ecx_set_pub_key(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || (v5 = **(a1 + 16), a3 != 32 * (((v5 - 950) & 0xFFFFFFFD) == 0)))
  {
    ERR_put_error(16, 4095, 102, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ecx_methods.c", 545);
    v8 = 0;
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v7 = ecx_key_new(v5);
  v8 = v7;
  if (!v7 || !ecx_key_set_pub(v7, a2, a3))
  {
    goto LABEL_9;
  }

  v9 = EVP_PKEY_assign(a1, **(a1 + 16), v8);
  v10 = v9 != 0;
  if (v9)
  {
    v8 = 0;
  }

LABEL_10:
  ecx_key_free(v8);
  return v10;
}

BOOL ecx_get_priv_key(uint64_t a1, void *a2, size_t *a3)
{
  v4 = *(a1 + 32);
  memset(v8, 0, sizeof(v8));
  if (a2)
  {
    if (v4 && (v6 = *(v4 + 8)) != 0)
    {
      CBS_init(v8, v6, *(v4 + 16));
      return CBS_write_bytes(v8, a2, *a3, a3) != 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *a3 = 32 * (((**(a1 + 16) - 950) & 0xFFFFFFFD) == 0);
    return 1;
  }
}

BOOL ecx_get_pub_key(uint64_t a1, void *a2, size_t *a3)
{
  v4 = *(a1 + 32);
  memset(v8, 0, sizeof(v8));
  if (a2)
  {
    if (v4 && (v6 = *(v4 + 24)) != 0)
    {
      CBS_init(v8, v6, *(v4 + 32));
      return CBS_write_bytes(v8, a2, *a3, a3) != 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *a3 = 32 * (((**(a1 + 16) - 950) & 0xFFFFFFFD) == 0);
    return 1;
  }
}

BOOL pkey_ecx_keygen(int **a1, EVP_PKEY *a2)
{
  v4 = ecx_key_new(**a1);
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  ecx_key_clear(v4);
  v6 = malloc_type_calloc(1uLL, v5[1], 0xE929D5DFuLL);
  if (!v6)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v7 = malloc_type_calloc(1uLL, v5[1], 0x4736CA9EuLL);
  if (!v7)
  {
LABEL_8:
    freezero(v6, v5[1]);
    freezero(v7, v5[1]);
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if (*v5 != 950)
  {
    if (*v5 == 952)
    {
      ED25519_keypair(v6, v7);
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  X25519_keypair(v6, v7);
LABEL_12:
  v10 = v5[1];
  *(v5 + 1) = v7;
  *(v5 + 2) = v10;
  *(v5 + 3) = v6;
  *(v5 + 4) = v10;
  freezero(0, v10);
  freezero(0, v5[1]);
  v11 = EVP_PKEY_assign(a2, **a1, v5);
  v8 = v11 != 0;
  if (v11)
  {
    v5 = 0;
  }

LABEL_10:
  ecx_key_free(v5);
  return v8;
}

BOOL pkey_ecx_derive(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  v3 = *(a1 + 16);
  if (!v3 || (v4 = *(a1 + 24)) == 0)
  {
    v10 = 140;
    v11 = 636;
LABEL_10:
    ERR_put_error(16, 4095, v10, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ecx_methods.c", v11);
    return 0;
  }

  v5 = *(v3 + 32);
  if (!v5)
  {
    v10 = 123;
    v11 = 641;
    goto LABEL_10;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    v10 = 123;
    v11 = 645;
    goto LABEL_10;
  }

  v7 = *(v4 + 32);
  if (!v7)
  {
    v10 = 152;
    v11 = 650;
    goto LABEL_10;
  }

  if (!a2 || (result = X25519(a2, v6, *(v7 + 24))))
  {
    *a3 = 32;
    return 1;
  }

  return result;
}

uint64_t pkey_ecx_ctrl(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    return 1;
  }

  else
  {
    return 4294967294;
  }
}

uint64_t ecx_sign_ctrl(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  if (a2 != 3)
  {
    return 4294967294;
  }

  *a4 = 0;
  return 2;
}

uint64_t ecx_item_verify(uint64_t a1, uint64_t a2, uint64_t a3, X509_ALGOR *a4, uint64_t a5, uint64_t a6)
{
  paobj = 0;
  pptype = 0;
  X509_ALGOR_get0(&paobj, &pptype, 0, a4);
  if (OBJ_obj2nid(paobj) == 952 && pptype == -1)
  {
    return 2 * (EVP_DigestVerifyInit(a1, 0, 0, 0, a6) != 0);
  }

  ERR_put_error(16, 4095, 102, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ecx_methods.c", 685);
  return 0;
}

ASN1_OBJECT *ecx_item_sign(uint64_t a1, uint64_t a2, uint64_t a3, X509_ALGOR *a4, X509_ALGOR *a5)
{
  result = OBJ_nid2obj(952);
  if (result)
  {
    v8 = result;
    result = X509_ALGOR_set0(a4, result, -1, 0);
    if (result)
    {
      if (!a5)
      {
        return 3;
      }

      result = X509_ALGOR_set0(a5, v8, -1, 0);
      if (result)
      {
        return 3;
      }
    }
  }

  return result;
}

uint64_t pkey_ecx_ed_ctrl(uint64_t a1, int a2, uint64_t a3, const EVP_MD *a4)
{
  if (a2 == 7)
  {
    return 1;
  }

  if (a2 != 1)
  {
    return 4294967294;
  }

  if (!a4 || EVP_md_null() == a4)
  {
    return 1;
  }

  ERR_put_error(16, 4095, 138, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ecx_methods.c", 774);
  return 0;
}

uint64_t pkey_ecx_digestsign(uint64_t a1, _BYTE *a2, void *a3, const void *a4, size_t a5)
{
  v9 = EVP_MD_CTX_pkey_ctx(a1);
  v10 = *(v9 + 16);
  if (!a2)
  {
    v13 = *(v10 + 16);
    goto LABEL_6;
  }

  v11 = v9;
  v12 = *(v10 + 32);
  if (**(v10 + 16) != 952 || *a3 > 0x3FuLL)
  {
    if (!v12)
    {
      return 0;
    }

    v15 = *(v12 + 8);
    if (!v15)
    {
      return 0;
    }

    v16 = *(v12 + 24);
    if (!v16)
    {
      return 0;
    }

    result = ED25519_sign(a2, a4, a5, v16, v15);
    if (!result)
    {
      return result;
    }

    v13 = *(*(v11 + 16) + 16);
LABEL_6:
    *a3 = (*v13 == 952) << 6;
    return 1;
  }

  ERR_put_error(16, 4095, 100, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ecx_methods.c", 731);
  return 0;
}

BOOL pkey_ecx_digestverify(uint64_t a1, unsigned __int8 *a2, uint64_t a3, const void *a4, size_t a5)
{
  v9 = *(EVP_MD_CTX_pkey_ctx(a1) + 16);
  v10 = *(v9 + 32);
  if (!v10)
  {
    return 0;
  }

  v11 = *(v10 + 24);
  if (!v11 || a3 != (**(v9 + 16) == 952) << 6)
  {
    return 0;
  }

  return ED25519_verify(a4, a5, a2, v11);
}

_DWORD *ecx_key_new(int a1)
{
  if (((a1 - 950) & 0xFFFFFFFD) != 0)
  {
    return 0;
  }

  result = malloc_type_calloc(1uLL, 0x28uLL, 0x101004019361378uLL);
  if (result)
  {
    *result = a1;
    result[1] = 32;
  }

  return result;
}

BOOL ecx_key_set_pub(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ecx_key_clear(a1);
  if (*(a1 + 4) != a3)
  {
    return 0;
  }

  memset(v7, 0, sizeof(v7));
  CBS_init(v7, a2, a3);
  return CBS_stow(v7, (a1 + 24), (a1 + 32)) != 0;
}

void *ecx_key_free(void *result)
{
  if (result)
  {
    v1 = result;
    ecx_key_clear(result);

    return freezero(v1, 0x28uLL);
  }

  return result;
}

void *ecx_key_clear(uint64_t a1)
{
  freezero(*(a1 + 8), *(a1 + 16));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = freezero(*(a1 + 24), *(a1 + 32));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

void *ecx_key_set_priv(uint64_t a1, unsigned __int8 *a2, size_t a3)
{
  memset(v10, 0, sizeof(v10));
  ecx_key_clear(a1);
  if (*(a1 + 4) != a3)
  {
    goto LABEL_9;
  }

  v6 = malloc_type_calloc(1uLL, a3, 0x50A36253uLL);
  v7 = v6;
  if (v6)
  {
    if (*a1 == 950)
    {
      X25519_public_from_private(v6, a2);
    }

    else
    {
      if (*a1 != 952)
      {
        return freezero(v7, *(a1 + 4));
      }

      ED25519_public_from_private(v6, a2);
    }

    CBS_init(v10, a2, a3);
    if (CBS_stow(v10, (a1 + 8), (a1 + 16)))
    {
      v8 = *(a1 + 4);
      *(a1 + 24) = v7;
      *(a1 + 32) = v8;
LABEL_9:
      v7 = 0;
    }
  }

  return freezero(v7, *(a1 + 4));
}

int X509V3_add_value(const char *name, const char *value, STACK **extlist)
{
  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x100402FEFCB83uLL);
  if (!v6 || name && (v7 = strdup(name), (v6->name = v7) == 0) || value && (v8 = strdup(value), (v6->value = v8) == 0))
  {
    v10 = 0;
    goto LABEL_9;
  }

  v9 = *extlist;
  if (*extlist)
  {
    v10 = 0;
  }

  else
  {
    v9 = sk_new_null();
    *extlist = v9;
    v10 = v9;
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  if (sk_push(v9, v6))
  {
    return 1;
  }

LABEL_9:
  ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_utl.c", 115);
  X509V3_conf_free(v6);
  if (!v10)
  {
    return 0;
  }

  sk_free(*extlist);
  result = 0;
  *extlist = 0;
  return result;
}

void X509V3_conf_free(CONF_VALUE *val)
{
  if (val)
  {
    free(val->name);
    free(val->value);
    free(val->section);

    free(val);
  }
}

int X509V3_add_value_BOOL(const char *name, int asn1_BOOL, STACK **extlist)
{
  if (asn1_BOOL)
  {
    v3 = "TRUE";
  }

  else
  {
    v3 = "FALSE";
  }

  return X509V3_add_value(name, v3, extlist);
}

int X509V3_add_value_BOOL_nf(char *name, int asn1_BOOL, STACK **extlist)
{
  if (asn1_BOOL)
  {
    return X509V3_add_value(name, "TRUE", extlist);
  }

  else
  {
    return 1;
  }
}

char *__cdecl i2s_ASN1_ENUMERATED(X509V3_EXT_METHOD *meth, ASN1_ENUMERATED *aint)
{
  if (!aint)
  {
    return 0;
  }

  v2 = ASN1_ENUMERATED_to_BN(aint, 0);
  v3 = v2;
  if (!v2 || (v4 = bn_to_string(v2)) == 0)
  {
    ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_utl.c", 204);
    v4 = 0;
  }

  BN_free(v3);
  return v4;
}

char *bn_to_string(const BIGNUM *a1)
{
  v8 = 0;
  if (BN_num_bits(a1) > 127)
  {
    v3 = BN_bn2hex(a1);
    if (v3)
    {
      is_negative = BN_is_negative(a1);
      v5 = "";
      if (is_negative)
      {
        v5 = "-";
        v6 = v3 + 1;
      }

      else
      {
        v6 = v3;
      }

      if (asprintf(&v8, "%s0x%s", v5, v6) == -1)
      {
        v7 = 0;
      }

      else
      {
        v7 = v8;
      }
    }

    else
    {
      v7 = 0;
    }

    free(v3);
    return v7;
  }

  else
  {

    return BN_bn2dec(a1);
  }
}

char *__cdecl i2s_ASN1_ENUMERATED_TABLE(X509V3_EXT_METHOD *meth, ASN1_ENUMERATED *aint)
{
  v4 = ASN1_ENUMERATED_get(aint);
  usr_data = meth->usr_data;
  v6 = *(usr_data + 1);
  if (v6)
  {
    if (v4 == *usr_data)
    {
LABEL_6:

      return strdup(v6);
    }

    v7 = (usr_data + 32);
    while (1)
    {
      v6 = *v7;
      if (!*v7)
      {
        break;
      }

      v8 = *(v7 - 2);
      v7 += 3;
      if (v4 == v8)
      {
        goto LABEL_6;
      }
    }
  }

  return i2s_ASN1_ENUMERATED(v4, aint);
}

char *__cdecl i2s_ASN1_INTEGER(X509V3_EXT_METHOD *meth, ASN1_INTEGER *aint)
{
  if (!aint)
  {
    return 0;
  }

  v2 = ASN1_INTEGER_to_BN(aint, 0);
  v3 = v2;
  if (!v2 || (v4 = bn_to_string(v2)) == 0)
  {
    ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_utl.c", 235);
    v4 = 0;
  }

  BN_free(v3);
  return v4;
}

ASN1_INTEGER *__cdecl s2i_ASN1_INTEGER(X509V3_EXT_METHOD *meth, char *value)
{
  v2 = value;
  if (!value)
  {
    v5 = 109;
    v6 = 250;
LABEL_10:
    ERR_put_error(34, 4095, v5, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_utl.c", v6);
    return v2;
  }

  a = BN_new();
  if (!a)
  {
    v7 = 65;
    v8 = 254;
    goto LABEL_15;
  }

  length_low = LOBYTE(v2->length);
  if (length_low == 45)
  {
    v2 = (v2 + 1);
  }

  if (LOBYTE(v2->length) == 48 && (BYTE1(v2->length) | 0x20) == 0x78)
  {
    v2 = (v2 + 2);
    v4 = BN_hex2bn(&a, v2);
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = BN_dec2bn(&a, v2);
    if (!v4)
    {
LABEL_13:
      BN_free(a);
      v7 = 100;
      v8 = 274;
LABEL_15:
      ERR_put_error(34, 4095, v7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_utl.c", v8);
      return 0;
    }
  }

  if (*(&v2->length + v4))
  {
    goto LABEL_13;
  }

  is_zero = BN_is_zero(a);
  v2 = BN_to_ASN1_INTEGER(a, 0);
  BN_free(a);
  if (!v2)
  {
    v5 = 101;
    v6 = 284;
    goto LABEL_10;
  }

  if (length_low == 45 && !is_zero)
  {
    v2->type |= 0x100u;
  }

  return v2;
}

int X509V3_add_value_int(const char *name, ASN1_INTEGER *aint, STACK **extlist)
{
  if (aint)
  {
    v5 = i2s_ASN1_INTEGER(name, aint);
    if (v5)
    {
      v6 = v5;
      v7 = X509V3_add_value(name, v5, extlist);
      free(v6);
      LODWORD(v5) = v7;
    }
  }

  else
  {
    LODWORD(v5) = 1;
  }

  return v5;
}

int X509V3_get_value_BOOL(CONF_VALUE *value, int *asn1_BOOL)
{
  v3 = value->value;
  if (!v3)
  {
    goto LABEL_21;
  }

  if (!strcmp(value->value, "TRUE") || !strcmp(v3, "true") || ((v5 = *v3, v5 == 121) || v5 == 89) && !v3[1] || !strcmp(v3, "YES") || !strcmp(v3, "yes"))
  {
    *asn1_BOOL = 255;
    return 1;
  }

  if (!strcmp(v3, "FALSE") || !strcmp(v3, "false"))
  {
    goto LABEL_22;
  }

  if (v5 == 110)
  {
    if (!v3[1])
    {
      goto LABEL_22;
    }

    if (v3[1] == 111)
    {
      goto LABEL_20;
    }
  }

  else if (v5 == 78)
  {
    if (v3[1])
    {
      if (v3[1] != 79)
      {
        goto LABEL_21;
      }

LABEL_20:
      if (v3[2])
      {
        goto LABEL_21;
      }
    }

LABEL_22:
    *asn1_BOOL = 0;
    return 1;
  }

LABEL_21:
  ERR_put_error(34, 4095, 104, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_utl.c", 330);
  ERR_asprintf_error_data("section:%s,name:%s,value:%s", value->section, value->name, value->value);
  return 0;
}

int X509V3_get_value_int(CONF_VALUE *value, ASN1_INTEGER **aint)
{
  v4 = s2i_ASN1_INTEGER(value, value->value);
  if (v4)
  {
    *aint = v4;
    return 1;
  }

  else
  {
    ERR_asprintf_error_data("section:%s,name:%s,value:%s", value->section, value->name, value->value);
    return 0;
  }
}

STACK *__cdecl X509V3_parse_list(const char *line)
{
  extlist = 0;
  v1 = strdup(line);
  v2 = v1;
  if (!v1)
  {
    v14 = 65;
    v15 = 366;
    goto LABEL_33;
  }

  v3 = 0;
  v4 = v1 + 1;
  v5 = v1;
  v6 = 1;
  while (1)
  {
    v7 = *(v4 - 1);
    if (v7 <= 0xD && ((1 << v7) & 0x2401) != 0)
    {
      break;
    }

    if (v6 != 1)
    {
      if (v7 == 44)
      {
        *(v4 - 1) = 0;
        v10 = strip_spaces(v1);
        if (!v10)
        {
          v14 = 109;
          v15 = 405;
          goto LABEL_33;
        }

        X509V3_add_value(v3, v10, &extlist);
        v3 = 0;
        v1 = v5 + 1;
LABEL_16:
        v6 = 1;
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    if (v7 != 44)
    {
      if (v7 != 58)
      {
        goto LABEL_16;
      }

      *(v4 - 1) = 0;
      v9 = strip_spaces(v1);
      if (!v9)
      {
        v14 = 108;
        v15 = 383;
        goto LABEL_33;
      }

      v3 = v9;
      v1 = v5 + 1;
LABEL_17:
      v6 = 2;
      goto LABEL_20;
    }

    *(v4 - 1) = 0;
    v11 = strip_spaces(v1);
    if (!v11)
    {
      v14 = 108;
      v15 = 392;
      goto LABEL_33;
    }

    v3 = v11;
    X509V3_add_value(v11, 0, &extlist);
    v6 = 1;
    v1 = v4;
LABEL_20:
    ++v5;
    ++v4;
  }

  v12 = strip_spaces(v1);
  v13 = v12;
  if (v6 == 2)
  {
    if (v12)
    {
      v12 = v3;
LABEL_27:
      X509V3_add_value(v12, v13, &extlist);
      free(v2);
      return extlist;
    }

    v14 = 109;
    v15 = 419;
  }

  else
  {
    if (v12)
    {
      v13 = 0;
      goto LABEL_27;
    }

    v14 = 108;
    v15 = 426;
  }

LABEL_33:
  ERR_put_error(34, 4095, v14, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_utl.c", v15);
  free(v2);
  sk_pop_free(extlist, X509V3_conf_free);
  return 0;
}

char *strip_spaces(char *__s)
{
  v1 = __s;
  v2 = *__s;
  if (!v2)
  {
    return 0;
  }

  v3 = MEMORY[0x277D85DE0];
  while ((v2 & 0x80) == 0)
  {
    if ((*(v3 + 4 * v2 + 60) & 0x4000) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v4 = *++v1;
    v2 = v4;
    if (!v4)
    {
      return 0;
    }
  }

  if (__maskrune(v2, 0x4000uLL))
  {
    goto LABEL_7;
  }

LABEL_9:
  if (!*v1)
  {
    return 0;
  }

  v5 = strlen(v1);
  while (1)
  {
    v6 = v5 - 1;
    if (v5 == 1)
    {
      break;
    }

    v7 = v1[v5 - 1];
    if (v7 < 0)
    {
      v8 = __maskrune(v1[v5 - 1], 0x4000uLL);
    }

    else
    {
      v8 = *(v3 + 4 * v7 + 60) & 0x4000;
    }

    v5 = v6;
    if (!v8)
    {
      v1[v6 + 1] = 0;
      break;
    }
  }

  if (*v1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

char *__cdecl hex_to_string(unsigned __int8 *buffer, uint64_t len)
{
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v4 = CBB_init(v10, 0);
  if ((len & 0x8000000000000000) == 0 && v4)
  {
    CBS_init(v9, buffer, len);
    if (CBS_len(v9))
    {
      while (CBS_get_u8(v9, &v7) && CBB_add_u8(v10, hex_digits_0[v7 >> 4]) && CBB_add_u8(v10, hex_digits_0[v7 & 0xF]) && (!CBS_len(v9) || CBB_add_u8(v10, 0x3AuLL)))
      {
        if (!CBS_len(v9))
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      if (CBB_add_u8(v10, 0))
      {
        CBB_finish(v10, &v8, &v6);
      }
    }
  }

  CBB_cleanup(v10);
  return v8;
}

unsigned __int8 *__cdecl string_to_hex(char *str, uint64_t *len)
{
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  v9 = 0;
  v10 = 0;
  v8 = 0;
  *len = 0;
  if (CBB_init(v12, 0))
  {
    if (str)
    {
      v4 = strlen(str);
      CBS_init(v11, str, v4);
      while (CBS_len(v11))
      {
        v13 = 0;
        while (CBS_len(v11))
        {
          if (!CBS_peek_u8(v11, &v13))
          {
            goto LABEL_19;
          }

          if (v13 != 58)
          {
            break;
          }

          if (!CBS_get_u8(v11, &v13))
          {
            goto LABEL_19;
          }
        }

        if (!CBS_len(v11))
        {
          break;
        }

        if (!x509_get_xdigit_nibble_cbs(v11, &v8 + 1))
        {
          goto LABEL_19;
        }

        if (!CBS_len(v11))
        {
          v5 = 112;
          v6 = 583;
          goto LABEL_18;
        }

        if (!x509_get_xdigit_nibble_cbs(v11, &v8) || !CBB_add_u8(v12, v8 | (16 * HIBYTE(v8))))
        {
          goto LABEL_19;
        }
      }

      if (CBB_finish(v12, &v10, &v9))
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          freezero(v10, v9);
          v10 = 0;
        }

        else
        {
          *len = v9;
        }
      }
    }

    else
    {
      v5 = 107;
      v6 = 565;
LABEL_18:
      ERR_put_error(34, 4095, v5, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_utl.c", v6);
    }
  }

LABEL_19:
  CBB_cleanup(v12);
  return v10;
}

uint64_t x509_get_xdigit_nibble_cbs(void *a1, _BYTE *a2)
{
  v6 = 0;
  result = CBS_get_u8(a1, &v6);
  if (result)
  {
    v4 = v6 - 48;
    if (v4 > 9)
    {
      if (v6 - 97 > 5)
      {
        if (v6 - 65 > 5)
        {
          ERR_put_error(34, 4095, 113, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_utl.c", 546);
          return 0;
        }

        v5 = v6 - 55;
      }

      else
      {
        v5 = v6 - 87;
      }

      *a2 = v5;
    }

    else
    {
      *a2 = v4;
    }

    return 1;
  }

  return result;
}

int name_cmp(const char *name, const char *cmp)
{
  v4 = strlen(cmp);
  result = strncmp(name, cmp, v4);
  if (!result)
  {
    v6 = name[v4];
    return v6 != 46 && v6 != 0;
  }

  return result;
}

STACK *__cdecl X509_get1_email(X509 *x)
{
  ext_d2i = X509_get_ext_d2i(x, 85, 0, 0);
  subject_name = X509_get_subject_name(x);
  email = get_email(subject_name, ext_d2i);
  sk_pop_free(ext_d2i, GENERAL_NAME_free);
  return email;
}

STACK *get_email(X509_NAME *name, const STACK *a2)
{
  v11 = 0;
  v4 = -1;
  while (1)
  {
    index_by_NID = X509_NAME_get_index_by_NID(name, 48, v4);
    if (index_by_NID < 0)
    {
      break;
    }

    v4 = index_by_NID;
    entry = X509_NAME_get_entry(name, index_by_NID);
    data = X509_NAME_ENTRY_get_data(entry);
    if (!append_ia5(&v11, data))
    {
      return 0;
    }
  }

  if (sk_num(a2) >= 1)
  {
    v9 = 0;
    while (1)
    {
      v10 = sk_value(a2, v9);
      if (*v10 == 1 && !append_ia5(&v11, *(v10 + 1)))
      {
        break;
      }

      if (++v9 >= sk_num(a2))
      {
        return v11;
      }
    }

    return 0;
  }

  return v11;
}

STACK *__cdecl X509_get1_ocsp(X509 *x)
{
  v8 = 0;
  ext_d2i = X509_get_ext_d2i(x, 177, 0, 0);
  if (!ext_d2i)
  {
    return 0;
  }

  v2 = ext_d2i;
  if (sk_num(ext_d2i) < 1)
  {
    v6 = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      v4 = sk_value(v2, v3);
      if (OBJ_obj2nid(*v4) == 178)
      {
        v5 = *(v4 + 1);
        if (*v5 == 6 && !append_ia5(&v8, *(v5 + 8)))
        {
          break;
        }
      }

      ++v3;
    }

    while (v3 < sk_num(v2));
    v6 = v8;
  }

  AUTHORITY_INFO_ACCESS_free(v2);
  return v6;
}

STACK *append_ia5(STACK **a1, uint64_t a2)
{
  if (*(a2 + 4) != 22)
  {
    return 1;
  }

  v3 = *(a2 + 8);
  if (v3 && *a2)
  {
    result = *a1;
    if (!result)
    {
      result = sk_new(sk_strcmp);
      *a1 = result;
      if (!result)
      {
        return result;
      }

      v3 = *(a2 + 8);
    }

    if (sk_find(result, v3) == -1)
    {
      v6 = strdup(*(a2 + 8));
      if (!v6 || !sk_push(*a1, v6))
      {
        sk_pop_free(*a1, str_free_0);
        result = 0;
        *a1 = 0;
        return result;
      }
    }
  }

  return 1;
}

STACK *__cdecl X509_REQ_get1_email(X509_REQ *x)
{
  extensions = X509_REQ_get_extensions(x);
  d2i = X509V3_get_d2i(extensions, 85, 0, 0);
  subject_name = X509_REQ_get_subject_name(x);
  email = get_email(subject_name, d2i);
  sk_pop_free(d2i, GENERAL_NAME_free);
  sk_pop_free(extensions, X509_EXTENSION_free);
  return email;
}

uint64_t X509_check_host(X509 *a1, char *__s, size_t __n, int a4, char **a5)
{
  if (!__s)
  {
    return 4294967294;
  }

  v7 = __n;
  if (__n)
  {
    if (memchr(__s, 0, __n))
    {
      return 4294967294;
    }
  }

  else
  {
    v7 = strlen(__s);
  }

  return do_x509_check(a1, __s, v7, a4, 2, a5);
}

uint64_t do_x509_check(X509 *x, _BYTE *a2, size_t a3, int a4, int a5, char **a6)
{
  v10 = x;
  v11 = a4 & 0xFFFF7FFF;
  if (a5 == 1)
  {
    ext_d2i = X509_get_ext_d2i(x, 85, 0, 0);
    v34 = 48;
    v14 = equal_email;
    if (!ext_d2i)
    {
      v16 = 48;
      goto LABEL_34;
    }

LABEL_15:
    v17 = ext_d2i;
    v18 = 22;
    goto LABEL_18;
  }

  if (a5 == 2)
  {
    v12 = a4;
    if ((a4 & 0x20) != 0)
    {
      v13 = 0;
    }

    else
    {
      v13 = 13;
    }

    v34 = v13;
    if (a3 >= 2)
    {
      v11 = v11 | ((*a2 == 46) << 15);
    }

    if ((v11 & 2) != 0)
    {
      v14 = equal_nocase;
    }

    else
    {
      v14 = equal_wildcard;
    }

    ext_d2i = X509_get_ext_d2i(x, 85, 0, 0);
    if (!ext_d2i)
    {
      v16 = v34;
      if ((v12 & 0x20) == 0)
      {
LABEL_34:
        subject_name = X509_get_subject_name(v10);
        v29 = -1;
        while (1)
        {
          index_by_NID = X509_NAME_get_index_by_NID(subject_name, v16, v29);
          if (index_by_NID < 0)
          {
            break;
          }

          v29 = index_by_NID;
          entry = X509_NAME_get_entry(subject_name, index_by_NID);
          if (!entry)
          {
            return 0xFFFFFFFFLL;
          }

          data = X509_NAME_ENTRY_get_data(entry);
          if (!data)
          {
            return 0xFFFFFFFFLL;
          }

          result = do_check_string(data, -1, v14, v11, a2, a3, a6);
          if (result)
          {
            return result;
          }
        }
      }

      return 0;
    }

    goto LABEL_15;
  }

  v19 = X509_get_ext_d2i(x, 85, 0, 0);
  v34 = 0;
  if (v19)
  {
    v17 = v19;
    v14 = equal_case;
    v18 = 4;
LABEL_18:
    if (sk_num(v17))
    {
      v33 = v10;
      v20 = 0;
      v21 = 0;
      while (1)
      {
        v22 = sk_value(v17, v21);
        if (*v22 == a5)
        {
          v23 = do_check_string(*(v22 + 1), v18, v14, v11, a2, a3, a6);
          if (v23)
          {
            v27 = v23;
            GENERAL_NAMES_free(v17);
            return v27;
          }

          v20 = 1;
        }

        if (++v21 >= sk_num(v17))
        {
          v24 = v20 != 0;
          v10 = v33;
          goto LABEL_26;
        }
      }
    }

    v24 = 0;
LABEL_26:
    GENERAL_NAMES_free(v17);
    v16 = v34;
    if (v34)
    {
      if ((v11 & 1) != 0 || !v24)
      {
        goto LABEL_34;
      }
    }

    return 0;
  }

  return 0;
}

uint64_t X509_check_email(X509 *a1, char *__s, size_t __n, int a4)
{
  if (!__s)
  {
    return 4294967294;
  }

  v5 = __n;
  if (__n)
  {
    if (memchr(__s, 0, __n))
    {
      return 4294967294;
    }
  }

  else
  {
    v5 = strlen(__s);
  }

  return do_x509_check(a1, __s, v5, a4, 1, 0);
}

uint64_t X509_check_ip(X509 *a1, _BYTE *a2, size_t a3, int a4)
{
  if (a2)
  {
    return do_x509_check(a1, a2, a3, a4, 7, 0);
  }

  else
  {
    return 4294967294;
  }
}

uint64_t X509_check_ip_asc(X509 *a1, const char *a2, int a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a2 && (v5 = a2i_ipadd(ipout, a2)) != 0)
  {
    result = do_x509_check(a1, ipout, v5, a3, 7, 0);
  }

  else
  {
    result = 4294967294;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

int a2i_ipadd(unsigned __int8 *ipout, const char *ipasc)
{
  v12 = *MEMORY[0x277D85DE8];
  if (strchr(ipasc, 58))
  {
    v10 = 0;
    arg = 0u;
    v11 = 0xFFFFFFFFLL;
    if (!CONF_parse_list(ipasc, 58, 0, ipv6_cb, &arg))
    {
      goto LABEL_22;
    }

    v4 = v11;
    v5 = v10;
    if (v11 != -1)
    {
      if (v10 == 16 || SHIDWORD(v11) > 3)
      {
        goto LABEL_22;
      }

      if (HIDWORD(v11) == 2)
      {
        if (v11 && v10 != v11)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (HIDWORD(v11) == 3)
        {
          if (v10 <= 0)
          {
            goto LABEL_19;
          }

LABEL_22:
          result = 0;
          goto LABEL_23;
        }

        if (!v11 || v10 == v11)
        {
          goto LABEL_22;
        }
      }

LABEL_19:
      if ((v11 & 0x80000000) == 0)
      {
        memcpy(ipout, &arg, v11);
        v7 = &ipout[v4];
        bzero(v7, 16 - v5);
        if (v5 != v4)
        {
          memcpy(&v7[-v5 + 16], &arg + v4, v5 - v4);
        }

        goto LABEL_13;
      }

LABEL_12:
      *ipout = arg;
LABEL_13:
      result = 16;
      goto LABEL_23;
    }

    if (v10 == 16)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

  result = 4 * (ipv4_from_asc(ipout, ipasc) != 0);
LABEL_23:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

ASN1_OCTET_STRING *__cdecl a2i_IPADDRESS(const char *ipasc)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = a2i_ipadd(ipout, ipasc);
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = v1;
  v3 = ASN1_OCTET_STRING_new();
  v4 = v3;
  if (v3 && !ASN1_OCTET_STRING_set(v3, ipout, v2))
  {
    ASN1_OCTET_STRING_free(v4);
LABEL_5:
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

ASN1_OCTET_STRING *__cdecl a2i_IPADDRESS_NC(const char *ipasc)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = strchr(ipasc, 47);
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2;
  v4 = strdup(ipasc);
  v5 = v4;
  if (!v4)
  {
    goto LABEL_11;
  }

  v6 = &v4[v3 - ipasc];
  *v6 = 0;
  v7 = a2i_ipadd(ipout, v4);
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7;
  v9 = a2i_ipadd(&ipout[v7], v6 + 1);
  free(v5);
  if (v8 != v9)
  {
    v5 = 0;
    goto LABEL_9;
  }

  v10 = ASN1_OCTET_STRING_new();
  v5 = v10;
  if (!v10)
  {
LABEL_9:
    free(v5);
    goto LABEL_10;
  }

  if (!ASN1_OCTET_STRING_set(v10, ipout, 2 * v8))
  {
    ASN1_OCTET_STRING_free(v5);
LABEL_10:
    v5 = 0;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t ipv4_from_asc(_BYTE *a1, char *a2)
{
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v3 = sscanf(a2, "%d.%d.%d.%d", &v10 + 4, &v10, &v9, &v8);
  result = 0;
  if (v3 == 4)
  {
    result = 0;
    if (HIDWORD(v10) <= 0xFF)
    {
      v5 = v10;
      if (v10 <= 0xFF)
      {
        v6 = v9;
        if (v9 <= 0xFF)
        {
          v7 = v8;
          if (v8 <= 0xFF)
          {
            *a1 = BYTE4(v10);
            a1[1] = v5;
            a1[2] = v6;
            result = 1;
            a1[3] = v7;
          }
        }
      }
    }
  }

  return result;
}

int X509V3_NAME_from_section(X509_NAME *nm, STACK *dn_sk, unint64_t chtype)
{
  if (!nm)
  {
    return nm;
  }

  v3 = chtype;
  v5 = nm;
  if (sk_num(dn_sk) < 1)
  {
    goto LABEL_22;
  }

  v6 = 0;
  while (2)
  {
    v7 = sk_value(dn_sk, v6);
    v8 = *(v7 + 1);
    for (i = v8 + 1; ; ++i)
    {
      v10 = *(i - 1);
      if (v10 <= 0x2D)
      {
        break;
      }

      if (v10 == 58 || v10 == 46)
      {
        goto LABEL_12;
      }

LABEL_11:
      ;
    }

    if (!*(i - 1))
    {
      goto LABEL_14;
    }

    if (v10 != 44)
    {
      goto LABEL_11;
    }

LABEL_12:
    if (*i)
    {
      v8 = i;
    }

LABEL_14:
    v11 = *v8;
    if (v11 == 43)
    {
      v12 = -1;
    }

    else
    {
      v12 = 0;
    }

    if (v11 == 43)
    {
      v13 = (v8 + 1);
    }

    else
    {
      v13 = v8;
    }

    LODWORD(nm) = X509_NAME_add_entry_by_txt(v5, v13, v3, *(v7 + 2), -1, -1, v12);
    if (nm)
    {
      if (++v6 >= sk_num(dn_sk))
      {
LABEL_22:
        LODWORD(nm) = 1;
        return nm;
      }

      continue;
    }

    return nm;
  }
}

BOOL equal_email(char *a1, size_t __n, char *a3, uint64_t a4)
{
  if (__n != a4)
  {
    return 0;
  }

  v5 = __n;
  v7 = 0;
  v8 = a3 - 1;
  v9 = a1 - 1;
  while (__n != v7)
  {
    v10 = v7;
    v11 = v8;
    v12 = v9;
    if (v9[__n] != 64)
    {
      v13 = v8[__n];
      ++v7;
      --v8;
      --v9;
      if (v13 != 64)
      {
        continue;
      }
    }

    if (!equal_nocase(&v12[__n], v10 + 1, &v11[__n], v10 + 1, 0))
    {
      return 0;
    }

    if (v5 - 1 != v10)
    {
      v5 += ~v10;
    }

    break;
  }

  return equal_case(a1, v5, a3, v5, 0);
}

BOOL equal_nocase(char *a1, size_t __n, void *a3, size_t a4, unsigned int a5)
{
  v8 = __n;
  v9 = a1;
  if (memchr(a1, 0, __n) || memchr(a3, 0, a4))
  {
    return 0;
  }

  if ((a5 & 0x8000) == 0)
  {
    goto LABEL_13;
  }

  i = v9;
  v12 = v8;
  if (v8 > a4)
  {
    v13 = &v9[v8 - a4];
    v12 = v8;
    for (i = v9; *i && ((*i == 46) & (a5 >> 4)) == 0; ++i)
    {
      if (--v12 <= a4)
      {
        v8 = a4;
        v9 = v13;
        return strncasecmp(v9, a3, v8) == 0;
      }
    }
  }

  if (v12 == a4)
  {
    v8 = a4;
    v9 = i;
  }

  else
  {
LABEL_13:
    if (v8 != a4)
    {
      return 0;
    }
  }

  return strncasecmp(v9, a3, v8) == 0;
}

uint64_t equal_wildcard(char *a1, size_t __n, char *a3, size_t a4, unsigned int a5)
{
  if (a4 < 2)
  {
    if (!__n)
    {
      goto LABEL_42;
    }

LABEL_6:
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = __n - 1;
    v12 = 1;
    v32 = a3;
    v33 = a4;
    do
    {
      v13 = &a1[v10];
      v14 = a1[v10];
      if (v14 == 42)
      {
        if (v10 == v11)
        {
          v15 = 1;
          if (v8)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v15 = v13[1] == 46;
          if (v8)
          {
            goto LABEL_42;
          }
        }

        if (v12 & 8 | v9 || !(((a5 & 4) == 0) | v12 & v15 & 1) || ((v12 | v15) & 1) == 0)
        {
          goto LABEL_42;
        }

        v9 = 0;
        v12 &= 0xFFFFFFF6;
        v8 = &a1[v10];
      }

      else if (v12)
      {
        if ((v12 & 8) != 0 || __n - v10 < 4 || (v17 = strncasecmp(v13, "xn--", 4uLL), a3 = v32, a4 = v33, v17))
        {
          if ((v14 - 48) >= 0xA && (v14 & 0xFFFFFFDF) - 65 >= 0x1A)
          {
            goto LABEL_42;
          }

          v12 &= ~1u;
        }

        else
        {
          v10 += 3;
          v12 |= 8u;
        }
      }

      else if ((v14 - 48) >= 0xA && (v14 & 0xFFFFFFDF) - 65 > 0x19)
      {
        if (v14 == 45)
        {
          v12 |= 4u;
        }

        else
        {
          if (v14 != 46 || (v12 & 4) != 0)
          {
            goto LABEL_42;
          }

          ++v9;
          v12 = 1;
        }
      }

      else
      {
        v12 &= 8u;
      }

      ++v10;
    }

    while (v10 < __n);
    if ((v12 & 5) != 0 || v9 < 2 || !v8)
    {
      goto LABEL_42;
    }

    v19 = v8 - a1;
    v20 = &a1[__n + ~v8];
    if (~v8 + __n + v8 <= a4)
    {
      v22 = a3;
      result = equal_nocase(a1, v8 - a1, a3, v8 - a1, a5);
      if (!result)
      {
        return result;
      }

      v23 = v33 - v20;
      result = equal_nocase(&v22[v33 - v20], &a1[__n + ~v8], (v8 + 1), &a1[__n + ~v8], a5);
      if (!result)
      {
        return result;
      }

      if (v8 == a1 && *(v8 + 1) == 46)
      {
        v24 = v33;
        if (v33 == v20)
        {
          return 0;
        }

        v25 = (a5 >> 3) & 1;
      }

      else
      {
        v24 = v33;
        if (v33 < 4)
        {
          LOBYTE(v25) = 0;
        }

        else
        {
          result = strncasecmp(v32, "xn--", 4uLL);
          if (!result)
          {
            return result;
          }

          LOBYTE(v25) = 0;
          v24 = v33;
        }
      }

      v26 = &v32[v19];
      if (&v22[v33 - v20] == &v32[v19 + 1])
      {
        result = 1;
        if (v23 == v19 || *v26 == 42)
        {
          return result;
        }
      }

      else if (v23 == v19)
      {
        return 1;
      }

      v27 = v24 - __n + 1;
      while (1)
      {
        v28 = *v26;
        if ((v28 - 48) >= 0xA && (v28 - 65) >= 0x1A)
        {
          v30 = v28 == 46 ? v25 : 0;
          if ((v30 & 1) == 0 && v28 != 45 && (v28 - 97) > 0x19)
          {
            break;
          }
        }

        ++v26;
        if (!--v27)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (__n && *a3 != 46)
  {
    goto LABEL_6;
  }

LABEL_42:

  return equal_nocase(a1, __n, a3, a4, a5);
}

BOOL equal_case(char *a1, size_t __n, void *a3, size_t a4, unsigned int a5)
{
  v8 = __n;
  v9 = a1;
  if (memchr(a1, 0, __n) || memchr(a3, 0, a4))
  {
    return 0;
  }

  if ((a5 & 0x8000) == 0)
  {
    goto LABEL_13;
  }

  i = v9;
  v12 = v8;
  if (v8 > a4)
  {
    v13 = &v9[v8 - a4];
    v12 = v8;
    for (i = v9; *i && ((*i == 46) & (a5 >> 4)) == 0; ++i)
    {
      if (--v12 <= a4)
      {
        v8 = a4;
        v9 = v13;
        return strncmp(v9, a3, v8) == 0;
      }
    }
  }

  if (v12 == a4)
  {
    v8 = a4;
    v9 = i;
  }

  else
  {
LABEL_13:
    if (v8 != a4)
    {
      return 0;
    }
  }

  return strncmp(v9, a3, v8) == 0;
}

uint64_t do_check_string(ASN1_STRING *in, int a2, uint64_t (*a3)(void), uint64_t a4, void *__s2, size_t __n, char **a7)
{
  data = in->data;
  if (!data || !in->length)
  {
    return 0;
  }

  if (a2 >= 1)
  {
    if (in->type == a2)
    {
      if (a2 == 22)
      {
        v14 = a3();
        if (!a7)
        {
          return v14;
        }

LABEL_17:
        if (v14 >= 1)
        {
          v20 = strndup(in->data, in->length);
          *a7 = v20;
          if (v20)
          {
            return v14;
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }

        return v14;
      }

      if (in->length == __n)
      {
        v14 = memcmp(data, __s2, __n) == 0;
        if (!a7)
        {
          return v14;
        }

        goto LABEL_17;
      }
    }

    return 0;
  }

  out = 0;
  v15 = ASN1_STRING_to_UTF8(&out, in);
  if ((v15 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v16 = v15;
  v17 = (a3)(out, v15, __s2, __n, a4);
  v14 = v17;
  v18 = out;
  if (a7 && v17 >= 1)
  {
    v19 = strndup(out, v16);
    *a7 = v19;
    if (v19)
    {
      v14 = v14;
    }

    else
    {
      v14 = 0xFFFFFFFFLL;
    }
  }

  free(v18);
  return v14;
}

uint64_t ipv6_cb(char *a1, int a2, _DWORD *a3)
{
  v4 = a3 + 4;
  v3 = a3[4];
  if (v3 == 16)
  {
    return 0;
  }

  if (!a2)
  {
    v9 = a3[5];
    if (v9 == -1)
    {
      a3[5] = v3;
    }

    else if (v9 != v3)
    {
      return 0;
    }

    v4 = a3 + 6;
    v8 = 1;
    goto LABEL_23;
  }

  v6 = a1;
  v7 = v3;
  if (a2 < 5)
  {
    v10 = 0;
    do
    {
      v12 = *v6++;
      v11 = v12;
      if ((v12 - 48) >= 0xA)
      {
        if ((v11 - 65) >= 6)
        {
          if ((v11 - 97) > 5)
          {
            return 0;
          }

          v13 = -87;
        }

        else
        {
          v13 = -55;
        }
      }

      else
      {
        v13 = -48;
      }

      v10 = (v13 + v11) | (16 * v10);
      --a2;
    }

    while (a2);
    *(a3 + v7) = bswap32(v10) >> 16;
    v8 = 2;
    goto LABEL_23;
  }

  if (v3 > 12 || a1[a2])
  {
    return 0;
  }

  result = ipv4_from_asc(a3 + v3, a1);
  if (!result)
  {
    return result;
  }

  v8 = 4;
LABEL_23:
  *v4 += v8;
  return 1;
}

uint64_t Gost2814789_encrypt(_DWORD *a1, int *a2, int *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1 + *a3;
  v6 = a3 + 8;
  v7 = a3 + 264;
  v8 = a3 + 520;
  v9 = a3 + 776;
  v10 = (a3[BYTE2(v5) + 264] | a3[HIBYTE(v5) + 8] | a3[BYTE1(v5) + 520] | a3[v5 + 776]) ^ a1[1];
  v11 = (a3[((v10 + v4) >> 16) + 264] | a3[((v10 + v4) >> 24) + 8] | a3[((v10 + v4) >> 8) + 520] | a3[(v10 + v4) + 776]) ^ *a1;
  v12 = a3[2];
  v13 = a3[3];
  v14 = (a3[((v11 + v12) >> 16) + 264] | a3[((v11 + v12) >> 24) + 8] | a3[((v11 + v12) >> 8) + 520] | a3[(v11 + v12) + 776]) ^ v10;
  v15 = (a3[((v14 + v13) >> 16) + 264] | a3[((v14 + v13) >> 24) + 8] | a3[((v14 + v13) >> 8) + 520] | a3[(v14 + v13) + 776]) ^ v11;
  v16 = a3[4];
  v17 = a3[5];
  v18 = (a3[((v15 + v16) >> 16) + 264] | a3[((v15 + v16) >> 24) + 8] | a3[((v15 + v16) >> 8) + 520] | a3[(v15 + v16) + 776]) ^ v14;
  v19 = (a3[((v18 + v17) >> 16) + 264] | a3[((v18 + v17) >> 24) + 8] | a3[((v18 + v17) >> 8) + 520] | a3[(v18 + v17) + 776]) ^ v15;
  v20 = a3[6];
  v21 = a3[7];
  v22 = (v7[((v19 + v20) >> 16)] | v6[(v19 + v20) >> 24] | v8[((v19 + v20) >> 8)] | v9[(v19 + v20)]) ^ v18;
  v23 = (v7[((v22 + v21) >> 16)] | v6[(v22 + v21) >> 24] | v8[((v22 + v21) >> 8)] | v9[(v22 + v21)]) ^ v19;
  v24 = (v7[((v23 + v3) >> 16)] | v6[(v23 + v3) >> 24] | v8[((v23 + v3) >> 8)] | v9[(v23 + v3)]) ^ v22;
  v25 = (v7[((v24 + v4) >> 16)] | v6[(v24 + v4) >> 24] | v8[((v24 + v4) >> 8)] | v9[(v24 + v4)]) ^ v23;
  v26 = (v7[((v25 + v12) >> 16)] | v6[(v25 + v12) >> 24] | v8[((v25 + v12) >> 8)] | v9[(v25 + v12)]) ^ v24;
  v27 = (v7[((v26 + v13) >> 16)] | v6[(v26 + v13) >> 24] | v8[((v26 + v13) >> 8)] | v9[(v26 + v13)]) ^ v25;
  v28 = (v7[((v27 + v16) >> 16)] | v6[(v27 + v16) >> 24] | v8[((v27 + v16) >> 8)] | v9[(v27 + v16)]) ^ v26;
  v29 = (v7[((v28 + v17) >> 16)] | v6[(v28 + v17) >> 24] | v8[((v28 + v17) >> 8)] | v9[(v28 + v17)]) ^ v27;
  v30 = (v7[((v29 + v20) >> 16)] | v6[(v29 + v20) >> 24] | v8[((v29 + v20) >> 8)] | v9[(v29 + v20)]) ^ v28;
  v31 = (v7[((v30 + v21) >> 16)] | v6[(v30 + v21) >> 24] | v8[((v30 + v21) >> 8)] | v9[(v30 + v21)]) ^ v29;
  v32 = (v7[((v31 + v3) >> 16)] | v6[(v31 + v3) >> 24] | v8[((v31 + v3) >> 8)] | v9[(v31 + v3)]) ^ v30;
  v33 = (v7[((v32 + v4) >> 16)] | v6[(v32 + v4) >> 24] | v8[((v32 + v4) >> 8)] | v9[(v32 + v4)]) ^ v31;
  v34 = (v7[((v33 + v12) >> 16)] | v6[(v33 + v12) >> 24] | v8[((v33 + v12) >> 8)] | v9[(v33 + v12)]) ^ v32;
  v35 = (v7[((v34 + v13) >> 16)] | v6[(v34 + v13) >> 24] | v8[((v34 + v13) >> 8)] | v9[(v34 + v13)]) ^ v33;
  v36 = (v7[((v35 + v16) >> 16)] | v6[(v35 + v16) >> 24] | v8[((v35 + v16) >> 8)] | v9[(v35 + v16)]) ^ v34;
  v37 = (v7[((v36 + v17) >> 16)] | v6[(v36 + v17) >> 24] | v8[((v36 + v17) >> 8)] | v9[(v36 + v17)]) ^ v35;
  v38 = (v7[((v37 + v20) >> 16)] | v6[(v37 + v20) >> 24] | v8[((v37 + v20) >> 8)] | v9[(v37 + v20)]) ^ v36;
  v39 = (v7[((v38 + v21) >> 16)] | v6[(v38 + v21) >> 24] | v8[((v38 + v21) >> 8)] | v9[(v38 + v21)]) ^ v37;
  v40 = (v7[((v39 + v21) >> 16)] | v6[(v39 + v21) >> 24] | v8[((v39 + v21) >> 8)] | v9[(v39 + v21)]) ^ v38;
  v41 = (v7[((v40 + v20) >> 16)] | v6[(v40 + v20) >> 24] | v8[((v40 + v20) >> 8)] | v9[(v40 + v20)]) ^ v39;
  v42 = (v7[((v41 + v17) >> 16)] | v6[(v41 + v17) >> 24] | v8[((v41 + v17) >> 8)] | v9[(v41 + v17)]) ^ v40;
  v43 = (v7[((v42 + v16) >> 16)] | v6[(v42 + v16) >> 24] | v8[((v42 + v16) >> 8)] | v9[(v42 + v16)]) ^ v41;
  v44 = (v7[((v43 + v13) >> 16)] | v6[(v43 + v13) >> 24] | v8[((v43 + v13) >> 8)] | v9[(v43 + v13)]) ^ v42;
  v45 = v44 + v12;
  result = v8[BYTE1(v45)];
  v47 = (v7[BYTE2(v45)] | v6[HIBYTE(v45)] | result | v9[v45]) ^ v43;
  v48 = (v7[((v47 + v4) >> 16)] | v6[(v47 + v4) >> 24] | v8[((v47 + v4) >> 8)] | v9[(v47 + v4)]) ^ v44;
  v49 = v48 + v3;
  LODWORD(v6) = v7[BYTE2(v49)] | v6[HIBYTE(v49)];
  v50 = v8[BYTE1(v49)] | v9[v49];
  *a2 = v48;
  a2[1] = (v6 | v50) ^ v47;
  return result;
}

uint64_t Gost2814789_decrypt(_DWORD *a1, int *a2, int *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1 + *a3;
  v6 = a3 + 8;
  v7 = a3 + 264;
  v8 = a3 + 520;
  v9 = a3 + 776;
  v10 = (a3[BYTE2(v5) + 264] | a3[HIBYTE(v5) + 8] | a3[BYTE1(v5) + 520] | a3[v5 + 776]) ^ a1[1];
  v11 = (a3[((v10 + v4) >> 16) + 264] | a3[((v10 + v4) >> 24) + 8] | a3[((v10 + v4) >> 8) + 520] | a3[(v10 + v4) + 776]) ^ *a1;
  v12 = a3[2];
  v13 = a3[3];
  v14 = (a3[((v11 + v12) >> 16) + 264] | a3[((v11 + v12) >> 24) + 8] | a3[((v11 + v12) >> 8) + 520] | a3[(v11 + v12) + 776]) ^ v10;
  v15 = (a3[((v14 + v13) >> 16) + 264] | a3[((v14 + v13) >> 24) + 8] | a3[((v14 + v13) >> 8) + 520] | a3[(v14 + v13) + 776]) ^ v11;
  v16 = a3[4];
  v17 = a3[5];
  v18 = (a3[((v15 + v16) >> 16) + 264] | a3[((v15 + v16) >> 24) + 8] | a3[((v15 + v16) >> 8) + 520] | a3[(v15 + v16) + 776]) ^ v14;
  v19 = (a3[((v18 + v17) >> 16) + 264] | a3[((v18 + v17) >> 24) + 8] | a3[((v18 + v17) >> 8) + 520] | a3[(v18 + v17) + 776]) ^ v15;
  v20 = a3[6];
  v21 = a3[7];
  v22 = (v7[((v19 + v20) >> 16)] | v6[(v19 + v20) >> 24] | v8[((v19 + v20) >> 8)] | v9[(v19 + v20)]) ^ v18;
  v23 = (v7[((v22 + v21) >> 16)] | v6[(v22 + v21) >> 24] | v8[((v22 + v21) >> 8)] | v9[(v22 + v21)]) ^ v19;
  v24 = (v7[((v23 + v21) >> 16)] | v6[(v23 + v21) >> 24] | v8[((v23 + v21) >> 8)] | v9[(v23 + v21)]) ^ v22;
  v25 = (v7[((v24 + v20) >> 16)] | v6[(v24 + v20) >> 24] | v8[((v24 + v20) >> 8)] | v9[(v24 + v20)]) ^ v23;
  v26 = (v7[((v25 + v17) >> 16)] | v6[(v25 + v17) >> 24] | v8[((v25 + v17) >> 8)] | v9[(v25 + v17)]) ^ v24;
  v27 = (v7[((v26 + v16) >> 16)] | v6[(v26 + v16) >> 24] | v8[((v26 + v16) >> 8)] | v9[(v26 + v16)]) ^ v25;
  v28 = (v7[((v27 + v13) >> 16)] | v6[(v27 + v13) >> 24] | v8[((v27 + v13) >> 8)] | v9[(v27 + v13)]) ^ v26;
  v29 = (v7[((v28 + v12) >> 16)] | v6[(v28 + v12) >> 24] | v8[((v28 + v12) >> 8)] | v9[(v28 + v12)]) ^ v27;
  v30 = (v7[((v29 + v4) >> 16)] | v6[(v29 + v4) >> 24] | v8[((v29 + v4) >> 8)] | v9[(v29 + v4)]) ^ v28;
  v31 = (v7[((v30 + v3) >> 16)] | v6[(v30 + v3) >> 24] | v8[((v30 + v3) >> 8)] | v9[(v30 + v3)]) ^ v29;
  v32 = (v7[((v31 + v21) >> 16)] | v6[(v31 + v21) >> 24] | v8[((v31 + v21) >> 8)] | v9[(v31 + v21)]) ^ v30;
  v33 = (v7[((v32 + v20) >> 16)] | v6[(v32 + v20) >> 24] | v8[((v32 + v20) >> 8)] | v9[(v32 + v20)]) ^ v31;
  v34 = (v7[((v33 + v17) >> 16)] | v6[(v33 + v17) >> 24] | v8[((v33 + v17) >> 8)] | v9[(v33 + v17)]) ^ v32;
  v35 = (v7[((v34 + v16) >> 16)] | v6[(v34 + v16) >> 24] | v8[((v34 + v16) >> 8)] | v9[(v34 + v16)]) ^ v33;
  v36 = (v7[((v35 + v13) >> 16)] | v6[(v35 + v13) >> 24] | v8[((v35 + v13) >> 8)] | v9[(v35 + v13)]) ^ v34;
  v37 = (v7[((v36 + v12) >> 16)] | v6[(v36 + v12) >> 24] | v8[((v36 + v12) >> 8)] | v9[(v36 + v12)]) ^ v35;
  v38 = (v7[((v37 + v4) >> 16)] | v6[(v37 + v4) >> 24] | v8[((v37 + v4) >> 8)] | v9[(v37 + v4)]) ^ v36;
  v39 = (v7[((v38 + v3) >> 16)] | v6[(v38 + v3) >> 24] | v8[((v38 + v3) >> 8)] | v9[(v38 + v3)]) ^ v37;
  v40 = (v7[((v39 + v21) >> 16)] | v6[(v39 + v21) >> 24] | v8[((v39 + v21) >> 8)] | v9[(v39 + v21)]) ^ v38;
  v41 = (v7[((v40 + v20) >> 16)] | v6[(v40 + v20) >> 24] | v8[((v40 + v20) >> 8)] | v9[(v40 + v20)]) ^ v39;
  v42 = (v7[((v41 + v17) >> 16)] | v6[(v41 + v17) >> 24] | v8[((v41 + v17) >> 8)] | v9[(v41 + v17)]) ^ v40;
  v43 = (v7[((v42 + v16) >> 16)] | v6[(v42 + v16) >> 24] | v8[((v42 + v16) >> 8)] | v9[(v42 + v16)]) ^ v41;
  v44 = (v7[((v43 + v13) >> 16)] | v6[(v43 + v13) >> 24] | v8[((v43 + v13) >> 8)] | v9[(v43 + v13)]) ^ v42;
  v45 = v44 + v12;
  result = v8[BYTE1(v45)];
  v47 = (v7[BYTE2(v45)] | v6[HIBYTE(v45)] | result | v9[v45]) ^ v43;
  v48 = (v7[((v47 + v4) >> 16)] | v6[(v47 + v4) >> 24] | v8[((v47 + v4) >> 8)] | v9[(v47 + v4)]) ^ v44;
  v49 = v48 + v3;
  LODWORD(v6) = v7[BYTE2(v49)] | v6[HIBYTE(v49)];
  v50 = v8[BYTE1(v49)] | v9[v49];
  *a2 = v48;
  a2[1] = (v6 | v50) ^ v47;
  return result;
}

uint64_t Gost2814789_ecb_encrypt(_DWORD *a1, int *a2, uint64_t a3, int a4)
{
  if ((*(a3 + 4132) & 1) != 0 && *(a3 + 4128) == 1024)
  {
    Gost2814789_cryptopro_key_mesh(a3);
    *(a3 + 4128) = 0;
  }

  if (a4)
  {

    return Gost2814789_encrypt(a1, a2, a3);
  }

  else
  {

    return Gost2814789_decrypt(a1, a2, a3);
  }
}

uint64_t Gost2814789_cfb64_encrypt(uint64_t result, _BYTE *a2, unint64_t a3, uint64_t a4, _DWORD *a5, unsigned int *a6, int a7)
{
  v11 = result;
  v12 = *a6;
  if (*a6)
  {
    v13 = a3 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = !v13;
  if (a7)
  {
    if (v14)
    {
      do
      {
        v15 = *v11++;
        v16 = *(a5 + v12);
        *(a5 + v12) = v16 ^ v15;
        *a2++ = v16 ^ v15;
        v17 = a3 - 1;
        v18 = v12 + 1;
        v12 = (v12 + 1) & 7;
        if ((v18 & 7) == 0)
        {
          break;
        }

        --a3;
      }

      while (a3);
    }

    else
    {
      v17 = a3;
    }

    if (v17 < 8)
    {
      v23 = v12;
      if (!v17)
      {
        goto LABEL_49;
      }
    }

    else
    {
      do
      {
        if ((*(a4 + 4132) & 1) != 0 && *(a4 + 4128) == 1024)
        {
          Gost2814789_cryptopro_key_mesh(a4);
          Gost2814789_encrypt(a5, a5, a4);
          *(a4 + 4128) = 0;
        }

        result = Gost2814789_encrypt(a5, a5, a4);
        *(a4 + 4128) += 8;
        if (v12 <= 7)
        {
          v22 = *(a5 + v12) ^ *&v11[v12];
          *(a5 + v12) = v22;
          *&a2[v12] = v22;
        }

        v12 = 0;
        v23 = 0;
        v17 -= 8;
        a2 += 8;
        v11 += 8;
      }

      while (v17 > 7);
      if (!v17)
      {
        goto LABEL_49;
      }
    }

    if ((*(a4 + 4132) & 1) != 0 && *(a4 + 4128) == 1024)
    {
      Gost2814789_cryptopro_key_mesh(a4);
      Gost2814789_encrypt(a5, a5, a4);
      *(a4 + 4128) = 0;
    }

    result = Gost2814789_encrypt(a5, a5, a4);
    *(a4 + 4128) += 8;
    do
    {
      v24 = *(a5 + v23) ^ v11[v23];
      *(a5 + v23) = v24;
      a2[v23++] = v24;
      --v17;
    }

    while (v17);
    goto LABEL_49;
  }

  if (v14)
  {
    do
    {
      v19 = *v11++;
      *a2++ = v19 ^ *(a5 + v12);
      *(a5 + v12) = v19;
      v20 = a3 - 1;
      v21 = v12 + 1;
      v12 = (v12 + 1) & 7;
      if ((v21 & 7) == 0)
      {
        break;
      }

      --a3;
    }

    while (a3);
  }

  else
  {
    v20 = a3;
  }

  if (v20 < 8)
  {
    v23 = v12;
    if (!v20)
    {
      goto LABEL_49;
    }

    goto LABEL_44;
  }

  do
  {
    if ((*(a4 + 4132) & 1) != 0 && *(a4 + 4128) == 1024)
    {
      Gost2814789_cryptopro_key_mesh(a4);
      Gost2814789_encrypt(a5, a5, a4);
      *(a4 + 4128) = 0;
    }

    result = Gost2814789_encrypt(a5, a5, a4);
    *(a4 + 4128) += 8;
    if (v12 <= 7)
    {
      v25 = *&v11[v12];
      *&a2[v12] = *(a5 + v12) ^ v25;
      *(a5 + v12) = v25;
    }

    v12 = 0;
    v23 = 0;
    v20 -= 8;
    a2 += 8;
    v11 += 8;
  }

  while (v20 > 7);
  if (v20)
  {
LABEL_44:
    if ((*(a4 + 4132) & 1) != 0 && *(a4 + 4128) == 1024)
    {
      Gost2814789_cryptopro_key_mesh(a4);
      Gost2814789_encrypt(a5, a5, a4);
      *(a4 + 4128) = 0;
    }

    result = Gost2814789_encrypt(a5, a5, a4);
    *(a4 + 4128) += 8;
    do
    {
      v26 = v11[v23];
      a2[v23] = v26 ^ *(a5 + v23);
      *(a5 + v23++) = v26;
      --v20;
    }

    while (v20);
  }

LABEL_49:
  *a6 = v23;
  return result;
}

uint64_t Gost2814789_cnt_encrypt(uint64_t result, _BYTE *a2, unint64_t a3, uint64_t a4, int *a5, int *a6, unsigned int *a7)
{
  v12 = result;
  v13 = *a7;
  if (*a7)
  {
    v14 = a3 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = a3;
  }

  else
  {
    do
    {
      v16 = *v12++;
      *a2++ = *(a6 + v13) ^ v16;
      v15 = a3 - 1;
      v17 = v13 + 1;
      v13 = (v13 + 1) & 7;
      if ((v17 & 7) == 0)
      {
        break;
      }

      --a3;
    }

    while (a3);
  }

  if (v15 < 8)
  {
    v18 = v13;
    if (!v15)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  do
  {
    result = Gost2814789_cnt_next(a5, a6, a4);
    if (v13 <= 7)
    {
      *&a2[v13] = *(a6 + v13) ^ *&v12[v13];
    }

    v13 = 0;
    v18 = 0;
    v15 -= 8;
    a2 += 8;
    v12 += 8;
  }

  while (v15 > 7);
  if (v15)
  {
LABEL_16:
    result = Gost2814789_cnt_next(a5, a6, a4);
    do
    {
      a2[v18] = *(a6 + v18) ^ v12[v18];
      ++v18;
      --v15;
    }

    while (v15);
  }

LABEL_18:
  *a7 = v18;
  return result;
}

uint64_t Gost2814789_cnt_next(int *a1, int *a2, uint64_t a3)
{
  if (!*(a3 + 4128))
  {
    Gost2814789_encrypt(a1, a1, a3);
  }

  if ((*(a3 + 4132) & 1) != 0 && *(a3 + 4128) == 1024)
  {
    Gost2814789_cryptopro_key_mesh(a3);
    Gost2814789_encrypt(a1, a1, a3);
    *(a3 + 4128) = 0;
  }

  v6 = a1[1];
  if (v6 <= 0xFEFEFEFB)
  {
    v7 = 16843012;
  }

  else
  {
    v7 = 16843013;
  }

  *a1 += 16843009;
  a1[1] = v7 + v6;
  result = Gost2814789_encrypt(a1, a2, a3);
  *(a3 + 4128) += 8;
  return result;
}

uint64_t GOST2814789IMIT_Init(uint64_t a1, int a2)
{
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 4156) = 0;
  return Gost2814789_set_sbox(a1 + 20, a2);
}

uint64_t GOST2814789IMIT_Update(uint64_t a1, char *__src, size_t __n)
{
  if (__n)
  {
    v3 = __n;
    v4 = __src;
    *a1 += 8 * __n;
    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = a1 + 8;
      if (__n <= 7 && v6 + __n < 8)
      {
        memcpy((v7 + v6), __src, __n);
        *(a1 + 16) += v3;
        return 1;
      }

      v8 = 8 - v6;
      memcpy((v7 + v6), __src, 8 - v6);
      Gost2814789_mac_mesh(a1 + 8, (a1 + 4156), a1 + 20);
      v4 += v8;
      v3 -= v8;
      *(a1 + 16) = 0;
      *(a1 + 8) = 0;
    }

    if (v3 >= 8)
    {
      v9 = v3 >> 3;
      v10 = v4;
      do
      {
        Gost2814789_mac_mesh(v10, (a1 + 4156), a1 + 20);
        v10 += 8;
        --v9;
      }

      while (v9);
      v4 += v3 & 0xFFFFFFFFFFFFFFF8;
      v3 &= 7u;
    }

    if (v3)
    {
      *(a1 + 16) = v3;
      memcpy((a1 + 8), v4, v3);
    }
  }

  return 1;
}

uint64_t GOST2814789IMIT_Final(_DWORD *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    bzero((a2 + 8 + v4), (8 - v4));
    Gost2814789_mac_mesh(a2 + 8, (a2 + 4156), a2 + 20);
  }

  if ((*a2 - 65) >= 0xFFFFFFC0 && !*(a2 + 4))
  {
    *(a2 + 8) = 0;
    Gost2814789_mac_mesh(a2 + 8, (a2 + 4156), a2 + 20);
  }

  *a1 = *(a2 + 4156);
  return 1;
}

uint64_t Gost2814789_mac_mesh(uint64_t a1, int *a2, uint64_t a3)
{
  if ((*(a3 + 4132) & 1) != 0 && *(a3 + 4128) == 1024)
  {
    Gost2814789_cryptopro_key_mesh(a3);
    *(a3 + 4128) = 0;
  }

  for (i = 0; i != 8; ++i)
  {
    *(a2 + i) ^= *(a1 + i);
  }

  v7 = *(a3 + 4);
  v8 = (*(a3 + 1056 + 4 * ((*a2 + *a3) >> 16)) | *(a3 + 32 + 4 * ((*a2 + *a3) >> 24)) | *(a3 + 2080 + 4 * ((*a2 + *a3) >> 8)) | *(a3 + 3104 + 4 * (*a2 + *a3))) ^ a2[1];
  v9 = (*(a3 + 1056 + 4 * ((v8 + v7) >> 16)) | *(a3 + 32 + 4 * ((v8 + v7) >> 24)) | *(a3 + 2080 + 4 * ((v8 + v7) >> 8)) | *(a3 + 3104 + 4 * (v8 + v7))) ^ *a2;
  v10 = *(a3 + 8);
  v11 = *(a3 + 12);
  v12 = (*(a3 + 1056 + 4 * ((v9 + v10) >> 16)) | *(a3 + 32 + 4 * ((v9 + v10) >> 24)) | *(a3 + 2080 + 4 * ((v9 + v10) >> 8)) | *(a3 + 3104 + 4 * (v9 + v10))) ^ v8;
  v13 = (*(a3 + 1056 + 4 * ((v12 + v11) >> 16)) | *(a3 + 32 + 4 * ((v12 + v11) >> 24)) | *(a3 + 2080 + 4 * ((v12 + v11) >> 8)) | *(a3 + 3104 + 4 * (v12 + v11))) ^ v9;
  v14 = *(a3 + 16);
  v15 = *(a3 + 20);
  v16 = (*(a3 + 1056 + 4 * ((v13 + v14) >> 16)) | *(a3 + 32 + 4 * ((v13 + v14) >> 24)) | *(a3 + 2080 + 4 * ((v13 + v14) >> 8)) | *(a3 + 3104 + 4 * (v13 + v14))) ^ v12;
  v17 = (*(a3 + 1056 + 4 * ((v16 + v15) >> 16)) | *(a3 + 32 + 4 * ((v16 + v15) >> 24)) | *(a3 + 2080 + 4 * ((v16 + v15) >> 8)) | *(a3 + 3104 + 4 * (v16 + v15))) ^ v13;
  result = *(a3 + 24);
  v19 = *(a3 + 28);
  v20 = (*(a3 + 1056 + 4 * ((v17 + result) >> 16)) | *(a3 + 32 + 4 * ((v17 + result) >> 24)) | *(a3 + 2080 + 4 * ((v17 + result) >> 8)) | *(a3 + 3104 + 4 * (v17 + result))) ^ v16;
  v21 = (*(a3 + 1056 + 4 * ((v20 + v19) >> 16)) | *(a3 + 32 + 4 * ((v20 + v19) >> 24)) | *(a3 + 2080 + 4 * ((v20 + v19) >> 8)) | *(a3 + 3104 + 4 * (v20 + v19))) ^ v17;
  v22 = (*(a3 + 1056 + 4 * ((v21 + *a3) >> 16)) | *(a3 + 32 + 4 * ((v21 + *a3) >> 24)) | *(a3 + 2080 + 4 * ((v21 + *a3) >> 8)) | *(a3 + 3104 + 4 * (v21 + *a3))) ^ v20;
  v23 = (*(a3 + 1056 + 4 * ((v22 + v7) >> 16)) | *(a3 + 32 + 4 * ((v22 + v7) >> 24)) | *(a3 + 2080 + 4 * ((v22 + v7) >> 8)) | *(a3 + 3104 + 4 * (v22 + v7))) ^ v21;
  v24 = (*(a3 + 1056 + 4 * ((v23 + v10) >> 16)) | *(a3 + 32 + 4 * ((v23 + v10) >> 24)) | *(a3 + 2080 + 4 * ((v23 + v10) >> 8)) | *(a3 + 3104 + 4 * (v23 + v10))) ^ v22;
  v25 = (*(a3 + 1056 + 4 * ((v24 + v11) >> 16)) | *(a3 + 32 + 4 * ((v24 + v11) >> 24)) | *(a3 + 2080 + 4 * ((v24 + v11) >> 8)) | *(a3 + 3104 + 4 * (v24 + v11))) ^ v23;
  v26 = (*(a3 + 1056 + 4 * ((v25 + v14) >> 16)) | *(a3 + 32 + 4 * ((v25 + v14) >> 24)) | *(a3 + 2080 + 4 * ((v25 + v14) >> 8)) | *(a3 + 3104 + 4 * (v25 + v14))) ^ v24;
  v27 = (*(a3 + 1056 + 4 * ((v26 + v15) >> 16)) | *(a3 + 32 + 4 * ((v26 + v15) >> 24)) | *(a3 + 2080 + 4 * ((v26 + v15) >> 8)) | *(a3 + 3104 + 4 * (v26 + v15))) ^ v25;
  v28 = (*(a3 + 1056 + 4 * ((v27 + result) >> 16)) | *(a3 + 32 + 4 * ((v27 + result) >> 24)) | *(a3 + 2080 + 4 * ((v27 + result) >> 8)) | *(a3 + 3104 + 4 * (v27 + result))) ^ v26;
  *a2 = (*(a3 + 1056 + 4 * ((v28 + v19) >> 16)) | *(a3 + 32 + 4 * ((v28 + v19) >> 24)) | *(a3 + 2080 + 4 * ((v28 + v19) >> 8)) | *(a3 + 3104 + 4 * (v28 + v19))) ^ v27;
  a2[1] = v28;
  *(a3 + 4128) += 8;
  return result;
}

void GOST2814789IMIT(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v14 = *MEMORY[0x277D85DE8];
  if (v2)
  {
    v11 = v2;
  }

  else
  {
    v11 = &GOST2814789IMIT_m;
  }

  v13 = 0;
  memset(v12, 0, 512);
  Gost2814789_set_sbox(&v12[1] + 4, v3);
  v13 = *v5;
  Gost2814789_set_key(&v12[1] + 4, v7, 256);
  GOST2814789IMIT_Update(v12, v10, v9);
  GOST2814789IMIT_Final(v11, v12);
  explicit_bzero(v12, 0x1044uLL);
}

void *ECDSA_SIG_get0(void *result, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = *result;
  }

  if (a3)
  {
    *a3 = result[1];
  }

  return result;
}

uint64_t ECDSA_SIG_set0(BIGNUM **a1, BIGNUM *a2, BIGNUM *a3)
{
  result = 0;
  if (a2)
  {
    if (a3)
    {
      BN_free(*a1);
      BN_free(a1[1]);
      *a1 = a2;
      a1[1] = a3;
      return 1;
    }
  }

  return result;
}

uint64_t EC_POINT_set_compressed_coordinates(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, BN_CTX *a5)
{
  v10 = a5;
  if (!a5)
  {
    v10 = BN_CTX_new();
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  v11 = *(*a1 + 136);
  if (!v11)
  {
    v12 = 66;
    v13 = 86;
    goto LABEL_7;
  }

  if (*a1 != *a2)
  {
    v12 = 101;
    v13 = 90;
LABEL_7:
    ERR_put_error(16, 4095, v12, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_oct.c", v13);
LABEL_8:
    v14 = 0;
    goto LABEL_10;
  }

  v14 = v11(a1, a2, a3, a4, v10);
LABEL_10:
  if (v10 != a5)
  {
    BN_CTX_free(v10);
  }

  return v14;
}

int EC_POINT_oct2point(const EC_GROUP *a1, EC_POINT *a2, const unsigned __int8 *buf, size_t len, BN_CTX *a5)
{
  v10 = a5;
  if (!a5)
  {
    v10 = BN_CTX_new();
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  v11 = *(*a1 + 152);
  if (!v11)
  {
    v12 = 66;
    v13 = 153;
    goto LABEL_7;
  }

  if (*a1 != *a2)
  {
    v12 = 101;
    v13 = 157;
LABEL_7:
    ERR_put_error(16, 4095, v12, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_oct.c", v13);
LABEL_8:
    v14 = 0;
    goto LABEL_10;
  }

  v14 = v11(a1, a2, buf, len, v10);
LABEL_10:
  if (v10 != a5)
  {
    BN_CTX_free(v10);
  }

  return v14;
}

int X509_ALGOR_set0(X509_ALGOR *alg, ASN1_OBJECT *aobj, int ptype, void *pval)
{
  if (alg)
  {
    v7 = alg;
    if (ptype == -1 || alg->parameter || (alg = ASN1_TYPE_new(), (v7->parameter = alg) != 0))
    {
      if (v7->algorithm)
      {
        ASN1_OBJECT_free(v7->algorithm);
      }

      v7->algorithm = aobj;
      if (ptype)
      {
        if (ptype == -1)
        {
          parameter = v7->parameter;
          if (parameter)
          {
            ASN1_TYPE_free(parameter);
            v7->parameter = 0;
          }
        }

        else
        {
          ASN1_TYPE_set(v7->parameter, ptype, pval);
        }
      }

      LODWORD(alg) = 1;
    }
  }

  return alg;
}

void X509_ALGOR_get0(ASN1_OBJECT **paobj, int *pptype, void **ppval, X509_ALGOR *algor)
{
  if (paobj)
  {
    *paobj = algor->algorithm;
  }

  if (pptype)
  {
    parameter = algor->parameter;
    if (parameter)
    {
      *pptype = parameter->type;
      if (ppval)
      {
        *ppval = parameter->value.ptr;
      }
    }

    else
    {
      *pptype = -1;
    }
  }
}

uint64_t X509_ALGOR_set_md(X509_ALGOR *a1, const EVP_MD *a2)
{
  if ((EVP_MD_flags(a2) & 8) != 0)
  {
    v4 = -1;
  }

  else
  {
    v4 = 5;
  }

  v5 = EVP_MD_type(a2);
  v6 = OBJ_nid2obj(v5);

  return X509_ALGOR_set0(a1, v6, v4, 0);
}

uint64_t X509_ALGOR_cmp(uint64_t a1, uint64_t a2)
{
  result = OBJ_cmp(*a1, *a2);
  if (!result)
  {
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    if (v5 | v6)
    {

      return ASN1_TYPE_cmp(v5, v6);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void CAST_ecb_encrypt(const unsigned __int8 *in, unsigned __int8 *out, const CAST_KEY *key, int enc)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = __PAIR64__(bswap32(*(in + 1)), bswap32(*in));
  if (enc)
  {
    CAST_encrypt(v7, key);
  }

  else
  {
    CAST_decrypt(v7, key);
  }

  v5 = bswap32(HIDWORD(v7[0]));
  *out = bswap32(v7[0]);
  *(out + 1) = v5;
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t GostR3410_get_md_digest(uint64_t result)
{
  if (result == 822)
  {
    return 809;
  }

  else
  {
    return result;
  }
}

uint64_t GostR3410_get_pk_digest(int a1)
{
  if (a1 == 941)
  {
    v1 = 946;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 942)
  {
    v2 = 947;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 822)
  {
    return 811;
  }

  else
  {
    return v2;
  }
}

uint64_t GostR3410_256_param_id(char *a1)
{
  if (!strcasecmp("A", a1))
  {
    return 840;
  }

  v2 = &dword_278C13908;
  v3 = 6;
  do
  {
    v4 = v2;
    if (!--v3)
    {
      break;
    }

    v2 += 4;
  }

  while (strcasecmp(*(v4 - 1), a1));
  return *v4;
}

uint64_t GostR3410_512_param_id(char *a1)
{
  if (!strcasecmp("A", a1))
  {
    return 943;
  }

  v2 = &dword_278C13978;
  v3 = 2;
  do
  {
    v4 = v2;
    if (!--v3)
    {
      break;
    }

    v2 += 4;
  }

  while (strcasecmp(*(v4 - 1), a1));
  return *v4;
}

unint64_t *idea_cfb64_encrypt(unint64_t *result, _BYTE *a2, uint64_t a3, unsigned int *a4, unsigned int *a5, int *a6, int a7)
{
  v10 = a3;
  v12 = result;
  v25 = *MEMORY[0x277D85DE8];
  v13 = *a6;
  if (a7)
  {
    if (a3)
    {
      do
      {
        if (!v13)
        {
          v14 = bswap32(a5[1]);
          v23 = bswap32(*a5);
          v24 = v14;
          result = idea_encrypt(&v23, a4);
          v15 = bswap32(v24);
          *a5 = bswap32(v23);
          a5[1] = v15;
        }

        v16 = *v12;
        v12 = (v12 + 1);
        v17 = *(a5 + v13);
        *a2++ = v17 ^ v16;
        *(a5 + v13) = v17 ^ v16;
        v13 = (v13 + 1) & 7;
        --v10;
      }

      while (v10);
    }
  }

  else if (a3)
  {
    do
    {
      if (!v13)
      {
        v18 = bswap32(a5[1]);
        v23 = bswap32(*a5);
        v24 = v18;
        result = idea_encrypt(&v23, a4);
        v19 = bswap32(v24);
        *a5 = bswap32(v23);
        a5[1] = v19;
      }

      v20 = *v12;
      v12 = (v12 + 1);
      v21 = *(a5 + v13);
      *(a5 + v13) = v20;
      *a2++ = v21 ^ v20;
      v13 = (v13 + 1) & 7;
      --v10;
    }

    while (v10);
  }

  *a6 = v13;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

const DH_METHOD *DH_get_default_method(void)
{
  result = default_DH_method;
  if (!default_DH_method)
  {
    result = DH_OpenSSL();
    default_DH_method = result;
  }

  return result;
}

int DH_set_method(DH *dh, const DH_METHOD *meth)
{
  v4 = *(*&dh->ex_data.dummy + 40);
  if (v4)
  {
    v4(dh);
  }

  ENGINE_finish(dh->meth);
  *&dh->ex_data.dummy = meth;
  dh->meth = 0;
  init = meth->init;
  if (init)
  {
    (init)(dh);
  }

  return 1;
}

DH *__cdecl DH_new_method(ENGINE *engine)
{
  v2 = malloc_type_malloc(0x88uLL, 0x1070040C1BEA720uLL);
  if (!v2)
  {
    ERR_put_error(5, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_lib.c", 125);
    return v2;
  }

  v3 = default_DH_method;
  if (!default_DH_method)
  {
    v3 = DH_OpenSSL();
    default_DH_method = v3;
  }

  *(v2 + 15) = v3;
  if (engine)
  {
    if (!ENGINE_init(engine))
    {
      ERR_put_error(5, 4095, 38, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_lib.c", 133);
      goto LABEL_16;
    }

    *(v2 + 16) = engine;
    goto LABEL_9;
  }

  engine = ENGINE_get_default_DH();
  *(v2 + 16) = engine;
  if (engine)
  {
LABEL_9:
    DH = ENGINE_get_DH(engine);
    *(v2 + 15) = DH;
    if (!DH)
    {
      ERR_put_error(5, 4095, 38, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_lib.c", 143);
      ENGINE_finish(*(v2 + 16));
LABEL_16:
      free(v2);
      return 0;
    }

    goto LABEL_13;
  }

  DH = *(v2 + 15);
LABEL_13:
  *(v2 + 12) = 0;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 22) = 0;
  *(v2 + 26) = 1;
  *(v2 + 12) = DH->flags & 0xFFFFFBFF;
  CRYPTO_new_ex_data(8, v2, v2 + 7);
  v5 = *(*(v2 + 15) + 32);
  if (v5 && !v5(v2))
  {
    ENGINE_finish(*(v2 + 16));
    CRYPTO_free_ex_data(8, v2, v2 + 7);
    goto LABEL_16;
  }

  return v2;
}

void DH_free(DH *dh)
{
  if (dh && CRYPTO_add_lock(&dh->references, -1, 26, 0, 0) <= 0)
  {
    v2 = *(*&dh->ex_data.dummy + 40);
    if (v2)
    {
      v2(dh);
    }

    ENGINE_finish(dh->meth);
    CRYPTO_free_ex_data(8, dh, &dh->ex_data);
    BN_free(dh->p);
    BN_free(dh->g);
    BN_free(dh->q);
    BN_free(dh->j);
    free(dh->seed);
    BN_free(dh->counter);
    BN_free(dh->pub_key);
    BN_free(dh->priv_key);

    free(dh);
  }
}

int DH_size(const DH *dh)
{
  v1 = BN_num_bits(dh->p);
  v2 = v1 + 7;
  if (v1 < -7)
  {
    v2 = v1 + 14;
  }

  return v2 >> 3;
}

uint64_t DH_security_bits(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = BN_num_bits(v2);
  }

  else if (*(a1 + 24) <= 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = *(a1 + 24);
  }

  v4 = BN_num_bits(*(a1 + 8));

  return BN_security_bits(v4, v3);
}

void *DH_get0_pqg(void *result, void *a2, void *a3, void *a4)
{
  if (a2)
  {
    *a2 = result[1];
  }

  if (a3)
  {
    *a3 = result[8];
  }

  if (a4)
  {
    *a4 = result[2];
  }

  return result;
}

uint64_t DH_set0_pqg(uint64_t a1, uint64_t a2, const BIGNUM *a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  if (!(a2 | v5) || !(a4 | *(a1 + 16)))
  {
    return 0;
  }

  if (a2)
  {
    BN_free(v5);
    *(a1 + 8) = a2;
  }

  if (a3)
  {
    BN_free(*(a1 + 64));
    *(a1 + 64) = a3;
    *(a1 + 24) = BN_num_bits(a3);
  }

  if (a4)
  {
    BN_free(*(a1 + 16));
    *(a1 + 16) = a4;
  }

  return 1;
}

uint64_t DH_get0_key(uint64_t result, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = *(result + 32);
  }

  if (a3)
  {
    *a3 = *(result + 40);
  }

  return result;
}

uint64_t DH_set0_key(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    BN_free(*(a1 + 32));
    *(a1 + 32) = a2;
  }

  if (a3)
  {
    BN_free(*(a1 + 40));
    *(a1 + 40) = a3;
  }

  return 1;
}

uint64_t DH_set_length(uint64_t a1, unint64_t a2)
{
  if (a2 >> 31)
  {
    return 0;
  }

  *(a1 + 24) = a2;
  return 1;
}

int EVP_add_cipher(const EVP_CIPHER *cipher)
{
  if (!cipher)
  {
    return 0;
  }

  v2 = OBJ_nid2sn(cipher->nid);
  if (!OBJ_NAME_add(v2, 2, cipher))
  {
    return 0;
  }

  check_defer(cipher->nid);
  v3 = OBJ_nid2ln(cipher->nid);

  return OBJ_NAME_add(v3, 2, cipher);
}

int EVP_add_digest(const EVP_MD *digest)
{
  v2 = OBJ_nid2sn(digest->type);
  result = OBJ_NAME_add(v2, 1, digest);
  if (result)
  {
    check_defer(digest->type);
    v4 = OBJ_nid2ln(digest->type);
    result = OBJ_NAME_add(v4, 1, digest);
    if (result)
    {
      pkey_type = digest->pkey_type;
      if (pkey_type)
      {
        if (digest->type != pkey_type)
        {
          v6 = OBJ_nid2sn(digest->pkey_type);
          result = OBJ_NAME_add(v6, 32769, v2);
          if (result)
          {
            check_defer(digest->pkey_type);
            v7 = OBJ_nid2ln(digest->pkey_type);

            return OBJ_NAME_add(v7, 32769, v2);
          }
        }
      }
    }
  }

  return result;
}

const EVP_CIPHER *__cdecl EVP_get_cipherbyname(const char *name)
{
  if (!OPENSSL_init_crypto(0))
  {
    return 0;
  }

  return OBJ_NAME_get(name, 2);
}

const EVP_MD *__cdecl EVP_get_digestbyname(const char *name)
{
  if (!OPENSSL_init_crypto(0))
  {
    return 0;
  }

  return OBJ_NAME_get(name, 1);
}

void EVP_cleanup(void)
{
  OBJ_NAME_cleanup(2);
  OBJ_NAME_cleanup(1);
  OBJ_NAME_cleanup(-1);
  EVP_PBE_cleanup();
  if (obj_cleanup_defer == 2)
  {
    obj_cleanup_defer = 0;
    OBJ_cleanup();
  }

  OBJ_sigid_free();
}

void EVP_CIPHER_do_all(uint64_t a1, uint64_t a2)
{
  OPENSSL_init_crypto(0);
  v4[0] = a2;
  v4[1] = a1;
  OBJ_NAME_do_all(2, do_all_cipher_fn, v4);
}

uint64_t do_all_cipher_fn(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*(a1 + 4))
  {
    return v3(0, *(a1 + 8), *(a1 + 16), v2);
  }

  else
  {
    return v3(*(a1 + 16), *(a1 + 8), 0, v2);
  }
}

void EVP_CIPHER_do_all_sorted(uint64_t a1, uint64_t a2)
{
  OPENSSL_init_crypto(0);
  v4[0] = a2;
  v4[1] = a1;
  OBJ_NAME_do_all_sorted(2, do_all_cipher_fn, v4);
}

void EVP_MD_do_all(uint64_t a1, uint64_t a2)
{
  OPENSSL_init_crypto(0);
  v4[0] = a2;
  v4[1] = a1;
  OBJ_NAME_do_all(1, do_all_md_fn, v4);
}

uint64_t do_all_md_fn(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*(a1 + 4))
  {
    return v3(0, *(a1 + 8), *(a1 + 16), v2);
  }

  else
  {
    return v3(*(a1 + 16), *(a1 + 8), 0, v2);
  }
}

void EVP_MD_do_all_sorted(uint64_t a1, uint64_t a2)
{
  OPENSSL_init_crypto(0);
  v4[0] = a2;
  v4[1] = a1;
  OBJ_NAME_do_all_sorted(1, do_all_md_fn, v4);
}

void ERR_load_OCSP_strings(void)
{
  if (!ERR_func_error_string(OCSP_str_functs))
  {
    ERR_load_strings(0, &OCSP_str_functs);

    ERR_load_strings(0, &OCSP_str_reasons);
  }
}

int PKCS12_key_gen_asc(const char *pass, int passlen, unsigned __int8 *salt, int saltlen, int id, int iter, int n, unsigned __int8 *out, const EVP_MD *md_type)
{
  passa = 0;
  v17 = 0;
  if (pass)
  {
    if (!OPENSSL_asc2uni(pass, passlen, &passa, &v17))
    {
      ERR_put_error(35, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs12/p12_key.c", 86);
      return 0;
    }

    pass = passa;
    v15 = v17;
  }

  else
  {
    v15 = 0;
    passa = 0;
    v17 = 0;
  }

  result = PKCS12_key_gen_uni(pass, v15, salt, saltlen, id, iter, n, out, md_type);
  if (result)
  {
    freezero(passa, v17);
    return 1;
  }

  return result;
}

int PKCS12_key_gen_uni(unsigned __int8 *pass, int passlen, unsigned __int8 *salt, int saltlen, int id, int iter, int n, unsigned __int8 *out, const EVP_MD *md_type)
{
  v17 = EVP_MD_CTX_new();
  if (!v17 || (v18 = EVP_MD_block_size(md_type), v18 < 1) || (v51 = (v18 - 1), v52 = v18, v19 = EVP_MD_size(md_type), v19 < 1))
  {
    v30 = 0;
    v21 = 0;
LABEL_41:
    v25 = 0;
    v22 = 0;
    goto LABEL_42;
  }

  v20 = v19;
  v50 = iter;
  v21 = malloc_type_malloc(v52, 0xF40305A9uLL);
  if (!v21)
  {
    v30 = 0;
    goto LABEL_41;
  }

  v49 = n;
  v22 = malloc_type_malloc(v20, 0x6992E67DuLL);
  if (!v22 || (v47 = malloc_type_malloc(v52 + 1, 0xB3486226uLL)) == 0)
  {
    v30 = 0;
    v25 = 0;
    goto LABEL_42;
  }

  __dst = out;
  ctx = v17;
  __b = v21;
  v23 = (saltlen + v52 - 1) / v52 * v52;
  if (passlen)
  {
    v24 = (passlen + v52 - 1) / v52 * v52;
  }

  else
  {
    v24 = 0;
  }

  cnt = v24 + v23;
  v25 = malloc_type_malloc(cnt, 0xDABFA12DuLL);
  if (!v25)
  {
    v17 = ctx;
    v21 = __b;
LABEL_47:
    v30 = v47;
    goto LABEL_42;
  }

  memset(__b, id, v52);
  v26 = v25;
  if (v23 >= 1)
  {
    v27 = 0;
    v26 = v25;
    do
    {
      *v26++ = salt[v27 % saltlen];
      ++v27;
    }

    while (v23 != v27);
  }

  if (v24 >= 1)
  {
    v28 = 0;
    do
    {
      v26[v28] = pass[v28 % passlen];
      ++v28;
    }

    while (v24 != v28);
  }

  v17 = ctx;
  v21 = __b;
  v29 = v52;
  if (!EVP_DigestInit_ex(ctx, md_type, 0))
  {
    goto LABEL_47;
  }

  v30 = v47;
  while (EVP_DigestUpdate(ctx, v21, v29) && EVP_DigestUpdate(ctx, v25, cnt) && EVP_DigestFinal_ex(ctx, v22, 0))
  {
    v31 = v50 - 1;
    if (v50 >= 2)
    {
      while (EVP_DigestInit_ex(ctx, md_type, 0) && EVP_DigestUpdate(ctx, v22, v20) && EVP_DigestFinal_ex(ctx, v22, 0))
      {
        if (!--v31)
        {
          goto LABEL_27;
        }
      }

      v21 = __b;
      break;
    }

LABEL_27:
    if (v49 >= v20)
    {
      v32 = v20;
    }

    else
    {
      v32 = v49;
    }

    memcpy(__dst, v22, v32);
    v33 = v49 <= v20;
    v49 -= v20;
    v21 = __b;
    if (v33)
    {
      v42 = 1;
      goto LABEL_43;
    }

    v34 = 0;
    __dst += v20;
    v29 = v52;
    do
    {
      v47[v34] = *(v22 + v34 % v20);
      ++v34;
    }

    while (v52 != v34);
    if (cnt >= 1)
    {
      v35 = 0;
      do
      {
        v36 = 1;
        v37 = &v47[v51];
        v38 = v52 + 1;
        do
        {
          v39 = v35 + v38 - 2;
          v40 = *v37--;
          v41 = v36 + v40 + v25[v39];
          v25[v39] = v41;
          v36 = HIBYTE(v41);
          --v38;
        }

        while (v38 > 1);
        v35 += v52;
      }

      while (v35 < cnt);
    }

    if (!EVP_DigestInit_ex(ctx, md_type, 0))
    {
      break;
    }
  }

LABEL_42:
  ERR_put_error(35, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs12/p12_key.c", 186);
  v42 = 0;
LABEL_43:
  free(v22);
  free(v30);
  free(v21);
  free(v25);
  EVP_MD_CTX_free(v17);
  return v42;
}

void AES_cbc_encrypt(const unsigned __int8 *in, unsigned __int8 *out, const unint64_t length, const AES_KEY *key, unsigned __int8 *ivec, const int enc)
{
  if (enc)
  {
    CRYPTO_cbc128_encrypt(in, out, length, key, ivec, AES_encrypt);
  }

  else
  {
    CRYPTO_cbc128_decrypt(in, out, length, key, ivec, AES_decrypt);
  }
}

EVP_CIPHER_CTX *CMAC_CTX_new()
{
  v0 = malloc_type_malloc(0x130uLL, 0x10E0040F7627181uLL);
  v1 = v0;
  if (v0)
  {
    EVP_CIPHER_CTX_init(v0);
    v1[1].final_used = -1;
  }

  return v1;
}

EVP_CIPHER_CTX *CMAC_CTX_free(EVP_CIPHER_CTX *result)
{
  if (result)
  {
    CMAC_CTX_cleanup(result);
  }

  return result;
}

uint64_t CMAC_CTX_copy(EVP_CIPHER_CTX *a1, EVP_CIPHER_CTX *a2)
{
  if (a2[1].final_used == -1)
  {
    return 0;
  }

  result = EVP_CIPHER_CTX_copy(a1, a2);
  if (result)
  {
    v5 = EVP_CIPHER_CTX_block_size(a2);
    memcpy(&a1[1], &a2[1], v5);
    memcpy(&a1[1].oiv[8], &a2[1].oiv[8], v5);
    memcpy(&a1[1].buf[8], &a2[1].buf[8], v5);
    memcpy(&a1[1].app_data, &a2[1].app_data, v5);
    a1[1].final_used = a2[1].final_used;
    return 1;
  }

  return result;
}

const EVP_CIPHER *CMAC_Init(EVP_CIPHER_CTX *ctx, const unsigned __int8 *a2, uint64_t a3, EVP_CIPHER *cipher, ENGINE *impl)
{
  v5 = a3;
  if (!a2 && !cipher && !a3 && !impl)
  {
    if (ctx[1].final_used == -1)
    {
      return 0;
    }

    result = EVP_EncryptInit_ex(ctx, 0, 0, 0, CMAC_Init_zero_iv);
    if (!result)
    {
      return result;
    }

    v9 = EVP_CIPHER_CTX_block_size(ctx);
    bzero(&ctx[1].buf[8], v9);
    ctx[1].final_used = 0;
    return 1;
  }

  if (cipher)
  {
    v10 = EVP_EncryptInit_ex(ctx, cipher, impl, 0, 0);
    result = (v10 != 0);
    if (!a2 || !v10)
    {
      return result;
    }
  }

  else if (!a2)
  {
    return 1;
  }

  result = EVP_CIPHER_CTX_cipher(ctx);
  if (result)
  {
    result = EVP_CIPHER_CTX_set_key_length(ctx, v5);
    if (result)
    {
      result = EVP_EncryptInit_ex(ctx, 0, 0, a2, CMAC_Init_zero_iv);
      if (result)
      {
        v11 = EVP_CIPHER_CTX_block_size(ctx);
        result = EVP_Cipher(ctx, &ctx[1].buf[8], CMAC_Init_zero_iv, v11);
        if (result)
        {
          make_kn(&ctx[1], &ctx[1].buf[8], v11);
          make_kn(&ctx[1].oiv[8], &ctx[1], v11);
          explicit_bzero(&ctx[1].buf[8], v11);
        }
      }
    }
  }

  return result;
}

uint64_t make_kn(uint64_t result, char *a2, int a3)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v4 = 2 * a2[i];
      *(result + i) = v4;
      if (i < (a3 - 1) && a2[i + 1] < 0)
      {
        *(result + i) = v4 | 1;
      }
    }
  }

  if (*a2 < 0)
  {
    if (a3 == 16)
    {
      v5 = -121;
    }

    else
    {
      v5 = 27;
    }

    *(result + a3 - 1) ^= v5;
  }

  return result;
}

uint64_t CMAC_Update(uint64_t a1, char *a2, size_t a3)
{
  if (*(a1 + 296) == -1)
  {
    return 0;
  }

  v3 = a3;
  if (a3)
  {
    v6 = EVP_CIPHER_CTX_block_size(a1);
    v7 = v6;
    v8 = *(a1 + 296);
    if (v8 < 1)
    {
      goto LABEL_12;
    }

    v9 = v6 - v8 >= v3 ? v3 : v6 - v8;
    memcpy((a1 + 264 + v8), a2, v9);
    *(a1 + 296) += v9;
    v3 -= v9;
    if (v3)
    {
      result = EVP_Cipher(a1, (a1 + 232), (a1 + 264), v7);
      if (!result)
      {
        return result;
      }

      a2 += v9;
LABEL_12:
      while (v3 > v7)
      {
        result = EVP_Cipher(a1, (a1 + 232), a2, v7);
        if (!result)
        {
          return result;
        }

        v3 -= v7;
        a2 += v7;
      }

      memcpy((a1 + 264), a2, v3);
      *(a1 + 296) = v3;
    }
  }

  return 1;
}

uint64_t CMAC_Final(EVP_CIPHER_CTX *a1, _BYTE *a2, void *a3)
{
  if (a1[1].final_used == -1)
  {
    return 0;
  }

  v6 = EVP_CIPHER_CTX_block_size(a1);
  v7 = v6;
  *a3 = v6;
  if (a2)
  {
    final_used = a1[1].final_used;
    if (v6 == final_used)
    {
      if (v6 >= 1)
      {
        v9 = a1 + 1;
        v10 = v6;
        v11 = a2;
        do
        {
          app_data = v9->app_data;
          cipher = v9->cipher;
          v9 = (v9 + 1);
          *v11++ = cipher ^ app_data;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      p_app_data = &a1[1].app_data;
      v16 = &a1[1].app_data + final_used;
      *v16 = 0x80;
      v17 = v6 - final_used;
      if (v17 > 1)
      {
        bzero(v16 + 1, (v17 - 1));
      }

      if (v7 >= 1)
      {
        v18 = v7;
        v19 = a2;
        do
        {
          *v19++ = *(p_app_data - 64) ^ *p_app_data;
          ++p_app_data;
          --v18;
        }

        while (v18);
      }
    }

    if (!EVP_Cipher(a1, a2, a2, v7))
    {
      explicit_bzero(a2, v7);
    }
  }

  return 1;
}

uint64_t CMAC_resume(EVP_CIPHER_CTX *a1)
{
  if (a1[1].final_used == -1)
  {
    return 0;
  }

  else
  {
    return EVP_EncryptInit_ex(a1, 0, 0, 0, &a1[1].buf[8]);
  }
}

ASN1_STRING *__cdecl ASN1_STRING_type_new(int type)
{
  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x1010040A500212DuLL);
  v3 = v2;
  if (v2)
  {
    v2->type = type;
  }

  else
  {
    ERR_put_error(13, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_string.c", 80);
  }

  return v3;
}

void ASN1_STRING_free(ASN1_STRING *a)
{
  if (a)
  {
    ASN1_STRING_clear(&a->length);

    free(a);
  }
}

int *ASN1_STRING_clear(int *result)
{
  v1 = result;
  v2 = *(result + 2);
  if ((v2 & 0x10) == 0)
  {
    result = freezero(*(result + 1), *result);
    v2 = *(v1 + 2);
  }

  *(v1 + 1) = 0;
  *(v1 + 2) = v2 & 0xFFFFFFFFFFFFFFEFLL;
  *v1 = 0;
  return result;
}

int ASN1_STRING_cmp(ASN1_STRING *a, ASN1_STRING *b)
{
  result = -1;
  if (a)
  {
    if (b)
    {
      length = a->length;
      result = length - b->length;
      if (length == b->length)
      {
        result = memcmp(a->data, b->data, length);
        if (!result)
        {
          return a->type - b->type;
        }
      }
    }
  }

  return result;
}

uint64_t ASN1_STRING_copy(ASN1_STRING *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  result = ASN1_STRING_set(a1, *(a2 + 8), *a2);
  if (result)
  {
    a1->type = *(a2 + 4);
    a1->flags = *(a2 + 16) & 0xFFFFFFFFFFFFFFEFLL;
    return 1;
  }

  return result;
}

int ASN1_STRING_set(ASN1_STRING *str, const void *data, int len)
{
  v3 = len;
  if (len == -1)
  {
    if (!data)
    {
      return 0;
    }

    v8 = strlen(data);
    v3 = v8;
    if (v8 >> 31)
    {
      return 0;
    }
  }

  ASN1_STRING_clear(&str->length);
  if (v3 > 0x7FFFFFFE)
  {
    return 0;
  }

  v6 = malloc_type_calloc(1uLL, v3 + 1, 0xA29D1189uLL);
  str->data = v6;
  if (!v6)
  {
    ERR_put_error(13, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_string.c", 180);
    return 0;
  }

  str->length = v3;
  if (data)
  {
    memcpy(v6, data, v3);
    str->data[v3] = 0;
  }

  return 1;
}

ASN1_STRING *__cdecl ASN1_STRING_dup(ASN1_STRING *a)
{
  if (!a)
  {
    return 0;
  }

  v2 = ASN1_STRING_type_new(4);
  v3 = v2;
  if (v2 && !ASN1_STRING_copy(v2, a))
  {
    ASN1_STRING_clear(&v3->length);
    free(v3);
    return 0;
  }

  return v3;
}

void ASN1_STRING_set0(ASN1_STRING *str, void *data, int len)
{
  ASN1_STRING_clear(&str->length);
  str->data = data;
  str->length = len;
}

int ASN1_STRING_print(BIO *bp, ASN1_STRING *v)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!v)
  {
    goto LABEL_21;
  }

  length = v->length;
  if (v->length < 1)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  v7 = v->data;
  do
  {
    v8 = v7[v5];
    if (v8 == 127)
    {
      v8 = 46;
    }

    else
    {
      if (v8 == 10)
      {
        v9 = 10;
      }

      else
      {
        v9 = 46;
      }

      if (v8 == 13)
      {
        v9 = 13;
      }

      if (v8 <= 31)
      {
        v8 = v9;
      }
    }

    data[v6] = v8;
    if (v6 < 79)
    {
      ++v6;
    }

    else
    {
      if (BIO_write(bp, data, v6 + 1) < 1)
      {
        goto LABEL_21;
      }

      v6 = 0;
      length = v->length;
    }

    ++v5;
  }

  while (v5 < length);
  if (v6 < 1 || BIO_write(bp, data, v6) >= 1)
  {
LABEL_20:
    result = 1;
  }

  else
  {
LABEL_21:
    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

int ASN1_STRING_to_UTF8(unsigned __int8 **out, ASN1_STRING *in)
{
  outa = 0;
  length = -1;
  if (out)
  {
    if (in)
    {
      v5 = asn1_tag2charwidth(in->type);
      if (v5 != -1)
      {
        v6 = ASN1_mbstring_copy(&outa, in->data, in->length, v5 | 0x1000, 0x2000uLL);
        v7 = outa;
        if ((v6 & 0x80000000) == 0)
        {
          *out = outa->data;
          length = v7->length;
          v7->data = 0;
          v7->length = 0;
LABEL_7:
          ASN1_STRING_clear(&v7->length);
          free(v7);
          return length;
        }

        length = v6;
        if (outa)
        {
          goto LABEL_7;
        }
      }
    }
  }

  return length;
}

int i2a_ASN1_STRING(BIO *bp, ASN1_STRING *a, int type)
{
  if (!a)
  {
    return 0;
  }

  if (a->length)
  {
    if (a->length >= 1)
    {
      v5 = 0;
      v6 = 0;
      while (1)
      {
        if (v5 && 35 * (v5 / 0x23) == v5)
        {
          if (BIO_write(bp, "\\\n", 2) != 2)
          {
            return -1;
          }

          v6 += 2;
        }

        v7 = a->data;
        data[0] = i2a_ASN1_STRING_h[v7[v5] >> 4];
        data[1] = i2a_ASN1_STRING_h[v7[v5] & 0xF];
        if (BIO_write(bp, data, 2) != 2)
        {
          break;
        }

        v6 += 2;
        if (++v5 >= a->length)
        {
          return v6;
        }
      }

      return -1;
    }

    return 0;
  }

  v6 = 1;
  if (BIO_write(bp, "0", 1) != 1)
  {
    return -1;
  }

  return v6;
}

int a2i_ASN1_STRING(BIO *bp, ASN1_STRING *bs, char *buf, int size)
{
  v8 = BIO_gets(bp, buf, size);
  if (v8 < 1)
  {
    v17 = 0;
    v16 = 0;
    goto LABEL_31;
  }

  v30 = bs;
  bpa = bp;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = buf - 1;
  sizea = size;
  while (2)
  {
    v13 = v12[v8];
    if (v13 == 10)
    {
      buf[--v8] = 0;
      if (!v8)
      {
        goto LABEL_32;
      }

      v13 = v12[v8];
    }

    if (v13 != 13)
    {
      goto LABEL_9;
    }

    buf[--v8] = 0;
    if (!v8)
    {
LABEL_32:
      v17 = v11;
      goto LABEL_33;
    }

    v13 = v12[v8];
LABEL_9:
    v14 = v8 - (v13 == 92);
    buf[v14] = 0;
    if (v14 < 2)
    {
      goto LABEL_32;
    }

    if (v14)
    {
      v28 = 145;
      v29 = 384;
      goto LABEL_35;
    }

    v15 = v14 >> 1;
    v16 = v10 + v15;
    if (v10 + v15 <= v9)
    {
      v17 = v11;
    }

    else
    {
      v17 = malloc_type_realloc(v11, v10 + v15, 0x645093B0uLL);
      v9 = v10 + v15;
      if (!v17)
      {
        v28 = 65;
        v29 = 391;
LABEL_35:
        ERR_put_error(13, 4095, v28, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_string.c", v29);
LABEL_29:
        free(v11);
        return 0;
      }
    }

    v18 = 0;
    v19 = 0;
    while (2)
    {
      v20 = 0;
      v21 = 1;
      do
      {
        v22 = v21;
        v23 = buf[v20 | v19];
        v24 = v23 - 48;
        if ((v23 - 48) >= 0xA)
        {
          if ((v23 - 97) > 5)
          {
            if ((v23 - 65) > 5)
            {
              v25 = 141;
              v26 = 407;
              goto LABEL_28;
            }

            v24 = v23 - 55;
          }

          else
          {
            v24 = v23 - 87;
          }
        }

        v21 = 0;
        v17[v10 + v18] = v24 | (16 * v17[v10 + v18]);
        v20 = 1;
      }

      while ((v22 & 1) != 0);
      ++v18;
      v19 += 2;
      if (v18 != v15)
      {
        continue;
      }

      break;
    }

    if (v13 == 92)
    {
      v8 = BIO_gets(bpa, buf, sizea);
      v10 += v15;
      v11 = v17;
      if (v8 >= 1)
      {
        continue;
      }

LABEL_33:
      v25 = 150;
      v26 = 426;
LABEL_28:
      ERR_put_error(13, 4095, v25, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_string.c", v26);
      v11 = v17;
      goto LABEL_29;
    }

    break;
  }

  bs = v30;
LABEL_31:
  bs->length = v16;
  bs->data = v17;
  return 1;
}

void *DSA_SIG_get0(void *result, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = *result;
  }

  if (a3)
  {
    *a3 = result[1];
  }

  return result;
}

uint64_t DSA_SIG_set0(BIGNUM **a1, BIGNUM *a2, BIGNUM *a3)
{
  result = 0;
  if (a2)
  {
    if (a3)
    {
      BN_free(*a1);
      *a1 = a2;
      BN_free(a1[1]);
      a1[1] = a3;
      return 1;
    }
  }

  return result;
}

int DSA_sign(int type, const unsigned __int8 *dgst, int dlen, unsigned __int8 *sig, unsigned int *siglen, DSA *dsa)
{
  out = sig;
  *siglen = 0;
  v7 = DSA_do_sign(dgst, dlen, dsa);
  v8 = v7;
  if (!v7 || (v9 = ASN1_item_i2d(v7, &out, &DSA_SIG_it), (v9 & 0x80000000) != 0))
  {
    v10 = 0;
  }

  else
  {
    *siglen = v9;
    v10 = 1;
  }

  DSA_SIG_free(v8);
  return v10;
}

int DSA_verify(int type, const unsigned __int8 *dgst, int dgst_len, const unsigned __int8 *sigbuf, int siglen, DSA *dsa)
{
  v18 = sigbuf;
  out = 0;
  v11 = siglen;
  v12 = ASN1_item_d2i(0, &v18, siglen, &DSA_SIG_it);
  v13 = v12;
  if (!v12)
  {
    v15 = 0;
LABEL_6:
    v16 = -1;
    goto LABEL_7;
  }

  v14 = ASN1_item_i2d(v12, &out, &DSA_SIG_it);
  v15 = out;
  if (v14 != siglen || memcmp(out, sigbuf, v11))
  {
    goto LABEL_6;
  }

  v16 = DSA_do_verify(dgst, dgst_len, v13, dsa);
  v15 = out;
LABEL_7:
  free(v15);
  DSA_SIG_free(v13);
  return v16;
}

uint64_t sig_cb(int a1, DSA_SIG **a2)
{
  if (a1)
  {
    return 1;
  }

  v4 = DSA_SIG_new();
  if (v4)
  {
    *a2 = v4;
    return 2;
  }

  else
  {
    ERR_put_error(10, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dsa/dsa_asn1.c", 78);
    return 0;
  }
}

uint64_t dsa_cb(int a1, DSA **a2)
{
  if (a1 == 2)
  {
    DSA_free(*a2);
    *a2 = 0;
    return 2;
  }

  else if (a1)
  {
    return 1;
  }

  else
  {
    v3 = DSA_new();
    *a2 = v3;
    return 2 * (v3 != 0);
  }
}

void err_fns_check()
{
  if (!err_fns)
  {
    CRYPTO_lock(9, 1, 0, 0);
    if (!err_fns)
    {
      err_fns = err_defaults;
    }

    CRYPTO_lock(10, 1, 0, 0);
  }
}

int ERR_set_implementation(const ERR_FNS *fns)
{
  CRYPTO_lock(9, 1, 0, 0);
  v2 = 0;
  if (!err_fns)
  {
    err_fns = fns;
    v2 = 1;
  }

  CRYPTO_lock(10, 1, 0, 0);
  return v2;
}

void ERR_load_ERR_strings_internal()
{
  err_init_thread = pthread_self();
  err_fns_check();
  if (ERR_str_libraries)
  {
    v0 = &ERR_str_libraries;
    do
    {
      (*(err_fns + 24))(v0);
      v1 = v0[2];
      v0 += 2;
    }

    while (v1);
  }

  if (ERR_str_reasons)
  {
    v2 = &ERR_str_reasons;
    do
    {
      (*(err_fns + 24))(v2);
      v3 = v2[2];
      v2 += 2;
    }

    while (v3);
  }

  v4 = ERR_str_functs;
  if (ERR_str_functs)
  {
    v5 = &ERR_str_functs;
    do
    {
      *v5 = v4 | 0x2000000;
      (*(err_fns + 24))(v5);
      v6 = v5[2];
      v5 += 2;
      v4 = v6;
    }

    while (v6);
  }

  CRYPTO_lock(5, 1, 0, 0);
  v7 = build_SYS_str_reasons_init;
  CRYPTO_lock(6, 1, 0, 0);
  if (v7)
  {
    goto LABEL_22;
  }

  CRYPTO_lock(9, 1, 0, 0);
  if (build_SYS_str_reasons_init)
  {
    goto LABEL_21;
  }

  v8 = &build_SYS_str_reasons_strerror_tab;
  v9 = *__error();
  v10 = &qword_27E33AE90;
  for (i = 1; i != 128; ++i)
  {
    *(v10 - 1) = i;
    if (*v10)
    {
      goto LABEL_18;
    }

    v12 = strerror(i);
    if (v12)
    {
      strlcpy(v8, v12, 0x20uLL);
      v13 = v8;
LABEL_16:
      *v10 = v13;
      goto LABEL_18;
    }

    if (!*v10)
    {
      v13 = "unknown";
      goto LABEL_16;
    }

LABEL_18:
    v8 += 32;
    v10 += 2;
  }

  *__error() = v9;
  build_SYS_str_reasons_init = 1;
LABEL_21:
  CRYPTO_lock(10, 1, 0, 0);
LABEL_22:
  v14 = SYS_str_reasons;
  if (SYS_str_reasons)
  {
    v15 = &SYS_str_reasons;
    do
    {
      *v15 = v14 | 0x2000000;
      (*(err_fns + 24))(v15);
      v16 = v15[2];
      v15 += 2;
      v14 = v16;
    }

    while (v16);
  }
}

void ERR_load_ERR_strings(void)
{
  v0 = pthread_self();
  if (!pthread_equal(v0, err_init_thread))
  {
    OPENSSL_init_crypto(0, 0);

    pthread_once(&ERR_load_ERR_strings_once, ERR_load_ERR_strings_internal);
  }
}

void ERR_load_strings(int lib, ERR_STRING_DATA str[])
{
  ERR_load_ERR_strings();
  error = str->error;
  if (str->error)
  {
    do
    {
      if (lib)
      {
        str->error = error | (lib << 24);
      }

      (*(err_fns + 24))(str);
      v5 = str[1].error;
      ++str;
      error = v5;
    }

    while (v5);
  }
}

void ERR_unload_strings(int lib, ERR_STRING_DATA str[])
{
  OPENSSL_init_crypto(0);
  error = str->error;
  if (str->error)
  {
    do
    {
      if (lib)
      {
        str->error = error | (lib << 24);
      }

      (*(err_fns + 32))(str);
      v5 = str[1].error;
      ++str;
      error = v5;
    }

    while (v5);
  }
}

void ERR_free_strings(void)
{
  OPENSSL_init_crypto(0);
  err_fns_check();
  v0 = *(err_fns + 8);

  v0();
}

void ERR_put_error(int lib, int func, int reason, const char *file, int line)
{
  v7 = reason;
  v8 = func;
  v10 = *__error();
  state = ERR_get_state();
  v12 = state;
  v13 = LODWORD(state[1].pid) + 1;
  v14 = -v13 < 0;
  v15 = -v13 & 0xF;
  v16 = v13 & 0xF;
  if (!v14)
  {
    v16 = -v15;
  }

  LODWORD(state[1].pid) = v16;
  if (v16 == HIDWORD(state[1].pid))
  {
    HIDWORD(state[1].pid) = (v16 + 1 - ((v16 + 1 + (((v16 + 1) >> 11) & 0xF)) & 0xF0));
  }

  pid_low = v16;
  v18 = state + 4 * v16;
  *(v18 + 4) = 0;
  v19 = &state->pid + v16;
  v19[10] = (lib << 24) | ((v8 & 0xFFF) << 12) | v7 & 0xFFFu;
  v19[50] = file;
  *(v18 + 132) = line;
  v20 = state->err_data[v16 + 1];
  if (v20 && (v12->err_data_flags[v16 + 2] & 1) != 0)
  {
    free(v20);
    pid_low = SLODWORD(v12[1].pid);
    v12->err_data[pid_low + 1] = 0;
  }

  v12->err_data_flags[pid_low + 2] = 0;
  *__error() = v10;
}

ERR_STATE *ERR_get_state(void)
{
  memset(v6, 0, 512);
  v5 = 0uLL;
  err_fns_check();
  CRYPTO_THREADID_current(&v5);
  v0 = CRYPTO_THREADID_cpy(v6, &v5);
  v1 = (*(err_fns + 56))(v6, v0);
  if (!v1)
  {
    v2 = malloc_type_malloc(0x258uLL, 0x10D004035475690uLL);
    if (v2)
    {
      v1 = v2;
      CRYPTO_THREADID_cpy(v2, &v5);
      v1[1].pid = 0;
      *&v1->err_data[1] = 0u;
      *&v1->err_data[3] = 0u;
      *&v1->err_data[5] = 0u;
      *&v1->err_data[7] = 0u;
      *&v1->err_data[9] = 0u;
      *&v1->err_data[11] = 0u;
      *&v1->err_data[13] = 0u;
      *&v1->err_data[15] = 0u;
      *&v1->err_data_flags[2] = 0u;
      *&v1->err_data_flags[6] = 0u;
      *&v1->err_data_flags[10] = 0u;
      *&v1->err_data_flags[14] = 0u;
      v3 = (*(err_fns + 64))(v1);
      if ((*(err_fns + 56))(v1) != v1)
      {
        v3 = v1;
        v1 = &ERR_get_state_fallback;
LABEL_7:
        ERR_STATE_free(v3);
        return v1;
      }

      if (v3)
      {
        goto LABEL_7;
      }
    }

    else
    {
      return &ERR_get_state_fallback;
    }
  }

  return v1;
}

void ERR_clear_error(void)
{
  state = ERR_get_state();
  v1 = &state->err_data[1];
  v2 = 16;
  v3 = state;
  do
  {
    v3->err_flags[2] = 0;
    *(v1 - 16) = 0;
    if (*v1 && (v3->err_data_flags[2] & 1) != 0)
    {
      free(*v1);
      *v1 = 0;
    }

    v3->err_data_flags[2] = 0;
    v3->err_line[2] = -1;
    v3 = (v3 + 4);
    v1[24] = 0;
    ++v1;
    --v2;
  }

  while (v2);
  state[1].pid = 0;
}

uint64_t get_error_values(int a1, int a2, unint64_t *a3, _DWORD *a4, unint64_t *a5, _DWORD *a6)
{
  state = ERR_get_state();
  v13 = state;
  if (a1 && a2)
  {
    if (a3)
    {
      *a3 = "";
    }

    if (a4)
    {
      *a4 = 0;
    }

    if (a5)
    {
      *a5 = "";
    }

    if (a6)
    {
      *a6 = 0;
    }

    return 68;
  }

  else
  {
    pid_high = HIDWORD(state[1].pid);
    if (pid_high == LODWORD(state[1].pid))
    {
      return 0;
    }

    else
    {
      v17 = pid_high + 1;
      v18 = -v17 < 0;
      v19 = -v17 & 0xF;
      pid = v17 & 0xF;
      if (!v18)
      {
        pid = -v19;
      }

      if (a2)
      {
        pid = state[1].pid;
      }

      v21 = pid;
      v14 = state->err_buffer[pid + 1];
      if (a1)
      {
        HIDWORD(state[1].pid) = pid;
        state->err_buffer[pid + 1] = 0;
      }

      v22 = &state->pid + pid;
      if (a3 && a4)
      {
        v23 = v22[50];
        if (v23)
        {
          *a3 = v23;
          LODWORD(v23) = state->err_line[v21 + 2];
        }

        else
        {
          *a3 = "NA";
        }

        *a4 = v23;
      }

      if (a5)
      {
        v24 = v22[26];
        if (v24)
        {
          *a5 = v24;
          if (a6)
          {
            *a6 = state->err_data_flags[v21 + 2];
          }
        }

        else
        {
          *a5 = "";
          if (a6)
          {
            *a6 = 0;
          }
        }
      }

      else if (a1)
      {
        v25 = state->err_data[v21 + 1];
        if (v25 && (v13->err_data_flags[v21 + 2] & 1) != 0)
        {
          free(v25);
          v13->err_data[v21 + 1] = 0;
        }

        v13->err_data_flags[v21 + 2] = 0;
      }
    }
  }

  return v14;
}

unint64_t ERR_peek_error(void)
{
  state = ERR_get_state();
  pid_high = HIDWORD(state[1].pid);
  if (pid_high == LODWORD(state[1].pid))
  {
    return 0;
  }

  v3 = pid_high + 1;
  v4 = -v3 < 0;
  v5 = -v3 & 0xF;
  v6 = v3 & 0xF;
  if (!v4)
  {
    v6 = -v5;
  }

  return state->err_buffer[v6 + 1];
}

unint64_t ERR_peek_last_error(void)
{
  state = ERR_get_state();
  pid_low = SLODWORD(state[1].pid);
  if (HIDWORD(state[1].pid) == pid_low)
  {
    return 0;
  }

  else
  {
    return state->err_buffer[pid_low + 1];
  }
}

void ERR_error_string_n(unint64_t e, char *buf, size_t len)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = ERR_lib_error_string(e);
  v7 = ERR_func_error_string(e);
  v8 = ERR_reason_error_string(e);
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_14:
    v7 = v15;
    snprintf(v15, 0x1EuLL, "func(%d)", (e >> 12) & 0xFFF);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_15:
    v8 = v14;
    snprintf(v14, 0x1EuLL, "reason(%d)", e & 0xFFF);
    goto LABEL_4;
  }

  v6 = __str;
  snprintf(__str, 0x1EuLL, "lib(%d)", BYTE3(e));
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_4:
  v9 = snprintf(buf, len, "error:%08lX:%s:%s:%s", e, v6, v7, v8);
  if (v9 != -1 && len >= 5 && v9 >= len)
  {
    v10 = &buf[len - 5];
    v11 = 4;
    do
    {
      v12 = strchr(buf, 58);
      if (!v12 || v12 > v10)
      {
        *v10 = 58;
        v12 = v10;
      }

      buf = v12 + 1;
      ++v10;
      --v11;
    }

    while (v11);
  }

  v13 = *MEMORY[0x277D85DE8];
}

const char *__cdecl ERR_lib_error_string(unint64_t e)
{
  v1 = e;
  if (!OPENSSL_init_crypto(0, 0))
  {
    return 0;
  }

  v3[1] = 0;
  err_fns_check();
  v3[0] = v1 & 0xFF000000;
  result = (*(err_fns + 16))(v3);
  if (result)
  {
    return *(result + 1);
  }

  return result;
}

const char *__cdecl ERR_func_error_string(unint64_t e)
{
  v1 = e;
  v3[1] = 0;
  err_fns_check();
  v3[0] = v1 & 0xFFFFF000;
  result = (*(err_fns + 16))(v3);
  if (result)
  {
    return *(result + 1);
  }

  return result;
}

const char *__cdecl ERR_reason_error_string(unint64_t e)
{
  v1 = e;
  v3[1] = 0;
  err_fns_check();
  v3[0] = v1 & 0xFF000FFF;
  result = (*(err_fns + 16))(v3);
  if (result)
  {
    return *(result + 1);
  }

  v3[0] = v1 & 0xFFF;
  result = (*(err_fns + 16))(v3);
  if (result)
  {
    return *(result + 1);
  }

  return result;
}

char *__cdecl ERR_error_string(unint64_t e, char *buf)
{
  if (buf)
  {
    v2 = buf;
  }

  else
  {
    v2 = &ERR_error_string_buf;
  }

  ERR_error_string_n(e, v2, 0x100uLL);
  return v2;
}

LHASH *ERR_get_string_table(void)
{
  err_fns_check();
  v0 = *err_fns;

  return v0(0);
}

LHASH *ERR_get_err_state_table(void)
{
  err_fns_check();
  v0 = *(err_fns + 40);

  return v0(0);
}

void ERR_release_err_state_table(LHASH **hash)
{
  err_fns_check();
  v2 = *(err_fns + 48);

  v2(hash);
}

uint64_t ERR_remove_thread_state(__n128 *a1)
{
  memset(v2, 0, 512);
  if (a1)
  {
    CRYPTO_THREADID_cpy(v2, a1);
  }

  else
  {
    CRYPTO_THREADID_current(v2);
  }

  err_fns_check();
  return (*(err_fns + 72))(v2);
}