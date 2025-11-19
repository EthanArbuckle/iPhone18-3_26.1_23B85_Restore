uint64_t __macho_lc_is_symtab(int *a1, unint64_t a2, int a3, int **a4)
{
  if ((a1 + 16) > a2)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *a1;
  if (a3)
  {
    if (v5 == 0x2000000)
    {
      v6 = bswap32(a1[1]);
      goto LABEL_8;
    }

    return 2;
  }

  if (v5 != 2)
  {
    return 2;
  }

  v6 = a1[1];
LABEL_8:
  if (v6 == 24 && (a1 + 48) <= a2)
  {
    v4 = 0;
    *a4 = a1;
    return v4;
  }

  return 0xFFFFFFFFLL;
}

uint64_t macho_find_dysymtab(int *a1, unint64_t a2, void *a3)
{
  v5 = 0;
  if (!a3)
  {
    return macho_scan_load_commands(a1, a2, __macho_lc_is_dysymtab, &v5);
  }

  *a3 = 0;
  result = macho_scan_load_commands(a1, a2, __macho_lc_is_dysymtab, &v5);
  if (!result)
  {
    *a3 = v5;
  }

  return result;
}

uint64_t __macho_lc_is_dysymtab(int *a1, unint64_t a2, int a3, int **a4)
{
  if ((a1 + 16) > a2)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *a1;
  if (a3)
  {
    if (v5 == 184549376)
    {
      v6 = bswap32(a1[1]);
      goto LABEL_8;
    }

    return 2;
  }

  if (v5 != 11)
  {
    return 2;
  }

  v6 = a1[1];
LABEL_8:
  if (v6 == 80 && (a1 + 160) <= a2)
  {
    v4 = 0;
    *a4 = a1;
    return v4;
  }

  return 0xFFFFFFFFLL;
}

uint64_t __uuid_callback(_DWORD *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != 27)
  {
    return 2;
  }

  if (a1 + a1[1] > a2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a4 = 16;
  *(a4 + 8) = a1 + 2;
  return result;
}

uint64_t macho_find_uuid(int *a1, unint64_t a2, void *a3)
{
  v5 = 0;
  v6 = 0;
  result = macho_scan_load_commands(a1, a2, __uuid_callback, &v5);
  if (a3)
  {
    if (!result)
    {
      *a3 = v6;
    }
  }

  return result;
}

uint64_t __macho_sect_in_lc(unsigned int *a1, unint64_t a2, int a3, uint64_t a4)
{
  v4 = *(a4 + 2);
  v5 = *(a4 + 1);
  if (v4 > v5)
  {
    return 3;
  }

  if ((a1 + 16) > a2)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *a1;
  v8 = bswap32(*a1);
  if (a3)
  {
    v7 = v8;
  }

  if (v7 == 1)
  {
    v15 = a1[1];
    LODWORD(v16) = bswap32(v15);
    v17 = bswap32(a1[12]);
    if (a3)
    {
      v16 = v16;
    }

    else
    {
      v16 = v15;
    }

    if (a3)
    {
      v18 = v17;
    }

    else
    {
      v18 = a1[12];
    }

    if (68 * v18 + 56 != v16 || a1 + v16 > a2)
    {
      return 0xFFFFFFFFLL;
    }

    if (v18)
    {
      v14 = a1 + 14;
      while (1)
      {
        LOBYTE(v4) = v4 + 1;
        if (v5 == v4)
        {
          break;
        }

        v14 += 17;
        if (!--v18)
        {
LABEL_38:
          *(a4 + 2) = v4;
          return 2;
        }
      }

      goto LABEL_40;
    }

    return 2;
  }

  if (v7 != 25)
  {
    return 2;
  }

  v9 = a1[1];
  LODWORD(v10) = bswap32(v9);
  v11 = bswap32(a1[16]);
  if (a3)
  {
    v10 = v10;
  }

  else
  {
    v10 = v9;
  }

  if (a3)
  {
    v12 = v11;
  }

  else
  {
    v12 = a1[16];
  }

  if (80 * v12 + 72 != v10 || a1 + v10 > a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!v12)
  {
    return 2;
  }

  v14 = a1 + 18;
  while (1)
  {
    LOBYTE(v4) = v4 + 1;
    if (v5 == v4)
    {
      break;
    }

    v14 += 20;
    if (!--v12)
    {
      goto LABEL_38;
    }
  }

LABEL_40:
  result = 0;
  *(a4 + 2) = v5;
  *(a4 + 8) = v14;
  return result;
}

uint64_t __source_version_callback(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  if (*a1 != 42)
  {
    return 2;
  }

  if (a1 + *(a1 + 4) > a2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a4 = *(a1 + 8);
  return result;
}

uint64_t macho_swap(mach_header_64 *mh)
{
  if (mh->magic == -805638658)
  {
    v2 = 1;
    swap_mach_header_64(mh, NX_LittleEndian);
    if (mh->ncmds)
    {
      v7 = 0;
      v8 = 32;
      do
      {
        v9 = (mh + v8);
        v10 = *(&mh->cputype + v8);
        if (*(&mh->magic + v8) == 419430400)
        {
          swap_segment_command_64(v9, NX_LittleEndian);
        }

        else
        {
          swap_load_command(v9, NX_LittleEndian);
        }

        v8 += bswap32(v10);
        ++v7;
      }

      while (v7 < mh->ncmds);
      return 1;
    }
  }

  else
  {
    if (mh->magic != -822415874)
    {
      return 0;
    }

    v2 = 1;
    swap_mach_header(mh, NX_LittleEndian);
    if (mh->ncmds)
    {
      v3 = 0;
      v4 = 28;
      do
      {
        v5 = (mh + v4);
        v6 = *(&mh->cputype + v4);
        if (*(&mh->magic + v4) == 0x1000000)
        {
          swap_segment_command(v5, NX_LittleEndian);
        }

        else
        {
          swap_load_command(v5, NX_LittleEndian);
        }

        v4 += bswap32(v6);
        ++v3;
      }

      while (v3 < mh->ncmds);
      return 1;
    }
  }

  return v2;
}

uint64_t macho_unswap(mach_header_64 *mh)
{
  if (mh->magic == -17958193)
  {
    if (mh->ncmds)
    {
      v6 = 0;
      v7 = 32;
      do
      {
        v8 = (mh + v7);
        v9 = *(&mh->cputype + v7);
        if (*(&mh->magic + v7) == 25)
        {
          swap_segment_command_64(v8, NX_BigEndian);
        }

        else
        {
          swap_load_command(v8, NX_BigEndian);
        }

        v7 += v9;
        ++v6;
      }

      while (v6 < mh->ncmds);
    }

    swap_mach_header_64(mh, NX_BigEndian);
    return 1;
  }

  if (mh->magic == -17958194)
  {
    if (mh->ncmds)
    {
      v2 = 0;
      v3 = 28;
      do
      {
        v4 = (mh + v3);
        v5 = *(&mh->cputype + v3);
        if (*(&mh->magic + v3) == 1)
        {
          swap_segment_command(v4, NX_BigEndian);
        }

        else
        {
          swap_load_command(v4, NX_BigEndian);
        }

        v3 += v5;
        ++v2;
      }

      while (v2 < mh->ncmds);
    }

    swap_mach_header(mh, NX_BigEndian);
    return 1;
  }

  return 0;
}

char *macho_get_segment_by_name(_DWORD *a1, char *__s2)
{
  if (*a1 != -17958194)
  {
    return 0;
  }

  v3 = a1[4];
  if (!v3)
  {
    return 0;
  }

  v5 = 28;
  while (1)
  {
    v6 = a1 + v5;
    if (*(a1 + v5) == 1 && !strncmp(v6 + 8, __s2, 0x10uLL))
    {
      break;
    }

    v5 += *(v6 + 1);
    if (!--v3)
    {
      return 0;
    }
  }

  return v6;
}

char *macho_get_segment_by_name_64(_DWORD *a1, char *__s2)
{
  if (*a1 != -17958193)
  {
    return 0;
  }

  v3 = a1[4];
  if (!v3)
  {
    return 0;
  }

  v5 = 32;
  while (1)
  {
    v6 = a1 + v5;
    if (*(a1 + v5) == 25 && !strncmp(v6 + 8, __s2, 0x10uLL))
    {
      break;
    }

    v5 += *(v6 + 1);
    if (!--v3)
    {
      return 0;
    }
  }

  return v6;
}

char *macho_get_section_by_name(_DWORD *a1, char *a2, const char *a3)
{
  if (*a1 != -17958194)
  {
    return 0;
  }

  result = macho_get_segment_by_name(a1, a2);
  if (result)
  {
    v5 = result + 56;
    v6 = *(result + 12);
    if (v6)
    {
      v7 = 0;
      v8 = &result[68 * (v6 - 1) + 124];
      while (strncmp(v5, a3, 0x10uLL))
      {
        ++v7;
        v5 += 68;
        if (v6 == v7)
        {
          v5 = v8;
          v7 = v6;
          break;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    if (v7 == v6)
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

char *macho_get_section_by_name_64(_DWORD *a1, char *a2, const char *a3)
{
  if (*a1 != -17958193)
  {
    return 0;
  }

  result = macho_get_segment_by_name_64(a1, a2);
  if (result)
  {
    v5 = result + 72;
    v6 = *(result + 16);
    if (v6)
    {
      v7 = 0;
      v8 = &result[80 * (v6 - 1) + 152];
      while (strncmp(v5, a3, 0x10uLL))
      {
        ++v7;
        v5 += 80;
        if (v6 == v7)
        {
          v5 = v8;
          v7 = v6;
          break;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    if (v7 == v6)
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

uint64_t macho_remove_linkedit(mach_header_64 *a1, void *a2)
{
  v4 = macho_swap(a1);
  v5 = v4;
  if (a1->magic == -17958194)
  {
    v6 = 28;
  }

  else
  {
    if (a1->magic != -17958193)
    {
      v14 = 0;
      if (!v4)
      {
        return v14;
      }

      goto LABEL_22;
    }

    v6 = 32;
  }

  ncmds = a1->ncmds;
  if (ncmds)
  {
    v8 = a1 + v6;
    v9 = a1 + v6;
    do
    {
      v10 = *v9;
      v11 = *(v9 + 1);
      if (*v9 > 10)
      {
        if (v10 == 11)
        {
          goto LABEL_19;
        }

        if (v10 == 25 && !strncmp(v9 + 8, "__LINKEDIT", 0xAuLL))
        {
          v12 = *(v9 + 4);
LABEL_18:
          *a2 = v12;
LABEL_19:
          v13 = a1->sizeofcmds - v11;
          --a1->ncmds;
          a1->sizeofcmds = v13;
          bzero(v9, v11);
          goto LABEL_20;
        }
      }

      else if (v10 == 1)
      {
        if (!strncmp(v9 + 8, "__LINKEDIT", 0xAuLL))
        {
          v12 = *(v9 + 7);
          goto LABEL_18;
        }
      }

      else if (v10 == 2)
      {
        goto LABEL_19;
      }

      memmove(v8, v9, v11);
      v8 += v11;
LABEL_20:
      v9 += v11;
      --ncmds;
    }

    while (ncmds);
  }

  v14 = 1;
  if (v5)
  {
LABEL_22:
    macho_unswap(a1);
  }

  return v14;
}

uint64_t macho_trim_linkedit(mach_header_64 *a1, void *a2)
{
  *a2 = 0;
  v4 = macho_swap(a1);
  if (a1->magic == -17958194)
  {
    v5 = 28;
  }

  else
  {
    if (a1->magic != -17958193)
    {
      goto LABEL_25;
    }

    v5 = 32;
  }

  ncmds = a1->ncmds;
  if (!ncmds)
  {
LABEL_25:
    v18 = 0;
    if (!v4)
    {
      return v18;
    }

    goto LABEL_26;
  }

  magic = a1->magic;
  v32 = v4;
  v30 = a2;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = (&a1->magic + v5);
  v11 = a1->ncmds;
  v12 = a1 + v5;
  do
  {
    v13 = *v12;
    v14 = *(v12 + 1);
    if (*v12 > 10)
    {
      if (v13 == 11)
      {
        v7 = v12;
        goto LABEL_18;
      }

      if (v13 != 25)
      {
        goto LABEL_18;
      }
    }

    else if (v13 != 1)
    {
      if (v13 == 2)
      {
        v8 = v12;
      }

      goto LABEL_18;
    }

    if (!strncmp(v12 + 8, "__LINKEDIT", 0xAuLL))
    {
      v9 = v12;
    }

LABEL_18:
    v12 += v14;
    --v11;
  }

  while (v11);
  if (!v9)
  {
    goto LABEL_28;
  }

  if (v7)
  {
    if (v8)
    {
      v15 = 16;
      v16 = 8 * *(v7 + 19);
      if (magic == -17958194)
      {
        v15 = 12;
        v17 = *(v9 + 7);
      }

      else
      {
        v17 = *(v9 + 4);
      }

      v20 = v8[5] + v15 * v8[3] + 7;
      v21 = roundPageCrossSafe(8 * *(v7 + 19));
      v22 = v8[2];
      v23 = *(v7 + 18);
      v24 = a1 + v22;
      if (v22 < v23)
      {
        memmove(v24, a1 + v23, v16);
        v25 = v8[2];
        *(v7 + 18) = v25;
        v24 = a1 + v25 + v16;
      }

      bzero(v24, v20 & 0x3FFFFFFFF8);
      if (v21 >= v17)
      {
        v26 = v17;
      }

      else
      {
        v26 = v21;
      }

      if (magic == -17958194)
      {
        *(v9 + 9) = v26;
        *(v9 + 7) = v26;
      }

      else
      {
        *(v9 + 6) = v26;
        *(v9 + 4) = v26;
      }

      *v30 = v17 - v26;
      v27 = v10;
      do
      {
        v28 = v10[1];
        if (*v10 == 2)
        {
          v29 = a1->sizeofcmds - v28;
          --a1->ncmds;
          a1->sizeofcmds = v29;
          bzero(v10, v28);
        }

        else
        {
          if (v27 != v10)
          {
            memmove(v27, v10, v10[1]);
          }

          v27 = (v27 + v28);
        }

        v10 = (v10 + v28);
        --ncmds;
      }

      while (ncmds);
      v18 = 1;
LABEL_50:
      if (!v32)
      {
        return v18;
      }

LABEL_26:
      macho_unswap(a1);
      return v18;
    }

LABEL_28:
    v18 = 0;
    goto LABEL_50;
  }

  if (v32)
  {
    macho_unswap(a1);
  }

  return macho_remove_linkedit(a1, v30);
}

CFTypeRef IOHIDDeviceGetProperty(IOHIDDeviceRef device, CFStringRef key)
{
  Value = 0;
  os_unfair_recursive_lock_lock_with_options();
  if ((*(**(device + 3) + 48))(*(device + 3), key, &Value))
  {
    v4 = 1;
  }

  else
  {
    v4 = Value == 0;
  }

  if (v4)
  {
    v5 = *(device + 7);
    if (v5)
    {
      Value = CFDictionaryGetValue(v5, key);
    }

    else
    {
      Value = 0;
    }
  }

  os_unfair_recursive_lock_unlock();
  return Value;
}

void _IOHIDDeviceReleasePrivate(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(a1 + 208))
  {
    v2 = atomic_load((a1 + 224));
    if (v2 != 3)
    {
      _IOHIDDeviceReleasePrivate_cold_1(&v28, v29, (a1 + 224));
    }
  }

  v3 = *(a1 + 240);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 248);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 248) = 0;
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 64) = 0;
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 72) = 0;
  }

  v8 = *(a1 + 296);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 296) = 0;
  }

  v9 = *(a1 + 312);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 312) = 0;
  }

  v10 = *(a1 + 304);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 304) = 0;
  }

  v11 = *(a1 + 24);
  if (v11)
  {
    (*(*v11 + 24))(v11);
    *(a1 + 24) = 0;
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    (*(*v12 + 24))(v12);
    *(a1 + 32) = 0;
  }

  v13 = *(a1 + 8);
  if (v13)
  {
    IOObjectRelease(v13);
    *(a1 + 8) = 0;
  }

  v14 = *(a1 + 96);
  if (v14)
  {
    IOObjectRelease(v14);
    *(a1 + 96) = 0;
  }

  v15 = *(a1 + 88);
  if (v15)
  {
    IONotificationPortDestroy(v15);
    *(a1 + 88) = 0;
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    IODestroyPlugInInterface(v16);
    *(a1 + 40) = 0;
  }

  if (atomic_load((a1 + 320)))
  {
    v18 = atomic_load((a1 + 320));
    _Block_release(v18);
  }

  if (atomic_load((a1 + 328)))
  {
    v20 = atomic_load((a1 + 328));
    _Block_release(v20);
  }

  if (atomic_load((a1 + 336)))
  {
    v22 = atomic_load((a1 + 336));
    _Block_release(v22);
  }

  v23 = *(a1 + 280);
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = *(a1 + 264);
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = *(a1 + 288);
  if (v25)
  {
    v26 = *MEMORY[0x1E69E9840];

    CFRelease(v25);
  }

  else
  {
    v27 = *MEMORY[0x1E69E9840];
  }
}

IOHIDDeviceRef IOHIDDeviceCreate(CFAllocatorRef allocator, io_service_t service)
{
  v24 = 0;
  theInterface = 0;
  v23 = 0;
  theScore = 0;
  entryID = 0;
  if (__deviceInit != -1)
  {
    IOHIDDeviceCreate_cold_1();
  }

  v3 = IOObjectRetain(service);
  if (v3)
  {
    IOHIDDeviceCreate_cold_2(v3, &v26);
    return v26;
  }

  IORegistryEntryGetRegistryEntryID(service, &entryID);
  v4 = CFUUIDGetConstantUUIDWithBytes(0, 0x7Du, 0xDEu, 0xECu, 0xA8u, 0xA7u, 0xB4u, 0x11u, 0xDAu, 0x8Au, 0xEu, 0, 0x14u, 0x51u, 0x97u, 0x58u, 0xEFu);
  v5 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
  v6 = IOCreatePlugInInterfaceForService(service, v4, v5, &theInterface, &theScore);
  if (v6)
  {
    IOHIDDeviceCreate_cold_3(&entryID, v6);
LABEL_16:
    IOObjectRelease(service);
    return 0;
  }

  v7 = theInterface;
  QueryInterface = (*theInterface)->QueryInterface;
  v9 = CFUUIDGetConstantUUIDWithBytes(0, 0x47u, 0x4Bu, 0xDCu, 0x8Eu, 0x9Fu, 0x4Au, 0x11u, 0xDAu, 0xB3u, 0x66u, 0, 0xDu, 0x93u, 0x6Du, 6u, 0xD2u);
  v10 = CFUUIDGetUUIDBytes(v9);
  v11 = (QueryInterface)(v7, *&v10.byte0, *&v10.byte8, &v24);
  if (v11)
  {
    IOHIDDeviceCreate_cold_4(v11);
LABEL_15:
    IODestroyPlugInInterface(theInterface);
    goto LABEL_16;
  }

  v12 = theInterface;
  v13 = (*theInterface)->QueryInterface;
  v14 = CFUUIDGetConstantUUIDWithBytes(0, 0xB4u, 0x73u, 0x25u, 0x6Cu, 0x6Au, 0x72u, 0x4Eu, 4u, 0xB6u, 0x94u, 0xC4u, 0, 0x1Du, 0x20u, 0x20u, 0x20u);
  v15 = CFUUIDGetUUIDBytes(v14);
  if ((v13)(v12, *&v15.byte0, *&v15.byte8, &v23))
  {
    v23 = 0;
  }

  Private = _IOHIDDeviceCreatePrivate();
  if (!Private)
  {
    IOHIDDeviceCreate_cold_5(&v24, &v23);
    goto LABEL_15;
  }

  v17 = Private;
  v18 = v24;
  *(Private + 40) = theInterface;
  v19 = v23;
  *(Private + 24) = v18;
  *(Private + 32) = v19;
  *(Private + 8) = service;
  *(Private + 48) = 0;
  *(Private + 272) = 0;
  IORegistryEntryGetRegistryEntryID(service, (Private + 16));
  return v17;
}

Boolean IOHIDDeviceConformsTo(IOHIDDeviceRef device, uint32_t usagePage, uint32_t usage)
{
  v6 = CFGetAllocator(device);
  Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v8 = Mutable;
  valuePtr = 513;
  v9 = CFGetAllocator(device);
  v10 = CFNumberCreate(v9, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(v8, @"Type", v10);
  CFRelease(v10);
  valuePtr = usagePage;
  v11 = CFGetAllocator(device);
  v12 = CFNumberCreate(v11, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(v8, @"UsagePage", v12);
  CFRelease(v12);
  valuePtr = usage;
  v13 = CFGetAllocator(device);
  v14 = CFNumberCreate(v13, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(v8, @"Usage", v14);
  CFRelease(v14);
  v15 = IOHIDDeviceCopyMatchingElements(device, v8, 0);
  if (v15)
  {
    v16 = v15;
    Count = CFArrayGetCount(v15);
    if (Count < 1)
    {
LABEL_8:
      v21 = 0;
    }

    else
    {
      v18 = Count;
      v19 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v16, v19);
        if (IOHIDElementGetCollectionType(ValueAtIndex) == kIOHIDElementCollectionTypePhysical || IOHIDElementGetCollectionType(ValueAtIndex) == kIOHIDElementCollectionTypeApplication)
        {
          break;
        }

        if (v18 == ++v19)
        {
          goto LABEL_8;
        }
      }

      v21 = 1;
    }

    CFRelease(v16);
  }

  else
  {
    v21 = 0;
  }

  CFRelease(v8);
  return v21;
}

Boolean IOHIDDeviceSetProperty(IOHIDDeviceRef device, CFStringRef key, CFTypeRef property)
{
  os_unfair_recursive_lock_lock_with_options();
  Mutable = *(device + 7);
  if (Mutable || (v7 = CFGetAllocator(device), Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(device + 7) = Mutable) != 0))
  {
    *(device + 257) = 1;
    CFDictionarySetValue(Mutable, key, property);
    if (CFEqual(key, @"IOHIDDeviceSuspend"))
    {
      v8 = CFGetTypeID(property);
      if (v8 == CFBooleanGetTypeID())
      {
        IOHIDDeviceSetProperty_cold_1(device, property);
      }
    }

    os_unfair_recursive_lock_unlock();
    return (*(**(device + 3) + 56))(*(device + 3), key, property) == 0;
  }

  else
  {
    os_unfair_recursive_lock_unlock();
    return 0;
  }
}

void IOHIDDeviceScheduleWithRunLoop(IOHIDDeviceRef device, CFRunLoopRef runLoop, CFStringRef runLoopMode)
{
  os_unfair_recursive_lock_lock_with_options();
  if (*(device + 24))
  {
    IOHIDDeviceUnscheduleFromRunLoop(device, v6, v7);
  }

  __IOHIDDeviceSetupAsyncSupport(device);
  *(device + 24) = runLoop;
  *(device + 25) = runLoopMode;
  CFRunLoopAddSource(runLoop, *(device + 13), runLoopMode);
  RunLoopSource = IONotificationPortGetRunLoopSource(*(device + 11));
  if (RunLoopSource)
  {
    CFRunLoopAddSource(*(device + 24), RunLoopSource, *(device + 25));
  }

  v9 = *(device + 30);
  os_unfair_recursive_lock_unlock();
  if (v9)
  {
    IOHIDQueueScheduleWithRunLoop(v9, runLoop, runLoopMode);

    IOHIDQueueStart(v9);
  }
}

void IOHIDDeviceUnscheduleFromRunLoop(IOHIDDeviceRef device, CFRunLoopRef runLoop, CFStringRef runLoopMode)
{
  os_unfair_recursive_lock_lock_with_options();
  v4 = *(device + 24);
  if (v4)
  {
    v5 = *(device + 30);
    v6 = *(device + 25);
    os_unfair_recursive_lock_unlock();
    if (v5)
    {
      IOHIDQueueStop(v5);
      IOHIDQueueUnscheduleFromRunLoop(v5, v4, v6);
    }

    os_unfair_recursive_lock_lock_with_options();
    v7 = *(device + 11);
    if (v7)
    {
      RunLoopSource = IONotificationPortGetRunLoopSource(v7);
      if (RunLoopSource)
      {
        CFRunLoopRemoveSource(*(device + 24), RunLoopSource, *(device + 25));
      }
    }

    v9 = *(device + 13);
    if (v9)
    {
      CFRunLoopRemoveSource(*(device + 24), v9, *(device + 25));
    }

    *(device + 24) = 0;
    *(device + 25) = 0;
  }

  os_unfair_recursive_lock_unlock();
}

void __IOHIDDeviceSetupAsyncSupport(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  memset(&context.info, 0, 72);
  context.version = 1;
  if (*(a1 + 192) || *(a1 + 208))
  {
    __IOHIDDeviceSetupAsyncSupport_cold_1();
  }

  if (!*(a1 + 104))
  {
    v2 = (*(**(a1 + 24) + 64))(*(a1 + 24), &context.perform);
    perform = context.perform;
    if (v2)
    {
      v4 = 1;
    }

    else
    {
      v4 = context.perform == 0;
    }

    if (v4)
    {
      v10 = v2;
      memset(v15, 0, sizeof(v15));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v12) = 67109376;
      HIDWORD(v12) = v10;
      v13 = 2048;
      v14 = perform;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      *(a1 + 104) = context.perform;
      CFRunLoopSourceGetContext(perform, &context);
      v5 = *&context.retain;
      *(a1 + 112) = *&context.version;
      *(a1 + 128) = v5;
      v6 = *&context.hash;
      *(a1 + 144) = *&context.copyDescription;
      *(a1 + 160) = v6;
      v7 = *(a1 + 120);
      *(a1 + 176) = context.cancel;
      *(a1 + 184) = v7;
      if (v7)
      {
        if (!*(a1 + 88))
        {
          v8 = IONotificationPortCreate(0);
          *(a1 + 88) = v8;
          if (!v8)
          {
            __IOHIDDeviceSetupAsyncSupport_cold_2(&v12, v15);
          }
        }

        goto LABEL_11;
      }
    }

    __IOHIDDeviceSetupAsyncSupport_cold_3(&v12, v15);
  }

LABEL_11:
  v9 = *MEMORY[0x1E69E9840];
}

void __IOHIDDeviceSetDispatchQueue_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 8)
  {
    v4 = *(a1 + 32);
    os_unfair_recursive_lock_lock_with_options();
    dispatch_release(*(*(a1 + 32) + 216));
    *(*(a1 + 32) + 216) = 0;
    v5 = *(*(a1 + 32) + 240);
    os_unfair_recursive_lock_unlock();
    v6 = *(a1 + 32);
    os_unfair_recursive_lock_lock_with_options();
    v7 = *(*(a1 + 32) + 232);
    if (v7)
    {
      v8 = v5 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      (*(v7 + 16))();
      _Block_release(*(*(a1 + 32) + 232));
      *(*(a1 + 32) + 232) = 0;
    }

    os_unfair_recursive_lock_unlock();
    dispatch_release(*(*(a1 + 32) + 208));
    v9 = *(a1 + 32);

    CFRelease(v9);
  }

  else if (a2 == 2)
  {
    msg = dispatch_mach_msg_get_msg();
    (*(*(a1 + 32) + 176))(msg, 0, 0, *(*(a1 + 32) + 184));
  }
}

void __IOHIDDeviceSetDispatchQueue_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_recursive_lock_lock_with_options();
  CFRelease(*(*(a1 + 32) + 240));
  *(*(a1 + 32) + 240) = 0;
  v3 = *(*(a1 + 32) + 216);
  os_unfair_recursive_lock_unlock();
  v4 = *(a1 + 32);
  os_unfair_recursive_lock_lock_with_options();
  v5 = *(*(a1 + 32) + 232);
  if (v5)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    (*(v5 + 16))();
    _Block_release(*(*(a1 + 32) + 232));
    *(*(a1 + 32) + 232) = 0;
  }

  os_unfair_recursive_lock_unlock();
  v7 = *(a1 + 32);

  CFRelease(v7);
}

void IOHIDDeviceSetCancelHandler(IOHIDDeviceRef device, dispatch_block_t handler)
{
  v7 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  if (!handler || *(device + 29))
  {
    IOHIDDeviceSetCancelHandler_cold_1(&v5, v6);
  }

  *(device + 29) = _Block_copy(handler);
  v4 = *MEMORY[0x1E69E9840];

  os_unfair_recursive_lock_unlock();
}

void IOHIDDeviceActivate(IOHIDDeviceRef device)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(device + 26))
  {
    v1 = *(device + 24) == 0;
  }

  else
  {
    v1 = 0;
  }

  if (!v1)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    device = _os_crash_msg();
    __break(1u);
  }

  v2 = device;
  if ((atomic_fetch_or(device + 56, 1u) & 1) != 0 || (v3 = *(device + 27), CFMachPortGetPort(*(device + 23)), dispatch_mach_connect(), IONotificationPortSetDispatchQueue(*(v2 + 11), *(v2 + 26)), (v4 = *(v2 + 30)) == 0))
  {
    v6 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];

    IOHIDQueueActivate(v4);
  }
}

void IOHIDDeviceCancel(IOHIDDeviceRef device)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(device + 26))
  {
    v1 = *(device + 24) == 0;
  }

  else
  {
    v1 = 0;
  }

  if (!v1)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    device = _os_crash_msg();
    __break(1u);
  }

  v2 = device;
  if ((atomic_fetch_or(device + 56, 2u) & 2) != 0)
  {
    goto LABEL_13;
  }

  v3 = *(device + 27);
  dispatch_mach_cancel();
  v4 = *(v2 + 11);
  if (v4)
  {
    IONotificationPortDestroy(v4);
    *(v2 + 11) = 0;
  }

  v5 = *(v2 + 30);
  if (!v5)
  {
LABEL_13:
    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = *MEMORY[0x1E69E9840];

    IOHIDQueueCancel(v5);
  }
}

void IOHIDDeviceRegisterRemovalCallback(IOHIDDeviceRef device, IOHIDCallback callback, void *context)
{
  v13[0] = context;
  v13[1] = callback;
  if (atomic_load(device + 56))
  {
    IOHIDDeviceRegisterRemovalCallback_cold_1();
  }

  os_unfair_recursive_lock_lock_with_options();
  if ((*(device + 37) || (Mutable = CFSetCreateMutable(0, 0, &__callbackBaseSetCallbacks), (*(device + 37) = Mutable) != 0)) && (v7 = CFGetAllocator(device), (v8 = CFDataCreate(v7, v13, 16)) != 0))
  {
    v9 = v8;
    v10 = *(device + 37);
    if (callback)
    {
      CFSetAddValue(v10, v9);
      v11 = *(device + 11);
      if (v11 || (v11 = IONotificationPortCreate(0), (*(device + 11) = v11) != 0) && *(device + 2))
      {
        if (*(device + 24))
        {
          RunLoopSource = IONotificationPortGetRunLoopSource(v11);
          if (RunLoopSource)
          {
            CFRunLoopAddSource(*(device + 24), RunLoopSource, *(device + 25));
          }
        }

        if (!*(device + 24))
        {
          IOServiceAddInterestNotification(*(device + 11), *(device + 2), "IOGeneralInterest", __IOHIDDeviceNotification, device, device + 24);
        }
      }
    }

    else
    {
      CFSetRemoveValue(v10, v9);
    }

    os_unfair_recursive_lock_unlock();
    CFRelease(v9);
  }

  else
  {
    os_unfair_recursive_lock_unlock();
  }
}

void __IOHIDDeviceNotification(CFSetRef *a1, uint64_t a2, int a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!a1 || a3 != -536870896)
  {
LABEL_15:
    v13 = *MEMORY[0x1E69E9840];
    return;
  }

  os_unfair_recursive_lock_lock_with_options();
  v4 = a1[37];
  if (v4)
  {
    Count = CFSetGetCount(v4);
    if (Count)
    {
      v6 = Count;
      v7 = CFRetain(a1);
      v8 = 8 * v6;
      MEMORY[0x1EEE9AC00](v7);
      v9 = (v15 - ((8 * v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      if ((8 * v6) >= 0x200)
      {
        v10 = 512;
      }

      else
      {
        v10 = 8 * v6;
      }

      bzero(v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
      bzero(v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v6);
      CFSetGetValues(a1[37], (v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0)));
      if (v6 >= 1)
      {
        do
        {
          if (*v9)
          {
            BytePtr = CFDataGetBytePtr(*v9);
            if (BytePtr)
            {
              v12 = *(BytePtr + 1);
              if (v12)
              {
                v12(*BytePtr, 0, a1);
              }
            }
          }

          ++v9;
          --v6;
        }

        while (v6);
      }

      os_unfair_recursive_lock_unlock();
      CFRelease(a1);
      goto LABEL_15;
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  os_unfair_recursive_lock_unlock();
}

void IOHIDDeviceRegisterInputValueCallback(IOHIDDeviceRef device, IOHIDValueCallback callback, void *context)
{
  *bytes = context;
  v18 = callback;
  if (atomic_load(device + 56))
  {
    IOHIDDeviceRegisterRemovalCallback_cold_1();
  }

  CFRetain(device);
  os_unfair_recursive_lock_lock_with_options();
  if (*(device + 39))
  {
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    Mutable = CFSetCreateMutable(0, 0, &__callbackBaseSetCallbacks);
    *(device + 39) = Mutable;
    os_unfair_recursive_lock_unlock();
    if (!Mutable)
    {
      goto LABEL_18;
    }
  }

  v7 = CFGetAllocator(device);
  v8 = CFDataCreate(v7, bytes, 16);
  if (v8)
  {
    v9 = v8;
    if (callback)
    {
      os_unfair_recursive_lock_lock_with_options();
      if (!*(device + 30))
      {
        v10 = CFGetAllocator(device);
        v11 = IOHIDQueueCreate(v10, device, 20, 0);
        *(device + 30) = v11;
        if (!v11)
        {
LABEL_17:
          os_unfair_recursive_lock_unlock();
          CFRelease(v9);
          goto LABEL_18;
        }

        __IOHIDDeviceRegisterMatchingInputElements(device, v11, *(device + 31));
        v12 = *(device + 24);
        if (v12)
        {
          IOHIDQueueScheduleWithRunLoop(*(device + 30), v12, *(device + 25));
          IOHIDQueueStart(*(device + 30));
        }

        v13 = *(device + 26);
        if (v13)
        {
          IOHIDQueueSetDispatchQueue(*(device + 30), v13);
          CFRetain(device);
          v14 = *(device + 30);
          handler[0] = MEMORY[0x1E69E9820];
          handler[1] = 0x40000000;
          handler[2] = __IOHIDDeviceRegisterInputValueCallback_block_invoke;
          handler[3] = &__block_descriptor_tmp_30;
          handler[4] = device;
          IOHIDQueueSetCancelHandler(v14, handler);
        }
      }

      os_unfair_recursive_lock_unlock();
      os_unfair_recursive_lock_lock_with_options();
      CFSetAddValue(*(device + 39), v9);
    }

    else
    {
      os_unfair_recursive_lock_lock_with_options();
      CFSetRemoveValue(*(device + 39), v9);
    }

    os_unfair_recursive_lock_unlock();
    os_unfair_recursive_lock_lock_with_options();
    v15 = *(device + 30);
    if (v15)
    {
      IOHIDQueueRegisterValueAvailableCallback(v15, __IOHIDDeviceInputElementValueCallback, device);
    }

    goto LABEL_17;
  }

LABEL_18:
  CFRelease(device);
}

void __IOHIDDeviceRegisterMatchingInputElements(void *a1, __IOHIDQueue *a2, const __CFArray *cf)
{
  v4 = __IOHIDDeviceCopyMatchingInputElements(a1, cf);
  if (v4)
  {
    v5 = v4;
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
        if (ValueAtIndex)
        {
          IOHIDQueueAddElement(a2, ValueAtIndex);
        }
      }
    }

    CFRelease(v5);
  }
}

void __IOHIDDeviceRegisterInputValueCallback_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_recursive_lock_lock_with_options();
  CFRelease(*(*(a1 + 32) + 240));
  *(*(a1 + 32) + 240) = 0;
  v3 = *(*(a1 + 32) + 216);
  os_unfair_recursive_lock_unlock();
  v4 = *(a1 + 32);
  os_unfair_recursive_lock_lock_with_options();
  v5 = *(*(a1 + 32) + 232);
  if (v5)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    (*(v5 + 16))();
    _Block_release(*(*(a1 + 32) + 232));
    *(*(a1 + 32) + 232) = 0;
  }

  os_unfair_recursive_lock_unlock();
  v7 = *(a1 + 32);

  CFRelease(v7);
}

void __IOHIDDeviceInputElementValueCallback(CFSetRef *cf, int a2, __IOHIDQueue *a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (!a2 && cf[30] == a3)
  {
    CFRetain(cf);
    os_unfair_recursive_lock_lock_with_options();
    Count = CFSetGetCount(cf[39]);
    if (Count)
    {
      v6 = Count;
      v7 = 8 * Count;
      MEMORY[0x1EEE9AC00]();
      v8 = (v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      v9 = v7 >= 0x200 ? 512 : v7;
      bzero(v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
      bzero(v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      CFSetGetValues(cf[39], (v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0)));
      Value = IOHIDQueueCopyNextValue(a3);
      if (Value)
      {
        v11 = Value;
        do
        {
          if (v6 >= 1)
          {
            v12 = v8;
            v13 = v6;
            do
            {
              if (*v12)
              {
                BytePtr = CFDataGetBytePtr(*v12);
                v15 = *(BytePtr + 1);
                if (v15)
                {
                  v15(*BytePtr, 0, cf, v11);
                }
              }

              ++v12;
              --v13;
            }

            while (v13);
          }

          CFRelease(v11);
          v11 = IOHIDQueueCopyNextValue(a3);
        }

        while (v11);
      }
    }

    os_unfair_recursive_lock_unlock();
    CFRelease(cf);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void IOHIDDeviceSetInputValueMatching(IOHIDDeviceRef device, CFDictionaryRef matching)
{
  values = matching;
  if (matching)
  {
    v3 = CFGetAllocator(device);
    v4 = CFArrayCreate(v3, &values, 1, MEMORY[0x1E695E9C0]);
    IOHIDDeviceSetInputValueMatchingMultiple(device, v4);
    CFRelease(v4);
  }

  else
  {

    IOHIDDeviceSetInputValueMatchingMultiple(device, 0);
  }
}

void IOHIDDeviceSetInputValueMatchingMultiple(IOHIDDeviceRef device, CFArrayRef multiple)
{
  os_unfair_recursive_lock_lock_with_options();
  v4 = *(device + 30);
  if (v4)
  {
    IOHIDQueueStop(v4);
    while (1)
    {
      Value = IOHIDQueueCopyNextValue(*(device + 30));
      if (!Value)
      {
        break;
      }

      CFRelease(Value);
    }

    v6 = _IOHIDQueueCopyElements(*(device + 30));
    if (v6)
    {
      v7 = v6;
      Count = CFArrayGetCount(v6);
      if (Count >= 1)
      {
        v9 = Count;
        for (i = 0; i != v9; ++i)
        {
          v11 = *(device + 30);
          ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
          IOHIDQueueRemoveElement(v11, ValueAtIndex);
        }
      }

      CFRelease(v7);
    }

    __IOHIDDeviceRegisterMatchingInputElements(device, *(device + 30), multiple);
    IOHIDQueueStart(*(device + 30));
  }

  v13 = *(device + 31);
  if (v13)
  {
    CFRelease(v13);
  }

  if (multiple)
  {
    v14 = CFRetain(multiple);
  }

  else
  {
    v14 = 0;
  }

  *(device + 31) = v14;

  os_unfair_recursive_lock_unlock();
}

IOReturn IOHIDDeviceSetValueMultipleWithCallback(IOHIDDeviceRef device, CFDictionaryRef multiple, CFTimeInterval timeout, IOHIDValueMultipleCallback callback, void *context)
{
  v5 = -536870211;
  if (!multiple)
  {
    return -536870206;
  }

  Count = CFDictionaryGetCount(multiple);
  if (!Count)
  {
    return -536870206;
  }

  v12 = Count;
  v13 = CFGetAllocator(device);
  v14 = IOHIDTransactionCreate(v13, device, kIOHIDTransactionDirectionTypeOutput, 0);
  if (v14)
  {
    v15 = v14;
    v16 = malloc_type_malloc(8 * v12, 0x2004093837F09uLL);
    if (v16)
    {
      v17 = v16;
      v18 = malloc_type_malloc(8 * v12, 0x2004093837F09uLL);
      if (v18)
      {
        v19 = v18;
        v32 = v17;
        CFDictionaryGetKeysAndValues(multiple, v17, v18);
        if (v12 >= 1)
        {
          v20 = v17;
          v21 = v19;
          v22 = v12;
          do
          {
            IOHIDTransactionAddElement(v15, *v20);
            v24 = *v20++;
            v23 = v24;
            v25 = *v21++;
            IOHIDTransactionSetValue(v15, v23, v25, 0);
            --v22;
          }

          while (v22);
        }

        if (callback)
        {
          v26 = malloc_type_malloc(0x20uLL, 0xE0040BF2FBCEAuLL);
          v27 = v32;
          if (v26)
          {
            v28 = v26;
            v26[1] = callback;
            v26[2] = device;
            *v26 = context;
            v29 = CFGetAllocator(device);
            v28[3] = CFArrayCreate(v29, v32, v12, MEMORY[0x1E695E9C0]);
            v5 = IOHIDTransactionCommitWithCallback(v15, timeout, __IOHIDDeviceTransactionCallback, v28);
            if (v5)
            {
              free(v28);
            }

            else
            {
              CFRetain(v15);
            }
          }
        }

        else
        {
          v5 = IOHIDTransactionCommit(v15);
          v27 = v32;
        }

        CFRelease(v15);
        free(v27);
        v30 = v19;
      }

      else
      {
        CFRelease(v15);
        v30 = v17;
      }

      free(v30);
    }

    else
    {
      CFRelease(v15);
    }
  }

  return v5;
}

IOReturn IOHIDDeviceSetValueWithCallback(IOHIDDeviceRef device, IOHIDElementRef element, IOHIDValueRef value, CFTimeInterval timeout, IOHIDValueCallback callback, void *context)
{
  v12 = malloc_type_malloc(0x18uLL, 0xA0040114AFA65uLL);
  if (!v12)
  {
    return -536870211;
  }

  v13 = v12;
  v12[1] = callback;
  v12[2] = device;
  *v12 = context;
  v14 = (*(**(device + 3) + 80))(*(device + 3), element, value, timeout, __IOHIDDeviceValueCallback, v12, 0);
  if (v14)
  {
    free(v13);
  }

  return v14;
}

void __IOHIDDeviceValueCallback(void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3)
  {
    v3(*a1, a2, a1[2]);
  }

  free(a1);
}

void __IOHIDDeviceTransactionCallback(void *a1, int a2, CFTypeRef cf)
{
  if (cf)
  {
    v5 = a1[1];
    if (v5)
    {
      v6 = a1[2];
      if (a2)
      {
        v7 = *a1;
LABEL_5:
        v5(v7);
        goto LABEL_6;
      }

      v9 = a1[3];
      if (v9)
      {
        Count = CFArrayGetCount(v9);
        if (Count)
        {
          v11 = Count;
          v12 = CFGetAllocator(v6);
          Mutable = CFDictionaryCreateMutable(v12, v11, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
          if (Mutable)
          {
            v14 = Mutable;
            if (v11 >= 1)
            {
              for (i = 0; i != v11; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(a1[3], i);
                if (ValueAtIndex)
                {
                  v17 = ValueAtIndex;
                  Value = _IOHIDElementGetValue(ValueAtIndex);
                  if (Value)
                  {
                    CFDictionarySetValue(v14, v17, Value);
                  }
                }
              }
            }

            if (!CFDictionaryGetCount(v14))
            {
              CFRelease(v14);
              v7 = *a1;
              goto LABEL_5;
            }

            (v5)(*a1, 0, v6, v14);
            CFRelease(v14);
          }
        }
      }
    }
  }

LABEL_6:
  v8 = a1[3];
  if (v8)
  {
    CFRelease(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  free(a1);
}

IOReturn IOHIDDeviceCopyValueMultipleWithCallback(IOHIDDeviceRef device, CFArrayRef elements, CFDictionaryRef *pMultiple, CFTimeInterval timeout, IOHIDValueMultipleCallback callback, void *context)
{
  v6 = -536870206;
  if (elements && pMultiple)
  {
    Count = CFArrayGetCount(elements);
    if (Count)
    {
      v14 = Count;
      v15 = CFGetAllocator(device);
      v16 = IOHIDTransactionCreate(v15, device, kIOHIDTransactionDirectionTypeInput, 0);
      if (v16)
      {
        v17 = v16;
        if (v14 >= 1)
        {
          for (i = 0; i != v14; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(elements, i);
            IOHIDTransactionAddElement(v17, ValueAtIndex);
          }
        }

        if (callback)
        {
          v20 = malloc_type_malloc(0x20uLL, 0xE0040BF2FBCEAuLL);
          v6 = -536870211;
          if (v20)
          {
            v21 = v20;
            v20[1] = callback;
            v20[2] = device;
            *v20 = context;
            v22 = CFGetAllocator(device);
            v21[3] = CFArrayCreateCopy(v22, elements);
            v6 = IOHIDTransactionCommitWithCallback(v17, timeout, __IOHIDDeviceTransactionCallback, v21);
            if (v6)
            {
              free(v21);
            }

            else
            {
              CFRetain(v17);
            }
          }
        }

        else
        {
          v6 = IOHIDTransactionCommit(v17);
          if (!v6)
          {
            v23 = CFGetAllocator(device);
            Mutable = CFDictionaryCreateMutable(v23, v14, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
            v6 = -536870211;
            if (Mutable)
            {
              v25 = Mutable;
              if (v14 >= 1)
              {
                for (j = 0; j != v14; ++j)
                {
                  v27 = CFArrayGetValueAtIndex(elements, j);
                  Value = _IOHIDElementGetValue(v27);
                  if (Value)
                  {
                    CFDictionarySetValue(v25, v27, Value);
                  }
                }
              }

              if (!CFDictionaryGetCount(v25))
              {
                CFRelease(v25);
                v25 = 0;
              }

              v6 = 0;
              *pMultiple = v25;
            }
          }
        }

        CFRelease(v17);
      }

      else
      {
        return -536870211;
      }
    }

    else
    {
      return -536870206;
    }
  }

  return v6;
}

IOReturn IOHIDDeviceGetValueWithCallback(IOHIDDeviceRef device, IOHIDElementRef element, IOHIDValueRef *pValue, CFTimeInterval timeout, IOHIDValueCallback callback, void *context)
{
  v12 = malloc_type_malloc(0x18uLL, 0xA0040114AFA65uLL);
  if (!v12)
  {
    return -536870211;
  }

  v13 = v12;
  v12[1] = callback;
  v12[2] = device;
  *v12 = context;
  v14 = (*(**(device + 3) + 88))(*(device + 3), element, pValue, timeout, __IOHIDDeviceValueCallback, v12, 0);
  if (v14)
  {
    free(v13);
  }

  return v14;
}

void IOHIDDeviceRegisterInputReportCallback(IOHIDDeviceRef device, uint8_t *report, CFIndex reportLength, IOHIDReportCallback callback, void *context)
{
  if (atomic_load(device + 56))
  {
    IOHIDDeviceRegisterRemovalCallback_cold_1();
  }

  __IOHIDDeviceRegisterInputReportCallback(device, report, reportLength, callback, 0, context);
}

void IOHIDDeviceRegisterInputReportWithTimeStampCallback(IOHIDDeviceRef device, uint8_t *report, CFIndex reportLength, IOHIDReportWithTimeStampCallback callback, void *context)
{
  if (atomic_load(device + 56))
  {
    IOHIDDeviceRegisterRemovalCallback_cold_1();
  }

  __IOHIDDeviceRegisterInputReportCallback(device, report, reportLength, 0, callback, context);
}

void __IOHIDDeviceReportCallbackOnce(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = a1[3];
  CFRetain(v14);
  v15 = a1[1];
  if (v15 && v14[3] == a3)
  {
    v15(*a1, a2, v14, a4, a5, a6, a7);
  }

  else
  {
    v16 = a1[2];
    if (v16 && v14[4] == a3)
    {
      v16(*a1, a2, v14, a4, a5, a6, a7, 0);
    }
  }

  free(a1);

  CFRelease(v14);
}

uint64_t __IOHIDDeviceGetRootKey(__IOHIDDevice *a1)
{
  os_unfair_recursive_lock_lock_with_options();
  if (!*(a1 + 9))
  {
    RootKey = __IOHIDManagerGetRootKey();
    Property = IOHIDDeviceGetProperty(a1, @"Transport");
    v4 = IOHIDDeviceGetProperty(a1, @"VendorID");
    v5 = IOHIDDeviceGetProperty(a1, @"ProductID");
    v6 = IOHIDDeviceGetProperty(a1, @"SerialNumber");
    if (!Property || (v7 = CFGetTypeID(Property), v7 != CFStringGetTypeID()))
    {
      Property = @"unknown";
    }

    v8 = MEMORY[0x1E695E870];
    if (!v4 || (v9 = CFGetTypeID(v4), v9 != CFNumberGetTypeID()))
    {
      v4 = *v8;
    }

    if (!v5 || (v10 = CFGetTypeID(v5), v10 != CFNumberGetTypeID()))
    {
      v5 = *v8;
    }

    if (!v6 || (v11 = CFGetTypeID(v6), v11 != CFStringGetTypeID()))
    {
      v6 = @"none";
    }

    *(a1 + 9) = CFStringCreateWithFormat(0, 0, @"%@#%@#%@#%@#%@", RootKey, Property, v4, v5, v6);
  }

  os_unfair_recursive_lock_unlock();
  return *(a1 + 9);
}

CFStringRef __IOHIDDeviceGetUUIDString(__IOHIDDevice *a1)
{
  Property = IOHIDDeviceGetProperty(a1, @"com.apple.iohidmanager.uuid");
  if (!Property || (v3 = Property, v4 = CFGetTypeID(Property), v4 != CFStringGetTypeID()))
  {
    v5 = CFUUIDCreate(0);
    v3 = CFUUIDCreateString(0, v5);
    IOHIDDeviceSetProperty(a1, @"com.apple.iohidmanager.uuid", v3);
    CFRelease(v5);
    CFRelease(v3);
  }

  return v3;
}

CFStringRef __IOHIDDeviceGetUUIDKey(__IOHIDDevice *a1)
{
  result = *(a1 + 10);
  if (!result)
  {
    RootKey = __IOHIDManagerGetRootKey();
    UUIDString = __IOHIDDeviceGetUUIDString(a1);
    result = CFStringCreateWithFormat(0, 0, @"%@#%@", RootKey, UUIDString);
    *(a1 + 10) = result;
  }

  return result;
}

void __IOHIDDeviceSaveProperties(uint64_t a1, CFStringRef *context)
{
  if (!*(a1 + 257) || !*(a1 + 56))
  {
    goto LABEL_18;
  }

  UUIDString = __IOHIDDeviceGetUUIDString(a1);
  values = UUIDString;
  RootKey = __IOHIDDeviceGetRootKey(a1);
  v6 = IOHIDPreferencesCopyDomain(RootKey, *MEMORY[0x1E695E8A8]);
  v7 = v6;
  if (!v6)
  {
    v11 = CFArrayCreate(0, &values, 1, MEMORY[0x1E695E9C0]);
    if (!v11)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v8 = CFGetTypeID(v6);
  if (v8 == CFArrayGetTypeID())
  {
    v18.length = CFArrayGetCount(v7);
    v18.location = 0;
    if (CFArrayContainsValue(v7, v18, UUIDString))
    {
      goto LABEL_15;
    }

    Count = CFArrayGetCount(v7);
    MutableCopy = CFArrayCreateMutableCopy(0, Count + 1, v7);
    CFArrayAppendValue(MutableCopy, UUIDString);
    if (!MutableCopy)
    {
      goto LABEL_15;
    }

LABEL_12:
    v12 = __IOHIDDeviceGetRootKey(a1);
    __IOHIDPropertySaveWithContext(v12, MutableCopy, context);
    if (v7)
    {
      CFRelease(v7);
    }

    v13 = MutableCopy;
    goto LABEL_16;
  }

  v11 = CFArrayCreate(0, &values, 1, MEMORY[0x1E695E9C0]);
  if (v11)
  {
LABEL_11:
    MutableCopy = v11;
    goto LABEL_12;
  }

LABEL_15:
  v13 = v7;
LABEL_16:
  CFRelease(v13);
LABEL_17:
  v14 = *(a1 + 56);
  UUIDKey = __IOHIDDeviceGetUUIDKey(a1);
  __IOHIDPropertySaveToKeyWithSpecialKeys(v14, UUIDKey, 0, context);
  *(a1 + 257) = 0;
LABEL_18:
  v16 = *(a1 + 64);
  if (v16)
  {
    CFSetApplyFunction(v16, __IOHIDSaveElementSet, context);
  }
}

void __IOHIDDeviceLoadProperties(uint64_t a1)
{
  Property = IOHIDDeviceGetProperty(a1, @"com.apple.iohidmanager.uuid");
  ValueAtIndex = Property;
  *(a1 + 256) = 1;
  if (!*(a1 + 80))
  {
    if (!Property || (v4 = CFGetTypeID(Property), v4 != CFStringGetTypeID()))
    {
      RootKey = __IOHIDDeviceGetRootKey(a1);
      v6 = IOHIDPreferencesCopyDomain(RootKey, *MEMORY[0x1E695E8A8]);
      if (v6)
      {
        v7 = v6;
        v8 = CFGetTypeID(v6);
        if (v8 == CFArrayGetTypeID())
        {
          if (CFArrayGetCount(v7))
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);
          }
        }
      }

      if (!ValueAtIndex)
      {
        goto LABEL_10;
      }
    }

    v9 = CFGetTypeID(ValueAtIndex);
    if (v9 != CFStringGetTypeID())
    {
LABEL_10:
      v10 = CFUUIDCreate(0);
      ValueAtIndex = CFUUIDCreateString(0, v10);
      CFRelease(v10);
    }

    IOHIDDeviceSetProperty(a1, @"com.apple.iohidmanager.uuid", ValueAtIndex);
  }

  UUIDKey = __IOHIDDeviceGetUUIDKey(a1);
  DictionaryFromKey = __IOHIDPropertyLoadDictionaryFromKey(UUIDKey);
  if (DictionaryFromKey)
  {
    v13 = DictionaryFromKey;
    v14 = *(a1 + 56);
    if (v14)
    {
      CFRelease(v14);
    }

    *(a1 + 56) = v13;
    *(a1 + 257) = 0;
  }

  IOHIDDeviceSetProperty(a1, @"com.apple.iohidmanager.uuid", ValueAtIndex);
  v15 = *(a1 + 64);
  if (v15)
  {

    CFSetApplyFunction(v15, __IOHIDLoadElementSet, 0);
  }
}

__IOHIDDevice *__IOHIDApplyPropertyToDeviceSet(__IOHIDDevice *result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      return IOHIDDeviceSetProperty(result, *a2, *(a2 + 8));
    }
  }

  return result;
}

const __CFString *__IOHIDApplyPropertiesToDeviceFromDictionary(const __CFString *key, CFTypeRef property, IOHIDDeviceRef device)
{
  if (property && key)
  {
    if (device)
    {
      return IOHIDDeviceSetProperty(device, key, property);
    }
  }

  return key;
}

void __IOHIDSaveDeviceSet(uint64_t a1, CFStringRef *context)
{
  if (a1)
  {
    __IOHIDDeviceSaveProperties(a1, context);
  }
}

__CFArray *__IOHIDDeviceCopyMatchingInputElements(void *a1, const __CFArray *cf)
{
  v26 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    v3 = cf;
    CFRetain(cf);
  }

  else
  {
    v25 = xmmword_19723D890;
    MEMORY[0x1EEE9AC00]();
    v4 = 0;
    memset(v22, 0, sizeof(v22));
    keys = @"Type";
    v5 = &v25;
    v6 = MEMORY[0x1E695E528];
    v7 = MEMORY[0x1E695E9E8];
    do
    {
      v8 = CFGetAllocator(a1);
      values = CFNumberCreate(v8, kCFNumberIntType, v5);
      v9 = CFGetAllocator(a1);
      v22[v4] = CFDictionaryCreate(v9, &keys, &values, 1, v6, v7);
      CFRelease(values);
      ++v4;
      v5 = (v5 + 4);
    }

    while (v4 != 4);
    v10 = CFGetAllocator(a1);
    v3 = CFArrayCreate(v10, v22, 4, MEMORY[0x1E695E9C0]);
    for (i = 0; i != 4; ++i)
    {
      CFRelease(v22[i]);
    }

    if (!v3)
    {
      MutableCopy = 0;
      goto LABEL_19;
    }
  }

  Count = CFArrayGetCount(v3);
  if (Count < 1)
  {
    MutableCopy = 0;
  }

  else
  {
    v13 = Count;
    MutableCopy = 0;
    for (j = 0; j != v13; ++j)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, j);
      v17 = IOHIDDeviceCopyMatchingElements(a1, ValueAtIndex, 0);
      if (v17)
      {
        v18 = v17;
        if (MutableCopy)
        {
          v27.length = CFArrayGetCount(v17);
          v27.location = 0;
          CFArrayAppendArray(MutableCopy, v18, v27);
        }

        else
        {
          v19 = CFGetAllocator(a1);
          MutableCopy = CFArrayCreateMutableCopy(v19, 0, v18);
        }

        CFRelease(v18);
      }
    }
  }

  CFRelease(v3);
LABEL_19:
  v20 = *MEMORY[0x1E69E9840];
  return MutableCopy;
}

uint64_t __IOHIDDeviceInputReportCallback(CFSetRef *a1, unsigned int a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  os_unfair_recursive_lock_lock_with_options();
  if (CFSetGetCount(a1[38]))
  {
    context[0] = a1;
    context[1] = a2;
    context[2] = a1;
    v15 = a4;
    v16 = a5;
    v17 = a6;
    v18 = a7;
    v19 = 0;
    CFRetain(a1);
    CFSetApplyFunction(a1[38], __IOHIDDeviceInputReportApplier, context);
    CFRelease(a1);
  }

  return os_unfair_recursive_lock_unlock();
}

uint64_t IODPPortGetTypeID()
{
  result = __kIODPPortTypeID;
  if (!__kIODPPortTypeID)
  {
    pthread_once(&__portTypeInit_0, __IODPPortRegister);
    return __kIODPPortTypeID;
  }

  return result;
}

uint64_t __IODPPortRegister()
{
  result = _CFRuntimeRegisterClass();
  __kIODPPortTypeID = result;
  return result;
}

uint64_t IODPPortCreate(uint64_t a1, int a2, int a3, int a4)
{
  if (*MEMORY[0x1E695E480] == a1)
  {
    return __IODPCopyFirstMatchingPort("IODPPort", IODPPortCreateWithService, a2, a3, a4);
  }

  else
  {
    return 0;
  }
}

_DWORD *IODPPortGetAddress(_DWORD *result, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  *a2 = result[6];
  *a3 = result[7];
  *a4 = result[8];
  return result;
}

uint64_t IODPPortSetVirtual(uint64_t a1, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 0, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IODPPortSetPortEvent(uint64_t a1, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 3u, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IODPPortSetVirtualEDID(uint64_t a1, CFDataRef theData)
{
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
  }

  else
  {
    BytePtr = 0;
    Length = 0;
  }

  return IOConnectCallMethod(*(a1 + 20), 4u, 0, 0, BytePtr, Length, 0, 0, 0, 0);
}

uint64_t IODPPortSetVirtualDPCD(uint64_t a1, unsigned int a2, void *inputStruct, unsigned int a4)
{
  input[1] = *MEMORY[0x1E69E9840];
  if (a4 >= 0x1000)
  {
    v4 = 4096;
  }

  else
  {
    v4 = a4;
  }

  v5 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v5, 5u, input, 1u, inputStruct, v4, 0, 0, 0, 0);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __IODPPortFree(uint64_t a1)
{
  v2 = *(a1 + 20);
  if (v2)
  {
    IOServiceClose(v2);
  }

  result = *(a1 + 16);
  if (result)
  {

    return IOObjectRelease(result);
  }

  return result;
}

uint64_t (*_IOHIDCallbackApplier(uint64_t (*result)(uint64_t, void, void), uint64_t a2, unsigned int *a3))(uint64_t, void, void)
{
  if (result)
  {
    if (a3)
    {
      return result(a2, *a3, *(a3 + 1));
    }
  }

  return result;
}

uint64_t _IOHIDGetMonotonicTime()
{
  if (!dword_1EAF1D8FC)
  {
    mach_timebase_info(&_IOHIDGetMonotonicTime_timebaseInfo);
  }

  return mach_absolute_time() * _IOHIDGetMonotonicTime_timebaseInfo / dword_1EAF1D8FC;
}

uint64_t _IOHIDSimpleQueuePeek(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  v2 = *(BytePtr + 3);
  if (v2 == *(BytePtr + 2))
  {
    return 0;
  }

  else
  {
    return &BytePtr[*(BytePtr + 1) * v2 + 8];
  }
}

const UInt8 *_IOHIDSimpleQueueApplyBlock(const __CFData *a1, uint64_t a2, uint64_t a3)
{
  result = CFDataGetBytePtr(a1);
  v6 = *(result + 2);
  if (*(result + 3) != v6)
  {
    v7 = result;
    v8 = result + 32;
    do
    {
      result = (*(a2 + 16))(a2, &v8[*(v7 + 1) * v6], a3);
      v6 = (v6 + 1) % *v7;
    }

    while (*(v7 + 3) != v6);
  }

  return result;
}

uint64_t _IOHIDSimpleQueueDequeue(const __CFData *a1, void *a2)
{
  BytePtr = CFDataGetBytePtr(a1);
  v5 = *(BytePtr + 3);
  if (v5 == *(BytePtr + 2))
  {
    return 0;
  }

  v7 = BytePtr + 8;
  v8 = *(BytePtr + 1);
  v9 = CFDataGetBytePtr(a1);
  v10 = v9;
  if (a2)
  {
    memcpy(a2, &v7[v8 * v5], *(v9 + 1));
  }

  *(v10 + 2) = (*(v10 + 2) + 1) % *v10;
  return 1;
}

void _IOHIDDictionaryAddCStr(void *a1, const void *a2, const char *a3)
{
  v6 = CFGetAllocator(a1);
  v7 = CFStringCreateWithCString(v6, a3, 0);
  if (v7)
  {
    v8 = v7;
    CFDictionaryAddValue(a1, a2, v7);

    CFRelease(v8);
  }
}

uint64_t _IOHIDIsAlphaNumericKey(int a1, int a2)
{
  if (a2 != 7)
  {
    return 0;
  }

  v3 = a1 - 45;
  result = 1;
  if (v3 >= 0xC && (a1 - 4) >= 0x24 && (a1 - 89) >= 0xC && a1 != 103 && (a1 & 0xFFFFFFFC) != 0x54)
  {
    return 0;
  }

  return result;
}

uint64_t _IOHIDIsRestrictedRemappingProperty(const __CFString *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 != CFArrayGetTypeID())
  {
    v10 = CFGetTypeID(a1);
    if (v10 == CFStringGetTypeID() && a1)
    {
      result = CFStringGetCStringPtr(a1, 0);
      if (!result)
      {
        return result;
      }

      v12 = strdup(result);
      valuePtr = v12;
      v13 = strsep(&valuePtr, ",");
      if (v13)
      {
        v14 = v13;
        do
        {
          v15 = strsep(&valuePtr, ",");
          if (!v15)
          {
            break;
          }

          if (strtoul(v15, 0, 0))
          {
            v16 = strtoul(v14, 0, 0);
            v17 = v16;
            if ((v16 & 0xFFFF0000) == 0x70000)
            {
              v18 = v16;
              v19 = v16 - 45;
              result = 1;
              if (v19 < 0xC || (v18 - 4) < 0x24 || (v18 - 89) < 0xC || v18 == 103 || (v17 & 0xFFFC) == 0x54)
              {
                return result;
              }
            }
          }

          v14 = strsep(&valuePtr, ",");
        }

        while (v14);
      }

      if (v12)
      {
        free(v12);
      }
    }

    return 0;
  }

  if (CFArrayGetCount(a1) < 1)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    valuePtr = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v3);
    if (ValueAtIndex)
    {
      v5 = ValueAtIndex;
      v6 = CFGetTypeID(ValueAtIndex);
      if (v6 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(v5, @"HIDKeyboardModifierMappingSrc");
        if (Value)
        {
          v8 = Value;
          v9 = CFGetTypeID(Value);
          if (v9 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v8, kCFNumberSInt64Type, &valuePtr);
            if (HIDWORD(valuePtr) == 7 && ((valuePtr - 45) < 0xC || (valuePtr - 4) < 0x24 || (valuePtr - 89) < 0xC || valuePtr == 103 || (valuePtr & 0xFFFFFFFC) == 0x54))
            {
              break;
            }
          }
        }
      }
    }

    if (++v3 >= CFArrayGetCount(a1))
    {
      return 0;
    }
  }

  return 1;
}

CFTypeID IOHIDManagerGetTypeID(void)
{
  result = __kIOHIDManagerTypeID;
  if (!__kIOHIDManagerTypeID)
  {
    pthread_once(&__sessionTypeInit, __IOHIDManagerRegister);
    return __kIOHIDManagerTypeID;
  }

  return result;
}

uint64_t __IOHIDManagerLoadProperties(uint64_t a1)
{
  DictionaryFromKey = __IOHIDPropertyLoadDictionaryFromKey(@"com.apple.iohidmanager");
  os_unfair_recursive_lock_lock_with_options();
  if (DictionaryFromKey)
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 56) = DictionaryFromKey;
    *(a1 + 156) = 0;
  }

  return os_unfair_recursive_lock_unlock();
}

void IOHIDManagerUnscheduleFromRunLoop(IOHIDManagerRef manager, CFRunLoopRef runLoop, CFStringRef runLoopMode)
{
  os_unfair_recursive_lock_lock_with_options();
  v6 = *(manager + 10);
  if (v6 && CFEqual(v6, runLoop) && CFEqual(*(manager + 11), runLoopMode))
  {
    IOHIDManagerUnscheduleFromRunLoop_cold_1(manager + 24, manager, manager + 10);
  }

  os_unfair_recursive_lock_unlock();
}

CFTypeRef IOHIDManagerGetProperty(IOHIDManagerRef manager, CFStringRef key)
{
  os_unfair_recursive_lock_lock_with_options();
  v4 = *(manager + 7);
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, key);
  }

  else
  {
    Value = 0;
  }

  os_unfair_recursive_lock_unlock();
  return Value;
}

void IOHIDManagerSetDeviceMatching(IOHIDManagerRef manager, CFDictionaryRef matching)
{
  values = matching;
  if (atomic_load(manager + 29))
  {
    IOHIDManagerSetDeviceMatching_cold_1();
  }

  if (values)
  {
    v4 = CFGetAllocator(manager);
    v5 = CFArrayCreate(v4, &values, 1, MEMORY[0x1E695E9C0]);
    IOHIDManagerSetDeviceMatchingMultiple(manager, v5);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  else
  {

    IOHIDManagerSetDeviceMatchingMultiple(manager, 0);
  }
}

void IOHIDManagerRegisterDeviceMatchingCallback(IOHIDManagerRef manager, IOHIDDeviceCallback callback, void *context)
{
  if (atomic_load(manager + 29))
  {
    IOHIDManagerSetDeviceMatching_cold_1();
  }

  os_unfair_recursive_lock_lock_with_options();
  *(manager + 26) = context;
  *(manager + 27) = callback;

  os_unfair_recursive_lock_unlock();
}

void IOHIDManagerRegisterDeviceRemovalCallback(IOHIDManagerRef manager, IOHIDDeviceCallback callback, void *context)
{
  if (atomic_load(manager + 29))
  {
    IOHIDManagerSetDeviceMatching_cold_1();
  }

  os_unfair_recursive_lock_lock_with_options();
  *(manager + 28) = context;
  *(manager + 29) = callback;

  os_unfair_recursive_lock_unlock();
}

void IOHIDManagerRegisterInputReportCallback(IOHIDManagerRef manager, IOHIDReportCallback callback, void *context)
{
  if (atomic_load(manager + 29))
  {
    IOHIDManagerSetDeviceMatching_cold_1();
  }

  os_unfair_recursive_lock_lock_with_options();
  *(manager + 23) = context;
  *(manager + 24) = callback;
  os_unfair_recursive_lock_unlock();
  os_unfair_recursive_lock_lock_with_options();
  if (*(manager + 144) && *(manager + 4))
  {
    os_unfair_recursive_lock_unlock();

    __ApplyToDevices(manager);
  }

  else
  {

    os_unfair_recursive_lock_unlock();
  }
}

void IOHIDManagerRegisterInputReportWithTimeStampCallback(IOHIDManagerRef manager, IOHIDReportWithTimeStampCallback callback, void *context)
{
  if (atomic_load(manager + 29))
  {
    IOHIDManagerSetDeviceMatching_cold_1();
  }

  os_unfair_recursive_lock_lock_with_options();
  *(manager + 25) = callback;
  *(manager + 23) = context;
  os_unfair_recursive_lock_unlock();
  os_unfair_recursive_lock_lock_with_options();
  if (*(manager + 144) && *(manager + 4))
  {
    os_unfair_recursive_lock_unlock();

    __ApplyToDevices(manager);
  }

  else
  {

    os_unfair_recursive_lock_unlock();
  }
}

void IOHIDManagerRegisterInputValueCallback(IOHIDManagerRef manager, IOHIDValueCallback callback, void *context)
{
  if (atomic_load(manager + 29))
  {
    IOHIDManagerSetDeviceMatching_cold_1();
  }

  os_unfair_recursive_lock_lock_with_options();
  *(manager + 21) = context;
  *(manager + 22) = callback;
  os_unfair_recursive_lock_unlock();
  os_unfair_recursive_lock_lock_with_options();
  if (*(manager + 144) && *(manager + 4))
  {
    os_unfair_recursive_lock_unlock();

    __ApplyToDevices(manager);
  }

  else
  {

    os_unfair_recursive_lock_unlock();
  }
}

void IOHIDManagerSetInputValueMatching(IOHIDManagerRef manager, CFDictionaryRef matching)
{
  values = matching;
  if (atomic_load(manager + 29))
  {
    IOHIDManagerSetDeviceMatching_cold_1();
  }

  if (values)
  {
    v4 = CFGetAllocator(manager);
    v5 = CFArrayCreate(v4, &values, 1, MEMORY[0x1E695E9C0]);
    IOHIDManagerSetInputValueMatchingMultiple(manager, v5);
    CFRelease(v5);
  }

  else
  {

    IOHIDManagerSetInputValueMatchingMultiple(manager, 0);
  }
}

void IOHIDManagerSetInputValueMatchingMultiple(IOHIDManagerRef manager, CFArrayRef multiple)
{
  if (atomic_load(manager + 29))
  {
    IOHIDManagerSetDeviceMatching_cold_1();
  }

  os_unfair_recursive_lock_lock_with_options();
  v5 = *(manager + 30);
  if (v5)
  {
    CFRelease(v5);
  }

  if (multiple)
  {
    CFRetain(multiple);
  }

  *(manager + 30) = multiple;
  os_unfair_recursive_lock_unlock();
  os_unfair_recursive_lock_lock_with_options();
  if (*(manager + 144) && *(manager + 4))
  {
    os_unfair_recursive_lock_unlock();

    __ApplyToDevices(manager);
  }

  else
  {

    os_unfair_recursive_lock_unlock();
  }
}

void IOHIDManagerSetDispatchQueue(IOHIDManagerRef manager, dispatch_queue_t queue)
{
  v25 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  if (*(manager + 10) || *(manager + 12))
  {
    IOHIDManagerSetDispatchQueue_cold_1(&v8, __str);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *__str = 0u;
  v10 = 0u;
  label = dispatch_queue_get_label(queue);
  v5 = "";
  if (label)
  {
    v5 = label;
  }

  snprintf(__str, 0x100uLL, "%s.IOHIDManagerRef", v5);
  v6 = dispatch_queue_create_with_target_V2(__str, 0, queue);
  *(manager + 12) = v6;
  os_unfair_recursive_lock_unlock();
  if (v6)
  {
    __ApplyToDevices(manager);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void IOHIDManagerSetCancelHandler(IOHIDManagerRef manager, dispatch_block_t handler)
{
  v7 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  if (!handler || *(manager + 13))
  {
    IOHIDManagerSetCancelHandler_cold_1(&v5, v6);
  }

  _IOHIDObjectInternalRetain(manager);
  *(manager + 13) = _Block_copy(handler);
  os_unfair_recursive_lock_unlock();
  v4 = *MEMORY[0x1E69E9840];

  __ApplyToDevices(manager);
}

void IOHIDManagerActivate(IOHIDManagerRef manager)
{
  v3 = *MEMORY[0x1E69E9840];
  if (*(manager + 12))
  {
    v1 = *(manager + 10) == 0;
  }

  else
  {
    v1 = 0;
  }

  if (!v1)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    manager = _os_crash_msg();
    __break(1u);
  }

  if ((atomic_fetch_or(manager + 29, 1u) & 1) == 0)
  {
    IOHIDManagerActivate_cold_1();
  }

  v2 = *MEMORY[0x1E69E9840];
}

void IOHIDManagerCancel(IOHIDManagerRef manager)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = *(manager + 12);
  v2 = *(manager + 10);
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    block[5] = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v12 = 134218240;
    v13 = v1;
    v14 = 2048;
    v15 = v2;
    _os_log_send_and_compose_impl();
    manager = _os_crash_msg();
    __break(1u);
  }

  v4 = manager;
  if ((atomic_fetch_or(manager + 29, 2u) & 2) == 0)
  {
    os_unfair_recursive_lock_lock_with_options();
    v5 = *(v4 + 9);
    if (v5)
    {
      IONotificationPortDestroy(v5);
      *(v4 + 9) = 0;
    }

    v6 = *(v4 + 5);
    if (v6)
    {
      CFSetRemoveAllValues(v6);
    }

    v7 = *(v4 + 6);
    if (v7)
    {
      CFDictionaryRemoveAllValues(v7);
    }

    v8 = *(v4 + 4);
    if (v8 && CFSetGetCount(v8) && *(v4 + 28))
    {
      __ApplyToDevices(v4);
    }

    else
    {
      _IOHIDObjectInternalRetain(v4);
      v9 = *(v4 + 12);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __IOHIDManagerCancel_block_invoke;
      block[3] = &__block_descriptor_tmp_6_0;
      block[4] = v4;
      dispatch_async(v9, block);
    }

    os_unfair_recursive_lock_unlock();
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __IOHIDManagerCancel_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[13];
  if (v3)
  {
    (*(v3 + 16))(v2[13]);
    _Block_release(*(*(a1 + 32) + 104));
    v4 = *(a1 + 32);
    v4[13] = 0;
    _IOHIDObjectInternalRelease(v4);
    v2 = *(a1 + 32);
  }

  return _IOHIDObjectInternalRelease(v2);
}

void IOHIDManagerSaveToPropertyDomain(IOHIDManagerRef manager, CFStringRef applicationID, CFStringRef userName, CFStringRef hostName, IOOptionBits options)
{
  if (manager && applicationID && userName)
  {
    if (hostName)
    {
      __IOHIDManagerSaveProperties();
    }
  }
}

void __IOHIDPropertySaveToKeyWithSpecialKeys(CFDictionaryRef theDict, const __CFString *a2, void *a3, CFStringRef *a4)
{
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  if (a3)
  {
    v8 = *a3;
    if (*a3)
    {
      do
      {
        Value = CFDictionaryGetValue(MutableCopy, v8);
        if (Value)
        {
          v10 = Value;
          v11 = CFStringCreateWithFormat(0, 0, @"%@#%@", a2, *a3);
          __IOHIDPropertySaveWithContext(v11, v10, a4);
          CFDictionaryRemoveValue(MutableCopy, *a3);
          CFRelease(v11);
        }

        v12 = a3[1];
        ++a3;
        v8 = v12;
      }

      while (v12);
    }
  }

  valuePtr = CFAbsoluteTimeGetCurrent();
  v13 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  CFDictionaryAddValue(MutableCopy, @"time of last save", v13);
  CFRelease(v13);
  __IOHIDPropertySaveWithContext(a2, MutableCopy, a4);
  CFRelease(MutableCopy);
}

__CFDictionary *__IOHIDPropertyLoadDictionaryFromKey(const __CFString *a1)
{
  v2 = *MEMORY[0x1E695E8A8];
  v3 = CFPreferencesCopyAppValue(a1, *MEMORY[0x1E695E8A8]);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CFGetTypeID(v3);
  if (v5 == CFDictionaryGetTypeID())
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v7 = *MEMORY[0x1E695E890];
    v8 = *MEMORY[0x1E695E8A0];
    v9 = *MEMORY[0x1E695E898];
    v10 = CFPreferencesCopyValue(a1, *MEMORY[0x1E695E890], *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E898]);
    if (v10)
    {
      v11 = v10;
      v12 = CFGetTypeID(v10);
      if (v12 == CFDictionaryGetTypeID())
      {
        __IOHIDManagerMergeDictionaries(v11, Mutable);
      }

      CFRelease(v11);
    }

    hostName = *MEMORY[0x1E695E8B0];
    v13 = CFPreferencesCopyValue(a1, v7, v8, *MEMORY[0x1E695E8B0]);
    if (v13)
    {
      v14 = v13;
      v15 = CFGetTypeID(v13);
      if (v15 == CFDictionaryGetTypeID())
      {
        __IOHIDManagerMergeDictionaries(v14, Mutable);
      }

      CFRelease(v14);
    }

    v16 = *MEMORY[0x1E695E8B8];
    v17 = v9;
    v18 = CFPreferencesCopyValue(a1, v7, *MEMORY[0x1E695E8B8], v9);
    if (v18)
    {
      v19 = v18;
      v20 = CFGetTypeID(v18);
      if (v20 == CFDictionaryGetTypeID())
      {
        __IOHIDManagerMergeDictionaries(v19, Mutable);
      }

      CFRelease(v19);
    }

    v21 = CFPreferencesCopyValue(a1, v7, v16, hostName);
    if (v21)
    {
      v22 = v21;
      v23 = CFGetTypeID(v21);
      if (v23 == CFDictionaryGetTypeID())
      {
        __IOHIDManagerMergeDictionaries(v22, Mutable);
      }

      CFRelease(v22);
    }

    v24 = CFPreferencesCopyValue(a1, v2, v8, v17);
    if (v24)
    {
      v25 = v24;
      v26 = CFGetTypeID(v24);
      if (v26 == CFDictionaryGetTypeID())
      {
        __IOHIDManagerMergeDictionaries(v25, Mutable);
      }

      CFRelease(v25);
    }

    v27 = CFPreferencesCopyValue(a1, v2, v8, hostName);
    if (v27)
    {
      v28 = v27;
      v29 = CFGetTypeID(v27);
      if (v29 == CFDictionaryGetTypeID())
      {
        __IOHIDManagerMergeDictionaries(v28, Mutable);
      }

      CFRelease(v28);
    }

    v30 = CFPreferencesCopyValue(a1, v2, v16, v17);
    if (v30)
    {
      v31 = v30;
      v32 = CFGetTypeID(v30);
      if (v32 == CFDictionaryGetTypeID())
      {
        __IOHIDManagerMergeDictionaries(v31, Mutable);
      }

      CFRelease(v31);
    }

    v33 = CFPreferencesCopyValue(a1, v2, v16, hostName);
    if (v33)
    {
      v34 = v33;
      v35 = CFGetTypeID(v33);
      if (v35 == CFDictionaryGetTypeID())
      {
        __IOHIDManagerMergeDictionaries(v34, Mutable);
      }

      CFRelease(v34);
    }

    __IOHIDManagerMergeDictionaries(v4, Mutable);
  }

  else
  {
    Mutable = 0;
  }

  CFRelease(v4);
  return Mutable;
}

void __IOHIDPropertySaveWithContext(const __CFString *a1, const void *a2, CFStringRef *a3)
{
  if (a1 && a2)
  {
    if (a3 && *a3 && (v3 = a3[1]) != 0 && (v4 = a3[2]) != 0)
    {
      CFPreferencesSetValue(a1, a2, *a3, v3, v4);
    }

    else
    {
      CFPreferencesSetAppValue(a1, a2, *MEMORY[0x1E695E8A8]);
    }
  }
}

__CFDictionary *__IOHIDPropertyLoadFromKeyWithSpecialKeys(const __CFString *a1, uint64_t *a2)
{
  DictionaryFromKey = __IOHIDPropertyLoadDictionaryFromKey(a1);
  if (!DictionaryFromKey)
  {
    DictionaryFromKey = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  }

  v5 = *a2;
  if (*a2)
  {
    v6 = *MEMORY[0x1E695E8A8];
    v7 = a2 + 1;
    do
    {
      v8 = CFStringCreateWithFormat(0, 0, @"%@#%@", a1, v5);
      v9 = CFPreferencesCopyAppValue(v8, v6);
      if (v9)
      {
        v10 = v9;
        CFDictionarySetValue(DictionaryFromKey, *(v7 - 1), v9);
        CFRelease(v10);
      }

      CFRelease(v8);
      v11 = *v7++;
      v5 = v11;
    }

    while (v11);
  }

  return DictionaryFromKey;
}

uint64_t __IOHIDManagerExtRelease(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  if (*(a1 + 96))
  {
    v2 = atomic_load((a1 + 116));
    if (v2 != 3)
    {
      __IOHIDManagerExtRelease_cold_1(&v10, v11, (a1 + 116));
    }
  }

  if ((*(a1 + 152) & 5) == 1)
  {
    __IOHIDManagerSaveProperties();
  }

  if (*(a1 + 144))
  {
    IOHIDManagerClose(a1, *(a1 + 148));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    IOHIDManagerUnscheduleFromRunLoop(a1, v3, *(a1 + 88));
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    RunLoopSource = IONotificationPortGetRunLoopSource(v4);
    if (RunLoopSource)
    {
      CFRunLoopSourceInvalidate(RunLoopSource);
    }
  }

  v6 = *(a1 + 128);
  if (v6)
  {
    CFRunLoopSourceInvalidate(v6);
  }

  if (*(a1 + 248))
  {
    os_state_remove_handler();
  }

  v7 = *(a1 + 256);
  if (v7)
  {
    dispatch_set_context(v7, a1);
    dispatch_set_finalizer_f(*(a1 + 256), __IOHIDManagerFinalizeStateHandler);
    _IOHIDObjectInternalRetain(a1);
    dispatch_release(*(a1 + 256));
  }

  v8 = *MEMORY[0x1E69E9840];

  return os_unfair_recursive_lock_unlock();
}

void __IOHIDManagerIntRelease(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    IONotificationPortDestroy(v2);
    a1[9] = 0;
  }

  v3 = a1[15];
  if (v3)
  {
    CFRelease(v3);
    a1[15] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }

  v5 = a1[8];
  if (v5)
  {
    CFRelease(v5);
    a1[8] = 0;
  }

  v6 = a1[5];
  if (v6)
  {
    CFRelease(v6);
    a1[5] = 0;
  }

  v7 = a1[7];
  if (v7)
  {
    CFRelease(v7);
    a1[7] = 0;
  }

  v8 = a1[17];
  if (v8)
  {
    CFRelease(v8);
    a1[17] = 0;
  }

  v9 = a1[30];
  if (v9)
  {
    CFRelease(v9);
    a1[30] = 0;
  }

  v10 = a1[12];
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = a1[6];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = a1[16];
  if (v12)
  {
    CFRelease(v12);
    a1[16] = 0;
  }
}

void __IOHIDManagerDeviceRemoved(uint64_t a1, io_registry_entry_t entry, int a3)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  entryID = 0;
  IORegistryEntryGetRegistryEntryID(entry, &entryID);
  if (a3 == -536870896)
  {
    os_unfair_recursive_lock_lock_with_options();
    v5 = *(a1 + 32);
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 0x40000000;
    context[2] = ____IOHIDManagerDeviceRemoved_block_invoke;
    context[3] = &unk_1E74A82A0;
    context[4] = &v14;
    context[5] = entryID;
    _IOHIDCFSetApplyBlock(v5, context);
    v6 = v15[3];
    if (!v6)
    {
LABEL_17:
      os_unfair_recursive_lock_unlock();
      goto LABEL_18;
    }

    CFDictionaryRemoveValue(*(a1 + 48), v6);
    v7 = *(a1 + 64);
    if (v7)
    {
      CFDictionaryRemoveValue(v7, v15[3]);
    }

    if ((*(a1 + 152) & 5) == 1 && CFSetContainsValue(*(a1 + 32), v15[3]))
    {
      __IOHIDDeviceSaveProperties(v15[3], 0);
    }

    v8 = *(a1 + 96);
    v9 = *(a1 + 80);
    os_unfair_recursive_lock_unlock();
    if ((*(a1 + 152) & 8) == 0 && v8)
    {
      IOHIDDeviceCancel(v15[3]);
      IOHIDDeviceActivate(v15[3]);
    }

    os_unfair_recursive_lock_lock_with_options();
    v10 = *(a1 + 232);
    if (v10)
    {
      if (v9)
      {
LABEL_15:
        v10(*(a1 + 224), 0, a1, v15[3]);
        goto LABEL_16;
      }

      v11 = atomic_load((a1 + 116));
      if (v11)
      {
        v10 = *(a1 + 232);
        goto LABEL_15;
      }
    }

LABEL_16:
    os_unfair_recursive_lock_unlock();
    os_unfair_recursive_lock_lock_with_options();
    CFSetRemoveValue(*(a1 + 32), v15[3]);
    goto LABEL_17;
  }

LABEL_18:
  _Block_object_dispose(&v14, 8);
}

uint64_t __IOHIDQueueRegister()
{
  result = _CFRuntimeRegisterClass();
  __kIOHIDQueueTypeID = result;
  return result;
}

CFTypeID IOHIDQueueGetTypeID(void)
{
  result = __kIOHIDQueueTypeID;
  if (!__kIOHIDQueueTypeID)
  {
    pthread_once(&__queueTypeInit, __IOHIDQueueRegister);
    return __kIOHIDQueueTypeID;
  }

  return result;
}

CFIndex IOHIDQueueGetDepth(IOHIDQueueRef queue)
{
  v2 = 0;
  (*(**(queue + 3) + 48))(*(queue + 3), &v2);
  return v2;
}

void IOHIDQueueAddElement(IOHIDQueueRef queue, IOHIDElementRef element)
{
  (*(**(queue + 3) + 56))(*(queue + 3), element, 0);
  Mutable = *(queue + 24);
  if (Mutable || (v5 = CFGetAllocator(queue), Mutable = CFSetCreateMutable(v5, 0, MEMORY[0x1E695E9F8]), (*(queue + 24) = Mutable) != 0))
  {

    CFSetAddValue(Mutable, element);
  }
}

void IOHIDQueueRemoveElement(IOHIDQueueRef queue, IOHIDElementRef element)
{
  (*(**(queue + 3) + 64))(*(queue + 3), element, 0);
  v4 = *(queue + 24);
  if (v4)
  {

    CFSetRemoveValue(v4, element);
  }
}

Boolean IOHIDQueueContainsElement(IOHIDQueueRef queue, IOHIDElementRef element)
{
  v3 = 0;
  (*(**(queue + 3) + 72))(*(queue + 3), element, &v3, 0);
  return v3;
}

void IOHIDQueueScheduleWithRunLoop(IOHIDQueueRef queue, CFRunLoopRef runLoop, CFStringRef runLoopMode)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!__IOHIDQueueSetupAsyncSupport(queue))
  {
    IOHIDQueueScheduleWithRunLoop_cold_1(&v8, v9);
  }

  *(queue + 16) = runLoop;
  *(queue + 17) = runLoopMode;
  v6 = *(queue + 5);
  v7 = *MEMORY[0x1E69E9840];

  CFRunLoopAddSource(runLoop, v6, runLoopMode);
}

BOOL __IOHIDQueueSetupAsyncSupport(void *a1)
{
  memset(&v2.info, 0, 72);
  v2.version = 1;
  if (a1[16] || a1[18])
  {
    __IOHIDQueueSetupAsyncSupport_cold_1();
  }

  __IOHIDQueueSetupAsyncSupport_cold_2(a1, &v2, &v2.perform, &v3);
  return v3;
}

void IOHIDQueueUnscheduleFromRunLoop(IOHIDQueueRef queue, CFRunLoopRef runLoop, CFStringRef runLoopMode)
{
  v5 = (queue + 128);
  v4 = *(queue + 16);
  if (v4)
  {
    CFRunLoopRemoveSource(v4, *(queue + 5), *(queue + 17));
    *v5 = 0;
    v5[1] = 0;
  }
}

void IOHIDQueueSetDispatchQueue(IOHIDQueueRef queue, dispatch_queue_t dispatchQueue)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!__IOHIDQueueSetupAsyncSupport(queue))
  {
    IOHIDQueueScheduleWithRunLoop_cold_1(&v6, v7);
  }

  IOHIDQueueSetDispatchQueue_cold_1(dispatchQueue, queue, v5);
  v4 = *MEMORY[0x1E69E9840];
}

uint64_t __IOHIDQueueSetDispatchQueue_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (a2 == 8)
  {
    dispatch_release(*(*(result + 32) + 152));
    *(*(v2 + 32) + 152) = 0;
    v4 = *(v2 + 32);
    v5 = *(v4 + 160);
    if (v5)
    {
      (*(v5 + 16))();
      _Block_release(*(*(v2 + 32) + 160));
      v4 = *(v2 + 32);
      *(v4 + 160) = 0;
    }

    dispatch_release(*(v4 + 144));
    v6 = *(v2 + 32);

    return _IOHIDObjectInternalRelease(v6);
  }

  else if (a2 == 2)
  {
    msg = dispatch_mach_msg_get_msg();
    return (*(*(v2 + 32) + 112))(msg, 0, 0, *(*(v2 + 32) + 120));
  }

  return result;
}

void IOHIDQueueSetCancelHandler(IOHIDQueueRef queue, dispatch_block_t handler)
{
  v5 = *MEMORY[0x1E69E9840];
  if (!handler || *(queue + 20))
  {
    IOHIDQueueSetCancelHandler_cold_1(&v3, v4);
  }

  *(queue + 20) = _Block_copy(handler);
  v2 = *MEMORY[0x1E69E9840];
}

void IOHIDQueueActivate(IOHIDQueueRef queue)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(queue + 18))
  {
    v1 = *(queue + 16) == 0;
  }

  else
  {
    v1 = 0;
  }

  if (!v1)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    queue = _os_crash_msg();
    __break(1u);
  }

  v2 = queue;
  if (atomic_fetch_or(queue + 42, 1u))
  {
    v6 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = *(queue + 19);
    CFMachPortGetPort(*(queue + 15));
    dispatch_mach_connect();
    v4 = *(**(v2 + 3) + 80);
    v5 = *MEMORY[0x1E69E9840];

    v4();
  }
}

void IOHIDQueueCancel(IOHIDQueueRef queue)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(queue + 18))
  {
    v1 = *(queue + 16) == 0;
  }

  else
  {
    v1 = 0;
  }

  if (!v1)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    queue = _os_crash_msg();
    __break(1u);
  }

  v2 = queue;
  if ((atomic_fetch_or(queue + 42, 2u) & 2) != 0)
  {
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    (*(**(queue + 3) + 88))(*(queue + 3), 0);
    v3 = *(v2 + 19);
    v4 = *MEMORY[0x1E69E9840];

    dispatch_mach_cancel();
  }
}

void IOHIDQueueRegisterValueAvailableCallback(IOHIDQueueRef queue, IOHIDCallback callback, void *context)
{
  if (atomic_load(queue + 42))
  {
    IOHIDQueueRegisterValueAvailableCallback_cold_1();
  }

  if (callback)
  {
    Mutable = *(queue + 23);
    if (Mutable || (Mutable = CFDictionaryCreateMutable(0, 0, 0, 0), (*(queue + 23) = Mutable) != 0))
    {
      CFDictionarySetValue(Mutable, callback, context);
      v8 = *(**(queue + 3) + 96);

      v8();
    }

    else
    {
      v10 = _IOHIDLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        IOHIDQueueRegisterValueAvailableCallback_cold_2(v10);
      }
    }
  }

  else
  {
    v9 = _IOHIDLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      IOHIDQueueRegisterValueAvailableCallback_cold_3(v9);
    }
  }
}

void __IOHIDQueueValueAvailableCallback(CFDictionaryRef *cf, unsigned int a2)
{
  if (cf)
  {
    if (cf[23])
    {
      v3[1] = cf;
      v3[0] = a2;
      CFRetain(cf);
      CFDictionaryApplyFunction(cf[23], _IOHIDCallbackApplier, v3);
      CFRelease(cf);
    }
  }
}

IOHIDValueRef IOHIDQueueCopyNextValue(IOHIDQueueRef queue)
{
  v2 = 0;
  (*(**(queue + 3) + 104))(*(queue + 3), &v2, 0, 0);
  return v2;
}

IOHIDValueRef IOHIDQueueCopyNextValueWithTimeout(IOHIDQueueRef queue, CFTimeInterval timeout)
{
  v3 = 0;
  (*(**(queue + 3) + 104))(*(queue + 3), &v3, (timeout * 1000.0), 0);
  return v3;
}

CFArrayRef _IOHIDQueueCopyElements(CFSetRef *a1)
{
  v2 = a1[24];
  if (!v2)
  {
    return 0;
  }

  Count = CFSetGetCount(v2);
  if (!Count)
  {
    return 0;
  }

  v4 = Count;
  v5 = 8 * Count;
  v6 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
  bzero(v6, v5);
  CFSetGetValues(a1[24], v6);
  v7 = CFGetAllocator(a1);
  v8 = CFArrayCreate(v7, v6, v4, MEMORY[0x1E695E9C0]);
  free(v6);
  return v8;
}

void __IOHIDQueueExtRelease(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(a1 + 144))
  {
    v2 = atomic_load((a1 + 168));
    if (v2 != 3)
    {
      __IOHIDManagerExtRelease_cold_1(&v6, v7, (a1 + 168));
    }
  }

  v3 = *(a1 + 192);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 192) = 0;
  }

  if (*(a1 + 176))
  {
    *(a1 + 176) = 0;
  }

  v4 = *(a1 + 184);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 184) = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __IOHIDQueueIntRelease(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    (*(*v2 + 24))(v2);
    *(a1 + 24) = 0;
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(*result + 24))(result);
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t __IOHIDTransactionRegister()
{
  result = _CFRuntimeRegisterClass();
  __kIOHIDTransactionTypeID = result;
  return result;
}

CFTypeID IOHIDTransactionGetTypeID(void)
{
  result = __kIOHIDTransactionTypeID;
  if (!__kIOHIDTransactionTypeID)
  {
    pthread_once(&__transactionTypeInit, __IOHIDTransactionRegister);
    return __kIOHIDTransactionTypeID;
  }

  return result;
}

IOHIDTransactionDirectionType IOHIDTransactionGetDirection(IOHIDTransactionRef transaction)
{
  v2 = kIOHIDTransactionDirectionTypeInput;
  (*(**(transaction + 3) + 48))(*(transaction + 3), &v2);
  return v2;
}

Boolean IOHIDTransactionContainsElement(IOHIDTransactionRef transaction, IOHIDElementRef element)
{
  v3 = 0;
  (*(**(transaction + 3) + 72))(*(transaction + 3), element, &v3, 0);
  return v3;
}

void IOHIDTransactionScheduleWithRunLoop(IOHIDTransactionRef transaction, CFRunLoopRef runLoop, CFStringRef runLoopMode)
{
  v7 = (transaction + 32);
  v6 = *(transaction + 4);
  if (v6 || !(*(**(transaction + 3) + 32))(*(transaction + 3), v7) && (v6 = *v7) != 0)
  {
    *(transaction + 5) = runLoop;
    *(transaction + 6) = runLoopMode;
    v8 = CFGetTypeID(v6);
    if (v8 == CFRunLoopSourceGetTypeID())
    {
      v10 = *(transaction + 4);
      v9 = *(transaction + 5);
      v11 = *(transaction + 6);

      CFRunLoopAddSource(v9, v10, v11);
    }

    else
    {
      v12 = CFGetTypeID(*v7);
      if (v12 == CFRunLoopTimerGetTypeID())
      {
        v14 = *(transaction + 4);
        v13 = *(transaction + 5);
        v15 = *(transaction + 6);

        CFRunLoopAddTimer(v13, v14, v15);
      }
    }
  }
}

void IOHIDTransactionUnscheduleFromRunLoop(IOHIDTransactionRef transaction, CFRunLoopRef runLoop, CFStringRef runLoopMode)
{
  v4 = *(transaction + 4);
  if (v4)
  {
    v7 = CFGetTypeID(v4);
    if (v7 == CFRunLoopSourceGetTypeID())
    {
      CFRunLoopRemoveSource(runLoop, *(transaction + 4), runLoopMode);
    }

    else
    {
      v8 = CFGetTypeID(*(transaction + 4));
      if (v8 == CFRunLoopTimerGetTypeID())
      {
        CFRunLoopRemoveTimer(runLoop, *(transaction + 4), runLoopMode);
      }
    }

    *(transaction + 5) = 0;
    *(transaction + 6) = 0;
  }
}

IOReturn IOHIDTransactionCommitWithCallback(IOHIDTransactionRef transaction, CFTimeInterval timeout, IOHIDCallback callback, void *context)
{
  v8 = malloc_type_malloc(0x18uLL, 0xA0040114AFA65uLL);
  if (!v8)
  {
    return -536870211;
  }

  v9 = v8;
  *v8 = context;
  v8[1] = callback;
  v8[2] = transaction;
  v10 = (*(**(transaction + 3) + 96))(*(transaction + 3), timeout, __IOHIDTransactionCommitCallback, v8, 0);
  if (v10)
  {
    free(v9);
  }

  return v10;
}

void __IOHIDTransactionCommitCallback(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (*(a1[2] + 24) == a3)
    {
      v4 = a1[1];
      if (v4)
      {
        v4(*a1);
      }
    }

    free(a1);
  }
}

void __IOHIDTransactionIntRelease(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    (*(*v2 + 24))(v2);
    *(a1 + 24) = 0;
  }

  if ((*(a1 + 64) & 1) == 0)
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 56) = 0;
    }
  }
}

void _IOHIDEventRemoveAttachment(uint64_t a1, const void *a2)
{
  if (a1 && a2)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      CFDictionaryRemoveValue(v2, a2);
    }
  }
}

uint64_t IOHIDEventSetTimeStampOfType(uint64_t result, uint64_t a2, int a3)
{
  v5 = result;
  if (_MergedGlobals[0])
  {
    result = _MergedGlobals[0]();
    if (result)
    {
      if (off_1ED446908)
      {
        result = off_1ED446908(a2);
        a2 = result;
      }
    }
  }

  *(v5 + 8) = a2;
  if (a3 == 1)
  {
    v6 = *(v5 + 32) | 0x80;
  }

  else
  {
    if (a3)
    {
      return result;
    }

    v6 = *(v5 + 32) & 0xFFFFFF7F;
  }

  *(v5 + 32) = v6;
  return result;
}

const __CFArray *IOHIDEventCreateDigitizerStylusEvent(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, int a17)
{
  v20 = a17;
  if (a7)
  {
    v20 = a17 | 0x10000;
  }

  if (a8)
  {
    v20 |= 0x40000u;
  }

  DigitizerEvent = IOHIDEventCreateDigitizerEvent(a1, a2, 0, a3, a4, a5, a6, a7, a9, a10, a11, a12, a14, 0, v20);
  v22 = DigitizerEvent;
  if (DigitizerEvent)
  {
    *(*(DigitizerEvent + 12) + 88) = 0;
    EventWithOptions = IOHIDEventGetEventWithOptions(DigitizerEvent, 11, 4026531840);
    if (EventWithOptions)
    {
      *(*(EventWithOptions + 12) + 72) = a13;
    }

    IOHIDEventSetFloatValueWithOptions(v22, 720909, 4026531840, a15);
    IOHIDEventSetFloatValueWithOptions(v22, 720910, 4026531840, a16);
  }

  return v22;
}

const __CFArray *IOHIDEventCreateDigitizerStylusEventWithPolarOrientation(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, int a17)
{
  v20 = a17;
  if (a7)
  {
    v20 = a17 | 0x10000;
  }

  if (a8)
  {
    v20 |= 0x40000u;
  }

  DigitizerEvent = IOHIDEventCreateDigitizerEvent(a1, a2, 0, a3, a4, a5, a6, a7, a9, a10, a11, a12, a14, 0, v20);
  v22 = DigitizerEvent;
  if (DigitizerEvent)
  {
    *(*(DigitizerEvent + 12) + 88) = 1;
    EventWithOptions = IOHIDEventGetEventWithOptions(DigitizerEvent, 11, 4026531840);
    if (EventWithOptions)
    {
      *(*(EventWithOptions + 12) + 72) = a13;
    }

    IOHIDEventSetFloatValueWithOptions(v22, 720911, 4026531840, a15);
    IOHIDEventSetFloatValueWithOptions(v22, 720912, 4026531840, a16);
  }

  return v22;
}

uint64_t IOHIDEventCreateCollectionEventWithUsage(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4, char a5, int a6)
{
  result = IOHIDEventCreate(a1, 37, a2, a6 | 2u);
  v10 = *(result + 96);
  *(v10 + 16) = a3;
  *(v10 + 18) = a4;
  *(v10 + 20) = a5;
  return result;
}

uint64_t IOHIDEventCreateBrightnessEvent(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  result = IOHIDEventCreate(a1, 38, a2, a6);
  v10 = *(result + 96);
  *(v10 + 16) = a3;
  *(v10 + 20) = a4;
  *(v10 + 24) = a5;
  return result;
}

BOOL IOHIDEventConformsToWithOptions(const __CFArray *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 3) & (1 << a2);
  v4 = v3 != 0;
  if (!(a3 >> 28) && v3)
  {
    return IOHIDEventGetEventWithOptions(a1, a2, a3) != 0;
  }

  return v4;
}

double IOHIDEventGetPositionWithOptions(const __CFArray *a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  v4 = *(v3 + 4);
  v5 = 0.0;
  if (v4 <= 0xB)
  {
    if (((1 << v4) & 0x2E0) != 0)
    {
      if (a2)
      {
        EventWithOptions = IOHIDEventGetEventWithOptions(a1, v4, a2);
        if (!EventWithOptions)
        {
          return v5;
        }

        v3 = *(EventWithOptions + 12);
      }

      v6 = *(v3 + 16);
      v7 = vcvtd_n_f64_s32(v6, 0x10uLL);
      if (v6 == 0x80000000)
      {
        v5 = NAN;
      }

      else
      {
        v5 = v7;
      }

      v8 = vceq_s32(*(v3 + 20), 0x8000000080000000);
    }

    else if (((1 << v4) & 0x810) != 0)
    {
      if (a2)
      {
        v12 = IOHIDEventGetEventWithOptions(a1, v4, a2);
        if (!v12)
        {
          return v5;
        }

        v3 = *(v12 + 12);
      }

      v5 = *(v3 + 16);
      v9 = *(v3 + 24);
    }
  }

  return v5;
}

const __CFArray *IOHIDEventSetPositionWithOptions(const __CFArray *result, uint64_t a2, double a3, double a4, double a5)
{
  v6 = *(result + 12);
  v7 = *(v6 + 4);
  if (v7 <= 0xB)
  {
    if (((1 << v7) & 0x2E0) == 0)
    {
      if (((1 << v7) & 0x810) == 0)
      {
        return result;
      }

      if (a2)
      {
        result = IOHIDEventGetEventWithOptions(result, v7, a2);
        if (!result)
        {
          return result;
        }

        v6 = *(result + 12);
      }

      *(v6 + 16) = a3;
      *(v6 + 24) = a4;
      *(v6 + 32) = a5;
      return result;
    }

    if (!a2)
    {
LABEL_4:
      *(v6 + 16) = vcvtd_n_s64_f64(a3, 0x10uLL);
      *(v6 + 20) = vcvtd_n_s64_f64(a4, 0x10uLL);
      *(v6 + 24) = vcvtd_n_s64_f64(a5, 0x10uLL);
      return result;
    }

    result = IOHIDEventGetEventWithOptions(result, v7, a2);
    if (result)
    {
      v6 = *(result + 12);
      goto LABEL_4;
    }
  }

  return result;
}

unint64_t IOHIDEventGetUInt64ValueWithOptions(const __CFArray *a1, int a2, uint64_t a3)
{
  v4 = a1;
  v5 = HIWORD(a2);
  if (!a1 || a2 >= 0x10000)
  {
    result = IOHIDEventGetEventWithOptions(a1, HIWORD(a2), a3);
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  result = 0;
  v7 = *(v4 + 96);
  switch(v5)
  {
    case 0u:
      result = 0;
      if (a2 > 2)
      {
        if (a2 > 4)
        {
          if (a2 == 5)
          {
            v25 = *(v7 + 8);
            return (v25 >> 5) & 1;
          }

          if (a2 == 6)
          {
            return (*(v7 + 8) >> 6) & 1;
          }
        }

        else if (a2 == 3)
        {
          return (*(v7 + 8) >> 3) & 1;
        }

        else
        {
          return (*(v7 + 8) >> 4) & 1;
        }

        return result;
      }

      if (!a2)
      {
        LOBYTE(v7) = *(v7 + 8);
        return v7 & 1;
      }

      if (a2 == 1)
      {
        v26 = *(v7 + 8);
        return (v26 >> 1) & 1;
      }

      if (a2 != 2)
      {
        return result;
      }

      return (*(v7 + 8) >> 2) & 1;
    case 1u:
      result = 0;
      if (a2 <= 65537)
      {
        if (a2 == 0x10000)
        {
          return *(v7 + 16);
        }

        if (a2 == 65537)
        {
          return *(v7 + 18);
        }
      }

      else
      {
        switch(a2)
        {
          case 65538:
            return *(v7 + 20);
          case 65539:
            return *(v7 + 24);
          case 65540:
            goto LABEL_177;
        }
      }

      return result;
    case 2u:
      result = 0;
      if (a2 <= 131073)
      {
        if (a2 == 0x20000)
        {
          return *(v7 + 16);
        }

        if (a2 == 131073)
        {
          return *(v7 + 24);
        }

        return result;
      }

      if (a2 == 131074)
      {
        return *(v7 + 25);
      }

      if (a2 == 131075)
      {
        goto LABEL_267;
      }

      v14 = 131076;
      goto LABEL_274;
    case 3u:
      result = 0;
      if (a2 > 196612)
      {
        if (a2 > 196615)
        {
          switch(a2)
          {
            case 196616:
              v25 = *(v7 + 24);
              return (v25 >> 5) & 1;
            case 196617:
              return (*(v7 + 24) >> 6) & 7;
            case 196618:
              return (*(v7 + 24) >> 9) & 3;
          }
        }

        else if (a2 == 196613)
        {
          LODWORD(v7) = *(v7 + 24);
          return v7 & 1;
        }

        else if (a2 == 196614)
        {
          return (*(v7 + 24) >> 1) & 3;
        }

        else
        {
          return (*(v7 + 24) >> 3) & 3;
        }

        return result;
      }

      if (a2 > 196609)
      {
        if (a2 == 196610)
        {
          return *(v7 + 20);
        }

        if (a2 == 196611)
        {
          return (*(v7 + 8) >> 16) & 1;
        }

        else
        {
          return *(v7 + 28);
        }
      }

      if (a2 == 196608)
      {
        return *(v7 + 16);
      }

      if (a2 == 196609)
      {
        return *(v7 + 18);
      }

      return result;
    case 4u:
      if (a2 == 262146)
      {
        return *(v7 + 32);
      }

      if (a2 == 262145)
      {
        return *(v7 + 24);
      }

      if (a2 != 0x40000)
      {
        return 0;
      }

      return *(v7 + 16);
    case 5u:
      if (a2 == 327682)
      {
        goto LABEL_284;
      }

      if (a2 == 327681)
      {
        goto LABEL_267;
      }

      if (a2 != 327680)
      {
        return 0;
      }

      goto LABEL_329;
    case 6u:
      result = 0;
      v9 = 393217;
      if (a2 <= 393217)
      {
        if (a2 != 393216)
        {
          goto LABEL_266;
        }

        goto LABEL_329;
      }

      if (a2 == 393218)
      {
        goto LABEL_284;
      }

      if (a2 == 393219)
      {
        return (*(v7 + 8) >> 2) & 1;
      }

      return result;
    case 7u:
      if (a2 == 458754)
      {
        goto LABEL_284;
      }

      if (a2 == 458753)
      {
        goto LABEL_267;
      }

      if (a2 != 458752)
      {
        return 0;
      }

      goto LABEL_329;
    case 9u:
      if (a2 == 589826)
      {
        goto LABEL_284;
      }

      if (a2 == 589825)
      {
        goto LABEL_267;
      }

      if (a2 != 589824)
      {
        return 0;
      }

      goto LABEL_329;
    case 0xAu:
      if ((a2 - 655360) > 0xB)
      {
        return 0;
      }

      if (a2 == 655363)
      {
        return *(v7 + 32);
      }

      result = 0;
      v15 = *(v7 + 32);
      if (v15 <= 1)
      {
        if (v15)
        {
          if (v15 != 1)
          {
            return result;
          }

          if (a2 == 655364)
          {
            return *(v7 + 16);
          }
        }

        else
        {
          switch(a2)
          {
            case 655362:
              goto LABEL_284;
            case 655361:
              goto LABEL_267;
            case 655360:
              goto LABEL_329;
          }
        }

        return 0;
      }

      if (v15 != 3)
      {
        if (v15 != 2)
        {
          return result;
        }

        switch(a2)
        {
          case 655367:
            goto LABEL_284;
          case 655366:
            goto LABEL_267;
          case 655365:
            goto LABEL_329;
        }

        return 0;
      }

      result = 0;
      if (a2 <= 655369)
      {
        if (a2 == 655368)
        {
          goto LABEL_329;
        }

        v9 = 655369;
        goto LABEL_266;
      }

      if (a2 == 655370)
      {
        goto LABEL_284;
      }

      if (a2 == 655371)
      {
        goto LABEL_202;
      }

      return result;
    case 0xBu:
      switch(a2)
      {
        case 720896:
          return *(v7 + 16);
        case 720897:
          return *(v7 + 24);
        case 720898:
          return *(v7 + 32);
        case 720899:
          return *(v7 + 60);
        case 720900:
          return *(v7 + 44);
        case 720901:
          return *(v7 + 40);
        case 720902:
          goto LABEL_347;
        case 720903:
          return *(v7 + 52);
        case 720904:
          return (*(v7 + 8) >> 16) & 1;
        case 720905:
          return (*(v7 + 8) >> 17) & 1;
        case 720906:
          return *(v7 + 64);
        case 720907:
          return *(v7 + 72);
        case 720908:
          return *(v7 + 80);
        case 720909:
        case 720910:
        case 720911:
        case 720912:
        case 720913:
        case 720914:
        case 720915:
        case 720916:
        case 720917:
        case 720922:
          v18 = *(v7 + 88);
          switch(v18)
          {
            case 0:
              if (a2 == 720910)
              {
                return *(v7 + 104);
              }

              if (a2 != 720909)
              {
                return 0;
              }

              return *(v7 + 96);
            case 2:
              result = 0;
              if (a2 <= 720915)
              {
                if (a2 != 720913)
                {
                  if (a2 != 720914)
                  {
                    v19 = 19;
                    goto LABEL_361;
                  }

                  return *(v7 + 104);
                }

                return *(v7 + 96);
              }

              if (a2 != 720916)
              {
                if (a2 != 720917)
                {
                  if (a2 != 720922)
                  {
                    return result;
                  }

                  return *(v7 + 136);
                }

                return *(v7 + 128);
              }

              break;
            case 1:
              result = 0;
              if (a2 <= 720913)
              {
                if (a2 != 720911)
                {
                  if (a2 != 720912)
                  {
                    v19 = 17;
LABEL_361:
                    if (a2 != (v19 | 0xB0000))
                    {
                      return result;
                    }

                    return *(v7 + 112);
                  }

                  return *(v7 + 104);
                }

                return *(v7 + 96);
              }

              if (a2 != 720914)
              {
                if (a2 != 720916)
                {
                  if (a2 != 720917)
                  {
                    return result;
                  }

                  return *(v7 + 136);
                }

                return *(v7 + 128);
              }

              break;
            default:
              return 0;
          }

          return *(v7 + 120);
        case 720918:
          v26 = *(v7 + 8);
          return (v26 >> 1) & 1;
        case 720919:
          if (*(v7 + 44))
          {
            return 0;
          }

          return *(v7 + 80);
        case 720920:
          return *(v7 + 56);
        case 720921:
          return (*(v7 + 8) >> 19) & 1;
        case 720923:
          return *(v7 + 144);
        case 720924:
          return *(v7 + 148);
        case 720925:
          return *(v7 + 152);
        case 720926:
          return (*(v7 + 52) >> 13) & 0x18000 | (*(v7 + 52) >> 20) & 0x400u | (*(v7 + 52) >> 31 << 23);
        case 720927:
          return *(v7 + 88);
        default:
          return 0;
      }

    case 0xCu:
      result = 0;
      if (a2 <= 786437)
      {
        if (a2 > 786434)
        {
          if (a2 == 786435)
          {
            return *(v7 + 28);
          }

          if (a2 != 786436)
          {
            return *(v7 + 36);
          }

          return *(v7 + 32);
        }

        switch(a2)
        {
          case 786432:
            return *(v7 + 16);
          case 786433:
            return *(v7 + 20);
          case 786434:
            return *(v7 + 24);
        }

        return result;
      }

      if (a2 > 786440)
      {
        if (a2 == 786441)
        {
          return *(v7 + 56);
        }

        if (a2 != 786442)
        {
          v22 = 786443;
          goto LABEL_299;
        }

        return *(v7 + 64);
      }

      if (a2 == 786438)
      {
        return *(v7 + 37);
      }

      if (a2 == 786439)
      {
        return *(v7 + 40);
      }

      v23 = 786440;
      goto LABEL_308;
    case 0xDu:
      result = 0;
      if (a2 > 851970)
      {
        switch(a2)
        {
          case 851971:
            return *(v7 + 28);
          case 851972:
            return *(v7 + 32);
          case 851973:
            return *(v7 + 36);
        }
      }

      else
      {
        switch(a2)
        {
          case 851968:
            goto LABEL_329;
          case 851969:
            goto LABEL_267;
          case 851970:
            goto LABEL_284;
        }
      }

      return result;
    case 0xEu:
      result = 0;
      v20 = 917505;
      if (a2 > 917505)
      {
        if (a2 == 917506)
        {
          return *(v7 + 18);
        }

        v20 = 917507;
      }

      else if (a2 == 917504)
      {
        return *(v7 + 16);
      }

      if (a2 != v20)
      {
        return result;
      }

      if (*(v7 + 18) == 1)
      {
        v17 = 917507;
        goto LABEL_214;
      }

      result = 0;
      if (a2 != 917505 || *(v7 + 18))
      {
        return result;
      }

      return *(v7 + 20);
    case 0xFu:
      if (a2 != 983040)
      {
        return 0;
      }

      goto LABEL_329;
    case 0x10u:
      result = 0;
      if (a2 <= 1048578)
      {
        if (a2 == 0x100000)
        {
          return *(v7 + 28);
        }

        if (a2 != 1048577)
        {
          v8 = 1048578;
          goto LABEL_250;
        }

        return *(v7 + 32);
      }

      if (a2 <= 1048580)
      {
        if (a2 == 1048579)
        {
          goto LABEL_329;
        }

        v9 = 1048580;
        goto LABEL_266;
      }

      if (a2 == 1048581)
      {
        return *(v7 + 34);
      }

      v11 = 1048582;
      goto LABEL_283;
    case 0x11u:
      result = 0;
      if (a2 <= 1114113)
      {
        if (a2 == 1114112)
        {
          return *(v7 + 16);
        }

        else
        {
          if (a2 != 1114113)
          {
            return result;
          }

          return *(v7 + 24);
        }
      }

      if (a2 == 1114114)
      {
        return *(v7 + 32);
      }

      if (a2 == 1114115)
      {
        return *(v7 + 40);
      }

      return result;
    case 0x12u:
      if (a2 == 1179649)
      {
        goto LABEL_267;
      }

      if (a2 != 1179648)
      {
        return 0;
      }

      return *(v7 + 16);
    case 0x13u:
      result = 0;
      if (a2 <= 1245186)
      {
        if (a2 == 1245184)
        {
          goto LABEL_329;
        }

        if (a2 != 1245185)
        {
          v11 = 1245186;
          goto LABEL_283;
        }

        goto LABEL_267;
      }

      if (a2 <= 1245188)
      {
        if (a2 != 1245187)
        {
          v8 = 1245188;
          goto LABEL_250;
        }

LABEL_37:
        v10 = *(v7 + 32);
        goto LABEL_330;
      }

      if (a2 == 1245189)
      {
LABEL_340:
        v10 = *(v7 + 40);
        goto LABEL_330;
      }

      v14 = 1245190;
LABEL_274:
      if (a2 != v14)
      {
        return result;
      }

      return *(v7 + 28);
    case 0x14u:
      result = 0;
      if (a2 <= 1310722)
      {
        if (a2 == 1310720)
        {
          goto LABEL_329;
        }

        if (a2 != 1310721)
        {
          v11 = 1310722;
          goto LABEL_283;
        }

        goto LABEL_267;
      }

      if (a2 == 1310723)
      {
        return *(v7 + 28);
      }

      if (a2 != 1310724)
      {
        v24 = 1310725;
        goto LABEL_219;
      }

      return *(v7 + 32);
    case 0x15u:
      result = 0;
      if (a2 <= 1376258)
      {
        if (a2 == 1376256)
        {
          goto LABEL_329;
        }

        if (a2 != 1376257)
        {
          v11 = 1376258;
          goto LABEL_283;
        }

        goto LABEL_267;
      }

      if (a2 == 1376259)
      {
        return *(v7 + 28);
      }

      if (a2 == 1376260)
      {
        return *(v7 + 32);
      }

      v24 = 1376261;
LABEL_219:
      if (a2 == v24)
      {
        return *(v7 + 36);
      }

      return result;
    case 0x17u:
      result = 0;
      if (a2 <= 1507330)
      {
        if (a2 == 1507328)
        {
          return *(v7 + 28);
        }

        if (a2 != 1507329)
        {
          v8 = 1507330;
          goto LABEL_250;
        }

        return *(v7 + 32);
      }

      if (a2 <= 1507332)
      {
        if (a2 == 1507331)
        {
          goto LABEL_329;
        }

        v9 = 1507332;
        goto LABEL_266;
      }

      if (a2 == 1507333)
      {
        return *(v7 + 34);
      }

      v11 = 1507334;
LABEL_283:
      if (a2 == v11)
      {
LABEL_284:
        v10 = *(v7 + 24);
        goto LABEL_330;
      }

      return result;
    case 0x18u:
      if (a2 == 1572864)
      {
        return *(v7 + 16);
      }

      if (a2 != 1572865)
      {
        return 0;
      }

      return *(v7 + 8) >> 15;
    case 0x19u:
      switch(a2)
      {
        case 1638402:
          return *(v7 + 28);
        case 1638401:
          return *(v7 + 24);
        case 1638400:
          goto LABEL_329;
      }

      return 0;
    case 0x1Au:
      if (a2 == 1703938)
      {
        return *(v7 + 24);
      }

      if (a2 == 1703937)
      {
        return *(v7 + 20);
      }

      if (a2 != 1703936)
      {
        return 0;
      }

      return *(v7 + 16);
    case 0x1Bu:
      result = 0;
      if (a2 <= 1769474)
      {
        if (a2 == 1769472)
        {
          return *(v7 + 28);
        }

        if (a2 != 1769473)
        {
          v8 = 1769474;
          goto LABEL_250;
        }

        return *(v7 + 32);
      }

      if (a2 == 1769477)
      {
        return *(v7 + 34);
      }

      if (a2 != 1769476)
      {
        v21 = 1769475;
        goto LABEL_224;
      }

      goto LABEL_267;
    case 0x1Cu:
      result = 0;
      if (a2 <= 1835010)
      {
        if (a2 == 1835008)
        {
          return *(v7 + 28);
        }

        if (a2 == 1835009)
        {
          return *(v7 + 32);
        }

        v8 = 1835010;
LABEL_250:
        if (a2 == v8)
        {
LABEL_251:
          v10 = *(v7 + 36);
          goto LABEL_330;
        }

        return result;
      }

      if (a2 == 1835013)
      {
        return *(v7 + 34);
      }

      if (a2 == 1835012)
      {
        goto LABEL_267;
      }

      v21 = 1835011;
LABEL_224:
      if (a2 != v21)
      {
        return result;
      }

      goto LABEL_329;
    case 0x1Du:
      result = 0;
      v9 = 1900545;
      if (a2 > 1900545)
      {
        switch(a2)
        {
          case 1900546:
            return *(v7 + 24);
          case 1900547:
            return *(v7 + 26);
          case 1900548:
            return *(v7 + 32);
        }

        return result;
      }

      if (a2 == 1900544)
      {
        return *(v7 + 16);
      }

      goto LABEL_266;
    case 0x1Eu:
      result = 0;
      v9 = 1966081;
      if (a2 > 1966081)
      {
        if (a2 == 1966082)
        {
          return *(v7 + 24);
        }

        if (a2 == 1966083)
        {
LABEL_177:
          if (*(v7 + 24) < 8u)
          {
            return 0;
          }

          return *(v7 + 28);
        }

        return result;
      }

      if (a2 == 1966080)
      {
        return *(v7 + 16);
      }

LABEL_266:
      if (a2 != v9)
      {
        return result;
      }

      goto LABEL_267;
    case 0x1Fu:
      if (a2 == 2031617)
      {
        return *(v7 + 20);
      }

      if (a2 != 2031616)
      {
        return 0;
      }

      goto LABEL_329;
    case 0x20u:
      result = 0;
      if (a2 > 2097153)
      {
        if (a2 == 2097154)
        {
          return *(v7 + 24);
        }

        if (a2 != 2097155)
        {
          return result;
        }

LABEL_202:
        v10 = *(v7 + 28);
        goto LABEL_330;
      }

      if (a2 == 0x200000)
      {
        return *(v7 + 16);
      }

      if (a2 == 2097153)
      {
        goto LABEL_267;
      }

      return result;
    case 0x21u:
      if (a2 == 2162689)
      {
        goto LABEL_267;
      }

      if (a2 != 2162688)
      {
        return 0;
      }

      return *(v7 + 16);
    case 0x22u:
      if (a2 == 2228225)
      {
        goto LABEL_267;
      }

      if (a2 != 2228224)
      {
        return 0;
      }

      return *(v7 + 16);
    case 0x23u:
      switch(a2)
      {
        case 2293760:
          return *(v7 + 16);
        case 2293761:
          goto LABEL_267;
        case 2293762:
          goto LABEL_284;
        case 2293763:
          goto LABEL_202;
        case 2293764:
          goto LABEL_37;
        case 2293765:
          v10 = *(v7 + 44);
          goto LABEL_330;
        case 2293766:
          v10 = *(v7 + 48);
          goto LABEL_330;
        case 2293767:
          goto LABEL_251;
        case 2293768:
          goto LABEL_340;
        case 2293769:
          v10 = *(v7 + 68);
          goto LABEL_330;
        case 2293770:
          v10 = *(v7 + 76);
          goto LABEL_330;
        case 2293771:
          v10 = *(v7 + 72);
          goto LABEL_330;
        case 2293772:
          v10 = *(v7 + 80);
          goto LABEL_330;
        case 2293773:
          v10 = *(v7 + 52);
          goto LABEL_330;
        case 2293774:
          v10 = *(v7 + 56);
          goto LABEL_330;
        case 2293775:
          v10 = *(v7 + 60);
          goto LABEL_330;
        case 2293776:
          v10 = *(v7 + 64);
          goto LABEL_330;
        case 2293777:
          LOBYTE(v7) = *(v7 + 84);
          return v7 & 1;
        case 2293778:
          v26 = *(v7 + 84);
          return (v26 >> 1) & 1;
        case 2293779:
          v10 = *(v7 + 88);
          goto LABEL_330;
        case 2293780:
          v10 = *(v7 + 92);
          goto LABEL_330;
        case 2293781:
          v10 = *(v7 + 96);
          goto LABEL_330;
        case 2293782:
          v10 = *(v7 + 100);
          goto LABEL_330;
        case 2293783:
          v10 = *(v7 + 104);
          goto LABEL_330;
        case 2293784:
          v10 = *(v7 + 108);
          goto LABEL_330;
        default:
          return 0;
      }

    case 0x24u:
      if (a2 == 2359297)
      {
        return *(v7 + 20);
      }

      if (a2 != 2359296)
      {
        return 0;
      }

      goto LABEL_329;
    case 0x25u:
      switch(a2)
      {
        case 2424834:
          return *(v7 + 20);
        case 2424833:
          return *(v7 + 18);
        case 2424832:
          return *(v7 + 16);
      }

      return 0;
    case 0x26u:
      if (a2 == 2490370)
      {
        return *(v7 + 24);
      }

      if (a2 == 2490369)
      {
        goto LABEL_267;
      }

      if (a2 != 2490368)
      {
        return 0;
      }

LABEL_329:
      v10 = *(v7 + 16);
      goto LABEL_330;
    case 0x27u:
      if ((a2 - 2555905) >= 2)
      {
        if (a2 == 2555904)
        {
          return *(v7 + 16);
        }

        return 0;
      }

      v16 = *(v7 + 16);
      if (v16 != 1)
      {
        if (v16)
        {
          result = 0;
          if (a2 != 2555905 || v16 != 2)
          {
            return result;
          }
        }

        else
        {
          v17 = 2555905;
LABEL_214:
          if (a2 != v17)
          {
            return 0;
          }
        }

        return *(v7 + 20);
      }

      if (a2 != 2555906)
      {
        return 0;
      }

LABEL_267:
      v10 = *(v7 + 20);
LABEL_330:
      if (v10 == 0x80000000)
      {
        return 0xFFFFFFFF80000000;
      }

      else
      {
        return (v10 + (v10 < 0 ? 0xFFFF : 0)) >> 16;
      }

    case 0x28u:
      switch(a2)
      {
        case 2621440:
          result = *(v7 + 64);
          break;
        case 2621441:
          result = *(v7 + 66);
          break;
        case 2621442:
          return *(v7 + 16);
        case 2621443:
          return *(v7 + 24);
        case 2621444:
          return *(v7 + 25);
        case 2621445:
          return *(v7 + 28);
        case 2621446:
          return *(v7 + 32);
        case 2621447:
          return *(v7 + 36);
        case 2621448:
          result = *(v7 + 44);
          break;
        case 2621449:
LABEL_347:
          result = *(v7 + 48);
          break;
        case 2621450:
          result = *(v7 + 56);
          break;
        case 2621451:
          result = *(v7 + 26);
          break;
        case 2621452:
          return *(v7 + 40);
        default:
          return 0;
      }

      return result;
    case 0x29u:
      result = 0;
      if (a2 <= 2686978)
      {
        if (a2 == 2686976)
        {
          return *(v7 + 16);
        }

        if (a2 != 2686977)
        {
          v13 = 2686978;
          goto LABEL_234;
        }

        return *(v7 + 20);
      }

      if (a2 <= 2686980)
      {
        if (a2 == 2686979)
        {
          return *(v7 + 32);
        }

        return *(v7 + 40);
      }

      if (a2 == 2686981)
      {
        return *(v7 + 48);
      }

      if (a2 != 2686982)
      {
        return result;
      }

      return *(v7 + 56);
    case 0x2Au:
      result = 0;
      if (a2 > 2752516)
      {
        if (a2 <= 2752518)
        {
          if (a2 == 2752517)
          {
            return *(v7 + 44);
          }

          else
          {
            v23 = 2752518;
LABEL_308:
            if (a2 == v23)
            {
              return *(v7 + 48);
            }
          }
        }

        else
        {
          if (a2 == 2752519)
          {
            return *(v7 + 56);
          }

          if (a2 == 2752520)
          {
            return *(v7 + 64);
          }

          v22 = 2752521;
LABEL_299:
          if (a2 == v22)
          {
            return *(v7 + 72);
          }
        }

        return result;
      }

      if (a2 <= 2752513)
      {
        if (a2 == 2752512)
        {
          return *(v7 + 16);
        }

        if (a2 == 2752513)
        {
          return *(v7 + 18);
        }

        return result;
      }

      if (a2 == 2752514)
      {
        return *(v7 + 24);
      }

      if (a2 != 2752515)
      {
        return *(v7 + 40);
      }

      return *(v7 + 32);
    case 0x2Bu:
      result = 0;
      v13 = 2818049;
      if (a2 > 2818049)
      {
        if (a2 == 2818050)
        {
          return *(v7 + 32);
        }

        if (a2 == 2818051)
        {
          return *(v7 + 36);
        }

        return result;
      }

      if (a2 == 2818048)
      {
        return *(v7 + 16);
      }

LABEL_234:
      if (a2 != v13)
      {
        return result;
      }

      return *(v7 + 24);
    default:
      return result;
  }
}

double IOHIDEventSetUInt64ValueWithOptions(const __CFArray *EventWithOptions, int a2, unint64_t a3, uint64_t a4)
{
  v6 = HIWORD(a2);
  if (!EventWithOptions || a2 >= 0x10000)
  {
    EventWithOptions = IOHIDEventGetEventWithOptions(EventWithOptions, HIWORD(a2), a4);
    if (!EventWithOptions)
    {
      return result;
    }
  }

  v7 = *(EventWithOptions + 12);
  switch(v6)
  {
    case 0u:
      if (a2 <= 2)
      {
        if (a2)
        {
          if (a2 == 1)
          {
            v8 = *(v7 + 8) & 0xFD | (2 * (a3 != 0));
          }

          else
          {
            if (a2 != 2)
            {
              return result;
            }

            v8 = *(v7 + 8) & 0xFB | (4 * (a3 != 0));
          }
        }

        else
        {
          v8 = *(v7 + 8) & 0xFE;
          if (a3)
          {
            ++v8;
          }
        }
      }

      else if (a2 > 4)
      {
        if (a2 == 5)
        {
          v8 = *(v7 + 8) & 0xDF | (32 * (a3 != 0));
        }

        else
        {
          if (a2 != 6)
          {
            return result;
          }

          v8 = *(v7 + 8) & 0xBF | ((a3 != 0) << 6);
        }
      }

      else if (a2 == 3)
      {
        v8 = *(v7 + 8) & 0xF7 | (8 * (a3 != 0));
      }

      else
      {
        v8 = *(v7 + 8) & 0xEF | (16 * (a3 != 0));
      }

      *(v7 + 8) = v8;
      return result;
    case 1u:
      if (a2 > 65537)
      {
        if (a2 == 65538)
        {
          goto LABEL_356;
        }

        if (a2 == 65540 && *(v7 + 24) >= 8u)
        {
          *(v7 + 28) = a3;
        }
      }

      else if (a2 == 0x10000)
      {
        *(v7 + 16) = a3;
      }

      else if (a2 == 65537)
      {
        *(v7 + 18) = a3;
      }

      return result;
    case 2u:
      if (a2 <= 131073)
      {
        if (a2 == 0x20000)
        {
          goto LABEL_278;
        }

        if (a2 == 131073)
        {
LABEL_272:
          *(v7 + 24) = a3;
        }

        return result;
      }

      if (a2 == 131074)
      {
LABEL_319:
        *(v7 + 25) = a3;
        return result;
      }

      if (a2 == 131075)
      {
        goto LABEL_275;
      }

      v15 = 131076;
      goto LABEL_288;
    case 3u:
      if (a2 > 196612)
      {
        if (a2 > 196615)
        {
          switch(a2)
          {
            case 196616:
              *(v7 + 24) = *(v7 + 24) & 0xFFFFFFDF | (32 * (a3 != 0));
              return result;
            case 196617:
              v20 = *(v7 + 24) & 0xFFFFFE3F | ((a3 & 7) << 6);
              break;
            case 196618:
              v20 = *(v7 + 24) & 0xFFFFF9FF | ((a3 & 3) << 9);
              break;
            default:
              return result;
          }
        }

        else if (a2 == 196613)
        {
          v20 = *(v7 + 24) & 0xFFFFFFFE;
          if (a3)
          {
            ++v20;
          }
        }

        else if (a2 == 196614)
        {
          v20 = *(v7 + 24) & 0xFFFFFFF9 | (2 * (a3 & 3));
        }

        else
        {
          v20 = *(v7 + 24) & 0xFFFFFFE7 | (8 * (a3 & 3));
        }

        goto LABEL_300;
      }

      if (a2 > 196609)
      {
        if (a2 == 196610)
        {
          goto LABEL_334;
        }

        if (a2 == 196611)
        {
LABEL_372:
          v34 = *(v7 + 8) & 0xFFFEFFFF | ((a3 != 0) << 16);
LABEL_472:
          *(v7 + 8) = v34;
        }

        else
        {
          *(v7 + 28) = a3;
        }

        return result;
      }

      if (a2 == 196608)
      {
        goto LABEL_339;
      }

      if (a2 == 196609)
      {
        goto LABEL_338;
      }

      return result;
    case 4u:
      switch(a2)
      {
        case 262146:
          goto LABEL_235;
        case 262145:
          goto LABEL_251;
        case 262144:
LABEL_82:
          result = a3;
          *(v7 + 16) = a3;
          break;
      }

      return result;
    case 5u:
      if (a2 == 327682)
      {
        goto LABEL_298;
      }

      if (a2 == 327681)
      {
        goto LABEL_275;
      }

      if (a2 != 327680)
      {
        return result;
      }

      goto LABEL_347;
    case 6u:
      v11 = 393217;
      if (a2 <= 393217)
      {
        if (a2 != 393216)
        {
          goto LABEL_274;
        }

        goto LABEL_347;
      }

      if (a2 == 393218)
      {
        goto LABEL_298;
      }

      if (a2 == 393219)
      {
        *(v7 + 8) = *(v7 + 8) & 0xFB | (4 * (a3 != 0));
      }

      return result;
    case 7u:
      if (a2 == 458754)
      {
        goto LABEL_279;
      }

      if (a2 == 458753)
      {
        goto LABEL_351;
      }

      if (a2 != 458752)
      {
        return result;
      }

      goto LABEL_113;
    case 9u:
      if (a2 == 589826)
      {
        goto LABEL_298;
      }

      if (a2 == 589825)
      {
        goto LABEL_275;
      }

      if (a2 != 589824)
      {
        return result;
      }

      goto LABEL_347;
    case 0xAu:
      if ((a2 - 655364) >= 8 && (a2 - 655360) > 2)
      {
        return result;
      }

      v16 = *(v7 + 32);
      if (v16 <= 1)
      {
        if (v16)
        {
          if (v16 == 1 && a2 == 655364)
          {
            goto LABEL_278;
          }
        }

        else
        {
          switch(a2)
          {
            case 655362:
              goto LABEL_298;
            case 655361:
              goto LABEL_275;
            case 655360:
              goto LABEL_347;
          }
        }

        return result;
      }

      if (v16 != 3)
      {
        if (v16 != 2)
        {
          return result;
        }

        if (a2 == 655367)
        {
          goto LABEL_298;
        }

        if (a2 == 655366)
        {
          goto LABEL_275;
        }

        v24 = 655365;
        goto LABEL_241;
      }

      if (a2 <= 655369)
      {
        if (a2 == 655368)
        {
          goto LABEL_347;
        }

        v11 = 655369;
        goto LABEL_274;
      }

      if (a2 == 655370)
      {
        goto LABEL_298;
      }

      if (a2 != 655371)
      {
        return result;
      }

      goto LABEL_215;
    case 0xBu:
      switch(a2)
      {
        case 720896:
          goto LABEL_82;
        case 720897:
          goto LABEL_251;
        case 720898:
          goto LABEL_235;
        case 720899:
          *(v7 + 60) = a3;
          return result;
        case 720900:
          goto LABEL_371;
        case 720901:
          goto LABEL_374;
        case 720902:
          goto LABEL_373;
        case 720903:
          *(v7 + 52) = a3;
          return result;
        case 720904:
          goto LABEL_372;
        case 720905:
          v34 = *(v7 + 8) & 0xFFFDFFFF | ((a3 != 0) << 17);
          goto LABEL_472;
        case 720906:
          goto LABEL_335;
        case 720907:
          goto LABEL_316;
        case 720908:
          goto LABEL_463;
        case 720909:
        case 720910:
        case 720911:
        case 720912:
        case 720913:
        case 720914:
        case 720915:
        case 720916:
        case 720917:
        case 720922:
          v21 = *(v7 + 88);
          if (!v21)
          {
            if (a2 == 720910)
            {
              goto LABEL_398;
            }

            if (a2 != 720909)
            {
              return result;
            }

            goto LABEL_392;
          }

          if (v21 == 2)
          {
            if (a2 <= 720915)
            {
              if (a2 != 720913)
              {
                if (a2 != 720914)
                {
                  v22 = 19;
LABEL_388:
                  if (a2 == (v22 | 0xB0000))
                  {
                    result = a3;
                    *(v7 + 112) = a3;
                  }

                  return result;
                }

LABEL_398:
                result = a3;
                *(v7 + 104) = a3;
                return result;
              }

LABEL_392:
              result = a3;
              *(v7 + 96) = a3;
              return result;
            }

            if (a2 != 720916)
            {
              if (a2 != 720917)
              {
                v35 = 26;
                goto LABEL_405;
              }

LABEL_474:
              result = a3;
              *(v7 + 128) = a3;
              return result;
            }

LABEL_473:
            result = a3;
            *(v7 + 120) = a3;
            return result;
          }

          if (v21 != 1)
          {
            return result;
          }

          if (a2 <= 720913)
          {
            if (a2 != 720911)
            {
              if (a2 != 720912)
              {
                v22 = 17;
                goto LABEL_388;
              }

              goto LABEL_398;
            }

            goto LABEL_392;
          }

          if (a2 == 720914)
          {
            goto LABEL_473;
          }

          if (a2 == 720916)
          {
            goto LABEL_474;
          }

          v35 = 21;
LABEL_405:
          if (a2 == (v35 | 0xB0000))
          {
            result = a3;
            *(v7 + 136) = a3;
          }

          return result;
        case 720918:
          v34 = *(v7 + 8) & 0xFFFFFFFD | (2 * (a3 != 0));
          goto LABEL_472;
        case 720919:
          if (!*(v7 + 44))
          {
LABEL_463:
            result = a3;
            *(v7 + 80) = a3;
          }

          return result;
        case 720920:
          *(v7 + 56) = a3;
          return result;
        case 720921:
          v34 = *(v7 + 8) & 0xFFF7FFFF | ((a3 != 0) << 19);
          goto LABEL_472;
        case 720923:
          *(v7 + 144) = a3;
          return result;
        case 720924:
          *(v7 + 148) = a3;
          return result;
        case 720925:
          *(v7 + 152) = a3;
          return result;
        case 720926:
          *(v7 + 52) = (a3 << 13) & 0x30000000 | (((a3 >> 10) & 1) << 30) & 0x70000000 | ((a3 >> 23) << 31) | *(v7 + 52) & 0xFFFFFFF;
          return result;
        default:
          return result;
      }

    case 0xCu:
      if (a2 <= 786437)
      {
        if (a2 > 786434)
        {
          if (a2 == 786435)
          {
            goto LABEL_310;
          }

          if (a2 != 786436)
          {
            *(v7 + 36) = a3 != 0;
            return result;
          }

          goto LABEL_311;
        }

        switch(a2)
        {
          case 786432:
            goto LABEL_140;
          case 786433:
            goto LABEL_356;
          case 786434:
            goto LABEL_218;
        }

        return result;
      }

      if (a2 > 786440)
      {
        if (a2 == 786441)
        {
          goto LABEL_317;
        }

        if (a2 != 786442)
        {
          v26 = 786443;
          goto LABEL_315;
        }

        goto LABEL_335;
      }

      if (a2 == 786438)
      {
        *(v7 + 37) = a3;
        return result;
      }

      if (a2 == 786439)
      {
        goto LABEL_327;
      }

      v27 = 786440;
      goto LABEL_325;
    case 0xDu:
      if (a2 > 851970)
      {
        if (a2 == 851971)
        {
          goto LABEL_310;
        }

        if (a2 != 851972)
        {
          v25 = 851973;
          goto LABEL_207;
        }

        goto LABEL_311;
      }

      switch(a2)
      {
        case 851968:
LABEL_113:
          v18 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v18 = 0x80000000;
          }

          *(v7 + 16) = v18;
          return result;
        case 851969:
          goto LABEL_351;
        case 851970:
LABEL_279:
          v20 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v20 = 0x80000000;
          }

          goto LABEL_300;
      }

      return result;
    case 0xEu:
      v23 = 917505;
      if (a2 > 917505)
      {
        if (a2 == 917506)
        {
          goto LABEL_338;
        }

        v23 = 917507;
      }

      else if (a2 == 917504)
      {
        goto LABEL_339;
      }

      if (a2 != v23)
      {
        return result;
      }

      if (*(v7 + 18) == 1)
      {
        if (a2 != 917507)
        {
          return result;
        }
      }

      else if (a2 != 917505 || *(v7 + 18))
      {
        return result;
      }

LABEL_334:
      *(v7 + 20) = a3;
      return result;
    case 0xFu:
      if (a2 == 983040)
      {
        goto LABEL_113;
      }

      return result;
    case 0x10u:
      if (a2 <= 1048578)
      {
        if (a2 == 0x100000)
        {
          goto LABEL_289;
        }

        if (a2 != 1048577)
        {
          v10 = 1048578;
          goto LABEL_265;
        }

        goto LABEL_269;
      }

      if (a2 <= 1048580)
      {
        if (a2 == 1048579)
        {
          goto LABEL_347;
        }

        v11 = 1048580;
        goto LABEL_274;
      }

      if (a2 == 1048581)
      {
        goto LABEL_301;
      }

      v13 = 1048582;
      goto LABEL_297;
    case 0x11u:
      v14 = 1114113;
      if (a2 > 1114113)
      {
        if (a2 == 1114114)
        {
          result = a3;
          *(v7 + 32) = a3;
        }

        else if (a2 == 1114115)
        {
          *(v7 + 40) = a3;
        }
      }

      else
      {
        if (a2 != 1114112)
        {
          goto LABEL_154;
        }

        result = a3;
        *(v7 + 16) = a3;
      }

      return result;
    case 0x12u:
      if (a2 == 1179649)
      {
        goto LABEL_351;
      }

      if (a2 == 1179648)
      {
        goto LABEL_140;
      }

      return result;
    case 0x13u:
      if (a2 <= 1245186)
      {
        if (a2 == 1245184)
        {
          goto LABEL_347;
        }

        if (a2 != 1245185)
        {
          v13 = 1245186;
          goto LABEL_297;
        }

        goto LABEL_275;
      }

      if (a2 <= 1245188)
      {
        if (a2 != 1245187)
        {
          v10 = 1245188;
          goto LABEL_265;
        }

LABEL_37:
        v12 = a3 << 16;
        if (a3 == 0x80000000)
        {
          v12 = 0x80000000;
        }

        *(v7 + 32) = v12;
        return result;
      }

      if (a2 == 1245189)
      {
LABEL_359:
        v33 = a3 << 16;
        if (a3 == 0x80000000)
        {
          v33 = 0x80000000;
        }

        *(v7 + 40) = v33;
        return result;
      }

      v15 = 1245190;
LABEL_288:
      if (a2 == v15)
      {
        goto LABEL_289;
      }

      return result;
    case 0x14u:
      if (a2 <= 1310722)
      {
        if (a2 == 1310720)
        {
          goto LABEL_347;
        }

        if (a2 != 1310721)
        {
          v13 = 1310722;
          goto LABEL_297;
        }

        goto LABEL_275;
      }

      switch(a2)
      {
        case 1310723:
          goto LABEL_289;
        case 1310724:
          *(v7 + 32) = a3;
          break;
        case 1310725:
          goto LABEL_231;
      }

      return result;
    case 0x15u:
      if (a2 > 1376258)
      {
        switch(a2)
        {
          case 1376259:
LABEL_310:
            *(v7 + 28) = a3;
            break;
          case 1376260:
LABEL_311:
            *(v7 + 32) = a3;
            break;
          case 1376261:
LABEL_231:
            *(v7 + 36) = a3;
            break;
        }

        return result;
      }

      switch(a2)
      {
        case 1376256:
          goto LABEL_347;
        case 1376257:
          goto LABEL_275;
        case 1376258:
          goto LABEL_298;
      }

      return result;
    case 0x17u:
      if (a2 <= 1507330)
      {
        if (a2 == 1507328)
        {
          goto LABEL_289;
        }

        if (a2 != 1507329)
        {
          v10 = 1507330;
          goto LABEL_265;
        }

        goto LABEL_269;
      }

      if (a2 <= 1507332)
      {
        if (a2 == 1507331)
        {
          goto LABEL_347;
        }

        v11 = 1507332;
        goto LABEL_274;
      }

      if (a2 == 1507333)
      {
        goto LABEL_301;
      }

      v13 = 1507334;
LABEL_297:
      if (a2 == v13)
      {
LABEL_298:
        v20 = a3 << 16;
        if (a3 == 0x80000000)
        {
          v20 = 0x80000000;
        }

LABEL_300:
        *(v7 + 24) = v20;
      }

      return result;
    case 0x18u:
      if (a2 == 1572864)
      {
        goto LABEL_140;
      }

      if (a2 == 1572865)
      {
        *(v7 + 8) = *(v7 + 8) & 0x7FFF | ((a3 != 0) << 15);
      }

      return result;
    case 0x19u:
      switch(a2)
      {
        case 1638402:
          goto LABEL_310;
        case 1638401:
          goto LABEL_218;
        case 1638400:
          goto LABEL_347;
      }

      return result;
    case 0x1Au:
      if (a2 == 1703938)
      {
        goto LABEL_247;
      }

      if (a2 == 1703937)
      {
        goto LABEL_282;
      }

      if (a2 != 1703936)
      {
        return result;
      }

      goto LABEL_278;
    case 0x1Bu:
      if (a2 <= 1769474)
      {
        if (a2 == 1769472)
        {
          goto LABEL_289;
        }

        if (a2 != 1769473)
        {
          v10 = 1769474;
          goto LABEL_265;
        }

        goto LABEL_269;
      }

      if (a2 == 1769477)
      {
        goto LABEL_301;
      }

      if (a2 != 1769476)
      {
        v24 = 1769475;
        goto LABEL_241;
      }

      goto LABEL_275;
    case 0x1Cu:
      if (a2 <= 1835010)
      {
        if (a2 == 1835008)
        {
LABEL_289:
          *(v7 + 28) = a3;
        }

        else if (a2 == 1835009)
        {
LABEL_269:
          *(v7 + 32) = a3;
        }

        else
        {
          v10 = 1835010;
LABEL_265:
          if (a2 == v10)
          {
LABEL_266:
            v29 = a3 << 16;
            if (a3 == 0x80000000)
            {
              v29 = 0x80000000;
            }

            *(v7 + 36) = v29;
          }
        }

        return result;
      }

      if (a2 == 1835013)
      {
LABEL_301:
        *(v7 + 34) = a3;
        return result;
      }

      if (a2 == 1835012)
      {
        goto LABEL_275;
      }

      v24 = 1835011;
LABEL_241:
      if (a2 != v24)
      {
        return result;
      }

      goto LABEL_347;
    case 0x1Du:
      v11 = 1900545;
      if (a2 > 1900545)
      {
        switch(a2)
        {
          case 1900546:
            *(v7 + 24) = a3;
            break;
          case 1900547:
            *(v7 + 26) = a3;
            break;
          case 1900548:
            *(v7 + 32) = a3;
            break;
        }

        return result;
      }

      if (a2 == 1900544)
      {
        goto LABEL_278;
      }

      goto LABEL_274;
    case 0x1Eu:
      v11 = 1966081;
      if (a2 > 1966081)
      {
        if (a2 == 1966082)
        {
LABEL_247:
          *(v7 + 24) = a3;
        }

        else if (a2 == 1966083 && *(v7 + 24) >= 8u)
        {
          *(v7 + 28) = a3;
        }

        return result;
      }

      if (a2 == 1966080)
      {
        goto LABEL_278;
      }

LABEL_274:
      if (a2 == v11)
      {
        goto LABEL_275;
      }

      return result;
    case 0x1Fu:
      if (a2 == 2031617)
      {
        goto LABEL_334;
      }

      if (a2 != 2031616)
      {
        return result;
      }

      goto LABEL_347;
    case 0x20u:
      if (a2 > 2097153)
      {
        if (a2 == 2097154)
        {
LABEL_218:
          *(v7 + 24) = a3;
        }

        else if (a2 == 2097155)
        {
LABEL_215:
          v28 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v28 = 0x80000000;
          }

          *(v7 + 28) = v28;
        }

        return result;
      }

      if (a2 == 0x200000)
      {
        goto LABEL_278;
      }

      if (a2 != 2097153)
      {
        return result;
      }

      goto LABEL_275;
    case 0x21u:
      if (a2 == 2162689)
      {
        goto LABEL_275;
      }

      if (a2 != 2162688)
      {
        return result;
      }

      goto LABEL_278;
    case 0x22u:
      if (a2 == 2228225)
      {
        goto LABEL_275;
      }

      if (a2 != 2228224)
      {
        return result;
      }

      goto LABEL_278;
    case 0x23u:
      switch(a2)
      {
        case 2293760:
          goto LABEL_278;
        case 2293761:
          goto LABEL_275;
        case 2293762:
          goto LABEL_298;
        case 2293763:
          goto LABEL_215;
        case 2293764:
          goto LABEL_37;
        case 2293765:
          v45 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v45 = 0x80000000;
          }

          *(v7 + 44) = v45;
          return result;
        case 2293766:
          v48 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v48 = 0x80000000;
          }

          *(v7 + 48) = v48;
          return result;
        case 2293767:
          goto LABEL_266;
        case 2293768:
          goto LABEL_359;
        case 2293769:
          v40 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v40 = 0x80000000;
          }

          *(v7 + 68) = v40;
          return result;
        case 2293770:
          v49 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v49 = 0x80000000;
          }

          *(v7 + 76) = v49;
          return result;
        case 2293771:
          v38 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v38 = 0x80000000;
          }

          *(v7 + 72) = v38;
          return result;
        case 2293772:
          v39 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v39 = 0x80000000;
          }

          *(v7 + 80) = v39;
          return result;
        case 2293773:
          v47 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v47 = 0x80000000;
          }

          *(v7 + 52) = v47;
          return result;
        case 2293774:
          v37 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v37 = 0x80000000;
          }

          *(v7 + 56) = v37;
          return result;
        case 2293775:
          v42 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v42 = 0x80000000;
          }

          *(v7 + 60) = v42;
          return result;
        case 2293776:
          v36 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v36 = 0x80000000;
          }

          *(v7 + 64) = v36;
          return result;
        case 2293777:
          v43 = *(v7 + 84) & 0xFE;
          if (a3)
          {
            ++v43;
          }

          goto LABEL_447;
        case 2293778:
          v43 = *(v7 + 84) & 0xFD | (2 * (a3 != 0));
LABEL_447:
          *(v7 + 84) = v43;
          break;
        case 2293779:
          v51 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v51 = 0x80000000;
          }

          *(v7 + 88) = v51;
          break;
        case 2293780:
          v44 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v44 = 0x80000000;
          }

          *(v7 + 92) = v44;
          break;
        case 2293781:
          v46 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v46 = 0x80000000;
          }

          *(v7 + 96) = v46;
          break;
        case 2293782:
          v50 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v50 = 0x80000000;
          }

          *(v7 + 100) = v50;
          break;
        case 2293783:
          v52 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v52 = 0x80000000;
          }

          *(v7 + 104) = v52;
          break;
        case 2293784:
          v41 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v41 = 0x80000000;
          }

          *(v7 + 108) = v41;
          break;
        default:
          return result;
      }

      return result;
    case 0x24u:
      if (a2 == 2359297)
      {
        goto LABEL_334;
      }

      if (a2 != 2359296)
      {
        return result;
      }

      goto LABEL_347;
    case 0x25u:
      switch(a2)
      {
        case 2424834:
          *(v7 + 20) = a3 != 0;
          return result;
        case 2424833:
          goto LABEL_338;
        case 2424832:
          goto LABEL_339;
      }

      return result;
    case 0x26u:
      switch(a2)
      {
        case 2490370:
          *(v7 + 24) = a3;
          break;
        case 2490369:
LABEL_275:
          v30 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v30 = 0x80000000;
          }

          *(v7 + 20) = v30;
          break;
        case 2490368:
LABEL_347:
          v31 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v31 = 0x80000000;
          }

          *(v7 + 16) = v31;
          break;
      }

      return result;
    case 0x27u:
      if ((a2 - 2555905) > 1)
      {
        return result;
      }

      v19 = *(v7 + 16);
      if (v19 != 1)
      {
        if (v19)
        {
          if (a2 != 2555905 || v19 != 2)
          {
            return result;
          }
        }

        else if (a2 != 2555905)
        {
          return result;
        }

LABEL_356:
        *(v7 + 20) = a3;
        return result;
      }

      if (a2 == 2555906)
      {
LABEL_351:
        v32 = a3 << 16;
        if (a3 == 0x80000000)
        {
          v32 = 0x80000000;
        }

        *(v7 + 20) = v32;
      }

      return result;
    case 0x28u:
      switch(a2)
      {
        case 2621440:
          *(v7 + 64) = a3;
          break;
        case 2621441:
          *(v7 + 66) = a3;
          break;
        case 2621442:
          goto LABEL_82;
        case 2621443:
          goto LABEL_272;
        case 2621444:
          goto LABEL_319;
        case 2621445:
          goto LABEL_310;
        case 2621446:
          goto LABEL_311;
        case 2621447:
          goto LABEL_231;
        case 2621448:
          *(v7 + 44) = a3;
          break;
        case 2621449:
LABEL_373:
          *(v7 + 48) = a3;
          break;
        case 2621450:
          *(v7 + 56) = a3;
          break;
        case 2621451:
          *(v7 + 26) = a3;
          break;
        case 2621452:
LABEL_374:
          *(v7 + 40) = a3;
          break;
        default:
          return result;
      }

      return result;
    case 0x29u:
      if (a2 <= 2686978)
      {
        if (a2 == 2686976)
        {
LABEL_278:
          *(v7 + 16) = a3;
          return result;
        }

        if (a2 == 2686977)
        {
LABEL_282:
          *(v7 + 20) = a3;
          return result;
        }

        if (a2 != 2686978)
        {
          return result;
        }

        goto LABEL_251;
      }

      if (a2 <= 2686980)
      {
        if (a2 == 2686979)
        {
          goto LABEL_235;
        }

LABEL_327:
        result = a3;
        *(v7 + 40) = a3;
        return result;
      }

      if (a2 == 2686981)
      {
        goto LABEL_326;
      }

      if (a2 != 2686982)
      {
        return result;
      }

      goto LABEL_317;
    case 0x2Au:
      if (a2 > 2752516)
      {
        if (a2 <= 2752518)
        {
          if (a2 == 2752517)
          {
LABEL_371:
            *(v7 + 44) = a3;
          }

          else
          {
            v27 = 2752518;
LABEL_325:
            if (a2 == v27)
            {
LABEL_326:
              result = a3;
              *(v7 + 48) = a3;
            }
          }
        }

        else if (a2 == 2752519)
        {
LABEL_317:
          result = a3;
          *(v7 + 56) = a3;
        }

        else if (a2 == 2752520)
        {
LABEL_335:
          result = a3;
          *(v7 + 64) = a3;
        }

        else
        {
          v26 = 2752521;
LABEL_315:
          if (a2 == v26)
          {
LABEL_316:
            result = a3;
            *(v7 + 72) = a3;
          }
        }
      }

      else if (a2 <= 2752513)
      {
        if (a2 == 2752512)
        {
LABEL_339:
          *(v7 + 16) = a3;
        }

        else if (a2 == 2752513)
        {
LABEL_338:
          *(v7 + 18) = a3;
        }
      }

      else if (a2 == 2752514)
      {
LABEL_251:
        result = a3;
        *(v7 + 24) = a3;
      }

      else if (a2 == 2752515)
      {
LABEL_235:
        result = a3;
        *(v7 + 32) = a3;
      }

      else
      {
        *(v7 + 40) = a3 != 0;
      }

      return result;
    case 0x2Bu:
      v14 = 2818049;
      if (a2 > 2818049)
      {
        if (a2 == 2818050)
        {
          *(v7 + 32) = a3;
        }

        else
        {
          v25 = 2818051;
LABEL_207:
          if (a2 == v25)
          {
            *(v7 + 36) = a3;
          }
        }
      }

      else if (a2 == 2818048)
      {
LABEL_140:
        *(v7 + 16) = a3;
      }

      else
      {
LABEL_154:
        if (a2 == v14)
        {
          result = a3;
          *(v7 + 24) = a3;
        }
      }

      return result;
    default:
      return result;
  }
}

unint64_t IOHIDEventGetIntegerMultiple(unint64_t result, int *a2, unint64_t *a3, uint64_t a4)
{
  if (a4 >= 1)
  {
    v4 = a4;
    v7 = result;
    do
    {
      v8 = *a2++;
      result = IOHIDEventGetIntegerValueWithOptions(v7, v8, 0);
      *a3++ = result;
      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t IOHIDEventGetIntegerMultipleWithOptions(unint64_t result, int *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (a4 >= 1)
  {
    v6 = a4;
    v9 = result;
    do
    {
      v10 = *a2++;
      result = IOHIDEventGetIntegerValueWithOptions(v9, v10, a5);
      *a3++ = result;
      --v6;
    }

    while (v6);
  }

  return result;
}

void IOHIDEventGetFloatMultiple(const __CFArray *a1, int *a2, __n64 *a3, uint64_t a4)
{
  if (a4 >= 1)
  {
    v4 = a4;
    do
    {
      v8 = *a2++;
      a3->n64_u64[0] = IOHIDEventGetFloatValueWithOptions(a1, v8, 0).n64_u64[0];
      ++a3;
      --v4;
    }

    while (v4);
  }
}

void IOHIDEventGetFloatMultipleWithOptions(const __CFArray *a1, int *a2, __n64 *a3, uint64_t a4, uint64_t a5)
{
  if (a4 >= 1)
  {
    v6 = a4;
    do
    {
      v10 = *a2++;
      a3->n64_u64[0] = IOHIDEventGetFloatValueWithOptions(a1, v10, a5).n64_u64[0];
      ++a3;
      --v6;
    }

    while (v6);
  }
}

unint64_t IOHIDEventGetUInt64Multiple(unint64_t result, int *a2, unint64_t *a3, uint64_t a4)
{
  if (a4 >= 1)
  {
    v4 = a4;
    v7 = result;
    do
    {
      v8 = *a2++;
      result = IOHIDEventGetUInt64ValueWithOptions(v7, v8, 0);
      *a3++ = result;
      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t IOHIDEventGetUInt64MultipleWithOptions(unint64_t result, int *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (a4 >= 1)
  {
    v6 = a4;
    v9 = result;
    do
    {
      v10 = *a2++;
      result = IOHIDEventGetUInt64ValueWithOptions(v9, v10, a5);
      *a3++ = result;
      --v6;
    }

    while (v6);
  }

  return result;
}

void IOHIDEventSetIntegerMultiple(const __CFArray *a1, int *a2, uint64_t *a3, uint64_t a4)
{
  if (a4 >= 1)
  {
    v4 = a4;
    do
    {
      v9 = *a2++;
      v8 = v9;
      v10 = *a3++;
      IOHIDEventSetIntegerValueWithOptions(a1, v8, v10, 0);
      --v4;
    }

    while (v4);
  }
}

void IOHIDEventSetIntegerMultipleWithOptions(const __CFArray *a1, int *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (a4 >= 1)
  {
    v6 = a4;
    do
    {
      v11 = *a2++;
      v10 = v11;
      v12 = *a3++;
      IOHIDEventSetIntegerValueWithOptions(a1, v10, v12, a5);
      --v6;
    }

    while (v6);
  }
}

const __CFArray *IOHIDEventSetFloatMultiple(const __CFArray *result, int *a2, double *a3, uint64_t a4)
{
  if (a4 >= 1)
  {
    v4 = a4;
    v7 = result;
    do
    {
      v9 = *a2++;
      v8 = v9;
      v10 = *a3++;
      result = IOHIDEventSetFloatValueWithOptions(v7, v8, 0, v10);
      --v4;
    }

    while (v4);
  }

  return result;
}

const __CFArray *IOHIDEventSetFloatMultipleWithOptions(const __CFArray *result, int *a2, double *a3, uint64_t a4, uint64_t a5)
{
  if (a4 >= 1)
  {
    v6 = a4;
    v9 = result;
    do
    {
      v11 = *a2++;
      v10 = v11;
      v12 = *a3++;
      result = IOHIDEventSetFloatValueWithOptions(v9, v10, a5, v12);
      --v6;
    }

    while (v6);
  }

  return result;
}

const __CFArray *IOHIDEventSetDoubleMultiple(const __CFArray *result, int *a2, double *a3, uint64_t a4)
{
  if (a4 >= 1)
  {
    v4 = a4;
    v7 = result;
    do
    {
      v9 = *a2++;
      v8 = v9;
      v10 = *a3++;
      result = IOHIDEventSetDoubleValueWithOptions(v7, v8, 0, v10);
      --v4;
    }

    while (v4);
  }

  return result;
}

const __CFArray *IOHIDEventSetDoubleMultipleWithOptions(const __CFArray *result, int *a2, double *a3, uint64_t a4, uint64_t a5)
{
  if (a4 >= 1)
  {
    v6 = a4;
    v9 = result;
    do
    {
      v11 = *a2++;
      v10 = v11;
      v12 = *a3++;
      result = IOHIDEventSetDoubleValueWithOptions(v9, v10, a5, v12);
      --v6;
    }

    while (v6);
  }

  return result;
}

void IOHIDEventSetUInt64Multiple(const __CFArray *a1, int *a2, unint64_t *a3, uint64_t a4)
{
  if (a4 >= 1)
  {
    v4 = a4;
    do
    {
      v9 = *a2++;
      v8 = v9;
      v10 = *a3++;
      IOHIDEventSetUInt64ValueWithOptions(a1, v8, v10, 0);
      --v4;
    }

    while (v4);
  }
}

void IOHIDEventSetUInt64MultipleWithOptions(const __CFArray *a1, int *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (a4 >= 1)
  {
    v6 = a4;
    do
    {
      v11 = *a2++;
      v10 = v11;
      v12 = *a3++;
      IOHIDEventSetUInt64ValueWithOptions(a1, v10, v12, a5);
      --v6;
    }

    while (v6);
  }
}

uint64_t __IOHIDEventFixTypeEventMask(void *a1)
{
  a1[3] = 1 << *(a1[12] + 4);
  result = a1[9];
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v3 = result;
      for (i = 0; i != v3; ++i)
      {
        result = CFArrayGetValueAtIndex(a1[9], i);
        if (result)
        {
          v5 = result;
          result = __IOHIDEventFixTypeEventMask();
          a1[3] |= *(v5 + 24);
        }
      }
    }
  }

  return result;
}

void *IOHIDEventGetAttributeData(uint64_t a1, void *__dst, int64_t a3)
{
  if (*(a1 + 88) < a3)
  {
    a3 = *(a1 + 88);
  }

  return memmove(__dst, *(a1 + 40), a3);
}

void __IOHIDEventTypeDescriptorVendorDefined(uint64_t a1, CFMutableStringRef theString, int a3)
{
  v6 = *(a1 + 96);
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "UsagePage:", *(v6 + 16));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "Usage:", *(v6 + 18));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "Version:", *(v6 + 20));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "DataLength:", *(v6 + 24));
  if (__PAIR64__(*(v6 + 18), *(v6 + 16)) == 0x26FFFFFF00)
  {
    TimeStamp = IOHIDEventGetTimeStamp(a1);
    v8 = *(v6 + 28);
    if (v8)
    {
      v9 = _IOHIDGetTimestampDelta(v8, TimeStamp, 0x3E8u);
    }

    else
    {
      v9 = 0;
    }

    v10 = *(v6 + 36);
    if (v10)
    {
      v11 = _IOHIDGetTimestampDelta(v10, TimeStamp, 0x3E8u);
    }

    else
    {
      v11 = 0;
    }

    v12 = *(v6 + 44);
    if (v12)
    {
      v13 = _IOHIDGetTimestampDelta(v12, TimeStamp, 0x3E8u);
    }

    else
    {
      v13 = 0;
    }

    v14 = *(v6 + 52);
    if (v14)
    {
      v15 = _IOHIDGetTimestampDelta(v14, TimeStamp, 0x3E8u);
    }

    else
    {
      v15 = 0;
    }

    v16 = *(v6 + 60);
    if (v16)
    {
      v16 = _IOHIDGetTimestampDelta(v16, TimeStamp, 0x3E8u);
    }

    _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %-8llu %-8llu %-8llu %-8llu %-8llu\n", "Dispatch Latency:", v9, v11, v13, v15, v16);
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s ", "Data:");
  if (*(v6 + 24))
  {
    v17 = 0;
    do
    {
      _IOHIDStringAppendIndendationAndFormat(theString, 0, @"%02x ", *(v6 + 28 + v17++));
    }

    while (v17 < *(v6 + 24));
  }

  _IOHIDStringAppendIndendationAndFormat(theString, 0, @"\n");
}

void __IOHIDEventTypeDescriptorButton(uint64_t a1, CFMutableStringRef theString, int a3)
{
  v5 = *(a1 + 96);
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s 0x%08x\n", "Mask:", *(v5 + 16));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "Number:", *(v5 + 24));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "State:", *(v5 + 28));
  v6 = *(v5 + 20);
  v7 = vcvtd_n_f64_s32(v6, 0x10uLL);
  if (v6 == 0x80000000)
  {
    v7 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Pressure:", *&v7);
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "ClickCount:", *(v5 + 25));
}

void __IOHIDEventTypeDescriptorKeyboard(uint64_t a1, CFMutableStringRef theString, int a3)
{
  v5 = *(a1 + 96);
  v6 = *(v5 + 8);
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "UsagePage:", *(v5 + 16));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "Usage:", *(v5 + 18));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "Down:", *(v5 + 20));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "PressCount:", *(v5 + 28));
  if (*(v5 + 24))
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %s\n", "LongPress:", v7);
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "ClickSpeed:", (*(v5 + 24) >> 1) & 3);
  v8 = "begin";
  v9 = "";
  if ((v6 & 0x1000000) == 0)
  {
    v8 = "";
  }

  if ((v6 & 0x4000000) != 0)
  {
    v9 = "ended";
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %s%s\n", "Phase:", v8, v9);
  v10 = *(v5 + 24);
  v11 = (v10 >> 9) & 3;
  if (v11)
  {
    v12 = "Off";
    if (v11 == 1)
    {
      v12 = "On";
    }

    _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %s (%d)\n", "Sticky Key Toggle:", v12, v11);
    v10 = *(v5 + 24);
  }

  v13 = (v10 >> 6) & 7;
  if (v13)
  {
    v14 = "Down";
    v15 = "Locked";
    if (v13 == 3)
    {
      v15 = "Up";
    }

    if (v13 != 1)
    {
      v14 = v15;
    }

    _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %s (%d)\n", "Sticky Key Phase:", v14, v13);
  }
}

void __IOHIDEventTypeDescriptorAxis(uint64_t a1, CFMutableStringRef theString, int a3)
{
  v5 = *(a1 + 96);
  v6 = v5[4];
  v7 = vcvtd_n_f64_s32(v6, 0x10uLL);
  if (v6 == 0x80000000)
  {
    v7 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "X:", *&v7);
  v8 = v5[5];
  v9 = vcvtd_n_f64_s32(v8, 0x10uLL);
  if (v8 == 0x80000000)
  {
    v9 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Y:", *&v9);
  v10 = v5[6];
  v11 = vcvtd_n_f64_s32(v10, 0x10uLL);
  if (v10 == 0x80000000)
  {
    v11 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Z:", *&v11);
}

void __IOHIDEventTypeDescriptorScroll(uint64_t a1, __CFString *a2, int a3)
{
  __IOHIDEventTypeDescriptorAxis(a1, a2, a3);
  v6 = *(*(a1 + 96) + 8);
  v7 = HIBYTE(v6);
  if (v7)
  {
    _IOHIDStringAppendIndendationAndFormat(a2, a3, @"%-20.20s 0x%x\n", "phase:", v7);
    v6 = *(*(a1 + 96) + 8);
  }

  v8 = (v6 >> 6) & 0x18 | (v6 >> 28) & 7;
  if (v8)
  {
    _IOHIDStringAppendIndendationAndFormat(a2, a3, @"%-20.20s 0x%x\n", "momentum:", v8);
  }
}

void __IOHIDEventTypeDescriptorOrientation(uint64_t a1, CFMutableStringRef theString, int a3)
{
  v5 = *(a1 + 96);
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "Orientation type:", v5[8]);
  v6 = v5[8];
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      if (v6 != 3)
      {
        return;
      }

      v7 = v5[4];
      v8 = vcvtd_n_f64_s32(v7, 0x10uLL);
      if (v7 == 0x80000000)
      {
        v8 = NAN;
      }

      _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "W:", *&v8);
      v9 = v5[5];
      v10 = vcvtd_n_f64_s32(v9, 0x10uLL);
      if (v9 == 0x80000000)
      {
        v10 = NAN;
      }

      _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "X:", *&v10);
      v11 = v5[6];
      v12 = vcvtd_n_f64_s32(v11, 0x10uLL);
      if (v11 == 0x80000000)
      {
        v12 = NAN;
      }

      _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Y:", *&v12);
      v13 = v5[7];
      goto LABEL_19;
    }
  }

  else if (v6)
  {
    if (v6 == 1)
    {
      _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "Orientation usage:", v5[4]);
    }

    return;
  }

  v14 = v5[4];
  v15 = vcvtd_n_f64_s32(v14, 0x10uLL);
  if (v14 == 0x80000000)
  {
    v15 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "X:", *&v15);
  v16 = v5[5];
  v17 = vcvtd_n_f64_s32(v16, 0x10uLL);
  if (v16 == 0x80000000)
  {
    v17 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Y:", *&v17);
  v13 = v5[6];
LABEL_19:
  v18 = vcvtd_n_f64_s32(v13, 0x10uLL);
  if (v13 == 0x80000000)
  {
    v18 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Z:", *&v18);
}

void __IOHIDEventTypeDescriptorAmbientLightSensor(uint64_t a1, CFMutableStringRef theString, int a3)
{
  v5 = *(a1 + 96);
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "Level:", *(v5 + 16));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "CH0:", *(v5 + 20));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "CH1:", *(v5 + 24));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "CH2:", *(v5 + 28));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "CH3:", *(v5 + 32));
  if (*(v5 + 37) == 1)
  {
    v6 = "XYZ";
  }

  else
  {
    v6 = "Undefined";
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %s\n", "ColorSpace:", v6);
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "ColorComponent0:", *(v5 + 40));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "ColorComponent1:", *(v5 + 48));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "ColorComponent2:", *(v5 + 56));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "BrightnessChanged:", *(v5 + 36));
}

void __IOHIDEventTypeDescriptorMotion(uint64_t a1, CFMutableStringRef theString, int a3)
{
  v6 = *(a1 + 96);
  v7 = *(v6 + 28);
  if (v7 > 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_1E74A84A8[v7];
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %s\n", "Type:", v8);
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "Sequence:", *(v6 + 36));

  __IOHIDEventTypeDescriptorAxis(a1, theString, a3);
}

void __IOHIDEventTypeDescriptorProximity(uint64_t a1, CFMutableStringRef theString, int a3)
{
  v5 = *(a1 + 96);
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s 0x%08x\n", "Mask:", *(v5 + 16));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %u\n", "Type:", *(v5 + 18));
  if (*(v5 + 18))
  {
    if (*(v5 + 18) != 1)
    {
      return;
    }

    v6 = "Probability:";
  }

  else
  {
    v6 = "Level:";
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", v6, *(v5 + 20));
}

void __IOHIDEventTypeDescriptorTemperature(uint64_t a1, CFMutableStringRef theString, int a3)
{
  v3 = *(*(a1 + 96) + 16);
  v4 = vcvtd_n_f64_s32(v3, 0x10uLL);
  if (v3 == 0x80000000)
  {
    v4 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Level:", *&v4);
}

void __IOHIDEventTypeDescriptorSwipe(uint64_t a1, CFMutableStringRef theString, int a3)
{
  v6 = *(a1 + 96);
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s 0x%08x\n", "Mask:", *(v6 + 28));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s 0x%08x\n", "Motion:", *(v6 + 32));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s 0x%08x\n", "Flavor:", *(v6 + 34));
  v7 = *(v6 + 36);
  v8 = vcvtd_n_f64_s32(v7, 0x10uLL);
  if (v7 == 0x80000000)
  {
    v8 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Progress:", *&v8);

  __IOHIDEventTypeDescriptorAxis(a1, theString, a3);
}

void __IOHIDEventTypeDescriptorProgress(uint64_t a1, CFMutableStringRef theString, int a3)
{
  v5 = *(a1 + 96);
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "Type:", *(v5 + 16));
  v6 = *(v5 + 20);
  v7 = vcvtd_n_f64_s32(v6, 0x10uLL);
  if (v6 == 0x80000000)
  {
    v7 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Level:", *&v7);
}

void __IOHIDEventTypeDescriptorPower(uint64_t a1, CFMutableStringRef theString, int a3)
{
  v5 = *(a1 + 96);
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "Type:", v5[6]);
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "SubType:", v5[7]);
  v6 = v5[4];
  v7 = vcvtd_n_f64_s32(v6, 0x10uLL);
  if (v6 == 0x80000000)
  {
    v7 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Level:", *&v7);
}

void __IOHIDEventTypeDescriptorBiometric(uint64_t a1, CFMutableStringRef theString, int a3)
{
  v5 = *(a1 + 96);
  v6 = *(v5 + 8);
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "EventType:", *(v5 + 16));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "UsagePage:", *(v5 + 24));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "Usage:", *(v5 + 26));
  v7 = *(v5 + 20);
  v8 = vcvtd_n_f64_s32(v7, 0x10uLL);
  if (v7 == 0x80000000)
  {
    v8 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Level:", *&v8);
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "Tap Count:", *(v5 + 32));
  v9 = "begin";
  v10 = "";
  if ((v6 & 0x1000000) == 0)
  {
    v9 = "";
  }

  if ((v6 & 0x4000000) != 0)
  {
    v10 = "ended";
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %s%s\n", "Phase:", v9, v10);
}

void __IOHIDEventTypeDescriptorUnicode(uint64_t a1, CFMutableStringRef theString, int a3)
{
  v5 = *(a1 + 96);
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s ", "Encoding:");
  v6 = v5[4];
  if (v6 > 4)
  {
    v7 = "UNKNOWN";
  }

  else
  {
    v7 = off_1E74A84C0[v6];
  }

  _IOHIDStringAppendIndendationAndFormat(theString, 0, @"%s\n", v7);
  v8 = v5[5];
  v9 = vcvtd_n_f64_s32(v8, 0x10uLL);
  if (v8 == 0x80000000)
  {
    v9 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Quality:", *&v9);
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "DataLength:", v5[6]);
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s ", "Data:");
  if (v5[6])
  {
    v10 = 0;
    do
    {
      _IOHIDStringAppendIndendationAndFormat(theString, 0, @"%02x ", *(v5 + v10++ + 28));
    }

    while (v10 < v5[6]);
  }

  _IOHIDStringAppendIndendationAndFormat(theString, 0, @"\n");
}

void __IOHIDEventTypeDescriptorAtmosphericPressure(uint64_t a1, CFMutableStringRef theString, int a3)
{
  v5 = *(a1 + 96);
  v6 = *(v5 + 16);
  v7 = vcvtd_n_f64_s32(v6, 0x10uLL);
  if (v6 == 0x80000000)
  {
    v7 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Level:", *&v7);
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "Sequence:", *(v5 + 20));
}

void __IOHIDEventTypeDescriptorForceEvent(uint64_t a1, CFMutableStringRef theString, int a3)
{
  v5 = *(a1 + 96);
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "Behavior:", v5[4]);
  v6 = v5[5];
  v7 = vcvtd_n_f64_s32(v6, 0x10uLL);
  if (v6 == 0x80000000)
  {
    v7 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Progress:", *&v7);
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "Stage:", v5[6]);
  v8 = v5[7];
  v9 = vcvtd_n_f64_s32(v8, 0x10uLL);
  if (v8 == 0x80000000)
  {
    v9 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "StageProgress:", *&v9);
}

void __IOHIDEventTypeDescriptorMotionActivity(uint64_t a1, CFMutableStringRef theString, int a3)
{
  v5 = *(a1 + 96);
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "Type:", *(v5 + 16));
  v6 = *(v5 + 20);
  v7 = vcvtd_n_f64_s32(v6, 0x10uLL);
  if (v6 == 0x80000000)
  {
    v7 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Confidence:", *&v7);
}

void __IOHIDEventTypeDescriptorMotionGesture(uint64_t a1, CFMutableStringRef theString, int a3)
{
  v5 = *(a1 + 96);
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "Type:", *(v5 + 16));
  v6 = *(v5 + 20);
  v7 = vcvtd_n_f64_s32(v6, 0x10uLL);
  if (v6 == 0x80000000)
  {
    v7 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Progress:", *&v7);
}

void __IOHIDEventTypeDescriptorGameController(uint64_t a1, CFMutableStringRef theString, int a3)
{
  v5 = *(a1 + 96);
  if (*(v5 + 16))
  {
    v6 = "Extended";
  }

  else
  {
    v6 = "Standard";
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %s\n", "Type:", v6);
  v7 = *(v5 + 20);
  v8 = vcvtd_n_f64_s32(v7, 0x10uLL);
  if (v7 == 0x80000000)
  {
    v8 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Direction Pad Up:", *&v8);
  v9 = *(v5 + 24);
  v10 = vcvtd_n_f64_s32(v9, 0x10uLL);
  if (v9 == 0x80000000)
  {
    v10 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Direction Pad Down:", *&v10);
  v11 = *(v5 + 28);
  v12 = vcvtd_n_f64_s32(v11, 0x10uLL);
  if (v11 == 0x80000000)
  {
    v12 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Direction Pad Left:", *&v12);
  v13 = *(v5 + 32);
  v14 = vcvtd_n_f64_s32(v13, 0x10uLL);
  if (v13 == 0x80000000)
  {
    v14 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Direction Pad Right:", *&v14);
  v15 = *(v5 + 36);
  v16 = vcvtd_n_f64_s32(v15, 0x10uLL);
  if (v15 == 0x80000000)
  {
    v16 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Face Button X:", *&v16);
  v17 = *(v5 + 40);
  v18 = vcvtd_n_f64_s32(v17, 0x10uLL);
  if (v17 == 0x80000000)
  {
    v18 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Face Button Y:", *&v18);
  v19 = *(v5 + 44);
  v20 = vcvtd_n_f64_s32(v19, 0x10uLL);
  if (v19 == 0x80000000)
  {
    v20 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Face Button A:", *&v20);
  v21 = *(v5 + 48);
  v22 = vcvtd_n_f64_s32(v21, 0x10uLL);
  if (v21 == 0x80000000)
  {
    v22 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Face Button B:", *&v22);
  v23 = *(v5 + 68);
  v24 = vcvtd_n_f64_s32(v23, 0x10uLL);
  if (v23 == 0x80000000)
  {
    v24 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Shoulder Button L1:", *&v24);
  v25 = *(v5 + 76);
  v26 = vcvtd_n_f64_s32(v25, 0x10uLL);
  if (v25 == 0x80000000)
  {
    v26 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Shoulder Button R1:", *&v26);
  v27 = *(v5 + 72);
  v28 = vcvtd_n_f64_s32(v27, 0x10uLL);
  if (v27 == 0x80000000)
  {
    v28 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Shoulder Button L2:", *&v28);
  v29 = *(v5 + 80);
  v30 = vcvtd_n_f64_s32(v29, 0x10uLL);
  if (v29 == 0x80000000)
  {
    v30 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Shoulder Button R2:", *&v30);
  v31 = *(v5 + 52);
  v32 = vcvtd_n_f64_s32(v31, 0x10uLL);
  if (v31 == 0x80000000)
  {
    v32 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Joystick Axis X:", *&v32);
  v33 = *(v5 + 56);
  v34 = vcvtd_n_f64_s32(v33, 0x10uLL);
  if (v33 == 0x80000000)
  {
    v34 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Joystick Axis Y:", *&v34);
  v35 = *(v5 + 60);
  v36 = vcvtd_n_f64_s32(v35, 0x10uLL);
  if (v35 == 0x80000000)
  {
    v36 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Joystick Axis Z:", *&v36);
  v37 = *(v5 + 64);
  v38 = vcvtd_n_f64_s32(v37, 0x10uLL);
  if (v37 == 0x80000000)
  {
    v38 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Joystick Axis Rz:", *&v38);
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-25.25s %d\n", "Thumbstick Button Left:", *(v5 + 84) & 1);
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-25.25s %d\n", "Thumbstick Button Right:", (*(v5 + 84) >> 1) & 1);
  v39 = *(v5 + 88);
  v40 = vcvtd_n_f64_s32(v39, 0x10uLL);
  if (v39 == 0x80000000)
  {
    v40 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-25.25s %f\n", "Extra Button L4:", *&v40);
  v41 = *(v5 + 92);
  v42 = vcvtd_n_f64_s32(v41, 0x10uLL);
  if (v41 == 0x80000000)
  {
    v42 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-25.25s %f\n", "Extra Button R4:", *&v42);
  v43 = *(v5 + 96);
  v44 = vcvtd_n_f64_s32(v43, 0x10uLL);
  if (v43 == 0x80000000)
  {
    v44 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-25.25s %f\n", "Bottom Button M1:", *&v44);
  v45 = *(v5 + 100);
  v46 = vcvtd_n_f64_s32(v45, 0x10uLL);
  if (v45 == 0x80000000)
  {
    v46 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-25.25s %f\n", "Bottom Button M2:", *&v46);
  v47 = *(v5 + 104);
  v48 = vcvtd_n_f64_s32(v47, 0x10uLL);
  if (v47 == 0x80000000)
  {
    v48 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-25.25s %f\n", "Bottom Button M3:", *&v48);
  v49 = *(v5 + 108);
  v50 = vcvtd_n_f64_s32(v49, 0x10uLL);
  if (v49 == 0x80000000)
  {
    v50 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-25.25s %f\n", "Bottom Button M4:", *&v50);
}

void __IOHIDEventTypeDescriptorHumidity(uint64_t a1, CFMutableStringRef theString, int a3)
{
  v5 = *(a1 + 96);
  v6 = *(v5 + 16);
  v7 = vcvtd_n_f64_s32(v6, 0x10uLL);
  if (v6 == 0x80000000)
  {
    v7 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "rh:", *&v7);
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "Sequence:", *(v5 + 20));
}

void __IOHIDEventTypeDescriptorCollection(uint64_t a1, CFMutableStringRef theString, int a3)
{
  v5 = *(a1 + 96);
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "UsagePage:", *(v5 + 16));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "Usage:", *(v5 + 18));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "Ungroup for legacy clients", *(v5 + 20));
}

void __IOHIDEventTypeDescriptorBrightness(uint64_t a1, CFMutableStringRef theString, int a3)
{
  v5 = *(a1 + 96);
  v6 = *(v5 + 16);
  v7 = vcvtd_n_f64_s32(v6, 0x10uLL);
  if (v6 == 0x80000000)
  {
    v7 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "CurrentBrightness:", *&v7);
  v8 = *(v5 + 20);
  v9 = vcvtd_n_f64_s32(v8, 0x10uLL);
  if (v8 == 0x80000000)
  {
    v9 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "TargetBrightness:", *&v9);
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %qd\n", "TransitionTime,us:", *(v5 + 24));
}

void __IOHIDEventTypeDescriptorGenericGesture(uint64_t a1, CFMutableStringRef theString, int a3)
{
  v6 = *(a1 + 96);
  v7 = *(v6 + 16);
  if (v7 > 4)
  {
    if (v7 > 6)
    {
      if (v7 == 7)
      {
        v10 = "DoubleSqueeze";
      }

      else
      {
        if (v7 != 8)
        {
          goto LABEL_33;
        }

        v10 = "HandFlick";
      }
    }

    else
    {
      if (v7 == 5)
      {
        _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %s\n", "GestureType:", "Squeeze");
        v11 = *(*(a1 + 96) + 8);
        if ((v11 & 0x1000000) == 0)
        {
          if ((v11 & 0x80000000) == 0)
          {
            if ((v11 & 0x2000000) == 0)
            {
              if ((v11 & 0x4000000) != 0)
              {
                goto LABEL_17;
              }

              goto LABEL_26;
            }

LABEL_35:
            v10 = "Changed";
            goto LABEL_36;
          }

LABEL_34:
          v10 = "MayBegin";
          goto LABEL_36;
        }

LABEL_32:
        v10 = "Begin";
        goto LABEL_36;
      }

      v10 = "LongSqueeze";
    }

    v13 = "GestureType:";
LABEL_37:
    _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %s\n", v13, v10);
    return;
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v12 = "HandTap";
      goto LABEL_29;
    }

    if (v7 != 4)
    {
      goto LABEL_33;
    }

    _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %s\n", "GestureType:", "HandTapHold");
    v11 = *(*(a1 + 96) + 8);
    if ((v11 & 0x1000000) == 0)
    {
      if ((v11 & 0x80000000) == 0)
      {
        if ((v11 & 0x2000000) == 0)
        {
          if ((v11 & 0x4000000) != 0)
          {
LABEL_17:
            v10 = "Ended";
LABEL_36:
            v13 = "Phase:";
            goto LABEL_37;
          }

LABEL_26:
          if ((v11 & 0x8000000) == 0)
          {
            return;
          }

          v10 = "Cancelled";
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (!v7)
  {
    v12 = "Tap";
LABEL_29:
    _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %s\n", "GestureType:", v12);
    _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "Count:", *(v6 + 20));
    return;
  }

  if (v7 != 1)
  {
LABEL_33:
    _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %s (%d)\n", "GestureType:", "Unknown", *(v6 + 16));
    return;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %s\n", "GestureType:", "Swipe");
  v8 = *(v6 + 20);
  v9 = vcvtd_n_f64_s32(v8, 0x10uLL);
  if (v8 == 0x80000000)
  {
    v9 = NAN;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Progress:", *&v9);
}

void __IOHIDEventTypeDescriptorForceStageEvent(uint64_t a1, CFMutableStringRef theString, int a3)
{
  v5 = *(a1 + 96);
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "Stage:", *(v5 + 16));
  v6 = *(v5 + 20);
  if (v6 <= 2)
  {
    _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s\n", off_1E74A84E8[v6]);
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "NextThreshold:", *(v5 + 24));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "PressedThreshold:", *(v5 + 32));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "ReleasedThreshold:", *(v5 + 40));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "NormalizedForce:", *(v5 + 48));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "NormalizedForceVelocity:", *(v5 + 56));
}

void __IOHIDEventTypeDescriptorTouchSensitiveButton(uint64_t a1, CFMutableStringRef theString, int a3)
{
  v5 = *(a1 + 96);
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %dx\n", "Usage:", *(v5 + 16));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "UsagePage:", *(v5 + 18));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "NormalizedPositionX:", *(v5 + 48));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "NormalizedPositionDeltaX:", *(v5 + 56));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "NormalizedPositionY:", *(v5 + 24));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "NormalizedPositionDeltaY:", *(v5 + 32));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "Touch:", *(v5 + 40));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "EventMask:", *(v5 + 44));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s ", "Events:");
  v6 = *(v5 + 44);
  if (v6)
  {
    _IOHIDStringAppendIndendationAndFormat(theString, 0, @"FastSwipe ");
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  _IOHIDStringAppendIndendationAndFormat(theString, 0, @"LowSNRSwipe ");
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  _IOHIDStringAppendIndendationAndFormat(theString, 0, @"LiftOffPredicted ");
  if ((*(v5 + 44) & 8) != 0)
  {
LABEL_5:
    _IOHIDStringAppendIndendationAndFormat(theString, 0, @"ClickDownPredicted ");
  }

LABEL_6:

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"\n");
}

void __IOHIDEventTypeDescriptorHeartRateEvent(uint64_t a1, CFMutableStringRef theString, int a3)
{
  v5 = *(a1 + 96);
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "Rate:", *(v5 + 16));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %f\n", "Confidence:", *(v5 + 24));
  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %d\n", "Generation:", *(v5 + 36));
  v6 = *(v5 + 32);
  if (v6 > 3)
  {
    v7 = "Invalid";
  }

  else
  {
    v7 = off_1E74A8500[v6];
  }

  _IOHIDStringAppendIndendationAndFormat(theString, a3, @"%-20.20s %s\n", "Location:", v7);
}

uint64_t initrosetta_convert_to_rosetta_absolute_time_0(uint64_t a1)
{
  v2 = RosettaLibrary_libLibrary_0;
  if (!RosettaLibrary_libLibrary_0)
  {
    v2 = dlopen("/usr/lib/libRosetta.dylib", 2);
    RosettaLibrary_libLibrary_0 = v2;
  }

  v3 = dlsym(v2, "rosetta_convert_to_rosetta_absolute_time");
  dynLinkrosetta_convert_to_rosetta_absolute_time_0[0] = v3;
  if (!v3)
  {
    return a1;
  }

  return (v3)(a1);
}

uint64_t initrosetta_convert_to_system_absolute_time_0(uint64_t a1)
{
  v2 = RosettaLibrary_libLibrary_0;
  if (!RosettaLibrary_libLibrary_0)
  {
    v2 = dlopen("/usr/lib/libRosetta.dylib", 2);
    RosettaLibrary_libLibrary_0 = v2;
  }

  v3 = dlsym(v2, "rosetta_convert_to_system_absolute_time");
  off_1ED446908 = v3;
  if (!v3)
  {
    return a1;
  }

  return (v3)(a1);
}

const __CFArray *OUTLINED_FUNCTION_21()
{

  return IOHIDEventGetEventWithOptions(v0, 17, 4026531840);
}

const __CFArray *OUTLINED_FUNCTION_22(const __CFArray *a1)
{

  return IOHIDEventGetEventWithOptions(a1, 4, 4026531840);
}

const __CFArray *OUTLINED_FUNCTION_23()
{

  return IOHIDEventGetEventWithOptions(v0, 17, 4026531840);
}

uint64_t IOHIDConnectionFilterGetTypeID()
{
  result = __kIOHIDConnectionFilterTypeID;
  if (!__kIOHIDConnectionFilterTypeID)
  {
    pthread_once(&__connectionFilterClientTypeInit, __IOHIDConnectionFilterRegister);
    return __kIOHIDConnectionFilterTypeID;
  }

  return result;
}

uint64_t __IOHIDConnectionFilterRegister()
{
  result = _CFRuntimeRegisterClass();
  __kIOHIDConnectionFilterTypeID = result;
  return result;
}

id IOHIDConnectionFilterFilterEvent(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3 && (v5 = *(a1 + 72)) != 0)
  {
    return [v3 v5];
  }

  else
  {
    return 0;
  }
}

id IOHIDConnectionFilterCopyProperty(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = [v3 v5];
  v7 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  return v7;
}

id IOHIDConnectionFilterSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4 && (v6 = *(a1 + 32)) != 0)
  {
    return [v4 v6];
  }

  else
  {
    return 0;
  }
}

id IOHIDConnectionFilterActivate(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      return [result v3];
    }
  }

  return result;
}

id IOHIDConnectionFilterCancel(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      return [result v3];
    }
  }

  return result;
}

id IOHIDConnectionFilterSetDispatchQueue(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 16);
  if (result)
  {
    v5 = *(a1 + 64);
    if (v5)
    {
      return [result v5];
    }
  }

  return result;
}

id IOHIDConnectionFilterSetCancelHandler(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 16);
  if (result)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      return [result v5];
    }
  }

  return result;
}

CFStringRef __IOHIDConnectionFilterCopyDebugDescription(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = CFCopyDescription(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = CFGetAllocator(a1);
  v5 = &stru_1F0B93200;
  if (v3)
  {
    v5 = v3;
  }

  v6 = CFStringCreateWithFormat(v4, 0, @"<IOHIDConnectionFilterRef:%@>", v5);
  if (v3)
  {
    CFRelease(v3);
  }

  return v6;
}

uint64_t IOHIDEventSystemGetTypeID()
{
  result = _MergedGlobals_2;
  if (!_MergedGlobals_2)
  {
    pthread_once(&__systemTypeInit, __IOHIDEventSystemRegister);
    return _MergedGlobals_2;
  }

  return result;
}

uint64_t __IOHIDEventSystemRegister()
{
  v8 = *MEMORY[0x1E69E9840];
  size = 4;
  v6 = 0;
  if (_os_feature_enabled_impl())
  {
    v0 = 0;
  }

  else
  {
    v1 = IORegistryEntryFromPath(0, "IODeviceTree:/product");
    v0 = v1;
    if (v1)
    {
      IORegistryEntryGetProperty(v1, "hid-workgroup-interval", &v6, &size);
      if (v6)
      {
        goto LABEL_6;
      }
    }
  }

  if (_os_feature_enabled_impl())
  {
LABEL_6:
    v2 = &kIOHIDServiceWorkgroupInterval;
    goto LABEL_8;
  }

  v2 = 0;
LABEL_8:
  kIOHIDServiceInterruptWorkloop = hid_workloop_create("IOHIDEvent Interrupt - Root", 63, 2, v2);
  qword_1ED446AC0 = hid_workloop_create("IOHIDService Enumeration - Root", 63, 2, 0);
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    memset(&v7, 0, sizeof(v7));
    if (hid_pthread_attr_init(&v7, 63, 2))
    {
      __IOHIDEventSystemRegister_cold_1();
    }

    kIOHIDServerConnectionRootQueue = hid_dispatch_pthread_root_queue_create("IOHIDEvent Server Connection - Root", &v7, 0, 2u);
    if (!kIOHIDServerConnectionRootQueue)
    {
      __IOHIDEventSystemRegister_cold_2();
    }

    pthread_attr_destroy(&v7);
  }

  v7.__sig = 0;
  mach_timebase_info(&v7);
  _IOHIDLoadBundles();
  result = _CFRuntimeRegisterClass();
  _MergedGlobals_2 = result;
  if (v0)
  {
    result = IOObjectRelease(v0);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void __IOHIDEventSystemServicePublished(void *a1, io_iterator_t iterator)
{
  v4 = IOIteratorNext(iterator);
  if (v4)
  {
    v5 = v4;
    Mutable = 0;
    v7 = MEMORY[0x1E695E9C0];
    do
    {
      v8 = CFGetAllocator(a1);
      v9 = _IOHIDServiceCreate(v8, v5);
      if (v9)
      {
        v10 = v9;
        if (Mutable || (v11 = CFGetAllocator(a1), (Mutable = CFArrayCreateMutable(v11, 0, v7)) != 0))
        {
          CFArrayAppendValue(Mutable, v10);
          if (a1[55])
          {
            if (!_IOHIDPlugInInstanceCacheIsEmpty())
            {
              v12 = a1[55];
              v13 = dispatch_time(0, 300000000000);
              dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0);
            }
          }
        }

        CFRelease(v10);
      }

      IOObjectRelease(v5);
      v5 = IOIteratorNext(iterator);
    }

    while (v5);
    if (Mutable)
    {
      v14 = _IOHIDLog();
      if (os_signpost_enabled(v14))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_197195000, v14, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOHIDEventSystemAddServices", &unk_19724ED59, buf, 2u);
      }

      __IOHIDEventSystemAddServices(a1, Mutable);
      v15 = _IOHIDLog();
      if (os_signpost_enabled(v15))
      {
        *v16 = 0;
        _os_signpost_emit_with_name_impl(&dword_197195000, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOHIDEventSystemAddServices", &unk_19724ED59, v16, 2u);
      }

      CFRelease(Mutable);
    }
  }
}

uint64_t IOHIDEventSystemSetCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_recursive_lock_lock_with_options();
  a1[13] = a3;
  a1[14] = a2;
  a1[15] = a4;

  return os_unfair_recursive_lock_unlock();
}

uint64_t IOHIDEventSystemRegisterPropertyChangedNotification(uint64_t a1, const void *a2, const void *a3)
{
  os_unfair_recursive_lock_lock_with_options();
  if (!*(a1 + 32))
  {
    *(a1 + 32) = a2;
    CFRetain(a2);
  }

  if (!*(a1 + 88))
  {
    if (a3)
    {
      v6 = _Block_copy(a3);
    }

    else
    {
      v6 = 0;
    }

    *(a1 + 88) = v6;
  }

  return os_unfair_recursive_lock_unlock();
}

uint64_t IOHIDEventSystemUnregisterPropertyChangedNotification(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    _Block_release(v3);
    *(a1 + 88) = 0;
  }

  return os_unfair_recursive_lock_unlock();
}

void IOHIDEventSystemClose(uint64_t a1)
{
  v2 = *(a1 + 152);
  v4 = *(a1 + 128);
  v3 = *(a1 + 136);
  v5 = _IOHIDLog();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_197195000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOHIDEventSystemClose", &unk_19724ED59, buf, 2u);
  }

  IONotificationPortSetDispatchQueue(*(a1 + 96), 0);
  IOHIDEventServerUnscheduleFromDispatchQueue(v2, v3);
  IOHIDSessionClose(v4, a1);
  os_unfair_recursive_lock_lock_with_options();
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  os_unfair_recursive_lock_unlock();
  v6 = _IOHIDLog();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_197195000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOHIDEventSystem - service queue termination", &unk_19724ED59, buf, 2u);
  }

  CFRetain(a1);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __IOHIDEventSystemClose_block_invoke;
  block[3] = &__block_descriptor_tmp_19_0;
  block[4] = a1;
  dispatch_async(v3, block);
  v7 = _IOHIDLog();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_197195000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOHIDEventSystem - enumeration queue termination", &unk_19724ED59, buf, 2u);
  }

  CFRetain(a1);
  v8 = *(a1 + 144);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __IOHIDEventSystemClose_block_invoke_20;
  v10[3] = &__block_descriptor_tmp_21_0;
  v10[4] = a1;
  dispatch_async(v8, v10);
  v9 = _IOHIDLog();
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_197195000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOHIDEventSystemClose", &unk_19724ED59, buf, 2u);
  }
}

void __IOHIDEventSystemClose_block_invoke(uint64_t a1)
{
  v2 = _IOHIDLogCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_197195000, v2, OS_LOG_TYPE_DEFAULT, "All actions on server queue completed.", buf, 2u);
  }

  v3 = _IOHIDLog();
  if (os_signpost_enabled(v3))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_197195000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOHIDEventSystem - service queue termination", &unk_19724ED59, v4, 2u);
  }

  CFRelease(*(a1 + 32));
}

void __IOHIDEventSystemClose_block_invoke_20(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ____IOHIDEventSystemInvalidateServiceRemovalNotifications_block_invoke;
  v6[3] = &__block_descriptor_tmp_63;
  v6[4] = v2;
  _IOHIDCFDictionaryApplyBlock(v3, v6);
  v4 = _IOHIDLogCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6[0]) = 0;
    _os_log_impl(&dword_197195000, v4, OS_LOG_TYPE_DEFAULT, "All actions on enumeration queue completed.", v6, 2u);
  }

  v5 = _IOHIDLog();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v6[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_197195000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOHIDEventSystem - enumeration queue termination", &unk_19724ED59, v6, 2u);
  }

  CFRelease(*(a1 + 32));
}

__CFArray *IOHIDEventSystemGetProperty(uint64_t a1, const void *a2)
{
  v2 = _IOHIDEventSystemCopyPropertyForConnection(a1, a2, *MEMORY[0x1E695E738]);

  return v2;
}

CFArrayRef IOHIDEventSystemCopyConnections(char *a1, unsigned int a2)
{
  os_unfair_recursive_lock_lock_with_options();
  if (a2 <= 2 && (v4 = &a1[8 * a2], (v5 = *(v4 + 7)) != 0) && (Count = CFSetGetCount(*(v4 + 7)), (v7 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL)) != 0))
  {
    v8 = v7;
    bzero(v7, 8 * Count);
    CFSetGetValues(v5, v8);
    v9 = CFGetAllocator(a1);
    v10 = CFArrayCreate(v9, v8, Count, MEMORY[0x1E695E9C0]);
    free(v8);
  }

  else
  {
    v10 = 0;
  }

  os_unfair_recursive_lock_unlock();
  return v10;
}

uint64_t IOHIDEventSystemRegisterConnectionAdditionCallback(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  os_unfair_recursive_lock_lock_with_options();
  v10 = (a1 + 24 * a2);
  v10[23] = a4;
  v10[24] = a3;
  v10[25] = a5;

  return os_unfair_recursive_lock_unlock();
}

uint64_t IOHIDEventSystemUnregisterConnectionAdditionCallback(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  os_unfair_recursive_lock_lock_with_options();
  v10 = (a1 + 24 * a2);
  if (v10[24] == a3 && v10[23] == a4 && v10[25] == a5)
  {
    v10[23] = 0;
    v10[24] = 0;
    v10[25] = 0;
  }

  return os_unfair_recursive_lock_unlock();
}

uint64_t IOHIDEventSystemRegisterConnectionRemovalCallback(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  os_unfair_recursive_lock_lock_with_options();
  v10 = (a1 + 24 * a2);
  v10[38] = a4;
  v10[39] = a3;
  v10[40] = a5;

  return os_unfair_recursive_lock_unlock();
}

uint64_t IOHIDEventSystemUnregisterConnectionRemovalCallback(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  os_unfair_recursive_lock_lock_with_options();
  v10 = (a1 + 24 * a2);
  if (v10[39] == a3 && v10[38] == a4 && v10[40] == a5)
  {
    v10[38] = 0;
    v10[39] = 0;
    v10[40] = 0;
  }

  return os_unfair_recursive_lock_unlock();
}

uint64_t IOHIDEventSystemCopyServices(CFDictionaryRef *a1, const __CFDictionary *a2)
{
  v3 = 0;
  __IOHIDEventSystemCopyMatchingServices(a1, a2, 0, 0, 0, 0, &v3);
  return v3;
}

void IOHIDEventSystemRegisterServicesCallback(CFDictionaryRef *a1, const __CFDictionary *a2, uint64_t a3, const void *a4, uint64_t a5)
{
  value = 0;
  __IOHIDEventSystemCopyMatchingServices(a1, a2, a3, a4, a5, &value, 0);
  if (value)
  {
    v10 = CFGetAllocator(a1);
    v11 = CFStringCreateWithFormat(v10, 0, @"%p%p%p%p", a2, a3, a4, a5);
    if (v11)
    {
      v12 = v11;
      os_unfair_recursive_lock_lock_with_options();
      CFDictionarySetValue(a1[22], v12, value);
      os_unfair_recursive_lock_unlock();
      CFRelease(v12);
    }

    CFRelease(value);
  }
}