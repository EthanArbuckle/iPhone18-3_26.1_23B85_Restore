uint64_t mfmi_statistics(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  *a2 = *(result + 24);
  *(a2 + 8) = 16 * *(result + 4);
  *(a2 + 24) = 0x400000;
  *(a2 + 16) += (8 * (2 * v2 / 0x40uLL) + 224 + vm_page_size - 1) & ~(vm_page_size - 1);
  *(a2 + 16) += (vm_page_size - 1 + 16 * v2) & ~(vm_page_size - 1);
  return result;
}

uint64_t xzm_segment_group_segment_foreach_span(uint64_t a1, uint64_t a2)
{
  v11 = a1 + 2136 + 48 * *(a1 + 16);
  v10 = a1 + 2136;
  if (*(a1 + 20) == 1)
  {
    return (*(a2 + 16))(a2, a1 + 2136, *(a1 + 2176));
  }

  else
  {
    while (v10 < v11)
    {
      v7 = *(v10 + 32) & 0xF;
      v15 = v7 == 2 || v7 - 5 <= 3;
      if (v15 || v7 == 9)
      {
        if (v7 == 2)
        {
          v6 = 1;
        }

        else
        {
          v6 = *(v10 + 40);
        }

        v8 = (*(a2 + 16))(a2, v10, v6);
        if (v8)
        {
          return v8;
        }

        v10 += 48 * v6;
      }

      else
      {
        v5 = v10;
        do
        {
          v10 += 48;
          v4 = *(v10 + 32) & 0xF;
          v14 = v4 == 2 || (v4 - 5) <= 3;
          v3 = 0;
          if (!v14)
          {
            v3 = 0;
            if ((*(v10 + 32) & 0xF) != 9)
            {
              v3 = v10 < v11;
            }
          }
        }

        while (v3);
        v9 = (*(a2 + 16))(a2, v5, (v10 - v5) / 48);
        if (v9)
        {
          return v9;
        }
      }
    }

    return 0;
  }
}

uint64_t xzm_segment_table_foreach(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4)
{
  v8 = 0;
  if (a4)
  {
    v8 = *a4;
  }

  for (i = 0; i < a2; ++i)
  {
    v6 = (*(a1 + 4 * i) & 0x7FFFFFFF) << 14;
    if (v6)
    {
      if (v6 != v8)
      {
        v8 = (*(a1 + 4 * i) & 0x7FFFFFFF) << 14;
        v5 = (*(a3 + 16))(a3, v6);
        if (v5)
        {
          return v5;
        }
      }
    }
  }

  if (a4)
  {
    *a4 = v8;
  }

  return 0;
}

uint64_t xzm_ptr_in_use_enumerator(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t **), void (*a6)(void, uint64_t, uint64_t, void *, uint64_t))
{
  v52 = a1;
  v51 = a2;
  v50 = a3;
  v49 = a4;
  v48 = a5;
  v47 = a6;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v48 = reader_or_in_memory_fallback_2(a5, a1);
  v42 = (v50 & 4) != 0;
  v41 = (v50 & 2) != 0;
  v40 = (v50 & 1) != 0;
  v39 = _xzm_introspect_map_zone_and_main(v52, v49, v48, &v46, &v45, &v44);
  if (v39)
  {
    return v39;
  }

  else
  {
    v43 = v49 == v44;
    if (v49 == v44 && (v38 = *(v45 + 416)) != 0 && (v39 = mfm_introspect(v52, v51, v50, v38, v48, v47)) != 0)
    {
      return v39;
    }

    else
    {
      v28 = _NSConcreteStackBlock;
      v29 = 0x40000000;
      v30 = 0;
      v31 = __xzm_ptr_in_use_enumerator_block_invoke;
      v32 = &__block_descriptor_tmp;
      v36 = v42;
      v37 = v43;
      v33 = v47;
      v35 = v52;
      v34 = v51;
      v17 = _NSConcreteStackBlock;
      v18 = 0x40000000;
      v19 = 0;
      v20 = __xzm_ptr_in_use_enumerator_block_invoke_3;
      v21 = &__block_descriptor_tmp_4;
      v25 = v42;
      v22 = v47;
      v24 = v52;
      v23 = v51;
      v26 = v41;
      v27 = v40;
      if (v43)
      {
        v8 = _NSConcreteStackBlock;
        v9 = 0x40000000;
        v10 = 0;
        v11 = __xzm_ptr_in_use_enumerator_block_invoke_4;
        v12 = &__block_descriptor_tmp_6;
        v16 = v41;
        v13 = v47;
        v15 = v52;
        v14 = v51;
        return _xzm_introspect_enumerate(v52, v48, v49, v46, v44, v45, v40, &v28, &__block_literal_global, &v17, &v8);
      }

      else
      {
        return _xzm_introspect_enumerate(v52, v48, v49, v46, v44, v45, v40, &v28, &__block_literal_global, &v17, 0);
      }
    }
  }
}

void xzm_print_self(_BYTE *a1, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  xzm_print(mach_task_self_, v2, a1, _malloc_default_reader_2, malloc_report_simple);
}

void xzm_statistics_self(uint64_t a1, _OWORD *a2)
{
  if (!*(a1 + 240))
  {
    mfm_lock();
  }

  xzm_force_lock(a1);
  xzm_statistics(mach_task_self_, a1, _malloc_default_reader_2, malloc_report_simple, a2);
  xzm_force_unlock(a1);
  if (!*(a1 + 240))
  {
    mfm_unlock();
  }
}

uint64_t (*reader_or_in_memory_fallback_2(uint64_t a1, int a2))(int a1, uint64_t a2, uint64_t a3, void *a4)
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
    JUMPOUT(0x37560);
  }

  return _malloc_default_reader_2;
}

uint64_t _xzm_introspect_map_zone_and_main(unsigned int a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, unint64_t, void **), void *a4, void *a5, void *a6)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  v13 = a6;
  v12 = 0;
  v11 = a3(a1, a2, 384uLL, &v12);
  if (v11)
  {
    qword_D8128 = "BUG IN LIBMALLOC: failed to map zone";
    __break(1u);
    JUMPOUT(0x3760CLL);
  }

  v10 = v12[25];
  if (v10 <= 0x17F)
  {
    qword_D8128 = "BUG IN LIBMALLOC: inconsistent zone region info";
    __break(1u);
    JUMPOUT(0x37654);
  }

  v11 = v16(v18, v17, v10, &v12);
  if (v11)
  {
    qword_D8128 = "BUG IN LIBMALLOC: failed to map full zone";
    __break(1u);
    JUMPOUT(0x376ACLL);
  }

  v9 = 0;
  if (v12[30])
  {
    v7 = v12[30];
    v11 = v16(v18, v7, 576uLL, &v9);
    if (v11)
    {
      qword_D8128 = "BUG IN LIBMALLOC: failed to map main zone";
      __break(1u);
      JUMPOUT(0x37734);
    }

    v8 = v9[48];
    if (v8 <= 0x23F)
    {
      qword_D8128 = "BUG IN LIBMALLOC: inconsistent main zone info";
      __break(1u);
      JUMPOUT(0x3777CLL);
    }

    v11 = v16(v18, v7, v8, &v9);
    if (v11)
    {
      qword_D8128 = "BUG IN LIBMALLOC: failed to map full main zone";
      __break(1u);
      JUMPOUT(0x377D4);
    }
  }

  else
  {
    v9 = v12;
    if (v12[48] != v10)
    {
      qword_D8128 = "BUG IN LIBMALLOC: inconsistent main zone size";
      __break(1u);
      JUMPOUT(0x37824);
    }

    v7 = v17;
    v8 = v10;
  }

  if (v8 < v9[48])
  {
    qword_D8128 = "BUG IN LIBMALLOC: inconsistent main region size";
    __break(1u);
    JUMPOUT(0x3787CLL);
  }

  if (!v12)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion zone failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_introspect.c:772)";
    __break(1u);
    JUMPOUT(0x378B4);
  }

  if (!v9)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion main failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_introspect.c:773)";
    __break(1u);
    JUMPOUT(0x378E4);
  }

  if (!v7)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion main_address failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_introspect.c:774)";
    __break(1u);
    JUMPOUT(0x37914);
  }

  *v15 = v12;
  *v14 = v9;
  *v13 = v7;
  return 0;
}

uint64_t _xzm_introspect_enumerate(unsigned int a1, uint64_t (*a2)(void, uint64_t, uint64_t, uint64_t **), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v68 = a1;
  v67 = a2;
  v66 = a3;
  v65 = a4;
  v64 = a5;
  v63 = a6;
  v62 = a7;
  v61 = a8;
  v60 = a3 == a5;
  v26 = 1;
  if (a11)
  {
    v26 = v60;
  }

  if ((v26 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !span_enumerator || zone_is_main failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_introspect.c:479)";
    __break(1u);
    JUMPOUT(0x379F4);
  }

  if (v60)
  {
    v25 = *(v63 + 384);
  }

  else
  {
    v25 = *(v65 + 200);
  }

  v59 = v25;
  if (v60)
  {
    v58 = 0;
    v58 = *(v63 + 414) << 6;
    v72 = 0;
    v11 = *(v63 + 384);
    v12 = *(v63 + 480);
    v97 = v64;
    v96 = v63;
    v95 = v11;
    v94 = v12;
    v93 = v58;
    if (v12 >= v64)
    {
      v92 = v94 - v97;
      v91 = 0;
      v13 = __CFADD__(v94 - v97, v93);
      v91 = v94 - v97 + v93;
      v99 = v13;
      if (v13)
      {
        v98 = 0;
      }

      else if (v91 > v95)
      {
        v98 = 0;
      }

      else
      {
        v98 = v96 + v92;
      }
    }

    else
    {
      v98 = 0;
    }

    v57 = v98;
    if (!v98)
    {
      qword_D8128 = "BUG IN LIBMALLOC: Failed to rebase metapools";
      __break(1u);
      JUMPOUT(0x37BB8);
    }

    for (i = 0; i < *(v63 + 414); ++i)
    {
      v55 = v57 + (i << 6);
      for (j = *(v55 + 24); j; j = *v53)
      {
        v53 = 0;
        v52 = v67(v68, j, 16, &v53);
        if (v52)
        {
          qword_D8128 = "BUG IN LIBMALLOC: Failed to map metapool slab";
          __break(1u);
          JUMPOUT(0x37C7CLL);
        }

        v14 = v53[1];
        v15 = *(v55 + 8);
        v16 = *(v55 + 4);
        v52 = (*(v61 + 16))();
        if (v52)
        {
          return v52;
        }
      }
    }
  }

  v51 = 0x10000;
  v71 = 0;
  v17 = *(v63 + 384);
  v18 = *(v63 + 488);
  v88 = v64;
  v87 = v63;
  v86 = v17;
  v85 = v18;
  v84 = 0x10000;
  if (v18 >= v64)
  {
    v83 = v85 - v88;
    v82 = 0;
    v19 = __CFADD__(v85 - v88, v84);
    v82 = v85 - v88 + v84;
    v90 = v19;
    if (v19)
    {
      v89 = 0;
    }

    else if (v82 > v86)
    {
      v89 = 0;
    }

    else
    {
      v89 = v87 + v83;
    }
  }

  else
  {
    v89 = 0;
  }

  v50 = v89;
  if (!v89)
  {
    qword_D8128 = "BUG IN LIBMALLOC: failed to rebase segment table";
    __break(1u);
    JUMPOUT(0x37E68);
  }

  v34 = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = 0;
  v37 = ___xzm_introspect_enumerate_block_invoke;
  v38 = &__block_descriptor_tmp_31;
  v42 = v67;
  v46 = v68;
  v39 = a9;
  v43 = v65;
  v44 = v66;
  v45 = v59;
  v47 = v62 & 1;
  v40 = a10;
  v48 = v60;
  v41 = a11;
  v49 = &v34;
  v33 = 0;
  v32 = xzm_segment_table_foreach(v50, 0x4000uLL, &v34, &v33);
  if (v32)
  {
    return v32;
  }

  else
  {
    v31 = 0;
    v20 = *(v63 + 496);
    v31 = 4 * v20;
    v70 = v20 >> 62 != 0;
    if (v20 >> 62)
    {
      qword_D8128 = "BUG IN LIBMALLOC: failed to compute extended segment table size";
      __break(1u);
      JUMPOUT(0x37FC0);
    }

    v21 = *(v63 + 384);
    v22 = *(v63 + 504);
    v79 = v64;
    v78 = v63;
    v77 = v21;
    v76 = v22;
    v75 = v31;
    if (v22 >= v64)
    {
      v74 = v76 - v79;
      v73 = 0;
      v23 = __CFADD__(v76 - v79, v75);
      v73 = v76 - v79 + v75;
      v81 = v23;
      if (v23)
      {
        v80 = 0;
      }

      else if (v73 > v77)
      {
        v80 = 0;
      }

      else
      {
        v80 = v78 + v74;
      }
    }

    else
    {
      v80 = 0;
    }

    v30 = v80;
    if (v80)
    {
      for (k = 0; k < *(v63 + 496); ++k)
      {
        if (*(v30 + 4 * k))
        {
          v28 = 0;
          if (v67(v68, *(v30 + 4 * k) << 16, 0x10000, &v28))
          {
            qword_D8128 = "BUG IN LIBMALLOC: Failed to map segment table";
            __break(1u);
            JUMPOUT(0x38170);
          }

          v27 = xzm_segment_table_foreach(v28, 0x4000uLL, v49, &v33);
          if (v27)
          {
            return v27;
          }
        }
      }
    }

    return 0;
  }
}

uint64_t __xzm_ptr_in_use_enumerator_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = a4;
  v5[2] = a1;
  if (*(a1 + 52) & 1) != 0 && (*(a1 + 53))
  {
    v5[0] = v8;
    v5[1] = v7;
    (*(a1 + 32))(*(a1 + 48), *(a1 + 40), 4, v5, 1);
  }

  return 0;
}

uint64_t __xzm_ptr_in_use_enumerator_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v19 = a5;
  v18 = a6;
  v17 = a7;
  v16 = a8;
  v15 = a9;
  v14 = a1;
  v13 = *(a4 + 32) & 0xF;
  if ((*(a1 + 52) & 1) != 0 && v13 == 8)
  {
    v12[0] = v22;
    v12[1] = 0x4000;
    (*(a1 + 32))(*(a1 + 48), *(a1 + 40), 4, v12, 1);
  }

  if (*(a1 + 53) & 1) != 0 || (*(a1 + 54))
  {
    v11[0] = v18;
    v11[1] = v19 << 14;
    v25 = v13;
    if (v13 == 2 || v13 == 6 || v13 == 5)
    {
      if (*(a1 + 53))
      {
        (*(a1 + 32))(*(a1 + 48), *(a1 + 40), 2, v11, 1);
      }

      if (*(a1 + 54))
      {
        (*(a1 + 32))(*(a1 + 48), *(a1 + 40), 1, v16, v15);
      }
    }

    else
    {
      (*(a1 + 32))(*(a1 + 48), *(a1 + 40), 3, v11, 1);
    }

    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t __xzm_ptr_in_use_enumerator_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = a5;
  v10 = a6;
  v9 = a1;
  if (*(a1 + 52))
  {
    v8 = 1;
    if (*(v13 + 20) == 1)
    {
      v8 = (*(v12 + 32) & 0xF) != 8;
    }

    if (v8)
    {
      v7[0] = v10;
      v7[1] = v11 << 14;
      (*(a1 + 32))(*(a1 + 48), *(a1 + 40), 2, v7, 1);
    }
  }

  return 0;
}

uint64_t _malloc_default_reader_2(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = 1;
  if (a1)
  {
    v5 = mach_task_is_self() != 0;
  }

  if (!v5)
  {
    __break(1u);
    JUMPOUT(0x38608);
  }

  *a4 = a2;
  return 0;
}

uint64_t ___xzm_introspect_enumerate_block_invoke(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v26 = a2;
  v25[1] = a1;
  v25[0] = 0;
  v24 = (*(a1 + 56))(*(a1 + 88), a2, 14424, v25);
  if (v24)
  {
    qword_D8128 = "BUG IN LIBMALLOC: failed to map segment header";
    __break(1u);
    JUMPOUT(0x386A8);
  }

  v23 = 0;
  v2 = *(a1 + 56);
  v3 = *(a1 + 88);
  v29 = v25[0];
  v31 = v25[0];
  v30 = 0;
  v24 = v2(v3, *(v25[0] + 72), *(v25[0] + 12) << 14, &v23);
  if (v24)
  {
    qword_D8128 = "BUG IN LIBMALLOC: failed to map segment";
    __break(1u);
    JUMPOUT(0x38738);
  }

  v24 = (*(*(a1 + 32) + 16))();
  if (v24)
  {
    return v24;
  }

  else
  {
    v6 = _NSConcreteStackBlock;
    v7 = 1107296256;
    v8 = 0;
    v9 = ___xzm_introspect_enumerate_block_invoke_2;
    v10 = &__block_descriptor_tmp_29;
    v13 = v25[0];
    v14 = v23;
    v15 = *(a1 + 64);
    v16 = *(a1 + 72);
    v17 = *(a1 + 80);
    v21 = *(a1 + 92) & 1;
    v20 = *(a1 + 88);
    v18 = *(a1 + 56);
    v19 = v26;
    v11 = *(a1 + 40);
    v22 = *(a1 + 93) & 1;
    v12 = *(a1 + 48);
    return xzm_segment_group_segment_foreach_span(v25[0], &v6);
  }
}

uint64_t ___xzm_introspect_enumerate_block_invoke_2(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v9 = *(a2 + 32) & 0xF;
  v11 = v9 == 2 || v9 - 5 <= 3;
  if (v11 && *(a2 + 34) == *(*(a1 + 64) + 208))
  {
    v8 = 0;
    if (v9 == 2 || v9 == 6 || v9 == 5)
    {
      v14 = *(a1 + 72);
      v13 = *(*(a1 + 64) + 216) + 96 * *(a2 + 33);
      if (v13 >= v14)
      {
        if (v13 - v14 < 0xFFFFFFFFFFFFFFA0)
        {
          if (v13 - v14 + 96 > *(a1 + 80))
          {
            v15 = 0;
          }

          else
          {
            v15 = *(a1 + 64) + v13 - v14;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      v8 = v15;
      if (!v15)
      {
        qword_D8128 = "BUG IN LIBMALLOC: failed to rebase xzone";
        __break(1u);
        JUMPOUT(0x38B0CLL);
      }
    }

    if (*(a1 + 108))
    {
      return _xzm_introspect_chunk_blocks(*(a1 + 104), *(a1 + 88), *(a1 + 64), *(a1 + 96), *(a1 + 48), a2, a3, *(a1 + 56) - 0x5555555555554000 * ((a2 - *(a1 + 48) - 2136) >> 4), *(*(a1 + 48) + 72) + ((-1431655765 * ((a2 - *(a1 + 48) - 2136) >> 4)) << 14), v8, *(a1 + 32));
    }

    else
    {
      v3 = *(a1 + 96);
      v4 = *(a1 + 48);
      return (*(*(a1 + 32) + 16))(*(a1 + 32));
    }
  }

  else if ((*(a1 + 109) & 1) == 0 || *(a2 + 34))
  {
    return 0;
  }

  else
  {
    v5 = *(a1 + 96);
    v6 = *(a1 + 48);
    return (*(*(a1 + 40) + 16))();
  }
}

uint64_t _xzm_introspect_chunk_blocks(unsigned int a1, unsigned int (*a2)(void, uint64_t, uint64_t, uint64_t **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = *(a6 + 32) & 0xF;
  if (v14 == 2 || v14 == 6 || v14 == 5)
  {
    v13 = *(a10 + 68);
    if ((a7 << 14) / *(a10 + 48) != v13 || v13 >= 0x401)
    {
      qword_D8128 = "BUG IN LIBMALLOC: inconsistent xzone info";
      __break(1u);
      JUMPOUT(0x38D88);
    }

    if (v14 == 5)
    {
      return _xzm_introspect_small_chunk_blocks(a3, a4, a5, a6, a7, a8, a9, a10, a11);
    }

    else
    {
      v12 = 1;
      if (v14 != 2)
      {
        v12 = v14 == 6;
      }

      if (!v12)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion kind == XZM_SLICE_KIND_TINY_CHUNK || kind == XZM_SLICE_KIND_SMALL_FREELIST_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_introspect.c:461)";
        __break(1u);
        JUMPOUT(0x38E34);
      }

      return _xzm_introspect_freelist_chunk_blocks(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
    }
  }

  else
  {
    return (*(a11 + 16))(a11, a4, a5, a6, a7, a9);
  }
}

void __copy_helper_block_8_32b40b48b(uint64_t a1, const void **a2)
{
  _Block_object_assign((a1 + 32), a2[4], 7);
  _Block_object_assign((a1 + 40), a2[5], 7);
  _Block_object_assign((a1 + 48), a2[6], 7);
}

void __destroy_helper_block_8_32b40b48b(const void **a1)
{
  _Block_object_dispose(a1[6], 7);
  _Block_object_dispose(a1[5], 7);
  _Block_object_dispose(a1[4], 7);
}

uint64_t _xzm_introspect_small_chunk_blocks(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *(a8 + 48);
  v13 = *(a8 + 68);
  bzero(v21, 0x4000uLL);
  v12 = 0;
  for (i = 0; i < v13; ++i)
  {
    if ((*(a4 + 32) & 0xF) != 5)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_SMALL_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:973)";
      __break(1u);
      JUMPOUT(0x390E8);
    }

    if (((*a4 >> i) & 1) == 0)
    {
      *&v10 = a7 + i * v14;
      *(&v10 + 1) = v14;
      v21[v12++] = v10;
    }
  }

  return (*(a9 + 16))(a9, a2, a3, a4, a5, a7, a8, v21, v12);
}

uint64_t _xzm_introspect_freelist_chunk_blocks(unsigned int a1, unsigned int (*a2)(void, uint64_t, uint64_t, uint64_t **), uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v72 = a1;
  v71 = a2;
  v70 = a3;
  v69 = a4;
  v68 = a5;
  v67 = a6;
  v66 = a7;
  v65 = a8;
  v64 = 5;
  v63 = *(a10 + 48);
  v11 = 1024;
  if (v63 <= 0x1000)
  {
    v11 = 16;
  }

  v62 = v11;
  v61 = *(a10 + 68);
  v60 = 0;
  v60 = *v67;
  if ((~v60 & 0x7FF) != 0 && (v60 & 0x7FF) != 0x7FE)
  {
    if (((v60 >> 11) & 0x7FF) > v61)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion meta.xca_free_count <= capacity failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_introspect.c:210)";
      __break(1u);
      JUMPOUT(0x39344);
    }

    bzero(v78, 0x4000uLL);
    v59 = (~(v60 >> 22) & 0x3F) == 0;
    v58 = v63 / v62;
    v57 = v60 & 0x7FF;
    v56 = (v60 >> 11) & 0x7FF;
    v55 = 0;
    while (1)
    {
      v22 = 0;
      if (v55 < v56)
      {
        v22 = 0;
        if (v57 <= 0x3FF)
        {
          v22 = v57 % v58 == 0;
        }
      }

      if (!v22)
      {
        break;
      }

      v54 = v57 / v58;
      if (v78[v57 / v58])
      {
        qword_D8128 = "BUG IN LIBMALLOC: loop in freelist";
        __break(1u);
        JUMPOUT(0x3944CLL);
      }

      ++v55;
      LOBYTE(v78[v54]) = 1;
      v53 = v65 + v57 * v62;
      if (malloc_has_sec_transition)
      {
        v75 = v53;
        v76 = v53;
        _X8 = v53;
        __asm { LDG             X8, [X8] }

        v53 = _X8;
      }

      v57 = *(v53 + 8) & 0x7FFLL;
    }

    v52 = v61;
    if (v59)
    {
      if (*(v70 + 240))
      {
        qword_D8128 = "BUG IN LIBMALLOC: cached chunk on non-main zone";
        __break(1u);
        JUMPOUT(0x39510);
      }

      if (v55 != v56)
      {
        qword_D8128 = "BUG IN LIBMALLOC: Cached chunk freelist walk incomplete";
        __break(1u);
        JUMPOUT(0x39548);
      }

      v51 = v70;
      v50 = *(a10 + 80);
      if (v50 >= *(v70 + 212))
      {
        qword_D8128 = "BUG IN LIBMALLOC: out-of-bounds cached xzone index";
        __break(1u);
        JUMPOUT(0x39598);
      }

      v45 = 0;
      v46 = &v45;
      v47 = 0;
      v48 = 32;
      v49 = 0;
      v40 = 0;
      v41 = &v40;
      v42 = 0;
      v43 = 32;
      v44 = 0;
      v30 = _NSConcreteStackBlock;
      v31 = 1107296256;
      v32 = 0;
      v33 = ___xzm_introspect_freelist_chunk_blocks_block_invoke;
      v34 = &__block_descriptor_tmp_45;
      v38 = v50;
      v37 = a9;
      v35 = &v45;
      v36 = &v40;
      v39 = _xzm_introspect_enumerate_thread_caches(v72, v71, v51, &v30);
      if (v39 && v39 != 256)
      {
        qword_D8128 = "BUG IN LIBMALLOC: Failure enumerating thread caches";
        __break(1u);
        JUMPOUT(0x39698);
      }

      if (!v46[3])
      {
        qword_D8128 = "BUG IN LIBMALLOC: Failed to find cache for cached chunk";
        __break(1u);
        JUMPOUT(0x396DCLL);
      }

      if (!v41[3])
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion tc && cache failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_introspect.c:357)";
        __break(1u);
        JUMPOUT(0x39744);
      }

      v29 = *(v41[3] + 18);
      v28 = *(v41[3] + 16);
      v27 = 0;
      while (1)
      {
        v21 = 0;
        if (v27 < v29)
        {
          v21 = 0;
          if (v28 <= 0x3FF)
          {
            v21 = v28 % v58 == 0;
          }
        }

        if (!v21)
        {
          break;
        }

        if (v78[v28 / v58])
        {
          qword_D8128 = "BUG IN LIBMALLOC: loop in local freelist";
          __break(1u);
          JUMPOUT(0x39820);
        }

        ++v27;
        LOBYTE(v78[v28 / v58]) = 1;
        v26 = v65 + v28 * v62;
        if (malloc_has_sec_transition)
        {
          v74 = v65 + v28 * v62;
          v77 = v74;
          _X8 = v74;
          __asm { LDG             X8, [X8] }

          v26 = _X8;
        }

        v28 = *(v26 + 8) & 0x7FFLL;
      }

      if (v28 != 1024)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion block_offset == XZM_FREE_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_introspect.c:385)";
        __break(1u);
        JUMPOUT(0x398D0);
      }

      if (v27 < v29 && v29 <= v61)
      {
        v52 = v61 + v27 - v29;
      }

      _Block_object_dispose(&v40, 8);
      _Block_object_dispose(&v45, 8);
    }

    else
    {
      if (v57 != 1024)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion block_offset == XZM_FREE_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_introspect.c:398)";
        __break(1u);
        JUMPOUT(0x39984);
      }

      if (v55 < v56 && v56 <= v61)
      {
        v52 = v61 + v55 - v56;
      }
    }

    v25 = 0;
    for (i = 0; i < v52; ++i)
    {
      if ((v78[i] & 1) == 0)
      {
        *&v23 = a9 + i * v63;
        *(&v23 + 1) = v63;
        v78[v25++] = v23;
      }
    }

    return (*(a11 + 16))(a11, v69, v68, v67, v66, a9, a10, v78, v25);
  }

  else
  {
    if (((v60 >> 11) & 0x7FF) != 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion meta.xca_free_count == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_introspect.c:204)";
      __break(1u);
      JUMPOUT(0x392CCLL);
    }

    return (*(a11 + 16))(a11, v69, v68, v67, v66, a9, a10);
  }
}

uint64_t _xzm_introspect_enumerate_thread_caches(unsigned int a1, unsigned int (*a2)(void, uint64_t, uint64_t, uint64_t **), uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  if ((*(a3 + 249) & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion main->xzmz_base.xzz_thread_cache_enabled failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_introspect.c:122)";
    __break(1u);
    JUMPOUT(0x39B74);
  }

  v8 = *(v10 + 560);
  v7 = 24 * *(v10 + 212) + 40;
  while (1)
  {
    if (!v8)
    {
      return 0;
    }

    v6 = 0;
    if (v11(v12, v8, v7, &v6))
    {
      qword_D8128 = "BUG IN LIBMALLOC: Failed to map thread cache";
      __break(1u);
      JUMPOUT(0x39C10);
    }

    v5 = (*(v9 + 16))(v9, v8, v6);
    if (v5)
    {
      break;
    }

    v8 = *v6;
  }

  if (v5 != 256)
  {
    qword_D8128 = "BUG IN LIBMALLOC: Failed to enumerate thread cache";
    __break(1u);
    JUMPOUT(0x39C74);
  }

  return 256;
}

uint64_t ___xzm_introspect_freelist_chunk_blocks_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 56);
  v7 = a3 + 24 * v3 + 40;
  if (*(a3 + 24 * v3 + 56) > 0x400u || *(a3 + 24 * v3 + 48) != *(a1 + 48))
  {
    return 0;
  }

  if (*(a3 + 32))
  {
    if (!*(*(*(a1 + 32) + 8) + 24) || *(a3 + 32) > *(*(*(*(a1 + 32) + 8) + 24) + 32))
    {
      *(*(*(a1 + 32) + 8) + 24) = a3;
      *(*(*(a1 + 40) + 8) + 24) = v7;
    }

    return 0;
  }

  v5 = 1;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = *(*(*(*(a1 + 32) + 8) + 24) + 32) != 0;
  }

  if (!v5)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !tc || tc->xtc_teardown_gen failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_introspect.c:329)";
    __break(1u);
    JUMPOUT(0x39DB4);
  }

  *(*(*(a1 + 32) + 8) + 24) = a3;
  *(*(*(a1 + 40) + 8) + 24) = v7;
  return 256;
}

void xzm_print(unsigned int a1, int a2, _BYTE *a3, uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t **), void (*a5)(const char *, ...))
{
  v164 = a1;
  v163 = a2;
  v162 = a3;
  v161 = a4;
  v160 = a5;
  v159 = 0;
  v158 = 0;
  v157 = 0;
  v156 = 0;
  v155 = _xzm_introspect_map_zone_and_main(a1, a3, a4, &v159, &v158, &v157);
  if (!v155)
  {
    v156 = v162 == v157;
    v160("Begin xzone malloc JSON:\n");
    v160("{\n");
    v160("desc: xzone malloc, \n");
    v160("addr: %p, \n", v162);
    v160("segment_size: %zu, \n", 0x400000uLL);
    v160("slice_size: %zu, \n", 0x4000uLL);
    v160("mzone: %d, \n", *(v159 + 208));
    v160("is_main: %d, \n", v156);
    v160("max_list_config: %d, \n", *(v159 + 248) & 3);
    v160("initial_slot_config: %d, \n", (*(v159 + 248) >> 2) & 3);
    v160("slot_initial_threshold: %u, \n", *(v159 + 288));
    v160("max_slot_config: %d, \n", (*(v159 + 248) >> 4) & 3);
    v150 = 0;
    v151 = &v150;
    v152 = 0;
    v153 = 32;
    v154 = 0;
    v145 = 0;
    v146 = &v145;
    v147 = 0;
    v148 = 32;
    v149 = 0;
    v141[0] = 0;
    v141[1] = v141;
    v142 = 0;
    v143 = 32;
    v144 = 0;
    v130 = _NSConcreteStackBlock;
    v131 = 1107296256;
    v132 = 0;
    v133 = __xzm_print_block_invoke;
    v134 = &__block_descriptor_tmp_79;
    v139 = v164;
    v135 = v141;
    v136 = &v150;
    v137 = &v145;
    v138 = v160;
    v140 = &v130;
    v125 = 0;
    v126 = &v125;
    v127 = 0;
    v128 = 32;
    v129 = 1;
    v120 = 0;
    v121 = &v120;
    v122 = 0;
    v123 = 32;
    v124 = 1;
    v109 = _NSConcreteStackBlock;
    v110 = 1107296256;
    v111 = 0;
    v112 = __xzm_print_block_invoke_80;
    v113 = &__block_descriptor_tmp_93;
    v115 = &v125;
    v117 = v160;
    v118 = v158;
    v116 = &v120;
    v114 = &v130;
    v119 = &v109;
    if (v156)
    {
      v160("bucketing_key: %016llx%016llx, \n", *(v158 + 392), *(v158 + 400));
      v160("guard_config: {\n");
      v160("    guards_enabled: %d, \n", *(v158 + 532) & 1);
      v160("    data_guards_enabled: %d, \n", *(v158 + 533) & 1);
      v160("    tiny_run_size: %d, \n", *(v158 + 534));
      v160("    tiny_guard_density: %d, \n", *(v158 + 535));
      v160("    small_run_size: %d, \n", *(v158 + 536));
      v160("    small_guard_density: %d \n", *(v158 + 537));
      (v160)();
      v160("chunk_threshold: %u, \n", *(v158 + 427));
      v160("ptr_bucket_count: %d, \n", *(v158 + 426));
      v160("mte_config: {\n");
      v160("    enabled: %d, \n", *(v158 + 368) & 1);
      v160("    tag_data: %d, \n", *(v158 + 369) & 1);
      v160("    max_block_size: %d \n", *(v158 + 376));
      v160("}, \n");
      v5 = "true";
      if (((*(v158 + 409) >> 3) & 1) == 0)
      {
        v5 = "false";
      }

      v160("defer_tiny: %s, \n", v5);
      v6 = "true";
      if (((*(v158 + 409) >> 2) & 1) == 0)
      {
        v6 = "false";
      }

      v160("defer_small: %s, \n", v6);
      v7 = "true";
      if (((*(v158 + 409) >> 4) & 1) == 0)
      {
        v7 = "false";
      }

      v160("defer_large: %s, \n", v7);
      v8 = "true";
      if (((*(v158 + 409) >> 5) & 1) == 0)
      {
        v8 = "false";
      }

      v160("deallocate_segment: %s, \n", v8);
      v9 = "true";
      if (!*(v158 + 416))
      {
        v9 = "false";
      }

      v160("use_early_alloc: %s, \n", v9);
      v160("batch_size: %u, \n", *(v158 + 424));
      if (*(v158 + 568))
      {
        v108 = *(v158 + 568);
        v107 = 0;
        v106 = 0;
        v155 = _xzm_introspect_map_reclaim_buffer(v164, v161, v108, &v107, &v106);
        if (v155)
        {
          qword_D8128 = "BUG IN LIBMALLOC: failed to map reclaim buffer";
          __break(1u);
          JUMPOUT(0x3A678);
        }

        if (v106)
        {
          v160("reclaim_buffer: { \n");
          v160("    buffer_len: %llu, \n", *(v106 + 16));
          v160("    max_len: %llu, \n", *(v106 + 20));
          v160("    sampling_period_abs: %llu, \n", *(v106 + 48));
          v160("    last_sample_abs: %llu, \n", *(v106 + 56));
          v103 = *(v106 + 64);
          v104 = v103;
          v102 = v103;
          v160("    reclaimable_bytes: %llu, \n", v103);
          v100 = *(v106 + 72);
          v101 = v100;
          v99 = v100;
          v160("    reclaimable_bytes_min: %llu, \n", v100);
          v97 = *(v106 + 80);
          v98 = v97;
          v96 = v97;
          v160("    head: %llu, \n", v97);
          v94 = *(v106 + 88);
          v95 = v94;
          v93 = v94;
          v160("    busy: %llu, \n", v94);
          v91 = *(v106 + 96);
          v92 = v91;
          v90 = v91;
          v160("    tail: %llu, \n", v91);
          v160("    entries: [ \n");
          for (i = 0; i < *(v106 + 16); ++i)
          {
            v88 = v106 + 16 * i + 112;
            v160("        { \n");
            v160("            id: %u, \n", i);
            v160("            address: %p, \n", *v88);
            v160("            size: %u, \n", *(v88 + 8));
            v160("            behavior: %u \n", *(v88 + 12));
            v160("        }");
            if (i < *(v106 + 16) - 1)
            {
              v160(",");
            }

            v160(" \n");
          }

          v160("    ] \n");
        }

        v160("}, \n");
      }

      v160("allocation_front_count: %u, \n", *(v158 + 415));
      v160("range_group_count: %u, \n", *(v158 + 410));
      v160("range_groups: {\n");
      v87 = 0;
      v87 = 80 * *(v158 + 410);
      v170 = 0;
      v10 = *(v158 + 384);
      v11 = *(v158 + 464);
      v204 = v157;
      v203 = v158;
      v202 = v10;
      v201 = v11;
      v200 = v87;
      if (v11 >= v157)
      {
        v199 = v201 - v204;
        v198 = 0;
        v12 = __CFADD__(v201 - v204, v200);
        v198 = v201 - v204 + v200;
        v206 = v12;
        if (v12)
        {
          v205 = 0;
        }

        else if (v198 > v202)
        {
          v205 = 0;
        }

        else
        {
          v205 = v203 + v199;
        }
      }

      else
      {
        v205 = 0;
      }

      v86 = v205;
      if (!v205)
      {
        qword_D8128 = "BUG IN LIBMALLOC: failed to map range_groups";
        __break(1u);
        JUMPOUT(0x3AB9CLL);
      }

      for (j = 0; j < *(v158 + 410); ++j)
      {
        v160("    ");
        if (j)
        {
          v160(", ");
        }

        v84 = (v86 + 80 * j);
        v160("%d: {\n", j);
        v209 = *v84;
        if (v209)
        {
          if (v209 == 2)
          {
            v210 = "pointer";
          }

          else
          {
            v210 = "unknown";
          }
        }

        else
        {
          v210 = "data";
        }

        v160("        id: %s, \n", v210);
        v160("        front: %d, \n", v84[1]);
        v160("        lock: %u, \n", *(v84 + 4));
        v160("        base: %p, \n", *(v84 + 3));
        v160("        size: %zu, \n", *(v84 + 4));
        v160("        skip_addr: %p, \n", *(v84 + 5));
        v160("        skip_size: %zu, \n", *(v84 + 6));
        v160("        next: %p, \n", *(v84 + 7));
        v160("        remaining: %zu, \n", *(v84 + 8));
        v13 = "up";
        if (v84[72])
        {
          v13 = "down";
        }

        v160("        direction: %s\n", v13);
        v160("    }\n");
      }

      v160("}, \n");
      v160("segment_group_ids_count: %u, \n", *(v158 + 411));
      v160("segment_group_front_count: %u, \n", *(v158 + 412));
      v160("segment_group_count: %u, \n", *(v158 + 413));
      v160("segment_groups: {\n");
      v83 = 0;
      v83 = 528 * *(v158 + 413);
      v169 = 0;
      v14 = *(v158 + 384);
      v15 = *(v158 + 472);
      v195 = v157;
      v194 = v158;
      v193 = v14;
      v192 = v15;
      v191 = v83;
      if (v15 >= v157)
      {
        v190 = v192 - v195;
        v189 = 0;
        v16 = __CFADD__(v192 - v195, v191);
        v189 = v192 - v195 + v191;
        v197 = v16;
        if (v16)
        {
          v196 = 0;
        }

        else if (v189 > v193)
        {
          v196 = 0;
        }

        else
        {
          v196 = v194 + v190;
        }
      }

      else
      {
        v196 = 0;
      }

      v82 = v196;
      if (!v196)
      {
        qword_D8128 = "BUG IN LIBMALLOC: failed to map segment_groups";
        __break(1u);
        JUMPOUT(0x3B03CLL);
      }

      for (k = 0; k < *(v158 + 413); ++k)
      {
        v160("    ");
        if (k)
        {
          v160(", ");
        }

        v80 = (v82 + 528 * k);
        v160("%d: {\n", k);
        v207 = *v80;
        if (v207)
        {
          switch(v207)
          {
            case 1:
              v208 = "data_large";
              break;
            case 2:
              v208 = "pointer_large";
              break;
            case 3:
              v208 = "pointer_xzones";
              break;
            default:
              v208 = "unknown";
              break;
          }
        }

        else
        {
          v208 = "data";
        }

        v160("        id: %s, \n", v208);
        v160("        front: %d, \n", v80[1]);
        v160("        range_group: %p, \n", *(v80 + 2));
        v160("        segment_cache: { \n");
        v160("            max_count: %u, \n", *(v80 + 256));
        v160("            count: %u, \n", *(v80 + 257));
        v160("            max_entry_slices: %u, \n", *(v80 + 129));
        v160("            segments: { \n");
        if (*(v80 + 257))
        {
          for (m = *(v80 + 58); m; m = *(v78 + 24))
          {
            v78 = 0;
            v77 = v161(v164, m, 14424, &v78);
            if (v77)
            {
              qword_D8128 = "BUG IN LIBMALLOC: Failed to map cached segment";
              __break(1u);
              JUMPOUT(0x3B310);
            }

            v77 = (v119[2])(v119, m, v78, "                    ");
            if (v77)
            {
              qword_D8128 = "BUG IN LIBMALLOC: Failed to enumerate segment";
              __break(1u);
              JUMPOUT(0x3B36CLL);
            }
          }
        }

        v160("            } \n");
        v160("        } \n");
        v160("    }\n");
      }

      v160("}, \n");
      v160("xzones: {\n");
      v76 = 0;
      v76 = 96 * *(v158 + 210);
      v168 = 0;
      v17 = *(v158 + 384);
      v18 = *(v158 + 216);
      v186 = v157;
      v185 = v158;
      v184 = v17;
      v183 = v18;
      v182 = v76;
      if (v18 >= v157)
      {
        v181 = v183 - v186;
        v180 = 0;
        v19 = __CFADD__(v183 - v186, v182);
        v180 = v181 + v182;
        v188 = v19;
        if (v19)
        {
          v187 = 0;
        }

        else if (v180 <= v184)
        {
          v187 = v185 + v181;
        }

        else
        {
          v187 = 0;
        }
      }

      else
      {
        v187 = 0;
      }

      v75 = v187;
      v74 = v187;
      if (!v187)
      {
        qword_D8128 = "BUG IN LIBMALLOC: failed to map main xzones";
        __break(1u);
        JUMPOUT(0x3B560);
      }

      v73 = 0;
      v72 = 0;
      v71 = 0;
      v70 = 0;
      v72 = *(v158 + 210) * *(v158 + 211);
      v167 = 0;
      v71 = 0;
      v73 = 32 * v72;
      v166 = v72 >> 59 != 0;
      v70 = v166;
      v69 = v166;
      v165 = v166;
      if (v72 >> 59)
      {
        qword_D8128 = "BUG IN LIBMALLOC: failed to compute allocation slots size";
        __break(1u);
        JUMPOUT(0x3B62CLL);
      }

      v20 = *(v158 + 384);
      v21 = *(v158 + 224);
      v177 = v157;
      v176 = v158;
      v175 = v20;
      v174 = v21;
      v173 = v73;
      if (v21 >= v157)
      {
        v172 = v174 - v177;
        v171 = 0;
        v22 = __CFADD__(v174 - v177, v173);
        v171 = v174 - v177 + v173;
        v179 = v22;
        if (v22)
        {
          v178 = 0;
        }

        else if (v171 <= v175)
        {
          v178 = v176 + v172;
        }

        else
        {
          v178 = 0;
        }
      }

      else
      {
        v178 = 0;
      }

      v68 = v178;
      v67 = v178;
      if (!v178)
      {
        qword_D8128 = "BUG IN LIBMALLOC: failed to map main allocation slots";
        __break(1u);
        JUMPOUT(0x3B738);
      }

      for (n = 1; n < *(v159 + 210); ++n)
      {
        v65 = v74 + 96 * n;
        v160("    %d: {\n", n);
        v160("        early_budget: %u, \n", *(v65 + 40));
        v160("        id: %d, \n", *(v65 + 80));
        v160("        bucket: %d, \n", *(v65 + 84));
        v160("        segment_group_id: %d, \n", *(v65 + 42));
        v160("        front: %d, \n", *(v65 + 43));
        if (*(v65 + 48) > 0x1000uLL)
        {
          v160("        batch_count: %u, \n", *(v65 + 32));
        }

        else
        {
          v160("        batch_count: %u, \n", (*v65 >> 57) & 0x3F);
        }

        v160("        block_size: %llu, \n", *(v65 + 48));
        v160("        chunk_count: %llu, \n", *(v65 + 72));
        v160("        chunk_capacity: %u, \n", *(v65 + 68));
        v160("        sequestered: %d,\n", *(v65 + 87) & 1);
        v215 = *(v65 + 85);
        if (v215)
        {
          if (v215 == 1)
          {
            v216 = "CLUSTER";
          }

          else
          {
            if (v215 != 2)
            {
              qword_D8128 = "BUG IN LIBMALLOC: unexpected slot config";
              __break(1u);
              JUMPOUT(0x3BA08);
            }

            v216 = "CPU";
          }
        }

        else
        {
          v216 = "SINGLE";
        }

        v160("        list_config: %s,\n", v216);
        v213 = *(v65 + 86);
        if (v213)
        {
          if (v213 == 1)
          {
            v214 = "CLUSTER";
          }

          else
          {
            if (v213 != 2)
            {
              qword_D8128 = "BUG IN LIBMALLOC: unexpected slot config";
              __break(1u);
              JUMPOUT(0x3BAE4);
            }

            v214 = "CPU";
          }
        }

        else
        {
          v214 = "SINGLE";
        }

        v160("        slot_config: %s,\n", v214);
        v160("        allocation_slots: [\n");
        for (ii = 0; ii < *(v159 + 211); ++ii)
        {
          v63 = (v67 + 32 * (ii * *(v159 + 210) + n));
          v160("            {\n");
          if (*(v65 + 48) <= 0x1000uLL || (*(v159 + 250) & 1) != 0)
          {
            v160("                atomic_value: 0x%llx,\n", *v63);
            v160("                xsg_locked: 0x%llx,\n", *v63 & 1);
            v160("                xsg_waiters: 0x%llx,\n", (*v63 >> 1) & 1);
            v160("                xsc_ptr: 0x%llx,\n", (*v63 >> 2) & 0x7FFFFFFFFFFFLL);
            v160("                operations: %lu,\n", *(v63 + 4));
            v160("                contentions: %lu,\n", *(v63 + 5) & 0xFFFFFF);
            v211 = *(v63 + 23);
            if (v211)
            {
              if (v211 == 1)
              {
                v212 = "CLUSTER";
              }

              else
              {
                if (v211 != 2)
                {
                  qword_D8128 = "BUG IN LIBMALLOC: unexpected slot config";
                  __break(1u);
                  JUMPOUT(0x3BD44);
                }

                v212 = "CPU";
              }
            }

            else
            {
              v212 = "SINGLE";
            }

            v160("                slot_config: %s,\n", v212);
          }

          else
          {
            v160("                chunk: %p,\n", *v63);
            v160("                allocations: %lu,\n", *(v63 + 4));
            v160("                contentions: %lu,\n", *(v63 + 5));
          }

          v160("                last_chunk_empty_ts: %llu\n", v63[3]);
          v160("            }");
          if (ii < *(v159 + 211) - 1)
          {
            v160(",");
          }

          v160("\n");
        }

        v160("        ]\n");
        v160("    }");
        if (n < *(v159 + 210) - 1)
        {
          v160(",");
        }

        v160("\n");
      }

      v160("}, \n");
      v23 = "true";
      if ((*(v159 + 249) & 1) == 0)
      {
        v23 = "false";
      }

      v160("thread_cache_enabled: %s, \n", v23);
      v160("thread_cache_activation_period: %lu, \n", *(v159 + 252));
      v160("thread_cache_activation_contentions: %lu, \n", *(v159 + 256));
      v160("thread_cache_activation_time: %llu, \n", *(v159 + 264));
      if (*(v159 + 249))
      {
        v160("thread_caches: [ \n");
        v59[0] = 0;
        v59[1] = v59;
        v60 = 0;
        v61 = 32;
        v62 = 1;
        v51 = _NSConcreteStackBlock;
        v52 = 1107296256;
        v53 = 0;
        v54 = __xzm_print_block_invoke_212;
        v55 = &__block_descriptor_tmp_229;
        v57 = v160;
        v56 = v59;
        v58 = v159;
        v155 = _xzm_introspect_enumerate_thread_caches(v164, v161, v158, &v51);
        v160("], \n");
        _Block_object_dispose(v59, 8);
      }
    }

    v160("spans: {\n");
    *(v126 + 24) = 1;
    *(v121 + 24) = 0;
    v43 = _NSConcreteStackBlock;
    v44 = 1107296256;
    v45 = 0;
    v46 = __xzm_print_block_invoke_232;
    v47 = &__block_descriptor_tmp_237;
    v50 = v160;
    v49 = &v125;
    v48 = v140;
    v34 = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = 0;
    v37 = __xzm_print_block_invoke_238;
    v38 = &__block_descriptor_tmp_265;
    v41 = v160;
    v40 = &v125;
    v42 = v158;
    v39 = v140;
    if (v156)
    {
      v25 = _NSConcreteStackBlock;
      v26 = 1107296256;
      v27 = 0;
      v28 = __xzm_print_block_invoke_266;
      v29 = &__block_descriptor_tmp_270;
      v32 = v160;
      v31 = &v125;
      v33 = v158;
      v30 = v140;
      v24 = _xzm_introspect_enumerate(v164, v161, v162, v159, v157, v158, 0, &v43, v119, &v34, &v25);
    }

    else
    {
      v24 = _xzm_introspect_enumerate(v164, v161, v162, v159, v157, v158, 0, &v43, v119, &v34, 0);
    }

    v155 = v24;
    if (v146[3])
    {
      mach_vm_deallocate(mach_task_self_, v146[3], 4 * v151[3]);
    }

    if (v155)
    {
      v105 = 1;
    }

    else
    {
      (v160)();
      v160("}\n");
      v160("End xzone malloc JSON\n");
      v105 = 0;
    }

    _Block_object_dispose(&v120, 8);
    _Block_object_dispose(&v125, 8);
    _Block_object_dispose(v141, 8);
    _Block_object_dispose(&v145, 8);
    _Block_object_dispose(&v150, 8);
  }
}

uint64_t __xzm_print_block_invoke(uint64_t a1, mach_vm_offset_t a2, mach_vm_size_t a3, const char *a4)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v19 = a1;
  v18 = 0;
  if (*(a1 + 64))
  {
    v17 = v22 + v21;
    v16 = *(*(*(a1 + 32) + 8) + 24) + *(*(*(a1 + 40) + 8) + 24) * vm_page_size;
    if (*(*(*(a1 + 32) + 8) + 24) > v22 || v16 < v17)
    {
      *(*(*(a1 + 32) + 8) + 24) = v22;
      if (v21 % vm_page_size)
      {
        v7 = v21 / vm_page_size + 1;
      }

      else
      {
        v7 = v21 / vm_page_size;
      }

      v15 = v7;
      if (v7 < 0x400000 / vm_page_size)
      {
        v15 = 0x400000 / vm_page_size;
      }

      if (v15 > *(*(*(a1 + 40) + 8) + 24))
      {
        if (*(*(*(a1 + 48) + 8) + 24))
        {
          mach_vm_deallocate(mach_task_self_, *(*(*(a1 + 48) + 8) + 24), 4 * *(*(*(a1 + 40) + 8) + 24));
          *(*(*(a1 + 48) + 8) + 24) = 0;
        }

        *(*(*(a1 + 40) + 8) + 24) = v15;
        v18 = mach_vm_allocate(mach_task_self_, (*(*(a1 + 48) + 8) + 24), 4 * *(*(*(a1 + 40) + 8) + 24), 1);
        if (v18)
        {
          qword_D8128 = "BUG IN LIBMALLOC: failed to allocate memory for vm stats";
          __break(1u);
          JUMPOUT(0x3C630);
        }
      }

      dispositions_count = v15;
      target_map = *(a1 + 64);
      if (v21 > 0x400000)
      {
        v4 = mach_vm_page_range_query(target_map, v22, v21, *(*(*(a1 + 48) + 8) + 24), &dispositions_count);
      }

      else
      {
        v4 = mach_vm_page_range_query(target_map, v22, 0x400000uLL, *(*(*(a1 + 48) + 8) + 24), &dispositions_count);
      }

      v18 = v4;
      if (v4)
      {
        qword_D8128 = "BUG IN LIBMALLOC: Failed to query vm stats";
        __break(1u);
        JUMPOUT(0x3C6DCLL);
      }
    }

    (*(a1 + 56))("%s    dispositions: ", v20);
    v13 = 0;
    v12 = 0;
    v11 = (v22 - *(*(*(a1 + 32) + 8) + 24)) / vm_page_size;
    for (i = 0; i < v21 / vm_page_size; ++i)
    {
      if (v11 >= *(*(*(a1 + 40) + 8) + 24))
      {
        qword_D8128 = "BUG IN LIBMALLOC: inconsistent slice counts";
        __break(1u);
        JUMPOUT(0x3C7B4);
      }

      v9 = *(*(*(*(a1 + 48) + 8) + 24) + 4 * v11);
      if ((v9 & 8) != 0)
      {
        ++v13;
        (*(a1 + 56))("d");
      }

      else if ((v9 & 0x10) != 0)
      {
        ++v12;
        (*(a1 + 56))("s");
      }

      else
      {
        (*(a1 + 56))("c");
      }

      ++v11;
    }

    (*(a1 + 56))(", \n");
    (*(a1 + 56))("%s    dirty_count: %zu, \n", v20, v13);
    (*(a1 + 56))("%s    swapped_count: %zu, \n", v20, v12);
    return 0;
  }

  else
  {
    return v18;
  }
}

void __copy_helper_block_8_32r40r48r(uint64_t a1, const void **a2)
{
  _Block_object_assign((a1 + 32), a2[4], 8);
  _Block_object_assign((a1 + 40), a2[5], 8);
  _Block_object_assign((a1 + 48), a2[6], 8);
}

void __destroy_helper_block_8_32r40r48r(const void **a1)
{
  _Block_object_dispose(a1[6], 8);
  _Block_object_dispose(a1[5], 8);
  _Block_object_dispose(a1[4], 8);
}

uint64_t __xzm_print_block_invoke_80(uint64_t a1, const void *a2, uint64_t a3, const char *a4)
{
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    (*(a1 + 56))(", ");
  }

  (*(a1 + 56))("%s%p: {\n", a4, a2);
  (*(a1 + 56))("%s    addr: %p, \n", a4, a2);
  v8 = *(a1 + 56);
  v13 = (*a3 - *(*(a1 + 64) + 472)) / 528;
  if (v13)
  {
    switch(v13)
    {
      case 1:
        v8("%s    segment_group: %s, \n", a4, "data_large");
        break;
      case 2:
        v8("%s    segment_group: %s, \n", a4, "pointer_large");
        break;
      case 3:
        v8("%s    segment_group: %s, \n", a4, "pointer_xzones");
        break;
      default:
        v8("%s    segment_group: %s, \n", a4, "unknown");
        break;
    }
  }

  else
  {
    v8("%s    segment_group: %s, \n", a4, "data");
  }

  (*(a1 + 56))("%s    body_addr: %p, \n", a4, *(a3 + 72));
  (*(a1 + 56))("%s    used: %u, \n", a4, *(a3 + 8));
  v7 = *(a1 + 56);
  v14 = *(a3 + 20);
  if (v14)
  {
    if (v14 == 1)
    {
      v7("%s    kind: %s, \n", a4, "huge_segment");
    }

    else
    {
      v7("%s    kind: %s, \n", a4, "unknown");
    }
  }

  else
  {
    v7("%s    kind: %s, \n", a4, "normal_segment");
  }

  if (*(a3 + 80) == -1)
  {
    (*(a1 + 56))("%s    reclaim_id: -1, \n", a4);
  }

  else
  {
    (*(a1 + 56))("%s    reclaim_id: %llu, \n", a4, *(a3 + 80));
  }

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v4 = *(a3 + 72);
    v5 = *(a3 + 12) << 14;
    (*(*(a1 + 32) + 16))();
  }

  (*(a1 + 56))("%s    slice_count: %u, \n", a4, *(a3 + 12));
  (*(a1 + 56))("%s    slice_entry_count: %u \n", a4, *(a3 + 16));
  (*(a1 + 56))("%s}\n", a4);
  *(*(*(a1 + 40) + 8) + 24) = 0;
  return 0;
}

void __copy_helper_block_8_32b40r48r(uint64_t a1, const void **a2)
{
  _Block_object_assign((a1 + 32), a2[4], 7);
  _Block_object_assign((a1 + 40), a2[5], 8);
  _Block_object_assign((a1 + 48), a2[6], 8);
}

void __destroy_helper_block_8_32b40r48r(const void **a1)
{
  _Block_object_dispose(a1[6], 8);
  _Block_object_dispose(a1[5], 8);
  _Block_object_dispose(a1[4], 7);
}

uint64_t _xzm_introspect_map_reclaim_buffer(unsigned int a1, uint64_t (*a2)(void, void, unint64_t, _BYTE *), uint64_t a3, void *a4, void *a5)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = a5;
  v8 = 0;
  *&v7[8] = 0;
  *v7 = a2(a1, a3, 40uLL, &v8);
  if (*v7)
  {
    qword_D8128 = "BUG IN LIBMALLOC: failed to map reclaim buffer metadata";
    qword_D8158 = *v7;
    __break(1u);
    JUMPOUT(0x3CF48);
  }

  v6 = 16 * *(v8 + 8) + 112;
  if (*v8)
  {
    if (v6 % vm_page_size)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion buffer_size % vm_page_quanta_size == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_introspect.c:690)";
      __break(1u);
      JUMPOUT(0x3CFBCLL);
    }

    *v7 = v12(v13, *v8, v6, &v7[4]);
    if (*v7)
    {
      qword_D8128 = "BUG IN LIBMALLOC: failed to map reclaim buffer";
      qword_D8158 = *v7;
      __break(1u);
      JUMPOUT(0x3D01CLL);
    }
  }

  *v10 = v8;
  *v9 = *&v7[4];
  return 0;
}

uint64_t __xzm_print_block_invoke_212(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a1 + 40))("    ");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  else
  {
    (*(a1 + 40))(", ");
  }

  (*(a1 + 40))("{\n");
  (*(a1 + 40))("        thread: %p,\n", *(a3 + 24));
  v4 = *(a3 + 24);
  (*(a1 + 40))("        xz_caches: {\n");
  for (i = 1; i < *(*(a1 + 48) + 212); ++i)
  {
    v7 = a3 + 40 + 24 * i;
    (*(a1 + 40))("            %d: {\n", i);
    (*(a1 + 40))("                xz_idx: %d, \n", i);
    v6 = *(v7 + 16);
    if (v6 == 0xFFFF)
    {
      (*(a1 + 40))("                head: NOT_CACHED, \n");
      (*(a1 + 40))("                timestamp: %llu, \n", *(v7 + 8));
      (*(a1 + 40))("                contentions: %llu, \n", *(v7 + 18));
      (*(a1 + 40))("                allocs: %llu \n", *(v7 + 20));
    }

    else if (v6 == 65534)
    {
      (*(a1 + 40))("                head: EMPTY \n");
    }

    else
    {
      (*(a1 + 40))("                head: 0x%llx, \n", v6);
      (*(a1 + 40))("                chunk: %p, \n", *v7);
      (*(a1 + 40))("                chunk_start: %p, \n", *(v7 + 8));
      (*(a1 + 40))("                head_seqno: 0x%llx, \n", *(v7 + 20));
      (*(a1 + 40))("                free_count: 0x%llx, \n", *(v7 + 18));
      (*(a1 + 40))("                seqno: 0x%llx \n", *(v7 + 22));
    }

    (*(a1 + 40))("            }");
    if (i < *(*(a1 + 48) + 212) - 1)
    {
      (*(a1 + 40))(",");
    }

    (*(a1 + 40))("\n");
  }

  (*(a1 + 40))("        } \n");
  (*(a1 + 40))("    } \n");
  return 0;
}

uint64_t __xzm_print_block_invoke_232(uint64_t a1, const void *a2, int a3, char a4)
{
  (*(a1 + 48))("    ");
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    (*(a1 + 48))(", ");
  }

  (*(a1 + 48))("%p: {\n", a2);
  (*(a1 + 48))("        addr: %p, \n", a2);
  v5 = *(a1 + 48);
  if (a4)
  {
    switch(a4)
    {
      case 1:
        v5("        kind: %s, \n", "segment table slab");
        break;
      case 2:
        v5("        kind: %s, \n", "mzone index slab");
        break;
      case 3:
        v5("        kind: %s, \n", "thread cache slab");
        break;
      case 4:
        v5("        kind: %s, \n", "metapool metadata slab");
        break;
      default:
        v5("        kind: %s, \n", "unknown slab");
        break;
    }
  }

  else
  {
    v5("        kind: %s, \n", "segment metadata slab");
  }

  (*(*(a1 + 32) + 16))();
  (*(a1 + 48))("        size: %u \n", a3);
  (*(a1 + 48))("    }\n");
  *(*(*(a1 + 40) + 8) + 24) = 0;
  return 0;
}

uint64_t __xzm_print_block_invoke_238(uint64_t a1, char *a2, void *a3, uint64_t a4, int a5, const void *a6, uint64_t a7)
{
  (*(a1 + 48))("    ");
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    (*(a1 + 48))(", ");
  }

  (*(a1 + 48))("%p: {\n", a6);
  (*(a1 + 48))("        addr: %p, \n", a6);
  (*(a1 + 48))("        metadata_addr: %p, \n", &a2[a4 - a3]);
  (*(a1 + 48))("        mzone: %d, \n", *(a4 + 34));
  (*(a1 + 48))("        xzone: %d, \n", *(a4 + 33));
  (*(a1 + 48))("        segment: %p, \n", a2);
  (*(a1 + 48))("        segment_group: %zu, \n", (*a3 - *(*(a1 + 56) + 472)) / 528);
  v11 = *(a4 + 32) & 0xF;
  if (v11)
  {
    switch(v11)
    {
      case 1:
        v20 = "single_free";
        break;
      case 2:
        v20 = "tiny_chunk";
        break;
      case 3:
        v20 = "multi_free";
        break;
      case 4:
        v20 = "multi_body";
        break;
      case 5:
        v20 = "small_chunk";
        break;
      case 6:
        v20 = "small_freelist_chunk";
        break;
      case 7:
        v20 = "large_chunk";
        break;
      case 8:
        v20 = "huge_chunk";
        break;
      case 9:
        v20 = "guard_page";
        break;
      default:
        v20 = "unknown";
        break;
    }
  }

  else
  {
    v20 = "invalid";
  }

  (*(a1 + 48))("        kind: %s, \n", v20);
  (*(a1 + 48))("        slice_count: %u, \n", a5);
  v8 = *(a1 + 48);
  if (a7)
  {
    v8("        block_size: %u, \n", *(a7 + 48));
  }

  else
  {
    v8("        block_size: %u, \n", 0);
  }

  (*(a1 + 48))("        in_use: 1, \n");
  (*(a1 + 48))("        slice_metadata: %p, \n", a3[((a4 - (a3 + 267)) / 48) + 11]);
  v10 = (*(*(a1 + 32) + 16))();
  if (!v10)
  {
    if (v11 == 2 || v11 == 6 || v11 == 5)
    {
      (*(a1 + 48))("        bucket: %u,\n", *(a7 + 84));
    }

    switch(v11)
    {
      case 2:
        goto LABEL_38;
      case 5:
        (*(a1 + 48))("        free: 0x%x,\n", *a4);
        (*(a1 + 48))("        used: %u,\n", *(a4 + 4));
        (*(a1 + 48))("        alloc_idx: %u,\n", *(a4 + 12));
        break;
      case 6:
LABEL_38:
        (*(a1 + 48))("        meta: 0x%llx,\n", *a4);
        (*(a1 + 48))("        xca_alloc_head: 0x%llx,\n", *a4 & 0x7FFLL);
        (*(a1 + 48))("        xca_free_count: 0x%llx,\n", (*a4 >> 11) & 0x7FFLL);
        (*(a1 + 48))("        xca_alloc_idx: 0x%llx,\n", (*a4 >> 22) & 0x3FLL);
        (*(a1 + 48))("        xca_on_partial_list: 0x%llx,\n", (*a4 >> 28) & 1);
        (*(a1 + 48))("        xca_on_empty_list: 0x%llx,\n", (*a4 >> 29) & 1);
        (*(a1 + 48))("        xca_walk_locked: 0x%llx,\n", (*a4 >> 30) & 1);
        (*(a1 + 48))("        xca_head_seqno: 0x%llx,\n", (*a4 >> 31) & 0x1FFFLL);
        (*(a1 + 48))("        xca_seqno: 0x%llx,\n", *a4 >> 44);
        break;
    }

    (*(a1 + 48))("        is_preallocated: %d,\n", (*(a4 + 32) & 0x40) != 0);
    (*(a1 + 48))("        is_pristine: %d\n", (*(a4 + 32) & 0x10) != 0);
    (*(a1 + 48))("    }\n");
    *(*(*(a1 + 40) + 8) + 24) = 0;
    return 0;
  }

  return v10;
}

uint64_t __xzm_print_block_invoke_266(uint64_t a1, char *a2, void *a3, uint64_t a4, int a5, const void *a6)
{
  (*(a1 + 48))("    ");
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    (*(a1 + 48))(", ");
  }

  (*(a1 + 48))("%p: {\n", a6);
  (*(a1 + 48))("        addr: %p, \n", a6);
  (*(a1 + 48))("        metadata_addr: %p, \n", &a2[a4 - a3]);
  (*(a1 + 48))("        mzone: %d, \n", *(a4 + 34));
  (*(a1 + 48))("        xzone: %d, \n", *(a4 + 33));
  (*(a1 + 48))("        segment: %p, \n", a2);
  (*(a1 + 48))("        segment_group: %zu, \n", (*a3 - *(*(a1 + 56) + 472)) / 528);
  v15 = *(a4 + 32) & 0xF;
  if (v15)
  {
    switch(v15)
    {
      case 1:
        v16 = "single_free";
        break;
      case 2:
        v16 = "tiny_chunk";
        break;
      case 3:
        v16 = "multi_free";
        break;
      case 4:
        v16 = "multi_body";
        break;
      case 5:
        v16 = "small_chunk";
        break;
      case 6:
        v16 = "small_freelist_chunk";
        break;
      case 7:
        v16 = "large_chunk";
        break;
      case 8:
        v16 = "huge_chunk";
        break;
      case 9:
        v16 = "guard_page";
        break;
      default:
        v16 = "unknown";
        break;
    }
  }

  else
  {
    v16 = "invalid";
  }

  (*(a1 + 48))("        kind: %s, \n", v16);
  (*(a1 + 48))("        slice_count: %u, \n", a5);
  (*(a1 + 48))("        slice_metadata: %p, \n", a3[((a4 - (a3 + 267)) / 48) + 11]);
  v8 = (*(*(a1 + 32) + 16))();
  if (v8)
  {
    return v8;
  }

  else
  {
    (*(a1 + 48))("        is_preallocated: %d,\n", (*(a4 + 32) & 0x40) != 0);
    (*(a1 + 48))("        in_use: 0 \n");
    (*(a1 + 48))("    }\n");
    *(*(*(a1 + 40) + 8) + 24) = 0;
    return 0;
  }
}

uint64_t xzm_statistics(unsigned int a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t **), uint64_t a4, _OWORD *a5)
{
  v31 = a1;
  v30 = a2;
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v25 = 0u;
  v26 = 0u;
  *a5 = 0u;
  a5[1] = v26;
  v29 = reader_or_in_memory_fallback_2(v29, v31);
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = _xzm_introspect_map_zone_and_main(v31, v30, v29, &v24, &v23, &v22);
  if (v20)
  {
    return v20;
  }

  else
  {
    v21 = v30 == v22;
    if (v30 == v22)
    {
      v19 = *(v23 + 416);
      if (v19)
      {
        off_CC5E8(v31, v19, v29, v27);
        *(v27 + 2) = 0;
      }
    }

    v13 = _NSConcreteStackBlock;
    v14 = 0x40000000;
    v15 = 0;
    v16 = __xzm_statistics_block_invoke_3;
    v17 = &__block_descriptor_tmp_310;
    v18 = v27;
    if (v21)
    {
      v7 = _NSConcreteStackBlock;
      v8 = 0x40000000;
      v9 = 0;
      v10 = __xzm_statistics_block_invoke_4;
      v11 = &__block_descriptor_tmp_311;
      v12 = v27;
      return _xzm_introspect_enumerate(v31, v29, v30, v24, v22, v23, 0, &__block_literal_global_306, &__block_literal_global_309, &v13, &v7);
    }

    else
    {
      return _xzm_introspect_enumerate(v31, v29, v30, v24, v22, v23, 0, &__block_literal_global_306, &__block_literal_global_309, &v13, 0);
    }
  }
}

uint64_t __xzm_statistics_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v13 = a5 << 14;
  v10 = a4[4] & 0xF;
  if (v10 != 2)
  {
    if (v10 == 5)
    {
      v8 = *(a4 + 1);
      **(a1 + 32) += v8;
      *(*(a1 + 32) + 8) += v8 * *(a7 + 48);
      goto LABEL_10;
    }

    if (v10 != 6)
    {
      ++**(a1 + 32);
      *(*(a1 + 32) + 8) += v13;
      goto LABEL_10;
    }
  }

  v12 = *a4;
  v11 = *(a7 + 68);
  if ((*a4 & 0x7FF) != 0x7FF && (v12 & 0x7FF) != 0x7FE)
  {
    v7 = (v12 >> 11) & 0x7FF;
    **(a1 + 32) += v11 - v7;
    *(*(a1 + 32) + 8) += (v11 - v7) * *(a7 + 48);
  }

LABEL_10:
  *(*(a1 + 32) + 24) += v13;
  return 0;
}

_DWORD *my_getsectbynamefromheader_64(_DWORD *a1)
{
  v5 = a1 + 8;
  for (i = 0; i < a1[4]; ++i)
  {
    if (*v5 == 25 && (!_platform_strncmp() || a1[3] == 1))
    {
      v4 = v5 + 18;
      for (j = 0; j < v5[16]; ++j)
      {
        if (!_platform_strncmp() && !_platform_strncmp())
        {
          return v4;
        }

        v4 += 20;
      }
    }

    v5 = (v5 + v5[1]);
  }

  return 0;
}

uint64_t pgm_thread_set_disabled(uint64_t result)
{
  if (result)
  {
    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 880) = 0xFFFFFFFFLL;
  }

  else
  {
    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 880) = 0;
  }

  return result;
}

uint64_t pgm_init_config(char a1)
{
  if (a1)
  {
    g_env = a1 & 1;
  }

  if (env_var_0("MallocProbGuard"))
  {
    byte_DA2E1 = 1;
    byte_DA2E2 = env_BOOL_0("MallocProbGuard");
  }

  result = env_var_0("__TRIFactors");
  if (result)
  {
    result = _platform_strstr();
    if (result)
    {
      byte_DA2E3 = 1;
    }
  }

  return result;
}

BOOL pgm_should_enable()
{
  if (byte_DA2E1)
  {
    return byte_DA2E2 & 1;
  }

  else if (g_env)
  {
    return (byte_DA2E3 & 1) != 0 || should_activate(g_env & 1);
  }

  else
  {
    return 0;
  }
}

BOOL should_activate(char a1)
{
  if (malloc_has_sec_transition)
  {
    return 0;
  }

  else if (a1 & 1) != 0 || (is_platform_binary())
  {
    if (a1)
    {
      v1 = 250;
    }

    else
    {
      v1 = 1000;
    }

    return !rand_uniform(v1) && !main_image_has_section();
  }

  else
  {
    return 0;
  }
}

mach_vm_address_t pgm_create_zone(uint64_t a1)
{
  if (*(a1 + 104) < 0x10u)
  {
    __break(1u);
    JUMPOUT(0x3EF00);
  }

  v2 = my_vm_map(16720, 3, 1);
  setup_zone(v2, a1);
  my_vm_protect(v2, 0x4000, 1);
  return v2;
}

uint64_t setup_zone(uint64_t a1, void *a2)
{
  memcpy(a1, &malloc_zone_template_0, 0xC8uLL);
  *(a1 + 200) = a2;
  disable_unsupported_apis(a1, a2);
  configure_zone(a1);
  *(a1 + 240) = quarantine_size(*(a1 + 208));
  *(a1 + 264) = *(a1 + 240) + 0x4000000;
  *(a1 + 272) = my_vm_map(*(a1 + 264), 0, 1);
  *(a1 + 248) = *(a1 + 272) + 0x2000000;
  *(a1 + 256) = *(a1 + 248) + *(a1 + 240);
  my_vm_map_fixed(*(a1 + 248), *(a1 + 240), 0, 13);
  *(a1 + 280) = (*(*(a1 + 200) + 32))(*(a1 + 200), *(a1 + 208), 8);
  *(a1 + 288) = (*(*(a1 + 200) + 32))(*(a1 + 200), *(a1 + 216), 256);
  v3 = 0;
  if (*(a1 + 280))
  {
    v3 = *(a1 + 288) != 0;
  }

  if (!v3)
  {
    __break(1u);
    JUMPOUT(0x3F118);
  }

  return init_lock_0(a1);
}

uint64_t my_vm_protect(mach_vm_address_t a1, uint64_t a2, vm_prot_t a3)
{
  result = mach_vm_protect(mach_task_self_, a1, (a2 + vm_page_size - 1) & ~(vm_page_size - 1), 0, a3);
  if (result)
  {
    __break(1u);
    JUMPOUT(0x3F1C4);
  }

  return result;
}

uint64_t pgm_extract_report_from_corpse(unint64_t a1, void *a2, unsigned int a3, uint64_t a4, unsigned int a5, uint64_t (*a6)(void, void, void))
{
  v6 = 0;
  atomic_compare_exchange_strong_explicit(&crash_reporter_lock_0, &v6, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    os_unfair_lock_lock_with_options();
  }

  v11 = setup_memory_reader(a6);
  report_select_zone = extract_report_select_zone(a1, a2, a3, a4, a5, v11);
  v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v8 = v7;
  atomic_compare_exchange_strong_explicit(&crash_reporter_lock_0, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != v7)
  {
    os_unfair_lock_unlock(&crash_reporter_lock_0);
  }

  return report_select_zone;
}

uint64_t (*setup_memory_reader(uint64_t (*a1)(void, void, void)))(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (!a1)
  {
    __break(1u);
    JUMPOUT(0x3F3F0);
  }

  result = memory_reader_adapter_0;
  g_crm_reader_0 = a1;
  num_read_memory_0 = 0;
  return result;
}

uint64_t extract_report_select_zone(unint64_t a1, void *a2, unsigned int a3, uint64_t a4, unsigned int a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t *))
{
  for (i = 0; i < a5; ++i)
  {
    v7 = is_pgm_zone(*(a4 + 8 * i), a3, a6);
    free_read_memory();
    if (v7 != 257)
    {
      if (v7)
      {
        return v7;
      }

      v8 = diagnose_fault_from_external_process(a1, a2, a3, *(a4 + 8 * i), a6);
      free_read_memory();
      if (v8 != 257)
      {
        return v8;
      }
    }
  }

  return 5;
}

uint64_t rand_uniform(uint32_t a1)
{
  if (!a1)
  {
    __break(1u);
    JUMPOUT(0x3F55CLL);
  }

  return arc4random_uniform(a1);
}

void *disable_unsupported_apis(void *result, void *a2)
{
  v7 = 0;
  if (a2[14])
  {
    v7 = a2[14];
  }

  if (!v7)
  {
    result[14] = 0;
  }

  v6 = 0;
  if (a2[23])
  {
    v6 = a2[23];
  }

  if (!v6)
  {
    result[23] = 0;
  }

  v5 = 0;
  if (a2[15])
  {
    v5 = a2[15];
  }

  if (!v5)
  {
    result[15] = 0;
  }

  v4 = 0;
  if (a2[17])
  {
    v4 = a2[17];
  }

  if (!v4)
  {
    result[17] = 0;
  }

  v3 = 0;
  if (a2[19])
  {
    v3 = a2[19];
  }

  if (!v3)
  {
    result[19] = 0;
  }

  v2 = 0;
  if (a2[24])
  {
    v2 = a2[24];
  }

  if (!v2)
  {
    result[24] = 0;
  }

  return result;
}

BOOL configure_zone(uint64_t a1)
{
  v1 = choose_memory_budget_in_kb();
  v12 = env_uint_0("MallocProbGuardMemoryBudgetInKB", v1);
  v2 = compute_max_allocations(v12);
  *(a1 + 212) = env_uint_0("MallocProbGuardAllocations", v2);
  LODWORD(v3) = *(a1 + 212);
  *(a1 + 208) = env_uint_0("MallocProbGuardSlots", (v3 * 10.0));
  LODWORD(v4) = *(a1 + 212);
  *(a1 + 216) = env_uint_0("MallocProbGuardMetadata", (v4 * 3.0));
  v5 = choose_sample_rate();
  v11 = env_uint_0("MallocProbGuardSampleRate", v5);
  if (v11 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2 * v11;
  }

  *(a1 + 220) = v10;
  *(a1 + 224) = env_uint_0("MallocProbGuardLeftAlignPercentage", 0xAu);
  *(a1 + 228) = env_BOOL_0("MallocProbGuardDebug");
  *(a1 + 232) = env_uint_0("MallocProbGuardDebugLogThrottleInMillis", 0x3E8u);
  if (*(a1 + 228))
  {
    v9 = *(a1 + 208);
    v8 = *(a1 + 216);
    v7 = *(a1 + 212);
    malloc_report(6, "ProbGuard configuration: %u kB budget, 1/%u sample rate, %u/%u/%u allocations/metadata/slots\n");
  }

  result = check_configuration(a1);
  if (!result)
  {
    malloc_report(3, "*** FATAL ERROR - ProbGuard: bad configuration.\n");
    qword_D8128 = "FATAL ERROR - ProbGuard: bad configuration";
    __break(1u);
    JUMPOUT(0x3F9C8);
  }

  return result;
}

mach_vm_address_t my_vm_map_fixed(mach_vm_address_t a1, uint64_t a2, vm_prot_t a3, int a4)
{
  result = my_vm_map_common(a1, a2, a3, 0x4000, a4);
  if (result != a1)
  {
    __break(1u);
    JUMPOUT(0x3FA88);
  }

  return result;
}

uint64_t pgm_size(void *a1, unint64_t a2)
{
  v3 = 0;
  if (a1[31] <= a2)
  {
    v3 = a2 < a1[32];
  }

  if (!v3)
  {
    return (*(a1[25] + 16))(a1[25], a2);
  }

  lock_0(a1);
  v4 = lookup_size(a1, a2);
  unlock_0(a1);
  return v4;
}

uint64_t pgm_malloc(uint64_t a1, vm_size_t a2)
{
  v3 = 0;
  if (a2 <= vm_page_size)
  {
    v3 = 0;
    if (*(a1 + 16684) != *(a1 + 212))
    {
      v10 = *(a1 + 220);
      v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 880);
      if (v8 == -1)
      {
        v11 = 0;
      }

      else
      {
        if (v8)
        {
          v9 = v8 - 1;
        }

        else
        {
          v9 = rand_uniform(v10);
        }

        *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 880) = v9;
        v11 = v9 == 0;
      }

      v3 = v11;
    }
  }

  if (v3 && (lock_0(a1), v4 = allocate(a1, a2, 0x10uLL), unlock_0(a1), v4))
  {
    return v4;
  }

  else
  {
    return (*(*(a1 + 200) + 24))(*(a1 + 200), a2);
  }
}

uint64_t pgm_calloc(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = a2 * a3;
  if (!is_mul_ok(a2, a3))
  {
    return (*(*(a1 + 200) + 32))(*(a1 + 200), a2, a3);
  }

  v4 = 0;
  if (v6 <= vm_page_size)
  {
    v4 = 0;
    if (*(a1 + 16684) != *(a1 + 212))
    {
      v13 = *(a1 + 220);
      v11 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 880);
      if (v11 == -1)
      {
        v14 = 0;
      }

      else
      {
        if (v11)
        {
          v12 = v11 - 1;
        }

        else
        {
          v12 = rand_uniform(v13);
        }

        *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 880) = v12;
        v14 = v12 == 0;
      }

      v4 = v14;
    }
  }

  if (!v4)
  {
    return (*(*(a1 + 200) + 32))(*(a1 + 200), a2, a3);
  }

  lock_0(a1);
  v5 = allocate(a1, v6, 0x10uLL);
  unlock_0(a1);
  if (!v5)
  {
    return (*(*(a1 + 200) + 32))(*(a1 + 200), a2, a3);
  }

  _platform_bzero();
  return v5;
}

uint64_t pgm_valloc(uint64_t a1, vm_size_t a2)
{
  v3 = 0;
  if (a2 <= vm_page_size)
  {
    v3 = 0;
    if (*(a1 + 16684) != *(a1 + 212))
    {
      v10 = *(a1 + 220);
      v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 880);
      if (v8 == -1)
      {
        v11 = 0;
      }

      else
      {
        if (v8)
        {
          v9 = v8 - 1;
        }

        else
        {
          v9 = rand_uniform(v10);
        }

        *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 880) = v9;
        v11 = v9 == 0;
      }

      v3 = v11;
    }
  }

  if (v3 && (lock_0(a1), v4 = allocate(a1, a2, vm_page_size), unlock_0(a1), v4))
  {
    return v4;
  }

  else
  {
    return (*(*(a1 + 200) + 40))(*(a1 + 200), a2);
  }
}

void pgm_free(void *a1, unint64_t a2)
{
  v2 = 0;
  if (a1[31] <= a2)
  {
    v2 = a2 < a1[32];
  }

  if (v2)
  {
    lock_0(a1);
    deallocate(a1, a2);
    unlock_0(a1);
  }

  else
  {
    (*(a1[25] + 48))(a1[25], a2);
  }
}

uint64_t pgm_realloc(uint64_t a1, unint64_t a2, vm_size_t a3)
{
  if (!a2)
  {
    return pgm_malloc(a1, a3);
  }

  v5 = 0;
  if (a3 <= vm_page_size)
  {
    v5 = 0;
    if (*(a1 + 16684) != *(a1 + 212))
    {
      v13 = *(a1 + 220);
      v11 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 880);
      if (v11 == -1)
      {
        v14 = 0;
      }

      else
      {
        if (v11)
        {
          v12 = v11 - 1;
        }

        else
        {
          v12 = rand_uniform(v13);
        }

        *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 880) = v12;
        v14 = v12 == 0;
      }

      v5 = v14;
    }
  }

  if (v5)
  {
    goto LABEL_17;
  }

  v4 = 0;
  if (*(a1 + 248) <= a2)
  {
    v4 = a2 < *(a1 + 256);
  }

  if (!v4)
  {
    return (*(*(a1 + 200) + 56))(*(a1 + 200), a2, a3);
  }

LABEL_17:
  lock_0(a1);
  v6 = reallocate(a1, a2, a3, v5);
  unlock_0(a1);
  return v6;
}

uint64_t pgm_destroy(mach_vm_address_t a1)
{
  malloc_destroy_zone(*(a1 + 200));
  sanitizer_vm_deallocate(*(a1 + 272), *(a1 + 264));
  return sanitizer_vm_deallocate(a1, 16720);
}

uint64_t pgm_memalign(uint64_t a1, vm_size_t a2, vm_size_t a3)
{
  if (a2 > vm_page_size)
  {
    return (*(*(a1 + 200) + 112))(*(a1 + 200), a2, a3);
  }

  if (a2 <= 0x10)
  {
    v5 = 16;
  }

  else
  {
    v5 = a2;
  }

  v4 = 0;
  if (a3 <= vm_page_size)
  {
    v4 = 0;
    if (*(a1 + 16684) != *(a1 + 212))
    {
      v13 = *(a1 + 220);
      v11 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 880);
      if (v11 == -1)
      {
        v14 = 0;
      }

      else
      {
        if (v11)
        {
          v12 = v11 - 1;
        }

        else
        {
          v12 = rand_uniform(v13);
        }

        *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 880) = v12;
        v14 = v12 == 0;
      }

      v4 = v14;
    }
  }

  if (v4 && (lock_0(a1), v6 = allocate(a1, a3, v5), unlock_0(a1), v6))
  {
    return v6;
  }

  else
  {
    return (*(*(a1 + 200) + 112))(*(a1 + 200), a2, a3);
  }
}

void pgm_free_definite_size(void *a1, unint64_t a2, uint64_t a3)
{
  v3 = 0;
  if (a1[31] <= a2)
  {
    v3 = a2 < a1[32];
  }

  if (v3)
  {
    lock_0(a1);
    deallocate(a1, a2);
    unlock_0(a1);
  }

  else
  {
    (*(a1[25] + 120))(a1[25], a2, a3);
  }
}

uint64_t pgm_claimed_address(void *a1, unint64_t a2)
{
  v3 = 0;
  if (a1[31] <= a2)
  {
    v3 = a2 < a1[32];
  }

  if (v3)
  {
    return 1;
  }

  else
  {
    return (*(a1[25] + 136))(a1[25], a2);
  }
}

uint64_t pgm_malloc_with_options(uint64_t a1, vm_size_t a2, vm_size_t a3, uint64_t a4)
{
  if (a2 > vm_page_size)
  {
    return (*(*(a1 + 200) + 152))(*(a1 + 200), a2, a3, a4);
  }

  if (a2 <= 0x10)
  {
    v6 = 16;
  }

  else
  {
    v6 = a2;
  }

  v5 = 0;
  if (a3 <= vm_page_size)
  {
    v5 = 0;
    if (*(a1 + 16684) != *(a1 + 212))
    {
      v15 = *(a1 + 220);
      v13 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 880);
      if (v13 == -1)
      {
        v16 = 0;
      }

      else
      {
        if (v13)
        {
          v14 = v13 - 1;
        }

        else
        {
          v14 = rand_uniform(v15);
        }

        *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 880) = v14;
        v16 = v14 == 0;
      }

      v5 = v16;
    }
  }

  if (!v5)
  {
    return (*(*(a1 + 200) + 152))(*(a1 + 200), a2, a3, a4);
  }

  lock_0(a1);
  v7 = allocate(a1, a3, v6);
  unlock_0(a1);
  if (!v7)
  {
    return (*(*(a1 + 200) + 152))(*(a1 + 200), a2, a3, a4);
  }

  if (a4)
  {
    _platform_bzero();
  }

  return v7;
}

uint64_t pgm_malloc_type_malloc(uint64_t a1, vm_size_t a2, uint64_t a3)
{
  v4 = 0;
  if (a2 <= vm_page_size)
  {
    v4 = 0;
    if (*(a1 + 16684) != *(a1 + 212))
    {
      v12 = *(a1 + 220);
      v10 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 880);
      if (v10 == -1)
      {
        v13 = 0;
      }

      else
      {
        if (v10)
        {
          v11 = v10 - 1;
        }

        else
        {
          v11 = rand_uniform(v12);
        }

        *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 880) = v11;
        v13 = v11 == 0;
      }

      v4 = v13;
    }
  }

  if (v4 && (lock_0(a1), v5 = allocate(a1, a2, 0x10uLL), unlock_0(a1), v5))
  {
    return v5;
  }

  else
  {
    return (*(*(a1 + 200) + 160))(*(a1 + 200), a2, a3);
  }
}

uint64_t pgm_malloc_type_calloc(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = a2 * a3;
  if (!is_mul_ok(a2, a3))
  {
    return (*(*(a1 + 200) + 168))(*(a1 + 200), a2, a3, a4);
  }

  v5 = 0;
  if (v7 <= vm_page_size)
  {
    v5 = 0;
    if (*(a1 + 16684) != *(a1 + 212))
    {
      v15 = *(a1 + 220);
      v13 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 880);
      if (v13 == -1)
      {
        v16 = 0;
      }

      else
      {
        if (v13)
        {
          v14 = v13 - 1;
        }

        else
        {
          v14 = rand_uniform(v15);
        }

        *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 880) = v14;
        v16 = v14 == 0;
      }

      v5 = v16;
    }
  }

  if (!v5)
  {
    return (*(*(a1 + 200) + 168))(*(a1 + 200), a2, a3, a4);
  }

  lock_0(a1);
  v6 = allocate(a1, v7, 0x10uLL);
  unlock_0(a1);
  if (!v6)
  {
    return (*(*(a1 + 200) + 168))(*(a1 + 200), a2, a3, a4);
  }

  _platform_bzero();
  return v6;
}

uint64_t pgm_malloc_type_realloc(uint64_t a1, unint64_t a2, vm_size_t a3, uint64_t a4)
{
  if (!a2)
  {
    return pgm_malloc_type_malloc(a1, a3, a4);
  }

  v6 = 0;
  if (a3 <= vm_page_size)
  {
    v6 = 0;
    if (*(a1 + 16684) != *(a1 + 212))
    {
      v15 = *(a1 + 220);
      v13 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 880);
      if (v13 == -1)
      {
        v16 = 0;
      }

      else
      {
        if (v13)
        {
          v14 = v13 - 1;
        }

        else
        {
          v14 = rand_uniform(v15);
        }

        *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 880) = v14;
        v16 = v14 == 0;
      }

      v6 = v16;
    }
  }

  if (v6)
  {
    goto LABEL_17;
  }

  v5 = 0;
  if (*(a1 + 248) <= a2)
  {
    v5 = a2 < *(a1 + 256);
  }

  if (!v5)
  {
    return (*(*(a1 + 200) + 176))(*(a1 + 200), a2, a3, a4);
  }

LABEL_17:
  lock_0(a1);
  v7 = reallocate(a1, a2, a3, v6);
  unlock_0(a1);
  return v7;
}

uint64_t pgm_malloc_type_memalign(uint64_t a1, vm_size_t a2, vm_size_t a3, uint64_t a4)
{
  if (a2 > vm_page_size)
  {
    return (*(*(a1 + 200) + 184))(*(a1 + 200), a2, a3, a4);
  }

  if (a2 <= 0x10)
  {
    v6 = 16;
  }

  else
  {
    v6 = a2;
  }

  v5 = 0;
  if (a3 <= vm_page_size)
  {
    v5 = 0;
    if (*(a1 + 16684) != *(a1 + 212))
    {
      v15 = *(a1 + 220);
      v13 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 880);
      if (v13 == -1)
      {
        v16 = 0;
      }

      else
      {
        if (v13)
        {
          v14 = v13 - 1;
        }

        else
        {
          v14 = rand_uniform(v15);
        }

        *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 880) = v14;
        v16 = v14 == 0;
      }

      v5 = v16;
    }
  }

  if (v5 && (lock_0(a1), v7 = allocate(a1, a3, v6), unlock_0(a1), v7))
  {
    return v7;
  }

  else
  {
    return (*(*(a1 + 200) + 184))(*(a1 + 200), a2, a3, a4);
  }
}

uint64_t pgm_malloc_type_malloc_with_options(uint64_t a1, vm_size_t a2, vm_size_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 > vm_page_size)
  {
    return (*(*(a1 + 200) + 192))(*(a1 + 200), a2, a3, a4, a5);
  }

  if (a2 <= 0x10)
  {
    v7 = 16;
  }

  else
  {
    v7 = a2;
  }

  v6 = 0;
  if (a3 <= vm_page_size)
  {
    v6 = 0;
    if (*(a1 + 16684) != *(a1 + 212))
    {
      v17 = *(a1 + 220);
      v15 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 880);
      if (v15 == -1)
      {
        v18 = 0;
      }

      else
      {
        if (v15)
        {
          v16 = v15 - 1;
        }

        else
        {
          v16 = rand_uniform(v17);
        }

        *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 880) = v16;
        v18 = v16 == 0;
      }

      v6 = v18;
    }
  }

  if (!v6)
  {
    return (*(*(a1 + 200) + 192))(*(a1 + 200), a2, a3, a4, a5);
  }

  lock_0(a1);
  v8 = allocate(a1, a3, v7);
  unlock_0(a1);
  if (!v8)
  {
    return (*(*(a1 + 200) + 192))(*(a1 + 200), a2, a3, a4, a5);
  }

  if (a4)
  {
    _platform_bzero();
  }

  return v8;
}

uint64_t lock_0(uint64_t result)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit((result + 16680), &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    return os_unfair_lock_lock_with_options();
  }

  return result;
}

uint64_t lookup_size(void *a1, unint64_t a2)
{
  v3 = lookup_slot(a1, a2);
  if (v3 < 0)
  {
    return *(a1[35] + 8 * v3 + 4);
  }

  else
  {
    return 0;
  }
}

void unlock_0(uint64_t a1)
{
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v2 = v1;
  atomic_compare_exchange_strong_explicit((a1 + 16680), &v2, 0, memory_order_release, memory_order_relaxed);
  if (v2 != v1)
  {
    os_unfair_lock_unlock((a1 + 16680));
  }
}

uint64_t lookup_slot(void *a1, unint64_t a2)
{
  v4 = 0;
  if (a1[31] <= a2)
  {
    v4 = a2 < a1[32];
  }

  if (!v4)
  {
    __break(1u);
    JUMPOUT(0x41D60);
  }

  if (a1[31] % vm_page_size)
  {
    __break(1u);
    JUMPOUT(0x41D98);
  }

  v9 = nearest_slot(a1, a2);
  v8 = a2 % vm_page_size;
  v7 = *(a1[35] + 8 * v9 + 6);
  v6 = v7 + *(a1[35] + 8 * v9 + 4);
  if (is_guard_page(a1, a2))
  {
    v5 = 3;
  }

  else if (v8 == v7)
  {
    v5 = 0;
  }

  else if (v7 >= v8 || v8 >= v6)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  LODWORD(v12) = v9;
  HIDWORD(v12) = v13 & 0x80000000 | v5 & 0x7FFFFFFF;
  v3 = 0;
  if ((*(a1[35] + 8 * v9) & 3) == 1)
  {
    v3 = v5 == 0;
  }

  HIDWORD(v12) = HIDWORD(v12) & 0x7FFFFFFF | (v3 << 31);
  return v12;
}

uint64_t nearest_slot(uint64_t a1, unint64_t a2)
{
  if (a2 >= *(a1 + 248) + vm_page_size)
  {
    if (a2 < *(a1 + 256) - vm_page_size)
    {
      v3 = (page_idx(a1, a2) - 1) / 2;
      if (is_guard_page(a1, a2) && a2 % vm_page_size >= vm_page_size / 2)
      {
        ++v3;
      }

      return v3;
    }

    else
    {
      return (*(a1 + 208) - 1);
    }
  }

  else
  {
    return 0;
  }
}

vm_size_t page_idx(uint64_t a1, unint64_t a2)
{
  v3 = 0;
  if (*(a1 + 248) <= a2)
  {
    v3 = a2 < *(a1 + 256);
  }

  if (!v3)
  {
    __break(1u);
    JUMPOUT(0x42108);
  }

  return (a2 - *(a1 + 248)) / vm_page_size;
}

vm_size_t allocate(uint64_t a1, vm_size_t a2, vm_size_t a3)
{
  if (a2 > vm_page_size)
  {
    __break(1u);
    JUMPOUT(0x42180);
  }

  v5 = 0;
  if (a3 >= 0x10)
  {
    v5 = a3 <= vm_page_size;
  }

  if (!v5)
  {
    __break(1u);
    JUMPOUT(0x421D0);
  }

  if (!is_power_of_2(a3))
  {
    __break(1u);
    JUMPOUT(0x421E8);
  }

  if (*(a1 + 16684) == *(a1 + 212))
  {
    return 0;
  }

  v13 = block_size(a2);
  v10 = choose_available_slot(a1);
  v9 = choose_metadata(a1, v10);
  v8 = choose_offset_on_page(v13, a3, *(a1 + 224), vm_page_size);
  v7 = page_addr(a1, v10);
  mark_read_write(v7);
  LODWORD(v6) = (4 * v9) | 1;
  WORD2(v6) = v13;
  HIWORD(v6) = v8;
  *(*(a1 + 280) + 8 * v10) = v6;
  *(*(a1 + 288) + (v9 << 8)) = v10;
  v16 = *(a1 + 288) + (v9 << 8);
  *(v16 + 4) = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 8);
  *(v16 + 12) = mach_absolute_time();
  *(v16 + 22) = 0u;
  *(v16 + 38) = 0;
  *(v16 + 20) = trace_collect(v16 + 40, 216);
  ++*(a1 + 16684);
  *(a1 + 16696) += v13;
  if (*(a1 + 16696) > *(a1 + 16704))
  {
    v4 = *(a1 + 16696);
  }

  else
  {
    v4 = *(a1 + 16704);
  }

  *(a1 + 16704) = v4;
  debug_zone(a1, "allocated", v7 + v8);
  return v7 + v8;
}

BOOL is_power_of_2(uint64_t a1)
{
  v1 = vcnt_s8(a1);
  v1.i16[0] = vaddlv_u8(v1);
  return v1.i32[0] == 1;
}

unint64_t block_size(uint64_t a1)
{
  if (a1)
  {
    return (a1 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  else
  {
    return 16;
  }
}

uint64_t choose_available_slot(uint64_t a1)
{
    ;
  }

  *(a1 + 16692) = (i + 1) % *(a1 + 208);
  return i;
}

uint64_t choose_metadata(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 16688) >= *(a1 + 216))
  {
    if (*(*(a1 + 288) + ((*(*(a1 + 280) + 8 * a2) >> 2) << 8)) == a2)
    {
      return *(*(a1 + 280) + 8 * a2) >> 2;
    }

    else
    {
      do
      {
        v4 = rand_uniform(*(a1 + 216));
      }

      while ((*(*(a1 + 280) + 8 * *(*(a1 + 288) + (v4 << 8))) & 3) != 2);
      return v4;
    }
  }

  else
  {
    v2 = *(a1 + 16688);
    *(a1 + 16688) = v2 + 1;
    return v2;
  }
}

uint64_t choose_offset_on_page(unint64_t a1, unint64_t a2, unsigned int a3, unsigned __int16 a4)
{
  v9 = a1;
  v8 = a2;
  if (a1 > a4)
  {
    __break(1u);
    JUMPOUT(0x42740);
  }

  v5 = 0;
  if (a2 <= a4)
  {
    v5 = is_power_of_2(a2);
  }

  if (!v5)
  {
    __break(1u);
    JUMPOUT(0x42780);
  }

  if (!is_power_of_2(a4))
  {
    __break(1u);
    JUMPOUT(0x4279CLL);
  }

  if (a3 > 0x64)
  {
    __break(1u);
    JUMPOUT(0x427B8);
  }

  if (rand_uniform(0x64u) >= a3)
  {
    return ((a4 - v9) & ~(v8 - 1));
  }

  else
  {
    return 0;
  }
}

vm_size_t page_addr(uint64_t a1, unsigned int a2)
{
  if (a2 >= *(a1 + 208))
  {
    __break(1u);
    JUMPOUT(0x42844);
  }

  return *(a1 + 248) + (2 * a2 + 1) * vm_page_size;
}

uint64_t debug_zone(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6 = result;
  if (*(result + 228))
  {
    if (should_log(result))
    {
      v4 = *(v6 + 212);
      v3 = *(v6 + 16684);
      malloc_report(6, "ProbGuard: %9s 0x%llx, fill state: %3u/%u\n");
    }

    result = pgm_check(v6);
    if (!result)
    {
      malloc_report(3, "*** FATAL ERROR - ProbGuard: zone integrity check failed.\n");
      qword_D8128 = "FATAL ERROR - ProbGuard: zone integrity check failed";
      qword_D8158 = a3;
      __break(1u);
      JUMPOUT(0x42998);
    }
  }

  return result;
}

BOOL should_log(uint64_t a1)
{
  v3 = mach_absolute_time();
  v2 = to_millis(v3 - *(a1 + 16712)) >= *(a1 + 232);
  if (v2)
  {
    *(a1 + 16712) = v3;
  }

  return v2;
}

uint64_t pgm_check(uint64_t a1)
{
  v2 = 0;
  if (check_zone(a1))
  {
    v2 = 0;
    if (check_slots(a1))
    {
      v2 = check_metadata(a1);
    }
  }

  return v2 & 1;
}

unint64_t to_millis(uint64_t a1)
{
  v3 = a1;
  info = 0;
  mach_timebase_info(&info);
  return v3 * info.numer / info.denom / 0xF4240;
}

BOOL check_zone(uint64_t a1)
{
  v3 = 0;
  if (check_configuration(a1))
  {
    v2 = *(a1 + 240);
    v3 = 0;
    if (v2 == quarantine_size(*(a1 + 208)))
    {
      v3 = 0;
      if (!(*(a1 + 248) % vm_page_size))
      {
        v3 = 0;
        if (!(*(a1 + 240) % vm_page_size))
        {
          v3 = 0;
          if (*(a1 + 248) + *(a1 + 240) == *(a1 + 256))
          {
            v3 = 0;
            if (*(a1 + 248) < *(a1 + 256))
            {
              v3 = 0;
              if (*(a1 + 264) == *(a1 + 240) + 0x4000000)
              {
                v3 = 0;
                if (*(a1 + 272) == *(a1 + 248) - 0x2000000)
                {
                  v3 = 0;
                  if (*(a1 + 272) < *(a1 + 248))
                  {
                    v3 = 0;
                    if (*(a1 + 16684) <= *(a1 + 212))
                    {
                      v3 = 0;
                      if (*(a1 + 16688) <= *(a1 + 216))
                      {
                        v3 = 0;
                        if (*(a1 + 16684) <= *(a1 + 16688))
                        {
                          v3 = 0;
                          if (*(a1 + 16692) < *(a1 + 208))
                          {
                            v3 = 0;
                            if (*(a1 + 280))
                            {
                              v3 = 0;
                              if (*(a1 + 288))
                              {
                                return *(a1 + 16696) <= *(a1 + 16704);
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
  }

  return v3;
}

BOOL check_slots(uint64_t a1)
{
  v6 = 0;
  v5 = 0;
  for (i = 0; i < *(a1 + 208); ++i)
  {
    v3 = (*(a1 + 280) + 8 * i);
    if ((check_slot(a1, v3) & 1) == 0)
    {
      return 0;
    }

    if ((*v3 & 3) == 1)
    {
      ++v6;
      v5 += *(*(a1 + 280) + 8 * i + 4);
    }
  }

  v2 = 0;
  if (v6 == *(a1 + 16684))
  {
    return v5 == *(a1 + 16696);
  }

  return v2;
}

uint64_t check_metadata(uint64_t a1)
{
  for (i = 0; i < *(a1 + 16688); ++i)
  {
    if (!check_md(a1, (*(a1 + 288) + (i << 8))))
    {
      v4 = 0;
      return v4 & 1;
    }
  }

  v4 = 1;
  return v4 & 1;
}

BOOL check_configuration(_DWORD *a1)
{
  v4 = 0;
  if (a1[53])
  {
    v4 = 0;
    if (a1[53] <= a1[54] / 2u)
    {
      v4 = 0;
      if (a1[54] <= a1[52])
      {
        v1 = a1[52];
        v4 = 0;
        if (a1[55])
        {
          v2 = a1[56];
          return a1[56] <= 0x64u;
        }
      }
    }
  }

  return v4;
}

uint64_t check_slot(uint64_t a1, uint64_t a2)
{
  if ((*a2 & 3) != 0)
  {
    v4 = 0;
    if ((*a2 & 3) != 3)
    {
      v4 = 0;
      if (*(a1 + 16688) > *a2 >> 2)
      {
        v4 = 0;
        if (*(a2 + 4) <= vm_page_size)
        {
          v3 = *(a2 + 4);
          v4 = 0;
          if (v3 == block_size(v3))
          {
            v4 = 0;
            if (*(a2 + 6) <= vm_page_size)
            {
              v4 = 0;
              if (!(*(a2 + 6) % 0x10uLL))
              {
                v4 = *(a2 + 6) + *(a2 + 4) <= vm_page_size;
              }
            }
          }
        }
      }
    }

    v6 = v4;
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

BOOL check_md(uint64_t a1, unsigned int *a2)
{
  v3 = 0;
  if (*a2 < *(a1 + 208))
  {
    v3 = 0;
    if (*(*(a1 + 280) + 8 * *a2) >> 2 == (a2 - *(a1 + 288)) / 256)
    {
      return *(a2 + 10) + *(a2 + 19) <= 0xD8;
    }
  }

  return v3;
}

uint64_t deallocate(uint64_t a1, uint64_t a2)
{
  v6 = lookup_slot(a1, a2);
  if (v6 >= 0)
  {
    malloc_report(3, "*** FATAL ERROR - ProbGuard: invalid pointer passed to free.\n");
    qword_D8128 = "FATAL ERROR - ProbGuard: invalid pointer passed to free";
    qword_D8158 = a2;
    __break(1u);
    JUMPOUT(0x43338);
  }

  v5 = *(*(a1 + 280) + 8 * v6) >> 2;
  *(*(a1 + 280) + 8 * v6) = *(*(a1 + 280) + 8 * v6) & 0xFFFFFFFC | 2;
  v9 = *(a1 + 288) + (v5 << 8);
  *(v9 + 22) = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 8);
  *(v9 + 30) = mach_absolute_time();
  if (*(v9 + 20) > 0x6Bu)
  {
    v3 = 108;
  }

  else
  {
    v3 = *(v9 + 20);
  }

  *(v9 + 20) = v3;
  *(v9 + 38) = trace_collect(v9 + v3 + 40, 216 - v3);
  --*(a1 + 16684);
  *(a1 + 16696) -= *(*(a1 + 280) + 8 * v6 + 4);
  v4 = page_addr(a1, v6);
  mark_inaccessible(v4);
  return debug_zone(a1, "freed", a2);
}

uint64_t mark_inaccessible(void *a1)
{
  if (madvise(a1, vm_page_size, 7))
  {
    __break(1u);
    JUMPOUT(0x43594);
  }

  return my_vm_protect(a1, vm_page_size, 0);
}

vm_size_t reallocate(uint64_t a1, unint64_t a2, vm_size_t a3, int a4)
{
  v6 = 0;
  if (*(a1 + 248) <= a2)
  {
    v6 = a2 < *(a1 + 256);
  }

  v5 = 1;
  if (!v6)
  {
    v5 = a4 != 0;
  }

  if (!v5)
  {
    __break(1u);
    JUMPOUT(0x4366CLL);
  }

  if (v6)
  {
    v8 = lookup_size(a1, a2);
  }

  else
  {
    v8 = (*(*(a1 + 200) + 16))();
  }

  if (!v8)
  {
    malloc_report(3, "*** FATAL ERROR - ProbGuard: invalid pointer passed to realloc.\n");
    qword_D8128 = "FATAL ERROR - ProbGuard: invalid pointer passed to realloc";
    qword_D8158 = a2;
    __break(1u);
    JUMPOUT(0x43704);
  }

  if (!a4 || *(a1 + 16684) == *(a1 + 212))
  {
    v7 = (*(*(a1 + 200) + 24))();
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    v7 = allocate(a1, a3, 0x10uLL);
    if (!v7)
    {
      __break(1u);
      JUMPOUT(0x43768);
    }
  }

  _platform_memmove();
  if (v6)
  {
    deallocate(a1, a2);
  }

  else
  {
    (*(*(a1 + 200) + 48))();
  }

  return v7;
}

uint64_t pgm_enumerator(unsigned int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void (*a6)(void, uint64_t, uint64_t, vm_size_t *))
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = a5;
  v17 = a6;
  v16 = a3 & 1;
  v15 = a3 & 2;
  if ((a3 & 1) != 0 || v15)
  {
    bzero(v24, 0x200uLL);
    zone = read_zone(v22, v19, v18, v24, 2);
    if (zone)
    {
      return zone;
    }

    else
    {
      v13 = v24;
      for (i = 0; i < *(v13 + 52); ++i)
      {
        if ((*(*(v13 + 35) + 8 * i) & 3) == 1)
        {
          if (v15)
          {
            v11 = page_addr(v13, i);
            v10[0] = v11;
            v10[1] = vm_page_size;
            (v17)(v22, v21, 2, v10, 1);
          }

          if (v16)
          {
            v9 = block_addr(v13, i);
            v8 = 0;
            v7 = v9;
            v8 = *(*(v13 + 35) + 8 * i + 4);
            v17(v22, v21, 1, &v7);
          }
        }
      }

      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t pgm_good_size(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (*(*(a1 + 200) + 96))
  {
    v3 = *(*(a1 + 200) + 96);
  }

  return (*(v3 + 8))(*(a1 + 200), a2);
}

__n128 pgm_statistics(uint64_t a1, _OWORD *a2)
{
  LODWORD(v3) = *(a1 + 16684);
  *(&v3 + 1) = *(a1 + 16696);
  v4.n128_u64[0] = *(a1 + 16704);
  v4.n128_u64[1] = v3 * vm_page_size;
  *a2 = v3;
  result = v4;
  a2[1] = v4;
  return result;
}

BOOL pgm_zone_locked(uint64_t a1)
{
  v2 = trylock_0(a1);
  if (v2)
  {
    unlock_0(a1);
  }

  return !v2;
}

uint64_t pgm_print_task(int a1, unsigned int a2, const void *a3, uint64_t a4, uint64_t (*a5)(const char *, ...))
{
  bzero(v11, 0x200uLL);
  if (read_zone(a1, a3, a4, v11, 2))
  {
    return a5("Failed to read ProbGuard zone at %p\n", a3);
  }

  else
  {
    return print_zone(v11, a2 >= 2, a5);
  }
}

uint64_t pgm_statistics_task(int a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  bzero(v11, 0x200uLL);
  zone = read_zone(a1, a2, a3, v11, 1);
  if (zone)
  {
    return zone;
  }

  else
  {
    pgm_statistics(v11, a4);
    return 0;
  }
}

uint64_t read_zone(int a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v14 = a1;
  v13 = a2;
  __dst = a4;
  v10 = a5;
  v12 = reader_or_in_memory_fallback_3(a3, a1);
  __src = 0;
  v8 = v12(v14, v13, 16720, &__src);
  if (v8)
  {
    return v8;
  }

  else
  {
    if (check_zone(__src))
    {
      memcpy(__dst, __src, 0x4150uLL);
      if ((v10 & 2) != 0)
      {
        v7 = v12(v14, *(__dst + 35), 8 * *(__dst + 52), __dst + 35);
        if (v7)
        {
          return v7;
        }

        if (!check_slots(__dst))
        {
          return 5;
        }
      }

      if ((v10 & 4) != 0)
      {
        v6 = v12(v14, *(__dst + 36), *(__dst + 54) << 8, __dst + 36);
        if (v6)
        {
          return v6;
        }

        if ((check_metadata(__dst) & 1) == 0)
        {
          return 5;
        }
      }

      return 0;
    }

    return 5;
  }
}

uint64_t (*reader_or_in_memory_fallback_3(uint64_t a1, int a2))(int a1, uint64_t a2, uint64_t a3, void *a4)
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
    JUMPOUT(0x440C4);
  }

  return _malloc_default_reader_3;
}

uint64_t _malloc_default_reader_3(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = 1;
  if (a1)
  {
    v5 = mach_task_is_self() != 0;
  }

  if (!v5)
  {
    __break(1u);
    JUMPOUT(0x4414CLL);
  }

  *a4 = a2;
  return 0;
}

uint64_t print_zone(uint64_t a1, int a2, void (*a3)(const char *, ...))
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  memset(v12, 0, sizeof(v12));
  v3 = pgm_statistics(a1, v12);
  v5 = *(v15 + 208);
  v13("ProbGuard zone: slots: %u, slots in use: %u, size in use: %llu, max size in use: %llu, allocated size: %llu\n", v3);
  v13("Quarantine: size: %llu, address range: [%p - %p)\n", *(v15 + 240), *(v15 + 248), *(v15 + 256));
  result = (v13)("Slots (#, state, offset, size, block address):\n");
  for (i = 0; i < *(v15 + 208); ++i)
  {
    v10 = *(*(v15 + 280) + 8 * i) & 3;
    if (v10 == 1 || v14)
    {
      v9 = slot_state_labels[v10];
      v8 = *(*(v15 + 280) + 8 * i + 6);
      v7 = *(*(v15 + 280) + 8 * i + 4);
      v6 = block_addr(v15, i);
      result = (v13)("%4u, %9s, %4u, %4u, %p\n", i, v9, v8, v7, v6);
    }
  }

  return result;
}

BOOL trylock_0(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 16680), &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  return v1 == 0;
}

uint64_t env_uint_0(const char *a1, unsigned int a2)
{
  __str = env_var_0(a1);
  if (__str)
  {
    return strtoul(__str, 0, 0);
  }

  else
  {
    return a2;
  }
}

uint64_t compute_max_allocations(uint64_t a1)
{
  v2 = ((a1 << 10) - ((vm_page_size + 16719) & -vm_page_size)) / (vm_page_size + 0x50uLL * 20.0 + 80.0 + 768.0);
  if (a1 << 10 < ((vm_page_size + 16719) & -vm_page_size) || !v2)
  {
    malloc_report(3, "*** FATAL ERROR - ProbGuard: memory budget too small.\n");
    qword_D8128 = "FATAL ERROR - ProbGuard: memory budget too small";
    __break(1u);
    JUMPOUT(0x445BCLL);
  }

  return v2;
}

mach_vm_address_t my_vm_map_common(mach_vm_address_t a1, uint64_t a2, vm_prot_t cur_protection, int a4, int a5)
{
  v12 = a1;
  v11 = a2;
  v10 = cur_protection;
  v9 = a4;
  v8 = a5;
  v7 = mach_task_self_;
  address = a1;
  if (mach_vm_map(mach_task_self_, &address, (a2 + vm_page_size - 1) & ~(vm_page_size - 1), 0, a4 | (a5 << 24), 0, 0, 0, cur_protection, 3, 1u))
  {
    __break(1u);
    JUMPOUT(0x4470CLL);
  }

  return address;
}

uint64_t memory_reader_adapter_0(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (num_read_memory_0 >= 3)
  {
    __break(1u);
    JUMPOUT(0x4475CLL);
  }

  v6 = g_crm_reader_0(a1, a2, a3);
  *a4 = v6;
  if (v6)
  {
    v4 = num_read_memory_0++;
    read_memory_0[v4] = v6;
    return 0;
  }

  else
  {
    return 5;
  }
}

uint64_t is_pgm_zone(uint64_t a1, unsigned int a2, uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t *))
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  zone_type = get_zone_type(a2, a3, a1, &v6);
  if (zone_type)
  {
    return zone_type;
  }

  else if (v6 == 2)
  {
    return 0;
  }

  else
  {
    return 257;
  }
}

uint64_t diagnose_fault_from_external_process(unint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  bzero(v13, 0x200uLL);
  zone = read_zone(a3, a4, a5, v13, 6);
  if (zone)
  {
    return zone;
  }

  else
  {
    return diagnose_page_fault(v13, a1, a2);
  }
}

void free_read_memory()
{
  for (i = 0; i < num_read_memory_0; ++i)
  {
    _free(read_memory_0[i]);
  }

  num_read_memory_0 = 0;
}

uint64_t diagnose_page_fault(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = 0;
  if (*(a1 + 248) <= a2)
  {
    v5 = a2 < *(a1 + 256);
  }

  if (v5)
  {
    v7 = lookup_slot(a1, a2);
    if (v7 >= *(a1 + 208))
    {
      __break(1u);
      JUMPOUT(0x44A64);
    }

    if (*(a1 + 216) <= *(*(a1 + 280) + 8 * v7) >> 2)
    {
      __break(1u);
      JUMPOUT(0x44A98);
    }

    v6 = *(*(a1 + 280) + 8 * v7) & 3;
    if (v6 != 1 || (HIDWORD(v7) & 0x7FFFFFFF) == 3)
    {
      if (v6)
      {
        if (v6 == 1)
        {
          if ((HIDWORD(v7) & 0x7FFFFFFF) != 3)
          {
            __break(1u);
            JUMPOUT(0x44B78);
          }

          *a3 = "out-of-bounds";
          a3[1] = "high";
        }

        else if ((HIDWORD(v7) & 0x7FFFFFFFu) > 1)
        {
          v4 = 1;
          if ((HIDWORD(v7) & 0x7FFFFFFF) != 2)
          {
            v4 = (HIDWORD(v7) & 0x7FFFFFFF) == 3;
          }

          if (!v4)
          {
            __break(1u);
            JUMPOUT(0x44C2CLL);
          }

          *a3 = "OOB + UAF";
          a3[1] = "low";
        }

        else
        {
          *a3 = "use-after-free";
          a3[1] = "high";
        }
      }

      else
      {
        *a3 = "long-range OOB";
        a3[1] = "low";
      }

      a3[2] = a2;
      fill_in_report(a1, v7, a3);
      return 0;
    }

    else
    {
      malloc_report(547, "Failed to generate PGM report for fault address %p: slot is unexpectedly allocated with bounds %d\n");
      return 5;
    }
  }

  else
  {
    return 257;
  }
}

uint64_t fill_in_report(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a1 + 280) + 8 * a2;
  v4 = *(a1 + 288) + ((*v5 >> 2) << 8);
  result = block_addr(a1, a2);
  *(a3 + 24) = result;
  *(a3 + 32) = *(v5 + 4);
  *(a3 + 40) = slot_state_labels[*v5 & 3];
  *(a3 + 48) = 0;
  if (*v4 == a2)
  {
    ++*(a3 + 48);
    result = fill_in_trace(v4 + 4, v4 + 40, a3 + 56);
    if ((*v5 & 3) == 2)
    {
      ++*(a3 + 48);
      return fill_in_trace(v4 + 22, v4 + 40 + *(v4 + 20), a3 + 592);
    }
  }

  return result;
}

uint64_t fill_in_trace(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = *a1;
  *(a3 + 8) = *(a1 + 8);
  result = trace_decode(a2, *(a1 + 16), a3 + 24, 0x40u);
  *(a3 + 16) = result;
  return result;
}

void nanov2_init(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = _simple_getenv();
  v3 = "MallocNanoMadvisePolicy";
  if (!v7)
  {
    v7 = malloc_common_value_for_key(a3);
    if (v7)
    {
      v3 = "nanov2_madvise_policy";
    }
  }

  nanov2_set_madvise_policy(v3, v7);
  v4 = "MallocNanoSingleArena";
  v8 = _simple_getenv();
  if (!v8)
  {
    v8 = malloc_common_value_for_key_copy(a3, "nanov2_single_arena", v12, 0x100uLL);
    if (v8)
    {
      v4 = "nanov2_single_arena";
    }
  }

  nanov2_set_single_arena_size_classes(v4, v8);
  v5 = "MallocNanoScanPolicy";
  v9 = _simple_getenv();
  if (!v9)
  {
    v9 = malloc_common_value_for_key_copy(a3, "nanov2_scan_policy", v12, 0x100uLL);
    if (v9)
    {
      v5 = "nanov2_scan_policy";
    }
  }

  nanov2_set_block_scan_policy(v5, v9);
  v6 = "MallocNanoSizeClassBlocks";
  v10 = _simple_getenv();
  if (!v10)
  {
    v10 = malloc_common_value_for_key_copy(a3, "nanov2_size_class_blocks", v12, 0x100uLL);
    if (v10)
    {
      v6 = "nanov2_size_class_blocks";
    }
  }

  if (v10)
  {
    nanov2_set_blocks_by_size_class(v6, v10);
  }
}

void nanov2_set_madvise_policy(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a2)
  {
    if (_platform_strncmp())
    {
      if (_platform_strncmp())
      {
        if (_platform_strncmp())
        {
          malloc_report(3, "%s value (%s) invalid - ignored.\n");
        }

        else
        {
          v2 = 2;
        }
      }

      else
      {
        v2 = 1;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  nanov2_madvise_policy = v2;
}

void nanov2_set_single_arena_size_classes(uint64_t a1, char *a2)
{
  v7 = a1;
  v6 = a2;
  v5 = 0;
  if (a2)
  {
    v4[1] = v6;
    v4[0] = 0;
    v3 = 0;
    while (*v6)
    {
      v2 = malloc_common_convert_to_long(v6, v4);
      if (v4[0] == v6)
      {
        v3 = 1;
        break;
      }

      if (*v4[0] && *v4[0] != 58)
      {
        v3 = 1;
        break;
      }

      if (v2 > 256 || v2 < 16 || v2 % 16)
      {
        v3 = 1;
        break;
      }

      v5 |= 1 << (v2 / 16 - 1);
      if (!*v4[0])
      {
        break;
      }

      v6 = (v4[0] + 1);
    }

    if (v3)
    {
      malloc_report(3, "%s value (%s) invalid - ignored.\n");
      v5 = 0;
    }
  }

  word_D8040 = v5;
}

void nanov2_set_block_scan_policy(uint64_t a1, char *a2)
{
  v16 = a1;
  v15 = a2;
  v14 = 1;
  v13 = 20;
  v12 = 80;
  v11 = 10;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  if (a2)
  {
    if (_platform_strcmp())
    {
      while (1)
      {
        v2 = 0;
        if (!v9)
        {
          v2 = 0;
          if (v15)
          {
            v2 = *v15 != 0;
          }
        }

        if (!v2)
        {
          break;
        }

        if (_platform_strncmp() || v8)
        {
          if (_platform_strncmp() || v7)
          {
            if (_platform_strncmp() || v6)
            {
              v9 = 1;
            }

            else
            {
              v6 = 1;
              v15 += 3;
              v3 = malloc_common_convert_to_long(v15, &v10);
              if (v15 == v10 || v3 < 0)
              {
                v9 = 1;
              }

              else
              {
                v11 = v3;
                v15 = v10;
              }
            }
          }

          else
          {
            v7 = 1;
            v15 += 3;
            v4 = malloc_common_convert_to_long(v15, &v10);
            if (v15 == v10 || v4 < 0 || v4 > 100)
            {
              v9 = 1;
            }

            else
            {
              v12 = v4;
              v15 = v10;
            }
          }
        }

        else
        {
          v8 = 1;
          v15 += 3;
          v5 = malloc_common_convert_to_long(v15, &v10);
          if (v15 == v10 || v5 < 0 || v5 > 100)
          {
            v9 = 1;
          }

          else
          {
            v13 = v5;
            v15 = v10;
          }
        }

        if (*v15)
        {
          if (*v15 == 58)
          {
            ++v15;
          }

          else
          {
            v9 = 1;
          }
        }
      }

      if (!v9)
      {
        v9 = v13 > v12;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  if (v9)
  {
    malloc_report(3, "%s value (%s) invalid - ignored.\n");
  }

  else
  {
    nanov2_policy_config = v14;
    dword_D8034 = v13;
    dword_D8038 = v12;
    dword_D803C = v11;
  }
}

void nanov2_set_blocks_by_size_class(uint64_t a1, char *a2)
{
  v8 = a1;
  v7 = a2;
  v6 = 0;
  v5 = 0;
  for (i = 0; i < 16; ++i)
  {
    v3 = malloc_common_convert_to_long(v7, &v5);
    if (i == 15)
    {
      v2 = 0;
    }

    else
    {
      v2 = 44;
    }

    if (v5 == v7 || *v5 != v2 || v3 > 64)
    {
      malloc_report(3, "%s value invalid: [%s] - ignored.\n");
      return;
    }

    v9[i] = v3;
    v6 += v3;
    v7 = v5 + 1;
  }

  if (v6 == 64)
  {
    _platform_memmove();
  }

  else
  {
    malloc_report(3, "%s value invalid - values must sum to %d, not %d - ignored.\n");
  }
}

uint64_t nanov2_configure()
{
  if (nanov2_config_predicate != -1)
  {
    return _os_once();
  }

  return result;
}

void nanov2_configure_once()
{
  v8 = 0;
  for (i = 0; i < 16; ++i)
  {
    v8 += block_units_by_size_class[i] << 6;
  }

  if (v8 != 4096)
  {
    __break(1u);
    JUMPOUT(0x4591CLL);
  }

  first_block_offset_by_size_class[0] = 1;
  v6 = block_units_by_size_class[0] << 6;
  last_block_offset_by_size_class[0] = (block_units_by_size_class[0] << 6) - 1;
  for (j = 1; j < 16; ++j)
  {
    first_block_offset_by_size_class[j] = v6;
    v6 += block_units_by_size_class[j] << 6;
    last_block_offset_by_size_class[j] = v6 - 1;
  }

  if (v6 != 4096)
  {
    __break(1u);
    JUMPOUT(0x459E0);
  }

  v4 = 0;
  for (k = 0; k < 16; ++k)
  {
    v2 = block_units_by_size_class[k];
    for (m = 0; m < v2; ++m)
    {
      v0 = v4++;
      ptr_offset_to_size_class[v0] = k;
    }
  }

  if (v4 != 64)
  {
    __break(1u);
    JUMPOUT(0x45A90);
  }
}

uint64_t nanov2_size(void *a1, unint64_t a2)
{
  if (a2 >> 29 == 24)
  {
    if ((a2 & 0xF) != 0)
    {
      v7 = 0;
    }

    else if (a2 >= a1[3590] && a2 <= a1[3591])
    {
      v6 = ptr_offset_to_size_class[((a2 >> 14) & 0xFFF ^ a1[3585]) >> 6];
      v5 = *((a2 & 0xFFFFFFFFFC000000 ^ a1[3586]) + 4 * (((((a2 >> 14) & 0xFFF) << 6) | (((a2 >> 14) & 0xFFF) >> 6)) & 0xFFF));
      v4 = 0;
      if ((v5 & 0x7FF) != 0)
      {
        v4 = 0;
        if ((*((a2 & 0xFFFFFFFFFC000000 ^ a1[3586]) + 4 * (((((a2 >> 14) & 0xFFF) << 6) | (((a2 >> 14) & 0xFFF) >> 6)) & 0xFFF)) & 0x7FF) != 0x7FE)
        {
          v4 = 0;
          if ((*((a2 & 0xFFFFFFFFFC000000 ^ a1[3586]) + 4 * (((((a2 >> 14) & 0xFFF) << 6) | (((a2 >> 14) & 0xFFF) >> 6)) & 0xFFF)) & 0x7FF) != 0x7FF)
          {
            v4 = (*((a2 & 0xFFFFFFFFFC000000 ^ a1[3586]) + 4 * (((((a2 >> 14) & 0xFFF) << 6) | (((a2 >> 14) & 0xFFF) >> 6)) & 0xFFF)) & 0x7FF) != 2042;
          }
        }
      }

      if (v4 && ((*((a2 & 0xFFFFFFFFFC000000 ^ a1[3586]) + 4 * (((((a2 >> 14) & 0xFFF) << 6) | (((a2 >> 14) & 0xFFF) >> 6)) & 0xFFF)) & 0x7FF) == 0x7FC || ((v5 >> 11) & 0x3FF) != slots_by_size_class[v6] - 1))
      {
        if ((a2 & 0x3FFF) % (16 * (v6 + 1)))
        {
          v7 = 0;
        }

        else if ((*a2 ^ a1[3587]) == a2)
        {
          v7 = 0;
        }

        else
        {
          v7 = 16 * (v6 + 1);
        }
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    return v7;
  }

  else
  {
    return (*(a1[3588] + 16))(a1[3588], a2);
  }
}

uint64_t *nanov2_malloc(uint64_t a1, unint64_t a2)
{
  v9 = _nano_common_good_size(a2);
  if (v9 > 0x100)
  {
    return (*(*(a1 + 28704) + 24))(*(a1 + 28704), a2);
  }

  v27 = a1;
  v26 = v9;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v29 = v9;
  if (v9 % 0x10)
  {
    v8 = v29 / 0x10 + 1;
  }

  else
  {
    v8 = v29 / 0x10;
  }

  v21 = v8 - 1;
  if (nano_common_max_magazines_is_ncpu)
  {
    v33 = _malloc_cpu_number() & 0x3F;
  }

  else
  {
    v32 = 0;
    if (_os_cpu_number_override == -1)
    {
      v33 = ((_malloc_cpu_number() >> v32) % nano_common_max_magazines) & 0x3F;
    }

    else
    {
      v33 = ((_os_cpu_number_override >> v32) % nano_common_max_magazines) & 0x3F;
    }
  }

  v20 = v33;
  v19 = (v27 + 0x4000 + (v21 << 9) + 8 * v33);
  v16 = *v19;
  v17 = v16;
  v15 = v16;
  v18 = v16;
  v14 = 0;
  v13 = 0;
  if (!v16)
  {
    return nanov2_allocate_outlined(v27, v19, v26, v21, v20, v22, v13, v25 & 1, v24 & 1, v23);
  }

  v59 = v27;
  v58 = v18;
  v57 = v21;
  v56 = &v22;
  v55 = &v14;
  v54 = 0;
  v53 = 0;
  v52 = *v18;
  v53 = v52;
  v54 = v52;
  v51 = 0;
  while (1)
  {
    v61 = v54;
    v7 = 0;
    if ((v54 & 0x80000000) != 0)
    {
      v7 = (v61 & 0x7FF) != 2044;
    }

    if (!v7)
    {
      v60 = 0;
      goto LABEL_44;
    }

    v50 = 0;
    v49 = 0;
    v48 = 0;
    v47 = (((((v54 >> 11) & 0x3FF) - 1) & 0x3FF) << 11) & 0x1FFFFF | (((((v54 >> 21) & 0x3FF) + 1) & 0x3FF) << 21) & 0x7FFFFFFF | 0x80000000;
    v46 = ((v54 >> 11) & 0x3FF) == 0;
    if ((v54 & 0x7FF) == 0x7FB || (v54 & 0x7FF) == 0x7FD)
    {
      v2 = v46 ? 2044 : 2043;
      v47 = v47 & 0xFFFFF800 | v2;
      v50 = slots_by_size_class[v57] - ((v54 >> 11) & 0x3FF) - 1;
    }

    else
    {
      v48 = 1;
      if (!v51)
      {
        v74 = v59;
        v73 = v58;
        v82 = v58;
        v72 = v58 & 0xFFFFFFFFFFFFC000;
        v75 = v58;
        v71 = v58 & 0xFFFFFFFFFC000000;
        v70 = (v58 - (v58 & 0xFFFFFFFFFFFFC000)) / 4;
        v84 = v70;
        v69 = ((v84 << 6) | (v84 >> 6)) & 0xFFF;
        v51 = (v58 & 0xFFFFFFFFFC000000) + ((((v84 << 6) | (v84 >> 6)) & 0xFFF) << 14);
      }

      v50 = (v54 & 0x7FF) - 1;
      v81 = v51;
      v80 = v57;
      v79 = v50;
      v86 = v57;
      v49 = (v51 + (16 * (v57 + 1) * v50));
      v45 = v49;
      v6 = v46 ? 2044 : v45[1];
      v47 = v47 & 0xFFFFF800 | v6 & 0x7FF;
    }

    v44 = v54;
    v43 = 0;
    v41 = v47;
    v42 = v47;
    v3 = v54;
    v4 = v54;
    atomic_compare_exchange_strong_explicit(v58, &v4, v47, memory_order_relaxed, memory_order_relaxed);
    if (v4 != v3)
    {
      v44 = v4;
    }

    v40 = v4 == v3;
    v43 = v4 == v3;
    v54 = v44;
    v39 = v43;
    if (v4 == v3)
    {
      break;
    }

    if ((v54 & 0x7FF) == 0x7FD || (v54 & 0x7FF) == 0x7FE || (v54 & 0x7FF) == 0x7FF)
    {
      *v56 = v58;
      v60 = 0;
      goto LABEL_44;
    }
  }

  if (!v49)
  {
    if (!v51)
    {
      v67 = v59;
      v66 = v58;
      v83 = v58;
      v65 = v58 & 0xFFFFFFFFFFFFC000;
      v68 = v58;
      v64 = v58 & 0xFFFFFFFFFC000000;
      v63 = (v58 - (v58 & 0xFFFFFFFFFFFFC000)) / 4;
      v85 = v63;
      v62 = ((v85 << 6) | (v85 >> 6)) & 0xFFF;
      v51 = (v58 & 0xFFFFFFFFFC000000) + ((((v85 << 6) | (v85 >> 6)) & 0xFFF) << 14);
    }

    v78 = v51;
    v77 = v57;
    v76 = v50;
    v87 = v57;
    v49 = (v51 + (16 * (v57 + 1) * v50));
  }

  if (v48)
  {
    v38 = v49;
    v35 = *v49;
    v36 = v35;
    v34 = v35;
    v37 = v35;
    if ((v35 ^ *(v59 + 28696)) != v49)
    {
      *v55 = 1;
    }
  }

  v60 = v49;
LABEL_44:
  v13 = v60;
  if (!v60 || (v14 & 1) != 0)
  {
    return nanov2_allocate_outlined(v27, v19, v26, v21, v20, v22, v13, v25 & 1, v24 & 1, v23);
  }

  if ((v25 & 1) != 0 && malloc_zero_policy)
  {
    v31 = v60;
    v30 = v26;
    _platform_bzero();
  }

  else
  {
    *v60 = 0;
    v13[1] = 0;
  }

  return v13;
}

unint64_t _nano_common_good_size(unint64_t a1)
{
  if (a1 > 0x10)
  {
    return 16 * ((a1 + 15) >> 4);
  }

  else
  {
    return 16;
  }
}

uint64_t *nanov2_malloc_type(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v10 = _nano_common_good_size(a2);
  if (v10 > 0x100)
  {
    return (*(*(a1 + 28704) + 160))(*(a1 + 28704), a2, a3);
  }

  v29 = a1;
  v28 = v10;
  v27 = 0;
  v26 = 1;
  v25 = a3;
  v24 = 0;
  v31 = v10;
  if (v10 % 0x10)
  {
    v9 = v31 / 0x10 + 1;
  }

  else
  {
    v9 = v31 / 0x10;
  }

  v23 = v9 - 1;
  if (nano_common_max_magazines_is_ncpu)
  {
    v35 = _malloc_cpu_number() & 0x3F;
  }

  else
  {
    v34 = 0;
    if (_os_cpu_number_override == -1)
    {
      v35 = ((_malloc_cpu_number() >> v34) % nano_common_max_magazines) & 0x3F;
    }

    else
    {
      v35 = ((_os_cpu_number_override >> v34) % nano_common_max_magazines) & 0x3F;
    }
  }

  v22 = v35;
  v21 = (v29 + 0x4000 + (v23 << 9) + 8 * v35);
  v18 = *v21;
  v19 = v18;
  v17 = v18;
  v20 = v18;
  v16 = 0;
  v15 = 0;
  if (!v18)
  {
    return nanov2_allocate_outlined(v29, v21, v28, v23, v22, v24, v15, v27 & 1, v26 & 1, v25);
  }

  v61 = v29;
  v60 = v20;
  v59 = v23;
  v58 = &v24;
  v57 = &v16;
  v56 = 0;
  v55 = 0;
  v54 = *v20;
  v55 = v54;
  v56 = v54;
  v53 = 0;
  while (1)
  {
    v63 = v56;
    v8 = 0;
    if ((v56 & 0x80000000) != 0)
    {
      v8 = (v63 & 0x7FF) != 2044;
    }

    if (!v8)
    {
      v62 = 0;
      goto LABEL_44;
    }

    v52 = 0;
    v51 = 0;
    v50 = 0;
    v49 = (((((v56 >> 11) & 0x3FF) - 1) & 0x3FF) << 11) & 0x1FFFFF | (((((v56 >> 21) & 0x3FF) + 1) & 0x3FF) << 21) & 0x7FFFFFFF | 0x80000000;
    v48 = ((v56 >> 11) & 0x3FF) == 0;
    if ((v56 & 0x7FF) == 0x7FB || (v56 & 0x7FF) == 0x7FD)
    {
      v3 = v48 ? 2044 : 2043;
      v49 = v49 & 0xFFFFF800 | v3;
      v52 = slots_by_size_class[v59] - ((v56 >> 11) & 0x3FF) - 1;
    }

    else
    {
      v50 = 1;
      if (!v53)
      {
        v76 = v61;
        v75 = v60;
        v84 = v60;
        v74 = v60 & 0xFFFFFFFFFFFFC000;
        v77 = v60;
        v73 = v60 & 0xFFFFFFFFFC000000;
        v72 = (v60 - (v60 & 0xFFFFFFFFFFFFC000)) / 4;
        v86 = v72;
        v71 = ((v86 << 6) | (v86 >> 6)) & 0xFFF;
        v53 = (v60 & 0xFFFFFFFFFC000000) + ((((v86 << 6) | (v86 >> 6)) & 0xFFF) << 14);
      }

      v52 = (v56 & 0x7FF) - 1;
      v83 = v53;
      v82 = v59;
      v81 = v52;
      v88 = v59;
      v51 = (v53 + (16 * (v59 + 1) * v52));
      v47 = v51;
      v7 = v48 ? 2044 : v47[1];
      v49 = v49 & 0xFFFFF800 | v7 & 0x7FF;
    }

    v46 = v56;
    v45 = 0;
    v43 = v49;
    v44 = v49;
    v4 = v56;
    v5 = v56;
    atomic_compare_exchange_strong_explicit(v60, &v5, v49, memory_order_relaxed, memory_order_relaxed);
    if (v5 != v4)
    {
      v46 = v5;
    }

    v42 = v5 == v4;
    v45 = v5 == v4;
    v56 = v46;
    v41 = v45;
    if (v5 == v4)
    {
      break;
    }

    if ((v56 & 0x7FF) == 0x7FD || (v56 & 0x7FF) == 0x7FE || (v56 & 0x7FF) == 0x7FF)
    {
      *v58 = v60;
      v62 = 0;
      goto LABEL_44;
    }
  }

  if (!v51)
  {
    if (!v53)
    {
      v69 = v61;
      v68 = v60;
      v85 = v60;
      v67 = v60 & 0xFFFFFFFFFFFFC000;
      v70 = v60;
      v66 = v60 & 0xFFFFFFFFFC000000;
      v65 = (v60 - (v60 & 0xFFFFFFFFFFFFC000)) / 4;
      v87 = v65;
      v64 = ((v87 << 6) | (v87 >> 6)) & 0xFFF;
      v53 = (v60 & 0xFFFFFFFFFC000000) + ((((v87 << 6) | (v87 >> 6)) & 0xFFF) << 14);
    }

    v80 = v53;
    v79 = v59;
    v78 = v52;
    v89 = v59;
    v51 = (v53 + (16 * (v59 + 1) * v52));
  }

  if (v50)
  {
    v40 = v51;
    v37 = *v51;
    v38 = v37;
    v36 = v37;
    v39 = v37;
    if ((v37 ^ *(v61 + 28696)) != v51)
    {
      *v57 = 1;
    }
  }

  v62 = v51;
LABEL_44:
  v15 = v62;
  if (!v62 || (v16 & 1) != 0)
  {
    return nanov2_allocate_outlined(v29, v21, v28, v23, v22, v24, v15, v27 & 1, v26 & 1, v25);
  }

  if ((v27 & 1) != 0 && malloc_zero_policy)
  {
    v33 = v62;
    v32 = v28;
    _platform_bzero();
  }

  else
  {
    *v62 = 0;
    v15[1] = 0;
  }

  return v15;
}

void nanov2_free_definite_size(uint64_t a1, unint64_t *a2, unint64_t a3)
{
  if (a2 && a2 >> 29 == 24)
  {
    if (a3 % 0x10)
    {
      v10 = a3 / 0x10 + 1;
    }

    else
    {
      v10 = a3 / 0x10;
    }

    v11 = v10 - 1;
    if (!malloc_zero_policy && v10 != 1)
    {
      _platform_bzero();
    }

    v20 = ((a2 & 0xFFFFFFFFFC000000 ^ *(a1 + 28688)) + 4 * (((((a2 >> 14) & 0xFFF) << 6) | (((a2 >> 14) & 0xFFF) >> 6)) & 0xFFF));
    v19 = *v20;
    v18 = slots_by_size_class[v11];
    LOWORD(v16) = 0;
    *a2 = *(a1 + 28696) ^ a2;
    do
    {
      while (1)
      {
        v17 = v16 & 0x7FF | (((((v19 >> 11) & 0x3FF) + 1) & 0x3FF) << 11) & 0x1FFFFF | ((v19 < 0) << 31) | (((((v19 >> 21) & 0x3FF) + 1) & 0x3FF) << 21);
        v9 = 0;
        if ((v19 & 0x7FF) != 0x7FC)
        {
          v9 = ((v17 >> 11) & 0x3FF) == slots_by_size_class[v11] - 1;
        }

        if (v9)
        {
          break;
        }

        v16 = v17 & 0xFFFFF800 | (((a2 - (a2 & 0xFFFFC000)) / (16 * v10)) + 1) & 0x7FF;
        if ((v19 & 0x7FF) == 0x7FC)
        {
          v8 = 2043;
        }

        else
        {
          v8 = v19 & 0x7FF;
        }

        a2[1] = v8;
        v14 = v19;
        v6 = v19;
        v7 = v19;
        atomic_compare_exchange_strong_explicit(v20, &v7, v16, memory_order_release, memory_order_relaxed);
        if (v7 != v6)
        {
          v14 = v7;
        }

        v19 = v14;
        if (v7 == v6)
        {
          goto LABEL_29;
        }
      }

      a2[1] = 0;
      if (v17 >= 0)
      {
        v3 = 2045;
      }

      else
      {
        v3 = 2043;
      }

      v16 = v17 & 0xFFFFF800 | v3;
      v15 = v19;
      v4 = v19;
      v5 = v19;
      atomic_compare_exchange_strong_explicit(v20, &v5, v16, memory_order_release, memory_order_relaxed);
      if (v5 != v4)
      {
        v15 = v5;
      }

      v19 = v15;
    }

    while (v5 != v4);
    if ((v16 & 0x7FF) == 0x7FD && !nanov2_madvise_policy)
    {
      v21 = v20;
      goto LABEL_34;
    }

LABEL_29:
    if (v16 >= 0 && (*(a1 + 28672) & (1 << v11)) != 0 && ((v16 >> 11) & 0x3FF) >= 0.75 * v18)
    {
      atomic_fetch_and_explicit((a1 + 28672), ~(1 << v11), memory_order_relaxed);
    }

    v21 = 0;
LABEL_34:
    if (v21)
    {
      nanov2_madvise_block(a1, v21, v11, 2045);
    }
  }

  else
  {
    (*(*(a1 + 28704) + 120))(*(a1 + 28704), a2, a3);
  }
}

void nanov2_madvise_block(uint64_t a1, atomic_uint *a2, int a3, int a4)
{
  v7 = (a2 & 0xFFFFFFFFFC000000) + ((((((a2 - (a2 & 0xFFFFFFFFFFFFC000)) / 4) << 6) | (((a2 - (a2 & 0xFFFFFFFFFFFFC000)) / 4) >> 6)) & 0xFFF) << 14);
  v4 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 28736), &v4, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  nanov2_madvise_block_locked(a1, a2, v7, a3, a4);
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v6 = v5;
  atomic_compare_exchange_strong_explicit((a1 + 28736), &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != v5)
  {
    os_unfair_lock_unlock((a1 + 28736));
  }
}

void _nanov2_free(uint64_t a1, void *a2, char a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  if (!a2)
  {
    goto LABEL_60;
  }

  v12 = 0;
  v11 = 0;
  v36 = v15;
  v35 = v14;
  v34 = 0;
  v33 = &v12;
  v32 = &v11;
  v38 = v14;
  if (v14 >> 29 == 24)
  {
    if ((v35 & 0xF) != 0)
    {
      v37 = 0;
    }

    else
    {
      v29 = v36[3591];
      v30 = v29;
      v28 = v29;
      v31 = v29;
      if (v35 >= v36[3590] && v35 <= v31)
      {
        v90 = v36;
        v89 = v35;
        v93 = v35;
        v88 = (v35 >> 14) & 0xFFF ^ v36[3585];
        v27 = ptr_offset_to_size_class[v88 >> 6];
        v110 = v36;
        v109 = v35;
        v112 = v36;
        v111 = v35;
        v113 = v35;
        v116 = v36;
        v115 = v35 & 0xFFFFFFFFFC000000;
        v108 = v35 & 0xFFFFFFFFFC000000 ^ v36[3586];
        v117 = v35;
        v107 = (v35 >> 14) & 0xFFF;
        v114 = v107;
        v106 = ((v114 << 6) | (v114 >> 6)) & 0xFFF;
        v26 = (v108 + 4 * (((v114 << 6) | (v114 >> 6)) & 0xFFF));
        v25 = 0;
        v24 = 0;
        v23 = *v26;
        v24 = v23;
        v25 = v23;
        v118 = v23;
        v10 = 0;
        if ((v23 & 0x7FF) != 0)
        {
          v10 = 0;
          if ((v118 & 0x7FF) != 0x7FE)
          {
            v10 = 0;
            if ((v118 & 0x7FF) != 0x7FF)
            {
              v10 = (v118 & 0x7FF) != 2042;
            }
          }
        }

        if (v10 && ((v25 & 0x7FF) == 0x7FC || ((v25 >> 11) & 0x3FF) != slots_by_size_class[v27] - 1))
        {
          v92 = v27;
          v22 = 16 * (v27 + 1);
          v21 = v35;
          if ((v35 & 0x3FFF) % v22)
          {
            v37 = 0;
          }

          else
          {
            v20 = v35;
            v17 = *v35;
            v18 = v17;
            v16 = v17;
            v19 = v17;
            if ((v17 ^ v36[3587]) == v35)
            {
              v37 = 0;
            }

            else
            {
              if (v33)
              {
                *v33 = v27;
              }

              if (v32)
              {
                *v32 = v26;
              }

              v37 = v22;
            }
          }
        }

        else
        {
          v37 = 0;
        }
      }

      else
      {
        v37 = 0;
      }
    }
  }

  else
  {
    v37 = 0;
  }

  if (v37)
  {
    if (!malloc_zero_policy && v37 > 0x10)
    {
      v40 = (v14 + 16);
      v39 = v37 - 16;
      _platform_bzero();
    }

    v86 = v15;
    v85 = v14;
    v84 = v12;
    v83 = v11;
    v91 = v14;
    v82 = v14 & 0xFFFFFFFFFFFFC000;
    if (!v11)
    {
      v98 = v86;
      v97 = v85;
      v100 = v86;
      v99 = v85;
      v101 = v85;
      v104 = v86;
      v103 = v85 & 0xFFFFFFFFFC000000;
      v96 = v85 & 0xFFFFFFFFFC000000 ^ *(v86 + 28688);
      v105 = v85;
      v95 = (v85 >> 14) & 0xFFF;
      v102 = v95;
      v94 = ((v102 << 6) | (v102 >> 6)) & 0xFFF;
      v83 = (v96 + 4 * (((v102 << 6) | (v102 >> 6)) & 0xFFF));
    }

    v81 = 0;
    v80 = 0;
    v79 = *v83;
    v80 = v79;
    v81 = v79;
    v78 = slots_by_size_class[v84];
    v77 = 0;
    v76 = 0;
    v75 = v85;
    v74 = *(v86 + 28696) ^ v85;
    v73 = v74;
    *v85 = v74;
    v72 = v74;
    do
    {
      while (1)
      {
        v76 = (v81 & 0x7FF) == 2044;
        v77 = v77 & 0xFFE007FF | (((((v81 >> 11) & 0x3FF) + 1) & 0x3FF) << 11);
        v77 = v77 & 0x7FFFFFFF | ((v81 < 0) << 31);
        v77 = v77 & 0x801FFFFF | (((((v81 >> 21) & 0x3FF) + 1) & 0x3FF) << 21);
        v9 = 0;
        if ((v81 & 0x7FF) != 0x7FC)
        {
          v9 = ((v77 >> 11) & 0x3FF) == slots_by_size_class[v84] - 1;
        }

        v71 = v9;
        if (v9)
        {
          break;
        }

        v121 = v82;
        v120 = v84;
        v119 = v85;
        v122 = v84;
        v61 = (v85 - v82) / (16 * (v84 + 1));
        v77 = v77 & 0xFFFFF800 | (v61 + 1) & 0x7FF;
        if (v76)
        {
          v8 = 2043;
        }

        else
        {
          v8 = v81 & 0x7FF;
        }

        v60 = v8;
        v59 = v8;
        *(v75 + 8) = v8;
        v58 = v60;
        v57 = v81;
        v56 = 0;
        v54 = v77;
        v55 = v77;
        v6 = v81;
        v7 = v81;
        atomic_compare_exchange_strong_explicit(v83, &v7, v77, memory_order_release, memory_order_relaxed);
        if (v7 != v6)
        {
          v57 = v7;
        }

        v53 = v7 == v6;
        v56 = v7 == v6;
        v81 = v57;
        v52 = v56;
        if (v7 == v6)
        {
          goto LABEL_52;
        }
      }

      v70 = 0;
      v69 = 0;
      *(v75 + 8) = 0;
      v68 = v70;
      if (v77 >= 0)
      {
        v3 = 2045;
      }

      else
      {
        v3 = 2043;
      }

      v77 = v77 & 0xFFFFF800 | v3;
      v67 = v81;
      v66 = 0;
      v64 = v77;
      v65 = v77;
      v4 = v81;
      v5 = v81;
      atomic_compare_exchange_strong_explicit(v83, &v5, v77, memory_order_release, memory_order_relaxed);
      if (v5 != v4)
      {
        v67 = v5;
      }

      v63 = v5 == v4;
      v66 = v5 == v4;
      v81 = v67;
      v62 = v66;
    }

    while (v5 != v4);
    if ((v77 & 0x7FF) == 0x7FD && !nanov2_madvise_policy)
    {
      v87 = v83;
      goto LABEL_57;
    }

LABEL_52:
    v51 = 1 << v84;
    if (v77 >= 0 && (*(v86 + 28672) & v51) != 0 && ((v77 >> 11) & 0x3FF) >= 0.75 * v78)
    {
      v49 = ~v51;
      v48 = ~v51;
      v50 = ~v51;
      v44 = ~v51;
      v43 = ~v51;
      v45 = ~v51;
      v42 = atomic_fetch_and_explicit((v86 + 28672), ~v51, memory_order_relaxed);
      v46 = v42;
      v41 = v42;
      v47 = (v42 & v50);
    }

    v87 = 0;
LABEL_57:
    if (v87)
    {
      nanov2_madvise_block(v15, v87, v12, 2045);
    }
  }

  else
  {
LABEL_60:
    if (v13)
    {
      (*(v15[3588] + 144))(v15[3588], v14);
    }

    else
    {
      (*(v15[3588] + 48))(v15[3588], v14);
    }
  }
}

uint64_t *nanov2_calloc(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v12 = a1;
  v11[2] = a2;
  v11[1] = a3;
  v11[0] = 0;
  v44 = a2;
  v43 = a3;
  v42 = 0;
  v41 = v11;
  v40 = a3;
  if (a2 == 1 || (v40 = v44 * v43, !(v102 = !is_mul_ok(v44, v43))) && v40 <= malloc_absolute_max_size)
  {
    *v41 = v40;
    v45 = 0;
  }

  else
  {
    malloc_set_errno_fast(1, 12);
    v45 = -1;
  }

  if (v45)
  {
    return 0;
  }

  v10 = _nano_common_good_size(v11[0]);
  if (v11[0] > 0x100)
  {
    return (*(*(v12 + 28704) + 32))(*(v12 + 28704), 1, v11[0]);
  }

  v35 = v12;
  v34 = v10;
  v33 = 1;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v37 = v10;
  if (v10 % 0x10)
  {
    v9 = v37 / 0x10 + 1;
  }

  else
  {
    v9 = v37 / 0x10;
  }

  v29 = v9 - 1;
  if (nano_common_max_magazines_is_ncpu)
  {
    LOBYTE(v47) = _malloc_cpu_number() & 0x3F;
    v47 = v47;
  }

  else
  {
    v46 = 0;
    if (_os_cpu_number_override == -1)
    {
      v47 = ((_malloc_cpu_number() >> v46) % nano_common_max_magazines) & 0x3F;
    }

    else
    {
      v47 = ((_os_cpu_number_override >> v46) % nano_common_max_magazines) & 0x3F;
    }
  }

  v28 = v47;
  v27 = (v35 + 0x4000 + (v29 << 9) + 8 * v47);
  v24 = *v27;
  v25 = v24;
  v23 = v24;
  v26 = v24;
  v22 = 0;
  v21 = 0;
  if (!v24)
  {
    return nanov2_allocate_outlined(v35, v27, v34, v29, v28, v30, v21, v33 & 1, v32 & 1, v31);
  }

  v73 = v35;
  v72 = v26;
  v71 = v29;
  v70 = &v30;
  v69 = &v22;
  v68 = 0;
  v67 = 0;
  v66 = *v26;
  v67 = v66;
  v68 = v66;
  v65 = 0;
  while (1)
  {
    v75 = v68;
    v8 = 0;
    if ((v68 & 0x80000000) != 0)
    {
      v8 = (v75 & 0x7FF) != 2044;
    }

    if (!v8)
    {
      v74 = 0;
      goto LABEL_51;
    }

    v64 = 0;
    v63 = 0;
    v62 = 0;
    v61 = (((((v68 >> 11) & 0x3FF) - 1) & 0x3FF) << 11) & 0x1FFFFF | (((((v68 >> 21) & 0x3FF) + 1) & 0x3FF) << 21) & 0x7FFFFFFF | 0x80000000;
    v60 = ((v68 >> 11) & 0x3FF) == 0;
    if ((v68 & 0x7FF) == 0x7FB || (v68 & 0x7FF) == 0x7FD)
    {
      v3 = v60 ? 2044 : 2043;
      v61 = v61 & 0xFFFFF800 | v3;
      v64 = slots_by_size_class[v71] - ((v68 >> 11) & 0x3FF) - 1;
    }

    else
    {
      v62 = 1;
      if (!v65)
      {
        v88 = v73;
        v87 = v72;
        v96 = v72;
        v86 = v72 & 0xFFFFFFFFFFFFC000;
        v89 = v72;
        v85 = v72 & 0xFFFFFFFFFC000000;
        v84 = (v72 - (v72 & 0xFFFFFFFFFFFFC000)) / 4;
        v98 = v84;
        v83 = ((v98 << 6) | (v98 >> 6)) & 0xFFF;
        v65 = (v72 & 0xFFFFFFFFFC000000) + ((((v98 << 6) | (v98 >> 6)) & 0xFFF) << 14);
      }

      v64 = (v68 & 0x7FF) - 1;
      v95 = v65;
      v94 = v71;
      v93 = v64;
      v100 = v71;
      v63 = (v65 + (16 * (v71 + 1) * v64));
      v59 = v63;
      v7 = v60 ? 2044 : v59[1];
      v61 = v61 & 0xFFFFF800 | v7 & 0x7FF;
    }

    v58 = v68;
    v57 = 0;
    v55 = v61;
    v56 = v61;
    v4 = v68;
    v5 = v68;
    atomic_compare_exchange_strong_explicit(v72, &v5, v61, memory_order_relaxed, memory_order_relaxed);
    if (v5 != v4)
    {
      v58 = v5;
    }

    v54 = v5 == v4;
    v57 = v5 == v4;
    v68 = v58;
    v53 = v57;
    if (v5 == v4)
    {
      break;
    }

    if ((v68 & 0x7FF) == 0x7FD || (v68 & 0x7FF) == 0x7FE || (v68 & 0x7FF) == 0x7FF)
    {
      *v70 = v72;
      v74 = 0;
      goto LABEL_51;
    }
  }

  if (!v63)
  {
    if (!v65)
    {
      v81 = v73;
      v80 = v72;
      v97 = v72;
      v79 = v72 & 0xFFFFFFFFFFFFC000;
      v82 = v72;
      v78 = v72 & 0xFFFFFFFFFC000000;
      v77 = (v72 - (v72 & 0xFFFFFFFFFFFFC000)) / 4;
      v99 = v77;
      v76 = ((v99 << 6) | (v99 >> 6)) & 0xFFF;
      v65 = (v72 & 0xFFFFFFFFFC000000) + ((((v99 << 6) | (v99 >> 6)) & 0xFFF) << 14);
    }

    v92 = v65;
    v91 = v71;
    v90 = v64;
    v101 = v71;
    v63 = (v65 + (16 * (v71 + 1) * v64));
  }

  if (v62)
  {
    v52 = v63;
    v49 = *v63;
    v50 = v49;
    v48 = v49;
    v51 = v49;
    if ((v49 ^ *(v73 + 28696)) != v63)
    {
      *v69 = 1;
    }
  }

  v74 = v63;
LABEL_51:
  v21 = v74;
  if (!v74 || (v22 & 1) != 0)
  {
    return nanov2_allocate_outlined(v35, v27, v34, v29, v28, v30, v21, v33 & 1, v32 & 1, v31);
  }

  if ((v33 & 1) != 0 && malloc_zero_policy)
  {
    v39 = v21;
    v38 = v34;
    _platform_bzero();
  }

  else
  {
    v20 = v21;
    v19 = 0;
    v18 = 0;
    *v21 = 0;
    v17 = v19;
    v16 = 0;
    v15 = 0;
    v20[1] = 0;
    v14 = v16;
  }

  return v21;
}

uint64_t *nanov2_calloc_type(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = 0;
  v48 = a2;
  v47 = a3;
  v46 = 0;
  v45 = &v12;
  v44 = a3;
  if (a2 == 1 || (v44 = v48 * v47, !(v106 = !is_mul_ok(v48, v47))) && v44 <= malloc_absolute_max_size)
  {
    *v45 = v44;
    v49 = 0;
  }

  else
  {
    malloc_set_errno_fast(1, 12);
    v49 = -1;
  }

  if (v49)
  {
    return 0;
  }

  v11 = _nano_common_good_size(v12);
  if (v12 > 0x100)
  {
    return (*(*(v16 + 28704) + 168))(*(v16 + 28704), 1, v12, v13);
  }

  v39 = v16;
  v38 = v11;
  v37 = 1;
  v36 = 1;
  v35 = v13;
  v34 = 0;
  v41 = v11;
  if (v11 % 0x10)
  {
    v10 = v41 / 0x10 + 1;
  }

  else
  {
    v10 = v41 / 0x10;
  }

  v33 = v10 - 1;
  if (nano_common_max_magazines_is_ncpu)
  {
    LOBYTE(v51) = _malloc_cpu_number() & 0x3F;
    v51 = v51;
  }

  else
  {
    v50 = 0;
    if (_os_cpu_number_override == -1)
    {
      v51 = ((_malloc_cpu_number() >> v50) % nano_common_max_magazines) & 0x3F;
    }

    else
    {
      v51 = ((_os_cpu_number_override >> v50) % nano_common_max_magazines) & 0x3F;
    }
  }

  v32 = v51;
  v31 = (v39 + 0x4000 + (v33 << 9) + 8 * v51);
  v28 = *v31;
  v29 = v28;
  v27 = v28;
  v30 = v28;
  v26 = 0;
  v25 = 0;
  if (!v28)
  {
    return nanov2_allocate_outlined(v39, v31, v38, v33, v32, v34, v25, v37 & 1, v36 & 1, v35);
  }

  v77 = v39;
  v76 = v30;
  v75 = v33;
  v74 = &v34;
  v73 = &v26;
  v72 = 0;
  v71 = 0;
  v70 = *v30;
  v71 = v70;
  v72 = v70;
  v69 = 0;
  while (1)
  {
    v79 = v72;
    v9 = 0;
    if ((v72 & 0x80000000) != 0)
    {
      v9 = (v79 & 0x7FF) != 2044;
    }

    if (!v9)
    {
      v78 = 0;
      goto LABEL_51;
    }

    v68 = 0;
    v67 = 0;
    v66 = 0;
    v65 = (((((v72 >> 11) & 0x3FF) - 1) & 0x3FF) << 11) & 0x1FFFFF | (((((v72 >> 21) & 0x3FF) + 1) & 0x3FF) << 21) & 0x7FFFFFFF | 0x80000000;
    v64 = ((v72 >> 11) & 0x3FF) == 0;
    if ((v72 & 0x7FF) == 0x7FB || (v72 & 0x7FF) == 0x7FD)
    {
      v4 = v64 ? 2044 : 2043;
      v65 = v65 & 0xFFFFF800 | v4;
      v68 = slots_by_size_class[v75] - ((v72 >> 11) & 0x3FF) - 1;
    }

    else
    {
      v66 = 1;
      if (!v69)
      {
        v92 = v77;
        v91 = v76;
        v100 = v76;
        v90 = v76 & 0xFFFFFFFFFFFFC000;
        v93 = v76;
        v89 = v76 & 0xFFFFFFFFFC000000;
        v88 = (v76 - (v76 & 0xFFFFFFFFFFFFC000)) / 4;
        v102 = v88;
        v87 = ((v102 << 6) | (v102 >> 6)) & 0xFFF;
        v69 = (v76 & 0xFFFFFFFFFC000000) + ((((v102 << 6) | (v102 >> 6)) & 0xFFF) << 14);
      }

      v68 = (v72 & 0x7FF) - 1;
      v99 = v69;
      v98 = v75;
      v97 = v68;
      v104 = v75;
      v67 = (v69 + (16 * (v75 + 1) * v68));
      v63 = v67;
      v8 = v64 ? 2044 : v63[1];
      v65 = v65 & 0xFFFFF800 | v8 & 0x7FF;
    }

    v62 = v72;
    v61 = 0;
    v59 = v65;
    v60 = v65;
    v5 = v72;
    v6 = v72;
    atomic_compare_exchange_strong_explicit(v76, &v6, v65, memory_order_relaxed, memory_order_relaxed);
    if (v6 != v5)
    {
      v62 = v6;
    }

    v58 = v6 == v5;
    v61 = v6 == v5;
    v72 = v62;
    v57 = v61;
    if (v6 == v5)
    {
      break;
    }

    if ((v72 & 0x7FF) == 0x7FD || (v72 & 0x7FF) == 0x7FE || (v72 & 0x7FF) == 0x7FF)
    {
      *v74 = v76;
      v78 = 0;
      goto LABEL_51;
    }
  }

  if (!v67)
  {
    if (!v69)
    {
      v85 = v77;
      v84 = v76;
      v101 = v76;
      v83 = v76 & 0xFFFFFFFFFFFFC000;
      v86 = v76;
      v82 = v76 & 0xFFFFFFFFFC000000;
      v81 = (v76 - (v76 & 0xFFFFFFFFFFFFC000)) / 4;
      v103 = v81;
      v80 = ((v103 << 6) | (v103 >> 6)) & 0xFFF;
      v69 = (v76 & 0xFFFFFFFFFC000000) + ((((v103 << 6) | (v103 >> 6)) & 0xFFF) << 14);
    }

    v96 = v69;
    v95 = v75;
    v94 = v68;
    v105 = v75;
    v67 = (v69 + (16 * (v75 + 1) * v68));
  }

  if (v66)
  {
    v56 = v67;
    v53 = *v67;
    v54 = v53;
    v52 = v53;
    v55 = v53;
    if ((v53 ^ *(v77 + 28696)) != v67)
    {
      *v73 = 1;
    }
  }

  v78 = v67;
LABEL_51:
  v25 = v78;
  if (!v78 || (v26 & 1) != 0)
  {
    return nanov2_allocate_outlined(v39, v31, v38, v33, v32, v34, v25, v37 & 1, v36 & 1, v35);
  }

  if ((v37 & 1) != 0 && malloc_zero_policy)
  {
    v43 = v25;
    v42 = v38;
    _platform_bzero();
  }

  else
  {
    v24 = v25;
    v23 = 0;
    v22 = 0;
    *v25 = 0;
    v21 = v23;
    v20 = 0;
    v19 = 0;
    v24[1] = 0;
    v18 = v20;
  }

  return v25;
}

uint64_t *nanov2_malloc_zero_on_alloc(uint64_t a1, unint64_t a2)
{
  v9 = _nano_common_good_size(a2);
  if (v9 > 0x100)
  {
    return (*(*(a1 + 28704) + 24))(*(a1 + 28704), a2);
  }

  v27 = a1;
  v26 = v9;
  v25 = 1;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v29 = v9;
  if (v9 % 0x10)
  {
    v8 = v29 / 0x10 + 1;
  }

  else
  {
    v8 = v29 / 0x10;
  }

  v21 = v8 - 1;
  if (nano_common_max_magazines_is_ncpu)
  {
    v33 = _malloc_cpu_number() & 0x3F;
  }

  else
  {
    v32 = 0;
    if (_os_cpu_number_override == -1)
    {
      v33 = ((_malloc_cpu_number() >> v32) % nano_common_max_magazines) & 0x3F;
    }

    else
    {
      v33 = ((_os_cpu_number_override >> v32) % nano_common_max_magazines) & 0x3F;
    }
  }

  v20 = v33;
  v19 = (v27 + 0x4000 + (v21 << 9) + 8 * v33);
  v16 = *v19;
  v17 = v16;
  v15 = v16;
  v18 = v16;
  v14 = 0;
  v13 = 0;
  if (!v16)
  {
    return nanov2_allocate_outlined(v27, v19, v26, v21, v20, v22, v13, v25 & 1, v24 & 1, v23);
  }

  v59 = v27;
  v58 = v18;
  v57 = v21;
  v56 = &v22;
  v55 = &v14;
  v54 = 0;
  v53 = 0;
  v52 = *v18;
  v53 = v52;
  v54 = v52;
  v51 = 0;
  while (1)
  {
    v61 = v54;
    v7 = 0;
    if ((v54 & 0x80000000) != 0)
    {
      v7 = (v61 & 0x7FF) != 2044;
    }

    if (!v7)
    {
      v60 = 0;
      goto LABEL_44;
    }

    v50 = 0;
    v49 = 0;
    v48 = 0;
    v47 = (((((v54 >> 11) & 0x3FF) - 1) & 0x3FF) << 11) & 0x1FFFFF | (((((v54 >> 21) & 0x3FF) + 1) & 0x3FF) << 21) & 0x7FFFFFFF | 0x80000000;
    v46 = ((v54 >> 11) & 0x3FF) == 0;
    if ((v54 & 0x7FF) == 0x7FB || (v54 & 0x7FF) == 0x7FD)
    {
      v2 = v46 ? 2044 : 2043;
      v47 = v47 & 0xFFFFF800 | v2;
      v50 = slots_by_size_class[v57] - ((v54 >> 11) & 0x3FF) - 1;
    }

    else
    {
      v48 = 1;
      if (!v51)
      {
        v74 = v59;
        v73 = v58;
        v82 = v58;
        v72 = v58 & 0xFFFFFFFFFFFFC000;
        v75 = v58;
        v71 = v58 & 0xFFFFFFFFFC000000;
        v70 = (v58 - (v58 & 0xFFFFFFFFFFFFC000)) / 4;
        v84 = v70;
        v69 = ((v84 << 6) | (v84 >> 6)) & 0xFFF;
        v51 = (v58 & 0xFFFFFFFFFC000000) + ((((v84 << 6) | (v84 >> 6)) & 0xFFF) << 14);
      }

      v50 = (v54 & 0x7FF) - 1;
      v81 = v51;
      v80 = v57;
      v79 = v50;
      v86 = v57;
      v49 = (v51 + (16 * (v57 + 1) * v50));
      v45 = v49;
      v6 = v46 ? 2044 : v45[1];
      v47 = v47 & 0xFFFFF800 | v6 & 0x7FF;
    }

    v44 = v54;
    v43 = 0;
    v41 = v47;
    v42 = v47;
    v3 = v54;
    v4 = v54;
    atomic_compare_exchange_strong_explicit(v58, &v4, v47, memory_order_relaxed, memory_order_relaxed);
    if (v4 != v3)
    {
      v44 = v4;
    }

    v40 = v4 == v3;
    v43 = v4 == v3;
    v54 = v44;
    v39 = v43;
    if (v4 == v3)
    {
      break;
    }

    if ((v54 & 0x7FF) == 0x7FD || (v54 & 0x7FF) == 0x7FE || (v54 & 0x7FF) == 0x7FF)
    {
      *v56 = v58;
      v60 = 0;
      goto LABEL_44;
    }
  }

  if (!v49)
  {
    if (!v51)
    {
      v67 = v59;
      v66 = v58;
      v83 = v58;
      v65 = v58 & 0xFFFFFFFFFFFFC000;
      v68 = v58;
      v64 = v58 & 0xFFFFFFFFFC000000;
      v63 = (v58 - (v58 & 0xFFFFFFFFFFFFC000)) / 4;
      v85 = v63;
      v62 = ((v85 << 6) | (v85 >> 6)) & 0xFFF;
      v51 = (v58 & 0xFFFFFFFFFC000000) + ((((v85 << 6) | (v85 >> 6)) & 0xFFF) << 14);
    }

    v78 = v51;
    v77 = v57;
    v76 = v50;
    v87 = v57;
    v49 = (v51 + (16 * (v57 + 1) * v50));
  }

  if (v48)
  {
    v38 = v49;
    v35 = *v49;
    v36 = v35;
    v34 = v35;
    v37 = v35;
    if ((v35 ^ *(v59 + 28696)) != v49)
    {
      *v55 = 1;
    }
  }

  v60 = v49;
LABEL_44:
  v13 = v60;
  if (!v60 || (v14 & 1) != 0)
  {
    return nanov2_allocate_outlined(v27, v19, v26, v21, v20, v22, v13, v25 & 1, v24 & 1, v23);
  }

  if ((v25 & 1) != 0 && malloc_zero_policy)
  {
    v31 = v60;
    v30 = v26;
    _platform_bzero();
  }

  else
  {
    *v60 = 0;
    v13[1] = 0;
  }

  return v13;
}

uint64_t *nanov2_malloc_type_zero_on_alloc(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v10 = _nano_common_good_size(a2);
  if (v10 > 0x100)
  {
    return (*(*(a1 + 28704) + 160))(*(a1 + 28704), a2, a3);
  }

  v29 = a1;
  v28 = v10;
  v27 = 1;
  v26 = 1;
  v25 = a3;
  v24 = 0;
  v31 = v10;
  if (v10 % 0x10)
  {
    v9 = v31 / 0x10 + 1;
  }

  else
  {
    v9 = v31 / 0x10;
  }

  v23 = v9 - 1;
  if (nano_common_max_magazines_is_ncpu)
  {
    v35 = _malloc_cpu_number() & 0x3F;
  }

  else
  {
    v34 = 0;
    if (_os_cpu_number_override == -1)
    {
      v35 = ((_malloc_cpu_number() >> v34) % nano_common_max_magazines) & 0x3F;
    }

    else
    {
      v35 = ((_os_cpu_number_override >> v34) % nano_common_max_magazines) & 0x3F;
    }
  }

  v22 = v35;
  v21 = (v29 + 0x4000 + (v23 << 9) + 8 * v35);
  v18 = *v21;
  v19 = v18;
  v17 = v18;
  v20 = v18;
  v16 = 0;
  v15 = 0;
  if (!v18)
  {
    return nanov2_allocate_outlined(v29, v21, v28, v23, v22, v24, v15, v27 & 1, v26 & 1, v25);
  }

  v61 = v29;
  v60 = v20;
  v59 = v23;
  v58 = &v24;
  v57 = &v16;
  v56 = 0;
  v55 = 0;
  v54 = *v20;
  v55 = v54;
  v56 = v54;
  v53 = 0;
  while (1)
  {
    v63 = v56;
    v8 = 0;
    if ((v56 & 0x80000000) != 0)
    {
      v8 = (v63 & 0x7FF) != 2044;
    }

    if (!v8)
    {
      v62 = 0;
      goto LABEL_44;
    }

    v52 = 0;
    v51 = 0;
    v50 = 0;
    v49 = (((((v56 >> 11) & 0x3FF) - 1) & 0x3FF) << 11) & 0x1FFFFF | (((((v56 >> 21) & 0x3FF) + 1) & 0x3FF) << 21) & 0x7FFFFFFF | 0x80000000;
    v48 = ((v56 >> 11) & 0x3FF) == 0;
    if ((v56 & 0x7FF) == 0x7FB || (v56 & 0x7FF) == 0x7FD)
    {
      v3 = v48 ? 2044 : 2043;
      v49 = v49 & 0xFFFFF800 | v3;
      v52 = slots_by_size_class[v59] - ((v56 >> 11) & 0x3FF) - 1;
    }

    else
    {
      v50 = 1;
      if (!v53)
      {
        v76 = v61;
        v75 = v60;
        v84 = v60;
        v74 = v60 & 0xFFFFFFFFFFFFC000;
        v77 = v60;
        v73 = v60 & 0xFFFFFFFFFC000000;
        v72 = (v60 - (v60 & 0xFFFFFFFFFFFFC000)) / 4;
        v86 = v72;
        v71 = ((v86 << 6) | (v86 >> 6)) & 0xFFF;
        v53 = (v60 & 0xFFFFFFFFFC000000) + ((((v86 << 6) | (v86 >> 6)) & 0xFFF) << 14);
      }

      v52 = (v56 & 0x7FF) - 1;
      v83 = v53;
      v82 = v59;
      v81 = v52;
      v88 = v59;
      v51 = (v53 + (16 * (v59 + 1) * v52));
      v47 = v51;
      v7 = v48 ? 2044 : v47[1];
      v49 = v49 & 0xFFFFF800 | v7 & 0x7FF;
    }

    v46 = v56;
    v45 = 0;
    v43 = v49;
    v44 = v49;
    v4 = v56;
    v5 = v56;
    atomic_compare_exchange_strong_explicit(v60, &v5, v49, memory_order_relaxed, memory_order_relaxed);
    if (v5 != v4)
    {
      v46 = v5;
    }

    v42 = v5 == v4;
    v45 = v5 == v4;
    v56 = v46;
    v41 = v45;
    if (v5 == v4)
    {
      break;
    }

    if ((v56 & 0x7FF) == 0x7FD || (v56 & 0x7FF) == 0x7FE || (v56 & 0x7FF) == 0x7FF)
    {
      *v58 = v60;
      v62 = 0;
      goto LABEL_44;
    }
  }

  if (!v51)
  {
    if (!v53)
    {
      v69 = v61;
      v68 = v60;
      v85 = v60;
      v67 = v60 & 0xFFFFFFFFFFFFC000;
      v70 = v60;
      v66 = v60 & 0xFFFFFFFFFC000000;
      v65 = (v60 - (v60 & 0xFFFFFFFFFFFFC000)) / 4;
      v87 = v65;
      v64 = ((v87 << 6) | (v87 >> 6)) & 0xFFF;
      v53 = (v60 & 0xFFFFFFFFFC000000) + ((((v87 << 6) | (v87 >> 6)) & 0xFFF) << 14);
    }

    v80 = v53;
    v79 = v59;
    v78 = v52;
    v89 = v59;
    v51 = (v53 + (16 * (v59 + 1) * v52));
  }

  if (v50)
  {
    v40 = v51;
    v37 = *v51;
    v38 = v37;
    v36 = v37;
    v39 = v37;
    if ((v37 ^ *(v61 + 28696)) != v51)
    {
      *v57 = 1;
    }
  }

  v62 = v51;
LABEL_44:
  v15 = v62;
  if (!v62 || (v16 & 1) != 0)
  {
    return nanov2_allocate_outlined(v29, v21, v28, v23, v22, v24, v15, v27 & 1, v26 & 1, v25);
  }

  if ((v27 & 1) != 0 && malloc_zero_policy)
  {
    v33 = v62;
    v32 = v28;
    _platform_bzero();
  }

  else
  {
    *v62 = 0;
    v15[1] = 0;
  }

  return v15;
}

uint64_t *nanov2_realloc(uint64_t a1, void *a2, unint64_t a3)
{
  if (!a2)
  {
    return nanov2_malloc(a1, a3);
  }

  v7 = *(a1 + 28704);
  v6 = nanov2_pointer_size(a1, a2, 0);
  if (!v6)
  {
    return (*(v7 + 56))(v7, a2, a3);
  }

  if (a3 > 0x100)
  {
    v5 = (*(v7 + 24))(v7, a3);
    if (!v5)
    {
      return 0;
    }

LABEL_22:
    _platform_memmove();
    nanov2_free(a1, a2);
    return v5;
  }

  if (!a3)
  {
    nanov2_free(a1, a2);
    return nanov2_malloc(a1, 0);
  }

  v4 = _nano_common_good_size(a3);
  if (v4 > v6 || v4 <= v6 / 2)
  {
    v5 = nanov2_malloc(a1, v4);
    if (!v5)
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (a3 != v6)
  {
    if (a3 >= v6)
    {
      __break(1u);
      JUMPOUT(0x4A800);
    }

    if ((*(a1 + 28676) & 0x20) != 0)
    {
      _platform_memset();
    }
  }

  return a2;
}

uint64_t *nanov2_realloc_type(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return nanov2_malloc_type(a1, a3, a4);
  }

  v8 = *(a1 + 28704);
  v7 = nanov2_pointer_size(a1, a2, 0);
  if (!v7)
  {
    return (*(v8 + 176))(v8, a2, a3, a4);
  }

  if (a3 > 0x100)
  {
    v6 = (*(v8 + 160))(v8, a3, a4);
    if (!v6)
    {
      return 0;
    }

LABEL_22:
    _platform_memmove();
    nanov2_free(a1, a2);
    return v6;
  }

  if (!a3)
  {
    nanov2_free(a1, a2);
    return nanov2_malloc(a1, 0);
  }

  v5 = _nano_common_good_size(a3);
  if (v5 > v7 || v5 <= v7 / 2)
  {
    v6 = nanov2_malloc_type(a1, v5, a4);
    if (!v6)
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (a3 != v7)
  {
    if (a3 >= v7)
    {
      __break(1u);
      JUMPOUT(0x4AB44);
    }

    if ((*(a1 + 28676) & 0x20) != 0)
    {
      _platform_memset();
    }
  }

  return a2;
}

BOOL nanov2_claimed_address(void *a1, unint64_t a2)
{
  v3 = 1;
  if (!nanov2_pointer_size(a1, a2, 1))
  {
    return malloc_zone_claimed_address(a1[3588], a2) != 0;
  }

  return v3;
}

uint64_t nanov2_pointer_size(void *a1, unint64_t a2, int a3)
{
  if (a2 >> 29 != 24)
  {
    return 0;
  }

  if (!a3 && (a2 & 0xF) != 0)
  {
    return 0;
  }

  if (a2 < a1[3590] || a2 > a1[3591])
  {
    return 0;
  }

  v6 = ptr_offset_to_size_class[((a2 >> 14) & 0xFFF ^ a1[3585]) >> 6];
  v5 = *((a2 & 0xFFFFFFFFFC000000 ^ a1[3586]) + 4 * (((((a2 >> 14) & 0xFFF) << 6) | (((a2 >> 14) & 0xFFF) >> 6)) & 0xFFF));
  v4 = 0;
  if ((v5 & 0x7FF) != 0)
  {
    v4 = 0;
    if ((*((a2 & 0xFFFFFFFFFC000000 ^ a1[3586]) + 4 * (((((a2 >> 14) & 0xFFF) << 6) | (((a2 >> 14) & 0xFFF) >> 6)) & 0xFFF)) & 0x7FF) != 0x7FE)
    {
      v4 = 0;
      if ((*((a2 & 0xFFFFFFFFFC000000 ^ a1[3586]) + 4 * (((((a2 >> 14) & 0xFFF) << 6) | (((a2 >> 14) & 0xFFF) >> 6)) & 0xFFF)) & 0x7FF) != 0x7FF)
      {
        v4 = (*((a2 & 0xFFFFFFFFFC000000 ^ a1[3586]) + 4 * (((((a2 >> 14) & 0xFFF) << 6) | (((a2 >> 14) & 0xFFF) >> 6)) & 0xFFF)) & 0x7FF) != 2042;
      }
    }
  }

  if (!v4 || (*((a2 & 0xFFFFFFFFFC000000 ^ a1[3586]) + 4 * (((((a2 >> 14) & 0xFFF) << 6) | (((a2 >> 14) & 0xFFF) >> 6)) & 0xFFF)) & 0x7FF) != 0x7FC && ((v5 >> 11) & 0x3FF) == slots_by_size_class[v6] - 1)
  {
    return 0;
  }

  v8 = ptr_offset_to_size_class[((a2 >> 14) & 0xFFF ^ a1[3585]) >> 6];
  if (!a3 && (a2 & 0x3FFF) % (16 * (v6 + 1)))
  {
    return 0;
  }

  if ((*a2 ^ a1[3587]) == a2)
  {
    return 0;
  }

  return 16 * (v6 + 1);
}

uint64_t nanov2_batch_malloc(uint64_t a1, unint64_t a2, uint64_t **a3, unsigned int a4)
{
  v8 = 0;
  v7 = _nano_common_good_size(a2);
  if (v7 > 0x100)
  {
    return (v8 + (*(*(a1 + 28704) + 80))(*(a1 + 28704), a2, a3, a4 - v8));
  }

  while (v8 < a4)
  {
    v6 = nanov2_malloc(a1, v7);
    if (!v6)
    {
      break;
    }

    v4 = a3++;
    *v4 = v6;
    ++v8;
  }

  if (v8 == a4)
  {
    return v8;
  }

  else
  {
    return (v8 + (*(*(a1 + 28704) + 80))(*(a1 + 28704), a2, a3, a4 - v8));
  }
}

void nanov2_batch_free(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = a3;
  if (a3)
  {
    while (v5--)
    {
      v4 = *(a2 + 8 * v5);
      if (v4)
      {
        nanov2_free(a1, v4);
      }
    }
  }
}

uint64_t *nanov2_memalign(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 > 0x10)
  {
    return (*(*(a1 + 28704) + 112))(*(a1 + 28704), a2, a3);
  }

  else
  {
    return nanov2_malloc(a1, a3);
  }
}

uint64_t *nanov2_memalign_type(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a2 > 0x10)
  {
    return (*(*(a1 + 28704) + 184))(*(a1 + 28704), a2, a3, a4);
  }

  else
  {
    return nanov2_malloc_type(a1, a3, a4);
  }
}

unint64_t nanov2_pressure_relief(uint64_t a1, unint64_t a2)
{
  if (nanov2_madvise_policy != 1 && nanov2_madvise_policy != 2)
  {
    return 0;
  }

  v14 = *(a1 + 72);
  if (malloc_tracing_enabled)
  {
    kdebug_trace();
  }

  v13 = 0;
  v12 = *(a1 + 28720);
  v11 = ((*(a1 + 28680) << 6) | (*(a1 + 28680) >> 6)) & 0xFFF;
  explicit = atomic_load_explicit((a1 + 28728), memory_order_acquire);
  while (v12)
  {
    v9 = v12;
    if (v12 == ((explicit - 1) & 0xFFFFFFFFE0000000))
    {
      v18 = explicit;
    }

    else
    {
      v18 = v12 + 0x20000000;
    }

    while (v9 < v18)
    {
      v8 = (v9 & 0xFFFFFFFFFC000000 ^ *(a1 + 28688));
      v2 = 0;
      atomic_compare_exchange_strong_explicit((a1 + 28736), &v2, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
      if (v2)
      {
        os_unfair_lock_lock_with_options();
      }

      for (i = 0; i < 0x1000; ++i)
      {
        if (i != v11 && (*v8 & 0x7FF) == 0x7FD && nanov2_madvise_block_locked(a1, v8, v9 + ((((i << 6) | (i >> 6)) & 0xFFF) << 14), ptr_offset_to_size_class[(((v9 + ((((i << 6) | (i >> 6)) & 0xFFF) << 14)) >> 14) & 0xFFF ^ *(a1 + 28680)) >> 6], 2045))
        {
          v13 += 0x4000;
        }

        v8 = (v8 + 4);
      }

      v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v4 = v3;
      atomic_compare_exchange_strong_explicit((a1 + 28736), &v4, 0, memory_order_release, memory_order_relaxed);
      if (v4 != v3)
      {
        os_unfair_lock_unlock((a1 + 28736));
      }

      if (a2 && v13 >= a2)
      {
        goto LABEL_33;
      }

      v9 += 0x4000000;
    }

    v19 = *((v12 & 0xFFFFFFFFFC000000 ^ *(a1 + 28688)) + 4 * (((*(a1 + 28680) << 6) | (*(a1 + 28680) >> 6)) & 0xFFF));
    if (v19)
    {
      if (v12 + (v19 << 29) >= explicit)
      {
        v6 = 0;
      }

      else
      {
        v6 = v12 + (v19 << 29);
      }

      v20 = v6;
    }

    else
    {
      v20 = 0;
    }

    v12 = v20;
  }

LABEL_33:
  if (malloc_tracing_enabled)
  {
    kdebug_trace();
  }

  return v13;
}

uint64_t nanov2_madvise_block_locked(os_unfair_lock_s *a1, atomic_uint *a2, unint64_t a3, int a4, int a5)
{
  os_unfair_lock_assert_owner(a1 + 7184);
  v11 = 0;
  v10 = *a2;
  if ((*a2 & 0x7FF) != a5)
  {
    return v11;
  }

  v5 = *a2;
  atomic_compare_exchange_strong_explicit(a2, &v5, (((((v10 >> 21) & 0x3FF) + 1) & 0x3FF) << 21) & 0x7FFFF801 | 0x7FE, memory_order_relaxed, memory_order_relaxed);
  if (v5 == v10)
  {
    if (mvm_madvise_free(a1, a3 & 0xFFFFFFFFE0000000, a3, a3 + 0x4000, 0, 0))
    {
      v8 = *__error();
      malloc_zone_error(0, 0, "Failed to madvise block at blockp: %p, error: %d\n");
    }

    else
    {
      ++*&a1[8 * a4 + 7192]._os_unfair_lock_opaque;
      v11 = 1;
    }

    v6 = (((((v10 >> 21) & 0x3FF) + 1) & 0x3FF) << 21) & 0x7FFFF801 | 0x7FE;
    v9 = v6;
    atomic_compare_exchange_strong_explicit(a2, &v6, (((((v6 >> 21) & 0x3FF) + 1) & 0x3FF) << 21) & 0x7FFFF800 | 0x7FF, memory_order_relaxed, memory_order_relaxed);
    if (v6 != v9)
    {
      malloc_zone_error(a1[7169]._os_unfair_lock_opaque, 0, "Failed when changing state from MADVISING to MADVISED, block_metap = %p, blockp = %p\n");
    }

    return v11;
  }

  ++*&a1[8 * a4 + 7194]._os_unfair_lock_opaque;
  return 0;
}

uint64_t *nanov2_find_block_and_allocate(uint64_t a1, int a2, atomic_uint **a3)
{
  v55 = a1;
  v54 = a2;
  v53 = a3;
  new_region = 0;
  v49 = *a3;
  v50 = v49;
  v48 = v49;
  v51 = v49;
  v47 = v49;
  if (v49)
  {
    v81 = v51;
    new_region = v51 & 0xFFFFFFFFFC000000;
  }

  else
  {
    v80 = *(v55 + 28720);
    new_region = v80 & 0xFFFFFFFFFC000000;
  }

  v46 = 0;
LABEL_5:
  while (2)
  {
    v82 = new_region;
    v46 = new_region & 0xFFFFFFFFE0000000;
    v45 = new_region;
    v44 = new_region & 0xFFFFFFFFE0000000;
    explicit = atomic_load_explicit((v55 + 28728), memory_order_acquire);
    v42 = explicit;
    v40 = explicit;
    v43 = explicit;
    v66 = v55;
    v65 = v46;
    v64 = explicit;
    v63 = 0;
    v151 = explicit;
    v152 = explicit - 1;
    if (v46 == ((explicit - 1) & 0xFFFFFFFFE0000000))
    {
      v63 = v64;
    }

    else
    {
      v67 = v65 + 0x20000000;
      v63 = v65 + 0x20000000;
    }

    v39 = v63;
    do
    {
      v113 = v55;
      v112 = new_region;
      v111 = v54;
      v110 = v51;
      v25 = 1;
      if (v51)
      {
        v25 = nanov2_policy_config == 0;
      }

      v109 = v25;
      v182 = v113;
      v181 = v111;
      v180 = v112;
      v179 = first_block_offset_by_size_class[v111];
      v184 = v113;
      v183 = v112;
      v185 = v112;
      v188 = v113;
      v187 = v112 & 0xFFFFFFFFFC000000;
      v178 = v112 & 0xFFFFFFFFFC000000 ^ *(v113 + 28688);
      v177 = v179 ^ *(v113 + 28680);
      v186 = v177;
      v176 = ((v177 << 6) | (v177 >> 6)) & 0xFFF;
      v108 = v178 + 4 * (((v177 << 6) | (v177 >> 6)) & 0xFFF);
      v107 = 0;
      if (!v110)
      {
        v110 = v108;
      }

      v106 = slots_by_size_class[v111];
      v105 = 0;
      v104 = 0;
      v103 = 0;
      v102 = 0;
      v101 = 0;
      v100 = 0;
      v99 = 0;
      v98 = 0;
      while (1)
      {
        v104 = v110;
        v103 = 0;
        v102 = 0;
        v101 = 0;
        v100 = 0;
        v99 = 0;
        v98 = dword_D803C;
        v107 = 1;
        do
        {
          v97 = 0;
          v96 = *v104;
          v97 = v96;
          v105 = v96;
          if (v96 >= 0 && (v105 & 0x7FF) != 0x7FC && (v105 & 0x7FF) != 0x7FE)
          {
            if ((v105 & 0x7FF) == 0x7FD)
            {
              if (!v102)
              {
                v102 = v104;
              }
            }

            else if ((v105 & 0x7FF) != 0 && (v105 & 0x7FF) != 0x7FF)
            {
              if (v109)
              {
                v103 = v104;
              }

              else
              {
                if (nanov2_policy_config != 1)
                {
                  __break(1u);
                  JUMPOUT(0x4C164);
                }

                v95 = (100 * ((v105 >> 11) & 0x3FF)) / v106;
                if (v95 < dword_D8034 || v95 > dword_D8038)
                {
                  if (v95 < dword_D8034)
                  {
                    if (v100 || v95 >= dword_D8034)
                    {
                      if (!v101)
                      {
                        v101 = v104;
                      }
                    }

                    else
                    {
                      v100 = v104;
                      v99 = 1;
                    }
                  }

                  else if (!v100 || v99)
                  {
                    v100 = v104;
                  }
                }

                else
                {
                  v103 = v104;
                }
              }
            }

            else if (!v101)
            {
              v101 = v104;
            }

            if (v109 && (v103 || v100 || v101))
            {
              break;
            }
          }

          if (v98 > 0 && (v100 || v101) && !--v98)
          {
            break;
          }

          if (v107)
          {
            v94 = 0;
            v196 = v113;
            v195 = v111;
            v194 = v104;
            v193 = &v94;
            v192 = v104 & 0xFFFFFFFFFFFFC000;
            v191 = (v104 - (v104 & 0xFFFFFFFFFFFFC000)) / 4;
            v197 = v191;
            v190 = ((((v104 - (v104 & 0xFFFFFFFFFFFFC000)) / 4) << 6) | (v191 >> 6)) & 0xFFF;
            v190 ^= *(v113 + 28680);
            v189 = first_block_offset_by_size_class[v111];
            if (&v10 != -576)
            {
              *v193 = v190 == v189;
            }

            if (v190 == v189)
            {
              v24 = last_block_offset_by_size_class[v195];
            }

            else
            {
              v24 = v190 - 1;
            }

            v190 = v24;
            v190 = v24 ^ *(v196 + 28680);
            v198 = v190;
            v191 = ((v190 << 6) | (v190 >> 6)) & 0xFFF;
            v93 = (v192 + 4 * (((v190 << 6) | (v190 >> 6)) & 0xFFF));
            if (v94)
            {
              v98 = dword_D803C;
              v107 = 0;
              v104 = v110;
            }

            else
            {
              v104 = v93;
            }
          }

          else
          {
            v206 = v113;
            v205 = v111;
            v204 = v104;
            v203 = 0;
            v202 = v104 & 0xFFFFFFFFFFFFC000;
            v201 = (v104 - (v104 & 0xFFFFFFFFFFFFC000)) / 4;
            v207 = v201;
            v200 = ((v207 << 6) | (v207 >> 6)) & 0xFFF;
            v200 ^= *(v113 + 28680);
            v199 = last_block_offset_by_size_class[v111];
            if (v200 == v199)
            {
              v23 = first_block_offset_by_size_class[v205];
            }

            else
            {
              v23 = v200 + 1;
            }

            v200 = v23;
            v200 = v23 ^ *(v206 + 28680);
            v208 = v200;
            v201 = ((v208 << 6) | (v208 >> 6)) & 0xFFF;
            v104 = v202 + 4 * (((v208 << 6) | (v208 >> 6)) & 0xFFF);
            if (v104 == v110)
            {
              break;
            }
          }
        }

        while (!v103);
        if (!v103)
        {
          if (v100)
          {
            v103 = v100;
          }

          else if (v101)
          {
            v103 = v101;
          }

          else if (v102)
          {
            v103 = v102;
          }
        }

        if (!v103)
        {
          break;
        }

        v92 = 0;
        v91 = *v103;
        v92 = v91;
        v105 = v91;
        if ((v91 & 0x7FF) != 0x7FE)
        {
          v22 = 1;
          if ((v105 & 0x7FF) != 0)
          {
            v22 = 1;
            if ((v105 & 0x7FF) != 0x7FD)
            {
              v22 = (v105 & 0x7FF) == 2047;
            }
          }

          v90 = v22;
          v89 = 0;
          if (v22)
          {
            v21 = 2043;
          }

          else
          {
            v21 = v105 & 0x7FF;
          }

          v89 = v89 & 0xFFFFF800 | v21 & 0x7FF;
          if (v90)
          {
            v20 = v106 - 1;
          }

          else
          {
            v20 = (v105 >> 11) & 0x3FF;
          }

          v89 = v89 & 0xFFE007FF | ((v20 & 0x3FF) << 11);
          if (v90)
          {
            v19 = 0;
          }

          else
          {
            v19 = ((v105 >> 21) & 0x3FF) + 1;
          }

          v89 = v89 & 0x801FFFFF | ((v19 & 0x3FF) << 21);
          v89 = v89 & 0x7FFFFFFF | 0x80000000;
          v88 = v105;
          v87 = 0;
          v85 = v89;
          v86 = v89;
          v3 = v105;
          v4 = v105;
          atomic_compare_exchange_strong_explicit(v103, &v4, v89, memory_order_relaxed, memory_order_relaxed);
          v17 = v4;
          v18 = v4 == v3;
          if (v4 != v3)
          {
            v88 = v17;
          }

          v84 = v18;
          v87 = v18;
          v105 = v88;
          v83 = v87;
          if (v18)
          {
            break;
          }
        }
      }

      v38 = v103;
      if (v103)
      {
        v37 = nanov2_allocate_from_block(v55, v38, v54);
        if (!v37)
        {
          v124 = v38;
          v122 = nanov2_turn_off_in_use_mask;
          v121 = nanov2_turn_off_in_use_mask;
          v123 = nanov2_turn_off_in_use_mask;
          v117 = nanov2_turn_off_in_use_mask;
          v116 = nanov2_turn_off_in_use_mask;
          v118 = nanov2_turn_off_in_use_mask;
          v115 = atomic_fetch_and_explicit(v38, nanov2_turn_off_in_use_mask, memory_order_relaxed);
          v119 = v115;
          v114 = v115;
          v120 = v115 & v123;
          v51 = v38;
          goto LABEL_5;
        }

        v36 = v38;
        v35 = v38;
        *v53 = v38;
        v34 = v36;
        if (v47)
        {
          v135 = v47;
          v133 = nanov2_turn_off_in_use_mask;
          v132 = nanov2_turn_off_in_use_mask;
          v134 = nanov2_turn_off_in_use_mask;
          v128 = nanov2_turn_off_in_use_mask;
          v127 = nanov2_turn_off_in_use_mask;
          v129 = nanov2_turn_off_in_use_mask;
          v126 = atomic_fetch_and_explicit(v47, nanov2_turn_off_in_use_mask, memory_order_relaxed);
          v130 = v126;
          v125 = v126;
          v131 = v126 & v134;
        }

        return v37;
      }

      v51 = 0;
      new_region += 0x4000000;
      if (new_region >= v39)
      {
        v78 = v55;
        v77 = v44;
        v76 = v43;
        v144 = v55;
        v143 = v44;
        v147 = v55;
        v146 = v44;
        v148 = v44;
        v156 = v55;
        v155 = v44 & 0xFFFFFFFFFC000000;
        v142 = v44 & 0xFFFFFFFFFC000000 ^ *(v55 + 28688);
        v145 = v55;
        v149 = *(v55 + 28680);
        v75 = (v142 + 4 * (((v149 << 6) | (v149 >> 6)) & 0xFFF));
        v72 = *v75;
        v73 = v72;
        v71 = v72;
        v74 = v72;
        if (v72)
        {
          v70 = v77 + (v74 << 29);
          if (v70 >= v76)
          {
            v16 = 0;
          }

          else
          {
            v16 = v70;
          }

          v79 = v16;
        }

        else
        {
          v79 = 0;
        }

        v44 = v79;
        if (!v79)
        {
          v44 = *(v55 + 28720);
        }

        v57 = v44;
        new_region = v44;
        v61 = v55;
        v60 = v44;
        v59 = v43;
        v58 = 0;
        v153 = v43;
        v154 = v43 - 1;
        if (v44 == ((v43 - 1) & 0xFFFFFFFFE0000000))
        {
          v58 = v59;
        }

        else
        {
          v62 = v60 + 0x20000000;
          v58 = v60 + 0x20000000;
        }

        v39 = v58;
      }
    }

    while (new_region != v45);
    if ((word_D8040 & (1 << v54)) != 0)
    {
      return 0;
    }

    v33 = 0;
    v68 = v55 + 28716;
    v163 = v55 + 28716;
    v162 = 327680;
    v164 = 3;
    v165 = 3;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v161 = *(StatusReg + 24);
    v160 = 0;
    v159 = v161;
    v158 = v161;
    v5 = 0;
    atomic_compare_exchange_strong_explicit((v55 + 28716), &v5, v161, memory_order_acquire, memory_order_acquire);
    v14 = v5;
    v15 = v5 == 0;
    if (v5)
    {
      v160 = v14;
    }

    v157 = v15;
    if (!v15)
    {
      os_unfair_lock_lock_with_options();
    }

    v30 = *(v55 + 28728);
    v31 = v30;
    v29 = v30;
    v32 = v30;
    if (v30 == v43)
    {
      v136 = v32;
      v137 = v32;
      if (v32 == (v32 & 0xFFFFFFFFE0000000))
      {
        new_region = nanov2_allocate_new_region();
        if (!new_region)
        {
          v33 = 1;
        }
      }

      else
      {
        new_region = v32;
        v28 = v32 + 0x4000000;
        v27 = v32 + 0x4000000;
        *(v55 + 28728) = v32 + 0x4000000;
        v26 = v28;
      }

      if (!v33)
      {
        v140 = v55;
        v139 = new_region;
        if ((*(v55 + 28676) & 7) != 0)
        {
          v141 = v140;
          v150 = *(v140 + 28680);
          v138 = ((v150 << 6) | (v150 >> 6)) & 0xFFF;
          v228 = v140;
          v227 = v139;
          v226 = (((v150 << 6) | (v150 >> 6)) & 0xFFF) == 0;
          v232 = v226;
          v225 = ((v232 << 6) | (v232 >> 6)) & 0xFFF;
          v230 = v140;
          v229 = v139;
          v231 = v139;
          v234 = v140;
          v233 = v139 & 0xFFFFFFFFFC000000;
          v224 = v139 & 0xFFFFFFFFFC000000 ^ *(v140 + 28688);
          *(v224 + 4 * (((v226 << 6) | (v226 >> 6)) & 0xFFF)) = nanov2_create_guard_block_in_use_block;
          v223 = (v227 + (v226 << 14));
          v222 = mprotect(v223, 0x4000uLL, 1);
          if (v222)
          {
            v10 = v223;
            v11 = v222;
            malloc_report(3, "Failed to create guard block at %p (%d)\n");
          }

          if (v138 == 4095)
          {
            v6 = 4094;
          }

          else
          {
            v6 = 4095;
          }

          v215 = v140;
          v214 = v139;
          v213 = v6;
          v219 = v6;
          v212 = ((v219 << 6) | (v219 >> 6)) & 0xFFF;
          v217 = v140;
          v216 = v139;
          v218 = v139;
          v221 = v140;
          v220 = v139 & 0xFFFFFFFFFC000000;
          v211 = v139 & 0xFFFFFFFFFC000000 ^ *(v140 + 28688);
          *(v211 + 4 * (((v6 << 6) | (v6 >> 6)) & 0xFFF)) = nanov2_create_guard_block_in_use_block;
          v210 = (v214 + (v213 << 14));
          v209 = mprotect(v210, 0x4000uLL, 1);
          if (v209)
          {
            v10 = v210;
            v11 = v209;
            malloc_report(3, "Failed to create guard block at %p (%d)\n");
          }
        }
      }
    }

    else
    {
      new_region = v32 - 0x4000000;
    }

    v69 = v55 + 28716;
    lock = (v55 + 28716);
    v173 = 3;
    v174 = 3;
    v175 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v171 = *(v175 + 24);
    v170 = 0;
    v169 = v171;
    v168 = 0;
    v7 = v171;
    v8 = v171;
    atomic_compare_exchange_strong_explicit((v55 + 28716), &v8, 0, memory_order_release, memory_order_relaxed);
    v12 = v8;
    v13 = v8 == v7;
    if (v8 != v7)
    {
      v169 = v12;
    }

    v167 = v13;
    if (!v13)
    {
      os_unfair_lock_unlock(lock);
    }

    if (!v33)
    {
      v51 = 0;
      continue;
    }

    return 0;
  }
}

uint64_t *nanov2_allocate_from_block(uint64_t a1, atomic_uint *a2, int a3)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = 0;
  v10 = 0;
  v40 = a1;
  v39 = a2;
  v38 = a3;
  v37 = &v11;
  v36 = &v10;
  v35 = 0;
  v34 = 0;
  v33 = *a2;
  v34 = v33;
  v35 = v33;
  v32 = 0;
  while (1)
  {
    v42 = v35;
    v8 = 0;
    if ((v35 & 0x80000000) != 0)
    {
      v8 = (v42 & 0x7FF) != 2044;
    }

    if (!v8)
    {
      v41 = 0;
      goto LABEL_34;
    }

    v31 = 0;
    v30 = 0;
    v29 = 0;
    v28 = (((((v35 >> 11) & 0x3FF) - 1) & 0x3FF) << 11) & 0x1FFFFF | (((((v35 >> 21) & 0x3FF) + 1) & 0x3FF) << 21) & 0x7FFFFFFF | 0x80000000;
    v27 = ((v35 >> 11) & 0x3FF) == 0;
    if ((v35 & 0x7FF) == 0x7FB || (v35 & 0x7FF) == 0x7FD)
    {
      v3 = v27 ? 2044 : 2043;
      v28 = v28 & 0xFFFFF800 | v3;
      v31 = slots_by_size_class[v38] - ((v35 >> 11) & 0x3FF) - 1;
    }

    else
    {
      v29 = 1;
      if (!v32)
      {
        v55 = v40;
        v54 = v39;
        v63 = v39;
        v53 = v39 & 0xFFFFFFFFFFFFC000;
        v56 = v39;
        v52 = v39 & 0xFFFFFFFFFC000000;
        v51 = (v39 - (v39 & 0xFFFFFFFFFFFFC000)) / 4;
        v65 = v51;
        v50 = ((v65 << 6) | (v65 >> 6)) & 0xFFF;
        v32 = (v39 & 0xFFFFFFFFFC000000) + ((((v65 << 6) | (v65 >> 6)) & 0xFFF) << 14);
      }

      v31 = (v35 & 0x7FF) - 1;
      v62 = v32;
      v61 = v38;
      v60 = v31;
      v67 = v38;
      v30 = (v32 + 16 * (v38 + 1) * v31);
      v26 = v30;
      v7 = v27 ? 2044 : v26[1];
      v28 = v28 & 0xFFFFF800 | v7 & 0x7FF;
    }

    v25 = v35;
    v24 = 0;
    v22 = v28;
    v23 = v28;
    v4 = v35;
    v5 = v35;
    atomic_compare_exchange_strong_explicit(v39, &v5, v28, memory_order_relaxed, memory_order_relaxed);
    if (v5 != v4)
    {
      v25 = v5;
    }

    v21 = v5 == v4;
    v24 = v5 == v4;
    v35 = v25;
    v20 = v24;
    if (v5 == v4)
    {
      break;
    }

    if ((v35 & 0x7FF) == 0x7FD || (v35 & 0x7FF) == 0x7FE || (v35 & 0x7FF) == 0x7FF)
    {
      *v37 = v39;
      v41 = 0;
      goto LABEL_34;
    }
  }

  if (!v30)
  {
    if (!v32)
    {
      v48 = v40;
      v47 = v39;
      v64 = v39;
      v46 = v39 & 0xFFFFFFFFFFFFC000;
      v49 = v39;
      v45 = v39 & 0xFFFFFFFFFC000000;
      v44 = (v39 - (v39 & 0xFFFFFFFFFFFFC000)) / 4;
      v66 = v44;
      v43 = ((v66 << 6) | (v66 >> 6)) & 0xFFF;
      v32 = (v39 & 0xFFFFFFFFFC000000) + ((((v66 << 6) | (v66 >> 6)) & 0xFFF) << 14);
    }

    v59 = v32;
    v58 = v38;
    v57 = v31;
    v68 = v38;
    v30 = (v32 + 16 * (v38 + 1) * v31);
  }

  if (v29)
  {
    v19 = v30;
    v16 = *v30;
    v17 = v16;
    v15 = v16;
    v18 = v16;
    if ((v16 ^ *(v40 + 28696)) != v30)
    {
      *v36 = 1;
    }
  }

  v41 = v30;
LABEL_34:
  v9 = v41;
  if (v10)
  {
    nanov2_guard_corruption_detected(v41);
  }

  if (v11)
  {
    nanov2_madvise_block(v14, v11, v12, 2047);
  }

  return v9;
}

void *nanov2_create_zone(uint64_t a1, int a2)
{
  if (_malloc_engaged_nano != 2)
  {
    __break(1u);
    JUMPOUT(0x4D864);
  }

  based_pages = nano_common_allocate_based_pages((vm_page_mask + 29264) & ~vm_page_mask, 0, 0, 1, 0);
  if (based_pages)
  {
    *(based_pages + 26) = 16;
    v44 = 0;
    if (nanov2_size)
    {
      v44 = nanov2_size;
    }

    v43 = 0;
    if (v44)
    {
      v43 = v44;
    }

    *(based_pages + 2) = v43;
    if (malloc_zero_policy == 2)
    {
      v42 = 0;
      if (nanov2_malloc_zero_on_alloc)
      {
        v42 = nanov2_malloc_zero_on_alloc;
      }

      v41 = 0;
      if (v42)
      {
        v41 = v42;
      }

      *(based_pages + 3) = v41;
      v40 = 0;
      if (nanov2_malloc_type_zero_on_alloc)
      {
        v40 = nanov2_malloc_type_zero_on_alloc;
      }

      v39 = 0;
      if (v40)
      {
        v39 = v40;
      }

      *(based_pages + 20) = v39;
    }

    else
    {
      v38 = 0;
      if (nanov2_malloc)
      {
        v38 = nanov2_malloc;
      }

      v37 = 0;
      if (v38)
      {
        v37 = v38;
      }

      *(based_pages + 3) = v37;
      v36 = 0;
      if (nanov2_malloc_type)
      {
        v36 = nanov2_malloc_type;
      }

      v35 = 0;
      if (v36)
      {
        v35 = v36;
      }

      *(based_pages + 20) = v35;
    }

    v34 = 0;
    if (nanov2_calloc)
    {
      v34 = nanov2_calloc;
    }

    v33 = 0;
    if (v34)
    {
      v33 = v34;
    }

    *(based_pages + 4) = v33;
    v32 = 0;
    if (nanov2_valloc)
    {
      v32 = nanov2_valloc;
    }

    v31 = 0;
    if (v32)
    {
      v31 = v32;
    }

    *(based_pages + 5) = v31;
    v30 = 0;
    if (nanov2_free)
    {
      v30 = nanov2_free;
    }

    v29 = 0;
    if (v30)
    {
      v29 = v30;
    }

    *(based_pages + 6) = v29;
    v28 = 0;
    if (nanov2_realloc)
    {
      v28 = nanov2_realloc;
    }

    v27 = 0;
    if (v28)
    {
      v27 = v28;
    }

    *(based_pages + 7) = v27;
    v26 = 0;
    if (nanov2_destroy)
    {
      v26 = nanov2_destroy;
    }

    v25 = 0;
    if (v26)
    {
      v25 = v26;
    }

    *(based_pages + 8) = v25;
    v24 = 0;
    if (nanov2_batch_malloc)
    {
      v24 = nanov2_batch_malloc;
    }

    v23 = 0;
    if (v24)
    {
      v23 = v24;
    }

    *(based_pages + 10) = v23;
    v22 = 0;
    if (nanov2_batch_free)
    {
      v22 = nanov2_batch_free;
    }

    v21 = 0;
    if (v22)
    {
      v21 = v22;
    }

    *(based_pages + 11) = v21;
    *(based_pages + 12) = nanov2_introspect;
    v20 = 0;
    if (nanov2_memalign)
    {
      v20 = nanov2_memalign;
    }

    v19 = 0;
    if (v20)
    {
      v19 = v20;
    }

    *(based_pages + 14) = v19;
    v18 = 0;
    if (nanov2_free_definite_size)
    {
      v18 = nanov2_free_definite_size;
    }

    v17 = 0;
    if (v18)
    {
      v17 = v18;
    }

    *(based_pages + 15) = v17;
    v16 = 0;
    if (nanov2_pressure_relief)
    {
      v16 = nanov2_pressure_relief;
    }

    v15 = 0;
    if (v16)
    {
      v15 = v16;
    }

    *(based_pages + 16) = v15;
    v14 = 0;
    if (nanov2_claimed_address)
    {
      v14 = nanov2_claimed_address;
    }

    v13 = 0;
    if (v14)
    {
      v13 = v14;
    }

    *(based_pages + 17) = v13;
    v12 = 0;
    if (nanov2_try_free_default)
    {
      v12 = nanov2_try_free_default;
    }

    v11 = 0;
    if (v12)
    {
      v11 = v12;
    }

    *(based_pages + 18) = v11;
    v10 = 0;
    if (nanov2_calloc_type)
    {
      v10 = nanov2_calloc_type;
    }

    v9 = 0;
    if (v10)
    {
      v9 = v10;
    }

    *(based_pages + 21) = v9;
    v8 = 0;
    if (nanov2_realloc_type)
    {
      v8 = nanov2_realloc_type;
    }

    v7 = 0;
    if (v8)
    {
      v7 = v8;
    }

    *(based_pages + 22) = v7;
    v6 = 0;
    if (nanov2_memalign_type)
    {
      v6 = nanov2_memalign_type;
    }

    v5 = 0;
    if (v6)
    {
      v5 = v6;
    }

    *(based_pages + 23) = v5;
    *based_pages = 0;
    *(based_pages + 1) = 0;
    mprotect(based_pages, 0xC8uLL, 1);
    *(based_pages + 7169) = a2;
    *(based_pages + 3588) = a1;
    v45 = malloc_entropy[0] & 0xFFFFFFFF0000;
    if ((malloc_entropy[0] & 0xFFFFFFFF0000) == 0)
    {
      v45 = qword_DA448 & 0xFFFFFFFF0000;
      if ((qword_DA448 & 0xFFFFFFFF0000) == 0)
      {
        v45 = 0xDEADDEAD0000;
      }
    }

    *(based_pages + 3587) = v45;
    *(based_pages + 3585) = qword_DA448 >> 52;
    *(based_pages + 3586) = *(based_pages + 3585) << 14;
    *(based_pages + 7178) = 0;
    *(based_pages + 7179) = 0;
    *(based_pages + 7184) = 0;
    if (nanov2_allocate_region(0x300000000uLL))
    {
      *((*(based_pages + 3586) ^ 0x300000000) + 4 * (((*(based_pages + 3585) << 6) | (*(based_pages + 3585) >> 6)) & 0xFFF)) = 0;
      *(based_pages + 3590) = 0x300000000;
      atomic_store(0x304000000uLL, based_pages + 3591);
      *(based_pages + 7186) = 1;
      if ((*(based_pages + 7169) & 7) != 0)
      {
        v50 = *(based_pages + 3585);
        v2 = (((v50 << 6) | (v50 >> 6)) & 0xFFF) == 0;
        *((*(based_pages + 3586) ^ 0x300000000) + 4 * (((v2 << 6) | (v2 >> 6)) & 0xFFF)) = nanov2_create_guard_block_in_use_block;
        if (mprotect(((((((v50 << 6) | (v50 >> 6)) & 0xFFF) == 0) << 14) + 0x300000000), 0x4000uLL, 1))
        {
          malloc_report(3, "Failed to create guard block at %p (%d)\n");
        }

        if ((((v50 << 6) | (v50 >> 6)) & 0xFFF) == 0xFFF)
        {
          v3 = 4094;
        }

        else
        {
          v3 = 4095;
        }

        *((*(based_pages + 3586) ^ 0x300000000) + 4 * (((v3 << 6) | (v3 >> 6)) & 0xFFF)) = nanov2_create_guard_block_in_use_block;
        if (mprotect(((v3 << 14) + 0x300000000), 0x4000uLL, 1))
        {
          malloc_report(3, "Failed to create guard block at %p (%d)\n");
        }
      }

      return based_pages;
    }

    else
    {
      nano_common_deallocate_pages(based_pages, (vm_page_mask + 29264) & ~vm_page_mask, 0);
      _malloc_engaged_nano = 0;
      malloc_report(5, "nano zone abandoned due to inability to reserve vm space.\n");
      return 0;
    }
  }

  else
  {
    _malloc_engaged_nano = 0;
    return 0;
  }
}

BOOL nanov2_allocate_region(mach_vm_address_t a1)
{
  if (malloc_tracing_enabled)
  {
    kdebug_trace();
  }

  vm_space = nano_common_allocate_vm_space(a1, 0x20000000uLL);
  if (malloc_tracing_enabled)
  {
    kdebug_trace();
  }

  return vm_space;
}

void *nanov2_forked_free(void *result, unint64_t a2)
{
  v3 = result;
  if (a2)
  {
    result = nanov2_pointer_size(result, a2, 0);
    if (!result && a2 >> 29 != 24)
    {
      return (*(v3[3588] + 48))(v3[3588], a2);
    }
  }

  return result;
}

uint64_t nanov2_forked_realloc(void *a1, unint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return nanov2_forked_malloc(a1, a3);
  }

  if (!nanov2_pointer_size(a1, a2, 0))
  {
    return (*(a1[3588] + 56))(a1[3588], a2, a3);
  }

  if (!a3)
  {
    return nanov2_forked_malloc(a1, 1);
  }

  v4 = (*(a1[3588] + 24))(a1[3588], a3);
  if (!v4)
  {
    return 0;
  }

  _platform_memmove();
  return v4;
}

uint64_t nanov2_forked_realloc_type(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return nanov2_forked_malloc_type(a1, a3, a4);
  }

  if (!nanov2_pointer_size(a1, a2, 0))
  {
    return (*(a1[3588] + 176))(a1[3588], a2, a3, a4);
  }

  if (!a3)
  {
    return nanov2_forked_malloc(a1, 1);
  }

  v5 = (*(a1[3588] + 160))(a1[3588], a3, a4);
  if (!v5)
  {
    return 0;
  }

  _platform_memmove();
  return v5;
}

void *nanov2_forked_batch_free(void *result, uint64_t a2, unsigned int a3)
{
  v7 = result;
  v5 = a3;
  if (a3)
  {
    while (v5--)
    {
      v4 = *(a2 + 8 * v5);
      if (v4)
      {
        result = nanov2_forked_free(v7, v4);
      }
    }
  }

  return result;
}

uint64_t nanov2_forked_zone(void *a1)
{
  mprotect(a1, 0xC8uLL, 3);
  v31 = 0;
  if (nanov2_size)
  {
    v31 = nanov2_size;
  }

  v30 = 0;
  if (v31)
  {
    v30 = v31;
  }

  a1[2] = v30;
  v29 = 0;
  if (nanov2_forked_malloc)
  {
    v29 = nanov2_forked_malloc;
  }

  v28 = 0;
  if (v29)
  {
    v28 = v29;
  }

  a1[3] = v28;
  v27 = 0;
  if (nanov2_forked_calloc)
  {
    v27 = nanov2_forked_calloc;
  }

  v26 = 0;
  if (v27)
  {
    v26 = v27;
  }

  a1[4] = v26;
  v25 = 0;
  if (nanov2_valloc)
  {
    v25 = nanov2_valloc;
  }

  v24 = 0;
  if (v25)
  {
    v24 = v25;
  }

  a1[5] = v24;
  v23 = 0;
  if (nanov2_forked_free)
  {
    v23 = nanov2_forked_free;
  }

  v22 = 0;
  if (v23)
  {
    v22 = v23;
  }

  a1[6] = v22;
  v21 = 0;
  if (nanov2_forked_realloc)
  {
    v21 = nanov2_forked_realloc;
  }

  v20 = 0;
  if (v21)
  {
    v20 = v21;
  }

  a1[7] = v20;
  v19 = 0;
  if (nanov2_destroy)
  {
    v19 = nanov2_destroy;
  }

  v18 = 0;
  if (v19)
  {
    v18 = v19;
  }

  a1[8] = v18;
  v17 = 0;
  if (nanov2_forked_batch_malloc)
  {
    v17 = nanov2_forked_batch_malloc;
  }

  v16 = 0;
  if (v17)
  {
    v16 = v17;
  }

  a1[10] = v16;
  v15 = 0;
  if (nanov2_forked_batch_free)
  {
    v15 = nanov2_forked_batch_free;
  }

  v14 = 0;
  if (v15)
  {
    v14 = v15;
  }

  a1[11] = v14;
  a1[12] = nanov2_introspect;
  v13 = 0;
  if (nanov2_forked_memalign)
  {
    v13 = nanov2_forked_memalign;
  }

  v12 = 0;
  if (v13)
  {
    v12 = v13;
  }

  a1[14] = v12;
  v11 = 0;
  if (nanov2_forked_free_definite_size)
  {
    v11 = nanov2_forked_free_definite_size;
  }

  v10 = 0;
  if (v11)
  {
    v10 = v11;
  }

  a1[15] = v10;
  a1[17] = nanov2_forked_claimed_address;
  a1[18] = 0;
  v9 = 0;
  if (nanov2_forked_malloc_type)
  {
    v9 = nanov2_forked_malloc_type;
  }

  v8 = 0;
  if (v9)
  {
    v8 = v9;
  }

  a1[20] = v8;
  v7 = 0;
  if (nanov2_forked_calloc_type)
  {
    v7 = nanov2_forked_calloc_type;
  }

  v6 = 0;
  if (v7)
  {
    v6 = v7;
  }

  a1[21] = v6;
  v5 = 0;
  if (nanov2_forked_realloc_type)
  {
    v5 = nanov2_forked_realloc_type;
  }

  v4 = 0;
  if (v5)
  {
    v4 = v5;
  }

  a1[22] = v4;
  v3 = 0;
  if (nanov2_forked_memalign_type)
  {
    v3 = nanov2_forked_memalign_type;
  }

  v2 = 0;
  if (v3)
  {
    v2 = v3;
  }

  a1[23] = v2;
  return mprotect(a1, 0xC8uLL, 1);
}

uint64_t *nanov2_allocate_outlined(uint64_t a1, atomic_uint **a2, uint64_t a3, unsigned int a4, int a5, atomic_uint *a6, uint64_t *a7, char a8, char a9, uint64_t a10)
{
  if (a7)
  {
    nanov2_guard_corruption_detected(a7);
  }

  if (a6)
  {
    nanov2_madvise_block(a1, a6, a4, 2047);
  }

  if ((*(a1 + 28672) & (1 << a4)) != 0)
  {
    v18 = *(a1 + 28704);
    if (a9)
    {
      v10 = (*(v18 + 160))(v18, a3, a10);
    }

    else
    {
      v10 = (*(v18 + 24))(v18, a3);
    }

    v19 = v10;
  }

  else
  {
    v17 = (a1 + 24576 + (a4 << 8) + 4 * a5);
    v11 = 0;
    atomic_compare_exchange_strong_explicit(v17, &v11, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
    if (v11)
    {
      os_unfair_lock_lock_with_options();
    }

    if (!*a2 || (v19 = nanov2_allocate_from_block(a1, *a2, a4)) == 0)
    {
      v19 = nanov2_find_block_and_allocate(a1, a4, a2);
    }

    v12 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v13 = v12;
    atomic_compare_exchange_strong_explicit(v17, &v13, 0, memory_order_release, memory_order_relaxed);
    if (v13 != v12)
    {
      os_unfair_lock_unlock(v17);
    }

    if (!v19)
    {
      atomic_fetch_or_explicit((a1 + 28672), 1 << a4, memory_order_relaxed);
      v16 = *(a1 + 28704);
      if (a9)
      {
        v14 = (*(v16 + 160))(v16, a3, a10);
      }

      else
      {
        v14 = (*(v16 + 24))(v16, a3);
      }

      v19 = v14;
    }
  }

  if (!v19)
  {
    malloc_set_errno_fast(1, 12);
    return v19;
  }

  if (malloc_zero_policy)
  {
    if (malloc_zero_policy != 1)
    {
      if (malloc_zero_policy != 2)
      {
        return v19;
      }

      goto LABEL_30;
    }

    if (a8)
    {
LABEL_30:
      _platform_memset();
      return v19;
    }

    *v19 = 0;
  }

  else
  {
    *v19 = 0;
    v19[1] = 0;
  }

  return v19;
}

void nanov2_guard_corruption_detected(uint64_t *a1)
{
  v1 = *a1;
  malloc_zone_error(256, 1, "Heap corruption detected, free list is damaged at %p\n*** Incorrect guard value: %llu\n");
  __break(1u);
}

uint64_t nanov2_ptr_in_use_enumerator(unsigned int a1, uint64_t a2, int a3, void *a4, uint64_t (*a5)(int a1, uint64_t a2, uint64_t a3, void *a4), void (*a6)(void, uint64_t, uint64_t, unint64_t *, uint64_t))
{
  v59 = a1;
  v58 = a2;
  v57 = a3;
  v56 = a4;
  v55 = a5;
  v54 = a6;
  nanov2_configure();
  if ((v57 & 3) != 0)
  {
    v53 = 0;
    bzero(v110, 0x200uLL);
    v51 = 0;
    v55 = reader_or_in_memory_fallback_4(v55, v59);
    v52 = v55(v59, v56, 29264, &v53);
    if (v52)
    {
      return v52;
    }

    else
    {
      v14 = 0;
      if (mach_task_is_self())
      {
        v14 = v56 == v53;
      }

      v50 = v14;
      _platform_memmove();
      v53 = v110;
      v61 = v110;
      v100 = v110[7170];
      v49 = ((v100 << 6) | (v100 >> 6)) & 0xFFF;
      v48 = v111;
      explicit = atomic_load_explicit(&v112, memory_order_acquire);
      v46 = explicit;
      v44[1] = explicit;
      v47 = explicit;
      while (v48)
      {
        v44[0] = 0;
        v43 = v55(v59, v48, 0x20000000, v44);
        if (v43)
        {
          return v43;
        }

        v42 = v48 - v44[0];
        v62 = v48;
        v41 = v48;
        v66 = v53;
        v65 = v48;
        v64 = v47;
        v63 = 0;
        v101 = v47;
        v102 = v47 - 1;
        if (v48 == ((v47 - 1) & 0xFFFFFFFFE0000000))
        {
          v63 = v64;
        }

        else
        {
          v67 = v65 + 0x20000000;
          v63 = v65 + 0x20000000;
        }

        v40 = v63;
        v38 = 0;
        v39 = 0;
        while (v41 < v40)
        {
          v69 = v53;
          v68 = v41;
          v77 = v41;
          v106 = v53;
          v105 = v41 & 0xFFFFFFFFFC000000;
          v37 = ((v41 & 0xFFFFFFFFFC000000 ^ v53[3586]) - v42);
          v36 = v37;
          v35 = 0;
          while (v35 < 0x1000)
          {
            if (v35 != v49)
            {
              v34 = 0;
              v33 = 0;
              v32 = *v36;
              v33 = v32;
              v34 = v32;
              v108 = v32;
              v13 = 0;
              if ((v32 & 0x7FF) != 0)
              {
                v13 = 0;
                if ((v108 & 0x7FF) != 0x7FE)
                {
                  v13 = 0;
                  if ((v108 & 0x7FF) != 0x7FF)
                  {
                    v13 = (v108 & 0x7FF) != 2042;
                  }
                }
              }

              if (v13)
              {
                v73 = v53;
                v72 = v41;
                v71 = v35;
                v94 = v35;
                v70 = ((v94 << 6) | (v94 >> 6)) & 0xFFF;
                v31 = v41 + ((((v94 << 6) | (v94 >> 6)) & 0xFFF) << 14);
                if ((v57 & 2) != 0)
                {
                  v38 = v31;
                  v39 = 0x4000;
                  v54(v59, v58, 2, &v38, 1);
                }

                if (v57)
                {
                  v76 = v53;
                  v75 = v31;
                  v107 = v31;
                  v74 = (v31 >> 14) & 0xFFF ^ v53[3585];
                  v30 = ptr_offset_to_size_class[v74 >> 6];
                  v98 = v30;
                  v29 = 16 * (v30 + 1);
                  v28 = slots_by_size_class[v30];
                  v27 = 0;
                  if ((v34 & 0x7FF) == 0x7FB || (v34 & 0x7FF) == 0x7FC)
                  {
                    if ((v34 & 0x7FF) == 0x7FB)
                    {
                      v12 = v28 - ((v34 >> 11) & 0x3FF) - 1;
                    }

                    else
                    {
                      v12 = v28;
                    }

                    v27 = v12;
                    for (i = 0; i < v27; ++i)
                    {
                      v93 = v31;
                      v92 = v30;
                      v91 = i;
                      v95 = v30;
                      v109[2 * i] = v31 + 16 * (v30 + 1) * i;
                      v109[2 * i + 1] = v29;
                    }
                  }

                  else
                  {
                    v25 = 64 - __clz(v28);
                    if (v50)
                    {
                      v10 = *(v53[3588] + 32);
                      v11 = v53[3588];
                      v6 = bitarray_size(v25);
                      v7 = v10(v11, 1, v6);
                    }

                    else
                    {
                      v7 = bitarray_create(v25);
                    }

                    v51 = v7;
                    for (j = 0; j < v28; ++j)
                    {
                      bitarray_set(v51, v25, j);
                    }

                    v23 = v34 & 0x7FF;
                    for (k = 0; v23 != 2043; ++k)
                    {
                      if (--v23 < 0 || v23 >= v28 || !bitarray_get(v51, v25, v23))
                      {
                        break;
                      }

                      bitarray_zap(v51, v25, v23);
                      v90 = v31;
                      v89 = v30;
                      v88 = v23;
                      v96 = v30;
                      v21 = v31 + 16 * (v30 + 1) * v23;
                      v20 = v21 - v42;
                      v23 = *(v21 - v42 + 8);
                    }

                    v19 = ((v34 >> 11) & 0x3FF) + 1;
                    v18 = v28 - v19;
                    v17 = v28 - v19 + k;
                    v16 = 0;
                    while ((bitarray_zap_first_set(v51, v25, &v16) & 1) != 0 && v16 < v17)
                    {
                      v87 = v31;
                      v86 = v30;
                      v85 = v16;
                      v97 = v30;
                      v109[2 * v27] = v31 + (16 * (v30 + 1) * v16);
                      v109[2 * v27++ + 1] = v29;
                    }

                    _free(v51);
                  }

                  if (v27)
                  {
                    v54(v59, v58, 1, v109, v27);
                  }
                }
              }
            }

            ++v35;
            ++v36;
          }

          v41 += 0x4000000;
        }

        v80 = v53;
        v79 = v48;
        v83 = v53;
        v82 = v48;
        v84 = v48;
        v104 = v53;
        v103 = v48 & 0xFFFFFFFFFC000000;
        v78 = v48 & 0xFFFFFFFFFC000000 ^ v53[3586];
        v81 = v53;
        v99 = v53[3585];
        v15 = *(v78 + 4 * (((v99 << 6) | (v99 >> 6)) & 0xFFF) - v42);
        if (v15)
        {
          v9 = v48 + (v15 << 29);
        }

        else
        {
          v9 = 0;
        }

        v48 = v9;
      }

      return 0;
    }
  }

  else
  {
    return 0;
  }
}

unint64_t nanov2_good_size(uint64_t a1, unint64_t a2)
{
  if (a2 <= 0x100)
  {
    return _nano_common_good_size(a2);
  }

  v3 = 0;
  if (*(*(a1 + 28704) + 96))
  {
    v3 = *(*(a1 + 28704) + 96);
  }

  return (*(v3 + 8))(*(a1 + 28704), a2);
}

uint64_t nanov2_print_self(const void *a1, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return nanov2_print(mach_task_self_, v2, a1, _malloc_default_reader_4, malloc_report_simple);
}

uint64_t (*reader_or_in_memory_fallback_4(uint64_t a1, int a2))(int a1, uint64_t a2, uint64_t a3, void *a4)
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
    JUMPOUT(0x516C0);
  }

  return _malloc_default_reader_4;
}

uint64_t _malloc_default_reader_4(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = 1;
  if (a1)
  {
    v5 = mach_task_is_self() != 0;
  }

  if (!v5)
  {
    __break(1u);
    JUMPOUT(0x51748);
  }

  *a4 = a2;
  return 0;
}

uint64_t nanov2_print(unsigned int a1, unsigned int a2, const void *a3, uint64_t (*a4)(int a1, uint64_t a2, uint64_t a3, uint64_t *a4), void (*a5)(const char *, ...))
{
  v51 = a1;
  v50 = a2;
  v49 = a3;
  v48 = a4;
  v47 = a5;
  nanov2_configure();
  v46 = 0;
  if (v48(v51, v49, 29264, &v46))
  {
    return v47("Failed to map nanozonev2_s at %p\n", v49);
  }

  v44 = 0u;
  v45 = 0u;
  nanov2_statistics_task_printer(v51, v49, v48, v47, &v44);
  v43 = v46 + 28744;
  v47("Nanozonev2 %p: blocks in use: %llu, size in use: %llu allocated size: %llu, allocated regions: %d, region holes: %d\n", v49, v44, *(&v44 + 1), *(&v45 + 1), *(v46 + 28744), *(v46 + 28748));
  result = v47("Current Allocation Blocks By Size Class/Context [CPU]\n");
  for (i = 0; i < 16; ++i)
  {
    v47("  Class %d: ", i);
    for (j = 0; j < 64; ++j)
    {
      if (*(v46 + 0x4000 + (i << 9) + 8 * j))
      {
        v47("%d: %p; ", j, *(v46 + 0x4000 + (i << 9) + 8 * j));
      }
    }

    result = v47("\n");
  }

  v52 = v46;
  v68 = *(v46 + 28680);
  v40 = ((v68 << 6) | (v68 >> 6)) & 0xFFF;
  v39 = *(v46 + 28720);
  explicit = atomic_load_explicit((v46 + 28728), memory_order_acquire);
  v37 = explicit;
  v35 = explicit;
  v38 = explicit;
  v34 = 0;
  while (v39)
  {
    v47("\nRegion %d: base address %p\n", v34, v39);
    v33 = 0;
    result = v48(v51, v39, 0x20000000, &v33);
    if (result)
    {
      return v47("Failed to map nanov2 region at %p\n", v39);
    }

    v32 = v33 - v39;
    v53 = v39;
    v31 = v39;
    v57 = v46;
    v56 = v39;
    v55 = v38;
    v54 = 0;
    v69 = v38;
    v70 = v38 - 1;
    if (v39 == ((v38 - 1) & 0xFFFFFFFFE0000000))
    {
      v54 = v55;
    }

    else
    {
      v58 = v56 + 0x20000000;
      v54 = v56 + 0x20000000;
    }

    v30 = v54;
    v29 = 0;
    while (v31 < v30)
    {
      v60 = v46;
      v59 = v31;
      v65 = v31;
      v72 = v46;
      v71 = v31 & 0xFFFFFFFFFC000000;
      v28 = v31 & 0xFFFFFFFFFC000000 ^ *(v46 + 28688);
      v27 = v28 + v32;
      v26 = 0;
      v25 = 0;
      v24 = 0;
      v23 = 0;
      v22 = 0;
      for (k = 0; k < 0x1000; ++k)
      {
        if (k != v40)
        {
          v10 = *(v27 + 4 * k) & 0x7FF;
          if ((*(v27 + 4 * k) & 0x7FF) != 0)
          {
            switch(v10)
            {
              case 2045:
                ++v25;
                break;
              case 2046:
                ++v22;
                break;
              case 2047:
                ++v23;
                break;
              default:
                ++v26;
                break;
            }
          }

          else
          {
            ++v24;
          }
        }
      }

      v47("Arena #%d: base address %p. Blocks - active: %d, madvisable: %d, madvising: %d, madvised: %d, unused: %d\n", v29, v31, v26, v25, v22, v23, v24);
      for (m = 0; m < 16; ++m)
      {
        v106[m] = 0;
      }

      for (n = 0; n < 0x1000; ++n)
      {
        if (n != v40)
        {
          v18 = *(v27 + 4 * n);
          v82 = v46;
          v81 = n;
          v83 = n;
          v80 = ((v81 << 6) | (v81 >> 6)) & 0xFFF;
          v79 = v80 ^ *(v46 + 28680);
          v9 = v18 & 0x7FF;
          if ((v18 & 0x7FF) != 0 && (v9 == 2044 || v9 == 2043 || (v9 - 2045) > 2))
          {
            v17 = ptr_offset_to_size_class[v79 >> 6];
            ++v106[v17];
          }
        }
      }

      v47("Size classes with allocated blocks: ");
      for (ii = 0; ii < 16; ++ii)
      {
        if (v106[ii])
        {
          v47("%d ", ii);
        }
      }

      result = v47("\n");
      if (v50 >= 2)
      {
        for (jj = 0; jj < 0x1000; ++jj)
        {
          if (jj != v40)
          {
            v14 = *(v27 + 4 * jj);
            v73 = v14;
            v8 = 0;
            if ((v14 & 0x7FF) != 0)
            {
              v8 = 0;
              if ((v73 & 0x7FF) != 0x7FE)
              {
                v8 = 0;
                if ((v73 & 0x7FF) != 0x7FF)
                {
                  v8 = (v73 & 0x7FF) != 2042;
                }
              }
            }

            if (v8)
            {
              v77 = v46;
              v76 = jj;
              v78 = jj;
              v75 = ((v76 << 6) | (v76 >> 6)) & 0xFFF;
              v74 = v75 ^ *(v46 + 28680);
              v13 = ptr_offset_to_size_class[v74 >> 6];
              v7 = v14 & 0x7FF;
              if ((v14 & 0x7FF) != 0)
              {
                switch(v7)
                {
                  case 2044:
                    v12 = "FULL";
                    break;
                  case 2045:
                    v12 = "CAN MADVISE";
                    break;
                  case 2046:
                    v12 = "MADVISING";
                    break;
                  case 2047:
                    v12 = "MADVISED";
                    break;
                  default:
                    v12 = 0;
                    break;
                }
              }

              else
              {
                v12 = "NOT USED";
              }

              v64 = v46;
              v63 = v31;
              v62 = jj;
              v66 = jj;
              v61 = ((v62 << 6) | (v62 >> 6)) & 0xFFF;
              v67 = v13;
              v47("    Block %d: base %p; metadata: %p, size %d (class %d) in-use: %d ", jj, (v31 + ((((v62 << 6) | (v62 >> 6)) & 0xFFF) << 14)), (v28 + 4 * jj), 16 * (v13 + 1), v13, v14 >> 31);
              if (v12)
              {
                result = v47("%s\n", v12);
              }

              else
              {
                v11 = slots_by_size_class[v13] - ((v14 >> 11) & 0x3FF) - 1;
                if ((v14 & 0x7FF) == 0x7FB)
                {
                  v47("BUMP (free list empty)");
                }

                else
                {
                  v47("next_slot (1-based) = %d", v14 & 0x7FF);
                }

                result = v47(", allocated slots: %d, free slots = %d, occupancy: %d%%\n", v11, ((v14 >> 11) & 0x3FF) + 1, 100 * v11 / slots_by_size_class[v13]);
              }
            }
          }
        }
      }

      v31 += 0x4000000;
      ++v29;
    }

    v94 = v46;
    v93 = v39;
    v92 = v32;
    v91 = v38;
    v98 = v46;
    v97 = v39;
    v101 = v46;
    v100 = v39;
    v102 = v39;
    v105 = v46;
    v104 = v39 & 0xFFFFFFFFFC000000;
    v96 = v39 & 0xFFFFFFFFFC000000 ^ *(v46 + 28688);
    v99 = v46;
    v103 = *(v46 + 28680);
    v90 = v96 + 4 * (((v103 << 6) | (v103 >> 6)) & 0xFFF);
    v89 = v90 + v32;
    v86 = *(v90 + v32);
    v87 = v86;
    v85 = v86;
    v88 = v86;
    if (v86)
    {
      v84 = v93 + (v88 << 29);
      if (v84 >= v91)
      {
        v6 = 0;
      }

      else
      {
        v6 = v84;
      }

      v95 = v6;
    }

    else
    {
      v95 = 0;
    }

    v39 = v95;
    ++v34;
  }

  return result;
}