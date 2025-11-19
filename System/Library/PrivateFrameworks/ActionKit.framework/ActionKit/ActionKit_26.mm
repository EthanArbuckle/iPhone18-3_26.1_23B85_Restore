ASN1_INTEGER *CMS_add_simple_smimecap(STACK **a1, int a2, int a3)
{
  if (a3 < 1)
  {
    v7 = 0;
  }

  else
  {
    result = ASN1_INTEGER_new();
    if (!result)
    {
      return result;
    }

    v7 = result;
    if (!ASN1_INTEGER_set(result, a3))
    {
      goto LABEL_14;
    }
  }

  v8 = X509_ALGOR_new();
  if (!v8)
  {
LABEL_14:
    ASN1_INTEGER_free(v7);
    return 0;
  }

  v9 = v8;
  v10 = OBJ_nid2obj(a2);
  if (v7)
  {
    v11 = 2;
  }

  else
  {
    v11 = -1;
  }

  X509_ALGOR_set0(v9, v10, v11, v7);
  v12 = *a1;
  if (*a1 || (v12 = sk_new_null(), (*a1 = v12) != 0))
  {
    if (sk_push(v12, v9))
    {
      return 1;
    }
  }

  X509_ALGOR_free(v9);
  return 0;
}

ASN1_INTEGER *cms_add_cipher_smcap(STACK **a1, int n, int a3)
{
  v6 = OBJ_nid2sn(n);
  if (!EVP_get_cipherbyname(v6))
  {
    return 1;
  }

  return CMS_add_simple_smimecap(a1, n, a3);
}

RSA *__cdecl RSA_new_method(ENGINE *engine)
{
  v2 = malloc_type_calloc(1uLL, 0xA0uLL, 0x1060040A7B8FD3BuLL);
  if (!v2)
  {
    ERR_put_error(4, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_lib.c", 136);
    return v2;
  }

  v3 = default_RSA_meth;
  if (!default_RSA_meth)
  {
    v3 = RSA_PKCS1_SSLeay();
    default_RSA_meth = v3;
  }

  *(v2 + 2) = v3;
  if (engine)
  {
    if (!ENGINE_init(engine))
    {
      v5 = 145;
      goto LABEL_12;
    }

    *(v2 + 3) = engine;
    goto LABEL_9;
  }

  engine = ENGINE_get_default_RSA();
  *(v2 + 3) = engine;
  if (engine)
  {
LABEL_9:
    RSA = ENGINE_get_RSA(engine);
    *(v2 + 2) = RSA;
    if (!RSA)
    {
      v5 = 155;
LABEL_12:
      ERR_put_error(4, 4095, 38, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_lib.c", v5);
LABEL_18:
      ENGINE_finish(*(v2 + 3));
      free(v2);
      return 0;
    }

    goto LABEL_14;
  }

  RSA = *(v2 + 2);
LABEL_14:
  v6 = RSA->flags & 0xFFFFFBFF;
  *(v2 + 28) = 1;
  *(v2 + 29) = v6;
  if (!CRYPTO_new_ex_data(6, v2, (v2 + 104)))
  {
    goto LABEL_18;
  }

  v7 = *(*(v2 + 2) + 56);
  if (v7 && !v7(v2))
  {
    CRYPTO_free_ex_data(6, v2, (v2 + 104));
    goto LABEL_18;
  }

  return v2;
}

const RSA_METHOD *RSA_get_default_method(void)
{
  result = default_RSA_meth;
  if (!default_RSA_meth)
  {
    result = RSA_PKCS1_SSLeay();
    default_RSA_meth = result;
  }

  return result;
}

int RSA_set_method(RSA *rsa, const RSA_METHOD *meth)
{
  finish = rsa->meth->finish;
  if (finish)
  {
    (finish)(rsa);
  }

  ENGINE_finish(rsa->engine);
  rsa->meth = meth;
  rsa->engine = 0;
  init = meth->init;
  if (init)
  {
    (init)(rsa);
  }

  return 1;
}

void RSA_free(RSA *r)
{
  if (r && CRYPTO_add_lock(&r->references, -1, 9, 0, 0) <= 0)
  {
    finish = r->meth->finish;
    if (finish)
    {
      (finish)(r);
    }

    ENGINE_finish(r->engine);
    CRYPTO_free_ex_data(6, r, &r->ex_data.dummy);
    BN_free(r->n);
    BN_free(r->e);
    BN_free(r->d);
    BN_free(r->p);
    BN_free(r->q);
    BN_free(r->dmp1);
    BN_free(r->dmq1);
    BN_free(r->iqmp);
    BN_BLINDING_free(r->bignum_data);
    BN_BLINDING_free(r->blinding);
    RSA_PSS_PARAMS_free(r->ex_data.sk);

    free(r);
  }
}

uint64_t RSA_security_bits(uint64_t a1)
{
  v1 = RSA_bits(a1);

  return BN_security_bits(v1, -1);
}

void *RSA_get0_key(void *result, void *a2, void *a3, void *a4)
{
  if (a2)
  {
    *a2 = result[4];
  }

  if (a3)
  {
    *a3 = result[5];
  }

  if (a4)
  {
    *a4 = result[6];
  }

  return result;
}

uint64_t RSA_set0_key(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (!(a2 | v5) || !(a3 | *(a1 + 40)))
  {
    return 0;
  }

  if (a2)
  {
    BN_free(v5);
    *(a1 + 32) = a2;
  }

  if (a3)
  {
    BN_free(*(a1 + 40));
    *(a1 + 40) = a3;
  }

  if (a4)
  {
    BN_free(*(a1 + 48));
    *(a1 + 48) = a4;
  }

  return 1;
}

void *RSA_get0_crt_params(void *result, void *a2, void *a3, void *a4)
{
  if (a2)
  {
    *a2 = result[9];
  }

  if (a3)
  {
    *a3 = result[10];
  }

  if (a4)
  {
    *a4 = result[11];
  }

  return result;
}

uint64_t RSA_set0_crt_params(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 72);
  if (!(a2 | v5) || !(a3 | *(a1 + 80)) || !(a4 | *(a1 + 88)))
  {
    return 0;
  }

  if (a2)
  {
    BN_free(v5);
    *(a1 + 72) = a2;
  }

  if (a3)
  {
    BN_free(*(a1 + 80));
    *(a1 + 80) = a3;
  }

  if (a4)
  {
    BN_free(*(a1 + 88));
    *(a1 + 88) = a4;
  }

  return 1;
}

uint64_t RSA_get0_factors(uint64_t result, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = *(result + 56);
  }

  if (a3)
  {
    *a3 = *(result + 64);
  }

  return result;
}

uint64_t RSA_set0_factors(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  if (!(a2 | v4) || !(a3 | *(a1 + 64)))
  {
    return 0;
  }

  if (a2)
  {
    BN_free(v4);
    *(a1 + 56) = a2;
  }

  if (a3)
  {
    BN_free(*(a1 + 64));
    *(a1 + 64) = a3;
  }

  return 1;
}

uint64_t RSA_pkey_ctx_ctrl(uint64_t *a1, int a2)
{
  if (a1 && *a1 && ((v2 = **a1, v2 != 912) ? (v3 = v2 == 6) : (v3 = 1), !v3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return EVP_PKEY_CTX_ctrl(a1, -1, a2);
  }
}

EC_GROUP *__cdecl EC_GROUP_new_by_curve_name(int nid)
{
  if (nid >= 1)
  {
    v2 = &off_278C15620;
    v3 = 54;
    while (*(v2 - 8) != nid)
    {
      v2 += 10;
      if (!--v3)
      {
        ERR_put_error(16, 4095, 129, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_curve.c", 3122);
        return 0;
      }
    }

    v5 = BN_CTX_new();
    v6 = v5;
    if (v5)
    {
      BN_CTX_start(v5);
      v4 = BN_CTX_get(v6);
      if (!v4)
      {
        v25 = 3;
        v26 = 3015;
LABEL_31:
        ERR_put_error(16, 4095, v25, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_curve.c", v26);
        v22 = 0;
LABEL_42:
        v20 = 0;
        goto LABEL_43;
      }

      v7 = BN_CTX_get(v6);
      if (v7)
      {
        v8 = v7;
        v9 = BN_CTX_get(v6);
        if (v9)
        {
          v10 = v9;
          v11 = BN_CTX_get(v6);
          if (v11)
          {
            v12 = v11;
            v13 = BN_CTX_get(v6);
            if (v13)
            {
              v14 = v13;
              v15 = BN_CTX_get(v6);
              if (v15)
              {
                v16 = v15;
                v17 = BN_CTX_get(v6);
                if (v17)
                {
                  a = v17;
                  v18 = *(v2 - 6);
                  if (BN_bin2bn(*(v2 - 1), v18, v4))
                  {
                    if (BN_bin2bn(*v2, v18, v8))
                    {
                      if (BN_bin2bn(v2[1], v18, v10))
                      {
                        v19 = EC_GROUP_new_curve_GFp(v4, v8, v10, v6);
                        v4 = v19;
                        if (v19)
                        {
                          EC_GROUP_set_curve_name(v19, nid);
                          v20 = EC_POINT_new(v4);
                          if (v20)
                          {
                            if (BN_bin2bn(v2[2], v18, v12))
                            {
                              if (BN_bin2bn(v2[3], v18, v14))
                              {
                                if (EC_POINT_set_affine_coordinates(v4, v20, v12, v14, v6))
                                {
                                  if (BN_bin2bn(v2[4], v18, v16))
                                  {
                                    if (BN_set_word(a, *(v2 - 5)))
                                    {
                                      if (EC_GROUP_set_generator(v4, v20, v16, a))
                                      {
                                        v21 = *(v2 - 2);
                                        if (!v21 || EC_GROUP_set_seed(v4, v21, *(v2 - 7)))
                                        {
                                          v22 = 0;
LABEL_43:
                                          EC_GROUP_free(v22);
                                          EC_POINT_free(v20);
                                          BN_CTX_end(v6);
                                          BN_CTX_free(v6);
                                          return v4;
                                        }

                                        v28 = 16;
                                        v29 = 3092;
                                      }

                                      else
                                      {
                                        v28 = 16;
                                        v29 = 3086;
                                      }
                                    }

                                    else
                                    {
                                      v28 = 3;
                                      v29 = 3082;
                                    }
                                  }

                                  else
                                  {
                                    v28 = 16;
                                    v29 = 3078;
                                  }
                                }

                                else
                                {
                                  v28 = 16;
                                  v29 = 3074;
                                }
                              }

                              else
                              {
                                v28 = 3;
                                v29 = 3070;
                              }
                            }

                            else
                            {
                              v28 = 3;
                              v29 = 3066;
                            }
                          }

                          else
                          {
                            v28 = 16;
                            v29 = 3062;
                          }

                          ERR_put_error(16, 4095, v28, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_curve.c", v29);
                          v22 = v4;
                          v4 = 0;
                          goto LABEL_43;
                        }

                        v25 = 16;
                        v26 = 3056;
                        goto LABEL_31;
                      }

                      v23 = 3;
                      v24 = 3052;
                    }

                    else
                    {
                      v23 = 3;
                      v24 = 3048;
                    }
                  }

                  else
                  {
                    v23 = 3;
                    v24 = 3044;
                  }
                }

                else
                {
                  v23 = 3;
                  v24 = 3039;
                }
              }

              else
              {
                v23 = 3;
                v24 = 3035;
              }
            }

            else
            {
              v23 = 3;
              v24 = 3031;
            }
          }

          else
          {
            v23 = 3;
            v24 = 3027;
          }
        }

        else
        {
          v23 = 3;
          v24 = 3023;
        }
      }

      else
      {
        v23 = 3;
        v24 = 3019;
      }
    }

    else
    {
      v23 = 65;
      v24 = 3009;
    }

    ERR_put_error(16, 4095, v23, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_curve.c", v24);
    v22 = 0;
    v4 = 0;
    goto LABEL_42;
  }

  return 0;
}

size_t EC_get_builtin_curves(EC_builtin_curve *r, size_t nitems)
{
  if (r && nitems)
  {
    v2 = 54;
    if (nitems < 0x36)
    {
      v2 = nitems;
    }

    p_comment = &r->comment;
    v4 = &dword_278C15600;
    do
    {
      *(p_comment - 2) = *v4;
      *p_comment = *(v4 - 1);
      p_comment += 2;
      v4 += 20;
      --v2;
    }

    while (v2);
  }

  return 54;
}

uint64_t EC_curve_nid2nist(int a1)
{
  v1 = &dword_278C166E0;
  v2 = 15;
  while (*v1 != a1)
  {
    v1 += 4;
    if (!--v2)
    {
      return 0;
    }
  }

  return *(v1 - 1);
}

uint64_t EC_curve_nist2nid(char *__s2)
{
  v2 = &dword_278C166E0;
  v3 = 15;
  while (strcmp(*(v2 - 1), __s2))
  {
    v2 += 4;
    if (!--v3)
    {
      return 0;
    }
  }

  return *v2;
}

void *freezero(void *result, size_t a2)
{
  if (result)
  {
    explicit_bzero(result, a2);
  }

  return result;
}

X509 *__cdecl d2i_X509_AUX(X509 **a, const unsigned __int8 **pp, uint64_t length)
{
  v6 = *pp;
  v7 = ASN1_item_d2i(0, pp, length, &X509_it);
  v8 = v7;
  if (v7)
  {
    v9 = v6 - *pp + length;
    if (v9 < 1 || d2i_X509_CERT_AUX(v7 + 28, pp, v9))
    {
      if (a)
      {
        ASN1_item_free(*a, &X509_it);
        *a = v8;
      }
    }

    else
    {
      ASN1_item_free(v8, &X509_it);
      return 0;
    }
  }

  return v8;
}

int i2d_X509_AUX(X509 *a, unsigned __int8 **pp)
{
  v4 = ASN1_item_i2d(a, pp, &X509_it);
  if (a)
  {
    v4 += i2d_X509_CERT_AUX(a[1].ex_pcpathlen, pp);
  }

  return v4;
}

uint64_t i2d_re_X509_tbs(uint64_t *a1, unsigned __int8 **a2)
{
  v2 = *a1;
  *(v2 + 96) = 1;
  return ASN1_item_i2d(v2, a2, &X509_CINF_it);
}

void *X509_get0_signature(void *result, void *a2, uint64_t a3)
{
  if (result)
  {
    *result = *(a3 + 16);
  }

  if (a2)
  {
    *a2 = *(a3 + 8);
  }

  return result;
}

uint64_t x509_cb(int a1, void **a2)
{
  v2 = *a2;
  switch(a1)
  {
    case 5:
      free(*(v2 + 4));
      *(v2 + 4) = X509_NAME_oneline(*(*v2 + 40), 0, 0);
      break;
    case 3:
      CRYPTO_free_ex_data(10, *a2, (v2 + 40));
      X509_CERT_AUX_free(*(v2 + 28));
      ASN1_OCTET_STRING_free(*(v2 + 11));
      AUTHORITY_KEYID_free(*(v2 + 12));
      CRL_DIST_POINTS_free(*(v2 + 13));
      GENERAL_NAMES_free(*(v2 + 14));
      NAME_CONSTRAINTS_free(*(v2 + 15));
      sk_pop_free(*(v2 + 16), IPAddressFamily_free);
      ASIdentifiers_free(*(v2 + 17));
      free(*(v2 + 4));
      *(v2 + 4) = 0;
      break;
    case 1:
      *(v2 + 6) = 0;
      *(v2 + 4) = 0;
      *(v2 + 3) = xmmword_23E24AA00;
      *(v2 + 28) = 0;
      *(v2 + 12) = 0;
      *(v2 + 13) = 0;
      *(v2 + 11) = 0;
      *(v2 + 16) = 0;
      *(v2 + 17) = 0;
      CRYPTO_new_ex_data(10, v2, (v2 + 40));
      break;
  }

  return 1;
}

void BN_RECP_CTX_init(BN_RECP_CTX *recp)
{
  BN_init(&recp->N);
  BN_init(&recp->Nr);
  recp->num_bits = 0;
  recp->flags = 0;
}

BN_RECP_CTX *BN_RECP_CTX_new(void)
{
  v0 = malloc_type_malloc(0x40uLL, 0x10100400860DEA3uLL);
  v1 = v0;
  if (v0)
  {
    BN_init(v0);
    BN_init(&v1->Nr);
    v1->num_bits = 0;
    v1->flags = 1;
  }

  return v1;
}

void BN_RECP_CTX_free(BN_RECP_CTX *recp)
{
  if (recp)
  {
    BN_free(&recp->N);
    BN_free(&recp->Nr);
    if (recp->flags)
    {

      free(recp);
    }
  }
}

int BN_RECP_CTX_set(BN_RECP_CTX *recp, const BIGNUM *rdiv, BN_CTX *ctx)
{
  result = bn_copy(&recp->N, rdiv);
  if (result)
  {
    BN_zero(&recp->Nr);
    recp->num_bits = BN_num_bits(rdiv);
    recp->shift = 0;
    return 1;
  }

  return result;
}

int BN_mod_mul_reciprocal(BIGNUM *r, const BIGNUM *x, const BIGNUM *y, BN_RECP_CTX *recp, BN_CTX *ctx)
{
  BN_CTX_start(ctx);
  v10 = BN_CTX_get(ctx);
  if (!v10)
  {
    goto LABEL_9;
  }

  if (y)
  {
    v11 = v10;
    if (x == y)
    {
      if (!BN_sqr(v10, x, ctx))
      {
LABEL_9:
        v12 = 0;
        goto LABEL_10;
      }
    }

    else if (!BN_mul(v10, x, y, ctx))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = x;
  }

  v12 = BN_div_recp(0, r, v11, recp, ctx);
LABEL_10:
  BN_CTX_end(ctx);
  return v12;
}

int BN_div_recp(BIGNUM *dv, BIGNUM *rem, const BIGNUM *m, BN_RECP_CTX *recp, BN_CTX *ctx)
{
  BN_CTX_start(ctx);
  v10 = BN_CTX_get(ctx);
  v11 = BN_CTX_get(ctx);
  if (!dv)
  {
    dv = BN_CTX_get(ctx);
    if (rem)
    {
      goto LABEL_3;
    }

LABEL_14:
    rem = BN_CTX_get(ctx);
    goto LABEL_3;
  }

  if (!rem)
  {
    goto LABEL_14;
  }

LABEL_3:
  v12 = 0;
  if (v10 && v11 && dv && rem)
  {
    if (BN_ucmp(m, &recp->N) < 0)
    {
      BN_zero(dv);
      v12 = bn_copy(rem, m);
    }

    else
    {
      v13 = BN_num_bits(m);
      if (2 * recp->num_bits <= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = 2 * recp->num_bits;
      }

      if (v14 == recp->shift)
      {
        v15 = v14;
      }

      else
      {
        v15 = BN_reciprocal(&recp->Nr, &recp->N, v14, ctx);
        recp->shift = v15;
      }

      if (v15 != -1)
      {
        if (BN_rshift(v10, m, recp->num_bits))
        {
          if (BN_mul(v11, v10, &recp->Nr, ctx))
          {
            if (BN_rshift(dv, v11, v14 - recp->num_bits))
            {
              dv->neg = 0;
              if (BN_mul(v11, &recp->N, dv, ctx))
              {
                if (BN_usub(rem, m, v11))
                {
                  rem->neg = 0;
                  v16 = 4;
                  while (1)
                  {
                    if (BN_ucmp(rem, &recp->N) < 0)
                    {
                      BN_set_negative(rem, m->neg);
                      BN_set_negative(dv, recp->N.neg ^ m->neg);
                      v12 = 1;
                      goto LABEL_32;
                    }

                    if (!--v16)
                    {
                      break;
                    }

                    if (!BN_usub(rem, rem, &recp->N))
                    {
                      goto LABEL_31;
                    }

                    v12 = 0;
                    if (!BN_add_word(dv, 1uLL))
                    {
                      goto LABEL_32;
                    }
                  }

                  ERR_put_error(3, 4095, 101, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_recp.c", 214);
                }
              }
            }
          }
        }
      }

LABEL_31:
      v12 = 0;
    }
  }

LABEL_32:
  BN_CTX_end(ctx);
  return v12;
}

int BN_reciprocal(BIGNUM *r, const BIGNUM *m, int len, BN_CTX *ctx)
{
  BN_CTX_start(ctx);
  v8 = BN_CTX_get(ctx);
  if (v8 && (v9 = v8, BN_set_bit(v8, len)))
  {
    if (!BN_div_ct(r, 0, v9, m, ctx))
    {
      len = -1;
    }
  }

  else
  {
    len = -1;
  }

  BN_CTX_end(ctx);
  return len;
}

STACK *i2v_AUTHORITY_INFO_ACCESS(X509V3_EXT_METHOD *a1, STACK *a2, STACK *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = a3;
    v6 = 0;
  }

  else
  {
    v5 = sk_new_null();
    v6 = v5;
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  v15 = 0;
  if (sk_num(a2) >= 1)
  {
    v7 = 0;
    while (1)
    {
      v8 = sk_value(a2, v7);
      if (!v8)
      {
        break;
      }

      v9 = v8;
      v10 = i2v_GENERAL_NAME(a1, *(v8 + 1), v5);
      if (!v10)
      {
        break;
      }

      v5 = v10;
      v11 = sk_value(v10, v7);
      if (!v11)
      {
        break;
      }

      v12 = v11;
      if (!i2t_ASN1_OBJECT(buf, 80, *v9))
      {
        break;
      }

      if (asprintf(&v15, "%s - %s", buf, *(v12 + 1)) == -1)
      {
        v15 = 0;
        ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_info.c", 240);
        break;
      }

      free(*(v12 + 1));
      *(v12 + 1) = v15;
      if (++v7 >= sk_num(a2))
      {
        goto LABEL_15;
      }
    }

    sk_pop_free(v6, X509V3_conf_free);
    v5 = 0;
  }

LABEL_15:
  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

STACK *v2i_AUTHORITY_INFO_ACCESS(X509V3_EXT_METHOD *a1, X509V3_CTX *a2, const STACK *a3)
{
  v6 = sk_new_null();
  if (!v6)
  {
    ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_info.c", 266);
    return v6;
  }

  memset(&cnf, 0, sizeof(cnf));
  if (sk_num(a3) >= 1)
  {
    v7 = 0;
    while (1)
    {
      v8 = sk_value(a3, v7);
      v9 = ASN1_item_new(&ACCESS_DESCRIPTION_it);
      if (!v9)
      {
        break;
      }

      v10 = v9;
      if (!sk_push(v6, v9))
      {
        ASN1_item_free(v10, &ACCESS_DESCRIPTION_it);
        v19 = 65;
        v20 = 277;
        goto LABEL_17;
      }

      v11 = *(v8 + 1);
      v12 = strchr(v11, 59);
      if (!v12)
      {
        v19 = 143;
        v20 = 282;
        goto LABEL_17;
      }

      v13 = v12;
      v14 = *(v8 + 2);
      cnf.name = v12 + 1;
      cnf.value = v14;
      if (!v2i_GENERAL_NAME_ex(*(v10 + 1), a1, a2, &cnf, 0))
      {
        goto LABEL_18;
      }

      v15 = v13 - v11 + 1;
      v16 = malloc_type_malloc(v15, 0x30A97E4DuLL);
      if (!v16)
      {
        v19 = 65;
        v20 = 291;
        goto LABEL_17;
      }

      v17 = v16;
      strlcpy(v16, *(v8 + 1), v15);
      v18 = OBJ_txt2obj(v17, 0);
      *v10 = v18;
      if (!v18)
      {
        ERR_put_error(34, 4095, 119, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_info.c", 297);
        ERR_asprintf_error_data("value=%s", v17);
        free(v17);
LABEL_18:
        sk_pop_free(v6, ACCESS_DESCRIPTION_free);
        return 0;
      }

      free(v17);
      if (++v7 >= sk_num(a3))
      {
        return v6;
      }
    }

    v19 = 65;
    v20 = 272;
LABEL_17:
    ERR_put_error(34, 4095, v19, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_info.c", v20);
    goto LABEL_18;
  }

  return v6;
}

uint64_t CMS_SharedInfo_encode(unsigned __int8 **out, uint64_t a2, uint64_t a3, int a4)
{
  v6 = bswap32(8 * a4);
  v7[0] = 0x400000004;
  v7[1] = &v6;
  v7[2] = 0;
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = v7;
  return ASN1_item_i2d(v5, out, &CMS_SharedInfo_it);
}

uint64_t cms_si_cb(int a1, uint64_t *a2)
{
  if (a1 == 3)
  {
    v2 = *a2;
    EVP_PKEY_free(*(*a2 + 64));
    X509_free(*(v2 + 56));
    EVP_MD_CTX_free(*(v2 + 72));
  }

  return 1;
}

uint64_t cms_rek_cb(int a1, uint64_t a2)
{
  if (a1 == 3)
  {
    EVP_PKEY_free(*(*a2 + 16));
  }

  return 1;
}

uint64_t cms_kari_cb(int a1, uint64_t *a2)
{
  v2 = *a2;
  if (a1 == 3)
  {
    EVP_PKEY_CTX_free(*(v2 + 40));
    EVP_CIPHER_CTX_free(*(v2 + 48));
    return 1;
  }

  if (a1 != 1)
  {
    return 1;
  }

  v3 = EVP_CIPHER_CTX_new();
  *(v2 + 48) = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = 1;
  EVP_CIPHER_CTX_set_flags(v3, 1);
  *(v2 + 40) = 0;
  return v4;
}

uint64_t cms_ri_cb(int a1, int **a2)
{
  if (a1 == 2)
  {
    v2 = *a2;
    v3 = **a2;
    if (v3 == 3 || v3 == 2)
    {
      freezero(*(*(v2 + 1) + 32), *(*(v2 + 1) + 40));
    }

    else if (!v3)
    {
      v4 = *(v2 + 1);
      EVP_PKEY_free(*(v4 + 40));
      X509_free(*(v4 + 32));
      EVP_PKEY_CTX_free(*(v4 + 48));
    }
  }

  return 1;
}

uint64_t cms_cb(int a1, const ASN1_OBJECT ***a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  v5 = *a2;
  if (a1 > 11)
  {
    if (a1 != 12)
    {
      if (a1 != 13)
      {
        return 1;
      }

      return CMS_dataFinal(v5, *(a4 + 8)) >= 1;
    }

LABEL_12:
    result = CMS_dataInit(v5, *a4);
    *(a4 + 8) = result;
    if (!result)
    {
      return result;
    }

    return 1;
  }

  if (a1 != 10)
  {
    if (a1 != 11)
    {
      return 1;
    }

    return CMS_dataFinal(v5, *(a4 + 8)) >= 1;
  }

  if (CMS_stream((a4 + 16), *a2) >= 1)
  {
    goto LABEL_12;
  }

  return 0;
}

uint64_t ASN1_TIME_to_tm(int *a1, uint64_t a2)
{
  if (a1)
  {
    return ASN1_time_parse(*(a1 + 1), *a1, a2, 0) != -1;
  }

  v4 = 0;
  time(&v4);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;
  return asn1_time_time_t_to_tm(&v4, a2);
}

uint64_t ASN1_TIME_diff(_DWORD *a1, _DWORD *a2, int *a3, int *a4)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  result = ASN1_TIME_to_tm(a3, v10);
  if (result)
  {
    result = ASN1_TIME_to_tm(a4, v8);
    if (result)
    {
      return OPENSSL_gmtime_diff(a1, a2, v10, v8);
    }
  }

  return result;
}

int RIPEMD160_Update(RIPEMD160_CTX *c, const void *data, size_t len)
{
  if (len)
  {
    v3 = len;
    v4 = data;
    *&c->Nl += 8 * len;
    num = c->num;
    if (num)
    {
      v7 = c->data;
      if (len <= 0x3F && num + len < 0x40)
      {
        memcpy(v7 + num, data, len);
        c->num += v3;
        return 1;
      }

      v8 = 64 - num;
      memcpy(v7 + num, data, 64 - num);
      ripemd160_block_data_order(c, c->data, 1);
      v4 = (v4 + v8);
      v3 -= v8;
      c->num = 0;
      *v7 = 0u;
      *&c->data[4] = 0u;
      *&c->data[8] = 0u;
      *&c->data[12] = 0u;
    }

    if (v3 >= 0x40)
    {
      ripemd160_block_data_order(c, v4, v3 >> 6);
      v4 = (v4 + (v3 & 0xFFFFFFFFFFFFFFC0));
      v3 &= 0x3Fu;
    }

    if (v3)
    {
      c->num = v3;
      memcpy(c->data, v4, v3);
    }
  }

  return 1;
}

_DWORD *ripemd160_block_data_order(_DWORD *result, _DWORD *a2, uint64_t a3)
{
  v606 = result;
  if (a3)
  {
    v3 = *result;
    v4 = result[1];
    v5 = result[2];
    v6 = result[3];
    v7 = result[4];
    do
    {
      v618 = v5;
      v617 = a2;
      v619 = v7;
      v620 = v3;
      v612 = a3;
      v8 = a2[1];
      v9 = *a2;
      HIDWORD(v10) = (v5 ^ v4 ^ v6) + v3 + *a2;
      LODWORD(v10) = HIDWORD(v10);
      v11 = v7;
      v12 = (v10 >> 21) + v7;
      HIDWORD(v10) = v5;
      LODWORD(v10) = v5;
      v13 = v10 >> 22;
      v14 = __PAIR64__(v4, __ROR4__(v5, 22));
      v15 = v8 + v11 + (v4 ^ v14 ^ v12);
      LODWORD(v14) = v4;
      v16 = v14 >> 22;
      HIDWORD(v14) = v15;
      LODWORD(v14) = v15;
      v17 = (v14 >> 18) + v6;
      v19 = a2[2];
      v18 = a2[3];
      LODWORD(v14) = v19 + v6 + (v12 ^ __ROR4__(v4, 22) ^ v17);
      HIDWORD(v14) = v14;
      v20 = v14 >> 17;
      HIDWORD(v14) = v12;
      LODWORD(v14) = v12;
      v21 = v14 >> 22;
      v22 = v20 + v13;
      LODWORD(v14) = v18 + v13 + (v17 ^ __ROR4__(v12, 22) ^ v22);
      HIDWORD(v14) = v14;
      v23 = v14 >> 20;
      HIDWORD(v14) = v17;
      LODWORD(v14) = v17;
      v24 = v14 >> 22;
      v25 = a2[4];
      v26 = v23 + v16;
      LODWORD(v14) = v25 + v16 + (v22 ^ __ROR4__(v17, 22) ^ v26);
      HIDWORD(v14) = v14;
      v27 = (v14 >> 27) + v21;
      HIDWORD(v14) = v22;
      LODWORD(v14) = v22;
      v28 = v14 >> 22;
      v29 = __PAIR64__(v26, __ROR4__(v22, 22));
      v30 = a2[5];
      v31 = v30 + v21 + (v26 ^ v29 ^ v27);
      LODWORD(v29) = v26;
      v32 = v29 >> 22;
      HIDWORD(v29) = v31;
      LODWORD(v29) = v31;
      v33 = (v29 >> 24) + v24;
      v34 = a2[6];
      v35 = a2[7];
      LODWORD(v29) = v34 + v24 + (v27 ^ __ROR4__(v26, 22) ^ v33);
      HIDWORD(v29) = v29;
      v36 = v29 >> 25;
      HIDWORD(v29) = v27;
      LODWORD(v29) = v27;
      v37 = v29 >> 22;
      v38 = v36 + v28;
      LODWORD(v29) = v35 + v28 + (v33 ^ __ROR4__(v27, 22) ^ v38);
      HIDWORD(v29) = v29;
      v39 = v29 >> 23;
      HIDWORD(v29) = v33;
      LODWORD(v29) = v33;
      v40 = v29 >> 22;
      v41 = a2[8];
      v42 = a2[9];
      v43 = v39 + v32;
      LODWORD(v29) = v41 + v32 + (v38 ^ __ROR4__(v33, 22) ^ v43);
      HIDWORD(v29) = v29;
      v44 = (v29 >> 21) + v37;
      HIDWORD(v29) = v38;
      LODWORD(v29) = v38;
      v45 = v29 >> 22;
      v46 = __PAIR64__(v43, __ROR4__(v38, 22));
      v47 = v42 + v37 + (v43 ^ v46 ^ v44);
      LODWORD(v46) = v43;
      v48 = v46 >> 22;
      HIDWORD(v46) = v47;
      LODWORD(v46) = v47;
      v49 = (v46 >> 19) + v40;
      v50 = a2[10];
      v51 = a2[11];
      LODWORD(v46) = v50 + v40 + (v44 ^ __ROR4__(v43, 22) ^ v49);
      HIDWORD(v46) = v46;
      v52 = v46 >> 18;
      HIDWORD(v46) = v44;
      LODWORD(v46) = v44;
      v53 = v46 >> 22;
      v54 = v52 + v45;
      LODWORD(v46) = v51 + v45 + (v49 ^ __ROR4__(v44, 22) ^ v54);
      HIDWORD(v46) = v46;
      v55 = v46 >> 17;
      HIDWORD(v46) = v49;
      LODWORD(v46) = v49;
      v56 = v46 >> 22;
      v57 = v55 + v48;
      v610 = a2[12];
      LODWORD(v46) = v610 + v48 + (v54 ^ __ROR4__(v49, 22) ^ v57);
      HIDWORD(v46) = v46;
      v58 = (v46 >> 26) + v53;
      HIDWORD(v46) = v54;
      LODWORD(v46) = v54;
      v59 = v46 >> 22;
      v60 = __PAIR64__(v57, __ROR4__(v54, 22));
      v61 = a2[13];
      v62 = v53 + v61 + (v57 ^ v60 ^ v58);
      LODWORD(v60) = v57;
      v63 = v60 >> 22;
      HIDWORD(v60) = v62;
      LODWORD(v60) = v62;
      v64 = (v60 >> 25) + v56;
      v65 = a2[14];
      v66 = a2[15];
      LODWORD(v60) = v56 + v65 + (v58 ^ __ROR4__(v57, 22) ^ v64);
      HIDWORD(v60) = v60;
      v67 = v60 >> 23;
      HIDWORD(v60) = v58;
      LODWORD(v60) = v58;
      v68 = v60 >> 22;
      v69 = v67 + v59;
      LODWORD(v60) = v59 + v66 + (v64 ^ __ROR4__(v58, 22) ^ v69);
      HIDWORD(v60) = v60;
      v70 = (v60 >> 24) + v63;
      HIDWORD(v60) = v64;
      LODWORD(v60) = v64;
      v71 = v60 >> 22;
      HIDWORD(v60) = v35 + 1518500249 + v63 + (v69 & v70 | v71 & ~v70);
      LODWORD(v60) = HIDWORD(v60);
      v72 = (v60 >> 25) + v68;
      HIDWORD(v60) = v69;
      LODWORD(v60) = v69;
      v73 = v60 >> 22;
      HIDWORD(v60) = v25 + 1518500249 + v68 + (v70 & v72 | v73 & ~v72);
      LODWORD(v60) = HIDWORD(v60);
      v74 = (v60 >> 26) + v71;
      HIDWORD(v60) = v70;
      LODWORD(v60) = v70;
      v75 = v60 >> 22;
      HIDWORD(v60) = v61 + 1518500249 + v71 + (v72 & v74 | v75 & ~v74);
      LODWORD(v60) = HIDWORD(v60);
      v76 = (v60 >> 24) + v73;
      HIDWORD(v60) = v72;
      LODWORD(v60) = v72;
      v77 = v60 >> 22;
      v615 = v8;
      HIDWORD(v60) = v8 + 1518500249 + v73 + (v74 & v76 | v77 & ~v76);
      LODWORD(v60) = HIDWORD(v60);
      v78 = (v60 >> 19) + v75;
      HIDWORD(v60) = v74;
      LODWORD(v60) = v74;
      v79 = v60 >> 22;
      v611 = v50;
      HIDWORD(v60) = v50 + 1518500249 + v75 + (v76 & v78 | v79 & ~v78);
      LODWORD(v60) = HIDWORD(v60);
      v80 = (v60 >> 21) + v77;
      HIDWORD(v60) = v76;
      LODWORD(v60) = v76;
      v81 = v60 >> 22;
      v621 = v18;
      HIDWORD(v60) = v34 + 1518500249 + v77 + (v78 & v80 | v81 & ~v80);
      LODWORD(v60) = HIDWORD(v60);
      v82 = (v60 >> 23) + v79;
      HIDWORD(v60) = v78;
      LODWORD(v60) = v78;
      v83 = v60 >> 22;
      HIDWORD(v60) = v66 + 1518500249 + v79 + (v80 & v82 | v83 & ~v82);
      LODWORD(v60) = HIDWORD(v60);
      v84 = (v60 >> 25) + v81;
      HIDWORD(v60) = v80;
      LODWORD(v60) = v80;
      v85 = v60 >> 22;
      v86 = v18;
      HIDWORD(v60) = v18 + 1518500249 + v81 + (v82 & v84 | v85 & ~v84);
      LODWORD(v60) = HIDWORD(v60);
      v87 = (v60 >> 17) + v83;
      HIDWORD(v60) = v82;
      LODWORD(v60) = v82;
      v88 = v60 >> 22;
      HIDWORD(v60) = v610 + 1518500249 + v83 + (v84 & v87 | v88 & ~v87);
      LODWORD(v60) = HIDWORD(v60);
      v89 = (v60 >> 25) + v85;
      HIDWORD(v60) = v84;
      LODWORD(v60) = v84;
      v90 = v60 >> 22;
      HIDWORD(v60) = v9 + 1518500249 + v85 + (v87 & v89 | v90 & ~v89);
      LODWORD(v60) = HIDWORD(v60);
      v91 = (v60 >> 20) + v88;
      HIDWORD(v60) = v87;
      LODWORD(v60) = v87;
      v92 = v60 >> 22;
      HIDWORD(v60) = v42 + 1518500249 + v88 + (v89 & v91 | v92 & ~v91);
      LODWORD(v60) = HIDWORD(v60);
      v93 = (v60 >> 17) + v90;
      HIDWORD(v60) = v89;
      LODWORD(v60) = v89;
      v94 = v60 >> 22;
      HIDWORD(v60) = v30 + 1518500249 + v90 + (v91 & v93 | v94 & ~v93);
      LODWORD(v60) = HIDWORD(v60);
      v95 = (v60 >> 23) + v92;
      HIDWORD(v60) = v91;
      LODWORD(v60) = v91;
      v96 = v60 >> 22;
      v97 = v19;
      HIDWORD(v60) = v19 + 1518500249 + v92 + (v93 & v95 | v96 & ~v95);
      LODWORD(v60) = HIDWORD(v60);
      v98 = (v60 >> 21) + v94;
      HIDWORD(v60) = v93;
      LODWORD(v60) = v93;
      v99 = v60 >> 22;
      v100 = v65 + 1518500249 + v94 + (v95 & v98 | v99 & ~v98);
      HIDWORD(v60) = v95;
      LODWORD(v60) = v95;
      v101 = v60 >> 22;
      HIDWORD(v60) = v100;
      LODWORD(v60) = v100;
      v102 = (v60 >> 25) + v96;
      HIDWORD(v60) = v51 + 1518500249 + v96 + (v98 & v102 | v101 & ~v102);
      LODWORD(v60) = HIDWORD(v60);
      v103 = v60 >> 19;
      HIDWORD(v60) = v98;
      LODWORD(v60) = v98;
      v104 = v60 >> 22;
      v105 = v103 + v99;
      v616 = v41;
      HIDWORD(v60) = v41 + 1518500249 + v99 + (v102 & v105 | v104 & ~v105);
      LODWORD(v60) = HIDWORD(v60);
      v106 = (v60 >> 20) + v101;
      HIDWORD(v60) = v102;
      LODWORD(v60) = v102;
      v107 = v60 >> 22;
      LODWORD(v60) = v86 + 1859775393 + v101 + ((v106 | ~v105) ^ __ROR4__(v102, 22));
      HIDWORD(v60) = v60;
      v108 = (v60 >> 21) + v104;
      HIDWORD(v60) = v105;
      LODWORD(v60) = v105;
      v109 = v60 >> 22;
      v110 = __PAIR64__(v106, __ROR4__(v105, 22));
      v111 = v50 + 1859775393 + v104 + ((v108 | ~v106) ^ v110);
      LODWORD(v110) = v106;
      v112 = v110 >> 22;
      HIDWORD(v110) = v111;
      LODWORD(v110) = v111;
      v113 = (v110 >> 19) + v107;
      v613 = v65;
      LODWORD(v110) = v65 + 1859775393 + v107 + ((v113 | ~v108) ^ __ROR4__(v106, 22));
      HIDWORD(v110) = v110;
      v114 = (v110 >> 26) + v109;
      HIDWORD(v110) = v108;
      LODWORD(v110) = v108;
      v115 = v110 >> 22;
      v116 = v25;
      LODWORD(v110) = v25 + 1859775393 + v109 + ((v114 | ~v113) ^ __ROR4__(v108, 22));
      HIDWORD(v110) = v110;
      v117 = (v110 >> 25) + v112;
      HIDWORD(v110) = v113;
      LODWORD(v110) = v113;
      v118 = v110 >> 22;
      v119 = __PAIR64__(v114, __ROR4__(v113, 22));
      v120 = v42 + 1859775393 + v112 + ((v117 | ~v114) ^ v119);
      LODWORD(v119) = v114;
      v121 = v119 >> 22;
      HIDWORD(v119) = v120;
      LODWORD(v119) = v120;
      v122 = (v119 >> 18) + v115;
      LODWORD(v119) = v66 + 1859775393 + v115 + ((v122 | ~v117) ^ __ROR4__(v114, 22));
      HIDWORD(v119) = v119;
      v123 = (v119 >> 23) + v118;
      HIDWORD(v119) = v117;
      LODWORD(v119) = v117;
      v124 = v119 >> 22;
      LODWORD(v119) = v41 + 1859775393 + v118 + ((v123 | ~v122) ^ __ROR4__(v117, 22));
      HIDWORD(v119) = v119;
      v125 = (v119 >> 19) + v121;
      HIDWORD(v119) = v122;
      LODWORD(v119) = v122;
      v126 = v119 >> 22;
      v127 = __PAIR64__(v123, __ROR4__(v122, 22));
      v128 = v8 + 1859775393 + v121 + ((v125 | ~v123) ^ v127);
      LODWORD(v127) = v123;
      v129 = v127 >> 22;
      HIDWORD(v127) = v128;
      LODWORD(v127) = v128;
      v130 = (v127 >> 17) + v124;
      v131 = v97;
      v609 = v97;
      LODWORD(v127) = v97 + 1859775393 + v124 + ((v130 | ~v125) ^ __ROR4__(v123, 22));
      HIDWORD(v127) = v127;
      v132 = (v127 >> 18) + v126;
      HIDWORD(v127) = v125;
      LODWORD(v127) = v125;
      v133 = v127 >> 22;
      LODWORD(v127) = v35 + 1859775393 + v126 + ((v132 | ~v130) ^ __ROR4__(v125, 22));
      HIDWORD(v127) = v127;
      v134 = (v127 >> 24) + v129;
      HIDWORD(v127) = v130;
      LODWORD(v127) = v130;
      v135 = v127 >> 22;
      v136 = __PAIR64__(v132, __ROR4__(v130, 22));
      v137 = v9 + 1859775393 + v129 + ((v134 | ~v132) ^ v136);
      LODWORD(v136) = v132;
      v138 = v136 >> 22;
      HIDWORD(v136) = v137;
      LODWORD(v136) = v137;
      v139 = (v136 >> 19) + v133;
      LODWORD(v136) = v34 + 1859775393 + v133 + ((v139 | ~v134) ^ __ROR4__(v132, 22));
      HIDWORD(v136) = v136;
      v140 = (v136 >> 26) + v135;
      HIDWORD(v136) = v134;
      LODWORD(v136) = v134;
      v141 = v136 >> 22;
      LODWORD(v136) = v61 + 1859775393 + v135 + ((v140 | ~v139) ^ __ROR4__(v134, 22));
      HIDWORD(v136) = v136;
      v142 = (v136 >> 27) + v138;
      LODWORD(v136) = v51 + 1859775393 + v138 + ((v142 | ~v140) ^ __ROR4__(v139, 22));
      HIDWORD(v136) = v136;
      v143 = v136 >> 20;
      HIDWORD(v136) = v620 + 1352829926 + ((v618 | ~v6) ^ v4) + v30;
      LODWORD(v136) = HIDWORD(v136);
      v144 = v143 + v141;
      v145 = (v136 >> 24) + v619;
      LODWORD(v136) = v619 + 1352829926 + v613 + (v145 ^ (v4 | ~__ROR4__(v618, 22)));
      HIDWORD(v136) = v136;
      v146 = (v136 >> 23) + v6;
      v147 = v6 + 1352829926 + v35 + (v146 ^ (v145 | ~__ROR4__(v4, 22)));
      v148 = __PAIR64__(v147, __ROR4__(v140, 22));
      v149 = v30 + 1859775393 + v141 + ((v144 | ~v142) ^ v148);
      LODWORD(v148) = v147;
      v150 = (v148 >> 23) + v13;
      LODWORD(v148) = v13 + 1352829926 + v9 + (v150 ^ (v146 | ~__ROR4__(v145, 22)));
      HIDWORD(v148) = v148;
      v151 = (v148 >> 21) + v16;
      v152 = __PAIR64__(v139, __ROR4__(v146, 22));
      v153 = v16 + 1352829926 + v42 + (v151 ^ (v150 | ~v152));
      LODWORD(v152) = v139;
      v154 = v152 >> 22;
      HIDWORD(v152) = v145;
      LODWORD(v152) = v145;
      v155 = v152 >> 22;
      HIDWORD(v152) = v153;
      LODWORD(v152) = v153;
      v156 = (v152 >> 19) + v155;
      HIDWORD(v152) = v149;
      LODWORD(v152) = v149;
      v157 = v610 + 1859775393 + v154;
      v158 = (v152 >> 25) + v154;
      v159 = v131 + 1352829926 + v155 + (v156 ^ (v151 | ~__ROR4__(v150, 22)));
      v160 = __PAIR64__(v146, __ROR4__(v142, 22));
      v161 = v157 + ((v158 | ~v144) ^ v160);
      LODWORD(v160) = v146;
      v162 = v160 >> 22;
      HIDWORD(v160) = v159;
      LODWORD(v160) = v159;
      v163 = (v160 >> 17) + v162;
      v164 = __PAIR64__(v140, __ROR4__(v151, 22));
      v165 = v51 + 1352829926 + v162 + (v163 ^ (v156 | ~v164));
      LODWORD(v164) = v140;
      v166 = v164 >> 22;
      HIDWORD(v164) = v150;
      LODWORD(v164) = v150;
      v167 = v164 >> 22;
      HIDWORD(v164) = v165;
      LODWORD(v164) = v165;
      v168 = (v164 >> 17) + v167;
      HIDWORD(v164) = v161;
      LODWORD(v164) = v161;
      v169 = v615 - 1894007588 + v166;
      v170 = (v164 >> 27) + v166;
      v171 = v25 + 1352829926 + v167 + (v168 ^ (v163 | ~__ROR4__(v156, 22)));
      v172 = __PAIR64__(v151, __ROR4__(v144, 22));
      v173 = v170 & v172 | v158 & ~__ROR4__(v144, 22);
      LODWORD(v172) = v151;
      v174 = v172 >> 22;
      HIDWORD(v172) = v171;
      LODWORD(v172) = v171;
      v175 = (v172 >> 27) + v174;
      v176 = __PAIR64__(v156, __ROR4__(v163, 22));
      v177 = v61 + 1352829926 + v174 + (v175 ^ (v168 | ~v176));
      LODWORD(v176) = v156;
      v178 = v176 >> 22;
      HIDWORD(v176) = v177;
      LODWORD(v176) = v177;
      v179 = (v176 >> 25) + v178;
      v180 = __PAIR64__(v163, __ROR4__(v168, 22));
      v181 = v34 + 1352829926 + v178 + (v179 ^ (v175 | ~v180));
      LODWORD(v180) = v163;
      v182 = v180 >> 22;
      HIDWORD(v180) = v181;
      LODWORD(v180) = v181;
      v183 = v169 + v173;
      v184 = (v180 >> 25) + v182;
      v185 = v41;
      v186 = __PAIR64__(v142, __ROR4__(v175, 22));
      v187 = v66 + 1352829926 + v182 + (v184 ^ (v179 | ~v186));
      LODWORD(v186) = v142;
      v188 = v186 >> 22;
      HIDWORD(v186) = v183;
      LODWORD(v186) = v183;
      v189 = (v186 >> 21) + v188;
      HIDWORD(v186) = v168;
      LODWORD(v186) = v168;
      v190 = v186 >> 22;
      HIDWORD(v186) = v187;
      LODWORD(v186) = v187;
      v191 = (v186 >> 24) + v190;
      v192 = __PAIR64__(v175, __ROR4__(v179, 22));
      v193 = v41 + 1352829926 + v190 + (v191 ^ (v184 | ~v192));
      LODWORD(v192) = v175;
      v194 = v192 >> 22;
      HIDWORD(v192) = v193;
      LODWORD(v192) = v193;
      v195 = (v192 >> 21) + v194;
      v196 = __PAIR64__(v179, __ROR4__(v184, 22));
      v197 = v615 + 1352829926 + v194 + (v195 ^ (v191 | ~v196));
      LODWORD(v196) = v179;
      v198 = v196 >> 22;
      HIDWORD(v196) = v197;
      LODWORD(v196) = v197;
      v199 = (v196 >> 18) + v198;
      v200 = __PAIR64__(v184, __ROR4__(v191, 22));
      v201 = v611 + 1352829926 + v198 + (v199 ^ (v195 | ~v200));
      LODWORD(v200) = v184;
      v202 = v200 >> 22;
      HIDWORD(v200) = v201;
      LODWORD(v200) = v201;
      v203 = (v200 >> 18) + v202;
      v204 = __PAIR64__(v144, __ROR4__(v195, 22));
      v205 = v621 + 1352829926 + v202 + (v203 ^ (v199 | ~v204));
      LODWORD(v204) = v144;
      v206 = v204 >> 22;
      HIDWORD(v204) = v191;
      LODWORD(v204) = v191;
      v207 = v204 >> 22;
      HIDWORD(v204) = v205;
      LODWORD(v204) = v205;
      v208 = (v204 >> 20) + v207;
      HIDWORD(v204) = v42 - 1894007588 + v188 + (v189 & __ROR4__(v158, 22) | v170 & ~__ROR4__(v158, 22));
      LODWORD(v204) = HIDWORD(v204);
      v209 = v51 - 1894007588 + v206;
      v210 = (v204 >> 20) + v206;
      v211 = v610 + 1352829926 + v207 + (v208 ^ (v203 | ~__ROR4__(v199, 22)));
      v212 = __PAIR64__(v195, __ROR4__(v170, 22));
      v213 = v210 & v212 | v189 & ~__ROR4__(v170, 22);
      LODWORD(v212) = v195;
      v214 = v212 >> 22;
      HIDWORD(v212) = v211;
      LODWORD(v212) = v211;
      v215 = (v212 >> 26) + v214;
      v216 = __PAIR64__(v199, __ROR4__(v203, 22));
      v217 = v34 + 1548603684 + v214 + (v215 & __ROR4__(v203, 22) | v208 & ~v216);
      v218 = v209 + v213;
      LODWORD(v216) = v199;
      v219 = v216 >> 22;
      HIDWORD(v216) = v217;
      LODWORD(v216) = v217;
      v220 = (v216 >> 23) + v219;
      v221 = __PAIR64__(v158, __ROR4__(v208, 22));
      v222 = v220 & v221 | v215 & ~__ROR4__(v208, 22);
      LODWORD(v221) = v158;
      v223 = v221 >> 22;
      HIDWORD(v221) = v218;
      LODWORD(v221) = v218;
      v224 = (v221 >> 18) + v223;
      v225 = __PAIR64__(v203, __ROR4__(v189, 22));
      v226 = v224 & v225 | v210 & ~__ROR4__(v189, 22);
      v227 = v51 + 1548603684 + v219 + v222;
      LODWORD(v225) = v203;
      v228 = v225 >> 22;
      HIDWORD(v225) = v227;
      LODWORD(v225) = v227;
      v229 = v611 - 1894007588 + v223;
      v230 = (v225 >> 19) + v228;
      v231 = __PAIR64__(v208, __ROR4__(v215, 22));
      v232 = v230 & v231 | v220 & ~__ROR4__(v215, 22);
      v233 = v229 + v226;
      LODWORD(v231) = v208;
      v234 = v231 >> 22;
      HIDWORD(v231) = v170;
      LODWORD(v231) = v170;
      v235 = v231 >> 22;
      HIDWORD(v231) = v621 + 1548603684 + v228 + v232;
      LODWORD(v231) = HIDWORD(v231);
      v236 = (v231 >> 17) + v234;
      v237 = __PAIR64__(v233, __ROR4__(v220, 22));
      v238 = v236 & v237 | v230 & ~__ROR4__(v220, 22);
      LODWORD(v237) = v233;
      v614 = v9;
      v239 = v9 - 1894007588 + v235;
      v240 = (v237 >> 17) + v235;
      v241 = v35 + 1548603684 + v234 + v238;
      v242 = __PAIR64__(v215, __ROR4__(v210, 22));
      v243 = v240 & __ROR4__(v210, 22) | v224 & ~v242;
      LODWORD(v242) = v215;
      v244 = v242 >> 22;
      HIDWORD(v242) = v241;
      LODWORD(v242) = v241;
      v245 = (v242 >> 25) + v244;
      v246 = __PAIR64__(v220, __ROR4__(v230, 22));
      v247 = v9 + 1548603684 + v244 + (v245 & v246 | v236 & ~__ROR4__(v230, 22));
      v248 = v239 + v243;
      LODWORD(v246) = v220;
      v249 = v246 >> 22;
      HIDWORD(v246) = v247;
      LODWORD(v246) = v247;
      v250 = (v246 >> 20) + v249;
      v251 = __PAIR64__(v189, __ROR4__(v236, 22));
      v252 = v250 & v251 | v245 & ~__ROR4__(v236, 22);
      LODWORD(v251) = v189;
      v253 = v251 >> 22;
      HIDWORD(v251) = v248;
      LODWORD(v251) = v248;
      v254 = (v251 >> 18) + v253;
      v255 = __PAIR64__(v230, __ROR4__(v224, 22));
      v256 = v254 & v255 | v240 & ~__ROR4__(v224, 22);
      v257 = v61 + 1548603684 + v249 + v252;
      LODWORD(v255) = v230;
      v258 = v255 >> 22;
      HIDWORD(v255) = v257;
      LODWORD(v255) = v257;
      v259 = (v255 >> 24) + v258;
      v260 = __PAIR64__(v236, __ROR4__(v245, 22));
      v261 = v259 & __ROR4__(v245, 22) | v250 & ~v260;
      v262 = v185 - 1894007588 + v253 + v256;
      LODWORD(v260) = v236;
      v263 = v260 >> 22;
      HIDWORD(v260) = v210;
      LODWORD(v260) = v210;
      v264 = v260 >> 22;
      HIDWORD(v260) = v30 + 1548603684 + v258 + v261;
      LODWORD(v260) = HIDWORD(v260);
      v265 = (v260 >> 23) + v263;
      v266 = __PAIR64__(v262, __ROR4__(v250, 22));
      v267 = v265 & v266 | v259 & ~__ROR4__(v250, 22);
      LODWORD(v266) = v262;
      v268 = v610 - 1894007588 + v264;
      v269 = (v266 >> 17) + v264;
      v270 = v611 + 1548603684 + v263 + v267;
      v271 = __PAIR64__(v245, __ROR4__(v240, 22));
      v272 = v269 & v271 | v254 & ~__ROR4__(v240, 22);
      LODWORD(v271) = v245;
      v273 = v271 >> 22;
      HIDWORD(v271) = v270;
      LODWORD(v271) = v270;
      v274 = (v271 >> 21) + v273;
      v275 = __PAIR64__(v250, __ROR4__(v259, 22));
      v276 = v613 + 1548603684 + v273 + (v274 & v275 | v265 & ~__ROR4__(v259, 22));
      v277 = v268 + v272;
      LODWORD(v275) = v250;
      v278 = v275 >> 22;
      HIDWORD(v275) = v276;
      LODWORD(v275) = v276;
      v279 = (v275 >> 25) + v278;
      v280 = __PAIR64__(v224, __ROR4__(v265, 22));
      v281 = v279 & __ROR4__(v265, 22) | v274 & ~v280;
      LODWORD(v280) = v224;
      v282 = v280 >> 22;
      HIDWORD(v280) = v277;
      LODWORD(v280) = v277;
      v283 = (v280 >> 23) + v282;
      v284 = __PAIR64__(v259, __ROR4__(v254, 22));
      v285 = v283 & __ROR4__(v254, 22) | v269 & ~v284;
      v286 = v66 + 1548603684 + v278 + v281;
      LODWORD(v284) = v259;
      v287 = v284 >> 22;
      HIDWORD(v284) = v286;
      LODWORD(v284) = v286;
      v288 = (v284 >> 25) + v287;
      v289 = __PAIR64__(v265, __ROR4__(v274, 22));
      v290 = v288 & v289 | v279 & ~__ROR4__(v274, 22);
      v291 = v25 - 1894007588 + v282 + v285;
      LODWORD(v289) = v265;
      v292 = v289 >> 22;
      HIDWORD(v289) = v240;
      LODWORD(v289) = v240;
      v293 = v289 >> 22;
      HIDWORD(v289) = v185 + 1548603684 + v287 + v290;
      LODWORD(v289) = HIDWORD(v289);
      v294 = (v289 >> 20) + v292;
      v295 = __PAIR64__(v291, __ROR4__(v279, 22));
      v296 = v294 & v295 | v288 & ~__ROR4__(v279, 22);
      LODWORD(v295) = v291;
      v297 = v61;
      v298 = v61 - 1894007588 + v293;
      v299 = (v295 >> 24) + v293;
      v300 = v610 + 1548603684 + v292 + v296;
      v301 = __PAIR64__(v274, __ROR4__(v269, 22));
      v302 = v299 & v301 | v283 & ~__ROR4__(v269, 22);
      LODWORD(v301) = v274;
      v303 = v301 >> 22;
      HIDWORD(v301) = v300;
      LODWORD(v301) = v300;
      v304 = (v301 >> 25) + v303;
      v305 = __PAIR64__(v279, __ROR4__(v288, 22));
      v306 = v116 + 1548603684 + v303 + (v304 & __ROR4__(v288, 22) | v294 & ~v305);
      LODWORD(v305) = v279;
      v307 = v305 >> 22;
      HIDWORD(v305) = v306;
      LODWORD(v305) = v306;
      v308 = (v305 >> 26) + v307;
      v309 = __PAIR64__(v254, __ROR4__(v294, 22));
      v310 = v308 & v309 | v304 & ~__ROR4__(v294, 22);
      LODWORD(v309) = v254;
      v311 = v309 >> 22;
      HIDWORD(v309) = v298 + v302;
      LODWORD(v309) = v298 + v302;
      v312 = (v309 >> 23) + v311;
      v313 = __PAIR64__(v288, __ROR4__(v283, 22));
      v314 = v312 & v313 | v299 & ~__ROR4__(v283, 22);
      LODWORD(v313) = v288;
      v315 = v313 >> 22;
      HIDWORD(v313) = v42 + 1548603684 + v307 + v310;
      LODWORD(v313) = HIDWORD(v313);
      v316 = v621 - 1894007588 + v311;
      v317 = (v313 >> 17) + v315;
      v318 = __PAIR64__(v294, __ROR4__(v304, 22));
      v319 = v317 & v318 | v308 & ~__ROR4__(v304, 22);
      v320 = v316 + v314;
      LODWORD(v318) = v294;
      v321 = v318 >> 22;
      HIDWORD(v318) = v269;
      LODWORD(v318) = v269;
      v322 = v318 >> 22;
      HIDWORD(v318) = v615 + 1548603684 + v315 + v319;
      LODWORD(v318) = HIDWORD(v318);
      v323 = (v318 >> 19) + v321;
      v324 = __PAIR64__(v320, __ROR4__(v308, 22));
      v325 = v323 & v324 | v317 & ~__ROR4__(v308, 22);
      LODWORD(v324) = v320;
      v607 = v35;
      v326 = v35 - 1894007588 + v322;
      v327 = (v324 >> 18) + v322;
      v328 = v609 + 1548603684 + v321 + v325;
      v329 = __PAIR64__(v304, __ROR4__(v299, 22));
      v330 = v327 & __ROR4__(v299, 22) | v312 & ~v329;
      LODWORD(v329) = v304;
      v331 = v329 >> 22;
      HIDWORD(v329) = v328;
      LODWORD(v329) = v328;
      v332 = (v329 >> 21) + v331;
      v333 = __PAIR64__(v308, __ROR4__(v317, 22));
      v334 = v66 + 1836072691 + v331 + ((v332 | ~v323) ^ v333);
      LODWORD(v333) = v308;
      v335 = v333 >> 22;
      HIDWORD(v333) = v334;
      LODWORD(v333) = v334;
      v336 = (v333 >> 23) + v335;
      v337 = __PAIR64__(v317, __ROR4__(v323, 22));
      v338 = v30 + 1836072691 + v335 + ((v336 | ~v332) ^ v337);
      LODWORD(v337) = v317;
      v339 = v337 >> 22;
      HIDWORD(v337) = v338;
      LODWORD(v337) = v338;
      v340 = v326 + v330;
      v341 = (v337 >> 25) + v339;
      v342 = __PAIR64__(v283, __ROR4__(v332, 22));
      v343 = v615 + 1836072691 + v339 + ((v341 | ~v336) ^ v342);
      LODWORD(v342) = v283;
      v344 = v342 >> 22;
      HIDWORD(v342) = v340;
      LODWORD(v342) = v340;
      v345 = (v342 >> 27) + v344;
      HIDWORD(v342) = v323;
      LODWORD(v342) = v323;
      v346 = v342 >> 22;
      HIDWORD(v342) = v343;
      LODWORD(v342) = v343;
      v347 = (v342 >> 17) + v346;
      v348 = __PAIR64__(v332, __ROR4__(v336, 22));
      v349 = v621 + 1836072691 + v346 + ((v347 | ~v341) ^ v348);
      LODWORD(v348) = v332;
      v350 = v348 >> 22;
      HIDWORD(v348) = v349;
      LODWORD(v348) = v349;
      v351 = (v348 >> 21) + v350;
      v352 = __PAIR64__(v336, __ROR4__(v341, 22));
      v353 = v35 + 1836072691 + v350 + ((v351 | ~v347) ^ v352);
      LODWORD(v352) = v336;
      v354 = v352 >> 22;
      HIDWORD(v352) = v353;
      LODWORD(v352) = v353;
      v355 = (v352 >> 24) + v354;
      v356 = __PAIR64__(v341, __ROR4__(v347, 22));
      v357 = v613 + 1836072691 + v354 + ((v355 | ~v351) ^ v356);
      LODWORD(v356) = v341;
      v358 = v356 >> 22;
      HIDWORD(v356) = v357;
      LODWORD(v356) = v357;
      v359 = (v356 >> 26) + v358;
      v360 = __PAIR64__(v299, __ROR4__(v351, 22));
      v361 = v34 + 1836072691 + v358 + ((v359 | ~v355) ^ v360);
      LODWORD(v360) = v299;
      v362 = v360 >> 22;
      HIDWORD(v360) = v347;
      LODWORD(v360) = v347;
      v363 = v360 >> 22;
      HIDWORD(v360) = v361;
      LODWORD(v360) = v361;
      v364 = (v360 >> 26) + v363;
      HIDWORD(v360) = v66 - 1894007588 + v344 + (v345 & __ROR4__(v312, 22) | v327 & ~__ROR4__(v312, 22));
      LODWORD(v360) = HIDWORD(v360);
      v365 = v613 - 1894007588 + v362;
      v366 = (v360 >> 26) + v362;
      v367 = __PAIR64__(v351, __ROR4__(v327, 22));
      v368 = v366 & v367 | v345 & ~__ROR4__(v327, 22);
      LODWORD(v367) = v351;
      v369 = v367 >> 22;
      HIDWORD(v367) = v42 + 1836072691 + v363 + ((v364 | ~v359) ^ __ROR4__(v355, 22));
      LODWORD(v367) = HIDWORD(v367);
      v370 = (v367 >> 18) + v369;
      v371 = __PAIR64__(v355, __ROR4__(v359, 22));
      v372 = v51 + 1836072691 + v369 + ((v370 | ~v364) ^ v371);
      LODWORD(v371) = v355;
      v373 = v371 >> 22;
      HIDWORD(v371) = v372;
      LODWORD(v371) = v372;
      v374 = (v371 >> 20) + v373;
      v375 = __PAIR64__(v359, __ROR4__(v364, 22));
      v376 = v185 + 1836072691 + v373 + ((v374 | ~v370) ^ v375);
      LODWORD(v375) = v359;
      v377 = v375 >> 22;
      HIDWORD(v375) = v376;
      LODWORD(v375) = v376;
      v378 = v365 + v368;
      v379 = (v375 >> 19) + v377;
      v380 = __PAIR64__(v312, __ROR4__(v370, 22));
      v381 = v610 + 1836072691 + v377 + ((v379 | ~v374) ^ v380);
      LODWORD(v380) = v312;
      v382 = v380 >> 22;
      HIDWORD(v380) = v378;
      LODWORD(v380) = v378;
      v383 = (v380 >> 24) + v382;
      HIDWORD(v380) = v364;
      LODWORD(v380) = v364;
      v384 = v380 >> 22;
      HIDWORD(v380) = v381;
      LODWORD(v380) = v381;
      v385 = v380 >> 27;
      v386 = v385 + v384;
      v387 = __PAIR64__(v370, __ROR4__(v374, 22));
      v388 = v609 + 1836072691 + v384 + (((v385 + v384) | ~v379) ^ v387);
      LODWORD(v387) = v370;
      v389 = v387 >> 22;
      HIDWORD(v387) = v388;
      LODWORD(v387) = v388;
      v390 = v30 - 1894007588 + v382;
      v391 = (v387 >> 18) + v389;
      v392 = __PAIR64__(v374, __ROR4__(v379, 22));
      v393 = v611 + 1836072691 + v389 + ((v391 | ~v386) ^ v392);
      LODWORD(v392) = v374;
      v394 = v392 >> 22;
      HIDWORD(v392) = v393;
      LODWORD(v392) = v393;
      v395 = (v392 >> 19) + v394;
      v396 = __PAIR64__(v379, __ROR4__(v386, 22));
      v397 = v614 + 1836072691 + v394 + ((v395 | ~v391) ^ v396);
      v398 = v390 + (v383 & __ROR4__(v345, 22) | v366 & ~__ROR4__(v345, 22));
      LODWORD(v396) = v379;
      v399 = v396 >> 22;
      HIDWORD(v396) = v397;
      LODWORD(v396) = v397;
      v400 = (v396 >> 19) + v399;
      v608 = v116;
      v401 = __PAIR64__(v327, __ROR4__(v391, 22));
      v402 = v116 + 1836072691 + v399 + ((v400 | ~v395) ^ v401);
      LODWORD(v401) = v327;
      v403 = v401 >> 22;
      HIDWORD(v401) = v386;
      LODWORD(v401) = v386;
      v404 = v401 >> 22;
      HIDWORD(v401) = v402;
      LODWORD(v401) = v402;
      v405 = (v401 >> 25) + v404;
      HIDWORD(v401) = v398;
      LODWORD(v401) = v398;
      v406 = v34 - 1894007588 + v403;
      v407 = (v401 >> 26) + v403;
      v408 = v61 + 1836072691 + v404 + ((v405 | ~v400) ^ __ROR4__(v395, 22));
      v409 = __PAIR64__(v391, __ROR4__(v366, 22));
      v410 = v407 & v409 | v383 & ~__ROR4__(v366, 22);
      LODWORD(v409) = v391;
      v411 = v409 >> 22;
      HIDWORD(v409) = v408;
      LODWORD(v409) = v408;
      v412 = v409 >> 27;
      HIDWORD(v409) = v345;
      LODWORD(v409) = v345;
      v413 = v409 >> 22;
      v414 = v406 + v410;
      v415 = v412 + v411;
      HIDWORD(v409) = v400;
      LODWORD(v409) = v400;
      v416 = v409 >> 22;
      v417 = v405 & (v412 + v411) | v416 & ~(v412 + v411);
      HIDWORD(v409) = v414;
      LODWORD(v409) = v414;
      v418 = v609 - 1894007588 + v413;
      v419 = (v409 >> 27) + v413;
      v420 = v185 + 2053994217 + v411 + v417;
      v421 = __PAIR64__(v395, __ROR4__(v383, 22));
      v422 = v419 & v421 | v407 & ~__ROR4__(v383, 22);
      LODWORD(v421) = v395;
      v423 = v421 >> 22;
      HIDWORD(v421) = v420;
      LODWORD(v421) = v420;
      v424 = v421 >> 17;
      HIDWORD(v421) = v366;
      LODWORD(v421) = v366;
      v425 = v421 >> 22;
      v426 = v418 + v422;
      v427 = v424 + v423;
      HIDWORD(v421) = v405;
      LODWORD(v421) = v405;
      v428 = v421 >> 22;
      HIDWORD(v421) = v426;
      LODWORD(v421) = v426;
      v429 = v116 - 1454113458 + v425;
      v430 = (v421 >> 20) + v425;
      v431 = v34 + 2053994217 + v423 + (v415 & (v424 + v423) | v428 & ~(v424 + v423));
      v432 = __PAIR64__(v431, __ROR4__(v407, 22));
      v433 = v429 + (v430 ^ (v419 | ~v432));
      LODWORD(v432) = v431;
      v434 = (v432 >> 27) + v416;
      HIDWORD(v432) = v415;
      LODWORD(v432) = v415;
      v435 = v432 >> 22;
      HIDWORD(v432) = v383;
      LODWORD(v432) = v383;
      v436 = v432 >> 22;
      HIDWORD(v432) = v433;
      LODWORD(v432) = v433;
      v437 = v614 - 1454113458 + v436;
      v438 = (v432 >> 23) + v436;
      HIDWORD(v432) = v407;
      LODWORD(v432) = v407;
      v439 = v432 >> 22;
      HIDWORD(v432) = v116 + 2053994217 + v416 + (v427 & v434 | v435 & ~v434);
      LODWORD(v432) = HIDWORD(v432);
      v440 = v432 >> 24;
      v441 = __PAIR64__(v427, __ROR4__(v419, 22));
      v442 = v437 + (v438 ^ (v430 | ~v441));
      v443 = v440 + v428;
      LODWORD(v441) = v427;
      v444 = v441 >> 22;
      HIDWORD(v441) = v442;
      LODWORD(v441) = v442;
      v445 = v30 - 1454113458 + v439;
      v446 = (v441 >> 17) + v439;
      HIDWORD(v441) = v615 + 2053994217 + v428 + (v434 & v443 | v444 & ~v443);
      LODWORD(v441) = HIDWORD(v441);
      v447 = (v441 >> 21) + v435;
      HIDWORD(v441) = v434;
      LODWORD(v441) = v434;
      v448 = v441 >> 22;
      HIDWORD(v441) = v419;
      LODWORD(v441) = v419;
      v449 = v441 >> 22;
      HIDWORD(v441) = v445 + (v446 ^ (v438 | ~__ROR4__(v430, 22)));
      LODWORD(v441) = HIDWORD(v441);
      v450 = v42 - 1454113458 + v449;
      v451 = (v441 >> 27) + v449;
      HIDWORD(v441) = v430;
      LODWORD(v441) = v430;
      v452 = v441 >> 22;
      HIDWORD(v441) = v621 + 2053994217 + v435 + (v443 & v447 | v448 & ~v447);
      LODWORD(v441) = HIDWORD(v441);
      v453 = v441 >> 18;
      v454 = __PAIR64__(v443, __ROR4__(v438, 22));
      v455 = v450 + (v451 ^ (v446 | ~v454));
      v456 = v453 + v444;
      LODWORD(v454) = v443;
      v457 = v454 >> 22;
      HIDWORD(v454) = v455;
      LODWORD(v454) = v455;
      v458 = v35 - 1454113458 + v452;
      v459 = (v454 >> 21) + v452;
      HIDWORD(v454) = v51 + 2053994217 + v444 + (v447 & v456 | v457 & ~v456);
      LODWORD(v454) = HIDWORD(v454);
      v460 = (v454 >> 18) + v448;
      HIDWORD(v454) = v447;
      LODWORD(v454) = v447;
      v461 = v454 >> 22;
      HIDWORD(v454) = v438;
      LODWORD(v454) = v438;
      v462 = v454 >> 22;
      HIDWORD(v454) = v458 + (v459 ^ (v451 | ~__ROR4__(v446, 22)));
      LODWORD(v454) = HIDWORD(v454);
      v463 = v610 - 1454113458 + v462;
      v464 = (v454 >> 26) + v462;
      HIDWORD(v454) = v446;
      LODWORD(v454) = v446;
      v465 = v454 >> 22;
      HIDWORD(v454) = v66 + 2053994217 + v448 + (v456 & v460 | v461 & ~v460);
      LODWORD(v454) = HIDWORD(v454);
      v466 = v454 >> 26;
      v467 = __PAIR64__(v456, __ROR4__(v451, 22));
      v468 = v463 + (v464 ^ (v459 | ~v467));
      v469 = v466 + v457;
      LODWORD(v467) = v456;
      v470 = v467 >> 22;
      HIDWORD(v467) = v468;
      LODWORD(v467) = v468;
      v471 = v609 - 1454113458 + v465;
      v472 = (v467 >> 24) + v465;
      v473 = v614 + 2053994217 + v457 + (v460 & v469 | v470 & ~v469);
      v474 = __PAIR64__(v473, __ROR4__(v459, 22));
      v475 = v471 + (v472 ^ (v464 | ~v474));
      LODWORD(v474) = v473;
      v476 = (v474 >> 18) + v461;
      HIDWORD(v474) = v460;
      LODWORD(v474) = v460;
      v477 = v474 >> 22;
      HIDWORD(v474) = v451;
      LODWORD(v474) = v451;
      v478 = v474 >> 22;
      HIDWORD(v474) = v475;
      LODWORD(v474) = v475;
      v479 = v611 - 1454113458 + v478;
      v480 = (v474 >> 19) + v478;
      HIDWORD(v474) = v459;
      LODWORD(v474) = v459;
      v481 = v474 >> 22;
      HIDWORD(v474) = v30 + 2053994217 + v461 + (v469 & v476 | v477 & ~v476);
      LODWORD(v474) = HIDWORD(v474);
      v482 = v474 >> 26;
      v483 = __PAIR64__(v469, __ROR4__(v464, 22));
      v484 = v479 + (v480 ^ (v472 | ~v483));
      v485 = v482 + v470;
      LODWORD(v483) = v469;
      v486 = v483 >> 22;
      HIDWORD(v483) = v484;
      LODWORD(v483) = v484;
      v487 = v613 - 1454113458 + v481;
      v488 = (v483 >> 20) + v481;
      v489 = v610 + 2053994217 + v470 + (v476 & v485 | v486 & ~v485);
      v490 = __PAIR64__(v489, __ROR4__(v472, 22));
      v491 = v487 + (v488 ^ (v480 | ~v490));
      LODWORD(v490) = v489;
      v492 = (v490 >> 23) + v477;
      HIDWORD(v490) = v476;
      LODWORD(v490) = v476;
      v493 = v490 >> 22;
      HIDWORD(v490) = v464;
      LODWORD(v490) = v464;
      v494 = v490 >> 22;
      HIDWORD(v490) = v491;
      LODWORD(v490) = v491;
      v495 = v615 - 1454113458 + v494;
      v496 = (v490 >> 27) + v494;
      HIDWORD(v490) = v472;
      LODWORD(v490) = v472;
      v497 = v490 >> 22;
      HIDWORD(v490) = v609 + 2053994217 + v477 + (v485 & v492 | v493 & ~v492);
      LODWORD(v490) = HIDWORD(v490);
      v498 = v490 >> 20;
      v499 = __PAIR64__(v485, __ROR4__(v480, 22));
      v500 = v495 + (v496 ^ (v488 | ~v499));
      v501 = v498 + v486;
      LODWORD(v499) = v485;
      v502 = v499 >> 22;
      HIDWORD(v499) = v500;
      LODWORD(v499) = v500;
      v503 = v621 - 1454113458 + v497;
      v504 = (v499 >> 20) + v497;
      v505 = v61 + 2053994217 + v486 + (v492 & v501 | v502 & ~v501);
      v506 = __PAIR64__(v505, __ROR4__(v488, 22));
      v507 = v503 + (v504 ^ (v496 | ~v506));
      LODWORD(v506) = v505;
      v508 = (v506 >> 23) + v493;
      HIDWORD(v506) = v492;
      LODWORD(v506) = v492;
      v509 = v506 >> 22;
      HIDWORD(v506) = v480;
      LODWORD(v506) = v480;
      v510 = v506 >> 22;
      HIDWORD(v506) = v507;
      LODWORD(v506) = v507;
      v511 = v616 - 1454113458 + v510;
      v512 = (v506 >> 19) + v510;
      HIDWORD(v506) = v488;
      LODWORD(v506) = v488;
      v513 = v506 >> 22;
      HIDWORD(v506) = v42 + 2053994217 + v493 + (v501 & v508 | v509 & ~v508);
      LODWORD(v506) = HIDWORD(v506);
      v514 = v506 >> 20;
      v515 = __PAIR64__(v501, __ROR4__(v496, 22));
      v516 = v511 + (v512 ^ (v504 | ~v515));
      v517 = v514 + v502;
      LODWORD(v515) = v501;
      v518 = v515 >> 22;
      HIDWORD(v515) = v516;
      LODWORD(v515) = v516;
      v519 = (v515 >> 18) + v513;
      HIDWORD(v515) = v607 + 2053994217 + v502 + (v508 & v517 | v518 & ~v517);
      LODWORD(v515) = HIDWORD(v515);
      v520 = (v515 >> 27) + v509;
      HIDWORD(v515) = v508;
      LODWORD(v515) = v508;
      v521 = v515 >> 22;
      HIDWORD(v515) = v496;
      LODWORD(v515) = v496;
      v522 = v515 >> 22;
      v523 = v611 + 2053994217 + v509 + (v517 & v520 | v521 & ~v520);
      HIDWORD(v515) = v51 - 1454113458 + v513 + (v519 ^ (v512 | ~__ROR4__(v504, 22)));
      LODWORD(v515) = HIDWORD(v515);
      v524 = v34 - 1454113458 + v522;
      v525 = (v515 >> 21) + v522;
      HIDWORD(v515) = v504;
      LODWORD(v515) = v504;
      v526 = v515 >> 22;
      HIDWORD(v515) = v523;
      LODWORD(v515) = v523;
      v527 = v515 >> 17;
      v528 = __PAIR64__(v517, __ROR4__(v512, 22));
      v529 = v524 + (v525 ^ (v519 | ~v528));
      v530 = v527 + v518;
      LODWORD(v528) = v517;
      v531 = v528 >> 22;
      v532 = v520 & (v527 + v518) | v531 & ~(v527 + v518);
      HIDWORD(v528) = v529;
      LODWORD(v528) = v529;
      v533 = v66 - 1454113458 + v526;
      v534 = (v528 >> 24) + v526;
      HIDWORD(v528) = v613 + 2053994217 + v518 + v532;
      LODWORD(v528) = HIDWORD(v528);
      v535 = (v528 >> 24) + v521;
      LODWORD(v528) = v521 + v610 + (v530 ^ __ROR4__(v520, 22) ^ v535);
      HIDWORD(v528) = v528;
      v536 = (v528 >> 24) + v531;
      v537 = __PAIR64__(v520, __ROR4__(v530, 22));
      v538 = v535 ^ v537 ^ v536;
      LODWORD(v537) = v520;
      v539 = v537 >> 22;
      HIDWORD(v537) = v531 + v66 + v538;
      LODWORD(v537) = HIDWORD(v537);
      v540 = (v537 >> 27) + v539;
      v541 = __PAIR64__(v530, __ROR4__(v535, 22));
      v542 = v539 + v611 + (v536 ^ v541 ^ v540);
      LODWORD(v541) = v530;
      v543 = v541 >> 22;
      HIDWORD(v541) = v542;
      LODWORD(v541) = v542;
      v544 = (v541 >> 20) + v543;
      v545 = __PAIR64__(v535, __ROR4__(v536, 22));
      v546 = v540 ^ v545 ^ v544;
      LODWORD(v545) = v535;
      v547 = v545 >> 22;
      HIDWORD(v545) = v543 + v608 + v546;
      LODWORD(v545) = HIDWORD(v545);
      v548 = (v545 >> 23) + v547;
      v549 = __PAIR64__(v536, __ROR4__(v540, 22));
      v550 = v547 + v615 + (v544 ^ v549 ^ v548);
      LODWORD(v549) = v536;
      v551 = v549 >> 22;
      HIDWORD(v549) = v550;
      LODWORD(v549) = v550;
      v552 = (v549 >> 20) + v551;
      v553 = __PAIR64__(v540, __ROR4__(v544, 22));
      v554 = v548 ^ v553 ^ v552;
      LODWORD(v553) = v540;
      v555 = v553 >> 22;
      HIDWORD(v553) = v551 + v30 + v554;
      LODWORD(v553) = HIDWORD(v553);
      v556 = (v553 >> 27) + v555;
      v557 = __PAIR64__(v544, __ROR4__(v548, 22));
      v558 = v555 + v616 + (v552 ^ v557 ^ v556);
      LODWORD(v557) = v544;
      v559 = v557 >> 22;
      HIDWORD(v557) = v558;
      LODWORD(v557) = v558;
      v560 = (v557 >> 18) + v559;
      v561 = __PAIR64__(v548, __ROR4__(v552, 22));
      v562 = v556 ^ v561 ^ v560;
      LODWORD(v561) = v548;
      v563 = v561 >> 22;
      HIDWORD(v561) = v559 + v607 + v562;
      LODWORD(v561) = HIDWORD(v561);
      v564 = (v561 >> 26) + v563;
      v565 = __PAIR64__(v552, __ROR4__(v556, 22));
      v566 = v563 + v34 + (v560 ^ v565 ^ v564);
      LODWORD(v565) = v552;
      v567 = v565 >> 22;
      HIDWORD(v565) = v566;
      LODWORD(v565) = v566;
      v568 = (v565 >> 24) + v567;
      v569 = __PAIR64__(v556, __ROR4__(v519, 22));
      v570 = v534 ^ (v525 | ~v569);
      LODWORD(v569) = v556;
      v571 = v569 >> 22;
      HIDWORD(v569) = v567 + v609 + (v564 ^ __ROR4__(v560, 22) ^ v568);
      LODWORD(v569) = HIDWORD(v569);
      v572 = v533 + v570;
      v573 = (v569 >> 19) + v571;
      v574 = __PAIR64__(v560, __ROR4__(v564, 22));
      v575 = v568 ^ v574 ^ v573;
      LODWORD(v574) = v560;
      v576 = v574 >> 22;
      HIDWORD(v574) = v571 + v297 + v575;
      LODWORD(v574) = HIDWORD(v574);
      v577 = (v574 >> 26) + v576;
      v578 = __PAIR64__(v564, __ROR4__(v568, 22));
      v579 = v576 + v613 + (v573 ^ v578 ^ v577);
      LODWORD(v578) = v564;
      v580 = v578 >> 22;
      HIDWORD(v578) = v579;
      LODWORD(v578) = v579;
      v581 = (v578 >> 27) + v580;
      v582 = __PAIR64__(v568, __ROR4__(v573, 22));
      v583 = v577 ^ v582 ^ v581;
      LODWORD(v582) = v568;
      v584 = v582 >> 22;
      HIDWORD(v582) = v580 + v614 + v583;
      LODWORD(v582) = HIDWORD(v582);
      result = ((v582 >> 17) + v584);
      v585 = __PAIR64__(v573, __ROR4__(v577, 22));
      v586 = v584 + v621 + (v581 ^ v585 ^ result);
      LODWORD(v585) = v573;
      v587 = v585 >> 22;
      HIDWORD(v585) = v586;
      LODWORD(v585) = v586;
      v588 = (v585 >> 19) + v587;
      v589 = __PAIR64__(v512, __ROR4__(v581, 22));
      v590 = result ^ v589 ^ v588;
      LODWORD(v589) = v512;
      v591 = v589 >> 22;
      v592 = v587 + v42 + v590;
      HIDWORD(v589) = v572;
      LODWORD(v589) = v572;
      v593 = v297 - 1454113458 + v591;
      v594 = (v589 >> 27) + v591;
      v596 = __PAIR64__(v577, __ROR4__(v525, 22));
      v595 = v534 | ~v596;
      LODWORD(v596) = v577;
      v597 = v596 >> 22;
      HIDWORD(v596) = v592;
      LODWORD(v596) = v592;
      v598 = v593 + (v594 ^ v595);
      v599 = (v596 >> 21) + v597;
      v600 = __PAIR64__(v588, __ROR4__(result, 22));
      v601 = v597 + v51 + (v588 ^ v600 ^ v599);
      LODWORD(v600) = v588;
      v3 = v594 + v4 + (v600 >> 22);
      HIDWORD(v600) = result;
      LODWORD(v600) = result;
      v602 = v618 + (v600 >> 22);
      HIDWORD(v600) = v534;
      LODWORD(v600) = v534;
      v4 = (v600 >> 22) + v602;
      HIDWORD(v600) = v525;
      LODWORD(v600) = v525;
      v603 = v600 >> 22;
      HIDWORD(v600) = v581;
      LODWORD(v600) = v581;
      v604 = v600 >> 22;
      v5 = v603 + v6 + v604;
      HIDWORD(v600) = v519;
      LODWORD(v600) = v519;
      v605 = v600 >> 22;
      HIDWORD(v600) = v601;
      LODWORD(v600) = v601;
      v6 = v605 + v619 + v604 + (v600 >> 21);
      HIDWORD(v600) = v598;
      LODWORD(v600) = v598;
      v7 = v605 + v620 + v599 + (v600 >> 26);
      v606[2] = v5;
      v606[3] = v6;
      v606[4] = v7;
      *v606 = v3;
      v606[1] = v4;
      a2 = v617 + 16;
      a3 = v612 - 1;
    }

    while (v612 != 1);
  }

  return result;
}

int RIPEMD160_Final(unsigned __int8 *md, RIPEMD160_CTX *c)
{
  data = c->data;
  num = c->num;
  *(c->data + num) = 0x80;
  v6 = num + 1;
  if (num >= 0x38)
  {
    bzero(data + v6, 63 - num);
    ripemd160_block_data_order(c, data, 1);
    v6 = 0;
  }

  bzero(data + v6, 56 - v6);
  Nh = c->Nh;
  c->data[14] = c->Nl;
  c->data[15] = Nh;
  ripemd160_block_data_order(c, data, 1);
  c->num = 0;
  *data = 0u;
  *(data + 1) = 0u;
  *(data + 2) = 0u;
  *(data + 3) = 0u;
  *md = c->A;
  *(md + 1) = c->B;
  *(md + 2) = c->C;
  *(md + 3) = c->D;
  *(md + 4) = c->E;
  return 1;
}

int RIPEMD160_Init(RIPEMD160_CTX *c)
{
  *&c->data[9] = 0u;
  *&c->data[13] = 0u;
  *&c->data[1] = 0u;
  *&c->data[5] = 0u;
  *&c->A = xmmword_23E23D460;
  *&c->E = 0u;
  c->E = -1009589776;
  return 1;
}

uint64_t rsa_cb(int a1, RSA **a2)
{
  if (a1 == 2)
  {
    RSA_free(*a2);
    *a2 = 0;
    return 2;
  }

  else if (a1)
  {
    return 1;
  }

  else
  {
    v3 = RSA_new();
    *a2 = v3;
    return 2 * (v3 != 0);
  }
}

uint64_t rsa_pss_cb(int a1, uint64_t a2)
{
  if (a1 == 2)
  {
    X509_ALGOR_free(*(*a2 + 32));
  }

  return 1;
}

uint64_t rsa_oaep_cb(int a1, uint64_t a2)
{
  if (a1 == 2)
  {
    X509_ALGOR_free(*(*a2 + 24));
  }

  return 1;
}

uint64_t dsa_pub_decode(EVP_PKEY *a1, uint64_t a2)
{
  pp = 0;
  in = 0;
  ppval = 0;
  *pptype = 0;
  algor = 0;
  result = X509_PUBKEY_get0_param(0, &in, &pptype[1], &algor, a2);
  if (result)
  {
    X509_ALGOR_get0(0, pptype, &ppval, algor);
    if (pptype[0] == -1 || pptype[0] == 5)
    {
      v5 = DSA_new();
      if (v5)
      {
LABEL_11:
        v8 = d2i_ASN1_INTEGER(0, &in, pptype[1]);
        if (v8)
        {
          v9 = v8;
          v10 = ASN1_INTEGER_to_BN(v8, 0);
          v5->g = v10;
          if (v10)
          {
            if (pptype[0] != 16 || dsa_check_key(v5))
            {
              ASN1_INTEGER_free(v9);
              EVP_PKEY_assign(a1, 116, v5);
              return 1;
            }
          }

          else
          {
            ERR_put_error(10, 4095, 108, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dsa/dsa_ameth.c", 117);
          }

          ASN1_INTEGER_free(v9);
          goto LABEL_22;
        }

        v6 = 104;
        v7 = 112;
        goto LABEL_21;
      }

      v6 = 65;
      v7 = 103;
    }

    else
    {
      if (pptype[0] != 16)
      {
        ERR_put_error(10, 4095, 105, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dsa/dsa_ameth.c", 107);
        v5 = 0;
LABEL_22:
        DSA_free(v5);
        return 0;
      }

      pp = *(ppval + 1);
      v5 = d2i_DSAparams(0, &pp, *ppval);
      if (v5)
      {
        goto LABEL_11;
      }

      v6 = 104;
      v7 = 98;
    }

LABEL_21:
    ERR_put_error(10, 4095, v6, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dsa/dsa_ameth.c", v7);
    goto LABEL_22;
  }

  return result;
}

uint64_t dsa_pub_encode(uint64_t a1, uint64_t a2)
{
  out = 0;
  v3 = *(a2 + 32);
  if (*(a2 + 40) && *(v3 + 16) && *(v3 + 24) && *(v3 + 32))
  {
    v4 = ASN1_STRING_new();
    v5 = v4;
    if (!v4)
    {
      v13 = 151;
      goto LABEL_17;
    }

    v6 = i2d_DSAparams(v3, &v4->data);
    v5->length = v6;
    if (v6 <= 0)
    {
      v13 = 156;
      goto LABEL_17;
    }

    v7 = 16;
  }

  else
  {
    v5 = 0;
    v7 = -1;
  }

  v8 = BN_to_ASN1_INTEGER(*(v3 + 40), 0);
  if (!v8)
  {
    v13 = 163;
LABEL_17:
    ERR_put_error(10, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dsa/dsa_ameth.c", v13);
    goto LABEL_18;
  }

  v9 = v8;
  v10 = i2d_ASN1_INTEGER(v8, &out);
  ASN1_INTEGER_free(v9);
  if (v10 <= 0)
  {
    v13 = 171;
    goto LABEL_17;
  }

  v11 = OBJ_nid2obj(116);
  if (X509_PUBKEY_set0_param(a1, v11, v7, v5, out, v10))
  {
    return 1;
  }

LABEL_18:
  free(out);
  ASN1_STRING_free(v5);
  return 0;
}

uint64_t dsa_priv_decode(EVP_PKEY *a1, uint64_t a2)
{
  pp = 0;
  in = 0;
  ppval = 0;
  *pptype = 0;
  algor = 0;
  if (PKCS8_pkey_get0(0, &in, &pptype[1], &algor, a2))
  {
    X509_ALGOR_get0(0, pptype, &ppval, algor);
    if (pptype[0] == 16)
    {
      v3 = d2i_ASN1_INTEGER(0, &in, pptype[1]);
      v4 = v3;
      if (v3 && v3->type != 258)
      {
        pp = *(ppval + 1);
        v5 = d2i_DSAparams(0, &pp, *ppval);
        if (!v5)
        {
          v9 = 0;
          goto LABEL_16;
        }

        v6 = ASN1_INTEGER_to_BN(v4, 0);
        v5->pub_key = v6;
        if (v6)
        {
          if (!dsa_check_key(v5))
          {
LABEL_25:
            v9 = 0;
            goto LABEL_18;
          }

          v7 = BN_new();
          v5->g = v7;
          if (v7)
          {
            v8 = BN_CTX_new();
            v9 = v8;
            if (!v8)
            {
              v11 = 65;
              v12 = 236;
              goto LABEL_17;
            }

            BN_CTX_start(v8);
            if (!BN_mod_exp_ct(v5->g, v5->q, v5->pub_key, *&v5->write_params, v9))
            {
              v11 = 109;
              v12 = 243;
              goto LABEL_17;
            }

            if (EVP_PKEY_assign(a1, 116, v5))
            {
              v10 = 1;
LABEL_19:
              BN_CTX_end(v9);
              BN_CTX_free(v9);
              ASN1_INTEGER_free(v4);
              return v10;
            }

LABEL_16:
            v11 = 104;
            v12 = 254;
LABEL_17:
            ERR_put_error(10, 4095, v11, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dsa/dsa_ameth.c", v12);
LABEL_18:
            DSA_free(v5);
            v10 = 0;
            goto LABEL_19;
          }

          v14 = 65;
          v15 = 231;
        }

        else
        {
          v14 = 109;
          v15 = 221;
        }

        ERR_put_error(10, 4095, v14, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dsa/dsa_ameth.c", v15);
        goto LABEL_25;
      }
    }

    else
    {
      v4 = 0;
    }

    v9 = 0;
    v5 = 0;
    goto LABEL_16;
  }

  return 0;
}

uint64_t dsa_priv_encode(uint64_t a1, uint64_t a2)
{
  out = 0;
  v4 = ASN1_STRING_new();
  if (!v4)
  {
    v11 = 65;
    v12 = 275;
LABEL_9:
    ERR_put_error(10, 4095, v11, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dsa/dsa_ameth.c", v12);
    v13 = 0;
    goto LABEL_10;
  }

  v5 = i2d_DSAparams(*(a2 + 32), &v4->data);
  v4->length = v5;
  if (v5 <= 0)
  {
    v11 = 65;
    v12 = 281;
    goto LABEL_9;
  }

  v4->type = 16;
  v6 = BN_to_ASN1_INTEGER(*(*(a2 + 32) + 48), 0);
  if (!v6)
  {
    v11 = 109;
    v12 = 289;
    goto LABEL_9;
  }

  v7 = v6;
  v8 = i2d_ASN1_INTEGER(v6, &out);
  ASN1_INTEGER_free(v7);
  v9 = OBJ_nid2obj(116);
  if (PKCS8_pkey_set0(a1, v9, 0, 16, v4, out, v8))
  {
    return 1;
  }

  v13 = out;
LABEL_10:
  free(v13);
  ASN1_STRING_free(v4);
  ASN1_INTEGER_free(0);
  return 0;
}

uint64_t dsa_param_decode(EVP_PKEY *a1, const unsigned __int8 **a2, int a3)
{
  v4 = d2i_DSAparams(0, a2, a3);
  if (v4)
  {
    v5 = v4;
    if (dsa_check_key(v4))
    {
      EVP_PKEY_assign(a1, 116, v5);
      return 1;
    }

    DSA_free(v5);
  }

  else
  {
    ERR_put_error(10, 4095, 10, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dsa/dsa_ameth.c", 467);
  }

  return 0;
}

BIGNUM *dsa_copy_parameters(uint64_t a1, uint64_t a2)
{
  result = BN_dup(*(*(a2 + 32) + 16));
  if (result)
  {
    v5 = result;
    BN_free(*(*(a1 + 32) + 16));
    *(*(a1 + 32) + 16) = v5;
    result = BN_dup(*(*(a2 + 32) + 24));
    if (result)
    {
      v6 = result;
      BN_free(*(*(a1 + 32) + 24));
      *(*(a1 + 32) + 24) = v6;
      result = BN_dup(*(*(a2 + 32) + 32));
      if (result)
      {
        v7 = result;
        BN_free(*(*(a1 + 32) + 32));
        *(*(a1 + 32) + 32) = v7;
        return 1;
      }
    }
  }

  return result;
}

BOOL dsa_sig_print(BIO *bp, uint64_t a2, int *a3, int a4)
{
  if (!a3)
  {
    return BIO_puts(bp, "\n") > 0;
  }

  pp = *(a3 + 1);
  v7 = d2i_DSA_SIG(0, &pp, *a3);
  if (v7)
  {
    v8 = v7;
    r = v7->r;
    if (r)
    {
      v10 = BN_num_bits(r);
      v11 = v10 + 7;
      if (v10 < -7)
      {
        v11 = v10 + 14;
      }

      v12 = v11 >> 3;
      if ((v10 + 14) < 0xF)
      {
        v12 = 0;
      }

      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    s = v8->s;
    if (s)
    {
      v16 = BN_num_bits(s);
      v17 = v16 + 7;
      if (v16 < -7)
      {
        v17 = v16 + 14;
      }

      v18 = v17 >> 3;
      v19 = v17 >> 3;
      if (v13 <= v18)
      {
        v13 = v19;
      }
    }

    v20 = malloc_type_malloc(v13 + 10, 0xE97CF87uLL);
    if (v20)
    {
      if (BIO_write(bp, "\n", 1) == 1 && ASN1_bn_print(bp, "r:   ", v8->r, v20, a4))
      {
        v14 = ASN1_bn_print(bp, "s:   ", v8->s, v20, a4) != 0;
LABEL_23:
        free(v20);
        DSA_SIG_free(v8);
        return v14;
      }
    }

    else
    {
      ERR_put_error(10, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dsa/dsa_ameth.c", 604);
    }

    v14 = 0;
    goto LABEL_23;
  }

  return X509_signature_dump(bp, a3, a4);
}

uint64_t dsa_pkey_ctrl(unsigned int *a1, int a2, uint64_t a3, void *a4)
{
  result = 4294967294;
  if (a2 > 4)
  {
    if (a2 != 5)
    {
      if (a2 != 8)
      {
        return result;
      }

      *a4 = -1;
      return 1;
    }

    if (a3)
    {
      return 1;
    }

    v13 = 0;
    v11 = 0;
    v12 = 0;
    CMS_SignerInfo_get0_algs(a4, 0, 0, &v12, &v11);
LABEL_13:
    if (!v12)
    {
      return 0xFFFFFFFFLL;
    }

    if (!*v12)
    {
      return 0xFFFFFFFFLL;
    }

    v6 = OBJ_obj2nid(*v12);
    if (!v6)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = v6;
    v8 = EVP_PKEY_id(a1);
    if (!OBJ_find_sigid_by_algs(&v13, v7, v8))
    {
      return 0xFFFFFFFFLL;
    }

    v9 = v11;
    v10 = OBJ_nid2obj(v13);
    X509_ALGOR_set0(v9, v10, -1, 0);
    return 1;
  }

  if (a2 == 1)
  {
    if (a3)
    {
      return 1;
    }

    v13 = 0;
    v11 = 0;
    v12 = 0;
    PKCS7_SIGNER_INFO_get0_algs(a4, 0, &v12, &v11);
    goto LABEL_13;
  }

  if (a2 == 3)
  {
    *a4 = 64;
    return 2;
  }

  return result;
}

uint64_t old_dsa_priv_decode(EVP_PKEY *a1, const unsigned __int8 **a2, int a3)
{
  v4 = d2i_DSAPrivateKey(0, a2, a3);
  v5 = v4;
  if (!v4)
  {
    ERR_put_error(10, 4095, 10, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dsa/dsa_ameth.c", 510);
    goto LABEL_12;
  }

  if (!dsa_check_key(v4))
  {
LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  v6 = BN_CTX_new();
  v7 = v6;
  if (!v6)
  {
    goto LABEL_13;
  }

  BN_CTX_start(v6);
  v8 = BN_CTX_get(v7);
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v8;
  v10 = *&v5->write_params;
  v11 = BN_value_one();
  if (!BN_sub(v9, v10, v11) || !BN_mod_ct(v9, v9, v5->p, v7))
  {
    goto LABEL_13;
  }

  if (!BN_is_zero(v9))
  {
    v13 = 102;
    v14 = 535;
    goto LABEL_15;
  }

  if (!BN_mod_exp_ct(v9, v5->q, v5->p, *&v5->write_params, v7))
  {
LABEL_13:
    BN_CTX_end(v7);
    BN_CTX_free(v7);
    DSA_free(v5);
    return 0;
  }

  v12 = BN_value_one();
  if (BN_cmp(v9, v12))
  {
    v13 = 112;
    v14 = 548;
LABEL_15:
    ERR_put_error(10, 4095, v13, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dsa/dsa_ameth.c", v14);
    goto LABEL_13;
  }

  if (BN_is_prime_ex(v5->p, 0, v7, 0) <= 0)
  {
    v13 = 102;
    v14 = 557;
    goto LABEL_15;
  }

  BN_CTX_end(v7);
  BN_CTX_free(v7);
  EVP_PKEY_assign(a1, 116, v5);
  return 1;
}

BOOL do_dsa_print(BIO *a1, const BIGNUM **a2, int a3, int a4)
{
  if (a4 == 2)
  {
    v7 = a2[6];
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    if (a4 < 1)
    {
      goto LABEL_5;
    }
  }

  v9 = a2[5];
  v8 = v7;
LABEL_5:
  v10 = "DSA-Parameters";
  if (a4 == 1)
  {
    v10 = "Public-Key";
  }

  if (a4 == 2)
  {
    v11 = "Private-Key";
  }

  else
  {
    v11 = v10;
  }

  v12 = a2[2];
  if (v12)
  {
    v13 = BN_num_bits(v12);
    v14 = v13 + 7;
    if (v13 < -7)
    {
      v14 = v13 + 14;
    }

    v15 = v14 >> 3;
    if ((v13 + 14) < 0xF)
    {
      v15 = 0;
    }

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = a2[3];
  if (v17)
  {
    v18 = BN_num_bits(v17);
    v19 = v18 + 7;
    if (v18 < -7)
    {
      v19 = v18 + 14;
    }

    v20 = v19 >> 3;
    v21 = v19 >> 3;
    if (v16 <= v20)
    {
      v16 = v21;
    }
  }

  v22 = a2[4];
  if (v22)
  {
    v23 = BN_num_bits(v22);
    v24 = v23 + 7;
    if (v23 < -7)
    {
      v24 = v23 + 14;
    }

    v25 = v24 >> 3;
    v26 = v24 >> 3;
    if (v16 <= v25)
    {
      v16 = v26;
    }
  }

  if (v8)
  {
    v27 = BN_num_bits(v8);
    v28 = v27 + 7;
    if (v27 < -7)
    {
      v28 = v27 + 14;
    }

    v29 = v28 >> 3;
    v30 = v28 >> 3;
    if (v16 <= v29)
    {
      v16 = v30;
    }
  }

  if (v9)
  {
    v31 = BN_num_bits(v9);
    v32 = v31 + 7;
    if (v31 < -7)
    {
      v32 = v31 + 14;
    }

    v33 = v32 >> 3;
    v34 = v32 >> 3;
    if (v16 <= v33)
    {
      v16 = v34;
    }
  }

  v35 = malloc_type_malloc(v16 + 10, 0x2CE21C0FuLL);
  if (!v35)
  {
    ERR_put_error(10, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dsa/dsa_ameth.c", 433);
LABEL_47:
    v37 = 0;
    goto LABEL_48;
  }

  if (v8)
  {
    if (!BIO_indent(a1, a3, 128))
    {
      goto LABEL_47;
    }

    v36 = BN_num_bits(a2[2]);
    if (BIO_printf(a1, "%s: (%d bit)\n", v11, v36) < 1)
    {
      goto LABEL_47;
    }
  }

  if (!ASN1_bn_print(a1, "priv:", v8, v35, a3) || !ASN1_bn_print(a1, "pub: ", v9, v35, a3) || !ASN1_bn_print(a1, "P:   ", a2[2], v35, a3) || !ASN1_bn_print(a1, "Q:   ", a2[3], v35, a3))
  {
    goto LABEL_47;
  }

  v37 = ASN1_bn_print(a1, "G:   ", a2[4], v35, a3) != 0;
LABEL_48:
  free(v35);
  return v37;
}

BIO *__cdecl BIO_new_mem_buf(void *buf, int len)
{
  if (!buf)
  {
    v6 = 115;
    v7 = 128;
LABEL_9:
    ERR_put_error(32, 4095, v6, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bio/bss_mem.c", v7);
    return 0;
  }

  v2 = len;
  if (len != -1)
  {
    if ((len & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v2 = strlen(buf);
  if ((v2 & 0x80000000) != 0)
  {
LABEL_8:
    v6 = 125;
    v7 = 134;
    goto LABEL_9;
  }

LABEL_4:
  result = BIO_new(&mem_method);
  if (result)
  {
    method = result->next_bio->method;
    *&method->type = v2;
    method->name = buf;
    method->bwrite = v2;
    result->num |= 0x200u;
    LODWORD(result->ptr) = 0;
  }

  return result;
}

uint64_t mem_write(uint64_t a1, const void *a2, uint64_t a3)
{
  v6 = *(a1 + 56);
  BIO_clear_flags(a1, 15);
  v7 = 0;
  if (a2 && a3 >= 1)
  {
    if ((*(a1 + 41) & 2) != 0)
    {
      ERR_put_error(32, 4095, 126, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bio/bss_mem.c", 231);
      return 0xFFFFFFFFLL;
    }

    v8 = *v6;
    v9 = v6[1];
    if (v9 <= 0x1000)
    {
      v15 = *&v8->length;
    }

    else
    {
      if (*&v8->length >= v9)
      {
        v10 = *&v8->length - v9;
      }

      else
      {
        v10 = 0;
      }

      memmove(v8->data, &v8->data[v9], v10);
      v8 = *v6;
      v11 = v6[1];
      v12 = *&(*v6)->length;
      v13 = v12 >= v11;
      v14 = v12 - v11;
      if (v13)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      *&v8->length = v15;
      v6[1] = 0;
    }

    v17 = v15 + a3;
    v7 = 0xFFFFFFFFLL;
    if (!__CFADD__(v15, a3) && !(v17 >> 31))
    {
      if (v17 == BUF_MEM_grow_clean(v8, v15 + a3))
      {
        memcpy(&(*v6)->data[v15], a2, a3);
        return a3;
      }

      return 0xFFFFFFFFLL;
    }
  }

  return v7;
}

size_t mem_read(uint64_t a1, void *a2, size_t a3)
{
  v6 = *(a1 + 56);
  BIO_clear_flags(a1, 15);
  result = 0;
  if (a2 && a3 >= 1)
  {
    v8 = v6[1];
    v9 = **v6;
    v10 = v9 >= v8;
    v11 = v9 - v8;
    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v12 >= a3)
    {
      v12 = a3;
    }

    else
    {
      a3 = v12;
      if (!v12)
      {
        if (!*(a1 + 48))
        {
          return 0;
        }

        BIO_set_flags(a1, 9);
        return *(a1 + 48);
      }
    }

    memcpy(a2, ((*v6)[1] + v8), v12);
    v6[1] = (v6[1] + v12);
    return a3;
  }

  return result;
}

uint64_t mem_puts(uint64_t a1, char *__s)
{
  v4 = strlen(__s);

  return mem_write(a1, __s, v4);
}

size_t mem_gets(BIO *a1, _BYTE *a2, int a3)
{
  next_bio = a1->next_bio;
  BIO_clear_flags(a1, 15);
  callback = next_bio->callback;
  v8 = *&next_bio->method->type;
  v9 = v8 >= callback;
  v10 = v8 - callback;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 >= a3)
  {
    v11 = (a3 - 1);
  }

  else
  {
    v11 = v10;
  }

  if (v11 < 1)
  {
    result = 0;
LABEL_15:
    *a2 = 0;
    return result;
  }

  v12 = 0;
  v13 = &next_bio->method->name[callback];
  while (v13[v12] != 10)
  {
    if (v11 == ++v12)
    {
      goto LABEL_13;
    }
  }

  v11 = (v12 + 1);
LABEL_13:
  result = mem_read(a1, a2, v11);
  if (result >= 1)
  {
    a2 += result;
    goto LABEL_15;
  }

  return result;
}

uint64_t mem_ctrl(uint64_t a1, int a2, int a3, unint64_t *a4)
{
  result = 0;
  v8 = *(a1 + 56);
  if (a2 > 10)
  {
    if (a2 > 114)
    {
      if (a2 == 115)
      {
        if (a4)
        {
          *a4 = *v8;
        }
      }

      else
      {
        if (a2 != 130)
        {
          return result;
        }

        *(a1 + 48) = a3;
      }
    }

    else if ((a2 - 11) >= 2)
    {
      if (a2 == 114)
      {
        BUF_MEM_free(*v8);
        *(a1 + 36) = a3;
        result = 1;
        *v8 = a4;
        v8[1] = 0;
      }

      return result;
    }

    return 1;
  }

  if (a2 > 7)
  {
    if (a2 == 8)
    {
      return *(a1 + 36);
    }

    if (a2 != 9)
    {
      goto LABEL_14;
    }

    *(a1 + 36) = a3;
    return 1;
  }

  switch(a2)
  {
    case 1:
      v13 = (*v8)[1];
      if (v13)
      {
        if ((*(a1 + 41) & 2) == 0)
        {
          bzero(v13, (*v8)[2]);
          **v8 = 0;
        }

        v8[1] = 0;
      }

      return 1;
    case 2:
      return **v8 <= v8[1];
    case 3:
      if (a4)
      {
        v9 = v8[1];
        *a4 = v9 + (*v8)[1];
        goto LABEL_15;
      }

LABEL_14:
      v9 = v8[1];
LABEL_15:
      v10 = **v8;
      v11 = v10 >= v9;
      v12 = v10 - v9;
      if (v11)
      {
        return v12;
      }

      else
      {
        return 0;
      }
  }

  return result;
}

uint64_t mem_new(uint64_t a1)
{
  result = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040EDED9539uLL);
  if (result)
  {
    v3 = result;
    v4 = BUF_MEM_new();
    *v3 = v4;
    if (v4)
    {
      *(a1 + 32) = 0x100000001;
      *(a1 + 48) = -1;
      *(a1 + 56) = v3;
      return 1;
    }

    else
    {
      free(v3);
      return 0;
    }
  }

  return result;
}

uint64_t mem_free(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 32))
    {
      v2 = *(result + 56);
      if (v2)
      {
        if (*(result + 36))
        {
          v3 = *v2;
          if ((*(v1 + 41) & 2) != 0)
          {
            v3->data = 0;
          }

          BUF_MEM_free(v3);
        }

        free(v2);
        *(v1 + 56) = 0;
      }
    }

    return 1;
  }

  return result;
}

void ERR_load_EVP_strings(void)
{
  if (!ERR_func_error_string(EVP_str_functs))
  {
    ERR_load_strings(0, &EVP_str_functs);

    ERR_load_strings(0, &EVP_str_reasons);
  }
}

uint64_t md5_sha1_init(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = MD5_Init(v1);
  if (result)
  {
    return SHA1_Init((v1 + 92)) != 0;
  }

  return result;
}

uint64_t md5_sha1_update(uint64_t a1, const void *a2, size_t a3)
{
  v5 = *(a1 + 24);
  result = MD5_Update(v5, a2, a3);
  if (result)
  {
    return SHA1_Update((v5 + 92), a2, a3) != 0;
  }

  return result;
}

uint64_t md5_sha1_final(uint64_t a1, unsigned __int8 *md)
{
  v3 = *(a1 + 24);
  result = MD5_Final(md, v3);
  if (result)
  {
    return SHA1_Final(md + 16, (v3 + 92)) != 0;
  }

  return result;
}

uint64_t CMS_RecipientInfo_kari_get0_alg(uint64_t a1, void *a2, void *a3)
{
  if (*a1 == 1)
  {
    if (a2)
    {
      *a2 = *(*(a1 + 8) + 24);
    }

    if (a3)
    {
      *a3 = *(*(a1 + 8) + 16);
    }

    return 1;
  }

  else
  {
    ERR_put_error(46, 4095, 181, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_kari.c", 74);
    return 0;
  }
}

uint64_t CMS_RecipientInfo_kari_get0_reks(uint64_t a1)
{
  if (*a1 == 1)
  {
    return *(*(a1 + 8) + 32);
  }

  ERR_put_error(46, 4095, 181, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_kari.c", 91);
  return 0;
}

uint64_t CMS_RecipientInfo_kari_get0_orig_id(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  if (*a1 != 1)
  {
    ERR_put_error(46, 4095, 181, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_kari.c", 105);
    return 0;
  }

  v6 = *(*(a1 + 8) + 8);
  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  v7 = *v6;
  if (*v6 == 2)
  {
    if (a2)
    {
      *a2 = **(v6 + 1);
    }

    if (a3)
    {
      *a3 = *(*(v6 + 1) + 8);
    }

    return 1;
  }

  if (v7 == 1)
  {
    if (a4)
    {
      *a4 = *(v6 + 1);
    }

    return 1;
  }

  if (!v7)
  {
    if (a5)
    {
      *a5 = **(v6 + 1);
    }

    if (a6)
    {
      *a6 = *(*(v6 + 1) + 8);
    }

    return 1;
  }

  return 0;
}

uint64_t CMS_RecipientInfo_kari_orig_id_cmp(uint64_t a1, X509 *a2)
{
  if (*a1 == 1)
  {
    v3 = *(*(a1 + 8) + 8);
    if (*v3 == 1)
    {
      v6 = *(v3 + 8);

      return cms_keyid_cert_cmp(v6, a2);
    }

    else if (*v3)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      v4 = *(v3 + 8);

      return cms_ias_cert_cmp(v4, a2);
    }
  }

  else
  {
    ERR_put_error(46, 4095, 181, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_kari.c", 144);
    return 4294967294;
  }
}

uint64_t CMS_RecipientEncryptedKey_get0_id(int **a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v6 = *a1;
  v7 = **a1;
  if (v7 == 1)
  {
    if (a2)
    {
      *a2 = **(v6 + 1);
    }

    if (a3)
    {
      *a3 = *(*(v6 + 1) + 8);
    }

    if (a4)
    {
      *a4 = *(*(v6 + 1) + 16);
    }

    if (a5)
    {
      *a5 = 0;
    }

    a4 = a6;
    if (!a6)
    {
      return 1;
    }

LABEL_12:
    *a4 = 0;
    return 1;
  }

  if (!v7)
  {
    if (a5)
    {
      *a5 = **(v6 + 1);
    }

    if (a6)
    {
      *a6 = *(*(v6 + 1) + 8);
    }

    if (a2)
    {
      *a2 = 0;
    }

    if (a3)
    {
      *a3 = 0;
    }

    if (!a4)
    {
      return 1;
    }

    goto LABEL_12;
  }

  return 0;
}

uint64_t CMS_RecipientEncryptedKey_cert_cmp(ASN1_OCTET_STRING ****a1, X509 *a2)
{
  v2 = *a1;
  v3 = **a1;
  if (v3 == 1)
  {
    return cms_keyid_cert_cmp(*v2[1], a2);
  }

  if (v3)
  {
    return 0xFFFFFFFFLL;
  }

  return cms_ias_cert_cmp(v2[1], a2);
}

uint64_t CMS_RecipientInfo_kari_set0_pkey(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  EVP_PKEY_CTX_free(*(v3 + 40));
  *(v3 + 40) = 0;
  if (!a2)
  {
    return 1;
  }

  v4 = EVP_PKEY_CTX_new(a2, 0);
  v5 = v4;
  if (v4 && EVP_PKEY_derive_init(v4))
  {
    *(v3 + 40) = v5;
    return 1;
  }

  EVP_PKEY_CTX_free(v5);
  return 0;
}

uint64_t CMS_RecipientInfo_kari_get0_ctx(uint64_t a1)
{
  if (*a1 == 1)
  {
    return *(*(a1 + 8) + 48);
  }

  else
  {
    return 0;
  }
}

uint64_t CMS_RecipientInfo_kari_decrypt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v5 = *(a3 + 8);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (cms_env_asn1_ctrl(a2))
  {
    v13 = 0;
    if (cms_kek_cipher(&v14, &v13, v7, v6, *(a2 + 8), 0))
    {
      v8 = *(*(a1 + 8) + 24);
      freezero(*(v8 + 32), *(v8 + 40));
      v9 = 0;
      v10 = v13;
      *(v8 + 32) = v14;
      *(v8 + 40) = v10;
      v11 = 1;
    }

    else
    {
      v11 = 0;
      v9 = v14;
    }
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  free(v9);
  return v11;
}

uint64_t cms_kek_cipher(unsigned __int8 **a1, void *a2, const unsigned __int8 *a3, int a4, uint64_t a5, int a6)
{
  v19 = *MEMORY[0x277D85DE8];
  v12 = EVP_CIPHER_CTX_key_length(*(a5 + 48));
  v17 = v12;
  if (v12 <= 0x40)
  {
    outl = 0;
    if (EVP_PKEY_derive(*(a5 + 40), key, &v17) >= 1)
    {
      if (EVP_CipherInit_ex(*(a5 + 48), 0, 0, key, 0, a6))
      {
        if (EVP_CipherUpdate(*(a5 + 48), 0, &outl, a3, a4))
        {
          v13 = malloc_type_malloc(outl, 0x2A25E136uLL);
          if (v13)
          {
            if (EVP_CipherUpdate(*(a5 + 48), v13, &outl, a3, a4))
            {
              *a1 = v13;
              *a2 = outl;
              explicit_bzero(key, v17);
            }
          }
        }
      }
    }

    explicit_bzero(key, v17);
  }

  v14 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t cms_RecipientInfo_kari_init(uint64_t a1, X509 *a2, uint64_t a3, int a4)
{
  result = ASN1_item_new(&CMS_KeyAgreeRecipientInfo_it);
  *(a1 + 8) = result;
  if (result)
  {
    v9 = result;
    *a1 = 1;
    *result = 3;
    result = ASN1_item_new(&CMS_RecipientEncryptedKey_it);
    if (result)
    {
      v10 = result;
      if (!sk_push(*(v9 + 32), result))
      {
        ASN1_item_free(v10, &CMS_RecipientEncryptedKey_it);
        return 0;
      }

      v11 = *v10;
      if ((a4 & 0x10000) == 0)
      {
        *v11 = 0;
        result = cms_set1_ias((v11 + 8), a2);
        if (!result)
        {
          return result;
        }

        goto LABEL_10;
      }

      *v11 = 1;
      *(*v10 + 8) = ASN1_item_new(&CMS_RecipientKeyIdentifier_it);
      result = *(*v10 + 8);
      if (result)
      {
        result = cms_set1_keyid(result, a2);
        if (result)
        {
LABEL_10:
          pkey = 0;
          v12 = EVP_PKEY_CTX_new(a3, 0);
          v13 = v12;
          if (v12)
          {
            if (EVP_PKEY_keygen_init(v12) >= 1 && EVP_PKEY_keygen(v13, &pkey) >= 1)
            {
              EVP_PKEY_CTX_free(v13);
              v14 = EVP_PKEY_CTX_new(pkey, 0);
              v13 = v14;
              if (v14)
              {
                if (EVP_PKEY_derive_init(v14) > 0)
                {
                  *(v9 + 40) = v13;
                  EVP_PKEY_free(pkey);
                  EVP_PKEY_up_ref(a3);
                  *(v10 + 16) = a3;
                  return 1;
                }
              }
            }
          }

          EVP_PKEY_CTX_free(v13);
          EVP_PKEY_free(pkey);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t cms_RecipientInfo_kari_encrypt(uint64_t a1, uint64_t a2)
{
  if (*a2 != 1)
  {
    ERR_put_error(46, 4095, 181, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_kari.c", 446);
    return 0;
  }

  v3 = *(a2 + 8);
  v4 = v3[4];
  v5 = *(*(a1 + 8) + 24);
  v6 = v3[6];
  v7 = EVP_CIPHER_key_length(*(v5 + 24));
  if (EVP_CIPHER_CTX_cipher(v6))
  {
    result = (EVP_CIPHER_CTX_flags(v6) & 0xF0007) == 65538;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    if (v7 > 16)
    {
      if (v7 > 0x18)
      {
        v9 = EVP_aes_256_wrap();
      }

      else
      {
        v9 = EVP_aes_192_wrap();
      }
    }

    else
    {
      v9 = EVP_aes_128_wrap();
    }

    result = EVP_EncryptInit_ex(v6, v9, 0, 0, 0);
    if (!result)
    {
      return result;
    }
  }

  v10 = v3[1];
  if (*v10 != -1 || (*v10 = 2, result = ASN1_item_new(&CMS_OriginatorPublicKey_it), (*(v10 + 8) = result) != 0))
  {
    result = cms_env_asn1_ctrl(a2);
    if (result)
    {
      if (sk_num(v4) < 1)
      {
        return 1;
      }

      v11 = 0;
      while (1)
      {
        *len = 0;
        data = 0;
        v12 = sk_value(v4, v11);
        if (EVP_PKEY_derive_set_peer(v3[5], *(v12 + 2)) < 1 || !cms_kek_cipher(&data, len, *(v5 + 32), *(v5 + 40), v3, 1))
        {
          break;
        }

        ASN1_STRING_set0(*(v12 + 1), data, len[0]);
        if (++v11 >= sk_num(v4))
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return result;
}

unint64_t *bn_sqr_comba4(unint64_t *result, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = *a2;
  v4 = v3 * v3;
  v5 = v3 * v2;
  v6 = (v5 << 32) + v4;
  v7 = (v4 | (v5 << 32)) & ~v6 | v4 & (v5 << 32);
  v8 = v6 | (v5 << 32);
  v9 = v6 & (v5 << 32);
  v10 = v6 + (v5 << 32);
  v11 = ((v5 >> 31) & 0x1FFFFFFFELL) + v2 * v2 + (v7 >> 63) + ((v8 & ~v10 | v9) >> 63);
  *result = v10;
  v12 = a2[1];
  v13 = HIDWORD(v12);
  LODWORD(v8) = v12;
  v14 = HIDWORD(*a2);
  v15 = *a2;
  v16 = v15 * v12;
  v17 = v15 * v13;
  v18 = HIDWORD(v17) + v14 * v13;
  v19 = v16 | (v17 << 32);
  v20 = v16 & (v17 << 32);
  v21 = (v17 << 32) + v15 * v8;
  v22 = v19 & ~v21 | v20;
  v23 = v14 * v8;
  v24 = v21 | (v23 << 32);
  v25 = v21 & (v23 << 32);
  v26 = v21 + (v23 << 32);
  v27 = v18 + HIDWORD(v23) + (v22 >> 63) + ((v24 & ~v26 | v25) >> 63);
  v28 = v11 | v26;
  v29 = v11 & v26;
  v30 = v11 + v26;
  v31 = v27 + ((v28 & ~v30 | v29) >> 63);
  v32 = v30 | v26;
  v33 = v30 & v26;
  v34 = v30 + v26;
  v35 = v27 + ((v32 & ~v34 | v33) >> 63);
  result[1] = v34;
  v36 = a2[1];
  v37 = HIDWORD(v36);
  v38 = v36 * HIDWORD(v36);
  v39 = (v38 << 32) + v36 * v36;
  v40 = ((v36 * v36) | (v38 << 32)) & ~v39 | (v36 * v36) & (v38 << 32);
  v41 = v39 | (v38 << 32);
  v42 = v39 & (v38 << 32);
  v43 = v39 + (v38 << 32);
  v44 = v35 + v31 + v43;
  v45 = ((v38 >> 31) & 0x1FFFFFFFELL) + v37 * v37 + (v40 >> 63) + ((v41 & ~v43 | v42) >> 63) + ((((v35 + v31) | v43) & ~v44 | (v35 + v31) & v43) >> 63);
  v46 = v45 + (((v35 | v31) & ~(v35 + v31) | v35 & v31) >> 63);
  v47 = v45 & ~v46;
  v48 = a2[2];
  v49 = HIDWORD(v48);
  LODWORD(v38) = v48;
  v50 = HIDWORD(*a2);
  LODWORD(v42) = *a2;
  v51 = v42 * v48;
  v52 = v42 * HIDWORD(v48);
  v53 = HIDWORD(v52) + v50 * v49;
  v54 = v51 | (v52 << 32);
  v55 = v51 & (v52 << 32);
  v56 = (v52 << 32) + v42 * v38;
  v57 = v54 & ~v56 | v55;
  v58 = v50 * v38;
  v59 = v56 | (v58 << 32);
  v60 = v56 & (v58 << 32);
  v61 = v56 + (v58 << 32);
  v62 = v53 + HIDWORD(v58) + (v57 >> 63) + ((v59 & ~v61 | v60) >> 63);
  v63 = v44 | v61;
  v64 = v44 & v61;
  v65 = v44 + v61;
  v66 = v62 + ((v63 & ~v65 | v64) >> 63);
  v67 = v66 | v46;
  v68 = v66 & v46;
  v69 = v66 + v46;
  v70 = ((v67 & ~v69 | v68) >> 63) + (v47 >> 63);
  v71 = v65 | v61;
  v72 = v65 & v61;
  v73 = v65 + v61;
  v74 = v62 + ((v71 & ~v73 | v72) >> 63);
  v75 = v74 | v69;
  v76 = v74 & v69;
  v77 = v74 + v69;
  v78 = v70 + ((v75 & ~v77 | v76) >> 63);
  result[2] = v73;
  v80 = a2[2];
  v79 = a2[3];
  v81 = HIDWORD(v79);
  LODWORD(v76) = v79;
  v82 = a2[1];
  v83 = HIDWORD(*a2);
  v84 = *a2;
  v85 = v84 * v79;
  v86 = v84 * v81;
  v87 = HIDWORD(v86) + v83 * v81;
  v88 = v85 | (v86 << 32);
  v89 = v85 & (v86 << 32);
  v90 = (v86 << 32) + v84 * v76;
  v91 = v88 & ~v90 | v89;
  v92 = v83 * v76;
  v93 = v90 | (v92 << 32);
  v94 = v90 & (v92 << 32);
  v95 = v90 + (v92 << 32);
  v96 = v87 + HIDWORD(v92) + (v91 >> 63) + ((v93 & ~v95 | v94) >> 63);
  v97 = v77 | v95;
  v98 = v77 & v95;
  v99 = v77 + v95;
  v100 = v96 + ((v97 & ~v99 | v98) >> 63);
  v101 = v78 + v100;
  v102 = v100 & ~v101;
  v103 = v99 | v95;
  v104 = v99 & v95;
  v105 = v99 + v95;
  v106 = v96 + ((v103 & ~v105 | v104) >> 63);
  v107 = v106 | v101;
  v108 = v106 & v101;
  v109 = v106 + v101;
  v110 = ((v107 & ~v109 | v108) >> 63) + (v102 >> 63);
  v111 = HIDWORD(v80);
  LODWORD(v107) = v80;
  v112 = HIDWORD(v82);
  LODWORD(v104) = v82;
  v113 = v82 * v80;
  v114 = v82 * v111;
  v115 = HIDWORD(v114) + v112 * v111;
  v116 = v113 | (v114 << 32);
  v117 = v113 & (v114 << 32);
  v118 = (v114 << 32) + v104 * v107;
  v119 = v116 & ~v118 | v117;
  v120 = v112 * v107;
  v121 = v118 | (v120 << 32);
  v122 = v118 & (v120 << 32);
  v123 = v118 + (v120 << 32);
  v124 = v115 + HIDWORD(v120) + (v119 >> 63) + ((v121 & ~v123 | v122) >> 63);
  v125 = v105 | v123;
  v126 = v105 & v123;
  v127 = v105 + v123;
  v128 = v124 + ((v125 & ~v127 | v126) >> 63);
  v129 = v128 | v109;
  v130 = v128 & v109;
  v131 = v128 + v109;
  v132 = v110 + ((v129 & ~v131 | v130) >> 63);
  v133 = v127 + v123;
  v134 = v124 + (((v127 | v123) & ~(v127 + v123) | v127 & v123) >> 63);
  v135 = v134 | v131;
  v136 = v134 & v131;
  v137 = v134 + v131;
  v138 = v132 + ((v135 & ~v137 | v136) >> 63);
  result[3] = v133;
  v140 = a2[1];
  v139 = a2[2];
  v141 = HIDWORD(v139);
  v142 = v139 * HIDWORD(v139);
  v143 = (v142 << 32) + v139 * v139;
  v144 = ((v139 * v139) | (v142 << 32)) & ~v143 | (v139 * v139) & (v142 << 32);
  v145 = v143 | (v142 << 32);
  v146 = v143 & (v142 << 32);
  v147 = v143 + (v142 << 32);
  v148 = ((v142 >> 31) & 0x1FFFFFFFELL) + v141 * v141 + (v144 >> 63) + ((v145 & ~v147 | v146) >> 63);
  v149 = v137 | v147;
  v150 = v137 & v147;
  v151 = v137 + v147;
  v152 = v148 + ((v149 & ~v151 | v150) >> 63);
  v153 = v152 | v138;
  v154 = v152 + v138;
  v155 = v153 & ~v154;
  v156 = a2[3];
  v157 = HIDWORD(v156);
  LODWORD(v150) = v156;
  v158 = HIDWORD(v140);
  LODWORD(v146) = v140;
  v159 = v140 * v156;
  v160 = v146 * HIDWORD(v156);
  v161 = HIDWORD(v160) + v158 * v157;
  v162 = v159 | (v160 << 32);
  v163 = v159 & (v160 << 32);
  v164 = (v160 << 32) + v146 * v150;
  v165 = v162 & ~v164 | v163;
  v166 = v158 * v150;
  v167 = v164 | (v166 << 32);
  v168 = v164 & (v166 << 32);
  v169 = v164 + (v166 << 32);
  v170 = v161 + HIDWORD(v166) + (v165 >> 63) + ((v167 & ~v169 | v168) >> 63);
  v171 = v151 | v169;
  v172 = v151 & v169;
  v173 = v151 + v169;
  v174 = v170 + ((v171 & ~v173 | v172) >> 63);
  v175 = v174 | v154;
  v176 = v174 & v154;
  v177 = v174 + v154;
  v178 = ((v175 & ~v177 | v176) >> 63) + (v155 >> 63);
  v179 = v173 | v169;
  v180 = v173 & v169;
  v181 = v173 + v169;
  v182 = v170 + ((v179 & ~v181 | v180) >> 63);
  v183 = v182 | v177;
  v184 = v182 & v177;
  v185 = v182 + v177;
  v186 = v178 + ((v183 & ~v185 | v184) >> 63);
  result[4] = v181;
  v188 = a2[2];
  v187 = a2[3];
  v189 = HIDWORD(v187);
  LODWORD(v184) = v187;
  v190 = HIDWORD(v188);
  LODWORD(v176) = v188;
  v191 = v188 * v187;
  v192 = v188 * v189;
  v193 = HIDWORD(v192) + v190 * v189;
  v194 = v191 | (v192 << 32);
  v195 = v191 & (v192 << 32);
  v196 = (v192 << 32) + v176 * v184;
  v197 = v194 & ~v196 | v195;
  v198 = v190 * v184;
  v199 = v196 | (v198 << 32);
  v200 = v196 & (v198 << 32);
  v201 = v196 + (v198 << 32);
  v202 = v193 + HIDWORD(v198) + (v197 >> 63) + ((v199 & ~v201 | v200) >> 63);
  v203 = v185 | v201;
  v204 = v185 & v201;
  v205 = v185 + v201;
  v206 = v202 + ((v203 & ~v205 | v204) >> 63);
  v207 = v186 + v206;
  v208 = v206 & ~v207;
  v209 = v205 | v201;
  v210 = v205 & v201;
  v211 = v205 + v201;
  v212 = v202 + ((v209 & ~v211 | v210) >> 63);
  v213 = v212 | v207;
  v214 = v212 & v207;
  v215 = v212 + v207;
  v216 = v213 & ~v215 | v214;
  result[5] = v211;
  v217 = a2[3];
  v218 = HIDWORD(v217);
  v219 = v217 * HIDWORD(v217);
  v220 = (v219 << 32) + v217 * v217;
  v221 = ((v217 * v217) | (v219 << 32)) & ~v220 | (v217 * v217) & (v219 << 32);
  v222 = v220 | (v219 << 32);
  v223 = v220 & (v219 << 32);
  v224 = v220 + (v219 << 32);
  v225 = ((v219 >> 31) & 0x1FFFFFFFELL) + v218 * v218 + (v221 >> 63) + ((v222 & ~v224 | v223) >> 63);
  v226 = v215 | v224;
  v227 = v215 & v224;
  v228 = v215 + v224;
  result[6] = v228;
  result[7] = v225 + (v208 >> 63) + (v216 >> 63) + ((v226 & ~v228 | v227) >> 63);
  return result;
}

unint64_t *bn_sqr_comba8(unint64_t *result, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = *a2;
  v4 = v3 * v3;
  v5 = v3 * v2;
  v6 = (v5 << 32) + v4;
  v7 = v6 + (v5 << 32);
  v8 = ((v5 >> 31) & 0x1FFFFFFFELL) + v2 * v2 + (((v4 | (v5 << 32)) & ~v6 | v4 & (v5 << 32)) >> 63) + (((v6 | (v5 << 32)) & ~v7 | v6 & (v5 << 32)) >> 63);
  *result = v7;
  v9 = a2[1];
  v10 = HIDWORD(v9);
  v11 = *a2 * v9;
  v12 = *a2 * HIDWORD(v9);
  v13 = HIDWORD(*a2);
  v14 = (v12 << 32) + v11;
  v15 = v13 * v9;
  v16 = v14 + (v15 << 32);
  v17 = HIDWORD(v12) + v13 * v10 + HIDWORD(v15) + (((v11 | (v12 << 32)) & ~v14 | v11 & (v12 << 32)) >> 63) + (((v14 | (v15 << 32)) & ~v16 | v14 & (v15 << 32)) >> 63);
  v18 = v8 + v16;
  v19 = v17 + (((v8 | v16) & ~(v8 + v16) | v8 & v16) >> 63);
  v20 = v18 | v16;
  v21 = v18 & v16;
  v22 = v18 + v16;
  v23 = v17 + ((v20 & ~v22 | v21) >> 63);
  result[1] = v22;
  v24 = a2[1];
  v25 = v24 * HIDWORD(v24);
  v26 = (v25 << 32) + v24 * v24;
  v27 = v26 + (v25 << 32);
  v28 = v23 + v19 + v27;
  v29 = ((v25 >> 31) & 0x1FFFFFFFELL) + HIDWORD(v24) * HIDWORD(v24) + ((((v24 * v24) | (v25 << 32)) & ~v26 | (v24 * v24) & (v25 << 32)) >> 63) + (((v26 | (v25 << 32)) & ~v27 | v26 & (v25 << 32)) >> 63) + ((((v23 + v19) | v27) & ~v28 | (v23 + v19) & v27) >> 63);
  v30 = v29 + (((v23 | v19) & ~(v23 + v19) | v23 & v19) >> 63);
  v31 = a2[2];
  v32 = HIDWORD(v31);
  v33 = *a2 * v31;
  v34 = *a2 * HIDWORD(v31);
  v35 = HIDWORD(*a2);
  v36 = (v34 << 32) + v33;
  v37 = v35 * v31;
  v38 = HIDWORD(v34) + v35 * v32;
  v39 = v36 + (v37 << 32);
  v40 = v38 + HIDWORD(v37) + (((v33 | (v34 << 32)) & ~v36 | v33 & (v34 << 32)) >> 63) + (((v36 | (v37 << 32)) & ~v39 | v36 & (v37 << 32)) >> 63);
  v41 = v28 + v39;
  v42 = v40 + (((v28 | v39) & ~(v28 + v39) | v28 & v39) >> 63);
  v43 = v29 & ~v30;
  v44 = v42 | v30;
  v45 = v42 & v30;
  v46 = v42 + v30;
  v47 = ((v44 & ~v46 | v45) >> 63) + (v43 >> 63);
  v48 = v41 | v39;
  v49 = v41 & v39;
  v50 = v41 + v39;
  v51 = v40 + ((v48 & ~v50 | v49) >> 63);
  v52 = v51 | v46;
  v53 = v51 & v46;
  v54 = v51 + v46;
  v55 = v47 + ((v52 & ~v54 | v53) >> 63);
  result[2] = v50;
  v56 = a2[2];
  v57 = a2[3];
  v58 = HIDWORD(v57);
  v59 = a2[1];
  v60 = *a2 * v57;
  v61 = *a2 * HIDWORD(v57);
  v62 = v60 | (v61 << 32);
  v63 = v60 & (v61 << 32);
  v64 = HIDWORD(*a2);
  v65 = (v61 << 32) + *a2 * v57;
  v66 = v64 * v57;
  v67 = HIDWORD(v61) + v64 * v58;
  v68 = v65 + (v66 << 32);
  v69 = v67 + HIDWORD(v66) + ((v62 & ~v65 | v63) >> 63) + (((v65 | (v66 << 32)) & ~v68 | v65 & (v66 << 32)) >> 63);
  v70 = v54 | v68;
  v71 = v54 & v68;
  v72 = v54 + v68;
  v73 = v69 + ((v70 & ~v72 | v71) >> 63);
  v74 = v72 | v68;
  v75 = v72 & v68;
  v76 = v72 + v68;
  v77 = v69 + ((v74 & ~v76 | v75) >> 63);
  v78 = v55 + v73;
  v79 = v73 & ~v78;
  v80 = v77 | v78;
  v81 = v77 & v78;
  v82 = v77 + v78;
  v83 = ((v80 & ~v82 | v81) >> 63) + (v79 >> 63);
  v84 = HIDWORD(v56);
  LODWORD(v80) = v59;
  v85 = v59 * v56;
  v86 = v59 * HIDWORD(v56);
  v59 >>= 32;
  v87 = (v86 << 32) + v80 * v56;
  v88 = v59 * v56;
  v89 = HIDWORD(v86) + v59 * v84;
  v90 = v87 + (v88 << 32);
  v91 = v89 + HIDWORD(v88) + (((v85 | (v86 << 32)) & ~v87 | v85 & (v86 << 32)) >> 63) + (((v87 | (v88 << 32)) & ~v90 | v87 & (v88 << 32)) >> 63);
  v92 = v76 | v90;
  v93 = v76 & v90;
  v94 = v76 + v90;
  v95 = v91 + ((v92 & ~v94 | v93) >> 63);
  v96 = v95 | v82;
  v97 = v95 & v82;
  v98 = v95 + v82;
  v99 = v83 + ((v96 & ~v98 | v97) >> 63);
  v100 = v94 | v90;
  v101 = v94 & v90;
  v102 = v94 + v90;
  v103 = v91 + ((v100 & ~v102 | v101) >> 63);
  v104 = v103 | v98;
  v105 = v103 & v98;
  v106 = v103 + v98;
  v107 = v99 + ((v104 & ~v106 | v105) >> 63);
  result[3] = v102;
  v109 = a2[2];
  v108 = a2[3];
  v110 = v109 * HIDWORD(v109);
  v111 = (v110 << 32) + v109 * v109;
  v112 = v111 + (v110 << 32);
  v113 = ((v110 >> 31) & 0x1FFFFFFFELL) + HIDWORD(v109) * HIDWORD(v109) + ((((v109 * v109) | (v110 << 32)) & ~v111 | (v109 * v109) & (v110 << 32)) >> 63) + (((v111 | (v110 << 32)) & ~v112 | v111 & (v110 << 32)) >> 63);
  v114 = v106 + v112;
  v115 = v113 + (((v106 | v112) & ~(v106 + v112) | v106 & v112) >> 63);
  v116 = HIDWORD(v108);
  v117 = a2[1];
  LODWORD(v97) = v117;
  v118 = v117 * v108;
  v119 = v117 * HIDWORD(v108);
  v120 = v118 | (v119 << 32);
  v121 = v118 & (v119 << 32);
  v117 >>= 32;
  v122 = (v119 << 32) + v97 * v108;
  v123 = v117 * v108;
  v124 = HIDWORD(v119) + v117 * v116;
  v125 = v122 + (v123 << 32);
  v126 = v124 + HIDWORD(v123) + ((v120 & ~v122 | v121) >> 63) + (((v122 | (v123 << 32)) & ~v125 | v122 & (v123 << 32)) >> 63);
  v127 = v114 | v125;
  v128 = v114 & v125;
  v129 = v114 + v125;
  v130 = v126 + ((v127 & ~v129 | v128) >> 63);
  v131 = v115 | v107;
  v132 = v115 + v107;
  v133 = v131 & ~v132;
  v134 = v130 | v132;
  v135 = v130 & v132;
  v136 = v130 + v132;
  v137 = ((v134 & ~v136 | v135) >> 63) + (v133 >> 63);
  v138 = v129 | v125;
  v139 = v129 & v125;
  v140 = v129 + v125;
  v141 = v126 + ((v138 & ~v140 | v139) >> 63);
  v142 = v141 | v136;
  v143 = v141 & v136;
  v144 = v141 + v136;
  v145 = v137 + ((v142 & ~v144 | v143) >> 63);
  v146 = a2[4];
  v147 = HIDWORD(v146);
  v148 = *a2 * v146;
  v149 = *a2 * HIDWORD(v146);
  v150 = HIDWORD(*a2);
  v151 = (v149 << 32) + v148;
  v152 = v150 * v146;
  v153 = HIDWORD(v149) + v150 * v147;
  v154 = v151 + (v152 << 32);
  v155 = v153 + HIDWORD(v152) + (((v148 | (v149 << 32)) & ~v151 | v148 & (v149 << 32)) >> 63) + (((v151 | (v152 << 32)) & ~v154 | v151 & (v152 << 32)) >> 63);
  v156 = v140 | v154;
  v157 = v140 & v154;
  v158 = v140 + v154;
  v159 = v155 + ((v156 & ~v158 | v157) >> 63);
  v160 = v159 | v144;
  v161 = v159 & v144;
  v162 = v159 + v144;
  v163 = v145 + ((v160 & ~v162 | v161) >> 63);
  v164 = v158 | v154;
  v165 = v158 & v154;
  v166 = v158 + v154;
  v167 = v155 + ((v164 & ~v166 | v165) >> 63);
  v168 = v167 | v162;
  v169 = v167 & v162;
  v170 = v167 + v162;
  v171 = v163 + ((v168 & ~v170 | v169) >> 63);
  result[4] = v166;
  v173 = a2[4];
  v172 = a2[5];
  v174 = HIDWORD(v172);
  LODWORD(v169) = v172;
  v175 = a2[1];
  v176 = HIDWORD(*a2);
  LODWORD(v125) = *a2;
  v177 = v125 * v172;
  v178 = v125 * v174;
  v179 = (v178 << 32) + v125 * v169;
  v180 = v176 * v169;
  v181 = HIDWORD(v178) + v176 * v174;
  v182 = v179 + (v180 << 32);
  v183 = v181 + HIDWORD(v180) + (((v177 | (v178 << 32)) & ~v179 | v177 & (v178 << 32)) >> 63) + (((v179 | (v180 << 32)) & ~v182 | v179 & (v180 << 32)) >> 63);
  v184 = v170 | v182;
  v185 = v170 & v182;
  v186 = v170 + v182;
  v187 = v183 + ((v184 & ~v186 | v185) >> 63);
  v188 = v187 | v171;
  v189 = v187 + v171;
  v190 = v188 & ~v189;
  v191 = v186 | v182;
  v192 = v186 & v182;
  v193 = v186 + v182;
  v194 = v183 + ((v191 & ~v193 | v192) >> 63);
  v195 = v194 | v189;
  v196 = v194 & v189;
  v197 = v194 + v189;
  v198 = ((v195 & ~v197 | v196) >> 63) + (v190 >> 63);
  v199 = HIDWORD(v173);
  LODWORD(v195) = v173;
  v200 = HIDWORD(v175);
  LODWORD(v182) = v175;
  v201 = v175 * v173;
  v202 = v175 * v199;
  v203 = (v202 << 32) + v182 * v195;
  v204 = v200 * v195;
  v205 = HIDWORD(v202) + v200 * v199;
  v206 = v203 + (v204 << 32);
  v207 = v205 + HIDWORD(v204) + (((v201 | (v202 << 32)) & ~v203 | v201 & (v202 << 32)) >> 63) + (((v203 | (v204 << 32)) & ~v206 | v203 & (v204 << 32)) >> 63);
  v208 = v193 | v206;
  v209 = v193 & v206;
  v210 = v193 + v206;
  v211 = v207 + ((v208 & ~v210 | v209) >> 63);
  v212 = v211 | v197;
  v213 = v211 & v197;
  v214 = v211 + v197;
  v215 = v198 + ((v212 & ~v214 | v213) >> 63);
  v216 = v210 | v206;
  v217 = v210 & v206;
  v218 = v210 + v206;
  v219 = v207 + ((v216 & ~v218 | v217) >> 63);
  v220 = v219 | v214;
  v221 = v219 & v214;
  v222 = v219 + v214;
  v223 = v215 + ((v220 & ~v222 | v221) >> 63);
  v225 = a2[2];
  v224 = a2[3];
  v226 = HIDWORD(v224);
  LODWORD(v206) = v224;
  v227 = HIDWORD(v225);
  LODWORD(v203) = v225;
  v228 = v225 * v224;
  v229 = v225 * v226;
  v230 = HIDWORD(v229) + v227 * v226;
  v231 = v228 | (v229 << 32);
  v232 = v228 & (v229 << 32);
  v233 = (v229 << 32) + v203 * v206;
  v234 = v231 & ~v233 | v232;
  v235 = v227 * v206;
  v236 = v233 | (v235 << 32);
  v237 = v233 & (v235 << 32);
  v238 = v233 + (v235 << 32);
  v239 = v230 + HIDWORD(v235) + (v234 >> 63) + ((v236 & ~v238 | v237) >> 63);
  v240 = v218 | v238;
  v241 = v218 & v238;
  v242 = v218 + v238;
  v243 = v239 + ((v240 & ~v242 | v241) >> 63);
  v244 = v243 | v222;
  v245 = v243 & v222;
  v246 = v243 + v222;
  v247 = v223 + ((v244 & ~v246 | v245) >> 63);
  v248 = v242 | v238;
  v249 = v242 & v238;
  v250 = v242 + v238;
  v251 = v239 + ((v248 & ~v250 | v249) >> 63);
  v252 = v251 | v246;
  v253 = v251 & v246;
  v254 = v251 + v246;
  v255 = v247 + ((v252 & ~v254 | v253) >> 63);
  result[5] = v250;
  v256 = a2[2];
  v257 = a2[3];
  v258 = HIDWORD(v257);
  v259 = v257 * HIDWORD(v257);
  v260 = (v259 << 32) + v257 * v257;
  v261 = ((v257 * v257) | (v259 << 32)) & ~v260 | (v257 * v257) & (v259 << 32);
  v262 = v260 | (v259 << 32);
  v263 = v260 & (v259 << 32);
  v264 = v260 + (v259 << 32);
  v265 = ((v259 >> 31) & 0x1FFFFFFFELL) + v258 * v258 + (v261 >> 63) + ((v262 & ~v264 | v263) >> 63);
  v266 = v254 + v264;
  v267 = v265 + (((v254 | v264) & ~(v254 + v264) | v254 & v264) >> 63);
  v268 = v267 + v255;
  v269 = (v267 | v255) & ~(v267 + v255);
  v271 = a2[4];
  v270 = a2[5];
  v272 = HIDWORD(v271);
  LODWORD(v262) = v271;
  v273 = HIDWORD(v256);
  LODWORD(v179) = v256;
  v274 = v256 * v271;
  v275 = v179 * HIDWORD(v271);
  v276 = HIDWORD(v275) + v273 * v272;
  v277 = v274 | (v275 << 32);
  v278 = v274 & (v275 << 32);
  v279 = (v275 << 32) + v179 * v262;
  v280 = v277 & ~v279 | v278;
  v281 = v273 * v262;
  v282 = v279 | (v281 << 32);
  v283 = v279 & (v281 << 32);
  v284 = v279 + (v281 << 32);
  v285 = v276 + HIDWORD(v281) + (v280 >> 63) + ((v282 & ~v284 | v283) >> 63);
  v286 = v266 | v284;
  v287 = v266 & v284;
  v288 = v266 + v284;
  v289 = v285 + ((v286 & ~v288 | v287) >> 63);
  v290 = v289 | v268;
  v291 = v289 & v268;
  v292 = v289 + v268;
  v293 = ((v290 & ~v292 | v291) >> 63) + (v269 >> 63);
  v294 = v288 + v284;
  v295 = v285 + (((v288 | v284) & ~(v288 + v284) | v288 & v284) >> 63);
  v296 = v295 | v292;
  v297 = v295 & v292;
  v298 = v295 + v292;
  v299 = v293 + ((v296 & ~v298 | v297) >> 63);
  v300 = HIDWORD(v270);
  LODWORD(v296) = v270;
  v301 = a2[1];
  v302 = HIDWORD(v301);
  LODWORD(v283) = v301;
  v303 = v301 * v270;
  v304 = v301 * v300;
  v305 = HIDWORD(v304) + v302 * v300;
  v306 = v303 | (v304 << 32);
  v307 = v303 & (v304 << 32);
  v308 = (v304 << 32) + v283 * v296;
  v309 = v306 & ~v308 | v307;
  v310 = v302 * v296;
  v311 = v308 | (v310 << 32);
  v312 = v308 & (v310 << 32);
  v313 = v308 + (v310 << 32);
  v314 = v305 + HIDWORD(v310) + (v309 >> 63) + ((v311 & ~v313 | v312) >> 63);
  v315 = v294 | v313;
  v316 = v294 & v313;
  v317 = v294 + v313;
  v318 = v314 + ((v315 & ~v317 | v316) >> 63);
  v319 = v318 | v298;
  v320 = v318 & v298;
  v321 = v318 + v298;
  v322 = v299 + ((v319 & ~v321 | v320) >> 63);
  v323 = v317 | v313;
  v324 = v317 & v313;
  v325 = v317 + v313;
  v326 = v314 + ((v323 & ~v325 | v324) >> 63);
  v327 = v326 | v321;
  v328 = v326 & v321;
  v329 = v326 + v321;
  v330 = v322 + ((v327 & ~v329 | v328) >> 63);
  v331 = a2[6];
  v332 = HIDWORD(v331);
  LODWORD(v328) = v331;
  v333 = HIDWORD(*a2);
  LODWORD(v320) = *a2;
  v334 = v320 * v331;
  v335 = v320 * v332;
  v336 = HIDWORD(v335) + v333 * v332;
  v337 = v334 | (v335 << 32);
  v338 = v334 & (v335 << 32);
  v339 = (v335 << 32) + v320 * v328;
  v340 = v337 & ~v339 | v338;
  v341 = v333 * v328;
  v342 = v339 | (v341 << 32);
  v343 = v339 & (v341 << 32);
  v344 = v339 + (v341 << 32);
  v345 = v336 + HIDWORD(v341) + (v340 >> 63) + ((v342 & ~v344 | v343) >> 63);
  v346 = v325 | v344;
  v347 = v325 & v344;
  v348 = v325 + v344;
  v349 = v345 + ((v346 & ~v348 | v347) >> 63);
  v350 = v349 | v329;
  v351 = v349 & v329;
  v352 = v349 + v329;
  v353 = v330 + ((v350 & ~v352 | v351) >> 63);
  v354 = v348 + v344;
  v355 = v345 + (((v348 | v344) & ~(v348 + v344) | v348 & v344) >> 63);
  v356 = v355 | v352;
  v357 = v355 & v352;
  v358 = v355 + v352;
  v359 = v353 + ((v356 & ~v358 | v357) >> 63);
  result[6] = v354;
  v361 = a2[6];
  v360 = a2[7];
  v362 = HIDWORD(v360);
  LODWORD(v350) = v360;
  v363 = a2[1];
  v364 = HIDWORD(*a2);
  LODWORD(v312) = *a2;
  v365 = v312 * v360;
  v366 = v312 * v362;
  v367 = HIDWORD(v366) + v364 * v362;
  v368 = v365 | (v366 << 32);
  v369 = v365 & (v366 << 32);
  v370 = (v366 << 32) + v312 * v350;
  v371 = v368 & ~v370 | v369;
  v372 = v364 * v350;
  v373 = v370 | (v372 << 32);
  v374 = v370 & (v372 << 32);
  v375 = v370 + (v372 << 32);
  v376 = v367 + HIDWORD(v372) + (v371 >> 63) + ((v373 & ~v375 | v374) >> 63);
  v377 = v358 | v375;
  v378 = v358 & v375;
  v379 = v358 + v375;
  v380 = v376 + ((v377 & ~v379 | v378) >> 63);
  v381 = v380 | v359;
  v382 = v380 & v359;
  v383 = v380 + v359;
  v384 = v381 & ~v383 | v382;
  v385 = v379 | v375;
  v386 = v379 & v375;
  v387 = v379 + v375;
  v388 = v376 + ((v385 & ~v387 | v386) >> 63);
  v389 = v388 | v383;
  v390 = v388 & v383;
  v391 = v388 + v383;
  v392 = ((v389 & ~v391 | v390) >> 63) + (v384 >> 63);
  v393 = HIDWORD(v361);
  LODWORD(v389) = v361;
  v394 = HIDWORD(v363);
  LODWORD(v386) = v363;
  v395 = v363 * v361;
  v396 = v363 * v393;
  v397 = HIDWORD(v396) + v394 * v393;
  v398 = v395 | (v396 << 32);
  v399 = v395 & (v396 << 32);
  v400 = (v396 << 32) + v386 * v389;
  v401 = v398 & ~v400 | v399;
  v402 = v394 * v389;
  v403 = v400 | (v402 << 32);
  v404 = v400 & (v402 << 32);
  v405 = v400 + (v402 << 32);
  v406 = v397 + HIDWORD(v402) + (v401 >> 63) + ((v403 & ~v405 | v404) >> 63);
  v407 = v387 | v405;
  v408 = v387 & v405;
  v409 = v387 + v405;
  v410 = v406 + ((v407 & ~v409 | v408) >> 63);
  v411 = v410 | v391;
  v412 = v410 & v391;
  v413 = v410 + v391;
  v414 = v392 + ((v411 & ~v413 | v412) >> 63);
  v415 = v409 + v405;
  v416 = v406 + (((v409 | v405) & ~(v409 + v405) | v409 & v405) >> 63);
  v417 = v416 | v413;
  v418 = v416 & v413;
  v419 = v416 + v413;
  v420 = v414 + ((v417 & ~v419 | v418) >> 63);
  v422 = a2[4];
  v421 = a2[5];
  v423 = HIDWORD(v421);
  LODWORD(v412) = v421;
  v424 = a2[2];
  v425 = a2[3];
  v426 = HIDWORD(v424);
  LODWORD(v398) = v424;
  v427 = v424 * v421;
  v428 = v424 * v423;
  v429 = HIDWORD(v428) + v426 * v423;
  v430 = v427 | (v428 << 32);
  v431 = v427 & (v428 << 32);
  v432 = (v428 << 32) + v398 * v412;
  v433 = v430 & ~v432 | v431;
  v434 = v426 * v412;
  v435 = v432 | (v434 << 32);
  v436 = v432 & (v434 << 32);
  v437 = v432 + (v434 << 32);
  v438 = v429 + HIDWORD(v434) + (v433 >> 63) + ((v435 & ~v437 | v436) >> 63);
  v439 = v415 | v437;
  v440 = v415 & v437;
  v441 = v415 + v437;
  v442 = v438 + ((v439 & ~v441 | v440) >> 63);
  v443 = v442 | v419;
  v444 = v442 & v419;
  v445 = v442 + v419;
  v446 = v420 + ((v443 & ~v445 | v444) >> 63);
  v447 = v441 | v437;
  v448 = v441 & v437;
  v449 = v441 + v437;
  v450 = v438 + ((v447 & ~v449 | v448) >> 63);
  v451 = v450 | v445;
  v452 = v450 & v445;
  v453 = v450 + v445;
  v454 = v446 + ((v451 & ~v453 | v452) >> 63);
  v455 = HIDWORD(v422);
  LODWORD(v451) = v422;
  v456 = HIDWORD(v425);
  LODWORD(v437) = v425;
  v457 = v425 * v422;
  v458 = v425 * v455;
  v459 = HIDWORD(v458) + v456 * v455;
  v460 = (v458 << 32) + v437 * v451;
  v461 = (v457 | (v458 << 32)) & ~v460 | v457 & (v458 << 32);
  v462 = v456 * v451;
  v463 = v460 | (v462 << 32);
  v464 = v460 & (v462 << 32);
  v465 = v460 + (v462 << 32);
  v466 = v459 + HIDWORD(v462) + (v461 >> 63) + ((v463 & ~v465 | v464) >> 63);
  v467 = v449 | v465;
  v468 = v449 & v465;
  v469 = v449 + v465;
  v470 = v466 + ((v467 & ~v469 | v468) >> 63);
  v471 = v470 | v453;
  v472 = v470 & v453;
  v473 = v470 + v453;
  v474 = v454 + ((v471 & ~v473 | v472) >> 63);
  v475 = v469 + v465;
  v476 = v466 + (((v469 | v465) & ~(v469 + v465) | v469 & v465) >> 63);
  v477 = v476 | v473;
  v478 = v476 & v473;
  v479 = v476 + v473;
  v480 = v474 + ((v477 & ~v479 | v478) >> 63);
  result[7] = v475;
  v481 = a2[3];
  v482 = a2[4];
  v483 = HIDWORD(v482);
  v484 = v482 * HIDWORD(v482);
  v485 = (v484 << 32) + v482 * v482;
  v486 = ((v482 * v482) | (v484 << 32)) & ~v485 | (v482 * v482) & (v484 << 32);
  v487 = v485 | (v484 << 32);
  v488 = v485 & (v484 << 32);
  v489 = v485 + (v484 << 32);
  v490 = ((v484 >> 31) & 0x1FFFFFFFELL) + v483 * v483 + (v486 >> 63) + ((v487 & ~v489 | v488) >> 63);
  v491 = v479 + v489;
  v492 = v490 + (((v479 | v489) & ~(v479 + v489) | v479 & v489) >> 63);
  v493 = v492 + v480;
  v494 = (v492 | v480) & ~(v492 + v480) | v492 & v480;
  v496 = a2[5];
  v495 = a2[6];
  v497 = HIDWORD(v496);
  LODWORD(v487) = v496;
  v498 = HIDWORD(v481);
  LODWORD(v444) = v481;
  v499 = v481 * v496;
  v500 = v444 * HIDWORD(v496);
  v501 = HIDWORD(v500) + v498 * v497;
  v502 = v499 | (v500 << 32);
  v503 = v499 & (v500 << 32);
  v504 = (v500 << 32) + v444 * v487;
  v505 = v502 & ~v504 | v503;
  v506 = v498 * v487;
  v507 = v504 | (v506 << 32);
  v508 = v504 & (v506 << 32);
  v509 = v504 + (v506 << 32);
  v510 = v501 + HIDWORD(v506) + (v505 >> 63) + ((v507 & ~v509 | v508) >> 63);
  v511 = v491 | v509;
  v512 = v491 & v509;
  v513 = v491 + v509;
  v514 = v510 + ((v511 & ~v513 | v512) >> 63);
  v515 = v514 | v493;
  v516 = v514 & v493;
  v517 = v514 + v493;
  v518 = ((v515 & ~v517 | v516) >> 63) + (v494 >> 63);
  v519 = v513 + v509;
  v520 = v510 + (((v513 | v509) & ~(v513 + v509) | v513 & v509) >> 63);
  v521 = v520 | v517;
  v522 = v520 & v517;
  v523 = v520 + v517;
  v524 = v518 + ((v521 & ~v523 | v522) >> 63);
  v525 = HIDWORD(v495);
  LODWORD(v517) = v495;
  v527 = a2[1];
  v526 = a2[2];
  v528 = HIDWORD(v526);
  LODWORD(v508) = v526;
  v529 = v526 * v495;
  v530 = v526 * v525;
  v531 = HIDWORD(v530) + v528 * v525;
  v532 = v529 | (v530 << 32);
  v533 = v529 & (v530 << 32);
  v534 = (v530 << 32) + v508 * v517;
  v535 = v532 & ~v534 | v533;
  v536 = v528 * v517;
  v537 = v534 | (v536 << 32);
  v538 = v534 & (v536 << 32);
  v539 = v534 + (v536 << 32);
  v540 = v531 + HIDWORD(v536) + (v535 >> 63) + ((v537 & ~v539 | v538) >> 63);
  v541 = v519 | v539;
  v542 = v519 & v539;
  v543 = v519 + v539;
  v544 = v540 + ((v541 & ~v543 | v542) >> 63);
  v545 = v544 | v523;
  v546 = v544 & v523;
  v547 = v544 + v523;
  v548 = v524 + ((v545 & ~v547 | v546) >> 63);
  v549 = v543 | v539;
  v550 = v543 & v539;
  v551 = v543 + v539;
  v552 = v540 + ((v549 & ~v551 | v550) >> 63);
  v553 = v552 | v547;
  v554 = v552 & v547;
  v555 = v552 + v547;
  v556 = v548 + ((v553 & ~v555 | v554) >> 63);
  v557 = a2[7];
  v558 = HIDWORD(v557);
  LODWORD(v554) = v557;
  v559 = HIDWORD(v527);
  LODWORD(v546) = v527;
  v560 = v527 * v557;
  v561 = v527 * v558;
  v562 = HIDWORD(v561) + v559 * v558;
  v563 = v560 | (v561 << 32);
  v564 = v560 & (v561 << 32);
  v565 = (v561 << 32) + v546 * v554;
  v566 = v563 & ~v565 | v564;
  v567 = v559 * v554;
  v568 = v565 | (v567 << 32);
  v569 = v565 & (v567 << 32);
  v570 = v565 + (v567 << 32);
  v571 = v562 + HIDWORD(v567) + (v566 >> 63) + ((v568 & ~v570 | v569) >> 63);
  v572 = v551 | v570;
  v573 = v551 & v570;
  v574 = v551 + v570;
  v575 = v571 + ((v572 & ~v574 | v573) >> 63);
  v576 = v575 | v555;
  v577 = v575 & v555;
  v578 = v575 + v555;
  v579 = v556 + ((v576 & ~v578 | v577) >> 63);
  v580 = v574 + v570;
  v581 = v571 + (((v574 | v570) & ~(v574 + v570) | v574 & v570) >> 63);
  v582 = v581 | v578;
  v583 = v581 & v578;
  v584 = v581 + v578;
  v585 = v579 + ((v582 & ~v584 | v583) >> 63);
  result[8] = v580;
  v587 = a2[6];
  v586 = a2[7];
  v588 = HIDWORD(v586);
  LODWORD(v576) = v586;
  v589 = a2[2];
  v590 = a2[3];
  v591 = HIDWORD(v589);
  LODWORD(v538) = v589;
  v592 = v589 * v586;
  v593 = v589 * v588;
  v594 = HIDWORD(v593) + v591 * v588;
  v595 = v592 | (v593 << 32);
  v596 = v592 & (v593 << 32);
  v597 = (v593 << 32) + v538 * v576;
  v598 = v595 & ~v597 | v596;
  v599 = v591 * v576;
  v600 = v597 | (v599 << 32);
  v601 = v597 & (v599 << 32);
  v602 = v597 + (v599 << 32);
  v603 = v594 + HIDWORD(v599) + (v598 >> 63) + ((v600 & ~v602 | v601) >> 63);
  v604 = v584 | v602;
  v605 = v584 & v602;
  v606 = v584 + v602;
  v607 = v603 + ((v604 & ~v606 | v605) >> 63);
  v608 = v607 | v585;
  v609 = v607 & v585;
  v610 = v607 + v585;
  v611 = v608 & ~v610 | v609;
  v612 = v606 | v602;
  v613 = v606 & v602;
  v614 = v606 + v602;
  v615 = v603 + ((v612 & ~v614 | v613) >> 63);
  v616 = v615 | v610;
  v617 = v615 & v610;
  v618 = v615 + v610;
  v619 = ((v616 & ~v618 | v617) >> 63) + (v611 >> 63);
  v620 = HIDWORD(v587);
  LODWORD(v616) = v587;
  v621 = HIDWORD(v590);
  LODWORD(v613) = v590;
  v622 = v590 * v587;
  v623 = v590 * v620;
  v624 = HIDWORD(v623) + v621 * v620;
  v625 = v622 | (v623 << 32);
  v626 = v622 & (v623 << 32);
  v627 = (v623 << 32) + v613 * v616;
  v628 = v625 & ~v627 | v626;
  v629 = v621 * v616;
  v630 = v627 | (v629 << 32);
  v631 = v627 & (v629 << 32);
  v632 = v627 + (v629 << 32);
  v633 = v624 + HIDWORD(v629) + (v628 >> 63) + ((v630 & ~v632 | v631) >> 63);
  v634 = v614 | v632;
  v635 = v614 & v632;
  v636 = v614 + v632;
  v637 = v633 + ((v634 & ~v636 | v635) >> 63);
  v638 = v637 | v618;
  v639 = v637 & v618;
  v640 = v637 + v618;
  v641 = v619 + ((v638 & ~v640 | v639) >> 63);
  v642 = v636 | v632;
  v643 = v636 & v632;
  v644 = v636 + v632;
  v645 = v633 + ((v642 & ~v644 | v643) >> 63);
  v646 = v645 | v640;
  v647 = v645 & v640;
  v648 = v645 + v640;
  v649 = v641 + ((v646 & ~v648 | v647) >> 63);
  v651 = a2[4];
  v650 = a2[5];
  v652 = HIDWORD(v650);
  LODWORD(v639) = v650;
  v653 = HIDWORD(v651);
  LODWORD(v631) = v651;
  v654 = v651 * v650;
  v655 = v651 * v652;
  v656 = HIDWORD(v655) + v653 * v652;
  v657 = v654 | (v655 << 32);
  v658 = v654 & (v655 << 32);
  v659 = (v655 << 32) + v631 * v639;
  v660 = v657 & ~v659 | v658;
  v661 = v653 * v639;
  v662 = v659 | (v661 << 32);
  v663 = v659 & (v661 << 32);
  v664 = v659 + (v661 << 32);
  v665 = v656 + HIDWORD(v661) + (v660 >> 63) + ((v662 & ~v664 | v663) >> 63);
  v666 = v644 | v664;
  v667 = v644 & v664;
  v668 = v644 + v664;
  v669 = v665 + ((v666 & ~v668 | v667) >> 63);
  v670 = v669 | v648;
  v671 = v669 & v648;
  v672 = v669 + v648;
  v673 = v649 + ((v670 & ~v672 | v671) >> 63);
  v674 = v668 | v664;
  v675 = v668 & v664;
  v676 = v668 + v664;
  v677 = v665 + ((v674 & ~v676 | v675) >> 63);
  v678 = v677 | v672;
  v679 = v677 & v672;
  v680 = v677 + v672;
  v681 = v673 + ((v678 & ~v680 | v679) >> 63);
  result[9] = v676;
  v683 = a2[5];
  v682 = a2[6];
  v684 = HIDWORD(v683);
  v685 = v683 * HIDWORD(v683);
  v686 = (v685 << 32) + v683 * v683;
  v687 = ((v683 * v683) | (v685 << 32)) & ~v686 | (v683 * v683) & (v685 << 32);
  v688 = v686 | (v685 << 32);
  v689 = v686 & (v685 << 32);
  v690 = v686 + (v685 << 32);
  v691 = ((v685 >> 31) & 0x1FFFFFFFELL) + v684 * v684 + (v687 >> 63) + ((v688 & ~v690 | v689) >> 63);
  v692 = v680 + v690;
  v693 = v691 + (((v680 | v690) & ~(v680 + v690) | v680 & v690) >> 63);
  v694 = v693 | v681;
  v695 = v693 + v681;
  v696 = v694 & ~v695;
  v697 = HIDWORD(v682);
  LODWORD(v694) = v682;
  v699 = a2[3];
  v698 = a2[4];
  v700 = HIDWORD(v698);
  LODWORD(v601) = v698;
  v701 = v698 * v682;
  v702 = v698 * v697;
  v703 = HIDWORD(v702) + v700 * v697;
  v704 = v701 | (v702 << 32);
  v705 = v701 & (v702 << 32);
  v706 = (v702 << 32) + v601 * v694;
  v707 = v704 & ~v706 | v705;
  v708 = v700 * v694;
  v709 = v706 | (v708 << 32);
  v710 = v706 & (v708 << 32);
  v711 = v706 + (v708 << 32);
  v712 = v703 + HIDWORD(v708) + (v707 >> 63) + ((v709 & ~v711 | v710) >> 63);
  v713 = v692 | v711;
  v714 = v692 & v711;
  v715 = v692 + v711;
  v716 = v712 + ((v713 & ~v715 | v714) >> 63);
  v717 = v716 | v695;
  v718 = v716 & v695;
  v719 = v716 + v695;
  v720 = ((v717 & ~v719 | v718) >> 63) + (v696 >> 63);
  v721 = v715 | v711;
  v722 = v715 & v711;
  v723 = v715 + v711;
  v724 = v712 + ((v721 & ~v723 | v722) >> 63);
  v725 = v724 | v719;
  v726 = v724 & v719;
  v727 = v724 + v719;
  v728 = v720 + ((v725 & ~v727 | v726) >> 63);
  v729 = a2[7];
  v730 = HIDWORD(v729);
  LODWORD(v726) = v729;
  v731 = HIDWORD(v699);
  LODWORD(v718) = v699;
  v732 = v699 * v729;
  v733 = v699 * v730;
  v734 = HIDWORD(v733) + v731 * v730;
  v735 = v732 | (v733 << 32);
  v736 = v732 & (v733 << 32);
  v737 = (v733 << 32) + v718 * v726;
  v738 = v735 & ~v737 | v736;
  v739 = v731 * v726;
  v740 = v737 | (v739 << 32);
  v741 = v737 & (v739 << 32);
  v742 = v737 + (v739 << 32);
  v743 = v734 + HIDWORD(v739) + (v738 >> 63) + ((v740 & ~v742 | v741) >> 63);
  v744 = v723 | v742;
  v745 = v723 & v742;
  v746 = v723 + v742;
  v747 = v743 + ((v744 & ~v746 | v745) >> 63);
  v748 = v747 | v727;
  v749 = v747 & v727;
  v750 = v747 + v727;
  v751 = v728 + ((v748 & ~v750 | v749) >> 63);
  v752 = v746 | v742;
  v753 = v746 & v742;
  v754 = v746 + v742;
  v755 = v743 + ((v752 & ~v754 | v753) >> 63);
  v756 = v755 | v750;
  v757 = v755 & v750;
  v758 = v755 + v750;
  v759 = v751 + ((v756 & ~v758 | v757) >> 63);
  result[10] = v754;
  v761 = a2[6];
  v760 = a2[7];
  v762 = HIDWORD(v760);
  LODWORD(v757) = v760;
  v763 = a2[4];
  v764 = a2[5];
  v765 = HIDWORD(v763);
  LODWORD(v710) = v763;
  v766 = v763 * v760;
  v767 = v763 * v762;
  v768 = HIDWORD(v767) + v765 * v762;
  v769 = v766 | (v767 << 32);
  v770 = v766 & (v767 << 32);
  v771 = (v767 << 32) + v710 * v757;
  v772 = v769 & ~v771 | v770;
  v773 = v765 * v757;
  v774 = v771 | (v773 << 32);
  v775 = v771 & (v773 << 32);
  v776 = v771 + (v773 << 32);
  v777 = v768 + HIDWORD(v773) + (v772 >> 63) + ((v774 & ~v776 | v775) >> 63);
  v778 = v758 | v776;
  v779 = v758 & v776;
  v780 = v758 + v776;
  v781 = v777 + ((v778 & ~v780 | v779) >> 63);
  v782 = v781 | v759;
  v783 = v781 + v759;
  v784 = v782 & ~v783;
  v785 = v780 | v776;
  v786 = v780 & v776;
  v787 = v780 + v776;
  v788 = v777 + ((v785 & ~v787 | v786) >> 63);
  v789 = v788 + v783;
  v790 = (v788 | v783) & ~(v788 + v783) | v788 & v783;
  v791 = HIDWORD(v761);
  LODWORD(v785) = v761;
  v792 = HIDWORD(v764);
  LODWORD(v775) = v764;
  v793 = v764 * v761;
  v794 = v764 * v791;
  v795 = HIDWORD(v794) + v792 * v791;
  v796 = (v794 << 32) + v775 * v785;
  v797 = (v793 | (v794 << 32)) & ~v796 | v793 & (v794 << 32);
  v798 = v792 * v785;
  v799 = v796 + (v798 << 32);
  v800 = v795 + HIDWORD(v798) + (v797 >> 63) + (((v796 | (v798 << 32)) & ~v799 | v796 & (v798 << 32)) >> 63);
  v801 = v787 + v799;
  v802 = v800 + (((v787 | v799) & ~(v787 + v799) | v787 & v799) >> 63);
  v803 = v802 | v789;
  result[11] = v801 + v799;
  v804 = a2[5];
  v805 = a2[6];
  v806 = v802 & v789;
  v807 = v802 + v789;
  v808 = v803 & ~v807 | v806;
  v809 = v800 + (((v801 | v799) & ~(v801 + v799) | v801 & v799) >> 63);
  v810 = v809 | v807;
  v811 = v809 & v807;
  v812 = v809 + v807;
  v813 = v810 & ~v812 | v811;
  v814 = v805 * HIDWORD(v805);
  v815 = (v814 << 32) + v805 * v805;
  v816 = ((v805 * v805) | (v814 << 32)) & ~v815 | (v805 * v805) & (v814 << 32);
  v817 = v815 + (v814 << 32);
  v818 = (v815 | (v814 << 32)) & ~v817 | v815 & (v814 << 32);
  v819 = ((v814 >> 31) & 0x1FFFFFFFELL) + HIDWORD(v805) * HIDWORD(v805);
  v820 = v812 | v817;
  v821 = v812 & v817;
  v822 = v812 + v817;
  v823 = (v790 >> 63) + (v784 >> 63) + (v808 >> 63) + (v813 >> 63);
  v824 = v819 + (v816 >> 63) + (v818 >> 63) + ((v820 & ~v822 | v821) >> 63);
  v825 = a2[7];
  v826 = v824 | v823;
  v827 = v824 + v823;
  v828 = v826 & ~v827;
  LODWORD(v818) = v825;
  v829 = v804 * HIDWORD(v825);
  v830 = HIDWORD(v829) + HIDWORD(v804) * HIDWORD(v825);
  v831 = (v829 << 32) + v804 * v825;
  v832 = ((v804 * v825) | (v829 << 32)) & ~v831 | (v804 * v825) & (v829 << 32);
  v833 = HIDWORD(v804) * v818;
  v834 = v831 | (v833 << 32);
  v835 = v831 & (v833 << 32);
  v836 = v831 + (v833 << 32);
  v837 = v830 + HIDWORD(v833) + (v832 >> 63) + ((v834 & ~v836 | v835) >> 63);
  v838 = v822 | v836;
  v839 = v822 & v836;
  v840 = v822 + v836;
  v841 = v837 + ((v838 & ~v840 | v839) >> 63);
  v842 = v841 | v827;
  v843 = v841 & v827;
  result[12] = v840 + v836;
  v844 = a2[6];
  v845 = a2[7];
  v846 = v841 + v827;
  v847 = (v842 & ~v846 | v843) >> 63;
  v848 = v837 + (((v840 | v836) & ~(v840 + v836) | v840 & v836) >> 63);
  v849 = v848 | v846;
  v850 = v848 & v846;
  v851 = v848 + v846;
  v852 = v849 & ~v851 | v850;
  v853 = HIDWORD(v845);
  LODWORD(v850) = v845;
  v854 = v844 * v845;
  v855 = v844 * HIDWORD(v845);
  v856 = HIDWORD(v855) + HIDWORD(v844) * v853;
  v857 = (v855 << 32) + v844 * v850;
  v858 = (v854 | (v855 << 32)) & ~v857 | v854 & (v855 << 32);
  v859 = HIDWORD(v844) * v850;
  v860 = v857 + (v859 << 32);
  v861 = v847 + (v828 >> 63) + (v852 >> 63);
  v862 = v856 + HIDWORD(v859) + (v858 >> 63) + (((v857 | (v859 << 32)) & ~v860 | v857 & (v859 << 32)) >> 63);
  v863 = v851 | v860;
  v864 = v851 & v860;
  v865 = v851 + v860;
  v866 = v862 + ((v863 & ~v865 | v864) >> 63);
  result[13] = v865 + v860;
  v867 = a2[7];
  v868 = v861 + v866;
  v869 = v866 & ~v868;
  v870 = v862 + (((v865 | v860) & ~(v865 + v860) | v865 & v860) >> 63);
  v871 = v870 | v868;
  v872 = v870 & v868;
  v873 = v870 + v868;
  v874 = v871 & ~v873 | v872;
  v875 = HIDWORD(v867);
  v876 = v867 * HIDWORD(v867);
  v877 = (v876 << 32) + v867 * v867;
  v878 = ((v867 * v867) | (v876 << 32)) & ~v877 | (v867 * v867) & (v876 << 32);
  v879 = v877 + (v876 << 32);
  v880 = (v877 | (v876 << 32)) & ~v879 | v877 & (v876 << 32);
  v881 = ((v876 >> 31) & 0x1FFFFFFFELL) + v875 * v875;
  v882 = v873 | v879;
  v883 = v873 & v879;
  v884 = v873 + v879;
  result[14] = v884;
  result[15] = v881 + (v878 >> 63) + (v880 >> 63) + (v869 >> 63) + (v874 >> 63) + ((v882 & ~v884 | v883) >> 63);
  return result;
}

void bn_sqr_words(unint64_t *rp, const unint64_t *ap, int num)
{
  if (num < 0)
  {
    bn_sqr_words_cold_1();
  }

  if (num)
  {
    if (num < 4)
    {
      goto LABEL_6;
    }

    do
    {
      v3 = HIDWORD(*ap);
      v4 = *ap;
      v5 = v4 * v4;
      v6 = v4 * v3;
      v7 = (v6 << 32) + v5;
      v8 = (v5 | (v6 << 32)) & ~v7 | v5 & (v6 << 32);
      v9 = v7 | (v6 << 32);
      v10 = v7 & (v6 << 32);
      v11 = v7 + (v6 << 32);
      *rp = v11;
      rp[1] = ((v6 >> 31) & 0x1FFFFFFFELL) + v3 * v3 + (v8 >> 63) + ((v9 & ~v11 | v10) >> 63);
      v12 = ap[1];
      v13 = HIDWORD(v12);
      v14 = v12 * HIDWORD(v12);
      v15 = (v14 << 32) + v12 * v12;
      v16 = ((v12 * v12) | (v14 << 32)) & ~v15 | (v12 * v12) & (v14 << 32);
      v17 = v15 | (v14 << 32);
      v18 = v15 & (v14 << 32);
      v19 = v15 + (v14 << 32);
      rp[2] = v19;
      rp[3] = ((v14 >> 31) & 0x1FFFFFFFELL) + v13 * v13 + (v16 >> 63) + ((v17 & ~v19 | v18) >> 63);
      v20 = ap[2];
      v21 = HIDWORD(v20);
      v22 = v20 * HIDWORD(v20);
      v23 = (v22 << 32) + v20 * v20;
      v24 = ((v20 * v20) | (v22 << 32)) & ~v23 | (v20 * v20) & (v22 << 32);
      v25 = v23 | (v22 << 32);
      v26 = v23 & (v22 << 32);
      v27 = v23 + (v22 << 32);
      rp[4] = v27;
      rp[5] = ((v22 >> 31) & 0x1FFFFFFFELL) + v21 * v21 + (v24 >> 63) + ((v25 & ~v27 | v26) >> 63);
      v28 = ap[3];
      v29 = HIDWORD(v28);
      v30 = v28 * HIDWORD(v28);
      v31 = (v30 << 32) + v28 * v28;
      v32 = ((v28 * v28) | (v30 << 32)) & ~v31 | (v28 * v28) & (v30 << 32);
      v33 = v31 | (v30 << 32);
      v34 = v31 & (v30 << 32);
      v35 = v31 + (v30 << 32);
      rp[6] = v35;
      rp[7] = ((v30 >> 31) & 0x1FFFFFFFELL) + v29 * v29 + (v32 >> 63) + ((v33 & ~v35 | v34) >> 63);
      ap += 4;
      rp += 8;
      num -= 4;
    }

    while (num >= 4);
    if (num)
    {
LABEL_6:
      v36 = rp + 1;
      do
      {
        v37 = *ap++;
        v38 = v37 * v37;
        v39 = v37 * HIDWORD(v37);
        v40 = (v39 << 32) + v38;
        v41 = (v38 | (v39 << 32)) & ~v40 | v38 & (v39 << 32);
        v42 = v40 | (v39 << 32);
        v43 = v40 & (v39 << 32);
        v44 = v40 + (v39 << 32);
        *(v36 - 1) = v44;
        *v36 = ((v39 >> 31) & 0x1FFFFFFFELL) + HIDWORD(v37) * HIDWORD(v37) + (v41 >> 63) + ((v42 & ~v44 | v43) >> 63);
        v36 += 2;
        --num;
      }

      while (num);
    }
  }
}

unint64_t bn_sqr_normal(unint64_t *rp, uint64_t a2, int a3, unint64_t *a4)
{
  v8 = 2 * a3;
  rp[2 * a3 - 1] = 0;
  *rp = 0;
  if (a3 >= 2)
  {
    rp[(a3 - 1) + 1] = bn_mul_words(rp + 1, (a2 + 8), a3 - 1, *a2);
    v9 = a3 - 2;
    if (a3 != 2)
    {
      v10 = rp + 3;
      v11 = &rp[a3 + 1];
      v12 = (a2 + 16);
      do
      {
        *v11++ = bn_mul_add_words(v10, v12, v9, *(v12 - 1));
        v10 += 2;
        ++v12;
        v13 = v9-- != 0;
      }

      while (v9 != 0 && v13);
    }
  }

  bn_add_words(rp, rp, rp, v8);
  bn_sqr_words(a4, a2, a3);

  return bn_add_words(rp, rp, a4, v8);
}

uint64_t bn_sqr(unint64_t **a1, uint64_t a2, size_t a3, BN_CTX *ctx)
{
  BN_CTX_start(ctx);
  v8 = BN_CTX_get(ctx);
  if (v8 && (p_d = &v8->d, bn_wexpand(v8, a3)))
  {
    bn_sqr_normal(*a1, *a2, *(a2 + 8), *p_d);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  BN_CTX_end(ctx);
  return v10;
}

int BN_sqr(BIGNUM *r, const BIGNUM *a, BN_CTX *ctx)
{
  BN_CTX_start(ctx);
  if (BN_is_zero(a))
  {
    BN_zero(r);
  }

  else
  {
    v7 = r;
    if (r == a)
    {
      v7 = BN_CTX_get(ctx);
    }

    if (v7)
    {
      top = a->top;
      v9 = (2 * top);
      if (v9 >= top)
      {
        if (bn_wexpand(v7, (2 * top)))
        {
          v10 = a->top;
          if (v10 == 8)
          {
            bn_sqr_comba8(v7->d, a->d);
          }

          else if (v10 == 4)
          {
            bn_sqr_comba4(v7->d, a->d);
          }

          else if (!bn_sqr(&v7->d, a, v9, ctx))
          {
            goto LABEL_3;
          }

          v7->top = v9;
          bn_correct_top(v7);
          v7->neg = 0;
          bn_copy(r, v7);
        }
      }
    }
  }

LABEL_3:
  BN_CTX_end(ctx);
  return 1;
}

int ENGINE_register_ECDSA(ENGINE *e)
{
  if (*(e + 6))
  {
    return engine_table_register(&ecdsa_table, engine_unregister_all_ECDSA, e, dummy_nid_5, 1, 0);
  }

  else
  {
    return 1;
  }
}

void ENGINE_register_all_ECDSA(void)
{
  first = ENGINE_get_first();
  if (first)
  {
    next = first;
    do
    {
      if (*(next + 6))
      {
        engine_table_register(&ecdsa_table, engine_unregister_all_ECDSA, next, dummy_nid_5, 1, 0);
      }

      next = ENGINE_get_next(next);
    }

    while (next);
  }
}

int ENGINE_set_default_ECDSA(ENGINE *e)
{
  if (*(e + 6))
  {
    return engine_table_register(&ecdsa_table, engine_unregister_all_ECDSA, e, dummy_nid_5, 1, 1);
  }

  else
  {
    return 1;
  }
}

uint64_t pkey_dsa_init(uint64_t a1)
{
  result = malloc_type_malloc(0x20uLL, 0x106004034A26F38uLL);
  if (result)
  {
    *result = 0xA000000400;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(a1 + 40) = result;
    *(a1 + 64) = result + 16;
    *(a1 + 72) = 2;
    return 1;
  }

  return result;
}

uint64_t pkey_dsa_copy(uint64_t a1, uint64_t a2)
{
  result = pkey_dsa_init(a1);
  if (result)
  {
    v5 = *(a2 + 40);
    v6 = *(a1 + 40);
    *v6 = *v5;
    v6[1] = v5[1];
    v6[3] = v5[3];
    return 1;
  }

  return result;
}

BOOL pkey_dsa_paramgen(uint64_t a1, EVP_PKEY *a2)
{
  v3 = *(a1 + 40);
  memset(v9, 0, sizeof(v9));
  if (*(a1 + 56))
  {
    v4 = v9;
    evp_pkey_set_cb_translate(v9, a1);
  }

  else
  {
    v4 = 0;
  }

  v5 = DSA_new();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = dsa_builtin_paramgen(v5, *v3, *(v3 + 1), v3[1], 0, 0, 0, 0, 0, v4);
  if (v7)
  {
    EVP_PKEY_assign(a2, 116, v6);
  }

  else
  {
    DSA_free(v6);
  }

  return v7;
}

uint64_t pkey_dsa_keygen(uint64_t a1, EVP_PKEY *a2)
{
  if (!*(a1 + 16))
  {
    ERR_put_error(10, 4095, 107, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dsa/dsa_pmeth.c", 319);
    return 0;
  }

  v4 = DSA_new();
  if (!v4)
  {
    return 0;
  }

  EVP_PKEY_assign(a2, 116, v4);
  if (!EVP_PKEY_copy_parameters(a2, *(a1 + 16)))
  {
    return 0;
  }

  attributes = a2->attributes;

  return DSA_generate_key(attributes);
}

uint64_t pkey_dsa_sign(uint64_t a1, unsigned __int8 *sig, void *a3, unsigned __int8 *dgst, unint64_t dlen)
{
  v5 = *(*(a1 + 16) + 32);
  v6 = *(a1 + 40);
  *a3 = 0;
  if (dlen >> 31)
  {
    return 0;
  }

  v7 = dlen;
  v11 = *(v6 + 24);
  if (v11)
  {
    if (EVP_MD_size(v11) != dlen)
    {
      return 0;
    }
  }

  siglen = 0;
  result = DSA_sign(0, dgst, v7, sig, &siglen, v5);
  if (result)
  {
    *a3 = siglen;
    return 1;
  }

  return result;
}

uint64_t pkey_dsa_verify(uint64_t a1, unsigned __int8 *sigbuf, unint64_t siglen, unsigned __int8 *dgst, uint64_t dgst_len)
{
  if ((dgst_len | siglen) >> 31)
  {
    return 0;
  }

  v5 = dgst_len;
  v7 = siglen;
  v9 = *(*(a1 + 16) + 32);
  v10 = *(*(a1 + 40) + 24);
  if (v10)
  {
    if (EVP_MD_size(v10) != dgst_len)
    {
      return 0;
    }
  }

  return DSA_verify(0, dgst, v5, sigbuf, v7, v9);
}

uint64_t pkey_dsa_ctrl(uint64_t a1, int a2, int a3, EVP_MD *md)
{
  v5 = *(a1 + 40);
  result = 1;
  if (a2 <= 10)
  {
    if (a2 > 4)
    {
      if (a2 == 5 || a2 == 7)
      {
        return result;
      }
    }

    else
    {
      if (a2 == 1)
      {
        v7 = EVP_MD_type(md);
        if ((v7 - 672) < 4 || (v7 - 1031) < 4 || (v7 - 64) <= 0x34 && ((1 << (v7 - 64)) & 0x10000000000005) != 0)
        {
          goto LABEL_27;
        }

        v8 = 221;
        goto LABEL_34;
      }

      if (a2 == 2)
      {
        ERR_put_error(10, 4095, 150, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dsa/dsa_pmeth.c", 237);
      }
    }

    return 4294967294;
  }

  if (a2 <= 4096)
  {
    if (a2 == 11)
    {
      return result;
    }

    if (a2 == 13)
    {
      *&md->type = *(v5 + 24);
      return result;
    }

    return 4294967294;
  }

  if (a2 == 4099)
  {
    v9 = EVP_MD_type(md);
    if (v9 == 64 || v9 == 672 || v9 == 675)
    {
LABEL_27:
      *(v5 + 24) = md;
      return 1;
    }

    v8 = 199;
LABEL_34:
    ERR_put_error(10, 4095, 106, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dsa/dsa_pmeth.c", v8);
    return 0;
  }

  if (a2 != 4098)
  {
    if (a2 == 4097 && a3 >= 256)
    {
      *v5 = a3;
      return result;
    }

    return 4294967294;
  }

  HIDWORD(v11) = a3;
  LODWORD(v11) = a3;
  v10 = v11 >> 5;
  result = 4294967294;
  if (v10 <= 8 && ((1 << v10) & 0x1A1) != 0)
  {
    *(v5 + 4) = a3;
    return 1;
  }

  return result;
}

uint64_t pkey_dsa_ctrl_str(uint64_t *a1, char *__s1, const char *a3)
{
  __endptr = 0;
  if (!strcmp(__s1, "dsa_paramgen_bits"))
  {
    *__error() = 0;
    v7 = strtol(a3, &__endptr, 10);
    if (*a3)
    {
      if (!*__endptr)
      {
        v8 = v7;
        __error();
        if (v8 == v8)
        {
          v6 = a1;
          goto LABEL_14;
        }
      }
    }

    return 4294967294;
  }

  if (!strcmp(__s1, "dsa_paramgen_q_bits"))
  {
    *__error() = 0;
    v9 = strtol(a3, &__endptr, 10);
    if (*a3)
    {
      if (!*__endptr)
      {
        v10 = v9;
        __error();
        if (v10 == v10)
        {
          v6 = a1;
          goto LABEL_14;
        }
      }
    }

    return 4294967294;
  }

  if (strcmp(__s1, "dsa_paramgen_md"))
  {
    return 4294967294;
  }

  EVP_get_digestbyname(a3);
  v6 = a1;
LABEL_14:

  return EVP_PKEY_CTX_ctrl(v6, 116, 2);
}

uint64_t check_id(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 56);
  v3 = *(a1 + 16);
  if (*v2)
  {
    v4 = sk_num(*v2);
    free(*(v2 + 16));
    *(v2 + 16) = 0;
    if (v4 < 1)
    {
      if (v4)
      {
LABEL_8:
        *(a1 + 184) = *(a1 + 16);
        *(a1 + 172) = 0x3E00000000;
        result = (*(a1 + 64))(0, a1);
        if (!result)
        {
          return result;
        }
      }
    }

    else
    {
      v5 = 0;
      while (1)
      {
        v6 = sk_value(*v2, v5);
        v7 = strlen(v6);
        if (X509_check_host(v3, v6, v7, *(v2 + 8), (v2 + 16)) > 0)
        {
          break;
        }

        if (v4 == ++v5)
        {
          goto LABEL_8;
        }
      }
    }
  }

  v9 = *(v2 + 24);
  if (!v9 || X509_check_email(v3, v9, *(v2 + 32), 0) > 0 || (*(a1 + 184) = *(a1 + 16), *(a1 + 172) = 0x3F00000000, result = (*(a1 + 64))(0, a1), result))
  {
    v10 = *(v2 + 40);
    if (!v10)
    {
      return 1;
    }

    if (X509_check_ip(v3, v10, *(v2 + 48), 0) > 0)
    {
      return 1;
    }

    *(a1 + 184) = *(a1 + 16);
    *(a1 + 172) = 0x4000000000;
    result = (*(a1 + 64))(0, a1);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

int X509_verify_cert(X509_STORE_CTX *ctx)
{
  cert = ctx->cert;
  if (!cert)
  {
    v3 = 105;
    v4 = 599;
    goto LABEL_17;
  }

  if (*&ctx->explicit_policy)
  {
    v3 = 66;
    v4 = 608;
LABEL_17:
    ERR_put_error(11, 4095, v3, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_vfy.c", v4);
    LODWORD(ctx->current_cert) = 65;
    return -1;
  }

  if (*(*(ctx->other_ctx + 7) + 56))
  {
    v3 = 66;
    v4 = 617;
    goto LABEL_17;
  }

  if (LODWORD(ctx->current_cert) != 65)
  {
    v3 = 66;
    v4 = 625;
    goto LABEL_17;
  }

  if (check_key_level(ctx, cert))
  {
    goto LABEL_12;
  }

  v5 = ctx->cert;
  *(&ctx->error + 1) = 0;
  if (!v5)
  {
    v5 = sk_value(*&ctx->explicit_policy, 0);
  }

  ctx->current_issuer = v5;
  LODWORD(ctx->current_cert) = 67;
  result = (ctx->verify_cb)(0, ctx);
  if (result)
  {
LABEL_12:
    if ((*(ctx->other_ctx + 26) & 0x50) != 0)
    {

      return X509_verify_cert_legacy(ctx);
    }

    else
    {
      v7 = x509_verify_ctx_new_from_xsc(ctx);
      if (v7)
      {
        v8 = v7;
        LODWORD(ctx->current_cert) = 0;
        v9 = x509_verify(v7, 0, 0);
        x509_verify_ctx_free(v8);
        if (v9 >= 1)
        {
          return *&ctx->explicit_policy != 0;
        }
      }

      else
      {
        x509_verify_ctx_free(0);
      }

      return 0;
    }
  }

  return result;
}

uint64_t check_key_level(uint64_t a1, uint64_t a2)
{
  v3 = X509_get0_pubkey(a2);
  if (!v3)
  {
    return 0;
  }

  v4 = EVP_PKEY_security_bits(v3);
  if (v4 < 1)
  {
    return 0;
  }

  v5 = *(*(a1 + 48) + 44);

  return enough_bits_for_security_level(v4, v5);
}

uint64_t X509_verify_cert_legacy(uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = (a1 + 176);
  p = 0;
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  v5 = sk_new_null();
  *(v2 - 2) = v5;
  if (!v5 || !sk_push(v5, *(a1 + 16)))
  {
    ERR_put_error(11, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_vfy.c", 255);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v7 = 0;
LABEL_9:
    v12 = 17;
LABEL_10:
    *v2 = v12;
    goto LABEL_11;
  }

  X509_up_ref(*(a1 + 16));
  *(a1 + 156) = 1;
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = sk_dup(v6);
    if (!v7)
    {
      v8 = 265;
LABEL_6:
      ERR_put_error(11, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_vfy.c", v8);
      v9 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = sk_num(*(a1 + 160));
  v18 = sk_value(*(a1 + 160), v17 - 1);
  v19 = *(v3 + 40);
  v43 = v19;
  if (v19 >= v17)
  {
    v21 = v18;
    v20 = v19 + 1;
    while (1)
    {
      X509_check_purpose(v21, -1, 0);
      if ((v21[57] & 0x20) != 0)
      {
LABEL_46:
        v41 = v4;
        v11 = 0;
        goto LABEL_50;
      }

      if ((*(*(a1 + 48) + 25) & 0x80) != 0)
      {
        v22 = (*(a1 + 72))(&p, a1, v21);
        v11 = v22;
        if ((v22 & 0x80000000) != 0)
        {
          goto LABEL_48;
        }

        if (v22)
        {
          break;
        }
      }

      if (!*(a1 + 24))
      {
        goto LABEL_46;
      }

      issuer = find_issuer(a1, v7, v21, 0);
      p = issuer;
      if (!issuer)
      {
        if ((*(*(a1 + 48) + 25) & 0x80) != 0)
        {
          goto LABEL_46;
        }

        v24 = (*(a1 + 72))(&p, a1, v21);
        v11 = v24;
        if ((v24 & 0x80000000) != 0)
        {
LABEL_48:
          v9 = 0;
          v10 = 0;
          v12 = 66;
          goto LABEL_10;
        }

        if (v24)
        {
          break;
        }

        issuer = find_issuer(a1, v7, v21, 1);
        p = issuer;
        if (!issuer)
        {
          goto LABEL_46;
        }
      }

      if (!sk_push(*(a1 + 160), issuer))
      {
        v8 = 327;
        goto LABEL_6;
      }

      X509_up_ref(p);
      sk_delete_ptr(v7, p);
      ++*(a1 + 156);
      v21 = p;
      if (v20 == ++v17)
      {
        v41 = v4;
        v11 = 0;
        v17 = v20;
        goto LABEL_50;
      }
    }

    v41 = v4;
    X509_free(p);
  }

  else
  {
    v41 = v4;
    v11 = 0;
    v20 = v19 + 1;
  }

LABEL_50:
  v9 = 0;
  v42 = 0;
  v40 = v20;
  v44 = v20 - 1;
  v25 = v17;
LABEL_51:
  v26 = sk_num(*(a1 + 160));
  v27 = v26 - 1;
  v28 = sk_value(*(a1 + 160), v26 - 1);
  X509_check_purpose(v28, -1, 0);
  if ((v28[57] & 0x20) != 0)
  {
    if (v26 != 1)
    {
      v9 = sk_pop(*(a1 + 160));
      --*(a1 + 156);
      v30 = v25 - 1;
      v28 = sk_value(*(a1 + 160), v17 - 2);
      --v17;
      goto LABEL_63;
    }

    v29 = (*(a1 + 72))(&p, a1, v28);
    if (v29 <= 0)
    {
      *(a1 + 184) = v28;
      *(a1 + 172) = v27;
      *(a1 + 176) = 18;
LABEL_59:
      v11 = v41(0, a1);
      v10 = 1;
      if (!v11)
      {
        goto LABEL_11;
      }

      v42 = 1;
      goto LABEL_62;
    }

    v11 = v29;
    if (X509_cmp(v28, p))
    {
      *(a1 + 184) = v28;
      *(a1 + 172) = v27;
      *(a1 + 176) = 18;
      if (v11 == 1)
      {
        X509_free(p);
      }

      goto LABEL_59;
    }

    X509_free(v28);
    v28 = p;
    sk_set(*(a1 + 160), 0, p);
    *(a1 + 156) = 0;
  }

LABEL_62:
  v30 = v25;
LABEL_63:
  if (v43 >= v17)
  {
    X509_check_purpose(v28, -1, 0);
    while (1)
    {
      if ((v28[57] & 0x20) != 0)
      {
        goto LABEL_64;
      }

      v36 = (*(a1 + 72))(&p, a1, v28);
      v11 = v36;
      if ((v36 & 0x80000000) != 0)
      {
        break;
      }

      if (!v36)
      {
        goto LABEL_64;
      }

      v28 = p;
      if (!sk_push(*(a1 + 160), p))
      {
        X509_free(p);
        ERR_put_error(11, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_vfy.c", 425);
        v11 = 0;
        v39 = 17;
        goto LABEL_101;
      }

      if (v44 == v17)
      {
        v17 = v40;
        goto LABEL_64;
      }

      X509_check_purpose(v28, -1, 0);
      ++v17;
    }

    v39 = 66;
LABEL_101:
    *v2 = v39;
    goto LABEL_107;
  }

LABEL_64:
  v31 = check_trust(a1);
  if (v31 == 1)
  {
    v10 = v42;
    goto LABEL_98;
  }

  if (v31 != 2)
  {
    if ((*(*(a1 + 48) + 25) & 0x1080) == 0 && v30 >= 2)
    {
      while (1)
      {
        v33 = sk_value(*(a1 + 160), v30 - 2);
        v34 = (*(a1 + 72))(&p, a1, v33);
        v11 = v34;
        if ((v34 & 0x80000000) != 0)
        {
          goto LABEL_107;
        }

        v25 = v30 - 1;
        if (v34)
        {
          X509_free(p);
          if (v17 >= v30)
          {
            v37 = v17 + 1;
            do
            {
              p = sk_pop(*(a1 + 160));
              X509_free(p);
              --v37;
            }

            while (v37 > v30);
            v17 = v30 - 1;
          }

          *(a1 + 156) = sk_num(*(a1 + 160));
          goto LABEL_51;
        }

        v35 = v30--;
        if (v35 < 3)
        {
          v11 = 0;
          break;
        }
      }
    }

    v10 = v42;
    if (v42)
    {
      goto LABEL_98;
    }

    if (v9 && (*(a1 + 80))(a1, v28, v9))
    {
      if (!sk_push(*(a1 + 160), v9))
      {
        ERR_put_error(11, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_vfy.c", 496);
LABEL_7:
        v10 = 0;
        v11 = 0;
        goto LABEL_9;
      }

      *(a1 + 156) = v17 + 1;
      *(a1 + 184) = v9;
      *(a1 + 176) = 19;
      v9 = 0;
    }

    else
    {
      v38 = *(a1 + 156) >= v17 ? 20 : 2;
      *(a1 + 176) = v38;
      *(a1 + 184) = v28;
      --v17;
    }

    *(a1 + 172) = v17;
    v11 = v41(0, a1);
    v10 = 1;
    if (v11)
    {
LABEL_98:
      v13 = 0;
      goto LABEL_12;
    }

LABEL_11:
    v13 = 1;
    goto LABEL_12;
  }

  v11 = 0;
LABEL_107:
  v13 = 1;
  v10 = v42;
LABEL_12:
  sk_free(v7);
  X509_free(v9);
  if (v13)
  {
    goto LABEL_13;
  }

  if (x509_vfy_check_chain_extensions(a1))
  {
    if (x509_vfy_check_security_level(a1))
    {
      if (x509_constraints_chain(*(a1 + 160), v2, (a1 + 172)) || (*(a1 + 184) = sk_value(*(a1 + 160), *(a1 + 172)), (*(a1 + 64))(0, a1)))
      {
        if (X509v3_asid_validate_path(a1) && X509v3_addr_validate_path(a1) && check_id(a1) && (*(a1 + 88))(a1))
        {
          v14 = *(a1 + 56);
          if (v14)
          {
            v15 = v14(a1);
          }

          else
          {
            v15 = x509_vfy_internal_verify(a1, 0);
          }

          v11 = v15;
          if (v15 && !v10)
          {
            v11 = (*(a1 + 120))(a1);
          }

LABEL_13:
          if (v11 > 0)
          {
            return v11;
          }

          goto LABEL_26;
        }
      }
    }
  }

  v11 = 0;
LABEL_26:
  if (!*v2)
  {
    *v2 = 1;
  }

  return v11;
}

uint64_t x509_vfy_check_chain_extensions(uint64_t a1)
{
  if (*(a1 + 216))
  {
    v2 = 6;
  }

  else
  {
    v2 = *(*(a1 + 48) + 32);
  }

  if (*(a1 + 156) >= 1)
  {
    v3 = 0;
    LODWORD(v4) = 0;
    v5 = 0;
    v6 = *(a1 + 64);
    v7 = 1;
    while (1)
    {
      v8 = sk_value(*(a1 + 160), v5);
      v9 = v8;
      if ((*(*(a1 + 48) + 24) & 0x10) == 0 && (v8[57] & 2) != 0)
      {
        *(a1 + 172) = v5;
        *(a1 + 176) = 34;
        *(a1 + 184) = v8;
        if (!v6(0, a1))
        {
          return 0;
        }
      }

      v10 = X509_check_ca(v9);
      if (v7)
      {
        v11 = *(a1 + 48);
        if ((*(v11 + 24) & 0x20) == 0 || v10 <= 1)
        {
          goto LABEL_18;
        }
      }

      else if (v10)
      {
        v11 = *(a1 + 48);
        if ((*(v11 + 24) & 0x20) == 0 || v10 == 1)
        {
          goto LABEL_18;
        }
      }

      *(a1 + 172) = v5;
      *(a1 + 176) = 24;
      *(a1 + 184) = v9;
      if (!v6(0, a1))
      {
        return 0;
      }

      v11 = *(a1 + 48);
LABEL_18:
      if (*(v11 + 32) >= 1)
      {
        v12 = X509_check_purpose(v9, v2, v4);
        if (!v12 || v12 != 1 && (*(*(a1 + 48) + 24) & 0x20) != 0)
        {
          *(a1 + 172) = v5;
          *(a1 + 176) = 26;
          *(a1 + 184) = v9;
          if (!v6(0, a1))
          {
            return 0;
          }
        }
      }

      if (v5 >= 2 && (v9[56] & 0x20) == 0)
      {
        v13 = *(v9 + 6);
        if (v13 != -1 && v13 + 1 < v3)
        {
          *(a1 + 172) = v5;
          *(a1 + 176) = 25;
          *(a1 + 184) = v9;
          if (!v6(0, a1))
          {
            return 0;
          }
        }
      }

      v7 = 0;
      if ((v9[56] & 0x20) == 0)
      {
        ++v3;
      }

      ++v5;
      v4 = 1;
      if (v5 >= *(a1 + 156))
      {
        return v4;
      }
    }
  }

  return 1;
}

char *x509_vfy_lookup_cert_match(void *a1, X509 *a2)
{
  if (a1[16] && *a1 && **a1)
  {
    return lookup_cert_match(a1, a2);
  }

  else
  {
    return 0;
  }
}

char *lookup_cert_match(uint64_t a1, X509 *a)
{
  v4 = *(a1 + 128);
  subject_name = X509_get_subject_name(a);
  v6 = v4(a1, subject_name);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = 0;
  if (sk_num(v6))
  {
    do
    {
      v9 = sk_value(v7, v8);
      if (!X509_cmp(v9, a))
      {
        break;
      }

      ++v8;
    }

    while (v8 < sk_num(v7));
  }

  else
  {
    v9 = 0;
  }

  if (v8 >= sk_num(v7))
  {
    v9 = 0;
  }

  else
  {
    X509_up_ref(v9);
  }

  sk_pop_free(v7, X509_free);
  return v9;
}

uint64_t check_trust(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 156);
  if (v3 < sk_num(*(a1 + 160)))
  {
    do
    {
      v4 = sk_value(*(a1 + 160), v3);
      v5 = X509_check_trust(v4, *(*(a1 + 48) + 36), 0);
      v6 = v5;
      if (v5 == 2)
      {
        *(a1 + 184) = v4;
        *(a1 + 172) = v3;
        *(a1 + 176) = 28;
        if (!v2(0, a1))
        {
          return v6;
        }
      }

      else if (v5 == 1)
      {
        return v6;
      }

      ++v3;
    }

    while (v3 < sk_num(*(a1 + 160)));
  }

  if ((*(*(a1 + 48) + 26) & 8) == 0)
  {
    return 3;
  }

  v7 = *(a1 + 156);
  if (v7 < sk_num(*(a1 + 160)))
  {
    return 1;
  }

  v8 = sk_value(*(a1 + 160), 0);
  v9 = lookup_cert_match(a1, v8);
  if (v9)
  {
    sk_set(*(a1 + 160), 0, v9);
    X509_free(v8);
    *(a1 + 156) = 0;
    return 1;
  }

  return 3;
}

uint64_t check_revocation(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 24);
  if ((v1 & 4) == 0)
  {
    return 1;
  }

  if ((v1 & 8) == 0)
  {
    if (!*(a1 + 216))
    {
      v3 = 0;
      goto LABEL_6;
    }

    return 1;
  }

  v4 = sk_num(*(a1 + 160));
  v3 = v4 - 1;
  if (v4 < 1)
  {
    return 1;
  }

LABEL_6:
  v5 = 0;
LABEL_7:
  v6 = *(a1 + 160);
  a = 0;
  *(a1 + 172) = v5;
  v7 = sk_value(v6, v5);
  v8 = 0;
  *(a1 + 184) = v7;
  *(a1 + 192) = 0;
  *(a1 + 208) = 0;
  while (1)
  {
    v9 = *(a1 + 96);
    if (!v9)
    {
      v26 = 0;
      v25 = 0;
      v22 = 0;
      v23 = 0;
      issuer_name = X509_get_issuer_name(v7);
      v24 = *(a1 + 212);
      if (!get_crl_sk(a1, &v23, &v22, &v26, &v25, &v24, *(a1 + 40)))
      {
        v12 = (*(a1 + 136))(a1, issuer_name);
        v13 = v23;
        if (v12)
        {
          v14 = 1;
        }

        else
        {
          v14 = v23 == 0;
        }

        if (!v14)
        {
LABEL_19:
          *(a1 + 192) = v26;
          v16 = v24;
          *(a1 + 208) = v25;
          *(a1 + 212) = v16;
          a = v13;
          v10 = v22;
          goto LABEL_21;
        }

        v15 = v12;
        get_crl_sk(a1, &v23, &v22, &v26, &v25, &v24, v12);
        sk_pop_free(v15, X509_CRL_free);
      }

      v13 = v23;
      if (!v23)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    v10 = 0;
    if (!v9(a1, &a, v7))
    {
      goto LABEL_30;
    }

LABEL_21:
    *(a1 + 200) = a;
    if (!(*(a1 + 104))(a1))
    {
      goto LABEL_35;
    }

    if (!v10)
    {
      goto LABEL_26;
    }

    if (!(*(a1 + 104))(a1, v10))
    {
      goto LABEL_35;
    }

    v17 = (*(a1 + 112))(a1, v10, v7);
    if (v17 != 2)
    {
      break;
    }

LABEL_27:
    *(a1 + 200) = 0;
    X509_CRL_free(a);
    X509_CRL_free(v10);
    a = 0;
    v18 = *(a1 + 212);
    if (v8 == v18)
    {
LABEL_30:
      *(a1 + 176) = 3;
      v19 = (*(a1 + 64))(0, a1);
      *(a1 + 200) = 0;
      X509_CRL_free(a);
      X509_CRL_free(0);
      if (!v19)
      {
        return 0;
      }

      goto LABEL_31;
    }

    v8 = *(a1 + 212);
    if (v18 == 32895)
    {
      *(a1 + 200) = 0;
      X509_CRL_free(0);
      X509_CRL_free(0);
LABEL_31:
      result = 1;
      v14 = v5++ == v3;
      if (v14)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  if (!v17)
  {
    goto LABEL_35;
  }

LABEL_26:
  if ((*(a1 + 112))(a1, a, v7))
  {
    goto LABEL_27;
  }

LABEL_35:
  *(a1 + 200) = 0;
  X509_CRL_free(a);
  X509_CRL_free(v10);
  return 0;
}

uint64_t x509_vfy_check_policy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  *&policy_oids.num = 0;
  if (*(a1 + 216))
  {
    return 1;
  }

  v7 = X509_policy_check(*(a1 + 160), *(*(a1 + 48) + 48), *(*(a1 + 48) + 24), &policy_oids, a5);
  if (v7)
  {
    *(a1 + 184) = *&policy_oids.num;
    *(a1 + 176) = v7;
    if (v7 == 17)
    {
      return 0;
    }

    else
    {
      return (*(a1 + 64))(0, a1);
    }
  }

  else
  {
    if ((*(*(a1 + 48) + 25) & 8) == 0)
    {
      return 1;
    }

    *(a1 + 184) = 0;
    result = (*(a1 + 64))(2, a1);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t x509_check_cert_time(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 48);
  v7 = *(v6 + 24);
  if ((v7 & 2) != 0)
  {
    v8 = *(v6 + 8);
  }

  else
  {
    if ((v7 & 0x200000) != 0)
    {
      return 1;
    }

    v8 = time(0);
  }

  if (*(a2 + 57))
  {
    v10 = *(a2 + 208);
    v11 = v8 == -1 || v10 == -1;
  }

  else
  {
    v9 = X509_getm_notBefore(a2);
    v10 = x509_verify_asn1_time_to_time_t(v9, 0);
    v11 = v10 == -1;
  }

  v12 = v11;
  if (v10 > v8)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if (a3 < 0 && (v13 & 1) != 0)
  {
    return 0;
  }

  if (v12)
  {
    *(a1 + 184) = a2;
    v14 = 13;
    goto LABEL_22;
  }

  if (v10 > v8)
  {
    *(a1 + 184) = a2;
    v14 = 9;
LABEL_22:
    *(a1 + 172) = a3;
    *(a1 + 176) = v14;
    result = (*(a1 + 64))(0, a1);
    if (!result)
    {
      return result;
    }
  }

  if (*(a2 + 57))
  {
    v17 = *(a2 + 216);
    v18 = v8 == -1 || v17 == -1;
  }

  else
  {
    v16 = X509_getm_notAfter(a2);
    v17 = x509_verify_asn1_time_to_time_t(v16, 1);
    v18 = v17 == -1;
  }

  v19 = v18;
  if (v17 > v8)
  {
    v20 = 1;
  }

  else
  {
    v20 = -1;
  }

  if (v19)
  {
    v20 = 0;
  }

  if (a3 < 0 && v20 < 1)
  {
    return 0;
  }

  if (v19)
  {
    *(a1 + 184) = a2;
    v21 = 14;
    goto LABEL_43;
  }

  if (v20 < 0)
  {
    *(a1 + 184) = a2;
    v21 = 10;
LABEL_43:
    *(a1 + 172) = a3;
    *(a1 + 176) = v21;
    result = (*(a1 + 64))(0, a1);
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

uint64_t X509_cmp_time_internal(int *a1, time_t *a2, int a3)
{
  if (a2)
  {
    v5 = *a2;
  }

  else
  {
    v5 = time(0);
  }

  v6 = x509_verify_asn1_time_to_time_t(a1, a3);
  if (v6 > v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  if (v6 == -1)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t x509_vfy_internal_verify(uint64_t a1, int a2)
{
  v4 = sk_num(*(a1 + 160));
  v5 = v4 - 1;
  v6 = sk_value(*(a1 + 160), v4 - 1);
  if ((*(a1 + 80))(a1, v6, v6))
  {
    v7 = v6;
    while ((v5 & 0x80000000) == 0)
    {
      if (!a2)
      {
        if (v6 != v7 || (*(*(a1 + 48) + 25) & 0x40) != 0)
        {
          pubkey = X509_get_pubkey(v7);
          if (pubkey)
          {
            if (X509_verify(v6, pubkey) <= 0)
            {
              *(a1 + 172) = v5;
              v11 = v6;
              if (!v6)
              {
                v11 = sk_value(*(a1 + 160), v5);
              }

              *(a1 + 184) = v11;
              *(a1 + 176) = 7;
              if (!(*(a1 + 64))(0, a1))
              {
                EVP_PKEY_free(pubkey);
                return 0;
              }
            }
          }

          else
          {
            if (v6 == v7)
            {
              v12 = v5;
            }

            else
            {
              v12 = v5 + 1;
            }

            *(a1 + 172) = v12;
            v13 = v7;
            if (!v7)
            {
              v13 = sk_value(*(a1 + 160), v12);
            }

            *(a1 + 184) = v13;
            *(a1 + 176) = 6;
            result = (*(a1 + 64))(0, a1);
            if (!result)
            {
              return result;
            }
          }

          EVP_PKEY_free(pubkey);
        }

LABEL_31:
        result = x509_check_cert_time(a1, v6, v5);
        if (!result)
        {
          return result;
        }
      }

LABEL_32:
      *(a1 + 184) = v6;
      *(a1 + 192) = v7;
      *(a1 + 172) = v5;
      result = (*(a1 + 64))(1, a1);
      if (!result)
      {
        return result;
      }

      if (v5-- > 0)
      {
LABEL_13:
        v7 = v6;
        v6 = sk_value(*(a1 + 160), v5);
      }
    }

    return 1;
  }

  else
  {
    if ((*(*(a1 + 48) + 26) & 8) != 0)
    {
      v7 = v6;
      if (a2)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    if (v4 > 1)
    {
      v5 = v4 - 2;
      *(a1 + 172) = v4 - 2;
      goto LABEL_13;
    }

    *(a1 + 172) = 0;
    if (!v6)
    {
      v6 = sk_value(*(a1 + 160), 0);
    }

    *(a1 + 184) = v6;
    *(a1 + 176) = 21;
    v8 = *(a1 + 64);

    return v8(0, a1);
  }
}

int X509_cmp_current_time(ASN1_TIME *s)
{
  v2 = time(0);
  v3 = x509_verify_asn1_time_to_time_t(&s->length, 0);
  if (v3 > v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = -1;
  }

  if (v3 == -1)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

ASN1_TIME *__cdecl X509_gmtime_adj(ASN1_TIME *s, uint64_t adj)
{
  v4 = time(0);

  return ASN1_TIME_adj(s, v4, 0, adj);
}

ASN1_TIME *X509_time_adj_ex(ASN1_TIME *a1, int a2, uint64_t a3, time_t *a4)
{
  if (a4)
  {
    v7 = *a4;
  }

  else
  {
    v7 = time(0);
  }

  return ASN1_TIME_adj(a1, v7, a2, a3);
}

int X509_get_pubkey_parameters(EVP_PKEY *pkey, STACK *chain)
{
  if (pkey && !EVP_PKEY_missing_parameters(pkey))
  {
LABEL_15:
    LODWORD(v11) = 1;
    return v11;
  }

  if (sk_num(chain) < 1)
  {
LABEL_8:
    v8 = 107;
    v9 = 2049;
LABEL_17:
    ERR_put_error(11, 4095, v8, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_vfy.c", v9);
    LODWORD(v11) = 0;
  }

  else
  {
    v4 = 0;
    while (1)
    {
      v5 = sk_value(chain, v4);
      v6 = X509_get0_pubkey(v5);
      if (!v6)
      {
        v8 = 108;
        v9 = 2040;
        goto LABEL_17;
      }

      v7 = v6;
      if (!EVP_PKEY_missing_parameters(v6))
      {
        break;
      }

      if (++v4 >= sk_num(chain))
      {
        goto LABEL_8;
      }
    }

    while (1)
    {
      v12 = __OFSUB__(v4--, 1);
      if (v4 < 0 != v12)
      {
        break;
      }

      v10 = sk_value(chain, v4);
      v11 = X509_get0_pubkey(v10);
      if (v11)
      {
        LODWORD(v11) = EVP_PKEY_copy_parameters(v11, v7);
        if (v11)
        {
          continue;
        }
      }

      return v11;
    }

    if (!pkey)
    {
      goto LABEL_15;
    }

    LODWORD(v11) = EVP_PKEY_copy_parameters(pkey, v7);
    if (v11)
    {
      goto LABEL_15;
    }
  }

  return v11;
}

STACK *__cdecl X509_STORE_CTX_get1_chain(X509_STORE_CTX *ctx)
{
  v1 = *&ctx->explicit_policy;
  if (!v1)
  {
    return 0;
  }

  v2 = sk_dup(v1);
  v3 = v2;
  if (v2 && sk_num(v2) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = sk_value(v3, v4);
      CRYPTO_add_lock(v5 + 7, 1, 3, 0, 0);
      ++v4;
    }

    while (v4 < sk_num(v3));
  }

  return v3;
}

int X509_STORE_CTX_purpose_inherit(X509_STORE_CTX *ctx, int def_purpose, int purpose, int trust)
{
  if (purpose)
  {
    v6 = purpose;
  }

  else
  {
    v6 = def_purpose;
  }

  if (!v6)
  {
LABEL_13:
    if (!trust)
    {
      v13 = 1;
      if (!v6)
      {
        goto LABEL_20;
      }

LABEL_19:
      other_ctx = ctx->other_ctx;
      if (!other_ctx[8])
      {
        other_ctx[8] = v6;
        if ((v13 & 1) == 0)
        {
LABEL_21:
          v15 = ctx->other_ctx;
          if (!v15[9])
          {
            v15[9] = trust;
          }
        }

        return 1;
      }

LABEL_20:
      if ((v13 & 1) == 0)
      {
        goto LABEL_21;
      }

      return 1;
    }

    goto LABEL_14;
  }

  v8 = X509_PURPOSE_get_by_id(v6);
  if (v8 == -1)
  {
    v10 = 121;
    v11 = 2253;
    goto LABEL_26;
  }

  v9 = X509_PURPOSE_get0(v8);
  if (v9->trust == -1)
  {
    v12 = X509_PURPOSE_get_by_id(def_purpose);
    if (v12 == -1)
    {
      v10 = 121;
      v11 = 2260;
      goto LABEL_26;
    }

    v9 = X509_PURPOSE_get0(v12);
    if (trust)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (!trust)
  {
LABEL_12:
    trust = v9->trust;
    goto LABEL_13;
  }

LABEL_14:
  if (X509_TRUST_get_by_id(trust) != -1)
  {
    v13 = 0;
    if (!v6)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v10 = 120;
  v11 = 2272;
LABEL_26:
  ERR_put_error(11, 4095, v10, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_vfy.c", v11);
  return 0;
}

X509_STORE_CTX *X509_STORE_CTX_new(void)
{
  v0 = malloc_type_calloc(1uLL, 0xE8uLL, 0x10A0040B2C3A4BFuLL);
  if (!v0)
  {
    ERR_put_error(11, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_vfy.c", 2292);
  }

  return v0;
}

void X509_STORE_CTX_free(X509_STORE_CTX *ctx)
{
  if (ctx)
  {
    X509_STORE_CTX_cleanup(ctx);

    free(ctx);
  }
}

void X509_STORE_CTX_cleanup(X509_STORE_CTX *ctx)
{
  chain = ctx->chain;
  if (chain)
  {
    (chain)(ctx);
  }

  other_ctx = ctx->other_ctx;
  if (other_ctx)
  {
    if (!ctx[1].ctx)
    {
      X509_VERIFY_PARAM_free(other_ctx);
    }

    ctx->other_ctx = 0;
  }

  v4 = *&ctx->explicit_policy;
  if (v4)
  {
    sk_pop_free(v4, X509_free);
    *&ctx->explicit_policy = 0;
  }

  CRYPTO_free_ex_data(5, ctx, &ctx[1].current_method);
  *&ctx[1].current_method = 0;
}

int X509_STORE_CTX_init(X509_STORE_CTX *ctx, X509_STORE *store, X509 *x509, STACK *chain)
{
  *&ctx->ctx = 0u;
  *&ctx->cert = 0u;
  *&ctx[1].current_method = 0;
  *&ctx->current_crl = 0u;
  *&ctx->ex_data.dummy = 0u;
  *&ctx->explicit_policy = 0u;
  *&ctx->current_cert = 0u;
  *&ctx->cleanup = 0u;
  *&ctx->chain = 0u;
  *&ctx->get_crl = 0u;
  *&ctx->cert_crl = 0u;
  *&ctx->verify_cb = 0u;
  *&ctx->check_issued = 0u;
  *&ctx->crls = 0u;
  *&ctx->other_ctx = 0u;
  LODWORD(ctx->current_cert) = 65;
  ctx->ctx = store;
  ctx->cert = x509;
  ctx->untrusted = chain;
  if (store)
  {
    param = store->param;
    if (!param)
    {
      param = internal_verify;
    }

    ctx->verify = param;
    verify = store->verify;
    if (!verify)
    {
      verify = null_callback;
    }

    ctx->verify_cb = verify;
    verify_cb = store->verify_cb;
    if (!verify_cb)
    {
      verify_cb = X509_STORE_CTX_get1_issuer;
    }

    ctx->get_issuer = verify_cb;
    get_issuer = store->get_issuer;
    if (!get_issuer)
    {
      get_issuer = ::check_issued;
    }

    ctx->check_issued = get_issuer;
    check_issued = store->check_issued;
    check_revocation = store->check_revocation;
    if (!check_issued)
    {
      check_issued = ::check_revocation;
    }

    get_crl = store->get_crl;
    ctx->check_revocation = check_issued;
    ctx->get_crl = check_revocation;
    if (get_crl)
    {
      v13 = get_crl;
    }

    else
    {
      v13 = ::check_crl;
    }

    ctx->check_crl = v13;
    check_crl = store->check_crl;
    if (!check_crl)
    {
      check_crl = ::cert_crl;
    }

    ctx->cert_crl = check_crl;
    ctx->check_policy = check_policy;
    cert_crl = store->cert_crl;
    if (!cert_crl)
    {
      cert_crl = X509_STORE_CTX_get1_certs;
    }

    ctx->cleanup = cert_crl;
    cleanup = store->cleanup;
    if (!cleanup)
    {
      cleanup = X509_STORE_CTX_get1_crls;
    }

    *&ctx->valid = cleanup;
    sk = store->ex_data.sk;
    if (sk)
    {
      ctx->chain = sk;
      v18 = X509_VERIFY_PARAM_new();
      ctx->other_ctx = v18;
      p_other_ctx = &ctx->other_ctx;
      if (v18)
      {
        v20 = v18;
        goto LABEL_27;
      }

LABEL_29:
      v22 = 2402;
      goto LABEL_36;
    }
  }

  else
  {
    ctx->verify = internal_verify;
    ctx->verify_cb = null_callback;
    ctx->get_issuer = X509_STORE_CTX_get1_issuer;
    ctx->check_issued = ::check_issued;
    ctx->check_revocation = ::check_revocation;
    ctx->get_crl = 0;
    ctx->check_crl = ::check_crl;
    ctx->cert_crl = ::cert_crl;
    ctx->check_policy = check_policy;
    ctx->cleanup = X509_STORE_CTX_get1_certs;
    *&ctx->valid = X509_STORE_CTX_get1_crls;
  }

  ctx->chain = 0;
  v21 = X509_VERIFY_PARAM_new();
  ctx->other_ctx = v21;
  p_other_ctx = &ctx->other_ctx;
  if (!v21)
  {
    goto LABEL_29;
  }

  v20 = v21;
  if (!store)
  {
    v21->inh_flags |= 0x11uLL;
    goto LABEL_31;
  }

LABEL_27:
  if (!X509_VERIFY_PARAM_inherit(v20, store->get_cert_methods))
  {
LABEL_34:
    v22 = 2419;
    goto LABEL_36;
  }

  v20 = *p_other_ctx;
LABEL_31:
  v23 = X509_VERIFY_PARAM_lookup("default");
  if (!X509_VERIFY_PARAM_inherit(v20, v23))
  {
    goto LABEL_34;
  }

  if (CRYPTO_new_ex_data(5, ctx, &ctx[1].current_method))
  {
    return 1;
  }

  v22 = 2425;
LABEL_36:
  ERR_put_error(11, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_vfy.c", v22);
  return 0;
}

uint64_t check_crl(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 172);
  v5 = sk_num(*(a1 + 160));
  v6 = *(a1 + 192);
  if (!v6)
  {
    v7 = v5 - 1;
    v8 = *(a1 + 160);
    if (v4 >= v7)
    {
      v6 = sk_value(v8, v7);
      v9 = (*(a1 + 80))(a1, v6, v6);
      if (!v9)
      {
        *(a1 + 176) = 33;
        if (!(*(a1 + 64))(v9, a1))
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      v6 = sk_value(v8, v4 + 1);
    }

    if (!v6)
    {
      goto LABEL_29;
    }
  }

  if (*(a2 + 64))
  {
    goto LABEL_8;
  }

  if ((v6[56] & 2) != 0 && (v6[64] & 2) == 0)
  {
    *(a1 + 176) = 35;
    if (!(*(a1 + 64))(0, a1))
    {
      goto LABEL_34;
    }
  }

  v12 = *(a1 + 208);
  if ((v12 & 0x80) == 0)
  {
    *(a1 + 176) = 44;
    if (!(*(a1 + 64))(0, a1))
    {
      goto LABEL_34;
    }

    v12 = *(a1 + 208);
  }

  if ((v12 & 8) == 0)
  {
    if (!*(a1 + 216))
    {
      v13 = *(a1 + 192);
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      *param = 0u;
      memset(v24, 0, sizeof(v24));
      if (!X509_STORE_CTX_init(v24, *a1, v13, *(a1 + 24)))
      {
        goto LABEL_30;
      }

      v14 = *(a1 + 48);
      *(&v25 + 1) = *(a1 + 40);
      if (param[0])
      {
        X509_VERIFY_PARAM_free(param[0]);
      }

      *(&v36 + 1) = a1;
      v15 = *(a1 + 64);
      param[0] = v14;
      *&v27 = v15;
      if (X509_verify_cert(v24) > 0)
      {
        v16 = *(a1 + 160);
        v17 = v33;
        v18 = sk_num(v16);
        v19 = sk_value(v16, v18 - 1);
        v20 = sk_num(v17);
        v21 = sk_value(v17, v20 - 1);
        LODWORD(v19) = X509_cmp(v19, v21);
        X509_STORE_CTX_cleanup(v24);
        if (!v19)
        {
          goto LABEL_32;
        }
      }

      else
      {
LABEL_30:
        X509_STORE_CTX_cleanup(v24);
      }
    }

    *(a1 + 176) = 54;
    if (!(*(a1 + 64))(0, a1))
    {
LABEL_34:
      v6 = 0;
      goto LABEL_35;
    }
  }

LABEL_32:
  if ((*(a2 + 48) & 2) != 0)
  {
    *(a1 + 176) = 41;
    if (!(*(a1 + 64))(0, a1))
    {
      goto LABEL_34;
    }
  }

LABEL_8:
  if ((*(a1 + 208) & 0x40) == 0 && !check_crl_time(a1, a2, 1))
  {
    goto LABEL_34;
  }

  pubkey = X509_get_pubkey(v6);
  v6 = pubkey;
  if (!pubkey)
  {
    *(a1 + 176) = 6;
    v11 = (*(a1 + 64))(0, a1);
LABEL_28:
    if (v11)
    {
      goto LABEL_29;
    }

LABEL_35:
    v22 = 0;
    goto LABEL_36;
  }

  if (X509_CRL_verify(a2, pubkey) <= 0)
  {
    *(a1 + 176) = 8;
    v11 = (*(a1 + 64))(0, a1);
    goto LABEL_28;
  }

LABEL_29:
  v22 = 1;
LABEL_36:
  EVP_PKEY_free(v6);
  return v22;
}

uint64_t cert_crl(uint64_t a1, uint64_t a2, X509 *x)
{
  if ((*(*(a1 + 48) + 24) & 0x10) != 0 || (*(a2 + 29) & 2) == 0 || (*(a1 + 176) = 36, result = (*(a1 + 64))(0, a1), result))
  {
    v7 = 0;
    if (!X509_CRL_get0_by_cert(a2, &v7, x))
    {
      return 1;
    }

    if (*(v7 + 32) == 8)
    {
      return 2;
    }

    *(a1 + 176) = 23;
    result = (*(a1 + 64))(0, a1);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t X509_STORE_CTX_set0_trusted_stack(uint64_t result, uint64_t a2)
{
  *(result + 32) = a2;
  *(result + 72) = get_trusted_issuer;
  return result;
}

uint64_t get_trusted_issuer(char **a1, uint64_t a2, uint64_t a3)
{
  issuer = find_issuer(a2, *(a2 + 32), a3, 1);
  *a1 = issuer;
  if (!issuer)
  {
    return 0;
  }

  v5 = 1;
  CRYPTO_add_lock(issuer + 7, 1, 3, 0, 0);
  return v5;
}

int X509_STORE_CTX_set_default(X509_STORE_CTX *ctx, const char *name)
{
  v3 = X509_VERIFY_PARAM_lookup(name);
  if (v3)
  {
    v4 = v3;
    other_ctx = ctx->other_ctx;

    LODWORD(v3) = X509_VERIFY_PARAM_inherit(other_ctx, v4);
  }

  return v3;
}

void X509_STORE_CTX_set0_param(X509_STORE_CTX *ctx, X509_VERIFY_PARAM *param)
{
  other_ctx = ctx->other_ctx;
  if (other_ctx)
  {
    X509_VERIFY_PARAM_free(other_ctx);
  }

  ctx->other_ctx = param;
}

uint64_t x509_vfy_check_security_level(uint64_t a1)
{
  v2 = sk_num(*(a1 + 160));
  if (*(*(a1 + 48) + 44) < 1 || v2 < 1)
  {
    return 1;
  }

  v5 = 0;
  v6 = v2 - 1;
  while (1)
  {
    v7 = sk_value(*(a1 + 160), v5);
    if (v5 && !check_key_level(a1, v7))
    {
      *(a1 + 172) = v5;
      v8 = v7;
      if (!v7)
      {
        v8 = sk_value(*(a1 + 160), v5);
      }

      *(a1 + 184) = v8;
      *(a1 + 176) = 68;
      result = (*(a1 + 64))(0, a1);
      if (!result)
      {
        break;
      }
    }

    if (v6 == v5)
    {
      return 1;
    }

    signature_nid = X509_get_signature_nid(v7);
    if (!signature_nid || (n = 0, !OBJ_find_sigid_algs(signature_nid, &n, 0)) || !n || (v10 = OBJ_nid2sn(n), (digestbyname = EVP_get_digestbyname(v10)) == 0) || (v12 = EVP_MD_size(digestbyname), !enough_bits_for_security_level(4 * v12, *(*(a1 + 48) + 44))))
    {
      *(a1 + 172) = v5;
      if (!v7)
      {
        v7 = sk_value(*(a1 + 160), v5);
      }

      *(a1 + 184) = v7;
      *(a1 + 176) = 69;
      result = (*(a1 + 64))(0, a1);
      if (!result)
      {
        break;
      }
    }

    ++v5;
  }

  return result;
}

char *find_issuer(uint64_t a1, STACK *a2, uint64_t a3, int a4)
{
  if (sk_num(a2) < 1)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = sk_value(a2, v9);
    if ((*(a1 + 80))(a1, a3, v10))
    {
      if (x509_check_cert_time(a1, v10, -1))
      {
        return v10;
      }

      if (a4)
      {
        v8 = v10;
      }
    }

    ++v9;
    v10 = v8;
  }

  while (v9 < sk_num(a2));
  return v10;
}

BOOL get_crl_sk(uint64_t a1, X509_CRL **a2, X509_CRL **a3, char **a4, int *a5, _DWORD *a6, STACK *a7)
{
  v7 = a7;
  v13 = *a5;
  v77 = *(a1 + 184);
  if (sk_num(a7) < 1)
  {
    return v13 > 447;
  }

  v68 = a5;
  v69 = a3;
  v66 = a2;
  v67 = a4;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v73 = a6;
  v19 = v77;
  v76 = v7;
  do
  {
    v20 = sk_value(v7, v17);
    v21 = v20;
    v22 = *a6;
    v23 = *(v20 + 12);
    if ((v23 & 2) != 0)
    {
      goto LABEL_41;
    }

    if ((*(*(a1 + 48) + 25) & 0x10) != 0)
    {
      if ((v23 & 0x40) != 0)
      {
        if ((*(v20 + 13) & ~v22) == 0)
        {
          goto LABEL_41;
        }
      }

      else if (*(v20 + 8))
      {
        goto LABEL_41;
      }
    }

    else if ((v23 & 0x60) != 0)
    {
      goto LABEL_41;
    }

    v80 = *a6;
    v78 = v18;
    issuer_name = X509_get_issuer_name(v19);
    issuer = X509_CRL_get_issuer(v21);
    if (X509_NAME_cmp(issuer_name, issuer))
    {
      v26 = 0;
      v27 = a1;
      if ((*(v21 + 48) & 0x20) == 0)
      {
        v7 = v76;
        v18 = v78;
        v22 = v80;
        goto LABEL_42;
      }
    }

    else
    {
      v26 = 32;
      v27 = a1;
    }

    v28 = ((*(v21 + 28) >> 1) & 0x100 | v26) ^ 0x100;
    if (check_crl_time(v27, v21, 0))
    {
      v29 = v28 | 0x40;
    }

    else
    {
      v29 = v28;
    }

    v30 = X509_CRL_get_issuer(v21);
    v31 = *(v27 + 172);
    if (v31 != sk_num(*(v27 + 160)) - 1)
    {
      ++v31;
    }

    v32 = sk_value(*(v27 + 160), v31);
    if (X509_check_akid(v32, *(v21 + 32)) || (v29 & 0x20) == 0)
    {
      v74 = v29;
      v33 = v31 + 1;
      v34 = a1;
      while (v33 < sk_num(*(a1 + 160)))
      {
        v35 = sk_value(*(a1 + 160), v33);
        subject_name = X509_get_subject_name(v35);
        if (!X509_NAME_cmp(subject_name, v30) && !X509_check_akid(v35, *(v21 + 32)))
        {
          v26 = v74 | 0xC;
          v18 = v35;
LABEL_39:
          a6 = v73;
          v19 = v77;
          goto LABEL_40;
        }

        ++v33;
      }

      v19 = v77;
      if ((*(*(a1 + 48) + 25) & 0x10) != 0 && sk_num(*(a1 + 24)) >= 1)
      {
        v37 = 0;
        while (1)
        {
          v38 = v34;
          v39 = sk_value(*(v34 + 24), v37);
          v40 = X509_get_subject_name(v39);
          if (!X509_NAME_cmp(v40, v30) && !X509_check_akid(v39, *(v21 + 32)))
          {
            break;
          }

          ++v37;
          v34 = v38;
          if (v37 >= sk_num(*(v38 + 24)))
          {
            a6 = v73;
            v19 = v77;
            goto LABEL_36;
          }
        }

        v26 = v74 | 4;
        v18 = v39;
        goto LABEL_39;
      }

      a6 = v73;
LABEL_36:
      v18 = v78;
      v26 = v74;
    }

    else
    {
      v26 = v29 | 0x1C;
      v18 = v32;
      v19 = v77;
      a6 = v73;
    }

LABEL_40:
    v7 = v76;
    v22 = v80;
    if ((v26 & 4) == 0)
    {
LABEL_41:
      v26 = 0;
      goto LABEL_42;
    }

    v41 = *(v21 + 48);
    if ((v41 & 0x10) != 0)
    {
      goto LABEL_42;
    }

    if ((*(v19 + 56) & 0x10) != 0)
    {
      if ((v41 & 4) != 0)
      {
        goto LABEL_42;
      }
    }

    else if ((v41 & 8) != 0)
    {
      goto LABEL_42;
    }

    v75 = v26;
    v79 = v18;
    v64 = *(v21 + 52);
    if (sk_num(*(v19 + 104)) >= 1)
    {
      v42 = 0;
      while (1)
      {
        v43 = sk_value(*(v19 + 104), v42);
        v44 = X509_CRL_get_issuer(v21);
        v45 = *(v43 + 2);
        if (v45)
        {
          if (sk_num(v45) < 1)
          {
            goto LABEL_87;
          }

          v46 = 0;
          while (1)
          {
            v47 = sk_value(*(v43 + 2), v46);
            if (*v47 == 4 && !X509_NAME_cmp(*(v47 + 1), v44))
            {
              break;
            }

            if (++v46 >= sk_num(*(v43 + 2)))
            {
              goto LABEL_87;
            }
          }
        }

        else if ((v75 & 0x20) == 0)
        {
          goto LABEL_87;
        }

        v48 = *(v21 + 40);
        if (!v48)
        {
          goto LABEL_92;
        }

        v70 = *v43;
        if (!*v43)
        {
          goto LABEL_92;
        }

        v49 = *v48;
        if (!*v48)
        {
          goto LABEL_92;
        }

        if (*v70 == 1)
        {
          break;
        }

        if (*v49 == 1)
        {
          a = *(v49 + 16);
          if (!a)
          {
            goto LABEL_87;
          }

LABEL_82:
          v53 = *(v70 + 8);
          if (sk_num(v53) >= 1)
          {
            v54 = 0;
            while (1)
            {
              v55 = sk_value(v53, v54);
              if (*v55 == 4 && !X509_NAME_cmp(a, *(v55 + 1)))
              {
                goto LABEL_92;
              }

              if (++v54 >= sk_num(v53))
              {
                goto LABEL_87;
              }
            }
          }

          goto LABEL_87;
        }

        if (sk_num(*(v70 + 8)) >= 1)
        {
          v65 = 0;
          while (1)
          {
            aa = sk_value(*(v70 + 8), v65);
            if (sk_num(*(v49 + 8)) >= 1)
            {
              break;
            }

LABEL_79:
            if (++v65 >= sk_num(*(v70 + 8)))
            {
              goto LABEL_87;
            }
          }

          v51 = 0;
          while (1)
          {
            v52 = sk_value(*(v49 + 8), v51);
            if (!GENERAL_NAME_cmp(aa, v52))
            {
              break;
            }

            if (++v51 >= sk_num(*(v49 + 8)))
            {
              goto LABEL_79;
            }
          }

LABEL_92:
          v57 = *(v43 + 6) & v64;
          v7 = v76;
          v19 = v77;
          a6 = v73;
          v18 = v79;
          v22 = v80;
          v26 = v75;
LABEL_93:
          if ((v57 & ~v22) != 0)
          {
            v22 |= v57;
            v26 |= 0x80u;
          }

          else
          {
            v26 = 0;
          }

          goto LABEL_42;
        }

LABEL_87:
        ++v42;
        v19 = v77;
        if (v42 >= sk_num(*(v77 + 104)))
        {
          goto LABEL_88;
        }
      }

      a = *(v70 + 16);
      if (!a)
      {
        goto LABEL_87;
      }

      if (*v49 == 1)
      {
        v50 = *(v49 + 16);
        if (v50 && !X509_NAME_cmp(a, v50))
        {
          goto LABEL_92;
        }

        goto LABEL_87;
      }

      v70 = *v48;
      goto LABEL_82;
    }

LABEL_88:
    v56 = *(v21 + 40);
    v22 = v80;
    if (v56)
    {
      v7 = v76;
      a6 = v73;
      v18 = v79;
      v26 = v75;
      if ((v75 & 0x20) != 0)
      {
        v57 = v64;
        if (!*v56)
        {
          goto LABEL_93;
        }
      }
    }

    else
    {
      v7 = v76;
      a6 = v73;
      v18 = v79;
      v26 = v75;
      v57 = v64;
      if ((v75 & 0x20) != 0)
      {
        goto LABEL_93;
      }
    }

LABEL_42:
    if (v26 > v13)
    {
      v13 = v26;
      v16 = v22;
      v15 = v21;
      v14 = v18;
    }

    ++v17;
  }

  while (v17 < sk_num(v7));
  if (v15)
  {
    if (*v66)
    {
      X509_CRL_free(*v66);
    }

    *v66 = v15;
    *v67 = v14;
    *v68 = v13;
    *a6 = v16;
    CRYPTO_add_lock((v15 + 24), 1, 6, 0, 0);
    if (*v69)
    {
      X509_CRL_free(*v69);
      *v69 = 0;
    }

    if ((*(*(a1 + 48) + 25) & 0x20) != 0 && ((*(*(a1 + 184) + 56) | *(v15 + 28)) & 0x1000) != 0)
    {
      if (sk_num(v7) < 1)
      {
LABEL_119:
        v60 = 0;
      }

      else
      {
        v58 = 0;
        while (1)
        {
          v59 = sk_value(v7, v58);
          if (*(v59 + 8))
          {
            if (*(v15 + 56))
            {
              v60 = v59;
              v61 = X509_CRL_get_issuer(v15);
              v62 = X509_CRL_get_issuer(v60);
              if (!X509_NAME_cmp(v61, v62) && crl_extension_match(v60, v15, 90) && crl_extension_match(v60, v15, 770) && ASN1_INTEGER_cmp(*(v60 + 64), *(v15 + 56)) <= 0 && ASN1_INTEGER_cmp(*(v60 + 56), *(v15 + 56)) >= 1)
              {
                break;
              }
            }
          }

          if (++v58 >= sk_num(v7))
          {
            goto LABEL_119;
          }
        }

        if (check_crl_time(a1, v60, 0))
        {
          *v68 |= 2u;
        }

        CRYPTO_add_lock((v60 + 24), 1, 6, 0, 0);
      }

      *v69 = v60;
    }
  }

  return v13 > 447;
}

uint64_t check_crl_time(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    *(a1 + 200) = a2;
  }

  v6 = *(a1 + 48);
  v7 = *(v6 + 24);
  if ((v7 & 2) != 0)
  {
    v8 = (v6 + 8);
  }

  else
  {
    if ((v7 & 0x200000) != 0)
    {
      return 1;
    }

    v8 = 0;
  }

  lastUpdate = X509_CRL_get_lastUpdate(a2);
  v10 = X509_cmp_time_internal(lastUpdate, v8, 0);
  if (v10)
  {
    if (v10 < 1)
    {
      goto LABEL_14;
    }

    if (!a3)
    {
      return 0;
    }

    v11 = 11;
  }

  else
  {
    if (!a3)
    {
      return 0;
    }

    v11 = 15;
  }

  *(a1 + 176) = v11;
  result = (*(a1 + 64))(0, a1);
  if (!result)
  {
    return result;
  }

LABEL_14:
  if (!X509_CRL_get_nextUpdate(a2))
  {
    goto LABEL_20;
  }

  nextUpdate = X509_CRL_get_nextUpdate(a2);
  v14 = X509_cmp_time_internal(nextUpdate, v8, 0);
  if (v14)
  {
    if (v14 < 0 && (*(a1 + 208) & 2) == 0)
    {
      if (a3)
      {
        v15 = 12;
        goto LABEL_24;
      }

      return 0;
    }

LABEL_20:
    if (!a3)
    {
      return 1;
    }

    goto LABEL_25;
  }

  if (a3)
  {
    v15 = 16;
LABEL_24:
    *(a1 + 176) = v15;
    result = (*(a1 + 64))(0, a1);
    if (!result)
    {
      return result;
    }

LABEL_25:
    *(a1 + 200) = 0;
    return 1;
  }

  return 0;
}

BOOL crl_extension_match(X509_CRL *a1, X509_CRL *a2, int nid)
{
  ext_by_NID = X509_CRL_get_ext_by_NID(a1, nid, -1);
  if (ext_by_NID < 0)
  {
    data = 0;
  }

  else
  {
    v7 = ext_by_NID;
    if (X509_CRL_get_ext_by_NID(a1, nid, ext_by_NID) != -1)
    {
      return 0;
    }

    ext = X509_CRL_get_ext(a1, v7);
    data = X509_EXTENSION_get_data(ext);
  }

  v10 = X509_CRL_get_ext_by_NID(a2, nid, -1);
  if (v10 < 0)
  {
    v13 = 0;
  }

  else
  {
    v11 = v10;
    if (X509_CRL_get_ext_by_NID(a2, nid, v10) != -1)
    {
      return 0;
    }

    v14 = X509_CRL_get_ext(a2, v11);
    v13 = X509_EXTENSION_get_data(v14);
  }

  if (!(data | v13))
  {
    return 1;
  }

  result = 0;
  if (data)
  {
    if (v13)
    {
      return ASN1_OCTET_STRING_cmp(data, v13) == 0;
    }
  }

  return result;
}

uint64_t enough_bits_for_security_level(int a1, int a2)
{
  v2 = a2 & ~(a2 >> 31);
  if (v2 >= 5)
  {
    v2 = 5;
  }

  v3 = a1 > 127;
  v4 = a1 > 191;
  if (v2 != 4)
  {
    v4 = a1 > 255;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = a1 > 79;
  if (v2 != 1)
  {
    v5 = a1 > 111;
  }

  if (v2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  if (v2 <= 2)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

X509_EXTENSION *__cdecl X509V3_EXT_nconf(CONF *conf, X509V3_CTX *ctx, char *name, char *value)
{
  v13 = value;
  v7 = v3_check_critical(&v13);
  v8 = v3_check_generic(&v13);
  if (v8)
  {
    v9 = v13;

    return v3_generic_extension(name, v9, v7, v8, ctx);
  }

  else
  {
    v11 = OBJ_sn2nid(name);
    v12 = v13;
    result = do_ext_nconf(conf, ctx, v11, v7, v13);
    if (!result)
    {
      ERR_put_error(34, 4095, 128, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_conf.c", 102);
      ERR_asprintf_error_data("name=%s, value=%s", name, v12);
      return 0;
    }
  }

  return result;
}

uint64_t v3_check_critical(const char **a1)
{
  v2 = *a1;
  if (strlen(*a1) < 9 || strncmp(v2, "critical,", 9uLL))
  {
    return 0;
  }

  v4 = v2 + 8;
  v5 = MEMORY[0x277D85DE0];
  do
  {
    v6 = v4[1];
    if (v6 < 0)
    {
      v7 = __maskrune(*(v4 + 1), 0x4000uLL);
    }

    else
    {
      v7 = *(v5 + 4 * v6 + 60) & 0x4000;
    }

    ++v4;
  }

  while (v7);
  *a1 = v4;
  return 1;
}

uint64_t v3_check_generic(const char **a1)
{
  v2 = *a1;
  v3 = strlen(*a1);
  if (v3 < 4)
  {
    return 0;
  }

  v4 = v3;
  v5 = 4;
  if (!strncmp(v2, "DER:", 4uLL))
  {
    v6 = 1;
  }

  else
  {
    if (v4 == 4)
    {
      return 0;
    }

    v5 = 5;
    if (strncmp(v2, "ASN1:", 5uLL))
    {
      return 0;
    }

    v6 = 2;
  }

  v7 = &v2[v5 - 1];
  v8 = MEMORY[0x277D85DE0];
  do
  {
    v9 = *(v7 + 1);
    if (v9 < 0)
    {
      v10 = __maskrune(*(v7 + 1), 0x4000uLL);
    }

    else
    {
      v10 = *(v8 + 4 * v9 + 60) & 0x4000;
    }

    ++v7;
  }

  while (v10);
  *a1 = v7;
  return v6;
}

X509_EXTENSION *v3_generic_extension(const char *a1, char *a2, int a3, int a4, X509V3_CTX *a5)
{
  len = 0;
  v9 = OBJ_txt2obj(a1, 0);
  if (!v9)
  {
    ERR_put_error(34, 4095, 115, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_conf.c", 293);
    ERR_asprintf_error_data("name=%s");
    goto LABEL_12;
  }

  if (a4 != 2)
  {
    if (a4 == 1)
    {
      v10 = string_to_hex(a2, &len);
      goto LABEL_8;
    }

    ERR_asprintf_error_data("Unexpected generic extension type %d");
LABEL_12:
    v10 = 0;
LABEL_14:
    v13 = 0;
LABEL_15:
    v14 = 0;
    goto LABEL_16;
  }

  out = 0;
  v11 = ASN1_generate_v3(a2, a5);
  v10 = v11;
  if (v11)
  {
    len = i2d_ASN1_TYPE(v11, &out);
    ASN1_TYPE_free(v10);
    v10 = out;
  }

LABEL_8:
  if (!v10)
  {
    ERR_put_error(34, 4095, 116, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_conf.c", 308);
    ERR_asprintf_error_data("value=%s", a2);
    goto LABEL_14;
  }

  v12 = ASN1_OCTET_STRING_new();
  v13 = v12;
  if (!v12)
  {
    ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_conf.c", 314);
    goto LABEL_15;
  }

  v12->data = v10;
  v12->length = len;
  v14 = X509_EXTENSION_create_by_OBJ(0, v9, a3, v12);
  v10 = 0;
LABEL_16:
  ASN1_OBJECT_free(v9);
  ASN1_OCTET_STRING_free(v13);
  free(v10);
  return v14;
}

X509_EXTENSION *do_ext_nconf(const CONF *a1, uint64_t a2, int nid, int a4, const char *a5)
{
  if (!nid)
  {
    v13 = 130;
    v14 = 137;
    goto LABEL_8;
  }

  v10 = X509V3_EXT_get_nid(nid);
  if (!v10)
  {
    v13 = 129;
    v14 = 141;
    goto LABEL_8;
  }

  v11 = v10;
  if (!v10->v2i)
  {
    s2i = v10->s2i;
    if (s2i)
    {
      goto LABEL_12;
    }

    s2i = v10->r2i;
    if (!s2i)
    {
      ERR_put_error(34, 4095, 103, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_conf.c", 172);
      v22 = OBJ_nid2sn(nid);
      ERR_asprintf_error_data("name=%s", v22);
      return 0;
    }

    if (*(a2 + 48) && *(a2 + 40))
    {
LABEL_12:
      v18 = s2i(v10, a2, a5);
      goto LABEL_17;
    }

    v13 = 136;
    v14 = 167;
LABEL_8:
    ERR_put_error(34, 4095, v13, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_conf.c", v14);
    return 0;
  }

  if (*a5 == 64)
  {
    section = NCONF_get_section(a1, a5 + 1);
  }

  else
  {
    section = X509V3_parse_list(a5);
  }

  v19 = section;
  if (sk_num(section) <= 0)
  {
    ERR_put_error(34, 4095, 105, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_conf.c", 153);
    v21 = OBJ_nid2sn(nid);
    ERR_asprintf_error_data("name=%s,section=%s", v21, a5);
    if (*a5 != 64)
    {
      sk_pop_free(v19, X509V3_conf_free);
    }

    return 0;
  }

  v18 = (*(v11 + 72))(v11, a2, v19);
  if (*a5 != 64)
  {
    sk_pop_free(v19, X509V3_conf_free);
  }

LABEL_17:
  if (!v18)
  {
    return 0;
  }

  v15 = do_ext_i2d(v11, nid, a4, v18);
  v20 = *(v11 + 8);
  if (v20)
  {
    ASN1_item_free(v18, v20);
  }

  else
  {
    (*(v11 + 24))(v18);
  }

  return v15;
}

X509_EXTENSION *__cdecl X509V3_EXT_nconf_nid(CONF *conf, X509V3_CTX *ctx, int ext_nid, char *value)
{
  v14 = value;
  v7 = v3_check_critical(&v14);
  v8 = v3_check_generic(&v14);
  if (v8)
  {
    v9 = v8;
    v10 = OBJ_nid2sn(ext_nid);
    v11 = v14;

    return v3_generic_extension(v10, v11, v7, v9, ctx);
  }

  else
  {
    v13 = v14;

    return do_ext_nconf(conf, ctx, ext_nid, v7, v13);
  }
}

X509_EXTENSION *__cdecl X509V3_EXT_i2d(int ext_nid, int crit, void *ext_struc)
{
  nid = X509V3_EXT_get_nid(ext_nid);
  if (nid)
  {

    return do_ext_i2d(nid, ext_nid, crit, ext_struc);
  }

  else
  {
    ERR_put_error(34, 4095, 129, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_conf.c", 238);
    return 0;
  }
}

X509_EXTENSION *do_ext_i2d(uint64_t a1, int a2, int a3, ASN1_VALUE *val)
{
  v7 = *(a1 + 8);
  if (v7)
  {
    out = 0;
    v8 = ASN1_item_i2d(val, &out, v7);
    if (v8 < 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = (*(a1 + 40))(val, 0);
    v10 = malloc_type_malloc(v8, 0xEF093C85uLL);
    out = v10;
    if (!v10)
    {
LABEL_9:
      v12 = 0;
LABEL_10:
      ASN1_OCTET_STRING_free(v12);
      ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_conf.c", 225);
      return 0;
    }

    v16 = v10;
    (*(a1 + 40))(val, &v16);
  }

  v11 = ASN1_OCTET_STRING_new();
  v12 = v11;
  if (!v11)
  {
    goto LABEL_10;
  }

  v11->data = out;
  v11->length = v8;
  v13 = X509_EXTENSION_create_by_NID(0, a2, a3, v11);
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = v13;
  ASN1_OCTET_STRING_free(v12);
  return v14;
}

int X509V3_EXT_add_nconf_sk(CONF *conf, X509V3_CTX *ctx, char *section, STACK **sk)
{
  v7 = NCONF_get_section(conf, section);
  if (v7)
  {
    v8 = v7;
    if (sk_num(v7) < 1)
    {
LABEL_8:
      LODWORD(v7) = 1;
    }

    else
    {
      v9 = 0;
      while (1)
      {
        v10 = sk_value(v8, v9);
        v7 = X509V3_EXT_nconf(conf, ctx, *(v10 + 1), *(v10 + 2));
        if (!v7)
        {
          break;
        }

        v11 = v7;
        if (sk)
        {
          X509v3_add_ext(sk, v7, -1);
        }

        X509_EXTENSION_free(v11);
        if (++v9 >= sk_num(v8))
        {
          goto LABEL_8;
        }
      }
    }
  }

  return v7;
}

int X509V3_EXT_add_nconf(CONF *conf, X509V3_CTX *ctx, char *section, X509 *cert)
{
  if (cert)
  {
    cert = &cert->cert_info->extensions;
  }

  return X509V3_EXT_add_nconf_sk(conf, ctx, section, cert);
}

int X509V3_EXT_CRL_add_nconf(CONF *conf, X509V3_CTX *ctx, char *section, X509_CRL *crl)
{
  if (crl)
  {
    crl = &crl->crl->extensions;
  }

  return X509V3_EXT_add_nconf_sk(conf, ctx, section, crl);
}

int X509V3_EXT_REQ_add_nconf(CONF *conf, X509V3_CTX *ctx, char *section, X509_REQ *req)
{
  exts = 0;
  if (req)
  {
    p_exts = &exts;
  }

  else
  {
    p_exts = 0;
  }

  v6 = X509V3_EXT_add_nconf_sk(conf, ctx, section, p_exts);
  v7 = v6;
  if (req && v6)
  {
    v7 = X509_REQ_add_extensions(req, exts);
    sk_pop_free(exts, X509_EXTENSION_free);
  }

  return v7;
}

char *__cdecl X509V3_get_string(X509V3_CTX *ctx, char *name, char *section)
{
  if (ctx->db && (db_meth = ctx->db_meth) != 0 && (get_string = db_meth->get_string) != 0)
  {

    return get_string();
  }

  else
  {
    ERR_put_error(34, 4095, 148, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_conf.c", 426);
    return 0;
  }
}

STACK *__cdecl X509V3_get_section(X509V3_CTX *ctx, char *section)
{
  if (ctx->db && (db_meth = ctx->db_meth) != 0 && (get_section = db_meth->get_section) != 0)
  {

    return get_section();
  }

  else
  {
    ERR_put_error(34, 4095, 148, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_conf.c", 437);
    return 0;
  }
}

void X509V3_string_free(X509V3_CTX *ctx, char *str)
{
  if (str)
  {
    free_string = ctx->db_meth->free_string;
    if (free_string)
    {
      (free_string)(ctx->db);
    }
  }
}

void X509V3_section_free(X509V3_CTX *ctx, STACK *section)
{
  if (section)
  {
    free_section = ctx->db_meth->free_section;
    if (free_section)
    {
      (free_section)(ctx->db);
    }
  }
}

void X509V3_set_ctx(X509V3_CTX *ctx, X509 *issuer, X509 *subject, X509_REQ *req, X509_CRL *crl, int flags)
{
  ctx->issuer_cert = issuer;
  ctx->subject_cert = subject;
  ctx->subject_req = req;
  ctx->crl = crl;
  ctx->flags = flags;
}

X509_EXTENSION *__cdecl X509V3_EXT_conf(LHASH *conf, X509V3_CTX *ctx, char *name, char *value)
{
  memset(&confa, 0, sizeof(confa));
  CONF_set_nconf(&confa, conf);
  return X509V3_EXT_nconf(&confa, ctx, name, value);
}

X509_EXTENSION *__cdecl X509V3_EXT_conf_nid(LHASH *conf, X509V3_CTX *ctx, int ext_nid, char *value)
{
  memset(&confa, 0, sizeof(confa));
  CONF_set_nconf(&confa, conf);
  return X509V3_EXT_nconf_nid(&confa, ctx, ext_nid, value);
}

int X509V3_EXT_add_conf(LHASH *conf, X509V3_CTX *ctx, char *section, X509 *cert)
{
  memset(&confa, 0, sizeof(confa));
  CONF_set_nconf(&confa, conf);
  if (cert)
  {
    p_extensions = &cert->cert_info->extensions;
  }

  else
  {
    p_extensions = 0;
  }

  return X509V3_EXT_add_nconf_sk(&confa, ctx, section, p_extensions);
}

int X509V3_EXT_CRL_add_conf(LHASH *conf, X509V3_CTX *ctx, char *section, X509_CRL *crl)
{
  memset(&confa, 0, sizeof(confa));
  CONF_set_nconf(&confa, conf);
  if (crl)
  {
    p_extensions = &crl->crl->extensions;
  }

  else
  {
    p_extensions = 0;
  }

  return X509V3_EXT_add_nconf_sk(&confa, ctx, section, p_extensions);
}

int X509V3_EXT_REQ_add_conf(LHASH *conf, X509V3_CTX *ctx, char *section, X509_REQ *req)
{
  memset(&confa, 0, sizeof(confa));
  CONF_set_nconf(&confa, conf);
  return X509V3_EXT_REQ_add_nconf(&confa, ctx, section, req);
}

uint64_t X509_REQ_get0_signature(uint64_t result, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = *(result + 16);
  }

  if (a3)
  {
    *a3 = *(result + 8);
  }

  return result;
}

uint64_t rinf_cb(int a1, uint64_t *a2)
{
  if (a1 != 1)
  {
    return 1;
  }

  v2 = *a2;
  result = sk_new_null();
  *(v2 + 48) = result;
  if (result)
  {
    return 1;
  }

  return result;
}

void hmac_key_free(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    data = v1->data;
    if (data)
    {
      explicit_bzero(data, v1->length);
    }

    ASN1_OCTET_STRING_free(v1);
  }
}

uint64_t hmac_pkey_ctrl(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  if (a2 != 3)
  {
    return 4294967294;
  }

  *a4 = 64;
  return 1;
}

uint64_t hmac_set_priv_key(uint64_t a1, const unsigned __int8 *a2, unint64_t a3)
{
  v3 = 0;
  if (a3 >> 31 || *(a1 + 32) || (v5 = a3, v7 = ASN1_OCTET_STRING_new(), (v3 = v7) == 0) || !ASN1_OCTET_STRING_set(v7, a2, v5))
  {
    ASN1_OCTET_STRING_free(v3);
    return 0;
  }

  else
  {
    *(a1 + 32) = v3;
    return 1;
  }
}

uint64_t hmac_get_priv_key(uint64_t a1, void *a2, size_t *a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  memset(v7, 0, sizeof(v7));
  if (a2)
  {
    CBS_init(v7, *(v3 + 1), *v3);
    return CBS_write_bytes(v7, a2, *a3, a3);
  }

  else
  {
    *a3 = *v3;
    return 1;
  }
}

uint64_t evp_pkey_meth_get_count()
{
  if (pkey_app_methods)
  {
    return (sk_num(pkey_app_methods) + 12);
  }

  else
  {
    return 12;
  }
}

char *evp_pkey_meth_get0(unsigned int a1)
{
  if ((a1 & 0x80000000) != 0)
  {
    return 0;
  }

  if (a1 > 0xB)
  {
    return sk_value(pkey_app_methods, a1 - 12);
  }

  return *(&pkey_methods + a1);
}

char *EVP_PKEY_meth_find(int a1)
{
  if (pkey_app_methods)
  {
    v2 = (sk_num(pkey_app_methods) + 12);
  }

  else
  {
    v2 = 12;
  }

  while (v2 >= 1)
  {
    if (v2 > 0xC)
    {
      result = sk_value(pkey_app_methods, v2 - 13);
    }

    else
    {
      result = *(&pkey_methods + v2 - 1);
    }

    --v2;
    if (*result == a1)
    {
      return result;
    }
  }

  return 0;
}

_DWORD *EVP_PKEY_meth_new(int a1, int a2)
{
  result = malloc_type_calloc(1uLL, 0xF8uLL, 0x1080040399D213BuLL);
  if (result)
  {
    *result = a1;
    result[1] = a2 | 1;
  }

  return result;
}

_DWORD *EVP_PKEY_meth_get0_info(_DWORD *result, _DWORD *a2, _DWORD *a3)
{
  if (result)
  {
    *result = *a3;
  }

  if (a2)
  {
    *a2 = a3[1];
  }

  return result;
}

double EVP_PKEY_meth_copy(uint64_t a1, __int128 *a2)
{
  result = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v5;
  *(a1 + 16) = v4;
  v6 = a2[7];
  v8 = a2[4];
  v7 = a2[5];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v6;
  *(a1 + 64) = v8;
  *(a1 + 80) = v7;
  v9 = a2[11];
  v11 = a2[8];
  v10 = a2[9];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v9;
  *(a1 + 128) = v11;
  *(a1 + 144) = v10;
  v13 = a2[13];
  v12 = a2[14];
  v14 = a2[12];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v13;
  *(a1 + 224) = v12;
  *(a1 + 192) = v14;
  *a1 = v3;
  *a1 = result;
  return result;
}

void EVP_PKEY_meth_free(void *a1)
{
  if (a1)
  {
    if (*(a1 + 4))
    {
      free(a1);
    }
  }
}

EVP_PKEY **int_ctx_new(uint64_t a1, ENGINE *e, int a3)
{
  pkey_meth_engine = e;
  if (a3 == -1)
  {
    if (!a1)
    {
      return 0;
    }

    v8 = *(a1 + 16);
    if (!v8)
    {
      return 0;
    }

    v5 = *v8;
  }

  else
  {
    v5 = a3;
    if (!a1)
    {
      v6 = 1;
      if (!e)
      {
        goto LABEL_4;
      }

LABEL_12:
      if (!ENGINE_init(pkey_meth_engine))
      {
        v13 = 38;
        v14 = 170;
        goto LABEL_23;
      }

      goto LABEL_13;
    }
  }

  v6 = 0;
  if (*(a1 + 24))
  {
    pkey_meth_engine = *(a1 + 24);
  }

  if (pkey_meth_engine)
  {
    goto LABEL_12;
  }

LABEL_4:
  pkey_meth_engine = ENGINE_get_pkey_meth_engine(v5);
  if (!pkey_meth_engine)
  {
    pkey_meth = EVP_PKEY_meth_find(v5);
    goto LABEL_14;
  }

LABEL_13:
  pkey_meth = ENGINE_get_pkey_meth(pkey_meth_engine);
LABEL_14:
  v9 = pkey_meth;
  if (!pkey_meth)
  {
    v13 = 156;
    v14 = 187;
LABEL_23:
    ERR_put_error(6, 4095, v13, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_lib.c", v14);
    return 0;
  }

  v10 = malloc_type_malloc(0x50uLL, 0x10F0040FE4E0FE9uLL);
  v11 = v10;
  if (!v10)
  {
    ENGINE_finish(pkey_meth_engine);
    ERR_put_error(6, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_lib.c", 196);
    return v11;
  }

  *v10 = v9;
  v10[1] = pkey_meth_engine;
  *(v10 + 8) = 0;
  v10[2] = a1;
  v10[3] = 0;
  v10[7] = 0;
  if ((v6 & 1) == 0)
  {
    CRYPTO_add_lock((a1 + 8), 1, 10, 0, 0);
  }

  v11[5] = 0;
  v12 = *(v9 + 8);
  if (v12 && v12(v11) <= 0)
  {
    EVP_PKEY_CTX_free(v11);
    return 0;
  }

  return v11;
}