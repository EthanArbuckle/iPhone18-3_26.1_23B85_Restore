uint64_t nanov2_statistics(unsigned int a1, const void *a2, uint64_t (*a3)(int a1, uint64_t a2, uint64_t a3, uint64_t *a4), void (*a4)(const char *, ...), uint64_t a5)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v23 = a5;
  if (a4)
  {
    v8 = v24;
  }

  else
  {
    v8 = nanov2_null_printer;
  }

  v24 = v8;
  v25 = reader_or_in_memory_fallback_4(v25, v27);
  v22 = 0;
  nanov2_configure();
  _platform_memset();
  v21 = 0;
  v22 = v25(v27, v26, 29264, &v21);
  if (!v22)
  {
    i = 0;
    *&v19[4] = 0;
    v29 = v21;
    v40 = *(v21 + 28680);
    *v19 = ((v40 << 6) | (v40 >> 6)) & 0xFFF;
    explicit = atomic_load_explicit((v21 + 28728), memory_order_acquire);
    v17 = explicit;
    v15[1] = explicit;
    v18 = explicit;
    for (i = *(v21 + 28720); ; i = v61)
    {
      if (!i)
      {
        return 0;
      }

      v15[0] = 0;
      v22 = v25(v27, i, 0x20000000, v15);
      if (v22)
      {
        v24("Failed to map nanov2 region at %p\n", i);
        return v22;
      }

      v14 = v15[0] - i;
      v30 = i;
      *&v19[4] = i;
LABEL_11:
      v34 = v21;
      v33 = i;
      v32 = v18;
      v31 = 0;
      v41 = v18;
      v42 = v18 - 1;
      if (i == ((v18 - 1) & 0xFFFFFFFFE0000000))
      {
        v31 = v32;
      }

      else
      {
        v35 = v33 + 0x20000000;
        v31 = v33 + 0x20000000;
      }

      if (*&v19[4] < v31)
      {
        break;
      }

      v60 = v21;
      v59 = i;
      v58 = v14;
      v57 = v18;
      v64 = v21;
      v63 = i;
      v67 = v21;
      v66 = i;
      v68 = i;
      v71 = v21;
      v70 = i & 0xFFFFFFFFFC000000;
      v62 = i & 0xFFFFFFFFFC000000 ^ *(v21 + 28688);
      v65 = v21;
      v69 = *(v21 + 28680);
      v56 = v62 + 4 * (((v69 << 6) | (v69 >> 6)) & 0xFFF);
      v55 = v56 + v14;
      v52 = *(v56 + v14);
      v53 = v52;
      v51 = v52;
      v54 = v52;
      if (v52)
      {
        v50 = v59 + (v54 << 29);
        if (v50 >= v57)
        {
          v6 = 0;
        }

        else
        {
          v6 = v50;
        }

        v61 = v6;
      }

      else
      {
        v61 = 0;
      }
    }

    v37 = v21;
    v36 = *&v19[4];
    v38 = *&v19[4];
    v44 = v21;
    v43 = *&v19[4] & 0xFFFFFFFFFC000000;
    v13 = (*&v19[4] & 0xFFFFFFFFFC000000 ^ *(v21 + 28688)) + v14;
    for (j = 0; ; ++j)
    {
      if (j >= 0x1000)
      {
        *&v19[4] += 0x4000000;
        goto LABEL_11;
      }

      if (j != *v19)
      {
        break;
      }

LABEL_28:
      ;
    }

    v48 = v21;
    v47 = j;
    v49 = j;
    v46 = ((v49 << 6) | (v49 >> 6)) & 0xFFF;
    v45 = v46 ^ *(v21 + 28680);
    v11 = ptr_offset_to_size_class[v45 >> 6];
    v39 = v11;
    v10 = *(v13 + 4 * j);
    v9 = 0;
    v7 = v10 & 0x7FF;
    if ((v10 & 0x7FF) != 0 && v7 != 2042)
    {
      if (v7 == 2043)
      {
        goto LABEL_25;
      }

      if (v7 == 2044)
      {
        v9 = slots_by_size_class[v11];
        goto LABEL_26;
      }

      if ((v7 - 2045) > 2)
      {
LABEL_25:
        v9 = slots_by_size_class[v11] - ((v10 >> 11) & 0x3FF) - 1;
      }
    }

LABEL_26:
    if (v9)
    {
      *v23 += v9;
      *(v23 + 8) += v9 * 16 * (v11 + 1);
      *(v23 + 24) += 0x4000;
    }

    goto LABEL_28;
  }

  v24("Failed to map nanozonev2_s at %p\n", v26);
  return v22;
}

uint64_t get_zone_type(unsigned int a1, uint64_t (*a2)(void, uint64_t, uint64_t, uint64_t *), uint64_t a3, _DWORD *a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  if (!a2)
  {
    __break(1u);
    JUMPOUT(0x52B80);
  }

  v8 = 0;
  *v9 = 0;
  v7 = 0;
  v8 = v11(v12, v10, 200, &v7);
  if (v8)
  {
    return v8;
  }

  else if (*(v7 + 104) >= 0xEu)
  {
    v6 = get_introspection_addr(v7) + 128;
    v5 = 0;
    v8 = v11(v12, v6, 4, &v5);
    if (v8)
    {
      return v8;
    }

    else
    {
      *v9 = *v5;
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t malloc_get_wrapped_zone(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a1;
  v9 = a3;
  v8 = a4;
  v10 = reader_or_in_memory_fallback_5(a2, a1);
  zone_type = 0;
  *v8 = 0;
  v6 = 0;
  zone_type = get_zone_type(v11, v10, v9, &v6);
  if (zone_type)
  {
    return zone_type;
  }

  else if (v6 == 2 || v6 == 3)
  {
    v5[1] = v9 + 200;
    v5[0] = 0;
    zone_type = v10(v11, v9 + 200, 8, v5);
    if (zone_type)
    {
      return zone_type;
    }

    else
    {
      *v8 = *v5[0];
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t (*reader_or_in_memory_fallback_5(uint64_t a1, int a2))(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    return a1;
  }

  v3 = 1;
  if (a2)
  {
    v3 = mach_task_is_self() != 0;
  }

  if (!v3)
  {
    __break(1u);
    JUMPOUT(0x52E08);
  }

  return _malloc_default_reader_5;
}

uint64_t get_wrapped_zone(uint64_t a1)
{
  v2[1] = a1;
  v2[0] = 0;
  if (malloc_get_wrapped_zone(mach_task_self_, 0, a1, v2))
  {
    __break(1u);
    JUMPOUT(0x52E84);
  }

  return v2[0];
}

uint64_t _malloc_default_reader_5(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = 1;
  if (a1)
  {
    v5 = mach_task_is_self() != 0;
  }

  if (!v5)
  {
    __break(1u);
    JUMPOUT(0x52EF4);
  }

  *a4 = a2;
  return 0;
}

uint64_t _nano_common_init_pick_mode(uint64_t a1, uint64_t a2, _BYTE *a3, char a4)
{
  v7 = 0;
  v6 = 0;
  if (malloc_common_value_for_key(a3))
  {
    if (_platform_strncmp())
    {
      if (_platform_strncmp())
      {
        if (!_platform_strncmp())
        {
          v6 = 2;
        }
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  if (v6 == 1)
  {
    return 2;
  }

  else
  {
    if (v6 == 2)
    {
      if (a4)
      {
        v4 = 0;
      }

      else
      {
        v4 = 2;
      }

      v7 = v4;
    }

    else
    {
      v8 = _simple_getenv();
      if (v8 && *v8 == 49)
      {
        v7 = 2;
      }
    }

    v9 = _simple_getenv();
    if (v9)
    {
      if (*v9 == 49)
      {
        return 2;
      }

      else if (*v9 == 48)
      {
        return 0;
      }

      else if ((*v9 == 86 || *v9 == 118) && (v9[1] == 49 || v9[1] == 50))
      {
        return 2;
      }
    }
  }

  return v7;
}

void nano_common_init(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  _malloc_engaged_nano = _nano_common_init_pick_mode(a1, a2, a3, malloc_space_efficient_enabled & 1);
  if (_malloc_engaged_nano)
  {
    v5 = malloc_common_value_for_key_copy(v6, "malloc_nano_max_magazines", v9, 0x100uLL);
    if (v5)
    {
      v4 = 0;
      v3 = malloc_common_convert_to_long(v5, &v4);
      if (*v4 || v3 < 0)
      {
        malloc_report(3, "malloc_nano_max_magazines must be positive - ignored.\n");
      }

      else
      {
        nano_common_max_magazines = v3;
      }
    }
  }

  if (_malloc_engaged_nano == 2)
  {
    nanov2_init(v8, v7, v6);
  }
}

void nano_common_configure()
{
  if (nano_common_max_magazines)
  {
    v0 = nano_common_max_magazines;
  }

  else
  {
    v0 = phys_ncpus;
  }

  v3 = v0;
  __str = getenv("MallocNanoMaxMagazines");
  if (!__str)
  {
    __str = getenv("_MallocNanoMaxMagazines");
  }

  if (__str)
  {
    v1 = strtol(__str, 0, 0);
    if ((v1 & 0x80000000) != 0)
    {
      malloc_report(3, "MallocNanoMaxMagazines must be positive - ignored.\n");
    }

    else
    {
      v3 = v1;
    }
  }

  if (v3)
  {
    if (v3 > phys_ncpus)
    {
      v3 = phys_ncpus;
      malloc_report(3, "Nano maximum magazines limited to number of physical CPUs [%d]\n");
    }
  }

  else
  {
    v3 = phys_ncpus;
  }

  nano_common_max_magazines = v3;
  if (__str)
  {
    malloc_report(6, "Nano maximum magazines set to %d\n");
  }

  nano_common_cpu_number_override_set();
  if (_malloc_engaged_nano == 2)
  {
    nanov2_configure();
  }
}

void nano_common_cpu_number_override_set()
{
  v0 = 0;
  if (_os_cpu_number_override == -1)
  {
    v0 = nano_common_max_magazines == phys_ncpus;
  }

  if (!v0)
  {
    nano_common_max_magazines_is_ncpu = v0;
  }
}

mach_vm_address_t nano_common_allocate_based_pages(vm_size_t a1, char a2, int a3, int a4, uint64_t a5)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = a5;
  address = 0;
  size = (a1 + vm_page_size - 1) & ~(vm_page_size - 1);
  if (!size)
  {
    size = vm_page_size;
  }

  if (size < v13)
  {
    return 0;
  }

  address = (v9 + vm_page_size - 1) & ~(vm_page_size - 1);
  if (!address)
  {
    address = vm_page_size;
  }

  v6 = mach_vm_map(mach_task_self_, &address, size, (1 << a2) - 1, (a4 << 24) | 1, 0, 0, 0, 3, 7, 1u);
  if (!v6)
  {
    return address;
  }

  if (v6 != 3)
  {
    malloc_zone_error(v11, 0, "*** can't allocate pages: mach_vm_map(size=%lu) failed (error code=%d)\n");
  }

  return 0;
}

uint64_t _nano_common_map_vm_space(mach_vm_address_t a1, mach_vm_size_t a2, vm_prot_t cur_protection)
{
  v7 = a1;
  v6 = a2;
  v5 = cur_protection;
  address = a1;
  if (mach_vm_map(mach_task_self_, &address, a2, 0, 184549376, 0, 0, 0, cur_protection, 7, 1u))
  {
    return 0;
  }

  else if (address == v7)
  {
    return 1;
  }

  else
  {
    mach_vm_deallocate(mach_task_self_, address, v6);
    return 0;
  }
}

uint64_t nano_common_unprotect_vm_space(mach_vm_address_t a1, mach_vm_size_t a2)
{
  if (mach_vm_protect(mach_task_self_, a1, a2, 0, 3))
  {
    malloc_report(3, "mach_vm_protect ret: %d\n");
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

void nano_common_deallocate_pages(mach_vm_address_t a1, mach_vm_size_t a2, __int16 a3)
{
  if (mach_vm_deallocate(mach_task_self_, a1, a2))
  {
    malloc_zone_error(a3, 0, "Can't deallocate_pages at %p\n");
  }
}

uint64_t _xzm_type_choose_ptr_bucket(void *a1, unsigned __int8 a2, unsigned int a3)
{
  if (a2 >= 5u)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr_bucket_count <= XZM_POINTER_BUCKETS_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:80)";
    __break(1u);
    JUMPOUT(0x53974);
  }

  v5 = 0;
  if (a2 >= 2u)
  {
    v4 = (*a1 * a3 + a1[1]) >> 32;
    if (a2 == 2)
    {
      return v4 & 1;
    }

    else if (a2 == 3)
    {
      return v4 % 3;
    }

    else
    {
      return v4 & 3;
    }
  }

  return v5;
}

uint64_t xzm_malloc_inline(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v12 = HIWORD(a3);
  if (a2 <= 0x8000)
  {
    if ((*(a1 + 360) & 0x80) != 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (zone->xzz_flags & MALLOC_PURGEABLE) == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3617)";
      __break(1u);
      JUMPOUT(0x53AF4);
    }

    v15 = a3;
    if (*(a1 + 240))
    {
      v8 = *(a1 + 240);
    }

    else
    {
      v8 = a1;
    }

    if (a2)
    {
      if (a2 > 0x80)
      {
        v20 = 63 - __clz(a2 - 1);
        v21 = (((a2 - 1) >> (v20 - 2)) & 3 | (4 * v20)) - 20;
      }

      else
      {
        if ((a2 & 0xF) != 0)
        {
          v7 = (a2 >> 4) + 1;
        }

        else
        {
          v7 = a2 >> 4;
        }

        v21 = v7 - 1;
      }
    }

    else
    {
      v21 = 0;
    }

    v14 = *(v8[55] + v21);
    if (HIWORD(a3) == 256)
    {
      v13 = 0;
    }

    else if (((WORD2(a3) >> 10) & 3) == 1)
    {
      v13 = 1;
    }

    else
    {
      if (!a3)
      {
        v15 = HIDWORD(malloc_entropy);
      }

      v18 = v14 - 2;
      if ((v14 - 2) >= 5u)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr_bucket_count <= XZM_POINTER_BUCKETS_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:80)";
        __break(1u);
        JUMPOUT(0x53D94);
      }

      v17 = 0;
      if (v18 >= 2u)
      {
        v16 = (v8[49] * v15 + v8[50]) >> 32;
        if (v18 == 2)
        {
          v17 = v16 & 1;
        }

        else if (v18 == 3)
        {
          v17 = v16 % 3;
        }

        else
        {
          v17 = v16 & 3;
        }
      }

      v13 = v17 + 2;
    }

    if (v13 >= v14)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion bucket < bin_bucket_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:172)";
      __break(1u);
      JUMPOUT(0x53EC8);
    }

    v9 = _xzm_xzone_malloc(a1, a2, *(v8[56] + v21) + v13, a4);
  }

  else
  {
    v9 = _xzm_malloc_large_huge(a1, a2, 0, a3, a4);
  }

  if (!v9)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3623)";
    __break(1u);
    JUMPOUT(0x53F24);
  }

  if ((a4 & 1) != 0 && !_xzm_mem_is_zero())
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_mem_is_zero(ptr, size) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3625)";
    __break(1u);
    JUMPOUT(0x53F68);
  }

  v19 = xzm_malloc_zone_size(a1, v9);
  v6 = 0;
  if (*(a1 + 368))
  {
    v6 = 0;
    if (v19 <= *(a1 + 376))
    {
      v5 = 1;
      if (v12 == 256)
      {
        v5 = *(a1 + 369);
      }

      v6 = v5;
    }
  }

  if (!mfm_claimed_address(v9))
  {
    if ((v6 & 1) == 0 || (a4 & 0x40000000) != 0)
    {
      if ((v9 & 0xF0FFFFFFFFFFFFFFLL) != v9)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion memtag_strip_address(ptr) == ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3642)";
        __break(1u);
        JUMPOUT(0x54140);
      }
    }

    else if ((v9 & 0xF0FFFFFFFFFFFFFFLL) == v9)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion memtag_strip_address(ptr) != ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3640)";
      __break(1u);
      JUMPOUT(0x540DCLL);
    }
  }

  return v9;
}

uint64_t _xzm_malloc_large_huge(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v51 = a4;
  v50 = a1;
  v49 = a2;
  v48 = a3;
  v47 = a5;
  v46 = a5 & 1;
  v45 = 0;
  v54 = a1;
  if (*(a1 + 240))
  {
    v32 = *(a1 + 240);
  }

  else
  {
    v32 = v54;
  }

  v44 = v32;
  if ((v49 & 0x3FFF) != 0)
  {
    v31 = (v49 & 0xFFFFFFFFFFFFC000) + 0x4000;
  }

  else
  {
    v31 = v49;
  }

  v43 = v31;
  v42 = 0;
  if (v31 <= 0x200000 && v48 <= 0x100000)
  {
    v42 = 7;
  }

  else
  {
    v42 = 8;
  }

  v41 = v43 >> 14;
  v57 = ((v43 >> 14) & 0x3FFFF00000000) != 0;
  if (((v43 >> 14) & 0x3FFFF00000000) == 0)
  {
    v40 = 1;
    v39 = 0;
    v53 = v51;
    v52 = HIWORD(v51);
    if (HIWORD(v51) == 256 || v42 == 8 || *(v44 + 411) == 2)
    {
      v38 = (*(v44 + 409) & 0x10) != 0;
      v37 = v50 + 368;
      if ((*(v50 + 369) & 1) != 0 && *(v37 + 8) <= 0x8000uLL)
      {
        v38 = 1;
      }

      v39 = v38;
    }

    else
    {
      v39 = 2;
    }

    if (v39 >= *(v44 + 411))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion sg_id < main->xzmz_segment_group_ids_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:358)";
      __break(1u);
      JUMPOUT(0x5439CLL);
    }

    v66 = v50;
    v65 = v39;
    v64 = 0;
    v63 = v42 == 8;
    v68 = v50;
    if (*(v50 + 240))
    {
      v30 = *(v50 + 240);
    }

    else
    {
      v30 = v68;
    }

    v62 = v30;
    v61 = _malloc_cpu_cluster_number();
    if (v61 >= ncpuclusters)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion clusterid < ncpuclusters failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:245)";
      __break(1u);
      JUMPOUT(0x5445CLL);
    }

    if (v65 >= *(v62 + 411))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion sgid < main->xzmz_segment_group_ids_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:251)";
      __break(1u);
      JUMPOUT(0x5449CLL);
    }

    if (v65 > 2u && v64 >= *(v62 + 415))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion front < main->xzmz_allocation_front_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:255)";
      __break(1u);
      JUMPOUT(0x54520);
    }

    v60 = v65 + v64;
    if (*(v62 + 412) < *(v62 + 413))
    {
      v59 = 0;
      v58 = 0;
      if ((*(v62 + 409) & 0x10) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion main->xzmz_defer_large failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:266)";
        __break(1u);
        JUMPOUT(0x54594);
      }

      v58 = v63;
      if (v63)
      {
        v59 = 1;
      }

      else
      {
        v59 = *(v62 + 412) * v61 + v60;
      }

      if (v59 >= *(v62 + 413))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion sg_index < main->xzmz_segment_group_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:275)";
        __break(1u);
        JUMPOUT(0x5461CLL);
      }

      v67 = (*(v62 + 472) + 528 * v59);
    }

    else
    {
      v67 = (*(v62 + 472) + 528 * v60);
    }

    v36 = v67;
    v35 = (*(v50 + 360) & 0x80) != 0;
    v34 = xzm_segment_group_alloc_chunk(v67, v42, 0, v41, 0, v48, v46 & 1, v35);
    if (v34)
    {
      LOBYTE(v29) = 1;
      if (v46)
      {
        v29 = (*(v34 + 32) >> 4) & 1;
      }

      if ((v29 & 1) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !clear || chunk->xzc_bits.xzcb_is_pristine failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:369)";
        __break(1u);
        JUMPOUT(0x54730);
      }

      *(v34 + 34) = *(v50 + 208);
      v55 = v50 + 344;
      v130 = v50 + 344;
      v129 = 327680;
      v131 = 3;
      v132 = 3;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v128 = *(StatusReg + 24);
      v127 = 0;
      v126 = v128;
      v125 = v128;
      v5 = 0;
      atomic_compare_exchange_strong_explicit((v50 + 344), &v5, v128, memory_order_acquire, memory_order_acquire);
      if (v5)
      {
        v127 = v5;
      }

      v124 = v5 == 0;
      if (v5)
      {
        os_unfair_lock_lock_with_options();
      }

      v6 = *(v50 + 352);
      *(v34 + 16) = v6;
      if (v6)
      {
        *(*(v50 + 352) + 24) = v34 + 16;
      }

      *(v50 + 352) = v34;
      *(v34 + 24) = v50 + 352;
      v56 = v50 + 344;
      v139 = (v50 + 344);
      v140 = 3;
      v141 = 3;
      v142 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v138 = *(v142 + 24);
      v137 = 0;
      v136 = v138;
      v135 = 0;
      v7 = v138;
      v8 = v138;
      atomic_compare_exchange_strong_explicit((v50 + 344), &v8, 0, memory_order_release, memory_order_relaxed);
      if (v8 != v7)
      {
        v136 = v8;
      }

      v134 = v8 == v138;
      if (v8 != v138)
      {
        os_unfair_lock_unlock(v139);
      }

      v33 = 0;
      v72 = v50;
      v71 = v34;
      v70 = &v33;
      if (&v33)
      {
        v28 = *(v71 + 32) & 0xF;
        switch(v28)
        {
          case 2:
            *v70 = 0x4000;
            break;
          case 5:
            *v70 = 0x10000;
            break;
          case 6:
            *v70 = 0x20000;
            break;
          default:
            if ((v28 - 7) >= 2)
            {
              v69 = *(v71 + 32) & 0xF;
              qword_D8128 = "BUG IN LIBMALLOC: asking for start of chunk with invalid kind";
              qword_D8158 = v69;
              __break(1u);
              JUMPOUT(0x54A58);
            }

            *v70 = *(v71 + 40) << 14;
            break;
        }
      }

      v92 = v72;
      v91 = v71;
      v95 = v72;
      v94 = v71;
      v93 = v71 & 0xFFFFFFFFFFFFC000;
      v27 = 1;
      if ((v71 & 0xFFFFFFFFFFFFC000) != 0)
      {
        v26 = 0;
        if (v94 >= v93 + 2136)
        {
          v26 = v94 < v93 + 48 * *(v93 + 16) + 2136;
        }

        v27 = v26;
      }

      if ((v27 & 1) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
        __break(1u);
        JUMPOUT(0x54B3CLL);
      }

      v97 = v93;
      v96 = v91;
      v102 = v93;
      v101 = v91;
      if (v91 < v93 + 2136)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
        __break(1u);
        JUMPOUT(0x54BA4);
      }

      v100 = 0xAAAAAAAAAAAAAAABLL * ((v101 - v102 - 2136) >> 4);
      if (v100 >= *(v102 + 16))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
        __break(1u);
        JUMPOUT(0x54C08);
      }

      v99 = v93;
      v98 = v100;
      v45 = *(v93 + 72) + (v100 << 14);
      v77 = v36;
      v76 = v33;
      v75 = *(v36 + 3);
      v83 = *v36;
      if (v83 < 2u)
      {
        v84 = 1;
      }

      else
      {
        if (v83 - 2 >= 2)
        {
          v82 = v83;
          qword_D8128 = "BUG IN LIBMALLOC: unknown segment group id";
          qword_D8158 = v83;
          __break(1u);
          JUMPOUT(0x54CD4);
        }

        v84 = 0;
      }

      v74 = v84;
      v106 = v77;
      v105 = 16;
      v104 = 32769;
      v25 = *v77;
      if (*v77)
      {
        if ((v25 - 1) < 2)
        {
          v107 = 32769;
          goto LABEL_88;
        }

        if (v25 != 3)
        {
          v103 = *v106;
          qword_D8128 = "BUG IN LIBMALLOC: unknown segment group id";
          qword_D8158 = v103;
          __break(1u);
          JUMPOUT(0x54D90);
        }
      }

      v107 = 16;
LABEL_88:
      v73 = v107;
      v24 = 0;
      if (v76 >= v107)
      {
        v81 = v75;
        v80 = v76;
        v79 = v74 & 1;
        v78 = v75 + 368;
        v23 = 0;
        if (*(v75 + 368))
        {
          v23 = 0;
          if (v80 <= *(v78 + 8))
          {
            v22 = 1;
            if (v79)
            {
              v22 = *(v78 + 1);
            }

            v23 = v22;
          }
        }

        v24 = v23;
      }

      if (v24)
      {
        if ((v47 & 0x40000000) != 0)
        {
          v87 = v45;
          v86 = v33;
          v108 = v45;
          v110 = v45;
          v109 = v45 & 0xF0FFFFFFFFFFFFFFLL;
          v85 = v45 & 0xF0FFFFFFFFFFFFFFLL;
          v114 = v45 & 0xF0FFFFFFFFFFFFFFLL;
          v113 = v33;
          if ((v33 & 0xF) != 0)
          {
            __break(1u);
            JUMPOUT(0x54F00);
          }

          if ((v114 & 0xF) != 0)
          {
            __break(1u);
            JUMPOUT(0x54F18);
          }

          v112 = v114;
          v111 = v114 + v113;
          _X9 = v114;
          __asm { STG             X9, [X9] }

          _X9 = v114 + v113;
          __asm { STG             X9, [X9,#-0x10] }

          if (v113 >= 0x21)
          {
            v112 = (v114 + 31) & 0xFFFFFFFFFFFFFFE0;
            v111 = (v114 + v113) & 0xFFFFFFFFFFFFFFE0;
            _X9 = v112;
            __asm { ST2G            X9, [X9] }

            _X8 = v111;
            __asm { ST2G            X8, [X8,#-0x20] }
          }

          v112 = (v114 + 63) & 0xFFFFFFFFFFFFFFC0;
          v111 = (v114 + v113) & 0xFFFFFFFFFFFFFFC0;
          while (v112 < v111)
          {
            __asm { DC              GVA, X8 }

            v112 += 64;
          }

          v45 = v85;
        }

        else
        {
          v90 = v45;
          v89 = v33;
          v88 = memtag_assign_tag(v45, v33);
          v116 = v88;
          v115 = v89;
          if ((v89 & 0x1FF) != 0)
          {
            v120 = v116;
            v119 = v115;
            if ((v115 & 0xF) != 0)
            {
              __break(1u);
              JUMPOUT(0x55074);
            }

            if ((v120 & 0xF) != 0)
            {
              __break(1u);
              JUMPOUT(0x5508CLL);
            }

            v118 = v120;
            v117 = v120 + v119;
            _X9 = v120;
            __asm { STG             X9, [X9] }

            _X9 = v120 + v119;
            __asm { STG             X9, [X9,#-0x10] }

            if (v119 >= 0x21)
            {
              v118 = (v120 + 31) & 0xFFFFFFFFFFFFFFE0;
              v117 = (v120 + v119) & 0xFFFFFFFFFFFFFFE0;
              _X9 = v118;
              __asm { ST2G            X9, [X9] }

              _X8 = v117;
              __asm { ST2G            X8, [X8,#-0x20] }
            }

            v118 = (v120 + 63) & 0xFFFFFFFFFFFFFFC0;
            v117 = (v120 + v119) & 0xFFFFFFFFFFFFFFC0;
            while (v118 < v117)
            {
              __asm { DC              GVA, X8 }

              v118 += 64;
            }
          }

          else
          {
            v123 = v116;
            v122 = v115;
            if ((v116 & 0x1FF) != 0)
            {
              __break(1u);
              JUMPOUT(0x55194);
            }

            if ((v122 & 0x1FF) != 0)
            {
              __break(1u);
              JUMPOUT(0x551ACLL);
            }

            v121 = v123 + v122;
            while (v123 < v121)
            {
              __asm
              {
                DC              GVA, X8
                DC              GVA, X8
                DC              GVA, X8
                DC              GVA, X8
                DC              GVA, X8
                DC              GVA, X8
                DC              GVA, X8
                DC              GVA, X8
              }

              v123 += 512;
            }
          }

          v45 = v88;
        }
      }
    }
  }

  if (!v45)
  {
    malloc_set_errno_fast(1, 12);
  }

  return v45;
}

_OWORD *_xzm_xzone_malloc(uint64_t a1, unint64_t a2, unsigned __int8 a3, int a4)
{
  v18 = *(a1 + 216) + 96 * a3;
  if ((*(a1 + 249) & 1) == 0 || a2 > 0x100 || (a4 & 0x40000000) != 0)
  {
    if (a4 & 2) != 0 || *(a1 + 240) || (a4 & 0x40000000) != 0 && (*(a1 + 368))
    {
      goto LABEL_49;
    }

    v34 = *(v18 + 40);
    do
    {
      if (!v34)
      {
        v35 = 0;
        goto LABEL_45;
      }

      v33 = v34;
      v14 = v34;
      v15 = v34;
      atomic_compare_exchange_strong_explicit((v18 + 40), &v15, v34 - 1, memory_order_relaxed, memory_order_relaxed);
      if (v15 != v14)
      {
        v33 = v15;
      }

      v34 = v33;
    }

    while (v15 != v14);
    v35 = 1;
LABEL_45:
    if (v35 != 1)
    {
LABEL_49:
      if (a2 > 0x1000)
      {
        if (*(a1 + 250))
        {
          return _xzm_xzone_malloc_small_freelist(a1, v18, a4);
        }

        else
        {
          if (a2 > 0x8000)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion size <= XZM_SMALL_BLOCK_SIZE_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3602)";
            __break(1u);
            JUMPOUT(0x55AACLL);
          }

          return _xzm_xzone_malloc_small(a1, v18, a4);
        }
      }

      else
      {
        return _xzm_xzone_malloc_tiny(a1, v18, a4);
      }
    }

    else
    {
      v19 = mfm_alloc(*(v18 + 48));
      if (!v19)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3592)";
        __break(1u);
        JUMPOUT(0x55A18);
      }

      return v19;
    }
  }

  else
  {
    v31 = *(a1 + 216) + 96 * a3;
    v30 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 912);
    if (!v30)
    {
      return _xzm_thread_cache_create_and_malloc(a1, a3, v18, a4);
    }

    if (a3 >= *(a1 + 212))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion xz_idx < zone->xzz_thread_cache_xzone_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3450)";
      __break(1u);
      JUMPOUT(0x553CCLL);
    }

    v29 = (v30 + 24 * a3 + 40);
    if (*(v30 + 24 * a3 + 56) > 0x3FFu)
    {
      if (*(v30 + 24 * a3 + 56) == 1024 && *(v30 + 24 * a3 + 58))
      {
        v23 = (*(v30 + 24 * a3 + 48) + (*(v18 + 68) - *(v30 + 24 * a3 + 58)) * *(v18 + 48));
        if (*(a1 + 368))
        {
          _X8 = *(v30 + 24 * a3 + 48) + (*(v18 + 68) - *(v30 + 24 * a3 + 58)) * *(v18 + 48);
          __asm { LDG             X8, [X8] }

          v23 = _X8;
        }

        *v23 = 0uLL;
        v22 = *(v30 + 24 * a3 + 56);
        --*(v30 + 24 * a3 + 58);
        v21 = *(v30 + 24 * a3 + 56);
        if (malloc_tracing_enabled)
        {
          v13 = *v29;
          kdebug_trace();
        }

        return v23;
      }

      else if (*(v30 + 24 * a3 + 56) == -1)
      {
        if (++*(v30 + 24 * a3 + 60) == *(a1 + 252))
        {
          return _xzm_xzone_thread_cache_record_and_malloc_outlined(a1, v18, a4, v29);
        }

        else
        {
          return _xzm_xzone_malloc_tiny_or_early(a1, v18, a4);
        }
      }

      else
      {
        v17 = 1;
        if (*(v30 + 24 * a3 + 56) != 1024)
        {
          v17 = *(v30 + 24 * a3 + 56) == -2;
        }

        if (!v17)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion cache->xztc_head == XZM_FREE_NULL || cache->xztc_head == XZM_XZONE_CACHE_EMPTY failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3551)";
          __break(1u);
          JUMPOUT(0x55858);
        }

        return _xzm_xzone_thread_cache_fill_and_malloc(a1, v18, v29);
      }
    }

    else
    {
      v28 = *(v30 + 24 * a3 + 48) + 16 * *(v30 + 24 * a3 + 56);
      if (*(a1 + 368))
      {
        _X8 = *(v30 + 24 * a3 + 48) + 16 * *(v30 + 24 * a3 + 56);
        __asm { LDG             X8, [X8] }

        v28 = _X8;
      }

      v27 = *v28;
      if (*(v28 + 8) == (*(v28 + 8) & 0x7FFLL | (((*(v28 + 8) >> 11) & 0x1FFFLL) << 11) & 0xFFFFFF))
      {
        *v28 = 0uLL;
        v26 = *(v30 + 24 * a3 + 56);
        LOWORD(v25) = WORD4(v27) & 0x7FF;
        HIWORD(v25) = *(v30 + 24 * a3 + 58) - 1;
        *(v30 + 24 * a3 + 56) = v25;
        *(v30 + 24 * a3 + 60) = (DWORD2(v27) >> 11) & 0x1FFF;
        v24 = *(v30 + 24 * a3 + 56);
        if (malloc_tracing_enabled)
        {
          v10 = *v29;
          kdebug_trace();
        }

        return v28;
      }

      else
      {
        return _xzm_xzone_thread_cache_malloc_corrupt(v28);
      }
    }
  }
}

uint64_t xzm_malloc_zone_size(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v23 = a2;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v33 = a1;
  v31 = 0;
  v30 = &v21;
  v29 = &v20;
  v28 = a2;
  v36 = a2;
  v35 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v32 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v37 = a1;
  if (*(a1 + 240))
  {
    v18 = *(a1 + 240);
  }

  else
  {
    v18 = v37;
  }

  v27 = v18;
  v41 = v32;
  v40 = v18;
  v39 = 0;
  v46 = v32;
  v45 = &v39;
  v44 = v32;
  if (v32 >> 36)
  {
    *v45 = 0;
    v47 = 0x4000;
  }

  else
  {
    v43 = v44 >> 22;
    *v45 = 0;
    if (v43 >= 0x4000)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segindex < XZM_SEGMENT_TABLE_ENTRIES failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:169)";
      __break(1u);
      JUMPOUT(0x55C84);
    }

    v47 = v43;
  }

  v38 = v47;
  if (v47 < 0x4000)
  {
    v42 = *(v40 + 488) + 4 * v38;
  }

  else
  {
    v42 = 0;
  }

  v26 = v42;
  if (!v42)
  {
    v34 = 0;
    goto LABEL_116;
  }

  v65 = *v26;
  v64 = v33;
  v63 = v28;
  v62 = v32;
  v61 = v31;
  v60 = v30;
  v59 = v29;
  v89 = v65;
  v58 = (v65 & 0x7FFFFFFF) << 14;
  if (v58)
  {
    v97 = v58;
    v96 = v62;
    v101 = v58;
    v100 = v62;
    v111 = v58;
    v110 = v62;
    v115 = v58;
    v114 = v62;
    v118 = v58;
    v120 = v58;
    v119 = 0;
    v113 = v62 - *(v58 + 72);
    v128 = v58;
    v129 = v58;
    v127 = *(v58 + 12);
    if (v127 << 14)
    {
      v126 = v115;
      v130 = v115;
      v125 = *(v115 + 12);
      v124 = v115;
      v131 = v115;
      v123 = *(v115 + 12);
      v17 = (v125 << 14) - (v123 << 14) + 0x400000;
    }

    else
    {
      v122 = v115;
      v132 = v115;
      v121 = *(v115 + 12);
      v17 = v121 << 14;
    }

    v112 = v17;
    v16 = 0;
    if ((v113 & 0x8000000000000000) == 0)
    {
      v16 = v113 < v112;
    }

    if (!v16)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion diff >= 0 && diff < (ptrdiff_t)rounded_size failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:460)";
      __break(1u);
      JUMPOUT(0x55EE4);
    }

    v109 = v113;
    v117 = v111;
    v116 = v113;
    v99 = v113 >> 14;
    if (v99 >= *(v101 + 16))
    {
      v102 = 0;
    }

    else
    {
      v102 = v101 + 48 * v99 + 2136;
    }

    v95 = v102;
    if (!v102)
    {
      v98 = 0;
LABEL_54:
      v57 = v98;
      if (!v98)
      {
        v66 = 0;
        goto LABEL_115;
      }

      if (*(v57 + 34) != *(v64 + 208))
      {
        v66 = 0;
        goto LABEL_115;
      }

      v56 = v62;
      v73 = v64;
      v72 = v57;
      v71 = 0;
      v75 = v64;
      v74 = v57;
      v78 = v64;
      v77 = v57;
      v76 = v57 & 0xFFFFFFFFFFFFC000;
      v13 = 1;
      if ((v57 & 0xFFFFFFFFFFFFC000) != 0)
      {
        v12 = 0;
        if (v77 >= v76 + 2136)
        {
          v12 = v77 < v76 + 48 * *(v76 + 16) + 2136;
        }

        v13 = v12;
      }

      if ((v13 & 1) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
        __break(1u);
        JUMPOUT(0x5640CLL);
      }

      v80 = v76;
      v79 = v74;
      v85 = v76;
      v84 = v74;
      if (v74 < v76 + 2136)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
        __break(1u);
        JUMPOUT(0x56470);
      }

      v83 = 0xAAAAAAAAAAAAAAABLL * ((v84 - v85 - 2136) >> 4);
      if (v83 >= *(v85 + 16))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
        __break(1u);
        JUMPOUT(0x564D0);
      }

      v82 = v76;
      v81 = v83;
      v55 = *(v76 + 72) + (v83 << 14);
      v54 = v56 - v55;
      v53 = *(v57 + 32) & 0xF;
      v52 = 0;
      v51 = 0;
      v69 = v53;
      if (v53 == 2 || v53 == 6 || v53 == 5)
      {
        v52 = *(v64 + 216) + 96 * *(v57 + 33);
        v51 = *(v52 + 48);
        if (!XZM_FAST_ALIGNED(v54, v51, *(v52 + 64)))
        {
          v66 = 0;
          goto LABEL_115;
        }
      }

      else
      {
        v51 = *(v57 + 40) << 14;
        v50 = v54 % v51;
        if (v54 % v51)
        {
          v66 = 0;
          goto LABEL_115;
        }
      }

      v49 = v54 / v51;
      v67 = *(v57 + 32) & 0xF;
      v68 = v67 == 2 || v67 == 6 || v67 == 5;
      v11 = 1;
      if (v68)
      {
        v11 = v49 < *(v52 + 68);
      }

      if (!v11)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !_xzm_slice_kind_uses_xzones(chunk->xzc_bits.xzcb_kind) || block_index < xz->xz_chunk_capacity failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4502)";
        __break(1u);
        JUMPOUT(0x566ECLL);
      }

      v86 = v64;
      v48 = *(v64 + 368) & 1;
      if (v48)
      {
        v87 = v56;
        v88 = v56;
        _X8 = v56;
        __asm { LDG             X8, [X8] }

        v56 = _X8;
        v93 = v63;
        v92 = _X8;
        v91 = v63;
        v90 = _X8;
        if ((HIBYTE(v63) & 0xF) != (HIBYTE(_X8) & 0xF))
        {
          v66 = 0;
          goto LABEL_115;
        }
      }

      v148 = v64;
      v147 = v57;
      v146 = v53;
      v145 = v54;
      v144 = v51;
      v143 = v56;
      if ((*(v57 + 32) & 0xF) != v53)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == kind failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4379)";
        __break(1u);
        JUMPOUT(0x567F4);
      }

      switch(v146)
      {
        case 2:
          goto LABEL_94;
        case 5:
          v133 = v145 / v144;
          v156 = v147;
          v155 = v145 / v144;
          if ((*(v147 + 32) & 0xF) != 5)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_SMALL_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:973)";
            __break(1u);
            JUMPOUT(0x56990);
          }

          v149 = (*v156 >> v155) & 1;
          break;
        case 6:
LABEL_94:
          v142 = 0;
          if (*(v147 + 12))
          {
            __asm { MSR             TCO, #1 }

            v140 = *v143;
            v141 = v140;
            v139 = v140;
            v142 = v140;
            __asm { MSR             TCO, #0 }
          }

          else
          {
            v137 = *v143;
            v138 = v137;
            v136 = v137;
            v142 = v137;
          }

          v135 = *(v148 + 320) ^ v143;
          if (v146 == 6)
          {
            v151 = v135;
            v150 = v135 & 0xF0FFFFFFFFFFFFFFLL;
            v135 &= 0xF0FFFFFFFFFFFFFFLL;
          }

          if (v142 == v135)
          {
            is_free_slow = _xzm_xzone_freelist_chunk_block_is_free_slow(v148, v147, v143);
            v149 = is_free_slow & 1;
          }

          else
          {
            v149 = 0;
          }

          break;
        default:
          v149 = 0;
          break;
      }

      if (v149 == 1)
      {
        v66 = 0;
      }

      else
      {
        if (v61)
        {
          *v61 = v52;
        }

        if (v60)
        {
          *v60 = v56;
        }

        if (v59)
        {
          *v59 = v51;
        }

        v66 = v57;
      }

      goto LABEL_115;
    }

    v104 = v95;
    if ((*(v95 + 32) & 0xF) == 4)
    {
      v103 = v104 - *(v104 + 36);
      if (v103 < (v104 & 0xFFFFFFFFFFFFC000 | 0x858))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion out_slice >= ((xzm_segment_t)((uintptr_t)slice & ~(XZM_METAPOOL_SEGMENT_BLOCK_SIZE - 1)))->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:609)";
        __break(1u);
        JUMPOUT(0x55FF4);
      }

      v107 = v103;
      v106 = v104;
      v15 = *(v103 + 32) & 0xF;
      if ((v15 - 1) < 2)
      {
        v108 = v107 == v106;
      }

      else if (v15 == 3 || (v15 - 5) < 5)
      {
        if (v106 < v107)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice >= span failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:587)";
          __break(1u);
          JUMPOUT(0x56098);
        }

        v108 = v106 < v107 + 48 * *(v107 + 40);
      }

      else
      {
        v108 = 0;
      }

      if (v108)
      {
        v105 = v103;
      }

      else
      {
        v105 = v104;
      }
    }

    else
    {
      v105 = v104;
    }

    v94 = v105;
    v153 = *(v105 + 32) & 0xF;
    if (v153 >= 2u)
    {
      if (v153 == 2)
      {
LABEL_49:
        v154 = 1;
        goto LABEL_50;
      }

      if (v153 - 3 >= 2)
      {
        if (v153 - 5 >= 4)
        {
          v152 = v153;
          qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
          qword_D8158 = v153;
          __break(1u);
          JUMPOUT(0x561B4);
        }

        goto LABEL_49;
      }
    }

    v154 = 0;
LABEL_50:
    if (v154 == 1)
    {
      v14 = v94;
    }

    else
    {
      v14 = 0;
    }

    v98 = v14;
    goto LABEL_54;
  }

  v66 = 0;
LABEL_115:
  v34 = v66;
LABEL_116:
  v19 = v34;
  if (v22)
  {
    *v22 = v34;
  }

  if (!v19)
  {
    return _xzm_ptr_size_outlined(v24, v23);
  }

  if (v21 == v23)
  {
    return v20;
  }

  return v20 - (v23 - v21);
}

uint64_t xzm_malloc(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v12 = HIWORD(a3);
  if (a2 <= 0x8000)
  {
    if ((*(a1 + 360) & 0x80) != 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (zone->xzz_flags & MALLOC_PURGEABLE) == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3617)";
      __break(1u);
      JUMPOUT(0x56B9CLL);
    }

    v15 = a3;
    if (*(a1 + 240))
    {
      v8 = *(a1 + 240);
    }

    else
    {
      v8 = a1;
    }

    if (a2)
    {
      if (a2 > 0x80)
      {
        v20 = 63 - __clz(a2 - 1);
        v21 = (((a2 - 1) >> (v20 - 2)) & 3 | (4 * v20)) - 20;
      }

      else
      {
        if ((a2 & 0xF) != 0)
        {
          v7 = (a2 >> 4) + 1;
        }

        else
        {
          v7 = a2 >> 4;
        }

        v21 = v7 - 1;
      }
    }

    else
    {
      v21 = 0;
    }

    v14 = *(v8[55] + v21);
    if (HIWORD(a3) == 256)
    {
      v13 = 0;
    }

    else if (((WORD2(a3) >> 10) & 3) == 1)
    {
      v13 = 1;
    }

    else
    {
      if (!a3)
      {
        v15 = HIDWORD(malloc_entropy);
      }

      v18 = v14 - 2;
      if ((v14 - 2) >= 5u)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr_bucket_count <= XZM_POINTER_BUCKETS_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:80)";
        __break(1u);
        JUMPOUT(0x56E3CLL);
      }

      v17 = 0;
      if (v18 >= 2u)
      {
        v16 = (v8[49] * v15 + v8[50]) >> 32;
        if (v18 == 2)
        {
          v17 = v16 & 1;
        }

        else if (v18 == 3)
        {
          v17 = v16 % 3;
        }

        else
        {
          v17 = v16 & 3;
        }
      }

      v13 = v17 + 2;
    }

    if (v13 >= v14)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion bucket < bin_bucket_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:172)";
      __break(1u);
      JUMPOUT(0x56F70);
    }

    v9 = _xzm_xzone_malloc(a1, a2, *(v8[56] + v21) + v13, a4);
  }

  else
  {
    v9 = _xzm_malloc_large_huge(a1, a2, 0, a3, a4);
  }

  if (!v9)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3623)";
    __break(1u);
    JUMPOUT(0x56FCCLL);
  }

  if ((a4 & 1) != 0 && !_xzm_mem_is_zero())
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_mem_is_zero(ptr, size) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3625)";
    __break(1u);
    JUMPOUT(0x57010);
  }

  v19 = xzm_malloc_zone_size(a1, v9);
  v6 = 0;
  if (*(a1 + 368))
  {
    v6 = 0;
    if (v19 <= *(a1 + 376))
    {
      v5 = 1;
      if (v12 == 256)
      {
        v5 = *(a1 + 369);
      }

      v6 = v5;
    }
  }

  if (!mfm_claimed_address(v9))
  {
    if ((v6 & 1) == 0 || (a4 & 0x40000000) != 0)
    {
      if ((v9 & 0xF0FFFFFFFFFFFFFFLL) != v9)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion memtag_strip_address(ptr) == ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3642)";
        __break(1u);
        JUMPOUT(0x571E8);
      }
    }

    else if ((v9 & 0xF0FFFFFFFFFFFFFFLL) == v9)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion memtag_strip_address(ptr) != ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3640)";
      __break(1u);
      JUMPOUT(0x57184);
    }
  }

  return v9;
}

unint64_t _xzm_memalign(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  if (((a2 - 1) & a2) != 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion powerof2(alignment) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3692)";
    __break(1u);
    JUMPOUT(0x572A8);
  }

  v9 = a5 | 2;
  if (a3 <= 0x8000 && a2 <= 0x4000)
  {
    if (a3 > a2)
    {
      if (a3 > 2 * a2)
      {
        if (a3 >= 4 * a2)
        {
          v8 = xzm_malloc(a1, a3, a4, v9);
        }

        else
        {
          if (a3 % (4 * a2))
          {
            v7 = a3 / (4 * a2) * 4 * a2 + 4 * a2;
          }

          else
          {
            v7 = a3;
          }

          if (v7 > 0x8000)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion roundup(size, 4 * alignment) <= XZM_SMALL_BLOCK_SIZE_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3709)";
            __break(1u);
            JUMPOUT(0x57460);
          }

          if (a3 % (4 * a2))
          {
            v5 = xzm_malloc(a1, a3 / (4 * a2) * 4 * a2 + 4 * a2, a4, v9);
          }

          else
          {
            v5 = xzm_malloc(a1, a3, a4, v9);
          }

          v8 = v5;
        }
      }

      else
      {
        if (2 * a2 > 0x8000)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion 2 * alignment <= XZM_SMALL_BLOCK_SIZE_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3705)";
          __break(1u);
          JUMPOUT(0x573ACLL);
        }

        v8 = xzm_malloc(a1, 2 * a2, a4, v9);
      }
    }

    else
    {
      v8 = xzm_malloc(a1, a2, a4, v9);
    }
  }

  else
  {
    v8 = _xzm_malloc_large_huge(a1, a3, a2, a4, v9);
  }

  if (!v8)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3716)";
    __break(1u);
    JUMPOUT(0x5755CLL);
  }

  if (v8 % a2)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)ptr % alignment == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3717)";
    __break(1u);
    JUMPOUT(0x5759CLL);
  }

  return v8;
}

uint64_t xzm_realloc(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return xzm_malloc(a1, a3, a4, 0);
  }

  if (!a3)
  {
    _xzm_free(a1, a2, 0);
    return xzm_malloc(a1, 0, a4, 0);
  }

  v38 = a4;
  v37 = a1;
  v36 = a2;
  v35 = a3;
  v34 = 0;
  v49 = a1;
  v48 = a2;
  v47 = &v34;
  v46 = 0;
  v45 = 0;
  v58 = a1;
  v56 = 0;
  v55 = &v46;
  v54 = &v45;
  v53 = a2;
  v61 = a2;
  v60 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v57 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v62 = a1;
  if (*(a1 + 240))
  {
    v23 = *(v37 + 240);
  }

  else
  {
    v23 = v62;
  }

  v52 = v23;
  v66 = v57;
  v65 = v23;
  v64 = 0;
  v71 = v57;
  v70 = &v64;
  v69 = v57;
  if (v57 >> 36)
  {
    *v70 = 0;
    v72 = 0x4000;
  }

  else
  {
    v68 = v69 >> 22;
    *v70 = 0;
    if (v68 >= 0x4000)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segindex < XZM_SEGMENT_TABLE_ENTRIES failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:169)";
      __break(1u);
      JUMPOUT(0x57818);
    }

    v72 = v68;
  }

  v63 = v72;
  if (v72 < 0x4000)
  {
    v67 = *(v65 + 488) + 4 * v63;
  }

  else
  {
    v67 = 0;
  }

  v51 = v67;
  if (v67)
  {
    v90 = *v51;
    v89 = v58;
    v88 = v53;
    v87 = v57;
    v86 = v56;
    v85 = v55;
    v84 = v54;
    v114 = v90;
    v83 = (v90 & 0x7FFFFFFF) << 14;
    if (!v83)
    {
      v91 = 0;
LABEL_119:
      v59 = v91;
      goto LABEL_120;
    }

    v122 = v83;
    v121 = v87;
    v126 = v83;
    v125 = v87;
    v136 = v83;
    v135 = v87;
    v140 = v83;
    v139 = v87;
    v143 = v83;
    v145 = v83;
    v144 = 0;
    v138 = v87 - *(v83 + 72);
    v153 = v83;
    v154 = v83;
    v152 = *(v83 + 12);
    if (v152 << 14)
    {
      v151 = v140;
      v155 = v140;
      v150 = *(v140 + 12);
      v149 = v140;
      v156 = v140;
      v148 = *(v140 + 12);
      v22 = (v150 << 14) - (v148 << 14) + 0x400000;
    }

    else
    {
      v147 = v140;
      v157 = v140;
      v146 = *(v140 + 12);
      v22 = v146 << 14;
    }

    v137 = v22;
    v21 = 0;
    if ((v138 & 0x8000000000000000) == 0)
    {
      v21 = v138 < v137;
    }

    if (!v21)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion diff >= 0 && diff < (ptrdiff_t)rounded_size failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:460)";
      __break(1u);
      JUMPOUT(0x57A78);
    }

    v134 = v138;
    v142 = v136;
    v141 = v138;
    v124 = v138 >> 14;
    if (v124 >= *(v126 + 16))
    {
      v127 = 0;
    }

    else
    {
      v127 = v126 + 48 * v124 + 2136;
    }

    v120 = v127;
    if (!v127)
    {
      v123 = 0;
LABEL_58:
      v82 = v123;
      if (!v123)
      {
        v91 = 0;
        goto LABEL_119;
      }

      if (*(v82 + 34) != *(v89 + 208))
      {
        v91 = 0;
        goto LABEL_119;
      }

      v81 = v87;
      v98 = v89;
      v97 = v82;
      v96 = 0;
      v100 = v89;
      v99 = v82;
      v103 = v89;
      v102 = v82;
      v101 = v82 & 0xFFFFFFFFFFFFC000;
      v18 = 1;
      if ((v82 & 0xFFFFFFFFFFFFC000) != 0)
      {
        v17 = 0;
        if (v102 >= v101 + 2136)
        {
          v17 = v102 < v101 + 48 * *(v101 + 16) + 2136;
        }

        v18 = v17;
      }

      if ((v18 & 1) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
        __break(1u);
        JUMPOUT(0x57FA0);
      }

      v105 = v101;
      v104 = v99;
      v110 = v101;
      v109 = v99;
      if (v99 < v101 + 2136)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
        __break(1u);
        JUMPOUT(0x58004);
      }

      v108 = 0xAAAAAAAAAAAAAAABLL * ((v109 - v110 - 2136) >> 4);
      if (v108 >= *(v110 + 16))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
        __break(1u);
        JUMPOUT(0x58064);
      }

      v107 = v101;
      v106 = v108;
      v80 = *(v101 + 72) + (v108 << 14);
      v79 = v81 - v80;
      v78 = *(v82 + 32) & 0xF;
      v77 = 0;
      v76 = 0;
      v94 = v78;
      if (v78 == 2 || v78 == 6 || v78 == 5)
      {
        v77 = *(v89 + 216) + 96 * *(v82 + 33);
        v76 = *(v77 + 48);
        if (!XZM_FAST_ALIGNED(v79, v76, *(v77 + 64)))
        {
          v91 = 0;
          goto LABEL_119;
        }
      }

      else
      {
        v76 = *(v82 + 40) << 14;
        v75 = v79 % v76;
        if (v79 % v76)
        {
          v91 = 0;
          goto LABEL_119;
        }
      }

      v74 = v79 / v76;
      v92 = *(v82 + 32) & 0xF;
      v93 = v92 == 2 || v92 == 6 || v92 == 5;
      v16 = 1;
      if (v93)
      {
        v16 = v74 < *(v77 + 68);
      }

      if (!v16)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !_xzm_slice_kind_uses_xzones(chunk->xzc_bits.xzcb_kind) || block_index < xz->xz_chunk_capacity failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4502)";
        __break(1u);
        JUMPOUT(0x58280);
      }

      v111 = v89;
      v73 = *(v89 + 368) & 1;
      if (v73)
      {
        v112 = v81;
        v113 = v81;
        _X8 = v81;
        __asm { LDG             X8, [X8] }

        v81 = _X8;
        v118 = v88;
        v117 = _X8;
        v116 = v88;
        v115 = _X8;
        if ((HIBYTE(v88) & 0xF) != (HIBYTE(_X8) & 0xF))
        {
          v91 = 0;
          goto LABEL_119;
        }
      }

      v173 = v89;
      v172 = v82;
      v171 = v78;
      v170 = v79;
      v169 = v76;
      v168 = v81;
      if ((*(v82 + 32) & 0xF) != v78)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == kind failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4379)";
        __break(1u);
        JUMPOUT(0x58388);
      }

      switch(v171)
      {
        case 2:
          goto LABEL_98;
        case 5:
          v158 = v170 / v169;
          v181 = v172;
          v180 = v170 / v169;
          if ((*(v172 + 32) & 0xF) != 5)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_SMALL_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:973)";
            __break(1u);
            JUMPOUT(0x58524);
          }

          v174 = (*v181 >> v180) & 1;
          break;
        case 6:
LABEL_98:
          v167 = 0;
          if (*(v172 + 12))
          {
            __asm { MSR             TCO, #1 }

            v165 = *v168;
            v166 = v165;
            v164 = v165;
            v167 = v165;
            __asm { MSR             TCO, #0 }
          }

          else
          {
            v162 = *v168;
            v163 = v162;
            v161 = v162;
            v167 = v162;
          }

          v160 = *(v173 + 320) ^ v168;
          if (v171 == 6)
          {
            v176 = v160;
            v175 = v160 & 0xF0FFFFFFFFFFFFFFLL;
            v160 &= 0xF0FFFFFFFFFFFFFFLL;
          }

          if (v167 == v160)
          {
            is_free_slow = _xzm_xzone_freelist_chunk_block_is_free_slow(v173, v172, v168);
            v174 = is_free_slow & 1;
          }

          else
          {
            v174 = 0;
          }

          break;
        default:
          v174 = 0;
          break;
      }

      if (v174 == 1)
      {
        v91 = 0;
      }

      else
      {
        if (v86)
        {
          *v86 = v77;
        }

        if (v85)
        {
          *v85 = v81;
        }

        if (v84)
        {
          *v84 = v76;
        }

        v91 = v82;
      }

      goto LABEL_119;
    }

    v129 = v120;
    if ((*(v120 + 32) & 0xF) == 4)
    {
      v128 = v129 - *(v129 + 36);
      if (v128 < (v129 & 0xFFFFFFFFFFFFC000 | 0x858))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion out_slice >= ((xzm_segment_t)((uintptr_t)slice & ~(XZM_METAPOOL_SEGMENT_BLOCK_SIZE - 1)))->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:609)";
        __break(1u);
        JUMPOUT(0x57B88);
      }

      v132 = v128;
      v131 = v129;
      v20 = *(v128 + 32) & 0xF;
      if ((v20 - 1) < 2)
      {
        v133 = v132 == v131;
      }

      else if (v20 == 3 || (v20 - 5) < 5)
      {
        if (v131 < v132)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice >= span failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:587)";
          __break(1u);
          JUMPOUT(0x57C2CLL);
        }

        v133 = v131 < v132 + 48 * *(v132 + 40);
      }

      else
      {
        v133 = 0;
      }

      if (v133)
      {
        v130 = v128;
      }

      else
      {
        v130 = v129;
      }
    }

    else
    {
      v130 = v129;
    }

    v119 = v130;
    v178 = *(v130 + 32) & 0xF;
    if (v178 >= 2u)
    {
      if (v178 == 2)
      {
LABEL_53:
        v179 = 1;
        goto LABEL_54;
      }

      if (v178 - 3 >= 2)
      {
        if (v178 - 5 >= 4)
        {
          v177 = v178;
          qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
          qword_D8158 = v178;
          __break(1u);
          JUMPOUT(0x57D48);
        }

        goto LABEL_53;
      }
    }

    v179 = 0;
LABEL_54:
    if (v179 == 1)
    {
      v19 = v119;
    }

    else
    {
      v19 = 0;
    }

    v123 = v19;
    goto LABEL_58;
  }

  v59 = 0;
LABEL_120:
  v44 = v59;
  if (v47)
  {
    *v47 = v44;
  }

  if (v44)
  {
    if (v46 == v48)
    {
      v50 = v45;
    }

    else
    {
      v43 = v48 - v46;
      v50 = v45 - (v48 - v46);
    }
  }

  else
  {
    v50 = _xzm_ptr_size_outlined(v49, v48);
  }

  v33 = v50;
  v32 = v36;
  if (!v50)
  {
    malloc_report_pointer_was_not_allocated(80, v36);
  }

  if (v34 && *(v34 + 34) != *(v37 + 208))
  {
    qword_D8128 = "BUG IN CLIENT OF LIBMALLOC: pointer zone mismatch, client may be passing the wrong malloc zone";
    qword_D8158 = v36;
    __break(1u);
    JUMPOUT(0x586ECLL);
  }

  if (!v34 || v33 <= 0x8000 || v35 <= 0x8000)
  {
    goto LABEL_158;
  }

  if ((v35 & 0x3FFF) != 0)
  {
    v15 = (v35 & 0xFFFFFFFFFFFFC000) + 0x4000;
  }

  else
  {
    v15 = v35;
  }

  v31 = v15 >> 14;
  v42 = v37;
  v41 = v34;
  v40 = v34 & 0xFFFFFFFFFFFFC000;
  v14 = 1;
  if ((v34 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v13 = 0;
    if (v41 >= v40 + 2136)
    {
      v13 = v41 < v40 + 48 * *(v40 + 16) + 2136;
    }

    v14 = v13;
  }

  if ((v14 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0x58818);
  }

  if (!v40)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segment != NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4826)";
    __break(1u);
    JUMPOUT(0x58850);
  }

  v30 = 0;
  if (v33 <= 0x200000 || v35 <= 0x200000 || (*(v37 + 360) & 0x80) != 0)
  {
    if (v33 <= 0x200000 && !*(v40 + 20) && v35 <= 0x200000 && (*(v37 + 360) & 0x80) == 0)
    {
      v30 = xzm_segment_group_try_realloc_large_chunk(*v40, v40, v34, v31);
    }
  }

  else
  {
    v30 = xzm_segment_group_try_realloc_huge_chunk(*v40, v37, v40, v34, v31);
  }

  if (v30)
  {
    v39 = v32;
  }

  else
  {
LABEL_158:
    if (v35 > v33 || v35 < v33 >> 1)
    {
      v29 = xzm_malloc(v37, v35, v38, 0);
      if (v29)
      {
        _platform_memmove();
        v39 = v29;
      }

      else
      {
        v39 = 0;
      }
    }

    else
    {
      v39 = v32;
    }
  }

  v24 = v39;
  if (v39 && v39 != a2)
  {
    _xzm_free(a1, a2, 0);
  }

  return v24;
}

void _xzm_free(uint64_t a1, unint64_t a2, char a3)
{
  if (!a2)
  {
    return;
  }

  v26 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  if (*(a1 + 240))
  {
    v15 = *(a1 + 240);
  }

  else
  {
    v15 = a1;
  }

  v30 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v29 = v15;
  v28 = 0;
  v107 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v106 = &v28;
  v105 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  if (v26 >> 36)
  {
    *v106 = 0;
    v108 = 0x4000;
  }

  else
  {
    v104 = v105 >> 22;
    *v106 = 0;
    if (v104 >= 0x4000)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segindex < XZM_SEGMENT_TABLE_ENTRIES failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:169)";
      __break(1u);
      JUMPOUT(0x58B7CLL);
    }

    v108 = v104;
  }

  if (v108 < 0x4000)
  {
    v31 = (*(v29 + 488) + 4 * v108);
  }

  else
  {
    v31 = 0;
  }

  if (!v31)
  {
    goto LABEL_93;
  }

  v23 = *v31;
  if (*v31 >= 0)
  {
    goto LABEL_92;
  }

  v32 = *v31;
  v22 = ((v23 & 0x7FFFFFFF) << 14) + 48 * ((a2 & 0x3FFFFF) >> 14) + 2136;
  if ((aSystemDriverki_0[0x4000 * (v23 & 0x7FFFFFFF) + 8 + 48 * ((a2 & 0x3FFFFF) >> 14)] & 0xF) != 2)
  {
    goto LABEL_92;
  }

  if (*&aSystemDriverki_0[0x4000 * (v23 & 0x7FFFFFFF) + 10 + 48 * ((a2 & 0x3FFFFF) >> 14)] != *(a1 + 208))
  {
    goto LABEL_93;
  }

  v21 = aSystemDriverki_0[0x4000 * (v23 & 0x7FFFFFFF) + 9 + 48 * ((a2 & 0x3FFFFF) >> 14)];
  _xzm_debug_validate_chunk_metadata(*(a1 + 216) + 96 * v21, v22);
  v20 = *(&stru_858.dylib.name.offset + 0x2000 * (v23 & 0x7FFFFFFF) + 24 * ((a2 & 0x3FFFFF) >> 14));
  if ((a2 & 0x3FFF) % v20)
  {
    goto LABEL_93;
  }

  v19 = a2;
  v18 = *(&stru_858.dylib.timestamp + 4096 * (v23 & 0x7FFFFFFF) + 12 * ((a2 & 0x3FFFFF) >> 14)) & 1;
  if (v18)
  {
    _X8 = v26;
    __asm { LDG             X8, [X8] }

    v19 = _X8;
    v36 = a2;
    v35 = _X8;
    v34 = a2;
    v33 = _X8;
    if ((HIBYTE(a2) & 0xF) != (HIBYTE(_X8) & 0xF))
    {
LABEL_93:
      _xzm_free_not_found(a1, a2, a3 & 1);
      return;
    }
  }

  v17 = *(a1 + 320) ^ a2;
  if (*v19 == v17)
  {
LABEL_92:
    _xzm_free_outlined(a1, a2, a3 & 1, v23);
    return;
  }

  if (v20 >= 0x11 && v20 <= 0x400)
  {
    _platform_bzero();
  }

  if (v18)
  {
    v19 = _xzm_xzone_block_memtag_retag(a1, v19, v20);
    if ((HIBYTE(v19) & 0xFu) >= 0x10)
    {
      __break(1u);
      JUMPOUT(0x58EB4);
    }

    v17 = v17 & 0xF0FFFFFFFFFFFFFFLL | ((HIBYTE(v19) & 0xF) << 56);
  }

  *v19 = v17;
  if (v20 <= 0x100 && (*(a1 + 249) & 1) != 0)
  {
    v16 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 912);
    if (v16)
    {
      if (*(v16 + 24 * v21 + 56) <= 0x400u && *(v16 + 24 * v21 + 40) == v22)
      {
        v51 = a1;
        v50 = v16 + 24 * v21 + 40;
        v49 = v19;
        v48 = (a2 & 0x3FFF) >> 4;
        v47 = *(v16 + 24 * v21 + 62) & 0xFFF;
        v47 |= 0x1000u;
        v46 = 0;
        v46 = *(v16 + 24 * v21 + 56) & 0x7FF;
        v46 = v46 & 0xFFFFFFFFFF0007FFLL | ((*(v16 + 24 * v21 + 60) & 0x1FFF) << 11);
        v46 = v46 & 0xFFFFFFE000FFFFFFLL | ((v47 & 0x1FFF) << 24);
        v46 &= 0x1FFFFFFFFFuLL;
        v46 &= 0xFFFFFFE000FFFFFFLL;
        v45 = v46;
        v44 = v46;
        v19[1] = v46;
        v43 = v45;
        v42 = *(v50 + 16);
        v41 = v48;
        HIWORD(v41) = *(v50 + 18) + 1;
        v40 = v41;
        v39 = v41;
        *(v50 + 16) = v41;
        v38 = v40;
        *(v50 + 20) = v47;
        ++*(v50 + 22);
        v37 = *(v50 + 16);
        if (malloc_tracing_enabled)
        {
          v9 = *v50;
          kdebug_trace();
        }

        return;
      }
    }
  }

  v10 = *(&stru_858.dylib.name.offset + 0x2000 * (v23 & 0x7FFFFFFF) + 24 * ((a2 & 0x3FFFFF) >> 14) + 1);
  v97 = a1;
  v96 = v21;
  v95 = (((v23 & 0x7FFFFFFF) << 14) + 48 * ((a2 & 0x3FFFFF) >> 14) + 2136);
  v94 = v19;
  v93 = (a2 & 0x3FFF) >> 4;
  v92 = v20;
  v91 = v10;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v86 = 1;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v80 = *(&stru_858.cmd + 2048 * (v23 & 0x7FFFFFFF) + 6 * ((a2 & 0x3FFFFF) >> 14));
  v81 = v80;
  v79 = v80;
  v82 = v80;
  v78 = 0;
  v77 = 0;
  while (1)
  {
    while ((v82 & 0x40000000) != 0)
    {
      _xzm_walk_lock_wait(v97);
      v75 = *v95;
      v76 = v75;
      v74 = v75;
      v82 = v75;
    }

    v78 = v82 & 0xFFFFFFFFFFFLL | (((v82 >> 44) + 1) << 44);
    if (v77)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !push_to_partial failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2353)";
      __break(1u);
      JUMPOUT(0x59280);
    }

    if (((v82 >> 11) & 0x7FF) + 1 == v91)
    {
      if ((v85 & 1) == 0)
      {
        v90 = (*(v97 + 27) + 96 * v96);
        if (((v82 >> 22) & 0x3F) != 0 && (~(v82 >> 22) & 0x3F) != 0)
        {
          v73 = _xzm_chunk_list_get(v97, v90, 0, *(v97 + 29));
          v113 = v73;
          v112 = 0;
          v110 = *v73;
          v111 = v110;
          v109 = v110;
          v112 = v110;
          v72 = (v110 & 0x7FFFFFFFFFFFLL) == 0;
          if ((v110 & 0x7FFFFFFFFFFFLL) == 0)
          {
            v88 = mach_absolute_time();
            v103 = v97;
            v102 = v90;
            v101 = ((v82 >> 22) & 0x3F) - 1;
            v100 = *(v90 + 80);
            v99 = v101 * v97[210];
            if (v99 + v100 >= v97[211] * v97[210])
            {
              qword_D8128 = "BUG IN LIBMALLOC: malloc assertion alloc_base_idx + xz_idx < zone->xzz_slot_count * zone->xzz_xzone_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:1246)";
              __break(1u);
              JUMPOUT(0x59400);
            }

            v83 = *(v103 + 28) + 32 * (v99 + v100);
            v70 = *(v83 + 24);
            v71 = v70;
            v69 = v70;
            v87 = v70;
            if (v88 - v70 < *(v97 + 39))
            {
              v86 = 0;
            }
          }
        }

        v85 = 1;
      }

      if ((v86 & 1) != 0 && (~(v82 >> 22) & 0x3F) != 0)
      {
        v78 |= 0x7FFuLL;
        v78 &= 0xFFFFFFFFFFC007FFLL;
        v78 &= 0xFFFFFFFFF03FFFFFLL;
        goto LABEL_68;
      }
    }

    else if (((v82 >> 11) & 0x7FF) == 0)
    {
      if ((v82 & 0x7FF) != 0x400)
      {
        _xzm_free_abort(v94);
      }

      if (((v82 >> 22) & 0x3F) != 0)
      {
        if ((v82 & 0x10000000) != 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !old_meta.xca_on_partial_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2408)";
          __break(1u);
          JUMPOUT(0x595D8);
        }
      }

      else
      {
        v14 = 0;
        if ((v82 & 0x10000000) == 0)
        {
          v14 = ((v82 >> 29) & 1) == 0;
        }

        if (!v14)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !old_meta.xca_on_partial_list && !old_meta.xca_on_empty_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2402)";
          __break(1u);
          JUMPOUT(0x59568);
        }

        v78 |= 0x10000000uLL;
        v77 = 1;
        v90 = (*(v97 + 27) + 96 * v96);
      }
    }

    v68 = (v82 >> 44) & 0xFFF;
    v67 = v67 & 0xFFFFFFFFFFFFF800 | v82 & 0x7FF;
    v67 = v67 & 0xFFFFFFFFFF0007FFLL | (((v82 >> 31) & 0x1FFF) << 11);
    v67 = v67 & 0xFFFFFFE000FFFFFFLL | (((v82 >> 44) & 0xFFF) << 24);
    v67 &= 0x1FFFFFFFFFuLL;
    v89 = v67 & 0xFFFFFFE000FFFFFFLL;
    v66 = v67 & 0xFFFFFFE000FFFFFFLL;
    v65 = v67 & 0xFFFFFFE000FFFFFFLL;
    v94[1] = v67 & 0xFFFFFFE000FFFFFFLL;
    v64 = v66;
    v78 = v78 & 0xFFFFFFFFFFFFF800 | v93 & 0x7FF;
    v78 = v78 & 0xFFFFFFFFFFC007FFLL | ((((v78 >> 11) + 1) & 0x7FF) << 11);
    v78 = v78 & 0xFFFFF0007FFFFFFFLL | ((v68 & 0x1FFF) << 31);
LABEL_68:
    v62 = v82;
    v61 = 0;
    v59 = v78;
    v58 = v78;
    v60 = v78;
    v11 = v82;
    v12 = v82;
    atomic_compare_exchange_strong_explicit(v95, &v12, v78, memory_order_release, memory_order_relaxed);
    if (v12 != v11)
    {
      v62 = v12;
    }

    v57 = v12 == v11;
    v61 = v12 == v11;
    v82 = v62;
    v56 = v61;
    v63 = v12 == v11;
    if (v12 == v11)
    {
      break;
    }

    v77 = 0;
    ++v84;
  }

  if (malloc_tracing_enabled)
  {
    kdebug_trace();
  }

  if (v88)
  {
    if (!v83)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion xas failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2456)";
      __break(1u);
      JUMPOUT(0x597F8);
    }

    v55 = v88;
    v54 = v88;
    *(v83 + 24) = v88;
    v53 = v55;
  }

  if ((~v78 & 0x7FF) != 0)
  {
    if (v77)
    {
      if (!v90)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion xz failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2486)";
        __break(1u);
        JUMPOUT(0x59928);
      }

      _xzm_chunk_list_slot_push(v97, v90, *(v97 + 29), v95);
    }
  }

  else
  {
    v98 = v97;
    if (*(v97 + 30))
    {
      v13 = *(v97 + 30);
    }

    else
    {
      v13 = v98;
    }

    v52 = v13;
    if (!v90)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion xz failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2462)";
      __break(1u);
      JUMPOUT(0x598A4);
    }

    if (v52[424])
    {
      _xzm_chunk_batch_list_push(v97, v90, v95, v52[424]);
    }

    else
    {
      _xzm_xzone_madvise_freelist_chunk(v97, v90, v95);
    }
  }
}

unint64_t xzm_good_size(uint64_t a1, unint64_t a2)
{
  if (a2 > 0x8000)
  {
    if ((a2 & 0x3FFF) != 0)
    {
      v6 = (a2 & 0xFFFFFFFFFFFFC000) + 0x4000;
    }

    else
    {
      v6 = a2;
    }

    if (v6 <= a2)
    {
      return a2;
    }

    if ((a2 & 0x3FFF) != 0)
    {
      return (a2 & 0xFFFFFFFFFFFFC000) + 0x4000;
    }

    else
    {
      return a2;
    }
  }

  else
  {
    if (*(a1 + 240))
    {
      v8 = *(a1 + 240);
    }

    else
    {
      v8 = a1;
    }

    if (a2)
    {
      if (a2 > 0x80)
      {
        v2 = __clz(a2 - 1);
        v10 = (((a2 - 1) >> (61 - v2)) & 3 | (4 * (63 - v2))) - 20;
      }

      else
      {
        if ((a2 & 0xF) != 0)
        {
          v7 = (a2 >> 4) + 1;
        }

        else
        {
          v7 = a2 >> 4;
        }

        v10 = v7 - 1;
      }
    }

    else
    {
      v10 = 0;
    }

    return *(*(v8 + 432) + 8 * v10);
  }
}

void _xzm_foreach_lock(uint64_t a1, int a2)
{
  if (!a2)
  {
    _xzm_do_lock_action((a1 + 348), 0);
    _xzm_do_lock_action((a1 + 344), 0);
    _xzm_allocation_slots_do_lock_action(a1, 0);
  }

  for (i = 1; i < *(a1 + 210); ++i)
  {
    v12 = *(a1 + 216) + 96 * i;
    if (*(v12 + 48) > 0x1000uLL)
    {
      if (*(a1 + 250))
      {
        v11 = 6;
      }

      else
      {
        v11 = 5;
      }
    }

    else
    {
      v11 = 2;
    }

    if (v11 == 2 || v11 == 6)
    {
      _xzm_freelist_xzone_do_lock_action(a1, v12, a2);
    }

    else if (v11 == 5)
    {
      if (a2)
      {
        v8 = *(v12 + 24);
        while (v8)
        {
          _xzm_do_lock_action((v8 + 8), a2);
          v16 = v8 & 0xFFFFFFFFFFFFC000;
          v7 = 1;
          if ((v8 & 0xFFFFFFFFFFFFC000) != 0)
          {
            v6 = 0;
            if (v8 >= v16 + 2136)
            {
              v6 = v8 < (v8 & 0xFFFFFFFFFFFFC000) + 48 * *(&dword_10 + (v8 & 0xFFFFFFFFFFFFC000)) + 2136;
            }

            v7 = v6;
          }

          if ((v7 & 1) == 0)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
            __break(1u);
            JUMPOUT(0x59E58);
          }

          if (v8 < v16 + 2136)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
            __break(1u);
            JUMPOUT(0x59EB4);
          }

          if ((0xAAAAAAAAAAAAAAABLL * ((v8 - (v8 & 0xFFFFFFFFFFFFC000) - 2136) >> 4)) >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFC000)))
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
            __break(1u);
            JUMPOUT(0x59F14);
          }

          v8 = *(&stru_20.maxprot + (v8 & 0xFFFFFFFFFFFFC000) + 0xFFFFFFFD55555558 * ((v8 - v16 - 2136) >> 4));
          if (v8 == -1)
          {
            v17 = 0;
          }

          else
          {
            v18 = v8 & 0xFFFFFFFFFFFFC000;
            v5 = 1;
            if ((v8 & 0xFFFFFFFFFFFFC000) != 0)
            {
              v4 = 0;
              if (v8 >= v18 + 2136)
              {
                v4 = v8 < (v8 & 0xFFFFFFFFFFFFC000) + 48 * *(&dword_10 + (v8 & 0xFFFFFFFFFFFFC000)) + 2136;
              }

              v5 = v4;
            }

            if ((v5 & 1) == 0)
            {
              qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
              __break(1u);
              JUMPOUT(0x5A028);
            }

            v3 = 1;
            if (v8)
            {
              v2 = 0;
              if (v8 >= v18 + 2136)
              {
                v2 = v8 < (v8 & 0xFFFFFFFFFFFFC000) + 48 * *(&dword_10 + (v8 & 0xFFFFFFFFFFFFC000)) + 2136;
              }

              v3 = v2;
            }

            v17 = v3;
          }

          if (!v17)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_slice_meta_is_batch_pointer(zone, chunk) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5687)";
            __break(1u);
            JUMPOUT(0x5A0E8);
          }
        }

        for (j = *v12; j; j = *(j + 16))
        {
          _xzm_do_lock_action((j + 8), a2);
        }

        for (k = *(v12 + 8); k; k = *(k + 16))
        {
          _xzm_do_lock_action((k + 8), a2);
        }

        _xzm_do_lock_action((v12 + 36), a2);
      }

      else
      {
        _xzm_small_xzone_lock_all(a1, v12);
      }
    }
  }

  if (a2)
  {
    _xzm_allocation_slots_do_lock_action(a1, a2);
    _xzm_do_lock_action((a1 + 344), a2);
    _xzm_do_lock_action((a1 + 348), a2);
  }
}

void xzm_force_lock_global_state(uint64_t a1)
{
  v2 = 0;
  if (*(a1 + 104) >= 0xEu)
  {
    v1 = 0;
    if (*(a1 + 96))
    {
      v1 = *(a1 + 96);
    }

    v2 = *(v1 + 128) == 1;
  }

  if (!v2)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_malloc_zone_is_xzm(main_zone) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5788)";
    __break(1u);
    JUMPOUT(0x5A338);
  }

  if (*(a1 + 240))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_malloc_zone_is_main((xzm_malloc_zone_t)main_zone) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5789)";
    __break(1u);
    JUMPOUT(0x5A374);
  }

  _xzm_global_state_lock(a1, 0);
}

void _xzm_global_state_lock(uint64_t a1, int a2)
{
  for (i = 1; i < *(a1 + 210); ++i)
  {
    _xzm_do_lock_action((*(a1 + 456) + 16 * i + 8), a2);
  }

  for (j = 0; j < *(a1 + 413); ++j)
  {
    v4 = *(a1 + 472) + 528 * j;
    _xzm_do_lock_action((v4 + 8), a2);
    _xzm_do_lock_action((v4 + 4), a2);
    if (*v4 == 1)
    {
      _xzm_do_lock_action((v4 + 520), a2);
    }
  }

  for (k = 0; k < *(a1 + 410); ++k)
  {
    _xzm_do_lock_action((*(a1 + 464) + 80 * k + 16), a2);
  }

  _xzm_do_lock_action((a1 + 512), a2);
  for (m = 0; m < *(a1 + 414); ++m)
  {
    _xzm_do_lock_action((*(a1 + 480) + (m << 6)), a2);
  }

  _xzm_do_lock_action((a1 + 528), a2);
  _xzm_do_lock_action((a1 + 552), a2);
  if (*(a1 + 568))
  {
    _xzm_do_lock_action((*(a1 + 568) + 12), a2);
  }
}

void xzm_force_unlock_global_state(uint64_t a1)
{
  v2 = 0;
  if (*(a1 + 104) >= 0xEu)
  {
    v1 = 0;
    if (*(a1 + 96))
    {
      v1 = *(a1 + 96);
    }

    v2 = *(v1 + 128) == 1;
  }

  if (!v2)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_malloc_zone_is_xzm(main_zone) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5797)";
    __break(1u);
    JUMPOUT(0x5A680);
  }

  if (*(a1 + 240))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_malloc_zone_is_main((xzm_malloc_zone_t)main_zone) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5798)";
    __break(1u);
    JUMPOUT(0x5A6BCLL);
  }

  _xzm_global_state_lock(a1, 1);
}

void xzm_force_reinit_lock_global_state(uint64_t a1)
{
  v2 = 0;
  if (*(a1 + 104) >= 0xEu)
  {
    v1 = 0;
    if (*(a1 + 96))
    {
      v1 = *(a1 + 96);
    }

    v2 = *(v1 + 128) == 1;
  }

  if (!v2)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_malloc_zone_is_xzm(main_zone) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5806)";
    __break(1u);
    JUMPOUT(0x5A7A4);
  }

  if (*(a1 + 240))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_malloc_zone_is_main((xzm_malloc_zone_t)main_zone) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5807)";
    __break(1u);
    JUMPOUT(0x5A7E0);
  }

  _xzm_global_state_lock(a1, 2);
}

uint64_t xzm_ptr_lookup_4test(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, _BYTE *a5)
{
  v31 = a1;
  v30 = a2;
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = 0;
  v40 = a1;
  v38 = &v26;
  v37 = 0;
  v36 = 0;
  v35 = a2;
  v43 = a2;
  v42 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v39 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v44 = a1;
  if (*(a1 + 240))
  {
    v23 = *(a1 + 240);
  }

  else
  {
    v23 = v44;
  }

  v34 = v23;
  v53 = v39;
  v52 = v23;
  v51 = 0;
  v58 = v39;
  v57 = &v51;
  v56 = v39;
  if (v39 >> 36)
  {
    *v57 = 0;
    v59 = 0x4000;
  }

  else
  {
    v55 = v56 >> 22;
    *v57 = 0;
    if (v55 >= 0x4000)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segindex < XZM_SEGMENT_TABLE_ENTRIES failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:169)";
      __break(1u);
      JUMPOUT(0x5A964);
    }

    v59 = v55;
  }

  v50 = v59;
  if (v59 < 0x4000)
  {
    v54 = *(v52 + 488) + 4 * v50;
  }

  else
  {
    v54 = 0;
  }

  v33 = v54;
  if (!v54)
  {
    v41 = 0;
    goto LABEL_116;
  }

  v77 = *v33;
  v76 = v40;
  v75 = v35;
  v74 = v39;
  v73 = v38;
  v72 = v37;
  v71 = v36;
  v101 = v77;
  v70 = (v77 & 0x7FFFFFFF) << 14;
  if (v70)
  {
    v109 = v70;
    v108 = v74;
    v113 = v70;
    v112 = v74;
    v123 = v70;
    v122 = v74;
    v127 = v70;
    v126 = v74;
    v130 = v70;
    v132 = v70;
    v131 = 0;
    v125 = v74 - *(v70 + 72);
    v140 = v70;
    v141 = v70;
    v139 = *(v70 + 12);
    if (v139 << 14)
    {
      v138 = v127;
      v142 = v127;
      v137 = *(v127 + 12);
      v136 = v127;
      v143 = v127;
      v135 = *(v127 + 12);
      v22 = (v137 << 14) - (v135 << 14) + 0x400000;
    }

    else
    {
      v134 = v127;
      v144 = v127;
      v133 = *(v127 + 12);
      v22 = v133 << 14;
    }

    v124 = v22;
    v21 = 0;
    if ((v125 & 0x8000000000000000) == 0)
    {
      v21 = v125 < v124;
    }

    if (!v21)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion diff >= 0 && diff < (ptrdiff_t)rounded_size failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:460)";
      __break(1u);
      JUMPOUT(0x5ABC4);
    }

    v121 = v125;
    v129 = v123;
    v128 = v125;
    v111 = v125 >> 14;
    if (v111 >= *(v113 + 16))
    {
      v114 = 0;
    }

    else
    {
      v114 = v113 + 48 * v111 + 2136;
    }

    v107 = v114;
    if (!v114)
    {
      v110 = 0;
LABEL_54:
      v69 = v110;
      if (!v110)
      {
        v78 = 0;
        goto LABEL_115;
      }

      if (*(v69 + 34) != *(v76 + 208))
      {
        v78 = 0;
        goto LABEL_115;
      }

      v68 = v74;
      v85 = v76;
      v84 = v69;
      v83 = 0;
      v87 = v76;
      v86 = v69;
      v90 = v76;
      v89 = v69;
      v88 = v69 & 0xFFFFFFFFFFFFC000;
      v18 = 1;
      if ((v69 & 0xFFFFFFFFFFFFC000) != 0)
      {
        v17 = 0;
        if (v89 >= v88 + 2136)
        {
          v17 = v89 < v88 + 48 * *(v88 + 16) + 2136;
        }

        v18 = v17;
      }

      if ((v18 & 1) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
        __break(1u);
        JUMPOUT(0x5B0ECLL);
      }

      v92 = v88;
      v91 = v86;
      v97 = v88;
      v96 = v86;
      if (v86 < v88 + 2136)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
        __break(1u);
        JUMPOUT(0x5B150);
      }

      v95 = 0xAAAAAAAAAAAAAAABLL * ((v96 - v97 - 2136) >> 4);
      if (v95 >= *(v97 + 16))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
        __break(1u);
        JUMPOUT(0x5B1B0);
      }

      v94 = v88;
      v93 = v95;
      v67 = *(v88 + 72) + (v95 << 14);
      v66 = v68 - v67;
      v65 = *(v69 + 32) & 0xF;
      v64 = 0;
      v63 = 0;
      v81 = v65;
      if (v65 == 2 || v65 == 6 || v65 == 5)
      {
        v64 = *(v76 + 216) + 96 * *(v69 + 33);
        v63 = *(v64 + 48);
        if (!XZM_FAST_ALIGNED(v66, v63, *(v64 + 64)))
        {
          v78 = 0;
          goto LABEL_115;
        }
      }

      else
      {
        v63 = *(v69 + 40) << 14;
        v62 = v66 % v63;
        if (v66 % v63)
        {
          v78 = 0;
          goto LABEL_115;
        }
      }

      v61 = v66 / v63;
      v79 = *(v69 + 32) & 0xF;
      v80 = v79 == 2 || v79 == 6 || v79 == 5;
      v16 = 1;
      if (v80)
      {
        v16 = v61 < *(v64 + 68);
      }

      if (!v16)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !_xzm_slice_kind_uses_xzones(chunk->xzc_bits.xzcb_kind) || block_index < xz->xz_chunk_capacity failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4502)";
        __break(1u);
        JUMPOUT(0x5B3CCLL);
      }

      v98 = v76;
      v60 = *(v76 + 368) & 1;
      if (v60)
      {
        v99 = v68;
        v100 = v68;
        _X8 = v68;
        __asm { LDG             X8, [X8] }

        v68 = _X8;
        v105 = v75;
        v104 = _X8;
        v103 = v75;
        v102 = _X8;
        if ((HIBYTE(v75) & 0xF) != (HIBYTE(_X8) & 0xF))
        {
          v78 = 0;
          goto LABEL_115;
        }
      }

      v160 = v76;
      v159 = v69;
      v158 = v65;
      v157 = v66;
      v156 = v63;
      v155 = v68;
      if ((*(v69 + 32) & 0xF) != v65)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == kind failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4379)";
        __break(1u);
        JUMPOUT(0x5B4D4);
      }

      switch(v158)
      {
        case 2:
          goto LABEL_94;
        case 5:
          v145 = v157 / v156;
          v168 = v159;
          v167 = v157 / v156;
          if ((*(v159 + 32) & 0xF) != 5)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_SMALL_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:973)";
            __break(1u);
            JUMPOUT(0x5B670);
          }

          v161 = (*v168 >> v167) & 1;
          break;
        case 6:
LABEL_94:
          v154 = 0;
          if (*(v159 + 12))
          {
            __asm { MSR             TCO, #1 }

            v152 = *v155;
            v153 = v152;
            v151 = v152;
            v154 = v152;
            __asm { MSR             TCO, #0 }
          }

          else
          {
            v149 = *v155;
            v150 = v149;
            v148 = v149;
            v154 = v149;
          }

          v147 = *(v160 + 320) ^ v155;
          if (v158 == 6)
          {
            v163 = v147;
            v162 = v147 & 0xF0FFFFFFFFFFFFFFLL;
            v147 &= 0xF0FFFFFFFFFFFFFFLL;
          }

          if (v154 == v147)
          {
            is_free_slow = _xzm_xzone_freelist_chunk_block_is_free_slow(v160, v159, v155);
            v161 = is_free_slow & 1;
          }

          else
          {
            v161 = 0;
          }

          break;
        default:
          v161 = 0;
          break;
      }

      if (v161 == 1)
      {
        v78 = 0;
      }

      else
      {
        if (v73)
        {
          *v73 = v64;
        }

        if (v72)
        {
          *v72 = v68;
        }

        if (v71)
        {
          *v71 = v63;
        }

        v78 = v69;
      }

      goto LABEL_115;
    }

    v116 = v107;
    if ((*(v107 + 32) & 0xF) == 4)
    {
      v115 = v116 - *(v116 + 36);
      if (v115 < (v116 & 0xFFFFFFFFFFFFC000 | 0x858))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion out_slice >= ((xzm_segment_t)((uintptr_t)slice & ~(XZM_METAPOOL_SEGMENT_BLOCK_SIZE - 1)))->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:609)";
        __break(1u);
        JUMPOUT(0x5ACD4);
      }

      v119 = v115;
      v118 = v116;
      v20 = *(v115 + 32) & 0xF;
      if ((v20 - 1) < 2)
      {
        v120 = v119 == v118;
      }

      else if (v20 == 3 || (v20 - 5) < 5)
      {
        if (v118 < v119)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice >= span failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:587)";
          __break(1u);
          JUMPOUT(0x5AD78);
        }

        v120 = v118 < v119 + 48 * *(v119 + 40);
      }

      else
      {
        v120 = 0;
      }

      if (v120)
      {
        v117 = v115;
      }

      else
      {
        v117 = v116;
      }
    }

    else
    {
      v117 = v116;
    }

    v106 = v117;
    v165 = *(v117 + 32) & 0xF;
    if (v165 >= 2u)
    {
      if (v165 == 2)
      {
LABEL_49:
        v166 = 1;
        goto LABEL_50;
      }

      if (v165 - 3 >= 2)
      {
        if (v165 - 5 >= 4)
        {
          v164 = v165;
          qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
          qword_D8158 = v165;
          __break(1u);
          JUMPOUT(0x5AE94);
        }

        goto LABEL_49;
      }
    }

    v166 = 0;
LABEL_50:
    if (v166 == 1)
    {
      v19 = v106;
    }

    else
    {
      v19 = 0;
    }

    v110 = v19;
    goto LABEL_54;
  }

  v78 = 0;
LABEL_115:
  v41 = v78;
LABEL_116:
  v25 = v41;
  if (v41)
  {
    v24 = *(v41 + 32) & 0xF;
    *v29 = v24;
    v47 = v31;
    v46 = v25;
    v45 = v25 & 0xFFFFFFFFFFFFC000;
    v15 = 1;
    if ((v25 & 0xFFFFFFFFFFFFC000) != 0)
    {
      v14 = 0;
      if (v46 >= v45 + 2136)
      {
        v14 = v46 < v45 + 48 * *(v45 + 16) + 2136;
      }

      v15 = v14;
    }

    if ((v15 & 1) == 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
      __break(1u);
      JUMPOUT(0x5B828);
    }

    *v28 = **v45;
    v48 = v24;
    if (v24 == 2 || v24 == 6 || v24 == 5)
    {
      if (!v26)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion xz failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:6061)";
        __break(1u);
        JUMPOUT(0x5B8D0);
      }

      *v27 = *(v26 + 84);
    }

    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t xzm_type_choose_ptr_bucket_4test(void *a1, unsigned __int8 a2, unsigned int a3)
{
  if (a2 >= 5u)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr_bucket_count <= XZM_POINTER_BUCKETS_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:80)";
    __break(1u);
    JUMPOUT(0x5B960);
  }

  v5 = 0;
  if (a2 >= 2u)
  {
    v4 = (*a1 * a3 + a1[1]) >> 32;
    if (a2 == 2)
    {
      return v4 & 1;
    }

    else if (a2 == 3)
    {
      return v4 % 3;
    }

    else
    {
      return v4 & 3;
    }
  }

  return v5;
}

uint64_t xzm_main_malloc_zone_create(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v551 = &v667;
  v553 = &v637;
  v552 = v568;
  v652 = a1;
  v651 = a2;
  v650 = a3;
  v649 = a4;
  v648 = 0;
  v647 = 0;
  v646[1] = 0;
  v646[0] = 0;
  v654 = a3;
  v653 = "executable_boothash";
  if (_simple_getenv())
  {
    v6 = *(v553 + 30);
    v7 = _platform_strlen();
    v8 = v553;
    *(v553 + 29) = v7;
    if (*(v8 + 29) <= 0x1FuLL)
    {
      v9 = v553;
      *(v553 + 28) = *(v553 + 29);
      v10 = *(v9 + 28);
      v442 = v4;
      v443 = v5;
      qword_D8128 = "BUG IN LIBMALLOC: invalid executable_boothash length";
      qword_D8158 = v10;
      __break(1u);
      JUMPOUT(0x5BB98);
    }

    v11 = v553;
    *(v553 + 27) = 16;
    *(v11 + 26) = 0;
    *(v11 + 25) = 2;
    *(v11 + 24) = 0;
    while (*(v553 + 24) <= 1uLL)
    {
      v12 = *(v553 + 30);
      v13 = *(v553 + 24);
      v549 = 16;
      v550 = v668;
      _platform_memmove();
      v668[16] = 0;
      v14 = strtoull(v668, 0, 16);
      v15 = v553;
      *(v553 + 26) = v14;
      if (!*(v15 + 26) && *__error() == 22 || *(v553 + 26) == -1 && *__error() == 34)
      {
        v442 = v4;
        v443 = v5;
        qword_D8128 = "BUG IN LIBMALLOC: invalid executable_boothash string";
        __break(1u);
        JUMPOUT(0x5BC84);
      }

      v646[(*(v553 + 24))++] = *(v553 + 26);
    }
  }

  else
  {
    if (v648)
    {
      v442 = v4;
      v443 = v5;
      qword_D8128 = "BUG IN LIBMALLOC: couldn't find executable_boothash";
      __break(1u);
      JUMPOUT(0x5BB28);
    }

    arc4random_buf(v646, 0x10uLL);
  }

  v16 = ccsha256_di();
  v17 = v553;
  *(v553 + 23) = v16;
  v18 = (*(*(v17 + 23) + 8) + *(*(v17 + 23) + 16) + 19) >> 3;
  *(v17 + 22) = &v444;
  v548 = &v444 - ((8 * v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v17 + 21) = v18;
  v19 = *(v17 + 23);
  ccdigest_init();
  v20 = v551;
  v21 = v553;
  strcpy(v551 + 10, "oc front random");
  *v20 = *"xzone malloc front random";
  v22 = *(v21 + 23);
  ccdigest_update();
  v23 = *(v553 + 23);
  ccdigest_update();
  ccdigest_final(*(v553 + 23), v548, v669);
  v24 = *(v553 + 23);
  v25 = *(v24 + 8);
  v26 = *(v24 + 16);
  cc_clear();
  *(v553 + 20) = 0;
  v644 = (v652 & 0x20) != 0;
  v27 = v553;
  v643 = 2;
  *(v553 + 18) = 0;
  v28 = malloc_common_value_for_key_copy(*(v27 + 34), "xzone_ptr_buckets", v666, 0x100uLL);
  v29 = v553;
  *(v553 + 17) = v28;
  if (*(v29 + 17))
  {
    v30 = v553;
    *(v553 + 16) = 0;
    v31 = malloc_common_convert_to_long(*(v30 + 17), v642);
    v32 = v553;
    *(v553 + 15) = v31;
    if (**(v32 + 16) || *(v553 + 15) < 1 || *(v553 + 15) > 4)
    {
      v442 = *(v553 + 15);
      malloc_report(3, "Invalid xzone_ptr_buckets value %ld - ignored.\n");
    }

    else
    {
      *(v553 + 18) = *(v553 + 15);
    }
  }

  v641 = 1;
  if (v648)
  {
    v641 = 0;
    v643 = 1;
  }

  if (v641)
  {
    v33 = v553;
    *(v553 + 55) = *(v553 + 36);
    *(v33 + 54) = "MallocMaxMagazines";
    v34 = *(v33 + 55);
    v35 = *(v33 + 54);
    v36 = _simple_getenv();
    v37 = v553;
    *(v553 + 17) = v36;
    if (*(v37 + 17))
    {
      v38 = strtol(*(v553 + 17), 0, 10);
      v39 = v553;
      *(v553 + 13) = v38;
      if (*(v39 + 13) == 1)
      {
        v643 = 0;
      }

      else if (*(v553 + 13) == 2 || *(v553 + 13) == 0xFFFFLL)
      {
        v643 = 1;
      }

      if (*(v553 + 13) == 1 || *(v553 + 13) == 2 || *(v553 + 13) == 0xFFFFLL)
      {
        *(v553 + 18) = 1;
      }
    }
  }

  v40 = v553;
  *(v553 + 145) = *(v553 + 36);
  *(v40 + 144) = "MallocXzonePtrBucketCount";
  if (malloc_internal_security_policy)
  {
    v41 = *(v553 + 145);
    v42 = *(v553 + 144);
    v547 = _simple_getenv();
  }

  else
  {
    v547 = 0;
  }

  v43 = v553;
  *(v553 + 17) = v547;
  if (*(v43 + 17))
  {
    v44 = strtol(*(v553 + 17), 0, 10);
    v45 = v553;
    *(v553 + 12) = v44;
    if ((*(v45 + 12) & 0x8000000000000000) == 0 && *(v553 + 12) <= 4)
    {
      *(v553 + 18) = *(v553 + 12);
    }
  }

  v546 = *(v553 + 18);
  if (v546)
  {
    v545 = v546;
  }

  else
  {
    v545 = 3;
  }

  v46 = v553;
  *(v553 + 11) = v545;
  *(v46 + 10) = 2;
  v640 = 1;
  *(v46 + 53) = *(v46 + 36);
  *(v46 + 52) = "MallocXzoneEarlyAlloc";
  v47 = *(v46 + 53);
  v48 = *(v46 + 52);
  v49 = _simple_getenv();
  v50 = v553;
  *(v553 + 17) = v49;
  if (*(v50 + 17))
  {
    v51 = strtol(*(v553 + 17), 0, 10);
    v52 = v553;
    *(v553 + 8) = v51;
    if (*(v52 + 8) && *(v553 + 8) != 1)
    {
      malloc_report(3, "MallocXzoneEarlyAlloc must be 0 or 1.\n");
    }

    else
    {
      v640 = *(v553 + 8) != 0;
    }
  }

  if (v640)
  {
    mfm_initialize();
  }

  v53 = v553;
  *(v553 + 7) = *(v553 + 10) + *(v553 + 11);
  *(v53 + 5) = 40;
  *(v53 + 6) = *(v53 + 5);
  *(v53 + 4) = *(v53 + 6) * *(v53 + 7) + 1;
  if (*(v53 + 4) >= 0x100uLL)
  {
    v442 = v4;
    v443 = v5;
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion xzone_count <= UINT8_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:6773)";
    __break(1u);
    JUMPOUT(0x5C1F4);
  }

  v639 = 0;
  if (*(v553 + 20))
  {
    v639 = (*(*(v553 + 20) + 1) & 1) != 0;
  }

  v54 = v553;
  *(v553 + 143) = *(v553 + 36);
  *(v54 + 142) = "MallocXzoneMadviseWorkaround";
  if (malloc_internal_security_policy)
  {
    v55 = *(v553 + 143);
    v56 = *(v553 + 142);
    v544 = _simple_getenv();
  }

  else
  {
    v544 = 0;
  }

  v57 = v553;
  *(v553 + 17) = v544;
  if (*(v57 + 17))
  {
    v58 = strtol(*(v553 + 17), 0, 10);
    v59 = v553;
    *(v553 + 2) = v58;
    if (!*(v59 + 2) || *(v553 + 2) == 1)
    {
      v639 = *(v553 + 2) != 0;
    }
  }

  v60 = v552;
  *(v552 + 208) = 0;
  *(v60 + 207) = 0;
  if (malloc_has_sec_transition)
  {
    v637 = 1;
    v638 = 0;
    *(v552 + 208) = 0x8000;
    if ((malloc_sec_transition_policy & 2) != 0)
    {
      v638 = 1;
    }
  }

  v61 = v553;
  *(v552 + 206) = 0x8000;
  *(v61 + 51) = *(v61 + 36);
  *(v61 + 50) = "MallocTagAll";
  v62 = *(v61 + 51);
  v63 = *(v61 + 50);
  v64 = _simple_getenv();
  v65 = v553;
  *(v553 + 17) = v64;
  if (*(v65 + 17))
  {
    v66 = strtol(*(v553 + 17), 0, 10);
    v67 = v552;
    *(v552 + 205) = v66;
    if (*(v67 + 205) == 1)
    {
      v638 = 1;
      *(v552 + 208) = *(v552 + 206);
      if ((malloc_has_sec_transition & 1) == 0)
      {
        malloc_report(64, "Malloc MTE debug mode (MallocTagAll=1) requires the process to be started with MTE enabled.\n");
      }
    }
  }

  v68 = v553;
  *(v553 + 141) = *(v553 + 36);
  *(v68 + 140) = "MallocTagAllInternal";
  if (malloc_internal_security_policy)
  {
    v69 = *(v553 + 141);
    v70 = *(v553 + 140);
    v543 = _simple_getenv();
  }

  else
  {
    v543 = 0;
  }

  v71 = v553;
  *(v553 + 17) = v543;
  if (*(v71 + 17))
  {
    v72 = strtol(*(v553 + 17), 0, 10);
    v73 = v552;
    *(v552 + 204) = v72;
    if (*(v73 + 204) == 1)
    {
      v638 = 1;
      *(v552 + 208) = *(v552 + 206);
    }
  }

  v74 = v553;
  *(v553 + 139) = *(v553 + 36);
  *(v74 + 138) = "MallocXzoneMemtagEnable";
  if (malloc_internal_security_policy)
  {
    v75 = *(v553 + 139);
    v76 = *(v553 + 138);
    v542 = _simple_getenv();
  }

  else
  {
    v542 = 0;
  }

  v77 = v553;
  *(v553 + 17) = v542;
  if (*(v77 + 17))
  {
    v78 = strtol(*(v553 + 17), 0, 10);
    v79 = v552;
    *(v552 + 203) = v78;
    if (!*(v79 + 203) || *(v552 + 203) == 1)
    {
      v637 = *(v552 + 203) != 0;
    }
  }

  v80 = v553;
  *(v553 + 137) = *(v553 + 36);
  *(v80 + 136) = "MallocXzoneMemtagTagData";
  if (malloc_internal_security_policy)
  {
    v81 = *(v553 + 137);
    v82 = *(v553 + 136);
    v541 = _simple_getenv();
  }

  else
  {
    v541 = 0;
  }

  v83 = v553;
  *(v553 + 17) = v541;
  if (*(v83 + 17))
  {
    v84 = strtol(*(v553 + 17), 0, 10);
    v85 = v552;
    *(v552 + 202) = v84;
    if (!*(v85 + 202) || *(v552 + 202) == 1)
    {
      v638 = *(v552 + 202) != 0;
    }
  }

  v86 = v553;
  *(v553 + 135) = *(v553 + 36);
  *(v86 + 134) = "MallocXzoneMemtagMaxBlockSize";
  if (malloc_internal_security_policy)
  {
    v87 = *(v553 + 135);
    v88 = *(v553 + 134);
    v540 = _simple_getenv();
  }

  else
  {
    v540 = 0;
  }

  v89 = v553;
  *(v553 + 17) = v540;
  if (*(v89 + 17))
  {
    v90 = strtoull(*(v553 + 17), 0, 10);
    v91 = v552;
    *(v552 + 201) = v90;
    if (*(v91 + 201) <= 0x8000uLL && (v636 & 0xF) == 0)
    {
      *(v552 + 208) = *(v552 + 201);
    }
  }

  v635 = 1;
  if (*(v553 + 20))
  {
    v635 = (*(*(v553 + 20) + 2) & 1) == 0;
  }

  v92 = v553;
  *(v553 + 133) = *(v553 + 36);
  *(v92 + 132) = "MallocXzoneHasRanges";
  if (malloc_internal_security_policy)
  {
    v93 = *(v553 + 133);
    v94 = *(v553 + 132);
    v539 = _simple_getenv();
  }

  else
  {
    v539 = 0;
  }

  v95 = v553;
  *(v553 + 17) = v539;
  if (*(v95 + 17))
  {
    v96 = strtol(*(v553 + 17), 0, 10);
    v97 = v552;
    *(v552 + 199) = v96;
    if (!*(v97 + 199) || *(v552 + 199) == 1)
    {
      v635 = *(v552 + 199) != 0;
    }
  }

  v634 = 0;
  v633 = _malloc_engaged_nano == 2;
  v632 = 0;
  if (v648)
  {
    v633 = 0;
  }

  if (v633)
  {
    v643 = 2;
  }

  v98 = v553;
  *(v553 + 49) = *(v553 + 36);
  *(v98 + 48) = "MallocXzoneThreadCaching";
  v99 = *(v98 + 49);
  v100 = *(v98 + 48);
  v101 = _simple_getenv();
  v102 = v553;
  *(v553 + 17) = v101;
  if (*(v102 + 17))
  {
    v103 = strtol(*(v553 + 17), 0, 10);
    v104 = v552;
    *(v552 + 197) = v103;
    if (*(v104 + 197) && *(v552 + 197) != 1)
    {
      v442 = *(v552 + 197);
      malloc_report(3, "MallocXzoneThreadCaching must be one of 0,1 - got %ld\n");
    }

    else
    {
      v634 = *(v552 + 197) == 1;
    }
  }

  if (*(v553 + 20) && **(v553 + 20) != 3)
  {
    v643 = **(v553 + 20);
  }

  v105 = malloc_common_value_for_key_copy(*(v553 + 34), "malloc_xzone_slot_config", v666, 0x100uLL);
  v106 = v553;
  *(v553 + 17) = v105;
  if (*(v106 + 17))
  {
    v107 = strtol(*(v553 + 17), 0, 10);
    v108 = v552;
    *(v552 + 196) = v107;
    if ((*(v108 + 196) & 0x8000000000000000) == 0 && *(v552 + 196) <= 2)
    {
      v643 = *(v552 + 196);
    }
  }

  v109 = v553;
  *(v553 + 131) = *(v553 + 36);
  *(v109 + 130) = "MallocXzoneSlotConfig";
  if (malloc_internal_security_policy)
  {
    v110 = *(v553 + 131);
    v111 = *(v553 + 130);
    v538 = _simple_getenv();
  }

  else
  {
    v538 = 0;
  }

  v112 = v553;
  *(v553 + 17) = v538;
  if (*(v112 + 17))
  {
    v113 = strtol(*(v553 + 17), 0, 10);
    v114 = v552;
    *(v552 + 195) = v113;
    if ((*(v114 + 195) & 0x8000000000000000) == 0 && *(v552 + 195) <= 2)
    {
      v643 = *(v552 + 195);
    }
  }

  v115 = v553;
  v631 = 0;
  v630 = 128;
  v629 = 1;
  *(v553 + 129) = *(v553 + 36);
  *(v115 + 128) = "MallocXzoneInitialSlotConfig";
  if (malloc_internal_security_policy)
  {
    v116 = *(v553 + 129);
    v117 = *(v553 + 128);
    v537 = _simple_getenv();
  }

  else
  {
    v537 = 0;
  }

  v118 = v553;
  *(v553 + 17) = v537;
  if (*(v118 + 17))
  {
    v119 = strtol(*(v553 + 17), 0, 10);
    v120 = v552;
    *(v552 + 192) = v119;
    if ((*(v120 + 192) & 0x8000000000000000) == 0 && *(v552 + 192) <= 2)
    {
      v631 = *(v552 + 192);
    }
  }

  v121 = v553;
  *(v553 + 127) = *(v553 + 36);
  *(v121 + 126) = "MallocXzoneInitialSlotThreshold";
  if (malloc_internal_security_policy)
  {
    v122 = *(v553 + 127);
    v123 = *(v553 + 126);
    v536 = _simple_getenv();
  }

  else
  {
    v536 = 0;
  }

  v124 = v553;
  *(v553 + 17) = v536;
  if (*(v124 + 17))
  {
    v125 = strtol(*(v553 + 17), 0, 10);
    v126 = v552;
    *(v552 + 191) = v125;
    if ((*(v126 + 191) & 0x8000000000000000) == 0 && *(v552 + 191) <= 4294967294)
    {
      v630 = *(v552 + 191);
    }
  }

  v127 = v553;
  *(v553 + 125) = *(v553 + 36);
  *(v127 + 124) = "MallocXzoneInitialChunkThreshold";
  if (malloc_internal_security_policy)
  {
    v128 = *(v553 + 125);
    v129 = *(v553 + 124);
    v535 = _simple_getenv();
  }

  else
  {
    v535 = 0;
  }

  v130 = v553;
  *(v553 + 17) = v535;
  if (*(v130 + 17))
  {
    v131 = strtol(*(v553 + 17), 0, 10);
    v132 = v552;
    *(v552 + 190) = v131;
    if (v132[190] >= 1 && *(v552 + 190) <= 254)
    {
      v629 = *(v552 + 190);
    }
  }

  v133 = v553;
  v628 = 32;
  v627 = 128;
  v626 = 64;
  v625 = 256;
  *(v553 + 123) = *(v553 + 36);
  *(v133 + 122) = "MallocXzoneListUpgradeThreshold";
  if (malloc_internal_security_policy)
  {
    v134 = *(v553 + 123);
    v135 = *(v553 + 122);
    v534 = _simple_getenv();
  }

  else
  {
    v534 = 0;
  }

  v136 = v553;
  *(v553 + 17) = v534;
  if (*(v136 + 17))
  {
    v137 = strtol(*(v553 + 17), 0, 10);
    v138 = v552;
    *(v552 + 187) = v137;
    if ((*(v138 + 187) & 0x8000000000000000) == 0 && *(v552 + 187) <= 4294967294)
    {
      v628 = *(v552 + 187);
      v627 = *(v552 + 187);
    }
  }

  v139 = v553;
  *(v553 + 121) = *(v553 + 36);
  *(v139 + 120) = "MallocXzoneListUpgradeThresholdSingle";
  if (malloc_internal_security_policy)
  {
    v140 = *(v553 + 121);
    v141 = *(v553 + 120);
    v533 = _simple_getenv();
  }

  else
  {
    v533 = 0;
  }

  v142 = v553;
  *(v553 + 17) = v533;
  if (*(v142 + 17))
  {
    v143 = strtol(*(v553 + 17), 0, 10);
    v144 = v552;
    *(v552 + 186) = v143;
    if ((*(v144 + 186) & 0x8000000000000000) == 0 && *(v552 + 186) <= 4294967294)
    {
      v628 = *(v552 + 186);
    }
  }

  v145 = v553;
  *(v553 + 119) = *(v553 + 36);
  *(v145 + 118) = "MallocXzoneListUpgradeThresholdCluster";
  if (malloc_internal_security_policy)
  {
    v146 = *(v553 + 119);
    v147 = *(v553 + 118);
    v532 = _simple_getenv();
  }

  else
  {
    v532 = 0;
  }

  v148 = v553;
  *(v553 + 17) = v532;
  if (*(v148 + 17))
  {
    v149 = strtol(*(v553 + 17), 0, 10);
    v150 = v552;
    *(v552 + 185) = v149;
    if ((*(v150 + 185) & 0x8000000000000000) == 0 && *(v552 + 185) <= 4294967294)
    {
      v627 = *(v552 + 185);
    }
  }

  v151 = v553;
  *(v553 + 117) = *(v553 + 36);
  *(v151 + 116) = "MallocXzoneSlotUpgradeThreshold";
  if (malloc_internal_security_policy)
  {
    v152 = *(v553 + 117);
    v153 = *(v553 + 116);
    v531 = _simple_getenv();
  }

  else
  {
    v531 = 0;
  }

  v154 = v553;
  *(v553 + 17) = v531;
  if (*(v154 + 17))
  {
    v155 = strtol(*(v553 + 17), 0, 10);
    v156 = v552;
    *(v552 + 184) = v155;
    if ((*(v156 + 184) & 0x8000000000000000) == 0 && *(v552 + 184) <= 4294967294)
    {
      v626 = *(v552 + 184);
      v625 = *(v552 + 184);
    }
  }

  v157 = v553;
  *(v553 + 115) = *(v553 + 36);
  *(v157 + 114) = "MallocXzoneSlotUpgradeThresholdSingle";
  if (malloc_internal_security_policy)
  {
    v158 = *(v553 + 115);
    v159 = *(v553 + 114);
    v530 = _simple_getenv();
  }

  else
  {
    v530 = 0;
  }

  v160 = v553;
  *(v553 + 17) = v530;
  if (*(v160 + 17))
  {
    v161 = strtol(*(v553 + 17), 0, 10);
    v162 = v552;
    *(v552 + 183) = v161;
    if ((*(v162 + 183) & 0x8000000000000000) == 0 && *(v552 + 183) <= 4294967294)
    {
      v626 = *(v552 + 183);
    }
  }

  v163 = v553;
  *(v553 + 113) = *(v553 + 36);
  *(v163 + 112) = "MallocXzoneSlotUpgradeThresholdCluster";
  if (malloc_internal_security_policy)
  {
    v164 = *(v553 + 113);
    v165 = *(v553 + 112);
    v529 = _simple_getenv();
  }

  else
  {
    v529 = 0;
  }

  v166 = v553;
  *(v553 + 17) = v529;
  if (*(v166 + 17))
  {
    v167 = strtol(*(v553 + 17), 0, 10);
    v168 = v552;
    *(v552 + 182) = v167;
    if ((*(v168 + 182) & 0x8000000000000000) == 0 && *(v552 + 182) <= 4294967294)
    {
      v625 = *(v552 + 182);
    }
  }

  v169 = v553;
  v624 = 512;
  v623 = 1024;
  *(v553 + 111) = *(v553 + 36);
  *(v169 + 110) = "MallocXzoneListUpgradePeriod";
  if (malloc_internal_security_policy)
  {
    v170 = *(v553 + 111);
    v171 = *(v553 + 110);
    v528 = _simple_getenv();
  }

  else
  {
    v528 = 0;
  }

  v172 = v553;
  *(v553 + 17) = v528;
  if (*(v172 + 17))
  {
    v173 = strtol(*(v553 + 17), 0, 10);
    v174 = v552;
    *(v552 + 180) = v173;
    if ((*(v174 + 180) & 0x8000000000000000) == 0 && *(v552 + 180) <= 4294967294)
    {
      v624 = *(v552 + 180);
    }
  }

  v175 = v553;
  *(v553 + 109) = *(v553 + 36);
  *(v175 + 108) = "MallocXzoneSlotUpgradePeriod";
  if (malloc_internal_security_policy)
  {
    v176 = *(v553 + 109);
    v177 = *(v553 + 108);
    v527 = _simple_getenv();
  }

  else
  {
    v527 = 0;
  }

  v178 = v553;
  *(v553 + 17) = v527;
  if (*(v178 + 17))
  {
    v179 = strtol(*(v553 + 17), 0, 10);
    v180 = v552;
    *(v552 + 179) = v179;
    if ((*(v180 + 179) & 0x8000000000000000) == 0 && *(v552 + 179) <= 4294967294)
    {
      v623 = *(v552 + 179);
    }
  }

  v622 = 0;
  v526 = v643;
  if (!v643)
  {
    v622 = 1;
    goto LABEL_213;
  }

  if (v526 == 1)
  {
    if (ncpuclusters >= 2)
    {
      v622 = ncpuclusters;
      goto LABEL_213;
    }
  }

  else if (v526 != 2)
  {
    v442 = v4;
    v443 = v5;
    qword_D8128 = "BUG IN LIBMALLOC: Invalid xzone slot config";
    __break(1u);
    JUMPOUT(0x5D388);
  }

  v643 = 2;
  v622 = logical_ncpus;
LABEL_213:
  if (v631 > v643)
  {
    v631 = v643;
  }

  v181 = v552;
  *(v552 + 177) = 1000000;
  *(v181 + 176) = 0;
  v620 = mach_timebase_info(&v621);
  if (v620)
  {
    v182 = v552;
    *(v552 + 174) = v620;
    v183 = *(v182 + 174);
    v442 = v4;
    v443 = v5;
    qword_D8128 = "BUG IN LIBMALLOC: mach_timebase_info failed";
    qword_D8158 = v183;
    __break(1u);
    JUMPOUT(0x5D410);
  }

  v184 = v553;
  v185 = v552;
  *(v552 + 173) = 0;
  *(v185 + 172) = 0;
  *(v185 + 171) = 1000000;
  *(v184 + 107) = *(v184 + 36);
  *(v184 + 106) = "MallocXzoneTinyThrashThreshold";
  if (malloc_internal_security_policy)
  {
    v186 = *(v553 + 107);
    v187 = *(v553 + 106);
    v525 = _simple_getenv();
  }

  else
  {
    v525 = 0;
  }

  v188 = v553;
  *(v553 + 17) = v525;
  if (*(v188 + 17))
  {
    v189 = strtol(*(v553 + 17), 0, 10);
    v190 = v552;
    *(v552 + 170) = v189;
    if ((*(v190 + 170) & 0x8000000000000000) == 0 && *(v552 + 170) <= 4294967294)
    {
      *(v552 + 171) = 1000000 * *(v552 + 170);
    }
  }

  v191 = v552;
  *(v552 + 169) = *(v552 + 171) * v621.denom / v621.numer;
  v191[168] = 0;
  v191[167] = 1000000;
  v191[172] = 0x4000;
  if (v633)
  {
    *(v552 + 168) = *(v552 + 167);
  }

  if (v637)
  {
    *(v552 + 168) = *(v552 + 167);
  }

  v192 = v553;
  *(v553 + 105) = *(v553 + 36);
  *(v192 + 104) = "MallocXzoneSmallThrashThreshold";
  if (malloc_internal_security_policy)
  {
    v193 = *(v553 + 105);
    v194 = *(v553 + 104);
    v524 = _simple_getenv();
  }

  else
  {
    v524 = 0;
  }

  v195 = v553;
  *(v553 + 17) = v524;
  if (*(v195 + 17))
  {
    v196 = strtol(*(v553 + 17), 0, 10);
    v197 = v552;
    *(v552 + 166) = v196;
    if ((*(v197 + 166) & 0x8000000000000000) == 0 && *(v552 + 166) <= 4294967294)
    {
      *(v552 + 168) = 1000000 * *(v552 + 166);
    }
  }

  v198 = v553;
  *(v552 + 173) = *(v552 + 168) * v621.denom / v621.numer;
  *(v198 + 103) = *(v198 + 36);
  *(v198 + 102) = "MallocXzoneSmallThrashLimitSize";
  if (malloc_internal_security_policy)
  {
    v199 = *(v553 + 103);
    v200 = *(v553 + 102);
    v523 = _simple_getenv();
  }

  else
  {
    v523 = 0;
  }

  v201 = v553;
  *(v553 + 17) = v523;
  if (*(v201 + 17))
  {
    v202 = strtol(*(v553 + 17), 0, 10);
    v203 = v552;
    *(v552 + 165) = v202;
    if ((*(v203 + 165) & 0x8000000000000000) == 0 && *(v552 + 165) <= 0x8000uLL)
    {
      *(v552 + 172) = *(v552 + 165);
    }
  }

  v204 = v553;
  v619 = 0x4000;
  v618 = 256;
  *(v552 + 163) = 0;
  *(v204 + 47) = *(v204 + 36);
  *(v204 + 46) = "MallocXzoneThreadCacheActivationPeriod";
  v205 = *(v204 + 47);
  v206 = *(v204 + 46);
  v207 = _simple_getenv();
  v208 = v553;
  *(v553 + 17) = v207;
  if (*(v208 + 17))
  {
    v209 = strtol(*(v553 + 17), 0, 10);
    v210 = v552;
    *(v552 + 162) = v209;
    if ((*(v210 + 162) & 0x8000000000000000) == 0 && *(v552 + 162) <= 4294967294)
    {
      v619 = *(v552 + 162);
    }
  }

  v211 = v553;
  *(v553 + 45) = *(v553 + 36);
  *(v211 + 44) = "MallocXzoneThreadCacheActivationContentions";
  v212 = *(v211 + 45);
  v213 = *(v211 + 44);
  v214 = _simple_getenv();
  v215 = v553;
  *(v553 + 17) = v214;
  if (*(v215 + 17))
  {
    v216 = strtol(*(v553 + 17), 0, 10);
    v217 = v552;
    *(v552 + 161) = v216;
    if ((*(v217 + 161) & 0x8000000000000000) == 0 && *(v552 + 161) <= 4294967294)
    {
      v618 = *(v552 + 161);
    }
  }

  v218 = v553;
  *(v552 + 160) = 1000000000;
  *(v218 + 43) = *(v218 + 36);
  *(v218 + 42) = "MallocXzoneThreadCacheActivationTime";
  v219 = *(v218 + 43);
  v220 = *(v218 + 42);
  v221 = _simple_getenv();
  v222 = v553;
  *(v553 + 17) = v221;
  if (*(v222 + 17))
  {
    v223 = strtol(*(v553 + 17), 0, 10);
    v224 = v552;
    *(v552 + 159) = v223;
    if ((*(v224 + 159) & 0x8000000000000000) == 0 && *(v552 + 159) != -1)
    {
      *(v552 + 160) = 1000000 * *(v552 + 159);
    }
  }

  v225 = v553;
  *(v552 + 163) = *(v552 + 160) * v621.denom / v621.numer;
  v616 = 512;
  v615 = 0x400000;
  v614 = 0;
  v617 = -1;
  v613 = 0;
  v612 = 0;
  v611 = 0;
  *(v225 + 101) = *(v225 + 36);
  *(v225 + 100) = "MallocDeferredReclaim";
  if (malloc_internal_security_policy)
  {
    v226 = *(v553 + 101);
    v227 = *(v553 + 100);
    v522 = _simple_getenv();
  }

  else
  {
    v522 = 0;
  }

  v228 = v553;
  *(v553 + 17) = v522;
  if (*(v228 + 17))
  {
    v229 = strtol(*(v553 + 17), 0, 10);
    v230 = v552;
    *(v552 + 155) = v229;
    if (*(v230 + 155) && *(v552 + 155) != 1)
    {
      v442 = *(v552 + 155);
      malloc_report(3, "MallocDeferredReclaim must be one of 0,1 - got %ld\n");
    }

    else
    {
      v613 = *(v552 + 155) == 1;
      v612 = *(v552 + 155) == 1;
      v611 = *(v552 + 155) == 1;
      v614 = 16 * (*(v552 + 155) == 1);
    }
  }

  v231 = v553;
  *(v553 + 99) = *(v553 + 36);
  *(v231 + 98) = "MallocDeferredReclaimBufferCount";
  if (malloc_internal_security_policy)
  {
    v232 = *(v553 + 99);
    v233 = *(v553 + 98);
    v521 = _simple_getenv();
  }

  else
  {
    v521 = 0;
  }

  v234 = v553;
  *(v553 + 17) = v521;
  if (*(v234 + 17))
  {
    v235 = strtol(*(v553 + 17), 0, 10);
    v236 = v552;
    *(v552 + 154) = v235;
    if ((*(v236 + 154) & 0x8000000000000000) == 0 && *(v552 + 154) <= 0xFFFFFFFFLL)
    {
      v616 = *(v552 + 154);
    }
  }

  v237 = v553;
  *(v553 + 97) = *(v553 + 36);
  *(v237 + 96) = "MallocDeferredReclaimBufferMaxCount";
  if (malloc_internal_security_policy)
  {
    v238 = *(v553 + 97);
    v239 = *(v553 + 96);
    v520 = _simple_getenv();
  }

  else
  {
    v520 = 0;
  }

  v240 = v553;
  *(v553 + 17) = v520;
  if (*(v240 + 17))
  {
    v241 = strtol(*(v553 + 17), 0, 10);
    v242 = v552;
    *(v552 + 153) = v241;
    if ((*(v242 + 153) & 0x8000000000000000) == 0 && *(v552 + 153) <= 0xFFFFFFFFLL)
    {
      v615 = *(v552 + 153);
    }
  }

  v616 = mach_vm_reclaim_round_capacity();
  v243 = mach_vm_reclaim_round_capacity();
  v244 = v553;
  v615 = v243;
  *(v553 + 41) = *(v553 + 36);
  *(v244 + 40) = "MallocLargeCache";
  v245 = *(v244 + 41);
  v246 = *(v244 + 40);
  v247 = _simple_getenv();
  v248 = v553;
  *(v553 + 17) = v247;
  if (*(v248 + 17))
  {
    v249 = strtol(*(v553 + 17), 0, 10);
    v250 = v552;
    *(v552 + 152) = v249;
    if (*(v250 + 152) && *(v552 + 152) != 1)
    {
      malloc_report(3, "MallocLargeCache must be 0 or 1.\n");
    }

    else
    {
      v614 = 16 * (*(v552 + 152) == 1);
      v611 = *(v552 + 152) == 1;
      v613 = *(v552 + 152) == 1;
      v612 = *(v552 + 152) == 1;
    }
  }

  if (!v633)
  {
    v611 = 0;
    v614 = 0;
  }

  v251 = v553;
  *(v553 + 95) = *(v553 + 36);
  *(v251 + 94) = "MallocXzoneHugeCacheSize";
  if (malloc_internal_security_policy)
  {
    v252 = *(v553 + 95);
    v253 = *(v553 + 94);
    v519 = _simple_getenv();
  }

  else
  {
    v519 = 0;
  }

  v254 = v553;
  *(v553 + 17) = v519;
  if (*(v254 + 17))
  {
    v255 = strtol(*(v553 + 17), 0, 10);
    v256 = v552;
    *(v552 + 151) = v255;
    if ((*(v256 + 151) & 0x8000000000000000) != 0 || *(v552 + 151) >= 0x10000)
    {
      v442 = *(v552 + 151);
      malloc_report(3, "xzm: unsupported value for MallocXzoneHugeCacheSize (%ld)");
    }

    else
    {
      v614 = *(v552 + 151);
    }
  }

  v257 = v553;
  *(v553 + 93) = *(v553 + 36);
  *(v257 + 92) = "MallocXzoneHugeCacheMaxEntryBytes";
  if (malloc_internal_security_policy)
  {
    v258 = *(v553 + 93);
    v259 = *(v553 + 92);
    v518 = _simple_getenv();
  }

  else
  {
    v518 = 0;
  }

  v260 = v553;
  *(v553 + 17) = v518;
  if (*(v260 + 17))
  {
    v261 = strtol(*(v553 + 17), 0, 10);
    v262 = v552;
    *(v552 + 150) = v261;
    if ((*(v262 + 150) & 0x8000000000000000) != 0 || *(v552 + 150) > 0xFFFFFFFFLL)
    {
      v442 = *(v552 + 150);
      malloc_report(3, "xzm: unsupported value for MallocXzoneHugeCacheMaxEntryBytes (%ld)");
    }

    else
    {
      v617 = *(v552 + 150);
    }
  }

  v263 = v553;
  *(v553 + 91) = *(v553 + 36);
  *(v263 + 90) = "MallocXzoneDeferTiny";
  if (malloc_internal_security_policy)
  {
    v264 = *(v553 + 91);
    v265 = *(v553 + 90);
    v517 = _simple_getenv();
  }

  else
  {
    v517 = 0;
  }

  v266 = v553;
  *(v553 + 17) = v517;
  if (*(v266 + 17))
  {
    v267 = strtol(*(v553 + 17), 0, 10);
    v268 = v552;
    *(v552 + 149) = v267;
    if (*(v268 + 149) && *(v552 + 149) != 1)
    {
      v442 = *(v552 + 149);
      malloc_report(3, "MallocXzoneDeferTiny must be one of 0,1 - got %ld\n");
    }

    else
    {
      v613 = *(v552 + 149) == 1;
    }
  }

  v269 = v553;
  *(v553 + 89) = *(v553 + 36);
  *(v269 + 88) = "MallocXzoneDeferSmall";
  if (malloc_internal_security_policy)
  {
    v270 = *(v553 + 89);
    v271 = *(v553 + 88);
    v516 = _simple_getenv();
  }

  else
  {
    v516 = 0;
  }

  v272 = v553;
  *(v553 + 17) = v516;
  if (*(v272 + 17))
  {
    v273 = strtol(*(v553 + 17), 0, 10);
    v274 = v552;
    *(v552 + 148) = v273;
    if (*(v274 + 148) && *(v552 + 148) != 1)
    {
      v442 = *(v552 + 148);
      malloc_report(3, "MallocXzoneDeferSmall must be one of 0,1 - got %ld\n");
    }

    else
    {
      v612 = *(v552 + 148) == 1;
    }
  }

  v275 = v553;
  *(v553 + 87) = *(v553 + 36);
  *(v275 + 86) = "MallocXzoneDeferLarge";
  if (malloc_internal_security_policy)
  {
    v276 = *(v553 + 87);
    v277 = *(v553 + 86);
    v515 = _simple_getenv();
  }

  else
  {
    v515 = 0;
  }

  v278 = v553;
  *(v553 + 17) = v515;
  if (*(v278 + 17))
  {
    v279 = strtol(*(v553 + 17), 0, 10);
    v280 = v552;
    *(v552 + 147) = v279;
    if (*(v280 + 147) && *(v552 + 147) != 1)
    {
      v442 = *(v552 + 147);
      malloc_report(3, "MallocXzoneDeferLarge must be one of 0,1 - got %ld\n");
    }

    else
    {
      v611 = *(v552 + 147) == 1;
    }
  }

  if (v648 & 1) != 0 && (v647 & 1) == 0 || (malloc_space_efficient_enabled)
  {
    v613 = 0;
    v612 = 0;
    v611 = 0;
    v614 = 0;
  }

  if (v614 && !v611)
  {
    malloc_report(3, "Huge cache requires deferred reclamation for large.\n");
    v611 = 1;
  }

  if ((v613 || v612) && !v611)
  {
    malloc_report(3, "Deferred reclamation cannot be used for xzones without large\n");
    v611 = 1;
  }

  v514 = 0;
  v610 = 0;
  v608 = 0;
  v607 = 0;
  v606 = 0;
  v605 = 0;
  v604 = 0;
  v603 = 0;
  v609 = (v648 & 1) != 0;
  if ((v648 & 1) != 0 && (v647 & 1) == 0)
  {
    v603 = 0;
  }

  v281 = v553;
  *(v553 + 85) = *(v553 + 36);
  *(v281 + 84) = "MallocXzoneGuarded";
  if (malloc_internal_security_policy)
  {
    v282 = *(v553 + 85);
    v283 = *(v553 + 84);
    v513 = _simple_getenv();
  }

  else
  {
    v513 = 0;
  }

  v284 = v553;
  *(v553 + 17) = v513;
  if (*(v284 + 17))
  {
    v285 = strtol(*(v553 + 17), 0, 10);
    v286 = v552;
    *(v552 + 145) = v285;
    if (!*(v286 + 145) || *(v552 + 145) == 1)
    {
      v609 = *(v552 + 145) != 0;
    }
  }

  v287 = malloc_common_value_for_key_copy(*(v553 + 34), "xzone_guard_pages", v666, 0x100uLL);
  v288 = v553;
  *(v553 + 17) = v287;
  if (*(v288 + 17))
  {
    v289 = strtol(*(v553 + 17), 0, 10);
    v290 = v552;
    *(v552 + 144) = v289;
    if (*(v290 + 144) && *(v552 + 144) != 1)
    {
      v442 = "xzone_guard_pages";
      malloc_report(3, "%s must be 0 or 1.\n");
    }

    else
    {
      v609 = *(v552 + 144) != 0;
    }
  }

  if (v609)
  {
    v291 = v553;
    v608 = 1;
    *(v553 + 83) = *(v553 + 36);
    *(v291 + 82) = "MallocXzoneGuardedData";
    if (malloc_internal_security_policy)
    {
      v292 = *(v553 + 83);
      v293 = *(v553 + 82);
      v512 = _simple_getenv();
    }

    else
    {
      v512 = 0;
    }

    v294 = v553;
    *(v553 + 17) = v512;
    if (*(v294 + 17))
    {
      v295 = strtol(*(v553 + 17), 0, 10);
      v296 = v552;
      *(v552 + 143) = v295;
      if (!*(v296 + 143) || *(v552 + 143) == 1)
      {
        v608 = *(v552 + 143) != 0;
      }
    }

    v297 = v553;
    v607 = 8;
    *(v553 + 81) = *(v553 + 36);
    *(v297 + 80) = "MallocXzoneGuardTinyRun";
    if (malloc_internal_security_policy)
    {
      v298 = *(v553 + 81);
      v299 = *(v553 + 80);
      v511 = _simple_getenv();
    }

    else
    {
      v511 = 0;
    }

    v300 = v553;
    *(v553 + 17) = v511;
    if (*(v300 + 17))
    {
      v301 = strtol(*(v553 + 17), 0, 10);
      v302 = v552;
      *(v552 + 142) = v301;
      if (v302[142] >= 1)
      {
        v607 = *(v552 + 142);
      }
    }

    v303 = v553;
    v606 = 64;
    *(v553 + 79) = *(v553 + 36);
    *(v303 + 78) = "MallocXzoneGuardTinyDensity";
    if (malloc_internal_security_policy)
    {
      v304 = *(v553 + 79);
      v305 = *(v553 + 78);
      v510 = _simple_getenv();
    }

    else
    {
      v510 = 0;
    }

    v306 = v553;
    *(v553 + 17) = v510;
    if (*(v306 + 17))
    {
      v307 = strtol(*(v553 + 17), 0, 10);
      v308 = v552;
      *(v552 + 141) = v307;
      if (v308[141] >= 1)
      {
        v606 = *(v552 + 141);
      }
    }

    v309 = v553;
    v605 = 3;
    *(v553 + 77) = *(v553 + 36);
    *(v309 + 76) = "MallocXzoneGuardSmallRun";
    if (malloc_internal_security_policy)
    {
      v310 = *(v553 + 77);
      v311 = *(v553 + 76);
      v509 = _simple_getenv();
    }

    else
    {
      v509 = 0;
    }

    v312 = v553;
    *(v553 + 17) = v509;
    if (*(v312 + 17))
    {
      v313 = strtol(*(v553 + 17), 0, 10);
      v314 = v552;
      *(v552 + 140) = v313;
      if (v314[140] >= 1)
      {
        v605 = *(v552 + 140);
      }
    }

    v315 = v553;
    v604 = 32;
    *(v553 + 75) = *(v553 + 36);
    *(v315 + 74) = "MallocXzoneGuardSmallDensity";
    if (malloc_internal_security_policy)
    {
      v316 = *(v553 + 75);
      v317 = *(v553 + 74);
      v508 = _simple_getenv();
    }

    else
    {
      v508 = 0;
    }

    v318 = v553;
    *(v553 + 17) = v508;
    if (*(v318 + 17))
    {
      v319 = strtol(*(v553 + 17), 0, 10);
      v320 = v552;
      *(v552 + 139) = v319;
      if (v320[139] >= 1)
      {
        v604 = *(v552 + 139);
      }
    }
  }

  v321 = v553;
  *(v553 + 73) = *(v553 + 36);
  *(v321 + 72) = "MallocXzoneBatchSize";
  if (malloc_internal_security_policy)
  {
    v322 = *(v553 + 73);
    v323 = *(v553 + 72);
    v507 = _simple_getenv();
  }

  else
  {
    v507 = 0;
  }

  v324 = v553;
  *(v553 + 17) = v507;
  if (*(v324 + 17))
  {
    v325 = strtol(*(v553 + 17), 0, 10);
    v326 = v552;
    *(v552 + 138) = v325;
    if ((*(v326 + 138) & 0x8000000000000000) == 0 && *(v552 + 138) <= 63)
    {
      v603 = *(v552 + 138);
    }
  }

  v327 = v553;
  *(v553 + 71) = *(v553 + 36);
  *(v327 + 70) = "MallocSmallFreelist";
  if (malloc_internal_security_policy)
  {
    v328 = *(v553 + 71);
    v329 = *(v553 + 70);
    v506 = _simple_getenv();
  }

  else
  {
    v506 = 0;
  }

  v330 = v553;
  *(v553 + 17) = v506;
  if (*(v330 + 17))
  {
    v331 = strtol(*(v553 + 17), 0, 10);
    v332 = v552;
    *(v552 + 137) = v331;
    if (!*(v332 + 137) || *(v552 + 137) == 1)
    {
      v610 = *(v552 + 137) != 0;
    }
  }

  v333 = v553;
  v602 = 0;
  *(v552 + 135) = 4;
  *(v333 + 69) = *(v333 + 36);
  *(v333 + 68) = "MallocXzoneDataOnly";
  if (malloc_internal_security_policy)
  {
    v334 = *(v553 + 69);
    v335 = *(v553 + 68);
    v505 = _simple_getenv();
  }

  else
  {
    v505 = 0;
  }

  v336 = v553;
  *(v553 + 17) = v505;
  if (*(v336 + 17))
  {
    v337 = strtol(*(v553 + 17), 0, 10);
    v338 = v552;
    *(v552 + 134) = v337;
    if (*(v338 + 134) == 1)
    {
      *(v552 + 135) = 2;
    }

    else if (*(v552 + 134))
    {
      malloc_report(3, "MallocXzoneDataOnly must be 0 or 1.\n");
    }
  }

  v339 = v553;
  *(v553 + 67) = *(v553 + 36);
  *(v339 + 66) = "MallocXzonePerClusterSegmentGroups";
  if (malloc_internal_security_policy)
  {
    v340 = *(v553 + 67);
    v341 = *(v553 + 66);
    v504 = _simple_getenv();
  }

  else
  {
    v504 = 0;
  }

  v342 = v553;
  *(v553 + 17) = v504;
  if (*(v342 + 17))
  {
    v343 = strtol(*(v553 + 17), 0, 10);
    v344 = v552;
    *(v552 + 133) = v343;
    if (*(v344 + 133) && *(v552 + 133) != 1)
    {
      malloc_report(3, "MallocXzonePerClusterSegmentGroups must be 0 or 1.\n");
    }

    else
    {
      v602 = *(v552 + 133) != 0;
    }
  }

  v345 = v553;
  *(v552 + 132) = 2;
  *(v345 + 65) = *(v345 + 36);
  *(v345 + 64) = "MallocXzoneAllocationFronts";
  if (malloc_internal_security_policy)
  {
    v346 = *(v553 + 65);
    v347 = *(v553 + 64);
    v503 = _simple_getenv();
  }

  else
  {
    v503 = 0;
  }

  v348 = v553;
  *(v553 + 17) = v503;
  if (*(v348 + 17))
  {
    v349 = strtol(*(v553 + 17), 0, 10);
    v350 = v552;
    *(v552 + 131) = v349;
    if (*(v350 + 131) == 1 || *(v552 + 131) == 2)
    {
      *(v552 + 132) = *(v552 + 131);
    }

    else
    {
      malloc_report(3, "Unsupported MallocXzoneAllocationFronts\n");
    }
  }

  v351 = v553;
  v600 = 0;
  v599 = 0;
  *(v553 + 63) = *(v553 + 36);
  *(v351 + 62) = "MallocXzoneListConfig";
  if (malloc_internal_security_policy)
  {
    v352 = *(v553 + 63);
    v353 = *(v553 + 62);
    v502 = _simple_getenv();
  }

  else
  {
    v502 = 0;
  }

  v354 = v553;
  *(v553 + 17) = v502;
  if (*(v354 + 17))
  {
    v355 = strtol(*(v553 + 17), 0, 10);
    v356 = v552;
    *(v552 + 129) = v355;
    if ((*(v356 + 129) & 0x8000000000000000) == 0 && *(v552 + 129) <= 2)
    {
      v599 = *(v552 + 129);
    }
  }

  v357 = v553;
  *(v553 + 61) = *(v553 + 36);
  *(v357 + 60) = "MallocXzoneMaxListConfig";
  if (malloc_internal_security_policy)
  {
    v358 = *(v553 + 61);
    v359 = *(v553 + 60);
    v501 = _simple_getenv();
  }

  else
  {
    v501 = 0;
  }

  v360 = v553;
  *(v553 + 17) = v501;
  if (*(v360 + 17))
  {
    v361 = strtol(*(v553 + 17), 0, 10);
    v362 = v552;
    *(v552 + 128) = v361;
    if ((*(v362 + 128) & 0x8000000000000000) == 0 && *(v552 + 128) <= 2 && *(v552 + 128) < v643)
    {
      v600 = *(v552 + 128);
    }
  }

  v363 = v553;
  v598 = 1;
  *(v553 + 59) = *(v553 + 36);
  *(v363 + 58) = "MallocXzoneSegmentDeallocate";
  if (malloc_internal_security_policy)
  {
    v364 = *(v553 + 59);
    v365 = *(v553 + 58);
    v500 = _simple_getenv();
  }

  else
  {
    v500 = 0;
  }

  v366 = v553;
  *(v553 + 17) = v500;
  if (*(v366 + 17))
  {
    v367 = strtol(*(v553 + 17), 0, 10);
    v368 = v552;
    *(v552 + 126) = v367;
    if (!*(v368 + 126) || *(v552 + 126) == 1)
    {
      v598 = *(v552 + 126) != 0;
    }
  }

  if ((v648 & 1) != 0 && (v647 & 1) == 0)
  {
    v602 = 0;
  }

  *(v552 + 125) = *(v552 + 132) + 2;
  if (v602)
  {
    v499 = ncpuclusters;
  }

  else
  {
    v499 = 1;
  }

  v369 = v552;
  *(v552 + 124) = v499;
  *(v369 + 123) = *(v369 + 135);
  if (*(v369 + 135) >= 3uLL && *(v552 + 132) >= 2uLL)
  {
    *(v552 + 123) = *(v552 + 132) + *(v552 + 123) - 1;
  }

  v370 = v552;
  v371 = v553;
  *(v552 + 122) = *(v552 + 123) * *(v552 + 124);
  v370[121] = 5;
  v370[120] = 576;
  v370[119] = v370[120];
  v370[120] += 96 * *(v371 + 4);
  v370[118] = v370[120];
  v370[117] = *(v371 + 4) * v622;
  v370[120] += 32 * v370[117];
  v370[116] = v370[120];
  v370[120] += 16 * v370[117];
  v370[115] = v370[120];
  v370[120] += 8 * *(v371 + 6);
  v370[114] = v370[120];
  v370[120] += *(v371 + 6);
  v370[113] = v370[120];
  v370[120] += *(v371 + 6);
  v370[112] = v370[120];
  v370[120] += 16 * *(v371 + 4);
  v370[111] = v370[120];
  v370[120] += 80 * v370[125];
  v370[110] = v370[120];
  v370[120] += 528 * v370[122];
  v370[109] = v370[120];
  v370[120] += v370[121] << 6;
  v370[108] = v370[120];
  v370[120] += 0x10000;
  v370[107] = v370[120];
  v597 = 1;
  v370[105] = 0;
  v596 = 1;
  plat = mvm_allocate_plat(0, v370[107], 0, v597, 0x2000, 1, v370[105]);
  v373 = v552;
  *(v552 + 104) = plat;
  if (!*(v373 + 104))
  {
    v442 = v4;
    v443 = v5;
    qword_D8128 = "BUG IN LIBMALLOC: Failed to allocate xzm zone";
    __break(1u);
    JUMPOUT(0x5F068);
  }

  v374 = v552;
  *(v552 + 103) = *(v552 + 104);
  v374[102] = v374[103] + v374[119];
  v374[101] = v374[103] + v374[118];
  v374[100] = v374[103] + v374[116];
  v595 = 1;
  v497 = v374[103];
  v496 = 576;
  v495 = v576;
  bzero(v576, 0x240uLL);
  v375 = v495;
  v376 = v552;
  v377 = v553;
  *(v552 + 75) = *(v552 + 107);
  *(v375 + 392) = *(v377 + 248);
  v577 = v577 & 0xFD | (2 * v639);
  v577 = v577 & 0xFB | (4 * v612);
  v577 = v577 & 0xF7 | (8 * v613);
  v577 = v577 & 0xEF | (16 * v611);
  v577 = v577 & 0xDF | (32 * v598);
  v578 = v376[125];
  v579 = v376[135];
  v580 = v376[123];
  v581 = v376[122];
  v582 = v376[121];
  v583 = v376[132];
  v378 = mfm_zone_address();
  v379 = v495;
  v380 = v496;
  v381 = v552;
  v382 = v553;
  v383 = v378;
  v384 = v497;
  *(v552 + 79) = v383;
  v584 = v603;
  v585 = *(v382 + 6);
  v586 = *(v382 + 11);
  v587 = v629;
  v381[81] = v381[103] + v381[115];
  v381[82] = v381[103] + v381[114];
  v381[83] = v381[103] + v381[113];
  v381[84] = v381[103] + v381[112];
  v381[85] = v381[103] + v381[111];
  v381[86] = v381[103] + v381[110];
  v381[87] = v381[103] + v381[109];
  v381[88] = v381[103] + v381[108];
  v588 = v595;
  v589 = v609;
  v590 = v608;
  v591 = v607;
  v592 = v606;
  v593 = v605;
  v594 = v604;
  memcpy(v384, v379, v380);
  v385 = *(v552 + 103);
  v386 = *(v552 + 107);
  v387 = *(v553 + 4);
  v388 = *(v552 + 102);
  v389 = *(v552 + 101);
  v390 = *(v552 + 169);
  v391 = *(v552 + 173);
  v392 = *(v552 + 172);
  v393 = *(v552 + 100);
  v498 = v441;
  _xzm_initialize_const_zone_data(v385, v386, v595, v387, v622, v388, v389, 0, v631, v630, v643, v628, v627, v624, v626, v625, v623, v390, v391, v392, v652, v610, v600, v393);
  *(*(v552 + 103) + 368) = *v553;
  if ((v613 || v612 || v611 || v614) && !xzm_reclaim_init(*(v552 + 103)))
  {
    v394 = v552;
    v614 = 0;
    v613 = 0;
    *(*(v552 + 103) + 409) &= ~8u;
    v612 = 0;
    *(*(v394 + 103) + 409) &= ~4u;
    v611 = 0;
    *(*(v394 + 103) + 409) &= ~0x10u;
  }

  v395 = v552;
  *(*(v552 + 103) + 249) = v634;
  *(*(v395 + 103) + 252) = v619;
  *(*(v395 + 103) + 256) = v618;
  *(*(v395 + 103) + 264) = *(v395 + 163);
  if (v634)
  {
    inited = pthread_key_init_np();
    if (inited)
    {
      v396 = v552;
      *(v552 + 25) = inited;
      v397 = *(v396 + 25);
      v442 = v391;
      v443 = v392;
      qword_D8128 = "BUG IN LIBMALLOC: pthread_key_init_np failed";
      qword_D8158 = v397;
      __break(1u);
      JUMPOUT(0x5F4BCLL);
    }
  }

  for (*(v552 + 24) = 0; *(v552 + 24) < *(v553 + 6); ++*(v552 + 24))
  {
    *(*(*(v552 + 103) + 432) + 8 * *(v552 + 24)) = _xzm_bin_sizes[*(v552 + 24)];
  }

  for (*(v552 + 23) = 0; *(v552 + 23) < *(v553 + 6); ++*(v552 + 23))
  {
    *(*(*(v552 + 103) + 440) + *(v552 + 23)) = *(v553 + 7);
  }

  for (*(v552 + 22) = 0; *(v552 + 22) < *(v553 + 4); ++*(v552 + 22))
  {
    v398 = v553;
    v399 = v552;
    *(v552 + 21) = *(*(v552 + 103) + 456) + 16 * *(v552 + 22);
    *(v398 + 155) = *(v399 + 21) + 8;
    v400 = *(v398 + 155);
    v659 = 0;
    *v400 = 0;
  }

  v401 = v552;
  *(v552 + 20) = 0;
  *(v401 + 19) = 0;
  while (*(v552 + 19) <= 2uLL)
  {
    v573 = *(v552 + 19);
    if (v573 == 2)
    {
      v494 = *(v552 + 132);
    }

    else
    {
      v494 = 1;
    }

    v402 = v552;
    *(v552 + 17) = v494;
    *(v402 + 16) = 0;
    while (*(v552 + 16) < *(v552 + 17))
    {
      v403 = v552;
      v404 = v553;
      *(v552 + 15) = *(*(v552 + 103) + 464) + 80 * *(v552 + 20);
      **(v403 + 15) = v573;
      *(*(v403 + 15) + 1) = *(v403 + 16);
      *(*(v403 + 15) + 8) = *(v403 + 103);
      *(v404 + 153) = *(v403 + 15) + 16;
      v405 = *(v404 + 153);
      v658 = 0;
      *v405 = 0;
      ++*(v403 + 20);
      ++*(v552 + 16);
    }

    ++*(v552 + 19);
  }

  if (v635)
  {
    xzm_main_malloc_zone_init_range_groups(*(v552 + 103));
  }

  if ((*(*(v552 + 103) + 409) & 1) == 0)
  {
    v406 = v552;
    *(v552 + 132) = 1;
    *(*(v406 + 103) + 415) = 1;
  }

  for (*(v552 + 14) = 0; *(v552 + 14) < *(v552 + 122); ++*(v552 + 14))
  {
    v407 = v552;
    *(v552 + 13) = *(*(v552 + 103) + 472) + 528 * *(v552 + 14);
    v407[12] = v407[14] % v407[123];
    if (v407[12] > 2uLL)
    {
      v493 = 3;
    }

    else
    {
      v493 = v572;
    }

    v408 = v552;
    v409 = v553;
    **(v552 + 13) = v493;
    *(v409 + 151) = *(v408 + 13) + 4;
    v410 = *(v409 + 151);
    v657 = 0;
    *v410 = 0;
    *(v409 + 149) = *(v408 + 13) + 8;
    v411 = *(v409 + 149);
    v656 = 0;
    *v411 = 0;
    v660 = **(v408 + 13);
    v492 = v660;
    if (v660 < 2u)
    {
      v661 = 1;
    }

    else
    {
      if ((v492 - 2) >= 2)
      {
        v412 = v553;
        *(v553 + 156) = v660;
        v413 = *(v412 + 156);
        v442 = v391;
        v443 = v392;
        qword_D8128 = "BUG IN LIBMALLOC: unknown segment group id";
        qword_D8158 = v413;
        __break(1u);
        JUMPOUT(0x5F8E4);
      }

      v661 = 0;
    }

    if (v661 == 1)
    {
      *(*(v552 + 13) + 16) = *(*(v552 + 103) + 464);
    }

    else if (**(v552 + 13) == 2)
    {
      if (!*(*(v552 + 13) + 16))
      {
        v414 = _xzm_random_front_index(v669, *(v552 + 132), 0);
        v415 = v552;
        v571 = v414;
        *(v552 + 10) = v414 + 2;
        *(v415[13] + 16) = *(v415[103] + 464) + 80 * v415[10];
      }
    }

    else
    {
      if (**(v552 + 13) != 3)
      {
        v442 = v391;
        v443 = v392;
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion sg->xzsg_id == XZM_SEGMENT_GROUP_POINTER_XZONES failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:7879)";
        __break(1u);
        JUMPOUT(0x5F9C8);
      }

      v416 = v552;
      *(v552 + 9) = *(v552 + 12) - 3;
      v416[8] = v416[9] + 2;
      if (v416[8] >= *(v416[103] + 410))
      {
        v442 = v391;
        v443 = v392;
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion rg_idx < main->xzmz_range_group_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:7883)";
        __break(1u);
        JUMPOUT(0x5FA20);
      }

      *(*(v552 + 13) + 16) = *(*(v552 + 103) + 464) + 80 * *(v552 + 8);
    }

    v417 = v552;
    *(*(v552 + 13) + 1) = *(*(*(v552 + 13) + 16) + 1);
    *(v417[13] + 24) = v417[103];
    if (v417[14] == 1)
    {
      v418 = v552;
      v419 = *(v552 + 13);
      *(v552 + 3) = 0u;
      memset(v568, 0, sizeof(v568));
      v569 = v614;
      v570 = v617 >> 14;
      v419[32] = *(v418 + 3);
      v419[31] = 0u;
      v419[30] = 0u;
      v419[29] = 0u;
      v420 = v552;
      *(*(v552 + 13) + 464) = 0;
      *(*(v420 + 13) + 472) = *(v420 + 13) + 464;
      v421 = v552;
      *(*(v552 + 13) + 504) = *(*(v552 + 13) + 488);
      *(*(v421 + 13) + 496) = *(*(v421 + 13) + 480);
      *(*(v421 + 13) + 488) = 7901;
      *(*(v421 + 13) + 480) = "/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c";
      v422 = v553;
      *(v553 + 147) = *(v552 + 13) + 520;
      v423 = *(v422 + 147);
      v655 = 0;
      *v423 = 0;
    }

    for (i = 0; i <= 0x1A; ++i)
    {
      *(*(v552 + 13) + 16 * i + 40) = _xzm_span_queue_slice_counts[i];
    }
  }

  v566 = (*(*(v552 + 103) + 480) + 256);
  v488 = 16;
  v565 = 16;
  v487 = 0x4000;
  v564 = 0x4000;
  v490 = 1;
  v489 = 0;
  xzm_metapool_init(v566, 4u, 1u, 0x4000u, 0x10u, 0x10u, 0);
  v563 = *(*(v552 + 103) + 480);
  v491 = 0;
  xzm_metapool_init(v563, 0, v490, 0x80000u, v487, v487, v566);
  v562 = (*(*(v552 + 103) + 480) + 64);
  xzm_metapool_init(v562, v490, v490, 0x40000u, 0x10000u, 0x10000u, v566);
  v561 = (*(*(v552 + 103) + 480) + 128);
  xzm_metapool_init(v561, 2u, v490, v487, v488, v488, v489);
  v424 = v491;
  v560 = (*(*(v552 + 103) + 480) + 192);
  v559 = v490 | (12 * *(v553 + 7));
  *(*(v552 + 103) + 212) = v559;
  v558 = 24 * v559 + 40;
  xzm_metapool_init(v560, 3u, 0xBu, 0x8000u, v424, 24 * v559 + 40, v566);
  v557 = *(*(v552 + 103) + 411) == 2;
  _xzm_initialize_xzone_data(*(v552 + 103), v599, (*(v552 + 103) + 532), v669, v557);
  v425 = v553;
  *(v553 + 39) = *(v553 + 36);
  *(v425 + 38) = "MallocReportConfig";
  v426 = *(v425 + 39);
  v427 = *(v425 + 38);
  v428 = _simple_getenv();
  v429 = v553;
  *(v553 + 17) = v428;
  if (*(v429 + 17))
  {
    v556 = 0;
    v555 = 4;
    v554 = sysctlbyname("vm.reclaim.enabled", &v556, &v555, 0, 0);
    v474 = v557;
    v475 = v601;
    v476 = v609;
    v477 = (v652 >> 5) & 1;
    v478 = v603;
    v479 = v613;
    v480 = v612;
    v481 = v611;
    v482 = v614;
    v483 = v617;
    v484 = v616;
    v485 = v615;
    v486 = 1;
    if (!v554)
    {
      v486 = v556 == 0;
    }

    v430 = "DISABLED";
    if (!v486)
    {
      v430 = "ENABLED";
    }

    v472 = v430;
    v473 = v610;
    if (malloc_internal_security_policy)
    {
      v471 = *(*(*(v552 + 103) + 464) + 24);
    }

    else
    {
      v471 = 0;
    }

    v469 = v471;
    v470 = *(*(*(v552 + 103) + 464) + 32);
    if (malloc_internal_security_policy)
    {
      v468 = *(*(*(v552 + 103) + 464) + 184);
    }

    else
    {
      v468 = 0;
    }

    v466 = v468;
    v467 = *(*(*(v552 + 103) + 464) + 192);
    if ((malloc_internal_security_policy & 1) != 0 && *(*(v552 + 103) + 415) > 1u)
    {
      v465 = *(*(*(v552 + 103) + 464) + 264);
    }

    else
    {
      v465 = 0;
    }

    v464 = v465;
    if (*(*(v552 + 103) + 415) <= 1u)
    {
      v463 = 0;
    }

    else
    {
      v463 = *(*(*(v552 + 103) + 464) + 272);
    }

    v456 = v463;
    v431 = "enabled";
    if (!*(*(v552 + 103) + 416))
    {
      v431 = "disabled";
    }

    v457 = v431;
    v458 = v598;
    v459 = v637;
    v460 = v638;
    v461 = *(v553 + 1);
    v665 = v631;
    v462 = v631;
    if (v631)
    {
      if (v462 == 1)
      {
        *(v553 + 164) = "CLUSTER";
      }

      else
      {
        if (v462 != 2)
        {
          v442 = v391;
          v443 = v392;
          qword_D8128 = "BUG IN LIBMALLOC: unexpected slot config";
          __break(1u);
          JUMPOUT(0x600D4);
        }

        *(v553 + 164) = "CPU";
      }
    }

    else
    {
      *(v553 + 164) = "SINGLE";
    }

    v454 = *(v553 + 164);
    v664 = v643;
    v455 = v643;
    if (v643)
    {
      if (v455 == 1)
      {
        *(v553 + 162) = "CLUSTER";
      }

      else
      {
        if (v455 != 2)
        {
          v442 = v391;
          v443 = v392;
          qword_D8128 = "BUG IN LIBMALLOC: unexpected slot config";
          __break(1u);
          JUMPOUT(0x601A0);
        }

        *(v553 + 162) = "CPU";
      }
    }

    else
    {
      *(v553 + 162) = "SINGLE";
    }

    v450 = *(v553 + 162);
    v451 = v629;
    v452 = v630;
    v663 = v599;
    v453 = v599;
    if (v599)
    {
      if (v453 == 1)
      {
        *(v553 + 160) = "CLUSTER";
      }

      else
      {
        if (v453 != 2)
        {
          v442 = v391;
          v443 = v392;
          qword_D8128 = "BUG IN LIBMALLOC: unexpected slot config";
          __break(1u);
          JUMPOUT(0x6027CLL);
        }

        *(v553 + 160) = "CPU";
      }
    }

    else
    {
      *(v553 + 160) = "SINGLE";
    }

    v448 = *(v553 + 160);
    v662 = v600;
    v449 = v600;
    if (v600)
    {
      if (v449 == 1)
      {
        *(v553 + 158) = "CLUSTER";
      }

      else
      {
        if (v449 != 2)
        {
          v442 = v391;
          v443 = v392;
          qword_D8128 = "BUG IN LIBMALLOC: unexpected slot config";
          __break(1u);
          JUMPOUT(0x60348);
        }

        *(v553 + 158) = "CPU";
      }
    }

    else
    {
      *(v553 + 158) = "SINGLE";
    }

    v432 = *(v553 + 158);
    v433 = *(v552 + 171) / 0xF4240uLL;
    v434 = *(v552 + 168) / 0xF4240uLL;
    v435 = *(v552 + 172);
    if (v634)
    {
      v436 = "enabled";
    }

    else
    {
      v436 = "disabled";
    }

    v437 = *(v552 + 160) / 0xF4240uLL;
    v438 = *(v553 + 11);
    v447 = v440;
    v442 = v438;
    v441[9] = v437;
    v441[8] = v618;
    v441[7] = v619;
    v441[6] = v436;
    v441[5] = v435;
    v441[4] = v434;
    v441[3] = v433;
    v441[2] = v623;
    v441[1] = v625;
    v441[0] = v623;
    v440[35] = v626;
    v440[34] = v624;
    v440[33] = v627;
    v440[32] = v624;
    v440[31] = v628;
    v440[30] = v432;
    v440[29] = v448;
    v440[28] = v452;
    v440[27] = v451;
    v440[26] = v450;
    v440[25] = v454;
    v440[24] = v461;
    v440[23] = v460;
    v440[22] = v459;
    v440[21] = v458;
    v440[20] = v457;
    v440[19] = v456;
    v440[18] = v464;
    v440[17] = v467;
    v440[16] = v466;
    v440[15] = v470;
    v440[14] = v469;
    v440[13] = v473;
    v440[12] = v472;
    v440[11] = v485;
    v440[10] = v484;
    v440[9] = v483;
    v440[8] = v482;
    v440[7] = v481;
    v440[6] = v480;
    v440[5] = v479;
    v440[4] = v478;
    v440[3] = v477;
    v440[2] = v476;
    v440[1] = v475;
    v440[0] = v474;
    malloc_report(6, "XZM Config:\n\tData Only: %d\n\tAllocation Fronts: %d\n\tGuards Enabled: %d\n\tScribble: %d\n\tTiny/Small Batch Max: %d\n\tDefer Tiny: %d\n\tDefer Small: %d\n\tDefer Large: %d\n\tHuge Cache Size: %d\n\tHuge Cache Max Entry Bytes: %u\n\tReclaim Buffer Count: %u/%u (%s)\n\tSmall Freelist: %u\n\tData Range: 0x%llx/%lu\n\tPointer Range 1: 0x%llx/%lu\n\tPointer Range 2: 0x%llx/%lu\n\tEarly Allocator: %s\n\tSegment Deallocate: %u\n\tMTE (enabled/data/max size): %d/%d/%llu\n\tInitial Slot Config: %s/%s (Chunk, Size Thresholds: %u, %u)\n\tInitial List Config: %s/%s\n\tList Upgrade Thresholds: %d/%d, %d/%d\n\tSlot Upgrade Thresholds: %d/%d, %d/%d\n\tTiny Thrash Threshold: %llu ms\n\tSmall Thrash Threshold: %llu ms, %llu bytes\n\tThread Caching: %s (%u allocs, %u contentions, %llu ms)\n\tPointer Bucket Count: %lu\n");
  }

  v445 = *(v552 + 103);
  v446 = *(v553 + 22);
  return v445;
}

void *_xzm_initialize_const_zone_data(void *a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, char a9, unsigned int a10, char a11, unsigned int a12, unsigned int a13, int a14, unsigned int a15, int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, char a23, uint64_t a24)
{
  v104 = a1;
  v103 = a2;
  v102 = a3;
  v101 = a4;
  v100 = a5;
  v99 = a6;
  v98 = a7;
  v97 = a8;
  v96 = a22;
  if (a1 + a2 < a7 + 32 * a4 * a5)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)zone + size >= (uintptr_t)slots + sizeof(struct xzm_xzone_allocation_slot_s) * xzone_count * slot_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:6226)";
    __break(1u);
    JUMPOUT(0x606F4);
  }

  if (v98 < v99 + 96 * v101)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slots >= (uintptr_t)xzones + sizeof(struct xzm_xzone_s) * xzone_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:6228)";
    __break(1u);
    JUMPOUT(0x60740);
  }

  __dst = v104;
  __src[0] = 0;
  __src[1] = 0;
  v93 = 0;
  if (xzm_malloc_zone_size)
  {
    v93 = xzm_malloc_zone_size;
  }

  v91 = 0;
  if (v93)
  {
    v91 = v93;
  }

  __src[2] = v91;
  v90 = 0;
  if (xzm_malloc_zone_malloc)
  {
    v90 = xzm_malloc_zone_malloc;
  }

  v89 = 0;
  if (v90)
  {
    v89 = v90;
  }

  __src[3] = v89;
  v88 = 0;
  if (xzm_malloc_zone_calloc)
  {
    v88 = xzm_malloc_zone_calloc;
  }

  v87 = 0;
  if (v88)
  {
    v87 = v88;
  }

  __src[4] = v87;
  v86 = 0;
  if (xzm_malloc_zone_valloc)
  {
    v86 = xzm_malloc_zone_valloc;
  }

  v85 = 0;
  if (v86)
  {
    v85 = v86;
  }

  __src[5] = v85;
  v84 = 0;
  if (xzm_malloc_zone_free)
  {
    v84 = xzm_malloc_zone_free;
  }

  v83 = 0;
  if (v84)
  {
    v83 = v84;
  }

  __src[6] = v83;
  v82 = 0;
  if (xzm_malloc_zone_realloc)
  {
    v82 = xzm_malloc_zone_realloc;
  }

  v81 = 0;
  if (v82)
  {
    v81 = v82;
  }

  __src[7] = v81;
  v80 = 0;
  if (xzm_malloc_zone_destroy)
  {
    v80 = xzm_malloc_zone_destroy;
  }

  v79 = 0;
  if (v80)
  {
    v79 = v80;
  }

  __src[8] = v79;
  __src[9] = 0;
  __src[10] = malloc_zone_batch_malloc_fallback;
  __src[11] = malloc_zone_batch_free_fallback;
  __src[12] = xzm_malloc_zone_introspect;
  LODWORD(__src[13]) = 16;
  v78 = 0;
  if (xzm_malloc_zone_memalign)
  {
    v78 = xzm_malloc_zone_memalign;
  }

  v77 = 0;
  if (v78)
  {
    v77 = v78;
  }

  __src[14] = v77;
  v76 = 0;
  if (xzm_malloc_zone_free_definite_size)
  {
    v76 = xzm_malloc_zone_free_definite_size;
  }

  v75 = 0;
  if (v76)
  {
    v75 = v76;
  }

  __src[15] = v75;
  v74 = 0;
  if (malloc_zone_pressure_relief_fallback)
  {
    v74 = malloc_zone_pressure_relief_fallback;
  }

  v73 = 0;
  if (v74)
  {
    v73 = v74;
  }

  __src[16] = v73;
  v72 = 0;
  if (xzm_malloc_zone_claimed_address)
  {
    v72 = xzm_malloc_zone_claimed_address;
  }

  v71 = 0;
  if (v72)
  {
    v71 = v72;
  }

  __src[17] = v71;
  v70 = 0;
  if (xzm_malloc_zone_try_free_default)
  {
    v70 = xzm_malloc_zone_try_free_default;
  }

  v69 = 0;
  if (v70)
  {
    v69 = v70;
  }

  __src[18] = v69;
  v68 = 0;
  if (xzm_malloc_zone_malloc_with_options)
  {
    v68 = xzm_malloc_zone_malloc_with_options;
  }

  v67 = 0;
  if (v68)
  {
    v67 = v68;
  }

  __src[19] = v67;
  v66 = 0;
  if (xzm_malloc_zone_malloc_type_malloc)
  {
    v66 = xzm_malloc_zone_malloc_type_malloc;
  }

  v65 = 0;
  if (v66)
  {
    v65 = v66;
  }

  __src[20] = v65;
  v64 = 0;
  if (xzm_malloc_zone_malloc_type_calloc)
  {
    v64 = xzm_malloc_zone_malloc_type_calloc;
  }

  v63 = 0;
  if (v64)
  {
    v63 = v64;
  }

  __src[21] = v63;
  v62 = 0;
  if (xzm_malloc_zone_malloc_type_realloc)
  {
    v62 = xzm_malloc_zone_malloc_type_realloc;
  }

  v61 = 0;
  if (v62)
  {
    v61 = v62;
  }

  __src[22] = v61;
  v60 = 0;
  if (xzm_malloc_zone_malloc_type_memalign)
  {
    v60 = xzm_malloc_zone_malloc_type_memalign;
  }

  v59 = 0;
  if (v60)
  {
    v59 = v60;
  }

  __src[23] = v59;
  v58 = 0;
  if (xzm_malloc_zone_malloc_type_malloc_with_options)
  {
    v58 = xzm_malloc_zone_malloc_type_malloc_with_options;
  }

  v57 = 0;
  if (v58)
  {
    v57 = v58;
  }

  __src[24] = v57;
  __src[25] = v103;
  LOWORD(__src[26]) = v102;
  BYTE2(__src[26]) = v101;
  *(&__src[26] + 3) = v100;
  __src[27] = v99;
  __src[28] = v98;
  __src[29] = a24;
  __src[30] = v97;
  LOWORD(__src[31]) = __src[31] & 0xC0 | a23 & 3 | (4 * (a9 & 3)) & 0xCF | (16 * (a11 & 3));
  BYTE2(__src[31]) = v96 & 1;
  HIDWORD(__src[31]) = 0;
  LODWORD(__src[32]) = 0;
  __src[33] = 0;
  __src[34] = __PAIR64__(a13, a12);
  v56 = &__src[35];
  do
  {
    *v56 = 0;
  }

  while (++v56 - (&__src[35] + 4));
  HIDWORD(__src[35]) = a14;
  __src[36] = __PAIR64__(a15, a10);
  LODWORD(__src[37]) = a16;
  v55 = &__src[37] + 1;
  do
  {
    *v55 = 0;
  }

  while (++v55 - &__src[38]);
  LODWORD(__src[38]) = a17;
  __src[39] = a18;
  __src[40] = 0;
  __src[41] = a19;
  __src[42] = a20;
  __src[43] = 0;
  __src[44] = 0;
  __src[45] = a21;
  __src[47] = 0;
  __src[46] = 0;
  result = memcpy(__dst, __src, 0x180uLL);
  v94 = 0;
  if ((a21 & 0x20) != 0 || (a21 & 0x80) != 0)
  {
    v94 = 1;
  }

  if (v94)
  {
    v54 = 0;
    if (xzm_malloc_zone_malloc_slow)
    {
      v54 = xzm_malloc_zone_malloc_slow;
    }

    v53 = 0;
    if (v54)
    {
      v53 = v54;
    }

    v104[3] = v53;
    v52 = 0;
    if (xzm_malloc_zone_calloc_slow)
    {
      v52 = xzm_malloc_zone_calloc_slow;
    }

    v51 = 0;
    if (v52)
    {
      v51 = v52;
    }

    v104[4] = v51;
    v50 = 0;
    if (xzm_malloc_zone_valloc_slow)
    {
      v50 = xzm_malloc_zone_valloc_slow;
    }

    v49 = 0;
    if (v50)
    {
      v49 = v50;
    }

    v104[5] = v49;
    v48 = 0;
    if (xzm_malloc_zone_free_slow)
    {
      v48 = xzm_malloc_zone_free_slow;
    }

    v47 = 0;
    if (v48)
    {
      v47 = v48;
    }

    v104[6] = v47;
    v46 = 0;
    if (xzm_malloc_zone_realloc_slow)
    {
      v46 = xzm_malloc_zone_realloc_slow;
    }

    v45 = 0;
    if (v46)
    {
      v45 = v46;
    }

    v104[7] = v45;
    v44 = 0;
    if (xzm_malloc_zone_memalign_slow)
    {
      v44 = xzm_malloc_zone_memalign_slow;
    }

    v43 = 0;
    if (v44)
    {
      v43 = v44;
    }

    v104[14] = v43;
    v42 = 0;
    if (xzm_malloc_zone_free_definite_size_slow)
    {
      v42 = xzm_malloc_zone_free_definite_size_slow;
    }

    v41 = 0;
    if (v42)
    {
      v41 = v42;
    }

    v104[15] = v41;
    v40 = 0;
    if (xzm_malloc_zone_try_free_default_slow)
    {
      v40 = xzm_malloc_zone_try_free_default_slow;
    }

    v39 = 0;
    if (v40)
    {
      v39 = v40;
    }

    v104[18] = v39;
    v38 = 0;
    if (xzm_malloc_zone_malloc_with_options_slow)
    {
      v38 = xzm_malloc_zone_malloc_with_options_slow;
    }

    v37 = 0;
    if (v38)
    {
      v37 = v38;
    }

    v104[19] = v37;
    v36 = 0;
    if (xzm_malloc_zone_malloc_type_malloc_slow)
    {
      v36 = xzm_malloc_zone_malloc_type_malloc_slow;
    }

    v35 = 0;
    if (v36)
    {
      v35 = v36;
    }

    v104[20] = v35;
    v34 = 0;
    if (xzm_malloc_zone_malloc_type_calloc_slow)
    {
      v34 = xzm_malloc_zone_malloc_type_calloc_slow;
    }

    v33 = 0;
    if (v34)
    {
      v33 = v34;
    }

    v104[21] = v33;
    v32 = 0;
    if (xzm_malloc_zone_malloc_type_realloc_slow)
    {
      v32 = xzm_malloc_zone_malloc_type_realloc_slow;
    }

    v31 = 0;
    if (v32)
    {
      v31 = v32;
    }

    v104[22] = v31;
    v30 = 0;
    if (xzm_malloc_zone_malloc_type_memalign_slow)
    {
      v30 = xzm_malloc_zone_malloc_type_memalign_slow;
    }

    v29 = 0;
    if (v30)
    {
      v29 = v30;
    }

    v104[23] = v29;
    result = xzm_malloc_zone_malloc_type_malloc_with_options_slow;
    v28 = 0;
    if (xzm_malloc_zone_malloc_type_malloc_with_options_slow)
    {
      v28 = xzm_malloc_zone_malloc_type_malloc_with_options_slow;
    }

    v27 = 0;
    if (v28)
    {
      v27 = v28;
    }

    v104[24] = v27;
  }

  return result;
}

void _xzm_xzone_thread_cache_destructor(void *a1)
{
  v5 = a1[2];
  a1[4] = atomic_fetch_add_explicit((v5 + 544), 1uLL, memory_order_relaxed) + 1;
  for (i = 1; i < *(v5 + 212); ++i)
  {
    if (LOWORD(a1[3 * i + 7]) <= 0x400u)
    {
      _xzm_xzone_thread_cache_detach(v5, *(v5 + 216) + 96 * i, &a1[3 * i + 5]);
    }
  }

  v1 = 0;
  atomic_compare_exchange_strong_explicit((v5 + 552), &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    os_unfair_lock_lock_with_options();
  }

  if (*a1)
  {
    *(*a1 + 8) = a1[1];
  }

  *a1[1] = *a1;
  *a1 = -1;
  a1[1] = -1;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v3 = v2;
  atomic_compare_exchange_strong_explicit((v5 + 552), &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != v2)
  {
    os_unfair_lock_unlock((v5 + 552));
  }

  xzm_metapool_free(*(v5 + 480) + 192, a1);
}

uint64_t _xzm_random_front_index(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a2 == 1)
  {
    return 0;
  }

  else
  {
    if (a2 != 2)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion allocation_front_count == 2 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:6114)";
      __break(1u);
      JUMPOUT(0x62850);
    }

    if (a3 >> 3 >= 0x20uLL)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion byte < XZM_FRONT_RANDOM_SIZE failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:6119)";
      __break(1u);
      JUMPOUT(0x628A4);
    }

    return (*(a1 + (a3 >> 3)) >> (a3 & 7)) & 1;
  }
}

void _xzm_initialize_xzone_data(uint64_t a1, char a2, _BYTE *a3, uint64_t a4, char a5)
{
  v38 = a1;
  v37 = a2;
  v36 = a3;
  v35 = a4;
  v34 = a5;
  v45 = a1;
  if (*(a1 + 240))
  {
    v11 = *(a1 + 240);
  }

  else
  {
    v11 = v45;
  }

  v33 = v11;
  v46 = v38;
  v32 = *(v38 + 240) == 0;
  if (!v32 || (v10 = 1, !v35))
  {
    v9 = 0;
    if (!v32)
    {
      v9 = v35 == 0;
    }

    v10 = v9;
  }

  if ((v10 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (is_main && front_random) || (!is_main && !front_random) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:6344)";
    __break(1u);
    JUMPOUT(0x629E0);
  }

  __buf = 0;
  arc4random_buf(&__buf, 8uLL);
  if (!__buf)
  {
    __buf = 0xDEADDEADDEADDEADLL;
  }

  if (*(v38 + 368))
  {
    v44 = __buf;
    v43 = __buf & 0xF0FFFFFFFFFFFFFFLL;
    __buf &= 0xF0FFFFFFFFFFFFFFLL;
  }

  *(v38 + 320) = __buf;
  v30 = 1;
  v29 = 0;
LABEL_16:
  if (v29 < 0x28)
  {
    if (v32)
    {
      *(*(v33 + 448) + v29) = v30;
    }

    v28 = *(*(v33 + 440) + v29);
    for (i = 0; ; ++i)
    {
      if (i >= v28)
      {
        ++v29;
        goto LABEL_16;
      }

      v26 = *(v38 + 216) + 96 * v30;
      v25 = *(*(v33 + 432) + 8 * v29);
      if (v25 > 0x1000)
      {
        if (*(v38 + 250))
        {
          v24 = 0x20000;
        }

        else
        {
          v24 = 0x10000;
        }
      }

      else
      {
        v24 = 0x4000;
      }

      v23 = 0;
      if (v32 && *(v33 + 416))
      {
        if (v25 > 0x100)
        {
          if (v25 > 0x200)
          {
            if (v25 > 0x800)
            {
              v23 = v25 <= 0x2000;
            }

            else
            {
              v23 = 0x2000 / v25;
            }
          }

          else
          {
            v23 = 0x1000 / v25;
          }
        }

        else
        {
          v23 = 0x800 / v25;
        }
      }

      if (i && (v34 & 1) == 0)
      {
        v22 = 3;
        v21 = 1;
      }

      else
      {
        v22 = 0;
        v21 = 0;
      }

      if (v25 > 0x1000 && (*(v33 + 409) & 4) != 0)
      {
        v21 = 1;
      }

      if (v32)
      {
        if (v22 == 3)
        {
          v20 = _xzm_random_front_index(v35, *(v33 + 415), v30);
        }

        else
        {
          if (v22)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion sgid == XZM_SEGMENT_GROUP_DATA failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:6427)";
            __break(1u);
            JUMPOUT(0x62D2CLL);
          }

          v20 = 0;
        }
      }

      else
      {
        v20 = *(*(v33 + 216) + 96 * v30 + 43);
      }

      v19 = 0;
      v18 = 0;
      if (*v36)
      {
        if (v36[1])
        {
          v21 = 1;
        }

        if (v21)
        {
          if (v25 > 0x1000)
          {
            v19 = v36[4];
            v18 = v36[5];
          }

          else
          {
            v19 = v36[2];
            v18 = v36[3];
          }
        }
      }

      *&v14 = 0;
      WORD4(v14) = v23;
      BYTE10(v14) = v22;
      BYTE11(v14) = v20;
      *&v15 = v25;
      *(&v15 + 1) = 0xFFFFFFFF / v25 + 1;
      LODWORD(v16) = 0xFFFFFFFF / v25 + 1;
      HIDWORD(v16) = v24 / v25;
      LOBYTE(v17) = v30;
      WORD1(v17) = *(v38 + 208);
      WORD2(v17) = i;
      BYTE6(v17) = 0;
      BYTE7(v17) = BYTE7(v17) & 0xFC | v21 & 1;
      BYTE8(v17) = v19;
      BYTE9(v17) = v18;
      *(v26 + 16) = 0u;
      *v26 = 0u;
      *(v26 + 80) = v17;
      *(v26 + 64) = v16;
      *(v26 + 48) = v15;
      *(v26 + 32) = v14;
      v8 = *(v38 + 211);
      v55 = (*(v38 + 248) >> 4) & 3;
      if (v55)
      {
        if (v55 == 1)
        {
          v56 = ncpuclusters;
          goto LABEL_62;
        }

        if (v55 == 2)
        {
          v56 = logical_ncpus;
          goto LABEL_62;
        }
      }

      v56 = 1;
LABEL_62:
      if (v8 != v56)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion zone->xzz_slot_count == _xzm_get_limit_allocation_index(zone->xzz_max_slot_config) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:6478)";
        __break(1u);
        JUMPOUT(0x62FB4);
      }

      v53 = *(v38 + 248) & 3;
      switch(v53)
      {
        case 0:
LABEL_69:
          v54 = 1;
          break;
        case 1:
          v54 = ncpuclusters;
          break;
        case 2:
          v54 = logical_ncpus;
          break;
        default:
          goto LABEL_69;
      }

      v13 = v54;
      for (j = 0; j < *(v38 + 211); ++j)
      {
        v61 = v38;
        v60 = v26;
        v59 = j;
        v58 = *(v26 + 80);
        v57 = j * *(v38 + 210);
        if (v57 + v58 >= *(v38 + 211) * *(v38 + 210))
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion alloc_base_idx + xz_idx < zone->xzz_slot_count * zone->xzz_xzone_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:1246)";
          __break(1u);
          JUMPOUT(0x630E8);
        }

        *(*(v61 + 224) + 32 * (v57 + v58) + 23) = *(v26 + 86);
        if (j < v13)
        {
          v5 = *(v38 + 232);
          v52 = v38;
          v51 = v26;
          v50 = v5;
          v49 = j;
          v48 = *(v26 + 80);
          v47 = j * *(v38 + 210);
          if (v47 + v48 >= *(v38 + 211) * *(v38 + 210))
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion alloc_base_idx + xz_idx < zone->xzz_slot_count * zone->xzz_xzone_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:233)";
            __break(1u);
            JUMPOUT(0x631C0);
          }

          *(v50 + 16 * (v47 + v48) + 15) = *(v26 + 85);
        }
      }

      v42 = v38;
      v41 = v25;
      v40 = i == 0;
      v39 = v38 + 368;
      v7 = 0;
      if (*(v38 + 368))
      {
        v7 = 0;
        if (v41 <= *(v39 + 8))
        {
          v6 = 1;
          if (v40)
          {
            v6 = *(v39 + 1);
          }

          v7 = v6;
        }
      }

      *(v26 + 87) = *(v26 + 87) & 0xFD | (2 * (v7 & 1));
      if ((*(v38 + 368) & 1) != 0 && (*(v26 + 87) & 2) == 0)
      {
        *(v26 + 40) = 0;
      }

      ++v30;
    }
  }
}

uint64_t xzm_malloc_zone_create(unsigned int a1, uint64_t a2)
{
  v25 = &v47;
  v46 = a1;
  v45 = a2;
  v44 = 384;
  v43 = 384;
  v42 = *(a2 + 210);
  v41 = *(a2 + 211);
  v40 = 96 * v42 + 384;
  v39 = v42 * v41;
  v38 = v40 + 32 * v39;
  v44 = v38 + 16 * v39;
  v48 = a2 + 528;
  v55 = a2 + 528;
  v54 = 327680;
  v56 = 3;
  v57 = 3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v53 = *(StatusReg + 24);
  v52 = 0;
  v51 = v53;
  v50 = v53;
  v2 = 0;
  atomic_compare_exchange_strong_explicit((a2 + 528), &v2, v53, memory_order_acquire, memory_order_acquire);
  v26 = v2;
  v27 = v2 == 0;
  if (v2)
  {
    *(v25 + 9) = v26;
  }

  v49 = v27;
  if (!v27)
  {
    v3 = *(v25 + 6);
    v4 = *(v25 + 11);
    os_unfair_lock_lock_with_options();
  }

  v37 = 0;
  v36 = *(v45 + 520);
  if (v36)
  {
    *(v45 + 520) = *(*(v45 + 520) + 8);
    v37 = *v36;
    v35 = *(v45 + 480) + 128;
    xzm_metapool_free(v35, v36);
  }

  else if (*(v45 + 516) == -1)
  {
    v37 = 0;
  }

  else
  {
    v37 = ++*(v45 + 516);
  }

  v5 = v25;
  *(v25 + 2) = v45 + 528;
  *(v5 + 13) = *(v5 + 2);
  *(v5 + 14) = 3;
  *(v5 + 15) = *(v5 + 14);
  *(v5 + 16) = 0;
  *(v5 + 16) = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(v5 + 25) = *(*(v5 + 16) + 8 * *(v5 + 15));
  *(v5 + 24) = 0;
  *(v5 + 23) = 0;
  *(v5 + 23) = *(v5 + 25);
  v6 = *(v5 + 13);
  *(v5 + 22) = *(v5 + 24);
  v7 = *(v5 + 23);
  v8 = *(v5 + 22);
  LODWORD(v5) = v7;
  atomic_compare_exchange_strong_explicit(v6, &v5, v8, memory_order_release, memory_order_relaxed);
  v23 = v5;
  v24 = v5 == v7;
  if (v5 != v7)
  {
    *(v25 + 23) = v23;
  }

  v59 = v24;
  if (!v24)
  {
    os_unfair_lock_unlock(*(v25 + 13));
  }

  if (v37)
  {
    v34 = 1;
    v32 = 0;
    v33 = 1;
    plat = mvm_allocate_plat(0, v44, 0, 1, 0x2000, 1, 0);
    if (plat)
    {
      v30 = plat;
      v29 = plat + v38;
      v21 = v45;
      v9 = *(v45 + 248);
      v10 = *(v45 + 288);
      v11 = *(v45 + 272);
      v12 = *(v45 + 276);
      v13 = *(v45 + 284);
      v14 = *(v45 + 292);
      v15 = *(v45 + 296);
      v16 = *(v45 + 304);
      v17 = *(v45 + 312);
      v18 = *(v45 + 250);
      v22 = &v20;
      _xzm_initialize_const_zone_data(plat, v44, v37, v42, v41, &plat[v43 / 8], plat + v40, v45, (v9 >> 2) & 3, v10, (v9 >> 4) & 3, v11, v12, v13, v14, v15, v16, v17, 0, 0, v46, v18 & 1, v9 & 3, plat + v38);
      *(v30 + 23) = *(v45 + 368);
      if (!v30)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion new_zone != NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:8163)";
        __break(1u);
        JUMPOUT(0x637B0);
      }

      v28 = *(v45 + 411) == 2;
      _xzm_initialize_xzone_data(v30, 0, (v45 + 532), 0, v28);
      v30[44] = 0;
      *v25 = v30;
    }

    else
    {
      *v25 = 0;
    }
  }

  else
  {
    *v25 = 0;
  }

  return *v25;
}

_OWORD *_xzm_xzone_malloc_tiny(unsigned __int8 *a1, uint64_t a2, int a3)
{
  v56 = a1;
  v55 = a2;
  v54 = a3;
  v53 = 0;
  v52 = a3 & 1;
  v51 = 0;
  v196 = a1;
  v195 = a2;
  v194 = &v51;
  v193 = 1;
  v192 = a2 + 86;
  v189 = *(a2 + 86);
  v190 = v189;
  v188 = v189;
  v191 = v189;
  if (v189 > ((a1[248] >> 4) & 3))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slot_config <= zone->xzz_max_slot_config failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:185)";
    __break(1u);
    JUMPOUT(0x6394CLL);
  }

  if (v194)
  {
    *v194 = v191;
  }

  if (!v191)
  {
    goto LABEL_10;
  }

  if (v191 == 1)
  {
    v197 = _malloc_cpu_cluster_number();
    goto LABEL_11;
  }

  if (v191 != 2)
  {
LABEL_10:
    v197 = 0;
    goto LABEL_11;
  }

  v197 = _malloc_cpu_number();
LABEL_11:
  v50 = v197;
  v202 = v56;
  v201 = v55;
  v200 = v197;
  v199 = *(v55 + 80);
  v198 = v197 * v56[210];
  if (v198 + v199 >= v202[211] * v202[210])
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion alloc_base_idx + xz_idx < zone->xzz_slot_count * zone->xzz_xzone_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:1246)";
    __break(1u);
    JUMPOUT(0x63A68);
  }

  v49 = (*(v202 + 28) + 32 * (v198 + v199));
  v48 = 0;
  v47 = v49;
  v46 = 0;
  v44 = *v49;
  v45 = v44;
  v43 = v44;
  v46 = v44;
  v42 = 0;
  v38 = 0;
  if ((v44 & 1) == 0)
  {
    v38 = 0;
    if (((v46 >> 2) & 0x7FFFFFFFFFFFLL) != 0)
    {
      LOBYTE(v37) = 0;
      if ((*(v55 + 87) & 2) != 0)
      {
        v37 = (HIBYTE(v54) >> 6) & 1;
      }

      v38 = v37 ^ 1;
    }
  }

  v41 = v38 & 1;
  if ((v38 & 1) == 0)
  {
    return _xzm_xzone_malloc_freelist_outlined(v56, v55, v50, v49, v42, v54);
  }

  v40 = ((v46 >> 2) & 0x7FFFFFFFFFFFLL);
  v39[1] = 0;
  v39[0] = 0;
  v150 = v56;
  v149 = v55;
  v148 = v50;
  v147 = 0;
  v146 = v40;
  v145 = v53 & 1;
  v144 = 0;
  v143 = v39;
  v142 = &v48;
  v141 = 0;
  v140 = *(&dword_C + v40) & 1;
  v139 = 0;
  v3 = 1024;
  if ((v53 & 1) == 0)
  {
    v3 = 16;
  }

  v138 = v3;
  v156 = v150;
  v155 = v146;
  v154 = 0;
  v161 = v150;
  v160 = v146;
  v164 = v150;
  v163 = v146;
  v162 = v146 & 0xFFFFFFFFFFFFC000;
  v36 = 1;
  if ((v146 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v35 = 0;
    if (v163 >= v162 + 2136)
    {
      v35 = v163 < v162 + 48 * *(v162 + 16) + 2136;
    }

    v36 = v35;
  }

  if ((v36 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0x63DE0);
  }

  v166 = v162;
  v165 = v160;
  v171 = v162;
  v170 = v160;
  if (v160 < v162 + 2136)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
    __break(1u);
    JUMPOUT(0x63E48);
  }

  v169 = 0xAAAAAAAAAAAAAAABLL * ((v170 - v171 - 2136) >> 4);
  if (v169 >= *(v171 + 16))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
    __break(1u);
    JUMPOUT(0x63EACLL);
  }

  v168 = v162;
  v167 = v169;
  v137 = *(v162 + 72) + (v169 << 14);
  if (v145)
  {
    if ((*(v146 + 32) & 0xF) != 6)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_SMALL_FREELIST_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:742)";
      __break(1u);
      JUMPOUT(0x63F20);
    }
  }

  else if ((*(v146 + 32) & 0xF) != 2)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_TINY_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:744)";
    __break(1u);
    JUMPOUT(0x63F64);
  }

  v136 = 0;
  v135 = 0;
  v134 = 0uLL;
  v133 = 0;
  v132 = 0;
  v130 = *v146;
  v131 = v130;
  v129 = v130;
  v132 = v130;
  do
  {
    while (1)
    {
      while (1)
      {
        while ((v132 & 0x40000000) != 0)
        {
          if ((v144 & 1) == 0)
          {
            v151 = 0;
            goto LABEL_154;
          }

          _xzm_walk_lock_wait(v150);
          v4[68] = *v146;
          v4[69] = v4[68];
          v4[67] = v4[69];
          v4[73] = v4[67];
        }

        v128 = v132;
        if ((v139 & 1) == 0)
        {
          break;
        }

        if (((v132 >> 22) & 0x3F) != 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_alloc_idx == XZM_SLOT_INDEX_EMPTY failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:791)";
          __break(1u);
          JUMPOUT(0x64138);
        }

        if ((v132 & 0x10000000) == 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_on_partial_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:792)";
          __break(1u);
          JUMPOUT(0x6416CLL);
        }

        if ((v132 & 0x20000000) != 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !old_meta.xca_on_empty_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:793)";
          __break(1u);
          JUMPOUT(0x641A0);
        }

        v128 &= ~0x10000000uLL;
        if (((v132 >> 11) & 0x7FF) != 0)
        {
          v128 = v128 & 0xFFFFFFFFF03FFFFFLL | (((v148 + 1) & 0x3FLL) << 22);
          goto LABEL_89;
        }

        if ((v132 & 0x7FF) == 0x7FE)
        {
          v128 |= 0x20000000uLL;
          *v141 = 1;
        }

        else if ((~v132 & 0x7FF) != 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_alloc_head == XZM_FREE_MADVISING failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:811)";
          __break(1u);
          JUMPOUT(0x64230);
        }

        if (v147)
        {
          v147[8] = -2;
        }

        v126 = v132;
        v125 = 0;
        v123 = v128;
        v122 = v128;
        v124 = v128;
        v5 = v132;
        v6 = v132;
        atomic_compare_exchange_strong_explicit(v146, &v6, v128, memory_order_relaxed, memory_order_relaxed);
        if (v6 != v5)
        {
          v126 = v6;
        }

        v121 = v6 == v5;
        v125 = v6 == v5;
        v132 = v126;
        v120 = v125;
        v127 = v6 == v5;
        if (v6 == v5)
        {
          if (malloc_tracing_enabled)
          {
            if (v147)
            {
              v34 = *(v147 + 2);
            }

            kdebug_trace();
          }

          v151 = 0;
          goto LABEL_154;
        }

        if (*v141)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !(*install_empty_out) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:828)";
          __break(1u);
          JUMPOUT(0x64348);
        }
      }

      if (((v132 >> 22) & 0x3F) != v148 + 1)
      {
        if (v147)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !cache failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:869)";
          __break(1u);
          JUMPOUT(0x64448);
        }

        v151 = 0;
        goto LABEL_154;
      }

      if (((v132 >> 11) & 0x7FF) == 0)
      {
        break;
      }

LABEL_89:
      v135 = 0;
      if (v147)
      {
        v128 = v128 & 0xFFFFFFFFFFFFF800 | 0x400;
        v128 &= 0xFFFFFFFFFFC007FFLL;
        v147[9] = ((v132 >> 11) & 0x7FF) - 1;
        if ((v132 & 0x7FF) > 0x3FF)
        {
          if ((v132 & 0x7FF) != 0x400)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_alloc_head == XZM_FREE_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:948)";
            __break(1u);
            JUMPOUT(0x647C4);
          }

          if (((v132 >> 11) & 0x7FF) == 0)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_free_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:949)";
            __break(1u);
            JUMPOUT(0x647FCLL);
          }

          v111 = *(v149 + 68);
          v110 = v111 - ((v132 >> 11) & 0x7FF);
          v136 = v137 + v110 * *(v149 + 48);
          v147[8] = 1024;
        }

        else
        {
          v136 = v137 + (v132 & 0x7FF) * v138;
          if (v140)
          {
            __asm { MSR             TCO, #1 }

            v134 = *v136;
            __asm { MSR             TCO, #0 }
          }

          else
          {
            v134 = *v136;
          }

          v147[8] = WORD4(v134) & 0x7FF;
          v147[10] = (DWORD2(v134) >> 11) & 0x1FFF;
          v135 = 1;
        }
      }

      else
      {
        v128 = v128 & 0xFFFFFFFFFFC007FFLL | ((((v128 >> 11) - 1) & 0x7FFLL) << 11);
        if ((v132 & 0x7FF) > 0x3FF)
        {
          if (((v132 >> 11) & 0x7FF) == 0)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_free_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:985)";
            __break(1u);
            JUMPOUT(0x64954);
          }

          if ((v132 & 0x7FF) != 0x400)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_alloc_head == XZM_FREE_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:986)";
            __break(1u);
            JUMPOUT(0x6498CLL);
          }

          v109 = *(v149 + 68);
          v136 = v137 + (v109 - ((v132 >> 11) & 0x7FF)) * *(v149 + 48);
        }

        else
        {
          v136 = v137 + (v132 & 0x7FF) * v138;
          if (v140)
          {
            __asm { MSR             TCO, #1 }

            v134 = *v136;
            __asm { MSR             TCO, #0 }
          }

          else
          {
            v134 = *v136;
          }

          v128 = v128 & 0xFFFFFFFFFFFFF800 | WORD4(v134) & 0x7FF;
          v128 = v128 & 0xFFFFF0007FFFFFFFLL | (((*(&v134 + 1) >> 11) & 0x1FFFLL) << 31);
          v135 = 1;
        }
      }

      v107 = v132;
      v106 = 0;
      v104 = v128;
      v103 = v128;
      v105 = v128;
      v17 = v132;
      v18 = v132;
      atomic_compare_exchange_strong_explicit(v146, &v18, v128, memory_order_relaxed, memory_order_relaxed);
      if (v18 != v17)
      {
        v107 = v18;
      }

      v102 = v18 == v17;
      v106 = v18 == v17;
      v132 = v107;
      v101 = v106;
      v108 = v18 == v17;
      if (v18 == v17)
      {
        if (malloc_tracing_enabled)
        {
          if (v147)
          {
            v32 = *(v147 + 2);
          }

          kdebug_trace();
        }

        if (v140)
        {
          if (v145)
          {
            v19 = *(v149 + 48);
            v159 = v136;
            v158 = v19;
            v157 = memtag_assign_tag(v136, v19);
            v173 = v157;
            v172 = v158;
            if ((v158 & 0x1FF) != 0)
            {
              v177 = v173;
              v176 = v172;
              if ((v172 & 0xF) != 0)
              {
                __break(1u);
                JUMPOUT(0x64BB4);
              }

              if ((v177 & 0xF) != 0)
              {
                __break(1u);
                JUMPOUT(0x64BCCLL);
              }

              v175 = v177;
              v174 = v177 + v176;
              _X9 = v177;
              __asm { STG             X9, [X9] }

              _X9 = v177 + v176;
              __asm { STG             X9, [X9,#-0x10] }

              if (v176 >= 0x21)
              {
                v175 = (v177 + 31) & 0xFFFFFFFFFFFFFFE0;
                v174 = (v177 + v176) & 0xFFFFFFFFFFFFFFE0;
                _X9 = v175;
                __asm { ST2G            X9, [X9] }

                _X8 = v174;
                __asm { ST2G            X8, [X8,#-0x20] }
              }

              v175 = (v177 + 63) & 0xFFFFFFFFFFFFFFC0;
              v174 = (v177 + v176) & 0xFFFFFFFFFFFFFFC0;
              while (v175 < v174)
              {
                __asm { DC              GVA, X8 }

                v175 += 64;
              }
            }

            else
            {
              v180 = v173;
              v179 = v172;
              if ((v173 & 0x1FF) != 0)
              {
                __break(1u);
                JUMPOUT(0x64CD4);
              }

              if ((v179 & 0x1FF) != 0)
              {
                __break(1u);
                JUMPOUT(0x64CECLL);
              }

              v178 = v180 + v179;
              while (v180 < v178)
              {
                __asm
                {
                  DC              GVA, X8
                  DC              GVA, X8
                  DC              GVA, X8
                  DC              GVA, X8
                  DC              GVA, X8
                  DC              GVA, X8
                  DC              GVA, X8
                  DC              GVA, X8
                }

                v180 += 512;
              }
            }

            v136 = v157;
          }

          else if (v135)
          {
            v184 = v134;
            v183 = v134;
            v100 = BYTE7(v134) & 0xF;
            if ((BYTE7(v134) & 0xF) == 0)
            {
              qword_D8128 = "BUG IN LIBMALLOC: malloc assertion tag != 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1029)";
              __break(1u);
              JUMPOUT(0x64E0CLL);
            }

            v187 = v136;
            v186 = v100;
            if (v100 >= 0x10u)
            {
              __break(1u);
              JUMPOUT(0x64E38);
            }

            v185 = v187 & 0xF0FFFFFFFFFFFFFFLL | ((v186 & 0xF) << 56);
            v136 = v185;
          }

          else
          {
            v181 = v136;
            v182 = v136;
            _X8 = v136;
            __asm { LDG             X8, [X8] }

            v136 = _X8;
          }
        }

        if (v135)
        {
          v99 = v136 ^ *(v150 + 40);
          if (v145)
          {
            v153 = v99;
            v152 = v99 & 0xF0FFFFFFFFFFFFFFLL;
            v99 &= 0xF0FFFFFFFFFFFFFFLL;
          }

          if (v99 == v134)
          {
            v98 = WORD4(v134) & 0x7FF | (((*(&v134 + 1) >> 11) & 0x1FFFLL) << 11) & 0xFFFFFF;
            if (*(&v134 + 1) != v98)
            {
              *v143 = 1;
            }
          }

          else
          {
            *v143 = 1;
          }
        }

        v151 = v136;
        goto LABEL_154;
      }

      *v142 = 1;
      ++v133;
    }

    v128 &= 0xFFFFFFFFF03FFFFFLL;
    if ((v132 & 0x7FF) != 0x400)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_alloc_head == XZM_FREE_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:881)";
      __break(1u);
      JUMPOUT(0x644B0);
    }

    if ((v132 & 0x10000000) != 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !old_meta.xca_on_partial_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:887)";
      __break(1u);
      JUMPOUT(0x644E4);
    }

    if ((v132 & 0x20000000) != 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !old_meta.xca_on_empty_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:888)";
      __break(1u);
      JUMPOUT(0x64518);
    }

    if (v147)
    {
      v147[8] = -2;
    }

    v118 = v132;
    v117 = 0;
    v115 = v128;
    v114 = v128;
    v116 = v128;
    v7 = v132;
    v8 = v132;
    atomic_compare_exchange_strong_explicit(v146, &v8, v128, memory_order_relaxed, memory_order_relaxed);
    if (v8 != v7)
    {
      v118 = v8;
    }

    v113 = v8 == v7;
    v117 = v8 == v7;
    v132 = v118;
    v112 = v117;
    v119 = v8 == v7;
  }

  while (v8 != v7);
  if (malloc_tracing_enabled)
  {
    if (v147)
    {
      v33 = *(v147 + 2);
    }

    kdebug_trace();
  }

  v151 = 0;
LABEL_154:
  v42 = v151;
  if (!v151 || (v39[0] & 1) != 0)
  {
    return _xzm_xzone_malloc_freelist_outlined(v56, v55, v50, v49, v42, v54);
  }

  v94 = v56;
  v93 = v55;
  v92 = (v49 + 2);
  v91 = v51;
  v90 = 1;
  v89 = v48 & 1;
  if ((v56[249] & 1) != 0 && *(v93 + 6) <= 0x100uLL)
  {
    if (v89)
    {
      v95 = 114;
      v96 = 114;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v88 = *(StatusReg + 912);
      if (v88)
      {
        v87 = v93[80];
        v86 = v88 + 24 * v87 + 40;
        v206 = v94;
        v205 = v93;
        v204 = v86;
        if (*(v88 + 24 * v87 + 56) == -1)
        {
          ++*(v204 + 18);
          v203 = *(v206 + 64);
          if (*(v204 + 18) == v203)
          {
            *(v204 + 16) = -2;
            *(v204 + 22) = *(v204 + 8) & 0xFFF;
          }
        }
      }
    }
  }

  else
  {
    v85 = 0;
    v83 = *v92;
    v84 = v83;
    v82 = v83;
    v85 = v83;
    v81 = (v94[248] >> 4) & 3;
    if (HIBYTE(v83) != v81 && ((v89 & 1) != 0 || (v85 & 0xFFFFFF00000000) != 0))
    {
      v80 = 1;
      if (v89)
      {
        v80 |= 0x100000000uLL;
      }

      v79 = 0;
      v77 = v80;
      v76 = v80;
      v78 = v80;
      v72 = v80;
      v71 = v80;
      v73 = v80;
      add_explicit = atomic_fetch_add_explicit(v92, v80, memory_order_relaxed);
      v74 = add_explicit;
      v69 = add_explicit;
      v75 = add_explicit + v78;
      v79 = add_explicit + v78;
      v68 = (add_explicit + v78) >> 56;
      if (v68 != v81)
      {
        if (v90)
        {
          v31 = *(v94 + 76);
        }

        else
        {
          v31 = *(v94 + 71);
        }

        v67 = v31;
        if (v90)
        {
          v30 = v94 + 292;
        }

        else
        {
          v30 = v94 + 272;
        }

        v66 = v30;
        if ((HIDWORD(v79) & 0xFFFFFFu) < *&v30[4 * v68])
        {
          if (v79 >= v67 && v79 <= v67)
          {
            v64 = v79;
            LODWORD(v63) = 0;
            HIDWORD(v63) = HIBYTE(v63) << 24;
            HIBYTE(v63) = v68;
            v79 = v63;
            v62 = 0;
            v61 = v92;
            v85 = *v92;
            do
            {
              if (v85 < v64 || HIBYTE(v85) > HIBYTE(v64))
              {
                break;
              }

              v60 = v79;
              v26 = v85;
              v27 = v85;
              atomic_compare_exchange_strong_explicit(v61, &v27, v79, memory_order_relaxed, memory_order_relaxed);
              if (v27 != v26)
              {
                v85 = v27;
              }

              v59 = v27 == v26;
              v62 = v27 == v26;
            }

            while (v27 != v26);
            v58 = v62;
          }
        }

        else if ((HIDWORD(v79) & 0xFFFFFFu) <= *&v66[4 * v68])
        {
          v207 = HIBYTE(v79);
          if (HIBYTE(v79))
          {
            if (HIBYTE(v79) != 1)
            {
              if (HIBYTE(v79) != 2)
              {
                qword_D8128 = "BUG IN LIBMALLOC: Invalid xzone slot config";
                __break(1u);
                JUMPOUT(0x654A0);
              }

              qword_D8128 = "BUG IN LIBMALLOC: Can't upgrade from XZM_SLOT_CPU";
              __break(1u);
              JUMPOUT(0x65474);
            }

            v208 = 2;
          }

          else if (ncpuclusters < 2)
          {
            v208 = 2;
          }

          else
          {
            v208 = 1;
          }

          v65 = v208;
          if (HIBYTE(v79) >= v208)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion new_counters.xsc_slot_config < next_slot_config failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1444)";
            __break(1u);
            JUMPOUT(0x654E8);
          }

          _xzm_xzone_upgrade_freelist_slot_config(v94, v93, v92, v79, v65, v90 & 1);
        }
      }
    }
  }

  *v42 = 0uLL;
  if ((v52 & 1) == 0 || *(v55 + 48) < 0x401uLL)
  {
    return v42;
  }

  v28 = *(v55 + 48);
  return _platform_memset();
}

_OWORD *_xzm_xzone_malloc_small_freelist(unsigned __int8 *a1, uint64_t a2, int a3)
{
  v56 = a1;
  v55 = a2;
  v54 = a3;
  v53 = 1;
  v52 = a3 & 1;
  v51 = 0;
  v196 = a1;
  v195 = a2;
  v194 = &v51;
  v193 = 1;
  v192 = a2 + 86;
  v189 = *(a2 + 86);
  v190 = v189;
  v188 = v189;
  v191 = v189;
  if (v189 > ((a1[248] >> 4) & 3))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slot_config <= zone->xzz_max_slot_config failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:185)";
    __break(1u);
    JUMPOUT(0x65828);
  }

  if (v194)
  {
    *v194 = v191;
  }

  if (!v191)
  {
    goto LABEL_10;
  }

  if (v191 == 1)
  {
    v197 = _malloc_cpu_cluster_number();
    goto LABEL_11;
  }

  if (v191 != 2)
  {
LABEL_10:
    v197 = 0;
    goto LABEL_11;
  }

  v197 = _malloc_cpu_number();
LABEL_11:
  v50 = v197;
  v202 = v56;
  v201 = v55;
  v200 = v197;
  v199 = *(v55 + 80);
  v198 = v197 * v56[210];
  if (v198 + v199 >= v202[211] * v202[210])
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion alloc_base_idx + xz_idx < zone->xzz_slot_count * zone->xzz_xzone_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:1246)";
    __break(1u);
    JUMPOUT(0x65944);
  }

  v49 = (*(v202 + 28) + 32 * (v198 + v199));
  v48 = 0;
  v47 = v49;
  v46 = 0;
  v44 = *v49;
  v45 = v44;
  v43 = v44;
  v46 = v44;
  v42 = 0;
  v38 = 0;
  if ((v44 & 1) == 0)
  {
    v38 = 0;
    if (((v46 >> 2) & 0x7FFFFFFFFFFFLL) != 0)
    {
      LOBYTE(v37) = 0;
      if ((*(v55 + 87) & 2) != 0)
      {
        v37 = (HIBYTE(v54) >> 6) & 1;
      }

      v38 = v37 ^ 1;
    }
  }

  v41 = v38 & 1;
  if ((v38 & 1) == 0)
  {
    return _xzm_xzone_malloc_freelist_outlined(v56, v55, v50, v49, v42, v54);
  }

  v40 = ((v46 >> 2) & 0x7FFFFFFFFFFFLL);
  v39[1] = 0;
  v39[0] = 0;
  v150 = v56;
  v149 = v55;
  v148 = v50;
  v147 = 0;
  v146 = v40;
  v145 = v53 & 1;
  v144 = 0;
  v143 = v39;
  v142 = &v48;
  v141 = 0;
  v140 = *(&dword_C + v40) & 1;
  v139 = 0;
  v3 = 1024;
  if ((v53 & 1) == 0)
  {
    v3 = 16;
  }

  v138 = v3;
  v156 = v150;
  v155 = v146;
  v154 = 0;
  v161 = v150;
  v160 = v146;
  v164 = v150;
  v163 = v146;
  v162 = v146 & 0xFFFFFFFFFFFFC000;
  v36 = 1;
  if ((v146 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v35 = 0;
    if (v163 >= v162 + 2136)
    {
      v35 = v163 < v162 + 48 * *(v162 + 16) + 2136;
    }

    v36 = v35;
  }

  if ((v36 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0x65CBCLL);
  }

  v166 = v162;
  v165 = v160;
  v171 = v162;
  v170 = v160;
  if (v160 < v162 + 2136)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
    __break(1u);
    JUMPOUT(0x65D24);
  }

  v169 = 0xAAAAAAAAAAAAAAABLL * ((v170 - v171 - 2136) >> 4);
  if (v169 >= *(v171 + 16))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
    __break(1u);
    JUMPOUT(0x65D88);
  }

  v168 = v162;
  v167 = v169;
  v137 = *(v162 + 72) + (v169 << 14);
  if (v145)
  {
    if ((*(v146 + 32) & 0xF) != 6)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_SMALL_FREELIST_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:742)";
      __break(1u);
      JUMPOUT(0x65DFCLL);
    }
  }

  else if ((*(v146 + 32) & 0xF) != 2)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_TINY_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:744)";
    __break(1u);
    JUMPOUT(0x65E40);
  }

  v136 = 0;
  v135 = 0;
  v134 = 0uLL;
  v133 = 0;
  v132 = 0;
  v130 = *v146;
  v131 = v130;
  v129 = v130;
  v132 = v130;
  do
  {
    while (1)
    {
      while (1)
      {
        while ((v132 & 0x40000000) != 0)
        {
          if ((v144 & 1) == 0)
          {
            v151 = 0;
            goto LABEL_154;
          }

          _xzm_walk_lock_wait(v150);
          v4[68] = *v146;
          v4[69] = v4[68];
          v4[67] = v4[69];
          v4[73] = v4[67];
        }

        v128 = v132;
        if ((v139 & 1) == 0)
        {
          break;
        }

        if (((v132 >> 22) & 0x3F) != 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_alloc_idx == XZM_SLOT_INDEX_EMPTY failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:791)";
          __break(1u);
          JUMPOUT(0x66014);
        }

        if ((v132 & 0x10000000) == 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_on_partial_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:792)";
          __break(1u);
          JUMPOUT(0x66048);
        }

        if ((v132 & 0x20000000) != 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !old_meta.xca_on_empty_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:793)";
          __break(1u);
          JUMPOUT(0x6607CLL);
        }

        v128 &= ~0x10000000uLL;
        if (((v132 >> 11) & 0x7FF) != 0)
        {
          v128 = v128 & 0xFFFFFFFFF03FFFFFLL | (((v148 + 1) & 0x3FLL) << 22);
          goto LABEL_89;
        }

        if ((v132 & 0x7FF) == 0x7FE)
        {
          v128 |= 0x20000000uLL;
          *v141 = 1;
        }

        else if ((~v132 & 0x7FF) != 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_alloc_head == XZM_FREE_MADVISING failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:811)";
          __break(1u);
          JUMPOUT(0x6610CLL);
        }

        if (v147)
        {
          v147[8] = -2;
        }

        v126 = v132;
        v125 = 0;
        v123 = v128;
        v122 = v128;
        v124 = v128;
        v5 = v132;
        v6 = v132;
        atomic_compare_exchange_strong_explicit(v146, &v6, v128, memory_order_relaxed, memory_order_relaxed);
        if (v6 != v5)
        {
          v126 = v6;
        }

        v121 = v6 == v5;
        v125 = v6 == v5;
        v132 = v126;
        v120 = v125;
        v127 = v6 == v5;
        if (v6 == v5)
        {
          if (malloc_tracing_enabled)
          {
            if (v147)
            {
              v34 = *(v147 + 2);
            }

            kdebug_trace();
          }

          v151 = 0;
          goto LABEL_154;
        }

        if (*v141)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !(*install_empty_out) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:828)";
          __break(1u);
          JUMPOUT(0x66224);
        }
      }

      if (((v132 >> 22) & 0x3F) != v148 + 1)
      {
        if (v147)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !cache failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:869)";
          __break(1u);
          JUMPOUT(0x66324);
        }

        v151 = 0;
        goto LABEL_154;
      }

      if (((v132 >> 11) & 0x7FF) == 0)
      {
        break;
      }

LABEL_89:
      v135 = 0;
      if (v147)
      {
        v128 = v128 & 0xFFFFFFFFFFFFF800 | 0x400;
        v128 &= 0xFFFFFFFFFFC007FFLL;
        v147[9] = ((v132 >> 11) & 0x7FF) - 1;
        if ((v132 & 0x7FF) > 0x3FF)
        {
          if ((v132 & 0x7FF) != 0x400)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_alloc_head == XZM_FREE_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:948)";
            __break(1u);
            JUMPOUT(0x666A0);
          }

          if (((v132 >> 11) & 0x7FF) == 0)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_free_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:949)";
            __break(1u);
            JUMPOUT(0x666D8);
          }

          v111 = *(v149 + 68);
          v110 = v111 - ((v132 >> 11) & 0x7FF);
          v136 = v137 + v110 * *(v149 + 48);
          v147[8] = 1024;
        }

        else
        {
          v136 = v137 + (v132 & 0x7FF) * v138;
          if (v140)
          {
            __asm { MSR             TCO, #1 }

            v134 = *v136;
            __asm { MSR             TCO, #0 }
          }

          else
          {
            v134 = *v136;
          }

          v147[8] = WORD4(v134) & 0x7FF;
          v147[10] = (DWORD2(v134) >> 11) & 0x1FFF;
          v135 = 1;
        }
      }

      else
      {
        v128 = v128 & 0xFFFFFFFFFFC007FFLL | ((((v128 >> 11) - 1) & 0x7FFLL) << 11);
        if ((v132 & 0x7FF) > 0x3FF)
        {
          if (((v132 >> 11) & 0x7FF) == 0)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_free_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:985)";
            __break(1u);
            JUMPOUT(0x66830);
          }

          if ((v132 & 0x7FF) != 0x400)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_alloc_head == XZM_FREE_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:986)";
            __break(1u);
            JUMPOUT(0x66868);
          }

          v109 = *(v149 + 68);
          v136 = v137 + (v109 - ((v132 >> 11) & 0x7FF)) * *(v149 + 48);
        }

        else
        {
          v136 = v137 + (v132 & 0x7FF) * v138;
          if (v140)
          {
            __asm { MSR             TCO, #1 }

            v134 = *v136;
            __asm { MSR             TCO, #0 }
          }

          else
          {
            v134 = *v136;
          }

          v128 = v128 & 0xFFFFFFFFFFFFF800 | WORD4(v134) & 0x7FF;
          v128 = v128 & 0xFFFFF0007FFFFFFFLL | (((*(&v134 + 1) >> 11) & 0x1FFFLL) << 31);
          v135 = 1;
        }
      }

      v107 = v132;
      v106 = 0;
      v104 = v128;
      v103 = v128;
      v105 = v128;
      v17 = v132;
      v18 = v132;
      atomic_compare_exchange_strong_explicit(v146, &v18, v128, memory_order_relaxed, memory_order_relaxed);
      if (v18 != v17)
      {
        v107 = v18;
      }

      v102 = v18 == v17;
      v106 = v18 == v17;
      v132 = v107;
      v101 = v106;
      v108 = v18 == v17;
      if (v18 == v17)
      {
        if (malloc_tracing_enabled)
        {
          if (v147)
          {
            v32 = *(v147 + 2);
          }

          kdebug_trace();
        }

        if (v140)
        {
          if (v145)
          {
            v19 = *(v149 + 48);
            v159 = v136;
            v158 = v19;
            v157 = memtag_assign_tag(v136, v19);
            v173 = v157;
            v172 = v158;
            if ((v158 & 0x1FF) != 0)
            {
              v177 = v173;
              v176 = v172;
              if ((v172 & 0xF) != 0)
              {
                __break(1u);
                JUMPOUT(0x66A90);
              }

              if ((v177 & 0xF) != 0)
              {
                __break(1u);
                JUMPOUT(0x66AA8);
              }

              v175 = v177;
              v174 = v177 + v176;
              _X9 = v177;
              __asm { STG             X9, [X9] }

              _X9 = v177 + v176;
              __asm { STG             X9, [X9,#-0x10] }

              if (v176 >= 0x21)
              {
                v175 = (v177 + 31) & 0xFFFFFFFFFFFFFFE0;
                v174 = (v177 + v176) & 0xFFFFFFFFFFFFFFE0;
                _X9 = v175;
                __asm { ST2G            X9, [X9] }

                _X8 = v174;
                __asm { ST2G            X8, [X8,#-0x20] }
              }

              v175 = (v177 + 63) & 0xFFFFFFFFFFFFFFC0;
              v174 = (v177 + v176) & 0xFFFFFFFFFFFFFFC0;
              while (v175 < v174)
              {
                __asm { DC              GVA, X8 }

                v175 += 64;
              }
            }

            else
            {
              v180 = v173;
              v179 = v172;
              if ((v173 & 0x1FF) != 0)
              {
                __break(1u);
                JUMPOUT(0x66BB0);
              }

              if ((v179 & 0x1FF) != 0)
              {
                __break(1u);
                JUMPOUT(0x66BC8);
              }

              v178 = v180 + v179;
              while (v180 < v178)
              {
                __asm
                {
                  DC              GVA, X8
                  DC              GVA, X8
                  DC              GVA, X8
                  DC              GVA, X8
                  DC              GVA, X8
                  DC              GVA, X8
                  DC              GVA, X8
                  DC              GVA, X8
                }

                v180 += 512;
              }
            }

            v136 = v157;
          }

          else if (v135)
          {
            v184 = v134;
            v183 = v134;
            v100 = BYTE7(v134) & 0xF;
            if ((BYTE7(v134) & 0xF) == 0)
            {
              qword_D8128 = "BUG IN LIBMALLOC: malloc assertion tag != 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1029)";
              __break(1u);
              JUMPOUT(0x66CE8);
            }

            v187 = v136;
            v186 = v100;
            if (v100 >= 0x10u)
            {
              __break(1u);
              JUMPOUT(0x66D14);
            }

            v185 = v187 & 0xF0FFFFFFFFFFFFFFLL | ((v186 & 0xF) << 56);
            v136 = v185;
          }

          else
          {
            v181 = v136;
            v182 = v136;
            _X8 = v136;
            __asm { LDG             X8, [X8] }

            v136 = _X8;
          }
        }

        if (v135)
        {
          v99 = v136 ^ *(v150 + 40);
          if (v145)
          {
            v153 = v99;
            v152 = v99 & 0xF0FFFFFFFFFFFFFFLL;
            v99 &= 0xF0FFFFFFFFFFFFFFLL;
          }

          if (v99 == v134)
          {
            v98 = WORD4(v134) & 0x7FF | (((*(&v134 + 1) >> 11) & 0x1FFFLL) << 11) & 0xFFFFFF;
            if (*(&v134 + 1) != v98)
            {
              *v143 = 1;
            }
          }

          else
          {
            *v143 = 1;
          }
        }

        v151 = v136;
        goto LABEL_154;
      }

      *v142 = 1;
      ++v133;
    }

    v128 &= 0xFFFFFFFFF03FFFFFLL;
    if ((v132 & 0x7FF) != 0x400)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_alloc_head == XZM_FREE_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:881)";
      __break(1u);
      JUMPOUT(0x6638CLL);
    }

    if ((v132 & 0x10000000) != 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !old_meta.xca_on_partial_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:887)";
      __break(1u);
      JUMPOUT(0x663C0);
    }

    if ((v132 & 0x20000000) != 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !old_meta.xca_on_empty_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:888)";
      __break(1u);
      JUMPOUT(0x663F4);
    }

    if (v147)
    {
      v147[8] = -2;
    }

    v118 = v132;
    v117 = 0;
    v115 = v128;
    v114 = v128;
    v116 = v128;
    v7 = v132;
    v8 = v132;
    atomic_compare_exchange_strong_explicit(v146, &v8, v128, memory_order_relaxed, memory_order_relaxed);
    if (v8 != v7)
    {
      v118 = v8;
    }

    v113 = v8 == v7;
    v117 = v8 == v7;
    v132 = v118;
    v112 = v117;
    v119 = v8 == v7;
  }

  while (v8 != v7);
  if (malloc_tracing_enabled)
  {
    if (v147)
    {
      v33 = *(v147 + 2);
    }

    kdebug_trace();
  }

  v151 = 0;
LABEL_154:
  v42 = v151;
  if (!v151 || (v39[0] & 1) != 0)
  {
    return _xzm_xzone_malloc_freelist_outlined(v56, v55, v50, v49, v42, v54);
  }

  v94 = v56;
  v93 = v55;
  v92 = (v49 + 2);
  v91 = v51;
  v90 = 1;
  v89 = v48 & 1;
  if ((v56[249] & 1) != 0 && *(v93 + 6) <= 0x100uLL)
  {
    if (v89)
    {
      v95 = 114;
      v96 = 114;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v88 = *(StatusReg + 912);
      if (v88)
      {
        v87 = v93[80];
        v86 = v88 + 24 * v87 + 40;
        v206 = v94;
        v205 = v93;
        v204 = v86;
        if (*(v88 + 24 * v87 + 56) == -1)
        {
          ++*(v204 + 18);
          v203 = *(v206 + 64);
          if (*(v204 + 18) == v203)
          {
            *(v204 + 16) = -2;
            *(v204 + 22) = *(v204 + 8) & 0xFFF;
          }
        }
      }
    }
  }

  else
  {
    v85 = 0;
    v83 = *v92;
    v84 = v83;
    v82 = v83;
    v85 = v83;
    v81 = (v94[248] >> 4) & 3;
    if (HIBYTE(v83) != v81 && ((v89 & 1) != 0 || (v85 & 0xFFFFFF00000000) != 0))
    {
      v80 = 1;
      if (v89)
      {
        v80 |= 0x100000000uLL;
      }

      v79 = 0;
      v77 = v80;
      v76 = v80;
      v78 = v80;
      v72 = v80;
      v71 = v80;
      v73 = v80;
      add_explicit = atomic_fetch_add_explicit(v92, v80, memory_order_relaxed);
      v74 = add_explicit;
      v69 = add_explicit;
      v75 = add_explicit + v78;
      v79 = add_explicit + v78;
      v68 = (add_explicit + v78) >> 56;
      if (v68 != v81)
      {
        if (v90)
        {
          v31 = *(v94 + 76);
        }

        else
        {
          v31 = *(v94 + 71);
        }

        v67 = v31;
        if (v90)
        {
          v30 = v94 + 292;
        }

        else
        {
          v30 = v94 + 272;
        }

        v66 = v30;
        if ((HIDWORD(v79) & 0xFFFFFFu) < *&v30[4 * v68])
        {
          if (v79 >= v67 && v79 <= v67)
          {
            v64 = v79;
            LODWORD(v63) = 0;
            HIDWORD(v63) = HIBYTE(v63) << 24;
            HIBYTE(v63) = v68;
            v79 = v63;
            v62 = 0;
            v61 = v92;
            v85 = *v92;
            do
            {
              if (v85 < v64 || HIBYTE(v85) > HIBYTE(v64))
              {
                break;
              }

              v60 = v79;
              v26 = v85;
              v27 = v85;
              atomic_compare_exchange_strong_explicit(v61, &v27, v79, memory_order_relaxed, memory_order_relaxed);
              if (v27 != v26)
              {
                v85 = v27;
              }

              v59 = v27 == v26;
              v62 = v27 == v26;
            }

            while (v27 != v26);
            v58 = v62;
          }
        }

        else if ((HIDWORD(v79) & 0xFFFFFFu) <= *&v66[4 * v68])
        {
          v207 = HIBYTE(v79);
          if (HIBYTE(v79))
          {
            if (HIBYTE(v79) != 1)
            {
              if (HIBYTE(v79) != 2)
              {
                qword_D8128 = "BUG IN LIBMALLOC: Invalid xzone slot config";
                __break(1u);
                JUMPOUT(0x6737CLL);
              }

              qword_D8128 = "BUG IN LIBMALLOC: Can't upgrade from XZM_SLOT_CPU";
              __break(1u);
              JUMPOUT(0x67350);
            }

            v208 = 2;
          }

          else if (ncpuclusters < 2)
          {
            v208 = 2;
          }

          else
          {
            v208 = 1;
          }

          v65 = v208;
          if (HIBYTE(v79) >= v208)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion new_counters.xsc_slot_config < next_slot_config failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1444)";
            __break(1u);
            JUMPOUT(0x673C4);
          }

          _xzm_xzone_upgrade_freelist_slot_config(v94, v93, v92, v79, v65, v90 & 1);
        }
      }
    }
  }

  *v42 = 0uLL;
  if ((v52 & 1) == 0 || *(v55 + 48) < 0x401uLL)
  {
    return v42;
  }

  v28 = *(v55 + 48);
  return _platform_memset();
}

unint64_t _xzm_xzone_malloc_small(uint64_t a1, uint64_t a2, int a3)
{
  v55 = a1;
  v54 = a2;
  v53 = a3;
  v52 = a3 & 1;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v93 = a1;
  v92 = a2;
  v91 = &v49;
  v90 = 1;
  v89 = a2 + 86;
  v86 = *(a2 + 86);
  v87 = v86;
  v85 = v86;
  v88 = v86;
  if (v86 > ((*(a1 + 248) >> 4) & 3))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slot_config <= zone->xzz_max_slot_config failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:185)";
    __break(1u);
    JUMPOUT(0x676ECLL);
  }

  if (v91)
  {
    *v91 = v88;
  }

  if (v88)
  {
    if (v88 == 1)
    {
      v94 = _malloc_cpu_cluster_number();
      goto LABEL_11;
    }

    if (v88 == 2)
    {
      v94 = _malloc_cpu_number();
      goto LABEL_11;
    }
  }

  v94 = 0;
LABEL_11:
  v48 = v94;
  v119 = v55;
  v118 = v54;
  v117 = v94;
  v116 = *(v54 + 80);
  v115 = v94 * *(v55 + 210);
  if (v115 + v116 >= *(v119 + 211) * *(v119 + 210))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion alloc_base_idx + xz_idx < zone->xzz_slot_count * zone->xzz_xzone_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:1246)";
    __break(1u);
    JUMPOUT(0x67804);
  }

  v47 = *(v119 + 224) + 32 * (v115 + v116);
  if (v49 >= ((*(v55 + 248) >> 4) & 3))
  {
    v59 = v47 + 8;
    v167 = v47 + 8;
    v166 = 327680;
    v168 = 3;
    v169 = 3;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v165 = *(StatusReg + 24);
    v164 = 0;
    v163 = v165;
    v162 = v165;
    v5 = 0;
    atomic_compare_exchange_strong_explicit((v47 + 8), &v5, v165, memory_order_acquire, memory_order_acquire);
    if (v5)
    {
      v164 = v5;
    }

    v161 = v5 == 0;
    if (v5)
    {
      os_unfair_lock_lock_with_options();
    }

    ++*(v47 + 16);
  }

  else
  {
    v120 = v47 + 8;
    v146 = v47 + 8;
    v148 = 3;
    v149 = 3;
    v150 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v145 = *(v150 + 24);
    v144 = 0;
    v143 = v145;
    v142 = v145;
    v3 = 0;
    atomic_compare_exchange_strong_explicit((v47 + 8), &v3, v145, memory_order_acquire, memory_order_acquire);
    if (v3)
    {
      v144 = v3;
    }

    v141 = v3 == 0;
    v147 = v3 == 0;
    if (v3)
    {
      v60 = v47 + 8;
      v157 = v47 + 8;
      v156 = 327680;
      v158 = 3;
      v159 = 3;
      v160 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v155 = *(v160 + 24);
      v154 = 0;
      v153 = v155;
      v152 = v155;
      v4 = 0;
      atomic_compare_exchange_strong_explicit((v47 + 8), &v4, v155, memory_order_acquire, memory_order_acquire);
      if (v4)
      {
        v154 = v4;
      }

      v151 = v4 == 0;
      if (v4)
      {
        os_unfair_lock_lock_with_options();
      }

      if (++*(v47 + 20) > *(v55 + 4 * v49 + 292))
      {
        _xzm_xzone_upgrade_small_slot_config(v55, v54, v47, v49);
      }
    }

    if (!(++*(v47 + 16) % *(v55 + 304)))
    {
      *(v47 + 20) = 0;
    }
  }

  chunk_from_isolation = *v47;
  if (!*v47)
  {
    goto LABEL_42;
  }

  v139 = v55;
  v138 = v54;
  v137 = chunk_from_isolation;
  v45 = *(chunk_from_isolation + 32) & 0xF;
  if (v45 != 2)
  {
    if (v45 == 5)
    {
      v140 = *(v137 + 4) == *(v138 + 68);
      goto LABEL_41;
    }

    if (v45 != 6)
    {
      v136 = *(v137 + 32) & 0xF;
      qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
      qword_D8158 = v136;
      __break(1u);
      JUMPOUT(0x67CD8);
    }
  }

  v44 = 0;
  if (((*v137 >> 11) & 0x7FF) == 0)
  {
    v44 = 0;
    if ((~*v137 & 0x7FF) != 0)
    {
      v44 = (*v137 & 0x7FF) != 2046;
    }
  }

  v140 = v44;
LABEL_41:
  if (!v140)
  {
    goto LABEL_147;
  }

LABEL_42:
  v58 = v54 + 36;
  v177 = v54 + 36;
  v176 = 327680;
  v178 = 3;
  v179 = 3;
  v180 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v175 = *(v180 + 24);
  v174 = 0;
  v173 = v175;
  v172 = v175;
  v6 = 0;
  atomic_compare_exchange_strong_explicit((v54 + 36), &v6, v175, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    v174 = v6;
  }

  v171 = v6 == 0;
  if (v6)
  {
    os_unfair_lock_lock_with_options();
  }

  if (chunk_from_isolation)
  {
    v7 = *(v54 + 8);
    *(chunk_from_isolation + 16) = v7;
    if (v7)
    {
      *(*(v54 + 8) + 24) = chunk_from_isolation + 16;
    }

    *(v54 + 8) = chunk_from_isolation;
    *(chunk_from_isolation + 24) = v54 + 8;
    atomic_store(0, (chunk_from_isolation + 12));
  }

  while (1)
  {
    chunk_from_isolation = *v54;
    if (!*v54)
    {
      break;
    }

    v57 = chunk_from_isolation + 8;
    v187 = chunk_from_isolation + 8;
    v186 = 327680;
    v188 = 3;
    v189 = 3;
    v190 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v185 = *(v190 + 24);
    v184 = 0;
    v183 = v185;
    v182 = v185;
    v8 = 0;
    atomic_compare_exchange_strong_explicit((chunk_from_isolation + 8), &v8, v185, memory_order_acquire, memory_order_acquire);
    if (v8)
    {
      v184 = v8;
    }

    v181 = v8 == 0;
    if (v8)
    {
      os_unfair_lock_lock_with_options();
    }

    if ((*(chunk_from_isolation + 32) & 0x20) == 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_on_partial_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3114)";
      __break(1u);
      JUMPOUT(0x67F70);
    }

    if (*(chunk_from_isolation + 16))
    {
      *(*(chunk_from_isolation + 16) + 24) = *(chunk_from_isolation + 24);
    }

    **(chunk_from_isolation + 24) = *(chunk_from_isolation + 16);
    *(chunk_from_isolation + 16) = -1;
    *(chunk_from_isolation + 24) = -1;
    *(chunk_from_isolation + 32) &= ~0x20u;
    if (*(chunk_from_isolation + 4))
    {
      v134 = v55;
      v133 = v54;
      v132 = chunk_from_isolation;
      v43 = *(chunk_from_isolation + 32) & 0xF;
      switch(v43)
      {
        case 2:
          goto LABEL_65;
        case 5:
          v135 = *(v132 + 4) == *(v133 + 68);
          break;
        case 6:
LABEL_65:
          v42 = 0;
          if (((*v132 >> 11) & 0x7FF) == 0)
          {
            v42 = 0;
            if ((~*v132 & 0x7FF) != 0)
            {
              v42 = (*v132 & 0x7FF) != 2046;
            }
          }

          v135 = v42;
          break;
        default:
          v131 = *(v132 + 32) & 0xF;
          qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
          qword_D8158 = v131;
          __break(1u);
          JUMPOUT(0x68128);
      }

      if (v135)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !_xzm_chunk_is_full(zone, xz, chunk) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3118)";
        __break(1u);
        JUMPOUT(0x68158);
      }

      *v47 = chunk_from_isolation;
      *(chunk_from_isolation + 12) = v48 + 1;
      v64 = chunk_from_isolation + 8;
      v196 = (chunk_from_isolation + 8);
      v197 = 3;
      v198 = 3;
      v199 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v195 = *(v199 + 24);
      v194 = 0;
      v193 = v195;
      v192 = 0;
      v9 = v195;
      v10 = v195;
      atomic_compare_exchange_strong_explicit((chunk_from_isolation + 8), &v10, 0, memory_order_release, memory_order_relaxed);
      if (v10 != v9)
      {
        v193 = v10;
      }

      v191 = v10 == v9;
      if (v10 != v9)
      {
        os_unfair_lock_unlock(v196);
      }

      break;
    }

    v63 = chunk_from_isolation + 8;
    v205 = (chunk_from_isolation + 8);
    v206 = 3;
    v207 = 3;
    v208 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v204 = *(v208 + 24);
    v203 = 0;
    v202 = v204;
    v201 = 0;
    v11 = v204;
    v12 = v204;
    atomic_compare_exchange_strong_explicit((chunk_from_isolation + 8), &v12, 0, memory_order_release, memory_order_relaxed);
    if (v12 != v11)
    {
      v202 = v12;
    }

    v200 = v12 == v11;
    if (v12 != v11)
    {
      os_unfair_lock_unlock(v205);
    }
  }

  if (!chunk_from_isolation && *(v54 + 32))
  {
    chunk_from_isolation = *(v54 + 24);
    if (!chunk_from_isolation)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3140)";
      __break(1u);
      JUMPOUT(0x68388);
    }

    v78 = v55;
    v77 = chunk_from_isolation;
    v81 = v55;
    v80 = chunk_from_isolation;
    v79 = chunk_from_isolation & 0xFFFFFFFFFFFFC000;
    v41 = 1;
    if ((chunk_from_isolation & 0xFFFFFFFFFFFFC000) != 0)
    {
      v40 = 0;
      if (v80 >= v79 + 2136)
      {
        v40 = v80 < v79 + 48 * *(v79 + 16) + 2136;
      }

      v41 = v40;
    }

    if ((v41 & 1) == 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
      __break(1u);
      JUMPOUT(0x68468);
    }

    v76 = v79;
    v84 = v79;
    v83 = v77;
    if (v77 < v79 + 2136)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
      __break(1u);
      JUMPOUT(0x684C8);
    }

    v82 = 0xAAAAAAAAAAAAAAABLL * ((v83 - v84 - 2136) >> 4);
    if (v82 >= *(v84 + 16))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
      __break(1u);
      JUMPOUT(0x6852CLL);
    }

    v75 = (v79 + 88 + 8 * v82);
    *(v54 + 24) = *v75;
    v13 = *(v54 + 24);
    v98 = v55;
    v97 = v13;
    if (v13 == -1)
    {
      v99 = 0;
    }

    else
    {
      v96 = v97;
      v102 = v98;
      v101 = v97;
      v100 = v97 & 0xFFFFFFFFFFFFC000;
      v39 = 1;
      if ((v97 & 0xFFFFFFFFFFFFC000) != 0)
      {
        v38 = 0;
        if (v101 >= v100 + 2136)
        {
          v38 = v101 < v100 + 48 * *(v100 + 16) + 2136;
        }

        v39 = v38;
      }

      if ((v39 & 1) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
        __break(1u);
        JUMPOUT(0x68658);
      }

      v95 = v100;
      v37 = 1;
      if (v97)
      {
        v36 = 0;
        if (v96 >= v95 + 2136)
        {
          v36 = v96 < v95 + 48 * *(v95 + 16) + 2136;
        }

        v37 = v36;
      }

      v99 = v37 & 1;
    }

    if (!v99)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_slice_meta_is_batch_pointer(zone, xz->xz_chunkq_batch) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3144)";
      __break(1u);
      JUMPOUT(0x68724);
    }

    v105 = v55;
    v104 = chunk_from_isolation;
    v108 = v55;
    v107 = chunk_from_isolation;
    v106 = chunk_from_isolation & 0xFFFFFFFFFFFFC000;
    v35 = 1;
    if ((chunk_from_isolation & 0xFFFFFFFFFFFFC000) != 0)
    {
      v34 = 0;
      if (v107 >= v106 + 2136)
      {
        v34 = v107 < v106 + 48 * *(v106 + 16) + 2136;
      }

      v35 = v34;
    }

    if ((v35 & 1) == 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
      __break(1u);
      JUMPOUT(0x68804);
    }

    v103 = v106;
    v111 = v106;
    v110 = v104;
    v114 = v106;
    v113 = v104;
    if (v104 < v106 + 2136)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
      __break(1u);
      JUMPOUT(0x68874);
    }

    v112 = 0xAAAAAAAAAAAAAAABLL * ((v113 - v114 - 2136) >> 4);
    if (v112 >= *(v114 + 16))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
      __break(1u);
      JUMPOUT(0x688D8);
    }

    v109 = (v106 + 88 + 8 * v112);
    *v109 = -1;
    --*(v54 + 32);
    *v47 = chunk_from_isolation;
    *(chunk_from_isolation + 12) = v48 + 1;
  }

  v62 = v54 + 36;
  v214 = (v54 + 36);
  v215 = 3;
  v216 = 3;
  v217 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v213 = *(v217 + 24);
  v212 = 0;
  v211 = v213;
  v210 = 0;
  v14 = v213;
  v15 = v213;
  atomic_compare_exchange_strong_explicit((v54 + 36), &v15, 0, memory_order_release, memory_order_relaxed);
  if (v15 != v14)
  {
    v211 = v15;
  }

  v209 = v15 == v14;
  if (v15 != v14)
  {
    os_unfair_lock_unlock(v214);
  }

  if (!chunk_from_isolation && (*(v54 + 87) & 1) != 0)
  {
    v56 = v55;
    v33 = *(v55 + 240) ? *(v55 + 240) : v56;
    chunk_from_isolation = _xzm_xzone_allocate_chunk_from_isolation(v33, v54);
    if (chunk_from_isolation)
    {
      *v47 = chunk_from_isolation;
      *(chunk_from_isolation + 12) = v48 + 1;
    }
  }

  if (!chunk_from_isolation)
  {
    chunk_from_isolation = _xzm_xzone_small_chunk_alloc(v55, v54);
    if (!chunk_from_isolation)
    {
      *v47 = 0;
      goto LABEL_162;
    }

    v129 = v55;
    v128 = v54;
    v127 = chunk_from_isolation;
    v32 = *(chunk_from_isolation + 32) & 0xF;
    if (v32 != 2)
    {
      if (v32 == 5)
      {
        v130 = *(v127 + 4) == *(v128 + 68);
LABEL_143:
        if (v130)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !_xzm_chunk_is_full(zone, xz, chunk) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3173)";
          __break(1u);
          JUMPOUT(0x68C54);
        }

        *v47 = chunk_from_isolation;
        *(chunk_from_isolation + 12) = v48 + 1;
        goto LABEL_147;
      }

      if (v32 != 6)
      {
        v126 = *(v127 + 32) & 0xF;
        qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
        qword_D8158 = v126;
        __break(1u);
        JUMPOUT(0x68C24);
      }
    }

    v31 = 0;
    if (((*v127 >> 11) & 0x7FF) == 0)
    {
      v31 = 0;
      if ((~*v127 & 0x7FF) != 0)
      {
        v31 = (*v127 & 0x7FF) != 2046;
      }
    }

    v130 = v31;
    goto LABEL_143;
  }

LABEL_147:
  if (*v47 != chunk_from_isolation)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion xas->xas_chunk == chunk failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3186)";
    __break(1u);
    JUMPOUT(0x68CE0);
  }

  v124 = v55;
  v123 = v54;
  v122 = chunk_from_isolation;
  v30 = *(chunk_from_isolation + 32) & 0xF;
  if (v30 == 2)
  {
    goto LABEL_154;
  }

  if (v30 != 5)
  {
    if (v30 != 6)
    {
      v121 = *(v122 + 32) & 0xF;
      qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
      qword_D8158 = v121;
      __break(1u);
      JUMPOUT(0x68E14);
    }

LABEL_154:
    v29 = 0;
    if (((*v122 >> 11) & 0x7FF) == 0)
    {
      v29 = 0;
      if ((~*v122 & 0x7FF) != 0)
      {
        v29 = (*v122 & 0x7FF) != 2046;
      }
    }

    v125 = v29;
    goto LABEL_158;
  }

  v125 = *(v122 + 4) == *(v123 + 68);
LABEL_158:
  if (v125)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !_xzm_chunk_is_full(zone, xz, chunk) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3187)";
    __break(1u);
    JUMPOUT(0x68E44);
  }

  v51 = _xzm_xzone_alloc_from_chunk(v55, v54, chunk_from_isolation, &v50);
  if (!v51)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3190)";
    __break(1u);
    JUMPOUT(0x68E8CLL);
  }

LABEL_162:
  v61 = v47 + 8;
  v223 = (v47 + 8);
  v224 = 3;
  v225 = 3;
  v226 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v222 = *(v226 + 24);
  v221 = 0;
  v220 = v222;
  v219 = 0;
  v16 = v222;
  v17 = v222;
  atomic_compare_exchange_strong_explicit((v47 + 8), &v17, 0, memory_order_release, memory_order_relaxed);
  if (v17 != v16)
  {
    v220 = v17;
  }

  v218 = v17 == v16;
  if (v17 != v16)
  {
    os_unfair_lock_unlock(v223);
  }

  if (v51)
  {
    if ((*(v54 + 87) & 2) != 0)
    {
      if ((v53 & 0x40000000) != 0)
      {
        v18 = *(v54 + 48);
        v67 = v51;
        v66 = v18;
        v68 = v51;
        v70 = v51;
        v69 = v51 & 0xF0FFFFFFFFFFFFFFLL;
        v65 = v51 & 0xF0FFFFFFFFFFFFFFLL;
        v74 = v51 & 0xF0FFFFFFFFFFFFFFLL;
        v73 = v18;
        if ((v18 & 0xF) != 0)
        {
          __break(1u);
          JUMPOUT(0x69010);
        }

        if ((v74 & 0xF) != 0)
        {
          __break(1u);
          JUMPOUT(0x69028);
        }

        v72 = v74;
        v71 = v74 + v73;
        _X9 = v74;
        __asm { STG             X9, [X9] }

        _X9 = v74 + v73;
        __asm { STG             X9, [X9,#-0x10] }

        if (v73 >= 0x21)
        {
          v72 = (v74 + 31) & 0xFFFFFFFFFFFFFFE0;
          v71 = (v74 + v73) & 0xFFFFFFFFFFFFFFE0;
          _X9 = v72;
          __asm { ST2G            X9, [X9] }

          _X8 = v71;
          __asm { ST2G            X8, [X8,#-0x20] }
        }

        v72 = (v74 + 63) & 0xFFFFFFFFFFFFFFC0;
        v71 = (v74 + v73) & 0xFFFFFFFFFFFFFFC0;
        while (v72 < v71)
        {
          __asm { DC              GVA, X8 }

          v72 += 64;
        }

        v51 = v65;
      }

      else
      {
        v51 = _xzm_xzone_block_memtag_retag(v55, v51, *(v54 + 48));
      }
    }

    if ((v50 & 1) == 0 && (v52 & 1) != 0 && *(v54 + 48) >= 0x401uLL)
    {
      v27 = *(v54 + 48);
      _platform_bzero();
    }
  }

  else
  {
    malloc_set_errno_fast(1, 12);
  }

  return v51;
}