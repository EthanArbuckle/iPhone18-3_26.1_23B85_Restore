STACK *X509_STORE_CTX_get1_crls(uint64_t *a1, X509_NAME *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  obj_by_subject = X509_STORE_CTX_get_obj_by_subject(a1, 2, a2);
  if (!obj_by_subject)
  {
    return 0;
  }

  v11 = 0;
  X509_OBJECT_free(obj_by_subject);
  CRYPTO_lock(9, 11, 0, 0);
  v5 = x509_object_idx_cnt(*v2, 2, a2, &v11);
  if (v5 < 0)
  {
    v7 = 0;
LABEL_12:
    v9 = 0;
LABEL_13:
    CRYPTO_lock(10, 11, 0, 0);
    X509_CRL_free(v9);
    sk_pop_free(v7, X509_CRL_free);
    return 0;
  }

  v6 = v5;
  v7 = sk_new_null();
  if (!v7)
  {
    goto LABEL_12;
  }

  if (v11 >= 1)
  {
    for (i = 0; i < v11; ++i)
    {
      v9 = *(sk_value(*v2, v6) + 1);
      if (!X509_CRL_up_ref(v9))
      {
        goto LABEL_12;
      }

      if (!sk_push(v7, v9))
      {
        goto LABEL_13;
      }

      ++v6;
    }
  }

  CRYPTO_lock(10, 11, 0, 0);
  return v7;
}

X509_OBJECT *__cdecl X509_OBJECT_retrieve_match(STACK *h, X509_OBJECT *x)
{
  v9 = x;
  v4 = sk_find(h, x);
  if (v4 != -1)
  {
    v5 = v4;
    if ((x->type - 1) > 1)
    {

      return sk_value(h, v4);
    }

    while (v5 < sk_num(h))
    {
      v6 = sk_value(h, v5);
      v8 = v6;
      if (x509_object_cmp(&v8, &v9))
      {
        break;
      }

      if (x->type == 2)
      {
        if (!X509_CRL_match(*(v6 + 1), x->data.ptr))
        {
          return v6;
        }
      }

      else if (x->type != 1 || !X509_cmp(*(v6 + 1), x->data.x509))
      {
        return v6;
      }

      ++v5;
    }
  }

  return 0;
}

int X509_STORE_CTX_get1_issuer(X509 **issuer, X509_STORE_CTX *ctx, X509 *x)
{
  *issuer = 0;
  issuer_name = X509_get_issuer_name(x);
  obj_by_subject = X509_STORE_CTX_get_obj_by_subject(ctx, 1, issuer_name);
  if (!obj_by_subject)
  {
    return 0;
  }

  v8 = obj_by_subject;
  if (obj_by_subject->type != 1 || (x509 = obj_by_subject->data.x509) == 0)
  {
    X509_OBJECT_free(obj_by_subject);
    return 0;
  }

  if (!X509_up_ref(obj_by_subject->data.ptr))
  {
    X509_OBJECT_free(v8);
    return -1;
  }

  if ((ctx->check_issued)(ctx, x, x509) && x509_check_cert_time(ctx, x509, -1))
  {
    *issuer = x509;
    X509_OBJECT_free(v8);
    return 1;
  }

  X509_free(x509);
  X509_OBJECT_free(v8);
  if (!ctx->ctx)
  {
    return 0;
  }

  CRYPTO_lock(9, 11, 0, 0);
  v12 = x509_object_idx_cnt(*ctx->ctx, 1, issuer_name, 0);
  if (v12 == -1)
  {
    goto LABEL_24;
  }

  v13 = v12;
  if (v12 >= sk_num(*ctx->ctx))
  {
    goto LABEL_24;
  }

  v14 = 0;
  do
  {
    v15 = sk_value(*ctx->ctx, v13);
    if (*v15 != 1)
    {
      break;
    }

    v16 = v15;
    subject_name = X509_get_subject_name(*(v15 + 1));
    if (X509_NAME_cmp(issuer_name, subject_name))
    {
      break;
    }

    if ((ctx->check_issued)(ctx, x, *(v16 + 1)))
    {
      v14 = *(v16 + 1);
      if (x509_check_cert_time(ctx, v14, -1))
      {
        break;
      }
    }

    ++v13;
  }

  while (v13 < sk_num(*ctx->ctx));
  if (!v14)
  {
LABEL_24:
    v10 = 0;
  }

  else if (X509_up_ref(v14))
  {
    *issuer = v14;
    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

  CRYPTO_lock(10, 11, 0, 0);
  return v10;
}

unint64_t bn_div_words(unint64_t h, unint64_t l, unint64_t d)
{
  if (!d)
  {
    return -1;
  }

  v6 = BN_num_bits_word(d);
  if (v6 != 64 && 1 << v6 < h)
  {
    bn_div_words_cold_1();
  }

  v7 = 0;
  v8 = 0;
  if (h >= d)
  {
    v9 = d;
  }

  else
  {
    v9 = 0;
  }

  v10 = h - v9;
  v11 = -v6;
  if (v6 == 64)
  {
    v12 = v10;
  }

  else
  {
    v12 = (v10 << -v6) | (l >> v6);
  }

  v13 = d << v11;
  v14 = l << v11;
  if (v6 == 64)
  {
    v14 = l;
    v13 = d;
  }

  v15 = HIDWORD(v13);
  while (1)
  {
    if (v15 == HIDWORD(v12))
    {
      v16 = 0xFFFFFFFFLL;
    }

    else
    {
      v16 = v12 / v15;
    }

    v17 = v16 * v15;
    v18 = v16 * v13;
    *(&v20 + 1) = v12 - v16 * v15;
    *&v20 = v14;
    v19 = v20 >> 32;
    if (HIDWORD(*(&v20 + 1)))
    {
      v21 = 0;
    }

    else
    {
      v21 = v18 > v19;
    }

    if (v21)
    {
      v22 = v13 * (v16 - 1);
      v23 = v12 - v15 * (v16 - 1);
      do
      {
        --v16;
        v17 -= v15;
        v18 -= v13;
        if (HIDWORD(v23))
        {
          break;
        }

        *(&v24 + 1) = v23;
        *&v24 = v14;
        v23 += v15;
        v21 = v22 > (v24 >> 32);
        v22 -= v13;
      }

      while (v21);
    }

    v25 = v17 + HIDWORD(v18);
    if (v14 < v18 << 32)
    {
      ++v25;
    }

    v26 = (__PAIR128__(v16, v12) - v25) >> 64;
    if (v8)
    {
      break;
    }

    v27 = v12 - v25;
    if (v12 >= v25)
    {
      v28 = 0;
    }

    else
    {
      v28 = v13;
    }

    v29 = (v27 + v28);
    v7 = v26 << 32;
    *(&v30 + 1) = v29;
    *&v30 = v14 - (v18 << 32);
    v12 = v30 >> 32;
    v14 <<= 32;
    v8 = 1;
  }

  return v26 | v7;
}

unint64_t bn_div_rem_words(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t *a4, void *a5)
{
  result = bn_div_words(a1, a2, a3);
  *a4 = result;
  *a5 = a2 - result * a3;
  return result;
}

unint64_t bn_div_3_words(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v4 = *a1;
  if (v4 == a3)
  {
    return -1;
  }

  v8 = *(a1 - 1);
  result = bn_div_words(v4, v8, a3);
  v9 = v8 - result * a3;
  v10 = result * HIDWORD(a2);
  v11 = (v10 << 32) + result * a2;
  v12 = ((result * a2) | (v10 << 32)) & ~v11 | (result * a2) & (v10 << 32);
  v13 = HIDWORD(result) * a2;
  v14 = v11 | (v13 << 32);
  v15 = v11 & (v13 << 32);
  v16 = v11 + (v13 << 32);
  v17 = HIDWORD(v10) + HIDWORD(result) * HIDWORD(a2) + HIDWORD(v13) + (v12 >> 63) + ((v14 & ~v16 | v15) >> 63);
  if (v17 >= v9)
  {
    v18 = v8 + a3 - a3 * result;
    while (1)
    {
      v19 = result;
      if (v9 == v17 && v16 <= *(a1 - 2))
      {
        break;
      }

      if (v18 >= a3)
      {
        v9 += a3;
        v20 = v16 >= a2;
        v16 -= a2;
        v21 = !v20;
        v17 -= v21;
        v18 += a3;
        --result;
        if (v17 >= v9)
        {
          continue;
        }
      }

      return v19 - 1;
    }
  }

  return result;
}

int BN_div(BIGNUM *dv, BIGNUM *rem, const BIGNUM *m, const BIGNUM *d, BN_CTX *ctx)
{
  if (BN_get_flags(m, 4u))
  {
    v10 = 1;
  }

  else
  {
    v10 = BN_get_flags(d, 4u) != 0;
  }

  return BN_div_internal(dv, rem, m, d, ctx, v10);
}

uint64_t BN_div_internal(uint64_t a1, BIGNUM *a2, const BIGNUM *a3, const BIGNUM *a4, BN_CTX *ctx, int a6)
{
  memset(&a, 0, sizeof(a));
  BN_CTX_start(ctx);
  top = a3->top;
  if (top >= 1 && !a3->d[top - 1])
  {
    v14 = 107;
    v15 = 252;
    goto LABEL_25;
  }

  if (a6)
  {
    v13 = -1;
  }

  else
  {
    v13 = 0;
  }

  if (BN_is_zero(a4))
  {
    v14 = 103;
    v15 = 260;
LABEL_25:
    ERR_put_error(3, 4095, v14, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_div.c", v15);
    goto LABEL_26;
  }

  if (!a6 && BN_ucmp(a3, a4) < 0)
  {
    if (a2 && !bn_copy(a2, a3))
    {
      goto LABEL_26;
    }

    if (a1)
    {
      BN_zero(a1);
    }

LABEL_60:
    a1 = 1;
    goto LABEL_27;
  }

  v16 = BN_CTX_get(ctx);
  if (!v16)
  {
    goto LABEL_26;
  }

  v17 = v16;
  v18 = BN_CTX_get(ctx);
  if (!v18)
  {
    goto LABEL_26;
  }

  v19 = v18;
  r = a2;
  v20 = BN_CTX_get(ctx);
  if (!v20)
  {
    goto LABEL_26;
  }

  v21 = v20;
  if (a1 || (a1 = BN_CTX_get(ctx)) != 0)
  {
    v22 = BN_num_bits(a4);
    if (v22 <= 0)
    {
      v23 = -(-v22 & 0x3F);
    }

    else
    {
      v23 = v22 & 0x3F;
    }

    if (!BN_lshift(v21, a4, 64 - v23))
    {
      goto LABEL_26;
    }

    b = v21;
    v21->neg = 0;
    v24 = 128 - v23;
    if (!BN_lshift(v19, a3, v24))
    {
      goto LABEL_26;
    }

    v19->neg = 0;
    v25 = v19->top;
    if (a6)
    {
      v26 = v21->top;
      if (v25 <= v26 + 1)
      {
        if (!bn_wexpand(v19, (v26 + 2)))
        {
          goto LABEL_26;
        }

        v29 = v19->top;
        v30 = v21->top;
        v25 = v30 + 2;
        if (v29 < v30 + 2)
        {
          v52 = v30 + 2;
          bzero(&v19->d[v29], 8 * (v30 - v29 + 1) + 8);
          v25 = v52;
        }
      }

      else
      {
        if (!bn_wexpand(v19, (v25 + 1)))
        {
LABEL_26:
          a1 = 0;
          goto LABEL_27;
        }

        v27 = v19->top;
        v19->d[v27] = 0;
        v25 = v27 + 1;
      }

      p_d = &v17->d;
      v19->top = v25;
    }

    else
    {
      p_d = &v17->d;
    }

    v31 = v21->top;
    d = v19->d;
    a.d = &v19->d[v25 - v31];
    v32 = v19->dmax - (v25 - v31);
    a.top = v31;
    a.dmax = v32;
    v33 = v19->flags | 2;
    a.neg = 0;
    a.flags = v33;
    v34 = &v21->d[v31];
    n = v24;
    v53 = v25;
    if (v31 == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(v34 - 16);
    }

    v56 = *(v34 - 8);
    v35 = v25 - v31;
    if (!bn_wexpand(a1, (v25 - v31 + 1)))
    {
      goto LABEL_26;
    }

    *(a1 + 8) = v35 + v13;
    neg = a3->neg;
    v37 = a4->neg;
    v38 = *a1;
    if (!bn_wexpand(p_d, (v31 + 1)))
    {
      goto LABEL_26;
    }

    v48 = neg;
    v49 = v19;
    v39 = v35 - 1;
    v40 = &v38[v35 - 1];
    if (!a6)
    {
      if (BN_ucmp(&a, b) < 0)
      {
        v41 = *(a1 + 8) - 1;
        *(a1 + 8) = v41;
        goto LABEL_46;
      }

      bn_sub_words(a.d, a.d, b->d, v31);
      *v40 = 1;
    }

    v41 = *(a1 + 8);
LABEL_46:
    v47 = v37;
    if (v41)
    {
      --v40;
    }

    else
    {
      *(a1 + 16) = 0;
    }

    if (v35 >= 2)
    {
      v42 = &d[v53 - 1];
      v54 = a1;
      do
      {
        v43 = bn_div_3_words(v42, v57, v56);
        v44 = bn_mul_words(*p_d, b->d, v31, v43);
        v45 = *p_d;
        v45[v31] = v44;
        --a.d;
        if (bn_sub_words(a.d, a.d, v45, v31 + 1))
        {
          --v43;
          if (bn_add_words(a.d, a.d, b->d, v31))
          {
            ++*v42;
          }
        }

        a1 = v54;
        *v40-- = v43;
        --v42;
        --v39;
      }

      while (v39);
    }

    bn_correct_top(v49);
    if (r)
    {
      v46 = a3->neg;
      BN_rshift(r, v49, n);
      BN_set_negative(r, v46);
    }

    if (a6)
    {
      bn_correct_top(a1);
    }

    BN_set_negative(a1, v47 ^ v48);
    goto LABEL_60;
  }

LABEL_27:
  BN_CTX_end(ctx);
  return a1;
}

int X509_print_ex_fp(FILE *bp, X509 *x, unint64_t nmflag, unint64_t cflag)
{
  v8 = BIO_s_file();
  v9 = BIO_new(v8);
  if (v9)
  {
    v10 = v9;
    BIO_ctrl(v9, 106, 0, bp);
    v11 = X509_print_ex(v10, x, nmflag, cflag);
    BIO_free(v10);
    return v11;
  }

  else
  {
    ERR_put_error(11, 4095, 7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/t_x509.c", 96);
    return 0;
  }
}

int X509_print_ex(BIO *bp, X509 *x, unint64_t nmflag, unint64_t cflag)
{
  if ((nmflag & 0xF0000) == 0x40000)
  {
    v8 = 10;
  }

  else
  {
    v8 = 32;
  }

  if ((nmflag & 0xF0000) == 0x40000)
  {
    v9 = 12;
  }

  else
  {
    v9 = 0;
  }

  if (nmflag)
  {
    v10 = v9;
  }

  else
  {
    v10 = 16;
  }

  cert_info = x->cert_info;
  if ((cflag & 1) == 0 && (BIO_write(bp, "Certificate:\n", 13) < 1 || BIO_write(bp, "    Data:\n", 10) < 1))
  {
    return 0;
  }

  if ((cflag & 2) == 0)
  {
    v12 = X509_get_version(x) > 2 ? BIO_printf(bp, "%8sVersion: unknown (%ld)\n") : BIO_printf(bp, "%8sVersion: %ld (0x%lx)\n");
    if (v12 < 1)
    {
      return 0;
    }
  }

  v28 = v8;
  if ((cflag & 4) == 0)
  {
    if (BIO_write(bp, "        Serial Number:", 22) < 1)
    {
      return 0;
    }

    serialNumber = X509_get_serialNumber(x);
    v14 = serialNumber;
    if (serialNumber->length > 8 || (v15 = ASN1_INTEGER_get(serialNumber), v15 < 0))
    {
      if (v14->type == 258)
      {
        v23 = " (Negative)";
      }

      else
      {
        v23 = "";
      }

      if (BIO_printf(bp, "\n%12s%s", "", v23) < 1)
      {
        return 0;
      }

      v24 = 0;
      while (1)
      {
        length = v14->length;
        if (v24 >= length)
        {
          break;
        }

        v26 = v14->data[v24++];
        if (v24 == length)
        {
          v27 = 10;
        }

        else
        {
          v27 = 58;
        }

        if (BIO_printf(bp, "%02x%c", v26, v27) < 1)
        {
          return 0;
        }
      }
    }

    else if (BIO_printf(bp, " %ld (0x%lx)\n", v15, v15) < 1)
    {
      return 0;
    }
  }

  if ((cflag & 8) == 0 && X509_signature_print(bp, x->sig_alg, 0) < 1)
  {
    return 0;
  }

  if ((cflag & 0x10) == 0)
  {
    if (BIO_printf(bp, "        Issuer:%c", v28) < 1)
    {
      return 0;
    }

    issuer_name = X509_get_issuer_name(x);
    if (X509_NAME_print_ex(bp, issuer_name, v10, nmflag) < (nmflag == 0) || BIO_write(bp, "\n", 1) < 1)
    {
      return 0;
    }
  }

  if ((cflag & 0x20) == 0)
  {
    if (BIO_write(bp, "        Validity\n", 17) < 1 || BIO_write(bp, "            Not Before: ", 24) < 1)
    {
      return 0;
    }

    v17 = X509_getm_notBefore(x);
    result = ASN1_TIME_print(bp, v17);
    if (!result)
    {
      return result;
    }

    if (BIO_write(bp, "\n            Not After : ", 25) < 1)
    {
      return 0;
    }

    v19 = X509_getm_notAfter(x);
    result = ASN1_TIME_print(bp, v19);
    if (!result)
    {
      return result;
    }

    if (BIO_write(bp, "\n", 1) < 1)
    {
      return 0;
    }
  }

  if ((cflag & 0x40) == 0)
  {
    if (BIO_printf(bp, "        Subject:%c", v28) < 1)
    {
      return 0;
    }

    subject_name = X509_get_subject_name(x);
    if (X509_NAME_print_ex(bp, subject_name, v10, nmflag) < (nmflag == 0) || BIO_write(bp, "\n", 1) < 1)
    {
      return 0;
    }
  }

  if ((cflag & 0x80) == 0)
  {
    if (BIO_write(bp, "        Subject Public Key Info:\n", 33) >= 1 && BIO_printf(bp, "%12sPublic Key Algorithm: ", "") >= 1 && i2a_ASN1_OBJECT(bp, cert_info->key->algor->algorithm) >= 1 && BIO_puts(bp, "\n") >= 1)
    {
      pubkey = X509_get_pubkey(x);
      if (pubkey)
      {
        v22 = pubkey;
        EVP_PKEY_print_public(bp, pubkey, 16);
        EVP_PKEY_free(v22);
      }

      else
      {
        BIO_printf(bp, "%12sUnable to load Public Key\n", "");
        ERR_print_errors(bp);
      }

      goto LABEL_60;
    }

    return 0;
  }

LABEL_60:
  if ((cflag & 0x100) == 0)
  {
    X509V3_extensions_print(bp, "X509v3 extensions", cert_info->extensions, cflag, 8);
  }

  if ((cflag & 0x200) == 0 && X509_signature_print(bp, x->sig_alg, x->signature) < 1)
  {
    return 0;
  }

  if ((cflag & 0x400) != 0)
  {
    return 1;
  }

  result = X509_CERT_AUX_print(bp, x[1].ex_pcpathlen, 0);
  if (result)
  {
    return 1;
  }

  return result;
}

int X509_signature_print(BIO *bp, X509_ALGOR *alg, ASN1_STRING *sig)
{
  if (BIO_puts(bp, "    Signature Algorithm: ") < 1 || i2a_ASN1_OBJECT(bp, alg->algorithm) < 1)
  {
    return 0;
  }

  v6 = OBJ_obj2nid(alg->algorithm);
  if (v6)
  {
    v10 = 0;
    if (OBJ_find_sigid_algs(v6, &v10, &v10 + 1))
    {
      v7 = EVP_PKEY_asn1_find(0, SHIDWORD(v10));
      if (v7)
      {
        v8 = *(v7 + 160);
        if (v8)
        {
          return v8(bp, alg, sig, 9, 0);
        }
      }
    }
  }

  if (sig)
  {
    return X509_signature_dump(bp, sig, 9);
  }

  return BIO_puts(bp, "\n") > 0;
}

int ASN1_TIME_print(BIO *fp, ASN1_TIME *a)
{
  type = a->type;
  if (type == 24)
  {

    return ASN1_GENERALIZEDTIME_print(fp, a);
  }

  else if (type == 23)
  {

    return ASN1_UTCTIME_print(fp, a);
  }

  else
  {
    BIO_write(fp, "Bad time value", 14);
    return 0;
  }
}

int X509_ocspid_print(BIO *bp, X509 *x)
{
  v18 = *MEMORY[0x277D85DE8];
  if (BIO_printf(bp, "        Subject OCSP hash: ") < 1 || (v4 = i2d_X509_NAME(x->cert_info->subject, 0), v4 < 1))
  {
LABEL_15:
    v6 = 0;
  }

  else
  {
    v5 = v4;
    v6 = malloc_type_malloc(v4, 0x1AFDBD1FuLL);
    out = v6;
    if (v6)
    {
      if (i2d_X509_NAME(x->cert_info->subject, &out) >= 1)
      {
        v7 = EVP_sha1();
        if (EVP_Digest(v6, v5, md, 0, v7, 0))
        {
          v8 = 0;
          while (BIO_printf(bp, "%02X", md[v8]) >= 1)
          {
            if (++v8 == 20)
            {
              free(v6);
              if (BIO_printf(bp, "\n        Public key OCSP hash: ") >= 1)
              {
                public_key = x->cert_info->key->public_key;
                data = public_key->data;
                length = public_key->length;
                v12 = EVP_sha1();
                if (EVP_Digest(data, length, md, 0, v12, 0))
                {
                  v13 = 0;
                  while (BIO_printf(bp, "%02X", md[v13]) >= 1)
                  {
                    if (++v13 == 20)
                    {
                      BIO_printf(bp, "\n");
                      result = 1;
                      goto LABEL_17;
                    }
                  }
                }
              }

              goto LABEL_15;
            }
          }
        }
      }
    }
  }

  free(v6);
  result = 0;
LABEL_17:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL X509_signature_dump(BIO *b, unsigned int *a2, int a3)
{
  v5 = 0;
  v6 = 0;
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = v7 & ~(v7 >> 31);
  v10 = v7 - 1;
  while (v9)
  {
    if (v6 + 18 * (v5 / 0x12) || BIO_write(b, "\n", 1) >= 1 && BIO_indent(b, a3, a3) >= 1)
    {
      v12 = *v8++;
      v11 = v12;
      v13 = ":";
      if (!v10)
      {
        v13 = "";
      }

      --v9;
      --v6;
      ++v5;
      --v10;
      if (BIO_printf(b, "%02x%s", v11, v13) >= 1)
      {
        continue;
      }
    }

    return 0;
  }

  return BIO_write(b, "\n", 1) == 1;
}

int ASN1_UTCTIME_print(BIO *fp, ASN1_UTCTIME *a)
{
  length = a->length;
  if (length >= 10)
  {
    v4 = 0;
    data = a->data;
    v6 = data[length - 1];
    while (data[v4] - 58 >= 0xFFFFFFF6)
    {
      if (++v4 == 10)
      {
        v7 = data[1] + 10 * *data;
        if (v7 >= 578)
        {
          v8 = -528;
        }

        else
        {
          v8 = -428;
        }

        v9 = data[3] + 10 * data[2];
        if ((v9 - 541) < 0xFFFFFFF4)
        {
          break;
        }

        v10 = data[5] + 10 * data[4] - 528;
        v11 = data[7] + 10 * data[6] - 528;
        v12 = data[9] + 10 * data[8] - 528;
        if (length < 12 || (v13 = data[10], (v13 - 48) > 9))
        {
          v15 = 0;
        }

        else
        {
          v14 = data[11] - 48;
          v15 = ((10 * v13 + 32) & 0xFE) + v14;
          if (v14 > 9)
          {
            v15 = 0;
          }
        }

        v16 = v7 + v8 + 1900;
        if (v6 == 90)
        {
          v17 = " GMT";
        }

        else
        {
          v17 = "";
        }

        return BIO_printf(fp, "%s %2d %02d:%02d:%02d %d%s", mon[v9 - 529], v10, v11, v12, v15, v16, v17) > 0;
      }
    }
  }

  BIO_write(fp, "Bad time value", 14);
  return 0;
}

int ASN1_GENERALIZEDTIME_print(BIO *fp, ASN1_GENERALIZEDTIME *a)
{
  length = a->length;
  if (length >= 12)
  {
    v4 = 0;
    data = a->data;
    v6 = data[length - 1];
    do
    {
      if (data[v4] - 58 < 0xFFFFFFF6)
      {
        goto LABEL_2;
      }

      ++v4;
    }

    while (v4 != 12);
    v7 = data[5] + 10 * data[4];
    if ((v7 - 541) < 0xFFFFFFF4)
    {
      goto LABEL_2;
    }

    v8 = 100 * data[1] + 1000 * *data + 10 * data[2] + data[3] - 53328;
    v9 = data[7] + 10 * data[6] - 528;
    v10 = data[9] + 10 * data[8] - 528;
    v11 = data[11] + 10 * data[10] - 528;
    if (length < 14)
    {
      v14 = 0;
      v17 = 0;
      v15 = "";
    }

    else
    {
      v12 = data[12];
      if ((v12 - 48) > 9 || (v13 = data[13] - 48, v13 > 9))
      {
        v14 = 0;
      }

      else
      {
        v14 = ((10 * v12 + 32) & 0xFE) + v13;
        if (length != 14)
        {
          v15 = (data + 14);
          if (data[14] == 46)
          {
            if (length < 0x10)
            {
              v17 = 1;
            }

            else
            {
              v16 = (length - 14);
              v17 = length - 14;
              v18 = data + 15;
              v19 = 1;
              while (1)
              {
                v20 = *v18++;
                if ((v20 - 48) > 9)
                {
                  break;
                }

                if (v16 == ++v19)
                {
                  goto LABEL_21;
                }
              }

              v17 = v19;
            }

            goto LABEL_21;
          }
        }
      }

      v17 = 0;
      v15 = "";
    }

LABEL_21:
    v21 = mon[v7 - 529];
    if (v6 == 90)
    {
      v22 = " GMT";
    }

    else
    {
      v22 = "";
    }

    return BIO_printf(fp, "%s %2d %02d:%02d:%02d%.*s %d%s", v21, v9, v10, v11, v14, v17, v15, v8, v22) > 0;
  }

LABEL_2:
  BIO_write(fp, "Bad time value", 14);
  return 0;
}

int X509_NAME_print(BIO *bp, X509_NAME *name, int obase)
{
  v4 = X509_NAME_oneline(name, 0, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (!*v4)
  {
    free(v4);
    return 1;
  }

  v6 = v4 + 1;
  v7 = (v4 + 2);
  v8 = v4 + 1;
  while (1)
  {
    v9 = *(v7 - 1);
    if (!*(v7 - 1))
    {
      break;
    }

    if (v9 == 47)
    {
      if (*v7 - 65 > 0x19 || (v10 = v7[1], v10 != 61) && ((v10 - 65) > 0x19 || v7[2] != 61))
      {
        v9 = 47;
        goto LABEL_15;
      }

      break;
    }

LABEL_15:
    ++v7;
    ++v8;
    if (!v9)
    {
      goto LABEL_16;
    }
  }

  if (v8 - v6 != BIO_write(bp, v6, v8 - v6))
  {
    goto LABEL_19;
  }

  if (!*(v7 - 1))
  {
LABEL_16:
    v11 = 1;
    goto LABEL_20;
  }

  if (BIO_write(bp, ", ", 2) == 2)
  {
    v9 = *(v7 - 1);
    v6 = v7;
    goto LABEL_15;
  }

LABEL_19:
  ERR_put_error(11, 4095, 7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/t_x509.c", 508);
  v11 = 0;
LABEL_20:
  free(v5);
  return v11;
}

int CONF_modules_load(const CONF *cnf, const char *appname, unint64_t flags)
{
  if (cnf)
  {
    v3 = flags;
    if (!appname)
    {
      goto LABEL_5;
    }

    string = NCONF_get_string(cnf, 0, appname);
    if (string)
    {
      goto LABEL_6;
    }

    if ((v3 & 0x20) != 0)
    {
LABEL_5:
      string = NCONF_get_string(cnf, 0, "openssl_conf");
      if (string)
      {
LABEL_6:
        section = NCONF_get_section(cnf, string);
        if (!section)
        {
          return section;
        }

        v7 = section;
        if (sk_num(section) >= 1)
        {
          v8 = 0;
          while (1)
          {
            v9 = sk_value(v7, v8);
            v11 = *(v9 + 1);
            v10 = *(v9 + 2);
            v12 = strrchr(v11, 46);
            v13 = v12 ? v12 - v11 : strlen(v11);
            if (sk_num(supported_modules) >= 1)
            {
              break;
            }

LABEL_16:
            if ((v3 & 8) == 0)
            {
              v16 = NCONF_get_string(cnf, v10, "path");
              if (!v16)
              {
                ERR_clear_error();
                v16 = v11;
              }

              v17 = DSO_load(0, v16, 0, 0);
              if (v17)
              {
                v18 = v17;
                v19 = DSO_bind_func(v17, "OPENSSL_init");
                if (v19)
                {
                  v20 = v19;
                  v21 = DSO_bind_func(v18, "OPENSSL_finish");
                  v15 = module_add(v18, v11, v20, v21);
                  if (v15)
                  {
                    goto LABEL_22;
                  }
                }

                else
                {
                  LODWORD(v15) = 112;
                }

                DSO_free(v18);
              }

              else
              {
                LODWORD(v15) = 110;
              }

              ERR_put_error(14, 4095, v15, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/conf/conf_mod.c", 273);
              ERR_asprintf_error_data("module=%s, path=%s", v11, v16);
            }

            if ((v3 & 4) == 0)
            {
              ERR_put_error(14, 4095, 113, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/conf/conf_mod.c", 214);
              ERR_asprintf_error_data("module=%s");
            }

LABEL_44:
            if ((v3 & 1) == 0)
            {
              LODWORD(section) = -1;
              return section;
            }

LABEL_45:
            if (++v8 >= sk_num(v7))
            {
              goto LABEL_55;
            }
          }

          v14 = 0;
          while (1)
          {
            v15 = sk_value(supported_modules, v14);
            if (!strncmp(v15[1], v11, v13))
            {
              break;
            }

            if (++v14 >= sk_num(supported_modules))
            {
              goto LABEL_16;
            }
          }

LABEL_22:
          v22 = malloc_type_malloc(0x28uLL, 0x10B0040F35B56FDuLL);
          if (!v22)
          {
LABEL_37:
            if ((v3 & 4) == 0)
            {
              ERR_put_error(14, 4095, 109, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/conf/conf_mod.c", 224);
              ERR_asprintf_error_data("module=%s, value=%s, retcode=%-8d");
            }

            goto LABEL_44;
          }

          v23 = v22;
          *v22 = v15;
          if (v11)
          {
            v24 = strdup(v11);
            *(v23 + 1) = v24;
            if (v10)
            {
LABEL_25:
              v25 = strdup(v10);
              *(v23 + 2) = v25;
              *(v23 + 4) = 0;
              if (v24 && v25)
              {
                v26 = v15[2];
                if (!v26 || (v26)(v23, cnf) >= 1)
                {
                  v27 = initialized_modules;
                  if (initialized_modules || (v27 = sk_new_null(), (initialized_modules = v27) != 0))
                  {
                    if (sk_push(v27, v23))
                    {
                      ++*(v15 + 8);
                      goto LABEL_45;
                    }

                    v28 = 376;
                  }

                  else
                  {
                    v28 = 370;
                  }

                  ERR_put_error(14, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/conf/conf_mod.c", v28);
                }

                if (v26)
                {
                  v29 = v15[3];
                  if (v29)
                  {
                    (v29)(v23);
                  }
                }
              }

              goto LABEL_36;
            }
          }

          else
          {
            v24 = 0;
            *(v22 + 1) = 0;
            if (v10)
            {
              goto LABEL_25;
            }
          }

          *(v23 + 2) = 0;
          *(v23 + 4) = 0;
LABEL_36:
          free(*(v23 + 1));
          free(*(v23 + 2));
          free(v23);
          goto LABEL_37;
        }

LABEL_55:
        LODWORD(section) = 1;
        return section;
      }
    }

    ERR_clear_error();
    goto LABEL_55;
  }

  LODWORD(section) = 1;
  return section;
}

int CONF_modules_load_file(const char *filename, const char *appname, unint64_t flags)
{
  v6 = NCONF_new(0);
  if (v6)
  {
    v7 = filename;
    if (!filename)
    {
      v13 = 0;
      default_cert_area = X509_get_default_cert_area();
      v9 = asprintf(&v13, "%s/openssl.cnf", default_cert_area);
      v10 = 0;
      v11 = 0;
      if (v9 == -1)
      {
        goto LABEL_13;
      }

      v7 = v13;
      if (!v13)
      {
        goto LABEL_13;
      }
    }

    if (NCONF_load(v6, v7, 0) > 0)
    {
      v11 = CONF_modules_load(v6, appname, flags);
      goto LABEL_12;
    }

    if ((flags & 0x10) != 0 && (ERR_peek_last_error() & 0xFFF) == 0x72)
    {
      ERR_clear_error();
      v11 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = 0;
LABEL_12:
  v10 = v7;
  if (!filename)
  {
LABEL_13:
    free(v10);
  }

  NCONF_free(v6);
  return v11;
}

char *CONF_get1_default_config_file(void)
{
  v2 = 0;
  default_cert_area = X509_get_default_cert_area();
  if (asprintf(&v2, "%s/openssl.cnf", default_cert_area) == -1)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

void CONF_modules_unload(int all)
{
  CONF_modules_finish();
  v2 = sk_num(supported_modules);
  if (v2 >= 1)
  {
    for (i = v2 + 1; i > 1; --i)
    {
      v4 = sk_value(supported_modules, i - 2);
      v5 = v4;
      if (*(v4 + 8) <= 0)
      {
        if (all || *v4)
        {
LABEL_5:
          sk_delete(supported_modules, i - 2);
          if (*v5)
          {
            DSO_free(*v5);
          }

          free(*(v5 + 1));
          free(v5);
        }
      }

      else if (all)
      {
        goto LABEL_5;
      }
    }
  }

  if (!sk_num(supported_modules))
  {
    sk_free(supported_modules);
    supported_modules = 0;
  }
}

void CONF_modules_finish(void)
{
  if (sk_num(initialized_modules) >= 1)
  {
    do
    {
      v0 = sk_pop(initialized_modules);
      v1 = v0;
      v2 = *v0;
      v3 = *(*v0 + 24);
      if (v3)
      {
        v3(v0);
        v2 = *v1;
      }

      --v2[8];
      free(v1[1]);
      free(v1[2]);
      free(v1);
    }

    while (sk_num(initialized_modules) > 0);
  }

  sk_free(initialized_modules);
  initialized_modules = 0;
}

void *module_add(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  if (!supported_modules)
  {
    supported_modules = sk_new_null();
    if (!supported_modules)
    {
      return 0;
    }
  }

  v8 = malloc_type_malloc(0x30uLL, 0x10B004022DC5C45uLL);
  v9 = v8;
  if (v8)
  {
    *v8 = a1;
    v8[1] = strdup(a2);
    v9[2] = a3;
    v9[3] = a4;
    *(v9 + 8) = 0;
    if (!sk_push(supported_modules, v9))
    {
      free(v9);
      return 0;
    }
  }

  return v9;
}

void CONF_modules_free(void)
{
  CONF_modules_finish();

  CONF_modules_unload(1);
}

int CONF_parse_list(const char *list, int sep, int nospc, int (__cdecl *list_cb)(const char *, int, void *), void *arg)
{
  if (list)
  {
    v9 = list;
    v10 = MEMORY[0x277D85DE0];
    while (1)
    {
      if (nospc)
      {
        v11 = *v9;
        if (*v9)
        {
          do
          {
            if ((v11 & 0x80) != 0)
            {
              if (!__maskrune(v11, 0x4000uLL))
              {
                break;
              }
            }

            else if ((*(v10 + 4 * v11 + 60) & 0x4000) == 0)
            {
              break;
            }

            v12 = *++v9;
            v11 = v12;
          }

          while (v12);
        }
      }

      v13 = strchr(v9, sep);
      v14 = v13;
      if (v13 != v9)
      {
        if (*v9)
        {
          break;
        }
      }

      v18 = 0;
      v19 = 0;
LABEL_23:
      result = (list_cb)(v18, v19, arg);
      if (result < 1)
      {
        return result;
      }

      v9 = v14 + 1;
      if (!v14)
      {
        return 1;
      }
    }

    v15 = v13;
    if (v13)
    {
      if (nospc)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v15 = &v9[strlen(v9)];
      if (nospc)
      {
        do
        {
LABEL_14:
          v16 = *(v15 - 1);
          if (v16 < 0)
          {
            v17 = __maskrune(*(v15 - 1), 0x4000uLL);
          }

          else
          {
            v17 = *(v10 + 4 * v16 + 60) & 0x4000;
          }

          --v15;
        }

        while (v17);
        goto LABEL_22;
      }
    }

    LODWORD(v15) = v15 - 1;
LABEL_22:
    v19 = (v15 - v9 + 1);
    v18 = v9;
    goto LABEL_23;
  }

  ERR_put_error(14, 4095, 115, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/conf/conf_mod.c", 568);
  return 0;
}

EVP_CIPHER_CTX *pkey_cmac_init(uint64_t a1)
{
  result = CMAC_CTX_new();
  *(a1 + 40) = result;
  if (result)
  {
    *(a1 + 72) = 0;
    return 1;
  }

  return result;
}

EVP_CIPHER_CTX *pkey_cmac_copy(uint64_t a1, uint64_t a2)
{
  result = CMAC_CTX_new();
  *(a1 + 40) = result;
  if (result)
  {
    *(a1 + 72) = 0;
    return (CMAC_CTX_copy(result, *(a2 + 40)) != 0);
  }

  return result;
}

EVP_CIPHER_CTX *pkey_cmac_keygen(uint64_t a1, EVP_PKEY *a2)
{
  result = CMAC_CTX_new();
  if (result)
  {
    v5 = result;
    if (CMAC_CTX_copy(result, *(a1 + 40)))
    {
      EVP_PKEY_assign(a2, 894, v5);
      return 1;
    }

    else
    {
      CMAC_CTX_free(v5);
      return 0;
    }
  }

  return result;
}

uint64_t cmac_signctx_init(int a1, EVP_MD_CTX *ctx)
{
  EVP_MD_CTX_set_flags(ctx, 256);
  ctx[1].engine = int_update;
  return 1;
}

uint64_t pkey_cmac_ctrl(uint64_t a1, int a2, uint64_t a3, EVP_CIPHER *a4)
{
  v4 = *(a1 + 40);
  switch(a2)
  {
    case 1:
      v9 = *(a1 + 16);
      if (!v9 || (result = CMAC_CTX_copy(*(a1 + 40), *(v9 + 32)), result))
      {
        v6 = v4;
        v7 = 0;
        a3 = 0;
        goto LABEL_11;
      }

      break;
    case 12:
      v8 = *(a1 + 8);
      v6 = *(a1 + 40);
      v7 = 0;
      a3 = 0;
      goto LABEL_12;
    case 6:
      result = 0;
      if ((a3 & 0x80000000) == 0 && a4)
      {
        a3 = a3;
        v6 = v4;
        v7 = a4;
LABEL_11:
        a4 = 0;
        v8 = 0;
LABEL_12:
        result = CMAC_Init(v6, v7, a3, a4, v8);
        if (result)
        {
          return 1;
        }
      }

      break;
    default:
      return 4294967294;
  }

  return result;
}

uint64_t pkey_cmac_ctrl_str(uint64_t a1, char *__s1, char *a3)
{
  if (!a3)
  {
    return 0;
  }

  if (!strcmp(__s1, "key"))
  {
    v7 = strlen(a3);
    if (v7 < 0)
    {
      return 0;
    }

    v8 = v7 & 0x7FFFFFFF;
    v9 = *(a1 + 40);
    v10 = a3;
    v11 = 0;
    v12 = 0;
    return CMAC_Init(v9, v10, v8, v11, v12) != 0;
  }

  if (!strcmp(__s1, "cipher"))
  {
    cipherbyname = EVP_get_cipherbyname(a3);
    if (!cipherbyname)
    {
      return 0;
    }

    v11 = cipherbyname;
    v9 = *(a1 + 40);
    v12 = *(a1 + 8);
    v10 = 0;
    v8 = 0;
    return CMAC_Init(v9, v10, v8, v11, v12) != 0;
  }

  if (strcmp(__s1, "hexkey"))
  {
    return 4294967294;
  }

  len = 0;
  v14 = string_to_hex(a3, &len);
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  v6 = (len & 0x80000000) == 0 && CMAC_Init(*(a1 + 40), v14, len & 0x7FFFFFFF, 0, 0) != 0;
  free(v15);
  return v6;
}

void *ossl_ecdh_compute_key(uint64_t a1, uint64_t a2, uint64_t a3, EC_KEY *a4, uint64_t a5)
{
  result = ecdh_check(a4);
  if (result)
  {
    v11 = *(result[3] + 8);

    return v11(a1, a2, a3, a4, a5);
  }

  return result;
}

int ECDH_compute_key(void *out, size_t outlen, const EC_POINT *pub_key, EC_KEY *ecdh, void *(__cdecl *KDF)(const void *, size_t, void *, size_t *))
{
  v6 = *(*ecdh + 72);
  if (v6)
  {

    return v6(out, outlen, pub_key);
  }

  else
  {
    ERR_put_error(16, 4095, 126, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ecdh/ech_key.c", 227);
    return 0;
  }
}

uint64_t ecdh_compute_key(char *a1, size_t a2, const EC_POINT *a3, const EC_KEY *a4, uint64_t (*a5)(char *, unint64_t, char *, size_t *))
{
  v34 = a2;
  if (!(a2 >> 31))
  {
    v5 = a2;
    v10 = BN_CTX_new();
    v11 = v10;
    if (!v10)
    {
      EC_POINT_free(0);
      v24 = 0;
      v5 = 0xFFFFFFFFLL;
LABEL_23:
      BN_CTX_free(v11);
      free(v24);
      return v5;
    }

    BN_CTX_start(v10);
    v12 = BN_CTX_get(v11);
    if (!v12)
    {
      goto LABEL_21;
    }

    v13 = v12;
    v12 = BN_CTX_get(v11);
    if (!v12)
    {
      goto LABEL_21;
    }

    v14 = v12;
    v15 = EC_KEY_get0_private_key(a4);
    if (v15)
    {
      v16 = v15;
      v17 = EC_KEY_get0_group(a4);
      if (!EC_POINT_is_on_curve(v17, a3, v11))
      {
LABEL_20:
        v12 = 0;
LABEL_21:
        v24 = 0;
        v5 = 0xFFFFFFFFLL;
        goto LABEL_22;
      }

      v18 = EC_POINT_new(v17);
      if (v18)
      {
        v33 = v18;
        if (EC_POINT_mul(v17, v18, 0, a3, v16, v11))
        {
          if (EC_POINT_get_affine_coordinates(v17, v33, v13, v14, v11))
          {
            v19 = ECDH_size(a4);
            v20 = BN_num_bits(v13);
            if (v20 >= -7)
            {
              v21 = v20 + 7;
            }

            else
            {
              v21 = v20 + 14;
            }

            if (v21 >> 3 <= v19)
            {
              v28 = v19;
              if (a5 || v5 >= v19)
              {
                v29 = malloc_type_malloc(v19, 0x816CE528uLL);
                v24 = v29;
                if (v29)
                {
                  v30 = v21 >> 3;
                  bzero(v29, v28 - v30);
                  if (v30 == BN_bn2bin(v13, &v24[v28 - v30]))
                  {
                    if (!a5)
                    {
                      if (v5 > v28)
                      {
                        bzero(&a1[v28], v5 - v28);
                        v34 = v28;
                        v5 = v28;
                      }

                      memcpy(a1, v24, v5);
                      goto LABEL_32;
                    }

                    if (a5(v24, v28, a1, &v34))
                    {
                      v5 = v34;
                      goto LABEL_32;
                    }

                    v31 = 102;
                    v32 = 173;
                  }

                  else
                  {
                    v31 = 3;
                    v32 = 167;
                  }
                }

                else
                {
                  v31 = 65;
                  v32 = 161;
                }

                ERR_put_error(43, 4095, v31, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ecdh/ech_key.c", v32);
LABEL_31:
                v5 = 0xFFFFFFFFLL;
LABEL_32:
                v12 = v33;
                goto LABEL_22;
              }

              v22 = 104;
              v23 = 157;
            }

            else
            {
              v22 = 68;
              v23 = 152;
            }
          }

          else
          {
            v22 = 101;
            v23 = 145;
          }

          ERR_put_error(43, 4095, v22, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ecdh/ech_key.c", v23);
          v24 = 0;
          goto LABEL_31;
        }

        ERR_put_error(43, 4095, 101, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ecdh/ech_key.c", 140);
        v24 = 0;
        v5 = 0xFFFFFFFFLL;
        v12 = v33;
LABEL_22:
        EC_POINT_free(v12);
        BN_CTX_end(v11);
        goto LABEL_23;
      }

      v25 = 65;
      v26 = 135;
    }

    else
    {
      v25 = 100;
      v26 = 125;
    }

    ERR_put_error(43, 4095, v25, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ecdh/ech_key.c", v26);
    goto LABEL_20;
  }

  ERR_put_error(43, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ecdh/ech_key.c", 111);
  return 0xFFFFFFFFLL;
}

void DES_encrypt1(unsigned int *data, DES_key_schedule *ks, int enc)
{
  v3 = data[1];
  v4 = (*data ^ (v3 >> 4)) & 0xF0F0F0F;
  v5 = v4 ^ *data;
  v6 = v3 ^ (16 * v4);
  v7 = v6 ^ HIWORD(v5);
  v8 = v7 ^ v6;
  v9 = v5 ^ (v7 << 16);
  v10 = (v9 ^ (v8 >> 2)) & 0x33333333;
  v11 = v10 ^ v9;
  v12 = v8 ^ (4 * v10);
  v13 = (v12 ^ (v11 >> 8)) & 0xFF00FF;
  v14 = v13 ^ v12;
  v15 = v11 ^ (v13 << 8);
  v16 = (v15 ^ (v14 >> 1)) & 0x55555555;
  HIDWORD(v18) = v16 ^ v15;
  LODWORD(v18) = v16 ^ v15;
  v17 = v18 >> 29;
  HIDWORD(v18) = v14 ^ (2 * v16);
  LODWORD(v18) = HIDWORD(v18);
  v19 = v18 >> 29;
  if (enc)
  {
    v20 = ks->ks[0].deslong[0] ^ v17;
    HIDWORD(v22) = ks->ks[0].deslong[1] ^ v17;
    LODWORD(v22) = HIDWORD(v22);
    v21 = v22 >> 4;
    v23 = DES_SPtrans[v20 >> 2] ^ DES_SPtrans[(v20 >> 10) + 128] ^ DES_SPtrans[((v20 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v20 >> 26) + 384] ^ DES_SPtrans[(v21 >> 2) + 64] ^ DES_SPtrans[(v21 >> 10) + 192] ^ DES_SPtrans[((v21 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v21 >> 26) + 448] ^ v19;
    v24 = v23 ^ ks->ks[1].deslong[0];
    HIDWORD(v22) = v23 ^ ks->ks[1].deslong[1];
    LODWORD(v22) = HIDWORD(v22);
    v25 = v22 >> 4;
    v26 = DES_SPtrans[v24 >> 2] ^ DES_SPtrans[(v24 >> 10) + 128] ^ DES_SPtrans[((v24 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v24 >> 26) + 384] ^ DES_SPtrans[(v25 >> 2) + 64] ^ DES_SPtrans[(v25 >> 10) + 192] ^ DES_SPtrans[((v25 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v25 >> 26) + 448] ^ v17;
    v27 = v26 ^ ks->ks[2].deslong[0];
    HIDWORD(v22) = v26 ^ ks->ks[2].deslong[1];
    LODWORD(v22) = HIDWORD(v22);
    v28 = v22 >> 4;
    v29 = DES_SPtrans[v27 >> 2] ^ DES_SPtrans[(v27 >> 10) + 128] ^ DES_SPtrans[((v27 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v27 >> 26) + 384] ^ DES_SPtrans[(v28 >> 2) + 64] ^ DES_SPtrans[(v28 >> 10) + 192] ^ DES_SPtrans[((v28 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v28 >> 26) + 448] ^ v23;
    v30 = v29 ^ ks->ks[3].deslong[0];
    HIDWORD(v22) = v29 ^ ks->ks[3].deslong[1];
    LODWORD(v22) = HIDWORD(v22);
    v31 = v22 >> 4;
    v32 = DES_SPtrans[v30 >> 2] ^ DES_SPtrans[(v30 >> 10) + 128] ^ DES_SPtrans[((v30 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v30 >> 26) + 384] ^ DES_SPtrans[(v31 >> 2) + 64] ^ DES_SPtrans[(v31 >> 10) + 192] ^ DES_SPtrans[((v31 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v31 >> 26) + 448] ^ v26;
    v33 = v32 ^ ks->ks[4].deslong[0];
    HIDWORD(v22) = v32 ^ ks->ks[4].deslong[1];
    LODWORD(v22) = HIDWORD(v22);
    v34 = v22 >> 4;
    v35 = DES_SPtrans[v33 >> 2] ^ DES_SPtrans[(v33 >> 10) + 128] ^ DES_SPtrans[((v33 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v33 >> 26) + 384] ^ DES_SPtrans[(v34 >> 2) + 64] ^ DES_SPtrans[(v34 >> 10) + 192] ^ DES_SPtrans[((v34 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v34 >> 26) + 448] ^ v29;
    v36 = v35 ^ ks->ks[5].deslong[0];
    HIDWORD(v22) = v35 ^ ks->ks[5].deslong[1];
    LODWORD(v22) = HIDWORD(v22);
    v37 = v22 >> 4;
    v38 = DES_SPtrans[v36 >> 2] ^ DES_SPtrans[(v36 >> 10) + 128] ^ DES_SPtrans[((v36 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v36 >> 26) + 384] ^ DES_SPtrans[(v37 >> 2) + 64] ^ DES_SPtrans[(v37 >> 10) + 192] ^ DES_SPtrans[((v37 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v37 >> 26) + 448] ^ v32;
    v39 = v38 ^ ks->ks[6].deslong[0];
    HIDWORD(v22) = v38 ^ ks->ks[6].deslong[1];
    LODWORD(v22) = HIDWORD(v22);
    v40 = v22 >> 4;
    v41 = DES_SPtrans[v39 >> 2] ^ DES_SPtrans[(v39 >> 10) + 128] ^ DES_SPtrans[((v39 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v39 >> 26) + 384] ^ DES_SPtrans[(v40 >> 2) + 64] ^ DES_SPtrans[(v40 >> 10) + 192] ^ DES_SPtrans[((v40 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v40 >> 26) + 448] ^ v35;
    v42 = v41 ^ ks->ks[7].deslong[0];
    HIDWORD(v22) = v41 ^ ks->ks[7].deslong[1];
    LODWORD(v22) = HIDWORD(v22);
    v43 = v22 >> 4;
    v44 = DES_SPtrans[v42 >> 2] ^ DES_SPtrans[(v42 >> 10) + 128] ^ DES_SPtrans[((v42 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v42 >> 26) + 384] ^ DES_SPtrans[(v43 >> 2) + 64] ^ DES_SPtrans[(v43 >> 10) + 192] ^ DES_SPtrans[((v43 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v43 >> 26) + 448] ^ v38;
    v45 = v44 ^ ks->ks[8].deslong[0];
    HIDWORD(v22) = v44 ^ ks->ks[8].deslong[1];
    LODWORD(v22) = HIDWORD(v22);
    v46 = v22 >> 4;
    v47 = DES_SPtrans[v45 >> 2] ^ DES_SPtrans[(v45 >> 10) + 128] ^ DES_SPtrans[((v45 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v45 >> 26) + 384] ^ DES_SPtrans[(v46 >> 2) + 64] ^ DES_SPtrans[(v46 >> 10) + 192] ^ DES_SPtrans[((v46 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v46 >> 26) + 448] ^ v41;
    v48 = v47 ^ ks->ks[9].deslong[0];
    HIDWORD(v22) = v47 ^ ks->ks[9].deslong[1];
    LODWORD(v22) = HIDWORD(v22);
    v49 = v22 >> 4;
    v50 = DES_SPtrans[v48 >> 2] ^ DES_SPtrans[(v48 >> 10) + 128] ^ DES_SPtrans[((v48 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v48 >> 26) + 384] ^ DES_SPtrans[(v49 >> 2) + 64] ^ DES_SPtrans[(v49 >> 10) + 192] ^ DES_SPtrans[((v49 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v49 >> 26) + 448] ^ v44;
    v51 = v50 ^ ks->ks[10].deslong[0];
    HIDWORD(v22) = v50 ^ ks->ks[10].deslong[1];
    LODWORD(v22) = HIDWORD(v22);
    v52 = v22 >> 4;
    v53 = DES_SPtrans[v51 >> 2] ^ DES_SPtrans[(v51 >> 10) + 128] ^ DES_SPtrans[((v51 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v51 >> 26) + 384] ^ DES_SPtrans[(v52 >> 2) + 64] ^ DES_SPtrans[(v52 >> 10) + 192] ^ DES_SPtrans[((v52 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v52 >> 26) + 448] ^ v47;
    v54 = v53 ^ ks->ks[11].deslong[0];
    HIDWORD(v22) = v53 ^ ks->ks[11].deslong[1];
    LODWORD(v22) = HIDWORD(v22);
    v55 = v22 >> 4;
    v56 = DES_SPtrans[v54 >> 2] ^ DES_SPtrans[(v54 >> 10) + 128] ^ DES_SPtrans[((v54 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v54 >> 26) + 384] ^ DES_SPtrans[(v55 >> 2) + 64] ^ DES_SPtrans[(v55 >> 10) + 192] ^ DES_SPtrans[((v55 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v55 >> 26) + 448] ^ v50;
    v57 = v56 ^ ks->ks[12].deslong[0];
    HIDWORD(v22) = v56 ^ ks->ks[12].deslong[1];
    LODWORD(v22) = HIDWORD(v22);
    v58 = v22 >> 4;
    v59 = DES_SPtrans[v57 >> 2] ^ DES_SPtrans[(v57 >> 10) + 128] ^ DES_SPtrans[((v57 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v57 >> 26) + 384] ^ DES_SPtrans[(v58 >> 2) + 64] ^ DES_SPtrans[(v58 >> 10) + 192] ^ DES_SPtrans[((v58 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v58 >> 26) + 448] ^ v53;
    v60 = v59 ^ ks->ks[13].deslong[0];
    HIDWORD(v22) = v59 ^ ks->ks[13].deslong[1];
    LODWORD(v22) = HIDWORD(v22);
    v61 = v22 >> 4;
    v62 = DES_SPtrans[v60 >> 2] ^ DES_SPtrans[(v60 >> 10) + 128] ^ DES_SPtrans[((v60 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v60 >> 26) + 384] ^ DES_SPtrans[(v61 >> 2) + 64] ^ DES_SPtrans[(v61 >> 10) + 192] ^ DES_SPtrans[((v61 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v61 >> 26) + 448] ^ v56;
    v63 = v62 ^ ks->ks[14].deslong[0];
    HIDWORD(v22) = v62 ^ ks->ks[14].deslong[1];
    LODWORD(v22) = HIDWORD(v22);
    v64 = DES_SPtrans[v63 >> 2] ^ DES_SPtrans[(v63 >> 10) + 128] ^ DES_SPtrans[((v63 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v63 >> 26) + 384] ^ DES_SPtrans[((v22 >> 4) >> 2) + 64] ^ DES_SPtrans[((v22 >> 4) >> 10) + 192] ^ DES_SPtrans[(((v22 >> 4) >> 18) & 0x3F) + 320] ^ DES_SPtrans[((v22 >> 4) >> 26) + 448] ^ v59;
    v65 = &ks->ks[15];
    v66 = 31;
  }

  else
  {
    v67 = ks->ks[15].deslong[0] ^ v17;
    HIDWORD(v69) = ks->ks[15].deslong[1] ^ v17;
    LODWORD(v69) = HIDWORD(v69);
    v68 = v69 >> 4;
    v70 = DES_SPtrans[v67 >> 2] ^ DES_SPtrans[(v67 >> 10) + 128] ^ DES_SPtrans[((v67 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v67 >> 26) + 384] ^ DES_SPtrans[(v68 >> 2) + 64] ^ DES_SPtrans[(v68 >> 10) + 192] ^ DES_SPtrans[((v68 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v68 >> 26) + 448] ^ v19;
    v71 = v70 ^ ks->ks[14].deslong[0];
    HIDWORD(v69) = v70 ^ ks->ks[14].deslong[1];
    LODWORD(v69) = HIDWORD(v69);
    v72 = v69 >> 4;
    v73 = DES_SPtrans[v71 >> 2] ^ DES_SPtrans[(v71 >> 10) + 128] ^ DES_SPtrans[((v71 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v71 >> 26) + 384] ^ DES_SPtrans[(v72 >> 2) + 64] ^ DES_SPtrans[(v72 >> 10) + 192] ^ DES_SPtrans[((v72 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v72 >> 26) + 448] ^ v17;
    v74 = v73 ^ ks->ks[13].deslong[0];
    HIDWORD(v69) = v73 ^ ks->ks[13].deslong[1];
    LODWORD(v69) = HIDWORD(v69);
    v75 = v69 >> 4;
    v76 = DES_SPtrans[v74 >> 2] ^ DES_SPtrans[(v74 >> 10) + 128] ^ DES_SPtrans[((v74 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v74 >> 26) + 384] ^ DES_SPtrans[(v75 >> 2) + 64] ^ DES_SPtrans[(v75 >> 10) + 192] ^ DES_SPtrans[((v75 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v75 >> 26) + 448] ^ v70;
    v77 = v76 ^ ks->ks[12].deslong[0];
    HIDWORD(v69) = v76 ^ ks->ks[12].deslong[1];
    LODWORD(v69) = HIDWORD(v69);
    v78 = v69 >> 4;
    v79 = DES_SPtrans[v77 >> 2] ^ DES_SPtrans[(v77 >> 10) + 128] ^ DES_SPtrans[((v77 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v77 >> 26) + 384] ^ DES_SPtrans[(v78 >> 2) + 64] ^ DES_SPtrans[(v78 >> 10) + 192] ^ DES_SPtrans[((v78 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v78 >> 26) + 448] ^ v73;
    v80 = v79 ^ ks->ks[11].deslong[0];
    HIDWORD(v69) = v79 ^ ks->ks[11].deslong[1];
    LODWORD(v69) = HIDWORD(v69);
    v81 = v69 >> 4;
    v82 = DES_SPtrans[v80 >> 2] ^ DES_SPtrans[(v80 >> 10) + 128] ^ DES_SPtrans[((v80 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v80 >> 26) + 384] ^ DES_SPtrans[(v81 >> 2) + 64] ^ DES_SPtrans[(v81 >> 10) + 192] ^ DES_SPtrans[((v81 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v81 >> 26) + 448] ^ v76;
    v83 = v82 ^ ks->ks[10].deslong[0];
    HIDWORD(v69) = v82 ^ ks->ks[10].deslong[1];
    LODWORD(v69) = HIDWORD(v69);
    v84 = v69 >> 4;
    v85 = DES_SPtrans[v83 >> 2] ^ DES_SPtrans[(v83 >> 10) + 128] ^ DES_SPtrans[((v83 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v83 >> 26) + 384] ^ DES_SPtrans[(v84 >> 2) + 64] ^ DES_SPtrans[(v84 >> 10) + 192] ^ DES_SPtrans[((v84 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v84 >> 26) + 448] ^ v79;
    v86 = v85 ^ ks->ks[9].deslong[0];
    HIDWORD(v69) = v85 ^ ks->ks[9].deslong[1];
    LODWORD(v69) = HIDWORD(v69);
    v87 = v69 >> 4;
    v88 = DES_SPtrans[v86 >> 2] ^ DES_SPtrans[(v86 >> 10) + 128] ^ DES_SPtrans[((v86 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v86 >> 26) + 384] ^ DES_SPtrans[(v87 >> 2) + 64] ^ DES_SPtrans[(v87 >> 10) + 192] ^ DES_SPtrans[((v87 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v87 >> 26) + 448] ^ v82;
    v89 = v88 ^ ks->ks[8].deslong[0];
    HIDWORD(v69) = v88 ^ ks->ks[8].deslong[1];
    LODWORD(v69) = HIDWORD(v69);
    v90 = v69 >> 4;
    v91 = DES_SPtrans[v89 >> 2] ^ DES_SPtrans[(v89 >> 10) + 128] ^ DES_SPtrans[((v89 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v89 >> 26) + 384] ^ DES_SPtrans[(v90 >> 2) + 64] ^ DES_SPtrans[(v90 >> 10) + 192] ^ DES_SPtrans[((v90 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v90 >> 26) + 448] ^ v85;
    v92 = v91 ^ ks->ks[7].deslong[0];
    HIDWORD(v69) = v91 ^ ks->ks[7].deslong[1];
    LODWORD(v69) = HIDWORD(v69);
    v93 = v69 >> 4;
    v94 = DES_SPtrans[v92 >> 2] ^ DES_SPtrans[(v92 >> 10) + 128] ^ DES_SPtrans[((v92 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v92 >> 26) + 384] ^ DES_SPtrans[(v93 >> 2) + 64] ^ DES_SPtrans[(v93 >> 10) + 192] ^ DES_SPtrans[((v93 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v93 >> 26) + 448] ^ v88;
    v95 = v94 ^ ks->ks[6].deslong[0];
    HIDWORD(v69) = v94 ^ ks->ks[6].deslong[1];
    LODWORD(v69) = HIDWORD(v69);
    v96 = v69 >> 4;
    v97 = DES_SPtrans[v95 >> 2] ^ DES_SPtrans[(v95 >> 10) + 128] ^ DES_SPtrans[((v95 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v95 >> 26) + 384] ^ DES_SPtrans[(v96 >> 2) + 64] ^ DES_SPtrans[(v96 >> 10) + 192] ^ DES_SPtrans[((v96 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v96 >> 26) + 448] ^ v91;
    v98 = v97 ^ ks->ks[5].deslong[0];
    HIDWORD(v69) = v97 ^ ks->ks[5].deslong[1];
    LODWORD(v69) = HIDWORD(v69);
    v99 = v69 >> 4;
    v100 = DES_SPtrans[v98 >> 2] ^ DES_SPtrans[(v98 >> 10) + 128] ^ DES_SPtrans[((v98 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v98 >> 26) + 384] ^ DES_SPtrans[(v99 >> 2) + 64] ^ DES_SPtrans[(v99 >> 10) + 192] ^ DES_SPtrans[((v99 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v99 >> 26) + 448] ^ v94;
    v101 = v100 ^ ks->ks[4].deslong[0];
    HIDWORD(v69) = v100 ^ ks->ks[4].deslong[1];
    LODWORD(v69) = HIDWORD(v69);
    v102 = v69 >> 4;
    v103 = DES_SPtrans[v101 >> 2] ^ DES_SPtrans[(v101 >> 10) + 128] ^ DES_SPtrans[((v101 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v101 >> 26) + 384] ^ DES_SPtrans[(v102 >> 2) + 64] ^ DES_SPtrans[(v102 >> 10) + 192] ^ DES_SPtrans[((v102 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v102 >> 26) + 448] ^ v97;
    v104 = v103 ^ ks->ks[3].deslong[0];
    HIDWORD(v69) = v103 ^ ks->ks[3].deslong[1];
    LODWORD(v69) = HIDWORD(v69);
    v105 = v69 >> 4;
    v106 = DES_SPtrans[v104 >> 2] ^ DES_SPtrans[(v104 >> 10) + 128] ^ DES_SPtrans[((v104 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v104 >> 26) + 384] ^ DES_SPtrans[(v105 >> 2) + 64] ^ DES_SPtrans[(v105 >> 10) + 192] ^ DES_SPtrans[((v105 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v105 >> 26) + 448] ^ v100;
    v107 = v106 ^ ks->ks[2].deslong[0];
    HIDWORD(v69) = v106 ^ ks->ks[2].deslong[1];
    LODWORD(v69) = HIDWORD(v69);
    v108 = v69 >> 4;
    v62 = DES_SPtrans[v107 >> 2] ^ DES_SPtrans[(v107 >> 10) + 128] ^ DES_SPtrans[((v107 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v107 >> 26) + 384] ^ DES_SPtrans[(v108 >> 2) + 64] ^ DES_SPtrans[(v108 >> 10) + 192] ^ DES_SPtrans[((v108 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v108 >> 26) + 448] ^ v103;
    v109 = v62 ^ ks->ks[1].deslong[0];
    HIDWORD(v69) = v62 ^ ks->ks[1].deslong[1];
    LODWORD(v69) = HIDWORD(v69);
    v64 = DES_SPtrans[v109 >> 2] ^ DES_SPtrans[(v109 >> 10) + 128] ^ DES_SPtrans[((v109 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v109 >> 26) + 384] ^ DES_SPtrans[((v69 >> 4) >> 2) + 64] ^ DES_SPtrans[((v69 >> 4) >> 10) + 192] ^ DES_SPtrans[(((v69 >> 4) >> 18) & 0x3F) + 320] ^ DES_SPtrans[((v69 >> 4) >> 26) + 448] ^ v106;
    v66 = 1;
    v65 = ks;
  }

  v110 = v64 ^ v65->ks[0].deslong[0];
  HIDWORD(v112) = v64 ^ ks->ks[0].deslong[v66];
  LODWORD(v112) = HIDWORD(v112);
  v111 = v112 >> 4;
  HIDWORD(v112) = DES_SPtrans[v110 >> 2] ^ DES_SPtrans[(v110 >> 10) + 128] ^ DES_SPtrans[((v110 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v110 >> 26) + 384] ^ DES_SPtrans[(v111 >> 2) + 64] ^ DES_SPtrans[(v111 >> 10) + 192] ^ DES_SPtrans[((v111 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v111 >> 26) + 448] ^ v62;
  LODWORD(v112) = HIDWORD(v112);
  v113 = (((v112 >> 3) >> 1) ^ __ROR4__(v64, 3)) & 0x55555555;
  v114 = v113 ^ __ROR4__(v64, 3);
  v115 = (2 * v113) ^ __ROR4__(HIDWORD(v112), 3);
  v116 = (v115 ^ (v114 >> 8)) & 0xFF00FF;
  v117 = v116 ^ v115;
  v118 = v114 ^ (v116 << 8);
  v119 = (v118 ^ (v117 >> 2)) & 0x33333333;
  v120 = v119 ^ v118;
  v121 = v117 ^ (4 * v119);
  v122 = v121 ^ HIWORD(v120);
  v123 = v122 ^ v121;
  v124 = v120 ^ (v122 << 16);
  v125 = (v124 ^ (v123 >> 4)) & 0xF0F0F0F;
  *data = v125 ^ v124;
  data[1] = v123 ^ (16 * v125);
}

void DES_encrypt2(unsigned int *data, DES_key_schedule *ks, int enc)
{
  HIDWORD(v4) = *data;
  LODWORD(v4) = *data;
  v3 = v4 >> 29;
  HIDWORD(v4) = data[1];
  LODWORD(v4) = HIDWORD(v4);
  v5 = v4 >> 29;
  if (enc)
  {
    v6 = ks->ks[0].deslong[0] ^ v3;
    HIDWORD(v8) = ks->ks[0].deslong[1] ^ v3;
    LODWORD(v8) = HIDWORD(v8);
    v7 = v8 >> 4;
    v9 = DES_SPtrans[v6 >> 2] ^ DES_SPtrans[(v6 >> 10) + 128] ^ DES_SPtrans[((v6 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v6 >> 26) + 384] ^ DES_SPtrans[(v7 >> 2) + 64] ^ DES_SPtrans[(v7 >> 10) + 192] ^ DES_SPtrans[((v7 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v7 >> 26) + 448] ^ v5;
    v10 = v9 ^ ks->ks[1].deslong[0];
    HIDWORD(v8) = v9 ^ ks->ks[1].deslong[1];
    LODWORD(v8) = HIDWORD(v8);
    v11 = v8 >> 4;
    v12 = DES_SPtrans[v10 >> 2] ^ DES_SPtrans[(v10 >> 10) + 128] ^ DES_SPtrans[((v10 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v10 >> 26) + 384] ^ DES_SPtrans[(v11 >> 2) + 64] ^ DES_SPtrans[(v11 >> 10) + 192] ^ DES_SPtrans[((v11 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v11 >> 26) + 448] ^ v3;
    v13 = v12 ^ ks->ks[2].deslong[0];
    HIDWORD(v8) = v12 ^ ks->ks[2].deslong[1];
    LODWORD(v8) = HIDWORD(v8);
    v14 = v8 >> 4;
    v15 = DES_SPtrans[v13 >> 2] ^ DES_SPtrans[(v13 >> 10) + 128] ^ DES_SPtrans[((v13 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v13 >> 26) + 384] ^ DES_SPtrans[(v14 >> 2) + 64] ^ DES_SPtrans[(v14 >> 10) + 192] ^ DES_SPtrans[((v14 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v14 >> 26) + 448] ^ v9;
    v16 = v15 ^ ks->ks[3].deslong[0];
    HIDWORD(v8) = v15 ^ ks->ks[3].deslong[1];
    LODWORD(v8) = HIDWORD(v8);
    v17 = v8 >> 4;
    v18 = DES_SPtrans[v16 >> 2] ^ DES_SPtrans[(v16 >> 10) + 128] ^ DES_SPtrans[((v16 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v16 >> 26) + 384] ^ DES_SPtrans[(v17 >> 2) + 64] ^ DES_SPtrans[(v17 >> 10) + 192] ^ DES_SPtrans[((v17 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v17 >> 26) + 448] ^ v12;
    v19 = v18 ^ ks->ks[4].deslong[0];
    HIDWORD(v8) = v18 ^ ks->ks[4].deslong[1];
    LODWORD(v8) = HIDWORD(v8);
    v20 = v8 >> 4;
    v21 = DES_SPtrans[v19 >> 2] ^ DES_SPtrans[(v19 >> 10) + 128] ^ DES_SPtrans[((v19 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v19 >> 26) + 384] ^ DES_SPtrans[(v20 >> 2) + 64] ^ DES_SPtrans[(v20 >> 10) + 192] ^ DES_SPtrans[((v20 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v20 >> 26) + 448] ^ v15;
    v22 = v21 ^ ks->ks[5].deslong[0];
    HIDWORD(v8) = v21 ^ ks->ks[5].deslong[1];
    LODWORD(v8) = HIDWORD(v8);
    v23 = v8 >> 4;
    v24 = DES_SPtrans[v22 >> 2] ^ DES_SPtrans[(v22 >> 10) + 128] ^ DES_SPtrans[((v22 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v22 >> 26) + 384] ^ DES_SPtrans[(v23 >> 2) + 64] ^ DES_SPtrans[(v23 >> 10) + 192] ^ DES_SPtrans[((v23 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v23 >> 26) + 448] ^ v18;
    v25 = v24 ^ ks->ks[6].deslong[0];
    HIDWORD(v8) = v24 ^ ks->ks[6].deslong[1];
    LODWORD(v8) = HIDWORD(v8);
    v26 = v8 >> 4;
    v27 = DES_SPtrans[v25 >> 2] ^ DES_SPtrans[(v25 >> 10) + 128] ^ DES_SPtrans[((v25 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v25 >> 26) + 384] ^ DES_SPtrans[(v26 >> 2) + 64] ^ DES_SPtrans[(v26 >> 10) + 192] ^ DES_SPtrans[((v26 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v26 >> 26) + 448] ^ v21;
    v28 = v27 ^ ks->ks[7].deslong[0];
    HIDWORD(v8) = v27 ^ ks->ks[7].deslong[1];
    LODWORD(v8) = HIDWORD(v8);
    v29 = v8 >> 4;
    v30 = DES_SPtrans[v28 >> 2] ^ DES_SPtrans[(v28 >> 10) + 128] ^ DES_SPtrans[((v28 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v28 >> 26) + 384] ^ DES_SPtrans[(v29 >> 2) + 64] ^ DES_SPtrans[(v29 >> 10) + 192] ^ DES_SPtrans[((v29 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v29 >> 26) + 448] ^ v24;
    v31 = v30 ^ ks->ks[8].deslong[0];
    HIDWORD(v8) = v30 ^ ks->ks[8].deslong[1];
    LODWORD(v8) = HIDWORD(v8);
    v32 = v8 >> 4;
    v33 = DES_SPtrans[v31 >> 2] ^ DES_SPtrans[(v31 >> 10) + 128] ^ DES_SPtrans[((v31 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v31 >> 26) + 384] ^ DES_SPtrans[(v32 >> 2) + 64] ^ DES_SPtrans[(v32 >> 10) + 192] ^ DES_SPtrans[((v32 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v32 >> 26) + 448] ^ v27;
    v34 = v33 ^ ks->ks[9].deslong[0];
    HIDWORD(v8) = v33 ^ ks->ks[9].deslong[1];
    LODWORD(v8) = HIDWORD(v8);
    v35 = v8 >> 4;
    v36 = DES_SPtrans[v34 >> 2] ^ DES_SPtrans[(v34 >> 10) + 128] ^ DES_SPtrans[((v34 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v34 >> 26) + 384] ^ DES_SPtrans[(v35 >> 2) + 64] ^ DES_SPtrans[(v35 >> 10) + 192] ^ DES_SPtrans[((v35 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v35 >> 26) + 448] ^ v30;
    v37 = v36 ^ ks->ks[10].deslong[0];
    HIDWORD(v8) = v36 ^ ks->ks[10].deslong[1];
    LODWORD(v8) = HIDWORD(v8);
    v38 = v8 >> 4;
    v39 = DES_SPtrans[v37 >> 2] ^ DES_SPtrans[(v37 >> 10) + 128] ^ DES_SPtrans[((v37 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v37 >> 26) + 384] ^ DES_SPtrans[(v38 >> 2) + 64] ^ DES_SPtrans[(v38 >> 10) + 192] ^ DES_SPtrans[((v38 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v38 >> 26) + 448] ^ v33;
    v40 = v39 ^ ks->ks[11].deslong[0];
    HIDWORD(v8) = v39 ^ ks->ks[11].deslong[1];
    LODWORD(v8) = HIDWORD(v8);
    v41 = v8 >> 4;
    v42 = DES_SPtrans[v40 >> 2] ^ DES_SPtrans[(v40 >> 10) + 128] ^ DES_SPtrans[((v40 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v40 >> 26) + 384] ^ DES_SPtrans[(v41 >> 2) + 64] ^ DES_SPtrans[(v41 >> 10) + 192] ^ DES_SPtrans[((v41 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v41 >> 26) + 448] ^ v36;
    v43 = v42 ^ ks->ks[12].deslong[0];
    HIDWORD(v8) = v42 ^ ks->ks[12].deslong[1];
    LODWORD(v8) = HIDWORD(v8);
    v44 = v8 >> 4;
    v45 = DES_SPtrans[v43 >> 2] ^ DES_SPtrans[(v43 >> 10) + 128] ^ DES_SPtrans[((v43 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v43 >> 26) + 384] ^ DES_SPtrans[(v44 >> 2) + 64] ^ DES_SPtrans[(v44 >> 10) + 192] ^ DES_SPtrans[((v44 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v44 >> 26) + 448] ^ v39;
    v46 = v45 ^ ks->ks[13].deslong[0];
    HIDWORD(v8) = v45 ^ ks->ks[13].deslong[1];
    LODWORD(v8) = HIDWORD(v8);
    v47 = v8 >> 4;
    v48 = DES_SPtrans[v46 >> 2] ^ DES_SPtrans[(v46 >> 10) + 128] ^ DES_SPtrans[((v46 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v46 >> 26) + 384] ^ DES_SPtrans[(v47 >> 2) + 64] ^ DES_SPtrans[(v47 >> 10) + 192] ^ DES_SPtrans[((v47 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v47 >> 26) + 448] ^ v42;
    v49 = v48 ^ ks->ks[14].deslong[0];
    HIDWORD(v8) = v48 ^ ks->ks[14].deslong[1];
    LODWORD(v8) = HIDWORD(v8);
    v50 = DES_SPtrans[v49 >> 2] ^ DES_SPtrans[(v49 >> 10) + 128] ^ DES_SPtrans[((v49 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v49 >> 26) + 384] ^ DES_SPtrans[((v8 >> 4) >> 2) + 64] ^ DES_SPtrans[((v8 >> 4) >> 10) + 192] ^ DES_SPtrans[(((v8 >> 4) >> 18) & 0x3F) + 320] ^ DES_SPtrans[((v8 >> 4) >> 26) + 448] ^ v45;
    v51 = &ks->ks[15];
    v52 = 31;
  }

  else
  {
    v53 = ks->ks[15].deslong[0] ^ v3;
    HIDWORD(v55) = ks->ks[15].deslong[1] ^ v3;
    LODWORD(v55) = HIDWORD(v55);
    v54 = v55 >> 4;
    v56 = DES_SPtrans[v53 >> 2] ^ DES_SPtrans[(v53 >> 10) + 128] ^ DES_SPtrans[((v53 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v53 >> 26) + 384] ^ DES_SPtrans[(v54 >> 2) + 64] ^ DES_SPtrans[(v54 >> 10) + 192] ^ DES_SPtrans[((v54 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v54 >> 26) + 448] ^ v5;
    v57 = v56 ^ ks->ks[14].deslong[0];
    HIDWORD(v55) = v56 ^ ks->ks[14].deslong[1];
    LODWORD(v55) = HIDWORD(v55);
    v58 = v55 >> 4;
    v59 = DES_SPtrans[v57 >> 2] ^ DES_SPtrans[(v57 >> 10) + 128] ^ DES_SPtrans[((v57 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v57 >> 26) + 384] ^ DES_SPtrans[(v58 >> 2) + 64] ^ DES_SPtrans[(v58 >> 10) + 192] ^ DES_SPtrans[((v58 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v58 >> 26) + 448] ^ v3;
    v60 = v59 ^ ks->ks[13].deslong[0];
    HIDWORD(v55) = v59 ^ ks->ks[13].deslong[1];
    LODWORD(v55) = HIDWORD(v55);
    v61 = v55 >> 4;
    v62 = DES_SPtrans[v60 >> 2] ^ DES_SPtrans[(v60 >> 10) + 128] ^ DES_SPtrans[((v60 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v60 >> 26) + 384] ^ DES_SPtrans[(v61 >> 2) + 64] ^ DES_SPtrans[(v61 >> 10) + 192] ^ DES_SPtrans[((v61 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v61 >> 26) + 448] ^ v56;
    v63 = v62 ^ ks->ks[12].deslong[0];
    HIDWORD(v55) = v62 ^ ks->ks[12].deslong[1];
    LODWORD(v55) = HIDWORD(v55);
    v64 = v55 >> 4;
    v65 = DES_SPtrans[v63 >> 2] ^ DES_SPtrans[(v63 >> 10) + 128] ^ DES_SPtrans[((v63 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v63 >> 26) + 384] ^ DES_SPtrans[(v64 >> 2) + 64] ^ DES_SPtrans[(v64 >> 10) + 192] ^ DES_SPtrans[((v64 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v64 >> 26) + 448] ^ v59;
    v66 = v65 ^ ks->ks[11].deslong[0];
    HIDWORD(v55) = v65 ^ ks->ks[11].deslong[1];
    LODWORD(v55) = HIDWORD(v55);
    v67 = v55 >> 4;
    v68 = DES_SPtrans[v66 >> 2] ^ DES_SPtrans[(v66 >> 10) + 128] ^ DES_SPtrans[((v66 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v66 >> 26) + 384] ^ DES_SPtrans[(v67 >> 2) + 64] ^ DES_SPtrans[(v67 >> 10) + 192] ^ DES_SPtrans[((v67 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v67 >> 26) + 448] ^ v62;
    v69 = v68 ^ ks->ks[10].deslong[0];
    HIDWORD(v55) = v68 ^ ks->ks[10].deslong[1];
    LODWORD(v55) = HIDWORD(v55);
    v70 = v55 >> 4;
    v71 = DES_SPtrans[v69 >> 2] ^ DES_SPtrans[(v69 >> 10) + 128] ^ DES_SPtrans[((v69 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v69 >> 26) + 384] ^ DES_SPtrans[(v70 >> 2) + 64] ^ DES_SPtrans[(v70 >> 10) + 192] ^ DES_SPtrans[((v70 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v70 >> 26) + 448] ^ v65;
    v72 = v71 ^ ks->ks[9].deslong[0];
    HIDWORD(v55) = v71 ^ ks->ks[9].deslong[1];
    LODWORD(v55) = HIDWORD(v55);
    v73 = v55 >> 4;
    v74 = DES_SPtrans[v72 >> 2] ^ DES_SPtrans[(v72 >> 10) + 128] ^ DES_SPtrans[((v72 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v72 >> 26) + 384] ^ DES_SPtrans[(v73 >> 2) + 64] ^ DES_SPtrans[(v73 >> 10) + 192] ^ DES_SPtrans[((v73 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v73 >> 26) + 448] ^ v68;
    v75 = v74 ^ ks->ks[8].deslong[0];
    HIDWORD(v55) = v74 ^ ks->ks[8].deslong[1];
    LODWORD(v55) = HIDWORD(v55);
    v76 = v55 >> 4;
    v77 = DES_SPtrans[v75 >> 2] ^ DES_SPtrans[(v75 >> 10) + 128] ^ DES_SPtrans[((v75 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v75 >> 26) + 384] ^ DES_SPtrans[(v76 >> 2) + 64] ^ DES_SPtrans[(v76 >> 10) + 192] ^ DES_SPtrans[((v76 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v76 >> 26) + 448] ^ v71;
    v78 = v77 ^ ks->ks[7].deslong[0];
    HIDWORD(v55) = v77 ^ ks->ks[7].deslong[1];
    LODWORD(v55) = HIDWORD(v55);
    v79 = v55 >> 4;
    v80 = DES_SPtrans[v78 >> 2] ^ DES_SPtrans[(v78 >> 10) + 128] ^ DES_SPtrans[((v78 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v78 >> 26) + 384] ^ DES_SPtrans[(v79 >> 2) + 64] ^ DES_SPtrans[(v79 >> 10) + 192] ^ DES_SPtrans[((v79 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v79 >> 26) + 448] ^ v74;
    v81 = v80 ^ ks->ks[6].deslong[0];
    HIDWORD(v55) = v80 ^ ks->ks[6].deslong[1];
    LODWORD(v55) = HIDWORD(v55);
    v82 = v55 >> 4;
    v83 = DES_SPtrans[v81 >> 2] ^ DES_SPtrans[(v81 >> 10) + 128] ^ DES_SPtrans[((v81 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v81 >> 26) + 384] ^ DES_SPtrans[(v82 >> 2) + 64] ^ DES_SPtrans[(v82 >> 10) + 192] ^ DES_SPtrans[((v82 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v82 >> 26) + 448] ^ v77;
    v84 = v83 ^ ks->ks[5].deslong[0];
    HIDWORD(v55) = v83 ^ ks->ks[5].deslong[1];
    LODWORD(v55) = HIDWORD(v55);
    v85 = v55 >> 4;
    v86 = DES_SPtrans[v84 >> 2] ^ DES_SPtrans[(v84 >> 10) + 128] ^ DES_SPtrans[((v84 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v84 >> 26) + 384] ^ DES_SPtrans[(v85 >> 2) + 64] ^ DES_SPtrans[(v85 >> 10) + 192] ^ DES_SPtrans[((v85 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v85 >> 26) + 448] ^ v80;
    v87 = v86 ^ ks->ks[4].deslong[0];
    HIDWORD(v55) = v86 ^ ks->ks[4].deslong[1];
    LODWORD(v55) = HIDWORD(v55);
    v88 = v55 >> 4;
    v89 = DES_SPtrans[v87 >> 2] ^ DES_SPtrans[(v87 >> 10) + 128] ^ DES_SPtrans[((v87 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v87 >> 26) + 384] ^ DES_SPtrans[(v88 >> 2) + 64] ^ DES_SPtrans[(v88 >> 10) + 192] ^ DES_SPtrans[((v88 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v88 >> 26) + 448] ^ v83;
    v90 = v89 ^ ks->ks[3].deslong[0];
    HIDWORD(v55) = v89 ^ ks->ks[3].deslong[1];
    LODWORD(v55) = HIDWORD(v55);
    v91 = v55 >> 4;
    v92 = DES_SPtrans[v90 >> 2] ^ DES_SPtrans[(v90 >> 10) + 128] ^ DES_SPtrans[((v90 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v90 >> 26) + 384] ^ DES_SPtrans[(v91 >> 2) + 64] ^ DES_SPtrans[(v91 >> 10) + 192] ^ DES_SPtrans[((v91 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v91 >> 26) + 448] ^ v86;
    v93 = v92 ^ ks->ks[2].deslong[0];
    HIDWORD(v55) = v92 ^ ks->ks[2].deslong[1];
    LODWORD(v55) = HIDWORD(v55);
    v94 = v55 >> 4;
    v48 = DES_SPtrans[v93 >> 2] ^ DES_SPtrans[(v93 >> 10) + 128] ^ DES_SPtrans[((v93 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v93 >> 26) + 384] ^ DES_SPtrans[(v94 >> 2) + 64] ^ DES_SPtrans[(v94 >> 10) + 192] ^ DES_SPtrans[((v94 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v94 >> 26) + 448] ^ v89;
    v95 = v48 ^ ks->ks[1].deslong[0];
    HIDWORD(v55) = v48 ^ ks->ks[1].deslong[1];
    LODWORD(v55) = HIDWORD(v55);
    v50 = DES_SPtrans[v95 >> 2] ^ DES_SPtrans[(v95 >> 10) + 128] ^ DES_SPtrans[((v95 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v95 >> 26) + 384] ^ DES_SPtrans[((v55 >> 4) >> 2) + 64] ^ DES_SPtrans[((v55 >> 4) >> 10) + 192] ^ DES_SPtrans[(((v55 >> 4) >> 18) & 0x3F) + 320] ^ DES_SPtrans[((v55 >> 4) >> 26) + 448] ^ v92;
    v52 = 1;
    v51 = ks;
  }

  v96 = v50 ^ v51->ks[0].deslong[0];
  HIDWORD(v98) = v50 ^ ks->ks[0].deslong[v52];
  LODWORD(v98) = HIDWORD(v98);
  v97 = v98 >> 4;
  HIDWORD(v98) = v50;
  LODWORD(v98) = v50;
  v99 = v98 >> 3;
  HIDWORD(v98) = DES_SPtrans[v96 >> 2] ^ DES_SPtrans[(v96 >> 10) + 128] ^ DES_SPtrans[((v96 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v96 >> 26) + 384] ^ DES_SPtrans[(v97 >> 2) + 64] ^ DES_SPtrans[(v97 >> 10) + 192] ^ DES_SPtrans[((v97 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v97 >> 26) + 448] ^ v48;
  LODWORD(v98) = HIDWORD(v98);
  *data = v99;
  data[1] = v98 >> 3;
}

void DES_encrypt3(unsigned int *data, DES_key_schedule *ks1, DES_key_schedule *ks2, DES_key_schedule *ks3)
{
  v7 = data[1];
  v8 = (*data ^ (v7 >> 4)) & 0xF0F0F0F;
  v9 = v8 ^ *data;
  v10 = v7 ^ (16 * v8);
  v11 = v10 ^ HIWORD(v9);
  v12 = v11 ^ v10;
  v13 = v9 ^ (v11 << 16);
  v14 = (v13 ^ (v12 >> 2)) & 0x33333333;
  v15 = v14 ^ v13;
  v16 = v12 ^ (4 * v14);
  v17 = (v16 ^ (v15 >> 8)) & 0xFF00FF;
  v18 = v17 ^ v16;
  v19 = v15 ^ (v17 << 8);
  v20 = (v19 ^ (v18 >> 1)) & 0x55555555;
  *data = v20 ^ v19;
  data[1] = v18 ^ (2 * v20);
  DES_encrypt2(data, ks1, 1);
  DES_encrypt2(data, ks2, 0);
  DES_encrypt2(data, ks3, 1);
  v21 = data[1];
  v22 = (*data ^ (v21 >> 1)) & 0x55555555;
  v23 = v22 ^ *data;
  v24 = v21 ^ (2 * v22);
  v25 = (v24 ^ (v23 >> 8)) & 0xFF00FF;
  v26 = v25 ^ v24;
  v27 = v23 ^ (v25 << 8);
  v28 = (v27 ^ (v26 >> 2)) & 0x33333333;
  v29 = v28 ^ v27;
  v30 = v26 ^ (4 * v28);
  v31 = v30 ^ HIWORD(v29);
  v32 = v31 ^ v30;
  v33 = v29 ^ (v31 << 16);
  v34 = (v33 ^ (v32 >> 4)) & 0xF0F0F0F;
  *data = v34 ^ v33;
  data[1] = v32 ^ (16 * v34);
}

void DES_decrypt3(unsigned int *data, DES_key_schedule *ks1, DES_key_schedule *ks2, DES_key_schedule *ks3)
{
  v7 = data[1];
  v8 = (*data ^ (v7 >> 4)) & 0xF0F0F0F;
  v9 = v8 ^ *data;
  v10 = v7 ^ (16 * v8);
  v11 = v10 ^ HIWORD(v9);
  v12 = v11 ^ v10;
  v13 = v9 ^ (v11 << 16);
  v14 = (v13 ^ (v12 >> 2)) & 0x33333333;
  v15 = v14 ^ v13;
  v16 = v12 ^ (4 * v14);
  v17 = (v16 ^ (v15 >> 8)) & 0xFF00FF;
  v18 = v17 ^ v16;
  v19 = v15 ^ (v17 << 8);
  v20 = (v19 ^ (v18 >> 1)) & 0x55555555;
  *data = v20 ^ v19;
  data[1] = v18 ^ (2 * v20);
  DES_encrypt2(data, ks3, 0);
  DES_encrypt2(data, ks2, 1);
  DES_encrypt2(data, ks1, 0);
  v21 = data[1];
  v22 = (*data ^ (v21 >> 1)) & 0x55555555;
  v23 = v22 ^ *data;
  v24 = v21 ^ (2 * v22);
  v25 = (v24 ^ (v23 >> 8)) & 0xFF00FF;
  v26 = v25 ^ v24;
  v27 = v23 ^ (v25 << 8);
  v28 = (v27 ^ (v26 >> 2)) & 0x33333333;
  v29 = v28 ^ v27;
  v30 = v26 ^ (4 * v28);
  v31 = v30 ^ HIWORD(v29);
  v32 = v31 ^ v30;
  v33 = v29 ^ (v31 << 16);
  v34 = (v33 ^ (v32 >> 4)) & 0xF0F0F0F;
  *data = v34 ^ v33;
  data[1] = v32 ^ (16 * v34);
}

void DES_ncbc_encrypt(const unsigned __int8 *input, unsigned __int8 *output, uint64_t length, DES_key_schedule *schedule, DES_cblock *ivec, int enc)
{
  v6 = ivec;
  v8 = length;
  v47 = *MEMORY[0x277D85DE8];
  v11 = *ivec;
  v12 = *ivec;
  v13 = HIDWORD(*ivec);
  if (!enc)
  {
    if (length >= 8)
    {
      do
      {
        v19 = output;
        v20 = v12;
        v21 = v13;
        v12 = *input;
        v13 = *(input + 1);
        v22 = v8;
        v8 -= 8;
        v23 = input + 8;
        data[0] = *input;
        data[1] = v13;
        DES_encrypt1(data, schedule, 0);
        v24 = HIWORD(data[0]) ^ HIWORD(v20);
        v25 = data[1] ^ v21;
        *v19 = LOWORD(data[0]) ^ v20;
        *(v19 + 1) = v24;
        *(v19 + 1) = v25;
        output = v19 + 8;
        input += 8;
      }

      while (v22 > 0xF);
      input = v23;
      v6 = ivec;
    }

    if (v8)
    {
      v27 = *input;
      v26 = *(input + 1);
      data[0] = v27;
      data[1] = v26;
      DES_encrypt1(data, schedule, 0);
      v28 = data[0] ^ v12;
      v29 = &output[v8];
      if (v8 <= 3)
      {
        if (v8 == 1)
        {
LABEL_46:
          *(v29 - 1) = v28;
          goto LABEL_47;
        }

        if (v8 == 2)
        {
LABEL_45:
          *--v29 = BYTE1(v28);
          goto LABEL_46;
        }

        if (v8 != 3)
        {
          goto LABEL_47;
        }

LABEL_44:
        *--v29 = BYTE2(v28);
        goto LABEL_45;
      }

      v30 = data[1] ^ v13;
      if (v8 <= 5)
      {
        if (v8 == 4)
        {
LABEL_43:
          *--v29 = HIBYTE(v28);
          goto LABEL_44;
        }

LABEL_42:
        *--v29 = v30;
        goto LABEL_43;
      }

      if (v8 == 6)
      {
LABEL_41:
        *--v29 = BYTE1(v30);
        goto LABEL_42;
      }

      if (v8 == 7)
      {
        *--v29 = BYTE2(v30);
        goto LABEL_41;
      }
    }

    else
    {
      v27 = v12;
      v26 = v13;
    }

LABEL_47:
    *v6 = v27;
    *&(*v6)[4] = v26;
    v36 = HIBYTE(v26);
    (*v6)[6] = BYTE2(v26);
    goto LABEL_48;
  }

  if (length >= 8)
  {
    do
    {
      v14 = output;
      v15 = v8;
      v8 -= 8;
      v16 = *input;
      input += 8;
      *data = veor_s8(v16, v11);
      DES_encrypt1(data, schedule, 1);
      v11 = *data;
      v12 = data[0];
      *output = data[0];
      output[2] = BYTE2(v12);
      output[3] = HIBYTE(v12);
      v13 = v11.u32[1];
      *(output + 2) = v11.i16[2];
      output[6] = v11.u8[6];
      output += 8;
      v14[7] = v11.u8[7];
    }

    while (v15 > 0xF);
  }

  if (v8)
  {
    v17 = 0;
    v18 = &input[v8];
    if (v8 <= 3)
    {
      v37 = 0;
      if (v8 == 1)
      {
LABEL_31:
        v17 |= *(v18 - 1);
        goto LABEL_32;
      }

      if (v8 == 2)
      {
LABEL_30:
        v43 = *--v18;
        v17 |= v43 << 8;
        goto LABEL_31;
      }

      if (v8 != 3)
      {
        goto LABEL_32;
      }

LABEL_29:
      v42 = *--v18;
      v17 |= v42 << 16;
      goto LABEL_30;
    }

    if (v8 > 5)
    {
      if (v8 != 6)
      {
        v37 = 0;
        if (v8 != 7)
        {
LABEL_32:
          data[0] = v17 ^ v12;
          data[1] = v37 ^ v13;
          DES_encrypt1(data, schedule, 1);
          LOBYTE(v12) = data[0];
          v13 = data[1];
          v31 = data[0] >> 8;
          v32 = HIWORD(data[0]);
          v33 = HIBYTE(data[0]);
          v34 = data[1] >> 8;
          v35 = HIWORD(data[1]);
          v36 = HIBYTE(data[1]);
          *output = data[0];
          *(output + 1) = v13;
          goto LABEL_33;
        }

        v38 = *--v18;
        v17 = v38 << 16;
      }

      v39 = *--v18;
      v17 |= v39 << 8;
    }

    else if (v8 == 4)
    {
LABEL_28:
      v37 = v17;
      v41 = *--v18;
      v17 = v41 << 24;
      goto LABEL_29;
    }

    v40 = *--v18;
    v17 |= v40;
    goto LABEL_28;
  }

  v31 = v12 >> 8;
  v32 = HIWORD(v12);
  v33 = HIBYTE(v12);
  v34 = v13 >> 8;
  v35 = HIWORD(v13);
  v36 = HIBYTE(v13);
LABEL_33:
  *v6 = v12;
  (*v6)[1] = v31;
  (*v6)[2] = v32;
  (*v6)[3] = v33;
  (*v6)[4] = v13;
  (*v6)[5] = v34;
  (*v6)[6] = v35;
LABEL_48:
  (*v6)[7] = v36;
  v44 = *MEMORY[0x277D85DE8];
}

void DES_ede3_cbc_encrypt(const unsigned __int8 *input, unsigned __int8 *output, uint64_t length, DES_key_schedule *ks1, DES_key_schedule *ks2, DES_key_schedule *ks3, DES_cblock *ivec, int enc)
{
  v8 = ivec;
  v9 = ks3;
  v10 = ks2;
  v11 = length;
  v52 = *MEMORY[0x277D85DE8];
  v14 = *ivec;
  v15 = *ivec;
  v16 = HIDWORD(*ivec);
  v50 = ks1;
  if (!enc)
  {
    if (length >= 8)
    {
      do
      {
        v22 = v15;
        v23 = v16;
        v15 = *input;
        v16 = *(input + 1);
        v24 = v11;
        v11 -= 8;
        v25 = input + 8;
        data[0] = *input;
        data[1] = v16;
        DES_decrypt3(data, ks1, ks2, ks3);
        ks1 = v50;
        v26 = HIWORD(data[0]) ^ HIWORD(v22);
        v27 = data[1] ^ v23;
        *output = LOWORD(data[0]) ^ v22;
        *(output + 1) = v26;
        *(output + 1) = v27;
        output += 8;
        input += 8;
      }

      while (v24 > 0xF);
      input = v25;
      v8 = ivec;
      v9 = ks3;
      v10 = ks2;
    }

    if (v11)
    {
      v29 = *input;
      v28 = *(input + 1);
      data[0] = v29;
      data[1] = v28;
      DES_decrypt3(data, ks1, v10, v9);
      v30 = data[0] ^ v15;
      v31 = &output[v11];
      if (v11 <= 3)
      {
        if (v11 == 1)
        {
LABEL_46:
          *(v31 - 1) = v30;
          goto LABEL_47;
        }

        if (v11 == 2)
        {
LABEL_45:
          *--v31 = BYTE1(v30);
          goto LABEL_46;
        }

        if (v11 != 3)
        {
          goto LABEL_47;
        }

LABEL_44:
        *--v31 = BYTE2(v30);
        goto LABEL_45;
      }

      v32 = data[1] ^ v16;
      if (v11 <= 5)
      {
        if (v11 == 4)
        {
LABEL_43:
          *--v31 = HIBYTE(v30);
          goto LABEL_44;
        }

LABEL_42:
        *--v31 = v32;
        goto LABEL_43;
      }

      if (v11 == 6)
      {
LABEL_41:
        *--v31 = BYTE1(v32);
        goto LABEL_42;
      }

      if (v11 == 7)
      {
        *--v31 = BYTE2(v32);
        goto LABEL_41;
      }
    }

    else
    {
      v29 = v15;
      v28 = v16;
    }

LABEL_47:
    *v8 = v29;
    *&(*v8)[4] = v28;
    v38 = HIBYTE(v28);
    (*v8)[6] = BYTE2(v28);
    goto LABEL_48;
  }

  if (length >= 8)
  {
    do
    {
      v17 = output;
      v18 = v11;
      v11 -= 8;
      v19 = *input;
      input += 8;
      *data = veor_s8(v19, v14);
      DES_encrypt3(data, ks1, v10, v9);
      ks1 = v50;
      v14 = *data;
      v15 = data[0];
      *output = data[0];
      output[2] = BYTE2(v15);
      output[3] = HIBYTE(v15);
      v16 = v14.u32[1];
      *(output + 2) = v14.i16[2];
      output[6] = v14.u8[6];
      output += 8;
      v17[7] = v14.u8[7];
    }

    while (v18 > 0xF);
  }

  if (v11)
  {
    v20 = 0;
    v21 = &input[v11];
    if (v11 <= 3)
    {
      v39 = 0;
      if (v11 == 1)
      {
LABEL_31:
        v20 |= *(v21 - 1);
        goto LABEL_32;
      }

      if (v11 == 2)
      {
LABEL_30:
        v45 = *--v21;
        v20 |= v45 << 8;
        goto LABEL_31;
      }

      if (v11 != 3)
      {
        goto LABEL_32;
      }

LABEL_29:
      v44 = *--v21;
      v20 |= v44 << 16;
      goto LABEL_30;
    }

    if (v11 > 5)
    {
      if (v11 != 6)
      {
        v39 = 0;
        if (v11 != 7)
        {
LABEL_32:
          data[0] = v20 ^ v15;
          data[1] = v39 ^ v16;
          DES_encrypt3(data, ks1, v10, v9);
          v15 = data[0];
          v16 = data[1];
          *output = data[0];
          v33 = v15 >> 8;
          output[1] = BYTE1(v15);
          v34 = HIWORD(v15);
          output[2] = BYTE2(v15);
          v35 = HIBYTE(v15);
          output[3] = HIBYTE(v15);
          *(output + 1) = v16;
          v36 = v16 >> 8;
          v37 = HIWORD(v16);
          v38 = HIBYTE(v16);
          goto LABEL_33;
        }

        v40 = *--v21;
        v20 = v40 << 16;
      }

      v41 = *--v21;
      v20 |= v41 << 8;
    }

    else if (v11 == 4)
    {
LABEL_28:
      v39 = v20;
      v43 = *--v21;
      v20 = v43 << 24;
      goto LABEL_29;
    }

    v42 = *--v21;
    v20 |= v42;
    goto LABEL_28;
  }

  v33 = v15 >> 8;
  v34 = HIWORD(v15);
  v35 = HIBYTE(v15);
  v36 = v16 >> 8;
  v37 = HIWORD(v16);
  v38 = HIBYTE(v16);
LABEL_33:
  *v8 = v15;
  (*v8)[1] = v33;
  (*v8)[2] = v34;
  (*v8)[3] = v35;
  (*v8)[4] = v16;
  (*v8)[5] = v36;
  (*v8)[6] = v37;
LABEL_48:
  (*v8)[7] = v38;
  v46 = *MEMORY[0x277D85DE8];
}

int EVP_DigestInit(EVP_MD_CTX *ctx, const EVP_MD *type)
{
  *&ctx->flags = 0u;
  *&ctx[1].digest = 0u;
  *&ctx->digest = 0u;
  return EVP_DigestInit_ex(ctx, type, 0);
}

void EVP_MD_CTX_init(EVP_MD_CTX *ctx)
{
  *&ctx->flags = 0u;
  *&ctx[1].digest = 0u;
  *&ctx->digest = 0u;
}

int EVP_DigestInit_ex(EVP_MD_CTX *ctx, const EVP_MD *type, ENGINE *impl)
{
  EVP_MD_CTX_clear_flags(ctx, 2);
  engine = ctx->engine;
  if (!engine || !ctx->digest)
  {
    if (!type)
    {
      digest = ctx->digest;
      if (!ctx->digest)
      {
        v7 = 139;
        v8 = 178;
        goto LABEL_35;
      }

      type = 0;
LABEL_17:
      if (HIDWORD(digest->sign) && ctx->md_data && !EVP_MD_CTX_test_flags(ctx, 4))
      {
        freezero(ctx->md_data, SHIDWORD(ctx->digest->sign));
        ctx->md_data = 0;
      }

LABEL_21:
      ctx->digest = type;
      if ((ctx->flags & 0x100) != 0)
      {
        goto LABEL_24;
      }

      sign_high = SHIDWORD(type->sign);
      if (!sign_high)
      {
        goto LABEL_24;
      }

      ctx[1].engine = type->update;
      v12 = malloc_type_calloc(1uLL, sign_high, 0xF76D1AACuLL);
      ctx->md_data = v12;
      if (v12)
      {
        goto LABEL_24;
      }

      EVP_PKEY_CTX_free(ctx[1].digest);
      ctx[1].digest = 0;
      v7 = 65;
      v8 = 195;
      goto LABEL_35;
    }

LABEL_7:
    ENGINE_finish(engine);
    if (impl)
    {
      if (!ENGINE_init(impl))
      {
        v7 = 134;
        v8 = 154;
LABEL_35:
        ERR_put_error(6, 4095, v7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/digest.c", v8);
        return 0;
      }
    }

    else
    {
      impl = ENGINE_get_digest_engine(type->type);
      if (!impl)
      {
        goto LABEL_15;
      }
    }

    v10 = ENGINE_get_digest(impl, type->type);
    if (!v10)
    {
      ERR_put_error(6, 4095, 134, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/digest.c", 165);
      ENGINE_finish(impl);
      return 0;
    }

    type = v10;
LABEL_15:
    ctx->engine = impl;
    digest = ctx->digest;
    if (ctx->digest == type)
    {
      goto LABEL_24;
    }

    if (!digest)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if (type && type->type != ctx->digest->type)
  {
    goto LABEL_7;
  }

LABEL_24:
  p_type = &ctx[1].digest->type;
  if (!p_type || (v14 = EVP_PKEY_CTX_ctrl(p_type, -1, 248), v14 > 0) || (v15 = v14, result = 0, v15 == -2))
  {
    if ((ctx->flags & 0x100) != 0)
    {
      return 1;
    }

    else
    {
      init = ctx->digest->init;

      return (init)(ctx);
    }
  }

  return result;
}

int EVP_DigestFinal(EVP_MD_CTX *ctx, unsigned __int8 *md, unsigned int *s)
{
  v4 = EVP_DigestFinal_ex(ctx, md, s);
  EVP_MD_CTX_cleanup(ctx);
  return v4;
}

int EVP_DigestFinal_ex(EVP_MD_CTX *ctx, unsigned __int8 *md, unsigned int *s)
{
  if (ctx->digest->md_size < 0x41u)
  {
    v3 = (ctx->digest->final)();
    digest = ctx->digest;
    if (s)
    {
      *s = digest->md_size;
    }

    cleanup = digest->cleanup;
    if (cleanup)
    {
      (cleanup)(ctx);
      EVP_MD_CTX_set_flags(ctx, 2);
      digest = ctx->digest;
    }

    bzero(ctx->md_data, SHIDWORD(digest->sign));
  }

  else
  {
    ERR_put_error(6, 4095, 164, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/digest.c", 239);
    return 0;
  }

  return v3;
}

int EVP_MD_CTX_cleanup(EVP_MD_CTX *ctx)
{
  digest = ctx->digest;
  if (ctx->digest)
  {
    if (!digest->cleanup)
    {
      goto LABEL_15;
    }

    v3 = EVP_MD_CTX_test_flags(ctx, 2);
    digest = ctx->digest;
    if (!v3)
    {
      (digest->cleanup)(ctx);
      digest = ctx->digest;
    }

    if (digest)
    {
LABEL_15:
      if (HIDWORD(digest->sign) && ctx->md_data && !EVP_MD_CTX_test_flags(ctx, 4))
      {
        freezero(ctx->md_data, SHIDWORD(ctx->digest->sign));
      }
    }
  }

  if (!EVP_MD_CTX_test_flags(ctx, 1024))
  {
    EVP_PKEY_CTX_free(ctx[1].digest);
  }

  ENGINE_finish(ctx->engine);
  *&ctx->digest = 0u;
  *&ctx->flags = 0u;
  *&ctx[1].digest = 0u;
  return 1;
}

int EVP_MD_CTX_copy(EVP_MD_CTX *out, const EVP_MD_CTX *in)
{
  *&out->flags = 0u;
  *&out[1].digest = 0u;
  *&out->digest = 0u;
  return EVP_MD_CTX_copy_ex(out, in);
}

int EVP_MD_CTX_copy_ex(EVP_MD_CTX *out, const EVP_MD_CTX *in)
{
  if (!in || (digest = in->digest) == 0)
  {
    v7 = 111;
    v8 = 266;
    goto LABEL_9;
  }

  engine = in->engine;
  if (engine)
  {
    if (!ENGINE_init(engine))
    {
      v7 = 38;
      v8 = 272;
      goto LABEL_9;
    }

    digest = in->digest;
  }

  if (out->digest == digest)
  {
    md_data = out->md_data;
    EVP_MD_CTX_set_flags(out, 4);
  }

  else
  {
    md_data = 0;
  }

  EVP_MD_CTX_cleanup(out);
  v10 = *&in[1].digest;
  v11 = *&in->digest;
  *&out->flags = *&in->flags;
  *&out[1].digest = v10;
  *&out->digest = v11;
  out->md_data = 0;
  p_md_data = &out->md_data;
  out[1].digest = 0;
  EVP_MD_CTX_clear_flags(out, 1024);
  if (in->md_data)
  {
    sign_high = HIDWORD(out->digest->sign);
    if (sign_high)
    {
      if (md_data)
      {
        *p_md_data = md_data;
LABEL_19:
        memcpy(md_data, in->md_data, sign_high);
        goto LABEL_20;
      }

      v14 = malloc_type_calloc(1uLL, sign_high, 0xFD02DE30uLL);
      *p_md_data = v14;
      if (v14)
      {
        md_data = v14;
        sign_high = HIDWORD(out->digest->sign);
        goto LABEL_19;
      }

      v7 = 65;
      v8 = 299;
LABEL_9:
      ERR_put_error(6, 4095, v7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/digest.c", v8);
      return 0;
    }
  }

LABEL_20:
  v15 = in[1].digest;
  out[1].engine = in[1].engine;
  if (v15)
  {
    v16 = EVP_PKEY_CTX_dup(v15);
    out[1].digest = v16;
    if (!v16)
    {
      EVP_MD_CTX_cleanup(out);
      return 0;
    }
  }

  copy = out->digest->copy;
  if (!copy)
  {
    return 1;
  }

  return (copy)(out, in);
}

int EVP_Digest(const void *data, size_t count, unsigned __int8 *md, unsigned int *size, const EVP_MD *type, ENGINE *impl)
{
  v15 = 0u;
  memset(&v14, 0, sizeof(v14));
  EVP_MD_CTX_set_flags(&v14, 1);
  v12 = EVP_DigestInit_ex(&v14, type, impl) && (*(&v15 + 1))(&v14, data, count) && EVP_DigestFinal_ex(&v14, md, size) != 0;
  EVP_MD_CTX_cleanup(&v14);
  return v12;
}

void EVP_MD_CTX_free(EVP_MD_CTX *a1)
{
  if (a1)
  {
    EVP_MD_CTX_cleanup(a1);

    free(a1);
  }
}

void EVP_MD_CTX_destroy(EVP_MD_CTX *ctx)
{
  if (ctx)
  {
    EVP_MD_CTX_cleanup(ctx);

    free(ctx);
  }
}

uint64_t EVP_MD_CTX_ctrl(uint64_t a1)
{
  if (*a1)
  {
    v1 = *(*a1 + 72);
    if (v1)
    {
      result = v1();
      if (result != -1)
      {
        return result;
      }

      v3 = 133;
      v4 = 425;
    }

    else
    {
      v3 = 132;
      v4 = 419;
    }
  }

  else
  {
    v3 = 131;
    v4 = 414;
  }

  ERR_put_error(6, 4095, v3, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/digest.c", v4);
  return 0;
}

int EVP_SignFinal(EVP_MD_CTX *ctx, unsigned __int8 *md, unsigned int *s, EVP_PKEY *pkey)
{
  v19 = *MEMORY[0x277D85DE8];
  sa = 0;
  v16 = 0u;
  memset(&ctxa, 0, sizeof(ctxa));
  v14 = 0;
  *s = 0;
  EVP_MD_CTX_init(&ctxa);
  if (!EVP_MD_CTX_copy_ex(&ctxa, ctx) || !EVP_DigestFinal_ex(&ctxa, mda, &sa))
  {
    v9 = 0;
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  EVP_MD_CTX_cleanup(&ctxa);
  v14 = EVP_PKEY_size(pkey);
  v8 = EVP_PKEY_CTX_new(pkey, 0);
  v9 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  if (EVP_PKEY_sign_init(v8) < 1)
  {
    goto LABEL_9;
  }

  digest = ctx->digest;
  if (EVP_PKEY_CTX_ctrl(v9, -1, 248) < 1 || EVP_PKEY_sign(v9, md, &v14, mda, sa) < 1)
  {
    goto LABEL_9;
  }

  *s = v14;
  v11 = 1;
LABEL_10:
  EVP_PKEY_CTX_free(v9);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

int ASN1_get_object(const unsigned __int8 **pp, uint64_t *plength, int *ptag, int *pclass, uint64_t omax)
{
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  *pclass = 0;
  *ptag = 0;
  *plength = 0;
  CBS_init(v15, *pp, omax);
  if (!asn1_get_object_cbs(v15, 0, &v17, &v19 + 1, &v18, &v19, &v16))
  {
    v12 = 89;
LABEL_8:
    ERR_put_error(13, 4095, 123, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn1_old_lib.c", v12);
    return 128;
  }

  if (v18 < 0)
  {
    v12 = 94;
    goto LABEL_8;
  }

  v9 = v16;
  if (v9 > CBS_len(v15) || (v10 = v16, (v16 & 0x8000000000000000) != 0))
  {
    ERR_put_error(13, 4095, 155, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn1_old_lib.c", 104);
    v11 = 128;
    v10 = v16;
  }

  else
  {
    v11 = 0;
  }

  *pclass = v17 << 6;
  *ptag = v18;
  *plength = v10;
  *pp = CBS_data(v15);
  if (HIDWORD(v19))
  {
    v14 = v11 | 0x20;
  }

  else
  {
    v14 = v11;
  }

  if (v19)
  {
    return v14 + 1;
  }

  else
  {
    return v14;
  }
}

void ASN1_put_object(unsigned __int8 **pp, int constructed, int length, int tag, int xclass)
{
  v5 = *pp;
  v6 = xclass & 0xC0 | (32 * (constructed != 0));
  if (tag > 30)
  {
    *v5 = v6 | 0x1F;
    v8 = -1;
    v9 = tag;
    do
    {
      ++v5;
      ++v8;
      v10 = v9 >= 0x80;
      v9 >>= 7;
    }

    while (v10);
    v11 = 0;
    do
    {
      v5[v11] = tag & 0x7F | ((v11 != 0) << 7);
      tag = tag >> 7;
      v12 = v8 + v11--;
    }

    while (v12 > 0);
    v7 = v5 + 1;
  }

  else
  {
    *v5 = v6 | tag & 0x1F;
    v7 = v5 + 1;
  }

  if (constructed == 2)
  {
    *v7 = 0x80;
    v13 = v7 + 1;
  }

  else if (length >= 128)
  {
    v14 = 1;
    v15 = length;
    do
    {
      ++v14;
      v16 = v15 > 0xFF;
      v15 >>= 8;
    }

    while (v16);
    *v7 = (v14 - 1) | 0x80;
    v17 = v14;
    do
    {
      v7[(v17 - 2) + 1] = length;
      length = length >> 8;
      --v17;
    }

    while (v17 > 1);
    v13 = &v7[v14];
  }

  else
  {
    *v7 = length;
    v13 = v7 + 1;
  }

  *pp = v13;
}

int ASN1_put_eoc(unsigned __int8 **pp)
{
  v1 = *pp;
  *v1 = 0;
  *pp = v1 + 2;
  return 2;
}

int ASN1_object_size(int constructed, int length, int tag)
{
  v3 = length + 1;
  if (tag >= 31)
  {
    do
    {
      ++v3;
      v4 = tag > 0x7F;
      tag = tag >> 7;
    }

    while (v4);
  }

  if (constructed == 2)
  {
    return v3 + 3;
  }

  result = v3 + 1;
  if (length >= 128)
  {
    do
    {
      ++result;
      v4 = length > 0xFF;
      length = length >> 8;
    }

    while (v4);
  }

  return result;
}

uint64_t X509v3_asid_add_inherit(uint64_t result, int a2)
{
  if (result)
  {
    v2 = result;
    if (a2)
    {
      if (a2 != 1)
      {
        return 0;
      }

      v2 = result + 8;
    }

    if (*v2)
    {
      return **v2 == 0;
    }

    else
    {
      result = ASN1_item_new(&ASIdentifierChoice_it);
      *v2 = result;
      if (result)
      {
        result = ASN1_NULL_new();
        *(*v2 + 8) = result;
        if (result)
        {
          **v2 = 0;
          return 1;
        }
      }
    }
  }

  return result;
}

ASN1_VALUE *X509v3_asid_add_id_or_range(ASN1_VALUE *result, int a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v6 = result;
    if (a2)
    {
      if (a2 != 1)
      {
        return 0;
      }

      v6 = (result + 8);
    }

    if (*v6)
    {
      if (!**v6)
      {
        return 0;
      }
    }

    else
    {
      result = ASN1_item_new(&ASIdentifierChoice_it);
      *v6 = result;
      if (!result)
      {
        return result;
      }

      *(*v6 + 8) = sk_new(ASIdOrRange_cmp);
      if (!*(*v6 + 8))
      {
        return 0;
      }

      **v6 = 1;
    }

    result = ASN1_item_new(&ASIdOrRange_it);
    if (!result)
    {
      return result;
    }

    v7 = result;
    if (a4)
    {
      *result = 1;
      v8 = ASN1_item_new(&ASRange_it);
      *(v7 + 1) = v8;
      if (!v8)
      {
LABEL_18:
        ASN1_item_free(v7, &ASIdOrRange_it);
        return 0;
      }

      ASN1_INTEGER_free(*v8);
      **(v7 + 1) = a3;
      ASN1_INTEGER_free(*(*(v7 + 1) + 8));
      v9 = *(v7 + 1);
      a3 = a4;
    }

    else
    {
      *result = 0;
      v9 = result;
    }

    *(v9 + 1) = a3;
    if (sk_push(*(*v6 + 8), v7))
    {
      return 1;
    }

    goto LABEL_18;
  }

  return result;
}

uint64_t ASIdOrRange_cmp(int **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  if (v4 == 1)
  {
    v5 = *(v2 + 1);
    if (!v5 || !*v5 || !v5[1])
    {
LABEL_8:
      OpenSSLDie("/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_asid.c", 381, "(a->type == ASIdOrRange_id && a->u.id != NULL) || (a->type == ASIdOrRange_range && a->u.range != NULL && a->u.range->min != NULL && a->u.range->max != NULL)");
    }
  }

  else if (v4 || !*(v2 + 1))
  {
    goto LABEL_8;
  }

  if (*v3 == 1)
  {
    v6 = *(v3 + 8);
    if (!v6 || !*v6 || !v6[1])
    {
LABEL_16:
      OpenSSLDie("/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_asid.c", 385, "(b->type == ASIdOrRange_id && b->u.id != NULL) || (b->type == ASIdOrRange_range && b->u.range != NULL && b->u.range->min != NULL && b->u.range->max != NULL)");
    }
  }

  else if (*v3 || !*(v3 + 8))
  {
    goto LABEL_16;
  }

  if (*v2 != 1)
  {
    if (!*v2)
    {
      v7 = *(v2 + 1);
      v8 = *(v3 + 8);
      if (*v3)
      {
        v8 = *&v8->length;
      }

      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (*v3 != 1)
  {
LABEL_24:
    v7 = **(v2 + 1);
    v8 = *(v3 + 8);
    goto LABEL_25;
  }

  result = ASN1_INTEGER_cmp(**(v2 + 1), **(v3 + 8));
  if (result)
  {
    return result;
  }

  v7 = *(*(v2 + 1) + 8);
  v8 = *(*(v3 + 8) + 8);
LABEL_25:

  return ASN1_INTEGER_cmp(v7, v8);
}

uint64_t X509v3_asid_is_canonical(uint64_t *a1)
{
  if (!a1)
  {
    return 1;
  }

  result = ASIdentifierChoice_is_canonical(*a1);
  if (result)
  {
    return ASIdentifierChoice_is_canonical(a1[1]) != 0;
  }

  return result;
}

uint64_t ASIdentifierChoice_is_canonical(uint64_t a1)
{
  if (!a1 || !*a1)
  {
    return 1;
  }

  if (*a1 != 1 || !sk_num(*(a1 + 8)))
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  while (1)
  {
    v5 = sk_num(*(a1 + 8)) - 1;
    v6 = *(a1 + 8);
    if (v3 >= v5)
    {
      break;
    }

    v7 = sk_value(v6, v3);
    v8 = sk_value(*(a1 + 8), v3 + 1);
    if (*v7 == 1)
    {
      v11 = *(v7 + 1);
      v9 = *v11;
      v10 = v11[1];
    }

    else
    {
      if (*v7)
      {
        goto LABEL_34;
      }

      v9 = *(v7 + 1);
      v10 = v9;
    }

    if (*v8 == 1)
    {
      v14 = *(v8 + 1);
      v12 = *v14;
      v13 = v14[1];
    }

    else
    {
      if (*v8)
      {
        goto LABEL_34;
      }

      v12 = *(v8 + 1);
      v13 = v12;
    }

    if ((ASN1_INTEGER_cmp(v9, v12) & 0x80000000) == 0 || ASN1_INTEGER_cmp(v9, v10) > 0 || ASN1_INTEGER_cmp(v12, v13) > 0)
    {
      goto LABEL_34;
    }

    if (!v2 && (v2 = BN_new()) == 0 || !ASN1_INTEGER_to_BN(v10, v2) || !BN_add_word(v2, 1uLL))
    {
      v18 = 563;
LABEL_33:
      ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_asid.c", v18);
      goto LABEL_34;
    }

    v15 = BN_to_ASN1_INTEGER(v2, v4);
    if (!v15)
    {
      v18 = 570;
      goto LABEL_33;
    }

    v16 = v15;
    ++v3;
    v4 = v15;
    if ((ASN1_INTEGER_cmp(v15, v12) & 0x80000000) == 0)
    {
      v17 = 0;
      v4 = v16;
      goto LABEL_35;
    }
  }

  v19 = sk_num(v6);
  v20 = sk_value(*(a1 + 8), v19 - 1);
  if (!v20 || *v20 != 1 || ASN1_INTEGER_cmp(**(v20 + 1), *(*(v20 + 1) + 8)) <= 0)
  {
    v17 = 1;
    goto LABEL_35;
  }

LABEL_34:
  v17 = 0;
LABEL_35:
  ASN1_INTEGER_free(v4);
  BN_free(v2);
  return v17;
}

uint64_t X509v3_asid_canonize(uint64_t *a1)
{
  if (!a1)
  {
    return 1;
  }

  result = ASIdentifierChoice_canonize(*a1);
  if (result)
  {
    v3 = a1[1];

    return ASIdentifierChoice_canonize(v3);
  }

  return result;
}

uint64_t ASIdentifierChoice_canonize(uint64_t a1)
{
  if (!a1 || !*a1)
  {
    return 1;
  }

  if (*a1 == 1 && sk_num(*(a1 + 8)))
  {
    sk_sort(*(a1 + 8));
    if (sk_num(*(a1 + 8)) >= 2)
    {
      v2 = 0;
      v3 = 0;
      v4 = 0;
      while (1)
      {
        v5 = sk_value(*(a1 + 8), v3);
        v6 = sk_value(*(a1 + 8), v3 + 1);
        v7 = v6;
        ai = v2;
        if (*v5 == 1)
        {
          v10 = *(v5 + 1);
          v8 = *v10;
          v9 = v10[1];
        }

        else
        {
          if (*v5)
          {
            goto LABEL_52;
          }

          v8 = *(v5 + 1);
          v9 = v8;
        }

        if (*v6 == 1)
        {
          v13 = *(v6 + 1);
          v11 = *v13;
          v12 = v13[1];
        }

        else
        {
          if (*v6)
          {
            goto LABEL_49;
          }

          v11 = *(v6 + 1);
          v12 = v11;
        }

        if (ASN1_INTEGER_cmp(v8, v11) > 0 || ASN1_INTEGER_cmp(v8, v9) > 0 || ASN1_INTEGER_cmp(v11, v12) > 0)
        {
          goto LABEL_49;
        }

        if ((ASN1_INTEGER_cmp(v9, v11) & 0x80000000) == 0)
        {
          ERR_put_error(34, 4095, 116, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_asid.c", 683);
LABEL_49:
          v17 = 0;
          v2 = ai;
          goto LABEL_53;
        }

        if (!v4 && (v4 = BN_new()) == 0 || !ASN1_INTEGER_to_BN(v9, v4))
        {
          v2 = ai;
LABEL_47:
          v20 = 693;
LABEL_51:
          ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_asid.c", v20);
LABEL_52:
          v17 = 0;
          goto LABEL_53;
        }

        v2 = ai;
        if (!BN_add_word(v4, 1uLL))
        {
          goto LABEL_47;
        }

        v14 = BN_to_ASN1_INTEGER(v4, ai);
        if (!v14)
        {
          v20 = 700;
          goto LABEL_51;
        }

        v2 = v14;
        if (!ASN1_INTEGER_cmp(v14, v11))
        {
          break;
        }

        ++v3;
LABEL_37:
        if (v3 >= sk_num(*(a1 + 8)) - 1)
        {
          goto LABEL_42;
        }
      }

      if (*v5 == 1)
      {
        ASN1_INTEGER_free(*(*(v5 + 1) + 8));
        v5 = *(v5 + 1);
      }

      else
      {
        if (*v5)
        {
          goto LABEL_32;
        }

        v15 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
        if (!v15)
        {
          v20 = 712;
          goto LABEL_51;
        }

        *&v15->length = v8;
        v15->data = v12;
        v12 = v15;
        *v5 = 1;
      }

      *(v5 + 1) = v12;
LABEL_32:
      v16 = v7;
      if (*v7)
      {
        if (*v7 != 1)
        {
LABEL_36:
          ASN1_item_free(v7, &ASIdOrRange_it);
          sk_delete(*(a1 + 8), v3 + 1);
          goto LABEL_37;
        }

        v16 = *(v7 + 1);
      }

      *(v16 + 1) = 0;
      goto LABEL_36;
    }

    v4 = 0;
    v2 = 0;
LABEL_42:
    v18 = sk_num(*(a1 + 8));
    v19 = sk_value(*(a1 + 8), v18 - 1);
    if (v19 && *v19 == 1 && ASN1_INTEGER_cmp(**(v19 + 1), *(*(v19 + 1) + 8)) > 0)
    {
      goto LABEL_52;
    }

    v17 = ASIdentifierChoice_is_canonical(a1) != 0;
LABEL_53:
    ASN1_INTEGER_free(v2);
    BN_free(v4);
  }

  else
  {
    ERR_put_error(34, 4095, 116, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_asid.c", 638);
    return 0;
  }

  return v17;
}

uint64_t *v2i_ASIdentifiers(uint64_t a1, uint64_t a2, const STACK *a3)
{
  x = 0;
  v4 = ASN1_item_new(&ASIdentifiers_it);
  if (!v4)
  {
    ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_asid.c", 796);
    return v4;
  }

  if (sk_num(a3) < 1)
  {
LABEL_24:
    if (X509v3_asid_canonize(v4))
    {
      return v4;
    }

    goto LABEL_32;
  }

  v5 = 0;
  v6 = "AS";
  v7 = "inherit";
  v26 = v4;
  while (1)
  {
    v8 = sk_value(a3, v5);
    if (name_cmp(v8->name, v6))
    {
      if (name_cmp(v8->name, "RDI"))
      {
        v21 = 115;
        v22 = 812;
        goto LABEL_31;
      }

      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    value = v8->value;
    if (!strcmp(value, v7))
    {
      if (X509v3_asid_add_inherit(v4, v9))
      {
        goto LABEL_23;
      }

      v21 = 165;
      v22 = 823;
LABEL_31:
      ERR_put_error(34, 4095, v21, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_asid.c", v22);
      ERR_asprintf_error_data("section:%s,name:%s,value:%s", v8->section, v8->name, v8->value);
      goto LABEL_32;
    }

    v11 = strspn(value, "0123456789");
    v12 = &value[v11];
    if (!*v12)
    {
      if (X509V3_get_value_int(v8, &x))
      {
        v20 = 0;
        goto LABEL_21;
      }

      ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_asid.c", 857);
LABEL_32:
      v20 = 0;
      goto LABEL_39;
    }

    v13 = strspn(v12, " \t");
    if (value[v13 + v11] != 45)
    {
      v21 = 162;
      v22 = 838;
      goto LABEL_31;
    }

    v15 = v6;
    v16 = v7;
    v17 = strspn(&value[(((v13 + v11) << 32) + 0x100000000) >> 32], " \t") + (((v14 << 32) + 0x100000000) >> 32);
    if (value[(v17 + strspn(&value[v17], "0123456789"))])
    {
      ERR_put_error(34, 4095, 163, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_asid.c", 846);
      ERR_asprintf_error_data("section:%s,name:%s,value:%s", v8->section, v8->name, v8->value);
LABEL_34:
      v20 = 0;
      goto LABEL_38;
    }

    v18 = strdup(value);
    if (!v18)
    {
      ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_asid.c", 863);
      goto LABEL_34;
    }

    v19 = v18;
    v18[v11] = 0;
    x = s2i_ASN1_INTEGER(0, v18);
    v20 = s2i_ASN1_INTEGER(0, &v19[v17]);
    free(v19);
    if (!x || !v20)
    {
      v23 = 65;
      v24 = 871;
      goto LABEL_37;
    }

    if (ASN1_INTEGER_cmp(x, v20) >= 1)
    {
      break;
    }

    v7 = v16;
    v6 = v15;
    v4 = v26;
LABEL_21:
    if (!X509v3_asid_add_id_or_range(v4, v9, x, v20))
    {
      ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_asid.c", 880);
      goto LABEL_39;
    }

    x = 0;
LABEL_23:
    if (++v5 >= sk_num(a3))
    {
      goto LABEL_24;
    }
  }

  v23 = 116;
  v24 = 875;
LABEL_37:
  ERR_put_error(34, 4095, v23, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_asid.c", v24);
LABEL_38:
  v4 = v26;
LABEL_39:
  ASN1_item_free(v4, &ASIdentifiers_it);
  ASN1_INTEGER_free(x);
  ASN1_INTEGER_free(v20);
  return 0;
}

char *i2r_ASIdentifiers(uint64_t a1, uint64_t *a2, BIO *a3, int a4)
{
  result = i2r_ASIdentifierChoice(a3, *a2, a4, "Autonomous System Numbers");
  if (result)
  {
    return (i2r_ASIdentifierChoice(a3, a2[1], a4, "Routing Domain Identifiers") != 0);
  }

  return result;
}

void *X509v3_asid_inherits(void *result)
{
  if (result)
  {
    return (*result && !**result || (v1 = result[1]) != 0 && !*v1);
  }

  return result;
}

uint64_t X509v3_asid_subset(uint64_t *a1, uint64_t *a2)
{
  result = 1;
  if (a1 && a1 != a2)
  {
    if (a2)
    {
      v5 = *a1;
      if (!*a1 || *v5)
      {
        v6 = a1[1];
        if (!v6 || *v6)
        {
          v7 = *a2;
          if (!*a2 || *v7)
          {
            v8 = a2[1];
            if (!v8 || *v8)
            {
              if (!v5)
              {
LABEL_16:
                if (!v6)
                {
                  return 1;
                }

                v9 = a2[1];
                if (v9)
                {
                  result = asid_contains(*(v9 + 8), *(v6 + 8));
                  if (!result)
                  {
                    return result;
                  }

                  return 1;
                }

                return 0;
              }

              if (v7)
              {
                result = asid_contains(*(v7 + 8), *(v5 + 8));
                if (!result)
                {
                  return result;
                }

                v6 = a1[1];
                goto LABEL_16;
              }
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t asid_contains(STACK *a1, STACK *a2)
{
  result = 1;
  if (a2 && a1 != a2)
  {
    if (!a1)
    {
      return 0;
    }

    if (sk_num(a2) >= 1)
    {
      v5 = 0;
      v6 = 0;
LABEL_6:
      v7 = sk_value(a2, v5);
      if (*v7 == 1)
      {
        v10 = *(v7 + 1);
        v8 = *v10;
        v9 = v10[1];
LABEL_10:
        while (v6 < sk_num(a1))
        {
          v11 = sk_value(a1, v6);
          if (*v11 == 1)
          {
            v14 = *(v11 + 1);
            v12 = *v14;
            v13 = v14[1];
          }

          else
          {
            if (*v11)
            {
              return 0;
            }

            v12 = *(v11 + 1);
            v13 = v12;
          }

          if ((ASN1_INTEGER_cmp(v13, v9) & 0x80000000) == 0)
          {
            if (ASN1_INTEGER_cmp(v12, v8) > 0)
            {
              return 0;
            }

            ++v5;
            v15 = sk_num(a2);
            result = 1;
            if (v5 < v15)
            {
              goto LABEL_6;
            }

            return result;
          }

          ++v6;
        }
      }

      else if (!*v7)
      {
        v8 = *(v7 + 1);
        v9 = v8;
        goto LABEL_10;
      }

      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t X509v3_asid_validate_path(uint64_t a1)
{
  if (sk_num(*(a1 + 160)) >= 1 && *(a1 + 64))
  {
    v2 = *(a1 + 160);

    return asid_validate_path_internal(a1, v2, 0);
  }

  else
  {
    *(a1 + 176) = 1;
    return 0;
  }
}

uint64_t asid_validate_path_internal(uint64_t a1, STACK *a2, uint64_t *a3)
{
  if (sk_num(a2) < 1)
  {
    goto LABEL_86;
  }

  if (!(a1 | a3))
  {
    return 0;
  }

  if (a1 && !*(a1 + 64))
  {
    goto LABEL_87;
  }

  if (a3)
  {
    if (X509v3_asid_is_canonical(a3))
    {
      v6 = 0;
      v7 = 0;
      v8 = 1;
    }

    else
    {
      if (!a1)
      {
        return 0;
      }

      *(a1 + 172) = 0x29FFFFFFFFLL;
      *(a1 + 184) = 0;
      v10 = (*(a1 + 64))(0, a1);
      v6 = 0;
      if (!v10)
      {
        return 0;
      }

      v8 = v10;
      v7 = 0;
    }
  }

  else
  {
    v7 = sk_value(a2, 0);
    if ((X509_get_extension_flags(v7) & 0x80) != 0)
    {
      return 1;
    }

    a3 = *(v7 + 17);
    v6 = 1;
    v8 = 1;
    v9 = 1;
    if (!a3)
    {
      return v9;
    }
  }

  v11 = *a3;
  if (!*a3)
  {
LABEL_18:
    v12 = 0;
    v13 = 0;
    goto LABEL_21;
  }

  if (*v11 != 1)
  {
    if (!*v11)
    {
      v12 = 0;
      v13 = 1;
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  v13 = 0;
  v12 = *(v11 + 8);
LABEL_21:
  v14 = a3[1];
  if (!v14)
  {
LABEL_25:
    v15 = 0;
    LODWORD(v9) = 0;
    goto LABEL_27;
  }

  if (*v14 != 1)
  {
    if (!*v14)
    {
      v15 = 0;
      LODWORD(v9) = 1;
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  LODWORD(v9) = 0;
  v15 = *(v14 + 8);
LABEL_27:
  if (v6 < sk_num(a2))
  {
    while (1)
    {
      v7 = sk_value(a2, v6);
      if ((X509_get_extension_flags(v7) & 0x80) != 0)
      {
        if (!a1)
        {
          return 0;
        }

        *(a1 + 172) = v6;
        *(a1 + 176) = 41;
        *(a1 + 184) = v7;
        v8 = (*(a1 + 64))(0, a1);
        if (!v8)
        {
          return 0;
        }
      }

      v16 = *(v7 + 17);
      if (!v16)
      {
        if (!(v12 | v15))
        {
          v12 = 0;
          v15 = 0;
          goto LABEL_63;
        }

        if (!a1)
        {
          return 0;
        }

        *(a1 + 172) = v6;
        *(a1 + 176) = 46;
        *(a1 + 184) = v7;
        v23 = (*(a1 + 64))(0, a1);
        if (!v23)
        {
          return 0;
        }

        goto LABEL_61;
      }

      v17 = *v16;
      if (*v16)
      {
        v18 = 1;
      }

      else
      {
        v18 = v12 == 0;
      }

      if (!v18)
      {
        if (!a1)
        {
          return 0;
        }

        *(a1 + 172) = v6;
        *(a1 + 176) = 46;
        *(a1 + 184) = v7;
        v19 = (*(a1 + 64))(0, a1);
        if (!v19)
        {
          return 0;
        }

        v8 = v19;
        v12 = 0;
        v13 = 0;
        v16 = *(v7 + 17);
        v17 = *v16;
      }

      if (!v17 || *v17 != 1)
      {
        goto LABEL_45;
      }

      if (v13)
      {
        goto LABEL_44;
      }

      if (asid_contains(*(v17 + 8), v12))
      {
        break;
      }

      if (!a1)
      {
        return 0;
      }

      *(a1 + 172) = v6;
      *(a1 + 176) = 46;
      *(a1 + 184) = v7;
      v24 = (*(a1 + 64))(0, a1);
      if (!v24)
      {
        return 0;
      }

      v8 = v24;
      v13 = 0;
      v20 = *(*(v7 + 17) + 8);
      if (!v20 && v15)
      {
        goto LABEL_50;
      }

LABEL_52:
      if (!v20 || *v20 != 1)
      {
        goto LABEL_63;
      }

      if (!v9)
      {
        if (!asid_contains(*(v20 + 8), v15))
        {
          if (!a1)
          {
            return 0;
          }

          *(a1 + 172) = v6;
          *(a1 + 176) = 46;
          *(a1 + 184) = v7;
          v23 = (*(a1 + 64))(0, a1);
          v9 = 0;
          if (!v23)
          {
            return v9;
          }

LABEL_61:
          v8 = v23;
          goto LABEL_63;
        }

        v20 = *(*(v7 + 17) + 8);
      }

      LODWORD(v9) = 0;
      v15 = *(v20 + 8);
LABEL_63:
      if (++v6 >= sk_num(a2))
      {
        goto LABEL_74;
      }
    }

    v16 = *(v7 + 17);
    v17 = *v16;
LABEL_44:
    v13 = 0;
    v12 = *(v17 + 8);
LABEL_45:
    v20 = v16[1];
    if (v20)
    {
      v21 = 1;
    }

    else
    {
      v21 = v15 == 0;
    }

    if (v21)
    {
      goto LABEL_52;
    }

    if (!a1)
    {
      return 0;
    }

LABEL_50:
    *(a1 + 172) = v6;
    *(a1 + 176) = 46;
    *(a1 + 184) = v7;
    v22 = (*(a1 + 64))(0, a1);
    if (!v22)
    {
      return 0;
    }

    v8 = v22;
    v15 = 0;
    LODWORD(v9) = 0;
    v20 = *(*(v7 + 17) + 8);
    goto LABEL_52;
  }

  if (!v7)
  {
LABEL_86:
    if (!a1)
    {
      return 0;
    }

LABEL_87:
    v9 = 0;
    *(a1 + 176) = 1;
    return v9;
  }

LABEL_74:
  v25 = *(v7 + 17);
  if (!v25)
  {
    return v8;
  }

  if (*v25 && !**v25)
  {
    if (a1)
    {
      *(a1 + 172) = v6;
      *(a1 + 176) = 46;
      *(a1 + 184) = v7;
      v30 = (*(a1 + 64))(0, a1);
      if (v30)
      {
        v8 = v30;
        v25 = *(v7 + 17);
        goto LABEL_77;
      }
    }

    return 0;
  }

LABEL_77:
  v26 = v25[1];
  if (!v26)
  {
    return v8;
  }

  v27 = *v26;
  if (v27)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (!a1 || v27)
  {
    return v9;
  }

  *(a1 + 172) = v6;
  *(a1 + 176) = 46;
  *(a1 + 184) = v7;
  v28 = *(a1 + 64);

  return v28(0, a1);
}

uint64_t X509v3_asid_validate_resource_set(STACK *a1, uint64_t *a2, int a3)
{
  if (!a2)
  {
    return 1;
  }

  if (sk_num(a1) < 1)
  {
    return 0;
  }

  if (!a3)
  {
    if (*a2 && !**a2)
    {
      return 0;
    }

    v7 = a2[1];
    if (v7)
    {
      if (!*v7)
      {
        return 0;
      }
    }
  }

  return asid_validate_path_internal(0, a1, a2);
}

char *i2r_ASIdentifierChoice(BIO *a1, uint64_t a2, int a3, const char *a4)
{
  if (!a2)
  {
    return 1;
  }

  BIO_printf(a1, "%*s%s:\n", a3, "", a4);
  if (*a2)
  {
    if (*a2 != 1)
    {
      return 0;
    }

    if (sk_num(*(a2 + 8)) >= 1)
    {
      for (i = 0; i < sk_num(*(a2 + 8)); ++i)
      {
        v8 = sk_value(*(a2 + 8), i);
        v9 = v8;
        if (*v8 == 1)
        {
          result = i2s_ASN1_INTEGER(0, **(v8 + 1));
          if (!result)
          {
            return result;
          }

          v12 = result;
          BIO_printf(a1, "%*s%s-", a3 + 2, "", result);
          free(v12);
          result = i2s_ASN1_INTEGER(0, *(*(v9 + 1) + 8));
          if (!result)
          {
            return result;
          }

          v11 = result;
          BIO_printf(a1, "%s\n");
        }

        else
        {
          if (*v8)
          {
            return 0;
          }

          result = i2s_ASN1_INTEGER(0, *(v8 + 1));
          if (!result)
          {
            return result;
          }

          v11 = result;
          BIO_printf(a1, "%*s%s\n");
        }

        free(v11);
      }
    }
  }

  else
  {
    BIO_printf(a1, "%*sinherit\n", a3 + 2, "");
  }

  return 1;
}

void BF_cfb64_encrypt(const unsigned __int8 *in, unsigned __int8 *out, uint64_t length, const BF_KEY *schedule, unsigned __int8 *ivec, int *num, int enc)
{
  v10 = length;
  v25 = *MEMORY[0x277D85DE8];
  v13 = *num;
  if (enc)
  {
    if (length)
    {
      do
      {
        if (!v13)
        {
          v14 = bswap32(*(ivec + 1));
          v23 = bswap32(*ivec);
          v24 = v14;
          BF_encrypt(&v23, schedule);
          v15 = bswap32(v24);
          *ivec = bswap32(v23);
          *(ivec + 1) = v15;
        }

        v16 = *in++;
        v17 = ivec[v13];
        *out++ = v17 ^ v16;
        ivec[v13] = v17 ^ v16;
        v13 = (v13 + 1) & 7;
        --v10;
      }

      while (v10);
    }
  }

  else if (length)
  {
    do
    {
      if (!v13)
      {
        v18 = bswap32(*(ivec + 1));
        v23 = bswap32(*ivec);
        v24 = v18;
        BF_encrypt(&v23, schedule);
        v19 = bswap32(v24);
        *ivec = bswap32(v23);
        *(ivec + 1) = v19;
      }

      v20 = *in++;
      v21 = ivec[v13];
      ivec[v13] = v20;
      *out++ = v21 ^ v20;
      v13 = (v13 + 1) & 7;
      --v10;
    }

    while (v10);
  }

  *num = v13;
  v22 = *MEMORY[0x277D85DE8];
}

ASN1_OCTET_STRING *s2i_skey_id(int a1, uint64_t a2, char *__s1)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = strcmp(__s1, "hash");
  if (!v5)
  {
    v9 = ASN1_OCTET_STRING_new();
    if (!v9)
    {
      ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_skey.c", 129);
      goto LABEL_20;
    }

    size = 0;
    if (a2)
    {
      if (*a2 == 1)
      {
        goto LABEL_20;
      }

      v10 = *(a2 + 24);
      if (v10)
      {
        v11 = 40;
        goto LABEL_13;
      }

      v10 = *(a2 + 16);
      if (v10)
      {
        v11 = 48;
LABEL_13:
        v12 = *(*(*v10 + v11) + 8);
        if (!v12)
        {
          v16 = 114;
          v17 = 147;
          goto LABEL_18;
        }

        v13 = *(v12 + 1);
        v14 = *v12;
        v15 = EVP_sha1();
        if (!EVP_Digest(v13, v14, md, &size, v15, 0))
        {
LABEL_19:
          ASN1_OCTET_STRING_free(v9);
          v9 = 0;
          goto LABEL_20;
        }

        if (!ASN1_STRING_set(v9, md, size))
        {
          v16 = 65;
          v17 = 156;
LABEL_18:
          ERR_put_error(34, 4095, v16, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_skey.c", v17);
          goto LABEL_19;
        }

LABEL_20:
        v18 = *MEMORY[0x277D85DE8];
        return v9;
      }
    }

    v16 = 114;
    v17 = 137;
    goto LABEL_18;
  }

  v7 = *MEMORY[0x277D85DE8];

  return s2i_ASN1_OCTET_STRING(v5, v6, __s1);
}

ASN1_OCTET_STRING *__cdecl s2i_ASN1_OCTET_STRING(X509V3_EXT_METHOD *method, X509V3_CTX *ctx, char *str)
{
  v4 = ASN1_OCTET_STRING_new();
  if (v4)
  {
    len = 0;
    v5 = string_to_hex(str, &len);
    v4->data = v5;
    if (v5)
    {
      v4->length = len;
    }

    else
    {
      ASN1_OCTET_STRING_free(v4);
      return 0;
    }
  }

  else
  {
    ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_skey.c", 102);
  }

  return v4;
}

uint64_t WHIRLPOOL_Init(uint64_t a1)
{
  *(a1 + 160) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return 1;
}

uint64_t WHIRLPOOL_Update(uint64_t a1, unsigned __int8 *__src, unint64_t a3)
{
  for (i = a3; i >> 60; __src += 0x1000000000000000)
  {
    WHIRLPOOL_BitUpdate(a1, __src, 0x8000000000000000);
    i -= 0x1000000000000000;
  }

  if (i)
  {
    WHIRLPOOL_BitUpdate(a1, __src, 8 * i);
  }

  return 1;
}

uint64_t WHIRLPOOL_BitUpdate(uint64_t result, unsigned __int8 *__src, unint64_t a3)
{
  v3 = a3;
  v5 = result;
  v6 = *(result + 128);
  v7 = v6 & 7;
  v8 = -a3 & 7;
  v9 = *(result + 136);
  *(result + 136) = v9 + a3;
  if (__CFADD__(v9, a3))
  {
    v10 = (result + 144);
    v11 = 1;
    do
    {
      v12 = (*v10++)++ == -1;
      if (v11 > 2)
      {
        break;
      }

      ++v11;
    }

    while (v12);
  }

  if (v8 | v7)
  {
    if (a3)
    {
      v13 = result + 64;
      v14 = 8 - v7;
      do
      {
        v15 = v6 >> 3;
        if (v7 == v8)
        {
          v20 = *__src++;
          *(v13 + v15) |= v20 & (0xFFu >> v7);
          v6 += v14;
          v3 -= v14;
          if (v6 == 512)
          {
            result = whirlpool_block(v5, (v5 + 64), 1);
            v6 = 0;
          }

          *(v5 + 128) = v6;
          goto LABEL_32;
        }

        v16 = *__src << v8;
        v17 = v3 - 8;
        if (v3 < 8)
        {
          if (v7)
          {
            *(v13 + v15) |= (*__src << v8) >> v7;
          }

          else
          {
            *(v13 + v15) = v16;
          }

          v6 += v3;
          if (v6 == 512)
          {
            result = whirlpool_block(v5, (v5 + 64), 1);
            v6 = 0;
            v19 = 0;
          }

          else
          {
            v19 = v15 + 1;
          }

          v17 = 0;
          v3 = 0;
          if (!v7)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v18 = *++__src;
          v16 |= v18 >> (8 - v8);
          if (v7)
          {
            *(v13 + v15) |= v16 >> v7;
          }

          else
          {
            *(v13 + v15) = v16;
          }

          v6 += 8;
          if (v6 < 0x200)
          {
            v19 = v15 + 1;
          }

          else
          {
            result = whirlpool_block(v5, (v5 + 64), 1);
            v19 = 0;
            v6 &= 0x1FFu;
          }

          v3 -= 8;
          if (!v7)
          {
            goto LABEL_27;
          }
        }

        *(v13 + v19) = v16 << v14;
        v3 = v17;
LABEL_27:
        *(v5 + 128) = v6;
      }

      while (v3);
    }
  }

  else
  {
LABEL_32:
    while (v3)
    {
      if (v6 || v3 < 0x200)
      {
        v21 = 512 - v6;
        v22 = (v5 + 64 + (v6 >> 3));
        v23 = v3 - v21;
        if (v3 >= v21)
        {
          v24 = v21 >> 3;
          memcpy(v22, __src, v24);
          __src += v24;
          result = whirlpool_block(v5, (v5 + 64), 1);
          v6 = 0;
          v3 = v23;
        }

        else
        {
          result = memcpy(v22, __src, v3 >> 3);
          v6 += v3;
          v3 = 0;
        }

        *(v5 + 128) = v6;
      }

      else
      {
        result = whirlpool_block(v5, __src, v3 >> 9);
        v6 = 0;
        __src += 64 * (v3 >> 9);
        v3 &= 0x1FFu;
      }
    }
  }

  return result;
}

uint64_t WHIRLPOOL_Final(_OWORD *a1, __int128 *a2)
{
  v4 = *(a2 + 32);
  v5 = v4 >> 3;
  if ((v4 & 7) != 0)
  {
    *(a2 + v5 + 64) |= 0x80u >> (v4 & 7);
  }

  else
  {
    *(a2 + v5 + 64) = 0x80;
  }

  v6 = v5 + 1;
  if (v4 >= 0x100)
  {
    if (v4 <= 0x1F7)
    {
      bzero(a2 + v6 + 64, (63 - v5));
    }

    whirlpool_block(a2, a2 + 8, 1);
    v6 = 0;
    goto LABEL_9;
  }

  if (v4 <= 0xF7)
  {
LABEL_9:
    bzero(a2 + v6 + 64, 32 - v6);
  }

  v7 = 0;
  v8 = a2 + 127;
  do
  {
    v9 = *(a2 + v7 + 17);
    v10 = 8;
    do
    {
      *v8-- = v9;
      v9 >>= 8;
      --v10;
    }

    while (v10);
    ++v7;
  }

  while (v7 != 4);
  whirlpool_block(a2, a2 + 8, 1);
  if (!a1)
  {
    return 0;
  }

  v11 = *a2;
  v12 = a2[1];
  v13 = a2[3];
  a1[2] = a2[2];
  a1[3] = v13;
  *a1 = v11;
  a1[1] = v12;
  a2[2] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  a2[8] = 0u;
  a2[9] = 0u;
  *(a2 + 20) = 0;
  result = 1;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

_OWORD *WHIRLPOOL(unsigned __int8 *__src, unint64_t a2, _OWORD *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = 0;
  memset(&v6[8], 0, 32);
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = &WHIRLPOOL_m;
  }

  memset(v6, 0, 128);
  WHIRLPOOL_Update(v6, __src, a2);
  WHIRLPOOL_Final(v3, v6);
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

int X509V3_EXT_add(X509V3_EXT_METHOD *ext)
{
  v2 = ext_list;
  if (ext_list || (v2 = sk_new(ext_cmp), (ext_list = v2) != 0))
  {
    if (sk_push(v2, ext))
    {
      return 1;
    }

    v4 = 159;
  }

  else
  {
    v4 = 155;
  }

  ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_lib.c", v4);
  return 0;
}

X509V3_EXT_METHOD *__cdecl X509V3_EXT_get_nid(int nid)
{
  *key = data;
  if (nid < 0)
  {
    return 0;
  }

  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *data = 0u;
  v6 = 0u;
  *data = nid;
  v1 = OBJ_bsearch_(key, &standard_exts, 40, 8, ext_cmp_BSEARCH_CMP_FN);
  if (v1)
  {
    return *v1;
  }

  result = ext_list;
  if (ext_list)
  {
    v3 = sk_find(ext_list, data);
    if (v3 != -1)
    {
      return sk_value(ext_list, v3);
    }

    return 0;
  }

  return result;
}

X509V3_EXT_METHOD *__cdecl X509V3_EXT_get(X509_EXTENSION *ext)
{
  v1 = OBJ_obj2nid(ext->object);
  if (!v1)
  {
    return 0;
  }

  return X509V3_EXT_get_nid(v1);
}

int X509V3_EXT_add_list(X509V3_EXT_METHOD *extlist)
{
  if (extlist->ext_nid == -1)
  {
    return 1;
  }

  for (i = extlist; ; ++i)
  {
    result = X509V3_EXT_add(i);
    if (!result)
    {
      break;
    }

    ext_nid = i[1].ext_nid;
    if (ext_nid == -1)
    {
      return 1;
    }
  }

  return result;
}

int X509V3_EXT_add_alias(int nid_to, int nid_from)
{
  nid = X509V3_EXT_get_nid(nid_from);
  if (!nid)
  {
    v14 = 102;
    v15 = 232;
LABEL_7:
    ERR_put_error(34, 4095, v14, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_lib.c", v15);
    return 0;
  }

  v4 = nid;
  v5 = malloc_type_malloc(0x68uLL, 0x10E0040B735ED96uLL);
  if (!v5)
  {
    v14 = 65;
    v15 = 236;
    goto LABEL_7;
  }

  v6 = v5;
  v7 = *&v4->d2i;
  v8 = *&v4->ext_nid;
  *&v5->ext_new = *&v4->ext_new;
  *&v5->d2i = v7;
  *&v5->ext_nid = v8;
  v9 = *&v4->i2s;
  v10 = *&v4->i2v;
  v11 = *&v4->i2r;
  v5->usr_data = v4->usr_data;
  *&v5->i2v = v10;
  *&v5->i2r = v11;
  *&v5->i2s = v9;
  v12 = v5->ext_flags | 1;
  v5->ext_nid = nid_to;
  v5->ext_flags = v12;
  if (X509V3_EXT_add(v5))
  {
    return 1;
  }

  free(v6);
  return 0;
}

void ext_list_free(void *a1)
{
  if (*(a1 + 4))
  {
    free(a1);
  }
}

void *__cdecl X509V3_EXT_d2i(X509_EXTENSION *ext)
{
  result = X509V3_EXT_get(ext);
  if (result)
  {
    value = ext->value;
    in = value->data;
    v4 = *(result + 1);
    if (v4)
    {
      return ASN1_item_d2i(0, &in, value->length, v4);
    }

    else
    {
      return (*(result + 4))(0, &in, value->length);
    }
  }

  return result;
}

void *__cdecl X509V3_get_d2i(STACK *x, int nid, int *crit, int *idx)
{
  if (x)
  {
    v8 = idx ? *idx + 1 : 0;
    v9 = v8 & ~(v8 >> 31);
    if (v9 < sk_num(x))
    {
      v10 = 0;
      while (1)
      {
        v11 = sk_value(x, v9);
        if (OBJ_obj2nid(*v11) == nid)
        {
          if (idx)
          {
            *idx = v9;
LABEL_21:
            if (crit)
            {
              *crit = X509_EXTENSION_get_critical(v11);
            }

            return X509V3_EXT_d2i(v11);
          }

          if (v10)
          {
            if (!crit)
            {
              return 0;
            }

            v12 = -2;
LABEL_18:
            *crit = v12;
            return 0;
          }
        }

        else
        {
          v11 = v10;
        }

        ++v9;
        v10 = v11;
        if (v9 >= sk_num(x))
        {
          if (!v11)
          {
            break;
          }

          goto LABEL_21;
        }
      }
    }
  }

  if (idx)
  {
    *idx = -1;
  }

  if (crit)
  {
    v12 = -1;
    goto LABEL_18;
  }

  return 0;
}

int X509V3_add1_i2d(STACK **x, int nid, void *value, int crit, unint64_t flags)
{
  v9 = flags & 0xF;
  if (v9 == 1)
  {
LABEL_2:
    v10 = X509V3_EXT_i2d(nid, crit, value);
    if (v10)
    {
      v11 = v10;
      v12 = *x;
      if (*x || (v12 = sk_new_null(), (*x = v12) != 0))
      {
        v13 = sk_push(v12, v11) == 0;
        goto LABEL_6;
      }

      return -1;
    }

    goto LABEL_25;
  }

  v15 = flags;
  ext_by_NID = X509v3_get_ext_by_NID(*x, nid, -1);
  if (ext_by_NID < 0)
  {
    v19 = 102;
    if (v9 != 3 && v9 != 5)
    {
      goto LABEL_2;
    }

    if ((v15 & 0x10) != 0)
    {
      return 0;
    }

LABEL_22:
    v20 = 433;
LABEL_26:
    ERR_put_error(34, 4095, v19, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_lib.c", v20);
    return 0;
  }

  if (!v9)
  {
    v19 = 145;
    if ((v15 & 0x10) != 0)
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (v9 == 4)
  {
    return 1;
  }

  v17 = ext_by_NID;
  if (v9 == 5)
  {
    v18 = sk_delete(*x, ext_by_NID);
    if (!v18)
    {
      return -1;
    }

    X509_EXTENSION_free(v18);
    return 1;
  }

  v21 = X509V3_EXT_i2d(nid, crit, value);
  if (!v21)
  {
LABEL_25:
    v19 = 144;
    v20 = 411;
    goto LABEL_26;
  }

  v22 = v21;
  v23 = sk_value(*x, v17);
  X509_EXTENSION_free(v23);
  v13 = sk_set(*x, v17, v22) == 0;
LABEL_6:
  if (v13)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

uint64_t asn1_parse2(BIO *a1, unsigned __int8 **a2, uint64_t a3, int a4, int a5, unsigned int a6, uint64_t a7)
{
  v71 = *MEMORY[0x277D85DE8];
  plength = 0;
  in = 0;
  a = 0;
  *pclass = 0;
  v9 = *a2;
  pp = *a2;
  if (a5 <= 128)
  {
    v16 = a3;
    if (a3 < 1)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v10 = 1;
      goto LABEL_7;
    }

    v63 = a4;
    v64 = &v9[a3];
    if (a6)
    {
      v18 = a5;
    }

    else
    {
      v18 = 0;
    }

    indent = v18;
    v58 = a7;
    while (1)
    {
      object = ASN1_get_object(&pp, &plength, &pclass[1], pclass, v16);
      if ((object & 0x80) != 0)
      {
        BIO_write(a1, "Error in encoding\n", 18);
        goto LABEL_3;
      }

      v20 = object;
      v21 = pp;
      if (BIO_printf(a1, "%5ld:", &v9[v63] - *a2) < 1)
      {
        goto LABEL_3;
      }

      v22 = v21 - v9;
      v23 = v20 == 33 ? BIO_printf(a1, "d=%-2d hl=%ld l=inf  ") : BIO_printf(a1, "d=%-2d hl=%ld l=%4ld ");
      if (v23 < 1)
      {
        goto LABEL_3;
      }

      v24 = pclass[0];
      v25 = pclass[1];
      v26 = (v20 & 0x20) != 0 ? "cons: " : "prim: ";
      if (BIO_write(a1, v26, 6) < 6 || !BIO_indent(a1, indent, 128))
      {
        goto LABEL_3;
      }

      if ((~v24 & 0xC0) != 0)
      {
        if ((v24 & 0x80) != 0)
        {
          v27 = __str;
          snprintf(__str, 0x80uLL, "cont [ %d ]");
        }

        else if ((v24 & 0x40) != 0)
        {
          v27 = __str;
          snprintf(__str, 0x80uLL, "appl [ %d ]");
        }

        else if (v25 < 31)
        {
          v27 = ASN1_tag2str(v25);
        }

        else
        {
          v27 = __str;
          snprintf(__str, 0x80uLL, "<ASN1 %d>");
        }
      }

      else
      {
        v27 = __str;
        snprintf(__str, 0x80uLL, "priv [ %d ] ");
      }

      if (BIO_printf(a1, "%-18s", v27) <= 0)
      {
        goto LABEL_3;
      }

      v28 = v16 - v22;
      if ((v20 & 0x20) != 0)
      {
        v30 = pp;
        v31 = plength;
        if (BIO_write(a1, "\n", 1) < 1)
        {
          goto LABEL_3;
        }

        if (plength > v28)
        {
          BIO_printf(a1, "length is greater than %ld\n");
          goto LABEL_3;
        }

        v32 = &v30[v31];
        if (v20 == 33 && !plength)
        {
          v29 = pp;
          v33 = v64;
          while (1)
          {
            v34 = asn1_parse2(a1, &pp, v33 - v29, (v29 - *a2 + a4), (a5 + 1), a6, a7);
            v10 = v34;
            if (!v34)
            {
              goto LABEL_4;
            }

            if (v34 == 2)
            {
              v29 = pp;
              v33 = v64;
LABEL_59:
              plength = &v29[-v32];
              goto LABEL_129;
            }

            v29 = pp;
            v33 = v64;
            if (pp >= v64)
            {
              goto LABEL_59;
            }
          }
        }

        while (1)
        {
          v29 = pp;
          if (pp >= v32)
          {
            goto LABEL_50;
          }

          if (!asn1_parse2(a1, &pp, v32 - pp, (pp - *a2 + a4), (a5 + 1), a6, a7))
          {
            goto LABEL_3;
          }
        }
      }

      if (pclass[0])
      {
        pp += plength;
        if (BIO_write(a1, "\n", 1) < 1)
        {
          goto LABEL_3;
        }

        v29 = pp;
LABEL_50:
        v33 = v64;
        goto LABEL_129;
      }

      if (pclass[1] <= 5)
      {
        switch(pclass[1])
        {
          case 1:
            if (plength != 1 || pp >= v64)
            {
              v49 = a1;
              v50 = "Bad BOOLean\n";
              v51 = 12;
              goto LABEL_125;
            }

            BIO_printf(a1, ":%u", *pp);
LABEL_126:
            v48 = BIO_write(a1, "\n", 1);
            goto LABEL_127;
          case 2:
            in = v9;
            v12 = d2i_ASN1_INTEGER(0, &in, plength + v22);
            if (v12)
            {
              if (BIO_write(a1, ":", 1) < 1 || v12->type == 258 && BIO_write(a1, "-", 1) < 1)
              {
                goto LABEL_155;
              }

              LODWORD(length) = v12->length;
              if (v12->length >= 1)
              {
                v45 = 0;
                while (BIO_printf(a1, "%02X", v12->data[v45]) >= 1)
                {
                  ++v45;
                  length = v12->length;
                  if (v45 >= length)
                  {
                    goto LABEL_95;
                  }
                }

LABEL_155:
                v10 = 0;
                v11 = 0;
                goto LABEL_6;
              }

LABEL_95:
              if (!length && BIO_write(a1, "00", 2) < 1)
              {
                goto LABEL_155;
              }
            }

            else if (BIO_write(a1, "BAD INTEGER", 11) < 1)
            {
              goto LABEL_3;
            }

            ASN1_INTEGER_free(v12);
            goto LABEL_126;
          case 4:
            in = v9;
            v36 = d2i_ASN1_OCTET_STRING(0, &in, plength + v22);
            v11 = v36;
            if (v36)
            {
              v37 = v36->length;
              if (v37 >= 1)
              {
                data = v36->data;
                in = data;
                do
                {
                  v39 = *data++;
                  v40 = v39;
                  if (v39 <= 0x1Fu)
                  {
                    v41 = v40 > 0xD;
                    v42 = (1 << v40) & 0x2600;
                    if (v41 || v42 == 0)
                    {
LABEL_135:
                      if (a7)
                      {
                        if (BIO_write(a1, "\n", 1) >= 1)
                        {
                          v55 = v11->length >= a7 ? a7 : v11->length;
                          v56 = a7 == -1 ? v11->length : v55;
                          if (BIO_dump_indent(a1, in, v56, 6) >= 1)
                          {
                            ASN1_OCTET_STRING_free(v11);
                            goto LABEL_128;
                          }
                        }
                      }

                      else if (BIO_write(a1, "[HEX DUMP]:", 11) >= 1)
                      {
                        if (v11->length < 1)
                        {
                          goto LABEL_77;
                        }

                        v57 = 0;
                        while (BIO_printf(a1, "%02X", in[v57]) >= 1)
                        {
                          if (++v57 >= v11->length)
                          {
                            goto LABEL_77;
                          }
                        }
                      }

                      goto LABEL_157;
                    }
                  }

                  else if (v40 > 0x7E)
                  {
                    goto LABEL_135;
                  }

                  --v37;
                }

                while (v37);
                if (BIO_write(a1, ":", 1) < 1 || BIO_write(a1, in, v11->length) < 1)
                {
LABEL_157:
                  v10 = 0;
                  goto LABEL_5;
                }
              }
            }

LABEL_77:
            ASN1_OCTET_STRING_free(v11);
            goto LABEL_126;
        }
      }

      else
      {
        if (pclass[1] <= 0x1Eu)
        {
          if (((1 << SLOBYTE(pclass[1])) & 0x5DC1000) != 0)
          {
            if (BIO_write(a1, ":", 1) < 1)
            {
              goto LABEL_3;
            }

            if (plength >= 1)
            {
              v35 = BIO_write(a1, pp, plength);
              if (v35 != plength)
              {
                goto LABEL_3;
              }
            }

            goto LABEL_126;
          }

          if (pclass[1] == 10)
          {
            in = v9;
            v13 = d2i_ASN1_ENUMERATED(0, &in, plength + v22);
            if (v13)
            {
              if (BIO_write(a1, ":", 1) < 1 || v13->type == 266 && BIO_write(a1, "-", 1) < 1)
              {
                goto LABEL_156;
              }

              LODWORD(v52) = v13->length;
              if (v13->length >= 1)
              {
                v53 = 0;
                while (BIO_printf(a1, "%02X", v13->data[v53]) >= 1)
                {
                  ++v53;
                  v52 = v13->length;
                  if (v53 >= v52)
                  {
                    goto LABEL_117;
                  }
                }

LABEL_156:
                v10 = 0;
                v11 = 0;
                v12 = 0;
                goto LABEL_7;
              }

LABEL_117:
              if (!v52 && BIO_write(a1, "00", 2) < 1)
              {
                goto LABEL_156;
              }
            }

            else if (BIO_write(a1, "BAD ENUMERATED", 14) < 1)
            {
              goto LABEL_3;
            }

            ASN1_ENUMERATED_free(v13);
            goto LABEL_126;
          }

          if (pclass[1] == 30)
          {
            goto LABEL_126;
          }
        }

        if (pclass[1] == 6)
        {
          in = v9;
          if (d2i_ASN1_OBJECT(&a, &in, plength + v22))
          {
            if (BIO_write(a1, ":", 1) < 1)
            {
              goto LABEL_3;
            }

            i2a_ASN1_OBJECT(a1, a);
            goto LABEL_126;
          }

          v49 = a1;
          v50 = ":BAD OBJECT";
          v51 = 11;
LABEL_125:
          if (BIO_write(v49, v50, v51) < 1)
          {
            goto LABEL_3;
          }

          goto LABEL_126;
        }
      }

      if (!a7 || plength < 1)
      {
        goto LABEL_126;
      }

      if (BIO_write(a1, "\n", 1) < 1)
      {
        goto LABEL_3;
      }

      if (plength < v58 || a7 == -1)
      {
        v47 = plength;
      }

      else
      {
        v47 = a7;
      }

      v48 = BIO_dump_indent(a1, pp, v47, 6);
LABEL_127:
      if (v48 < 1)
      {
        goto LABEL_3;
      }

LABEL_128:
      v29 = &pp[plength];
      pp += plength;
      v33 = v64;
      if (!*pclass)
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v10 = 2;
        goto LABEL_7;
      }

LABEL_129:
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v16 = v28 - plength;
      v10 = 1;
      v54 = v29 >= v33 || v9 >= v29;
      v9 = v29;
      if (v54)
      {
        goto LABEL_7;
      }
    }
  }

  BIO_printf(a1, "Max depth exceeded\n");
LABEL_3:
  v10 = 0;
LABEL_4:
  v11 = 0;
LABEL_5:
  v12 = 0;
LABEL_6:
  v13 = 0;
LABEL_7:
  if (a)
  {
    ASN1_OBJECT_free(a);
  }

  ASN1_OCTET_STRING_free(v11);
  ASN1_INTEGER_free(v12);
  ASN1_ENUMERATED_free(v13);
  *a2 = pp;
  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

int ENGINE_register_RSA(ENGINE *e)
{
  if (*(e + 2))
  {
    return engine_table_register(&rsa_table, engine_unregister_all_RSA, e, dummy_nid, 1, 0);
  }

  else
  {
    return 1;
  }
}

void ENGINE_register_all_RSA(void)
{
  first = ENGINE_get_first();
  if (first)
  {
    next = first;
    do
    {
      if (*(next + 2))
      {
        engine_table_register(&rsa_table, engine_unregister_all_RSA, next, dummy_nid, 1, 0);
      }

      next = ENGINE_get_next(next);
    }

    while (next);
  }
}

int ENGINE_set_default_RSA(ENGINE *e)
{
  if (*(e + 2))
  {
    return engine_table_register(&rsa_table, engine_unregister_all_RSA, e, dummy_nid, 1, 1);
  }

  else
  {
    return 1;
  }
}

uint64_t BIO_asn1_set_prefix(BIO *a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return BIO_ctrl(a1, 149, 0, v4);
}

uint64_t BIO_asn1_get_prefix(BIO *a1, void *a2, void *a3)
{
  v7 = 0;
  v8 = 0;
  result = BIO_ctrl(a1, 150, 0, &v7);
  if (result >= 1)
  {
    v6 = v8;
    *a2 = v7;
    *a3 = v6;
  }

  return result;
}

uint64_t BIO_asn1_set_suffix(BIO *a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return BIO_ctrl(a1, 151, 0, v4);
}

uint64_t BIO_asn1_get_suffix(BIO *a1, void *a2, void *a3)
{
  v7 = 0;
  v8 = 0;
  result = BIO_ctrl(a1, 152, 0, &v7);
  if (result >= 1)
  {
    v6 = v8;
    *a2 = v7;
    *a3 = v6;
  }

  return result;
}

uint64_t asn1_bio_write(BIO *b, char *data, int length)
{
  result = 0;
  if (data)
  {
    v5 = length;
    if ((length & 0x80000000) == 0)
    {
      if (b->prev_bio && (next_bio = b->next_bio) != 0)
      {
        v7 = data;
        v8 = 0;
        pp = 0;
        do
        {
          while (1)
          {
            while (1)
            {
              method = next_bio->method;
              if (SLODWORD(next_bio->method) <= 1)
              {
                break;
              }

              switch(method)
              {
                case 2:
                  v14 = ASN1_object_size(0, v5, next_bio->retry_reason) - v5;
                  if (v14 < 1 || v14 > SLODWORD(next_bio->cb_arg))
                  {
                    return 0xFFFFFFFFLL;
                  }

                  next_bio->init = v14;
                  pp = next_bio->callback;
                  ASN1_put_object(&pp, 0, v5, next_bio->retry_reason, next_bio->flags);
                  next_bio->shutdown = v5;
                  LODWORD(next_bio->method) = 3;
                  break;
                case 3:
                  v10 = BIO_write(b->prev_bio, next_bio->callback + SHIDWORD(next_bio->cb_arg), next_bio->init);
                  v11 = v10;
                  if (v10 < 1)
                  {
                    goto LABEL_35;
                  }

                  v12 = next_bio->init - v10;
                  next_bio->init = v12;
                  if (v12)
                  {
                    HIDWORD(next_bio->cb_arg) += v10;
                  }

                  else
                  {
                    HIDWORD(next_bio->cb_arg) = 0;
                    LODWORD(next_bio->method) = 4;
                  }

                  break;
                case 4:
                  if (v5 >= next_bio->shutdown)
                  {
                    shutdown = next_bio->shutdown;
                  }

                  else
                  {
                    shutdown = v5;
                  }

                  v16 = BIO_write(b->prev_bio, v7, shutdown);
                  v11 = v16;
                  if (v16 < 1)
                  {
                    goto LABEL_35;
                  }

                  v17 = next_bio->shutdown - v16;
                  next_bio->shutdown = v17;
                  if (!v17)
                  {
                    LODWORD(next_bio->method) = 2;
                  }

                  v8 += v16;
                  v7 += v16;
                  v5 -= v16;
                  if (!v5)
                  {
                    goto LABEL_35;
                  }

                  break;
                default:
LABEL_32:
                  BIO_clear_flags(b, 15);
                  return 0;
              }
            }

            if (method)
            {
              break;
            }

            result = asn1_bio_setup_ex(b, next_bio, *&next_bio->num, 1, 2);
            if (!result)
            {
              return result;
            }
          }

          if (method != 1)
          {
            goto LABEL_32;
          }

          v13 = asn1_bio_flush_ex(b, next_bio, next_bio->ptr, 2);
        }

        while (v13 >= 1);
        v11 = v13;
LABEL_35:
        BIO_clear_flags(b, 15);
        BIO_copy_next_retry(b);
        if (v8 <= 0)
        {
          return v11;
        }

        else
        {
          return v8;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

BIO *asn1_bio_read(uint64_t a1, void *a2, int a3)
{
  result = *(a1 + 64);
  if (result)
  {
    return BIO_read(result, a2, a3);
  }

  return result;
}

uint64_t asn1_bio_puts(BIO *a1, char *__s)
{
  v4 = strlen(__s);

  return asn1_bio_write(a1, __s, v4);
}

BIO *asn1_bio_gets(uint64_t a1, char *a2, int a3)
{
  result = *(a1 + 64);
  if (result)
  {
    return BIO_gets(result, a2, a3);
  }

  return result;
}

uint64_t asn1_bio_ctrl(BIO *b, int a2, uint64_t larg, _OWORD *parg)
{
  next_bio = b->next_bio;
  if (!next_bio)
  {
    return 0;
  }

  if (a2 > 150)
  {
    if (a2 <= 152)
    {
      if (a2 == 151)
      {
        *&next_bio->next_bio = *parg;
        return 1;
      }

      v8 = *&next_bio->next_bio;
      goto LABEL_10;
    }

    if (a2 == 153)
    {
      next_bio->num_write = parg;
      return 1;
    }

    if (a2 == 154)
    {
      *parg = next_bio->num_write;
      return 1;
    }

    goto LABEL_23;
  }

  if (a2 != 11)
  {
    if (a2 == 149)
    {
      *&next_bio->num = *parg;
      return 1;
    }

    if (a2 == 150)
    {
      v8 = *&next_bio->num;
LABEL_10:
      *parg = v8;
      return 1;
    }

LABEL_23:
    result = b->prev_bio;
    if (!result)
    {
      return result;
    }

    goto LABEL_24;
  }

  if (!b->prev_bio)
  {
    return 0;
  }

  method = next_bio->method;
  if (LODWORD(next_bio->method) != 2)
  {
    goto LABEL_18;
  }

  if (!asn1_bio_setup_ex(b, b->next_bio, next_bio->next_bio, 5, 6))
  {
    return 0;
  }

  method = next_bio->method;
LABEL_18:
  if (method == 5)
  {
    LODWORD(result) = asn1_bio_flush_ex(b, next_bio, next_bio->prev_bio, 6);
    if (result < 1)
    {
      return result;
    }

    method = next_bio->method;
  }

  if (method != 6)
  {
    BIO_clear_flags(b, 15);
    return 0;
  }

  result = b->prev_bio;
  a2 = 11;
LABEL_24:

  return BIO_ctrl(result, a2, larg, parg);
}

uint64_t asn1_bio_new(uint64_t a1)
{
  result = malloc_type_calloc(1uLL, 0x60uLL, 0x109004097C5DC90uLL);
  if (result)
  {
    v3 = result;
    v4 = malloc_type_malloc(0x14uLL, 0xD08239A2uLL);
    v3[1] = v4;
    if (v4)
    {
      *(v3 + 4) = 20;
      v3[4] = 0x400000000;
      *v3 = 0;
      result = 1;
      *(a1 + 32) = 1;
      *(a1 + 56) = v3;
      *(a1 + 40) = 0;
    }

    else
    {
      free(v3);
      return 0;
    }
  }

  return result;
}

uint64_t asn1_bio_free(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    return 0;
  }

  v3 = *(v1 + 48);
  if (v3)
  {
    v3(a1, v1 + 72, v1 + 80, v1 + 88);
  }

  v4 = *(v1 + 64);
  if (v4)
  {
    v4(a1, v1 + 72, v1 + 80, v1 + 88);
  }

  free(*(v1 + 8));
  free(v1);
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  result = 1;
  *(a1 + 40) = 0;
  return result;
}

BIO *asn1_bio_callback_ctrl(uint64_t a1, int a2, void (__cdecl *a3)(bio_st *, int, const char *, int, uint64_t, uint64_t))
{
  result = *(a1 + 64);
  if (result)
  {
    return BIO_callback_ctrl(result, a2, a3);
  }

  return result;
}

uint64_t asn1_bio_setup_ex(BIO *a1, _DWORD *a2, unsigned int (*a3)(BIO *, _DWORD *, _DWORD *, _DWORD *), int a4, int a5)
{
  if (a3 && !a3(a1, a2 + 18, a2 + 20, a2 + 22))
  {
    BIO_clear_flags(a1, 15);
    return 0;
  }

  else
  {
    if (a2[20] <= 0)
    {
      v9 = a5;
    }

    else
    {
      v9 = a4;
    }

    *a2 = v9;
    return 1;
  }
}

uint64_t asn1_bio_flush_ex(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, int *, uint64_t), int a4)
{
  v6 = (a2 + 80);
  v5 = *(a2 + 80);
  if (v5 < 1)
  {
    return 1;
  }

  v10 = a2 + 72;
  v11 = *(a1 + 64);
  for (i = (*(a2 + 72) + *(a2 + 84)); ; i = (*(a2 + 72) + v15))
  {
    v13 = BIO_write(v11, i, v5);
    v14 = v13;
    if (v13 < 1)
    {
      break;
    }

    v5 = *v6 - v13;
    *v6 = v5;
    if (v5 < 1)
    {
      if (a3)
      {
        a3(a1, v10, v6, a2 + 88);
      }

      *a2 = a4;
      *(a2 + 84) = 0;
      return v14;
    }

    v15 = *(a2 + 84) + v13;
    *(a2 + 84) = v15;
    v11 = *(a1 + 64);
  }

  return v14;
}

uint64_t desx_cbc_init_key(uint64_t a1, const_DES_cblock *key)
{
  DES_set_key_unchecked(key, *(a1 + 120));
  *(*(a1 + 120) + 128) = *&(*key)[8];
  *(*(a1 + 120) + 136) = *&(*key)[16];
  return 1;
}

uint64_t desx_cbc_cipher(uint64_t a1, unsigned __int8 *output, unsigned __int8 *input, unint64_t length)
{
  v4 = length;
  if (length >> 62)
  {
    v8 = length + 0x4000000000000000;
    do
    {
      DES_xcbc_encrypt(input, output, 0x4000000000000000, *(a1 + 120), (a1 + 40), (*(a1 + 120) + 128), (*(a1 + 120) + 136), *(a1 + 16));
      v4 -= 0x4000000000000000;
      input += 0x4000000000000000;
      output += 0x4000000000000000;
      v8 -= 0x4000000000000000;
    }

    while (v8 < 0x4000000000000000);
  }

  if (v4)
  {
    DES_xcbc_encrypt(input, output, v4, *(a1 + 120), (a1 + 40), (*(a1 + 120) + 128), (*(a1 + 120) + 136), *(a1 + 16));
  }

  return 1;
}

uint64_t long_c2i(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a = 0;
  v14 = a2;
  v12 = 0;
  if (a3)
  {
    if (a2)
    {
      v8 = &v14;
    }

    else
    {
      v8 = 0;
    }

    if (!c2i_ASN1_INTEGER(&a, v8, a3) || !ASN1_INTEGER_get_int64(&v12, a))
    {
      goto LABEL_11;
    }

    v9 = v12;
  }

  else
  {
    v9 = 0;
  }

  if (v9 != *(a6 + 40))
  {
    *a1 = v9;
    v10 = 1;
    goto LABEL_13;
  }

  ERR_put_error(13, 4095, 128, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/x_long.c", 213);
LABEL_11:
  v10 = 0;
LABEL_13:
  ASN1_INTEGER_free(a);
  return v10;
}

uint64_t long_i2c(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  v4 = *a1;
  if (*a1 == *(a4 + 40))
  {
    return 0xFFFFFFFFLL;
  }

  v7 = ASN1_INTEGER_new();
  v8 = v7;
  if (v7 && ASN1_INTEGER_set_int64(&v7->length, v4))
  {
    if (a2)
    {
      v9 = &v11;
    }

    else
    {
      v9 = 0;
    }

    v5 = i2c_ASN1_INTEGER(v8, v9);
  }

  else
  {
    v5 = 0;
  }

  ASN1_INTEGER_free(v8);
  return v5;
}

BIGNUM *__cdecl BN_mod_sqrt(BIGNUM *ret, const BIGNUM *a, const BIGNUM *n, BN_CTX *ctx)
{
  v8 = ret;
  if (!ret)
  {
    v8 = BN_new();
    if (!v8)
    {
      goto LABEL_19;
    }
  }

  BN_CTX_start(ctx);
  v9 = BN_CTX_get(ctx);
  if (!v9)
  {
    goto LABEL_18;
  }

  v10 = v9;
  v11 = BN_CTX_get(ctx);
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = v11;
  if (!BN_nnmod(v10, a, n, ctx))
  {
    goto LABEL_18;
  }

  if (BN_abs_is_word(n, 2))
  {
    is_odd = BN_is_odd(v10);
    goto LABEL_8;
  }

  if (!BN_is_odd(n) || BN_abs_is_word(n, 1))
  {
    v16 = 112;
    v17 = 96;
LABEL_17:
    ERR_put_error(3, 4095, v16, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_mod_sqrt.c", v17);
    goto LABEL_18;
  }

  if (BN_is_zero(v10) || BN_is_one(v10))
  {
    is_odd = BN_is_one(v10);
LABEL_8:
    if (BN_set_word(v12, is_odd))
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  v20 = BN_kronecker(v10, n, ctx);
  if (v20 == -2)
  {
    goto LABEL_18;
  }

  if (v20 <= 0)
  {
    v16 = 111;
    v17 = 667;
    goto LABEL_17;
  }

  if (!n->top)
  {
    goto LABEL_39;
  }

  if ((~*n->d & 3) == 0)
  {
    if (!bn_mod_sqrt_p_is_3_mod_4(v12, v10, n, ctx))
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

  v21 = *n->d & 7;
  if (v21 == 1)
  {
    if (!bn_mod_sqrt_p_is_1_mod_8(v12, v10, n, ctx))
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

  if (v21 != 5)
  {
LABEL_39:
    v16 = 112;
    v17 = 684;
    goto LABEL_17;
  }

  if (!bn_mod_sqrt_p_is_5_mod_8(v12, v10, n, ctx))
  {
    goto LABEL_18;
  }

LABEL_41:
  if (bn_mod_sqrt_normalize(v12, n, ctx))
  {
LABEL_9:
    BN_CTX_start(ctx);
    v14 = BN_CTX_get(ctx);
    if (v14)
    {
      v15 = v14;
      if (BN_mod_sqr(v14, v12, n, ctx))
      {
        if (!BN_cmp(v15, v10))
        {
          BN_CTX_end(ctx);
          v19 = bn_copy(v8, v12);
          BN_CTX_end(ctx);
          if (v19)
          {
            return v8;
          }

          goto LABEL_19;
        }

        ERR_put_error(3, 4095, 111, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_mod_sqrt.c", 619);
      }
    }

    BN_CTX_end(ctx);
  }

LABEL_18:
  BN_CTX_end(ctx);
LABEL_19:
  if (v8 != ret)
  {
    BN_free(v8);
  }

  return 0;
}

BOOL bn_mod_sqrt_p_is_3_mod_4(BIGNUM *a1, const BIGNUM *a2, const BIGNUM *a3, BN_CTX *ctx)
{
  BN_CTX_start(ctx);
  v8 = BN_CTX_get(ctx);
  v11 = v8 && (v9 = v8, v10 = BN_value_one(), BN_uadd(v9, a3, v10)) && BN_rshift(v9, v9, 2) && BN_mod_exp_ct(a1, a2, v9, a3, ctx) != 0;
  BN_CTX_end(ctx);
  return v11;
}

BOOL bn_mod_sqrt_p_is_5_mod_8(BIGNUM *a1, const BIGNUM *a2, const BIGNUM *a3, BN_CTX *ctx)
{
  BN_CTX_start(ctx);
  v8 = BN_CTX_get(ctx);
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v8;
  v10 = BN_CTX_get(ctx);
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = v10;
  v12 = BN_CTX_get(ctx);
  if (v12 && (v13 = v12, (v14 = BN_CTX_get(ctx)) != 0) && (v15 = v14, BN_rshift(v13, a3, 3)) && (BN_set_negative(v13, 0), BN_mod_lshift1(v15, a2, a3, ctx)) && BN_mod_exp_ct(v9, v15, v13, a3, ctx) && BN_mod_sqr(v11, v9, a3, ctx) && BN_mod_mul(v11, v15, v11, a3, ctx) && BN_sub_word(v11, 1uLL) && BN_mod_mul(a1, a2, v9, a3, ctx))
  {
    v16 = BN_mod_mul(a1, a1, v11, a3, ctx) != 0;
  }

  else
  {
LABEL_13:
    v16 = 0;
  }

  BN_CTX_end(ctx);
  return v16;
}

BIGNUM *bn_mod_sqrt_p_is_1_mod_8(BIGNUM *a1, const BIGNUM *a2, BIGNUM *a3, BN_CTX *ctx)
{
  BN_CTX_start(ctx);
  v8 = BN_CTX_get(ctx);
  if (!v8)
  {
    goto LABEL_30;
  }

  v9 = v8;
  v10 = BN_CTX_get(ctx);
  if (!v10)
  {
    goto LABEL_30;
  }

  v11 = v10;
  v12 = BN_CTX_get(ctx);
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = v12;
  v14 = BN_CTX_get(ctx);
  if (v14)
  {
    v15 = 0;
    do
    {
      ++v15;
    }

    while (!BN_is_bit_set(a3, v15));
    if (!BN_rshift(v11, a3, v15))
    {
      goto LABEL_30;
    }

    r = v14;
    BN_CTX_start(ctx);
    v16 = BN_CTX_get(ctx);
    if (!v16)
    {
      goto LABEL_29;
    }

    v17 = v16;
    a = BN_CTX_get(ctx);
    if (!a)
    {
      goto LABEL_29;
    }

    b = BN_CTX_get(ctx);
    if (!b)
    {
      goto LABEL_29;
    }

    v34 = 0;
    for (i = 2; i != 32; ++i)
    {
      if (!BN_set_word(v17, i) || !bn_mod_sqrt_n_is_non_residue(&v34, v17, a3, ctx))
      {
        goto LABEL_29;
      }

      if (v34)
      {
LABEL_24:
        if (!BN_mod_exp_ct(r, v17, v11, a3, ctx))
        {
          goto LABEL_29;
        }

        if (BN_is_zero(r) || BN_is_one(r))
        {
          v20 = 112;
          v21 = 295;
        }

        else
        {
          BN_CTX_end(ctx);
          BN_CTX_start(ctx);
          v23 = BN_CTX_get(ctx);
          if (!v23)
          {
            goto LABEL_29;
          }

          v24 = v23;
          if (!BN_rshift1(v23, v11) || !BN_mod_exp_ct(v13, a2, v24, a3, ctx) || !BN_mod_sqr(v9, v13, a3, ctx) || !BN_mod_mul(v9, a2, v9, a3, ctx))
          {
            goto LABEL_29;
          }

          v14 = BN_mod_mul(v13, a2, v13, a3, ctx);
          BN_CTX_end(ctx);
          if (!v14)
          {
            goto LABEL_31;
          }

LABEL_38:
          if (BN_is_one(v9))
          {
            v14 = bn_copy(a1, v13);
            goto LABEL_31;
          }

          BN_CTX_start(ctx);
          v25 = BN_CTX_get(ctx);
          if (!v25)
          {
            goto LABEL_29;
          }

          v26 = v15 - 2;
          if (v15 < 2)
          {
            v21 = 376;
          }

          else
          {
            v27 = v25;
            if (!BN_is_zero(v9) && !BN_is_one(v9))
            {
              if (bn_copy(v27, v9))
              {
                v15 = 1;
                while (BN_mod_sqr(v27, v27, a3, ctx))
                {
                  if (BN_is_one(v27))
                  {
                    BN_CTX_end(ctx);
                    BN_CTX_start(ctx);
                    v28 = BN_CTX_get(ctx);
                    if (!v28)
                    {
                      goto LABEL_29;
                    }

                    v29 = v28;
                    if (!BN_set_bit(v28, v26) || !BN_mod_exp_ct(v29, r, v29, a3, ctx) || !BN_mod_mul(v13, v13, v29, a3, ctx) || !BN_mod_sqr(r, v29, a3, ctx))
                    {
                      goto LABEL_29;
                    }

                    v30 = BN_mod_mul(v9, v9, r, a3, ctx);
                    BN_CTX_end(ctx);
                    v14 = 0;
                    if (v30)
                    {
                      goto LABEL_38;
                    }

                    goto LABEL_31;
                  }

                  ++v15;
                  if (--v26 == -1)
                  {
                    v21 = 402;
                    goto LABEL_56;
                  }
                }
              }

              goto LABEL_29;
            }

            v21 = 386;
          }

LABEL_56:
          v20 = 112;
        }

LABEL_28:
        ERR_put_error(3, 4095, v20, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_mod_sqrt.c", v21);
        goto LABEL_29;
      }
    }

    if (BN_set_word(a, 0x20uLL) && bn_copy(b, a3))
    {
      BN_set_negative(b, 0);
      v19 = 128;
      while (bn_rand_interval(v17, a, b) && bn_mod_sqrt_n_is_non_residue(&v34, v17, a3, ctx))
      {
        if (v34)
        {
          goto LABEL_24;
        }

        if (!--v19)
        {
          v20 = 113;
          v21 = 282;
          goto LABEL_28;
        }
      }
    }

LABEL_29:
    BN_CTX_end(ctx);
LABEL_30:
    v14 = 0;
  }

LABEL_31:
  BN_CTX_end(ctx);
  return v14;
}

BOOL bn_mod_sqrt_normalize(BIGNUM *a1, const BIGNUM *a2, BN_CTX *ctx)
{
  BN_CTX_start(ctx);
  v6 = BN_CTX_get(ctx);
  v8 = 0;
  if (v6)
  {
    v7 = v6;
    if (BN_lshift1(v6, a1))
    {
      if (BN_ucmp(v7, a2) < 1 || BN_usub(a1, a2, a1))
      {
        v8 = 1;
      }
    }
  }

  BN_CTX_end(ctx);
  return v8;
}

uint64_t bn_mod_sqrt_n_is_non_residue(_DWORD *a1, BIGNUM *a, BIGNUM *b, BN_CTX *ctx)
{
  result = BN_kronecker(a, b, ctx);
  if (result == 1)
  {
    *a1 = 0;
  }

  else
  {
    if (result)
    {
      if (result == -1)
      {
        result = 1;
        *a1 = 1;
        return result;
      }
    }

    else
    {
      ERR_put_error(3, 4095, 112, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_mod_sqrt.c", 221);
    }

    return 0;
  }

  return result;
}

void ERR_print_errors_cb(int (__cdecl *cb)(const char *, size_t, void *), void *u)
{
  v2 = MEMORY[0x28223BE20](cb);
  v4 = v3;
  v5 = v2;
  v17 = *MEMORY[0x277D85DE8];
  data = 0;
  file = 0;
  v11[1] = 0;
  *flags = 0;
  v11[0] = 0;
  CRYPTO_THREADID_current(v11);
  v6 = CRYPTO_THREADID_hash(v11);
  do
  {
    error_line_data = ERR_get_error_line_data(&file, &flags[1], &data, flags);
    if (!error_line_data)
    {
      break;
    }

    ERR_error_string_n(error_line_data, v16, 0x100uLL);
    v8 = (flags[0] & 2) != 0 ? data : "";
    snprintf(__str, 0x1000uLL, "%lu:%s:%s:%d:%s\n", v6, v16, file, flags[1], v8);
    v9 = strlen(__str);
  }

  while (v5(__str, v9, v4) > 0);
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t print_fp(const char *a1, uint64_t a2, void *a3)
{
  memset(&a, 0, sizeof(a));
  v5 = BIO_s_file();
  BIO_set(&a, v5);
  BIO_ctrl(&a, 106, 0, a3);
  return BIO_printf(&a, "%s", a1);
}

uint64_t eckey_pub_decode(EVP_PKEY *a1, uint64_t a2)
{
  in = 0;
  *pptype = 0;
  ppval = 0;
  algor = 0;
  result = X509_PUBKEY_get0_param(0, &in, pptype, &algor, a2);
  if (result)
  {
    X509_ALGOR_get0(0, &pptype[1], &ppval, algor);
    a = eckey_type2param(pptype[1], ppval);
    if (!a)
    {
      ERR_put_error(16, 4095, 16, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_ameth.c", 209);
      return 0;
    }

    if (o2i_ECPublicKey(&a, &in, pptype[0]))
    {
      EVP_PKEY_assign(a1, 408, a);
      return 1;
    }

    ERR_put_error(16, 4095, 142, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_ameth.c", 214);
    result = a;
    if (a)
    {
      EC_KEY_free(a);
      return 0;
    }
  }

  return result;
}

uint64_t eckey_pub_encode(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  a = 0;
  v13 = 0;
  out = 0;
  if (eckey_param2type(&v13, &a, v3))
  {
    v4 = i2o_ECPublicKey(v3, 0);
    if (v4 < 1)
    {
      v6 = 0;
    }

    else
    {
      v5 = malloc_type_malloc(v4, 0xDEFCE39uLL);
      v6 = v5;
      if (v5)
      {
        out = v5;
        v7 = i2o_ECPublicKey(v3, &out);
        if (v7 >= 1)
        {
          v8 = v7;
          v9 = OBJ_nid2obj(408);
          v10 = v13;
          if (X509_PUBKEY_set0_param(a1, v9, v13, a, v6, v8))
          {
            return 1;
          }

          goto LABEL_10;
        }
      }
    }

    v10 = v13;
LABEL_10:
    if (v10 == 6)
    {
      ASN1_OBJECT_free(a);
    }

    else
    {
      ASN1_STRING_free(a);
    }

    free(v6);
    return 0;
  }

  ERR_put_error(16, 4095, 16, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_ameth.c", 120);
  return 0;
}

uint64_t eckey_pub_cmp(uint64_t a1, uint64_t a2)
{
  v4 = EC_KEY_get0_group(*(a2 + 32));
  v5 = EC_KEY_get0_public_key(*(a1 + 32));
  v6 = EC_KEY_get0_public_key(*(a2 + 32));
  v7 = EC_POINT_cmp(v4, v5, v6, 0);
  if (v7 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = -2;
  }

  if (v7)
  {
    return v8;
  }

  else
  {
    return 1;
  }
}

uint64_t eckey_priv_decode(EVP_PKEY *a1, uint64_t a2)
{
  ppval = 0;
  in = 0;
  *pptype = 0;
  algor = 0;
  result = PKCS8_pkey_get0(0, &in, pptype, &algor, a2);
  if (result)
  {
    X509_ALGOR_get0(0, &pptype[1], &ppval, algor);
    a = eckey_type2param(pptype[1], ppval);
    if (!a)
    {
LABEL_17:
      v4 = 16;
      v5 = 301;
LABEL_18:
      ERR_put_error(16, 4095, v4, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_ameth.c", v5);
      result = a;
      if (a)
      {
        EC_KEY_free(a);
        return 0;
      }

      return result;
    }

    if (!d2i_ECPrivateKey(&a, &in, pptype[0]))
    {
      v4 = 142;
      v5 = 261;
      goto LABEL_18;
    }

    if (EC_KEY_get0_public_key(a))
    {
LABEL_5:
      EVP_PKEY_assign(a1, 408, a);
      return 1;
    }

    v6 = EC_KEY_get0_group(a);
    v7 = EC_POINT_new(v6);
    if (v7)
    {
      v8 = v7;
      v9 = EC_GROUP_get0_generator(v6);
      if (EC_POINT_copy(v8, v9))
      {
        v10 = EC_KEY_get0_private_key(a);
        if (EC_POINT_mul(v6, v8, v10, 0, 0, 0))
        {
          v11 = EC_KEY_set_public_key(a, v8);
          EC_POINT_free(v8);
          if (v11)
          {
            goto LABEL_5;
          }

          v12 = 292;
          goto LABEL_16;
        }

        v12 = 287;
      }

      else
      {
        v12 = 281;
      }

      EC_POINT_free(v8);
    }

    else
    {
      v12 = 276;
    }

LABEL_16:
    ERR_put_error(16, 4095, 16, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_ameth.c", v12);
    goto LABEL_17;
  }

  return result;
}

BOOL eckey_priv_encode(uint64_t a1, uint64_t a2)
{
  ptype = 0;
  pval = 0;
  v3 = *(a2 + 32);
  if (eckey_param2type(&ptype, &pval, v3))
  {
    enc_flags = EC_KEY_get_enc_flags(v3);
    EC_KEY_set_enc_flags(v3, enc_flags | 1);
    v5 = i2d_ECPrivateKey(v3, 0);
    if (v5)
    {
      v6 = v5;
      v7 = malloc_type_malloc(v5, 0x2333FC2EuLL);
      if (v7)
      {
        v8 = v7;
        out = v7;
        v9 = i2d_ECPrivateKey(v3, &out);
        EC_KEY_set_enc_flags(v3, enc_flags);
        if (v9)
        {
          v10 = OBJ_nid2obj(408);
          return PKCS8_pkey_set0(a1, v10, 0, ptype, pval, v8, v6) != 0;
        }

        free(v8);
        v12 = 16;
        v13 = 348;
      }

      else
      {
        EC_KEY_set_enc_flags(v3, enc_flags);
        v12 = 65;
        v13 = 341;
      }
    }

    else
    {
      EC_KEY_set_enc_flags(v3, enc_flags);
      v12 = 16;
      v13 = 335;
    }
  }

  else
  {
    v12 = 142;
    v13 = 320;
  }

  ERR_put_error(16, 4095, v12, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_ameth.c", v13);
  return 0;
}

uint64_t ec_bits(uint64_t a1)
{
  v2 = BN_new();
  if (v2)
  {
    v3 = v2;
    v4 = EC_KEY_get0_group(*(a1 + 32));
    if (EC_GROUP_get_order(v4, v3, 0))
    {
      v5 = BN_num_bits(v3);
      BN_free(v3);
      return v5;
    }

    BN_free(v3);
  }

  ERR_clear_error();
  return 0;
}

uint64_t ec_security_bits(uint64_t a1)
{
  v1 = ec_bits(a1);
  if (v1 <= 159)
  {
    v2 = v1 / 2;
  }

  else
  {
    v2 = 80;
  }

  if (v1 <= 223)
  {
    v3 = v2;
  }

  else
  {
    v3 = 112;
  }

  if (v1 <= 255)
  {
    v4 = v3;
  }

  else
  {
    v4 = 128;
  }

  if (v1 <= 383)
  {
    v5 = v4;
  }

  else
  {
    v5 = 192;
  }

  if (v1 <= 511)
  {
    return v5;
  }

  else
  {
    return 256;
  }
}

uint64_t eckey_param_decode(EVP_PKEY *a1, const unsigned __int8 **a2, int a3)
{
  v4 = d2i_ECParameters(0, a2, a3);
  if (v4)
  {
    EVP_PKEY_assign(a1, 408, v4);
    return 1;
  }

  else
  {
    ERR_put_error(16, 4095, 16, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_ameth.c", 528);
    return 0;
  }
}

uint64_t ec_copy_parameters(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = EC_KEY_get0_group(*(a2 + 32));

  return EC_KEY_set_group(v2, v3);
}

BOOL ec_cmp_parameters(uint64_t a1, uint64_t a2)
{
  v3 = EC_KEY_get0_group(*(a1 + 32));
  v4 = EC_KEY_get0_group(*(a2 + 32));
  return EC_GROUP_cmp(v3, v4, 0) == 0;
}

uint64_t ec_pkey_ctrl(unsigned int *a1, int a2, uint64_t a3, void *a4)
{
  v6 = 4294967294;
  if (a2 > 4)
  {
    if (a2 != 5)
    {
      if (a2 != 7)
      {
        if (a2 == 8)
        {
          v6 = 1;
          *a4 = 1;
        }

        return v6;
      }

      if (a3 != 1)
      {
        if (a3)
        {
          return v6;
        }

        out = 0;
        v7 = CMS_RecipientInfo_get0_pkey_ctx(a4);
        v6 = v7;
        if (!v7)
        {
          return v6;
        }

        paobj = 0;
        algor = 0;
        in = 0;
        str = 0;
        n = 0;
        md = 0;
        v8 = EVP_PKEY_CTX_get0_pkey(v7);
        if (!CMS_RecipientInfo_kari_get0_orig_id(a4, &algor, &str, 0, 0, 0))
        {
          goto LABEL_74;
        }

        X509_ALGOR_get0(&paobj, 0, 0, algor);
        v9 = paobj;
        if (v9 == OBJ_nid2obj(0))
        {
          v38 = *(v8 + 32);
          v39 = i2o_ECPublicKey(v38, 0);
          if (v39 < 1)
          {
            goto LABEL_74;
          }

          v40 = malloc_type_malloc(v39, 0x68F45055uLL);
          out = v40;
          if (!v40)
          {
            goto LABEL_74;
          }

          v41 = v40;
          v63 = v40;
          v42 = i2o_ECPublicKey(v38, &v63);
          if (v42 < 1)
          {
            goto LABEL_74;
          }

          ASN1_STRING_set0(str, v41, v42);
          if (!asn1_abs_set_unused_bits(str, 0))
          {
            goto LABEL_74;
          }

          out = 0;
          v43 = algor;
          v44 = OBJ_nid2obj(408);
          X509_ALGOR_set0(v43, v44, -1, 0);
        }

        v10 = EVP_PKEY_CTX_ctrl(v6, 408, 1024);
        if (v10 >= 1)
        {
          v11 = v10;
          if (EVP_PKEY_CTX_ctrl(v6, 408, 1024))
          {
            v12 = EVP_PKEY_CTX_ctrl(v6, 408, 1024);
            if ((v12 & 0x80000000) == 0)
            {
              v13 = v12 == 1 ? 991 : v12;
              v14 = v12 ? v13 : 990;
              if (v11 == 1 && EVP_PKEY_CTX_ctrl(v6, 408, 1024) >= 1)
              {
                if (md || (md = EVP_sha1(), EVP_PKEY_CTX_ctrl(v6, 408, 1024) >= 1))
                {
                  if (CMS_RecipientInfo_kari_get0_alg(a4, &algor, &in))
                  {
                    v15 = EVP_MD_type(md);
                    if (OBJ_find_sigid_by_algs(&n, v15, v14))
                    {
                      v16 = CMS_RecipientInfo_kari_get0_ctx(a4);
                      v17 = EVP_CIPHER_CTX_cipher(v16);
                      v18 = EVP_CIPHER_type(v17);
                      v19 = EVP_CIPHER_CTX_key_length(v16);
                      v20 = X509_ALGOR_new();
                      if (v20)
                      {
                        v20->algorithm = OBJ_nid2obj(v18);
                        v21 = ASN1_TYPE_new();
                        v20->parameter = v21;
                        if (v21)
                        {
                          if (EVP_CIPHER_param_to_asn1(v16, v21) >= 1)
                          {
                            if (!ASN1_TYPE_get(v20->parameter))
                            {
                              ASN1_TYPE_free(v20->parameter);
                              v20->parameter = 0;
                            }

                            if (EVP_PKEY_CTX_ctrl(v6, 408, 1024) >= 1 && CMS_SharedInfo_encode(&out, v20, in, v19) >= 1 && EVP_PKEY_CTX_ctrl(v6, 408, 1024) >= 1)
                            {
                              out = 0;
                              v22 = i2d_X509_ALGOR(v20, &out);
                              if (v22 >= 1)
                              {
                                v23 = v22;
                                v24 = ASN1_STRING_new();
                                v6 = v24;
                                if (v24)
                                {
                                  ASN1_STRING_set0(v24, out, v23);
                                  out = 0;
                                  v25 = algor;
                                  v26 = OBJ_nid2obj(n);
                                  X509_ALGOR_set0(v25, v26, 16, v6);
                                  v6 = 1;
                                }

                                goto LABEL_76;
                              }
                            }
                          }
                        }
                      }

LABEL_75:
                      v6 = 0;
LABEL_76:
                      free(out);
                      X509_ALGOR_free(v20);
                      return v6;
                    }
                  }
                }
              }
            }
          }
        }

LABEL_74:
        v20 = 0;
        goto LABEL_75;
      }

      v32 = CMS_RecipientInfo_get0_pkey_ctx(a4);
      v6 = v32;
      if (!v32)
      {
        return v6;
      }

      if (EVP_PKEY_CTX_get0_peerkey(v32))
      {
        goto LABEL_53;
      }

      md = 0;
      out = 0;
      if (!CMS_RecipientInfo_kari_get0_orig_id(a4, &out, &md, 0, 0, 0))
      {
        return 0;
      }

      if (!out)
      {
        return 0;
      }

      v34 = md;
      if (!md)
      {
        return 0;
      }

      paobj = 0;
      algor = 0;
      LODWORD(v63) = 0;
      in = 0;
      str = 0;
      X509_ALGOR_get0(&algor, &v63, &paobj, out);
      if (OBJ_obj2nid(algor) != 408)
      {
        goto LABEL_104;
      }

      if (v63 == 5 || v63 == -1)
      {
        v35 = EVP_PKEY_CTX_get0_pkey(v6);
        if (!v35)
        {
          goto LABEL_104;
        }

        v36 = EC_KEY_get0_group(*(v35 + 32));
        v37 = EC_KEY_new();
        str = v37;
        if (!v37 || !EC_KEY_set_group(v37, v36))
        {
          goto LABEL_104;
        }
      }

      else
      {
        str = eckey_type2param(v63, paobj);
        if (!str)
        {
          goto LABEL_104;
        }
      }

      v59 = ASN1_STRING_length(v34);
      in = ASN1_STRING_get0_data(v34);
      if (in)
      {
        if (v59)
        {
          if (o2i_ECPublicKey(&str, &in, v59))
          {
            v60 = EVP_PKEY_new();
            if (v60)
            {
              v61 = v60;
              EVP_PKEY_set1_EC_KEY(v60, str);
              v62 = EVP_PKEY_derive_set_peer(v6, v61);
              EC_KEY_free(str);
              EVP_PKEY_free(v61);
              if (v62 >= 1)
              {
LABEL_53:
                paobj = 0;
                algor = 0;
                in = 0;
                if (CMS_RecipientInfo_kari_get0_alg(a4, &algor, &paobj))
                {
                  v33 = OBJ_obj2nid(algor->algorithm);
                  if (v33 && (LODWORD(out) = 0, LODWORD(md) = 0, OBJ_find_sigid_algs(v33, &md, &out)) && (out == 990 || out == 991) && EVP_PKEY_CTX_ctrl(v6, 408, 1024) >= 1 && EVP_PKEY_CTX_ctrl(v6, 408, 1024) >= 1 && (v45 = OBJ_nid2sn(md), EVP_get_digestbyname(v45)) && EVP_PKEY_CTX_ctrl(v6, 408, 1024) > 0)
                  {
                    parameter = algor->parameter;
                    if (parameter->type == 16)
                    {
                      ptr = parameter->value.ptr;
                      str = *(ptr + 1);
                      v48 = d2i_X509_ALGOR(0, &str, *ptr);
                      if (v48)
                      {
                        v49 = CMS_RecipientInfo_kari_get0_ctx(a4);
                        if (v49)
                        {
                          v50 = v49;
                          v51 = OBJ_obj2nid(v48->algorithm);
                          v52 = OBJ_nid2sn(v51);
                          cipherbyname = EVP_get_cipherbyname(v52);
                          if (cipherbyname)
                          {
                            v54 = cipherbyname;
                            if ((EVP_CIPHER_flags(cipherbyname) & 0xF0007) == 0x10002)
                            {
                              if (EVP_EncryptInit_ex(v50, v54, 0, 0, 0))
                              {
                                if (EVP_CIPHER_asn1_to_param(v50, v48->parameter) >= 1)
                                {
                                  v55 = EVP_CIPHER_CTX_key_length(v50);
                                  if (EVP_PKEY_CTX_ctrl(v6, 408, 1024) >= 1 && CMS_SharedInfo_encode(&in, v48, paobj, v55) >= 1 && EVP_PKEY_CTX_ctrl(v6, 408, 1024) >= 1)
                                  {
                                    in = 0;
                                    X509_ALGOR_free(v48);
                                    free(in);
                                    return 1;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }

                      X509_ALGOR_free(v48);
                      free(in);
                    }
                  }

                  else
                  {
                    ERR_put_error(16, 4095, 148, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_ameth.c", 789);
                  }
                }

                v56 = 150;
                v57 = 858;
                goto LABEL_94;
              }

LABEL_105:
              v56 = 149;
              v57 = 851;
LABEL_94:
              ERR_put_error(16, 4095, v56, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_ameth.c", v57);
              return 0;
            }
          }
        }
      }

LABEL_104:
      EC_KEY_free(str);
      EVP_PKEY_free(0);
      goto LABEL_105;
    }

    if (!a3)
    {
      paobj = 0;
      algor = 0;
      LODWORD(str) = 0;
      CMS_SignerInfo_get0_algs(a4, 0, 0, &algor, &paobj);
      goto LABEL_45;
    }

    return 1;
  }

  if (a2 == 1)
  {
    if (!a3)
    {
      LODWORD(str) = 0;
      paobj = 0;
      algor = 0;
      PKCS7_SIGNER_INFO_get0_algs(a4, 0, &algor, &paobj);
LABEL_45:
      if (!algor)
      {
        return 0xFFFFFFFFLL;
      }

      if (!algor->algorithm)
      {
        return 0xFFFFFFFFLL;
      }

      v27 = OBJ_obj2nid(algor->algorithm);
      if (!v27)
      {
        return 0xFFFFFFFFLL;
      }

      v28 = v27;
      v29 = EVP_PKEY_id(a1);
      if (!OBJ_find_sigid_by_algs(&str, v28, v29))
      {
        return 0xFFFFFFFFLL;
      }

      v30 = paobj;
      v31 = OBJ_nid2obj(str);
      X509_ALGOR_set0(v30, v31, -1, 0);
    }

    return 1;
  }

  if (a2 == 3)
  {
    *a4 = 64;
    return 2;
  }

  return v6;
}

uint64_t old_ec_priv_decode(EVP_PKEY *a1, const unsigned __int8 **a2, int a3)
{
  v4 = d2i_ECPrivateKey(0, a2, a3);
  if (v4)
  {
    EVP_PKEY_assign(a1, 408, v4);
    return 1;
  }

  else
  {
    ERR_put_error(16, 4095, 142, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_ameth.c", 569);
    return 0;
  }
}

uint64_t ec_pkey_check(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 40))
  {

    return EC_KEY_check_key(v2);
  }

  else
  {
    ERR_put_error(16, 4095, 125, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_ameth.c", 649);
    return 0;
  }
}

uint64_t ec_pkey_param_check(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {

    return EC_GROUP_check(v2, 0);
  }

  else
  {
    ERR_put_error(16, 4095, 124, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_ameth.c", 671);
    return 0;
  }
}

EC_KEY *eckey_type2param(int a1, const ASN1_OBJECT *a2)
{
  if (a1 != 6)
  {
    if (a1 != 16)
    {
      ERR_put_error(16, 4095, 142, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_ameth.c", 180);
      v3 = 0;
LABEL_13:
      v4 = 0;
LABEL_14:
      EC_KEY_free(v3);
      v3 = 0;
      goto LABEL_15;
    }

    in = a2->ln;
    v3 = d2i_ECParameters(0, &in, SLODWORD(a2->sn));
    if (v3)
    {
      v4 = 0;
      goto LABEL_15;
    }

    v7 = 142;
    v8 = 159;
LABEL_12:
    ERR_put_error(16, 4095, v7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_ameth.c", v8);
    goto LABEL_13;
  }

  v3 = EC_KEY_new();
  if (!v3)
  {
    v7 = 65;
    v8 = 170;
    goto LABEL_12;
  }

  v5 = OBJ_obj2nid(a2);
  v6 = EC_GROUP_new_by_curve_name(v5);
  v4 = v6;
  if (!v6)
  {
    goto LABEL_14;
  }

  EC_GROUP_set_asn1_flag(v6, 1);
  if (!EC_KEY_set_group(v3, v4))
  {
    goto LABEL_14;
  }

LABEL_15:
  EC_GROUP_free(v4);
  return v3;
}

ASN1_STRING *eckey_param2type(int *a1, void *a2, EC_KEY *a3)
{
  if (!a3 || (v6 = EC_KEY_get0_group(a3)) == 0)
  {
    v10 = 124;
    v11 = 84;
    goto LABEL_7;
  }

  v7 = v6;
  if (!EC_GROUP_get_asn1_flag(v6) || (curve_name = EC_GROUP_get_curve_name(v7)) == 0)
  {
    result = ASN1_STRING_new();
    if (!result)
    {
      return result;
    }

    v13 = result;
    v14 = i2d_ECParameters(a3, &result->data);
    v13->length = v14;
    if (v14 > 0)
    {
      *a2 = v13;
      v9 = 16;
      goto LABEL_11;
    }

    ASN1_STRING_free(v13);
    v10 = 16;
    v11 = 101;
LABEL_7:
    ERR_put_error(16, 4095, v10, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_ameth.c", v11);
    return 0;
  }

  *a2 = OBJ_nid2obj(curve_name);
  v9 = 6;
LABEL_11:
  *a1 = v9;
  return 1;
}

uint64_t do_EC_KEY_print(BIO *a1, EC_KEY *a2, int a3, int a4)
{
  v4 = a2;
  if (!a2)
  {
    v10 = 0;
    v18 = 0;
    v12 = 0;
LABEL_12:
    v19 = 67;
LABEL_44:
    ERR_put_error(16, 4095, v19, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_ameth.c", 514);
    v28 = 0;
    goto LABEL_45;
  }

  v8 = EC_KEY_get0_group(a2);
  if (!v8)
  {
    v10 = 0;
    v18 = 0;
    v12 = 0;
    v4 = 0;
    goto LABEL_12;
  }

  v9 = v8;
  v10 = BN_CTX_new();
  if (!v10)
  {
    v18 = 0;
    v12 = 0;
    v4 = 0;
LABEL_43:
    v19 = 65;
    goto LABEL_44;
  }

  v11 = "ECDSA-Parameters";
  if (a4 < 1)
  {
    v4 = 0;
    v12 = 0;
    v20 = 0;
    goto LABEL_30;
  }

  v12 = EC_KEY_get0_public_key(v4);
  if (v12)
  {
    conv_form = EC_KEY_get_conv_form(v4);
    v14 = EC_POINT_point2bn(v9, v12, conv_form, 0, v10);
    v12 = v14;
    if (!v14)
    {
      v18 = 0;
      v4 = 0;
      v19 = 16;
      goto LABEL_44;
    }

    v15 = BN_num_bits(v14);
    v16 = v15 + 7;
    if (v15 < -7)
    {
      v16 = v15 + 14;
    }

    v17 = v16 >> 3;
  }

  else
  {
    v17 = 0;
  }

  if (a4 == 2)
  {
    v21 = EC_KEY_get0_private_key(v4);
    v20 = v21;
    if (v21)
    {
      v22 = BN_num_bits(v21);
      v23 = v22 + 7;
      if (v22 < -7)
      {
        v23 = v22 + 14;
      }

      v24 = v23 >> 3;
      v25 = v23 >> 3;
      if (v17 <= v24)
      {
        v17 = v25;
      }
    }
  }

  else
  {
    v20 = 0;
  }

  v4 = malloc_type_malloc(v17 + 10, 0xA71173E3uLL);
  if (!v4)
  {
    v18 = 0;
    goto LABEL_43;
  }

  v26 = "Public-Key";
  if (a4 != 1)
  {
    v26 = "ECDSA-Parameters";
  }

  if (a4 == 2)
  {
    v11 = "Private-Key";
  }

  else
  {
    v11 = v26;
  }

LABEL_30:
  if (!BIO_indent(a1, a3, 128))
  {
    v18 = 0;
LABEL_41:
    v19 = 32;
    goto LABEL_44;
  }

  v18 = BN_new();
  if (!v18)
  {
    goto LABEL_41;
  }

  if (!EC_GROUP_get_order(v9, v18, 0))
  {
    goto LABEL_41;
  }

  v27 = BN_num_bits(v18);
  if (BIO_printf(a1, "%s: (%d bit)\n", v11, v27) < 1 || v20 && !ASN1_bn_print(a1, "priv:", v20, v4, a3))
  {
    goto LABEL_41;
  }

  if (v12 && !ASN1_bn_print(a1, "pub: ", v12, v4, a3) || !ECPKParameters_print(a1, v9, a3))
  {
    goto LABEL_41;
  }

  v28 = 1;
LABEL_45:
  BN_free(v12);
  BN_free(v18);
  BN_CTX_free(v10);
  free(v4);
  return v28;
}

unint64_t BN_mod_word(const BIGNUM *a, unint64_t w)
{
  if (!w)
  {
    return -1;
  }

  if (w >= 0x100000001)
  {
    v4 = BN_dup(a);
    if (v4)
    {
      v5 = v4;
      v6 = BN_div_word(v4, w);
      BN_free(v5);
      return v6;
    }

    return -1;
  }

  top = a->top;
  if (top < 1)
  {
    return 0;
  }

  result = 0;
  d = a->d;
  v10 = top + 1;
  v11 = &d[top - 1];
  do
  {
    v12 = *v11--;
    *(&v13 + 1) = result;
    *&v13 = v12;
    result = (v12 | (((v13 >> 32) % w) << 32)) % w;
    --v10;
  }

  while (v10 > 1);
  return result;
}

unint64_t BN_div_word(BIGNUM *a, unint64_t w)
{
  v15 = 0;
  if (!w)
  {
    return -1;
  }

  if (!a->top)
  {
    return 0;
  }

  v4 = BN_num_bits_word(w);
  v5 = v4;
  v6 = 64 - v4;
  if (!BN_lshift(a, a, 64 - v4))
  {
    return -1;
  }

  top = a->top;
  if (top >= 1)
  {
    v8 = w << -v5;
    d = a->d;
    v10 = top - 1;
    do
    {
      v14 = 0;
      bn_div_rem_words(v15, d[v10], v8, &v14, &v15);
      d = a->d;
      a->d[v10] = v14;
      v11 = v10-- + 1;
    }

    while (v11 > 1);
    v12 = a->top;
    if (v12 >= 1 && !a->d[v12 - 1])
    {
      a->top = v12 - 1;
    }
  }

  v15 >>= v6;
  BN_set_negative(a, a->neg);
  return v15;
}

int BN_add_word(BIGNUM *a, unint64_t w)
{
  if (!w)
  {
    goto LABEL_15;
  }

  v2 = w;
  if (!BN_is_zero(a))
  {
    if (a->neg)
    {
      a->neg = 0;
      v5 = BN_sub_word(a, v2);
      BN_set_negative(a, a->neg == 0);
      return v5;
    }

    v6 = 0;
    top = a->top;
    while ((top & ~(top >> 31)) != v6)
    {
      v8 = a->d[v6];
      v9 = __CFADD__(v8, v2);
      a->d[v6++] = v8 + v2;
      v2 = 1;
      if (!v9)
      {
        return v2;
      }
    }

    if ((top & 0x80000000) == 0)
    {
      if (!bn_wexpand(a, (top + 1)))
      {
        LODWORD(v2) = 0;
        return v2;
      }

      ++a->top;
      a->d[top] = v2;
    }

LABEL_15:
    LODWORD(v2) = 1;
    return v2;
  }

  return BN_set_word(a, v2);
}

int BN_sub_word(BIGNUM *a, unint64_t w)
{
  if (!w)
  {
    return 1;
  }

  v2 = w;
  if (!BN_is_zero(a))
  {
    if (a->neg)
    {
      a->neg = 0;
      v4 = BN_add_word(a, v2);
      v6 = a->neg == 0;
      v5 = a;
      goto LABEL_7;
    }

    d = a->d;
    v8 = *a->d;
    v9 = a->top - 1;
    if (a->top == 1 && v8 < v2)
    {
      *d = v2 - v8;
      v4 = 1;
      goto LABEL_4;
    }

    v10 = 0;
    v11 = v8 - v2;
    if (v8 < v2)
    {
      v2 = 1;
      do
      {
        *d = v11;
        v12 = d[1];
        ++d;
        v8 = v12;
        ++v10;
        v11 = -1;
      }

      while (!v12);
    }

    v13 = v8 - v2;
    *d = v13;
    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = v10 == v9;
    }

    if (v14)
    {
      a->top = v10;
    }

    return 1;
  }

  v4 = BN_set_word(a, v2);
  if (v4)
  {
LABEL_4:
    v5 = a;
    v6 = 1;
LABEL_7:
    BN_set_negative(v5, v6);
  }

  return v4;
}

int BN_mul_word(BIGNUM *a, unint64_t w)
{
  top = a->top;
  if (!top)
  {
    return 1;
  }

  if (w)
  {
    v4 = bn_mul_words(a->d, a->d, top, w);
    if (v4)
    {
      v5 = v4;
      result = bn_wexpand(a, (a->top + 1));
      if (!result)
      {
        return result;
      }

      d = a->d;
      v8 = a->top;
      a->top = v8 + 1;
      d[v8] = v5;
    }
  }

  else
  {
    BN_zero(a);
  }

  return 1;
}

uint64_t cms_get0_enveloped(uint64_t a1)
{
  if (OBJ_obj2nid(*a1) == 23)
  {
    return *(a1 + 8);
  }

  ERR_put_error(46, 4095, 107, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", 74);
  return 0;
}

uint64_t cms_env_asn1_ctrl(uint64_t a1)
{
  if (*a1 != 1)
  {
    if (*a1)
    {
      return 0;
    }

    result = *(*(a1 + 8) + 40);
LABEL_6:
    v2 = *(result + 16);
    if (v2)
    {
      v3 = *(v2 + 176);
      if (v3)
      {
        v4 = v3();
        if (v4 == -2)
        {
          v5 = 125;
          v6 = 120;
LABEL_13:
          ERR_put_error(46, 4095, v5, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", v6);
          return 0;
        }

        if (v4 <= 0)
        {
          v5 = 111;
          v6 = 124;
          goto LABEL_13;
        }
      }
    }

    return 1;
  }

  result = *(*(a1 + 8) + 40);
  if (result)
  {
    result = EVP_PKEY_CTX_get0_pkey(result);
    if (result)
    {
      goto LABEL_6;
    }
  }

  return result;
}

uint64_t CMS_get0_RecipientInfos(uint64_t a1)
{
  result = cms_get0_enveloped(a1);
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t CMS_RecipientInfo_get0_pkey_ctx(uint64_t a1)
{
  if (!*a1)
  {
    v1 = 48;
    return *(*(a1 + 8) + v1);
  }

  if (*a1 == 1)
  {
    v1 = 40;
    return *(*(a1 + 8) + v1);
  }

  return 0;
}

ASN1_VALUE *CMS_EnvelopedData_create(ASN1_OBJECT *a1)
{
  v2 = CMS_ContentInfo_new();
  v3 = v2;
  if (!v2)
  {
    goto LABEL_10;
  }

  if (!*(v2 + 1))
  {
    v5 = ASN1_item_new(&CMS_EnvelopedData_it);
    *(v3 + 1) = v5;
    if (v5)
    {
      *v5 = 0;
      v6 = OBJ_nid2obj(21);
      v7 = *v3;
      **(*(v3 + 1) + 24) = v6;
      ASN1_OBJECT_free(v7);
      *v3 = OBJ_nid2obj(23);
      v4 = *(v3 + 1);
      if (v4)
      {
        goto LABEL_7;
      }
    }

    else
    {
      ERR_put_error(46, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", 86);
    }

LABEL_10:
    CMS_ContentInfo_free(v3);
    ERR_put_error(46, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", 180);
    return 0;
  }

  v4 = cms_get0_enveloped(v2);
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (!cms_EncryptedContent_init(*(v4 + 24), a1, 0, 0))
  {
    goto LABEL_10;
  }

  return v3;
}

ASN1_VALUE *CMS_add1_recipient_cert(uint64_t a1, X509 *a2, unsigned int a3)
{
  v5 = cms_get0_enveloped(a1);
  if (!v5)
  {
    v7 = 0;
    goto LABEL_23;
  }

  v6 = v5;
  v7 = ASN1_item_new(&CMS_RecipientInfo_it);
  if (!v7)
  {
LABEL_21:
    v14 = 65;
    v15 = 286;
    goto LABEL_22;
  }

  v8 = X509_get0_pubkey(a2);
  if (!v8)
  {
    v14 = 113;
    v15 = 258;
LABEL_22:
    ERR_put_error(46, 4095, v14, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", v15);
    goto LABEL_23;
  }

  v9 = v8;
  ptr = v8->pkey.ptr;
  if (!ptr)
  {
    goto LABEL_9;
  }

  v11 = *(ptr + 22);
  if (!v11)
  {
    goto LABEL_9;
  }

  v18 = 0;
  if (v11(v8, 8, 0, &v18) < 1)
  {
    goto LABEL_9;
  }

  if (v18 == 1)
  {
    if (cms_RecipientInfo_kari_init(v7, a2, v9, a3))
    {
      goto LABEL_20;
    }

LABEL_23:
    ASN1_item_free(v7, &CMS_RecipientInfo_it);
    return 0;
  }

  if (v18)
  {
    v14 = 125;
    v15 = 275;
    goto LABEL_22;
  }

LABEL_9:
  v12 = ASN1_item_new(&CMS_KeyTransRecipientInfo_it);
  *(v7 + 1) = v12;
  if (!v12)
  {
    goto LABEL_23;
  }

  v13 = v12;
  *v7 = 0;
  *v12 = (a3 & 0x10000) >> 15;
  if (!cms_set1_SignerIdentifier(*(v12 + 1), a2, HIWORD(a3) & 1))
  {
    goto LABEL_23;
  }

  X509_up_ref(a2);
  EVP_PKEY_up_ref(v9);
  *(v13 + 4) = a2;
  *(v13 + 5) = v9;
  if ((a3 & 0x40000) != 0)
  {
    v16 = EVP_PKEY_CTX_new(v9, 0);
    *(v13 + 6) = v16;
    if (!v16 || EVP_PKEY_encrypt_init(v16) < 1)
    {
      goto LABEL_23;
    }
  }

  else if (!cms_env_asn1_ctrl(v7))
  {
    goto LABEL_23;
  }

LABEL_20:
  if (!sk_push(*(v6 + 16), v7))
  {
    goto LABEL_21;
  }

  return v7;
}

uint64_t cms_pkey_get_ri_type(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && (v2 = *(v1 + 176)) != 0 && (v4 = 0, v2() > 0))
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t CMS_RecipientInfo_ktri_get0_algs(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (*a1)
  {
    ERR_put_error(46, 4095, 124, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", 299);
    return 0;
  }

  else
  {
    v5 = *(a1 + 8);
    if (a2)
    {
      *a2 = v5[5];
    }

    if (a3)
    {
      *a3 = v5[4];
    }

    if (a4)
    {
      *a4 = v5[2];
    }

    return 1;
  }
}

uint64_t CMS_RecipientInfo_ktri_get0_signer_id(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (*a1)
  {
    ERR_put_error(46, 4095, 124, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", 322);
    return 0;
  }

  else
  {
    v6 = *(*(a1 + 8) + 8);

    return cms_SignerIdentifier_get0_signer_id(v6, a2, a3, a4);
  }
}

uint64_t CMS_RecipientInfo_ktri_cert_cmp(uint64_t a1, X509 *a2)
{
  if (*a1)
  {
    ERR_put_error(46, 4095, 124, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", 334);
    return 4294967294;
  }

  else
  {
    v4 = *(*(a1 + 8) + 8);

    return cms_SignerIdentifier_cert_cmp(v4, a2);
  }
}

uint64_t CMS_RecipientInfo_set0_pkey(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    ERR_put_error(46, 4095, 124, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", 345);
    return 0;
  }

  else
  {
    EVP_PKEY_free(*(*(a1 + 8) + 40));
    *(*(a1 + 8) + 40) = a2;
    return 1;
  }
}

uint64_t CMS_RecipientInfo_kekri_id_cmp(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (*a1 == 2)
  {
    v3 = *(a1 + 8);
    a.data = a2;
    a.flags = 0;
    a.length = a3;
    a.type = 4;
    return ASN1_OCTET_STRING_cmp(&a, **(v3 + 8));
  }

  else
  {
    ERR_put_error(46, 4095, 123, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", 514);
    return 4294967294;
  }
}

ASN1_VALUE *CMS_add0_recipient_key(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = cms_get0_enveloped(a1);
  if (!v16)
  {
    goto LABEL_27;
  }

  v17 = v16;
  if (a2 > 788)
  {
    if (a2 == 789)
    {
      v18 = 24;
      goto LABEL_15;
    }

    if (a2 == 790)
    {
      v18 = 32;
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if (a2)
  {
    if (a2 == 788)
    {
      v18 = 16;
LABEL_15:
      if (v18 == a4)
      {
        goto LABEL_16;
      }

      v19 = 118;
      v20 = 588;
      goto LABEL_26;
    }

LABEL_9:
    v19 = 153;
    v20 = 583;
LABEL_26:
    ERR_put_error(46, 4095, v19, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", v20);
LABEL_27:
    v21 = 0;
    goto LABEL_28;
  }

  switch(a4)
  {
    case 16:
      a2 = 788;
      break;
    case 32:
      a2 = 790;
      break;
    case 24:
      a2 = 789;
      break;
    default:
      v19 = 118;
      v20 = 574;
      goto LABEL_26;
  }

LABEL_16:
  v21 = ASN1_item_new(&CMS_RecipientInfo_it);
  if (!v21 || (v22 = ASN1_item_new(&CMS_KEKRecipientInfo_it), (*(v21 + 1) = v22) == 0) || (v23 = v22, *v21 = 2, a8) && (v24 = ASN1_item_new(&CMS_OtherKeyAttribute_it), (*(*(v23 + 1) + 16) = v24) == 0) || !sk_push(*(v17 + 16), v21))
  {
    ERR_put_error(46, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", 637);
LABEL_28:
    ASN1_item_free(v21, &CMS_RecipientInfo_it);
    return 0;
  }

  *v23 = 4;
  *(v23 + 4) = a3;
  *(v23 + 5) = a4;
  ASN1_STRING_set0(**(v23 + 1), a5, a6);
  v25 = *(v23 + 1);
  *(v25 + 8) = a7;
  v26 = *(v25 + 16);
  if (v26)
  {
    *v26 = a8;
    v26[1] = a9;
  }

  v27 = *(v23 + 2);
  v28 = OBJ_nid2obj(a2);
  X509_ALGOR_set0(v27, v28, -1, 0);
  return v21;
}

uint64_t CMS_RecipientInfo_kekri_get0_id(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  if (*a1 == 2)
  {
    v6 = *(a1 + 8);
    v7 = *(v6 + 8);
    if (a2)
    {
      *a2 = *(v6 + 16);
    }

    if (a3)
    {
      *a3 = *v7;
    }

    if (a4)
    {
      *a4 = v7[1];
    }

    if (a5)
    {
      v8 = v7[2];
      if (v8)
      {
        v8 = *v8;
      }

      *a5 = v8;
    }

    if (a6)
    {
      v9 = v7[2];
      if (v9)
      {
        *a6 = *(v9 + 8);
      }

      else
      {
        *a6 = 0;
      }
    }

    return 1;
  }

  else
  {
    ERR_put_error(46, 4095, 123, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", 651);
    return 0;
  }
}

uint64_t CMS_RecipientInfo_set0_key(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == 2)
  {
    v3 = *(a1 + 8);
    *(v3 + 32) = a2;
    *(v3 + 40) = a3;
    return 1;
  }

  else
  {
    ERR_put_error(46, 4095, 123, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", 684);
    return 0;
  }
}

EVP_CIPHER_CTX *CMS_RecipientInfo_decrypt(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2 != 3)
  {
    if (v3 != 2)
    {
      if (v3)
      {
        v21 = 155;
        v22 = 824;
      }

      else
      {
        v4 = *(a2 + 8);
        v5 = *(v4 + 40);
        if (v5)
        {
          v6 = *(*(a1 + 8) + 24);
          *size.rd_key = 0;
          if (!*(v6 + 52) || *(v6 + 48))
          {
            v7 = 0;
            goto LABEL_8;
          }

          v25 = OBJ_obj2nid(**(v6 + 8));
          v26 = OBJ_nid2sn(v25);
          cipherbyname = EVP_get_cipherbyname(v26);
          if (cipherbyname)
          {
            v7 = EVP_CIPHER_key_length(cipherbyname);
LABEL_8:
            v8 = EVP_PKEY_CTX_new(v5, 0);
            *(v4 + 48) = v8;
            if (v8)
            {
              if (EVP_PKEY_decrypt_init(v8) >= 1 && cms_env_asn1_ctrl(a2))
              {
                if (EVP_PKEY_CTX_ctrl(*(v4 + 48), -1, 512) <= 0)
                {
                  v12 = 110;
                  v13 = 465;
                }

                else
                {
                  v9 = *(v4 + 24);
                  v10 = *v9;
                  v11 = EVP_PKEY_decrypt(*(v4 + 48), 0, &size, v9[1]) < 1 || *size.rd_key == 0;
                  if (!v11 && (!v7 || *size.rd_key == v7))
                  {
                    v30 = malloc_type_malloc(*size.rd_key, 0x1808DBF0uLL);
                    if (v30)
                    {
                      v33 = *(v4 + 24);
                      v34 = *v33;
                      if (EVP_PKEY_decrypt(*(v4 + 48), v30, &size, v33[1]) > 0)
                      {
                        freezero(*(v6 + 32), *(v6 + 40));
                        v35 = *size.rd_key;
                        *(v6 + 32) = v30;
                        *(v6 + 40) = v35;
                        EVP_PKEY_CTX_free(*(v4 + 48));
                        *(v4 + 48) = 0;
                        return 1;
                      }

                      v36 = 104;
                      v37 = 485;
                    }

                    else
                    {
                      v36 = 65;
                      v37 = 479;
                    }

                    ERR_put_error(46, 4095, v36, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", v37);
                    goto LABEL_50;
                  }

                  v12 = 104;
                  v13 = 472;
                }

                ERR_put_error(46, 4095, v12, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", v13);
              }

              v30 = 0;
LABEL_50:
              EVP_PKEY_CTX_free(*(v4 + 48));
              *(v4 + 48) = 0;
              free(v30);
            }

            return 0;
          }

          v21 = 148;
          v22 = 446;
        }

        else
        {
          v21 = 133;
          v22 = 436;
        }
      }

LABEL_33:
      ERR_put_error(46, 4095, v21, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", v22);
      return 0;
    }

    memset(&size, 0, sizeof(size));
    v14 = *(a2 + 8);
    if (!*(v14 + 32))
    {
      v21 = 130;
      v22 = 759;
      goto LABEL_33;
    }

    v15 = *(*(a1 + 8) + 24);
    v16 = OBJ_obj2nid(**(v14 + 16));
    if ((v16 - 788) >= 3)
    {
      v17 = 0;
    }

    else
    {
      v17 = 8 * (v16 - 788) + 16;
    }

    if (v17 != *(v14 + 40))
    {
      v21 = 118;
      v22 = 765;
      goto LABEL_33;
    }

    if (**(v14 + 24) > 15)
    {
      if (!AES_set_decrypt_key(*(v14 + 32), 8 * v17, &size))
      {
        v24 = malloc_type_malloc(**(v14 + 24) - 8, 0x32D5F5E5uLL);
        if (v24)
        {
          v28 = AES_unwrap_key(&size, 0, v24, *(*(v14 + 24) + 8), **(v14 + 24));
          if (v28 > 0)
          {
            v29 = v28;
            freezero(*(v15 + 32), *(v15 + 40));
            *(v15 + 32) = v24;
            *(v15 + 40) = v29;
LABEL_40:
            explicit_bzero(&size, 0xF4uLL);
          }

          v31 = 157;
          v32 = 791;
        }

        else
        {
          v31 = 65;
          v32 = 783;
        }

        ERR_put_error(46, 4095, v31, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", v32);
LABEL_39:
        free(v24);
        goto LABEL_40;
      }

      v18 = 115;
      v19 = 777;
    }

    else
    {
      v18 = 117;
      v19 = 772;
    }

    ERR_put_error(46, 4095, v18, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", v19);
    v24 = 0;
    goto LABEL_39;
  }

  return cms_RecipientInfo_pwri_crypt(a1, a2, 0);
}

EVP_CIPHER_CTX *CMS_RecipientInfo_encrypt(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2 <= 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {

        return cms_RecipientInfo_kari_encrypt(a1, a2);
      }

      goto LABEL_12;
    }

    *size.rd_key = 0;
    v6 = *(a2 + 8);
    v7 = *(*(a1 + 8) + 24);
    v8 = *(v6 + 48);
    if (v8)
    {
      if (!cms_env_asn1_ctrl(a2))
      {
        goto LABEL_33;
      }
    }

    else
    {
      v12 = EVP_PKEY_CTX_new(*(v6 + 40), 0);
      if (!v12)
      {
        return 0;
      }

      v8 = v12;
      if (EVP_PKEY_encrypt_init(v12) < 1)
      {
        goto LABEL_33;
      }
    }

    if (EVP_PKEY_CTX_ctrl(v8, -1, 256) <= 0)
    {
      ERR_put_error(46, 4095, 110, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", 390);
    }

    else
    {
      v13 = *(v7 + 40);
      if (EVP_PKEY_encrypt(v8, 0, &size, *(v7 + 32)) >= 1)
      {
        v14 = malloc_type_malloc(*size.rd_key, 0x294B5E0uLL);
        if (v14)
        {
          v15 = *(v7 + 40);
          if (EVP_PKEY_encrypt(v8, v14, &size, *(v7 + 32)) >= 1)
          {
            ASN1_STRING_set0(*(v6 + 24), v14, size.rd_key[0]);
            v14 = 0;
            v16 = 1;
LABEL_35:
            EVP_PKEY_CTX_free(v8);
            *(v6 + 48) = 0;
            free(v14);
            return v16;
          }
        }

        else
        {
          ERR_put_error(46, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", 400);
        }

LABEL_34:
        v16 = 0;
        goto LABEL_35;
      }
    }

LABEL_33:
    v14 = 0;
    goto LABEL_34;
  }

  if (v2 == 2)
  {
    memset(&size, 0, sizeof(size));
    v9 = *(a2 + 8);
    if (!*(v9 + 32))
    {
      v4 = 130;
      v5 = 710;
      goto LABEL_27;
    }

    v10 = *(*(a1 + 8) + 24);
    if (AES_set_encrypt_key(*(v9 + 32), 8 * *(v9 + 40), &size))
    {
      ERR_put_error(46, 4095, 115, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", 715);
      v11 = 0;
    }

    else
    {
      v11 = malloc_type_malloc(*(v10 + 40) + 8, 0x7E8D8CDuLL);
      if (v11)
      {
        v17 = AES_wrap_key(&size, 0, v11, *(v10 + 32), *(v10 + 40));
        if (v17 > 0)
        {
          ASN1_STRING_set0(*(v9 + 24), v11, v17);
          goto LABEL_41;
        }

        v18 = 159;
        v19 = 727;
      }

      else
      {
        v18 = 65;
        v19 = 721;
      }

      ERR_put_error(46, 4095, v18, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", v19);
    }

    free(v11);
LABEL_41:
    explicit_bzero(&size, 0xF4uLL);
  }

  if (v2 != 3)
  {
LABEL_12:
    v4 = 154;
    v5 = 846;
LABEL_27:
    ERR_put_error(46, 4095, v4, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", v5);
    return 0;
  }

  return cms_RecipientInfo_pwri_crypt(a1, a2, 1);
}