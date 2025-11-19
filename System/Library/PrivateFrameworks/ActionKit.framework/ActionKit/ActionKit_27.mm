_OWORD *EVP_PKEY_CTX_dup(uint64_t a1)
{
  if (!*a1 || !*(*a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (v2 && !ENGINE_init(v2))
  {
    ERR_put_error(6, 4095, 38, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_lib.c", 285);
    return 0;
  }

  v3 = malloc_type_malloc(0x50uLL, 0x10F0040FE4E0FE9uLL);
  v4 = v3;
  if (v3)
  {
    *v3 = *a1;
    v5 = *(a1 + 16);
    if (v5)
    {
      CRYPTO_add_lock((v5 + 8), 1, 10, 0, 0);
      v5 = *(a1 + 16);
    }

    *(v4 + 2) = v5;
    v6 = *(a1 + 24);
    if (v6)
    {
      CRYPTO_add_lock((v6 + 8), 1, 10, 0, 0);
      v6 = *(a1 + 24);
    }

    *(v4 + 3) = v6;
    *(v4 + 5) = 0;
    *(v4 + 6) = 0;
    *(v4 + 8) = *(a1 + 32);
    if ((*(*a1 + 16))(v4, a1) <= 0)
    {
      EVP_PKEY_CTX_free(v4);
      return 0;
    }
  }

  return v4;
}

void EVP_PKEY_CTX_free(EVP_PKEY **a1)
{
  if (a1)
  {
    if (*a1)
    {
      v2 = *&(*a1)->save_parameters;
      if (v2)
      {
        v2(a1);
      }
    }

    EVP_PKEY_free(a1[2]);
    EVP_PKEY_free(a1[3]);
    ENGINE_finish(a1[1]);

    free(a1);
  }
}

STACK *EVP_PKEY_meth_add0(char *data)
{
  result = pkey_app_methods;
  if (pkey_app_methods)
  {
    return (sk_push(result, data) != 0);
  }

  result = sk_new(0);
  pkey_app_methods = result;
  if (result)
  {
    return (sk_push(result, data) != 0);
  }

  return result;
}

uint64_t EVP_PKEY_CTX_ctrl(uint64_t *a1, int a2, int a3)
{
  if (!a1 || (v3 = *a1) == 0 || (v4 = *(v3 + 192)) == 0)
  {
    v7 = 356;
    goto LABEL_11;
  }

  if (a2 != -1 && *v3 != a2)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    v8 = 149;
    v9 = 363;
LABEL_15:
    ERR_put_error(6, 4095, v8, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_lib.c", v9);
    return 0xFFFFFFFFLL;
  }

  if ((v5 & a3) == 0)
  {
    v8 = 148;
    v9 = 368;
    goto LABEL_15;
  }

  result = v4();
  if (result != -2)
  {
    return result;
  }

  v7 = 375;
LABEL_11:
  ERR_put_error(6, 4095, 147, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_lib.c", v7);
  return 4294967294;
}

uint64_t EVP_PKEY_CTX_ctrl_str(uint64_t *a1, char *__s1, char *a3)
{
  if (a1 && (v4 = *a1) != 0 && *(v4 + 200))
  {
    v8 = *(v4 + 200);
    if (!strcmp(__s1, "digest"))
    {

      return EVP_PKEY_CTX_md(a1, 248, 1, a3);
    }

    else
    {

      return v8(a1, __s1, a3);
    }
  }

  else
  {
    ERR_put_error(6, 4095, 147, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_lib.c", 385);
    return 4294967294;
  }
}

uint64_t EVP_PKEY_CTX_md(uint64_t *a1, int a2, int a3, char *name)
{
  if (EVP_get_digestbyname(name))
  {

    return EVP_PKEY_CTX_ctrl(a1, -1, a2);
  }

  else
  {
    ERR_put_error(6, 4095, 152, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_lib.c", 433);
    return 0;
  }
}

uint64_t EVP_PKEY_CTX_str2ctrl(uint64_t a1, uint64_t a2, char *__s)
{
  v6 = strlen(__s);
  if (v6 >> 31)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(*a1 + 192);

  return v8(a1, a2, v6, __s);
}

uint64_t EVP_PKEY_CTX_hex2ctrl(uint64_t a1, uint64_t a2, char *str)
{
  len = 0;
  v5 = string_to_hex(str, &len);
  if (v5)
  {
    if (len >> 31)
    {
      v6 = 0xFFFFFFFFLL;
    }

    else
    {
      v6 = (*(*a1 + 192))(a1, a2);
    }
  }

  else
  {
    v6 = 0;
  }

  free(v5);
  return v6;
}

uint64_t EVP_PKEY_CTX_set0_keygen_info(uint64_t result, uint64_t a2, int a3)
{
  *(result + 64) = a2;
  *(result + 72) = a3;
  return result;
}

uint64_t EVP_PKEY_meth_set_paramgen(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 32) = a2;
  *(result + 40) = a3;
  return result;
}

uint64_t EVP_PKEY_meth_set_keygen(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 48) = a2;
  *(result + 56) = a3;
  return result;
}

uint64_t EVP_PKEY_meth_set_sign(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 64) = a2;
  *(result + 72) = a3;
  return result;
}

uint64_t EVP_PKEY_meth_set_verify(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 80) = a2;
  *(result + 88) = a3;
  return result;
}

uint64_t EVP_PKEY_meth_set_verify_recover(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 96) = a2;
  *(result + 104) = a3;
  return result;
}

uint64_t EVP_PKEY_meth_set_signctx(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 112) = a2;
  *(result + 120) = a3;
  return result;
}

uint64_t EVP_PKEY_meth_set_verifyctx(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 128) = a2;
  *(result + 136) = a3;
  return result;
}

uint64_t EVP_PKEY_meth_set_encrypt(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 144) = a2;
  *(result + 152) = a3;
  return result;
}

uint64_t EVP_PKEY_meth_set_decrypt(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 160) = a2;
  *(result + 168) = a3;
  return result;
}

uint64_t EVP_PKEY_meth_set_derive(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 176) = a2;
  *(result + 184) = a3;
  return result;
}

uint64_t EVP_PKEY_meth_set_ctrl(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 192) = a2;
  *(result + 200) = a3;
  return result;
}

void *GOST_KEY_new()
{
  v0 = malloc_type_malloc(0x20uLL, 0x102004016EE4530uLL);
  v1 = v0;
  if (v0)
  {
    v0[2] = 0;
    *v0 = 0u;
    v0[3] = 1;
  }

  else
  {
    ERR_put_error(50, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_key.c", 81);
  }

  return v1;
}

void *GOST_KEY_free(void *result)
{
  if (result)
  {
    v1 = result;
    result = CRYPTO_add_lock(result + 6, -1, 33, 0, 0);
    if (result <= 0)
    {
      EC_GROUP_free(*v1);
      EC_POINT_free(*(v1 + 1));
      BN_free(*(v1 + 2));

      return freezero(v1, 0x20uLL);
    }
  }

  return result;
}

uint64_t GOST_KEY_check_key(uint64_t a1)
{
  if (!a1 || (v2 = *a1) == 0 || (v3 = *(a1 + 8)) == 0)
  {
    ERR_put_error(50, 4095, 67, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_key.c", 120);
    return 0;
  }

  if (!EC_POINT_is_at_infinity(v2, v3))
  {
    v5 = BN_CTX_new();
    if (!v5)
    {
      v4 = 0;
      goto LABEL_6;
    }

    v7 = EC_POINT_new(*a1);
    if (v7)
    {
      if (EC_POINT_is_on_curve(*a1, *(a1 + 8), v5))
      {
        v6 = BN_new();
        if (!v6)
        {
LABEL_27:
          v4 = 0;
          goto LABEL_7;
        }

        if (EC_GROUP_get_order(*a1, v6, v5))
        {
          if (!EC_POINT_mul(*a1, v7, 0, *(a1 + 8), v6, v5))
          {
            v10 = 16;
            v11 = 146;
            goto LABEL_26;
          }

          if (!EC_POINT_is_at_infinity(*a1, v7))
          {
            v10 = 130;
            v11 = 150;
            goto LABEL_26;
          }

          v9 = *(a1 + 16);
          if (v9)
          {
            if ((BN_cmp(v9, v6) & 0x80000000) == 0)
            {
              v10 = 130;
              v11 = 159;
LABEL_26:
              ERR_put_error(50, 4095, v10, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_key.c", v11);
              goto LABEL_27;
            }

            if (!EC_POINT_mul(*a1, v7, *(a1 + 16), 0, 0, v5))
            {
              v10 = 16;
              v11 = 164;
              goto LABEL_26;
            }

            if (EC_POINT_cmp(*a1, v7, *(a1 + 8), v5))
            {
              v10 = 123;
              v11 = 168;
              goto LABEL_26;
            }
          }

          v4 = 1;
          goto LABEL_7;
        }

        v10 = 122;
        v11 = 141;
        goto LABEL_26;
      }

      ERR_put_error(50, 4095, 107, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_key.c", 134);
    }

    v4 = 0;
    v6 = 0;
    goto LABEL_7;
  }

  ERR_put_error(50, 4095, 106, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_key.c", 124);
  v4 = 0;
  v5 = 0;
LABEL_6:
  v6 = 0;
  v7 = 0;
LABEL_7:
  BN_free(v6);
  BN_CTX_free(v5);
  EC_POINT_free(v7);
  return v4;
}

uint64_t GOST_KEY_set_public_key_affine_coordinates(const EC_GROUP **a1, const BIGNUM *a2, const BIGNUM *a3)
{
  if (a1 && a3 && a2 && *a1)
  {
    v6 = BN_CTX_new();
    v7 = v6;
    if (v6)
    {
      BN_CTX_start(v6);
      v8 = EC_POINT_new(*a1);
      if (v8)
      {
        v9 = BN_CTX_get(v7);
        if (v9)
        {
          v10 = v9;
          v11 = BN_CTX_get(v7);
          if (v11)
          {
            v12 = v11;
            if (EC_POINT_set_affine_coordinates(*a1, v8, a2, a3, v7))
            {
              if (EC_POINT_get_affine_coordinates(*a1, v8, v10, v12, v7))
              {
                if (BN_cmp(a2, v10) || BN_cmp(a3, v12))
                {
                  ERR_put_error(50, 4095, 146, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_key.c", 217);
                }

                else if (GOST_KEY_set_public_key(a1, v8))
                {
                  v13 = GOST_KEY_check_key(a1);
                  goto LABEL_17;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v13 = 0;
LABEL_17:
    EC_POINT_free(v8);
    BN_CTX_end(v7);
    BN_CTX_free(v7);
    return v13;
  }

  ERR_put_error(50, 4095, 67, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_key.c", 189);
  return 0;
}

BOOL GOST_KEY_set_public_key(const EC_GROUP **a1, const EC_POINT *a2)
{
  EC_POINT_free(a1[1]);
  v4 = EC_POINT_dup(a2, *a1);
  a1[1] = v4;
  return v4 != 0;
}

BOOL GOST_KEY_set_group(EC_GROUP **a1, const EC_GROUP *a2)
{
  EC_GROUP_free(*a1);
  v4 = EC_GROUP_dup(a2);
  *a1 = v4;
  return v4 != 0;
}

BOOL GOST_KEY_set_private_key(uint64_t a1, const BIGNUM *a2)
{
  BN_free(*(a1 + 16));
  v4 = BN_dup(a2);
  *(a1 + 16) = v4;
  return v4 != 0;
}

uint64_t GOST_KEY_set_digest(uint64_t a1, int a2)
{
  if ((a2 - 941) >= 2 && a2 != 822)
  {
    return 0;
  }

  *(a1 + 28) = a2;
  return 1;
}

BIGNUM *GOST_KEY_get_size(BIGNUM *result)
{
  if (!result)
  {
    return result;
  }

  d = result->d;
  if (!result->d)
  {
    return 0;
  }

  result = BN_new();
  if (!result)
  {
    return result;
  }

  v2 = result;
  if (!EC_GROUP_get_order(d, result, 0))
  {
    BN_free(v2);
    return 0;
  }

  v3 = BN_num_bits(v2);
  if (v3 >= -7)
  {
    v4 = v3 + 7;
  }

  else
  {
    v4 = v3 + 14;
  }

  BN_free(v2);
  return (v4 >> 3);
}

int X509v3_get_ext_count(const STACK *x)
{
  if (x)
  {
    LODWORD(x) = sk_num(x);
  }

  return x;
}

int X509v3_get_ext_by_NID(const STACK *x, int nid, int lastpos)
{
  v5 = OBJ_nid2obj(nid);
  if (!v5)
  {
    return -2;
  }

  return X509v3_get_ext_by_OBJ(x, v5, lastpos);
}

int X509v3_get_ext_by_OBJ(const STACK *x, ASN1_OBJECT *obj, int lastpos)
{
  if (x)
  {
    if (lastpos < 0)
    {
      v5 = -1;
    }

    else
    {
      v5 = lastpos;
    }

    v6 = sk_num(x);
    while (++v5 < v6)
    {
      v7 = sk_value(x, v5);
      if (!OBJ_cmp(*v7, obj))
      {
        return v5;
      }
    }
  }

  return -1;
}

int X509v3_get_ext_by_critical(const STACK *x, int crit, int lastpos)
{
  if (x)
  {
    if (lastpos < 0)
    {
      v5 = -1;
    }

    else
    {
      v5 = lastpos;
    }

    v6 = sk_num(x);
    while (++v5 < v6)
    {
      if ((crit != 0) == *(sk_value(x, v5) + 2) > 0)
      {
        return v5;
      }
    }
  }

  return -1;
}

X509_EXTENSION *__cdecl X509v3_get_ext(const STACK *x, int loc)
{
  if (!x)
  {
    return 0;
  }

  v4 = sk_num(x);
  if (loc < 0 || v4 <= loc)
  {
    return 0;
  }

  return sk_value(x, loc);
}

X509_EXTENSION *__cdecl X509v3_delete_ext(STACK *x, int loc)
{
  if (!x)
  {
    return 0;
  }

  v4 = sk_num(x);
  if (loc < 0 || v4 <= loc)
  {
    return 0;
  }

  return sk_delete(x, loc);
}

STACK *__cdecl X509v3_add_ext(STACK **x, X509_EXTENSION *ex, int loc)
{
  if (!x)
  {
    ERR_put_error(11, 4095, 67, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_v3.c", 167);
    return 0;
  }

  v6 = *x;
  if (!*x)
  {
    v6 = sk_new_null();
    if (!v6)
    {
      ERR_put_error(11, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_v3.c", 192);
      return v6;
    }
  }

  v7 = sk_num(v6);
  v8 = X509_EXTENSION_dup(ex);
  if (!v8)
  {
LABEL_16:
    if (v6 != *x)
    {
      sk_free(v6);
    }

    return 0;
  }

  v9 = v8;
  if (v7 >= loc)
  {
    v10 = loc;
  }

  else
  {
    v10 = v7;
  }

  if (loc >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  if (!sk_insert(v6, v8, v11))
  {
    ERR_put_error(11, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_v3.c", 192);
    X509_EXTENSION_free(v9);
    goto LABEL_16;
  }

  if (!*x)
  {
    *x = v6;
  }

  return v6;
}

X509_EXTENSION *__cdecl X509_EXTENSION_create_by_NID(X509_EXTENSION **ex, int nid, int crit, ASN1_OCTET_STRING *data)
{
  v7 = OBJ_nid2obj(nid);
  if (v7)
  {
    v8 = v7;
    result = X509_EXTENSION_create_by_OBJ(ex, v7, crit, data);
    if (result)
    {
      return result;
    }

    ASN1_OBJECT_free(v8);
  }

  else
  {
    ERR_put_error(11, 4095, 109, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_v3.c", 211);
  }

  return 0;
}

X509_EXTENSION *__cdecl X509_EXTENSION_create_by_OBJ(X509_EXTENSION **ex, ASN1_OBJECT *obj, int crit, ASN1_OCTET_STRING *data)
{
  if (ex && (v8 = *ex) != 0 || (v8 = X509_EXTENSION_new()) != 0)
  {
    if (X509_EXTENSION_set_object(v8, obj) && (!crit ? (v9 = -1) : (v9 = 255), v8->critical = v9, ASN1_STRING_set(v8->value, data->data, data->length)))
    {
      if (ex && !*ex)
      {
        *ex = v8;
      }
    }

    else
    {
      if (!ex || v8 != *ex)
      {
        X509_EXTENSION_free(v8);
      }

      return 0;
    }
  }

  else
  {
    ERR_put_error(11, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_v3.c", 229);
  }

  return v8;
}

int X509_EXTENSION_set_object(X509_EXTENSION *ex, ASN1_OBJECT *obj)
{
  result = 0;
  if (ex)
  {
    if (obj)
    {
      ASN1_OBJECT_free(ex->object);
      v5 = OBJ_dup(obj);
      ex->object = v5;
      return v5 != 0;
    }
  }

  return result;
}

int X509_EXTENSION_set_critical(X509_EXTENSION *ex, int crit)
{
  if (ex)
  {
    if (crit)
    {
      v2 = 255;
    }

    else
    {
      v2 = -1;
    }

    ex->critical = v2;
    LODWORD(ex) = 1;
  }

  return ex;
}

int X509_EXTENSION_set_data(X509_EXTENSION *ex, ASN1_OCTET_STRING *data)
{
  if (ex)
  {
    LODWORD(ex) = ASN1_STRING_set(ex->value, data->data, data->length) != 0;
  }

  return ex;
}

ASN1_OBJECT *__cdecl X509_EXTENSION_get_object(ASN1_OBJECT *ex)
{
  if (ex)
  {
    return ex->sn;
  }

  return ex;
}

ASN1_OCTET_STRING *__cdecl X509_EXTENSION_get_data(ASN1_OCTET_STRING *ne)
{
  if (ne)
  {
    return ne->flags;
  }

  return ne;
}

int X509_EXTENSION_get_critical(X509_EXTENSION *ex)
{
  if (ex)
  {
    LODWORD(ex) = ex->critical > 0;
  }

  return ex;
}

void ERR_load_BN_strings(void)
{
  if (!ERR_func_error_string(BN_str_functs))
  {
    ERR_load_strings(0, &BN_str_functs);

    ERR_load_strings(0, &BN_str_reasons);
  }
}

int X509_issuer_and_serial_cmp(const X509 *a, const X509 *b)
{
  cert_info = a->cert_info;
  v3 = b->cert_info;
  result = ASN1_INTEGER_cmp(a->cert_info->serialNumber, b->cert_info->serialNumber);
  if (!result)
  {
    issuer = cert_info->issuer;
    v6 = v3->issuer;

    return X509_NAME_cmp(issuer, v6);
  }

  return result;
}

int X509_NAME_cmp(const X509_NAME *a, const X509_NAME *b)
{
  if ((!a->hash || a->modified) && i2d_X509_NAME(a, 0) < 0 || (!b->hash || b->modified) && i2d_X509_NAME(b, 0) < 0)
  {
    return -2;
  }

  entries_low = SLODWORD(a[1].entries);
  entries = b[1].entries;
  result = entries_low - entries;
  if (entries_low == entries)
  {
    hash = a->hash;
    v8 = b->hash;

    return memcmp(hash, v8, entries_low);
  }

  return result;
}

unint64_t X509_issuer_and_serial_hash(X509 *a)
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  memset(&v8, 0, sizeof(v8));
  EVP_MD_CTX_init(&v8);
  v2 = X509_NAME_oneline(a->cert_info->issuer, 0, 0);
  if (v2 && (v3 = EVP_md5(), EVP_DigestInit_ex(&v8, v3, 0)) && (v4 = strlen(v2), EVP_DigestUpdate(&v8, v2, v4)))
  {
    free(v2);
    if (EVP_DigestUpdate(&v8, a->cert_info->serialNumber->data, a->cert_info->serialNumber->length) && EVP_DigestFinal_ex(&v8, md, 0))
    {
      v2 = 0;
      v5 = *md;
    }

    else
    {
      v5 = 0;
      v2 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  EVP_MD_CTX_cleanup(&v8);
  free(v2);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

unint64_t X509_NAME_hash(X509_NAME *x)
{
  v8 = *MEMORY[0x277D85DE8];
  i2d_X509_NAME(x, 0);
  hash = x->hash;
  entries_low = SLODWORD(x[1].entries);
  v4 = EVP_sha1();
  if (EVP_Digest(hash, entries_low, md, 0, v4, 0))
  {
    result = *md;
  }

  else
  {
    result = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t X509_NAME_hash_old(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  memset(&v6, 0, sizeof(v6));
  i2d_X509_NAME(a1, 0);
  EVP_MD_CTX_init(&v6);
  v2 = EVP_md5();
  if (EVP_DigestInit_ex(&v6, v2, 0) && EVP_DigestUpdate(&v6, *(*(a1 + 16) + 8), **(a1 + 16)) && EVP_DigestFinal_ex(&v6, md, 0))
  {
    v3 = *md;
  }

  else
  {
    v3 = 0;
  }

  EVP_MD_CTX_cleanup(&v6);
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

int X509_cmp(const X509 *a, const X509 *b)
{
  X509_check_purpose(a, -1, 0);
  X509_check_purpose(b, -1, 0);

  return memcmp(&a->sha1_hash[16], &b->sha1_hash[16], 0x40uLL);
}

X509 *__cdecl X509_find_by_issuer_and_serial(STACK *sk, X509_NAME *name, ASN1_INTEGER *serial)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!sk)
  {
    goto LABEL_6;
  }

  v8[0] = 0;
  v8[2] = 0;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *b = v8;
  v8[1] = serial;
  v8[3] = name;
  if (sk_num(sk) >= 1)
  {
    v4 = 0;
    v18 = 0u;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    memset(&b[8], 0, 160);
    while (1)
    {
      v5 = sk_value(sk, v4);
      if (!X509_issuer_and_serial_cmp(v5, b))
      {
        break;
      }

      if (++v4 >= sk_num(sk))
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

X509 *__cdecl X509_find_by_subject(STACK *sk, X509_NAME *name)
{
  if (sk_num(sk) < 1)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = sk_value(sk, v4);
    if (!X509_NAME_cmp(*(*v5 + 40), name))
    {
      break;
    }

    if (++v4 >= sk_num(sk))
    {
      return 0;
    }
  }

  return v5;
}

EVP_PKEY *__cdecl X509_get_pubkey(X509 *x)
{
  if (x && x->cert_info)
  {
    return X509_PUBKEY_get(x->cert_info->key);
  }

  else
  {
    return 0;
  }
}

EVP_PKEY *X509_get0_pubkey(uint64_t a1)
{
  if (a1 && *a1)
  {
    return X509_PUBKEY_get0(*(*a1 + 48));
  }

  else
  {
    return 0;
  }
}

ASN1_BIT_STRING *__cdecl X509_get0_pubkey_bitstr(ASN1_BIT_STRING *x)
{
  if (x)
  {
    return *(*(*&x->length + 48) + 8);
  }

  return x;
}

int X509_check_private_key(X509 *x509, EVP_PKEY *pkey)
{
  if (x509 && x509->cert_info && (v3 = X509_PUBKEY_get0(x509->cert_info->key)) != 0 && (v4 = EVP_PKEY_cmp(v3, pkey), v4 != -2))
  {
    if (v4 == -1)
    {
      ERR_put_error(11, 4095, 115, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_cmp.c", 397);
      v4 = -1;
    }

    else if (!v4)
    {
      ERR_put_error(11, 4095, 116, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_cmp.c", 394);
      v4 = 0;
    }
  }

  else
  {
    ERR_put_error(11, 4095, 117, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_cmp.c", 400);
    v4 = -2;
  }

  return v4 > 0;
}

STACK *X509_chain_up_ref(STACK *a1)
{
  v1 = sk_dup(a1);
  if (sk_num(v1))
  {
    v2 = 0;
    do
    {
      v3 = sk_value(v1, v2);
      X509_up_ref(v3);
      ++v2;
    }

    while (v2 < sk_num(v1));
  }

  return v1;
}

BIGNUM *BN_new(void)
{
  v0 = malloc_type_calloc(1uLL, 0x18uLL, 0x1010040113C0ABBuLL);
  v1 = v0;
  if (v0)
  {
    v0->flags = 1;
  }

  else
  {
    ERR_put_error(3, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_lib.c", 77);
  }

  return v1;
}

void BN_init(BIGNUM *a1)
{
  a1->d = 0;
  *&a1->top = 0;
  *&a1->neg = 0;
}

void BN_clear(BIGNUM *a)
{
  d = a->d;
  if (d)
  {
    explicit_bzero(d, 8 * a->dmax);
  }

  a->top = 0;
  a->neg = 0;
}

void BN_free(BIGNUM *a)
{
  if (a)
  {
    flags = a->flags;
    if ((flags & 2) == 0)
    {
      freezero(a->d, 8 * a->dmax);
      flags = a->flags;
    }

    if ((flags & 1) == 0)
    {

      explicit_bzero(a, 0x18uLL);
    }

    freezero(a, 0x18uLL);
  }
}

__n128 BN_with_flags(__n128 *a1, __n128 *a2, int a3)
{
  result = *a2;
  v4 = a1[1].n128_u32[1] & 1 | a3 | a2[1].n128_u32[1] & 0xFFFFFFFC | 2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  a1[1].n128_u32[1] = v4;
  return result;
}

uint64_t bn_word_clz(unint64_t a1)
{
  v1 = 0;
  v2 = 64;
  v3 = 64;
  do
  {
    v3 += (v1 & (v2 >> 1)) - ((v2 >> 1) & ~v1);
    if (a1 >> v3)
    {
      v1 = -1;
    }

    else
    {
      v1 = 0;
    }

    v4 = v2 > 3;
    v2 >>= 1;
  }

  while (v4);
  v5 = v1 - v3;
  if (a1)
  {
    v6 = 64;
  }

  else
  {
    v6 = 65;
  }

  return (v6 + v5);
}

int BN_num_bits_word(unint64_t a1)
{
  v1 = 0;
  v2 = 64;
  v3 = 64;
  do
  {
    v3 += (v1 & (v2 >> 1)) - ((v2 >> 1) & ~v1);
    if (a1 >> v3)
    {
      v1 = -1;
    }

    else
    {
      v1 = 0;
    }

    v4 = v2 > 3;
    v2 >>= 1;
  }

  while (v4);
  return v3 - v1 - (a1 == 0);
}

int BN_num_bits(const BIGNUM *a)
{
  top = a->top;
  if (top < 1)
  {
    return 0;
  }

  v2 = 0;
  d = a->d;
  v4 = a->top;
  do
  {
    v5 = *d++;
    v2 |= v5;
    --v4;
  }

  while (v4);
  if (!v2)
  {
    return 0;
  }

  v6 = 0;
  v7 = top - 1;
  v8 = a->d[v7];
  v9 = 64;
  v10 = 64;
  do
  {
    v10 += (v6 & (v9 >> 1)) - ((v9 >> 1) & ~v6);
    if (v8 >> v10)
    {
      v6 = -1;
    }

    else
    {
      v6 = 0;
    }

    v11 = v9 > 3;
    v9 >>= 1;
  }

  while (v11);
  return v10 - v6 - (v8 == 0) + (v7 << 6);
}

BOOL BN_is_zero(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = 0;
  v3 = *a1;
  do
  {
    v4 = *v3++;
    v2 |= v4;
    --v1;
  }

  while (v1);
  return v2 == 0;
}

uint64_t bn_correct_top(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 >= 1)
  {
    v2 = *result - 8;
    do
    {
      if (*(v2 + 8 * v1))
      {
        break;
      }

      v3 = __OFSUB__(v1--, 1);
      *(result + 8) = v1;
    }

    while (!((v1 < 0) ^ v3 | (v1 == 0)));
  }

  return result;
}

uint64_t bn_expand(uint64_t a1, unsigned int a2)
{
  if (a2 <= 0x7FFFFFC0)
  {
    return bn_wexpand(a1, (a2 + 63) >> 6);
  }

  else
  {
    return 0;
  }
}

uint64_t bn_wexpand(uint64_t a1, size_t count)
{
  if ((count & 0x80000000) != 0)
  {
    return 0;
  }

  v2 = count;
  v4 = *(a1 + 12);
  if (v4 >= v2)
  {
    return 1;
  }

  if (v2 < 0x800000)
  {
    if ((*(a1 + 20) & 2) != 0)
    {
      v5 = 105;
      v6 = 221;
      goto LABEL_12;
    }

    v8 = recallocarray(*a1, v4, v2, 8uLL);
    if (!v8)
    {
      v5 = 65;
      v6 = 227;
      goto LABEL_12;
    }

    *a1 = v8;
    *(a1 + 12) = v2;
    return 1;
  }

  v5 = 114;
  v6 = 217;
LABEL_12:
  ERR_put_error(3, 4095, v5, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_lib.c", v6);
  return 0;
}

BIGNUM *__cdecl BN_dup(const BIGNUM *a)
{
  if (!a)
  {
    return 0;
  }

  v2 = BN_new();
  v3 = v2;
  if (v2 && !BN_copy(v2, a))
  {
    BN_free(v3);
    return 0;
  }

  return v3;
}

BIGNUM *__cdecl BN_copy(BIGNUM *a, const BIGNUM *b)
{
  v2 = a;
  if (a != b)
  {
    if (bn_wexpand(a, b->top))
    {
      top = b->top;
      if (top >= 1)
      {
        d = b->d;
        v6 = v2->d;
        v7 = top + 1;
        do
        {
          v8 = *d++;
          *v6++ = v8;
          --v7;
        }

        while (v7 > 1);
      }

      neg = b->neg;
      v10 = v2->flags | b->flags & 4;
      v2->top = top;
      v2->neg = neg;
      v2->flags = v10;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void BN_swap(BIGNUM *a, BIGNUM *b)
{
  flags = b->flags;
  d = a->d;
  neg = a->neg;
  v4 = a->flags;
  a->d = b->d;
  v6 = *&b->top;
  b->d = d;
  v7 = *&a->top;
  *&a->top = v6;
  a->neg = b->neg;
  *&b->top = v7;
  a->flags = flags & 2 | v4 & 1;
  b->neg = neg;
  b->flags = v4 & 2 | flags & 1;
}

unint64_t BN_get_word(const BIGNUM *a)
{
  top = a->top;
  if (top > 1)
  {
    return -1;
  }

  if (top == 1)
  {
    return *a->d;
  }

  return 0;
}

int BN_set_word(BIGNUM *a, unint64_t w)
{
  result = bn_wexpand(a, 1uLL);
  if (result)
  {
    a->neg = 0;
    *a->d = w;
    a->top = w != 0;
    return 1;
  }

  return result;
}

int BN_ucmp(const BIGNUM *a, const BIGNUM *b)
{
  top = a->top;
  v3 = b->top;
  if (top < v3)
  {
    return -1;
  }

  if (top > v3)
  {
    return 1;
  }

  v5 = top - 1;
  do
  {
    if (v5 + 1 < 1)
    {
      return 0;
    }

    v6 = a->d[v5];
    v7 = b->d[v5--];
  }

  while (v6 == v7);
  if (v6 > v7)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

int BN_cmp(const BIGNUM *a, const BIGNUM *b)
{
  if (a && b)
  {
    neg = a->neg;
    v3 = b->neg - neg;
    if (!v3)
    {
      if (neg)
      {
        top = b->top;
        v5 = a->top;
        if (top >= v5)
        {
          if (top <= v5)
          {
            v6 = top - 1;
            while (v6 + 1 >= 1)
            {
              v7 = b->d[v6];
              v8 = a->d[v6--];
              v9 = v7 > v8;
              if (v7 != v8)
              {
                goto LABEL_22;
              }
            }

            return 0;
          }

          return 1;
        }
      }

      else
      {
        v11 = a->top;
        v12 = b->top;
        if (v11 >= v12)
        {
          if (v11 <= v12)
          {
            v13 = v11 - 1;
            while (v13 + 1 >= 1)
            {
              v14 = a->d[v13];
              v15 = b->d[v13--];
              v9 = v14 > v15;
              if (v14 != v15)
              {
LABEL_22:
                if (v9)
                {
                  return 1;
                }

                else
                {
                  return -1;
                }
              }
            }

            return 0;
          }

          return 1;
        }
      }

      return -1;
    }
  }

  else if (a)
  {
    return -1;
  }

  else
  {
    return b != 0;
  }

  return v3;
}

int BN_set_bit(BIGNUM *a, int n)
{
  if (n < 0)
  {
    return 0;
  }

  v2 = n;
  v4 = n >> 6;
  if (a->top <= (n >> 6))
  {
    result = bn_wexpand(a, (v4 + 1));
    if (!result)
    {
      return result;
    }

    top = a->top;
    if (v4 >= top)
    {
      bzero(&a->d[top], 8 * (v4 - top) + 8);
    }

    a->top = v4 + 1;
  }

  result = 1;
  a->d[v4] |= 1 << (v2 & 0x3F);
  return result;
}

int BN_clear_bit(BIGNUM *a, int n)
{
  if (n < 0)
  {
    return 0;
  }

  top = a->top;
  if (top <= (n >> 6))
  {
    return 0;
  }

  d = a->d;
  a->d[n >> 6] &= ~(1 << n);
  do
  {
    if (d[top - 1])
    {
      break;
    }

    v4 = __OFSUB__(top--, 1);
    a->top = top;
  }

  while (!((top < 0) ^ v4 | (top == 0)));
  return 1;
}

int BN_is_bit_set(const BIGNUM *a, int n)
{
  if (n < 0 || a->top <= (n >> 6))
  {
    LODWORD(v2) = 0;
  }

  else
  {
    return (a->d[n >> 6] >> n) & 1;
  }

  return v2;
}

int BN_mask_bits(BIGNUM *a, int n)
{
  if (n < 0)
  {
    return 0;
  }

  v2 = n >> 6;
  if ((n >> 6) >= a->top)
  {
    return 0;
  }

  if ((n & 0x3F) != 0)
  {
    a->d[v2++] &= ~(-1 << (n & 0x3F));
    a->top = v2;
    goto LABEL_7;
  }

  a->top = v2;
  if (n >= 0x40)
  {
LABEL_7:
    v4 = a->d - 1;
    do
    {
      if (v4[v2])
      {
        break;
      }

      v5 = __OFSUB__(v2--, 1);
      a->top = v2;
    }

    while (!((v2 < 0) ^ v5 | (v2 == 0)));
  }

  return 1;
}

void BN_set_negative(BIGNUM *b, int n)
{
  top = b->top;
  if (top < 1)
  {
    v6 = 0;
  }

  else
  {
    v3 = 0;
    d = b->d;
    do
    {
      v5 = *d++;
      v3 |= v5;
      --top;
    }

    while (top);
    v6 = v3 != 0;
  }

  if (!n)
  {
    v6 = 0;
  }

  b->neg = v6;
}

uint64_t BN_consttime_swap(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (a2 == a3)
  {
    BN_consttime_swap_cold_2();
  }

  if ((result & (result - 1)) != 0)
  {
    BN_consttime_swap_cold_1();
  }

  v4 = ((result - 1) >> 63) - 1;
  v5 = *(a2 + 8);
  v6 = (*(a3 + 8) ^ v5) & v4;
  *(a2 + 8) = v6 ^ v5;
  *(a3 + 8) ^= v6;
  if (a4 > 5)
  {
    if (a4 <= 7)
    {
      if (a4 == 6)
      {
        v7 = *a2;
        v8 = *a3;
LABEL_31:
        v20 = v7[5];
        v21 = (v8[5] ^ v20) & v4;
        v7[5] = v21 ^ v20;
        v8[5] ^= v21;
        goto LABEL_32;
      }

      v7 = *a2;
      v8 = *a3;
LABEL_30:
      v18 = v7[6];
      v19 = (v8[6] ^ v18) & v4;
      v7[6] = v19 ^ v18;
      v8[6] ^= v19;
      goto LABEL_31;
    }

    switch(a4)
    {
      case 8:
        v7 = *a2;
        v8 = *a3;
LABEL_29:
        v16 = v7[7];
        v17 = (v8[7] ^ v16) & v4;
        v7[7] = v17 ^ v16;
        v8[7] ^= v17;
        goto LABEL_30;
      case 9:
        v7 = *a2;
        v8 = *a3;
LABEL_28:
        v14 = v7[8];
        v15 = (v8[8] ^ v14) & v4;
        v7[8] = v15 ^ v14;
        v8[8] ^= v15;
        goto LABEL_29;
      case 10:
        v7 = *a2;
        v8 = *a3;
LABEL_27:
        v12 = v7[9];
        v13 = (v8[9] ^ v12) & v4;
        v7[9] = v13 ^ v12;
        v8[9] ^= v13;
        goto LABEL_28;
    }

LABEL_24:
    v7 = *a2;
    v8 = *a3;
    if (a4 >= 11)
    {
      v9 = 10;
      do
      {
        v10 = v7[v9];
        v11 = (v8[v9] ^ v10) & v4;
        v7[v9] = v11 ^ v10;
        v8[v9++] ^= v11;
      }

      while (a4 != v9);
    }

    goto LABEL_27;
  }

  if (a4 > 2)
  {
    if (a4 == 3)
    {
      v7 = *a2;
      v8 = *a3;
LABEL_34:
      v26 = v7[2];
      v27 = (v8[2] ^ v26) & v4;
      v7[2] = v27 ^ v26;
      v8[2] ^= v27;
      goto LABEL_35;
    }

    if (a4 == 4)
    {
      v7 = *a2;
      v8 = *a3;
LABEL_33:
      v24 = v7[3];
      v25 = (v8[3] ^ v24) & v4;
      v7[3] = v25 ^ v24;
      v8[3] ^= v25;
      goto LABEL_34;
    }

    v7 = *a2;
    v8 = *a3;
LABEL_32:
    v22 = v7[4];
    v23 = (v8[4] ^ v22) & v4;
    v7[4] = v23 ^ v22;
    v8[4] ^= v23;
    goto LABEL_33;
  }

  if (a4 != 1)
  {
    if (a4 == 2)
    {
      v7 = *a2;
      v8 = *a3;
LABEL_35:
      v28 = v7[1];
      v29 = (v8[1] ^ v28) & v4;
      v7[1] = v29 ^ v28;
      v8[1] ^= v29;
      goto LABEL_36;
    }

    goto LABEL_24;
  }

  v7 = *a2;
  v8 = *a3;
LABEL_36:
  v30 = (*v8 ^ *v7) & v4;
  *v7 ^= v30;
  *v8 ^= v30;
  return result;
}

uint64_t BN_swap_ct(uint64_t a1, uint64_t a2, uint64_t a3, size_t count)
{
  if (a2 == a3)
  {
    return 1;
  }

  v4 = count;
  if (count >> 31)
  {
    return 0;
  }

  result = bn_wexpand(a2, count);
  if (result)
  {
    result = bn_wexpand(a3, v4);
    if (result)
    {
      v9 = *(a2 + 8);
      if (v9 > v4 || (v10 = *(a3 + 8), v10 > v4))
      {
        ERR_put_error(3, 4095, 106, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_lib.c", 565);
        return 0;
      }

      v11 = (((a1 - 1) & ~a1) >> 63) - 1;
      v12 = (v10 ^ v9) & v11;
      *(a2 + 8) = v12 ^ v9;
      *(a3 + 8) ^= v12;
      v13 = *(a2 + 16);
      v14 = *(a2 + 20);
      v15 = (*(a3 + 16) ^ v13) & v11;
      v16 = v11 & (*(a3 + 20) ^ v14) & 4;
      *(a2 + 16) = v15 ^ v13;
      *(a2 + 20) = v16 ^ v14;
      v17 = v16 ^ *(a3 + 20);
      *(a3 + 16) ^= v15;
      *(a3 + 20) = v17;
      if (v4)
      {
        v18 = *a2;
        v19 = *a3;
        result = 1;
        do
        {
          v20 = (*v19 ^ *v18) & v11;
          *v18++ ^= v20;
          *v19++ ^= v20;
          --v4;
        }

        while (v4);
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t BN_zero(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t BN_one(uint64_t a1)
{
  v2 = 1;
  if (!bn_wexpand(a1, 1uLL))
  {
    return 0;
  }

  *(a1 + 16) = 0;
  **a1 = 1;
  *(a1 + 8) = 1;
  return v2;
}

uint64_t BN_abs_is_word(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 == 1 && **a1 == a2)
  {
    return 1;
  }

  v4 = v2 == 0;
  return !a2 && v4;
}

BOOL BN_is_word(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 == 1 && **a1 == a2)
  {
    if (!a2)
    {
      return 1;
    }

    return *(a1 + 16) == 0;
  }

  else
  {
    return !a2 && v2 == 0;
  }
}

uint64_t BN_is_odd(uint64_t a1)
{
  if (*(a1 + 8) < 1)
  {
    return 0;
  }

  else
  {
    return **a1 & 1;
  }
}

char *BN_options(void)
{
  if ((BN_options_init & 1) == 0)
  {
    BN_options_init = 1;
    snprintf(BN_options_data, 0x10uLL, "bn(%d,%d)", 64, 64);
  }

  return BN_options_data;
}

uint64_t BN_security_bits(int a1, int a2)
{
  if (a1 <= 15359)
  {
    if (a1 <= 7679)
    {
      if (a1 <= 3071)
      {
        if (a1 <= 2047)
        {
          if (a1 < 1024)
          {
            return 0;
          }

          result = 80;
        }

        else
        {
          result = 112;
        }
      }

      else
      {
        result = 128;
      }
    }

    else
    {
      result = 192;
    }
  }

  else
  {
    result = 256;
  }

  if (a2 == -1)
  {
    return result;
  }

  if (a2 < 160)
  {
    return 0;
  }

  if (a2 >> 1 >= result)
  {
    return result;
  }

  else
  {
    return a2 >> 1;
  }
}

void BN_GENCB_free(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t BN_GENCB_set_old(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 1;
  *(result + 8) = a3;
  *(result + 16) = a2;
  return result;
}

uint64_t BN_GENCB_set(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 8) = a3;
  *(result + 16) = a2;
  return result;
}

int EVP_VerifyFinal(EVP_MD_CTX *ctx, const unsigned __int8 *sigbuf, unsigned int siglen, EVP_PKEY *pkey)
{
  v16 = *MEMORY[0x277D85DE8];
  s = 0;
  v13 = 0u;
  memset(&v12, 0, sizeof(v12));
  EVP_MD_CTX_init(&v12);
  if (EVP_MD_CTX_copy_ex(&v12, ctx) && EVP_DigestFinal_ex(&v12, md, &s))
  {
    EVP_MD_CTX_cleanup(&v12);
    v6 = EVP_PKEY_CTX_new(pkey, 0);
    v7 = v6;
    if (v6 && EVP_PKEY_verify_init(v6) >= 1)
    {
      digest = ctx->digest;
      v9 = -1;
      if (EVP_PKEY_CTX_ctrl(v7, -1, 248) >= 1)
      {
        v9 = EVP_PKEY_verify(v7);
      }
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  EVP_PKEY_CTX_free(v7);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t oid_module_init(const CONF_IMODULE *a1, const CONF *a2)
{
  value = CONF_imodule_get_value(a1);
  section = NCONF_get_section(a2, value);
  if (!section)
  {
    v28 = 172;
    v29 = 84;
    goto LABEL_32;
  }

  v5 = section;
  if (sk_num(section) < 1)
  {
    return 1;
  }

  v6 = 0;
  v7 = MEMORY[0x277D85DE0];
LABEL_4:
  v8 = sk_value(v5, v6);
  v9 = *(v8 + 1);
  v10 = *(v8 + 2);
  v11 = strrchr(v10, 44);
  if (v11)
  {
    v12 = v11;
    v14 = v11 + 1;
    v13 = v11[1];
    if (!v13)
    {
      goto LABEL_31;
    }

    if (v11[1] < 0)
    {
      goto LABEL_9;
    }

    while ((*(v7 + 4 * v13 + 60) & 0x4000) != 0)
    {
      while (1)
      {
        v15 = *++v14;
        v13 = v15;
        if ((v15 & 0x80) == 0)
        {
          break;
        }

LABEL_9:
        if (!__maskrune(v13, 0x4000uLL))
        {
          goto LABEL_12;
        }
      }
    }

LABEL_12:
    v16 = OBJ_create(v14, v9, 0);
    if (!v16)
    {
      goto LABEL_31;
    }

    v17 = v16;
    v18 = v12 - v10;
    do
    {
      v19 = v10;
      v20 = v18;
      v21 = *v10;
      if (v21 < 0)
      {
        v22 = __maskrune(*v10, 0x4000uLL);
      }

      else
      {
        v22 = *(v7 + 4 * v21 + 60) & 0x4000;
      }

      ++v10;
      v18 = v20 - 1;
    }

    while (v22);
    while (1)
    {
      v24 = *--v12;
      v23 = v24;
      if (v24 < 0)
      {
        if (!__maskrune(v23, 0x4000uLL))
        {
LABEL_26:
          v25 = malloc_type_malloc(v20 + 1, 0xCFC81D5EuLL);
          if (!v25)
          {
            goto LABEL_31;
          }

          v26 = v25;
          memcpy(v25, v19, v20);
          v26[v20] = 0;
          OBJ_nid2obj(v17)->ln = v26;
LABEL_28:
          if (++v6 >= sk_num(v5))
          {
            return 1;
          }

          goto LABEL_4;
        }
      }

      else if ((*(v7 + 4 * v23 + 60) & 0x4000) == 0)
      {
        goto LABEL_26;
      }

      --v20;
      if (v12 == v19)
      {
        goto LABEL_31;
      }
    }
  }

  if (OBJ_create(v10, v9, v9))
  {
    goto LABEL_28;
  }

LABEL_31:
  v28 = 171;
  v29 = 90;
LABEL_32:
  ERR_put_error(13, 4095, v28, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn_moid.c", v29);
  return 0;
}

ASN1_VALUE *cms_DigestedData_create(const EVP_MD *a1)
{
  v2 = CMS_ContentInfo_new();
  if (v2)
  {
    v3 = ASN1_item_new(&CMS_DigestedData_it);
    if (v3)
    {
      v4 = v3;
      *v2 = OBJ_nid2obj(25);
      *(v2 + 1) = v4;
      *v4 = 0;
      v5 = OBJ_nid2obj(21);
      v6 = *(v4 + 1);
      **(v4 + 2) = v5;
      X509_ALGOR_set_md(v6, a1);
    }

    else
    {
      CMS_ContentInfo_free(v2);
      return 0;
    }
  }

  return v2;
}

BOOL cms_DigestedData_do_final(uint64_t a1, BIO *a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = EVP_MD_CTX_new();
  v7 = v6;
  s = 0;
  if (v6)
  {
    v8 = *(a1 + 8);
    if (!cms_DigestAlgorithm_find_ctx(v6, a2, *(v8 + 8)) || EVP_DigestFinal_ex(v7, md, &s) < 1)
    {
      goto LABEL_10;
    }

    if (!a3)
    {
      v12 = ASN1_STRING_set(*(v8 + 24), md, s) != 0;
      goto LABEL_11;
    }

    v9 = *(v8 + 24);
    if (s == *v9)
    {
      if (!memcmp(md, *(v9 + 8), s))
      {
        v12 = 1;
        goto LABEL_11;
      }

      v10 = 158;
      v11 = 137;
    }

    else
    {
      v10 = 121;
      v11 = 132;
    }
  }

  else
  {
    v10 = 65;
    v11 = 118;
  }

  ERR_put_error(46, 4095, v10, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_dd.c", v11);
LABEL_10:
  v12 = 0;
LABEL_11:
  EVP_MD_CTX_free(v7);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void *CBS_init(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  result[2] = a3;
  return result;
}

void *CBS_dup(void *result, void *a2)
{
  v2 = result[2];
  a2[1] = v2;
  a2[2] = v2;
  v3 = result[1];
  *a2 = *result;
  a2[1] = v3;
  return result;
}

uint64_t CBS_skip(void *a1, unint64_t a2)
{
  v2 = a1[2];
  v3 = v2 >= a2;
  v4 = v2 - a2;
  if (!v3)
  {
    return 0;
  }

  *a1 += a2;
  a1[2] = v4;
  return 1;
}

uint64_t CBS_stow(uint64_t a1, void **a2, void *a3)
{
  free(*a2);
  *a2 = 0;
  *a3 = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    result = malloc_type_malloc(v6, 0x5D10A8A6uLL);
    *a2 = result;
    if (!result)
    {
      return result;
    }

    memcpy(result, *a1, *(a1 + 16));
    *a3 = *(a1 + 16);
  }

  return 1;
}

BOOL CBS_strdup(uint64_t a1, void **a2)
{
  free(*a2);
  *a2 = 0;
  v4 = *a1;
  v5 = *(a1 + 16);
  v6 = memchr(v4, 0, v5);
  result = 0;
  if (!v6)
  {
    v8 = strndup(v4, v5);
    *a2 = v8;
    return v8 != 0;
  }

  return result;
}

uint64_t CBS_write_bytes(uint64_t a1, void *__dst, size_t a3, void *a4)
{
  v5 = *(a1 + 16);
  if (v5 > a3)
  {
    return 0;
  }

  memmove(__dst, *a1, v5);
  if (a4)
  {
    *a4 = *(a1 + 16);
  }

  return 1;
}

uint64_t CBS_get_u8(void *a1, _BYTE *a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return 0;
  }

  v3 = (*a1)++;
  a1[2] = v2 - 1;
  *a2 = *v3;
  return 1;
}

uint64_t CBS_get_u16(unsigned __int16 **a1, _WORD *a2)
{
  v2 = a1[2];
  v3 = v2 >= 2;
  v4 = v2 - 2;
  if (!v3)
  {
    return 0;
  }

  v6 = (*a1)++;
  a1[2] = v4;
  *a2 = bswap32(*v6) >> 16;
  return 1;
}

uint64_t CBS_get_u24(uint64_t *a1, int *a2)
{
  v2 = a1[2];
  v3 = v2 - 3;
  if (v2 < 3)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = *a1;
  *a1 += 3;
  a1[2] = v3;
  do
  {
    v6 = *(v7 + v5++) | (v6 << 8);
  }

  while (v5 != 3);
  *a2 = v6;
  return 1;
}

uint64_t CBS_get_u32(uint64_t *a1, int *a2)
{
  v2 = a1[2];
  v3 = v2 - 4;
  if (v2 < 4)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = *a1;
  *a1 += 4;
  a1[2] = v3;
  do
  {
    v6 = *(v7 + v5++) | (v6 << 8);
  }

  while (v5 != 4);
  *a2 = v6;
  return 1;
}

uint64_t CBS_get_u64(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = v2 - 8;
  if (v2 < 8)
  {
    return 0;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  v7 = *a1;
  v8 = *a1 + 4;
  *a1 = v8;
  a1[2] = v2 - 4;
  do
  {
    v6 = *(v7 + v5++) | (v6 << 8);
  }

  while (v5 != 4);
  v9 = 0;
  LODWORD(v10) = 0;
  *a1 = v7 + 8;
  a1[2] = v3;
  do
  {
    v10 = *(v8 + v9++) | (v10 << 8);
  }

  while (v9 != 4);
  *a2 = v10 | (v6 << 32);
  return 1;
}

uint64_t CBS_get_last_u8(void *a1, _BYTE *a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return 0;
  }

  *a2 = *(*a1 + v2 - 1);
  --a1[2];
  return 1;
}

uint64_t CBS_get_bytes(uint64_t *a1, void *a2, unint64_t a3)
{
  v3 = a1[2];
  v4 = v3 >= a3;
  v5 = v3 - a3;
  if (!v4)
  {
    return 0;
  }

  v7 = *a1;
  *a1 += a3;
  a1[2] = v5;
  *a2 = v7;
  a2[1] = a3;
  a2[2] = a3;
  return 1;
}

uint64_t cbs_get_length_prefixed(unsigned __int8 **a1, unint64_t *a2, unint64_t a3)
{
  v3 = a1[2];
  v4 = v3 >= a3;
  v5 = v3 - a3;
  if (!v4)
  {
    return 0;
  }

  v6 = *a1;
  v7 = &(*a1)[a3];
  *a1 = v7;
  a1[2] = v5;
  if (a3)
  {
    LODWORD(v8) = 0;
    do
    {
      v9 = *v6++;
      v8 = v9 | (v8 << 8);
      --a3;
    }

    while (a3);
    if (v5 < v8)
    {
      return 0;
    }
  }

  else
  {
    v8 = 0;
  }

  *a1 = (v7 + v8);
  a1[2] = (v5 - v8);
  *a2 = v7;
  a2[1] = v8;
  result = 1;
  a2[2] = v8;
  return result;
}

uint64_t CBS_peek_u8(uint64_t a1, _BYTE *a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  *a2 = **a1;
  return 1;
}

uint64_t CBS_peek_u16(unsigned __int16 **a1, _WORD *a2)
{
  if (a1[2] < 2)
  {
    return 0;
  }

  *a2 = bswap32(**a1) >> 16;
  return 1;
}

uint64_t CBS_peek_u24(void *a1, int *a2)
{
  if (a1[2] < 3uLL)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v4 = *(*a1 + v3++) | (v4 << 8);
  }

  while (v3 != 3);
  *a2 = v4;
  return 1;
}

uint64_t CBS_peek_u32(void *a1, int *a2)
{
  if (a1[2] < 4uLL)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v4 = *(*a1 + v3++) | (v4 << 8);
  }

  while (v3 != 4);
  *a2 = v4;
  return 1;
}

uint64_t CBS_peek_last_u8(void *a1, _BYTE *a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return 0;
  }

  *a2 = *(*a1 + v2 - 1);
  return 1;
}

uint64_t cbs_get_any_asn1_element_internal(unsigned __int8 **a1, void *a2, _DWORD *a3, uint64_t *a4, int a5)
{
  v5 = a1[2];
  if (v5 < 2)
  {
    return 0;
  }

  v6 = *a1;
  v7 = **a1;
  if ((~v7 & 0x1F) == 0)
  {
    return 0;
  }

  v8 = *(v6 + 1);
  if (a3)
  {
    *a3 = v7;
  }

  if ((v8 & 0x80) == 0)
  {
    v9 = v8 + 2;
    if (!a4)
    {
      goto LABEL_9;
    }

    v10 = 2;
    goto LABEL_8;
  }

  v14 = v8 & 0x7F;
  if ((v8 & 0x7F) == 0x7F)
  {
    return 0;
  }

  v15 = (v6 + 2);
  if ((v8 & 0x7F) != 0)
  {
    v16 = v5 - 2;
    v17 = (v14 - 5) >= 0xFCu && v16 >= v14;
    if (!v17)
    {
      return 0;
    }

    v18 = 0;
    v19 = v8 & 0x7F;
    do
    {
      v20 = *v15++;
      v18 = v20 | (v18 << 8);
      --v19;
    }

    while (v19);
    if (v18 < 0x80)
    {
      return 0;
    }

    v13 = v18 >> (8 * (v8 & 0x1F) - 8);
    if (!v13)
    {
      return v13;
    }

    v10 = v14 + 2;
    v9 = v14 + 2 + v18;
    if (!a4)
    {
LABEL_9:
      v11 = a1[2];
      v17 = v11 >= v9;
      v12 = &v11[-v9];
      if (!v17)
      {
        return 0;
      }

      *a1 = (v6 + v9);
      a1[2] = v12;
      if (a2)
      {
        goto LABEL_12;
      }

      return 1;
    }

LABEL_8:
    *a4 = v10;
    goto LABEL_9;
  }

  v13 = 0;
  if (!a5 && (v7 & 0x20) != 0)
  {
    if (a4)
    {
      *a4 = 2;
      v5 = a1[2];
      if (v5 < 2)
      {
        return 0;
      }
    }

    *a1 = v15;
    a1[2] = (v5 - 2);
    if (a2)
    {
      v9 = 2;
LABEL_12:
      *a2 = v6;
      a2[1] = v9;
      v13 = 1;
      a2[2] = v9;
      return v13;
    }

    return 1;
  }

  return v13;
}

uint64_t cbs_get_asn1(unsigned __int8 **a1, void *a2, int a3, int a4)
{
  v16 = 0;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = v14;
  }

  if (cbs_get_any_asn1_element_internal(a1, v7, &v15, &v16, 1))
  {
    v8 = v15 == a3;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    return 0;
  }

  if (a4)
  {
    v9 = v14;
    if (a2)
    {
      v9 = a2;
    }

    v10 = v9[2];
    v11 = v10 >= v16;
    v12 = v10 - v16;
    if (!v11)
    {
      return 0;
    }

    *v7 += v16;
    v9[2] = v12;
  }

  return 1;
}

uint64_t CBS_get_asn1_uint64(unsigned __int8 **a1, unint64_t *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  result = cbs_get_asn1(a1, v8, 2, 1);
  if (result)
  {
    *a2 = 0;
    v4 = v9;
    if (v9)
    {
      v5 = v8[0];
      if ((*v8[0] & 0x80000000) == 0 && (v9 == 1 || *v8[0] || *(v8[0] + 1) < 0))
      {
        v6 = 0;
        while (!HIBYTE(v6))
        {
          *a2 = v6 << 8;
          v7 = *v5++;
          *a2 = v7 | (v6 << 8);
          v6 = v7 | (v6 << 8);
          if (!--v4)
          {
            return 1;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t CBS_get_optional_asn1(unsigned __int8 **a1, void *a2, int *a3, int a4)
{
  v5 = (~a4 & 0x1F) == 0 || a1[2] == 0;
  if (v5 || **a1 != a4)
  {
    v6 = 0;
    goto LABEL_9;
  }

  v6 = 1;
  result = cbs_get_asn1(a1, a2, a4, 1);
  if (result)
  {
LABEL_9:
    *a3 = v6;
    return 1;
  }

  return result;
}

uint64_t CBS_get_optional_asn1_octet_string(unsigned __int8 **a1, void *a2, int *a3, int a4)
{
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  v9 = 0;
  result = CBS_get_optional_asn1(a1, v10, &v9, a4);
  if (result)
  {
    v7 = v9;
    if (!v9)
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      if (!a3)
      {
        return 1;
      }

      goto LABEL_6;
    }

    asn1 = cbs_get_asn1(v10, a2, 4, 1);
    result = 0;
    if (asn1 && !v11)
    {
      if (!a3)
      {
        return 1;
      }

LABEL_6:
      *a3 = v7;
      return 1;
    }
  }

  return result;
}

uint64_t CBS_get_optional_asn1_uint64(unsigned __int8 **a1, unint64_t *a2, int a3, unint64_t a4)
{
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  v8 = 0;
  result = CBS_get_optional_asn1(a1, v9, &v8, a3);
  if (result)
  {
    if (v8)
    {
      asn1_uint64 = CBS_get_asn1_uint64(v9, a2);
      result = 0;
      if (!asn1_uint64 || v10)
      {
        return result;
      }
    }

    else
    {
      *a2 = a4;
    }

    return 1;
  }

  return result;
}

uint64_t CBS_get_optional_asn1_BOOL(unsigned __int8 **a1, int *a2, int a3, int a4)
{
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  v8 = 0;
  result = CBS_get_optional_asn1(a1, v11, &v8, a3);
  if (result)
  {
    if (!v8)
    {
LABEL_9:
      *a2 = a4;
      return 1;
    }

    asn1 = cbs_get_asn1(v11, v9, 1, 1);
    result = 0;
    if (asn1 && v10 == 1 && !v12)
    {
      a4 = *v9[0];
      if (*v9[0])
      {
        if (a4 != 255)
        {
          return 0;
        }

        a4 = 1;
      }

      goto LABEL_9;
    }
  }

  return result;
}

uint64_t CBB_init(uint64_t a1, size_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 64;
  }

  v4 = malloc_type_calloc(1uLL, v3, 0x3A3EE3F9uLL);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 1;
  v7 = malloc_type_calloc(1uLL, 0x20uLL, 0x1010040A6225C5AuLL);
  if (!v7)
  {
    free(v5);
    return 0;
  }

  *v7 = v5;
  v7[1] = 0;
  v7[2] = v3;
  *(v7 + 24) = 1;
  *a1 = v7;
  *(a1 + 26) = 1;
  return v6;
}

uint64_t CBB_init_fixed(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v6 = 1;
  v7 = malloc_type_calloc(1uLL, 0x20uLL, 0x1010040A6225C5AuLL);
  if (!v7)
  {
    return 0;
  }

  *v7 = a2;
  v7[1] = 0;
  v7[2] = a3;
  *a1 = v7;
  *(a1 + 26) = 1;
  *(v7 + 24) = 0;
  return v6;
}

void CBB_cleanup(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(v2 + 24))
    {
      freezero(*v2, *(v2 + 16));
      v2 = *a1;
    }

    free(v2);
  }

  *a1 = 0;
  a1[2] = 0;
}

uint64_t CBB_finish(uint64_t *a1, void *a2, void *a3)
{
  if (!*(a1 + 26))
  {
    return 0;
  }

  result = CBB_flush(a1);
  if (!result)
  {
    return result;
  }

  v7 = *a1;
  if (*(*a1 + 24))
  {
    result = 0;
    if (!a2 || !a3)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (a2)
  {
LABEL_9:
    if (*a2)
    {
      return 0;
    }

    *a2 = *v7;
    v7 = *a1;
  }

  if (a3)
  {
    *a3 = v7[1];
  }

  *v7 = 0;
  CBB_cleanup(a1);
  return 1;
}

uint64_t CBB_flush(uint64_t a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (!*(a1 + 16))
    {
      return 1;
    }

    v3 = *(a1 + 24);
    if (!*(a1 + 24))
    {
      return 1;
    }

    v5 = (a1 + 8);
    v4 = *(a1 + 8);
    if (!CBB_flush())
    {
      return 0;
    }

    v6 = v4 + v3;
    v7 = *v5;
    if (v4 + v3 < *v5)
    {
      return 0;
    }

    v8 = *a1;
    v9 = *(*a1 + 8);
    v10 = v9 - v6;
    if (v9 < v6)
    {
      return 0;
    }

    LODWORD(v11) = *(a1 + 24);
    if (!*(a1 + 25))
    {
LABEL_21:
      if (v11)
      {
        v14 = v11 - 1;
        do
        {
          *(**a1 + *(a1 + 8) + v14) = v10;
          v10 >>= 8;
          --v14;
        }

        while (v14 < *(a1 + 24));
      }

      if (v10)
      {
        return 0;
      }

      **(a1 + 16) = 0;
      *v5 = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      return 1;
    }

    v1 = 0;
    if (v11 == 1 && v10 <= 0xFFFFFFFE)
    {
      if (v10 >> 24)
      {
        v11 = 4;
      }

      else if (v10 >> 16)
      {
        v11 = 3;
      }

      else if (v10 <= 0xFF)
      {
        if (v10 <= 0x7F)
        {
          LODWORD(v11) = 0;
          v12 = v10;
          v10 = 0;
          goto LABEL_20;
        }

        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (cbb_buffer_add(v8, 0, v11))
      {
        v12 = v11 | 0x80;
        memmove((**a1 + v6 + v11), (**a1 + v6), v10);
        v8 = *a1;
        v7 = *(a1 + 8);
LABEL_20:
        v13 = *v8;
        *(a1 + 8) = v7 + 1;
        *(v13 + v7) = v12;
        *(a1 + 24) = v11;
        goto LABEL_21;
      }

      return 0;
    }
  }

  return v1;
}

char *cbb_buffer_add(char *result, void *a2, uint64_t a3)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = *(result + 1);
  v5 = v4 + a3;
  if (__CFADD__(v4, a3))
  {
    return 0;
  }

  v7 = *(result + 2);
  if (v5 <= v7)
  {
LABEL_14:
    if (a2)
    {
      *a2 = *v3 + v3[1];
    }

    v3[1] = v5;
    return 1;
  }

  if (!result[24])
  {
    return 0;
  }

  v8 = 2 * v7;
  if (2 * v7 <= v5)
  {
    v8 = v5;
  }

  if (v7 >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  result = recallocarray(*result, v7, v9, 1uLL);
  if (result)
  {
    *v3 = result;
    v3[2] = v9;
    goto LABEL_14;
  }

  return result;
}

uint64_t CBB_discard_child(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    *(*result + 8) = *(result + 8);
    *v1 = 0;
    *(result + 24) = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  return result;
}

uint64_t cbb_add_length_prefixed(uint64_t a1, _OWORD *a2, size_t a3)
{
  result = CBB_flush(a1);
  if (result)
  {
    v8 = 0;
    v7 = *a1;
    *(a1 + 8) = *(*a1 + 8);
    result = cbb_buffer_add(v7, &v8, a3);
    if (result)
    {
      bzero(v8, a3);
      *a2 = 0u;
      a2[1] = 0u;
      *a2 = *a1;
      *(a1 + 16) = a2;
      *(a1 + 24) = a3;
      *(a1 + 25) = 0;
      return 1;
    }
  }

  return result;
}

uint64_t CBB_add_asn1(uint64_t a1, _OWORD *a2, unsigned int a3)
{
  result = 0;
  if (a3 <= 0xFF && (a3 & 0x1F) != 0x1F)
  {
    result = CBB_flush(a1);
    if (result)
    {
      result = cbb_add_u(a1, a3, 1uLL);
      if (result)
      {
        *(a1 + 8) = *(*a1 + 8);
        result = cbb_add_u(a1, 0, 1uLL);
        if (result)
        {
          *a2 = 0u;
          a2[1] = 0u;
          *a2 = *a1;
          *(a1 + 16) = a2;
          *(a1 + 24) = 257;
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t CBB_add_u8(char **a1, unint64_t a2)
{
  if (a2 <= 0xFF)
  {
    return cbb_add_u(a1, a2, 1uLL);
  }

  else
  {
    return 0;
  }
}

uint64_t CBB_add_bytes(char **a1, const void *a2, size_t a3)
{
  result = CBB_flush(a1);
  if (result)
  {
    __dst = 0;
    result = cbb_buffer_add(*a1, &__dst, a3);
    if (result)
    {
      memcpy(__dst, a2, a3);
      return 1;
    }
  }

  return result;
}

uint64_t CBB_add_space(char **a1, void **a2, size_t a3)
{
  result = CBB_flush(a1);
  if (result)
  {
    result = cbb_buffer_add(*a1, a2, a3);
    if (result)
    {
      bzero(*a2, a3);
      return 1;
    }
  }

  return result;
}

uint64_t cbb_add_u(char **a1, unsigned int a2, unint64_t a3)
{
  result = CBB_flush(a1);
  if (result)
  {
    v8 = 0;
    result = cbb_buffer_add(*a1, &v8, a3);
    if (result)
    {
      if (a3)
      {
        v7 = a3 - 1;
        do
        {
          *(v8 + v7) = a2;
          a2 >>= 8;
          --v7;
        }

        while (v7 < a3);
      }

      return 1;
    }
  }

  return result;
}

uint64_t CBB_add_u16(char **a1, unint64_t a2)
{
  if (a2 >> 16)
  {
    return 0;
  }

  else
  {
    return cbb_add_u(a1, a2, 2uLL);
  }
}

uint64_t CBB_add_u24(char **a1, unint64_t a2)
{
  if (a2 >> 24)
  {
    return 0;
  }

  else
  {
    return cbb_add_u(a1, a2, 3uLL);
  }
}

uint64_t CBB_add_u32(char **a1, unint64_t a2)
{
  if (HIDWORD(a2))
  {
    return 0;
  }

  else
  {
    return cbb_add_u(a1, a2, 4uLL);
  }
}

uint64_t CBB_add_u64(char **a1, uint64_t a2)
{
  v2 = a2;
  result = cbb_add_u(a1, HIDWORD(a2), 4uLL);
  if (result)
  {

    return cbb_add_u(a1, v2, 4uLL);
  }

  return result;
}

uint64_t CBB_add_asn1_uint64(uint64_t a1, unint64_t a2)
{
  memset(v7, 0, sizeof(v7));
  result = CBB_add_asn1(a1, v7, 2u);
  if (!result)
  {
    return result;
  }

  v5 = 0;
  v6 = 1;
  do
  {
    while ((v6 & 1) == 0)
    {
LABEL_7:
      result = cbb_add_u(v7, (a2 >> (56 - 8 * v5)), 1uLL);
      if (!result)
      {
        return result;
      }

      v6 = 0;
      if (++v5 == 8)
      {
        return CBB_flush(a1);
      }
    }

    if ((a2 >> (56 - 8 * v5)))
    {
      if (((a2 >> (56 - 8 * v5)) & 0x80) != 0)
      {
        result = cbb_add_u(v7, 0, 1uLL);
        if (!result)
        {
          return result;
        }
      }

      goto LABEL_7;
    }

    ++v5;
    v6 = 1;
  }

  while (v5 != 8);
  result = cbb_add_u(v7, 0, 1uLL);
  if (!result)
  {
    return result;
  }

  return CBB_flush(a1);
}

void WFFileStorageServiceResultAllowFPSandboxExtensionToConsumer(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [MEMORY[0x277CC6408] defaultManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __WFFileStorageServiceResultAllowFPSandboxExtensionToConsumer_block_invoke;
  v12[3] = &unk_278C1EAE0;
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v9 = v6;
  v10 = v5;
  v11 = v7;
  [v8 fetchItemForURL:v10 completionHandler:v12];
}

void __WFFileStorageServiceResultAllowFPSandboxExtensionToConsumer_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    FPExtendBookmarkForDocumentURL();
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = *(*(a1 + 48) + 16);

    v5();
  }
}

uint64_t __WFFileStorageServiceResultAllowFPSandboxExtensionToConsumer_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 40) + 16);
    v6 = *MEMORY[0x277D85DE8];

    return v5();
  }

  else
  {
    v9 = getWFFilesLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v12 = 136315650;
      v13 = "WFFileStorageServiceResultAllowFPSandboxExtensionToConsumer_block_invoke_2";
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = a3;
      _os_log_impl(&dword_23DE30000, v9, OS_LOG_TYPE_ERROR, "%s Could not extend file result to consumer: %@ with error: %@", &v12, 0x20u);
    }

    result = (*(*(a1 + 40) + 16))();
    v11 = *MEMORY[0x277D85DE8];
  }

  return result;
}

Class initUITextChecker()
{
  if (UIKitLibrary_sOnce != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce, &__block_literal_global_217);
  }

  result = objc_getClass("UITextChecker");
  classUITextChecker = result;
  getUITextCheckerClass = UITextCheckerFunction;
  return result;
}

void *__UIKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib = result;
  return result;
}

void sub_23E016C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUIColorClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __UIKitLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C18E98;
    v9 = 0;
    UIKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *UIKitLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFFileLabelColorPickerParameter.m" lineNumber:19 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("UIColor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUIColorClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFFileLabelColorPickerParameter.m" lineNumber:20 description:{@"Unable to find class %s", "UIColor"}];

LABEL_10:
    __break(1u);
  }

  getUIColorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getRadiosPreferencesClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!AppSupportLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __AppSupportLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C18F00;
    v9 = 0;
    AppSupportLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AppSupportLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AppSupportLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFRadiosPreferencesSettingsClient.m" lineNumber:18 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("RadiosPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getRadiosPreferencesClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFRadiosPreferencesSettingsClient.m" lineNumber:19 description:{@"Unable to find class %s", "RadiosPreferences"}];

LABEL_10:
    __break(1u);
  }

  getRadiosPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AppSupportLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppSupportLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E01BEEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WFEnforceClass(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315906;
      v10 = "WFEnforceClass";
      v11 = 2114;
      v12 = v3;
      v13 = 2114;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = a2;
      v6 = v14;
      _os_log_impl(&dword_23DE30000, v5, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", &v9, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

id VCTitleCaseString(void *a1)
{
  v1 = a1;
  if (!VCTitleCaseString_shortWords)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"a", @"an", @"and", @"as", @"at", @"but", @"by", @"en", @"for", @"if", @"in", @"of", @"on", @"or", @"the", @"to", @"v", @"via", @"vs", 0}];
    v3 = VCTitleCaseString_shortWords;
    VCTitleCaseString_shortWords = v2;
  }

  if (!VCTitleCaseString_wordStartCharacterSet)
  {
    v4 = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
    v5 = [v4 mutableCopy];
    v6 = VCTitleCaseString_wordStartCharacterSet;
    VCTitleCaseString_wordStartCharacterSet = v5;

    v7 = VCTitleCaseString_wordStartCharacterSet;
    v8 = [MEMORY[0x277CCA900] lowercaseLetterCharacterSet];
    [v7 formUnionWithCharacterSet:v8];
  }

  if (!VCTitleCaseString_wordMiddleCharacterSet)
  {
    v9 = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
    v10 = [v9 mutableCopy];
    v11 = VCTitleCaseString_wordMiddleCharacterSet;
    VCTitleCaseString_wordMiddleCharacterSet = v10;

    v12 = VCTitleCaseString_wordMiddleCharacterSet;
    v13 = [MEMORY[0x277CCA900] lowercaseLetterCharacterSet];
    [v12 formUnionWithCharacterSet:v13];

    [VCTitleCaseString_wordMiddleCharacterSet addCharactersInString:@".&'’"];
  }

  if (!VCTitleCaseString_wordEndCharacterSet)
  {
    objc_storeStrong(&VCTitleCaseString_wordEndCharacterSet, VCTitleCaseString_wordStartCharacterSet);
  }

  if (!VCTitleCaseString_wordIgnoreCharacterSet)
  {
    v14 = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
    v15 = [v14 mutableCopy];
    v16 = VCTitleCaseString_wordIgnoreCharacterSet;
    VCTitleCaseString_wordIgnoreCharacterSet = v15;

    [VCTitleCaseString_wordIgnoreCharacterSet addCharactersInString:@"."];
  }

  v39 = [v1 mutableCopy];
  v17 = [MEMORY[0x277CCAC80] scannerWithString:v1];
  v18 = 1;
  [v17 setCaseSensitive:1];
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
LABEL_12:
  v23 = v20;
  while (([v17 isAtEnd] & 1) == 0)
  {
    [v17 scanUpToCharactersFromSet:VCTitleCaseString_wordStartCharacterSet intoString:0];
    v24 = [v17 scanLocation];
    if (v24 < [v1 length])
    {
      v22 = [v17 scanLocation];
      if (([VCTitleCaseString_wordStartCharacterSet characterIsMember:{objc_msgSend(v1, "characterAtIndex:", objc_msgSend(v17, "scanLocation"))}] & 1) == 0)
      {
        do
        {
          [v17 setScanLocation:{objc_msgSend(v17, "scanLocation") + 1}];
          v22 = [v17 scanLocation];
        }

        while (![VCTitleCaseString_wordStartCharacterSet characterIsMember:{objc_msgSend(v1, "characterAtIndex:", objc_msgSend(v17, "scanLocation"))}]);
      }

      v38 = v18;
      v25 = [v1 substringWithRange:{v22, 1}];
      [v17 scanString:v25 intoString:0];

      v26 = [v1 length];
      v27 = 1;
      if (v26 > [v17 scanLocation])
      {
        if ([VCTitleCaseString_wordMiddleCharacterSet characterIsMember:{objc_msgSend(v1, "characterAtIndex:", objc_msgSend(v17, "scanLocation"))}])
        {
          [v17 scanCharactersFromSet:VCTitleCaseString_wordMiddleCharacterSet intoString:0];
          v27 = [v17 scanLocation] - v22;
        }

        else
        {
          v27 = 1;
        }
      }

      v28 = [v1 characterAtIndex:v22 + v27 - 1];
      if ([VCTitleCaseString_wordEndCharacterSet characterIsMember:v28])
      {
        v21 = v27;
      }

      else
      {
        do
        {
          [v17 setScanLocation:{objc_msgSend(v17, "scanLocation") - 1}];
          v21 = v27 - 1;
          v29 = [v1 characterAtIndex:v22 - 2 + v27--];
        }

        while (![VCTitleCaseString_wordEndCharacterSet characterIsMember:v29]);
      }

      v30 = [v1 substringWithRange:{v22, v21}];

      v31 = [v30 lowercaseString];

      v32 = [v1 rangeOfCharacterFromSet:VCTitleCaseString_wordIgnoreCharacterSet options:2 range:{v22 + 1, v21 - 1}];
      v18 = 0;
      v19 = v31;
      v20 = v30;
      if (v32 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([v30 rangeOfString:@"&"] == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ((v38 & 1) == 0 && [VCTitleCaseString_shortWords containsObject:v31])
          {
            [v39 replaceCharactersInRange:v22 withString:{v21, v31}];
LABEL_32:
            v18 = 0;
            v19 = v31;
            v20 = v30;
            goto LABEL_12;
          }

          v33 = [v30 capitalizedString];
        }

        else
        {
          v33 = [v30 uppercaseString];
        }

        v34 = v33;
        [v39 replaceCharactersInRange:v22 withString:{v21, v33}];

        goto LABEL_32;
      }

      goto LABEL_12;
    }
  }

  if (v19 && [VCTitleCaseString_shortWords containsObject:v19])
  {
    v35 = [v19 capitalizedString];
    [v39 replaceCharactersInRange:v22 withString:{v21, v35}];
  }

  v36 = [v39 copy];

  return v36;
}

void sub_23E01E224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUIImagePickerControllerClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary_929)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __UIKitLibraryCore_block_invoke_930;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C18FE8;
    v9 = 0;
    UIKitLibraryCore_frameworkLibrary_929 = _sl_dlopen();
  }

  if (!UIKitLibraryCore_frameworkLibrary_929)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *UIKitLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFTakeVideoAction.m" lineNumber:15 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("UIImagePickerController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUIImagePickerControllerClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFTakeVideoAction.m" lineNumber:16 description:{@"Unable to find class %s", "UIImagePickerController"}];

LABEL_10:
    __break(1u);
  }

  getUIImagePickerControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke_930(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary_929 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getSBSStatusBarStyleOverridesAssertionClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __SpringBoardServicesLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C19080;
    v9 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFRecordingStatusManager.m" lineNumber:16 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("SBSStatusBarStyleOverridesAssertion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSBSStatusBarStyleOverridesAssertionClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFRecordingStatusManager.m" lineNumber:17 description:{@"Unable to find class %s", "SBSStatusBarStyleOverridesAssertion"}];

LABEL_10:
    __break(1u);
  }

  getSBSStatusBarStyleOverridesAssertionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E0208D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getCAMCaptureCapabilitiesClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!CameraUILibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __CameraUILibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C190C0;
    v9 = 0;
    CameraUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CameraUILibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CameraUILibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFCameraCaptureCapabilities.m" lineNumber:21 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CAMCaptureCapabilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCAMCaptureCapabilitiesClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFCameraCaptureCapabilities.m" lineNumber:22 description:{@"Unable to find class %s", "CAMCaptureCapabilities"}];

LABEL_10:
    __break(1u);
  }

  getCAMCaptureCapabilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CameraUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CameraUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E044500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCLLocationClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __CoreLocationLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C190F8;
    v9 = 0;
    CoreLocationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreLocationLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFWeatherData.m" lineNumber:18 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CLLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCLLocationClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFWeatherData.m" lineNumber:19 description:{@"Unable to find class %s", "CLLocation"}];

LABEL_10:
    __break(1u);
  }

  getCLLocationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreLocationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E048924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPAVEndpointRouteClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __MediaPlayerLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C19248;
    v9 = 0;
    MediaPlayerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFHandOffPlaybackAction.m" lineNumber:18 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("MPAVEndpointRoute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPAVEndpointRouteClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFHandOffPlaybackAction.m" lineNumber:19 description:{@"Unable to find class %s", "MPAVEndpointRoute"}];

LABEL_10:
    __break(1u);
  }

  getMPAVEndpointRouteClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id getCBClientClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCBClientClass_softClass;
  v7 = getCBClientClass_softClass;
  if (!getCBClientClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCBClientClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getCBClientClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E04AE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCBClientClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!CoreBrightnessLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __CoreBrightnessLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C19260;
    v9 = 0;
    CoreBrightnessLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreBrightnessLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreBrightnessLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFNightShiftSettingsClient.m" lineNumber:19 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CBClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCBClientClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFNightShiftSettingsClient.m" lineNumber:20 description:{@"Unable to find class %s", "CBClient"}];

LABEL_10:
    __break(1u);
  }

  getCBClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreBrightnessLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreBrightnessLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E04B2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getHKDisplayTypeControllerClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!HealthUILibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __HealthUILibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C192A0;
    v9 = 0;
    HealthUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!HealthUILibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *HealthUILibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFQuantityTypePickerParameter.m" lineNumber:22 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("HKDisplayTypeController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getHKDisplayTypeControllerClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFQuantityTypePickerParameter.m" lineNumber:23 description:{@"Unable to find class %s", "HKDisplayTypeController"}];

LABEL_10:
    __break(1u);
  }

  getHKDisplayTypeControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __HealthUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HealthUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id getWFAlwaysOnSettingsClientLogObject()
{
  if (getWFAlwaysOnSettingsClientLogObject_onceToken != -1)
  {
    dispatch_once(&getWFAlwaysOnSettingsClientLogObject_onceToken, &__block_literal_global_2840);
  }

  v1 = getWFAlwaysOnSettingsClientLogObject_log;

  return v1;
}

void __getWFAlwaysOnSettingsClientLogObject_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D7A500], "AlwaysOnSettingsClient");
  v1 = getWFAlwaysOnSettingsClientLogObject_log;
  getWFAlwaysOnSettingsClientLogObject_log = v0;
}

void sub_23E04DC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSHErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ShazamKitLibrary();
  result = dlsym(v2, "SHErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSHErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *ShazamKitLibrary()
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!ShazamKitLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __ShazamKitLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278C19358;
    v7 = 0;
    ShazamKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ShazamKitLibraryCore_frameworkLibrary;
  if (!ShazamKitLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ShazamKitLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFShazamMediaAction.m" lineNumber:21 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __ShazamKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ShazamKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E04E110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSHManagedSessionClass_block_invoke(uint64_t a1)
{
  ShazamKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SHManagedSession");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSHManagedSessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSHManagedSessionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFShazamMediaAction.m" lineNumber:22 description:{@"Unable to find class %s", "SHManagedSession"}];

    __break(1u);
  }
}

uint64_t __Block_byref_object_copy__3072(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23E04FA1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

id getMPCPlayerPathClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPCPlayerPathClass_softClass;
  v7 = getMPCPlayerPathClass_softClass;
  if (!getMPCPlayerPathClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPCPlayerPathClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getMPCPlayerPathClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E0506F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPCPlayerPathClass_block_invoke(uint64_t a1)
{
  MediaPlaybackCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPCPlayerPath");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPCPlayerPathClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPCPlayerPathClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaPlaybackController.m" lineNumber:40 description:{@"Unable to find class %s", "MPCPlayerPath"}];

    __break(1u);
  }
}

void MediaPlaybackCoreLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlaybackCoreLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlaybackCoreLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C19680;
    v6 = 0;
    MediaPlaybackCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MediaPlaybackCoreLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlaybackCoreLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaPlaybackController.m" lineNumber:38 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __MediaPlaybackCoreLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlaybackCoreLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id getMPCPlayerRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPCPlayerRequestClass_softClass;
  v7 = getMPCPlayerRequestClass_softClass;
  if (!getMPCPlayerRequestClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPCPlayerRequestClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getMPCPlayerRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E050B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPCPlayerChangeRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPCPlayerChangeRequestClass_softClass;
  v7 = getMPCPlayerChangeRequestClass_softClass;
  if (!getMPCPlayerChangeRequestClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPCPlayerChangeRequestClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getMPCPlayerChangeRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E050CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPCPlayerChangeRequestClass_block_invoke(uint64_t a1)
{
  MediaPlaybackCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPCPlayerChangeRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPCPlayerChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPCPlayerChangeRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaPlaybackController.m" lineNumber:41 description:{@"Unable to find class %s", "MPCPlayerChangeRequest"}];

    __break(1u);
  }
}

void __getMPCPlayerRequestClass_block_invoke(uint64_t a1)
{
  MediaPlaybackCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPCPlayerRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPCPlayerRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPCPlayerRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaPlaybackController.m" lineNumber:39 description:{@"Unable to find class %s", "MPCPlayerRequest"}];

    __break(1u);
  }
}

id getMPModelSongClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelSongClass_softClass;
  v7 = getMPModelSongClass_softClass;
  if (!getMPModelSongClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPModelSongClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getMPModelSongClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E0511D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPModelLibraryRequestClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPModelLibraryRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPModelLibraryRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaPlaybackController.m" lineNumber:49 description:{@"Unable to find class %s", "MPModelLibraryRequest"}];

    __break(1u);
  }
}

id getMPPropertySetClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPPropertySetClass_softClass;
  v7 = getMPPropertySetClass_softClass;
  if (!getMPPropertySetClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPPropertySetClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getMPPropertySetClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E051378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPPropertySetClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPPropertySet");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPPropertySetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPPropertySetClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaPlaybackController.m" lineNumber:23 description:{@"Unable to find class %s", "MPPropertySet"}];

    __break(1u);
  }
}

void *MediaPlayerLibrary()
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_3104)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke_3105;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278C19668;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_3104 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_3104;
  if (!MediaPlayerLibraryCore_frameworkLibrary_3104)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFMediaPlaybackController.m" lineNumber:20 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_3105(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_3104 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __getMPModelSongClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPModelSong");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelSongClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPModelSongClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaPlaybackController.m" lineNumber:25 description:{@"Unable to find class %s", "MPModelSong"}];

    __break(1u);
  }
}

id getMPIdentifierSetClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPIdentifierSetClass_softClass;
  v7 = getMPIdentifierSetClass_softClass;
  if (!getMPIdentifierSetClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPIdentifierSetClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getMPIdentifierSetClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E051A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPIdentifierSetClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPIdentifierSet");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPIdentifierSetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPIdentifierSetClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaPlaybackController.m" lineNumber:26 description:{@"Unable to find class %s", "MPIdentifierSet"}];

    __break(1u);
  }
}

id getMPMediaLibraryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMediaLibraryClass_softClass;
  v7 = getMPMediaLibraryClass_softClass;
  if (!getMPMediaLibraryClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPMediaLibraryClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getMPMediaLibraryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E051E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMediaLibraryClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaLibrary");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaLibraryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaLibraryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaPlaybackController.m" lineNumber:21 description:{@"Unable to find class %s", "MPMediaLibrary"}];

    __break(1u);
  }
}

void sub_23E05266C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMediaItemClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaPlaybackController.m" lineNumber:22 description:{@"Unable to find class %s", "MPMediaItem"}];

    __break(1u);
  }
}

void *__getMPModelRelationshipGenericSongSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelRelationshipGenericSong");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericSongSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_23E053F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMPModelPropertyGenreNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelPropertyGenreName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyGenreNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumTitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelPropertyAlbumTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumTitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumDiscCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelPropertyAlbumDiscCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumDiscCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumReleaseDateComponentsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelPropertyAlbumReleaseDateComponents");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumReleaseDateComponentsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumTrackCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelPropertyAlbumTrackCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumTrackCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyArtistNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelPropertyArtistName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyArtistNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongTitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelPropertySongTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongTitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongDurationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelPropertySongDuration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongDurationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongDiscNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelPropertySongDiscNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongDiscNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongExplicitSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelPropertySongExplicit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongExplicitSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongTrackNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelPropertySongTrackNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongTrackNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongArtworkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelPropertySongArtwork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongArtworkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipSongArtistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelRelationshipSongArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipSongArtistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipSongAlbumSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelRelationshipSongAlbum");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipSongAlbumSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipSongGenreSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelRelationshipSongGenre");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipSongGenreSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id WFMediaRouteDescriptorIsMissingRouteUIDError()
{
  v10[2] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedString(@"Invalid Output Device");
  v1 = WFLocalizedString(@"The device you specified can not be used for media playback.");
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D7CB30];
  v4 = *MEMORY[0x277CCA450];
  v9[0] = *MEMORY[0x277CCA470];
  v9[1] = v4;
  v10[0] = v0;
  v10[1] = v1;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v6 = [v2 errorWithDomain:v3 code:5 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

Class __getRTRoutineManagerClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!CoreRoutineLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __CoreRoutineLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C19758;
    v9 = 0;
    CoreRoutineLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreRoutineLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreRoutineLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFGetParkedCarLocationAction.m" lineNumber:19 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("RTRoutineManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getRTRoutineManagerClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFGetParkedCarLocationAction.m" lineNumber:22 description:{@"Unable to find class %s", "RTRoutineManager"}];

LABEL_10:
    __break(1u);
  }

  getRTRoutineManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreRoutineLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreRoutineLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getCNContactStoreClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __ContactsLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C19770;
    v9 = 0;
    ContactsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ContactsLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ContactsLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFContactAccessResource.m" lineNumber:15 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CNContactStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCNContactStoreClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFContactAccessResource.m" lineNumber:16 description:{@"Unable to find class %s", "CNContactStore"}];

LABEL_10:
    __break(1u);
  }

  getCNContactStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __ContactsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E0592C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSBSOpenApplicationOptionKeyLayoutRoleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary();
  result = dlsym(v2, "SBSOpenApplicationOptionKeyLayoutRole");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBSOpenApplicationOptionKeyLayoutRoleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *SpringBoardServicesLibrary()
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary_4190)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __SpringBoardServicesLibraryCore_block_invoke_4191;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278C19840;
    v7 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary_4190 = _sl_dlopen();
  }

  v0 = SpringBoardServicesLibraryCore_frameworkLibrary_4190;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary_4190)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFSplitScreenAppAction.m" lineNumber:25 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

void *__getSBSOpenApplicationLayoutRolePrimarySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary();
  result = dlsym(v2, "SBSOpenApplicationLayoutRolePrimary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBSOpenApplicationLayoutRolePrimarySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getSBSOpenApplicationOptionKeyLaunchBundleIdentifiers()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getSBSOpenApplicationOptionKeyLaunchBundleIdentifiersSymbolLoc_ptr;
  v9 = getSBSOpenApplicationOptionKeyLaunchBundleIdentifiersSymbolLoc_ptr;
  if (!getSBSOpenApplicationOptionKeyLaunchBundleIdentifiersSymbolLoc_ptr)
  {
    v1 = SpringBoardServicesLibrary();
    v7[3] = dlsym(v1, "SBSOpenApplicationOptionKeyLaunchBundleIdentifiers");
    getSBSOpenApplicationOptionKeyLaunchBundleIdentifiersSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getSBSOpenApplicationOptionKeyLaunchBundleIdentifiers(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFSplitScreenAppAction.m" lineNumber:32 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_23E059624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getSBSOpenApplicationOptionKeyWindowingFormat()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getSBSOpenApplicationOptionKeyWindowingFormatSymbolLoc_ptr;
  v9 = getSBSOpenApplicationOptionKeyWindowingFormatSymbolLoc_ptr;
  if (!getSBSOpenApplicationOptionKeyWindowingFormatSymbolLoc_ptr)
  {
    v1 = SpringBoardServicesLibrary();
    v7[3] = dlsym(v1, "SBSOpenApplicationOptionKeyWindowingFormat");
    getSBSOpenApplicationOptionKeyWindowingFormatSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getSBSOpenApplicationOptionKeyWindowingFormat(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFSplitScreenAppAction.m" lineNumber:31 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_23E059788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSBSOpenApplicationOptionKeyWindowingFormatSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary();
  result = dlsym(v2, "SBSOpenApplicationOptionKeyWindowingFormat");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBSOpenApplicationOptionKeyWindowingFormatSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSBSOpenApplicationOptionKeyLaunchBundleIdentifiersSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary();
  result = dlsym(v2, "SBSOpenApplicationOptionKeyLaunchBundleIdentifiers");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBSOpenApplicationOptionKeyLaunchBundleIdentifiersSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke_4191(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary_4190 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id WFMapsAppNamesByIdentifier()
{
  v4[6] = *MEMORY[0x277D85DE8];
  v3[0] = @"com.apple.Maps";
  v3[1] = @"azdev.citymapper";
  v4[0] = @"Maps";
  v4[1] = @"Citymapper";
  v3[2] = @"com.google.Maps";
  v3[3] = @"com.samvermette.Transit";
  v4[2] = @"Google Maps";
  v4[3] = @"Transit";
  v3[4] = @"com.waze.iphone";
  v3[5] = @"com.baidu.map";
  v4[4] = @"Waze";
  v4[5] = @"Baidu Maps";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:6];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id WFLocalizedMapsAppNameForAppName(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Maps"])
  {
    v2 = @"Maps";
LABEL_7:
    v3 = WFLocalizedString(v2);
    goto LABEL_8;
  }

  if ([v1 isEqualToString:@"Citymapper"])
  {
    v2 = @"Citymapper";
    goto LABEL_7;
  }

  if ([v1 isEqualToString:@"Google Maps"])
  {
    v2 = @"Google Maps";
    goto LABEL_7;
  }

  if ([v1 isEqualToString:@"Transit"])
  {
    v3 = WFLocalizedStringWithKey(@"Transit (App Name)", @"Transit");
  }

  else
  {
    if ([v1 isEqualToString:@"Waze"])
    {
      v2 = @"Waze";
      goto LABEL_7;
    }

    if ([v1 isEqualToString:@"Baidu Maps"])
    {
      v2 = @"Baidu Maps";
      goto LABEL_7;
    }

    v3 = v1;
  }

LABEL_8:
  v4 = v3;

  return v4;
}

id WFMapsAppIdentifierForAppName(void *a1)
{
  v1 = a1;
  v2 = WFMapsAppNamesByIdentifier();
  v3 = [v2 allKeysForObject:v1];

  v4 = [v3 firstObject];

  return v4;
}

void sub_23E05EFA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

__CFString *TMURLDecode(CFStringRef originalString)
{
  v1 = CFURLCreateStringByReplacingPercentEscapes(0, originalString, &stru_2850323E8);

  return v1;
}

__CFString *TMURLEncode(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = [v1 stringValue];
  }

  v3 = v2;
  v4 = CFURLCreateStringByAddingPercentEscapes(0, v2, 0, @"!*'();:@&=+$,/?%#[]%", 0x8000100u);

  return v4;
}

id type metadata for some(void *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v1 componentsSeparatedByString:@"&"];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v22 = 0u;
  v3 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v18 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v6 = [*(*(&v19 + 1) + 8 * i) componentsSeparatedByString:@"="];
        if ([v6 count] == 2)
        {
          v7 = [v6 objectAtIndexedSubscript:0];
          v8 = TMURLDecode(v7);

          v9 = [v6 objectAtIndexedSubscript:1];
          v10 = TMURLDecode(v9);

          v11 = [v2 objectForKeyedSubscript:v8];
          if (v11)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v11 addObject:v10];
            }

            else
            {
              [MEMORY[0x277CBEB18] arrayWithObjects:{v11, v10, 0}];
              v13 = v12 = v4;
              [v2 setObject:v13 forKey:v8];

              v4 = v12;
            }
          }

          else
          {
            [v2 setObject:v10 forKey:v8];
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }

  v14 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v2];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

id TMDictionaryToQueryString(void *a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __TMDictionaryToQueryString_block_invoke;
  aBlock[3] = &unk_278C19940;
  v23 = v2;
  v35 = v23;
  v3 = _Block_copy(aBlock);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = [v1 allKeys];
  v5 = [v4 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

  v6 = [v5 countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    v9 = 0x277CBE000uLL;
    v24 = *v31;
    do
    {
      v10 = 0;
      v25 = v7;
      do
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v30 + 1) + 8 * v10);
        v12 = [v1 objectForKeyedSubscript:{v11, v23}];
        v13 = *(v9 + 2656);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v1;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v15 = v12;
          v16 = [v15 countByEnumeratingWithState:&v26 objects:v36 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v27;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v27 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v3[2](v3, v11, *(*(&v26 + 1) + 8 * i));
              }

              v17 = [v15 countByEnumeratingWithState:&v26 objects:v36 count:16];
            }

            while (v17);
          }

          v1 = v14;
          v8 = v24;
          v7 = v25;
          v9 = 0x277CBE000;
        }

        else
        {
          (v3)[2](v3, v11, v12);
        }

        ++v10;
      }

      while (v10 != v7);
      v7 = [v5 countByEnumeratingWithState:&v30 objects:v37 count:16];
    }

    while (v7);
  }

  v20 = [v23 componentsJoinedByString:@"&"];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

void __TMDictionaryToQueryString_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v9 = TMURLEncode(a2);
  v7 = TMURLEncode(v6);

  v8 = [v5 stringWithFormat:@"%@=%@", v9, v7];
  [v4 addObject:v8];
}

void WFPlaylistsMatchingDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 playlistName];

  if (v2)
  {
    MPMediaPropertyPredicateClass = getMPMediaPropertyPredicateClass();
    v4 = [v1 playlistName];
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v5 = getMPMediaPlaylistPropertyNameSymbolLoc_ptr;
    v37 = getMPMediaPlaylistPropertyNameSymbolLoc_ptr;
    if (!getMPMediaPlaylistPropertyNameSymbolLoc_ptr)
    {
      v29 = MEMORY[0x277D85DD0];
      v30 = 3221225472;
      v31 = __getMPMediaPlaylistPropertyNameSymbolLoc_block_invoke;
      v32 = &unk_278C222B8;
      v33 = &v34;
      v6 = MediaPlayerLibrary_5429();
      v35[3] = dlsym(v6, "MPMediaPlaylistPropertyName");
      getMPMediaPlaylistPropertyNameSymbolLoc_ptr = *(v33[1] + 24);
      v5 = v35[3];
    }

    _Block_object_dispose(&v34, 8);
    if (v5)
    {
      v7 = [MPMediaPropertyPredicateClass predicateWithValue:v4 forProperty:*v5];

      v34 = 0;
      v35 = &v34;
      v36 = 0x2050000000;
      v8 = getMPMediaQueryClass_softClass;
      v37 = getMPMediaQueryClass_softClass;
      if (!getMPMediaQueryClass_softClass)
      {
        v29 = MEMORY[0x277D85DD0];
        v30 = 3221225472;
        v31 = __getMPMediaQueryClass_block_invoke;
        v32 = &unk_278C222B8;
        v33 = &v34;
        __getMPMediaQueryClass_block_invoke(&v29);
        v8 = v35[3];
      }

      v9 = v8;
      _Block_object_dispose(&v34, 8);
      v10 = [v8 alloc];
      v11 = [MEMORY[0x277CBEB98] setWithObject:v7];
      v12 = [v10 initWithFilterPredicates:v11];

      [v12 setGroupingType:6];
      v13 = [v12 collections];
      v14 = [v13 count];

      if (v14)
      {
        v15 = [v12 collections];
        v16 = [v1 persistentIdentifier];

        if (v16)
        {
          v17 = getMPMediaPropertyPredicateClass();
          v18 = [v1 persistentIdentifier];
          v34 = 0;
          v35 = &v34;
          v36 = 0x2020000000;
          v19 = getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr;
          v37 = getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr;
          if (!getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr)
          {
            v29 = MEMORY[0x277D85DD0];
            v30 = 3221225472;
            v31 = __getMPMediaPlaylistPropertyPersistentIDSymbolLoc_block_invoke;
            v32 = &unk_278C222B8;
            v33 = &v34;
            v20 = MediaPlayerLibrary_5429();
            v21 = dlsym(v20, "MPMediaPlaylistPropertyPersistentID");
            *(v33[1] + 24) = v21;
            getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr = *(v33[1] + 24);
            v19 = v35[3];
          }

          _Block_object_dispose(&v34, 8);
          if (v19)
          {
            v22 = [v17 predicateWithValue:v18 forProperty:*v19];

            [v12 addFilterPredicate:v22];
            v23 = [v12 collections];
            v24 = [v23 count];

            if (v24)
            {
              v25 = [v12 collections];

              v15 = v25;
            }

            goto LABEL_17;
          }

          v27 = [MEMORY[0x277CCA890] currentHandler];
          v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaPlaylistPropertyPersistentID(void)"];
          [v27 handleFailureInFunction:v28 file:@"WFPlaylistSubstitutableState.m" lineNumber:21 description:{@"%s", dlerror(), v29, v30, v31, v32}];
LABEL_23:

          __break(1u);
          return;
        }
      }

      else
      {
        v15 = 0;
      }

LABEL_17:

      goto LABEL_18;
    }

    v27 = [MEMORY[0x277CCA890] currentHandler];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaPlaylistPropertyName(void)"];
    [v27 handleFailureInFunction:v28 file:@"WFPlaylistSubstitutableState.m" lineNumber:20 description:{@"%s", dlerror(), v29, v30, v31, v32}];
    goto LABEL_23;
  }

  v15 = 0;
LABEL_18:

  v26 = v15;
}

void sub_23E06193C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPMediaPropertyPredicateClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMediaPropertyPredicateClass_softClass;
  v7 = getMPMediaPropertyPredicateClass_softClass;
  if (!getMPMediaPropertyPredicateClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPMediaPropertyPredicateClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getMPMediaPropertyPredicateClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E061A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMPMediaPlaylistPropertyNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_5429();
  result = dlsym(v2, "MPMediaPlaylistPropertyName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaPlaylistPropertyNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *MediaPlayerLibrary_5429()
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_5439)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke_5440;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278C199C8;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_5439 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_5439;
  if (!MediaPlayerLibraryCore_frameworkLibrary_5439)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFPlaylistSubstitutableState.m" lineNumber:17 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

void __getMPMediaQueryClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_5429();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaQuery");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaQueryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPlaylistSubstitutableState.m" lineNumber:19 description:{@"Unable to find class %s", "MPMediaQuery"}];

    __break(1u);
  }
}

void *__getMPMediaPlaylistPropertyPersistentIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_5429();
  result = dlsym(v2, "MPMediaPlaylistPropertyPersistentID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_5440(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_5439 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __getMPMediaPropertyPredicateClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_5429();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaPropertyPredicate");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaPropertyPredicateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaPropertyPredicateClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPlaylistSubstitutableState.m" lineNumber:18 description:{@"Unable to find class %s", "MPMediaPropertyPredicate"}];

    __break(1u);
  }
}

void sub_23E062748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCLErrorDomainSymbolLoc_block_invoke(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_5532)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __CoreLocationLibraryCore_block_invoke_5533;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C19A08;
    v8 = 0;
    CoreLocationLibraryCore_frameworkLibrary_5532 = _sl_dlopen();
  }

  v2 = CoreLocationLibraryCore_frameworkLibrary_5532;
  if (!CoreLocationLibraryCore_frameworkLibrary_5532)
  {
    a1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFGetCurrentLocationAction.m" lineNumber:18 description:{@"%s", v6[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v6[0];
  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "kCLErrorDomain");
  *(*(a1[4] + 8) + 24) = result;
  getkCLErrorDomainSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreLocationLibraryCore_block_invoke_5533(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_5532 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E063330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCalculateKeyLocalesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CalculateLibrary();
  result = dlsym(v2, "CalculateKeyLocales");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCalculateKeyLocalesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *CalculateLibrary()
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CalculateLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CalculateLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278C19A48;
    v7 = 0;
    CalculateLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CalculateLibraryCore_frameworkLibrary;
  if (!CalculateLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CalculateLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFCalculateExpressionAction.m" lineNumber:15 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

void *__getCalculateKeyAllowUnitsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CalculateLibrary();
  result = dlsym(v2, "CalculateKeyAllowUnits");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCalculateKeyAllowUnitsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCalculateKeyAllowConversionsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CalculateLibrary();
  result = dlsym(v2, "CalculateKeyAllowConversions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCalculateKeyAllowConversionsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCalculateKeyAllowCurrencyConversionsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CalculateLibrary();
  result = dlsym(v2, "CalculateKeyAllowCurrencyConversions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCalculateKeyAllowCurrencyConversionsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCalculateKeyAllowPartialExpressionsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CalculateLibrary();
  result = dlsym(v2, "CalculateKeyAllowPartialExpressions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCalculateKeyAllowPartialExpressionsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCalculateKeyPreferMixedUnitsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CalculateLibrary();
  result = dlsym(v2, "CalculateKeyPreferMixedUnits");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCalculateKeyPreferMixedUnitsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getCalculateClass_block_invoke(uint64_t a1)
{
  CalculateLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("Calculate");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCalculateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCalculateClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFCalculateExpressionAction.m" lineNumber:16 description:{@"Unable to find class %s", "Calculate"}];

    __break(1u);
  }
}

uint64_t __CalculateLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CalculateLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E0644B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkPMLPMSourceSiriSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = LowPowerModeLibrary();
  result = dlsym(v2, "kPMLPMSourceSiri");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkPMLPMSourceSiriSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *LowPowerModeLibrary()
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!LowPowerModeLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __LowPowerModeLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278C19A88;
    v7 = 0;
    LowPowerModeLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = LowPowerModeLibraryCore_frameworkLibrary;
  if (!LowPowerModeLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *LowPowerModeLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFLowPowerModeSettingsClient.m" lineNumber:23 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __LowPowerModeLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  LowPowerModeLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E064F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCTTelephonyNetworkInfoClass_block_invoke(uint64_t a1)
{
  CoreTelephonyLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CTTelephonyNetworkInfo");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCTTelephonyNetworkInfoClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCTTelephonyNetworkInfoClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFGetNetworkDetailsAction.m" lineNumber:26 description:{@"Unable to find class %s", "CTTelephonyNetworkInfo"}];

    __break(1u);
  }
}

void __getCoreTelephonyClientClass_block_invoke(uint64_t a1)
{
  CoreTelephonyLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CoreTelephonyClient");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCoreTelephonyClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCoreTelephonyClientClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFGetNetworkDetailsAction.m" lineNumber:27 description:{@"Unable to find class %s", "CoreTelephonyClient"}];

    __break(1u);
  }
}

id getCTServiceDescriptorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCTServiceDescriptorClass_softClass;
  v7 = getCTServiceDescriptorClass_softClass;
  if (!getCTServiceDescriptorClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCTServiceDescriptorClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getCTServiceDescriptorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E0671E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCTRadioAccessTechnologyGPRSSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary();
  result = dlsym(v2, "CTRadioAccessTechnologyGPRS");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTRadioAccessTechnologyGPRSSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *CoreTelephonyLibrary()
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CoreTelephonyLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CoreTelephonyLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278C19AE8;
    v7 = 0;
    CoreTelephonyLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreTelephonyLibraryCore_frameworkLibrary;
  if (!CoreTelephonyLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreTelephonyLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFGetNetworkDetailsAction.m" lineNumber:25 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

void *__getCTRadioAccessTechnologyEdgeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary();
  result = dlsym(v2, "CTRadioAccessTechnologyEdge");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTRadioAccessTechnologyEdgeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTRadioAccessTechnologyWCDMASymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary();
  result = dlsym(v2, "CTRadioAccessTechnologyWCDMA");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTRadioAccessTechnologyWCDMASymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTRadioAccessTechnologyHSDPASymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary();
  result = dlsym(v2, "CTRadioAccessTechnologyHSDPA");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTRadioAccessTechnologyHSDPASymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTRadioAccessTechnologyHSUPASymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary();
  result = dlsym(v2, "CTRadioAccessTechnologyHSUPA");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTRadioAccessTechnologyHSUPASymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTRadioAccessTechnologyCDMA1xSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary();
  result = dlsym(v2, "CTRadioAccessTechnologyCDMA1x");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTRadioAccessTechnologyCDMA1xSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTRadioAccessTechnologyCDMAEVDORev0SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary();
  result = dlsym(v2, "CTRadioAccessTechnologyCDMAEVDORev0");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTRadioAccessTechnologyCDMAEVDORev0SymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTRadioAccessTechnologyCDMAEVDORevASymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary();
  result = dlsym(v2, "CTRadioAccessTechnologyCDMAEVDORevA");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTRadioAccessTechnologyCDMAEVDORevASymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTRadioAccessTechnologyCDMAEVDORevBSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary();
  result = dlsym(v2, "CTRadioAccessTechnologyCDMAEVDORevB");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTRadioAccessTechnologyCDMAEVDORevBSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTRadioAccessTechnologyeHRPDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary();
  result = dlsym(v2, "CTRadioAccessTechnologyeHRPD");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTRadioAccessTechnologyeHRPDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTRadioAccessTechnologyLTESymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary();
  result = dlsym(v2, "CTRadioAccessTechnologyLTE");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTRadioAccessTechnologyLTESymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTRadioAccessTechnologyNRNSASymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary();
  result = dlsym(v2, "CTRadioAccessTechnologyNRNSA");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTRadioAccessTechnologyNRNSASymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTRadioAccessTechnologyNRSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary();
  result = dlsym(v2, "CTRadioAccessTechnologyNR");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTRadioAccessTechnologyNRSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreTelephonyLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreTelephonyLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __getCTServiceDescriptorClass_block_invoke(uint64_t a1)
{
  CoreTelephonyLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CTServiceDescriptor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCTServiceDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCTServiceDescriptorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFGetNetworkDetailsAction.m" lineNumber:28 description:{@"Unable to find class %s", "CTServiceDescriptor"}];

    __break(1u);
  }
}

xmlParserInputPtr enxmlExternalEntityLoader(uint64_t a1, uint64_t a2, xmlParserCtxt *a3)
{
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:a1 encoding:4];
  v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v6];
  v8 = v7;
  if (!v7)
  {
    v14 = 0;
LABEL_13:
    if (defaultExternalEntityLoader)
    {
      v14 = defaultExternalEntityLoader(a1, a2, a3);
    }

    goto LABEL_15;
  }

  v9 = [v7 path];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 lastPathComponent];
    if (v11)
    {
      v12 = [ENSDKResourceLoader pathToResourceNamed:v11 extension:0];
      v13 = v12;
      if (v12)
      {
        v14 = xmlNewInputFromFile(a3, [v12 fileSystemRepresentation]);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  if (!v14)
  {
    goto LABEL_13;
  }

LABEL_15:

  return v14;
}

uint64_t waitsocket(int a1, uint64_t a2)
{
  v9.tv_sec = 0;
  *&v9.tv_usec = 500000;
  memset(v8, 0, sizeof(v8));
  if (__darwin_check_fd_set_overflow(a1, v8, 0))
  {
    *(&v8[0].tv_sec + ((a1 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << a1;
  }

  v4 = libssh2_session_block_directions(a2);
  if (v4)
  {
    v5 = v8;
  }

  else
  {
    v5 = 0;
  }

  if ((v4 & 2) != 0)
  {
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  return select(a1 + 1, v5, v6, 0, &v9);
}

void sub_23E069DA4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6147(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23E06B6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSSReadingListClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!SafariServicesLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __SafariServicesLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C19D20;
    v9 = 0;
    SafariServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SafariServicesLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SafariServicesLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFAddToReadingListAction.m" lineNumber:23 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("SSReadingList");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSSReadingListClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFAddToReadingListAction.m" lineNumber:24 description:{@"Unable to find class %s", "SSReadingList"}];

LABEL_10:
    __break(1u);
  }

  getSSReadingListClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SafariServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SafariServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E06C708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAXGetComponentsInSiriVoiceIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary();
  result = dlsym(v2, "AXGetComponentsInSiriVoiceIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXGetComponentsInSiriVoiceIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *AccessibilityUtilitiesLibrary()
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AccessibilityUtilitiesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278C19DB8;
    v7 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AccessibilityUtilitiesLibraryCore_frameworkLibrary;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AccessibilityUtilitiesLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFSpeechSynthesisVoice.m" lineNumber:24 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id getAVSpeechSynthesisVoiceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVSpeechSynthesisVoiceClass_softClass;
  v7 = getAVSpeechSynthesisVoiceClass_softClass;
  if (!getAVSpeechSynthesisVoiceClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAVSpeechSynthesisVoiceClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getAVSpeechSynthesisVoiceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E06CA80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAVSpeechSynthesisVoiceClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!AVFoundationLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __AVFoundationLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C19DA0;
    v9 = 0;
    AVFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AVFoundationLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AVFoundationLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFSpeechSynthesisVoice.m" lineNumber:37 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("AVSpeechSynthesisVoice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVSpeechSynthesisVoiceClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFSpeechSynthesisVoice.m" lineNumber:38 description:{@"Unable to find class %s", "AVSpeechSynthesisVoice"}];

LABEL_10:
    __break(1u);
  }

  getAVSpeechSynthesisVoiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AVFoundationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AVFoundationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id getAXAlternativeVoicesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAXAlternativeVoicesClass_softClass;
  v7 = getAXAlternativeVoicesClass_softClass;
  if (!getAXAlternativeVoicesClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAXAlternativeVoicesClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getAXAlternativeVoicesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E06CE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAXAlternativeVoicesClass_block_invoke(uint64_t a1)
{
  AccessibilityUtilitiesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AXAlternativeVoices");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAXAlternativeVoicesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAXAlternativeVoicesClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSpeechSynthesisVoice.m" lineNumber:25 description:{@"Unable to find class %s", "AXAlternativeVoices"}];

    __break(1u);
  }
}

void sub_23E06D708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAXSettingsClass_block_invoke(uint64_t a1)
{
  AccessibilityUtilitiesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AXSettings");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAXSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAXSettingsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSpeechSynthesisVoice.m" lineNumber:41 description:{@"Unable to find class %s", "AXSettings"}];

    __break(1u);
  }
}

void *__getAXSpeechSourceKeySpeechFeaturesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary();
  result = dlsym(v2, "AXSpeechSourceKeySpeechFeatures");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXSpeechSourceKeySpeechFeaturesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id _WFCallUtilitiesContactsProcessingQueue()
{
  if (_WFCallUtilitiesContactsProcessingQueue_onceToken != -1)
  {
    dispatch_once(&_WFCallUtilitiesContactsProcessingQueue_onceToken, &__block_literal_global_225);
  }

  v1 = _WFCallUtilitiesContactsProcessingQueue_queue;

  return v1;
}

void sub_23E06EA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6542(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

_BYTE *NewBase64Decode(char *__s, size_t a2, void *a3)
{
  v4 = a2;
  if (a2 == -1)
  {
    v4 = strlen(__s);
  }

  result = malloc_type_malloc(3 * ((v4 + 3) >> 2), 0x100004077774924uLL);
  v7 = 0;
  if (v4)
  {
    v8 = 0;
    do
    {
      v9 = 0;
      do
      {
        v10 = base64DecodeLookup[__s[v8]];
        if (v10 != 65)
        {
          *(&v15 + v9++) = v10;
          if (v9 == 4)
          {
            ++v8;
            goto LABEL_12;
          }
        }

        ++v8;
      }

      while (v8 < v4);
      if (v9 <= 1)
      {
        goto LABEL_16;
      }

LABEL_12:
      v11 = v16;
      result[v7] = (v16 >> 4) | (4 * v15);
      if (v9 < 3)
      {
        v9 = 2;
      }

      else
      {
        v12 = v17;
        result[v7 + 1] = (v17 >> 2) | (16 * v11);
        if (v9 != 3)
        {
          result[v7 + 2] = v18 | (v12 << 6);
        }
      }

LABEL_16:
      v13 = v9 != 0;
      v14 = v9 - 1;
      if (!v13)
      {
        v14 = 0;
      }

      v7 += v14;
    }

    while (v8 < v4);
  }

  if (a3)
  {
    *a3 = v7;
  }

  return result;
}

_BYTE *NewBase64Encode(uint64_t a1, unint64_t a2, int a3, void *a4)
{
  v8 = a2 / 3;
  if (a2 % 3)
  {
    ++v8;
  }

  v9 = (v8 >> 3) & 0x7FFFFFFFFFFFFFFLL;
  if (!a3)
  {
    v9 = 0;
  }

  result = malloc_type_malloc((v9 + 4 * v8) | 1, 0x100004077774924uLL);
  if (result)
  {
    v11 = 0;
    v12 = 0;
    if (a3)
    {
      v13 = 48;
    }

    else
    {
      v13 = a2;
    }

    v14 = v13;
    while (1)
    {
      v15 = v14 >= a2 ? a2 : v14;
      if (v11 + 2 >= v15)
      {
        v17 = v11;
      }

      else
      {
        do
        {
          v16 = &result[v12];
          *v16 = base64EncodeLookup[*(a1 + v11) >> 2];
          v16[1] = base64EncodeLookup[(*(a1 + v11 + 1) >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (*(a1 + v11) & 3))];
          v16[2] = base64EncodeLookup[(*(a1 + v11 + 2) >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (*(a1 + v11 + 1) & 0xF))];
          v17 = v11 + 3;
          v12 += 4;
          v16[3] = base64EncodeLookup[*(a1 + v11 + 2) & 0x3F];
          v18 = v11 + 5;
          v11 += 3;
        }

        while (v18 < v15);
      }

      if (v14 >= a2)
      {
        break;
      }

      *&result[v12] = 2573;
      v12 += 2;
      v14 = v15 + v13;
      v11 = v17;
    }

    v19 = v17 + 1;
    if (v17 + 1 >= a2)
    {
      if (v17 >= a2)
      {
        goto LABEL_24;
      }

      v22 = &result[v12];
      *v22 = base64EncodeLookup[*(a1 + v17) >> 2];
      v22[1] = base64EncodeLookup[16 * (*(a1 + v17) & 3)];
      v21 = 61;
    }

    else
    {
      v20 = &result[v12];
      *v20 = base64EncodeLookup[*(a1 + v17) >> 2];
      v20[1] = base64EncodeLookup[(*(a1 + v19) >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (*(a1 + v17) & 3))];
      v21 = base64EncodeLookup[4 * (*(a1 + v19) & 0xF)];
    }

    v23 = &result[v12];
    v23[2] = v21;
    v12 += 4;
    v23[3] = 61;
LABEL_24:
    result[v12] = 0;
    if (a4)
    {
      *a4 = v12;
    }
  }

  return result;
}

void sub_23E071D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getANAnnouncementContentClass_block_invoke(uint64_t a1)
{
  AnnounceLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ANAnnouncementContent");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getANAnnouncementContentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getANAnnouncementContentClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAnnounceWrapper.m" lineNumber:25 description:{@"Unable to find class %s", "ANAnnouncementContent"}];

    __break(1u);
  }
}

id getANAnnouncementDestinationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getANAnnouncementDestinationClass_softClass;
  v7 = getANAnnouncementDestinationClass_softClass;
  if (!getANAnnouncementDestinationClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getANAnnouncementDestinationClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getANAnnouncementDestinationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E071F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getANAnnouncementRequestClass_block_invoke(uint64_t a1)
{
  AnnounceLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ANAnnouncementRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getANAnnouncementRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getANAnnouncementRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAnnounceWrapper.m" lineNumber:23 description:{@"Unable to find class %s", "ANAnnouncementRequest"}];

    __break(1u);
  }
}

void AnnounceLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AnnounceLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AnnounceLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C19EF0;
    v6 = 0;
    AnnounceLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AnnounceLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AnnounceLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"WFAnnounceWrapper.m" lineNumber:21 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __AnnounceLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AnnounceLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __getANAnnouncementDestinationClass_block_invoke(uint64_t a1)
{
  AnnounceLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ANAnnouncementDestination");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getANAnnouncementDestinationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getANAnnouncementDestinationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAnnounceWrapper.m" lineNumber:26 description:{@"Unable to find class %s", "ANAnnouncementDestination"}];

    __break(1u);
  }
}

void __getANAnnounceClass_block_invoke(uint64_t a1)
{
  AnnounceLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ANAnnounce");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getANAnnounceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getANAnnounceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAnnounceWrapper.m" lineNumber:22 description:{@"Unable to find class %s", "ANAnnounce"}];

    __break(1u);
  }
}

id getAFPreferencesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAFPreferencesClass_softClass;
  v7 = getAFPreferencesClass_softClass;
  if (!getAFPreferencesClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAFPreferencesClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getAFPreferencesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E072630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAFPreferencesClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __AssistantServicesLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C19F20;
    v9 = 0;
    AssistantServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AssistantServicesLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFAnnounceWrapper.m" lineNumber:27 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("AFPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAFPreferencesClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFAnnounceWrapper.m" lineNumber:28 description:{@"Unable to find class %s", "AFPreferences"}];

LABEL_10:
    __break(1u);
  }

  getAFPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AssistantServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E0729E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getHFUtilitiesClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!HomeLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __HomeLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C19F08;
    v9 = 0;
    HomeLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!HomeLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *HomeLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFAnnounceWrapper.m" lineNumber:19 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("HFUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getHFUtilitiesClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFAnnounceWrapper.m" lineNumber:20 description:{@"Unable to find class %s", "HFUtilities"}];

LABEL_10:
    __break(1u);
  }

  getHFUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __HomeLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HomeLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __getCNMutableContactClass_block_invoke(uint64_t a1)
{
  ContactsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNMutableContact");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNMutableContactClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCNMutableContactClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAddNewContactAction.m" lineNumber:20 description:{@"Unable to find class %s", "CNMutableContact"}];

    __break(1u);
  }
}

id getCNLabeledValueClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNLabeledValueClass_softClass;
  v7 = getCNLabeledValueClass_softClass;
  if (!getCNLabeledValueClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCNLabeledValueClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getCNLabeledValueClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E073F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCNLabeledValueClass_block_invoke(uint64_t a1)
{
  ContactsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNLabeledValue");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNLabeledValueClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCNLabeledValueClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAddNewContactAction.m" lineNumber:22 description:{@"Unable to find class %s", "CNLabeledValue"}];

    __break(1u);
  }
}

void ContactsLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary_7210)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ContactsLibraryCore_block_invoke_7211;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C19FF0;
    v6 = 0;
    ContactsLibraryCore_frameworkLibrary_7210 = _sl_dlopen();
  }

  if (!ContactsLibraryCore_frameworkLibrary_7210)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ContactsLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"WFAddNewContactAction.m" lineNumber:18 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __ContactsLibraryCore_block_invoke_7211(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary_7210 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E074348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCNPhoneNumberClass_block_invoke(uint64_t a1)
{
  ContactsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNPhoneNumber");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNPhoneNumberClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCNPhoneNumberClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAddNewContactAction.m" lineNumber:23 description:{@"Unable to find class %s", "CNPhoneNumber"}];

    __break(1u);
  }
}

id getAFPreferencesClass_7598()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAFPreferencesClass_softClass_7599;
  v7 = getAFPreferencesClass_softClass_7599;
  if (!getAFPreferencesClass_softClass_7599)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAFPreferencesClass_block_invoke_7600;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getAFPreferencesClass_block_invoke_7600(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E076168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAFPreferencesClass_block_invoke_7600(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary_7601)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __AssistantServicesLibraryCore_block_invoke_7602;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C1A030;
    v9 = 0;
    AssistantServicesLibraryCore_frameworkLibrary_7601 = _sl_dlopen();
  }

  if (!AssistantServicesLibraryCore_frameworkLibrary_7601)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AssistantServicesLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFSpeechRecognitionAccessResource.m" lineNumber:18 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("AFPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAFPreferencesClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFSpeechRecognitionAccessResource.m" lineNumber:19 description:{@"Unable to find class %s", "AFPreferences"}];

LABEL_10:
    __break(1u);
  }

  getAFPreferencesClass_softClass_7599 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AssistantServicesLibraryCore_block_invoke_7602(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary_7601 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E0790C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WFDiskCacheKeyArgs(void *a1, id *a2)
{
  v3 = a1;
  v12 = a2;
  v4 = objc_opt_new();
  v5 = v3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    do
    {
      [v4 addObject:v7];
      v8 = v12++;
      v9 = *v8;

      v7 = v9;
    }

    while (v9);
  }

  v10 = [v4 componentsJoinedByString:@"_"];

  return v10;
}

uint64_t __Block_byref_object_copy__8055(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id WFDiskCacheKey(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  if (a1)
  {
    a1 = WFDiskCacheKeyArgs(a1, &a9);
    v9 = vars8;
  }

  return a1;
}

void sub_23E07EF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 + 40));
  _Unwind_Resume(a1);
}

void sub_23E084EAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23E0856D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getPHAssetClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPHAssetClass_softClass;
  v7 = getPHAssetClass_softClass;
  if (!getPHAssetClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPHAssetClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getPHAssetClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E08ACBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23E08AED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10669(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __getPHAssetCollectionChangeRequestClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHAssetCollectionChangeRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHAssetCollectionChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPHAssetCollectionChangeRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFRemovePhotoFromAlbumAction.m" lineNumber:20 description:{@"Unable to find class %s", "PHAssetCollectionChangeRequest"}];

    __break(1u);
  }
}

void PhotosLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!PhotosLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __PhotosLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C1A408;
    v6 = 0;
    PhotosLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PhotosLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PhotosLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"WFRemovePhotoFromAlbumAction.m" lineNumber:17 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __PhotosLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PhotosLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __getPHAssetClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHAsset");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHAssetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPHAssetClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFRemovePhotoFromAlbumAction.m" lineNumber:18 description:{@"Unable to find class %s", "PHAsset"}];

    __break(1u);
  }
}

__CFString *MIMETypeForExtension(CFStringRef inTag)
{
  PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x277CC1F58], inTag, 0);
  if (PreferredIdentifierForTag && (v2 = PreferredIdentifierForTag, v3 = UTTypeCopyPreferredTagWithClass(PreferredIdentifierForTag, *MEMORY[0x277CC1F60]), CFRelease(v2), v3))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithString:v3];
    CFRelease(v3);
  }

  else
  {
    v4 = @"application/octet-stream";
  }

  return v4;
}

id getMPCAssistantMutableRemoteControlDestinationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPCAssistantMutableRemoteControlDestinationClass_softClass;
  v7 = getMPCAssistantMutableRemoteControlDestinationClass_softClass;
  if (!getMPCAssistantMutableRemoteControlDestinationClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPCAssistantMutableRemoteControlDestinationClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getMPCAssistantMutableRemoteControlDestinationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E08D650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPCAssistantMutableRemoteControlDestinationClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!MediaPlaybackCoreLibraryCore_frameworkLibrary_10879)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __MediaPlaybackCoreLibraryCore_block_invoke_10880;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C1A448;
    v9 = 0;
    MediaPlaybackCoreLibraryCore_frameworkLibrary_10879 = _sl_dlopen();
  }

  if (!MediaPlaybackCoreLibraryCore_frameworkLibrary_10879)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlaybackCoreLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFMediaPlaybackController+MPCAssistant.m" lineNumber:16 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("MPCAssistantMutableRemoteControlDestination");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPCAssistantMutableRemoteControlDestinationClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFMediaPlaybackController+MPCAssistant.m" lineNumber:17 description:{@"Unable to find class %s", "MPCAssistantMutableRemoteControlDestination"}];

LABEL_10:
    __break(1u);
  }

  getMPCAssistantMutableRemoteControlDestinationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __MediaPlaybackCoreLibraryCore_block_invoke_10880(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlaybackCoreLibraryCore_frameworkLibrary_10879 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E08F184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUIVideoEditorControllerClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary_11151)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __UIKitLibraryCore_block_invoke_11152;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C1A4F8;
    v9 = 0;
    UIKitLibraryCore_frameworkLibrary_11151 = _sl_dlopen();
  }

  if (!UIKitLibraryCore_frameworkLibrary_11151)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *UIKitLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFTrimVideoAction.m" lineNumber:16 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("UIVideoEditorController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUIVideoEditorControllerClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFTrimVideoAction.m" lineNumber:17 description:{@"Unable to find class %s", "UIVideoEditorController"}];

LABEL_10:
    __break(1u);
  }

  getUIVideoEditorControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke_11152(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary_11151 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E08F7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void TranslationLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!TranslationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __TranslationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C1A588;
    v6 = 0;
    TranslationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!TranslationLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *TranslationLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"WFTranslateTextAction.m" lineNumber:18 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __TranslationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  TranslationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E08FED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_LTTranslatorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_LTTranslatorClass_softClass;
  v7 = get_LTTranslatorClass_softClass;
  if (!get_LTTranslatorClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __get_LTTranslatorClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __get_LTTranslatorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E08FFB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11266(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getRTRoutineManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRTRoutineManagerClass_softClass_11675;
  v7 = getRTRoutineManagerClass_softClass_11675;
  if (!getRTRoutineManagerClass_softClass_11675)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getRTRoutineManagerClass_block_invoke_11676;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getRTRoutineManagerClass_block_invoke_11676(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E09354C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getRTRoutineManagerClass_block_invoke_11676(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!CoreRoutineLibraryCore_frameworkLibrary_11677)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __CoreRoutineLibraryCore_block_invoke_11678;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C1A7D8;
    v9 = 0;
    CoreRoutineLibraryCore_frameworkLibrary_11677 = _sl_dlopen();
  }

  if (!CoreRoutineLibraryCore_frameworkLibrary_11677)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreRoutineLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFSetParkedCarAction.m" lineNumber:26 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("RTRoutineManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getRTRoutineManagerClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFSetParkedCarAction.m" lineNumber:31 description:{@"Unable to find class %s", "RTRoutineManager"}];

LABEL_10:
    __break(1u);
  }

  getRTRoutineManagerClass_softClass_11675 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreRoutineLibraryCore_block_invoke_11678(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreRoutineLibraryCore_frameworkLibrary_11677 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E093EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCLLocationClass_block_invoke_11714(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_11715)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __CoreLocationLibraryCore_block_invoke_11716;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C1A7F0;
    v9 = 0;
    CoreLocationLibraryCore_frameworkLibrary_11715 = _sl_dlopen();
  }

  if (!CoreLocationLibraryCore_frameworkLibrary_11715)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFSetParkedCarAction.m" lineNumber:27 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CLLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCLLocationClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFSetParkedCarAction.m" lineNumber:34 description:{@"Unable to find class %s", "CLLocation"}];

LABEL_10:
    __break(1u);
  }

  getCLLocationClass_softClass_11713 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreLocationLibraryCore_block_invoke_11716(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_11715 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class initUIDidTakeScreenshotAction()
{
  if (UIKitLibrary_sOnce_11837 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_11837, &__block_literal_global_292);
  }

  result = objc_getClass("UIDidTakeScreenshotAction");
  classUIDidTakeScreenshotAction = result;
  getUIDidTakeScreenshotActionClass = UIDidTakeScreenshotActionFunction;
  return result;
}

void *__UIKitLibrary_block_invoke_11840()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib_11842 = result;
  return result;
}

void sub_23E096614(_Unwind_Exception *a1)
{
  (*(v2 + 16))(v2);
  (*(v1 + 16))(v1);
  _Unwind_Resume(a1);
}

void release_surface_data(__IOSurface *a1)
{
  if (a1)
  {
    IOSurfaceUnlock(a1, 1u, 0);

    CFRelease(a1);
  }
}

uint64_t (*initSBFlashColor(uint64_t a1, float a2, float a3, float a4))()
{
  if (SpringBoardServicesLibrary_sOnce != -1)
  {
    dispatch_once(&SpringBoardServicesLibrary_sOnce, &__block_literal_global_11858);
  }

  result = dlsym(SpringBoardServicesLibrary_sLib, "SBFlashColor");
  softLinkSBFlashColor = result;
  if (result)
  {
    v9.n128_f32[0] = a2;
    v10.n128_f32[0] = a3;
    v11.n128_f32[0] = a4;

    return (result)(a1, v9, v10, v11);
  }

  return result;
}

void *__SpringBoardServicesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SpringBoardServices.framework/SpringBoardServices", 2);
  SpringBoardServicesLibrary_sLib = result;
  return result;
}

uint64_t (*initSBSSpringBoardServerPort())()
{
  if (SpringBoardServicesLibrary_sOnce != -1)
  {
    dispatch_once(&SpringBoardServicesLibrary_sOnce, &__block_literal_global_11858);
  }

  result = dlsym(SpringBoardServicesLibrary_sLib, "SBSSpringBoardServerPort");
  softLinkSBSSpringBoardServerPort = result;
  if (result)
  {

    return result();
  }

  return result;
}

void sub_23E098570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getHKDisplayTypeControllerClass_block_invoke_12114(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!HealthUILibraryCore_frameworkLibrary_12116)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __HealthUILibraryCore_block_invoke_12117;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C1AA30;
    v9 = 0;
    HealthUILibraryCore_frameworkLibrary_12116 = _sl_dlopen();
  }

  if (!HealthUILibraryCore_frameworkLibrary_12116)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *HealthUILibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFHKSampleContentItem.m" lineNumber:20 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("HKDisplayTypeController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getHKDisplayTypeControllerClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFHKSampleContentItem.m" lineNumber:21 description:{@"Unable to find class %s", "HKDisplayTypeController"}];

LABEL_10:
    __break(1u);
  }

  getHKDisplayTypeControllerClass_softClass_12113 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __HealthUILibraryCore_block_invoke_12117(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HealthUILibraryCore_frameworkLibrary_12116 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E099D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12146(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getMPMediaQueryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMediaQueryClass_softClass_12331;
  v7 = getMPMediaQueryClass_softClass_12331;
  if (!getMPMediaQueryClass_softClass_12331)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPMediaQueryClass_block_invoke_12332;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getMPMediaQueryClass_block_invoke_12332(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E09B5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMediaQueryClass_block_invoke_12332(uint64_t a1)
{
  MediaPlayerLibrary_12333();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaQuery");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaQueryClass_softClass_12331 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaQueryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPlayMusicAction.m" lineNumber:33 description:{@"Unable to find class %s", "MPMediaQuery"}];

    __break(1u);
  }
}

void *MediaPlayerLibrary_12333()
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_12342)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke_12343;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278C1ABA0;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_12342 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_12342;
  if (!MediaPlayerLibraryCore_frameworkLibrary_12342)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFPlayMusicAction.m" lineNumber:29 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_12343(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_12342 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __getMPMusicPlayerControllerClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_12333();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMusicPlayerController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMusicPlayerControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMusicPlayerControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPlayMusicAction.m" lineNumber:30 description:{@"Unable to find class %s", "MPMusicPlayerController"}];

    __break(1u);
  }
}

id getMPCAssistantCommandClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPCAssistantCommandClass_softClass;
  v7 = getMPCAssistantCommandClass_softClass;
  if (!getMPCAssistantCommandClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPCAssistantCommandClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getMPCAssistantCommandClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E09C180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPCAssistantCommandClass_block_invoke(uint64_t a1)
{
  MediaPlaybackCoreLibrary_12353();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPCAssistantCommand");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPCAssistantCommandClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPCAssistantCommandClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPlayMusicAction.m" lineNumber:41 description:{@"Unable to find class %s", "MPCAssistantCommand"}];

    __break(1u);
  }
}

void MediaPlaybackCoreLibrary_12353()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlaybackCoreLibraryCore_frameworkLibrary_12355)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlaybackCoreLibraryCore_block_invoke_12356;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C1ABB8;
    v6 = 0;
    MediaPlaybackCoreLibraryCore_frameworkLibrary_12355 = _sl_dlopen();
  }

  if (!MediaPlaybackCoreLibraryCore_frameworkLibrary_12355)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlaybackCoreLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"WFPlayMusicAction.m" lineNumber:40 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __MediaPlaybackCoreLibraryCore_block_invoke_12356(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlaybackCoreLibraryCore_frameworkLibrary_12355 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E09C7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPCAssistantStoreTracklistPlaybackQueueClass_block_invoke(uint64_t a1)
{
  MediaPlaybackCoreLibrary_12353();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPCAssistantStoreTracklistPlaybackQueue");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPCAssistantStoreTracklistPlaybackQueueClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPCAssistantStoreTracklistPlaybackQueueClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPlayMusicAction.m" lineNumber:42 description:{@"Unable to find class %s", "MPCAssistantStoreTracklistPlaybackQueue"}];

    __break(1u);
  }
}

void __getMPCAssistantQueryPlaybackQueueClass_block_invoke(uint64_t a1)
{
  MediaPlaybackCoreLibrary_12353();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPCAssistantQueryPlaybackQueue");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPCAssistantQueryPlaybackQueueClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPCAssistantQueryPlaybackQueueClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPlayMusicAction.m" lineNumber:43 description:{@"Unable to find class %s", "MPCAssistantQueryPlaybackQueue"}];

    __break(1u);
  }
}

void sub_23E09D058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMediaPropertyPredicateClass_block_invoke_12368(uint64_t a1)
{
  MediaPlayerLibrary_12333();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaPropertyPredicate");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaPropertyPredicateClass_softClass_12367 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaPropertyPredicateClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPlayMusicAction.m" lineNumber:35 description:{@"Unable to find class %s", "MPMediaPropertyPredicate"}];

    __break(1u);
  }
}

void *__getMPMediaItemPropertyIsPlayableSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_12333();
  result = dlsym(v2, "MPMediaItemPropertyIsPlayable");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyIsPlayableSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_23E09D498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPPlaybackArchiveClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_12333();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPPlaybackArchive");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPPlaybackArchiveClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPPlaybackArchiveClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPlayMusicAction.m" lineNumber:32 description:{@"Unable to find class %s", "MPPlaybackArchive"}];

    __break(1u);
  }
}

void sub_23E09D8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMediaItemCollectionClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_12333();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaItemCollection");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaItemCollectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaItemCollectionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPlayMusicAction.m" lineNumber:31 description:{@"Unable to find class %s", "MPMediaItemCollection"}];

    __break(1u);
  }
}

void sub_23E09E3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAVSystemControllerClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!MediaExperienceLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __MediaExperienceLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C1AC48;
    v9 = 0;
    MediaExperienceLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MediaExperienceLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaExperienceLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFDevice+SystemSettings.m" lineNumber:23 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("AVSystemController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVSystemControllerClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFDevice+SystemSettings.m" lineNumber:24 description:{@"Unable to find class %s", "AVSystemController"}];

LABEL_10:
    __break(1u);
  }

  getAVSystemControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __MediaExperienceLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaExperienceLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id WFPinboardGetSecretForUsername(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = WFKeychainWithIdentifier(a2);
  v5 = [v4 dataForKey:v3];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v5 encoding:4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

WFKeychain *WFKeychainWithIdentifier(uint64_t a1)
{
  v1 = [@"is.workflow.my.app.pinboard.%@" stringByAppendingString:a1];
  v2 = [WFKeychain alloc];
  v3 = [(WFKeychain *)v2 initWithService:v1 accessGroup:*MEMORY[0x277CFC730]];

  return v3;
}

uint64_t WFPinboardStoreSecretForUsername(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  v7 = WFKeychainWithIdentifier(a3);
  v8 = [v5 dataUsingEncoding:4];

  v9 = [v7 setData:v8 forKey:v6];
  return v9;
}

id WFRemoveNull(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v1];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __WFRemoveNull_block_invoke;
    v13[3] = &unk_278C1DE20;
    v14 = v2;
    v3 = v2;
    [v1 enumerateKeysAndObjectsUsingBlock:v13];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];
    v5 = v14;
LABEL_5:

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithArray:v1];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __WFRemoveNull_block_invoke_2;
    v11 = &unk_278C1AD20;
    v12 = v6;
    v3 = v6;
    [v1 enumerateObjectsUsingBlock:&v8];
    v4 = [MEMORY[0x277CBEA60] arrayWithArray:{v3, v8, v9, v10, v11}];
    v5 = v12;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
  }

  else
  {
    v4 = v1;
  }

LABEL_6:

  return v4;
}

void __WFRemoveNull_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = WFRemoveNull(a3);
  v7 = *(a1 + 32);
  v8 = v6;
  if (v6)
  {
    [v7 setObject:v6 forKey:v5];
  }

  else
  {
    [v7 removeObjectForKey:v5];
  }
}

void __WFRemoveNull_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WFRemoveNull(v3);
  v5 = *(a1 + 32);
  v7 = v4;
  if (v4)
  {
    v6 = [v5 indexOfObject:v3];

    [v5 replaceObjectAtIndex:v6 withObject:v7];
  }

  else
  {
    [v5 removeObjectIdenticalTo:v3];
  }
}

void WFConfigureRequestBodyWithFile(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = a1;
    v8 = [v3 inputStream];
    v5 = [v3 fileSize];
    v6 = [v3 wfType];

    v7 = [v6 MIMEType];
    WFConfigureRequestBody(v4, v8, v5, v7, 0);
  }
}

void WFConfigureRequestBody(void *a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v13 = a1;
  v9 = a4;
  [v13 setHTTPBodyStream:a2];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", a3];
  if (a5)
  {
    [v13 setValue:v10 forHTTPHeaderField:@"Content-Length"];
    [v13 setValue:v9 forHTTPHeaderField:@"Content-Type"];
  }

  else
  {
    v11 = [v13 valueForHTTPHeaderField:@"Content-Length"];

    if (!v11)
    {
      [v13 addValue:v10 forHTTPHeaderField:@"Content-Length"];
    }

    v12 = [v13 valueForHTTPHeaderField:@"Content-Type"];

    if (!v12)
    {
      [v13 addValue:v9 forHTTPHeaderField:@"Content-Type"];
    }
  }
}

void __WFConfigureRequestBodyWithMultipartFormDictionary_block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [*(a1 + 32) objectForKey:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __WFConfigureRequestBodyWithMultipartFormDictionary_block_invoke_2;
    v9[3] = &unk_278C211A8;
    v10 = *(a1 + 40);
    v11 = v6;
    v12 = v7;
    [v8 getFileRepresentation:v9 forType:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 40) addPartWithName:v6 string:v8];
    }

    (*(v7 + 2))(v7, 0);
  }
}

void __WFConfigureRequestBodyWithMultipartFormDictionary_block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10 = a3;
  v6 = [v5 length];
  v7 = MEMORY[0x277CCACA8];
  v8 = [*(a1 + 40) boundary];
  v9 = [v7 stringWithFormat:@"multipart/form-data boundary=%@", v8];;
  WFConfigureRequestBody(v4, v5, v6, v9, 1);

  (*(*(a1 + 48) + 16))();
}

void __WFConfigureRequestBodyWithMultipartFormDictionary_block_invoke_2(void *a1, void *a2, void *a3)
{
  v11 = a3;
  if (a2)
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = a2;
    v8 = [v7 filename];
    v9 = [v7 inputStream];
    v10 = [v7 fileSize];

    [v5 addPartWithName:v6 filename:v8 stream:v9 streamLength:v10];
  }

  (*(a1[6] + 16))();
}

id getPDFDocumentClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPDFDocumentClass_softClass;
  v7 = getPDFDocumentClass_softClass;
  if (!getPDFDocumentClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPDFDocumentClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getPDFDocumentClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E0AFF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPDFDocumentClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!PDFKitLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __PDFKitLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C1AE80;
    v9 = 0;
    PDFKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PDFKitLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PDFKitLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFSplitPDFAction.m" lineNumber:15 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("PDFDocument");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPDFDocumentClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFSplitPDFAction.m" lineNumber:16 description:{@"Unable to find class %s", "PDFDocument"}];

LABEL_10:
    __break(1u);
  }

  getPDFDocumentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __PDFKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PDFKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id WFHealthKitAllAvailableUnits()
{
  if (WFHealthKitAllAvailableUnits_onceToken != -1)
  {
    dispatch_once(&WFHealthKitAllAvailableUnits_onceToken, &__block_literal_global_14071);
  }

  v1 = WFHealthKitAllAvailableUnits_units;

  return v1;
}

void __WFHealthKitAllAvailableUnits_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v0 pathForResource:@"WFHealthKitConstants" ofType:@"plist"];

  v1 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v20];
  v2 = [v1 objectForKeyedSubscript:@"Units"];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"group == 'si'"];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"group == 'non_si'"];
  v6 = [v2 filteredArrayUsingPredicate:v5];

  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"group == 'compound'"];
  v8 = [v2 filteredArrayUsingPredicate:v7];

  v9 = objc_opt_new();
  v10 = [MEMORY[0x277CBEAF8] currentLocale];
  v11 = [v10 localeIdentifier];
  v12 = [v11 isEqualToString:@"en_US"];

  if (v12)
  {
    v13 = v6;
  }

  else
  {
    v13 = v4;
  }

  if (v12)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  v15 = [v13 sortedArrayUsingComparator:&__block_literal_global_493];
  [v9 addObjectsFromArray:v15];

  v16 = [v14 sortedArrayUsingComparator:&__block_literal_global_493];
  [v9 addObjectsFromArray:v16];

  v17 = [v8 sortedArrayUsingComparator:&__block_literal_global_493];
  [v9 addObjectsFromArray:v17];

  v18 = [v9 if_map:&__block_literal_global_504];
  v19 = WFHealthKitAllAvailableUnits_units;
  WFHealthKitAllAvailableUnits_units = v18;
}

id __WFHealthKitAllAvailableUnits_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"unitString"];
  v3 = [MEMORY[0x277CCDAB0] unitFromString:v2];

  return v3;
}

uint64_t __WFHealthKitAllAvailableUnits_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"important"];
  v6 = [v5 BOOLValue];

  v7 = [v4 objectForKeyedSubscript:@"important"];

  v8 = [v7 BOOLValue];
  v9 = 1;
  if (!(v8 & 1 | ((v6 & 1) == 0)))
  {
    v9 = -1;
  }

  if (v6 != v8)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

id WFHealthKitReadableCharacteristicTypeToCharacteristicTypeIdentifierDictionary()
{
  if (WFHealthKitReadableCharacteristicTypeToCharacteristicTypeIdentifierDictionary_onceToken != -1)
  {
    dispatch_once(&WFHealthKitReadableCharacteristicTypeToCharacteristicTypeIdentifierDictionary_onceToken, &__block_literal_global_510);
  }

  v1 = WFHealthKitReadableCharacteristicTypeToCharacteristicTypeIdentifierDictionary_dictionary;

  return v1;
}

void __WFHealthKitReadableCharacteristicTypeToCharacteristicTypeIdentifierDictionary_block_invoke()
{
  v8[4] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedContentPropertyNameMarker(@"Biological Sex");
  v7[0] = v0;
  v8[0] = *MEMORY[0x277CCBB08];
  v1 = WFLocalizedContentPropertyNameMarker(@"Blood Type");
  v7[1] = v1;
  v8[1] = *MEMORY[0x277CCBB10];
  v2 = WFLocalizedContentPropertyNameMarker(@"Date of Birth");
  v7[2] = v2;
  v8[2] = *MEMORY[0x277CCBB18];
  v3 = WFLocalizedContentPropertyNameMarker(@"Wheelchair Use");
  v7[3] = v3;
  v8[3] = *MEMORY[0x277CCBB28];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v5 = WFHealthKitReadableCharacteristicTypeToCharacteristicTypeIdentifierDictionary_dictionary;
  WFHealthKitReadableCharacteristicTypeToCharacteristicTypeIdentifierDictionary_dictionary = v4;

  v6 = *MEMORY[0x277D85DE8];
}

id WFHealthKitReadableCharacteristicTypes()
{
  if (WFHealthKitReadableCharacteristicTypes_onceToken != -1)
  {
    dispatch_once(&WFHealthKitReadableCharacteristicTypes_onceToken, &__block_literal_global_512);
  }

  v1 = WFHealthKitReadableCharacteristicTypes_readableTypes;

  return v1;
}

void __WFHealthKitReadableCharacteristicTypes_block_invoke()
{
  v6[3] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedContentPropertyNameMarker(@"Biological Sex");
  v6[0] = v0;
  v1 = WFLocalizedContentPropertyNameMarker(@"Blood Type");
  v6[1] = v1;
  v2 = WFLocalizedContentPropertyNameMarker(@"Date of Birth");
  v6[2] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];
  v4 = WFHealthKitReadableCharacteristicTypes_readableTypes;
  WFHealthKitReadableCharacteristicTypes_readableTypes = v3;

  v5 = *MEMORY[0x277D85DE8];
}

id WFHealthKitReadableSampleTypeToSampleTypeIdentifierDictionary()
{
  if (WFHealthKitReadableSampleTypeToSampleTypeIdentifierDictionary_onceToken != -1)
  {
    dispatch_once(&WFHealthKitReadableSampleTypeToSampleTypeIdentifierDictionary_onceToken, &__block_literal_global_515);
  }

  v1 = WFHealthKitReadableSampleTypeToSampleTypeIdentifierDictionary_dictionary;

  return v1;
}

void __WFHealthKitReadableSampleTypeToSampleTypeIdentifierDictionary_block_invoke()
{
  v68[166] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCCC70];
  v67[0] = @"Steps";
  v67[1] = @"Active Calories";
  v1 = *MEMORY[0x277CCC918];
  v68[0] = v0;
  v68[1] = v1;
  v2 = *MEMORY[0x277CCC920];
  v67[2] = @"Exercise Time";
  v67[3] = @"Move Time";
  v3 = *MEMORY[0x277CCC928];
  v68[2] = v2;
  v68[3] = v3;
  v4 = *MEMORY[0x277CCC940];
  v67[4] = @"Stand Time";
  v67[5] = @"Walking Steadiness";
  v5 = *MEMORY[0x277CCC948];
  v68[4] = v4;
  v68[5] = v5;
  v6 = *MEMORY[0x277CCC960];
  v67[6] = @"Resting Calories";
  v67[7] = @"Cycling Distance";
  v7 = *MEMORY[0x277CCCB10];
  v68[6] = v6;
  v68[7] = v7;
  v8 = *MEMORY[0x277CCCB18];
  v67[8] = @"Snow Sports Distance";
  v67[9] = @"Swimming Distance";
  v9 = *MEMORY[0x277CCCB38];
  v68[8] = v8;
  v68[9] = v9;
  v10 = *MEMORY[0x277CCCB40];
  v67[10] = @"Walking + Running Distance";
  v67[11] = @"Wheelchair Distance";
  v11 = *MEMORY[0x277CCCB48];
  v68[10] = v10;
  v68[11] = v11;
  v12 = *MEMORY[0x277CCCB70];
  v67[12] = @"Flights Climbed";
  v67[13] = @"Nike Fuel";
  v13 = *MEMORY[0x277CCCBD0];
  v68[12] = v12;
  v68[13] = v13;
  v14 = *MEMORY[0x277CCCC10];
  v67[14] = @"Wheelchair Push Count";
  v67[15] = @"Running Ground Contact Time";
  v15 = *MEMORY[0x277CCCC30];
  v68[14] = v14;
  v68[15] = v15;
  v16 = *MEMORY[0x277CCCC38];
  v67[16] = @"Running Power";
  v67[17] = @"Running Speed";
  v17 = *MEMORY[0x277CCCC40];
  v68[16] = v16;
  v68[17] = v17;
  v18 = *MEMORY[0x277CCCC48];
  v67[18] = @"Running Stride Length";
  v67[19] = @"Running Vertical Oscillation";
  v19 = *MEMORY[0x277CCCC50];
  v68[18] = v18;
  v68[19] = v19;
  v20 = *MEMORY[0x277CCCC58];
  v67[20] = @"Six-Minute Walk";
  v67[21] = @"Stair Speed: Up";
  v21 = *MEMORY[0x277CCCC60];
  v68[20] = v20;
  v68[21] = v21;
  v22 = *MEMORY[0x277CCCC68];
  v67[22] = @"Stair Speed: Down";
  v67[23] = @"Swimming Stroke Count";
  v23 = *MEMORY[0x277CCCC78];
  v68[22] = v22;
  v68[23] = v23;
  v24 = *MEMORY[0x277CCCC88];
  v67[24] = @"UV Index";
  v67[25] = @"VO2 Max";
  v25 = *MEMORY[0x277CCCC98];
  v68[24] = v24;
  v68[25] = v25;
  v26 = *MEMORY[0x277CCCCA8];
  v67[26] = @"Walking Asymmetry";
  v67[27] = @"Double Support Time";
  v27 = *MEMORY[0x277CCCCB0];
  v68[26] = v26;
  v68[27] = v27;
  v28 = *MEMORY[0x277CCCCC0];
  v67[28] = @"Walking Speed";
  v67[29] = @"Step Length";
  v29 = *MEMORY[0x277CCCCC8];
  v68[28] = v28;
  v68[29] = v29;
  v30 = *MEMORY[0x277CCC938];
  v67[30] = @"Sleep Wrist Temperature";
  v67[31] = @"Body Fat Percentage";
  v31 = *MEMORY[0x277CCC988];
  v68[30] = v30;
  v68[31] = v31;
  v32 = *MEMORY[0x277CCC990];
  v67[32] = @"Weight";
  v67[33] = @"Body Mass Index";
  v33 = *MEMORY[0x277CCC998];
  v68[32] = v32;
  v68[33] = v33;
  v34 = *MEMORY[0x277CCCBA8];
  v67[34] = @"Height";
  v67[35] = @"Lean Body Mass";
  v35 = *MEMORY[0x277CCCBC8];
  v68[34] = v34;
  v68[35] = v35;
  v36 = *MEMORY[0x277CCCCA0];
  v67[36] = @"Waist Circumference";
  v67[37] = @"Atrial Fibrillation Burden";
  v37 = *MEMORY[0x277CCC950];
  v68[36] = v36;
  v68[37] = v37;
  v38 = *MEMORY[0x277CCC958];
  v67[38] = @"Basal Body Temperature";
  v67[39] = @"Diastolic Blood Pressure";
  v39 = *MEMORY[0x277CCC978];
  v68[38] = v38;
  v68[39] = v39;
  v40 = *MEMORY[0x277CCC980];
  v67[40] = @"Systolic Blood Pressure";
  v67[41] = @"Body Temperature";
  v41 = *MEMORY[0x277CCC9A0];
  v68[40] = v40;
  v68[41] = v41;
  v42 = *MEMORY[0x277CCCB90];
  v67[42] = @"Heart Rate";
  v67[43] = @"Heart Rate Recovery, 1 min";
  v43 = *MEMORY[0x277CCCB98];
  v68[42] = v42;
  v68[43] = v43;
  v44 = *MEMORY[0x277CCCBA0];
  v67[44] = @"Heart Rate Variability";
  v67[45] = @"Respiratory Rate";
  v45 = *MEMORY[0x277CCCC18];
  v68[44] = v44;
  v68[45] = v45;
  v46 = *MEMORY[0x277CCCC20];
  v67[46] = @"Resting Heart Rate";
  v67[47] = @"Walking Heart Rate Average";
  v47 = *MEMORY[0x277CCCCB8];
  v68[46] = v46;
  v68[47] = v47;
  v48 = *MEMORY[0x277CCC968];
  v67[48] = @"Blood Alcohol Content";
  v67[49] = @"Blood Glucose";
  v49 = *MEMORY[0x277CCC970];
  v68[48] = v48;
  v68[49] = v49;
  v50 = *MEMORY[0x277CCCB50];
  v67[50] = @"Electrodermal Activity";
  v67[51] = @"Environmental Audio Exposure";
  v51 = *MEMORY[0x277CCCB58];
  v68[50] = v50;
  v68[51] = v51;
  v52 = *MEMORY[0x277CCCB78];
  v67[52] = @"Forced Expiratory Volume, 1 sec";
  v67[53] = @"Forced Vital Capacity";
  v53 = *MEMORY[0x277CCCB80];
  v68[52] = v52;
  v68[53] = v53;
  v54 = *MEMORY[0x277CCCB88];
  v67[54] = @"Headphone Audio Exposure";
  v67[55] = @"Inhaler Usage";
  v55 = *MEMORY[0x277CCCBB8];
  v68[54] = v54;
  v68[55] = v55;
  v56 = *MEMORY[0x277CCCBC0];
  v67[56] = @"Insulin Delivery";
  v67[57] = @"Number of Alcoholic Beverages";
  v57 = *MEMORY[0x277CCCBD8];
  v68[56] = v56;
  v68[57] = v57;
  v58 = *MEMORY[0x277CCCBE0];
  v67[58] = @"Number of Times Fallen";
  v67[59] = @"Oxygen Saturation";
  v59 = *MEMORY[0x277CCCBE8];
  v68[58] = v58;
  v68[59] = v59;
  v60 = *MEMORY[0x277CCCBF8];
  v67[60] = @"Peak Expiratory Flow Rate";
  v67[61] = @"Peripheral Perfusion Index";
  v61 = *MEMORY[0x277CCCC00];
  v68[60] = v60;
  v68[61] = v61;
  v62 = *MEMORY[0x277CCC9D0];
  v67[62] = @"Biotin";
  v67[63] = @"Caffeine";
  v63 = *MEMORY[0x277CCC9D8];
  v68[62] = v62;
  v68[63] = v63;
  v67[64] = @"Calcium";
  v68[64] = *MEMORY[0x277CCC9E0];
  v67[65] = @"Carbohydrates";
  v68[65] = *MEMORY[0x277CCC9E8];
  v67[66] = @"Chloride";
  v68[66] = *MEMORY[0x277CCC9F0];
  v67[67] = @"Dietary Cholesterol";
  v68[67] = *MEMORY[0x277CCC9F8];
  v67[68] = @"Chromium";
  v68[68] = *MEMORY[0x277CCCA00];
  v67[69] = @"Copper";
  v68[69] = *MEMORY[0x277CCCA08];
  v67[70] = @"Dietary Calories";
  v68[70] = *MEMORY[0x277CCCA10];
  v67[71] = @"Monounsaturated Fat";
  v68[71] = *MEMORY[0x277CCCA18];
  v67[72] = @"Polyunsaturated Fat";
  v68[72] = *MEMORY[0x277CCCA20];
  v67[73] = @"Saturated Fat";
  v68[73] = *MEMORY[0x277CCCA28];
  v67[74] = @"Total Fat";
  v68[74] = *MEMORY[0x277CCCA30];
  v67[75] = @"Fiber";
  v68[75] = *MEMORY[0x277CCCA38];
  v67[76] = @"Folate";
  v68[76] = *MEMORY[0x277CCCA40];
  v67[77] = @"Iodine";
  v68[77] = *MEMORY[0x277CCCA48];
  v67[78] = @"Iron";
  v68[78] = *MEMORY[0x277CCCA50];
  v67[79] = @"Magnesium";
  v68[79] = *MEMORY[0x277CCCA58];
  v67[80] = @"Manganese";
  v68[80] = *MEMORY[0x277CCCA60];
  v67[81] = @"Molybdenum";
  v68[81] = *MEMORY[0x277CCCA68];
  v67[82] = @"Niacin";
  v68[82] = *MEMORY[0x277CCCA70];
  v67[83] = @"Pantothenic Acid";
  v68[83] = *MEMORY[0x277CCCA78];
  v67[84] = @"Phosphorus";
  v68[84] = *MEMORY[0x277CCCA80];
  v67[85] = @"Potassium";
  v68[85] = *MEMORY[0x277CCCA88];
  v67[86] = @"Protein";
  v68[86] = *MEMORY[0x277CCCA90];
  v67[87] = @"Riboflavin";
  v68[87] = *MEMORY[0x277CCCA98];
  v67[88] = @"Selenium";
  v68[88] = *MEMORY[0x277CCCAA0];
  v67[89] = @"Sodium";
  v68[89] = *MEMORY[0x277CCCAA8];
  v67[90] = @"Sugar";
  v68[90] = *MEMORY[0x277CCCAB0];
  v67[91] = @"Thiamin";
  v68[91] = *MEMORY[0x277CCCAB8];
  v67[92] = @"Vitamin A";
  v68[92] = *MEMORY[0x277CCCAC0];
  v67[93] = @"Vitamin B12";
  v68[93] = *MEMORY[0x277CCCAC8];
  v67[94] = @"Vitamin B6";
  v68[94] = *MEMORY[0x277CCCAD0];
  v67[95] = @"Vitamin C";
  v68[95] = *MEMORY[0x277CCCAD8];
  v67[96] = @"Vitamin D";
  v68[96] = *MEMORY[0x277CCCAE0];
  v67[97] = @"Vitamin E";
  v68[97] = *MEMORY[0x277CCCAE8];
  v67[98] = @"Vitamin K";
  v68[98] = *MEMORY[0x277CCCAF0];
  v67[99] = @"Water";
  v68[99] = *MEMORY[0x277CCCAF8];
  v67[100] = @"Zinc";
  v68[100] = *MEMORY[0x277CCCB00];
  v67[101] = @"Underwater Depth";
  v68[101] = *MEMORY[0x277CCCC90];
  v67[102] = @"Water Temperature";
  v68[102] = *MEMORY[0x277CCCCD0];
  v67[103] = @"Abdominal Cramps";
  v68[103] = *MEMORY[0x277CCB8C8];
  v67[104] = @"Acne";
  v68[104] = *MEMORY[0x277CCB8D0];
  v67[105] = @"Appetite Changes";
  v68[105] = *MEMORY[0x277CCB8D8];
  v67[106] = @"Stand Hour";
  v68[106] = *MEMORY[0x277CCB8E0];
  v67[107] = @"Walking Steadiness Event";
  v68[107] = *MEMORY[0x277CCB8E8];
  v67[108] = @"Bladder Incontinence";
  v68[108] = *MEMORY[0x277CCB8F0];
  v67[109] = @"Bloating";
  v68[109] = *MEMORY[0x277CCB908];
  v67[110] = @"Breast Pain";
  v68[110] = *MEMORY[0x277CCB910];
  v67[111] = @"Cervical Mucus Quality";
  v68[111] = *MEMORY[0x277CCB918];
  v67[112] = @"Chest Tightness or Pain";
  v68[112] = *MEMORY[0x277CCB920];
  v67[113] = @"Chills";
  v68[113] = *MEMORY[0x277CCB928];
  v67[114] = @"Constipation";
  v68[114] = *MEMORY[0x277CCB930];
  v67[115] = @"Contraceptive";
  v68[115] = *MEMORY[0x277CCB938];
  v67[116] = @"Coughing";
  v68[116] = *MEMORY[0x277CCB940];
  v67[117] = @"Diarrhea";
  v68[117] = *MEMORY[0x277CCB948];
  v67[118] = @"Dizziness";
  v68[118] = *MEMORY[0x277CCB950];
  v67[119] = @"Dry Skin";
  v68[119] = *MEMORY[0x277CCB958];
  v67[120] = @"Fainting";
  v68[120] = *MEMORY[0x277CCB968];
  v67[121] = @"Fatigue";
  v68[121] = *MEMORY[0x277CCB970];
  v67[122] = @"Fever";
  v68[122] = *MEMORY[0x277CCB978];
  v67[123] = @"Generalized Body Ache";
  v68[123] = *MEMORY[0x277CCB980];
  v67[124] = @"Hair Loss";
  v68[124] = *MEMORY[0x277CCB988];
  v67[125] = @"Handwashing";
  v68[125] = *MEMORY[0x277CCB990];
  v67[126] = @"Headache";
  v68[126] = *MEMORY[0x277CCB998];
  v67[127] = @"Heartburn";
  v68[127] = *MEMORY[0x277CCB9B0];
  v67[128] = @"High Heart Rate";
  v68[128] = *MEMORY[0x277CCB9B8];
  v67[129] = @"Hot Flashes";
  v68[129] = *MEMORY[0x277CCB9C0];
  v67[130] = @"Infrequent Menstrual Cycles";
  v68[130] = *MEMORY[0x277CCB9D0];
  v67[131] = @"Irregular Heart Rhythm";
  v68[131] = *MEMORY[0x277CCB9E0];
  v67[132] = @"Irregular Menstrual Cycles";
  v68[132] = *MEMORY[0x277CCB9E8];
  v67[133] = @"Lactation";
  v68[133] = *MEMORY[0x277CCB9F0];
  v67[134] = @"Loss of Smell";
  v68[134] = *MEMORY[0x277CCB9F8];
  v67[135] = @"Loss of Taste";
  v68[135] = *MEMORY[0x277CCBA00];
  v67[136] = @"Low Cardio Fitness";
  v68[136] = *MEMORY[0x277CCBA08];
  v67[137] = @"Lower Back Pain";
  v68[137] = *MEMORY[0x277CCBA18];
  v67[138] = @"Low Heart Rate";
  v68[138] = *MEMORY[0x277CCBA10];
  v67[139] = @"Memory Lapse";
  v68[139] = *MEMORY[0x277CCBA20];
  v67[140] = @"Menstruation";
  v68[140] = *MEMORY[0x277CCBA28];
  v67[141] = @"Mindful Session";
  v68[141] = *MEMORY[0x277CCBA30];
  v67[142] = @"Mood Changes";
  v68[142] = *MEMORY[0x277CCBA38];
  v67[143] = @"Nausea";
  v68[143] = *MEMORY[0x277CCBA40];
  v67[144] = @"Night Sweats";
  v68[144] = *MEMORY[0x277CCBA48];
  v67[145] = @"Ovulation Test Result";
  v68[145] = *MEMORY[0x277CCBA50];
  v67[146] = @"Pelvic Pain";
  v68[146] = *MEMORY[0x277CCBA58];
  v67[147] = @"Persistent Intermenstrual Bleeding";
  v68[147] = *MEMORY[0x277CCBA60];
  v67[148] = @"Pregnancy";
  v68[148] = *MEMORY[0x277CCBA68];
  v67[149] = @"Pregnancy Test Result";
  v68[149] = *MEMORY[0x277CCBA70];
  v67[150] = @"Progesterone Test Result";
  v68[150] = *MEMORY[0x277CCBA78];
  v67[151] = @"Prolonged Menstrual Periods";
  v68[151] = *MEMORY[0x277CCBA80];
  v67[152] = @"Rapid Pounding or Fluttering Heartbeat";
  v68[152] = *MEMORY[0x277CCBA88];
  v67[153] = @"Runny Nose";
  v68[153] = *MEMORY[0x277CCBA90];
  v67[154] = @"Sexual Activity";
  v68[154] = *MEMORY[0x277CCBA98];
  v67[155] = @"Shortness of Breath";
  v68[155] = *MEMORY[0x277CCBAA0];
  v67[156] = @"Sinus Congestion";
  v68[156] = *MEMORY[0x277CCBAA8];
  v67[157] = @"Skipped Heartbeat";
  v68[157] = *MEMORY[0x277CCBAB0];
  v67[158] = @"Sleep";
  v68[158] = *MEMORY[0x277CCBAB8];
  v67[159] = @"Sleep Changes";
  v68[159] = *MEMORY[0x277CCBAC8];
  v67[160] = @"Sore Throat";
  v68[160] = *MEMORY[0x277CCBAD0];
  v67[161] = @"Toothbrushing";
  v68[161] = *MEMORY[0x277CCBAD8];
  v67[162] = @"Vaginal Dryness";
  v68[162] = *MEMORY[0x277CCBAE8];
  v67[163] = @"Vomiting";
  v68[163] = *MEMORY[0x277CCBAF0];
  v67[164] = @"Wheezing";
  v68[164] = *MEMORY[0x277CCBAF8];
  v67[165] = @"Spotting";
  v68[165] = *MEMORY[0x277CCB9D8];
  v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:166];
  v65 = WFHealthKitReadableSampleTypeToSampleTypeIdentifierDictionary_dictionary;
  WFHealthKitReadableSampleTypeToSampleTypeIdentifierDictionary_dictionary = v64;

  v66 = *MEMORY[0x277D85DE8];
}

id WFHealthKitQuantityTypeIdentifiers()
{
  if (WFHealthKitQuantityTypeIdentifiers_onceToken != -1)
  {
    dispatch_once(&WFHealthKitQuantityTypeIdentifiers_onceToken, &__block_literal_global_1015);
  }

  v1 = WFHealthKitQuantityTypeIdentifiers_identifiers;

  return v1;
}

void __WFHealthKitQuantityTypeIdentifiers_block_invoke()
{
  v35[103] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCC918];
  v35[0] = *MEMORY[0x277CCCC70];
  v35[1] = v0;
  v1 = *MEMORY[0x277CCC928];
  v35[2] = *MEMORY[0x277CCC920];
  v35[3] = v1;
  v2 = *MEMORY[0x277CCC948];
  v35[4] = *MEMORY[0x277CCC940];
  v35[5] = v2;
  v3 = *MEMORY[0x277CCCB10];
  v35[6] = *MEMORY[0x277CCC960];
  v35[7] = v3;
  v4 = *MEMORY[0x277CCCB38];
  v35[8] = *MEMORY[0x277CCCB18];
  v35[9] = v4;
  v5 = *MEMORY[0x277CCCB48];
  v35[10] = *MEMORY[0x277CCCB40];
  v35[11] = v5;
  v6 = *MEMORY[0x277CCCBD0];
  v35[12] = *MEMORY[0x277CCCB70];
  v35[13] = v6;
  v7 = *MEMORY[0x277CCCC30];
  v35[14] = *MEMORY[0x277CCCC10];
  v35[15] = v7;
  v8 = *MEMORY[0x277CCCC40];
  v35[16] = *MEMORY[0x277CCCC38];
  v35[17] = v8;
  v9 = *MEMORY[0x277CCCC50];
  v35[18] = *MEMORY[0x277CCCC48];
  v35[19] = v9;
  v10 = *MEMORY[0x277CCCC60];
  v35[20] = *MEMORY[0x277CCCC58];
  v35[21] = v10;
  v11 = *MEMORY[0x277CCCC78];
  v35[22] = *MEMORY[0x277CCCC68];
  v35[23] = v11;
  v12 = *MEMORY[0x277CCCC98];
  v35[24] = *MEMORY[0x277CCCC88];
  v35[25] = v12;
  v13 = *MEMORY[0x277CCCCB0];
  v35[26] = *MEMORY[0x277CCCCA8];
  v35[27] = v13;
  v14 = *MEMORY[0x277CCCCC8];
  v35[28] = *MEMORY[0x277CCCCC0];
  v35[29] = v14;
  v15 = *MEMORY[0x277CCC988];
  v35[30] = *MEMORY[0x277CCC938];
  v35[31] = v15;
  v16 = *MEMORY[0x277CCC998];
  v35[32] = *MEMORY[0x277CCC990];
  v35[33] = v16;
  v17 = *MEMORY[0x277CCCBC8];
  v35[34] = *MEMORY[0x277CCCBA8];
  v35[35] = v17;
  v18 = *MEMORY[0x277CCC950];
  v35[36] = *MEMORY[0x277CCCCA0];
  v35[37] = v18;
  v19 = *MEMORY[0x277CCC978];
  v35[38] = *MEMORY[0x277CCC958];
  v35[39] = v19;
  v20 = *MEMORY[0x277CCC9A0];
  v35[40] = *MEMORY[0x277CCC980];
  v35[41] = v20;
  v21 = *MEMORY[0x277CCCB98];
  v35[42] = *MEMORY[0x277CCCB90];
  v35[43] = v21;
  v22 = *MEMORY[0x277CCCC18];
  v35[44] = *MEMORY[0x277CCCBA0];
  v35[45] = v22;
  v23 = *MEMORY[0x277CCCCB8];
  v35[46] = *MEMORY[0x277CCCC20];
  v35[47] = v23;
  v24 = *MEMORY[0x277CCC970];
  v35[48] = *MEMORY[0x277CCC968];
  v35[49] = v24;
  v25 = *MEMORY[0x277CCCB58];
  v35[50] = *MEMORY[0x277CCCB50];
  v35[51] = v25;
  v26 = *MEMORY[0x277CCCB80];
  v35[52] = *MEMORY[0x277CCCB78];
  v35[53] = v26;
  v27 = *MEMORY[0x277CCCBB8];
  v35[54] = *MEMORY[0x277CCCB88];
  v35[55] = v27;
  v28 = *MEMORY[0x277CCCBD8];
  v35[56] = *MEMORY[0x277CCCBC0];
  v35[57] = v28;
  v29 = *MEMORY[0x277CCCBE8];
  v35[58] = *MEMORY[0x277CCCBE0];
  v35[59] = v29;
  v30 = *MEMORY[0x277CCCC00];
  v35[60] = *MEMORY[0x277CCCBF8];
  v35[61] = v30;
  v31 = *MEMORY[0x277CCC9D8];
  v35[62] = *MEMORY[0x277CCC9D0];
  v35[63] = v31;
  v35[64] = *MEMORY[0x277CCC9E0];
  v35[65] = *MEMORY[0x277CCC9E8];
  v35[66] = *MEMORY[0x277CCC9F0];
  v35[67] = *MEMORY[0x277CCC9F8];
  v35[68] = *MEMORY[0x277CCCA00];
  v35[69] = *MEMORY[0x277CCCA08];
  v35[70] = *MEMORY[0x277CCCA10];
  v35[71] = *MEMORY[0x277CCCA18];
  v35[72] = *MEMORY[0x277CCCA20];
  v35[73] = *MEMORY[0x277CCCA28];
  v35[74] = *MEMORY[0x277CCCA30];
  v35[75] = *MEMORY[0x277CCCA38];
  v35[76] = *MEMORY[0x277CCCA40];
  v35[77] = *MEMORY[0x277CCCA48];
  v35[78] = *MEMORY[0x277CCCA50];
  v35[79] = *MEMORY[0x277CCCA58];
  v35[80] = *MEMORY[0x277CCCA60];
  v35[81] = *MEMORY[0x277CCCA68];
  v35[82] = *MEMORY[0x277CCCA70];
  v35[83] = *MEMORY[0x277CCCA78];
  v35[84] = *MEMORY[0x277CCCA80];
  v35[85] = *MEMORY[0x277CCCA88];
  v35[86] = *MEMORY[0x277CCCA90];
  v35[87] = *MEMORY[0x277CCCA98];
  v35[88] = *MEMORY[0x277CCCAA0];
  v35[89] = *MEMORY[0x277CCCAA8];
  v35[90] = *MEMORY[0x277CCCAB0];
  v35[91] = *MEMORY[0x277CCCAB8];
  v35[92] = *MEMORY[0x277CCCAC0];
  v35[93] = *MEMORY[0x277CCCAC8];
  v35[94] = *MEMORY[0x277CCCAD0];
  v35[95] = *MEMORY[0x277CCCAD8];
  v35[96] = *MEMORY[0x277CCCAE0];
  v35[97] = *MEMORY[0x277CCCAE8];
  v35[98] = *MEMORY[0x277CCCAF0];
  v35[99] = *MEMORY[0x277CCCAF8];
  v35[100] = *MEMORY[0x277CCCB00];
  v35[101] = *MEMORY[0x277CCCC90];
  v35[102] = *MEMORY[0x277CCCCD0];
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:103];
  v33 = WFHealthKitQuantityTypeIdentifiers_identifiers;
  WFHealthKitQuantityTypeIdentifiers_identifiers = v32;

  v34 = *MEMORY[0x277D85DE8];
}

id WFHealthKitSymptomsTypeIdentifiers()
{
  v22[39] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCB8D0];
  v22[0] = *MEMORY[0x277CCB8C8];
  v22[1] = v0;
  v1 = *MEMORY[0x277CCB8F0];
  v22[2] = *MEMORY[0x277CCB8D8];
  v22[3] = v1;
  v2 = *MEMORY[0x277CCB910];
  v22[4] = *MEMORY[0x277CCB908];
  v22[5] = v2;
  v3 = *MEMORY[0x277CCB928];
  v22[6] = *MEMORY[0x277CCB920];
  v22[7] = v3;
  v4 = *MEMORY[0x277CCB940];
  v22[8] = *MEMORY[0x277CCB930];
  v22[9] = v4;
  v5 = *MEMORY[0x277CCB950];
  v22[10] = *MEMORY[0x277CCB948];
  v22[11] = v5;
  v6 = *MEMORY[0x277CCB968];
  v22[12] = *MEMORY[0x277CCB958];
  v22[13] = v6;
  v7 = *MEMORY[0x277CCB978];
  v22[14] = *MEMORY[0x277CCB970];
  v22[15] = v7;
  v8 = *MEMORY[0x277CCB988];
  v22[16] = *MEMORY[0x277CCB980];
  v22[17] = v8;
  v9 = *MEMORY[0x277CCB9B0];
  v22[18] = *MEMORY[0x277CCB998];
  v22[19] = v9;
  v10 = *MEMORY[0x277CCB9F8];
  v22[20] = *MEMORY[0x277CCB9C0];
  v22[21] = v10;
  v11 = *MEMORY[0x277CCBA18];
  v22[22] = *MEMORY[0x277CCBA00];
  v22[23] = v11;
  v12 = *MEMORY[0x277CCBA38];
  v22[24] = *MEMORY[0x277CCBA20];
  v22[25] = v12;
  v13 = *MEMORY[0x277CCBA48];
  v22[26] = *MEMORY[0x277CCBA40];
  v22[27] = v13;
  v14 = *MEMORY[0x277CCBA88];
  v22[28] = *MEMORY[0x277CCBA58];
  v22[29] = v14;
  v15 = *MEMORY[0x277CCBAA0];
  v22[30] = *MEMORY[0x277CCBA90];
  v22[31] = v15;
  v16 = *MEMORY[0x277CCBAB0];
  v22[32] = *MEMORY[0x277CCBAA8];
  v22[33] = v16;
  v17 = *MEMORY[0x277CCBAD0];
  v22[34] = *MEMORY[0x277CCBAC8];
  v22[35] = v17;
  v18 = *MEMORY[0x277CCBAF0];
  v22[36] = *MEMORY[0x277CCBAE8];
  v22[37] = v18;
  v22[38] = *MEMORY[0x277CCBAF8];
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:39];
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

id WFHealthKitSampleTypeIdentifiers()
{
  if (WFHealthKitSampleTypeIdentifiers_onceToken != -1)
  {
    dispatch_once(&WFHealthKitSampleTypeIdentifiers_onceToken, &__block_literal_global_1017);
  }

  v1 = WFHealthKitSampleTypeIdentifiers_identifiers;

  return v1;
}

void __WFHealthKitSampleTypeIdentifiers_block_invoke()
{
  v20[3] = *MEMORY[0x277D85DE8];
  v0 = WFHealthKitQuantityTypeIdentifiers();
  v1 = WFHealthKitSampleTypeIdentifiers_identifiers;
  WFHealthKitSampleTypeIdentifiers_identifiers = v0;

  v2 = [WFHealthKitSampleTypeIdentifiers_identifiers mutableCopy];
  v3 = *MEMORY[0x277CCBAB8];
  v4 = *MEMORY[0x277CCCBF8];
  [v2 insertObject:*MEMORY[0x277CCBAB8] atIndex:{objc_msgSend(v2, "indexOfObject:", *MEMORY[0x277CCCBF8]) + 1}];
  v5 = *MEMORY[0x277CCBA98];
  [v2 insertObject:*MEMORY[0x277CCBA98] atIndex:{objc_msgSend(v2, "indexOfObject:", v3) + 1}];
  v6 = *MEMORY[0x277CCB918];
  [v2 insertObject:*MEMORY[0x277CCB918] atIndex:{objc_msgSend(v2, "indexOfObject:", v5) + 1}];
  v7 = *MEMORY[0x277CCBA28];
  [v2 insertObject:*MEMORY[0x277CCBA28] atIndex:{objc_msgSend(v2, "indexOfObject:", v6) + 1}];
  v8 = *MEMORY[0x277CCB9D8];
  [v2 insertObject:*MEMORY[0x277CCB9D8] atIndex:{objc_msgSend(v2, "indexOfObject:", v7) + 1}];
  [v2 insertObject:*MEMORY[0x277CCBA50] atIndex:{objc_msgSend(v2, "indexOfObject:", v8) + 1}];
  [v2 insertObject:*MEMORY[0x277CCBA30] atIndex:{objc_msgSend(v2, "indexOfObject:", v3) + 1}];
  v9 = *MEMORY[0x277CCBA10];
  v20[0] = *MEMORY[0x277CCB9B8];
  v20[1] = v9;
  v20[2] = *MEMORY[0x277CCB9E0];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
  v11 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{objc_msgSend(v2, "indexOfObject:", *MEMORY[0x277CCCBA0]), objc_msgSend(v10, "count")}];
  [v2 insertObjects:v10 atIndexes:v11];

  v12 = WFHealthKitSymptomsTypeIdentifiers();
  v13 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{objc_msgSend(v2, "indexOfObject:", v4), objc_msgSend(v12, "count")}];
  [v2 insertObjects:v12 atIndexes:v13];

  v14 = *MEMORY[0x277CCB990];
  v19[0] = *MEMORY[0x277CCBAD8];
  v19[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  [v2 addObjectsFromArray:v15];

  v16 = [v2 copy];
  v17 = WFHealthKitSampleTypeIdentifiers_identifiers;
  WFHealthKitSampleTypeIdentifiers_identifiers = v16;

  v18 = *MEMORY[0x277D85DE8];
}

id WFHealthKitReadableSampleTypes()
{
  if (WFHealthKitReadableSampleTypes_onceToken != -1)
  {
    dispatch_once(&WFHealthKitReadableSampleTypes_onceToken, &__block_literal_global_1020);
  }

  v1 = WFHealthKitReadableSampleTypes_readableTypes;

  return v1;
}

void __WFHealthKitReadableSampleTypes_block_invoke()
{
  v0 = WFHealthKitSampleTypeIdentifiers();
  v1 = WFHealthKitSampleTypeIdentifierToReadableSampleTypeDictionary();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __WFHealthKitReadableSampleTypes_block_invoke_2;
  v5[3] = &unk_278C1B0C8;
  v6 = v1;
  v2 = v1;
  v3 = [v0 if_compactMap:v5];
  v4 = WFHealthKitReadableSampleTypes_readableTypes;
  WFHealthKitReadableSampleTypes_readableTypes = v3;
}

id WFHealthKitSampleTypeIdentifierToReadableSampleTypeDictionary()
{
  if (WFHealthKitSampleTypeIdentifierToReadableSampleTypeDictionary_onceToken != -1)
  {
    dispatch_once(&WFHealthKitSampleTypeIdentifierToReadableSampleTypeDictionary_onceToken, &__block_literal_global_1599);
  }

  v1 = WFHealthKitSampleTypeIdentifierToReadableSampleTypeDictionary_dictionary;

  return v1;
}

void __WFHealthKitSampleTypeIdentifierToReadableSampleTypeDictionary_block_invoke()
{
  v16 = *MEMORY[0x277D85DE8];
  v0 = WFHealthKitReadableSampleTypeToSampleTypeIdentifierDictionary();
  v1 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = v0;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v2 objectForKey:{v7, v11}];
        [v1 setObject:v7 forKey:v8];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v9 = WFHealthKitSampleTypeIdentifierToReadableSampleTypeDictionary_dictionary;
  WFHealthKitSampleTypeIdentifierToReadableSampleTypeDictionary_dictionary = v1;

  v10 = *MEMORY[0x277D85DE8];
}

id WFHealthKitLocalizedSampleTypes()
{
  if (WFHealthKitLocalizedSampleTypes_onceToken != -1)
  {
    dispatch_once(&WFHealthKitLocalizedSampleTypes_onceToken, &__block_literal_global_1023);
  }

  v1 = WFHealthKitLocalizedSampleTypes_localizedTypes;

  return v1;
}

void __WFHealthKitLocalizedSampleTypes_block_invoke()
{
  v0 = WFHealthKitSampleTypeIdentifiers();
  v1 = WFHealthKitSampleTypeIdentifierToReadableSampleTypeDictionary();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __WFHealthKitLocalizedSampleTypes_block_invoke_2;
  v6[3] = &unk_278C1AEE0;
  v7 = v1;
  v2 = v1;
  v3 = [v0 if_compactMap:v6];
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_1031];
  v5 = WFHealthKitLocalizedSampleTypes_localizedTypes;
  WFHealthKitLocalizedSampleTypes_localizedTypes = v4;
}

id __WFHealthKitLocalizedSampleTypes_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:v3];
  v5 = [objc_alloc(MEMORY[0x277D79F10]) initWithString:v4];
  v6 = objc_alloc(MEMORY[0x277CCAEB8]);
  v7 = [MEMORY[0x277CBEAF8] currentLocale];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 bundleURL];
  v10 = [v6 initWithKey:v4 table:0 locale:v7 bundleURL:v9];
  [v5 setStringResource:v10];

  v11 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:v3];
  if (v11)
  {
    if (objc_opt_respondsToSelector())
    {
      [v11 hk_localizedName];
    }

    else
    {
      [WFHealthKitHelper readableSampleTypeIdentifierFromSampleTypeIdentifier:v3];
    }
    v12 = ;
    [v5 setLocalizedValue:v12];
  }

  else
  {
    v12 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:v3];
    if (objc_opt_respondsToSelector())
    {
      [v12 hk_localizedName];
    }

    else
    {
      [WFHealthKitHelper readableSampleTypeIdentifierFromSampleTypeIdentifier:v3];
    }
    v13 = ;
    [v5 setLocalizedValue:v13];
  }

  return v5;
}

uint64_t __WFHealthKitLocalizedSampleTypes_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 localizedValue];
  v6 = [v4 localizedValue];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

id WFHealthKitReadableWorkoutActivityTypeToWorkoutActivityTypeDictionary()
{
  if (WFHealthKitReadableWorkoutActivityTypeToWorkoutActivityTypeDictionary_onceToken != -1)
  {
    dispatch_once(&WFHealthKitReadableWorkoutActivityTypeToWorkoutActivityTypeDictionary_onceToken, &__block_literal_global_1033);
  }

  v1 = WFHealthKitReadableWorkoutActivityTypeToWorkoutActivityTypeDictionary_dictionary;

  return v1;
}

void __WFHealthKitReadableWorkoutActivityTypeToWorkoutActivityTypeDictionary_block_invoke()
{
  v0 = WFHealthKitReadableWorkoutActivityTypeToWorkoutActivityTypeDictionary_dictionary;
  WFHealthKitReadableWorkoutActivityTypeToWorkoutActivityTypeDictionary_dictionary = &unk_28509CF38;
}

id WFHealthKitReadableWorkoutActivityTypes()
{
  if (WFHealthKitReadableWorkoutActivityTypes_onceToken != -1)
  {
    dispatch_once(&WFHealthKitReadableWorkoutActivityTypes_onceToken, &__block_literal_global_1461);
  }

  v1 = WFHealthKitReadableWorkoutActivityTypes_readableTypes;

  return v1;
}

void __WFHealthKitReadableWorkoutActivityTypes_block_invoke()
{
  v0 = WFHealthKitReadableWorkoutActivityTypes_readableTypes;
  WFHealthKitReadableWorkoutActivityTypes_readableTypes = &unk_28509CBD8;

  v1 = [WFHealthKitReadableWorkoutActivityTypes_readableTypes sortedArrayUsingSelector:sel_localizedStandardCompare_];
  v2 = WFHealthKitReadableWorkoutActivityTypes_readableTypes;
  WFHealthKitReadableWorkoutActivityTypes_readableTypes = v1;
}

id WFHealthKitReadableCervicalMucusQualityToEnumDictionary()
{
  v9[5] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedParameterValueMarker(@"Dry");
  v8[0] = v0;
  v9[0] = &unk_28509B8B8;
  v1 = WFLocalizedParameterValueMarker(@"Sticky");
  v8[1] = v1;
  v9[1] = &unk_28509B8D0;
  v2 = WFLocalizedParameterValueMarker(@"Creamy");
  v8[2] = v2;
  v9[2] = &unk_28509B8E8;
  v3 = WFLocalizedParameterValueMarker(@"Watery");
  v8[3] = v3;
  v9[3] = &unk_28509B900;
  v4 = WFLocalizedParameterValueMarker(@"Egg White");
  v8[4] = v4;
  v9[4] = &unk_28509B918;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:5];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

id WFHealthKitReadableAppleStandingHourToEnumDictionary()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedParameterValueMarker(@"Stood");
  v5[0] = v0;
  v6[0] = &unk_28509B930;
  v1 = WFLocalizedParameterValueMarker(@"Idle");
  v5[1] = v1;
  v6[1] = &unk_28509B8B8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id WFHealthKitReadableMenstrualFlowToEnumDictionary()
{
  v8[4] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedParameterValueMarker(@"Unspecified");
  v7[0] = v0;
  v8[0] = &unk_28509B8B8;
  v1 = WFLocalizedParameterValueMarker(@"Light");
  v7[1] = v1;
  v8[1] = &unk_28509B8D0;
  v2 = WFLocalizedParameterValueMarker(@"Medium");
  v7[2] = v2;
  v8[2] = &unk_28509B8E8;
  v3 = WFLocalizedParameterValueMarker(@"Heavy");
  v7[3] = v3;
  v8[3] = &unk_28509B900;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:4];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

id WFHealthKitReadableMenstrualFlowIsStartOfCycleToBoolDictionary()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedParameterValueMarker(@"Yes");
  v5[0] = v0;
  v6[0] = MEMORY[0x277CBEC38];
  v1 = WFLocalizedParameterValueMarker(@"No");
  v5[1] = v1;
  v6[1] = MEMORY[0x277CBEC28];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id WFHealthKitReadableOvulationTestResultToEnumDictionary()
{
  v8[4] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedParameterValueMarker(@"Negative");
  v7[0] = v0;
  v8[0] = &unk_28509B8B8;
  v1 = WFLocalizedParameterValueMarker(@"Luteinizing Hormone Surge");
  v7[1] = v1;
  v8[1] = &unk_28509B8D0;
  v2 = WFLocalizedParameterValueMarker(@"Estrogen Surge");
  v7[2] = v2;
  v8[2] = &unk_28509B900;
  v3 = WFLocalizedParameterValueMarker(@"Indeterminate");
  v7[3] = v3;
  v8[3] = &unk_28509B8E8;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:4];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

id WFHealthKitReadableSleepAnalysisToEnumDictionary()
{
  v10[6] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedParameterValueMarker(@"In Bed");
  v9[0] = v0;
  v10[0] = &unk_28509B930;
  v1 = WFLocalizedParameterValueMarker(@"Asleep");
  v9[1] = v1;
  v10[1] = &unk_28509B8B8;
  v2 = WFLocalizedParameterValueMarker(@"Awake");
  v9[2] = v2;
  v10[2] = &unk_28509B8D0;
  v3 = WFLocalizedParameterValueMarker(@"Core");
  v9[3] = v3;
  v10[3] = &unk_28509B8E8;
  v4 = WFLocalizedParameterValueMarker(@"Deep");
  v9[4] = v4;
  v10[4] = &unk_28509B900;
  v5 = WFLocalizedParameterValueMarker(@"REM");
  v9[5] = v5;
  v10[5] = &unk_28509B918;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:6];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

id WFHealthKitReadableAppetiteChangesToEnumDictionary()
{
  v8[4] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedParameterValueMarker(@"Increased");
  v7[0] = v0;
  v8[0] = &unk_28509B8E8;
  v1 = WFLocalizedParameterValueMarker(@"Decreased");
  v7[1] = v1;
  v8[1] = &unk_28509B8D0;
  v2 = WFLocalizedParameterValueMarker(@"No Change");
  v7[2] = v2;
  v8[2] = &unk_28509B8B8;
  v3 = WFLocalizedParameterValueMarker(@"Present");
  v7[3] = v3;
  v8[3] = &unk_28509B930;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:4];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

id WFHealthKitReadablePresenceToEnumDictionary()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedParameterValueMarker(@"Present");
  v5[0] = v0;
  v6[0] = &unk_28509B930;
  v1 = WFLocalizedParameterValueMarker(@"Not Present");
  v5[1] = v1;
  v6[1] = &unk_28509B8B8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id WFHealthKitReadableSeverityToEnumDictionary()
{
  v9[5] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedParameterValueMarker(@"Severe");
  v8[0] = v0;
  v9[0] = &unk_28509B900;
  v1 = WFLocalizedParameterValueMarker(@"Moderate");
  v8[1] = v1;
  v9[1] = &unk_28509B8E8;
  v2 = WFLocalizedParameterValueMarker(@"Mild");
  v8[2] = v2;
  v9[2] = &unk_28509B8D0;
  v3 = WFLocalizedParameterValueMarker(@"Present");
  v8[3] = v3;
  v9[3] = &unk_28509B930;
  v4 = WFLocalizedParameterValueMarker(@"Not Present");
  v8[4] = v4;
  v9[4] = &unk_28509B8B8;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:5];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

id WFHealthKitReadableSexualActivityToBoolDictionary()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedParameterValueMarker(@"Protection Used");
  v5[0] = v0;
  v6[0] = MEMORY[0x277CBEC38];
  v1 = WFLocalizedParameterValueMarker(@"Protection Unused");
  v5[1] = v1;
  v6[1] = MEMORY[0x277CBEC28];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id WFHealthKitReadableInsulinDeliveryReasonToEnumDictionary()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedParameterValueMarker(@"Basal");
  v5[0] = v0;
  v6[0] = &unk_28509B8B8;
  v1 = WFLocalizedParameterValueMarker(@"Bolus");
  v5[1] = v1;
  v6[1] = &unk_28509B8D0;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id WFHealthKitReadableBloodGlucoseMealTimeToEnumDictionary()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedParameterValueMarker(@"Before Meal");
  v5[0] = v0;
  v6[0] = &unk_28509B8B8;
  v1 = WFLocalizedParameterValueMarker(@"After Meal");
  v5[1] = v1;
  v6[1] = &unk_28509B8D0;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id WFHealthKitReadableVO2MaxTestTypeToEnumDictionary()
{
  v7[3] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedParameterValueMarker(@"Max Exercise Test");
  v6[0] = v0;
  v7[0] = &unk_28509B8B8;
  v1 = WFLocalizedParameterValueMarker(@"Sub-Max Exercise Prediction");
  v6[1] = v1;
  v7[1] = &unk_28509B8D0;
  v2 = WFLocalizedParameterValueMarker(@"Non-Exercise Prediction");
  v6[2] = v2;
  v7[2] = &unk_28509B8E8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

void sub_23E0B4474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMediaQueryClass_block_invoke_14417(uint64_t a1)
{
  MediaPlayerLibrary_14422();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaQuery");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaQueryClass_softClass_14416 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaQueryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPlaylistPickerParameter.m" lineNumber:20 description:{@"Unable to find class %s", "MPMediaQuery"}];

    __break(1u);
  }
}

void sub_23E0B4660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMediaPlaylistClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_14422();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaPlaylist");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaPlaylistClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaPlaylistClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPlaylistPickerParameter.m" lineNumber:21 description:{@"Unable to find class %s", "MPMediaPlaylist"}];

    __break(1u);
  }
}

void *MediaPlayerLibrary_14422()
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_14432)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke_14433;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278C1AF40;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_14432 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_14432;
  if (!MediaPlayerLibraryCore_frameworkLibrary_14432)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFPlaylistPickerParameter.m" lineNumber:18 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_14433(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_14432 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id getMPMediaLibraryClass_14443()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMediaLibraryClass_softClass_14444;
  v7 = getMPMediaLibraryClass_softClass_14444;
  if (!getMPMediaLibraryClass_softClass_14444)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPMediaLibraryClass_block_invoke_14445;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getMPMediaLibraryClass_block_invoke_14445(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E0B4AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMediaLibraryClass_block_invoke_14445(uint64_t a1)
{
  MediaPlayerLibrary_14422();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaLibrary");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaLibraryClass_softClass_14444 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaLibraryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPlaylistPickerParameter.m" lineNumber:19 description:{@"Unable to find class %s", "MPMediaLibrary"}];

    __break(1u);
  }
}

void getMPMediaLibraryDidChangeNotification()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getMPMediaLibraryDidChangeNotificationSymbolLoc_ptr;
  v9 = getMPMediaLibraryDidChangeNotificationSymbolLoc_ptr;
  if (!getMPMediaLibraryDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_14422();
    v7[3] = dlsym(v1, "MPMediaLibraryDidChangeNotification");
    getMPMediaLibraryDidChangeNotificationSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaLibraryDidChangeNotification(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFPlaylistPickerParameter.m" lineNumber:22 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_23E0B4DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMPMediaLibraryDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_14422();
  result = dlsym(v2, "MPMediaLibraryDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaLibraryDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_23E0B744C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMPAVRoutingControllerErrorDomainSymbolLoc_block_invoke(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_14926)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __MediaPlayerLibraryCore_block_invoke_14927;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C1B080;
    v8 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_14926 = _sl_dlopen();
  }

  v2 = MediaPlayerLibraryCore_frameworkLibrary_14926;
  if (!MediaPlayerLibraryCore_frameworkLibrary_14926)
  {
    a1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFChangePlaybackDestinationAction.m" lineNumber:17 description:{@"%s", v6[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v6[0];
  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "MPAVRoutingControllerErrorDomain");
  *(*(a1[4] + 8) + 24) = result;
  getMPAVRoutingControllerErrorDomainSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_14927(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_14926 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E0B88E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23E0BBDF0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 184), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15780(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__15951(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23E0BF7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *NetrbLibrary()
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!NetrbLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __NetrbLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278C1B530;
    v7 = 0;
    NetrbLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = NetrbLibraryCore_frameworkLibrary;
  if (!NetrbLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *NetrbLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFPersonalHotspotSettingsClient.m" lineNumber:19 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __NetrbLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NetrbLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E0BFC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23E0BFDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23E0C010C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23E0C18BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16466(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void WFConfigureAudioRoutesForUserInterface(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 isRunningWithSiriUI] && (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend(v3, "airPlayRouteIDs"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6))
  {
    v7 = [v3 airPlayRouteIDs];
    v8 = v4;
    INCRouteAudioToAirplayOutputDevices();
  }

  else
  {
    v4[2](v4);
  }
}

void __WFConfigureAudioRoutesForUserInterface_block_invoke(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = getWFIntentExecutionLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "WFConfigureAudioRoutesForUserInterface_block_invoke";
      v10 = 2114;
      v11 = v5;
      _os_log_impl(&dword_23DE30000, v6, OS_LOG_TYPE_ERROR, "%s Failed to set AirPlay output device: %{public}@", &v8, 0x16u);
    }
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

void sub_23E0C6A0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23E0CE094(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id generateBaseString(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = MEMORY[0x277CBEB38];
  v10 = a5;
  v11 = a4;
  v12 = a2;
  v13 = a1;
  v14 = [v9 dictionaryWithDictionary:a3];
  [v14 addEntriesFromDictionary:v11];

  [v14 addEntriesFromDictionary:v10];
  v15 = TMDictionaryToQueryString(v14);
  v16 = MEMORY[0x277CCACA8];
  v17 = TMURLEncode(v13);

  v18 = TMURLEncode(v15);
  v19 = [v16 stringWithFormat:@"%@&%@&%@", v12, v17, v18];

  return v19;
}

id sign(void *a1, uint64_t a2, __CFString *a3)
{
  v4 = MEMORY[0x277CCACA8];
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = &stru_2850323E8;
  }

  v6 = a1;
  v7 = [v4 stringWithFormat:@"%@&%@", a2, v5];
  v8 = HMACSHA1(v6, v7);

  if (objc_opt_respondsToSelector())
  {
    [v8 base64EncodedStringWithOptions:0];
  }

  else
  {
    [v8 base64Encoding];
  }
  v9 = ;

  return v9;
}

id HMACSHA1(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 dataUsingEncoding:4];
  v5 = [v3 dataUsingEncoding:4];

  v6 = malloc_type_malloc(0x14uLL, 0x99EEE01AuLL);
  CCHmac(0, [v5 bytes], objc_msgSend(v5, "length"), objc_msgSend(v4, "bytes"), objc_msgSend(v4, "length"), v6);
  v7 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v6 length:20 freeWhenDone:1];

  return v7;
}

uint64_t UNIXTimestamp(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  [a1 timeIntervalSince1970];
  return [v1 stringWithFormat:@"%f", round(v2)];
}

void sub_23E0CFF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAVLinearPCMIsFloatKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVLinearPCMIsFloatKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVLinearPCMIsFloatKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *AVFoundationLibrary()
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AVFoundationLibraryCore_frameworkLibrary_18539)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AVFoundationLibraryCore_block_invoke_18540;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278C1B9D0;
    v7 = 0;
    AVFoundationLibraryCore_frameworkLibrary_18539 = _sl_dlopen();
  }

  v0 = AVFoundationLibraryCore_frameworkLibrary_18539;
  if (!AVFoundationLibraryCore_frameworkLibrary_18539)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AVFoundationLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFSpeechSynthesizer.m" lineNumber:31 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

void *__getAVLinearPCMBitDepthKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVLinearPCMBitDepthKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVLinearPCMBitDepthKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AVFoundationLibraryCore_block_invoke_18540(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AVFoundationLibraryCore_frameworkLibrary_18539 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E0D082C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAVSpeechUtteranceClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVSpeechUtterance");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVSpeechUtteranceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVSpeechUtteranceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSpeechSynthesizer.m" lineNumber:37 description:{@"Unable to find class %s", "AVSpeechUtterance"}];

    __break(1u);
  }
}

void *__getAVSpeechUtteranceMinimumSpeechRateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVSpeechUtteranceMinimumSpeechRate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVSpeechUtteranceMinimumSpeechRateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVSpeechUtteranceMaximumSpeechRateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVSpeechUtteranceMaximumSpeechRate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVSpeechUtteranceMaximumSpeechRateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVSpeechUtteranceDefaultSpeechRateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVSpeechUtteranceDefaultSpeechRate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVSpeechUtteranceDefaultSpeechRateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_23E0D0CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSiriTTSSynthesisVoiceClass_block_invoke(uint64_t a1)
{
  SiriTTSServiceLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SiriTTSSynthesisVoice");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSiriTTSSynthesisVoiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSiriTTSSynthesisVoiceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSpeechSynthesizer.m" lineNumber:56 description:{@"Unable to find class %s", "SiriTTSSynthesisVoice"}];

    __break(1u);
  }
}

void __getSiriTTSSpeechRequestClass_block_invoke(uint64_t a1)
{
  SiriTTSServiceLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SiriTTSSpeechRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSiriTTSSpeechRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSiriTTSSpeechRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSpeechSynthesizer.m" lineNumber:55 description:{@"Unable to find class %s", "SiriTTSSpeechRequest"}];

    __break(1u);
  }
}

void SiriTTSServiceLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SiriTTSServiceLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SiriTTSServiceLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C1B9E8;
    v6 = 0;
    SiriTTSServiceLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SiriTTSServiceLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SiriTTSServiceLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"WFSpeechSynthesizer.m" lineNumber:53 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __SiriTTSServiceLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SiriTTSServiceLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E0D1144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSiriTTSDaemonSessionClass_block_invoke(uint64_t a1)
{
  SiriTTSServiceLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SiriTTSDaemonSession");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSiriTTSDaemonSessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSiriTTSDaemonSessionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSpeechSynthesizer.m" lineNumber:54 description:{@"Unable to find class %s", "SiriTTSDaemonSession"}];

    __break(1u);
  }
}

void sub_23E0D15EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAVSpeechSynthesizerClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVSpeechSynthesizer");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVSpeechSynthesizerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVSpeechSynthesizerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSpeechSynthesizer.m" lineNumber:36 description:{@"Unable to find class %s", "AVSpeechSynthesizer"}];

    __break(1u);
  }
}

id getWFTextToSpeechLogObject()
{
  if (getWFTextToSpeechLogObject_onceToken != -1)
  {
    dispatch_once(&getWFTextToSpeechLogObject_onceToken, &__block_literal_global_18579);
  }

  v1 = getWFTextToSpeechLogObject_log;

  return v1;
}

void *__getAVAudioFileTypeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVAudioFileTypeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVAudioFileTypeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVLinearPCMIsNonInterleavedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVLinearPCMIsNonInterleaved");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVLinearPCMIsNonInterleavedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getAVAudioFileClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVAudioFile");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVAudioFileClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVAudioFileClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSpeechSynthesizer.m" lineNumber:32 description:{@"Unable to find class %s", "AVAudioFile"}];

    __break(1u);
  }
}

void sub_23E0D2110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAVAudioPCMBufferClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVAudioPCMBuffer");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVAudioPCMBufferClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVAudioPCMBufferClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSpeechSynthesizer.m" lineNumber:33 description:{@"Unable to find class %s", "AVAudioPCMBuffer"}];

    __break(1u);
  }
}

void __getWFTextToSpeechLogObject_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D7A500], "TextToSpeech");
  v1 = getWFTextToSpeechLogObject_log;
  getWFTextToSpeechLogObject_log = v0;
}

void sub_23E0D2624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23E0D41F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23E0D58A0(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    objc_end_catch();
    JUMPOUT(0x23E0D5870);
  }

  objc_exception_rethrow();
}

void sub_23E0D8FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21)
{
  objc_destroyWeak((v21 + 80));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19561(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23E0D9E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __HealthKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id getFIUIWorkoutActivityTypeClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getFIUIWorkoutActivityTypeClass_softClass;
  v7 = getFIUIWorkoutActivityTypeClass_softClass;
  if (!getFIUIWorkoutActivityTypeClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getFIUIWorkoutActivityTypeClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getFIUIWorkoutActivityTypeClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E0DA88C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getFIUIWorkoutActivityTypeClass_block_invoke(uint64_t a1)
{
  FitnessUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("FIUIWorkoutActivityType");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFIUIWorkoutActivityTypeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getFIUIWorkoutActivityTypeClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFFitnessUIHelper.m" lineNumber:17 description:{@"Unable to find class %s", "FIUIWorkoutActivityType"}];

    __break(1u);
  }
}

void *FitnessUILibrary()
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!FitnessUILibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __FitnessUILibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278C1BC10;
    v7 = 0;
    FitnessUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = FitnessUILibraryCore_frameworkLibrary;
  if (!FitnessUILibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *FitnessUILibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFFitnessUIHelper.m" lineNumber:16 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __FitnessUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  FitnessUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E0DACAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getFIUIDeviceSupportsSwimmingSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FitnessUILibrary();
  result = dlsym(v2, "FIUIDeviceSupportsSwimming");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFIUIDeviceSupportsSwimmingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void WFAddContentToPlaylist(void *a1, void *a2, void *a3)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v8 = getMPMediaLibraryClass_softClass_19800;
  v27 = getMPMediaLibraryClass_softClass_19800;
  if (!getMPMediaLibraryClass_softClass_19800)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __getMPMediaLibraryClass_block_invoke_19801;
    v23[3] = &unk_278C222B8;
    v23[4] = &v24;
    __getMPMediaLibraryClass_block_invoke_19801(v23);
    v8 = v25[3];
  }

  v9 = v8;
  _Block_object_dispose(&v24, 8);
  v10 = [v8 defaultMediaLibrary];
  v11 = objc_opt_new();
  v28[0] = objc_opt_class();
  v28[1] = objc_opt_class();
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __WFAddContentToPlaylist_block_invoke;
  v18[3] = &unk_278C1BE28;
  v19 = v11;
  v20 = v5;
  v21 = v10;
  v22 = v7;
  v13 = v10;
  v14 = v5;
  v15 = v11;
  v16 = v7;
  [v6 generateCollectionByCoercingToItemClasses:v12 completionHandler:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void sub_23E0DC004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMediaLibraryClass_block_invoke_19801(uint64_t a1)
{
  MediaPlayerLibrary_19810();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaLibrary");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaLibraryClass_softClass_19800 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaLibraryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAddToPlaylistAction.m" lineNumber:21 description:{@"Unable to find class %s", "MPMediaLibrary"}];

    __break(1u);
  }
}

void __WFAddContentToPlaylist_block_invoke(id *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (a4)
  {
    v7 = a1[4];
    (*(a1[7] + 2))();
  }

  else
  {
    v8 = objc_opt_new();
    v9 = objc_opt_new();
    v10 = [v6 items];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __WFAddContentToPlaylist_block_invoke_2;
    v19[3] = &unk_278C1BDD8;
    v20 = a1[5];
    v21 = v9;
    v22 = v8;
    v23 = a1[6];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __WFAddContentToPlaylist_block_invoke_16;
    v13[3] = &unk_278C1BE00;
    v14 = v22;
    v15 = a1[4];
    v18 = a1[7];
    v16 = a1[5];
    v17 = v21;
    v11 = v21;
    v12 = v22;
    [v10 if_enumerateAsynchronouslyInSequence:v19 completionHandler:v13];
  }
}

void __WFAddContentToPlaylist_block_invoke_2(id *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __WFAddContentToPlaylist_block_invoke_3;
    v36[3] = &unk_278C1BCE8;
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    v39 = v7;
    v11 = a1[7];
    *&v12 = v10;
    *(&v12 + 1) = v11;
    *&v13 = v8;
    *(&v13 + 1) = v9;
    v37 = v13;
    v38 = v12;
    v41 = 0;
    v42 = &v41;
    v43 = 0x2050000000;
    v14 = getMPMediaItemClass_softClass_19825;
    v44 = getMPMediaItemClass_softClass_19825;
    if (!getMPMediaItemClass_softClass_19825)
    {
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __getMPMediaItemClass_block_invoke_19826;
      v40[3] = &unk_278C222B8;
      v40[4] = &v41;
      __getMPMediaItemClass_block_invoke_19826(v40);
      v14 = v42[3];
    }

    v15 = v7;
    v16 = &v37;
    v17 = &v37 + 1;
    v18 = &v38;
    v19 = &v39;
    v20 = &v38 + 1;
    v21 = v14;
    _Block_object_dispose(&v41, 8);
    [v6 getObjectRepresentations:v36 forClass:v14];
  }

  else
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __WFAddContentToPlaylist_block_invoke_7;
    aBlock[3] = &unk_278C1BD88;
    v31 = v6;
    v17 = &v35;
    v15 = v7;
    v22 = v7;
    v35 = v22;
    v18 = &v32;
    v32 = a1[4];
    v19 = &v33;
    v33 = a1[6];
    v20 = &v34;
    v34 = a1[7];
    v23 = _Block_copy(aBlock);
    if (a1[4] && [a1[5] count])
    {
      v25 = a1[4];
      v24 = a1[5];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __WFAddContentToPlaylist_block_invoke_15;
      v26[3] = &unk_278C1BDB0;
      v27 = v24;
      v28 = v22;
      v29 = v23;
      [v25 appendItems:v27 completion:v26];
    }

    else
    {
      v23[2](v23);
    }

    v16 = &v31;
  }
}

void __WFAddContentToPlaylist_block_invoke_16(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __WFAddContentToPlaylist_block_invoke_17;
  aBlock[3] = &unk_278C1D0C0;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 64);
  v5 = _Block_copy(aBlock);
  if (!v4 && *(a1 + 48) && [*(a1 + 56) count])
  {
    v7 = *(a1 + 48);
    v6 = *(a1 + 56);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __WFAddContentToPlaylist_block_invoke_18;
    v8[3] = &unk_278C1E388;
    v9 = v6;
    v10 = v5;
    [v7 appendItems:v9 completion:v8];
  }

  else
  {
    (*(v5 + 2))(v5, v4);
  }
}

void __WFAddContentToPlaylist_block_invoke_17(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 40) addObject:{*(*(&v11 + 1) + 8 * v8++), v11}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

void __WFAddContentToPlaylist_block_invoke_18(uint64_t a1, int a2)
{
  [*(a1 + 32) removeAllObjects];
  v4 = *(a1 + 40);
  if (a2)
  {
    v5 = *(v4 + 16);

    v5(v4, 0);
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    v8 = getMPErrorDomain();
    v7 = [v6 errorWithDomain:v8 code:0 userInfo:0];
    (*(v4 + 16))(v4, v7);
  }
}

void getMPErrorDomain()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getMPErrorDomainSymbolLoc_ptr;
  v9 = getMPErrorDomainSymbolLoc_ptr;
  if (!getMPErrorDomainSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_19810();
    v7[3] = dlsym(v1, "MPErrorDomain");
    getMPErrorDomainSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPErrorDomain(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFAddToPlaylistAction.m" lineNumber:26 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_23E0DCAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMPErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_19810();
  result = dlsym(v2, "MPErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *MediaPlayerLibrary_19810()
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_19819)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke_19820;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278C1BE48;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_19819 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_19819;
  if (!MediaPlayerLibraryCore_frameworkLibrary_19819)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFAddToPlaylistAction.m" lineNumber:20 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_19820(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_19819 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __WFAddContentToPlaylist_block_invoke_3(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v4 = *(a1 + 40);
    v5 = a2;
    [v4 addObjectsFromArray:v5];
    [*(a1 + 48) addObjectsFromArray:v5];

    v6 = *(*(a1 + 64) + 16);

    v6();
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __WFAddContentToPlaylist_block_invoke_4;
    v10[3] = &unk_278C1BC98;
    v11 = *(a1 + 56);
    v12 = *(a1 + 48);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __WFAddContentToPlaylist_block_invoke_6;
    v8[3] = &unk_278C1BCC0;
    v9 = *(a1 + 64);
    v7 = a2;
    [v7 if_enumerateAsynchronouslyInSequence:v10 completionHandler:v8];
  }
}

void __getMPMediaItemClass_block_invoke_19826(uint64_t a1)
{
  MediaPlayerLibrary_19810();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaItemClass_softClass_19825 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAddToPlaylistAction.m" lineNumber:22 description:{@"Unable to find class %s", "MPMediaItem"}];

    __break(1u);
  }
}

void __WFAddContentToPlaylist_block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __WFAddContentToPlaylist_block_invoke_8;
  v8[3] = &unk_278C1BD60;
  v3 = *(a1 + 64);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  *&v6 = *(a1 + 56);
  *(&v6 + 1) = v3;
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v2 getObjectRepresentations:v8 forClass:objc_opt_class()];
}

void __WFAddContentToPlaylist_block_invoke_15(uint64_t a1, char a2)
{
  [*(a1 + 32) removeAllObjects];
  if (a2)
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = MEMORY[0x277CCA9B8];
    v8 = getMPErrorDomain();
    v7 = [v6 errorWithDomain:v8 code:0 userInfo:0];
    (*(v5 + 16))(v5, v7);
  }
}

void __WFAddContentToPlaylist_block_invoke_8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __WFAddContentToPlaylist_block_invoke_9;
      v19[3] = &unk_278C1BD38;
      v20 = v10;
      v21 = *(a1 + 40);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __WFAddContentToPlaylist_block_invoke_11;
      v17[3] = &unk_278C1BCC0;
      v18 = *(a1 + 56);
      [v7 if_enumerateAsynchronouslyInSequence:v19 completionHandler:v17];

      v11 = v20;
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __WFAddContentToPlaylist_block_invoke_12;
      v14[3] = &unk_278C1BD38;
      v15 = *(a1 + 48);
      v16 = *(a1 + 40);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __WFAddContentToPlaylist_block_invoke_14;
      v12[3] = &unk_278C1BCC0;
      v13 = *(a1 + 56);
      [v7 if_enumerateAsynchronouslyInSequence:v14 completionHandler:v12];

      v11 = v15;
    }
  }
}

void __WFAddContentToPlaylist_block_invoke_9(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [*(a1 + 32) count];
  objc_initWeak(&location, *(a1 + 32));
  v9 = *(a1 + 32);
  v10 = [v6 identifier];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __WFAddContentToPlaylist_block_invoke_10;
  v12[3] = &unk_278C1BD10;
  objc_copyWeak(v15, &location);
  v15[1] = v8;
  v13 = *(a1 + 40);
  v11 = v7;
  v14 = v11;
  [v9 addItemWithProductID:v10 completionHandler:v12];

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
}

void sub_23E0DD458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __WFAddContentToPlaylist_block_invoke_12(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 32);
  v8 = [a2 identifier];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __WFAddContentToPlaylist_block_invoke_13;
  v10[3] = &unk_278C21AE8;
  v11 = *(a1 + 40);
  v12 = v6;
  v9 = v6;
  [v7 addItemWithProductID:v8 completionHandler:v10];
}

void __WFAddContentToPlaylist_block_invoke_13(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 addObjectsFromArray:a2];
  (*(*(a1 + 40) + 16))();
}

void __WFAddContentToPlaylist_block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v32 = 0;
  v33 = &v32;
  v34 = 0x2050000000;
  v5 = getMPMediaPropertyPredicateClass_softClass_19832;
  v35 = getMPMediaPropertyPredicateClass_softClass_19832;
  if (!getMPMediaPropertyPredicateClass_softClass_19832)
  {
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __getMPMediaPropertyPredicateClass_block_invoke_19833;
    v30 = &unk_278C222B8;
    v31 = &v32;
    __getMPMediaPropertyPredicateClass_block_invoke_19833(&v27);
    v5 = v33[3];
  }

  v6 = v5;
  _Block_object_dispose(&v32, 8);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(WeakRetained, "persistentID")}];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v8 = getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr_19835;
  v35 = getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr_19835;
  if (!getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr_19835)
  {
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __getMPMediaPlaylistPropertyPersistentIDSymbolLoc_block_invoke_19836;
    v30 = &unk_278C222B8;
    v31 = &v32;
    v9 = MediaPlayerLibrary_19810();
    v10 = dlsym(v9, "MPMediaPlaylistPropertyPersistentID");
    *(v31[1] + 24) = v10;
    getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr_19835 = *(v31[1] + 24);
    v8 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (v8)
  {
    v11 = [v5 predicateWithValue:v7 forProperty:*v8];

    v32 = 0;
    v33 = &v32;
    v34 = 0x2050000000;
    v12 = getMPMediaQueryClass_softClass_19839;
    v35 = getMPMediaQueryClass_softClass_19839;
    if (!getMPMediaQueryClass_softClass_19839)
    {
      v27 = MEMORY[0x277D85DD0];
      v28 = 3221225472;
      v29 = __getMPMediaQueryClass_block_invoke_19840;
      v30 = &unk_278C222B8;
      v31 = &v32;
      __getMPMediaQueryClass_block_invoke_19840(&v27);
      v12 = v33[3];
    }

    v13 = v12;
    _Block_object_dispose(&v32, 8);
    v14 = [v12 alloc];
    v15 = [MEMORY[0x277CBEB98] setWithObject:v11];
    v16 = [v14 initWithFilterPredicates:v15];

    [v16 setGroupingType:6];
    v17 = [v16 collections];
    v18 = [v17 firstObject];

    v19 = *(a1 + 56);
    v20 = [v18 items];
    v21 = [v20 count] - *(a1 + 56);

    v22 = *(a1 + 32);
    v23 = [v18 items];
    v24 = [v23 subarrayWithRange:{v19, v21}];
    [v22 addObjectsFromArray:v24];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaPlaylistPropertyPersistentID(void)"];
    [v25 handleFailureInFunction:v26 file:@"WFAddToPlaylistAction.m" lineNumber:25 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_23E0DD9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMediaPropertyPredicateClass_block_invoke_19833(uint64_t a1)
{
  MediaPlayerLibrary_19810();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaPropertyPredicate");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaPropertyPredicateClass_softClass_19832 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaPropertyPredicateClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAddToPlaylistAction.m" lineNumber:24 description:{@"Unable to find class %s", "MPMediaPropertyPredicate"}];

    __break(1u);
  }
}

void *__getMPMediaPlaylistPropertyPersistentIDSymbolLoc_block_invoke_19836(uint64_t a1)
{
  v2 = MediaPlayerLibrary_19810();
  result = dlsym(v2, "MPMediaPlaylistPropertyPersistentID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr_19835 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getMPMediaQueryClass_block_invoke_19840(uint64_t a1)
{
  MediaPlayerLibrary_19810();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaQuery");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaQueryClass_softClass_19839 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaQueryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAddToPlaylistAction.m" lineNumber:23 description:{@"Unable to find class %s", "MPMediaQuery"}];

    __break(1u);
  }
}

void __WFAddContentToPlaylist_block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 32);
  v8 = [a2 playbackStoreID];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __WFAddContentToPlaylist_block_invoke_5;
  v10[3] = &unk_278C21AE8;
  v11 = *(a1 + 40);
  v12 = v6;
  v9 = v6;
  [v7 addItemWithProductID:v8 completionHandler:v10];
}

void __WFAddContentToPlaylist_block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 addObjectsFromArray:a2];
  (*(*(a1 + 40) + 16))();
}

Class __getMPMediaItemClass_block_invoke_19899(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_19905)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __MediaPlayerLibraryCore_block_invoke_19906;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C1BEA8;
    v9 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_19905 = _sl_dlopen();
  }

  if (!MediaPlayerLibraryCore_frameworkLibrary_19905)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFAddMusicToUpNextAction.m" lineNumber:17 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("MPMediaItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaItemClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFAddMusicToUpNextAction.m" lineNumber:18 description:{@"Unable to find class %s", "MPMediaItem"}];

LABEL_10:
    __break(1u);
  }

  getMPMediaItemClass_softClass_19898 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_19906(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_19905 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id getMPAVRoutingControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPAVRoutingControllerClass_softClass;
  v7 = getMPAVRoutingControllerClass_softClass;
  if (!getMPAVRoutingControllerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPAVRoutingControllerClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getMPAVRoutingControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E0DEA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPAVRoutingControllerClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_19982();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPAVRoutingController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPAVRoutingControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPAVRoutingControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaRoutePickerParameter.m" lineNumber:21 description:{@"Unable to find class %s", "MPAVRoutingController"}];

    __break(1u);
  }
}

void MediaPlayerLibrary_19982()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_19992)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_19993;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C1BEE8;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_19992 = _sl_dlopen();
  }

  if (!MediaPlayerLibraryCore_frameworkLibrary_19992)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaRoutePickerParameter.m" lineNumber:20 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __MediaPlayerLibraryCore_block_invoke_19993(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_19992 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E0DEEDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19998(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23E0DF088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

WFMediaRouteState *WFGetLocalDeviceMediaRoute()
{
  v0 = [[WFMediaRouteDescriptor alloc] initWithRouteUID:@"Speaker" groupUID:0 routeName:0 isLocalDevice:1];
  v1 = [(WFVariableSubstitutableParameterState *)[WFMediaRouteState alloc] initWithValue:v0];

  return v1;
}

void __getMPAVOutputDeviceRouteClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_19982();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPAVOutputDeviceRoute");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPAVOutputDeviceRouteClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPAVOutputDeviceRouteClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaRoutePickerParameter.m" lineNumber:22 description:{@"Unable to find class %s", "MPAVOutputDeviceRoute"}];

    __break(1u);
  }
}

Class __getMKMapItemClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!MapKitLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __MapKitLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C1BF78;
    v9 = 0;
    MapKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MapKitLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MapKitLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFShowInBlindSquareAction.m" lineNumber:13 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("MKMapItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMKMapItemClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFShowInBlindSquareAction.m" lineNumber:14 description:{@"Unable to find class %s", "MKMapItem"}];

LABEL_10:
    __break(1u);
  }

  getMKMapItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id getCLPlacemarkClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCLPlacemarkClass_softClass;
  v7 = getCLPlacemarkClass_softClass;
  if (!getCLPlacemarkClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCLPlacemarkClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getCLPlacemarkClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E0E0590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCLLocationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCLLocationClass_softClass_20281;
  v7 = getCLLocationClass_softClass_20281;
  if (!getCLLocationClass_softClass_20281)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCLLocationClass_block_invoke_20282;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getCLLocationClass_block_invoke_20282(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E0E086C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCLLocationClass_block_invoke_20282(uint64_t a1)
{
  CoreLocationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CLLocation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCLLocationClass_softClass_20281 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCLLocationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFShowInBlindSquareAction.m" lineNumber:18 description:{@"Unable to find class %s", "CLLocation"}];

    __break(1u);
  }
}

void CoreLocationLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_20292)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreLocationLibraryCore_block_invoke_20293;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C1BF90;
    v6 = 0;
    CoreLocationLibraryCore_frameworkLibrary_20292 = _sl_dlopen();
  }

  if (!CoreLocationLibraryCore_frameworkLibrary_20292)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"WFShowInBlindSquareAction.m" lineNumber:16 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __CoreLocationLibraryCore_block_invoke_20293(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_20292 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __getCLPlacemarkClass_block_invoke(uint64_t a1)
{
  CoreLocationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CLPlacemark");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCLPlacemarkClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCLPlacemarkClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFShowInBlindSquareAction.m" lineNumber:17 description:{@"Unable to find class %s", "CLPlacemark"}];

    __break(1u);
  }
}

uint64_t __MapKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MapKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E0E32B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20475(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getAVAudioSessionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVAudioSessionClass_softClass;
  v7 = getAVAudioSessionClass_softClass;
  if (!getAVAudioSessionClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAVAudioSessionClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getAVAudioSessionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E0E5F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAVAudioSessionClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary_20644();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVAudioSession");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVAudioSessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVAudioSessionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSpeakTextAction.m" lineNumber:19 description:{@"Unable to find class %s", "AVAudioSession"}];

    __break(1u);
  }
}

void *AVFoundationLibrary_20644()
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AVFoundationLibraryCore_frameworkLibrary_20654)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AVFoundationLibraryCore_block_invoke_20655;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278C1C290;
    v7 = 0;
    AVFoundationLibraryCore_frameworkLibrary_20654 = _sl_dlopen();
  }

  v0 = AVFoundationLibraryCore_frameworkLibrary_20654;
  if (!AVFoundationLibraryCore_frameworkLibrary_20654)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AVFoundationLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFSpeakTextAction.m" lineNumber:17 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __AVFoundationLibraryCore_block_invoke_20655(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AVFoundationLibraryCore_frameworkLibrary_20654 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void getAVAudioSessionCategoryPlayback()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getAVAudioSessionCategoryPlaybackSymbolLoc_ptr;
  v9 = getAVAudioSessionCategoryPlaybackSymbolLoc_ptr;
  if (!getAVAudioSessionCategoryPlaybackSymbolLoc_ptr)
  {
    v1 = AVFoundationLibrary_20644();
    v7[3] = dlsym(v1, "AVAudioSessionCategoryPlayback");
    getAVAudioSessionCategoryPlaybackSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVAudioSessionCategory getAVAudioSessionCategoryPlayback(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFSpeakTextAction.m" lineNumber:21 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_23E0E752C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAVAudioSessionModeVoicePromptSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_20644();
  result = dlsym(v2, "AVAudioSessionModeVoicePrompt");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVAudioSessionModeVoicePromptSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVAudioSessionModeDefaultSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_20644();
  result = dlsym(v2, "AVAudioSessionModeDefault");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVAudioSessionModeDefaultSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVAudioSessionCategoryPlaybackSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_20644();
  result = dlsym(v2, "AVAudioSessionCategoryPlayback");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVAudioSessionCategoryPlaybackSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getCTServiceDescriptorClass_20872()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCTServiceDescriptorClass_softClass_20873;
  v7 = getCTServiceDescriptorClass_softClass_20873;
  if (!getCTServiceDescriptorClass_softClass_20873)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCTServiceDescriptorClass_block_invoke_20874;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getCTServiceDescriptorClass_block_invoke_20874(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E0E7A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCTServiceDescriptorClass_block_invoke_20874(uint64_t a1)
{
  CoreTelephonyLibrary_20875();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CTServiceDescriptor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCTServiceDescriptorClass_softClass_20873 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCTServiceDescriptorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFCellularManager.m" lineNumber:36 description:{@"Unable to find class %s", "CTServiceDescriptor"}];

    __break(1u);
  }
}

void *CoreTelephonyLibrary_20875()
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CoreTelephonyLibraryCore_frameworkLibrary_20885)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CoreTelephonyLibraryCore_block_invoke_20886;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278C1C368;
    v7 = 0;
    CoreTelephonyLibraryCore_frameworkLibrary_20885 = _sl_dlopen();
  }

  v0 = CoreTelephonyLibraryCore_frameworkLibrary_20885;
  if (!CoreTelephonyLibraryCore_frameworkLibrary_20885)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreTelephonyLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFCellularManager.m" lineNumber:34 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __CoreTelephonyLibraryCore_block_invoke_20886(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreTelephonyLibraryCore_frameworkLibrary_20885 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id getCTCellularPlanManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCTCellularPlanManagerClass_softClass;
  v7 = getCTCellularPlanManagerClass_softClass;
  if (!getCTCellularPlanManagerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCTCellularPlanManagerClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getCTCellularPlanManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E0E8DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCTCellularPlanManagerClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!CellularPlanManagerLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __CellularPlanManagerLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C1C380;
    v9 = 0;
    CellularPlanManagerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CellularPlanManagerLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CellularPlanManagerLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFCellularManager.m" lineNumber:40 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CTCellularPlanManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCTCellularPlanManagerClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFCellularManager.m" lineNumber:41 description:{@"Unable to find class %s", "CTCellularPlanManager"}];

LABEL_10:
    __break(1u);
  }

  getCTCellularPlanManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CellularPlanManagerLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CellularPlanManagerLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E0E9330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23E0E9DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCoreTelephonyClientClass_block_invoke_20991(uint64_t a1)
{
  CoreTelephonyLibrary_20875();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CoreTelephonyClient");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCoreTelephonyClientClass_softClass_20990 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCoreTelephonyClientClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFCellularManager.m" lineNumber:35 description:{@"Unable to find class %s", "CoreTelephonyClient"}];

    __break(1u);
  }
}

void sub_23E0ECAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPAVOutputDeviceRouteClass_block_invoke_21408(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_21429)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __MediaPlayerLibraryCore_block_invoke_21430;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C1C3C0;
    v9 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_21429 = _sl_dlopen();
  }

  if (!MediaPlayerLibraryCore_frameworkLibrary_21429)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFListeningModePickerParameter.m" lineNumber:24 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("MPAVOutputDeviceRoute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPAVOutputDeviceRouteClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFListeningModePickerParameter.m" lineNumber:25 description:{@"Unable to find class %s", "MPAVOutputDeviceRoute"}];

LABEL_10:
    __break(1u);
  }

  getMPAVOutputDeviceRouteClass_softClass_21407 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_21430(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_21429 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WFTextPositionIsTopPosition(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Top Left"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Top Center"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"Top Right"];
  }

  return v2;
}

uint64_t WFTextPositionIsBottomPosition(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Bottom Left"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Bottom Center"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"Bottom Right"];
  }

  return v2;
}

void sub_23E0ED9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getUIFontClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("UIFont");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIFontClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUIFontClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFOverlayTextAction.m" lineNumber:24 description:{@"Unable to find class %s", "UIFont"}];

    __break(1u);
  }
}

void *UIKitLibrary()
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary_21698)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __UIKitLibraryCore_block_invoke_21699;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278C1C428;
    v7 = 0;
    UIKitLibraryCore_frameworkLibrary_21698 = _sl_dlopen();
  }

  v0 = UIKitLibraryCore_frameworkLibrary_21698;
  if (!UIKitLibraryCore_frameworkLibrary_21698)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *UIKitLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFOverlayTextAction.m" lineNumber:17 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __UIKitLibraryCore_block_invoke_21699(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary_21698 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E0EE034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getNSStrokeColorAttributeNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "NSStrokeColorAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSStrokeColorAttributeNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNSStrokeWidthAttributeNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "NSStrokeWidthAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSStrokeWidthAttributeNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_23E0EE568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getNSForegroundColorAttributeNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "NSForegroundColorAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSForegroundColorAttributeNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNSFontAttributeNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "NSFontAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSFontAttributeNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNSParagraphStyleAttributeNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "NSParagraphStyleAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSParagraphStyleAttributeNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_23E0EE7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getNSParagraphStyleClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NSParagraphStyle");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNSParagraphStyleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getNSParagraphStyleClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFOverlayTextAction.m" lineNumber:23 description:{@"Unable to find class %s", "NSParagraphStyle"}];

    __break(1u);
  }
}

void CheckXMLResult(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((a1 & 0x80000000) != 0)
  {
    v5 = v3;
    LastError = xmlGetLastError();
    if (LastError)
    {
      LastError = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:LastError->message encoding:4];
      xmlResetLastError();
    }

    [MEMORY[0x277CBEAD8] raise:@"ENXMLWriterLibXMLError" format:{@"%@ returned result=%i, error=%@", v5, a1, LastError}];

    v3 = v5;
  }
}

uint64_t ENXMLWriter_contentsWriteCallback(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a1;
  v7 = [v5 stringWithUTF8String:a2];
  [v6 appendString:v7];

  return a3;
}

uint64_t ENXMLWriter_delegateCloseCallback(id *a1)
{
  v2 = a1;
  WeakRetained = objc_loadWeakRetained(a1 + 1);
  [WeakRetained xmlWriterDidEndWritingDocument:v2];

  return 0;
}

uint64_t ENXMLWriter_delegateWriteCallback(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x277CBEA90];
  v6 = a1;
  v7 = [[v5 alloc] initWithBytes:a2 length:a3];
  WeakRetained = objc_loadWeakRetained(v6 + 1);
  [WeakRetained xmlWriter:v6 didGenerateData:v7];

  return a3;
}

void sub_23E0F0698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22016(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getFIUIWorkoutActivityTypeClass_22440()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getFIUIWorkoutActivityTypeClass_softClass_22461;
  v7 = getFIUIWorkoutActivityTypeClass_softClass_22461;
  if (!getFIUIWorkoutActivityTypeClass_softClass_22461)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getFIUIWorkoutActivityTypeClass_block_invoke_22462;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getFIUIWorkoutActivityTypeClass_block_invoke_22462(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E0F3F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFIUIWorkoutActivityTypeClass_block_invoke_22462(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!FitnessUILibraryCore_frameworkLibrary_22463)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __FitnessUILibraryCore_block_invoke_22464;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C1C490;
    v9 = 0;
    FitnessUILibraryCore_frameworkLibrary_22463 = _sl_dlopen();
  }

  if (!FitnessUILibraryCore_frameworkLibrary_22463)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *FitnessUILibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFFIUIWorkoutActivityTypeSubstitutableState.m" lineNumber:16 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("FIUIWorkoutActivityType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getFIUIWorkoutActivityTypeClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFFIUIWorkoutActivityTypeSubstitutableState.m" lineNumber:17 description:{@"Unable to find class %s", "FIUIWorkoutActivityType"}];

LABEL_10:
    __break(1u);
  }

  getFIUIWorkoutActivityTypeClass_softClass_22461 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __FitnessUILibraryCore_block_invoke_22464(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  FitnessUILibraryCore_frameworkLibrary_22463 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E0F4684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v11 + 40));
  _Unwind_Resume(a1);
}

void __WFMigrateDropboxToV2_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  v8 = objc_opt_class();
  v9 = WFEnforceClass(v7, v8);

  v10 = [v9 objectForKeyedSubscript:@"kMPOAuthCredentialAccessToken"];
  v11 = objc_opt_class();
  v12 = WFEnforceClass(v10, v11);

  v13 = [v9 objectForKeyedSubscript:@"kMPOAuthCredentialAccessTokenSecret"];
  v14 = objc_opt_class();
  v15 = WFEnforceClass(v13, v14);

  v16 = *(a1 + 32);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __WFMigrateDropboxToV2_block_invoke_3;
  v18[3] = &unk_278C1C500;
  v19 = v6;
  v17 = v6;
  [v16 authenticateWithLegacyAccessToken:v12 accessTokenSecret:v15 completionHandler:v18];
}

void __WFMigrateDropboxToV2_block_invoke_4(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 |= [(WFAccount *)WFDropboxAccount saveAccount:*(*(&v10 + 1) + 8 * i)];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
    if (v6)
    {
      SecItemDelete(*(a1 + 32));
    }
  }

  [WFMigrateDropboxToV2_lock unlock];

  v9 = *MEMORY[0x277D85DE8];
}

void __WFMigrateDropboxToV2_block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v5 = a3;
    v7 = [(WFOAuth2Account *)WFDropboxAccount accountWithCredential:a2];
    (*(v3 + 16))(v3);
  }

  else
  {
    v6 = *(v3 + 16);
    v7 = a3;
    v6(v3, 0);
  }
}

void __WFMigrateDropboxToV2_block_invoke()
{
  v0 = objc_opt_new();
  v1 = WFMigrateDropboxToV2_lock;
  WFMigrateDropboxToV2_lock = v0;
}

void kb_callback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, id *a8)
{
  LODWORD(v10) = a5;
  v16 = *a8;
  if (v10 >= 1)
  {
    v10 = v10;
    v11 = (a7 + 8);
    v12 = (a6 + 8);
    do
    {
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(v12 - 1) length:*v12 encoding:4];
      v14 = [v16 keyboardInteractiveRequest:v13];
      if (v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = &stru_2850323E8;
      }

      *(v11 - 1) = strdup([(__CFString *)v15 UTF8String]);
      *v11 = strlen([(__CFString *)v15 UTF8String]);
      v11 += 4;

      v12 += 3;
      --v10;
    }

    while (v10);
  }
}

void sub_23E0F7538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void disconnect_callback(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, id *a7)
{
  v21 = *a7;
  v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  if (a3)
  {
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a3 length:a4 encoding:4];
    [v12 setObject:v13 forKey:*MEMORY[0x277CCA450]];
  }

  if (a5)
  {
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a5 length:a6 encoding:4];
    [v12 setObject:v14 forKey:@"language"];
  }

  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NMSSH" code:a2 userInfo:v12];
  v16 = [v21 delegate];
  if (v16)
  {
    v17 = v16;
    v18 = [v21 delegate];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      v20 = [v21 delegate];
      [v20 session:v21 didDisconnectWithError:v15];
    }
  }

  [v21 disconnect];
}

uint64_t IsEvernoteInstalled()
{
  v0 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v1 = [MEMORY[0x277CBEBC0] URLWithString:@"en://"];
  v2 = [v0 isApplicationAvailableToOpenURL:v1 error:0];

  return v2;
}

Class __getREMSaveRequestClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!ReminderKitLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __ReminderKitLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C1C590;
    v9 = 0;
    ReminderKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ReminderKitLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ReminderKitLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFRemoveCalendarItemsAction.m" lineNumber:19 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("REMSaveRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getREMSaveRequestClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFRemoveCalendarItemsAction.m" lineNumber:20 description:{@"Unable to find class %s", "REMSaveRequest"}];

LABEL_10:
    __break(1u);
  }

  getREMSaveRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __ReminderKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id getCBClientClass_23066()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCBClientClass_softClass_23067;
  v7 = getCBClientClass_softClass_23067;
  if (!getCBClientClass_softClass_23067)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCBClientClass_block_invoke_23068;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getCBClientClass_block_invoke_23068(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E0F9A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCBClientClass_block_invoke_23068(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!CoreBrightnessLibraryCore_frameworkLibrary_23069)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __CoreBrightnessLibraryCore_block_invoke_23070;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C1C5A8;
    v9 = 0;
    CoreBrightnessLibraryCore_frameworkLibrary_23069 = _sl_dlopen();
  }

  if (!CoreBrightnessLibraryCore_frameworkLibrary_23069)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreBrightnessLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFTrueToneSettingsClient.m" lineNumber:19 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CBClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCBClientClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFTrueToneSettingsClient.m" lineNumber:30 description:{@"Unable to find class %s", "CBClient"}];

LABEL_10:
    __break(1u);
  }

  getCBClientClass_softClass_23067 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreBrightnessLibraryCore_block_invoke_23070(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreBrightnessLibraryCore_frameworkLibrary_23069 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id ONOXPathFromCSS(void *a1)
{
  v1 = MEMORY[0x277CBEB18];
  v2 = a1;
  v3 = [v1 array];
  v4 = [v2 componentsSeparatedByString:{@", "}];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __ONOXPathFromCSS_block_invoke;
  v8[3] = &unk_278C1C5F0;
  v9 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v8];

  v6 = [v5 componentsJoinedByString:@" | "];

  return v6;
}

void __ONOXPathFromCSS_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__23319;
    v18 = __Block_byref_object_dispose__23320;
    v19 = [MEMORY[0x277CBEB18] arrayWithObject:@"./"];
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3032000000;
    v12[3] = __Block_byref_object_copy__23319;
    v12[4] = __Block_byref_object_dispose__23320;
    v13 = 0;
    v5 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v6 = [v4 stringByTrimmingCharactersInSet:v5];
    v7 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v8 = [v6 componentsSeparatedByCharactersInSet:v7];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __ONOXPathFromCSS_block_invoke_8;
    v11[3] = &unk_278C1C5C8;
    v11[4] = &v14;
    v11[5] = v12;
    [v8 enumerateObjectsUsingBlock:v11];

    v9 = *(a1 + 32);
    v10 = [v15[5] componentsJoinedByString:@"/"];
    [v9 addObject:v10];

    _Block_object_dispose(v12, 8);
    _Block_object_dispose(&v14, 8);
  }
}

void sub_23E0FB5F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23319(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __ONOXPathFromCSS_block_invoke_8(uint64_t a1, void *a2, uint64_t a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 isEqualToString:@"*"];
  if (a3 && v6)
  {