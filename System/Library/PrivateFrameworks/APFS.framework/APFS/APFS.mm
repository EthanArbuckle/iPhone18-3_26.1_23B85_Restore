const char *get_apfs_io_object(const char *result)
{
  if (result)
  {
    v1 = result;
    if (!strncmp(result, "/dev/", 5uLL))
    {
      v2 = *(v1 + 5);
      v1 += 5;
      if (v2 == 114)
      {
        ++v1;
      }
    }

    v3 = *MEMORY[0x277CD28A0];
    v4 = IOBSDNameMatching(*MEMORY[0x277CD28A0], 0, v1);

    return IOServiceGetMatchingService(v3, v4);
  }

  return result;
}

const char *get_volume_io_object(const char *a1, _BYTE *a2)
{
  result = get_apfs_io_object(a1);
  object = result;
  if (result)
  {
    volume_io_object_from_snapshot = get_volume_io_object_from_snapshot(&object, a2);
    result = object;
    if (!volume_io_object_from_snapshot)
    {
      IOObjectRelease(object);
      return 0;
    }
  }

  return result;
}

uint64_t APFSVolumeRole(char *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  outputStructCnt = 2;
  if (!a1)
  {
    return 3758097090;
  }

  v21 = 0;
  bzero(&outputStruct, 0x978uLL);
  volume_io_object = get_volume_io_object(a1, 0);
  if (volume_io_object)
  {
    v7 = volume_io_object;
    CFProperty = IORegistryEntryCreateCFProperty(volume_io_object, @"RoleValue", *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      v9 = CFProperty;
      v10 = CFGetTypeID(CFProperty);
      if (v10 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        if (CFNumberGetValue(v9, kCFNumberSInt16Type, &valuePtr))
        {
          if (a2)
          {
            *a2 = valuePtr;
          }

          if (!a3 || *a3 == valuePtr)
          {
            CFRelease(v9);
            IOObjectRelease(v7);
            return 0;
          }
        }
      }

      CFRelease(v9);
    }

    IOObjectRelease(v7);
  }

  v11 = apfs_container_iouc(a1, &outputStruct, &v21, 0, 0);
  if (!v11)
  {
    if (a3)
    {
      v12 = *a3;
      v13 = -1;
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }

    v19 = v13;
    v20 = v12;
    v14 = IOConnectCallStructMethod(v21, 9u, &outputStruct, 8uLL, &outputStruct, &outputStructCnt);
    v11 = v14;
    if (a2 && !v14)
    {
      *a2 = outputStruct;
    }

    IOServiceClose(v21);
  }

  return v11;
}

uint64_t apfs_container_iouc(char *__s, _DWORD *a2, io_connect_t *a3, io_registry_entry_t *a4, int a5)
{
  parent = 0;
  if (a2)
  {
    v9 = strrchr(__s, 47);
    if (v9)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = __s;
    }

    v20 = 0;
    volume_io_object = get_volume_io_object(v10, &v20);
    if (volume_io_object)
    {
      LODWORD(v12) = volume_io_object;
      if (IORegistryEntryGetParentEntry(volume_io_object, "IOService", &parent))
      {
        v13 = 49158;
LABEL_24:
        IOObjectRelease(v12);
        return v13;
      }

      if (IOObjectConformsTo(parent, "AppleAPFSContainer"))
      {
        v17 = fsindex_parse(v10, v20);
        *a2 = v17;
        if (v17 != -1)
        {
          first_child_of_class = parent;
LABEL_17:
          v13 = IOServiceOpen(first_child_of_class, *MEMORY[0x277D85F48], 0, a3);
          v18 = parent;
          if (a4 && !v13)
          {
            *a4 = parent;
            goto LABEL_24;
          }

LABEL_23:
          IOObjectRelease(v18);
          goto LABEL_24;
        }

        v13 = 49154;
      }

      else
      {
        v13 = 49231;
      }

      v18 = parent;
      goto LABEL_23;
    }
  }

  else
  {
    apfs_io_object = get_apfs_io_object(__s);
    if (apfs_io_object)
    {
      v12 = apfs_io_object;
      first_child_of_class = get_first_child_of_class(apfs_io_object, "AppleAPFSContainer");
      parent = first_child_of_class;
      if (!first_child_of_class)
      {
        if (!a5 || (first_child_of_class = physical_store_to_container(v12), (parent = first_child_of_class) == 0))
        {
          v13 = 49231;
          goto LABEL_24;
        }
      }

      goto LABEL_17;
    }
  }

  return 49154;
}

uint64_t get_volume_io_object_from_snapshot(io_object_t *a1, _BYTE *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  v4 = IOObjectConformsTo(*a1, "AppleAPFSSnapshot");
  v5 = *a1;
  if (v4)
  {
    parent = 0;
    if (IORegistryEntryGetParentEntry(v5, "IOService", &parent))
    {
      return 0;
    }

    IOObjectRelease(*a1);
    v5 = parent;
    *a1 = parent;
    if (a2)
    {
      *a2 = 1;
    }
  }

  result = IOObjectConformsTo(v5, "AppleAPFSVolume");
  if (result)
  {
    return *a1;
  }

  return result;
}

uint64_t fsindex_parse(char *a1, int a2)
{
  v4 = strrchr(a1, 115);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    v5 = v4 - 1;
    while (v5 > a1)
    {
      v7 = *v5--;
      v6 = v7;
      if ((v7 - 48) >= 0xA)
      {
        if (v6 != 115)
        {
          return 0xFFFFFFFFLL;
        }

        v4 = v5 + 1;
        goto LABEL_8;
      }
    }

    return 0xFFFFFFFFLL;
  }

LABEL_8:
  if (v4 <= a1 || *(v4 - 1) == 47)
  {
    return 0xFFFFFFFFLL;
  }

  return strtoul(v4 + 1, 0, 10) - 1;
}

unint64_t fletcher64(uint32x4_t *a1, unint64_t a2, unint64_t a3, int8x16_t a4, int8x16_t a5)
{
  v5 = a3;
  v6 = HIDWORD(a3);
  if ((a2 & 3) == 0)
  {
    for (i = a2 >> 2; i; v6 = v34 + HIDWORD(v34))
    {
      if (i >= 0x16A00)
      {
        v8 = 92672;
      }

      else
      {
        v8 = i;
      }

      i -= v8;
      v9 = veorq_s8(a4, a4);
      v10 = veorq_s8(a5, a5);
      v9.i64[0] = v5;
      v10.i64[0] = v6;
      if (v8 >= 16)
      {
        v11 = *a1;
        v12 = a1[1];
        v13 = a1[2];
        v14 = a1[3];
        a1 += 4;
        v15 = vshlq_n_s64(v9, 4uLL);
        v16 = vmull_u32(*v12.i8, constants[2]);
        v17 = vmull_u32(*v13.i8, constants[4]);
        v18 = vmlal_u32(vmlal_u32(v10, *v11.i8, constants[0]), *v14.i8, constants[6]);
        v19 = vpadalq_u32(vpadalq_u32(vpadalq_u32(v9, v11), v12), v13);
        v20 = v8 < 32;
        for (v8 -= 32; !v20; v8 -= 16)
        {
          v21 = vmlal_high_u32(v16, v11, *constants);
          v22 = *a1;
          a1 += 4;
          v11 = v22;
          v23 = vmlal_high_u32(v17, v12, *&constants[2]);
          v12 = a1[-3];
          v24 = vpadalq_u32(v19, v14);
          v25 = vmlal_high_u32(vaddq_s64(v18, v15), v13, *&constants[4]);
          v13 = a1[-2];
          v26 = vmlal_high_u32(v21, v14, *&constants[6]);
          v14 = a1[-1];
          v15 = vshlq_n_s64(v24, 4uLL);
          v16 = vmlal_u32(v26, *v12.i8, constants[2]);
          v17 = vmlal_u32(v23, *v13.i8, constants[4]);
          v18 = vmlal_u32(vmlal_u32(v25, *v22.i8, constants[0]), *v14.i8, constants[6]);
          v19 = vpadalq_u32(vpadalq_u32(vpadalq_u32(v24, v22), v12), v13);
          v20 = v8 < 16;
        }

        v9 = vpadalq_u32(v19, v14);
        v10 = vaddq_s64(vaddq_s64(vmlal_high_u32(vaddq_s64(v18, v15), v13, *&constants[4]), vmlal_high_u32(v17, v12, *&constants[2])), vmlal_high_u32(vmlal_high_u32(v16, v11, *constants), v14, *&constants[6]));
      }

      if ((v8 & 8) != 0)
      {
        v27 = *a1;
        a1 += 2;
        v28 = a1[-1];
        v29 = vshlq_n_s64(v9, 3uLL);
        v9 = vpadalq_u32(vpadalq_u32(v9, v27), v28);
        v10 = vaddq_s64(vmlal_high_u32(vmlal_high_u32(vmlal_u32(vmlal_u32(v10, *v27.i8, constants[4]), *v28.i8, constants[6]), v27, *&constants[4]), v28, *&constants[6]), v29);
      }

      if ((v8 & 4) != 0)
      {
        v30 = *a1++;
        v31 = vshlq_n_s64(v9, 2uLL);
        v9 = vpadalq_u32(v9, v30);
        v10 = vaddq_s64(vmlal_high_u32(vmlal_u32(v10, *v30.i8, constants[6]), v30, *&constants[6]), v31);
      }

      v32 = v8 & 3;
      a4 = vpaddq_s64(v9, v9);
      a5 = vpaddq_s64(v10, v10);
      v33 = a4.i64[0];
      v34 = a5.i64[0];
      if (v32)
      {
        do
        {
          v35 = a1->i32[0];
          a1 = (a1 + 4);
          v33 += v35;
          v34 += v33;
          v20 = v32-- <= 1;
        }

        while (!v20);
      }

      v5 = v33 + HIDWORD(v33);
    }
  }

  v36 = v5 + HIDWORD(v5);
  v37 = v6 + HIDWORD(v6);
  if (v36 == 0xFFFFFFFF)
  {
    v36 = 0;
  }

  if (v37 == 0xFFFFFFFF)
  {
    v37 = 0;
  }

  return v36 + (v37 << 32);
}

uint64_t authapfs_get_hash_info(unsigned __int8 a1)
{
  result = 0;
  if (a1 > 4u)
  {
    if (a1 > 6u)
    {
      if (a1 == 7)
      {
        return ccsha3_384_di();
      }

      if (a1 == 8)
      {
        return ccsha3_512_di();
      }

      return result;
    }

    if (a1 != 5)
    {
      if (a1 == 6)
      {
        return ccsha3_256_di();
      }

      return result;
    }

    return ccsha512_256_di();
  }

  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      return ccsha384_di();
    }

    if (a1 == 4)
    {
      return ccsha512_di();
    }

    return result;
  }

  if (a1 == 1)
  {
    return ccsha256_di();
  }

  if (a1 == 2)
  {
    return ccsha512_256_di();
  }

  return result;
}

uint64_t authapfs_digest(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v8 = a2;
  v22[1] = *MEMORY[0x277D85DE8];
  v10 = a2;
  if (a2 && a2 < a3)
  {
    v22[0] = v22;
    v11 = 2 * *a1;
    MEMORY[0x28223BE20](a1, a2);
    bzero(v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
    MEMORY[0x28223BE20](v12, (*(a1 + 8) + *(a1 + 16) + 19) & 0xFFFFFFFFFFFFFFF8);
    v14 = v22 - v13;
    bzero(v22 - v13, v15);
    ccdigest_init();
    v16 = 2 * (v8 & 0x7FFFFFFF);
    if (v16 > v7)
    {
      goto LABEL_16;
    }

    do
    {
      ccdigest_parallel();
      ccdigest_update();
      v7 -= v16;
      a4 += v16;
    }

    while (v7 >= v16);
    if (v7)
    {
LABEL_16:
      do
      {
        if (v7 >= v10)
        {
          v17 = v10;
        }

        else
        {
          v17 = v7;
        }

        ccdigest();
        ccdigest_update();
        a4 += v17;
        v7 -= v17;
      }

      while (v7);
    }

    (*(a1 + 56))(a1, v14, a5);
    v18 = *(a1 + 8) + *(a1 + 16);
    result = cc_clear();
    v20 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v21 = *MEMORY[0x277D85DE8];

    return ccdigest();
  }

  return result;
}

uint64_t enhanced_apfs_enabled()
{
  v0 = IORegistryEntryFromPath(*MEMORY[0x277CD2898], "IODeviceTree:/filesystems");
  if (v0 && (v1 = v0, CFProperty = IORegistryEntryCreateCFProperty(v0, @"e-apfs", *MEMORY[0x277CBECE8], 0), IOObjectRelease(v1), CFProperty))
  {
    CFRelease(CFProperty);
    return 1;
  }

  else
  {

    return MEMORY[0x2822032F8]("-apfs_newvf_enabled", 0, 0);
  }
}

char *jobj_type_to_str(unsigned int a1)
{
  if (a1 < 0x15)
  {
    return jobj_type_to_str_TYPE_STRINGS[a1];
  }

  v1 = jobj_type_to_str_unknown_str;
  snprintf(jobj_type_to_str_unknown_str, 0x20uLL, "Unknown type %d", a1);
  return v1;
}

float64x2_t set_metric_default_values(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = &stru_284F58040;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 68) = 0;
  *(a1 + 152) = 0;
  *(a1 + 260) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  result.f64[0] = NAN;
  result.f64[1] = NAN;
  *(a1 + 264) = result;
  *(a1 + 280) = result;
  *(a1 + 320) = -1;
  *(a1 + 328) = -1;
  *(a1 + 296) = -1;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 400) = result;
  *(a1 + 416) = result;
  *(a1 + 368) = result;
  *(a1 + 384) = result;
  *(a1 + 336) = xmmword_23D290CF0;
  *(a1 + 352) = result;
  *(a1 + 432) = vnegq_f64(result);
  *(a1 + 448) = -1;
  *(a1 + 456) = -1;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 560) = result;
  *(a1 + 576) = result;
  *(a1 + 528) = result;
  *(a1 + 544) = result;
  *(a1 + 496) = 0u;
  *(a1 + 512) = result;
  *(a1 + 720) = 0;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 744) = -1;
  *(a1 + 736) = -1;
  *(a1 + 728) = -1;
  return result;
}

char *set_metric_path(uint64_t a1, char *__s1)
{
  result = strdup(__s1);
  *(a1 + 160) = result;
  return result;
}

_DWORD *record_failure(_DWORD *result, int a2, int a3)
{
  v5 = result;
  if ((a3 & 0x80000000) == 0)
  {
    v6 = result[17];
    if (v6 >= 11)
    {
      result = memmove(result + 18, result + 20, 0x48uLL);
      v8 = 9;
    }

    else
    {
      result[17] = v6 + 1;
      v7 = __OFSUB__(v6, 1);
      v8 = v6 - 1;
      if (v8 < 0 != v7)
      {
        goto LABEL_10;
      }
    }

    v10 = v5[44];
    v11 = &v5[2 * v8];
    v11[18] = v5[38];
    v11[19] = v10;
LABEL_10:
    v5[38] = a2;
    v5[44] = a3;
    return result;
  }

  v9 = result[6];
  if (v9 >= 5)
  {
    result = memmove(result + 7, result + 9, 0x48uLL);
    --v9;
  }

  else
  {
    result[6] = v9 + 1;
  }

  v12 = &v5[2 * v9];
  v12[7] = a2;
  v12[8] = a3;
  return result;
}

void print_metrics_to_file(uint64_t a1, int a2)
{
  if (*a1)
  {
    print_metrics(a1, a2);
    v3 = *a1;
    CStringPtr = CFStringGetCStringPtr(*(a1 + 8), 0x8000100u);
    fprintf(v3, "%s\n", CStringPtr);

    cleanup_metrics(a1);
  }
}

void print_metrics(uint64_t a1, int a2)
{
  v4 = *MEMORY[0x277CBECE8];
  v5 = *(a1 + 160);
  if (!v5)
  {
    v5 = "";
  }

  v6 = CFStringCreateWithFormat(v4, 0, @"%@dev=%s result=%d ", *(a1 + 8), v5, *(a1 + 176));
  v7 = *(a1 + 8);
  if (v7)
  {
    CFRelease(v7);
  }

  *(a1 + 8) = v6;
  switch(a2)
  {
    case 2:
      v16 = CFStringCreateWithFormat(v4, 0, @"%@vers=%s ", v6, "2632.40.15.0.2");
      v17 = *(a1 + 8);
      if (v17)
      {
        CFRelease(v17);
      }

      *(a1 + 8) = v16;
      goto LABEL_22;
    case 1:
LABEL_22:
      print_additional_migrator_metrics(a1);
      break;
    case 0:
      v8 = CFStringCreateWithFormat(v4, 0, @"%@vers=%s ", v6, "2632.40.15.0.2");
      v9 = *(a1 + 8);
      if (v9)
      {
        CFRelease(v9);
      }

      *(a1 + 8) = v8;
      v10 = CFStringCreateWithFormat(v4, 0, @"%@num_src=%llu num_dst=%llu ", v8, *(a1 + 184), *(a1 + 192));
      v11 = *(a1 + 8);
      if (v11)
      {
        CFRelease(v11);
      }

      v12 = 0;
      *(a1 + 8) = v10;
      v13 = a1 + 200;
      do
      {
        if (*(v13 + 4 * v12))
        {
          v14 = jobj_type_to_str(v12);
          v10 = CFStringCreateWithFormat(v4, 0, @"%@%s:%d ", v10, v14, *(v13 + 4 * v12));
          v15 = *(a1 + 8);
          if (v15)
          {
            CFRelease(v15);
          }

          *(a1 + 8) = v10;
        }

        ++v12;
      }

      while (v12 != 15);
      break;
  }

  if (*(a1 + 24))
  {
    v18 = CFStringCreateWithFormat(v4, 0, @"%@%s", *(a1 + 8), "w:");
    v19 = *(a1 + 8);
    if (v19)
    {
      CFRelease(v19);
    }

    *(a1 + 8) = v18;
    if (*(a1 + 24) >= 1)
    {
      v20 = 0;
      v21 = (a1 + 32);
      do
      {
        v18 = CFStringCreateWithFormat(v4, 0, @"%@(%d:%d)", v18, *(v21 - 1), *v21);
        v22 = *(a1 + 8);
        if (v22)
        {
          CFRelease(v22);
        }

        v21 += 2;
        *(a1 + 8) = v18;
        ++v20;
      }

      while (v20 < *(a1 + 24));
    }

    v23 = CFStringCreateWithFormat(v4, 0, @"%@%s", v18, " ");
    v24 = *(a1 + 8);
    if (v24)
    {
      CFRelease(v24);
    }

    *(a1 + 8) = v23;
  }

  if (*(a1 + 68) >= 2)
  {
    v25 = CFStringCreateWithFormat(v4, 0, @"%@%s", *(a1 + 8), "e:");
    v26 = *(a1 + 8);
    if (v26)
    {
      CFRelease(v26);
    }

    *(a1 + 8) = v25;
    if (*(a1 + 68) >= 2)
    {
      v27 = 0;
      v28 = (a1 + 76);
      do
      {
        v25 = CFStringCreateWithFormat(v4, 0, @"%@(%d:%d)", v25, *(v28 - 1), *v28);
        v29 = *(a1 + 8);
        if (v29)
        {
          CFRelease(v29);
        }

        v28 += 2;
        *(a1 + 8) = v25;
        ++v27;
      }

      while (v27 < *(a1 + 68) - 1);
    }

    v30 = CFStringCreateWithFormat(v4, 0, @"%@%s", v25, " ");
    v31 = *(a1 + 8);
    if (v31)
    {
      CFRelease(v31);
    }

    *(a1 + 8) = v30;
  }

  if (*(a1 + 16))
  {
    v32 = *(a1 + 8);
    v33 = time(0);
    v34 = CFStringCreateWithFormat(v4, 0, @"%@time=%ld ", v32, v33 - *(a1 + 16));
    v35 = *(a1 + 8);
    if (v35)
    {
      CFRelease(v35);
    }

    *(a1 + 8) = v34;
  }

  v36 = *(a1 + 408);
  if (v36 == -1)
  {
    v39 = *(a1 + 8);
  }

  else
  {
    v37 = *(a1 + 8);
    if (*(a1 + 16))
    {
      v38 = CFStringCreateWithFormat(v4, 0, @"%@total_t=%llu ", *(a1 + 8), v36);
    }

    else
    {
      v38 = CFStringCreateWithFormat(v4, 0, @"%@time=%llu ", *(a1 + 8), v36);
    }

    v39 = v38;
    v40 = *(a1 + 8);
    if (v40)
    {
      CFRelease(v40);
    }

    *(a1 + 8) = v39;
  }

  v41 = CFStringCreateWithFormat(v4, 0, @"%@fl=%d", v39, *(a1 + 152));
  v42 = *(a1 + 8);
  if (v42)
  {
    CFRelease(v42);
  }

  *(a1 + 8) = v41;
}

void cleanup_metrics(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    fclose(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 160);
  if (v3)
  {
    free(v3);
    *(a1 + 160) = 0;
  }

  v4 = *(a1 + 168);
  if (v4)
  {
    free(v4);
    *(a1 + 168) = 0;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 8) = 0;
  }
}

void print_additional_migrator_metrics(void *a1)
{
  v2 = a1[43];
  v3 = MEMORY[0x277CBECE8];
  if (v2)
  {
    v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@encoded_len=%zu ", a1[1], v2);
    v5 = a1[1];
    if (v5)
    {
      CFRelease(v5);
    }

    a1[1] = v4;
  }

  v6 = a1[34];
  if (v6 != -1)
  {
    v7 = CFStringCreateWithFormat(*v3, 0, @"%@num_dirs=%zu ", a1[1], v6);
    v8 = a1[1];
    if (v8)
    {
      CFRelease(v8);
    }

    a1[1] = v7;
  }

  v9 = a1[33];
  if (v9 != -1)
  {
    v10 = CFStringCreateWithFormat(*v3, 0, @"%@num_files=%zu ", a1[1], v9);
    v11 = a1[1];
    if (v11)
    {
      CFRelease(v11);
    }

    a1[1] = v10;
  }

  v12 = a1[36];
  if (v12 != -1)
  {
    v13 = CFStringCreateWithFormat(*v3, 0, @"%@num_total_dirs=%zu ", a1[1], v12);
    v14 = a1[1];
    if (v14)
    {
      CFRelease(v14);
    }

    a1[1] = v13;
  }

  v15 = a1[35];
  if (v15 != -1)
  {
    v16 = CFStringCreateWithFormat(*v3, 0, @"%@num_total_files=%zu ", a1[1], v15);
    v17 = a1[1];
    if (v17)
    {
      CFRelease(v17);
    }

    a1[1] = v16;
  }

  v18 = a1[42];
  if (v18 != -1)
  {
    v19 = CFStringCreateWithFormat(*v3, 0, @"%@max_stack=%zu ", a1[1], v18);
    v20 = a1[1];
    if (v20)
    {
      CFRelease(v20);
    }

    a1[1] = v19;
  }

  v21 = a1[40];
  if (v21 != -1)
  {
    v22 = CFStringCreateWithFormat(*v3, 0, @"%@num_sc=%zu ", a1[1], v21);
    v23 = a1[1];
    if (v23)
    {
      CFRelease(v23);
    }

    a1[1] = v22;
  }

  v24 = a1[37];
  if (v24 != -1)
  {
    v25 = CFStringCreateWithFormat(*v3, 0, @"%@num_sr=%zu ", a1[1], v24);
    v26 = a1[1];
    if (v26)
    {
      CFRelease(v26);
    }

    a1[1] = v25;
  }

  v27 = a1[41];
  if (v27 != -1)
  {
    v28 = CFStringCreateWithFormat(*v3, 0, @"%@num_sh=%zu ", a1[1], v27);
    v29 = a1[1];
    if (v29)
    {
      CFRelease(v29);
    }

    a1[1] = v28;
  }

  v30 = a1[38];
  if (v30)
  {
    v31 = CFStringCreateWithFormat(*v3, 0, @"%@num_sb=%zu ", a1[1], v30);
    v32 = a1[1];
    if (v32)
    {
      CFRelease(v32);
    }

    a1[1] = v31;
  }

  v33 = a1[39];
  if (v33)
  {
    v34 = CFStringCreateWithFormat(*v3, 0, @"%@ranges_to_move=%zu ", a1[1], v33);
    v35 = a1[1];
    if (v35)
    {
      CFRelease(v35);
    }

    a1[1] = v34;
  }

  v36 = a1[45];
  if (v36 != -1)
  {
    v37 = CFStringCreateWithFormat(*v3, 0, @"%@src_t=%llu ", a1[1], v36);
    v38 = a1[1];
    if (v38)
    {
      CFRelease(v38);
    }

    a1[1] = v37;
  }

  v39 = a1[44];
  if (v39 != -1)
  {
    v40 = CFStringCreateWithFormat(*v3, 0, @"%@mnt_t=%llu ", a1[1], v39);
    v41 = a1[1];
    if (v41)
    {
      CFRelease(v41);
    }

    a1[1] = v40;
  }

  v42 = a1[46];
  if (v42 != -1)
  {
    v43 = CFStringCreateWithFormat(*v3, 0, @"%@prepro_t=%llu ", a1[1], v42);
    v44 = a1[1];
    if (v44)
    {
      CFRelease(v44);
    }

    a1[1] = v43;
  }

  v45 = a1[47];
  if (v45 != -1)
  {
    v46 = CFStringCreateWithFormat(*v3, 0, @"%@psvr_t=%llu ", a1[1], v45);
    v47 = a1[1];
    if (v47)
    {
      CFRelease(v47);
    }

    a1[1] = v46;
  }

  v48 = a1[48];
  if (v48 != -1)
  {
    v49 = CFStringCreateWithFormat(*v3, 0, @"%@mv_t=%llu ", a1[1], v48);
    v50 = a1[1];
    if (v50)
    {
      CFRelease(v50);
    }

    a1[1] = v49;
  }

  v51 = a1[49];
  if (v51 != -1)
  {
    v52 = CFStringCreateWithFormat(*v3, 0, @"%@trgt_t=%llu ", a1[1], v51);
    v53 = a1[1];
    if (v53)
    {
      CFRelease(v53);
    }

    a1[1] = v52;
  }

  v54 = a1[50];
  if (v54 != -1)
  {
    v55 = CFStringCreateWithFormat(*v3, 0, @"%@pmv_t=%llu ", a1[1], v54);
    v56 = a1[1];
    if (v56)
    {
      CFRelease(v56);
    }

    a1[1] = v55;
  }

  v57 = a1[52];
  if (v57 != -1)
  {
    v58 = CFStringCreateWithFormat(*v3, 0, @"%@freeQ_d=%lld ", a1[1], v57);
    v59 = a1[1];
    if (v59)
    {
      CFRelease(v59);
    }

    a1[1] = v58;
  }

  v60 = a1[53];
  if (v60 != -1)
  {
    v61 = CFStringCreateWithFormat(*v3, 0, @"%@max_mem=%llu ", a1[1], v60);
    v62 = a1[1];
    if (v62)
    {
      CFRelease(v62);
    }

    a1[1] = v61;
  }

  v63 = a1[54];
  if (v63 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v64 = CFStringCreateWithFormat(*v3, 0, @"%@xp_desc=%lld ", a1[1], v63);
    v65 = a1[1];
    if (v65)
    {
      CFRelease(v65);
    }

    a1[1] = v64;
  }

  v66 = a1[55];
  if (v66 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v67 = CFStringCreateWithFormat(*v3, 0, @"%@xp_data=%lld ", a1[1], v66);
    v68 = a1[1];
    if (v68)
    {
      CFRelease(v68);
    }

    a1[1] = v67;
  }

  v69 = a1[56];
  if (v69 != -1)
  {
    v70 = CFStringCreateWithFormat(*v3, 0, @"%@oc_hit=%llu ", a1[1], v69);
    v71 = a1[1];
    if (v71)
    {
      CFRelease(v71);
    }

    a1[1] = v70;
  }

  v72 = a1[57];
  if (v72 != -1)
  {
    v73 = CFStringCreateWithFormat(*v3, 0, @"%@oc_miss=%llu ", a1[1], v72);
    v74 = a1[1];
    if (v74)
    {
      CFRelease(v74);
    }

    a1[1] = v73;
  }

  v75 = a1[58];
  if (v75)
  {
    v76 = CFStringCreateWithFormat(*v3, 0, @"%@dirstats=%llu ", a1[1], v75);
    v77 = a1[1];
    if (v77)
    {
      CFRelease(v77);
    }

    a1[1] = v76;
  }

  v78 = a1[62];
  if (v78)
  {
    v79 = CFStringCreateWithFormat(*v3, 0, @"%@decloned=%llu ", a1[1], v78);
    v80 = a1[1];
    if (v80)
    {
      CFRelease(v80);
    }

    a1[1] = v79;
  }

  v81 = a1[63];
  if (v81)
  {
    v82 = CFStringCreateWithFormat(*v3, 0, @"%@source_meta_size=%llu ", a1[1], v81);
    v83 = a1[1];
    if (v83)
    {
      CFRelease(v83);
    }

    a1[1] = v82;
  }

  v84 = a1[59];
  if (v84)
  {
    v85 = CFStringCreateWithFormat(*v3, 0, @"%@ever_cloned=%llu ", a1[1], v84);
    v86 = a1[1];
    if (v86)
    {
      CFRelease(v86);
    }

    a1[1] = v85;
  }

  v87 = a1[60];
  if (v87)
  {
    v88 = CFStringCreateWithFormat(*v3, 0, @"%@full_clones=%llu ", a1[1], v87);
    v89 = a1[1];
    if (v89)
    {
      CFRelease(v89);
    }

    a1[1] = v88;
  }

  v90 = a1[64];
  if (v90 != -1)
  {
    v91 = CFStringCreateWithFormat(*v3, 0, @"%@disk_free_start=%llu ", a1[1], v90);
    v92 = a1[1];
    if (v92)
    {
      CFRelease(v92);
    }

    a1[1] = v91;
  }

  v93 = a1[65];
  if (v93 != -1)
  {
    v94 = CFStringCreateWithFormat(*v3, 0, @"%@disk_free_curr=%llu ", a1[1], v93);
    v95 = a1[1];
    if (v95)
    {
      CFRelease(v95);
    }

    a1[1] = v94;
  }

  v96 = a1[66];
  if (v96 != -1)
  {
    v97 = CFStringCreateWithFormat(*v3, 0, @"%@ip_freeq_start=%llu ", a1[1], v96);
    v98 = a1[1];
    if (v98)
    {
      CFRelease(v98);
    }

    a1[1] = v97;
  }

  v99 = a1[67];
  if (v99 != -1)
  {
    v100 = CFStringCreateWithFormat(*v3, 0, @"%@ip_freeq_curr=%llu ", a1[1], v99);
    v101 = a1[1];
    if (v101)
    {
      CFRelease(v101);
    }

    a1[1] = v100;
  }

  v102 = a1[80];
  if (v102)
  {
    v103 = CFStringCreateWithFormat(*v3, 0, @"%@msu_shared_clone_blk=%llu ", a1[1], v102);
    v104 = a1[1];
    if (v104)
    {
      CFRelease(v104);
    }

    a1[1] = v103;
  }

  v105 = a1[81];
  if (v105)
  {
    v106 = CFStringCreateWithFormat(*v3, 0, @"%@msu_purgble_clone_blk=%llu ", a1[1], v105);
    v107 = a1[1];
    if (v107)
    {
      CFRelease(v107);
    }

    a1[1] = v106;
  }

  v108 = a1[82];
  if (v108)
  {
    v109 = CFStringCreateWithFormat(*v3, 0, @"%@cloned_apps_blk=%llu ", a1[1], v108);
    v110 = a1[1];
    if (v110)
    {
      CFRelease(v110);
    }

    a1[1] = v109;
  }

  v111 = a1[83];
  if (v111)
  {
    v112 = CFStringCreateWithFormat(*v3, 0, @"%@pure_cloned_apps_blk=%llu ", a1[1], v111);
    v113 = a1[1];
    if (v113)
    {
      CFRelease(v113);
    }

    a1[1] = v112;
  }

  v114 = a1[84];
  if (v114)
  {
    v115 = CFStringCreateWithFormat(*v3, 0, @"%@tmp_blk=%llu ", a1[1], v114);
    v116 = a1[1];
    if (v116)
    {
      CFRelease(v116);
    }

    a1[1] = v115;
  }

  v117 = a1[85];
  if (v117)
  {
    v118 = CFStringCreateWithFormat(*v3, 0, @"%@tmp_cloned_blk=%llu ", a1[1], v117);
    v119 = a1[1];
    if (v119)
    {
      CFRelease(v119);
    }

    a1[1] = v118;
  }

  v120 = a1[68];
  if (v120 != -1)
  {
    v121 = CFStringCreateWithFormat(*v3, 0, @"%@src_fsroot_nodes=%llu ", a1[1], v120);
    v122 = a1[1];
    if (v122)
    {
      CFRelease(v122);
    }

    a1[1] = v121;
  }

  v123 = a1[71];
  if (v123 != -1)
  {
    v124 = CFStringCreateWithFormat(*v3, 0, @"%@src_fsroot_depth=%llu ", a1[1], v123);
    v125 = a1[1];
    if (v125)
    {
      CFRelease(v125);
    }

    a1[1] = v124;
  }

  v126 = a1[69];
  if (v126 != -1)
  {
    v127 = CFStringCreateWithFormat(*v3, 0, @"%@src_fsroot_2nd_nodes=%llu ", a1[1], v126);
    v128 = a1[1];
    if (v128)
    {
      CFRelease(v128);
    }

    a1[1] = v127;
  }

  v129 = a1[72];
  if (v129 != -1)
  {
    v130 = CFStringCreateWithFormat(*v3, 0, @"%@src_fsroot_2nd_depth=%llu ", a1[1], v129);
    v131 = a1[1];
    if (v131)
    {
      CFRelease(v131);
    }

    a1[1] = v130;
  }

  v132 = a1[70];
  if (v132 != -1)
  {
    v133 = CFStringCreateWithFormat(*v3, 0, @"%@tgt_fsroot_nodes=%llu ", a1[1], v132);
    v134 = a1[1];
    if (v134)
    {
      CFRelease(v134);
    }

    a1[1] = v133;
  }

  v135 = a1[73];
  if (v135 != -1)
  {
    v136 = CFStringCreateWithFormat(*v3, 0, @"%@tgt_fsroot_depth=%llu ", a1[1], v135);
    v137 = a1[1];
    if (v137)
    {
      CFRelease(v137);
    }

    a1[1] = v136;
  }

  v138 = a1[74];
  if (v138)
  {
    v139 = CFStringCreateWithFormat(*v3, 0, @"%@data_num_hardlnks=%llu ", a1[1], v138);
    v140 = a1[1];
    if (v140)
    {
      CFRelease(v140);
    }

    a1[1] = v139;
  }

  v141 = a1[76];
  if (v141)
  {
    v142 = CFStringCreateWithFormat(*v3, 0, @"%@data_size_hardlnks=%llu ", a1[1], v141);
    v143 = a1[1];
    if (v143)
    {
      CFRelease(v143);
    }

    a1[1] = v142;
  }

  v144 = a1[78];
  if (v144)
  {
    v145 = CFStringCreateWithFormat(*v3, 0, @"%@data_ondisk_hardlnks=%llu ", a1[1], v144);
    v146 = a1[1];
    if (v146)
    {
      CFRelease(v146);
    }

    a1[1] = v145;
  }

  v147 = a1[75];
  if (v147)
  {
    v148 = CFStringCreateWithFormat(*v3, 0, @"%@data_num_fclones=%llu ", a1[1], v147);
    v149 = a1[1];
    if (v149)
    {
      CFRelease(v149);
    }

    a1[1] = v148;
  }

  v150 = a1[77];
  if (v150)
  {
    v151 = CFStringCreateWithFormat(*v3, 0, @"%@data_size_fclones=%llu ", a1[1], v150);
    v152 = a1[1];
    if (v152)
    {
      CFRelease(v152);
    }

    a1[1] = v151;
  }

  v153 = a1[79];
  if (v153)
  {
    v154 = CFStringCreateWithFormat(*v3, 0, @"%@data_ondisk_fclones=%llu ", a1[1], v153);
    v155 = a1[1];
    if (v155)
    {
      CFRelease(v155);
    }

    a1[1] = v154;
  }

  v156 = a1[86];
  if (v156)
  {
    v157 = CFStringCreateWithFormat(*v3, 0, @"%@purge_all=%llu ", a1[1], v156);
    v158 = a1[1];
    if (v158)
    {
      CFRelease(v158);
    }

    a1[1] = v157;
  }

  v159 = a1[87];
  if (v159)
  {
    v160 = CFStringCreateWithFormat(*v3, 0, @"%@purge_full=%llu ", a1[1], v159);
    v161 = a1[1];
    if (v161)
    {
      CFRelease(v161);
    }

    a1[1] = v160;
  }

  v162 = a1[88];
  if (v162)
  {
    v163 = CFStringCreateWithFormat(*v3, 0, @"%@purge_full_2=%llu ", a1[1], v162);
    v164 = a1[1];
    if (v164)
    {
      CFRelease(v164);
    }

    a1[1] = v163;
  }

  v165 = a1[89];
  if (v165)
  {
    v166 = CFStringCreateWithFormat(*v3, 0, @"%@purge_from_data=%llu ", a1[1], v165);
    v167 = a1[1];
    if (v167)
    {
      CFRelease(v167);
    }

    a1[1] = v166;
  }

  v168 = a1[90];
  if (v168)
  {
    v169 = CFStringCreateWithFormat(*v3, 0, @"%@purge_from_user=%llu ", a1[1], v168);
    v170 = a1[1];
    if (v170)
    {
      CFRelease(v170);
    }

    a1[1] = v169;
  }

  v171 = a1[91];
  if (v171 != -1)
  {
    v172 = CFStringCreateWithFormat(*v3, 0, @"%@incompat=0x%llx ", a1[1], v171);
    v173 = a1[1];
    if (v173)
    {
      CFRelease(v173);
    }

    a1[1] = v172;
  }

  v174 = a1[92];
  if (v174 != -1)
  {
    v175 = CFStringCreateWithFormat(*v3, 0, @"%@roincompat=0x%llx ", a1[1], v174);
    v176 = a1[1];
    if (v176)
    {
      CFRelease(v176);
    }

    a1[1] = v175;
  }

  v177 = a1[93];
  if (v177 != -1)
  {
    v178 = CFStringCreateWithFormat(*v3, 0, @"%@features=0x%llx ", a1[1], v177);
    v179 = a1[1];
    if (v179)
    {
      CFRelease(v179);
    }

    a1[1] = v178;
  }

  v180 = a1[21];
  if (v180)
  {
    v181 = CFStringCreateWithFormat(*v3, 0, @"%@msg='%s' ", a1[1], v180);
    v182 = a1[1];
    if (v182)
    {
      CFRelease(v182);
    }

    a1[1] = v181;
  }
}

void *authapfs_hexdump_hash(unsigned __int8 *a1, void *a2, unsigned int a3)
{
  v6 = (2 * a3) | 1;
  bzero(a2, v6);
  if (a3)
  {
    v7 = a3;
    v8 = a2;
    do
    {
      v9 = *a1++;
      v10 = snprintf(v8, v6, "%02hhx", v9);
      v8 += v10;
      v6 -= v10;
      --v7;
    }

    while (v7);
  }

  return a2;
}

uint64_t authapfs_should_hash_node(uint64_t a1)
{
  if ((*(a1 + 21) & 4) != 0)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    if ((obj_type_and_flags(a1) & 0x8000000) != 0 || (*(a1 + 17) & 2) != 0)
    {
      LODWORD(v2) = 0;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2)
      {
        LODWORD(v2) = (*(*(v2 + 376) + 56) >> 5) & 1;
      }
    }

    if (*(a1 + 40) == 14)
    {
      v3 = v2 | ((*(*(a1 + 56) + 32) & 8) >> 3);
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3 & 1;
}

uint64_t authapfs_validate_node_hash(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  v13 = *MEMORY[0x277D85DE8];
  memset(__s1, 0, sizeof(__s1));
  if (a2)
  {
    result = authapfs_hash_node(a1, __s1, a3, a4);
    if (!result)
    {
      result = memcmp(__s1, a2, a3);
      if (result)
      {
        v11 = 0;
        memset(v10, 0, sizeof(v10));
        v9 = 0;
        memset(v8, 0, sizeof(v8));
        authapfs_hexdump_hash(a2, v8, a3);
        authapfs_hexdump_hash(__s1, v10, a3);
        log_err("%s:%d: hash mismatch! expected: %s, actual: %s\n", "authapfs_validate_node_hash", 204, v8, v10);
        result = 80;
      }
    }
  }

  else
  {
    result = 22;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t authapfs_hash_node(uint64_t a1, uint64_t a2, int a3, int a4)
{
  result = 22;
  if (a2 && (*(*(a1 + 56) + 32) & 8) != 0)
  {
    v6 = a4;
    if (authapfs_valid_hash_type(a4) || authapfs_hash_comparison_size(v6) != a3)
    {
      return 22;
    }

    else
    {
      hash_info = authapfs_get_hash_info(v6);
      v11 = v10;
      v12 = obj_size_phys(a1);
      authapfs_digest(hash_info, v11, v12, *(a1 + 56), a2);
      return 0;
    }
  }

  return result;
}

uint64_t authapfs_validate_node(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!authapfs_should_hash_node(a1))
  {
    goto LABEL_4;
  }

  if ((authapfs_state & 1) == 0)
  {
    goto LABEL_4;
  }

  v4 = a1[1];
  v5 = a1[50];
  if (authapfs_seal_is_broken(v4, a1))
  {
    goto LABEL_4;
  }

  memset(__s2, 0, sizeof(__s2));
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!memcmp((a2 + 32), __s2, HIBYTE(v5) & 0x7F))
  {
LABEL_4:
    a2 = 0;
  }

  else
  {
    a2 = authapfs_validate_node_hash(a1, (a2 + 32), HIBYTE(v5) & 0x7F, (v5 >> 44) & 0xFFF);
    if (a2)
    {
      v8 = obj_oid(a1);
      v9 = obj_xid(a1);
      v10 = obj_oid(v4);
      log_err("%s:%d: failed to validate node %p (oid:%llu, xid:%llu) of fs %p (%llu) - %d\n", "authapfs_validate_node", 325, a1, v8, v9, v4, v10, a2);
    }
  }

LABEL_5:
  v6 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t authapfs_valid_hash_type(int a1)
{
  if ((a1 & 0xFFFFFF00) <= 0xF00 && (a1 & 0xFD) != 0 && a1 < 9u)
  {
    return 0;
  }

  log_err("%s:%d: Invalid or unknown hash type: %d\n", "authapfs_valid_hash_type", 31, a1);
  return 22;
}

uint64_t authapfs_hash_comparison_size(char a1)
{
  if ((a1 - 1) > 7u)
  {
    return 0;
  }

  else
  {
    return dword_23D290D08[(a1 - 1)];
  }
}

double integrity_meta_init_phys(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = *a3;
  if (!authapfs_valid_hash_type(*a3))
  {
    *&result = 2;
    *(a1 + 32) = 2;
    *(a1 + 40) = v4;
    *(a1 + 44) = 128;
  }

  return result;
}

uint64_t integrity_meta_obj_init(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = v2[10];
  v4 = authapfs_hash_comparison_size(v3);
  if (!v2[8])
  {
    return 92;
  }

  if (v2[11] < 0x30u)
  {
    return 92;
  }

  v5 = v4;
  if (authapfs_valid_hash_type(v3))
  {
    return 92;
  }

  v6 = v2[11];
  if (*(a1 + 48) < (v6 + v5))
  {
    return 92;
  }

  result = 0;
  v8 = *(a1 + 56);
  *(a1 + 376) = v8;
  *(a1 + 384) = v8 + v6;
  *(a1 + 392) = v5;
  return result;
}

uint64_t authapfs_integrity_meta_get_internal(uint64_t a1, void *a2, int a3)
{
  if (!a1)
  {
    return 22;
  }

  if (!a2 && !a3)
  {
    return 22;
  }

  v7 = *(*(a1 + 376) + 1024);
  if (v7)
  {
    v8 = *(a1 + 392);
    pthread_mutex_lock((a1 + 1728));
    v9 = *(a1 + 3624);
    if (v9)
    {
      if (a2)
      {
        obj_retain(v9);
        *a2 = *(a1 + 3624);
      }

      pthread_mutex_unlock((a1 + 1728));
      return 0;
    }

    v13 = 0;
    pthread_mutex_unlock((a1 + 1728));
    result = obj_get(*(v8 + 392), 0, v7, &integrity_meta_desc, 0, a1, *(a1 + 440), 0, &v13);
    if (!result)
    {
      v11 = v13;
      pthread_mutex_lock((a1 + 3952));
      v12 = v11[47];
      *(a1 + 4020) = vrev64_s32(v12[4]);
      *(a1 + 4032) = v12[6];
      *(a1 + 4016) = 1;
      pthread_mutex_unlock((a1 + 3952));
      if (a3)
      {
        pthread_mutex_lock((a1 + 1728));
        if (!*(a1 + 3624))
        {
          obj_retain(v13);
          *(a1 + 3624) = v13;
        }

        pthread_mutex_unlock((a1 + 1728));
      }

      if (!a2)
      {
        obj_release(v13);
        return 0;
      }

      result = 0;
      *a2 = v13;
    }
  }

  else
  {
    v10 = obj_oid(a1);
    log_err("%s:%d: %s integrity_meta object of fs %llu, oid invalid\n", "authapfs_integrity_meta_get_internal", 169, (a1 + 4040), v10);
    return 2;
  }

  return result;
}

uint64_t authapfs_get_hash_args(uint64_t a1, _DWORD *a2)
{
  v8 = 0;
  if (!a2)
  {
    return 22;
  }

  result = authapfs_integrity_meta_get_internal(a1, &v8, 0);
  if (!result)
  {
    v4 = v8;
    v5 = *(v8 + 392);
    if (v5 >= 0x40)
    {
      v6 = 64;
    }

    else
    {
      v6 = v5;
    }

    v7 = *(v8 + 384);
    a2[6] = *(*(v8 + 376) + 40);
    a2[7] = v5;
    a2[5] |= 0x180u;
    memcpy(a2 + 8, v7, v6);
    obj_release(v4);
    return 0;
  }

  return result;
}

uint64_t authapfs_seal_is_broken(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 1728);
  pthread_mutex_lock((a1 + 1728));
  v5 = *(a1 + 3624);
  if (v5)
  {
    v6 = *(v5 + 376);
    v7 = (v6 + 36);
    v8 = (v6 + 32);
    v9 = (v6 + 48);
  }

  else
  {
    pthread_mutex_unlock(v4);
    if (*(a1 + 4016) != 1)
    {
LABEL_8:
      LOBYTE(v12) = 0;
      return v12 & 1;
    }

    v4 = (a1 + 3952);
    pthread_mutex_lock((a1 + 3952));
    v7 = (a1 + 4020);
    v8 = (a1 + 4024);
    v9 = (a1 + 4032);
  }

  v10 = *v9;
  v11 = *v8;
  v12 = *v7;
  pthread_mutex_unlock(v4);
  if (a2 && v11 >= 2)
  {
    if (v12)
    {
      LOBYTE(v12) = obj_xid(a2) >= v10;
      return v12 & 1;
    }

    goto LABEL_8;
  }

  return v12 & 1;
}

uint64_t delta_validate_op(unsigned __int8 *a1, unint64_t a2, _DWORD *a3)
{
  if (!a2)
  {
    return 35;
  }

  v6 = *a1;
  if (delta_op_type_struct_size(v6) > a2)
  {
    return 35;
  }

  LODWORD(v8) = 1;
  switch(v6)
  {
    case 0u:
      goto LABEL_92;
    case 1u:
      v8 = *(a1 + 1);
      v27 = v8 - 1048598;
      if (v8 > a2)
      {
        v28 = 2;
      }

      else
      {
        v28 = 3;
      }

      v29 = v27 >= 0xFFEFFFEF;
      if (v27 >= 0xFFEFFFEF)
      {
        v30 = v28;
      }

      else
      {
        v30 = 4;
      }

      goto LABEL_88;
    case 2u:
      if (*(a1 + 1) != 18 || a1[5] > 1u || *(a1 + 6) < 3u || *(a1 + 10) >> 60)
      {
        goto LABEL_93;
      }

      if (a2 < 0x12)
      {
        return 35;
      }

      LODWORD(v8) = 18;
      goto LABEL_92;
    case 3u:
      if (*(a1 + 1) == 25 && !(*(a1 + 5) >> 60) && !(*(a1 + 13) >> 60))
      {
        goto LABEL_54;
      }

      goto LABEL_93;
    case 4u:
      if (*(a1 + 1) != 17 || *(a1 + 5) >> 60)
      {
        goto LABEL_93;
      }

      LODWORD(v8) = 17;
      goto LABEL_92;
    case 5u:
      if (*(a1 + 1) != 997994796 || *(a1 + 5) > 3uLL || *(a1 + 41) == 0 || (strnlen(a1 + 57, 0x100uLL) & 0xFFFFFFFFFFFFFEFFLL) == 0 || (*(a1 + 21) - 65537) < 0xFFFF0FFF || (strnlen(a1 + 660, 0x100uLL) & 0xFFFFFFFFFFFFFEFFLL) == 0)
      {
        goto LABEL_93;
      }

      LODWORD(v8) = 1024;
      goto LABEL_92;
    case 6u:
      LODWORD(v8) = 141;
      goto LABEL_92;
    case 7u:
      v22 = *(a1 + 1);
      if ((v22 - 833) < 0xFFFFFCC7)
      {
        goto LABEL_93;
      }

      v23 = *(a1 + 3);
      if (v23 > 0xEE0)
      {
        goto LABEL_93;
      }

      v8 = v22 + v23 + 5;
      if (v8 > a2)
      {
        return 35;
      }

      v24 = *(a1 + 5);
      if ((v24 & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_93;
      }

      v25 = v24 >> 60;
      if (v25 > 0xC)
      {
        goto LABEL_93;
      }

      v26 = 1 << v25;
      goto LABEL_80;
    case 8u:
      v31 = *(a1 + 1);
      if ((v31 - 833) < 0xFFFFFCC7)
      {
        goto LABEL_93;
      }

      v8 = v31 + 3;
      if (v8 > a2)
      {
        return 35;
      }

      v32 = *(a1 + 3);
      if ((v32 & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_93;
      }

      v33 = v32 >> 60;
      if (v33 > 0xC)
      {
        goto LABEL_93;
      }

      v26 = 1 << v33;
LABEL_80:
      if ((v26 & 0x1678) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_92;
    case 9u:
      if ((*(a1 + 1) - 0x1000000000000000) < 0xF000000000000001)
      {
        goto LABEL_93;
      }

      v16 = *(a1 + 17);
      if ((v16 - 1048577) < 0xFFF00000 || __CFADD__(*(a1 + 9), v16))
      {
        goto LABEL_93;
      }

      v8 = (v16 + 21);
      if (v8 <= a2)
      {
        goto LABEL_92;
      }

      return 35;
    case 0xAu:
    case 0xCu:
      if ((*(a1 + 1) - 0x1000000000000000) < 0xF000000000000001)
      {
        goto LABEL_93;
      }

      v9 = *(a1 + 17);
      if (!v9)
      {
        goto LABEL_93;
      }

      if ((v9 & 0xFFF) != 0)
      {
        goto LABEL_93;
      }

      v10 = *(a1 + 9);
      if ((v10 & 0xFFF) != 0 || __CFADD__(v10, v9))
      {
        goto LABEL_93;
      }

LABEL_54:
      LODWORD(v8) = 25;
      goto LABEL_92;
    case 0xBu:
      v17 = *(a1 + 1);
      if (!v17)
      {
        goto LABEL_93;
      }

      if (v17 >> 60)
      {
        goto LABEL_93;
      }

      v18 = *(a1 + 17);
      if ((v18 - 0x1000000000000000) < 0xF000000000000001)
      {
        goto LABEL_93;
      }

      v19 = *(a1 + 33);
      if (!v19)
      {
        goto LABEL_93;
      }

      if ((v19 & 0xFFF) != 0)
      {
        goto LABEL_93;
      }

      v20 = *(a1 + 9);
      if ((v20 & 0xFFF) != 0)
      {
        goto LABEL_93;
      }

      v21 = *(a1 + 25);
      if ((v21 & 0xFFF) != 0 || __CFADD__(v20, v19) || __CFADD__(v21, v19))
      {
        goto LABEL_93;
      }

      if (v18 != v17)
      {
        LODWORD(v8) = 41;
LABEL_92:
        result = 0;
        *a3 = v8;
        return result;
      }

      LODWORD(v8) = 41;
      if (v20 + v19 <= v21 || v21 + v19 <= v20)
      {
        goto LABEL_92;
      }

LABEL_93:
      result = 92;
      break;
    case 0xDu:
      v34 = *(a1 + 9);
      v35 = v34 - 65537;
      v8 = v34 + 13;
      if (v8 > a2)
      {
        v36 = 2;
      }

      else
      {
        v36 = 3;
      }

      v29 = v35 >= 0xFFFF0FFF;
      if (v35 >= 0xFFFF0FFF)
      {
        v30 = v36;
      }

      else
      {
        v30 = 4;
      }

LABEL_88:
      if (!v29)
      {
        LODWORD(v8) = 0;
      }

      if (v30 == 2)
      {
        return 35;
      }

      if (v30 == 3)
      {
        goto LABEL_92;
      }

      goto LABEL_93;
    case 0xEu:
      v11 = *(a1 + 1);
      v12 = v11 - 65537;
      v8 = v11 + 5;
      if (v8 > a2)
      {
        v13 = 2;
      }

      else
      {
        v13 = 3;
      }

      v14 = v12 >= 0xFFFF0FFF;
      if (v12 >= 0xFFFF0FFF)
      {
        v15 = v13;
      }

      else
      {
        v15 = 4;
      }

      if (!v14)
      {
        LODWORD(v8) = 0;
      }

      if (v15 == 2)
      {
        return 35;
      }

      if (v15 != 4)
      {
        goto LABEL_92;
      }

      goto LABEL_93;
    default:
      goto LABEL_93;
  }

  return result;
}

uint64_t delta_op_type_struct_size(unsigned int a1)
{
  if (a1 > 0xE)
  {
    return 0;
  }

  else
  {
    return dword_23D290D30[a1];
  }
}

uint64_t delta_canonicalize(unsigned int *a1, unsigned __int8 *a2, unint64_t *a3, void (*a4)(unsigned __int8 *, size_t, uint64_t), uint64_t a5)
{
  v5 = a1 + 9;
  v6 = *a1;
  if (v6)
  {
    return v6;
  }

  __n = 0;
  v12 = delta_validate_op(a2, *a3, &__n);
  v13 = 0;
  if (v12)
  {
LABEL_3:
    if (v12 == 35)
    {
      v6 = 0;
    }

    else
    {
      v6 = v12;
    }

    goto LABEL_6;
  }

  __dst = a1 + 30;
  v41 = (a1 + 14);
  while (1)
  {
    v15 = &a2[v13];
    v16 = __n;
    v13 += __n;
    if (*(a1 + 8) != 1)
    {
      LODWORD(v18) = 0;
      goto LABEL_37;
    }

    v17 = *v5;
    if (v17 != *v15)
    {
      goto LABEL_35;
    }

    LODWORD(v18) = 0;
    if (*v5 <= 0xAu)
    {
      break;
    }

    if (v17 != 11)
    {
      if (v17 != 12)
      {
        goto LABEL_36;
      }

      goto LABEL_19;
    }

    if (*(a1 + 26) != *(v15 + 17))
    {
      goto LABEL_35;
    }

    if (*(a1 + 10) != *(v15 + 1))
    {
      goto LABEL_35;
    }

    v19 = *(a1 + 42);
    if (v19 + *(a1 + 34) != *(v15 + 25) || *(a1 + 18) + v19 != *(v15 + 9))
    {
      goto LABEL_35;
    }

    v20 = 33;
    v21 = (a1 + 42);
LABEL_22:
    *v21 = *&v15[v20] + v19;
LABEL_72:
    v12 = delta_validate_op(&a2[v13], *a3 - v13, &__n);
    if (v12)
    {
      goto LABEL_3;
    }
  }

  if (v17 != 9)
  {
    if (v17 != 10)
    {
      goto LABEL_36;
    }

LABEL_19:
    if (*(a1 + 10) != *(v15 + 1))
    {
      goto LABEL_35;
    }

    v19 = *(a1 + 26);
    if (v19 + *(a1 + 18) != *(v15 + 9))
    {
      goto LABEL_35;
    }

    v20 = 17;
    v21 = (a1 + 26);
    goto LABEL_22;
  }

  if (*(a1 + 10) != *(v15 + 1) || (v22 = *(a1 + 26), *(a1 + 18) + v22 != *(v15 + 9)))
  {
LABEL_35:
    LODWORD(v18) = 0;
    goto LABEL_36;
  }

  v23 = *(v15 + 17);
  if (0x100000 - v22 >= v23)
  {
    v18 = v23;
  }

  else
  {
    v18 = (0x100000 - v22);
  }

  memcpy(&__dst[v22], v15 + 21, v18);
  v24 = *(a1 + 26) + v18;
  *(a1 + 26) = v24;
  a1[1] += v18;
  if (v24 < 0x100000)
  {
    goto LABEL_72;
  }

LABEL_36:
  a4(v5, a1[1], a5);
  *(a1 + 8) = 0;
LABEL_37:
  v25 = *v15;
  if ((v25 - 10) < 3)
  {
    memcpy(v5, v15, v16);
    a1[1] = v16;
    goto LABEL_39;
  }

  if (v25 == 9)
  {
    v30 = *(v15 + 17);
    if (v18 || v30 != 0x100000)
    {
      if (v18 < v30)
      {
        v32 = *v15;
        *(v5 + 13) = *(v15 + 13);
        *v5 = v32;
        *(a1 + 18) += v18;
        v33 = *(a1 + 26) - v18;
        *(a1 + 26) = v33;
        memcpy(__dst, &v15[v18 + 21], v33);
        a1[1] = v33 + 21;
LABEL_39:
        *(a1 + 8) = 1;
      }

      goto LABEL_71;
    }

LABEL_50:
    v31 = v15;
    goto LABEL_70;
  }

  if (v25 != 7)
  {
    goto LABEL_50;
  }

  memcpy(v5, v15, v16);
  v26 = *v41 >> 60;
  if (v26 == 4)
  {
    v34 = *(a1 + 6);
    if (v34 <= 3)
    {
      log_err("%s:%d: Corrupt xattr in ino %llu\n");
LABEL_55:
      v6 = 92;
      goto LABEL_7;
    }

    v35 = v41 + *(a1 + 5);
    if (*v35)
    {
      v36 = *(v35 + 1);
      if (v36 < 0x30 || v36 + 4 > v34)
      {
        log_err("%s:%d: Corrupt dstream in xattr ino %llu\n");
        goto LABEL_55;
      }

      *(v35 + 28) = 0;
    }

    goto LABEL_69;
  }

  if (v26 != 3)
  {
    goto LABEL_69;
  }

  v38 = *v41 & 0xFFFFFFFFFFFFFFFLL;
  v39 = a5;
  v27 = (v41 + *(a1 + 5));
  v28 = *(a1 + 6) - 92;
  v44 = 0;
  __n_4 = 0;
  v29 = xf_get_from_blob(v27 + 46, v28, 8, 0, &v44, &__n_4);
  if (v29 == 2)
  {
LABEL_68:
    *(v27 + 15) = 0;
    *(v27 + 6) &= ~8uLL;
    a5 = v39;
    goto LABEL_69;
  }

  v6 = v29;
  if (v29)
  {
    log_err("%s:%d: Hit error scanning blob in ino %llu, err %d\n", "delta_canonicalize_record", 1120, v38, v29);
    goto LABEL_59;
  }

  if (__n_4 > 0x27)
  {
    *(v44 + 16) = 0;
    goto LABEL_68;
  }

  log_err("%s:%d: Corrupt dstream ext in ino %llu\n", "delta_canonicalize_record", 1114, v38);
  v6 = 92;
LABEL_59:
  a5 = v39;
  if (v6)
  {
    goto LABEL_7;
  }

LABEL_69:
  v31 = v5;
LABEL_70:
  a4(v31, v16, a5);
LABEL_71:
  if (*v15 != 6)
  {
    goto LABEL_72;
  }

  v6 = 89;
LABEL_6:
  *a3 = v13;
LABEL_7:
  *a1 = v6;
  return v6;
}

uint64_t snap_meta_ext_obj_init(void *a1)
{
  v1 = a1[7];
  a1[47] = v1;
  a1[48] = v1 + 32;
  return 0;
}

uint64_t fs_lookup_snapshot_metadata_by_xid(uint64_t a1, uint64_t a2, unsigned __int16 **a3)
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v8[0] = 5242881;
  v8[1] = a2;
  v5 = lookup_jobj(a1, 3, 0, v8, a3);
  v6 = v5;
  if (v5)
  {
    log_err("%s:%d: %s Couldn't find snap_meta for xid %llu: %d\n", "fs_lookup_snapshot_metadata_by_xid", 445, (a1 + 4040), a2, v5);
  }

  return v6;
}

uint64_t fs_delete_clone_superblock(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 392) + 392);
  v7 = 0;
  v5 = obj_get(v4, 0x40000000, a2, &apfs_desc, 0, 0, 0, 0, &v7);
  if (!v5)
  {
    obj_delete_and_free(v7, a3);
    obj_release(v7);
  }

  return v5;
}

uint64_t fs_delete_supplemental_tree(uint64_t a1, int a2, unint64_t a3, unint64_t a4, void *a5)
{
  v9 = *(*(a1 + 392) + 392);
  v16 = 0;
  result = obj_get(v9, 0x40000000, a3, &apfs_desc, 0, 0, 0, a4, &v16);
  if (!result)
  {
    v11 = v16[47];
    if (a2 == 5)
    {
      v12 = 1040;
      v13 = 1032;
    }

    else
    {
      if (a2 != 6)
      {
        obj_release(v16);
        return 45;
      }

      v12 = 1044;
      v13 = 1048;
    }

    v14 = *(v11 + v12);
    v15 = *(v11 + v13);
    obj_release(v16);
    if (v15)
    {
      return supplemental_tree_destroy(a1, v14, a2, a4, v15, a5);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t fs_delete_snapshot_metadata_tree(uint64_t a1, unint64_t a2, void *a3)
{
  v9 = 0;
  tree = jfs_get_tree(a1, 3, 0, &v9);
  if (tree)
  {
    return tree;
  }

  v7 = btree_delete(v9, a2, a3);
  obj_release(v9);
  if (!v7)
  {
    pthread_mutex_lock((a1 + 1472));
    *(*(a1 + 376) + 152) = 0;
    fs_sb_dirty(a1, a2);
    pthread_mutex_unlock((a1 + 1472));
  }

  return v7;
}

uint64_t pfkur_tree_key_cmp(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 8 && a5 == 8)
  {
    result = 0;
    v7 = *a2 > *a4;
    if (*a2 < *a4)
    {
      v7 = -1;
    }

    *a6 = v7;
  }

  return result;
}

uint64_t spaceman_metazone_get_size(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5, void *a6)
{
  if (!a4)
  {
    return 28;
  }

  v6 = a1;
  if (a1 <= a2 || a4 < a1)
  {
    if (0x180000000 * (a2 >> 12) > a4)
    {
      return 28;
    }

    if (a4 >> 34)
    {
      v9 = 0x1000000000;
      if (a4 >= 0x1000000000)
      {
        v10 = 0x1000000000;
      }

      else
      {
        v10 = a4;
      }

      v8 = v10 >> 5;
      if (a4 >= 0x1000000001)
      {
        if (a4 - 0x1000000000 < 0x1000000000)
        {
          v9 = a4 - 0x1000000000;
        }

        v8 += (v9 * 0x666666666666667uLL) >> 64;
        if (a4 >= 0x2000000001)
        {
          v11 = a4 - 0x2000000000;
          if (a4 - 0x2000000000 >= 0x2000000000)
          {
            v11 = 0x2000000000;
          }

          v8 += v11 >> 7;
          if (a4 >= 0x4000000001)
          {
            v8 += (a4 - 0x4000000000) / 0xA0;
          }
        }
      }
    }

    else
    {
      v8 = 0x20000000;
    }

    v6 = v8 * (a2 >> 12);
    if (v6 >= a4 >> 2)
    {
      v6 = a4 >> 2;
    }
  }

  result = 0;
  v12 = v6 / a2;
  *a5 = v12 * a2;
  *a6 = a3 - v12;
  return result;
}

unint64_t spaceman_metazone_get_partitions(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a5)
  {
    *a5 = (a2 >> 1) / result + a3;
  }

  if (a6)
  {
    v6 = (a2 >> 4) / result;
    if (v6 >= 0x8000000 / result)
    {
      v6 = 0x8000000 / result;
    }

    *a6 = a4 - v6;
  }

  return result;
}

uint64_t get_timestamp()
{
  v1.tv_sec = 0;
  v1.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &v1);
  return timespec_to_apfs_timestamp(&v1.tv_sec);
}

uint64_t timespec_to_apfs_timestamp(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = v2 / 1000000000;
  v4 = v2 % 1000000000;
  if (*a1 < 0 && v2 >= 1)
  {
    v5 = v3 + 1;
    v4 -= 1000000000;
  }

  else
  {
    v6 = v2 >= 0;
    if (v2 < 0)
    {
      v5 = v3 - 1;
    }

    else
    {
      v5 = v2 / 1000000000;
    }

    if (v6)
    {
      v7 = v4;
    }

    else
    {
      v7 = v4 + 1000000000;
    }

    if (v1 >= 1)
    {
      v4 = v7;
    }

    else
    {
      v5 = v3;
    }
  }

  v8 = v1 + v5;
  if (__OFADD__(v1, v5) || (v9 = 1000000000 * v8, (v8 * 1000000000) >> 64 != (1000000000 * v8) >> 63) || (result = v4 + v9, __OFADD__(v4, v9)))
  {
    if (v1 > 0)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      return 0x8000000000000000;
    }
  }

  return result;
}

uint64_t omap_key_cmp(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 16 && a5 == 16)
  {
    if (*a2 >= *a4)
    {
      if (*a2 > *a4)
      {
        v7 = 1;
      }

      else
      {
        v8 = a2[1];
        v9 = a4[1];
        v10 = v8 >= v9;
        v7 = v8 > v9;
        if (!v10)
        {
          v7 = -1;
        }
      }
    }

    else
    {
      v7 = -1;
    }

    result = 0;
    *a6 = v7;
  }

  return result;
}

uint64_t omap_snapshot_key_cmp(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 8 && a5 == 8)
  {
    result = 0;
    v7 = *a2 > *a4;
    if (*a2 < *a4)
    {
      v7 = -1;
    }

    *a6 = v7;
  }

  return result;
}

uint64_t omap_map_tree_get(uint64_t a1, uint64_t a2, int a3, unint64_t a4, uint64_t *a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = *(a2 + 472);
  if ((a3 & 1) == 0 && v9)
  {
    *a5 = v9;
    obj_retain(v9);
LABEL_6:
    extended = 0;
    goto LABEL_7;
  }

  if (v9)
  {
    *a5 = v9;
    obj_retain(v9);
    if ((a3 & 1) == 0)
    {
      goto LABEL_6;
    }

    v17 = obj_modify(*a5, (*(*(a2 + 376) + 40) >> 29) & 2, a4);
    if (v17)
    {
      extended = v17;
      obj_release(*a5);
      *a5 = 0;
      goto LABEL_7;
    }

LABEL_17:
    if (obj_oid(*a5) != *(*(a2 + 376) + 48))
    {
      *(*(a2 + 376) + 48) = obj_oid(*a5);
      obj_dirty(a2, a4, 0);
    }

    goto LABEL_6;
  }

  v13 = *(a2 + 376);
  v14 = *(v13 + 40);
  v15 = *(v13 + 48);
  v18[1] = 0;
  v19 = 0u;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  v18[0] = omap_key_cmp;
  v18[2] = 0x20000000BLL;
  if (v14 != 2)
  {
    extended = 22;
    goto LABEL_7;
  }

  extended = btree_get_extended(a1, v14 & 0xFFFF0000, v15, 0, a3, v18, a4, a5);
  if (!extended)
  {
    v16 = 0;
    atomic_compare_exchange_strong((a2 + 472), &v16, *a5);
    if (!v16)
    {
      obj_retain(*a5);
    }

    if ((a3 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_7:
  v11 = *MEMORY[0x277D85DE8];
  return extended;
}

uint64_t omap_init_phys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 22;
  }

  result = 0;
  *(a1 + 32) = *a3;
  *(a1 + 40) = *(a3 + 4);
  return result;
}

uint64_t omap_init(void *a1)
{
  v2 = a1[7];
  v3 = *(v2 + 44);
  v4 = v3 == 1073741826 || v3 == -2147483646;
  if (v4 && ((v5 = *(v2 + 40), v5 != -2147483646) ? (v6 = v5 == 1073741826) : (v6 = 1), v6) || (result = nx_corruption_detected_int(*(*a1 + 392)), !result))
  {
    result = 0;
    a1[47] = v2;
  }

  return result;
}

uint64_t omap_obj_destroy(void *a1)
{
  v2 = a1[59];
  if (v2 && !*(*a1 + 940))
  {
    obj_release(v2);
  }

  return 0;
}

uint64_t omap_reap(uint64_t *a1, char a2, int *a3, uint64_t a4, unint64_t a5)
{
  v131 = *MEMORY[0x277D85DE8];
  v8 = a1[47];
  v9 = a1[1];
  v10 = *(*a1 + 392);
  if (v9)
  {
    v11 = a1[1];
  }

  else
  {
    v11 = *(*a1 + 392);
  }

  v109 = 0;
  v110 = 0;
  v107 = 0;
  v108 = 0;
  v12 = *(*(v10 + 376) + 36);
  if ((a2 & 2) == 0)
  {
    if (*a3)
    {
      if (v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *a3 = 1;
      if (v9)
      {
LABEL_7:
        extended = obj_modify(v9, 0, a5);
        if (extended)
        {
          if (obj_type(v9) == 13)
          {
            v14 = (v9 + 505);
          }

          else
          {
            v14 = (v9[48] + 212);
          }

          log_err("%s:%d: %s obj_modify() failed: %d\n", "omap_reap", 309, v14, extended);
        }

LABEL_25:
        v20 = *a3;
        if (*a3 == 1)
        {
          v124 = 0;
          *&v113[0] = 0;
          spaceman_currently_available_space(v11, 0, &v124, v113, 0, 0);
          v21 = omap_map_tree_get(v11, a1, 0, 0, &v108);
          if (v21)
          {
            extended = v21;
            if (obj_type(v11) == 13)
            {
              v22 = (v11 + 4040);
            }

            else
            {
              v22 = (*(v11 + 384) + 212);
            }

            log_err("%s:%d: %s failed to get omap tree for reaping: %d\n", "omap_reap", 322, v22, extended);
            goto LABEL_82;
          }

          v106 = v8;
          v24 = 0;
          v25 = 1024;
          if (*&v113[0] < 0x7D1uLL)
          {
            v25 = 102;
          }

          if (*&v113[0] >= 0x3E9uLL)
          {
            v26 = v25;
          }

          else
          {
            v26 = 51;
          }

          v107 = 0x1000000010;
          v95 = v12 - 1;
          v97 = v26;
          v100 = (v11 + 4040);
          while (1)
          {
            v27 = bt_lookup_variant(v108, 0, a3 + 1, &v107 + 1, 0x10u, &v109, &v107, 4u, 0, 0);
            if (v27)
            {
              break;
            }

            if (v109)
            {
              v107 = 0x1000000010;
            }

            else
            {
              v102 = v12;
              v28 = (v95 + HIDWORD(v109)) / v12;
              v29 = spaceman_free(v11, 64, v110, v28, a5);
              if (v29)
              {
                v30 = v29;
                v31 = obj_type(v11);
                v32 = (v11 + 4040);
                if (v31 != 13)
                {
                  v32 = (*(v11 + 384) + 212);
                }

                log_err("%s:%d: %s spaceman_free(%lld, %lld) failed: %d\n", "omap_reap", 349, v32, v110, v28, v30);
              }

              obj_cache_remove(*(v10 + 392), v9, *(a3 + 1), *(a3 + 2));
              v24 += v28;
              if (v24 >= v97)
              {
                extended = 36;
                goto LABEL_48;
              }

              v107 = 0x1000000010;
              v12 = v102;
            }
          }

          extended = v27;
          if (v27 == 36)
          {
LABEL_48:
            v8 = v106;
            goto LABEL_60;
          }

          extended = btree_delete(v108, a5, 0);
          v8 = v106;
          if (extended)
          {
            if (obj_type(v11) != 13)
            {
              v100 = (*(v11 + 384) + 212);
            }

            log_err("%s:%d: %s tree_delete() failed: %d\n", "omap_reap", 373, v100, extended);
          }

          *a3 = 2;
LABEL_60:
          obj_release(v108);
          v20 = *a3;
        }

        if (v20 != 2)
        {
          goto LABEL_82;
        }

        v33 = *(v8 + 56);
        if (v33)
        {
          v34 = *(v8 + 44);
          v125 = 0u;
          v130 = 0;
          v129 = 0u;
          v128 = 0u;
          v127 = 0u;
          v126 = 0u;
          v124 = omap_snapshot_key_cmp;
          DWORD2(v125) = 19;
          if (v34 == 2)
          {
            extended = btree_get_extended(v11, v34 & 0xFFFF0000, v33, 0, 0, &v124, 0, &v108);
            if (!extended)
            {
              extended = btree_delete(v108, a5, 0);
              if (extended)
              {
                if (obj_type(v11) == 13)
                {
                  v35 = (v11 + 4040);
                }

                else
                {
                  v35 = (*(v11 + 384) + 212);
                }

                log_err("%s:%d: %s tree_delete() failed: %d\n", "omap_reap", 390, v35, extended);
              }

              obj_release(v108);
              goto LABEL_73;
            }
          }

          else
          {
            extended = 22;
          }

          if (obj_type(v11) == 13)
          {
            v36 = (v11 + 4040);
          }

          else
          {
            v36 = (*(v11 + 384) + 212);
          }

          log_err("%s:%d: %s failed to get omap snapshot tree for reaping: %d\n", "omap_reap", 386, v36, extended);
        }

LABEL_73:
        obj_delete_and_free(a1, a5);
        *a3 = -1;
        goto LABEL_82;
      }
    }

    extended = 0;
    goto LABEL_25;
  }

  v122 = 0;
  v123 = 0;
  v120[1] = 0;
  v121 = 0;
  v120[0] = 0;
  v119 = 0uLL;
  v118 = 0uLL;
  v117 = 0uLL;
  v116 = 0uLL;
  v114 = 0;
  v115 = 0;
  memset(v113, 0, sizeof(v113));
  v111 = 0;
  v112 = 0;
  spaceman_currently_available_space(v11, 0, &v112, &v111, 0, 0);
  if (v111 >= 0x7D1)
  {
    v15 = 1024;
  }

  else
  {
    v15 = 102;
  }

  if (v111 >= 0x3E9)
  {
    v16 = v15;
  }

  else
  {
    v16 = 51;
  }

  obj_lock(a1, 2);
  v17 = *(a1 + 96);
  if (v17)
  {
      ;
    }
  }

  v105 = v16;
  *(a1 + 96) = v17 | 1;
  v18 = omap_obj_modify(v11, a1, a5);
  if (v18)
  {
    LODWORD(extended) = v18;
    if (obj_type(v11) == 13)
    {
      v19 = (v11 + 4040);
    }

    else
    {
      v19 = (*(v11 + 384) + 212);
    }

    log_err("%s:%d: %s error modifying omap: %d\n", "omap_cleanup", 1431, v19, extended);
    if (extended == 28)
    {
      extended = 36;
    }

    else
    {
      extended = extended;
    }

    goto LABEL_78;
  }

  v23 = omap_map_tree_get(v11, a1, 1, a5, &v121);
  if (v23)
  {
    extended = v23;
    if (obj_type(v11) != 13)
    {
      v38 = *(v11 + 384) + 212;
    }

    log_err("%s:%d: %s error getting mapping tree: %d\n");
    goto LABEL_78;
  }

  if (*a3)
  {
    v37 = 0;
  }

  else
  {
    obj_unlock(a1, 2);
    v119 = 0uLL;
    v115 = 0x1000000010;
    bt_iterator_init_with_hint(v113, v121, 0, 0, &v119, 16, 0x10u, &v117, 0x10u, 0);
    v37 = 0;
    if (!bt_iterator_ended(v113))
    {
      v37 = 0;
      v99 = v12 - 1;
      v104 = v12;
      while (v119 < *(v8 + 88))
      {
        v62 = bt_remove(v121, 0, &v119, 0x10u, a5);
        if (v62)
        {
          v63 = v62;
          if (obj_type(v11) == 13)
          {
            log_err("%s:%d: %s remove mapping (%lld, %lld) below watermark failed: %d\n", "omap_cleanup", 1456, (v11 + 4040), v119, *(&v119 + 1), v63);
          }

          else
          {
            log_err("%s:%d: %s remove mapping (%lld, %lld) below watermark failed: %d\n", "omap_cleanup", 1456, (*(v11 + 384) + 212), v119, *(&v119 + 1), v63);
          }
        }

        if ((v117 & 1) == 0)
        {
          v64 = (v99 + DWORD1(v117)) / v104;
          v65 = spaceman_free(v11, 64, *(&v117 + 1), v64, a5);
          if (v65)
          {
            v66 = v65;
            v67 = obj_type(v11);
            v68 = (v11 + 4040);
            if (v67 != 13)
            {
              v68 = (*(v11 + 384) + 212);
            }

            log_err("%s:%d: %s spaceman_free(%lld, %d) failed: %d\n", "omap_cleanup", 1463, v68, *(&v117 + 1), v64, v66);
          }

          obj_cache_remove(*(v10 + 392), v9, v119, *(&v119 + 1));
        }

        v12 = v104;
        if (v105 == v37)
        {
          goto LABEL_198;
        }

        ++v37;
        bt_iterator_next(v113);
        if (bt_iterator_ended(v113))
        {
          break;
        }
      }
    }

    obj_lock(a1, 2);
  }

  v41 = *(v8 + 56);
  if (!v41)
  {
    goto LABEL_218;
  }

  v101 = v37;
  v103 = v12;
  if (*a3 && *(a3 + 4) != -1)
  {
    goto LABEL_88;
  }

  v58 = *(v8 + 44);
  v125 = 0u;
  v130 = 0;
  v129 = 0u;
  v128 = 0u;
  v127 = 0u;
  v126 = 0u;
  v124 = omap_snapshot_key_cmp;
  DWORD2(v125) = 19;
  if (v58 != 2)
  {
    extended = 22;
LABEL_150:
    if (obj_type(v11) != 13)
    {
      v61 = *(v11 + 384) + 212;
    }

    goto LABEL_156;
  }

  extended = btree_get_extended(v11, v58 & 0xFFFF0000, v41, 0, 0, &v124, a5, &v122);
  if (extended)
  {
    goto LABEL_150;
  }

  if (!*a3)
  {
    *(a3 + 2) = 0;
    *(a3 + 3) = 0;
    v77 = (a3 + 4);
    v123 = 0;
    v115 = 0x800000010;
    bt_iterator_init_with_hint(v113, v122, 0, 0, &v123, 8, 8u, v120, 0x10u, 0);
    while (!bt_iterator_ended(v113))
    {
      v78 = v120[0];
      v79 = *v77;
      if (v120[0])
      {
        if (v79)
        {
          if (((a3[1] ^ LODWORD(v120[0])) & 2) != 0)
          {
            break;
          }

          *(a3 + 3) = v123;
        }

        else
        {
          v80 = v123;
          *(a3 + 2) = v123;
          *(a3 + 3) = v80;
          a3[1] = v78;
        }
      }

      else if (v79)
      {
        goto LABEL_213;
      }

      bt_iterator_next(v113);
    }

    v79 = *v77;
    if (*v77)
    {
LABEL_213:
      *(a3 + 1) = v79;
      v115 = 0x800000010;
      v81 = bt_lookup_variant(v122, 0, a3 + 1, &v115 + 1, 8u, v120, &v115, 2u, 0, 0);
      if (v81)
      {
        extended = v81;
        if (v81 != 2)
        {
          if (obj_type(v11) != 13)
          {
            v87 = *(v11 + 384) + 212;
          }

          goto LABEL_243;
        }

        *(a3 + 1) = 0;
      }

      *(a3 + 5) = 0;
      *(a3 + 6) = 0;
      if (obj_type(v11) == 13)
      {
        v82 = (v11 + 4040);
      }

      else
      {
        v82 = (*(v11 + 384) + 212);
      }

      log_debug("%s:%d: %s started cleaning snapshots %lld-%lld\n", "omap_cleanup", 1556, v82, *(a3 + 2), *(a3 + 3));
      a1[60] = *(a3 + 1);
      v60 = *(a3 + 3);
      a1[61] = v60;
      *a3 = 1;
      *(a1 + 96) |= 2u;
      v59 = (a3 + 8);
LABEL_228:
      *v59 = v60;
      v115 = 0x800000010;
      v84 = bt_lookup_variant(v122, 0, v59, &v115 + 1, 8u, v120, &v115, 4u, 0, 0);
      if (v84)
      {
        extended = v84;
        if (v84 != 2)
        {
          if (obj_type(v11) != 13)
          {
            v85 = *(v11 + 384) + 212;
          }

          goto LABEL_243;
        }

        *v59 = -1;
      }

      goto LABEL_88;
    }

LABEL_218:
    extended = 0;
    goto LABEL_78;
  }

  v59 = (a3 + 8);
  if (*(a3 + 4) == -1)
  {
    v60 = *(a3 + 3);
    goto LABEL_228;
  }

LABEL_88:
  if (v122)
  {
    obj_release(v122);
    v122 = 0;
  }

  v96 = a3[1];
  v93 = *(a3 + 3);
  v94 = *(a3 + 1);
  v92 = *(a3 + 4);
  v119 = *(a3 + 10);
  v115 = 0x1000000010;
  v42 = bt_lookup_variant(v121, 0, &v119, &v115 + 1, 0x10u, &v117, &v115, 3u, 0, 0);
  if (v42)
  {
    extended = v42;
    if (v42 != 2)
    {
      goto LABEL_78;
    }

    *&v119 = 0;
  }

  obj_unlock(a1, 2);
  v43 = v119;
  if (!v119)
  {
    obj_lock(a1, 2);
    goto LABEL_173;
  }

  v44 = 0;
  v98 = 0;
  v91 = (v11 + 4040);
  while (1)
  {
    v45 = v44;
    if (v43 != v98)
    {
      if (v101 >= v105)
      {
        *(a3 + 10) = v119;
LABEL_198:
        obj_lock(a1, 2);
        extended = 36;
        goto LABEL_78;
      }

      v45 = 0;
    }

    v98 = v43;
    v118 = v119;
    v115 = 0x1000000010;
    v46 = bt_lookup_variant(v121, 0, &v118, &v115 + 1, 0x10u, &v116, &v115, 4u, 0, 0);
    if (v46)
    {
      break;
    }

LABEL_101:
    v44 = (v45 + 1);
    if (*(&v119 + 1) <= v94 || *(&v119 + 1) > v93)
    {
      if ((v96 & 2) != 0 && v118 == v119)
      {
        extended = 0;
        if (*(&v118 + 1) <= v94 || *(&v118 + 1) > v92)
        {
          goto LABEL_118;
        }

        extended = 0;
        v48 = v116 & 1;
      }

      else
      {
        extended = 0;
        v48 = 0;
      }
    }

    else
    {
      if ((v96 & 2) != 0)
      {
        goto LABEL_114;
      }

      extended = 0;
      if (v118 != v119)
      {
LABEL_118:
        v48 = 0;
        goto LABEL_129;
      }

      v48 = 0;
      if (*(&v118 + 1) <= v92)
      {
LABEL_114:
        v49 = bt_remove(v121, 0, &v119, 0x10u, a5);
        if (v49)
        {
          v50 = v49;
          if (obj_type(v11) == 13)
          {
            log_err("%s:%d: %s remove mapping (%lld, %lld) failed: %d\n", "omap_cleanup", 1677, v91, v119, *(&v119 + 1), v50);
          }

          else
          {
            log_err("%s:%d: %s remove mapping (%lld, %lld) failed: %d\n", "omap_cleanup", 1677, (*(v11 + 384) + 212), v119, *(&v119 + 1), v50);
          }
        }

        v51 = (v103 - 1 + DWORD1(v117)) / v103;
        extended = spaceman_free(v11, 64, *(&v117 + 1), v51, a5);
        if (extended)
        {
          v52 = obj_type(v11);
          v53 = (v11 + 4040);
          if (v52 != 13)
          {
            v53 = (*(v11 + 384) + 212);
          }

          log_err("%s:%d: %s spaceman_free(%lld, %d) failed: %d\n", "omap_cleanup", 1683, v53, *(&v117 + 1), v51, extended);
        }

        if ((v96 & 2) == 0)
        {
          obj_cache_remove(*(v10 + 392), v9, v119, *(&v119 + 1));
        }

        v54 = (v96 >> 1) & 1;
        if (!v45)
        {
          LOBYTE(v54) = 1;
        }

        v48 = (v116 & v54);
        v44 = v45;
      }
    }

LABEL_129:
    if (v116)
    {
      if (v48)
      {
        v55 = bt_remove(v121, 0, &v118, 0x10u, a5);
        if (v55)
        {
          v56 = v55;
          if (obj_type(v11) == 13)
          {
            log_err("%s:%d: %s remove mapping (%lld, %lld) failed: %d\n", "omap_cleanup", 1710, v91, v118, *(&v118 + 1), v56);
          }

          else
          {
            log_err("%s:%d: %s remove mapping (%lld, %lld) failed: %d\n", "omap_cleanup", 1710, (*(v11 + 384) + 212), v118, *(&v118 + 1), v56);
          }
        }
      }

      v115 = 0x1000000010;
      v57 = bt_lookup_variant(v121, 0, &v118, &v115 + 1, 0x10u, &v116, &v115, 4u, 0, 0);
      extended = v57;
      if (v57)
      {
        if (v57 == 2)
        {
          extended = 0;
          *&v118 = 0;
        }

        else if (obj_type(v11) == 13)
        {
          log_err("%s:%d: %s lookup returned unexpected error while iterating: %d\n", "omap_cleanup", 1727, v91, extended);
        }

        else
        {
          log_err("%s:%d: %s lookup returned unexpected error while iterating: %d\n", "omap_cleanup", 1727, (*(v11 + 384) + 212), extended);
        }
      }
    }

    ++v101;
    v119 = v118;
    v117 = v116;
    v43 = v118;
    if (!v118)
    {
      obj_lock(a1, 2);
      if (extended)
      {
        goto LABEL_78;
      }

LABEL_173:
      v69 = *(v8 + 44);
      v70 = *(v8 + 56);
      v125 = 0u;
      v130 = 0;
      v129 = 0u;
      v128 = 0u;
      v127 = 0u;
      v126 = 0u;
      v124 = omap_snapshot_key_cmp;
      DWORD2(v125) = 19;
      if (v69 == 2)
      {
        extended = btree_get_extended(v11, v69 & 0xFFFF0000, v70, 0, 1, &v124, a5, &v122);
        if (!extended)
        {
          if (obj_oid(v122) != *(v8 + 56))
          {
            *(v8 + 56) = obj_oid(v122);
            obj_dirty(a1, a5, 0);
          }

          v123 = v94;
          while (1)
          {
            v115 = 0x800000010;
            v71 = bt_lookup_variant(v122, 0, &v123, &v115 + 1, 8u, v120, &v115, 4u, 0, 0);
            if (v71)
            {
              break;
            }

            v72 = v123;
            if (v123 < v92)
            {
              v73 = bt_remove(v122, 0, &v123, HIDWORD(v115), a5);
              if (v73)
              {
                extended = v73;
                if (obj_type(v11) != 13)
                {
                  v89 = *(v11 + 384) + 212;
                }

                log_err("%s:%d: %s error updating snapshot tree: %d\n");
                goto LABEL_78;
              }

              --*(v8 + 36);
              if (obj_type(v11) == 13)
              {
                log_debug("%s:%d: %s completed cleaning snapshot %lld, om_snap_count %d om_most_recent_snap %lld\n", "omap_cleanup", 1781, (v11 + 4040), v123, *(v8 + 36), *(v8 + 64));
              }

              else
              {
                log_debug("%s:%d: %s completed cleaning snapshot %lld, om_snap_count %d om_most_recent_snap %lld\n", "omap_cleanup", 1781, (*(v11 + 384) + 212), v123, *(v8 + 36), *(v8 + 64));
              }

              if ((v96 & 2) != 0)
              {
                v74 = v123;
                if (v123 >= *(v8 + 72))
                {
                  v75 = *(v8 + 80);
                  if (v123 <= v75)
                  {
                    *(v8 + 72) = v123;
                    if (v74 >= v75)
                    {
                      *(v8 + 72) = 0;
                      *(v8 + 80) = 0;
                    }
                  }
                }
              }

              obj_dirty(a1, a5, 0);
              v72 = v123;
            }

            if (v72 >= v92)
            {
              goto LABEL_220;
            }
          }

          extended = v71;
          if (v71 == 2)
          {
LABEL_220:
            if (v9 && (v96 & 2) != 0)
            {
              obj_cache_remove_reverted_fs_objects(*(v10 + 392), v9, v94 + 1, v93);
            }

            if (*(v8 + 36))
            {
              v123 = -1;
              v115 = 0x800000010;
              v83 = bt_lookup_variant(v122, 0, &v123, &v115 + 1, 8u, v120, &v115, 1u, 0, 0);
              if (v83)
              {
                extended = v83;
                goto LABEL_78;
              }

              *(v8 + 64) = v123;
            }

            else
            {
              *(v8 + 64) = 0;
              v86 = btree_delete(v122, a5, 0);
              if (v86)
              {
                extended = v86;
                if (obj_type(v11) != 13)
                {
                  v90 = *(v11 + 384) + 212;
                }

                log_err("%s:%d: %s error deleting empty snapshot tree: %d\n");
                goto LABEL_78;
              }

              *(v8 + 56) = 0;
              obj_dirty(a1, a5, 0);
            }

            *a3 = 0;
            *(a1 + 96) &= ~2u;
            a1[60] = 0;
            a1[61] = 0;
            if (*(v8 + 56))
            {
              extended = 36;
            }

            else
            {
              extended = 0;
            }

            goto LABEL_78;
          }

          if (obj_type(v11) != 13)
          {
            v88 = *(v11 + 384) + 212;
          }

LABEL_243:
          log_err("%s:%d: %s error searching snapshot tree: %d\n");
          goto LABEL_78;
        }
      }

      else
      {
        extended = 22;
      }

      if (obj_type(v11) != 13)
      {
        v76 = *(v11 + 384) + 212;
      }

LABEL_156:
      log_err("%s:%d: %s unable to get snapshot tree: %d\n");
      goto LABEL_78;
    }
  }

  extended = v46;
  if (v46 == 2)
  {
    *&v118 = 0;
    goto LABEL_101;
  }

  if (obj_type(v11) != 13)
  {
    v91 = (*(v11 + 384) + 212);
  }

  log_err("%s:%d: %s lookup returned unexpected error while iterating: %d\n", "omap_cleanup", 1653, v91, extended);
  *(a3 + 10) = v119;
  obj_lock(a1, 2);
LABEL_78:
  *(a1 + 96) &= ~1u;
  obj_unlock(a1, 2);
  if (v122)
  {
    obj_release(v122);
  }

  if (v121)
  {
    obj_release(v121);
  }

LABEL_82:
  v39 = *MEMORY[0x277D85DE8];
  return extended;
}

uint64_t omap_destroy(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  if (obj_type(a1) == 13)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  v9 = a1;
  if (v8)
  {
    v9 = *(v8 + 392);
  }

  v20 = 0;
  if (!xid_is_current_tx(v9, a3))
  {
    return 22;
  }

  v10 = obj_get(*(v9 + 392), 0x40000000, a2, &om_desc, 0, v8, 0, a3, &v20);
  if (!v10)
  {
    if (v8)
    {
      v11 = obj_oid(v8);
    }

    else
    {
      v11 = 0;
    }

    v12 = obj_type_and_flags(v20);
    v13 = obj_size_phys(v20);
    v14 = obj_oid(v20);
    if (a4)
    {
      v15 = nx_reaper_add(v9, v12, v13, v11, v14, a3, 0, a4);
    }

    else
    {
      v15 = nx_reaper_add_sub_object(v9, v12, v13, v11, v14, a3, 0);
    }

    v10 = v15;
    if (v15)
    {
      if (obj_type(a1) == 13)
      {
        v16 = (a1 + 4040);
      }

      else
      {
        v16 = (*(a1 + 384) + 212);
      }

      v17 = obj_oid(v20);
      v18 = obj_type_and_flags(v20);
      log_err("%s:%d: %s error adding omap 0x%llx type 0x%x to reap list: %d\n", "omap_destroy", 522, v16, v17, v18, v10);
    }

    obj_release(v20);
  }

  return v10;
}

uint64_t omap_obj_get(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = obj_type(a1);
  v9 = 0;
  v10 = a1;
  if (a1 && v8 == 13)
  {
    v10 = *(a1 + 392);
    if (*(a1 + 504))
    {
      v9 = *(a1 + 504);
    }

    else
    {
      v9 = a1;
    }
  }

  if ((a2 & 1) == 0)
  {
LABEL_9:
    if (v9)
    {
      pthread_mutex_lock((v9 + 1152));
      v12 = (v9 + 3632);
      v13 = 128;
      v14 = v9;
    }

    else
    {
      pthread_mutex_lock((v10 + 672));
      v12 = (v10 + 736);
      v13 = 160;
      v14 = v10;
    }

    v15 = *v12;
    *a4 = *v12;
    v16 = *(*(v14 + 376) + v13);
    if (v15)
    {
      obj_retain(v15);
      if ((a2 & 1) == 0)
      {
        goto LABEL_25;
      }

      v17 = obj_modify(*a4, a2, a3);
      if (v17)
      {
        v11 = v17;
        obj_release(*a4);
        goto LABEL_18;
      }
    }

    else
    {
      v18 = obj_get(*(v10 + 392), a2 | 0x40000000, v16, &om_desc, 0, v9, 0, a3, a4);
      if (v18)
      {
        v11 = v18;
LABEL_18:
        if (v9)
        {
          v19 = (v9 + 1152);
        }

        else
        {
          v19 = (v10 + 672);
        }

        goto LABEL_31;
      }

      v20 = *a4;
      v21 = (v9 + 3632);
      if (!v9)
      {
        v21 = (v10 + 736);
      }

      *v21 = v20;
      obj_retain(v20);
      if ((a2 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    if (obj_oid(*a4) != v16)
    {
      v22 = obj_oid(*a4);
      if (v9)
      {
        *(*(v9 + 376) + 128) = v22;
        fs_sb_dirty(v9, a3);
        goto LABEL_26;
      }

      *(*(v10 + 376) + 160) = v22;
      obj_dirty(a1, a3, 0);
LABEL_30:
      v11 = 0;
      v19 = (v10 + 672);
      goto LABEL_31;
    }

LABEL_25:
    if (v9)
    {
LABEL_26:
      v11 = 0;
      v19 = (v9 + 1152);
LABEL_31:
      pthread_mutex_unlock(v19);
      return v11;
    }

    goto LABEL_30;
  }

  v11 = obj_modify(a1, 0, a3);
  if (!v11)
  {
    a2 = a2 | 2;
    goto LABEL_9;
  }

  return v11;
}

uint64_t omap_checkpoint_traverse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = obj_type(a1);
  v22 = 0uLL;
  if (a4 == 2)
  {
    if (v8 == 13)
    {
      v9 = a1;
    }

    else
    {
      v9 = 0;
    }

    *(a3 + 8) = v9;
  }

  if ((*(a3 + 20) & 0x40) != 0)
  {
    goto LABEL_22;
  }

  obj_lock(a3, 1);
  v10 = obj_type_is_or_contains_ephemeral(*(*(a3 + 376) + 40));
  v11 = *(a3 + 376);
  if (!v10 || !*(v11 + 48))
  {
LABEL_12:
    if (obj_type_is_or_contains_ephemeral(*(v11 + 44)) && (v14 = *(a3 + 376), (v15 = *(v14 + 56)) != 0))
    {
      v16 = *(v14 + 44);
      v24 = 0u;
      v25 = 0u;
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
      v23 = omap_snapshot_key_cmp;
      DWORD2(v24) = 19;
      if (v16 != 2)
      {
        obj_unlock(a3, 1);
        v18 = *(&v22 + 1);
        if (!*(&v22 + 1))
        {
          v17 = v22;
          extended = 22;
          if (!v22)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        }

        extended = 22;
        goto LABEL_35;
      }

      extended = btree_get_extended(a1, v16 & 0xFFFF0000, v15, 0, 0, &v23, 0, &v22);
      obj_unlock(a3, 1);
      if (extended)
      {
        goto LABEL_32;
      }
    }

    else
    {
      obj_unlock(a3, 1);
    }

    if ((obj_type_and_flags(a3) & 0x80000000) == 0)
    {
      v18 = *(&v22 + 1);
      v17 = v22;
      if (v22 != 0)
      {
        if (!*(&v22 + 1))
        {
          if (!v22)
          {
LABEL_22:
            extended = 0;
            goto LABEL_40;
          }

          goto LABEL_38;
        }

        goto LABEL_34;
      }

      obj_set_skip_checkpoint_traverse(a3, 1);
      goto LABEL_27;
    }

    if (a4 == 2)
    {
      v19 = obj_checkpoint_known(a3);
    }

    else
    {
      if (a4 != 1)
      {
LABEL_27:
        extended = 0;
        goto LABEL_32;
      }

      v19 = obj_checkpoint_start(a3);
    }

    extended = v19;
LABEL_32:
    v18 = *(&v22 + 1);
    if (!*(&v22 + 1))
    {
      goto LABEL_36;
    }

    if (extended)
    {
LABEL_35:
      obj_release(v18);
LABEL_36:
      v17 = v22;
      if (!v22)
      {
        goto LABEL_40;
      }

      if (extended)
      {
LABEL_39:
        obj_release(v17);
        goto LABEL_40;
      }

LABEL_38:
      extended = btree_checkpoint_traverse(a1, a2, v17, a4);
      v17 = v22;
      goto LABEL_39;
    }

LABEL_34:
    extended = btree_checkpoint_traverse(a1, a2, v18, a4);
    v18 = *(&v22 + 1);
    goto LABEL_35;
  }

  v12 = omap_map_tree_get(a1, a3, 0, 0, &v22 + 1);
  if (!v12)
  {
    v11 = *(a3 + 376);
    goto LABEL_12;
  }

  extended = v12;
  obj_unlock(a3, 1);
LABEL_40:
  v20 = *MEMORY[0x277D85DE8];
  return extended;
}

uint64_t omap_set(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unint64_t a7)
{
  v14 = obj_type(a1);
  v15 = a1;
  if (a1)
  {
    v15 = a1;
    if (v14 == 13)
    {
      v15 = *(a1 + 392);
    }
  }

  v22[0] = a2;
  v22[1] = a3;
  v21[0] = __PAIR64__(a5, a6);
  v21[1] = a4;
  v19 = 0;
  v20 = 0;
  v16 = 22;
  if (xid_is_current_tx(v15, a7) && a2 && a3 && a5)
  {
    v17 = nx_superblock_sanity_check_extent(*(v15 + 376), 0, a4, (a5 + *(*(v15 + 376) + 36) - 1) / *(*(v15 + 376) + 36), 0);
    if (v17)
    {
      return v17;
    }

    v17 = omap_obj_get(a1, 1, a7, &v20);
    if (v17)
    {
      return v17;
    }

    else
    {
      obj_lock(v20, 2);
      v16 = omap_map_tree_get(a1, v20, 1, a7, &v19);
      if (!v16)
      {
        if ((a6 & 4) != 0)
        {
          LODWORD(v21[0]) = *(v20[47] + 32) & 0x10 | a6;
        }

        v16 = bt_insert(v19, 0, v22, 16, v21, 0x10u, a7);
        obj_release(v19);
      }

      obj_unlock(v20, 2);
      obj_release(v20);
    }
  }

  return v16;
}

uint64_t omap_delete(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  v14 = obj_type(a1);
  v15 = a1;
  if (a1)
  {
    v15 = a1;
    if (v14 == 13)
    {
      v15 = *(a1 + 392);
    }
  }

  *&v35 = a2;
  *(&v35 + 1) = a3;
  v33[0] = a6;
  v33[1] = a5;
  v34 = a4;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v16 = 22;
  if (xid_is_current_tx(v15, a7))
  {
    if (a2)
    {
      if (a3)
      {
        v16 = omap_obj_get(a1, 1, a7, &v32);
        if (!v16)
        {
          obj_lock(v32, 2);
          v16 = omap_map_tree_get(a1, v32, 1, a7, &v31);
          v17 = v32;
          if (v16)
          {
LABEL_42:
            obj_unlock(v17, 2);
            obj_release(v32);
            return v16;
          }

          v18 = *(v32 + 376);
          v19 = *(v18 + 64);
          if ((*(v32 + 384) & 2) != 0 && *(v32 + 488) == v19)
          {
            v19 = *(v32 + 480);
          }

          if (*(v18 + 32))
          {
            if (a6)
            {
              goto LABEL_21;
            }

            *v29 = v35;
            v27 = 0;
            v28 = 0;
            v30 = 0x1000000010;
            v21 = bt_lookup_variant(v31, 0, v29, &v30 + 1, 0x10u, &v27, &v30, 0, 0, 0);
            if (v21)
            {
              goto LABEL_40;
            }

            if ((v27 & 2) == 0)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v20 = v19 < a3;
            if (v19 < a3)
            {
              if (a6)
              {
                *v29 = v35;
                v27 = 0;
                v28 = 0;
                v30 = 0x1000000010;
                if (!bt_lookup_variant(v31, 0, v29, &v30 + 1, 0x10u, &v27, &v30, 2u, 0, 0) && v29[0] == v35)
                {
                  goto LABEL_24;
                }
              }

LABEL_21:
              v22 = 0;
              v16 = 0;
              v20 = 1;
              goto LABEL_25;
            }

            if (a6)
            {
LABEL_24:
              *(&v35 + 1) = a7;
              v16 = bt_insert(v31, 0, &v35, 16, v33, 16, a7);
              v22 = 1;
LABEL_25:
              if (v20 && !v16)
              {
                if (a3 == a7)
                {
                  v23 = v22;
                }

                else
                {
                  v23 = 0;
                }

                if (v23)
                {
                  v16 = 0;
                }

                else
                {
                  *(&v35 + 1) = a3;
                  v16 = bt_remove(v31, 0, &v35, 16, a7);
                  v24 = v22 ^ 1;
                  if (!v16)
                  {
                    v24 = 1;
                  }

                  if ((v24 & 1) == 0)
                  {
                    *(&v35 + 1) = a7;
                    bt_remove(v31, 0, &v35, 16, a7);
LABEL_41:
                    obj_release(v31);
                    v17 = v32;
                    goto LABEL_42;
                  }
                }
              }

              v25 = !v20;
              if (v16)
              {
                v25 = 1;
              }

              if (v25)
              {
                goto LABEL_41;
              }

              v21 = spaceman_free(a1, 64, a4, (a5 + *(*(v15 + 376) + 36) - 1) / *(*(v15 + 376) + 36), a7);
LABEL_40:
              v16 = v21;
              goto LABEL_41;
            }
          }

          obj_release(v31);
          obj_unlock(v32, 2);
          obj_release(v32);
          return 0;
        }
      }
    }
  }

  return v16;
}

uint64_t omap_get(uint64_t a1, unint64_t a2, unint64_t a3, void *a4, _DWORD *a5, _DWORD *a6, unint64_t *a7)
{
  v11 = a3;
  v31 = 0;
  v32 = 0;
  v29 = a2;
  v30 = a3;
  v27 = 0;
  v28 = 0;
  v25 = 16;
  v26 = 16;
  v24 = 0;
  v14 = omap_obj_get(a1, 0, 0, &v32);
  if (!v14)
  {
    obj_lock(v32, 1);
    if (*(*(v32 + 376) + 88) > a2)
    {
      obj_unlock(v32, 1);
      v14 = 2;
LABEL_33:
      obj_release(v32);
      return v14;
    }

    v15 = omap_map_tree_get(a1, v32, 0, 0, &v31);
    if (v15)
    {
      v14 = v15;
      obj_unlock(v32, 1);
      goto LABEL_33;
    }

    if (!v11)
    {
      v11 = -1;
      v30 = -1;
    }

    v16 = bt_lookup_variant(v31, 0, &v29, &v26, 0x10u, &v27, &v25, 1u, 0, 0);
    if (v16)
    {
      goto LABEL_9;
    }

    v18 = *(v32 + 376);
    v19 = *(v18 + 72);
    v20 = v29;
    if (v19)
    {
      v21 = v29 == a2;
    }

    else
    {
      v21 = 0;
    }

    if (v21)
    {
      if (v30 < v19 || v30 > *(v18 + 80))
      {
        goto LABEL_18;
      }

      v29 = a2;
      v30 = v19 - 1;
      v16 = bt_lookup_variant(v31, 0, &v29, &v26, 0x10u, &v27, &v25, 1u, 0, 0);
      if (v16)
      {
LABEL_9:
        v14 = v16;
        v17 = 0;
        goto LABEL_31;
      }

      v20 = v29;
    }

    if (v20 != a2)
    {
LABEL_30:
      v17 = 0;
      v14 = 2;
LABEL_31:
      obj_release(v31);
      obj_unlock(v32, 1);
      if (v17)
      {
        omap_tracking_stop(a1, v32);
      }

      goto LABEL_33;
    }

LABEL_18:
    v22 = v27;
    if ((v27 & 1) == 0)
    {
      if (a4)
      {
        *a4 = v28;
      }

      if (a5)
      {
        *a5 = HIDWORD(v27);
      }

      if (a6)
      {
        *a6 = v22 & 0xFFFFFFEE;
        if (((*(*(v32 + 376) + 32) ^ v22) & 0x10) != 0)
        {
          *a6 = v22 | 0x10;
        }
      }

      if (a7)
      {
        *a7 = v30;
      }

      if (*(v32 + 424))
      {
        omap_tracking(v32, a2, v11, &v24);
        v14 = 0;
        v17 = v24;
      }

      else
      {
        v17 = 0;
        v14 = 0;
      }

      goto LABEL_31;
    }

    goto LABEL_30;
  }

  return v14;
}

uint64_t omap_tracking(uint64_t result, unint64_t a2, uint64_t a3, _BYTE *a4)
{
  v13 = 1;
  v14 = a2;
  if (*(result + 424))
  {
    v4 = result;
    if (!*(result + 440))
    {
      v12 = 0;
      v11 = 0;
      __tp.tv_sec = 0;
      __tp.tv_nsec = 0;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      if (__tp.tv_sec - *(v4 + 432) >= 601)
      {
        *a4 = 1;
      }

      btree_node_count(*(v4 + 424), &v13);
      v7 = v13;
      result = obj_size_phys(*(v4 + 424));
      if (v7 <= 0x200000 / result)
      {
        LODWORD(__tp.tv_sec) = 8;
        v10 = 9;
        result = bt_lookup_variant(*(v4 + 424), 0, &v14, &__tp, 8u, &v11, &v10, 0, 0, 0);
        if (result == 2)
        {
          LOBYTE(v8) = *(v4 + 464);
        }

        else
        {
          if (result)
          {
            return result;
          }

          if (!v11)
          {
            return result;
          }

          v8 = *(v4 + 464);
          if (v12 == v8)
          {
            return result;
          }
        }

        if (a3 == -1)
        {
          v9 = 0;
        }

        else
        {
          v9 = a3;
        }

        v11 = v9;
        v12 = v8;
        return bt_insert(*(v4 + 424), 0, &v14, 8, &v11, 9u, 0);
      }
    }
  }

  return result;
}

uint64_t omap_tracking_stop(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (obj_type(a1) != 13)
  {
    v3 = 0;
  }

  obj_lock(a2, 2);
  if (*(a2 + 424))
  {
    v6.tv_sec = 0;
    v6.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v6);
    if (v6.tv_sec - *(a2 + 432) >= 601)
    {
      btree_delete(*(a2 + 424), 0, 0);
      obj_release(*(a2 + 424));
      *(a2 + 424) = 0;
    }
  }

  if (v3)
  {
    if (*(v3 + 504))
    {
      v3 = *(v3 + 504);
    }

    v4 = *(v3 + 3640);
    if (v4)
    {
      obj_release(v4);
      *(v3 + 3640) = 0;
    }
  }

  return obj_unlock(a2, 2);
}

uint64_t omap_find_next_snapshot_xid(uint64_t a1, unint64_t a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = 0;
  v19[0] = 0;
  v19[1] = 0;
  v17 = 0;
  v18 = 0;
  v6 = omap_obj_get(a1, 0, 0, &v21);
  if (v6)
  {
    extended = v6;
    if (obj_type(a1) == 13)
    {
      log_err("%s:%d: %s unable to get omap: %d\n", "omap_find_next_snapshot_xid", 1138, (a1 + 4040), extended);
    }

    else
    {
      log_err("%s:%d: %s unable to get omap: %d\n", "omap_find_next_snapshot_xid", 1138, (*(a1 + 384) + 212), extended);
    }

    goto LABEL_25;
  }

  v8 = v21[47];
  obj_lock(v21, 1);
  if (*(v8 + 32))
  {
    goto LABEL_16;
  }

  v9 = *(v8 + 56);
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = *(v8 + 44);
  v23 = 0u;
  v24 = 0u;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v22 = omap_snapshot_key_cmp;
  DWORD2(v23) = 19;
  if (v10 != 2)
  {
    extended = 22;
    goto LABEL_19;
  }

  extended = btree_get_extended(a1, v10 & 0xFFFF0000, v9, 0, 0, &v22, 0, &v20);
  if (extended)
  {
LABEL_19:
    if (obj_type(a1) != 13)
    {
      v13 = *(a1 + 384) + 212;
    }

    log_err("%s:%d: %s unable to get snapshot tree: %d\n");
    goto LABEL_22;
  }

  v17 = a2;
  do
  {
    v18 = 0x800000010;
    v11 = bt_lookup_variant(v20, 0, &v17, &v18 + 1, 8u, v19, &v18, 4u, 0, 0);
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = (v19[0] & 1) == 0;
    }
  }

  while (!v12);
  extended = v11;
  if (!v11)
  {
    *a3 = v17;
    goto LABEL_22;
  }

  if (v11 != 2)
  {
    if (obj_type(a1) != 13)
    {
      v16 = *(a1 + 384) + 212;
    }

    log_err("%s:%d: %s error searching snapshot tree: %d\n");
    goto LABEL_22;
  }

LABEL_16:
  extended = 2;
LABEL_22:
  if (v20)
  {
    obj_release(v20);
  }

  obj_unlock(v21, 1);
  obj_release(v21);
LABEL_25:
  v14 = *MEMORY[0x277D85DE8];
  return extended;
}

uint64_t omap_obj_modify(void *a1, void *a2, unint64_t a3)
{
  if (obj_type(a1) == 13)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = *(v6 + 392);
    result = obj_modify(a1, 0, a3);
    if (result)
    {
      return result;
    }

    v9 = (v6 + 1152);
  }

  else
  {
    result = obj_modify(a1, 0, a3);
    if (result)
    {
      return result;
    }

    v9 = (a1 + 84);
    v7 = a1;
  }

  pthread_mutex_lock(v9);
  v10 = obj_oid(a2);
  v11 = obj_type_and_flags(a2);
  if (!obj_modify(a2, (v11 >> 29) & 2, a3) && obj_oid(a2) != v10)
  {
    v13 = obj_oid(a2);
    if (v6)
    {
      *(*(v6 + 376) + 128) = v13;
      fs_sb_dirty(v6, a3);
      goto LABEL_12;
    }

    *(v7[47] + 160) = v13;
    obj_dirty(a1, a3, 0);
LABEL_16:
    v12 = (v7 + 84);
    goto LABEL_17;
  }

  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_12:
  v12 = (v6 + 1152);
LABEL_17:
  pthread_mutex_unlock(v12);
  return 0;
}

unint64_t parse_size(const char *a1)
{
  __endptr = 0;
  result = strtoull(a1, &__endptr, 10);
  v3 = __endptr;
  v4 = *__endptr;
  if (v4 > 0x66)
  {
    if (*__endptr <= 0x6Cu)
    {
      if (v4 != 103)
      {
        if (v4 != 107)
        {
          goto LABEL_19;
        }

LABEL_9:
        result <<= 10;
LABEL_18:
        v3 = __endptr + 1;
        goto LABEL_19;
      }

LABEL_16:
      result <<= 30;
      goto LABEL_18;
    }

    if (v4 != 109)
    {
      if (v4 != 116)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }

LABEL_17:
    result <<= 20;
    goto LABEL_18;
  }

  if (*__endptr <= 0x4Cu)
  {
    if (v4 != 71)
    {
      if (v4 != 75)
      {
        goto LABEL_19;
      }

      goto LABEL_9;
    }

    goto LABEL_16;
  }

  if (v4 == 77)
  {
    goto LABEL_17;
  }

  if (v4 == 84)
  {
LABEL_15:
    result <<= 40;
    goto LABEL_18;
  }

LABEL_19:
  if (v3 == a1)
  {
    return -1;
  }

  if (*v3)
  {
    return -1;
  }

  return result;
}

char *parse_apfs_format_options(char *a1, uint64_t a2)
{
  v3 = a1;
  if (!a1)
  {
    *(a2 + 464) = 0u;
    *(a2 + 480) = 0u;
    *(a2 + 432) = 0u;
    *(a2 + 448) = 0u;
    *(a2 + 400) = 0u;
    *(a2 + 416) = 0u;
    *(a2 + 368) = 0u;
    *(a2 + 384) = 0u;
    *(a2 + 336) = 0u;
    *(a2 + 352) = 0u;
    *(a2 + 304) = 0u;
    *(a2 + 320) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 288) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    MEMORY[0x23EEDBDC0](a2);
    *(a2 + 32) = xmmword_23D290D80;
    *(a2 + 492) = 1073741826;
    *(a2 + 48) = -1;
    *(a2 + 444) = getuid();
    *(a2 + 448) = getgid();
    *(a2 + 52) &= ~0x80u;
    __strlcpy_chk();
    *(a2 + 52) = *(a2 + 52) & 0xFBF3 | 8;
    return v3;
  }

  if (!strncasecmp(a1, "uuid_from_role", 0xEuLL))
  {
    v21 = *(a2 + 54);
    if (v21 <= 0xBF)
    {
      if (*(a2 + 54) <= 7u)
      {
        if (*(a2 + 54) <= 1u)
        {
          if (*(a2 + 54))
          {
            v22 = "61706673-7575-6964-0001-766f6c756d00";
          }

          else
          {
            v22 = "61706673-7575-6964-0000-766f6c756d00";
          }

          goto LABEL_121;
        }

        if (v21 == 2)
        {
          v22 = "61706673-7575-6964-0002-766f6c756d00";
          goto LABEL_121;
        }

        if (v21 == 4)
        {
          v22 = "61706673-7575-6964-0004-766f6c756d00";
          goto LABEL_121;
        }
      }

      else if (*(a2 + 54) <= 0x1Fu)
      {
        if (v21 == 8)
        {
          v22 = "61706673-7575-6964-0008-766f6c756d00";
          goto LABEL_121;
        }

        if (v21 == 16)
        {
          v22 = "61706673-7575-6964-0010-766f6c756d00";
          goto LABEL_121;
        }
      }

      else
      {
        switch(v21)
        {
          case 0x20u:
            v22 = "61706673-7575-6964-0020-766f6c756d00";
            goto LABEL_121;
          case 0x40u:
            v22 = "61706673-7575-6964-0040-766f6c756d00";
            goto LABEL_121;
          case 0x80u:
            v22 = "61706673-7575-6964-0080-766f6c756d00";
            goto LABEL_121;
        }
      }
    }

    else if (*(a2 + 54) > 0x1FFu)
    {
      if (*(a2 + 54) <= 0x27Fu)
      {
        if (v21 == 512)
        {
          v22 = "61706673-7575-6964-0200-766f6c756d00";
          goto LABEL_121;
        }

        if (v21 == 576)
        {
          v22 = "61706673-7575-6964-0240-766f6c756d00";
          goto LABEL_121;
        }
      }

      else
      {
        switch(v21)
        {
          case 0x280u:
            v22 = "61706673-7575-6964-0280-766f6c756d00";
            goto LABEL_121;
          case 0x2C0u:
            v22 = "61706673-7575-6964-02c0-766f6c756d00";
            goto LABEL_121;
          case 0x300u:
            v22 = "61706673-7575-6964-0300-766f6c756d00";
            goto LABEL_121;
        }
      }
    }

    else if (*(a2 + 54) <= 0x13Fu)
    {
      if (v21 == 192)
      {
        v22 = "61706673-7575-6964-00c0-766f6c756d00";
        goto LABEL_121;
      }

      if (v21 == 256)
      {
        v22 = "61706673-7575-6964-0100-766f6c756d00";
        goto LABEL_121;
      }
    }

    else
    {
      switch(v21)
      {
        case 0x140u:
          v22 = "61706673-7575-6964-0140-766f6c756d00";
          goto LABEL_121;
        case 0x180u:
          v22 = "61706673-7575-6964-0180-766f6c756d00";
          goto LABEL_121;
        case 0x1C0u:
          v22 = "61706673-7575-6964-01c0-766f6c756d00";
LABEL_121:
          uuid_parse(v22, a2);
          return 0;
      }
    }

    return strerror(22);
  }

  if (!strncasecmp(v3, "password=", 9uLL))
  {
    v3 += 9;
    __strlcpy_chk();
    v23 = strnlen(v3, 0x80uLL);
    *(a2 + 440) = v23;
    if ((v23 & 0xFFFFFF80) == 0)
    {
      return 0;
    }

    return v3;
  }

  if (!strncasecmp(v3, "empty_password", 0xFuLL))
  {
    v3 = 0;
    *(a2 + 312) = 0;
    *(a2 + 440) = 0;
    return v3;
  }

  if (!strncasecmp(v3, "volname=", 8uLL))
  {
    __strlcpy_chk();
    return 0;
  }

  v4 = strdup(v3);
  if (!v4)
  {
    return v3;
  }

  v5 = v4;
  __lasts = 0;
  v6 = strtok_r(v4, ",", &__lasts);
  if (!v6)
  {
    v3 = 0;
    goto LABEL_109;
  }

  v7 = v6;
  v8 = "fsquota=";
  v9 = "fsindex=";
  while (1)
  {
    if (!strncasecmp(v7, "fssize=", 7uLL))
    {
      v11 = parse_size(v7 + 7);
      if (v11 == -1)
      {
        goto LABEL_108;
      }

      *(a2 + 16) = v11;
LABEL_36:
      *(a2 + 24) = v11;
      goto LABEL_37;
    }

    if (!strncasecmp(v7, "fsreserve=", 0xAuLL))
    {
      v12 = parse_size(v7 + 10);
      if (v12 == -1)
      {
        goto LABEL_108;
      }

      *(a2 + 16) = v12;
      goto LABEL_37;
    }

    if (!strncasecmp(v7, v8, 8uLL))
    {
      v11 = parse_size(v7 + 8);
      if (v11 == -1)
      {
        goto LABEL_108;
      }

      goto LABEL_36;
    }

    if (!strncasecmp(v7, v9, 8uLL))
    {
      break;
    }

    if (!strcasecmp(v7, "omap=btree") || !strcasecmp(v7, "omap=physical"))
    {
      v13 = 1073741826;
LABEL_40:
      *(a2 + 32) = v13;
      goto LABEL_37;
    }

    if (!strcasecmp(v7, "omap=ephemeral"))
    {
      v13 = -2147483646;
      goto LABEL_40;
    }

    if (!strcasecmp(v7, "fstree=btree"))
    {
      *(a2 + 36) = 0x4000000200000002;
      *(a2 + 44) = 1073741826;
      *(a2 + 492) = 1073741826;
      goto LABEL_37;
    }

    if (!strcasecmp(v7, "encrypted"))
    {
      v10 = *(a2 + 52) | 1;
LABEL_55:
      *(a2 + 52) = v10;
      goto LABEL_37;
    }

    if (!strncasecmp(v7, "role=", 5uLL))
    {
      v17 = parse_str_to_role(v7 + 5);
      if (v17 == -1)
      {
        goto LABEL_108;
      }

      *(a2 + 54) = v17;
    }

    else
    {
      if (!strcasecmp(v7, "case=insensitive"))
      {
        v10 = *(a2 + 52) & 0xFFF3 | 4;
        goto LABEL_55;
      }

      if (!strcasecmp(v7, "case=sensitive"))
      {
        v10 = *(a2 + 52) & 0xFFF3 | 8;
        goto LABEL_55;
      }

      if (!strcasecmp(v7, "defragment=yes"))
      {
        v10 = *(a2 + 52) & 0xFFCF | 0x20;
        goto LABEL_55;
      }

      if (!strcasecmp(v7, "defragment=no"))
      {
        v10 = *(a2 + 52) & 0xFFCF | 0x10;
        goto LABEL_55;
      }

      if (!strncasecmp(v7, "uid=", 4uLL))
      {
        v14 = v8;
        v15 = v9;
        __endptr = 0;
        v18 = strtoull(v7 + 4, &__endptr, 10);
        if (__endptr == v7 + 4 || *__endptr || v18 == -1)
        {
          goto LABEL_108;
        }

        *(a2 + 444) = v18;
        goto LABEL_45;
      }

      if (!strncasecmp(v7, "gid=", 4uLL))
      {
        v14 = v8;
        v15 = v9;
        __endptr = 0;
        v19 = strtoull(v7 + 4, &__endptr, 10);
        if (__endptr == v7 + 4 || *__endptr || v19 == -1)
        {
          goto LABEL_108;
        }

        *(a2 + 448) = v19;
        goto LABEL_45;
      }

      if (!strcasecmp(v7, "sealed=yes"))
      {
        *(a2 + 52) |= 0x80u;
        *(a2 + 488) = 1;
        *(a2 + 36) = 2;
        goto LABEL_37;
      }

      if (!strcasecmp(v7, "conformance"))
      {
        goto LABEL_108;
      }

      if (strncasecmp(v7, "hash=", 5uLL))
      {
        if (!strcasecmp(v7, "unwritten"))
        {
          v10 = *(a2 + 52) | 0x400;
        }

        else
        {
          if (strcasecmp(v7, "unwritten=no"))
          {
            goto LABEL_108;
          }

          v10 = *(a2 + 52) & 0xFBFF;
        }

        goto LABEL_55;
      }

      v20 = parse_hash_type(v7 + 5);
      if (v20 == -1)
      {
        goto LABEL_108;
      }

      *(a2 + 488) = v20;
    }

LABEL_37:
    v7 = strtok_r(0, ",", &__lasts);
    if (!v7)
    {
      v3 = 0;
      goto LABEL_109;
    }
  }

  v14 = v8;
  v15 = v9;
  __endptr = 0;
  v16 = strtoull(v7 + 8, &__endptr, 10);
  if (__endptr != v7 + 8 && !*__endptr && v16 != -1)
  {
    *(a2 + 48) = v16;
LABEL_45:
    v9 = v15;
    v8 = v14;
    goto LABEL_37;
  }

LABEL_108:
  v3 += v7 - v5;
LABEL_109:
  free(v5);
  return v3;
}

uint64_t parse_hash_type(const char *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!strncasecmp(a1, "sha256", 7uLL))
  {
    return 1;
  }

  if (!strncasecmp(a1, "sha512_256", 0xBuLL))
  {
    return 5;
  }

  if (!strncasecmp(a1, "sha384", 7uLL))
  {
    return 3;
  }

  if (!strncasecmp(a1, "sha512", 7uLL))
  {
    return 4;
  }

  if (!strncmp(a1, "sha3_256_4k", 0xCuLL))
  {
    return 262;
  }

  if (!strncmp(a1, "sha3_384_4k", 0xCuLL))
  {
    return 263;
  }

  if (!strncmp(a1, "sha3_512_4k", 0xCuLL))
  {
    return 264;
  }

  if (!strncmp(a1, "sha3_256", 9uLL))
  {
    return 6;
  }

  if (!strncmp(a1, "sha3_384", 9uLL))
  {
    return 7;
  }

  if (!strncmp(a1, "sha3_512", 9uLL))
  {
    return 8;
  }

  return 0xFFFFFFFFLL;
}

char *parse_nx_mount_options(char *a1, int *a2)
{
  *MEMORY[0x277D82D48] = 1;
  if (!a1)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    a2[1] = -1;
    return 0;
  }

  v12 = *a2;
  v4 = *(a2 + 4);
  v5 = (v4 >> 6) & 8 | v4 & 5 | (v4 >> 8) & 0x10;
  v6 = v4 << 18;
  if ((v4 & 0x1000) != 0)
  {
    v7 = 32;
  }

  else
  {
    v7 = 64;
  }

  v11 = v7 & (v6 >> 31) | v5;
  if (!getmntopts())
  {
    return "";
  }

  *a2 = v12;
  *(a2 + 4) = a2[2] & 0xCDFA | v11 & 1 | v11 & 4 | (((v11 & 0x30) != 0) << 12) | (((v11 & 0x60) != 0) << 13) | (((v11 >> 3) & 1) << 9);
  if ((v11 & 2) != 0)
  {
    v10 = getmntoptnum();
    a2[1] = v10;
    if (v10 == -1)
    {
      v8 = "checkpoint";
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  freemntopts();
  result = check_bad_option(&nx_mopts, a1, v8);
  if (!result)
  {
    return 0;
  }

  return result;
}

char *check_bad_option(const char **a1, char *__s1, const char *a3)
{
  v4 = __s1;
  v6 = strdup(__s1);
  if (v6)
  {
    v7 = v6;
    __lasts = 0;
    v8 = strtok_r(v6, ",", &__lasts);
    if (v8)
    {
      while (1)
      {
        if (*v8 == 110)
        {
          v9 = 2 * (v8[1] == 111);
          v10 = v8[1] == 111 ? -2 : 0;
        }

        else
        {
          v10 = 0;
          v9 = 0;
        }

        v11 = &v8[v9];
        v12 = strchr(&v8[v9], 61);
        if (v12)
        {
          *v12 = 0;
        }

        v13 = *a1;
        if (!*a1)
        {
          break;
        }

        v14 = a1 + 3;
        while (strcasecmp(v13, v11))
        {
          v15 = *v14;
          v14 += 3;
          v13 = v15;
          if (!v15)
          {
            goto LABEL_19;
          }
        }

        if (a3 && !strcasecmp(v11, a3))
        {
          break;
        }

        v8 = strtok_r(0, ",", &__lasts);
        if (!v8)
        {
          goto LABEL_18;
        }
      }

LABEL_19:
      v4 += v10 + v11 - v7;
    }

    else
    {
LABEL_18:
      v4 = 0;
    }

    free(v7);
  }

  return v4;
}

uint64_t btree_entry_max_size(char a1, __int16 a2, int a3, int a4)
{
  if (a3 && a4)
  {
    v4 = (a3 + 7) & 0xFFF8;
    if ((a1 & 0x40) != 0)
    {
      v4 = a3;
    }

    v5 = (a4 + 7) & 0xFFF8;
    if ((a1 & 0x40) != 0)
    {
      v5 = a4;
    }

    return (v5 + v4);
  }

  else
  {
    v6 = a2 - 160;
    if (a4)
    {
      v7 = (v6 >> 2) - 72;
      if ((a3 - 1) < v7)
      {
        v7 = a3;
      }

      if ((a1 & 0x40) == 0)
      {
        v7 = (v7 + 7) & 0xFFF8;
      }

      v8 = (a4 + 7) & 0xFFF8;
      if ((a1 & 0x40) != 0)
      {
        v8 = a4;
      }

      return (v7 + v8);
    }
  }

  return v6;
}

uint64_t btree_entry_size_check(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = *(a1 + 400);
  v5 = (v4 >> 9) & 0x3FFF;
  if (v5)
  {
    v6 = v5 == a2;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    return 22;
  }

  v8 = !(v4 >> 23) || (v4 >> 23) == a3;
  if (!v8 && (a3 != 65534 && a3 || (v4 & 4) == 0))
  {
    return 22;
  }

  v9 = (v4 >> 27) & 0x1F000;
  if (!v5 && a2 > (((v9 - 160) >> 2) - 72))
  {
    return 22;
  }

  if (a3 == 65534)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3;
  }

  v12 = btree_entry_max_size(v4, v9, v5, (v4 >> 23));
  v13 = (a2 + 7) & 0xFFFFFFF8;
  if ((v4 & 0x40) != 0)
  {
    v13 = a2;
  }

  v14 = (v11 + 7) & 0xFFFFFFF8;
  if ((v4 & 0x40) != 0)
  {
    v14 = v11;
  }

  if (v13 + v14 <= v12)
  {
    return 0;
  }

  else
  {
    return 34;
  }
}

uint64_t btree_node_sanity_check(void *a1, uint64_t a2)
{
  v4 = a1[7];
  v5 = obj_size_phys(a1);
  v6 = v5;
  v7 = *(v4 + 32);
  if ((v7 & 4) != 0)
  {
    v8 = 4;
  }

  else
  {
    v8 = 8;
  }

  if (a2)
  {
    v9 = *(a2 + 8);
    v10 = (v9 >> 27) & 0x1F000;
    v11 = v5 != v10;
    v12 = *(a2 + 6);
    if (v12 != 61455)
    {
      v14 = v5 == v10 ? 1 : 2;
      if (*(v4 + 34) != v12)
      {
        v11 = v14;
      }
    }

    if (((v9 >> 7) & 1) != ((v7 >> 3) & 1))
    {
      ++v11;
    }

    if (((v9 >> 8) & 1) == ((v7 >> 4) & 1))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 + 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v5 % *(*(*(*a1 + 392) + 376) + 36))
  {
    v16 = v13 + 1;
  }

  else
  {
    v16 = v13;
  }

  v17 = obj_type(a1);
  v18 = *(v4 + 32);
  if (v17 != 2)
  {
    if ((v18 & 0x10) == 0 && *(v4 + 24) != 3)
    {
      ++v16;
    }

    if (v18)
    {
      v19 = v16 + 1;
    }

    else
    {
      v19 = v16;
    }

    if ((v18 & 2) == 0)
    {
      goto LABEL_37;
    }

LABEL_35:
    if (*(v4 + 34))
    {
      ++v19;
    }

    goto LABEL_37;
  }

  if ((v18 & 0x10) == 0 && *(v4 + 24) != 2)
  {
    ++v16;
  }

  if ((v18 & 1) == 0)
  {
    v19 = v16 + 1;
    if ((v18 & 2) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  v38 = v4 + v6;
  v40 = *(v38 - 32);
  if (v6 <= 0x10000 && *(v38 - 36) == v6)
  {
    v42 = v16;
  }

  else
  {
    v42 = v16 + 1;
  }

  if (v40 > (((v6 - 160) >> 2) - 72))
  {
    ++v42;
  }

  if (v6 - (v40 + v8) - 96 > *(v38 - 28))
  {
    v43 = v42;
  }

  else
  {
    v43 = v42 + 1;
  }

  v39 = (v38 - 40);
  v44 = vld1_dup_f32(v39);
  v45 = veor_s8(vceqz_s32(vand_s8(v44, 0x8000000100)), vceqz_s32(vand_s8(vdup_n_s32(v18), 0x800000010)));
  v19 = v43 - v45.i8[4] - v45.i8[0];
  if ((v18 & 2) != 0)
  {
    goto LABEL_35;
  }

LABEL_37:
  if (v18)
  {
    v20 = -96;
  }

  else
  {
    v20 = -56;
  }

  v21 = v20 + v6;
  if (*(v4 + 40))
  {
    ++v19;
  }

  v22 = *(v4 + 42);
  if (v21 < v22)
  {
    ++v19;
  }

  if (((v8 - 1) & v22) != 0)
  {
    ++v19;
  }

  if ((v7 & 4) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = 3;
  }

  if (*(v4 + 36) > v22 >> v23)
  {
    ++v19;
  }

  v24 = v21 - v22;
  v25 = *(v4 + 44);
  v26 = v24 >= v25;
  v27 = v24 - v25;
  if (!v26)
  {
    ++v19;
  }

  if (!(v19 | (v27 < *(v4 + 46))))
  {
    return 0;
  }

  v28 = *(*a1 + 392);
  if (v28)
  {
    is_panic_on_corruption_enabled = nx_is_panic_on_corruption_enabled(v28);
    v30 = *(*(*a1 + 392) + 384) + 212;
    obj_type(a1);
    obj_subtype(a1);
    obj_oid(a1);
    log_corrupt(is_panic_on_corruption_enabled, "%s:%d: %s BT node sanity check failed for node type %u subtype %u oid %llu with mask 0x%x!\n", v31, v32, v33, v34, v35, v36, "btree_node_sanity_check");
    v28 = *(*a1 + 392);
  }

  return nx_corruption_detected_int(v28);
}

uint64_t btree_node_init_phys(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a3)
  {
    return 22;
  }

  v3 = *(a3 + 4);
  v4 = v3 & 0x1B;
  *(a1 + 32) = v4;
  *(a1 + 34) = *(a3 + 6);
  v5 = *(a3 + 8);
  if (((v5 >> 27) & 0x1F000) != a2)
  {
    return 22;
  }

  v6 = a2 - 56;
  v7 = (v5 >> 9) & 0x3FFF;
  v8 = (HIBYTE(v5) & 0x7F) + 8;
  v9 = (v5 >> 23);
  if ((v3 & 2) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  LOWORD(v11) = 64;
  if (v7 && v10)
  {
    v4 |= 4u;
    *(a1 + 32) = v4;
    v11 = (4 * (v6 / (v7 + v10 + 4))) & 0xFFFFFFF8;
  }

  v12 = 0;
  *(a1 + 40) = 0;
  *(a1 + 42) = v11;
  *(a1 + 44) = 0;
  if (v4)
  {
    LOWORD(v6) = a2 - 96;
  }

  *(a1 + 46) = v6 - v11;
  *(a1 + 48) = 0xFFFF0000FFFFLL;
  if (v4)
  {
    v12 = 0;
    v13 = (a1 + (a2 - 96));
    v13[14] = *(a3 + 8) & 0x1FF;
    v13[15] = a2;
    v13[16] = (*(a3 + 8) >> 9) & 0x3FFF;
    v13[17] = (*(a3 + 8) >> 23);
  }

  return v12;
}

uint64_t btree_node_reap(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = *(a1[7] + 32);
  if ((v5 & 8) != 0)
  {
    return 45;
  }

  v8 = a1[1];
  if (v8)
  {
    v9 = obj_modify(a1[1], 0, a5);
    if (v9)
    {
      v10 = v9;
      v11 = a1[1];
      if (v11)
      {
        v12 = (v11 + 4040);
      }

      else
      {
        v12 = (*(*(*a1 + 392) + 384) + 212);
      }

      v15 = obj_oid(v8);
      log_err("%s:%d: %s obj_modify(fs %lld) failed: %d\n", "btree_node_reap", 399, v12, v15, v10);
    }

    if ((*(a1[7] + 32) & 2) != 0)
    {
      goto LABEL_34;
    }

    v14 = obj_oid(v8);
    goto LABEL_13;
  }

  if ((v5 & 2) == 0)
  {
    v14 = 0;
LABEL_13:
    v16 = obj_type_and_flags(a1);
    if (((*(a1[7] + 36) - 1) & 0x8000) == 0)
    {
      v17 = v16 & 0xFFFF0000 | 3;
      v18 = (*(a1[7] + 36) - 1);
      do
      {
        v27 = 0;
        if (btree_node_child_id(a1, v18, &v27))
        {
          if (!a1[1])
          {
            v22 = *(*(*a1 + 392) + 384) + 212;
          }

          obj_oid(a1);
          log_err("%s:%d: %s error getting oid for child %d of 0x%llx: %d\n");
        }

        else
        {
          v19 = *a1;
          if (*(a1[7] + 34) < 2u)
          {
            v24 = obj_size_phys(a1);
            if (obj_delete_and_free_by_oid(v19, v17, v24, v14, v27, a5))
            {
              if (!a1[1])
              {
                v26 = *(*(*a1 + 392) + 384) + 212;
              }

              log_err("%s:%d: %s error deleting child 0x%llx type 0x%x: %d\n");
            }
          }

          else
          {
            v20 = *(v19 + 392);
            v21 = obj_size_phys(a1);
            if (nx_reaper_add_sub_object(v20, v17, v21, v14, v27, a5, 0))
            {
              if (!a1[1])
              {
                v25 = *(*(*a1 + 392) + 384) + 212;
              }

              log_err("%s:%d: %s error adding child 0x%llx type 0x%x to reap list: %d\n");
            }
          }
        }
      }

      while (v18-- > 0);
    }
  }

LABEL_34:
  obj_delete_and_free(a1, a5);
  return 0;
}

uint64_t btree_node_get(void *a1, void *a2, uint64_t a3, unsigned int a4, __int16 a5, uint64_t a6, uint64_t *a7)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v14 = a1[50];
  if ((v14 & 0x4000000000000000) != 0)
  {
    v15 = 96;
  }

  else
  {
    v15 = (HIBYTE(v14) & 0x3F) + 32;
  }

  MEMORY[0x28223BE20]();
  v17 = &v32[-2] - v16;
  bzero(&v32[-2] - v16, v15);
  v32[0] = 0;
  v31 = btree_node_desc;
  v18 = obj_flags(a1) & 0xFC00;
  *v17 = 25987;
  *(v17 + 1) = v15;
  *(v17 + 8) = *(a1 + 25);
  *(v17 + 3) = a1[52];
  v19 = a1[50];
  if ((v19 & 0x80) != 0)
  {
    if ((v19 & 0x4000000000000000) != 0)
    {
      v20 = 64;
    }

    else
    {
      v20 = HIBYTE(v19) & 0x3F;
    }

    memcpy(v17 + 32, a2 + 1, v20);
  }

  *(v17 + 2) = 0;
  *(v17 + 3) = a5;
  DWORD2(v31) = obj_size_phys(a1);
  v21 = obj_type_and_flags(a1) & 0xFFFF0000;
  LODWORD(v31) = v21 | 3;
  DWORD1(v31) = obj_subtype(a1);
  v22 = 3;
  if ((v21 & 0x40000000) == 0)
  {
    v22 = 1;
  }

  if ((a4 & 1) == 0)
  {
    v22 = 0;
  }

  v23 = v18 | v21 | v22;
  if ((a4 & 2) != 0)
  {
    v23 |= 4uLL;
  }

  if ((a4 & 0x40) != 0)
  {
    v24 = 0;
  }

  else
  {
    v24 = &v31;
  }

  v25 = obj_get(*a1, (a4 & 0x180 | (32 * ((a4 >> 2) & 1))) & 0xFFFFFFFEFFFFFFFFLL | ((((a4 & 0x200) >> 9) & 1) << 32) | v23, *a2, v24, v17, a1[1], a3, a6, v32);
  if (v25)
  {
    v26 = v25;
    v27 = 0;
  }

  else
  {
    v27 = v32[0];
    if ((a4 & 0x104) == 4 && (*(v32[0] + 16) & 0x10) != 0)
    {
      if (a4)
      {
        v28 = 2;
      }

      else
      {
        v28 = 1;
      }

      btree_node_release(v32[0], v28 & ((a4 << 30) >> 31));
      v27 = 0;
      v26 = 2;
    }

    else
    {
      v26 = 0;
    }
  }

  *a7 = v27;
  v29 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t btree_node_release(uint64_t a1, char a2)
{
  v3 = a2 & 3;
  if (v3)
  {
    obj_unlock(a1, v3);
  }

  return obj_release(a1);
}

uint64_t btree_node_toc_entry_size(uint64_t a1)
{
  if ((*(*(a1 + 56) + 32) & 4) != 0)
  {
    return 4;
  }

  else
  {
    return 8;
  }
}

uint64_t btree_node_toc_required_capacity(uint64_t a1, int a2)
{
  v2 = *(a1 + 56);
  v3 = v2[16];
  if ((v3 & 4) != 0)
  {
    v5 = *(a1 + 400);
    if ((v5 & 4) != 0)
    {
      if ((v3 & 2) != 0)
      {
        v9 = v5 >> 23;
      }

      else
      {
        LOWORD(v9) = (HIBYTE(v5) & 0x7F) + 8;
      }

      v10 = (((v5 >> 27) & 0x1F000) - 56) / (((v5 >> 9) & 0x3FFF) + v9 + 4);
      v11 = v2[18] + a2;
      if ((v10 & 0xFFFE) >= v11)
      {
        LOWORD(v4) = v10 & 0xFFFE;
      }

      else
      {
        LOWORD(v4) = (v11 + 7) & 0xFFF8;
      }
    }

    else
    {
      v6 = v2[21];
      v7 = (v3 & 4) == 0;
      v8 = 2;
      if (v7)
      {
        v8 = 3;
      }

      return (v6 >> v8);
    }
  }

  else
  {
    v4 = a2 + *(v2 + 9) + 7;
    if (v4 >= 8)
    {
      LOWORD(v4) = v4 & 0xFFF8;
    }

    else
    {
      LOWORD(v4) = 8;
    }
  }

  return v4;
}

uint64_t btree_node_key_off(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 376);
  v3 = (v2 + 4 * a2);
  v4 = (v2 + 8 * a2);
  if ((*(*(a1 + 56) + 32) & 4) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  return *v5;
}

uint64_t btree_node_key_len(uint64_t a1, unsigned int a2)
{
  if ((*(*(a1 + 56) + 32) & 4) != 0)
  {
    return (*(a1 + 400) >> 9) & 0x3FFF;
  }

  else
  {
    return *(*(a1 + 376) + 8 * a2 + 2);
  }
}

uint64_t btree_node_val_off(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 376);
  v3 = v2 + 4 * a2 + 2;
  v4 = v2 + 8 * a2 + 4;
  if ((*(*(a1 + 56) + 32) & 4) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  return *v5;
}

uint64_t btree_node_val_len(uint64_t a1, unsigned int a2)
{
  v2 = *(*(a1 + 56) + 32);
  v3 = *(a1 + 376);
  if ((v2 & 4) != 0)
  {
    v4 = (v3 + 4 * a2 + 2);
    v5 = *(a1 + 400) >> 23;
  }

  else
  {
    v5 = v3 + 8 * a2;
    v4 = (v5 + 4);
    LOWORD(v5) = *(v5 + 6);
  }

  v6 = *v4;
  if (v6 == 0xFFFF)
  {
    LOWORD(v5) = 0;
  }

  else if (v6 == 65534)
  {
    LOWORD(v5) = -2;
  }

  else if ((v2 & 2) == 0)
  {
    LOWORD(v5) = (*(a1 + 407) & 0x7F) + 8;
  }

  return v5;
}

uint64_t btree_node_key_ptr(uint64_t a1, unsigned int a2, void *a3, _WORD *a4)
{
  if (!a1)
  {
    return 22;
  }

  v5 = *(a1 + 56);
  if (*(v5 + 36) <= a2)
  {
    return 22;
  }

  v8 = *(v5 + 32);
  v9 = *(a1 + 376);
  v10 = (v9 + 4 * a2);
  if ((v8 & 4) == 0)
  {
    v10 = (v9 + 8 * a2);
  }

  v11 = *v10;
  if ((v8 & 4) != 0)
  {
    v12 = (*(a1 + 400) >> 9) & 0x3FFF;
  }

  else
  {
    v12 = *(v9 + 8 * a2 + 2);
  }

  result = btree_node_key_range_validate(a1, *v10, v12);
  if (!result)
  {
    *a3 = *(a1 + 384) + v11;
    result = 0;
    if (a4)
    {
      *a4 = v12;
    }
  }

  return result;
}

uint64_t btree_node_key_range_validate(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(*(a1 + 56) + 44);
  v4 = v3 >= a2;
  v5 = v3 - a2;
  if (v5 == 0 || !v4)
  {
    return nx_corruption_detected_int(*(*a1 + 392));
  }

  v6 = (a3 + 7) & 0x1FFF8;
  if ((*(a1 + 400) & 0x40) != 0)
  {
    v6 = a3;
  }

  if (v6 <= v5)
  {
    return 0;
  }

  else
  {
    return nx_corruption_detected_int(*(*a1 + 392));
  }
}

uint64_t btree_node_val_ptr(void *a1, unsigned int a2, void *a3, __int16 *a4)
{
  v4 = a1[7];
  if (*(v4 + 36) <= a2)
  {
    return 22;
  }

  v8 = a1[47];
  v9 = v8 + 4 * a2 + 2;
  v10 = v8 + 8 * a2 + 4;
  if ((*(v4 + 32) & 4) != 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *v11;
  v13 = btree_node_val_len(a1, a2);
  v14 = v13;
  result = btree_node_val_range_validate(a1, v12, v13);
  if (!result)
  {
    if (v12 >= 0xFFFE)
    {
      *a3 = 0;
      if (!a4)
      {
        return 0;
      }

      if (v12 == 0xFFFF)
      {
        v14 = 0;
      }

      else
      {
        v14 = -2;
      }
    }

    else
    {
      *a3 = a1[49] - v12;
      if (!a4)
      {
        return 0;
      }
    }

    result = 0;
    *a4 = v14;
  }

  return result;
}

uint64_t btree_node_val_range_validate(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 < 0xFFFE)
  {
    if (!a3 || a3 == 65534)
    {
      goto LABEL_16;
    }

    v6 = obj_size_phys(a1);
    v7 = *(a1 + 56);
    v8 = (*(v7 + 32) & 1) != 0 ? -96 : -56;
    if (a2 > (v6 - *(v7 + 42) + v8 - (*(v7 + 46) + *(v7 + 44))))
    {
      goto LABEL_16;
    }

    v9 = (a3 + 7) & 0x1FFF8;
    if ((*(a1 + 400) & 0x40) != 0)
    {
      v9 = a3;
    }

    if (v9 > a2)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if ((*(a1 + 400) & 4) != 0 && (!a3 || a3 == 65534))
  {
    return 0;
  }

LABEL_16:
  v10 = *(*a1 + 392);

  return nx_corruption_detected_int(v10);
}

uint64_t btree_node_child_val(uint64_t a1, unsigned int a2, void *a3)
{
  if ((*(*(a1 + 56) + 32) & 2) != 0)
  {
    return 22;
  }

  v9 = 0;
  v8 = 0;
  result = btree_node_val_ptr(a1, a2, &v9, &v8);
  if (result)
  {
    return result;
  }

  if ((*(a1 + 407) & 0x7F) + 8 == v8)
  {
    result = 0;
    if (!a3)
    {
      return result;
    }
  }

  else
  {
    result = nx_corruption_detected_int(*(*a1 + 392));
    if (!a3)
    {
      return result;
    }
  }

  if (!result)
  {
    v6 = v9;
    v7 = *v9;
    *a3 = *v9;
    if ((*(*(a1 + 56) + 32) & 8) != 0)
    {
      *a3 = *(a1 + 408) + v7;
      memcpy(a3 + 1, v6 + 1, v8 - 8);
    }

    return 0;
  }

  return result;
}

uint64_t btree_node_child_id(uint64_t a1, unsigned int a2, void *a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 400);
  v7 = v6 & 0x7F00000000000000;
  v8 = (HIBYTE(v6) & 0x7F) + 8;
  if (v7 <= 0x4000000000000000)
  {
    v9 = v8;
  }

  else
  {
    v9 = 72;
  }

  MEMORY[0x28223BE20](a1, v9);
  v11 = (v15 - v10);
  bzero(v15 - v10, v12);
  result = btree_node_child_val(a1, a2, v11);
  if (!result)
  {
    *a3 = *v11;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t bt_insert(void *a1, uint64_t a2, unint64_t *a3, int a4, void *a5, unsigned int a6, uint64_t a7)
{
  LODWORD(v10) = a4;
  v221 = *MEMORY[0x277D85DE8];
  v14 = a1[50];
  if ((v14 & 0x7F00000000000000) <= 0x4000000000000000)
  {
    v15 = (HIBYTE(v14) & 0x7F) + 8;
  }

  else
  {
    v15 = 72;
  }

  MEMORY[0x28223BE20](a1, v15);
  v17 = (&v189 - v16);
  bzero(&v189 - v16, v18);
  v219 = 0u;
  v220 = 0u;
  v218 = 0u;
  v216 = 0;
  v217 = 0;
  v215 = 0;
  v214 = 0;
  v210 = 0;
  if (!a1[52])
  {
    v21 = 22;
    goto LABEL_32;
  }

  v212 = v10;
  if (a6 == 65534)
  {
    v19 = 0;
  }

  else
  {
    v19 = a6;
  }

  v211 = v19;
  v20 = btree_entry_size_check(a1, v10, a6);
  if (v20)
  {
    v21 = v20;
    v22 = a1[1];
    if (v22)
    {
      v23 = (v22 + 4040);
      if ((v14 & 0x40) != 0)
      {
        v24 = v10;
      }

      else
      {
        v24 = (v10 + 7) & 0xFFFFFFF8;
      }

      if ((v14 & 0x40) != 0)
      {
        v25 = v19;
      }

      else
      {
        v25 = (v19 + 7) & 0x1FFF8;
      }

      v26 = (v14 >> 27) & 0x1F000;
      v27 = (v14 >> 23);
      v28 = (v14 >> 9) & 0x3FFF;
      if (v28)
      {
        v29 = (v14 >> 9) & 0x3FFF;
      }

      else
      {
        v29 = (((v26 - 160) & 0xFFE0) >> 2) - 72;
      }
    }

    else
    {
      v23 = (*(*(*a1 + 392) + 384) + 212);
      if ((v14 & 0x40) != 0)
      {
        v24 = v10;
      }

      else
      {
        v24 = (v10 + 7) & 0xFFFFFFF8;
      }

      if ((v14 & 0x40) != 0)
      {
        v25 = v19;
      }

      else
      {
        v25 = (v19 + 7) & 0x1FFF8;
      }

      v26 = (v14 >> 27) & 0x1F000;
      v27 = (v14 >> 23);
      v28 = (v14 >> 9) & 0x3FFF;
      if (v28)
      {
        v29 = (v14 >> 9) & 0x3FFF;
      }

      else
      {
        v29 = (((v26 - 160) & 0xFFE0) >> 2) - 72;
      }
    }

    v31 = btree_entry_max_size(v14, v26, v28, v27);
    log_err("%s:%d: %s request to insert entry %d (%d) %d (%d) = (%d), max size is %d key %d, error %d\n", "bt_insert", 3392, v23, v10, v24, v19, v25, v24 + v25, v31, v29, v21);
    goto LABEL_32;
  }

  v205 = a6;
  obj_lock(a1, 2);
  v30 = obj_modify(a1, (*(a1 + 100) >> 3) & 2, a7);
  if (v30)
  {
    v21 = v30;
    obj_unlock(a1, 2);
    goto LABEL_32;
  }

  v213 = 0;
  *&v218 = a1;
  obj_retain(a1);
  v34 = a1[49];
  v35 = *(v34 + 16);
  v36 = *(v34 + 20) >= v19;
  if (v35 < v10)
  {
    v37 = v10;
  }

  else
  {
    v37 = v35;
  }

  if (v35 < v10)
  {
    v36 = 0;
  }

  v207 = v36;
  v38 = a1[54];
  v39 = a1;
  v204 = a2;
  if (v38)
  {
    v40 = a1[53];
    v39 = a1;
    if (v40)
    {
      v41 = a1[1];
      if (!v41)
      {
        v41 = *(*a1 + 392);
      }

      v42 = v40(v41, a3, v10);
      v39 = a1;
      if (v42)
      {
        v219 = v218;
        *&v218 = 0;
        v43 = a1[54];
        *v17 = v43;
        if (v43 != obj_oid(a1) && !btree_node_get(a1, v17, a2, (a7 != 0) | (((*(a1[7] + 32) >> 3) & 1) << 6) | 6u, 61455, a7, &v218))
        {
          v44 = v37;
          v45 = v218;
          if ((*(*(v218 + 56) + 32) & 2) != 0 && a1[54] == *(v218 + 112))
          {
            v46 = bt_search_node_insert(v218, a3, v10, &v218 + 4, (&v218 | 0xA));
            v45 = v218;
            if (!v46)
            {
              if (WORD4(v218))
              {
                if (!(BYTE10(v218) ? (btree_node_entry_update)(v218) : (btree_node_insert_internal)(v218)))
                {
                  v200 = 0;
                  v50 = 0;
                  v21 = 0;
                  v202 = 0;
                  v206 = 0;
                  goto LABEL_361;
                }
              }
            }
          }

          obj_unlock(v45, 2);
          obj_release(v45);
          v37 = v44;
        }

        v218 = v219;
        *&v219 = 0;
        v39 = v218;
      }
    }
  }

  v48 = *(*(v39 + 56) + 32);
  v49 = bt_search_node_insert(v39, a3, v10, &v218 + 4, (&v218 | 0xA));
  v21 = v49;
  if ((v48 & 2) != 0)
  {
    if (v49)
    {
      goto LABEL_61;
    }
  }

  else
  {
    if (v49)
    {
      goto LABEL_61;
    }

    if ((BYTE10(v218) & 1) == 0 && WORD4(v218))
    {
      --WORD4(v218);
    }
  }

  v194 = v37;
  v50 = v218;
  v57 = *(v218 + 56);
  v58 = *(v57 + 36);
  v59 = *(v57 + 32);
  v208 = (__PAIR64__(v58, v59 & 2) - 1) >> 32 == WORD4(v218);
  if (WORD4(v218) || (BYTE10(v218) & 1) != 0 || (v59 & 2) != 0)
  {
    v60 = 0;
    v50 = 0;
    v61 = v205;
    if ((v59 & 2) == 0)
    {
      goto LABEL_105;
    }

    v200 = 0;
    v202 = 0;
    v206 = 0;
LABEL_91:
    v62 = v220;
    if (v220)
    {
      if ((v220 != a1 || v207) && v220 != v50 && v220 != v200)
      {
        obj_unlock(v220, 2);
        obj_release(v62);
      }

      *&v220 = 0;
    }

    if (v208)
    {
      v63 = a1[54];
      v64 = *(v218 + 112);
      if (v63 != v64)
      {
        v65 = a1[50];
        if (v63)
        {
          if ((v65 & 0x10) == 0)
          {
            panic("btree rightmost leaf mismatch! (expected %lld found %lld)\n", *(v218 + 112), v63);
          }

          panic("btree rightmost leaf field is set for physical tree!\n");
        }

        if ((v65 & 0x10) == 0)
        {
          a1[54] = v64;
        }
      }
    }

    v10 = v212;
    if (BYTE10(v218) == 1)
    {
      inserted = btree_node_entry_update(v218, WORD4(v218), a3, v212, a5, v61, a7);
    }

    else
    {
      inserted = btree_node_insert_internal(v218, WORD4(v218), a3, v212, a5, v61, a7);
    }

    v21 = inserted;
    if (inserted != 28)
    {
      goto LABEL_356;
    }

    v146 = bt_shift_or_split(a1, v219, WORD4(v219), v218, WORD4(v218), a3, v10, 1u, &v212, &v211, 0, a2, a7, &v217);
    if (v146)
    {
      v21 = v146;
      v147 = a1[1];
      if (v147)
      {
        v148 = (v147 + 4040);
      }

      else
      {
        v148 = (*(*(*a1 + 392) + 384) + 212);
      }

      log_err("%s:%d: %s bt_shift_or_split failed with error: %d\n", "bt_insert", 3878, v148, v146);
      goto LABEL_356;
    }

    v149 = v217;
    if (!v217)
    {
      v149 = v218;
      goto LABEL_351;
    }

    if (v219)
    {
      ++WORD4(v219);
      v150 = v218;
      if (v218 && (v218 != a1 || v207) && v218 != v50 && v218 != v200)
      {
        obj_unlock(v218, 2);
        obj_release(v150);
      }

      v217 = 0;
      *&v218 = v149;
LABEL_351:
      v21 = btree_node_insert(v149, a3, v10, a5, v205, a7, &v218 + 4, (&v218 | 0xA));
      if (!v21)
      {
        goto LABEL_356;
      }

      goto LABEL_352;
    }

    v169 = v218;
    *&v219 = v218;
    if (*(v217[7] + 36))
    {
      v170 = btree_node_key_ptr(v217, 0, &v215, &v213);
      if (v170)
      {
        v21 = v170;
        v217 = 0;
        *&v218 = v149;
        goto LABEL_352;
      }

      v169 = v219;
      v183 = v215;
      v184 = v213;
    }

    else
    {
      v183 = a3;
      v184 = v10;
    }

    v21 = bt_search_node(v169, v183, v184, &v219 + 4, &v219 + 10);
    v217 = 0;
    *&v218 = v149;
    if (!v21)
    {
      goto LABEL_351;
    }

LABEL_352:
    v151 = a1[1];
    if (v151)
    {
      v152 = (v151 + 4040);
    }

    else
    {
      v152 = (*(*(*a1 + 392) + 384) + 212);
    }

    log_err("%s:%d: %s bt_shift_or_split failed with error: %d\n", "bt_insert", 3915, v152, v21);
LABEL_356:
    if (!v21 && !WORD4(v218) && v219)
    {
      v153 = btree_node_key_ptr(v219, WORD4(v219), &v215, &v213);
      if (v153)
      {
        v21 = v153;
      }

      else
      {
        v165 = a1[1];
        if (!v165)
        {
          v165 = *(*a1 + 392);
        }

        v21 = (a1[52])(v165, a3, v10, v215, v213, &v214);
        if (!v21)
        {
          if (v214)
          {
            v166 = btree_node_entry_update(v219, WORD4(v219), a3, v10, 0, 0, a7);
            v21 = v166;
            if (v166)
            {
              v167 = a1[1];
              if (v167)
              {
                v168 = (v167 + 4040);
              }

              else
              {
                v168 = (*(*(*a1 + 392) + 384) + 212);
              }

              log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_insert", 3929, v168, v166);
            }
          }
        }
      }
    }

LABEL_361:
    v154 = v219;
    if (v219)
    {
      if ((v219 != a1 || v207) && v219 != v50 && v219 != v200)
      {
        obj_unlock(v219, 2);
        obj_release(v154);
      }

      *&v219 = 0;
    }

    v155 = v218;
    if (v218)
    {
      if ((v218 != a1 || v207) && v218 != v50 && v218 != v216)
      {
        obj_unlock(v218, 2);
        obj_release(v155);
      }

      *&v218 = 0;
    }

    if (v21)
    {
      goto LABEL_62;
    }

    v156 = a1[49];
    v157 = *(v156 + 16);
    v158 = v157 >= v10;
    v159 = v157 < v10;
    if (!v158)
    {
      *(v156 + 16) = v10;
    }

    v160 = v206;
    v161 = v202;
    if (*(v156 + 20) < v211)
    {
      *(v156 + 20) = v211;
      v159 = 1;
    }

    if (BYTE10(v218))
    {
      if ((((a1[50] & 0x80) == 0) & ~v159) != 0)
      {
        goto LABEL_383;
      }
    }

    else
    {
      atomic_fetch_add_explicit((v156 + 24), 1uLL, memory_order_relaxed);
    }

    obj_dirty(a1, a7, 0);
LABEL_383:
    if ((v160 & (WORD4(v218) == 0)) != 1)
    {
      v21 = 0;
      goto LABEL_62;
    }

    if (v50)
    {
      v162 = btree_node_entry_update(v50, v161, a3, v10, 0, 0, a7);
      v21 = v162;
      if (v162)
      {
        v163 = a1[1];
        if (v163)
        {
          v164 = (v163 + 4040);
        }

        else
        {
          v164 = (*(*(*a1 + 392) + 384) + 212);
        }

        log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_insert", 3969, v164, v162);
      }

      if (v50 != v220 && v50 != v219 && (v50 != a1 || v207))
      {
        obj_unlock(v50, 2);
        obj_release(v50);
      }
    }

    else
    {
      v21 = 0;
    }

    v171 = v216;
    v172 = v216 + 7;
    if (*(v216[7] + 34) < 2u)
    {
LABEL_444:
      if (v171 != v220 && v171 != v219 && (v171 != a1 || v207))
      {
        obj_unlock(v171, 2);
        obj_release(v171);
      }

      v50 = 0;
      v216 = 0;
      goto LABEL_62;
    }

    v173 = v212;
    while (1)
    {
      WORD2(v209) = 0;
      LOBYTE(v209) = 0;
      v174 = bt_search_node(v171, a3, v173, &v209 + 2, &v209);
      if (v174)
      {
        v21 = v174;
        goto LABEL_61;
      }

      v175 = v209;
      v176 = WORD2(v209);
      if ((v209 & 1) != 0 || WORD2(v209))
      {
        v181 = a1[1];
        if (v181)
        {
          v182 = (v181 + 4040);
        }

        else
        {
          v182 = (*(*(*a1 + 392) + 384) + 212);
        }

        v187 = obj_oid(v171);
        v188 = obj_subtype(v171);
        log_err("%s:%d: %s minkey update traversal unexpectedly found the key (%d) or a non-zero index (%d); oid %llu subtype 0x%x level %d\n", "bt_insert", 3987, v182, v175, v176, v187, v188, *(*v172 + 34));
LABEL_443:
        v21 = 0;
        goto LABEL_444;
      }

      v177 = btree_node_entry_update(v171, 0, a3, v173, 0, 0, a7);
      v21 = v177;
      if (v177)
      {
        v178 = a1[1];
        if (v178)
        {
          v179 = (v178 + 4040);
        }

        else
        {
          v179 = (*(*(*a1 + 392) + 384) + 212);
        }

        log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_insert", 3992, v179, v177);
      }

      v180 = *(*v172 + 34);
      if (v180 == 2)
      {
        goto LABEL_444;
      }

      v21 = btree_node_child_val(v171, 0, v17);
      v216 = 0;
      if (!v21)
      {
        v21 = btree_node_get(a1, v17, v204, 3u, v180 - 1, a7, &v216);
      }

      if (v171 != v220 && v171 != v219 && (v171 != a1 || v207))
      {
        obj_unlock(v171, 2);
        obj_release(v171);
      }

      v171 = v216;
      if (v21)
      {
        break;
      }

      v172 = v216 + 7;
      if (*(v216[7] + 34) <= 1u)
      {
        goto LABEL_443;
      }
    }

    if (v216)
    {
      goto LABEL_444;
    }

LABEL_61:
    v50 = 0;
    goto LABEL_62;
  }

  v216 = v218;
  v60 = 1;
LABEL_105:
  v66 = v50;
  v50 = 0;
  v197 = v66;
  v198 = v66;
  v199 = v66;
  v203 = v66;
  v200 = v66;
  v201 = v66;
  v206 = v60;
  v202 = 0;
  v195 = a5;
  while (2)
  {
    v67 = v220;
    if (v220 && (v220 != a1 || v207))
    {
      v68 = v220 == v50 || v220 == v201;
      if (!v68)
      {
        obj_unlock(v220, 2);
        obj_release(v67);
      }
    }

    v69 = v219;
    v219 = v218;
    v220 = v69;
    *&v218 = 0;
    v70 = btree_node_child_val(v219, WORD4(v219), v17);
    if (v70)
    {
LABEL_329:
      v21 = v70;
      goto LABEL_62;
    }

    v71 = *(*(v219 + 56) + 34) - 1;
    v72 = a1;
    v73 = v17;
    for (i = a2; ; i = v89)
    {
      v70 = btree_node_get(v72, v73, i, 3u, v71, a7, &v218);
      if (v70)
      {
        goto LABEL_329;
      }

      v75 = v218;
      if ((a1[50] & 0x10) != 0 && *(v218 + 112) != *v17)
      {
        btree_node_child_id_update(v219, WORD4(v219), (v218 + 112), a7);
        v75 = v218;
      }

      v76 = *(*(v75 + 56) + 32);
      v77 = bt_search_node_insert(v75, a3, v212, &v218 + 4, (&v218 | 0xA));
      v21 = v77;
      if ((v76 & 2) != 0)
      {
        if (v77)
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (v77)
        {
          goto LABEL_62;
        }

        if ((BYTE10(v218) & 1) == 0 && WORD4(v218))
        {
          --WORD4(v218);
        }
      }

      v78 = a7;
      v79 = a3;
      v80 = v50;
      v81 = v218;
      if (!v208)
      {
        v208 = 0;
        v83 = *(v218 + 56);
        LOWORD(v84) = *(v83 + 32);
        v82 = WORD4(v218);
        if ((v84 & 2) == 0)
        {
          goto LABEL_154;
        }

        goto LABEL_134;
      }

      v82 = WORD4(v218);
      v83 = *(v218 + 56);
      v84 = *(v83 + 32);
      if (((v84 >> 1) & 1) + *(v83 + 36) - 1 == WORD4(v218))
      {
        break;
      }

      v208 = 0;
      if ((v84 & 2) == 0)
      {
        goto LABEL_154;
      }

LABEL_134:
      if (*(v83 + 36) != v82)
      {
        goto LABEL_154;
      }

      v85 = WORD4(v219);
      v86 = v219;
      if (*(*(v219 + 56) + 36) - 1 <= WORD4(v219) || btree_node_has_room(v81, 1u, &v212, &v211, 0, 0, 0))
      {
        goto LABEL_154;
      }

      v70 = btree_node_child_val(v86, (v85 + 1), v17);
      v50 = v80;
      if (v70)
      {
        goto LABEL_329;
      }

      v87 = v218;
      obj_unlock(v218, 2);
      obj_release(v87);
      *&v218 = 0;
      v88 = WORD4(v219)++;
      if ((v206 & (v88 == 0)) == 1)
      {
        v89 = v204;
        a3 = v79;
        if (v50)
        {
          a7 = v78;
          v90 = v203;
          if (v50 != v220 && v50 != v219 && (v50 != a1 || v207))
          {
            obj_unlock(v50, 2);
            obj_release(v50);
            v90 = v216;
            v197 = v216;
            v198 = v216;
            v199 = v216;
            v200 = v216;
          }
        }

        else
        {
          a7 = v78;
          v90 = v203;
        }

        if (v90)
        {
          if (v90 != v220 && v90 != v219 && (v90 != a1 || v207))
          {
            obj_unlock(v90, 2);
            obj_release(v90);
          }

          v200 = 0;
          v197 = 0;
          v198 = 0;
          v199 = 0;
          v203 = 0;
          v201 = 0;
          v50 = 0;
          v202 = 0;
          v206 = 0;
          v216 = 0;
        }

        else
        {
          v203 = 0;
          v201 = 0;
          v50 = 0;
          v202 = 0;
          v206 = 0;
        }
      }

      else
      {
        v89 = v204;
        a3 = v79;
        a7 = v78;
      }

      v71 = *(*(v219 + 56) + 34) - 1;
      v72 = a1;
      v73 = v17;
    }

    if (a1[54] == *(v219 + 112))
    {
      a1[54] = *(v218 + 112);
    }

    v208 = 1;
    if ((v84 & 2) != 0)
    {
      goto LABEL_134;
    }

LABEL_154:
    v91 = v82 != 0;
    if (!(v206 & 1 | v91))
    {
      v206 = 0;
      a2 = v204;
      v50 = v80;
      if ((v84 & 2) == 0)
      {
        a3 = v79;
        a7 = v78;
        a5 = v195;
        if ((BYTE10(v218) & 1) == 0)
        {
          v50 = v219;
          v206 = 1;
          v200 = v81;
          v197 = v81;
          v202 = WORD4(v219);
          v198 = v81;
          v199 = v81;
          v216 = v81;
          v203 = v81;
          v201 = v81;
        }

        goto LABEL_174;
      }

      goto LABEL_164;
    }

    a2 = v204;
    v50 = v80;
    if ((v206 & v91) != 1)
    {
LABEL_164:
      a3 = v79;
      a7 = v78;
      a5 = v195;
      goto LABEL_174;
    }

    a3 = v79;
    if (!v50)
    {
      a7 = v78;
      goto LABEL_166;
    }

    a7 = v78;
    if (v50 == v220)
    {
LABEL_166:
      a5 = v195;
      goto LABEL_167;
    }

    a5 = v195;
    if (v50 != v219 && (v50 != a1 || v207))
    {
      obj_unlock(v50, 2);
      obj_release(v50);
      v197 = v216;
      v198 = v216;
      v200 = v216;
      v199 = v216;
    }

LABEL_167:
    v92 = v199;
    if (v199)
    {
      if (v199 != v220 && v199 != v219 && (v199 != a1 || v207))
      {
        obj_unlock(v199, 2);
        obj_release(v92);
      }

      v200 = 0;
      v197 = 0;
      v198 = 0;
      v199 = 0;
      v203 = 0;
      v201 = 0;
      v50 = 0;
      v202 = 0;
      v206 = 0;
      v216 = 0;
    }

    else
    {
      v199 = 0;
      v203 = 0;
      v201 = 0;
      v50 = 0;
      v202 = 0;
      v206 = 0;
    }

LABEL_174:
    v93 = btree_node_largest_key_len(v218);
    if (WORD4(v218) || (BYTE10(v218) & 1) != 0)
    {
      goto LABEL_181;
    }

    v70 = btree_node_key_ptr(v219, WORD4(v219), &v215, &v213);
    if (v70)
    {
      goto LABEL_329;
    }

    v94 = a1[1];
    if (!v94)
    {
      v94 = *(*a1 + 392);
    }

    v95 = v212;
    v70 = (a1[52])(v94, a3, v212, v215, v213, &v214);
    if (v70)
    {
      goto LABEL_329;
    }

    if ((v214 & 0x80000000) == 0)
    {
LABEL_181:
      v96 = 0;
      v97 = 0;
    }

    else
    {
      v109 = *(v218 + 400);
      if ((v109 & 0x40) != 0)
      {
        v110 = v95;
      }

      else
      {
        v110 = (v95 + 7) & 0x1FFF8;
      }

      if ((v109 & 0x40) != 0)
      {
        v111 = v213;
      }

      else
      {
        v111 = (v213 + 7) & 0x1FFF8;
      }

      if (v110 <= v111)
      {
        v96 = 0;
      }

      else
      {
        v68 = (*(v218 + 400) & 0x40) == 0;
        if ((v109 & 0x40) != 0)
        {
          v112 = v95;
        }

        else
        {
          v112 = (v95 + 7) & 0x1FFF8;
        }

        if ((*(v218 + 400) & 0x40) != 0)
        {
          v113 = v213;
        }

        else
        {
          v113 = (v213 + 7) & 0x1FFF8;
        }

        v96 = v112 - v113;
      }

      v97 = 1;
    }

    v196 = v50;
    v98 = *(*(v219 + 56) + 34);
    if (v98 < 2)
    {
      WORD2(v210) = v93;
      v100 = *(v219 + 400);
      v101 = (HIBYTE(v100) & 0x7F) + 8;
      LOWORD(v210) = v101;
      if ((v97 & 1) == 0)
      {
        v99 = v212;
        goto LABEL_190;
      }

      goto LABEL_188;
    }

    v99 = v212;
    if (v93 > v212)
    {
      v99 = v93;
    }

    WORD2(v210) = v99;
    v100 = *(v219 + 400);
    v101 = (HIBYTE(v100) & 0x7F) + 8;
    LOWORD(v210) = v101;
    if (v97)
    {
LABEL_188:
      v102 = 1;
      goto LABEL_191;
    }

LABEL_190:
    HIWORD(v210) = v99;
    WORD1(v210) = v101;
    v102 = 2;
LABEL_191:
    LODWORD(v193) = v96;
    v192 = v219;
    v191 = v96;
    if (btree_node_has_room(v219, v102, &v210 + 2, &v210, v96, 0, 0))
    {
      v50 = v196;
      v61 = v205;
      goto LABEL_193;
    }

    v190 = v102;
    if (v98 >= 2)
    {
      v209 = ((HIBYTE(v100) & 0x7F) + 8);
      if (v97)
      {
        v103 = 1;
      }

      else
      {
        HIWORD(v209) = v194;
        WORD1(v209) = (HIBYTE(v100) & 0x7F) + 8;
        v103 = 2;
      }

      v50 = v196;
      has_room = btree_node_has_room(v218, v103, &v209 + 2, &v209, v191, 0, 0);
      v61 = v205;
      if (!has_room)
      {
        goto LABEL_253;
      }

      goto LABEL_193;
    }

    v104 = v218;
    if (BYTE10(v218) != 1)
    {
      v108 = btree_node_has_room(v218, 1u, &v212, &v211, 0, 0, 0);
      v50 = v196;
      v61 = v205;
      if (!v108)
      {
        goto LABEL_253;
      }

LABEL_251:
      if (v193 && !btree_node_has_room(v192, 0, 0, 0, v191, 0, 0))
      {
        goto LABEL_253;
      }

      goto LABEL_193;
    }

    v61 = v205;
    if ((*(*(v218 + 56) + 32) & 4) != 0)
    {
      v106 = *(v218 + 400);
      v105 = (v106 >> 9) & 0x3FFF;
    }

    else
    {
      v105 = *(*(v218 + 376) + 8 * WORD4(v218) + 2);
      v106 = *(v218 + 400);
    }

    v213 = v105;
    v114 = btree_node_val_len(v218, WORD4(v218));
    v115 = 0;
    if (v114 == 65534)
    {
      v116 = 0;
    }

    else
    {
      v116 = v114;
    }

    if ((v106 & 0x40) != 0)
    {
      v117 = v212;
    }

    else
    {
      v117 = (v212 + 7) & 0x1FFF8;
    }

    if ((v106 & 0x40) != 0)
    {
      v118 = v105;
    }

    else
    {
      v118 = (v105 + 7) & 0x1FFF8;
    }

    if (v117 > v118)
    {
      if ((v106 & 0x40) != 0)
      {
        v119 = v212;
      }

      else
      {
        v119 = (v212 + 7) & 0xFFF8;
      }

      if ((v106 & 0x40) != 0)
      {
        v120 = v105;
      }

      else
      {
        v120 = (v105 + 7) & 0xFFF8;
      }

      v115 = v119 - v120;
    }

    v121 = v211;
    if ((v106 & 0x40) != 0)
    {
      v122 = v211;
    }

    else
    {
      v122 = (v211 + 7) & 0x1FFF8;
    }

    if ((v106 & 0x40) != 0)
    {
      v123 = v116;
    }

    else
    {
      v123 = (v116 + 7) & 0x1FFF8;
    }

    if (v122 <= v123)
    {
      v124 = 0;
    }

    else
    {
      if ((v106 & 0x40) == 0)
      {
        v121 = (v211 + 7) & 0xFFF8;
        LOWORD(v116) = (v116 + 7) & 0xFFF8;
      }

      v124 = v121 - v116;
    }

    v50 = v196;
    if (!(v115 | v124) || btree_node_has_room(v104, 0, 0, 0, v115, v124, 0))
    {
      goto LABEL_251;
    }

LABEL_253:
    v125 = v212;
    v126 = bt_shift_or_split(a1, v220, WORD4(v220), v192, (WORD4(v219) + ((BYTE10(v219) & 1) == 0)), a3, v212, v190, &v210 + 2, &v210, v193, a2, a7, &v217);
    if (v126)
    {
      v21 = v126;
      v185 = a1[1];
      if (v185)
      {
        v186 = (v185 + 4040);
      }

      else
      {
        v186 = (*(*(*a1 + 392) + 384) + 212);
      }

      log_err("%s:%d: %s bt_shift_or_split failed with error: %d\n", "bt_insert", 3679, v186, v126);
      goto LABEL_62;
    }

    v127 = v217;
    v61 = v205;
    if (!v217)
    {
      goto LABEL_193;
    }

    v128 = v219;
    v196 = v219;
    if (v220)
    {
      ++WORD4(v220);
      v129 = v202;
      if (v219)
      {
        if (v219 != a1 || v207)
        {
          if (v50 == v219)
          {
            v130 = v198;
          }

          else
          {
            v130 = v198;
            if (v219 != v198)
            {
              v131 = v198;
              v192 = v217;
              obj_unlock(v219, 2);
              obj_release(v196);
              v127 = v192;
              v193 = 0;
              v199 = v131;
              v203 = v131;
              v201 = v131;
              goto LABEL_273;
            }
          }

          v199 = v130;
          v203 = v130;
          v201 = v130;
        }

        v193 = v219;
      }

      else
      {
        v193 = 0;
      }

LABEL_273:
      if (v50 == v220 && v50 != 0)
      {
        v129 = WORD4(v220);
      }

      v202 = v129;
      *&v219 = v127;
      v217 = 0;
      v136 = v125;
      v70 = bt_search_node(v127, a3, v125, &v219 + 4, &v219 + 10);
      if (v70)
      {
        goto LABEL_329;
      }

      v137 = v218;
      obj_unlock(v218, 2);
      obj_release(v137);
      *&v218 = 0;
      v70 = btree_node_child_val(v219, WORD4(v219), v17);
      if (v70)
      {
        goto LABEL_329;
      }

      v70 = btree_node_get(a1, v17, a2, 3u, *(*(v219 + 56) + 34) - 1, a7, &v218);
      if (v70)
      {
        goto LABEL_329;
      }

      v138 = v218;
      if ((a1[50] & 0x10) != 0 && *(v218 + 112) != *v17)
      {
        btree_node_child_id_update(v219, WORD4(v219), (v218 + 112), a7);
        v138 = v218;
      }

      if ((*(*(v138 + 56) + 32) & 2) != 0)
      {
        v139 = bt_search_node_insert(v138, a3, v136, &v218 + 4, (&v218 | 0xA));
      }

      else
      {
        v139 = bt_search_node(v138, a3, v136, &v218 + 4, (&v218 | 0xA));
      }

      v21 = v139;
      v140 = v193;
      if (v139)
      {
        goto LABEL_62;
      }

      if (v50 == v196)
      {
        v142 = WORD4(v219);
        v61 = v205;
        if (v50 == a1 && !WORD4(v219))
        {
          v197 = v219;
          v216 = v219;
          v198 = v219;
          v199 = v219;
          v203 = v219;
          v200 = v219;
          v201 = v219;
          goto LABEL_193;
        }

        if (!WORD4(v219))
        {
          v50 = v220;
          v143 = v219;
          goto LABEL_319;
        }

        v50 = v219;
        v143 = v218;
        v197 = v218;
      }

      else
      {
        v61 = v205;
        if ((v206 & 1) == 0)
        {
          v142 = v202;
          goto LABEL_306;
        }

        if (!(WORD4(v219) | WORD4(v218)))
        {
          v206 = 1;
          v142 = v202;
          goto LABEL_321;
        }

        if (v50 && v50 != v220 && v50 != v219 && (v50 != a1 || v207))
        {
          obj_unlock(v50, 2);
          obj_release(v50);
          v140 = v193;
          v200 = v216;
          v197 = v216;
        }

        v141 = v197;
        if (v197)
        {
          if (v197 != v220 && v197 != v219 && (v197 != a1 || v207))
          {
            obj_unlock(v197, 2);
            obj_release(v141);
            v140 = v193;
          }

          v200 = 0;
          v197 = 0;
          v198 = 0;
          v199 = 0;
          v203 = 0;
          v201 = 0;
          v50 = 0;
          v142 = 0;
          v216 = 0;
        }

        else
        {
          v197 = 0;
          v198 = 0;
          v199 = 0;
          v203 = 0;
          v201 = 0;
          v50 = 0;
          v142 = 0;
        }

LABEL_306:
        if (WORD4(v218))
        {
LABEL_307:
          v206 = 0;
          goto LABEL_321;
        }

        if (WORD4(v219) || (BYTE10(v219) & 1) != 0)
        {
          if ((BYTE10(v218) & 1) != 0 || (*(*(v218 + 56) + 32) & 2) != 0)
          {
            goto LABEL_307;
          }

          v50 = v219;
          v206 = 1;
          v200 = v218;
          v197 = v218;
          v198 = v218;
          v216 = v218;
          v199 = v218;
          v203 = v218;
          v201 = v218;
          v142 = WORD4(v219);
LABEL_321:
          if (v140)
          {
            if (v140 == a1 && !v207 || v140 == v50)
            {
              v197 = v200;
              v198 = v200;
              v199 = v200;
              v203 = v200;
              v201 = v200;
            }

            else
            {
              v144 = v200;
              if (v140 != v200)
              {
                v202 = v142;
                obj_unlock(v140, 2);
                obj_release(v140);
                v197 = v144;
                v198 = v144;
                v199 = v144;
                v203 = v144;
                v201 = v144;
                goto LABEL_193;
              }

              v197 = v200;
              v198 = v200;
              v199 = v200;
              v203 = v200;
              v201 = v200;
            }
          }

          v202 = v142;
LABEL_193:
          if ((*(*(v218 + 56) + 32) & 2) == 0)
          {
            continue;
          }

          goto LABEL_91;
        }

        v50 = v220;
        v143 = v219;
        v206 = 1;
LABEL_319:
        v197 = v143;
        v142 = WORD4(v220);
      }

      v216 = v143;
      v198 = v143;
      v199 = v143;
      v203 = v143;
      v200 = v143;
      v201 = v143;
      goto LABEL_321;
    }

    break;
  }

  *&v220 = v219;
  v132 = *(v217[7] + 36);
  v192 = v217;
  if (v132)
  {
    v70 = btree_node_key_ptr(v217, 0, &v215, &v213);
    if (v70)
    {
      goto LABEL_329;
    }

    v128 = v220;
    v133 = v215;
    v134 = v213;
  }

  else
  {
    v133 = a3;
    v134 = v125;
  }

  v21 = bt_search_node(v128, v133, v134, &v220 + 4, &v220 + 10);
  if (!v21)
  {
    v193 = 0;
    v129 = v202;
    v127 = v192;
    goto LABEL_273;
  }

LABEL_62:
  v51 = v220;
  v52 = v216;
  if (v220 && v220 != v50 && v220 != v216)
  {
    obj_unlock(v220, 2);
    obj_release(v51);
  }

  v53 = v219;
  if (v219 && v219 != v50 && v219 != v52)
  {
    obj_unlock(v219, 2);
    obj_release(v53);
  }

  v54 = v218;
  if (v218 && v218 != v50 && v218 != v52)
  {
    obj_unlock(v218, 2);
    obj_release(v54);
  }

  if (v50)
  {
    obj_unlock(v50, 2);
    obj_release(v50);
    v52 = v216;
  }

  if (v52)
  {
    obj_unlock(v52, 2);
    obj_release(v52);
  }

  v55 = v217;
  if (v217)
  {
    obj_unlock(v217, 2);
    obj_release(v55);
  }

  v56 = v207;
  if (v220 == a1)
  {
    v56 = 1;
  }

  if (v52 != a1 && (v56 & 1) == 0 && v219 != a1 && v218 != a1 && v50 != a1)
  {
    obj_unlock(a1, 2);
    obj_release(a1);
  }

LABEL_32:
  v32 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t bt_search_node_insert(uint64_t a1, unint64_t *a2, uint64_t a3, _WORD *a4, BOOL *a5)
{
  v21 = 0;
  v10 = *(*(a1 + 56) + 36) - 1;
  v20 = 0;
  if ((*(a1 + 400) & 1) == 0)
  {
    if ((v10 & 0x80000000) == 0)
    {
      v11 = 0;
      v23 = 0;
      while (1)
      {
        v12 = (v10 + v11) / 2;
        result = btree_node_key_ptr(a1, v12, &v23, &v20);
        if (result)
        {
          return result;
        }

        v14 = *(a1 + 8);
        if (!v14)
        {
          v14 = *(*a1 + 392);
        }

        result = (*(a1 + 416))(v14, a2, a3, v23, v20, &v21);
        if (result)
        {
          return result;
        }

        v15 = v21 == 0;
        if (!v21)
        {
          v11 = (v10 + v11) / 2;
          goto LABEL_34;
        }

        if (v21 < 0)
        {
          v10 = v12 - 1;
        }

        else
        {
          v11 = v12 + 1;
        }

        if (v11 > v10)
        {
          goto LABEL_34;
        }
      }
    }

    v15 = 0;
    LOWORD(v11) = 0;
LABEL_34:
    result = 0;
    *a4 = v11;
LABEL_37:
    *a5 = v15;
    return result;
  }

  if (a3 != 8)
  {
    return 22;
  }

  if (v10 < 0)
  {
    v15 = 0;
    LOWORD(v16) = 0;
LABEL_36:
    result = 0;
    *a4 = v16;
    goto LABEL_37;
  }

  v16 = 0;
  v17 = *a2;
  v23 = 0;
  v22 = 0;
  while (1)
  {
    v18 = (v16 + v10) / 2;
    LODWORD(result) = btree_node_key_ptr(a1, v18, &v23, &v22);
    v19 = v22 != 8 && result == 0;
    result = v19 ? 22 : result;
    if (result)
    {
      return result;
    }

    v15 = *v23 == v17;
    if (*v23 == v17)
    {
      v16 = (v16 + v10) / 2;
      goto LABEL_36;
    }

    if (*v23 > v17)
    {
      v10 = v18 - 1;
    }

    else
    {
      v16 = v18 + 1;
    }

    if (v16 > v10)
    {
      goto LABEL_36;
    }
  }
}

uint64_t btree_node_entry_update(uint64_t a1, unsigned int a2, void *__src, size_t __n, void *a5, unsigned int a6, uint64_t a7)
{
  v7 = a7;
  v8 = a5;
  v9 = __n;
  v10 = __src;
  v11 = a2;
  v103 = 0;
  v102 = 0;
  v101 = 0;
  v13 = *(a1 + 56);
  v14 = *(v13 + 32);
  if (a6 == 65534)
  {
    v15 = 0;
  }

  else
  {
    v15 = a6;
  }

  v100 = *(v13 + 32);
  if (*(v13 + 36) <= a2)
  {
    v24 = 0;
    v23 = 0;
    LOWORD(v25) = 0;
    v97 = 0;
    v18 = 0xFFFF;
    v20 = 0xFFFF;
  }

  else
  {
    v16 = *(a1 + 376);
    if ((v14 & 4) != 0)
    {
      v17 = (v16 + 4 * a2);
    }

    else
    {
      v17 = (v16 + 8 * a2);
    }

    v18 = *v17;
    v19 = (v16 + 4 * a2 + 2);
    if ((v14 & 4) == 0)
    {
      v19 = (v16 + 8 * a2 + 4);
    }

    v20 = *v19;
    v21 = __n;
    v22 = v15;
    if (v18 == 0xFFFF)
    {
      v23 = 0;
    }

    else if ((v14 & 4) != 0)
    {
      v23 = (*(a1 + 400) >> 9) & 0x3FFF;
    }

    else
    {
      v23 = *(v16 + 8 * a2 + 2);
    }

    if (v20 > 0xFFFD)
    {
      v25 = 0;
    }

    else
    {
      v35 = v23;
      v36 = btree_node_val_len(a1, a2);
      v23 = v35;
      v25 = v36;
    }

    v97 = v23 != 0;
    if (v23)
    {
      v37 = v23;
      v38 = btree_node_key_range_validate(a1, v18, v23);
      v23 = v37;
      if (v38)
      {
        return v38;
      }
    }

    if (v25)
    {
      v93 = v11;
      v39 = v23;
      v38 = btree_node_val_range_validate(a1, v20, v25);
      if (v38)
      {
        return v38;
      }

      v24 = 1;
      v7 = a7;
      v8 = a5;
      v15 = v22;
      v9 = v21;
      v23 = v39;
      v11 = v93;
      v10 = __src;
    }

    else
    {
      v24 = 0;
      v7 = a7;
      v8 = a5;
      v15 = v22;
      v9 = v21;
      v10 = __src;
    }
  }

  HIWORD(v103) = v18;
  LOWORD(v103) = v20;
  v26 = v9 - v23;
  if (!v10)
  {
    v26 = 0;
  }

  v27 = v26;
  v28 = v15 - v25;
  if (!v8)
  {
    v28 = 0;
  }

  v29 = v28;
  if (v26 | v28)
  {
    if (v10)
    {
      if ((*(a1 + 400) & 0x40) != 0)
      {
        v30 = v9;
      }

      else
      {
        v30 = (v9 + 7) & 0xFFF8;
      }

      v31 = (v23 + 7) & 0xFFF8;
      if ((*(a1 + 400) & 0x40) != 0)
      {
        v31 = v23;
      }

      v32 = (v30 - v31);
    }

    else
    {
      v32 = 0;
    }

    v91 = v24;
    v92 = v18;
    v90 = v8;
    v96 = v29;
    v94 = v27;
    v41 = v23;
    if (v8)
    {
      v42 = v7;
      if ((*(a1 + 400) & 0x40) != 0)
      {
        v43 = v15;
      }

      else
      {
        v43 = (v15 + 7) & 0xFFF8;
      }

      v44 = (v25 + 7) & 0xFFF8;
      if ((*(a1 + 400) & 0x40) != 0)
      {
        v44 = v25;
      }

      v45 = (v43 - v44);
    }

    else
    {
      v42 = v7;
      v45 = 0;
    }

    if (v45 + v32 > btree_node_free_space_total(a1))
    {
      return 28;
    }

    v46 = 0;
    v101 = -1;
    v102 = -1;
    v47 = v42;
    if (v9)
    {
      v29 = v96;
      v48 = v92;
      v27 = v94;
      v23 = v41;
      if (!v94)
      {
LABEL_61:
        if (v15 && v29)
        {
          v49 = v46;
          btree_node_space_free_list_search(a1, 2, v15, &v101, &v103);
          if (v103 == -1)
          {
            v29 = v96;
            v48 = v92;
            v27 = v94;
            v23 = v41;
            v46 = v49;
            if (v96 < 0)
            {
              LOWORD(v103) = v20;
              v101 = -1;
            }

            else
            {
              if ((*(a1 + 400) & 0x40) != 0)
              {
                v50 = v15;
              }

              else
              {
                v50 = (v15 + 7) & 0xFFF8;
              }

              v46 = v50 + v49;
            }
          }

          else
          {
            v29 = v96;
            v48 = v92;
            v27 = v94;
            v23 = v41;
            v46 = v49;
          }
        }

        v51 = *(a1 + 56);
        v52 = *(v51 + 46);
        if (v27)
        {
          v53 = v97;
        }

        else
        {
          v53 = 0;
        }

        if (v53)
        {
          if ((*(a1 + 400) & 0x40) != 0)
          {
            v54 = v23;
          }

          else
          {
            v54 = (v23 + 7) & 0xFFF8;
          }

          v55 = (v54 + 7) & 0xFFF8;
          if ((*(a1 + 400) & 0x40) != 0)
          {
            v55 = v23;
          }

          if (v55 >= 4u)
          {
            v56 = (*(a1 + 384) + v48);
            v56[1] = v55;
            *v56 = *(v51 + 48);
            *(v51 + 48) = v48;
          }

          *(v51 + 50) += v55;
          if (HIWORD(v103) != 0xFFFF && v102 == 0xFFFF && HIWORD(v103) != v48 && *(v51 + 48) == v48)
          {
            v102 = v48;
          }
        }

        if (v29)
        {
          v57 = v91;
        }

        else
        {
          v57 = 0;
        }

        if (v57 == 1)
        {
          if ((*(a1 + 400) & 0x40) != 0)
          {
            v58 = v25;
          }

          else
          {
            v58 = (v25 + 7) & 0xFFF8;
          }

          v59 = (v58 + 7) & 0xFFF8;
          if ((*(a1 + 400) & 0x40) != 0)
          {
            v59 = v25;
          }

          if (v59 >= 4u)
          {
            v60 = (*(a1 + 392) - v20);
            v60[1] = v59;
            *v60 = *(v51 + 52);
            *(v51 + 52) = v20;
          }

          *(v51 + 54) += v59;
          if (v103 != 0xFFFF && v101 == 0xFFFF && v103 != v20 && *(v51 + 52) == v20)
          {
            v101 = v20;
          }
        }

        if (v52 < v46)
        {
          if ((v100 & 0x8000) == 0)
          {
            *(v51 + 32) |= 0x8000u;
          }

          if (*(v51 + 36) > v11)
          {
            v61 = *(v51 + 32);
            v62 = *(a1 + 376);
            if ((v61 & 4) != 0)
            {
              if (v53)
              {
                *(v62 + 4 * v11) = -1;
              }

              if (v57)
              {
                *(v62 + 4 * v11 + 2) = -1;
              }
            }

            else
            {
              if (v53)
              {
                *(v62 + 8 * v11) = 0xFFFF;
              }

              if (v57)
              {
                *(v62 + 8 * v11 + 4) = 0xFFFF;
              }
            }
          }

          v98 = v57;
          v63 = btree_node_compact(a1, 0, v47);
          if (v63)
          {
            v40 = v63;
            if (v53)
            {
              v64 = (*(a1 + 400) & 0x40) != 0 ? v9 : (v9 + 7) & 0xFFF8;
              v65 = btree_node_space_free_list_alloc(a1, 1, v64, 0xFFFF, v92);
              if (v65)
              {
                v66 = *(a1 + 8);
                if (v66)
                {
                  v67 = (v66 + 4040);
                }

                else
                {
                  v67 = (*(*(*a1 + 392) + 384) + 212);
                }

                log_err("%s:%d: %s unable to reclaim just-freed key space on error path: %d\n", "btree_node_entry_update", 1772, v67, v65);
              }
            }

            if (v98)
            {
              v88 = (*(a1 + 400) & 0x40) != 0 ? v25 : (v25 + 7) & 0xFFF8;
              if (btree_node_space_free_list_alloc(a1, 2, v88, 0xFFFF, v20))
              {
                if (!*(a1 + 8))
                {
                  v89 = *(*(*a1 + 392) + 384) + 212;
                }

                log_err("%s:%d: %s unable to reclaim just-freed val space on error path: %d\n");
              }
            }

            return v40;
          }

          v101 = -1;
          v102 = -1;
          v103 = -1;
          v29 = v96;
          v27 = v94;
          v23 = v41;
        }

        v68 = v10;
        v69 = v47;
        if (v27)
        {
          v8 = v90;
          if (HIWORD(v103) == 0xFFFF)
          {
            v70 = btree_node_space_alloc(a1, 1, v9, &v103 + 1);
          }

          else
          {
            v70 = btree_node_space_free_list_alloc(a1, 1, v9, v102, HIWORD(v103));
          }

          v40 = v70;
          v29 = v96;
          v27 = v94;
          v23 = v41;
          if (v70)
          {
            if (!*(a1 + 8))
            {
              v80 = *(*(*a1 + 392) + 384) + 212;
            }

LABEL_185:
            log_err("%s:%d: %s unable allocate space that should be there: %d\n");
            return v40;
          }
        }

        else
        {
          v71 = *(a1 + 376);
          v72 = (v71 + 4 * v11);
          v73 = (v71 + 8 * v11);
          if ((*(*(a1 + 56) + 32) & 4) != 0)
          {
            v74 = v72;
          }

          else
          {
            v74 = v73;
          }

          HIWORD(v103) = *v74;
          v8 = v90;
        }

        if (v29)
        {
          v7 = v69;
          if (!v15)
          {
            if (a6 == 65534)
            {
              LOWORD(v20) = -2;
            }

            else
            {
              LOWORD(v20) = -1;
            }

            LOWORD(v103) = v20;
            goto LABEL_155;
          }

          if (v103 == 0xFFFF)
          {
            v75 = btree_node_space_alloc(a1, 2, v15, &v103);
          }

          else
          {
            v75 = btree_node_space_free_list_alloc(a1, 2, v15, v101, v103);
          }

          v40 = v75;
          v29 = v96;
          v27 = v94;
          if (v75)
          {
            if (!*(a1 + 8))
            {
              v87 = *(*(*a1 + 392) + 384) + 212;
            }

            goto LABEL_185;
          }

          v23 = v41;
          LOWORD(v20) = v103;
        }

        else
        {
          v76 = *(a1 + 376);
          v77 = v76 + 4 * v11 + 2;
          v78 = v76 + 8 * v11 + 4;
          if ((*(*(a1 + 56) + 32) & 4) != 0)
          {
            v79 = v77;
          }

          else
          {
            v79 = v78;
          }

          LOWORD(v20) = *v79;
          LOWORD(v103) = *v79;
        }

        v7 = v69;
LABEL_155:
        v10 = v68;
        goto LABEL_156;
      }

      btree_node_space_free_list_search(a1, 1, v9, &v102, &v103 + 1);
      if (SHIWORD(v103) == -1)
      {
        v48 = v92;
        v27 = v94;
        if (v94 < 0)
        {
          v46 = 0;
          HIWORD(v103) = v92;
          v102 = -1;
        }

        else if ((*(a1 + 400) & 0x40) != 0)
        {
          v46 = v9;
        }

        else
        {
          v46 = (v9 + 7) & 0xFFF8;
        }

        v29 = v96;
        goto LABEL_60;
      }

      v46 = 0;
    }

    v29 = v96;
    v48 = v92;
    v27 = v94;
LABEL_60:
    v23 = v41;
    goto LABEL_61;
  }

LABEL_156:
  if (a6 == 65534 && v20 != 65534)
  {
    LOWORD(v20) = -2;
    LOWORD(v103) = -2;
    v29 = 1;
  }

  v81 = *(a1 + 56);
  v82 = *(a1 + 376);
  if ((*(v81 + 32) & 4) != 0)
  {
    if (v27)
    {
      *(v82 + 4 * v11) = HIWORD(v103);
    }

    if (v29)
    {
      *(v82 + 4 * v11 + 2) = v20;
    }
  }

  else
  {
    v83 = (v82 + 8 * v11);
    if (v27)
    {
      *v83 = HIWORD(v103);
      v83[1] = v9;
    }

    if (v29)
    {
      v83[2] = v20;
      v83[3] = a6;
    }
  }

  if ((v100 & 0x8000) == 0)
  {
    *(v81 + 32) &= ~0x8000u;
  }

  v84 = *(a1 + 440);
  if (!*(a1 + 440) || (v85 = v9, v84 >= v9))
  {
    if (v9 >= v23 || v84 > v23)
    {
      goto LABEL_176;
    }

    v85 = 0;
  }

  *(a1 + 440) = v85;
LABEL_176:
  if (v10 && v9)
  {
    memcpy((*(a1 + 384) + HIWORD(v103)), v10, v9);
  }

  if (v8 && v15)
  {
    memcpy((*(a1 + 392) - v103), v8, v15);
  }

  obj_dirty(a1, v7, 0);
  return 0;
}

uint64_t btree_node_insert_internal(uint64_t a1, unsigned int a2, const void *a3, unsigned int a4, const void *a5, unsigned int a6, uint64_t a7)
{
  v46 = a4;
  if (a6 == 65534)
  {
    v11 = 0;
  }

  else
  {
    v11 = a6;
  }

  v42 = v11;
  if (a3)
  {
    v12 = a4;
    if (a4)
    {
      v13 = a3;
    }

    else
    {
      v13 = 0;
    }

    if (a5)
    {
      goto LABEL_9;
    }

LABEL_13:
    v11 = 0;
    v14 = 0;
    v42 = 0;
    goto LABEL_14;
  }

  v12 = 0;
  v13 = 0;
  v46 = 0;
  if (!a5)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (v11)
  {
    v14 = a5;
  }

  else
  {
    v14 = 0;
  }

LABEL_14:
  v45 = 0;
  v43 = 0;
  v44 = 0;
  if (!btree_node_has_room(a1, 1u, &v46, &v42, 0, 0, &v45))
  {
    return 28;
  }

  v43 = -1;
  v44 = -1;
  if (v13)
  {
    btree_node_space_free_list_search(a1, 1, v12, &v44 + 1, &v44);
  }

  if (v14)
  {
    btree_node_space_free_list_search(a1, 2, v11, &v43 + 1, &v43);
  }

  if (v44 == -1)
  {
    if ((*(a1 + 400) & 0x40) != 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = (v12 + 7) & 0xFFF8;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v43 == -1)
  {
    if ((*(a1 + 400) & 0x40) != 0)
    {
      v17 = v11;
    }

    else
    {
      v17 = (v11 + 7) & 0xFFF8;
    }

    v15 += v17;
  }

  v18 = v45 + v15;
  v19 = *(a1 + 56);
  if (v18 <= *(v19 + 46))
  {
    if (v45)
    {
      memmove((*(a1 + 384) + v45), *(a1 + 384), *(v19 + 44));
      bzero(*(a1 + 384), v45);
      v20 = v45;
      *(a1 + 384) += v45;
      v21 = *(a1 + 56);
      *(v21 + 46) -= v20;
      *(v21 + 42) += v20;
    }
  }

  else
  {
    v16 = btree_node_compact(a1, 1, a7);
    if (v16)
    {
      return v16;
    }

    LOWORD(v43) = -1;
    LOWORD(v44) = -1;
    v45 = 0;
  }

  if (!v13)
  {
LABEL_38:
    if (!v14)
    {
      goto LABEL_62;
    }

    goto LABEL_39;
  }

  if (v44 != 0xFFFF)
  {
    v16 = btree_node_space_free_list_alloc(a1, 1, v12, HIWORD(v44), v44);
    if (!v16)
    {
      goto LABEL_38;
    }

LABEL_47:
    v25 = *(a1 + 8);
    if (v25)
    {
      v26 = (v25 + 4040);
    }

    else
    {
      v26 = (*(*(*a1 + 392) + 384) + 212);
    }

    log_err("%s:%d: %s unable allocate space that should be there: %d\n", "btree_node_insert_internal", 2193, v26, v16);
    return v16;
  }

  if ((*(a1 + 400) & 0x40) != 0)
  {
    v22 = v12;
  }

  else
  {
    v22 = (v12 + 7) & 0xFFF8;
  }

  v23 = *(a1 + 56);
  v24 = *(v23 + 46);
  if (v24 < v22)
  {
    v16 = 28;
    goto LABEL_47;
  }

  v32 = *(v23 + 44);
  *(v23 + 44) = v32 + v22;
  *(v23 + 46) = v24 - v22;
  LOWORD(v44) = v32;
  if (!v14)
  {
    goto LABEL_62;
  }

LABEL_39:
  if (v43 != 0xFFFF)
  {
    v16 = btree_node_space_free_list_alloc(a1, 2, v11, HIWORD(v43), v43);
    if (!v16)
    {
      goto LABEL_62;
    }

LABEL_53:
    v30 = *(a1 + 8);
    if (v30)
    {
      v31 = (v30 + 4040);
    }

    else
    {
      v31 = (*(*(*a1 + 392) + 384) + 212);
    }

    log_err("%s:%d: %s unable allocate space that should be there: %d\n", "btree_node_insert_internal", 2205, v31, v16);
    return v16;
  }

  v27 = (v11 + 7) & 0xFFF8;
  if ((*(a1 + 400) & 0x40) != 0)
  {
    v27 = v11;
  }

  v28 = *(a1 + 56);
  v29 = *(v28 + 46);
  if (v29 < v27)
  {
    v16 = 28;
    goto LABEL_53;
  }

  v33 = v29 - v27;
  *(v28 + 46) = v33;
  LOWORD(v43) = *(a1 + 392) - (v33 + *(a1 + 384) + *(v28 + 44));
LABEL_62:
  if (!v11)
  {
    if (a6 == 65534)
    {
      v34 = -2;
    }

    else
    {
      v34 = -1;
    }

    LOWORD(v43) = v34;
  }

  v35 = *(a1 + 56);
  v36 = *(v35 + 36);
  if (v36 > a2)
  {
    btree_node_toc_shift(a1, a2, 1);
    v35 = *(a1 + 56);
    v36 = *(v35 + 36);
  }

  *(v35 + 36) = v36 + 1;
  v37 = v43;
  v38 = *(a1 + 376);
  if ((*(v35 + 32) & 4) != 0)
  {
    v40 = (v38 + 4 * a2);
    *v40 = v44;
    v40[1] = v37;
  }

  else
  {
    v39 = (v38 + 8 * a2);
    *v39 = v44;
    v39[1] = v12;
    v39[2] = v37;
    v39[3] = a6;
  }

  if (*(a1 + 440) && *(a1 + 440) < v12)
  {
    *(a1 + 440) = v12;
  }

  if (v13)
  {
    memcpy((*(a1 + 384) + v44), v13, v12);
  }

  if (v14)
  {
    memcpy((*(a1 + 392) - v43), v14, v11);
  }

  obj_dirty(a1, a7, 0);
  return 0;
}

uint64_t bt_search_node(uint64_t a1, unint64_t *a2, uint64_t a3, _WORD *a4, BOOL *a5)
{
  result = bt_search_node_insert(a1, a2, a3, a4, a5);
  if (!result && !*a5)
  {
    if (*a4)
    {
      --*a4;
    }
  }

  return result;
}

uint64_t btree_node_child_id_update(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v12 = 0;
  v6 = *(*(a1 + 56) + 32);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 4) != 0)
    {
      v8 = (*(a1 + 400) >> 9) & 0x3FFF;
    }

    else
    {
      v8 = *(*(a1 + 376) + 8 * a2 + 2);
    }

    return btree_node_entry_update_via_callback(a1, a2, 0, v8, v5, 8, 0, a4, btree_node_child_id_update_cb, 0);
  }

  v7 = *(a1 + 408);
  if (*a3 > v7)
  {
    v12 = *a3 - v7;
    v5 = &v12;
    goto LABEL_4;
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = (v10 + 4040);
  }

  else
  {
    v11 = (*(*(*a1 + 392) + 384) + 212);
  }

  log_err("%s:%d: %s invalid relative OID: %llu < root OID: %llu\n", "btree_node_child_id_update", 1961, v11, *a3, v7);
  return 22;
}

BOOL btree_node_has_room(uint64_t a1, unsigned int a2, __int16 *a3, __int16 *a4, __int16 a5, __int16 a6, _WORD *a7)
{
  v12 = *(a1 + 56);
  v13 = v12[16];
  v14 = v12[18];
  v15 = v12[21];
  if ((v13 & 4) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 3;
  }

  v39 = v16;
  if ((v13 & 4) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 3;
  }

  v18 = btree_node_toc_required_capacity(a1, 0);
  if ((v13 & 4) == 0 || (*(a1 + 400) & 4) != 0 || v14 + a2 <= v18)
  {
    v20 = v18;
    v21 = btree_node_toc_required_capacity(a1, a2);
    if (a7)
    {
      if ((v13 & 4) != 0)
      {
        v22 = 2;
      }

      else
      {
        v22 = 3;
      }

      v23 = v21 << v22;
      v24 = v23 >= v15;
      v25 = v23 - v15;
      if (v25 == 0 || !v24)
      {
        LOWORD(v25) = 0;
      }

      *a7 = v25;
    }

    v26 = v15 >> v17;
    v27 = 0;
    if (a2)
    {
      v28 = a2;
      do
      {
        v30 = *a3++;
        v29 = v30;
        if ((*(a1 + 400) & 0x40) != 0)
        {
          v31 = *a4;
        }

        else
        {
          v29 = (v29 + 7) & 0xFFF8;
          v31 = (*a4 + 7) & 0xFFF8;
        }

        v27 += v29 + v31;
        ++a4;
        --v28;
      }

      while (v28);
    }

    v32 = a6 + a5 + v27;
    if ((v13 & 4) != 0)
    {
      v33 = 2;
    }

    else
    {
      v33 = 3;
    }

    v34 = ((v21 - v20) << v33) & 0xFFFC;
    if (v21 <= v20)
    {
      v34 = 0;
    }

    v35 = v26 > v20;
    v36 = (v26 - v20) << v39;
    if (!v35)
    {
      LOWORD(v36) = 0;
    }

    return v34 + v32 <= (v12[23] + v36 + v12[25] + v12[27]);
  }

  else
  {
    result = 0;
    if (a7)
    {
      *a7 = -1;
    }
  }

  return result;
}