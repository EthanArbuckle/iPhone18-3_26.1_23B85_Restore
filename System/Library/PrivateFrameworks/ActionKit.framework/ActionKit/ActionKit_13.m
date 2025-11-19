uint64_t libssh2_knownhost_writeline(uint64_t *a1, uint64_t a2, char *a3, size_t a4, void *a5, int a6)
{
  if (*a2 == -559035650)
  {
    return knownhost_writeline(a1, *(a2 + 8), a3, a4, a5, a6);
  }

  else
  {
    return _libssh2_error(*a1, 4294967262, "Invalid host information");
  }
}

uint64_t knownhost_writeline(uint64_t *a1, uint64_t a2, char *a3, size_t a4, void *a5, int a6)
{
  if (a6 != 1)
  {
    v14 = *a1;
    v15 = "Unsupported type of known-host information store";
LABEL_8:

    return _libssh2_error(v14, 4294967263, v15);
  }

  v11 = *(a2 + 44);
  v12 = (v11 & 0x3C0000) - 0x40000;
  v13 = v12 >> 18;
  if (v12 >> 18 > 3)
  {
    if (v12 >> 18 > 5)
    {
      if (v13 == 6)
      {
        v13 = 11;
        goto LABEL_27;
      }

      if (v13 == 14 && *(a2 + 72))
      {
        v13 = *(a2 + 80);
        goto LABEL_27;
      }
    }

    else if (v13 == 4 || v13 == 5)
    {
      goto LABEL_24;
    }

LABEL_22:
    v14 = *a1;
    v15 = "Unsupported type of known-host entry";
    goto LABEL_8;
  }

  if (v12 >> 18 > 1)
  {
    if (v13 == 2)
    {
LABEL_25:
      v13 = 7;
      goto LABEL_27;
    }

    if (v13 != 3)
    {
      goto LABEL_22;
    }

LABEL_24:
    v13 = 19;
    goto LABEL_27;
  }

  if (v13)
  {
    if (v13 == 1)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

LABEL_27:
  v17 = strlen(*(a2 + 64));
  if (v13)
  {
    v18 = v13 + 1;
  }

  else
  {
    v18 = 0;
  }

  v19 = v17 + v18;
  v20 = *(a2 + 88);
  if (v20)
  {
    v19 += *(a2 + 96) + 1;
  }

  if (v11 != 2)
  {
    v24 = v19 + *(a2 + 32) + 3;
    if (v24 <= a4)
    {
      v27 = *(a2 + 24);
      if (v13 && v20)
      {
        snprintf(a3, a4, "%s %s %s %s\n");
      }

      else if (v20 || v13)
      {
        snprintf(a3, a4, "%s %s %s\n");
      }

      else
      {
        v30 = *(a2 + 24);
        snprintf(a3, a4, "%s %s\n");
      }
    }

    goto LABEL_55;
  }

  v33 = 0;
  v34 = 0;
  v21 = _libssh2_base64_encode(*a1, *(a2 + 24), *(a2 + 32), &v34);
  v22 = *a1;
  if (!v21)
  {
    v28 = "Unable to allocate memory for base64-encoded host name";
LABEL_47:
    v29 = 4294967290;
    return _libssh2_error(v22, v29, v28);
  }

  v23 = _libssh2_base64_encode(v22, *(a2 + 48), *(a2 + 56), &v33);
  if (!v23)
  {
    (*(*a1 + 24))(v34);
    v22 = *a1;
    v28 = "Unable to allocate memory for base64-encoded salt";
    goto LABEL_47;
  }

  v24 = &v21[v19 + 7 + v23];
  if (v24 <= a4)
  {
    v25 = *(a2 + 88);
    v26 = *(a2 + 64);
    if (v13 && v25)
    {
      v32 = *(a2 + 64);
      snprintf(a3, a4, "|1|%s|%s %s %s %s\n");
    }

    else
    {
      if (v25)
      {
        v31 = *(a2 + 64);
      }

      else if (!v13)
      {
        snprintf(a3, a4, "|1|%s|%s %s\n");
        goto LABEL_54;
      }

      snprintf(a3, a4, "|1|%s|%s %s %s\n");
    }
  }

LABEL_54:
  (*(*a1 + 24))(v34);
  (*(*a1 + 24))(v33);
LABEL_55:
  *a5 = v24 - 1;
  if (v24 > a4)
  {
    v22 = *a1;
    v28 = "Known-host write buffer too small";
    v29 = 4294967258;
    return _libssh2_error(v22, v29, v28);
  }

  return 0;
}

uint64_t libssh2_knownhost_writefile(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v1;
  v21 = *MEMORY[0x277D85DE8];
  if (v4 != 1)
  {
    v12 = *v1;
    v13 = *MEMORY[0x277D85DE8];
    v14 = "Unsupported type of known-host information store";
    v15 = 4294967263;
LABEL_11:

    return _libssh2_error(v12, v15, v14);
  }

  v5 = fopen(v2, "w");
  if (!v5)
  {
    v12 = *v3;
    v16 = *MEMORY[0x277D85DE8];
    v14 = "Failed to open file";
    v15 = 4294967280;
    goto LABEL_11;
  }

  v6 = v5;
  v7 = _libssh2_list_first((v3 + 1));
  if (v7)
  {
    v8 = v7;
    while (1)
    {
      __nitems = 0;
      v9 = knownhost_writeline(v3, v8, __ptr, 0xFFCuLL, &__nitems, 1);
      if (v9)
      {
        break;
      }

      v10 = __nitems;
      if (fwrite(__ptr, 1uLL, __nitems, v6) != v10)
      {
        v9 = _libssh2_error(*v3, 4294967280, "Write failed");
        break;
      }

      v8 = _libssh2_list_next(v8);
      if (!v8)
      {
        goto LABEL_8;
      }
    }

    v11 = v9;
  }

  else
  {
LABEL_8:
    v11 = 0;
  }

  fclose(v6);
  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t libssh2_knownhost_get(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3 && *(a3 + 8))
  {
    v4 = _libssh2_list_next(*(a3 + 8));
    if (!v4)
    {
      return 1;
    }
  }

  else
  {
    v4 = _libssh2_list_first(a1 + 8);
    if (!v4)
    {
      return 1;
    }
  }

  *(v4 + 104) = -559035650;
  *(v4 + 112) = v4;
  v6 = *(v4 + 44);
  if (v6 == 1)
  {
    v7 = *(v4 + 24);
  }

  else
  {
    v7 = 0;
  }

  v5 = 0;
  v8 = *(v4 + 64);
  *(v4 + 120) = v7;
  *(v4 + 128) = v8;
  *(v4 + 136) = v6;
  *a2 = v4 + 104;
  return v5;
}

uint64_t _libssh2_pem_parse(uint64_t a1, const char *a2, const char *a3, const char *a4, uint64_t a5, uint64_t *a6, rsize_t *a7)
{
  v58[15] = *MEMORY[0x277D85DE8];
  do
  {
    __s1[0] = 0;
    if (readline(__s1))
    {
      goto LABEL_5;
    }
  }

  while (strcmp(__s1, a2));
  if (readline(__s1))
  {
LABEL_5:
    v13 = 0xFFFFFFFFLL;
    goto LABEL_6;
  }

  if (a4 && (*__s1 == 0x7079542D636F7250 ? (v16 = v58[0] == 0x434E452C34203A65) : (v16 = 0), v16 ? (v17 = *(v58 + 6) == 0x444554505952434ELL) : (v17 = 0), v17))
  {
    if (readline(__s1))
    {
      goto LABEL_5;
    }

    v25 = libssh2_crypt_methods();
    v26 = *v25;
    if (!*v25)
    {
      goto LABEL_5;
    }

    v49 = 0;
    v27 = v25 + 1;
    do
    {
      v28 = v26[1];
      if (*v28)
      {
        v29 = strlen(v26[1]);
        if (!memcmp(__s1, v28, v29))
        {
          v30 = *(v26 + 5);
          __memcpy_chk();
          v49 = v26;
        }
      }

      v31 = *v27++;
      v26 = v31;
    }

    while (v31);
    if (!v49)
    {
      goto LABEL_5;
    }

    if (*(v49 + 5) >= 1)
    {
      v32 = 0;
      v33 = v56;
      do
      {
        v34 = *(v33 - 1);
        if (v34 <= 64)
        {
          v35 = 64;
        }

        else
        {
          v35 = 9;
        }

        v36 = v35 + v34;
        v37 = *v33;
        if (v37 <= 64)
        {
          v38 = -48;
        }

        else
        {
          v38 = -55;
        }

        v56[v32++ - 1] = (v38 + v37) | (16 * v36);
        v33 += 2;
      }

      while (v32 < *(v49 + 5));
    }

    if (readline(__s1))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v49 = 0;
  }

  v48 = a6;
  v18 = 0;
  v19 = 0;
  do
  {
    if (__s1[0])
    {
      v20 = strlen(__s1);
      v21 = v20;
      v22 = v20 + v19;
      if (v18)
      {
        v23 = (*(a1 + 16))(v18, v22, a1);
      }

      else
      {
        v23 = (*(a1 + 8))(v20 + v19, a1);
      }

      v24 = v23;
      if (!v23)
      {
        _libssh2_error(a1, 4294967290, "Unable to allocate memory for PEM parsing");
        goto LABEL_48;
      }

      memcpy((v23 + v19), __s1, v21);
      v18 = v24;
      v19 = v22;
    }

    __s1[0] = 0;
    if (readline(__s1))
    {
      goto LABEL_48;
    }
  }

  while (strcmp(__s1, a3));
  if (!v18)
  {
    goto LABEL_5;
  }

  if (_libssh2_base64_decode(a1, v48, a7, v18, v19))
  {
    v13 = 0xFFFFFFFFLL;
    goto LABEL_50;
  }

  v39 = v49;
  if (!v49)
  {
    v13 = 0;
    goto LABEL_50;
  }

  v51 = 0;
  v52 = 0;
  v40 = *(v49 + 4);
  ctx = 0;
  if (!_libssh2_md5_init(&ctx))
  {
    goto LABEL_48;
  }

  v41 = strlen(a4);
  EVP_DigestUpdate(ctx, a4, v41);
  EVP_DigestUpdate(ctx, &d, 8uLL);
  EVP_DigestFinal(ctx, md, 0);
  EVP_MD_CTX_free(ctx);
  if (*(v49 + 6) < 17)
  {
    goto LABEL_56;
  }

  if (!_libssh2_md5_init(&ctx))
  {
LABEL_48:
    v13 = 0xFFFFFFFFLL;
    goto LABEL_49;
  }

  EVP_DigestUpdate(ctx, md, 0x10uLL);
  v42 = strlen(a4);
  EVP_DigestUpdate(ctx, a4, v42);
  EVP_DigestUpdate(ctx, &d, 8uLL);
  EVP_DigestFinal(ctx, v54, 0);
  EVP_MD_CTX_free(ctx);
  v39 = v49;
LABEL_56:
  if ((v39[5])(a1, v39, &d, &v52 + 4, md, &v52, 0, &v51))
  {
    memset_s(md, 0x20uLL, 0, 0x20uLL);
    (*(a1 + 24))(v48, a1);
    goto LABEL_48;
  }

  if (v52)
  {
    memset_s(md, 0x20uLL, 0, 0x20uLL);
  }

  v43 = *a7;
  if (*a7 % v40)
  {
    memset_s(md, 0x20uLL, 0, 0x20uLL);
    (v49[7])(a1, &v51);
    memset_s(*v48, *a7, 0, *a7);
    (*(a1 + 24))(*v48, a1);
    goto LABEL_48;
  }

  LODWORD(v44) = v43 - v40;
  if (v43 - v40 < 0)
  {
LABEL_70:
    v47 = *(*v48 + v43 - 1);
    bzero((*v48 + v43 - v47), v47);
    *a7 -= v47;
    memset_s(md, 0x20uLL, 0, 0x20uLL);
    (v49[7])(a1, &v51);
    v13 = 0;
  }

  else
  {
    v45 = 0;
    while (1)
    {
      v46 = v45 ? 2 * (v45 == v44) : 1;
      if ((v49[6])(a1, *v48 + v45, v40, &v51, v46))
      {
        break;
      }

      v45 += v40;
      v43 = *a7;
      v44 = *a7 - v40;
      if (v45 > v44)
      {
        goto LABEL_70;
      }
    }

    memset_s(md, 0x20uLL, 0, 0x20uLL);
    (v49[7])(a1, &v51);
    memset_s(*v48, *a7, 0, *a7);
    (*(a1 + 24))(*v48, a1);
    v13 = 4294967284;
  }

LABEL_49:
  if (!v18)
  {
    goto LABEL_6;
  }

LABEL_50:
  memset_s(v18, v19, 0, v19);
  (*(a1 + 24))(v18, a1);
LABEL_6:
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

char *__cdecl readline(const char *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!fgets(a1, 128, v1))
  {
    return 0xFFFFFFFFLL;
  }

  if (!*a1)
  {
    return 0;
  }

  v3 = strlen(a1);
  if (v3)
  {
    if (a1[v3 - 1] == 10)
    {
      a1[v3 - 1] = 0;
      if (!*a1)
      {
        return 0;
      }
    }
  }

  result = strlen(a1);
  if (!result)
  {
    return result;
  }

  v5 = &result[a1];
  if (result[a1 - 1] != 13)
  {
    return 0;
  }

  result = 0;
  *(v5 - 1) = 0;
  return result;
}

uint64_t _libssh2_pem_parse_memory(uint64_t a1, const char *a2, const char *a3, uint64_t a4, unint64_t a5, uint64_t *a6, void *a7)
{
  v25 = *MEMORY[0x277D85DE8];
  v23 = 0;
  do
  {
    __s1[0] = 0;
    readline_memory(__s1, a4, a5, &v23);
  }

  while (strcmp(__s1, a2));
  v14 = 0;
  v15 = 0;
  __s1[0] = 0;
LABEL_7:
  v18 = v15;
  while (1)
  {
    __s1[0] = 0;
    readline_memory(__s1, a4, a5, &v23);
    if (!strcmp(__s1, a3))
    {
      break;
    }

    v15 = v18;
    if (!__s1[0])
    {
      goto LABEL_7;
    }

    v16 = strlen(__s1);
    v17 = v16;
    v18 += v16;
    if (v14)
    {
      v19 = (*(a1 + 16))(v14, v18, a1);
      if (!v19)
      {
        _libssh2_error(a1, 4294967290, "Unable to allocate memory for PEM parsing");
        v20 = 0xFFFFFFFFLL;
        v18 = v15;
LABEL_17:
        memset_s(v14, v18, 0, v18);
        (*(a1 + 24))(v14, a1);
        goto LABEL_20;
      }
    }

    else
    {
      v19 = (*(a1 + 8))(v16 + v15, a1);
      if (!v19)
      {
        _libssh2_error(a1, 4294967290, "Unable to allocate memory for PEM parsing");
        goto LABEL_19;
      }
    }

    v14 = v19;
    memcpy((v19 + v15), __s1, v17);
  }

  if (v14)
  {
    if (_libssh2_base64_decode(a1, a6, a7, v14, v18))
    {
      v20 = 0xFFFFFFFFLL;
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_17;
  }

LABEL_19:
  v20 = 0xFFFFFFFFLL;
LABEL_20:
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

_BYTE *readline_memory(_BYTE *__dst, uint64_t a2, unint64_t a3, unint64_t *a4)
{
  v5 = __dst;
  v6 = *a4;
  if (*a4 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v7 = 0;
    v8 = (a2 + v6);
    v9 = v6 + 1;
    while (1)
    {
      v10 = v8[v7];
      if (v10 == 10 || v10 == 13)
      {
        break;
      }

      v12 = v7 + 1;
      if (v7 <= 0x7D)
      {
        v13 = v9 + v7++;
        if (v13 < a3)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    v12 = v7;
    if (!v7)
    {
      goto LABEL_13;
    }

LABEL_12:
    __dst = memcpy(__dst, v8, v12);
    *a4 += v12;
  }

LABEL_13:
  v5[v12] = 0;
  ++*a4;
  return __dst;
}

uint64_t _libssh2_openssh_pem_parse(uint64_t a1, const char *a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  do
  {
    __s1[0] = 0;
    if (readline(__s1))
    {
      goto LABEL_5;
    }
  }

  while (strcmp(__s1, "-----BEGIN OPENSSH PRIVATE KEY-----"));
  if (readline(__s1))
  {
LABEL_5:
    v7 = 0xFFFFFFFFLL;
    goto LABEL_6;
  }

  v10 = 0;
  v11 = 0;
  do
  {
    if (__s1[0])
    {
      v12 = strlen(__s1);
      v13 = v12;
      v14 = v12 + v11;
      if (v10)
      {
        v15 = (*(a1 + 16))(v10, v14, a1);
      }

      else
      {
        v15 = (*(a1 + 8))(v12 + v11, a1);
      }

      v10 = v15;
      if (!v15)
      {
        _libssh2_error(a1, 4294967290, "Unable to allocate memory for PEM parsing");
        goto LABEL_5;
      }

      memcpy((v15 + v11), __s1, v13);
      v11 = v14;
    }

    __s1[0] = 0;
    if (readline(__s1))
    {
      goto LABEL_5;
    }
  }

  while (strcmp(__s1, "-----END OPENSSH PRIVATE KEY-----"));
  if (!v10)
  {
    goto LABEL_5;
  }

  v7 = _libssh2_openssh_pem_parse_data(a1, a2, v10, v11, a4);
  memset_s(v10, v11, 0, v11);
  (*(a1 + 24))(v10, a1);
LABEL_6:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t _libssh2_openssh_pem_parse_data(uint64_t a1, const char *a2, unsigned __int8 *a3, uint64_t a4, void *a5)
{
  v5 = a5;
  v56 = 0;
  __s1 = 0;
  v54 = 0;
  v55 = 0;
  v53 = 0;
  v50 = 0;
  __n = 0;
  __s = 0;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  if (a5)
  {
    *a5 = 0;
  }

  v64 = 0;
  v65 = 0;
  v66 = 0;
  v62 = 0;
  v63 = 0;
  v61 = 0;
  v59 = 0;
  v60 = 0;
  v58 = 0;
  v52 = 0;
  v51 = 0;
  if (_libssh2_base64_decode(a1, &__s, &__n, a3, a4))
  {
    v5 = 0xFFFFFFFFLL;
    goto LABEL_18;
  }

  v8 = __s;
  v64 = __s;
  v65 = __s;
  v66 = __n;
  if (__n <= 0xD)
  {
    v9 = "key too short";
LABEL_17:
    v5 = _libssh2_error(a1, 4294967282, v9);
    goto LABEL_18;
  }

  if (strncmp(__s, "openssh-key-v1", 0xEuLL))
  {
    v9 = "key auth magic mismatch";
    goto LABEL_17;
  }

  v65 = v8 + 15;
  if (_libssh2_get_string(&v64, &__s1, &v46) || !v46)
  {
    v9 = "ciphername is missing";
    goto LABEL_17;
  }

  if (_libssh2_get_string(&v64, &v56, &v46) || !v46)
  {
    v9 = "kdfname is missing";
    goto LABEL_17;
  }

  if (_libssh2_get_string(&v64, &v55, &v47))
  {
    v9 = "kdf is missing";
    goto LABEL_17;
  }

  v58 = v55;
  v59 = v55;
  v60 = v47;
  if ((!a2 || !*a2) && strcmp(__s1, "none"))
  {
    v5 = 4294967248;
    goto LABEL_18;
  }

  v11 = v56;
  if (!strcmp(v56, "none"))
  {
    if (strcmp(__s1, "none"))
    {
      v9 = "invalid format";
      goto LABEL_17;
    }
  }

  else if (strcmp(v11, "bcrypt"))
  {
    v9 = "unknown cipher";
    goto LABEL_17;
  }

  if (_libssh2_get_u32(&v64, &v52 + 1) || HIDWORD(v52) != 1)
  {
    v9 = "Multiple keys are unsupported";
    goto LABEL_17;
  }

  if (_libssh2_get_string(&v64, &v54, &v46) || !v46)
  {
    v9 = "Invalid private key; expect embedded public key";
    goto LABEL_17;
  }

  if (_libssh2_get_string(&v64, &v54, &v46) || !v46)
  {
    v9 = "Private key data not found";
    goto LABEL_17;
  }

  v61 = v54;
  v62 = v54;
  v63 = v46;
  if (__s1 && strcmp(__s1, "none"))
  {
    v12 = libssh2_crypt_methods();
    v13 = *v12;
    if (!*v12)
    {
      goto LABEL_63;
    }

    v14 = 0;
    v15 = __s1;
    v16 = (v12 + 1);
    do
    {
      if (**v13)
      {
        v17 = strlen(*v13);
        if (!memcmp(v15, *v13, v17))
        {
          v14 = v13;
        }
      }

      v18 = *v16++;
      v13 = v18;
    }

    while (v18);
    if (!v14)
    {
LABEL_63:
      v9 = "No supported cipher found";
      goto LABEL_17;
    }

    v19 = v14;
    v43 = 0;
    v44 = 0;
    v20 = v14[5];
    v21 = v14[6];
    v22 = v20 + v21;
    v23 = _libssh2_calloc(a1, v20 + v21);
    if (!v23)
    {
      v5 = _libssh2_error(a1, 4294967282, "Could not alloc key");
LABEL_67:
      v28 = 0;
LABEL_68:
      v29 = 0;
      goto LABEL_69;
    }

    v24 = strcmp(v56, "bcrypt");
    if (!a2 || v24)
    {
      v25 = "bcrypted without passphrase";
      v26 = a1;
      v27 = 4294967248;
      goto LABEL_66;
    }

    if (_libssh2_get_string(&v58, &v53, &v45) || _libssh2_get_u32(&v58, &v50))
    {
      v25 = "kdf contains unexpected values";
      v26 = a1;
      v27 = 4294967282;
LABEL_66:
      v5 = _libssh2_error(v26, v27, v25);
      (*(a1 + 24))(v23, a1);
      goto LABEL_67;
    }

    v37 = strlen(a2);
    if ((_libssh2_bcrypt_pbkdf(a2, v37, v53, v45, v23, v22, v50) & 0x80000000) != 0)
    {
      v25 = "invalid format";
      v26 = a1;
      v27 = 4294967284;
      goto LABEL_66;
    }

    v42 = v14[4];
    v28 = _libssh2_calloc(a1, v21);
    if (!v28)
    {
      v5 = _libssh2_error(a1, 4294967282, "Could not alloc key part");
      goto LABEL_68;
    }

    v29 = _libssh2_calloc(a1, v20);
    if (v29)
    {
      memcpy(v28, v23, v21);
      memcpy(v29, &v23[v21], v20);
      if (!(*(v19 + 5))(a1, v19, v29, &v44 + 4, v28, &v44, 0, &v43))
      {
        if (!(v63 % v42))
        {
          v38 = 0;
          v41 = v63 - v42;
          v40 = v61;
          while (1)
          {
            v39 = v38 ? 2 * (v41 == v38) : 1;
            if ((*(v19 + 6))(a1, &v40[v38], v42, &v43, v39))
            {
              break;
            }

            v38 += v42;
            if (v41 < v38)
            {
              (*(v19 + 7))(a1, &v43);
              goto LABEL_55;
            }
          }
        }

        (*(v19 + 7))(a1, &v43);
      }

      v5 = 4294967284;
      goto LABEL_69;
    }

    v34 = "Could not alloc iv part";
    v35 = a1;
    v36 = 4294967282;
LABEL_76:
    v5 = _libssh2_error(v35, v36, v34);
    goto LABEL_69;
  }

  v23 = 0;
  v28 = 0;
  v29 = 0;
  v21 = 0;
  v20 = 0;
  v22 = 0;
LABEL_55:
  if (_libssh2_get_u32(&v61, &v52) || _libssh2_get_u32(&v61, &v51) || v52 != v51)
  {
    _libssh2_error(a1, 4294967282, "Private key unpack failed (correct password?)");
    v5 = 4294967248;
  }

  else if (v5)
  {
    v30 = _libssh2_string_buf_new(a1);
    if (v30)
    {
      v31 = v30;
      v32 = _libssh2_calloc(a1, v63);
      *v31 = v32;
      if (v32)
      {
        memcpy(v32, v61, v63);
        v33 = v63;
        v31[1] = *v31 + v62 - v61;
        v31[2] = v33;
        *v5 = v31;
        v5 = 0;
      }

      else
      {
        v5 = _libssh2_error(a1, 4294967290, "Unable to allocate memory for decrypted struct");
        _libssh2_string_buf_free(a1, v31);
      }

      goto LABEL_69;
    }

    v34 = "Unable to allocate memory for decrypted struct";
    v35 = a1;
    v36 = 4294967290;
    goto LABEL_76;
  }

LABEL_69:
  if (v23)
  {
    memset_s(v23, v22, 0, v22);
    (*(a1 + 24))(v23, a1);
  }

  if (v28)
  {
    memset_s(v28, v21, 0, v21);
    (*(a1 + 24))(v28, a1);
  }

  if (v29)
  {
    memset_s(v29, v20, 0, v20);
    (*(a1 + 24))(v29, a1);
  }

LABEL_18:
  if (__s)
  {
    memset_s(__s, __n, 0, __n);
    (*(a1 + 24))(__s, a1);
  }

  return v5;
}

uint64_t _libssh2_openssh_pem_parse_memory(uint64_t a1, const char *a2, uint64_t a3, unint64_t a4, void *a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v26 = 0;
  if (a3 && a4)
  {
    do
    {
      __s1[0] = 0;
      if (v26 >= a4)
      {
        v19 = "Error parsing PEM: OpenSSH header not found";
        goto LABEL_19;
      }

      readline_memory(__s1, a3, a4, &v26);
    }

    while (strcmp(__s1, "-----BEGIN OPENSSH PRIVATE KEY-----"));
    v25 = a5;
    v10 = 0;
    v11 = 0;
    __s1[0] = 0;
    while (1)
    {
      __s1[0] = 0;
      if (v26 >= a4)
      {
        v21 = "Error parsing PEM: offset out of bounds";
        v22 = a1;
        v23 = 4294967282;
LABEL_24:
        v20 = _libssh2_error(v22, v23, v21);
        if (!v10)
        {
          goto LABEL_26;
        }

LABEL_25:
        memset_s(v10, v11, 0, v11);
        (*(a1 + 24))(v10, a1);
        goto LABEL_26;
      }

      readline_memory(__s1, a3, a4, &v26);
      if (!strcmp(__s1, "-----END OPENSSH PRIVATE KEY-----"))
      {
        break;
      }

      if (__s1[0])
      {
        v12 = strlen(__s1);
        v13 = v12;
        v14 = v12 + v11;
        if (v10)
        {
          v15 = (*(a1 + 16))(v10, v14, a1);
        }

        else
        {
          v15 = (*(a1 + 8))(v12 + v11, a1);
        }

        v16 = v15;
        if (!v15)
        {
          v21 = "Unable to allocate memory for PEM parsing";
          v22 = a1;
          v23 = 4294967290;
          goto LABEL_24;
        }

        memcpy((v15 + v11), __s1, v13);
        v10 = v16;
        v11 = v14;
      }
    }

    if (v10)
    {
      v20 = _libssh2_openssh_pem_parse_data(a1, a2, v10, v11, v25);
      goto LABEL_25;
    }

    v19 = "Error parsing PEM: base 64 data missing";
LABEL_19:
    v20 = _libssh2_error(a1, 4294967282, v19);
LABEL_26:
    v24 = *MEMORY[0x277D85DE8];
    return v20;
  }

  else
  {
    v17 = *MEMORY[0x277D85DE8];

    return _libssh2_error(a1, 4294967282, "Error parsing PEM: filedata missing");
  }
}

uint64_t _libssh2_pem_decode_sequence(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *a1;
  if (**a1 != 48)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = 0;
  v6 = v4 + 1;
  *a1 = v4 + 1;
  v7 = v2 - 1;
  *a2 = v2 - 1;
  v8 = read_asn1_length(v4 + 1, v2 - 1, &v11);
  if ((v8 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  if (v11 + v8 != v7)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a1 = &v6[v9];
  *a2 = v7 - v9;
  return result;
}

uint64_t read_asn1_length(unsigned __int8 *a1, unint64_t a2, unint64_t *a3)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *a1;
  v4 = *a1;
  *a3 = v4;
  if (v3 < 0)
  {
    v7 = v4 & 0x7F;
    v4 = a1[1];
    *a3 = v4;
    v5 = v7 + 1;
    if (v7 + 1 <= a2)
    {
      if (v7 < 2)
      {
        goto LABEL_4;
      }

      *a3 = v4 << 8;
      v8 = a1[2] | (v4 << 8);
      *a3 = v8;
      v4 = v8;
      if (v7 == 2)
      {
        goto LABEL_4;
      }
    }

    return 0xFFFFFFFFLL;
  }

  v5 = 1;
LABEL_4:
  if (v4 + v5 > a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

uint64_t _libssh2_pem_decode_integer(void *a1, uint64_t *a2, void *a3, _DWORD *a4)
{
  v4 = *a2;
  if (!*a2)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *a1;
  if (**a1 != 2)
  {
    return 0xFFFFFFFFLL;
  }

  v20 = 0;
  v10 = v6 + 1;
  *a1 = v6 + 1;
  v11 = v4 - 1;
  *a2 = v4 - 1;
  v12 = read_asn1_length(v6 + 1, v4 - 1, &v20);
  if ((v12 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = v12;
  v14 = v20;
  v15 = v20 + v12;
  v16 = v11 >= v15;
  v17 = v11 - v15;
  if (!v16)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v19 = &v10[v13];
  *a1 = v19;
  *a3 = v19;
  *a4 = v14;
  *a1 += v14;
  *a2 = v17;
  return result;
}

_DWORD *libssh2_agent_init(uint64_t a1)
{
  v2 = _libssh2_calloc(a1, 0x68uLL);
  v3 = v2;
  if (v2)
  {
    v2[2] = -1;
    *v2 = a1;
    *(v2 + 12) = 0;
    _libssh2_list_init(v2 + 10);
  }

  else
  {
    _libssh2_error(a1, 4294967290, "Unable to allocate space for agent connection");
  }

  return v3;
}

uint64_t libssh2_agent_list_identities(uint64_t a1)
{
  *(a1 + 24) = 0u;
  v2 = (a1 + 24);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  agent_free_identities(a1);
  v30 = 11;
  if (!*(a1 + 56))
  {
    *(a1 + 24) = &v30;
    *(a1 + 32) = 1;
    *(a1 + 64) = 0;
    *(a1 + 56) = 1;
LABEL_7:
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = (*(v5 + 8))(a1, v2);
      if (v6)
      {
        v7 = v6;
        (*(*a1 + 24))(*(a1 + 40));
        *(a1 + 40) = 0;
        return v7;
      }

      *(a1 + 24) = 0;
      v11 = *(a1 + 48);
      if (v11 < 1)
      {
LABEL_26:
        v12 = 4294967254;
      }

      else
      {
        v12 = 4294967254;
        v13 = v11 - 5;
        if (v11 >= 5)
        {
          v14 = *(a1 + 40);
          if (*v14 == 12)
          {
            v15 = _libssh2_ntohu32((v14 + 1));
            if (v15)
            {
              v16 = v15;
              v17 = (v14 + 5);
              while (1)
              {
                if (v13 < 4)
                {
                  goto LABEL_26;
                }

                v18 = (*(*a1 + 8))(64);
                if (!v18)
                {
                  v12 = 4294967290;
                  goto LABEL_35;
                }

                v19 = v18;
                v20 = _libssh2_ntohu32(v17);
                *(v19 + 48) = v20;
                v21 = v13 - 4 - v20;
                if (v21 < 0)
                {
                  break;
                }

                v22 = (*(*a1 + 8))();
                *(v19 + 40) = v22;
                if (!v22)
                {
                  v12 = 4294967290;
                  goto LABEL_34;
                }

                memcpy(v22, v17 + 1, *(v19 + 48));
                v23 = v21 >= 4;
                v24 = v21 - 4;
                if (!v23 || (v25 = (v17 + *(v19 + 48) + 4), v26 = _libssh2_ntohu32(v25), v24 < v26))
                {
                  v12 = 4294967254;
                  goto LABEL_33;
                }

                v27 = v26;
                v28 = (*(*a1 + 8))(v26 + 1);
                *(v19 + 56) = v28;
                if (!v28)
                {
                  v12 = 4294967290;
LABEL_33:
                  (*(*a1 + 24))(*(v19 + 40));
LABEL_34:
                  (*(*a1 + 24))(v19);
                  goto LABEL_35;
                }

                --v16;
                v29 = (v25 + 1);
                v13 = v24 - v27;
                *(v28 + v27) = 0;
                memcpy(*(v19 + 56), v29, v27);
                v17 = &v29[v27];
                _libssh2_list_add((a1 + 80), v19);
                v12 = 0;
                if (!v16)
                {
                  goto LABEL_35;
                }
              }

              v12 = 4294967254;
              goto LABEL_34;
            }

            v12 = 0;
          }
        }
      }

LABEL_35:
      (*(*a1 + 24))(*(a1 + 40));
      *(a1 + 40) = 0;
      v8 = *a1;
      v9 = "agent list id failed";
      v10 = v12;
    }

    else
    {
      v8 = *a1;
      v9 = "agent not connected";
      v10 = 4294967257;
    }

    return _libssh2_error(v8, v10, v9);
  }

  if (**v2 == 11)
  {
    goto LABEL_7;
  }

  v3 = *a1;

  return _libssh2_error(v3, 4294967257, "illegal agent request");
}

void *agent_free_identities(void *a1)
{
  v2 = _libssh2_list_first((a1 + 10));
  if (v2)
  {
    v3 = v2;
    do
    {
      v4 = _libssh2_list_next(v3);
      (*(*a1 + 24))(*(v3 + 40));
      (*(*a1 + 24))(*(v3 + 56));
      (*(*a1 + 24))(v3);
      v3 = v4;
    }

    while (v4);
  }

  return _libssh2_list_init(a1 + 10);
}

uint64_t libssh2_agent_get_identity(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3 || !*(a3 + 8))
  {
    v4 = _libssh2_list_first(a1 + 80);
    if (!v4)
    {
      return 1;
    }

LABEL_6:
    v5 = 0;
    *(v4 + 24) = 1004469970;
    *(v4 + 32) = v4;
    *a2 = v4 + 24;
    return v5;
  }

  v4 = _libssh2_list_next(*(a3 + 8));
  if (v4)
  {
    goto LABEL_6;
  }

  return 1;
}

uint64_t libssh2_agent_userauth(uint64_t *a1, const char *a2, uint64_t a3)
{
  v9 = a1;
  if (!*(*a1 + 72216))
  {
    *(a1 + 7) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 3) = 0u;
    a1[9] = *(a3 + 8);
  }

  v6 = time(0);
  do
  {
    v7 = strlen(a2);
    result = _libssh2_userauth_publickey(*a1, a2, v7, *(a3 + 16), *(a3 + 24), agent_sign, &v9);
    if (result != -37)
    {
      break;
    }

    if (!*(*a1 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(*a1, v6);
  }

  while (!result);
  return result;
}

uint64_t agent_sign(uint64_t a1, void *a2, size_t *a3, const void *a4, size_t a5, uint64_t *a6)
{
  v9 = a1 + 69632;
  v10 = *a6;
  v11 = *(*a6 + 72);
  v12 = *(v11 + 48);
  __src = 0;
  if (*(v10 + 56))
  {
    v13 = *(v10 + 24);
    goto LABEL_24;
  }

  v16 = (*(a1 + 8))(a5 + v12 + 13, a1);
  *(v10 + 24) = v16;
  if (v16)
  {
    __src = v16 + 1;
    *v16 = 13;
    _libssh2_store_str(&__src, *(v11 + 40), *(v11 + 48));
    _libssh2_store_str(&__src, a4, a5);
    v17 = *(v9 + 2632);
    if (v17)
    {
      v18 = 0;
      if (v17 == 12)
      {
        v19 = *(v9 + 2624);
        if (v19)
        {
          if (*v19 == 0x326168732D617372 && *(v19 + 2) == 842085677)
          {
            v18 = 4;
          }

          else
          {
            v21 = *v19;
            v22 = *(v19 + 2);
            v24 = v21 == 0x326168732D617372 && v22 == 909455917;
            v18 = 2 * v24;
          }
        }
      }
    }

    else
    {
      v18 = 0;
    }

    _libssh2_store_u32(&__src, v18);
    v13 = *(v10 + 24);
    *(v10 + 32) = __src - v13;
    *(v10 + 64) = 0;
    *(v10 + 56) = 1;
LABEL_24:
    if (*v13 == 13)
    {
      v26 = *(v10 + 16);
      if (v26)
      {
        v27 = (*(v26 + 8))(v10, v10 + 24);
        if (!v27)
        {
          (*(a1 + 24))(*(v10 + 24), a1);
          *(v10 + 24) = 0;
          v28 = *(v10 + 40);
          v29 = *(v10 + 48);
          __src = v28;
          if (v29 >= 1 && *v28 == 14 && (__src = v28 + 1, v29 >= 5) && (__src = v28 + 5, v29 >= 9) && (v30 = _libssh2_ntohu32((v28 + 5)), __src = __src + 4, v31 = v29 - v30 - 9, v31 >= 0))
          {
            v32 = v30;
            v33 = (*(a1 + 8))(v30, a1);
            if (v33)
            {
              v34 = v33;
              memcpy(v33, __src, v32);
              __src = __src + v32;
              v35 = plain_method(*(v9 + 2624), *(v9 + 2632));
              if ((*(v9 + 2632) == v32 || v35 == v32) && !memcmp(v34, *(v9 + 2624), v32))
              {
                if (v31 >= 4 && (v39 = _libssh2_ntohu32(__src), *a3 = v39, __src = __src + 4, v31 - 4 >= v39))
                {
                  v40 = (*(a1 + 8))();
                  *a2 = v40;
                  if (v40)
                  {
                    memcpy(v40, __src, *a3);
                    v27 = 0;
                  }

                  else
                  {
                    v27 = 4294967290;
                  }
                }

                else
                {
                  v27 = 4294967254;
                }
              }

              else
              {
                v27 = 4294967245;
              }

              (*(a1 + 24))(v34, a1);
            }

            else
            {
              v27 = 4294967290;
            }
          }

          else
          {
            v27 = 4294967254;
          }
        }

        (*(a1 + 24))(*(v10 + 24), a1);
        *(v10 + 24) = 0;
        (*(a1 + 24))(*(v10 + 40), a1);
        *(v10 + 40) = 0;
        *(v10 + 56) = 0;
        v36 = "agent sign failure";
        v37 = a1;
        v38 = v27;
        return _libssh2_error(v37, v38, v36);
      }

      v36 = "agent not connected";
    }

    else
    {
      v36 = "illegal request";
    }

    v37 = a1;
    v38 = 4294967257;
    return _libssh2_error(v37, v38, v36);
  }

  return _libssh2_error(a1, 4294967290, "out of memory");
}

uint64_t libssh2_agent_sign(uint64_t *a1, uint64_t a2, void *a3, size_t *a4, const void *a5, size_t a6, const void *a7, unsigned int a8)
{
  v23 = a1;
  if (!*(*a1 + 72216))
  {
    *(a1 + 7) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 3) = 0u;
    a1[9] = *(a2 + 8);
  }

  if (*(a2 + 24) < 4uLL)
  {
    return 4294967258;
  }

  v16 = _libssh2_ntohu32(*(a2 + 16));
  v17 = *(a2 + 24);
  v18 = v16;
  if (v17 < v16 + 4)
  {
    return 4294967258;
  }

  v20 = *a1;
  *(v20 + 72264) = a8;
  v21 = (*(v20 + 8))();
  *(*a1 + 72256) = v21;
  memcpy(v21, a7, v18);
  v19 = agent_sign(*a1, a3, a4, a5, a6, &v23);
  (*(*a1 + 24))(*(*a1 + 72256));
  *(*a1 + 72256) = 0u;
  return v19;
}

uint64_t libssh2_agent_disconnect(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1 || *(a1 + 8) == -1)
  {
    return 0;
  }

  else
  {
    return (*(v1 + 16))();
  }
}

uint64_t libssh2_agent_free(void *a1)
{
  if (*(a1 + 2) != -1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(v2 + 16))(a1);
    }
  }

  if (a1[12])
  {
    (*(*a1 + 24))();
  }

  agent_free_identities(a1);
  v3 = *(*a1 + 24);

  return v3(a1);
}

unint64_t libssh2_agent_set_identity_path(void *a1, char *__s)
{
  result = a1[12];
  if (result)
  {
    result = (*(*a1 + 24))();
    a1[12] = 0;
  }

  if (__s)
  {
    result = strlen(__s);
    if (result <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = result;
      v6 = (*(*a1 + 8))(result + 1);
      result = memcpy(v6, __s, v5);
      *(v6 + v5) = 0;
      a1[12] = v6;
    }
  }

  return result;
}

uint64_t agent_connect_unix(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 96);
  if (v2 || (v2 = getenv("SSH_AUTH_SOCK")) != 0)
  {
    v3 = socket(1, 1, 0);
    *(a1 + 8) = v3;
    if ((v3 & 0x80000000) == 0)
    {
      v4 = v3;
      *&v12.sa_len = 256;
      strncpy(v12.sa_data, v2, 0x68uLL);
      v13 = 0;
      result = connect(v4, &v12, 0x6Au);
      if (result)
      {
        close(*(a1 + 8));
        result = _libssh2_error(*a1, 4294967254, "failed connecting with agent");
      }

      v6 = *MEMORY[0x277D85DE8];
      return result;
    }

    v7 = *a1;
    v8 = *MEMORY[0x277D85DE8];
    v9 = "failed creating socket";
    v10 = 4294967251;
  }

  else
  {
    v7 = *a1;
    v11 = *MEMORY[0x277D85DE8];
    v9 = "no auth sock variable";
    v10 = 4294967257;
  }

  return _libssh2_error(v7, v10, v9);
}

uint64_t agent_transact_unix(unsigned int *a1, uint64_t *a2)
{
  result = 0;
  v5 = *(a2 + 8);
  if (v5 > 2)
  {
    if (v5 != 3)
    {
      if (v5 != 4)
      {
        return result;
      }

      v6 = a2[2];
      goto LABEL_29;
    }

LABEL_22:
    v19 = 0;
    v20 = *a1;
    v21 = *(*a1 + 104);
    v22 = a1[2];
    while (v19 <= 3)
    {
      v23 = v21(v22, &v34 + v19, 4 - v19, 0, v20);
      v19 += v23;
      if (v23 < 0)
      {
        LODWORD(v19) = v23;
        break;
      }
    }

    if ((v19 & 0x80000000) != 0)
    {
      if (v19 != -35)
      {
        v31 = *a1;
        v32 = "agent recv failed";
        v33 = 4294967253;
        return _libssh2_error(v31, v33, v32);
      }

      return 4294967259;
    }

    a2[3] = _libssh2_ntohu32(&v34);
    v24 = (*(*a1 + 8))();
    a2[2] = v24;
    if (!v24)
    {
      return 4294967290;
    }

    v6 = v24;
    *(a2 + 8) = 4;
LABEL_29:
    v25 = 0;
    v26 = *a1;
    v27 = *(*a1 + 104);
    v28 = a1[2];
    v29 = a2[3];
    while (v29 > v25)
    {
      v30 = v27(v28, v6 + v25, v29 - v25, 0, v26);
      v25 += v30;
      if (v30 < 0)
      {
        LODWORD(v25) = v30;
        break;
      }
    }

    if ((v25 & 0x80000000) == 0)
    {
      result = 0;
      *(a2 + 8) = 5;
      return result;
    }

    if (v25 != -35)
    {
      v31 = *a1;
      v32 = "agent recv failed";
LABEL_40:
      v33 = 4294967289;
      return _libssh2_error(v31, v33, v32);
    }

    return 4294967259;
  }

  if (v5 == 1)
  {
    _libssh2_htonu32(&v34, *(a2 + 2));
    v7 = 0;
    v8 = *a1;
    v9 = *(*a1 + 96);
    v10 = a1[2];
    while (v7 <= 3)
    {
      v11 = v9(v10, &v34 + v7, 4 - v7, 0, v8);
      v7 += v11;
      if (v11 < 0)
      {
        LODWORD(v7) = v11;
        break;
      }
    }

    if (v7 == -35)
    {
      return 4294967259;
    }

    if ((v7 & 0x80000000) != 0)
    {
      goto LABEL_39;
    }

    *(a2 + 8) = 2;
LABEL_15:
    v12 = 0;
    v13 = *a1;
    v14 = *(*a1 + 96);
    v15 = a1[2];
    v16 = *a2;
    v17 = a2[1];
    while (v17 > v12)
    {
      v18 = v14(v15, v16 + v12, v17 - v12, 0, v13);
      v12 += v18;
      if (v18 < 0)
      {
        LODWORD(v12) = v18;
        break;
      }
    }

    if (v12 == -35)
    {
      return 4294967259;
    }

    if ((v12 & 0x80000000) == 0)
    {
      *(a2 + 8) = 3;
      goto LABEL_22;
    }

LABEL_39:
    v31 = *a1;
    v32 = "agent send failed";
    goto LABEL_40;
  }

  if (v5 == 2)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t agent_disconnect_unix(uint64_t a1)
{
  if (close(*(a1 + 8)) == -1)
  {
    v3 = *a1;

    return _libssh2_error(v3, 4294967283, "failed closing the agent socket");
  }

  else
  {
    *(a1 + 8) = -1;
    return 0;
  }
}

uint64_t crypt_init(uint64_t a1, uint64_t a2, unsigned __int8 *a3, _DWORD *a4, const unsigned __int8 *a5, _DWORD *a6, int a7, uint64_t *a8)
{
  v16 = (*(a1 + 8))(24, a1);
  if (!v16)
  {
    return 4294967290;
  }

  v17 = v16;
  *v16 = a7;
  v18 = *(a2 + 64);
  *(v16 + 8) = v18;
  result = _libssh2_cipher_init((v16 + 16), v18, a3, a5, a7);
  if (result)
  {
    (*(a1 + 24))(v17, a1);
    return 0xFFFFFFFFLL;
  }

  else
  {
    *a8 = v17;
    *a4 = 1;
    *a6 = 1;
  }

  return result;
}

uint64_t crypt_dtor(uint64_t a1, void *a2)
{
  if (a2 && *a2)
  {
    EVP_CIPHER_CTX_free(*(*a2 + 16));
    (*(a1 + 24))(*a2, a1);
    *a2 = 0;
  }

  return 0;
}

uint64_t crypt_init_arcfour128(uint64_t a1, uint64_t a2, unsigned __int8 *a3, _DWORD *a4, const unsigned __int8 *a5, _DWORD *a6, int a7, uint64_t *a8)
{
  v16 = *MEMORY[0x277D85DE8];
  v10 = crypt_init(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v10)
  {
    v11 = *a8;
    v12 = -1536;
    do
    {
      _libssh2_cipher_crypt((v11 + 16), *(v11 + 8), *v11, v15, *(a2 + 16), 0);
      v12 += 8;
    }

    while (v12);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

double libssh2_scp_recv(uint64_t a1, char *a2, uint64_t a3)
{
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  if (a3)
  {
    v6 = v13;
  }

  else
  {
    v6 = 0;
  }

  v15 = 0uLL;
  v16 = 0uLL;
  v14 = 0uLL;
  memset(v13, 0, sizeof(v13));
  v7 = time(0);
  do
  {
    v8 = scp_recv(a1, a2, v6);
    if (*(a1 + 172))
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 0;
    }
  }

  while (v10 && libssh2_session_last_errno(a1) == -37 && !_libssh2_wait_socket(a1, v7));
  if (a3)
  {
    result = 0.0;
    v11 = v15;
    v12 = v14;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 48) = v11;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 64) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = v12;
    *(a3 + 96) = v18;
    *(a3 + 4) = WORD2(v13[0]);
  }

  return result;
}

uint64_t scp_recv(uint64_t a1, char *__s, uint64_t a3)
{
  v5 = a1 + 69632;
  v6 = *(a1 + 72936);
  if (v6 > 2)
  {
    if (v6 == 4)
    {
      goto LABEL_28;
    }

    if (v6 != 3)
    {
      goto LABEL_8;
    }

    v7 = *(a1 + 73256);
  }

  else
  {
    if (v6)
    {
      if (v6 != 2)
      {
LABEL_8:
        if ((v6 - 5) > 1)
        {
          if (v6 == 7)
          {
            goto LABEL_57;
          }

          if ((v6 & 0xFFFFFFFE) == 8)
          {
            goto LABEL_58;
          }

LABEL_80:
          if (a3)
          {
            *(a3 + 112) = 0u;
            *(a3 + 128) = 0u;
            *(a3 + 80) = 0u;
            *(a3 + 96) = 0u;
            *(a3 + 48) = 0u;
            *(a3 + 64) = 0u;
            *(a3 + 16) = 0u;
            *(a3 + 32) = 0u;
            *a3 = 0u;
            *(a3 + 48) = *(v5 + 3608);
            *(a3 + 32) = *(v5 + 3616);
            *(a3 + 96) = *(v5 + 3600);
            *(a3 + 4) = *(v5 + 3592);
          }

          *(v5 + 3304) = 0;
          return *(v5 + 3624);
        }

        goto LABEL_37;
      }
    }

    else
    {
      *(a1 + 73224) = 0u;
      *(a1 + 73240) = 0u;
      v9 = 3 * strlen(__s);
      v10 = 10;
      if (a3)
      {
        v10 = 11;
      }

      *(v5 + 3320) = v10 + v9;
      v11 = (*(a1 + 8))();
      *(v5 + 3312) = v11;
      if (!v11)
      {
        v17 = "Unable to allocate a command buffer for SCP session";
        v18 = a1;
        v19 = 4294967290;
LABEL_35:
        _libssh2_error(v18, v19, v17);
        return 0;
      }

      v12 = "p";
      if (!a3)
      {
        v12 = "";
      }

      snprintf(v11, *(v5 + 3320), "scp -%sf ", v12);
      v13 = *(v5 + 3312);
      v14 = strlen(v13);
      v15 = v14;
      if (*(a1 + 140))
      {
        v16 = shell_quotearg(__s, &v13[v14], *(v5 + 3320) - v14);
      }

      else
      {
        v16 = strlen(__s);
        memcpy(&v13[v15], __s, v16);
      }

      *(v5 + 3320) = v16 + v15;
      *(v5 + 3304) = 2;
    }

    v7 = _libssh2_channel_open(a1, "session", 7u, 0x200000u, 0x8000u, 0, 0);
    *(v5 + 3624) = v7;
    if (!v7)
    {
      if (libssh2_session_last_errno(a1) != -37)
      {
        (*(a1 + 24))(*(v5 + 3312), a1);
        result = 0;
        *(v5 + 3312) = 0;
        goto LABEL_141;
      }

      v17 = "Would block starting up channel";
      goto LABEL_34;
    }

    *(v5 + 3304) = 3;
  }

  v20 = _libssh2_channel_process_startup(v7, "exec", 4uLL, *(v5 + 3312), *(v5 + 3320));
  if (v20)
  {
    if (v20 != -37)
    {
      (*(a1 + 24))(*(v5 + 3312), a1);
      *(v5 + 3312) = 0;
      goto LABEL_138;
    }

    v17 = "Would block requesting SCP startup";
LABEL_34:
    v18 = a1;
    v19 = 4294967259;
    goto LABEL_35;
  }

  (*(a1 + 24))(*(v5 + 3312), a1);
  *(v5 + 3312) = 0;
  *(v5 + 3328) = 0;
  *(v5 + 3304) = 4;
LABEL_28:
  v21 = _libssh2_channel_write(*(v5 + 3624), 0, (a1 + 72960), 1uLL);
  if (v21 != 1)
  {
    if (v21 != -37)
    {
      goto LABEL_138;
    }

    v17 = "Would block sending initial wakeup";
    goto LABEL_34;
  }

  *(v5 + 3584) = 0;
  *(v5 + 3304) = 5;
LABEL_37:
  if (!a3)
  {
    goto LABEL_57;
  }

  v23 = *(v5 + 3584);
  if (v23 > 0xFF)
  {
    goto LABEL_57;
  }

  v24 = v5 + 3328;
  while (1)
  {
    v25 = *(v5 + 3304);
    if (v25 != 5)
    {
      if (v25 == 6)
      {
        goto LABEL_124;
      }

      goto LABEL_56;
    }

    v26 = _libssh2_channel_read(*(v5 + 3624), 0, v24 + v23, 1uLL);
    v19 = v26;
    if (v26 == -37)
    {
      v17 = "Would block waiting for SCP response";
      v18 = a1;
      goto LABEL_35;
    }

    if ((v26 & 0x80000000) != 0)
    {
LABEL_85:
      v39 = "Failed reading SCP response";
      v40 = a1;
      goto LABEL_137;
    }

    if (!v26)
    {
LABEL_86:
      if (libssh2_channel_eof(*(v5 + 3624)))
      {
        v39 = "Unexpected channel close";
        goto LABEL_136;
      }

      return *(v5 + 3624);
    }

    v27 = *(v5 + 3584);
    v23 = v27 + 1;
    *(v5 + 3584) = v27 + 1;
    if (*(v5 + 3328) != 84)
    {
      v41 = _libssh2_channel_packet_data_len(*(v5 + 3624), 0);
      v42 = (*(a1 + 8))(v41 + 1, a1);
      if (v42)
      {
        v43 = v42;
        _libssh2_channel_read(*(v5 + 3624), 0, v42, v41);
        *(v43 + v41) = 0;
        _libssh2_error(a1, 4294967268, "Failed to recv file");
        (*(a1 + 24))(v43, a1);
        goto LABEL_138;
      }

      v39 = "Failed to get memory ";
      v40 = a1;
      v19 = 4294967290;
LABEL_137:
      _libssh2_error(v40, v19, v39);
      goto LABEL_138;
    }

    if (v23 >= 2)
    {
      v28 = *(v24 + v27);
      if (v28 - 58 <= 0xFFFFFFF5 && (v28 > 0x20 || ((1 << v28) & 0x100002400) == 0))
      {
LABEL_107:
        v39 = "Invalid data in SCP response";
        goto LABEL_136;
      }

      if (v23 >= 9)
      {
        break;
      }
    }

LABEL_56:
    if (v23 >= 0x100)
    {
      goto LABEL_57;
    }
  }

  if (v28 != 10)
  {
    if (v27 == 255)
    {
LABEL_92:
      v39 = "Unterminated response from SCP server";
      goto LABEL_136;
    }

    goto LABEL_56;
  }

  for (i = (a1 + v27 + 72961); ; --i)
  {
    v50 = *(i - 1);
    if (v50 != 13 && v50 != 10)
    {
      break;
    }

    *(v5 + 3584) = v27--;
  }

  *i = 0;
  if (*(v5 + 3584) <= 7uLL)
  {
LABEL_116:
    v39 = "Invalid response from SCP server, too short";
    goto LABEL_136;
  }

  v52 = strchr((a1 + 72961), 32);
  if (!v52 || &v52[-a1 - 72961] <= 0)
  {
    v39 = "Invalid response from SCP server, malformed mtime";
LABEL_136:
    v40 = a1;
    v19 = 4294967268;
    goto LABEL_137;
  }

  *v52 = 0;
  v53 = v52 + 1;
  *(v5 + 3608) = strtol((a1 + 72961), 0, 10);
  v54 = strchr(v53, 32);
  if (!v54 || v54 - v53 <= 0)
  {
    v39 = "Invalid response from SCP server, malformed mtime.usec";
    goto LABEL_136;
  }

  v55 = v54 + 1;
  v56 = strchr(v54 + 1, 32);
  if (!v56 || v56 - v55 <= 0)
  {
    goto LABEL_134;
  }

  *v56 = 0;
  *(v5 + 3616) = strtol(v55, 0, 10);
  *(v5 + 3328) = 0;
  *(v5 + 3304) = 6;
LABEL_124:
  v57 = _libssh2_channel_write(*(v5 + 3624), 0, (v5 + 3328), 1uLL);
  if (v57 != 1)
  {
    if (v57 != -37)
    {
      goto LABEL_138;
    }

    v17 = "Would block waiting to send SCP ACK";
    goto LABEL_34;
  }

LABEL_57:
  *(v5 + 3584) = 0;
  *(v5 + 3304) = 8;
LABEL_58:
  v30 = *(v5 + 3584);
  if (v30 > 0xFF)
  {
    goto LABEL_80;
  }

  v31 = v5 + 3328;
  v32 = "Would block waiting for SCP response";
  while (2)
  {
    __endptr = 0;
    v33 = *(v5 + 3304);
    if (v33 != 8)
    {
      if (v33 == 9)
      {
        goto LABEL_143;
      }

      goto LABEL_79;
    }

    v34 = _libssh2_channel_read(*(v5 + 3624), 0, v31 + v30, 1uLL);
    v19 = v34;
    if (v34 == -37)
    {
      goto LABEL_147;
    }

    if ((v34 & 0x80000000) != 0)
    {
      goto LABEL_85;
    }

    if (!v34)
    {
      goto LABEL_86;
    }

    v35 = *(v5 + 3584);
    v30 = v35 + 1;
    *(v5 + 3584) = v35 + 1;
    if (*(v5 + 3328) != 67)
    {
      v39 = "Invalid response from SCP server";
      goto LABEL_136;
    }

    if (v30 < 2)
    {
      goto LABEL_79;
    }

    v36 = *(v31 + v35);
    if (v36 != 10 && v36 != 13 && v36 <= 0x1F)
    {
      goto LABEL_107;
    }

    if (v30 < 7)
    {
      goto LABEL_79;
    }

    if (v36 != 10)
    {
      if (v35 == 255)
      {
        goto LABEL_92;
      }

LABEL_79:
      if (v30 >= 0x100)
      {
        goto LABEL_80;
      }

      continue;
    }

    break;
  }

  for (j = (a1 + v35 + 72961); ; --j)
  {
    v45 = *(j - 1);
    if (v45 != 13 && v45 != 10)
    {
      break;
    }

    *(v5 + 3584) = v35--;
  }

  *j = 0;
  if (*(v5 + 3584) <= 5uLL)
  {
    goto LABEL_116;
  }

  v47 = strchr((a1 + 72961), 32);
  if (!v47 || &v47[-a1 - 72961] <= 0)
  {
    v39 = "Invalid response from SCP server, malformed mode";
    goto LABEL_136;
  }

  *v47 = 0;
  v48 = v47 + 1;
  *(v5 + 3592) = strtol((a1 + 72961), &__endptr, 8);
  if (__endptr && *__endptr)
  {
    v39 = "Invalid response from SCP server, invalid mode";
    goto LABEL_136;
  }

  v58 = strchr(v48, 32);
  if (!v58 || v58 - v48 <= 0)
  {
LABEL_134:
    v39 = "Invalid response from SCP server, too short or malformed";
    goto LABEL_136;
  }

  *v58 = 0;
  *(v5 + 3600) = strtoll(v48, &__endptr, 10);
  if (__endptr && *__endptr)
  {
    v39 = "Invalid response from SCP server, invalid size";
    goto LABEL_136;
  }

  *(v5 + 3328) = 0;
  *(v5 + 3304) = 9;
LABEL_143:
  v61 = _libssh2_channel_write(*(v5 + 3624), 0, (v5 + 3328), 1uLL);
  if (v61 == -37)
  {
    v32 = "Would block sending SCP ACK";
LABEL_147:
    v18 = a1;
    v19 = 4294967259;
    v17 = v32;
    goto LABEL_35;
  }

  if (v61 == 1)
  {
    goto LABEL_80;
  }

LABEL_138:
  v59 = *(a1 + 616);
  v60 = *(a1 + 608);
    ;
  }

  result = 0;
  *(a1 + 616) = v59;
  *(a1 + 608) = v60;
  *(v5 + 3624) = 0;
LABEL_141:
  *(v5 + 3304) = 0;
  return result;
}

uint64_t libssh2_scp_recv2(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = time(0);
  while (1)
  {
    result = scp_recv(a1, a2, a3);
    if (!*(a1 + 172) || result != 0)
    {
      break;
    }

    if (libssh2_session_last_errno(a1) != -37 || _libssh2_wait_socket(a1, v6))
    {
      return 0;
    }
  }

  return result;
}

uint64_t libssh2_scp_send_ex(uint64_t a1, char *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = time(0);
  while (1)
  {
    result = scp_send(a1, a2, a3, a4, a5, a6);
    if (!*(a1 + 172) || result != 0)
    {
      break;
    }

    if (libssh2_session_last_errno(a1) != -37 || _libssh2_wait_socket(a1, v12))
    {
      return 0;
    }
  }

  return result;
}

uint64_t scp_send(uint64_t a1, char *__s, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a1 + 69632;
  v13 = *(a1 + 73264);
  if (v13 > 2)
  {
    if (v13 == 4)
    {
      goto LABEL_38;
    }

    if (v13 != 3)
    {
      goto LABEL_8;
    }

    v14 = *(a1 + 73552);
LABEL_34:
    v26 = _libssh2_channel_process_startup(v14, "exec", 4uLL, *(v12 + 3640), *(v12 + 3648));
    if (v26)
    {
      if (v26 != -37)
      {
        (*(a1 + 24))(*(v12 + 3640), a1);
        *(v12 + 3640) = 0;
        v29 = "Unknown error while getting error string";
LABEL_85:
        v33 = a1;
        v25 = 4294967268;
        goto LABEL_86;
      }

      v23 = "Would block requesting SCP startup";
      goto LABEL_73;
    }

    (*(a1 + 24))(*(v12 + 3640), a1);
    *(v12 + 3640) = 0;
    *(v12 + 3632) = 4;
LABEL_38:
    v27 = _libssh2_channel_read(*(v12 + 3920), 0, v12 + 3656, 1uLL);
    v25 = v27;
    if (v27 == -37)
    {
      v23 = "Would block waiting for response from remote";
LABEL_40:
      v24 = a1;
      goto LABEL_74;
    }

    if ((v27 & 0x80000000) != 0)
    {
      goto LABEL_61;
    }

    if (!v27)
    {
      goto LABEL_83;
    }

    if (*(v12 + 3656))
    {
      goto LABEL_82;
    }

    if (a6 | a5)
    {
      *(v12 + 3912) = snprintf((v12 + 3656), 0x100uLL, "T%ld 0 %ld 0\n", a5, a6);
      *(v12 + 3632) = 5;
LABEL_46:
      v28 = _libssh2_channel_write(*(v12 + 3920), 0, (a1 + 73288), *(v12 + 3912));
      if (v28 != -37)
      {
        if (v28 != *(v12 + 3912))
        {
          v29 = "Unable to send time data for SCP file";
          goto LABEL_94;
        }

        *(v12 + 3632) = 6;
        goto LABEL_55;
      }

      v23 = "Would block sending time data for SCP file";
LABEL_73:
      v24 = a1;
      v25 = 4294967259;
      goto LABEL_74;
    }

LABEL_62:
    *(v12 + 3632) = 7;
    goto LABEL_63;
  }

  if (!v13)
  {
    v15 = 3 * strlen(__s);
    v16 = 10;
    if (a6 | a5)
    {
      v16 = 11;
    }

    *(v12 + 3648) = v16 + v15;
    v17 = (*(a1 + 8))();
    *(v12 + 3640) = v17;
    if (!v17)
    {
      v23 = "Unable to allocate a command buffer for SCP session";
      v24 = a1;
      v25 = 4294967290;
LABEL_74:
      _libssh2_error(v24, v25, v23);
      return 0;
    }

    v18 = "p";
    if (!(a6 | a5))
    {
      v18 = "";
    }

    snprintf(v17, *(v12 + 3648), "scp -%st ", v18);
    v19 = *(v12 + 3640);
    v20 = strlen(v19);
    v21 = v20;
    if (*(a1 + 140))
    {
      v22 = shell_quotearg(__s, &v19[v20], *(v12 + 3648) - v20);
    }

    else
    {
      v22 = strlen(__s);
      memcpy(&v19[v21], __s, v22);
    }

    *(v12 + 3648) = v22 + v21;
    *(v12 + 3632) = 2;
    goto LABEL_32;
  }

  if (v13 == 2)
  {
LABEL_32:
    v14 = _libssh2_channel_open(a1, "session", 7u, 0x200000u, 0x8000u, 0, 0);
    *(v12 + 3920) = v14;
    if (!v14)
    {
      if (libssh2_session_last_errno(a1) != -37)
      {
        (*(a1 + 24))(*(v12 + 3640), a1);
        result = 0;
        *(v12 + 3640) = 0;
LABEL_89:
        *(v12 + 3632) = 0;
        return result;
      }

      v23 = "Would block starting up channel";
      goto LABEL_73;
    }

    *(v12 + 3632) = 3;
    goto LABEL_34;
  }

LABEL_8:
  if (a6 | a5)
  {
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        goto LABEL_63;
      }

      goto LABEL_23;
    }

    if (v13 != 5)
    {
      if (v13 != 6)
      {
        goto LABEL_90;
      }

LABEL_55:
      v32 = _libssh2_channel_read(*(v12 + 3920), 0, v12 + 3656, 1uLL);
      v25 = v32;
      if (v32 == -37)
      {
        v23 = "Would block waiting for response";
        goto LABEL_40;
      }

      if ((v32 & 0x80000000) == 0)
      {
        if (!v32)
        {
          goto LABEL_83;
        }

        if (*(v12 + 3656))
        {
          v29 = "Invalid SCP ACK response";
          goto LABEL_85;
        }

        goto LABEL_62;
      }

LABEL_61:
      v29 = "SCP failure";
      v33 = a1;
      goto LABEL_86;
    }

    goto LABEL_46;
  }

  if (v13 > 7)
  {
LABEL_23:
    if (v13 == 8)
    {
      v31 = *(a1 + 73544);
      goto LABEL_67;
    }

    if (v13 == 9)
    {
      goto LABEL_71;
    }

LABEL_90:
    *(v12 + 3632) = 0;
    return *(v12 + 3920);
  }

  if (v13 == 5)
  {
    goto LABEL_62;
  }

  if (v13 != 7)
  {
    goto LABEL_90;
  }

LABEL_63:
  v34 = strrchr(__s, 47);
  if (v34)
  {
    v35 = v34 + 1;
  }

  else
  {
    v35 = __s;
  }

  v31 = snprintf((a1 + 73288), 0x100uLL, "C0%o %lld %s\n", a3, a4, v35);
  *(v12 + 3912) = v31;
  *(v12 + 3632) = 8;
LABEL_67:
  v36 = _libssh2_channel_write(*(v12 + 3920), 0, (a1 + 73288), v31);
  if (v36 == -37)
  {
    v23 = "Would block send core file data for SCP file";
    goto LABEL_73;
  }

  if (v36 != *(v12 + 3912))
  {
    v29 = "Unable to send core file data for SCP file";
LABEL_94:
    v33 = a1;
    v25 = 4294967289;
    goto LABEL_86;
  }

  *(v12 + 3632) = 9;
LABEL_71:
  v37 = _libssh2_channel_read(*(v12 + 3920), 0, v12 + 3656, 1uLL);
  if (v37 == -37)
  {
    v23 = "Would block waiting for response";
    goto LABEL_73;
  }

  if (v37 < 0)
  {
LABEL_82:
    v29 = "Invalid ACK response from remote";
    goto LABEL_85;
  }

  if (v37)
  {
    if (*(v12 + 3656))
    {
      v38 = _libssh2_channel_packet_data_len(*(v12 + 3920), 0);
      v39 = (*(a1 + 8))(v38 + 1, a1);
      if (v39)
      {
        v40 = v39;
        if (_libssh2_channel_read(*(v12 + 3920), 0, v39, v38) >= 1)
        {
          *(v40 + v38) = 0;
        }

        (*(a1 + 24))(v40, a1);
        v29 = "failed to send file";
        goto LABEL_85;
      }

      v29 = "failed to get memory";
      v33 = a1;
      v25 = 4294967290;
LABEL_86:
      _libssh2_error(v33, v25, v29);
      v41 = *(a1 + 616);
      v42 = *(a1 + 608);
        ;
      }

      result = 0;
      *(a1 + 616) = v41;
      *(a1 + 608) = v42;
      *(v12 + 3920) = 0;
      goto LABEL_89;
    }

    goto LABEL_90;
  }

LABEL_83:
  if (libssh2_channel_eof(*(v12 + 3920)))
  {
    v29 = "Unexpected channel close";
    goto LABEL_85;
  }

  return *(v12 + 3920);
}

uint64_t libssh2_scp_send64(uint64_t a1, char *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = time(0);
  while (1)
  {
    result = scp_send(a1, a2, a3, a4, a5, a6);
    if (!*(a1 + 172) || result != 0)
    {
      break;
    }

    if (libssh2_session_last_errno(a1) != -37 || _libssh2_wait_socket(a1, v12))
    {
      return 0;
    }
  }

  return result;
}

char *shell_quotearg(_BYTE *a1, _WORD *a2, uint64_t a3)
{
  v3 = a2 + a3;
  v4 = a2 + a3 - 1;
  v5 = *a1;
  if (*a1)
  {
    v6 = v4 > a2;
  }

  else
  {
    v6 = 0;
  }

  v7 = a2;
  if (!v6)
  {
    goto LABEL_5;
  }

  v9 = 0;
  v10 = a1 + 1;
  v7 = a2;
  do
  {
    if (v5 != 33)
    {
      if (v5 == 39)
      {
        if (v9 == 1)
        {
          v11 = v7 + 1;
          if ((v7 + 1) >= v3)
          {
            return 0;
          }

          *v7 = 8743;
          goto LABEL_24;
        }

        if (!v9)
        {
          v11 = v7 + 1;
          if (v7 + 1 >= v3)
          {
            return 0;
          }

          *v7 = 34;
LABEL_24:
          v9 = 2;
          goto LABEL_35;
        }

        v9 = 2;
        goto LABEL_34;
      }

      if (v9 == 2)
      {
        v11 = v7 + 1;
        if ((v7 + 1) >= v3)
        {
          return 0;
        }

        *v7 = 10018;
      }

      else
      {
        if (v9)
        {
          v9 = 1;
LABEL_34:
          v11 = v7;
          goto LABEL_35;
        }

        v11 = v7 + 1;
        if (v7 + 1 >= v3)
        {
          return 0;
        }

        *v7 = 39;
      }

      v9 = 1;
      goto LABEL_35;
    }

    if (v9 == 2)
    {
      v11 = v7 + 1;
      if ((v7 + 1) >= v3)
      {
        return 0;
      }

      v9 = 0;
      *v7 = 23586;
    }

    else if (v9 == 1)
    {
      v11 = v7 + 1;
      if ((v7 + 1) >= v3)
      {
        return 0;
      }

      v9 = 0;
      *v7 = 23591;
    }

    else
    {
      v11 = v7 + 1;
      if (v7 + 1 >= v3)
      {
        return 0;
      }

      v9 = 0;
      *v7 = 92;
    }

LABEL_35:
    v7 = v11 + 1;
    if ((v11 + 1) >= v3)
    {
      return 0;
    }

    *v11 = *(v10 - 1);
    v5 = *v10;
    if (!*v10)
    {
      break;
    }

    ++v10;
  }

  while (v7 < v4);
  if (v9 == 1)
  {
    v12 = v11 + 2;
    if ((v11 + 2) >= v3)
    {
      return 0;
    }

    v13 = 39;
LABEL_44:
    *v7 = v13;
    v7 = v12;
    goto LABEL_5;
  }

  if (v9 != 2)
  {
LABEL_5:
    if (v7 + 1 >= v3)
    {
      return 0;
    }

    *v7 = 0;
    return (v7 - a2);
  }

  v12 = v11 + 2;
  if ((v11 + 2) < v3)
  {
    v13 = 34;
    goto LABEL_44;
  }

  return 0;
}

uint64_t _libssh2_openssl_random(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 >> 31)
  {
    return 0xFFFFFFFFLL;
  }

  if (RAND_bytes(a1, a2) == 1)
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t _libssh2_rsa_new(uint64_t *a1, const unsigned __int8 *a2, int a3, const unsigned __int8 *a4, int a5, BIGNUM *a6, int a7, const unsigned __int8 *a8, int a9, const unsigned __int8 *a10, int a11, const unsigned __int8 *a12, int a13, const unsigned __int8 *a14, int a15, const unsigned __int8 *a16, int a17)
{
  v25 = BN_new();
  BN_bin2bn(a2, a3, v25);
  v26 = BN_new();
  BN_bin2bn(a4, a5, v26);
  if (a6)
  {
    v27 = BN_new();
    BN_bin2bn(a6, a7, v27);
    v28 = BN_new();
    BN_bin2bn(a8, a9, v28);
    v29 = BN_new();
    BN_bin2bn(a10, a11, v29);
    v30 = BN_new();
    BN_bin2bn(a12, a13, v30);
    a6 = BN_new();
    BN_bin2bn(a14, a15, a6);
    v31 = BN_new();
    BN_bin2bn(a16, a17, v31);
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
  }

  v32 = RSA_new();
  *a1 = v32;
  RSA_set0_key(v32, v26, v25, v27);
  RSA_set0_factors(*a1, v28, v29);
  RSA_set0_crt_params(*a1, v30, a6, v31);
  return 0;
}

uint64_t _libssh2_rsa_sha2_verify(RSA *a1, size_t size, unsigned __int8 *a3, unsigned int a4, const void *a5, size_t a6)
{
  v12 = malloc_type_malloc(size, 0xDF6D7E8DuLL);
  if (!v12)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = v12;
  if (size == 64)
  {
    v18 = _libssh2_sha512(a5, a6, v12);
    v15 = 674;
    if (v18)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (size != 32)
    {
      if (size == 20)
      {
        v14 = _libssh2_sha1(a5, a6, v12);
        v15 = 64;
        if (!v14)
        {
          goto LABEL_11;
        }
      }

      goto LABEL_8;
    }

    v16 = _libssh2_sha256(a5, a6, v12);
    v15 = 672;
    if (v16)
    {
LABEL_8:
      free(v13);
      return 0xFFFFFFFFLL;
    }
  }

LABEL_11:
  v19 = RSA_verify(v15, v13, size, a3, a4, a1);
  free(v13);
  if (v19 == 1)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t _libssh2_sha1(const void *a1, size_t a2, unsigned __int8 *a3)
{
  v6 = EVP_MD_CTX_new();
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  digestbyname = EVP_get_digestbyname("sha1");
  if (EVP_DigestInit(v7, digestbyname))
  {
    EVP_DigestUpdate(v7, a1, a2);
    EVP_DigestFinal(v7, a3, 0);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  EVP_MD_CTX_free(v7);
  return v9;
}

uint64_t _libssh2_sha256(const void *a1, size_t a2, unsigned __int8 *a3)
{
  v6 = EVP_MD_CTX_new();
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  digestbyname = EVP_get_digestbyname("sha256");
  if (EVP_DigestInit(v7, digestbyname))
  {
    EVP_DigestUpdate(v7, a1, a2);
    EVP_DigestFinal(v7, a3, 0);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  EVP_MD_CTX_free(v7);
  return v9;
}

uint64_t _libssh2_sha512(const void *a1, size_t a2, unsigned __int8 *a3)
{
  v6 = EVP_MD_CTX_new();
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  digestbyname = EVP_get_digestbyname("sha512");
  if (EVP_DigestInit(v7, digestbyname))
  {
    EVP_DigestUpdate(v7, a1, a2);
    EVP_DigestFinal(v7, a3, 0);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  EVP_MD_CTX_free(v7);
  return v9;
}

uint64_t _libssh2_dsa_new(uint64_t *a1, const unsigned __int8 *a2, int a3, const unsigned __int8 *a4, int a5, const unsigned __int8 *a6, int a7, const unsigned __int8 *a8, int a9, const unsigned __int8 *a10, uint64_t a11)
{
  v18 = BN_new();
  BN_bin2bn(a2, a3, v18);
  v19 = BN_new();
  BN_bin2bn(a4, a5, v19);
  v20 = BN_new();
  BN_bin2bn(a6, a7, v20);
  v21 = BN_new();
  BN_bin2bn(a8, a9, v21);
  if (a11)
  {
    v22 = BN_new();
    BN_bin2bn(a10, a11, v22);
  }

  else
  {
    v22 = 0;
  }

  v23 = DSA_new();
  *a1 = v23;
  DSA_set0_pqg(v23, v18, v19, v20);
  DSA_set0_key(*a1, v21, v22);
  return 0;
}

uint64_t _libssh2_dsa_sha1_verify(DSA *a1, const unsigned __int8 *a2, const void *a3, size_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = BN_new();
  BN_bin2bn(a2, 20, v8);
  v9 = BN_new();
  BN_bin2bn(a2 + 20, 20, v9);
  v10 = DSA_SIG_new();
  DSA_SIG_set0(&v10->r, v8, v9);
  if (_libssh2_sha1(a3, a4, dgst))
  {
    v11 = 0xFFFFFFFFLL;
  }

  else if (DSA_do_verify(dgst, 20, v10, a1) == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0xFFFFFFFFLL;
  }

  DSA_SIG_free(v10);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t _libssh2_ecdsa_get_curve_type(const EC_KEY *a1)
{
  v1 = EC_KEY_get0_group(a1);

  return EC_GROUP_get_curve_name(v1);
}

uint64_t _libssh2_ecdsa_curve_type_from_name(const char *a1, int *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (strlen(a1) != 19)
  {
    return 0xFFFFFFFFLL;
  }

  result = strcmp(a1, "ecdsa-sha2-nistp256");
  if (!result)
  {
    v8 = 415;
    goto LABEL_17;
  }

  result = strcmp(a1, "ecdsa-sha2-nistp384");
  if (!result)
  {
    v8 = 715;
LABEL_17:
    v7 = 1;
    if (!a2)
    {
      return result;
    }

    goto LABEL_18;
  }

  v5 = strcmp(a1, "ecdsa-sha2-nistp521");
  v6 = v5 == 0;
  v7 = v5 == 0;
  if (v5)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  if (v6)
  {
    v8 = 716;
  }

  else
  {
    v8 = 0;
  }

  if (a2)
  {
LABEL_18:
    if (v7)
    {
      *a2 = v8;
    }
  }

  return result;
}

uint64_t _libssh2_ecdsa_curve_name_with_octal_new(EC_KEY **a1, const unsigned __int8 *a2, size_t a3, int nid)
{
  v7 = EC_KEY_new_by_curve_name(nid);
  if (v7)
  {
    v8 = v7;
    v9 = EC_KEY_get0_group(v7);
    v10 = EC_POINT_new(v9);
    EC_POINT_oct2point(v9, v10, a2, a3, 0);
    v11 = EC_KEY_set_public_key(v8, v10);
    if (v10)
    {
      EC_POINT_free(v10);
    }

    if (a1)
    {
      *a1 = v8;
    }
  }

  else
  {
    v11 = 0;
  }

  if (v11 == 1)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t _libssh2_ecdsa_verify(const EC_KEY *a1, const unsigned __int8 *a2, int a3, const unsigned __int8 *a4, int a5, const void *a6, size_t a7)
{
  v24 = *MEMORY[0x277D85DE8];
  v13 = EC_KEY_get0_group(a1);
  curve_name = EC_GROUP_get_curve_name(v13);
  v15 = ECDSA_SIG_new();
  v16 = BN_new();
  v17 = BN_new();
  BN_bin2bn(a2, a3, v16);
  BN_bin2bn(a4, a5, v17);
  ECDSA_SIG_set0(&v15->r, v16, v17);
  switch(curve_name)
  {
    case 716:
      _libssh2_sha512(a6, a7, dgst);
      v18 = 64;
LABEL_7:
      v19 = ECDSA_do_verify(dgst, v18, v15, a1);
      if (!v15)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    case 715:
      _libssh2_sha384(a6, a7, dgst);
      v18 = 48;
      goto LABEL_7;
    case 415:
      _libssh2_sha256(a6, a7, dgst);
      v18 = 32;
      goto LABEL_7;
  }

  v19 = 0;
  if (v15)
  {
LABEL_8:
    ECDSA_SIG_free(v15);
  }

LABEL_9:
  if (v19 == 1)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _libssh2_sha384(const void *a1, size_t a2, unsigned __int8 *a3)
{
  v6 = EVP_MD_CTX_new();
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  digestbyname = EVP_get_digestbyname("sha384");
  if (EVP_DigestInit(v7, digestbyname))
  {
    EVP_DigestUpdate(v7, a1, a2);
    EVP_DigestFinal(v7, a3, 0);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  EVP_MD_CTX_free(v7);
  return v9;
}

BOOL _libssh2_cipher_init(EVP_CIPHER_CTX **a1, uint64_t (*a2)(void), unsigned __int8 *a3, const unsigned __int8 *a4, int a5)
{
  v10 = EVP_CIPHER_CTX_new();
  *a1 = v10;
  v11 = a2();
  v12 = EVP_CipherInit(v10, v11, a4, a3, a5);
  result = v12 == 0;
  if (a2 == EVP_aes_128_gcm || a2 == EVP_aes_256_gcm)
  {
    v14 = EVP_CIPHER_CTX_ctrl(*a1, 18, -1, a3);
    return !v12 || v14 == 0;
  }

  return result;
}

BOOL _libssh2_cipher_crypt(EVP_CIPHER_CTX **a1, void *(*a2)(), int a3, const unsigned __int8 *a4, unint64_t a5, int a6)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a2 == EVP_aes_128_gcm || a2 == EVP_aes_256_gcm;
  v7 = v6;
  if (v6)
  {
    v8 = 16;
  }

  else
  {
    v8 = 0;
  }

  v9 = v7 & a6;
  if ((v7 & a6) != 0)
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  if ((a6 & 2) != 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  if (a5 >= 0x21)
  {
    _libssh2_cipher_crypt_cold_2();
  }

  v13 = v10 | v11;
  v14 = a5 - (v10 | v11);
  if ((v14 & 0x80000000) != 0)
  {
    _libssh2_cipher_crypt_cold_1();
  }

  v15 = a6;
  if (a6)
  {
    if (!v7)
    {
      v18 = 1;
      goto LABEL_29;
    }

    v18 = EVP_CIPHER_CTX_ctrl(*a1, 19, 1, ptr);
    if (v9)
    {
      v18 = EVP_Cipher(*a1, 0, a4, 4u);
    }
  }

  else
  {
    v18 = 1;
  }

  v19 = v7 ^ 1;
  if (a3)
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0 && (v15 & 2) != 0)
  {
    v18 = EVP_CIPHER_CTX_ctrl(*a1, 17, v8, &a4[a5 - v8]);
  }

LABEL_29:
  if (a5 != v13)
  {
    v18 = EVP_Cipher(*a1, &ptr[v10 + 1], &a4[v10], v14);
  }

  if (v18 >= 1)
  {
    if ((v15 & 2) == 0)
    {
      goto LABEL_38;
    }

    if (EVP_Cipher(*a1, 0, 0, 0) < 0)
    {
      v21 = 1;
      goto LABEL_41;
    }

    v20 = v7 ^ 1;
    if (!a3)
    {
      v20 = 1;
    }

    if (v20)
    {
LABEL_38:
      v21 = 0;
    }

    else
    {
      v21 = EVP_CIPHER_CTX_ctrl(*a1, 16, v8, &a4[a5 - v8]) == 0;
    }

LABEL_41:
    memcpy(&a4[v10], &ptr[v10 + 1], v14);
    goto LABEL_42;
  }

  v21 = 1;
LABEL_42:
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t _libssh2_openssl_crypto_init()
{
  OPENSSL_add_all_algorithms_noconf();
  OpenSSL_add_all_ciphers();
  OpenSSL_add_all_digests();
  ENGINE_load_builtin_engines();

  return ENGINE_register_all_complete();
}

uint64_t _libssh2_rsa_new_private_frommemory(EVP_PKEY **a1, uint64_t a2, void *a3, unint64_t a4, const char *a5)
{
  _libssh2_init_if_needed();
  result = read_private_key_from_memory(a1, PEM_read_bio_RSAPrivateKey, a3, a4, a5);
  if (result)
  {
    return _libssh2_pub_priv_openssh_keyfilememory(a2, a1, "ssh-rsa", 0, 0, 0, 0, a3, a4, a5);
  }

  return result;
}

uint64_t read_private_key_from_memory(void *a1, uint64_t (*a2)(BIO *, void, void, uint64_t), void *buf, int len, uint64_t a5)
{
  *a1 = 0;
  v8 = BIO_new_mem_buf(buf, len);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  *a1 = a2(v8, 0, passphrase_cb, a5);
  BIO_free(v9);
  if (*a1)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t _libssh2_rsa_new_private(rsa_st **a1, uint64_t a2, char *a3, const char *a4)
{
  _libssh2_init_if_needed();
  if (!read_private_key_from_file(a1, PEM_read_bio_RSAPrivateKey, a3, a4))
  {
    return 0;
  }

  v15 = 0;
  __s2 = 0;
  if (!a2)
  {
    v11 = "Session is required";
    v12 = 0;
LABEL_11:
    v13 = 4294967282;
LABEL_13:
    _libssh2_error(v12, v13, v11);
    return 0xFFFFFFFFLL;
  }

  _libssh2_init_if_needed();
  v8 = fopen(a3, "r");
  if (!v8)
  {
    v11 = "Unable to open OpenSSH RSA private key file";
    v12 = a2;
    v13 = 4294967280;
    goto LABEL_13;
  }

  v9 = v8;
  v10 = _libssh2_openssh_pem_parse(a2, a4, v8, &v15);
  fclose(v9);
  if (v10)
  {
    return v10;
  }

  if (_libssh2_get_string(v15, &__s2, 0) || !__s2)
  {
    v11 = "Public key type in decrypted key data not found";
    v12 = a2;
    goto LABEL_11;
  }

  if (!strcmp("ssh-rsa", __s2))
  {
    v10 = gen_publickey_from_rsa_openssh_priv_data(a2, v15, 0, 0, 0, 0, a1);
  }

  else
  {
    v10 = 0xFFFFFFFFLL;
  }

  if (v15)
  {
    _libssh2_string_buf_free(a2, v15);
  }

  return v10;
}

uint64_t read_private_key_from_file(void *a1, uint64_t (*a2)(BIO *, void, void, uint64_t), char *filename, uint64_t a4)
{
  *a1 = 0;
  v7 = BIO_new_file(filename, "r");
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  *a1 = a2(v7, 0, passphrase_cb, a4);
  BIO_free(v8);
  if (*a1)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t _libssh2_dsa_new_private_frommemory(EVP_PKEY **a1, uint64_t a2, void *a3, unint64_t a4, const char *a5)
{
  _libssh2_init_if_needed();
  result = read_private_key_from_memory(a1, PEM_read_bio_DSAPrivateKey, a3, a4, a5);
  if (result)
  {
    return _libssh2_pub_priv_openssh_keyfilememory(a2, a1, "ssh-dsa", 0, 0, 0, 0, a3, a4, a5);
  }

  return result;
}

uint64_t _libssh2_dsa_new_private(DSA **a1, uint64_t a2, char *a3, const char *a4)
{
  _libssh2_init_if_needed();
  if (!read_private_key_from_file(a1, PEM_read_bio_DSAPrivateKey, a3, a4))
  {
    return 0;
  }

  v15 = 0;
  __s2 = 0;
  if (!a2)
  {
    v11 = "Session is required";
    v12 = 0;
LABEL_11:
    v13 = 4294967282;
LABEL_13:
    _libssh2_error(v12, v13, v11);
    return 0xFFFFFFFFLL;
  }

  _libssh2_init_if_needed();
  v8 = fopen(a3, "r");
  if (!v8)
  {
    v11 = "Unable to open OpenSSH DSA private key file";
    v12 = a2;
    v13 = 4294967280;
    goto LABEL_13;
  }

  v9 = v8;
  v10 = _libssh2_openssh_pem_parse(a2, a4, v8, &v15);
  fclose(v9);
  if (v10)
  {
    return v10;
  }

  if (_libssh2_get_string(v15, &__s2, 0) || !__s2)
  {
    v11 = "Public key type in decrypted key data not found";
    v12 = a2;
    goto LABEL_11;
  }

  if (!strcmp("ssh-dss", __s2))
  {
    v10 = gen_publickey_from_dsa_openssh_priv_data(a2, v15, 0, 0, 0, 0, a1);
  }

  else
  {
    v10 = 0xFFFFFFFFLL;
  }

  if (v15)
  {
    _libssh2_string_buf_free(a2, v15);
  }

  return v10;
}

uint64_t _libssh2_ecdsa_new_private_frommemory(EVP_PKEY **a1, uint64_t a2, void *a3, unint64_t a4, const char *a5)
{
  _libssh2_init_if_needed();
  result = read_private_key_from_memory(a1, PEM_read_bio_ECPrivateKey, a3, a4, a5);
  if (result)
  {
    return _libssh2_pub_priv_openssh_keyfilememory(a2, a1, "ssh-ecdsa", 0, 0, 0, 0, a3, a4, a5);
  }

  return result;
}

uint64_t _libssh2_sk_pub_openssh_keyfilememory(uint64_t a1, EVP_PKEY **a2, char *__s, const char **a4, size_t *a5, void *a6, uint64_t *a7, _DWORD *a8, _BYTE *a9, void **a10, void *a11, size_t *a12, uint64_t a13, unint64_t a14, const char *a15)
{
  v28 = 0;
  __s2 = 0;
  if (a2)
  {
    *a2 = 0;
  }

  if (!a1)
  {
    v19 = "Session is required";
    v20 = 0;
    goto LABEL_13;
  }

  if (__s && strlen(__s) <= 6)
  {
    v19 = "type is invalid";
    v20 = a1;
LABEL_13:

    return _libssh2_error(v20, 4294967282, v19);
  }

  _libssh2_init_if_needed();
  v21 = _libssh2_openssh_pem_parse_memory(a1, a15, a13, a14, &v28);
  if (!v21)
  {
    if (_libssh2_get_string(v28, &__s2, 0))
    {
      return _libssh2_error(a1, 4294967282, "Public key type in decrypted key data not found");
    }

    v22 = __s2;
    if (!__s2)
    {
      return _libssh2_error(a1, 4294967282, "Public key type in decrypted key data not found");
    }

    else
    {
      if (!strcmp("sk-ssh-ed25519@openssh.com", __s2) && ((*a8 = 6, !__s) || !strcmp("sk-ssh-ed25519@openssh.com", __s)))
      {
        v21 = gen_publickey_from_sk_ed25519_openssh_priv_data(a1, v28, a4, a5, a6, a7, a9, a10, a11, a12, a2);
        v22 = __s2;
      }

      else
      {
        v21 = 4294967280;
      }

      if (!strcmp("sk-ecdsa-sha2-nistp256@openssh.com", v22))
      {
        *a8 = 3;
        v21 = gen_publickey_from_sk_ecdsa_openssh_priv_data(a1, v28, a4, a5, a6, a7, a9, a10, a11, a12, a2);
      }

      if (v21 == -16)
      {
        v21 = _libssh2_error(a1, 4294967280, "Unable to extract public key from private key file: invalid/unrecognized private key file format");
      }

      if (v28)
      {
        _libssh2_string_buf_free(a1, v28);
      }
    }
  }

  return v21;
}

uint64_t _libssh2_curve25519_new(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  pkey = 0;
  v6 = EVP_PKEY_CTX_new_id(950, 0);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  if (EVP_PKEY_keygen_init(v6) != 1 || EVP_PKEY_keygen(v7, &pkey) != 1)
  {
    v8 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_8:
    if (!a2)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      goto LABEL_15;
    }

    v9 = (*(a1 + 8))(32, a1);
    if (v9)
    {
      v8 = 0;
      v10 = 0xFFFFFFFFLL;
      if (EVP_PKEY_get_raw_public_key(pkey) == 1)
      {
        v8 = 0;
        v10 = 0;
        *a2 = v9;
        v9 = 0;
      }

      goto LABEL_15;
    }

    v8 = 0;
    goto LABEL_14;
  }

  v8 = (*(a1 + 8))(32, a1);
  if (!v8)
  {
LABEL_13:
    v9 = 0;
LABEL_14:
    v10 = 0xFFFFFFFFLL;
    goto LABEL_15;
  }

  v9 = 0;
  v10 = 0xFFFFFFFFLL;
  if (EVP_PKEY_get_raw_private_key(pkey) == 1)
  {
    *a3 = v8;
    goto LABEL_8;
  }

LABEL_15:
  EVP_PKEY_CTX_free(v7);
  if (pkey)
  {
    EVP_PKEY_free(pkey);
  }

  if (v8)
  {
    (*(a1 + 24))(v8, a1);
  }

  if (v9)
  {
    (*(a1 + 24))(v9, a1);
  }

  return v10;
}

uint64_t _libssh2_ed25519_new_private(EVP_PKEY **a1, uint64_t a2, const char *a3, const char *a4)
{
  pkey = 0;
  v17 = 0;
  if (!a2)
  {
    v12 = "Session is required";
    v13 = 0;
LABEL_9:
    v14 = 4294967282;
LABEL_11:
    _libssh2_error(v13, v14, v12);
    return 0xFFFFFFFFLL;
  }

  _libssh2_init_if_needed();
  v8 = fopen(a3, "r");
  if (!v8)
  {
    v12 = "Unable to open ED25519 private key file";
    v13 = a2;
    v14 = 4294967280;
    goto LABEL_11;
  }

  v9 = v8;
  __s2 = 0;
  v10 = _libssh2_openssh_pem_parse(a2, a4, v8, &v17);
  fclose(v9);
  if (v10)
  {
    return v10;
  }

  if (_libssh2_get_string(v17, &__s2, 0) || !__s2)
  {
    v12 = "Public key type in decrypted key data not found";
    v13 = a2;
    goto LABEL_9;
  }

  v11 = !strcmp("ssh-ed25519", __s2) && gen_publickey_from_ed25519_openssh_priv_data(a2, v17, 0, 0, 0, 0, &pkey) == 0;
  if (v17)
  {
    _libssh2_string_buf_free(a2, v17);
  }

  if (!v11)
  {
    return 0xFFFFFFFFLL;
  }

  if (a1)
  {
    v10 = 0;
    *a1 = pkey;
  }

  else
  {
    if (pkey)
    {
      EVP_PKEY_free(pkey);
    }

    return 0;
  }

  return v10;
}

uint64_t gen_publickey_from_ed25519_openssh_priv_data(uint64_t a1, void *a2, uint64_t *a3, void *a4, void *a5, void *a6, EVP_PKEY **a7)
{
  v31 = 0;
  *v32 = 0;
  v29 = 0;
  v30 = 0;
  if (_libssh2_get_string(a2, v32, &v29) || v29 != 32)
  {
    v17 = "Wrong public key length";
LABEL_13:
    _libssh2_error(a1, 4294967282, v17);
    return 0xFFFFFFFFLL;
  }

  if (_libssh2_get_string(a2, &v31, &v29) || v29 != 64)
  {
    v17 = "Wrong private key length";
    goto LABEL_13;
  }

  v14 = EVP_PKEY_new_raw_private_key(952, 0, v31, 32);
  if (_libssh2_get_string(a2, &v30, &v29))
  {
    v15 = "Unable to read comment";
    goto LABEL_7;
  }

  if (v29)
  {
    v19 = _libssh2_calloc(a1, v29 + 1);
    if (v19)
    {
      v20 = v19;
      memcpy(v19, v30, v29);
      v20[v29] = 0;
      (*(a1 + 24))(v20, a1);
    }
  }

  v22 = a2[1];
  v21 = a2[2];
  if (v22 < *a2 + v21)
  {
    v23 = v21 + *a2 - v22;
    v24 = v22 + 1;
    v25 = 1;
    while (v25 == *(v24 - 1))
    {
      ++v25;
      a2[1] = v24++;
      if (!--v23)
      {
        goto LABEL_22;
      }
    }

    v15 = "Wrong padding";
LABEL_7:
    _libssh2_error(a1, 4294967282, v15);
    v16 = 0;
    if (!v14)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_22:
  v16 = (*(a1 + 8))(11, a1);
  if (!v16 || (v26 = _libssh2_calloc(a1, 0x33uLL)) == 0)
  {
    _libssh2_error(a1, 4294967290, "Unable to allocate memory for ED25519 key");
    if (!v14)
    {
LABEL_9:
      if (v16)
      {
        (*(a1 + 24))(v16, a1);
      }

      return 0xFFFFFFFFLL;
    }

LABEL_8:
    EVP_PKEY_free(v14);
    goto LABEL_9;
  }

  v27 = v26;
  v28 = v26;
  _libssh2_store_str(&v28, "ssh-ed25519", 0xBuLL);
  _libssh2_store_str(&v28, *v32, 0x20uLL);
  *(v16 + 7) = 959526197;
  *v16 = *"ssh-ed25519";
  if (a3)
  {
    *a3 = v16;
  }

  else
  {
    (*(a1 + 24))(v16, a1);
  }

  if (a4)
  {
    *a4 = 11;
  }

  if (a5)
  {
    *a5 = v27;
  }

  else
  {
    (*(a1 + 24))(v27, a1);
  }

  if (a6)
  {
    *a6 = 51;
  }

  if (a7)
  {
    result = 0;
    *a7 = v14;
  }

  else
  {
    if (v14)
    {
      EVP_PKEY_free(v14);
    }

    return 0;
  }

  return result;
}

uint64_t _libssh2_ed25519_new_private_sk(EVP_PKEY **a1, _BYTE *a2, void **a3, void *a4, size_t *a5, uint64_t a6, const char *a7, const char *a8)
{
  pkey = 0;
  v25 = 0;
  if (!a6)
  {
    v20 = "Session is required";
    v21 = 0;
LABEL_9:
    v22 = 4294967282;
LABEL_11:
    _libssh2_error(v21, v22, v20);
    return 0xFFFFFFFFLL;
  }

  _libssh2_init_if_needed();
  v16 = fopen(a7, "r");
  if (!v16)
  {
    v20 = "Unable to open ED25519 SK private key file";
    v21 = a6;
    v22 = 4294967280;
    goto LABEL_11;
  }

  v17 = v16;
  __s2 = 0;
  v18 = _libssh2_openssh_pem_parse(a6, a8, v16, &v25);
  fclose(v17);
  if (v18)
  {
    return v18;
  }

  if (_libssh2_get_string(v25, &__s2, 0) || !__s2)
  {
    v20 = "Public key type in decrypted key data not found";
    v21 = a6;
    goto LABEL_9;
  }

  v19 = !strcmp("sk-ssh-ed25519@openssh.com", __s2) && gen_publickey_from_sk_ed25519_openssh_priv_data(a6, v25, 0, 0, 0, 0, a2, a3, a4, a5, &pkey) == 0;
  if (v25)
  {
    _libssh2_string_buf_free(a6, v25);
  }

  if (!v19)
  {
    return 0xFFFFFFFFLL;
  }

  if (a1)
  {
    v18 = 0;
    *a1 = pkey;
  }

  else
  {
    if (pkey)
    {
      EVP_PKEY_free(pkey);
    }

    return 0;
  }

  return v18;
}

uint64_t gen_publickey_from_sk_ed25519_openssh_priv_data(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, _BYTE *a7, void **a8, void *a9, size_t *a10, EVP_PKEY **a11)
{
  v31 = 0;
  *v32 = 0;
  v29 = 0;
  v30 = 0;
  if (_libssh2_get_string(a2, v32, &v29) || v29 != 32)
  {
    v19 = "Wrong public key length";
    goto LABEL_6;
  }

  if (_libssh2_get_string(a2, &v31, &v30))
  {
    v19 = "No SK application.";
LABEL_6:
    _libssh2_error(a1, 4294967282, v19);
    return 0xFFFFFFFFLL;
  }

  if (a7 && _libssh2_get_byte(a2, a7))
  {
    v19 = "No SK flags.";
    goto LABEL_6;
  }

  if (a9 && a10)
  {
    __src = 0;
    if (_libssh2_get_string(a2, &__src, a10))
    {
      v19 = "No SK key_handle.";
      goto LABEL_6;
    }

    if (*a10)
    {
      v21 = (*(a1 + 8))(*a10, a1);
      *a9 = v21;
      memcpy(v21, __src, *a10);
    }
  }

  v22 = EVP_PKEY_new_raw_public_key(952, 0, *v32, 32);
  v23 = (*(a1 + 8))(26, a1);
  if (!v23 || (v27 = v30 + 70, (v24 = _libssh2_calloc(a1, v30 + 70)) == 0))
  {
    _libssh2_error(a1, 4294967290, "Unable to allocate memory for ED25519 key");
    if (v22)
    {
      EVP_PKEY_free(v22);
    }

    if (v23)
    {
      (*(a1 + 24))(v23, a1);
    }

    if (a8 && *a8)
    {
      (*(a1 + 24))(a8, a1);
      *a8 = 0;
    }

    if (a9 && *a9)
    {
      (*(a1 + 24))(a9, a1);
      *a9 = 0;
    }

    return 0xFFFFFFFFLL;
  }

  v25 = v24;
  __src = v24;
  _libssh2_store_str(&__src, "sk-ssh-ed25519@openssh.com", 0x1AuLL);
  _libssh2_store_str(&__src, *v32, 0x20uLL);
  _libssh2_store_str(&__src, v31, v30);
  if (a8 && v30)
  {
    v26 = (*(a1 + 8))(v30 + 1, a1);
    *a8 = v26;
    memset_s(v26, v30 + 1, 0, v30 + 1);
    memcpy(*a8, v31, v30);
  }

  qmemcpy(v23, "sk-ssh-ed25519@openssh.com", 26);
  if (a3)
  {
    *a3 = v23;
  }

  else
  {
    (*(a1 + 24))(v23, a1);
  }

  if (a4)
  {
    *a4 = 26;
  }

  if (a5)
  {
    *a5 = v25;
  }

  else
  {
    (*(a1 + 24))(v25, a1);
  }

  if (a6)
  {
    *a6 = v27;
  }

  if (a11)
  {
    result = 0;
    *a11 = v22;
  }

  else
  {
    if (v22)
    {
      EVP_PKEY_free(v22);
    }

    return 0;
  }

  return result;
}

uint64_t _libssh2_ed25519_new_private_frommemory(EVP_PKEY **a1, uint64_t a2, void *a3, unint64_t a4, const char *a5)
{
  v12 = 0;
  _libssh2_init_if_needed();
  if (read_private_key_from_memory(&v12, PEM_read_bio_PrivateKey, a3, a4, a5))
  {
    return _libssh2_pub_priv_openssh_keyfilememory(a2, a1, "ssh-ed25519", 0, 0, 0, 0, a3, a4, a5);
  }

  v11 = v12;
  if (EVP_PKEY_id(v12) == 952)
  {
    *a1 = v11;
    return 0;
  }

  else
  {
    EVP_PKEY_free(v11);

    return _libssh2_error(a2, 4294967282, "Private key is not an ED25519 key");
  }
}

uint64_t _libssh2_ed25519_new_public(EVP_PKEY **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = EVP_PKEY_new_raw_public_key(952, 0, a3, a4);
  if (v6)
  {
    v7 = v6;
    result = 0;
    *a1 = v7;
  }

  else
  {

    return _libssh2_error(a2, 4294967282, "could not create ED25519 public key");
  }

  return result;
}

uint64_t _libssh2_rsa_sha2_sign(uint64_t a1, RSA *a2, const unsigned __int8 *a3, uint64_t a4, unsigned __int8 **a5, void *a6)
{
  siglen = RSA_size(a2);
  v12 = siglen;
  v13 = (*(a1 + 8))(siglen, a1);
  if (!v13)
  {
    return 0xFFFFFFFFLL;
  }

  v14 = v13;
  switch(a4)
  {
    case 64:
      v15 = 674;
      v16 = a3;
      v17 = 64;
      break;
    case 32:
      v15 = 672;
      v16 = a3;
      v17 = 32;
      break;
    case 20:
      v15 = 64;
      v16 = a3;
      v17 = 20;
      break;
    default:
      _libssh2_error(a1, 4294967282, "Unsupported hash digest length");
      goto LABEL_13;
  }

  if (!RSA_sign(v15, v16, v17, v14, &siglen, a2))
  {
    (*(a1 + 24))(v14, a1);
    return 0xFFFFFFFFLL;
  }

  v12 = siglen;
LABEL_13:
  result = 0;
  *a5 = v14;
  *a6 = v12;
  return result;
}

uint64_t _libssh2_dsa_sha1_sign(DSA *dsa, unsigned __int8 *dgst, uint64_t a3, uint64_t a4)
{
  v5 = DSA_do_sign(dgst, 20, dsa);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  v14 = 0;
  a = 0;
  DSA_SIG_get0(v5, &a, &v14);
  v7 = BN_num_bits(a);
  if (v7 >= -7)
  {
    v8 = v7 + 7;
  }

  else
  {
    v8 = v7 + 14;
  }

  if ((v7 - 161) >= 0xFFFFFF60 && (v9 = BN_num_bits(v14), (v9 - 161) >= 0xFFFFFF60))
  {
    v11 = -(v8 >> 3);
    v12 = v9 + 7;
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    BN_bn2bin(a, (a4 + v11 + 20));
    BN_bn2bin(v14, (a4 + 20 - (v12 >> 3) + 20));
    v10 = 0;
  }

  else
  {
    v10 = 0xFFFFFFFFLL;
  }

  DSA_SIG_free(v6);
  return v10;
}

uint64_t _libssh2_ecdsa_sign(uint64_t a1, EC_KEY *eckey, unsigned __int8 *dgst, int dgst_len, void *a5, size_t *a6)
{
  v24 = 0;
  a = 0;
  v9 = ECDSA_do_sign(dgst, dgst_len, eckey);
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  ECDSA_SIG_get0(v9, &a, &v24);
  v11 = BN_num_bits(a);
  if (v11 >= -7)
  {
    v12 = v11 + 7;
  }

  else
  {
    v12 = v11 + 14;
  }

  v13 = BN_num_bits(v24);
  v14 = v13 + 7;
  if (v13 < -7)
  {
    v14 = v13 + 14;
  }

  v15 = (v14 >> 3) + 1;
  v16 = malloc_type_malloc(v15 + (v12 >> 3) + 9, 0x16281E2EuLL);
  if (v16)
  {
    v17 = v16;
    v18 = write_bn(v16, a, (v12 >> 3) + 1);
    v19 = write_bn(v18, v24, v15) - v17;
    v20 = _libssh2_calloc(a1, v19);
    if (v20)
    {
      v21 = v20;
      memcpy(v20, v17, v19);
      v22 = 0;
      *a5 = v21;
      *a6 = v19;
    }

    else
    {
      v22 = 0xFFFFFFFFLL;
    }

    free(v17);
  }

  else
  {
    v22 = 0xFFFFFFFFLL;
  }

  ECDSA_SIG_free(v10);
  return v22;
}

uint64_t write_bn(uint64_t a1, BIGNUM *a, signed int a3)
{
  *(a1 + 4) = 0;
  v5 = a1 + 4;
  BN_bn2bin(a, (a1 + 5));
  if ((*(v5 + 1) & 0x80000000) == 0)
  {
    memmove(v5, (v5 + 1), --a3);
  }

  _libssh2_htonu32(a1, a3);
  return v5 + a3;
}

uint64_t _libssh2_sha1_init(EVP_MD_CTX **a1)
{
  result = EVP_MD_CTX_new();
  *a1 = result;
  if (result)
  {
    v3 = result;
    digestbyname = EVP_get_digestbyname("sha1");
    if (EVP_DigestInit(v3, digestbyname))
    {
      return 1;
    }

    else
    {
      EVP_MD_CTX_free(*a1);
      result = 0;
      *a1 = 0;
    }
  }

  return result;
}

uint64_t _libssh2_sha256_init(EVP_MD_CTX **a1)
{
  result = EVP_MD_CTX_new();
  *a1 = result;
  if (result)
  {
    v3 = result;
    digestbyname = EVP_get_digestbyname("sha256");
    if (EVP_DigestInit(v3, digestbyname))
    {
      return 1;
    }

    else
    {
      EVP_MD_CTX_free(*a1);
      result = 0;
      *a1 = 0;
    }
  }

  return result;
}

uint64_t _libssh2_sha384_init(EVP_MD_CTX **a1)
{
  result = EVP_MD_CTX_new();
  *a1 = result;
  if (result)
  {
    v3 = result;
    digestbyname = EVP_get_digestbyname("sha384");
    if (EVP_DigestInit(v3, digestbyname))
    {
      return 1;
    }

    else
    {
      EVP_MD_CTX_free(*a1);
      result = 0;
      *a1 = 0;
    }
  }

  return result;
}

uint64_t _libssh2_sha512_init(EVP_MD_CTX **a1)
{
  result = EVP_MD_CTX_new();
  *a1 = result;
  if (result)
  {
    v3 = result;
    digestbyname = EVP_get_digestbyname("sha512");
    if (EVP_DigestInit(v3, digestbyname))
    {
      return 1;
    }

    else
    {
      EVP_MD_CTX_free(*a1);
      result = 0;
      *a1 = 0;
    }
  }

  return result;
}

uint64_t _libssh2_md5_init(EVP_MD_CTX **a1)
{
  result = EVP_MD_CTX_new();
  *a1 = result;
  if (result)
  {
    v3 = result;
    digestbyname = EVP_get_digestbyname("md5");
    if (EVP_DigestInit(v3, digestbyname))
    {
      return 1;
    }

    else
    {
      EVP_MD_CTX_free(*a1);
      result = 0;
      *a1 = 0;
    }
  }

  return result;
}

uint64_t _libssh2_ecdsa_new_private(EC_KEY **a1, uint64_t a2, char *a3, const char *a4)
{
  _libssh2_init_if_needed();
  if (!read_private_key_from_file(a1, PEM_read_bio_ECPrivateKey, a3, a4))
  {
    return 0;
  }

  v17 = 0;
  v15 = 0;
  if (!a2)
  {
    v11 = "Session is required";
    v12 = 0;
LABEL_11:
    v13 = 4294967282;
LABEL_13:
    _libssh2_error(v12, v13, v11);
    return 0xFFFFFFFFLL;
  }

  _libssh2_init_if_needed();
  v8 = fopen(a3, "r");
  if (!v8)
  {
    v11 = "Unable to open OpenSSH ECDSA private key file";
    v12 = a2;
    v13 = 4294967280;
    goto LABEL_13;
  }

  v9 = v8;
  v16 = 0;
  v10 = _libssh2_openssh_pem_parse(a2, a4, v8, &v15);
  fclose(v9);
  if (v10)
  {
    return v10;
  }

  if (_libssh2_get_string(v15, &v17, 0) || !v17)
  {
    v11 = "Public key type in decrypted key data not found";
    v12 = a2;
    goto LABEL_11;
  }

  if (_libssh2_ecdsa_curve_type_from_name(v17, &v16))
  {
    v10 = 0xFFFFFFFFLL;
  }

  else
  {
    v10 = gen_publickey_from_ecdsa_openssh_priv_data(a2, v16, v15, 0, 0, 0, 0, a1);
  }

  if (v15)
  {
    _libssh2_string_buf_free(a2, v15);
  }

  return v10;
}

uint64_t _libssh2_ecdsa_new_private_sk(EC_KEY **a1, _BYTE *a2, void **a3, void *a4, size_t *a5, uint64_t a6, char *a7, const char *a8)
{
  _libssh2_init_if_needed();
  if (!read_private_key_from_file(a1, PEM_read_bio_ECPrivateKey, a7, a8))
  {
    return 0;
  }

  v23 = 0;
  __s2 = 0;
  if (!a6)
  {
    v19 = "Session is required";
    v20 = 0;
LABEL_11:
    v21 = 4294967282;
LABEL_13:
    _libssh2_error(v20, v21, v19);
    return 0xFFFFFFFFLL;
  }

  _libssh2_init_if_needed();
  v16 = fopen(a7, "r");
  if (!v16)
  {
    v19 = "Unable to open OpenSSH ECDSA private key file";
    v20 = a6;
    v21 = 4294967280;
    goto LABEL_13;
  }

  v17 = v16;
  v18 = _libssh2_openssh_pem_parse(a6, a8, v16, &v23);
  fclose(v17);
  if (v18)
  {
    return v18;
  }

  if (_libssh2_get_string(v23, &__s2, 0) || !__s2)
  {
    v19 = "Public key type in decrypted key data not found";
    v20 = a6;
    goto LABEL_11;
  }

  if (!strcmp("sk-ecdsa-sha2-nistp256@openssh.com", __s2))
  {
    v18 = gen_publickey_from_sk_ecdsa_openssh_priv_data(a6, v23, 0, 0, 0, 0, a2, a3, a4, a5, a1);
  }

  else
  {
    v18 = 0xFFFFFFFFLL;
  }

  if (v23)
  {
    _libssh2_string_buf_free(a6, v23);
  }

  return v18;
}

uint64_t _libssh2_ecdsa_create_key(uint64_t a1, EC_KEY **a2, void *a3, size_t *a4, int a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v10 = BN_CTX_new();
  if (!v10)
  {
    v18 = 0xFFFFFFFFLL;
    goto LABEL_14;
  }

  v11 = v10;
  v12 = EC_KEY_new_by_curve_name(a5);
  v13 = EC_KEY_get0_group(v12);
  EC_KEY_generate_key(v12);
  v14 = EC_KEY_get0_public_key(v12);
  v15 = EC_POINT_point2oct(v13, v14, POINT_CONVERSION_UNCOMPRESSED, 0, 0, v11);
  if (v15 <= 0x85)
  {
    v16 = v15;
    if (EC_POINT_point2oct(v13, v14, POINT_CONVERSION_UNCOMPRESSED, buf, v15, v11) == v15)
    {
      if (a2)
      {
        *a2 = v12;
      }

      if (!a3)
      {
        goto LABEL_9;
      }

      v17 = (*(a1 + 8))(v16, a1);
      *a3 = v17;
      if (v17)
      {
        memcpy(v17, buf, v16);
LABEL_9:
        v18 = 0;
        if (a4)
        {
          *a4 = v16;
        }

        goto LABEL_12;
      }
    }
  }

  v18 = 0xFFFFFFFFLL;
LABEL_12:
  BN_CTX_free(v11);
LABEL_14:
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t _libssh2_ecdh_gen_k(BIGNUM **a1, const EC_KEY *a2, const unsigned __int8 *a3, size_t a4)
{
  v8 = BN_CTX_new();
  v9 = 0xFFFFFFFFLL;
  if (!a1)
  {
    return v9;
  }

  v10 = v8;
  if (!v8)
  {
    return v9;
  }

  v11 = EC_KEY_get0_group(a2);
  v12 = EC_POINT_new(v11);
  if (!v12)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = v12;
  if (EC_POINT_oct2point(v11, v12, a3, a4, v10) == 1)
  {
    degree = EC_GROUP_get_degree(v11);
    v15 = degree + 7;
    if (degree < -7)
    {
      v15 = degree + 14;
    }

    v16 = v15 >> 3;
    v17 = malloc_type_malloc(v16, 0xE3252FCAuLL);
    v18 = v17;
    if (v17)
    {
      v19 = ECDH_compute_key(v17, v16, v13, a2, 0);
      if ((v19 - 134) >= 0xFFFFFF7B)
      {
        BN_bin2bn(v18, v19, *a1);
        v9 = 0;
        goto LABEL_13;
      }
    }
  }

  else
  {
    v18 = 0;
  }

  v9 = 0xFFFFFFFFLL;
LABEL_13:
  EC_POINT_free(v13);
  BN_CTX_free(v10);
  if (v18)
  {
    free(v18);
  }

  return v9;
}

uint64_t _libssh2_ed25519_sign(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, size_t a6)
{
  v12 = EVP_MD_CTX_new();
  v18 = 0;
  if (v12)
  {
    v13 = v12;
    if (EVP_DigestSignInit(v12, 0, 0, 0, a1) == 1)
    {
      v14 = 0xFFFFFFFFLL;
      if (EVP_DigestSign(v13, 0, &v18, a5, a6) == 1 && v18 == 64)
      {
        v15 = _libssh2_calloc(a2, 0x40uLL);
        if (v15)
        {
          v16 = v15;
          if (EVP_DigestSign(v13, v15, &v18, a5, a6) == 1)
          {
            v14 = 0;
            *a3 = v16;
            *a4 = v18;
          }

          else
          {
            *a4 = 0;
            *a3 = 0;
            (*(a2 + 24))(v16, a2);
          }
        }
      }
    }

    else
    {
      v14 = 0xFFFFFFFFLL;
    }

    EVP_MD_CTX_free(v13);
  }

  else
  {
    *a4 = 0;
    *a3 = 0;
    (*(a2 + 24))(0, a2);
    return 0xFFFFFFFFLL;
  }

  return v14;
}

uint64_t _libssh2_curve25519_gen_k(BIGNUM **a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  if (!a1 || !*a1 || (v6 = BN_CTX_new()) == 0)
  {
    v13 = 0xFFFFFFFFLL;
    goto LABEL_24;
  }

  v7 = v6;
  v8 = EVP_PKEY_new_raw_public_key(950, 0, a3, 32);
  v9 = EVP_PKEY_new_raw_private_key(950, 0, a2, 32);
  v10 = v9;
  if (v8 && v9)
  {
    v11 = EVP_PKEY_CTX_new(v9, 0);
    if (v11)
    {
      v12 = v11;
      if (EVP_PKEY_derive_init(v11) < 1 || EVP_PKEY_derive_set_peer(v12, v8) < 1)
      {
        v13 = 0xFFFFFFFFLL;
      }

      else
      {
        v13 = 0xFFFFFFFFLL;
        if (EVP_PKEY_derive(v12, 0, &v16) >= 1 && v16 == 32 && EVP_PKEY_derive(v12, s, &v16) == 1 && v16 == 32)
        {
          BN_bin2bn(s, 32, *a1);
          v13 = 0;
        }
      }

      EVP_PKEY_CTX_free(v12);
    }

    else
    {
      v13 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v13 = 0xFFFFFFFFLL;
    if (!v8)
    {
      goto LABEL_21;
    }
  }

  EVP_PKEY_free(v8);
LABEL_21:
  if (v10)
  {
    EVP_PKEY_free(v10);
  }

  BN_CTX_free(v7);
LABEL_24:
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t _libssh2_ed25519_verify(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, size_t a5)
{
  v10 = EVP_MD_CTX_new();
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v10;
  if (EVP_DigestVerifyInit(v10, 0, 0, 0, a1) == 1)
  {
    if (EVP_DigestVerify(v11, a2, a3, a4, a5) == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v12 = 0xFFFFFFFFLL;
  }

  EVP_MD_CTX_free(v11);
  return v12;
}

uint64_t _libssh2_pub_priv_keyfile(uint64_t a1, const char **a2, size_t *a3, void *a4, uint64_t *a5, char *filename, void *a7)
{
  v14 = BIO_new_file(filename, "r");
  if (v14)
  {
    v15 = v14;
    BIO_ctrl(v14, 1, 0, 0);
    bio_PrivateKey = PEM_read_bio_PrivateKey(v15, 0, 0, a7);
    BIO_free(v15);
    if (bio_PrivateKey)
    {
      v17 = EVP_PKEY_id(bio_PrivateKey);
      if (v17 > 407)
      {
        if (v17 == 408)
        {
          v18 = gen_publickey_from_ec_evp(a1, a2, a3, a4, a5, 0, bio_PrivateKey);
          goto LABEL_22;
        }

        if (v17 == 952)
        {
          v18 = gen_publickey_from_ed_evp(a1, a2, a3, a4, a5, bio_PrivateKey);
          goto LABEL_22;
        }
      }

      else
      {
        if (v17 == 6)
        {
          v18 = gen_publickey_from_rsa_evp(a1, a2, a3, a4, a5, bio_PrivateKey);
          goto LABEL_22;
        }

        if (v17 == 116)
        {
          v18 = gen_publickey_from_dsa_evp(a1, a2, a3, a4, a5, bio_PrivateKey);
LABEL_22:
          v26 = v18;
          EVP_PKEY_free(bio_PrivateKey);
          return v26;
        }
      }

      v18 = _libssh2_error(a1, 4294967280, "Unable to extract public key from private key file: Unsupported private key file format");
      goto LABEL_22;
    }

    v30 = 0;
    __s2 = 0;
    if (a1)
    {
      _libssh2_init_if_needed();
      v20 = fopen(filename, "r");
      if (!v20)
      {
        v23 = "Unable to open private key file";
        goto LABEL_24;
      }

      v21 = v20;
      v22 = _libssh2_openssh_pem_parse(a1, a7, v20, &v30);
      fclose(v21);
      if (v22)
      {
        v23 = "Not an OpenSSH key file";
LABEL_24:
        v24 = a1;
        v25 = 4294967280;
        goto LABEL_25;
      }

      if (!_libssh2_get_string(v30, &__s2, 0))
      {
        v27 = __s2;
        if (__s2)
        {
          if (!strcmp("ssh-ed25519", __s2))
          {
            v28 = gen_publickey_from_ed25519_openssh_priv_data(a1, v30, a2, a3, a4, a5, 0);
            v27 = __s2;
          }

          else
          {
            v28 = -1;
          }

          if (!strcmp("ssh-rsa", v27))
          {
            v28 = gen_publickey_from_rsa_openssh_priv_data(a1, v30, a2, a3, a4, a5, 0);
            v27 = __s2;
          }

          if (!strcmp("ssh-dss", v27))
          {
            v28 = gen_publickey_from_dsa_openssh_priv_data(a1, v30, a2, a3, a4, a5, 0);
            v27 = __s2;
          }

          v29 = 0;
          if (!_libssh2_ecdsa_curve_type_from_name(v27, &v29))
          {
            v28 = gen_publickey_from_ecdsa_openssh_priv_data(a1, v29, v30, a2, a3, a4, a5, 0);
          }

          if (v30)
          {
            _libssh2_string_buf_free(a1, v30);
          }

          if (!v28)
          {
            return 0;
          }

          v23 = "Unsupported OpenSSH key type";
          goto LABEL_24;
        }
      }

      v23 = "Public key type in decrypted key data not found";
      v24 = a1;
    }

    else
    {
      v23 = "Session is required";
      v24 = 0;
    }

    v25 = 4294967282;
LABEL_25:
    _libssh2_error(v24, v25, v23);
    return _libssh2_error(a1, 4294967280, "Unable to extract public key from private key file: Wrong passphrase or invalid/unrecognized private key file format");
  }

  return _libssh2_error(a1, 4294967280, "Unable to extract public key from private key file: Unable to open private key file");
}

uint64_t gen_publickey_from_ed_evp(uint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v25 = *MEMORY[0x277D85DE8];
  v23 = 0;
  strcpy(v24, "ssh-ed25519");
  v12 = (*(a1 + 8))(11, a1);
  if (!v12)
  {
    _libssh2_error(a1, 4294967290, "Unable to allocate memory for private key data");
LABEL_10:
    result = 0xFFFFFFFFLL;
    goto LABEL_11;
  }

  v13 = v12;
  *(v12 + 7) = 959526197;
  *v12 = *"ssh-ed25519";
  if (EVP_PKEY_get_raw_public_key(a6) != 1)
  {
    v18 = "EVP_PKEY_get_raw_public_key failed";
    v19 = a1;
    v20 = 4294967282;
LABEL_9:
    _libssh2_error(v19, v20, v18);
    (*(a1 + 24))(v13, a1);
    goto LABEL_10;
  }

  v14 = v23 + 19;
  v15 = (*(a1 + 8))(v23 + 19, a1);
  v22 = v15;
  if (!v15)
  {
    v18 = "Unable to allocate memory for private key data";
    v19 = a1;
    v20 = 4294967290;
    goto LABEL_9;
  }

  v16 = v15;
  _libssh2_store_str(&v22, v24, 0xBuLL);
  _libssh2_store_u32(&v22, v23);
  if (EVP_PKEY_get_raw_public_key(a6) != 1)
  {
    _libssh2_error(a1, 4294967282, "EVP_PKEY_get_raw_public_key failed");
    (*(a1 + 24))(v13, a1);
    (*(a1 + 24))(v16, a1);
    goto LABEL_10;
  }

  result = 0;
  *a2 = v13;
  *a3 = 11;
  *a4 = v16;
  *a5 = v14;
LABEL_11:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gen_publickey_from_rsa_evp(uint64_t a1, void *a2, void *a3, void *a4, uint64_t *a5, EVP_PKEY *pkey)
{
  v11 = EVP_PKEY_get1_RSA(pkey);
  if (v11)
  {
    v12 = v11;
    v13 = (*(a1 + 8))(7, a1);
    if (v13)
    {
      v14 = v13;
      v25 = 0;
      a = 0;
      RSA_get0_key(v12, &v25, &a, 0);
      v15 = BN_num_bits(a);
      if (v15 >= -7)
      {
        v16 = v15 + 7;
      }

      else
      {
        v16 = v15 + 14;
      }

      v17 = BN_num_bits(v25);
      v18 = v17 + 7;
      if (v17 < -7)
      {
        v18 = v17 + 14;
      }

      v19 = (v18 >> 3) + 1;
      v20 = (*(a1 + 8))(v19 + (v16 >> 3) + 20, a1);
      if (v20)
      {
        v21 = v20;
        _libssh2_htonu32(v20, 7u);
        *(v21 + 7) = 1634955821;
        v21[1] = 761820019;
        v22 = write_bn(v21 + 11, a, (v16 >> 3) + 1);
        v23 = write_bn(v22, v25, v19) - v21;
        RSA_free(v12);
        result = 0;
        *(v14 + 3) = 1634955821;
        *v14 = 761820019;
        *a2 = v14;
        *a3 = 7;
        *a4 = v21;
        *a5 = v23;
        return result;
      }

      RSA_free(v12);
      (*(a1 + 24))(v14, a1);
    }

    else
    {
      RSA_free(v12);
    }
  }

  return _libssh2_error(a1, 4294967290, "Unable to allocate memory for private key data");
}

uint64_t gen_publickey_from_dsa_evp(uint64_t a1, void *a2, void *a3, void *a4, uint64_t *a5, EVP_PKEY *pkey)
{
  v11 = EVP_PKEY_get1_DSA(pkey);
  if (v11)
  {
    v12 = v11;
    v13 = (*(a1 + 8))(7, a1);
    if (v13)
    {
      v14 = v13;
      v33 = a4;
      v34 = a5;
      v37 = 0;
      a = 0;
      v35 = 0;
      v36 = 0;
      DSA_get0_pqg(v12, &a, &v37, &v36);
      DSA_get0_key(v12, &v35, 0);
      v15 = BN_num_bits(a);
      if (v15 >= -7)
      {
        v16 = v15 + 7;
      }

      else
      {
        v16 = v15 + 14;
      }

      v17 = BN_num_bits(v37);
      v18 = v17 + 7;
      if (v17 < -7)
      {
        v18 = v17 + 14;
      }

      v19 = (v18 >> 3) + 1;
      v20 = BN_num_bits(v36);
      v21 = v20 + 7;
      if (v20 < -7)
      {
        v21 = v20 + 14;
      }

      v22 = (v21 >> 3) + 1;
      v23 = BN_num_bits(v35);
      v24 = v23 + 7;
      if (v23 < -7)
      {
        v24 = v23 + 14;
      }

      v25 = (v24 >> 3) + 1;
      v26 = (*(a1 + 8))(v19 + (v16 >> 3) + v22 + v25 + 28, a1);
      if (v26)
      {
        v27 = v26;
        _libssh2_htonu32(v26, 7u);
        *(v27 + 7) = 1936942125;
        v27[1] = 761820019;
        v28 = write_bn(v27 + 11, a, (v16 >> 3) + 1);
        v29 = write_bn(v28, v37, v19);
        v30 = write_bn(v29, v36, v22);
        v31 = write_bn(v30, v35, v25) - v27;
        DSA_free(v12);
        result = 0;
        *(v14 + 3) = 1936942125;
        *v14 = 761820019;
        *a2 = v14;
        *a3 = 7;
        *v33 = v27;
        *v34 = v31;
        return result;
      }

      DSA_free(v12);
      (*(a1 + 24))(v14, a1);
    }

    else
    {
      DSA_free(v12);
    }
  }

  return _libssh2_error(a1, 4294967290, "Unable to allocate memory for private key data");
}

uint64_t gen_publickey_from_ec_evp(uint64_t a1, const char **a2, size_t *a3, void *a4, uint64_t *a5, int a6, EVP_PKEY *a7)
{
  v14 = BN_CTX_new();
  if (!v14)
  {
    return 0xFFFFFFFFLL;
  }

  v15 = v14;
  v16 = EVP_PKEY_get1_EC_KEY(a7);
  if (!v16)
  {
    BN_CTX_free(v15);
    return 0xFFFFFFFFLL;
  }

  v17 = v16;
  v36 = a2;
  v37 = a4;
  v18 = EC_KEY_get0_public_key(v16);
  v19 = EC_KEY_get0_group(v17);
  v20 = EC_KEY_get0_group(v17);
  curve_name = EC_GROUP_get_curve_name(v20);
  if (a6)
  {
    v22 = 34;
  }

  else
  {
    v22 = 19;
  }

  *a3 = v22;
  v23 = (*(a1 + 8))();
  if (v23)
  {
    v24 = v23;
    v38 = 0;
    v35 = a5;
    if (a6)
    {
      v25 = "sk-ecdsa-sha2-nistp256@openssh.com";
    }

    else
    {
      switch(curve_name)
      {
        case 415:
          v25 = "ecdsa-sha2-nistp256";
          break;
        case 716:
          v25 = "ecdsa-sha2-nistp521";
          break;
        case 715:
          v25 = "ecdsa-sha2-nistp384";
          break;
        default:
          goto LABEL_10;
      }
    }

    memcpy(v23, v25, *a3);
    v26 = EC_POINT_point2oct(v19, v18, POINT_CONVERSION_UNCOMPRESSED, 0, 0, v15);
    if (v26 <= 0x85)
    {
      v30 = v26;
      v28 = malloc_type_malloc(v26, 0x45CE080EuLL);
      if (v28 && EC_POINT_point2oct(v19, v18, POINT_CONVERSION_UNCOMPRESSED, v28, v30, v15) == v30 && (v31 = v30 + *a3 + 20, (v32 = (*(a1 + 8))(v31, a1)) != 0))
      {
        v33 = v32;
        v38 = v32;
        _libssh2_store_str(&v38, v24, *a3);
        if (a6)
        {
          v34 = "nistp256";
        }

        else
        {
          v34 = v24 + 11;
        }

        _libssh2_store_str(&v38, v34, 8uLL);
        _libssh2_store_str(&v38, v28, v30);
        *v36 = v24;
        *v37 = v33;
        v27 = 1;
        *v35 = v31;
      }

      else
      {
        v27 = 0;
      }

      goto LABEL_27;
    }

LABEL_10:
    v27 = 0;
    v28 = 0;
LABEL_27:
    EC_KEY_free(v17);
    BN_CTX_free(v15);
    if (v28)
    {
      free(v28);
      if (v27)
      {
        return 0;
      }
    }

    else if (v27)
    {
      return 0;
    }

    (*(a1 + 24))(v24, a1);
    return 0xFFFFFFFFLL;
  }

  return _libssh2_error(a1, 4294967290, "out of memory");
}

uint64_t _libssh2_pub_priv_openssh_keyfilememory(uint64_t a1, EVP_PKEY **a2, char *__s, uint64_t *a4, size_t *a5, void *a6, uint64_t *a7, uint64_t a8, unint64_t a9, const char *a10)
{
  v25 = 0;
  __s2 = 0;
  if (a2)
  {
    *a2 = 0;
  }

  if (!a1)
  {
    v18 = "Session is required";
    v19 = 0;
    goto LABEL_13;
  }

  if (!__s || strlen(__s) - 12 > 0xFFFFFFFFFFFFFFFALL)
  {
    _libssh2_init_if_needed();
    v20 = _libssh2_openssh_pem_parse_memory(a1, a10, a8, a9, &v25);
    if (!v20)
    {
      if (!_libssh2_get_string(v25, &__s2, 0))
      {
        v21 = __s2;
        if (__s2)
        {
          if (!strcmp("ssh-ed25519", __s2))
          {
            if (__s && strcmp("ssh-ed25519", __s))
            {
              v20 = 4294967280;
              if (strcmp("sk-ssh-ed25519@openssh.com", v21))
              {
                goto LABEL_26;
              }

              goto LABEL_24;
            }

            v20 = gen_publickey_from_ed25519_openssh_priv_data(a1, v25, a4, a5, a6, a7, a2);
            v21 = __s2;
          }

          else
          {
            v20 = 4294967280;
          }

          if (strcmp("sk-ssh-ed25519@openssh.com", v21))
          {
            goto LABEL_26;
          }

          if (!__s)
          {
LABEL_25:
            v20 = gen_publickey_from_sk_ed25519_openssh_priv_data(a1, v25, a4, a5, a6, a7, 0, 0, 0, 0, a2);
            v21 = __s2;
LABEL_26:
            if (!strcmp("ssh-rsa", v21))
            {
              if (__s && strcmp("ssh-rsa", __s))
              {
                if (strcmp("ssh-dss", v21))
                {
                  goto LABEL_36;
                }

                goto LABEL_34;
              }

              v20 = gen_publickey_from_rsa_openssh_priv_data(a1, v25, a4, a5, a6, a7, a2);
              v21 = __s2;
            }

            if (strcmp("ssh-dss", v21))
            {
              goto LABEL_36;
            }

            if (!__s)
            {
LABEL_35:
              v20 = gen_publickey_from_dsa_openssh_priv_data(a1, v25, a4, a5, a6, a7, a2);
              v21 = __s2;
LABEL_36:
              v24 = 0;
              if (!strcmp("sk-ecdsa-sha2-nistp256@openssh.com", v21))
              {
                v23 = gen_publickey_from_sk_ecdsa_openssh_priv_data(a1, v25, a4, a5, a6, a7, 0, 0, 0, 0, a2);
              }

              else
              {
                if (_libssh2_ecdsa_curve_type_from_name(v21, &v24) || __s && strcmp("ssh-ecdsa", __s))
                {
                  goto LABEL_43;
                }

                v23 = gen_publickey_from_ecdsa_openssh_priv_data(a1, v24, v25, a4, a5, a6, a7, a2);
              }

              v20 = v23;
LABEL_43:
              if (v20 == -16)
              {
                v20 = _libssh2_error(a1, 4294967280, "Unable to extract public key from private key file: invalid/unrecognized private key file format");
              }

              if (v25)
              {
                _libssh2_string_buf_free(a1, v25);
              }

              return v20;
            }

LABEL_34:
            if (strcmp("ssh-dss", __s))
            {
              goto LABEL_36;
            }

            goto LABEL_35;
          }

LABEL_24:
          if (strcmp("sk-ssh-ed25519@openssh.com", __s))
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }
      }

      return _libssh2_error(a1, 4294967282, "Public key type in decrypted key data not found");
    }

    return v20;
  }

  v18 = "type is invalid";
  v19 = a1;
LABEL_13:

  return _libssh2_error(v19, 4294967282, v18);
}

uint64_t _libssh2_pub_priv_keyfilememory(uint64_t a1, const char **a2, size_t *a3, void *a4, uint64_t *a5, void *buf, unint64_t len, void *a8)
{
  v16 = BIO_new_mem_buf(buf, len);
  if (v16)
  {
    v17 = v16;
    BIO_ctrl(v16, 1, 0, 0);
    bio_PrivateKey = PEM_read_bio_PrivateKey(v17, 0, 0, a8);
    BIO_free(v17);
    if (bio_PrivateKey)
    {
      v19 = EVP_PKEY_id(bio_PrivateKey);
      if (v19 > 407)
      {
        if (v19 == 408)
        {
          v20 = gen_publickey_from_ec_evp(a1, a2, a3, a4, a5, 0, bio_PrivateKey);
          goto LABEL_20;
        }

        if (v19 == 952)
        {
          v20 = gen_publickey_from_ed_evp(a1, a2, a3, a4, a5, bio_PrivateKey);
          goto LABEL_20;
        }
      }

      else
      {
        if (v19 == 6)
        {
          v20 = gen_publickey_from_rsa_evp(a1, a2, a3, a4, a5, bio_PrivateKey);
          goto LABEL_20;
        }

        if (v19 == 116)
        {
          v20 = gen_publickey_from_dsa_evp(a1, a2, a3, a4, a5, bio_PrivateKey);
LABEL_20:
          v25 = v20;
          EVP_PKEY_free(bio_PrivateKey);
          return v25;
        }
      }

      v20 = _libssh2_error(a1, 4294967280, "Unable to extract public key from private key file: Unsupported private key file format");
      goto LABEL_20;
    }

    if (!_libssh2_pub_priv_openssh_keyfilememory(a1, 0, 0, a2, a3, a4, a5, buf, len, a8))
    {
      return 0;
    }

    v21 = "Unable to extract public key from private key file: Unsupported private key file format";
    v22 = a1;
    v23 = 4294967280;
  }

  else
  {
    v21 = "Unable to allocate memory whencomputing public key";
    v22 = a1;
    v23 = 4294967290;
  }

  return _libssh2_error(v22, v23, v21);
}

uint64_t _libssh2_sk_pub_keyfilememory(uint64_t a1, const char **a2, size_t *a3, void *a4, uint64_t *a5, _DWORD *a6, _BYTE *a7, void **a8, void *a9, size_t *a10, void *a11, unint64_t a12, void *a13)
{
  v17 = BIO_new_mem_buf(a11, a12);
  if (v17)
  {
    v18 = v17;
    v21 = a6;
    BIO_ctrl(v17, 1, 0, 0);
    bio_PrivateKey = PEM_read_bio_PrivateKey(v18, 0, 0, a13);
    BIO_free(v18);
    if (bio_PrivateKey)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return _libssh2_sk_pub_openssh_keyfilememory(a1, 0, 0, a2, a3, a4, a5, v21, a7, a8, a9, a10, a11, a12, a13);
    }
  }

  else
  {

    return _libssh2_error(a1, 4294967290, "Unable to allocate memory whencomputing public key");
  }
}

BIGNUM *_libssh2_dh_init(BIGNUM **a1)
{
  result = BN_new();
  *a1 = result;
  return result;
}

uint64_t _libssh2_dh_key_pair(BIGNUM **a1, BIGNUM *a2, const BIGNUM *a3, const BIGNUM *a4, int a5, BN_CTX *a6)
{
  BN_rand(*a1, 8 * a5 - 1, 0, -1);
  BN_mod_exp(a2, a3, *a1, a4, a6);
  return 0;
}

const char *_libssh2_supported_key_sign_algorithms(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (a3 == 7 && (*a2 == 761820019 ? (v3 = *(a2 + 3) == 1634955821) : (v3 = 0), v3))
  {
    return "rsa-sha2-512,rsa-sha2-256,ssh-rsa";
  }

  else
  {
    return 0;
  }
}

uint64_t passphrase_cb(void *a1, int a2, int a3, char *__s)
{
  v7 = strlen(__s);
  if (v7 >= a2)
  {
    v8 = (a2 - 1);
  }

  else
  {
    v8 = v7;
  }

  memcpy(a1, __s, v8);
  *(a1 + v8) = 0;
  return v8;
}

uint64_t gen_publickey_from_rsa_openssh_priv_data(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t *a6, rsa_st **a7)
{
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  if (_libssh2_get_bignum_bytes(a2, &v26, &v33))
  {
    v14 = "RSA no n";
LABEL_15:
    _libssh2_error(a1, 4294967282, v14);
    return 0xFFFFFFFFLL;
  }

  if (_libssh2_get_bignum_bytes(a2, &v25, &v32))
  {
    v14 = "RSA no e";
    goto LABEL_15;
  }

  if (_libssh2_get_bignum_bytes(a2, &v24, &v31))
  {
    v14 = "RSA no d";
    goto LABEL_15;
  }

  if (_libssh2_get_bignum_bytes(a2, &v21, &v28))
  {
    v14 = "RSA no coeff";
    goto LABEL_15;
  }

  if (_libssh2_get_bignum_bytes(a2, &v23, &v30))
  {
    v14 = "RSA no p";
    goto LABEL_15;
  }

  if (_libssh2_get_bignum_bytes(a2, &v22, &v29))
  {
    v14 = "RSA no q";
    goto LABEL_15;
  }

  if (_libssh2_get_string(a2, &v20, &v27))
  {
    v14 = "RSA no comment";
    goto LABEL_15;
  }

  _libssh2_rsa_new(&v19, v25, v32, v26, v33, v24, v31, v23, v30, v22, v29, 0, 0, 0, 0, v21, v28);
  v17 = v19;
  if (v19)
  {
    v15 = _libssh2_rsa_new_additional_parameters(v19);
    if (a3)
    {
      if (a5)
      {
        v18 = EVP_PKEY_new();
        EVP_PKEY_set1_RSA(v18, v17);
        v15 = gen_publickey_from_rsa_evp(a1, a3, a4, a5, a6, v18);
        if (v18)
        {
          EVP_PKEY_free(v18);
        }
      }
    }
  }

  else
  {
    v15 = 0;
  }

  if (a7)
  {
    *a7 = v17;
  }

  else
  {
    RSA_free(v17);
  }

  return v15;
}

uint64_t _libssh2_rsa_new_additional_parameters(void *a1)
{
  v16 = 0;
  v17 = 0;
  m = 0;
  RSA_get0_key(a1, 0, 0, &m);
  RSA_get0_factors(a1, &v17, &v16);
  v2 = BN_CTX_new();
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  v4 = BN_new();
  if (!v4)
  {
    BN_CTX_free(v3);
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  v6 = BN_new();
  if (v6)
  {
    v7 = BN_new();
    if (v7)
    {
      v8 = v16;
      v9 = BN_value_one();
      if (BN_sub(v5, v8, v9))
      {
        if (BN_div(0, v7, m, v5, v3))
        {
          v10 = v17;
          v11 = BN_value_one();
          if (BN_sub(v5, v10, v11))
          {
            if (BN_div(0, v6, m, v5, v3))
            {
              RSA_set0_crt_params(a1, v6, v7, 0);
              v12 = 0;
              v13 = 1;
              goto LABEL_14;
            }
          }
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v13 = 0;
  v12 = 0xFFFFFFFFLL;
LABEL_14:
  BN_clear_free(v5);
  BN_CTX_free(v3);
  if ((v13 & 1) == 0)
  {
    if (v6)
    {
      BN_clear_free(v6);
    }

    if (v7)
    {
      BN_clear_free(v7);
    }
  }

  return v12;
}

uint64_t gen_publickey_from_dsa_openssh_priv_data(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t *a6, DSA **a7)
{
  v29 = 0;
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  r = 0;
  v20 = 0;
  if (_libssh2_get_bignum_bytes(a2, &v24, &v29))
  {
    v14 = "DSA no p";
LABEL_11:
    _libssh2_error(a1, 4294967282, v14);
    return 0xFFFFFFFFLL;
  }

  if (_libssh2_get_bignum_bytes(a2, &v23, &v28))
  {
    v14 = "DSA no q";
    goto LABEL_11;
  }

  if (_libssh2_get_bignum_bytes(a2, &v22, &v27))
  {
    v14 = "DSA no g";
    goto LABEL_11;
  }

  if (_libssh2_get_bignum_bytes(a2, &v21, &v26))
  {
    v14 = "DSA no public key";
    goto LABEL_11;
  }

  if (_libssh2_get_bignum_bytes(a2, &v20, &v25))
  {
    v14 = "DSA no private key";
    goto LABEL_11;
  }

  _libssh2_dsa_new(&r, v24, v29, v23, v28, v22, v27, v21, v26, v20, v25);
  v15 = 0;
  v17 = r;
  if (a3)
  {
    if (a5)
    {
      if (r)
      {
        v18 = EVP_PKEY_new();
        EVP_PKEY_set1_DSA(v18, v17);
        v15 = gen_publickey_from_dsa_evp(a1, a3, a4, a5, a6, v18);
        if (v18)
        {
          EVP_PKEY_free(v18);
        }
      }
    }
  }

  if (a7)
  {
    *a7 = v17;
  }

  else
  {
    DSA_free(v17);
  }

  return v15;
}

uint64_t gen_publickey_from_ecdsa_openssh_priv_data(uint64_t a1, int a2, void *a3, const char **a4, size_t *a5, void *a6, uint64_t *a7, EC_KEY **a8)
{
  *len = 0;
  v32 = 0;
  v29 = 0;
  *v30 = 0;
  *v27 = 0;
  s = 0;
  key = 0;
  if (_libssh2_get_string(a3, &v29, &v32) || !v32)
  {
    v16 = "ECDSA no curve";
    goto LABEL_6;
  }

  if (_libssh2_get_string(a3, v27, v30))
  {
    v16 = "ECDSA no point";
LABEL_6:
    _libssh2_error(a1, 4294967282, v16);
    return 0xFFFFFFFFLL;
  }

  if (_libssh2_get_bignum_bytes(a3, &s, len))
  {
    v16 = "ECDSA no exponent";
    goto LABEL_6;
  }

  if (_libssh2_ecdsa_curve_name_with_octal_new(&key, *v27, *v30, a2))
  {
    v19 = "ECDSA could not create key";
    v20 = a1;
    v21 = 4294967282;
    goto LABEL_13;
  }

  v22 = BN_new();
  if (!v22)
  {
    v19 = "Unable to allocate memory for private key data";
    v20 = a1;
    v21 = 4294967290;
LABEL_13:
    _libssh2_error(v20, v21, v19);
    if (key)
    {
      EC_KEY_free(key);
    }

    return 0xFFFFFFFFLL;
  }

  v23 = v22;
  BN_bin2bn(s, len[0], v22);
  v24 = EC_KEY_set_private_key(key, v23);
  v17 = v24 != 1;
  if (a4)
  {
    if (a6)
    {
      if (v24 == 1)
      {
        if (key)
        {
          v25 = EVP_PKEY_new();
          EVP_PKEY_set1_EC_KEY(v25, key);
          v17 = gen_publickey_from_ec_evp(a1, a4, a5, a6, a7, 0, v25);
          if (v25)
          {
            EVP_PKEY_free(v25);
          }
        }
      }
    }
  }

  if (a8)
  {
    *a8 = key;
  }

  else
  {
    EC_KEY_free(key);
  }

  return v17;
}

uint64_t gen_publickey_from_sk_ecdsa_openssh_priv_data(uint64_t a1, void *a2, const char **a3, size_t *a4, void *a5, uint64_t *a6, _BYTE *a7, void **a8, void *a9, size_t *a10, EC_KEY **a11)
{
  *v37 = 0;
  v38 = 0;
  v35 = 0;
  __n = 0;
  v33 = 0;
  *v34 = 0;
  key = 0;
  v32 = 0;
  if (_libssh2_get_string(a2, &v35, &v38) || !v38)
  {
    v19 = "ECDSA no curve";
    goto LABEL_6;
  }

  if (_libssh2_get_string(a2, v34, v37))
  {
    v19 = "ECDSA no point";
LABEL_6:
    _libssh2_error(a1, 4294967282, v19);
    return 0xFFFFFFFFLL;
  }

  if (!_libssh2_ecdsa_curve_name_with_octal_new(&key, *v34, *v37, 415))
  {
    if (_libssh2_get_string(a2, &v32, &__n))
    {
      v22 = "No SK application.";
    }

    else
    {
      if (!a7 || !_libssh2_get_byte(a2, a7))
      {
        if (a9 && a10)
        {
          __src = 0;
          if (_libssh2_get_string(a2, &__src, a10))
          {
            v22 = "No SK key_handle.";
            goto LABEL_13;
          }

          if (*a10)
          {
            v23 = (*(a1 + 8))(*a10, a1);
            *a9 = v23;
            if (v23)
            {
              memcpy(v23, __src, *a10);
            }
          }
        }

        v20 = 0;
        if (a5)
        {
          if (a3)
          {
            if (key)
            {
              v24 = EVP_PKEY_new();
              EVP_PKEY_set1_EC_KEY(v24, key);
              v20 = gen_publickey_from_ec_evp(a1, a3, a4, a5, a6, 1, v24);
              if (v24)
              {
                EVP_PKEY_free(v24);
              }
            }
          }
        }

        if (a5 && !v20)
        {
          v25 = *a6 + __n + 4;
          v26 = (*(a1 + 8))(v25, a1);
          if (!v26)
          {
            goto LABEL_10;
          }

          v27 = v26;
          v28 = *a6;
          v33 = &v26[*a6];
          memcpy(v26, *a5, v28);
          _libssh2_store_str(&v33, v32, __n);
          if (a8 && __n)
          {
            v29 = (*(a1 + 8))(__n + 1, a1);
            *a8 = v29;
            memset_s(v29, __n + 1, 0, __n + 1);
            memcpy(*a8, v32, __n);
          }

          (*(a1 + 24))(*a5, a1);
          *a6 = v25;
          *a5 = v27;
        }

        if (a11)
        {
          *a11 = key;
        }

        else
        {
          EC_KEY_free(key);
        }

        return v20;
      }

      v22 = "No SK flags.";
    }

LABEL_13:
    _libssh2_error(a1, 4294967282, v22);
    v20 = 0;
    goto LABEL_14;
  }

  _libssh2_error(a1, 4294967282, "ECDSA could not create key");
LABEL_10:
  v20 = 0xFFFFFFFFLL;
LABEL_14:
  if (key)
  {
    EC_KEY_free(key);
  }

  if (a8 && *a8)
  {
    (*(a1 + 24))(a8, a1);
    *a8 = 0;
  }

  if (a9 && *a9)
  {
    (*(a1 + 24))(a9, a1);
    *a9 = 0;
  }

  return v20;
}

uint64_t userauth_keyboard_interactive_decode_info_request(void *a1)
{
  v2 = a1 + 8704;
  v12[0] = a1[9038];
  v12[1] = v12[0];
  v13 = a1[9039];
  if (v13 > 0x10)
  {
    v16 = 0;
    v17 = 0;
    v15 = 0;
    v14 = 0;
    _libssh2_get_byte(v12, &v15);
    if (_libssh2_copy_string(a1, v12, a1 + 9043, a1 + 9042) == -1)
    {
      v3 = "Unable to decode keyboard-interactive 'name' request field";
    }

    else if (_libssh2_copy_string(a1, v12, a1 + 9045, a1 + 9044) == -1)
    {
      v3 = "Unable to decode keyboard-interactive 'instruction' request field";
    }

    else if (_libssh2_get_string(v12, &v17, &v16) == -1)
    {
      v3 = "Unable to decode keyboard-interactive 'language tag' request field";
    }

    else
    {
      if (_libssh2_get_u32(v12, &v14) == -1)
      {
        v3 = "Unable to decode keyboard-interactive number of keyboard prompts";
        goto LABEL_3;
      }

      v6 = v14;
      *(v2 + 684) = v14;
      if (v6 > 0x64)
      {
        v3 = "Too many replies for keyboard-interactive prompts";
        v4 = a1;
        v5 = 4294967255;
        goto LABEL_14;
      }

      if (!v6)
      {
        return 0;
      }

      v8 = _libssh2_calloc(a1, 24 * v6);
      v2[343] = v8;
      if (v8)
      {
        v9 = _libssh2_calloc(a1, 16 * *(v2 + 684));
        v2[344] = v9;
        if (v9)
        {
          if (*(v2 + 684))
          {
            v10 = 0;
            for (i = 8; ; i += 24)
            {
              if (_libssh2_copy_string(a1, v12, (v2[343] + i - 8), (v2[343] + i)) == -1)
              {
                v3 = "Unable to decode keyboard-interactive prompt message";
                goto LABEL_13;
              }

              if (_libssh2_get_BOOLean(v12, (v2[343] + i + 8)) == -1)
              {
                break;
              }

              result = 0;
              if (++v10 >= *(v2 + 684))
              {
                return result;
              }
            }

            v3 = "Unable to decode user auth keyboard prompt echo";
            goto LABEL_3;
          }

          return 0;
        }

        v3 = "Unable to allocate memory for keyboard-interactive responses array";
      }

      else
      {
        v3 = "Unable to allocate memory for keyboard-interactive prompts array";
      }
    }

LABEL_13:
    v4 = a1;
    v5 = 4294967290;
    goto LABEL_14;
  }

  v3 = "userauth keyboard data buffer too small to get length";
LABEL_3:
  v4 = a1;
  v5 = 4294967258;
LABEL_14:
  _libssh2_error(v4, v5, v3);
  return 0xFFFFFFFFLL;
}

uint64_t _libssh2_transport_read(uint64_t a1)
{
  v70 = *MEMORY[0x277D85DE8];
  *(a1 + 600) &= ~1u;
  if ((*(a1 + 128) & 9) == 1)
  {
    v2 = _libssh2_kex_exchange(a1, 1, a1 + 71088);
    if (v2)
    {
LABEL_3:
      v3 = v2;
      goto LABEL_126;
    }
  }

  v4 = (a1 + 35632);
  if (*(a1 + 72040) == 11)
  {
    *(a1 + 72040) = 0;
    v63 = *(a1 + 72044);
LABEL_6:
    v5 = (a1 + 72040);
    v6 = *(a1 + 72872);
    if (v6)
    {
      if (v6 != 2)
      {
        goto LABEL_112;
      }

      v7 = *(a1 + 35672);
      v8 = *(a1 + 72880);
LABEL_109:
      v55 = _libssh2_packet_add(a1, v7, v8, v5[209]);
      if (v55)
      {
        v3 = v55;
        if (v55 == -37)
        {
LABEL_114:
          if (v5[140])
          {
            *v5 = 11;
            v5[1] = v63;
          }

LABEL_116:
          v3 = 4294967259;
          goto LABEL_126;
        }

        v5[208] = 0;
LABEL_113:
        if (v3 != -37)
        {
LABEL_123:
          *(a1 + 35664) = 0;
          goto LABEL_126;
        }

        goto LABEL_114;
      }

LABEL_112:
      v5[208] = 0;
      v3 = v5[212];
      goto LABEL_113;
    }

    *(a1 + 72876) = 0;
    v42 = (*(a1 + 35648) - 1);
    *(a1 + 72880) = v42;
    if (v63)
    {
      v43 = *(a1 + 448);
      if (!v43 || (*(v43 + 32) & 1) == 0)
      {
        v44 = *(a1 + 352);
        v45 = *(v44 + 40);
        v46 = *(v44 + 8);
        v47 = *(v44 + 24);
        if (v45)
        {
          v48 = *(a1 + 35672);
          v49 = *(a1 + 35664) - v46;
          v50 = a1 + 368;
          v51 = a1;
          v52 = 0;
          v42 = 0;
        }

        else
        {
          v52 = *(a1 + 35672);
          v48 = a1 + 35624;
          v50 = a1 + 368;
          v51 = a1;
          v49 = 5;
        }

        v47(v51, __s1, *(a1 + 360), v48, v49, v52, v42, v50);
        v53 = *(a1 + 35672);
        if (!memcmp(__s1, (v53 + *(a1 + 35664) - v46), v46))
        {
          if (v45)
          {
            v56 = *(*(a1 + 336) + 16);
            v3 = decrypt(a1, (v53 + 4), v68, v56, 1u);
            if (!v3)
            {
              v59 = *(a1 + 35664) - v46 - 4;
              v60 = (*(a1 + 8))(v59, a1);
              if (v60)
              {
                v61 = v60;
                *(a1 + 35652) = v68[0];
                if (v56 >= 2)
                {
                  memcpy(v60, &v68[1], (v56 - 1));
                }

                if (v59 <= v56 || (v62 = decrypt(a1, (*(a1 + 35672) + v56 + 4), &v61[v56 - 1], v59 - v56, 2u), !v62))
                {
                  (*(a1 + 24))(*(a1 + 35672), a1);
                  *(a1 + 35672) = v61;
                  goto LABEL_101;
                }

                v3 = v62;
                (*(a1 + 24))(v61, a1);
              }

              else
              {
                v3 = 4294967290;
              }
            }

            v5 = (a1 + 72040);
            goto LABEL_113;
          }
        }

        else
        {
          *(a1 + 72876) = -1;
        }
      }
    }

LABEL_101:
    ++*(a1 + 360);
    v5 = (a1 + 72040);
    v8 = *(a1 + 72880) - *(a1 + 35652);
    *(a1 + 72880) = v8;
    v54 = *(a1 + 488);
    if (v54 && *(v54 + 8) && ((*(a1 + 128) & 4) != 0 || *(v54 + 12)) && *(a1 + 384))
    {
      *v68 = 0;
      v64 = 0;
      v3 = (*(*(a1 + 376) + 32))(a1, v68, &v64, 40000, *(a1 + 35672));
      (*(a1 + 24))(*(a1 + 35672), a1);
      if (v3)
      {
        goto LABEL_113;
      }

      *(a1 + 35672) = *v68;
      v8 = v64;
      *(a1 + 72880) = v64;
    }

    v7 = *(a1 + 35672);
    *(a1 + 72888) = *v7;
    *(a1 + 72872) = 2;
    goto LABEL_109;
  }

  v9 = a1 + 624;
  v63 = 1;
  while (1)
  {
    if (*(a1 + 596) == -1)
    {
      v3 = 4294967283;
      goto LABEL_126;
    }

    if ((*(a1 + 128) & 2) == 0)
    {
      v63 = 0;
      v10 = 0;
      v11 = 5;
LABEL_17:
      v13 = 1;
      goto LABEL_18;
    }

    v11 = *(*(a1 + 336) + 16);
    if (!v63)
    {
      v63 = 0;
      v10 = 0;
      goto LABEL_17;
    }

    v12 = *(a1 + 464);
    v13 = 0;
    v10 = v12 ? *(v12 + 40) : 0;
LABEL_18:
    v14 = *(a1 + 35640);
    v15 = *v4 - v14;
    if (v15 < 0)
    {
      _libssh2_transport_read_cold_2();
    }

    if (v15 < v11)
    {
      break;
    }

LABEL_24:
    v18 = v11;
    v19 = *(a1 + 35664);
    if (v19)
    {
      v20 = *(a1 + 35656);
    }

    else
    {
      if (v10)
      {
        v21 = 4;
      }

      else
      {
        v21 = v11;
      }

      if (v15 < v21)
      {
        goto LABEL_96;
      }

      v22 = (v9 + v14);
      if (!v10)
      {
        if (v13)
        {
          __memcpy_chk();
        }

        else
        {
          v2 = decrypt(a1, v22, &v65, v11, 1u);
          if (v2)
          {
            goto LABEL_3;
          }

          *(a1 + 35624) = v65;
          *(a1 + 35628) = v66;
          v14 = *(a1 + 35640);
        }

        *(a1 + 35640) = v14 + v11;
        v22 = &v65;
      }

      v23 = _libssh2_ntohu32(v22);
      *(a1 + 35648) = v23;
      if (!v23)
      {
LABEL_97:
        v3 = 4294967284;
        goto LABEL_126;
      }

      if (v23 > 0x9C40)
      {
        goto LABEL_125;
      }

      if (v10)
      {
        v24 = v23 + *(*(a1 + 352) + 8) + 4;
      }

      else
      {
        v25 = v66;
        *(a1 + 35652) = v66;
        if (v23 - 1 < v25)
        {
          goto LABEL_97;
        }

        if (v13)
        {
          v26 = 0;
        }

        else
        {
          v26 = *(*(a1 + 352) + 8);
        }

        v24 = v26 + v23 - 1;
      }

      if (v24 - 40001 < 0xFFFF63C0)
      {
        goto LABEL_125;
      }

      v19 = v24;
      v27 = (*(a1 + 8))(v24, a1);
      *(a1 + 35672) = v27;
      if (!v27)
      {
        v3 = 4294967290;
        goto LABEL_126;
      }

      *(a1 + 35664) = v19;
      *(a1 + 35680) = v27;
      if (v10 || v11 < 6)
      {
        v29 = v27;
      }

      else
      {
        v28 = (v11 - 5);
        if (v28 > v19)
        {
          (*(a1 + 24))();
          goto LABEL_125;
        }

        memcpy(v27, v67, v28);
        v27 = *(a1 + 35672);
        v29 = (*(a1 + 35680) + v28);
        *(a1 + 35680) = v29;
        v19 = *(a1 + 35664);
      }

      v20 = v29 - v27;
      *(a1 + 35656) = v20;
      if (v10)
      {
        v30 = 0;
      }

      else
      {
        v30 = v18;
      }

      v15 -= v30;
    }

    if (v15 >= v19 - v20)
    {
      v15 = v19 - v20;
    }

    if (v10)
    {
      v31 = 1;
    }

    else
    {
      v31 = v13;
    }

    if ((v31 & 1) == 0)
    {
      v32 = *(*(a1 + 352) + 8);
      v33 = *(a1 + 336);
      if (v33 && (*(v33 + 32) & 1) != 0)
      {
        v32 = 0;
      }

      v34 = v19 - v32;
      if (v15 + v20 >= v34)
      {
        v35 = (v34 - v20);
        if (v34 - v20 < 0)
        {
          goto LABEL_82;
        }

        v38 = 2;
        if (v34 == v20)
        {
          goto LABEL_82;
        }
      }

      else
      {
        v35 = v15 / v18 * v18;
        if (v15 != v35)
        {
          v15 = 0;
        }

        if (v33)
        {
          v36 = *(v33 + 32);
          LODWORD(v37) = v19 - (v20 + v18) - v32;
          v37 = v35 >= v37 ? v37 : v35;
          if (v36)
          {
            v15 = 0;
            v35 = v37;
          }
        }

        if (v35 < 0)
        {
          _libssh2_transport_read_cold_1();
        }

        v38 = 0;
        if (!v35)
        {
          goto LABEL_82;
        }
      }

      v39 = decrypt(a1, (v9 + *(a1 + 35640)), *(a1 + 35680), v35, v38);
      if (v39)
      {
        v3 = v39;
        goto LABEL_123;
      }

      *(a1 + 35640) += v35;
      *(a1 + 35680) += v35;
      v19 = *(a1 + 35664);
      v20 = *(a1 + 35656) + v35;
      *(a1 + 35656) = v20;
      v15 -= v35;
    }

LABEL_82:
    if (v15 >= 1)
    {
      v41 = *(a1 + 35672);
      v40 = *(a1 + 35680);
      if (v15 <= (v19 - v40 + v41))
      {
        memcpy(v40, (v9 + *(a1 + 35640)), v15);
        *(a1 + 35640) += v15;
        *(a1 + 35680) += v15;
        v19 = *(a1 + 35664);
        v20 = *(a1 + 35656) + v15;
        *(a1 + 35656) = v20;
        goto LABEL_85;
      }

      if (v41)
      {
        (*(a1 + 24))(*(a1 + 35672), a1);
      }

LABEL_125:
      v3 = 4294967255;
      goto LABEL_126;
    }

LABEL_85:
    if (v19 == v20)
    {
      goto LABEL_6;
    }
  }

  if (v15)
  {
    memmove((a1 + 624), (v9 + v14), *v4 - v14);
  }

  *v4 = v15;
  *(a1 + 35640) = 0;
  v16 = (*(a1 + 104))(*(a1 + 592), v9 + v15, 35000 - v15, (*(a1 + 132) == 0) << 19, a1);
  if (v16 > 0)
  {
    v14 = *(a1 + 35640);
    v17 = *v4 + v16;
    *v4 = v17;
    v15 = v17 - v14;
    goto LABEL_24;
  }

  if (v16 == -35)
  {
LABEL_96:
    *(a1 + 600) |= 1u;
    goto LABEL_116;
  }

  v3 = 4294967253;
LABEL_126:
  v57 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t decrypt(uint64_t a1, char *a2, char *a3, uint64_t a4, unsigned int a5)
{
  v6 = a4;
  v10 = *(*(a1 + 336) + 16);
  v11 = *(a1 + 448);
  if ((!v11 || (*(v11 + 32) & 2) == 0) && a4 % v10)
  {
    decrypt_cold_1();
  }

  if (a4 < 1)
  {
    return 0;
  }

  v12 = 2 * v10;
  while (1)
  {
    if (v6 >= v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = v6;
    }

    if (v6 <= v10)
    {
      v14 = a5;
    }

    else
    {
      v14 = 0;
    }

    if (a5)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14;
    }

    v16 = *(a1 + 448);
    if (v16)
    {
      v17 = *(v16 + 32) & 2;
      if (v6 >= v12)
      {
        v18 = v13;
      }

      else
      {
        v18 = v6;
      }

      if (v6 >= v12)
      {
        v19 = v15;
      }

      else
      {
        v19 = 2;
      }

      v20 = v17 == 0;
      if (v17)
      {
        v21 = v18;
      }

      else
      {
        v21 = v13;
      }

      if (v20)
      {
        v22 = v15;
      }

      else
      {
        v22 = v19;
      }

      if ((a5 & 2) != 0)
      {
        v13 = v21;
        v15 = v22;
      }

      else
      {
        v15 = v15;
      }
    }

    if ((*(*(a1 + 336) + 48))(a1, a2, v13, a1 + 344, v15))
    {
      break;
    }

    memcpy(a3, a2, v13);
    a3 += v13;
    a2 += v13;
    v23 = v6 <= v13;
    v6 -= v13;
    if (v23)
    {
      return 0;
    }
  }

  (*(a1 + 24))(*(a1 + 35672), a1);
  return 4294967284;
}

uint64_t _libssh2_transport_send(uint64_t a1, void *__src, size_t __n, const void *a4, size_t a5)
{
  if ((*(a1 + 128) & 2) != 0)
  {
    v10 = *(*(a1 + 448) + 16);
  }

  else
  {
    v10 = 8;
  }

  if ((*(a1 + 128) & 9) != 1 || (result = _libssh2_kex_exchange(a1, 1, a1 + 71088), !result))
  {
    v12 = (a1 + 70688);
    if (*(a1 + 70704))
    {
      v13 = *(a1 + 70712);
      v14 = *v12 - v13;
      v15 = (*(a1 + 96))(*(a1 + 592), a1 + 35688 + v13, v14, (*(a1 + 132) == 0) << 19, a1);
      if (v15 == v14)
      {
        *v12 = 0;
        *(a1 + 70704) = 0;
LABEL_14:
        result = 0;
        *(a1 + 600) &= ~2u;
        return result;
      }

      if ((v15 & 0x8000000000000000) == 0)
      {
        *(a1 + 70712) += v15;
        if (v15 >= v14)
        {
          goto LABEL_14;
        }

        return 4294967259;
      }

      if (v15 == -35)
      {
        *(a1 + 600) |= 2u;
        return 4294967259;
      }

      return 4294967289;
    }

    *(a1 + 600) &= ~2u;
    v16 = *(a1 + 128);
    v18 = (v16 & 2) == 0 || (v17 = *(a1 + 464)) == 0 || *(v17 + 40) == 0;
    v19 = *(a1 + 488);
    if (!v19 || !*(v19 + 8))
    {
      goto LABEL_33;
    }

    if ((v16 & 4) != 0)
    {
      v20 = 1;
      if ((v16 & 2) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v20 = *(v19 + 12) != 0;
      if ((v16 & 2) == 0)
      {
        goto LABEL_33;
      }
    }

    if (v20 && *(a1 + 496))
    {
      v49 = 34739;
      v50 = 34739;
      result = (*(v19 + 24))(a1, a1 + 35693, &v50, __src, __n, a1 + 496);
      if (result)
      {
        return result;
      }

      v21 = 0;
      if (a4 && a5)
      {
        v49 -= v50;
        result = (*(*(a1 + 488) + 24))(a1, v50 + a1 + 35688 + 5, &v49, a4, a5, a1 + 496);
        if (result)
        {
          return result;
        }

        v21 = v49;
      }

      v47 = __src;
      v22 = v21 + v50;
LABEL_38:
      v23 = v18;
      if (v18)
      {
        v24 = 0;
      }

      else
      {
        v24 = 4;
      }

      v25 = v22 + 5;
      v48 = v23;
      v26 = !v23;
      if ((v16 & 2) == 0)
      {
        v26 = 1;
      }

      if (v26)
      {
        v27 = v24;
      }

      else
      {
        v27 = *(a1 + 336);
        v24 = 0;
        if (v27)
        {
          v27 = (2 * *(v27 + 32)) & 4;
        }
      }

      v28 = 0;
      v29 = v10 + (v25 - v27) / v10 * v10 - (v25 - v27);
      if (v29 >= 4)
      {
        v30 = 0;
      }

      else
      {
        v30 = v10;
      }

      v31 = v30 + v29;
      v32 = v30 + v29 + v25;
      if ((v16 & 2) != 0)
      {
        v28 = *(*(a1 + 464) + 8);
      }

      v33 = a1 + 35688;
      _libssh2_htonu32((a1 + 35688), v32 - 4);
      *(a1 + 35692) = v31;
      if (_libssh2_openssl_random((a1 + v22 + 35693), v31))
      {
        return _libssh2_error(a1, 4294967247, "Unable to get random bytes for packet padding");
      }

      v34 = v28 + v32;
      if ((v16 & 2) != 0)
      {
        if (v48)
        {
          v35 = *(a1 + 336);
          if (!v35 || (*(v35 + 32) & 1) == 0)
          {
            (*(*(a1 + 464) + 24))(a1, v33 + v32, *(a1 + 472), a1 + 35688, v32, 0, 0, a1 + 480);
          }
        }

        if (v24 < v32)
        {
          v36 = *(a1 + 448);
          LODWORD(v37) = *(v36 + 16);
          while (1)
          {
            v38 = v32 - v24;
            if (v37 >= v32 - v24)
            {
              v39 = v32 - v24;
            }

            else
            {
              v39 = v37;
            }

            v40 = *(v36 + 32);
            v41 = v32 - v37;
            v42 = 2 * (v24 == v41);
            if (v40)
            {
              v42 = 0;
            }

            if (v24)
            {
              v43 = v42;
            }

            else
            {
              v43 = 1;
            }

            if (v24 <= v32 - 2 * v39)
            {
              v41 = v24;
              v38 = v39;
            }

            v44 = (v40 & 1) != 0 ? v24 : v41;
            v45 = (v40 & 1) != 0 ? v39 : v38;
            if ((*(v36 + 48))(a1, v33 + v24, v45, a1 + 456, v43))
            {
              return 4294967252;
            }

            v36 = *(a1 + 448);
            v37 = *(v36 + 16);
            v24 = v44 + v37;
            if (v44 + v37 >= v32)
            {
              goto LABEL_81;
            }
          }
        }

        v36 = *(a1 + 448);
        if (v36)
        {
LABEL_81:
          if (*(v36 + 32))
          {
            if (v34 > v32 + *(v36 + 16))
            {
              _libssh2_transport_send_cold_1();
            }

            if ((*(v36 + 48))(a1, v33 + v32, *(*(a1 + 464) + 8), a1 + 456, 2))
            {
              return 4294967252;
            }
          }
        }

        if (!v48)
        {
          (*(*(a1 + 464) + 24))(a1, v33 + v32, *(a1 + 472), a1 + 35688, v32, 0, 0, a1 + 480);
        }
      }

      ++*(a1 + 472);
      v46 = (*(a1 + 96))(*(a1 + 592), a1 + 35688, v34, (*(a1 + 132) == 0) << 19, a1);
      if (v46 == v34)
      {
        result = 0;
        *(a1 + 70696) = 0u;
        return result;
      }

      if ((v46 & 0x8000000000000000) == 0 || v46 == -35)
      {
        *(a1 + 600) |= 2u;
        *(a1 + 70704) = __n;
        *(a1 + 70712) = v46 & ~(v46 >> 63);
        *v12 = v34;
        *(a1 + 70696) = v47;
        return 4294967259;
      }

      return 4294967289;
    }

LABEL_33:
    v22 = a5 + __n;
    if (a5 + __n > 0x87B7)
    {
      return 4294967262;
    }

    memcpy((a1 + 35693), __src, __n);
    v47 = __src;
    if (a4 && a5)
    {
      memcpy((__n + a1 + 35693), a4, a5);
    }

    goto LABEL_38;
  }

  return result;
}

int *CRYPTO_hchacha_20(int *result, int *a2, int *a3)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v12 = *a3;
  v11 = a3[1];
  v13 = 1797285236;
  v14 = 2036477234;
  v15 = 857760878;
  v16 = 1634760805;
  v17 = 22;
  v18 = a3[2];
  v19 = a3[3];
  do
  {
    v20 = v16 + v4;
    v21 = (v16 + v4) ^ v12;
    HIDWORD(v22) = v21;
    LODWORD(v22) = v21;
    v23 = (v22 >> 16) + v7;
    v24 = v23 ^ v4;
    HIDWORD(v22) = v24;
    LODWORD(v22) = v24;
    v25 = (v22 >> 20) + v20;
    LODWORD(v22) = v25 ^ __ROR4__(v21, 16);
    v26 = v22;
    HIDWORD(v22) = v22;
    v27 = (v22 >> 24) + v23;
    LODWORD(v22) = v27 ^ __ROR4__(v24, 20);
    v28 = v22;
    HIDWORD(v22) = v22;
    v29 = v22 >> 25;
    v30 = v15 + v3;
    v31 = v30 ^ v11;
    HIDWORD(v22) = v31;
    LODWORD(v22) = v31;
    v32 = (v22 >> 16) + v8;
    v33 = v32 ^ v3;
    HIDWORD(v22) = v33;
    LODWORD(v22) = v33;
    v34 = (v22 >> 20) + v30;
    LODWORD(v22) = v34 ^ __ROR4__(v31, 16);
    v35 = v22;
    HIDWORD(v22) = v22;
    v36 = (v22 >> 24) + v32;
    LODWORD(v22) = v36 ^ __ROR4__(v33, 20);
    v37 = v22;
    HIDWORD(v22) = v22;
    v38 = v22 >> 25;
    v39 = v14 + v5;
    v40 = v39 ^ v18;
    HIDWORD(v22) = v40;
    LODWORD(v22) = v40;
    v41 = (v22 >> 16) + v9;
    v42 = v41 ^ v5;
    HIDWORD(v22) = v42;
    LODWORD(v22) = v42;
    v43 = (v22 >> 20) + v39;
    LODWORD(v22) = v43 ^ __ROR4__(v40, 16);
    v44 = v22;
    HIDWORD(v22) = v22;
    v45 = (v22 >> 24) + v41;
    LODWORD(v22) = v45 ^ __ROR4__(v42, 20);
    v46 = v22;
    HIDWORD(v22) = v22;
    v47 = v22 >> 25;
    v48 = v13 + v6;
    v49 = v48 ^ v19;
    HIDWORD(v22) = v49;
    LODWORD(v22) = v49;
    v50 = (v22 >> 16) + v10;
    v51 = v50 ^ v6;
    HIDWORD(v22) = v51;
    LODWORD(v22) = v51;
    v52 = (v22 >> 20) + v48;
    LODWORD(v22) = v52 ^ __ROR4__(v49, 16);
    v53 = v22;
    HIDWORD(v22) = v22;
    v54 = (v22 >> 24) + v50;
    LODWORD(v22) = v54 ^ __ROR4__(v51, 20);
    v55 = v22;
    HIDWORD(v22) = v22;
    v56 = v22 >> 25;
    v57 = v38 + v25;
    LODWORD(v22) = v57 ^ __ROR4__(v53, 24);
    v58 = v22;
    HIDWORD(v22) = v22;
    v59 = (v22 >> 16) + v45;
    LODWORD(v22) = v59 ^ __ROR4__(v37, 25);
    v60 = v22;
    HIDWORD(v22) = v22;
    v16 = (v22 >> 20) + v57;
    LODWORD(v22) = v16 ^ __ROR4__(v58, 16);
    HIDWORD(v22) = v22;
    v19 = v22 >> 24;
    v9 = v19 + v59;
    LODWORD(v22) = v9 ^ __ROR4__(v60, 20);
    HIDWORD(v22) = v22;
    v3 = v22 >> 25;
    v61 = v47 + v34;
    LODWORD(v22) = v61 ^ __ROR4__(v26, 24);
    v62 = v22;
    HIDWORD(v22) = v22;
    v63 = (v22 >> 16) + v54;
    LODWORD(v22) = v63 ^ __ROR4__(v46, 25);
    v64 = v22;
    HIDWORD(v22) = v22;
    v15 = (v22 >> 20) + v61;
    LODWORD(v22) = v15 ^ __ROR4__(v62, 16);
    HIDWORD(v22) = v22;
    v12 = v22 >> 24;
    v10 = v12 + v63;
    LODWORD(v22) = v10 ^ __ROR4__(v64, 20);
    HIDWORD(v22) = v22;
    v5 = v22 >> 25;
    v65 = v56 + v43;
    LODWORD(v22) = v65 ^ __ROR4__(v35, 24);
    v66 = v22;
    HIDWORD(v22) = v22;
    v67 = (v22 >> 16) + v27;
    LODWORD(v22) = v67 ^ __ROR4__(v55, 25);
    v68 = v22;
    HIDWORD(v22) = v22;
    v14 = (v22 >> 20) + v65;
    LODWORD(v22) = v14 ^ __ROR4__(v66, 16);
    HIDWORD(v22) = v22;
    v11 = v22 >> 24;
    v7 = v11 + v67;
    LODWORD(v22) = v7 ^ __ROR4__(v68, 20);
    HIDWORD(v22) = v22;
    v6 = v22 >> 25;
    v69 = v29 + v52;
    LODWORD(v22) = v69 ^ __ROR4__(v44, 24);
    v70 = v22;
    HIDWORD(v22) = v22;
    v71 = (v22 >> 16) + v36;
    LODWORD(v22) = v71 ^ __ROR4__(v28, 25);
    v72 = v22;
    HIDWORD(v22) = v22;
    v13 = (v22 >> 20) + v69;
    LODWORD(v22) = v13 ^ __ROR4__(v70, 16);
    HIDWORD(v22) = v22;
    v18 = v22 >> 24;
    v8 = v18 + v71;
    v17 -= 2;
    LODWORD(v22) = v8 ^ __ROR4__(v72, 20);
    HIDWORD(v22) = v22;
    v4 = v22 >> 25;
  }

  while (v17 > 2);
  *result = v16;
  result[1] = v15;
  result[2] = v14;
  result[3] = v13;
  result[4] = v12;
  result[5] = v11;
  result[6] = v18;
  result[7] = v19;
  return result;
}

int8x8_t ChaCha_set_key(uint64_t a1, _DWORD *a2, int a3)
{
  *(a1 + 16) = *a2;
  *(a1 + 20) = a2[1];
  *(a1 + 24) = a2[2];
  *(a1 + 28) = a2[3];
  v3 = &a2[4 * (a3 == 256)];
  *(a1 + 32) = *v3;
  *(a1 + 36) = v3[1];
  *(a1 + 40) = v3[2];
  *(a1 + 44) = v3[3];
  *a1 = 1634760805;
  result = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(a3 == 256), 0x1FuLL)), 0x79622D323320646ELL, 0x79622D363120646ELL);
  *(a1 + 4) = result;
  *(a1 + 12) = 1797285236;
  *(a1 + 128) = 0;
  return result;
}

uint64_t ChaCha_set_iv(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  if (a3)
  {
    *(result + 48) = *a3;
    v3 = a3[1];
  }

  else
  {
    v3 = 0;
    *(result + 48) = 0;
  }

  *(result + 52) = v3;
  *(result + 56) = *a2;
  *(result + 60) = a2[1];
  *(result + 128) = 0;
  return result;
}

int *ChaCha(int *result, int *a2, char *a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  v8 = result + 32;
  v9 = *(result + 128);
  if (*(result + 128))
  {
    if (v9 >= a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = *(result + 128);
    }

    if (a4)
    {
      v11 = &v8[-v9];
      v12 = v10;
      do
      {
        v14 = *a3++;
        v13 = v14;
        v15 = *v11++;
        *a2 = v15 ^ v13;
        a2 = (a2 + 1);
        --v12;
      }

      while (v12);
      LOBYTE(v9) = *v8;
    }

    *v8 = v9 - v10;
    v4 = a4 - v10;
  }

  for (; v4; v4 -= v16)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      v16 = 0xFFFFFFFFLL;
    }

    else
    {
      v16 = v4;
    }

    result = chacha_encrypt_bytes(v7, a3, a2, v16);
    a3 += v16;
    a2 = (a2 + v16);
  }

  return result;
}

int *chacha_encrypt_bytes(int *result, _DWORD *a2, int *a3, unint64_t a4)
{
  v130 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v113 = 0;
    v4 = *result;
    v126 = result[2];
    v127 = result[1];
    v124 = result[4];
    v125 = result[3];
    v122 = result[6];
    v123 = result[5];
    v120 = result[8];
    v121 = result[7];
    v118 = result[10];
    v119 = result[9];
    v6 = result[12];
    v5 = result[13];
    a4 = a4;
    v7 = result[14];
    v116 = result[14];
    v117 = result[11];
    v114 = *result;
    v115 = result[15];
    while (1)
    {
      if (a4 > 0x3F)
      {
        v9 = a3;
      }

      else
      {
        v8 = 0;
        do
        {
          v9 = v129;
          v129[v8] = *(a2 + v8);
          ++v8;
        }

        while (a4 != v8);
        a2 = v129;
        v113 = a3;
      }

      v10 = -20;
      v12 = v115;
      v11 = v116;
      v13 = v5;
      v128 = v6;
      v14 = v6;
      v16 = v117;
      v15 = v118;
      v18 = v119;
      v17 = v120;
      v20 = v121;
      v19 = v122;
      v22 = v123;
      v21 = v124;
      v24 = v125;
      v23 = v126;
      v25 = v127;
      v26 = v4;
      do
      {
        v27 = v21 + v26;
        v28 = v14 ^ v27;
        HIDWORD(v29) = v28;
        LODWORD(v29) = v28;
        v30 = (v29 >> 16) + v17;
        HIDWORD(v29) = v30 ^ v21;
        LODWORD(v29) = v30 ^ v21;
        v31 = (v29 >> 20) + v27;
        LODWORD(v29) = v31 ^ __ROR4__(v28, 16);
        v32 = v29;
        HIDWORD(v29) = v29;
        v33 = (v29 >> 24) + v30;
        LODWORD(v29) = v33 ^ __ROR4__(v30 ^ v21, 20);
        v34 = v29;
        HIDWORD(v29) = v29;
        v35 = v29 >> 25;
        v36 = v22 + v25;
        v37 = v13 ^ v36;
        HIDWORD(v29) = v37;
        LODWORD(v29) = v37;
        v38 = (v29 >> 16) + v18;
        v39 = v38 ^ v22;
        HIDWORD(v29) = v39;
        LODWORD(v29) = v39;
        v40 = (v29 >> 20) + v36;
        LODWORD(v29) = v40 ^ __ROR4__(v37, 16);
        v41 = v29;
        HIDWORD(v29) = v29;
        v42 = (v29 >> 24) + v38;
        LODWORD(v29) = v42 ^ __ROR4__(v39, 20);
        v43 = v29;
        HIDWORD(v29) = v29;
        v44 = v29 >> 25;
        v45 = v19 + v23;
        v46 = v11 ^ v45;
        HIDWORD(v29) = v11 ^ v45;
        LODWORD(v29) = v11 ^ v45;
        v47 = (v29 >> 16) + v15;
        v48 = v47 ^ v19;
        HIDWORD(v29) = v48;
        LODWORD(v29) = v48;
        v49 = (v29 >> 20) + v45;
        LODWORD(v29) = v49 ^ __ROR4__(v46, 16);
        v50 = v29;
        HIDWORD(v29) = v29;
        v51 = (v29 >> 24) + v47;
        LODWORD(v29) = v51 ^ __ROR4__(v48, 20);
        v52 = v29;
        HIDWORD(v29) = v29;
        v53 = v29 >> 25;
        v54 = v20 + v24;
        v55 = v12 ^ v54;
        HIDWORD(v29) = v55;
        LODWORD(v29) = v55;
        v56 = (v29 >> 16) + v16;
        v57 = v56 ^ v20;
        HIDWORD(v29) = v56 ^ v20;
        LODWORD(v29) = v56 ^ v20;
        v58 = (v29 >> 20) + v54;
        LODWORD(v29) = v58 ^ __ROR4__(v55, 16);
        v59 = v29;
        HIDWORD(v29) = v29;
        v60 = (v29 >> 24) + v56;
        LODWORD(v29) = v60 ^ __ROR4__(v57, 20);
        v61 = v29;
        HIDWORD(v29) = v29;
        v62 = v29 >> 25;
        v63 = v44 + v31;
        LODWORD(v29) = v63 ^ __ROR4__(v59, 24);
        v64 = v29;
        HIDWORD(v29) = v29;
        v65 = (v29 >> 16) + v51;
        LODWORD(v29) = v65 ^ __ROR4__(v43, 25);
        v66 = v29;
        HIDWORD(v29) = v29;
        v26 = (v29 >> 20) + v63;
        LODWORD(v29) = v26 ^ __ROR4__(v64, 16);
        HIDWORD(v29) = v29;
        v12 = v29 >> 24;
        v15 = v12 + v65;
        LODWORD(v29) = (v12 + v65) ^ __ROR4__(v66, 20);
        HIDWORD(v29) = v29;
        v22 = v29 >> 25;
        v67 = v53 + v40;
        LODWORD(v29) = v67 ^ __ROR4__(v32, 24);
        v68 = v29;
        HIDWORD(v29) = v29;
        v69 = (v29 >> 16) + v60;
        LODWORD(v29) = v69 ^ __ROR4__(v52, 25);
        v70 = v29;
        HIDWORD(v29) = v29;
        v25 = (v29 >> 20) + v67;
        LODWORD(v29) = v25 ^ __ROR4__(v68, 16);
        HIDWORD(v29) = v29;
        v14 = v29 >> 24;
        v16 = v14 + v69;
        LODWORD(v29) = (v14 + v69) ^ __ROR4__(v70, 20);
        HIDWORD(v29) = v29;
        v19 = v29 >> 25;
        v71 = v62 + v49;
        LODWORD(v29) = v71 ^ __ROR4__(v41, 24);
        v72 = v29;
        HIDWORD(v29) = v29;
        v73 = (v29 >> 16) + v33;
        LODWORD(v29) = v73 ^ __ROR4__(v61, 25);
        v74 = v29;
        HIDWORD(v29) = v29;
        v23 = (v29 >> 20) + v71;
        LODWORD(v29) = v23 ^ __ROR4__(v72, 16);
        HIDWORD(v29) = v29;
        v13 = v29 >> 24;
        v17 = v13 + v73;
        LODWORD(v29) = (v13 + v73) ^ __ROR4__(v74, 20);
        HIDWORD(v29) = v29;
        v20 = v29 >> 25;
        v75 = v35 + v58;
        LODWORD(v29) = v75 ^ __ROR4__(v50, 24);
        v76 = v29;
        HIDWORD(v29) = v29;
        v77 = (v29 >> 16) + v42;
        LODWORD(v29) = v77 ^ __ROR4__(v34, 25);
        v78 = v29;
        HIDWORD(v29) = v29;
        v24 = (v29 >> 20) + v75;
        LODWORD(v29) = v24 ^ __ROR4__(v76, 16);
        HIDWORD(v29) = v29;
        v11 = v29 >> 24;
        v18 = v11 + v77;
        LODWORD(v29) = (v11 + v77) ^ __ROR4__(v78, 20);
        HIDWORD(v29) = v29;
        v21 = v29 >> 25;
        v10 += 2;
      }

      while (v10);
      v79 = v26 + v4;
      v80 = v25 + v127;
      v81 = v23 + v126;
      v82 = v24 + v125;
      v83 = v21 + v124;
      v84 = v22 + v123;
      v85 = v19 + v122;
      v86 = v20 + v121;
      v87 = v17 + v120;
      v88 = v18 + v119;
      v89 = v15 + v118;
      v90 = v16 + v117;
      v91 = v14 + v128;
      v92 = v13 + v5;
      v93 = v11 + v116;
      v94 = v12 + v115;
      if (a4 <= 0x3F)
      {
        result[16] = v79;
        result[17] = v80;
        result[18] = v81;
        result[19] = v82;
        result[20] = v83;
        result[21] = v84;
        result[22] = v85;
        result[23] = v86;
        result[24] = v87;
        result[25] = v88;
        result[26] = v89;
        result[27] = v90;
        result[28] = v91;
        result[29] = v92;
        result[30] = v93;
        result[31] = v94;
      }

      v95 = *a2 ^ v79;
      v96 = a2[1] ^ v80;
      v97 = a2[2] ^ v81;
      v98 = a2[3] ^ v82;
      v99 = a2[4] ^ v83;
      v100 = a2[5] ^ v84;
      v101 = a2[6] ^ v85;
      v102 = a2[7] ^ v86;
      v103 = a2[8] ^ v87;
      v104 = a2[9] ^ v88;
      v105 = a2[10] ^ v89;
      v106 = a2[11] ^ v90;
      v107 = a2[12] ^ v91;
      v108 = a2[13] ^ v92;
      v109 = a2[14] ^ v93;
      v110 = a2[15] ^ v94;
      v6 = v128 + 1;
      if (v128 == -1)
      {
        ++v5;
      }

      *v9 = v95;
      v9[1] = v96;
      v9[2] = v97;
      v9[3] = v98;
      v9[4] = v99;
      v9[5] = v100;
      v9[6] = v101;
      v9[7] = v102;
      v9[8] = v103;
      v9[9] = v104;
      v9[10] = v105;
      v9[11] = v106;
      v9[12] = v107;
      v9[13] = v108;
      v9[14] = v109;
      v9[15] = v110;
      if (a4 <= 0x40)
      {
        break;
      }

      a3 = v9 + 16;
      a2 += 16;
      a4 -= 64;
      v4 = v114;
    }

    if ((a4 - 1) <= 0x3E)
    {
      v111 = 0;
      do
      {
        *(v113 + v111) = *(v9 + v111);
        ++v111;
      }

      while (v111 < a4);
    }

    result[12] = v6;
    result[13] = v5;
    *(result + 128) = 64 - a4;
  }

  v112 = *MEMORY[0x277D85DE8];
  return result;
}

int *CRYPTO_chacha_20(int *result, _DWORD *a2, unint64_t a3, _OWORD *a4, uint64_t *a5, uint64_t a6)
{
  v6 = a3;
  v8 = result;
  v20 = *MEMORY[0x277D85DE8];
  v9 = a4[1];
  v12[1] = *a4;
  v12[2] = v9;
  v12[0] = xmmword_23E22CAB0;
  v13 = 0;
  v14 = *a5;
  if (a6)
  {
    v13 = a6;
  }

  if (a3)
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    do
    {
      if (v6 >= 0xFFFFFFFF)
      {
        v10 = 0xFFFFFFFFLL;
      }

      else
      {
        v10 = v6;
      }

      result = chacha_encrypt_bytes(v12, a2, v8, v10);
      a2 = (a2 + v10);
      v8 = (v8 + v10);
      v6 -= v10;
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

int *CRYPTO_xchacha_20(int *a1, _DWORD *a2, unint64_t a3, int *a4, uint64_t a5)
{
  v12 = *MEMORY[0x277D85DE8];
  CRYPTO_hchacha_20(v11, a4, a5);
  result = CRYPTO_chacha_20(a1, a2, a3, v11, (a5 + 16), 0);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

int UTF8_getc(const unsigned __int8 *str, int len, unint64_t *val)
{
  if (len < 1)
  {
    return 0;
  }

  if ((*str & 0x80000000) == 0)
  {
    v4 = *str;
    result = 1;
LABEL_4:
    *val = v4;
    return result;
  }

  v6 = *str;
  if ((v6 & 0xE0) == 0xC0)
  {
    if (v6 < 0xC2)
    {
      return -2;
    }

    if (len != 1)
    {
      v11 = str[1];
      if ((v11 & 0xC0) == 0x80)
      {
        v12 = (v6 & 0x1F) << 6;
        if (v12 >= 0x80)
        {
          v4 = v11 & 0x3F | v12;
          result = 2;
          goto LABEL_4;
        }

        return -4;
      }

      return -3;
    }

    return -1;
  }

  if ((v6 & 0xF0) == 0xE0)
  {
    if (len >= 3)
    {
      v7 = str[1];
      if ((v7 & 0xC0) == 0x80)
      {
        v8 = str[2];
        if ((v8 & 0xC0) == 0x80)
        {
          v9 = (v6 & 0xF) << 12;
          v10 = v9 | ((v7 & 0x3F) << 6);
          if (v10 >= 0x800)
          {
            v4 = v10 | v8 & 0x3F;
            result = 3;
            if (v9 >> 13 > 6 || v10 >> 11 <= 0x1A)
            {
              goto LABEL_4;
            }

            return -2;
          }

          return -4;
        }
      }

      return -3;
    }

    return -1;
  }

  result = -2;
  if (v6 <= 0xF4 && (v6 & 0xF8) == 0xF0)
  {
    if (len < 4)
    {
      return -1;
    }

    v13 = str[1];
    if ((v13 & 0xC0) != 0x80)
    {
      return -3;
    }

    v14 = str[2];
    if ((v14 & 0xC0) != 0x80)
    {
      return -3;
    }

    v15 = str[3];
    if ((v15 & 0xC0) != 0x80)
    {
      return -3;
    }

    v16 = ((v6 & 7) << 18) | ((v13 & 0x3F) << 12);
    if (v16 < 0x10000)
    {
      return -4;
    }

    if (WORD1(v16) <= 0x10u)
    {
      v4 = v15 & 0x3F | ((v14 & 0x3F) << 6) | v16;
      result = 4;
      goto LABEL_4;
    }
  }

  return result;
}

int UTF8_putc(unsigned __int8 *str, int len, unint64_t value)
{
  if (value <= 0x7F)
  {
    if (!str)
    {
      return 1;
    }

    if (len >= 1)
    {
      *str = value;
      return 1;
    }

    return -1;
  }

  if (value <= 0x7FF)
  {
    if (str)
    {
      if (len < 2)
      {
        return -1;
      }

      *str = (value >> 6) | 0xC0;
      str[1] = value & 0x3F | 0x80;
    }

    return 2;
  }

  if (value >> 16)
  {
    if (value >> 16 <= 0x10)
    {
      if (str)
      {
        if (len < 4)
        {
          return -1;
        }

        *str = (value >> 18) | 0xF0;
        str[1] = (value >> 12) & 0x3F | 0x80;
        str[2] = (value >> 6) & 0x3F | 0x80;
        str[3] = value & 0x3F | 0x80;
      }

      return 4;
    }

    return -2;
  }

  if ((value & 0xF800) == 0xD800)
  {
    return -2;
  }

  if (str)
  {
    if (len < 3)
    {
      return -1;
    }

    *str = (value >> 12) | 0xE0;
    str[1] = (value >> 6) & 0x3F | 0x80;
    str[2] = value & 0x3F | 0x80;
  }

  return 3;
}

uint64_t EVP_PKEY_asn1_get_count()
{
  if (asn1_app_methods)
  {
    return (sk_num(asn1_app_methods) + 18);
  }

  else
  {
    return 18;
  }
}

char *EVP_PKEY_asn1_get0(unsigned int a1)
{
  if ((a1 & 0x80000000) != 0)
  {
    return 0;
  }

  if (a1 > 0x11)
  {
    return sk_value(asn1_app_methods, a1 - 18);
  }

  return *(&asn1_methods + a1);
}

uint64_t EVP_PKEY_asn1_find(char **a1, int a2)
{
LABEL_1:
  if (asn1_app_methods)
  {
    v4 = (sk_num(asn1_app_methods) + 18);
  }

  else
  {
    v4 = 18;
  }

  while (v4 >= 1)
  {
    if (v4 > 0x12)
    {
      v5 = sk_value(asn1_app_methods, v4 - 19);
    }

    else
    {
      v5 = *(&asn1_methods + v4 - 1);
    }

    --v4;
    if (*v5 == a2)
    {
      if ((v5[8] & 1) == 0)
      {
        goto LABEL_12;
      }

      a2 = *(v5 + 1);
      goto LABEL_1;
    }
  }

  v5 = 0;
LABEL_12:
  if (!a1)
  {
    return v5;
  }

  pkey_asn1_meth_engine = ENGINE_get_pkey_asn1_meth_engine(a2);
  if (!pkey_asn1_meth_engine)
  {
    *a1 = 0;
    return v5;
  }

  *a1 = pkey_asn1_meth_engine;

  return ENGINE_get_pkey_asn1_meth(pkey_asn1_meth_engine);
}

char *EVP_PKEY_asn1_find_str(ENGINE **a1, char *__s, signed int a3)
{
  v3 = a3;
  if (a3 == -1)
  {
    v3 = strlen(__s);
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  else if (!a1)
  {
    goto LABEL_11;
  }

  e = 0;
  str = ENGINE_pkey_asn1_find_str(&e, __s, v3);
  if (str)
  {
    v7 = str;
    if (ENGINE_init(e))
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    ENGINE_free(e);
    *a1 = e;
    return v8;
  }

  *a1 = 0;
LABEL_11:
  if (asn1_app_methods)
  {
    v9 = sk_num(asn1_app_methods);
    if (v9 < -17)
    {
      return 0;
    }

    v10 = v9 + 18;
  }

  else
  {
    v10 = 18;
  }

  v11 = v10 - 19;
  v12 = v10;
  while (1)
  {
    v8 = v12 > 0x12 ? sk_value(asn1_app_methods, v11) : *(&asn1_methods + v12 - 1);
    if ((v8[8] & 1) == 0 && v3 == strlen(*(v8 + 2)) && !strncasecmp(*(v8 + 2), __s, v3))
    {
      break;
    }

    --v12;
    --v11;
    if (v12 + 1 <= 1)
    {
      return 0;
    }
  }

  return v8;
}

STACK *EVP_PKEY_asn1_add0(char *data)
{
  result = asn1_app_methods;
  if (asn1_app_methods)
  {
    return (sk_push(result, data) != 0);
  }

  result = sk_new(0);
  asn1_app_methods = result;
  if (result)
  {
    return (sk_push(result, data) != 0);
  }

  return result;
}

uint64_t EVP_PKEY_asn1_add_alias(int a1, int a2)
{
  result = malloc_type_calloc(1uLL, 0x110uLL, 0x1090040E55D908EuLL);
  if (result)
  {
    v5 = result;
    *(result + 8) = 3;
    *result = a2;
    *(result + 4) = a1;
    if (EVP_PKEY_asn1_add0(result))
    {
      return 1;
    }

    else
    {
      EVP_PKEY_asn1_free(v5);
      return 0;
    }
  }

  return result;
}

uint64_t EVP_PKEY_asn1_new(int a1, int a2, const char *a3, const char *a4)
{
  v8 = malloc_type_calloc(1uLL, 0x110uLL, 0x1090040E55D908EuLL);
  v9 = v8;
  if (v8)
  {
    if ((*v8 = a1, v8[1] = a1, *(v8 + 1) = a2 | 2, a4) && (v10 = strdup(a4), (*(v9 + 24) = v10) == 0) || a3 && (v11 = strdup(a3), (*(v9 + 16) = v11) == 0))
    {
      EVP_PKEY_asn1_free(v9);
      return 0;
    }
  }

  return v9;
}

void EVP_PKEY_asn1_free(uint64_t a1)
{
  if (a1 && (*(a1 + 8) & 2) != 0)
  {
    free(*(a1 + 16));
    free(*(a1 + 24));

    free(a1);
  }
}

uint64_t EVP_PKEY_asn1_get0_info(_DWORD *a1, _DWORD *a2, _DWORD *a3, void *a4, void *a5, uint64_t a6)
{
  if (!a6)
  {
    return 0;
  }

  if (a1)
  {
    *a1 = *a6;
  }

  if (a2)
  {
    *a2 = *(a6 + 4);
  }

  if (a3)
  {
    *a3 = *(a6 + 8);
  }

  if (a4)
  {
    *a4 = *(a6 + 24);
  }

  if (a5)
  {
    *a5 = *(a6 + 16);
  }

  return 1;
}

__n128 EVP_PKEY_asn1_copy(__n128 *a1, const void *a2)
{
  v3 = a1->n128_u64[1];
  v4 = a1->n128_u64[0];
  v6 = a1[1];
  memcpy(a1, a2, 0x110uLL);
  a1->n128_u64[0] = v4;
  a1->n128_u64[1] = v3;
  result = v6;
  a1[1] = v6;
  return result;
}

void *EVP_PKEY_asn1_set_public(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result[4] = a2;
  result[5] = a3;
  result[6] = a4;
  result[7] = a5;
  result[11] = a6;
  result[12] = a7;
  return result;
}

void *EVP_PKEY_asn1_set_private(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result[8] = a2;
  result[9] = a3;
  result[10] = a4;
  return result;
}

void *EVP_PKEY_asn1_set_param(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result[14] = a2;
  result[15] = a3;
  result[16] = a4;
  result[17] = a5;
  result[18] = a6;
  result[19] = a7;
  return result;
}

int RSA_generate_key_ex(RSA *rsa, int bits, BIGNUM *e, BN_GENCB *cb)
{
  rsa_keygen = rsa->meth->rsa_keygen;
  if (rsa_keygen)
  {

    return rsa_keygen();
  }

  else
  {
    memset(&v49, 0, sizeof(v49));
    memset(&v48, 0, sizeof(v48));
    memset(&v47, 0, sizeof(v47));
    v10 = BN_CTX_new();
    v11 = v10;
    if (v10)
    {
      BN_CTX_start(v10);
      v12 = BN_CTX_get(v11);
      if (v12)
      {
        v13 = v12;
        v14 = BN_CTX_get(v11);
        if (v14)
        {
          v15 = v14;
          v16 = BN_CTX_get(v11);
          if (v16)
          {
            v17 = v16;
            if (BN_CTX_get(v11))
            {
              if (rsa->n || (v18 = BN_new(), (rsa->n = v18) != 0))
              {
                if (rsa->d || (v19 = BN_new(), (rsa->d = v19) != 0))
                {
                  if (rsa->e || (v20 = BN_new(), (rsa->e = v20) != 0))
                  {
                    if (rsa->p || (v21 = BN_new(), (rsa->p = v21) != 0))
                    {
                      if (rsa->q || (v22 = BN_new(), (rsa->q = v22) != 0))
                      {
                        if (rsa->dmp1 || (v23 = BN_new(), (rsa->dmp1 = v23) != 0))
                        {
                          if (rsa->dmq1 || (v24 = BN_new(), (rsa->dmq1 = v24) != 0))
                          {
                            if (rsa->iqmp || (v25 = BN_new(), (rsa->iqmp = v25) != 0))
                            {
                              if (bn_copy(rsa->e, e))
                              {
                                v26 = 0;
                                v27 = (bits + 1) / 2;
                                v28 = bits - v27;
                                do
                                {
                                  if (!BN_generate_prime_ex(rsa->p, v27, 0, 0, 0, cb))
                                  {
                                    break;
                                  }

                                  p = rsa->p;
                                  v30 = BN_value_one();
                                  if (!BN_sub(v17, p, v30) || !BN_gcd_ct(v15, v17, rsa->e, v11))
                                  {
                                    break;
                                  }

                                  if (BN_is_one(v15))
                                  {
                                    if (BN_GENCB_call(cb, 3, 0))
                                    {
LABEL_35:
                                      v32 = 3;
                                      while (BN_generate_prime_ex(rsa->q, v28, 0, 0, 0, cb))
                                      {
                                        if (BN_cmp(rsa->p, rsa->q))
                                        {
                                          q = rsa->q;
                                          v34 = BN_value_one();
                                          if (BN_sub(v17, q, v34) && BN_gcd_ct(v15, v17, rsa->e, v11))
                                          {
                                            if (BN_is_one(v15))
                                            {
                                              if (BN_GENCB_call(cb, 3, 1))
                                              {
                                                v38 = BN_cmp(rsa->p, rsa->q);
                                                v40 = rsa->p;
                                                v39 = rsa->q;
                                                if (v38 < 0)
                                                {
                                                  rsa->p = v39;
                                                  rsa->q = v40;
                                                  v41 = v40;
                                                }

                                                else
                                                {
                                                  v41 = rsa->q;
                                                  v39 = rsa->p;
                                                }

                                                if (BN_mul(rsa->n, v39, v41, v11))
                                                {
                                                  v42 = rsa->p;
                                                  v43 = BN_value_one();
                                                  if (BN_sub(v15, v42, v43))
                                                  {
                                                    v44 = rsa->q;
                                                    v45 = BN_value_one();
                                                    if (BN_sub(v17, v44, v45))
                                                    {
                                                      if (BN_mul(v13, v15, v17, v11))
                                                      {
                                                        BN_init(&v49);
                                                        BN_with_flags(&v49, v13, 4);
                                                        if (BN_mod_inverse_ct(rsa->d, rsa->e, &v49, v11))
                                                        {
                                                          BN_init(&v48);
                                                          BN_with_flags(&v48, rsa->d, 4);
                                                          if (BN_mod_ct(rsa->dmp1, &v48, v15, v11))
                                                          {
                                                            if (BN_mod_ct(rsa->dmq1, &v48, v17, v11))
                                                            {
                                                              BN_init(&v47);
                                                              BN_with_flags(&v47, rsa->p, 4);
                                                              if (BN_mod_inverse_ct(rsa->iqmp, rsa->q, &v47, v11))
                                                              {
                                                                v46 = 1;
                                                                goto LABEL_60;
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

                                            else if (BN_GENCB_call(cb, 2, v26++))
                                            {
                                              goto LABEL_35;
                                            }
                                          }

                                          goto LABEL_58;
                                        }

                                        if (!--v32)
                                        {
                                          v36 = 120;
                                          v37 = 154;
                                          goto LABEL_59;
                                        }
                                      }
                                    }

                                    break;
                                  }
                                }

                                while (BN_GENCB_call(cb, 2, v26++));
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
          }
        }
      }
    }

LABEL_58:
    v36 = 3;
    v37 = 213;
LABEL_59:
    ERR_put_error(4, 4095, v36, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_gen.c", v37);
    v46 = 0;
LABEL_60:
    if (v11)
    {
      BN_CTX_end(v11);
      BN_CTX_free(v11);
    }

    return v46;
  }
}

RSA *__cdecl RSA_generate_key(int bits, unint64_t e, void (__cdecl *callback)(int, int, void *), void *cb_arg)
{
  memset(&cb, 0, sizeof(cb));
  v8 = RSA_new();
  v9 = BN_new();
  v10 = v9;
  if (v8 && v9)
  {
    v11 = 0;
    while (((e >> v11) & 1) == 0 || BN_set_bit(v10, v11))
    {
      if (++v11 == 64)
      {
        BN_GENCB_set_old(&cb, callback, cb_arg);
        if (!RSA_generate_key_ex(v8, bits, v10, &cb))
        {
          break;
        }

        BN_free(v10);
        return v8;
      }
    }
  }

  BN_free(v10);
  RSA_free(v8);
  return 0;
}

X509_LOOKUP *__cdecl X509_LOOKUP_new(X509_LOOKUP_METHOD *method)
{
  v2 = malloc_type_calloc(1uLL, 0x20uLL, 0x1030040AE83759AuLL);
  v3 = v2;
  if (v2)
  {
    v2->method = method;
    new_item = method->new_item;
    if (new_item && !(new_item)(v2))
    {
      free(v3);
      return 0;
    }
  }

  else
  {
    ERR_put_error(11, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_lu.c", 74);
  }

  return v3;
}

void X509_LOOKUP_free(X509_LOOKUP *ctx)
{
  if (ctx)
  {
    method = ctx->method;
    if (method)
    {
      free = method->free;
      if (free)
      {
        (free)(ctx);
      }
    }

    ::free(ctx);
  }
}

int X509_LOOKUP_init(X509_LOOKUP *ctx)
{
  method = ctx->method;
  if (!method)
  {
    return 0;
  }

  init = method->init;
  if (init)
  {
    return init();
  }

  else
  {
    return 1;
  }
}

int X509_LOOKUP_shutdown(X509_LOOKUP *ctx)
{
  method = ctx->method;
  if (!method)
  {
    return 0;
  }

  shutdown = method->shutdown;
  if (shutdown)
  {
    return shutdown();
  }

  else
  {
    return 1;
  }
}

int X509_LOOKUP_ctrl(X509_LOOKUP *ctx, int cmd, const char *argc, uint64_t argl, char **ret)
{
  method = ctx->method;
  if (!method)
  {
    return -1;
  }

  ctrl = method->ctrl;
  if (ctrl)
  {
    return ctrl();
  }

  else
  {
    return 1;
  }
}

int X509_LOOKUP_by_subject(X509_LOOKUP *ctx, int type, X509_NAME *name, X509_OBJECT *ret)
{
  method = ctx->method;
  if (method && (get_by_subject = method->get_by_subject) != 0)
  {
    return get_by_subject();
  }

  else
  {
    return 0;
  }
}

int X509_LOOKUP_by_issuer_serial(X509_LOOKUP *ctx, int type, X509_NAME *name, ASN1_INTEGER *serial, X509_OBJECT *ret)
{
  method = ctx->method;
  if (method && (get_by_issuer_serial = method->get_by_issuer_serial) != 0)
  {
    return get_by_issuer_serial();
  }

  else
  {
    return 0;
  }
}

int X509_LOOKUP_by_fingerprint(X509_LOOKUP *ctx, int type, unsigned __int8 *bytes, int len, X509_OBJECT *ret)
{
  method = ctx->method;
  if (method && (get_by_fingerprint = method->get_by_fingerprint) != 0)
  {
    return get_by_fingerprint();
  }

  else
  {
    return 0;
  }
}

int X509_LOOKUP_by_alias(X509_LOOKUP *ctx, int type, char *str, int len, X509_OBJECT *ret)
{
  method = ctx->method;
  if (method && (get_by_alias = method->get_by_alias) != 0)
  {
    return get_by_alias();
  }

  else
  {
    return 0;
  }
}

X509_STORE *X509_STORE_new(void)
{
  v0 = malloc_type_calloc(1uLL, 0x80uLL, 0x10A0040B451168FuLL);
  if (v0 && (v1 = sk_new(x509_object_cmp), (*v0 = v1) != 0) && (v2 = sk_new_null(), (*(v0 + 1) = v2) != 0) && (v3 = X509_VERIFY_PARAM_new(), (*(v0 + 2) = v3) != 0) && CRYPTO_new_ex_data(4, v0, v0 + 7))
  {
    *(v0 + 30) = 1;
  }

  else
  {
    ERR_put_error(11, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_lu.c", 215);
    X509_STORE_free(v0);
    return 0;
  }

  return v0;
}

uint64_t x509_object_cmp(const X509_CRL ***a1, const X509_CRL ***a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *a2;
  v5 = **a2;
  result = (v3 - v5);
  if (v3 == v5)
  {
    if (v3 == 2)
    {
      return X509_CRL_cmp(v2[1], v4[1]);
    }

    else if (v3 == 1)
    {
      return X509_subject_name_cmp(v2[1], v4[1]);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void X509_STORE_free(X509_STORE *v)
{
  if (v && CRYPTO_add_lock(&v->references, -1, 11, 0, 0) <= 0)
  {
    objs = v->objs;
    if (sk_num(objs) >= 1)
    {
      v3 = 0;
      do
      {
        v4 = sk_value(objs, v3);
        v5 = v4;
        v6 = *(v4 + 1);
        if (v6)
        {
          v7 = *(v6 + 32);
          if (v7)
          {
            v7(v4);
          }
        }

        X509_LOOKUP_free(v5);
        ++v3;
      }

      while (v3 < sk_num(objs));
    }

    sk_free(objs);
    sk_pop_free(*&v->cache, X509_OBJECT_free);
    CRYPTO_free_ex_data(4, v, &v->ex_data.dummy);
    X509_VERIFY_PARAM_free(v->get_cert_methods);

    free(v);
  }
}

_DWORD *X509_OBJECT_new()
{
  v0 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
  v1 = v0;
  if (v0)
  {
    *v0 = 0;
  }

  else
  {
    ERR_put_error(11, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_lu.c", 228);
  }

  return v1;
}

void X509_OBJECT_free(X509_CRL **a1)
{
  if (a1)
  {
    if (*a1 == 2)
    {
      X509_CRL_free(a1[1]);
    }

    else if (*a1 == 1)
    {
      X509_free(a1[1]);
    }

    free(a1);
  }
}

X509_LOOKUP *__cdecl X509_STORE_add_lookup(X509_STORE *v, X509_LOOKUP_METHOD *m)
{
  objs = v->objs;
  if (sk_num(objs) < 1)
  {
LABEL_5:
    v7 = X509_LOOKUP_new(m);
    v8 = v7;
    if (v7)
    {
      v7->store_ctx = v;
      if (sk_push(v->objs, v7) <= 0)
      {
        ERR_put_error(11, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_lu.c", 312);
        method = v8->method;
        if (method)
        {
          free = method->free;
          if (free)
          {
            (free)(v8);
          }
        }

        ::free(v8);
        return 0;
      }
    }
  }

  else
  {
    v5 = 0;
    while (1)
    {
      v6 = sk_value(objs, v5);
      if (v6->method == m)
      {
        return v6;
      }

      if (++v5 >= sk_num(objs))
      {
        goto LABEL_5;
      }
    }
  }

  return v8;
}

X509_OBJECT *X509_STORE_CTX_get_obj_by_subject(uint64_t *a1, uint64_t a2, X509_NAME *a3)
{
  v6 = X509_OBJECT_new();
  if (v6)
  {
    X509_STORE_CTX_get_by_subject(a1, a2, a3, v6);
    if (!v7)
    {
      X509_OBJECT_free(v6);
      return 0;
    }
  }

  return v6;
}

void X509_STORE_CTX_get_by_subject(uint64_t *a1, uint64_t a2, X509_NAME *a3, X509_OBJECT *a4)
{
  v4 = *a1;
  if (*a1)
  {
    v14[0] = 0;
    v14[1] = 0;
    CRYPTO_lock(9, 11, 0, 0);
    v8 = X509_OBJECT_retrieve_by_subject(*v4, a2, a3);
    CRYPTO_lock(10, 11, 0, 0);
    if (a2 == 2 || !v8)
    {
      if (sk_num(*(v4 + 8)) < 1)
      {
LABEL_10:
        if (!v8)
        {
          return;
        }
      }

      else
      {
        v9 = 0;
        while (1)
        {
          v10 = sk_value(*(v4 + 8), v9);
          v11 = *(v10 + 1);
          if (v11)
          {
            v12 = *(v11 + 48);
            if (v12)
            {
              if (v12(v10, a2))
              {
                break;
              }
            }
          }

          if (++v9 >= sk_num(*(v4 + 8)))
          {
            goto LABEL_10;
          }
        }

        v8 = v14;
      }
    }

    X509_OBJECT_up_ref_count(v8);
    if (v13)
    {
      *a4 = *v8;
    }
  }
}

X509_OBJECT *__cdecl X509_OBJECT_retrieve_by_subject(STACK *h, int type, X509_NAME *name)
{
  v4 = x509_object_idx_cnt(h, type, name, 0);
  if (v4 == -1)
  {
    return 0;
  }

  return sk_value(h, v4);
}

void X509_OBJECT_up_ref_count(X509_OBJECT *a)
{
  if (a->type == 2)
  {
    X509_CRL_up_ref(a->data.ptr);
  }

  else if (a->type == 1)
  {
    X509_up_ref(a->data.ptr);
  }
}

int X509_STORE_add_cert(X509_STORE *ctx, X509 *x)
{
  if (!x)
  {
    return 0;
  }

  v4 = X509_OBJECT_new();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (!X509_up_ref(x))
  {
    X509_OBJECT_free(v5);
    return 0;
  }

  *v5 = 1;
  *(v5 + 1) = x;

  return X509_STORE_add_object(ctx, v5);
}

uint64_t X509_STORE_add_object(STACK **a1, char *a2)
{
  CRYPTO_lock(9, 11, 0, 0);
  if (!X509_OBJECT_retrieve_match(*a1, a2))
  {
    if (sk_push(*a1, a2) <= 0)
    {
      ERR_put_error(11, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_lu.c", 392);
      v4 = 0;
      goto LABEL_5;
    }

    a2 = 0;
  }

  v4 = 1;
LABEL_5:
  CRYPTO_lock(10, 11, 0, 0);
  X509_OBJECT_free(a2);
  return v4;
}

int X509_STORE_add_crl(X509_STORE *ctx, X509_CRL *x)
{
  if (!x)
  {
    return 0;
  }

  v4 = X509_OBJECT_new();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (!X509_CRL_up_ref(x))
  {
    X509_OBJECT_free(v5);
    return 0;
  }

  *v5 = 2;
  *(v5 + 1) = x;

  return X509_STORE_add_object(ctx, v5);
}

uint64_t x509_object_idx_cnt(STACK *st, int a2, uint64_t a3, _DWORD *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  *&data[4] = 0;
  v19 = 0;
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  memset(v20, 0, sizeof(v20));
  memset(v15, 0, sizeof(v15));
  v14 = 0u;
  *data = a2;
  if (a2 == 2)
  {
    v19 = v20;
    *&v20[0] = &v14;
    v6 = v15;
  }

  else
  {
    if (a2 != 1)
    {
      v8 = 0xFFFFFFFFLL;
      goto LABEL_12;
    }

    v19 = v21;
    *&v21[0] = v16;
    v6 = &v16[2] + 1;
  }

  *v6 = a3;
  v7 = sk_find(st, data);
  v8 = v7;
  if (a4 && (v7 & 0x80000000) == 0)
  {
    *a4 = 1;
    v12 = data;
    for (i = v7 + 1; i < sk_num(st); ++i)
    {
      v13 = sk_value(st, i);
      if (x509_object_cmp(&v13, &v12))
      {
        break;
      }

      ++*a4;
    }
  }

LABEL_12:
  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t X509_OBJECT_get0_X509(uint64_t result)
{
  if (result)
  {
    if (*result == 1)
    {
      return *(result + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t X509_OBJECT_get0_X509_CRL(uint64_t result)
{
  if (result)
  {
    if (*result == 2)
    {
      return *(result + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

X509_CRL **X509_STORE_CTX_get1_certs(STACK ***a1, X509_NAME *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  result = X509_get1_certs_from_cache(*a1, a2);
  if (!result)
  {
    result = X509_STORE_CTX_get_obj_by_subject(a1, 1, a2);
    if (result)
    {
      X509_OBJECT_free(result);

      return X509_get1_certs_from_cache(v2, a2);
    }
  }

  return result;
}

STACK *X509_get1_certs_from_cache(STACK **a1, uint64_t a2)
{
  v10 = 0;
  CRYPTO_lock(9, 11, 0, 0);
  v4 = x509_object_idx_cnt(*a1, 1, a2, &v10);
  if (v4 < 0)
  {
    v6 = 0;
  }

  else
  {
    v5 = v4;
    v6 = sk_new_null();
    if (v6)
    {
      if (v10 < 1)
      {
LABEL_8:
        CRYPTO_lock(10, 11, 0, 0);
        return v6;
      }

      v7 = 0;
      while (1)
      {
        v8 = *(sk_value(*a1, v5) + 1);
        if (!X509_up_ref(v8))
        {
          break;
        }

        if (!sk_push(v6, v8))
        {
          goto LABEL_11;
        }

        ++v7;
        ++v5;
        if (v7 >= v10)
        {
          goto LABEL_8;
        }
      }
    }
  }

  v8 = 0;
LABEL_11:
  CRYPTO_lock(10, 11, 0, 0);
  sk_pop_free(v6, X509_free);
  X509_free(v8);
  return 0;
}