char *recallocarray(char *a1, unint64_t a2, size_t count, size_t size)
{
  if (a1)
  {
    v5 = a1;
    if (count && (size | count) >> 32 && !is_mul_ok(count, size))
    {
      v6 = __error();
      v5 = 0;
      v7 = 12;
LABEL_10:
      *v6 = v7;
      return v5;
    }

    if (a2 && (size | a2) >> 32 && !is_mul_ok(a2, size))
    {
      v6 = __error();
      v5 = 0;
      v7 = 22;
      goto LABEL_10;
    }

    v9 = size * count;
    v10 = size * a2;
    v11 = size * count - size * a2;
    if (size * count <= size * a2)
    {
      if (v10 - v9 < v10 >> 1 && v10 - v9 < getpagesize())
      {
        bzero(&v5[v9], v10 - v9);
        return v5;
      }

      v14 = malloc_type_malloc(v9, 0x6D289B2AuLL);
      if (v14)
      {
        memcpy(v14, v5, v9);
LABEL_22:
        explicit_bzero(v5, v10);
      }
    }

    else
    {
      v12 = malloc_type_malloc(size * count, 0x6D289B2AuLL);
      if (v12)
      {
        v13 = v12;
        memcpy(v12, v5, v10);
        bzero(&v13[v10], v11);
        goto LABEL_22;
      }
    }

    return 0;
  }

  return malloc_type_calloc(count, size, 0xBDF0B0E0uLL);
}

uint64_t b64_write(BIO *a1, char *a2, int a3)
{
  next_bio = a1->next_bio;
  BIO_clear_flags(a1, 15);
  if (LODWORD(next_bio->cb_arg) != 1)
  {
    LODWORD(next_bio->cb_arg) = 1;
    next_bio->method = 0;
    LODWORD(next_bio->callback) = 0;
    EVP_EncodeInit(&next_bio->shutdown);
  }

  if (SHIDWORD(next_bio->method) >= 1502)
  {
    OpenSSLDie("/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/bio_b64.c", 372, "ctx->buf_off < (int)sizeof(ctx->buf)");
  }

  method = next_bio->method;
  if (SLODWORD(next_bio->method) > 1502)
  {
    OpenSSLDie("/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/bio_b64.c", 373, "ctx->buf_len <= (int)sizeof(ctx->buf)");
  }

  method_high = HIDWORD(next_bio->method);
  if (method < method_high)
  {
    OpenSSLDie("/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/bio_b64.c", 374, "ctx->buf_len >= ctx->buf_off");
  }

  v9 = method - method_high;
  if (method - method_high < 1)
  {
LABEL_18:
    v11 = 0;
    next_bio->method = 0;
    if (a2 && a3 >= 1)
    {
      LODWORD(v11) = 0;
      v14 = &next_bio[14].next_bio + 2;
      while (1)
      {
        v15 = a3 >= 0x400 ? 1024 : a3;
        if ((BIO_test_flags(a1, -1) & 0x100) != 0)
        {
          callback = next_bio->callback;
          if (callback < 1)
          {
            if (a3 <= 2)
            {
              memcpy(v14, a2, v15);
              LODWORD(next_bio->callback) = v15;
              return (v11 + v15);
            }

            LODWORD(v15) = v15 - v15 % 3u;
            v20 = EVP_EncodeBlock(&next_bio[1].callback + 4, a2, v15);
            LODWORD(next_bio->method) = v20;
            if (v20 >= 1503)
            {
              OpenSSLDie("/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/bio_b64.c", 431, "ctx->buf_len <= (int)sizeof(ctx->buf)");
            }

            if (v20 < SHIDWORD(next_bio->method))
            {
              OpenSSLDie("/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/bio_b64.c", 432, "ctx->buf_len >= ctx->buf_off");
            }

            v11 = (v15 + v11);
          }

          else
          {
            if (callback >= 4)
            {
              OpenSSLDie("/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/bio_b64.c", 400, "ctx->tmp_len <= 3");
            }

            if (3 - callback >= a3)
            {
              LODWORD(v15) = a3;
            }

            else
            {
              LODWORD(v15) = 3 - callback;
            }

            memcpy(&v14[callback], a2, v15);
            v18 = LODWORD(next_bio->callback) + v15;
            LODWORD(next_bio->callback) = v18;
            v11 = (v15 + v11);
            if (v18 < 3)
            {
              return v11;
            }

            v19 = EVP_EncodeBlock(&next_bio[1].callback + 4, v14, v18);
            LODWORD(next_bio->method) = v19;
            if (v19 >= 1503)
            {
              OpenSSLDie("/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/bio_b64.c", 414, "ctx->buf_len <= (int)sizeof(ctx->buf)");
            }

            if (v19 < SHIDWORD(next_bio->method))
            {
              OpenSSLDie("/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/bio_b64.c", 415, "ctx->buf_len >= ctx->buf_off");
            }

            LODWORD(next_bio->callback) = 0;
          }
        }

        else
        {
          EVP_EncodeUpdate(&next_bio->shutdown, &next_bio[1].callback + 4, next_bio, a2, v15);
          if (!v16)
          {
            if (v11)
            {
              return v11;
            }

            else
            {
              return 0xFFFFFFFFLL;
            }
          }

          if (SLODWORD(next_bio->method) >= 1503)
          {
            OpenSSLDie("/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/bio_b64.c", 440, "ctx->buf_len <= (int)sizeof(ctx->buf)");
          }

          if (SLODWORD(next_bio->method) < SHIDWORD(next_bio->method))
          {
            OpenSSLDie("/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/bio_b64.c", 441, "ctx->buf_len >= ctx->buf_off");
          }

          v11 = (v11 + v15);
        }

        HIDWORD(next_bio->method) = 0;
        v21 = next_bio->method;
        if (SLODWORD(next_bio->method) >= 1)
        {
          break;
        }

LABEL_58:
        a2 += v15;
        next_bio->method = 0;
        v25 = __OFSUB__(a3, v15);
        a3 -= v15;
        v14 = &next_bio[14].next_bio + 2;
        if ((a3 < 0) ^ v25 | (a3 == 0))
        {
          return v11;
        }
      }

      while (1)
      {
        v22 = BIO_write(a1->prev_bio, &next_bio[1].callback + SHIDWORD(next_bio->method) + 4, v21);
        v23 = v22;
        if (v22 <= 0)
        {
          break;
        }

        v12 = v21 >= v22;
        v21 -= v22;
        if (!v12)
        {
          OpenSSLDie("/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/bio_b64.c", 455, "i <= n");
        }

        v24 = HIDWORD(next_bio->method) + v22;
        HIDWORD(next_bio->method) = v24;
        if (v24 >= 1503)
        {
          OpenSSLDie("/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/bio_b64.c", 458, "ctx->buf_off <= (int)sizeof(ctx->buf)");
        }

        if (SLODWORD(next_bio->method) < v24)
        {
          OpenSSLDie("/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/bio_b64.c", 459, "ctx->buf_len >= ctx->buf_off");
        }

        if (v21 <= 0)
        {
          goto LABEL_58;
        }
      }

      BIO_copy_next_retry(a1);
      if (v11)
      {
        return v11;
      }

      else
      {
        return v23;
      }
    }
  }

  else
  {
    while (1)
    {
      v10 = BIO_write(a1->prev_bio, &next_bio[1].callback + SHIDWORD(next_bio->method) + 4, v9);
      v11 = v10;
      if (v10 <= 0)
      {
        break;
      }

      v12 = v9 >= v10;
      v9 -= v10;
      if (!v12)
      {
        OpenSSLDie("/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/bio_b64.c", 382, "i <= n");
      }

      v13 = HIDWORD(next_bio->method) + v10;
      HIDWORD(next_bio->method) = v13;
      if (v13 >= 1503)
      {
        OpenSSLDie("/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/bio_b64.c", 384, "ctx->buf_off <= (int)sizeof(ctx->buf)");
      }

      if (SLODWORD(next_bio->method) < v13)
      {
        OpenSSLDie("/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/bio_b64.c", 385, "ctx->buf_len >= ctx->buf_off");
      }

      if (v9 <= 0)
      {
        goto LABEL_18;
      }
    }

    BIO_copy_next_retry(a1);
  }

  return v11;
}

uint64_t b64_read(BIO *b, char *a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  next_bio = b->next_bio;
  if (!next_bio || !b->prev_bio)
  {
    return 0;
  }

  v6 = a2;
  outl = 0;
  BIO_clear_flags(b, 15);
  if (LODWORD(next_bio->cb_arg) != 2)
  {
    LODWORD(next_bio->cb_arg) = 2;
    next_bio->method = 0;
    LODWORD(next_bio->callback) = 0;
    EVP_DecodeInit(&next_bio->shutdown);
  }

  method = next_bio->method;
  if (SLODWORD(next_bio->method) < 1)
  {
    v10 = 0;
  }

  else
  {
    method_high = HIDWORD(next_bio->method);
    if (method < method_high)
    {
      OpenSSLDie("/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/bio_b64.c", 177, "ctx->buf_len >= ctx->buf_off");
    }

    v9 = method - method_high;
    if (v9 >= a3)
    {
      v10 = a3;
    }

    else
    {
      v10 = v9;
    }

    if (v10 + method_high >= 1502)
    {
      OpenSSLDie("/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/bio_b64.c", 181, "ctx->buf_off + i < (int)sizeof(ctx->buf)");
    }

    memcpy(v6, &next_bio[1].callback + method_high + 4, v10);
    v6 += v10;
    a3 -= v10;
    v11 = next_bio->method;
    v12 = HIDWORD(next_bio->method) + v10;
    HIDWORD(next_bio->method) = v12;
    if (v11 == v12)
    {
      next_bio->method = 0;
    }
  }

  v44 = v10;
  if (a3 < 1)
  {
    v14 = 0;
    goto LABEL_86;
  }

  v14 = 0;
  v15 = &next_bio[14].next_bio + 2;
  __dst = v6;
  do
  {
    if (next_bio->init < 1)
    {
      break;
    }

    v45 = v14;
    v42 = a3;
LABEL_23:
    v16 = BIO_read(b->prev_bio, &v15[SLODWORD(next_bio->callback)], 1024 - LODWORD(next_bio->callback));
    v14 = v16;
    if (v16 < 1)
    {
      if (BIO_test_flags(b->prev_bio, 8))
      {
        break;
      }

      next_bio->init = v14;
      callback = next_bio->callback;
      if (!callback)
      {
        break;
      }

      v18 = 0;
      v45 = v14;
    }

    else
    {
      callback = next_bio->callback;
      v18 = v16;
    }

    v19 = callback + v18;
    LODWORD(next_bio->callback) = callback + v18;
    if (HIDWORD(next_bio->cb_arg))
    {
      if ((BIO_test_flags(b, -1) & 0x100) != 0)
      {
        goto LABEL_64;
      }

      if (HIDWORD(next_bio->cb_arg))
      {
        outl = 0;
        if (v19 >= 1)
        {
          v20 = 0;
          v21 = &next_bio[14].next_bio + 3;
          v22 = &next_bio[14].next_bio + (v18 + callback - 1) + 3;
          v23 = &next_bio[14].next_bio + 2;
          v24 = 1626;
          while (1)
          {
            if (*(v21 - 1) == 10)
            {
              if (HIDWORD(next_bio->callback))
              {
                HIDWORD(next_bio->callback) = 0;
              }

              else
              {
                if (EVP_DecodeUpdate(&next_bio->shutdown, &next_bio[1].callback + 4, &outl, v23, v20 - v24 + 1627) > 0 || outl || !HIDWORD(next_bio->cb_arg))
                {
                  if (v24 != 1626)
                  {
                    v25 = v19 - v24;
                    v19 = v19 - v24 + 1626;
                    if (v19 >= 1)
                    {
                      v26 = (v25 + 1626);
                      v27 = v23;
                      v28 = &next_bio[14].next_bio + 2;
                      do
                      {
                        v29 = *v27++;
                        *v28++ = v29;
                        --v26;
                      }

                      while (v26);
                    }
                  }

                  EVP_DecodeInit(&next_bio->shutdown);
                  HIDWORD(next_bio->cb_arg) = 0;
LABEL_54:
                  if (v20 == v19 && !outl)
                  {
                    if (v24 == 1626)
                    {
                      if (v20 == 1024)
                      {
                        v30 = 0;
                        HIDWORD(next_bio->callback) = 1;
                        goto LABEL_63;
                      }
                    }

                    else if (v23 != v21)
                    {
                      v30 = v21 - v23;
                      if (v21 - v23 >= 1)
                      {
                        v31 = v30 & 0x7FFFFFFF;
                        v32 = &next_bio[14].next_bio + 2;
                        do
                        {
                          v33 = *v23++;
                          *v32++ = v33;
                          --v31;
                        }

                        while (v31);
                      }

LABEL_63:
                      LODWORD(next_bio->callback) = v30;
                    }

LABEL_45:
                    if (next_bio->init < 1)
                    {
                      v14 = v45;
                      goto LABEL_86;
                    }

                    goto LABEL_23;
                  }

LABEL_64:
                  LODWORD(next_bio->callback) = 0;
                  goto LABEL_65;
                }

                EVP_DecodeInit(&next_bio->shutdown);
              }

              v24 = v20 + 1627;
            }

            ++v21;
            v23 = next_bio + v24;
            if (v19 == ++v20)
            {
              LODWORD(v20) = v19;
              v21 = v22;
              goto LABEL_54;
            }
          }
        }

        if (!v19)
        {
          goto LABEL_45;
        }

        goto LABEL_64;
      }
    }

    if (v19 <= 1023 && next_bio->init > 0)
    {
      goto LABEL_45;
    }

LABEL_65:
    if ((BIO_test_flags(b, -1) & 0x100) != 0)
    {
      v35 = v19 & 0xFFFFFFFFFFFFFFFCLL;
      v36 = EVP_DecodeBlock(&next_bio[1].callback + 4, &next_bio[14].next_bio + 2, v19 & 0xFFFFFFFC);
      v34 = v36;
      if (v35 >= 3 && v15[(v35 - 1)] == 61)
      {
        if (v15[(v35 - 2)] == 61)
        {
          v37 = -2;
        }

        else
        {
          v37 = -1;
        }

        v34 = v37 + v36;
      }

      if (v35 != v19)
      {
        v38 = v19 & 3;
        memmove(&next_bio[14].next_bio + 2, &v15[v35], v38);
        LODWORD(next_bio->callback) = v38;
      }

      LODWORD(next_bio->method) = v34 & ~(v34 >> 31);
    }

    else
    {
      v34 = EVP_DecodeUpdate(&next_bio->shutdown, &next_bio[1].callback + 4, next_bio, &next_bio[14].next_bio + 2, v19);
      LODWORD(next_bio->callback) = 0;
    }

    HIDWORD(next_bio->method) = 0;
    if (v34 < 0)
    {
      v14 = 0;
      LODWORD(next_bio->method) = 0;
      break;
    }

    if (SLODWORD(next_bio->method) >= v42)
    {
      v39 = v42;
    }

    else
    {
      v39 = next_bio->method;
    }

    v40 = v39;
    memcpy(__dst, &next_bio[1].callback + 4, v39);
    HIDWORD(next_bio->method) = v39;
    if (v39 == LODWORD(next_bio->method))
    {
      next_bio->method = 0;
    }

    v44 += v39;
    __dst += v39;
    a3 = v42 - v39;
    v41 = v42 <= v40;
    v14 = v45;
  }

  while (!v41);
LABEL_86:
  BIO_copy_next_retry(b);
  if (v44)
  {
    return v44;
  }

  else
  {
    return v14;
  }
}

uint64_t b64_puts(BIO *a1, char *__s)
{
  v4 = strlen(__s);

  return b64_write(a1, __s, v4);
}

uint64_t b64_ctrl(BIO *b, int a2, uint64_t larg, void *parg)
{
  next_bio = b->next_bio;
  if (a2 > 10)
  {
    if (a2 <= 12)
    {
      if (a2 != 11)
      {
        return 1;
      }

      while (1)
      {
        while (1)
        {
          while (LODWORD(next_bio->method) != HIDWORD(next_bio->method))
          {
            LODWORD(result) = b64_write(b, 0, 0);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }

          if ((BIO_test_flags(b, -1) & 0x100) == 0)
          {
            break;
          }

          callback = next_bio->callback;
          if (!callback)
          {
            goto LABEL_37;
          }

          v9 = EVP_EncodeBlock(&next_bio[1].callback + 4, &next_bio[14].next_bio + 2, callback);
          HIDWORD(next_bio->method) = 0;
          LODWORD(next_bio->callback) = 0;
          LODWORD(next_bio->method) = v9;
        }

        if (!LODWORD(next_bio->cb_arg) || !next_bio->shutdown)
        {
          break;
        }

        HIDWORD(next_bio->method) = 0;
        EVP_EncodeFinal(&next_bio->shutdown, &next_bio[1].callback + 4, next_bio);
      }

LABEL_37:
      prev_bio = b->prev_bio;
      a2 = 11;
      goto LABEL_38;
    }

    if (a2 == 13)
    {
      method = next_bio->method;
      method_high = HIDWORD(next_bio->method);
      if (SLODWORD(next_bio->method) < method_high)
      {
        OpenSSLDie("/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/bio_b64.c", 490, "ctx->buf_len >= ctx->buf_off");
      }

      result = (method - method_high);
      if (method == method_high && LODWORD(next_bio->cb_arg) && next_bio->shutdown)
      {
        return 1;
      }

      if (result > 0)
      {
        return result;
      }

      prev_bio = b->prev_bio;
      a2 = 13;
      goto LABEL_38;
    }

    if (a2 == 101)
    {
      BIO_clear_flags(b, 15);
      v14 = BIO_ctrl(b->prev_bio, 101, larg, parg);
      BIO_copy_next_retry(b);
      return v14;
    }

    goto LABEL_25;
  }

  if (a2 == 1)
  {
    next_bio->init = 1;
    next_bio->cb_arg = 0x100000000;
LABEL_25:
    prev_bio = b->prev_bio;
    goto LABEL_38;
  }

  if (a2 == 2)
  {
    if (next_bio->init < 1)
    {
      return 1;
    }

    prev_bio = b->prev_bio;
    a2 = 2;
    goto LABEL_38;
  }

  if (a2 != 10)
  {
    goto LABEL_25;
  }

  v11 = next_bio->method;
  v12 = HIDWORD(next_bio->method);
  if (SLODWORD(next_bio->method) < v12)
  {
    OpenSSLDie("/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/bio_b64.c", 499, "ctx->buf_len >= ctx->buf_off");
  }

  result = (v11 - v12);
  if (v11 <= v12)
  {
    prev_bio = b->prev_bio;
    a2 = 10;
LABEL_38:

    return BIO_ctrl(prev_bio, a2, larg, parg);
  }

  return result;
}

uint64_t b64_new(uint64_t a1)
{
  v2 = malloc_type_malloc(0xA5CuLL, 0x10000407E11CA4CuLL);
  if (!v2)
  {
    return 0;
  }

  *v2 = 0u;
  v3 = 1;
  v2[6] = 1;
  *(v2 + 2) = 0x100000000;
  *(a1 + 32) = 1;
  *(a1 + 56) = v2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return v3;
}

uint64_t b64_free(uint64_t result)
{
  if (result)
  {
    v1 = result;
    free(*(result + 56));
    *(v1 + 56) = 0;
    *(v1 + 32) = 0;
    result = 1;
    *(v1 + 40) = 0;
  }

  return result;
}

BIO *b64_callback_ctrl(uint64_t a1, int a2, void (__cdecl *a3)(bio_st *, int, const char *, int, uint64_t, uint64_t))
{
  result = *(a1 + 64);
  if (result)
  {
    return BIO_callback_ctrl(result, a2, a3);
  }

  return result;
}

int ENGINE_register_ECDH(ENGINE *e)
{
  if (*(e + 5))
  {
    return engine_table_register(&ecdh_table, engine_unregister_all_ECDH, e, &dummy_nid_2, 1, 0);
  }

  else
  {
    return 1;
  }
}

void ENGINE_register_all_ECDH(void)
{
  first = ENGINE_get_first();
  if (first)
  {
    next = first;
    do
    {
      if (*(next + 5))
      {
        engine_table_register(&ecdh_table, engine_unregister_all_ECDH, next, &dummy_nid_2, 1, 0);
      }

      next = ENGINE_get_next(next);
    }

    while (next);
  }
}

int ENGINE_set_default_ECDH(ENGINE *e)
{
  if (*(e + 5))
  {
    return engine_table_register(&ecdh_table, engine_unregister_all_ECDH, e, &dummy_nid_2, 1, 1);
  }

  else
  {
    return 1;
  }
}

uint64_t generate_key(uint64_t a1)
{
  if (BN_num_bits(*(a1 + 8)) >= 10001)
  {
    ERR_put_error(5, 4095, 103, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_key.c", 112);
    return 0;
  }

  v3 = BN_CTX_new();
  if (!v3)
  {
    v5 = 0;
    v4 = 0;
    goto LABEL_11;
  }

  v4 = *(a1 + 40);
  if (!v4)
  {
    v4 = BN_new();
    if (!v4)
    {
      v5 = 0;
      goto LABEL_11;
    }
  }

  v5 = *(a1 + 32);
  if (!v5)
  {
    v5 = BN_new();
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    v6 = 0;
    goto LABEL_20;
  }

  v6 = BN_MONT_CTX_set_locked((a1 + 56), 26, *(a1 + 8), v3);
  if (!v6)
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

LABEL_20:
  if (*(a1 + 40))
  {
    v7 = 0;
  }

  else if (*(a1 + 64))
  {
    v7 = BN_new();
    if (!v7)
    {
      goto LABEL_12;
    }

    v9 = BN_value_one();
    v10 = BN_value_one();
    if (!BN_add(v7, v9, v10) || !bn_rand_interval(v4, v7, *(a1 + 64)))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = *(a1 + 24);
    if (!v11)
    {
      LODWORD(v11) = BN_num_bits(*(a1 + 8)) - 1;
    }

    v7 = 0;
    if (!BN_rand(v4, v11, 0, 0))
    {
      goto LABEL_12;
    }
  }

  if (!(*(*(a1 + 120) + 24))(a1, v5, *(a1 + 16), v4, *(a1 + 8), v3, v6))
  {
LABEL_12:
    ERR_put_error(5, 4095, 3, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_key.c", 162);
    if (!*(a1 + 32))
    {
      BN_free(v5);
    }

    v2 = 0;
    goto LABEL_15;
  }

  *(a1 + 32) = v5;
  *(a1 + 40) = v4;
  v2 = 1;
LABEL_15:
  if (!*(a1 + 40))
  {
    BN_free(v4);
  }

  BN_CTX_free(v3);
  BN_free(v7);
  return v2;
}

uint64_t compute_key(unsigned __int8 *a1, const BIGNUM *a2, uint64_t a3)
{
  if (BN_num_bits(*(a3 + 8)) < 10001)
  {
    v6 = BN_CTX_new();
    if (!v6)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = v6;
    codes = 0;
    BN_CTX_start(v6);
    v8 = BN_CTX_get(v7);
    if (!v8)
    {
      goto LABEL_18;
    }

    if (*(a3 + 40))
    {
      v9 = v8;
      if (*(a3 + 48))
      {
        v10 = BN_MONT_CTX_set_locked((a3 + 56), 26, *(a3 + 8), v7);
        BN_set_flags(*(a3 + 40), 4);
        if (!v10)
        {
LABEL_18:
          v11 = 0xFFFFFFFFLL;
          goto LABEL_19;
        }
      }

      else
      {
        v10 = 0;
      }

      if (!DH_check_pub_key(a3, a2, &codes) || codes)
      {
        v12 = 102;
        v13 = 210;
      }

      else
      {
        if ((*(*(a3 + 120) + 24))(a3, v9, a2, *(a3 + 40), *(a3 + 8), v7, v10))
        {
          v11 = BN_bn2bin(v9, a1);
LABEL_19:
          BN_CTX_end(v7);
          BN_CTX_free(v7);
          return v11;
        }

        v12 = 3;
        v13 = 216;
      }
    }

    else
    {
      v12 = 100;
      v13 = 195;
    }

    ERR_put_error(5, 4095, v12, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_key.c", v13);
    goto LABEL_18;
  }

  ERR_put_error(5, 4095, 103, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_key.c", 183);
  return 0xFFFFFFFFLL;
}

uint64_t EVP_PBE_find(int a1, int a2, _DWORD *a3, _DWORD *a4, void *a5)
{
  if (!a2)
  {
    return 0;
  }

  v12 = 0;
  v13 = 0;
  *data = a1;
  v11 = a2;
  if (pbe_algs && (v8 = sk_find(pbe_algs, data), v8 != -1) && (result = sk_value(pbe_algs, v8)) != 0 || (result = OBJ_bsearch_(data, builtin_pbe, 23, 24, pbe2_cmp_BSEARCH_CMP_FN)) != 0)
  {
    if (a3)
    {
      *a3 = *(result + 8);
    }

    if (a4)
    {
      *a4 = *(result + 12);
    }

    if (a5)
    {
      *a5 = *(result + 16);
    }

    return 1;
  }

  return result;
}

uint64_t EVP_PBE_alg_add_type(int a1, int a2, int a3, int a4, uint64_t a5)
{
  if (pbe_algs || (pbe_algs = sk_new(pbe_cmp)) != 0)
  {
    v10 = malloc_type_malloc(0x18uLL, 0x108004098BBCF0FuLL);
    if (v10)
    {
      v11 = v10;
      *v10 = a1;
      v10[1] = a2;
      v10[2] = a3;
      v10[3] = a4;
      *(v10 + 2) = a5;
      if (sk_push(pbe_algs, v10))
      {
        return 1;
      }

      free(v11);
      v13 = 244;
    }

    else
    {
      v13 = 233;
    }
  }

  else
  {
    v13 = 227;
  }

  ERR_put_error(6, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/evp_pbe.c", v13);
  return 0;
}

uint64_t pbe_cmp(int **a1, int **a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = **a2;
  result = (v3 - v4);
  if (v3 == v4)
  {
    return (v2[1] - (*a2)[1]);
  }

  return result;
}

int EVP_PBE_alg_add(int nid, const EVP_CIPHER *cipher, const EVP_MD *md, EVP_PBE_KEYGEN *keygen)
{
  if (cipher)
  {
    v7 = EVP_CIPHER_nid(cipher);
    if (md)
    {
LABEL_3:
      v8 = EVP_MD_type(md);
      goto LABEL_6;
    }
  }

  else
  {
    v7 = -1;
    if (md)
    {
      goto LABEL_3;
    }
  }

  v8 = -1;
LABEL_6:

  return EVP_PBE_alg_add_type(0, nid, v7, v8, keygen);
}

uint64_t pbe2_cmp_BSEARCH_CMP_FN(int *a1, _DWORD *a2)
{
  v3 = *a1;
  result = (*a1 - *a2);
  if (v3 == *a2)
  {
    return (a1[1] - a2[1]);
  }

  return result;
}

void DES_set_odd_parity(DES_cblock *key)
{
  for (i = 0; i != 8; ++i)
  {
    (*key)[i] = odd_parity[(*key)[i]];
  }
}

int DES_check_key_parity(const_DES_cblock *key)
{
  v1 = 0;
  while ((*key)[v1] == odd_parity[(*key)[v1]])
  {
    if (++v1 == 8)
    {
      return 1;
    }
  }

  return 0;
}

int DES_is_weak_key(const_DES_cblock *key)
{
  v1 = &weak_keys;
  v2 = 16;
  while (*v1 != *key)
  {
    ++v1;
    if (!--v2)
    {
      return 0;
    }
  }

  return 1;
}

int DES_set_key(const_DES_cblock *key, DES_key_schedule *schedule)
{
  if (DES_check_key)
  {

    return DES_set_key_checked(key, schedule);
  }

  else
  {
    DES_set_key_unchecked(key, schedule);
    return 0;
  }
}

int DES_set_key_checked(const_DES_cblock *key, DES_key_schedule *schedule)
{
  for (i = 0; i != 8; ++i)
  {
    if ((*key)[i] != odd_parity[(*key)[i]])
    {
      return -1;
    }
  }

  v3 = &weak_keys;
  v4 = 16;
  while (*v3 != *key)
  {
    ++v3;
    if (!--v4)
    {
      DES_set_key_unchecked(key, schedule);
      return 0;
    }
  }

  return -2;
}

void DES_set_key_unchecked(const_DES_cblock *key, DES_key_schedule *schedule)
{
  v2 = 0;
  v3 = *&(*key)[4];
  v4 = (*key ^ (v3 >> 4)) & 0xF0F0F0F;
  v5 = ((v4 ^ *key ^ ((v4 ^ *key) << 18)) & 0xCCCC0000 | (((v4 ^ *key ^ ((v4 ^ *key) << 18)) & 0xCCCC0000) >> 18)) ^ v4 ^ *key;
  v6 = ((v3 ^ (16 * v4) ^ ((v3 ^ (16 * v4)) << 18)) & 0xCCCC0000 | (((v3 ^ (16 * v4) ^ ((v3 ^ (16 * v4)) << 18)) & 0xCCCC0000) >> 18)) ^ v3 ^ (16 * v4);
  v7 = (v5 ^ (v6 >> 1)) & 0x55555555;
  v8 = v7 ^ v5;
  v9 = v6 ^ (2 * v7);
  v10 = (v9 ^ (v8 >> 8)) & 0xFF00FF;
  v11 = v10 ^ v9;
  v12 = v8 ^ (v10 << 8);
  v13 = (v12 ^ (v11 >> 1)) & 0x55555555;
  v14 = v13 ^ v12;
  v15 = (v14 >> 4) & 0xF000000 | (v11 ^ (2 * v13)) & 0xFF00 | ((v11 ^ (2 * v13)) << 16) | ((v11 ^ (2 * v13)) >> 16);
  do
  {
    if ((0x8103uLL >> v2))
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    v17 = (v14 & 0xFFFFFFF) >> v16;
    if ((0x8103uLL >> v2))
    {
      v18 = 27;
    }

    else
    {
      v18 = 26;
    }

    v19 = v15 >> v16;
    v14 = v17 | (v14 << v18);
    v20 = v19 | (v15 << v18);
    v15 = v20 & 0xFFFFFFF;
    v21 = des_skb[((v17 >> 7) & 0x3C | (v17 >> 6)) + 64] | des_skb[v17 & 0x3F] | des_skb[((v17 >> 14) & 0x30 | (v17 >> 13) & 0xF) + 128] | des_skb[((v17 >> 21) & 6 | (v17 >> 20) & 1 | (v14 >> 22) & 0x38) + 192];
    v22 = des_skb[((v19 >> 8) & 0x3C | (v19 >> 7) & 3) + 320] | des_skb[(v19 & 0x3F) + 256] | des_skb[((v19 >> 15) & 0x3F) + 384] | des_skb[((v20 >> 22) & 0x30 | (v19 >> 21) & 0xF) + 448];
    HIDWORD(v23) = v21 | (v22 << 16);
    LODWORD(v23) = v22 << 16;
    schedule->ks[0].deslong[0] = v23 >> 30;
    schedule->ks[0].deslong[1] = __PAIR64__(v22 & 0x3FF0000 | HIWORD(v21), v22) >> 26;
    schedule = (schedule + 8);
    ++v2;
  }

  while (v2 != 16);
}

uint64_t bn2binpad(const BIGNUM *a1, char *a2, uint64_t a3, int a4)
{
  v8 = BN_num_bits(a1);
  v9 = v8 + 7;
  if (v8 < -7)
  {
    v9 = v8 + 14;
  }

  v10 = (v9 >> 3);
  if (a3 == -1)
  {
    a3 = v10;
  }

  else if (v10 > a3)
  {
    v22 = *a1;
    bn_correct_top(&v22);
    v11 = BN_num_bits(&v22);
    v12 = v11 + 7;
    if (v11 < -7)
    {
      v12 = v11 + 14;
    }

    if (a3 < v12 >> 3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  dmax = a1->dmax;
  if (!dmax)
  {
    explicit_bzero(a2, a3);
  }

  if (a3)
  {
    v14 = 0;
    v15 = a3;
    if (a4)
    {
      v16 = 0;
    }

    else
    {
      v16 = a3;
    }

    v17 = &a2[v16];
    v18 = 8 * dmax;
    v19 = -8 * a1->top;
    do
    {
      if (a4)
      {
        v20 = v17;
      }

      else
      {
        v20 = v17 - 1;
      }

      if (a4)
      {
        ++v17;
      }

      else
      {
        --v17;
      }

      *v20 = (v19 >> 63) & (*(a1->d + (v14 & 0xFFFFFFFFFFFFFFF8)) >> (8 * (v14 & 7u)));
      v14 += (v14 - v18 + 1) >> 63;
      ++v19;
      --v15;
    }

    while (v15);
  }

  return a3;
}

uint64_t BN_bn2binpad(const BIGNUM *a1, char *a2, uint64_t a3)
{
  if ((a3 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return bn2binpad(a1, a2, a3, 0);
  }
}

BIGNUM *__cdecl BN_bin2bn(const unsigned __int8 *s, int len, BIGNUM *ret)
{
  if (len < 0)
  {
    return 0;
  }

  v3 = ret;
  v4 = len;
  if (ret)
  {
    v6 = 0;
  }

  else
  {
    v6 = BN_new();
    v3 = v6;
    if (!v6)
    {
      return v3;
    }
  }

  if (!v4)
  {
    v3->top = 0;
    return v3;
  }

  v7 = ((v4 - 1) >> 3) + 1;
  if (!bn_wexpand(v3, v7))
  {
    BN_free(v6);
    return 0;
  }

  v8 = 0;
  v9 = (v4 - 1) & 7;
  v3->top = v7;
  v3->neg = 0;
  do
  {
    v10 = *s++;
    v8 = v10 | (v8 << 8);
    if (v9)
    {
      --v9;
    }

    else
    {
      v3->d[--v7] = v8;
      v9 = 7;
      v8 = 0;
    }

    --v4;
  }

  while (v4);
  bn_correct_top(v3);
  return v3;
}

uint64_t BN_bn2lebinpad(const BIGNUM *a1, char *a2, uint64_t a3)
{
  if ((a3 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return bn2binpad(a1, a2, a3, 1);
  }
}

uint64_t BN_lebin2bn(uint64_t a1, int a2, uint64_t a3)
{
  if (a3)
  {
    v5 = a3;
    v6 = 0;
  }

  else
  {
    v6 = BN_new();
    v5 = v6;
    if (!v6)
    {
      return v5;
    }
  }

  v7 = a1 + a2;
  if (a2 < 1)
  {
    if (!a2)
    {
LABEL_18:
      *(v5 + 8) = 0;
      return v5;
    }
  }

  else
  {
    v8 = a1 + a2;
    while (!*--v8)
    {
      v7 = v8;
      v10 = __OFSUB__(a2--, 1);
      if ((a2 < 0) ^ v10 | (a2 == 0))
      {
        goto LABEL_18;
      }
    }
  }

  v11 = ((a2 - 1) >> 3) + 1;
  if (bn_wexpand(v5, v11))
  {
    v12 = 0;
    *(v5 + 8) = v11;
    *(v5 + 16) = 0;
    v13 = (a2 - 1) & 7;
    v14 = (v7 - 1);
    do
    {
      v15 = *v14--;
      v12 = v15 | (v12 << 8);
      if (v13)
      {
        --v13;
      }

      else
      {
        *(*v5 + 8 * --v11) = v12;
        v13 = 7;
        v12 = 0;
      }

      --a2;
    }

    while (a2);
    bn_correct_top(v5);
  }

  else
  {
    BN_free(v6);
    return 0;
  }

  return v5;
}

uint64_t BN_asc2bn(BIGNUM **a, uint64_t a2)
{
  v2 = a2;
  if (*a2 == 45)
  {
    ++a2;
  }

  if (*a2 == 48 && (*(a2 + 1) | 0x20) == 0x78)
  {
    if (!BN_hex2bn(a, (a2 + 2)))
    {
      return 0;
    }
  }

  else if (!BN_dec2bn(a, a2))
  {
    return 0;
  }

  if (*v2 != 45)
  {
    return 1;
  }

  v5 = *a;
  v4 = 1;
  BN_set_negative(v5, 1);
  return v4;
}

int BN_hex2bn(BIGNUM **a, const char *str)
{
  if (!str)
  {
    return 0;
  }

  v2 = *str;
  if (*str)
  {
    v4 = 0;
    v5 = 0;
    v6 = v2 == 45 ? str + 1 : str;
    v7 = v2 == 45;
    while ((*(MEMORY[0x277D85DE0] + 4 * *v6 + 60) & 0x10000) != 0)
    {
      ++v6;
      --v5;
      v4 += 4;
      if (v5 == -536870912)
      {
        return 0;
      }
    }

    v2 = v7 - v5;
    if (a)
    {
      v9 = *a;
      if (*a)
      {
        BN_zero(*a);
      }

      else
      {
        v9 = BN_new();
        if (!v9)
        {
          return 0;
        }
      }

      if (bn_expand(v9, v4))
      {
        if (v5)
        {
          v10 = 0;
          v11 = -v5;
          d = v9->d;
          v13 = (~v5 >> 4) + 1;
          do
          {
            v14 = 0;
            v15 = v11 - 16;
            if (v11 >= 0x10)
            {
              v16 = 16;
            }

            else
            {
              v16 = v11;
            }

            v17 = v16 + 1;
            v18 = &v6[-v16];
            do
            {
              v20 = *v18++;
              v19 = v20;
              v21 = v20 - 48;
              v22 = v20 - 97;
              v23 = v20 - 55;
              if ((v20 - 65) >= 6)
              {
                v24 = 0;
              }

              else
              {
                v24 = v23;
              }

              LODWORD(v25) = v19 - 87;
              if (v22 > 5)
              {
                LODWORD(v25) = v24;
              }

              if (v21 <= 9)
              {
                v25 = v21;
              }

              else
              {
                v25 = v25;
              }

              v14 = v25 | (16 * v14);
              --v17;
            }

            while (v17 > 1);
            d[v10] = v14;
            v6 -= 16;
            ++v10;
            v11 = v15;
          }

          while (v10 != v13);
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v9->top = v13;
        bn_correct_top(v9);
        BN_set_negative(v9, v7);
        *a = v9;
        return v2;
      }

      if (!*a)
      {
        BN_free(v9);
      }

      return 0;
    }
  }

  return v2;
}

int BN_dec2bn(BIGNUM **a, const char *str)
{
  if (!str)
  {
    return 0;
  }

  v2 = *str;
  if (*str)
  {
    v4 = 0;
    v5 = 0;
    v6 = v2 == 45 ? str + 1 : str;
    v7 = v2 == 45;
    while (v6[v5] - 48 <= 9)
    {
      ++v5;
      v4 += 4;
      if (v5 == 0x20000000)
      {
        return 0;
      }
    }

    v2 = v7 + v5;
    if (a)
    {
      v9 = *a;
      if (*a)
      {
        BN_zero(*a);
      }

      else
      {
        v9 = BN_new();
        if (!v9)
        {
          return 0;
        }
      }

      if (bn_expand(v9, v4))
      {
        v10 = *v6;
        if (*v6)
        {
          v11 = 0;
          v12 = 19 * (v5 / 0x13) - v5 + 19;
          if (19 * (v5 / 0x13) == v5)
          {
            v12 = 0;
          }

          v13 = (v6 + 1);
          do
          {
            v11 = 10 * v11 + v10 - 48;
            if (++v12 == 19)
            {
              if (!BN_mul_word(v9, 0x8AC7230489E80000) || !BN_add_word(v9, v11))
              {
                goto LABEL_26;
              }

              v11 = 0;
              v12 = 0;
            }

            v14 = *v13++;
            v10 = v14;
          }

          while (v14);
        }

        bn_correct_top(v9);
        BN_set_negative(v9, v7);
        *a = v9;
        return v2;
      }

LABEL_26:
      if (!*a)
      {
        BN_free(v9);
      }

      return 0;
    }
  }

  return v2;
}

char *__cdecl BN_bn2dec(const BIGNUM *a)
{
  v14 = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  if (CBB_init(v10, 0))
  {
    v2 = BN_dup(a);
    v3 = v2;
    if (v2)
    {
      if (BN_is_zero(v2))
      {
LABEL_4:
        if (CBB_finish(v10, &v15, &v14) && v14 <= 0xFFFFFFFFFFFFFFFCLL && CBB_init(v10, v14 + 3) && (!BN_is_negative(a) || CBB_add_u8(v10, 0x2DuLL)))
        {
          CBS_init(v9, v15, v14);
          if (CBS_len(v9))
          {
            if (CBS_get_last_u8(v9, &v11))
            {
              LOBYTE(v4) = 1;
              do
              {
                v4 = v4 & (v11 == 48);
                if (v4 == 1)
                {
                  if (!CBS_len(v9))
                  {
                    goto LABEL_27;
                  }
                }

                else
                {
                  if (!CBB_add_u8(v10, v11))
                  {
                    break;
                  }

                  if (!CBS_len(v9))
                  {
                    goto LABEL_28;
                  }
                }
              }

              while (CBS_get_last_u8(v9, &v11));
            }
          }

          else
          {
LABEL_27:
            if (CBB_add_u8(v10, 0x30uLL))
            {
LABEL_28:
              if (CBB_add_u8(v10, 0))
              {
                CBB_finish(v10, &v13, &v12);
              }
            }
          }
        }
      }

      else
      {
LABEL_21:
        v6 = BN_div_word(v3, 0x8AC7230489E80000);
        if (v6 != -1)
        {
          v7 = 19;
          while (1)
          {
            v8 = v6 / 0xA;
            if (!CBB_add_u8(v10, (v6 % 0xA) | 0x30))
            {
              break;
            }

            v6 = v8;
            if (!--v7)
            {
              if (!BN_is_zero(v3))
              {
                goto LABEL_21;
              }

              goto LABEL_4;
            }
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  BN_free(v3);
  CBB_cleanup(v10);
  freezero(v15, v14);
  return v13;
}

char *__cdecl BN_bn2hex(const BIGNUM *a)
{
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  if (CBB_init(v8, 0) && (!BN_is_negative(a) || CBB_add_u8(v8, 0x2DuLL)) && (!BN_is_zero(a) || CBB_add_u8(v8, 0x30uLL)))
  {
    top = a->top;
    if (top >= 1)
    {
      v3 = 0;
      do
      {
        v4 = top--;
        v5 = a->d[top];
        for (i = 56; i != -8; i -= 8)
        {
          if (v3 || (v5 >> i))
          {
            if (!CBB_add_u8(v8, hex_digits[(v5 >> i) >> 4]) || !CBB_add_u8(v8, hex_digits[(v5 >> i) & 0xF]))
            {
              goto LABEL_19;
            }

            v3 = 1;
          }

          else
          {
            v3 = 0;
          }
        }
      }

      while (v4 >= 2);
    }

    if (CBB_add_u8(v8, 0))
    {
      CBB_finish(v8, &v10, &v9);
    }
  }

LABEL_19:
  CBB_cleanup(v8);
  return v10;
}

int BN_bn2mpi(const BIGNUM *a, unsigned __int8 *to)
{
  v4 = BN_num_bits(a);
  v5 = v4 + 7;
  if (v4 < -7)
  {
    v5 = v4 + 14;
  }

  v6 = v5 >> 3;
  v8 = (v4 & 7) == 0 && v4 > 0;
  if (to)
  {
    *to = bswap32(v6 + v8);
    if (v8)
    {
      to[4] = 0;
    }

    v6 = bn2binpad(a, &to[v8 | 4], 0xFFFFFFFFLL, 0);
    if (a->neg)
    {
      to[4] |= 0x80u;
    }
  }

  if (v8)
  {
    v9 = 5;
  }

  else
  {
    v9 = 4;
  }

  return v9 + v6;
}

BIGNUM *__cdecl BN_mpi2bn(const unsigned __int8 *s, int len, BIGNUM *ret)
{
  if (len <= 3)
  {
    v3 = 106;
    v4 = 580;
LABEL_11:
    ERR_put_error(3, 4095, v3, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_convert.c", v4);
    return 0;
  }

  v6 = bswap32(*s);
  if (v6 + 4 != len)
  {
    v3 = 104;
    v4 = 586;
    goto LABEL_11;
  }

  v8 = ret;
  if (ret || (v8 = BN_new()) != 0)
  {
    if (!v6)
    {
      v8->neg = 0;
      v8->top = 0;
      return v8;
    }

    v9 = s[4];
    if (!BN_bin2bn(s + 4, v6, v8))
    {
      if (!ret)
      {
        BN_free(v8);
      }

      return 0;
    }

    BN_set_negative(v8, v9 >> 7);
    if ((v9 & 0x80) != 0)
    {
      v10 = BN_num_bits(v8);
      BN_clear_bit(v8, v10 - 1);
    }
  }

  return v8;
}

int BN_print_fp(FILE *fp, const BIGNUM *a)
{
  v4 = BIO_s_file();
  v5 = BIO_new(v4);
  if (v5)
  {
    v6 = v5;
    BIO_ctrl(v5, 106, 0, fp);
    v7 = BN_print(v6, a);
    BIO_free(v6);
    LODWORD(v5) = v7;
  }

  return v5;
}

int BN_print(BIO *fp, const BIGNUM *a)
{
  if (a->neg && BIO_write(fp, "-", 1) != 1 || BN_is_zero(a) && BIO_write(fp, "0", 1) != 1)
  {
    return 0;
  }

  top = a->top;
  if (top < 1)
  {
    return 1;
  }

  v5 = 0;
  do
  {
    v6 = top--;
    for (i = 60; i != -4; i -= 4)
    {
      v8 = (a->d[top] >> i) & 0xF;
      if (v5 || v8)
      {
        v5 = 1;
        if (BIO_write(fp, &hex_digits[v8], 1) != 1)
        {
          return 0;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    result = 1;
  }

  while (v6 >= 2);
  return result;
}

uint64_t bn_isqrt(BIGNUM *a1, _BOOL4 *a2, const BIGNUM *a3, BN_CTX *a4)
{
  if (!(a1 | a2))
  {
    v5 = 67;
    v6 = 54;
LABEL_5:
    ERR_put_error(3, 4095, v5, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_isqrt.c", v6);
    v10 = 0;
LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  if (BN_is_negative(a3))
  {
    v5 = 115;
    v6 = 59;
    goto LABEL_5;
  }

  v10 = a4;
  if (!a4)
  {
    v10 = BN_CTX_new();
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  BN_CTX_start(v10);
  v13 = BN_CTX_get(v10);
  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v13;
  v15 = BN_CTX_get(v10);
  if (!v15)
  {
    goto LABEL_6;
  }

  v16 = v15;
  if (BN_is_zero(a3))
  {
    BN_zero(v14);
    v17 = 1;
    if (a2)
    {
LABEL_16:
      *a2 = v17;
    }
  }

  else
  {
    if (!BN_one(v14))
    {
      goto LABEL_6;
    }

    v18 = BN_num_bits(a3);
    v19 = v18 - 1 + ((v18 - 1) >> 31);
    if (!BN_set_word(v16, v19 >> 1))
    {
      goto LABEL_6;
    }

    v20 = v19 >> 1;
    v21 = BN_num_bits(v16);
    v22 = 0;
    while (1)
    {
      v23 = __OFSUB__(v21--, 1);
      if (v21 < 0 != v23)
      {
        break;
      }

      if (BN_rshift(v16, a3, ((2 * v20) | 1) - v22 - (v20 >> v21)))
      {
        if (BN_div_ct(v16, 0, v16, v14, v10))
        {
          if (BN_lshift(v14, v14, (v20 >> v21) + ~v22))
          {
            v22 = v20 >> v21;
            if (BN_add(v14, v14, v16))
            {
              continue;
            }
          }
        }
      }

      goto LABEL_6;
    }

    if (!BN_sqr(v16, v14, v10))
    {
      goto LABEL_6;
    }

    v24 = BN_cmp(v16, a3);
    if (v24 >= 1 && !BN_sub_word(v14, 1uLL))
    {
      goto LABEL_6;
    }

    v17 = v24 == 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  if (a1 && !bn_copy(a1, v14))
  {
    goto LABEL_6;
  }

  v11 = 1;
LABEL_7:
  BN_CTX_end(v10);
  if (v10 != a4)
  {
    BN_CTX_free(v10);
  }

  return v11;
}

uint64_t bn_is_perfect_square(_BOOL4 *a1, const BIGNUM *a2, BN_CTX *a3)
{
  *a1 = 0;
  if (BN_is_negative(a2))
  {
    return 1;
  }

  if (a2->top)
  {
    v6 = *a2->d & 0x3F;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  if ((0xFDFDFDEDFDFCFDECLL >> v6))
  {
    return 1;
  }

  v7 = BN_mod_word(a2, 0xAFF5uLL);
  if (v7 == -1)
  {
    return 0;
  }

  if ((0x7BFDB7CFEDBAFD6CuLL >> (v7 % 0x3F)) & 1) != 0 || !is_square_mod_65[v7 % 0x41] || ((0x5C4uLL >> (v7 % 0xB)))
  {
    return 1;
  }

  return bn_isqrt(0, a1, a2, a3);
}

uint64_t ERR_load_CMS_strings()
{
  if (!ERR_func_error_string(CMS_str_functs))
  {
    ERR_load_strings(46, &CMS_str_functs);
    ERR_load_strings(46, &CMS_str_reasons);
  }

  return 1;
}

int SHA1_Update(SHA_CTX *c, const void *data, size_t len)
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
      sha1_block_data_order(c, c->data, 1);
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
      sha1_block_data_order(c, v4, v3 >> 6);
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

uint64_t sha1_block_data_order(int *a1, unsigned int *a2, uint64_t a3)
{
  v3 = a1[3];
  v4 = a1[4];
  v6 = a1[1];
  v5 = a1[2];
  v7 = *a1;
  do
  {
    v561 = v6;
    v562 = v5;
    v560 = v3;
    v557 = v7;
    v558 = v4;
    v563 = a2;
    v559 = a3;
    v8 = v7;
    HIDWORD(v10) = v7;
    LODWORD(v10) = v7;
    v9 = v10 >> 27;
    v11 = v3 & ~v6;
    v12 = bswap32(*a2);
    HIDWORD(v10) = v6;
    LODWORD(v10) = v6;
    v13 = v10 >> 2;
    v14 = v8 & __ROR4__(v6, 2);
    v15 = bswap32(a2[1]);
    v16 = v4 + 1518500249 + v9 + (v562 & v6 | v11) + v12;
    HIDWORD(v10) = v16;
    LODWORD(v10) = v16;
    v17 = v10 >> 27;
    HIDWORD(v10) = v8;
    LODWORD(v10) = v8;
    v18 = v10 >> 2;
    v19 = v16 & __ROR4__(v8, 2);
    v20 = v560 + 1518500249 + (v14 | v562 & ~v8) + v15 + v17;
    HIDWORD(v10) = v20;
    LODWORD(v10) = v20;
    v21 = v10 >> 27;
    HIDWORD(v10) = v16;
    LODWORD(v10) = v16;
    v22 = v10 >> 2;
    v23 = bswap32(a2[2]);
    v24 = bswap32(a2[3]);
    v26 = __PAIR64__(v20, __ROR4__(v16, 2));
    v25 = v20 & v26;
    LODWORD(v26) = v20;
    v27 = v26 >> 2;
    v28 = v562 + 1518500249 + v23 + (v19 | v13 & ~v16) + v21;
    v29 = a2[4];
    v30 = a2[5];
    HIDWORD(v26) = v28;
    LODWORD(v26) = v28;
    v31 = v26 >> 27;
    v33 = __PAIR64__(v28, __ROR4__(v20, 2));
    v32 = v28 & v33;
    v34 = bswap32(v29);
    LODWORD(v33) = v28;
    v35 = v33 >> 2;
    v36 = v24;
    v37 = v13 + 1518500249 + v24 + (v25 | v18 & ~v20) + v31;
    HIDWORD(v33) = v37;
    LODWORD(v33) = v37;
    v38 = v18 + 1518500249 + v34 + (v32 | v22 & ~v28) + (v33 >> 27);
    HIDWORD(v33) = v38;
    LODWORD(v33) = v38;
    v39 = v33 >> 27;
    v41 = __PAIR64__(v37, __ROR4__(v28, 2));
    v40 = v37 & v41;
    LODWORD(v41) = v37;
    v42 = v41 >> 2;
    v44 = __PAIR64__(v38, __ROR4__(v37, 2));
    v43 = v38 & v44;
    v45 = bswap32(v30);
    v46 = v40 | v27 & ~v37;
    LODWORD(v44) = v38;
    v47 = v44 >> 2;
    v48 = v22 + 1518500249 + v45 + v46 + v39;
    HIDWORD(v44) = v48;
    LODWORD(v44) = v48;
    v49 = v44 >> 27;
    v50 = bswap32(v563[6]);
    HIDWORD(v44) = v48;
    LODWORD(v44) = v48;
    v51 = v44 >> 2;
    v52 = v27 + 1518500249 + v50 + (v43 | v35 & ~v38) + v49;
    HIDWORD(v44) = v52;
    LODWORD(v44) = v52;
    v53 = v44 >> 27;
    v54 = __PAIR64__(v52, __ROR4__(v38, 2));
    v549 = v50;
    v553 = bswap32(v563[7]);
    v55 = v48 & v54 | v42 & ~v48;
    LODWORD(v54) = v52;
    v56 = v54 >> 2;
    v57 = v35 + 1518500249 + v553 + v55 + v53;
    HIDWORD(v54) = v57;
    LODWORD(v54) = v57;
    v58 = v54 >> 27;
    v59 = v52 & __ROR4__(v48, 2);
    v61 = __PAIR64__(v57, __ROR4__(v52, 2));
    v60 = v57 & v61;
    LODWORD(v61) = v57;
    v62 = v61 >> 2;
    v63 = bswap32(v563[8]);
    v64 = v42 + 1518500249 + v63 + (v59 | v47 & ~v52) + v58;
    v65 = bswap32(v563[13]);
    HIDWORD(v61) = v64;
    LODWORD(v61) = v64;
    v66 = v61 >> 27;
    HIDWORD(v61) = v23 ^ v12 ^ v63 ^ v65;
    LODWORD(v61) = HIDWORD(v61);
    v67 = v61 >> 31;
    v68 = HIDWORD(v61);
    v70 = __PAIR64__(v64, __ROR4__(v57, 2));
    v69 = v64 & v70;
    v71 = bswap32(v563[9]);
    LODWORD(v70) = v64;
    v72 = v70 >> 2;
    v73 = v47 + 1518500249 + v71 + (v60 | v51 & ~v57) + v66;
    HIDWORD(v70) = v73;
    LODWORD(v70) = v73;
    v74 = v70 >> 27;
    HIDWORD(v70) = v73;
    LODWORD(v70) = v73;
    v75 = v70 >> 2;
    v544 = bswap32(v563[10]);
    v76 = v51 + 1518500249 + v544 + (v69 | v56 & ~v64) + v74;
    HIDWORD(v70) = v76;
    LODWORD(v70) = v76;
    v77 = v70 >> 27;
    v78 = __PAIR64__(v76, __ROR4__(v64, 2));
    v79 = bswap32(v563[11]);
    v80 = v73 & v78 | v62 & ~v73;
    LODWORD(v78) = v76;
    v81 = v78 >> 2;
    v82 = v56 + 1518500249 + v79 + v80 + v77;
    HIDWORD(v78) = v82;
    LODWORD(v78) = v82;
    v83 = v78 >> 27;
    v84 = __PAIR64__(v82, __ROR4__(v73, 2));
    v85 = v76 & v84 | v72 & ~v76;
    LODWORD(v84) = v82;
    v86 = v84 >> 2;
    v536 = bswap32(v563[12]);
    v87 = v62 + 1518500249 + v536 + v85 + v83;
    HIDWORD(v84) = v87;
    LODWORD(v84) = v87;
    v88 = v84 >> 27;
    v89 = v82 & __ROR4__(v76, 2);
    v90 = bswap32(v563[14]);
    v91 = v75 & ~v82;
    v93 = __PAIR64__(v87, __ROR4__(v82, 2));
    v92 = v87 & v93;
    v532 = v65;
    v94 = v72 + 1518500249 + v65 + (v89 | v91);
    LODWORD(v93) = v87;
    v95 = v93 >> 2;
    v96 = v94 + v88;
    v97 = v36;
    v98 = v36 ^ v15 ^ v71 ^ v90;
    HIDWORD(v93) = v96;
    LODWORD(v93) = v96;
    v99 = v93 >> 27;
    HIDWORD(v93) = v98;
    LODWORD(v93) = v98;
    v100 = v93 >> 31;
    HIDWORD(v93) = v96;
    LODWORD(v93) = v96;
    v101 = v93 >> 2;
    v102 = v75 + 1518500249 + v90 + (v92 | v81 & ~v87) + v99;
    HIDWORD(v93) = v102;
    LODWORD(v93) = v102;
    v103 = v93 >> 27;
    v104 = bswap32(v563[15]);
    v105 = v34 ^ v23 ^ v544 ^ v104;
    v107 = __PAIR64__(v105, __ROR4__(v96, 2));
    v106 = v102 & v107;
    LODWORD(v107) = v105;
    v538 = v107 >> 31;
    v541 = v100;
    v108 = v96 & __ROR4__(v87, 2) | v86 & ~v96;
    HIDWORD(v107) = v102;
    LODWORD(v107) = v102;
    v109 = v107 >> 2;
    v110 = v81 + 1518500249 + v104 + v108 + v103;
    HIDWORD(v107) = v110;
    LODWORD(v107) = v110;
    v111 = v107 >> 27;
    v113 = __PAIR64__(v110, __ROR4__(v102, 2));
    v112 = v110 & v113;
    LODWORD(v113) = v110;
    v114 = v113 >> 2;
    v115 = v86 + v67 + 1518500249 + (v106 | v95 & ~v102) + v111;
    HIDWORD(v113) = v115;
    LODWORD(v113) = v115;
    v116 = v113 >> 27;
    v117 = v68;
    LODWORD(v113) = v45 ^ v97 ^ v79 ^ __ROR4__(v68, 31);
    HIDWORD(v113) = v113;
    v118 = v113 >> 31;
    v119 = v113;
    v120 = v115 & __ROR4__(v110, 2);
    v122 = __PAIR64__(v115, __ROR4__(v98, 31));
    v121 = v549 ^ v34 ^ v536 ^ v122;
    LODWORD(v122) = v115;
    v123 = v122 >> 2;
    v124 = v95 + v100 + 1518500249 + (v112 | v101 & ~v110) + v116;
    HIDWORD(v122) = v124;
    LODWORD(v122) = v124;
    v125 = v122 >> 27;
    HIDWORD(v122) = v121;
    LODWORD(v122) = v121;
    v547 = v122 >> 31;
    v126 = v553 ^ v45 ^ v65 ^ __ROR4__(v105, 31);
    v128 = __PAIR64__(v124, __ROR4__(v115, 2));
    v127 = v124 & v128;
    v129 = v120 | v109 & ~v115;
    LODWORD(v128) = v124;
    v130 = v128 >> 2;
    v131 = v101 + v538 + 1518500249 + v129 + v125;
    HIDWORD(v128) = v131;
    LODWORD(v128) = v131;
    v132 = v128 >> 27;
    HIDWORD(v128) = v126;
    LODWORD(v128) = v126;
    v133 = v128 >> 31;
    v134 = v118 + 1518500249 + v109;
    HIDWORD(v128) = v131;
    LODWORD(v128) = v131;
    v135 = v128 >> 2;
    v136 = v134 + (v127 | v114 & ~v124) + v132;
    HIDWORD(v128) = v136;
    LODWORD(v128) = v136;
    v137 = v128 >> 27;
    HIDWORD(v128) = v136;
    LODWORD(v128) = v136;
    v138 = v128 >> 2;
    v139 = v119;
    v141 = v547 + 1859775393 + v114 + (v130 ^ __ROR4__(v115, 2) ^ v131);
    LODWORD(v128) = v63 ^ v549 ^ v90 ^ __ROR4__(v119, 31);
    v140 = v128;
    HIDWORD(v128) = v128;
    v142 = v128 >> 31;
    v143 = v141 + v137;
    v144 = v133;
    v145 = v133 + 1859775393 + v123;
    v146 = v71;
    HIDWORD(v128) = v143;
    LODWORD(v128) = v143;
    v147 = v128 >> 27;
    v149 = __PAIR64__(v143, __ROR4__(v121, 31));
    v148 = v71 ^ v553 ^ v104 ^ v149;
    v150 = v145 + (v135 ^ __ROR4__(v124, 2) ^ v136);
    LODWORD(v149) = v143;
    v151 = v149 >> 2;
    v152 = v150 + v147;
    HIDWORD(v149) = v148;
    LODWORD(v149) = v148;
    v550 = v149 >> 31;
    v154 = __PAIR64__(v152, __ROR4__(v136, 2));
    v153 = v151 ^ v154;
    v155 = v142 + 1859775393 + v130 + (v138 ^ __ROR4__(v131, 2) ^ v143);
    v156 = v550 + 1859775393 + v135;
    LODWORD(v154) = v152;
    v157 = v154 >> 27;
    HIDWORD(v154) = v152;
    LODWORD(v154) = v152;
    v158 = v154 >> 2;
    v159 = v544 ^ v63 ^ __ROR4__(v117, 31) ^ __ROR4__(v126, 31);
    v160 = v155 + v157;
    HIDWORD(v154) = v159;
    LODWORD(v154) = v159;
    v161 = v154 >> 31;
    v162 = v156 + (v153 ^ v152);
    HIDWORD(v154) = v160;
    LODWORD(v154) = v160;
    v163 = v154 >> 27;
    v165 = __PAIR64__(v160, __ROR4__(v143, 2));
    v164 = v158 ^ v165;
    v166 = v162 + v163;
    v167 = v161 + 1859775393 + v138;
    LODWORD(v165) = v160;
    v168 = v165 >> 2;
    v170 = __PAIR64__(v166, __ROR4__(v98, 31));
    v169 = v79 ^ v146 ^ v170;
    LODWORD(v170) = v166;
    v171 = v167 + (v164 ^ v160) + (v170 >> 27);
    LODWORD(v170) = v169 ^ __ROR4__(v140, 31);
    v172 = v170;
    HIDWORD(v170) = v170;
    v173 = v170 >> 31;
    v174 = __PAIR64__(v166, __ROR4__(v152, 2));
    v175 = v168 ^ v174 ^ v166;
    v176 = v173 + 1859775393 + v151;
    LODWORD(v174) = v166;
    v177 = v174 >> 2;
    v178 = v176 + v175;
    LODWORD(v174) = v536 ^ v544 ^ __ROR4__(v105, 31) ^ __ROR4__(v148, 31);
    v179 = v174;
    HIDWORD(v174) = v174;
    v554 = v174 >> 31;
    HIDWORD(v174) = v171;
    LODWORD(v174) = v171;
    v180 = v178 + (v174 >> 27);
    v182 = __PAIR64__(v180, __ROR4__(v160, 2));
    v181 = v177 ^ v182;
    LODWORD(v182) = v180;
    v183 = v182 >> 27;
    v184 = v554 + 1859775393 + v158 + (v181 ^ v171);
    v185 = v139;
    v186 = v532 ^ v79 ^ __ROR4__(v139, 31) ^ __ROR4__(v159, 31);
    v187 = v184 + v183;
    HIDWORD(v182) = v186;
    LODWORD(v182) = v186;
    v188 = v182 >> 31;
    v189 = v188 + 1859775393 + v168;
    HIDWORD(v182) = v171;
    LODWORD(v182) = v171;
    v190 = v182 >> 2;
    v191 = __PAIR64__(v184 + v183, __ROR4__(v166, 2));
    v192 = v189 + (v190 ^ v191 ^ v180);
    LODWORD(v191) = v184 + v183;
    v193 = v192 + (v191 >> 27);
    v194 = v90 ^ v536 ^ __ROR4__(v121, 31) ^ __ROR4__(v172, 31);
    HIDWORD(v191) = v194;
    LODWORD(v191) = v194;
    v195 = (v191 >> 31) + 1859775393 + v177;
    HIDWORD(v191) = v180;
    LODWORD(v191) = v180;
    v196 = v191 >> 2;
    v197 = __PAIR64__(v193, __ROR4__(v171, 2));
    v198 = v195 + (v196 ^ v197 ^ v187);
    LODWORD(v197) = v193;
    v200 = v198 + (v197 >> 27);
    LODWORD(v197) = v104 ^ v532 ^ __ROR4__(v126, 31) ^ __ROR4__(v179, 31);
    v199 = v197;
    HIDWORD(v197) = v197;
    v201 = v197 >> 31;
    v202 = v201 + 1859775393 + v190;
    HIDWORD(v197) = v187;
    LODWORD(v197) = v187;
    v203 = v197 >> 2;
    v204 = __PAIR64__(v200, __ROR4__(v180, 2));
    v205 = v202 + (v203 ^ v204 ^ v193);
    LODWORD(v204) = v200;
    v206 = v205 + (v204 >> 27);
    v207 = v117;
    LODWORD(v204) = v90 ^ __ROR4__(v117, 31) ^ __ROR4__(v140, 31) ^ __ROR4__(v186, 31);
    v208 = v204;
    HIDWORD(v204) = v204;
    v533 = v204 >> 31;
    HIDWORD(v204) = v193;
    LODWORD(v204) = v193;
    v209 = v204 >> 2;
    v210 = v533 + 1859775393 + v196 + (v209 ^ __ROR4__(v187, 2) ^ v200);
    v212 = __PAIR64__(v206, __ROR4__(v98, 31));
    v211 = v104 ^ v212;
    LODWORD(v212) = v206;
    v213 = v211 ^ __ROR4__(v148, 31) ^ __ROR4__(v194, 31);
    v214 = v210 + (v212 >> 27);
    HIDWORD(v212) = v213;
    LODWORD(v212) = v213;
    v215 = (v212 >> 31) + 1859775393 + v203;
    HIDWORD(v212) = v200;
    LODWORD(v212) = v200;
    v216 = v212 >> 2;
    v217 = __PAIR64__(v214, __ROR4__(v193, 2));
    v218 = v215 + (v216 ^ v217 ^ v206);
    LODWORD(v217) = v214;
    v219 = v218 + (v217 >> 27);
    LODWORD(v217) = v538 ^ __ROR4__(v207, 31) ^ __ROR4__(v159, 31) ^ __ROR4__(v199, 31);
    v220 = v217;
    HIDWORD(v217) = v217;
    v545 = v217 >> 31;
    HIDWORD(v217) = v206;
    LODWORD(v217) = v206;
    v221 = v217 >> 2;
    v222 = __PAIR64__(v219, __ROR4__(v200, 2));
    v223 = v545 + 1859775393 + v209 + (v221 ^ v222 ^ v214);
    LODWORD(v222) = v219;
    v224 = v541 ^ __ROR4__(v185, 31) ^ __ROR4__(v172, 31) ^ __ROR4__(v208, 31);
    v225 = v223 + (v222 >> 27);
    HIDWORD(v222) = v224;
    LODWORD(v222) = v224;
    v226 = v222 >> 31;
    v227 = v226 + 1859775393 + v216;
    HIDWORD(v222) = v214;
    LODWORD(v222) = v214;
    v228 = v222 >> 2;
    v229 = __PAIR64__(v225, __ROR4__(v206, 2));
    v230 = v227 + (v228 ^ v229 ^ v219);
    LODWORD(v229) = v225;
    v231 = v230 + (v229 >> 27);
    LODWORD(v229) = v538 ^ __ROR4__(v121, 31) ^ __ROR4__(v179, 31) ^ __ROR4__(v213, 31);
    v232 = v229;
    HIDWORD(v229) = v229;
    v233 = (v229 >> 31) + 1859775393 + v221;
    HIDWORD(v229) = v219;
    LODWORD(v229) = v219;
    v234 = v229 >> 2;
    v235 = __PAIR64__(v231, __ROR4__(v214, 2));
    v236 = v233 + (v234 ^ v235 ^ v225);
    LODWORD(v235) = v231;
    v237 = v144;
    v239 = v236 + (v235 >> 27);
    LODWORD(v235) = v144 ^ __ROR4__(v185, 31) ^ __ROR4__(v186, 31) ^ __ROR4__(v220, 31);
    v238 = v235;
    HIDWORD(v235) = v235;
    v542 = v235 >> 31;
    HIDWORD(v235) = v225;
    LODWORD(v235) = v225;
    v240 = v235 >> 2;
    v241 = __PAIR64__(v239, __ROR4__(v219, 2));
    v242 = v542 + 1859775393 + v228 + (v240 ^ v241 ^ v231);
    LODWORD(v241) = v239;
    v243 = v242 + (v241 >> 27);
    LODWORD(v241) = v547 ^ __ROR4__(v140, 31) ^ __ROR4__(v194, 31) ^ __ROR4__(v224, 31);
    v244 = v241;
    HIDWORD(v241) = v241;
    v534 = v241 >> 31;
    HIDWORD(v241) = v231;
    LODWORD(v241) = v231;
    v245 = v241 >> 2;
    v247 = __PAIR64__(v243, __ROR4__(v148, 31));
    v246 = v237 ^ v247;
    LODWORD(v247) = v243;
    v249 = v534 + 1859775393 + v234 + (v245 ^ __ROR4__(v225, 2) ^ v239) + (v247 >> 27);
    LODWORD(v247) = v246 ^ __ROR4__(v199, 31) ^ __ROR4__(v232, 31);
    v248 = v247;
    HIDWORD(v247) = v247;
    v250 = (v247 >> 31) + 1859775393 + v240;
    HIDWORD(v247) = v239;
    LODWORD(v247) = v239;
    v251 = v247 >> 2;
    v252 = __PAIR64__(v249, __ROR4__(v231, 2));
    v253 = v250 + (v251 ^ v252 ^ v243);
    LODWORD(v252) = v249;
    v254 = v253 + (v252 >> 27);
    LODWORD(v252) = v161 ^ __ROR4__(v140, 31) ^ __ROR4__(v208, 31) ^ __ROR4__(v238, 31);
    v255 = v252;
    HIDWORD(v252) = v252;
    v256 = v252 >> 31;
    HIDWORD(v252) = v243;
    LODWORD(v252) = v243;
    v257 = v252 >> 2;
    v258 = __PAIR64__(v254, __ROR4__(v239, 2));
    v259 = v256 + 1859775393 + v245 + (v257 ^ v258 ^ v249);
    LODWORD(v258) = v254;
    v260 = v550 ^ __ROR4__(v172, 31) ^ __ROR4__(v213, 31) ^ __ROR4__(v244, 31);
    v261 = v259 + (v258 >> 27);
    HIDWORD(v258) = v260;
    LODWORD(v258) = v260;
    v539 = v258 >> 31;
    v262 = v539 + 1859775393 + v251;
    HIDWORD(v258) = v249;
    LODWORD(v258) = v249;
    v263 = v258 >> 2;
    v264 = __PAIR64__(v261, __ROR4__(v243, 2));
    v265 = v262 + (v263 ^ v264 ^ v254);
    LODWORD(v264) = v261;
    v266 = v265 + (v264 >> 27);
    v267 = v161 ^ __ROR4__(v179, 31) ^ __ROR4__(v220, 31) ^ __ROR4__(v248, 31);
    v268 = __PAIR64__(v267, __ROR4__(v254, 2));
    v269 = (v261 | __ROR4__(v254, 2)) & __ROR4__(v249, 2) | v261 & v268;
    LODWORD(v268) = v267;
    v270 = (v268 >> 31) - 1894007588;
    HIDWORD(v268) = v254;
    LODWORD(v268) = v254;
    v271 = v268 >> 2;
    v272 = v270 + v257;
    v274 = __PAIR64__(v266, __ROR4__(v224, 31));
    v273 = v188 ^ __ROR4__(v172, 31) ^ v274;
    LODWORD(v274) = v266;
    v275 = v274 >> 27;
    v276 = v272 + v269;
    v277 = v273 ^ __ROR4__(v255, 31);
    v279 = __PAIR64__(v277, __ROR4__(v254, 2));
    v278 = (v266 | __ROR4__(v261, 2)) & v279;
    LODWORD(v279) = v277;
    v551 = v279 >> 31;
    v280 = v276 + v275;
    v281 = __PAIR64__(v276 + v275, __ROR4__(v261, 2));
    v282 = v278 | v266 & v281;
    LODWORD(v281) = v280;
    v283 = v554 ^ __ROR4__(v194, 31) ^ __ROR4__(v232, 31) ^ __ROR4__(v260, 31);
    v284 = v551 - 1894007588 + v263 + v282 + (v281 >> 27);
    v285 = __PAIR64__(v283, __ROR4__(v261, 2));
    v286 = (v280 | __ROR4__(v266, 2)) & v285 | v280 & __ROR4__(v266, 2);
    LODWORD(v285) = v283;
    v287 = v285 >> 31;
    HIDWORD(v285) = v261;
    LODWORD(v285) = v261;
    v288 = v285 >> 2;
    HIDWORD(v285) = v284;
    LODWORD(v285) = v284;
    v289 = v287 - 1894007588 + v271 + v286 + (v285 >> 27);
    v290 = v188 ^ __ROR4__(v199, 31) ^ __ROR4__(v238, 31) ^ __ROR4__(v267, 31);
    v291 = __PAIR64__(v290, __ROR4__(v266, 2));
    v292 = (v284 | __ROR4__(v280, 2)) & v291 | v284 & __ROR4__(v280, 2);
    LODWORD(v291) = v290;
    v293 = v291 >> 31;
    HIDWORD(v291) = v266;
    LODWORD(v291) = v266;
    v294 = v291 >> 2;
    v295 = v293 - 1894007588 + v288;
    HIDWORD(v291) = v289;
    LODWORD(v291) = v289;
    v296 = v291 >> 27;
    LODWORD(v291) = v533 ^ __ROR4__(v194, 31) ^ __ROR4__(v244, 31) ^ __ROR4__(v277, 31);
    v297 = v291;
    HIDWORD(v291) = v291;
    v555 = v291 >> 31;
    v298 = v295 + v292 + v296;
    v299 = __PAIR64__(v280, __ROR4__(v280, 2));
    v300 = (v289 | __ROR4__(v284, 2)) & v299 | v289 & __ROR4__(v284, 2);
    LODWORD(v299) = v280;
    v301 = v299 >> 2;
    HIDWORD(v299) = v298;
    LODWORD(v299) = v298;
    v302 = v555 - 1894007588 + v294 + v300 + (v299 >> 27);
    v303 = v201 ^ __ROR4__(v213, 31) ^ __ROR4__(v248, 31) ^ __ROR4__(v283, 31);
    v304 = __PAIR64__(v303, __ROR4__(v284, 2));
    v305 = (v298 | __ROR4__(v289, 2)) & v304 | v298 & __ROR4__(v289, 2);
    LODWORD(v304) = v303;
    v537 = v304 >> 31;
    HIDWORD(v304) = v284;
    LODWORD(v304) = v284;
    v306 = v304 >> 2;
    HIDWORD(v304) = v302;
    LODWORD(v304) = v302;
    v307 = v537 - 1894007588 + v301 + v305 + (v304 >> 27);
    HIDWORD(v304) = v289;
    LODWORD(v304) = v289;
    v308 = v304 >> 2;
    v309 = v533 ^ __ROR4__(v220, 31) ^ __ROR4__(v255, 31) ^ __ROR4__(v290, 31);
    v310 = __PAIR64__(v309, __ROR4__(v298, 2));
    v311 = (v302 | __ROR4__(v298, 2)) & __ROR4__(v289, 2) | v302 & v310;
    LODWORD(v310) = v309;
    v312 = (v310 >> 31) - 1894007588;
    HIDWORD(v310) = v298;
    LODWORD(v310) = v298;
    v313 = v310 >> 2;
    v314 = v312 + v306;
    v316 = __PAIR64__(v307, __ROR4__(v260, 31));
    v315 = v226 ^ __ROR4__(v213, 31) ^ v316;
    LODWORD(v316) = v307;
    v317 = v316 >> 27;
    v318 = v314 + v311;
    v319 = v315 ^ __ROR4__(v297, 31);
    v321 = __PAIR64__(v319, __ROR4__(v298, 2));
    v320 = (v307 | __ROR4__(v302, 2)) & v321;
    LODWORD(v321) = v319;
    v548 = v321 >> 31;
    v322 = v318 + v317;
    v323 = __PAIR64__(v318 + v317, __ROR4__(v302, 2));
    v324 = v320 | v307 & v323;
    LODWORD(v323) = v318 + v317;
    v325 = v545 ^ __ROR4__(v232, 31) ^ __ROR4__(v267, 31) ^ __ROR4__(v303, 31);
    v326 = v548 - 1894007588 + v308 + v324 + (v323 >> 27);
    v327 = __PAIR64__(v325, __ROR4__(v302, 2));
    v328 = (v322 | __ROR4__(v307, 2)) & v327 | v322 & __ROR4__(v307, 2);
    LODWORD(v327) = v325;
    v329 = v327 >> 31;
    HIDWORD(v327) = v302;
    LODWORD(v327) = v302;
    v330 = v327 >> 2;
    HIDWORD(v327) = v326;
    LODWORD(v327) = v326;
    v331 = v329 - 1894007588 + v313 + v328 + (v327 >> 27);
    v332 = v226 ^ __ROR4__(v238, 31) ^ __ROR4__(v277, 31) ^ __ROR4__(v309, 31);
    v333 = __PAIR64__(v332, __ROR4__(v307, 2));
    v334 = (v326 | __ROR4__(v322, 2)) & v333 | v326 & __ROR4__(v322, 2);
    LODWORD(v333) = v332;
    v335 = v333 >> 31;
    HIDWORD(v333) = v307;
    LODWORD(v333) = v307;
    v336 = v333 >> 2;
    v337 = v335 - 1894007588 + v330;
    HIDWORD(v333) = v331;
    LODWORD(v333) = v331;
    v338 = v333 >> 27;
    LODWORD(v333) = v534 ^ __ROR4__(v232, 31) ^ __ROR4__(v283, 31) ^ __ROR4__(v319, 31);
    v339 = v333;
    HIDWORD(v333) = v333;
    v546 = v333 >> 31;
    v340 = v337 + v334 + v338;
    v341 = __PAIR64__(v322, __ROR4__(v322, 2));
    v342 = (v331 | __ROR4__(v326, 2)) & v341 | v331 & __ROR4__(v326, 2);
    LODWORD(v341) = v322;
    v343 = v341 >> 2;
    HIDWORD(v341) = v340;
    LODWORD(v341) = v340;
    v344 = v546 - 1894007588 + v336 + v342 + (v341 >> 27);
    v345 = v542 ^ __ROR4__(v248, 31) ^ __ROR4__(v290, 31) ^ __ROR4__(v325, 31);
    v346 = __PAIR64__(v345, __ROR4__(v326, 2));
    v347 = (v340 | __ROR4__(v331, 2)) & v346 | v340 & __ROR4__(v331, 2);
    LODWORD(v346) = v345;
    v348 = v346 >> 31;
    v349 = v348 - 1894007588 + v343;
    HIDWORD(v346) = v326;
    LODWORD(v346) = v326;
    v350 = v346 >> 2;
    HIDWORD(v346) = v344;
    LODWORD(v346) = v344;
    v351 = v349 + v347 + (v346 >> 27);
    HIDWORD(v346) = v331;
    LODWORD(v346) = v331;
    v352 = v346 >> 2;
    v353 = v534 ^ __ROR4__(v255, 31) ^ __ROR4__(v297, 31) ^ __ROR4__(v332, 31);
    v354 = __PAIR64__(v353, __ROR4__(v340, 2));
    v355 = (v344 | __ROR4__(v340, 2)) & __ROR4__(v331, 2) | v344 & v354;
    LODWORD(v354) = v353;
    v356 = (v354 >> 31) - 1894007588;
    HIDWORD(v354) = v340;
    LODWORD(v354) = v340;
    v357 = v354 >> 2;
    v358 = v356 + v350;
    v360 = __PAIR64__(v351, __ROR4__(v303, 31));
    v359 = v539 ^ __ROR4__(v248, 31) ^ v360;
    LODWORD(v360) = v351;
    v361 = v360 >> 27;
    v362 = v359 ^ __ROR4__(v339, 31);
    v364 = __PAIR64__(v362, __ROR4__(v340, 2));
    v363 = (v351 | __ROR4__(v344, 2)) & v364;
    LODWORD(v364) = v362;
    v543 = v364 >> 31;
    v365 = v358 + v355 + v361;
    v366 = __PAIR64__(v365, __ROR4__(v344, 2));
    v367 = v363 | v351 & v366;
    LODWORD(v366) = v365;
    v368 = v256 ^ __ROR4__(v267, 31) ^ __ROR4__(v309, 31) ^ __ROR4__(v345, 31);
    v369 = v543 - 1894007588 + v352 + v367 + (v366 >> 27);
    v370 = __PAIR64__(v368, __ROR4__(v344, 2));
    v371 = (v365 | __ROR4__(v351, 2)) & v370 | v365 & __ROR4__(v351, 2);
    LODWORD(v370) = v368;
    v535 = v370 >> 31;
    HIDWORD(v370) = v344;
    LODWORD(v370) = v344;
    v372 = v370 >> 2;
    HIDWORD(v370) = v369;
    LODWORD(v370) = v369;
    v373 = v535 - 1894007588 + v357 + v371 + (v370 >> 27);
    v374 = v539 ^ __ROR4__(v277, 31) ^ __ROR4__(v319, 31) ^ __ROR4__(v353, 31);
    v375 = __PAIR64__(v374, __ROR4__(v351, 2));
    v376 = (v369 | __ROR4__(v365, 2)) & v375 | v369 & __ROR4__(v365, 2);
    LODWORD(v375) = v374;
    v377 = v375 >> 31;
    HIDWORD(v375) = v351;
    LODWORD(v375) = v351;
    v378 = v375 >> 2;
    v379 = v377 - 1894007588 + v372;
    HIDWORD(v375) = v373;
    LODWORD(v375) = v373;
    v380 = v375 >> 27;
    v381 = v379 + v376;
    v382 = v287 ^ __ROR4__(v267, 31) ^ __ROR4__(v325, 31) ^ __ROR4__(v362, 31);
    HIDWORD(v375) = v382;
    LODWORD(v375) = v382;
    v540 = v375 >> 31;
    v383 = v381 + v380;
    v384 = __PAIR64__(v365, __ROR4__(v365, 2));
    v385 = (v373 | __ROR4__(v369, 2)) & v384 | v373 & __ROR4__(v369, 2);
    LODWORD(v384) = v365;
    v386 = v384 >> 2;
    HIDWORD(v384) = v383;
    LODWORD(v384) = v383;
    v387 = v540 - 1894007588 + v378 + v385 + (v384 >> 27);
    v388 = v551 ^ __ROR4__(v290, 31) ^ __ROR4__(v332, 31) ^ __ROR4__(v368, 31);
    v389 = __PAIR64__(v388, __ROR4__(v369, 2));
    v390 = (v383 | __ROR4__(v373, 2)) & v389 | v383 & __ROR4__(v373, 2);
    LODWORD(v389) = v388;
    v552 = v389 >> 31;
    HIDWORD(v389) = v369;
    LODWORD(v389) = v369;
    v391 = v389 >> 2;
    HIDWORD(v389) = v387;
    LODWORD(v389) = v387;
    v392 = v552 - 1894007588 + v386 + v390 + (v389 >> 27);
    HIDWORD(v389) = v373;
    LODWORD(v389) = v373;
    v393 = v389 >> 2;
    v394 = v287 ^ __ROR4__(v297, 31) ^ __ROR4__(v339, 31) ^ __ROR4__(v374, 31);
    v395 = __PAIR64__(v394, __ROR4__(v383, 2));
    v396 = (v387 | __ROR4__(v383, 2)) & __ROR4__(v373, 2) | v387 & v395;
    LODWORD(v395) = v394;
    v397 = (v395 >> 31) - 1894007588;
    HIDWORD(v395) = v383;
    LODWORD(v395) = v383;
    v398 = v395 >> 2;
    v399 = v397 + v391;
    v401 = __PAIR64__(v392, __ROR4__(v345, 31));
    v400 = v537 ^ __ROR4__(v290, 31) ^ v401;
    LODWORD(v401) = v392;
    v402 = v401 >> 27;
    v403 = v400 ^ __ROR4__(v382, 31);
    v405 = __PAIR64__(v403, __ROR4__(v383, 2));
    v404 = (v392 | __ROR4__(v387, 2)) & v405;
    LODWORD(v405) = v403;
    v406 = v405 >> 31;
    v407 = v399 + v396 + v402;
    LODWORD(v405) = v555 ^ __ROR4__(v309, 31) ^ __ROR4__(v353, 31) ^ __ROR4__(v388, 31);
    v408 = v405;
    HIDWORD(v405) = v405;
    v409 = v405 >> 31;
    HIDWORD(v405) = v407;
    LODWORD(v405) = v407;
    v410 = v406 - 1894007588 + v393 + (v404 | v392 & __ROR4__(v387, 2)) + (v405 >> 27);
    v411 = v409 - 899497514 + v398;
    HIDWORD(v405) = v392;
    LODWORD(v405) = v392;
    v412 = v405 >> 2;
    v414 = __PAIR64__(v410, __ROR4__(v319, 31));
    v413 = v537 ^ v414;
    LODWORD(v414) = v410;
    v415 = v411 + (v412 ^ __ROR4__(v387, 2) ^ v407) + (v414 >> 27);
    v416 = v413 ^ __ROR4__(v362, 31) ^ __ROR4__(v394, 31);
    HIDWORD(v414) = v416;
    LODWORD(v414) = v416;
    v417 = v414 >> 31;
    HIDWORD(v414) = v387;
    LODWORD(v414) = v387;
    v418 = v417 - 899497514 + (v414 >> 2);
    HIDWORD(v414) = v407;
    LODWORD(v414) = v407;
    v419 = v414 >> 2;
    v420 = __PAIR64__(v415, __ROR4__(v392, 2));
    v421 = v418 + (v419 ^ v420 ^ v410);
    LODWORD(v420) = v415;
    v422 = v421 + (v420 >> 27);
    LODWORD(v420) = v329 ^ __ROR4__(v309, 31) ^ __ROR4__(v368, 31) ^ __ROR4__(v403, 31);
    v423 = v420;
    HIDWORD(v420) = v420;
    v556 = v420 >> 31;
    HIDWORD(v420) = v410;
    LODWORD(v420) = v410;
    v424 = v420 >> 2;
    v425 = __PAIR64__(v422, __ROR4__(v407, 2));
    v426 = v556 - 899497514 + v412 + (v424 ^ v425 ^ v415);
    LODWORD(v425) = v422;
    v427 = v426 + (v425 >> 27);
    LODWORD(v425) = v548 ^ __ROR4__(v332, 31) ^ __ROR4__(v374, 31) ^ __ROR4__(v408, 31);
    v428 = v425;
    HIDWORD(v425) = v425;
    v429 = v425 >> 31;
    HIDWORD(v425) = v415;
    LODWORD(v425) = v415;
    v430 = v425 >> 2;
    v431 = v429 - 899497514 + v419 + (v430 ^ __ROR4__(v410, 2) ^ v422);
    v433 = __PAIR64__(v427, __ROR4__(v339, 31));
    v432 = v329 ^ v433;
    LODWORD(v433) = v427;
    v434 = v431 + (v433 >> 27);
    LODWORD(v433) = v432 ^ __ROR4__(v382, 31) ^ __ROR4__(v416, 31);
    v435 = v433;
    HIDWORD(v433) = v433;
    v436 = (v433 >> 31) - 899497514;
    HIDWORD(v433) = v422;
    LODWORD(v433) = v422;
    v437 = v433 >> 2;
    v438 = __PAIR64__(v434, __ROR4__(v415, 2));
    v439 = v436 + v424 + (v437 ^ v438 ^ v427);
    LODWORD(v438) = v434;
    v440 = v438 >> 27;
    v442 = __PAIR64__(v427, __ROR4__(v388, 31));
    v441 = v348 ^ __ROR4__(v332, 31) ^ v442;
    LODWORD(v442) = v427;
    v443 = v442 >> 2;
    v444 = v441 ^ __ROR4__(v423, 31);
    v445 = v439 + v440;
    HIDWORD(v442) = v444;
    LODWORD(v442) = v444;
    v446 = (v442 >> 31) - 899497514 + v430;
    HIDWORD(v442) = v445;
    LODWORD(v442) = v445;
    v447 = v446 + (v443 ^ __ROR4__(v422, 2) ^ v434) + (v442 >> 27);
    v448 = v546 ^ __ROR4__(v353, 31) ^ __ROR4__(v394, 31) ^ __ROR4__(v428, 31);
    HIDWORD(v442) = v448;
    LODWORD(v442) = v448;
    v449 = (v442 >> 31) - 899497514;
    HIDWORD(v442) = v434;
    LODWORD(v442) = v434;
    v450 = v442 >> 2;
    v451 = __PAIR64__(v447, __ROR4__(v427, 2));
    v452 = v449 + v437 + (v450 ^ v451 ^ v445);
    LODWORD(v451) = v447;
    v453 = v452 + (v451 >> 27);
    v454 = v348 ^ __ROR4__(v362, 31) ^ __ROR4__(v403, 31) ^ __ROR4__(v435, 31);
    HIDWORD(v451) = v454;
    LODWORD(v451) = v454;
    v455 = (v451 >> 31) - 899497514 + v443;
    HIDWORD(v451) = v445;
    LODWORD(v451) = v445;
    v456 = v451 >> 2;
    v457 = __PAIR64__(v453, __ROR4__(v434, 2));
    v458 = v455 + (v456 ^ v457 ^ v447);
    LODWORD(v457) = v453;
    v459 = v535 ^ __ROR4__(v353, 31) ^ __ROR4__(v408, 31);
    v460 = v458 + (v457 >> 27);
    LODWORD(v457) = v459 ^ __ROR4__(v444, 31);
    v461 = v457;
    HIDWORD(v457) = v457;
    v462 = (v457 >> 31) - 899497514;
    HIDWORD(v457) = v447;
    LODWORD(v457) = v447;
    v463 = v457 >> 2;
    v464 = __PAIR64__(v460, __ROR4__(v445, 2));
    v465 = v462 + v450 + (v463 ^ v464 ^ v453);
    LODWORD(v464) = v460;
    v466 = v465 + (v464 >> 27);
    LODWORD(v464) = v543 ^ __ROR4__(v374, 31) ^ __ROR4__(v416, 31) ^ __ROR4__(v448, 31);
    v467 = v464;
    HIDWORD(v464) = v464;
    v468 = (v464 >> 31) - 899497514 + v456;
    HIDWORD(v464) = v453;
    LODWORD(v464) = v453;
    v469 = v464 >> 2;
    v470 = __PAIR64__(v466, __ROR4__(v447, 2));
    v471 = v468 + (v469 ^ v470 ^ v460);
    LODWORD(v470) = v466;
    v472 = v471 + (v470 >> 27);
    LODWORD(v470) = v535 ^ __ROR4__(v382, 31) ^ __ROR4__(v423, 31) ^ __ROR4__(v454, 31);
    v473 = v470;
    HIDWORD(v470) = v470;
    v474 = (v470 >> 31) - 899497514;
    HIDWORD(v470) = v460;
    LODWORD(v470) = v460;
    v475 = v470 >> 2;
    v476 = __PAIR64__(v472, __ROR4__(v453, 2));
    v477 = v474 + v463 + (v475 ^ v476 ^ v466);
    LODWORD(v476) = v472;
    v478 = v476 >> 27;
    v480 = __PAIR64__(v466, __ROR4__(v428, 31));
    v479 = v552 ^ __ROR4__(v374, 31) ^ v480;
    LODWORD(v480) = v466;
    v481 = v480 >> 2;
    v482 = v479 ^ __ROR4__(v461, 31);
    v483 = v477 + v478;
    HIDWORD(v480) = v482;
    LODWORD(v480) = v482;
    v484 = (v480 >> 31) - 899497514 + v469;
    HIDWORD(v480) = v483;
    LODWORD(v480) = v483;
    v485 = v484 + (v481 ^ __ROR4__(v460, 2) ^ v472) + (v480 >> 27);
    v486 = v540 ^ __ROR4__(v394, 31) ^ __ROR4__(v435, 31) ^ __ROR4__(v467, 31);
    HIDWORD(v480) = v486;
    LODWORD(v480) = v486;
    v487 = (v480 >> 31) - 899497514;
    HIDWORD(v480) = v472;
    LODWORD(v480) = v472;
    v488 = v480 >> 2;
    v489 = __PAIR64__(v485, __ROR4__(v466, 2));
    v490 = v487 + v475 + (v488 ^ v489 ^ v483);
    LODWORD(v489) = v485;
    v491 = v490 + (v489 >> 27);
    LODWORD(v489) = v552 ^ __ROR4__(v403, 31) ^ __ROR4__(v444, 31) ^ __ROR4__(v473, 31);
    v492 = v489;
    HIDWORD(v489) = v489;
    v493 = (v489 >> 31) - 899497514 + v481;
    HIDWORD(v489) = v483;
    LODWORD(v489) = v483;
    v494 = v489 >> 2;
    v495 = __PAIR64__(v491, __ROR4__(v472, 2));
    v496 = v493 + (v494 ^ v495 ^ v485);
    LODWORD(v495) = v491;
    v497 = v409 ^ __ROR4__(v394, 31) ^ __ROR4__(v448, 31);
    v498 = v496 + (v495 >> 27);
    v499 = v497 ^ __ROR4__(v482, 31);
    HIDWORD(v495) = v499;
    LODWORD(v495) = v499;
    v500 = (v495 >> 31) - 899497514;
    HIDWORD(v495) = v485;
    LODWORD(v495) = v485;
    v501 = v495 >> 2;
    v502 = __PAIR64__(v498, __ROR4__(v483, 2));
    v503 = v500 + v488 + (v501 ^ v502 ^ v491);
    LODWORD(v502) = v498;
    v504 = v503 + (v502 >> 27);
    v505 = v406 ^ __ROR4__(v416, 31) ^ __ROR4__(v454, 31) ^ __ROR4__(v486, 31);
    HIDWORD(v502) = v505;
    LODWORD(v502) = v505;
    v506 = (v502 >> 31) - 899497514 + v494;
    HIDWORD(v502) = v491;
    LODWORD(v502) = v491;
    v507 = v502 >> 2;
    v509 = __PAIR64__(v504, __ROR4__(v461, 31));
    v508 = v409 ^ __ROR4__(v423, 31) ^ v509;
    LODWORD(v509) = v504;
    v510 = v506 + (v507 ^ __ROR4__(v485, 2) ^ v498) + (v509 >> 27);
    v511 = v508 ^ __ROR4__(v492, 31);
    HIDWORD(v509) = v511;
    LODWORD(v509) = v511;
    v512 = (v509 >> 31) - 899497514;
    HIDWORD(v509) = v498;
    LODWORD(v509) = v498;
    result = (v509 >> 2);
    v514 = __PAIR64__(v510, __ROR4__(v491, 2));
    v515 = v512 + v501 + (result ^ v514 ^ v504);
    LODWORD(v514) = v510;
    v516 = v515 + (v514 >> 27);
    LODWORD(v514) = v429 ^ __ROR4__(v416, 31) ^ __ROR4__(v467, 31) ^ __ROR4__(v499, 31);
    HIDWORD(v514) = v514;
    v517 = (v514 >> 31) - 899497514 + v507;
    HIDWORD(v514) = v504;
    LODWORD(v514) = v504;
    v518 = v514 >> 2;
    v520 = __PAIR64__(v516, __ROR4__(v473, 31));
    v519 = v556 ^ __ROR4__(v435, 31) ^ v520;
    LODWORD(v520) = v516;
    v521 = v517 + (v518 ^ __ROR4__(v498, 2) ^ v510) + (v520 >> 27);
    LODWORD(v520) = v519 ^ __ROR4__(v505, 31);
    HIDWORD(v520) = v520;
    v522 = (v520 >> 31) - 899497514;
    HIDWORD(v520) = v510;
    LODWORD(v520) = v510;
    v523 = v520 >> 2;
    v524 = __PAIR64__(v521, __ROR4__(v504, 2));
    v525 = v522 + result + (v523 ^ v524 ^ v516);
    LODWORD(v524) = v521;
    v526 = v525 + (v524 >> 27);
    LODWORD(v524) = v429 ^ __ROR4__(v444, 31) ^ __ROR4__(v482, 31) ^ __ROR4__(v511, 31);
    HIDWORD(v524) = v524;
    v527 = v557 - 899497514 + (v524 >> 31) + v518;
    HIDWORD(v524) = v516;
    LODWORD(v524) = v516;
    v528 = v524 >> 2;
    v529 = __PAIR64__(v526, __ROR4__(v510, 2));
    v530 = v527 + (v528 ^ v529 ^ v521);
    v6 = v526 + v561;
    LODWORD(v529) = v526;
    v7 = v530 + (v529 >> 27);
    HIDWORD(v529) = v521;
    LODWORD(v529) = v521;
    v5 = (v529 >> 2) + v562;
    v3 = v528 + v560;
    v4 = v523 + v558;
    *a1 = v7;
    a1[1] = v526 + v561;
    a1[2] = v5;
    a1[3] = v528 + v560;
    a1[4] = v523 + v558;
    a2 = v563 + 16;
    a3 = v559 - 1;
  }

  while (v559 != 1);
  return result;
}

int SHA1_Final(unsigned __int8 *md, SHA_CTX *c)
{
  data = c->data;
  num = c->num;
  *(c->data + num) = 0x80;
  v6 = num + 1;
  if (num >= 0x38)
  {
    bzero(data + v6, 63 - num);
    sha1_block_data_order(c, data, 1);
    v6 = 0;
  }

  bzero(data + v6, 56 - v6);
  v7 = bswap32(c->Nl);
  c->data[14] = bswap32(c->Nh);
  c->data[15] = v7;
  sha1_block_data_order(c, data, 1);
  c->num = 0;
  *data = 0u;
  *(data + 1) = 0u;
  *(data + 2) = 0u;
  *(data + 3) = 0u;
  *md = bswap32(c->h0);
  *(md + 1) = bswap32(c->h1);
  *(md + 2) = bswap32(c->h2);
  *(md + 3) = bswap32(c->h3);
  *(md + 4) = bswap32(c->h4);
  return 1;
}

int SHA1_Init(SHA_CTX *c)
{
  *&c->data[9] = 0u;
  *&c->data[13] = 0u;
  *&c->data[1] = 0u;
  *&c->data[5] = 0u;
  *&c->h0 = xmmword_23E23D460;
  *&c->h4 = 0u;
  c->h4 = -1009589776;
  return 1;
}

unsigned __int8 *__cdecl SHA1(const unsigned __int8 *d, size_t n, unsigned __int8 *md)
{
  if (md)
  {
    v3 = md;
  }

  else
  {
    v3 = &SHA1_m;
  }

  memset(&v5.Nl, 0, 76);
  *&v5.h0 = xmmword_23E23D460;
  v5.h4 = -1009589776;
  SHA1_Update(&v5, d, n);
  SHA1_Final(v3, &v5);
  explicit_bzero(&v5, 0x60uLL);
}

void *ASN1_PCTX_new()
{
  v0 = malloc_type_calloc(1uLL, 0x28uLL, 0x10000400A747E1EuLL);
  if (!v0)
  {
    ERR_put_error(13, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/tasn_prn.c", 85);
  }

  return v0;
}

uint64_t ASN1_item_print(BIO *a1, ASN1_VALUE *a2, uint64_t a3, ASN1_ITEM *a4, uint64_t *a5)
{
  pval = a2;
  if (a5)
  {
    v5 = a5;
  }

  else
  {
    v5 = &default_pctx;
  }

  if (*(v5 + 1))
  {
    sname = 0;
  }

  else
  {
    sname = a4->sname;
  }

  return asn1_item_print_ctx(a1, &pval, a3, a4, 0, sname, 0, v5);
}

uint64_t asn1_item_print_ctx(BIO *b, const STACK **pval, uint64_t a3, ASN1_ITEM *it, const char *a5, const char *a6, int a7, uint64_t *a8)
{
  p_data = pval;
  funcs = it->funcs;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  if (funcs)
  {
    v16 = funcs[3];
    if (v16)
    {
      v40 = b;
      LODWORD(v41) = a3;
      v42 = a8;
    }
  }

  else
  {
    v16 = 0;
  }

  if (!it->itype && it->utype == 1)
  {
    goto LABEL_23;
  }

  if (!*pval)
  {
    if ((*a8 & 1) == 0)
    {
      return 1;
    }

    if (!a7)
    {
      result = asn1_print_fsname(b, a3, a5, a6, a8);
      if (!result)
      {
        return result;
      }
    }

    v22 = "<ABSENT>\n";
    goto LABEL_20;
  }

  itype = it->itype;
  if (itype > 3)
  {
    if (itype == 4)
    {
      if (!a7)
      {
        result = asn1_print_fsname(b, a3, a5, a6, a8);
        if (!result)
        {
          return result;
        }

        funcs = it->funcs;
      }

      if (!funcs || (v28 = funcs[6]) == 0)
      {
        if (!a6)
        {
          return 1;
        }

        v23 = BIO_printf(b, ":EXTERNAL TYPE %s\n", a6);
        return v23 >= 1;
      }

      result = v28(b, p_data, a3, "", a8);
      if (!result)
      {
        return result;
      }

      if (result != 2)
      {
        return 1;
      }

      goto LABEL_116;
    }

    if (itype != 5)
    {
      if (itype != 6)
      {
        goto LABEL_47;
      }

      goto LABEL_29;
    }

LABEL_34:
    result = asn1_print_fsname(b, a3, a5, a6, a8);
    if (!result)
    {
      return result;
    }

    v26 = it->funcs;
    if (v26)
    {
      v27 = v26[7];
      if (v27)
      {
        result = v27(b, p_data, it, a3, a8);
        if (!result)
        {
          return result;
        }

        return 1;
      }

      return 0;
    }

    if (it->itype == 5)
    {
      v29 = *p_data;
      utype = SHIDWORD((*p_data)->sn) & 0xFFFFFFFFFFFFFEFFLL;
    }

    else
    {
      utype = it->utype;
      if (utype == 1)
      {
        v29 = 0;
      }

      else
      {
        v29 = *p_data;
        if (utype == -4)
        {
          length = v29->length;
          utype = v29->length;
          p_data = &v29->data;
          v29 = v29->data;
          if ((*a8 & 0x10) != 0)
          {
LABEL_74:
            v36 = 0;
            goto LABEL_77;
          }

LABEL_76:
          v36 = ASN1_tag2str(length);
LABEL_77:
          if (utype == 5)
          {
            result = BIO_puts(b, "NULL\n") > 0;
            if (!result)
            {
              return result;
            }

            return 1;
          }

          if (v36 && (BIO_puts(b, v36) < 1 || BIO_puts(b, ":") < 1))
          {
            return 0;
          }

          if (utype <= 5)
          {
            if (utype > 2)
            {
              if ((utype - 3) < 2)
              {
                result = asn1_print_obstring_ctx(b, v29, a3);
                if (!result)
                {
                  return result;
                }

                return 1;
              }
            }

            else
            {
              switch(utype)
              {
                case -3:
                  goto LABEL_94;
                case 1:
                  size = *p_data;
                  if (*p_data == -1)
                  {
                    size = it->size;
                  }

                  v38 = "TRUE";
                  if (!size)
                  {
                    v38 = "FALSE";
                  }

                  if (size == -1)
                  {
                    v39 = "BOOL ABSENT";
                  }

                  else
                  {
                    v39 = v38;
                  }

                  result = BIO_puts(b, v39) > 0;
LABEL_115:
                  if (!result)
                  {
                    return result;
                  }

LABEL_116:
                  v22 = "\n";
LABEL_20:
                  v23 = BIO_puts(b, v22);
                  return v23 >= 1;
                case 2:
                  goto LABEL_103;
              }
            }
          }

          else
          {
            if (utype > 15)
            {
              if ((utype - 16) >= 2)
              {
                if (utype == 23)
                {
                  result = ASN1_UTCTIME_print(b, v29);
                  goto LABEL_115;
                }

                if (utype == 24)
                {
                  result = ASN1_GENERALIZEDTIME_print(b, v29);
                  goto LABEL_115;
                }

                goto LABEL_114;
              }

LABEL_94:
              if (BIO_puts(b, "\n") < 1)
              {
                return 0;
              }

              v23 = ASN1_parse_dump(b, v29->data, v29->length, a3, 0);
              return v23 >= 1;
            }

            if (utype == 6)
            {
              result = asn1_print_oid_ctx(b, *p_data);
              goto LABEL_115;
            }

            if (utype == 10)
            {
LABEL_103:
              result = asn1_print_integer_ctx(b, v29);
              goto LABEL_115;
            }
          }

LABEL_114:
          result = ASN1_STRING_print_ex(b, v29, a8[4]);
          goto LABEL_115;
        }
      }
    }

    if ((*a8 & 8) == 0)
    {
      goto LABEL_74;
    }

    length = utype;
    goto LABEL_76;
  }

  if (!it->itype)
  {
LABEL_23:
    templates = it->templates;
    if (templates)
    {
      result = asn1_template_print_ctx(b, pval, a3, templates, a8);
      if (!result)
      {
        return result;
      }
    }

    goto LABEL_34;
  }

  if (itype == 1)
  {
LABEL_29:
    if (!a7)
    {
      result = asn1_print_fsname(b, a3, a5, a6, a8);
      if (!result)
      {
        return result;
      }
    }

    if (!(a5 | a6) || ((*a8 & 2) != 0 ? (v25 = " {\n") : (v25 = "\n"), BIO_puts(b, v25) >= 1))
    {
      if (v16)
      {
        result = v16(8, p_data, it, &v40);
        if (!result)
        {
          return result;
        }

        if (result == 2)
        {
          return 1;
        }
      }

      if (it->tcount >= 1)
      {
        v31 = 0;
        v32 = it->templates;
        do
        {
          result = asn1_do_adb(p_data, v32, 1);
          if (!result)
          {
            return result;
          }

          v33 = result;
          field_ptr = asn1_get_field_ptr(p_data, result);
          result = asn1_template_print_ctx(b, field_ptr, a3 + 2, v33, a8);
          if (!result)
          {
            return result;
          }

          ++v31;
          ++v32;
        }

        while (it->tcount > v31);
      }

      if ((*a8 & 2) == 0 || (BIO_printf(b, "%*s}\n", a3, "") & 0x80000000) == 0)
      {
        if (v16)
        {
          result = v16(9, p_data, it, &v40);
          if (!result)
          {
            return result;
          }
        }

        return 1;
      }
    }

    return 0;
  }

  if (itype != 2)
  {
LABEL_47:
    BIO_printf(b, "Unprocessed type %d\n", it->itype);
    return 0;
  }

  choice_selector = asn1_get_choice_selector(pval, it);
  if ((choice_selector & 0x80000000) != 0 || it->tcount <= choice_selector)
  {
    return BIO_printf(b, "ERROR: selector [%d] invalid\n", choice_selector) > 0;
  }

  v19 = &it->templates[choice_selector];
  v20 = asn1_get_field_ptr(p_data, v19);
  result = asn1_template_print_ctx(b, v20, a3, v19, a8);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t asn1_template_print_ctx(BIO *b, const STACK **pval, int a3, int *a4, uint64_t *a5)
{
  v10 = *a5;
  if ((*a5 & 0x80) != 0)
  {
    v11 = *(*(a4 + 4) + 48);
  }

  v12 = *a4;
  if ((v10 & 0x40) != 0)
  {
    if ((v12 & 6) != 0)
    {
      pvala = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v13 = *(a4 + 3);
    if ((v12 & 6) != 0)
    {
      pvala = 0;
      if (v13)
      {
        v14 = (v10 & 4) != 0 ? BIO_printf(b, "%*s%s OF %s {\n") : BIO_printf(b, "%*s%s:\n");
        if (v14 < 1)
        {
          return 0;
        }
      }

LABEL_15:
      v17 = *pval;
      if (sk_num(*pval) < 1)
      {
        if (BIO_printf(b, "%*s<EMPTY>\n", a3 + 2, "") >= 1)
        {
LABEL_23:
          if ((*a5 & 2) == 0 || BIO_printf(b, "%*s}\n", a3, "") >= 1)
          {
            return 1;
          }
        }
      }

      else
      {
        v18 = 0;
        while (!v18 || BIO_puts(b, "\n") >= 1)
        {
          pvala = sk_value(v17, v18);
          result = asn1_item_print_ctx(b, &pvala, a3 + 2, *(a4 + 4));
          if (!result)
          {
            return result;
          }

          if (++v18 >= sk_num(v17))
          {
            goto LABEL_23;
          }
        }
      }

      return 0;
    }
  }

  v15 = *(a4 + 4);

  return asn1_item_print_ctx(b, pval, a3, v15);
}

BOOL asn1_print_fsname(BIO *b, int a2, const char *a3, const char *a4, void *a5)
{
  v8 = a2;
  if (a2 >= 21)
  {
    while (BIO_write(b, asn1_print_fsname_spaces, 20) == 20)
    {
      v10 = v8 - 20;
      v11 = v8 <= 40;
      v8 -= 20;
      if (v11)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

  v10 = a2;
LABEL_7:
  if (BIO_write(b, asn1_print_fsname_spaces, v10) != v10)
  {
    return 0;
  }

  if ((*a5 & 0x100) != 0)
  {
    a4 = 0;
  }

  if ((*a5 & 0x40) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3;
  }

  if (!(a4 | v12))
  {
    return 1;
  }

  if (v12)
  {
    if (BIO_puts(b, v12) < 1)
    {
      return 0;
    }

    if (a4)
    {
      v13 = BIO_printf(b, " (%s)", a4);
      goto LABEL_21;
    }

    return BIO_write(b, ": ", 2) == 2;
  }

  if (!a4)
  {
    return BIO_write(b, ": ", 2) == 2;
  }

  v13 = BIO_puts(b, a4);
LABEL_21:
  if (v13 >= 1)
  {
    return BIO_write(b, ": ", 2) == 2;
  }

  return 0;
}

BOOL asn1_print_integer_ctx(BIO *a1, ASN1_INTEGER *a2)
{
  v3 = i2s_ASN1_INTEGER(0, a2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = BIO_puts(a1, v3) > 0;
  free(v4);
  return v5;
}

BOOL asn1_print_oid_ctx(BIO *a1, ASN1_OBJECT *o)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = OBJ_obj2nid(o);
  v5 = OBJ_nid2ln(v4);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = "";
  }

  OBJ_obj2txt(buf, 80, o, 1);
  result = BIO_printf(a1, "%s (%s)", v6, buf) > 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL asn1_print_obstring_ctx(BIO *bp, uint64_t a2, int a3)
{
  if (*(a2 + 4) == 3)
  {
    v6 = BIO_printf(bp, " (%ld unused bits)\n", *(a2 + 16) & 7);
  }

  else
  {
    v6 = BIO_puts(bp, "\n");
  }

  return v6 >= 1 && (*a2 < 1 || BIO_dump_indent(bp, *(a2 + 8), *a2, a3 + 2) >= 1);
}

int RSA_check_key(const RSA *a1)
{
  if (a1->p && a1->q && a1->n && a1->e && a1->d)
  {
    v2 = BN_new();
    v3 = BN_new();
    v4 = BN_new();
    v5 = BN_new();
    v6 = BN_new();
    v7 = BN_CTX_new();
    v8 = v7;
    if (v2 && v3 && v4 && v5 && v6 && v7)
    {
      if (BN_is_one(a1->e))
      {
        ERR_put_error(4, 4095, 101, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_chk.c", 86);
        v9 = 0;
      }

      else
      {
        v9 = 1;
      }

      if (!BN_is_odd(a1->e))
      {
        ERR_put_error(4, 4095, 101, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_chk.c", 90);
        v9 = 0;
      }

      is_prime = BN_is_prime_ex(a1->p, 0, 0, 0);
      if (is_prime != 1)
      {
        v9 = is_prime;
        if (is_prime)
        {
          goto LABEL_18;
        }

        ERR_put_error(4, 4095, 128, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_chk.c", 99);
      }

      v12 = BN_is_prime_ex(a1->q, 0, 0, 0);
      if (v12 != 1)
      {
        v9 = v12;
        if (v12)
        {
          goto LABEL_18;
        }

        ERR_put_error(4, 4095, 129, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_chk.c", 108);
      }

      if (BN_mul(v2, a1->p, a1->q, v8))
      {
        if (BN_cmp(v2, a1->n))
        {
          ERR_put_error(4, 4095, 127, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_chk.c", 120);
          v9 = 0;
        }

        p = a1->p;
        v14 = BN_value_one();
        if (BN_sub(v2, p, v14))
        {
          q = a1->q;
          v16 = BN_value_one();
          if (BN_sub(v3, q, v16))
          {
            if (BN_mul(v5, v2, v3, v8) && BN_gcd_ct(v6, v2, v3, v8) && BN_div_ct(v4, 0, v5, v6, v8) && BN_mod_mul(v2, a1->d, a1->e, v4, v8))
            {
              if (!BN_is_one(v2))
              {
                ERR_put_error(4, 4095, 123, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_chk.c", 161);
                v9 = 0;
              }

              if (!a1->dmp1 || !a1->dmq1 || !a1->iqmp)
              {
                goto LABEL_18;
              }

              v17 = a1->p;
              v18 = BN_value_one();
              if (BN_sub(v2, v17, v18))
              {
                if (BN_mod_ct(v3, a1->d, v2, v8))
                {
                  if (BN_cmp(v3, a1->dmp1))
                  {
                    ERR_put_error(4, 4095, 124, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_chk.c", 180);
                    v9 = 0;
                  }

                  v19 = a1->q;
                  v20 = BN_value_one();
                  if (BN_sub(v2, v19, v20))
                  {
                    if (BN_mod_ct(v3, a1->d, v2, v8))
                    {
                      if (BN_cmp(v3, a1->dmq1))
                      {
                        ERR_put_error(4, 4095, 125, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_chk.c", 198);
                        v9 = 0;
                      }

                      if (BN_mod_inverse_ct(v2, a1->q, a1->p, v8))
                      {
                        if (BN_cmp(v2, a1->iqmp))
                        {
                          ERR_put_error(4, 4095, 126, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_chk.c", 209);
                          v9 = 0;
                        }

                        goto LABEL_18;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      ERR_put_error(4, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_chk.c", 80);
    }

    v9 = -1;
LABEL_18:
    BN_free(v2);
    BN_free(v3);
    BN_free(v4);
    BN_free(v5);
    BN_free(v6);
    BN_CTX_free(v8);
    return v9;
  }

  ERR_put_error(4, 4095, 147, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_chk.c", 67);
  return 0;
}

int MD5_Update(_MD5_CTX *c, const void *data, size_t len)
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
      md5_block_data_order(c, c->data, 1);
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
      md5_block_data_order(c, v4, v3 >> 6);
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

unint64_t md5_block_data_order(unint64_t result, _DWORD *a2, uint64_t a3)
{
  v85 = result;
  if (a3)
  {
    v4 = *(result + 8);
    v3 = *(result + 12);
    v6 = *result;
    v5 = *(result + 4);
    do
    {
      v7 = a2[1];
      HIDWORD(v8) = v6 + (v4 & v5 | v3 & ~v5) - 680876936 + *a2;
      LODWORD(v8) = HIDWORD(v8);
      v9 = (v8 >> 25) + v5;
      HIDWORD(v8) = v3 + v7 - 389564586 + (v5 & v9 | v4 & ~v9);
      LODWORD(v8) = HIDWORD(v8);
      v10 = (v8 >> 20) + v9;
      result = a2[2];
      v11 = a2[3];
      HIDWORD(v8) = v4 + result + 606105819 + (v9 & v10 | v5 & ~v10);
      LODWORD(v8) = HIDWORD(v8);
      v12 = (v8 >> 15) + v10;
      HIDWORD(v8) = v5 + v11 - 1044525330 + (v10 & v12 | v9 & ~v12);
      LODWORD(v8) = HIDWORD(v8);
      v13 = (v8 >> 10) + v12;
      v15 = a2[4];
      v14 = a2[5];
      HIDWORD(v8) = v9 + v15 - 176418897 + (v12 & v13 | v10 & ~v13);
      LODWORD(v8) = HIDWORD(v8);
      v16 = (v8 >> 25) + v13;
      HIDWORD(v8) = v10 + v14 + 1200080426 + (v13 & v16 | v12 & ~v16);
      LODWORD(v8) = HIDWORD(v8);
      v17 = (v8 >> 20) + v16;
      v19 = a2[6];
      v18 = a2[7];
      HIDWORD(v8) = v12 + v19 - 1473231341 + (v16 & v17 | v13 & ~v17);
      LODWORD(v8) = HIDWORD(v8);
      v20 = (v8 >> 15) + v17;
      HIDWORD(v8) = v13 + v18 - 45705983 + (v17 & v20 | v16 & ~v20);
      LODWORD(v8) = HIDWORD(v8);
      v21 = (v8 >> 10) + v20;
      v23 = a2[8];
      v22 = a2[9];
      HIDWORD(v8) = v16 + v23 + 1770035416 + (v20 & v21 | v17 & ~v21);
      LODWORD(v8) = HIDWORD(v8);
      v24 = (v8 >> 25) + v21;
      HIDWORD(v8) = v17 + v22 - 1958414417 + (v21 & v24 | v20 & ~v24);
      LODWORD(v8) = HIDWORD(v8);
      v25 = (v8 >> 20) + v24;
      v26 = a2[10];
      v27 = a2[11];
      HIDWORD(v8) = v26 + v20 - 42063 + (v24 & v25 | v21 & ~v25);
      LODWORD(v8) = HIDWORD(v8);
      v28 = (v8 >> 15) + v25;
      HIDWORD(v8) = v27 + v21 - 1990404162 + (v25 & v28 | v24 & ~v28);
      LODWORD(v8) = HIDWORD(v8);
      v29 = (v8 >> 10) + v28;
      v31 = a2[12];
      v30 = a2[13];
      HIDWORD(v8) = v31 + v24 + 1804603682 + (v28 & v29 | v25 & ~v29);
      LODWORD(v8) = HIDWORD(v8);
      v32 = (v8 >> 25) + v29;
      HIDWORD(v8) = v30 + v25 - 40341101 + (v29 & v32 | v28 & ~v32);
      LODWORD(v8) = HIDWORD(v8);
      v33 = (v8 >> 20) + v32;
      v35 = a2[14];
      v34 = a2[15];
      HIDWORD(v8) = v35 + v28 - 1502002290 + (v32 & v33 | v29 & ~v33);
      LODWORD(v8) = HIDWORD(v8);
      v36 = (v8 >> 15) + v33;
      HIDWORD(v8) = v34 + v29 + 1236535329 + (v33 & v36 | v32 & ~v36);
      LODWORD(v8) = HIDWORD(v8);
      v37 = (v8 >> 10) + v36;
      HIDWORD(v8) = v7 + v32 - 165796510 + (v37 & v33 | v36 & ~v33);
      LODWORD(v8) = HIDWORD(v8);
      v38 = (v8 >> 27) + v37;
      HIDWORD(v8) = v19 + v33 - 1069501632 + (v38 & v36 | v37 & ~v36);
      LODWORD(v8) = HIDWORD(v8);
      v39 = (v8 >> 23) + v38;
      HIDWORD(v8) = v27 + v36 + 643717713 + (v39 & v37 | v38 & ~v37);
      LODWORD(v8) = HIDWORD(v8);
      v40 = (v8 >> 18) + v39;
      HIDWORD(v8) = *a2 + v37 - 373897302 + (v40 & v38 | v39 & ~v38);
      LODWORD(v8) = HIDWORD(v8);
      v41 = (v8 >> 12) + v40;
      HIDWORD(v8) = v14 + v38 - 701558691 + (v41 & v39 | v40 & ~v39);
      LODWORD(v8) = HIDWORD(v8);
      v42 = (v8 >> 27) + v41;
      HIDWORD(v8) = v26 + v39 + 38016083 + (v42 & v40 | v41 & ~v40);
      LODWORD(v8) = HIDWORD(v8);
      v43 = (v8 >> 23) + v42;
      HIDWORD(v8) = v34 + v40 - 660478335 + (v43 & v41 | v42 & ~v41);
      LODWORD(v8) = HIDWORD(v8);
      v44 = (v8 >> 18) + v43;
      HIDWORD(v8) = v15 + v41 - 405537848 + (v44 & v42 | v43 & ~v42);
      LODWORD(v8) = HIDWORD(v8);
      v45 = (v8 >> 12) + v44;
      HIDWORD(v8) = v22 + v42 + 568446438 + (v45 & v43 | v44 & ~v43);
      LODWORD(v8) = HIDWORD(v8);
      v46 = (v8 >> 27) + v45;
      HIDWORD(v8) = v35 + v43 - 1019803690 + (v46 & v44 | v45 & ~v44);
      LODWORD(v8) = HIDWORD(v8);
      v47 = (v8 >> 23) + v46;
      HIDWORD(v8) = v11 + v44 - 187363961 + (v47 & v45 | v46 & ~v45);
      LODWORD(v8) = HIDWORD(v8);
      v48 = (v8 >> 18) + v47;
      HIDWORD(v8) = v23 + v45 + 1163531501 + (v48 & v46 | v47 & ~v46);
      LODWORD(v8) = HIDWORD(v8);
      v49 = (v8 >> 12) + v48;
      HIDWORD(v8) = v30 + v46 - 1444681467 + (v49 & v47 | v48 & ~v47);
      LODWORD(v8) = HIDWORD(v8);
      v50 = (v8 >> 27) + v49;
      HIDWORD(v8) = result + v47 - 51403784 + (v50 & v48 | v49 & ~v48);
      LODWORD(v8) = HIDWORD(v8);
      v51 = (v8 >> 23) + v50;
      HIDWORD(v8) = v18 + v48 + 1735328473 + (v51 & v49 | v50 & ~v49);
      LODWORD(v8) = HIDWORD(v8);
      v52 = (v8 >> 18) + v51;
      HIDWORD(v8) = v31 + v49 - 1926607734 + ((v52 ^ v51) & v50 ^ v51);
      LODWORD(v8) = HIDWORD(v8);
      v53 = (v8 >> 12) + v52;
      HIDWORD(v8) = v14 + v50 - 378558 + (v52 ^ v51 ^ v53);
      LODWORD(v8) = HIDWORD(v8);
      v54 = (v8 >> 28) + v53;
      HIDWORD(v8) = v23 + v51 - 2022574463 + (v53 ^ v52 ^ v54);
      LODWORD(v8) = HIDWORD(v8);
      v55 = (v8 >> 21) + v54;
      HIDWORD(v8) = v27 + v52 + 1839030562 + (v54 ^ v53 ^ v55);
      LODWORD(v8) = HIDWORD(v8);
      v56 = (v8 >> 16) + v55;
      HIDWORD(v8) = v35 + v53 - 35309556 + (v55 ^ v54 ^ v56);
      LODWORD(v8) = HIDWORD(v8);
      v57 = (v8 >> 9) + v56;
      HIDWORD(v8) = v7 + v54 - 1530992060 + (v56 ^ v55 ^ v57);
      LODWORD(v8) = HIDWORD(v8);
      v58 = (v8 >> 28) + v57;
      HIDWORD(v8) = v15 + v55 + 1272893353 + (v57 ^ v56 ^ v58);
      LODWORD(v8) = HIDWORD(v8);
      v59 = (v8 >> 21) + v58;
      HIDWORD(v8) = v18 + v56 - 155497632 + (v58 ^ v57 ^ v59);
      LODWORD(v8) = HIDWORD(v8);
      v60 = (v8 >> 16) + v59;
      HIDWORD(v8) = v26 + v57 - 1094730640 + (v59 ^ v58 ^ v60);
      LODWORD(v8) = HIDWORD(v8);
      v61 = (v8 >> 9) + v60;
      HIDWORD(v8) = v30 + v58 + 681279174 + (v60 ^ v59 ^ v61);
      LODWORD(v8) = HIDWORD(v8);
      v62 = (v8 >> 28) + v61;
      HIDWORD(v8) = *a2 + v59 - 358537222 + (v61 ^ v60 ^ v62);
      LODWORD(v8) = HIDWORD(v8);
      v63 = (v8 >> 21) + v62;
      HIDWORD(v8) = v11 + v60 - 722521979 + (v62 ^ v61 ^ v63);
      LODWORD(v8) = HIDWORD(v8);
      v64 = (v8 >> 16) + v63;
      HIDWORD(v8) = v19 + v61 + 76029189 + (v63 ^ v62 ^ v64);
      LODWORD(v8) = HIDWORD(v8);
      v65 = (v8 >> 9) + v64;
      HIDWORD(v8) = v22 + v62 - 640364487 + (v64 ^ v63 ^ v65);
      LODWORD(v8) = HIDWORD(v8);
      v66 = (v8 >> 28) + v65;
      HIDWORD(v8) = v31 + v63 - 421815835 + (v65 ^ v64 ^ v66);
      LODWORD(v8) = HIDWORD(v8);
      v67 = (v8 >> 21) + v66;
      HIDWORD(v8) = v34 + v64 + 530742520 + (v66 ^ v65 ^ v67);
      LODWORD(v8) = HIDWORD(v8);
      v68 = (v8 >> 16) + v67;
      HIDWORD(v8) = result + v65 - 995338651 + (v67 ^ v66 ^ v68);
      LODWORD(v8) = HIDWORD(v8);
      v69 = (v8 >> 9) + v68;
      HIDWORD(v8) = *a2 + v66 - 198630844 + ((v69 | ~v67) ^ v68);
      LODWORD(v8) = HIDWORD(v8);
      v70 = (v8 >> 26) + v69;
      HIDWORD(v8) = v18 + v67 + 1126891415 + ((v70 | ~v68) ^ v69);
      LODWORD(v8) = HIDWORD(v8);
      v71 = (v8 >> 22) + v70;
      HIDWORD(v8) = v35 + v68 - 1416354905 + ((v71 | ~v69) ^ v70);
      LODWORD(v8) = HIDWORD(v8);
      v72 = (v8 >> 17) + v71;
      HIDWORD(v8) = v14 + v69 - 57434055 + ((v72 | ~v70) ^ v71);
      LODWORD(v8) = HIDWORD(v8);
      v73 = (v8 >> 11) + v72;
      HIDWORD(v8) = v31 + v70 + 1700485571 + ((v73 | ~v71) ^ v72);
      LODWORD(v8) = HIDWORD(v8);
      v74 = (v8 >> 26) + v73;
      HIDWORD(v8) = v11 + v71 - 1894986606 + ((v74 | ~v72) ^ v73);
      LODWORD(v8) = HIDWORD(v8);
      v75 = (v8 >> 22) + v74;
      HIDWORD(v8) = v26 + v72 - 1051523 + ((v75 | ~v73) ^ v74);
      LODWORD(v8) = HIDWORD(v8);
      v76 = (v8 >> 17) + v75;
      HIDWORD(v8) = v7 + v73 - 2054922799 + ((v76 | ~v74) ^ v75);
      LODWORD(v8) = HIDWORD(v8);
      v77 = (v8 >> 11) + v76;
      HIDWORD(v8) = v23 + v74 + 1873313359 + ((v77 | ~v75) ^ v76);
      LODWORD(v8) = HIDWORD(v8);
      v78 = (v8 >> 26) + v77;
      HIDWORD(v8) = v34 + v75 - 30611744 + ((v78 | ~v76) ^ v77);
      LODWORD(v8) = HIDWORD(v8);
      v79 = (v8 >> 22) + v78;
      HIDWORD(v8) = v19 + v76 - 1560198380 + ((v79 | ~v77) ^ v78);
      LODWORD(v8) = HIDWORD(v8);
      v80 = (v8 >> 17) + v79;
      HIDWORD(v8) = v30 + v77 + 1309151649 + ((v80 | ~v78) ^ v79);
      LODWORD(v8) = HIDWORD(v8);
      v81 = (v8 >> 11) + v80;
      HIDWORD(v8) = v15 + v78 - 145523070 + ((v81 | ~v79) ^ v80);
      LODWORD(v8) = HIDWORD(v8);
      v82 = (v8 >> 26) + v81;
      HIDWORD(v8) = v27 + v79 - 1120210379 + ((v82 | ~v80) ^ v81);
      LODWORD(v8) = HIDWORD(v8);
      v83 = (v8 >> 22) + v82;
      HIDWORD(v8) = result + v80 + 718787259 + ((v83 | ~v81) ^ v82);
      LODWORD(v8) = HIDWORD(v8);
      v84 = (v8 >> 17) + v83;
      v6 += v82;
      HIDWORD(v8) = v22 + v81 - 343485551 + ((v84 | ~v82) ^ v83);
      LODWORD(v8) = HIDWORD(v8);
      v5 += v84 + (v8 >> 11);
      v4 += v84;
      v3 += v83;
      *v85 = v6;
      v85[1] = v5;
      v85[2] = v4;
      v85[3] = v3;
      a2 += 16;
      --a3;
    }

    while (a3);
  }

  return result;
}

int MD5_Final(unsigned __int8 *md, _MD5_CTX *c)
{
  data = c->data;
  num = c->num;
  *(c->data + num) = 0x80;
  v6 = num + 1;
  if (num >= 0x38)
  {
    bzero(data + v6, 63 - num);
    md5_block_data_order(c, data, 1);
    v6 = 0;
  }

  bzero(data + v6, 56 - v6);
  Nh = c->Nh;
  c->data[14] = c->Nl;
  c->data[15] = Nh;
  md5_block_data_order(c, data, 1);
  c->num = 0;
  *data = 0u;
  *(data + 1) = 0u;
  *(data + 2) = 0u;
  *(data + 3) = 0u;
  *md = c->A;
  *(md + 1) = c->B;
  *(md + 2) = c->C;
  *(md + 3) = c->D;
  return 1;
}

int MD5_Init(_MD5_CTX *c)
{
  *&c->data[13] = 0u;
  *&c->data[6] = 0u;
  *&c->data[10] = 0u;
  *&c->Nl = 0u;
  *&c->data[2] = 0u;
  *&c->A = xmmword_23E23D460;
  return 1;
}

void RC2_set_key(RC2_KEY *key, int len, const unsigned __int8 *data, int bits)
{
  LOBYTE(key->data[0]) = 0;
  if (len >= 128)
  {
    v4 = 128;
  }

  else
  {
    v4 = len;
  }

  if (bits >= 0x400)
  {
    v5 = 1024;
  }

  else
  {
    v5 = bits;
  }

  if (bits < 1)
  {
    v5 = 1024;
  }

  if (len < 1)
  {
    goto LABEL_13;
  }

  v6 = v4;
  v7 = key;
  do
  {
    v8 = *data++;
    LOBYTE(v7->data[0]) = v8;
    v7 = (v7 + 1);
    --v6;
  }

  while (v6);
  if (len <= 127)
  {
LABEL_13:
    v9 = *(key->data + v4 - 1);
    v10 = (128 - v4);
    v11 = key;
    do
    {
      v9 = key_table[(LOBYTE(v11->data[0]) + v9)];
      *(v11->data + len) = v9;
      v11 = (v11 + 1);
      --v10;
    }

    while (v10);
  }

  v12 = (v5 + 7) >> 3;
  LODWORD(v13) = 128 - v12;
  v14 = key_table[(0xFFu >> (-v5 & 7)) & *(key->data + 128 - v12)];
  *(key->data + 128 - v12) = v14;
  if (v12 != 128)
  {
    v13 = v13;
    v15 = &key[-1].data[63] + v12 + 3;
    do
    {
      v14 = key_table[(v15[v13] ^ v14)];
      *(&key[-1].data[63] + v13-- + 3) = v14;
    }

    while (v13);
  }

  v16 = 0;
  v17 = 63;
  do
  {
    key->data[v17] = *(&key->data[31] + v16 + 2);
    v18 = v16 + 127;
    v16 -= 2;
    --v17;
  }

  while (v18 > 1);
}

ASN1_OBJECT *ASN1_OBJECT_new(void)
{
  v0 = malloc_type_calloc(1uLL, 0x28uLL, 0x10500408E18043EuLL);
  v1 = v0;
  if (v0)
  {
    v0->flags = 1;
  }

  else
  {
    ERR_put_error(13, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_object.c", 83);
  }

  return v1;
}

void ASN1_OBJECT_free(ASN1_OBJECT *a)
{
  if (!a)
  {
    return;
  }

  flags = a->flags;
  if ((flags & 4) == 0)
  {
    if ((flags & 8) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    freezero(a->data, a->length);
    a->data = 0;
    a->length = 0;
    if ((a->flags & 1) == 0)
    {
      return;
    }

    goto LABEL_8;
  }

  free(a->sn);
  free(a->ln);
  a->sn = 0;
  a->ln = 0;
  flags = a->flags;
  if ((flags & 8) != 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  if ((flags & 1) == 0)
  {
    return;
  }

LABEL_8:

  free(a);
}

ASN1_OBJECT *__cdecl ASN1_OBJECT_create(int nid, unsigned __int8 *data, int len, const char *sn, const char *ln)
{
  o.sn = sn;
  o.ln = ln;
  o.data = data;
  *(&o.flags + 1) = 0;
  o.nid = nid;
  o.length = len;
  o.flags = 13;
  return OBJ_dup(&o);
}

int a2d_ASN1_OBJECT(unsigned __int8 *out, int olen, const char *buf, int num)
{
  v13 = 0;
  memset(v10, 0, sizeof(v10));
  if (num == -1)
  {
    num = strlen(buf);
  }

  v12 = 0;
  memset(v11, 0, sizeof(v11));
  if (num < 1)
  {
    goto LABEL_14;
  }

  CBS_init(v11, buf, num);
  if (!CBB_init(v10, 0) || !a2c_ASN1_OBJECT_internal(v10, v11))
  {
    goto LABEL_14;
  }

  v7 = 0;
  if (CBB_finish(v10, &v13, &v12))
  {
    v8 = v12;
    if (!(v12 >> 31))
    {
      if (!out)
      {
LABEL_12:
        v7 = v8;
        goto LABEL_15;
      }

      if (olen >= 1 && v12 <= olen)
      {
        memcpy(out, v13, v12);
        goto LABEL_12;
      }

      ERR_put_error(13, 4095, 107, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_object.c", 356);
LABEL_14:
      v7 = 0;
    }
  }

LABEL_15:
  CBB_cleanup(v10);
  free(v13);
  return v7;
}

uint64_t a2c_ASN1_OBJECT_internal(char **a1, void *a2)
{
  v10 = 0;
  v8 = 0;
  result = oid_parse_arc_txt(a2, &v10, &v8, 1);
  if (result)
  {
    if (!CBS_len(a2))
    {
      v5 = 138;
      v6 = 257;
      goto LABEL_12;
    }

    v9 = 0;
    result = oid_parse_arc_txt(a2, &v9, &v8, 0);
    if (!result)
    {
      return result;
    }

    if (v10 >= 3)
    {
      v5 = 122;
      v6 = 270;
LABEL_12:
      ERR_put_error(13, 4095, v5, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_object.c", v6);
      return 0;
    }

    if (v10 != 2 && v9 > 0x27 || __CFADD__(v9, 40 * v10))
    {
      v5 = 147;
      v6 = 274;
      goto LABEL_12;
    }

    v11 = v9 + 40 * v10;
    result = oid_add_arc(a1, v11);
    if (result)
    {
      while (CBS_len(a2))
      {
        result = oid_parse_arc_txt(a2, &v11, &v8, 0);
        if (result)
        {
          v7 = oid_add_arc(a1, v11);
          result = 0;
          if (v7)
          {
            continue;
          }
        }

        return result;
      }

      return 1;
    }
  }

  return result;
}

size_t i2t_ASN1_OBJECT_internal(ASN1_OBJECT *a1, char *a2, unsigned int a3, int a4)
{
  __source = 0;
  if ((a3 & 0x80000000) != 0)
  {
    return 0;
  }

  if (a3)
  {
    *a2 = 0;
  }

  if (!a1 || !a1->data)
  {
    return 0;
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  if (CBB_init(v10, 0) && i2t_ASN1_OBJECT_cbb(a1, v10, a4) && CBB_finish(v10, &__source, &v11))
  {
    v8 = strlcpy(a2, __source, a3);
  }

  else
  {
    v8 = 0;
  }

  CBB_cleanup(v10);
  free(__source);
  return v8;
}

uint64_t i2t_ASN1_OBJECT_cbb(ASN1_OBJECT *o, char **a2, int a3)
{
  if (!a3 && (v9 = OBJ_obj2nid(o)) != 0 && ((v10 = v9, (v11 = OBJ_nid2ln(v9)) != 0) || (v11 = OBJ_nid2sn(v10)) != 0))
  {
    v12 = v11;
    v13 = strlen(v11);
    result = CBB_add_bytes(a2, v12, v13);
    if (result)
    {
      return CBB_add_u8(a2, 0) != 0;
    }
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    CBS_init(v14, o->data, o->length);
    v15 = 0;
    result = oid_parse_arc(v14, &v15);
    if (result)
    {
      v6 = v15;
      v7 = v15 / 0x28 >= 2 ? 2 : v15 / 0x28;
      result = oid_add_arc_txt(a2, v7, 1);
      if (result)
      {
        for (i = v6 - 40 * v7; ; i = v15)
        {
          result = oid_add_arc_txt(a2, i, 0);
          if (!result)
          {
            break;
          }

          if (!CBS_len(v14))
          {
            return CBB_add_u8(a2, 0) != 0;
          }

          result = oid_parse_arc(v14, &v15);
          if (!result)
          {
            break;
          }
        }
      }
    }
  }

  return result;
}

ASN1_OBJECT *t2i_ASN1_OBJECT_internal(const char *a1)
{
  v9 = 0;
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  memset(v8, 0, sizeof(v8));
  v2 = strlen(a1);
  CBS_init(v7, a1, v2);
  if (CBB_init(v8, 0) && a2c_ASN1_OBJECT_internal(v8, v7))
  {
    v3 = 0;
    if (CBB_finish(v8, &v10, &v9))
    {
      if (!(v9 >> 31))
      {
        v4 = ASN1_OBJECT_new();
        v3 = v4;
        if (v4)
        {
          v5 = v9;
          v4->data = v10;
          v4->length = v5;
          v4->flags |= 8u;
          v10 = 0;
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  CBB_cleanup(v8);
  free(v10);
  return v3;
}

int i2a_ASN1_OBJECT(BIO *bp, ASN1_OBJECT *a)
{
  v11 = 0;
  if (a && a->data)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    if (CBB_init(v9, 0))
    {
      if (!i2t_ASN1_OBJECT_cbb(a, v9, 0))
      {
        v6 = "<INVALID>";
        v5 = bp;
        v4 = 9;
        goto LABEL_12;
      }

      if (CBB_finish(v9, &v11, &v10))
      {
        v4 = strlen(v11);
        v5 = bp;
        v6 = v11;
LABEL_12:
        v8 = BIO_write(v5, v6, v4);
        goto LABEL_13;
      }
    }

    v8 = -1;
LABEL_13:
    CBB_cleanup(v9);
    free(v11);
    return v8;
  }

  return BIO_write(bp, "NULL", 4);
}

uint64_t c2i_ASN1_OBJECT_cbs(ASN1_OBJECT **a1, void *a2)
{
  v10 = 0;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  if (a1)
  {
    v3 = a1;
    v4 = *a1;
    if (v4)
    {
      ASN1_OBJECT_free(v4);
      *v3 = 0;
    }

    CBS_dup(a2, v8);
    if (CBS_len(v8))
    {
      while (CBS_len(v8))
      {
        if (!oid_parse_arc(v8, 0))
        {
          v5 = 551;
          goto LABEL_9;
        }
      }

      if (!CBS_stow(a2, &v10, &v9) || v9 >> 31)
      {
        a1 = v10;
      }

      else
      {
        v7 = ASN1_OBJECT_new();
        a1 = v10;
        if (v7)
        {
          v7->data = v10;
          v7->length = v9;
          v7->flags |= 8u;
          *v3 = v7;
          return 1;
        }
      }
    }

    else
    {
      v5 = 546;
LABEL_9:
      ERR_put_error(13, 4095, 216, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_object.c", v5);
      a1 = 0;
    }
  }

  free(a1);
  return 0;
}

uint64_t oid_parse_arc(void *a1, unint64_t *a2)
{
  v4 = 0;
  v10 = 0;
  while (1)
  {
    result = CBS_get_u8(a1, &v10);
    if (!result)
    {
      break;
    }

    result = 0;
    v6 = !a2 || v4 >> 57 == 0;
    v7 = !v6;
    v8 = v10 == 128 && v4 == 0;
    if (v8 || v7)
    {
      break;
    }

    v9 = v10 & 0x7F | (v4 << 7);
    v4 = v9;
    if ((v10 & 0x80) == 0)
    {
      if (a2)
      {
        *a2 = v9;
      }

      return 1;
    }
  }

  return result;
}

ASN1_OBJECT *__cdecl c2i_ASN1_OBJECT(ASN1_OBJECT **a, const unsigned __int8 **pp, uint64_t length)
{
  v8 = 0;
  if (a)
  {
    ASN1_OBJECT_free(*a);
    *a = 0;
  }

  if (length < 0)
  {
    ERR_put_error(13, 4095, 136, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_object.c", 592);
    return 0;
  }

  memset(v7, 0, sizeof(v7));
  CBS_init(v7, *pp, length);
  if (!c2i_ASN1_OBJECT_cbs(&v8, v7))
  {
    return 0;
  }

  *pp = CBS_data(v7);
  result = v8;
  if (a)
  {
    *a = v8;
  }

  return result;
}

int i2d_ASN1_OBJECT(ASN1_OBJECT *a, unsigned __int8 **pp)
{
  if (!a || !a->data)
  {
    return 0;
  }

  v4 = ASN1_object_size(0, a->length, 6);
  if (pp)
  {
    ppa = *pp;
    ASN1_put_object(&ppa, 0, a->length, 6, 0);
    memcpy(ppa, a->data, a->length);
    *pp = &ppa[a->length];
  }

  return v4;
}

ASN1_OBJECT *__cdecl d2i_ASN1_OBJECT(ASN1_OBJECT **a, const unsigned __int8 **pp, uint64_t length)
{
  v12 = 0;
  if (a)
  {
    ASN1_OBJECT_free(*a);
    *a = 0;
  }

  if (length < 0)
  {
    v7 = 136;
    v8 = 644;
LABEL_12:
    ERR_put_error(13, 4095, v7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_object.c", v8);
    return 0;
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  CBS_init(v10, *pp, length);
  if (!asn1_get_primitive(v10, 0, &v11, v9))
  {
    v7 = 102;
    v8 = 651;
    goto LABEL_12;
  }

  if (v11 != 6)
  {
    v7 = 116;
    v8 = 655;
    goto LABEL_12;
  }

  if (!c2i_ASN1_OBJECT_cbs(&v12, v9))
  {
    return 0;
  }

  *pp = CBS_data(v10);
  result = v12;
  if (a)
  {
    *a = v12;
  }

  return result;
}

uint64_t oid_parse_arc_txt(void *a1, unint64_t *a2, unsigned __int8 *a3, int a4)
{
  v15 = 0;
  if (!a4)
  {
    result = CBS_get_u8(a1, &v15);
    if (!result)
    {
      return result;
    }

    if (*a3)
    {
      if (v15 != *a3)
      {
LABEL_26:
        v13 = 131;
        v14 = 199;
        goto LABEL_32;
      }
    }

    else if (v15 != 32 && v15 != 46)
    {
      goto LABEL_26;
    }

    *a3 = v15;
  }

  if (!CBS_len(a1))
  {
LABEL_22:
    v13 = 187;
    v14 = 238;
LABEL_32:
    ERR_put_error(13, 4095, v13, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_object.c", v14);
    return 0;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    result = CBS_peek_u8(a1, &v15);
    if (!result)
    {
      return result;
    }

    if (v15 == 32 || v15 == 46)
    {
      if (!v7)
      {
        goto LABEL_22;
      }

LABEL_21:
      *a2 = v8;
      return 1;
    }

    result = CBS_get_u8(a1, &v15);
    if (!result)
    {
      return result;
    }

    if ((v15 - 58) <= 0xF5u)
    {
      if (a4)
      {
        v13 = 131;
        v14 = 216;
      }

      else
      {
        v13 = 130;
        v14 = 219;
      }

      goto LABEL_32;
    }

    v10 = v15 - 48;
    v15 -= 48;
    v11 = v7-- != 0;
    if (v11 && !v8 && !v10)
    {
      v13 = 187;
      v14 = 225;
      goto LABEL_32;
    }

    if (v8 >= 0x199999999999999ALL)
    {
      v13 = 155;
      v14 = 231;
      goto LABEL_32;
    }

    v8 = 10 * v8 + v10;
    if (!CBS_len(a1))
    {
      goto LABEL_21;
    }
  }
}

uint64_t oid_add_arc(char **a1, unint64_t a2)
{
  v4 = 0;
  for (i = 63; i != -7; i -= 7)
  {
    v6 = (a2 >> i) & 0x7F;
    if (v4 || !i || v6)
    {
      result = CBB_add_u8(a1, v6 | ((i != 0) << 7));
      if (!result)
      {
        return result;
      }

      v4 = 1;
    }

    else
    {
      v4 = 0;
    }
  }

  return 1;
}

BOOL oid_add_arc_txt(char **a1, uint64_t a2, int a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = snprintf(__str, 0x16uLL, "%llu");
  }

  else
  {
    v4 = snprintf(__str, 0x16uLL, ".%llu");
  }

  result = v4 <= 0x15 && CBB_add_bytes(a1, __str, v4) != 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PKCS7_ctrl(PKCS7 *p7, int cmd, uint64_t larg, char *parg)
{
  v7 = OBJ_obj2nid(p7->type);
  if (cmd != 2)
  {
    if (cmd == 1)
    {
      if (v7 == 22)
      {
        p7->detached = larg;
        if (larg << 32)
        {
          larg = larg;
          if (OBJ_obj2nid(*(*(p7->d.ptr + 5) + 24)) == 21)
          {
            ASN1_OCTET_STRING_free(*(*(p7->d.ptr + 5) + 32));
            *(*(p7->d.ptr + 5) + 32) = 0;
          }

          return larg;
        }

        return 0;
      }

      v9 = 104;
      v10 = 88;
    }

    else
    {
      v9 = 110;
      v10 = 107;
    }

LABEL_13:
    ERR_put_error(33, 4095, v9, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_lib.c", v10);
    return 0;
  }

  if (v7 != 22)
  {
    v9 = 104;
    v10 = 101;
    goto LABEL_13;
  }

  ptr = p7->d.ptr;
  if (ptr)
  {
    larg = *(*(ptr + 5) + 32) == 0;
  }

  else
  {
    larg = 1;
  }

  p7->detached = larg;
  return larg;
}

int PKCS7_content_new(PKCS7 *p7, int nid)
{
  v4 = PKCS7_new();
  if (v4)
  {
    v5 = v4;
    if (PKCS7_set_type(v4, nid) && PKCS7_set_content(p7, v5))
    {
      LODWORD(v4) = 1;
    }

    else
    {
      PKCS7_free(v5);
      LODWORD(v4) = 0;
    }
  }

  return v4;
}

int PKCS7_set_type(PKCS7 *p7, int type)
{
  v4 = OBJ_nid2obj(type);
  if (type > 23)
  {
    switch(type)
    {
      case 24:
        p7->type = v4;
        v10 = PKCS7_SIGN_ENVELOPE_new();
        p7->d.ptr = v10;
        if (v10 && ASN1_INTEGER_set(*v10, 1))
        {
          v6 = OBJ_nid2obj(21);
          v7 = *(p7->d.ptr + 5);
          goto LABEL_19;
        }

        return 0;
      case 25:
        p7->type = v4;
        v13 = PKCS7_DIGEST_new();
        p7->d.ptr = v13;
        return v13 && ASN1_INTEGER_set(*v13, 0);
      case 26:
        p7->type = v4;
        v8 = PKCS7_ENCRYPT_new();
        p7->d.ptr = v8;
        if (v8 && ASN1_INTEGER_set(*v8, 0))
        {
          v6 = OBJ_nid2obj(21);
          v7 = *(p7->d.ptr + 1);
          goto LABEL_19;
        }

        return 0;
    }

LABEL_20:
    ERR_put_error(33, 4095, 112, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_lib.c", 226);
    return 0;
  }

  if (type == 21)
  {
    p7->type = v4;
    v9 = ASN1_OCTET_STRING_new();
    p7->d.ptr = v9;
    return v9 != 0;
  }

  if (type != 22)
  {
    if (type == 23)
    {
      p7->type = v4;
      v5 = PKCS7_ENVELOPE_new();
      p7->d.ptr = v5;
      if (v5 && ASN1_INTEGER_set(*v5, 0))
      {
        v6 = OBJ_nid2obj(21);
        v7 = *(p7->d.ptr + 2);
LABEL_19:
        *v7 = v6;
        return 1;
      }

      return 0;
    }

    goto LABEL_20;
  }

  p7->type = v4;
  v11 = PKCS7_SIGNED_new();
  p7->d.ptr = v11;
  if (!v11)
  {
    return 0;
  }

  v12 = 1;
  if (!ASN1_INTEGER_set(*v11, 1))
  {
    PKCS7_SIGNED_free(p7->d.sign);
    p7->d.ptr = 0;
    return 0;
  }

  return v12;
}

int PKCS7_set_content(PKCS7 *p7, PKCS7 *p7_data)
{
  v4 = OBJ_obj2nid(p7->type);
  if (v4 == 25)
  {
    ptr = p7->d.ptr;
    v8 = *(ptr + 2);
    if (v8)
    {
      PKCS7_free(v8);
      ptr = p7->d.ptr;
    }

    *(ptr + 2) = p7_data;
    return 1;
  }

  if (v4 == 22)
  {
    v5 = p7->d.ptr;
    v6 = *(v5 + 5);
    if (v6)
    {
      PKCS7_free(v6);
      v5 = p7->d.ptr;
    }

    *(v5 + 5) = p7_data;
    return 1;
  }

  ERR_put_error(33, 4095, 112, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_lib.c", 156);
  return 0;
}

int PKCS7_set0_type_other(PKCS7 *p7, int type, ASN1_TYPE *other)
{
  p7->type = OBJ_nid2obj(type);
  p7->d.ptr = other;
  return 1;
}

int PKCS7_add_signer(PKCS7 *p7, PKCS7_SIGNER_INFO *p7i)
{
  v4 = OBJ_obj2nid(p7->type);
  if (v4 == 22 || v4 == 24)
  {
    ptr = p7->d.ptr;
    v7 = *(ptr + 1);
    v8 = *(ptr + 4);
    v9 = OBJ_obj2nid(p7i->digest_alg->algorithm);
    if (sk_num(v7) < 1)
    {
LABEL_10:
      v12 = X509_ALGOR_new();
      if (!v12 || (v13 = ASN1_TYPE_new(), (v12->parameter = v13) == 0))
      {
        X509_ALGOR_free(v12);
        v15 = 65;
        v16 = 283;
        goto LABEL_15;
      }

      v12->algorithm = OBJ_nid2obj(v9);
      v12->parameter->type = 5;
      if (!sk_push(v7, v12))
      {
        X509_ALGOR_free(v12);
        return 0;
      }
    }

    else
    {
      v10 = 0;
      while (1)
      {
        v11 = sk_value(v7, v10);
        if (OBJ_obj2nid(*v11) == v9)
        {
          break;
        }

        if (++v10 >= sk_num(v7))
        {
          goto LABEL_10;
        }
      }
    }

    return sk_push(v8, p7i) != 0;
  }

  v15 = 113;
  v16 = 263;
LABEL_15:
  ERR_put_error(33, 4095, v15, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_lib.c", v16);
  return 0;
}

int PKCS7_add_certificate(PKCS7 *p7, X509 *x509)
{
  v4 = OBJ_obj2nid(p7->type);
  if (v4 != 22 && v4 != 24)
  {
    v9 = 113;
    v10 = 315;
LABEL_11:
    ERR_put_error(33, 4095, v9, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_lib.c", v10);
    return 0;
  }

  ptr = p7->d.ptr;
  if (!*(ptr + 2))
  {
    v7 = sk_new_null();
    *(ptr + 2) = v7;
    if (!v7)
    {
      v9 = 65;
      v10 = 322;
      goto LABEL_11;
    }
  }

  v8 = 1;
  CRYPTO_add_lock(&x509->references, 1, 3, 0, 0);
  if (!sk_push(*(ptr + 2), x509))
  {
    X509_free(x509);
    return 0;
  }

  return v8;
}

int PKCS7_add_crl(PKCS7 *p7, X509_CRL *x509)
{
  v4 = OBJ_obj2nid(p7->type);
  if (v4 != 22 && v4 != 24)
  {
    v9 = 113;
    v10 = 349;
LABEL_11:
    ERR_put_error(33, 4095, v9, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_lib.c", v10);
    return 0;
  }

  ptr = p7->d.ptr;
  if (!*(ptr + 3))
  {
    v7 = sk_new_null();
    *(ptr + 3) = v7;
    if (!v7)
    {
      v9 = 65;
      v10 = 356;
      goto LABEL_11;
    }
  }

  v8 = 1;
  CRYPTO_add_lock(&x509->references, 1, 6, 0, 0);
  if (!sk_push(*(ptr + 3), x509))
  {
    X509_CRL_free(x509);
    return 0;
  }

  return v8;
}

int PKCS7_SIGNER_INFO_set(PKCS7_SIGNER_INFO *p7i, X509 *x509, EVP_PKEY *pkey, const EVP_MD *dgst)
{
  if (!ASN1_INTEGER_set(p7i->version, 1))
  {
    return 0;
  }

  issuer_and_serial = p7i->issuer_and_serial;
  issuer_name = X509_get_issuer_name(x509);
  if (!X509_NAME_set(&issuer_and_serial->issuer, issuer_name))
  {
    return 0;
  }

  ASN1_INTEGER_free(p7i->issuer_and_serial->serial);
  serialNumber = X509_get_serialNumber(x509);
  v11 = ASN1_INTEGER_dup(serialNumber);
  p7i->issuer_and_serial->serial = v11;
  if (!v11)
  {
    return 0;
  }

  CRYPTO_add_lock(&pkey->references, 1, 10, 0, 0);
  p7i->pkey = pkey;
  digest_alg = p7i->digest_alg;
  v13 = EVP_MD_type(dgst);
  v14 = OBJ_nid2obj(v13);
  X509_ALGOR_set0(digest_alg, v14, 5, 0);
  ptr = pkey->pkey.ptr;
  if (!ptr)
  {
    goto LABEL_8;
  }

  v16 = *(ptr + 22);
  if (!v16)
  {
    goto LABEL_8;
  }

  v17 = 1;
  v18 = v16(pkey, 1, 0, p7i);
  if (v18 <= 0)
  {
    if (v18 != -2)
    {
      v19 = 147;
      v20 = 404;
      goto LABEL_9;
    }

LABEL_8:
    v19 = 148;
    v20 = 408;
LABEL_9:
    ERR_put_error(33, 4095, v19, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_lib.c", v20);
    return 0;
  }

  return v17;
}

PKCS7_SIGNER_INFO *__cdecl PKCS7_add_signature(PKCS7 *p7, X509 *x509, EVP_PKEY *pkey, const EVP_MD *dgst)
{
  v4 = dgst;
  if (!dgst)
  {
    if (EVP_PKEY_get_default_digest_nid(pkey) < 1)
    {
      return 0;
    }

    v10 = OBJ_nid2sn(0);
    digestbyname = EVP_get_digestbyname(v10);
    if (!digestbyname)
    {
      ERR_put_error(33, 4095, 151, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_lib.c", 425);
      return 0;
    }

    v4 = digestbyname;
  }

  v8 = PKCS7_SIGNER_INFO_new();
  v9 = v8;
  if (v8 && (!PKCS7_SIGNER_INFO_set(v8, x509, pkey, v4) || !PKCS7_add_signer(p7, v9)))
  {
    PKCS7_SIGNER_INFO_free(v9);
    return 0;
  }

  return v9;
}

int PKCS7_set_digest(PKCS7 *p7, const EVP_MD *md)
{
  if (OBJ_obj2nid(p7->type) != 25)
  {
    ERR_put_error(33, 4095, 113, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_lib.c", 457);
    return 1;
  }

  v4 = ASN1_TYPE_new();
  *(*(p7->d.ptr + 1) + 8) = v4;
  if (v4)
  {
    **(*(p7->d.ptr + 1) + 8) = 5;
    v5 = EVP_MD_type(md);
    **(p7->d.ptr + 1) = OBJ_nid2obj(v5);
    return 1;
  }

  ERR_put_error(33, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_lib.c", 449);
  return 0;
}

STACK *__cdecl PKCS7_get_signer_info(STACK *p7)
{
  if (p7)
  {
    v1 = p7;
    if (*&p7[1].num && (OBJ_obj2nid(p7->comp) == 22 || OBJ_obj2nid(v1->comp) == 24))
    {
      return *(*&v1[1].num + 32);
    }

    else
    {
      return 0;
    }
  }

  return p7;
}

void *PKCS7_SIGNER_INFO_get0_algs(void *result, void *a2, void *a3, void *a4)
{
  if (a2)
  {
    *a2 = result[7];
  }

  if (a3)
  {
    *a3 = result[2];
  }

  if (a4)
  {
    *a4 = result[4];
  }

  return result;
}

uint64_t PKCS7_RECIP_INFO_get0_alg(uint64_t result, void *a2)
{
  if (a2)
  {
    *a2 = *(result + 16);
  }

  return result;
}

PKCS7_RECIP_INFO *__cdecl PKCS7_add_recipient(PKCS7 *p7, X509 *x509)
{
  v4 = PKCS7_RECIP_INFO_new();
  v5 = v4;
  if (v4 && (!PKCS7_RECIP_INFO_set(v4, x509) || !PKCS7_add_recipient_info(p7, v5)))
  {
    PKCS7_RECIP_INFO_free(v5);
    return 0;
  }

  return v5;
}

int PKCS7_RECIP_INFO_set(PKCS7_RECIP_INFO *p7i, X509 *x509)
{
  if (ASN1_INTEGER_set(p7i->version, 0))
  {
    issuer_and_serial = p7i->issuer_and_serial;
    issuer_name = X509_get_issuer_name(x509);
    if (X509_NAME_set(&issuer_and_serial->issuer, issuer_name))
    {
      ASN1_INTEGER_free(p7i->issuer_and_serial->serial);
      serialNumber = X509_get_serialNumber(x509);
      v7 = ASN1_INTEGER_dup(serialNumber);
      p7i->issuer_and_serial->serial = v7;
      if (v7)
      {
        pubkey = X509_get_pubkey(x509);
        v9 = pubkey;
        if (pubkey && (ptr = pubkey->pkey.ptr) != 0 && (v11 = *(ptr + 22)) != 0)
        {
          v12 = v11(pubkey, 2, 0, p7i);
          if (v12 == -2)
          {
            v13 = 150;
            v14 = 567;
          }

          else
          {
            if (v12 > 0)
            {
              EVP_PKEY_free(v9);
              v15 = 1;
              CRYPTO_add_lock(&x509->references, 1, 3, 0, 0);
              p7i->cert = x509;
              return v15;
            }

            v13 = 149;
            v14 = 571;
          }
        }

        else
        {
          v13 = 150;
          v14 = 560;
        }

        ERR_put_error(33, 4095, v13, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_lib.c", v14);
        EVP_PKEY_free(v9);
      }
    }
  }

  return 0;
}

int PKCS7_add_recipient_info(PKCS7 *p7, PKCS7_RECIP_INFO *ri)
{
  v4 = OBJ_obj2nid(p7->type);
  if (v4 == 24)
  {
    v5 = 48;
    return sk_push(*&p7->d.ptr[v5], ri) != 0;
  }

  if (v4 == 23)
  {
    v5 = 8;
    return sk_push(*&p7->d.ptr[v5], ri) != 0;
  }

  ERR_put_error(33, 4095, 113, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_lib.c", 531);
  return 0;
}

X509 *__cdecl PKCS7_cert_from_signer_info(PKCS7 *p7, PKCS7_SIGNER_INFO *si)
{
  if (OBJ_obj2nid(p7->type) != 22)
  {
    return 0;
  }

  v4 = *(p7->d.ptr + 2);
  issuer_and_serial = si->issuer_and_serial;
  issuer = issuer_and_serial->issuer;
  serial = issuer_and_serial->serial;

  return X509_find_by_issuer_and_serial(v4, issuer, serial);
}

int PKCS7_set_cipher(PKCS7 *p7, const EVP_CIPHER *cipher)
{
  v4 = OBJ_obj2nid(p7->type);
  if (v4 == 24)
  {
    v5 = 40;
  }

  else
  {
    if (v4 != 23)
    {
      v8 = 113;
      v9 = 615;
      goto LABEL_9;
    }

    v5 = 16;
  }

  v6 = *&p7->d.ptr[v5];
  if (EVP_CIPHER_type(cipher))
  {
    *(v6 + 24) = cipher;
    return 1;
  }

  v8 = 144;
  v9 = 622;
LABEL_9:
  ERR_put_error(33, 4095, v8, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_lib.c", v9);
  return 0;
}

ASN1_OCTET_STRING *PKCS7_stream(unsigned __int8 ***a1, uint64_t a2)
{
  v4 = OBJ_obj2nid(*(a2 + 24));
  result = 0;
  if (v4 > 22)
  {
    if (v4 == 23)
    {
      result = *(*(*(a2 + 32) + 16) + 16);
      if (result)
      {
        goto LABEL_15;
      }

      result = ASN1_OCTET_STRING_new();
      v6 = *(*(a2 + 32) + 16);
    }

    else
    {
      if (v4 != 24)
      {
        return result;
      }

      result = *(*(*(a2 + 32) + 40) + 16);
      if (result)
      {
        goto LABEL_15;
      }

      result = ASN1_OCTET_STRING_new();
      v6 = *(*(a2 + 32) + 40);
    }

    *(v6 + 16) = result;
    if (!result)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (v4 == 21)
  {
    result = *(a2 + 32);
    if (!result)
    {
      return result;
    }

LABEL_15:
    result->flags |= 0x10uLL;
    *a1 = &result->data;
    return 1;
  }

  if (v4 == 22)
  {
    result = *(*(*(a2 + 32) + 40) + 32);
    if (result)
    {
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t Camellia_set_key(unsigned __int8 *a1, int a2, unsigned int *a3)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a3)
  {
    if (a2 == 128 || a2 == 256 || a2 == 192)
    {
      v6 = Camellia_Ekeygen(a2, a1, a3);
      result = 0;
      a3[68] = v6;
    }

    else
    {
      return 4294967294;
    }
  }

  return result;
}

BN_BLINDING *__cdecl BN_BLINDING_new(const BIGNUM *A, const BIGNUM *Ai, BIGNUM *mod)
{
  v6 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A0040DBBD1971uLL);
  if (v6)
  {
    if ((!A || (v7 = BN_dup(A), (*v6 = v7) != 0)) && (!Ai || (v8 = BN_dup(Ai), (v6[1] = v8) != 0)) && (v9 = BN_dup(mod), (v6[3] = v9) != 0))
    {
      if (BN_get_flags(mod, 4u))
      {
        BN_set_flags(v6[3], 4);
      }

      *(v6 + 12) = -1;
      CRYPTO_THREADID_current(v6 + 4);
    }

    else
    {
      BN_BLINDING_free(v6);
      return 0;
    }
  }

  else
  {
    ERR_put_error(3, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_blind.c", 142);
  }

  return v6;
}

void BN_BLINDING_free(BN_BLINDING *b)
{
  if (b)
  {
    BN_free(*b);
    BN_free(*(b + 1));
    BN_free(*(b + 2));
    BN_free(*(b + 3));

    free(b);
  }
}

int BN_BLINDING_update(BN_BLINDING *b, BN_CTX *ctx)
{
  v3 = *b;
  if (!v3 || !*(b + 1))
  {
    ERR_put_error(3, 4095, 107, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_blind.c", 192);
    LODWORD(param) = 0;
    goto LABEL_15;
  }

  v5 = *(b + 12);
  if (v5 == -1)
  {
    *(b + 12) = 1;
  }

  else
  {
    v6 = v5 + 1;
    *(b + 12) = v6;
    if (v6 == 32 && *(b + 2) && (*(b + 56) & 2) == 0)
    {
      param = BN_BLINDING_create_param(b, 0, 0, ctx, 0, 0);
      if (!param)
      {
        goto LABEL_15;
      }

LABEL_14:
      LODWORD(param) = 1;
      goto LABEL_15;
    }
  }

  if (*(b + 56))
  {
    goto LABEL_14;
  }

  LODWORD(param) = BN_mod_mul(v3, v3, v3, *(b + 3), ctx);
  if (param)
  {
    LODWORD(param) = BN_mod_mul(*(b + 1), *(b + 1), *(b + 1), *(b + 3), ctx);
    if (param)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  if (*(b + 12) == 32)
  {
    *(b + 12) = 0;
  }

  return param;
}

BN_BLINDING *__cdecl BN_BLINDING_create_param(BN_BLINDING *b, const BIGNUM *e, BIGNUM *m, BN_CTX *ctx, int (__cdecl *bn_mod_exp)(BIGNUM *, const BIGNUM *, const BIGNUM *, const BIGNUM *, BN_CTX *, BN_MONT_CTX *), BN_MONT_CTX *m_ctx)
{
  v11 = b;
  if (!b)
  {
    v11 = BN_BLINDING_new(0, 0, m);
    if (!v11)
    {
      return v11;
    }
  }

  if (!*v11)
  {
    v12 = BN_new();
    *v11 = v12;
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  if (!*(v11 + 1))
  {
    v13 = BN_new();
    *(v11 + 1) = v13;
    if (!v13)
    {
      goto LABEL_20;
    }
  }

  v14 = *(v11 + 2);
  if (e)
  {
    BN_free(v14);
    v14 = BN_dup(e);
    *(v11 + 2) = v14;
  }

  if (!v14)
  {
    goto LABEL_20;
  }

  if (bn_mod_exp)
  {
    *(v11 + 9) = bn_mod_exp;
  }

  if (m_ctx)
  {
    *(v11 + 8) = m_ctx;
  }

  if (!BN_rand_range(*v11, *(v11 + 3)))
  {
LABEL_20:
    if (b)
    {
      return v11;
    }

LABEL_21:
    BN_BLINDING_free(v11);
    return 0;
  }

  v15 = -33;
  while (!BN_mod_inverse_ct(*(v11 + 1), *v11, *(v11 + 3), ctx))
  {
    if ((ERR_peek_last_error() & 0xFFF) != 0x6C)
    {
      goto LABEL_20;
    }

    if (__CFADD__(v15++, 1))
    {
      ERR_put_error(3, 4095, 113, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_blind.c", 337);
      if (b)
      {
        return v11;
      }

      goto LABEL_21;
    }

    ERR_clear_error();
    if (!BN_rand_range(*v11, *(v11 + 3)))
    {
      goto LABEL_20;
    }
  }

  v18 = *(v11 + 9);
  if (v18 && *(v11 + 8))
  {
    v19 = v18(*v11, *v11, *(v11 + 2), *(v11 + 3), ctx);
    if (b)
    {
      return v11;
    }
  }

  else
  {
    v19 = BN_mod_exp_ct(*v11, *v11, *(v11 + 2), *(v11 + 3), ctx);
    if (b)
    {
      return v11;
    }
  }

  if (!v19)
  {
    goto LABEL_21;
  }

  return v11;
}

int BN_BLINDING_convert_ex(BIGNUM *n, BIGNUM *r, BN_BLINDING *b, BN_CTX *a4)
{
  if (!*b || !*(b + 1))
  {
    ERR_put_error(3, 4095, 107, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_blind.c", 232);
    return 0;
  }

  if (*(b + 12) == -1)
  {
    *(b + 12) = 0;
    if (r)
    {
LABEL_6:
      v9 = bn_copy(r, *(b + 1));
      return BN_mod_mul(n, n, *b, *(b + 3), a4) && v9;
    }
  }

  else
  {
    result = BN_BLINDING_update(b, a4);
    if (!result)
    {
      return result;
    }

    if (r)
    {
      goto LABEL_6;
    }
  }

  v9 = 1;
  return BN_mod_mul(n, n, *b, *(b + 3), a4) && v9;
}

int BN_BLINDING_invert_ex(BIGNUM *n, const BIGNUM *r, BN_BLINDING *b, BN_CTX *a4)
{
  if (r)
  {
    v6 = r;
  }

  else
  {
    v6 = *(b + 1);
    if (!v6)
    {
      ERR_put_error(3, 4095, 107, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_blind.c", 269);
      return 0;
    }
  }

  v7 = *(b + 3);

  return BN_mod_mul(n, n, v6, v7, a4);
}

uint64_t rc4_hmac_md5_init_key(const EVP_CIPHER_CTX *a1, const unsigned __int8 *a2)
{
  cipher_data = a1->cipher_data;
  v4 = EVP_CIPHER_CTX_key_length(a1);
  RC4_set_key(cipher_data, v4, a2);
  MD5_Init((cipher_data + 1032));
  v5 = *(cipher_data + 1064);
  v6 = *(cipher_data + 1080);
  *(cipher_data + 1156) = v5;
  *(cipher_data + 1172) = v6;
  v7 = *(cipher_data + 1096);
  *(cipher_data + 1188) = v7;
  v8 = *(cipher_data + 1108);
  *(cipher_data + 75) = v8;
  v9 = *(cipher_data + 1032);
  v10 = *(cipher_data + 1048);
  *(cipher_data + 1124) = v9;
  *(cipher_data + 1140) = v10;
  *(cipher_data + 78) = v5;
  *(cipher_data + 79) = v6;
  *(cipher_data + 80) = v7;
  *(cipher_data + 1292) = v8;
  *(cipher_data + 76) = v9;
  *(cipher_data + 77) = v10;
  *(cipher_data + 164) = -1;
  return 1;
}

uint64_t rc4_hmac_md5_cipher(uint64_t a1, unsigned __int8 *outdata, unsigned __int8 *indata, size_t len)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 120);
  v5 = *(v4 + 1312);
  if (v5 == -1 || v5 + 16 == len)
  {
    if (*(a1 + 16))
    {
      if (v5 == -1)
      {
        v5 = len;
      }

      MD5_Update((v4 + 1216), indata, v5);
      if (v5 == len)
      {
        v10 = v4;
        v11 = len;
        v12 = indata;
      }

      else
      {
        if (indata != outdata)
        {
          memcpy(outdata, indata, v5);
        }

        MD5_Final(&outdata[v5], (v4 + 1216));
        v17 = *(v4 + 1172);
        *(v4 + 1248) = *(v4 + 1156);
        *(v4 + 1264) = v17;
        *(v4 + 1280) = *(v4 + 1188);
        *(v4 + 1292) = *(v4 + 1200);
        v18 = *(v4 + 1140);
        *(v4 + 1216) = *(v4 + 1124);
        *(v4 + 1232) = v18;
        MD5_Update((v4 + 1216), &outdata[v5], 0x10uLL);
        MD5_Final(&outdata[v5], (v4 + 1216));
        v10 = v4;
        v11 = len;
        v12 = outdata;
      }

      RC4(v10, v11, v12, outdata);
    }

    else
    {
      RC4(*(a1 + 120), len, indata, outdata);
      if (v5 == -1)
      {
        MD5_Update((v4 + 1216), outdata, len);
      }

      else
      {
        MD5_Update((v4 + 1216), outdata, v5);
        MD5_Final(md, (v4 + 1216));
        v13 = *(v4 + 1172);
        *(v4 + 1248) = *(v4 + 1156);
        *(v4 + 1264) = v13;
        *(v4 + 1280) = *(v4 + 1188);
        *(v4 + 1292) = *(v4 + 1200);
        v14 = *(v4 + 1140);
        *(v4 + 1216) = *(v4 + 1124);
        *(v4 + 1232) = v14;
        MD5_Update((v4 + 1216), md, 0x10uLL);
        MD5_Final(md, (v4 + 1216));
        if (*&outdata[v5] != *md || *&outdata[v5 + 8] != v21)
        {
          goto LABEL_16;
        }
      }
    }

    *(v4 + 1312) = -1;
    result = 1;
    goto LABEL_22;
  }

LABEL_16:
  result = 0;
LABEL_22:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t rc4_hmac_md5_ctrl(uint64_t a1, int a2, int a3, char *data)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 120);
  if (a2 == 22)
  {
    v7 = &data[a3];
    v8 = __rev16(*(v7 - 1));
    if (!*(a1 + 16))
    {
      v9 = v8 >= 0x10;
      v8 -= 16;
      if (!v9)
      {
        goto LABEL_7;
      }

      *(v7 - 1) = bswap32(v8) >> 16;
    }

    v15 = *(v6 + 1080);
    *(v6 + 1248) = *(v6 + 1064);
    *(v6 + 1264) = v15;
    *(v6 + 1280) = *(v6 + 1096);
    *(v6 + 1292) = *(v6 + 1108);
    v16 = *(v6 + 1048);
    *(v6 + 1216) = *(v6 + 1032);
    *(v6 + 1312) = v8;
    *(v6 + 1232) = v16;
    MD5_Update((v6 + 1216), data, a3);
    result = 16;
    goto LABEL_16;
  }

  if (a2 != 23)
  {
LABEL_7:
    result = 0xFFFFFFFFLL;
    goto LABEL_16;
  }

  memset(v18, 0, sizeof(v18));
  if (a3 < 65)
  {
    __memcpy_chk();
  }

  else
  {
    MD5_Init((v6 + 1032));
    MD5_Update((v6 + 1032), data, a3);
    MD5_Final(v18, (v6 + 1032));
  }

  v11 = 0;
  v12.i64[0] = 0x3636363636363636;
  v12.i64[1] = 0x3636363636363636;
  do
  {
    v18[v11] = veorq_s8(v18[v11], v12);
    ++v11;
  }

  while (v11 != 4);
  MD5_Init((v6 + 1032));
  MD5_Update((v6 + 1032), v18, 0x40uLL);
  v13 = 0;
  v14.i64[0] = 0x6A6A6A6A6A6A6A6ALL;
  v14.i64[1] = 0x6A6A6A6A6A6A6A6ALL;
  do
  {
    v18[v13] = veorq_s8(v18[v13], v14);
    ++v13;
  }

  while (v13 != 4);
  MD5_Init((v6 + 1124));
  MD5_Update((v6 + 1124), v18, 0x40uLL);
  result = 1;
LABEL_16:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void EVP_EncodeUpdate(EVP_ENCODE_CTX *ctx, unsigned __int8 *out, int *outl, const unsigned __int8 *in, int inl)
{
  *outl = 0;
  if (inl >= 1)
  {
    v5 = inl;
    v6 = in;
    length = ctx->length;
    if (length >= 81)
    {
      OpenSSLDie("/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/encode.c", 156, "ctx->length <= (int)sizeof(ctx->enc_data)");
    }

    num = ctx->num;
    v12 = length - num;
    v13 = inl - v12;
    if (inl >= v12)
    {
      if (num)
      {
        memcpy(&ctx->enc_data[num], in, length - num);
        v6 += v12;
        v14 = EVP_EncodeBlock(out, ctx->enc_data, ctx->length);
        ctx->num = 0;
        v15 = &out[v14];
        *v15 = 10;
        out = v15 + 1;
        v16 = v14 + 1;
        length = ctx->length;
        v5 = v13;
      }

      else
      {
        v16 = 0;
      }

      if (v5 >= length && !(v16 >> 31))
      {
        do
        {
          v17 = EVP_EncodeBlock(out, v6, length);
          v18 = ctx->length;
          v6 += v18;
          v5 -= v18;
          v19 = &out[v17];
          *v19 = 10;
          out = v19 + 1;
          v16 += v17 + 1;
          length = ctx->length;
        }

        while (v5 >= length && v16 >> 31 == 0);
      }

      if (v16 >> 31)
      {
        *outl = 0;
      }

      else
      {
        if (v5)
        {
          memcpy(ctx->enc_data, v6, v5);
        }

        ctx->num = v5;
        *outl = v16;
      }
    }

    else
    {
      memcpy(&ctx->enc_data[num], in, inl);
      ctx->num += v5;
    }
  }
}

int EVP_EncodeBlock(unsigned __int8 *t, const unsigned __int8 *f, int n)
{
  if (n < 1)
  {
    LODWORD(v4) = 0;
  }

  else
  {
    v4 = 0;
    v5 = f + 1;
    while (1)
    {
      v6 = *(v5 - 1);
      v7 = v6 << 16;
      if (n <= 2)
      {
        break;
      }

      v8 = *v5;
      v9 = v5[1];
      v10 = v9 | (v8 << 8);
      v11 = v7 | (v8 << 8);
      v12 = &t[v4];
      *v12 = data_bin2ascii[v6 >> 2];
      v12[1] = data_bin2ascii[(v11 >> 12) & 0x3F];
      v12[2] = data_bin2ascii[(v10 >> 6) & 0x3F];
      v12[3] = data_bin2ascii[v9 & 0x3F];
      v4 += 4;
      v5 += 3;
      n -= 3;
      if (!n)
      {
        t += v4;
        goto LABEL_12;
      }
    }

    if (n == 2)
    {
      v7 |= *v5 << 8;
    }

    v13 = &t[v4];
    *v13 = data_bin2ascii[v7 >> 18];
    v13[1] = data_bin2ascii[(v7 >> 12) & 0x3F];
    v14 = 61;
    if (n != 1)
    {
      v14 = data_bin2ascii[(v7 >> 6) & 0x3F];
    }

    v13[2] = v14;
    v13[3] = 61;
    t = v13 + 4;
    LODWORD(v4) = v4 + 4;
  }

LABEL_12:
  *t = 0;
  return v4;
}

void EVP_EncodeFinal(EVP_ENCODE_CTX *ctx, unsigned __int8 *out, int *outl)
{
  if (ctx->num)
  {
    v6 = EVP_EncodeBlock(out, ctx->enc_data, ctx->num);
    out[v6] = 10;
    v7 = v6 + 1;
    out[v6 + 1] = 0;
    ctx->num = 0;
  }

  else
  {
    v7 = 0;
  }

  *outl = v7;
}

int EVP_DecodeUpdate(EVP_ENCODE_CTX *ctx, unsigned __int8 *out, int *outl, const unsigned __int8 *in, int inl)
{
  v9 = ctx;
  enc_data = ctx->enc_data;
  num = ctx->num;
  if (num < 1 || enc_data[num - 1] != 61)
  {
    v12 = 0;
    if (inl)
    {
      goto LABEL_8;
    }

LABEL_29:
    result = 0;
    v14 = 0;
    goto LABEL_48;
  }

  v12 = 1;
  if (num != 1)
  {
    if (enc_data[num - 2] == 61)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }
  }

  if (!inl)
  {
    goto LABEL_29;
  }

LABEL_8:
  if (inl >= 1)
  {
    v13 = 0;
    v14 = 0;
    v15 = 1;
    v16 = inl;
    v17 = data_ascii2bin;
    while (1)
    {
      v19 = *in++;
      v18 = v19;
      if (v19 < 0 || (v20 = v17[v18], v20 == 255))
      {
LABEL_30:
        result = -1;
        goto LABEL_31;
      }

      if (v18 == 61)
      {
        ++v12;
      }

      else
      {
        if (v12 < 1)
        {
          v12 = 0;
          goto LABEL_17;
        }

        if ((v20 & 0xEC) != 0xE0)
        {
          goto LABEL_30;
        }
      }

      if (v12 > 2)
      {
        goto LABEL_30;
      }

LABEL_17:
      if (v18 == 45)
      {
        goto LABEL_33;
      }

      if ((v20 & 0xEC) != 0xE0)
      {
        if (num > 63)
        {
          goto LABEL_30;
        }

        enc_data[num] = v18;
        LODWORD(num) = num + 1;
      }

      if (num == 64)
      {
        v21 = v17;
        v22 = EVP_DecodeBlock(out, enc_data, 64);
        result = -1;
        if (v22 < 0 || (v24 = __OFSUB__(v22, v12), v25 = v22 - v12, (v25 < 0) ^ v24))
        {
          LODWORD(num) = 0;
LABEL_31:
          v9 = ctx;
          goto LABEL_48;
        }

        LODWORD(num) = 0;
        v14 += v25;
        out += v25;
        v17 = v21;
      }

      v13 = v15++ >= inl;
      if (!--v16)
      {
        goto LABEL_33;
      }
    }
  }

  v14 = 0;
  v13 = 1;
LABEL_33:
  if (num < 1)
  {
    v9 = ctx;
  }

  else
  {
    v9 = ctx;
    if ((num & 3) != 0)
    {
      if (!v13)
      {
        result = -1;
        goto LABEL_48;
      }
    }

    else
    {
      v26 = EVP_DecodeBlock(out, enc_data, num);
      LODWORD(num) = 0;
      result = -1;
      if (v26 < 0 || v12 > v26)
      {
        goto LABEL_48;
      }

      LODWORD(num) = 0;
      v14 = v14 - v12 + v26;
    }
  }

  if (v12)
  {
    v27 = num == 0;
  }

  else
  {
    v27 = 0;
  }

  v28 = !v27;
  result = v13 & v28;
LABEL_48:
  *outl = v14;
  v9->num = num;
  return result;
}

int EVP_DecodeBlock(unsigned __int8 *t, const unsigned __int8 *f, int n)
{
  v3 = n;
  if ((*f & 0x80000000) == 0)
  {
    v4 = *f;
    do
    {
      if (v4 != 32 && v4 != 9 || v3 <= 0)
      {
        break;
      }

      v7 = *++f;
      --v3;
      v4 = v7;
    }

    while ((v7 & 0x80000000) == 0);
  }

  v8 = &f[v3 - 1];
  do
  {
    v9 = v3;
    if (v3 < 4)
    {
      break;
    }

    v3 = *v8;
    if (v3 < 0)
    {
      break;
    }

    v10 = data_ascii2bin[v3] & 0xEC;
    --v8;
    LODWORD(v3) = v9 - 1;
  }

  while (v10 == 224);
  if ((v9 & 3) != 0)
  {
    return -1;
  }

  if (v9 < 1)
  {
    return 0;
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = &f[v13];
    v16 = f[v13];
    v17 = v16 < 0 ? 255 : data_ascii2bin[v16];
    v18 = v15[1];
    v19 = v18 < 0 ? 255 : data_ascii2bin[v18];
    v20 = v15[2];
    v21 = v20 < 0 ? 255 : data_ascii2bin[v20];
    v22 = v15[3];
    v23 = v22 < 0 ? -1 : data_ascii2bin[v22];
    v11 = -1;
    if ((v17 & 0x80) != 0 || v19 < 0 || v21 < 0 || v23 < 0)
    {
      break;
    }

    v24 = &t[v14];
    *v24 = ((v19 << 12) | (v17 << 18)) >> 16;
    v24[1] = ((v21 << 6) | (v19 << 12)) >> 8;
    v24[2] = v23 | (v21 << 6);
    v14 += 3;
    v13 += 4;
    if (v13 >= v9)
    {
      return v14;
    }
  }

  return v11;
}

int EVP_DecodeFinal(EVP_ENCODE_CTX *ctx, unsigned __int8 *out, int *outl)
{
  *outl = 0;
  if (!ctx->num)
  {
    return 1;
  }

  v5 = EVP_DecodeBlock(out, ctx->enc_data, ctx->num);
  if ((v5 & 0x80000000) == 0)
  {
    ctx->num = 0;
    *outl = v5;
    return 1;
  }

  return -1;
}

void CAST_cfb64_encrypt(const unsigned __int8 *in, unsigned __int8 *out, uint64_t length, const CAST_KEY *schedule, unsigned __int8 *ivec, int *num, int enc)
{
  v10 = length;
  v21[1] = *MEMORY[0x277D85DE8];
  v13 = *num;
  if (enc)
  {
    if (length)
    {
      do
      {
        if (!v13)
        {
          v21[0] = __PAIR64__(bswap32(*(ivec + 1)), bswap32(*ivec));
          CAST_encrypt(v21, schedule);
          v14 = bswap32(HIDWORD(v21[0]));
          *ivec = bswap32(v21[0]);
          *(ivec + 1) = v14;
        }

        v15 = *in++;
        v16 = ivec[v13];
        *out++ = v16 ^ v15;
        ivec[v13] = v16 ^ v15;
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
        v21[0] = __PAIR64__(bswap32(*(ivec + 1)), bswap32(*ivec));
        CAST_encrypt(v21, schedule);
        v17 = bswap32(HIDWORD(v21[0]));
        *ivec = bswap32(v21[0]);
        *(ivec + 1) = v17;
      }

      v18 = *in++;
      v19 = ivec[v13];
      ivec[v13] = v18;
      *out++ = v19 ^ v18;
      v13 = (v13 + 1) & 7;
      --v10;
    }

    while (v10);
  }

  *num = v13;
  v20 = *MEMORY[0x277D85DE8];
}

uint64_t pkey_rsa_init(uint64_t a1)
{
  result = malloc_type_calloc(1uLL, 0x50uLL, 0x107004004B23913uLL);
  if (result)
  {
    *result = 2048;
    if (**a1 == 912)
    {
      v3 = 6;
    }

    else
    {
      v3 = 1;
    }

    *(result + 24) = v3;
    *(result + 48) = -2;
    *(a1 + 40) = result;
    *(a1 + 64) = result + 16;
    *(a1 + 72) = 2;
    return 1;
  }

  return result;
}

uint64_t pkey_rsa_copy(uint64_t a1, uint64_t a2)
{
  result = pkey_rsa_init(a1);
  if (result)
  {
    v5 = *(a2 + 40);
    v6 = *(a1 + 40);
    *v6 = *v5;
    if (!*(v5 + 8) || (BN_free(*(v6 + 8)), result = BN_dup(*(v5 + 8)), (*(v6 + 8) = result) != 0))
    {
      *(v6 + 24) = *(v5 + 24);
      *(v6 + 32) = *(v5 + 32);
      if (*(v5 + 64))
      {
        free(*(v6 + 64));
        result = malloc_type_calloc(1uLL, *(v5 + 72), 0xA8768DD4uLL);
        *(v6 + 64) = result;
        if (!result)
        {
          return result;
        }

        memcpy(result, *(v5 + 64), *(v5 + 72));
        *(v6 + 72) = *(v5 + 72);
      }

      return 1;
    }
  }

  return result;
}

void pkey_rsa_cleanup(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    BN_free(*(v1 + 8));
    free(*(v1 + 56));
    free(*(v1 + 64));

    free(v1);
  }
}

uint64_t pkey_rsa_keygen(uint64_t a1, EVP_PKEY *a2)
{
  v4 = *(a1 + 40);
  memset(v18, 0, sizeof(v18));
  if (!*(v4 + 8))
  {
    v8 = BN_new();
    *(v4 + 8) = v8;
    if (!v8 || !BN_set_word(v8, 0x10001uLL))
    {
      return 0;
    }
  }

  v5 = RSA_new();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (*(a1 + 56))
  {
    v7 = v18;
    evp_pkey_set_cb_translate(v18, a1);
  }

  else
  {
    v7 = 0;
  }

  key = RSA_generate_key_ex(v6, *v4, *(v4 + 8), v7);
  if (key >= 1)
  {
    v10 = **a1;
    if (v10 != 912)
    {
LABEL_21:
      EVP_PKEY_assign(a2, v10, v6);
      return key;
    }

    v11 = *(a1 + 40);
    v12 = *(v11 + 32);
    v13 = *(v11 + 40);
    v14 = *(v11 + 48);
    if (!(v12 | v13))
    {
      if (v14 == -2)
      {
        v10 = 912;
        goto LABEL_21;
      }

      v13 = 0;
    }

    if (v14 == -2)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    v16 = rsa_pss_params_create(v12, v13, v15);
    v6->ex_data.sk = v16;
    if (v16)
    {
      v10 = **a1;
      goto LABEL_21;
    }

    RSA_free(v6);
    return 0;
  }

  RSA_free(v6);
  return key;
}

uint64_t pkey_rsa_sign(uint64_t a1, unsigned __int8 *to, void *a3, unsigned __int8 *from, size_t flen)
{
  v10 = *(a1 + 40);
  v11 = *(a1 + 16);
  v12 = *(v11 + 32);
  v13 = *(v10 + 32);
  if (!v13)
  {
    v17 = *(v10 + 24);
    v18 = flen;
    v19 = from;
    v20 = to;
    v21 = *(v11 + 32);
LABEL_9:
    result = RSA_private_encrypt(v18, v19, v20, v21, v17);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

LABEL_10:
    *a3 = result;
    return 1;
  }

  if (EVP_MD_size(v13) != flen)
  {
    v15 = 143;
    v16 = 196;
    goto LABEL_12;
  }

  v14 = *(v10 + 24);
  if (v14 != 1)
  {
    if (v14 == 6)
    {
      if (!setup_tbuf(v10, a1) || !RSA_padding_add_PKCS1_PSS_mgf1(v12, *(v10 + 56), from, *(v10 + 32), *(v10 + 40), *(v10 + 48)))
      {
        return 0xFFFFFFFFLL;
      }

      v18 = RSA_size(v12);
      v19 = *(v10 + 56);
      v20 = to;
      v21 = v12;
      v17 = 3;
    }

    else
    {
      if (v14 != 5)
      {
        return 0xFFFFFFFFLL;
      }

      if (flen + 1 > EVP_PKEY_size(*(a1 + 16)))
      {
        v15 = 120;
        v16 = 202;
LABEL_12:
        ERR_put_error(4, 4095, v15, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_pmeth.c", v16);
        return 0xFFFFFFFFLL;
      }

      if (!setup_tbuf(v10, a1))
      {
        v15 = 65;
        v16 = 206;
        goto LABEL_12;
      }

      memcpy(*(v10 + 56), from, flen);
      v24 = EVP_MD_type(*(v10 + 32));
      *(*(v10 + 56) + flen) = RSA_X931_hash_id(v24);
      v19 = *(v10 + 56);
      v18 = flen + 1;
      v20 = to;
      v21 = v12;
      v17 = 5;
    }

    goto LABEL_9;
  }

  siglen = 0;
  v23 = EVP_MD_type(*(v10 + 32));
  result = RSA_sign(v23, from, flen, to, &siglen, v12);
  if (result > 0)
  {
    result = siglen;
    if ((siglen & 0x80000000) == 0)
    {
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t pkey_rsa_verify(uint64_t a1, unsigned __int8 *a2, size_t a3, const void *a4, size_t a5)
{
  v10 = *(a1 + 40);
  v11 = *(*(a1 + 16) + 32);
  v12 = *(v10 + 32);
  if (!v12)
  {
    if (setup_tbuf(v10, a1))
    {
      v15 = RSA_public_decrypt(a3, a2, *(v10 + 56), v11, *(v10 + 24));
      if (v15 >= 1)
      {
        v16 = v15;
        goto LABEL_9;
      }

      return 0;
    }

    return 0xFFFFFFFFLL;
  }

  if (*(v10 + 24) != 1)
  {
    if (EVP_MD_size(v12) == a5)
    {
      v17 = *(v10 + 24);
      if (v17 == 6)
      {
        if (setup_tbuf(v10, a1))
        {
          if (RSA_public_decrypt(a3, a2, *(v10 + 56), v11, 3) >= 1)
          {
            return RSA_verify_PKCS1_PSS_mgf1(v11, a4, *(v10 + 32), *(v10 + 40), *(v10 + 56), *(v10 + 48)) > 0;
          }

          return 0;
        }
      }

      else if (v17 == 5)
      {
        v18 = 0;
        if (pkey_rsa_verifyrecover(a1, 0, &v18, a2, a3) >= 1)
        {
          v16 = v18;
LABEL_9:
          if (v16 == a5)
          {
            return timingsafe_bcmp(a4, *(v10 + 56), a5) == 0;
          }

          return 0;
        }

        return 0;
      }
    }

    else
    {
      ERR_put_error(4, 4095, 143, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_pmeth.c", 304);
    }

    return 0xFFFFFFFFLL;
  }

  v13 = EVP_MD_type(v12);

  return RSA_verify(v13, a4, a5, a2, a3, v11);
}

uint64_t pkey_rsa_verifyrecover(uint64_t a1, unsigned __int8 *to, size_t *a3, unsigned __int8 *from, size_t flen)
{
  v10 = *(a1 + 40);
  v11 = *(v10 + 32);
  if (v11)
  {
    v12 = *(v10 + 24);
    if (v12 != 1)
    {
      if (v12 != 5 || !setup_tbuf(v10, a1))
      {
        return 0xFFFFFFFFLL;
      }

      v13 = RSA_public_decrypt(flen, from, *(v10 + 56), *(*(a1 + 16) + 32), 5);
      v14 = (v13 - 1);
      if (v13 >= 1)
      {
        v15 = *(*(v10 + 56) + v14);
        v16 = EVP_MD_type(*(v10 + 32));
        if (RSA_X931_hash_id(v16) == v15)
        {
          if (v14 == EVP_MD_size(*(v10 + 32)))
          {
            if (to)
            {
              memcpy(to, *(v10 + 56), v14);
            }

            goto LABEL_16;
          }

          v19 = 143;
          v20 = 265;
        }

        else
        {
          v19 = 100;
          v20 = 261;
        }

        ERR_put_error(4, 4095, v19, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_pmeth.c", v20);
      }

      return 0;
    }

    v21 = 0;
    v18 = EVP_MD_type(v11);
    if (int_rsa_verify(v18, 0, 0, to, &v21, from, flen, *(*(a1 + 16) + 32)) <= 0)
    {
      return 0;
    }

    result = v21;
    if ((v21 & 0x80000000) != 0)
    {
      return result;
    }

LABEL_15:
    v14 = result;
LABEL_16:
    *a3 = v14;
    return 1;
  }

  result = RSA_public_decrypt(flen, from, to, *(*(a1 + 16) + 32), *(v10 + 24));
  if ((result & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t pkey_rsa_encrypt(uint64_t a1, unsigned __int8 *to, void *a3, unsigned __int8 *from, int flen)
{
  v9 = *(a1 + 40);
  v10 = *(v9 + 24);
  if (v10 == 4)
  {
    v11 = RSA_size(*(*(a1 + 16) + 32));
    if (setup_tbuf(v9, a1))
    {
      RSA_padding_add_PKCS1_OAEP_mgf1(*(v9 + 56), v11, from, flen, *(v9 + 64), *(v9 + 72), *(v9 + 32), *(v9 + 40));
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    result = RSA_public_encrypt(flen, from, to, *(*(a1 + 16) + 32), v10);
    if ((result & 0x80000000) == 0)
    {
      *a3 = result;
      return 1;
    }
  }

  return result;
}

uint64_t pkey_rsa_decrypt(uint64_t a1, unsigned __int8 *to, void *a3, unsigned __int8 *from, int flen)
{
  v10 = *(a1 + 40);
  v11 = *(v10 + 24);
  if (v11 != 4)
  {
    v13 = RSA_private_decrypt(flen, from, to, *(*(a1 + 16) + 32), v11);
LABEL_6:
    v12 = v13;
    if ((v13 & 0x80000000) == 0)
    {
      *a3 = v13;
      return 1;
    }

    return v12;
  }

  if (!setup_tbuf(*(a1 + 40), a1))
  {
    return 0xFFFFFFFFLL;
  }

  v12 = RSA_private_decrypt(flen, from, *(v10 + 56), *(*(a1 + 16) + 32), 3);
  if (v12 >= 1)
  {
    v13 = RSA_padding_check_PKCS1_OAEP_mgf1(to, v12, *(v10 + 56), v12, v12, *(v10 + 64), *(v10 + 72), *(v10 + 32), *(v10 + 40));
    goto LABEL_6;
  }

  return v12;
}

uint64_t pkey_rsa_ctrl(uint64_t a1, int a2, int a3, EVP_MD *a4)
{
  v7 = *(a1 + 40);
  if (a2 > 4097)
  {
    if (a2 <= 4102)
    {
      if (a2 <= 4099)
      {
        if (a2 == 4098)
        {
          goto LABEL_40;
        }

        if (a3 > 511)
        {
          *v7 = a3;
          return 1;
        }

        v10 = 120;
        v11 = 513;
      }

      else
      {
        if (a2 != 4100)
        {
          if (a2 == 4101)
          {
            goto LABEL_36;
          }

          v9 = *(v7 + 24);
LABEL_43:
          a4->type = v9;
          return 1;
        }

        if (a4 && BN_is_odd(a4) && !BN_is_one(a4))
        {
          BN_free(*(v7 + 8));
          *(v7 + 8) = a4;
          return 1;
        }

        v10 = 101;
        v11 = 522;
      }
    }

    else
    {
      if (a2 <= 4105)
      {
        if (a2 != 4103)
        {
          if (a2 != 4104)
          {
            goto LABEL_44;
          }

LABEL_36:
          if ((*(v7 + 24) | 2) != 6)
          {
            v10 = 156;
            v11 = 561;
            goto LABEL_81;
          }

          if (a2 != 4104)
          {
            if (*(v7 + 52) == -1)
            {
              *(v7 + 40) = a4;
              return 1;
            }

            v16 = EVP_MD_type(*(v7 + 40));
            if (v16 == EVP_MD_type(a4))
            {
              return 1;
            }

            v14 = 152;
            v15 = 573;
LABEL_67:
            ERR_put_error(4, 4095, v14, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_pmeth.c", v15);
            return 0;
          }

          v12 = *(v7 + 40);
          if (v12)
          {
LABEL_47:
            *&a4->type = v12;
            return 1;
          }

          goto LABEL_46;
        }

LABEL_40:
        if (*(v7 + 24) != 6)
        {
          v10 = 146;
          v11 = 486;
          goto LABEL_81;
        }

        if (a2 == 4103)
        {
          v9 = *(v7 + 48);
          goto LABEL_43;
        }

        if (a3 < -3)
        {
          return 4294967294;
        }

        v17 = *(v7 + 52);
        if (v17 != -1)
        {
          if (a3 == -1)
          {
            if (v17 <= EVP_MD_size(*(v7 + 32)))
            {
              goto LABEL_93;
            }
          }

          else
          {
            if (a3 == -2)
            {
              if (*(a1 + 32) == 16)
              {
                v10 = 146;
                v11 = 497;
                goto LABEL_81;
              }

              goto LABEL_93;
            }

            if (a3 < 0 || v17 <= a3)
            {
              goto LABEL_93;
            }
          }

          v14 = 164;
          v15 = 503;
          goto LABEL_67;
        }

LABEL_93:
        *(v7 + 48) = a3;
        return 1;
      }

      if (a2 == 4106)
      {
        if (*(v7 + 24) == 4)
        {
          free(*(v7 + 64));
          if (a3 >= 1 && a4)
          {
            *(v7 + 64) = a4;
            *(v7 + 72) = a3;
          }

          else
          {
            *(v7 + 64) = 0;
            *(v7 + 72) = 0;
          }

          return 1;
        }

        v10 = 141;
        v11 = 582;
        goto LABEL_81;
      }

      if (a2 == 4107)
      {
LABEL_44:
        if (*(v7 + 24) != 4)
        {
          v10 = 141;
          v11 = 532;
          goto LABEL_81;
        }

        if (a2 != 4107)
        {
          goto LABEL_62;
        }

LABEL_46:
        v12 = *(v7 + 32);
        goto LABEL_47;
      }

      if (a2 != 4108)
      {
        return 4294967294;
      }

      if (*(v7 + 24) == 4)
      {
        *&a4->type = *(v7 + 64);
        return *(v7 + 72);
      }

      v10 = 141;
      v11 = 597;
    }

LABEL_81:
    ERR_put_error(4, 4095, v10, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_pmeth.c", v11);
    return 4294967294;
  }

  if (a2 <= 2)
  {
    if (a2 != 1)
    {
      if (a2 != 2)
      {
        return 4294967294;
      }

      goto LABEL_32;
    }

    result = check_padding_md(a4, *(v7 + 24));
    if (!result)
    {
      return result;
    }

    if (*(v7 + 52) != -1)
    {
      v13 = EVP_MD_type(*(v7 + 32));
      if (v13 == EVP_MD_type(a4))
      {
        return 1;
      }

      v14 = 145;
      v15 = 547;
      goto LABEL_67;
    }

LABEL_62:
    *(v7 + 32) = a4;
    return 1;
  }

  if (a2 > 0xD)
  {
    goto LABEL_7;
  }

  if (((1 << a2) & 0x618) != 0)
  {
    if (**a1 != 912)
    {
      return 1;
    }

LABEL_32:
    v10 = 148;
    v11 = 621;
    goto LABEL_81;
  }

  if (((1 << a2) & 0x8A0) == 0)
  {
    if (a2 != 13)
    {
LABEL_7:
      if (a2 == 4097)
      {
        if ((a3 - 1) <= 5)
        {
          result = check_padding_md(*(v7 + 32), a3);
          if (!result)
          {
            return result;
          }

          if (a3 == 6)
          {
            if ((*(a1 + 32) & 0x18) != 0)
            {
              goto LABEL_12;
            }
          }

          else if (**a1 != 912)
          {
            if (a3 != 4)
            {
LABEL_87:
              *(v7 + 24) = a3;
              return 1;
            }

            if ((*(a1 + 33) & 3) != 0)
            {
LABEL_12:
              if (!*(v7 + 32))
              {
                *(v7 + 32) = EVP_sha1();
              }

              goto LABEL_87;
            }
          }
        }

        v10 = 144;
        v11 = 476;
        goto LABEL_81;
      }

      return 4294967294;
    }

    goto LABEL_46;
  }

  return 1;
}

uint64_t pkey_rsa_ctrl_str(uint64_t *a1, char *__s1, char *a3)
{
  if (!a3)
  {
    ERR_put_error(4, 4095, 147, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_pmeth.c", 634);
    return 0;
  }

  if (!strcmp(__s1, "rsa_padding_mode"))
  {
    if (strcmp(a3, "pkcs1") && strcmp(a3, "none") && strcmp(a3, "oeap") && strcmp(a3, "oaep") && strcmp(a3, "x931") && strcmp(a3, "pss"))
    {
      ERR_put_error(4, 4095, 118, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_pmeth.c", 652);
      return 4294967294;
    }

    v10 = a1;
    v11 = -1;
    goto LABEL_40;
  }

  if (!strcmp(__s1, "rsa_pss_saltlen"))
  {
    if (strcmp(a3, "digest") && strcmp(a3, "max") && strcmp(a3, "auto"))
    {
      atoi(a3);
    }

    v10 = a1;
    v11 = 24;
    goto LABEL_40;
  }

  if (!strcmp(__s1, "rsa_keygen_bits"))
  {
    atoi(a3);
    v10 = a1;
    v11 = 4;
LABEL_40:

    return RSA_pkey_ctx_ctrl(v10, v11);
  }

  if (!strcmp(__s1, "rsa_keygen_pubexp"))
  {
    len = 0;
    if (BN_asc2bn(&len, a3))
    {
      v8 = RSA_pkey_ctx_ctrl(a1, 4);
      if (v8 <= 0)
      {
        BN_free(len);
      }

      return v8;
    }

    return 0;
  }

  if (!strcmp(__s1, "rsa_mgf1_md"))
  {
    v12 = a1;
    v13 = 1016;
LABEL_46:
    v14 = 4101;
LABEL_47:

    return EVP_PKEY_CTX_md(v12, v13, v14, a3);
  }

  if (**a1 != 912)
  {
LABEL_11:
    if (strcmp(__s1, "rsa_oaep_md"))
    {
      if (!strcmp(__s1, "rsa_oaep_label"))
      {
        len = 0;
        v6 = string_to_hex(a3, &len);
        if (v6)
        {
          v7 = v6;
          v8 = EVP_PKEY_CTX_ctrl(a1, 6, 768);
          if (v8 <= 0)
          {
            free(v7);
          }

          return v8;
        }

        return 0;
      }

      return 4294967294;
    }

    v12 = a1;
    v13 = 768;
    v14 = 4105;
    goto LABEL_47;
  }

  if (!strcmp(__s1, "rsa_pss_keygen_mgf1_md"))
  {
    v12 = a1;
    v13 = 4;
    goto LABEL_46;
  }

  if (!strcmp(__s1, "rsa_pss_keygen_md"))
  {
    v12 = a1;
    v13 = 4;
    v14 = 1;
    goto LABEL_47;
  }

  if (strcmp(__s1, "rsa_pss_keygen_saltlen"))
  {
    goto LABEL_11;
  }

  atoi(a3);

  return EVP_PKEY_CTX_ctrl(a1, 912, 4);
}

uint64_t pkey_pss_init(uint64_t a1)
{
  v1 = *(a1 + 40);
  v11 = 0;
  md = 0;
  v10 = 0;
  if (**a1 != 912)
  {
    return 0;
  }

  v2 = *(*(a1 + 16) + 32);
  sk = v2->ex_data.sk;
  if (sk)
  {
    result = rsa_pss_get_param(sk, &md, &v11, &v10);
    if (!result)
    {
      return result;
    }

    v5 = RSA_size(v2);
    v6 = v5 - EVP_MD_size(md);
    v7 = v6 - ((RSA_bits(v2) & 7) == 1);
    v8 = v10;
    if (v10 > v7)
    {
      ERR_put_error(4, 4095, 150, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_pmeth.c", 844);
      return 0;
    }

    v9 = v11;
    *(v1 + 32) = md;
    *(v1 + 40) = v9;
    *(v1 + 48) = v8;
    *(v1 + 52) = v8;
  }

  return 1;
}

uint64_t setup_tbuf(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56))
  {
    return 1;
  }

  v4 = EVP_PKEY_size(*(a2 + 16));
  v2 = 1;
  v5 = malloc_type_calloc(1uLL, v4, 0x6F232928uLL);
  *(a1 + 56) = v5;
  if (!v5)
  {
    ERR_put_error(4, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_pmeth.c", 167);
    return 0;
  }

  return v2;
}

uint64_t check_padding_md(const EVP_MD *a1, int a2)
{
  if (!a1)
  {
    return 1;
  }

  if (a2 == 5)
  {
    v5 = EVP_MD_type(a1);
    if (RSA_X931_hash_id(v5) != -1)
    {
      return 1;
    }

    v2 = 142;
    v3 = 414;
    goto LABEL_18;
  }

  if (a2 == 3)
  {
    v2 = 141;
    v3 = 408;
LABEL_18:
    ERR_put_error(4, 4095, v2, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_pmeth.c", v3);
    return 0;
  }

  v6 = EVP_MD_type(a1);
  result = 1;
  if (v6 > 1028)
  {
    if ((v6 - 1029) < 6)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (v6 > 671)
  {
    if ((v6 - 672) >= 4)
    {
LABEL_21:
      v2 = 157;
      v3 = 439;
      goto LABEL_18;
    }
  }

  else if (((v6 - 64) > 0x35 || ((1 << (v6 - 64)) & 0x24000000000001) == 0) && v6 != 4 && v6 != 257)
  {
    goto LABEL_21;
  }

  return result;
}

EC_KEY *__cdecl EC_KEY_new_by_curve_name(int nid)
{
  v2 = EC_KEY_new_method(0);
  if (v2)
  {
    v3 = EC_GROUP_new_by_curve_name(nid);
    v2[3] = v3;
    if (!v3 || (v4 = *(*v2 + 40)) != 0 && !v4(v2, v3))
    {
      EC_KEY_free(v2);
      return 0;
    }
  }

  return v2;
}

void EC_KEY_free(EC_KEY *a1)
{
  if (a1 && CRYPTO_add_lock(a1 + 14, -1, 33, 0, 0) <= 0)
  {
    if (*a1)
    {
      v2 = *(*a1 + 24);
      if (v2)
      {
        v2(a1);
      }
    }

    ENGINE_finish(*(a1 + 1));
    CRYPTO_free_ex_data(16, a1, (a1 + 72));
    EC_GROUP_free(*(a1 + 3));
    EC_POINT_free(*(a1 + 4));
    BN_free(*(a1 + 5));
    EC_EX_DATA_free_all_data(a1 + 8);

    freezero(a1, 0x50uLL);
  }
}

EC_KEY *__cdecl EC_KEY_copy(EC_KEY *a1, const EC_KEY *a2)
{
  if (!a1 || !a2)
  {
    ERR_put_error(16, 4095, 67, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_key.c", 136);
    return 0;
  }

  v3 = a1;
  v4 = *a1;
  if (*a2 != *a1)
  {
    if (v4)
    {
      v5 = *(v4 + 24);
      if (v5)
      {
        v5(a1);
      }
    }

    if (!ENGINE_finish(*(v3 + 1)))
    {
      return 0;
    }

    *(v3 + 1) = 0;
  }

  v6 = *(a2 + 3);
  if (v6)
  {
    v7 = EC_GROUP_method_of(v6);
    EC_GROUP_free(*(v3 + 3));
    v8 = EC_GROUP_new(v7);
    *(v3 + 3) = v8;
    if (!v8 || !EC_GROUP_copy(v8, *(a2 + 3)))
    {
      return 0;
    }
  }

  if (*(a2 + 4))
  {
    if (*(a2 + 3))
    {
      EC_POINT_free(*(v3 + 4));
      v9 = EC_POINT_new(*(a2 + 3));
      *(v3 + 4) = v9;
      if (!v9 || !EC_POINT_copy(v9, *(a2 + 4)))
      {
        return 0;
      }
    }
  }

  v10 = *(a2 + 5);
  if (v10)
  {
    v11 = *(v3 + 5);
    if (!v11)
    {
      v11 = BN_new();
      *(v3 + 5) = v11;
      if (!v11)
      {
        return 0;
      }

      v10 = *(a2 + 5);
    }

    if (!bn_copy(v11, v10))
    {
      return 0;
    }
  }

  EC_EX_DATA_free_all_data(v3 + 8);
  v12 = (a2 + 64);
  while (1)
  {
    v12 = *v12;
    if (!v12)
    {
      break;
    }

    v13 = (v12[2])(v12[1]);
    if (!v13 || !EC_EX_DATA_set_data(v3 + 64, v13, v12[2], v12[3], v12[4]))
    {
      return 0;
    }
  }

  *(v3 + 6) = *(a2 + 6);
  *(v3 + 4) = *(a2 + 4);
  *(v3 + 15) = *(a2 + 15);
  if (!CRYPTO_dup_ex_data(16, (v3 + 72), (a2 + 72)))
  {
    return 0;
  }

  v15 = *a2;
  if (*a2 != *v3)
  {
    v16 = *(a2 + 1);
    if (!v16)
    {
      v17 = 0;
      goto LABEL_35;
    }

    if (ENGINE_init(v16))
    {
      v15 = *a2;
      v17 = *(a2 + 1);
LABEL_35:
      *v3 = v15;
      *(v3 + 1) = v17;
      v15 = *a2;
      goto LABEL_36;
    }

    return 0;
  }

LABEL_36:
  if (v15)
  {
    v18 = *(v15 + 32);
    if (v18)
    {
      if (!v18(v3, a2))
      {
        return 0;
      }
    }
  }

  return v3;
}

EC_KEY *__cdecl EC_KEY_dup(const EC_KEY *a1)
{
  v2 = EC_KEY_new_method(*(a1 + 1));
  v3 = v2;
  if (v2 && !EC_KEY_copy(v2, a1))
  {
    EC_KEY_free(v3);
    return 0;
  }

  return v3;
}

int EC_KEY_generate_key(EC_KEY *a1)
{
  v2 = *(*a1 + 64);
  if (v2)
  {

    return v2();
  }

  else
  {
    ERR_put_error(16, 4095, 126, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_key.c", 255);
    return 0;
  }
}

uint64_t ossl_ec_key_gen(uint64_t a1)
{
  if (!a1 || !*(a1 + 24))
  {
    ERR_put_error(16, 4095, 67, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_key.c", 269);
    v5 = 0;
    v2 = 0;
LABEL_12:
    v3 = 0;
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  v2 = BN_new();
  if (!v2)
  {
    v5 = 0;
    goto LABEL_12;
  }

  v3 = EC_POINT_new(*(a1 + 24));
  if (!v3)
  {
    v5 = 0;
    goto LABEL_13;
  }

  v4 = BN_CTX_new();
  v5 = v4;
  if (!v4)
  {
    goto LABEL_13;
  }

  BN_CTX_start(v4);
  v6 = BN_CTX_get(v5);
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  if (!EC_GROUP_get_order(*(a1 + 24), v6, v5))
  {
    goto LABEL_13;
  }

  v8 = BN_value_one();
  if (!bn_rand_interval(v2, v8, v7) || !EC_POINT_mul(*(a1 + 24), v3, v2, 0, 0, v5))
  {
    goto LABEL_13;
  }

  BN_free(*(a1 + 40));
  *(a1 + 40) = v2;
  EC_POINT_free(*(a1 + 32));
  v2 = 0;
  *(a1 + 32) = v3;
  v9 = 1;
  v3 = 0;
LABEL_14:
  EC_POINT_free(v3);
  BN_free(v2);
  BN_CTX_end(v5);
  BN_CTX_free(v5);
  return v9;
}

int EC_KEY_check_key(const EC_KEY *a1)
{
  if (!a1 || (v2 = *(a1 + 3)) == 0 || (v3 = *(a1 + 4)) == 0)
  {
    v4 = 67;
    v5 = 321;
    goto LABEL_7;
  }

  if (EC_POINT_is_at_infinity(v2, v3) < 1)
  {
    v10 = BN_CTX_new();
    v6 = v10;
    if (!v10)
    {
      goto LABEL_8;
    }

    BN_CTX_start(v10);
    v11 = BN_CTX_get(v6);
    if (!v11)
    {
      goto LABEL_8;
    }

    v12 = v11;
    v7 = EC_POINT_new(*(a1 + 3));
    if (!v7)
    {
      goto LABEL_9;
    }

    if (EC_POINT_is_on_curve(*(a1 + 3), *(a1 + 4), v6) > 0)
    {
      if (!EC_GROUP_get_order(*(a1 + 3), v12, v6))
      {
        v14 = 122;
        v15 = 349;
        goto LABEL_25;
      }

      if (!EC_POINT_mul(*(a1 + 3), v7, 0, *(a1 + 4), v12, v6))
      {
        v14 = 16;
        v15 = 353;
        goto LABEL_25;
      }

      if (EC_POINT_is_at_infinity(*(a1 + 3), v7) <= 0)
      {
        v14 = 130;
        v15 = 357;
        goto LABEL_25;
      }

      v13 = *(a1 + 5);
      if (v13)
      {
        if ((BN_cmp(v13, v12) & 0x80000000) == 0)
        {
          v14 = 130;
          v15 = 367;
LABEL_25:
          ERR_put_error(16, 4095, v14, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_key.c", v15);
          goto LABEL_9;
        }

        if (!EC_POINT_mul(*(a1 + 3), v7, *(a1 + 5), 0, 0, v6))
        {
          v14 = 16;
          v15 = 372;
          goto LABEL_25;
        }

        if (EC_POINT_cmp(*(a1 + 3), v7, *(a1 + 4), v6))
        {
          v14 = 123;
          v15 = 377;
          goto LABEL_25;
        }
      }

      v8 = 1;
      goto LABEL_10;
    }

    v14 = 107;
    v15 = 343;
    goto LABEL_25;
  }

  v4 = 106;
  v5 = 326;
LABEL_7:
  ERR_put_error(16, 4095, v4, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_key.c", v5);
  v6 = 0;
LABEL_8:
  v7 = 0;
LABEL_9:
  v8 = 0;
LABEL_10:
  BN_CTX_end(v6);
  BN_CTX_free(v6);
  EC_POINT_free(v7);
  return v8;
}

uint64_t EC_KEY_set_public_key_affine_coordinates(uint64_t a1, const BIGNUM *a2, const BIGNUM *a3)
{
  if (!a1 || !a3 || !a2 || !*(a1 + 24))
  {
    ERR_put_error(16, 4095, 67, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_key.c", 401);
    v7 = 0;
LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  v6 = BN_CTX_new();
  v7 = v6;
  if (!v6)
  {
    goto LABEL_15;
  }

  BN_CTX_start(v6);
  v8 = BN_CTX_get(v7);
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = v8;
  v10 = BN_CTX_get(v7);
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = v10;
  v12 = EC_POINT_new(*(a1 + 24));
  if (v12 && EC_POINT_set_affine_coordinates(*(a1 + 24), v12, a2, a3, v7) && EC_POINT_get_affine_coordinates(*(a1 + 24), v12, v9, v11, v7))
  {
    if (BN_cmp(a2, v9) || BN_cmp(a3, v11))
    {
      ERR_put_error(16, 4095, 146, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_key.c", 428);
    }

    else if (EC_KEY_set_public_key(a1, v12))
    {
      v13 = EC_KEY_check_key(a1);
      goto LABEL_17;
    }
  }

LABEL_16:
  v13 = 0;
LABEL_17:
  BN_CTX_end(v7);
  BN_CTX_free(v7);
  EC_POINT_free(v12);
  return v13;
}

int EC_KEY_set_public_key(EC_KEY *a1, const EC_POINT *a2)
{
  v4 = *(*a1 + 56);
  if (!v4 || (result = v4(a1, a2)) != 0)
  {
    EC_POINT_free(*(a1 + 4));
    v6 = EC_POINT_dup(a2, *(a1 + 3));
    *(a1 + 4) = v6;
    return v6 != 0;
  }

  return result;
}

int EC_KEY_set_group(EC_KEY *a1, const EC_GROUP *a2)
{
  v4 = *(*a1 + 40);
  if (!v4 || (result = v4(a1, a2)) != 0)
  {
    EC_GROUP_free(*(a1 + 3));
    v6 = EC_GROUP_dup(a2);
    *(a1 + 3) = v6;
    return v6 != 0;
  }

  return result;
}

int EC_KEY_set_private_key(EC_KEY *a1, const BIGNUM *a2)
{
  v4 = *(*a1 + 48);
  if (!v4 || (result = v4(a1, a2)) != 0)
  {
    BN_free(*(a1 + 5));
    v6 = BN_dup(a2);
    *(a1 + 5) = v6;
    return v6 != 0;
  }

  return result;
}

void EC_KEY_set_conv_form(EC_KEY *a1, point_conversion_form_t a2)
{
  *(a1 + 13) = a2;
  v2 = *(a1 + 3);
  if (v2)
  {
    EC_GROUP_set_point_conversion_form(v2, a2);
  }
}

void *__cdecl EC_KEY_get_key_method_data(EC_KEY *a1, void *(__cdecl *dup_func)(void *), void (__cdecl *free_func)(void *), void (__cdecl *clear_free_func)(void *))
{
  CRYPTO_lock(5, 33, 0, 0);
  data = EC_EX_DATA_get_data(*(a1 + 8), dup_func, free_func, clear_free_func);
  CRYPTO_lock(6, 33, 0, 0);
  return data;
}

void EC_KEY_insert_key_method_data(EC_KEY *a1, void *data, void *(__cdecl *dup_func)(void *), void (__cdecl *free_func)(void *), void (__cdecl *clear_free_func)(void *))
{
  CRYPTO_lock(9, 33, 0, 0);
  v11 = *(a1 + 8);
  v10 = a1 + 64;
  if (!EC_EX_DATA_get_data(v11, dup_func, free_func, clear_free_func))
  {
    EC_EX_DATA_set_data(v10, data, dup_func, free_func, clear_free_func);
  }

  CRYPTO_lock(10, 33, 0, 0);
}

void EC_KEY_set_asn1_flag(EC_KEY *a1, int a2)
{
  v2 = *(a1 + 3);
  if (v2)
  {
    EC_GROUP_set_asn1_flag(v2, a2);
  }
}

int EC_KEY_precompute_mult(EC_KEY *a1, BN_CTX *ctx)
{
  v2 = *(a1 + 3);
  if (v2)
  {
    LODWORD(v2) = EC_GROUP_precompute_mult(v2, ctx);
  }

  return v2;
}

uint64_t ENGINE_register_pkey_asn1_meths(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (!v1)
  {
    return 1;
  }

  v3 = v1();
  if (v3 <= 0)
  {
    return 1;
  }

  else
  {
    return engine_table_register(&pkey_asn1_meth_table, engine_unregister_all_pkey_asn1_meths, a1, 0, v3, 0);
  }
}

ENGINE *ENGINE_register_all_pkey_asn1_meths()
{
  result = ENGINE_get_first();
  if (result)
  {
    v1 = result;
    do
    {
      ENGINE_register_pkey_asn1_meths(v1);
      result = ENGINE_get_next(v1);
      v1 = result;
    }

    while (result);
  }

  return result;
}

uint64_t ENGINE_set_default_pkey_asn1_meths(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (!v1)
  {
    return 1;
  }

  v3 = v1();
  if (v3 <= 0)
  {
    return 1;
  }

  else
  {
    return engine_table_register(&pkey_asn1_meth_table, engine_unregister_all_pkey_asn1_meths, a1, 0, v3, 1);
  }
}

uint64_t ENGINE_get_pkey_asn1_meth(uint64_t a1)
{
  v3 = 0;
  v1 = *(a1 + 104);
  if (v1 && v1())
  {
    return v3;
  }

  ERR_put_error(38, 4095, 101, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/tb_asnmth.c", 138);
  return 0;
}

void engine_pkey_asn1_meths_free(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1)
  {
    v6 = 0;
    v3 = v1();
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = 4 * v3;
      do
      {
        if ((*(a1 + 104))(a1, &v6, 0, *v4))
        {
          EVP_PKEY_asn1_free(v6);
        }

        ++v4;
      }

      while (v5 != v4);
    }
  }
}

uint64_t (*ENGINE_get_pkey_asn1_meth_str(uint64_t a1, char *__s, int a3))(uint64_t, void, uint64_t *, void)
{
  v3 = *(a1 + 104);
  if (v3)
  {
    v4 = a3;
    if (a3 == -1)
    {
      v4 = strlen(__s);
    }

    v11 = 0;
    v12 = 0;
    v7 = v3(a1, 0, &v12, 0);
    if (v7 < 1)
    {
      return 0;
    }

    else
    {
      v8 = 0;
      v9 = 4 * v7;
      while (1)
      {
        (*(a1 + 104))(a1, &v11, 0, *(v12 + v8));
        v3 = v11;
        if (v4 == strlen(*(v11 + 16)) && !strncasecmp(*(v11 + 16), __s, v4))
        {
          break;
        }

        v8 += 4;
        if (v9 == v8)
        {
          return 0;
        }
      }
    }
  }

  return v3;
}

uint64_t ENGINE_pkey_asn1_find_str(void *a1, uint64_t a2, unsigned int a3)
{
  v6 = 0u;
  v7 = a2;
  v8 = a3;
  CRYPTO_lock(9, 30, 0, 0);
  engine_table_doall(pkey_asn1_meth_table, look_str_cb, &v6);
  v4 = v6;
  if (v6)
  {
    ++*(v6 + 180);
  }

  *a1 = v4;
  CRYPTO_lock(10, 30, 0, 0);
  return *(&v6 + 1);
}

uint64_t look_str_cb(uint64_t result, STACK *a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 8))
  {
    v13[9] = v4;
    v13[10] = v5;
    v8 = result;
    result = sk_num(a2);
    if (result >= 1)
    {
      v9 = 0;
      while (1)
      {
        v10 = sk_value(a2, v9);
        v13[0] = 0;
        (*(v10 + 13))(v10, v13, 0, v8);
        v11 = v13[0];
        v12 = strlen(*(v13[0] + 16));
        if (*(a4 + 24) == v12)
        {
          result = strncasecmp(*(v13[0] + 16), *(a4 + 16), v12);
          if (!result)
          {
            break;
          }
        }

        ++v9;
        result = sk_num(a2);
        if (v9 >= result)
        {
          return result;
        }
      }

      *a4 = v10;
      *(a4 + 8) = v11;
    }
  }

  return result;
}

uint64_t OpenSSL_config(uint64_t a1)
{
  if (a1)
  {
    openssl_config_name = a1;
  }

  result = OPENSSL_init_crypto(0, 0);
  if (result)
  {
    return pthread_once(&openssl_configured, OPENSSL_config_internal) == 0;
  }

  return result;
}

uint64_t OPENSSL_config_internal()
{
  OPENSSL_load_builtin_modules();
  ENGINE_load_builtin_engines();
  ERR_clear_error();
  result = CONF_modules_load_file(0, openssl_config_name, 0x30uLL);
  if (result <= 0)
  {
    ERR_load_crypto_strings();
    v1 = BIO_new_fp(*MEMORY[0x277D85DF8], 0);
    if (v1)
    {
      v2 = v1;
      BIO_printf(v1, "Auto configuration failed\n");
      ERR_print_errors(v2);
      BIO_free(v2);
    }

    exit(1);
  }

  return result;
}

int BIO_dump_indent_cb(int (__cdecl *cb)(const void *, size_t, void *), void *u, const char *s, int len, int indent)
{
  v5 = len;
  v45 = *MEMORY[0x277D85DE8];
  if (len < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = s - 1;
    while ((v8[len] | 0x20) == 0x20)
    {
      --v8;
      if (len == ++v7)
      {
        v5 = 0;
        v7 = len;
        goto LABEL_8;
      }
    }

    v5 = len - v7;
  }

LABEL_8:
  v9 = indent & ~(indent >> 31);
  if (v9 >= 64)
  {
    v10 = 64;
  }

  else
  {
    v10 = indent & ~(indent >> 31);
  }

  __memset_chk();
  v42[v10] = 0;
  if (v9 >= 6)
  {
    v11 = 6;
  }

  else
  {
    v11 = v9;
  }

  v12 = v10 - v11;
  if (v12 > 60)
  {
    goto LABEL_15;
  }

  v14 = (16 - ((v12 + 3 + (((v12 + 3) >> 13) & 3)) >> 2));
  LODWORD(v15) = v5 / v14;
  if (v5 / v14 * v14 >= v5)
  {
    v15 = v15;
  }

  else
  {
    v15 = (v15 + 1);
  }

  v35 = v5;
  v36 = v15;
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = 0;
    v13 = 0;
    v18 = v5;
    if (v14 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v14;
    }

    v41 = s;
    while (1)
    {
      v39 = v13;
      __strlcpy_chk();
      v40 = v17;
      snprintf(__str, 0x14uLL, "%04x - ", v17 * v14);
      __strlcat_chk();
      v20 = v16;
      v21 = 7;
      do
      {
        if (v20 < v18)
        {
          v22 = s[v20];
          v23 = 32;
          if (!v21)
          {
            v23 = 45;
          }

          snprintf(__str, 0x14uLL, "%02x%c", s[v20], v23);
        }

        __strlcat_chk();
        --v21;
        ++v20;
      }

      while (v19 + v21 != 7);
      __strlcat_chk();
      if ((v17 * v14) < v18)
      {
        v24 = 1;
        v25 = v41;
        do
        {
          v27 = *v25++;
          v26 = v27;
          if ((v27 - 32) >= 0x5F)
          {
            v26 = 46;
          }

          __str[0] = v26;
          __str[1] = 0;
          __strlcat_chk();
          if (v24 >= v14)
          {
            break;
          }

          v28 = v16 + v24++;
        }

        while (v28 < v18);
      }

      __strlcat_chk();
      v29 = strlen(__s);
      v30 = (cb)(__s, v29, u);
      if (v30 < 0)
      {
        break;
      }

      v13 = v30 + v39;
      ++v17;
      v16 += v14;
      v41 += v14;
      if (v40 + 1 == v36)
      {
        if (!v7)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }
    }

LABEL_15:
    v13 = -1;
    goto LABEL_42;
  }

  v13 = 0;
  if (v7)
  {
LABEL_39:
    snprintf(__s, 0x121uLL, "%s%04x - <SPACES/NULS>\n", v42, v7 + v35);
    v31 = strlen(__s);
    v32 = (cb)(__s, v31, u);
    if (v32 < 0)
    {
      v13 = -1;
    }

    else
    {
      v13 += v32;
    }
  }

LABEL_42:
  v33 = *MEMORY[0x277D85DE8];
  return v13;
}

int (__cdecl *__cdecl X509_TRUST_set_default(int (__cdecl *trust)(int, X509 *, int)))(int, X509 *, int)
{
  v1 = default_trust;
  default_trust = trust;
  return v1;
}

uint64_t obj_trust(int a1, uint64_t a2)
{
  v2 = *(a2 + 224);
  if (!v2)
  {
    return 3;
  }

  v4 = v2[1];
  if (!v4 || sk_num(v4) < 1)
  {
LABEL_8:
    if (*v2 && sk_num(*v2) >= 1)
    {
      v9 = 0;
      while (1)
      {
        v10 = sk_value(*v2, v9);
        v11 = OBJ_obj2nid(v10);
        result = 1;
        if (v11 == a1 || v11 == 910)
        {
          break;
        }

        if (++v9 >= sk_num(*v2))
        {
          return 3;
        }
      }

      return result;
    }

    return 3;
  }

  v5 = 0;
  while (1)
  {
    v6 = sk_value(v2[1], v5);
    v7 = OBJ_obj2nid(v6);
    result = 2;
    if (v7 == a1 || v7 == 910)
    {
      return result;
    }

    if (++v5 >= sk_num(v2[1]))
    {
      goto LABEL_8;
    }
  }
}

uint64_t trust_compat(int a1, X509 *x)
{
  X509_check_purpose(x, -1, 0);
  if ((x->ex_pathlen & 0x2000) != 0)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

int X509_TRUST_get_by_id(int id)
{
  result = id - 1;
  if (result >= 8)
  {
    v8 = v1;
    v9 = v2;
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    LODWORD(v6[0]) = id;
    if (trtable)
    {
      v5 = sk_find(trtable, v6);
      if (v5 == -1)
      {
        return -1;
      }

      else
      {
        return v5 + 8;
      }
    }

    else
    {
      return -1;
    }
  }

  return result;
}

X509_TRUST *__cdecl X509_TRUST_get0(int idx)
{
  if (idx < 0)
  {
    return 0;
  }

  if (idx > 7)
  {
    return sk_value(trtable, idx - 8);
  }

  return (&trstandard + 40 * idx);
}

int X509_TRUST_get_count(void)
{
  if (trtable)
  {
    return sk_num(trtable) + 8;
  }

  else
  {
    return 8;
  }
}

int X509_TRUST_set(int *t, int trust)
{
  if (X509_TRUST_get_by_id(trust) == -1)
  {
    ERR_put_error(11, 4095, 123, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_trs.c", 188);
    return 0;
  }

  else
  {
    *t = trust;
    return 1;
  }
}

int X509_TRUST_add(int id, int flags, int (__cdecl *ck)(X509_TRUST *, X509 *, int), char *name, int arg1, void *arg2)
{
  v12 = X509_TRUST_get_by_id(id);
  v13 = v12;
  if (v12 == -1)
  {
    v15 = malloc_type_malloc(0x28uLL, 0x10900403507AD87uLL);
    if (v15)
    {
      v14 = v15;
      *(v15 + 1) = 1;
      v16 = strdup(name);
      if (!v16)
      {
LABEL_20:
        free(v14);
        goto LABEL_21;
      }

LABEL_10:
      v17 = v16;
      v18 = flags & 0xFFFFFFFC;
      v19 = *(v14 + 1);
      if ((v19 & 2) != 0)
      {
        free(*(v14 + 2));
        v19 = *(v14 + 1);
      }

      *v14 = id;
      *(v14 + 1) = v18 | v19 & 1 | 2;
      *(v14 + 1) = ck;
      *(v14 + 2) = v17;
      *(v14 + 6) = arg1;
      *(v14 + 4) = arg2;
      if (v13 != -1)
      {
        return 1;
      }

      v20 = trtable;
      if (trtable || (v20 = sk_new(tr_cmp), (trtable = v20) != 0))
      {
        if (sk_push(v20, v14))
        {
          return 1;
        }
      }

      free(v17);
      goto LABEL_20;
    }

    v22 = 65;
    v23 = 213;
  }

  else
  {
    if ((v12 & 0x80000000) == 0)
    {
      if (v12 <= 7)
      {
        v14 = &trstandard + 40 * v12;
        goto LABEL_9;
      }

      v14 = sk_value(trtable, v12 - 8);
      if (v14)
      {
LABEL_9:
        v16 = strdup(name);
        if (!v16)
        {
LABEL_21:
          v22 = 65;
          v23 = 257;
          goto LABEL_22;
        }

        goto LABEL_10;
      }
    }

    v22 = 123;
    v23 = 220;
  }

LABEL_22:
  ERR_put_error(11, 4095, v22, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_trs.c", v23);
  return 0;
}

void trtable_free(void *a1)
{
  if (a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      if ((v2 & 2) != 0)
      {
        free(*(a1 + 2));
      }

      free(a1);
    }
  }
}

uint64_t trust_1oidany(uint64_t a1, X509 *x)
{
  ex_pcpathlen = x[1].ex_pcpathlen;
  if (ex_pcpathlen && (*ex_pcpathlen || ex_pcpathlen[1]))
  {
    v4 = *(a1 + 24);

    return obj_trust(v4, x);
  }

  else
  {
    X509_check_purpose(x, -1, 0);
    if ((x->ex_pathlen & 0x2000) != 0)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t trust_1oid(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 224))
  {
    return obj_trust(*(a1 + 24), a2);
  }

  else
  {
    return 3;
  }
}

uint64_t pub_decode_gost01(uint64_t a1, uint64_t a2)
{
  in = 0;
  algor = 0;
  pptype = -1;
  memset(len, 0, sizeof(len));
  v13 = 0;
  if (!X509_PUBKEY_get0_param(&len[1], &in, len, &algor, a2))
  {
    return 0;
  }

  EVP_PKEY_assign(a1, 811, 0);
  X509_ALGOR_get0(0, &pptype, &v13, algor);
  if (pptype != 16)
  {
    v10 = 104;
    v11 = 211;
LABEL_11:
    ERR_put_error(50, 4095, v10, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_ameth.c", v11);
    return 0;
  }

  v16 = v13[1];
  if (!decode_gost01_algor_params(a1, &v16, *v13))
  {
    v10 = 104;
    v11 = 216;
    goto LABEL_11;
  }

  v3 = d2i_ASN1_OCTET_STRING(0, &in, len[0]);
  if (!v3)
  {
    v10 = 65;
    v11 = 222;
    goto LABEL_11;
  }

  v4 = v3;
  v5 = v3->length / 2;
  v6 = (v3->length + (v3->length >> 31)) >> 1;
  v7 = GOST_le2bn(v3->data, v6, 0);
  v8 = GOST_le2bn(&v4->data[v5], v6, 0);
  ASN1_OCTET_STRING_free(v4);
  v9 = GOST_KEY_set_public_key_affine_coordinates(*(a1 + 32), v7, v8);
  if (!v9)
  {
    ERR_put_error(50, 4095, 16, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_ameth.c", 234);
  }

  BN_free(v7);
  BN_free(v8);
  return v9;
}

ASN1_STRING *pub_encode_gost01(uint64_t a1, uint64_t a2)
{
  out = 0;
  v4 = *(a2 + 32);
  digest = GOST_KEY_get_digest(v4);
  pk_digest = GostR3410_get_pk_digest(digest);
  v7 = OBJ_nid2obj(pk_digest);
  if (*(a2 + 40))
  {
    result = encode_gost01_algor_params(a2);
    if (!result)
    {
      return result;
    }

    v9 = result;
    v10 = 16;
  }

  else
  {
    v9 = 0;
    v10 = -1;
  }

  size = GOST_KEY_get_size(v4);
  v12 = GOST_KEY_get0_public_key(v4);
  if (!v12)
  {
    ERR_put_error(50, 4095, 118, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_ameth.c", 269);
    v15 = 0;
LABEL_17:
    v16 = 0;
    v18 = 0;
    goto LABEL_18;
  }

  v13 = v12;
  v14 = ASN1_OCTET_STRING_new();
  v15 = v14;
  if (!v14)
  {
    v21 = 65;
    v22 = 275;
LABEL_16:
    ERR_put_error(50, 4095, v21, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_ameth.c", v22);
    goto LABEL_17;
  }

  if (!ASN1_STRING_set(v14, 0, 2 * size))
  {
    v21 = 68;
    v22 = 281;
    goto LABEL_16;
  }

  v25 = ASN1_STRING_data(v15);
  v16 = BN_new();
  v17 = BN_new();
  v18 = v17;
  if (v16 && v17)
  {
    v19 = GOST_KEY_get0_group(v4);
    if (EC_POINT_get_affine_coordinates(v19, v13, v16, v18, 0))
    {
      GOST_bn2le(v16, v25, size);
      GOST_bn2le(v18, &v25[size], size);
      BN_free(v18);
      BN_free(v16);
      v20 = i2d_ASN1_OCTET_STRING(v15, &out);
      ASN1_BIT_STRING_free(v15);
      if ((v20 & 0x80000000) == 0)
      {
        return X509_PUBKEY_set0_param(a1, v7, v10, v9, out, v20);
      }

      return 0;
    }

    v23 = 16;
    v24 = 296;
  }

  else
  {
    v23 = 65;
    v24 = 290;
  }

  ERR_put_error(50, 4095, v23, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_ameth.c", v24);
LABEL_18:
  BN_free(v18);
  BN_free(v16);
  ASN1_BIT_STRING_free(v15);
  ASN1_STRING_free(v9);
  return 0;
}

BOOL pub_cmp_gost01(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  v5 = GOST_KEY_get0_public_key(*(a1 + 32));
  v6 = GOST_KEY_get0_public_key(v3);
  if (!v5 || v6 == 0)
  {
    return 0;
  }

  v8 = v6;
  v9 = GOST_KEY_get0_group(v2);
  return EC_POINT_cmp(v9, v5, v8, 0) == 0;
}

uint64_t pub_print_gost01(BIO *a1, uint64_t a2, int a3)
{
  v6 = BN_CTX_new();
  if (!v6)
  {
    ERR_put_error(50, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_ameth.c", 346);
    return 0;
  }

  v7 = v6;
  BN_CTX_start(v6);
  v8 = BN_CTX_get(v7);
  if (!v8 || (v9 = v8, (v10 = BN_CTX_get(v7)) == 0))
  {
LABEL_13:
    BN_CTX_end(v7);
    BN_CTX_free(v7);
    return 0;
  }

  v11 = v10;
  v12 = GOST_KEY_get0_public_key(*(a2 + 32));
  v13 = GOST_KEY_get0_group(*(a2 + 32));
  if (!EC_POINT_get_affine_coordinates(v13, v12, v9, v11, v7))
  {
    ERR_put_error(50, 4095, 16, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_ameth.c", 357);
    goto LABEL_13;
  }

  if (!BIO_indent(a1, a3, 128))
  {
    goto LABEL_13;
  }

  BIO_printf(a1, "Public key:\n");
  if (!BIO_indent(a1, a3 + 3, 128))
  {
    goto LABEL_13;
  }

  BIO_printf(a1, "X:");
  BN_print(a1, v9);
  BIO_printf(a1, "\n");
  if (!BIO_indent(a1, a3 + 3, 128))
  {
    goto LABEL_13;
  }

  BIO_printf(a1, "Y:");
  BN_print(a1, v11);
  BIO_printf(a1, "\n");
  BN_CTX_end(v7);
  BN_CTX_free(v7);

  return param_print_gost01(a1, a2, a3);
}

BOOL priv_decode_gost01(EVP_PKEY *a1, uint64_t a2)
{
  v19 = 0;
  len[0] = 0;
  v16 = 0;
  algor = 0;
  pptype = -1;
  ppval = 0;
  if (!PKCS8_pkey_get0(&v16, &v19, len, &algor, a2))
  {
    v6 = 104;
    v7 = 418;
LABEL_10:
    ERR_put_error(50, 4095, v6, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_ameth.c", v7);
    return 0;
  }

  EVP_PKEY_assign(a1, 811, 0);
  X509_ALGOR_get0(0, &pptype, &ppval, algor);
  if (pptype != 16)
  {
    v6 = 104;
    v7 = 424;
    goto LABEL_10;
  }

  *&len[1] = *(ppval + 1);
  if (!decode_gost01_algor_params(a1, &len[1], *ppval))
  {
    v6 = 104;
    v7 = 429;
    goto LABEL_10;
  }

  *&len[1] = v19;
  if (*v19 == 4)
  {
    v3 = d2i_ASN1_OCTET_STRING(0, &len[1], len[0]);
    if (!v3)
    {
      ERR_put_error(50, 4095, 114, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_ameth.c", 439);
      ASN1_STRING_free(0);
      return 0;
    }

    v4 = v3;
    v5 = GOST_le2bn(v3->data, v3->length, 0);
    ASN1_STRING_free(v4);
    goto LABEL_15;
  }

  v10 = d2i_ASN1_INTEGER(0, &len[1], len[0]);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v5 = ASN1_INTEGER_to_BN(v10, 0);
  ASN1_INTEGER_free(v11);
  if (!v5)
  {
    v6 = 114;
    v7 = 453;
    goto LABEL_10;
  }

LABEL_15:
  attributes = a1->attributes;
  if (!attributes)
  {
    v13 = GOST_KEY_new();
    if (!v13)
    {
      goto LABEL_22;
    }

    attributes = v13;
    if (!EVP_PKEY_assign(a1, 811, v13))
    {
      BN_free(v5);
      GOST_KEY_free(attributes);
      return 0;
    }
  }

  if (!GOST_KEY_set_private_key(attributes, v5))
  {
LABEL_22:
    BN_free(v5);
    return 0;
  }

  if (EVP_PKEY_missing_parameters(a1))
  {
    v8 = 0;
  }

  else
  {
    v8 = gost2001_compute_public(attributes) != 0;
  }

  BN_free(v5);
  return v8;
}

ASN1_STRING *priv_encode_gost01(uint64_t a1, uint64_t a2)
{
  digest = GOST_KEY_get_digest(*(a2 + 32));
  pk_digest = GostR3410_get_pk_digest(digest);
  v6 = OBJ_nid2obj(pk_digest);
  result = encode_gost01_algor_params(a2);
  out = 0;
  if (result)
  {
    v8 = result;
    v9 = GOST_KEY_get0_private_key(*(a2 + 32));
    v10 = BN_to_ASN1_INTEGER(v9, 0);
    if (v10)
    {
      v11 = v10;
      v12 = i2d_ASN1_INTEGER(v10, &out);
      ASN1_INTEGER_free(v11);
      return PKCS8_pkey_set0(a1, v6, 0, 16, v8, out, v12);
    }

    else
    {
      ASN1_STRING_free(v8);
      return 0;
    }
  }

  return result;
}

uint64_t priv_print_gost01(BIO *a1, uint64_t a2, int indent)
{
  result = BIO_indent(a1, indent, 128);
  if (result)
  {
    BIO_printf(a1, "Private key: ");
    v7 = GOST_KEY_get0_private_key(*(a2 + 32));
    if (v7)
    {
      BN_print(a1, v7);
    }

    else
    {
      BIO_printf(a1, "<undefined)");
    }

    BIO_printf(a1, "\n");

    return pub_print_gost01(a1, a2, indent);
  }

  return result;
}