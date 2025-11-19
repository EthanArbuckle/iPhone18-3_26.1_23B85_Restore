_OWORD *_xzm_xzone_thread_cache_fill_and_malloc(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v5 = 0;
  if (*(a3 + 16) == -2)
  {
    goto LABEL_5;
  }

  if (*(v7 + 16) != 1024)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion cache->xztc_head == XZM_FREE_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3300)";
    __break(1u);
    JUMPOUT(0x69290);
  }

  v6 = _xzm_xzone_malloc_from_freelist_chunk(v9, v8, 0x3Eu, v7, *v7, 0, &v5, 0);
  if (!v6)
  {
LABEL_5:
    if (*(v7 + 16) != -2)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion cache->xztc_state == XZM_XZONE_CACHE_EMPTY failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3310)";
      __break(1u);
      JUMPOUT(0x69304);
    }

    v4 = 0;
    v6 = _xzm_xzone_find_and_malloc_from_freelist_chunk(v9, v8, 0x3Eu, v7, &v4, &v5);
  }

  if (v6)
  {
    *v6 = 0uLL;
  }

  else
  {
    if (*(v7 + 16) != -2)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion cache->xztc_state == XZM_XZONE_CACHE_EMPTY failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3321)";
      __break(1u);
      JUMPOUT(0x69398);
    }

    malloc_set_errno_fast(1, 12);
  }

  return v6;
}

void _xzm_thread_cache_create(uint64_t a1)
{
  v14 = a1;
  v13 = a1;
  v12 = (*(a1 + 480) + 192);
  v11 = xzm_metapool_alloc(v12);
  __dst = v11;
  v10[0] = 0;
  v10[1] = 0;
  v10[2] = v13;
  v10[3] = pthread_self();
  v10[4] = 0;
  memcpy(__dst, v10, 0x28uLL);
  v9 = mach_absolute_time();
  for (i = 0; i < *(v14 + 212); ++i)
  {
    v1 = &v11[3 * i + 5];
    *&v7 = 0;
    *(&v7 + 1) = v9;
    *v1 = v7;
    *(v1 + 16) = 0xFFFFLL;
  }

  v15 = v13 + 552;
  v24 = v13 + 552;
  v23 = 327680;
  v25 = 3;
  v26 = 3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v22 = *(StatusReg + 24);
  v21 = 0;
  v20 = v22;
  v19 = v22;
  v2 = 0;
  atomic_compare_exchange_strong_explicit((v13 + 552), &v2, v22, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    v21 = v2;
  }

  v18 = v2 == 0;
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  v3 = *(v13 + 560);
  *v11 = v3;
  if (v3)
  {
    *(*(v13 + 560) + 8) = v11;
  }

  *(v13 + 560) = v11;
  v11[1] = v13 + 560;
  v16 = v13 + 552;
  v33 = (v13 + 552);
  v34 = 3;
  v35 = 3;
  v36 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v32 = *(v36 + 24);
  v31 = 0;
  v30 = v32;
  v29 = 0;
  v4 = v32;
  v5 = v32;
  atomic_compare_exchange_strong_explicit((v13 + 552), &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    v30 = v5;
  }

  v28 = v5 == v4;
  if (v5 != v4)
  {
    os_unfair_lock_unlock(v33);
  }

  v17 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(v17 + 912) = v11;
}

_OWORD *_xzm_xzone_malloc_tiny_or_early(unsigned __int8 *a1, uint64_t a2, char a3)
{
  if ((a3 & 2) != 0)
  {
    goto LABEL_16;
  }

  v14 = *(a2 + 40);
  do
  {
    if (!v14)
    {
      v15 = 0;
      goto LABEL_9;
    }

    v13 = v14;
    v3 = v14;
    v4 = v14;
    atomic_compare_exchange_strong_explicit((a2 + 40), &v4, v14 - 1, memory_order_relaxed, memory_order_relaxed);
    if (v4 != v3)
    {
      v13 = v4;
    }

    v14 = v13;
  }

  while (v4 != v3);
  v15 = 1;
LABEL_9:
  if (v15 != 1)
  {
LABEL_16:
    v8 = _xzm_xzone_malloc_tiny(a1, a2, 0);
    if (a3)
    {
      v6 = *(a2 + 48);
      if (!_xzm_mem_is_zero())
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_mem_is_zero(ptr, xz->xz_block_size) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3275)";
        __break(1u);
        JUMPOUT(0x6991CLL);
      }
    }

    return v8;
  }

  else
  {
    v9 = mfm_alloc(*(a2 + 48));
    if (!v9)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3263)";
      __break(1u);
      JUMPOUT(0x69868);
    }

    if (a3)
    {
      v5 = *(a2 + 48);
      if (!_xzm_mem_is_zero())
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_mem_is_zero(ptr, xz->xz_block_size) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3266)";
        __break(1u);
        JUMPOUT(0x698B0);
      }
    }

    return v9;
  }
}

unint64_t _xzm_xzone_malloc_freelist_outlined(unsigned __int8 *a1, uint64_t a2, unsigned __int8 a3, uint64_t *a4, uint64_t a5, int a6)
{
  v50 = a1;
  v49 = a2;
  v48 = a3;
  v47 = a4;
  v46 = a5;
  v45 = a6;
  if (a5)
  {
    _xzm_corruption_detected(v46);
  }

  v44 = v45 & 1;
  v43 = *(v49 + 48) < 0x401uLL;
  v42 = *(v49 + 48) > 0x1000uLL;
  v41 = (*(v49 + 87) & 2) != 0;
  v40 = (v45 & 0x40000000) != 0;
  v39 = 0;
  v38 = v47;
  v37 = 0;
  v35 = *v47;
  v36 = v35;
  v34 = v35;
  v37 = v35;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  do
  {
    while (1)
    {
      while ((v37 & 1) != 0)
      {
        v81 = v37;
        v80 = v47;
        v79 = v47;
        if ((v37 & 2) == 0)
        {
          v78 = v81 | 2;
          v76 = v81;
          v75 = 0;
          v73 = v81 | 2;
          v72 = v81 | 2;
          v74 = v81 | 2;
          v6 = v81;
          v7 = v81;
          atomic_compare_exchange_strong_explicit(v79, &v7, v81 | 2, memory_order_relaxed, memory_order_relaxed);
          if (v7 != v6)
          {
            v76 = v7;
          }

          v71 = v7 == v6;
          v75 = v7 == v6;
          v81 = v76;
          v70 = v75;
          v77 = v7 == v6;
          if (v7 != v6)
          {
            v82 = v81;
            goto LABEL_17;
          }

          v81 |= 2uLL;
        }

        v69 = 17104898;
        v68 = __ulock_wait();
        if (v68 < 0 && v68 != -4 && -v68 != 14)
        {
          v67 = -v68;
          qword_D8128 = "BUG IN LIBMALLOC: ulock_wait failure";
          qword_D8158 = v67;
          __break(1u);
          JUMPOUT(0x69C04);
        }

        v64 = *v79;
        v65 = v64;
        v63 = v64;
        v66 = v64;
        v81 = v64;
        v82 = v64;
LABEL_17:
        v37 = v82;
      }

      if ((v37 & 2) == 0)
      {
        break;
      }

      _xzm_fork_lock_wait(v50);
      v37 = *v38;
    }

    v32 = (v37 >> 2) & 0x7FFFFFFFFFFFLL;
    if (v32)
    {
      v33 = _xzm_xzone_malloc_from_freelist_chunk(v50, v49, v48, 0, v32, v42, &v31, 0);
      if (v33)
      {
        goto LABEL_43;
      }
    }

    if (!v39)
    {
      v39 = _malloc_ulock_self_owner_value();
    }

    v30 = v37;
    v8 = v37;
    v9 = v37;
    atomic_compare_exchange_strong_explicit(v38, &v9, v37 & 0xFFFE000000000000 | (4 * v39) | 1, memory_order_relaxed, memory_order_relaxed);
    if (v9 != v8)
    {
      v30 = v9;
    }

    v37 = v30;
  }

  while (v9 != v8);
  if (!v39)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion self_owner_value failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1957)";
    __break(1u);
    JUMPOUT(0x69E40);
  }

  if (v33)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1978)";
    __break(1u);
    JUMPOUT(0x69E70);
  }

  v33 = _xzm_xzone_find_and_malloc_from_freelist_chunk(v50, v49, v48, 0, &v32, &v31);
  v29 = atomic_exchange_explicit(v38, (4 * (v32 & 0x7FFFFFFFFFFFLL)) & 0x1FFFFFFFFFFFFLL | (((v37 >> 49) + 1) << 49), memory_order_release);
  if ((v29 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion prev_slot_meta.xasa_gate.xsg_locked failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2000)";
    __break(1u);
    JUMPOUT(0x69F5CLL);
  }

  if (v39 != v29 >> 2)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion prev_slot_meta.xasa_gate.xsg_owner == self_owner_value failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2001)";
    __break(1u);
    JUMPOUT(0x69F94);
  }

  if ((v29 & 0x1FFFF00000000) != 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion prev_slot_meta.xasa_gate.xsg_unused == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2002)";
    __break(1u);
    JUMPOUT(0x69FC8);
  }

  if (v29 >> 49 != v37 >> 49)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion prev_slot_meta.xasa_gate.xsg_gen == slot_meta.xasa_gate.xsg_gen failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2004)";
    __break(1u);
    JUMPOUT(0x6A008);
  }

  if ((v29 & 2) != 0)
  {
    v28 = __ulock_wake();
    if (v28)
    {
      if (v28 != -2)
      {
        qword_D8128 = "BUG IN LIBMALLOC: ulock_wake failure";
        qword_D8158 = -v28;
        __break(1u);
        JUMPOUT(0x6A094);
      }
    }
  }

LABEL_43:
  if (v33)
  {
    v10 = *(v49 + 86);
    v119 = v50;
    v118 = v49;
    v117 = (v47 + 2);
    v116 = v10;
    v115 = 1;
    v114 = v31 & 1;
    if ((v50[249] & 1) != 0 && *(v118 + 6) <= 0x100uLL)
    {
      if (v114)
      {
        v120 = 114;
        v121 = 114;
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v113 = *(StatusReg + 912);
        if (v113)
        {
          v112 = v118[80];
          v111 = v113 + 24 * v112 + 40;
          v126 = v119;
          v125 = v118;
          v124 = v111;
          if (*(v113 + 24 * v112 + 56) == -1)
          {
            ++*(v124 + 18);
            v123 = *(v126 + 64);
            if (*(v124 + 18) == v123)
            {
              *(v124 + 16) = -2;
              *(v124 + 22) = *(v124 + 8) & 0xFFF;
            }
          }
        }
      }
    }

    else
    {
      v110 = 0;
      v108 = *v117;
      v109 = v108;
      v107 = v108;
      v110 = v108;
      v106 = (v119[248] >> 4) & 3;
      if (HIBYTE(v108) != v106 && ((v114 & 1) != 0 || (v110 & 0xFFFFFF00000000) != 0))
      {
        v105 = 1;
        if (v114)
        {
          v105 |= 0x100000000uLL;
        }

        v104 = 0;
        v102 = v105;
        v101 = v105;
        v103 = v105;
        v97 = v105;
        v96 = v105;
        v98 = v105;
        add_explicit = atomic_fetch_add_explicit(v117, v105, memory_order_relaxed);
        v99 = add_explicit;
        v94 = add_explicit;
        v100 = add_explicit + v103;
        v104 = add_explicit + v103;
        v93 = (add_explicit + v103) >> 56;
        if (v93 != v106)
        {
          if (v115)
          {
            v27 = *(v119 + 76);
          }

          else
          {
            v27 = *(v119 + 71);
          }

          v92 = v27;
          if (v115)
          {
            v26 = v119 + 292;
          }

          else
          {
            v26 = v119 + 272;
          }

          v91 = v26;
          if ((HIDWORD(v104) & 0xFFFFFFu) < *&v26[4 * v93])
          {
            if (v104 >= v92 && v104 <= v92)
            {
              v89 = v104;
              LODWORD(v88) = 0;
              HIDWORD(v88) = HIBYTE(v88) << 24;
              HIBYTE(v88) = v93;
              v104 = v88;
              v87 = 0;
              v86 = v117;
              v110 = *v117;
              do
              {
                if (v110 < v89 || HIBYTE(v110) > HIBYTE(v89))
                {
                  break;
                }

                v85 = v104;
                v11 = v110;
                v12 = v110;
                atomic_compare_exchange_strong_explicit(v86, &v12, v104, memory_order_relaxed, memory_order_relaxed);
                if (v12 != v11)
                {
                  v110 = v12;
                }

                v84 = v12 == v11;
                v87 = v12 == v11;
              }

              while (v12 != v11);
              v83 = v87;
            }
          }

          else if ((HIDWORD(v104) & 0xFFFFFFu) <= *&v91[4 * v93])
          {
            v127 = HIBYTE(v104);
            if (HIBYTE(v104))
            {
              if (HIBYTE(v104) != 1)
              {
                if (HIBYTE(v104) != 2)
                {
                  qword_D8128 = "BUG IN LIBMALLOC: Invalid xzone slot config";
                  __break(1u);
                  JUMPOUT(0x6A50CLL);
                }

                qword_D8128 = "BUG IN LIBMALLOC: Can't upgrade from XZM_SLOT_CPU";
                __break(1u);
                JUMPOUT(0x6A4E0);
              }

              v128 = 2;
            }

            else if (ncpuclusters < 2)
            {
              v128 = 2;
            }

            else
            {
              v128 = 1;
            }

            v90 = v128;
            if (HIBYTE(v104) >= v128)
            {
              qword_D8128 = "BUG IN LIBMALLOC: malloc assertion new_counters.xsc_slot_config < next_slot_config failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1444)";
              __break(1u);
              JUMPOUT(0x6A554);
            }

            _xzm_xzone_upgrade_freelist_slot_config(v119, v118, v117, v104, v90, v115 & 1);
          }
        }
      }
    }

    if (v41)
    {
      if (v40)
      {
        v13 = *(v49 + 48);
        v53 = v33;
        v52 = v13;
        v54 = v33;
        v56 = v33;
        v55 = v33 & 0xF0FFFFFFFFFFFFFFLL;
        v51 = v33 & 0xF0FFFFFFFFFFFFFFLL;
        v60 = v33 & 0xF0FFFFFFFFFFFFFFLL;
        v59 = v13;
        if ((v13 & 0xF) != 0)
        {
          __break(1u);
          JUMPOUT(0x6A724);
        }

        if ((v60 & 0xF) != 0)
        {
          __break(1u);
          JUMPOUT(0x6A73CLL);
        }

        v58 = v60;
        v57 = v60 + v59;
        _X8 = v60;
        __asm { STG             X8, [X8] }

        _X8 = v60 + v59;
        __asm { STG             X8, [X8,#-0x10] }

        if (v59 >= 0x21)
        {
          v58 = (v60 + 31) & 0xFFFFFFFFFFFFFFE0;
          v57 = (v60 + v59) & 0xFFFFFFFFFFFFFFE0;
          _X8 = v58;
          __asm { ST2G            X8, [X8] }

          _X8 = v57;
          __asm { ST2G            X8, [X8,#-0x20] }
        }

        v58 = (v60 + 63) & 0xFFFFFFFFFFFFFFC0;
        v57 = (v60 + v59) & 0xFFFFFFFFFFFFFFC0;
        while (v58 < v57)
        {
          __asm { DC              GVA, X8 }

          v58 += 64;
        }

        v33 = v51;
      }

      else
      {
        v61 = v33;
        v62 = v33;
        _X9 = v33;
        __asm { LDG             X9, [X9] }

        if (v33 != _X9)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr == memtag_fixup_ptr(ptr) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2045)";
          __break(1u);
          JUMPOUT(0x6A854);
        }
      }
    }

    *v33 = 0uLL;
    if ((v44 & 1) != 0 && !v43)
    {
      v24 = *(v49 + 48);
      _platform_bzero();
    }
  }

  else
  {
    malloc_set_errno_fast(1, 12);
  }

  return v33;
}

void _xzm_corruption_detected(uint64_t a1)
{
  qword_D8128 = "BUG IN CLIENT OF LIBMALLOC: memory corruption of free block";
  qword_D8158 = a1;
  __break(1u);
}

void _xzm_fork_lock_wait(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 348), &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    os_unfair_lock_lock_with_options();
  }

  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v3 = v2;
  atomic_compare_exchange_strong_explicit((a1 + 348), &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != v2)
  {
    os_unfair_lock_unlock((a1 + 348));
  }
}

uint64_t _xzm_xzone_malloc_from_freelist_chunk(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, unint64_t a5, char a6, _BYTE *a7, _BYTE *a8)
{
  v44 = a1;
  v43 = a2;
  v42 = a3;
  v41 = a4;
  v40 = a5;
  v39 = a6;
  v38 = a7;
  v37 = a8;
  v36[1] = 1;
  v36[0] = 0;
  v100 = a1;
  v99 = a2;
  v98 = a3;
  v97 = a4;
  v96 = a5;
  v95 = a6 & 1;
  v94 = 1;
  v93 = v36;
  v92 = a7;
  v91 = a8;
  v90 = *(a5 + 12) & 1;
  v89 = a8 != 0;
  v8 = 1024;
  if ((a6 & 1) == 0)
  {
    v8 = 16;
  }

  v88 = v8;
  v106 = v100;
  v105 = v96;
  v104 = 0;
  v111 = v100;
  v110 = v96;
  v114 = v100;
  v113 = v96;
  v112 = v96 & 0xFFFFFFFFFFFFC000;
  v35 = 1;
  if ((v96 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v34 = 0;
    if (v113 >= v112 + 2136)
    {
      v34 = v113 < v112 + 48 * *(v112 + 16) + 2136;
    }

    v35 = v34;
  }

  if ((v35 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0x6AD48);
  }

  v116 = v112;
  v115 = v110;
  v121 = v112;
  v120 = v110;
  if (v110 < v112 + 2136)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
    __break(1u);
    JUMPOUT(0x6ADACLL);
  }

  v119 = 0xAAAAAAAAAAAAAAABLL * ((v120 - v121 - 2136) >> 4);
  if (v119 >= *(v121 + 16))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
    __break(1u);
    JUMPOUT(0x6AE0CLL);
  }

  v118 = v112;
  v117 = v119;
  v87 = *(v112 + 72) + (v119 << 14);
  if (v95)
  {
    if ((*(v96 + 32) & 0xF) != 6)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_SMALL_FREELIST_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:742)";
      __break(1u);
      JUMPOUT(0x6AE78);
    }
  }

  else if ((*(v96 + 32) & 0xF) != 2)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_TINY_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:744)";
    __break(1u);
    JUMPOUT(0x6AEB8);
  }

  if (v97)
  {
    if (v89)
    {
      *v97 = v96;
      *(v97 + 8) = v87;
    }

    else
    {
      if (*v97 != v96)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion cache->xztc_chunk == chunk failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:755)";
        __break(1u);
        JUMPOUT(0x6AF2CLL);
      }

      if (*(v97 + 8) != v87)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion cache->xztc_chunk_start == start failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:756)";
        __break(1u);
        JUMPOUT(0x6AF68);
      }
    }
  }

  v86 = 0;
  v85 = 0;
  v84 = 0uLL;
  v83 = 0;
  v82 = 0;
  v80 = *v96;
  v81 = v80;
  v79 = v80;
  v82 = v80;
  do
  {
    while (1)
    {
      while (1)
      {
        while ((v82 & 0x40000000) != 0)
        {
          if ((v94 & 1) == 0)
          {
            v101 = 0;
            goto LABEL_143;
          }

          _xzm_walk_lock_wait(v100);
          v77 = *v96;
          v78 = v77;
          v76 = v77;
          v82 = v77;
        }

        v75 = v82;
        if (!v89)
        {
          break;
        }

        if (((v82 >> 22) & 0x3F) != 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_alloc_idx == XZM_SLOT_INDEX_EMPTY failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:791)";
          __break(1u);
          JUMPOUT(0x6B05CLL);
        }

        if ((v82 & 0x10000000) == 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_on_partial_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:792)";
          __break(1u);
          JUMPOUT(0x6B08CLL);
        }

        if ((v82 & 0x20000000) != 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !old_meta.xca_on_empty_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:793)";
          __break(1u);
          JUMPOUT(0x6B0BCLL);
        }

        v75 &= ~0x10000000uLL;
        if (((v82 >> 11) & 0x7FF) != 0)
        {
          v75 = v75 & 0xFFFFFFFFF03FFFFFLL | (((v98 + 1) & 0x3FLL) << 22);
          goto LABEL_78;
        }

        if ((v82 & 0x7FF) == 0x7FE)
        {
          v75 |= 0x20000000uLL;
          *v91 = 1;
        }

        else if ((~v82 & 0x7FF) != 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_alloc_head == XZM_FREE_MADVISING failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:811)";
          __break(1u);
          JUMPOUT(0x6B140);
        }

        if (v97)
        {
          *(v97 + 16) = -2;
        }

        v73 = v82;
        v72 = 0;
        v70 = v75;
        v69 = v75;
        v71 = v75;
        v9 = v82;
        v10 = v82;
        atomic_compare_exchange_strong_explicit(v96, &v10, v75, memory_order_relaxed, memory_order_relaxed);
        if (v10 != v9)
        {
          v73 = v10;
        }

        v68 = v10 == v9;
        v72 = v10 == v9;
        v82 = v73;
        v67 = v72;
        v74 = v10 == v9;
        if (v10 == v9)
        {
          if (malloc_tracing_enabled)
          {
            if (v97)
            {
              v33 = *(v97 + 16);
            }

            kdebug_trace();
          }

          v101 = 0;
          goto LABEL_143;
        }

        if (*v91)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !(*install_empty_out) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:828)";
          __break(1u);
          JUMPOUT(0x6B23CLL);
        }
      }

      if (((v82 >> 22) & 0x3F) != v98 + 1)
      {
        if (v97)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !cache failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:869)";
          __break(1u);
          JUMPOUT(0x6B324);
        }

        v101 = 0;
        goto LABEL_143;
      }

      if (((v82 >> 11) & 0x7FF) == 0)
      {
        break;
      }

LABEL_78:
      v85 = 0;
      if (v97)
      {
        v75 = v75 & 0xFFFFFFFFFFFFF800 | 0x400;
        v75 &= 0xFFFFFFFFFFC007FFLL;
        *(v97 + 18) = ((v82 >> 11) & 0x7FF) - 1;
        if ((v82 & 0x7FF) > 0x3FF)
        {
          if ((v82 & 0x7FF) != 0x400)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_alloc_head == XZM_FREE_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:948)";
            __break(1u);
            JUMPOUT(0x6B648);
          }

          if (((v82 >> 11) & 0x7FF) == 0)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_free_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:949)";
            __break(1u);
            JUMPOUT(0x6B67CLL);
          }

          v58 = *(v99 + 68);
          v57 = v58 - ((v82 >> 11) & 0x7FF);
          v86 = v87 + v57 * *(v99 + 48);
          *(v97 + 16) = 1024;
        }

        else
        {
          v86 = v87 + (v82 & 0x7FF) * v88;
          if (v90)
          {
            __asm { MSR             TCO, #1 }

            v84 = *v86;
            __asm { MSR             TCO, #0 }
          }

          else
          {
            v84 = *v86;
          }

          *(v97 + 16) = WORD4(v84) & 0x7FF;
          *(v97 + 20) = (DWORD2(v84) >> 11) & 0x1FFF;
          v85 = 1;
        }
      }

      else
      {
        v75 = v75 & 0xFFFFFFFFFFC007FFLL | ((((v75 >> 11) - 1) & 0x7FFLL) << 11);
        if ((v82 & 0x7FF) > 0x3FF)
        {
          if (((v82 >> 11) & 0x7FF) == 0)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_free_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:985)";
            __break(1u);
            JUMPOUT(0x6B7ACLL);
          }

          if ((v82 & 0x7FF) != 0x400)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_alloc_head == XZM_FREE_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:986)";
            __break(1u);
            JUMPOUT(0x6B7E4);
          }

          v56 = *(v99 + 68);
          v86 = v87 + (v56 - ((v82 >> 11) & 0x7FF)) * *(v99 + 48);
        }

        else
        {
          v86 = v87 + (v82 & 0x7FF) * v88;
          if (v90)
          {
            __asm { MSR             TCO, #1 }

            v84 = *v86;
            __asm { MSR             TCO, #0 }
          }

          else
          {
            v84 = *v86;
          }

          v75 = v75 & 0xFFFFFFFFFFFFF800 | WORD4(v84) & 0x7FF;
          v75 = v75 & 0xFFFFF0007FFFFFFFLL | (((*(&v84 + 1) >> 11) & 0x1FFFLL) << 31);
          v85 = 1;
        }
      }

      v54 = v82;
      v53 = 0;
      v51 = v75;
      v50 = v75;
      v52 = v75;
      v21 = v82;
      v22 = v82;
      atomic_compare_exchange_strong_explicit(v96, &v22, v75, memory_order_relaxed, memory_order_relaxed);
      if (v22 != v21)
      {
        v54 = v22;
      }

      v49 = v22 == v21;
      v53 = v22 == v21;
      v82 = v54;
      v48 = v53;
      v55 = v22 == v21;
      if (v22 == v21)
      {
        if (malloc_tracing_enabled)
        {
          if (v97)
          {
            v31 = *(v97 + 16);
          }

          kdebug_trace();
        }

        if (v90)
        {
          if (v95)
          {
            v23 = *(v99 + 48);
            v109 = v86;
            v108 = v23;
            v107 = memtag_assign_tag(v86, v23);
            v123 = v107;
            v122 = v108;
            if ((v108 & 0x1FF) != 0)
            {
              v127 = v123;
              v126 = v122;
              if ((v122 & 0xF) != 0)
              {
                __break(1u);
                JUMPOUT(0x6B9D8);
              }

              if ((v127 & 0xF) != 0)
              {
                __break(1u);
                JUMPOUT(0x6B9F0);
              }

              v125 = v127;
              v124 = v127 + v126;
              _X8 = v127;
              __asm { STG             X8, [X8] }

              _X8 = v127 + v126;
              __asm { STG             X8, [X8,#-0x10] }

              if (v126 >= 0x21)
              {
                v125 = (v127 + 31) & 0xFFFFFFFFFFFFFFE0;
                v124 = (v127 + v126) & 0xFFFFFFFFFFFFFFE0;
                _X8 = v125;
                __asm { ST2G            X8, [X8] }

                _X8 = v124;
                __asm { ST2G            X8, [X8,#-0x20] }
              }

              v125 = (v127 + 63) & 0xFFFFFFFFFFFFFFC0;
              v124 = (v127 + v126) & 0xFFFFFFFFFFFFFFC0;
              while (v125 < v124)
              {
                __asm { DC              GVA, X8 }

                v125 += 64;
              }
            }

            else
            {
              v130 = v123;
              v129 = v122;
              if ((v123 & 0x1FF) != 0)
              {
                __break(1u);
                JUMPOUT(0x6BAE0);
              }

              if ((v129 & 0x1FF) != 0)
              {
                __break(1u);
                JUMPOUT(0x6BAF8);
              }

              v128 = v130 + v129;
              while (v130 < v128)
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

                v130 += 512;
              }
            }

            v86 = v107;
          }

          else if (v85)
          {
            v134 = v84;
            v133 = v84;
            v47 = BYTE7(v84) & 0xF;
            if ((BYTE7(v84) & 0xF) == 0)
            {
              qword_D8128 = "BUG IN LIBMALLOC: malloc assertion tag != 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1029)";
              __break(1u);
              JUMPOUT(0x6BC04);
            }

            v137 = v86;
            v136 = v47;
            if (v47 >= 0x10u)
            {
              __break(1u);
              JUMPOUT(0x6BC2CLL);
            }

            v135 = v137 & 0xF0FFFFFFFFFFFFFFLL | ((v136 & 0xF) << 56);
            v86 = v135;
          }

          else
          {
            v131 = v86;
            v132 = v86;
            _X8 = v86;
            __asm { LDG             X8, [X8] }

            v86 = _X8;
          }
        }

        if (v85)
        {
          v46 = v86 ^ *(v100 + 320);
          if (v95)
          {
            v103 = v46;
            v102 = v46 & 0xF0FFFFFFFFFFFFFFLL;
            v46 &= 0xF0FFFFFFFFFFFFFFLL;
          }

          if (v46 == v84)
          {
            v45 = WORD4(v84) & 0x7FF | (((*(&v84 + 1) >> 11) & 0x1FFFLL) << 11) & 0xFFFFFF;
            if (*(&v84 + 1) != v45)
            {
              *v93 = 1;
            }
          }

          else
          {
            *v93 = 1;
          }
        }

        v101 = v86;
        goto LABEL_143;
      }

      *v92 = 1;
      ++v83;
    }

    v75 &= 0xFFFFFFFFF03FFFFFLL;
    if ((v82 & 0x7FF) != 0x400)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_alloc_head == XZM_FREE_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:881)";
      __break(1u);
      JUMPOUT(0x6B384);
    }

    if ((v82 & 0x10000000) != 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !old_meta.xca_on_partial_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:887)";
      __break(1u);
      JUMPOUT(0x6B3B4);
    }

    if ((v82 & 0x20000000) != 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !old_meta.xca_on_empty_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:888)";
      __break(1u);
      JUMPOUT(0x6B3E4);
    }

    if (v97)
    {
      *(v97 + 16) = -2;
    }

    v65 = v82;
    v64 = 0;
    v62 = v75;
    v61 = v75;
    v63 = v75;
    v11 = v82;
    v12 = v82;
    atomic_compare_exchange_strong_explicit(v96, &v12, v75, memory_order_relaxed, memory_order_relaxed);
    if (v12 != v11)
    {
      v65 = v12;
    }

    v60 = v12 == v11;
    v64 = v12 == v11;
    v82 = v65;
    v59 = v64;
    v66 = v12 == v11;
  }

  while (v12 != v11);
  if (malloc_tracing_enabled)
  {
    if (v97)
    {
      v32 = *(v97 + 16);
    }

    kdebug_trace();
  }

  v101 = 0;
LABEL_143:
  if (v36[0])
  {
    _xzm_corruption_detected(v101);
  }

  return v101;
}

unint64_t _xzm_xzone_find_and_malloc_from_freelist_chunk(unsigned __int8 *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, void *a5, _BYTE *a6)
{
  v67 = a1;
  v66 = a2;
  v65 = a3;
  v64 = a4;
  v63 = a5;
  v62 = a6;
  v61 = 0;
  chunk_from_isolation = 0;
  v59 = *(a2 + 48) > 0x1000uLL;
  while (1)
  {
    chunk_from_isolation = _xzm_chunk_list_slot_pop(v67, v66, *(v67 + 29));
    if (!chunk_from_isolation)
    {
      break;
    }

    v27 = 0;
    if ((*chunk_from_isolation & 0x10000000) != 0)
    {
      v27 = ((*chunk_from_isolation >> 29) & 1) == 0;
    }

    if (!v27)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_atomic_meta.xca_on_partial_list && !chunk->xzc_atomic_meta.xca_on_empty_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1658)";
      __break(1u);
      JUMPOUT(0x6BEF0);
    }

    v58 = 0;
    v61 = _xzm_xzone_malloc_from_freelist_chunk(v67, v66, v65, v64, chunk_from_isolation, v59, v62, &v58);
    if (v61)
    {
      goto LABEL_161;
    }

    if (v58)
    {
      LOBYTE(v26) = 0;
      if ((*chunk_from_isolation & 0x10000000) == 0)
      {
        v26 = (*chunk_from_isolation >> 29) & 1;
      }

      if ((v26 & 1) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !chunk->xzc_atomic_meta.xca_on_partial_list && chunk->xzc_atomic_meta.xca_on_empty_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1667)";
        __break(1u);
        JUMPOUT(0x6BF9CLL);
      }

      _xzm_chunk_list_push(v67, (v66 + 8), chunk_from_isolation, 0, 0);
    }
  }

  for (i = 0; ; i = chunk_from_isolation)
  {
    chunk_from_isolation = _xzm_chunk_list_pop(v67, v66, 3, 0);
    if (!chunk_from_isolation)
    {
      break;
    }

    if ((*chunk_from_isolation & 0x20000000) != 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !chunk->xzc_atomic_meta.xca_on_empty_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1683)";
      __break(1u);
      JUMPOUT(0x6C054);
    }

    v61 = _xzm_xzone_malloc_from_empty_freelist_chunk(v67, v66, v65, v64, chunk_from_isolation, 0);
    if (v61)
    {
      break;
    }

    v95 = v67;
    v94 = chunk_from_isolation;
    v98 = v67;
    v97 = chunk_from_isolation;
    v96 = chunk_from_isolation & 0xFFFFFFFFFFFFC000;
    v25 = 1;
    if ((chunk_from_isolation & 0xFFFFFFFFFFFFC000) != 0)
    {
      v24 = 0;
      if (v97 >= v96 + 2136)
      {
        v24 = v97 < v96 + 48 * *(v96 + 16) + 2136;
      }

      v25 = v24;
    }

    if ((v25 & 1) == 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
      __break(1u);
      JUMPOUT(0x6C160);
    }

    v93 = v96;
    v101 = v96;
    v100 = v94;
    if (v94 < v96 + 2136)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
      __break(1u);
      JUMPOUT(0x6C1BCLL);
    }

    v99 = 0xAAAAAAAAAAAAAAABLL * ((v100 - v101 - 2136) >> 4);
    if (v99 >= *(v101 + 16))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
      __break(1u);
      JUMPOUT(0x6C21CLL);
    }

    v92 = (v96 + 88 + 8 * v99);
    *v92 = i;
  }

  v70 = v67;
  if (*(v67 + 30))
  {
    v23 = *(v67 + 30);
  }

  else
  {
    v23 = v70;
  }

  v56 = v23;
  while (i)
  {
    if ((*i & 0x20000000) != 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !busy_chunk->xzc_atomic_meta.xca_on_empty_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1697)";
      __break(1u);
      JUMPOUT(0x6C2C8);
    }

    v85 = v67;
    v84 = i;
    v88 = v67;
    v87 = i;
    v86 = i & 0xFFFFFFFFFFFFC000;
    v22 = 1;
    if ((i & 0xFFFFFFFFFFFFC000) != 0)
    {
      v21 = 0;
      if (v87 >= v86 + 2136)
      {
        v21 = v87 < v86 + 48 * *(v86 + 16) + 2136;
      }

      v22 = v21;
    }

    if ((v22 & 1) == 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
      __break(1u);
      JUMPOUT(0x6C39CLL);
    }

    v83 = v86;
    v91 = v86;
    v90 = v84;
    if (v84 < v86 + 2136)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
      __break(1u);
      JUMPOUT(0x6C3F8);
    }

    v89 = 0xAAAAAAAAAAAAAAABLL * ((v90 - v91 - 2136) >> 4);
    if (v89 >= *(v91 + 16))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
      __break(1u);
      JUMPOUT(0x6C458);
    }

    v82 = (v86 + 88 + 8 * v89);
    v55 = *v82;
    _xzm_chunk_batch_list_push(v67, v66, i, v56[424]);
    i = v55;
  }

  if (!v61)
  {
    for (j = 0; ; j = chunk_from_isolation)
    {
      chunk_from_isolation = _xzm_chunk_list_pop(v67, (v66 + 8), 0, 0);
      if (!chunk_from_isolation)
      {
        break;
      }

      if ((*chunk_from_isolation & 0x20000000) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_atomic_meta.xca_on_empty_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1717)";
        __break(1u);
        JUMPOUT(0x6C510);
      }

      if ((v53 = 1, (v56[409] & 8) == 0) || v59) && ((v56[409] & 4) == 0 || !v59) || (xzm_chunk_mark_used(v67, chunk_from_isolation, &v53))
      {
        v61 = _xzm_xzone_malloc_from_empty_freelist_chunk(v67, v66, v65, v64, chunk_from_isolation, v53 & 1);
        if (v61)
        {
          break;
        }
      }

      *(chunk_from_isolation + 16) = j;
    }

    while (1)
    {
      i = j;
      if (!j)
      {
        break;
      }

      if ((*i & 0x20000000) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion busy_chunk->xzc_atomic_meta.xca_on_empty_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1748)";
        __break(1u);
        JUMPOUT(0x6C60CLL);
      }

      j = *(j + 16);
      _xzm_chunk_list_push(v67, (v66 + 8), i, 0, 0);
    }

    if (!v61)
    {
      if (v66[87])
      {
        v69 = v67;
        v20 = *(v67 + 30) ? *(v67 + 30) : v69;
        v52 = v20;
        chunk_from_isolation = _xzm_xzone_allocate_chunk_from_isolation(v20, v66);
        if (chunk_from_isolation)
        {
          v105 = v67;
          v104 = v66;
          v103 = chunk_from_isolation;
          v19 = *(chunk_from_isolation + 32) & 0xF;
          if (v19 != 2)
          {
            if (v19 == 5)
            {
              v106 = *(v103 + 4) == 0;
LABEL_80:
              if (!v106)
              {
                qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_chunk_is_empty(zone, xz, chunk) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1765)";
                __break(1u);
                JUMPOUT(0x6C80CLL);
              }

              v61 = _xzm_xzone_malloc_from_empty_freelist_chunk(v67, v66, v65, v64, chunk_from_isolation, 1);
              if (!v61)
              {
                qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1768)";
                __break(1u);
                JUMPOUT(0x6C85CLL);
              }

LABEL_160:
              _xzm_chunk_list_push(v67, (v66 + 16), chunk_from_isolation, 1u, 0);
              goto LABEL_161;
            }

            if (v19 != 6)
            {
              v102 = *(v103 + 32) & 0xF;
              qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
              qword_D8158 = v102;
              __break(1u);
              JUMPOUT(0x6C7DCLL);
            }
          }

          v18 = 1;
          if (((*v103 >> 11) & 0x7FF) != *(v104 + 17))
          {
            v18 = 1;
            if ((~*v103 & 0x7FF) != 0)
            {
              v18 = (*v103 & 0x7FF) == 2046;
            }
          }

          v106 = v18;
          goto LABEL_80;
        }
      }

      v51 = *(v66 + 6) < 0x401uLL;
      chunk_from_isolation = _xzm_chunk_list_pop(v67, (v66 + 24), 0, 0);
      if (chunk_from_isolation)
      {
        if (v51 && (*(chunk_from_isolation + 32) & 0x10) == 0)
        {
          v28 = 0;
          v110 = v67;
          v109 = chunk_from_isolation;
          v108 = &v28;
          if (!&v28)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk_size_out failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:397)";
            __break(1u);
            JUMPOUT(0x6CEDCLL);
          }

          v114 = v110;
          v113 = v109;
          v112 = v108;
          v13 = *(v109 + 32) & 0xF;
          switch(v13)
          {
            case 2:
              *v112 = 0x4000;
              break;
            case 5:
              *v112 = 0x10000;
              break;
            case 6:
              *v112 = 0x20000;
              break;
            default:
              if ((v13 - 7) >= 2)
              {
                v111 = *(v113 + 32) & 0xF;
                qword_D8128 = "BUG IN LIBMALLOC: asking for start of chunk with invalid kind";
                qword_D8158 = v111;
                __break(1u);
                JUMPOUT(0x6CFD8);
              }

              *v112 = *(v113 + 40) << 14;
              break;
          }

          v116 = v114;
          v115 = v113;
          v119 = v114;
          v118 = v113;
          v117 = v113 & 0xFFFFFFFFFFFFC000;
          v12 = 1;
          if ((v113 & 0xFFFFFFFFFFFFC000) != 0)
          {
            v11 = 0;
            if (v118 >= v117 + 2136)
            {
              v11 = v118 < v117 + 48 * *(v117 + 16) + 2136;
            }

            v12 = v11;
          }

          if ((v12 & 1) == 0)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
            __break(1u);
            JUMPOUT(0x6D0B0);
          }

          v121 = v117;
          v120 = v115;
          v126 = v117;
          v125 = v115;
          if (v115 < v117 + 2136)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
            __break(1u);
            JUMPOUT(0x6D114);
          }

          v124 = 0xAAAAAAAAAAAAAAABLL * ((v125 - v126 - 2136) >> 4);
          if (v124 >= *(v126 + 16))
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
            __break(1u);
            JUMPOUT(0x6D174);
          }

          v123 = v117;
          v122 = v124;
          if (!(*(v117 + 72) + (v124 << 14)))
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1839)";
            __break(1u);
            JUMPOUT(0x6D1D0);
          }

          if (v28 != 0x4000)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk_size == XZM_SEGMENT_SLICE_SIZE failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1840)";
            __break(1u);
            JUMPOUT(0x6D204);
          }

          _platform_bzero();
        }
      }

      else
      {
        v50 = v51;
        v49 = 0;
        v48 = 0;
        v47 = &v48;
        v6 = v66[42];
        v7 = v66[43];
        v79 = v67;
        v78 = v6;
        v77 = v7;
        v76 = 0;
        v81 = v67;
        if (*(v67 + 30))
        {
          v17 = *(v67 + 30);
        }

        else
        {
          v17 = v81;
        }

        v75 = v17;
        v74 = _malloc_cpu_cluster_number();
        if (v74 >= ncpuclusters)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion clusterid < ncpuclusters failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:245)";
          __break(1u);
          JUMPOUT(0x6C97CLL);
        }

        if (v78 >= v75[411])
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion sgid < main->xzmz_segment_group_ids_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:251)";
          __break(1u);
          JUMPOUT(0x6C9B8);
        }

        if (v78 > 2u)
        {
          if (v77 >= v75[415])
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion front < main->xzmz_allocation_front_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:255)";
            __break(1u);
            JUMPOUT(0x6CA38);
          }
        }

        else if (v77)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion front == XZM_FRONT_INDEX_DEFAULT failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:253)";
          __break(1u);
          JUMPOUT(0x6C9F8);
        }

        v73 = v78 + v77;
        if (v75[412] < v75[413])
        {
          v72 = 0;
          v71 = 0;
          if ((v75[409] & 0x10) == 0)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion main->xzmz_defer_large failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:266)";
            __break(1u);
            JUMPOUT(0x6CAA4);
          }

          v71 = v76 & 1;
          if (v76)
          {
            v72 = 1;
          }

          else
          {
            v72 = v75[412] * v74 + v73;
          }

          if (v72 >= v75[413])
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion sg_index < main->xzmz_segment_group_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:275)";
            __break(1u);
            JUMPOUT(0x6CB24);
          }

          v80 = (*(v75 + 59) + 528 * v72);
        }

        else
        {
          v80 = (*(v75 + 59) + 528 * v73);
        }

        v46 = v80;
        v45 = 2;
        v44 = 1;
        if (v59)
        {
          v45 = 6;
          v44 = 8;
        }

        chunk_from_isolation = xzm_segment_group_alloc_chunk(v46, v45, v66 + 88, v44, v47, 0, v50, v49 & 1);
        if (!chunk_from_isolation)
        {
          v16 = 1;
          if (v47)
          {
            v16 = *v47 == 0;
          }

          if (!v16)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !list || !SLIST_FIRST(list) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1804)";
            __break(1u);
            JUMPOUT(0x6CC50);
          }

          goto LABEL_161;
        }

        *(chunk_from_isolation + 33) = v66[80];
        k = 0;
        v42 = 0;
        for (k = *v47; ; k = v42)
        {
          v15 = 0;
          if (k)
          {
            v42 = *(k + 16);
            v15 = 1;
          }

          if ((v15 & 1) == 0)
          {
            break;
          }

          *v47 = *(*v47 + 16);
          *(k + 33) = v66[80];
          *(k + 32) |= 0x40u;
          _xzm_chunk_list_push(v67, (v66 + 24), k, 0, 0);
        }

        if (v66[86] < ((v67[248] >> 2) & 3) && *(v66 + 6) < *(v67 + 72))
        {
          v68 = v67;
          v14 = *(v67 + 30) ? *(v67 + 30) : v68;
          v41 = v14;
          v38 = 1;
          v37 = 1;
          v39 = 1;
          v33 = 1;
          v32 = 1;
          v34 = 1;
          add_explicit = atomic_fetch_add_explicit((v66 + 72), 1uLL, memory_order_relaxed);
          v35 = add_explicit;
          v30 = add_explicit;
          v36 = add_explicit + 1;
          v40 = add_explicit + 1;
          if (add_explicit + 1 > v14[427])
          {
            v29 = 0;
            HIBYTE(v29) = v66[86];
            _xzm_xzone_upgrade_freelist_slot_config(v67, v66, 0, v29, (v67[248] >> 2) & 3, 1);
          }
        }
      }

      v61 = _xzm_xzone_malloc_from_fresh_freelist_chunk(v67, v66, v65, v64, chunk_from_isolation, v59);
      if (!v61)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1847)";
        __break(1u);
        JUMPOUT(0x6D26CLL);
      }

      goto LABEL_160;
    }
  }

LABEL_161:
  if (!v61 || (v10 = 1, !chunk_from_isolation))
  {
    v9 = 0;
    if (!v61)
    {
      v9 = chunk_from_isolation == 0;
    }

    v10 = v9;
  }

  if ((v10 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (ptr && chunk) || (!ptr && !chunk) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1856)";
    __break(1u);
    JUMPOUT(0x6D314);
  }

  *v63 = chunk_from_isolation;
  return v61;
}

void _xzm_walk_lock_wait(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 344), &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    os_unfair_lock_lock_with_options();
  }

  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v3 = v2;
  atomic_compare_exchange_strong_explicit((a1 + 344), &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != v2)
  {
    os_unfair_lock_unlock((a1 + 344));
  }
}

unint64_t _xzm_chunk_list_slot_pop(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = 0;
  v10 = _xzm_chunk_list_get(a1, a2, &v11, a3);
  v9 = 0;
  v8 = _xzm_chunk_list_pop(v14, v10, 0, &v9);
  if (v8)
  {
    v48 = v14;
    v47 = v13;
    v46 = (v10 + 8);
    v45 = v11;
    v44 = 0;
    v43 = v9 & 1;
    v42 = 0;
    v40 = *(v10 + 1);
    v41 = v40;
    v39 = v40;
    v42 = v40;
    v38 = v14[248] & 3;
    if (HIBYTE(v40) != v38 && ((v43 & 1) != 0 || (v42 & 0xFFFFFF00000000) != 0))
    {
      v37 = 1;
      if (v43)
      {
        v37 |= 0x100000000uLL;
      }

      v36 = 0;
      v34 = v37;
      v33 = v37;
      v35 = v37;
      v29 = v37;
      v28 = v37;
      v30 = v37;
      add_explicit = atomic_fetch_add_explicit(v46, v37, memory_order_relaxed);
      v31 = add_explicit;
      v26 = add_explicit;
      v32 = add_explicit + v35;
      v36 = add_explicit + v35;
      v25 = (add_explicit + v35) >> 56;
      if (v25 != v38)
      {
        if (v44)
        {
          v7 = *(v48 + 76);
        }

        else
        {
          v7 = *(v48 + 71);
        }

        v24 = v7;
        if (v44)
        {
          v6 = v48 + 292;
        }

        else
        {
          v6 = v48 + 272;
        }

        v23 = v6;
        if ((HIDWORD(v36) & 0xFFFFFFu) < *&v6[4 * v25])
        {
          if (v36 >= v24 && v36 <= v24)
          {
            v21 = v36;
            LODWORD(v20) = 0;
            HIDWORD(v20) = HIBYTE(v20) << 24;
            HIBYTE(v20) = v25;
            v36 = v20;
            v19 = 0;
            v18 = v46;
            v42 = *v46;
            do
            {
              if (v42 < v21 || HIBYTE(v42) > HIBYTE(v21))
              {
                break;
              }

              v17 = v36;
              v3 = v42;
              v4 = v42;
              atomic_compare_exchange_strong_explicit(v18, &v4, v36, memory_order_relaxed, memory_order_relaxed);
              if (v4 != v3)
              {
                v42 = v4;
              }

              v16 = v4 == v3;
              v19 = v4 == v3;
            }

            while (v4 != v3);
            v15 = v19;
          }
        }

        else if ((HIDWORD(v36) & 0xFFFFFFu) <= *&v23[4 * v25])
        {
          v49 = HIBYTE(v36);
          if (HIBYTE(v36))
          {
            if (HIBYTE(v36) != 1)
            {
              if (HIBYTE(v36) != 2)
              {
                qword_D8128 = "BUG IN LIBMALLOC: Invalid xzone slot config";
                __break(1u);
                JUMPOUT(0x6D994);
              }

              qword_D8128 = "BUG IN LIBMALLOC: Can't upgrade from XZM_SLOT_CPU";
              __break(1u);
              JUMPOUT(0x6D968);
            }

            v50 = 2;
          }

          else if (ncpuclusters < 2)
          {
            v50 = 2;
          }

          else
          {
            v50 = 1;
          }

          v22 = v50;
          if (HIBYTE(v36) >= v50)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion new_counters.xsc_slot_config < next_slot_config failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1444)";
            __break(1u);
            JUMPOUT(0x6D9DCLL);
          }

          _xzm_xzone_upgrade_freelist_slot_config(v48, v47, v46, v36, v22, v44 & 1);
        }
      }
    }
  }

  return v8;
}

void _xzm_chunk_list_push(uint64_t a1, atomic_ullong *a2, uint64_t a3, unsigned int a4, _BYTE *a5)
{
  if (a4 == 3)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion linkage != XZM_CHUNK_LINKAGE_BATCH failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:556)";
    __break(1u);
    JUMPOUT(0x6DB94);
  }

  v8 = *a2;
  while (1)
  {
    while (v8 < 0)
    {
      _xzm_fork_lock_wait(a1);
      v8 = *a2;
    }

    if ((v8 & 0x7FFFFFFFFFFFLL) == a3)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion head_chunk != chunk failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:570)";
      __break(1u);
      JUMPOUT(0x6DC48);
    }

    *(a3 + 8 * a4 + 16) = v8 & 0x7FFFFFFFFFFFLL;
    v7 = v8;
    v5 = v8;
    v6 = v8;
    atomic_compare_exchange_strong_explicit(a2, &v6, a3 & 0x7FFFFFFFFFFFLL | (((v8 >> 47) + 1) << 47) & 0x7FFFFFFFFFFFFFFFLL, memory_order_release, memory_order_relaxed);
    if (v6 != v5)
    {
      v7 = v6;
    }

    v8 = v7;
    if (v6 == v5)
    {
      break;
    }

    if (a5)
    {
      *a5 = 1;
    }
  }
}

unint64_t _xzm_chunk_list_pop(uint64_t a1, atomic_ullong *a2, int a3, _BYTE *a4)
{
  v19 = a3 == 3;
  v18 = *a2;
  while (1)
  {
    while ((v18 & 0x8000000000000000) != 0)
    {
      _xzm_fork_lock_wait(a1);
      v18 = *a2;
    }

    v20 = v18 & 0x7FFFFFFFFFFFLL;
    if ((v18 & 0x7FFFFFFFFFFFLL) == 0)
    {
      break;
    }

    if (v19)
    {
      if (((v18 >> 57) & 0x3F) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion head.xzch_batch_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:523)";
        __break(1u);
        JUMPOUT(0x6DF10);
      }

      v25 = v18 & 0x7FFFFFFFC000;
      v14 = 1;
      if ((v18 & 0x7FFFFFFFC000) != 0)
      {
        v13 = 0;
        if (v20 >= v25 + 2136)
        {
          v13 = (v18 & 0x7FFFFFFFFFFFLL) < (v18 & 0x7FFFFFFFC000) + 48 * *(dword_10 + (v18 & 0x7FFFFFFFC000)) + 2136;
        }

        v14 = v13;
      }

      if ((v14 & 1) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
        __break(1u);
        JUMPOUT(0x6DFE4);
      }

      if (v20 < v25 + 2136)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
        __break(1u);
        JUMPOUT(0x6E040);
      }

      if ((0xAAAAAAAAAAAAAAABLL * (((v18 & 0x7FFFFFFFFFFFLL) - (v18 & 0x7FFFFFFFC000) - 2136) >> 4)) >= *(dword_10 + (v18 & 0x7FFFFFFFC000)))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
        __break(1u);
        JUMPOUT(0x6E0A0);
      }

      v16 = *(&stru_20.maxprot + (v18 & 0x7FFFFFFFC000) + 0xFFFFFFFD55555558 * ((v20 - v25 - 2136) >> 4));
      v17 = v16 & 0x7FFFFFFFFFFFLL | ((((v18 >> 47) + 1) & 0x3FF) << 47) & 0x1FFFFFFFFFFFFFFLL | ((((v18 >> 57) - 1) & 0x3F) << 57) & 0x7FFFFFFFFFFFFFFFLL;
      if (((v17 >> 57) & 0x3F) >= ((v18 >> 57) & 0x3F))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion new_head.xzch_batch_count < head.xzch_batch_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:530)";
        __break(1u);
        JUMPOUT(0x6E160);
      }
    }

    else
    {
      v16 = *(&dword_10[2 * a3] + (v18 & 0x7FFFFFFFFFFFLL));
      v17 = v16 & 0x7FFFFFFFFFFFLL | (((v18 >> 47) + 1) << 47) & 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v20 == v16)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk != next failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:532)";
      __break(1u);
      JUMPOUT(0x6E19CLL);
    }

    v15 = v18;
    v4 = v18;
    v5 = v18;
    atomic_compare_exchange_strong_explicit(a2, &v5, v17, memory_order_relaxed, memory_order_relaxed);
    if (v5 != v4)
    {
      v15 = v5;
    }

    v18 = v15;
    if (v5 == v4)
    {
      if (v19)
      {
        v26 = v17 & 0x7FFFFFFFFFFFLL;
        if ((v17 & 0x7FFFFFFFFFFFLL) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v27 = 0;
        }

        else
        {
          v28 = v17 & 0x7FFFFFFFC000;
          v12 = 1;
          if ((v17 & 0x7FFFFFFFC000) != 0)
          {
            v11 = 0;
            if (v26 >= v28 + 2136)
            {
              v11 = (v17 & 0x7FFFFFFFFFFFLL) < (v17 & 0x7FFFFFFFC000) + 48 * *(dword_10 + (v17 & 0x7FFFFFFFC000)) + 2136;
            }

            v12 = v11;
          }

          if ((v12 & 1) == 0)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
            __break(1u);
            JUMPOUT(0x6E34CLL);
          }

          v10 = 1;
          if (v26)
          {
            v9 = 0;
            if (v26 >= v28 + 2136)
            {
              v9 = (v17 & 0x7FFFFFFFFFFFLL) < (v17 & 0x7FFFFFFFC000) + 48 * *(dword_10 + (v17 & 0x7FFFFFFFC000)) + 2136;
            }

            v10 = v9;
          }

          v27 = v10;
        }

        if (!v27)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_slice_meta_is_batch_pointer(zone, (xzm_chunk_t)new_head.xzch_batch_ptr) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:538)";
          __break(1u);
          JUMPOUT(0x6E40CLL);
        }

        v29 = v20 & 0xFFFFFFFFFFFFC000;
        v8 = 1;
        if ((v20 & 0xFFFFFFFFFFFFC000) != 0)
        {
          v7 = 0;
          if (v20 >= v29 + 2136)
          {
            v7 = v20 < (v20 & 0xFFFFFFFFFFFFC000) + 48 * *(dword_10 + (v20 & 0xFFFFFFFFFFFFC000)) + 2136;
          }

          v8 = v7;
        }

        if ((v8 & 1) == 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
          __break(1u);
          JUMPOUT(0x6E4E0);
        }

        if (v20 < v29 + 2136)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
          __break(1u);
          JUMPOUT(0x6E54CLL);
        }

        if ((0xAAAAAAAAAAAAAAABLL * ((v20 - (v20 & 0xFFFFFFFFFFFFC000) - 2136) >> 4)) >= *(dword_10 + (v20 & 0xFFFFFFFFFFFFC000)))
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
          __break(1u);
          JUMPOUT(0x6E5ACLL);
        }

        *(&stru_20.maxprot + (v20 & 0xFFFFFFFFFFFFC000) + 0xFFFFFFFD55555558 * ((v20 - v29 - 2136) >> 4)) = -1;
      }

      return v20;
    }

    if (a4)
    {
      *a4 = 1;
    }
  }

  return v20;
}

uint64_t _xzm_xzone_malloc_from_empty_freelist_chunk(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, unint64_t a5, char a6)
{
  v21 = 1;
  if ((*(a5 + 32) & 0xF) != 2)
  {
    v21 = (*(a5 + 32) & 0xF) == 6;
  }

  if (!v21)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_TINY_CHUNK || chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_SMALL_FREELIST_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1105)";
    __break(1u);
    JUMPOUT(0x6E6A0);
  }

  v26 = (*(a5 + 32) & 0xF) == 6;
  explicit = atomic_load_explicit(a5, memory_order_acquire);
  v20 = 1;
  if ((explicit & 0x7FF) != 0x7FE)
  {
    v20 = (~explicit & 0x7FF) == 0;
  }

  if (!v20)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_alloc_head == XZM_FREE_MADVISED || old_meta.xca_alloc_head == XZM_FREE_MADVISING failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1122)";
    __break(1u);
    JUMPOUT(0x6E748);
  }

  if ((explicit & 0x10000000) != 0)
  {
    if ((~explicit & 0x7FF) != 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_alloc_head == XZM_FREE_MADVISING failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1127)";
      __break(1u);
      JUMPOUT(0x6E78CLL);
    }

    return 0;
  }

  else
  {
    if (((explicit >> 22) & 0x3F) != 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_alloc_idx == XZM_SLOT_INDEX_EMPTY failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1141)";
      __break(1u);
      JUMPOUT(0x6E7FCLL);
    }

    v34 = a5 & 0xFFFFFFFFFFFFC000;
    v19 = 1;
    if ((a5 & 0xFFFFFFFFFFFFC000) != 0)
    {
      v18 = 0;
      if (a5 >= v34 + 2136)
      {
        v18 = a5 < (a5 & 0xFFFFFFFFFFFFC000) + 48 * *(dword_10 + (a5 & 0xFFFFFFFFFFFFC000)) + 2136;
      }

      v19 = v18;
    }

    if ((v19 & 1) == 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
      __break(1u);
      JUMPOUT(0x6E9D0);
    }

    if (a5 < v34 + 2136)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
      __break(1u);
      JUMPOUT(0x6EA34);
    }

    v35 = 0xAAAAAAAAAAAAAAABLL * ((a5 - v34 - 2136) >> 4);
    if ((0xAAAAAAAAAAAAAAABLL * ((a5 - (a5 & 0xFFFFFFFFFFFFC000) - 2136) >> 4)) >= *(dword_10 + (a5 & 0xFFFFFFFFFFFFC000)))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
      __break(1u);
      JUMPOUT(0x6EA94);
    }

    v24 = *(&stru_20.fileoff + (a5 & 0xFFFFFFFFFFFFC000)) + (v35 << 14);
    v23 = v24;
    if ((*(a2 + 87) & 2) != 0)
    {
      if (v26)
      {
        v33 = *(a2 + 48);
        v32 = memtag_assign_tag(v24, v33);
        if ((v33 & 0x1FF) != 0)
        {
          if ((v33 & 0xF) != 0)
          {
            __break(1u);
            JUMPOUT(0x6EB54);
          }

          if ((v32 & 0xF) != 0)
          {
            __break(1u);
            JUMPOUT(0x6EB6CLL);
          }

          _X8 = v32;
          __asm { STG             X8, [X8] }

          _X8 = v32 + v33;
          __asm { STG             X8, [X8,#-0x10] }

          if (v33 >= 0x21)
          {
            _X8 = (v32 + 31) & 0xFFFFFFFFFFFFFFE0;
            __asm { ST2G            X8, [X8] }

            _X8 = (v32 + v33) & 0xFFFFFFFFFFFFFFE0;
            __asm { ST2G            X8, [X8,#-0x20] }
          }

          for (i = (v32 + 63) & 0xFFFFFFFFFFFFFFC0; i < ((v32 + v33) & 0xFFFFFFFFFFFFFFC0); i += 64)
          {
            __asm { DC              GVA, X8 }
          }
        }

        else
        {
          v37 = v32;
          if ((v32 & 0x1FF) != 0)
          {
            __break(1u);
            JUMPOUT(0x6EC5CLL);
          }

          if ((v33 & 0x1FF) != 0)
          {
            __break(1u);
            JUMPOUT(0x6EC74);
          }

          while (v37 < v32 + v33)
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

            v37 += 512;
          }
        }

        v23 = v32;
      }

      else if (a6)
      {
        v23 = _xzm_xzone_chunk_memtag_init(a1, a2, a5);
      }

      else
      {
        _X8 = *(&stru_20.fileoff + (a5 & 0xFFFFFFFFFFFFC000)) + (v35 << 14);
        __asm { LDG             X8, [X8] }

        v23 = _X8;
      }
    }

    if (a4)
    {
      v22 = explicit & 0xFFFFFFFFD0000000 | (((a3 + 1) & 0x3FLL) << 22) | 0x400;
      *a4 = a5;
      *(a4 + 8) = v24;
      *(a4 + 16) = 1024;
      *(a4 + 18) = *(a2 + 68) - 1;
    }

    else
    {
      v22 = explicit & 0xFFFFFFFFD0000000 | (((a3 + 1) & 0x3FLL) << 22) | 0x400 | (((*(a2 + 68) - 1) & 0x7FF) << 11);
    }

    v16 = explicit;
    atomic_compare_exchange_strong_explicit(a5, &v16, v22, memory_order_acquire, memory_order_acquire);
    if (v16 != explicit)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion success failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1193)";
      __break(1u);
      JUMPOUT(0x6EEF8);
    }

    if (malloc_tracing_enabled)
    {
      kdebug_trace();
    }

    return v23;
  }
}

void _xzm_chunk_batch_list_push(uint64_t a1, atomic_ullong *a2, unint64_t a3, unint64_t a4)
{
  v14 = *a2;
  do
  {
    while ((v14 & 0x8000000000000000) != 0)
    {
      _xzm_fork_lock_wait(a1);
      v14 = *a2;
    }

    if (((v14 >> 57) & 0x3F) > a4)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion head.xzch_batch_count <= max failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:682)";
      __break(1u);
      JUMPOUT(0x6F028);
    }

    v13 = ((v14 >> 57) & 0x3F) >= a4;
    if (((v14 >> 57) & 0x3F) >= a4)
    {
      v10 = 1;
    }

    else
    {
      v10 = ((v14 >> 57) & 0x3F) + 1;
    }

    v12 = a3 & 0x7FFFFFFFFFFFLL | ((((v14 >> 47) + 1) & 0x3FF) << 47) & 0x1FFFFFFFFFFFFFFLL | ((v10 & 0x3F) << 57) & 0x7FFFFFFFFFFFFFFFLL;
    v9 = 1;
    if (((v14 >> 57) & 0x3F) < a4)
    {
      v9 = ((v12 >> 57) & 0x3F) > ((v14 >> 57) & 0x3F);
    }

    if (!v9)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion was_full || new_head.xzch_batch_count > head.xzch_batch_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:692)";
      __break(1u);
      JUMPOUT(0x6F12CLL);
    }

    if (((v14 >> 57) & 0x3F) >= a4)
    {
      v8 = 0;
    }

    else
    {
      v8 = v14 & 0x7FFFFFFFFFFFLL;
    }

    if (a3 == v8)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk != next failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:695)";
      __break(1u);
      JUMPOUT(0x6F194);
    }

    v20 = a3 & 0xFFFFFFFFFFFFC000;
    v7 = 1;
    if ((a3 & 0xFFFFFFFFFFFFC000) != 0)
    {
      v6 = 0;
      if (a3 >= v20 + 2136)
      {
        v6 = a3 < (a3 & 0xFFFFFFFFFFFFC000) + 48 * *(dword_10 + (a3 & 0xFFFFFFFFFFFFC000)) + 2136;
      }

      v7 = v6;
    }

    if ((v7 & 1) == 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
      __break(1u);
      JUMPOUT(0x6F270);
    }

    if (a3 < v20 + 2136)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
      __break(1u);
      JUMPOUT(0x6F2CCLL);
    }

    if ((0xAAAAAAAAAAAAAAABLL * ((a3 - (a3 & 0xFFFFFFFFFFFFC000) - 2136) >> 4)) >= *(dword_10 + (a3 & 0xFFFFFFFFFFFFC000)))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
      __break(1u);
      JUMPOUT(0x6F32CLL);
    }

    *(&stru_20.maxprot + (a3 & 0xFFFFFFFFFFFFC000) + 0xFFFFFFFD55555558 * ((a3 - v20 - 2136) >> 4)) = v8;
    v11 = v14;
    v4 = v14;
    v5 = v14;
    atomic_compare_exchange_strong_explicit(a2, &v5, v12, memory_order_release, memory_order_relaxed);
    if (v5 != v4)
    {
      v11 = v5;
    }

    v14 = v11;
  }

  while (v5 != v4);
  if (v13)
  {
    _xzm_xzone_madvise_batch(a1, a2, v11 & 0x7FFFFFFFFFFFLL);
  }
}

unint64_t _xzm_xzone_allocate_chunk_from_isolation(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v16 = a2;
  if ((*(a2 + 87) & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion xz->xz_sequestered failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1584)";
    __break(1u);
    JUMPOUT(0x6F47CLL);
  }

  v15 = *(v17 + 456) + 16 * *(v16 + 80);
  i = 0;
  if (*v15)
  {
    v13 = 0;
    v18 = v15 + 8;
    v31 = v15 + 8;
    v30 = 327680;
    v32 = 3;
    v33 = 3;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v29 = *(StatusReg + 24);
    v28 = 0;
    v27 = v29;
    v26 = v29;
    v2 = 0;
    atomic_compare_exchange_strong_explicit((v15 + 8), &v2, v29, memory_order_acquire, memory_order_acquire);
    if (v2)
    {
      v28 = v2;
    }

    v25 = v2 == 0;
    if (v2)
    {
      os_unfair_lock_lock_with_options();
    }

    for (i = *v15; ; i = *v15)
    {
      if (!i)
      {
LABEL_32:
        if (v13)
        {
          v11 = 0;
          for (j = v13; ; j = v11)
          {
            v8 = 0;
            if (j)
            {
              v11 = *(j + 16);
              v8 = 1;
            }

            if ((v8 & 1) == 0)
            {
              break;
            }

            if (*(j + 16))
            {
              *(*(j + 16) + 24) = *(j + 24);
            }

            **(j + 24) = *(j + 16);
            *(j + 16) = -1;
            *(j + 24) = -1;
            v4 = *v15;
            *(j + 16) = *v15;
            if (v4)
            {
              *(*v15 + 24) = j + 16;
            }

            *v15 = j;
            *(j + 24) = v15;
          }
        }

        v19 = v15 + 8;
        v40 = (v15 + 8);
        v41 = 3;
        v42 = 3;
        v43 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v39 = *(v43 + 24);
        v38 = 0;
        v37 = v39;
        v36 = 0;
        v5 = v39;
        v6 = v39;
        atomic_compare_exchange_strong_explicit((v15 + 8), &v6, 0, memory_order_release, memory_order_relaxed);
        if (v6 != v5)
        {
          v37 = v6;
        }

        v35 = v6 == v5;
        if (v6 != v5)
        {
          os_unfair_lock_unlock(v40);
        }

        return i;
      }

      v23 = v17;
      v22 = v16;
      v21 = i;
      v10 = *(i + 32) & 0xF;
      if (v10 != 2)
      {
        if (v10 == 5)
        {
          v24 = *(v21 + 4) == 0;
          goto LABEL_19;
        }

        if (v10 != 6)
        {
          v20 = *(v21 + 32) & 0xF;
          qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
          qword_D8158 = v20;
          __break(1u);
          JUMPOUT(0x6F6B8);
        }
      }

      v9 = 1;
      if (((*v21 >> 11) & 0x7FF) != *(v22 + 68))
      {
        v9 = 1;
        if ((~*v21 & 0x7FF) != 0)
        {
          v9 = (*v21 & 0x7FF) == 2046;
        }
      }

      v24 = v9;
LABEL_19:
      if (!v24)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_chunk_is_empty(&main->xzmz_base, xz, chunk) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1600)";
        __break(1u);
        JUMPOUT(0x6F6E8);
      }

      if (*(i + 16))
      {
        *(*(i + 16) + 24) = *(i + 24);
      }

      **(i + 24) = *(i + 16);
      *(i + 16) = -1;
      *(i + 24) = -1;
      if (*(v16 + 48) <= 0x1000uLL || (*(v17 + 409) & 4) == 0) && (*(v16 + 48) > 0x1000uLL || (*(v17 + 409) & 8) == 0) || (xzm_chunk_mark_used(v17, i, 0))
      {
        *(i + 34) = *(v16 + 82);
        goto LABEL_32;
      }

      v3 = v13;
      *(i + 16) = v13;
      if (v3)
      {
        *(v13 + 24) = i + 16;
      }

      v13 = i;
      *(i + 24) = &v13;
    }
  }

  return i;
}

uint64_t _xzm_xzone_upgrade_freelist_slot_config(uint64_t result, unsigned __int8 *a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v16 = result;
  if (a6)
  {
    if (malloc_tracing_enabled)
    {
      v6 = a2[80];
      result = kdebug_trace();
    }
  }

  else if (malloc_tracing_enabled)
  {
    v7 = a2[80];
    result = kdebug_trace();
  }

  if (a6)
  {
    v9 = a2 + 86;
  }

  else
  {
    v9 = a2 + 85;
  }

  *v9 = a5;
  LODWORD(v11) = 0;
  HIDWORD(v11) = v12 << 24;
  HIBYTE(v11) = a5;
  if (!a5)
  {
    goto LABEL_15;
  }

  if (a5 == 1)
  {
    v19 = ncpuclusters;
    goto LABEL_16;
  }

  if (a5 != 2)
  {
LABEL_15:
    v19 = 1;
    goto LABEL_16;
  }

  v19 = logical_ncpus;
LABEL_16:
  for (i = 0; i < v19; ++i)
  {
    if (a6)
    {
      v21 = a2[80];
      v20 = i * *(v16 + 210);
      if (v20 + v21 >= *(v16 + 211) * *(v16 + 210))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion alloc_base_idx + xz_idx < zone->xzz_slot_count * zone->xzz_xzone_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:1246)";
        __break(1u);
        JUMPOUT(0x6FC78);
      }

      v8 = (*(v16 + 224) + 32 * (v20 + v21) + 16);
    }

    else
    {
      v18 = a2[80];
      v17 = i * *(v16 + 210);
      if (v17 + v18 >= *(v16 + 211) * *(v16 + 210))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion alloc_base_idx + xz_idx < zone->xzz_slot_count * zone->xzz_xzone_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:233)";
        __break(1u);
        JUMPOUT(0x6FD30);
      }

      v8 = (*(v16 + 232) + 16 * (v17 + v18) + 8);
    }

    *v8 = v11;
  }

  return result;
}

unint64_t _xzm_xzone_malloc_from_fresh_freelist_chunk(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, unint64_t a5, char a6)
{
  v10 = 1;
  if ((*(a5 + 32) & 0xF) != 2)
  {
    v10 = (*(a5 + 32) & 0xF) == 6;
  }

  if (!v10)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_TINY_CHUNK || chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_SMALL_FREELIST_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1239)";
    __break(1u);
    JUMPOUT(0x6FE34);
  }

  _xzm_xzone_fresh_chunk_init(a2, a5, *(a5 + 32) & 0xF);
  v21 = a5 & 0xFFFFFFFFFFFFC000;
  v9 = 1;
  if ((a5 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v8 = 0;
    if (a5 >= v21 + 2136)
    {
      v8 = a5 < (a5 & 0xFFFFFFFFFFFFC000) + 48 * *(dword_10 + (a5 & 0xFFFFFFFFFFFFC000)) + 2136;
    }

    v9 = v8;
  }

  if ((v9 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0x70020);
  }

  if (a5 < v21 + 2136)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
    __break(1u);
    JUMPOUT(0x70084);
  }

  if ((0xAAAAAAAAAAAAAAABLL * ((a5 - (a5 & 0xFFFFFFFFFFFFC000) - 2136) >> 4)) >= *(dword_10 + (a5 & 0xFFFFFFFFFFFFC000)))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
    __break(1u);
    JUMPOUT(0x700E4);
  }

  v12 = *(&stru_20.fileoff + (a5 & 0xFFFFFFFFFFFFC000)) + ((-1431655765 * ((a5 - v21 - 2136) >> 4)) << 14);
  if (a4)
  {
    v13 = (((a3 + 1) & 0x3F) << 22) & 0xFFFFBFF | 0x400;
    *a4 = a5;
    *(a4 + 8) = v12;
    *(a4 + 16) = 1024;
    *(a4 + 18) = *(a2 + 68) - 1;
  }

  else
  {
    v13 = (((*(a2 + 68) - 1) & 0x7FF) << 11) & 0x3FFBFF | 0x400 | (((a3 + 1) & 0x3F) << 22) & 0xFFFFFFF;
  }

  if (malloc_tracing_enabled)
  {
    v6 = *(a2 + 80);
    kdebug_trace();
  }

  *a5 = v13;
  *(a5 + 34) = *(a2 + 82);
  if ((*(a5 + 12) & 1) == 0)
  {
    return v12;
  }

  if (a6)
  {
    return _xzm_xzone_block_memtag_retag(a1, v12, *(a2 + 48));
  }

  else
  {
    return _xzm_xzone_chunk_memtag_init(a1, a2, a5);
  }
}

uint64_t _xzm_chunk_list_get(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v8 = *(a2 + 85);
  if (v8 > ((a1[248] >> 4) & 3))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slot_config <= zone->xzz_max_slot_config failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:185)";
    __break(1u);
    JUMPOUT(0x7041CLL);
  }

  if (a3)
  {
    *a3 = v8;
  }

  if (v8)
  {
    if (v8 == 1)
    {
      v9 = _malloc_cpu_cluster_number();
      goto LABEL_11;
    }

    if (v8 == 2)
    {
      v9 = _malloc_cpu_number();
      goto LABEL_11;
    }
  }

  v9 = 0;
LABEL_11:
  v11 = *(a2 + 80);
  v10 = v9 * a1[210];
  if (v10 + v11 >= a1[211] * a1[210])
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion alloc_base_idx + xz_idx < zone->xzz_slot_count * zone->xzz_xzone_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:233)";
    __break(1u);
    JUMPOUT(0x70530);
  }

  return a4 + 16 * (v10 + v11);
}

uint64_t _xzm_xzone_chunk_memtag_init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v10 = a1;
  v9 = a2;
  v8[1] = a3;
  v8[0] = 0;
  v13 = a1;
  v12 = a3;
  v11 = v8;
  if (&v4 == -32)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk_size_out failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:397)";
    __break(1u);
    JUMPOUT(0x705BCLL);
  }

  v17 = v13;
  v16 = v12;
  v15 = v11;
  if (v11)
  {
    v7 = *(v16 + 32) & 0xF;
    switch(v7)
    {
      case 2:
        *v15 = 0x4000;
        break;
      case 5:
        *v15 = 0x10000;
        break;
      case 6:
        *v15 = 0x20000;
        break;
      default:
        if ((v7 - 7) >= 2)
        {
          v14 = *(v16 + 32) & 0xF;
          qword_D8128 = "BUG IN LIBMALLOC: asking for start of chunk with invalid kind";
          qword_D8158 = v14;
          __break(1u);
          JUMPOUT(0x706B8);
        }

        *v15 = *(v16 + 40) << 14;
        break;
    }
  }

  v19 = v17;
  v18 = v16;
  v22 = v17;
  v21 = v16;
  v20 = v16 & 0xFFFFFFFFFFFFC000;
  v6 = 1;
  if ((v16 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v5 = 0;
    if (v21 >= v20 + 2136)
    {
      v5 = v21 < v20 + 48 * *(v20 + 16) + 2136;
    }

    v6 = v5;
  }

  if ((v6 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0x70790);
  }

  v24 = v20;
  v23 = v18;
  v4 = v20;
  v29 = v20;
  v28 = v18;
  if (v18 < v20 + 2136)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
    __break(1u);
    JUMPOUT(0x707F4);
  }

  v27 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v29 - 2136) >> 4);
  if (v27 >= *(v29 + 16))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
    __break(1u);
    JUMPOUT(0x70854);
  }

  v26 = v4;
  v25 = v27;
  return memtag_init_chunk(*(v4 + 72) + (v27 << 14), v8[0], *(v9 + 48));
}

void _xzm_xzone_madvise_batch(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v35 = v132;
  v53 = a1;
  v52 = a2;
  v51 = a3;
  v50 = *(a3 + 32) & 0xF;
  v36 = 0u;
  memset(v132, 0, 512);
  v49 = 0;
  v54 = a1;
  v3 = *(a1 + 240);
  v37 = *(v53 + 240);
  if (v3)
  {
    v34 = v37;
  }

  else
  {
    v34 = v54;
  }

  v48 = v34;
  v47 = *(v34 + 568);
  if (v50 == 2)
  {
    v33 = (*(v48 + 409) >> 3) & 1;
  }

  else
  {
    v33 = (*(v48 + 409) >> 2) & 1;
  }

  v46 = v33 != 0;
  v45 = 0;
  if (v33)
  {
    v55 = v47 + 12;
    v119 = v47 + 12;
    v118 = 327680;
    v120 = 3;
    v121 = 3;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v117 = *(StatusReg + 24);
    v116 = 0;
    v115 = v117;
    v114 = v117;
    v4 = 0;
    atomic_compare_exchange_strong_explicit((v47 + 12), &v4, v117, memory_order_acquire, memory_order_acquire);
    v31 = v4;
    v32 = v4 == 0;
    if (v4)
    {
      v116 = v31;
    }

    v113 = v32;
    if (!v32)
    {
      os_unfair_lock_lock_with_options();
    }
  }

  while (v51)
  {
    v5 = *(v48 + 424);
    v30 = 0;
    if (v49 < v5)
    {
      v30 = v49 < 0x40;
    }

    if (!v30)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion batch_list_size < main->xzmz_batch_size && batch_list_size < (1u << XZM_BATCH_SIZE_BITS) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2253)";
      __break(1u);
      JUMPOUT(0x70B64);
    }

    v6 = v49++;
    v132[v6] = v51;
    if (v50 != (*(v51 + 32) & 0xF))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion kind == chunk->xzc_bits.xzcb_kind failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2257)";
      __break(1u);
      JUMPOUT(0x70BC4);
    }

    v60 = v53;
    v59 = v51;
    v63 = v53;
    v62 = v51;
    v61 = v51 & 0xFFFFFFFFFFFFC000;
    v29 = 1;
    if ((v51 & 0xFFFFFFFFFFFFC000) != 0)
    {
      v28 = 0;
      if (v62 >= v61 + 2136)
      {
        v28 = v62 < v61 + 48 * *(v61 + 16) + 2136;
      }

      v29 = v28;
    }

    if ((v29 & 1) == 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
      __break(1u);
      JUMPOUT(0x70C98);
    }

    v58 = v61;
    v27 = v61 + 88;
    v66 = v61;
    v65 = v59;
    if (v59 < v61 + 2136)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
      __break(1u);
      JUMPOUT(0x70CF4);
    }

    v64 = 0xAAAAAAAAAAAAAAABLL * ((v65 - v66 - 2136) >> 4);
    if (v64 >= *(v66 + 16))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
      __break(1u);
      JUMPOUT(0x70D54);
    }

    v57 = (v27 + 8 * v64);
    v44 = *v57;
    v90 = v53;
    v89 = v44;
    if (v44 == -1)
    {
      v91 = 0;
    }

    else
    {
      v88 = v89;
      v94 = v90;
      v93 = v89;
      v92 = v89 & 0xFFFFFFFFFFFFC000;
      v26 = 1;
      if ((v89 & 0xFFFFFFFFFFFFC000) != 0)
      {
        v25 = 0;
        if (v93 >= v92 + 2136)
        {
          v25 = v93 < v92 + 48 * *(v92 + 16) + 2136;
        }

        v26 = v25;
      }

      if ((v26 & 1) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
        __break(1u);
        JUMPOUT(0x70E68);
      }

      v87 = v92;
      v24 = 1;
      if (v89)
      {
        v23 = 0;
        if (v88 >= v87 + 2136)
        {
          v23 = v88 < v87 + 48 * *(v87 + 16) + 2136;
        }

        v24 = v23;
      }

      v91 = v24;
    }

    if (!v91)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_slice_meta_is_batch_pointer(zone, next) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2261)";
      __break(1u);
      JUMPOUT(0x70F28);
    }

    if (v46)
    {
      v43 = 0;
      v70 = v53;
      v69 = v51;
      v68 = &v43;
      if (&v11 == -192)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk_size_out failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:397)";
        __break(1u);
        JUMPOUT(0x70F84);
      }

      v74 = v70;
      v73 = v69;
      v72 = v68;
      if (v68)
      {
        v22 = *(v73 + 32) & 0xF;
        switch(v22)
        {
          case 2:
            *v72 = 0x4000;
            break;
          case 5:
            *v72 = 0x10000;
            break;
          case 6:
            *v72 = 0x20000;
            break;
          default:
            if ((v22 - 7) >= 2)
            {
              v71 = *(v73 + 32) & 0xF;
              qword_D8128 = "BUG IN LIBMALLOC: asking for start of chunk with invalid kind";
              qword_D8158 = v71;
              __break(1u);
              JUMPOUT(0x71080);
            }

            *v72 = *(v73 + 40) << 14;
            break;
        }
      }

      v76 = v74;
      v75 = v73;
      v79 = v74;
      v78 = v73;
      v77 = v73 & 0xFFFFFFFFFFFFC000;
      v21 = 1;
      if ((v73 & 0xFFFFFFFFFFFFC000) != 0)
      {
        v20 = 0;
        if (v78 >= v77 + 2136)
        {
          v20 = v78 < v77 + 48 * *(v77 + 16) + 2136;
        }

        v21 = v20;
      }

      if ((v21 & 1) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
        __break(1u);
        JUMPOUT(0x71158);
      }

      v81 = v77;
      v80 = v75;
      v19 = v77;
      v86 = v77;
      v85 = v75;
      if (v75 < v77 + 2136)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
        __break(1u);
        JUMPOUT(0x711BCLL);
      }

      v84 = 0xAAAAAAAAAAAAAAABLL * ((v85 - v86 - 2136) >> 4);
      if (v84 >= *(v86 + 16))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
        __break(1u);
        JUMPOUT(0x7121CLL);
      }

      v83 = v19;
      v82 = v84;
      v67 = *(v19 + 72) + (v84 << 14);
      v42 = v67;
      v97 = v53;
      v96 = v51;
      v100 = v53;
      v99 = v51;
      v98 = v51 & 0xFFFFFFFFFFFFC000;
      v18 = 1;
      if ((v51 & 0xFFFFFFFFFFFFC000) != 0)
      {
        v17 = 0;
        if (v99 >= v98 + 2136)
        {
          v17 = v99 < v98 + 48 * *(v98 + 16) + 2136;
        }

        v18 = v17;
      }

      if ((v18 & 1) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
        __break(1u);
        JUMPOUT(0x7131CLL);
      }

      v95 = v98;
      v103 = v98;
      v102 = v96;
      v16 = v98 + 88;
      v106 = v98;
      v105 = v96;
      if (v96 < v98 + 2136)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
        __break(1u);
        JUMPOUT(0x71388);
      }

      v104 = 0xAAAAAAAAAAAAAAABLL * ((v105 - v106 - 2136) >> 4);
      if (v104 >= *(v106 + 16))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
        __break(1u);
        JUMPOUT(0x713E8);
      }

      v101 = (v16 + 8 * v104);
      v41 = v101;
      v40 = 0;
      v7 = xzm_reclaim_mark_free_locked(v47, v42, v43);
      *v41 = v7;
      v45 = (v45 | v40) & 1;
    }

    else
    {
      v109 = v53;
      v108 = v51;
      v112 = v53;
      v111 = v51;
      v110 = v51 & 0xFFFFFFFFFFFFC000;
      v15 = 1;
      if ((v51 & 0xFFFFFFFFFFFFC000) != 0)
      {
        v14 = 0;
        if (v111 >= v110 + 2136)
        {
          v14 = v111 < v110 + 48 * *(v110 + 16) + 2136;
        }

        v15 = v14;
      }

      if ((v15 & 1) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
        __break(1u);
        JUMPOUT(0x71514);
      }

      v107 = v110;
      v39 = *v110;
      xzm_segment_group_segment_madvise_chunk(v39, v51);
    }

    v51 = v44;
  }

  if (v46)
  {
    v56 = v47 + 12;
    lock = v47 + 3;
    v129 = 3;
    v130 = 3;
    v131 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v127 = *(v131 + 24);
    v126 = 0;
    v125 = v127;
    v124 = 0;
    v8 = v127;
    v9 = v127;
    atomic_compare_exchange_strong_explicit((v47 + 12), &v9, 0, memory_order_release, memory_order_relaxed);
    v12 = v9;
    v13 = v9 == v8;
    if (v9 != v8)
    {
      v125 = v12;
    }

    v123 = v13;
    if (!v13)
    {
      os_unfair_lock_unlock(lock);
    }

    if (v45)
    {
      v10 = *v47;
      mach_vm_reclaim_update_kernel_accounting();
    }
  }

  if (v50 == 2 || v50 == 6)
  {
    _xzm_xzone_freelist_chunks_mark_empty(v53, v52, v132, v49);
  }

  else
  {
    if (v50 != 5)
    {
      v38 = v50;
      qword_D8128 = "BUG IN LIBMALLOC: Unexpected chunk kind";
      qword_D8158 = v50;
      __break(1u);
      JUMPOUT(0x716CCLL);
    }

    _xzm_xzone_small_chunks_mark_empty(v53, v52, v132, v49);
  }
}

void _xzm_xzone_freelist_chunks_mark_empty(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  for (i = 0; i < a4; ++i)
  {
    v9 = *(a3 + 8 * i);
    v8 = *v9;
    do
    {
      if ((~v8 & 0x7FF) != 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_meta.xca_alloc_head == XZM_FREE_MADVISING failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2170)";
        __break(1u);
        JUMPOUT(0x717C8);
      }

      v7 = v8 & 0xFFFFFFFFFFFFF800 | 0x7FE;
      if ((v8 & 0x10000000) == 0)
      {
        v7 = v8 & 0xFFFFFFFFDFFFF800 | 0x200007FE;
      }

      v6 = v8;
      v4 = v8;
      v5 = v8;
      atomic_compare_exchange_strong_explicit(v9, &v5, v7, memory_order_release, memory_order_relaxed);
      if (v5 != v4)
      {
        v6 = v5;
      }

      v8 = v6;
    }

    while (v5 != v4);
    if (malloc_tracing_enabled)
    {
      kdebug_trace();
    }

    if ((v6 & 0x10000000) == 0)
    {
      _xzm_chunk_list_push(a1, (a2 + 8), v9, 0, 0);
    }
  }
}

void _xzm_xzone_small_chunks_mark_empty(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 240))
  {
    v14 = *(a1 + 240);
  }

  else
  {
    v14 = a1;
  }

  v18 = *(v14 + 456) + 16 * *(a2 + 80);
  v17 = *(a2 + 87) & 1;
  if (v17)
  {
    v4 = 0;
    atomic_compare_exchange_strong_explicit((v18 + 8), &v4, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      os_unfair_lock_lock_with_options();
    }
  }

  for (i = 0; i < a4; ++i)
  {
    v15 = *(a3 + 8 * i);
    *(v15 + 34) = 0;
    if (v17)
    {
      v13 = *(v15 + 32) & 0xF;
      switch(v13)
      {
        case 2:
          goto LABEL_13;
        case 5:
          *(v15 + 4) = 0;
          *(v15 + 12) = 0;
          if (a2)
          {
            *(a2 + 68);
            *(a2 + 68);
          }

          *v15 |= (1 << *(a2 + 68)) - 1;
          break;
        case 6:
LABEL_13:
          if ((*v15 & 0x7FF) != 0x7FE)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_atomic_meta.xca_alloc_head == XZM_FREE_MADVISED failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:851)";
            __break(1u);
            JUMPOUT(0x71B80);
          }

          if (((*v15 >> 11) & 0x7FF) != 0)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_atomic_meta.xca_free_count == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:852)";
            __break(1u);
            JUMPOUT(0x71BB8);
          }

          break;
        default:
          v5 = *(v15 + 32) & 0xF;
          qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
          qword_D8158 = v5;
          __break(1u);
          JUMPOUT(0x71CF8);
      }

      *(v15 + 32) &= ~0x10u;
      v6 = *v18;
      *(v15 + 16) = *v18;
      if (v6)
      {
        *(*v18 + 24) = v15 + 16;
      }

      *v18 = v15;
      *(v15 + 24) = v18;
      continue;
    }

    *(v15 + 33) = 0;
    v12 = *(v15 + 32) & 0xF;
    if (v12 == 2)
    {
      goto LABEL_28;
    }

    if (v12 != 5)
    {
      if (v12 != 6)
      {
        v7 = *(v15 + 32) & 0xF;
        qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
        qword_D8158 = v7;
        __break(1u);
        JUMPOUT(0x71F84);
      }

LABEL_28:
      if ((*v15 & 0x7FF) != 0x7FE)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_atomic_meta.xca_alloc_head == XZM_FREE_MADVISED failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:851)";
        __break(1u);
        JUMPOUT(0x71E0CLL);
      }

      if (((*v15 >> 11) & 0x7FF) != 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_atomic_meta.xca_free_count == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:852)";
        __break(1u);
        JUMPOUT(0x71E44);
      }

      *v15 = 0;
      *(v15 + 8) = 0;
      *(v15 + 10) = 0;
      *(v15 + 12) = 0;
      goto LABEL_35;
    }

    *(v15 + 4) = 0;
    *(v15 + 12) = 0;
    *v15 = 0;
LABEL_35:
    v22 = (v15 & 0xFFFFFFFFFFFFC000);
    v11 = 1;
    if ((v15 & 0xFFFFFFFFFFFFC000) != 0)
    {
      v10 = 0;
      if (v15 >= (v22 + 267))
      {
        v10 = v15 < (v15 & 0xFFFFFFFFFFFFC000) + 48 * *(dword_10 + (v15 & 0xFFFFFFFFFFFFC000)) + 2136;
      }

      v11 = v10;
    }

    if ((v11 & 1) == 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
      __break(1u);
      JUMPOUT(0x72058);
    }

    xzm_segment_group_free_chunk(*v22, v15, 0, 0);
  }

  if (v17)
  {
    v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v9 = v8;
    atomic_compare_exchange_strong_explicit((v18 + 8), &v9, 0, memory_order_release, memory_order_relaxed);
    if (v9 != v8)
    {
      os_unfair_lock_unlock((v18 + 8));
    }
  }
}

uint64_t _xzm_xzone_fresh_chunk_init(uint64_t result, uint64_t a2, char a3)
{
  if (*(a2 + 33) != *(result + 80))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_xzone_idx == xz->xz_idx failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1208)";
    __break(1u);
    JUMPOUT(0x721C8);
  }

  *(a2 + 32) &= ~0x40u;
  if (a3 == 2)
  {
    goto LABEL_19;
  }

  if (a3 != 5)
  {
    if (a3 != 6)
    {
      qword_D8128 = "BUG IN LIBMALLOC: Unexpected chunk kind";
      __break(1u);
      JUMPOUT(0x72508);
    }

LABEL_19:
    if (*(result + 48) >= 0x10000uLL)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion xz->xz_block_size <= UINT16_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1218)";
      __break(1u);
      JUMPOUT(0x72474);
    }

    *(a2 + 8) = *(result + 48);
    if (*(result + 68) >= 0x10000u)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion xz->xz_chunk_capacity <= UINT16_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1221)";
      __break(1u);
      JUMPOUT(0x724BCLL);
    }

    *(a2 + 10) = *(result + 68);
    *(a2 + 12) = (*(result + 87) & 2) != 0;
    return result;
  }

  v4 = *(a2 + 32) & 0xF;
  if (v4 == 2)
  {
    goto LABEL_10;
  }

  if (v4 != 5)
  {
    if (v4 != 6)
    {
      v3 = *(a2 + 32) & 0xF;
      qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
      qword_D8158 = v3;
      __break(1u);
      JUMPOUT(0x72438);
    }

LABEL_10:
    if ((*a2 & 0x7FF) != 0x7FE)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_atomic_meta.xca_alloc_head == XZM_FREE_MADVISED failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:851)";
      __break(1u);
      JUMPOUT(0x722C0);
    }

    if (((*a2 >> 11) & 0x7FF) != 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_atomic_meta.xca_free_count == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:852)";
      __break(1u);
      JUMPOUT(0x722F8);
    }

    return result;
  }

  *(a2 + 4) = 0;
  *(a2 + 12) = 0;
  if (result)
  {
    *(result + 68);
    *(result + 68);
  }

  *a2 |= (1 << *(result + 68)) - 1;
  return result;
}

unint64_t _xzm_xzone_block_memtag_retag(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v12 = memtag_assign_tag(a2, a3);
  if ((a3 & 0x1FF) != 0)
  {
    if (a3 % 0x10)
    {
      __break(1u);
      JUMPOUT(0x725A0);
    }

    if (v12 % 0x10)
    {
      __break(1u);
      JUMPOUT(0x725C4);
    }

    _X8 = v12;
    __asm { STG             X8, [X8] }

    _X8 = v12 + a3;
    __asm { STG             X8, [X8,#-0x10] }

    if (a3 > 0x20)
    {
      _X8 = (v12 + 31) & 0xFFFFFFFFFFFFFFE0;
      __asm { ST2G            X8, [X8] }

      _X8 = (v12 + a3) & 0xFFFFFFFFFFFFFFE0;
      __asm { ST2G            X8, [X8,#-0x20] }
    }

    for (i = (v12 + 63) & 0xFFFFFFFFFFFFFFC0; i < ((v12 + a3) & 0xFFFFFFFFFFFFFFC0); i += 64)
    {
      __asm { DC              GVA, X8 }
    }
  }

  else
  {
    v15 = v12;
    if (v12 % 0x200)
    {
      __break(1u);
      JUMPOUT(0x726C0);
    }

    if (a3 % 0x200)
    {
      __break(1u);
      JUMPOUT(0x726E4);
    }

    while (v15 < v12 + a3)
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

      v15 += 512;
    }
  }

  return v12;
}

_OWORD *_xzm_xzone_thread_cache_record_and_malloc_outlined(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (*(a4 + 16) != -1)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion cache->xztc_head == XZM_XZONE_NOT_CACHED failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3371)";
    __break(1u);
    JUMPOUT(0x727E4);
  }

  v5 = mach_absolute_time();
  if (v5 - *(a4 + 8) >= *(a1 + 264))
  {
    *(a4 + 8) = v5;
    *(a4 + 20) = 0;
    *(a4 + 18) = 0;
    return _xzm_xzone_malloc_tiny_or_early(a1, a2, a3);
  }

  else
  {
    *(a4 + 16) = -2;
    *(a4 + 22) = *(a4 + 8) & 0xFFF;
    return _xzm_xzone_thread_cache_fill_and_malloc(a1, a2, a4);
  }
}

void _xzm_xzone_upgrade_small_slot_config(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  *(a3 + 20) = 0;
  if (a4)
  {
    if (a4 == 1)
    {
      v20 = ncpuclusters;
      goto LABEL_7;
    }

    if (a4 == 2)
    {
      v20 = logical_ncpus;
      goto LABEL_7;
    }
  }

  v20 = 1;
LABEL_7:
  if (v20 >= 2u)
  {
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v5 = v4;
    atomic_compare_exchange_strong_explicit((a3 + 8), &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 != v4)
    {
      os_unfair_lock_unlock((a3 + 8));
    }

    for (i = 0; i < v20; ++i)
    {
      v22 = *(a2 + 80);
      v21 = i * *(a1 + 210);
      if (v21 + v22 >= *(a1 + 211) * *(a1 + 210))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion alloc_base_idx + xz_idx < zone->xzz_slot_count * zone->xzz_xzone_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:1246)";
        __break(1u);
        JUMPOUT(0x72AC4);
      }

      v14 = *(a1 + 224) + 32 * (v21 + v22);
      if (v14 != a3)
      {
        v6 = 0;
        atomic_compare_exchange_strong_explicit((v14 + 8), &v6, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
        if (v6)
        {
          os_unfair_lock_lock_with_options();
        }

        *(v14 + 20) = 0;
        v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
        v8 = v7;
        atomic_compare_exchange_strong_explicit((v14 + 8), &v8, 0, memory_order_release, memory_order_relaxed);
        if (v8 != v7)
        {
          os_unfair_lock_unlock((v14 + 8));
        }
      }
    }

    v9 = 0;
    atomic_compare_exchange_strong_explicit((a3 + 8), &v9, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
    if (v9)
    {
      os_unfair_lock_lock_with_options();
    }
  }

  v10 = 0;
  atomic_compare_exchange_strong_explicit((a2 + 36), &v10, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v10)
  {
    os_unfair_lock_lock_with_options();
  }

  if (*(a2 + 86) == a4)
  {
    v13 = *(a2 + 86);
    if (*(a2 + 86))
    {
      if (v13 != 1)
      {
        if (v13 != 2)
        {
          qword_D8128 = "BUG IN LIBMALLOC: Invalid xzone slot config";
          __break(1u);
          JUMPOUT(0x72F20);
        }

        qword_D8128 = "BUG IN LIBMALLOC: Can't upgrade from XZM_SLOT_CPU";
        __break(1u);
        JUMPOUT(0x72EFCLL);
      }

      *(a2 + 86) = 2;
    }

    else if (ncpuclusters < 2)
    {
      *(a2 + 86) = 2;
    }

    else
    {
      *(a2 + 86) = 1;
    }

    if (*(a2 + 86) > ((*(a1 + 248) >> 4) & 3))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion xz->xz_slot_config <= zone->xzz_max_slot_config failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3048)";
      __break(1u);
      JUMPOUT(0x72F64);
    }
  }

  v11 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v12 = v11;
  atomic_compare_exchange_strong_explicit((a2 + 36), &v12, 0, memory_order_release, memory_order_relaxed);
  if (v12 != v11)
  {
    os_unfair_lock_unlock((a2 + 36));
  }
}

unint64_t _xzm_xzone_small_chunk_alloc(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v24 = a2;
  v23 = 0;
  if (*(a2 + 16))
  {
    v28 = v24 + 36;
    v48 = v24 + 36;
    v47 = 327680;
    v49 = 3;
    v50 = 3;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v46 = *(StatusReg + 24);
    v45 = 0;
    v44 = v46;
    v43 = v46;
    v2 = 0;
    atomic_compare_exchange_strong_explicit((v24 + 36), &v2, v46, memory_order_acquire, memory_order_acquire);
    if (v2)
    {
      v45 = v2;
    }

    v42 = v2 == 0;
    if (v2)
    {
      os_unfair_lock_lock_with_options();
    }

    v23 = *(v24 + 16);
    if (v23)
    {
      if (*(v23 + 16))
      {
        *(*(v23 + 16) + 24) = *(v23 + 24);
      }

      **(v23 + 24) = *(v23 + 16);
      *(v23 + 16) = -1;
      *(v23 + 24) = -1;
    }

    v30 = v24 + 36;
    v67 = (v24 + 36);
    v68 = 3;
    v69 = 3;
    v70 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v66 = *(v70 + 24);
    v65 = 0;
    v64 = v66;
    v63 = 0;
    v3 = v66;
    v4 = v66;
    atomic_compare_exchange_strong_explicit((v24 + 36), &v4, 0, memory_order_release, memory_order_relaxed);
    if (v4 != v3)
    {
      v64 = v4;
    }

    v62 = v4 == v66;
    if (v4 != v66)
    {
      os_unfair_lock_unlock(v67);
    }
  }

  if (!v23)
  {
    v22 = 5;
    v21 = 0x10000;
    v20 = 4;
    v19 = 0;
    v18 = 0;
    v17 = 0;
    v5 = *(v24 + 42);
    v6 = *(v24 + 43);
    v39 = v25;
    v38 = v5;
    v37 = v6;
    v36 = 0;
    v41 = v25;
    if (*(v25 + 240))
    {
      v14 = *(v25 + 240);
    }

    else
    {
      v14 = v41;
    }

    v35 = v14;
    v34 = _malloc_cpu_cluster_number();
    if (v34 >= ncpuclusters)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion clusterid < ncpuclusters failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:245)";
      __break(1u);
      JUMPOUT(0x73378);
    }

    if (v38 >= *(v35 + 411))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion sgid < main->xzmz_segment_group_ids_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:251)";
      __break(1u);
      JUMPOUT(0x733B4);
    }

    if (v38 > 2u)
    {
      if (v37 >= *(v35 + 415))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion front < main->xzmz_allocation_front_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:255)";
        __break(1u);
        JUMPOUT(0x73434);
      }
    }

    else if (v37)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion front == XZM_FRONT_INDEX_DEFAULT failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:253)";
      __break(1u);
      JUMPOUT(0x733F4);
    }

    v33 = v38 + v37;
    if (*(v35 + 412) < *(v35 + 413))
    {
      v32 = 0;
      v31 = 0;
      if ((*(v35 + 409) & 0x10) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion main->xzmz_defer_large failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:266)";
        __break(1u);
        JUMPOUT(0x734A0);
      }

      v31 = v36;
      v32 = *(v35 + 412) * v34 + v33;
      if (v32 >= *(v35 + 413))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion sg_index < main->xzmz_segment_group_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:275)";
        __break(1u);
        JUMPOUT(0x73520);
      }

      v40 = (*(v35 + 472) + 528 * v32);
    }

    else
    {
      v40 = (*(v35 + 472) + 528 * v33);
    }

    v23 = xzm_segment_group_alloc_chunk(v40, v22, (v24 + 88), v20, &v17, 0, v19 & 1, v18 & 1);
    if (!v23)
    {
      v13 = 1;
      if (&v17)
      {
        v13 = v17 == 0;
      }

      if (!v13)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !list || !SLIST_FIRST(list) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2854)";
        __break(1u);
        JUMPOUT(0x7361CLL);
      }

      return 0;
    }

    *(v23 + 33) = *(v24 + 80);
    if (v17)
    {
      v15 = 0;
      v27 = v24 + 36;
      v58 = v24 + 36;
      v57 = 327680;
      v59 = 3;
      v60 = 3;
      v61 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v56 = *(v61 + 24);
      v55 = 0;
      v54 = v56;
      v53 = v56;
      v7 = 0;
      atomic_compare_exchange_strong_explicit((v24 + 36), &v7, v56, memory_order_acquire, memory_order_acquire);
      if (v7)
      {
        v55 = v7;
      }

      v52 = v7 == 0;
      if (v7)
      {
        os_unfair_lock_lock_with_options();
      }

      for (i = v17; ; i = v15)
      {
        v12 = 0;
        if (i)
        {
          v15 = *(i + 16);
          v12 = 1;
        }

        if ((v12 & 1) == 0)
        {
          break;
        }

        v17 = *(v17 + 16);
        *(i + 33) = *(v24 + 80);
        *(i + 32) |= 0x40u;
        v8 = *(v24 + 16);
        *(i + 16) = v8;
        if (v8)
        {
          *(*(v24 + 16) + 24) = i + 16;
        }

        *(v24 + 16) = i;
        *(i + 24) = v24 + 16;
      }

      v29 = v24 + 36;
      v76 = (v24 + 36);
      v77 = 3;
      v78 = 3;
      v79 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v75 = *(v79 + 24);
      v74 = 0;
      v73 = v75;
      v72 = 0;
      v9 = v75;
      v10 = v75;
      atomic_compare_exchange_strong_explicit((v24 + 36), &v10, 0, memory_order_release, memory_order_relaxed);
      if (v10 != v9)
      {
        v73 = v10;
      }

      v71 = v10 == v9;
      if (v10 != v9)
      {
        os_unfair_lock_unlock(v76);
      }
    }
  }

  if (!v23)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2875)";
    __break(1u);
    JUMPOUT(0x738F8);
  }

  _xzm_xzone_small_chunk_init(v24, v23);
  return v23;
}

unint64_t _xzm_xzone_alloc_from_chunk(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v39 = a1;
  v38 = a2;
  v37 = a3;
  v36 = a4;
  v64 = a1;
  v63 = a2;
  v62 = a3;
  v28 = *(a3 + 32) & 0xF;
  if (v28 != 2)
  {
    if (v28 == 5)
    {
      v65 = *(v62 + 4) == *(v63 + 68);
      goto LABEL_10;
    }

    if (v28 != 6)
    {
      v4 = *(v62 + 32) & 0xF;
      qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
      qword_D8158 = v4;
      __break(1u);
      JUMPOUT(0x73A64);
    }
  }

  v27 = 0;
  if (((*v62 >> 11) & 0x7FF) == 0)
  {
    v27 = 0;
    if ((~*v62 & 0x7FF) != 0)
    {
      v27 = (*v62 & 0x7FF) != 2046;
    }
  }

  v65 = v27;
LABEL_10:
  if (v65)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !_xzm_chunk_is_full(zone, xz, chunk) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2914)";
    __break(1u);
    JUMPOUT(0x73A94);
  }

  *v36 = 0;
  v35 = 0;
  v34 = -1;
  v45 = v39;
  v44 = v37;
  v43 = 0;
  v47 = v39;
  v46 = v37;
  v50 = v39;
  v49 = v37;
  v48 = v37 & 0xFFFFFFFFFFFFC000;
  v26 = 1;
  if ((v37 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v25 = 0;
    if (v49 >= v48 + 2136)
    {
      v25 = v49 < v48 + 48 * *(v48 + 16) + 2136;
    }

    v26 = v25;
  }

  if ((v26 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0x73C80);
  }

  v52 = v48;
  v51 = v46;
  v57 = v48;
  v56 = v46;
  if (v46 < v48 + 2136)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
    __break(1u);
    JUMPOUT(0x73CE4);
  }

  v55 = 0xAAAAAAAAAAAAAAABLL * ((v56 - v57 - 2136) >> 4);
  if (v55 >= *(v57 + 16))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
    __break(1u);
    JUMPOUT(0x73D44);
  }

  v54 = v48;
  v53 = v55;
  v33 = *(v48 + 72) + (v55 << 14);
  v42 = v39;
  v41 = v37;
  v40 = v37 & 0xFFFFFFFFFFFFC000;
  v24 = 1;
  if ((v37 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v23 = 0;
    if (v41 >= v40 + 2136)
    {
      v23 = v41 < v40 + 48 * *(v40 + 16) + 2136;
    }

    v24 = v23;
  }

  if ((v24 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0x73E2CLL);
  }

  v32 = v40;
  v67 = v39;
  v66 = v37;
  v22 = *(v37 + 32) & 0xF;
  if (v22 == 2 || (v22 - 5) < 2)
  {
    v68 = *(*(v67 + 216) + 96 * *(v66 + 33) + 48);
  }

  else
  {
    if ((v22 - 7) >= 2)
    {
      v5 = *(v66 + 32) & 0xF;
      qword_D8128 = "BUG IN LIBMALLOC: asking for size of chunk with invalid kind";
      qword_D8158 = v5;
      __break(1u);
      JUMPOUT(0x73F10);
    }

    v68 = *(v66 + 40) << 14;
  }

  v31 = v68;
  if ((*(v37 + 32) & 0xF) != 5)
  {
    v16 = *(v37 + 32) & 0xF;
    qword_D8128 = "BUG IN LIBMALLOC: attempting to allocate from chunk of bad kind";
    qword_D8158 = v16;
    __break(1u);
    JUMPOUT(0x74448);
  }

  v60 = v39;
  v59 = v38;
  v58 = v37;
  v21 = *(v37 + 32) & 0xF;
  if (v21 != 2)
  {
    if (v21 == 5)
    {
      v61 = *(v58 + 4) == 0;
      goto LABEL_44;
    }

    if (v21 != 6)
    {
      v6 = *(v58 + 32) & 0xF;
      qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
      qword_D8158 = v6;
      __break(1u);
      JUMPOUT(0x74050);
    }
  }

  v20 = 1;
  if (((*v58 >> 11) & 0x7FF) != *(v59 + 68))
  {
    v20 = 1;
    if ((~*v58 & 0x7FF) != 0)
    {
      v20 = (*v58 & 0x7FF) == 2046;
    }
  }

  v61 = v20;
LABEL_44:
  if (!v61 && (v31 & 0x3FFF) != 0)
  {
    v30 = 0;
    dirtiest_slice = _xzm_chunk_find_dirtiest_slice(v39, v37, &v30);
    if (dirtiest_slice)
    {
      v9 = __clz(__rbit32(v30));
      if (v30)
      {
        v10 = v9 + 1;
      }

      else
      {
        v10 = 0;
      }

      v34 = v10 - 1;
      if (v30 && ((v30 - 1) & v30) != 0)
      {
        v11 = v33 + v34 + *(v38 + 48);
        v71 = v32;
        v70 = v11;
        v75 = v32;
        v74 = v11;
        v79 = v32;
        v78 = v11;
        v82 = v32;
        v84 = v32;
        v83 = 0;
        v77 = v11 - *(v32 + 72);
        v92 = v32;
        v93 = v32;
        v91 = *(v32 + 12);
        if (v91 << 14)
        {
          v90 = v79;
          v94 = v79;
          v89 = *(v79 + 12);
          v88 = v79;
          v95 = v79;
          v87 = *(v79 + 12);
          v19 = (v89 << 14) - (v87 << 14) + 0x400000;
        }

        else
        {
          v86 = v79;
          v96 = v79;
          v85 = *(v79 + 12);
          v19 = v85 << 14;
        }

        v76 = v19;
        v18 = 0;
        if ((v77 & 0x8000000000000000) == 0)
        {
          v18 = v77 < v76;
        }

        if (!v18)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion diff >= 0 && diff < (ptrdiff_t)rounded_size failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:460)";
          __break(1u);
          JUMPOUT(0x74290);
        }

        v73 = v77;
        v81 = v75;
        v80 = v77;
        v69 = v77 >> 14;
        if (v69 >= *(v71 + 16))
        {
          v72 = 0;
        }

        else
        {
          v72 = v71 + 48 * v69 + 2136;
        }

        if (v72 < dirtiest_slice)
        {
          v12 = __clz(__rbit32(v30 & ~(1 << v34)));
          if ((v30 & ~(1 << v34)) != 0)
          {
            v13 = v12 + 1;
          }

          else
          {
            v13 = 0;
          }

          v34 = v13 - 1;
        }
      }
    }

    else
    {
      v14 = __clz(__rbit32(*v37));
      if (*v37)
      {
        v15 = v14 + 1;
      }

      else
      {
        v15 = 0;
      }

      v34 = v15 - 1;
    }
  }

  else
  {
    v7 = __clz(__rbit32(*v37));
    if (*v37)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = 0;
    }

    v34 = v8 - 1;
  }

  if (v34 > *(v38 + 68))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion block_index <= xz->xz_chunk_capacity failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2965)";
    __break(1u);
    JUMPOUT(0x743C8);
  }

  v35 = v33 + v34 * *(v38 + 48);
  *v37 &= ~(1 << v34);
  ++*(v37 + 4);
  return v35;
}

uint64_t _xzm_xzone_small_chunk_init(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_free == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2809)";
    __break(1u);
    JUMPOUT(0x744B8);
  }

  if (*(a2 + 4))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_used == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2810)";
    __break(1u);
    JUMPOUT(0x744ECLL);
  }

  if (*(a2 + 34))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_mzone_idx == XZM_MZONE_INDEX_INVALID failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2811)";
    __break(1u);
    JUMPOUT(0x74520);
  }

  result = _xzm_xzone_fresh_chunk_init(a1, a2, 5);
  *(a2 + 34) = *(a1 + 82);
  return result;
}

uint64_t _xzm_chunk_find_dirtiest_slice(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if ((*(a2 + 32) & 0xF) == 2)
  {
    v14 = 1;
  }

  else
  {
    v14 = *(a2 + 40);
  }

  v18 = -1;
  v17 = 0;
  for (i = 0; i < v14; ++i)
  {
    v22 = a2 + 48 * i;
    if ((*(v22 + 32) & 0xF) == 4)
    {
      v25 = v22 - *(v22 + 36);
      if (v25 < (v22 & 0xFFFFFFFFFFFFC000 | 0x858))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion out_slice >= ((xzm_segment_t)((uintptr_t)slice & ~(XZM_METAPOOL_SEGMENT_BLOCK_SIZE - 1)))->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:609)";
        __break(1u);
        JUMPOUT(0x746B0);
      }

      v31 = v22 - *(v22 + 36);
      v13 = *(v25 + 32) & 0xF;
      if ((v13 - 1) < 2)
      {
        v32 = v25 == v22;
      }

      else if (v13 == 3 || (v13 - 5) < 5)
      {
        if (v22 < v25)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice >= span failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:587)";
          __break(1u);
          JUMPOUT(0x74760);
        }

        v32 = v22 < v25 + 48 * *(v25 + 40);
      }

      else
      {
        v32 = 0;
      }

      if (v32)
      {
        v26 = v22 - *(v22 + 36);
      }

      else
      {
        v26 = a2 + 48 * i;
      }
    }

    else
    {
      v26 = a2 + 48 * i;
    }

    if ((*(v26 + 32) & 0xF) != 5)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_SMALL_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:1188)";
      __break(1u);
      JUMPOUT(0x7481CLL);
    }

    v21 = *(a1 + 216) + 96 * *(v26 + 33);
    v24 = v22 & 0xFFFFFFFFFFFFC000;
    v12 = 1;
    if ((v22 & 0xFFFFFFFFFFFFC000) != 0)
    {
      v11 = 0;
      if (v22 >= v24 + 2136)
      {
        v11 = v22 < (v22 & 0xFFFFFFFFFFFFC000) + 48 * *(&dword_10 + (v22 & 0xFFFFFFFFFFFFC000)) + 2136;
      }

      v12 = v11;
    }

    if ((v12 & 1) == 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
      __break(1u);
      JUMPOUT(0x74928);
    }

    if (v22 < v24 + 2136)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
      __break(1u);
      JUMPOUT(0x74990);
    }

    if ((0xAAAAAAAAAAAAAAABLL * ((v22 - v24 - 2136) >> 4)) >= *(&dword_10 + (v22 & 0xFFFFFFFFFFFFC000)))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
      __break(1u);
      JUMPOUT(0x749F4);
    }

    v33 = v26 & 0xFFFFFFFFFFFFC000;
    v10 = 1;
    if ((v26 & 0xFFFFFFFFFFFFC000) != 0)
    {
      v9 = 0;
      if (v26 >= v33 + 2136)
      {
        v9 = v26 < (v26 & 0xFFFFFFFFFFFFC000) + 48 * *(&dword_10 + (v26 & 0xFFFFFFFFFFFFC000)) + 2136;
      }

      v10 = v9;
    }

    if ((v10 & 1) == 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
      __break(1u);
      JUMPOUT(0x74C54);
    }

    if (v26 < v33 + 2136)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
      __break(1u);
      JUMPOUT(0x74CBCLL);
    }

    if ((0xAAAAAAAAAAAAAAABLL * ((v26 - v33 - 2136) >> 4)) >= *(&dword_10 + (v26 & 0xFFFFFFFFFFFFC000)))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
      __break(1u);
      JUMPOUT(0x74D20);
    }

    v8 = *(v26 + 32) & 0xF;
    if (v8 == 2 || (v8 - 5) < 2)
    {
      v30 = *(*(a1 + 216) + 96 * *(v26 + 33) + 48);
    }

    else
    {
      if ((v8 - 7) >= 2)
      {
        v29 = *(v26 + 32) & 0xF;
        qword_D8128 = "BUG IN LIBMALLOC: asking for size of chunk with invalid kind";
        qword_D8158 = v29;
        __break(1u);
        JUMPOUT(0x74E74);
      }

      v30 = *(v26 + 40) << 14;
    }

    v20 = (*(&stru_20.fileoff + (v22 & 0xFFFFFFFFFFFFC000)) - 1431650304 * ((v22 - v24 - 2136) >> 4) - (*(&stru_20.fileoff + (v26 & 0xFFFFFFFFFFFFC000)) - 1431650304 * ((v26 - v33 - 2136) >> 4))) / v30;
    if (v20 == *(v21 + 68))
    {
      v23 = 0;
    }

    else
    {
      v34 = v26 & 0xFFFFFFFFFFFFC000;
      v7 = 1;
      if ((v26 & 0xFFFFFFFFFFFFC000) != 0)
      {
        v6 = 0;
        if (v26 >= v34 + 2136)
        {
          v6 = v26 < (v26 & 0xFFFFFFFFFFFFC000) + 48 * *(&dword_10 + (v26 & 0xFFFFFFFFFFFFC000)) + 2136;
        }

        v7 = v6;
      }

      if ((v7 & 1) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
        __break(1u);
        JUMPOUT(0x750D8);
      }

      if (v26 < v34 + 2136)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
        __break(1u);
        JUMPOUT(0x75140);
      }

      if ((0xAAAAAAAAAAAAAAABLL * ((v26 - v34 - 2136) >> 4)) >= *(&dword_10 + (v26 & 0xFFFFFFFFFFFFC000)))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
        __break(1u);
        JUMPOUT(0x751A4);
      }

      v5 = *(v26 + 32) & 0xF;
      if (v5 == 2 || (v5 - 5) < 2)
      {
        v28 = *(*(a1 + 216) + 96 * *(v26 + 33) + 48);
      }

      else
      {
        if ((v5 - 7) >= 2)
        {
          v27 = *(v26 + 32) & 0xF;
          qword_D8128 = "BUG IN LIBMALLOC: asking for size of chunk with invalid kind";
          qword_D8158 = v27;
          __break(1u);
          JUMPOUT(0x752F8);
        }

        v28 = *(v26 + 40) << 14;
      }

      v19 = (*(&stru_20.fileoff + (v22 & 0xFFFFFFFFFFFFC000)) - 1431650304 * ((v22 - v24 - 2136) >> 4) + 0x3FFF - (*(&stru_20.fileoff + (v26 & 0xFFFFFFFFFFFFC000)) - 1431650304 * ((v26 - v34 - 2136) >> 4))) / v28;
      if (v19 == *(v21 + 68))
      {
        --v19;
      }

      if (v20 > v19)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion first <= last failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:1212)";
        __break(1u);
        JUMPOUT(0x75380);
      }

      v23 = ((1 << (v19 - v20 + 1)) - 1) << v20;
    }

    v15 = *a2 & v23;
    if (v15)
    {
      if (v15 != v23)
      {
        v3 = vcnt_s8(v15);
        v3.i16[0] = vaddlv_u8(v3);
        if (v3.i32[0] < v18)
        {
          v18 = v3.i32[0];
          v17 = a2 + 48 * i;
          *a3 = v15;
        }
      }
    }
  }

  return v17;
}

uint64_t _xzm_debug_validate_chunk_metadata(uint64_t result, uint64_t a2)
{
  if (*(result + 48) != *(a2 + 8))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion xz->xz_block_size == chunk->xzc_freelist_block_size failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4620)";
    __break(1u);
    JUMPOUT(0x754ACLL);
  }

  if (*(result + 68) != *(a2 + 10))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion xz->xz_chunk_capacity == chunk->xzc_freelist_chunk_capacity failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4621)";
    __break(1u);
    JUMPOUT(0x754ECLL);
  }

  if (((*(result + 87) >> 1) & 1) != (*(a2 + 12) & 1))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion xz->xz_tagged == chunk->xzc_tagged failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4623)";
    __break(1u);
    JUMPOUT(0x75534);
  }

  return result;
}

void _xzm_free_outlined(uint64_t a1, unint64_t a2, char a3, int a4)
{
  v25 = a4;
  v24 = a1;
  v22 = a3;
  v21 = a2;
  v27 = a2;
  v26 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v23 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v20 = 0;
  v19 = 0;
  v45 = a4;
  v44 = a1;
  v43 = a2;
  v42 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v41 = &v20;
  v40 = &v19;
  v39 = 0;
  v69 = a4;
  v38 = (a4 & 0x7FFFFFFF) << 14;
  if (!v38)
  {
    v46 = 0;
    goto LABEL_102;
  }

  v77 = v38;
  v76 = v42;
  v81 = v38;
  v80 = v42;
  v91 = v38;
  v90 = v42;
  v95 = v38;
  v94 = v42;
  v98 = v38;
  v100 = v38;
  v99 = 0;
  v93 = v42 - *(v38 + 72);
  v108 = v38;
  v109 = v38;
  v107 = *(v38 + 12);
  if (v107 << 14)
  {
    v106 = v95;
    v110 = v95;
    v105 = *(v95 + 12);
    v104 = v95;
    v111 = v95;
    v103 = *(v95 + 12);
    v18 = (v105 << 14) - (v103 << 14) + 0x400000;
  }

  else
  {
    v102 = v95;
    v112 = v95;
    v101 = *(v95 + 12);
    v18 = v101 << 14;
  }

  v92 = v18;
  v17 = 0;
  if ((v93 & 0x8000000000000000) == 0)
  {
    v17 = v93 < v92;
  }

  if (!v17)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion diff >= 0 && diff < (ptrdiff_t)rounded_size failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:460)";
    __break(1u);
    JUMPOUT(0x75790);
  }

  v89 = v93;
  v97 = v91;
  v96 = v93;
  v79 = v93 >> 14;
  if (v79 >= *(v81 + 16))
  {
    v82 = 0;
  }

  else
  {
    v82 = v81 + 48 * v79 + 2136;
  }

  v75 = v82;
  if (v82)
  {
    v84 = v75;
    if ((*(v75 + 32) & 0xF) == 4)
    {
      v83 = v84 - *(v84 + 36);
      if (v83 < (v84 & 0xFFFFFFFFFFFFC000 | 0x858))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion out_slice >= ((xzm_segment_t)((uintptr_t)slice & ~(XZM_METAPOOL_SEGMENT_BLOCK_SIZE - 1)))->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:609)";
        __break(1u);
        JUMPOUT(0x758A0);
      }

      v87 = v83;
      v86 = v84;
      v16 = *(v83 + 32) & 0xF;
      if ((v16 - 1) < 2)
      {
        v88 = v87 == v86;
      }

      else if (v16 == 3 || (v16 - 5) < 5)
      {
        if (v86 < v87)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice >= span failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:587)";
          __break(1u);
          JUMPOUT(0x75944);
        }

        v88 = v86 < v87 + 48 * *(v87 + 40);
      }

      else
      {
        v88 = 0;
      }

      if (v88)
      {
        v85 = v83;
      }

      else
      {
        v85 = v84;
      }
    }

    else
    {
      v85 = v84;
    }

    v74 = v85;
    v133 = *(v85 + 32) & 0xF;
    if (v133 >= 2u)
    {
      if (v133 == 2)
      {
LABEL_36:
        v134 = 1;
        goto LABEL_37;
      }

      if (v133 - 3 >= 2)
      {
        if (v133 - 5 >= 4)
        {
          v132 = v133;
          qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
          qword_D8158 = v133;
          __break(1u);
          JUMPOUT(0x75A60);
        }

        goto LABEL_36;
      }
    }

    v134 = 0;
LABEL_37:
    if (v134 == 1)
    {
      v15 = v74;
    }

    else
    {
      v15 = 0;
    }

    v78 = v15;
    goto LABEL_41;
  }

  v78 = 0;
LABEL_41:
  v37 = v78;
  if (!v78)
  {
    v46 = 0;
    goto LABEL_102;
  }

  if (*(v37 + 34) != *(v44 + 208))
  {
    v46 = 0;
    goto LABEL_102;
  }

  v36 = v42;
  v53 = v44;
  v52 = v37;
  v51 = 0;
  v55 = v44;
  v54 = v37;
  v58 = v44;
  v57 = v37;
  v56 = v37 & 0xFFFFFFFFFFFFC000;
  v14 = 1;
  if ((v37 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v13 = 0;
    if (v57 >= v56 + 2136)
    {
      v13 = v57 < v56 + 48 * *(v56 + 16) + 2136;
    }

    v14 = v13;
  }

  if ((v14 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0x75CB8);
  }

  v60 = v56;
  v59 = v54;
  v65 = v56;
  v64 = v54;
  if (v54 < v56 + 2136)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
    __break(1u);
    JUMPOUT(0x75D1CLL);
  }

  v63 = 0xAAAAAAAAAAAAAAABLL * ((v64 - v65 - 2136) >> 4);
  if (v63 >= *(v65 + 16))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
    __break(1u);
    JUMPOUT(0x75D7CLL);
  }

  v62 = v56;
  v61 = v63;
  v35 = *(v56 + 72) + (v63 << 14);
  v34 = v36 - v35;
  v33 = *(v37 + 32) & 0xF;
  v32 = 0;
  v31 = 0;
  v49 = v33;
  if (v33 == 2 || v33 == 6 || v33 == 5)
  {
    v32 = *(v44 + 216) + 96 * *(v37 + 33);
    v31 = *(v32 + 48);
    if (!XZM_FAST_ALIGNED(v34, v31, *(v32 + 64)))
    {
      v46 = 0;
      goto LABEL_102;
    }
  }

  else
  {
    v31 = *(v37 + 40) << 14;
    v30 = v34 % v31;
    if (v34 % v31)
    {
      v46 = 0;
      goto LABEL_102;
    }
  }

  v29 = v34 / v31;
  v47 = *(v37 + 32) & 0xF;
  v48 = v47 == 2 || v47 == 6 || v47 == 5;
  v12 = 1;
  if (v48)
  {
    v12 = v29 < *(v32 + 68);
  }

  if (!v12)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !_xzm_slice_kind_uses_xzones(chunk->xzc_bits.xzcb_kind) || block_index < xz->xz_chunk_capacity failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4502)";
    __break(1u);
    JUMPOUT(0x75F98);
  }

  v66 = v44;
  v28 = *(v44 + 368) & 1;
  if (v28)
  {
    v67 = v36;
    v68 = v36;
    _X8 = v36;
    __asm { LDG             X8, [X8] }

    v36 = _X8;
    v73 = v43;
    v72 = _X8;
    v71 = v43;
    v70 = _X8;
    if ((HIBYTE(v43) & 0xF) != (HIBYTE(_X8) & 0xF))
    {
      v46 = 0;
      goto LABEL_102;
    }
  }

  v128 = v44;
  v127 = v37;
  v126 = v33;
  v125 = v34;
  v124 = v31;
  v123 = v36;
  if ((*(v37 + 32) & 0xF) != v33)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == kind failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4379)";
    __break(1u);
    JUMPOUT(0x760A0);
  }

  switch(v126)
  {
    case 2:
      goto LABEL_81;
    case 5:
      v113 = v125 / v124;
      v136 = v127;
      v135 = v125 / v124;
      if ((*(v127 + 32) & 0xF) != 5)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_SMALL_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:973)";
        __break(1u);
        JUMPOUT(0x7623CLL);
      }

      v129 = (*v136 >> v135) & 1;
      break;
    case 6:
LABEL_81:
      v122 = 0;
      if (*(v127 + 12))
      {
        __asm { MSR             TCO, #1 }

        v120 = *v123;
        v121 = v120;
        v119 = v120;
        v122 = v120;
        __asm { MSR             TCO, #0 }
      }

      else
      {
        v117 = *v123;
        v118 = v117;
        v116 = v117;
        v122 = v117;
      }

      v115 = *(v128 + 320) ^ v123;
      if (v126 == 6)
      {
        v131 = v115;
        v130 = v115 & 0xF0FFFFFFFFFFFFFFLL;
        v115 &= 0xF0FFFFFFFFFFFFFFLL;
      }

      if (v122 == v115)
      {
        is_free_slow = _xzm_xzone_freelist_chunk_block_is_free_slow(v128, v127, v123);
        v129 = is_free_slow & 1;
      }

      else
      {
        v129 = 0;
      }

      break;
    default:
      v129 = 0;
      break;
  }

  if (v129 == 1)
  {
    v46 = 0;
  }

  else
  {
    if (v41)
    {
      *v41 = v32;
    }

    if (v40)
    {
      *v40 = v36;
    }

    if (v39)
    {
      *v39 = v31;
    }

    v46 = v37;
  }

LABEL_102:
  if (v46)
  {
    if ((*(v46 + 32) & 0xF) == 2 || (*(v46 + 32) & 0xF) == 6)
    {
      _xzm_xzone_free_freelist(v24, v20, v46, v19);
    }

    else if ((*(v46 + 32) & 0xF) == 5)
    {
      _xzm_xzone_free_block_to_small_chunk(v24, v20, v46, v19);
    }

    else
    {
      if (v20)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !xz failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4610)";
        __break(1u);
        JUMPOUT(0x763BCLL);
      }

      _xzm_free_large_huge(v24, v46);
    }
  }

  else
  {
    _xzm_free_not_found(v24, v21, v22 & 1);
  }
}

void _xzm_free_not_found(uint64_t a1, _BYTE *a2, char a3)
{
  if (*(a1 + 240) || !mfm_claimed_address(a2))
  {
    if ((a3 & 1) == 0)
    {
      malloc_report_pointer_was_not_allocated(80, a2);
    }

    find_zone_and_free(a2, 1);
  }

  else
  {
    mfm_free(a2);
  }
}

void _xzm_free_abort(uint64_t a1)
{
  qword_D8128 = "BUG IN CLIENT OF LIBMALLOC: free to empty or invalid chunk detected (likely double-free)";
  qword_D8158 = a1;
  __break(1u);
}

void _xzm_xzone_madvise_freelist_chunk(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  v9 = a1;
  if (*(a1 + 240))
  {
    v5 = *(a1 + 240);
  }

  else
  {
    v5 = v9;
  }

  if ((*(v6 + 32) & 0xF) == 2 && (*(v5 + 409) & 8) != 0 || (*(v6 + 32) & 0xF) == 6 && (*(v5 + 409) & 4) != 0)
  {
    xzm_chunk_mark_free(v8, v6);
  }

  else
  {
    v12 = v8;
    v11 = v6;
    v15 = v8;
    v14 = v6;
    v13 = v6 & 0xFFFFFFFFFFFFC000;
    v4 = 1;
    if ((v6 & 0xFFFFFFFFFFFFC000) != 0)
    {
      v3 = 0;
      if (v14 >= v13 + 2136)
      {
        v3 = v14 < v13 + 48 * *(v13 + 16) + 2136;
      }

      v4 = v3;
    }

    if ((v4 & 1) == 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
      __break(1u);
      JUMPOUT(0x76640);
    }

    v10 = v13;
    xzm_segment_group_segment_madvise_chunk(*v13, v6);
  }

  _xzm_xzone_freelist_chunks_mark_empty(v8, v7, &v6, 1uLL);
}

void _xzm_chunk_list_slot_push(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = 0;
  v9 = _xzm_chunk_list_get(a1, a2, &v10, a3);
  v8 = 0;
  _xzm_chunk_list_push(v14, v9, v11, 0, &v8);
  v48 = v14;
  v47 = v13;
  v46 = (v9 + 8);
  v45 = v10;
  v44 = 0;
  v43 = v8 & 1;
  v42 = 0;
  v40 = *(v9 + 1);
  v41 = v40;
  v39 = v40;
  v42 = v40;
  v38 = v14[248] & 3;
  if (HIBYTE(v40) != v38 && ((v43 & 1) != 0 || (v42 & 0xFFFFFF00000000) != 0))
  {
    v37 = 1;
    if (v43)
    {
      v37 |= 0x100000000uLL;
    }

    v36 = 0;
    v34 = v37;
    v33 = v37;
    v35 = v37;
    v29 = v37;
    v28 = v37;
    v30 = v37;
    add_explicit = atomic_fetch_add_explicit(v46, v37, memory_order_relaxed);
    v31 = add_explicit;
    v26 = add_explicit;
    v32 = add_explicit + v35;
    v36 = add_explicit + v35;
    v25 = (add_explicit + v35) >> 56;
    if (v25 != v38)
    {
      if (v44)
      {
        v7 = *(v48 + 76);
      }

      else
      {
        v7 = *(v48 + 71);
      }

      v24 = v7;
      if (v44)
      {
        v6 = v48 + 292;
      }

      else
      {
        v6 = v48 + 272;
      }

      v23 = v6;
      if ((HIDWORD(v36) & 0xFFFFFFu) < *&v6[4 * v25])
      {
        if (v36 >= v24 && v36 <= v24)
        {
          v21 = v36;
          LODWORD(v20) = 0;
          HIDWORD(v20) = HIBYTE(v20) << 24;
          HIBYTE(v20) = v25;
          v36 = v20;
          v19 = 0;
          v18 = v46;
          v42 = *v46;
          do
          {
            if (v42 < v21 || HIBYTE(v42) > HIBYTE(v21))
            {
              break;
            }

            v17 = v36;
            v4 = v42;
            v5 = v42;
            atomic_compare_exchange_strong_explicit(v18, &v5, v36, memory_order_relaxed, memory_order_relaxed);
            if (v5 != v4)
            {
              v42 = v5;
            }

            v16 = v5 == v4;
            v19 = v5 == v4;
          }

          while (v5 != v4);
          v15 = v19;
        }
      }

      else if ((HIDWORD(v36) & 0xFFFFFFu) <= *&v23[4 * v25])
      {
        v49 = HIBYTE(v36);
        if (HIBYTE(v36))
        {
          if (HIBYTE(v36) != 1)
          {
            if (HIBYTE(v36) != 2)
            {
              qword_D8128 = "BUG IN LIBMALLOC: Invalid xzone slot config";
              __break(1u);
              JUMPOUT(0x76B84);
            }

            qword_D8128 = "BUG IN LIBMALLOC: Can't upgrade from XZM_SLOT_CPU";
            __break(1u);
            JUMPOUT(0x76B58);
          }

          v50 = 2;
        }

        else if (ncpuclusters < 2)
        {
          v50 = 2;
        }

        else
        {
          v50 = 1;
        }

        v22 = v50;
        if (HIBYTE(v36) >= v50)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion new_counters.xsc_slot_config < next_slot_config failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1444)";
          __break(1u);
          JUMPOUT(0x76BCCLL);
        }

        _xzm_xzone_upgrade_freelist_slot_config(v48, v47, v46, v36, v22, v44 & 1);
      }
    }
  }
}

void _xzm_xzone_free_freelist(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v13 = *(a2 + 48);
  if (v13 <= 0x400)
  {
    _platform_bzero();
  }

  v12 = a4;
  if ((*(a2 + 87) & 2) != 0 && v13 <= 0x1000)
  {
    a4 = _xzm_xzone_block_memtag_retag(a1, a4, v13);
  }

  v11 = *(a1 + 320) ^ a4;
  if (v13 > 0x1000)
  {
    v11 &= 0xF0FFFFFFFFFFFFFFLL;
  }

  *a4 = v11;
  if (*(a2 + 48) > 0x1000uLL)
  {
    v33 = a3 & 0xFFFFFFFFFFFFC000;
    v9 = 1;
    if ((a3 & 0xFFFFFFFFFFFFC000) != 0)
    {
      v8 = 0;
      if (a3 >= v33 + 2136)
      {
        v8 = a3 < (a3 & 0xFFFFFFFFFFFFC000) + 48 * *(dword_10 + (a3 & 0xFFFFFFFFFFFFC000)) + 2136;
      }

      v9 = v8;
    }

    if ((v9 & 1) == 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
      __break(1u);
      JUMPOUT(0x77094);
    }

    if (a3 < v33 + 2136)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
      __break(1u);
      JUMPOUT(0x770F8);
    }

    if ((0xAAAAAAAAAAAAAAABLL * ((a3 - (a3 & 0xFFFFFFFFFFFFC000) - 2136) >> 4)) >= *(dword_10 + (a3 & 0xFFFFFFFFFFFFC000)))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
      __break(1u);
      JUMPOUT(0x77158);
    }

    v10 = (a4 - (*(&stru_20.fileoff + (a3 & 0xFFFFFFFFFFFFC000)) - 1431650304 * ((a3 - v33 - 2136) >> 4))) >> 10;
  }

  else
  {
    v10 = (v12 & 0x3FFF) >> 4;
  }

  v30 = *(a2 + 80);
  v29 = *(a2 + 68);
  v28 = 0;
  v27 = 0;
  v26 = 1;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = *a3;
  for (i = 0; ; i = 0)
  {
    while ((v22 & 0x40000000) != 0)
    {
      _xzm_walk_lock_wait(a1);
      v22 = *a3;
    }

    v20 = v22 & 0xFFFFFFFFFFFLL | (((v22 >> 44) + 1) << 44);
    if (((v22 >> 11) & 0x7FF) + 1 == v29)
    {
      if ((v25 & 1) == 0)
      {
        v28 = *(a1 + 216) + 96 * v30;
        if (((v22 >> 22) & 0x3F) != 0 && (~(v22 >> 22) & 0x3F) != 0 && (*_xzm_chunk_list_get(a1, v28, 0, *(a1 + 232)) & 0x7FFFFFFFFFFFLL) == 0)
        {
          v27 = mach_absolute_time();
          v32 = *(v28 + 80);
          v31 = (((v22 >> 22) & 0x3F) - 1) * *(a1 + 210);
          if (v31 + v32 >= *(a1 + 211) * *(a1 + 210))
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion alloc_base_idx + xz_idx < zone->xzz_slot_count * zone->xzz_xzone_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:1246)";
            __break(1u);
            JUMPOUT(0x77494);
          }

          v23 = *(a1 + 224) + 32 * (v31 + v32);
          if (v27 - *(v23 + 24) < *(a1 + 312))
          {
            v26 = 0;
          }
        }

        v25 = 1;
      }

      if ((v26 & 1) != 0 && (~(v22 >> 22) & 0x3F) != 0)
      {
        v21 = v22 & 0xFFFF0000000 | (((v22 >> 44) + 1) << 44) | 0x7FF;
        goto LABEL_50;
      }
    }

    else if (((v22 >> 11) & 0x7FF) == 0)
    {
      if ((v22 & 0x7FF) != 0x400)
      {
        _xzm_free_abort(a4);
      }

      if (((v22 >> 22) & 0x3F) != 0)
      {
        if ((v22 & 0x10000000) != 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !old_meta.xca_on_partial_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2408)";
          __break(1u);
          JUMPOUT(0x7766CLL);
        }
      }

      else
      {
        v7 = 0;
        if ((v22 & 0x10000000) == 0)
        {
          v7 = ((v22 >> 29) & 1) == 0;
        }

        if (!v7)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !old_meta.xca_on_partial_list && !old_meta.xca_on_empty_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2402)";
          __break(1u);
          JUMPOUT(0x775FCLL);
        }

        v20 |= 0x10000000uLL;
        i = 1;
        v28 = *(a1 + 216) + 96 * v30;
      }
    }

    *(a4 + 8) = v22 & 0x7FF | (((v22 >> 31) & 0x1FFF) << 11) & 0xFFFFFF;
    v21 = v20 & 0xFFFFF0007FC00000 | v10 & 0x7FF | (((((v20 & 0xFFFFF800 | v10 & 0x7FF) >> 11) + 1) & 0x7FF) << 11) & 0xFFFFF0007FFFFFFFLL | (((v22 >> 44) & 0xFFF) << 31);
LABEL_50:
    v18 = v22;
    v4 = v22;
    v5 = v22;
    atomic_compare_exchange_strong_explicit(a3, &v5, v21, memory_order_release, memory_order_relaxed);
    if (v5 != v4)
    {
      v18 = v5;
    }

    v22 = v18;
    if (v5 == v4)
    {
      break;
    }

    ++v24;
  }

  if (malloc_tracing_enabled)
  {
    kdebug_trace();
  }

  if (v27)
  {
    if (!v23)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion xas failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2456)";
      __break(1u);
      JUMPOUT(0x7788CLL);
    }

    *(v23 + 24) = v27;
  }

  if ((~v21 & 0x7FF) != 0)
  {
    if (i)
    {
      if (!v28)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion xz failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2486)";
        __break(1u);
        JUMPOUT(0x779BCLL);
      }

      _xzm_chunk_list_slot_push(a1, v28, *(a1 + 232), a3);
    }
  }

  else
  {
    if (*(a1 + 240))
    {
      v6 = *(a1 + 240);
    }

    else
    {
      v6 = a1;
    }

    if (!v28)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion xz failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:2462)";
      __break(1u);
      JUMPOUT(0x77938);
    }

    if (*(v6 + 424))
    {
      _xzm_chunk_batch_list_push(a1, v28, a3, *(v6 + 424));
    }

    else
    {
      _xzm_xzone_madvise_freelist_chunk(a1, v28, a3);
    }
  }
}

void _xzm_xzone_free_block_to_small_chunk(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = *(a3 + 12);
  while (1)
  {
    while (!v48)
    {
      v4 = 0;
      atomic_compare_exchange_strong_explicit((a3 + 8), &v4, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
      if (v4)
      {
        os_unfair_lock_lock_with_options();
      }

      v48 = *(a3 + 12);
      if (!v48)
      {
        v40 = *(a3 + 32) & 0xF;
        if (v40 != 2)
        {
          if (v40 == 5)
          {
            v64 = *(a3 + 4) == *(a2 + 68);
            goto LABEL_18;
          }

          if (v40 != 6)
          {
            v63 = *(a3 + 32) & 0xF;
            qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
            qword_D8158 = v63;
            __break(1u);
            JUMPOUT(0x77D54);
          }
        }

        v39 = 0;
        if (((*a3 >> 11) & 0x7FF) == 0)
        {
          v39 = 0;
          if ((~*a3 & 0x7FF) != 0)
          {
            v39 = (*a3 & 0x7FF) != 2046;
          }
        }

        v64 = v39;
LABEL_18:
        v50 = _xzm_xzone_free_to_chunk(a1, a2, a3, a4);
        _xzm_xzone_chunk_madvise_free_slices(a1, a2, a3, v50);
        v38 = *(a3 + 32) & 0xF;
        if (v38 != 2)
        {
          if (v38 == 5)
          {
            v58 = *(a3 + 4) == 0;
            goto LABEL_27;
          }

          if (v38 != 6)
          {
            v57 = *(a3 + 32) & 0xF;
            qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
            qword_D8158 = v57;
            __break(1u);
            JUMPOUT(0x77EC8);
          }
        }

        v37 = 1;
        if (((*a3 >> 11) & 0x7FF) != *(a2 + 68))
        {
          v37 = 1;
          if ((~*a3 & 0x7FF) != 0)
          {
            v37 = (*a3 & 0x7FF) == 2046;
          }
        }

        v58 = v37;
LABEL_27:
        if (v58)
        {
          if ((*(a3 + 32) & 0x20) == 0)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_on_partial_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4009)";
            __break(1u);
            JUMPOUT(0x77F0CLL);
          }

          v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
          v8 = v7;
          atomic_compare_exchange_strong_explicit((a3 + 8), &v8, 0, memory_order_release, memory_order_relaxed);
          if (v8 != v7)
          {
            os_unfair_lock_unlock((a3 + 8));
          }

          v9 = 0;
          atomic_compare_exchange_strong_explicit((a2 + 36), &v9, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
          if (v9)
          {
            os_unfair_lock_lock_with_options();
          }

          if ((*(a3 + 32) & 0x20) != 0)
          {
            if (*(a3 + 16))
            {
              *(*(a3 + 16) + 24) = *(a3 + 24);
            }

            **(a3 + 24) = *(a3 + 16);
            *(a3 + 16) = -1;
            *(a3 + 24) = -1;
            *(a3 + 32) &= ~0x20u;
          }

          if (*(a1 + 240))
          {
            v36 = *(a1 + 240);
          }

          else
          {
            v36 = a1;
          }

          v47 = *(v36 + 424);
          if (v47)
          {
            _xzm_xzone_batch_small_push(a1, a2, a3, v47);
          }

          else
          {
            v10 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
            v11 = v10;
            atomic_compare_exchange_strong_explicit((a2 + 36), &v11, 0, memory_order_release, memory_order_relaxed);
            if (v11 != v10)
            {
              os_unfair_lock_unlock((a2 + 36));
            }

            _xzm_xzone_chunk_free(a1, a2, a3, 0);
          }

          return;
        }

        if (!v64)
        {
          v18 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
          v19 = v18;
          atomic_compare_exchange_strong_explicit((a3 + 8), &v19, 0, memory_order_release, memory_order_relaxed);
          if (v19 != v18)
          {
            os_unfair_lock_unlock((a3 + 8));
          }

          return;
        }

        v12 = 0;
        atomic_compare_exchange_strong_explicit((a2 + 36), &v12, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
        if (v12)
        {
          os_unfair_lock_lock_with_options();
        }

        if (*(a3 + 16))
        {
          *(*(a3 + 16) + 24) = *(a3 + 24);
        }

        **(a3 + 24) = *(a3 + 16);
        *(a3 + 16) = -1;
        *(a3 + 24) = -1;
        v13 = *a2;
        *(a3 + 16) = *a2;
        if (v13)
        {
          *(*a2 + 24) = a3 + 16;
        }

        *a2 = a3;
        *(a3 + 24) = a2;
        *(a3 + 32) |= 0x20u;
        v35 = *(a3 + 32) & 0xF;
        if (v35 != 2)
        {
          if (v35 == 5)
          {
            v62 = *(a3 + 4) == *(a2 + 68);
LABEL_62:
            if (v62)
            {
              qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !_xzm_chunk_is_full(zone, xz, chunk) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4054)";
              __break(1u);
              JUMPOUT(0x785B0);
            }

            v14 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
            v15 = v14;
            atomic_compare_exchange_strong_explicit((a2 + 36), &v15, 0, memory_order_release, memory_order_relaxed);
            if (v15 != v14)
            {
              os_unfair_lock_unlock((a2 + 36));
            }

            v16 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
            v17 = v16;
            atomic_compare_exchange_strong_explicit((a3 + 8), &v17, 0, memory_order_release, memory_order_relaxed);
            if (v17 != v16)
            {
              os_unfair_lock_unlock((a3 + 8));
            }

            return;
          }

          if (v35 != 6)
          {
            v61 = *(a3 + 32) & 0xF;
            qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
            qword_D8158 = v61;
            __break(1u);
            JUMPOUT(0x78580);
          }
        }

        v34 = 0;
        if (((*a3 >> 11) & 0x7FF) == 0)
        {
          v34 = 0;
          if ((~*a3 & 0x7FF) != 0)
          {
            v34 = (*a3 & 0x7FF) != 2046;
          }
        }

        v62 = v34;
        goto LABEL_62;
      }

      v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v6 = v5;
      atomic_compare_exchange_strong_explicit((a3 + 8), &v6, 0, memory_order_release, memory_order_relaxed);
      if (v6 != v5)
      {
        os_unfair_lock_unlock((a3 + 8));
      }
    }

    v60 = *(a2 + 80);
    v59 = (v48 - 1) * *(a1 + 210);
    if (v59 + v60 >= *(a1 + 211) * *(a1 + 210))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion alloc_base_idx + xz_idx < zone->xzz_slot_count * zone->xzz_xzone_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:1246)";
      __break(1u);
      JUMPOUT(0x788B8);
    }

    v46 = *(a1 + 224) + 32 * (v59 + v60);
    v20 = 0;
    atomic_compare_exchange_strong_explicit((v46 + 8), &v20, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
    if (v20)
    {
      os_unfair_lock_lock_with_options();
    }

    v45 = v48;
    v48 = *(a3 + 12);
    if (v48 == v45)
    {
      break;
    }

    v21 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v22 = v21;
    atomic_compare_exchange_strong_explicit((v46 + 8), &v22, 0, memory_order_release, memory_order_relaxed);
    if (v22 != v21)
    {
      os_unfair_lock_unlock((v46 + 8));
    }
  }

  v51 = _xzm_xzone_free_to_chunk(a1, a2, a3, a4);
  v44 = *(a1 + 328);
  v33 = 0;
  if (v44)
  {
    v33 = *(a2 + 48) < *(a1 + 336);
  }

  if (!v33)
  {
    _xzm_xzone_chunk_madvise_free_slices(a1, a2, a3, v51);
  }

  v32 = *(a3 + 32) & 0xF;
  switch(v32)
  {
    case 2:
LABEL_90:
      v31 = 1;
      if (((*a3 >> 11) & 0x7FF) != *(a2 + 68))
      {
        v31 = 1;
        if ((~*a3 & 0x7FF) != 0)
        {
          v31 = (*a3 & 0x7FF) == 2046;
        }
      }

      v56 = v31;
      break;
    case 5:
      v56 = *(a3 + 4) == 0;
      break;
    case 6:
      goto LABEL_90;
    default:
      v55 = *(a3 + 32) & 0xF;
      qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
      qword_D8158 = v55;
      __break(1u);
      JUMPOUT(0x78C90);
  }

  if (v56)
  {
    if (v33 && (v43 = mach_absolute_time(), v42 = v43 - *(v46 + 24), *(v46 + 24) = v43, v42 < v44))
    {
      v23 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v24 = v23;
      atomic_compare_exchange_strong_explicit((v46 + 8), &v24, 0, memory_order_release, memory_order_relaxed);
      if (v24 != v23)
      {
        os_unfair_lock_unlock((v46 + 8));
      }
    }

    else
    {
      *v46 = 0;
      *(a3 + 12) = 0;
      v25 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v26 = v25;
      atomic_compare_exchange_strong_explicit((v46 + 8), &v26, 0, memory_order_release, memory_order_relaxed);
      if (v26 != v25)
      {
        os_unfair_lock_unlock((v46 + 8));
      }

      if (*(a1 + 240))
      {
        v30 = *(a1 + 240);
      }

      else
      {
        v30 = a1;
      }

      v41 = *(v30 + 424);
      if (v41)
      {
        v27 = 0;
        atomic_compare_exchange_strong_explicit((a2 + 36), &v27, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
        if (v27)
        {
          os_unfair_lock_lock_with_options();
        }

        _xzm_xzone_batch_small_push(a1, a2, a3, v41);
      }

      else
      {
        _xzm_xzone_chunk_free(a1, a2, a3, v33);
      }
    }
  }

  else
  {
    v28 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v29 = v28;
    atomic_compare_exchange_strong_explicit((v46 + 8), &v29, 0, memory_order_release, memory_order_relaxed);
    if (v29 != v28)
    {
      os_unfair_lock_unlock((v46 + 8));
    }
  }
}

void _xzm_free_large_huge(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 344), &v2, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  *(a2 + 34) = 0;
  if (*(a2 + 16))
  {
    *(*(a2 + 16) + 24) = *(a2 + 24);
  }

  **(a2 + 24) = *(a2 + 16);
  *(a2 + 16) = -1;
  *(a2 + 24) = -1;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v4 = v3;
  atomic_compare_exchange_strong_explicit((a1 + 344), &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != v3)
  {
    os_unfair_lock_unlock((a1 + 344));
  }

  v9 = (a2 & 0xFFFFFFFFFFFFC000);
  v6 = 1;
  if ((a2 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v5 = 0;
    if (a2 >= (v9 + 267))
    {
      v5 = a2 < (a2 & 0xFFFFFFFFFFFFC000) + 48 * *(dword_10 + (a2 & 0xFFFFFFFFFFFFC000)) + 2136;
    }

    v6 = v5;
  }

  if ((v6 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0x79404);
  }

  xzm_segment_group_free_chunk(*v9, a2, (*(a1 + 360) & 0x80) != 0, 0);
}

BOOL XZM_FAST_ALIGNED(unint64_t a1, unint64_t a2, unsigned int a3)
{
  if (a1 * a3 < a3 != (a1 % a2 == 0))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion aligned == ((offs % size) == 0) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:142)";
    __break(1u);
    JUMPOUT(0x794C0);
  }

  return a1 * a3 < a3;
}

uint64_t _xzm_xzone_freelist_chunk_block_is_free_slow(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v40 = a1;
  v39 = a2;
  v38 = a3;
  v37 = 0;
  v36 = *(a1 + 216) + 96 * *(a2 + 33);
  v3 = 1024;
  if (*(v36 + 48) <= 0x1000uLL)
  {
    v3 = 16;
  }

  v35 = v3;
  v45 = v40;
  v44 = v39;
  v43 = 0;
  v47 = v40;
  v46 = v39;
  v50 = v40;
  v49 = v39;
  v48 = v39 & 0xFFFFFFFFFFFFC000;
  v22 = 1;
  if ((v39 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v21 = 0;
    if (v49 >= v48 + 2136)
    {
      v21 = v49 < v48 + 48 * *(v48 + 16) + 2136;
    }

    v22 = v21;
  }

  if ((v22 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0x79718);
  }

  v52 = v48;
  v51 = v46;
  v57 = v48;
  v56 = v46;
  if (v46 < v48 + 2136)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
    __break(1u);
    JUMPOUT(0x7977CLL);
  }

  v55 = 0xAAAAAAAAAAAAAAABLL * ((v56 - v57 - 2136) >> 4);
  if (v55 >= *(v57 + 16))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
    __break(1u);
    JUMPOUT(0x797DCLL);
  }

  v54 = v48;
  v53 = v55;
  v34 = *(v48 + 72) + (v55 << 14);
  v33 = *(v36 + 48) / v35;
  v67 = v40;
  v66 = v39;
  v65 = v38;
  v72 = v40;
  v71 = v39;
  v70 = v38;
  v77 = v40;
  v76 = v39;
  v75 = 0;
  v79 = v40;
  v78 = v39;
  v82 = v40;
  v81 = v39;
  v80 = v39 & 0xFFFFFFFFFFFFC000;
  v20 = 1;
  if ((v39 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v19 = 0;
    if (v81 >= v80 + 2136)
    {
      v19 = v81 < v80 + 48 * *(v80 + 16) + 2136;
    }

    v20 = v19;
  }

  if ((v20 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0x79A18);
  }

  v84 = v80;
  v83 = v78;
  v89 = v80;
  v88 = v78;
  if (v78 < v80 + 2136)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
    __break(1u);
    JUMPOUT(0x79A7CLL);
  }

  v87 = 0xAAAAAAAAAAAAAAABLL * ((v88 - v89 - 2136) >> 4);
  if (v87 >= *(v89 + 16))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
    __break(1u);
    JUMPOUT(0x79ADCLL);
  }

  v86 = v80;
  v85 = v87;
  v69 = *(v80 + 72) + (v87 << 14);
  v74 = v70;
  v73 = v70 & 0xF0FFFFFFFFFFFFFFLL;
  v70 &= 0xF0FFFFFFFFFFFFFFLL;
  v68 = v70 - v69;
  v32 = (v70 - v69);
  v31 = (*(v36 + 68) - 1) * v33;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  if ((*(v40 + 249) & 1) == 0)
  {
    goto LABEL_47;
  }

  if (*(v36 + 48) >= 0x101uLL)
  {
    goto LABEL_47;
  }

  v27 = *v39;
  if ((~(v27 >> 22) & 0x3F) != 0)
  {
    goto LABEL_47;
  }

  v58 = 114;
  v59 = 114;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v26 = *(StatusReg + 912);
  if (!v26)
  {
    goto LABEL_47;
  }

  v25 = *(v36 + 80);
  if (*(v26 + 24 * v25 + 56) > 0x400u || *(v26 + 24 * v25 + 40) != v39)
  {
    goto LABEL_47;
  }

  v28 = 1;
  v30 = *(v26 + 24 * v25 + 56);
  v29 = 0;
  while (1)
  {
    v18 = 0;
    if (v30 != 1024)
    {
      v18 = 0;
      if (!(v30 % v33))
      {
        v18 = 0;
        if (v30 <= v31)
        {
          v18 = v29 < *(v26 + 24 * v25 + 58);
        }
      }
    }

    if (!v18)
    {
      break;
    }

    if (v30 == v32)
    {
      v37 = 1;
      return v37 & 1;
    }

    ++v29;
    v24 = v34 + v30 * v35;
    if (*(v39 + 12))
    {
      v62 = v34 + v30 * v35;
      v63 = v62;
      _X8 = v62;
      __asm { LDG             X8, [X8] }

      v24 = _X8;
    }

    v30 = *(v24 + 8) & 0x7FFLL;
  }

  v17 = 0;
  if (v30 == 1024)
  {
    v17 = v29 <= *(v26 + 24 * v25 + 58);
  }

  if (!v17)
  {
    qword_D8128 = "BUG IN CLIENT OF LIBMALLOC: corrupt tiny local freelist, client likely has a buffer overflow or use-after-free bug";
    qword_D8158 = v29;
    __break(1u);
    JUMPOUT(0x79E24);
  }

  if (v32 >= (*(v36 + 68) + v29 - *(v26 + 24 * v25 + 58)) * v33)
  {
    v37 = 1;
  }

  else
  {
LABEL_47:
    v41 = v40 + 344;
    v96 = v40 + 344;
    v95 = 327680;
    v97 = 3;
    v98 = 3;
    v99 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v94 = *(v99 + 24);
    v93 = 0;
    v92 = v94;
    v91 = v94;
    v10 = 0;
    atomic_compare_exchange_strong_explicit((v40 + 344), &v10, v94, memory_order_acquire, memory_order_acquire);
    if (v10)
    {
      v93 = v10;
    }

    v90 = v10 == 0;
    if (v10)
    {
      os_unfair_lock_lock_with_options();
    }

    if (_xzm_xzone_freelist_chunk_lock(v39, &v27))
    {
      v30 = v27 & 0x7FF;
      v29 = 0;
      while (1)
      {
        v16 = 0;
        if (v30 != 1024)
        {
          v16 = 0;
          if (!(v30 % v33))
          {
            v16 = 0;
            if (v30 <= v31)
            {
              v16 = v29 < ((v27 >> 11) & 0x7FF);
            }
          }
        }

        if (!v16)
        {
          break;
        }

        if (v30 == v32)
        {
          v37 = 1;
          goto LABEL_74;
        }

        ++v29;
        v23 = v34 + v30 * v35;
        if (*(v39 + 12))
        {
          v61 = v34 + v30 * v35;
          v64 = v61;
          _X8 = v61;
          __asm { LDG             X8, [X8] }

          v23 = _X8;
        }

        v30 = *(v23 + 8) & 0x7FFLL;
      }

      if (v28)
      {
        if (v29 != ((v27 >> 11) & 0x7FF))
        {
          qword_D8128 = "BUG IN CLIENT OF LIBMALLOC: corrupt tiny remote freelist, client likely has a buffer overflow or use-after-free bug";
          qword_D8158 = v29;
          __break(1u);
          JUMPOUT(0x7A0E0);
        }
      }

      else
      {
        if (v30 != 1024)
        {
          qword_D8128 = "BUG IN CLIENT OF LIBMALLOC: corrupt tiny freelist, client likely has a buffer overflow or use-after-free bug";
          qword_D8158 = v29;
          __break(1u);
          JUMPOUT(0x7A128);
        }

        if (v29 > ((v27 >> 11) & 0x7FF))
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion freelist_count <= old_meta.xca_free_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4351)";
          __break(1u);
          JUMPOUT(0x7A164);
        }

        if (v32 >= (*(v36 + 68) + v29 - ((v27 >> 11) & 0x7FF)) * v33)
        {
          v37 = 1;
        }
      }

LABEL_74:
      v27 |= 0x40000000uLL;
      _xzm_xzone_freelist_chunk_unlock(v39, v27);
    }

    else
    {
      v37 = 1;
    }

    v42 = v40 + 344;
    v105 = (v40 + 344);
    v106 = 3;
    v107 = 3;
    v108 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v104 = *(v108 + 24);
    v103 = 0;
    v102 = v104;
    v101 = 0;
    v13 = v104;
    v14 = v104;
    atomic_compare_exchange_strong_explicit((v40 + 344), &v14, 0, memory_order_release, memory_order_relaxed);
    if (v14 != v13)
    {
      v102 = v14;
    }

    v100 = v14 == v13;
    if (v14 != v13)
    {
      os_unfair_lock_unlock(v105);
    }
  }

  return v37 & 1;
}

uint64_t _xzm_xzone_freelist_chunk_lock(atomic_ullong *a1, void *a2)
{
  v6 = *a1;
  do
  {
    if ((v6 & 0x40000000) != 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !old_meta.xca_walk_locked failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4156)";
      __break(1u);
      JUMPOUT(0x7A328);
    }

    if ((~v6 & 0x7FF) == 0 || (v6 & 0x7FF) == 0x7FE)
    {
      return 0;
    }

    v5 = v6;
    v2 = v6;
    v3 = v6;
    atomic_compare_exchange_strong_explicit(a1, &v3, v6 | 0x40000000, memory_order_relaxed, memory_order_relaxed);
    if (v3 != v2)
    {
      v5 = v3;
    }

    v6 = v5;
  }

  while (v3 != v2);
  if (malloc_tracing_enabled)
  {
    kdebug_trace();
  }

  *a2 = v5;
  return 1;
}

atomic_ullong *_xzm_xzone_freelist_chunk_unlock(atomic_ullong *result, uint64_t a2)
{
  v2 = a2;
  atomic_compare_exchange_strong_explicit(result, &v2, a2 & 0xFFFFFFFFBFFFFFFFLL, memory_order_relaxed, memory_order_relaxed);
  if (v2 != a2)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion success failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4189)";
    __break(1u);
    JUMPOUT(0x7A578);
  }

  if (malloc_tracing_enabled)
  {
    return kdebug_trace();
  }

  return result;
}

unint64_t _xzm_xzone_free_to_chunk(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v10 = a4;
  if ((*(a3 + 32) & 0xF) != 5)
  {
    v5 = *(a3 + 32) & 0xF;
    qword_D8128 = "BUG IN LIBMALLOC: Attempting to free to non-chunk slice";
    qword_D8158 = v5;
    __break(1u);
    JUMPOUT(0x7AABCLL);
  }

  if ((*(a2 + 87) & 2) != 0)
  {
    v10 = a4 & 0xF0FFFFFFFFFFFFFFLL;
  }

  v12 = a3 & 0xFFFFFFFFFFFFC000;
  v9 = 1;
  if ((a3 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v8 = 0;
    if (a3 >= v12 + 2136)
    {
      v8 = a3 < (a3 & 0xFFFFFFFFFFFFC000) + 48 * *(&dword_10 + (a3 & 0xFFFFFFFFFFFFC000)) + 2136;
    }

    v9 = v8;
  }

  if ((v9 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0x7A84CLL);
  }

  if (a3 < v12 + 2136)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
    __break(1u);
    JUMPOUT(0x7A8B0);
  }

  if ((0xAAAAAAAAAAAAAAABLL * ((a3 - (a3 & 0xFFFFFFFFFFFFC000) - 2136) >> 4)) >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFC000)))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
    __break(1u);
    JUMPOUT(0x7A910);
  }

  v7 = *(a3 + 32) & 0xF;
  if (v7 == 2 || (v7 - 5) < 2)
  {
    v11 = *(*(a1 + 216) + 96 * *(a3 + 33) + 48);
  }

  else
  {
    if ((v7 - 7) >= 2)
    {
      v4 = *(a3 + 32) & 0xF;
      qword_D8128 = "BUG IN LIBMALLOC: asking for size of chunk with invalid kind";
      qword_D8158 = v4;
      __break(1u);
      JUMPOUT(0x7AA54);
    }

    v11 = *(a3 + 40) << 14;
  }

  *a3 |= 1 << ((v10 - (*(&stru_20.fileoff + (a3 & 0xFFFFFFFFFFFFC000)) - 1431650304 * ((a3 - v12 - 2136) >> 4))) / v11);
  --*(a3 + 4);
  return v10;
}

void _xzm_xzone_chunk_madvise_free_slices(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  if ((*(a3 + 32) & 0xF) != 5)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_SMALL_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3902)";
    __break(1u);
    JUMPOUT(0x7AB3CLL);
  }

  v38 = v27;
  v37 = v25;
  v41 = v27;
  v40 = v25;
  v39 = v25 & 0xFFFFFFFFFFFFC000;
  v18 = 1;
  if ((v25 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v17 = 0;
    if (v40 >= v39 + 2136)
    {
      v17 = v40 < v39 + 48 * *(v39 + 16) + 2136;
    }

    v18 = v17;
  }

  if ((v18 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0x7AC10);
  }

  v36 = v39;
  v23 = *v39;
  if ((*(v25 + 32) & 0xF) == 5)
  {
    v79 = v23;
    v16 = *v23;
    if (*v23)
    {
      if ((v16 - 1) < 2)
      {
        v80 = (*(*(v79 + 3) + 409) & 0x10) != 0;
LABEL_16:
        if (!v80)
        {
          if ((*(v26 + 87) & 2) != 0)
          {
            v29 = v24;
            v28 = v24 & 0xF0FFFFFFFFFFFFFFLL;
            v24 &= 0xF0FFFFFFFFFFFFFFLL;
          }

          v22 = 0;
          v21 = 0;
          v32 = v27;
          v31 = v25;
          v30 = v25 & 0xFFFFFFFFFFFFC000;
          v15 = 1;
          if ((v25 & 0xFFFFFFFFFFFFC000) != 0)
          {
            v14 = 0;
            if (v31 >= v30 + 2136)
            {
              v14 = v31 < v30 + 48 * *(v30 + 16) + 2136;
            }

            v15 = v14;
          }

          if ((v15 & 1) == 0)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
            __break(1u);
            JUMPOUT(0x7AE0CLL);
          }

          v20 = v30;
          v35 = v30;
          v34 = v25;
          if (v25 < v30 + 2136)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
            __break(1u);
            JUMPOUT(0x7AE60);
          }

          v33 = 0xAAAAAAAAAAAAAAABLL * ((v34 - v35 - 2136) >> 4);
          if (v33 >= *(v35 + 16))
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
            __break(1u);
            JUMPOUT(0x7AEC0);
          }

          v19 = v33;
          v50 = v27;
          v49 = v25;
          v48 = v24;
          v56 = v27;
          v55 = v25;
          v54 = v24;
          v61 = v27;
          v60 = v25;
          v59 = v24;
          v66 = v27;
          v65 = v25;
          v64 = 0;
          v68 = v27;
          v67 = v25;
          v71 = v27;
          v70 = v25;
          v69 = v25 & 0xFFFFFFFFFFFFC000;
          v13 = 1;
          if ((v25 & 0xFFFFFFFFFFFFC000) != 0)
          {
            v12 = 0;
            if (v70 >= v69 + 2136)
            {
              v12 = v70 < v69 + 48 * *(v69 + 16) + 2136;
            }

            v13 = v12;
          }

          if ((v13 & 1) == 0)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
            __break(1u);
            JUMPOUT(0x7B0E4);
          }

          v73 = v69;
          v72 = v67;
          v78 = v69;
          v77 = v67;
          if (v67 < v69 + 2136)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
            __break(1u);
            JUMPOUT(0x7B148);
          }

          v76 = 0xAAAAAAAAAAAAAAABLL * ((v77 - v78 - 2136) >> 4);
          if (v76 >= *(v78 + 16))
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
            __break(1u);
            JUMPOUT(0x7B1A8);
          }

          v75 = v69;
          v74 = v76;
          v58 = *(v69 + 72) + (v76 << 14);
          v63 = v59;
          v62 = v59 & 0xF0FFFFFFFFFFFFFFLL;
          v59 &= 0xF0FFFFFFFFFFFFFFLL;
          v57 = v59 - v58;
          v52 = v50;
          v51 = v49;
          v11 = *(v49 + 32) & 0xF;
          if (v11 == 2 || (v11 - 5) < 2)
          {
            v53 = *(*(v52 + 216) + 96 * *(v51 + 33) + 48);
          }

          else
          {
            if ((v11 - 7) >= 2)
            {
              v5 = *(v51 + 32) & 0xF;
              qword_D8128 = "BUG IN LIBMALLOC: asking for size of chunk with invalid kind";
              qword_D8158 = v5;
              __break(1u);
              JUMPOUT(0x7B2ECLL);
            }

            v53 = *(v51 + 40) << 14;
          }

          v43 = v27;
          v42 = v25;
          v10 = *(v25 + 32) & 0xF;
          if (v10 == 2 || (v10 - 5) < 2)
          {
            v44 = *(*(v43 + 216) + 96 * *(v42 + 33) + 48);
          }

          else
          {
            if ((v10 - 7) >= 2)
            {
              v6 = *(v42 + 32) & 0xF;
              qword_D8128 = "BUG IN LIBMALLOC: asking for size of chunk with invalid kind";
              qword_D8158 = v6;
              __break(1u);
              JUMPOUT(0x7B3D8);
            }

            v44 = *(v42 + 40) << 14;
          }

          v7 = *(v26 + 68);
          v95 = v25;
          v94 = v33;
          v93 = v7;
          v92 = (v59 - v58) / v53;
          v91 = v44;
          v90 = &v22;
          v89 = &v21;
          v9 = 0;
          if (v25)
          {
            v9 = (*(v95 + 32) & 0xF) == 5;
          }

          if (!v9)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk && chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_SMALL_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:1057)";
            __break(1u);
            JUMPOUT(0x7B47CLL);
          }

          v88 = 0;
          v87 = 0;
          v107 = 0;
          v106 = v94;
          v105 = v92;
          v104 = v91;
          v86 = v92 * v91 + (v94 << 14);
          v85 = v86 + v91 - 1;
          v103 = 0;
          v102 = v86;
          v84 = v86 >> 14;
          v101 = 0;
          v100 = v85;
          v83 = (v85 >> 14) + 1;
          v115 = 0;
          v114 = v94;
          v113 = v91;
          v112 = v84 << 14;
          if (v112 < v94 << 14)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion offset >= chunk_idx * XZM_SEGMENT_SLICE_SIZE failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:750)";
            __break(1u);
            JUMPOUT(0x7B564);
          }

          v82 = (v112 - (v114 << 14)) / v113;
          v111 = 0;
          v110 = v94;
          v109 = v91;
          v108 = (v83 << 14) - 1;
          if (v108 < v94 << 14)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion offset >= chunk_idx * XZM_SEGMENT_SLICE_SIZE failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:750)";
            __break(1u);
            JUMPOUT(0x7B5E0);
          }

          v81 = (v108 - (v110 << 14)) / v109;
          if (v81 == v93)
          {
            --v81;
          }

          v127 = 0;
          v126 = v95;
          v125 = v82;
          v124 = v92;
          if ((*(v95 + 32) & 0xF) != 5)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_SMALL_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:983)";
            __break(1u);
            JUMPOUT(0x7B67CLL);
          }

          if (v124 < v125)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion end >= start failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:984)";
            __break(1u);
            JUMPOUT(0x7B6B4);
          }

          v123 = v124 - v125 + 1;
          if (v123 >= 0x21)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion span <= 32 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:988)";
            __break(1u);
            JUMPOUT(0x7B6FCLL);
          }

          v122 = ((1 << v123) - 1) << v125;
          if ((v122 & ~*v126) != 0)
          {
            v99 = 0;
            v98 = v86;
            v88 = (v86 >> 14) + 1;
          }

          else
          {
            v88 = v84;
          }

          if (v88 < v94)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion left >= chunk_idx failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:1096)";
            __break(1u);
            JUMPOUT(0x7B7A0);
          }

          v121 = 0;
          v120 = v95;
          v119 = v92;
          v118 = v81;
          if ((*(v95 + 32) & 0xF) != 5)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_SMALL_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:983)";
            __break(1u);
            JUMPOUT(0x7B7FCLL);
          }

          if (v118 < v119)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion end >= start failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:984)";
            __break(1u);
            JUMPOUT(0x7B834);
          }

          v117 = v118 - v119 + 1;
          if (v117 >= 0x21)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion span <= 32 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:988)";
            __break(1u);
            JUMPOUT(0x7B87CLL);
          }

          v116 = ((1 << v117) - 1) << v119;
          if ((v116 & ~*v120) != 0)
          {
            v97 = 0;
            v96 = v85;
            v87 = v85 >> 14;
          }

          else
          {
            v87 = v83;
          }

          if (v87 > v94 + *(v95 + 40))
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion right <= chunk_idx + chunk->xzcs_slice_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:1105)";
            __break(1u);
            JUMPOUT(0x7B928);
          }

          *v90 = v88;
          if (v88 > v87)
          {
            v8 = 0;
          }

          else
          {
            v8 = v87 - v88;
          }

          *v89 = v8;
          if (v21)
          {
            if (v22 < v19)
            {
              qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice_idx >= chunk_idx failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3932)";
              __break(1u);
              JUMPOUT(0x7B9B8);
            }

            v45 = v20;
            v47 = v20;
            v46 = 0;
            xzm_segment_group_segment_madvise_span(v23, (*(v20 + 72) + (v22 << 14)), v21);
          }
        }

        return;
      }

      if (v16 != 3)
      {
        v4 = *v79;
        qword_D8128 = "BUG IN LIBMALLOC: unknown segment group id";
        qword_D8158 = v4;
        __break(1u);
        JUMPOUT(0x7ACE8);
      }
    }

    v80 = (*(*(v79 + 3) + 409) & 4) != 0;
    goto LABEL_16;
  }
}

void _xzm_xzone_batch_small_push(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  os_unfair_lock_assert_owner((a2 + 36));
  v8 = 0;
  if (*(a2 + 32) > a4)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion xz->xz_chunkq_batch_count <= batch_size failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3948)";
    __break(1u);
    JUMPOUT(0x7BA84);
  }

  if (*(a2 + 32) >= a4)
  {
    v8 = *(a2 + 24);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
  }

  v13 = a3 & 0xFFFFFFFFFFFFC000;
  v7 = 1;
  if ((a3 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v6 = 0;
    if (a3 >= v13 + 2136)
    {
      v6 = a3 < (a3 & 0xFFFFFFFFFFFFC000) + 48 * *(dword_10 + (a3 & 0xFFFFFFFFFFFFC000)) + 2136;
    }

    v7 = v6;
  }

  if ((v7 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0x7BBA4);
  }

  if (a3 < v13 + 2136)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
    __break(1u);
    JUMPOUT(0x7BC00);
  }

  if ((0xAAAAAAAAAAAAAAABLL * ((a3 - (a3 & 0xFFFFFFFFFFFFC000) - 2136) >> 4)) >= *(dword_10 + (a3 & 0xFFFFFFFFFFFFC000)))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
    __break(1u);
    JUMPOUT(0x7BC60);
  }

  *(&stru_20.maxprot + (a3 & 0xFFFFFFFFFFFFC000) + 0xFFFFFFFD55555558 * ((a3 - v13 - 2136) >> 4)) = *(a2 + 24);
  *(a2 + 24) = a3;
  ++*(a2 + 32);
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit((a2 + 36), &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock((a2 + 36));
  }

  if (v8)
  {
    _xzm_xzone_madvise_batch(a1, a2, v8);
  }
}

void _xzm_xzone_chunk_free(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v30 = (a3 & 0xFFFFFFFFFFFFC000);
  v22 = 1;
  if ((a3 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v21 = 0;
    if (a3 >= (v30 + 267))
    {
      v21 = a3 < (a3 & 0xFFFFFFFFFFFFC000) + 48 * *(dword_10 + (a3 & 0xFFFFFFFFFFFFC000)) + 2136;
    }

    v22 = v21;
  }

  if ((v22 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0x7BE80);
  }

  v25 = *v30;
  *(a3 + 34) = 0;
  if ((*(a2 + 87) & 1) == 0)
  {
    v29 = a3 & 0xFFFFFFFFFFFFC000;
    v13 = 1;
    if ((a3 & 0xFFFFFFFFFFFFC000) != 0)
    {
      v12 = 0;
      if (a3 >= v29 + 2136)
      {
        v12 = a3 < (a3 & 0xFFFFFFFFFFFFC000) + 48 * *(dword_10 + (a3 & 0xFFFFFFFFFFFFC000)) + 2136;
      }

      v13 = v12;
    }

    if ((v13 & 1) == 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
      __break(1u);
      JUMPOUT(0x7C9B0);
    }

    if (a3 < v29 + 2136)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
      __break(1u);
      JUMPOUT(0x7CA1CLL);
    }

    if ((0xAAAAAAAAAAAAAAABLL * ((a3 - (a3 & 0xFFFFFFFFFFFFC000) - 2136) >> 4)) >= *(dword_10 + (a3 & 0xFFFFFFFFFFFFC000)))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
      __break(1u);
      JUMPOUT(0x7CA7CLL);
    }

    if (*(&stru_20.maxprot + (a3 & 0xFFFFFFFFFFFFC000) + 0xFFFFFFFD55555558 * ((a3 - v29 - 2136) >> 4)) != -1)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion *_xzm_slice_meta_reclaim_id(zone, chunk) == VM_RECLAIM_ID_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3886)";
      __break(1u);
      JUMPOUT(0x7CAC4);
    }

    *(a3 + 33) = 0;
    v11 = *(a3 + 32) & 0xF;
    if (v11 != 2)
    {
      if (v11 == 5)
      {
        *(a3 + 4) = 0;
        *(a3 + 12) = 0;
        *a3 = 0;
LABEL_103:
        xzm_segment_group_free_chunk(v25, a3, 0, a4 & 1);
        return;
      }

      if (v11 != 6)
      {
        v10 = *(a3 + 32) & 0xF;
        qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
        qword_D8158 = v10;
        __break(1u);
        JUMPOUT(0x7CCECLL);
      }
    }

    if ((*a3 & 0x7FF) != 0x7FE)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_atomic_meta.xca_alloc_head == XZM_FREE_MADVISED failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:851)";
      __break(1u);
      JUMPOUT(0x7CB74);
    }

    if (((*a3 >> 11) & 0x7FF) != 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_atomic_meta.xca_free_count == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:852)";
      __break(1u);
      JUMPOUT(0x7CBACLL);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 10) = 0;
    *(a3 + 12) = 0;
    goto LABEL_103;
  }

  if (*(a1 + 240))
  {
    v20 = *(a1 + 240);
  }

  else
  {
    v20 = a1;
  }

  v32 = *(a3 + 32) & 0xF;
  if (v32 < 2u)
  {
    goto LABEL_16;
  }

  if (v32 != 2)
  {
    if (v32 - 3 >= 2)
    {
      if (v32 - 5 >= 4)
      {
        qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
        qword_D8158 = v32;
        __break(1u);
        JUMPOUT(0x7BFACLL);
      }

      goto LABEL_17;
    }

LABEL_16:
    v33 = 0;
    goto LABEL_18;
  }

LABEL_17:
  v33 = 1;
LABEL_18:
  if ((v33 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_slice_kind_is_chunk(chunk->xzc_bits.xzcb_kind) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:677)";
    __break(1u);
    JUMPOUT(0x7BFDCLL);
  }

  v19 = *(a3 + 32) & 0xF;
  if (v19 == 2)
  {
    v31 = (*(v20 + 409) & 8) != 0;
  }

  else if ((v19 - 5) < 2)
  {
    v31 = (*(v20 + 409) & 4) != 0;
  }

  else
  {
    if ((v19 - 7) >= 2)
    {
      qword_D8128 = "BUG IN LIBMALLOC: Attempt to check for deferred reclamation on non-chunk slice";
      __break(1u);
      JUMPOUT(0x7C084);
    }

    v31 = (*(v20 + 409) & 0x10) != 0;
  }

  if (v31)
  {
    v28 = a3 & 0xFFFFFFFFFFFFC000;
    v18 = 1;
    if ((a3 & 0xFFFFFFFFFFFFC000) != 0)
    {
      v17 = 0;
      if (a3 >= v28 + 2136)
      {
        v17 = a3 < (a3 & 0xFFFFFFFFFFFFC000) + 48 * *(dword_10 + (a3 & 0xFFFFFFFFFFFFC000)) + 2136;
      }

      v18 = v17;
    }

    if ((v18 & 1) == 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
      __break(1u);
      JUMPOUT(0x7C158);
    }

    if (a3 < v28 + 2136)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
      __break(1u);
      JUMPOUT(0x7C1CCLL);
    }

    if ((0xAAAAAAAAAAAAAAABLL * ((a3 - (a3 & 0xFFFFFFFFFFFFC000) - 2136) >> 4)) >= *(dword_10 + (a3 & 0xFFFFFFFFFFFFC000)))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
      __break(1u);
      JUMPOUT(0x7C22CLL);
    }

    if (*(&stru_20.maxprot + (a3 & 0xFFFFFFFFFFFFC000) + 0xFFFFFFFD55555558 * ((a3 - v28 - 2136) >> 4)) == -1)
    {
      xzm_chunk_mark_free(a1, a3);
    }

    else
    {
      if ((*(a3 + 32) & 0xF) != 2 && (*(a3 + 32) & 0xF) != 6 || (v16 = 1, (*a3 & 0x7FF) != 0x7FE))
      {
        v15 = 0;
        if ((*(a3 + 32) & 0xF) == 5)
        {
          v15 = ((*(a3 + 32) >> 5) & 1) == 0;
        }

        v16 = v15;
      }

      if ((v16 & 1) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ((chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_TINY_CHUNK || chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_SMALL_FREELIST_CHUNK) && chunk->xzc_atomic_meta.xca_alloc_head == XZM_FREE_MADVISED) || (chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_SMALL_CHUNK && !chunk->xzc_bits.xzcb_on_partial_list) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3830)";
        __break(1u);
        JUMPOUT(0x7C320);
      }
    }
  }

  else
  {
    v24 = 1;
    if ((*(a3 + 32) & 0xF) == 2 || (*(a3 + 32) & 0xF) == 6)
    {
      if ((*a3 & 0x7FF) == 0x7FE)
      {
        v24 = 0;
      }

      else
      {
        *a3 = *a3 & 0xFFFFFFFFFFFFF800 | 0x7FE;
        *a3 &= 0xFFFFFFFFFFC007FFLL;
      }
    }

    else
    {
      if ((*(a3 + 32) & 0xF) != 5)
      {
        v4 = *(a3 + 32) & 0xF;
        qword_D8128 = "BUG IN LIBMALLOC: Unexpected chunk kind";
        qword_D8158 = v4;
        __break(1u);
        JUMPOUT(0x7C424);
      }

      v24 = a4 & 1;
    }

    if (v24)
    {
      xzm_segment_group_segment_madvise_chunk(v25, a3);
    }
  }

  v14 = *(a3 + 32) & 0xF;
  if (v14 != 2)
  {
    if (v14 == 5)
    {
      *(a3 + 4) = 0;
      *(a3 + 12) = 0;
      if (a2)
      {
        *(a2 + 68);
        *(a2 + 68);
      }

      *a3 |= (1 << *(a2 + 68)) - 1;
      goto LABEL_71;
    }

    if (v14 != 6)
    {
      v5 = *(a3 + 32) & 0xF;
      qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
      qword_D8158 = v5;
      __break(1u);
      JUMPOUT(0x7C670);
    }
  }

  if ((*a3 & 0x7FF) != 0x7FE)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_atomic_meta.xca_alloc_head == XZM_FREE_MADVISED failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:851)";
    __break(1u);
    JUMPOUT(0x7C4F8);
  }

  if (((*a3 >> 11) & 0x7FF) != 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_atomic_meta.xca_free_count == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:852)";
    __break(1u);
    JUMPOUT(0x7C530);
  }

LABEL_71:
  *(a3 + 32) &= ~0x10u;
  if ((*(a3 + 32) & 0xF) == 2 || (*(a3 + 32) & 0xF) == 6)
  {
    *a3 &= ~0x10000000uLL;
    *a3 |= 0x20000000uLL;
    *a3 &= 0xFFFFFFFFF03FFFFFLL;
  }

  v23 = *(v20 + 456) + 16 * *(a2 + 80);
  v6 = 0;
  atomic_compare_exchange_strong_explicit((v23 + 8), &v6, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    os_unfair_lock_lock_with_options();
  }

  v7 = *v23;
  *(a3 + 16) = *v23;
  if (v7)
  {
    *(*v23 + 24) = a3 + 16;
  }

  *v23 = a3;
  *(a3 + 24) = v23;
  v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v9 = v8;
  atomic_compare_exchange_strong_explicit((v23 + 8), &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != v8)
  {
    os_unfair_lock_unlock((v23 + 8));
  }
}

uint64_t _xzm_ptr_size_outlined(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 240) || !mfm_claimed_address(a2))
  {
    return 0;
  }

  else
  {
    return mfm_alloc_size(a2);
  }
}

void _xzm_do_lock_action(atomic_uint *a1, int a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v4 = v3;
      atomic_compare_exchange_strong_explicit(a1, &v4, 0, memory_order_release, memory_order_relaxed);
      if (v4 != v3)
      {
        os_unfair_lock_unlock(a1);
      }
    }

    else
    {
      if (a2 != 2)
      {
        qword_D8128 = "BUG IN LIBMALLOC: invalid xzm lock action";
        __break(1u);
        JUMPOUT(0x7CFD8);
      }

      *a1 = 0;
    }
  }

  else
  {
    v2 = 0;
    atomic_compare_exchange_strong_explicit(a1, &v2, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
    if (v2)
    {
      os_unfair_lock_lock_with_options();
    }
  }
}

void _xzm_allocation_slots_do_lock_action(uint64_t a1, int a2)
{
  for (i = 1; i < *(a1 + 210); ++i)
  {
    if (*(*(a1 + 216) + 96 * i + 48) > 0x1000uLL)
    {
      if (*(a1 + 250))
      {
        v4 = 6;
      }

      else
      {
        v4 = 5;
      }
    }

    else
    {
      v4 = 2;
    }

    for (j = 0; j < *(a1 + 211); ++j)
    {
      v2 = *(a1 + 224) + 32 * (*(a1 + 210) * j + i);
      if (v4 == 2 || v4 == 6)
      {
        if (a2)
        {
          _xzm_xzone_allocation_slot_fork_unlock(v2);
        }

        else
        {
          _xzm_xzone_allocation_slot_fork_lock(v2);
        }
      }

      else
      {
        _xzm_do_lock_action((v2 + 8), a2);
      }
    }
  }
}

uint64_t _xzm_freelist_xzone_do_lock_action(uint64_t result, atomic_ullong *a2, int a3)
{
  v15 = result;
  v14 = a2;
  v13 = a3;
  if (!a3)
  {
    for (i = 0; i < *(v15 + 211); ++i)
    {
      v3 = *(v15 + 232);
      v27 = v15;
      v26 = v14;
      v25 = v3;
      v24 = i;
      v23 = *(v14 + 80);
      v22 = i * *(v15 + 210);
      if (v22 + v23 >= *(v27 + 211) * *(v27 + 210))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion alloc_base_idx + xz_idx < zone->xzz_slot_count * zone->xzz_xzone_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:233)";
        __break(1u);
        JUMPOUT(0x7D260);
      }

      _xzm_chunk_list_fork_lock((v25 + 16 * (v22 + v23)));
    }

    _xzm_chunk_batch_list_fork_lock(v14);
    _xzm_chunk_list_fork_lock((v14 + 8));
    _xzm_chunk_list_fork_lock((v14 + 24));
    result = _xzm_chunk_list_fork_lock((v14 + 16));
  }

  v11 = 0;
  v9 = *(v14 + 2);
  v10 = v9;
  v8 = v9;
  v11 = v9;
  for (j = (v9 & 0x7FFFFFFFFFFFLL); j; j = *(j + 3))
  {
    v6 = 0;
    if (v13)
    {
      v6 = *j;
      if ((~v6 & 0x7FF) != 0 && (v6 & 0x7FF) != 0x7FE)
      {
        result = _xzm_xzone_freelist_chunk_unlock(j, v6);
      }
    }

    else
    {
      result = _xzm_xzone_freelist_chunk_lock(j, &v6);
    }
  }

  if (v13)
  {
    _xzm_chunk_list_fork_unlock((v14 + 16));
    _xzm_chunk_batch_list_fork_unlock(v14);
    _xzm_chunk_list_fork_unlock((v14 + 24));
    result = _xzm_chunk_list_fork_unlock((v14 + 8));
    for (k = 0; k < *(v15 + 211); ++k)
    {
      v4 = *(v15 + 232);
      v21 = v15;
      v20 = v14;
      v19 = v4;
      v18 = k;
      v17 = *(v14 + 80);
      v16 = k * *(v15 + 210);
      if (v16 + v17 >= *(v21 + 211) * *(v21 + 210))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion alloc_base_idx + xz_idx < zone->xzz_slot_count * zone->xzz_xzone_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:233)";
        __break(1u);
        JUMPOUT(0x7D490);
      }

      result = _xzm_chunk_list_fork_unlock((v19 + 16 * (v16 + v17)));
    }
  }

  return result;
}

void _xzm_small_xzone_lock_all(uint64_t a1, uint64_t *a2)
{
  if (a2[6] <= 0x1000)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion xz->xz_block_size > XZM_TINY_BLOCK_SIZE_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5501)";
    __break(1u);
    JUMPOUT(0x7D520);
  }

  while (1)
  {
    v2 = 0;
    atomic_compare_exchange_strong_explicit((a2 + 36), &v2, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
    if (v2)
    {
      os_unfair_lock_lock_with_options();
    }

    v29 = a2[3];
    while (v29)
    {
      v3 = 0;
      atomic_compare_exchange_strong_explicit((v29 + 8), &v3, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
      if (v3)
      {
        os_unfair_lock_lock_with_options();
      }

      v34 = v29 & 0xFFFFFFFFFFFFC000;
      v25 = 1;
      if ((v29 & 0xFFFFFFFFFFFFC000) != 0)
      {
        v24 = 0;
        if (v29 >= v34 + 2136)
        {
          v24 = v29 < (v29 & 0xFFFFFFFFFFFFC000) + 48 * *(&dword_10 + (v29 & 0xFFFFFFFFFFFFC000)) + 2136;
        }

        v25 = v24;
      }

      if ((v25 & 1) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
        __break(1u);
        JUMPOUT(0x7D7ACLL);
      }

      if (v29 < v34 + 2136)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
        __break(1u);
        JUMPOUT(0x7D808);
      }

      if ((0xAAAAAAAAAAAAAAABLL * ((v29 - (v29 & 0xFFFFFFFFFFFFC000) - 2136) >> 4)) >= *(&dword_10 + (v29 & 0xFFFFFFFFFFFFC000)))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
        __break(1u);
        JUMPOUT(0x7D868);
      }

      v29 = *(&stru_20.maxprot + (v29 & 0xFFFFFFFFFFFFC000) + 0xFFFFFFFD55555558 * ((v29 - v34 - 2136) >> 4));
      if (v29 == -1)
      {
        v37 = 0;
      }

      else
      {
        v38 = v29 & 0xFFFFFFFFFFFFC000;
        v23 = 1;
        if ((v29 & 0xFFFFFFFFFFFFC000) != 0)
        {
          v22 = 0;
          if (v29 >= v38 + 2136)
          {
            v22 = v29 < (v29 & 0xFFFFFFFFFFFFC000) + 48 * *(&dword_10 + (v29 & 0xFFFFFFFFFFFFC000)) + 2136;
          }

          v23 = v22;
        }

        if ((v23 & 1) == 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
          __break(1u);
          JUMPOUT(0x7D97CLL);
        }

        v21 = 1;
        if (v29)
        {
          v20 = 0;
          if (v29 >= v38 + 2136)
          {
            v20 = v29 < (v29 & 0xFFFFFFFFFFFFC000) + 48 * *(&dword_10 + (v29 & 0xFFFFFFFFFFFFC000)) + 2136;
          }

          v21 = v20;
        }

        v37 = v21;
      }

      if (!v37)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_slice_meta_is_batch_pointer(zone, chunk) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5510)";
        __break(1u);
        JUMPOUT(0x7DA3CLL);
      }
    }

    for (i = *a2; i; i = *(i + 16))
    {
      v4 = 0;
      atomic_compare_exchange_strong_explicit((i + 8), &v4, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
      if (v4)
      {
        os_unfair_lock_lock_with_options();
      }
    }

    for (j = a2[1]; j; j = *(j + 16))
    {
      v5 = 0;
      atomic_compare_exchange_strong_explicit((j + 8), &v5, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
      if (v5)
      {
        v26 = a2[3];
        while (v26)
        {
          v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
          v7 = v6;
          atomic_compare_exchange_strong_explicit((v26 + 8), &v7, 0, memory_order_release, memory_order_relaxed);
          if (v7 != v6)
          {
            os_unfair_lock_unlock((v26 + 8));
          }

          v33 = v26 & 0xFFFFFFFFFFFFC000;
          v19 = 1;
          if ((v26 & 0xFFFFFFFFFFFFC000) != 0)
          {
            v18 = 0;
            if (v26 >= v33 + 2136)
            {
              v18 = v26 < (v26 & 0xFFFFFFFFFFFFC000) + 48 * *(&dword_10 + (v26 & 0xFFFFFFFFFFFFC000)) + 2136;
            }

            v19 = v18;
          }

          if ((v19 & 1) == 0)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
            __break(1u);
            JUMPOUT(0x7DDF0);
          }

          if (v26 < v33 + 2136)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
            __break(1u);
            JUMPOUT(0x7DE4CLL);
          }

          if ((0xAAAAAAAAAAAAAAABLL * ((v26 - (v26 & 0xFFFFFFFFFFFFC000) - 2136) >> 4)) >= *(&dword_10 + (v26 & 0xFFFFFFFFFFFFC000)))
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
            __break(1u);
            JUMPOUT(0x7DEACLL);
          }

          v26 = *(&stru_20.maxprot + (v26 & 0xFFFFFFFFFFFFC000) + 0xFFFFFFFD55555558 * ((v26 - v33 - 2136) >> 4));
          if (v26 == -1)
          {
            v35 = 0;
          }

          else
          {
            v36 = v26 & 0xFFFFFFFFFFFFC000;
            v17 = 1;
            if ((v26 & 0xFFFFFFFFFFFFC000) != 0)
            {
              v16 = 0;
              if (v26 >= v36 + 2136)
              {
                v16 = v26 < (v26 & 0xFFFFFFFFFFFFC000) + 48 * *(&dword_10 + (v26 & 0xFFFFFFFFFFFFC000)) + 2136;
              }

              v17 = v16;
            }

            if ((v17 & 1) == 0)
            {
              qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
              __break(1u);
              JUMPOUT(0x7DFC0);
            }

            v15 = 1;
            if (v26)
            {
              v14 = 0;
              if (v26 >= v36 + 2136)
              {
                v14 = v26 < (v26 & 0xFFFFFFFFFFFFC000) + 48 * *(&dword_10 + (v26 & 0xFFFFFFFFFFFFC000)) + 2136;
              }

              v15 = v14;
            }

            v35 = v15;
          }

          if (!v35)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_slice_meta_is_batch_pointer(zone, chunk2) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5527)";
            __break(1u);
            JUMPOUT(0x7E080);
          }
        }

        for (k = *a2; k; k = *(k + 16))
        {
          v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
          v9 = v8;
          atomic_compare_exchange_strong_explicit((k + 8), &v9, 0, memory_order_release, memory_order_relaxed);
          if (v9 != v8)
          {
            os_unfair_lock_unlock((k + 8));
          }
        }

        for (m = a2[1]; m && m != j; m = *(m + 16))
        {
          v10 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
          v11 = v10;
          atomic_compare_exchange_strong_explicit((m + 8), &v11, 0, memory_order_release, memory_order_relaxed);
          if (v11 != v10)
          {
            os_unfair_lock_unlock((m + 8));
          }
        }

        break;
      }
    }

    if (!j)
    {
      break;
    }

    v12 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v13 = v12;
    atomic_compare_exchange_strong_explicit((a2 + 36), &v13, 0, memory_order_release, memory_order_relaxed);
    if (v13 != v12)
    {
      os_unfair_lock_unlock(a2 + 9);
    }

    yield();
  }
}

uint64_t _xzm_xzone_allocation_slot_fork_lock(uint64_t result)
{
  v8 = result;
  v7 = result;
  v6 = *result;
  do
  {
    while ((v6 & 1) != 0)
    {
      if ((v6 & 2) != 0)
      {
        goto LABEL_8;
      }

      v9 = v6;
      v1 = v6;
      v2 = v6;
      atomic_compare_exchange_strong_explicit(v8, &v2, v6 | 2, memory_order_relaxed, memory_order_relaxed);
      if (v2 != v1)
      {
        v9 = v2;
      }

      if (v2 == v6)
      {
LABEL_8:
        result = __ulock_wait();
        if ((result & 0x80000000) != 0 && result != -4 && -result != 14)
        {
          qword_D8128 = "BUG IN LIBMALLOC: ulock_wait failure";
          qword_D8158 = -result;
          __break(1u);
          JUMPOUT(0x7E5B8);
        }

        v10 = *v8;
      }

      else
      {
        v10 = v9;
      }

      v6 = v10;
    }

    v5 = v6;
    v3 = v6;
    v4 = v6;
    atomic_compare_exchange_strong_explicit(v7, &v4, v6 | 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 != v3)
    {
      v5 = v4;
    }

    v6 = v5;
  }

  while (v4 != v3);
  return result;
}

atomic_ullong *_xzm_xzone_allocation_slot_fork_unlock(atomic_ullong *result)
{
  if ((*result & 2) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slot_meta.xasa_chunk.xsc_fork_locked failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1569)";
    __break(1u);
    JUMPOUT(0x7E754);
  }

  v1 = *result;
  if (atomic_exchange_explicit(result, v1 & 0xFFFFFFFFFFFFFFFDLL, memory_order_release) != v1)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion prev_slot_value == slot_meta.xasa_value failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:1576)";
    __break(1u);
    JUMPOUT(0x7E7E8);
  }

  return result;
}

atomic_ullong *_xzm_chunk_list_fork_lock(atomic_ullong *result)
{
  if ((atomic_fetch_or_explicit(result, 0x8000000000000000, memory_order_relaxed) & 0x8000000000000000) != 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !old_head.xzch_fork_locked failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:474)";
    __break(1u);
    JUMPOUT(0x7E87CLL);
  }

  return result;
}

atomic_ullong *_xzm_chunk_batch_list_fork_lock(atomic_ullong *result)
{
  if ((atomic_fetch_or_explicit(result, 0x8000000000000000, memory_order_relaxed) & 0x8000000000000000) != 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !old_head.xzch_batch_fork_locked failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:644)";
    __break(1u);
    JUMPOUT(0x7E910);
  }

  return result;
}

atomic_ullong *_xzm_chunk_list_fork_unlock(atomic_ullong *result)
{
  if ((atomic_fetch_and_explicit(result, 0x7FFFFFFFFFFFFFFFuLL, memory_order_relaxed) & 0x8000000000000000) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_head.xzch_fork_locked failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:488)";
    __break(1u);
    JUMPOUT(0x7E9B4);
  }

  return result;
}

atomic_ullong *_xzm_chunk_batch_list_fork_unlock(atomic_ullong *result)
{
  if ((atomic_fetch_and_explicit(result, 0x7FFFFFFFFFFFFFFFuLL, memory_order_relaxed) & 0x8000000000000000) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion old_head.xzch_batch_fork_locked failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:658)";
    __break(1u);
    JUMPOUT(0x7EA58);
  }

  return result;
}

uint64_t xzm_malloc_zone_malloc(uint64_t a1, unint64_t a2)
{
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904);
  malloc_thread_options = _xzm_xzone_get_malloc_thread_options();
  return _xzm_malloc_zone_malloc_entry(a1, a2, v5, malloc_thread_options);
}

uint64_t xzm_malloc_zone_calloc(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904);
  malloc_thread_options = _xzm_xzone_get_malloc_thread_options();
  return _xzm_malloc_zone_malloc_type_calloc_entry(a1, a2, a3, v7, malloc_thread_options);
}

void xzm_malloc_zone_destroy(mach_vm_address_t a1)
{
  v85 = a1;
  v84 = *(a1 + 240);
  v86 = a1;
  if (!*(a1 + 240))
  {
    return;
  }

  v91 = v85 + 344;
  v200 = v85 + 344;
  v199 = 327680;
  v201 = 3;
  v202 = 3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v198 = *(StatusReg + 24);
  v197 = 0;
  v196 = v198;
  v195 = v198;
  v1 = 0;
  atomic_compare_exchange_strong_explicit((v85 + 344), &v1, v198, memory_order_acquire, memory_order_acquire);
  v62 = v1;
  v63 = v1 == 0;
  if (v1)
  {
    v197 = v62;
  }

  v194 = v63;
  if (!v63)
  {
    os_unfair_lock_lock_with_options();
  }

  v83 = 0;
  for (i = 1; i < *(v85 + 210); ++i)
  {
    v81 = (*(v85 + 216) + 96 * i);
    if (*(v81 + 6) <= 0x1000uLL || (*(v85 + 250) & 1) != 0)
    {
      v76 = 0;
      while (1)
      {
        v76 = _xzm_chunk_list_pop(v85, v81, 3, 0);
        if (!v76)
        {
          break;
        }

        if (!*(v84 + 424))
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion main_ref->xzmz_batch_size failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5911)";
          __break(1u);
          JUMPOUT(0x7FC04);
        }
      }

      while (1)
      {
        v76 = _xzm_chunk_list_pop(v85, (v81 + 16), 1, 0);
        if (!v76)
        {
          break;
        }

        if ((*(v76 + 32) & 0x40) != 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !chunk->xzc_bits.xzcb_preallocated failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5916)";
          __break(1u);
          JUMPOUT(0x7FC64);
        }

        *v76 &= ~0x10000000uLL;
        *v76 &= ~0x20000000uLL;
        *v76 &= 0xFFFFFFFFF03FFFFFLL;
        v7 = v83;
        *(v76 + 16) = v83;
        if (v7)
        {
          *(v83 + 24) = v76 + 16;
        }

        v83 = v76;
        *(v76 + 24) = &v83;
      }

      v75 = 0;
      if (*(v81 + 6) > 0x1000uLL)
      {
        v75 = 2;
      }

      else
      {
        v75 = 6;
      }

      while (1)
      {
        v76 = _xzm_chunk_list_pop(v85, (v81 + 24), 0, 0);
        if (!v76)
        {
          break;
        }

        _xzm_xzone_fresh_chunk_init(v81, v76, v75);
        if ((*v76 & 0x7FF) == 0x7FE)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_atomic_meta.xca_alloc_head != XZM_FREE_MADVISED failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5936)";
          __break(1u);
          JUMPOUT(0x7FD84);
        }

        v134 = v85;
        v133 = v76;
        v137 = v85;
        v136 = v76;
        v135 = v76 & 0xFFFFFFFFFFFFC000;
        v45 = 1;
        if ((v76 & 0xFFFFFFFFFFFFC000) != 0)
        {
          v44 = 0;
          if (v136 >= v135 + 2136)
          {
            v44 = v136 < v135 + 48 * *(v135 + 16) + 2136;
          }

          v45 = v44;
        }

        if ((v45 & 1) == 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
          __break(1u);
          JUMPOUT(0x7FE58);
        }

        v132 = v135;
        v164 = v135;
        v163 = v133;
        v43 = v135 + 88;
        v167 = v135;
        v166 = v133;
        if (v133 < v135 + 2136)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
          __break(1u);
          JUMPOUT(0x7FEC4);
        }

        v165 = 0xAAAAAAAAAAAAAAABLL * ((v166 - v167 - 2136) >> 4);
        if (v165 >= *(v167 + 16))
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
          __break(1u);
          JUMPOUT(0x7FF24);
        }

        v162 = (v43 + 8 * v165);
        if (*v162 != -1)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion *_xzm_slice_meta_reclaim_id(zone, chunk) == VM_RECLAIM_ID_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5939)";
          __break(1u);
          JUMPOUT(0x7FF6CLL);
        }

        v8 = v83;
        *(v76 + 16) = v83;
        if (v8)
        {
          *(v83 + 24) = v76 + 16;
        }

        v83 = v76;
        *(v76 + 24) = &v83;
      }
    }

    else
    {
      j = *(v81 + 3);
      v79 = 0;
      while (j)
      {
        if ((*(j + 32) & 0x40) != 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !chunk->xzc_bits.xzcb_preallocated failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5853)";
          __break(1u);
          JUMPOUT(0x7EEA8);
        }

        v2 = v83;
        *(j + 16) = v83;
        if (v2)
        {
          *(v83 + 24) = j + 16;
        }

        v83 = j;
        *(j + 24) = &v83;
        v97 = v85;
        v96 = j;
        v100 = v85;
        v99 = j;
        v98 = j & 0xFFFFFFFFFFFFC000;
        v61 = 1;
        if ((j & 0xFFFFFFFFFFFFC000) != 0)
        {
          v60 = 0;
          if (v99 >= v98 + 2136)
          {
            v60 = v99 < v98 + 48 * *(v98 + 16) + 2136;
          }

          v61 = v60;
        }

        if ((v61 & 1) == 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
          __break(1u);
          JUMPOUT(0x7EFC0);
        }

        v95 = v98;
        v59 = v98 + 88;
        v103 = v98;
        v102 = v96;
        if (v96 < v98 + 2136)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
          __break(1u);
          JUMPOUT(0x7F01CLL);
        }

        v101 = 0xAAAAAAAAAAAAAAABLL * ((v102 - v103 - 2136) >> 4);
        if (v101 >= *(v103 + 16))
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
          __break(1u);
          JUMPOUT(0x7F07CLL);
        }

        v94 = (v59 + 8 * v101);
        v79 = *v94;
        v127 = v85;
        v126 = v79;
        if (v79 == -1)
        {
          v128 = 0;
        }

        else
        {
          v125 = v126;
          v131 = v127;
          v130 = v126;
          v129 = v126 & 0xFFFFFFFFFFFFC000;
          v58 = 1;
          if ((v126 & 0xFFFFFFFFFFFFC000) != 0)
          {
            v57 = 0;
            if (v130 >= v129 + 2136)
            {
              v57 = v130 < v129 + 48 * *(v129 + 16) + 2136;
            }

            v58 = v57;
          }

          if ((v58 & 1) == 0)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
            __break(1u);
            JUMPOUT(0x7F190);
          }

          v124 = v129;
          v56 = 1;
          if (v126)
          {
            v55 = 0;
            if (v125 >= v124 + 2136)
            {
              v55 = v125 < v124 + 48 * *(v124 + 16) + 2136;
            }

            v56 = v55;
          }

          v128 = v56;
        }

        if (!v128)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_slice_meta_is_batch_pointer(zone, temp_chunk) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5857)";
          __break(1u);
          JUMPOUT(0x7F250);
        }

        if (!*(v84 + 424))
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion main_ref->xzmz_batch_size failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5858)";
          __break(1u);
          JUMPOUT(0x7F284);
        }

        v146 = v85;
        v145 = j;
        v149 = v85;
        v148 = j;
        v147 = j & 0xFFFFFFFFFFFFC000;
        v54 = 1;
        if ((j & 0xFFFFFFFFFFFFC000) != 0)
        {
          v53 = 0;
          if (v148 >= v147 + 2136)
          {
            v53 = v148 < v147 + 48 * *(v147 + 16) + 2136;
          }

          v54 = v53;
        }

        if ((v54 & 1) == 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
          __break(1u);
          JUMPOUT(0x7F358);
        }

        v144 = v147;
        v152 = v147;
        v151 = v145;
        v52 = v147 + 88;
        v155 = v147;
        v154 = v145;
        if (v145 < v147 + 2136)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
          __break(1u);
          JUMPOUT(0x7F3C4);
        }

        v153 = 0xAAAAAAAAAAAAAAABLL * ((v154 - v155 - 2136) >> 4);
        if (v153 >= *(v155 + 16))
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
          __break(1u);
          JUMPOUT(0x7F424);
        }

        v150 = (v52 + 8 * v153);
        *v150 = -1;
        j = v79;
      }

      for (j = *v81; ; j = v79)
      {
        v51 = 0;
        if (j)
        {
          v79 = *(j + 16);
          v51 = 1;
        }

        if ((v51 & 1) == 0)
        {
          break;
        }

        if ((*(j + 32) & 0x40) != 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !chunk->xzc_bits.xzcb_preallocated failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5867)";
          __break(1u);
          JUMPOUT(0x7F4C8);
        }

        if (*(j + 16))
        {
          *(*(j + 16) + 24) = *(j + 24);
        }

        **(j + 24) = *(j + 16);
        *(j + 16) = -1;
        *(j + 24) = -1;
        v3 = v83;
        *(j + 16) = v83;
        if (v3)
        {
          *(v83 + 24) = j + 16;
        }

        v83 = j;
        *(j + 24) = &v83;
      }

      for (j = *(v81 + 1); ; j = v79)
      {
        v50 = 0;
        if (j)
        {
          v79 = *(j + 16);
          v50 = 1;
        }

        if ((v50 & 1) == 0)
        {
          break;
        }

        if ((*(j + 32) & 0x40) != 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !chunk->xzc_bits.xzcb_preallocated failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5873)";
          __break(1u);
          JUMPOUT(0x7F5FCLL);
        }

        if (*(j + 16))
        {
          *(*(j + 16) + 24) = *(j + 24);
        }

        **(j + 24) = *(j + 16);
        *(j + 16) = -1;
        *(j + 24) = -1;
        v4 = v83;
        *(j + 16) = v83;
        if (v4)
        {
          *(v83 + 24) = j + 16;
        }

        v83 = j;
        *(j + 24) = &v83;
      }

      for (k = 0; k < *(v85 + 211); ++k)
      {
        v178 = v85;
        v177 = v81;
        v176 = k;
        v175 = *(v81 + 80);
        v174 = k * *(v85 + 210);
        if (v174 + v175 >= *(v85 + 211) * *(v85 + 210))
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion alloc_base_idx + xz_idx < zone->xzz_slot_count * zone->xzz_xzone_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:1246)";
          __break(1u);
          JUMPOUT(0x7F764);
        }

        v77 = (*(v178 + 224) + 32 * (v174 + v175));
        j = *v77;
        if (j)
        {
          if ((*(j + 32) & 0x40) != 0)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !chunk->xzc_bits.xzcb_preallocated failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5883)";
            __break(1u);
            JUMPOUT(0x7F7CCLL);
          }

          if (*(j + 12) != k + 1)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_alloc_idx == j+1 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5884)";
            __break(1u);
            JUMPOUT(0x7F80CLL);
          }

          if ((*(j + 32) & 0x20) != 0)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !chunk->xzc_bits.xzcb_on_partial_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5885)";
            __break(1u);
            JUMPOUT(0x7F840);
          }

          *v77 = 0;
          v5 = v83;
          *(j + 16) = v83;
          if (v5)
          {
            *(v83 + 24) = j + 16;
          }

          v83 = j;
          *(j + 24) = &v83;
        }
      }

      for (j = *(v81 + 2); ; j = v79)
      {
        v49 = 0;
        if (j)
        {
          v79 = *(j + 16);
          v49 = 1;
        }

        if ((v49 & 1) == 0)
        {
          break;
        }

        if (*(j + 16))
        {
          *(*(j + 16) + 24) = *(j + 24);
        }

        **(j + 24) = *(j + 16);
        *(j + 16) = -1;
        *(j + 24) = -1;
        _xzm_xzone_fresh_chunk_init(v81, j, 5);
        v140 = v85;
        v139 = j;
        v143 = v85;
        v142 = j;
        v141 = j & 0xFFFFFFFFFFFFC000;
        v48 = 1;
        if ((j & 0xFFFFFFFFFFFFC000) != 0)
        {
          v47 = 0;
          if (v142 >= v141 + 2136)
          {
            v47 = v142 < v141 + 48 * *(v141 + 16) + 2136;
          }

          v48 = v47;
        }

        if ((v48 & 1) == 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
          __break(1u);
          JUMPOUT(0x7FA38);
        }

        v138 = v141;
        v158 = v141;
        v157 = v139;
        v46 = v141 + 88;
        v161 = v141;
        v160 = v139;
        if (v139 < v141 + 2136)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
          __break(1u);
          JUMPOUT(0x7FAA4);
        }

        v159 = 0xAAAAAAAAAAAAAAABLL * ((v160 - v161 - 2136) >> 4);
        if (v159 >= *(v161 + 16))
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
          __break(1u);
          JUMPOUT(0x7FB04);
        }

        v156 = (v46 + 8 * v159);
        if (*v156 != -1)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion *_xzm_slice_meta_reclaim_id(zone, chunk) == VM_RECLAIM_ID_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5901)";
          __break(1u);
          JUMPOUT(0x7FB4CLL);
        }

        v6 = v83;
        *(j + 16) = v83;
        if (v6)
        {
          *(v83 + 24) = j + 16;
        }

        v83 = j;
        *(j + 24) = &v83;
      }
    }
  }

  v93 = v85 + 344;
  v219 = (v85 + 344);
  v220 = 3;
  v221 = 3;
  v222 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v218 = *(v222 + 24);
  v217 = 0;
  v216 = v218;
  v215 = 0;
  v9 = v218;
  v10 = v218;
  atomic_compare_exchange_strong_explicit((v85 + 344), &v10, 0, memory_order_release, memory_order_relaxed);
  v41 = v10;
  v42 = v10 == v9;
  if (v10 != v9)
  {
    v216 = v41;
  }

  v214 = v42;
  if (!v42)
  {
    os_unfair_lock_unlock(v219);
  }

  v73 = 0;
  for (m = v83; ; m = v73)
  {
    v40 = 0;
    if (m)
    {
      v73 = *(m + 16);
      v40 = 1;
    }

    if ((v40 & 1) == 0)
    {
      break;
    }

    v72 = *(v85 + 216) + 96 * *(m + 33);
    if (*(v72 + 87))
    {
      goto LABEL_193;
    }

    v180 = v84;
    v179 = m;
    v183 = *(m + 32) & 0xF;
    v39 = v183;
    if (v183 < 2u)
    {
LABEL_160:
      v184 = 0;
      goto LABEL_162;
    }

    if (v39 != 2)
    {
      if ((v39 - 3) < 2)
      {
        goto LABEL_160;
      }

      if ((v39 - 5) >= 4)
      {
        v182 = v183;
        qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
        qword_D8158 = v183;
        __break(1u);
        JUMPOUT(0x801D4);
      }
    }

    v184 = 1;
LABEL_162:
    if ((v184 & 1) == 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_slice_kind_is_chunk(chunk->xzc_bits.xzcb_kind) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:677)";
      __break(1u);
      JUMPOUT(0x80204);
    }

    v38 = *(v179 + 32) & 0xF;
    if (v38 == 2)
    {
      v181 = (*(v180 + 409) & 8) != 0;
    }

    else if ((v38 - 5) < 2)
    {
      v181 = (*(v180 + 409) & 4) != 0;
    }

    else
    {
      if ((v38 - 7) >= 2)
      {
        qword_D8128 = "BUG IN LIBMALLOC: Attempt to check for deferred reclamation on non-chunk slice";
        __break(1u);
        JUMPOUT(0x802ACLL);
      }

      v181 = (*(v180 + 409) & 0x10) != 0;
    }

    if (v181)
    {
      for (n = 0; ; ++n)
      {
        v89 = v85;
        v88 = m;
        v87 = m & 0xFFFFFFFFFFFFC000;
        v37 = 1;
        if ((m & 0xFFFFFFFFFFFFC000) != 0)
        {
          v36 = 0;
          if (v88 >= v87 + 2136)
          {
            v36 = v88 < v87 + 48 * *(v87 + 16) + 2136;
          }

          v37 = v36;
        }

        if ((v37 & 1) == 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
          __break(1u);
          JUMPOUT(0x8038CLL);
        }

        v187 = v87;
        v186 = m;
        v190 = v87;
        v189 = m;
        v35 = v87 + 88;
        v193 = v87;
        v192 = m;
        if (m < v87 + 2136)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
          __break(1u);
          JUMPOUT(0x80400);
        }

        v191 = 0xAAAAAAAAAAAAAAABLL * ((v192 - v193 - 2136) >> 4);
        if (v191 >= *(v193 + 16))
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
          __break(1u);
          JUMPOUT(0x80460);
        }

        v188 = (v35 + 8 * v191);
        v185 = v188;
        if (*v188 == -1)
        {
          break;
        }

        if (xzm_chunk_mark_used(v85, m, 0))
        {
          v11 = (*(m + 32) & 0xF) - 2;
          v34 = 1;
          if (v11)
          {
            v34 = (*(m + 32) & 0xF) == 6;
          }

          if (!v34)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion span->xzc_bits.xzcb_kind == XZM_SLICE_KIND_TINY_CHUNK || span->xzc_bits.xzcb_kind == XZM_SLICE_KIND_SMALL_FREELIST_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5965)";
            __break(1u);
            JUMPOUT(0x80510);
          }

          *m = *m & 0xFFFFFFFFFFFFF800 | 0x400;
          break;
        }

        xzm_reclaim_force_sync(*(v84 + 568));
        if (n >= 10)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion retries < 10 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5973)";
          __break(1u);
          JUMPOUT(0x80568);
        }
      }
    }

LABEL_193:
    if ((*(m + 32) & 0xF) == 2 || (*(m + 32) & 0xF) == 6)
    {
      if ((*m & 0x7FF) != 0x7FE)
      {
        v70 = 0;
        v107 = v85;
        v106 = m;
        v105 = &v70;
        if (&v21 == -256)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk_size_out failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:397)";
          __break(1u);
          JUMPOUT(0x80614);
        }

        v111 = v107;
        v110 = v106;
        v109 = v105;
        if (v105)
        {
          v33 = *(v110 + 32) & 0xF;
          switch(v33)
          {
            case 2:
              *v109 = 0x4000;
              break;
            case 5:
              *v109 = 0x10000;
              break;
            case 6:
              *v109 = 0x20000;
              break;
            default:
              if ((v33 - 7) >= 2)
              {
                v108 = *(v110 + 32) & 0xF;
                qword_D8128 = "BUG IN LIBMALLOC: asking for start of chunk with invalid kind";
                qword_D8158 = v108;
                __break(1u);
                JUMPOUT(0x80710);
              }

              *v109 = *(v110 + 40) << 14;
              break;
          }
        }

        v113 = v111;
        v112 = v110;
        v116 = v111;
        v115 = v110;
        v114 = v110 & 0xFFFFFFFFFFFFC000;
        v32 = 1;
        if ((v110 & 0xFFFFFFFFFFFFC000) != 0)
        {
          v31 = 0;
          if (v115 >= v114 + 2136)
          {
            v31 = v115 < v114 + 48 * *(v114 + 16) + 2136;
          }

          v32 = v31;
        }

        if ((v32 & 1) == 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
          __break(1u);
          JUMPOUT(0x807E8);
        }

        v118 = v114;
        v117 = v112;
        v30 = v114;
        v123 = v114;
        v122 = v112;
        if (v112 < v114 + 2136)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
          __break(1u);
          JUMPOUT(0x8084CLL);
        }

        v121 = 0xAAAAAAAAAAAAAAABLL * ((v122 - v123 - 2136) >> 4);
        if (v121 >= *(v123 + 16))
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
          __break(1u);
          JUMPOUT(0x808ACLL);
        }

        v120 = v30;
        v119 = v121;
        v104 = *(v30 + 72) + (v121 << 14);
        v69 = v104;
        v29 = 1;
        if (v70 != 0x4000)
        {
          v29 = v70 == 0x20000;
        }

        if (!v29)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion size == XZM_TINY_CHUNK_SIZE || size == XZM_SMALL_FREELIST_CHUNK_SIZE failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:5986)";
          __break(1u);
          JUMPOUT(0x80934);
        }

        if (*(v72 + 48) <= 0x400uLL)
        {
          if ((*(v72 + 87) & 2) != 0)
          {
            __asm { MSR             TCO, #1 }

            _platform_bzero();
            __asm { MSR             TCO, #0 }
          }

          else
          {
            _platform_bzero();
          }
        }

        v170 = v85;
        v169 = m;
        v173 = v85;
        v172 = m;
        v171 = m & 0xFFFFFFFFFFFFC000;
        v28 = 1;
        if ((m & 0xFFFFFFFFFFFFC000) != 0)
        {
          v27 = 0;
          if (v172 >= v171 + 2136)
          {
            v27 = v172 < v171 + 48 * *(v171 + 16) + 2136;
          }

          v28 = v27;
        }

        if ((v28 & 1) == 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
          __break(1u);
          JUMPOUT(0x80A58);
        }

        v168 = v171;
        v68 = *v171;
        xzm_segment_group_segment_madvise_chunk(v68, m);
        *m &= 0xFFFFFFFFFFC007FFLL;
        *m = *m & 0xFFFFFFFFFFFFF800 | 0x7FE;
      }

      *(m + 32) &= ~0x20u;
      _xzm_xzone_chunk_free(v85, *(v85 + 216) + 96 * *(m + 33), m, 0);
    }

    else
    {
      if ((*(m + 32) & 0xF) != 5)
      {
        v66 = *(m + 32) & 0xF;
        qword_D8128 = "BUG IN LIBMALLOC: Unexpected chunk kind";
        qword_D8158 = v66;
        __break(1u);
        JUMPOUT(0x80B88);
      }

      v67 = 1;
      *(m + 32) &= ~0x20u;
      _xzm_xzone_chunk_free(v85, *(v85 + 216) + 96 * *(m + 33), m, v67 & 1);
    }
  }

  for (m = *(v85 + 352); ; m = v73)
  {
    v26 = 0;
    if (m)
    {
      v73 = *(m + 16);
      v26 = 1;
    }

    if ((v26 & 1) == 0)
    {
      break;
    }

    _xzm_free_large_huge(v85, m);
  }

  v65 = (*(v84 + 480) + 128);
  v64 = xzm_metapool_alloc(v65);
  *v64 = *(v85 + 208);
  v90 = v84 + 528;
  v210 = v84 + 528;
  v209 = 327680;
  v211 = 3;
  v212 = 3;
  v213 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v208 = *(v213 + 24);
  v207 = 0;
  v206 = v208;
  v205 = v208;
  v18 = 0;
  atomic_compare_exchange_strong_explicit((v84 + 528), &v18, v208, memory_order_acquire, memory_order_acquire);
  v24 = v18;
  v25 = v18 == 0;
  if (v18)
  {
    v207 = v24;
  }

  v204 = v25;
  if (!v25)
  {
    os_unfair_lock_lock_with_options();
  }

  *(v64 + 8) = *(v84 + 520);
  *(v84 + 520) = v64;
  v92 = v84 + 528;
  v228 = (v84 + 528);
  v229 = 3;
  v230 = 3;
  v231 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v227 = *(v231 + 24);
  v226 = 0;
  v225 = v227;
  v224 = 0;
  v19 = v227;
  v20 = v227;
  atomic_compare_exchange_strong_explicit((v84 + 528), &v20, 0, memory_order_release, memory_order_relaxed);
  v22 = v20;
  v23 = v20 == v19;
  if (v20 != v19)
  {
    v225 = v22;
  }

  v223 = v23;
  if (!v23)
  {
    os_unfair_lock_unlock(v228);
  }

  mvm_deallocate_plat(v85, *(v85 + 200), 0);
}

unint64_t xzm_malloc_zone_memalign(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904);
  malloc_thread_options = _xzm_xzone_get_malloc_thread_options();
  return _xzm_malloc_zone_malloc_type_memalign_entry(a1, a2, a3, v7, malloc_thread_options);
}

BOOL xzm_malloc_zone_claimed_address(uint64_t a1, uint64_t a2)
{
  if (mfm_claimed_address(a2))
  {
    return 1;
  }

  else
  {
    v5 = a2 & 0xF0FFFFFFFFFFFFFFLL;
    if (*(a1 + 240))
    {
      v3 = *(a1 + 240);
    }

    else
    {
      v3 = a1;
    }

    v11 = v5;
    v10 = v3;
    v9 = 0;
    v17 = v5;
    v16 = &v9;
    v15 = v5;
    if (v5 >> 36)
    {
      *v16 = 0;
      v18 = 0x4000;
    }

    else
    {
      v14 = v15 >> 22;
      *v16 = 0;
      if (v14 >= 0x4000)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segindex < XZM_SEGMENT_TABLE_ENTRIES failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:169)";
        __break(1u);
        JUMPOUT(0x81030);
      }

      v18 = v14;
    }

    if (v18 >= 0x4000)
    {
      v12 = 0;
    }

    else
    {
      v12 = (*(v10 + 488) + 4 * v18);
    }

    if (v12)
    {
      v13 = *v12;
      v8 = (v13 & 0x7FFFFFFF) << 14;
    }

    else
    {
      v8 = 0;
    }

    return v8 != 0;
  }
}

unint64_t xzm_malloc_zone_malloc_type_malloc_with_options(uint64_t a1, unint64_t a2, unint64_t a3, char a4, uint64_t a5)
{
  v11 = (a4 & 1) != 0;
  if ((a4 & 2) != 0)
  {
    v11 |= 0x40000000u;
  }

  v10 = HIWORD(a5);
  if (a2 >= 9)
  {
    return _xzm_memalign(a1, a2, a3, a5, v11);
  }

  if (a3 <= 0x8000)
  {
    if ((*(a1 + 360) & 0x80) != 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (zone->xzz_flags & MALLOC_PURGEABLE) == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3617)";
      __break(1u);
      JUMPOUT(0x813D0);
    }

    v18 = a5;
    if (*(a1 + 240))
    {
      v9 = *(a1 + 240);
    }

    else
    {
      v9 = a1;
    }

    if (a3)
    {
      if (a3 > 0x80)
      {
        v22 = 63 - __clz(a3 - 1);
        v23 = (((a3 - 1) >> (v22 - 2)) & 3 | (4 * v22)) - 20;
      }

      else
      {
        if ((a3 & 0xF) != 0)
        {
          v8 = (a3 >> 4) + 1;
        }

        else
        {
          v8 = a3 >> 4;
        }

        v23 = v8 - 1;
      }
    }

    else
    {
      v23 = 0;
    }

    v17 = *(v9[55] + v23);
    if (HIWORD(a5) == 256)
    {
      v16 = 0;
    }

    else if (((WORD2(a5) >> 10) & 3) == 1)
    {
      v16 = 1;
    }

    else
    {
      if (!a5)
      {
        v18 = HIDWORD(malloc_entropy[0]);
      }

      v21 = v17 - 2;
      if ((v17 - 2) >= 5u)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr_bucket_count <= XZM_POINTER_BUCKETS_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:80)";
        __break(1u);
        JUMPOUT(0x81648);
      }

      v20 = 0;
      if (v21 >= 2u)
      {
        v19 = (v9[49] * v18 + v9[50]) >> 32;
        if (v21 == 2)
        {
          v20 = v19 & 1;
        }

        else if (v21 == 3)
        {
          v20 = v19 % 3;
        }

        else
        {
          v20 = v19 & 3;
        }
      }

      v16 = v20 + 2;
    }

    if (v16 >= v17)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion bucket < bin_bucket_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:172)";
      __break(1u);
      JUMPOUT(0x81778);
    }

    v15 = _xzm_xzone_malloc(a1, a3, *(v9[56] + v23) + v16, v11);
  }

  else
  {
    v15 = _xzm_malloc_large_huge(a1, a3, 0, a5, v11);
  }

  if (!v15)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3623)";
    __break(1u);
    JUMPOUT(0x817D4);
  }

  if ((v11 & 1) != 0 && !_xzm_mem_is_zero())
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_mem_is_zero(ptr, size) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3625)";
    __break(1u);
    JUMPOUT(0x81818);
  }

  v14 = xzm_malloc_zone_size(a1, v15);
  v7 = 0;
  if (*(a1 + 368))
  {
    v7 = 0;
    if (v14 <= *(a1 + 376))
    {
      v6 = 1;
      if (v10 == 256)
      {
        v6 = *(a1 + 369);
      }

      v7 = v6;
    }
  }

  if (!mfm_claimed_address(v15))
  {
    if ((v7 & 1) == 0 || (v11 & 0x40000000) != 0)
    {
      if ((v15 & 0xF0FFFFFFFFFFFFFFLL) != v15)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion memtag_strip_address(ptr) == ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3642)";
        __break(1u);
        JUMPOUT(0x819DCLL);
      }
    }

    else if ((v15 & 0xF0FFFFFFFFFFFFFFLL) == v15)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion memtag_strip_address(ptr) != ptr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:3640)";
      __break(1u);
      JUMPOUT(0x8197CLL);
    }
  }

  return v15;
}

unint64_t xzm_malloc_zone_valloc_slow(uint64_t a1, unint64_t a2)
{
  if ((*(a1 + 360) & 0x80) != 0 && a2 <= 0x8000)
  {
    if (*(a1 + 240))
    {
      v3 = *(a1 + 240);
    }

    else
    {
      v3 = a1;
    }

    v4 = xzm_malloc_zone_valloc(v3, a2);
  }

  else
  {
    v4 = xzm_malloc_zone_valloc(a1, a2);
  }

  if (v4 && (*(a1 + 360) & 0x20) != 0)
  {
    _platform_memset();
  }

  return v4;
}

void xzm_malloc_zone_free_slow(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return;
  }

  v179 = a1;
  v178 = a2;
  v177 = 0;
  v176 = 0;
  v175 = 0;
  v188 = a1;
  v186 = 0;
  v185 = &v176;
  v184 = &v175;
  v183 = a2;
  v191 = a2;
  v190 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v187 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v192 = a1;
  if (*(a1 + 240))
  {
    v30 = *(a1 + 240);
  }

  else
  {
    v30 = v192;
  }

  v182 = v30;
  v196 = v187;
  v195 = v30;
  v194 = 0;
  v201 = v187;
  v200 = &v194;
  v199 = v187;
  if (v187 >> 36)
  {
    *v200 = 0;
    v202 = 0x4000;
  }

  else
  {
    v198 = v199 >> 22;
    *v200 = 0;
    if (v198 >= 0x4000)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segindex < XZM_SEGMENT_TABLE_ENTRIES failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:169)";
      __break(1u);
      JUMPOUT(0x81D40);
    }

    v202 = v198;
  }

  v193 = v202;
  if (v202 < 0x4000)
  {
    v197 = *(v195 + 488) + 4 * v193;
  }

  else
  {
    v197 = 0;
  }

  v181 = v197;
  if (!v197)
  {
    v189 = 0;
    goto LABEL_117;
  }

  v220 = *v181;
  v219 = v188;
  v218 = v183;
  v217 = v187;
  v216 = v186;
  v215 = v185;
  v214 = v184;
  v244 = v220;
  v213 = (v220 & 0x7FFFFFFF) << 14;
  if (v213)
  {
    v252 = v213;
    v251 = v217;
    v256 = v213;
    v255 = v217;
    v266 = v213;
    v265 = v217;
    v270 = v213;
    v269 = v217;
    v273 = v213;
    v275 = v213;
    v274 = 0;
    v268 = v217 - *(v213 + 72);
    v283 = v213;
    v284 = v213;
    v282 = *(v213 + 12);
    if (v282 << 14)
    {
      v281 = v270;
      v285 = v270;
      v280 = *(v270 + 12);
      v279 = v270;
      v286 = v270;
      v278 = *(v270 + 12);
      v29 = (v280 << 14) - (v278 << 14) + 0x400000;
    }

    else
    {
      v277 = v270;
      v287 = v270;
      v276 = *(v270 + 12);
      v29 = v276 << 14;
    }

    v267 = v29;
    v28 = 0;
    if ((v268 & 0x8000000000000000) == 0)
    {
      v28 = v268 < v267;
    }

    if (!v28)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion diff >= 0 && diff < (ptrdiff_t)rounded_size failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:460)";
      __break(1u);
      JUMPOUT(0x81FA0);
    }

    v264 = v268;
    v272 = v266;
    v271 = v268;
    v254 = v268 >> 14;
    if (v254 >= *(v256 + 16))
    {
      v257 = 0;
    }

    else
    {
      v257 = v256 + 48 * v254 + 2136;
    }

    v250 = v257;
    if (!v257)
    {
      v253 = 0;
LABEL_55:
      v212 = v253;
      if (!v253)
      {
        v221 = 0;
        goto LABEL_116;
      }

      if (*(v212 + 34) != *(v219 + 208))
      {
        v221 = 0;
        goto LABEL_116;
      }

      v211 = v217;
      v228 = v219;
      v227 = v212;
      v226 = 0;
      v230 = v219;
      v229 = v212;
      v233 = v219;
      v232 = v212;
      v231 = v212 & 0xFFFFFFFFFFFFC000;
      v25 = 1;
      if ((v212 & 0xFFFFFFFFFFFFC000) != 0)
      {
        v24 = 0;
        if (v232 >= v231 + 2136)
        {
          v24 = v232 < v231 + 48 * *(v231 + 16) + 2136;
        }

        v25 = v24;
      }

      if ((v25 & 1) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
        __break(1u);
        JUMPOUT(0x824C8);
      }

      v235 = v231;
      v234 = v229;
      v240 = v231;
      v239 = v229;
      if (v229 < v231 + 2136)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
        __break(1u);
        JUMPOUT(0x8252CLL);
      }

      v238 = 0xAAAAAAAAAAAAAAABLL * ((v239 - v240 - 2136) >> 4);
      if (v238 >= *(v240 + 16))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
        __break(1u);
        JUMPOUT(0x8258CLL);
      }

      v237 = v231;
      v236 = v238;
      v210 = *(v231 + 72) + (v238 << 14);
      v209 = v211 - v210;
      v208 = *(v212 + 32) & 0xF;
      v207 = 0;
      v206 = 0;
      v224 = v208;
      if (v208 == 2 || v208 == 6 || v208 == 5)
      {
        v207 = *(v219 + 216) + 96 * *(v212 + 33);
        v206 = *(v207 + 48);
        if (!XZM_FAST_ALIGNED(v209, v206, *(v207 + 64)))
        {
          v221 = 0;
          goto LABEL_116;
        }
      }

      else
      {
        v206 = *(v212 + 40) << 14;
        v205 = v209 % v206;
        if (v209 % v206)
        {
          v221 = 0;
          goto LABEL_116;
        }
      }

      v204 = v209 / v206;
      v222 = *(v212 + 32) & 0xF;
      v223 = v222 == 2 || v222 == 6 || v222 == 5;
      v23 = 1;
      if (v223)
      {
        v23 = v204 < *(v207 + 68);
      }

      if (!v23)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !_xzm_slice_kind_uses_xzones(chunk->xzc_bits.xzcb_kind) || block_index < xz->xz_chunk_capacity failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4502)";
        __break(1u);
        JUMPOUT(0x827A8);
      }

      v241 = v219;
      v203 = *(v219 + 368) & 1;
      if (v203)
      {
        v242 = v211;
        v243 = v211;
        _X8 = v211;
        __asm { LDG             X8, [X8] }

        v211 = _X8;
        v248 = v218;
        v247 = _X8;
        v246 = v218;
        v245 = _X8;
        if ((HIBYTE(v218) & 0xF) != (HIBYTE(_X8) & 0xF))
        {
          v221 = 0;
          goto LABEL_116;
        }
      }

      v303 = v219;
      v302 = v212;
      v301 = v208;
      v300 = v209;
      v299 = v206;
      v298 = v211;
      if ((*(v212 + 32) & 0xF) != v208)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == kind failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4379)";
        __break(1u);
        JUMPOUT(0x828B0);
      }

      switch(v301)
      {
        case 2:
          goto LABEL_95;
        case 5:
          v288 = v300 / v299;
          v311 = v302;
          v310 = v300 / v299;
          if ((*(v302 + 32) & 0xF) != 5)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_SMALL_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:973)";
            __break(1u);
            JUMPOUT(0x82A4CLL);
          }

          v304 = (*v311 >> v310) & 1;
          break;
        case 6:
LABEL_95:
          v297 = 0;
          if (*(v302 + 12))
          {
            __asm { MSR             TCO, #1 }

            v295 = *v298;
            v296 = v295;
            v294 = v295;
            v297 = v295;
            __asm { MSR             TCO, #0 }
          }

          else
          {
            v292 = *v298;
            v293 = v292;
            v291 = v292;
            v297 = v292;
          }

          v290 = *(v303 + 320) ^ v298;
          if (v301 == 6)
          {
            v306 = v290;
            v305 = v290 & 0xF0FFFFFFFFFFFFFFLL;
            v290 &= 0xF0FFFFFFFFFFFFFFLL;
          }

          if (v297 == v290)
          {
            is_free_slow = _xzm_xzone_freelist_chunk_block_is_free_slow(v303, v302, v298);
            v304 = is_free_slow & 1;
          }

          else
          {
            v304 = 0;
          }

          break;
        default:
          v304 = 0;
          break;
      }

      if (v304 == 1)
      {
        v221 = 0;
      }

      else
      {
        if (v216)
        {
          *v216 = v207;
        }

        if (v215)
        {
          *v215 = v211;
        }

        if (v214)
        {
          *v214 = v206;
        }

        v221 = v212;
      }

      goto LABEL_116;
    }

    v259 = v250;
    if ((*(v250 + 32) & 0xF) == 4)
    {
      v258 = v259 - *(v259 + 36);
      if (v258 < (v259 & 0xFFFFFFFFFFFFC000 | 0x858))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion out_slice >= ((xzm_segment_t)((uintptr_t)slice & ~(XZM_METAPOOL_SEGMENT_BLOCK_SIZE - 1)))->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:609)";
        __break(1u);
        JUMPOUT(0x820B0);
      }

      v262 = v258;
      v261 = v259;
      v27 = *(v258 + 32) & 0xF;
      if ((v27 - 1) < 2)
      {
        v263 = v262 == v261;
      }

      else if (v27 == 3 || (v27 - 5) < 5)
      {
        if (v261 < v262)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice >= span failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:587)";
          __break(1u);
          JUMPOUT(0x82154);
        }

        v263 = v261 < v262 + 48 * *(v262 + 40);
      }

      else
      {
        v263 = 0;
      }

      if (v263)
      {
        v260 = v258;
      }

      else
      {
        v260 = v259;
      }
    }

    else
    {
      v260 = v259;
    }

    v249 = v260;
    v308 = *(v260 + 32) & 0xF;
    if (v308 >= 2u)
    {
      if (v308 == 2)
      {
LABEL_50:
        v309 = 1;
        goto LABEL_51;
      }

      if (v308 - 3 >= 2)
      {
        if (v308 - 5 >= 4)
        {
          v307 = v308;
          qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
          qword_D8158 = v308;
          __break(1u);
          JUMPOUT(0x82270);
        }

        goto LABEL_50;
      }
    }

    v309 = 0;
LABEL_51:
    if (v309 == 1)
    {
      v26 = v249;
    }

    else
    {
      v26 = 0;
    }

    v253 = v26;
    goto LABEL_55;
  }

  v221 = 0;
LABEL_116:
  v189 = v221;
LABEL_117:
  v174 = v189;
  if (v177)
  {
    *v177 = v174;
  }

  if (v174)
  {
    if (v176 == v178)
    {
      v180 = v175;
    }

    else
    {
      v173 = v178 - v176;
      v180 = v175 - (v178 - v176);
    }
  }

  else
  {
    v180 = _xzm_ptr_size_outlined(v179, v178);
  }

  v32 = v180;
  v31 = 0;
  if (v180 || (*(a1 + 360) & 0x80) == 0)
  {
    goto LABEL_252;
  }

  if (*(a1 + 240))
  {
    v22 = *(a1 + 240);
  }

  else
  {
    v22 = a1;
  }

  v31 = v22;
  v40 = v22;
  v39 = a2;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v49 = v22;
  v47 = 0;
  v46 = &v37;
  v45 = &v36;
  v44 = a2;
  v52 = a2;
  v51 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v48 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v53 = v22;
  if (*(v22 + 240))
  {
    v21 = *(v22 + 240);
  }

  else
  {
    v21 = v53;
  }

  v43 = v21;
  v57 = v48;
  v56 = v21;
  v55 = 0;
  v62 = v48;
  v61 = &v55;
  v60 = v48;
  if (v48 >> 36)
  {
    *v61 = 0;
    v63 = 0x4000;
  }

  else
  {
    v59 = v60 >> 22;
    *v61 = 0;
    if (v59 >= 0x4000)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segindex < XZM_SEGMENT_TABLE_ENTRIES failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:169)";
      __break(1u);
      JUMPOUT(0x82D50);
    }

    v63 = v59;
  }

  v54 = v63;
  if (v63 < 0x4000)
  {
    v58 = *(v56 + 488) + 4 * v54;
  }

  else
  {
    v58 = 0;
  }

  v42 = v58;
  if (v58)
  {
    v81 = *v42;
    v80 = v49;
    v79 = v44;
    v78 = v48;
    v77 = v47;
    v76 = v46;
    v75 = v45;
    v105 = v81;
    v74 = (v81 & 0x7FFFFFFF) << 14;
    if (!v74)
    {
      v82 = 0;
LABEL_243:
      v50 = v82;
      goto LABEL_244;
    }

    v113 = v74;
    v112 = v78;
    v117 = v74;
    v116 = v78;
    v127 = v74;
    v126 = v78;
    v131 = v74;
    v130 = v78;
    v134 = v74;
    v136 = v74;
    v135 = 0;
    v129 = v78 - *(v74 + 72);
    v144 = v74;
    v145 = v74;
    v143 = *(v74 + 12);
    if (v143 << 14)
    {
      v142 = v131;
      v146 = v131;
      v141 = *(v131 + 12);
      v140 = v131;
      v147 = v131;
      v139 = *(v131 + 12);
      v20 = (v141 << 14) - (v139 << 14) + 0x400000;
    }

    else
    {
      v138 = v131;
      v148 = v131;
      v137 = *(v131 + 12);
      v20 = v137 << 14;
    }

    v128 = v20;
    v19 = 0;
    if ((v129 & 0x8000000000000000) == 0)
    {
      v19 = v129 < v128;
    }

    if (!v19)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion diff >= 0 && diff < (ptrdiff_t)rounded_size failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:460)";
      __break(1u);
      JUMPOUT(0x82FB0);
    }

    v125 = v129;
    v133 = v127;
    v132 = v129;
    v115 = v129 >> 14;
    if (v115 >= *(v117 + 16))
    {
      v118 = 0;
    }

    else
    {
      v118 = v117 + 48 * v115 + 2136;
    }

    v111 = v118;
    if (!v118)
    {
      v114 = 0;
LABEL_182:
      v73 = v114;
      if (!v114)
      {
        v82 = 0;
        goto LABEL_243;
      }

      if (*(v73 + 34) != *(v80 + 208))
      {
        v82 = 0;
        goto LABEL_243;
      }

      v72 = v78;
      v89 = v80;
      v88 = v73;
      v87 = 0;
      v91 = v80;
      v90 = v73;
      v94 = v80;
      v93 = v73;
      v92 = v73 & 0xFFFFFFFFFFFFC000;
      v16 = 1;
      if ((v73 & 0xFFFFFFFFFFFFC000) != 0)
      {
        v15 = 0;
        if (v93 >= v92 + 2136)
        {
          v15 = v93 < v92 + 48 * *(v92 + 16) + 2136;
        }

        v16 = v15;
      }

      if ((v16 & 1) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
        __break(1u);
        JUMPOUT(0x834D8);
      }

      v96 = v92;
      v95 = v90;
      v101 = v92;
      v100 = v90;
      if (v90 < v92 + 2136)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
        __break(1u);
        JUMPOUT(0x8353CLL);
      }

      v99 = 0xAAAAAAAAAAAAAAABLL * ((v100 - v101 - 2136) >> 4);
      if (v99 >= *(v101 + 16))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
        __break(1u);
        JUMPOUT(0x8359CLL);
      }

      v98 = v92;
      v97 = v99;
      v71 = *(v92 + 72) + (v99 << 14);
      v70 = v72 - v71;
      v69 = *(v73 + 32) & 0xF;
      v68 = 0;
      v67 = 0;
      v85 = v69;
      if (v69 == 2 || v69 == 6 || v69 == 5)
      {
        v68 = *(v80 + 216) + 96 * *(v73 + 33);
        v67 = *(v68 + 48);
        if (!XZM_FAST_ALIGNED(v70, v67, *(v68 + 64)))
        {
          v82 = 0;
          goto LABEL_243;
        }
      }

      else
      {
        v67 = *(v73 + 40) << 14;
        v66 = v70 % v67;
        if (v70 % v67)
        {
          v82 = 0;
          goto LABEL_243;
        }
      }

      v65 = v70 / v67;
      v83 = *(v73 + 32) & 0xF;
      v84 = v83 == 2 || v83 == 6 || v83 == 5;
      v14 = 1;
      if (v84)
      {
        v14 = v65 < *(v68 + 68);
      }

      if (!v14)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !_xzm_slice_kind_uses_xzones(chunk->xzc_bits.xzcb_kind) || block_index < xz->xz_chunk_capacity failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4502)";
        __break(1u);
        JUMPOUT(0x837B8);
      }

      v102 = v80;
      v64 = *(v80 + 368) & 1;
      if (v64)
      {
        v103 = v72;
        v104 = v72;
        _X8 = v72;
        __asm { LDG             X8, [X8] }

        v72 = _X8;
        v109 = v79;
        v108 = _X8;
        v107 = v79;
        v106 = _X8;
        if ((HIBYTE(v79) & 0xF) != (HIBYTE(_X8) & 0xF))
        {
          v82 = 0;
          goto LABEL_243;
        }
      }

      v164 = v80;
      v163 = v73;
      v162 = v69;
      v161 = v70;
      v160 = v67;
      v159 = v72;
      if ((*(v73 + 32) & 0xF) != v69)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == kind failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_malloc.c:4379)";
        __break(1u);
        JUMPOUT(0x838C0);
      }

      switch(v162)
      {
        case 2:
          goto LABEL_222;
        case 5:
          v149 = v161 / v160;
          v172 = v163;
          v171 = v161 / v160;
          if ((*(v163 + 32) & 0xF) != 5)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_SMALL_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:973)";
            __break(1u);
            JUMPOUT(0x83A5CLL);
          }

          v165 = (*v172 >> v171) & 1;
          break;
        case 6:
LABEL_222:
          v158 = 0;
          if (*(v163 + 12))
          {
            __asm { MSR             TCO, #1 }

            v156 = *v159;
            v157 = v156;
            v155 = v156;
            v158 = v156;
            __asm { MSR             TCO, #0 }
          }

          else
          {
            v153 = *v159;
            v154 = v153;
            v152 = v153;
            v158 = v153;
          }

          v151 = *(v164 + 320) ^ v159;
          if (v162 == 6)
          {
            v167 = v151;
            v166 = v151 & 0xF0FFFFFFFFFFFFFFLL;
            v151 &= 0xF0FFFFFFFFFFFFFFLL;
          }

          if (v158 == v151)
          {
            v150 = _xzm_xzone_freelist_chunk_block_is_free_slow(v164, v163, v159);
            v165 = v150 & 1;
          }

          else
          {
            v165 = 0;
          }

          break;
        default:
          v165 = 0;
          break;
      }

      if (v165 == 1)
      {
        v82 = 0;
      }

      else
      {
        if (v77)
        {
          *v77 = v68;
        }

        if (v76)
        {
          *v76 = v72;
        }

        if (v75)
        {
          *v75 = v67;
        }

        v82 = v73;
      }

      goto LABEL_243;
    }

    v120 = v111;
    if ((*(v111 + 32) & 0xF) == 4)
    {
      v119 = v120 - *(v120 + 36);
      if (v119 < (v120 & 0xFFFFFFFFFFFFC000 | 0x858))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion out_slice >= ((xzm_segment_t)((uintptr_t)slice & ~(XZM_METAPOOL_SEGMENT_BLOCK_SIZE - 1)))->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:609)";
        __break(1u);
        JUMPOUT(0x830C0);
      }

      v123 = v119;
      v122 = v120;
      v18 = *(v119 + 32) & 0xF;
      if ((v18 - 1) < 2)
      {
        v124 = v123 == v122;
      }

      else if (v18 == 3 || (v18 - 5) < 5)
      {
        if (v122 < v123)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice >= span failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:587)";
          __break(1u);
          JUMPOUT(0x83164);
        }

        v124 = v122 < v123 + 48 * *(v123 + 40);
      }

      else
      {
        v124 = 0;
      }

      if (v124)
      {
        v121 = v119;
      }

      else
      {
        v121 = v120;
      }
    }

    else
    {
      v121 = v120;
    }

    v110 = v121;
    v169 = *(v121 + 32) & 0xF;
    if (v169 >= 2u)
    {
      if (v169 == 2)
      {
LABEL_177:
        v170 = 1;
        goto LABEL_178;
      }

      if (v169 - 3 >= 2)
      {
        if (v169 - 5 >= 4)
        {
          v168 = v169;
          qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
          qword_D8158 = v169;
          __break(1u);
          JUMPOUT(0x83280);
        }

        goto LABEL_177;
      }
    }

    v170 = 0;
LABEL_178:
    if (v170 == 1)
    {
      v17 = v110;
    }

    else
    {
      v17 = 0;
    }

    v114 = v17;
    goto LABEL_182;
  }

  v50 = 0;
LABEL_244:
  v35 = v50;
  if (v38)
  {
    *v38 = v50;
  }

  if (v35)
  {
    if (v37 == v39)
    {
      v41 = v36;
    }

    else
    {
      v41 = v36 - (v39 - v37);
    }
  }

  else
  {
    v41 = _xzm_ptr_size_outlined(v40, v39);
  }

  v32 = v41;
LABEL_252:
  if (!v32)
  {
    qword_D8128 = "BUG IN CLIENT OF LIBMALLOC: pointer being freed was not allocated";
    qword_D8158 = a2;
    __break(1u);
    JUMPOUT(0x83BE8);
  }

  if ((*(a1 + 360) & 0x20) != 0 && v32 >= 0x401)
  {
    _platform_memset();
  }

  if (v31)
  {
    xzm_malloc_zone_free(v31, a2);
  }

  else
  {
    xzm_malloc_zone_free(a1, a2);
  }
}