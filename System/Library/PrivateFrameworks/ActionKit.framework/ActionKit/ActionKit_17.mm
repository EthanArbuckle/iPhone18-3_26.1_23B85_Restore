int EVP_DecryptUpdate(EVP_CIPHER_CTX *ctx, unsigned __int8 *out, int *outl, const unsigned __int8 *in, int inl)
{
  *outl = 0;
  if (inl < 0)
  {
    return 0;
  }

  if (!inl && (EVP_CIPHER_flags(ctx->cipher) & 0xF0007) != 7)
  {
    return 1;
  }

  cipher = ctx->cipher;
  if ((ctx->cipher->flags & 0x100000) != 0)
  {
    v14 = (cipher->do_cipher)(ctx, out, in, inl);
    if (v14 < 0)
    {
      result = 0;
      *outl = 0;
      return result;
    }

    *outl = v14;
    return 1;
  }

  if ((ctx->flags & 0x100) != 0)
  {

    return EVP_EncryptUpdate(ctx, out, outl, in, inl);
  }

  else
  {
    block_size = cipher->block_size;
    if (block_size >= 0x21)
    {
      v12 = 136;
      v13 = 465;
LABEL_18:
      ERR_put_error(6, 4095, v12, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/evp_enc.c", v13);
      return 0;
    }

    final_used = ctx->final_used;
    if (final_used)
    {
      if ((-block_size & inl) > (block_size ^ 0x7FFFFFFF))
      {
        v12 = 164;
        v13 = 477;
        goto LABEL_18;
      }

      memcpy(out, ctx->final, block_size);
      out += block_size;
    }

    result = EVP_EncryptUpdate(ctx, out, outl, in, inl);
    if (result)
    {
      if (block_size >= 2 && !ctx->buf_len)
      {
        *outl -= block_size;
        ctx->final_used = 1;
        memcpy(ctx->final, &out[*outl], block_size);
        if (!final_used)
        {
          return 1;
        }

        goto LABEL_26;
      }

      ctx->final_used = 0;
      if (final_used)
      {
LABEL_26:
        *outl += block_size;
      }

      return 1;
    }
  }

  return result;
}

int EVP_CipherFinal_ex(EVP_CIPHER_CTX *ctx, unsigned __int8 *outm, int *outl)
{
  if (ctx->encrypt)
  {
    return EVP_EncryptFinal_ex(ctx, outm, outl);
  }

  else
  {
    return EVP_DecryptFinal_ex(ctx, outm, outl);
  }
}

int EVP_EncryptFinal_ex(EVP_CIPHER_CTX *ctx, unsigned __int8 *out, int *outl)
{
  cipher = ctx->cipher;
  if ((ctx->cipher->flags & 0x100000) != 0)
  {
    v10 = (cipher->do_cipher)(ctx, out, 0, 0);
    if (v10 < 0)
    {
      return 0;
    }

    *outl = v10;
    return 1;
  }

  block_size = cipher->block_size;
  if (block_size >= 0x21)
  {
    v8 = 136;
    v9 = 406;
LABEL_4:
    ERR_put_error(6, 4095, v8, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/evp_enc.c", v9);
    return 0;
  }

  if (block_size == 1)
  {
LABEL_9:
    *outl = 0;
    return 1;
  }

  buf_len = ctx->buf_len;
  if ((ctx->flags & 0x100) != 0)
  {
    if (buf_len)
    {
      v8 = 138;
      v9 = 416;
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (block_size > buf_len)
  {
    memset(&ctx->buf[buf_len], block_size - buf_len, (block_size + ~buf_len) + 1);
  }

  result = (cipher->do_cipher)(ctx, out, ctx->buf, block_size);
  if (result)
  {
    *outl = block_size;
  }

  return result;
}

int EVP_DecryptFinal_ex(EVP_CIPHER_CTX *ctx, unsigned __int8 *outm, int *outl)
{
  *outl = 0;
  cipher = ctx->cipher;
  if ((ctx->cipher->flags & 0x100000) != 0)
  {
    v8 = (cipher->do_cipher)();
    if (v8 < 0)
    {
      return 0;
    }

    *outl = v8;
  }

  else
  {
    if ((ctx->flags & 0x100) == 0)
    {
      block_size = cipher->block_size;
      if (block_size < 2)
      {
        LODWORD(v10) = 0;
LABEL_13:
        *outl = v10;
        return 1;
      }

      if (!ctx->buf_len && ctx->final_used)
      {
        if (block_size >= 0x21)
        {
          v6 = 136;
          v7 = 548;
          goto LABEL_10;
        }

        final = ctx->final;
        v12 = block_size - 1;
        v13 = ctx->final[block_size - 1];
        if (ctx->final[block_size - 1])
        {
          v14 = block_size >= v13;
        }

        else
        {
          v14 = 0;
        }

        if (!v14)
        {
          v6 = 100;
          v7 = 553;
          goto LABEL_10;
        }

        v15 = ctx->final[v12];
        do
        {
          if (final[v12] != v13)
          {
            v6 = 100;
            v7 = 558;
            goto LABEL_10;
          }

          --v12;
          --v15;
        }

        while (v15);
        v10 = block_size - v13;
        if (v10 >= 1)
        {
          v16 = v10;
          do
          {
            v17 = *final++;
            *outm++ = v17;
            --v16;
          }

          while (v16);
        }

        goto LABEL_13;
      }

      v6 = 109;
      v7 = 544;
LABEL_10:
      ERR_put_error(6, 4095, v6, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/evp_enc.c", v7);
      return 0;
    }

    if (ctx->buf_len)
    {
      v6 = 138;
      v7 = 536;
      goto LABEL_10;
    }
  }

  return 1;
}

int EVP_CipherFinal(EVP_CIPHER_CTX *ctx, unsigned __int8 *outm, int *outl)
{
  if (ctx->encrypt)
  {
    return EVP_EncryptFinal_ex(ctx, outm, outl);
  }

  else
  {
    return EVP_DecryptFinal_ex(ctx, outm, outl);
  }
}

int EVP_EncryptInit(EVP_CIPHER_CTX *ctx, const EVP_CIPHER *cipher, const unsigned __int8 *key, const unsigned __int8 *iv)
{
  if (cipher)
  {
    *&ctx->final[24] = 0;
    *&ctx->final_used = 0u;
    *&ctx->final[8] = 0u;
    *&ctx->app_data = 0u;
    *&ctx->flags = 0u;
    *&ctx->buf[8] = 0u;
    *&ctx->buf[24] = 0u;
    *&ctx->oiv[8] = 0u;
    *&ctx->iv[8] = 0u;
    *&ctx->cipher = 0u;
    *&ctx->encrypt = 0u;
  }

  return EVP_CipherInit_ex(ctx, cipher, 0, key, iv, 1);
}

int EVP_DecryptInit(EVP_CIPHER_CTX *ctx, const EVP_CIPHER *cipher, const unsigned __int8 *key, const unsigned __int8 *iv)
{
  if (cipher)
  {
    *&ctx->final[24] = 0;
    *&ctx->final_used = 0u;
    *&ctx->final[8] = 0u;
    *&ctx->app_data = 0u;
    *&ctx->flags = 0u;
    *&ctx->buf[8] = 0u;
    *&ctx->buf[24] = 0u;
    *&ctx->oiv[8] = 0u;
    *&ctx->iv[8] = 0u;
    *&ctx->cipher = 0u;
    *&ctx->encrypt = 0u;
  }

  return EVP_CipherInit_ex(ctx, cipher, 0, key, iv, 0);
}

void EVP_CIPHER_CTX_free(EVP_CIPHER_CTX *a)
{
  if (a)
  {
    EVP_CIPHER_CTX_cleanup(a);

    free(a);
  }
}

int EVP_CIPHER_CTX_set_key_length(EVP_CIPHER_CTX *x, int keylen)
{
  flags = x->cipher->flags;
  if ((flags & 0x80) != 0)
  {

    return EVP_CIPHER_CTX_ctrl(x, 1, keylen, 0);
  }

  else
  {
    if (x->key_len == keylen)
    {
      return 1;
    }

    if (keylen >= 1 && (flags & 8) != 0)
    {
      x->key_len = keylen;
      return 1;
    }

    ERR_put_error(6, 4095, 130, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/evp_enc.c", 635);
    return 0;
  }
}

int EVP_CIPHER_CTX_rand_key(EVP_CIPHER_CTX *ctx, unsigned __int8 *key)
{
  if ((ctx->cipher->flags & 0x200) != 0)
  {

    return EVP_CIPHER_CTX_ctrl(ctx, 6, 0, key);
  }

  else
  {
    arc4random_buf(key, ctx->key_len);
    return 1;
  }
}

uint64_t EVP_CIPHER_CTX_copy(EVP_CIPHER_CTX *a, uint64_t *a2)
{
  if (!a2 || !*a2)
  {
    v17 = 111;
    v18 = 685;
    goto LABEL_13;
  }

  v4 = a2[1];
  if (v4 && !ENGINE_init(v4))
  {
    v17 = 38;
    v18 = 691;
    goto LABEL_13;
  }

  EVP_CIPHER_CTX_cleanup(a);
  v6 = *(a2 + 1);
  v5 = *(a2 + 2);
  *&a->cipher = *a2;
  *&a->encrypt = v6;
  *&a->oiv[8] = v5;
  v7 = *(a2 + 6);
  v9 = *(a2 + 3);
  v8 = *(a2 + 4);
  *&a->buf[24] = *(a2 + 5);
  *&a->app_data = v7;
  *&a->iv[8] = v9;
  *&a->buf[8] = v8;
  v11 = *(a2 + 8);
  v10 = *(a2 + 9);
  v12 = *(a2 + 7);
  *&a->final[24] = a2[20];
  *&a->final_used = v11;
  *&a->final[8] = v10;
  *&a->flags = v12;
  v13 = *a2;
  if (a2[15])
  {
    v14 = *(v13 + 48);
    if (v14)
    {
      v15 = malloc_type_calloc(1uLL, v14, 0x5F9BD6CBuLL);
      a->cipher_data = v15;
      if (v15)
      {
        memcpy(v15, a2[15], *(*a2 + 48));
        v13 = *a2;
        goto LABEL_9;
      }

      v17 = 65;
      v18 = 702;
LABEL_13:
      ERR_put_error(6, 4095, v17, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/evp_enc.c", v18);
      return 0;
    }
  }

LABEL_9:
  if ((*(v13 + 17) & 4) == 0 || (*(v13 + 72))(a2, 8, 0, a))
  {
    return 1;
  }

  freezero(a->cipher_data, *(*a2 + 48));
  result = 0;
  a->cipher_data = 0;
  return result;
}

uint64_t x25519_ge_tobytes(uint64_t a1, int *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  fe_invert(v10, a2 + 20);
  fe_mul(v8, a2, v10);
  fe_mul(v6, a2 + 10, v10);
  fe_tobytes(a1, v6);
  result = fe_tobytes(v12, v8);
  *(a1 + 31) ^= v12[0] << 7;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

_DWORD *fe_invert(_DWORD *a1, int *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  fe_sq(v20, a2);
  fe_sq(v18, v20);
  fe_sq(v18, v18);
  fe_mul(v18, a2, v18);
  fe_mul(v20, v20, v18);
  fe_sq(v16, v20);
  fe_mul(v18, v18, v16);
  fe_sq(v16, v18);
  v4 = 4;
  do
  {
    fe_sq(v16, v16);
    --v4;
  }

  while (v4);
  fe_mul(v18, v16, v18);
  fe_sq(v16, v18);
  v5 = 9;
  do
  {
    fe_sq(v16, v16);
    --v5;
  }

  while (v5);
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  fe_mul(v16, v16, v18);
  fe_sq(v14, v16);
  v6 = 19;
  do
  {
    fe_sq(v14, v14);
    --v6;
  }

  while (v6);
  fe_mul(v16, v14, v16);
  fe_sq(v16, v16);
  v7 = 9;
  do
  {
    fe_sq(v16, v16);
    --v7;
  }

  while (v7);
  fe_mul(v18, v16, v18);
  fe_sq(v16, v18);
  v8 = 49;
  do
  {
    fe_sq(v16, v16);
    --v8;
  }

  while (v8);
  fe_mul(v16, v16, v18);
  fe_sq(v14, v16);
  v9 = 99;
  do
  {
    fe_sq(v14, v14);
    --v9;
  }

  while (v9);
  fe_mul(v16, v14, v16);
  fe_sq(v16, v16);
  v10 = 49;
  do
  {
    fe_sq(v16, v16);
    --v10;
  }

  while (v10);
  fe_mul(v18, v16, v18);
  fe_sq(v18, v18);
  v11 = 4;
  do
  {
    fe_sq(v18, v18);
    --v11;
  }

  while (v11);
  result = fe_mul(a1, v18, v20);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

_DWORD *fe_mul(_DWORD *a1, int *a2, int *a3)
{
  v3 = a2[8];
  v4 = a2[9];
  v6 = *a3;
  v5 = a3[1];
  v8 = a3[2];
  v7 = a3[3];
  v9 = 19 * v8;
  v10 = 19 * v7;
  v11 = a3[4];
  v78 = a3[5];
  v12 = 19 * v11;
  v13 = *a2;
  v80 = a2[1];
  v14 = 19 * v78;
  v15 = a2[2];
  v16 = a2[4];
  v17 = a2[5];
  v18 = a2[6];
  v19 = a2[7];
  v76 = a2[3];
  v20 = 19 * v5 * 2 * v4 + *a3 * *a2 + v9 * v3 + v10 * 2 * v19 + v12 * v18 + v14 * 2 * v17;
  v21 = v5 * 2 * v76 + *a3 * v16 + v8 * v15 + v7 * 2 * v80 + v11 * *a2 + v14 * 2 * v4;
  v22 = *a3 * v80 + v5 * *a2 + v9 * v4 + v10 * v3 + v12 * v19 + v14 * v18;
  v23 = v5 * 2 * v80 + *a3 * v15 + v8 * *a2 + v10 * 2 * v4 + v12 * v3 + v14 * 2 * v19;
  v24 = *a3 * v76 + v5 * v15 + v8 * v80 + v7 * *a2 + v12 * v4 + v14 * v3;
  LODWORD(v10) = a3[6];
  v25 = a3[7];
  v26 = 19 * v10;
  v27 = v20 + v26 * v16;
  v28 = v21 + v26 * v3;
  v29 = v22 + v26 * v17;
  v30 = *a3 * v17 + v5 * v16 + v8 * v76 + v7 * v15 + v11 * v80 + v78 * *a2 + v26 * v4;
  v31 = v23 + v26 * v18;
  v32 = v24 + v26 * v19;
  v33 = 19 * v25;
  v75 = v27 + v33 * 2 * v76;
  v72 = v28 + v33 * 2 * v19;
  v74 = v29 + v33 * v16;
  v34 = v30 + v33 * v3;
  v35 = v31 + v33 * 2 * v17;
  v36 = v5 * 2 * v17 + *a3 * v18 + v8 * v16 + v7 * 2 * v76 + v11 * v15 + v78 * 2 * v80 + v10 * *a2 + v33 * 2 * v4;
  v73 = v32 + v33 * v18;
  LODWORD(v33) = a3[8];
  v37 = a3[9];
  v38 = 19 * v33;
  v39 = 19 * v37;
  v77 = v36 + v38 * v3 + v39 * 2 * v19;
  v40 = v5 * 2 * v19 + v6 * v3;
  v41 = v6 * v19 + v5 * v18;
  v42 = v6 * v4 + v5 * v3 + v8 * v19;
  v43 = v41 + v8 * v17;
  v44 = v40 + v8 * v18;
  v45 = v72 + v38 * v18 + v39 * 2 * v17;
  v46 = v44 + v7 * 2 * v17;
  v47 = v34 + v38 * v19 + v39 * v18;
  v48 = v42 + v7 * v18;
  v49 = v43 + v7 * v16 + v11 * v76 + v78 * v15 + v10 * v80 + v25 * *a2 + v38 * v4;
  v50 = v75 + v38 * v15;
  v51 = v74 + v38 * v76;
  v52 = v35 + v38 * v16;
  v53 = v48 + v11 * v17 + v78 * v16;
  v54 = v73 + v38 * v17 + v39 * v16;
  v55 = v49 + v39 * v3;
  v56 = v53 + v10 * v76;
  v57 = v46 + v11 * v16 + v78 * 2 * v76 + v10 * v15;
  v58 = v50 + v39 * 2 * v80;
  v59 = v57 + v25 * 2 * v80 + v33 * *a2 + v39 * 2 * v4;
  v60 = v51 + v39 * v15 + ((v58 + 0x2000000) >> 26);
  v61 = v47 + ((v45 + 0x2000000) >> 26);
  v62 = v45 - ((v45 + 0x2000000) & 0xFFFFFFFFFC000000);
  v63 = v52 + v39 * 2 * v76 + ((v60 + 0x1000000) >> 25);
  v64 = v77 + ((v61 + 0x1000000) >> 25);
  v65 = v54 + ((v63 + 0x2000000) >> 26);
  v66 = v55 + ((v64 + 0x2000000) >> 26);
  v67 = v59 + ((v66 + 0x1000000) >> 25);
  v68 = v56 + v25 * v15 + v33 * v80 + v37 * v13 + ((v67 + 0x2000000) >> 26);
  v69 = v58 - ((v58 + 0x2000000) & 0xFFFFFFFFFC000000) + 19 * ((v68 + 0x1000000) >> 25);
  result = a1;
  *a1 = v69 - ((v69 + 0x2000000) & 0xFC000000);
  a1[1] = v60 - ((v60 + 0x1000000) & 0xFE000000) + ((v69 + 0x2000000) >> 26);
  v71 = v62 + ((v65 + 0x1000000) >> 25);
  a1[2] = v63 - ((v63 + 0x2000000) & 0xFC000000);
  a1[3] = v65 - ((v65 + 0x1000000) & 0xFE000000);
  a1[4] = v71 - ((v71 + 0x2000000) & 0xFC000000);
  a1[5] = v61 - ((v61 + 0x1000000) & 0xFE000000) + ((v71 + 0x2000000) >> 26);
  a1[6] = v64 - ((v64 + 0x2000000) & 0xFC000000);
  a1[7] = v66 - ((v66 + 0x1000000) & 0xFE000000);
  a1[8] = v67 - ((v67 + 0x2000000) & 0xFC000000);
  a1[9] = v68 - ((v68 + 0x1000000) & 0xFE000000);
  return result;
}

uint64_t fe_tobytes(uint64_t result, _DWORD *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v9 = a2[8];
  v10 = a2[9];
  v11 = *a2 + 19 * ((v10 + ((v9 + ((v8 + ((v7 + ((v6 + ((v5 + ((v4 + ((v3 + ((v2 + ((*a2 + ((19 * v10 + 0x1000000) >> 25)) >> 26)) >> 25)) >> 26)) >> 25)) >> 26)) >> 25)) >> 26)) >> 25)) >> 26)) >> 25);
  v12 = v2 + (v11 >> 26);
  v13 = v3 + (v12 >> 25);
  v14 = v4 + (v13 >> 26);
  v15 = v5 + (v14 >> 25);
  v16 = v6 + (v15 >> 26);
  v17 = v7 + (v16 >> 25);
  v18 = v8 + (v17 >> 26);
  v19 = v9 + (v18 >> 25);
  v20 = v10 + (v19 >> 26);
  *result = v11;
  *(result + 2) = BYTE2(v11);
  *(result + 3) = HIBYTE(v11) & 3 | (4 * v12);
  *(result + 4) = v12 >> 6;
  *(result + 5) = v12 >> 14;
  *(result + 6) = (v12 >> 22) & 7 | (8 * v13);
  *(result + 7) = v13 >> 5;
  *(result + 8) = v13 >> 13;
  *(result + 9) = (v13 >> 21) & 0x1F | (32 * v14);
  *(result + 10) = v14 >> 3;
  *(result + 11) = v14 >> 11;
  *(result + 12) = (v14 >> 19) & 0x3F | (v15 << 6);
  *(result + 13) = v15 >> 2;
  *(result + 14) = v15 >> 10;
  *(result + 15) = v15 >> 18;
  *(result + 16) = v16;
  *(result + 18) = BYTE2(v16);
  *(result + 19) = HIBYTE(v16) & 1 | (2 * v17);
  *(result + 20) = v17 >> 7;
  *(result + 21) = v17 >> 15;
  *(result + 22) = (v17 >> 23) & 7 | (8 * v18);
  *(result + 23) = v18 >> 5;
  *(result + 24) = v18 >> 13;
  *(result + 25) = (v18 >> 21) & 0xF | (16 * v19);
  *(result + 26) = v19 >> 4;
  *(result + 27) = v19 >> 12;
  *(result + 28) = (v19 >> 20) & 0x3F | (v20 << 6);
  *(result + 29) = v20 >> 2;
  *(result + 30) = v20 >> 10;
  *(result + 31) = (v20 >> 18) & 0x7F;
  return result;
}

uint64_t x25519_ge_frombytes_vartime(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  fe_frombytes((a1 + 40), a2);
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 80) = 1;
  fe_sq(v26, (a1 + 40));
  fe_mul(v24, v26, d);
  for (i = 0; i != 40; i += 4)
  {
    *(v26 + i) -= *(a1 + i + 80);
  }

  for (j = 0; j != 40; j += 4)
  {
    *(v24 + j) += *(a1 + j + 80);
  }

  v23 = 0;
  memset(v22, 0, sizeof(v22));
  fe_sq(v22, v24);
  fe_mul(v22, v22, v24);
  fe_sq(a1, v22);
  fe_mul(a1, a1, v24);
  fe_mul(a1, a1, v26);
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  fe_sq(v32, a1);
  fe_sq(v30, v32);
  fe_sq(v30, v30);
  fe_mul(v30, a1, v30);
  fe_mul(v32, v32, v30);
  fe_sq(v32, v32);
  fe_mul(v32, v30, v32);
  fe_sq(v30, v32);
  v6 = 4;
  do
  {
    fe_sq(v30, v30);
    --v6;
  }

  while (v6);
  fe_mul(v32, v30, v32);
  fe_sq(v30, v32);
  v7 = 9;
  do
  {
    fe_sq(v30, v30);
    --v7;
  }

  while (v7);
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  fe_mul(v30, v30, v32);
  fe_sq(v28, v30);
  v8 = 19;
  do
  {
    fe_sq(v28, v28);
    --v8;
  }

  while (v8);
  fe_mul(v30, v28, v30);
  fe_sq(v30, v30);
  v9 = 9;
  do
  {
    fe_sq(v30, v30);
    --v9;
  }

  while (v9);
  fe_mul(v32, v30, v32);
  fe_sq(v30, v32);
  v10 = 49;
  do
  {
    fe_sq(v30, v30);
    --v10;
  }

  while (v10);
  fe_mul(v30, v30, v32);
  fe_sq(v28, v30);
  v11 = 99;
  do
  {
    fe_sq(v28, v28);
    --v11;
  }

  while (v11);
  fe_mul(v30, v28, v30);
  fe_sq(v30, v30);
  v12 = 49;
  do
  {
    fe_sq(v30, v30);
    --v12;
  }

  while (v12);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  fe_mul(v32, v30, v32);
  fe_sq(v32, v32);
  fe_sq(v32, v32);
  fe_mul(a1, v32, a1);
  fe_mul(a1, a1, v22);
  fe_mul(a1, a1, v26);
  fe_sq(v20, a1);
  fe_mul(v20, v20, v24);
  for (k = 0; k != 40; k += 4)
  {
    *(v18 + k) = *(v20 + k) - *(v26 + k);
  }

  fe_tobytes(v32, v18);
  if (timingsafe_memcmp(v32, fe_isnonzero_zero, 32))
  {
    for (m = 0; m != 40; m += 4)
    {
      *(v18 + m) = *(v26 + m) + *(v20 + m);
    }

    fe_tobytes(v32, v18);
    if (timingsafe_memcmp(v32, fe_isnonzero_zero, 32))
    {
      result = 0xFFFFFFFFLL;
      goto LABEL_31;
    }

    fe_mul(a1, a1, sqrtm1);
  }

  fe_tobytes(v32, a1);
  if ((v32[0] & 1) != *(a2 + 31) >> 7)
  {
    for (n = 0; n != 40; n += 4)
    {
      *(a1 + n) = -*(a1 + n);
    }
  }

  fe_mul((a1 + 120), a1, (a1 + 40));
  result = 0;
LABEL_31:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

_DWORD *fe_frombytes(_DWORD *result, unsigned int *a2)
{
  v2 = (*(a2 + 4) << 6) | (*(a2 + 5) << 14) | (*(a2 + 6) << 22);
  v3 = (8 * *(a2 + 10)) | (*(a2 + 11) << 11) | (*(a2 + 12) << 19);
  v4 = a2[4];
  v5 = ((4 * *(a2 + 29)) | (*(a2 + 30) << 10)) & 0xFFFFFFFFFE03FFFFLL | ((*(a2 + 31) & 0x7F) << 18);
  v6 = *a2 + 19 * ((v5 + 0x1000000) >> 25);
  v7 = ((32 * *(a2 + 7)) | (*(a2 + 8) << 13) | (*(a2 + 9) << 21)) + ((v2 + 0x1000000) >> 25);
  v8 = ((v7 + 0x2000000) >> 26) + v3;
  v3 += 0x1000000;
  v9 = ((4 * *(a2 + 13)) | (*(a2 + 14) << 10) | (*(a2 + 15) << 18)) + (v3 >> 25);
  LODWORD(v3) = v8 - (v3 & 0xE000000);
  v10 = (32 * *(a2 + 23)) | (*(a2 + 24) << 13) | (*(a2 + 25) << 21);
  v11 = *(a2 + 26);
  v12 = ((*(a2 + 20) << 7) | (*(a2 + 21) << 15) | (*(a2 + 22) << 23)) + ((v4 + 0x1000000) >> 25);
  v13 = *(a2 + 27);
  v14 = *(a2 + 28);
  *result = v6 - ((v6 + 0x2000000) & 0xFC000000);
  result[1] = v2 - ((v2 + 0x1000000) & 0x7E000000) + ((v6 + 0x2000000) >> 26);
  v15 = ((16 * v11) | (v13 << 12) | (v14 << 20)) + ((v10 + 0x1000000) >> 25);
  result[2] = v7 - ((v7 + 0x2000000) & 0xFC000000);
  result[3] = v3;
  result[4] = v9 - ((v9 + 0x2000000) & 0xFC000000);
  result[5] = v4 - ((v4 + 0x1000000) & 0xFE000000) + ((v9 + 0x2000000) >> 26);
  result[6] = v12 - ((v12 + 0x2000000) & 0xFC000000);
  result[7] = ((v12 + 0x2000000) >> 26) + v10 - ((v10 + 0x1000000) & 0x3E000000);
  result[8] = v15 - ((v15 + 0x2000000) & 0xFC000000);
  result[9] = v5 + ((v15 + 0x2000000) >> 26) - ((v5 + 0x1000000) & 0x2000000);
  return result;
}

_DWORD *fe_sq(_DWORD *result, int *a2)
{
  v3 = a2[4];
  v2 = a2[5];
  v5 = a2[6];
  v4 = a2[7];
  v6 = 19 * v5;
  v7 = *a2;
  v8 = a2[1];
  v9 = 38 * v4;
  v11 = a2[8];
  v10 = a2[9];
  v12 = 19 * v11;
  v14 = a2[2];
  v13 = a2[3];
  v15 = 2 * v7;
  v16 = 2 * v14;
  v17 = 38 * v10;
  v18 = 2 * v7 * v8;
  v19 = 2 * v8 * v14;
  v20 = 38 * v2 * v2 + v7 * v7 + v6 * 2 * v3 + v9 * 2 * v13 + v12 * 2 * v14 + v17 * 2 * v8;
  v21 = 2 * v8 * v8 + v14 * 2 * v7;
  v22 = 2 * v13 * 2 * v8 + v14 * v14 + v3 * 2 * v7 + v9 * v4 + 2 * v5 * v12 + v17 * 2 * v2;
  v23 = v18 + v6 * 2 * v2 + v9 * v3 + v12 * 2 * v13 + v17 * v14 + ((v20 + 0x2000000) >> 26);
  v24 = 2 * v14 * v13 + v3 * 2 * v8 + v2 * v15 + v12 * 2 * v4 + v17 * v5 + ((v22 + 0x2000000) >> 26);
  v25 = v21 + v6 * v5 + v9 * 2 * v2 + v12 * 2 * v3 + v17 * 2 * v13 + ((v23 + 0x1000000) >> 25);
  v26 = v3 * 2 * v14 + 2 * v13 * v13 + 2 * v2 * 2 * v8 + v5 * v15 + v12 * v11 + v17 * 2 * v4 + ((v24 + 0x1000000) >> 25);
  v27 = v19 + v13 * v15 + v9 * v5 + v12 * 2 * v2 + v17 * v3 + ((v25 + 0x2000000) >> 26);
  LODWORD(v12) = v25 - ((v25 + 0x2000000) & 0xFC000000);
  v28 = 2 * v3 * v2;
  v29 = 2 * v13 * v3 + v2 * v16;
  v30 = v5 * v16 + v3 * v3 + 2 * v2 * 2 * v13;
  v31 = v29 + v5 * 2 * v8 + v4 * v15 + v17 * v11 + ((v26 + 0x2000000) >> 26);
  v32 = v28 + v5 * 2 * v13 + v4 * v16 + v11 * 2 * v8;
  v33 = v30 + 2 * v4 * 2 * v8 + v11 * v15 + v17 * v10 + ((v31 + 0x1000000) >> 25);
  v34 = v32 + v10 * v15 + ((v33 + 0x2000000) >> 26);
  v35 = v20 - ((v20 + 0x2000000) & 0xFFFFFFFFFC000000) + 19 * ((v34 + 0x1000000) >> 25);
  *result = v35 - ((v35 + 0x2000000) & 0xFC000000);
  result[1] = v23 - ((v23 + 0x1000000) & 0xFE000000) + ((v35 + 0x2000000) >> 26);
  v36 = v22 - ((v22 + 0x2000000) & 0xFFFFFFFFFC000000) + ((v27 + 0x1000000) >> 25);
  result[2] = v12;
  result[3] = v27 - ((v27 + 0x1000000) & 0xFE000000);
  result[4] = v36 - ((v36 + 0x2000000) & 0xFC000000);
  result[5] = v24 - ((v24 + 0x1000000) & 0xFE000000) + ((v36 + 0x2000000) >> 26);
  result[6] = v26 - ((v26 + 0x2000000) & 0xFC000000);
  result[7] = v31 - ((v31 + 0x1000000) & 0xFE000000);
  result[8] = v33 - ((v33 + 0x2000000) & 0xFC000000);
  result[9] = v34 - ((v34 + 0x1000000) & 0xFE000000);
  return result;
}

_DWORD *x25519_ge_p3_to_cached(uint64_t a1, uint64_t a2)
{
  v2 = 10;
  v3 = a2;
  v4 = a1;
  do
  {
    v5 = v3[10];
    v6 = *v3++;
    *v4++ = v6 + v5;
    --v2;
  }

  while (v2);
  v7 = 40;
  v8 = a2;
  do
  {
    v9 = v8[10];
    v10 = *v8++;
    *(a1 + v7) = v9 - v10;
    v7 += 4;
  }

  while (v7 != 80);
  v11 = *(a2 + 80);
  v12 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v11;
  *(a1 + 96) = v12;
  return fe_mul((a1 + 120), (a2 + 120), d2);
}

_DWORD *x25519_ge_p1p1_to_p2(_DWORD *a1, int *a2)
{
  fe_mul(a1, a2, a2 + 30);
  fe_mul(a1 + 10, a2 + 10, a2 + 20);

  return fe_mul(a1 + 20, a2 + 20, a2 + 30);
}

_DWORD *x25519_ge_p1p1_to_p3(_DWORD *a1, int *a2)
{
  fe_mul(a1, a2, a2 + 30);
  fe_mul(a1 + 10, a2 + 10, a2 + 20);
  fe_mul(a1 + 20, a2 + 20, a2 + 30);

  return fe_mul(a1 + 30, a2, a2 + 10);
}

_DWORD *x25519_ge_add(int *a1, int *a2, int *a3)
{
  v6 = 0;
  v20 = *MEMORY[0x277D85DE8];
  do
  {
    a1[v6] = a2[v6] + a2[v6 + 10];
    ++v6;
  }

  while (v6 != 10);
  v7 = a1 + 10;
  v8 = a2;
  do
  {
    v9 = v8[10];
    v10 = *v8++;
    a1[v6++] = v9 - v10;
  }

  while (v6 != 20);
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  fe_mul(a1 + 20, a1, a3);
  fe_mul(a1 + 10, a1 + 10, a3 + 10);
  fe_mul(a1 + 30, a3 + 30, a2 + 30);
  result = fe_mul(a1, a2 + 20, a3 + 20);
  for (i = 0; i != 10; ++i)
  {
    *(v18 + i * 4) = 2 * a1[i];
  }

  v13 = 10;
  v14 = a1 + 10;
  do
  {
    *(v14 - 10) = v14[10] - *v14;
    ++v14;
    --v13;
  }

  while (v13);
  v15 = 10;
  do
  {
    *v7 += v7[10];
    ++v7;
    --v15;
  }

  while (v15);
  do
  {
    *(a1 + v15 + 80) = *(a1 + v15 + 120) + *(v18 + v15);
    v15 += 4;
  }

  while (v15 != 40);
  for (j = 0; j != 10; ++j)
  {
    a1[j + 30] = *(v18 + j * 4) - a1[j + 30];
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

_DWORD *x25519_ge_sub(int *a1, int *a2, int *a3)
{
  v6 = 0;
  v20 = *MEMORY[0x277D85DE8];
  do
  {
    a1[v6] = a2[v6] + a2[v6 + 10];
    ++v6;
  }

  while (v6 != 10);
  v7 = a1 + 10;
  v8 = a2;
  do
  {
    v9 = v8[10];
    v10 = *v8++;
    a1[v6++] = v9 - v10;
  }

  while (v6 != 20);
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  fe_mul(a1 + 20, a1, a3 + 10);
  fe_mul(a1 + 10, a1 + 10, a3);
  fe_mul(a1 + 30, a3 + 30, a2 + 30);
  result = fe_mul(a1, a2 + 20, a3 + 20);
  for (i = 0; i != 10; ++i)
  {
    *(v18 + i * 4) = 2 * a1[i];
  }

  v13 = 10;
  v14 = a1 + 10;
  do
  {
    *(v14 - 10) = v14[10] - *v14;
    ++v14;
    --v13;
  }

  while (v13);
  v15 = 10;
  do
  {
    *v7 += v7[10];
    ++v7;
    --v15;
  }

  while (v15);
  do
  {
    *(a1 + v15 + 80) = *(v18 + v15) - *(a1 + v15 + 120);
    v15 += 4;
  }

  while (v15 != 40);
  for (j = 0; j != 10; ++j)
  {
    a1[j + 30] += *(v18 + j * 4);
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

_DWORD *x25519_ge_scalarmult_small_precomp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v51[225] = *MEMORY[0x277D85DE8];
  v6 = v51;
  do
  {
    *&v43 = 0;
    *v41 = 0u;
    v42 = 0u;
    *&v33 = 0;
    v32 = 0u;
    v31 = 0u;
    fe_frombytes(v41, (a3 + (v5 << 6)));
    fe_frombytes(&v31, (a3 + (v5 << 6) + 32));
    v7 = 0;
    v8 = &v51[15 * v5];
    do
    {
      *(v6 + v7 * 4) = v41[v7] + *(&v31 + v7 * 4);
      ++v7;
    }

    while (v7 != 10);
    for (i = 0; i != 10; ++i)
    {
      *(v6 + i * 4 + 40) = *(&v31 + i * 4) - v41[i];
    }

    fe_mul(v8 + 20, v41, &v31);
    fe_mul(v8 + 20, v8 + 20, d2);
    ++v5;
    v6 += 15;
  }

  while (v5 != 15);
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 40) = 1;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 80) = 1;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  v10 = 63;
  *(a1 + 152) = 0;
  do
  {
    v11 = 0;
    v12 = 0;
    v13 = (a2 + (v10 >> 3));
    do
    {
      v14 = *v13;
      v13 += 8;
      v12 |= ((v14 >> (v10 & 7)) & 1) << v11++;
    }

    while (v11 != 4);
    v23 = 0;
    v22 = 0u;
    v21 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0;
    v20 = 1;
    v24 = 1;
    v28 = 0u;
    v29 = 0u;
    v15 = v51;
    v16 = 1;
    v30 = 0;
    do
    {
      cmov(&v20, v15, ((v12 ^ v16++) - 1) >> 31);
      v15 += 15;
    }

    while (v16 != 16);
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    *v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v31 = 0u;
    x25519_ge_p3_to_cached(v41, a1);
    x25519_ge_add(&v31, a1, v41);
    x25519_ge_p1p1_to_p3(a1, &v31);
    ge_madd(&v31, a1, &v20);
    result = x25519_ge_p1p1_to_p3(a1, &v31);
    --v10;
  }

  while (v10 < 0x40);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t cmov(uint64_t result, uint64_t a2, int a3)
{
  for (i = 0; i != 40; i += 4)
  {
    *(result + i) = *(a2 + i) & -a3 | *(result + i) & (a3 - 1);
  }

  for (j = 0; j != 40; j += 4)
  {
    *(result + 40 + j) = *(a2 + 40 + j) & -a3 | *(result + 40 + j) & (a3 - 1);
  }

  for (k = 0; k != 40; k += 4)
  {
    *(result + 80 + k) = *(a2 + 80 + k) & -a3 | *(result + 80 + k) & (a3 - 1);
  }

  return result;
}

_DWORD *ge_madd(int *a1, int *a2, int *a3)
{
  v6 = 0;
  v20 = *MEMORY[0x277D85DE8];
  do
  {
    a1[v6] = a2[v6] + a2[v6 + 10];
    ++v6;
  }

  while (v6 != 10);
  v7 = a1 + 10;
  v8 = a2;
  do
  {
    v9 = v8[10];
    v10 = *v8++;
    a1[v6++] = v9 - v10;
  }

  while (v6 != 20);
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  fe_mul(a1 + 20, a1, a3);
  fe_mul(a1 + 10, a1 + 10, a3 + 10);
  result = fe_mul(a1 + 30, a3 + 20, a2 + 30);
  for (i = 0; i != 10; ++i)
  {
    *(v18 + i * 4) = 2 * a2[i + 20];
  }

  v13 = 10;
  v14 = a1 + 10;
  do
  {
    *(v14 - 10) = v14[10] - *v14;
    ++v14;
    --v13;
  }

  while (v13);
  v15 = 10;
  do
  {
    *v7 += v7[10];
    ++v7;
    --v15;
  }

  while (v15);
  do
  {
    *(a1 + v15 + 80) = *(a1 + v15 + 120) + *(v18 + v15);
    v15 += 4;
  }

  while (v15 != 40);
  for (j = 0; j != 10; ++j)
  {
    a1[j + 30] = *(v18 + j * 4) - a1[j + 30];
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

_DWORD *x25519_ge_scalarmult_base(uint64_t a1, int8x16_t *a2)
{
  v3 = 0;
  v38 = *MEMORY[0x277D85DE8];
  v4.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v4.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  do
  {
    v5 = *a2++;
    v39.val[0] = vandq_s8(v5, v4);
    v39.val[1] = vshrq_n_u8(v5, 4uLL);
    v6 = &v36[v3];
    vst2q_s8(v6, v39);
    v3 += 32;
  }

  while (v3 != 64);
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = v36[v7] + v8;
    v8 = (v9 + 8) << 24 >> 28;
    v36[v7++] = v9 - ((v9 + 8) & 0xF0);
  }

  while (v7 != 63);
  v10 = 0;
  memset(v27, 0, sizeof(v27));
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v37 += v8;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  v11 = 1;
  *(a1 + 40) = 1;
  *(a1 + 80) = 0u;
  v12 = (a1 + 80);
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 80) = 1;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  do
  {
    table_select(v23, v10, v36[v11]);
    ge_madd(v27, a1, v23);
    x25519_ge_p1p1_to_p3(a1, v27);
    ++v10;
    v13 = v11 >= 0x3E;
    v11 += 2;
  }

  while (!v13);
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v14 = *(a1 + 16);
  v28[0] = *a1;
  v28[1] = v14;
  v15 = *(a1 + 32);
  v16 = *(a1 + 56);
  v30 = *(a1 + 40);
  v31 = v16;
  v17 = *(a1 + 72);
  v29 = v15;
  v32 = v17;
  v18 = *(a1 + 96);
  v33 = *v12;
  v34 = v18;
  v35 = *(a1 + 112);
  ge_p2_dbl(v27, v28);
  x25519_ge_p1p1_to_p2(v25, v27);
  ge_p2_dbl(v27, v25);
  x25519_ge_p1p1_to_p2(v25, v27);
  ge_p2_dbl(v27, v25);
  x25519_ge_p1p1_to_p2(v25, v27);
  ge_p2_dbl(v27, v25);
  x25519_ge_p1p1_to_p3(a1, v27);
  v19 = 0;
  v20 = 0;
  do
  {
    table_select(v23, v19, v36[v20]);
    ge_madd(v27, a1, v23);
    result = x25519_ge_p1p1_to_p3(a1, v27);
    ++v19;
    v13 = v20 >= 0x3E;
    v20 += 2;
  }

  while (!v13);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t table_select(uint64_t a1, int a2, int a3)
{
  v5 = a3 - 2 * (a3 & (a3 >> 31));
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = 1;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 40) = 1;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  v6 = &k25519Precomp + 960 * a2;
  cmov(a1, v6, (((a3 - 2 * (a3 & (a3 >> 31))) ^ 1u) - 1) >> 31);
  cmov(a1, (v6 + 120), ((v5 ^ 2u) - 1) >> 31);
  cmov(a1, (v6 + 240), ((v5 ^ 3u) - 1) >> 31);
  cmov(a1, (v6 + 360), ((v5 ^ 4u) - 1) >> 31);
  cmov(a1, (v6 + 480), ((v5 ^ 5u) - 1) >> 31);
  cmov(a1, (v6 + 600), ((v5 ^ 6u) - 1) >> 31);
  cmov(a1, (v6 + 720), ((v5 ^ 7u) - 1) >> 31);
  cmov(a1, (v6 + 840), ((v5 ^ 8u) - 1) >> 31);
  v7 = *(a1 + 56);
  v11[0] = *(a1 + 40);
  v11[1] = v7;
  v12 = *(a1 + 72);
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  v8 = *(a1 + 16);
  v13 = *a1;
  v15 = *(a1 + 32);
  v9 = 80;
  v14 = v8;
  do
  {
    *(v11 + v9) = -*(a1 + v9);
    v9 += 4;
  }

  while (v9 != 120);
  return cmov(a1, v11, (a3 >> 7) & 1);
}

_DWORD *ge_p2_dbl(_DWORD *a1, int *a2)
{
  v2 = a2;
  v52 = *MEMORY[0x277D85DE8];
  fe_sq(a1, a2);
  v4 = a1 + 20;
  fe_sq(a1 + 20, v2 + 10);
  v5 = v2[20];
  v49 = v2[21];
  v6 = v2[23];
  v45 = v2[22];
  v7 = v2[24];
  v8 = v2[25];
  v10 = v2[26];
  v9 = v2[27];
  v12 = v2[28];
  v11 = v2[29];
  v13 = 2 * v5;
  v14 = 2 * v6;
  v46 = v6;
  v15 = 38 * v9;
  v16 = 19 * v12;
  v17 = 38 * v11;
  v18 = 38 * v8 * v8 + v5 * v5 + 19 * v10 * 2 * v7 + v15 * 2 * v6 + v16 * 2 * v45 + v17 * 2 * v49;
  v19 = 2 * v6 * 2 * v49 + v45 * v45 + v7 * 2 * v5 + v15 * v9 + 2 * v10 * v16 + v17 * 2 * v8;
  v20 = 2 * v45 * v6 + v7 * 2 * v49 + v8 * v13 + v16 * 2 * v9 + v17 * v10;
  v21 = v7 * 2 * v45 + 2 * v6 * v6 + 2 * v8 * 2 * v49 + v10 * v13 + v16 * v12 + v17 * 2 * v9;
  v22 = 2 * v6 * v7 + v8 * 2 * v45 + v10 * 2 * v49 + v9 * v13 + v17 * v12;
  v23 = v10 * 2 * v45 + v7 * v7 + 2 * v8 * v14 + 2 * v9 * 2 * v49 + v12 * v13 + v17 * v11;
  v24 = 2 * v7 * v8 + v10 * v14 + v9 * 2 * v45 + v12 * 2 * v49 + v11 * v13;
  v25 = 2 * v18 + 0x2000000;
  v26 = 2 * v19 + 0x2000000;
  v27 = (v26 >> 26) + 2 * v20;
  v28 = ((v27 + 0x1000000) >> 25) + 2 * v21;
  v29 = ((v28 + 0x2000000) >> 26) + 2 * v22;
  v48 = ((v29 + 0x1000000) >> 25) + 2 * v23;
  v47 = ((v48 + 0x2000000) >> 26) + 2 * v24;
  v30 = 2 * v18 - (v25 & 0xFFFFFFFFFC000000) + 19 * ((v47 + 0x1000000) >> 25);
  v31 = 19 * v10;
  a1[30] = v30 - ((v30 + 0x2000000) & 0xFC000000);
  v32 = a1 + 30;
  v33 = (v25 >> 26) + 2 * (v13 * v49 + v31 * 2 * v8 + v15 * v7 + v16 * v14 + v17 * v45);
  v34 = ((v33 + 0x1000000) >> 25) + 2 * (2 * v49 * v49 + v45 * v13 + v31 * v10 + v15 * 2 * v8 + v16 * 2 * v7 + v17 * v14);
  v35 = ((v34 + 0x2000000) >> 26) + 2 * (2 * v49 * v45 + v46 * v13 + v15 * v10 + v16 * 2 * v8 + v17 * v7);
  v36 = 2 * v19 - (v26 & 0xFFFFFFFFFC000000) + ((v35 + 0x1000000) >> 25);
  a1[31] = v33 - ((v33 + 0x1000000) & 0xFE000000) + ((v30 + 0x2000000) >> 26);
  a1[32] = v34 - ((v34 + 0x2000000) & 0xFC000000);
  a1[33] = v35 - ((v35 + 0x1000000) & 0xFE000000);
  a1[34] = v36 - ((v36 + 0x2000000) & 0xFC000000);
  a1[35] = v27 - ((v27 + 0x1000000) & 0xFE000000) + ((v36 + 0x2000000) >> 26);
  a1[36] = v28 - ((v28 + 0x2000000) & 0xFC000000);
  a1[37] = v29 - ((v29 + 0x1000000) & 0xFE000000);
  a1[38] = v48 - ((v48 + 0x2000000) & 0xFC000000);
  a1[39] = v47 - ((v47 + 0x1000000) & 0xFE000000);
  v37 = a1 + 10;
  v38 = 10;
  v39 = a1 + 10;
  do
  {
    *v39++ = v2[10] + *v2;
    ++v2;
    --v38;
  }

  while (v38);
  v51 = 0;
  memset(v50, 0, sizeof(v50));
  result = fe_sq(v50, a1 + 10);
  v41 = 10;
  do
  {
    *v37 = *(v37 - 10) + v37[10];
    ++v37;
    --v41;
  }

  while (v41);
  v42 = 10;
  do
  {
    *v4 -= *(v4 - 20);
    ++v4;
    --v42;
  }

  while (v42);
  do
  {
    *(a1 + v42) = *(v50 + v42) - *(a1 + v42 + 40);
    v42 += 4;
  }

  while (v42 != 40);
  v43 = 10;
  do
  {
    *v32 -= *(v32 - 10);
    ++v32;
    --v43;
  }

  while (v43);
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

_DWORD *x25519_ge_scalarmult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75[90] = *MEMORY[0x277D85DE8];
  memset(v39, 0, sizeof(v39));
  v51 = 0u;
  v52 = 0u;
  v53 = 0;
  v50 = 1;
  v55 = 0u;
  v56 = 0u;
  v57 = 0;
  v54 = 1;
  v60 = 0u;
  v59 = 0u;
  v61 = 0;
  v58 = 1;
  v64 = 0;
  v63 = 0u;
  v62 = 0u;
  x25519_ge_p3_to_cached(&v65, a3);
  v6 = 0;
  v7 = *(a3 + 16);
  v67[0] = *a3;
  v67[1] = v7;
  v8 = *(a3 + 56);
  v69 = *(a3 + 40);
  v70 = v8;
  v9 = *(a3 + 96);
  v72 = *(a3 + 80);
  v10 = *(a3 + 72);
  v68 = *(a3 + 32);
  v71 = v10;
  v74 = *(a3 + 112);
  v11 = v67;
  v12 = &v66;
  v73 = v9;
  v13 = v75;
  do
  {
    ge_p2_dbl(v39, v11);
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    x25519_ge_p1p1_to_p3(&v40, v39);
    x25519_ge_p3_to_cached(v12, &v40);
    if (v6 + 2 <= 7)
    {
      x25519_ge_p1p1_to_p2(v13, v39);
    }

    x25519_ge_add(v39, a3, v12);
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    x25519_ge_p1p1_to_p3(&v40, v39);
    x25519_ge_p3_to_cached((v12 + 40), &v40);
    if (v6 + 2 <= 6)
    {
      x25519_ge_p1p1_to_p2(v13 + 30, v39);
    }

    v6 += 2;
    v12 += 80;
    v13 += 60;
    v11 += 30;
  }

  while (v6 < 0xE);
  v14 = 0;
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 40) = 1;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 80) = 1;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  do
  {
    ge_p2_dbl(v39, a1);
    x25519_ge_p1p1_to_p2(a1, v39);
    ge_p2_dbl(v39, a1);
    x25519_ge_p1p1_to_p2(a1, v39);
    ge_p2_dbl(v39, a1);
    x25519_ge_p1p1_to_p2(a1, v39);
    ge_p2_dbl(v39, a1);
    x25519_ge_p1p1_to_p3(&v40, v39);
    v15 = 0;
    v16 = *(a2 - (v14 >> 3) + 31);
    v27 = 0;
    v26 = 0u;
    v17 = (v16 >> (~v14 & 4)) & 0xF;
    v25 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
    v24 = 1;
    v28 = 1;
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
    v32 = 1;
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
    v18 = &v50;
    do
    {
      v19 = 0;
      v20 = ((v17 ^ v15) - 1) >> 31;
      do
      {
        *(&v24 + v19 * 4) = v18[v19] & v20 | *(&v24 + v19 * 4) & ~v20;
        ++v19;
      }

      while (v19 != 10);
      do
      {
        *(&v24 + v19 * 4) = v18[v19] & v20 | *(&v24 + v19 * 4) & ~v20;
        ++v19;
      }

      while (v19 != 20);
      do
      {
        *(&v24 + v19 * 4) = v18[v19] & v20 | *(&v24 + v19 * 4) & ~v20;
        ++v19;
      }

      while (v19 != 30);
      do
      {
        *(&v24 + v19 * 4) = v18[v19] & v20 | *(&v24 + v19 * 4) & ~v20;
        ++v19;
      }

      while (v19 != 40);
      ++v15;
      v18 += 40;
    }

    while (v15 != 16);
    x25519_ge_add(v39, &v40, &v24);
    result = x25519_ge_p1p1_to_p2(a1, v39);
    v22 = v14 >= 0xFC;
    v14 += 4;
  }

  while (!v22);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned __int16 *x25519_sc_reduce(unsigned __int16 *result)
{
  v1 = *(result + 15);
  v2 = *(result + 9);
  v3 = (v2 >> 24) | (*(result + 40) << 8) | (*(result + 41) << 16);
  v4 = ((HIBYTE(*(result + 11)) | (*(result + 48) << 8) | (*(result + 49) << 16)) >> 2) & 0x1FFFFF;
  v5 = (*(result + 49) >> 7) & 0x1FFFFF;
  v6 = (*(result + 13) >> 4) & 0x1FFFFF;
  v7 = ((HIBYTE(*(result + 13)) | (*(result + 56) << 8) | (*(result + 57) << 16)) >> 1) & 0x1FFFFF;
  v8 = ((v1 >> 6) & 0x1FFFFF) + 666643 * v4;
  v9 = (*(result + 21) | ((*(result + 23) & 0x1F) << 16)) + 470296 * v5 + 666643 * v6 + 654183 * v4;
  v10 = (((v1 >> 24) | (*(result + 19) << 8) | (*(result + 20) << 16)) >> 3) + 666643 * v5 + 470296 * v4 + ((v8 + 0x100000) >> 21);
  v11 = ((*(result + 23) >> 5) & 0x1FFFFF) + 654183 * v5 + 470296 * v6 - 997805 * v4 + 666643 * v7 + ((v9 + 0x100000) >> 21);
  v12 = (((HIBYTE(*(result + 23)) | (*(result + 27) << 8) | (*(result + 28) << 16)) >> 2) & 0x1FFFFF) - 997805 * v5 + 654183 * v6 + 136657 * v4;
  v13 = ((*(result + 7) >> 7) & 0x1FFFFF) + 136657 * v5 - 997805 * v6 - 683901 * v4;
  v14 = ((*(result + 31) >> 4) & 0x1FFFFF) - 683901 * v5 + 136657 * v6;
  v15 = (((HIBYTE(*(result + 31)) | (*(result + 35) << 8) | (*(result + 36) << 16)) >> 1) & 0x1FFFFF) - 683901 * v6;
  v16 = *(result + 15) >> 3;
  v17 = ((v2 >> 6) & 0x1FFFFF) - 997805 * v16;
  v18 = (v3 >> 3) + 136657 * v16;
  v19 = (result[21] | ((result[22] & 0x1F) << 16)) - 683901 * v16;
  v20 = v14 + 470296 * v16;
  v21 = v13 + 666643 * v16;
  v22 = v15 + 654183 * v16;
  v23 = (*(result + 57) >> 6) & 0x1FFFFF;
  v24 = v17 + 136657 * v23 - 683901 * v7;
  v25 = v20 + 654183 * v23 - 997805 * v7;
  v26 = v12 + 666643 * v23 + 470296 * v7;
  v27 = v21 + 470296 * v23 + 654183 * v7 + ((v26 + 0x100000) >> 21);
  v28 = v22 - 997805 * v23 + 136657 * v7 + ((v25 + 0x100000) >> 21);
  v29 = v25 - ((v25 + 0x100000) & 0xFFFFFFFFFFE00000);
  v30 = v18 - 683901 * v23 + ((v24 + 0x100000) >> 21);
  v31 = ((*(result + 11) >> 5) & 0x1FFFFF) + ((v19 + 0x100000) >> 21);
  v32 = v29 + ((v27 + 0x100000) >> 21);
  v33 = v24 - ((v24 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v28 + 0x100000) >> 21);
  v34 = v28 - ((v28 + 0x100000) & 0xFFFFFFFFFFE00000);
  v35 = v19 - ((v19 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v30 + 0x100000) >> 21);
  v36 = v30 - ((v30 + 0x100000) & 0xFFFFFFFFFFE00000);
  v37 = v26 - 683901 * v31 - ((v26 + 0x100000) & 0xFFFFFFFFFFE00000);
  v38 = ((*(result + 7) >> 7) & 0x1FFFFF) + 666643 * v36;
  v39 = ((*(result + 5) >> 4) & 0x1FFFFF) + 666643 * v35 + 470296 * v36;
  v40 = (((HIBYTE(*(result + 5)) | (*(result + 14) << 8) | (*(result + 15) << 16)) >> 1) & 0x1FFFFF) + 666643 * v31 + 470296 * v35 + 654183 * v36;
  v41 = v8 - ((v8 + 0x100000) & 0x7FFFFE00000) + 470296 * v31 + 654183 * v35 - 997805 * v36;
  v42 = v10 - ((v10 + 0x100000) & 0x7FFFFFFFFFE00000) + 654183 * v31 - 997805 * v35 + 136657 * v36;
  v43 = v9 - ((v9 + 0x100000) & 0xFFFFFE00000) + ((v10 + 0x100000) >> 21) - 997805 * v31 + 136657 * v35 - 683901 * v36;
  v44 = (((HIBYTE(*(result + 1)) | (*(result + 6) << 8) | (*(result + 7) << 16)) >> 2) & 0x1FFFFF) + 666643 * v33;
  v45 = v38 + 470296 * v33;
  v46 = v39 + 654183 * v33;
  v47 = v40 - 997805 * v33;
  v48 = v41 + 136657 * v33;
  v49 = v42 - 683901 * v33;
  v50 = v48 - 683901 * v34;
  v51 = v37 + ((v11 + 0x100000) >> 21);
  v52 = (*result | ((result[1] & 0x1F) << 16)) + 666643 * v32;
  v53 = v44 + 470296 * v34 + 654183 * v32;
  v54 = v45 + 654183 * v34 - 997805 * v32;
  v55 = v46 - 997805 * v34 + 136657 * v32;
  v56 = v47 + 136657 * v34 - 683901 * v32;
  v57 = ((*(result + 1) >> 5) & 0x1FFFFF) + 666643 * v34 + 470296 * v32 + ((v52 + 0x100000) >> 21);
  v58 = v52 - ((v52 + 0x100000) & 0xFFFFFFFFFFE00000);
  v59 = v49 + ((v50 + 0x100000) >> 21);
  v60 = v50 - ((v50 + 0x100000) & 0xFFFFFFFFFFE00000);
  v61 = v11 + 136657 * v31 - ((v11 + 0x100000) & 0xFFFFFFFFFFE00000) - 683901 * v35 + ((v43 + 0x100000) >> 21);
  v62 = v27 - ((v27 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v51 + 0x100000) >> 21);
  v63 = v57 + 0x100000;
  v64 = v43 - ((v43 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v59 + 0x100000) >> 21);
  v65 = v59 - ((v59 + 0x100000) & 0xFFFFFFFFFFE00000);
  v66 = v51 - ((v51 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v61 + 0x100000) >> 21);
  v67 = v61 - ((v61 + 0x100000) & 0xFFFFFFFFFFE00000);
  v68 = (v62 + 0x100000) >> 21;
  v69 = v54 + ((v53 + 0x100000) >> 21);
  v70 = v69 - 997805 * v68 - ((v69 + 0x100000) & 0xFFFFFFFFFFE00000);
  v71 = v56 + ((v55 + 0x100000) >> 21);
  v72 = v55 + 136657 * v68 - ((v55 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v69 + 0x100000) >> 21);
  v73 = v58 + 666643 * v68;
  v74 = v71 - 683901 * v68;
  v71 += 0x100000;
  v75 = v57 + 470296 * v68 - ((v57 + 0x100000) & 0xFFFFFFFFFFE00000) + (v73 >> 21);
  v76 = v53 + 654183 * v68 - ((v53 + 0x100000) & 0xFFFFFFFFFFE00000) + (v63 >> 21) + (v75 >> 21);
  v77 = v70 + (v76 >> 21);
  v78 = v72 + (v77 >> 21);
  v79 = v74 - (v71 & 0xFFFFFFFFFFE00000) + (v78 >> 21);
  v80 = v60 + (v71 >> 21) + (v79 >> 21);
  v81 = v65 + (v80 >> 21);
  v82 = v64 + (v81 >> 21);
  v83 = v67 + (v82 >> 21);
  v84 = v66 + (v83 >> 21);
  v85 = v62 - ((v62 + 0x100000) & 0xFFFFFFFFFFE00000) + (v84 >> 21);
  v86 = (v73 & 0x1FFFFF) + 666643 * (v85 >> 21);
  *(result + 1) = (v73 + 11283 * (v85 >> 21)) >> 8;
  v87 = (v75 & 0x1FFFFF) + 470296 * (v85 >> 21) + (v86 >> 21);
  *result = v73 + 19 * (v85 >> 21);
  *(result + 2) = (((v73 & 0x1FFFFF) + 666643 * (v85 >> 21)) >> 16) & 0x1F | (32 * (v75 + 24 * (v85 >> 21) + (v86 >> 21)));
  *(result + 3) = v87 >> 3;
  *(result + 4) = v87 >> 11;
  v88 = (v76 & 0x1FFFFF) + 654183 * (v85 >> 21) + (v87 >> 21);
  *(result + 5) = (v87 >> 19) & 3 | (4 * (v76 + 103 * (v85 >> 21) + (v87 >> 21)));
  *(result + 6) = v88 >> 6;
  v89 = (v77 & 0x1FFFFF) - 997805 * (v85 >> 21) + (v88 >> 21);
  *(result + 7) = (v88 >> 14) & 0x7F | ((v77 - -83 * (v85 >> 21) + (v88 >> 21)) << 7);
  *(result + 8) = v89 >> 1;
  *(result + 9) = v89 >> 9;
  v90 = (v78 & 0x1FFFFF) + 136657 * (v85 >> 21) + (v89 >> 21);
  *(result + 10) = (v89 >> 17) & 0xF | (16 * (v78 - 47 * (v85 >> 21) + (v89 >> 21)));
  *(result + 11) = v90 >> 4;
  *(result + 12) = v90 >> 12;
  v91 = (v79 & 0x1FFFFF) - 683901 * (v85 >> 21) + (v90 >> 21);
  *(result + 13) = ((v90 & 0x100000) != 0) | (2 * (v79 - 125 * (v85 >> 21) + (v90 >> 21)));
  *(result + 14) = v91 >> 7;
  v92 = (v80 & 0x1FFFFF) + (v91 >> 21);
  *(result + 15) = (v91 >> 15) & 0x3F | ((v80 + (v91 >> 21)) << 6);
  *(result + 16) = v92 >> 2;
  *(result + 17) = v92 >> 10;
  v93 = (v81 & 0x1FFFFF) + (v92 >> 21);
  *(result + 18) = (v92 >> 18) & 7 | (8 * (v81 + (v92 >> 21)));
  *(result + 19) = v93 >> 5;
  v94 = (v82 & 0x1FFFFF) + (v93 >> 21);
  *(result + 20) = v93 >> 13;
  *(result + 22) = (v82 + (v93 >> 21)) >> 8;
  v95 = (v83 & 0x1FFFFF) + (v94 >> 21);
  *(result + 21) = v94;
  *(result + 23) = BYTE2(v94) & 0x1F | (32 * (v83 + (v94 >> 21)));
  *(result + 24) = v95 >> 3;
  *(result + 25) = v95 >> 11;
  v96 = (v84 & 0x1FFFFF) + (v95 >> 21);
  v97 = (v85 & 0x1FFFFF) + (v96 >> 21);
  *(result + 26) = (v95 >> 19) & 3 | (4 * (v84 + (v95 >> 21)));
  *(result + 27) = v96 >> 6;
  *(result + 28) = (v96 >> 14) & 0x7F | ((v85 + (v96 >> 21)) << 7);
  *(result + 29) = ((v96 >> 21) + v85) >> 1;
  *(result + 30) = v97 >> 9;
  *(result + 31) = v97 >> 17;
  return result;
}

uint64_t ED25519_public_from_private(uint64_t a1, unsigned __int8 *d)
{
  v8 = *MEMORY[0x277D85DE8];
  SHA512(d, 0x20uLL, &md);
  md.i8[0] &= 0xF8u;
  v7 = v7 & 0x3F | 0x40;
  memset(v5, 0, sizeof(v5));
  x25519_ge_scalarmult_base(v5, &md);
  result = ge_p3_tobytes(a1, v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ge_p3_tobytes(uint64_t a1, int *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  fe_invert(v10, a2 + 20);
  fe_mul(v8, a2, v10);
  fe_mul(v6, a2 + 10, v10);
  fe_tobytes(a1, v6);
  result = fe_tobytes(v12, v8);
  *(a1 + 31) ^= v12[0] << 7;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ED25519_keypair(uint64_t a1, void *__buf)
{
  arc4random_buf(__buf, 0x20uLL);

  return ED25519_public_from_private(a1, __buf);
}

uint64_t ED25519_sign(_BYTE *a1, const void *a2, size_t a3, const void *a4, unsigned __int8 *d)
{
  v8 = a1;
  v197[4] = *MEMORY[0x277D85DE8];
  SHA512(d, 0x20uLL, md);
  md[0] &= 0xF8u;
  HIBYTE(v196) = HIBYTE(v196) & 0x3F | 0x40;
  memset(&c, 0, sizeof(c));
  SHA512_Init(&c);
  SHA512_Update(&c, v197, 0x20uLL);
  SHA512_Update(&c, a2, a3);
  SHA512_Final(v173, &c);
  x25519_sc_reduce(v173);
  memset(v159, 0, sizeof(v159));
  x25519_ge_scalarmult_base(v159, v173);
  ge_p3_tobytes(v8, v159);
  SHA512_Init(&c);
  SHA512_Update(&c, v8, 0x20uLL);
  SHA512_Update(&c, a4, 0x20uLL);
  SHA512_Update(&c, a2, a3);
  SHA512_Final(v161, &c);
  x25519_sc_reduce(v161);
  LODWORD(v8) = *v161 | ((v162 & 0x1F) << 16);
  v9 = v169 | ((v170 & 0x1F) << 16);
  v10 = *md | ((v186 & 0x1F) << 16);
  v11 = v193 | ((v194 & 0x1F) << 16);
  v12 = (v162 >> 5) & 0x1FFFFF;
  v13 = ((HIBYTE(v162) | (v163 << 8) | (v164[0] << 16)) >> 2) & 0x1FFFFF;
  v14 = (v186 >> 5) & 0x1FFFFF;
  v15 = ((HIBYTE(v186) | (v187 << 8) | (v188[0] << 16)) >> 2) & 0x1FFFFF;
  v158 = v14 * v12 + v10 * v13 + v15 * v8 + (((HIBYTE(v174) | (v175 << 8) | (v176[0] << 16)) >> 2) & 0x1FFFFF);
  v16 = (*v164 >> 7) & 0x1FFFFF;
  v17 = (*&v164[3] >> 4) & 0x1FFFFF;
  v18 = (*v188 >> 7) & 0x1FFFFF;
  v19 = (*&v188[3] >> 4) & 0x1FFFFF;
  v20 = v14 * v16 + v10 * v17 + v18 * v12 + v8 * v19 + v15 * v13 + ((*&v176[3] >> 4) & 0x1FFFFF);
  v21 = ((v164[6] | (v165 << 8) | (v166 << 16)) >> 1) & 0x1FFFFF;
  v22 = (v166 >> 6) & 0x1FFFFF;
  v23 = (v190 >> 6) & 0x1FFFFF;
  v24 = ((v188[6] | (v189 << 8) | (v190 << 16)) >> 1) & 0x1FFFFF;
  v155 = v21 * v14 + v10 * v22 + v18 * v16 + v13 * v19 + v15 * v17 + v8 * v23 + v24 * v12 + ((v178 >> 6) & 0x1FFFFF);
  v25 = ((v166 >> 24) | (v167 << 8) | (v168 << 16)) >> 3;
  v26 = ((v190 >> 24) | (v191 << 8) | (v192 << 16)) >> 3;
  v154 = v25 * v14 + v10 * v9 + v21 * v18 + v19 * v17 + v15 * v22 + v13 * v23 + v24 * v16 + v26 * v12 + v11 * v8 + v181 + ((v182 & 0x1F) << 16);
  v27 = (v170 >> 5) & 0x1FFFFF;
  v28 = ((HIBYTE(v170) | (v171 << 8) | (v172 << 16)) >> 2) & 0x1FFFFF;
  v29 = (v194 >> 5) & 0x1FFFFF;
  v30 = ((HIBYTE(v194) | (v195 << 8) | (v196 << 16)) >> 2) & 0x1FFFFF;
  v153 = v14 * v27 + v10 * v28 + v25 * v18 + v19 * v22 + v15 * v9 + v23 * v17 + v24 * v21 + v26 * v16 + v29 * v12 + v11 * v13 + v30 * v8 + (((HIBYTE(v182) | (v183 << 8) | (v184 << 16)) >> 2) & 0x1FFFFF);
  v31 = (*v173 | ((v174 & 0x1F) << 16)) + v10 * v8;
  v32 = v8 * v14 + v10 * v12 + ((v174 >> 5) & 0x1FFFFF) + ((v31 + 0x100000) >> 21);
  v156 = v31 - ((v31 + 0x100000) & 0xFFFFFE00000);
  v33 = v13 * v14 + v10 * v16 + v8 * v18 + v15 * v12 + ((*v176 >> 7) & 0x1FFFFF);
  v151 = v14 * v17 + v10 * v21 + v13 * v18 + v19 * v12 + v15 * v16 + v24 * v8 + ((v20 + 0x100000) >> 21) + (((v176[6] | (v177 << 8) | (v178 << 16)) >> 1) & 0x1FFFFF);
  v148 = v14 * v22 + v10 * v25 + v18 * v17 + v19 * v16 + v15 * v21 + v23 * v12 + v24 * v13 + v26 * v8 + (((v178 >> 24) | (v179 << 8) | (v180 << 16)) >> 3);
  v149 = v9 * v14 + v10 * v27 + v18 * v22 + v21 * v19 + v15 * v25 + v23 * v16 + v24 * v17 + v26 * v13 + v8 * v29 + v11 * v12 + ((v182 >> 5) & 0x1FFFFF);
  v34 = v172 >> 7;
  v35 = v28 * v14 + v10 * v34;
  v36 = v196 >> 7;
  v37 = v14 * v34 + v18 * v27 + v9 * v19 + v15 * v28 + v23 * v22 + v24 * v25 + v26 * v21 + v29 * v16 + v11 * v17 + v36 * v12;
  v38 = v35 + v9 * v18 + v25 * v19 + v15 * v27 + v21 * v23 + v24 * v22 + v26 * v17 + v13 * v29 + v11 * v16 + v8 * v36 + v30 * v12 + (v184 >> 7);
  v39 = v28 * v18 + v19 * v27 + v15 * v34;
  v40 = v37 + v30 * v13;
  v41 = v18 * v34 + v28 * v19 + v9 * v23 + v24 * v27 + v26 * v25 + v21 * v29 + v11 * v22 + v36 * v16;
  v42 = v39 + v25 * v23 + v24 * v9 + v26 * v22 + v29 * v17 + v11 * v21 + v13 * v36 + v30 * v16;
  v43 = v26 * v34 + v29 * v27 + v11 * v28 + v25 * v36 + v30 * v9;
  v44 = v28 * v29 + v11 * v34 + v9 * v36 + v30 * v27 + ((v43 + 0x100000) >> 21);
  v45 = v41 + v30 * v17;
  v46 = v33 + ((v158 + 0x100000) >> 21);
  v47 = v42 + ((v40 + 0x100000) >> 21);
  v48 = v28 * v23 + v24 * v34 + v26 * v27 + v25 * v29 + v11 * v9 + v21 * v36 + v30 * v22;
  v49 = v23 * v34 + v26 * v28 + v9 * v29 + v11 * v27 + v36 * v22;
  v50 = v19 * v34 + v23 * v27 + v24 * v28 + v26 * v9 + v29 * v22 + v11 * v25 + v36 * v17 + v30 * v21 + ((v45 + 0x100000) >> 21);
  v51 = v49 + v30 * v25 + ((v48 + 0x100000) >> 21);
  v52 = v29 * v34 + v36 * v27 + v30 * v28;
  v53 = v28 * v36 + v30 * v34 + ((v52 + 0x100000) >> 21);
  v54 = v52 - ((v52 + 0x100000) & 0x1FFFFFFE00000);
  v55 = v36 * v34;
  v56 = (v55 + 0x100000) >> 21;
  v152 = v20 - ((v20 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v46 + 0x100000) >> 21);
  v150 = v46 - ((v46 + 0x100000) & 0xFFFFFFFFFFE00000);
  v57 = v43 - ((v43 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v51 + 0x100000) >> 21);
  v58 = v51 - ((v51 + 0x100000) & 0xFFFFFFFFFFE00000);
  v59 = v54 + ((v44 + 0x100000) >> 21);
  v60 = v44 - ((v44 + 0x100000) & 0xFFFFFFFFFFE00000);
  v61 = v55 - ((v55 + 0x100000) & 0x7FFFFFFE00000) + ((v53 + 0x100000) >> 21);
  v62 = v53 - ((v53 + 0x100000) & 0x1FFFFFFE00000);
  v63 = v48 - 683901 * v56 - ((v48 + 0x100000) & 0xFFFFFFFFFFE00000);
  v64 = v45 - 997805 * v56 - ((v45 + 0x100000) & 0xFFFFFFFFFFE00000);
  v65 = v40 + 470296 * v56 - ((v40 + 0x100000) & 0xFFFFFFFFFFE00000);
  v66 = v148 + ((v155 + 0x100000) >> 21);
  v67 = v155 + 666643 * v57 - ((v155 + 0x100000) & 0xFFFFFFFFFFE00000);
  v68 = v149 + ((v154 + 0x100000) >> 21);
  v69 = 666643 * v59 + 470296 * v60 + 654183 * v57 + v154 + ((v66 + 0x100000) >> 21) - ((v154 + 0x100000) & 0xFFFFFFFFFFE00000);
  v70 = v38 + ((v153 + 0x100000) >> 21);
  v71 = 666643 * v61 + 470296 * v62 + 654183 * v59 - 997805 * v60 + 136657 * v57 + ((v68 + 0x100000) >> 21) + v153 - ((v153 + 0x100000) & 0xFFFFFFFFFFE00000);
  v72 = 666643 * v60 + 470296 * v57 + v66 - ((v66 + 0x100000) & 0xFFFFFFFFFFE00000);
  v73 = 666643 * v62 + 470296 * v59 + 654183 * v60 - 997805 * v57 + v68 - ((v68 + 0x100000) & 0xFFFFFFFFFFE00000);
  v74 = v65 + 654183 * v61 - 997805 * v62 + 136657 * v59 - 683901 * v60 + ((v70 + 0x100000) >> 21);
  v75 = 470296 * v61 + 666643 * v56 + 654183 * v62 - 997805 * v59 + 136657 * v60 - 683901 * v57 + v70 - ((v70 + 0x100000) & 0xFFFFFFFFFFE00000);
  v76 = v64 + ((v47 + 0x100000) >> 21);
  v77 = v47 + 654183 * v56 - ((v47 + 0x100000) & 0xFFFFFFFFFFE00000) - 997805 * v61 + 136657 * v62 - 683901 * v59 + ((v74 + 0x100000) >> 21);
  v78 = v50 + 136657 * v56;
  v50 += 0x100000;
  v79 = v63 + (v50 >> 21);
  v80 = v67 + ((v151 + 0x100000) >> 21);
  v81 = v73 + ((v69 + 0x100000) >> 21);
  v82 = v76 + 136657 * v61 - 683901 * v62;
  v83 = v75 + ((v71 + 0x100000) >> 21);
  v84 = v78 - (v50 & 0xFFFFFFFFFFE00000) - 683901 * v61 + ((v82 + 0x100000) >> 21);
  v85 = v58 + ((v79 + 0x100000) >> 21);
  v86 = v79 - ((v79 + 0x100000) & 0xFFFFFFFFFFE00000);
  v87 = v74 - ((v74 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v83 + 0x100000) >> 21);
  v88 = v83 - ((v83 + 0x100000) & 0xFFFFFFFFFFE00000);
  v89 = v82 - ((v82 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v77 + 0x100000) >> 21);
  v90 = v77 - ((v77 + 0x100000) & 0xFFFFFFFFFFE00000);
  v91 = v86 + ((v84 + 0x100000) >> 21);
  v92 = v84 - ((v84 + 0x100000) & 0xFFFFFFFFFFE00000);
  v93 = v71 - 683901 * v85 + ((v81 + 0x100000) >> 21) - ((v71 + 0x100000) & 0xFFFFFFFFFFE00000);
  v94 = v72 + ((v80 + 0x100000) >> 21);
  v95 = -997805 * v85 + 136657 * v91 - 683901 * v92 + v69 + ((v94 + 0x100000) >> 21) - ((v69 + 0x100000) & 0xFFFFFFFFFFE00000);
  v96 = v156 + 666643 * v87;
  v97 = v32 - ((v32 + 0x100000) & 0xFFFFFFFFFFE00000) + 470296 * v87 + 666643 * v90 + ((v96 + 0x100000) >> 21);
  v98 = v151 + 666643 * v85 - ((v151 + 0x100000) & 0xFFFFFFFFFFE00000);
  v99 = v80 + 470296 * v85 - ((v80 + 0x100000) & 0xFFFFFFFFFFE00000) + 654183 * v91 - 997805 * v92 + 136657 * v89 - 683901 * v90;
  v100 = v94 + 654183 * v85 - 997805 * v91 + 136657 * v92 - ((v94 + 0x100000) & 0xFFFFFFFFFFE00000) - 683901 * v89 + ((v99 + 0x100000) >> 21);
  v101 = v99 - ((v99 + 0x100000) & 0xFFFFFFFFFFE00000);
  v102 = 136657 * v85 - 683901 * v91 + v81 - ((v81 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v95 + 0x100000) >> 21);
  v103 = v88 + ((v93 + 0x100000) >> 21);
  v104 = v95 - ((v95 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v100 + 0x100000) >> 21);
  v105 = v100 - ((v100 + 0x100000) & 0xFFFFFFFFFFE00000);
  v106 = v102 + 0x100000;
  v107 = v102 - ((v102 + 0x100000) & 0xFFFFFFFFFFE00000);
  v108 = v103 - ((v103 + 0x100000) & 0xFFFFFFFFFFE00000);
  v109 = (v103 + 0x100000) >> 21;
  v110 = v158 + ((v32 + 0x100000) >> 21) - ((v158 + 0x100000) & 0xFFFFFFFFFFE00000) + 654183 * v87 + 666643 * v89 + 470296 * v90;
  v111 = v150 + 666643 * v92 - 997805 * v87 + 470296 * v89 + 654183 * v90 + ((v110 + 0x100000) >> 21);
  v112 = v111 + 0x100000;
  v113 = v152 + 666643 * v91;
  v114 = v98 + 470296 * v91 + 654183 * v92;
  v115 = v113 + 470296 * v92 + 136657 * v87;
  v116 = v114 - 683901 * v87 - 997805 * v89;
  v117 = v115 + 654183 * v89 - 997805 * v90;
  v118 = v116 + 136657 * v90 + ((v117 + 0x100000) >> 21);
  v119 = v101 + ((v118 + 0x100000) >> 21);
  v120 = v93 + (v106 >> 21);
  v121 = v96 - ((v96 + 0x100000) & 0xFFFFFFFFFFE00000) + 666643 * v109;
  v122 = (v93 + 0x100000) & 0xFFFFFFFFFFE00000;
  v123 = v97 + 470296 * v109 - ((v97 + 0x100000) & 0xFFFFFFFFFFE00000) + (v121 >> 21);
  v124 = v110 + 654183 * v109 - ((v110 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v97 + 0x100000) >> 21) + (v123 >> 21);
  v125 = v111 - 997805 * v109 - ((v111 + 0x100000) & 0xFFFFFFFFFFE00000) + (v124 >> 21);
  v126 = v117 + 136657 * v109 - ((v117 + 0x100000) & 0xFFFFFFFFFFE00000) + (v112 >> 21) + (v125 >> 21);
  v127 = v118 - 683901 * v109 - ((v118 + 0x100000) & 0xFFFFFFFFFFE00000) + (v126 >> 21);
  v128 = v119 + (v127 >> 21);
  v129 = v105 + (v128 >> 21);
  v130 = v104 + (v129 >> 21);
  v131 = v107 + (v130 >> 21);
  v132 = v120 - v122 + (v131 >> 21);
  v133 = v108 + (v132 >> 21);
  v134 = (v121 & 0x1FFFFF) + 666643 * (v133 >> 21);
  a1[33] = (v121 + 11283 * (v133 >> 21)) >> 8;
  v135 = (v123 & 0x1FFFFF) + 470296 * (v133 >> 21) + (v134 >> 21);
  a1[32] = v121 + 19 * (v133 >> 21);
  a1[34] = (((v121 & 0x1FFFFF) + 666643 * (v133 >> 21)) >> 16) & 0x1F | (32 * (v97 + 24 * v109 + (v121 >> 21) + 24 * (v133 >> 21) + (v134 >> 21)));
  a1[35] = v135 >> 3;
  a1[36] = v135 >> 11;
  v136 = (v124 & 0x1FFFFF) + 654183 * (v133 >> 21) + (v135 >> 21);
  a1[37] = (v135 >> 19) & 3 | (4 * (v124 + 103 * (v133 >> 21) + (v135 >> 21)));
  a1[38] = v136 >> 6;
  v137 = (v125 & 0x1FFFFF) - 997805 * (v133 >> 21) + (v136 >> 21);
  a1[39] = (v136 >> 14) & 0x7F | ((v125 - -83 * (v133 >> 21) + (v136 >> 21)) << 7);
  a1[40] = v137 >> 1;
  a1[41] = v137 >> 9;
  v138 = (v126 & 0x1FFFFF) + 136657 * (v133 >> 21) + (v137 >> 21);
  a1[42] = (v137 >> 17) & 0xF | (16 * (v126 - 47 * (v133 >> 21) + (v137 >> 21)));
  a1[43] = v138 >> 4;
  a1[44] = v138 >> 12;
  v139 = (v127 & 0x1FFFFF) - 683901 * (v133 >> 21) + (v138 >> 21);
  a1[45] = ((v138 & 0x100000) != 0) | (2 * (v127 - 125 * (v133 >> 21) + (v138 >> 21)));
  a1[46] = v139 >> 7;
  v140 = (v128 & 0x1FFFFF) + (v139 >> 21);
  a1[47] = (v139 >> 15) & 0x3F | ((v128 + (v139 >> 21)) << 6);
  a1[48] = v140 >> 2;
  a1[49] = v140 >> 10;
  v141 = (v129 & 0x1FFFFF) + (v140 >> 21);
  a1[50] = (v140 >> 18) & 7 | (8 * (v129 + (v140 >> 21)));
  a1[51] = v141 >> 5;
  v142 = (v130 & 0x1FFFFF) + (v141 >> 21);
  a1[52] = v141 >> 13;
  a1[54] = (v130 + (v141 >> 21)) >> 8;
  v143 = (v131 & 0x1FFFFF) + (v142 >> 21);
  a1[53] = v142;
  a1[55] = BYTE2(v142) & 0x1F | (32 * (v131 + (v142 >> 21)));
  a1[56] = v143 >> 3;
  a1[57] = v143 >> 11;
  v144 = (v132 & 0x1FFFFF) + (v143 >> 21);
  v145 = (v133 & 0x1FFFFF) + (v144 >> 21);
  a1[58] = (v143 >> 19) & 3 | (4 * (v132 + (v143 >> 21)));
  a1[59] = v144 >> 6;
  a1[60] = (v144 >> 14) & 0x7F | ((v133 + (v144 >> 21)) << 7);
  a1[61] = ((v144 >> 21) + v133) >> 1;
  a1[62] = v145 >> 9;
  a1[63] = v145 >> 17;
  v146 = *MEMORY[0x277D85DE8];
  return 1;
}

BOOL ED25519_verify(const void *a1, size_t a2, unsigned __int8 *a3, const void *a4)
{
  v70 = *MEMORY[0x277D85DE8];
  if (a3[63] > 0x1Fu)
  {
    goto LABEL_12;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  memset(v39, 0, sizeof(v39));
  v37 = 0u;
  v38 = 0u;
  if (x25519_ge_frombytes_vartime(&v37, a4))
  {
    goto LABEL_12;
  }

  for (i = 0; i != 40; i += 4)
  {
    *(&v37 + i) = -*(&v37 + i);
  }

  for (j = 120; j != 160; j += 4)
  {
    *(&v37 + j) = -*(&v37 + j);
  }

  v10 = *(a3 + 1);
  v57[0] = *a3;
  v57[1] = v10;
  v11 = *(a3 + 2);
  v56 = *(a3 + 3);
  v55 = v11;
  v12 = HIBYTE(v56);
  if (HIBYTE(v56) > 0x10u)
  {
LABEL_12:
    result = 0;
  }

  else
  {
    v13 = 16;
    v14 = 0x1Eu;
    while (v12 >= v13)
    {
      if (v14 != -1)
      {
        v12 = *(&v55 + v14);
        v13 = order[v14--];
        if (v12 <= v13)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    memset(&v36, 0, sizeof(v36));
    SHA512_Init(&v36);
    SHA512_Update(&v36, a3, 0x20uLL);
    SHA512_Update(&v36, a4, 0x20uLL);
    SHA512_Update(&v36, a1, a2);
    SHA512_Final(md, &v36);
    x25519_sc_reduce(md);
    memset(v49, 0, sizeof(v49));
    memset(v48, 0, sizeof(v48));
    memset(v47, 0, sizeof(v47));
    memset(v46, 0, sizeof(v46));
    memset(v45, 0, sizeof(v45));
    slide(v67, md);
    slide(v66, &v55);
    x25519_ge_p3_to_cached(v58, &v37);
    v50 = v37;
    v51 = v38;
    *(v52 + 8) = *(v39 + 8);
    *(&v52[1] + 8) = *(&v39[1] + 8);
    *&v52[0] = *&v39[0];
    *(&v52[2] + 1) = *(&v39[2] + 1);
    v53[0] = v40;
    v53[1] = v41;
    *&v53[2] = v42;
    ge_p2_dbl(v48, &v50);
    x25519_ge_p1p1_to_p3(v45, v48);
    x25519_ge_add(v48, v45, v58);
    x25519_ge_p1p1_to_p3(v46, v48);
    x25519_ge_p3_to_cached(v59, v46);
    x25519_ge_add(v48, v45, v59);
    x25519_ge_p1p1_to_p3(v46, v48);
    x25519_ge_p3_to_cached(v60, v46);
    x25519_ge_add(v48, v45, v60);
    x25519_ge_p1p1_to_p3(v46, v48);
    x25519_ge_p3_to_cached(v61, v46);
    x25519_ge_add(v48, v45, v61);
    x25519_ge_p1p1_to_p3(v46, v48);
    x25519_ge_p3_to_cached(v62, v46);
    x25519_ge_add(v48, v45, v62);
    x25519_ge_p1p1_to_p3(v46, v48);
    x25519_ge_p3_to_cached(v63, v46);
    x25519_ge_add(v48, v45, v63);
    x25519_ge_p1p1_to_p3(v46, v48);
    x25519_ge_p3_to_cached(v64, v46);
    x25519_ge_add(v48, v45, v64);
    x25519_ge_p1p1_to_p3(v46, v48);
    x25519_ge_p3_to_cached(&v65, v46);
    v51 = 0u;
    memset(v52, 0, sizeof(v52));
    v50 = 0u;
    DWORD2(v52[0]) = 1;
    memset(v53 + 4, 0, 36);
    v17 = 255;
    LODWORD(v53[0]) = 1;
    while (1)
    {
      v18 = v17;
      if (v67[v17])
      {
        break;
      }

      v19 = v66[v17];
      if (v66[v18])
      {
        break;
      }

      v17 = v18 - 1;
      if (!v18)
      {
        goto LABEL_43;
      }
    }

    if ((v18 & 0x80000000) == 0)
    {
      do
      {
        ge_p2_dbl(v48, &v50);
        v20 = v67[v18];
        if (v67[v18] < 1)
        {
          if ((v20 & 0x80) != 0)
          {
            x25519_ge_p1p1_to_p3(v46, v48);
            x25519_ge_sub(v48, v46, &v58[40 * (-v20 >> 1)]);
          }
        }

        else
        {
          x25519_ge_p1p1_to_p3(v46, v48);
          x25519_ge_add(v48, v46, &v58[40 * (v20 >> 1)]);
        }

        v21 = v66[v18];
        if (v21 < 1)
        {
          if (v21 < 0)
          {
            x25519_ge_p1p1_to_p3(v46, v48);
            for (k = 0; k != 40; k += 4)
            {
              *(v48 + k) = *(v46 + k) + *(&v46[2] + k + 8);
            }

            v23 = v46;
            for (m = 40; m != 80; m += 4)
            {
              v25 = v23[10];
              v26 = *v23++;
              *(v48 + m) = v25 - v26;
            }

            v69 = 0;
            v27 = &Bi[30 * (-v21 >> 1)];
            memset(v68, 0, sizeof(v68));
            fe_mul(v49, v48, v27 + 10);
            fe_mul(&v48[2] + 2, &v48[2] + 2, v27);
            fe_mul(&v49[2] + 2, v27 + 20, &v47[2] + 2);
            for (n = 0; n != 40; n += 4)
            {
              *(v68 + n) = 2 * *(v47 + n);
            }

            v29 = &v48[2] + 2;
            v30 = 10;
            do
            {
              *(v29 - 10) = v29[10] - *v29;
              ++v29;
              --v30;
            }

            while (v30);
            v31 = &v48[2] + 2;
            v32 = 10;
            do
            {
              *v31 += v31[10];
              ++v31;
              --v32;
            }

            while (v32);
            for (ii = 0; ii != 40; ii += 4)
            {
              *(v49 + ii) = *(v68 + ii) - *(&v49[2] + ii + 8);
            }

            for (jj = 0; jj != 40; jj += 4)
            {
              *(&v49[2] + jj + 8) += *(v68 + jj);
            }
          }
        }

        else
        {
          x25519_ge_p1p1_to_p3(v46, v48);
          ge_madd(v48, v46, &Bi[30 * (v21 >> 1)]);
        }

        x25519_ge_p1p1_to_p2(&v50, v48);
      }

      while (v18-- > 0);
    }

LABEL_43:
    x25519_ge_tobytes(v58, &v50);
    result = timingsafe_memcmp(v58, v57, 32) == 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t x25519_scalar_mult_generic(uint64_t a1, __int128 *a2, unsigned int *a3)
{
  v70 = *MEMORY[0x277D85DE8];
  v69 = 0;
  v67 = 0u;
  v68 = 0u;
  v54 = 0;
  memset(v53, 0, sizeof(v53));
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  v3 = a2[1];
  v48 = *a2;
  v49 = v3;
  LOBYTE(v48) = v48 & 0xF8;
  HIBYTE(v49) = HIBYTE(v3) & 0x3F | 0x40;
  fe_frombytes(&v67, a3);
  v4 = 0;
  v65 = 0u;
  v64 = 0u;
  v66 = 0;
  v63 = 1;
  memset(v61, 0, sizeof(v61));
  v62 = 0;
  v59[0] = v67;
  v59[1] = v68;
  v5 = 254;
  v60 = v69;
  v56 = 0u;
  v57 = 0u;
  v55 = 1;
  v58 = 0;
  do
  {
    v6 = 0;
    v7 = v5;
    v8 = v4;
    v4 = (*(&v48 + (v5 >> 3)) >> (v5 & 7)) & 1;
    v9 = -(v4 ^ v8);
    do
    {
      v10 = *(&v63 + v6);
      v11 = *(v59 + v6);
      v12 = (v11 ^ v10) & v9;
      *(&v63 + v6) = v12 ^ v10;
      *(v59 + v6) = v12 ^ v11;
      v6 += 4;
    }

    while (v6 != 40);
    for (i = 0; i != 40; i += 4)
    {
      v14 = *(v61 + i);
      v15 = *(&v55 + i);
      v16 = (v15 ^ v14) & v9;
      *(v61 + i) = v16 ^ v14;
      *(&v55 + i) = v16 ^ v15;
    }

    for (j = 0; j != 40; j += 4)
    {
      *(v53 + j) = *(v59 + j) - *(&v55 + j);
    }

    for (k = 0; k != 40; k += 4)
    {
      *(&v50 + k) = *(&v63 + k) - *(v61 + k);
    }

    for (m = 0; m != 40; m += 4)
    {
      *(&v63 + m) += *(v61 + m);
    }

    for (n = 0; n != 40; n += 4)
    {
      *(v61 + n) = *(&v55 + n) + *(v59 + n);
    }

    fe_mul(&v55, v53, &v63);
    fe_mul(v61, v61, &v50);
    fe_sq(v53, &v50);
    fe_sq(&v50, &v63);
    for (ii = 0; ii != 40; ii += 4)
    {
      *(v59 + ii) = *(v61 + ii) + *(&v55 + ii);
    }

    for (jj = 0; jj != 40; jj += 4)
    {
      *(v61 + jj) = *(&v55 + jj) - *(v61 + jj);
    }

    fe_mul(&v63, &v50, v53);
    for (kk = 0; kk != 40; kk += 4)
    {
      *(&v50 + kk) -= *(v53 + kk);
    }

    fe_sq(v61, v61);
    v24 = 121666 * SDWORD1(v50) + 0x1000000;
    v25 = 121666 * SDWORD2(v50) + (v24 >> 25);
    v26 = 121666 * SHIDWORD(v52) + 0x1000000;
    v27 = 121666 * SHIDWORD(v50) + 0x1000000;
    v28 = 121666 * v51 + (v27 >> 25);
    v29 = 121666 * SDWORD1(v51) + 0x1000000;
    v30 = 121666 * SDWORD2(v51) + (v29 >> 25);
    v31 = 121666 * DWORD1(v51) - (v29 & 0xFE000000);
    v32 = 121666 * SHIDWORD(v51) + 0x1000000;
    v33 = 121666 * v52 + (v32 >> 25);
    v34 = 121666 * v50 + 19 * (v26 >> 25);
    v55 = v34 - ((v34 + 0x2000000) & 0xFC000000);
    LODWORD(v56) = 121666 * DWORD1(v50) - (v24 & 0xFE000000) + ((v34 + 0x2000000) >> 26);
    DWORD1(v56) = v25 - ((v25 + 0x2000000) & 0xFC000000);
    DWORD2(v56) = 121666 * HIDWORD(v50) - (v27 & 0xFE000000) + ((v25 + 0x2000000) >> 26);
    HIDWORD(v56) = v28 - ((v28 + 0x2000000) & 0xFC000000);
    LODWORD(v57) = v31 + ((v28 + 0x2000000) >> 26);
    DWORD1(v57) = v30 - ((v30 + 0x2000000) & 0xFC000000);
    DWORD2(v57) = 121666 * HIDWORD(v51) - (v32 & 0xFE000000) + ((v30 + 0x2000000) >> 26);
    HIDWORD(v57) = v33 - ((v33 + 0x2000000) & 0xFC000000);
    v58 = 121666 * HIDWORD(v52) - (v26 & 0xFE000000) + ((v33 + 0x2000000) >> 26);
    fe_sq(v59, v59);
    for (mm = 0; mm != 40; mm += 4)
    {
      *(v53 + mm) += *(&v55 + mm);
    }

    fe_mul(&v55, &v67, v61);
    fe_mul(v61, &v50, v53);
    v5 = v7 - 1;
  }

  while (v7);
  v36 = 0;
  v37 = -v4;
  do
  {
    v38 = *(&v63 + v36);
    v39 = *(v59 + v36);
    v40 = (v39 ^ v38) & v37;
    *(&v63 + v36) = v40 ^ v38;
    *(v59 + v36) = v40 ^ v39;
    v36 += 4;
  }

  while (v36 != 40);
  for (nn = 0; nn != 40; nn += 4)
  {
    v42 = *(v61 + nn);
    v43 = *(&v55 + nn);
    v44 = (v43 ^ v42) & v37;
    *(v61 + nn) = v44 ^ v42;
    *(&v55 + nn) = v44 ^ v43;
  }

  fe_invert(v61, v61);
  fe_mul(&v63, &v63, v61);
  result = fe_tobytes(a1, &v63);
  v46 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t X25519_keypair(uint64_t a1, _BYTE *__buf)
{
  arc4random_buf(__buf, 0x20uLL);
  *__buf |= 7u;
  __buf[31] = __buf[31] & 0x3F | 0x80;

  return x25519_scalar_mult(a1, __buf, &X25519_public_from_private_kMongomeryBasePoint);
}

uint64_t slide(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 256; ++i)
  {
    *(result + i) = (*(a2 + (i >> 3)) >> (i & 7)) & 1;
  }

  v3 = 0;
  v4 = result + 1;
  v5 = 1;
  do
  {
    if (*(result + v3) && v3 <= 0xFE)
    {
      v6 = v3;
      v7 = 1;
      v8 = v5;
      do
      {
        v9 = *(result + v8);
        if (*(result + v8))
        {
          v10 = *(result + v3);
          v11 = v9 << v7;
          v12 = (v9 << v7) + v10;
          if (v12 > 15)
          {
            v13 = v10 - v11;
            if (v13 < -15)
            {
              break;
            }

            *(result + v3) = v13;
            v14 = v6;
            while (*(v4 + v14))
            {
              *(v4 + v14++) = 0;
              if (v14 >= 0xFF)
              {
                goto LABEL_16;
              }
            }

            *(v4 + v14) = 1;
          }

          else
          {
            *(result + v3) = v12;
            *(result + v8) = 0;
          }
        }

LABEL_16:
        if (v7 > 5)
        {
          break;
        }

        ++v7;
        ++v8;
        ++v6;
      }

      while (v7 + v3 < 0x100);
    }

    ++v3;
    ++v5;
  }

  while (v3 != 256);
  return result;
}

int RAND_bytes(unsigned __int8 *buf, int num)
{
  if (num >= 1)
  {
    arc4random_buf(buf, num);
  }

  return 1;
}

int RAND_pseudo_bytes(unsigned __int8 *buf, int num)
{
  if (num >= 1)
  {
    arc4random_buf(buf, num);
  }

  return 1;
}

STACK *i2v_POLICY_CONSTRAINTS(uint64_t a1, ASN1_INTEGER **a2, STACK *a3)
{
  extlist = a3;
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    result = sk_new_null();
    v4 = result;
    extlist = result;
    if (!result)
    {
      return result;
    }
  }

  if (X509V3_add_value_int("Require Explicit Policy", *a2, &extlist) && X509V3_add_value_int("Inhibit Policy Mapping", a2[1], &extlist))
  {
    return extlist;
  }

  sk_pop_free(v4, X509V3_conf_free);
  return 0;
}

ASN1_VALUE *v2i_POLICY_CONSTRAINTS(uint64_t a1, uint64_t a2, const STACK *a3)
{
  v4 = ASN1_item_new(&POLICY_CONSTRAINTS_it);
  if (!v4)
  {
    ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_pcons.c", 169);
    return v4;
  }

  if (sk_num(a3) >= 1)
  {
    for (i = 0; i < sk_num(a3); ++i)
    {
      v6 = sk_value(a3, i);
      v7 = *(v6 + 1);
      if (!strcmp(v7, "requireExplicitPolicy"))
      {
        v9 = v6;
        v8 = v4;
      }

      else
      {
        if (strcmp(v7, "inhibitPolicyMapping"))
        {
          ERR_put_error(34, 4095, 106, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_pcons.c", 181);
          ERR_asprintf_error_data("section:%s,name:%s,value:%s", *v6, *(v6 + 1), *(v6 + 2));
LABEL_15:
          ASN1_item_free(v4, &POLICY_CONSTRAINTS_it);
          return 0;
        }

        v8 = (v4 + 8);
        v9 = v6;
      }

      if (!X509V3_get_value_int(v9, v8))
      {
        goto LABEL_15;
      }
    }
  }

  if (!*(v4 + 1) && !*v4)
  {
    ERR_put_error(34, 4095, 151, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_pcons.c", 187);
    goto LABEL_15;
  }

  return v4;
}

ASN1_VALUE *__cdecl ASN1_item_new(const ASN1_ITEM *it)
{
  pval = 0;
  if (asn1_item_ex_new(&pval, it))
  {
    return pval;
  }

  else
  {
    return 0;
  }
}

uint64_t asn1_item_ex_new(ASN1_VALUE **pval, ASN1_ITEM *it)
{
  funcs = it->funcs;
  if (funcs)
  {
    v5 = funcs[3];
  }

  else
  {
    v5 = 0;
  }

  *pval = 0;
  itype = it->itype;
  v7 = 1;
  if (itype > 3)
  {
    if (itype == 6)
    {
      goto LABEL_21;
    }

    if (itype != 5)
    {
      if (itype != 4)
      {
        return v7;
      }

      v10 = it->funcs;
      if (!v10)
      {
        return v7;
      }

      v11 = v10[1];
      if (!v11 || v11(pval, it))
      {
        return v7;
      }

      goto LABEL_36;
    }

LABEL_35:
    if (ASN1_primitive_new(pval, it))
    {
      return v7;
    }

    goto LABEL_36;
  }

  if (!it->itype)
  {
    templates = it->templates;
    if (templates)
    {
      if (ASN1_template_new(pval, templates))
      {
        return v7;
      }

      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (itype == 1)
  {
LABEL_21:
    if (v5)
    {
      v12 = v5(0, pval, it, 0);
      if (!v12)
      {
        goto LABEL_31;
      }

      if (v12 == 2)
      {
        return v7;
      }
    }

    v13 = malloc_type_calloc(1uLL, it->size, 0x481482C8uLL);
    *pval = v13;
    if (v13)
    {
      asn1_do_lock(pval, 0, it);
      asn1_enc_init(pval, it);
      if (it->tcount < 1)
      {
LABEL_29:
        v7 = 1;
        if (!v5)
        {
          return v7;
        }

        goto LABEL_30;
      }

      v14 = 0;
      v15 = it->templates;
      while (1)
      {
        field_ptr = asn1_get_field_ptr(pval, v15);
        if (!ASN1_template_new(field_ptr, v15))
        {
          break;
        }

        ++v15;
        if (it->tcount <= ++v14)
        {
          goto LABEL_29;
        }
      }
    }

LABEL_36:
    ERR_put_error(13, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/tasn_new.c", 172);
    return 0;
  }

  if (itype != 2)
  {
    return v7;
  }

  if (v5)
  {
    v8 = v5(0, pval, it, 0);
    if (v8)
    {
      if (v8 == 2)
      {
        return v7;
      }

      goto LABEL_11;
    }

LABEL_31:
    ERR_put_error(13, 4095, 100, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/tasn_new.c", 176);
    ASN1_item_ex_free(pval, it);
    return 0;
  }

LABEL_11:
  v9 = malloc_type_calloc(1uLL, it->size, 0x6238A6F2uLL);
  *pval = v9;
  if (!v9)
  {
    goto LABEL_36;
  }

  asn1_set_choice_selector(pval, -1, it);
  if (!v5)
  {
    return v7;
  }

LABEL_30:
  if (!v5(1, pval, it, 0))
  {
    goto LABEL_31;
  }

  return v7;
}

int ASN1_template_new(ASN1_VALUE **pval, const ASN1_TEMPLATE *tt)
{
  templates = tt;
  flags = tt->flags;
  if (tt->flags)
  {
    while ((templates->flags & 0x306) == 0)
    {
      item = templates->item;
      itype = item->itype;
      if (item->itype)
      {
        if (item->itype <= 3u)
        {
          if ((itype - 1) >= 2)
          {
            return 1;
          }
        }

        else
        {
          if (itype == 6)
          {
            goto LABEL_18;
          }

          if (itype == 5)
          {
LABEL_20:
            asn1_primitive_clear(pval, item);
            return 1;
          }

          if (itype != 4)
          {
            return 1;
          }

          funcs = item->funcs;
          if (funcs)
          {
            v9 = funcs[3];
            if (v9)
            {
              v9(pval);
              return 1;
            }
          }
        }

        goto LABEL_18;
      }

      templates = item->templates;
      if (!templates)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_18;
  }

  if ((flags & 0x300) != 0)
  {
LABEL_18:
    *pval = 0;
    return 1;
  }

  if ((flags & 6) != 0)
  {
    v5 = sk_new_null();
    if (v5)
    {
      *pval = v5;
      return 1;
    }

    ERR_put_error(13, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/tasn_new.c", 236);
    return 0;
  }

  else
  {
    v11 = tt->item;

    return asn1_item_ex_new(pval, v11);
  }
}

int ASN1_primitive_new(ASN1_VALUE **pval, const ASN1_ITEM *it)
{
  if (!it)
  {
    v7 = ASN1_STRING_type_new(-1);
LABEL_8:
    *pval = v7;
    return v7 != 0;
  }

  funcs = it->funcs;
  if (!funcs)
  {
    if (it->itype == 5)
    {
      utype = -1;
LABEL_11:
      v7 = ASN1_STRING_type_new(utype);
      if (it->itype == 5 && v7)
      {
        *(v7 + 2) |= 0x40uLL;
      }

      goto LABEL_8;
    }

    utype = it->utype;
    if (utype > 4)
    {
      if (utype == 5)
      {
        result = 1;
        *pval = 1;
        return result;
      }

      if (utype != 6)
      {
        goto LABEL_11;
      }

      *pval = OBJ_nid2obj(0);
    }

    else
    {
      if (utype == -4)
      {
        v7 = malloc_type_malloc(0x10uLL, 0x1032040EB7D8BF6uLL);
        if (v7)
        {
          *(v7 + 1) = 0;
          *v7 = -1;
        }

        goto LABEL_8;
      }

      if (utype != 1)
      {
        goto LABEL_11;
      }

      *pval = it->size;
    }

    return 1;
  }

  v5 = *(funcs + 2);
  if (!v5)
  {
    return 0;
  }

  return v5();
}

_DWORD *asn1_primitive_clear(_DWORD *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 32);
    if (v2)
    {
      v3 = *(v2 + 32);
      if (v3)
      {
        return v3();
      }
    }

    else if (*a2 != 5 && *(a2 + 8) == 1)
    {
      *result = *(a2 + 40);
      return result;
    }
  }

  *result = 0;
  return result;
}

int i2d_PKCS8PrivateKeyInfo_bio(BIO *bp, EVP_PKEY *key)
{
  v3 = EVP_PKEY2PKCS8(key);
  if (v3)
  {
    v4 = v3;
    v5 = ASN1_item_i2d_bio(&PKCS8_PRIV_KEY_INFO_it, bp, v3);
    PKCS8_PRIV_KEY_INFO_free(v4);
    LODWORD(v3) = v5;
  }

  return v3;
}

int i2d_PKCS8PrivateKeyInfo_fp(FILE *fp, EVP_PKEY *key)
{
  v3 = EVP_PKEY2PKCS8(key);
  if (v3)
  {
    v4 = v3;
    v5 = ASN1_item_i2d_fp(&PKCS8_PRIV_KEY_INFO_it, fp, v3);
    PKCS8_PRIV_KEY_INFO_free(v4);
    LODWORD(v3) = v5;
  }

  return v3;
}

int X509_verify(X509 *a, EVP_PKEY *r)
{
  if (X509_ALGOR_cmp(a->sig_alg, a->cert_info->signature))
  {
    return 0;
  }

  sig_alg = a->sig_alg;
  signature = a->signature;
  cert_info = a->cert_info;

  return ASN1_item_verify(&X509_CINF_it, sig_alg, signature, cert_info, r);
}

int X509_sign(X509 *x, EVP_PKEY *pkey, const EVP_MD *md)
{
  cert_info = x->cert_info;
  sig_alg = x->sig_alg;
  cert_info->enc.modified = 1;
  return ASN1_item_sign(&X509_CINF_it, cert_info->signature, sig_alg, x->signature, cert_info, pkey, md);
}

uint64_t X509_sign_ctx(uint64_t *a1, EVP_MD_CTX *ctx)
{
  v3 = *a1;
  v2 = a1[1];
  *(v3 + 96) = 1;
  return ASN1_item_sign_ctx(&X509_CINF_it, *(v3 + 16), v2, a1[2], v3, ctx);
}

int X509_CRL_sign(X509_CRL *x, EVP_PKEY *pkey, const EVP_MD *md)
{
  crl = x->crl;
  sig_alg = x->sig_alg;
  crl->enc.modified = 1;
  return ASN1_item_sign(&X509_CRL_INFO_it, crl->sig_alg, sig_alg, x->signature, crl, pkey, md);
}

uint64_t X509_CRL_sign_ctx(uint64_t *a1, EVP_MD_CTX *ctx)
{
  v3 = *a1;
  v2 = a1[1];
  *(v3 + 72) = 1;
  return ASN1_item_sign_ctx(&X509_CRL_INFO_it, *(v3 + 8), v2, a1[2], v3, ctx);
}

int X509_pubkey_digest(const X509 *data, const EVP_MD *type, unsigned __int8 *md, unsigned int *len)
{
  v7 = X509_get0_pubkey_bitstr(data);
  if (v7)
  {
    length = v7->length;
    v9 = v7->data;

    LODWORD(v7) = EVP_Digest(v9, length, md, len, type, 0);
  }

  return v7;
}

int EC_GROUP_check(const EC_GROUP *group, BN_CTX *ctx)
{
  v4 = ctx;
  if (!ctx)
  {
    v4 = BN_CTX_new();
    if (!v4)
    {
      goto LABEL_16;
    }
  }

  BN_CTX_start(v4);
  v5 = BN_CTX_get(v4);
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = v5;
  if (!EC_GROUP_check_discriminant(group, v4))
  {
    v11 = 118;
    v12 = 79;
LABEL_15:
    ERR_put_error(16, 4095, v11, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_check.c", v12);
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  v7 = *(group + 1);
  if (!v7)
  {
    v11 = 113;
    v12 = 84;
    goto LABEL_15;
  }

  if (EC_POINT_is_on_curve(group, v7, v4) <= 0)
  {
    v11 = 107;
    v12 = 88;
    goto LABEL_15;
  }

  v8 = EC_POINT_new(group);
  if (!v8 || !EC_GROUP_get_order(group, v6, v4))
  {
    goto LABEL_17;
  }

  if (BN_is_zero(v6))
  {
    v9 = 128;
    v10 = 97;
LABEL_11:
    ERR_put_error(16, 4095, v9, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_check.c", v10);
LABEL_17:
    v13 = 0;
    goto LABEL_18;
  }

  if (!EC_POINT_mul(group, v8, v6, 0, 0, v4))
  {
    goto LABEL_17;
  }

  if (EC_POINT_is_at_infinity(group, v8) <= 0)
  {
    v9 = 122;
    v10 = 103;
    goto LABEL_11;
  }

  v13 = 1;
LABEL_18:
  BN_CTX_end(v4);
  if (v4 != ctx)
  {
    BN_CTX_free(v4);
  }

  EC_POINT_free(v8);
  return v13;
}

uint64_t SM3_Update(unint64_t a1, unsigned int *__src, size_t __n)
{
  if (__n)
  {
    v3 = __n;
    v4 = __src;
    *(a1 + 32) += 8 * __n;
    v6 = *(a1 + 104);
    if (v6)
    {
      v7 = (a1 + 40);
      if (__n <= 0x3F && v6 + __n < 0x40)
      {
        memcpy(v7 + v6, __src, __n);
        *(a1 + 104) += v3;
        return 1;
      }

      v8 = 64 - v6;
      memcpy(v7 + v6, __src, 64 - v6);
      SM3_block_data_order(a1, (a1 + 40), 1);
      v4 = (v4 + v8);
      v3 -= v8;
      *(a1 + 104) = 0;
      *v7 = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
    }

    if (v3 >= 0x40)
    {
      SM3_block_data_order(a1, v4, v3 >> 6);
      v4 = (v4 + (v3 & 0xFFFFFFFFFFFFFFC0));
      v3 &= 0x3Fu;
    }

    if (v3)
    {
      *(a1 + 104) = v3;
      memcpy((a1 + 40), v4, v3);
    }
  }

  return 1;
}

unint64_t SM3_block_data_order(unint64_t result, unsigned int *a2, uint64_t a3)
{
  v1105 = result;
  if (a3)
  {
    v3 = *result;
    v4 = *(result + 4);
    v5 = *(result + 8);
    v6 = *(result + 12);
    v8 = *(result + 16);
    v7 = *(result + 20);
    LODWORD(result) = *(result + 24);
    v9 = v1105[7];
    do
    {
      v1115 = v9;
      v1116 = v6;
      v1120 = result;
      v1121 = v7;
      v1122 = v5;
      v1123 = v4;
      v1125 = v3;
      v1126 = a2;
      v1117 = a3;
      HIDWORD(v10) = v3;
      LODWORD(v10) = v3;
      v11 = a2[1];
      HIDWORD(v10) = (v10 >> 20) + v8 + 2043430169;
      LODWORD(v10) = HIDWORD(v10);
      v12 = v10 >> 25;
      v13 = bswap32(*a2);
      v14 = a2[5];
      v15 = bswap32(a2[4]);
      v16 = (v4 ^ v1125 ^ v5) + v6;
      v18 = __PAIR64__(v4, __ROR4__(v1125, 20));
      v17 = v12 ^ v18;
      LODWORD(v18) = v4;
      v19 = v18 >> 23;
      HIDWORD(v18) = v7;
      LODWORD(v18) = v7;
      v20 = v18 >> 13;
      v21 = v9 + (v7 ^ v8 ^ result) + v12 + v13;
      HIDWORD(v18) = v21;
      LODWORD(v18) = v21;
      v22 = (v18 >> 15) ^ __ROR4__(v21, 23);
      v23 = v16 + (v15 ^ v13) + v17;
      HIDWORD(v18) = v23;
      LODWORD(v18) = v23;
      v24 = v18 >> 20;
      v25 = bswap32(v11);
      v26 = bswap32(v1126[2]);
      v27 = bswap32(v1126[3]);
      v28 = bswap32(v14);
      v29 = bswap32(v1126[6]);
      v1118 = bswap32(v1126[7]);
      HIDWORD(v18) = v27;
      LODWORD(v18) = v27;
      v30 = bswap32(v1126[13]);
      v31 = v1118 ^ v13;
      v32 = v1118 ^ v13 ^ __ROR4__(v30, 17);
      v33 = v30;
      v1111 = bswap32(v1126[9]);
      v1112 = bswap32(v1126[8]);
      v34 = (v18 >> 25) ^ __ROR4__(v32, 9);
      v35 = bswap32(v1126[10]);
      v36 = bswap32(v1126[11]);
      v38 = __PAIR64__(v1125, __ROR4__(v32, 17));
      v37 = v34 ^ v38;
      v39 = bswap32(v1126[14]);
      v40 = v22 ^ v21;
      LODWORD(v38) = v1125;
      v41 = v38 >> 23;
      v42 = v24 - 208106958;
      v43 = v37 ^ v31;
      HIDWORD(v38) = v8;
      LODWORD(v38) = v8;
      v44 = v38 >> 13;
      v1114 = v8;
      HIDWORD(v38) = v40 + v42;
      LODWORD(v38) = v40 + v42;
      v45 = v38 >> 25;
      v46 = v25 + v1120 + (v8 ^ __ROR4__(v1121, 13) ^ v40) + v45;
      HIDWORD(v38) = v46;
      LODWORD(v38) = v46;
      v47 = v38 >> 15;
      v48 = v1112 ^ v25 ^ __ROR4__(v39, 17);
      v49 = bswap32(v1126[15]);
      v50 = v43 ^ __ROR4__(v30, 17) ^ v35;
      v51 = (v1125 ^ __ROR4__(v1123, 23) ^ v23) + v1122 + (v28 ^ v25) + (v45 ^ __ROR4__(v23, 20));
      v53 = __PAIR64__(v15, __ROR4__(v46, 23));
      v52 = v47 ^ v53;
      LODWORD(v53) = v15;
      v54 = (v53 >> 25) ^ __ROR4__(v48, 9) ^ __ROR4__(v48, 17) ^ v1112 ^ v25;
      v55 = v52 ^ v46;
      v57 = __PAIR64__(v51, __ROR4__(v39, 17));
      v56 = v54 ^ v57;
      LODWORD(v57) = v51;
      HIDWORD(v57) = (v57 >> 20) - 416213915 + (v52 ^ v46);
      LODWORD(v57) = HIDWORD(v57);
      v58 = v57 >> 25;
      v59 = v58 ^ __ROR4__(v51, 20);
      v60 = v26 + v20 + (v40 ^ __ROR4__(v8, 13) ^ v55) + v58;
      v61 = (v29 ^ v26) + v19 + (v23 ^ __ROR4__(v1125, 23) ^ v51);
      v62 = v1111 ^ v26;
      v64 = __PAIR64__(v28, __ROR4__(v49, 17));
      v63 = v62 ^ v64;
      v65 = v49;
      v1107 = v49;
      LODWORD(v64) = v28;
      v66 = (v64 >> 25) ^ __ROR4__(v63, 9);
      v67 = v56 ^ v36;
      v69 = __PAIR64__(v23, __ROR4__(v63, 17));
      v68 = v66 ^ v69;
      LODWORD(v69) = v23;
      v70 = v69 >> 23;
      v71 = v68 ^ v62;
      v72 = v61 + v59;
      v73 = (v1118 ^ v27) + v41;
      v74 = v27 + v44;
      v75 = v35 ^ v27;
      HIDWORD(v69) = v29;
      LODWORD(v69) = v29;
      v76 = v35 ^ v27 ^ __ROR4__(v50, 17);
      v77 = (v69 >> 25) ^ __ROR4__(v76, 9);
      v79 = __PAIR64__(v60, __ROR4__(v76, 17));
      v78 = v77 ^ v79;
      LODWORD(v79) = v60;
      v80 = v79 >> 15;
      v81 = __PAIR64__(v40, __ROR4__(v60, 23));
      v82 = v80 ^ v81 ^ v60;
      LODWORD(v81) = v40;
      v83 = v81 >> 13;
      v84 = v71 ^ __ROR4__(v65, 17);
      v85 = __PAIR64__(v72, __ROR4__(v40, 13));
      v86 = v74 + (v55 ^ v85 ^ v82);
      LODWORD(v85) = v72;
      HIDWORD(v85) = (v85 >> 20) - 832427829 + v82;
      LODWORD(v85) = HIDWORD(v85);
      v87 = v85 >> 25;
      v88 = bswap32(v1126[12]);
      v89 = v84 ^ v88;
      v90 = v86 + v87;
      v92 = __PAIR64__(v51, __ROR4__(v72, 20));
      v91 = v87 ^ v92;
      v93 = v73 + (v51 ^ __ROR4__(v23, 23) ^ v72);
      LODWORD(v92) = v51;
      v94 = v92 >> 23;
      HIDWORD(v92) = v55;
      LODWORD(v92) = v55;
      v95 = v92 >> 13;
      v96 = v93 + v91;
      HIDWORD(v92) = v90;
      LODWORD(v92) = v90;
      v97 = (v92 >> 15) ^ __ROR4__(v90, 23);
      v98 = __PAIR64__(v96, __ROR4__(v50, 17));
      v99 = v78 ^ v75 ^ v98 ^ v33;
      v100 = v97 ^ v90;
      v101 = (v1112 ^ v15) + v70;
      LODWORD(v98) = v96;
      HIDWORD(v98) = (v98 >> 20) - 1664855657 + v100;
      LODWORD(v98) = HIDWORD(v98);
      v102 = v98 >> 25;
      v103 = v15 + v83 + (v82 ^ __ROR4__(v55, 13) ^ v100) + v102;
      v104 = v101 + (v72 ^ __ROR4__(v51, 23) ^ v96) + (v102 ^ __ROR4__(v96, 20));
      v105 = v36 ^ v15;
      v106 = v67;
      v108 = __PAIR64__(v1118, __ROR4__(v67, 17));
      v107 = v36 ^ v15 ^ v108;
      LODWORD(v108) = v1118;
      v109 = v108 >> 25;
      HIDWORD(v108) = v72;
      LODWORD(v108) = v72;
      v110 = v108 >> 23;
      v111 = __PAIR64__(v82, __ROR4__(v107, 17));
      v112 = v109 ^ __ROR4__(v107, 9) ^ v111 ^ v105;
      LODWORD(v111) = v82;
      v113 = v111 >> 13;
      v114 = (v1111 ^ v28) + v94;
      HIDWORD(v111) = v103;
      LODWORD(v111) = v103;
      v115 = (v111 >> 15) ^ __ROR4__(v103, 23);
      v117 = __PAIR64__(v104, __ROR4__(v67, 17));
      v116 = v112 ^ v117;
      v118 = v115 ^ v103;
      LODWORD(v117) = v104;
      HIDWORD(v117) = (v117 >> 20) + 965255983 + (v115 ^ v103);
      LODWORD(v117) = HIDWORD(v117);
      v119 = v117 >> 25;
      v120 = v116 ^ v39;
      v121 = v96 ^ __ROR4__(v72, 23);
      v122 = v119 ^ __ROR4__(v104, 20);
      v123 = v95 + v28 + (v100 ^ __ROR4__(v82, 13) ^ v118) + v119;
      v124 = v88 ^ v28;
      v1109 = v89;
      v126 = __PAIR64__(v1112, __ROR4__(v89, 17));
      v125 = v124 ^ v126;
      v127 = v114 + (v121 ^ v104);
      LODWORD(v126) = v1112;
      v128 = (v126 >> 25) ^ __ROR4__(v125, 9);
      v130 = __PAIR64__(v96, __ROR4__(v125, 17));
      v129 = v128 ^ v130;
      LODWORD(v130) = v96;
      v131 = v130 >> 23;
      v132 = v129 ^ v124;
      v133 = (v35 ^ v29) + v110;
      HIDWORD(v130) = v100;
      LODWORD(v130) = v100;
      v134 = v130 >> 13;
      v135 = v127 + v122;
      HIDWORD(v130) = v123;
      LODWORD(v130) = v123;
      v136 = (v130 >> 15) ^ __ROR4__(v123, 23);
      v137 = __PAIR64__(v135, __ROR4__(v89, 17));
      v138 = v132 ^ v137 ^ v1107;
      v139 = v136 ^ v123;
      LODWORD(v137) = v135;
      HIDWORD(v137) = (v137 >> 20) + 1930511966 + (v136 ^ v123);
      LODWORD(v137) = HIDWORD(v137);
      v140 = v137 >> 25;
      v142 = __PAIR64__(v1111, __ROR4__(v135, 20));
      v141 = v140 ^ v142;
      v143 = v113 + v29 + (v118 ^ __ROR4__(v100, 13) ^ v139) + v140;
      v144 = v33 ^ v29;
      LODWORD(v142) = v1111;
      v145 = v133 + (v104 ^ __ROR4__(v96, 23) ^ v135);
      v146 = v144 ^ __ROR4__(v99, 17);
      v147 = (v142 >> 25) ^ __ROR4__(v146, 9);
      v149 = __PAIR64__(v104, __ROR4__(v146, 17));
      v148 = v147 ^ v149;
      LODWORD(v149) = v104;
      v150 = v149 >> 23;
      v151 = v145 + v141;
      HIDWORD(v149) = v143;
      LODWORD(v149) = v143;
      v152 = (v149 >> 15) ^ __ROR4__(v143, 23);
      v154 = __PAIR64__(v151, __ROR4__(v99, 17));
      v153 = v148 ^ v144 ^ v154;
      v155 = v152 ^ v143;
      LODWORD(v154) = v151;
      HIDWORD(v154) = (v154 >> 20) - 433943364 + (v152 ^ v143);
      LODWORD(v154) = HIDWORD(v154);
      v156 = v154 >> 25;
      v157 = (v36 ^ v1118) + v131 + (v135 ^ __ROR4__(v104, 23) ^ v151);
      v158 = v156 ^ __ROR4__(v151, 20);
      v159 = v134 + v1118 + (v139 ^ __ROR4__(v118, 13) ^ v155) + v156;
      v160 = v157 + v158;
      HIDWORD(v154) = v159;
      LODWORD(v154) = v159;
      v161 = v154 >> 15;
      v1110 = v120;
      v163 = __PAIR64__(v118, __ROR4__(v120, 17));
      v162 = v39 ^ v1118 ^ v163;
      LODWORD(v163) = v118;
      v164 = v163 >> 13;
      HIDWORD(v163) = v35;
      LODWORD(v163) = v35;
      v165 = (v163 >> 25) ^ __ROR4__(v162, 9);
      v167 = __PAIR64__(v135, __ROR4__(v162, 17));
      v166 = v165 ^ v167;
      LODWORD(v167) = v135;
      v168 = v167 >> 23;
      v169 = v153 ^ v50;
      v170 = __PAIR64__(v160, __ROR4__(v120, 17));
      v1119 = v166 ^ v39 ^ v1118 ^ v170 ^ v106;
      v171 = v161 ^ __ROR4__(v159, 23) ^ v159;
      LODWORD(v170) = v160;
      v172 = v151 ^ __ROR4__(v135, 23) ^ v160;
      HIDWORD(v170) = (v170 >> 20) - 867886727 + v171;
      LODWORD(v170) = HIDWORD(v170);
      v173 = v170 >> 25;
      v174 = v164 + v1112 + (v155 ^ __ROR4__(v139, 13) ^ v171);
      v175 = v173 ^ __ROR4__(v160, 20);
      v176 = v174 + v173;
      v178 = __PAIR64__(v36, __ROR4__(v138, 17));
      v177 = v1107 ^ v1112 ^ v178;
      LODWORD(v178) = v36;
      v179 = v178 >> 25;
      v181 = __PAIR64__(v139, __ROR4__(v177, 9));
      v180 = v179 ^ v181;
      LODWORD(v181) = v139;
      v182 = v180 ^ __ROR4__(v177, 17) ^ v1107 ^ v1112;
      v183 = v168 + (v33 ^ v1111);
      v184 = (v181 >> 13) + v1111;
      v185 = (v88 ^ v1112) + v150 + v172 + v175;
      v187 = __PAIR64__(v88, __ROR4__(v169, 17));
      v186 = v50 ^ v1111 ^ v187;
      LODWORD(v187) = v88;
      v188 = v187 >> 25;
      v189 = v88;
      HIDWORD(v187) = v151;
      LODWORD(v187) = v151;
      v190 = v187 >> 23;
      v192 = __PAIR64__(v176, __ROR4__(v186, 17));
      v191 = v188 ^ __ROR4__(v186, 9) ^ v192;
      LODWORD(v192) = v176;
      v193 = v192 >> 15;
      v194 = __PAIR64__(v155, __ROR4__(v176, 23));
      v195 = v193 ^ v194 ^ v176;
      LODWORD(v194) = v155;
      v196 = v194 >> 13;
      v197 = v182 ^ __ROR4__(v138, 17);
      v198 = __PAIR64__(v185, __ROR4__(v155, 13));
      v199 = v184 + (v171 ^ v198 ^ v195);
      LODWORD(v198) = v185;
      HIDWORD(v198) = (v198 >> 20) - 1735773453 + v195;
      LODWORD(v198) = HIDWORD(v198);
      v200 = v198 >> 25;
      v201 = v199 + v200;
      v203 = __PAIR64__(v160, __ROR4__(v185, 20));
      v202 = v200 ^ v203;
      LODWORD(v203) = v160;
      v204 = v203 >> 23;
      v205 = v191 ^ v50 ^ v1111;
      HIDWORD(v203) = v171;
      LODWORD(v203) = v171;
      v206 = v203 >> 13;
      v207 = v183 + (v160 ^ __ROR4__(v151, 23) ^ v185) + v202;
      HIDWORD(v203) = v201;
      LODWORD(v203) = v201;
      v208 = (v203 >> 15) ^ __ROR4__(v201, 23);
      v209 = __PAIR64__(v207, __ROR4__(v169, 17));
      v210 = v205 ^ v209 ^ v99;
      v211 = v208 ^ v201;
      LODWORD(v209) = v207;
      HIDWORD(v209) = (v209 >> 20) + 823420391 + (v208 ^ v201);
      LODWORD(v209) = HIDWORD(v209);
      v212 = v209 >> 25;
      v213 = v196 + v35 + (v195 ^ __ROR4__(v171, 13) ^ v208 ^ v201) + v212;
      v214 = v190 + (v39 ^ v35) + (v185 ^ __ROR4__(v160, 23) ^ v207) + (v212 ^ __ROR4__(v207, 20));
      v215 = v106 ^ v35;
      v217 = __PAIR64__(v33, __ROR4__(v1119, 17));
      v216 = v106 ^ v35 ^ v217;
      LODWORD(v217) = v33;
      v218 = v217 >> 25;
      HIDWORD(v217) = v185;
      LODWORD(v217) = v185;
      v219 = v217 >> 23;
      v220 = __PAIR64__(v195, __ROR4__(v216, 17));
      v221 = v218 ^ __ROR4__(v216, 9) ^ v220 ^ v215;
      LODWORD(v220) = v195;
      v222 = v220 >> 13;
      v223 = v204 + (v1107 ^ v36);
      HIDWORD(v220) = v213;
      LODWORD(v220) = v213;
      v224 = (v220 >> 15) ^ __ROR4__(v213, 23);
      v226 = __PAIR64__(v214, __ROR4__(v1119, 17));
      v225 = v221 ^ v226;
      v227 = v224 ^ v213;
      LODWORD(v226) = v214;
      HIDWORD(v226) = (v226 >> 20) + 1646840782 + (v224 ^ v213);
      LODWORD(v226) = HIDWORD(v226);
      v228 = v226 >> 25;
      v229 = v225 ^ v1110;
      v230 = v207 ^ __ROR4__(v185, 23);
      v231 = v228 ^ __ROR4__(v214, 20);
      v232 = v206 + v36 + (v211 ^ __ROR4__(v195, 13) ^ v227) + v228;
      v233 = v89 ^ v36;
      v235 = __PAIR64__(v39, __ROR4__(v197 ^ v89, 17));
      v234 = v233 ^ v235;
      v236 = v223 + (v230 ^ v214);
      LODWORD(v235) = v39;
      v237 = (v235 >> 25) ^ __ROR4__(v234, 9);
      v239 = __PAIR64__(v207, __ROR4__(v234, 17));
      v238 = v237 ^ v239;
      LODWORD(v239) = v207;
      v240 = v239 >> 23;
      v241 = v238 ^ v233;
      HIDWORD(v239) = v211;
      LODWORD(v239) = v211;
      v242 = v239 >> 13;
      v243 = v236 + v231;
      HIDWORD(v239) = v232;
      LODWORD(v239) = v232;
      v244 = (v239 >> 15) ^ __ROR4__(v232, 23);
      v245 = __PAIR64__(v243, __ROR4__(v197 ^ v89, 17));
      v246 = v241 ^ v245 ^ v138;
      v247 = v244 ^ v232;
      LODWORD(v245) = v243;
      HIDWORD(v245) = (v245 >> 20) - 1001285732 + (v244 ^ v232);
      LODWORD(v245) = HIDWORD(v245);
      v248 = v245 >> 25;
      v249 = v214 ^ __ROR4__(v207, 23);
      v251 = __PAIR64__(v1107, __ROR4__(v243, 20));
      v250 = v248 ^ v251;
      v252 = v222 + v189 + (v227 ^ __ROR4__(v211, 13) ^ v247) + v248;
      LODWORD(v251) = v1107;
      v253 = v219 + (v50 ^ v189) + (v249 ^ v243);
      v254 = v99 ^ v189 ^ __ROR4__(v210, 17);
      v255 = (v251 >> 25) ^ __ROR4__(v254, 9);
      v257 = __PAIR64__(v214, __ROR4__(v254, 17));
      v256 = v255 ^ v257;
      LODWORD(v257) = v214;
      v258 = v257 >> 23;
      v259 = v253 + v250;
      HIDWORD(v257) = v252;
      LODWORD(v257) = v252;
      v260 = (v257 >> 15) ^ __ROR4__(v252, 23);
      v262 = __PAIR64__(v259, __ROR4__(v210, 17));
      v261 = v256 ^ v99 ^ v189 ^ v262;
      v263 = v260 ^ v252;
      LODWORD(v262) = v259;
      HIDWORD(v262) = (v262 >> 20) - 2002571463 + (v260 ^ v252);
      LODWORD(v262) = HIDWORD(v262);
      v264 = v262 >> 25;
      v265 = v240 + (v106 ^ v33) + (v243 ^ __ROR4__(v214, 23) ^ v259);
      v266 = v264 ^ __ROR4__(v259, 20);
      v267 = v242 + v33 + (v247 ^ __ROR4__(v227, 13) ^ v263) + v264;
      v268 = v265 + v266;
      HIDWORD(v262) = v267;
      LODWORD(v262) = v267;
      v269 = v262 >> 15;
      v270 = v1110 ^ v33;
      v272 = __PAIR64__(v227, __ROR4__(v229, 17));
      v271 = v270 ^ v272;
      LODWORD(v272) = v227;
      v273 = v272 >> 13;
      HIDWORD(v272) = v50;
      LODWORD(v272) = v50;
      v274 = (v272 >> 25) ^ __ROR4__(v271, 9);
      v276 = __PAIR64__(v243, __ROR4__(v271, 17));
      v275 = v274 ^ v276;
      LODWORD(v276) = v243;
      v277 = v276 >> 23;
      v278 = v261 ^ v169;
      v279 = __PAIR64__(v268, __ROR4__(v229, 17));
      v1106 = v275 ^ v270 ^ v279 ^ v1119;
      v280 = v269 ^ __ROR4__(v267, 23) ^ v267;
      LODWORD(v279) = v268;
      v281 = v279 >> 20;
      HIDWORD(v279) = v247;
      LODWORD(v279) = v247;
      v282 = v279 >> 13;
      HIDWORD(v279) = v281 + 289824371 + v280;
      LODWORD(v279) = HIDWORD(v279);
      v283 = v279 >> 25;
      v284 = v258 + (v89 ^ v39) + (v259 ^ __ROR4__(v243, 23) ^ v268);
      v286 = __PAIR64__(v259, __ROR4__(v268, 20));
      v285 = v283 ^ v286;
      v287 = v273 + v39 + (v263 ^ __ROR4__(v247, 13) ^ v280) + v283;
      LODWORD(v286) = v259;
      v288 = v286 >> 23;
      v289 = v138 ^ v39;
      v1113 = v246;
      v291 = __PAIR64__(v106, __ROR4__(v246, 17));
      v290 = v289 ^ v291;
      v292 = v284 + v285;
      LODWORD(v291) = v106;
      v293 = (v291 >> 25) ^ __ROR4__(v290, 9);
      v295 = __PAIR64__(v263, __ROR4__(v290, 17));
      v294 = v293 ^ v295;
      LODWORD(v295) = v263;
      v296 = v295 >> 13;
      v297 = v294 ^ v289;
      HIDWORD(v295) = v287;
      LODWORD(v295) = v287;
      v298 = (v295 >> 15) ^ __ROR4__(v287, 23);
      v300 = __PAIR64__(v292, __ROR4__(v246, 17));
      v299 = v297 ^ v300;
      v301 = v298 ^ v287;
      LODWORD(v300) = v292;
      HIDWORD(v300) = (v300 >> 20) + 579648742 + (v298 ^ v287);
      LODWORD(v300) = HIDWORD(v300);
      v302 = v300 >> 25;
      v303 = v277 + (v99 ^ v1107) + (v268 ^ __ROR4__(v259, 23) ^ v292);
      v304 = v282 + v1107 + (v280 ^ __ROR4__(v263, 13) ^ v301) + v302;
      v305 = v303 + (v302 ^ __ROR4__(v292, 20));
      v307 = __PAIR64__(v89, __ROR4__(v278, 17));
      v306 = v169 ^ v1107 ^ v307;
      LODWORD(v307) = v1109;
      v308 = v307 >> 25;
      HIDWORD(v307) = v268;
      LODWORD(v307) = v268;
      v309 = v307 >> 23;
      v311 = __PAIR64__(v304, __ROR4__(v306, 17));
      v310 = v308 ^ __ROR4__(v306, 9) ^ v311;
      LODWORD(v311) = v304;
      v312 = v311 >> 15;
      HIDWORD(v311) = v280;
      LODWORD(v311) = v280;
      v313 = v311 >> 13;
      v314 = v197 ^ v1109;
      v315 = v299 ^ v314;
      v316 = __PAIR64__(v305, __ROR4__(v278, 17));
      v317 = v310 ^ v169 ^ v1107 ^ v316 ^ v210;
      v318 = v312 ^ __ROR4__(v304, 23) ^ v304;
      LODWORD(v316) = v305;
      HIDWORD(v316) = (v316 >> 20) - 1651869049 + v318;
      LODWORD(v316) = HIDWORD(v316);
      v319 = v316 >> 25;
      v321 = __PAIR64__(v292, __ROR4__(v305, 20));
      v320 = v319 ^ v321;
      v322 = v296 + v50 + (v301 & v318 | v313 & ~v318) + v319;
      LODWORD(v321) = v292;
      v323 = v321 >> 23;
      v324 = v288 + (v1110 ^ v50) + ((v305 | v292) & __ROR4__(v268, 23) | v305 & v292) + v320;
      v326 = __PAIR64__(v99, __ROR4__(v1106, 17));
      v325 = v1119 ^ v50 ^ v326;
      LODWORD(v326) = v99;
      v327 = v326 >> 25;
      v329 = __PAIR64__(v301, __ROR4__(v325, 9));
      v328 = v327 ^ v329;
      LODWORD(v329) = v301;
      v330 = v329 >> 13;
      v332 = __PAIR64__(v322, __ROR4__(v325, 17));
      v331 = v328 ^ v332;
      LODWORD(v332) = v322;
      v333 = (v332 >> 15) ^ __ROR4__(v322, 23) ^ v322;
      v334 = __PAIR64__(v324, __ROR4__(v1106, 17));
      v335 = v331 ^ v1119 ^ v50 ^ v334 ^ v229;
      LODWORD(v334) = v324;
      v336 = (v334 >> 20) + 991229199 + v333;
      v337 = __PAIR64__(v336, __ROR4__(v292, 23));
      v338 = (v324 | v305) & v337 | v324 & v305;
      LODWORD(v337) = v336;
      v339 = v337 >> 25;
      v341 = __PAIR64__(v318, __ROR4__(v324, 20));
      v340 = v339 ^ v341;
      LODWORD(v341) = v318;
      v342 = v341 >> 13;
      v343 = v309 + (v138 ^ v106) + v338 + v340;
      v344 = v313 + v106 + (v318 & v333 | v330 & ~v333) + v339;
      HIDWORD(v341) = v344;
      LODWORD(v341) = v344;
      v345 = v341 >> 15;
      v346 = v314 ^ v106 ^ __ROR4__(v315, 17);
      v348 = __PAIR64__(v1110, __ROR4__(v344, 23));
      v347 = v345 ^ v348;
      LODWORD(v348) = v1110;
      v349 = (v348 >> 25) ^ __ROR4__(v346, 9) ^ __ROR4__(v346, 17) ^ v314 ^ v106;
      v350 = v347 ^ v344;
      v352 = __PAIR64__(v343, __ROR4__(v315, 17));
      v351 = v349 ^ v352;
      LODWORD(v352) = v343;
      v353 = (v352 >> 20) + 1982458398;
      HIDWORD(v352) = v305;
      LODWORD(v352) = v305;
      v354 = v352 >> 23;
      HIDWORD(v352) = v353 + v350;
      LODWORD(v352) = v353 + v350;
      v355 = v352 >> 25;
      v356 = v330 + v1109 + (v333 & v350 | v342 & ~v350) + v355;
      v357 = v323 + (v169 ^ v1109) + ((v343 | v324) & __ROR4__(v305, 23) | v343 & v324) + (v355 ^ __ROR4__(v343, 20));
      v1108 = v317;
      v359 = __PAIR64__(v138, __ROR4__(v317, 17));
      v358 = v210 ^ v1109 ^ v359;
      LODWORD(v359) = v138;
      v360 = v359 >> 25;
      HIDWORD(v359) = v324;
      LODWORD(v359) = v324;
      v361 = v359 >> 23;
      v363 = __PAIR64__(v356, __ROR4__(v358, 17));
      v362 = v360 ^ __ROR4__(v358, 9) ^ v363;
      LODWORD(v363) = v356;
      v364 = v363 >> 15;
      HIDWORD(v363) = v333;
      LODWORD(v363) = v333;
      v365 = v363 >> 13;
      v366 = v351 ^ v1113;
      v367 = __PAIR64__(v357, __ROR4__(v317, 17));
      v368 = v362 ^ v210 ^ v1109 ^ v367 ^ v278;
      v369 = v364 ^ __ROR4__(v356, 23) ^ v356;
      LODWORD(v367) = v357;
      HIDWORD(v367) = (v367 >> 20) - 330050500 + v369;
      LODWORD(v367) = HIDWORD(v367);
      v370 = v367 >> 25;
      v371 = v354 + (v1119 ^ v99) + ((v357 | v343) & __ROR4__(v324, 23) | v357 & v343);
      v373 = __PAIR64__(v343, __ROR4__(v357, 20));
      v372 = v370 ^ v373;
      v374 = v342 + v99 + (v350 & v369 | v365 & ~v369) + v370;
      LODWORD(v373) = v343;
      v375 = v373 >> 23;
      v376 = v371 + v372;
      v378 = __PAIR64__(v169, __ROR4__(v335, 17));
      v377 = v229 ^ v99 ^ v378;
      LODWORD(v378) = v169;
      v379 = v378 >> 25;
      v381 = __PAIR64__(v350, __ROR4__(v377, 9));
      v380 = v379 ^ v381;
      LODWORD(v381) = v350;
      v382 = v381 >> 13;
      v384 = __PAIR64__(v374, __ROR4__(v377, 17));
      v383 = v380 ^ v384;
      LODWORD(v384) = v374;
      v385 = (v384 >> 15) ^ __ROR4__(v374, 23) ^ v374;
      v386 = __PAIR64__(v376, __ROR4__(v335, 17));
      v387 = v383 ^ v229 ^ v99 ^ v386 ^ v1106;
      LODWORD(v386) = v376;
      v388 = (v386 >> 20) - 660100999 + v385;
      v389 = __PAIR64__(v388, __ROR4__(v343, 23));
      v390 = (v376 | v357) & v389 | v376 & v357;
      LODWORD(v389) = v388;
      v391 = v389 >> 25;
      v392 = v361 + (v314 ^ v1110) + v390;
      v394 = __PAIR64__(v369, __ROR4__(v376, 20));
      v393 = v391 ^ v394;
      v395 = v365 + v1110 + (v369 & v385 | v382 & ~v385);
      LODWORD(v394) = v369;
      v396 = v394 >> 13;
      v397 = v392 + v393;
      v398 = v395 + v391;
      HIDWORD(v394) = v398;
      LODWORD(v394) = v398;
      v399 = v394 >> 15;
      v400 = v1113 ^ v1110 ^ __ROR4__(v366, 17);
      v402 = __PAIR64__(v1119, __ROR4__(v398, 23));
      v401 = v399 ^ v402;
      LODWORD(v402) = v1119;
      v403 = (v402 >> 25) ^ __ROR4__(v400, 9) ^ __ROR4__(v400, 17) ^ v1113 ^ v1110;
      v404 = v401 ^ v398;
      v406 = __PAIR64__(v397, __ROR4__(v366, 17));
      v405 = v403 ^ v406;
      LODWORD(v406) = v397;
      v407 = (v406 >> 20) - 1320201997;
      HIDWORD(v406) = v357;
      LODWORD(v406) = v357;
      v408 = v406 >> 23;
      HIDWORD(v406) = v407 + v404;
      LODWORD(v406) = v407 + v404;
      v409 = v406 >> 25;
      v410 = v409 ^ __ROR4__(v397, 20);
      v411 = v382 + v138 + (v385 & v404 | v396 & ~v404) + v409;
      v412 = v375 + (v210 ^ v138) + ((v397 | v376) & __ROR4__(v357, 23) | v397 & v376) + v410;
      v414 = __PAIR64__(v314, __ROR4__(v368, 17));
      v413 = v278 ^ v138 ^ v414;
      LODWORD(v414) = v314;
      v415 = v414 >> 25;
      HIDWORD(v414) = v376;
      LODWORD(v414) = v376;
      v416 = v414 >> 23;
      v418 = __PAIR64__(v411, __ROR4__(v413, 17));
      v417 = v415 ^ __ROR4__(v413, 9) ^ v418;
      LODWORD(v418) = v411;
      v419 = v418 >> 15;
      HIDWORD(v418) = v385;
      LODWORD(v418) = v385;
      v420 = v418 >> 13;
      v421 = v405 ^ v315;
      v422 = __PAIR64__(v412, __ROR4__(v368, 17));
      v423 = v417 ^ v278 ^ v138 ^ v422 ^ v317;
      v424 = v419 ^ __ROR4__(v411, 23) ^ v411;
      LODWORD(v422) = v412;
      HIDWORD(v422) = (v422 >> 20) + 1654563303 + v424;
      LODWORD(v422) = HIDWORD(v422);
      v425 = v422 >> 25;
      v426 = v408 + (v229 ^ v169) + ((v412 | v397) & __ROR4__(v376, 23) | v412 & v397);
      v428 = __PAIR64__(v397, __ROR4__(v412, 20));
      v427 = v425 ^ v428;
      v429 = v396 + v169 + (v404 & v424 | v420 & ~v424) + v425;
      LODWORD(v428) = v397;
      v430 = v428 >> 23;
      v431 = v1106 ^ v169;
      v432 = v426 + v427;
      v434 = __PAIR64__(v210, __ROR4__(v387, 17));
      v433 = v431 ^ v434;
      LODWORD(v434) = v210;
      v435 = v434 >> 25;
      v437 = __PAIR64__(v404, __ROR4__(v433, 9));
      v436 = v435 ^ v437;
      LODWORD(v437) = v404;
      v438 = v437 >> 13;
      v440 = __PAIR64__(v429, __ROR4__(v433, 17));
      v439 = v436 ^ v440;
      LODWORD(v440) = v429;
      v441 = (v440 >> 15) ^ __ROR4__(v429, 23) ^ v429;
      v442 = __PAIR64__(v432, __ROR4__(v387, 17));
      v443 = v439 ^ v431 ^ v442 ^ v335;
      LODWORD(v442) = v432;
      v444 = (v442 >> 20) - 985840690 + v441;
      v445 = __PAIR64__(v444, __ROR4__(v397, 23));
      v446 = (v432 | v412) & v445 | v432 & v412;
      LODWORD(v445) = v444;
      v447 = v445 >> 25;
      v449 = __PAIR64__(v424, __ROR4__(v432, 20));
      v448 = v447 ^ v449;
      v450 = v420 + v1119 + (v424 & v441 | v438 & ~v441);
      LODWORD(v449) = v424;
      v451 = v449 >> 13;
      v452 = v416 + (v1113 ^ v1119) + v446 + v448;
      v453 = v450 + v447;
      HIDWORD(v449) = v450 + v447;
      LODWORD(v449) = v450 + v447;
      v454 = v449 >> 15;
      v455 = v315 ^ v1119 ^ __ROR4__(v421, 17);
      v457 = __PAIR64__(v229, __ROR4__(v453, 23));
      v456 = v454 ^ v457;
      LODWORD(v457) = v229;
      v458 = (v457 >> 25) ^ __ROR4__(v455, 9) ^ __ROR4__(v455, 17) ^ v315 ^ v1119;
      v459 = v456 ^ v453;
      v461 = __PAIR64__(v452, __ROR4__(v421, 17));
      v460 = v458 ^ v461;
      LODWORD(v461) = v452;
      v462 = (v461 >> 20) - 1971681379;
      HIDWORD(v461) = v412;
      LODWORD(v461) = v412;
      v463 = v461 >> 23;
      HIDWORD(v461) = v462 + v459;
      LODWORD(v461) = v462 + v459;
      v464 = v461 >> 25;
      v465 = v438 + v314 + (v441 & v459 | v451 & ~v459) + v464;
      v466 = v430 + (v278 ^ v314) + ((v452 | v432) & __ROR4__(v412, 23) | v452 & v432) + (v464 ^ __ROR4__(v452, 20));
      v467 = v317 ^ v314;
      v469 = __PAIR64__(v1113, __ROR4__(v423, 17));
      v468 = v317 ^ v314 ^ v469;
      LODWORD(v469) = v1113;
      v470 = v469 >> 25;
      HIDWORD(v469) = v432;
      LODWORD(v469) = v432;
      v471 = v469 >> 23;
      v473 = __PAIR64__(v465, __ROR4__(v468, 17));
      v472 = v470 ^ __ROR4__(v468, 9) ^ v473;
      LODWORD(v473) = v465;
      v474 = v473 >> 15;
      HIDWORD(v473) = v441;
      LODWORD(v473) = v441;
      v475 = v473 >> 13;
      v476 = v460 ^ v366;
      v477 = __PAIR64__(v466, __ROR4__(v423, 17));
      v478 = v472 ^ v467 ^ v477 ^ v368;
      v479 = v474 ^ __ROR4__(v465, 23) ^ v465;
      LODWORD(v477) = v466;
      HIDWORD(v477) = (v477 >> 20) + 351604539 + v479;
      LODWORD(v477) = HIDWORD(v477);
      v480 = v477 >> 25;
      v481 = v463 + (v1106 ^ v210) + ((v466 | v452) & __ROR4__(v432, 23) | v466 & v452);
      v483 = __PAIR64__(v452, __ROR4__(v466, 20));
      v482 = v480 ^ v483;
      v484 = v451 + v210 + (v459 & v479 | v475 & ~v479) + v480;
      LODWORD(v483) = v452;
      v485 = v483 >> 23;
      v486 = v335 ^ v210;
      v487 = v481 + v482;
      v489 = __PAIR64__(v278, __ROR4__(v443, 17));
      v488 = v486 ^ v489;
      LODWORD(v489) = v278;
      v490 = v489 >> 25;
      v492 = __PAIR64__(v459, __ROR4__(v488, 9));
      v491 = v490 ^ v492;
      LODWORD(v492) = v459;
      v493 = v492 >> 13;
      v495 = __PAIR64__(v484, __ROR4__(v488, 17));
      v494 = v491 ^ v495;
      LODWORD(v495) = v484;
      v496 = (v495 >> 15) ^ __ROR4__(v484, 23) ^ v484;
      v497 = __PAIR64__(v487, __ROR4__(v443, 17));
      v498 = v494 ^ v486 ^ v497 ^ v387;
      LODWORD(v497) = v487;
      v499 = (v497 >> 20) + 703209078 + v496;
      v500 = __PAIR64__(v499, __ROR4__(v452, 23));
      v501 = (v487 | v466) & v500 | v487 & v466;
      LODWORD(v500) = v499;
      v502 = v500 >> 25;
      v504 = __PAIR64__(v479, __ROR4__(v487, 20));
      v503 = v502 ^ v504;
      LODWORD(v504) = v479;
      v505 = v504 >> 13;
      v506 = v471 + (v315 ^ v229) + v501 + v503;
      v507 = v475 + v229 + (v479 & v496 | v493 & ~v496) + v502;
      HIDWORD(v504) = v507;
      LODWORD(v504) = v507;
      v508 = v504 >> 15;
      v509 = v366 ^ v229;
      v510 = v366 ^ v229 ^ __ROR4__(v476, 17);
      v512 = __PAIR64__(v1106, __ROR4__(v507, 23));
      v511 = v508 ^ v512;
      LODWORD(v512) = v1106;
      v513 = (v512 >> 25) ^ __ROR4__(v510, 9) ^ __ROR4__(v510, 17) ^ v509;
      v514 = v511 ^ v507;
      v516 = __PAIR64__(v506, __ROR4__(v476, 17));
      v515 = v513 ^ v516;
      LODWORD(v516) = v506;
      v517 = (v516 >> 20) + 1406418156;
      HIDWORD(v516) = v466;
      LODWORD(v516) = v466;
      v518 = v516 >> 23;
      HIDWORD(v516) = v517 + v514;
      LODWORD(v516) = v517 + v514;
      v519 = v516 >> 25;
      v520 = v493 + v1113 + (v496 & v514 | v505 & ~v514) + v519;
      v521 = v485 + (v317 ^ v1113) + ((v506 | v487) & __ROR4__(v466, 23) | v506 & v487) + (v519 ^ __ROR4__(v506, 20));
      v523 = __PAIR64__(v315, __ROR4__(v478, 17));
      v522 = v368 ^ v1113 ^ v523;
      LODWORD(v523) = v315;
      v524 = v523 >> 25;
      HIDWORD(v523) = v487;
      LODWORD(v523) = v487;
      v525 = v523 >> 23;
      v527 = __PAIR64__(v520, __ROR4__(v522, 17));
      v526 = v524 ^ __ROR4__(v522, 9) ^ v527;
      LODWORD(v527) = v520;
      v528 = v527 >> 15;
      HIDWORD(v527) = v496;
      LODWORD(v527) = v496;
      v529 = v527 >> 13;
      v530 = v515 ^ v421;
      v531 = __PAIR64__(v521, __ROR4__(v478, 17));
      v532 = v526 ^ v368 ^ v1113 ^ v531 ^ v423;
      v533 = v528 ^ __ROR4__(v520, 23) ^ v520;
      LODWORD(v531) = v521;
      HIDWORD(v531) = (v531 >> 20) - 1482130984 + v533;
      LODWORD(v531) = HIDWORD(v531);
      v534 = v531 >> 25;
      v535 = v518 + (v335 ^ v278) + ((v521 | v506) & __ROR4__(v487, 23) | v521 & v506);
      v537 = __PAIR64__(v506, __ROR4__(v521, 20));
      v536 = v534 ^ v537;
      v538 = v505 + v278 + (v514 & v533 | v529 & ~v533) + v534;
      LODWORD(v537) = v506;
      v539 = v537 >> 23;
      v540 = v387 ^ v278;
      v541 = v535 + v536;
      v543 = __PAIR64__(v1108, __ROR4__(v498, 17));
      v542 = v540 ^ v543;
      LODWORD(v543) = v1108;
      v544 = v543 >> 25;
      v546 = __PAIR64__(v514, __ROR4__(v542, 9));
      v545 = v544 ^ v546;
      LODWORD(v546) = v514;
      v547 = v546 >> 13;
      v549 = __PAIR64__(v538, __ROR4__(v542, 17));
      v548 = v545 ^ v549;
      LODWORD(v549) = v538;
      v550 = v548 ^ v540;
      v551 = (v549 >> 15) ^ __ROR4__(v538, 23) ^ v538;
      v552 = __PAIR64__(v541, __ROR4__(v498, 17));
      v553 = v550 ^ v552 ^ v443;
      LODWORD(v552) = v541;
      v554 = (v552 >> 20) + 1330705329 + v551;
      v555 = __PAIR64__(v554, __ROR4__(v506, 23));
      v556 = (v541 | v521) & v555 | v541 & v521;
      LODWORD(v555) = v554;
      v557 = v555 >> 25;
      v558 = v525 + (v366 ^ v1106) + v556;
      v560 = __PAIR64__(v533, __ROR4__(v541, 20));
      v559 = v557 ^ v560;
      v561 = v529 + v1106 + (v533 & v551 | v547 & ~v551);
      LODWORD(v560) = v533;
      v562 = v560 >> 13;
      v563 = v558 + v559;
      v564 = v561 + v557;
      HIDWORD(v560) = v564;
      LODWORD(v560) = v564;
      v565 = v560 >> 15;
      v566 = v421 ^ v1106 ^ __ROR4__(v530, 17);
      v568 = __PAIR64__(v335, __ROR4__(v564, 23));
      v567 = v565 ^ v568;
      LODWORD(v568) = v335;
      v569 = (v568 >> 25) ^ __ROR4__(v566, 9) ^ __ROR4__(v566, 17) ^ v421 ^ v1106;
      v570 = v567 ^ v564;
      v572 = __PAIR64__(v563, __ROR4__(v530, 17));
      v571 = v569 ^ v572;
      LODWORD(v572) = v563;
      v573 = (v572 >> 20) - 1633556638;
      HIDWORD(v572) = v521;
      LODWORD(v572) = v521;
      v574 = v572 >> 23;
      HIDWORD(v572) = v573 + v570;
      LODWORD(v572) = v573 + v570;
      v575 = v572 >> 25;
      v576 = v547 + v315 + (v551 & v570 | v562 & ~v570) + v575;
      v577 = v539 + (v368 ^ v315) + ((v563 | v541) & __ROR4__(v521, 23) | v563 & v541) + (v575 ^ __ROR4__(v563, 20));
      v578 = v423 ^ v315;
      v580 = __PAIR64__(v366, __ROR4__(v532, 17));
      v579 = v423 ^ v315 ^ v580;
      LODWORD(v580) = v366;
      v581 = v580 >> 25;
      HIDWORD(v580) = v541;
      LODWORD(v580) = v541;
      v582 = v580 >> 23;
      v584 = __PAIR64__(v576, __ROR4__(v579, 17));
      v583 = v581 ^ __ROR4__(v579, 9) ^ v584;
      LODWORD(v584) = v576;
      v585 = v584 >> 15;
      HIDWORD(v584) = v551;
      LODWORD(v584) = v551;
      v586 = v584 >> 13;
      v587 = v571 ^ v476;
      v588 = __PAIR64__(v577, __ROR4__(v532, 17));
      v589 = v583 ^ v578 ^ v588 ^ v478;
      v590 = v585 ^ __ROR4__(v576, 23) ^ v576;
      LODWORD(v588) = v577;
      HIDWORD(v588) = (v588 >> 20) + 1027854021 + v590;
      LODWORD(v588) = HIDWORD(v588);
      v591 = v588 >> 25;
      v592 = v574 + (v387 ^ v1108) + ((v577 | v563) & __ROR4__(v541, 23) | v577 & v563);
      v594 = __PAIR64__(v563, __ROR4__(v577, 20));
      v593 = v591 ^ v594;
      v595 = v562 + v1108 + (v570 & v590 | v586 & ~v590) + v591;
      LODWORD(v594) = v563;
      v596 = v594 >> 23;
      v597 = v592 + v593;
      v599 = __PAIR64__(v368, __ROR4__(v553, 17));
      v598 = v443 ^ v1108 ^ v599;
      LODWORD(v599) = v368;
      v600 = v599 >> 25;
      v602 = __PAIR64__(v570, __ROR4__(v598, 9));
      v601 = v600 ^ v602;
      LODWORD(v602) = v570;
      v603 = v602 >> 13;
      v605 = __PAIR64__(v595, __ROR4__(v598, 17));
      v604 = v601 ^ v605;
      LODWORD(v605) = v595;
      v606 = (v605 >> 15) ^ __ROR4__(v595, 23) ^ v595;
      v607 = __PAIR64__(v597, __ROR4__(v553, 17));
      v608 = v604 ^ v443 ^ v1108 ^ v607 ^ v498;
      LODWORD(v607) = v597;
      v609 = (v607 >> 20) + 2055708042 + v606;
      v610 = __PAIR64__(v609, __ROR4__(v563, 23));
      v611 = (v597 | v577) & v610 | v597 & v577;
      LODWORD(v610) = v609;
      v612 = v610 >> 25;
      v614 = __PAIR64__(v590, __ROR4__(v597, 20));
      v613 = v612 ^ v614;
      LODWORD(v614) = v590;
      v615 = v614 >> 13;
      v616 = v582 + (v421 ^ v335) + v611 + v613;
      v617 = v586 + v335 + (v590 & v606 | v603 & ~v606) + v612;
      HIDWORD(v614) = v617;
      LODWORD(v614) = v617;
      v618 = v614 >> 15;
      v619 = v476 ^ v335 ^ __ROR4__(v587, 17);
      v621 = __PAIR64__(v387, __ROR4__(v617, 23));
      v620 = v618 ^ v621;
      LODWORD(v621) = v387;
      v622 = (v621 >> 25) ^ __ROR4__(v619, 9) ^ __ROR4__(v619, 17) ^ v476 ^ v335;
      v623 = v620 ^ v617;
      v625 = __PAIR64__(v616, __ROR4__(v587, 17));
      v624 = v622 ^ v625;
      LODWORD(v625) = v616;
      v626 = (v625 >> 20) - 183551212;
      HIDWORD(v625) = v577;
      LODWORD(v625) = v577;
      v627 = v625 >> 23;
      v628 = v596 + (v423 ^ v366) + ((v616 | v597) & __ROR4__(v577, 23) | v616 & v597);
      HIDWORD(v625) = v626 + v623;
      LODWORD(v625) = v626 + v623;
      v629 = v625 >> 25;
      v630 = v603 + v366 + (v606 & v623 | v615 & ~v623) + v629;
      v631 = v628 + (v629 ^ __ROR4__(v616, 20));
      v632 = v478 ^ v366;
      v634 = __PAIR64__(v421, __ROR4__(v589, 17));
      v633 = v478 ^ v366 ^ v634;
      LODWORD(v634) = v421;
      v635 = v634 >> 25;
      HIDWORD(v634) = v597;
      LODWORD(v634) = v597;
      v636 = v634 >> 23;
      v638 = __PAIR64__(v630, __ROR4__(v633, 17));
      v637 = v635 ^ __ROR4__(v633, 9) ^ v638;
      LODWORD(v638) = v630;
      v639 = v638 >> 15;
      HIDWORD(v638) = v606;
      LODWORD(v638) = v606;
      v640 = v638 >> 13;
      v641 = v624 ^ v530;
      v642 = __PAIR64__(v631, __ROR4__(v589, 17));
      v643 = v637 ^ v632 ^ v642 ^ v532;
      v644 = v639 ^ __ROR4__(v630, 23) ^ v630;
      LODWORD(v642) = v631;
      HIDWORD(v642) = (v642 >> 20) - 367102423 + v644;
      LODWORD(v642) = HIDWORD(v642);
      v645 = v642 >> 25;
      v646 = v627 + (v443 ^ v368) + ((v631 | v616) & __ROR4__(v597, 23) | v631 & v616);
      v648 = __PAIR64__(v616, __ROR4__(v631, 20));
      v647 = v645 ^ v648;
      v649 = v615 + v368 + (v623 & v644 | v640 & ~v644) + v645;
      LODWORD(v648) = v616;
      v650 = v648 >> 23;
      v651 = v498 ^ v368;
      v652 = v646 + v647;
      v654 = __PAIR64__(v423, __ROR4__(v608, 17));
      v653 = v498 ^ v368 ^ v654;
      LODWORD(v654) = v423;
      v655 = v654 >> 25;
      v657 = __PAIR64__(v623, __ROR4__(v653, 9));
      v656 = v655 ^ v657;
      LODWORD(v657) = v623;
      v658 = v657 >> 13;
      v660 = __PAIR64__(v649, __ROR4__(v653, 17));
      v659 = v656 ^ v660;
      LODWORD(v660) = v649;
      v661 = (v660 >> 15) ^ __ROR4__(v649, 23) ^ v649;
      v662 = __PAIR64__(v652, __ROR4__(v608, 17));
      v663 = v659 ^ v651 ^ v662 ^ v553;
      LODWORD(v662) = v652;
      v664 = (v662 >> 20) - 734204845 + v661;
      v665 = __PAIR64__(v664, __ROR4__(v616, 23));
      v666 = (v652 | v631) & v665 | v652 & v631;
      LODWORD(v665) = v664;
      v667 = v665 >> 25;
      v669 = __PAIR64__(v644, __ROR4__(v652, 20));
      v668 = v667 ^ v669;
      LODWORD(v669) = v644;
      v670 = v669 >> 13;
      v671 = v636 + (v476 ^ v387) + v666 + v668;
      v672 = v640 + v387 + (v644 & v661 | v658 & ~v661) + v667;
      HIDWORD(v669) = v672;
      LODWORD(v669) = v672;
      v673 = v669 >> 15;
      v674 = v530 ^ v387;
      v675 = v674 ^ __ROR4__(v641, 17);
      v677 = __PAIR64__(v443, __ROR4__(v672, 23));
      v676 = v673 ^ v677;
      LODWORD(v677) = v443;
      v678 = (v677 >> 25) ^ __ROR4__(v675, 9) ^ __ROR4__(v675, 17) ^ v674;
      v679 = v676 ^ v672;
      v681 = __PAIR64__(v671, __ROR4__(v641, 17));
      v680 = v678 ^ v681;
      LODWORD(v681) = v671;
      v682 = (v681 >> 20) - 1468409689;
      HIDWORD(v681) = v631;
      LODWORD(v681) = v631;
      v683 = v681 >> 23;
      HIDWORD(v681) = v682 + v679;
      LODWORD(v681) = v682 + v679;
      v684 = v681 >> 25;
      v685 = v658 + v421 + (v661 & v679 | v670 & ~v679) + v684;
      v686 = v650 + (v478 ^ v421) + ((v671 | v652) & __ROR4__(v631, 23) | v671 & v652) + (v684 ^ __ROR4__(v671, 20));
      v687 = v532 ^ v421;
      v689 = __PAIR64__(v476, __ROR4__(v643, 17));
      v688 = v687 ^ v689;
      LODWORD(v689) = v476;
      v690 = v689 >> 25;
      HIDWORD(v689) = v652;
      LODWORD(v689) = v652;
      v691 = v689 >> 23;
      v693 = __PAIR64__(v685, __ROR4__(v688, 17));
      v692 = v690 ^ __ROR4__(v688, 9) ^ v693;
      LODWORD(v693) = v685;
      v694 = v693 >> 15;
      HIDWORD(v693) = v661;
      LODWORD(v693) = v661;
      v695 = v693 >> 13;
      v696 = v680 ^ v587;
      v697 = __PAIR64__(v686, __ROR4__(v643, 17));
      v698 = v692 ^ v687 ^ v697 ^ v589;
      v699 = v694 ^ __ROR4__(v685, 23) ^ v685;
      LODWORD(v697) = v686;
      HIDWORD(v697) = (v697 >> 20) + 1358147919 + v699;
      LODWORD(v697) = HIDWORD(v697);
      v700 = v697 >> 25;
      v701 = v683 + (v498 ^ v423) + ((v686 | v671) & __ROR4__(v652, 23) | v686 & v671);
      v703 = __PAIR64__(v671, __ROR4__(v686, 20));
      v702 = v700 ^ v703;
      v704 = v670 + v423 + (v679 & v699 | v695 & ~v699) + v700;
      LODWORD(v703) = v671;
      v705 = v703 >> 23;
      v706 = v553 ^ v423;
      v707 = v701 + v702;
      v709 = __PAIR64__(v478, __ROR4__(v663, 17));
      v708 = v706 ^ v709;
      LODWORD(v709) = v478;
      v710 = v709 >> 25;
      v712 = __PAIR64__(v679, __ROR4__(v708, 9));
      v711 = v710 ^ v712;
      LODWORD(v712) = v679;
      v713 = v712 >> 13;
      v715 = __PAIR64__(v704, __ROR4__(v708, 17));
      v714 = v711 ^ v715;
      LODWORD(v715) = v704;
      v716 = v714 ^ v706;
      v717 = (v715 >> 15) ^ __ROR4__(v704, 23) ^ v704;
      v718 = __PAIR64__(v707, __ROR4__(v663, 17));
      v719 = v716 ^ v718 ^ v608;
      LODWORD(v718) = v707;
      v720 = (v718 >> 20) - 1578671458 + v717;
      v721 = __PAIR64__(v720, __ROR4__(v671, 23));
      v722 = (v707 | v686) & v721 | v707 & v686;
      LODWORD(v721) = v720;
      v723 = v721 >> 25;
      v724 = v691 + (v530 ^ v443) + v722;
      v726 = __PAIR64__(v699, __ROR4__(v707, 20));
      v725 = v723 ^ v726;
      v727 = v695 + v443 + (v699 & v717 | v713 & ~v717);
      LODWORD(v726) = v699;
      v728 = v726 >> 13;
      v729 = v724 + v725;
      v730 = v727 + v723;
      HIDWORD(v726) = v730;
      LODWORD(v726) = v730;
      v731 = v726 >> 15;
      v732 = v587 ^ v443;
      v733 = v732 ^ __ROR4__(v696, 17);
      v735 = __PAIR64__(v498, __ROR4__(v730, 23));
      v734 = v731 ^ v735;
      LODWORD(v735) = v498;
      v736 = (v735 >> 25) ^ __ROR4__(v733, 9) ^ __ROR4__(v733, 17) ^ v732;
      v737 = v734 ^ v730;
      v739 = __PAIR64__(v729, __ROR4__(v696, 17));
      v738 = v736 ^ v739;
      LODWORD(v739) = v729;
      v740 = (v739 >> 20) + 1137624381;
      HIDWORD(v739) = v686;
      LODWORD(v739) = v686;
      v741 = v739 >> 23;
      HIDWORD(v739) = v740 + v737;
      LODWORD(v739) = v740 + v737;
      v742 = v739 >> 25;
      v743 = v713 + v476 + (v717 & v737 | v728 & ~v737) + v742;
      v744 = v705 + (v532 ^ v476) + ((v729 | v707) & __ROR4__(v686, 23) | v729 & v707) + (v742 ^ __ROR4__(v729, 20));
      v745 = v589 ^ v476;
      v747 = __PAIR64__(v530, __ROR4__(v698, 17));
      v746 = v589 ^ v476 ^ v747;
      LODWORD(v747) = v530;
      v748 = v747 >> 25;
      HIDWORD(v747) = v707;
      LODWORD(v747) = v707;
      v749 = v747 >> 23;
      v751 = __PAIR64__(v743, __ROR4__(v746, 17));
      v750 = v748 ^ __ROR4__(v746, 9) ^ v751;
      LODWORD(v751) = v743;
      v752 = v751 >> 15;
      HIDWORD(v751) = v717;
      LODWORD(v751) = v717;
      v753 = v751 >> 13;
      v754 = v738 ^ v641;
      v755 = __PAIR64__(v744, __ROR4__(v698, 17));
      v756 = v750 ^ v745 ^ v755 ^ v643;
      v757 = v752 ^ __ROR4__(v743, 23) ^ v743;
      LODWORD(v755) = v744;
      HIDWORD(v755) = (v755 >> 20) - 2019718534 + v757;
      LODWORD(v755) = HIDWORD(v755);
      v758 = v755 >> 25;
      v759 = v741 + (v553 ^ v478) + ((v744 | v729) & __ROR4__(v707, 23) | v744 & v729);
      v761 = __PAIR64__(v729, __ROR4__(v744, 20));
      v760 = v758 ^ v761;
      v762 = v728 + v478 + (v737 & v757 | v753 & ~v757) + v758;
      LODWORD(v761) = v729;
      v763 = v761 >> 23;
      v764 = v608 ^ v478;
      v765 = v759 + v760;
      v767 = __PAIR64__(v532, __ROR4__(v719, 17));
      v766 = v764 ^ v767;
      LODWORD(v767) = v532;
      v768 = v767 >> 25;
      v770 = __PAIR64__(v737, __ROR4__(v766, 9));
      v769 = v768 ^ v770;
      LODWORD(v770) = v737;
      v771 = v770 >> 13;
      v773 = __PAIR64__(v762, __ROR4__(v766, 17));
      v772 = v769 ^ v773;
      LODWORD(v773) = v762;
      v774 = (v773 >> 15) ^ __ROR4__(v762, 23) ^ v762;
      v775 = __PAIR64__(v765, __ROR4__(v719, 17));
      v776 = v772 ^ v764 ^ v775 ^ v663;
      LODWORD(v775) = v765;
      v777 = (v775 >> 20) + 255530229 + v774;
      v778 = __PAIR64__(v777, __ROR4__(v729, 23));
      v779 = (v765 | v744) & v778 | v765 & v744;
      LODWORD(v778) = v777;
      v780 = v778 >> 25;
      v782 = __PAIR64__(v757, __ROR4__(v765, 20));
      v781 = v780 ^ v782;
      LODWORD(v782) = v757;
      v783 = v782 >> 13;
      v784 = v749 + (v587 ^ v498) + v779 + v781;
      v785 = v753 + v498 + (v757 & v774 | v771 & ~v774) + v780;
      HIDWORD(v782) = v785;
      LODWORD(v782) = v785;
      v786 = v782 >> 15;
      v787 = v641 ^ v498;
      v788 = v787 ^ __ROR4__(v754, 17);
      v790 = __PAIR64__(v553, __ROR4__(v785, 23));
      v789 = v786 ^ v790;
      LODWORD(v790) = v553;
      v791 = (v790 >> 25) ^ __ROR4__(v788, 9) ^ __ROR4__(v788, 17) ^ v787;
      v792 = v789 ^ v785;
      v794 = __PAIR64__(v784, __ROR4__(v754, 17));
      v793 = v791 ^ v794;
      LODWORD(v794) = v784;
      v795 = (v794 >> 20) + 511060458;
      HIDWORD(v794) = v744;
      LODWORD(v794) = v744;
      v796 = v794 >> 23;
      HIDWORD(v794) = v795 + v792;
      LODWORD(v794) = v795 + v792;
      v797 = v794 >> 25;
      v798 = v771 + v530 + (v774 & v792 | v783 & ~v792) + v797;
      v799 = v763 + (v589 ^ v530) + ((v784 | v765) & __ROR4__(v744, 23) | v784 & v765) + (v797 ^ __ROR4__(v784, 20));
      v800 = v643 ^ v530;
      v802 = __PAIR64__(v587, __ROR4__(v756, 17));
      v801 = v643 ^ v530 ^ v802;
      LODWORD(v802) = v587;
      v803 = v802 >> 25;
      HIDWORD(v802) = v765;
      LODWORD(v802) = v765;
      v804 = v802 >> 23;
      v806 = __PAIR64__(v798, __ROR4__(v801, 17));
      v805 = v803 ^ __ROR4__(v801, 9) ^ v806;
      LODWORD(v806) = v798;
      v807 = v806 >> 15;
      HIDWORD(v806) = v774;
      LODWORD(v806) = v774;
      v808 = v806 >> 13;
      v809 = v793 ^ v696;
      v810 = __PAIR64__(v799, __ROR4__(v756, 17));
      v811 = v805 ^ v800 ^ v810 ^ v698;
      v812 = v807 ^ __ROR4__(v798, 23) ^ v798;
      LODWORD(v810) = v799;
      v813 = (v799 | v784) & __ROR4__(v765, 23) | v799 & v784;
      HIDWORD(v810) = (v810 >> 20) + 1022120916 + v812;
      LODWORD(v810) = HIDWORD(v810);
      v814 = v810 >> 25;
      v816 = __PAIR64__(v784, __ROR4__(v799, 20));
      v815 = v814 ^ v816;
      v817 = v783 + v532 + (v792 & v812 | v808 & ~v812) + v814;
      LODWORD(v816) = v784;
      v818 = v816 >> 23;
      v819 = v663 ^ v532;
      v820 = v796 + (v608 ^ v532) + v813 + v815;
      v822 = __PAIR64__(v589, __ROR4__(v776, 17));
      v821 = v819 ^ v822;
      LODWORD(v822) = v589;
      v823 = v822 >> 25;
      v825 = __PAIR64__(v792, __ROR4__(v821, 9));
      v824 = v823 ^ v825;
      LODWORD(v825) = v792;
      v826 = v825 >> 13;
      v828 = __PAIR64__(v817, __ROR4__(v821, 17));
      v827 = v824 ^ v828;
      LODWORD(v828) = v817;
      v829 = v827 ^ v819;
      v830 = (v828 >> 15) ^ __ROR4__(v817, 23) ^ v817;
      v831 = __PAIR64__(v820, __ROR4__(v776, 17));
      v832 = v829 ^ v831 ^ v719;
      LODWORD(v831) = v820;
      v833 = (v831 >> 20) + 2044241832 + v830;
      v834 = __PAIR64__(v833, __ROR4__(v784, 23));
      v835 = (v820 | v799) & v834 | v820 & v799;
      LODWORD(v834) = v833;
      v836 = v834 >> 25;
      v837 = v804 + (v641 ^ v553) + v835;
      v839 = __PAIR64__(v812, __ROR4__(v820, 20));
      v838 = v836 ^ v839;
      v840 = v808 + v553 + (v812 & v830 | v826 & ~v830);
      LODWORD(v839) = v812;
      v841 = v839 >> 13;
      v842 = v837 + v838;
      v843 = v840 + v836;
      HIDWORD(v839) = v840 + v836;
      LODWORD(v839) = v840 + v836;
      v844 = v839 >> 15;
      v845 = v696 ^ v553;
      v846 = v696 ^ v553 ^ __ROR4__(v809, 17);
      v848 = __PAIR64__(v608, __ROR4__(v843, 23));
      v847 = v844 ^ v848;
      LODWORD(v848) = v608;
      v849 = (v848 >> 25) ^ __ROR4__(v846, 9) ^ __ROR4__(v846, 17) ^ v845;
      v850 = v847 ^ v843;
      v852 = __PAIR64__(v842, __ROR4__(v809, 17));
      v851 = v849 ^ v852;
      LODWORD(v852) = v842;
      v853 = (v852 >> 20) - 206483632;
      HIDWORD(v852) = v799;
      LODWORD(v852) = v799;
      v854 = v852 >> 23;
      HIDWORD(v852) = v853 + v850;
      LODWORD(v852) = v853 + v850;
      v855 = v852 >> 25;
      v856 = v855 ^ __ROR4__(v842, 20);
      v857 = v826 + v587 + (v830 & v850 | v841 & ~v850) + v855;
      v858 = v818 + (v643 ^ v587) + ((v842 | v820) & __ROR4__(v799, 23) | v842 & v820) + v856;
      v859 = v698 ^ v587;
      v861 = __PAIR64__(v641, __ROR4__(v811, 17));
      v860 = v698 ^ v587 ^ v861;
      LODWORD(v861) = v641;
      v862 = v861 >> 25;
      HIDWORD(v861) = v820;
      LODWORD(v861) = v820;
      v863 = v861 >> 23;
      v865 = __PAIR64__(v857, __ROR4__(v860, 17));
      v864 = v862 ^ __ROR4__(v860, 9) ^ v865;
      LODWORD(v865) = v857;
      v866 = v865 >> 15;
      HIDWORD(v865) = v830;
      LODWORD(v865) = v830;
      v867 = v865 >> 13;
      v868 = v851 ^ v754;
      v869 = __PAIR64__(v858, __ROR4__(v811, 17));
      v870 = v864 ^ v859 ^ v869 ^ v756;
      v871 = v866 ^ __ROR4__(v857, 23) ^ v857;
      LODWORD(v869) = v858;
      HIDWORD(v869) = (v869 >> 20) - 412967263 + v871;
      LODWORD(v869) = HIDWORD(v869);
      v872 = v869 >> 25;
      v873 = v854 + (v663 ^ v589) + ((v858 | v842) & __ROR4__(v820, 23) | v858 & v842);
      v875 = __PAIR64__(v842, __ROR4__(v858, 20));
      v874 = v872 ^ v875;
      v876 = v841 + v589 + (v850 & v871 | v867 & ~v871) + v872;
      LODWORD(v875) = v842;
      v877 = v875 >> 23;
      v878 = v719 ^ v589;
      v879 = v873 + v874;
      v881 = __PAIR64__(v643, __ROR4__(v832, 17));
      v880 = v878 ^ v881;
      LODWORD(v881) = v643;
      v882 = v881 >> 25;
      v884 = __PAIR64__(v850, __ROR4__(v880, 9));
      v883 = v882 ^ v884;
      LODWORD(v884) = v850;
      v885 = v884 >> 13;
      v887 = __PAIR64__(v876, __ROR4__(v880, 17));
      v886 = v883 ^ v887;
      LODWORD(v887) = v876;
      v888 = v887 >> 15;
      v889 = __PAIR64__(v879, __ROR4__(v876, 23));
      v890 = v886 ^ v878;
      v891 = v888 ^ v889 ^ v876;
      LODWORD(v889) = v879;
      HIDWORD(v889) = (v889 >> 20) - 825934525 + v891;
      LODWORD(v889) = HIDWORD(v889);
      v892 = v889 >> 25;
      v894 = __PAIR64__(v858, __ROR4__(v879, 20));
      v893 = v892 ^ v894;
      v895 = v867 + v608 + (v871 & v891 | v885 & ~v891) + v892;
      LODWORD(v894) = v858;
      v896 = v894 >> 23;
      v897 = v754 ^ v608;
      v898 = v863 + (v696 ^ v608) + ((v879 | v858) & __ROR4__(v842, 23) | v879 & v858) + v893;
      v900 = __PAIR64__(v663, __ROR4__(v868, 17));
      v899 = v897 ^ v900;
      LODWORD(v900) = v663;
      v901 = v900 >> 25;
      v903 = __PAIR64__(v871, __ROR4__(v899, 9));
      v902 = v901 ^ v903;
      LODWORD(v903) = v871;
      v904 = v903 >> 13;
      v906 = __PAIR64__(v895, __ROR4__(v899, 17));
      v905 = v902 ^ v906;
      LODWORD(v906) = v895;
      v907 = v906 >> 15;
      v908 = __PAIR64__(v898, __ROR4__(v895, 23));
      v909 = v905 ^ v897;
      v910 = v907 ^ v908 ^ v895;
      LODWORD(v908) = v898;
      HIDWORD(v908) = (v908 >> 20) - 1651869049 + v910;
      LODWORD(v908) = HIDWORD(v908);
      v911 = v908 >> 25;
      v912 = v877 + (v698 ^ v641) + ((v898 | v879) & __ROR4__(v858, 23) | v898 & v879);
      v914 = __PAIR64__(v879, __ROR4__(v898, 20));
      v913 = v911 ^ v914;
      v915 = v885 + v641 + (v891 & v910 | v904 & ~v910) + v911;
      LODWORD(v914) = v879;
      v916 = v914 >> 23;
      v917 = v756 ^ v641;
      v918 = v912 + v913;
      v920 = __PAIR64__(v696, __ROR4__(v870, 17));
      v919 = v756 ^ v641 ^ v920;
      LODWORD(v920) = v696;
      v921 = v920 >> 25;
      v923 = __PAIR64__(v891, __ROR4__(v919, 9));
      v922 = v921 ^ v923;
      LODWORD(v923) = v891;
      v924 = v923 >> 13;
      v926 = __PAIR64__(v915, __ROR4__(v919, 17));
      v925 = v922 ^ v926;
      LODWORD(v926) = v915;
      v927 = v926 >> 15;
      v928 = __PAIR64__(v918, __ROR4__(v915, 23));
      v929 = v925 ^ v917;
      v930 = v927 ^ v928 ^ v915;
      LODWORD(v928) = v918;
      HIDWORD(v928) = (v928 >> 20) + 991229199 + v930;
      LODWORD(v928) = HIDWORD(v928);
      v931 = v928 >> 25;
      v932 = v931 ^ __ROR4__(v918, 20);
      v933 = v904 + v643 + (v910 & v930 | v924 & ~v930) + v931;
      HIDWORD(v928) = v933;
      LODWORD(v928) = v933;
      v934 = v928 >> 15;
      HIDWORD(v928) = v910;
      LODWORD(v928) = v910;
      v935 = v928 >> 13;
      v936 = v896 + (v719 ^ v643) + ((v918 | v898) & __ROR4__(v879, 23) | v918 & v898) + v932;
      v938 = __PAIR64__(v936, __ROR4__(v933, 23));
      v937 = v934 ^ v938;
      LODWORD(v938) = v936;
      v939 = v938 >> 20;
      HIDWORD(v938) = v898;
      LODWORD(v938) = v898;
      v940 = v938 >> 23;
      v941 = v937 ^ v933;
      HIDWORD(v938) = v939 + 1982458398 + v941;
      LODWORD(v938) = HIDWORD(v938);
      v942 = v938 >> 25;
      v943 = v916 + (v754 ^ v663) + ((v936 | v918) & __ROR4__(v898, 23) | v936 & v918);
      v945 = __PAIR64__(v918, __ROR4__(v936, 20));
      v944 = v942 ^ v945;
      v946 = v924 + v663 + (v930 & v941 | v935 & ~v941) + v942;
      LODWORD(v945) = v918;
      v947 = v945 >> 23;
      HIDWORD(v945) = v930;
      LODWORD(v945) = v930;
      v948 = v945 >> 13;
      v949 = v943 + v944;
      HIDWORD(v945) = v946;
      LODWORD(v945) = v946;
      v950 = v945 >> 15;
      v952 = __PAIR64__(v949, __ROR4__(v946, 23));
      v951 = v950 ^ v952;
      LODWORD(v952) = v949;
      v953 = v951 ^ v946;
      HIDWORD(v952) = (v952 >> 20) - 330050500 + (v951 ^ v946);
      LODWORD(v952) = HIDWORD(v952);
      v954 = v952 >> 25;
      v955 = __PAIR64__(v941, __ROR4__(v949, 20));
      v956 = v940 + (v756 ^ v696) + ((v949 | v936) & __ROR4__(v918, 23) | v949 & v936) + (v954 ^ v955);
      v957 = v935 + v696 + (v941 & v953 | v948 & ~v953) + v954;
      LODWORD(v955) = v941;
      v958 = v955 >> 13;
      HIDWORD(v955) = v957;
      LODWORD(v955) = v957;
      v959 = v955 >> 15;
      v960 = __PAIR64__(v956, __ROR4__(v957, 23));
      v961 = v959 ^ v960 ^ v957;
      LODWORD(v960) = v956;
      v962 = (v960 >> 20) - 660100999;
      HIDWORD(v960) = v936;
      LODWORD(v960) = v936;
      v963 = v960 >> 23;
      v964 = v947 + (v776 ^ v698) + ((v956 | v949) & __ROR4__(v936, 23) | v956 & v949);
      HIDWORD(v960) = v962 + v961;
      LODWORD(v960) = v962 + v961;
      v965 = v960 >> 25;
      v967 = __PAIR64__(v949, __ROR4__(v956, 20));
      v966 = v965 ^ v967;
      v968 = v948 + v698 + (v953 & v961 | v958 & ~v961) + v965;
      v969 = v964 + v966;
      LODWORD(v967) = v949;
      v970 = v967 >> 23;
      HIDWORD(v967) = v968;
      LODWORD(v967) = v968;
      v971 = v967 >> 15;
      HIDWORD(v967) = v953;
      LODWORD(v967) = v953;
      v972 = v967 >> 13;
      v973 = v971 ^ __ROR4__(v968, 23) ^ v968;
      v974 = __PAIR64__(v969, __ROR4__(v949, 23));
      v975 = v963 + (v809 ^ v719) + ((v969 | v956) & v974 | v969 & v956);
      LODWORD(v974) = v969;
      HIDWORD(v974) = (v974 >> 20) - 1320201997 + v973;
      LODWORD(v974) = HIDWORD(v974);
      v976 = v974 >> 25;
      v977 = v958 + v719 + (v961 & v973 | v972 & ~v973);
      v979 = __PAIR64__(v961, __ROR4__(v969, 20));
      v978 = v976 ^ v979;
      LODWORD(v979) = v961;
      v980 = v979 >> 13;
      v981 = v975 + v978;
      HIDWORD(v979) = v977 + v976;
      LODWORD(v979) = v977 + v976;
      v982 = (v979 >> 15) ^ __ROR4__(v977 + v976, 23) ^ (v977 + v976);
      v983 = __PAIR64__(v981, __ROR4__(v956, 23));
      v984 = v970 + (v811 ^ v754) + ((v981 | v969) & v983 | v981 & v969);
      LODWORD(v983) = v981;
      HIDWORD(v983) = (v983 >> 20) + 1654563303 + v982;
      LODWORD(v983) = HIDWORD(v983);
      v985 = v983 >> 25;
      HIDWORD(v983) = v956;
      LODWORD(v983) = v956;
      v986 = v983 >> 23;
      v988 = __PAIR64__(v973, __ROR4__(v981, 20));
      v987 = v985 ^ v988;
      v989 = v972 + v754 + (v973 & v982 | v980 & ~v982) + v985;
      LODWORD(v988) = v973;
      v990 = v988 >> 13;
      v991 = v984 + v987;
      HIDWORD(v988) = v989;
      LODWORD(v988) = v989;
      v992 = (v988 >> 15) ^ __ROR4__(v989, 23) ^ v989;
      v993 = __PAIR64__(v984 + v987, __ROR4__(v969, 23));
      v994 = v986 + (v832 ^ v756) + ((v991 | v981) & v993 | v991 & v981);
      LODWORD(v993) = v984 + v987;
      HIDWORD(v993) = (v993 >> 20) - 985840690 + v992;
      LODWORD(v993) = HIDWORD(v993);
      v995 = v993 >> 25;
      v996 = __PAIR64__(v982, __ROR4__(v984 + v987, 20));
      v997 = v994 + (v995 ^ v996);
      v998 = v980 + v756 + (v982 & v992 | v990 & ~v992) + v995;
      LODWORD(v996) = v982;
      v999 = v996 >> 13;
      HIDWORD(v996) = v998;
      LODWORD(v996) = v998;
      v1000 = v996 >> 15;
      v1001 = __PAIR64__(v997, __ROR4__(v998, 23));
      v1002 = v1000 ^ v1001 ^ v998;
      LODWORD(v1001) = v997;
      v1003 = (v1001 >> 20) - 1971681379;
      HIDWORD(v1001) = v969;
      LODWORD(v1001) = v969;
      v1004 = v1001 >> 23;
      HIDWORD(v1001) = v1003 + v1002;
      LODWORD(v1001) = v1003 + v1002;
      v1005 = v1001 >> 25;
      v1006 = v1004 + (v868 ^ v776) + ((v997 | v991) & __ROR4__(v981, 23) | v997 & v991) + (v1005 ^ __ROR4__(v997, 20));
      v1007 = v890 ^ __ROR4__(v832, 17);
      v1008 = v776 ^ v643;
      v1009 = v1007 ^ v776;
      v1010 = v990 + v776;
      v1011 = __PAIR64__(v981, __ROR4__(v868, 17));
      v1012 = v909 ^ v1011 ^ v809;
      v1013 = v809 ^ v663;
      LODWORD(v1011) = v981;
      v1014 = v1011 >> 23;
      v1015 = v1010 + (v992 & v1002 | v999 & ~v1002) + v1005;
      HIDWORD(v1011) = v1015;
      LODWORD(v1011) = v1015;
      v1016 = v1011 >> 15;
      HIDWORD(v1011) = v992;
      LODWORD(v1011) = v992;
      v1017 = v1011 >> 13;
      v1018 = v1016 ^ __ROR4__(v1015, 23) ^ v1015;
      v1019 = v1014 + (v870 ^ v809);
      v1020 = v999 + v809;
      v1022 = __PAIR64__(v1006, __ROR4__(v870, 17));
      v1021 = v929 ^ v1022;
      LODWORD(v1022) = v1006;
      v1023 = v1022 >> 20;
      HIDWORD(v1022) = v991;
      LODWORD(v1022) = v991;
      v1024 = v1022 >> 23;
      v1025 = v811 ^ v696;
      HIDWORD(v1022) = v1023 + 351604539 + v1018;
      LODWORD(v1022) = HIDWORD(v1022);
      v1026 = v1022 >> 25;
      v1027 = v1019 + ((v1006 | v997) & __ROR4__(v991, 23) | v1006 & v997);
      v1028 = v1026 ^ __ROR4__(v1006, 20);
      v1029 = v1020 + (v1002 & v1018 | v1017 & ~v1018) + v1026;
      HIDWORD(v1022) = v1029;
      LODWORD(v1022) = v1029;
      v1030 = v1022 >> 15;
      HIDWORD(v1022) = v1002;
      LODWORD(v1022) = v1002;
      v1031 = v1022 >> 13;
      v1032 = v1027 + v1028;
      v1033 = v1030 ^ __ROR4__(v1029, 23) ^ v1029;
      v1034 = __PAIR64__(v1032, __ROR4__(v997, 23));
      v1035 = v1024 + (v1009 ^ v811) + ((v1032 | v1006) & v1034 | v1032 & v1006);
      LODWORD(v1034) = v1032;
      v1036 = v1021 ^ v811;
      HIDWORD(v1034) = (v1034 >> 20) + 703209078 + v1033;
      LODWORD(v1034) = HIDWORD(v1034);
      v1037 = v1034 >> 25;
      v1038 = __PAIR64__(v1018, __ROR4__(v1032, 20));
      v1039 = v1035 + (v1037 ^ v1038);
      v1040 = v1017 + v811 + (v1018 & v1033 | v1031 & ~v1033) + v1037;
      LODWORD(v1038) = v1018;
      v1041 = v1038 >> 13;
      HIDWORD(v1038) = v1040;
      LODWORD(v1038) = v1040;
      v1042 = v1038 >> 15;
      v1043 = __PAIR64__(v1039, __ROR4__(v1040, 23));
      v1044 = v1042 ^ v1043 ^ v1040;
      LODWORD(v1043) = v1039;
      v1045 = (v1043 >> 20) + 1406418156;
      HIDWORD(v1043) = v997;
      LODWORD(v1043) = v997;
      v1046 = v1043 >> 23;
      HIDWORD(v1043) = v1045 + v1044;
      LODWORD(v1043) = v1045 + v1044;
      v1047 = v1043 >> 25;
      v1048 = __PAIR64__(v1006, __ROR4__(v1039, 20));
      v1049 = v1046 + (v1012 ^ v832) + ((v1039 | v1032) & __ROR4__(v1006, 23) | v1039 & v1032) + (v1047 ^ v1048);
      v1050 = v1031 + v832;
      LODWORD(v1048) = v1006;
      v1051 = v1048 >> 23;
      v1052 = v1050 + (v1033 & v1044 | v1041 & ~v1044) + v1047;
      HIDWORD(v1048) = v1052;
      LODWORD(v1048) = v1052;
      v1053 = v1048 >> 15;
      HIDWORD(v1048) = v1033;
      LODWORD(v1048) = v1033;
      v1054 = v1048 >> 13;
      v1055 = v1053 ^ __ROR4__(v1052, 23) ^ v1052;
      v1056 = __PAIR64__(v1049, __ROR4__(v1032, 23));
      v1057 = v1051 + (v1036 ^ v868) + ((v1049 | v1039) & v1056 | v1049 & v1039);
      LODWORD(v1056) = v1049;
      v1058 = (v1056 >> 20) - 1482130984 + v1055;
      HIDWORD(v1056) = v698;
      LODWORD(v1056) = v698;
      v1059 = v1056 >> 25;
      HIDWORD(v1056) = v1058;
      LODWORD(v1056) = v1058;
      v1060 = v1056 >> 25;
      v1061 = v1041 + v868 + (v1044 & v1055 | v1054 & ~v1055);
      v1062 = v1057 + (v1060 ^ __ROR4__(v1049, 20));
      v1063 = v1008 ^ __ROR4__(v1009, 17);
      HIDWORD(v1056) = v1061 + v1060;
      LODWORD(v1056) = v1061 + v1060;
      v1064 = (v1056 >> 15) ^ __ROR4__(v1061 + v1060, 23) ^ (v1061 + v1060);
      v1065 = v1059 ^ __ROR4__(v1063, 9) ^ __ROR4__(v1063, 17);
      v1067 = __PAIR64__(v1032, __ROR4__(v1039, 23));
      v1066 = (v1062 | v1049) & v1067;
      LODWORD(v1067) = v1032;
      v1068 = v1067 >> 23;
      v1070 = __PAIR64__(v1044, __ROR4__(v1009, 17));
      v1069 = v1065 ^ v1008 ^ v1070;
      LODWORD(v1070) = v1044;
      v1071 = v1070 >> 13;
      v1072 = v1069 ^ v832 ^ v870;
      HIDWORD(v1070) = v1062;
      LODWORD(v1070) = v1062;
      HIDWORD(v1070) = (v1070 >> 20) + 1330705329 + v1064;
      LODWORD(v1070) = HIDWORD(v1070);
      v1073 = v1070 >> 25;
      v1074 = v1054 + v870 + (v1055 & v1064 | v1071 & ~v1064) + v1073;
      v1075 = v1068 + v1072 + (v1066 | v1062 & v1049) + (v1073 ^ __ROR4__(v1062, 20));
      HIDWORD(v1070) = v1074;
      LODWORD(v1070) = v1074;
      v1076 = (v1070 >> 15) ^ __ROR4__(v1074, 23) ^ v1074;
      v1078 = __PAIR64__(v719, __ROR4__(v1012, 17));
      v1077 = v1013 ^ v1078;
      LODWORD(v1078) = v719;
      v1079 = (v1078 >> 25) ^ __ROR4__(v1077, 9) ^ __ROR4__(v1077, 17);
      v1081 = __PAIR64__(v1039, __ROR4__(v1012, 17));
      v1080 = v1079 ^ v1013 ^ v1081;
      LODWORD(v1081) = v1039;
      v1082 = v1081 >> 23;
      v1083 = v1080 ^ v868 ^ v1009;
      HIDWORD(v1081) = v1055;
      LODWORD(v1081) = v1055;
      v1084 = v1081 >> 13;
      HIDWORD(v1081) = v754;
      LODWORD(v1081) = v754;
      v1085 = v1071 + v1009 + (v1064 & v1076 | v1084 & ~v1076);
      v1086 = v1025 ^ __ROR4__(v1036, 17);
      v1087 = (v1081 >> 25) ^ __ROR4__(v1086, 9);
      v1089 = __PAIR64__(v1075, __ROR4__(v1086, 17));
      v1088 = v1087 ^ v1089;
      LODWORD(v1089) = v1075;
      HIDWORD(v1089) = (v1089 >> 20) - 1633556638 + v1076;
      LODWORD(v1089) = HIDWORD(v1089);
      v1090 = v1089 >> 25;
      v1091 = v1085 + v1090;
      v1092 = v1082 + v1083 + ((v1075 | v1062) & __ROR4__(v1049, 23) | v1075 & v1062) + (v1090 ^ __ROR4__(v1075, 20));
      v1094 = __PAIR64__(v1091, __ROR4__(v1036, 17));
      v1093 = v1088 ^ v1025 ^ v1094;
      LODWORD(v1094) = v1091;
      v1095 = (v1094 >> 15) ^ __ROR4__(v1091, 23) ^ v1091;
      v1096 = __PAIR64__(v1049, __ROR4__(v1062, 23));
      v1097 = (v1092 | v1075) & v1096 | v1092 & v1075;
      LODWORD(v1096) = v1049;
      v1098 = (v1096 >> 23) + (v1093 ^ v870 ^ v1012);
      HIDWORD(v1096) = v1064;
      LODWORD(v1096) = v1064;
      v1099 = v1098 + v1097;
      v1100 = v1076 & v1095 | (v1096 >> 13) & ~v1095;
      HIDWORD(v1096) = v1092;
      LODWORD(v1096) = v1092;
      HIDWORD(v1096) = (v1096 >> 20) + 1027854021 + v1095;
      LODWORD(v1096) = HIDWORD(v1096);
      v1101 = v1096 >> 25;
      v1102 = v1101 ^ __ROR4__(v1092, 20);
      v1103 = v1084 + v1012 + v1100 + v1101;
      v5 = v1122 ^ __ROR4__(v1075, 23);
      v7 = v1095 ^ v1121;
      v1124 = v1092 ^ v1123;
      v1104 = __PAIR64__(v1103, __ROR4__(v1062, 23));
      v6 = v1116 ^ v1104;
      LODWORD(v1104) = v1103;
      v8 = (v1104 >> 15) ^ __ROR4__(v1103, 23) ^ v1114 ^ v1103;
      v3 = (v1099 + v1102) ^ v1125;
      result = v1120 ^ __ROR4__(v1076, 13);
      v4 = v1124;
      v9 = v1115 ^ __ROR4__(v1064, 13);
      v1105[2] = v5;
      v1105[3] = v6;
      *v1105 = v3;
      v1105[1] = v1124;
      v1105[4] = v8;
      v1105[5] = v1095 ^ v1121;
      v1105[6] = result;
      v1105[7] = v9;
      a2 = v1126 + 16;
      a3 = v1117 - 1;
    }

    while (v1117 != 1);
  }

  return result;
}

uint64_t SM3_Final(_DWORD *a1, unsigned int *a2)
{
  v4 = a2 + 10;
  v5 = a2[26];
  *(a2 + v5 + 40) = 0x80;
  v6 = v5 + 1;
  if (v5 >= 0x38)
  {
    bzero(v4 + v6, 63 - v5);
    SM3_block_data_order(a2, v4, 1);
    v6 = 0;
  }

  bzero(v4 + v6, 56 - v6);
  v7 = bswap32(a2[8]);
  a2[24] = bswap32(a2[9]);
  a2[25] = v7;
  SM3_block_data_order(a2, v4, 1);
  a2[26] = 0;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *a1 = bswap32(*a2);
  a1[1] = bswap32(a2[1]);
  a1[2] = bswap32(a2[2]);
  a1[3] = bswap32(a2[3]);
  a1[4] = bswap32(a2[4]);
  a1[5] = bswap32(a2[5]);
  a1[6] = bswap32(a2[6]);
  a1[7] = bswap32(a2[7]);
  return 1;
}

uint64_t SM3_Init(_OWORD *a1)
{
  *(a1 + 92) = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = xmmword_23E237790;
  a1[1] = xmmword_23E2377A0;
  return 1;
}

uint64_t ec_wNAF_mul(EC_GROUP *a1, EC_POINT *a2, const BIGNUM *a3, unint64_t a4, void **a5, uint64_t a6, BN_CTX *a7)
{
  if (*a1 != *a2)
  {
    v7 = 364;
LABEL_3:
    ERR_put_error(16, 4095, 101, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_mult.c", v7);
    return 0;
  }

  if (a3 || a4)
  {
    if (a4)
    {
      v17 = a5;
      v18 = a4;
      while (*a1 == **v17)
      {
        ++v17;
        if (!--v18)
        {
          goto LABEL_14;
        }
      }

      v7 = 372;
      goto LABEL_3;
    }

LABEL_14:
    if (a3)
    {
      v19 = EC_GROUP_get0_generator(a1);
      if (v19)
      {
        data = EC_EX_DATA_get_data(*(a1 + 12), ec_pre_comp_dup, ec_pre_comp_free, ec_pre_comp_clear_free);
        v108 = a6;
        if (!data || (v21 = data, !data[2]) || EC_POINT_cmp(a1, v19, *data[4], a7))
        {
          v99 = 0;
          v100 = 0;
          v96 = 0;
          v98 = 0;
          v22 = 1;
          v97 = 1;
          v23 = 1;
LABEL_22:
          v101 = v22;
          v24 = v22 + a4;
          v25 = reallocarray(0, v22 + a4 + 1, 8uLL);
          v26 = v25;
          if (v25)
          {
            v94 = v19;
            v107 = a4;
            *v25 = 0;
            v19 = reallocarray(0, v24, 8uLL);
            v27 = reallocarray(0, v24, 8uLL);
            v95 = v24;
            v28 = reallocarray(0, v24, 8uLL);
            v29 = v28;
            if (v19 && v27 && v28)
            {
              a = a2;
              v90 = a5;
              v102 = a1;
              v91 = a7;
              r = v19;
              v93 = v28;
              v30 = v23 + v107;
              v103 = v27;
              v92 = v23 + v107;
              if (v23 + v107)
              {
                v31 = 0;
                v32 = 0;
                v33 = 0;
                v34 = 1;
                while (1)
                {
                  v35 = a3;
                  if (v34 - 1 < v107)
                  {
                    v35 = *(v108 + v31 * 8);
                  }

                  v36 = BN_num_bits(v35);
                  if (v36 <= 0x13)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = 2;
                  }

                  if (v36 > 0x45)
                  {
                    v37 = 3;
                  }

                  if (v36 > 0x12B)
                  {
                    v37 = 4;
                  }

                  if (v36 > 0x31F)
                  {
                    v37 = 5;
                  }

                  if (v36 <= 0x7CF)
                  {
                    v38 = v37;
                  }

                  else
                  {
                    v38 = 6;
                  }

                  *(r + v31 * 8) = v38;
                  v26[v31 + 1] = 0;
                  v39 = a3;
                  if (v34 - 1 < v107)
                  {
                    v39 = *(v108 + v31 * 8);
                  }

                  v27 = v103;
                  v40 = compute_wNAF(v39, v38, &v103[v31]);
                  v26[v31] = v40;
                  if (!v40)
                  {
                    break;
                  }

                  v32 += 1 << (v38 - 1);
                  if (v103[v31] > v33)
                  {
                    v33 = v103[v31];
                  }

                  ++v31;
                  ++v34;
                  if (!--v30)
                  {
                    goto LABEL_69;
                  }
                }

                v41 = 0;
                v42 = 0;
                v8 = 0;
                v29 = v93;
                v19 = r;
                goto LABEL_57;
              }

              v33 = 0;
              v32 = 0;
LABEL_69:
              if (!v101)
              {
                v41 = 0;
                v29 = v93;
                v19 = r;
                goto LABEL_91;
              }

              v29 = v93;
              v19 = r;
              if (v100)
              {
                v111[0] = 0;
                if ((v98 & 1) == 0)
                {
                  ERR_put_error(16, 4095, 68, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_mult.c", 470);
                  v41 = 0;
                  goto LABEL_87;
                }

                v51 = v100[3];
                *(r + v107) = v51;
                v52 = compute_wNAF(a3, v51, v111);
                v41 = v52;
                if (!v52)
                {
LABEL_87:
                  v40 = 0;
                  goto LABEL_55;
                }

                v53 = v111[0];
                if (v111[0] > v33)
                {
                  v54 = v99;
                  if (v111[0] < v101 * v99)
                  {
                    v55 = (v99 + v111[0] - 1) / v99;
                    if (v55 > v100[2])
                    {
                      ERR_put_error(16, 4095, 68, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_mult.c", 520);
                      goto LABEL_87;
                    }

                    v95 = v55 + v107;
                  }

                  if (v95 > v107)
                  {
                    v79 = v100[4];
                    v80 = &v26[v107 + 1];
                    v110 = v41;
                    v81 = v41;
                    v82 = v107;
                    while (1)
                    {
                      if (v82 >= v95 - 1)
                      {
                        v103[v82] = v53;
                        v54 = v53;
                      }

                      else
                      {
                        v103[v82] = v54;
                        v83 = v53 >= v54;
                        v53 -= v54;
                        if (!v83)
                        {
                          v87 = 68;
                          v88 = 533;
                          goto LABEL_160;
                        }
                      }

                      *v80 = 0;
                      v84 = malloc_type_malloc(v54, 0x6DDCEFBDuLL);
                      *(v80 - 1) = v84;
                      if (!v84)
                      {
                        break;
                      }

                      v27 = v103;
                      memcpy(v84, v81, v103[v82]);
                      if (!*v79)
                      {
                        ERR_put_error(16, 4095, 68, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_mult.c", 557);
                        v19 = r;
                        goto LABEL_161;
                      }

                      v85 = v103[v82];
                      v93[v82] = v79;
                      v86 = v82 + 1;
                      if (v85 > v33)
                      {
                        v33 = v85;
                      }

                      v54 = v99;
                      v81 += v99;
                      v79 += v96;
                      ++v80;
                      ++v82;
                      if (v95 == v86)
                      {
                        v27 = v103;
                        v19 = r;
                        v41 = v110;
                        goto LABEL_91;
                      }
                    }

                    v87 = 65;
                    v88 = 549;
LABEL_160:
                    ERR_put_error(16, 4095, v87, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_mult.c", v88);
                    v27 = v103;
                    v19 = r;
LABEL_161:
                    v41 = v110;
                    goto LABEL_87;
                  }

LABEL_91:
                  v59 = reallocarray(0, v32 + 1, 8uLL);
                  v42 = v59;
                  if (!v59)
                  {
                    ERR_put_error(16, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_mult.c", 575);
                    v40 = 0;
                    goto LABEL_56;
                  }

                  v109 = v41;
                  ra = &v59[v32];
                  *ra = 0;
                  v60 = v59;
                  if (v92)
                  {
                    v61 = 0;
                    v60 = v59;
LABEL_94:
                    v29[v61] = v60;
                    v62 = 1;
                    while (1)
                    {
                      v40 = EC_POINT_new(v102);
                      *v60 = v40;
                      if (!v40)
                      {
                        goto LABEL_100;
                      }

                      ++v60;
                      if (v62++ >> (*(v19 + v61) - 1))
                      {
                        if (++v61 != v92)
                        {
                          goto LABEL_94;
                        }

                        break;
                      }
                    }
                  }

                  if (v60 != ra)
                  {
                    ERR_put_error(16, 4095, 68, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_mult.c", 592);
                    v40 = 0;
LABEL_100:
                    v8 = 0;
                    v27 = v103;
LABEL_101:
                    v41 = v109;
                    goto LABEL_57;
                  }

                  v40 = EC_POINT_new(v102);
                  v27 = v103;
                  if (!v40)
                  {
                    v8 = 0;
                    goto LABEL_101;
                  }

                  rb = v40;
                  v64 = v91;
                  if (v92)
                  {
                    v65 = 0;
                    do
                    {
                      v66 = v65 >= v107 ? v94 : v90[v65];
                      if (!EC_POINT_copy(*v29[v65], v66))
                      {
                        goto LABEL_143;
                      }

                      if (*(v19 + v65) >= 2uLL)
                      {
                        if (!EC_POINT_dbl(v102, rb, *v29[v65], v91))
                        {
                          goto LABEL_143;
                        }

                        if (*(v19 + v65) != 1)
                        {
                          v67 = 0;
                          do
                          {
                            v68 = (v29[v65] + 8 * v67);
                            if (!EC_POINT_add(v102, v68[1], *v68, rb, v91))
                            {
                              goto LABEL_143;
                            }

                            v69 = (v67 + 2) >> (*(v19 + 8 * v65) - 1);
                            ++v67;
                          }

                          while (!v69);
                        }
                      }
                    }

                    while (++v65 != v92);
                  }

                  if (!EC_POINTs_make_affine(v102, v32, v42, v91))
                  {
LABEL_143:
                    v8 = 0;
LABEL_166:
                    v41 = v109;
                    v40 = rb;
                    goto LABEL_57;
                  }

                  v70 = (v33 - 1);
                  if (v33 - 1 < 0)
                  {
LABEL_141:
                    if (EC_POINT_set_to_infinity(v102, a))
                    {
LABEL_142:
                      v8 = 1;
LABEL_165:
                      v27 = v103;
                      goto LABEL_166;
                    }
                  }

                  else
                  {
                    v71 = 0;
                    v8 = 1;
                    while (v8 || EC_POINT_dbl(v102, a, a, v64))
                    {
                      if (v95)
                      {
                        for (i = 0; v95 != i; ++i)
                        {
                          if (v103[i] > v70)
                          {
                            v73 = *(v26[i] + v70);
                            if (*(v26[i] + v70))
                            {
                              if ((v73 & 0x80u) == 0)
                              {
                                LOBYTE(v74) = *(v26[i] + v70);
                              }

                              else
                              {
                                v74 = -v73;
                              }

                              if (v71 != v73 >> 7)
                              {
                                if (!v8 && !EC_POINT_invert(v102, a, v91))
                                {
                                  goto LABEL_164;
                                }

                                v71 = v71 == 0;
                              }

                              v75 = v29[i];
                              v76 = *(v75 + 8 * (v74 >> 1));
                              if (v8)
                              {
                                v77 = EC_POINT_copy(a, *(v75 + 8 * (v74 >> 1)));
                                v8 = 0;
                                v64 = v91;
                                if (!v77)
                                {
                                  goto LABEL_165;
                                }
                              }

                              else
                              {
                                v64 = v91;
                                if (!EC_POINT_add(v102, a, a, v76, v91))
                                {
                                  goto LABEL_165;
                                }
                              }
                            }
                          }
                        }
                      }

                      if (v70-- < 1)
                      {
                        if (v8)
                        {
                          goto LABEL_141;
                        }

                        if (!v71 || EC_POINT_invert(v102, a, v91))
                        {
                          goto LABEL_142;
                        }

                        break;
                      }
                    }
                  }

LABEL_164:
                  v8 = 0;
                  goto LABEL_165;
                }

                v26[v107] = v52;
                v95 = v107 + 1;
                v26[v107 + 1] = 0;
                v27[v107] = v53;
                v93[v107] = v100[4];
LABEL_90:
                v41 = 0;
                goto LABEL_91;
              }

              if (v97)
              {
                goto LABEL_90;
              }

              v43 = 68;
              v44 = 462;
            }

            else
            {
              v43 = 65;
              v44 = 436;
            }

            ERR_put_error(16, 4095, v43, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_mult.c", v44);
            v40 = 0;
            v41 = 0;
LABEL_55:
            v42 = 0;
            goto LABEL_56;
          }

          ERR_put_error(16, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_mult.c", 425);
          v40 = 0;
          v19 = 0;
LABEL_52:
          v41 = 0;
          v27 = 0;
          v42 = 0;
          v29 = 0;
LABEL_56:
          v8 = 0;
LABEL_57:
          EC_POINT_free(v40);
          free(v19);
          free(v27);
          free(v41);
          if (v26)
          {
            v45 = *v26;
            if (*v26)
            {
              v46 = v26 + 1;
              do
              {
                free(v45);
                v47 = *v46++;
                v45 = v47;
              }

              while (v47);
            }

            free(v26);
          }

          if (v42)
          {
            v48 = *v42;
            if (*v42)
            {
              v49 = v42 + 1;
              do
              {
                EC_POINT_free(v48);
                v50 = *v49++;
                v48 = v50;
              }

              while (v50);
            }

            free(v42);
          }

          free(v29);
          return v8;
        }

        v99 = v21[1];
        v56 = BN_num_bits(a3) / v99;
        v57 = v21[2];
        v58 = v21[3];
        if (v56 + 1 < v57)
        {
          v22 = v56 + 1;
        }

        else
        {
          v22 = v21[2];
        }

        if (v21[5] == v57 << (v58 - 1))
        {
          v100 = v21;
          v97 = 0;
          v23 = 0;
          v98 = 1;
          v96 = 1 << (v58 - 1);
          goto LABEL_22;
        }

        ERR_put_error(16, 4095, 68, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_mult.c", 409);
        v40 = 0;
        v19 = 0;
      }

      else
      {
        ERR_put_error(16, 4095, 113, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_mult.c", 380);
        v40 = 0;
      }

      v26 = 0;
      goto LABEL_52;
    }

    v108 = a6;
    v19 = 0;
    v99 = 0;
    v100 = 0;
    v22 = 0;
    v96 = 0;
    v97 = 0;
    v23 = 0;
    v98 = 1;
    goto LABEL_22;
  }

  return EC_POINT_set_to_infinity(a1, a2);
}

void ec_pre_comp_free(uint64_t a1)
{
  if (a1 && CRYPTO_add_lock((a1 + 48), -1, 36, 0, 0) <= 0)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = *v2;
      if (*v2)
      {
        v4 = v2 + 1;
        do
        {
          EC_POINT_free(v3);
          v5 = *v4++;
          v3 = v5;
        }

        while (v5);
        v2 = *(a1 + 32);
      }

      free(v2);
    }

    free(a1);
  }
}

void *ec_pre_comp_clear_free(void *result)
{
  if (result)
  {
    v1 = result;
    result = CRYPTO_add_lock(result + 12, -1, 36, 0, 0);
    if (result <= 0)
    {
      v2 = v1[4];
      if (v2)
      {
        if (*v2)
        {
          EC_POINT_free(*v2);
          explicit_bzero(v2, 8uLL);
        }

        free(v2);
      }

      return freezero(v1, 0x38uLL);
    }
  }

  return result;
}

_BYTE *compute_wNAF(const BIGNUM *a1, int a2, unint64_t *a3)
{
  if (BN_is_zero(a1))
  {
    v6 = malloc_type_malloc(1uLL, 0x4E63108FuLL);
    v7 = v6;
    if (!v6)
    {
      v10 = 65;
      v11 = 207;
      goto LABEL_8;
    }

    *v6 = 0;
    v8 = 1;
LABEL_4:
    *a3 = v8;
    return v7;
  }

  if ((a2 - 8) <= 0xFFFFFFF8)
  {
    v9 = 217;
LABEL_34:
    ERR_put_error(16, 4095, 68, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_mult.c", v9);
    v7 = 0;
    goto LABEL_35;
  }

  is_negative = BN_is_negative(a1);
  if (!a1->d || !a1->top)
  {
    v9 = 228;
    goto LABEL_34;
  }

  v13 = is_negative;
  v22 = BN_num_bits(a1);
  v7 = malloc_type_malloc(v22 + 1, 0x2A0E3CDAuLL);
  if (!v7)
  {
    v10 = 65;
    v11 = 237;
    goto LABEL_8;
  }

  v8 = 0;
  v14 = 1 << a2;
  v15 = 2 << a2;
  v16 = ((2 << a2) - 1) & *a1->d;
  v17 = (a2 + 1);
  while (v16)
  {
    if ((v16 & 1) == 0)
    {
      goto LABEL_28;
    }

    v18 = v16 - v15;
    if (v17 + v8 >= v22)
    {
      v18 = v16 & (((2 << a2) - 1) >> 1);
    }

    v19 = (v18 & 1) == 0;
    if ((v16 & v14) == 0)
    {
      v19 = 0;
      v18 = v16;
    }

    if (v18 <= -(1 << a2) || v18 >= v14 || v19)
    {
      v10 = 68;
      v11 = 271;
      goto LABEL_8;
    }

    v16 -= v18;
    if (v16 && v16 != v15 && v16 != v14)
    {
      v10 = 68;
      v11 = 282;
      goto LABEL_8;
    }

LABEL_29:
    if (v13)
    {
      v18 = -v18;
    }

    v20 = v8 + 1;
    v7[v8] = v18;
    v16 = (BN_is_bit_set(a1, v17 + v8) << a2) + (v16 >> 1);
    v8 = v20;
    if (v16 > v15)
    {
      v10 = 68;
      v11 = 292;
      goto LABEL_8;
    }
  }

  if (v17 + v8 < v22)
  {
    v16 = 0;
LABEL_28:
    v18 = 0;
    goto LABEL_29;
  }

  if (v8 <= v22 + 1)
  {
    goto LABEL_4;
  }

  v10 = 68;
  v11 = 298;
LABEL_8:
  ERR_put_error(16, 4095, v10, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_mult.c", v11);
LABEL_35:
  free(v7);
  return 0;
}

BOOL ec_wNAF_precompute_mult(_BOOL8 a1, BN_CTX *a2)
{
  v3 = a1;
  EC_EX_DATA_free_data((a1 + 96), ec_pre_comp_dup, ec_pre_comp_free, ec_pre_comp_clear_free);
  if (!v3)
  {
    return v3;
  }

  v4 = malloc_type_malloc(0x38uLL, 0x10E00400304B0BDuLL);
  if (!v4)
  {
    ERR_put_error(16, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_mult.c", 110);
    return 0;
  }

  v5 = v4;
  *v4 = v3;
  *(v4 + 8) = xmmword_23E2377B0;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0;
  *(v4 + 3) = 4;
  *(v4 + 12) = 1;
  v6 = EC_GROUP_get0_generator(v3);
  if (!v6)
  {
    v9 = 113;
    v10 = 737;
    goto LABEL_10;
  }

  v7 = v6;
  BN_CTX_start(a2);
  v8 = BN_CTX_get(a2);
  if (!v8)
  {
    goto LABEL_34;
  }

  if (!EC_GROUP_get_order(v3, v8, a2))
  {
LABEL_11:
    v11 = 0;
    v12 = 0;
    v8 = 0;
    goto LABEL_36;
  }

  if (BN_is_zero(v8))
  {
    v9 = 114;
    v10 = 749;
LABEL_10:
    ERR_put_error(16, 4095, v9, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_mult.c", v10);
    goto LABEL_11;
  }

  v13 = BN_num_bits(v8);
  v14 = 5;
  if (v13 > 0x7CF)
  {
    v14 = 6;
  }

  if (v13 <= 0x31F)
  {
    v15 = 4;
  }

  else
  {
    v15 = v14;
  }

  v16 = v13 + 7;
  v17 = v15 - 1;
  v18 = v16 >> 3 << (v15 - 1);
  v19 = reallocarray(0, v18 + 1, 8uLL);
  v8 = v19;
  if (!v19)
  {
    v24 = 777;
LABEL_33:
    ERR_put_error(16, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_mult.c", v24);
LABEL_34:
    v11 = 0;
    goto LABEL_35;
  }

  v37 = v16 >> 3;
  *(&v19->d + v18) = 0;
  if (v18)
  {
    v20 = 0;
    while (1)
    {
      v21 = EC_POINT_new(v3);
      *(&v8->d + v20) = v21;
      if (!v21)
      {
        break;
      }

      if (v18 == ++v20)
      {
        goto LABEL_22;
      }
    }

    v24 = 784;
    goto LABEL_33;
  }

LABEL_22:
  v36 = v15;
  v11 = EC_POINT_new(v3);
  if (!v11 || (v22 = EC_POINT_new(v3)) == 0)
  {
    ERR_put_error(16, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_mult.c", 790);
LABEL_35:
    v12 = 0;
    goto LABEL_36;
  }

  v12 = v22;
  if (EC_POINT_copy(v22, v7))
  {
    if (v16 >= 8)
    {
      v29 = v16 >> 3;
      v35 = 0;
      if (v37 <= 1)
      {
        v29 = 1;
      }

      v34 = v29;
      v30 = v8;
LABEL_47:
      if (EC_POINT_dbl(v3, v11, v12, a2) && EC_POINT_copy(*v30, v12))
      {
        ++v30;
        v31 = 2;
        while (EC_POINT_add(v3, *v30, v11, *(v30 - 1), a2))
        {
          ++v30;
          if (v31++ >> v17)
          {
            if (v35 < v37 - 1)
            {
              if (EC_POINT_dbl(v3, v12, v11, a2))
              {
                v33 = 6;
                while (EC_POINT_dbl(v3, v12, v12, a2))
                {
                  if (!--v33)
                  {
                    goto LABEL_57;
                  }
                }
              }

              break;
            }

LABEL_57:
            if (++v35 != v34)
            {
              goto LABEL_47;
            }

            goto LABEL_26;
          }
        }
      }
    }

    else
    {
LABEL_26:
      if (EC_POINTs_make_affine(v3, v18, v8, a2))
      {
        *v5 = v3;
        v5[1] = 8;
        v5[2] = v37;
        v5[3] = v36;
        v5[4] = v8;
        v5[5] = v18;
        v23 = EC_EX_DATA_set_data(v3 + 96, v5, ec_pre_comp_dup, ec_pre_comp_free, ec_pre_comp_clear_free);
        v8 = 0;
        v3 = v23 != 0;
        if (v23)
        {
          v5 = 0;
        }

        goto LABEL_37;
      }
    }
  }

LABEL_36:
  v3 = 0;
LABEL_37:
  BN_CTX_end(a2);
  ec_pre_comp_free(v5);
  if (v8)
  {
    d = v8->d;
    if (v8->d)
    {
      p_top = &v8->top;
      do
      {
        EC_POINT_free(d);
        v27 = *p_top;
        p_top += 2;
        d = v27;
      }

      while (v27);
    }

    free(v8);
  }

  EC_POINT_free(v11);
  EC_POINT_free(v12);
  return v3;
}

int X509_CRL_add0_revoked(X509_CRL *crl, X509_REVOKED *rev)
{
  v3 = crl->crl;
  revoked = crl->crl->revoked;
  if ((revoked || (revoked = sk_new(X509_REVOKED_cmp), (v3->revoked = revoked) != 0)) && sk_push(revoked, rev))
  {
    result = 1;
    v3->enc.modified = 1;
  }

  else
  {
    ERR_put_error(13, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/x_crl.c", 541);
    return 0;
  }

  return result;
}

int X509_CRL_verify(X509_CRL *a, EVP_PKEY *r)
{
  data = a[4].signature[1].data;
  if (data)
  {
    return (data)();
  }

  else
  {
    return 0;
  }
}

uint64_t X509_CRL_get0_by_serial(uint64_t a1)
{
  v1 = *(*(a1 + 144) + 24);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t X509_CRL_get0_by_cert(uint64_t a1, uint64_t a2, X509 *x)
{
  v4 = *(a1 + 144);
  result = *(v4 + 24);
  if (result)
  {
    v10 = *(v4 + 24);
    serialNumber = X509_get_serialNumber(x);
    issuer_name = X509_get_issuer_name(x);

    return v10(a1, a2, serialNumber, issuer_name);
  }

  return result;
}

void *X509_CRL_set_default_method(void *result)
{
  v1 = &int_crl_meth;
  if (result)
  {
    v1 = result;
  }

  default_crl_method = v1;
  return result;
}

void *X509_CRL_METHOD_new(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = malloc_type_calloc(1uLL, 0x28uLL, 0x1080040E6FF41AEuLL);
  if (result)
  {
    result[1] = a1;
    result[2] = a2;
    result[3] = a3;
    result[4] = a4;
    *result = 1;
  }

  return result;
}

void X509_CRL_METHOD_free(void *a1)
{
  if (a1)
  {
    if (*a1)
    {
      free(a1);
    }
  }
}

uint64_t X509_CRL_get0_signature(uint64_t result, void *a2, void *a3)
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

uint64_t crl_inf_cb(int a1, uint64_t a2)
{
  if (*a2)
  {
    if (a1 == 5)
    {
      v2 = *(*a2 + 40);
      if (v2)
      {
        sk_set_cmp_func(v2, X509_REVOKED_cmp);
      }
    }
  }

  return 1;
}

BOOL crl_cb(int a1, void *a2)
{
  v2 = *a2;
  if (a1 == 5)
  {
    v5 = EVP_sha512();
    X509_CRL_digest(v2, v5, (v2 + 72), 0);
    ext_d2i = X509_CRL_get_ext_d2i(v2, 770, 0, 0);
    *(v2 + 40) = ext_d2i;
    if (ext_d2i)
    {
      v7 = *(v2 + 48);
      v8 = v7 | 1;
      *(v2 + 48) = v7 | 1;
      if (ext_d2i[2] < 1)
      {
        v9 = 0;
      }

      else
      {
        v8 = v7 | 5;
        *(v2 + 48) = v7 | 5;
        v9 = 1;
      }

      if (ext_d2i[3] >= 1)
      {
        ++v9;
        v8 |= 8u;
        *(v2 + 48) = v8;
      }

      v12 = ext_d2i[7];
      if (v12 > 0)
      {
        v8 |= 0x10u;
        ++v9;
      }

      if (v9 > 1)
      {
        v8 |= 2u;
      }

      if (v12 > 0 || v9 >= 2)
      {
        *(v2 + 48) = v8;
      }

      if (ext_d2i[6] >= 1)
      {
        v8 |= 0x20u;
        *(v2 + 48) = v8;
      }

      v14 = *(ext_d2i + 2);
      if (v14)
      {
        *(v2 + 48) = v8 | 0x40;
        v15 = *v14;
        if (*v14 <= 0)
        {
          v17 = *(v2 + 52);
        }

        else
        {
          v16 = *(v14 + 8);
          v17 = *v16;
          *(v2 + 52) = v17;
          if (v15 != 1)
          {
            LOWORD(v17) = v17 | (v16[1] << 8);
          }
        }

        *(v2 + 52) = v17 & 0x807F;
      }

      DIST_POINT_set_dpname(*ext_d2i, *(*v2 + 16));
    }

    *(v2 + 32) = X509_CRL_get_ext_d2i(v2, 90, 0, 0);
    *(v2 + 56) = X509_CRL_get_ext_d2i(v2, 88, 0, 0);
    v18 = X509_CRL_get_ext_d2i(v2, 140, 0, 0);
    *(v2 + 64) = v18;
    if (v18 && !*(v2 + 56))
    {
      *(v2 + 28) |= 0x80u;
    }

    v19 = *(*v2 + 48);
    if (sk_num(v19) >= 1)
    {
      v20 = 0;
      while (1)
      {
        v21 = sk_value(v19, v20);
        v22 = OBJ_obj2nid(*v21);
        if (v22 == 857)
        {
          *(v2 + 28) |= 0x1000u;
        }

        if (*(v21 + 2) >= 1)
        {
          break;
        }

        if (++v20 >= sk_num(v19))
        {
          goto LABEL_52;
        }
      }

      if (v22 != 90 && v22 != 140 && v22 != 770)
      {
        *(v2 + 28) |= 0x200u;
      }
    }

LABEL_52:
    crit = 0;
    v23 = *(*v2 + 40);
    if (sk_num(v23) >= 1)
    {
      v24 = 0;
      v25 = 0;
      while (1)
      {
        v26 = sk_value(v23, v25);
        v27 = X509_REVOKED_get_ext_d2i(v26, 771, &crit, 0);
        v28 = v27;
        if (!v27 && crit != -1)
        {
          break;
        }

        if (v27)
        {
          v29 = *(v2 + 136);
          if (!v29)
          {
            v29 = sk_new_null();
            *(v2 + 136) = v29;
            if (!v29)
            {
              return 0;
            }
          }

          v24 = v28;
          if (!sk_push(v29, v28))
          {
            return 0;
          }
        }

        *(v26 + 3) = v24;
        v30 = X509_REVOKED_get_ext_d2i(v26, 141, &crit, 0);
        v31 = v30;
        if (!v30 && crit != -1)
        {
          break;
        }

        if (v30)
        {
          *(v26 + 8) = ASN1_ENUMERATED_get(v30);
          ASN1_ENUMERATED_free(v31);
        }

        else
        {
          *(v26 + 8) = -1;
        }

        v32 = *(v26 + 2);
        crit = 0;
        if (sk_num(v32) >= 1)
        {
          while (1)
          {
            v33 = sk_value(v32, crit);
            if (*(v33 + 2) >= 1 && OBJ_obj2nid(*v33) != 771)
            {
              break;
            }

            v34 = ++crit;
            if (v34 >= sk_num(v32))
            {
              goto LABEL_71;
            }
          }

          *(v2 + 28) |= 0x200u;
        }

LABEL_71:
        if (++v25 >= sk_num(v23))
        {
          goto LABEL_74;
        }
      }

      *(v2 + 28) |= 0x80u;
    }

LABEL_74:
    v35 = *(*(v2 + 144) + 8);
    return !v35 || v35(v2);
  }

  if (a1 != 3)
  {
    if (a1 == 1)
    {
      *(v2 + 36) = 0;
      *(v2 + 28) = 0;
      *(v2 + 44) = 0;
      *(v2 + 52) = 32895;
      *(v2 + 144) = default_crl_method;
      *(v2 + 152) = 0;
      *(v2 + 136) = 0;
      *(v2 + 56) = 0;
      *(v2 + 64) = 0;
    }

    return 1;
  }

  v3 = *(*(v2 + 144) + 16);
  if (v3)
  {
    v4 = v3(*a2) != 0;
  }

  else
  {
    v4 = 1;
  }

  v10 = *(v2 + 32);
  if (v10)
  {
    AUTHORITY_KEYID_free(v10);
  }

  v11 = *(v2 + 40);
  if (v11)
  {
    ISSUING_DIST_POINT_free(v11);
  }

  ASN1_INTEGER_free(*(v2 + 56));
  ASN1_INTEGER_free(*(v2 + 64));
  sk_pop_free(*(v2 + 136), GENERAL_NAMES_free);
  return v4;
}

uint64_t def_crl_lookup(uint64_t a1, char **a2, ASN1_INTEGER *a3, const X509_NAME *a4)
{
  *data = a3;
  if (!sk_is_sorted(*(*a1 + 40)))
  {
    CRYPTO_lock(9, 6, 0, 0);
    sk_sort(*(*a1 + 40));
    CRYPTO_lock(10, 6, 0, 0);
  }

  v18 = 0u;
  v17 = 0u;
  v8 = sk_find(*(*a1 + 40), data);
  if ((v8 & 0x80000000) == 0)
  {
    for (i = v8; i < sk_num(*(*a1 + 40)); ++i)
    {
      v10 = sk_value(*(*a1 + 40), i);
      if (ASN1_INTEGER_cmp(*v10, a3))
      {
        break;
      }

      v11 = *(v10 + 3);
      if (v11)
      {
        v12 = a4;
        if (!a4)
        {
          v12 = *(*a1 + 16);
        }

        if (sk_num(v11) >= 1)
        {
          v13 = 0;
          while (1)
          {
            v14 = sk_value(*(v10 + 3), v13);
            if (*v14 == 4 && !X509_NAME_cmp(v12, *(v14 + 1)))
            {
              break;
            }

            if (++v13 >= sk_num(*(v10 + 3)))
            {
              goto LABEL_18;
            }
          }

LABEL_20:
          if (a2)
          {
            *a2 = v10;
          }

          if (*(v10 + 8) == 8)
          {
            return 2;
          }

          else
          {
            return 1;
          }
        }
      }

      else if (!a4 || !X509_NAME_cmp(a4, *(*a1 + 16)))
      {
        goto LABEL_20;
      }

LABEL_18:
      ;
    }
  }

  return 0;
}

int AES_wrap_key(AES_KEY *key, const unsigned __int8 *iv, unsigned __int8 *out, const unsigned __int8 *in, unsigned int inlen)
{
  v17 = *MEMORY[0x277D85DE8];
  result = -1;
  if (inlen >= 0x10 && (inlen & 7) == 0)
  {
    memmove(out + 8, in, inlen);
    v10 = 0;
    v11 = &default_iv;
    if (iv)
    {
      v11 = iv;
    }

    *outa = *v11;
    v12 = 1;
    do
    {
      v13 = 0;
      do
      {
        v16 = *&out[v13 + 8];
        AES_encrypt(outa, outa, key);
        outa[7] ^= v12;
        if (v12 >= 0x100)
        {
          outa[6] ^= BYTE1(v12);
          outa[5] ^= BYTE2(v12);
          outa[4] ^= HIBYTE(v12);
        }

        *&out[v13 + 8] = v16;
        ++v12;
        v13 += 8;
      }

      while (v13 < inlen);
      ++v10;
    }

    while (v10 != 6);
    *out = *outa;
    result = inlen + 8;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

int AES_unwrap_key(AES_KEY *key, const unsigned __int8 *iv, unsigned __int8 *out, const unsigned __int8 *in, unsigned int inlen)
{
  v18 = *MEMORY[0x277D85DE8];
  LODWORD(v5) = -1;
  if (inlen >= 0x18 && (inlen & 7) == 0)
  {
    v5 = inlen - 8;
    v9 = 2 * ((v5 >> 2) + (v5 >> 3));
    *outa = *in;
    memmove(out, in + 8, v5);
    for (i = 0; i != 6; ++i)
    {
      v11 = 0;
      v12 = v5 - 8;
      do
      {
        outa[7] ^= v9;
        if (v9 >= 0x100)
        {
          outa[6] ^= BYTE1(v9);
          outa[5] ^= BYTE2(v9);
          outa[4] ^= HIBYTE(v9);
        }

        v17 = *&out[v12];
        AES_decrypt(outa, outa, key);
        *&out[v12] = v17;
        v11 += 8;
        --v9;
        v12 -= 8;
      }

      while (v11 < v5);
    }

    v13 = &default_iv;
    if (iv)
    {
      v13 = iv;
    }

    if (*outa != *v13)
    {
      explicit_bzero(out, v5);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

void ERR_load_PKCS12_strings(void)
{
  if (!ERR_func_error_string(PKCS12_str_functs))
  {
    ERR_load_strings(0, &PKCS12_str_functs);

    ERR_load_strings(0, &PKCS12_str_reasons);
  }
}

const ECDSA_METHOD *ECDSA_get_default_method(void)
{
  result = default_ECDSA_method;
  if (!default_ECDSA_method)
  {
    result = ECDSA_OpenSSL();
    default_ECDSA_method = result;
  }

  return result;
}

int ECDSA_set_method(EC_KEY *eckey, const ECDSA_METHOD *meth)
{
  v3 = ecdsa_check(eckey);
  if (v3)
  {
    v4 = v3;
    ENGINE_finish(v3[1]);
    v4[1] = 0;
    v4[3] = meth;
    LODWORD(v3) = 1;
  }

  return v3;
}

void *ecdsa_check(EC_KEY *a1)
{
  key_method_data = EC_KEY_get_key_method_data(a1, ecdsa_data_dup, ecdsa_data_free, ecdsa_data_free);
  if (!key_method_data)
  {
    key_method_data = ecdsa_data_new();
    if (key_method_data)
    {
      EC_KEY_insert_key_method_data(a1, key_method_data, ecdsa_data_dup, ecdsa_data_free, ecdsa_data_free);
      if (v4)
      {
        v5 = v4;
        ecdsa_data_free(key_method_data);
        return v5;
      }
    }
  }

  return key_method_data;
}

CRYPTO_EX_DATA *ecdsa_data_dup(CRYPTO_EX_DATA *result)
{
  if (result)
  {
    return ecdsa_data_new();
  }

  return result;
}

void *ecdsa_data_free(uint64_t a1)
{
  ENGINE_finish(*(a1 + 8));
  CRYPTO_free_ex_data(12, a1, (a1 + 32));

  return freezero(a1, 0x28uLL);
}

CRYPTO_EX_DATA *ecdsa_data_new()
{
  v0 = malloc_type_malloc(0x28uLL, 0x10E00407A09E776uLL);
  v1 = v0;
  if (!v0)
  {
    ERR_put_error(42, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ecdsa/ecs_lib.c", 116);
    return v1;
  }

  v0->sk = 0;
  v2 = default_ECDSA_method;
  if (!default_ECDSA_method)
  {
    v2 = ECDSA_OpenSSL();
    default_ECDSA_method = v2;
  }

  *&v1[1].dummy = v2;
  *&v1->dummy = 0;
  default_ECDSA = ENGINE_get_default_ECDSA();
  *&v1->dummy = default_ECDSA;
  if (!default_ECDSA)
  {
    ECDSA = *&v1[1].dummy;
    goto LABEL_9;
  }

  ECDSA = ENGINE_get_ECDSA(default_ECDSA);
  *&v1[1].dummy = ECDSA;
  if (ECDSA)
  {
LABEL_9:
    LODWORD(v1[1].sk) = *(ECDSA + 8);
    CRYPTO_new_ex_data(12, v1, v1 + 2);
    return v1;
  }

  ERR_put_error(42, 4095, 38, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ecdsa/ecs_lib.c", 130);
  ENGINE_finish(*&v1->dummy);
  free(v1);
  return 0;
}

int ECDSA_size(const EC_KEY *eckey)
{
  v5.r = 0;
  v5.s = 0;
  if (!eckey)
  {
    v2 = 0;
LABEL_7:
    LODWORD(v1) = 0;
    goto LABEL_9;
  }

  v1 = EC_KEY_get0_group(eckey);
  if (!v1)
  {
    v2 = 0;
    goto LABEL_9;
  }

  v2 = BN_new();
  if (!v2 || !EC_GROUP_get_order(v1, v2, 0))
  {
    goto LABEL_7;
  }

  v5.r = v2;
  v5.s = v2;
  v3 = i2d_ECDSA_SIG(&v5, 0);
  LODWORD(v1) = v3 & ~(v3 >> 31);
LABEL_9:
  BN_free(v2);
  return v1;
}

int ECDSA_set_ex_data(EC_KEY *d, int idx, void *arg)
{
  v5 = ecdsa_check(d);
  if (v5)
  {
    v6 = v5 + 2;

    LODWORD(v5) = CRYPTO_set_ex_data(v6, idx, arg);
  }

  return v5;
}

void *__cdecl ECDSA_get_ex_data(EC_KEY *d, int idx)
{
  result = ecdsa_check(d);
  if (result)
  {
    v4 = (result + 32);

    return CRYPTO_get_ex_data(v4, idx);
  }

  return result;
}

X509_SIG *__cdecl PKCS8_encrypt(int pbe_nid, const EVP_CIPHER *cipher, const char *pass, int passlen, unsigned __int8 *salt, int saltlen, int iter, PKCS8_PRIV_KEY_INFO *p8)
{
  v16 = X509_SIG_new();
  if (!v16)
  {
    v18 = 65;
    v19 = 75;
LABEL_10:
    ERR_put_error(35, 4095, v18, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs12/p12_p8e.c", v19);
    X509_SIG_free(v16);
    return 0;
  }

  if (pbe_nid == -1)
  {
    v17 = PKCS5_pbe2_set(cipher, iter, salt, saltlen);
  }

  else
  {
    v17 = PKCS5_pbe_set(pbe_nid, iter, salt, saltlen);
  }

  v20 = v17;
  if (!v17)
  {
    v18 = 13;
    v19 = 84;
    goto LABEL_10;
  }

  X509_ALGOR_free(v16->algor);
  v16->algor = v20;
  ASN1_OCTET_STRING_free(v16->digest);
  v21 = PKCS12_item_i2d_encrypt(v20, &PKCS8_PRIV_KEY_INFO_it, pass, passlen, p8, 1);
  v16->digest = v21;
  if (!v21)
  {
    v18 = 103;
    v19 = 93;
    goto LABEL_10;
  }

  return v16;
}

ASN1_VALUE *v2i_NAME_CONSTRAINTS(X509V3_EXT_METHOD *a1, X509V3_CTX *a2, const STACK *a3)
{
  memset(&cnf, 0, sizeof(cnf));
  v6 = ASN1_item_new(&NAME_CONSTRAINTS_it);
  if (v6)
  {
    if (sk_num(a3) >= 1)
    {
      for (i = 0; i < sk_num(a3); ++i)
      {
        v8 = sk_value(a3, i);
        v9 = *(v8 + 1);
        if (!strncmp(v9, "permitted", 9uLL) && *(v9 + 9))
        {
          v10 = 10;
          v11 = v6;
        }

        else
        {
          if (strncmp(v9, "excluded", 8uLL) || !*(v9 + 8))
          {
            ERR_put_error(34, 4095, 143, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_ncons.c", 213);
            v13 = 0;
            goto LABEL_19;
          }

          v10 = 9;
          v11 = (v6 + 8);
        }

        v12 = *(v8 + 2);
        cnf.name = (v9 + v10);
        cnf.value = v12;
        v13 = ASN1_item_new(&GENERAL_SUBTREE_it);
        if (!v2i_GENERAL_NAME_ex(*v13, a1, a2, &cnf, 1))
        {
          goto LABEL_19;
        }

        v14 = *v11;
        if (!*v11)
        {
          v14 = sk_new_null();
          *v11 = v14;
          if (!v14)
          {
            goto LABEL_17;
          }
        }

        if (!sk_push(v14, v13))
        {
          goto LABEL_17;
        }
      }
    }
  }

  else
  {
    v13 = 0;
LABEL_17:
    ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_ncons.c", 230);
LABEL_19:
    ASN1_item_free(v6, &NAME_CONSTRAINTS_it);
    ASN1_item_free(v13, &GENERAL_SUBTREE_it);
    return 0;
  }

  return v6;
}

uint64_t i2r_NAME_CONSTRAINTS(uint64_t a1, const STACK **a2, BIO *a3, int a4)
{
  do_i2r_name_constraints(*a2, a3, a4, "Permitted");
  do_i2r_name_constraints(a2[1], a3, a4, "Excluded");
  return 1;
}

uint64_t NAME_CONSTRAINTS_check(uint64_t a1, const STACK **a2)
{
  subject_name = X509_get_subject_name(a1);
  if (X509_NAME_entry_count(subject_name) >= 1)
  {
    data = subject_name;
    v11 = 4;
    result = nc_match(&v11, a2);
    if (result)
    {
      return result;
    }

    LODWORD(v11) = 1;
    v6 = -1;
    while (1)
    {
      index_by_NID = X509_NAME_get_index_by_NID(subject_name, 48, v6);
      if (index_by_NID == -1)
      {
        break;
      }

      v6 = index_by_NID;
      entry = X509_NAME_get_entry(subject_name, index_by_NID);
      data = X509_NAME_ENTRY_get_data(entry);
      if (data->type != 22)
      {
        return 53;
      }

      result = nc_match(&v11, a2);
      if (result)
      {
        return result;
      }
    }
  }

  if (sk_num(*(a1 + 112)) < 1)
  {
    return 0;
  }

  v9 = 0;
  while (1)
  {
    v10 = sk_value(*(a1 + 112), v9);
    result = nc_match(v10, a2);
    if (result)
    {
      break;
    }

    if (++v9 >= sk_num(*(a1 + 112)))
    {
      return 0;
    }
  }

  return result;
}

uint64_t nc_match(_DWORD *a1, const STACK **a2)
{
  if (sk_num(*a2) < 1)
  {
LABEL_14:
    if (sk_num(a2[1]) < 1)
    {
      return 0;
    }

    else
    {
      v8 = 0;
      while (1)
      {
        v9 = sk_value(a2[1], v8);
        if (*a1 == **v9)
        {
          if (v9[1] || v9[2])
          {
            return 49;
          }

          result = nc_match_single(a1, *v9);
          if (result != 47)
          {
            break;
          }
        }

        if (++v8 >= sk_num(a2[1]))
        {
          return 0;
        }
      }

      if (!result)
      {
        return 48;
      }
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = sk_value(*a2, v5);
      if (*a1 == **v6)
      {
        if (v6[1] || v6[2])
        {
          return 49;
        }

        if (v4 != 2)
        {
          result = nc_match_single(a1, *v6);
          if (result)
          {
            v4 = 1;
            if (result != 47)
            {
              return result;
            }
          }

          else
          {
            v4 = 2;
          }
        }
      }

      ++v5;
    }

    while (v5 < sk_num(*a2));
    if (v4 != 1)
    {
      goto LABEL_14;
    }

    return 47;
  }

  return result;
}

uint64_t do_i2r_name_constraints(const STACK *a1, BIO *a2, int a3, const char *a4)
{
  if (sk_num(a1) >= 1)
  {
    BIO_printf(a2, "%*s%s:\n", a3, "", a4);
  }

  result = sk_num(a1);
  if (result >= 1)
  {
    v9 = 0;
    v10 = a3 + 2;
    do
    {
      v11 = sk_value(a1, v9);
      BIO_printf(a2, "%*s", v10, "");
      v12 = *v11;
      if (**v11 == 7)
      {
        ptr = v12->d.ptr;
        v14 = *(ptr + 1);
        v15 = *ptr;
        BIO_puts(a2, "IP:");
        if (v15 == 8)
        {
          v23 = v14[6];
          v24 = v14[7];
          v21 = v14[4];
          v22 = v14[5];
          v19 = v14[2];
          v20 = v14[3];
          v18 = v14[1];
          BIO_printf(a2, "%d.%d.%d.%d/%d.%d.%d.%d", *v14);
        }

        else
        {
          if (v15 == 32)
          {
            for (i = 0; ; ++i)
            {
              BIO_printf(a2, "%X", __rev16(*v14));
              v17 = "/";
              if (i != 7)
              {
                if (i == 15)
                {
                  goto LABEL_16;
                }

                v17 = ":";
              }

              BIO_puts(a2, v17);
              v14 += 2;
            }
          }

          BIO_printf(a2, "IP Address:<invalid>");
        }
      }

      else
      {
        GENERAL_NAME_print(a2, v12);
      }

LABEL_16:
      BIO_puts(a2, "\n");
      ++v9;
      result = sk_num(a1);
    }

    while (v9 < result);
  }

  return result;
}

uint64_t nc_match_single(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = 51;
  if (*a2 <= 3)
  {
    if (v2 != 1)
    {
      if (v2 != 2)
      {
        return v3;
      }

      v4 = *(a2 + 8);
      v5 = *(v4 + 1);
      if (*v5)
      {
        v6 = *(a1 + 8);
        v7 = *(v6 + 8);
        LODWORD(v6) = *v6;
        v8 = *v4;
        v9 = __OFSUB__(v6, v8);
        v10 = v6 - v8;
        if ((v10 < 0) ^ v9 | (v10 == 0) || (v7 += v10, *v5 == 46) || *(v7 - 1) == 46)
        {
          v11 = v5;
          goto LABEL_43;
        }

        return 47;
      }

      return 0;
    }

    v16 = *(a1 + 8);
    v17 = *(a2 + 8);
    v18 = *(v17 + 8);
    v19 = *(v16 + 8);
    v20 = strchr(v18, 64);
    v21 = strchr(v19, 64);
    if (v21)
    {
      v22 = v21;
      if (v20)
      {
        v23 = v20 - v18;
        if (v20 != v18 && (v23 != v21 - v19 || strncmp(v18, v19, v23)))
        {
          return 47;
        }

        v18 = v20 + 1;
      }

      else if (*v18 == 46)
      {
        if (*v16 <= *v17 || strcasecmp(v18, &v19[*v16 - *v17]))
        {
          return 47;
        }

        return 0;
      }

      v7 = v22 + 1;
      v11 = v18;
LABEL_43:
      if (!strcasecmp(v11, v7))
      {
        return 0;
      }

      else
      {
        return 47;
      }
    }

    return 53;
  }

  if (v2 == 6)
  {
    v24 = *(a2 + 8);
    v25 = *(v24 + 1);
    v26 = strchr(*(*(a1 + 8) + 8), 58);
    if (!v26 || v26[1] != 47 || v26[2] != 47)
    {
      return 53;
    }

    v27 = v26 + 3;
    v28 = strchr(v26 + 3, 58);
    if (v28 || (v28 = strchr(v27, 47)) != 0)
    {
      v29 = v28 - v27;
      if (!v29)
      {
        return 53;
      }
    }

    else
    {
      v29 = strlen(v27);
      if (!v29)
      {
        return 53;
      }
    }

    v30 = *v24;
    if (*v25 == 46)
    {
      if (v30 >= v29 || strncasecmp(&v27[v29 - v30], v25, v30))
      {
        return 47;
      }

      return 0;
    }

    v3 = 47;
    if (v30 != v29)
    {
      return v3;
    }

    v15 = strncasecmp(v27, v25, v29);
    goto LABEL_17;
  }

  if (v2 == 4)
  {
    v12 = *(a1 + 8);
    v13 = *(a2 + 8);
    if (*(v12 + 8) && i2d_X509_NAME(*(a1 + 8), 0) < 0 || *(v13 + 8) && i2d_X509_NAME(v13, 0) < 0)
    {
      return 17;
    }

    v14 = *(v13 + 32);
    v3 = 47;
    if (v14 <= *(v12 + 32))
    {
      v15 = memcmp(*(v13 + 24), *(v12 + 24), v14);
LABEL_17:
      if (v15)
      {
        return 47;
      }

      else
      {
        return 0;
      }
    }
  }

  return v3;
}

int ENGINE_register_DH(ENGINE *e)
{
  if (*(e + 4))
  {
    return engine_table_register(&dh_table, engine_unregister_all_DH, e, dummy_nid_0, 1, 0);
  }

  else
  {
    return 1;
  }
}

void ENGINE_register_all_DH(void)
{
  first = ENGINE_get_first();
  if (first)
  {
    next = first;
    do
    {
      if (*(next + 4))
      {
        engine_table_register(&dh_table, engine_unregister_all_DH, next, dummy_nid_0, 1, 0);
      }

      next = ENGINE_get_next(next);
    }

    while (next);
  }
}

int ENGINE_set_default_DH(ENGINE *e)
{
  if (*(e + 4))
  {
    return engine_table_register(&dh_table, engine_unregister_all_DH, e, dummy_nid_0, 1, 1);
  }

  else
  {
    return 1;
  }
}

void ERR_load_crypto_strings_internal()
{
  ERR_load_ERR_strings_internal();
  ERR_load_ASN1_strings();
  ERR_load_BIO_strings();
  ERR_load_BN_strings();
  ERR_load_BUF_strings();
  ERR_load_CMS_strings();
  ERR_load_CONF_strings();
  ERR_load_CRYPTO_strings();
  ERR_load_DH_strings();
  ERR_load_DSA_strings();
  ERR_load_DSO_strings();
  ERR_load_ECDH_strings();
  ERR_load_ECDSA_strings();
  ERR_load_EC_strings();
  ERR_load_ENGINE_strings();
  ERR_load_EVP_strings();
  ERR_load_GOST_strings();
  ERR_load_KDF_strings();
  ERR_load_OBJ_strings();
  ERR_load_OCSP_strings();
  ERR_load_PEM_strings();
  ERR_load_PKCS12_strings();
  ERR_load_PKCS7_strings();
  ERR_load_RAND_strings();
  ERR_load_RSA_strings();
  ERR_load_TS_strings();
  ERR_load_UI_strings();
  ERR_load_X509V3_strings();

  ERR_load_X509_strings();
}

EC_GROUP *__cdecl EC_GROUP_new(const EC_METHOD *a1)
{
  if (!a1)
  {
    v4 = 108;
    v5 = 82;
LABEL_8:
    ERR_put_error(16, 4095, v4, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_lib.c", v5);
    return 0;
  }

  if (!*(a1 + 1))
  {
    v4 = 66;
    v5 = 86;
    goto LABEL_8;
  }

  v2 = malloc_type_malloc(0xE8uLL, 0x10F0040D5F8239AuLL);
  v3 = v2;
  if (!v2)
  {
    ERR_put_error(16, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_lib.c", 91);
    return v3;
  }

  *(v2 + 12) = 0;
  *v2 = a1;
  *(v2 + 1) = 0;
  BN_init((v2 + 16));
  BN_init((v3 + 40));
  *(v3 + 8) = 0x100000000;
  *(v3 + 18) = 4;
  *(v3 + 10) = 0;
  *(v3 + 11) = 0;
  if (!(*(a1 + 1))(v3))
  {
    free(v3);
    return 0;
  }

  return v3;
}

void EC_GROUP_free(EC_GROUP *a1)
{
  if (a1)
  {
    v2 = *(*a1 + 16);
    if (v2)
    {
      v2(a1);
    }

    EC_EX_DATA_clear_free_all_data(a1 + 12);
    v3 = *(a1 + 1);
    if (v3)
    {
      v4 = *(*v3 + 80);
      if (v4)
      {
        v4(*(a1 + 1));
      }

      freezero(v3, 0x58uLL);
    }

    BN_free((a1 + 16));
    BN_free((a1 + 40));
    freezero(*(a1 + 10), *(a1 + 11));

    freezero(a1, 0xE8uLL);
  }
}

void EC_EX_DATA_clear_free_all_data(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      do
      {
        v3 = *v2;
        v2[4](v2[1]);
        free(v2);
        v2 = v3;
      }

      while (v3);
    }

    *a1 = 0;
  }
}

void EC_POINT_free(EC_POINT *a1)
{
  if (a1)
  {
    v2 = *(*a1 + 80);
    if (v2)
    {
      v2(a1);
    }

    freezero(a1, 0x58uLL);
  }
}

int EC_GROUP_copy(EC_GROUP *a1, const EC_GROUP *a2)
{
  if (!*(*a1 + 24))
  {
    v3 = 66;
    v4 = 148;
    goto LABEL_5;
  }

  if (*a1 != *a2)
  {
    v3 = 101;
    v4 = 152;
LABEL_5:
    ERR_put_error(16, 4095, v3, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_lib.c", v4);
    LODWORD(v5) = 0;
    return v5;
  }

  if (a1 == a2)
  {
    LODWORD(v5) = 1;
  }

  else
  {
    EC_EX_DATA_free_all_data(a1 + 12);
    v7 = (a2 + 96);
    while (1)
    {
      v7 = *v7;
      if (!v7)
      {
        break;
      }

      v5 = (v7[2])(v7[1]);
      if (v5)
      {
        LODWORD(v5) = EC_EX_DATA_set_data(a1 + 96, v5, v7[2], v7[3], v7[4]);
        if (v5)
        {
          continue;
        }
      }

      return v5;
    }

    v8 = *(a2 + 1);
    v5 = *(a1 + 1);
    if (v8)
    {
      if (!v5)
      {
        v5 = EC_POINT_new(a1);
        *(a1 + 1) = v5;
        if (!v5)
        {
          return v5;
        }

        v8 = *(a2 + 1);
      }

      LODWORD(v5) = EC_POINT_copy(v5, v8);
      if (!v5)
      {
        return v5;
      }
    }

    else
    {
      EC_POINT_free(v5);
      *(a1 + 1) = 0;
    }

    LODWORD(v5) = bn_copy((a1 + 16), (a2 + 16));
    if (v5)
    {
      LODWORD(v5) = bn_copy((a1 + 40), (a2 + 40));
      if (v5)
      {
        v10 = (a1 + 80);
        v9 = *(a1 + 10);
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 18) = *(a2 + 18);
        v11 = *(a2 + 10);
        free(v9);
        if (v11)
        {
          v5 = malloc_type_malloc(*(a2 + 11), 0x89B628F0uLL);
          *v10 = v5;
          if (!v5)
          {
            return v5;
          }

          memcpy(v5, *(a2 + 10), *(a2 + 11));
          *(a1 + 11) = *(a2 + 11);
        }

        else
        {
          *v10 = 0;
          *(a1 + 11) = 0;
        }

        v12 = *(*a1 + 24);

        LODWORD(v5) = v12(a1, a2);
      }
    }
  }

  return v5;
}

void EC_EX_DATA_free_all_data(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      do
      {
        v3 = *v2;
        v2[3](v2[1]);
        free(v2);
        v2 = v3;
      }

      while (v3);
    }

    *a1 = 0;
  }
}

uint64_t EC_EX_DATA_set_data(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v9 = result;
    v10 = *result;
    if (*result)
    {
      while (v10[2] != a3 || v10[3] != a4 || v10[4] != a5)
      {
        v10 = *v10;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      ERR_put_error(16, 4095, 108, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_lib.c", 695);
      return 0;
    }

    else
    {
LABEL_7:
      if (a2)
      {
        result = malloc_type_malloc(0x28uLL, 0xA0040B756CE11uLL);
        if (!result)
        {
          return result;
        }

        *(result + 8) = a2;
        *(result + 16) = a3;
        *(result + 24) = a4;
        *(result + 32) = a5;
        *result = *v9;
        *v9 = result;
      }

      return 1;
    }
  }

  return result;
}

EC_POINT *__cdecl EC_POINT_new(const EC_GROUP *a1)
{
  if (!a1)
  {
    v5 = 67;
    v6 = 838;
LABEL_8:
    ERR_put_error(16, 4095, v5, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_lib.c", v6);
    return 0;
  }

  if (!*(*a1 + 72))
  {
    v5 = 66;
    v6 = 842;
    goto LABEL_8;
  }

  v2 = malloc_type_malloc(0x58uLL, 0x10700408AB58AABuLL);
  v3 = v2;
  if (!v2)
  {
    ERR_put_error(16, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_lib.c", 847);
    return v3;
  }

  v4 = *a1;
  *v2 = *a1;
  if (!(*(v4 + 72))(v2))
  {
    free(v3);
    return 0;
  }

  return v3;
}

int EC_POINT_copy(EC_POINT *a1, const EC_POINT *a2)
{
  v2 = *(*a1 + 88);
  if (!v2)
  {
    v3 = 66;
    v4 = 881;
    goto LABEL_5;
  }

  if (*a1 != *a2)
  {
    v3 = 101;
    v4 = 885;
LABEL_5:
    ERR_put_error(16, 4095, v3, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_lib.c", v4);
    return 0;
  }

  if (a1 == a2)
  {
    return 1;
  }

  return v2();
}

EC_GROUP *__cdecl EC_GROUP_dup(const EC_GROUP *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = EC_GROUP_new(*a1);
  v3 = v2;
  if (v2 && !EC_GROUP_copy(v2, a1))
  {
    EC_GROUP_free(v3);
    return 0;
  }

  return v3;
}

int EC_GROUP_set_generator(EC_GROUP *a1, const EC_POINT *generator, const BIGNUM *order, const BIGNUM *cofactor)
{
  if (!generator)
  {
    v8 = 67;
    v9 = 322;
    goto LABEL_6;
  }

  if (BN_is_zero(a1 + 104) || BN_is_negative(a1 + 104))
  {
    v8 = 103;
    v9 = 328;
LABEL_6:
    ERR_put_error(16, 4095, v8, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_lib.c", v9);
    LODWORD(v10) = 0;
    return v10;
  }

  if (!order || (v11 = BN_value_one(), BN_cmp(order, v11) < 1) || (v12 = BN_num_bits(order), v12 > BN_num_bits((a1 + 104)) + 1))
  {
    v8 = 122;
    v9 = 338;
    goto LABEL_6;
  }

  if (cofactor && BN_is_negative(cofactor))
  {
    v8 = 164;
    v9 = 348;
    goto LABEL_6;
  }

  v10 = *(a1 + 1);
  if (v10 || (v10 = EC_POINT_new(a1), (*(a1 + 1) = v10) != 0))
  {
    LODWORD(v10) = EC_POINT_copy(v10, generator);
    if (v10)
    {
      LODWORD(v10) = bn_copy((a1 + 16), order);
      if (v10)
      {
        if (cofactor && !BN_is_zero(cofactor))
        {
          LODWORD(v10) = bn_copy((a1 + 40), cofactor);
          if (!v10)
          {
            return v10;
          }
        }

        else
        {
          LODWORD(v10) = ec_guess_cofactor(a1);
          if (!v10)
          {
            return v10;
          }
        }

        v13 = BN_num_bits((a1 + 40));
        if (v13 > BN_num_bits((a1 + 104)) + 1)
        {
          v8 = 122;
          v9 = 372;
          goto LABEL_6;
        }

        LODWORD(v10) = 1;
      }
    }
  }

  return v10;
}

BIGNUM *ec_guess_cofactor(uint64_t a1)
{
  v2 = BN_num_bits((a1 + 16));
  if (v2 <= (BN_num_bits((a1 + 104)) + 1) / 2 + 3)
  {
    v6 = 1;
LABEL_16:
    BN_zero(a1 + 40);
    return v6;
  }

  v3 = BN_CTX_new();
  v4 = v3;
  if (!v3)
  {
    goto LABEL_14;
  }

  BN_CTX_start(v3);
  v5 = BN_CTX_get(v4);
  v6 = v5;
  if (!v5)
  {
    v8 = 0;
    goto LABEL_15;
  }

  if (**a1 == 407)
  {
    BN_zero(v5);
    v7 = BN_num_bits((a1 + 104));
    if (!BN_set_bit(v6, v7 - 1))
    {
      goto LABEL_14;
    }
  }

  else if (!bn_copy(v5, (a1 + 104)))
  {
    goto LABEL_14;
  }

  if (BN_rshift1((a1 + 40), (a1 + 16)))
  {
    v9 = BN_value_one();
    if (BN_add((a1 + 40), (a1 + 40), v9))
    {
      if (BN_add((a1 + 40), (a1 + 40), v6))
      {
        v8 = BN_div_ct(a1 + 40, 0, (a1 + 40), (a1 + 16), v4) != 0;
        v6 = v8;
        goto LABEL_15;
      }
    }
  }

LABEL_14:
  v8 = 0;
  v6 = 0;
LABEL_15:
  BN_CTX_end(v4);
  BN_CTX_free(v4);
  if (!v8)
  {
    goto LABEL_16;
  }

  return v6;
}

int EC_GROUP_get_order(const EC_GROUP *a1, BIGNUM *order, BN_CTX *a3)
{
  result = bn_copy(order, (a1 + 16));
  if (result)
  {
    return !BN_is_zero(order);
  }

  return result;
}

int EC_GROUP_get_cofactor(const EC_GROUP *a1, BIGNUM *cofactor, BN_CTX *a3)
{
  result = bn_copy(cofactor, (a1 + 40));
  if (result)
  {
    return !BN_is_zero(a1 + 40);
  }

  return result;
}

size_t EC_GROUP_set_seed(EC_GROUP *a1, const unsigned __int8 *a2, size_t len)
{
  v7 = (a1 + 80);
  v6 = *(a1 + 10);
  if (v6)
  {
    free(v6);
    *v7 = 0;
    v7[1] = 0;
  }

  result = 1;
  if (a2 && len)
  {
    result = malloc_type_malloc(len, 0x86F2744FuLL);
    *v7 = result;
    if (result)
    {
      memcpy(result, a2, len);
      *(a1 + 11) = len;
      return len;
    }
  }

  return result;
}

uint64_t EC_GROUP_set_curve(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, BN_CTX *a5)
{
  v10 = a5;
  if (a5 || (v10 = BN_CTX_new()) != 0)
  {
    v11 = *(*a1 + 32);
    if (v11)
    {
      v12 = v11(a1, a2, a3, a4, v10);
      goto LABEL_7;
    }

    ERR_put_error(16, 4095, 66, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_lib.c", 501);
  }

  v12 = 0;
LABEL_7:
  if (v10 != a5)
  {
    BN_CTX_free(v10);
  }

  return v12;
}

uint64_t EC_GROUP_get_curve(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, BN_CTX *a5)
{
  v10 = a5;
  if (a5 || (v10 = BN_CTX_new()) != 0)
  {
    v11 = *(*a1 + 40);
    if (v11)
    {
      v12 = v11(a1, a2, a3, a4, v10);
      goto LABEL_7;
    }

    ERR_put_error(16, 4095, 66, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_lib.c", 526);
  }

  v12 = 0;
LABEL_7:
  if (v10 != a5)
  {
    BN_CTX_free(v10);
  }

  return v12;
}

int EC_GROUP_get_degree(const EC_GROUP *a1)
{
  v2 = *(*a1 + 48);
  if (v2)
  {

    return v2();
  }

  else
  {
    ERR_put_error(16, 4095, 66, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_lib.c", 556);
    return 0;
  }
}

int EC_GROUP_check_discriminant(const EC_GROUP *a1, BN_CTX *a2)
{
  v4 = a2;
  if (a2 || (v4 = BN_CTX_new()) != 0)
  {
    v5 = *(*a1 + 64);
    if (v5)
    {
      v6 = v5(a1, v4);
      goto LABEL_7;
    }

    ERR_put_error(16, 4095, 66, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_lib.c", 575);
  }

  v6 = 0;
LABEL_7:
  if (v4 != a2)
  {
    BN_CTX_free(v4);
  }

  return v6;
}

int EC_GROUP_cmp(const EC_GROUP *a1, const EC_GROUP *a2, BN_CTX *a3)
{
  if (**a1 != **a2)
  {
    return 1;
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a2 + 16);
    if (v7 && v6 != v7)
    {
      return 1;
    }
  }

  v9 = a3;
  if (!a3)
  {
    v9 = BN_CTX_new();
    if (!v9)
    {
      return -1;
    }
  }

  BN_CTX_start(v9);
  v10 = BN_CTX_get(v9);
  if (!v10)
  {
    goto LABEL_34;
  }

  v11 = v10;
  v12 = BN_CTX_get(v9);
  if (!v12)
  {
    goto LABEL_34;
  }

  v13 = v12;
  v14 = BN_CTX_get(v9);
  if (!v14)
  {
    goto LABEL_34;
  }

  v15 = v14;
  v16 = BN_CTX_get(v9);
  if (!v16)
  {
    goto LABEL_34;
  }

  v17 = v16;
  v18 = BN_CTX_get(v9);
  if (!v18)
  {
    goto LABEL_34;
  }

  v19 = v18;
  v20 = BN_CTX_get(v9);
  if (!v20)
  {
    goto LABEL_34;
  }

  v21 = v20;
  if (!(*(*a1 + 40))(a1, v11, v13, v15, v9) || !(*(*a2 + 40))(a2, v17, v19, v21, v9) || BN_cmp(v11, v17) || BN_cmp(v13, v19) || BN_cmp(v15, v21) || EC_POINT_cmp(a1, *(a1 + 1), *(a2 + 1), v9))
  {
    goto LABEL_22;
  }

  if (!EC_GROUP_get_order(a1, v11, v22) || !EC_GROUP_get_order(a2, v17, v24) || !EC_GROUP_get_cofactor(a1, v13, v25) || !EC_GROUP_get_cofactor(a2, v19, v26))
  {
LABEL_34:
    BN_CTX_end(v9);
    v23 = -1;
    if (a3)
    {
      return v23;
    }

LABEL_35:
    BN_CTX_free(v9);
    return v23;
  }

  if (BN_cmp(v11, v17) || BN_cmp(v13, v19))
  {
LABEL_22:
    v23 = 1;
    goto LABEL_23;
  }

  v23 = 0;
LABEL_23:
  BN_CTX_end(v9);
  if (!a3)
  {
    goto LABEL_35;
  }

  return v23;
}

int EC_POINT_cmp(const EC_GROUP *a1, const EC_POINT *a, const EC_POINT *b, BN_CTX *a4)
{
  v8 = a4;
  if (!a4)
  {
    v8 = BN_CTX_new();
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  v9 = *a1;
  v10 = *(*a1 + 200);
  if (!v10)
  {
    v11 = 66;
    v12 = 1238;
    goto LABEL_8;
  }

  if (v9 != *a || v9 != *b)
  {
    v11 = 101;
    v12 = 1242;
LABEL_8:
    ERR_put_error(16, 4095, v11, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_lib.c", v12);
LABEL_9:
    v13 = -1;
    goto LABEL_10;
  }

  v13 = v10(a1, a, b, v8);
LABEL_10:
  if (v8 != a4)
  {
    BN_CTX_free(v8);
  }

  return v13;
}

uint64_t ec_point_blind_coordinates(uint64_t a1)
{
  v1 = *(*a1 + 312);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 1;
  }
}

void *EC_EX_DATA_get_data(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    while (result[2] != a2 || result[3] != a3 || result[4] != a4)
    {
      result = *result;
      if (!result)
      {
        return result;
      }
    }

    return result[1];
  }

  return result;
}

void EC_EX_DATA_free_data(void **a1, void *a2, void (*a3)(void *), void *a4)
{
  if (a1)
  {
    v4 = *a1;
    if (*a1)
    {
      while (1)
      {
        v5 = a1;
        a1 = v4;
        if (v4[2] == a2)
        {
          v6 = v4[3];
          if (v6 == a3 && a1[4] == a4)
          {
            break;
          }
        }

        v4 = *a1;
        if (!*a1)
        {
          return;
        }
      }

      v7 = *a1;
      v6(a1[1]);
      free(*v5);
      *v5 = v7;
    }
  }
}

void EC_EX_DATA_clear_free_data(void **a1, void *a2, void *a3, void (*a4)(void *))
{
  if (a1)
  {
    v4 = *a1;
    if (*a1)
    {
      while (1)
      {
        v5 = a1;
        a1 = v4;
        if (v4[2] == a2 && v4[3] == a3)
        {
          v6 = v4[4];
          if (v6 == a4)
          {
            break;
          }
        }

        v4 = *a1;
        if (!*a1)
        {
          return;
        }
      }

      v7 = *a1;
      v6(a1[1]);
      free(*v5);
      *v5 = v7;
    }
  }
}

void EC_POINT_clear_free(EC_POINT *a1)
{
  if (a1)
  {
    v2 = *(*a1 + 80);
    if (v2)
    {
      v2(a1);
    }

    freezero(a1, 0x58uLL);
  }
}

EC_POINT *__cdecl EC_POINT_dup(const EC_POINT *a1, const EC_GROUP *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = EC_POINT_new(a2);
  v4 = v3;
  if (v3 && !EC_POINT_copy(v3, a1))
  {
    v5 = *(*v4 + 80);
    if (v5)
    {
      v5(v4);
    }

    freezero(v4, 0x58uLL);
    return 0;
  }

  return v4;
}

int EC_POINT_set_to_infinity(const EC_GROUP *a1, EC_POINT *a2)
{
  v2 = *(*a1 + 96);
  if (!v2)
  {
    v3 = 66;
    v4 = 923;
    goto LABEL_5;
  }

  if (*a1 != *a2)
  {
    v3 = 101;
    v4 = 927;
LABEL_5:
    ERR_put_error(16, 4095, v3, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_lib.c", v4);
    return 0;
  }

  return v2();
}

uint64_t EC_POINT_set_Jprojective_coordinates(const EC_GROUP *a1, const EC_POINT *a2, uint64_t a3, uint64_t a4, uint64_t a5, BN_CTX *a6)
{
  v12 = a6;
  if (!a6)
  {
    v12 = BN_CTX_new();
    if (!v12)
    {
      goto LABEL_8;
    }
  }

  v13 = *(*a1 + 104);
  if (!v13)
  {
    v14 = 66;
    v15 = 946;
    goto LABEL_7;
  }

  if (*a1 != *a2)
  {
    v14 = 101;
    v15 = 950;
LABEL_7:
    ERR_put_error(16, 4095, v14, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_lib.c", v15);
LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  if (!v13(a1, a2, a3, a4, a5, v12))
  {
    goto LABEL_8;
  }

  if (EC_POINT_is_on_curve(a1, a2, v12) <= 0)
  {
    v14 = 107;
    v15 = 958;
    goto LABEL_7;
  }

  v16 = 1;
LABEL_9:
  if (v12 != a6)
  {
    BN_CTX_free(v12);
  }

  return v16;
}

int EC_POINT_is_on_curve(const EC_GROUP *a1, const EC_POINT *a2, BN_CTX *a3)
{
  v6 = a3;
  if (!a3)
  {
    v6 = BN_CTX_new();
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  v7 = *(*a1 + 192);
  if (!v7)
  {
    v8 = 66;
    v9 = 1209;
    goto LABEL_7;
  }

  if (*a1 != *a2)
  {
    v8 = 101;
    v9 = 1213;
LABEL_7:
    ERR_put_error(16, 4095, v8, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_lib.c", v9);
LABEL_8:
    v10 = 0;
    goto LABEL_10;
  }

  v10 = v7(a1, a2, v6);
LABEL_10:
  if (v6 != a3)
  {
    BN_CTX_free(v6);
  }

  return v10;
}

uint64_t EC_POINT_get_Jprojective_coordinates(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, BN_CTX *a6)
{
  v12 = a6;
  if (!a6)
  {
    v12 = BN_CTX_new();
    if (!v12)
    {
      goto LABEL_8;
    }
  }

  v13 = *(*a1 + 112);
  if (!v13)
  {
    v14 = 66;
    v15 = 984;
    goto LABEL_7;
  }

  if (*a1 != *a2)
  {
    v14 = 101;
    v15 = 988;
LABEL_7:
    ERR_put_error(16, 4095, v14, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_lib.c", v15);
LABEL_8:
    v16 = 0;
    goto LABEL_10;
  }

  v16 = v13(a1, a2, a3, a4, a5, v12);
LABEL_10:
  if (v12 != a6)
  {
    BN_CTX_free(v12);
  }

  return v16;
}

uint64_t EC_POINT_set_affine_coordinates(const EC_GROUP *a1, const EC_POINT *a2, uint64_t a3, uint64_t a4, BN_CTX *a5)
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

  v11 = *(*a1 + 120);
  if (!v11)
  {
    v12 = 66;
    v13 = 1028;
    goto LABEL_7;
  }

  if (*a1 != *a2)
  {
    v12 = 101;
    v13 = 1032;
LABEL_7:
    ERR_put_error(16, 4095, v12, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_lib.c", v13);
LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

  if (!v11(a1, a2, a3, a4, v10))
  {
    goto LABEL_8;
  }

  if (EC_POINT_is_on_curve(a1, a2, v10) <= 0)
  {
    v12 = 107;
    v13 = 1039;
    goto LABEL_7;
  }

  v14 = 1;
LABEL_9:
  if (v10 != a5)
  {
    BN_CTX_free(v10);
  }

  return v14;
}

uint64_t EC_POINT_get_affine_coordinates(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, BN_CTX *a5)
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

  v11 = *(*a1 + 128);
  if (!v11)
  {
    v12 = 66;
    v13 = 1072;
    goto LABEL_7;
  }

  if (*a1 != *a2)
  {
    v12 = 101;
    v13 = 1076;
LABEL_7:
    ERR_put_error(16, 4095, v12, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_lib.c", v13);
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

int EC_POINT_add(const EC_GROUP *a1, EC_POINT *r, const EC_POINT *a, const EC_POINT *b, BN_CTX *a5)
{
  v10 = a5;
  if (!a5)
  {
    v10 = BN_CTX_new();
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  v11 = *a1;
  v12 = *(*a1 + 160);
  if (!v12)
  {
    v13 = 66;
    v14 = 1108;
    goto LABEL_9;
  }

  if (v11 != *r || v11 != *a || v11 != *b)
  {
    v13 = 101;
    v14 = 1113;
LABEL_9:
    ERR_put_error(16, 4095, v13, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_lib.c", v14);
LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

  v15 = v12(a1, r, a, b, v10);
LABEL_11:
  if (v10 != a5)
  {
    BN_CTX_free(v10);
  }

  return v15;
}

int EC_POINT_dbl(const EC_GROUP *a1, EC_POINT *r, const EC_POINT *a, BN_CTX *a4)
{
  v8 = a4;
  if (!a4)
  {
    v8 = BN_CTX_new();
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  v9 = *a1;
  v10 = *(*a1 + 168);
  if (!v10)
  {
    v11 = 66;
    v12 = 1138;
    goto LABEL_8;
  }

  if (v9 != *r || v9 != *a)
  {
    v11 = 101;
    v12 = 1142;
LABEL_8:
    ERR_put_error(16, 4095, v11, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_lib.c", v12);
LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  v13 = v10(a1, r, a, v8);
LABEL_10:
  if (v8 != a4)
  {
    BN_CTX_free(v8);
  }

  return v13;
}

int EC_POINT_invert(const EC_GROUP *a1, EC_POINT *a2, BN_CTX *a3)
{
  v6 = a3;
  if (!a3)
  {
    v6 = BN_CTX_new();
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  v7 = *(*a1 + 176);
  if (!v7)
  {
    v8 = 66;
    v9 = 1166;
    goto LABEL_7;
  }

  if (*a1 != *a2)
  {
    v8 = 101;
    v9 = 1170;
LABEL_7:
    ERR_put_error(16, 4095, v8, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_lib.c", v9);
LABEL_8:
    v10 = 0;
    goto LABEL_10;
  }

  v10 = v7(a1, a2, v6);
LABEL_10:
  if (v6 != a3)
  {
    BN_CTX_free(v6);
  }

  return v10;
}

int EC_POINT_is_at_infinity(const EC_GROUP *a1, const EC_POINT *a2)
{
  v2 = *(*a1 + 184);
  if (!v2)
  {
    v3 = 66;
    v4 = 1186;
    goto LABEL_5;
  }

  if (*a1 != *a2)
  {
    v3 = 101;
    v4 = 1190;
LABEL_5:
    ERR_put_error(16, 4095, v3, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_lib.c", v4);
    return 0;
  }

  return v2();
}

int EC_POINT_make_affine(const EC_GROUP *a1, EC_POINT *a2, BN_CTX *a3)
{
  v6 = a3;
  if (!a3)
  {
    v6 = BN_CTX_new();
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  v7 = *(*a1 + 208);
  if (!v7)
  {
    v8 = 66;
    v9 = 1266;
    goto LABEL_7;
  }

  if (*a1 != *a2)
  {
    v8 = 101;
    v9 = 1270;
LABEL_7:
    ERR_put_error(16, 4095, v8, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_lib.c", v9);
LABEL_8:
    v10 = 0;
    goto LABEL_10;
  }

  v10 = v7(a1, a2, v6);
LABEL_10:
  if (v6 != a3)
  {
    BN_CTX_free(v6);
  }

  return v10;
}

int EC_POINTs_make_affine(const EC_GROUP *a1, size_t num, EC_POINT *a3[], BN_CTX *a4)
{
  v8 = a4;
  if (a4 || (v8 = BN_CTX_new()) != 0)
  {
    v9 = *(*a1 + 216);
    if (v9)
    {
      if (!num)
      {
LABEL_8:
        v12 = v9(a1, num, a3, v8);
        goto LABEL_13;
      }

      v10 = a3;
      v11 = num;
      while (*a1 == **v10)
      {
        ++v10;
        if (!--v11)
        {
          goto LABEL_8;
        }
      }

      v13 = 101;
      v14 = 1301;
    }

    else
    {
      v13 = 66;
      v14 = 1296;
    }

    ERR_put_error(16, 4095, v13, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_lib.c", v14);
  }

  v12 = 0;
LABEL_13:
  if (v8 != a4)
  {
    BN_CTX_free(v8);
  }

  return v12;
}

int EC_POINTs_mul(const EC_GROUP *a1, EC_POINT *r, const BIGNUM *a3, size_t num, const EC_POINT *a5[], const BIGNUM *a6[], BN_CTX *a7)
{
  v14 = a7;
  if (!a7)
  {
    v14 = BN_CTX_new();
    if (!v14)
    {
      goto LABEL_13;
    }
  }

  v15 = *a1;
  if (!*(*a1 + 224) || !*(v15 + 232) || num > 1 || !*(v15 + 240))
  {
    v21 = 66;
    v22 = 1332;
LABEL_12:
    ERR_put_error(16, 4095, v21, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_lib.c", v22);
LABEL_13:
    v23 = 0;
    goto LABEL_14;
  }

  if (num != 1 || !a5 || !a6)
  {
    if (a3 && !a5 && !a6)
    {
      v18 = a1;
      v19 = r;
      v20 = a3;
      v16 = 0;
      v17 = 0;
      goto LABEL_21;
    }

    v21 = 16;
    v22 = 1344;
    goto LABEL_12;
  }

  v16 = *a5;
  v17 = *a6;
  v18 = a1;
  v19 = r;
  v20 = a3;
LABEL_21:
  v23 = EC_POINT_mul(v18, v19, v20, v16, v17, v14);
LABEL_14:
  if (v14 != a7)
  {
    BN_CTX_free(v14);
  }

  return v23;
}

int EC_POINT_mul(const EC_GROUP *a1, EC_POINT *r, const BIGNUM *a3, const EC_POINT *a4, const BIGNUM *a5, BN_CTX *a6)
{
  v12 = a6;
  if (!a6)
  {
    v12 = BN_CTX_new();
    if (!v12)
    {
      goto LABEL_12;
    }
  }

  v13 = *a1;
  v14 = *(*a1 + 224);
  if (!v14 || (v15 = *(v13 + 232)) == 0 || (v16 = *(v13 + 240)) == 0)
  {
    v18 = 66;
    v19 = 1370;
LABEL_11:
    ERR_put_error(16, 4095, v18, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_lib.c", v19);
LABEL_12:
    v20 = 0;
    goto LABEL_13;
  }

  if (!a3 || a4 || a5)
  {
    if (!a3 && a4 && a5)
    {
      v17 = v15(a1, r, a5, a4, v12);
      goto LABEL_24;
    }

    if (a3 && a4 && a5)
    {
      v17 = v16(a1, r, a3, a5, a4, v12);
      goto LABEL_24;
    }

    v18 = 16;
    v19 = 1405;
    goto LABEL_11;
  }

  v17 = v14(a1, r, a3, v12);
LABEL_24:
  v20 = v17;
LABEL_13:
  if (v12 != a6)
  {
    BN_CTX_free(v12);
  }

  return v20;
}

int EC_GROUP_precompute_mult(EC_GROUP *a1, BN_CTX *a2)
{
  v2 = *(*a1 + 248);
  if (!v2)
  {
    return 1;
  }

  v5 = a2;
  if (a2)
  {
    goto LABEL_5;
  }

  v5 = BN_CTX_new();
  if (v5)
  {
    v2 = *(*a1 + 248);
LABEL_5:
    v6 = v2(a1, v5);
    goto LABEL_6;
  }

  v6 = 0;
LABEL_6:
  if (v5 != a2)
  {
    BN_CTX_free(v5);
  }

  return v6;
}

int EC_GROUP_have_precompute_mult(const EC_GROUP *a1)
{
  v1 = *(*a1 + 256);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

EC_KEY *ECParameters_dup(EC_KEY *a1)
{
  v5 = 0;
  if (!a1)
  {
    return 0;
  }

  v1 = i2d_ECParameters(a1, &v5);
  if (v1 < 1)
  {
    return 0;
  }

  in = v5;
  v2 = v1;
  v3 = d2i_ECParameters(0, &in, v1);
  freezero(v5, v2);
  return v3;
}

uint64_t **x509_issuer_tree_RB_INSERT_COLOR(uint64_t **result, uint64_t *a2)
{
  for (i = a2[2]; i; a2 = v6)
  {
    if (*(i + 6) != 1)
    {
      break;
    }

    v3 = i[2];
    v4 = *v3;
    if (i == *v3)
    {
      v7 = v3[1];
      if (!v7 || *(v7 + 24) != 1)
      {
        v8 = i[1];
        if (v8 != a2)
        {
          v6 = a2;
          a2 = i;
LABEL_32:
          *(a2 + 6) = 0;
          *(v3 + 6) = 1;
          v19 = *(v4 + 8);
          *v3 = v19;
          if (v19)
          {
            *(v19 + 16) = v3;
          }

          v20 = v3[2];
          *(v4 + 16) = v20;
          v21 = result;
          if (v20)
          {
            v21 = &v20[v3 != *v20];
          }

          *v21 = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          goto LABEL_37;
        }

        v12 = *v8;
        i[1] = *v8;
        if (v12)
        {
          *(v12 + 16) = i;
          v13 = i[2];
          v8[2] = v13;
          v14 = result;
          if (!v13)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v8[2] = v3;
        }

        v14 = (i[2] + 8 * (i != *i[2]));
LABEL_31:
        *v14 = v8;
        *v8 = i;
        i[2] = v8;
        v4 = *v3;
        v6 = i;
        goto LABEL_32;
      }

      *(v7 + 24) = 0;
    }

    else
    {
      if (!v4 || *(v4 + 24) != 1)
      {
        v5 = *i;
        if (*i != a2)
        {
          v6 = a2;
          a2 = i;
LABEL_24:
          *(a2 + 6) = 0;
          *(v3 + 6) = 1;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v18 = result;
          if (v17)
          {
            v18 = &v17[v3 != *v17];
          }

          *v18 = v15;
          *v15 = v3;
          v3[2] = v15;
          goto LABEL_37;
        }

        v9 = v5[1];
        *i = v9;
        if (v9)
        {
          *(v9 + 16) = i;
          v10 = i[2];
          v5[2] = v10;
          v11 = result;
          if (!v10)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v5[2] = v3;
        }

        v11 = (i[2] + 8 * (i != *i[2]));
LABEL_23:
        *v11 = v5;
        v5[1] = i;
        v6 = i;
        i[2] = v5;
        goto LABEL_24;
      }

      *(v4 + 24) = 0;
    }

    *(i + 6) = 0;
    v6 = v3;
    *(v3 + 6) = 1;
LABEL_37:
    i = v6[2];
  }

  *(*result + 6) = 0;
  return result;
}

uint64_t ***x509_issuer_tree_RB_REMOVE_COLOR(uint64_t ***result, uint64_t a2, uint64_t **a3)
{
  while (1)
  {
    v3 = a3;
    a3 = a2;
    if (v3)
    {
      if (*(v3 + 6))
      {
        break;
      }
    }

    v4 = *result;
    if (v3 == *result)
    {
      goto LABEL_64;
    }

    v5 = *a2;
    if (*a2 == v3)
    {
      v5 = *(a2 + 8);
      if (*(v5 + 6) == 1)
      {
        *(v5 + 6) = 0;
        *(a2 + 24) = 1;
        v8 = *v5;
        *(a2 + 8) = *v5;
        if (v8)
        {
          v8[2] = a2;
        }

        v9 = *(a2 + 16);
        v5[2] = v9;
        if (v9)
        {
          if (a2 == *v9)
          {
            *v9 = v5;
          }

          else
          {
            v9[1] = v5;
            v8 = *(a2 + 8);
          }
        }

        else
        {
          *result = v5;
          v4 = v5;
        }

        *v5 = a2;
        *(a2 + 16) = v5;
        v5 = v8;
      }

      v12 = *v5;
      if (*v5 && *(v12 + 24))
      {
        v13 = v5[1];
        if (!v13)
        {
          goto LABEL_51;
        }

LABEL_37:
        if (*(v13 + 24))
        {
          *(v5 + 6) = *(a2 + 24);
          *(a2 + 24) = 0;
          v15 = v4;
          goto LABEL_57;
        }

        if (v12)
        {
LABEL_51:
          *(v12 + 24) = 0;
        }

        *(v5 + 6) = 1;
        v21 = *(v12 + 8);
        *v5 = v21;
        if (v21)
        {
          *(v21 + 16) = v5;
        }

        v22 = v5[2];
        *(v12 + 16) = v22;
        v23 = result;
        v15 = v12;
        if (v22)
        {
          v23 = &v22[v5 != *v22];
          v15 = v4;
        }

        *v23 = v12;
        *(v12 + 8) = v5;
        v5[2] = v12;
        v5 = a3[1];
        v13 = v5[1];
        *(v5 + 6) = *(a3 + 6);
        *(a3 + 6) = 0;
        if (v13)
        {
LABEL_57:
          *(v13 + 24) = 0;
        }

        v24 = *v5;
        a3[1] = *v5;
        if (v24)
        {
          *(v24 + 16) = a3;
        }

        v25 = a3[2];
        v5[2] = v25;
        v3 = v5;
        if (v25)
        {
          result = &v25[a3 != *v25];
          v3 = v15;
        }

        *result = v5;
        *v5 = a3;
        goto LABEL_63;
      }

      v13 = v5[1];
      if (v13 && *(v13 + 24))
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (*(v5 + 6) == 1)
      {
        *(v5 + 6) = 0;
        *(a2 + 24) = 1;
        v6 = v5[1];
        *a2 = v6;
        if (v6)
        {
          v6[2] = a2;
        }

        v7 = *(a2 + 16);
        v5[2] = v7;
        if (v7)
        {
          if (a2 == *v7)
          {
            *v7 = v5;
            v6 = *a2;
          }

          else
          {
            v7[1] = v5;
          }
        }

        else
        {
          *result = v5;
          v4 = v5;
        }

        v5[1] = a2;
        *(a2 + 16) = v5;
        v5 = v6;
      }

      v10 = *v5;
      if (*v5 && *(v10 + 24))
      {
        goto LABEL_35;
      }

      v11 = v5[1];
      if (v11 && *(v11 + 6))
      {
        if (v10 && *(v10 + 24))
        {
LABEL_35:
          *(v5 + 6) = *(a2 + 24);
          *(a2 + 24) = 0;
          v14 = v4;
          goto LABEL_44;
        }

        *(v11 + 6) = 0;
        *(v5 + 6) = 1;
        v16 = *v11;
        v5[1] = *v11;
        if (v16)
        {
          v16[2] = v5;
        }

        v17 = v5[2];
        v11[2] = v17;
        v18 = result;
        v14 = v11;
        if (v17)
        {
          v18 = &v17[v5 != *v17];
          v14 = v4;
        }

        *v18 = v11;
        *v11 = v5;
        v5[2] = v11;
        v5 = *a3;
        v10 = **a3;
        *(*a3 + 6) = *(a3 + 6);
        *(a3 + 6) = 0;
        if (v10)
        {
LABEL_44:
          *(v10 + 24) = 0;
        }

        v19 = v5[1];
        *a3 = v19;
        if (v19)
        {
          v19[2] = a3;
        }

        v20 = a3[2];
        v5[2] = v20;
        v3 = v5;
        if (v20)
        {
          result = &v20[a3 != *v20];
          v3 = v14;
        }

        *result = v5;
        v5[1] = a3;
LABEL_63:
        a3[2] = v5;
LABEL_64:
        if (!v3)
        {
          return result;
        }

        break;
      }
    }

    *(v5 + 6) = 1;
    a2 = *(a2 + 16);
  }

  *(v3 + 6) = 0;
  return result;
}

uint64_t x509_issuer_tree_RB_REMOVE(uint64_t ***a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  if (!*a2)
  {
    v9 = *(a2 + 16);
    v15 = *(a2 + 24);
    if (!v3)
    {
      if (!v9)
      {
LABEL_22:
        v16 = a1;
LABEL_23:
        *v16 = v3;
        if (v15)
        {
          return a2;
        }

LABEL_24:
        x509_issuer_tree_RB_REMOVE_COLOR(a1, v9, v3);
        return a2;
      }

LABEL_19:
      v16 = &v9[*v9 != a2];
      goto LABEL_23;
    }

LABEL_21:
    v3[2] = v9;
    if (!v9)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (!v3)
  {
    v9 = *(a2 + 16);
    v15 = *(a2 + 24);
    v3 = v4;
    goto LABEL_21;
  }

  do
  {
    v5 = v3;
    v3 = *v3;
  }

  while (v3);
  v3 = v5[1];
  v6 = v5[2];
  v7 = *(v5 + 6);
  if (v3)
  {
    v3[2] = v6;
  }

  v8 = a1;
  if (v6)
  {
    v8 = &v6[*v6 != v5];
  }

  *v8 = v3;
  if (v5[2] == a2)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  v10 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 1) = v10;
  v11 = *(a2 + 16);
  v12 = a1;
  if (v11)
  {
    v12 = &v11[*v11 != a2];
  }

  *v12 = v5;
  v13 = *(a2 + 8);
  *(*a2 + 16) = v5;
  if (v13)
  {
    *(v13 + 16) = v5;
  }

  if (!v7)
  {
    goto LABEL_24;
  }

  return a2;
}

uint64_t **x509_issuer_tree_RB_INSERT(uint64_t **a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    do
    {
      v5 = v4;
      v6 = x509_issuer_cmp(a2, v4);
      v7 = v5;
      if ((v6 & 0x80000000) == 0)
      {
        if (!v6)
        {
          return v5;
        }

        v7 = v5 + 1;
      }

      v4 = *v7;
    }

    while (v4);
    *(a2 + 8) = 0;
    *(a2 + 16) = v5;
    *a2 = 0;
    *(a2 + 24) = 1;
    v8 = &v5[v6 >= 0];
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
    v8 = a1;
  }

  *v8 = a2;
  x509_issuer_tree_RB_INSERT_COLOR(a1, a2);
  return 0;
}

uint64_t x509_issuer_cmp(uint64_t a1, uint64_t a2)
{
  result = memcmp(*(a1 + 48), *(a2 + 48), 0x40uLL);
  if (!result)
  {
    v5 = *(a1 + 56);
    v6 = *(a2 + 56);

    return memcmp(v5, v6, 0x40uLL);
  }

  return result;
}

void *x509_issuer_tree_RB_FIND(void **a1, uint64_t a2)
{
  for (i = *a1; i; i = *i)
  {
    v4 = x509_issuer_cmp(a2, i);
    if ((v4 & 0x80000000) == 0)
    {
      if (!v4)
      {
        return i;
      }

      ++i;
    }
  }

  return i;
}

void *x509_issuer_tree_RB_NFIND(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = 0;
    while (1)
    {
      v5 = x509_issuer_cmp(a2, v2);
      if (v5 < 0)
      {
        v4 = v2;
      }

      else
      {
        if (!v5)
        {
          return v2;
        }

        ++v2;
      }

      v2 = *v2;
      if (!v2)
      {
        return v4;
      }
    }
  }

  return 0;
}

void *x509_issuer_tree_RB_NEXT(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    do
    {
      result = v1;
      v1 = *v1;
    }

    while (v1);
  }

  else
  {
    v3 = a1;
    result = *(a1 + 16);
    if (!result || *result != v3)
    {
      do
      {
        result = *(v3 + 16);
        if (!result)
        {
          break;
        }

        v4 = v3 == result[1];
        v3 = *(v3 + 16);
      }

      while (v4);
    }
  }

  return result;
}

void *x509_issuer_tree_RB_PREV(void *a1)
{
  v1 = *a1;
  if (*a1)
  {
    do
    {
      result = v1;
      v1 = v1[1];
    }

    while (v1);
  }

  else
  {
    v3 = a1;
    result = a1[2];
    if (!result || result[1] != v3)
    {
      do
      {
        result = v3[2];
        if (!result)
        {
          break;
        }

        v4 = v3 == *result;
        v3 = v3[2];
      }

      while (v4);
    }
  }

  return result;
}