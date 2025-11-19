int BIO_vprintf(BIO *bio, const char *format, va_list args)
{
  v6 = 0;
  v4 = vasprintf(&v6, format, args);
  if (v4 != -1)
  {
    BIO_write(bio, v6, v4);
    free(v6);
  }

  return v4;
}

int BIO_snprintf(char *buf, size_t n, const char *format, ...)
{
  va_start(va, format);
  result = vsnprintf(buf, n, format, va);
  if (result >= n)
  {
    return -1;
  }

  return result;
}

int BIO_vsnprintf(char *buf, size_t n, const char *format, va_list args)
{
  result = vsnprintf(buf, n, format, args);
  if (result >= n)
  {
    return -1;
  }

  return result;
}

const ASN1_OBJECT **CMS_stream(unsigned __int8 ***a1, const ASN1_OBJECT **a2)
{
  result = CMS_get0_content(a2);
  if (result)
  {
    v4 = result;
    v5 = *result;
    if (v5 || (v5 = ASN1_OCTET_STRING_new(), (*v4 = v5) != 0))
    {
      v5->flags = v5->flags & 0xFFFFFFFFFFFFFFCFLL | 0x10;
      *a1 = &v5->data;
      return 1;
    }

    else
    {
      ERR_put_error(46, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_io.c", 75);
      return 0;
    }
  }

  return result;
}

uint64_t SMIME_write_CMS(BIO *a1, uint64_t a2, BIO *a3, int a4)
{
  v8 = OBJ_obj2nid(*a2);
  v9 = CMS_get0_eContentType(a2);
  v10 = OBJ_obj2nid(v9);
  if (v8 == 22)
  {
    v11 = *(*(a2 + 8) + 8);
  }

  else
  {
    v11 = 0;
  }

  return SMIME_write_ASN1(a1, a2, a3, a4, v8, v10, v11, &CMS_ContentInfo_it);
}

uint64_t i2d_ASN1_bio_stream(BIO *out, void *x, BIO *a3, int a4, ASN1_ITEM *it)
{
  if ((a4 & 0x1000) == 0)
  {
    ASN1_item_i2d_bio(it, out, x);
    return 1;
  }

  v8 = BIO_new_NDEF(out, x, it);
  if (v8)
  {
    v9 = v8;
    SMIME_crlf_copy(a3, v8, a4);
    BIO_ctrl(v9, 11, 0, 0);
    do
    {
      v10 = BIO_pop(v9);
      BIO_free(v9);
      v9 = v10;
    }

    while (v10 != out);
    return 1;
  }

  ERR_put_error(13, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn_mime.c", 126);
  return 0;
}

int SMIME_crlf_copy(BIO *in, BIO *out, int flags)
{
  v3 = flags;
  v22 = *MEMORY[0x277D85DE8];
  v6 = BIO_f_buffer();
  v7 = BIO_new(v6);
  if (v7)
  {
    v8 = v7;
    v9 = BIO_push(v7, out);
    v10 = v9;
    if (v3 < 0)
    {
      v17 = BIO_read(in, buf, 1024);
      if (v17 >= 1)
      {
        for (i = v17; i > 0; i = BIO_read(in, buf, 1024))
        {
          BIO_write(v10, buf, i);
        }
      }

      goto LABEL_23;
    }

    if (v3)
    {
      BIO_printf(v9, "Content-Type: text/plain\r\n\r\n");
    }

    v11 = BIO_gets(in, buf, 1024);
    if (v11 < 1)
    {
      goto LABEL_23;
    }

    v12 = v11;
    while (1)
    {
      v13 = 0;
      v14 = v12 - 1;
      while (1)
      {
        v15 = buf[v14];
        if (v15 == 10)
        {
          v13 = 1;
          goto LABEL_12;
        }

        if (v15 != 13)
        {
          break;
        }

LABEL_12:
        --v14;
        v16 = __OFSUB__(v12--, 1);
        if ((v12 < 0) ^ v16 | (v12 == 0))
        {
          if (!v13)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }
      }

      BIO_write(v10, buf, v12);
      if (v13)
      {
LABEL_15:
        BIO_write(v10, "\r\n", 2);
      }

LABEL_16:
      v12 = BIO_gets(in, buf, 1024);
      if (v12 <= 0)
      {
LABEL_23:
        BIO_ctrl(v10, 11, 0, 0);
        BIO_pop(v10);
        BIO_free(v8);
        LODWORD(v7) = 1;
        break;
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t PEM_write_bio_ASN1_stream(BIO *a1, void *a2, BIO *a3, int a4, const char *a5, ASN1_ITEM *a6)
{
  BIO_printf(a1, "-----BEGIN %s-----\n", a5);
  v12 = B64_write_ASN1(a1, a2, a3, a4, a6);
  BIO_printf(a1, "-----END %s-----\n", a5);
  return v12;
}

uint64_t B64_write_ASN1(BIO *a1, void *a2, BIO *a3, int a4, ASN1_ITEM *a5)
{
  v10 = BIO_f_base64();
  v11 = BIO_new(v10);
  if (v11)
  {
    v12 = v11;
    v13 = BIO_push(v11, a1);
    v14 = i2d_ASN1_bio_stream(v13, a2, a3, a4, a5);
    BIO_ctrl(v13, 11, 0, 0);
    BIO_pop(v13);
    BIO_free(v12);
    return v14;
  }

  else
  {
    ERR_put_error(13, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn_mime.c", 157);
    return 0;
  }
}

uint64_t SMIME_write_ASN1(BIO *bio, void *a2, BIO *a3, int a4, int a5, int a6, STACK *a7, ASN1_ITEM *a8)
{
  v50 = *MEMORY[0x277D85DE8];
  if ((a4 & 0x400) != 0)
  {
    v14 = "application/x-pkcs7-";
  }

  else
  {
    v14 = "application/pkcs7-";
  }

  if ((a4 & 0x800) != 0)
  {
    v15 = "\r\n";
  }

  else
  {
    v15 = "\n";
  }

  if (a3 && (a4 & 0x40) != 0)
  {
    arc4random_buf(__buf, 0x20uLL);
    v16 = 0;
    v17.i64[0] = 0xF0F0F0F0F0F0F0FLL;
    v17.i64[1] = 0xF0F0F0F0F0F0F0FLL;
    v18.i64[0] = 0xA0A0A0A0A0A0A0ALL;
    v18.i64[1] = 0xA0A0A0A0A0A0A0ALL;
    v19.i64[0] = 0x3030303030303030;
    v19.i64[1] = 0x3030303030303030;
    v20.i64[0] = 0x3737373737373737;
    v20.i64[1] = 0x3737373737373737;
    do
    {
      v21 = vandq_s8(*&__buf[v16], v17);
      *&__buf[v16] = vbslq_s8(vcgtq_u8(v18, v21), vorrq_s8(v21, v19), vaddq_s8(v21, v20));
      v16 += 16;
    }

    while (v16 != 32);
    __buf[32] = 0;
    BIO_printf(bio, "MIME-Version: 1.0%s", v15);
    BIO_printf(bio, "Content-Type: multipart/signed;");
    BIO_printf(bio, " protocol=%ssignature;", v14);
    BIO_puts(bio, " micalg=");
    if (sk_num(a7) >= 1)
    {
      v22 = 0;
      v23 = 0;
      for (i = 0; i < sk_num(a7); ++i)
      {
        if (v22)
        {
          BIO_write(bio, ",", 1);
        }

        v25 = sk_value(a7, i);
        v26 = OBJ_obj2nid(*v25);
        v27 = OBJ_nid2sn(v26);
        digestbyname = EVP_get_digestbyname(v27);
        if (digestbyname)
        {
          verify = digestbyname->verify;
          if (verify)
          {
            buf = 0;
            v30 = (verify)(0, 2, 0, &buf);
            if (v30 >= 1)
            {
              BIO_puts(bio, buf);
              free(buf);
              goto LABEL_32;
            }

            if (v30 != -2)
            {
              break;
            }
          }
        }

        if (v26 > 672)
        {
          switch(v26)
          {
            case 673:
              v31 = bio;
              v32 = "sha-384";
              goto LABEL_31;
            case 674:
              v31 = bio;
              v32 = "sha-512";
              goto LABEL_31;
            case 809:
              BIO_puts(bio, "gostr3411-94");
              goto LABEL_56;
          }
        }

        else
        {
          switch(v26)
          {
            case 4:
              v31 = bio;
              v32 = "md5";
              goto LABEL_31;
            case 64:
              v31 = bio;
              v32 = "sha1";
              goto LABEL_31;
            case 672:
              v31 = bio;
              v32 = "sha-256";
LABEL_31:
              BIO_puts(v31, v32);
              goto LABEL_32;
          }
        }

        if (v23)
        {
          v22 = 0;
          v23 = 1;
          continue;
        }

        BIO_puts(bio, "unknown");
        v23 = 1;
LABEL_32:
        v22 = 1;
      }
    }

LABEL_56:
    BIO_printf(bio, "; boundary=----%s%s%s", __buf, v15, v15);
    BIO_printf(bio, "This is an S/MIME signed message%s%s", v15, v15);
    BIO_printf(bio, "------%s%s", __buf, v15);
    v48 = a2;
    if ((a4 & 0x8040) == 0x40)
    {
      v37 = a8;
      funcs = a8->funcs;
      if (!funcs || (v39 = funcs[3]) == 0)
      {
        ERR_put_error(13, 4095, 202, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn_mime.c", 391);
LABEL_67:
        result = 0;
        goto LABEL_68;
      }

      out = 0;
      v47 = 0;
      buf = bio;
      if (v39(12, &v48, a8, &buf) < 1)
      {
        goto LABEL_67;
      }

      SMIME_crlf_copy(a3, out, a4);
      v40 = (funcs[3])(13, &v48, a8, &buf);
      for (j = out; j != bio; out = j)
      {
        j = BIO_pop(j);
        BIO_free(out);
      }

      if (v40 < 1)
      {
        goto LABEL_67;
      }
    }

    else
    {
      SMIME_crlf_copy(a3, bio, a4);
      v37 = a8;
    }

    BIO_printf(bio, "%s------%s%s", v15, __buf, v15);
    BIO_printf(bio, "Content-Type: %ssignature;", v14);
    BIO_printf(bio, " name=smime.p7s%s", v15);
    BIO_printf(bio, "Content-Transfer-Encoding: base64%s", v15);
    BIO_printf(bio, "Content-Disposition: attachment;");
    BIO_printf(bio, " filename=smime.p7s%s%s", v15, v15);
    B64_write_ASN1(bio, a2, 0, 0, v37);
    BIO_printf(bio, "%s------%s--%s%s");
    goto LABEL_65;
  }

  if (a5 == 786)
  {
    v33 = 0;
    v34 = "compressed-data";
    v35 = "smime.p7z";
  }

  else
  {
    if (a5 == 23)
    {
      v33 = 0;
      v34 = "enveloped-data";
    }

    else if (a5 == 22)
    {
      if (a6 == 204)
      {
        v33 = 0;
        v34 = "signed-receipt";
      }

      else
      {
        v33 = 0;
        if (sk_num(a7) < 0)
        {
          v34 = "certs-only";
        }

        else
        {
          v34 = "signed-data";
        }
      }
    }

    else
    {
      v34 = 0;
      v33 = 1;
    }

    v35 = "smime.p7m";
  }

  BIO_printf(bio, "MIME-Version: 1.0%s", v15);
  BIO_printf(bio, "Content-Disposition: attachment;");
  BIO_printf(bio, " filename=%s%s", v35, v15);
  BIO_printf(bio, "Content-Type: %smime;", v14);
  if ((v33 & 1) == 0)
  {
    BIO_printf(bio, " smime-type=%s;", v34);
  }

  BIO_printf(bio, " name=%s%s", v35, v15);
  BIO_printf(bio, "Content-Transfer-Encoding: base64%s%s", v15, v15);
  result = B64_write_ASN1(bio, a2, a3, a4, a8);
  if (result)
  {
    BIO_printf(bio, "%s");
LABEL_65:
    result = 1;
  }

LABEL_68:
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

ASN1_VALUE *__cdecl SMIME_read_ASN1(BIO *bio, BIO **bcont, const ASN1_ITEM *it)
{
  v49 = *MEMORY[0x277D85DE8];
  if (bcont)
  {
    *bcont = 0;
  }

  v6 = mime_parse_hdr(bio);
  if (!v6)
  {
    v13 = 207;
    v14 = 442;
    goto LABEL_12;
  }

  v7 = v6;
  v8 = mime_hdr_find(v6);
  if (!v8 || (v9 = v8, (v10 = *(v8 + 1)) == 0))
  {
    sk_pop_free(v7, mime_hdr_free);
    v13 = 209;
    v14 = 448;
LABEL_12:
    ERR_put_error(13, 4095, v13, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn_mime.c", v14);
    goto LABEL_13;
  }

  if (strcmp(*(v8 + 1), "multipart/signed"))
  {
    if (strcmp(v10, "application/x-pkcs7-mime") && strcmp(v10, "application/pkcs7-mime"))
    {
      ERR_put_error(13, 4095, 205, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn_mime.c", 517);
      ERR_asprintf_error_data("type: %s", *(v9 + 1));
      v11 = mime_hdr_free;
      v12 = v7;
      goto LABEL_61;
    }

    sk_pop_free(v7, mime_hdr_free);
    asn1 = b64_read_asn1(bio, it);
    if (!asn1)
    {
      ERR_put_error(13, 4095, 203, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn_mime.c", 526);
    }

    goto LABEL_14;
  }

  *data = "boundary";
  v48 = 0;
  v18 = sk_find(*(v9 + 2), data);
  if (v18 < 0 || (v19 = sk_value(*(v9 + 2), v18)) == 0 || (v20 = *(v19 + 1)) == 0)
  {
    sk_pop_free(v7, mime_hdr_free);
    v13 = 211;
    v14 = 459;
    goto LABEL_12;
  }

  __s = v20;
  v21 = strlen(v20);
  st = sk_new_null();
  if (!st)
  {
LABEL_57:
    sk_pop_free(v7, mime_hdr_free);
LABEL_58:
    v34 = 210;
    v35 = 465;
LABEL_59:
    ERR_put_error(13, 4095, v34, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn_mime.c", v35);
    goto LABEL_60;
  }

  v22 = BIO_gets(bio, data, 1024);
  if (v22 < 1)
  {
    v24 = 0;
LABEL_56:
    BIO_free(v24);
    goto LABEL_57;
  }

  v23 = v22;
  v46 = 0;
  v24 = 0;
  v44 = 0;
  v25 = 1;
  while (1)
  {
    v26 = v21;
    if (v21 == -1)
    {
      v26 = strlen(__s);
    }

    if (v26 + 2 <= v23 && data[0] == 45 && data[1] == 45)
    {
      v27 = v26;
      if (!strncmp(&data[2], __s, v26))
      {
        break;
      }
    }

    if (v46)
    {
      v28 = 0;
      v29 = v23 - 1;
      do
      {
        v30 = data[v29];
        if (v30 == 10)
        {
          v28 = 1;
        }

        else if (v30 != 13)
        {
          goto LABEL_38;
        }

        --v29;
        v31 = __OFSUB__(v23--, 1);
      }

      while (!((v23 < 0) ^ v31 | (v23 == 0)));
      v23 = 0;
LABEL_38:
      if (v25)
      {
        if (v24 && !sk_push(st, v24))
        {
          goto LABEL_57;
        }

        v32 = BIO_s_mem();
        v33 = BIO_new(v32);
        if (!v33)
        {
          goto LABEL_57;
        }

        v24 = v33;
        BIO_ctrl(v33, 130, 0, 0);
      }

      else if (v44)
      {
        BIO_write(v24, "\r\n", 2);
      }

      if (v23)
      {
        BIO_write(v24, data, v23);
      }

      v25 = 0;
      v44 = v28;
    }

    else
    {
      v46 = 0;
    }

LABEL_52:
    v23 = BIO_gets(bio, data, 1024);
    if (v23 <= 0)
    {
      goto LABEL_56;
    }
  }

  if (data[v27 + 2] != 45 || data[v27 + 3] != 45)
  {
    ++v46;
    v25 = 1;
    goto LABEL_52;
  }

  v36 = sk_push(st, v24);
  sk_pop_free(v7, mime_hdr_free);
  if (!v36 || sk_num(st) != 2)
  {
    goto LABEL_58;
  }

  v37 = sk_value(st, 1);
  v38 = mime_parse_hdr(v37);
  if (!v38)
  {
    v34 = 208;
    v35 = 474;
    goto LABEL_59;
  }

  v39 = v38;
  v40 = mime_hdr_find(v38);
  if (!v40 || (v41 = v40, (v42 = *(v40 + 1)) == 0))
  {
    sk_pop_free(v39, mime_hdr_free);
    sk_pop_free(st, BIO_vfree);
    v13 = 212;
    v14 = 485;
    goto LABEL_12;
  }

  if (!strcmp(*(v40 + 1), "application/x-pkcs7-signature") || !strcmp(v42, "application/pkcs7-signature"))
  {
    sk_pop_free(v39, mime_hdr_free);
    asn1 = b64_read_asn1(v37, it);
    if (asn1)
    {
      if (bcont)
      {
        *bcont = sk_value(st, 0);
        BIO_free(v37);
        sk_free(st);
        goto LABEL_14;
      }
    }

    else
    {
      ERR_put_error(13, 4095, 204, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn_mime.c", 500);
    }

    sk_pop_free(st, BIO_vfree);
    goto LABEL_14;
  }

  ERR_put_error(13, 4095, 213, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn_mime.c", 491);
  ERR_asprintf_error_data("type: %s", *(v41 + 1));
  sk_pop_free(v39, mime_hdr_free);
LABEL_60:
  v11 = BIO_vfree;
  v12 = st;
LABEL_61:
  sk_pop_free(v12, v11);
LABEL_13:
  asn1 = 0;
LABEL_14:
  v16 = *MEMORY[0x277D85DE8];
  return asn1;
}

STACK *mime_parse_hdr(BIO *a1)
{
  *&v24[1023] = *MEMORY[0x277D85DE8];
  st = sk_new(mime_hdr_cmp);
  if (!st)
  {
LABEL_64:
    st = 0;
    goto LABEL_65;
  }

  v1 = 0;
  v2 = 0;
LABEL_3:
  if (BIO_gets(a1, &buf, 1024) >= 1)
  {
    if (v1)
    {
      if ((buf & 0x8000000000000000) != 0)
      {
        if (__maskrune(buf, 0x4000uLL))
        {
          goto LABEL_7;
        }
      }

      else if ((*(MEMORY[0x277D85DE0] + 4 * buf + 60) & 0x4000) != 0)
      {
LABEL_7:
        v3 = 3;
LABEL_10:
        v4 = 0;
        v5 = 0;
        p_buf = &buf;
        v7 = v24;
        v8 = &buf;
        while (1)
        {
          v9 = *(v7 - 1);
          if (v9 <= 0xD && ((1 << v9) & 0x2401) != 0)
          {
            if (v3 == 4)
            {
              v18 = strip_ends(v8);
              mime_hdr_addparam(v1, v5, v18);
              if (v4)
              {
                goto LABEL_3;
              }
            }

            else
            {
              if (v3 == 2)
              {
                v16 = strip_ends(v8);
                v17 = mime_hdr_new(v5, v16);
                if (v17)
                {
                  v1 = v17;
                  if (sk_push(st, v17))
                  {
                    goto LABEL_58;
                  }

LABEL_62:
                  mime_hdr_free(v1);
                }

LABEL_63:
                sk_pop_free(st, mime_hdr_free);
                goto LABEL_64;
              }

LABEL_58:
              if (v4)
              {
                goto LABEL_3;
              }
            }

            goto LABEL_65;
          }

          if (v3 > 3)
          {
            if (v3 == 4)
            {
              if (v9 != 34)
              {
                if (v9 != 40)
                {
                  if (v9 == 59)
                  {
                    *(v7 - 1) = 0;
                    v13 = strip_ends(v8);
                    mime_hdr_addparam(v1, v5, v13);
LABEL_44:
                    v5 = 0;
                    v8 = p_buf + 1;
LABEL_45:
                    v3 = 3;
                    goto LABEL_53;
                  }

                  goto LABEL_46;
                }

                v2 = 4;
                goto LABEL_51;
              }

              v3 = 5;
            }

            else
            {
              if (v9 == 34)
              {
                v11 = 4;
              }

              else
              {
                v11 = 5;
              }

              if (v9 == 41)
              {
                v12 = v2;
              }

              else
              {
                v12 = 6;
              }

              if (v3 != 6)
              {
                v12 = v3;
              }

              if (v3 == 5)
              {
                v3 = v11;
              }

              else
              {
                v3 = v12;
              }
            }
          }

          else
          {
            switch(v3)
            {
              case 1:
                if (v9 == 58)
                {
                  *(v7 - 1) = 0;
                  v5 = strip_ends(v8);
                  v3 = 2;
                  v8 = v7;
                }

                else
                {
                  v3 = 1;
                }

                break;
              case 2:
                if (v9 == 40)
                {
                  v2 = 2;
LABEL_51:
                  v3 = 6;
                  break;
                }

                if (v9 == 59)
                {
                  *(v7 - 1) = 0;
                  v14 = strip_ends(v8);
                  v15 = mime_hdr_new(v5, v14);
                  if (!v15)
                  {
                    goto LABEL_63;
                  }

                  v1 = v15;
                  if (!sk_push(st, v15))
                  {
                    goto LABEL_62;
                  }

                  goto LABEL_44;
                }

                v3 = 2;
                break;
              case 3:
                if (v9 != 61)
                {
                  goto LABEL_45;
                }

                *(v7 - 1) = 0;
                v5 = strip_ends(v8);
                v8 = p_buf + 1;
LABEL_46:
                v3 = 4;
                break;
              default:
                break;
            }
          }

LABEL_53:
          ++p_buf;
          --v4;
          ++v7;
        }
      }
    }

    v3 = 1;
    goto LABEL_10;
  }

LABEL_65:
  v19 = *MEMORY[0x277D85DE8];
  return st;
}

char *mime_hdr_find(STACK *a1)
{
  v5 = 0;
  v6 = 0;
  *data = "content-type";
  v2 = sk_find(a1, data);
  if (v2 < 0)
  {
    return 0;
  }

  else
  {
    return sk_value(a1, v2);
  }
}

void mime_hdr_free(uint64_t a1)
{
  free(*a1);
  free(*(a1 + 8));
  v2 = *(a1 + 16);
  if (v2)
  {
    sk_pop_free(v2, mime_param_free);
  }

  free(a1);
}

void *b64_read_asn1(BIO *a1, const ASN1_ITEM *a2)
{
  v4 = BIO_f_base64();
  v5 = BIO_new(v4);
  if (v5)
  {
    v6 = v5;
    v7 = BIO_push(v5, a1);
    v8 = ASN1_item_d2i_bio(a2, v7, 0);
    if (!v8)
    {
      ERR_put_error(13, 4095, 110, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn_mime.c", 196);
    }

    BIO_ctrl(v7, 11, 0, 0);
    BIO_pop(v7);
    BIO_free(v6);
  }

  else
  {
    ERR_put_error(13, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn_mime.c", 190);
    return 0;
  }

  return v8;
}

int SMIME_text(BIO *in, BIO *out)
{
  v2 = MEMORY[0x28223BE20](in);
  v4 = v3;
  v5 = v2;
  v15 = *MEMORY[0x277D85DE8];
  v6 = mime_parse_hdr(v2);
  if (!v6)
  {
    ERR_put_error(13, 4095, 207, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn_mime.c", 579);
    goto LABEL_9;
  }

  v7 = v6;
  v8 = mime_hdr_find(v6);
  if (!v8 || (v9 = v8, (v10 = *(v8 + 1)) == 0))
  {
    ERR_put_error(13, 4095, 206, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn_mime.c", 583);
    goto LABEL_7;
  }

  if (strcmp(v10, "text/plain"))
  {
    ERR_put_error(13, 4095, 205, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn_mime.c", 588);
    ERR_asprintf_error_data("type: %s", *(v9 + 1));
LABEL_7:
    sk_pop_free(v7, mime_hdr_free);
LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  sk_pop_free(v7, mime_hdr_free);
  v13 = BIO_read(v5, data, 4096);
  if (v13 >= 1)
  {
    do
    {
      BIO_write(v4, data, v13);
      v13 = BIO_read(v5, data, 4096);
    }

    while (v13 > 0);
  }

  result = v13 == 0;
LABEL_10:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mime_hdr_cmp(const char ***a1, const char ***a2)
{
  v2 = **a1;
  v3 = **a2;
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
    return (v2 != 0) - (v3 != 0);
  }

  else
  {
    return strcmp(v2, v3);
  }
}

const char *strip_ends(uint64_t a1)
{
  v1 = (a1 + 1);
  v2 = MEMORY[0x277D85DE0];
  while (1)
  {
    v3 = *(v1 - 1);
    if (!*(v1 - 1))
    {
      return 0;
    }

    if (v3 == 34)
    {
      if (*v1)
      {
        goto LABEL_12;
      }

      return 0;
    }

    if ((v3 & 0x80) != 0)
    {
      break;
    }

    if ((*(v2 + 4 * v3 + 60) & 0x4000) == 0)
    {
      goto LABEL_11;
    }

LABEL_8:
    ++v1;
  }

  if (__maskrune(v3, 0x4000uLL))
  {
    goto LABEL_8;
  }

LABEL_11:
  --v1;
LABEL_12:
  v4 = &v1[strlen(v1)];
  v5 = v4 - 1;
  if (v4 - 1 < v1)
  {
    return 0;
  }

  v7 = *v5;
  if (v7 != 34)
  {
    while (1)
    {
      if ((v7 & 0x80) != 0)
      {
        if (!__maskrune(v7, 0x4000uLL))
        {
          return v1;
        }
      }

      else if ((*(v2 + 4 * v7 + 60) & 0x4000) == 0)
      {
        return v1;
      }

      *v5-- = 0;
      if (v5 < v1)
      {
        return 0;
      }

      v7 = *v5;
      if (v7 == 34)
      {
        v4 = v5 + 1;
        break;
      }
    }
  }

  if (v4 - 2 == v1)
  {
    return 0;
  }

  *v5 = 0;
  return v1;
}

void *mime_hdr_new(const char *a1, char *a2)
{
  v2 = a2;
  if (a1)
  {
    v3 = strdup(a1);
    v4 = v3;
    if (!v3)
    {
      v2 = 0;
      goto LABEL_17;
    }

    v5 = *v3;
    if (*v4)
    {
      v6 = v4 + 1;
      do
      {
        *(v6 - 1) = __tolower(v5);
        v7 = *v6++;
        v5 = v7;
      }

      while (v7);
    }

    if (!v2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0;
    if (!a2)
    {
      goto LABEL_13;
    }
  }

  v8 = strdup(v2);
  v2 = v8;
  if (!v8)
  {
LABEL_17:
    free(v4);
    free(v2);
    return 0;
  }

  v9 = *v8;
  if (*v2)
  {
    v10 = (v2 + 1);
    do
    {
      *(v10 - 1) = __tolower(v9);
      v11 = *v10++;
      v9 = v11;
    }

    while (v11);
  }

LABEL_13:
  v12 = malloc_type_malloc(0x18uLL, 0x30040254F79A5uLL);
  if (!v12)
  {
    goto LABEL_17;
  }

  v13 = v12;
  *v12 = v4;
  v12[1] = v2;
  v14 = sk_new(mime_param_cmp);
  v13[2] = v14;
  if (!v14)
  {
    free(v13);
    goto LABEL_17;
  }

  return v13;
}

void mime_hdr_addparam(uint64_t a1, char *__s1, char *a3)
{
  v3 = a3;
  if (__s1)
  {
    v5 = strdup(__s1);
    v6 = v5;
    if (!v5)
    {
      v3 = 0;
      goto LABEL_15;
    }

    v7 = *v5;
    if (*v6)
    {
      v8 = v6 + 1;
      do
      {
        *(v8 - 1) = __tolower(v7);
        v9 = *v8++;
        v7 = v9;
      }

      while (v9);
    }

    if (!v3)
    {
      goto LABEL_10;
    }

LABEL_9:
    v3 = strdup(v3);
    if (!v3)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v6 = 0;
  if (a3)
  {
    goto LABEL_9;
  }

LABEL_10:
  v10 = malloc_type_malloc(0x10uLL, 0x10040B8F86A93uLL);
  if (v10)
  {
    v11 = v10;
    *v10 = v6;
    v10[1] = v3;
    if (sk_push(*(a1 + 16), v10))
    {
      return;
    }

    free(v11);
  }

LABEL_15:
  free(v6);

  free(v3);
}

uint64_t mime_param_cmp(const char ***a1, const char ***a2)
{
  v2 = **a1;
  v3 = **a2;
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
    return (v2 != 0) - (v3 != 0);
  }

  else
  {
    return strcmp(v2, v3);
  }
}

void mime_param_free(void **a1)
{
  free(*a1);
  free(a1[1]);

  free(a1);
}

size_t null_puts(int a1, char *__s)
{
  if (__s)
  {
    return strlen(__s);
  }

  else
  {
    return 0;
  }
}

uint64_t null_ctrl(uint64_t a1, int a2)
{
  if ((a2 - 1) > 0xB)
  {
    return 0;
  }

  else
  {
    return qword_23E22FA48[a2 - 1];
  }
}

uint64_t null_new(uint64_t a1)
{
  *(a1 + 32) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return 1;
}

int X509_CRL_set_version(X509_CRL *x, uint64_t version)
{
  if (!x)
  {
    return 0;
  }

  v4 = x->crl->version;
  if (!v4)
  {
    v4 = ASN1_INTEGER_new();
    x->crl->version = v4;
    if (!v4)
    {
      return 0;
    }
  }

  return ASN1_INTEGER_set(v4, version);
}

int X509_CRL_set_issuer_name(X509_CRL *x, X509_NAME *name)
{
  if (x && x->crl)
  {
    return X509_NAME_set(&x->crl->issuer, name);
  }

  else
  {
    return 0;
  }
}

int X509_CRL_set_lastUpdate(X509_CRL *x, ASN1_TIME *tm)
{
  if (x)
  {
    v2 = tm;
    v3 = x;
    if (x->crl->lastUpdate != tm)
    {
      v2 = ASN1_STRING_dup(tm);
      if (v2)
      {
        ASN1_TIME_free(v3->crl->lastUpdate);
        v3->crl->lastUpdate = v2;
      }
    }

    LODWORD(x) = v2 != 0;
  }

  return x;
}

int X509_CRL_set_nextUpdate(X509_CRL *x, ASN1_TIME *tm)
{
  if (x)
  {
    v2 = tm;
    v3 = x;
    if (x->crl->nextUpdate != tm)
    {
      v2 = ASN1_STRING_dup(tm);
      if (v2)
      {
        ASN1_TIME_free(v3->crl->nextUpdate);
        v3->crl->nextUpdate = v2;
      }
    }

    LODWORD(x) = v2 != 0;
  }

  return x;
}

int X509_CRL_sort(X509_CRL *crl)
{
  sk_sort(crl->crl->revoked);
  if (sk_num(crl->crl->revoked) >= 1)
  {
    v2 = 0;
    do
    {
      *(sk_value(crl->crl->revoked, v2) + 9) = v2;
      ++v2;
    }

    while (v2 < sk_num(crl->crl->revoked));
  }

  crl->crl->enc.modified = 1;
  return 1;
}

int X509_REVOKED_set_revocationDate(X509_REVOKED *r, ASN1_TIME *tm)
{
  if (r)
  {
    v2 = tm;
    v3 = r;
    if (r->revocationDate != tm)
    {
      v2 = ASN1_STRING_dup(tm);
      if (v2)
      {
        ASN1_TIME_free(v3->revocationDate);
        v3->revocationDate = v2;
      }
    }

    LODWORD(r) = v2 != 0;
  }

  return r;
}

int X509_REVOKED_set_serialNumber(X509_REVOKED *x, ASN1_INTEGER *serial)
{
  if (x)
  {
    v2 = serial;
    v3 = x;
    if (x->serialNumber != serial)
    {
      v2 = ASN1_INTEGER_dup(serial);
      if (v2)
      {
        ASN1_INTEGER_free(v3->serialNumber);
        v3->serialNumber = v2;
      }
    }

    LODWORD(x) = v2 != 0;
  }

  return x;
}

uint64_t i2d_re_X509_CRL_tbs(X509_CRL_INFO **a1, unsigned __int8 **a2)
{
  v2 = *a1;
  v2->enc.modified = 1;
  return i2d_X509_CRL_INFO(v2, a2);
}

void ERR_load_UI_strings(void)
{
  if (!ERR_func_error_string(UI_str_functs))
  {
    ERR_load_strings(0, &UI_str_functs);

    ERR_load_strings(0, &UI_str_reasons);
  }
}

uint64_t aead_chacha20_poly1305_init(uint64_t a1, _OWORD *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = 16;
  }

  if (v4 >= 0x11)
  {
    ERR_put_error(6, 4095, 164, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/e_chacha20poly1305.c", 58);
    return 0;
  }

  if (a3 != 32)
  {
    return 0;
  }

  result = malloc_type_malloc(0x21uLL, 0x10000407D106B36uLL);
  if (result)
  {
    v8 = a2[1];
    *result = *a2;
    *(result + 16) = v8;
    *(result + 32) = v4;
    *(a1 + 8) = result;
    return 1;
  }

  return result;
}

uint64_t aead_chacha20_poly1305_seal(void *a1, int *a2, unint64_t *a3, unint64_t a4, unsigned __int8 *a5, uint64_t a6, _DWORD *a7, unint64_t a8, char *a9, unint64_t a10)
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a1[1];
  memset(v27, 0, sizeof(v27));
  if (*(v10 + 32) + a8 > a4)
  {
    v11 = 155;
    v12 = 137;
LABEL_11:
    ERR_put_error(6, 4095, v11, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/e_chacha20poly1305.c", v12);
    result = 0;
    goto LABEL_14;
  }

  if (*(*a1 + 1) != a6)
  {
    v11 = 102;
    v12 = 142;
    goto LABEL_11;
  }

  v18 = a10;
  v19 = (*a5 << 32) | (a5[1] << 40) | (a5[2] << 48) | (a5[3] << 56);
  memset(v28, 0, sizeof(v28));
  CRYPTO_chacha_20(v28, v28, 0x20uLL, v10, (a5 + 4), v19);
  CRYPTO_poly1305_init(v27, v28);
  poly1305_update_with_pad16(v27, a9, a10);
  CRYPTO_chacha_20(a2, a7, a8, v10, (a5 + 4), v19 | 1);
  poly1305_update_with_pad16(v27, a2, a8);
  for (i = 0; i != 8; ++i)
  {
    v26[i] = v18;
    v18 >>= 8;
  }

  CRYPTO_poly1305_update(v27, v26, 8uLL);
  v21 = 0;
  v22 = a8;
  do
  {
    v26[v21] = v22;
    v22 >>= 8;
    ++v21;
  }

  while (v21 != 8);
  CRYPTO_poly1305_update(v27, v26, 8uLL);
  if (*(v10 + 32) == 16)
  {
    CRYPTO_poly1305_finish(v27, a2 + a8);
    v23 = a8 + 16;
  }

  else
  {
    CRYPTO_poly1305_finish(v27, v26);
    memcpy(a2 + a8, v26, *(v10 + 32));
    v23 = *(v10 + 32) + a8;
  }

  *a3 = v23;
  result = 1;
LABEL_14:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aead_chacha20_poly1305_open(void *a1, int *a2, unint64_t *a3, unint64_t a4, unsigned __int8 *a5, uint64_t a6, char *a7, unint64_t a8, char *a9, unint64_t a10)
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a1[1];
  memset(v26, 0, sizeof(v26));
  v11 = *(v10 + 32);
  v12 = a8 - v11;
  if (a8 >= v11)
  {
    if (*(*a1 + 1) == a6)
    {
      if (v12 <= a4)
      {
        v19 = a10;
        v20 = (*a5 << 32) | (a5[1] << 40) | (a5[2] << 48) | (a5[3] << 56);
        memset(v27, 0, sizeof(v27));
        CRYPTO_chacha_20(v27, v27, 0x20uLL, v10, (a5 + 4), v20);
        CRYPTO_poly1305_init(v26, v27);
        poly1305_update_with_pad16(v26, a9, a10);
        poly1305_update_with_pad16(v26, a7, v12);
        for (i = 0; i != 8; ++i)
        {
          v28[i] = v19;
          v19 >>= 8;
        }

        CRYPTO_poly1305_update(v26, v28, 8uLL);
        v22 = 0;
        v23 = v12;
        do
        {
          v28[v22] = v23;
          v23 >>= 8;
          ++v22;
        }

        while (v22 != 8);
        CRYPTO_poly1305_update(v26, v28, 8uLL);
        CRYPTO_poly1305_finish(v26, v28);
        if (!timingsafe_memcmp(v28, &a7[v12], *(v10 + 32)))
        {
          CRYPTO_chacha_20(a2, a7, v12, v10, (a5 + 4), v20 | 1);
          *a3 = v12;
          result = 1;
          goto LABEL_14;
        }

        v13 = 100;
        v14 = 222;
      }

      else
      {
        v13 = 155;
        v14 = 201;
      }
    }

    else
    {
      v13 = 102;
      v14 = 194;
    }
  }

  else
  {
    v13 = 100;
    v14 = 189;
  }

  ERR_put_error(6, 4095, v13, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/e_chacha20poly1305.c", v14);
  result = 0;
LABEL_14:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *poly1305_update_with_pad16(uint64_t *a1, char *a2, unint64_t a3)
{
  v3 = a3;
  result = CRYPTO_poly1305_update(a1, a2, a3);
  if ((v3 & 0xF) != 0)
  {

    return CRYPTO_poly1305_update(a1, poly1305_pad16_zero_pad16, 16 - (v3 & 0xF));
  }

  return result;
}

uint64_t aead_xchacha20_poly1305_seal(void *a1, int *a2, unint64_t *a3, unint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, unint64_t a8, char *a9, unint64_t a10)
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a1[1];
  memset(v26, 0, sizeof(v26));
  if (*(v10 + 32) + a8 > a4)
  {
    v11 = 155;
    v12 = 243;
LABEL_11:
    ERR_put_error(6, 4095, v11, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/e_chacha20poly1305.c", v12);
    result = 0;
    goto LABEL_14;
  }

  if (*(*a1 + 1) != a6)
  {
    v11 = 102;
    v12 = 248;
    goto LABEL_11;
  }

  v18 = a10;
  CRYPTO_hchacha_20(v27, v10, a5);
  CRYPTO_chacha_20(a2, a7, a8, v27, (a5 + 16), 1);
  memset(v28, 0, sizeof(v28));
  CRYPTO_chacha_20(v28, v28, 0x20uLL, v27, (a5 + 16), 0);
  CRYPTO_poly1305_init(v26, v28);
  poly1305_update_with_pad16(v26, a9, a10);
  poly1305_update_with_pad16(v26, a2, a8);
  for (i = 0; i != 8; ++i)
  {
    v25[i] = v18;
    v18 >>= 8;
  }

  CRYPTO_poly1305_update(v26, v25, 8uLL);
  v20 = 0;
  v21 = a8;
  do
  {
    v25[v20] = v21;
    v21 >>= 8;
    ++v20;
  }

  while (v20 != 8);
  CRYPTO_poly1305_update(v26, v25, 8uLL);
  if (*(v10 + 32) == 16)
  {
    CRYPTO_poly1305_finish(v26, a2 + a8);
    v22 = a8 + 16;
  }

  else
  {
    CRYPTO_poly1305_finish(v26, v25);
    memcpy(a2 + a8, v25, *(v10 + 32));
    v22 = *(v10 + 32) + a8;
  }

  *a3 = v22;
  result = 1;
LABEL_14:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aead_xchacha20_poly1305_open(void *a1, int *a2, unint64_t *a3, unint64_t a4, uint64_t a5, uint64_t a6, char *a7, unint64_t a8, char *a9, unint64_t a10)
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a1[1];
  memset(v26, 0, sizeof(v26));
  v11 = *(v10 + 32);
  v12 = a8 - v11;
  if (a8 >= v11)
  {
    if (*(*a1 + 1) == a6)
    {
      if (v12 <= a4)
      {
        v19 = a10;
        CRYPTO_hchacha_20(v27, v10, a5);
        memset(v28, 0, sizeof(v28));
        CRYPTO_chacha_20(v28, v28, 0x20uLL, v27, (a5 + 16), 0);
        CRYPTO_poly1305_init(v26, v28);
        poly1305_update_with_pad16(v26, a9, a10);
        poly1305_update_with_pad16(v26, a7, v12);
        for (i = 0; i != 8; ++i)
        {
          v29[i] = v19;
          v19 >>= 8;
        }

        CRYPTO_poly1305_update(v26, v29, 8uLL);
        v21 = 0;
        v22 = v12;
        do
        {
          v29[v21] = v22;
          v22 >>= 8;
          ++v21;
        }

        while (v21 != 8);
        CRYPTO_poly1305_update(v26, v29, 8uLL);
        CRYPTO_poly1305_finish(v26, v29);
        if (!timingsafe_memcmp(v29, &a7[v12], *(v10 + 32)))
        {
          v23 = 1;
          CRYPTO_chacha_20(a2, a7, v12, v27, (a5 + 16), 1);
          *a3 = v12;
          goto LABEL_14;
        }

        v13 = 100;
        v14 = 323;
      }

      else
      {
        v13 = 155;
        v14 = 305;
      }
    }

    else
    {
      v13 = 102;
      v14 = 298;
    }
  }

  else
  {
    v13 = 100;
    v14 = 293;
  }

  ERR_put_error(6, 4095, v13, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/e_chacha20poly1305.c", v14);
  v23 = 0;
LABEL_14:
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t chacha20_poly1305_init(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 120);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  if (!(a2 | a3))
  {
    goto LABEL_9;
  }

  *(v3 + 380) = 0;
  if (a2)
  {
    v5 = *(a2 + 16);
    *(v3 + 280) = *a2;
    *(v3 + 296) = v5;
  }

  if (!a3 || CBB_init_fixed(v8, v3 + 312, 12) && CBB_add_space(v8, &v9, 12 - *(v3 + 328)) && CBB_add_bytes(v8, a3, *(v3 + 328)) && CBB_finish(v8, 0, 0))
  {
LABEL_9:
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  CBB_cleanup(v8);
  return v6;
}

unint64_t chacha20_poly1305_cipher(uint64_t a1, int *a2, char *a3, unint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 120);
  if (*(v8 + 380))
  {
    v9 = *(v8 + 368);
  }

  else
  {
    v10 = *(v8 + 312);
    ChaCha_set_key(*(a1 + 120), (v8 + 280), 256);
    ChaCha_set_iv(v8, (v8 + 316), 0);
    *(v8 + 48) = 0;
    *(v8 + 52) = v10;
    memset(v17, 0, sizeof(v17));
    ChaCha(v8, v17, v17, 0x20uLL);
    CRYPTO_poly1305_init(v8 + 136, v17);
    v9 = 0;
    *(v8 + 128) = 0;
    *(v8 + 360) = 0;
    *(v8 + 368) = 0;
    *(v8 + 376) = 0x100000000;
  }

  if (!__CFADD__(v9, a4))
  {
    if (!a2 && a3 && v9)
    {
      goto LABEL_10;
    }

    if (*(v8 + 376))
    {
      if (!a2 && a3)
      {
        goto LABEL_21;
      }

      if ((*(v8 + 360) & 0xFLL) != 0)
      {
        CRYPTO_poly1305_update((v8 + 136), poly1305_pad16_zero_pad16, 16 - (*(v8 + 360) & 0xFLL));
      }

      *(v8 + 376) = 0;
    }

    if (!a3)
    {
      if ((*(v8 + 368) & 0xFLL) != 0)
      {
        CRYPTO_poly1305_update((v8 + 136), poly1305_pad16_zero_pad16, 16 - (*(v8 + 368) & 0xFLL));
      }

      v13 = 0;
      v14 = *(v8 + 360);
      do
      {
        *(v17 + v13) = v14;
        v14 >>= 8;
        ++v13;
      }

      while (v13 != 8);
      CRYPTO_poly1305_update((v8 + 136), v17, 8uLL);
      v15 = 0;
      v16 = *(v8 + 368);
      do
      {
        *(v17 + v15) = v16;
        v16 >>= 8;
        ++v15;
      }

      while (v15 != 8);
      CRYPTO_poly1305_update((v8 + 136), v17, 8uLL);
      if (*(a1 + 16))
      {
        CRYPTO_poly1305_finish(v8 + 136, v8 + 336);
        *(v8 + 352) = 16;
      }

      else if (!*(v8 + 352) || (CRYPTO_poly1305_finish(v8 + 136, v17), timingsafe_memcmp(v17, (v8 + 336), *(v8 + 352))))
      {
LABEL_10:
        a4 = 0xFFFFFFFFLL;
        goto LABEL_24;
      }

      *(v8 + 380) = 0;
      goto LABEL_24;
    }

    if (a2)
    {
      ChaCha(v8, a2, a3, a4);
      *(v8 + 368) += a4;
      if (*(a1 + 16))
      {
LABEL_23:
        CRYPTO_poly1305_update((v8 + 136), a2, a4);
        goto LABEL_24;
      }

LABEL_22:
      a2 = a3;
      goto LABEL_23;
    }

LABEL_21:
    *(v8 + 360) += a4;
    *(v8 + 376) = 1;
    goto LABEL_22;
  }

  ERR_put_error(6, 4095, 164, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/e_chacha20poly1305.c", 478);
  a4 = 0;
LABEL_24:
  v11 = *MEMORY[0x277D85DE8];
  return a4;
}

uint64_t chacha20_poly1305_ctrl(uint64_t a1, int a2, size_t __n, uint64_t *__src)
{
  result = 0;
  v6 = *(a1 + 120);
  if (a2 <= 15)
  {
    if (!a2)
    {
      *(v6 + 352) = 0u;
      *(v6 + 368) = 0u;
      *(v6 + 320) = 0u;
      *(v6 + 336) = 0u;
      *(v6 + 288) = 0u;
      *(v6 + 304) = 0u;
      *(v6 + 256) = 0u;
      *(v6 + 272) = 0u;
      *(v6 + 224) = 0u;
      *(v6 + 240) = 0u;
      *(v6 + 192) = 0u;
      *(v6 + 208) = 0u;
      *(v6 + 160) = 0u;
      *(v6 + 176) = 0u;
      *(v6 + 128) = 0u;
      *(v6 + 144) = 0u;
      *(v6 + 96) = 0u;
      *(v6 + 112) = 0u;
      *(v6 + 64) = 0u;
      *(v6 + 80) = 0u;
      *(v6 + 32) = 0u;
      *(v6 + 48) = 0u;
      *(v6 + 328) = 12;
      result = 1;
      *v6 = 0u;
      *(v6 + 16) = 0u;
      return result;
    }

    if (a2 != 9)
    {
      return result;
    }

    if ((__n - 13) >= 0xFFFFFFF4)
    {
      *(v6 + 328) = __n;
      return 1;
    }

    return 0;
  }

  if (a2 != 16)
  {
    if (a2 == 17)
    {
      if (!*(a1 + 16) && (__n - 17) >= 0xFFFFFFF0)
      {
        if (__src)
        {
          v8 = __n;
          memcpy((v6 + 336), __src, __n);
          *(v6 + 352) = v8;
        }

        return 1;
      }
    }

    else
    {
      if (a2 != 18)
      {
        return result;
      }

      if (__n == 12)
      {
        v7 = *__src;
        *(v6 + 320) = *(__src + 2);
        *(v6 + 312) = v7;
        return 1;
      }
    }

    return 0;
  }

  result = 0;
  if (__n >= 1 && *(a1 + 16))
  {
    if (*(v6 + 352) >= __n)
    {
      memcpy(__src, (v6 + 336), __n);
      return 1;
    }

    return 0;
  }

  return result;
}

void ERR_load_OBJ_strings(void)
{
  if (!ERR_func_error_string(OBJ_str_functs))
  {
    ERR_load_strings(0, &OBJ_str_functs);

    ERR_load_strings(0, &OBJ_str_reasons);
  }
}

uint64_t ERR_load_KDF_strings()
{
  if (!ERR_func_error_string(KDF_str_functs))
  {
    ERR_load_strings(0, &KDF_str_functs);
    ERR_load_strings(0, &KDF_str_reasons);
  }

  return 1;
}

void ERR_load_DSO_strings(void)
{
  if (!ERR_func_error_string(DSO_str_functs))
  {
    ERR_load_strings(0, &DSO_str_functs);

    ERR_load_strings(0, &DSO_str_reasons);
  }
}

ASN1_INTEGER *__cdecl ASN1_INTEGER_dup(ASN1_INTEGER *x)
{
  if (!x || x->length < 0)
  {
    return 0;
  }

  else
  {
    return ASN1_STRING_dup(x);
  }
}

int ASN1_INTEGER_cmp(ASN1_INTEGER *x, ASN1_INTEGER *y)
{
  type = x->type;
  if (((y->type ^ type) & 0x100) != 0)
  {
    result = 1;
  }

  else
  {
    result = ASN1_STRING_cmp(x, y);
    type = x->type;
  }

  if ((type & 0x100) != 0)
  {
    return -result;
  }

  return result;
}

uint64_t asn1_aint_get_uint64(void *a1, unint64_t *a2)
{
  v6 = 0;
  *a2 = 0;
  v4 = 0;
  if (CBS_len(a1))
  {
    while (1)
    {
      result = CBS_get_u8(a1, &v6);
      if (!result)
      {
        break;
      }

      if (HIBYTE(v4))
      {
        ERR_put_error(13, 4095, 223, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_int.c", 141);
        return 0;
      }

      v4 = v6 | (v4 << 8);
      if (!CBS_len(a1))
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    *a2 = v4;
    return 1;
  }

  return result;
}

uint64_t asn1_aint_set_uint64(unint64_t a1, void *a2, int *a3)
{
  v12 = 0;
  v13 = 0;
  memset(v11, 0, sizeof(v11));
  if (!CBB_init(v11, 8uLL))
  {
    goto LABEL_6;
  }

  v6 = 0;
  if (a2 && a3)
  {
    if (*a2 || (v7 = *a3) != 0)
    {
LABEL_6:
      v6 = 0;
      goto LABEL_7;
    }

    for (i = 56; i != -8; i -= 8)
    {
      if (v7 || !i || (a1 >> i))
      {
        if (!CBB_add_u8(v11, (a1 >> i)))
        {
          goto LABEL_6;
        }

        v7 = 1;
      }

      else
      {
        v7 = 0;
      }
    }

    v6 = 0;
    if (CBB_finish(v11, &v13, &v12))
    {
      v10 = v12;
      if (!(v12 >> 31))
      {
        *a2 = v13;
        *a3 = v10;
        v13 = 0;
        v6 = 1;
      }
    }
  }

LABEL_7:
  CBB_cleanup(v11);
  freezero(v13, v12);
  return v6;
}

uint64_t asn1_aint_get_int64(void *a1, int a2, uint64_t *a3)
{
  v9 = 0;
  result = asn1_aint_get_uint64(a1, &v9);
  if (result)
  {
    v6 = v9;
    if (a2)
    {
      if (v9 >= 0x8000000000000001)
      {
        v7 = 224;
        v8 = 207;
LABEL_7:
        ERR_put_error(13, 4095, v7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_int.c", v8);
        return 0;
      }

      v6 = -v9;
    }

    else if (v9 < 0)
    {
      v7 = 223;
      v8 = 213;
      goto LABEL_7;
    }

    *a3 = v6;
    return 1;
  }

  return result;
}

uint64_t ASN1_INTEGER_get_uint64(void *a1, unsigned int *a2)
{
  *a1 = 0;
  if (!a2)
  {
    return 0;
  }

  v2 = *a2;
  if ((v2 & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = a2[1];
  if (v3 == 2)
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    CBS_init(v8, *(a2 + 1), v2);
    result = asn1_aint_get_uint64(v8, &v9);
    if (result)
    {
      *a1 = v9;
      return 1;
    }
  }

  else
  {
    if (v3 == 258)
    {
      v4 = 226;
      v5 = 234;
    }

    else
    {
      v4 = 225;
      v5 = 238;
    }

    ERR_put_error(13, 4095, v4, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_int.c", v5);
    return 0;
  }

  return result;
}

uint64_t ASN1_INTEGER_set_uint64(int *a1, unint64_t a2)
{
  v4 = a1 + 2;
  freezero(*(a1 + 1), *a1);
  *a1 = 0;
  *v4 = 0;
  *(a1 + 2) = 0;
  a1[1] = 2;

  return asn1_aint_set_uint64(a2, v4, a1);
}

uint64_t ASN1_INTEGER_get_int64(uint64_t *a1, unsigned int *a2)
{
  *a1 = 0;
  if (!a2)
  {
    return 0;
  }

  v3 = *a2;
  if ((v3 & 0x80000000) == 0)
  {
    if ((a2[1] | 0x100) == 0x102)
    {
      memset(v6, 0, sizeof(v6));
      CBS_init(v6, *(a2 + 1), v3);
      return asn1_aint_get_int64(v6, a2[1] == 258, a1);
    }

    ERR_put_error(13, 4095, 225, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_int.c", 272);
  }

  return 0;
}

uint64_t ASN1_INTEGER_set_int64(int *a1, unint64_t a2)
{
  v4 = a1 + 2;
  freezero(*(a1 + 1), *a1);
  *a1 = 0;
  *v4 = 0;
  *(a1 + 2) = 0;
  a1[1] = 2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    a1[1] = 258;
    a2 = -a2;
  }

  return asn1_aint_set_uint64(a2, v4, a1);
}

uint64_t ASN1_INTEGER_get(uint64_t a)
{
  if (a)
  {
    v1 = 0;
    if (ASN1_INTEGER_get_int64(&v1, a))
    {
      return v1;
    }

    else
    {
      return -1;
    }
  }

  return a;
}

ASN1_INTEGER *__cdecl BN_to_ASN1_INTEGER(BIGNUM *bn, ASN1_INTEGER *ai)
{
  v4 = ai;
  if (!ai)
  {
    v4 = ASN1_item_new(&ASN1_INTEGER_it);
    if (!v4)
    {
      v11 = 58;
      v12 = 333;
LABEL_16:
      ERR_put_error(13, 4095, v11, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_int.c", v12);
      goto LABEL_17;
    }
  }

  if ((v4->length & 0x80000000) == 0)
  {
    if (BN_is_negative(bn))
    {
      v5 = 258;
    }

    else
    {
      v5 = 2;
    }

    v4->type = v5;
    v6 = BN_num_bits(bn);
    v7 = v6 / 8 + 5;
    if (!v6)
    {
      v7 = 4;
    }

    data = v4->data;
    if (v4->length >= v7)
    {
      goto LABEL_12;
    }

    v9 = malloc_type_realloc(v4->data, v7, 0xF1990234uLL);
    if (v9)
    {
      data = v9;
      v4->data = v9;
LABEL_12:
      v10 = BN_bn2bin(bn, data);
      v4->length = v10;
      if (!v10)
      {
        *v4->data = 0;
        v4->length = 1;
      }

      return v4;
    }

    v11 = 65;
    v12 = 349;
    goto LABEL_16;
  }

LABEL_17:
  if (v4 != ai)
  {
    ASN1_item_free(v4, &ASN1_INTEGER_it);
  }

  return 0;
}

BIGNUM *__cdecl ASN1_INTEGER_to_BN(ASN1_INTEGER *ai, BIGNUM *bn)
{
  if (!ai || ai->length < 0)
  {
    return 0;
  }

  v3 = BN_bin2bn(ai->data, ai->length, bn);
  v4 = v3;
  if (v3)
  {
    if (ai->type == 258)
    {
      BN_set_negative(v3, 1);
    }
  }

  else
  {
    ERR_put_error(13, 4095, 105, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_int.c", 378);
  }

  return v4;
}

int i2a_ASN1_INTEGER(BIO *bp, ASN1_INTEGER *a)
{
  if (!a)
  {
    return 0;
  }

  if ((a->type & 0x100) != 0)
  {
    v4 = 1;
    if (BIO_write(bp, "-", 1) != 1)
    {
      return -1;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a->length)
  {
    if (a->length >= 1)
    {
      v5 = 0;
      while (1)
      {
        if (v5 && 35 * (v5 / 0x23) == v5)
        {
          if (BIO_write(bp, "\\\n", 2) != 2)
          {
            return -1;
          }

          v4 += 2;
        }

        v6 = a->data;
        data[0] = i2a_ASN1_INTEGER_h[v6[v5] >> 4];
        data[1] = i2a_ASN1_INTEGER_h[v6[v5] & 0xF];
        if (BIO_write(bp, data, 2) != 2)
        {
          break;
        }

        v4 += 2;
        if (++v5 >= a->length)
        {
          return v4;
        }
      }

      return -1;
    }
  }

  else if (BIO_write(bp, "00", 2) == 2)
  {
    return v4 | 2;
  }

  else
  {
    return -1;
  }

  return v4;
}

int a2i_ASN1_INTEGER(BIO *bp, ASN1_INTEGER *bs, char *buf, int size)
{
  bs->type = 2;
  v8 = BIO_gets(bp, buf, size);
  if (v8 >= 1)
  {
    v32 = bs;
    bpa = bp;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = buf - 1;
    sizea = size;
    while (1)
    {
      v14 = v13[v8];
      if (v14 == 10)
      {
        buf[--v8] = 0;
        if (!v8)
        {
          goto LABEL_41;
        }

        v14 = v13[v8];
      }

      if (v14 == 13)
      {
        buf[--v8] = 0;
        if (!v8)
        {
          goto LABEL_41;
        }

        v14 = v13[v8];
      }

      v15 = v8 - (v14 == 92);
      buf[v15] = 0;
      if (v15 < 2)
      {
LABEL_41:
        v18 = v12;
        goto LABEL_38;
      }

      if (v9)
      {
        v16 = buf;
      }

      else
      {
        v16 = buf;
        if (*buf == 48)
        {
          if (buf[1] == 48)
          {
            v15 -= 2;
          }

          v16 = &buf[2 * (buf[1] == 48)];
        }
      }

      if (v15)
      {
        v30 = 145;
        v31 = 467;
LABEL_44:
        ERR_put_error(13, 4095, v30, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_int.c", v31);
        goto LABEL_40;
      }

      v17 = v11 + (v15 >> 1);
      if (v17 <= v10)
      {
        break;
      }

      v18 = recallocarray(v12, v10, v11 + (v15 >> 1), 1uLL);
      v10 = v11 + (v15 >> 1);
      if (!v18)
      {
        v30 = 65;
        v31 = 473;
        goto LABEL_44;
      }

      if (v15)
      {
        goto LABEL_22;
      }

LABEL_33:
      if (v14 != 92)
      {
        v32->length = v17;
        v32->data = v18;
        return 1;
      }

      v8 = BIO_gets(bpa, buf, sizea);
      v9 = 1;
      v11 += v15 >> 1;
      v12 = v18;
      if (v8 < 1)
      {
        goto LABEL_38;
      }
    }

    v18 = v12;
    if (!v15)
    {
      goto LABEL_33;
    }

LABEL_22:
    v19 = 0;
    v20 = 0;
    LODWORD(v21) = v15 >> 1;
    if (v15 >> 1 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v21;
    }

    while (2)
    {
      v22 = 0;
      v23 = 1;
      do
      {
        v24 = v23;
        v25 = v16[v22 | v20];
        v26 = v25 - 48;
        if ((v25 - 48) >= 0xA)
        {
          if ((v25 - 97) > 5)
          {
            if ((v25 - 65) > 5)
            {
              v27 = 141;
              v28 = 489;
              goto LABEL_39;
            }

            v26 = v25 - 55;
          }

          else
          {
            v26 = v25 - 87;
          }
        }

        v23 = 0;
        v18[v19 + v11] = v26 | (16 * v18[v19 + v11]);
        v22 = 1;
      }

      while ((v24 & 1) != 0);
      ++v19;
      v20 += 2;
      if (v19 != v21)
      {
        continue;
      }

      goto LABEL_33;
    }
  }

  v18 = 0;
LABEL_38:
  v27 = 150;
  v28 = 507;
LABEL_39:
  ERR_put_error(13, 4095, v27, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_int.c", v28);
  v12 = v18;
LABEL_40:
  free(v12);
  return 0;
}

int i2c_ASN1_INTEGER(ASN1_INTEGER *a, unsigned __int8 **pp)
{
  __n = 0;
  __src = 0;
  memset(v23, 0, sizeof(v23));
  if (!CBB_init(v23, 0))
  {
    v6 = 0;
    goto LABEL_14;
  }

  v28 = 0;
  v29 = 0;
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  length = a->length;
  if ((length & 0x80000000) != 0 || (data = a->data, length) && !data || (a->type & 0xFFFFFEF7 | 8) != 0xA)
  {
LABEL_11:
    v6 = 0;
    v7 = 0;
LABEL_12:
    freezero(v7, v28);
LABEL_14:
    v8 = -3;
    goto LABEL_15;
  }

  CBS_init(v26, data, length);
  while (CBS_len(v26))
  {
    if (!CBS_peek_u8(v26, &v27))
    {
      goto LABEL_11;
    }

    if (v27)
    {
      break;
    }

    if (!CBS_skip(v26, 1uLL))
    {
      goto LABEL_11;
    }
  }

  if (CBS_len(v26))
  {
    v10 = CBS_stow(v26, &v29, &v28);
    v7 = v29;
    if (!v10)
    {
LABEL_43:
      v6 = 0;
      goto LABEL_12;
    }

    if ((a->type & 0x100) != 0)
    {
      v14 = v28;
      if ((v28 - 1) < 0)
      {
        v18 = *v29;
        v19 = (v18 >> 7) - 1;
        v11 = 1;
LABEL_32:
        if (!v11 || (v18 & 0x80) != 0)
        {
          goto LABEL_35;
        }

LABEL_34:
        v20 = CBB_add_u8(v23, v19);
        v7 = v29;
        if (v20)
        {
LABEL_35:
          v21 = CBB_add_bytes(v23, v7, v28);
          v7 = v29;
          if (v21)
          {
            v13 = v28;
            goto LABEL_37;
          }

          v6 = __n;
          goto LABEL_12;
        }

        goto LABEL_43;
      }

      v15 = (v29 - 1);
      v16 = 1;
      do
      {
        v17 = v16 + ~v15[v14];
        v15[v14] = v17;
        if (v17)
        {
          v16 = 0;
        }

        --v14;
      }

      while (v14);
      v7 = v29;
      v11 = a->type & 0x100;
    }

    else
    {
      v11 = 0;
    }

    v18 = *v7;
    v19 = ((v18 >> 7) & 1) - 1;
    if (!v11 && (v18 & 0x80000000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v12 = CBB_add_u8(v23, 0);
  v13 = 0;
  v7 = 0;
  v6 = 0;
  if (!v12)
  {
    goto LABEL_12;
  }

LABEL_37:
  freezero(v7, v13);
  v22 = CBB_finish(v23, &__src, &__n);
  v6 = __n;
  v8 = -3;
  if (v22 && !(__n >> 31))
  {
    if (!pp)
    {
LABEL_42:
      v8 = v6;
      goto LABEL_15;
    }

    if (!__CFADD__(__n, *pp))
    {
      memcpy(*pp, __src, __n);
      v6 = __n;
      *pp += __n;
      goto LABEL_42;
    }
  }

LABEL_15:
  freezero(__src, v6);
  CBB_cleanup(v23);
  return v8;
}

uint64_t c2i_ASN1_INTEGER_cbs(ASN1_VALUE **a1, void *a2)
{
  v23 = 0;
  v24 = 0;
  v22 = 0;
  if (!a1)
  {
    goto LABEL_16;
  }

  v4 = *a1;
  if (v4)
  {
    ASN1_item_free(v4, &ASN1_INTEGER_it);
    *a1 = 0;
  }

  if (!CBS_len(a2))
  {
    v9 = 665;
    goto LABEL_15;
  }

  if (!CBS_peek_u8(a2, &v22))
  {
LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

  v5 = v22;
  v6 = v22 >> 7;
  v22 = v22;
  if (CBS_len(a2) >= 2 && v22 == v6)
  {
    v7 = CBS_data(a2);
    v8 = CBS_len(a2);
    if (v8 >= 2 && *v7 == 255)
    {
      v12 = v8 - 1;
      v13 = v7 + 1;
      while (!*v13++)
      {
        if (!--v12)
        {
          goto LABEL_21;
        }
      }
    }

    if (!CBS_get_u8(a2, &v22 + 1) || !CBS_peek_u8(a2, &v22))
    {
      goto LABEL_16;
    }

    if (((HIBYTE(v22) ^ v22) & 0x80) == 0)
    {
      v9 = 687;
LABEL_15:
      ERR_put_error(13, 4095, 62, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_int.c", v9);
      goto LABEL_16;
    }
  }

LABEL_21:
  v15 = CBS_stow(a2, &v24, &v23);
  v10 = 0;
  if (v15 && !(v23 >> 31))
  {
    v16 = ASN1_item_new(&ASN1_INTEGER_it);
    if (!v16)
    {
      goto LABEL_16;
    }

    v17 = v23;
    v18 = v24;
    if (v5 < 0)
    {
      *(v16 + 1) = 258;
      if ((v17 - 1) >= 0)
      {
        v19 = v18 - 1;
        v20 = 1;
        do
        {
          v21 = v20 + ~v19[v17];
          v19[v17] = v21;
          if (v21)
          {
            v20 = 0;
          }

          --v17;
        }

        while (v17);
        LODWORD(v17) = v23;
        v18 = v24;
      }
    }

    *(v16 + 1) = v18;
    *v16 = v17;
    v24 = 0;
    v10 = 1;
    *a1 = v16;
  }

LABEL_17:
  ASN1_item_free(0, &ASN1_INTEGER_it);
  freezero(v24, v23);
  return v10;
}

ASN1_INTEGER *__cdecl c2i_ASN1_INTEGER(ASN1_INTEGER **a, const unsigned __int8 **pp, uint64_t length)
{
  v8 = 0;
  if (a)
  {
    ASN1_item_free(*a, &ASN1_INTEGER_it);
    *a = 0;
  }

  if (length < 0)
  {
    ERR_put_error(13, 4095, 136, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_int.c", 738);
    return 0;
  }

  memset(v7, 0, sizeof(v7));
  CBS_init(v7, *pp, length);
  if (!c2i_ASN1_INTEGER_cbs(&v8, v7))
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

ASN1_INTEGER *__cdecl d2i_ASN1_UINTEGER(ASN1_INTEGER **a, const unsigned __int8 **pp, uint64_t length)
{
  if (!a || (v6 = *a) == 0)
  {
    v6 = ASN1_item_new(&ASN1_INTEGER_it);
    if (!v6)
    {
      return v6;
    }
  }

  plength = 0;
  ppa = 0;
  *pclass = 0;
  if (v6->length < 0)
  {
    goto LABEL_8;
  }

  ppa = *pp;
  if ((ASN1_get_object(&ppa, &plength, &pclass[1], pclass, length) & 0x80) != 0)
  {
    v7 = 102;
    goto LABEL_11;
  }

  if (pclass[1] != 2)
  {
    v7 = 115;
    goto LABEL_11;
  }

  if (plength >> 31)
  {
LABEL_8:
    v7 = 62;
    goto LABEL_11;
  }

  v9 = malloc_type_malloc(plength + 1, 0xB7AA8CF8uLL);
  if (!v9)
  {
    v7 = 65;
LABEL_11:
    ERR_put_error(13, 4095, v7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_int.c", 836);
    if (!a || *a != v6)
    {
      ASN1_item_free(v6, &ASN1_INTEGER_it);
    }

    return 0;
  }

  v10 = v9;
  v6->type = 2;
  v11 = plength;
  if (plength)
  {
    v12 = ppa;
    if (plength != 1 && !*ppa)
    {
      v12 = ppa + 1;
      --plength;
      ++ppa;
      --v11;
    }

    memcpy(v9, v12, v11);
    ppa += plength;
  }

  free(v6->data);
  v6->data = v10;
  v6->length = plength;
  if (a)
  {
    *a = v6;
  }

  *pp = ppa;
  return v6;
}

void BF_ecb_encrypt(const unsigned __int8 *in, unsigned __int8 *out, const BF_KEY *key, int enc)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = bswap32(*(in + 1));
  v8 = bswap32(*in);
  v9 = v5;
  if (enc)
  {
    BF_encrypt(&v8, key);
  }

  else
  {
    BF_decrypt(&v8, key);
  }

  v6 = bswap32(v9);
  *out = bswap32(v8);
  *(out + 1) = v6;
  v7 = *MEMORY[0x277D85DE8];
}

CONF_VALUE *__cdecl _CONF_get_section(const CONF *conf, const char *section)
{
  result = 0;
  if (conf)
  {
    if (section)
    {
      data[1] = 0;
      data[2] = 0;
      data[0] = section;
      return lh_retrieve(conf->data, data);
    }
  }

  return result;
}

STACK *__cdecl _CONF_get_section_values(const CONF *conf, const char *section)
{
  if (!conf || !section)
  {
    return 0;
  }

  data[1] = 0;
  data[2] = 0;
  data[0] = section;
  result = lh_retrieve(conf->data, data);
  if (result)
  {
    return *&result->sorted;
  }

  return result;
}

int _CONF_add_string(CONF *conf, CONF_VALUE *section, CONF_VALUE *value)
{
  v5 = section->value;
  value->section = section->section;
  result = sk_push(v5, value);
  if (result)
  {
    v7 = lh_insert(conf->data, value);
    if (v7)
    {
      v8 = v7;
      sk_delete_ptr(v5, v7);
      free(v8[1]);
      free(v8[2]);
      free(v8);
    }

    return 1;
  }

  return result;
}

char *__cdecl _CONF_get_string(const CONF *conf, const char *section, const char *name)
{
  result = 0;
  if (conf && name)
  {
    data = 0;
    v7 = 0;
    v8 = 0;
    if (section)
    {
      data = section;
      v7 = name;
      result = lh_retrieve(conf->data, &data);
      if (result)
      {
        return *(result + 2);
      }
    }

    data = "default";
    v7 = name;
    result = lh_retrieve(conf->data, &data);
    if (result)
    {
      return *(result + 2);
    }
  }

  return result;
}

int _CONF_new_data(CONF *conf)
{
  if (conf)
  {
    v1 = conf;
    if (conf->data || (conf = lh_new(conf_value_LHASH_HASH, conf_value_LHASH_COMP), (v1->data = conf) != 0))
    {
      LODWORD(conf) = 1;
    }
  }

  return conf;
}

uint64_t conf_value_LHASH_COMP(const char **a1, const char **a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 != v5)
  {
    result = strcmp(v4, v5);
    if (result)
    {
      return result;
    }
  }

  v7 = a1[1];
  v8 = a2[1];
  if (!v7)
  {
    v9 = -1;
    goto LABEL_10;
  }

  if (!v8)
  {
    v9 = 1;
LABEL_10:
    if (v7 == v8)
    {
      return 0;
    }

    else
    {
      return v9;
    }
  }

  return strcmp(v7, v8);
}

void _CONF_free_data(CONF *conf)
{
  if (conf)
  {
    data = conf->data;
    if (data)
    {
      data->down_load = 0;
      lh_doall_arg(data, value_free_hash_LHASH_DOALL_ARG, data);
      lh_doall(conf->data, value_free_stack_LHASH_DOALL);
      v3 = conf->data;

      lh_free(v3);
    }
  }
}

void *value_free_hash_LHASH_DOALL_ARG(void *data, LHASH *lh)
{
  if (data[1])
  {
    return lh_delete(lh, data);
  }

  return data;
}

void value_free_stack_LHASH_DOALL(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    v3 = *(a1 + 16);
    v4 = sk_num(v3);
    if (v4 >= 1)
    {
      v5 = v4 + 1;
      do
      {
        v6 = sk_value(v3, v5 - 2);
        free(v6[2]);
        free(v6[1]);
        free(v6);
        --v5;
      }

      while (v5 > 1);
    }

    if (v3)
    {
      sk_free(v3);
    }

    free(*a1);

    free(a1);
  }
}

CONF_VALUE *__cdecl _CONF_new_section(CONF *conf, const char *section)
{
  v4 = sk_new_null();
  if (!v4)
  {
    v6 = 0;
    goto LABEL_8;
  }

  v5 = v4;
  v6 = malloc_type_malloc(0x18uLL, 0x100402FEFCB83uLL);
  if (!v6 || (v7 = (strlen(section) + 1), v8 = malloc_type_malloc(v7, 0xF0464DFCuLL), (v6->section = v8) == 0))
  {
    sk_free(v5);
LABEL_8:
    free(v6);
    return 0;
  }

  memcpy(v8, section, v7);
  v6->name = 0;
  v6->value = v5;
  if (lh_insert(conf->data, v6))
  {
    OpenSSLDie("/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/conf/conf_api.c", 268, "vv == NULL");
  }

  return v6;
}

uint64_t md_write(BIO *a1, const void *a2, int a3)
{
  v3 = 0;
  if (a2 && a3 >= 1)
  {
    next_bio = a1->next_bio;
    if (next_bio && (prev_bio = a1->prev_bio) != 0)
    {
      v8 = BIO_write(prev_bio, a2, a3);
      v3 = v8;
      if (a1->flags && v8 >= 1 && !EVP_DigestUpdate(next_bio, a2, v8))
      {
        BIO_clear_flags(a1, 15);
        return 0;
      }
    }

    else
    {
      v3 = 0;
    }

    if (a1->prev_bio)
    {
      BIO_clear_flags(a1, 15);
      BIO_copy_next_retry(a1);
    }
  }

  return v3;
}

uint64_t md_read(BIO *a1, void *a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  next_bio = a1->next_bio;
  if (!next_bio)
  {
    return 0;
  }

  prev_bio = a1->prev_bio;
  if (!prev_bio)
  {
    return 0;
  }

  v7 = BIO_read(prev_bio, a2, a3);
  v8 = v7;
  if (a1->flags && v7 >= 1 && EVP_DigestUpdate(next_bio, a2, v7) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  BIO_clear_flags(a1, 15);
  BIO_copy_next_retry(a1);
  return v8;
}

uint64_t md_gets(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v5 = *(a1 + 56);
  if (v5->digest->md_size > a3)
  {
    return 0;
  }

  v8 = v3;
  v9 = v4;
  v7 = 0;
  if (EVP_DigestFinal_ex(v5, a2, &v7) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v7;
  }
}

uint64_t md_ctrl(BIO *b, int a2, uint64_t a3, bio_st *type)
{
  next_bio = b->next_bio;
  if (a2 <= 110)
  {
    switch(a2)
    {
      case 1:
        if (b->flags)
        {
          LODWORD(result) = EVP_DigestInit_ex(b->next_bio, next_bio->digest, 0);
          if (result < 1)
          {
            return result;
          }

          prev_bio = b->prev_bio;
          a2 = 1;
          goto LABEL_20;
        }

        break;
      case 12:
        if (EVP_MD_CTX_copy_ex(type->next_bio, next_bio))
        {
LABEL_27:
          result = 1;
          b->flags = 1;
          return result;
        }

        break;
      case 101:
        BIO_clear_flags(b, 15);
        v8 = BIO_ctrl(b->prev_bio, 101, a3, type);
        BIO_copy_next_retry(b);
        return v8;
      default:
LABEL_19:
        prev_bio = b->prev_bio;
LABEL_20:

        return BIO_ctrl(prev_bio, a2, a3, type);
    }

    return 0;
  }

  if (a2 > 119)
  {
    if (a2 != 120)
    {
      if (a2 == 148)
      {
        if (b->flags)
        {
          b->next_bio = type;
          return 1;
        }

        return 0;
      }

      goto LABEL_19;
    }

    type->method = next_bio;
    goto LABEL_27;
  }

  if (a2 != 111)
  {
    if (a2 == 112)
    {
      if (b->flags)
      {
        type->method = next_bio->digest;
        return 1;
      }

      return 0;
    }

    goto LABEL_19;
  }

  result = EVP_DigestInit_ex(b->next_bio, type, 0);
  if (result >= 1)
  {
    b->flags = 1;
  }

  return result;
}

uint64_t md_new(uint64_t a1)
{
  result = EVP_MD_CTX_create();
  if (result)
  {
    *(a1 + 32) = 0;
    *(a1 + 56) = result;
    result = 1;
    *(a1 + 40) = 0;
  }

  return result;
}

uint64_t md_free(uint64_t result)
{
  if (result)
  {
    v1 = result;
    EVP_MD_CTX_destroy(*(result + 56));
    *(v1 + 56) = 0;
    *(v1 + 32) = 0;
    result = 1;
    *(v1 + 40) = 0;
  }

  return result;
}

BIO *md_callback_ctrl(uint64_t a1, int a2, void (__cdecl *a3)(bio_st *, int, const char *, int, uint64_t, uint64_t))
{
  result = *(a1 + 64);
  if (result)
  {
    return BIO_callback_ctrl(result, a2, a3);
  }

  return result;
}

STACK *__cdecl i2v_ASN1_BIT_STRING(X509V3_EXT_METHOD *method, ASN1_BIT_STRING *bits, STACK *extlist)
{
  extlista = extlist;
  if (extlist)
  {
    v5 = 0;
  }

  else
  {
    extlist = sk_new_null();
    extlista = extlist;
    v5 = extlist;
    if (!extlist)
    {
      return extlist;
    }
  }

  usr_data = method->usr_data;
  if (*(usr_data + 1))
  {
    while (!ASN1_BIT_STRING_get_bit(bits, *usr_data) || X509V3_add_value(*(usr_data + 1), 0, &extlista))
    {
      v7 = *(usr_data + 4);
      usr_data += 24;
      if (!v7)
      {
        return extlista;
      }
    }

    sk_pop_free(v5, X509V3_conf_free);
    return 0;
  }

  return extlist;
}

ASN1_BIT_STRING *__cdecl v2i_ASN1_BIT_STRING(X509V3_EXT_METHOD *method, X509V3_CTX *ctx, STACK *nval)
{
  v5 = ASN1_BIT_STRING_new();
  if (v5)
  {
    if (sk_num(nval) >= 1)
    {
      v6 = 0;
      while (1)
      {
        v7 = sk_value(nval, v6);
        v8 = v7;
        usr_data = method->usr_data;
        v10 = *(usr_data + 1);
        if (!v10)
        {
LABEL_15:
          ERR_put_error(34, 4095, 111, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_bitst.c", 212);
          ERR_asprintf_error_data("section:%s,name:%s,value:%s", *v8, v8[1], v8[2]);
          goto LABEL_16;
        }

        v11 = *(v7 + 1);
        v12 = (usr_data + 16);
        while (strcmp(*v12, v11) && strcmp(v10, v11))
        {
          v10 = v12[2];
          v12 += 3;
          if (!v10)
          {
            goto LABEL_15;
          }
        }

        if (!ASN1_BIT_STRING_set_bit(v5, *(v12 - 4), 1))
        {
          break;
        }

        if (!*(v12 - 1))
        {
          goto LABEL_15;
        }

        if (++v6 >= sk_num(nval))
        {
          return v5;
        }
      }

      ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_bitst.c", 204);
LABEL_16:
      ASN1_BIT_STRING_free(v5);
      return 0;
    }
  }

  else
  {
    ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_bitst.c", 194);
  }

  return v5;
}

int ASN1_item_digest(const ASN1_ITEM *it, const EVP_MD *type, void *data, unsigned __int8 *md, unsigned int *len)
{
  out = 0;
  v8 = ASN1_item_i2d(data, &out, it);
  if (!out)
  {
    return 0;
  }

  v9 = EVP_Digest(out, v8, md, len, type, 0) != 0;
  free(out);
  return v9;
}

void *__cdecl ASN1_item_dup(const ASN1_ITEM *it, void *x)
{
  out = 0;
  if (!x)
  {
    return 0;
  }

  v3 = ASN1_item_i2d(x, &out, it);
  if (!out)
  {
    ERR_put_error(13, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn1_item.c", 161);
    return 0;
  }

  v6 = out;
  v4 = ASN1_item_d2i(0, &v6, v3, it);
  free(out);
  return v4;
}

ASN1_STRING *__cdecl ASN1_item_pack(void *obj, const ASN1_ITEM *it, ASN1_OCTET_STRING **oct)
{
  if (!oct || (v6 = *oct) == 0)
  {
    v6 = ASN1_STRING_new();
    if (!v6)
    {
      ERR_put_error(13, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn1_item.c", 178);
      return v6;
    }
  }

  free(v6->data);
  v6->data = 0;
  v7 = ASN1_item_i2d(obj, &v6->data, it);
  v6->length = v7;
  if (v7)
  {
    if (v6->data)
    {
      if (oct)
      {
        *oct = v6;
      }

      return v6;
    }

    v8 = 65;
    v9 = 192;
  }

  else
  {
    v8 = 112;
    v9 = 188;
  }

  ERR_put_error(13, 4095, v8, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn1_item.c", v9);
  if (!oct || v6 != *oct)
  {
    ASN1_STRING_free(v6);
  }

  return 0;
}

void *__cdecl ASN1_item_unpack(ASN1_STRING *oct, const ASN1_ITEM *it)
{
  in = oct->data;
  v2 = ASN1_item_d2i(0, &in, oct->length, it);
  if (!v2)
  {
    ERR_put_error(13, 4095, 110, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn1_item.c", 213);
  }

  return v2;
}

int ASN1_item_sign(const ASN1_ITEM *it, X509_ALGOR *algor1, X509_ALGOR *algor2, ASN1_BIT_STRING *signature, void *data, EVP_PKEY *pkey, const EVP_MD *type)
{
  v16 = 0u;
  memset(&v15, 0, sizeof(v15));
  EVP_MD_CTX_init(&v15);
  if (EVP_DigestSignInit(&v15, 0, type, 0, pkey))
  {
    return ASN1_item_sign_ctx(it, algor1, algor2, signature, data, &v15);
  }

  EVP_MD_CTX_cleanup(&v15);
  return 0;
}

uint64_t ASN1_item_sign_ctx(const ASN1_ITEM *a1, X509_ALGOR *a2, X509_ALGOR *a3, ASN1_STRING *a4, ASN1_VALUE *a5, EVP_MD_CTX *ctx)
{
  *len = 0;
  out = 0;
  v12 = EVP_MD_CTX_md(ctx);
  v13 = EVP_PKEY_CTX_get0_pkey(ctx[1].digest);
  if (v12 && (v14 = v13) != 0)
  {
    n = 0;
    v15 = *(*(v13 + 16) + 208);
    if (!v15)
    {
      goto LABEL_11;
    }

    v16 = v15(ctx, a1, a5, a2, a3, a4);
    if (v16 == 1)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      length = a4->length;
LABEL_35:
      EVP_MD_CTX_cleanup(ctx);
      freezero(out, v18);
      freezero(v17, length);
      return v19;
    }

    if (v16 <= 0)
    {
      ERR_put_error(13, 4095, 6, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn1_item.c", 263);
      goto LABEL_28;
    }

    if (v16 != 2)
    {
LABEL_19:
      v27 = ASN1_item_i2d(a5, &out, a1);
      if (v27 >= 1)
      {
        v18 = v27;
        v28 = EVP_PKEY_size(v14);
        if (v28 >= 1)
        {
          length = v28;
          v29 = v28;
          v17 = malloc_type_malloc(v28, 0xE0504D6EuLL);
          if (v17)
          {
            *len = v29;
            if (EVP_DigestUpdate(ctx, out, v18) && EVP_DigestSignFinal(ctx, v17, len))
            {
              if (!(*len >> 31))
              {
                ASN1_STRING_set0(a4, v17, len[0]);
                if (asn1_abs_set_unused_bits(a4, 0))
                {
                  v17 = 0;
                  v19 = len[0];
                  goto LABEL_35;
                }

                ERR_put_error(13, 4095, 13, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn1_item.c", 321);
                v17 = 0;
                goto LABEL_34;
              }

              v30 = 155;
              v31 = 313;
            }

            else
            {
              v30 = 6;
              v31 = 308;
            }
          }

          else
          {
            v30 = 65;
            v31 = 301;
          }

          ERR_put_error(13, 4095, v30, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn1_item.c", v31);
LABEL_34:
          v19 = 0;
          goto LABEL_35;
        }

        v17 = 0;
LABEL_30:
        length = 0;
        goto LABEL_34;
      }

LABEL_28:
      v17 = 0;
      v18 = 0;
      goto LABEL_30;
    }

    if (*(v14 + 16))
    {
LABEL_11:
      v23 = EVP_MD_type(v12);
      if (OBJ_find_sigid_by_algs(&n, v23, **(v14 + 16)))
      {
        if ((*(*(v14 + 16) + 8) & 4) != 0)
        {
          v24 = 5;
        }

        else
        {
          v24 = -1;
        }

        if (a2)
        {
          v25 = OBJ_nid2obj(n);
          X509_ALGOR_set0(a2, v25, v24, 0);
        }

        if (a3)
        {
          v26 = OBJ_nid2obj(n);
          X509_ALGOR_set0(a3, v26, v24, 0);
        }

        goto LABEL_19;
      }
    }

    v21 = 198;
    v22 = 272;
  }

  else
  {
    v21 = 217;
    v22 = 247;
  }

  ERR_put_error(13, 4095, v21, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn1_item.c", v22);
  return 0;
}

int ASN1_item_verify(const ASN1_ITEM *it, X509_ALGOR *algor1, ASN1_BIT_STRING *signature, void *data, EVP_PKEY *pkey)
{
  out = 0;
  if (!pkey)
  {
    v10 = 67;
    v11 = 345;
    goto LABEL_12;
  }

  if (signature->type != 3 || (signature->flags & 7) == 0)
  {
    v28 = 0u;
    memset(&ctx, 0, sizeof(ctx));
    *n = 0;
    EVP_MD_CTX_init(&ctx);
    v12 = OBJ_obj2nid(algor1->algorithm);
    if (OBJ_find_sigid_algs(v12, &n[1], n))
    {
      if (n[1])
      {
        v13 = OBJ_nid2sn(n[1]);
        digestbyname = EVP_get_digestbyname(v13);
        if (!digestbyname)
        {
          v18 = 161;
          v19 = 380;
          goto LABEL_25;
        }

        v15 = digestbyname;
        if (EVP_PKEY_type(n[0]) != *pkey->pkey.ptr)
        {
          v18 = 200;
          v19 = 386;
          goto LABEL_25;
        }

        if (!EVP_DigestVerifyInit(&ctx, 0, v15, 0, pkey))
        {
          v16 = 391;
LABEL_30:
          ERR_put_error(13, 4095, 6, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn1_item.c", v16);
          v17 = 0;
          goto LABEL_26;
        }
      }

      else
      {
        ptr = pkey->pkey.ptr;
        if (!ptr || (v21 = *(ptr + 25)) == 0)
        {
          v18 = 199;
          v19 = 364;
          goto LABEL_25;
        }

        v17 = v21(&ctx, it, data, algor1, signature, pkey);
        if (v17 != 2)
        {
          goto LABEL_26;
        }
      }

      v22 = ASN1_item_i2d(data, &out, it);
      if (out)
      {
        v23 = v22;
        if (!EVP_DigestUpdate(&ctx, out, v22))
        {
          v16 = 406;
          goto LABEL_30;
        }

        freezero(out, v23);
        if (EVP_DigestVerifyFinal(&ctx, signature->data, signature->length) <= 0)
        {
          v16 = 415;
          goto LABEL_30;
        }

        v17 = 1;
LABEL_26:
        EVP_MD_CTX_cleanup(&ctx);
        return v17;
      }

      v18 = 65;
      v19 = 401;
    }

    else
    {
      v18 = 199;
      v19 = 359;
    }

LABEL_25:
    ERR_put_error(13, 4095, v18, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn1_item.c", v19);
    v17 = -1;
    goto LABEL_26;
  }

  v10 = 220;
  v11 = 351;
LABEL_12:
  ERR_put_error(13, 4095, v10, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn1_item.c", v11);
  return -1;
}

uint64_t asn1_d2i_read_bio(BIO *a1, BUF_MEM **a2)
{
  v4 = BUF_MEM_new();
  if (!v4)
  {
    ERR_put_error(13, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn1_item.c", 446);
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  plength = 0;
  pp = 0;
  *pclass = 0;
  ERR_clear_error();
  v6 = 0;
  v7 = 0;
  v8 = 0;
  while (1)
  {
    while (1)
    {
      v9 = v8 - v7;
      if (v8 - v7 <= 8)
      {
        if (__CFADD__(8 - v9, v8) || !BUF_MEM_grow_clean(v5, v7 + 8))
        {
          v21 = 65;
          v22 = 457;
LABEL_43:
          ERR_put_error(13, 4095, v21, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn1_item.c", v22);
LABEL_44:
          BUF_MEM_free(v5);
          return 0xFFFFFFFFLL;
        }

        v10 = BIO_read(a1, &v5->data[v8], 8 - v9);
        if (v8 == v7 && v10 < 0)
        {
          v21 = 142;
          v22 = 462;
          goto LABEL_43;
        }

        if (v10 >= 1)
        {
          v11 = __CFADD__(v8, v10);
          v8 += v10;
          if (v11)
          {
            v21 = 155;
            v22 = 467;
            goto LABEL_43;
          }

          v9 = v8 - v7;
        }
      }

      v12 = &v5->data[v7];
      pp = v12;
      object = ASN1_get_object(&pp, &plength, &pclass[1], pclass, v9);
      if (object < 0)
      {
        if ((ERR_peek_error() & 0xFFF) != 0x9B)
        {
          goto LABEL_44;
        }

        ERR_clear_error();
      }

      v7 += pp - v12;
      if (object)
      {
        v20 = 1;
        goto LABEL_41;
      }

      v14 = plength;
      if (v6)
      {
        if (!plength && !pclass[1])
        {
          break;
        }
      }

      v15 = plength - (v8 - v7);
      if (plength > v8 - v7)
      {
        v16 = __CFADD__(v8, v15);
        if (v15 >> 31 || v16)
        {
          v21 = 155;
          v22 = 514;
          goto LABEL_43;
        }

        if (v15)
        {
          v17 = 0x4000;
          while (2)
          {
            if (v15 >= v17)
            {
              v18 = v17;
            }

            else
            {
              v18 = v15;
            }

            if (!BUF_MEM_grow_clean(v5, v18 + v8))
            {
              v21 = 65;
              v22 = 527;
              goto LABEL_43;
            }

            v15 -= v18;
            do
            {
              v19 = BIO_read(a1, &v5->data[v8], v18);
              if (v19 <= 0)
              {
                v21 = 142;
                v22 = 534;
                goto LABEL_43;
              }

              v8 += v19;
              v18 -= v19;
            }

            while (v18);
            v17 <<= v17 < 0x3FFFFFFF;
            if (v15)
            {
              continue;
            }

            break;
          }

          v14 = plength;
        }
      }

      v11 = __CFADD__(v14, v7);
      v7 += v14;
      if (v11)
      {
        v21 = 155;
        v22 = 549;
        goto LABEL_43;
      }

      if (v6 <= 0)
      {
        goto LABEL_49;
      }
    }

    if (v6 < 2)
    {
      break;
    }

    v20 = -1;
LABEL_41:
    v6 += v20;
  }

LABEL_49:
  if (v7 >> 31)
  {
    v21 = 155;
    v22 = 561;
    goto LABEL_43;
  }

  *a2 = v5;
  return v7;
}

void *__cdecl ASN1_item_d2i_bio(const ASN1_ITEM *it, BIO *in, void *x)
{
  data = 0;
  v10 = 0;
  v5 = asn1_d2i_read_bio(in, &v10);
  v6 = v10;
  if ((v5 & 0x80000000) != 0)
  {
    v7 = 0;
    result = 0;
    if (!v10)
    {
      return result;
    }
  }

  else
  {
    data = v10->data;
    v7 = ASN1_item_d2i(x, &data, v5, it);
  }

  BUF_MEM_free(v6);
  return v7;
}

void *__cdecl ASN1_item_d2i_fp(const ASN1_ITEM *it, FILE *in, void *x)
{
  v6 = BIO_s_file();
  v7 = BIO_new(v6);
  if (v7)
  {
    v8 = v7;
    BIO_ctrl(v7, 106, 0, in);
    v9 = ASN1_item_d2i_bio(it, v8, x);
    BIO_free(v8);
    return v9;
  }

  else
  {
    ERR_put_error(13, 4095, 7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn1_item.c", 602);
    return 0;
  }
}

int ASN1_item_i2d_bio(const ASN1_ITEM *it, BIO *out, void *x)
{
  outa = 0;
  v4 = ASN1_item_i2d(x, &outa, it);
  if (outa)
  {
    v5 = v4;
    v6 = BIO_write(out, outa, v4);
    if (v6 == v5)
    {
LABEL_6:
      v8 = 1;
    }

    else
    {
      LODWORD(v7) = 0;
      while (v6 >= 1)
      {
        v7 = (v6 + v7);
        v5 -= v6;
        v6 = BIO_write(out, &outa[v7], v5);
        if (v6 == v5)
        {
          goto LABEL_6;
        }
      }

      v8 = 0;
    }

    free(outa);
  }

  else
  {
    ERR_put_error(13, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn1_item.c", 619);
    return 0;
  }

  return v8;
}

int ASN1_item_i2d_fp(const ASN1_ITEM *it, FILE *out, void *x)
{
  v6 = BIO_s_file();
  v7 = BIO_new(v6);
  if (v7)
  {
    v8 = v7;
    BIO_ctrl(v7, 106, 0, out);
    v9 = ASN1_item_i2d_bio(it, v8, x);
    BIO_free(v8);
    return v9;
  }

  else
  {
    ERR_put_error(13, 4095, 7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn1_item.c", 645);
    return 0;
  }
}

void ERR_load_X509_strings(void)
{
  if (!ERR_func_error_string(X509_str_functs))
  {
    ERR_load_strings(0, &X509_str_functs);

    ERR_load_strings(0, &X509_str_reasons);
  }
}

void ERR_load_X509V3_strings(void)
{
  if (!ERR_func_error_string(X509V3_str_functs))
  {
    ERR_load_strings(0, &X509V3_str_functs);

    ERR_load_strings(0, &X509V3_str_reasons);
  }
}

uint64_t cast_init_key(const EVP_CIPHER_CTX *a1, const unsigned __int8 *a2)
{
  cipher_data = a1->cipher_data;
  v4 = EVP_CIPHER_CTX_key_length(a1);
  CAST_set_key(cipher_data, v4, a2);
  return 1;
}

uint64_t cast5_cbc_cipher(uint64_t a1, unsigned __int8 *out, unsigned __int8 *in, unint64_t length)
{
  for (i = length; i > 0x7FFFFFFFFFFFFEFFLL; out += 0x7FFFFFFFFFFFFF00)
  {
    CAST_cbc_encrypt(in, out, 0x7FFFFFFFFFFFFF00, *(a1 + 120), (a1 + 40), *(a1 + 16));
    i -= 0x7FFFFFFFFFFFFF00;
    in += 0x7FFFFFFFFFFFFF00;
  }

  if (i)
  {
    CAST_cbc_encrypt(in, out, i, *(a1 + 120), (a1 + 40), *(a1 + 16));
  }

  return 1;
}

uint64_t cast5_cfb64_cipher(uint64_t a1, unsigned __int8 *out, unsigned __int8 *in, unint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    if (a4 >= 0x7FFFFFFFFFFFFF00)
    {
      v8 = 0x7FFFFFFFFFFFFF00;
    }

    else
    {
      v8 = a4;
    }

    do
    {
      CAST_cfb64_encrypt(in, out, v8, *(a1 + 120), (a1 + 40), (a1 + 88), *(a1 + 16));
      in += v8;
      out += v8;
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

uint64_t cast5_ofb_cipher(uint64_t a1, unsigned __int8 *out, unsigned __int8 *in, unint64_t length)
{
  for (i = length; i > 0x7FFFFFFFFFFFFEFFLL; out += 0x7FFFFFFFFFFFFF00)
  {
    CAST_ofb64_encrypt(in, out, 0x7FFFFFFFFFFFFF00, *(a1 + 120), (a1 + 40), (a1 + 88));
    i -= 0x7FFFFFFFFFFFFF00;
    in += 0x7FFFFFFFFFFFFF00;
  }

  if (i)
  {
    CAST_ofb64_encrypt(in, out, i, *(a1 + 120), (a1 + 40), (a1 + 88));
  }

  return 1;
}

uint64_t cast5_ecb_cipher(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *(*a1 + 4);
  v5 = a4 - v4;
  if (a4 >= v4)
  {
    v9 = 0;
    do
    {
      CAST_ecb_encrypt((a3 + v9), (a2 + v9), *(a1 + 120), *(a1 + 16));
      v9 += v4;
    }

    while (v9 <= v5);
  }

  return 1;
}

ASN1_OBJECT *__cdecl OBJ_dup(const ASN1_OBJECT *o)
{
  if (!o)
  {
    return 0;
  }

  if (o->flags)
  {
    v2 = ASN1_OBJECT_new();
    if (!v2)
    {
      ERR_put_error(8, 4095, 13, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/objects/obj_lib.c", 84);
      return v2;
    }

    v3 = malloc_type_malloc(o->length, 0x6A2F1405uLL);
    v4 = v3;
    if (v3)
    {
      data = o->data;
      if (data)
      {
        memcpy(v3, data, o->length);
      }

      v2->data = v4;
      *&v2->nid = *&o->nid;
      v2->sn = 0;
      v2->ln = 0;
      ln = o->ln;
      if (!ln)
      {
        v8 = 0;
        goto LABEL_14;
      }

      v7 = strdup(ln);
      v8 = v7;
      if (v7)
      {
        v2->ln = v7;
LABEL_14:
        if (!o->sn)
        {
LABEL_17:
          v2->flags = o->flags | 0xD;
          return v2;
        }

        v9 = strdup(o->sn);
        if (v9)
        {
          v2->sn = v9;
          goto LABEL_17;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    ERR_put_error(8, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/objects/obj_lib.c", 115);
    free(v8);
    free(v4);
    free(v2);
    return 0;
  }

  return o;
}

int OBJ_cmp(const ASN1_OBJECT *a, const ASN1_OBJECT *b)
{
  length = a->length;
  if (length == b->length)
  {
    return memcmp(a->data, b->data, length);
  }

  else
  {
    return length - b->length;
  }
}

void RC4(RC4_KEY *key, unint64_t len, const unsigned __int8 *indata, unsigned __int8 *outdata)
{
  v4 = *&key->x;
  v5 = *&key->data[2];
  v6 = &key->data[6];
  if (((outdata | indata) & 7) != 0)
  {
    if (len >= 8)
    {
      v7 = len >> 3;
      do
      {
        v8 = *&v6[4 * (v4 + 1)];
        v9 = v8 + v5;
        v10 = *&v6[4 * v9];
        *&v6[4 * (v4 + 1)] = v10;
        *&v6[4 * v9] = v8;
        *outdata = *indata ^ *&v6[4 * (v10 + v8)];
        v11 = *&v6[4 * (v4 + 2)];
        v12 = v11 + v9;
        v13 = *&v6[4 * v12];
        *&v6[4 * (v4 + 2)] = v13;
        *&v6[4 * v12] = v11;
        outdata[1] = indata[1] ^ *&v6[4 * (v13 + v11)];
        v14 = *&v6[4 * (v4 + 3)];
        v15 = v14 + v12;
        v16 = *&v6[4 * v15];
        *&v6[4 * (v4 + 3)] = v16;
        *&v6[4 * v15] = v14;
        outdata[2] = indata[2] ^ *&v6[4 * (v16 + v14)];
        v17 = *&v6[4 * (v4 + 4)];
        v18 = v17 + v15;
        v19 = *&v6[4 * v18];
        *&v6[4 * (v4 + 4)] = v19;
        *&v6[4 * v18] = v17;
        outdata[3] = indata[3] ^ *&v6[4 * (v19 + v17)];
        v20 = *&v6[4 * (v4 + 5)];
        v21 = v20 + v18;
        v22 = *&v6[4 * v21];
        *&v6[4 * (v4 + 5)] = v22;
        *&v6[4 * v21] = v20;
        outdata[4] = indata[4] ^ *&v6[4 * (v22 + v20)];
        v23 = *&v6[4 * (v4 + 6)];
        v24 = v23 + v21;
        v25 = *&v6[4 * v24];
        *&v6[4 * (v4 + 6)] = v25;
        *&v6[4 * v24] = v23;
        outdata[5] = indata[5] ^ *&v6[4 * (v25 + v23)];
        v26 = *&v6[4 * (v4 + 7)];
        v27 = v26 + v24;
        v28 = *&v6[4 * v27];
        *&v6[4 * (v4 + 7)] = v28;
        *&v6[4 * v27] = v26;
        outdata[6] = indata[6] ^ *&v6[4 * (v28 + v26)];
        v4 = (v4 + 8);
        v29 = *&v6[4 * v4];
        v5 = (v29 + v27);
        v30 = *&v6[4 * v5];
        *&v6[4 * v4] = v30;
        *&v6[4 * v5] = v29;
        v31 = *&v6[4 * (v30 + v29)];
        v32 = indata + 8;
        outdata[7] = indata[7] ^ v31;
        outdata += 8;
        indata += 8;
        --v7;
      }

      while (v7);
      indata = v32;
    }
  }

  else
  {
    while (len >= 8)
    {
      v33 = *&v6[4 * (v4 + 1)];
      v34 = v33 + v5;
      v35 = *&v6[4 * v34];
      *&v6[4 * v34] = v33;
      *&v6[4 * (v4 + 1)] = v35;
      v36 = *&v6[4 * (v35 + v33)];
      v37 = *&v6[4 * (v4 + 2)];
      v38 = v37 + v34;
      v39 = *&v6[4 * v38];
      *&v6[4 * v38] = v37;
      *&v6[4 * (v4 + 2)] = v39;
      v40 = *&v6[4 * (v39 + v37)];
      v41 = *&v6[4 * (v4 + 3)];
      v42 = v41 + v38;
      v43 = *&v6[4 * v42];
      *&v6[4 * v42] = v41;
      *&v6[4 * (v4 + 3)] = v43;
      v44 = v36 | (v40 << 8) | (*&v6[4 * (v43 + v41)] << 16);
      v45 = *&v6[4 * (v4 + 4)];
      v46 = v45 + v42;
      v47 = *&v6[4 * v46];
      *&v6[4 * v46] = v45;
      *&v6[4 * (v4 + 4)] = v47;
      v48 = *&v6[4 * (v47 + v45)];
      v49 = *&v6[4 * (v4 + 5)];
      v50 = v49 + v46;
      v51 = *&v6[4 * v50];
      *&v6[4 * v50] = v49;
      *&v6[4 * (v4 + 5)] = v51;
      v52 = v44 | (v48 << 24) | (*&v6[4 * (v51 + v49)] << 32);
      v53 = *&v6[4 * (v4 + 6)];
      v54 = v53 + v50;
      v55 = *&v6[4 * v54];
      *&v6[4 * v54] = v53;
      *&v6[4 * (v4 + 6)] = v55;
      v56 = *&v6[4 * (v55 + v53)];
      v57 = *&v6[4 * (v4 + 7)];
      v58 = v57 + v54;
      v59 = *&v6[4 * v58];
      *&v6[4 * v58] = v57;
      v60 = *indata;
      indata += 8;
      *&v6[4 * (v4 + 7)] = v59;
      v61 = v52 | (v56 << 40) | (*&v6[4 * (v59 + v57)] << 48);
      v4 = (v4 + 8);
      LODWORD(v56) = *&v6[4 * v4];
      v5 = (v56 + v58);
      v62 = *&v6[4 * v5];
      *&v6[4 * v5] = v56;
      *&v6[4 * v4] = v62;
      *outdata = (v61 | (*&v6[4 * (v62 + v56)] << 56)) ^ v60;
      outdata += 8;
      len -= 8;
    }
  }

  v63 = len & 7;
  if ((len & 7) != 0)
  {
    v64 = (v4 + 1);
    v65 = *&v6[4 * (v4 + 1)];
    v66 = v65 + v5;
    v5 = (v65 + v5);
    v67 = *&v6[4 * v5];
    *&v6[4 * (v4 + 1)] = v67;
    *&v6[4 * v5] = v65;
    *outdata = *indata ^ v6[4 * (v67 + v65)];
    if (v63 == 1)
    {
      goto LABEL_15;
    }

    v64 = (v4 + 2);
    v68 = *&v6[4 * (v4 + 2)];
    v69 = v68 + v66;
    v5 = v69;
    v70 = *&v6[4 * v69];
    *&v6[4 * (v4 + 2)] = v70;
    *&v6[4 * v69] = v68;
    outdata[1] = indata[1] ^ v6[4 * (v70 + v68)];
    if (v63 == 2)
    {
      goto LABEL_15;
    }

    v64 = (v4 + 3);
    v71 = *&v6[4 * (v4 + 3)];
    v72 = v71 + v69;
    v5 = v72;
    v73 = *&v6[4 * v72];
    *&v6[4 * (v4 + 3)] = v73;
    *&v6[4 * v72] = v71;
    outdata[2] = indata[2] ^ v6[4 * (v73 + v71)];
    if (v63 == 3)
    {
      goto LABEL_15;
    }

    v64 = (v4 + 4);
    v74 = *&v6[4 * (v4 + 4)];
    v75 = v74 + v72;
    v5 = v75;
    v76 = *&v6[4 * v75];
    *&v6[4 * (v4 + 4)] = v76;
    *&v6[4 * v75] = v74;
    outdata[3] = indata[3] ^ v6[4 * (v76 + v74)];
    if (v63 == 4)
    {
      goto LABEL_15;
    }

    v64 = (v4 + 5);
    v77 = *&v6[4 * (v4 + 5)];
    v78 = v77 + v75;
    v5 = v78;
    v79 = *&v6[4 * v78];
    *&v6[4 * (v4 + 5)] = v79;
    *&v6[4 * v78] = v77;
    outdata[4] = indata[4] ^ v6[4 * (v79 + v77)];
    if (v63 == 5)
    {
      goto LABEL_15;
    }

    v64 = (v4 + 6);
    v80 = *&v6[4 * (v4 + 6)];
    v81 = v80 + v78;
    v5 = v81;
    v82 = *&v6[4 * v81];
    *&v6[4 * (v4 + 6)] = v82;
    *&v6[4 * v81] = v80;
    outdata[5] = indata[5] ^ v6[4 * (v82 + v80)];
    if (v63 == 6)
    {
LABEL_15:
      v4 = v64;
    }

    else
    {
      v4 = (v4 + 7);
      v83 = *&v6[4 * v4];
      v5 = (v83 + v81);
      v84 = *&v6[4 * (v83 + v81)];
      *&v6[4 * v4] = v84;
      *&v6[4 * (v83 + v81)] = v83;
      outdata[6] = indata[6] ^ v6[4 * (v84 + v83)];
    }
  }

  *&key->x = v4;
  *&key->data[2] = v5;
}

uint64_t gost2814789_set_asn1_params(uint64_t a1, ASN1_TYPE *a2)
{
  v4 = *(a1 + 120);
  v5 = GOST_CIPHER_PARAMS_new();
  if (v5)
  {
    v6 = v5;
    if (ASN1_OCTET_STRING_set(*v5, (a1 + 40), *(*a1 + 12)))
    {
      ASN1_OBJECT_free(v6[1]);
      v6[1] = OBJ_nid2obj(*(v4 + 4136));
      v7 = i2d_GOST_CIPHER_PARAMS(v6, 0);
      v8 = malloc_type_malloc(v7, 0x706FDF61uLL);
      v15 = v8;
      if (v8)
      {
        v9 = v8;
        i2d_GOST_CIPHER_PARAMS(v6, &v15);
        GOST_CIPHER_PARAMS_free(v6);
        v10 = ASN1_OCTET_STRING_new();
        if (v10)
        {
          v11 = v10;
          if (ASN1_OCTET_STRING_set(v10, v9, v7))
          {
            free(v9);
            ASN1_TYPE_set(a2, 16, v11);
            return 1;
          }

          ASN1_OCTET_STRING_free(v11);
          free(v9);
          v13 = 13;
          v14 = 142;
        }

        else
        {
          free(v9);
          v13 = 65;
          v14 = 136;
        }
      }

      else
      {
        GOST_CIPHER_PARAMS_free(v6);
        v13 = 65;
        v14 = 127;
      }
    }

    else
    {
      GOST_CIPHER_PARAMS_free(v6);
      v13 = 13;
      v14 = 117;
    }
  }

  else
  {
    v13 = 65;
    v14 = 112;
  }

  ERR_put_error(50, 4095, v13, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/e_gost2814789.c", v14);
  return 0;
}

uint64_t gost2814789_get_asn1_params(void *a1, ASN1_TYPE *a)
{
  v4 = a1[15];
  if (ASN1_TYPE_get(a) == 16)
  {
    ptr = a->value.ptr;
    v11 = *(ptr + 1);
    v6 = d2i_GOST_CIPHER_PARAMS(0, &v11, *ptr);
    v7 = v6;
    v8 = **v6;
    if (v8 == *(*a1 + 12))
    {
      v9 = OBJ_obj2nid(*(v6 + 1));
      if (Gost2814789_set_sbox(v4, v9))
      {
        *(v4 + 4136) = OBJ_obj2nid(v7[1]);
        memcpy(a1 + 3, (*v7)->ln, v8);
        memcpy(a1 + 5, (*v7)->ln, v8);
        GOST_CIPHER_PARAMS_free(v7);
        return 1;
      }

      GOST_CIPHER_PARAMS_free(v7);
    }

    else
    {
      GOST_CIPHER_PARAMS_free(v6);
      ERR_put_error(50, 4095, 103, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/e_gost2814789.c", 171);
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t gost2814789_ecb_cipher(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *(*a1 + 4);
  v5 = a4 - v4;
  if (a4 >= v4)
  {
    v9 = 0;
    do
    {
      Gost2814789_ecb_encrypt((a3 + v9), (a2 + v9), *(a1 + 120), *(a1 + 16));
      v9 += v4;
    }

    while (v9 <= v5);
  }

  return 1;
}

uint64_t gost2814789_ctl(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  v4 = *(a1 + 120);
  if (!a2)
  {
    *(v4 + 4136) = 824;
    a3 = 824;
    return Gost2814789_set_sbox(v4, a3);
  }

  if (a2 == 25)
  {
    return Gost2814789_set_sbox(v4, a3);
  }

  if (a2 != 7)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a4)
  {
    return 0;
  }

  *a4 = 810;
  return 1;
}

uint64_t gost2814789_cfb64_cipher(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    if (a4 >= 0x4000000000000000)
    {
      v8 = 0x4000000000000000;
    }

    else
    {
      v8 = a4;
    }

    do
    {
      Gost2814789_cfb64_encrypt(a3, a2, v8, *(a1 + 120), (a1 + 40), (a1 + 88), *(a1 + 16));
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

uint64_t gost2814789_cnt_cipher(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v8 = *(a1 + 120);
  if (a4 >> 62)
  {
    v9 = a4 + 0x4000000000000000;
    do
    {
      Gost2814789_cnt_encrypt(a3, a2, 0x4000000000000000uLL, v8, (a1 + 40), (a1 + 56), (a1 + 88));
      v4 -= 0x4000000000000000;
      a3 += 0x4000000000000000;
      a2 += 0x4000000000000000;
      v9 -= 0x4000000000000000;
    }

    while (v9 < 0x4000000000000000);
  }

  if (v4)
  {
    Gost2814789_cnt_encrypt(a3, a2, v4, v8, (a1 + 40), (a1 + 56), (a1 + 88));
  }

  return 1;
}

uint64_t BIO_get_new_index()
{
  LODWORD(result) = CRYPTO_add_lock(&BIO_get_new_index_bio_type_index, 1, 21, 0, 0);
  if (result > 255)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return result;
  }
}

BIO *__cdecl BIO_new(BIO_METHOD *type)
{
  v2 = malloc_type_malloc(0x70uLL, 0x10F0040CB86C5B6uLL);
  v3 = v2;
  if (v2)
  {
    if (!BIO_set(v2, type))
    {
      free(v3);
      return 0;
    }
  }

  else
  {
    ERR_put_error(32, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bio/bio_lib.c", 141);
  }

  return v3;
}

int BIO_set(BIO *a, BIO_METHOD *type)
{
  a->method = type;
  a->callback = 0;
  a->cb_arg = 0;
  *&a->init = 0;
  a->flags = 0;
  *&a->retry_reason = xmmword_23E22FAC0;
  a->prev_bio = 0;
  *&a->references = 0;
  a->next_bio = 0;
  v4 = 1;
  LODWORD(a->num_read) = 1;
  a->num_write = 0;
  a->ex_data.sk = 0;
  CRYPTO_new_ex_data(0, a, &a->ex_data.dummy);
  create = type->create;
  if (create && !(create)(a))
  {
    CRYPTO_free_ex_data(0, a, &a->ex_data.dummy);
    return 0;
  }

  return v4;
}

int BIO_free(BIO *a)
{
  if (!a)
  {
    return a;
  }

  v1 = a;
  if (CRYPTO_add_lock(&a->num_read, -1, 21, 0, 0) > 0)
  {
LABEL_13:
    LODWORD(a) = 1;
    return a;
  }

  callback = v1->callback;
  cb_arg = v1->cb_arg;
  if (callback)
  {
    if (!cb_arg)
    {
      LODWORD(a) = (callback)(v1, 1, 0, 0, 0, 1);
      goto LABEL_8;
    }
  }

  else if (!cb_arg)
  {
    goto LABEL_9;
  }

  LODWORD(a) = (cb_arg)(v1, 1, 0, 0, 0, 0, 1, 0);
LABEL_8:
  if (a >= 1)
  {
LABEL_9:
    CRYPTO_free_ex_data(0, v1, &v1->ex_data.dummy);
    if (v1->method)
    {
      destroy = v1->method->destroy;
      if (destroy)
      {
        (destroy)(v1);
      }
    }

    free(v1);
    goto LABEL_13;
  }

  return a;
}

uint64_t bio_call_callback(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v9 = a2;
  v10 = *(a1 + 16);
  if (v10)
  {

    return v10();
  }

  v12 = a2 & 0xFFFFFF7F;
  if ((a2 & 0xFFFFFF7E) == 2 || v12 == 5)
  {
    if (a4 >> 31)
    {
      return -1;
    }

    a5 = a4;
  }

  if (a7 >= 1 && (a2 & 0x80) != 0 && v12 != 6)
  {
    a7 = *a8;
    if (*a8 >> 31)
    {
      return -1;
    }
  }

  result = (*(a1 + 8))(a1, a2, a3, a5, a6, a7);
  if (result >= 1 && v9 < 0 && v12 != 6)
  {
    *a8 = result;
    return 1;
  }

  return result;
}

int BIO_puts(BIO *bp, const char *buf)
{
  v11 = 0;
  if (!bp || !bp->method || !bp->method->bputs)
  {
    v7 = 121;
    v8 = 440;
LABEL_8:
    ERR_put_error(32, 4095, v7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bio/bio_lib.c", v8);
    return -2;
  }

  callback = bp->callback;
  cb_arg = bp->cb_arg;
  if (callback)
  {
    if (!cb_arg)
    {
      result = (callback)(bp, 4, buf, 0, 0, 1);
      goto LABEL_12;
    }
  }

  else if (!cb_arg)
  {
    goto LABEL_13;
  }

  result = (cb_arg)(bp, 4, buf, 0, 0, 0, 1, 0);
LABEL_12:
  if (result < 1)
  {
    return result;
  }

LABEL_13:
  if (!bp->flags)
  {
    v7 = 120;
    v8 = 451;
    goto LABEL_8;
  }

  result = (bp->method->bputs)(bp, buf);
  if (result < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = result;
    v11 = result;
  }

  bp->ex_data.sk = (bp->ex_data.sk + v9);
  if (bp->callback || bp->cb_arg)
  {
    if (result > 0)
    {
      v10 = 1;
    }

    else
    {
      v10 = result;
    }

    result = bio_call_callback(bp, 132, buf, 0, 0, 0, v10, &v11);
  }

  if (result >= 1)
  {
    result = v11;
    if (v11 >> 31)
    {
      ERR_put_error(32, 4095, 130, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bio/bio_lib.c", 467);
      return -1;
    }
  }

  return result;
}

int BIO_indent(BIO *b, int indent, int max)
{
  if (indent >= max)
  {
    v4 = max;
  }

  else
  {
    v4 = indent;
  }

  v5 = (v4 & ~(v4 >> 31)) + 1;
  while (--v5)
  {
    if (BIO_puts(b, " ") != 1)
    {
      return 0;
    }
  }

  return 1;
}

char *__cdecl BIO_ptr_ctrl(BIO *bp, int cmd, uint64_t larg)
{
  parg = 0;
  if (BIO_ctrl(bp, cmd, larg, &parg) >= 1)
  {
    return parg;
  }

  else
  {
    return 0;
  }
}

uint64_t BIO_callback_ctrl(BIO *b, int cmd, void (__cdecl *fp)(bio_st *, int, const char *, int, uint64_t, uint64_t))
{
  v10 = fp;
  if (!b)
  {
    return 0;
  }

  if (!b->method || cmd != 14 || (callback_ctrl = b->method->callback_ctrl) == 0)
  {
    ERR_put_error(32, 4095, 121, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bio/bio_lib.c", 591);
    return -2;
  }

  callback = b->callback;
  cb_arg = b->cb_arg;
  if (callback)
  {
    if (!cb_arg)
    {
      v7 = (callback)(b, 6, &v10, 14, 0, 1);
LABEL_12:
      v8 = v7;
      if (v7 < 1)
      {
        return v8;
      }

      callback_ctrl = b->method->callback_ctrl;
      goto LABEL_14;
    }

LABEL_11:
    v7 = (cb_arg)(b, 6, &v10, 0, 14, 0, 1, 0);
    goto LABEL_12;
  }

  if (cb_arg)
  {
    goto LABEL_11;
  }

LABEL_14:
  v8 = (callback_ctrl)(b, 14);
  if (b->callback || b->cb_arg)
  {
    return bio_call_callback(b, 134, &v10, 0, 0xEuLL, 0, v8, 0);
  }

  return v8;
}

BIO *__cdecl BIO_push(BIO *b, BIO *append)
{
  if (!b)
  {
    return append;
  }

  v2 = b;
  v3 = b;
  do
  {
    v4 = v3;
    v3 = v3->prev_bio;
  }

  while (v3);
  v4->prev_bio = append;
  if (append)
  {
    v5 = *&append->references;
    if (v5)
    {
      *(v5 + 64) = 0;
    }

    *&append->references = v4;
  }

  BIO_ctrl(b, 6, 0, v4);
  return v2;
}

BIO *__cdecl BIO_pop(BIO *b)
{
  if (!b)
  {
    return 0;
  }

  p_prev_bio = &b->prev_bio;
  prev_bio = b->prev_bio;
  BIO_ctrl(b, 7, 0, b);
  v4 = *&b->references;
  v5 = *p_prev_bio;
  if (v4)
  {
    *(v4 + 64) = v5;
  }

  if (v5)
  {
    *&v5->references = v4;
  }

  *p_prev_bio = 0;
  p_prev_bio[1] = 0;
  return prev_bio;
}

BIO *__cdecl BIO_get_retry_BIO(BIO *bio, int *reason)
{
  v2 = bio;
  if ((bio->num & 8) != 0)
  {
    do
    {
      bio = v2;
      v2 = v2->prev_bio;
    }

    while (v2 && (v2->num & 8) != 0);
  }

  if (reason)
  {
    *reason = *(&bio->num + 1);
  }

  return bio;
}

BIO *__cdecl BIO_find_type(BIO *b, int bio_type)
{
  for (; b; b = b->prev_bio)
  {
    if (b->method)
    {
      type = b->method->type;
      if (bio_type)
      {
        if (type == bio_type)
        {
          return b;
        }
      }

      else if ((type & bio_type) != 0)
      {
        return b;
      }
    }
  }

  return b;
}

BIO *__cdecl BIO_next(BIO *b)
{
  if (b)
  {
    return b->prev_bio;
  }

  return b;
}

uint64_t BIO_set_next(uint64_t result, uint64_t a2)
{
  v2 = *(result + 64);
  if (v2)
  {
    *(v2 + 72) = 0;
  }

  if (a2)
  {
    v3 = *(a2 + 72);
    if (v3)
    {
      *(v3 + 64) = 0;
    }

    *(result + 64) = a2;
    *(a2 + 72) = result;
  }

  else
  {
    *(result + 64) = 0;
  }

  return result;
}

void BIO_free_all(BIO *a)
{
  if (a)
  {
    do
    {
      num_read = a->num_read;
      prev_bio = a->prev_bio;
      BIO_free(a);
      v3 = num_read > 1 || prev_bio == 0;
      a = prev_bio;
    }

    while (!v3);
  }
}

BIO *__cdecl BIO_dup_chain(BIO *in)
{
  if (in)
  {
    v1 = in;
    v2 = 0;
    v3 = 0;
    while (1)
    {
      v4 = BIO_new(v1->method);
      if (!v4)
      {
        break;
      }

      v5 = v4;
      *&v4->callback = *&v1->callback;
      *&v4->init = *&v1->init;
      *&v4->flags = *&v1->flags;
      v4->num = v1->num;
      LODWORD(v4->ptr) = v1->ptr;
      if (!BIO_ctrl(v1, 12, 0, v4))
      {
        BIO_free(v5);
        break;
      }

      if (!CRYPTO_dup_ex_data(0, &v5->ex_data.dummy, &v1->ex_data.dummy))
      {
        break;
      }

      in = v5;
      if (v3)
      {
        BIO_push(v2, v5);
        in = v3;
      }

      v1 = v1->prev_bio;
      v2 = v5;
      v3 = in;
      if (!v1)
      {
        return in;
      }
    }

    BIO_free(v3);
    return 0;
  }

  return in;
}

void BIO_copy_next_retry(BIO *b)
{
  prev_bio = b->prev_bio;
  num = prev_bio->num;
  LODWORD(prev_bio) = *(&prev_bio->num + 1);
  b->num |= num & 0xF;
  *(&b->num + 1) = prev_bio;
}

unint64_t BIO_number_read(unint64_t bio)
{
  if (bio)
  {
    return *(bio + 88);
  }

  return bio;
}

unint64_t BIO_number_written(unint64_t bio)
{
  if (bio)
  {
    return *(bio + 96);
  }

  return bio;
}

void CAST_ofb64_encrypt(const unsigned __int8 *in, unsigned __int8 *out, uint64_t length, const CAST_KEY *schedule, unsigned __int8 *ivec, int *num)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = *num;
  v8 = *ivec;
  v9 = ivec[1];
  v10 = ivec[2];
  v11 = ivec[3];
  v12 = (v8 << 24) | (v9 << 16) | (v10 << 8) | v11;
  v13 = ivec[4];
  v14 = ivec[5];
  v15 = ivec[6];
  v16 = ivec[7];
  v17 = (v13 << 24) | (v14 << 16) | (v15 << 8) | v16;
  data = __PAIR64__(v17, v12);
  LOBYTE(v27) = v8;
  BYTE1(v27) = v9;
  BYTE2(v27) = v10;
  HIBYTE(v27) = v11;
  LOBYTE(v28) = v13;
  BYTE1(v28) = v14;
  BYTE2(v28) = v15;
  HIBYTE(v28) = v16;
  if (length)
  {
    v20 = length;
    v23 = 0;
    do
    {
      if (!v7)
      {
        CAST_encrypt(&data, schedule);
        v12 = data;
        v17 = HIDWORD(data);
        v27 = bswap32(data);
        v28 = bswap32(HIDWORD(data));
        ++v23;
      }

      v24 = *in++;
      *out++ = *(&v27 + v7) ^ v24;
      v7 = (v7 + 1) & 7;
      --v20;
    }

    while (v20);
    if (v23)
    {
      *ivec = HIBYTE(v12);
      ivec[1] = BYTE2(v12);
      ivec[2] = BYTE1(v12);
      ivec[3] = v12;
      ivec[4] = HIBYTE(v17);
      ivec[5] = BYTE2(v17);
      ivec[6] = BYTE1(v17);
      ivec[7] = v17;
    }
  }

  *num = v7;
  v25 = *MEMORY[0x277D85DE8];
}

uint64_t camellia_init_key(uint64_t a1, unsigned __int8 *a2)
{
  if ((Camellia_set_key(a2, 8 * *(a1 + 104), *(a1 + 120)) & 0x80000000) == 0)
  {
    return 1;
  }

  ERR_put_error(6, 4095, 157, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/e_camellia.c", 84);
  return 0;
}

uint64_t camellia_128_cbc_cipher(uint64_t a1, uint64_t *a2, void *a3, unint64_t a4)
{
  v4 = a4;
  if (a4 >> 62)
  {
    v8 = a4 + 0x4000000000000000;
    do
    {
      Camellia_cbc_encrypt(a3, a2, 0x4000000000000000uLL, *(a1 + 120), (a1 + 40), *(a1 + 16));
      v4 -= 0x4000000000000000;
      a3 += 0x800000000000000;
      a2 += 0x800000000000000;
      v8 -= 0x4000000000000000;
    }

    while (v8 < 0x4000000000000000);
  }

  if (v4)
  {
    Camellia_cbc_encrypt(a3, a2, v4, *(a1 + 120), (a1 + 40), *(a1 + 16));
  }

  return 1;
}

uint64_t camellia_128_cfb128_cipher(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    if (a4 >= 0x4000000000000000)
    {
      v8 = 0x4000000000000000;
    }

    else
    {
      v8 = a4;
    }

    do
    {
      Camellia_cfb128_encrypt(a3, a2, v8, *(a1 + 120), a1 + 40, (a1 + 88), *(a1 + 16));
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

uint64_t camellia_128_ofb_cipher(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  if (a4 >> 62)
  {
    v8 = a4 + 0x4000000000000000;
    do
    {
      Camellia_ofb128_encrypt(a3, a2, 0x4000000000000000uLL, *(a1 + 120), a1 + 40, (a1 + 88));
      v4 -= 0x4000000000000000;
      a3 += 0x4000000000000000;
      a2 += 0x4000000000000000;
      v8 -= 0x4000000000000000;
    }

    while (v8 < 0x4000000000000000);
  }

  if (v4)
  {
    Camellia_ofb128_encrypt(a3, a2, v4, *(a1 + 120), a1 + 40, (a1 + 88));
  }

  return 1;
}

uint64_t camellia_128_ecb_cipher(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *(*a1 + 4);
  v5 = a4 - v4;
  if (a4 >= v4)
  {
    v9 = 0;
    do
    {
      Camellia_ecb_encrypt((a3 + v9), (a2 + v9), *(a1 + 120), *(a1 + 16));
      v9 += v4;
    }

    while (v9 <= v5);
  }

  return 1;
}

uint64_t camellia_192_cbc_cipher(uint64_t a1, uint64_t *a2, void *a3, unint64_t a4)
{
  v4 = a4;
  if (a4 >> 62)
  {
    v8 = a4 + 0x4000000000000000;
    do
    {
      Camellia_cbc_encrypt(a3, a2, 0x4000000000000000uLL, *(a1 + 120), (a1 + 40), *(a1 + 16));
      v4 -= 0x4000000000000000;
      a3 += 0x800000000000000;
      a2 += 0x800000000000000;
      v8 -= 0x4000000000000000;
    }

    while (v8 < 0x4000000000000000);
  }

  if (v4)
  {
    Camellia_cbc_encrypt(a3, a2, v4, *(a1 + 120), (a1 + 40), *(a1 + 16));
  }

  return 1;
}

uint64_t camellia_192_cfb128_cipher(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    if (a4 >= 0x4000000000000000)
    {
      v8 = 0x4000000000000000;
    }

    else
    {
      v8 = a4;
    }

    do
    {
      Camellia_cfb128_encrypt(a3, a2, v8, *(a1 + 120), a1 + 40, (a1 + 88), *(a1 + 16));
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

uint64_t camellia_192_ofb_cipher(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  if (a4 >> 62)
  {
    v8 = a4 + 0x4000000000000000;
    do
    {
      Camellia_ofb128_encrypt(a3, a2, 0x4000000000000000uLL, *(a1 + 120), a1 + 40, (a1 + 88));
      v4 -= 0x4000000000000000;
      a3 += 0x4000000000000000;
      a2 += 0x4000000000000000;
      v8 -= 0x4000000000000000;
    }

    while (v8 < 0x4000000000000000);
  }

  if (v4)
  {
    Camellia_ofb128_encrypt(a3, a2, v4, *(a1 + 120), a1 + 40, (a1 + 88));
  }

  return 1;
}

uint64_t camellia_192_ecb_cipher(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *(*a1 + 4);
  v5 = a4 - v4;
  if (a4 >= v4)
  {
    v9 = 0;
    do
    {
      Camellia_ecb_encrypt((a3 + v9), (a2 + v9), *(a1 + 120), *(a1 + 16));
      v9 += v4;
    }

    while (v9 <= v5);
  }

  return 1;
}

uint64_t camellia_256_cbc_cipher(uint64_t a1, uint64_t *a2, void *a3, unint64_t a4)
{
  v4 = a4;
  if (a4 >> 62)
  {
    v8 = a4 + 0x4000000000000000;
    do
    {
      Camellia_cbc_encrypt(a3, a2, 0x4000000000000000uLL, *(a1 + 120), (a1 + 40), *(a1 + 16));
      v4 -= 0x4000000000000000;
      a3 += 0x800000000000000;
      a2 += 0x800000000000000;
      v8 -= 0x4000000000000000;
    }

    while (v8 < 0x4000000000000000);
  }

  if (v4)
  {
    Camellia_cbc_encrypt(a3, a2, v4, *(a1 + 120), (a1 + 40), *(a1 + 16));
  }

  return 1;
}

uint64_t camellia_256_cfb128_cipher(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    if (a4 >= 0x4000000000000000)
    {
      v8 = 0x4000000000000000;
    }

    else
    {
      v8 = a4;
    }

    do
    {
      Camellia_cfb128_encrypt(a3, a2, v8, *(a1 + 120), a1 + 40, (a1 + 88), *(a1 + 16));
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

uint64_t camellia_256_ofb_cipher(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  if (a4 >> 62)
  {
    v8 = a4 + 0x4000000000000000;
    do
    {
      Camellia_ofb128_encrypt(a3, a2, 0x4000000000000000uLL, *(a1 + 120), a1 + 40, (a1 + 88));
      v4 -= 0x4000000000000000;
      a3 += 0x4000000000000000;
      a2 += 0x4000000000000000;
      v8 -= 0x4000000000000000;
    }

    while (v8 < 0x4000000000000000);
  }

  if (v4)
  {
    Camellia_ofb128_encrypt(a3, a2, v4, *(a1 + 120), a1 + 40, (a1 + 88));
  }

  return 1;
}

uint64_t camellia_256_ecb_cipher(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *(*a1 + 4);
  v5 = a4 - v4;
  if (a4 >= v4)
  {
    v9 = 0;
    do
    {
      Camellia_ecb_encrypt((a3 + v9), (a2 + v9), *(a1 + 120), *(a1 + 16));
      v9 += v4;
    }

    while (v9 <= v5);
  }

  return 1;
}

uint64_t camellia_128_cfb1_cipher(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    if (a4 >= 0x800000000000000)
    {
      v8 = 0x800000000000000;
    }

    else
    {
      v8 = a4;
    }

    do
    {
      if ((*(a1 + 112) & 0x2000) != 0)
      {
        v9 = v8;
      }

      else
      {
        v9 = 8 * v8;
      }

      Camellia_cfb1_encrypt(a3, a2, v9, *(a1 + 120), a1 + 40, a1 + 88, *(a1 + 16));
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

uint64_t camellia_192_cfb1_cipher(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    if (a4 >= 0x800000000000000)
    {
      v8 = 0x800000000000000;
    }

    else
    {
      v8 = a4;
    }

    do
    {
      if ((*(a1 + 112) & 0x2000) != 0)
      {
        v9 = v8;
      }

      else
      {
        v9 = 8 * v8;
      }

      Camellia_cfb1_encrypt(a3, a2, v9, *(a1 + 120), a1 + 40, a1 + 88, *(a1 + 16));
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

uint64_t camellia_256_cfb1_cipher(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    if (a4 >= 0x800000000000000)
    {
      v8 = 0x800000000000000;
    }

    else
    {
      v8 = a4;
    }

    do
    {
      if ((*(a1 + 112) & 0x2000) != 0)
      {
        v9 = v8;
      }

      else
      {
        v9 = 8 * v8;
      }

      Camellia_cfb1_encrypt(a3, a2, v9, *(a1 + 120), a1 + 40, a1 + 88, *(a1 + 16));
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

uint64_t camellia_128_cfb8_cipher(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    if (a4 >= 0x4000000000000000)
    {
      v8 = 0x4000000000000000;
    }

    else
    {
      v8 = a4;
    }

    do
    {
      Camellia_cfb8_encrypt(a3, a2, v8, *(a1 + 120), (a1 + 40), a1 + 88, *(a1 + 16));
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

uint64_t camellia_192_cfb8_cipher(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    if (a4 >= 0x4000000000000000)
    {
      v8 = 0x4000000000000000;
    }

    else
    {
      v8 = a4;
    }

    do
    {
      Camellia_cfb8_encrypt(a3, a2, v8, *(a1 + 120), (a1 + 40), a1 + 88, *(a1 + 16));
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

uint64_t camellia_256_cfb8_cipher(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    if (a4 >= 0x4000000000000000)
    {
      v8 = 0x4000000000000000;
    }

    else
    {
      v8 = a4;
    }

    do
    {
      Camellia_cfb8_encrypt(a3, a2, v8, *(a1 + 120), (a1 + 40), a1 + 88, *(a1 + 16));
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

uint64_t do_pk8pkey(BIO *a1, EVP_PKEY *pkey, int a3, int a4, const EVP_CIPHER *a5, const char *a6, int a7, uint64_t (*a8)(char *, uint64_t, uint64_t, void *), void *key)
{
  v26 = *MEMORY[0x277D85DE8];
  v16 = EVP_PKEY2PKCS8(pkey);
  if (!v16)
  {
    ERR_put_error(9, 4095, 115, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pem/pem_pk8.c", 119);
    goto LABEL_7;
  }

  v17 = v16;
  if (a4 == -1 && !a5)
  {
    if (a3)
    {
      v18 = i2d_PKCS8_PRIV_KEY_INFO_bio(a1, v16);
    }

    else
    {
      v18 = PEM_ASN1_write_bio(i2d_PKCS8_PRIV_KEY_INFO, "PRIVATE KEY", a1, v16, 0, 0, 0, 0, 0);
    }

    v19 = v18;
    PKCS8_PRIV_KEY_INFO_free(v17);
    goto LABEL_23;
  }

  if (!a6)
  {
    if (a8)
    {
      v21 = a8(buf, 1024, 1, key);
    }

    else
    {
      v21 = PEM_def_callback(buf, 1024, 1, key);
    }

    a7 = v21;
    if (v21 >= 1)
    {
      PKCS8_encrypt(a4, a5, buf, v21, 0, 0, 0, v17);
      goto LABEL_18;
    }

    ERR_put_error(9, 4095, 111, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pem/pem_pk8.c", 129);
    PKCS8_PRIV_KEY_INFO_free(v17);
LABEL_7:
    v19 = 0;
    goto LABEL_23;
  }

  v20 = PKCS8_encrypt(a4, a5, a6, a7, 0, 0, 0, v16);
  if (buf == a6)
  {
LABEL_18:
    explicit_bzero(buf, a7);
  }

  PKCS8_PRIV_KEY_INFO_free(v17);
  if (a3)
  {
    v22 = i2d_PKCS8_bio(a1, v20);
  }

  else
  {
    v22 = PEM_ASN1_write_bio(i2d_X509_SIG, "ENCRYPTED PRIVATE KEY", a1, v20, 0, 0, 0, 0, 0);
  }

  v19 = v22;
  X509_SIG_free(v20);
LABEL_23:
  v23 = *MEMORY[0x277D85DE8];
  return v19;
}

EVP_PKEY *__cdecl d2i_PKCS8PrivateKey_bio(BIO *bp, EVP_PKEY **x, pem_password_cb *cb, void *u)
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = d2i_PKCS8_bio(bp, 0);
  if (!v7)
  {
    goto LABEL_12;
  }

  if (cb)
  {
    v8 = (cb)(buf, 1024, 0, u);
  }

  else
  {
    v8 = PEM_def_callback(buf, 1024, 0, u);
  }

  if (v8 <= 0)
  {
    ERR_put_error(9, 4095, 104, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pem/pem_pk8.c", 173);
    X509_SIG_free(v7);
    goto LABEL_11;
  }

  v9 = PKCS8_decrypt(v7, buf, v8);
  X509_SIG_free(v7);
  if (!v9)
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  v7 = EVP_PKCS82PKEY(v9);
  PKCS8_PRIV_KEY_INFO_free(v9);
  if (v7 && x)
  {
    EVP_PKEY_free(*x);
    *x = v7;
  }

LABEL_12:
  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t do_pk8pkey_fp(FILE *a1, EVP_PKEY *a2, int a3, int a4, const EVP_CIPHER *a5, const char *a6, int a7, uint64_t (*a8)(char *, uint64_t, uint64_t, void *), void *key)
{
  v16 = BIO_new_fp(a1, 0);
  if (v16)
  {
    v17 = v16;
    v18 = do_pk8pkey(v16, a2, a3, a4, a5, a6, a7, a8, key);
    BIO_free(v17);
    return v18;
  }

  else
  {
    ERR_put_error(9, 4095, 7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pem/pem_pk8.c", 229);
    return 0;
  }
}

EVP_PKEY *__cdecl d2i_PKCS8PrivateKey_fp(FILE *fp, EVP_PKEY **x, pem_password_cb *cb, void *u)
{
  v7 = BIO_new_fp(fp, 0);
  if (v7)
  {
    v8 = v7;
    v9 = d2i_PKCS8PrivateKey_bio(v7, x, cb, u);
    BIO_free(v8);
    return v9;
  }

  else
  {
    ERR_put_error(9, 4095, 7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pem/pem_pk8.c", 244);
    return 0;
  }
}

BIO *__cdecl PKCS7_dataInit(PKCS7 *p7, BIO *bio)
{
  v49 = *MEMORY[0x277D85DE8];
  b = 0;
  if (!p7)
  {
    v9 = 143;
    v10 = 270;
LABEL_10:
    ERR_put_error(33, 4095, v9, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_doit.c", v10);
LABEL_59:
    bio = 0;
    goto LABEL_60;
  }

  if (!p7->d.ptr)
  {
    v9 = 122;
    v10 = 287;
    goto LABEL_10;
  }

  v4 = OBJ_obj2nid(p7->type);
  p7->state = 0;
  if (v4 <= 22)
  {
    if (v4 != 21)
    {
      if (v4 == 22)
      {
        v7 = 0;
        ptr = p7->d.ptr;
        v5 = *(ptr + 1);
        v8 = (ptr + 40);
        goto LABEL_14;
      }

      goto LABEL_49;
    }

    v7 = 0;
    v13 = 0;
    v5 = 0;
    v14 = 0;
    v15 = 0;
    octet_string = 0;
  }

  else
  {
    switch(v4)
    {
      case 23:
        v16 = p7->d.ptr;
        v17 = *(v16 + 2);
        v13 = *(v17 + 24);
        if (!v13)
        {
          v35 = 116;
          v36 = 314;
          goto LABEL_53;
        }

        v7 = 0;
        v5 = 0;
        octet_string = 0;
        v14 = *(v16 + 1);
        break;
      case 24:
        v18 = p7->d.ptr;
        v17 = *(v18 + 5);
        v13 = *(v17 + 24);
        if (!v13)
        {
          v35 = 116;
          v36 = 305;
          goto LABEL_53;
        }

        v7 = 0;
        octet_string = 0;
        v14 = *(v18 + 6);
        v5 = *(v18 + 1);
        break;
      case 25:
        v5 = 0;
        v6 = p7->d.ptr;
        v7 = *(v6 + 1);
        v8 = (v6 + 16);
LABEL_14:
        octet_string = PKCS7_get_octet_string(*v8);
        v13 = 0;
        v14 = 0;
        v15 = 0;
        goto LABEL_21;
      default:
LABEL_49:
        v35 = 112;
        v36 = 325;
LABEL_53:
        ERR_put_error(33, 4095, v35, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_doit.c", v36);
        goto LABEL_54;
    }

    v15 = *(v17 + 8);
  }

LABEL_21:
  if (sk_num(v5) >= 1)
  {
    v19 = 0;
    do
    {
      v20 = sk_value(v5, v19);
      if (!PKCS7_bio_add_digest(&b, v20))
      {
        goto LABEL_54;
      }
    }

    while (++v19 < sk_num(v5));
  }

  if (v7 && !PKCS7_bio_add_digest(&b, v7))
  {
    goto LABEL_54;
  }

  if (v13)
  {
    parg = 0;
    v21 = BIO_f_cipher();
    v22 = BIO_new(v21);
    v23 = v22;
    if (v22)
    {
      BIO_ctrl(v22, 129, 0, &parg);
      v24 = EVP_CIPHER_key_length(v13);
      v25 = EVP_CIPHER_iv_length(v13);
      v26 = EVP_CIPHER_type(v13);
      *v15 = OBJ_nid2obj(v26);
      if (v25 >= 1)
      {
        arc4random_buf(__buf, v25);
      }

      if (EVP_CipherInit_ex(parg, v13, 0, 0, 0, 1) >= 1 && EVP_CIPHER_CTX_rand_key(parg, &key) >= 1 && EVP_CipherInit_ex(parg, 0, 0, &key, __buf, 1) >= 1)
      {
        if (v25 < 1 || ((v27 = v15[1]) != 0 || (v27 = ASN1_TYPE_new(), (v15[1] = v27) != 0)) && (EVP_CIPHER_param_to_asn1(parg, v27) & 0x80000000) == 0)
        {
          v43 = v24;
          if (sk_num(v14) < 1)
          {
LABEL_48:
            explicit_bzero(&key, v43);
          }

          v28 = 0;
          while (1)
          {
            v29 = sk_value(v14, v28);
            pubkey = X509_get_pubkey(*(v29 + 4));
            if (!pubkey)
            {
              goto LABEL_55;
            }

            v31 = pubkey;
            v32 = EVP_PKEY_CTX_new(pubkey, 0);
            if (!v32)
            {
              goto LABEL_55;
            }

            v33 = v32;
            size = 0;
            if (EVP_PKEY_encrypt_init(v32) < 1)
            {
              goto LABEL_74;
            }

            if (EVP_PKEY_CTX_ctrl(v33, -1, 256) <= 0)
            {
              break;
            }

            if (EVP_PKEY_encrypt(v33, 0, &size, &key) < 1)
            {
              goto LABEL_74;
            }

            v34 = malloc_type_malloc(size, 0xCBA0D222uLL);
            if (!v34)
            {
              ERR_put_error(33, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_doit.c", 180);
LABEL_76:
              EVP_PKEY_free(v31);
              EVP_PKEY_CTX_free(v33);
              free(v34);
              goto LABEL_55;
            }

            if (EVP_PKEY_encrypt(v33, v34, &size, &key) < 1)
            {
              goto LABEL_76;
            }

            ASN1_STRING_set0(*(v29 + 3), v34, size);
            EVP_PKEY_free(v31);
            EVP_PKEY_CTX_free(v33);
            if (++v28 >= sk_num(v14))
            {
              goto LABEL_48;
            }
          }

          ERR_put_error(33, 4095, 152, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_doit.c", 170);
LABEL_74:
          v34 = 0;
          goto LABEL_76;
        }
      }
    }

    else
    {
      ERR_put_error(33, 4095, 32, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_doit.c", 343);
    }

    goto LABEL_55;
  }

  if (!bio)
  {
    if (OBJ_obj2nid(p7->type) == 22 && PKCS7_ctrl(p7, 2, 0, 0))
    {
      v39 = BIO_s_null();
      v40 = BIO_new(v39);
    }

    else
    {
      if (!octet_string || *octet_string < 1)
      {
        goto LABEL_71;
      }

      v40 = BIO_new_mem_buf(*(octet_string + 8), *octet_string);
    }

    bio = v40;
    if (v40)
    {
      goto LABEL_62;
    }

LABEL_71:
    v41 = BIO_s_mem();
    v42 = BIO_new(v41);
    if (v42)
    {
      bio = v42;
      BIO_ctrl(v42, 130, 0, 0);
      goto LABEL_62;
    }

LABEL_54:
    v23 = 0;
LABEL_55:
    if (b)
    {
      BIO_free_all(b);
    }

    if (v23)
    {
      BIO_free_all(v23);
    }

    goto LABEL_59;
  }

LABEL_62:
  if (b)
  {
    BIO_push(b, bio);
    bio = b;
  }

LABEL_60:
  v37 = *MEMORY[0x277D85DE8];
  return bio;
}

uint64_t PKCS7_get_octet_string(uint64_t a1)
{
  if (OBJ_obj2nid(*(a1 + 24)) == 21)
  {
    v2 = (a1 + 32);
    return *v2;
  }

  if ((OBJ_obj2nid(*(a1 + 24)) - 21) >= 6)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      if (*v4 == 4)
      {
        v2 = v4 + 2;
        return *v2;
      }
    }
  }

  return 0;
}

uint64_t PKCS7_bio_add_digest(BIO **a1, const ASN1_OBJECT **a2)
{
  v4 = BIO_f_md();
  v5 = BIO_new(v4);
  if (!v5)
  {
    v9 = 32;
    v10 = 117;
    goto LABEL_10;
  }

  v6 = OBJ_obj2nid(*a2);
  v7 = OBJ_nid2sn(v6);
  digestbyname = EVP_get_digestbyname(v7);
  if (!digestbyname)
  {
    v9 = 109;
    v10 = 123;
    goto LABEL_10;
  }

  if (BIO_ctrl(v5, 111, 0, digestbyname) <= 0)
  {
    v9 = 32;
    v10 = 128;
    goto LABEL_10;
  }

  if (*a1)
  {
    if (!BIO_push(*a1, v5))
    {
      v9 = 32;
      v10 = 135;
LABEL_10:
      ERR_put_error(33, 4095, v9, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_doit.c", v10);
      BIO_free(v5);
      return 0;
    }
  }

  else
  {
    *a1 = v5;
  }

  return 1;
}

BIO *__cdecl PKCS7_dataDecode(PKCS7 *p7, EVP_PKEY *pkey, BIO *in_bio, X509 *pcert)
{
  v59 = 0;
  parg = 0;
  v58 = 0;
  if (p7)
  {
    if (p7->d.ptr)
    {
      v8 = OBJ_obj2nid(p7->type);
      p7->state = 0;
      switch(v8)
      {
        case 24:
          ptr = p7->d.ptr;
          v11 = *(ptr + 1);
          v10 = *(ptr + 6);
          octet_string = *(*(ptr + 5) + 16);
          v57 = in_bio;
          v55 = *(*(ptr + 5) + 8);
          v23 = OBJ_obj2nid(*v55);
          v24 = OBJ_nid2sn(v23);
          cipherbyname = EVP_get_cipherbyname(v24);
          if (cipherbyname)
          {
            v9 = cipherbyname;
            if (!v11)
            {
              goto LABEL_26;
            }

            goto LABEL_15;
          }

          v33 = 111;
          v34 = 470;
          break;
        case 23:
          v14 = p7->d.ptr;
          v10 = *(v14 + 1);
          v15 = *(v14 + 2);
          v17 = *(v15 + 8);
          v16 = *(v15 + 16);
          v18 = OBJ_obj2nid(*v17);
          v19 = OBJ_nid2sn(v18);
          v20 = EVP_get_cipherbyname(v19);
          if (v20)
          {
            v9 = v20;
            v55 = v17;
            octet_string = v16;
            v57 = in_bio;
            v21 = 0;
            goto LABEL_28;
          }

          v33 = 111;
          v34 = 480;
          break;
        case 22:
          v57 = in_bio;
          v55 = 0;
          octet_string = PKCS7_get_octet_string(*(p7->d.ptr + 5));
          v9 = 0;
          v10 = 0;
          v11 = *(p7->d.ptr + 1);
          if (!v11)
          {
            goto LABEL_26;
          }

LABEL_15:
          if (sk_num(v11) >= 1)
          {
            v21 = 0;
            v26 = 0;
            while (1)
            {
              v27 = sk_value(v11, v26);
              v28 = BIO_f_md();
              v29 = BIO_new(v28);
              if (!v29)
              {
                v48 = 32;
                v49 = 494;
                goto LABEL_59;
              }

              v30 = OBJ_obj2nid(*v27);
              v31 = OBJ_nid2sn(v30);
              digestbyname = EVP_get_digestbyname(v31);
              if (!digestbyname)
              {
                v48 = 109;
                v49 = 501;
                goto LABEL_59;
              }

              if (BIO_ctrl(v29, 111, 0, digestbyname) <= 0)
              {
                break;
              }

              if (v21)
              {
                BIO_push(v21, v29);
              }

              else
              {
                v21 = v29;
              }

              if (++v26 >= sk_num(v11))
              {
                goto LABEL_27;
              }
            }

            v48 = 32;
            v49 = 506;
LABEL_59:
            ERR_put_error(33, 4095, v48, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_doit.c", v49);
            goto LABEL_60;
          }

LABEL_26:
          v21 = 0;
LABEL_27:
          if (!v9)
          {
            v42 = 0;
LABEL_40:
            v43 = v57;
            if (OBJ_obj2nid(p7->type) == 22)
            {
              v44 = PKCS7_ctrl(p7, 2, 0, 0);
              if (v57 || v44)
              {
                goto LABEL_72;
              }
            }

            else if (v57)
            {
LABEL_72:
              BIO_push(v21, v43);
              return v21;
            }

            if (octet_string && *octet_string >= 1)
            {
              v43 = BIO_new_mem_buf(*(octet_string + 8), *octet_string);
            }

            else
            {
              v52 = BIO_s_mem();
              v43 = BIO_new(v52);
              BIO_ctrl(v43, 130, 0, 0);
            }

            if (v43)
            {
              goto LABEL_72;
            }

            v29 = 0;
            v36 = 0;
            v50 = 0;
            goto LABEL_62;
          }

LABEL_28:
          v35 = BIO_f_cipher();
          v36 = BIO_new(v35);
          if (v36)
          {
            v37 = sk_num(v10);
            if (!pcert)
            {
              if (v37 < 1)
              {
LABEL_75:
                parg = 0;
                BIO_ctrl(v36, 129, 0, &parg);
                if (EVP_CipherInit_ex(parg, v9, 0, 0, 0, 0) >= 1 && (EVP_CIPHER_asn1_to_param(parg, v55[1]) & 0x80000000) == 0)
                {
                  v42 = EVP_CIPHER_CTX_key_length(parg);
                  v50 = malloc_type_malloc(v42, 0x513F9B5EuLL);
                  if (v50 && EVP_CIPHER_CTX_rand_key(parg, v50) >= 1)
                  {
                    v53 = v59;
                    if (v59)
                    {
                      v54 = v58;
                    }

                    else
                    {
                      v59 = v50;
                      v58 = v42;
                      v53 = v50;
                      v54 = v42;
                      v50 = 0;
                    }

                    if (v54 != EVP_CIPHER_CTX_key_length(parg) && !EVP_CIPHER_CTX_set_key_length(parg, v54))
                    {
                      freezero(v53, v54);
                      v59 = v50;
                      v58 = v42;
                      v53 = v50;
                      v50 = 0;
                    }

                    ERR_clear_error();
                    if (EVP_CipherInit_ex(parg, 0, 0, v53, 0, 0) >= 1)
                    {
                      freezero(v53, v58);
                      v59 = 0;
                      freezero(v50, v42);
                      if (v21)
                      {
                        BIO_push(v21, v36);
                      }

                      else
                      {
                        v21 = v36;
                      }

                      goto LABEL_40;
                    }
                  }

                  v29 = 0;
LABEL_62:
                  freezero(v59, v58);
                  freezero(v50, v42);
                  if (v21)
                  {
                    BIO_free_all(v21);
                  }

                  if (v29)
                  {
                    BIO_free_all(v29);
                  }

                  if (v36)
                  {
                    BIO_free_all(v36);
                  }

                  return 0;
                }

                goto LABEL_38;
              }

              v45 = 0;
              while (1)
              {
                v46 = sk_value(v10, v45);
                v47 = EVP_CIPHER_key_length(v9);
                if ((pkcs7_decrypt_rinfo(&v59, &v58, v46, pkey, v47) & 0x80000000) != 0)
                {
                  break;
                }

                ERR_clear_error();
                if (++v45 >= sk_num(v10))
                {
                  goto LABEL_75;
                }
              }

LABEL_38:
              v29 = 0;
LABEL_61:
              v50 = 0;
              v42 = 0;
              goto LABEL_62;
            }

            if (v37 >= 1)
            {
              v38 = 0;
              while (1)
              {
                v39 = sk_value(v10, v38);
                if (!X509_NAME_cmp(**(v39 + 1), pcert->cert_info->issuer) && !ASN1_INTEGER_cmp(pcert->cert_info->serialNumber, *(*(v39 + 1) + 8)))
                {
                  break;
                }

                if (++v38 >= sk_num(v10))
                {
                  goto LABEL_35;
                }
              }

              if ((pkcs7_decrypt_rinfo(&v59, &v58, v39, pkey, 0) & 0x80000000) == 0)
              {
                ERR_clear_error();
                goto LABEL_75;
              }

              goto LABEL_38;
            }

LABEL_35:
            v40 = 115;
            v41 = 537;
          }

          else
          {
            v40 = 32;
            v41 = 519;
          }

          ERR_put_error(33, 4095, v40, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_doit.c", v41);
          goto LABEL_38;
        default:
          v33 = 112;
          v34 = 485;
          break;
      }

      ERR_put_error(33, 4095, v33, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_doit.c", v34);
      v21 = 0;
      v29 = 0;
LABEL_60:
      v36 = 0;
      goto LABEL_61;
    }

    v12 = 122;
    v13 = 451;
  }

  else
  {
    v12 = 143;
    v13 = 446;
  }

  ERR_put_error(33, 4095, v12, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_doit.c", v13);
  return 0;
}

uint64_t pkcs7_decrypt_rinfo(void **a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = EVP_PKEY_CTX_new(a4, 0);
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  size = 0;
  if (EVP_PKEY_decrypt_init(v9) < 1)
  {
    goto LABEL_17;
  }

  if (EVP_PKEY_CTX_ctrl(v10, -1, 512) <= 0)
  {
    v19 = 152;
    v20 = 219;
LABEL_16:
    ERR_put_error(33, 4095, v19, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_doit.c", v20);
    goto LABEL_17;
  }

  v11 = *(a3 + 24);
  v12 = *v11;
  if (EVP_PKEY_decrypt(v10, 0, &size, v11[1]) < 1)
  {
LABEL_17:
    v18 = 0xFFFFFFFFLL;
LABEL_18:
    EVP_PKEY_CTX_free(v10);
    return v18;
  }

  v13 = malloc_type_malloc(size, 0x9553FA6FuLL);
  if (!v13)
  {
    v19 = 65;
    v20 = 229;
    goto LABEL_16;
  }

  v14 = v13;
  v15 = *(a3 + 24);
  v16 = *v15;
  v17 = EVP_PKEY_decrypt(v10, v13, &size, v15[1]) < 1 || size == 0;
  if (!v17 && (!a5 || size == a5))
  {
    freezero(*a1, *a2);
    *a1 = v14;
    *a2 = size;
    v18 = 1;
    goto LABEL_18;
  }

  ERR_put_error(33, 4095, 6, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_doit.c", 237);
  EVP_PKEY_CTX_free(v10);
  free(v14);
  return 0;
}

int PKCS7_dataFinal(PKCS7 *p7, BIO *bio)
{
  v34 = *MEMORY[0x277D85DE8];
  if (!p7)
  {
    v8 = 143;
    v9 = 709;
LABEL_17:
    ERR_put_error(33, 4095, v8, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_doit.c", v9);
    LODWORD(v10) = 0;
    goto LABEL_72;
  }

  if (!p7->d.ptr)
  {
    v8 = 122;
    v9 = 714;
    goto LABEL_17;
  }

  ctx = 0;
  memset(&v29, 0, sizeof(v29));
  v30 = 0u;
  EVP_MD_CTX_init(&v29);
  v4 = OBJ_obj2nid(p7->type);
  p7->state = 0;
  if (v4 <= 22)
  {
    if (v4 == 21)
    {
      ptr = p7->d.ptr;
      goto LABEL_52;
    }

    if (v4 != 22)
    {
LABEL_59:
      v25 = 112;
      v26 = 782;
      goto LABEL_69;
    }

    v11 = p7->d.ptr;
    v12 = *(v11 + 4);
    ptr = PKCS7_get_octet_string(*(v11 + 5));
    if ((OBJ_obj2nid(p7->type) != 22 || !PKCS7_ctrl(p7, 2, 0, 0)) && !ptr)
    {
      v25 = 130;
      v26 = 755;
      goto LABEL_69;
    }

    if (OBJ_obj2nid(*(*(p7->d.ptr + 5) + 24)) != 21 || !p7->detached)
    {
      goto LABEL_33;
    }

    ASN1_OCTET_STRING_free(ptr);
    ptr = 0;
    v13 = 32;
  }

  else
  {
    if (v4 == 23)
    {
      ptr = *(*(p7->d.ptr + 2) + 16);
      if (!ptr)
      {
        v14 = ASN1_OCTET_STRING_new();
        if (!v14)
        {
          v25 = 65;
          v26 = 745;
          goto LABEL_69;
        }

        ptr = v14;
        *(*(p7->d.ptr + 2) + 16) = v14;
      }

      goto LABEL_52;
    }

    if (v4 != 24)
    {
      if (v4 == 25)
      {
        octet_string = PKCS7_get_octet_string(*(p7->d.ptr + 2));
        if (!octet_string)
        {
          v25 = 130;
          v26 = 769;
          goto LABEL_69;
        }

        ptr = octet_string;
        if (OBJ_obj2nid(*(*(p7->d.ptr + 2) + 24)) == 21 && p7->detached)
        {
          ASN1_OCTET_STRING_free(ptr);
          ptr = 0;
          *(*(p7->d.ptr + 2) + 32) = 0;
        }

        s = 0;
        v7 = OBJ_obj2nid(**(p7->d.ptr + 1));
        if (!PKCS7_find_digest(&ctx, bio, v7) || !EVP_DigestFinal_ex(ctx, md, &s) || !ASN1_STRING_set(*(p7->d.ptr + 3), md, s))
        {
          goto LABEL_70;
        }

LABEL_52:
        if (OBJ_obj2nid(p7->type) != 22 || !PKCS7_ctrl(p7, 2, 0, 0))
        {
          if (!ptr)
          {
            goto LABEL_70;
          }

          if ((*(ptr + 16) & 0x10) == 0)
          {
            *md = 0;
            type = BIO_find_type(bio, 1025);
            v10 = type;
            if (!type)
            {
              ERR_put_error(33, 4095, 107, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_doit.c", 852);
              goto LABEL_71;
            }

            v24 = BIO_ctrl(type, 3, 0, md);
            BIO_set_flags(v10, 512);
            BIO_ctrl(v10, 130, 0, 0);
            ASN1_STRING_set0(ptr, *md, v24);
          }
        }

        LODWORD(v10) = 1;
        goto LABEL_71;
      }

      goto LABEL_59;
    }

    v15 = p7->d.ptr;
    v12 = *(v15 + 4);
    ptr = *(*(v15 + 5) + 16);
    if (ptr)
    {
      goto LABEL_33;
    }

    v16 = ASN1_OCTET_STRING_new();
    if (!v16)
    {
      v25 = 65;
      v26 = 733;
      goto LABEL_69;
    }

    ptr = v16;
    v13 = 16;
  }

  *(*(p7->d.ptr + 5) + v13) = ptr;
LABEL_33:
  if (!v12 || sk_num(v12) < 1)
  {
    goto LABEL_52;
  }

  v17 = 0;
  while (1)
  {
    v18 = sk_value(v12, v17);
    if (!*(v18 + 7))
    {
      goto LABEL_49;
    }

    v19 = v18;
    v20 = OBJ_obj2nid(**(v18 + 2));
    if (!PKCS7_find_digest(&ctx, bio, v20) || !EVP_MD_CTX_copy_ex(&v29, ctx))
    {
      goto LABEL_70;
    }

    if (sk_num(v19->auth_attr) >= 1)
    {
      break;
    }

    *md = 0;
    *md = EVP_PKEY_size(v19->pkey);
    v21 = malloc_type_malloc(*md, 0x79BBA656uLL);
    if (!v21)
    {
      goto LABEL_70;
    }

    v22 = v21;
    if (!EVP_SignFinal(&v29, v21, md, v19->pkey))
    {
      v25 = 6;
      v26 = 819;
      goto LABEL_69;
    }

    ASN1_STRING_set0(v19->enc_digest, v22, *md);
LABEL_49:
    if (++v17 >= sk_num(v12))
    {
      goto LABEL_52;
    }
  }

  if (get_attribute(v19->auth_attr, 52) || PKCS7_add0_attrib_signing_time(v19, 0))
  {
    s = 0;
    if (!EVP_DigestFinal_ex(&v29, md, &s))
    {
      v25 = 6;
      v26 = 680;
      goto LABEL_69;
    }

    if (!PKCS7_add1_attrib_digest(v19, md, s))
    {
      v25 = 65;
      v26 = 684;
      goto LABEL_69;
    }

    if (!PKCS7_SIGNER_INFO_sign(v19))
    {
      goto LABEL_70;
    }

    goto LABEL_49;
  }

  v25 = 65;
  v26 = 673;
LABEL_69:
  ERR_put_error(33, 4095, v25, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_doit.c", v26);
LABEL_70:
  LODWORD(v10) = 0;
LABEL_71:
  EVP_MD_CTX_cleanup(&v29);
LABEL_72:
  v27 = *MEMORY[0x277D85DE8];
  return v10;
}

BIO *PKCS7_find_digest(const EVP_MD_CTX **a1, BIO *b, int a3)
{
  type = BIO_find_type(b, 520);
  if (type)
  {
    v6 = type;
    while (1)
    {
      BIO_ctrl(v6, 120, 0, a1);
      if (!*a1)
      {
        break;
      }

      v7 = EVP_MD_CTX_md(*a1);
      if (EVP_MD_type(v7) == a3)
      {
        return v6;
      }

      v8 = BIO_next(v6);
      v6 = BIO_find_type(v8, 520);
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v9 = 68;
    v10 = 654;
  }

  else
  {
LABEL_6:
    v9 = 108;
    v10 = 649;
  }

  ERR_put_error(33, 4095, v9, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_doit.c", v10);
  return 0;
}

const EVP_MD *PKCS7_SIGNER_INFO_sign(uint64_t a1)
{
  v13 = 0u;
  memset(&ctx, 0, sizeof(ctx));
  out = 0;
  v11 = 0;
  size = 0;
  v2 = OBJ_obj2nid(**(a1 + 16));
  v3 = OBJ_nid2sn(v2);
  result = EVP_get_digestbyname(v3);
  if (result)
  {
    v5 = result;
    EVP_MD_CTX_init(&ctx);
    if (EVP_DigestSignInit(&ctx, &v11, v5, 0, *(a1 + 56)) >= 1)
    {
      if (EVP_PKEY_CTX_ctrl(v11, -1, 8) < 1)
      {
        v8 = 892;
      }

      else
      {
        v6 = ASN1_item_i2d(*(a1 + 24), &out, &PKCS7_ATTR_SIGN_it);
        if (!out)
        {
          goto LABEL_13;
        }

        if (EVP_DigestUpdate(&ctx, out, v6) < 1)
        {
          goto LABEL_13;
        }

        free(out);
        out = 0;
        if (EVP_DigestSignFinal(&ctx, 0, &size) < 1)
        {
          goto LABEL_13;
        }

        v7 = malloc_type_malloc(size, 0xE253E480uLL);
        out = v7;
        if (!v7 || EVP_DigestSignFinal(&ctx, v7, &size) < 1)
        {
          goto LABEL_13;
        }

        if (EVP_PKEY_CTX_ctrl(v11, -1, 8) >= 1)
        {
          EVP_MD_CTX_cleanup(&ctx);
          ASN1_STRING_set0(*(a1 + 40), out, size);
          return 1;
        }

        v8 = 914;
      }

      ERR_put_error(33, 4095, 152, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_doit.c", v8);
    }

LABEL_13:
    free(out);
    EVP_MD_CTX_cleanup(&ctx);
    return 0;
  }

  return result;
}

int PKCS7_dataVerify(X509_STORE *cert_store, X509_STORE_CTX *ctx, BIO *bio, PKCS7 *p7, PKCS7_SIGNER_INFO *si)
{
  if (!p7)
  {
    v14 = 143;
    v15 = 941;
LABEL_17:
    ERR_put_error(33, 4095, v14, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_doit.c", v15);
    return 0;
  }

  if (!p7->d.ptr)
  {
    v14 = 122;
    v15 = 946;
    goto LABEL_17;
  }

  if (OBJ_obj2nid(p7->type) != 22 && OBJ_obj2nid(p7->type) != 24)
  {
    v14 = 114;
    v15 = 955;
    goto LABEL_17;
  }

  v10 = *(p7->d.ptr + 2);
  v11 = X509_find_by_issuer_and_serial(v10, si->issuer_and_serial->issuer, si->issuer_and_serial->serial);
  if (!v11)
  {
    v14 = 106;
    v15 = 965;
    goto LABEL_17;
  }

  v12 = v11;
  if (!X509_STORE_CTX_init(ctx, cert_store, v11, v10))
  {
    v14 = 11;
    v15 = 971;
    goto LABEL_17;
  }

  if (!X509_STORE_CTX_set_purpose(ctx, 4))
  {
LABEL_20:
    X509_STORE_CTX_cleanup(ctx);
    return 0;
  }

  if (X509_verify_cert(ctx) <= 0)
  {
    ERR_put_error(33, 4095, 11, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_doit.c", 980);
    goto LABEL_20;
  }

  X509_STORE_CTX_cleanup(ctx);

  return PKCS7_signatureVerify(bio, p7, si, v12);
}

int PKCS7_signatureVerify(BIO *bio, PKCS7 *p7, PKCS7_SIGNER_INFO *si, X509 *x509)
{
  v38 = *MEMORY[0x277D85DE8];
  v36 = 0u;
  memset(&ctx, 0, sizeof(ctx));
  parg = 0;
  EVP_MD_CTX_init(&ctx);
  if (OBJ_obj2nid(p7->type) == 22 || OBJ_obj2nid(p7->type) == 24)
  {
    v8 = OBJ_obj2nid(si->digest_alg->algorithm);
    if (bio)
    {
      v9 = v8;
      while (1)
      {
        type = BIO_find_type(bio, 520);
        if (!type)
        {
          goto LABEL_10;
        }

        v11 = type;
        BIO_ctrl(type, 120, 0, &parg);
        if (!parg)
        {
          v14 = 68;
          v15 = 1023;
          goto LABEL_23;
        }

        v12 = EVP_MD_CTX_md(parg);
        if (EVP_MD_type(v12) == v9)
        {
          break;
        }

        v13 = EVP_MD_CTX_md(parg);
        if (EVP_MD_pkey_type(v13) == v9)
        {
          break;
        }

        bio = BIO_next(v11);
        if (!bio)
        {
          goto LABEL_10;
        }
      }

      if (!EVP_MD_CTX_copy_ex(&ctx, parg))
      {
        goto LABEL_24;
      }

      auth_attr = si->auth_attr;
      if (auth_attr && sk_num(si->auth_attr))
      {
        out = 0;
        s = 0;
        if (!EVP_DigestFinal_ex(&ctx, md, &s))
        {
          goto LABEL_24;
        }

        attribute = get_attribute(auth_attr, 51);
        if (!attribute || *attribute != 4 || (v18 = *(attribute + 1)) == 0)
        {
          v14 = 108;
          v15 = 1052;
          goto LABEL_23;
        }

        v19 = *v18;
        if (v19 != s || memcmp(v18[1], md, v19))
        {
          v20 = 101;
          v21 = 1057;
          goto LABEL_35;
        }

        v25 = OBJ_nid2sn(v9);
        digestbyname = EVP_get_digestbyname(v25);
        if (!EVP_DigestInit_ex(&ctx, digestbyname, 0))
        {
          goto LABEL_24;
        }

        v27 = ASN1_item_i2d(auth_attr, &out, &PKCS7_ATTR_VERIFY_it);
        if (v27 <= 0)
        {
          v20 = 13;
          v21 = 1069;
          goto LABEL_35;
        }

        if (!EVP_DigestUpdate(&ctx, out, v27))
        {
          goto LABEL_24;
        }

        free(out);
      }

      enc_digest = si->enc_digest;
      pubkey = X509_get_pubkey(x509);
      if (!pubkey)
      {
LABEL_36:
        v22 = -1;
        goto LABEL_25;
      }

      v30 = pubkey;
      v31 = EVP_VerifyFinal(&ctx, enc_digest->data, enc_digest->length, pubkey);
      EVP_PKEY_free(v30);
      if (v31 > 0)
      {
        v22 = 1;
        goto LABEL_25;
      }

      v20 = 105;
      v21 = 1089;
LABEL_35:
      ERR_put_error(33, 4095, v20, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_doit.c", v21);
      goto LABEL_36;
    }

LABEL_10:
    v14 = 108;
    v15 = 1018;
  }

  else
  {
    v14 = 114;
    v15 = 1008;
  }

LABEL_23:
  ERR_put_error(33, 4095, v14, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_doit.c", v15);
LABEL_24:
  v22 = 0;
LABEL_25:
  EVP_MD_CTX_cleanup(&ctx);
  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

ASN1_OCTET_STRING *__cdecl PKCS7_digest_from_attributes(STACK *sk)
{
  result = get_attribute(sk, 51);
  if (result)
  {
    if (result->length == 4)
    {
      return result->data;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

PKCS7_ISSUER_AND_SERIAL *__cdecl PKCS7_get_issuer_and_serial(PKCS7 *p7, int idx)
{
  if (OBJ_obj2nid(p7->type) == 24 && (ptr = p7->d.ptr) != 0 && (v5 = *(ptr + 6)) != 0 && (sk_value(*(ptr + 6), 0), sk_num(v5) > idx))
  {
    return *(sk_value(v5, idx) + 1);
  }

  else
  {
    return 0;
  }
}

char *get_attribute(const STACK *a1, int n)
{
  v3 = OBJ_nid2obj(n);
  if (!a1)
  {
    return 0;
  }

  v4 = v3;
  if (!v3 || sk_num(a1) < 1)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = sk_value(a1, v5);
    if (!OBJ_cmp(*v6, v4))
    {
      break;
    }

    if (++v5 >= sk_num(a1))
    {
      return 0;
    }
  }

  v8 = *(v6 + 1);

  return sk_value(v8, 0);
}

int PKCS7_set_signed_attributes(PKCS7_SIGNER_INFO *p7si, STACK *sk)
{
  auth_attr = p7si->auth_attr;
  if (auth_attr)
  {
    sk_pop_free(auth_attr, X509_ATTRIBUTE_free);
  }

  v5 = sk_dup(sk);
  p7si->auth_attr = v5;
  if (v5)
  {
    if (sk_num(sk) < 1)
    {
LABEL_8:
      LODWORD(v5) = 1;
    }

    else
    {
      v6 = 0;
      while (1)
      {
        v7 = p7si->auth_attr;
        v8 = sk_value(sk, v6);
        v9 = X509_ATTRIBUTE_dup(v8);
        v5 = sk_set(v7, v6, v9);
        if (!v5)
        {
          break;
        }

        if (++v6 >= sk_num(sk))
        {
          goto LABEL_8;
        }
      }
    }
  }

  return v5;
}

int PKCS7_set_attributes(PKCS7_SIGNER_INFO *p7si, STACK *sk)
{
  unauth_attr = p7si->unauth_attr;
  if (unauth_attr)
  {
    sk_pop_free(unauth_attr, X509_ATTRIBUTE_free);
  }

  v5 = sk_dup(sk);
  p7si->unauth_attr = v5;
  if (v5)
  {
    if (sk_num(sk) < 1)
    {
LABEL_8:
      LODWORD(v5) = 1;
    }

    else
    {
      v6 = 0;
      while (1)
      {
        v7 = p7si->unauth_attr;
        v8 = sk_value(sk, v6);
        v9 = X509_ATTRIBUTE_dup(v8);
        v5 = sk_set(v7, v6, v9);
        if (!v5)
        {
          break;
        }

        if (++v6 >= sk_num(sk))
        {
          goto LABEL_8;
        }
      }
    }
  }

  return v5;
}

uint64_t add_attribute(STACK **a1, int a2, int a3, void *a4)
{
  v8 = *a1;
  if (!v8)
  {
    result = sk_new_null();
    *a1 = result;
    if (!result)
    {
      return result;
    }

LABEL_8:
    result = X509_ATTRIBUTE_create(a2, a3, a4);
    if (!result)
    {
      return result;
    }

    v12 = result;
    if (!sk_push(*a1, result))
    {
      goto LABEL_13;
    }

    return 1;
  }

  if (sk_num(v8) < 1)
  {
    goto LABEL_8;
  }

  v9 = 0;
  while (1)
  {
    v10 = sk_value(*a1, v9);
    if (OBJ_obj2nid(v10->object) == a2)
    {
      break;
    }

    if (++v9 >= sk_num(*a1))
    {
      goto LABEL_8;
    }
  }

  X509_ATTRIBUTE_free(v10);
  result = X509_ATTRIBUTE_create(a2, a3, a4);
  if (result)
  {
    v12 = result;
    if (!sk_set(*a1, v9, result))
    {
LABEL_13:
      X509_ATTRIBUTE_free(v12);
      return 0;
    }

    return 1;
  }

  return result;
}

void ERR_load_ECDSA_strings(void)
{
  if (!ERR_func_error_string(ECDSA_str_functs))
  {
    ERR_load_strings(0, &ECDSA_str_functs);

    ERR_load_strings(0, &ECDSA_str_reasons);
  }
}

STACK *v2i_crld(X509V3_EXT_METHOD *a1, X509V3_CTX *a2, const STACK *a3)
{
  v6 = sk_new_null();
  if (!v6)
  {
    section = 0;
    goto LABEL_30;
  }

  if (sk_num(a3) >= 1)
  {
    v7 = 0;
    v8 = &DIST_POINT_it;
    v23 = a1;
    do
    {
      v9 = sk_value(a3, v7);
      if (v9->value)
      {
        v10 = v2i_GENERAL_NAME(a1, a2, v9);
        if (!v10)
        {
          section = 0;
          goto LABEL_34;
        }

        v11 = GENERAL_NAMES_new();
        section = v11;
        if (!v11 || !sk_push(v11, v10))
        {
          goto LABEL_31;
        }

        v13 = ASN1_item_new(v8);
        if (!v13)
        {
          goto LABEL_30;
        }

        v14 = v13;
        if (!sk_push(v6, v13))
        {
          goto LABEL_38;
        }

        v15 = ASN1_item_new(&DIST_POINT_NAME_it);
        *v14 = v15;
        if (!v15)
        {
          goto LABEL_30;
        }

        *(v15 + 1) = section;
        **v14 = 0;
      }

      else
      {
        section = X509V3_get_section(a2, v9->name);
        if (!section)
        {
          goto LABEL_33;
        }

        v16 = v8;
        v14 = ASN1_item_new(v8);
        if (!v14)
        {
LABEL_32:
          ASN1_item_free(v14, &DIST_POINT_it);
          X509V3_section_free(a2, section);
          section = 0;
LABEL_33:
          v10 = 0;
          goto LABEL_34;
        }

        if (sk_num(section) >= 1)
        {
          for (i = 0; i < sk_num(section); ++i)
          {
            v18 = sk_value(section, i);
            v19 = set_dist_point_name(v14, a2, v18);
            if (v19 <= 0)
            {
              if (v19 < 0)
              {
                goto LABEL_32;
              }

              v20 = *(v18 + 1);
              if (!strcmp(v20, "reasons"))
              {
                if (!set_reasons(v14 + 1, *(v18 + 2)))
                {
                  goto LABEL_32;
                }
              }

              else if (!strcmp(v20, "CRLissuer"))
              {
                v21 = gnames_from_sectname(a2, *(v18 + 2));
                *(v14 + 2) = v21;
                if (!v21)
                {
                  goto LABEL_32;
                }
              }
            }
          }
        }

        X509V3_section_free(a2, section);
        v8 = v16;
        a1 = v23;
        if (!sk_push(v6, v14))
        {
          section = 0;
LABEL_38:
          ASN1_item_free(v14, &DIST_POINT_it);
LABEL_30:
          v10 = 0;
LABEL_31:
          ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_crld.c", 359);
LABEL_34:
          GENERAL_NAME_free(v10);
          GENERAL_NAMES_free(section);
          sk_pop_free(v6, DIST_POINT_free);
          return 0;
        }
      }

      ++v7;
    }

    while (v7 < sk_num(a3));
  }

  return v6;
}

uint64_t i2r_crldp(int a1, STACK *a2, BIO *a3, int a4)
{
  if (sk_num(a2) >= 1)
  {
    v7 = 0;
    do
    {
      BIO_puts(a3, "\n");
      v8 = sk_value(a2, v7);
      if (*v8)
      {
        print_distpoint(a3, *v8, a4);
      }

      v9 = *(v8 + 1);
      if (v9)
      {
        print_reasons(a3, "Reasons", v9, a4);
      }

      if (*(v8 + 2))
      {
        BIO_printf(a3, "%*sCRL Issuer:\n", a4, "");
        print_gens(a3, *(v8 + 2), a4);
      }

      ++v7;
    }

    while (v7 < sk_num(a2));
  }

  return 1;
}

ASN1_VALUE *v2i_idp(uint64_t a1, X509V3_CTX *a2, const STACK *a3)
{
  v5 = ASN1_item_new(&ISSUING_DIST_POINT_it);
  if (!v5)
  {
    ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_crld.c", 714);
    goto LABEL_21;
  }

  if (sk_num(a3) >= 1)
  {
    for (i = 0; i < sk_num(a3); ++i)
    {
      v7 = sk_value(a3, i);
      name = v7->name;
      value = v7->value;
      v10 = set_dist_point_name(v5, a2, v7);
      if (v10 <= 0)
      {
        if (v10 < 0)
        {
          goto LABEL_21;
        }

        if (!strcmp(name, "onlyuser"))
        {
          v11 = (v5 + 8);
          goto LABEL_17;
        }

        if (!strcmp(name, "onlyCA"))
        {
          v11 = (v5 + 12);
          goto LABEL_17;
        }

        if (!strcmp(name, "onlyAA"))
        {
          v11 = (v5 + 28);
          goto LABEL_17;
        }

        if (!strcmp(name, "indirectCRL"))
        {
          v11 = (v5 + 24);
LABEL_17:
          if (!X509V3_get_value_BOOL(v7, v11))
          {
            goto LABEL_21;
          }

          continue;
        }

        if (strcmp(name, "onlysomereasons"))
        {
          ERR_put_error(34, 4095, 106, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_crld.c", 706);
          ERR_asprintf_error_data("section:%s,name:%s,value:%s", v7->section, v7->name, v7->value);
LABEL_21:
          ASN1_item_free(v5, &ISSUING_DIST_POINT_it);
          return 0;
        }

        if (!set_reasons(v5 + 2, value))
        {
          goto LABEL_21;
        }
      }
    }
  }

  return v5;
}

uint64_t i2r_idp(int a1, uint64_t a2, BIO *bio, int a4)
{
  v7 = *a2;
  if (v7)
  {
    print_distpoint(bio, v7, a4);
  }

  if (*(a2 + 8) >= 1)
  {
    BIO_printf(bio, "%*sOnly User Certificates\n", a4, "");
  }

  if (*(a2 + 12) >= 1)
  {
    BIO_printf(bio, "%*sOnly CA Certificates\n", a4, "");
  }

  if (*(a2 + 24) >= 1)
  {
    BIO_printf(bio, "%*sIndirect CRL\n", a4, "");
  }

  v8 = *(a2 + 16);
  if (v8)
  {
    print_reasons(bio, "Only Some Reasons", v8, a4);
  }

  if (*(a2 + 28) >= 1)
  {
    BIO_printf(bio, "%*sOnly Attribute Certificates\n", a4, "");
  }

  if (!*a2 && *(a2 + 8) <= 0 && *(a2 + 12) <= 0 && *(a2 + 24) <= 0 && !*(a2 + 16) && *(a2 + 28) <= 0)
  {
    BIO_printf(bio, "%*s<EMPTY>\n", a4, "");
  }

  return 1;
}

uint64_t DIST_POINT_set_dpname(uint64_t a1, X509_NAME *xn)
{
  if (!a1)
  {
    return 1;
  }

  if (*a1 != 1)
  {
    return 1;
  }

  v3 = *(a1 + 8);
  result = X509_NAME_dup(xn);
  *(a1 + 16) = result;
  if (!result)
  {
    return result;
  }

  if (sk_num(v3) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = sk_value(v3, v5);
      if (!X509_NAME_add_entry(*(a1 + 16), v6, -1, v5 == 0))
      {
        goto LABEL_11;
      }
    }

    while (++v5 < sk_num(v3));
  }

  if ((i2d_X509_NAME(*(a1 + 16), 0) & 0x80000000) == 0)
  {
    return 1;
  }

LABEL_11:
  X509_NAME_free(*(a1 + 16));
  result = 0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t set_dist_point_name(ASN1_VALUE **a1, X509V3_CTX *a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  if (!strncmp(v6, "fullname", 9uLL))
  {
    v8 = gnames_from_sectname(a2, *(a3 + 16));
    entries = 0;
    v10 = 0;
    if (!v8)
    {
LABEL_15:
      sk_pop_free(v10, GENERAL_NAME_free);
      sk_pop_free(entries, X509_NAME_ENTRY_free);
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    if (strcmp(v6, "relativename"))
    {
      return 0;
    }

    v11 = X509_NAME_new();
    if (!v11)
    {
      return 0xFFFFFFFFLL;
    }

    v12 = v11;
    section = X509V3_get_section(a2, *(a3 + 16));
    if (!section)
    {
      ERR_put_error(34, 4095, 150, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_crld.c", 150);
      X509_NAME_free(v12);
      return 0xFFFFFFFFLL;
    }

    v14 = section;
    v15 = X509V3_NAME_from_section(v12, section, 0x1001uLL);
    X509V3_section_free(a2, v14);
    entries = v12->entries;
    v12->entries = 0;
    X509_NAME_free(v12);
    if (!v15 || sk_num(entries) < 1)
    {
      goto LABEL_14;
    }

    v16 = sk_num(entries);
    if (*(sk_value(entries, v16 - 1) + 4))
    {
      ERR_put_error(34, 4095, 161, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_crld.c", 166);
LABEL_14:
      v10 = 0;
      goto LABEL_15;
    }

    v8 = 0;
  }

  if (*a1)
  {
    ERR_put_error(34, 4095, 160, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_crld.c", 173);
LABEL_7:
    v10 = v8;
    goto LABEL_15;
  }

  v17 = ASN1_item_new(&DIST_POINT_NAME_it);
  *a1 = v17;
  if (!v17)
  {
    goto LABEL_7;
  }

  v18 = v17;
  if (v8)
  {
    *v17 = 0;
    *(v17 + 1) = v8;
    return 1;
  }

  else
  {
    result = 1;
    *v18 = 1;
    *(v18 + 1) = entries;
  }

  return result;
}

uint64_t set_reasons(ASN1_BIT_STRING **a1, char *line)
{
  if (*a1)
  {
    return 0;
  }

  v4 = X509V3_parse_list(line);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (sk_num(v4) < 1)
  {
LABEL_14:
    v2 = 1;
  }

  else
  {
    v6 = 0;
    while (1)
    {
      v7 = *(sk_value(v5, v6) + 1);
      v8 = *a1;
      if (!*a1)
      {
        v8 = ASN1_BIT_STRING_new();
        *a1 = v8;
        if (!v8)
        {
          break;
        }
      }

      v9 = off_278C07550;
      while (strcmp(*(v9 - 2), v7))
      {
        v10 = *v9;
        v9 += 3;
        if (!v10)
        {
          goto LABEL_15;
        }
      }

      if (!ASN1_BIT_STRING_set_bit(v8, *(v9 - 8), 1))
      {
        break;
      }

      if (++v6 >= sk_num(v5))
      {
        goto LABEL_14;
      }
    }

LABEL_15:
    v2 = 0;
  }

  sk_pop_free(v5, X509V3_conf_free);
  return v2;
}

GENERAL_NAMES *gnames_from_sectname(X509V3_CTX *ctx, char *line)
{
  if (*line == 64)
  {
    section = X509V3_get_section(ctx, line + 1);
  }

  else
  {
    section = X509V3_parse_list(line);
  }

  v5 = section;
  if (section)
  {
    v6 = v2i_GENERAL_NAMES(0, ctx, section);
    if (*line == 64)
    {
      X509V3_section_free(ctx, v5);
    }

    else
    {
      sk_pop_free(v5, X509V3_conf_free);
    }
  }

  else
  {
    ERR_put_error(34, 4095, 150, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_crld.c", 120);
    return 0;
  }

  return v6;
}

uint64_t dpn_cb(int a1, uint64_t *a2)
{
  v2 = *a2;
  if (a1 == 3)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      X509_NAME_free(v3);
    }
  }

  else if (a1 == 1)
  {
    *(v2 + 16) = 0;
  }

  return 1;
}

uint64_t print_distpoint(BIO *bio, uint64_t a2, int a3)
{
  if (*a2)
  {
    memset(&nm[8], 0, 32);
    *nm = *(a2 + 8);
    BIO_printf(bio, "%*sRelative Name:\n%*s", a3, "", a3 + 2, "");
    X509_NAME_print_ex(bio, nm, 0, 0x82031FuLL);
    return BIO_puts(bio, "\n");
  }

  else
  {
    BIO_printf(bio, "%*sFull Name:\n", a3, "");
    v7 = *(a2 + 8);

    return print_gens(bio, v7, a3);
  }
}

uint64_t print_reasons(BIO *a1, const char *a2, ASN1_BIT_STRING *a3, int a4)
{
  BIO_printf(a1, "%*s%s:\n%*s", a4, "", a2, a4 + 2, "");
  v6 = 0;
  v7 = &reason_flags;
  v8 = "Unused";
LABEL_2:
  for (i = *v7; ; i = v10)
  {
    if (ASN1_BIT_STRING_get_bit(a3, i))
    {
      if (v6)
      {
        BIO_puts(a1, ", ");
      }

      BIO_puts(a1, v8);
      v8 = *(v7 + 4);
      v7 += 6;
      v6 = 1;
      if (!v8)
      {
        goto LABEL_11;
      }

      goto LABEL_2;
    }

    v8 = *(v7 + 4);
    if (!v8)
    {
      break;
    }

    v10 = v7[6];
    v7 += 6;
  }

  if (v6)
  {
LABEL_11:
    v11 = "\n";
    goto LABEL_13;
  }

  v11 = "<EMPTY>\n";
LABEL_13:

  return BIO_puts(a1, v11);
}

uint64_t print_gens(BIO *a1, STACK *a2, int a3)
{
  result = sk_num(a2);
  if (result >= 1)
  {
    v7 = 0;
    do
    {
      BIO_printf(a1, "%*s", a3 + 2, "");
      v8 = sk_value(a2, v7);
      GENERAL_NAME_print(a1, v8);
      BIO_puts(a1, "\n");
      ++v7;
      result = sk_num(a2);
    }

    while (v7 < result);
  }

  return result;
}

void asn1_item_free(ASN1_VALUE **pval, ASN1_ITEM *it)
{
  if (!pval)
  {
    return;
  }

  funcs = it->funcs;
  itype = it->itype;
  if (it->itype)
  {
    if (!*pval)
    {
      return;
    }
  }

  if (funcs)
  {
    v6 = *(funcs + 3);
  }

  else
  {
    v6 = 0;
  }

  if (it->itype <= 3u)
  {
    if (it->itype)
    {
      if (itype != 1)
      {
        if (itype != 2 || v6 && v6(2, pval, it, 0) == 2)
        {
          return;
        }

        choice_selector = asn1_get_choice_selector(pval, it);
        if ((choice_selector & 0x80000000) == 0 && it->tcount > choice_selector)
        {
          v8 = &it->templates[choice_selector];
          field_ptr = asn1_get_field_ptr(pval, v8);
          ASN1_template_free(field_ptr, v8);
        }

LABEL_27:
        if (v6)
        {
          v6(3, pval, it, 0);
        }

        free(*pval);
        *pval = 0;
        return;
      }

LABEL_19:
      if (asn1_do_lock(pval, -1, it) > 0 || v6 && v6(2, pval, it, 0) == 2)
      {
        return;
      }

      asn1_enc_cleanup(pval, it);
      tcount = it->tcount;
      if (tcount >= 1)
      {
        v11 = 0;
        v12 = &it->templates[tcount - 1];
        do
        {
          v13 = asn1_do_adb(pval, v12, 0);
          if (v13)
          {
            v14 = v13;
            v15 = asn1_get_field_ptr(pval, v13);
            ASN1_template_free(v15, v14);
          }

          ++v11;
          --v12;
        }

        while (it->tcount > v11);
      }

      goto LABEL_27;
    }

    templates = it->templates;
    if (templates)
    {

      ASN1_template_free(pval, templates);
      return;
    }

    goto LABEL_34;
  }

  if (itype != 4)
  {
    if (itype != 5)
    {
      if (itype != 6)
      {
        return;
      }

      goto LABEL_19;
    }

LABEL_34:

    ASN1_primitive_free(pval, it);
    return;
  }

  if (funcs)
  {
    v17 = *(funcs + 2);
    if (v17)
    {

      v17();
    }
  }
}

void ASN1_template_free(ASN1_VALUE **pval, const ASN1_TEMPLATE *tt)
{
  if ((tt->flags & 6) != 0)
  {
    v4 = *pval;
    if (sk_num(*pval) >= 1)
    {
      v5 = 0;
      do
      {
        pvala = 0;
        pvala = sk_value(v4, v5);
        asn1_item_free(&pvala, tt->item);
        ++v5;
      }

      while (v5 < sk_num(v4));
    }

    sk_free(v4);
    *pval = 0;
  }

  else
  {
    item = tt->item;

    asn1_item_free(pval, item);
  }
}

void ASN1_primitive_free(ASN1_VALUE **pval, const ASN1_ITEM *it)
{
  v2 = pval;
  if (!it)
  {
    v5 = *pval;
    v2 = (*pval + 8);
    v6 = *v2;
    if (!*v2)
    {
      return;
    }

    utype = *v5;
    goto LABEL_8;
  }

  funcs = it->funcs;
  if (!funcs)
  {
    if (it->itype == 5)
    {
      v6 = *pval;
      if (!*v2)
      {
        return;
      }

      goto LABEL_19;
    }

    utype = it->utype;
    if (utype == 1)
    {
      goto LABEL_21;
    }

    v6 = *pval;
    if (!*v2)
    {
      return;
    }

LABEL_8:
    if (utype > 4)
    {
      if (utype != 5)
      {
        if (utype != 6)
        {
LABEL_19:
          ASN1_STRING_free(v6);
          goto LABEL_26;
        }

        ASN1_OBJECT_free(v6);
      }

LABEL_26:
      *v2 = 0;
      return;
    }

    if (utype == -4)
    {
      ASN1_primitive_free(v2, 0);
      free(*v2);
      goto LABEL_26;
    }

    if (utype != 1)
    {
      goto LABEL_19;
    }

    if (!it)
    {
      size = -1;
LABEL_22:
      *v2 = size;
      return;
    }

LABEL_21:
    size = it->size;
    goto LABEL_22;
  }

  v4 = *(funcs + 3);

  v4();
}

uint64_t dh_cb(int a1, DH **a2)
{
  if (a1 == 2)
  {
    DH_free(*a2);
    *a2 = 0;
    return 2;
  }

  else if (a1)
  {
    return 1;
  }

  else
  {
    v3 = DH_new();
    *a2 = v3;
    return 2 * (v3 != 0);
  }
}

int X509at_get_attr_by_NID(const STACK *x, int nid, int lastpos)
{
  v5 = OBJ_nid2obj(nid);
  if (!v5)
  {
    return -2;
  }

  return X509at_get_attr_by_OBJ(x, v5, lastpos);
}

int X509at_get_attr_by_OBJ(const STACK *sk, ASN1_OBJECT *obj, int lastpos)
{
  if (sk)
  {
    if (lastpos < 0)
    {
      v5 = -1;
    }

    else
    {
      v5 = lastpos;
    }

    v6 = sk_num(sk);
    while (++v5 < v6)
    {
      v7 = sk_value(sk, v5);
      if (!OBJ_cmp(*v7, obj))
      {
        return v5;
      }
    }
  }

  return -1;
}

X509_ATTRIBUTE *__cdecl X509at_get_attr(const STACK *x, int loc)
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

X509_ATTRIBUTE *__cdecl X509at_delete_attr(STACK *x, int loc)
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

STACK *__cdecl X509at_add1_attr(STACK **x, X509_ATTRIBUTE *attr)
{
  if (!x)
  {
    ERR_put_error(11, 4095, 67, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_att.c", 141);
    return 0;
  }

  v4 = *x;
  if (!*x)
  {
    v4 = sk_new_null();
    if (!v4)
    {
      ERR_put_error(11, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_att.c", 160);
      return v4;
    }
  }

  v5 = X509_ATTRIBUTE_dup(attr);
  if (!v5)
  {
LABEL_10:
    if (v4 != *x)
    {
      sk_free(v4);
    }

    return 0;
  }

  v6 = v5;
  if (!sk_push(v4, v5))
  {
    ERR_put_error(11, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_att.c", 160);
    X509_ATTRIBUTE_free(v6);
    goto LABEL_10;
  }

  if (!*x)
  {
    *x = v4;
  }

  return v4;
}

STACK *__cdecl X509at_add1_attr_by_OBJ(STACK **x, const ASN1_OBJECT *obj, int type, const unsigned __int8 *bytes, int len)
{
  result = X509_ATTRIBUTE_create_by_OBJ(0, obj, type, bytes, len);
  if (result)
  {
    v7 = result;
    v8 = X509at_add1_attr(x, result);
    X509_ATTRIBUTE_free(v7);
    return v8;
  }

  return result;
}

X509_ATTRIBUTE *__cdecl X509_ATTRIBUTE_create_by_OBJ(X509_ATTRIBUTE **attr, const ASN1_OBJECT *obj, int atrtype, const void *data, int len)
{
  if (attr && (v10 = *attr) != 0 || (v10 = X509_ATTRIBUTE_new()) != 0)
  {
    if (X509_ATTRIBUTE_set1_object(v10, obj) && X509_ATTRIBUTE_set1_data(v10, atrtype, data, len))
    {
      if (attr && !*attr)
      {
        *attr = v10;
      }
    }

    else
    {
      if (!attr || v10 != *attr)
      {
        X509_ATTRIBUTE_free(v10);
      }

      return 0;
    }
  }

  else
  {
    ERR_put_error(11, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_att.c", 264);
  }

  return v10;
}

STACK *__cdecl X509at_add1_attr_by_NID(STACK **x, int nid, int type, const unsigned __int8 *bytes, int len)
{
  result = X509_ATTRIBUTE_create_by_NID(0, nid, type, bytes, len);
  if (result)
  {
    v7 = result;
    v8 = X509at_add1_attr(x, result);
    X509_ATTRIBUTE_free(v7);
    return v8;
  }

  return result;
}

X509_ATTRIBUTE *__cdecl X509_ATTRIBUTE_create_by_NID(X509_ATTRIBUTE **attr, int nid, int atrtype, const void *data, int len)
{
  v9 = OBJ_nid2obj(nid);
  if (v9)
  {
    v10 = v9;
    result = X509_ATTRIBUTE_create_by_OBJ(attr, v9, atrtype, data, len);
    if (result)
    {
      return result;
    }

    ASN1_OBJECT_free(v10);
  }

  else
  {
    ERR_put_error(11, 4095, 109, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_att.c", 246);
  }

  return 0;
}

STACK *__cdecl X509at_add1_attr_by_txt(STACK **x, const char *attrname, int type, const unsigned __int8 *bytes, int len)
{
  result = X509_ATTRIBUTE_create_by_txt(0, attrname, type, bytes, len);
  if (result)
  {
    v7 = result;
    v8 = X509at_add1_attr(x, result);
    X509_ATTRIBUTE_free(v7);
    return v8;
  }

  return result;
}

X509_ATTRIBUTE *__cdecl X509_ATTRIBUTE_create_by_txt(X509_ATTRIBUTE **attr, const char *atrname, int type, const unsigned __int8 *bytes, int len)
{
  v10 = OBJ_txt2obj(atrname, 0);
  if (v10)
  {
    v11 = v10;
    v12 = X509_ATTRIBUTE_create_by_OBJ(attr, v10, type, bytes, len);
    ASN1_OBJECT_free(v11);
    return v12;
  }

  else
  {
    ERR_put_error(11, 4095, 119, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_att.c", 295);
    ERR_asprintf_error_data("name=%s", atrname);
    return 0;
  }
}

void *__cdecl X509at_get0_data_by_OBJ(STACK *x, ASN1_OBJECT *obj, int lastpos, int type)
{
  attr_by_OBJ = X509at_get_attr_by_OBJ(x, obj, lastpos);
  if (attr_by_OBJ == -1)
  {
    return 0;
  }

  v9 = attr_by_OBJ;
  if (lastpos >= -1)
  {
    attr = X509at_get_attr(x, attr_by_OBJ);
    goto LABEL_6;
  }

  if (X509at_get_attr_by_OBJ(x, obj, attr_by_OBJ) != -1)
  {
    return 0;
  }

  v13 = X509at_get_attr(x, v9);
  attr = v13;
  if (lastpos != -2 && (!v13 || sk_num(*&v13->single) != 1))
  {
    return 0;
  }

LABEL_6:

  return X509_ATTRIBUTE_get0_data(attr, 0, type, v11);
}

int X509_ATTRIBUTE_count(X509_ATTRIBUTE *attr)
{
  if (attr)
  {
    LODWORD(attr) = sk_num(*&attr->single);
  }

  return attr;
}

void *__cdecl X509_ATTRIBUTE_get0_data(void *attr, int idx, int atrtype, void *data)
{
  if (attr)
  {
    attr = sk_value(*(attr + 1), idx);
    if (attr)
    {
      v5 = attr;
      if (ASN1_TYPE_get(attr) == atrtype)
      {
        return *(v5 + 1);
      }

      else
      {
        ERR_put_error(11, 4095, 122, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_att.c", 398);
        return 0;
      }
    }
  }

  return attr;
}

int X509_ATTRIBUTE_set1_object(X509_ATTRIBUTE *attr, const ASN1_OBJECT *obj)
{
  result = 0;
  if (attr)
  {
    if (obj)
    {
      ASN1_OBJECT_free(attr->object);
      v5 = OBJ_dup(obj);
      attr->object = v5;
      return v5 != 0;
    }
  }

  return result;
}

int X509_ATTRIBUTE_set1_data(X509_ATTRIBUTE *attr, int attrtype, const void *data, int len)
{
  if (attr)
  {
    v7 = attr;
    if ((attrtype & 0x1000) != 0)
    {
      v8 = OBJ_obj2nid(attr->object);
      v9 = ASN1_STRING_set_by_NID(0, data, len, attrtype, v8);
      if (!v9)
      {
        v14 = 13;
        v15 = 330;
LABEL_22:
        ERR_put_error(11, 4095, v14, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_att.c", v15);
        LODWORD(attr) = 0;
        return attr;
      }

      v10 = v9;
      type = v9->type;
      goto LABEL_13;
    }

    if (len == -1)
    {
      v10 = 0;
      type = 0;
      if (!attrtype)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v12 = ASN1_STRING_type_new(attrtype);
      v10 = v12;
      if (!v12 || !ASN1_STRING_set(v12, data, len))
      {
        v13 = 0;
        goto LABEL_21;
      }

      type = attrtype;
      if (!attrtype)
      {
LABEL_9:
        ASN1_STRING_free(v10);
LABEL_20:
        LODWORD(attr) = 1;
        return attr;
      }
    }

LABEL_13:
    v16 = ASN1_TYPE_new();
    v13 = v16;
    if (v16)
    {
      if ((attrtype & 0x1000) != 0 || len != -1)
      {
        ASN1_TYPE_set(v16, type, v10);
      }

      else if (!ASN1_TYPE_set1(v16, attrtype, data))
      {
        goto LABEL_21;
      }

      if (sk_push(*&v7->single, v13))
      {
        goto LABEL_20;
      }
    }

LABEL_21:
    ASN1_TYPE_free(v13);
    ASN1_STRING_free(v10);
    v14 = 65;
    v15 = 365;
    goto LABEL_22;
  }

  return attr;
}

ASN1_OBJECT *__cdecl X509_ATTRIBUTE_get0_object(ASN1_OBJECT *attr)
{
  if (attr)
  {
    return attr->sn;
  }

  return attr;
}

ASN1_TYPE *__cdecl X509_ATTRIBUTE_get0_type(ASN1_TYPE *attr, int idx)
{
  if (attr)
  {
    return sk_value(attr->value.ptr, idx);
  }

  return attr;
}

int EVP_CipherInit(EVP_CIPHER_CTX *ctx, const EVP_CIPHER *cipher, const unsigned __int8 *key, const unsigned __int8 *iv, int enc)
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

  return EVP_CipherInit_ex(ctx, cipher, 0, key, iv, enc);
}

void EVP_CIPHER_CTX_init(EVP_CIPHER_CTX *a)
{
  *&a->final[24] = 0;
  *&a->final_used = 0u;
  *&a->final[8] = 0u;
  *&a->app_data = 0u;
  *&a->flags = 0u;
  *&a->buf[8] = 0u;
  *&a->buf[24] = 0u;
  *&a->oiv[8] = 0u;
  *&a->iv[8] = 0u;
  *&a->cipher = 0u;
  *&a->encrypt = 0u;
}

int EVP_CipherInit_ex(EVP_CIPHER_CTX *ctx, const EVP_CIPHER *cipher, ENGINE *impl, const unsigned __int8 *key, const unsigned __int8 *iv, int enc)
{
  v9 = cipher;
  if (enc == -1)
  {
    encrypt = ctx->encrypt;
  }

  else
  {
    encrypt = enc != 0;
    ctx->encrypt = encrypt;
  }

  v12 = ctx->cipher;
  if (!ctx->engine)
  {
    if (cipher)
    {
      if (!v12)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    if (v12)
    {
      goto LABEL_28;
    }

LABEL_22:
    v14 = 131;
    v15 = 163;
    goto LABEL_46;
  }

  if (v12)
  {
    if (!cipher || cipher->nid == v12->nid)
    {
      goto LABEL_28;
    }

LABEL_11:
    flags = ctx->flags;
    EVP_CIPHER_CTX_cleanup(ctx);
    ctx->encrypt = encrypt;
    ctx->flags = flags;
    goto LABEL_13;
  }

  if (!cipher)
  {
    goto LABEL_22;
  }

LABEL_13:
  if (impl)
  {
    if (!ENGINE_init(impl))
    {
      v14 = 134;
      v15 = 120;
LABEL_46:
      ERR_put_error(6, 4095, v14, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/evp_enc.c", v15);
      return 0;
    }

    goto LABEL_17;
  }

  impl = ENGINE_get_cipher_engine(v9->nid);
  if (impl)
  {
LABEL_17:
    v9 = ENGINE_get_cipher(impl, v9->nid);
    if (!v9)
    {
      v14 = 134;
      v15 = 131;
      goto LABEL_46;
    }
  }

  ctx->cipher = v9;
  ctx->engine = impl;
  ctx_size = v9->ctx_size;
  if (ctx_size)
  {
    v17 = malloc_type_calloc(1uLL, ctx_size, 0xDDCA20F4uLL);
    ctx->cipher_data = v17;
    if (!v17)
    {
      v14 = 65;
      v15 = 148;
      goto LABEL_46;
    }

    v12 = ctx->cipher;
  }

  else
  {
    ctx->cipher_data = 0;
    v12 = v9;
  }

  ctx->key_len = v9->key_len;
  ctx->flags &= 1uLL;
  if ((v12->flags & 0x40) != 0)
  {
    if (!EVP_CIPHER_CTX_ctrl(ctx, 0, 0, 0))
    {
      v14 = 134;
      v15 = 158;
      goto LABEL_46;
    }

    v12 = ctx->cipher;
  }

LABEL_28:
  block_size = v12->block_size;
  v19 = block_size > 0x10;
  v20 = (1 << block_size) & 0x10102;
  if (v19 || v20 == 0)
  {
    v14 = 136;
    v15 = 173;
    goto LABEL_46;
  }

  if ((ctx->flags & 1) == 0 && (EVP_CIPHER_CTX_flags(ctx) & 0xF0007) == 0x10002)
  {
    v14 = 170;
    v15 = 179;
    goto LABEL_46;
  }

  if ((EVP_CIPHER_CTX_flags(ctx) & 0x10) != 0)
  {
    goto LABEL_55;
  }

  v22 = EVP_CIPHER_CTX_flags(ctx);
  result = 0;
  v24 = *&v22 & 0xF0007;
  if (v24 <= 2)
  {
    if (v24 < 2)
    {
      goto LABEL_55;
    }

    goto LABEL_42;
  }

  if ((v24 - 3) < 2)
  {
    ctx->num = 0;
LABEL_42:
    if (EVP_CIPHER_CTX_iv_length(ctx) >= 0x11)
    {
      v14 = 102;
      v15 = 200;
      goto LABEL_46;
    }

    if (iv)
    {
      v28 = EVP_CIPHER_CTX_iv_length(ctx);
      memcpy(ctx->oiv, iv, v28);
    }

    v25 = EVP_CIPHER_CTX_iv_length(ctx);
    v26 = ctx->iv;
    oiv = ctx->oiv;
    goto LABEL_54;
  }

  if (v24 != 5)
  {
    return result;
  }

  ctx->num = 0;
  if (iv)
  {
    v25 = EVP_CIPHER_CTX_iv_length(ctx);
    v26 = ctx->iv;
    oiv = iv;
LABEL_54:
    memcpy(v26, oiv, v25);
  }

LABEL_55:
  v29 = ctx->cipher;
  if (!key && (v29->flags & 0x20) == 0)
  {
    goto LABEL_59;
  }

  result = (v29->init)(ctx, key, iv, encrypt);
  if (result)
  {
    v29 = ctx->cipher;
LABEL_59:
    ctx->buf_len = 0;
    v30 = v29->block_size - 1;
    ctx->final_used = 0;
    ctx->block_mask = v30;
    return 1;
  }

  return result;
}

int EVP_CIPHER_CTX_cleanup(EVP_CIPHER_CTX *a)
{
  if (a->cipher)
  {
    cleanup = a->cipher->cleanup;
    if (cleanup)
    {
      (cleanup)(a);
    }

    cipher_data = a->cipher_data;
    if (cipher_data)
    {
      explicit_bzero(cipher_data, a->cipher->ctx_size);
    }
  }

  free(a->cipher_data);
  ENGINE_finish(a->engine);
  explicit_bzero(a, 0xA8uLL);
}

int EVP_CIPHER_CTX_ctrl(EVP_CIPHER_CTX *ctx, int type, int arg, void *ptr)
{
  if (ctx->cipher)
  {
    ctrl = ctx->cipher->ctrl;
    if (ctrl)
    {
      result = ctrl();
      if (result != -1)
      {
        return result;
      }

      v6 = 133;
      v7 = 666;
    }

    else
    {
      v6 = 132;
      v7 = 660;
    }
  }

  else
  {
    v6 = 131;
    v7 = 655;
  }

  ERR_put_error(6, 4095, v6, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/evp_enc.c", v7);
  return 0;
}

int EVP_CipherUpdate(EVP_CIPHER_CTX *ctx, unsigned __int8 *out, int *outl, const unsigned __int8 *in, int inl)
{
  if (ctx->encrypt)
  {
    return EVP_EncryptUpdate(ctx, out, outl, in, inl);
  }

  else
  {
    return EVP_DecryptUpdate(ctx, out, outl, in, inl);
  }
}

int EVP_EncryptUpdate(EVP_CIPHER_CTX *ctx, unsigned __int8 *out, int *outl, const unsigned __int8 *in, int inl)
{
  *outl = 0;
  if (inl < 0)
  {
    return 0;
  }

  v5 = inl;
  if (!inl && (EVP_CIPHER_flags(ctx->cipher) & 0xF0007) != 7)
  {
    return 1;
  }

  cipher = ctx->cipher;
  if ((ctx->cipher->flags & 0x100000) != 0)
  {
    v16 = (cipher->do_cipher)(ctx, out, in, v5);
    if ((v16 & 0x80000000) == 0)
    {
      *outl = v16;
      return 1;
    }

    return 0;
  }

  buf_len = ctx->buf_len;
  if (!buf_len)
  {
    if ((ctx->block_mask & v5) == 0)
    {
      result = (cipher->do_cipher)(ctx, out, in, v5);
      if (result)
      {
        *outl = v5;
        return 1;
      }

      goto LABEL_16;
    }

    block_size = cipher->block_size;
    if (block_size <= 0x20)
    {
      v17 = 0;
      goto LABEL_26;
    }

LABEL_15:
    ERR_put_error(6, 4095, 136, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/evp_enc.c", 330);
    result = 0;
LABEL_16:
    *outl = 0;
    return result;
  }

  block_size = cipher->block_size;
  if (block_size >= 0x21)
  {
    goto LABEL_15;
  }

  v13 = block_size - buf_len;
  v14 = v5 - (block_size - buf_len);
  if (v5 < (block_size - buf_len))
  {
    memcpy(&ctx->buf[buf_len], in, v5);
    ctx->buf_len += v5;
    *outl = 0;
    return 1;
  }

  if ((v14 & -block_size) > (block_size ^ 0x7FFFFFFF))
  {
    ERR_put_error(6, 4095, 164, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/evp_enc.c", 350);
    return 0;
  }

  v18 = v13;
  memcpy(&ctx->buf[buf_len], in, v13);
  result = (ctx->cipher->do_cipher)(ctx, out, ctx->buf, block_size);
  if (!result)
  {
    return result;
  }

  in += v18;
  out += block_size;
  v17 = block_size;
  v5 = v14;
LABEL_26:
  *outl = v17;
  v19 = v5 & (block_size - 1);
  v20 = v5 - v19;
  if (v20 < 1)
  {
LABEL_29:
    if (v19)
    {
      memcpy(ctx->buf, &in[v20], v19);
    }

    ctx->buf_len = v19;
    return 1;
  }

  result = (ctx->cipher->do_cipher)(ctx, out, in, v20);
  if (result)
  {
    *outl += v20;
    goto LABEL_29;
  }

  return result;
}