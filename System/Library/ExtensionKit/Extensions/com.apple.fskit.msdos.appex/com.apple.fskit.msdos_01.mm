__n128 getstdfmt(char *__s1, uint64_t a2)
{
  v4 = 10;
  for (i = &xmmword_1000597E8; strcmp(__s1, *(i - 1)); i += 5)
  {
    if (!--v4)
    {
      v14 = newfs_ctx;
      v15 = qword_100059E78;
      newfs_print(&v14, 3, "%s: unknown standard format", v6, v7, v8, v9, v10, __s1);
      return result;
    }
  }

  *a2 = *i;
  result = i[1];
  v12 = i[2];
  v13 = i[3];
  *(a2 + 64) = *(i + 16);
  *(a2 + 32) = v12;
  *(a2 + 48) = v13;
  *(a2 + 16) = result;
  return result;
}

uint64_t getdiskinfo(uint64_t a1, int a2, unsigned int *a3)
{
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v7 == -1)
  {
    v9 = __error();
    v10 = strerror(*v9);
    v11 = *(a1 + 8);
    v46 = newfs_ctx;
    v47 = qword_100059E78;
    newfs_print(&v46, 6, "%s: %s: Partition offset wasn't initialized, setting to default value (%llu)", v12, v13, v14, v15, v16, v10);
    v7 = 0;
  }

  if (!a3[11])
  {
    if (v6 != -1)
    {
      goto LABEL_10;
    }

LABEL_9:
    v18 = __error();
    v19 = strerror(*v18);
    v20 = *(a1 + 8);
    v46 = newfs_ctx;
    v47 = qword_100059E78;
    v6 = 0x2000;
    newfs_print(&v46, 6, "%s: %s: Block count wasn't initialized, setting to default value (%llu)", v21, v22, v23, v24, v25, v19);
    goto LABEL_10;
  }

  if (a3[9])
  {
    v17 = 0;
  }

  else
  {
    v17 = v6 == -1;
  }

  if (v17)
  {
    goto LABEL_9;
  }

LABEL_10:
  v26 = *a3;
  if (!*a3)
  {
    if (v8 != -1)
    {
      v26 = 0;
      LODWORD(v27) = a3[11];
      goto LABEL_22;
    }

LABEL_18:
    v28 = __error();
    v29 = strerror(*v28);
    v30 = *(a1 + 8);
    v46 = newfs_ctx;
    v47 = qword_100059E78;
    v8 = 512;
    newfs_print(&v46, 6, "%s: %s: Block size wasn't initialized, setting to default value (%u)", v31, v32, v33, v34, v35, v29);
    v26 = *a3;
    LODWORD(v27) = a3[11];
    if (!*a3)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  LODWORD(v27) = a3[11];
  if (!v27 && v8 == -1)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (v27)
  {
    goto LABEL_24;
  }

  v27 = v6 * v8 / v26;
  if (HIDWORD(v27))
  {
    goto LABEL_33;
  }

  a3[11] = v27;
LABEL_22:
  if (v27)
  {
    if (v26)
    {
      goto LABEL_24;
    }

LABEL_37:
    *a3 = v8;
    v26 = v8;
    if (a2)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (HIDWORD(v6))
  {
LABEL_33:
    v38 = __error();
    v39 = strerror(*v38);
    v40 = *(a1 + 8);
    v46 = newfs_ctx;
    v47 = qword_100059E78;
    newfs_print(&v46, 3, "%s: %s: Drive is too large, the number of blocks is larger than any FAT FS can support", v41, v42, v43, v44, v45, v39);
    return 1;
  }

  a3[11] = v6;
  if (!v26)
  {
    goto LABEL_37;
  }

LABEL_24:
  if (!a2)
  {
LABEL_25:
    a3[10] = v7 / v26;
  }

LABEL_26:
  a3[16] = (v7 != 0) << 7;
  if (!a3[8])
  {
    a3[8] = 32;
  }

  if (a3[9])
  {
    return 0;
  }

  result = 0;
  if (v6 >> 18)
  {
    if (v6 >> 19)
    {
      if (v6 >> 20)
      {
        if (v6 >> 21)
        {
          v37 = 255;
        }

        else
        {
          v37 = 128;
        }
      }

      else
      {
        v37 = 54;
      }
    }

    else
    {
      v37 = 32;
    }
  }

  else
  {
    v37 = 16;
  }

  a3[9] = v37;
  return result;
}

uint64_t sd_card_set_defaults(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  if (!*a2)
  {
    v17 = v3;
    v18 = v4;
    if (!a3[1] && *a3 == 512)
    {
      v7 = result;
      result = sd_card_type_for_path(result);
      if (result > 1)
      {
        if (result != 2)
        {
          v15 = newfs_ctx;
          v16 = qword_100059E78;
          return newfs_print(&v15, 6, "%s: newfs_exfat should be used for SDXC media", v8, v9, v10, v11, v12, v7);
        }

        *a2 = 32;
      }

      else
      {
        if (!result)
        {
          return result;
        }

        v13 = a3[11];
        if (!(v13 >> 14))
        {
          *a2 = 12;
          v14 = 16;
LABEL_16:
          a3[1] = v14;
          return result;
        }

        if (!(v13 >> 17))
        {
          *a2 = 12;
LABEL_15:
          v14 = 32;
          goto LABEL_16;
        }

        *a2 = 16;
        if (!(v13 >> 21))
        {
          goto LABEL_15;
        }
      }

      v14 = 64;
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t print_bpb(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v67 = newfs_ctx;
  v68 = qword_100059E78;
  newfs_print(&v67, 6, "bps=%u spc=%u res=%u nft=%u", a4, a5, a6, a7, a8, v9);
  v18 = a1[4];
  if (v18)
  {
    v67 = newfs_ctx;
    v68 = qword_100059E78;
    newfs_print(&v67, 6, " rde=%u", v13, v14, v15, v16, v17, v18);
  }

  v19 = a1[5];
  if (v19)
  {
    v67 = newfs_ctx;
    v68 = qword_100059E78;
    newfs_print(&v67, 6, " sec=%u", v13, v14, v15, v16, v17, v19);
  }

  v20 = a1[6];
  v67 = newfs_ctx;
  v68 = qword_100059E78;
  newfs_print(&v67, 6, " mid=%#x", v13, v14, v15, v16, v17, v20);
  v26 = a1[7];
  if (v26)
  {
    v67 = newfs_ctx;
    v68 = qword_100059E78;
    newfs_print(&v67, 6, " spf=%u", v21, v22, v23, v24, v25, v26);
  }

  v27 = a1[8];
  v28 = a1[9];
  v29 = a1[10];
  v30 = a1[16];
  v67 = newfs_ctx;
  v68 = qword_100059E78;
  newfs_print(&v67, 6, " spt=%u hds=%u hid=%u drv=0x%02X", v21, v22, v23, v24, v25, v27);
  v36 = a1[11];
  if (v36)
  {
    v67 = newfs_ctx;
    v68 = qword_100059E78;
    newfs_print(&v67, 6, " bsec=%u", v31, v32, v33, v34, v35, v36);
  }

  if (!a1[7])
  {
    v37 = a1[12];
    v38 = a1[13];
    v67 = newfs_ctx;
    v68 = qword_100059E78;
    newfs_print(&v67, 6, " bspf=%u rdcl=%u", v31, v32, v33, v34, v35, v37);
    v67 = newfs_ctx;
    v68 = qword_100059E78;
    newfs_print(&v67, 6, " infs=", v39, v40, v41, v42, v43, v65);
    v49 = a1[14];
    if (v49 == 0xFFFF)
    {
      v50 = "%#x";
    }

    else
    {
      v50 = "%u";
    }

    v67 = newfs_ctx;
    v68 = qword_100059E78;
    newfs_print(&v67, 6, v50, v44, v45, v46, v47, v48, v49);
    v67 = newfs_ctx;
    v68 = qword_100059E78;
    newfs_print(&v67, 6, " bkbs=", v51, v52, v53, v54, v55, v66);
    v61 = a1[15];
    if (v61 == 0xFFFF)
    {
      v62 = "%#x";
    }

    else
    {
      v62 = "%u";
    }

    v67 = newfs_ctx;
    v68 = qword_100059E78;
    newfs_print(&v67, 6, v62, v56, v57, v58, v59, v60, v61);
  }

  v67 = newfs_ctx;
  v68 = qword_100059E78;
  return newfs_print(&v67, 6, "\n", v31, v32, v33, v34, v35, v64);
}

uint64_t mklabel(uint64_t a1, _BYTE *a2)
{
  v4 = 0;
  do
  {
    v5 = *a2;
    if (*a2)
    {
      ++a2;
      result = __toupper(v5);
    }

    else
    {
      result = 32;
    }

    if (result == -27 && v4 == 0)
    {
      v8 = 5;
    }

    else
    {
      v8 = result;
    }

    *(a1 + v4++) = v8;
  }

  while (v4 != 11);
  return result;
}

char *setstr(char *result, _BYTE *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2;
    if (*a2)
    {
      ++a2;
    }

    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = 32;
    }

    *result++ = v4;
  }

  return result;
}

uint64_t sd_card_type_for_path(uint64_t a1)
{
  if (!strncmp(a1, "/dev/", 5uLL))
  {
    v4 = *(a1 + 5);
    v3 = a1 + 5;
    v5 = (v4 == 114 ? v3 + 1 : v3);
    v6 = IOBSDNameMatching(kIOMainPortDefault, 0, v5);
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v6);
    if (MatchingService)
    {
      v8 = MatchingService;
      v9 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"Card Characteristics", kCFAllocatorDefault, 3u);
      if (!v9)
      {
        v2 = 0;
        goto LABEL_16;
      }

      v10 = v9;
      v11 = CFGetTypeID(v9);
      if (v11 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(v10, @"Card Type");
        v2 = Value;
        if (!Value)
        {
LABEL_14:
          CFRelease(v10);
LABEL_16:
          IOObjectRelease(v8);
          return v2;
        }

        v13 = CFGetTypeID(Value);
        if (v13 == CFStringGetTypeID())
        {
          if (CFEqual(v2, @"SDSC"))
          {
            v2 = 1;
          }

          else if (CFEqual(v2, @"SDHC"))
          {
            v2 = 2;
          }

          else if (CFEqual(v2, @"SDXC"))
          {
            v2 = 3;
          }

          else
          {
            v2 = 0;
          }

          goto LABEL_14;
        }
      }

      v2 = 0;
      goto LABEL_14;
    }
  }

  return 0;
}

uint64_t argtou(const char *a1, unsigned int a2, unsigned int a3)
{
  __endptr = 0;
  *__error() = 0;
  v6 = strtoul(a1, &__endptr, 0);
  if (*__error() || !*a1 || (!*__endptr ? (v13 = v6 >= a2) : (v13 = 0), v13 ? (v14 = v6 > a3) : (v14 = 1), v14))
  {
    v15 = newfs_ctx;
    v16 = qword_100059E78;
    newfs_print(&v15, 3, "%s: bad %s", v7, v8, v9, v10, v11, a1);
    return 0xFFFFFFFFLL;
  }

  return v6;
}

BOOL oklabel(uint64_t a1)
{
  v2 = 0;
  do
  {
    v3 = *(a1 + v2);
    if (v2)
    {
      v4 = 32;
    }

    else
    {
      v4 = 33;
    }

    if (v4 > v3)
    {
      break;
    }

    v5 = memchr("*+,./:;<=>?[\\]|", *(a1 + v2), 0x11uLL) || v2 == 11;
    ++v2;
  }

  while (!v5);
  return v3 == 0;
}

void errexit(char *a1, ...)
{
  va_start(va, a1);
  vfprintf(__stderrp, a1, va);
  exit(8);
}

uint64_t sub_100020FD0(char a1)
{
  v2 = __error();
  strerror(*v2);
  return pfatal("%s (%s)\n", v3, v4, v5, v6, v7, v8, v9, a1);
}

uint64_t vperr(uint64_t a1, const char *a2, va_list a3)
{
  if (fsck_preen())
  {
    v5 = __stderrp;
    v6 = fsck_dev();
    fprintf(v5, "%s: ", v6);
  }

  result = fsck_quiet();
  if ((result & 1) == 0)
  {
    v8 = __stderrp;

    return vfprintf(v8, a2, a3);
  }

  return result;
}

uint64_t sub_1000210DC(int a1, const char *a2, va_list a3)
{
  if (!a1 && fsck_preen())
  {
    v6 = fsck_dev();
    printf("%s: ", v6);
  }

  result = fsck_quiet();
  if ((result & 1) == 0)
  {
    result = vprintf(a2, a3);
  }

  if (a1)
  {
    if (fsck_preen())
    {
      putchar(10);
    }

    result = fsck_preen();
    if (result)
    {
      v8 = fsck_dev();
      printf("%s: UNEXPECTED INCONSISTENCY; RUN %s MANUALLY.\n", v8, __progname);
      exit(8);
    }
  }

  return result;
}

uint64_t vprint(uint64_t result, int a2, char *a3, va_list a4)
{
  switch(a2)
  {
    case 2:
      return sub_1000210DC(1, a3, a4);
    case 3:
      return vperr(result, a3, a4);
    case 6:
      return vprintf(a3, a4);
  }

  return result;
}

uint64_t fsck_print(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*result)
  {
    return (*result)(*(result + 16), a2, a3, &a9);
  }

  return result;
}

uint64_t fsck_ask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a1 + 8))
  {
    return (*(a1 + 8))(*(a1 + 16), a2, a3, &a9);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100021584(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10002159C(uint64_t a1, void *a2, int a3, int a4)
{
  v8 = a2;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else if (a4)
  {
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 24);
    v13 = *(*(*(a1 + 40) + 8) + 24) - v12;
    v14 = *(a1 + 64);
    v15 = (v14 * a4);
    if (v13 + 32 > v15)
    {
      v9 = 0;
      *(v11 + 24) = v12 + v15;
      goto LABEL_4;
    }

    *(*(*(a1 + 56) + 8) + 24) = v13 + (v14 * a3);
  }

  v9 = 1;
LABEL_4:

  return v9;
}

uint64_t fsck_set_context_properties(uint64_t result, uint64_t a2, uint64_t a3)
{
  *&fsck_ctx = result;
  *(&fsck_ctx + 1) = a2;
  qword_100059E30 = a3;
  dword_100059E60 = -1;
  return result;
}

uint64_t newfs_set_context_properties(uint64_t result, uint64_t a2, uint64_t a3)
{
  *&newfs_ctx = result;
  *(&newfs_ctx + 1) = a2;
  qword_100059E78 = a3;
  return result;
}

uint64_t newfs_print(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*result)
  {
    return (*result)(*(result + 16), a2, a3, &a9);
  }

  return result;
}

uint64_t *msdosfs_unix2dostime(uint64_t *result, _WORD *a2, _WORD *a3, _BYTE *a4)
{
  v4 = *result;
  v5 = *result - dword_100059E80;
  v6 = ((v5 >> 1) - 30 * (v5 / 0x3C)) | (32 * (v5 / 0x3C - 60 * (((143165577 * (v5 / 0x3C)) >> 32) >> 1)));
  v7 = v5 / 0xE10 - 24 * ((178956971 * (v5 / 0xE10)) >> 32);
  v8 = v5 / 0x15180;
  v9 = &unk_100040828;
  if (v5 >= 0x1E13380)
  {
    v10 = 1970;
    v11 = 365;
    do
    {
      v8 -= v11;
      if ((++v10 & 3) != 0)
      {
        v11 = 365;
      }

      else
      {
        v11 = 366;
      }
    }

    while (v8 >= v11);
    if ((v10 & 3) == 0)
    {
      v9 = &unk_100040840;
    }
  }

  else
  {
    v10 = 1970;
  }

  v12 = 0;
  v13 = v6 | (v7 << 11);
  v14 = 32;
  do
  {
    v15 = v9[v12++];
    v14 -= 32;
  }

  while (v8 >= v15);
  if (v12 != 1)
  {
    LOWORD(v8) = v8 - v9[v12 - 2];
  }

  if (a3)
  {
    *a3 = v13;
  }

  if (a4)
  {
    v16 = ((result[1] * 0xD6BF94D5E57A42BDLL) >> 64) + result[1];
    v17 = (v16 >> 63) + (v16 >> 23);
    if (v4)
    {
      v18 = 100;
    }

    else
    {
      v18 = 0;
    }

    *a4 = v17 + v18;
  }

  v19 = v8 - v14;
  v20 = (v10 << 9) - 30687;
  if (v10 <= 0x7BC)
  {
    v20 = 33;
  }

  *a2 = v20 + v19;
  return result;
}

uint64_t msdosfs_dos2unixtime(uint64_t result, unsigned int a2, unsigned int a3, void *a4)
{
  if (result)
  {
    v4 = result >> 11;
    if ((result & 0x600) != 0)
    {
      ++v4;
    }

    v5 = v4 + 365 * (result >> 9);
    v6 = (result >> 5) & 0xF;
    if (v6 - 13 < 0xFFFFFFF4)
    {
      v6 = 1;
    }

    if (v6 >= 2)
    {
      if ((result & 0x600) != 0)
      {
        v7 = &unk_100040828;
      }

      else
      {
        v7 = &unk_100040840;
      }

      v5 += v7[v6 - 2];
    }

    *a4 = a3 / 0x64 + 2 * (a2 & 0x1F) + 60 * ((a2 >> 5) & 0x3F) + 3600 * (a2 >> 11) + dword_100059E80 + 86400 * ((result & 0x1F) + v5 - 1) + 315532800;
    a4[1] = 10000000 * (a3 % 0x64);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }

  return result;
}

uint64_t msdosfs_unicode2dos(int a1)
{
  if (a1 <= 0xFF)
  {
    return byte_100040858[a1];
  }

  if (a1 > 0x2122)
  {
    return 1;
  }

  if ((a1 - 8208) <= 0x2F)
  {
    return byte_100040958[a1 - 8208];
  }

  if ((a1 - 338) <= 0x18A)
  {
    if (a1 > 380)
    {
      if (a1 <= 401)
      {
        if (a1 == 381)
        {
          return -114;
        }

        if (a1 == 382)
        {
          return -98;
        }
      }

      else
      {
        switch(a1)
        {
          case 402:
            return -125;
          case 710:
            return -120;
          case 732:
            return -104;
        }
      }
    }

    else if (a1 <= 351)
    {
      if (a1 == 338)
      {
        return -116;
      }

      if (a1 == 339)
      {
        return -100;
      }
    }

    else
    {
      switch(a1)
      {
        case 352:
          return -118;
        case 353:
          return -102;
        case 376:
          return -97;
      }
    }

    return 1;
  }

  if (a1 == 8482)
  {
    v1 = -103;
  }

  else
  {
    v1 = 1;
  }

  if (a1 == 8364)
  {
    return 0x80;
  }

  return v1;
}

uint64_t msdosfs_dos2unicodefn(char *a1, uint64_t a2, char a3)
{
  for (i = 0; i != 16; i += 2)
  {
    v5 = *a1++;
    LOBYTE(v4) = v5;
    if (v5 == 5 && i == 0)
    {
      LOBYTE(v4) = -27;
    }

    if ((a3 & 8) != 0)
    {
      LOBYTE(v4) = byte_100059B94[v4];
    }

    if (v4 < -96)
    {
      v4 = word_100059B54[v4 & 0x1F];
    }

    else
    {
      v4 = v4;
    }

    *(a2 + i) = v4;
  }

  v7 = 8;
  while (*(a2 - 2 + 2 * v7) == 32)
  {
    v8 = v7-- != 0;
    if (v7 == 0 || !v8)
    {
      v7 = 0;
      break;
    }
  }

  v9 = 0;
  v10 = 0;
  *(a2 + 2 * v7) = 46;
  v11 = 2 * v7;
  do
  {
    v12 = a1[v9];
    if ((a3 & 0x10) != 0)
    {
      v12 = byte_100059B94[a1[v9]];
    }

    if (v12 <= -97)
    {
      v12 = word_100059B54[v12 & 0x1F];
    }

    *(a2 + v11 + 2 * v9 + 2) = v12;
    v10 -= 2;
    ++v9;
  }

  while (v9 != 3);
  v13 = v7 + 4;
  v14 = (a2 + v11 - v10);
  while (1)
  {
    v15 = *v14--;
    if (v15 != 32)
    {
      break;
    }

    --v13;
    LODWORD(v9) = v9 - 1;
    if (!v9)
    {
      v16 = -1;
      v13 = v7 + 1;
      return (v13 + v16);
    }
  }

  v16 = 0;
  return (v13 + v16);
}

uint64_t msdosfs_unicode_to_dos_name(unsigned __int16 *a1, uint64_t a2, _WORD *a3, _BYTE *a4)
{
  *a4 = 0;
  memset(a3, 32, 11);
  if (a2 == 2)
  {
    if (*a1 == 46 && a1[1] == 46)
    {
      *a3 = 11822;
      return 1;
    }
  }

  else if (a2 == 1)
  {
    if (*a1 == 46)
    {
      *a3 = 46;
      return 1;
    }
  }

  else if (a2 <= 0)
  {
    v43 = a4;
LABEL_47:
    v30 = (a1 + 1);
    v31 = 1;
LABEL_64:
    v33 = 0;
    v34 = 0;
    v35 = a1 + 1;
    while (1)
    {
      v36 = *(v35 - 1);
      if (v36 <= 0x7F)
      {
        break;
      }

      v33 |= 4u;
      if (v36 <= 0xFF)
      {
        goto LABEL_68;
      }

LABEL_69:
      v37 = msdosfs_unicode2dos(v36);
      if (v37 == 1)
      {
        v38 = 95;
      }

      else
      {
        v38 = v37;
      }

      if (v37 == 2)
      {
        v38 = 32;
      }

      if (((v37 - 1) & 0xFE) == 0)
      {
        v31 = 3;
      }

      *(a3 + v34) = v38;
      v34 = v34 - (v37 == 2) + 1;
      v39 = v35 < v30;
      if (v35 < v30)
      {
        ++v35;
        if (v34 < 8)
        {
          continue;
        }
      }

      v40 = v34 == 0;
      goto LABEL_79;
    }

    v33 |= byte_100040988[v36];
LABEL_68:
    LODWORD(v36) = byte_100059B94[v36];
    goto LABEL_69;
  }

  v9 = a2 + 1;
  v10 = a1;
  do
  {
    result = msdosfs_unicode2dos(*v10);
    if (!result)
    {
      return result;
    }

    ++v10;
    --v9;
  }

  while (v9 >= 2);
  v43 = a4;
  if (a2 < 2)
  {
    goto LABEL_47;
  }

  v11 = 0;
  v12 = 0;
  v13 = a1 + 2;
  v14 = a2 + 1;
  do
  {
    if (v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v13;
    }

    v16 = *(v13 - 1);
    if (v11)
    {
      v17 = v16 == 46;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      v12 = v11;
    }

    if (v16 == 46)
    {
      v11 = v15;
    }

    else
    {
      v11 = 0;
    }

    ++v13;
    --v14;
  }

  while (v14 > 2);
  if (v12)
  {
    v18 = (v11 - v12) >> 1;
    if (v16 != 46)
    {
      v18 = a2 - ((v12 - a1) >> 1);
    }

    if (v18 >= 1)
    {
      v19 = 0;
      v20 = v18 & 0x7FFFFFFF;
      v21 = 8;
      v22 = 1;
      v23 = v12;
      v24 = 1;
      while (1)
      {
        v26 = *v23;
        v23 += 2;
        v25 = v26;
        if (v26 <= 0x7FuLL)
        {
          break;
        }

        v19 |= 4u;
        if (v25 <= 0xFF)
        {
          goto LABEL_35;
        }

LABEL_36:
        v27 = msdosfs_unicode2dos(v25);
        if (v27 == 1)
        {
          v28 = 95;
        }

        else
        {
          v28 = v27;
        }

        if (v27 == 2)
        {
          v28 = 32;
        }

        if (((v27 - 1) & 0xFE) == 0)
        {
          v24 = 3;
        }

        *(a3 + v21) = v28;
        v29 = v22 < v20;
        if (v22 < v20)
        {
          v21 = v21 - (v27 == 2) + 1;
          ++v22;
          if (v21 < 11)
          {
            continue;
          }
        }

        goto LABEL_50;
      }

      v19 |= byte_100040988[v25];
LABEL_35:
      LODWORD(v25) = byte_100059B94[v25];
      goto LABEL_36;
    }

    v19 = 0;
    v29 = 0;
    v24 = 1;
LABEL_50:
    if (((v24 != 3) & (v19 >> 2)) != 0)
    {
      v32 = 2;
    }

    else
    {
      v32 = v24;
    }

    if (v32 == 1)
    {
      if ((~v19 & 3) != 0)
      {
        if (v19)
        {
          *v43 |= 0x10u;
        }

        v32 = 1;
      }

      else
      {
        v32 = 2;
      }
    }

    if (v29)
    {
      v31 = 3;
    }

    else
    {
      v31 = v32;
    }

    v30 = (v12 - 2);
  }

  else
  {
    v30 = a1 + ((2 * a2 + 0x1FFFFFFFCLL) & 0x1FFFFFFFELL) + 4;
    v31 = 1;
  }

  if (v30 > a1)
  {
    goto LABEL_64;
  }

  v33 = 0;
  v39 = 0;
  v40 = 1;
LABEL_79:
  if (((v31 != 3) & (v33 >> 2)) != 0)
  {
    v41 = 2;
  }

  else
  {
    v41 = v31;
  }

  if (v41 == 1)
  {
    if ((~v33 & 3) != 0)
    {
      if (v33)
      {
        *v43 |= 8u;
      }

      v41 = 1;
    }

    else
    {
      v41 = 2;
    }
  }

  if (v39)
  {
    result = 3;
  }

  else
  {
    result = v41;
  }

  if (v40)
  {
    v42 = 95;
  }

  else
  {
    if (*a3 != 229)
    {
      goto LABEL_96;
    }

    v42 = 5;
  }

  *a3 = v42;
LABEL_96:
  if (result != 1)
  {
    *v43 = 0;
  }

  return result;
}

uint64_t msdosfs_apply_generation_to_short_name(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  do
  {
    v3 = a2;
    a2 /= 0xAu;
    v4 = v2 + 1;
    v10[v2 + 1] = (v3 - 10 * a2) | 0x30;
    if (v3 < 0xA)
    {
      break;
    }

    v5 = v2++ >= 5;
  }

  while (!v5);
  if (v3 > 9)
  {
    return 63;
  }

  v6 = (a1 - v4 + 9);
  v7 = 7 - v4;
  do
  {
    v8 = v7;
    --v6;
    v5 = v7-- != 0;
  }

  while (v5 && *(a1 + v8) == 32);
  *(a1 + v8) = 126;
  do
  {
    *v6++ = v10[v4--];
  }

  while (v4);
  return 0;
}

uint64_t msdosfs_unicode2winfn(uint64_t result, int a2, uint64_t a3, int a4, char a5)
{
  v5 = 0;
  *(a3 + 1) = -1;
  v6 = a3 + 1;
  *(a3 + 9) = -1;
  *(a3 + 24) = -1;
  *(a3 + 17) = -1;
  v7 = 13 * a4 - 13;
  *a3 = a4;
  *(a3 + 11) = 15;
  v8 = result + 2 * v7;
  LODWORD(result) = a2 - v7;
  *(a3 + 13) = a5;
  *(a3 + 26) = 0;
  do
  {
    v9 = __OFSUB__(result, 1);
    LODWORD(result) = result - 1;
    if (result < 0 != v9)
    {
      v12 = (v6 + v5);
      goto LABEL_15;
    }

    *(v6 + v5) = *(v8 + v5);
    v5 += 2;
  }

  while (v5 != 10);
  v10 = 0;
  v11 = a3 + 14;
  do
  {
    v9 = __OFSUB__(result, 1);
    LODWORD(result) = result - 1;
    if (result < 0 != v9)
    {
      v12 = (v11 + v10);
      goto LABEL_15;
    }

    *(v11 + v10) = *(v8 + v10 + v5);
    v10 += 2;
  }

  while (v10 != 12);
  v12 = (a3 + 28);
  v13 = (v8 + v5 + v10);
  v14 = -2;
  while (1)
  {
    v9 = __OFSUB__(result, 1);
    result = (result - 1);
    if (result < 0 != v9)
    {
      break;
    }

    v15 = *v13++;
    *v12++ = v15;
    if (__CFADD__(v14++, 1))
    {
      if (!result)
      {
        goto LABEL_16;
      }

      return result;
    }
  }

LABEL_15:
  *v12 = 0;
LABEL_16:
  result = 0;
  *a3 |= 0x40u;
  return result;
}

uint64_t msdosfs_winChkName(uint64_t a1, int a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  result = a3[13];
  if ((*a3 & 0x40) == 0)
  {
    v32 = result == a4;
    result = a4;
    if (!v32)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v8 = 13 * (*a3 & 0x3F);
  v9 = v8 - 13;
  v10 = (a5 + 2 * (v8 - 13));
  if (!a5)
  {
    v10 = 0;
  }

  v11 = a2 - v9;
  if (a2 - v9 < 0 || (*a3 & 0x40) != 0 && v11 > 0xD)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = 0;
  v13 = a1 + 2 * v9;
  v14 = a1 + 26 * (*a3 & 0x3F);
  v15 = a2 - v8;
  v16 = v15 + 8;
  v17 = a3 + 2;
  do
  {
    v18 = *v17;
    v19 = *(v17 - 1) | (v18 << 8);
    if (v11 <= 0)
    {
      v32 = v19 == 0;
      goto LABEL_47;
    }

    if (v10)
    {
      *v10++ = v19;
    }

    v20 = *(v13 + 2 * v12);
    if (v19 != v20)
    {
      *a6 = 1;
      if (!v18)
      {
        LODWORD(v19) = byte_100059B94[v19];
      }

      if (v20 <= 0xFF)
      {
        v20 = byte_100059B94[v20];
      }

      if (v19 != v20)
      {
        return 0xFFFFFFFFLL;
      }
    }

    v17 += 2;
    ++v12;
    --v11;
  }

  while (v12 != 5);
  v21 = v15 + 2;
  v22 = a3 + 15;
  v23 = -8;
  do
  {
    v24 = *v22;
    v25 = *(v22 - 1) | (v24 << 8);
    if (v16 <= 0)
    {
      v32 = v25 == 0;
      goto LABEL_47;
    }

    if (v10)
    {
      *v10++ = v25;
    }

    v26 = *(v14 + 2 * v23);
    if (v25 != v26)
    {
      *a6 = 1;
      if (!v24)
      {
        LODWORD(v25) = byte_100059B94[v25];
      }

      if (v26 <= 0xFF)
      {
        v26 = byte_100059B94[v26];
      }

      if (v25 != v26)
      {
        return 0xFFFFFFFFLL;
      }
    }

    v22 += 2;
    ++v23;
    --v16;
  }

  while (v23 != -2);
  v27 = a3 + 29;
  v28 = -2;
  while (1)
  {
    v29 = *v27;
    v30 = *(v27 - 1) | (v29 << 8);
    if (v21 <= 0)
    {
      break;
    }

    if (v10)
    {
      *v10++ = v30;
    }

    v31 = *(v14 + 2 * v28);
    if (v30 != v31)
    {
      *a6 = 1;
      if (!v29)
      {
        LODWORD(v30) = byte_100059B94[v30];
      }

      if (v31 <= 0xFF)
      {
        v31 = byte_100059B94[v31];
      }

      if (v30 != v31)
      {
        return 0xFFFFFFFFLL;
      }
    }

    v27 += 2;
    --v21;
    if (!++v28)
    {
      return result;
    }
  }

  v32 = v30 == 0;
LABEL_47:
  if (v32)
  {
    return result;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t msdosfs_getunicodefn(char *a1, uint64_t a2, _WORD *a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *a1 & 0x3F;
  if ((v5 - 21) < 0xFFFFFFEC)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a1[13];
  if ((*a1 & 0x40) != 0)
  {
    *a3 = 13 * v5;
    a4 = v7;
  }

  else if (v7 != a4)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = 0;
  v9 = a2 + 26 * (v4 & 0x3F) - 26;
  v10 = a1 + 1;
  do
  {
    v11 = *(v8 + v10);
    if (!*(v8 + v10))
    {
      LODWORD(v8) = v9 + v8;
      goto LABEL_24;
    }

    if (v11 == 47)
    {
      return 0xFFFFFFFFLL;
    }

    *(v8++ + v9) = v11;
  }

  while (v8 != 10);
  v12 = 0;
  v13 = a1 + 14;
  do
  {
    v14 = *&v13[v12];
    if (!*&v13[v12])
    {
      LODWORD(v8) = v9 + 10 + v12;
      goto LABEL_24;
    }

    if (v14 == 47 || v8 + v9 + v12 >= a2 + 510)
    {
      return 0xFFFFFFFFLL;
    }

    *(v8 + v9 + v12) = v14;
    v12 += 2;
  }

  while (v12 != 12);
  v15 = a1 + 29;
  v8 = (v8 + v9 + v12);
  v16 = -2;
  while (1)
  {
    v17 = *(v15 - 1);
    if (!*(v15 - 1))
    {
      break;
    }

    if (v17 == 47)
    {
      return 0xFFFFFFFFLL;
    }

    v15 += 2;
    *v8++ = v17;
    if (__CFADD__(v16++, 1))
    {
      return a4;
    }
  }

LABEL_24:
  *a3 = (v8 - a2) >> 1;
  return a4;
}

uint64_t msdosfs_winChksum(char *a1)
{
  v1 = 0;
  for (i = 12; i > 1; --i)
  {
    v3 = *a1++;
    v1 = v3 + ((v1 >> 1) | (v1 << 7));
  }

  return v1;
}

uint64_t msdosfs_winSlotCnt(uint64_t a1, int a2)
{
  if (a2 > 255)
  {
    return 0;
  }

  v3 = a2 / 13;
  if (a2 % 13)
  {
    return v3 + 1;
  }

  else
  {
    return v3;
  }
}

void sub_100023960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100023984(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002399C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void sub_1000239FC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void sub_100024208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 256), 8);
  _Block_object_dispose((v35 - 208), 8);
  _Block_object_dispose((v35 - 160), 8);
  _Block_object_dispose((v35 - 128), 8);
  _Unwind_Resume(a1);
}

BOOL sub_100024280(uint64_t a1, void *a2, unsigned int a3, unsigned int a4)
{
  v7 = a2;
  if (v7)
  {
    (*(*(a1 + 48) + 16))();
LABEL_61:
    v14 = 1;
    goto LABEL_62;
  }

  v8 = *(*(a1 + 56) + 8);
  if ((*(v8 + 24) & 1) == 0)
  {
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 24);
    v11 = *(a1 + 112);
    v12 = v10 + a4;
    if (v11 < v10 || v12 <= v11)
    {
      v14 = 0;
      *(v9 + 24) = v12;
      goto LABEL_62;
    }

    v15 = v11 - v10;
    a3 += v15;
    a4 -= v15;
    *(v8 + 24) = 1;
  }

  if ([*(a1 + 32) isFat1216RootDir])
  {
    v17 = 0;
    v48 = 0;
  }

  else
  {
    v18 = *(a1 + 120);
    v19 = *(a1 + 128);
    v17 = *(*(*(a1 + 72) + 8) + 24) % v18 / v19 + v18 / v19 * a3;
    v48 = v18 / v19 * (a3 + a4) - 1;
    if (v17 > v48)
    {
      goto LABEL_13;
    }
  }

  *&v16 = 136315394;
  v47 = v16;
  while (2)
  {
    v20 = [*(a1 + 40) readDirBlockNum:{v17, v47}];
    if (v20)
    {
      v45 = v20;
      (*(*(a1 + 48) + 16))(*(a1 + 48), v20, 4, 0, 0, 0);
LABEL_60:

      goto LABEL_61;
    }

    v21 = *(*(*(a1 + 72) + 8) + 24) % *(a1 + 128);
    do
    {
      v22 = [*(a1 + 40) getBytesAtOffset:v21];
      if (!v22)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
        {
          sub_100032E30();
        }

        v44 = *(a1 + 48);
        v45 = fs_errorForPOSIXError();
        (*(v44 + 16))(v44, v45, 4, 0, 0, 0);
        goto LABEL_60;
      }

      v23 = v22;
      if (*v22 != 229 && *v22)
      {
        if ((v22[11] & 0x3F) == 0xF)
        {
          v27 = [*(*(*(a1 + 80) + 8) + 40) isValid];
          if ((v27 & 1) == 0)
          {
            if ((*v23 & 0x40) == 0)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v28 = *(*(*(a1 + 72) + 8) + 24);
                *buf = v47;
                v50 = "[MsdosDirItem iterateFromOffset:options:replyHandler:]_block_invoke";
                v51 = 2048;
                v52 = v28;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: (offset = %llu) First long-name entry doesn't have the WIN_LAST mask. Skipping entry.", buf, 0x16u);
              }

              goto LABEL_54;
            }

            [*(*(*(a1 + 80) + 8) + 40) fillWithFirstLongNameEntry:v23];
            *(*(*(a1 + 104) + 8) + 32) = 13 * [*(*(*(a1 + 80) + 8) + 40) numLongNameEntries];
          }

          v33 = v23[13];
          if (v33 == [*(*(*(a1 + 80) + 8) + 40) checkSum])
          {
            v34 = 0;
            v35 = 13 * [*(*(*(a1 + 80) + 8) + 40) numLongNameEntriesLeft] - 13;
            do
            {
              v36 = [Utilities parseCharacterOfLongNameEntry:v23 charIdxInEntry:v34 charIdxInName:v35 unistrName:*(*(a1 + 104) + 8) + 32 isFirstLongEntryInSet:v27 ^ 1];
              v37 = v36 < 2 || v34 >= 0xC;
              v34 = (v34 + 1);
            }

            while (!v37);
            if (v36)
            {
              [*(*(*(a1 + 80) + 8) + 40) setNumLongNameEntriesLeft:{objc_msgSend(*(*(*(a1 + 80) + 8) + 40), "numLongNameEntriesLeft") - 1}];
              goto LABEL_22;
            }

            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_53;
            }

            v43 = *(*(*(a1 + 72) + 8) + 24);
            *buf = v47;
            v50 = "[MsdosDirItem iterateFromOffset:options:replyHandler:]_block_invoke";
            v51 = 2048;
            v52 = v43;
            v32 = "%s: (offset = %llu) Failed to parse long-name entry's characters. Skipping entry.";
            goto LABEL_52;
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v38 = *(*(*(a1 + 72) + 8) + 24);
            *buf = v47;
            v50 = "[MsdosDirItem iterateFromOffset:options:replyHandler:]_block_invoke";
            v51 = 2048;
            v52 = v38;
            v32 = "%s: (offset = %llu) long-name entry has an invalid checksum value. Skipping entry.";
            goto LABEL_52;
          }

          goto LABEL_53;
        }

        v29 = *(*(*(a1 + 72) + 8) + 24);
        if ([*(*(*(a1 + 80) + 8) + 40) isValid])
        {
          [*(*(*(a1 + 96) + 8) + 40) setNumberOfDirEntries:{(objc_msgSend(*(*(*(a1 + 80) + 8) + 40), "numLongNameEntries") + 1)}];
          v30 = [*(*(*(a1 + 80) + 8) + 40) numLongNameEntries];
          if ([*(*(*(a1 + 80) + 8) + 40) numLongNameEntriesLeft])
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v31 = *(*(*(a1 + 72) + 8) + 24);
              *buf = v47;
              v50 = "[MsdosDirItem iterateFromOffset:options:replyHandler:]_block_invoke";
              v51 = 2048;
              v52 = v31;
              v32 = "%s: (offset = %llu) Reached a short-name entry while we still have long-name entries left. Skipping entry.";
LABEL_52:
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, v32, buf, 0x16u);
            }

LABEL_53:
            [*(*(*(a1 + 80) + 8) + 40) invalidate];
LABEL_54:
            v26 = 1;
            goto LABEL_23;
          }

          v29 -= 32 * v30;
        }

        else
        {
          *(*(*(a1 + 104) + 8) + 32) = msdosfs_dos2unicodefn(v23, *(*(a1 + 104) + 8) + 34, v23[12]);
          [*(*(*(a1 + 96) + 8) + 40) setNumberOfDirEntries:1];
        }

        v39 = *(*(*(a1 + 96) + 8) + 40);
        v40 = [NSMutableData dataWithBytes:v23 length:32];
        [v39 setData:v40];

        [*(*(*(a1 + 96) + 8) + 40) setDosDirEntryDirBlockNum:v17];
        [*(*(*(a1 + 96) + 8) + 40) setDosDirEntryOffsetInDirBlock:v21];
        [*(*(*(a1 + 96) + 8) + 40) setFirstEntryOffsetInDir:v29];
        [*(*(*(a1 + 80) + 8) + 40) invalidate];
        v41 = *(*(*(a1 + 96) + 8) + 40);
        v23[11];
        v42 = *(*(a1 + 104) + 8) + 32;
        v25 = (*(*(a1 + 48) + 16))();
        goto LABEL_21;
      }

      [*(*(*(a1 + 80) + 8) + 40) invalidate];
      v24 = *(*(*(a1 + 72) + 8) + 24);
      v25 = (*(*(a1 + 48) + 16))();
LABEL_21:
      *(*(*(a1 + 88) + 8) + 24) = v25;
LABEL_22:
      v26 = *(*(*(a1 + 88) + 8) + 24) != 1;
LABEL_23:
      v21 += 32;
      *(*(*(a1 + 72) + 8) + 24) += 32;
    }

    while (v21 < *(a1 + 128) && v26);
    if (++v17 <= v48 && v26)
    {
      continue;
    }

    break;
  }

LABEL_13:
  *(*(*(a1 + 64) + 8) + 24) += a4;
  v14 = *(*(*(a1 + 88) + 8) + 24) != 0;
LABEL_62:

  return v14;
}

void sub_100024C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_100024C44(uint64_t a1, void *a2, char a3)
{
  v6 = a2;
  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100032FC0();
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }
}

void sub_1000251E0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_100025204(uint64_t a1, void *a2, _OWORD *a3)
{
  v6 = a2;
  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10003314C();
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    v7 = *(*(*(a1 + 48) + 8) + 24);
    v8 = *(a1 + 56);
    if (v7 >= v8 - 1)
    {
      v10 = [*(a1 + 32) data];
      v11 = [v10 bytes];
      v12 = v11[1];
      *a3 = *v11;
      a3[1] = v12;
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
      msdosfs_unicode2winfn(a1 + 62, *(a1 + 60), &v13, v8 + ~v7, *(a1 + 572));
      v9 = v14;
      *a3 = v13;
      a3[1] = v9;
    }

    ++*(*(*(a1 + 48) + 8) + 24);
  }
}

void sub_1000255A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000255B8(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10003327C();
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else
  {
    *a3 = -27;
  }
}

void sub_100025740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100025758(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v6 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v7 = *a3;
    if (!*a3)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100033300(a1);
      }

      v8 = fs_errorForPOSIXError();
      v9 = *(*(a1 + 32) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v7 = *a3;
    }

    if (v7 != 229 && (v7 & 0x40) == 0 && (a3[11] & 0x3F) == 0xF)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100033388(a1);
      }

      v11 = fs_errorForPOSIXError();
      v12 = *(*(a1 + 32) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }
  }
}

void sub_100025E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100025EB0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a2;
  v12 = a6;
  if (v11)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  else
  {
    if (a3 == 1)
    {
      goto LABEL_14;
    }

    if (a3 != 2)
    {
      goto LABEL_13;
    }

    if ([*(a1 + 32) maxShortNameIndex] <= 0xF423F)
    {
      v13 = [*(a1 + 32) getGenerationNumberOfName:a5];
      v14 = *(*(a1 + 56) + 8);
      if (v13 > *(v14 + 24))
      {
        *(v14 + 24) = v13;
      }
    }

    v15 = [v12 data];
    v16 = [v15 bytes];

    v17 = *(a1 + 72);
    v18 = *v17;
    v19 = *(v17 + 3);
    v20 = v18 == *v16 && v19 == *(v16 + 3);
    if (!v20 || (*(*(*(a1 + 64) + 8) + 24) = 1, ![*(a1 + 32) maxShortNameIndex]))
    {
LABEL_13:
      a3 = 0;
      goto LABEL_14;
    }

    (*(*(a1 + 40) + 16))();
  }

  a3 = 1;
LABEL_14:

  return a3;
}

uint64_t wipeFSCallback(uint64_t a1)
{
  if (!a1)
  {
    v12 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v12)
    {
      sub_100033684(v12, v13, v14, v15, v16, v17, v18, v19);
    }

    return 22;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    v20 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v20)
    {
      sub_100033608(v20, v21, v22, v23, v24, v25, v26, v27);
    }

    return 22;
  }

  v3 = v2;
  v4 = *(a1 + 8);
  if (!v4)
  {
    v28 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v28)
    {
      sub_10003358C(v28, v29, v30, v31, v32, v33, v34, v35);
    }

    return 22;
  }

  v5 = v4;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_100026304;
  v47 = sub_100026314;
  v48 = 0;
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  v37 = _NSConcreteStackBlock;
  v38 = 3221225472;
  v39 = sub_10002631C;
  v40 = &unk_100051468;
  v42 = &v43;
  v7 = v6;
  v41 = v7;
  [v3 wipeResource:v5 completionHandler:&v37];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100033494();
  }

  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  if (v44[5])
  {
    v8 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v9 = [v44[5] description];
      v10 = v9;
      sub_10003351C([v9 UTF8String], buf, v9);
    }

    v11 = [v44[5] code];
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v43, 8);
  return v11;
}

void sub_1000262E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100026304(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002631C(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100033700(a1 + 40);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1000337A0();
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000269A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_1000269E4(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void sub_10002769C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Unwind_Resume(a1);
}

void sub_1000276F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v18 = a1;
    v6 = [NSString alloc];
    v7 = [NSString stringWithUTF8String:a3];
    v8 = [v6 initWithFormat:v7 arguments:a4];

    if ([v8 hasSuffix:@"\n"])
    {
      v9 = [v8 substringToIndex:{objc_msgSend(v8, "length") - 1}];

      v8 = v9;
    }

    [v18 logMessage:v8];
  }

  else
  {
    v10 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      sub_1000339D4(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }
}

BOOL sub_1000277F8(uint64_t a1, _BOOL8 a2, uint64_t a3, uint64_t a4)
{
  v7 = [NSString alloc];
  v8 = [NSString stringWithUTF8String:a3];
  v9 = [v7 initWithFormat:v8 arguments:a4];

  if (fsck_preen())
  {
    v10 = fsck_rdonly();
    v16 = 0;
    if (a2 && !v10)
    {
      v25 = fsck_ctx;
      v26 = qword_100059E30;
      fsck_print(&v25, 6, "FIXED\n", v11, v12, v13, v14, v15, v24);
      v16 = a2;
    }
  }

  else if (fsck_alwaysyes() || fsck_rdonly())
  {
    if (!fsck_quiet())
    {
      v17 = [v9 UTF8String];
      fsck_rdonly();
      v25 = fsck_ctx;
      v26 = qword_100059E30;
      fsck_print(&v25, 6, "%s? %s\n", v18, v19, v20, v21, v22, v17);
    }

    v16 = !fsck_rdonly();
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

void startCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    v9 = a5;
    v10 = [[NSString alloc] initWithUTF8String:a1];
    v11 = [v9 startPhase:v10 parentUnitCount:a2 phaseTotalCount:a3 completedCounter:a4];

    if (v11)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100033A50(v11);
      }
    }
  }

  else
  {
    v12 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v12)
    {
      sub_100033AE4(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }
}

void endCallback(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v12 = [[NSString alloc] initWithUTF8String:a1];
    [v3 endPhase:v12];
  }

  else
  {
    v4 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      sub_100033B60(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

id readHelper(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  v4 = [a1 readInto:a2 startingAt:a4 length:a3 error:&v9];
  v5 = v9;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 code];
    v4 = 0;
    *__error() = v7;
  }

  return v4;
}

id writeHelper(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  v4 = [a1 writeFrom:a2 startingAt:a4 length:a3 error:&v9];
  v5 = v9;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 code];
    v4 = 0;
    *__error() = v7;
  }

  return v4;
}

void sub_100027BBC(uint64_t a1)
{
  v2 = [*(a1 + 32) BSDName];
  *(*(*(a1 + 56) + 8) + 24) = checkfilesys([v2 UTF8String], (*(*(a1 + 64) + 8) + 32));

  v3 = [*(a1 + 40) totalUnitCount];
  if (v3 > [*(a1 + 40) completedUnitCount])
  {
    [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
  }

  CFRelease(*(*(*(a1 + 64) + 8) + 32));
  *(*(*(a1 + 64) + 8) + 32) = 0;
  fsck_set_fd(0xFFFFFFFFLL);
  CFRelease(*(*(*(a1 + 72) + 8) + 24));
  *(*(*(a1 + 72) + 8) + 24) = 0;
  v4 = *(a1 + 48);
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    v6 = fs_errorForPOSIXError();
    [v4 didCompleteWithError:v6];
  }

  else
  {
    v5 = *(a1 + 48);

    [v5 didCompleteWithError:0];
  }
}

void sub_100028980(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Unwind_Resume(a1);
}

void sub_1000289C0(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (*a1)
    {
      v26 = *a1;
      v6 = [NSString alloc];
      v7 = [NSString stringWithUTF8String:a3];
      v8 = [v6 initWithFormat:v7 arguments:a4];

      if ([v8 hasSuffix:@"\n"])
      {
        v9 = [v8 substringToIndex:{objc_msgSend(v8, "length") - 1}];

        v8 = v9;
      }

      [v26 logMessage:v8];
    }

    else
    {
      v18 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v18)
      {
        sub_100033C58(v18, v19, v20, v21, v22, v23, v24, v25);
      }
    }
  }

  else
  {
    v10 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      sub_100033CD4(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }
}

void sub_100028AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(*(a1 + 56) + 8);
  v10 = *(a1 + 144);
  v25[4] = *(a1 + 128);
  v25[5] = v10;
  v25[6] = *(a1 + 160);
  v26 = *(a1 + 176);
  v11 = *(a1 + 80);
  v25[0] = *(a1 + 64);
  v25[1] = v11;
  v12 = *(a1 + 112);
  v25[2] = *(a1 + 96);
  v25[3] = v12;
  v13 = *(a1 + 328);
  v14 = *(a1 + 360);
  v15 = *(a1 + 376);
  v37 = *(a1 + 344);
  v38 = v14;
  v39 = v15;
  v16 = *(a1 + 264);
  v17 = *(a1 + 296);
  v18 = *(a1 + 312);
  v33 = *(a1 + 280);
  v34 = v17;
  v35 = v18;
  v36 = v13;
  v19 = *(a1 + 200);
  v20 = *(a1 + 232);
  v29 = *(a1 + 216);
  v30 = v20;
  v31 = *(a1 + 248);
  v32 = v16;
  *buf = *(a1 + 184);
  v28 = v19;
  *(*(*(a1 + 48) + 8) + 24) = format(v25, buf, (v9 + 32), a4, a5, a6, a7, a8);
  v21 = [*(a1 + 32) totalUnitCount];
  if (v21 > [*(a1 + 32) completedUnitCount])
  {
    [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "totalUnitCount")}];
  }

  CFRelease(*(*(*(a1 + 56) + 8) + 32));
  *(*(*(a1 + 56) + 8) + 32) = 0;
  v22 = *(a1 + 392);
  if (v22)
  {
    free(v22);
  }

  v23 = *(a1 + 40);
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v24 = fs_errorForPOSIXError();
    [v23 didCompleteWithError:v24];
  }

  else
  {
    [*(a1 + 40) didCompleteWithError:0];
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[msdosFileSystem startFormatWithTask:options:error:]_block_invoke";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: done", buf, 0xCu);
  }
}

void sub_100028D54(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_10002A0C0(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a2;
  v10 = a6;
  if (v9 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100034C2C();
  }

  if (a3 == 3)
  {
    [*(a1 + 32) setEntryData:v10];
  }

  return 1;
}

void sub_10002A3B4(uint64_t a1)
{
  v2 = [*(a1 + 32) systemInfo];
  v3 = [v2 serialNumberExists];

  if (v3)
  {
    v11 = [NSMutableData dataWithLength:4];
    v4 = v11;
    v5 = [v11 mutableBytes];
    v6 = [*(a1 + 32) systemInfo];
    v7 = [v6 serialNumber];

    *v5 = v7;
    v8 = *(*(a1 + 40) + 16);
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = fs_errorForPOSIXError();
    v8 = *(v9 + 16);
    v11 = v10;
  }

  v8();
}

uint64_t sub_10002AF48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002AF60(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100034DBC();
    }

    v6 = *(*(a1 + 40) + 8);
    v7 = v5;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
    goto LABEL_5;
  }

  v9 = [*(a1 + 32) systemInfo];
  [v9 setDirtyBitValue:a3];

  v10 = [*(a1 + 32) systemInfo];
  [v10 setDirtyBitValueOnDisk:a3];

  if (a3 == 1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100034E40(a1);
    }

    if ((*(a1 + 48) & 1) == 0)
    {
      v11 = fs_errorForPOSIXError();
      v12 = *(*(a1 + 40) + 8);
      v8 = *(v12 + 40);
      *(v12 + 40) = v11;
LABEL_5:
    }
  }
}

void sub_10002B060(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v11 = v5;
  if (v5)
  {
    v6 = *(*(a1 + 40) + 8);
    v7 = v5;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    v8 = [*(a1 + 32) systemInfo];
    v9 = [v8 bytesPerCluster] * a3;
    v10 = [*(a1 + 32) systemInfo];
    [v10 setRootDirSize:v9];
  }
}

void sub_10002B9F8(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100035078();
  }
}

unsigned __int8 *sub_10002C0D0@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

id sub_10002C190(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_10005A3F0;
  qword_10005A3F0 = v1;

  v3 = qword_10005A3F0;

  return [v3 setUseMetaRW:0];
}

void sub_10002D334(uint64_t a1)
{
  v1 = *(*a1 + 40);
  v2 = 136315394;
  v3 = "[DirBlock readRelativeDirBlockNum:]";
  v4 = 2112;
  v5 = v1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: Failed to get the next cluster(s). Error = %@.", &v2, 0x16u);
}

void sub_10002D3D0(uint8_t *buf, int a2, uint64_t a3, void *a4)
{
  *buf = 136315650;
  *(buf + 4) = "[DirBlock readRelativeDirBlockNum:]";
  *(buf + 6) = 1024;
  *(buf + 14) = a2;
  *(buf + 9) = 2048;
  *(buf + 20) = a3;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Couldn't find dir block index %u. Dir Size = %llu.", buf, 0x1Cu);
}

void sub_10002D44C(void *a1, uint64_t a2)
{
  v2 = 136315650;
  v3 = "[DirBlock getBytesAtOffset:]";
  v4 = 2048;
  v5 = a2;
  v6 = 2048;
  v7 = [a1 size];
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: unexpected offset in dir block (%llu), dir block size %zu", &v2, 0x20u);
}

void sub_10002D5F0(uint64_t **a1)
{
  v1 = **a1;
  v2 = 136315394;
  v3 = "[DirItem lookupDirEntryNamed:dirNameCache:lookupOffset:replyHandler:]_block_invoke";
  v4 = 2048;
  v5 = v1;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: got a wrong offset from hint (%llu).", &v2, 0x16u);
}

void sub_10002D790(uint64_t a1)
{
  sub_100009728(a1, __stack_chk_guard);
  sub_100009700();
  sub_100009738(&_mh_execute_header, &_os_log_default, v1, "%s: Failed iterating the directory. Error = %@.", v2, v3, v4, v5, 2u);
}

void sub_10002D80C(uint64_t a1)
{
  sub_100009728(a1, __stack_chk_guard);
  sub_100009700();
  sub_100009738(&_mh_execute_header, &_os_log_default, v1, "%s: Failed to allocate clusters. Error = %@.", v2, v3, v4, v5, 2u);
}

void sub_10002D888(uint64_t a1)
{
  sub_100009728(a1, __stack_chk_guard);
  sub_100009700();
  sub_100009738(&_mh_execute_header, &_os_log_default, v1, "%s: Failed to zero-fill clusters. Error = %@.", v2, v3, v4, v5, 2u);
}

void sub_10002D988(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  sub_100009700();
  sub_100009738(&_mh_execute_header, &_os_log_default, v2, "%s: iterate dir failed with error = %@.", v3, v4, v5, v6, 2u);
}

void sub_10002DA94()
{
  sub_100009760();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10002DB1C(uint64_t a1)
{
  sub_100009728(a1, __stack_chk_guard);
  sub_100009700();
  sub_100009738(&_mh_execute_header, &_os_log_default, v1, "%s: Couldn't convert name to unistr. Error = %@.", v2, v3, v4, v5, 2u);
}

void sub_10002DB98(uint64_t a1)
{
  sub_100009728(a1, __stack_chk_guard);
  sub_100009700();
  sub_100009738(&_mh_execute_header, &_os_log_default, v1, "%s: Couldn't calculate number of dir entries. Error = %@.", v2, v3, v4, v5, 2u);
}

void sub_10002DC14(uint64_t a1)
{
  sub_100009728(a1, __stack_chk_guard);
  sub_100009700();
  sub_100009738(&_mh_execute_header, &_os_log_default, v1, "%s: Couldn't create dir entry-set. Error = %@.", v2, v3, v4, v5, 2u);
}

void sub_10002DC90(uint64_t a1)
{
  sub_100009728(a1, __stack_chk_guard);
  sub_100009700();
  sub_100009738(&_mh_execute_header, &_os_log_default, v1, "%s: Couldn't write new dir entries to disk. Error = %@.", v2, v3, v4, v5, 2u);
}

void sub_10002DD0C()
{
  sub_100009760();
  sub_100009770();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10002DE10()
{
  sub_100009760();
  sub_100009770();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10002E0A0(void *a1)
{
  [a1 code];
  sub_100009760();
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_10002E2A8(int a1)
{
  v1 = 136315394;
  v2 = "[DirNameCache insertDirEntryNamedUtf16:offsetInDir:]";
  v3 = 1024;
  v4 = a1;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Dir index %u is already in the cache", &v1, 0x12u);
}

void sub_10002E33C()
{
  v0 = 136315138;
  v1 = "[DirNameCache insertDirEntryNamedUtf16:offsetInDir:]";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: Failed to add to bucket", &v0, 0xCu);
}

void sub_10002E3C4(int *a1)
{
  v1 = *a1;
  v2 = 136315650;
  v3 = "[DirNameCache insertDirEntryNamedUtf16:offsetInDir:]";
  v4 = 1024;
  v5 = v1;
  v6 = 1024;
  v7 = 50000;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: Name cache full (%u/%u)", &v2, 0x18u);
}

void sub_10002E468()
{
  v0 = 136315138;
  v1 = "[DirNameCachePool getAvailableEntry]";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: No free entries", &v0, 0xCu);
}

void sub_10002E4F0()
{
  v0 = 136315138;
  v1 = "[DirNameCachePool getNameCacheForDir:cachedOnly:replyHandler:]";
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: dispatch_semaphore_wait timed out", &v0, 0xCu);
}

void sub_10002E578(_DWORD *a1, int a2)
{
  *a1 = 136315394;
  sub_10000AF38(a1, a2, "[DirNameCachePool getNameCacheForDir:cachedOnly:replyHandler:]");
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: DNC for current dir is in use (%u)", v2, 0x12u);
}

void sub_10002E5CC()
{
  v0 = 136315138;
  v1 = "[DirNameCachePool getNameCacheForDir:cachedOnly:replyHandler:]";
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: No available entry", &v0, 0xCu);
}

void sub_10002E654(_DWORD *a1, int a2)
{
  *a1 = 136315394;
  sub_10000AF38(a1, a2, "[DirNameCachePool doneWithNameCacheForDir:]");
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: Entry for key %u is already set as not in use", v2, 0x12u);
}

void sub_10002E6A8(_DWORD *a1, int a2)
{
  *a1 = 136315394;
  sub_10000AF38(a1, a2, "[DirNameCachePool doneWithNameCacheForDir:]");
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: Entry for key %u not found", v2, 0x12u);
}

void sub_10002E6FC(uint8_t *buf, void *a2)
{
  *buf = 136315138;
  *a2 = "[FATVolume writeSymlinkClusters:withContent:]";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: getContigClusterChainLengthStartingAt Failed", buf, 0xCu);
}

void sub_10002E750(uint8_t *buf, void *a2)
{
  *buf = 136315138;
  *a2 = "[FATVolume writeSymlinkClusters:withContent:]";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: Failed to write link content into the device", buf, 0xCu);
}

void sub_10002E7A4(uint8_t *buf, void *a2)
{
  *buf = 136315138;
  *a2 = "[FATVolume isSymLink:replyHandler:]";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: Failed to read link content", buf, 0xCu);
}

void sub_10002E87C(uint64_t a1)
{
  sub_100009728(a1, __stack_chk_guard);
  sub_100009700();
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10002E900(uint64_t a1)
{
  sub_100009728(a1, __stack_chk_guard);
  sub_100009700();
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10002EA08()
{
  sub_100014E58();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10002EB10(uint64_t a1)
{
  sub_100009728(a1, __stack_chk_guard);
  sub_100009700();
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10002EB94(uint64_t a1)
{
  sub_100009728(a1, __stack_chk_guard);
  sub_100009700();
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10002EC18(uint64_t a1)
{
  sub_100009728(a1, __stack_chk_guard);
  sub_100009700();
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10002EC9C(uint64_t a1)
{
  sub_100009728(a1, __stack_chk_guard);
  sub_100009700();
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10002ED20(uint64_t a1)
{
  sub_100009728(a1, __stack_chk_guard);
  sub_100009700();
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10002EDA4(uint64_t a1)
{
  sub_100009728(a1, __stack_chk_guard);
  sub_100009700();
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10002EE28(uint64_t a1)
{
  sub_100009728(a1, __stack_chk_guard);
  sub_100009700();
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10002EEAC(uint64_t a1)
{
  sub_100009728(a1, __stack_chk_guard);
  sub_100009700();
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10002EF30(uint64_t a1)
{
  sub_100009728(a1, __stack_chk_guard);
  sub_100009700();
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10002EFB4(uint64_t a1)
{
  sub_100009728(a1, __stack_chk_guard);
  sub_100009700();
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10002F038(uint64_t a1)
{
  sub_100009728(a1, __stack_chk_guard);
  sub_100009700();
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10002F0BC()
{
  sub_100009714();
  sub_100014E4C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10002F1C4()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10002F248()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10002F2CC(int *a1, int a2)
{
  v2 = *a1;
  v3 = 136315650;
  v4 = "[FATVolume createItemNamed:type:inDirectory:attributes:content:replyHandler:]_block_invoke";
  v5 = 1024;
  v6 = a2;
  v7 = 1024;
  v8 = v2;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: %u clusters were allocated, while asked for %u. (allowPartial = false).", &v3, 0x18u);
}

void sub_10002F36C()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10002F4F8(uint8_t *buf, int a2, int a3)
{
  *buf = 136315650;
  *(buf + 4) = "[FATVolume enumerateDirectory:startingAtCookie:verifier:providingAttributes:usingPacker:replyHandler:]_block_invoke";
  *(buf + 6) = 1024;
  *(buf + 14) = a2;
  *(buf + 9) = 1024;
  *(buf + 5) = a3;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: cookieOffset [%u] not aligned with dirEntrySize [%u]", buf, 0x18u);
}

void sub_10002F668(void *a1)
{
  [a1 code];
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_10002F804(uint64_t a1)
{
  v1 = *(*(*a1 + 8) + 40);
  sub_100009700();
  sub_100009754();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10002F918()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10002F99C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100009700();
  sub_100009754();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10002FDC8()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10002FE4C()
{
  v0[0] = 136315394;
  sub_100009714();
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Failed to purge dir's metadata blocks, error %@", v0, 0x16u);
}

void sub_100030060(uint64_t a1)
{
  sub_100009728(a1, __stack_chk_guard);
  sub_100009700();
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000301EC(uint64_t a1)
{
  sub_100009728(a1, __stack_chk_guard);
  sub_100009700();
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100030270(uint64_t a1)
{
  sub_100009728(a1, __stack_chk_guard);
  sub_100009700();
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000302F4(uint64_t a1)
{
  sub_100009728(a1, __stack_chk_guard);
  sub_100009700();
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000303FC(uint64_t a1)
{
  sub_100009728(a1, __stack_chk_guard);
  sub_100009700();
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100030480(uint64_t a1)
{
  sub_100009728(a1, __stack_chk_guard);
  sub_100009700();
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100030504(uint64_t a1)
{
  sub_100009728(a1, __stack_chk_guard);
  sub_100009700();
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100030588(uint64_t a1)
{
  sub_100009728(a1, __stack_chk_guard);
  sub_100009700();
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10003060C()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100030798()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003081C(void *a1, uint64_t *a2)
{
  [a1 fs_posixCode];
  v8 = *a2;
  sub_100009754();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_100030A58(uint64_t a1)
{
  sub_100009728(a1, __stack_chk_guard);
  sub_100009700();
  sub_100014E4C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100030ADC(id *a1)
{
  v1 = [*a1 systemInfo];
  [v1 dirtyBitValue];
  sub_100009754();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100030BA4()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100030CAC()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100030DB4(uint64_t a1)
{
  v6 = *(a1 + 40) + *(a1 + 32);
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Au);
}

void sub_100030E60()
{
  sub_100014E58();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100030F68()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100031070()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000310F4()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000311FC()
{
  sub_100014E58();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100031288(uint64_t a1)
{
  v1 = *(*a1 + 40);
  sub_100009700();
  sub_100009754();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100031398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 136315650;
  v4 = "[FileItem blockmapOffset:length:flags:operationID:packer:replyHandler:]";
  v5 = 2048;
  v6 = a1 - a2;
  v7 = 2048;
  v8 = a3;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: Couldn't allocate all clusters for wanted offset and length. Length to write = %llu (instead of %zu).\n", &v3, 0x20u);
}

void sub_100031438()
{
  sub_100014E58();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100031548()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000315CC()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000316D4()
{
  v0[0] = 136315394;
  sub_100014E58();
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Couldn't find blockmap request (%lu) in dictionary.", v0, 0x16u);
}

void sub_10003175C()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000317E0()
{
  sub_100014E58();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10003186C()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000318F0(uint64_t a1)
{
  v1 = *(*a1 + 40);
  sub_100009700();
  sub_100009754();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10003197C()
{
  sub_100014E58();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100031A84(uint64_t a1)
{
  v6 = *(*a1 + 40);
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100031B1C()
{
  v0 = 136315138;
  v1 = "[FATItem getAttributes:]";
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Failed to get parent id (dir item).", &v0, 0xCu);
}

void sub_100031BA4()
{
  v0 = 136315138;
  v1 = "[FATItem getAttributes:]";
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Failed to get parent id (item is not a dir)", &v0, 0xCu);
}

void sub_100031C2C(void *a1)
{
  [a1 size];
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100031DC8()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100031E4C()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100031ED0()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100031F54(void *a1)
{
  [a1 code];
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_10003206C()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100032174()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003223C(_DWORD *a1, int a2, uint64_t a3, void *a4)
{
  *a1 = 136315650;
  v5 = sub_10000AF38(a1, a2, "[FATManager updateFATStats]");
  *(v5 + 18) = 2048;
  *(v5 + 20) = v6;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: counted free clusters number (%u) is not equal to the number read in boot (%llu) - updating", v7, 0x1Cu);
}

void sub_1000322AC(_DWORD *a1, int a2, uint64_t a3, void *a4)
{
  *a1 = 136315650;
  v5 = sub_10000AF38(a1, a2, "[FATManager updateFATStats]");
  *(v5 + 18) = v6;
  *(v5 + 20) = v7;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: first free cluster found (%u) is not equal to the one read in boot (%u) - updating", v8, 0x18u);
}

void sub_100032318()
{
  sub_10001E97C();
  sub_10001E990();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003239C(uint64_t a1)
{
  v6 = *(*a1 + 24);
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_100032544()
{
  sub_10001E97C();
  sub_10001E990();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003264C()
{
  sub_10001E97C();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000326D0()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100032754()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000327D8()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003285C()
{
  v0 = 136315138;
  v1 = "[ItemCache initWithVolume:]";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: Failed to initialize queue / hash", &v0, 0xCu);
}

void sub_1000328E4()
{
  v0 = 136315138;
  v1 = "[ItemCache insertItem:replyHandler:]";
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: Item already cached", &v0, 0xCu);
}

void sub_10003296C()
{
  v0 = 136315138;
  v1 = "[ItemCache insertItem:replyHandler:]";
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Item is deleted", &v0, 0xCu);
}

void sub_1000329F4(uint64_t a1)
{
  v1 = 136315394;
  v2 = "[ItemCache removeItem:]";
  v3 = 2112;
  v4 = a1;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: item for key %@ not found", &v1, 0x16u);
}

void sub_100032B18(uint64_t a1)
{
  sub_100009728(a1, __stack_chk_guard);
  sub_100009700();
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100032B9C(uint64_t a1)
{
  sub_100009728(a1, __stack_chk_guard);
  sub_100009700();
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100032C20()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100032CA4()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100032D28()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100032DAC()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100032E30()
{
  v0 = 136315138;
  v1 = "[MsdosDirItem iterateFromOffset:options:replyHandler:]_block_invoke";
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Got NULL dir entry from dir block", &v0, 0xCu);
}

void sub_100032EB8()
{
  sub_100026054();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_100032FC0()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000330C8()
{
  sub_100026054();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10003314C()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000331D0(void *a1)
{
  [a1 dosDirEntryDirBlockNum];
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_10003327C()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100033300(uint64_t a1)
{
  v1 = *(a1 + 40);
  sub_10002607C();
  sub_100009754();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100033388(uint64_t a1)
{
  v1 = *(a1 + 40);
  sub_10002607C();
  sub_100009754();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100033410(uint64_t a1)
{
  sub_100009728(a1, __stack_chk_guard);
  sub_100009700();
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100033494()
{
  v0 = 136315138;
  v1 = "wipeFSCallback";
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: waiting for reply from send wipe resource request", &v0, 0xCu);
}

void sub_10003351C(uint64_t a1, uint8_t *buf, void *a3)
{
  *buf = 136315394;
  *(buf + 4) = "wipeFSCallback";
  *(buf + 6) = 2080;
  *(buf + 14) = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: Wipe resource error: %s", buf, 0x16u);
}

void sub_100033700(uint64_t a1)
{
  v1 = *(*(*a1 + 8) + 40);
  v2 = 136315394;
  v3 = "wipeFSCallback_block_invoke";
  v4 = 2112;
  v5 = v1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: got reply from send wipe resource request with err: %@", &v2, 0x16u);
}

void sub_1000337A0()
{
  v0 = 136315138;
  v1 = "wipeFSCallback_block_invoke";
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: got reply from send wipe resource request with no errors", &v0, 0xCu);
}

void sub_100033828()
{
  v0[0] = 136315394;
  sub_100009714();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: Failed to read, error %@", v0, 0x16u);
}

void sub_1000338B0(uint64_t a1, uint64_t a2)
{
  v2 = 136315650;
  v3 = "[msdosFileSystem syncRead:into:startingAt:length:]";
  v4 = 2048;
  v5 = a1;
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: Expected to read %lu bytes, read %lu", &v2, 0x20u);
}

void sub_10003394C()
{
  v0[0] = 136315394;
  sub_100009714();
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: Setting up probeResult (%@)", v0, 0x16u);
}

void sub_100033A50(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  sub_100028D54(&_mh_execute_header, &_os_log_default, v2, "Failed to start phase, error %s", v3, v4, v5, v6, 2u);
}

void sub_100033D50(uint64_t a1)
{
  v1 = [*(a1 + 8) localizedDescription];
  v2 = 136315394;
  v3 = "[msdosProgressHelper startPhase:parentUnitCount:phaseTotalCount:completedCounter:]";
  v4 = 2112;
  v5 = v1;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s missing endPhase call for %@", &v2, 0x16u);
}

void sub_100033E00(unsigned __int8 *a1)
{
  sub_10002C0D0(a1, __stack_chk_guard);
  v7 = *(v1 + 511);
  sub_100009754();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_100033E9C(void *a1)
{
  v1 = [a1 systemInfo];
  [v1 bytesPerSector];
  sub_100009754();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_100033F54(unsigned __int8 *a1)
{
  sub_10002C0D0(a1, __stack_chk_guard);
  sub_10002607C();
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100033FD8(void *a1)
{
  v1 = [a1 systemInfo];
  [v1 maxValidCluster];
  sub_100009754();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100034088(void *a1)
{
  v1 = [a1 systemInfo];
  [v1 maxValidCluster];
  sub_10002C0C0();
  sub_10002C0DC();
  sub_100014E4C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100034130(void *a1)
{
  v1 = [a1 resource];
  [v1 blockCount];
  sub_10002C0C0();
  sub_10002C0DC();
  sub_100014E4C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000341D8(void *a1)
{
  v2 = [a1 resource];
  [v2 blockCount];
  v3 = [a1 systemInfo];
  [v3 maxValidCluster];
  sub_10002C0C0();
  sub_100014E4C();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Cu);
}

void sub_1000342D0()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000343D8(void *a1)
{
  v1 = [a1 systemInfo];
  [v1 type];
  sub_100014E4C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_10003449C(void *a1)
{
  v1 = [a1 systemInfo];
  [v1 type];
  sub_10002607C();
  sub_100014E4C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100034548(void *a1)
{
  v1 = [a1 systemInfo];
  [v1 type];
  sub_10002607C();
  sub_100009754();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000345F8(void *a1)
{
  v2 = [a1 systemInfo];
  [v2 rootFirstCluster];
  v3 = [a1 systemInfo];
  [v3 maxValidCluster];
  sub_100009754();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x22u);
}

void sub_1000348F4(void *a1)
{
  v1 = [a1 resource];
  [v1 blockCount];
  sub_10002C0C0();
  sub_100009754();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100034BA8(unsigned __int8 *a1)
{
  sub_10002C0D0(a1, __stack_chk_guard);
  sub_10002607C();
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100034C2C()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100034CB0()
{
  v0 = 136315138;
  v1 = "[msdosVolume FatMount:replyHandler:]";
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Failed to create root item", &v0, 0xCu);
}

void sub_100034DBC()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100034E40(uint64_t a1)
{
  *(a1 + 48);
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100034F70()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100035078()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000350FC(unsigned __int8 *a1)
{
  sub_10002C0D0(a1, __stack_chk_guard);
  v7 = *(v1 + 511);
  sub_100009754();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_100035188(unsigned __int8 *a1)
{
  v6 = *a1;
  sub_100009754();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100035310()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100035394()
{
  sub_10002D318();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100035418()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003549C()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100035520()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000355A4()
{
  sub_10002D318();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1000356CC()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100035750()
{
  sub_100009714();
  sub_100009754();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000357D4()
{
  v0 = 136315138;
  v1 = "+[Utilities enableMetaRW]";
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: start", &v0, 0xCu);
}