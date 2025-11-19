uint64_t sub_1000245E4(void *a1, int *a2, int a3, int a4)
{
  v4 = *a1;
  add_explicit = atomic_fetch_add_explicit(a1 + 3, 0x1000001uLL, memory_order_relaxed);
  if ((add_explicit & 0xFFFFFF) >= 0x186A1)
  {
    sub_1000A5140();
  }

  v10 = (add_explicit >> 24) & 0xFFFFF;
  if (v10 == 0xFFFFF)
  {
    panic("Get count overflowed for object %p!\n", a1);
  }

  v11 = (-(add_explicit >> 44) & 0xFFFFF) != 0 && (add_explicit & 0xFFFFFF) == v10;
  if (v11 && (-(atomic_fetch_add_explicit(a1 + 3, 0, memory_order_relaxed) >> 44) & 0xFFFFF) != 0)
  {
    atomic_fetch_or_explicit(a1 + 8, 2u, memory_order_relaxed);
    atomic_fetch_add_explicit(a1 + 3, 0xFFFFFFFFFEFFFFFFLL, memory_order_relaxed);
    if (a3)
    {
      v12 = pthread_rwlock_unlock((v4 + 128));
      if (v12)
      {
        panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 4153, v12);
      }
    }

    v13 = *a2 % 0x3B9ACA00u;
    v18.tv_sec = *a2 / 0x3B9ACA00uLL;
    v18.tv_nsec = v13;
    if (a4 == 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (cv_wait_rw((v4 + 1328), v4, v14, &v18) == 35 && *a2 != 2000000000)
    {
      if ((4 * *a2) >= 0x77359400)
      {
        v15 = 2000000000;
      }

      else
      {
        v15 = 4 * *a2;
      }

      *a2 = v15;
    }

    if (a3)
    {
      v16 = pthread_rwlock_wrlock((v4 + 128));
      if (v16)
      {
        panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 4170, v16);
      }
    }

    return 1;
  }

  else
  {
    result = 0;
    atomic_fetch_add_explicit(a1 + 3, 0xFFFFFFFFFF000000, memory_order_relaxed);
  }

  return result;
}

uint64_t obj_write_prepare(uint64_t *a1, int a2, uint64_t a3, int8x16_t a4, int8x16_t a5)
{
  v5 = *(*a1 + 392);
  if (a1[1])
  {
    v6 = a1[1];
  }

  else
  {
    v6 = *(*a1 + 392);
  }

  if (*(v5 + 627))
  {
    return 30;
  }

  v11 = (*(*(v5 + 376) + 36) + *(a1 + 12) - 1) / *(*(v5 + 376) + 36);
  v13 = a1 + 18;
  v12 = a1[18];
  v14 = a1[2];
  v15 = a1[15];
  v112 = v15;
  if (a1[19])
  {
    v113 = a1[19];
  }

  else
  {
    v113 = a1[16];
    if (!v113)
    {
      if ((v14 & 0xC0000000) != 0)
      {
        if (nx_ratelimit_log_allowed(*(*v6 + 392)))
        {
          if (*(v6 + 36) != 13)
          {
            v75 = *(v6 + 384) + 212;
          }

          v100 = *(a1 + 9);
          v106 = *(a1 + 10);
          v88 = a1[2];
          v94 = *(a1 + 8);
          v82 = a1[14];
          log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x non-virtual object missing paddr!\n", v31, v32, v33, v34, v35, v36, v37, "obj_write_prepare");
        }

        return 22;
      }

      if ((v14 & 0x40) == 0)
      {
        v40 = v11;
        v41 = omap_get(v6, a1[14], v15, &v113, 0, 0, 0);
        v15 = v112;
        v11 = v40;
        if ((v41 & 0xFFFFFFFD) != 0)
        {
          v7 = v41;
          if (!nx_ratelimit_log_allowed(*(*v6 + 392)))
          {
            return v7;
          }

          if (*(v6 + 36) != 13)
          {
            v78 = *(v6 + 384) + 212;
          }

          v108 = *(a1 + 10);
          v96 = *(a1 + 8);
          v102 = *(a1 + 9);
          v84 = a1[14];
          v90 = a1[2];
          v39 = "%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error getting mapping to write %d\n";
LABEL_84:
          log_err(v39, v24, v25, v26, v27, v28, v29, v30, "obj_write_prepare");
          return v7;
        }
      }

      goto LABEL_53;
    }
  }

  if ((v14 & 0xC0000000) != 0)
  {
    v111 = v11;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_11;
  }

LABEL_53:
  v111 = v11;
  if (v12 == v15)
  {
    v18 = v113;
  }

  else
  {
    v18 = v113;
    if (a2 || v12)
    {
      goto LABEL_62;
    }
  }

  v42 = v18;
  v18 = 0;
  if (v42)
  {
    v16 = 0;
LABEL_59:
    v43 = a1[19];
    if (!v43)
    {
      v17 = 0;
      goto LABEL_11;
    }

    v17 = 0;
    if (v43 == a1[16])
    {
LABEL_11:
      if ((*(a1 + 18) & 0x8002000) == 0)
      {
        v19 = a1[7];
        a4.i64[0] = *(a1 + 36);
        v19[3] = a4.i64[0];
        if (v12)
        {
          v20 = v12;
        }

        else
        {
          v20 = v15;
        }

        v19[1] = a1[14];
        v19[2] = v20;
        obj_checksum_set_phys(*(*a1 + 392), v19, *(a1 + 12), a4, a5);
        v21 = a1[7];
        if ((a1[2] & 0xC0000040) == 0 && a1[14] != *(v21 + 8))
        {
          sub_1000A516C();
        }

        if (!*(v21 + 16))
        {
          sub_1000A5198();
        }
      }

      v7 = 0;
      goto LABEL_19;
    }

    goto LABEL_92;
  }

LABEL_62:
  v44 = a1[2];
  v45 = v44 & 0xC00000000;
  if ((v44 & 0x800000000) != 0)
  {
    v46 = 49;
  }

  else
  {
    v46 = 41;
  }

  if ((v44 & 0x100000000000) != 0)
  {
    v47 = 65600;
  }

  else
  {
    v47 = 131136;
  }

  v48 = v47 | v46;
  v49 = v45 == 0;
  v50 = v45 != 0;
  if (v49)
  {
    v48 = 72;
  }

  if (a2)
  {
    v16 = 0;
  }

  else
  {
    v16 = v50;
  }

  if (a2)
  {
    v51 = 72;
  }

  else
  {
    v51 = v48;
  }

  if ((v44 & 0x10000000) != 0)
  {
    v113 = 0;
  }

  else
  {
    if (*(a1 + 18) == 11 || *(a1 + 20) == 11)
    {
      v52 = 2;
    }

    else
    {
      v52 = 1;
    }

    v113 = v52;
  }

  v54 = spaceman_alloc(v6, v51, v11, a3, &v113, 0);
  if (v54)
  {
    v7 = v54;
    if (nx_ratelimit_log_allowed(*(*v6 + 392)))
    {
      if (*(v6 + 36) != 13)
      {
        v74 = *(v6 + 384) + 212;
      }

      v110 = *(a1 + 12);
      v109 = a1[18];
      v99 = *(a1 + 9);
      v105 = *(a1 + 10);
      v87 = a1[2];
      v93 = *(a1 + 8);
      v81 = a1[14];
      log_err("%s:%d: %s oid %lld flags 0x%llx 0x%x type 0x%x/0x%x xid %lld (cur xid %lld) error allocating space to write %d; blkcount %d (o_size_phys %d) paddr %lld\n", v55, v56, v57, v58, v59, v60, v61, "obj_write_prepare");
    }

    v16 = 0;
    v17 = 0;
    goto LABEL_112;
  }

  v15 = v112;
  v17 = v113;
  v43 = v113;
  if (!v113)
  {
    goto LABEL_59;
  }

LABEL_92:
  v113 = v43;
  v62 = a1[2];
  v63 = (v62 >> 2) & 0x700 | (v62 >> 8) & 0xE0 | 4;
  if ((v62 & 0x10000000) == 0)
  {
    v63 = 0;
  }

  v64 = (v62 >> 26) & 8;
  if (v12)
  {
    v65 = v12;
  }

  else
  {
    v65 = v15;
  }

  v66 = omap_set(v6, a1[14], v65, v43, *(a1 + 12), v63 | v64, a3);
  if (!v66)
  {
    v15 = v112;
    goto LABEL_11;
  }

  v7 = v66;
  if (nx_ratelimit_log_allowed(*(*v6 + 392)))
  {
    if (*(v6 + 36) != 13)
    {
      v77 = *(v6 + 384) + 212;
    }

    v107 = *(a1 + 10);
    v95 = *(a1 + 8);
    v101 = *(a1 + 9);
    v83 = a1[14];
    v89 = a1[2];
    log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error setting mapping for write %d\n", v67, v68, v69, v70, v71, v72, v73, "obj_write_prepare");
  }

  if (!a2)
  {
LABEL_19:
    pthread_mutex_lock(*a1);
    if (v17)
    {
      a1[19] = v17;
    }

    if (v16)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

LABEL_112:
  pthread_mutex_lock(*a1);
  v18 = v17;
  if (v16)
  {
LABEL_22:
    a1[2] &= 0xFFFFEFF3FFFFFFFFLL;
  }

LABEL_23:
  if (!v7)
  {
    v22 = a1[2];
    if ((v22 & 0x40) != 0)
    {
      a1[2] = v22 & 0xFFFFFFFFFFFFFFBFLL;
    }

    if (v12)
    {
      a1[15] = v12;
    }

    v23 = a1[19];
    if (v23)
    {
      a1[16] = v23;
    }

    if ((atomic_fetch_or_explicit(a1 + 8, 0, memory_order_relaxed) & 1) == 0)
    {
      *v13 = 0;
      v13[1] = 0;
    }
  }

  obj_cache_unlock_write(*a1);
  if (v18)
  {
    if (v12)
    {
      if (omap_delete(v6, a1[14], v112, v18, *(a1 + 12), 0, a3) && nx_ratelimit_log_allowed(*(*v6 + 392)))
      {
        if (*(v6 + 36) != 13)
        {
          v38 = *(v6 + 384) + 212;
        }

        v103 = *(a1 + 10);
        v91 = *(a1 + 8);
        v97 = *(a1 + 9);
        v79 = a1[14];
        v85 = a1[2];
        v39 = "%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error deleting old mapping %d\n";
        goto LABEL_84;
      }
    }

    else if (spaceman_free(v6, 64, v18, v111, a3) && nx_ratelimit_log_allowed(*(*v6 + 392)))
    {
      if (*(v6 + 36) != 13)
      {
        v53 = *(v6 + 384) + 212;
      }

      v104 = *(a1 + 10);
      v92 = *(a1 + 8);
      v98 = *(a1 + 9);
      v80 = a1[14];
      v86 = a1[2];
      v39 = "%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error freeing old location %d\n";
      goto LABEL_84;
    }
  }

  return v7;
}

void obj_cache_flush_unprepare(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = pthread_rwlock_wrlock((a1 + 128));
  if (v2)
  {
    panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 1410, v2);
  }

  for (i = *(a1 + 856); i; i = *(i + 104))
  {
    if ((atomic_fetch_or_explicit((i + 32), 1u, memory_order_relaxed) & 1) == 0)
    {
      v4 = i + 88;
      if (*(i + 88) != 3735928559)
      {
        sub_1000A51C4();
      }

      v5 = *(i + 36) >> 30;
      if (v5)
      {
        if (v5 != 1)
        {
          panic("bad object type in flush list: oid %lld flags 0x%llx 0x%x\n", *(i + 112), *(i + 16), *(i + 32));
        }

        v7 = *(a1 + 848);
        *(i + 88) = 0;
        *(i + 96) = v7;
        *v7 = i;
        *(a1 + 848) = v4;
        ++*(a1 + 912);
      }

      else
      {
        v6 = *(a1 + 832);
        *(i + 88) = 0;
        *(i + 96) = v6;
        *v6 = i;
        *(a1 + 832) = v4;
        ++*(a1 + 908);
      }
    }

    v8 = *(i + 16);
    *(i + 16) = v8 & 0xFFFFFDFFFFFFFFFFLL;
    if ((v8 & 0x80) != 0)
    {
      *(i + 16) = v8 & 0xFFFFFDFFFFFFFF7FLL;
      cv_wakeup((a1 + 1328));
    }
  }

  v9 = pthread_rwlock_unlock((a1 + 128));
  if (v9)
  {
    panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 1430, v9);
  }

  obj_cache_unlock_write(a1);
  v10 = *(a1 + 856);
  if (v10)
  {
    v11 = (a1 + 856);
    do
    {
      v12 = *(v10 + 104);
      *v11 = v12;
      if (!v12)
      {
        *(a1 + 864) = v11;
      }

      *(v10 + 104) = 3735928559;
      --*(a1 + 932);
      v13 = *(v10 + 64);
      if (v13)
      {
        if (v13 != *(v10 + 56))
        {
          fs_obj_zfree_oc(v13, *(v10 + 48), *(v10 + 16), a1);
        }

        *(v10 + 64) = 0;
        *(v10 + 136) = 0;
      }

      obj_release(v10);
      v10 = *v11;
    }

    while (*v11);
  }

  pthread_mutex_lock(a1);
  if (*(a1 + 936) >= 2u)
  {
    cv_wakeup((a1 + 1328));
  }

  *(a1 + 936) = 0;

  obj_cache_unlock_write(a1);
}

void obj_release(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (!v2)
  {
    v2 = *(v3 + 392);
  }

  add_explicit = atomic_fetch_add_explicit(a1 + 3, 0xFFFFEFFFFFFFFFFFLL, memory_order_relaxed);
  v5 = add_explicit & 0xFFFFFF;
  if ((add_explicit & 0xFFFFFF) == 0)
  {
    panic("Reference count underflowed for object %p!\n", a1);
  }

  v6 = -(add_explicit >> 44) & 0xFFFFF;
  if (v6 == 0x80000)
  {
    panic("Release count overflowed for object %p!\n", a1);
  }

  if (v5 >= 2)
  {
    v7 = atomic_fetch_add_explicit(a1 + 3, 0x100000000000uLL, memory_order_relaxed);
    if ((v7 & 0xFFFFFF) == 0 && (-(v7 >> 44) & 0xFFFFF) == 1)
    {

      cv_wakeup((v3 + 1328));
    }

    return;
  }

  v8 = pthread_rwlock_trywrlock((a1 + 22));
  if (v8)
  {
    panic("%s:%d: trywrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 5288, v8);
  }

  v9 = pthread_rwlock_unlock((a1 + 22));
  if (v9)
  {
    panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 5288, v9);
  }

  v10 = a1[2];
  if ((v10 & 0xC) != 0 || (v10 & 0xC00000000) != 0 && (atomic_fetch_or_explicit(a1 + 8, 0, memory_order_relaxed) & 1) == 0)
  {
    pthread_mutex_lock(v3);
    v11 = 0;
    v10 = a1[2];
    if (v6 && (v10 & 8) != 0)
    {
      if ((-(atomic_fetch_add_explicit(a1 + 3, 0, memory_order_relaxed) >> 44) & 0xFFFFE) != 0)
      {
        do
        {
          v36 = xmmword_1000AAED0;
          cv_wait_rw((v3 + 1328), v3, 2, &v36);
        }

        while ((-(atomic_fetch_add_explicit(a1 + 3, 0, memory_order_relaxed) >> 44) & 0xFFFFE) != 0);
        v11 = 0;
        v10 = a1[2];
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if ((v10 & 0x80000008) == 0 && *(a1 + 18) != 13 && (a1[4] & 1) == 0)
  {
    v12 = pthread_rwlock_rdlock((v3 + 128));
    if (v12)
    {
      panic("%s:%d: rdlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 5319, v12);
    }

    sub_10002AF54(v3, a1);
    v13 = pthread_rwlock_unlock((v3 + 128));
    if (v13)
    {
      panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 5321, v13);
    }
  }

  v14 = a1[14];
  v16 = *(a1 + 9);
  v15 = *(a1 + 10);
  v17 = a1[2];
  if (v11)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    goto LABEL_44;
  }

  if ((v17 & 4) != 0)
  {
    v21 = v17 & 0xFFFFFFFFFFFFFFFBLL;
    a1[2] = v17 & 0xFFFFFFFFFFFFFFFBLL;
    v20 = a1;
  }

  else
  {
    v20 = 0;
    v21 = a1[2];
  }

  if ((v21 & 0xC00000000) != 0)
  {
    v22 = atomic_fetch_or_explicit(a1 + 8, 0, memory_order_relaxed);
    if ((v21 & 8) != 0 || (v22 & 1) == 0)
    {
      v23 = *(*(*(v3 + 392) + 376) + 36);
      v18 = (v23 + *(a1 + 12) - 1) / v23;
      if ((v21 & 0x800000000) != 0)
      {
        v24 = 80;
      }

      else
      {
        v24 = 72;
      }

      if ((v21 & 0x100000000000) != 0)
      {
        v25 = 0x10000;
      }

      else
      {
        v25 = 0x20000;
      }

      v19 = v24 | v25;
      v21 &= 0xFFFFEFF3FFFFFFFFLL;
      a1[2] = v21;
      if ((v21 & 8) == 0)
      {
        goto LABEL_43;
      }

LABEL_55:
      if ((v21 & 0x80000000) != 0)
      {
        obj_cache_ephemeral_adjust(v3, v21, *(a1 + 12), -1);
      }

      else
      {
        v26 = *(v3 + 684);
        if (!v26)
        {
          sub_1000A51F0();
        }

        *(v3 + 684) = v26 - 1;
      }

      atomic_fetch_add_explicit(a1 + 3, 0x100000000000uLL, memory_order_relaxed);
      v27 = atomic_fetch_and_explicit(a1 + 8, 0xFFFFFFFD, memory_order_relaxed);
      sub_100029F34(a1, 0);
      obj_cache_unlock_write(v3);
      if ((v27 & 2) != 0)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }
  }

  v19 = 0;
  v18 = 0;
  if ((v21 & 8) != 0)
  {
    goto LABEL_55;
  }

LABEL_43:
  obj_cache_unlock_write(v3);
LABEL_44:
  if ((atomic_fetch_and_explicit(a1 + 8, 0xFFFFFFFD, memory_order_relaxed) & 2) != 0)
  {
    v20 = a1;
  }

  if ((atomic_fetch_add_explicit(a1 + 3, 0x100000000000uLL, memory_order_relaxed) & 0xFFFFFF) != 0)
  {
    goto LABEL_61;
  }

LABEL_60:
  if (v20)
  {
LABEL_61:
    cv_wakeup((v3 + 1328));
  }

  if (v18 && spaceman_unreserve(v2, v19, v18))
  {
    if (*(v2 + 36) != 13)
    {
      v35 = *(v2 + 384) + 212;
    }

    log_err("%s:%d: %s oid 0x%llx flags 0x%llx type 0x%x/0x%x error unreserving space on non-dirty release: %d\n", v28, v29, v30, v31, v32, v33, v34, "obj_release");
  }
}

void obj_was_being_written_wakeup(uint64_t a1)
{
  v2 = *a1;
  pthread_mutex_lock(*a1);
  v3 = *(a1 + 16);
  *(a1 + 16) = v3 & 0xFFFFFDFFFFFFFF7FLL;
  obj_cache_unlock_write(v2);
  if ((v3 & 0x80) != 0)
  {

    cv_wakeup(&v2[20].__opaque[40]);
  }
}

uint64_t obj_cache_flush_write(pthread_mutex_t *a1, unsigned int a2)
{
  v3 = *&a1[13].__opaque[16];
  if (!v3)
  {
LABEL_30:
    pthread_mutex_lock(a1);
    if (*&a1[14].__opaque[32] >= 2u)
    {
      cv_wakeup(&a1[20].__opaque[40]);
    }

    *&a1[14].__opaque[32] = 0;
    obj_cache_unlock_write(a1);
    v5 = 0;
    if (*&a1[14].__opaque[28])
    {
      sub_1000A521C();
    }

    return v5;
  }

  v4 = 0;
  v5 = 0;
  v6 = &a1[13].__opaque[16];
  v7 = (a2 >> 1) & 1;
  do
  {
    v8 = *(v3 + 104);
    while (1)
    {
      pthread_mutex_lock((a1 + 328));
      if ((atomic_fetch_or_explicit((v3 + 32), 8u, memory_order_acquire) & 8) == 0)
      {
        break;
      }

      pthread_mutex_unlock((a1 + 328));
    }

    v11 = obj_write_internal(v3, v7, v9, v10);
    if (!v11)
    {
      v22 = *(v3 + 56);
      v21 = *(v3 + 64);
      *(v3 + 64) = 0;
      *(v3 + 136) = 0;
      atomic_fetch_and_explicit((v3 + 32), 0xFFFFFFF7, memory_order_release);
      pthread_mutex_unlock((a1 + 328));
      if (v21 && v21 != v22)
      {
        fs_obj_zfree_oc(v21, *(v3 + 48), *(v3 + 16), a1);
      }

      if (v4)
      {
        v23 = (v4 + 104);
        v24 = *(*(v4 + 104) + 104);
        *(v4 + 104) = v24;
        if (v24)
        {
LABEL_18:
          *(v3 + 104) = 3735928559;
          --*&a1[14].__opaque[28];
          obj_was_being_written_wakeup(v3);
          obj_release(v3);
          goto LABEL_25;
        }
      }

      else
      {
        v26 = *(*v6 + 104);
        *v6 = v26;
        v23 = &a1[13].__opaque[16];
        if (v26)
        {
          goto LABEL_18;
        }
      }

      *&a1[13].__opaque[24] = v23;
      goto LABEL_18;
    }

    v12 = v11;
    atomic_fetch_and_explicit((v3 + 32), 0xFFFFFFF7, memory_order_release);
    pthread_mutex_unlock((a1 + 328));
    v13 = *(v3 + 8);
    if (!v13)
    {
      v13 = *(*v3 + 392);
    }

    if (nx_ratelimit_log_allowed(*(*v13 + 392)))
    {
      if (*(v13 + 36) != 13)
      {
        v25 = *(v13 + 384) + 212;
      }

      v32 = *(v3 + 40);
      v30 = *(v3 + 32);
      v31 = *(v3 + 36);
      v28 = *(v3 + 112);
      v29 = *(v3 + 16);
      log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error writing: %d\n", v14, v15, v16, v17, v18, v19, v20, "obj_cache_flush_write");
    }

    if (v5)
    {
      v5 = v5;
    }

    else
    {
      v5 = v12;
    }

    v4 = v3;
LABEL_25:
    v3 = v8;
  }

  while (v8);
  if (!v5)
  {
    goto LABEL_30;
  }

  return v5;
}

uint64_t obj_write_internal(void *a1, int a2, int8x16_t a3, int8x16_t a4)
{
  v5 = *(*a1 + 392);
  v6 = *(*(v5 + 376) + 36);
  if (!a2)
  {
    v7 = a1[7];
LABEL_7:
    v8 = a1[19];
    if (!v8)
    {
      v8 = a1[16];
      if (!v8)
      {
        panic("Object has no address: o %p oid %llu flags 0x%llx 0x%x paddr %llu naddr %llu\n", a1, a1[14], a1[2], *(a1 + 8), 0, 0);
      }
    }

    goto LABEL_10;
  }

  v7 = a1[8];
  if (!v7)
  {
    v7 = a1[7];
  }

  v8 = a1[17];
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_10:
  if (*(v5 + 627))
  {
    return 30;
  }

  v10 = a1[2];
  if ((v10 & 0x10000000) != 0)
  {
    v12 = 0;
    LODWORD(v11) = 0;
    if ((v10 & 0x80000000000) != 0)
    {
      v13 = 0;
    }

    else
    {
      v25 = a1[1];
      v13 = 0;
      if (v25)
      {
        if (v10 >> 13)
        {
          if (v10 >> 13 != 1)
          {
            panic("invalid crypto index %d\n");
          }

          v26 = 632;
        }

        else
        {
          v26 = 536;
        }

        v12 = v25 + v26;
        v11 = (v10 >> 10) & 7;
        if (v11)
        {
          if (v11 != 1)
          {
            panic("invalid tweak type %d\n");
          }

          v13 = a1[14] ^ HIDWORD(a1[15]) | a1[14] & 0xFFFFFFFF00000000 ^ (a1[15] << 32);
          LODWORD(v11) = 4;
        }

        else
        {
          v13 = (v10 >> 10) & 7;
        }
      }
    }
  }

  else
  {
    LODWORD(v11) = 0;
    v12 = 0;
    v13 = 0;
  }

  v14 = v6 + *(a1 + 12) - 1;
  if (a2)
  {
    if ((v10 & 0x80020000000) == 0 && obj_checksum_verify_phys(v7, *(a1 + 12), a3, a4))
    {
      v16 = a1 + 1;
      v15 = a1[1];
      if (v15)
      {
        is_panic_on_corruption_enabled = nx_is_panic_on_corruption_enabled(*(v15 + 392));
        v24 = 4048;
      }

      else
      {
        is_panic_on_corruption_enabled = nx_is_panic_on_corruption_enabled(*(*a1 + 392));
        v16 = (*(*a1 + 392) + 384);
        v24 = 212;
      }

      v54 = a1[8];
      v50 = a1[16];
      v52 = a1[7];
      v46 = *(a1 + 9);
      v48 = *(a1 + 10);
      v42 = a1[2];
      v44 = *(a1 + 8);
      v38 = *v16 + v24;
      v40 = a1[14];
      log_corrupt(is_panic_on_corruption_enabled, "%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x paddr 0x%llx error verifying checksum, phys %p/%p buf %p &o_aflags %p &o_phys_flush %p\n", v18, v19, v20, v21, v22, v23, "obj_write_internal");
    }

    if ((atomic_fetch_or_explicit(a1 + 8, 0, memory_order_relaxed) & 1) != 0 && v7 == a1[7])
    {
      v27 = a1[1];
      if (v27)
      {
        v28 = nx_is_panic_on_corruption_enabled(*(v27 + 392));
        v35 = a1 + 1;
        v36 = 4048;
      }

      else
      {
        v28 = nx_is_panic_on_corruption_enabled(*(*a1 + 392));
        v35 = (*(*a1 + 392) + 384);
        v36 = 212;
      }

      v55 = a1[8];
      v51 = a1[16];
      v53 = a1[7];
      v47 = *(a1 + 9);
      v49 = *(a1 + 10);
      v43 = a1[2];
      v45 = *(a1 + 8);
      v39 = *v35 + v36;
      v41 = a1[14];
      log_corrupt(v28, "%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x paddr 0x%llx tx flushing dirty object WITHOUT flush buffer?!, phys %p/%p buf %p &o_aflags %p &o_phys_flush %p\n", v29, v30, v31, v32, v33, v34, "obj_write_internal");
    }
  }

  v37 = *(v5 + 384);
  if (v12 && *(a1[1] + 1152))
  {
    v37 = *(a1[1] + 1152);
  }

  return dev_write_extended(v37, v8, v14 / v6, v7, v12, v13, v11);
}

BOOL obj_cache_tx_start_closing(uint64_t a1)
{
  v1 = *(a1 + 912) + *(a1 + 908);
  if (dev_is_solidstate(*(*(a1 + 392) + 384)))
  {
    v2 = 1024;
  }

  else
  {
    v2 = 256;
  }

  return v1 >= v2;
}

void obj_cache_remove(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = *(a1 + 392);
  }

  v9 = *(*(*(a1 + 392) + 376) + 36);
  pthread_mutex_lock(a1);
  v10 = *(*(a1 + 712) + 8 * (*(a1 + 704) & a3));
  if (v10)
  {
    v63 = 0;
    v11 = 0;
    v12 = v9;
    v13 = 0;
    v14 = 0;
    v15 = (a1 + 720);
    v62 = v12;
    v61 = v12 - 1;
    while (1)
    {
      while (1)
      {
        v16 = v10;
        v17 = (v10 + 72);
        v10 = *(v10 + 72);
        if (v16 != a2 && *(v16 + 8) == a2)
        {
          v18 = *(v16 + 16);
          if ((v18 & 0xC0000000) == 0 && *(v16 + 112) == a3 && *(v16 + 120) == a4)
          {
            break;
          }
        }

LABEL_25:
        if (!v10)
        {
          goto LABEL_34;
        }
      }

      add_explicit = atomic_fetch_add_explicit((v16 + 24), 0, memory_order_relaxed);
      if ((add_explicit & 0xFFFFFF) == ((add_explicit >> 24) & 0xFFFFF))
      {
        if ((v18 & 0xC00000000) != 0)
        {
          v20 = (v61 + *(v16 + 48)) / v62;
          v21 = v14 + v20;
          v22 = v13 + v20;
          if ((v18 & 0x100000000000) != 0)
          {
            v21 = v14;
          }

          else
          {
            v22 = v13;
          }

          v23 = v11 + v20;
          v24 = v63;
          v25 = v63 + v20;
          if ((v18 & 0x100000000000) != 0)
          {
            v23 = v11;
          }

          else
          {
            v25 = v63;
          }

          if ((v18 & 0x800000000) != 0)
          {
            v11 = v23;
            v24 = v25;
          }

          else
          {
            v14 = v21;
            v13 = v22;
          }

          v63 = v24;
          *(v16 + 16) = v18 & 0xFFFFEFF33FFFFFFFLL;
        }

        v26 = *(a1 + 684);
        if (!v26)
        {
          sub_1000A5248();
        }

        *(a1 + 684) = v26 - 1;
        sub_100029F34(v16, 0);
        goto LABEL_25;
      }

      if (v18)
      {
        v27 = *(v16 + 80);
        if (v10)
        {
          *(v10 + 80) = v27;
        }

        *v27 = v10;
      }

      v28 = *v15;
      *v17 = *v15;
      if (v28)
      {
        *(v28 + 80) = v17;
      }

      *v15 = v16;
      *(v16 + 80) = v15;
      *(v16 + 16) = v18 | 9;
      if (!v10)
      {
LABEL_34:
        obj_cache_unlock_write(a1);
        if (v14 && spaceman_unreserve(v8, 0x48u, v14))
        {
          if (*(v8 + 36) != 13)
          {
            v36 = *(v8 + 384) + 212;
          }

          log_err("%s:%d: %s error unreserving space, %lld blocks: %d\n", v29, v30, v31, v32, v33, v34, v35, "obj_cache_remove");
        }

        if (v11 && spaceman_unreserve(v8, 0x50u, v11))
        {
          if (*(v8 + 36) != 13)
          {
            v44 = *(v8 + 384) + 212;
          }

          log_err("%s:%d: %s error unreserving tier2 space, %lld blocks: %d\n", v37, v38, v39, v40, v41, v42, v43, "obj_cache_remove");
        }

        if (v13 && spaceman_unreserve(v8, 0x10048u, v13))
        {
          if (*(v8 + 36) != 13)
          {
            v52 = *(v8 + 384) + 212;
          }

          log_err("%s:%d: %s error unreserving space, %lld blocks: %d\n", v45, v46, v47, v48, v49, v50, v51, "obj_cache_remove");
        }

        if (v63 && spaceman_unreserve(v8, 0x10050u, v63))
        {
          if (*(v8 + 36) != 13)
          {
            v60 = *(v8 + 384) + 212;
          }

          log_err("%s:%d: %s error unreserving tier2 space, %lld blocks: %d\n", v53, v54, v55, v56, v57, v58, v59, "obj_cache_remove");
        }

        return;
      }
    }
  }

  obj_cache_unlock_write(a1);
}

void obj_cache_remove_reverted_fs_objects(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = *(*(*(a1 + 392) + 376) + 36);
  pthread_mutex_lock(a1);
  v84 = *(a2 + 112);
  log_debug("%s:%d: %s removing reverted fs objects for fs %lld: %lld - %lld\n", v9, v10, v11, v12, v13, v14, v15, "obj_cache_remove_reverted_fs_objects");
  v23 = *(a1 + 700);
  if (!v23)
  {
    v25 = 0;
    v96 = 0;
    v97 = 0;
    v98 = 0;
    goto LABEL_46;
  }

  v24 = 0;
  v98 = 0;
  v96 = 0;
  v97 = 0;
  v25 = 0;
  v26 = (a1 + 720);
  v94 = v8 - 1;
  v95 = v8;
  do
  {
    v27 = *(*(a1 + 712) + 8 * v24);
    if (!v27)
    {
      goto LABEL_43;
    }

    do
    {
      while (1)
      {
        v28 = v27;
        v29 = (v27 + 72);
        v27 = *(v27 + 72);
        if (v28 == a2 || *(v28 + 8) != a2 || (*(v28 + 16) & 0xC0000000) != 0)
        {
          goto LABEL_31;
        }

        v30 = *(v28 + 120);
        if (v30 <= *(v28 + 144))
        {
          v30 = *(v28 + 144);
        }

        if (v30 < a3 || v30 > a4)
        {
          goto LABEL_31;
        }

        if (*(v28 + 32))
        {
          v92 = *(v28 + 24);
          v86 = *(v28 + 36);
          v88 = *(v28 + 40);
          v85 = *(v28 + 112);
          log_debug("%s:%d: %s danger: oid %lld type 0x%x/0x%x flags 0x%llx 0x%x xid %lld refs 0x%llx - is dirty\n", v16, v17, v18, v19, v20, v21, v22, "obj_cache_remove_reverted_fs_objects");
        }

        add_explicit = atomic_fetch_add_explicit((v28 + 24), 0, memory_order_relaxed);
        if ((add_explicit & 0xFFFFFF) != ((add_explicit >> 24) & 0xFFFFF))
        {
          break;
        }

        v33 = *(v28 + 16);
        if ((v33 & 0xC00000000) != 0)
        {
          v34 = (v94 + *(v28 + 48)) / v95;
          v35 = v25 + v34;
          v37 = v96;
          v36 = v97;
          v38 = v97 + v34;
          if ((v33 & 0x100000000000) != 0)
          {
            v35 = v25;
          }

          else
          {
            v38 = v97;
          }

          v39 = v96 + v34;
          v40 = v98;
          v41 = v98 + v34;
          if ((v33 & 0x100000000000) != 0)
          {
            v39 = v96;
          }

          else
          {
            v41 = v98;
          }

          if ((v33 & 0x800000000) != 0)
          {
            v37 = v39;
          }

          else
          {
            v25 = v35;
            v36 = v38;
          }

          v96 = v37;
          v97 = v36;
          if ((v33 & 0x800000000) != 0)
          {
            v40 = v41;
          }

          v98 = v40;
          *(v28 + 16) = v33 & 0xFFFFEFF3FFFFFFFFLL;
        }

        v42 = *(a1 + 684);
        if (!v42)
        {
          sub_1000A5274();
        }

        *(a1 + 684) = v42 - 1;
        sub_100029F34(v28, 0);
LABEL_31:
        if (!v27)
        {
          goto LABEL_42;
        }
      }

      v43 = *(v28 + 112);
      if (*(v28 + 120) <= *(v28 + 144))
      {
        v44 = *(v28 + 144);
      }

      v93 = *(v28 + 24);
      v90 = *(v28 + 16);
      v91 = *(v28 + 32);
      v87 = *(v28 + 36);
      v89 = *(v28 + 40);
      log_debug("%s:%d: %s danger: oid %lld type 0x%x/0x%x flags 0x%llx 0x%x xid %lld refs 0x%llx - has refs\n", v16, v17, v18, v19, v20, v21, v22, "obj_cache_remove_reverted_fs_objects");
      v45 = *(v28 + 16);
      if (v45)
      {
        v46 = *(v28 + 72);
        v47 = *(v28 + 80);
        if (v46)
        {
          *(v46 + 80) = v47;
        }

        *v47 = v46;
      }

      v48 = *v26;
      *v29 = *v26;
      if (v48)
      {
        *(v48 + 80) = v29;
      }

      *v26 = v28;
      *(v28 + 80) = v26;
      *(v28 + 16) = v45 | 9;
    }

    while (v27);
LABEL_42:
    v23 = *(a1 + 700);
LABEL_43:
    ++v24;
  }

  while (v24 < v23);
LABEL_46:
  obj_cache_unlock_write(a1);
  if (v97 + v25 + v96 + v98)
  {
    log_debug("%s:%d: %s unreserving %lld blocks for reverted fs objects\n", v49, v50, v51, v52, v53, v54, v55, "obj_cache_remove_reverted_fs_objects");
  }

  if (v25 && spaceman_unreserve(a2, 0x48u, v25))
  {
    log_err("%s:%d: %s error unreserving space, %lld blocks: %d\n", v56, v57, v58, v59, v60, v61, v62, "obj_cache_remove_reverted_fs_objects");
  }

  if (v96 && spaceman_unreserve(a2, 0x50u, v96))
  {
    log_err("%s:%d: %s error unreserving tier2 space, %lld blocks: %d\n", v63, v64, v65, v66, v67, v68, v69, "obj_cache_remove_reverted_fs_objects");
  }

  if (v97 && spaceman_unreserve(a2, 0x10048u, v97))
  {
    log_err("%s:%d: %s error unreserving space, %lld blocks: %d\n", v70, v71, v72, v73, v74, v75, v76, "obj_cache_remove_reverted_fs_objects");
  }

  if (v98)
  {
    if (spaceman_unreserve(a2, 0x10050u, v98))
    {
      log_err("%s:%d: %s error unreserving tier2 space, %lld blocks: %d\n", v77, v78, v79, v80, v81, v82, v83, "obj_cache_remove_reverted_fs_objects");
    }
  }
}

uint64_t obj_xid(uint64_t a1)
{
  if (*(a1 + 120) <= *(a1 + 144))
  {
    return *(a1 + 144);
  }

  else
  {
    return *(a1 + 120);
  }
}

void obj_cache_remove_new_fs_objects(uint64_t a1, uint64_t a2)
{
  v56 = *(*(*(a1 + 392) + 376) + 36);
  v57 = 0;
  v58 = &v57;
  pthread_mutex_lock(a1);
  v4 = pthread_rwlock_wrlock((a1 + 128));
  if (v4)
  {
    panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 2088, v4);
  }

  for (i = *(a1 + 824); i; v58 = v7)
  {
    while (1)
    {
      v6 = i;
      v7 = (i + 88);
      i = *(i + 88);
      if (*(v7 - 10) == a2 && (*(v6 + 19) & 0xC0) == 0 && !*(v6 + 128))
      {
        break;
      }

      if (!i)
      {
        goto LABEL_13;
      }
    }

    v8 = *(a1 + 908);
    if (!v8)
    {
      sub_1000A52A0();
    }

    v9 = *(v6 + 96);
    v10 = (i + 96);
    if (!i)
    {
      v10 = (a1 + 832);
    }

    *v10 = v9;
    *v9 = i;
    *(a1 + 908) = v8 - 1;
    v11 = v58;
    *(v6 + 88) = 0;
    *(v6 + 96) = v11;
    *v11 = v6;
  }

LABEL_13:
  v12 = pthread_rwlock_unlock((a1 + 128));
  if (v12)
  {
    panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 2100, v12);
  }

  v13 = v57;
  if (v57)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    do
    {
      v19 = *(v13 + 88);
      v18 = *(v13 + 96);
      v20 = (v19 + 96);
      if (!v19)
      {
        v20 = &v58;
      }

      *v20 = v18;
      *v18 = v19;
      *(v13 + 88) = 3735928559;
      v21 = *(v13 + 16);
      if ((v21 & 0xC00000000) != 0)
      {
        v22 = (v56 - 1 + *(v13 + 48)) / v56;
        v23 = v14 + v22;
        v24 = v17 + v22;
        if ((v21 & 0x100000000000) != 0)
        {
          v23 = v14;
        }

        else
        {
          v24 = v17;
        }

        v25 = v16 + v22;
        v26 = v15 + v22;
        if ((v21 & 0x100000000000) != 0)
        {
          v25 = v16;
        }

        else
        {
          v26 = v15;
        }

        if ((v21 & 0x800000000) != 0)
        {
          v16 = v25;
        }

        else
        {
          v17 = v24;
        }

        if ((v21 & 0x800000000) != 0)
        {
          v15 = v26;
        }

        else
        {
          v14 = v23;
        }

        *(v13 + 16) = v21 & 0xFFFFEFF3FFFFFFFFLL;
      }

      v27 = *(a1 + 684);
      if (!v27)
      {
        sub_1000A52CC();
      }

      *(a1 + 684) = v27 - 1;
      sub_100029F34(v13, 0);
      v13 = v19;
    }

    while (v19);
    obj_cache_unlock_write(a1);
    if (v14 && spaceman_unreserve(a2, 0x48u, v14))
    {
      log_err("%s:%d: %s error unreserving space, %lld blocks: %d\n", v28, v29, v30, v31, v32, v33, v34, "obj_cache_remove_new_fs_objects");
    }

    if (v16 && spaceman_unreserve(a2, 0x50u, v16))
    {
      log_err("%s:%d: %s error unreserving tier2 space, %lld blocks: %d\n", v35, v36, v37, v38, v39, v40, v41, "obj_cache_remove_new_fs_objects");
    }

    if (v17 && spaceman_unreserve(a2, 0x10048u, v17))
    {
      log_err("%s:%d: %s error unreserving space, %lld blocks: %d\n", v42, v43, v44, v45, v46, v47, v48, "obj_cache_remove_new_fs_objects");
    }

    if (v15)
    {
      if (spaceman_unreserve(a2, 0x10050u, v15))
      {
        log_err("%s:%d: %s error unreserving tier2 space, %lld blocks: %d\n", v49, v50, v51, v52, v53, v54, v55, "obj_cache_remove_new_fs_objects");
      }
    }
  }

  else
  {
    obj_cache_unlock_write(a1);
  }
}

uint64_t obj_type_is_or_contains_ephemeral(int a1)
{
  if (a1 < 0)
  {
    return 1;
  }

  v1 = a1;
  if (a1 > 0xDu)
  {
    return 0;
  }

  result = 1;
  if (((1 << v1) & 0x2832) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t obj_create_bootstrap(pthread_mutex_t *a1, uint64_t a2, unint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  if (a6 >= 0x1000)
  {
    return sub_1000265D8(a1, a2, a3, a4, a5, a6, 0, 0, a7, 1, a8);
  }

  else
  {
    return 22;
  }
}

uint64_t sub_1000265D8(pthread_mutex_t *a1, uint64_t a2, unint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, char a10, uint64_t *a11)
{
  v11 = *a1[6].__opaque;
  if (a7)
  {
    v12 = a7;
  }

  else
  {
    v12 = *a1[6].__opaque;
  }

  v94 = 0;
  v93 = 0;
  if ((a2 & 0xFFFFFFFE07FF03BBLL) != 0)
  {
    sub_1000A52F8();
  }

  v15 = a6;
  if ((a10 & 1) == 0 && !v11)
  {
    sub_1000A5324();
  }

  if (!a4)
  {
    return 22;
  }

  if (a4[3] < 0x178)
  {
    return 22;
  }

  if (!a6)
  {
    v15 = a4[2];
    if (!v15)
    {
      if (!v11)
      {
        return 22;
      }

      v15 = *(*(v11 + 376) + 36);
      if (!v15)
      {
        return 22;
      }
    }
  }

  if ((a10 & 1) == 0 && v15 % *(*(v11 + 376) + 36))
  {
    return 22;
  }

  v21 = a2 | (*(a4 + 1) << 16);
  v22 = v21 & 0xC0000000;
  v23 = ((v21 >> 30) & 1) + (v21 >> 31);
  if ((v21 & 0xC0000000) == 0)
  {
    ++v23;
  }

  v19 = 22;
  if ((v21 & 0x88000000) == 0x8000000 || v23 != 1)
  {
    return v19;
  }

  if ((v21 & 0xC0000000) == 0 && a10)
  {
    sub_1000A537C();
  }

  v24 = a2 | (*(a4 + 1) << 16);
  if (a7)
  {
    v24 = a2 | (*(a4 + 1) << 16);
    if ((v21 & 0xC0000000) == 0)
    {
      v25 = *(a7 + 504);
      if (!v25)
      {
        v25 = a7;
      }

      if (*(*(v25 + 376) + 264))
      {
        v24 = v21 & 0x12FFF0044;
      }

      else
      {
        v85 = v12;
        v26 = a4[1];
        v27 = v21 | 0x10000000;
        if (v26 == 36 || (has_secondary_fsroot = apfs_has_secondary_fsroot(a7), v27 = v21 | 0x10000000, v26 == 37) && has_secondary_fsroot)
        {
          v29 = v27 & 0x13FFF1C44 | 0x2000;
        }

        else
        {
          v29 = v21 & 0x12FFF1C44 | 0x10000000;
        }

        v30 = apfs_has_secondary_fsroot(a7);
        v31 = 1024;
        if (!v30)
        {
          v31 = 0;
        }

        v24 = v31 | v29 & 0xFFFFFFFFFFFFE3FFLL;
        v12 = v85;
        v22 = v21 & 0xC0000000;
      }
    }
  }

  v32 = a9;
  if ((v24 & 0x10000000) != 0)
  {
    v92 = 0;
    if ((v24 & 0x8000000) != 0)
    {
      goto LABEL_50;
    }
  }

  else
  {
    if (*a4 == 11 || a4[1] == 11)
    {
      v33 = 2;
    }

    else
    {
      v33 = 1;
    }

    v92 = v33;
    if ((v24 & 0x8000000) != 0)
    {
      goto LABEL_50;
    }
  }

  if ((a10 & 1) == 0)
  {
    if (*(v11 + 627))
    {
      return 30;
    }

    v86 = v12;
    v90 = v24;
    v34 = v22;
    is_current_tx = xid_is_current_tx(v11, a9);
    v22 = v34;
    v32 = a9;
    v24 = v90;
    v12 = v86;
    if (!is_current_tx)
    {
      return 22;
    }
  }

LABEL_50:
  v36 = v32;
  if (a8)
  {
    v36 = a8;
    if (a8 > v32)
    {
      return 22;
    }
  }

  v83 = v36;
  if (a3)
  {
    v37 = 1;
  }

  else
  {
    v37 = a10;
  }

  v95 = 0;
  if ((v21 & 0x40000000) == 0)
  {
    v37 = 1;
  }

  v84 = v37;
  v91 = v22;
  v89 = v32;
  if (v37)
  {
    v87 = 0;
    if (v22)
    {
      goto LABEL_70;
    }

    goto LABEL_64;
  }

  v38 = v12;
  v87 = (v15 + *(*(v11 + 376) + 36) - 1) / *(*(v11 + 376) + 36);
  v39 = spaceman_alloc(v12, 72);
  if (v39)
  {
    v19 = v39;
    if (*(v38 + 36) != 13)
    {
      v50 = *(v38 + 384) + 212;
    }

    v81 = a4[1];
    v79 = *a4;
    v51 = "%s:%d: %s flags 0x%llx type 0x%x/0x%x error allocating new physical location %d\n";
    goto LABEL_94;
  }

  v12 = v38;
  v32 = v89;
  if (!v91)
  {
LABEL_64:
    v47 = (v15 + *(*(v11 + 376) + 36) - 1) / *(*(v11 + 376) + 36);
    v48 = v12;
    v49 = spaceman_reserve(v12, 0x48u, v47, v32, &v93);
    if (v49)
    {
      v19 = v49;
      if (*(v48 + 36) != 13)
      {
        v67 = *(v48 + 384) + 212;
      }

      v80 = *a4;
      v82 = a4[1];
      v51 = "%s:%d: %s flags 0x%llx type 0x%x/0x%x error reserving %d blocks of space: %d\n";
LABEL_94:
      log_err(v51, v40, v41, v42, v43, v44, v45, v46, "obj_create_internal");
      return v19;
    }

    v87 = v47;
    v12 = v48;
  }

LABEL_70:
  v52 = v12;
  pthread_mutex_lock(a1);
  v54 = sub_100027208(a1, a4[3], *a4, v15, v24, 0, &v95, v53);
  if (v54)
  {
    v19 = v54;
LABEL_109:
    obj_cache_unlock_write(a1);
    if ((v84 & 1) == 0)
    {
      spaceman_free(v52, 64, v92, v87, v89);
    }

    if (!v91)
    {
      spaceman_unreserve(v52, v93, v87);
    }

    return v19;
  }

  v55 = v95;
  v56 = 66;
  if ((v24 & 0x40) != 0)
  {
    v56 = 0x100000004ALL;
  }

  v57 = *(v95 + 16) | v24 & 0xFFFFFC00 | v56 | (v24 << 14) & 0x400000000000;
  *(v95 + 16) = v57;
  v59 = *a4;
  v58 = a4[1];
  v60 = v55;
  v61 = v59 | v24 & 0xFFFF0000;
  *(v55 + 36) = v61;
  *(v55 + 40) = v58;
  if (!a7 || (v62 = *(a7 + 504)) == 0)
  {
    v62 = a7;
  }

  *(v55 + 8) = v62;
  *(v55 + 120) = v83;
  *(v55 + 144) = 0;
  if ((v21 & 0x80000000) == 0)
  {
    if ((v21 & 0x40000000) != 0)
    {
      if (a3)
      {
        v92 = a3;
      }

      else
      {
        a3 = v92;
      }

      *(v55 + 128) = a3;
    }

    else
    {
      if (v91)
      {
        goto LABEL_101;
      }

      v65 = 0x800000120;
      if ((v93 & 0x10) == 0)
      {
        v65 = 0x400000120;
      }

      *(v60 + 16) = v65 & 0xFFFFEFFFFFFFFFFFLL | ((((v93 & 0x10000) >> 16) & 1) << 44) | v57;
      if (!a3)
      {
        v66 = *&a1[6].__opaque[8];
        *(v60 + 112) = v66;
        *&a1[6].__opaque[8] = v66 + 1;
        if (byte_100103718 != 1 || qword_100103720 == v61 && qword_100103728 == v58)
        {
          goto LABEL_101;
        }

        v64 = "virtual";
        goto LABEL_82;
      }
    }

LABEL_100:
    *(v60 + 112) = a3;
    goto LABEL_101;
  }

  if (a3)
  {
    goto LABEL_100;
  }

  if ((v24 & 0x8000000) != 0)
  {
    v68 = *&a1[6].__opaque[16];
    *(v55 + 112) = v68;
    *&a1[6].__opaque[16] = v68 + 1;
    goto LABEL_101;
  }

  v63 = *&a1[6].__opaque[8];
  *(v55 + 112) = v63;
  *&a1[6].__opaque[8] = v63 + 1;
  if (byte_100103718 == 1)
  {
    v64 = "ephemeral";
LABEL_82:
    sub_10002BE90(v60, v64);
  }

LABEL_101:
  v69 = v24;
  if ((*(v60 + 19) & 0x20) == 0)
  {
    v70 = *(v60 + 56);
    *(v70 + 24) = *(v60 + 36);
    *(v70 + 8) = *(v60 + 112);
  }

  obj_retain_0(v60);
  v71 = obj_descriptor_funcs_for_type(*(v60 + 36), &v94);
  if (v71 || (v73 = v94, *v94) && (v71 = (*v94)(*(v60 + 56), v15, a5), v71) || (v74 = v73[1]) != 0 && (v71 = v74(v60, a5), v71))
  {
    v19 = v71;
    if (v69 < 0)
    {
      obj_cache_ephemeral_adjust(a1, v69, v15, -1);
    }

    else
    {
      v72 = *&a1[10].__opaque[36];
      if (!v72)
      {
        sub_1000A5350();
      }

      *&a1[10].__opaque[36] = v72 - 1;
    }

    sub_100029F34(v60, 0);
    goto LABEL_109;
  }

  sub_100027D94(v60, v24);
  v75 = (*a1[11].__opaque + 8 * (*(v60 + 112) & LODWORD(a1[11].__sig)));
  v76 = *v75;
  *(v60 + 72) = *v75;
  if (v76)
  {
    *(v76 + 80) = v60 + 72;
  }

  *v75 = v60;
  *(v60 + 80) = v75;
  *(v60 + 16) |= 1uLL;
  if ((v24 & 0x80000000) != 0)
  {
    *(v60 + 88) = 0;
    v77 = 768;
    if ((v24 & 0x8000000) == 0)
    {
      v77 = 752;
    }

    v78 = *(&a1->__sig + v77);
    *(v60 + 96) = v78;
    *v78 = v60;
    *(&a1->__sig + v77) = v60 + 88;
  }

  if ((a10 & 1) == 0)
  {
    sub_10002B3B4(v60, v89, 0);
  }

  obj_cache_unlock_write(a1);
  if ((v24 & 4) != 0)
  {
    obj_lock(v60, 2u);
  }

  v19 = 0;
  *a11 = v60;
  return v19;
}

uint64_t obj_clone(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a1 + 56);
  v13 = *a1;
  v37[0] = 0;
  v37[1] = 0;
  v36 = 0;
  if (a4)
  {
    *a4 = 0;
  }

  if ((a2 & 0x210) == 0)
  {
    v29 = obj_descriptor_and_flags_for_type(*(a1 + 36), &v36, v37);
    if (v29)
    {
      return v29;
    }
  }

  v14 = *(a1 + 16);
  if ((v14 & 2) != 0)
  {
    return 22;
  }

  v38 = 0;
  v15 = v14 | 2;
  *(a1 + 16) = v14 | 2;
  if (*a3)
  {
    v38 = *a3;
    goto LABEL_7;
  }

  v29 = sub_100027208(v13, *(a1 + 44), *(a1 + 36), *(a1 + 48), v14 & 0xC0000000, a4, &v38, a8);
  if (v29)
  {
    return v29;
  }

  v15 = *(a1 + 16);
LABEL_7:
  LODWORD(v16) = v15 & 0xFFFFFFFB;
  *(a1 + 16) = v15 & 0xFFFFFE7FFFFFFFFBLL;
  if (!*(a1 + 52))
  {
    LODWORD(v16) = v15 & 0xFFFFFFF9;
    *(a1 + 16) = v15 & 0xFFFFFE7FFFFFFFF9;
  }

  if ((v15 & 4) != 0)
  {
    cv_wakeup((*a1 + 1328));
    v16 = *(a1 + 16);
  }

  v17 = v38;
  *(v38 + 36) = *(a1 + 36);
  v18 = *(a1 + 8);
  *(v17 + 112) = *(a1 + 112);
  *(v17 + 128) = *(a1 + 128);
  v19 = v16 & 0xFFFFFC00 | *(v17 + 16);
  v20 = v19 | 0x40000000002;
  *(v17 + 8) = v18;
  *(v17 + 16) = v19 | 0x40000000002;
  if ((a2 & 0x50) != 0)
  {
    v20 = v19 | 0x4000000000ALL;
    *(v17 + 16) = v19 | 0x4000000000ALL;
    if ((a2 & 0x40) != 0)
    {
      v20 = v19 | 0x4100000000ALL;
      *(v17 + 16) = v19 | 0x4100000000ALL;
    }
  }

  if ((a2 & 0x100000200) != 0)
  {
    *(v17 + 16) = v20 | (a2 << 14) & 0x400000000000 | (a2 << 34) & 0x80000000000;
  }

  memcpy(*(v17 + 56), v12, *(a1 + 48));
  if ((a2 & 0x210) != 0)
  {
    goto LABEL_17;
  }

  v35 = 0;
  memcpy((v17 + 376), (a1 + 376), *(a1 + 44) - 376);
  v31 = obj_descriptor_funcs_for_type(*(a1 + 36), &v35);
  if (v31)
  {
    v28 = v31;
  }

  else
  {
    v34 = *(v35 + 8);
    if (!v34 || (v28 = v34(v17, 0), !v28))
    {
LABEL_17:
      v21 = (*(v13 + 712) + 8 * (*(v17 + 112) & *(v13 + 704)));
      v22 = *v21;
      *(v17 + 72) = *v21;
      if (v22)
      {
        *(v22 + 80) = v17 + 72;
      }

      *v21 = v17;
      *(v17 + 80) = v21;
      v23 = *(v17 + 16);
      *(v17 + 16) = v23 | 1;
      v24 = *(a1 + 16);
      if ((v24 & 0x80000000) != 0)
      {
        *(v17 + 88) = 0;
        v25 = (v24 & 0x8000000) == 0;
        v26 = 768;
        if (v25)
        {
          v26 = 752;
        }

        v27 = *(v13 + v26);
        *(v17 + 96) = v27;
        *v27 = v17;
        *(v13 + v26) = v17 + 88;
      }

      *(v17 + 16) = v23 & 0xFFFFFA7FFFFFFFFALL | 1;
      if ((a2 & 0x10) == 0 && !*(v17 + 52))
      {
        *(v17 + 16) = v23 & 0xFFFFFA7FFFFFFFF8 | 1;
      }

      if ((v23 & 4) != 0)
      {
        cv_wakeup((*v17 + 1328));
      }

      obj_retain_0(v17);
      v28 = 0;
      *a3 = v17;
      return v28;
    }
  }

  v32 = *(v17 + 16);
  if ((v32 & 0x80000000) != 0)
  {
    obj_cache_ephemeral_adjust(v13, v32, *(v17 + 48), -1);
  }

  else
  {
    v33 = *(v13 + 684);
    if (!v33)
    {
      sub_1000A53A8();
    }

    *(v13 + 684) = v33 - 1;
  }

  if (*a3)
  {
    *(v17 + 16) &= ~0x40000000000uLL;
  }

  else
  {
    sub_100029F34(v17, 0);
  }

  return v28;
}

uint64_t obj_descriptor_and_flags_for_type(int a1, unsigned int *a2, uint64_t a3)
{
  v3 = 22;
  switch(a1)
  {
    case 1:
      v4 = &nx_desc;
      goto LABEL_17;
    case 2:
      *a3 = btree_node_desc;
      *a3 = 2;
      goto LABEL_18;
    case 3:
      v4 = &btree_node_desc;
      goto LABEL_17;
    case 5:
      v4 = &sm_desc;
      goto LABEL_17;
    case 6:
      v4 = &sm_cab_desc;
      goto LABEL_17;
    case 7:
      v4 = &sm_cib_desc;
      goto LABEL_17;
    case 8:
      v4 = &sm_bm_desc;
      goto LABEL_17;
    case 11:
      v4 = &om_desc;
      goto LABEL_17;
    case 13:
      v4 = &apfs_desc;
      goto LABEL_17;
    case 17:
      v4 = &nx_reaper_desc;
      goto LABEL_17;
    case 18:
      v4 = &nx_reap_list_desc;
      goto LABEL_17;
    case 25:
      v4 = &gbitmap_desc;
      goto LABEL_17;
    case 27:
      v4 = &gbitmap_block_desc;
      goto LABEL_17;
    case 29:
      v4 = &snap_meta_ext_desc;
      goto LABEL_17;
    case 30:
      v4 = &integrity_meta_desc;
LABEL_17:
      *a3 = *v4;
LABEL_18:
      v3 = 0;
      v5 = *a2 | a1 & 0xFFFF0000;
      *a2 = v5;
      *a2 = v5 | (*(a3 + 2) << 16);
      break;
    default:
      return v3;
  }

  return v3;
}

uint64_t sub_100027208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  if (a6)
  {
    *a6 = 0;
  }

  if (a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = 376;
  }

  if (a4)
  {
    v14 = 0;
  }

  else
  {
    v15 = *(a1 + 392);
    if (!v15)
    {
      v10 = 0;
      v14 = 22;
      goto LABEL_11;
    }

    v14 = 0;
    v10 = *(*(v15 + 376) + 36);
  }

  LOBYTE(v15) = 1;
LABEL_11:
  v16 = *(a1 + 392);
  if (v13 < 0x178)
  {
    v14 = 22;
    if (!v16)
    {
      goto LABEL_23;
    }

LABEL_19:
    v82 = *(v16 + 384) + 212;
    log_err("%s:%d: %s invalid object size: %d size_phys %d\n", a2, a3, a4, a5, a6, a7, a8, "obj_alloc");
    return v14;
  }

  if (v16)
  {
    if (v10 % *(*(v16 + 376) + 36))
    {
      LOBYTE(v15) = 0;
      v14 = 22;
    }

    else
    {
      v14 = v14;
    }

    if ((v15 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if ((v15 & 1) == 0)
  {
LABEL_23:
    log_err("%s:%d: invalid object size: %d size_phys %d\n", a2, a3, a4, a5, a6, a7, a8, "obj_alloc");
    return v14;
  }

  v17 = &unk_100103000;
  v93 = a5;
  v94 = v13;
  v92 = a3;
  v91 = v10;
  if ((a5 & 0x80000000) != 0)
  {
    v90 = 0;
    v22 = 0;
    v88 = 0;
    goto LABEL_109;
  }

  v18 = 0;
  v90 = 0;
  v19 = 0;
  v88 = 0;
  v97 = 0;
  v20 = *(a1 + 684);
  while (2)
  {
    if (v20 < *(a1 + 676))
    {
      v23 = 0;
      goto LABEL_107;
    }

    v95 = v19;
    if ((v9 & 0x40000000) != 0)
    {
      v24 = (a1 + 792);
    }

    else
    {
      v24 = (a1 + 776);
    }

    if ((v9 & 0x40000000) != 0)
    {
      v25 = (a1 + 776);
    }

    else
    {
      v25 = (a1 + 792);
    }

    while (1)
    {
      v26 = pthread_rwlock_wrlock((a1 + 128));
      if (v26)
      {
        panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 2308, v26);
      }

      v27 = *(a1 + 808);
      if (v27)
      {
        if ((*(v27 + 32) & 0x10) != 0)
        {
          sub_10002BC1C(a1);
          v29 = pthread_rwlock_unlock((a1 + 128));
          if (v29)
          {
            panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 2313, v29);
          }

          goto LABEL_52;
        }

        if (*(a1 + 924) > *(a1 + 696))
        {
          goto LABEL_84;
        }

        __tp.tv_sec = 0;
        __tp.tv_nsec = 0;
        clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
        if (__tp.tv_sec - *(v27 + 160) > 29)
        {
          goto LABEL_84;
        }
      }

      v27 = *v24;
      if (!*v24)
      {
        v28 = *v25;
        if (!*v25)
        {
          v23 = 0;
          v27 = 0;
LABEL_96:
          v9 = v93;
          v11 = v92;
          v10 = v91;
          v19 = v95;
          goto LABEL_102;
        }

        if ((*(v28 + 32) & 0x10) == 0)
        {
          goto LABEL_56;
        }

        goto LABEL_50;
      }

      if ((*(v27 + 32) & 0x10) == 0)
      {
        v28 = *v25;
        if (!*v25 || (*(v28 + 32) & 0x10) == 0)
        {
          break;
        }
      }

LABEL_50:
      sub_10002BC1C(a1);
      v30 = pthread_rwlock_unlock((a1 + 128));
      if (v30)
      {
        panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 2364, v30);
      }

LABEL_52:
      if (*(a1 + 684) < *(a1 + 676))
      {
        v23 = 0;
        v9 = v93;
        v13 = v94;
        v11 = v92;
        v10 = v91;
        v17 = &unk_100103000;
        goto LABEL_107;
      }
    }

    add_explicit = atomic_fetch_add_explicit((v27 + 24), 0, memory_order_relaxed);
    if ((add_explicit & 0xFFFFFF) != ((add_explicit >> 24) & 0xFFFFF))
    {
      sub_1000A53D4();
    }

    v32 = 0;
    v33 = 1;
    if (v28)
    {
LABEL_56:
      v33 = 0;
      v34 = atomic_fetch_add_explicit((v28 + 24), 0, memory_order_relaxed);
      v32 = v28;
      if ((v34 & 0xFFFFFF) != ((v34 >> 24) & 0xFFFFF))
      {
        sub_1000A5400();
      }
    }

    if (!qword_100103710)
    {
      sub_1000A5458();
    }

    if ((*(a1 + 1320) & 4) != 0)
    {
      goto LABEL_72;
    }

    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    if (!v27)
    {
      if (v33)
      {
        v38 = *(a1 + 684) < *(a1 + 680);
        v33 = 1;
        goto LABEL_80;
      }

      goto LABEL_70;
    }

    v35 = __tp.tv_sec - *(v27 + 160);
    v36 = v35 <= 599;
    if (v35 > 599)
    {
      v37 = 1;
    }

    else
    {
      v37 = v33;
    }

    if ((v37 & 1) == 0)
    {
LABEL_70:
      if (__tp.tv_sec - *(v32 + 160) <= 599)
      {
        goto LABEL_72;
      }

      v27 = v32;
      goto LABEL_84;
    }

    if (!v36)
    {
      goto LABEL_84;
    }

LABEL_72:
    v39 = *(a1 + 684);
    v40 = *(a1 + 680);
    v41 = v39 >= v40;
    v38 = v39 < v40;
    if (v41)
    {
      v42 = v33;
    }

    else
    {
      v42 = 1;
    }

    if (v27 && (v42 & 1) == 0)
    {
      if (*(v32 + 160) < *(v27 + 160))
      {
        v27 = v32;
      }

      goto LABEL_84;
    }

LABEL_80:
    v23 = 0;
    if (!v33)
    {
      v27 = v32;
    }

    if (v38 || !v27)
    {
      v27 = 0;
      goto LABEL_96;
    }

LABEL_84:
    v10 = v91;
    if (*(v27 + 44) == v94 && *(v27 + 48) == v91)
    {
      sub_10002BDA8(v27);
      v9 = v93;
      v11 = v92;
      if (v18)
      {
        fs_obj_zfree_oc(v97, v91, v93, a1);
        free_rwlock((v18 + 176));
        sub_10002BFA8(v18, v92, v94);
        v97 = 0;
        v88 = 1;
      }

      v19 = v95;
      v43 = *(v27 + 16);
      v90 = 1;
      if (v43)
      {
        v45 = *(v27 + 72);
        v46 = *(v27 + 80);
        if (v45)
        {
          *(v45 + 80) = v46;
        }

        v18 = 0;
        *v46 = v45;
        *(v27 + 16) = v43 & 0xFFFFFFFFFFFFFFFELL;
        v90 = 1;
      }

      else
      {
        v18 = 0;
      }

      v23 = v27;
LABEL_101:
      v27 = 0;
    }

    else
    {
      v9 = v93;
      v11 = v92;
      v19 = v95;
      if ((*(v27 + 21) & 0x40) == 0)
      {
        v90 = 1;
        if (*(a1 + 684) < *(a1 + 680))
        {
          v23 = 0;
          goto LABEL_101;
        }
      }

      sub_10002BDA8(v27);
      v44 = *(a1 + 684);
      if (!v44)
      {
        sub_1000A542C();
      }

      v23 = 0;
      *(a1 + 684) = v44 - 1;
      v90 = 1;
    }

LABEL_102:
    v47 = pthread_rwlock_unlock((a1 + 128));
    if (v47)
    {
      panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 2427, v47);
    }

    if (v27)
    {
      sub_100029F34(v27, 0);
    }

    v13 = v94;
    v17 = &unk_100103000;
LABEL_107:
    if (v23 | v18)
    {
      if (v23)
      {
        v22 = v19;
        v110 = 0;
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        __tp = 0;
        v99 = 0u;
        v55 = sub_10002C090(v23);
        if (v55)
        {
          v56 = v55;
          obj_cache_unlock_write(a1);
          if (a6)
          {
            *a6 = 1;
          }

          if (v56(v23))
          {
            if (!*(v23 + 8))
            {
              v64 = *(*(*v23 + 392) + 384) + 212;
            }

            v87 = *(v23 + 40);
            v85 = *(v23 + 32);
            v86 = *(v23 + 36);
            v83 = *(v23 + 112);
            v84 = *(v23 + 16);
            log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error destroying: %d\n", v57, v58, v59, v60, v61, v62, v63, "obj_alloc");
          }

          pthread_mutex_lock(a1);
        }

        v65 = *(v23 + 56);
        v66 = *(v23 + 352);
        v108 = *(v23 + 336);
        v109 = v66;
        v110 = *(v23 + 368);
        v67 = *(v23 + 288);
        v104 = *(v23 + 272);
        v105 = v67;
        v68 = *(v23 + 320);
        v106 = *(v23 + 304);
        v107 = v68;
        v69 = *(v23 + 224);
        v100 = *(v23 + 208);
        v101 = v69;
        v70 = *(v23 + 256);
        v102 = *(v23 + 240);
        v103 = v70;
        v71 = *(v23 + 192);
        __tp = *(v23 + 176);
        v99 = v71;
        v97 = v65;
        bzero(v65, v10);
        bzero(v23, v13);
        v72 = v109;
        *(v23 + 336) = v108;
        *(v23 + 352) = v72;
        *(v23 + 368) = v110;
        v73 = v105;
        *(v23 + 272) = v104;
        *(v23 + 288) = v73;
        v74 = v107;
        *(v23 + 304) = v106;
        *(v23 + 320) = v74;
        v75 = v101;
        *(v23 + 208) = v100;
        *(v23 + 224) = v75;
        v76 = v103;
        *(v23 + 240) = v102;
        *(v23 + 256) = v76;
        v77 = v99;
        v19 = v22;
        *(v23 + 176) = __tp;
        *(v23 + 192) = v77;
      }

      else
      {
        ++*(a1 + 684);
        v23 = v18;
        v22 = v19;
      }

      break;
    }

    v22 = v19;
    v8 = a6;
LABEL_109:
    obj_cache_unlock_write(a1);
    if (v8)
    {
      *v8 = 1;
    }

    if (!*(v17 + 226))
    {
      sub_1000A56C0();
    }

    v48 = _apfs_obj_zalloc(v10, *(a1 + 952));
    sub_10002C488((a1 + 976), v9, v48, v10);
    v97 = v48;
    sub_10002C488((*(v17 + 226) + 136), v9, v48, v10);
    if (v11 > 0xCu)
    {
      if (v11 <= 0x18u)
      {
        if (v11 == 13)
        {
          if (v13 != 6264)
          {
            sub_1000A558C();
          }

          v49 = 0x10B0040B40B56FDLL;
          v50 = 6264;
          goto LABEL_156;
        }

        if (v11 != 17)
        {
          if (v11 != 18)
          {
            goto LABEL_142;
          }

          if (v13 != 384)
          {
            sub_1000A5534();
          }

          v49 = 0x10A0040009CC2E3;
          v50 = 384;
          goto LABEL_156;
        }

        if (v13 != 400)
        {
          sub_1000A5560();
        }

        v51 = -1969217434;
      }

      else
      {
        if (v11 <= 0x1Cu)
        {
          if (v11 == 25)
          {
            if (v13 != 416)
            {
              sub_1000A5508();
            }

            v49 = 0x10A0040906DED57;
            v50 = 416;
            goto LABEL_156;
          }

          if (v11 != 27)
          {
            goto LABEL_142;
          }

          if (v13 != 392)
          {
            sub_1000A54DC();
          }

          v49 = 0x10B0040200AD5F0;
LABEL_150:
          v50 = 392;
          goto LABEL_156;
        }

        if (v11 == 29)
        {
          if (v13 != 392)
          {
            sub_1000A54B0();
          }

          v49 = 0x10A00404C324ACELL;
          goto LABEL_150;
        }

        if (v11 != 30)
        {
          goto LABEL_142;
        }

        if (v13 != 400)
        {
          sub_1000A5484();
        }

        v51 = -1209887300;
      }

      v49 = v51 | 0x10B004000000000;
      v50 = 400;
      goto LABEL_156;
    }

    if (v11 > 5u)
    {
      if (v11 - 6 < 3)
      {
        if (v13 != 448)
        {
          sub_1000A55E4();
        }

        goto LABEL_138;
      }

      if (v11 != 11)
      {
        goto LABEL_142;
      }

      if (v13 != 496)
      {
        sub_1000A55B8();
      }

      v49 = 0x10A0040FDA1D44DLL;
      v50 = 496;
LABEL_156:
      v52 = _apfs_calloc_typed(1uLL, v50, v49);
    }

    else
    {
      if (v11 - 2 >= 2)
      {
        if (v11 == 1)
        {
          if (v13 != 1192)
          {
            sub_1000A5668();
          }

          v49 = 0x10A0040F77FBBF2;
          v50 = 1192;
        }

        else
        {
          if (v11 == 5)
          {
            if (v13 != 1664)
            {
              sub_1000A5610();
            }

            v49 = 0x10B00403059A9A9;
            v50 = 1664;
            goto LABEL_156;
          }

LABEL_142:
          if (v13 != 376)
          {
            sub_1000A5694();
          }

          v49 = 0x10A00402D31E437;
          v50 = 376;
        }

        goto LABEL_156;
      }

      if (v13 != 448)
      {
        sub_1000A563C();
      }

LABEL_138:
      v52 = _apfs_zalloc(4u);
    }

    v23 = v52;
    v53 = v48;
    if (!v48 || !v23)
    {
      v14 = 12;
      if (!v97)
      {
        goto LABEL_174;
      }

      goto LABEL_173;
    }

    *(v23 + 24) = 0;
    v54 = new_rwlock((v23 + 176));
    if (v54)
    {
      v14 = v54;
      v53 = v97;
LABEL_173:
      fs_obj_zfree_oc(v53, v10, v9, a1);
LABEL_174:
      if (v23)
      {
        sub_10002BFA8(v23, v11, v13);
      }

      pthread_mutex_lock(a1);
      return v14;
    }

    pthread_mutex_lock(a1);
    if (v9 < 0)
    {
      v19 = 1;
      obj_cache_ephemeral_adjust(a1, v9, v10, 1);
    }

    else
    {
      v20 = *(a1 + 684);
      v19 = 1;
      if (*(a1 + 680) - 1 < v20)
      {
        v18 = v23;
        continue;
      }

      *(a1 + 684) = v20 + 1;
    }

    break;
  }

  v78 = a7;
  *v23 = a1;
  *(v23 + 36) = v11;
  *(v23 + 44) = v13;
  *(v23 + 48) = v10;
  *(v23 + 56) = v97;
  *(v23 + 88) = 3735928559;
  *(v23 + 104) = 3735928559;
  *(v23 + 160) = -1;
  if ((v9 & 0x80000000) == 0)
  {
    atomic_fetch_add_explicit((a1 + 1056), 1uLL, memory_order_relaxed);
    if (v19)
    {
      atomic_fetch_add_explicit((a1 + 1064), 1uLL, memory_order_relaxed);
      if (v22)
      {
        atomic_fetch_add_explicit((a1 + 1072), 1uLL, memory_order_relaxed);
      }

      v79 = 104;
      if (v88)
      {
        v79 = 112;
      }

      atomic_fetch_add_explicit((a1 + 976 + v79), 1uLL, memory_order_relaxed);
    }

    if (v90)
    {
      atomic_fetch_add_explicit((a1 + 1096), 1uLL, memory_order_relaxed);
    }

    v80 = *(v17 + 226);
    atomic_fetch_add_explicit(v80 + 27, 1uLL, memory_order_relaxed);
    if (v19)
    {
      atomic_fetch_add_explicit(v80 + 28, 1uLL, memory_order_relaxed);
      if (v22)
      {
        atomic_fetch_add_explicit(v80 + 29, 1uLL, memory_order_relaxed);
      }

      v81 = 13;
      if (v88)
      {
        v81 = 14;
      }

      atomic_fetch_add_explicit(&v80[v81 + 17], 1uLL, memory_order_relaxed);
      v78 = a7;
    }

    if (v90)
    {
      atomic_fetch_add_explicit(v80 + 32, 1uLL, memory_order_relaxed);
    }
  }

  v14 = 0;
  *v78 = v23;
  return v14;
}

uint64_t sub_100027D94(uint64_t result, char a2)
{
  v2 = *(result + 16);
  *(result + 16) = v2 & 0xFFFFFE7FFFFFFFFBLL;
  if ((a2 & 0x10) == 0 && !*(result + 52))
  {
    *(result + 16) = v2 & 0xFFFFFE7FFFFFFFF9;
  }

  if ((v2 & 4) != 0)
  {
    return cv_wakeup((*result + 1328));
  }

  return result;
}

uint64_t obj_descriptor_funcs_for_type(__int16 a1, void *a2)
{
  v2 = a1 - 1;
  if ((a1 - 1) > 0x1Du || ((0x350314F7u >> v2) & 1) == 0)
  {
    return 22;
  }

  result = 0;
  *a2 = off_1000E4A90[v2];
  return result;
}

atomic_ullong *obj_retain_0(atomic_ullong *result)
{
  v1 = atomic_fetch_add_explicit(result + 3, 1uLL, memory_order_relaxed) & 0xFFFFFF;
  if (v1 == 0xFFFFFF)
  {
    panic("Reference count overflowed for object %p!\n", result);
  }

  if (v1 >= 0x186A1)
  {
    sub_1000A56EC();
  }

  return result;
}

void sub_100027E74(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = *a1;
  if ((*(a1 + 19) & 8) == 0 && !xid_is_current_tx(*(v6 + 392), a2))
  {
    panic("can not delete an object w/a non-current xid %lld o == %p\n", a2, a1);
  }

  pthread_mutex_lock(v6);
  while (1)
  {
    v7 = a1[2];
    if ((v7 & 0x20000000000) == 0)
    {
      break;
    }

    a1[2] = v7 | 0x80;
    cv_wait_rw((v6 + 1328), v6, 2, 0);
  }

  a1[2] = v7 | 0x10;
  a1[18] = a2;
  if ((v7 & 0x80000000) != 0)
  {
    if (a3)
    {
      a1[2] = v7 & 0xFFFFFDEFFFFFFFE7 | 0x18;
    }

    obj_cache_unlock_write(v6);
  }

  else
  {
    v8 = a1[19];
    if (!v8)
    {
      v8 = a1[16];
    }

    v41 = v8;
    a1[16] = 0;
    a1[19] = 0;
    if (atomic_fetch_and_explicit(a1 + 8, 0xFFFFFFFE, memory_order_relaxed))
    {
      v9 = pthread_rwlock_wrlock((v6 + 128));
      if (v9)
      {
        panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 3186, v9);
      }

      v10 = a1[11];
      if (v10 != 3735928559)
      {
        if (*(v6 + 888) == a1)
        {
          *(v6 + 888) = v10;
        }

        v11 = a1[12];
        v12 = (v10 + 96);
        if ((*(a1 + 19) & 0x40) != 0)
        {
          if (!v10)
          {
            v12 = (v6 + 848);
          }

          *v12 = v11;
          *v11 = v10;
          --*(v6 + 912);
        }

        else
        {
          if (!v10)
          {
            v12 = (v6 + 832);
          }

          *v12 = v11;
          *v11 = v10;
          --*(v6 + 908);
        }

        a1[11] = 3735928559;
      }

      v13 = pthread_rwlock_unlock((v6 + 128));
      if (v13)
      {
        panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 3200, v13);
      }
    }

    v14 = a1[1];
    if (!v14)
    {
      v14 = *(v6 + 392);
    }

    v15 = a1[2];
    v16 = a1[15];
    v17 = a1[18];
    if (a3)
    {
      a1[2] = v15 & 0xFFFFFFEFFFFFFFF7 | 8;
    }

    v18 = *(a1 + 12);
    v19 = a1[14];
    v21 = *(a1 + 9);
    v20 = *(a1 + 10);
    obj_cache_unlock_write(v6);
    if (v8)
    {
      if ((v15 & 0x40000000) != 0)
      {
        v22 = *(*(*(v6 + 392) + 376) + 36);
        if (!spaceman_free(v14, 64, v8, (v18 + v22 - 1) / v22, v17))
        {
          return;
        }

        if (*(v14 + 36) != 13)
        {
          v37 = *(v14 + 384) + 212;
        }

        v38 = "%s:%d: %s oid 0x%llx flags 0x%llx type 0x%x/0x%x error freeing space %d\n";
LABEL_54:
        log_err(v38, v23, v24, v25, v26, v27, v28, v29, "obj_delete_internal");
        return;
      }

LABEL_50:
      if (!omap_delete(v14, v19, v16, v8, v18, 1, v17))
      {
        return;
      }

      if (*(v14 + 36) != 13)
      {
        v40 = *(v14 + 384) + 212;
      }

      v38 = "%s:%d: %s oid 0x%llx flags 0x%llx type 0x%x/0x%x error deleting mapping %d\n";
      goto LABEL_54;
    }

    if ((v15 & 0x40000000) != 0)
    {
      sub_1000A5718();
    }

    if ((v15 & 0x40) == 0 && omap_get(v14, v19, v16, &v41, 0, 0, 0))
    {
      if (*(v14 + 36) != 13)
      {
        v39 = *(v14 + 384) + 212;
      }

      log_err("%s:%d: %s oid 0x%llx flags 0x%llx type 0x%x/0x%x error getting mapping to free %d\n", v30, v31, v32, v33, v34, v35, v36, "obj_delete_internal");
    }

    v8 = v41;
    if (v41)
    {
      goto LABEL_50;
    }
  }
}

void obj_free(uint64_t a1)
{
  v2 = *a1;
  pthread_mutex_lock(*a1);
  *(a1 + 16) = *(a1 + 16) & 0xFFFFFFEFFFFFFFF7 | 8;

  obj_cache_unlock_write(v2);
}

uint64_t obj_delete_and_free_by_oid(uint64_t a1, int a2, int a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v11 = *(a1 + 392);
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v50[0] = 0;
  v50[1] = 0;
  v12 = obj_descriptor_and_flags_for_type(a2, &v51, v50);
  if (v12)
  {
    return v12;
  }

  v49 = 0;
  if (a4)
  {
    v14 = obj_get(a1, 0, a4, &apfs_desc, 0, 0, 0, 0, &v53);
    if (v14)
    {
      v12 = v14;
      v46 = *(v11 + 384) + 212;
      log_err("%s:%d: %s unable to get fs object 0x%llx: %d\n", v15, v16, v17, v18, v19, v20, v21, "obj_delete_and_free_by_oid");
      return v12;
    }

    v22 = v53;
  }

  else
  {
    v22 = 0;
  }

  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v11;
  }

  v24 = v51;
  v25 = obj_get(a1, v51, a5, 0, 0, v22, 0, 0, &v52);
  if (!v25)
  {
    v34 = v52;
    sub_100027E74(v52, a6, 1);
    obj_release(v34);
    v12 = 0;
    goto LABEL_34;
  }

  if ((v24 & 0x80000000) != 0)
  {
    v12 = v25;
    goto LABEL_34;
  }

  if (v24 >> 30)
  {
    v12 = spaceman_free(v23, 64, a5, (a3 + *(*(v11 + 376) + 36) - 1) / *(*(v11 + 376) + 36), a6);
    if (v12)
    {
      if (*(v23 + 36) != 13)
      {
        v44 = *(v23 + 384) + 212;
      }

      log_err("%s:%d: %s oid 0x%llx flags 0x%x type 0x%x error freeing space %d\n", v35, v36, v37, v38, v39, v40, v41, "obj_delete_and_free_by_oid");
    }

    goto LABEL_34;
  }

  v48 = 0;
  v47 = 0;
  v26 = omap_get(v23, a5, 0, &v49, &v48, 0, &v47);
  if (v26)
  {
    v12 = v26;
    if (*(v23 + 36) != 13)
    {
      v42 = *(v23 + 384) + 212;
    }

    v43 = "%s:%d: %s oid 0x%llx flags 0x%x type 0x%x error getting mapping to free %d\n";
  }

  else
  {
    if (v48 != a3)
    {
      sub_1000A5744();
    }

    v12 = omap_delete(v23, a5, v47, v49, a3, 1, a6);
    if (!v12)
    {
      goto LABEL_33;
    }

    if (*(v23 + 36) != 13)
    {
      v45 = *(v23 + 384) + 212;
    }

    v43 = "%s:%d: %s oid 0x%llx flags 0x%x type 0x%x error deleting mapping %d\n";
  }

  log_err(v43, v27, v28, v29, v30, v31, v32, v33, "obj_delete_and_free_by_oid");
LABEL_33:
  v22 = v53;
LABEL_34:
  if (v22)
  {
    obj_release(v22);
  }

  return v12;
}

uint64_t obj_get(uint64_t a1, uint64_t a2, unint64_t a3, int *a4, _WORD *a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t *a9)
{
  v125 = a2;
  v122 = a7 & (a2 << 60 >> 63);
  v123 = 0;
  v120 = 0;
  v121 = 16000;
  v117 = 0;
  *a9 = 0;
  if ((a2 & 0xFFFFFFFE07FF0000) != 0)
  {
    sub_1000A5770();
  }

  v9 = a2;
  if ((~a2 & 0xC0000000) == 0)
  {
    return 22;
  }

  v12 = a8;
  v13 = a7;
  if ((a2 & 0x8000001) == 1)
  {
    is_current_tx = xid_is_current_tx(*(a1 + 392), a8);
    v10 = 22;
    if ((~v9 & 0x180) == 0 || !is_current_tx)
    {
      return v10;
    }
  }

  else if ((~a2 & 0x180) == 0)
  {
    return 22;
  }

  if ((~v9 & 0x81) == 0 || (v9 & 0x100) != 0 && (v9 & 0x15) != 0)
  {
    return 22;
  }

  v10 = 22;
  if ((v9 & 0x210) == 0x200 || !a3)
  {
    return v10;
  }

  v118 = 0;
  if (*(a1 + 1376))
  {
    pthread_mutex_lock(a1);
    v119 = 2;
    sub_10002930C(a1, &v117);
    if (v117 == 1)
    {
      obj_cache_unlock_write(a1);
    }
  }

  v113 = a5;
  if (a4)
  {
    v9 |= *(a4 + 1) << 16;
    v125 = v9;
  }

  v20 = (v9 >> 30) & 2;
  v21 = (v9 >> 30) | (v20 >> 1);
  v22 = (v9 & 0x40000000) != 0 || ((v9 >> 30) & 2) != 0 ? 0 : 4;
  if (((v9 >> 30) & 1) + (((v9 >> 30) & 2) >> 1) + ((v9 & 0x40000000) == 0 && ((v9 >> 30) & 2) == 0) != 1 || (((v9 & 0x200) != 0) & v21) != 0)
  {
    return v10;
  }

  if ((v9 & 0x40000000) != 0 || ((v9 >> 30) & 2) != 0)
  {
    v13 = 0;
    v122 = 0;
  }

  if ((v9 & 0x8000000) != 0)
  {
    if (!v20)
    {
      return v10;
    }

    v23 = *(a1 + 408);
    if (v23 <= *(a1 + 400))
    {
      v23 = *(a1 + 400);
    }

    goto LABEL_37;
  }

  if (v9 & 1) != 0 && (*(*(a1 + 392) + 627))
  {
    return 30;
  }

  if (((v9 >> 30) & 1) == 0)
  {
    v23 = *(a1 + 400);
LABEL_37:
    if (v23 <= a3)
    {
      return v10;
    }
  }

  v24 = v9 >> 30;
  if (a4)
  {
    v26 = *a4;
    v25 = a4[1];
  }

  else
  {
    v26 = 0;
    v25 = 0;
  }

  v115 = v25;
  if (!((a6 == 0) | v21 & 1))
  {
    sub_10002939C(a6, v25, &v125);
    v24 = v9 >> 30;
    v9 = v125;
  }

  v116 = v9 & 0xFFFF0000 | v26;
  v124 = 0;
  v27 = v24 | v22 | 0x20;
  pthread_mutex_lock(a1);
  v33 = v27;
  v10 = 0;
  v119 = 1;
  v34 = 512;
  if (!v13)
  {
    v34 = 288;
  }

  v107 = v34;
  v114 = v12;
LABEL_46:
  v35 = (v33 & 0xFFFFFFBF | (((v9 >> 8) & 1) << 6)) ^ 0x40;
  v118 = 0;
  v36 = *(*(a1 + 712) + 8 * (*(a1 + 704) & a3));
  if (!v36)
  {
    if ((v33 & 2) == 0)
    {
      goto LABEL_105;
    }

LABEL_238:
    v36 = 0;
    v10 = 2;
    goto LABEL_262;
  }

  v37 = 0;
  v30 = v115;
  do
  {
    v38 = *(v36 + 8);
    if (v38 != a6 && (!a6 || v38 != *(a6 + 504)))
    {
      goto LABEL_95;
    }

    v39 = *(v36 + 16);
    if (((v39 ^ v9) & 0xC8000000) != 0 || *(v36 + 112) != a3)
    {
      goto LABEL_95;
    }

    if ((v39 & 2) != 0)
    {
      if ((v9 & 0x180) == 0)
      {
        v87 = v119;
        if (v119 == 1)
        {
          v87 = 2;
        }

        v119 = v87;
        *(v36 + 16) = v39 | 4;
        v88 = (v33 & 0xFFFFFFBF | (((v9 >> 8) & 1) << 6)) ^ 0x40;
        sub_100029464(v36);
        v35 = v88;
LABEL_225:
        v12 = v114;
        goto LABEL_221;
      }

      if (*(v36 + 52))
      {
        v10 = *(v36 + 52);
        goto LABEL_262;
      }

      if ((~v39 & 0xA) == 0)
      {
        v10 = 16;
        goto LABEL_262;
      }

      if ((v9 & 0x100) != 0)
      {
        v10 = 0;
        goto LABEL_262;
      }

      v109 = (v33 & 0xFFFFFFBF | (((v9 >> 8) & 1) << 6)) ^ 0x40;
      if ((v39 & 0x8000000000) != 0)
      {
        *(v36 + 16) = v39 | 4;
        cv_wait_rw((a1 + 1328), a1, 2, 0);
      }

      else
      {
        v74 = v119;
        if ((sub_1000245E4(v36, &v121, 0, v119) & 1) == 0)
        {
          v10 = 0;
          LOBYTE(v35) = v109;
          goto LABEL_263;
        }
      }

      v35 = v109;
LABEL_221:
      v9 = v125;
      v33 = v35;
      goto LABEL_46;
    }

    if (v116 && *(v36 + 36) && ((*(v36 + 36) ^ v116) & 0xEFFFFFFF) != 0 || v115 && *(v36 + 40) != v115)
    {
      goto LABEL_95;
    }

    if ((v33 | ((v33 & 2) >> 1)))
    {
      v37 = v36;
      if ((v33 & 2) == 0)
      {
        goto LABEL_97;
      }

LABEL_184:
      if (v37)
      {
        if (!a4)
        {
          LODWORD(v30) = *(v37 + 40);
          v116 = *(v37 + 36);
        }

        goto LABEL_219;
      }

      goto LABEL_238;
    }

    if (v122)
    {
      v40 = *(v36 + 120);
      if (v40 <= *(v36 + 144))
      {
        v40 = *(v36 + 144);
      }

      if (!v13)
      {
        if (v40 < v122)
        {
          goto LABEL_95;
        }

LABEL_72:
        v41 = 1;
        goto LABEL_73;
      }

      if (v40 != v122)
      {
        goto LABEL_95;
      }
    }

    else
    {
      if (!v13)
      {
        goto LABEL_72;
      }

      v40 = *(v36 + 120);
      if (v40 <= *(v36 + 144))
      {
        v40 = *(v36 + 144);
      }
    }

    if (v40 > v13)
    {
      goto LABEL_95;
    }

    v41 = 0;
LABEL_73:
    if (!v37)
    {
      goto LABEL_94;
    }

    v42 = *(v36 + 120);
    if (v42 <= *(v36 + 144))
    {
      v42 = *(v36 + 144);
    }

    v43 = *(v37 + 120);
    if (v43 <= *(v37 + 144))
    {
      v43 = *(v37 + 144);
    }

    if (v42 >= v43)
    {
      if (v42 == v43)
      {
        v44 = *(v37 + 16);
        if ((*(v36 + 16) & 0x200) == (v44 & 0x200))
        {
          sub_1000A57C8();
        }

        if (((v44 ^ v39) & 0x100) == 0)
        {
          sub_1000A579C();
        }

        if (v41)
        {
          if ((v39 & 0x200) != 0 && (v44 & 0x200) == 0)
          {
            goto LABEL_95;
          }
        }

        else if ((v39 & 0x200) == 0 && (v44 & 0x200) != 0)
        {
          goto LABEL_95;
        }
      }

      if ((v9 & 0x200) != 0)
      {
        if ((v39 & 0x80000000000) != 0 || (*(v37 + 21) & 8) == 0)
        {
LABEL_94:
          v37 = v36;
        }
      }

      else if ((v39 & 0x80000000000) == 0 || (*(v37 + 21) & 8) != 0)
      {
        goto LABEL_94;
      }
    }

LABEL_95:
    v36 = *(v36 + 72);
  }

  while (v36);
  if ((v33 & 2) != 0)
  {
    goto LABEL_184;
  }

LABEL_97:
  if (!v37 || (v33 & 4) == 0)
  {
    if (v37)
    {
      if ((v33 & 4) != 0)
      {
        v45 = *(v37 + 16);
        goto LABEL_117;
      }

      goto LABEL_219;
    }

LABEL_105:
    if (a4)
    {
      v47 = v124;
      if (v124)
      {
        if (v119 == 2)
        {
          v124 = 0;
          v9 = v125;
          v48 = v125 & 0xFFFF0000;
          goto LABEL_130;
        }

        goto LABEL_258;
      }

      v50 = v35;
      if (v119 == 1)
      {
        v49 = 2;
      }

      else
      {
        v49 = v119;
      }

      v119 = v49;
      v52 = a4[2];
      v51 = a4[3];
    }

    else
    {
      if ((v125 & 0x10) == 0)
      {
        v36 = 0;
        goto LABEL_262;
      }

      v49 = v119;
      if (v124)
      {
        goto LABEL_128;
      }

      v50 = v35;
      v51 = 0;
      v52 = 0;
      if (v119 == 1)
      {
        v49 = 2;
      }

      v119 = v49;
    }

    v10 = sub_100027208(a1, v51, v116, v52, v125, &v118, &v124, v32);
    if (v10)
    {
      v36 = 0;
      LOBYTE(v35) = v50;
      goto LABEL_262;
    }

    v35 = v50;
    if (v118)
    {
      goto LABEL_221;
    }

LABEL_128:
    if (v49 == 2)
    {
      v47 = v124;
      v9 = v125;
      v124 = 0;
      v48 = v125 & 0xFFFF0000;
      if (!a4)
      {
        v54 = 0;
        v55 = v125 & 0xFFFF0000;
        goto LABEL_131;
      }

LABEL_130:
      v54 = a4[1];
      v55 = *a4 | v48;
LABEL_131:
      *(v47 + 36) = v55;
      *(v47 + 40) = v54;
      *(v47 + 112) = a3;
      if (!a6 || (v56 = *(a6 + 504)) == 0)
      {
        v56 = a6;
      }

      v57 = (*(a1 + 712) + 8 * (*(a1 + 704) & a3));
      v58 = *v57;
      *(v47 + 72) = *v57;
      *(v47 + 8) = v56;
      v59 = v122;
      if ((v35 & 8) == 0)
      {
        v59 = v13;
      }

      *(v47 + 120) = v59;
      if (v35)
      {
        v60 = a3;
      }

      else
      {
        v60 = 0;
      }

      *(v47 + 128) = v60;
      v61 = *(v47 + 16);
      v62 = v9 & 0xFC00;
      if ((v35 & 4) != 0)
      {
        v62 = 0;
      }

      if (v58)
      {
        *(v58 + 80) = v47 + 72;
      }

      v63 = v61 | v62 | v48;
      *v57 = v47;
      *(v47 + 80) = v57;
      v64 = v63 | 0x10000000003;
      *(v47 + 16) = v63 | 0x10000000003;
      if ((v9 & 0x50) != 0)
      {
        v64 = v63 | 0x1000000000BLL;
        *(v47 + 16) = v63 | 0x1000000000BLL;
        if ((v9 & 0x40) != 0)
        {
          v64 = v63 | 0x1100000000BLL;
          *(v47 + 16) = v63 | 0x1100000000BLL;
        }
      }

      v65 = v64 | (v9 << 14) & 0x400000000000;
      if ((v9 & 0x180) != 0)
      {
        v65 |= 0x8000000000uLL;
      }

      v66 = v65 | (v9 << 34) & 0x80000000000;
      if ((v35 & 4) != 0)
      {
        v66 |= v107;
      }

      if ((v9 & 0x100000380) != 0 || (v35 & 4) != 0)
      {
        *(v47 + 16) = v66;
      }

      add_explicit = atomic_fetch_add_explicit((v47 + 24), 0, memory_order_relaxed);
      if ((add_explicit & 0xFFFFFF) != ((add_explicit >> 24) & 0xFFFFF))
      {
        sub_1000A5878();
      }

      v68 = v35;
      obj_retain_0(v47);
      if ((v9 & 0x180) == 0)
      {
        v68 |= 0x10u;
      }

      obj_cache_unlock_write(a1);
      v119 = 0;
      v108 = v68 & 0xFFFFFF9F;
      v111 = v47;
      v106 = v68;
      if ((v68 & 4) != 0)
      {
        v73 = *(v47 + 8);
        v12 = v114;
        if (!v73)
        {
          v73 = *(a1 + 392);
        }

        v10 = omap_get(v73, a3, v13, (v47 + 128), 0, &v120, &v123);
        v71 = v113;
        if (v10)
        {
          goto LABEL_176;
        }

        if ((v9 & 8) != 0 && v123 != v13)
        {
          v10 = 2;
          goto LABEL_176;
        }
      }

      else
      {
        v71 = v113;
        v12 = v114;
        if (v10)
        {
          goto LABEL_176;
        }
      }

      if ((v9 & 0x180) != 0)
      {
        v72 = sub_10002950C(a1, v9, a4, v71, a6, v111, v123, v120, &v117 + 1);
        v10 = v72;
        if (HIBYTE(v117) == 1)
        {
          if (v72)
          {
            v95 = v111;
            obj_free(v111);
          }

          else
          {
            if ((v9 & 0x100) == 0)
            {
              v36 = v111;
              v12 = v114;
              goto LABEL_272;
            }

            v10 = 0;
            v95 = v111;
          }

          v36 = v95;
          v12 = v114;
LABEL_244:
          obj_release(v95);
          goto LABEL_270;
        }
      }

      else
      {
        v10 = obj_read(v111, v123, v120, 0, v69, v70, v123, v120);
      }

LABEL_176:
      pthread_mutex_lock(a1);
      v119 = 2;
      v75 = v120;
      v76 = v111;
      if ((v120 & 0xE0) != 0)
      {
        *(v111 + 16) = *(v111 + 16) & 0xFFFFFFFFFFFF1FFFLL | ((v120 >> 5) << 13);
      }

      if ((v75 & 0x700) != 0)
      {
        *(v111 + 16) = *(v111 + 16) & 0xFFFFFFFFFFFFE3FFLL | (((v75 >> 8) & 7) << 10);
      }

      if (!v10)
      {
        v77 = sub_100029A30(v111, v9, a3, a4, v71, v13, v116, v115);
        if (!v77)
        {
          v35 = v108;
          LODWORD(v30) = v115;
          v37 = v111;
          goto LABEL_219;
        }

        v10 = v77;
        v76 = v111;
      }

      *(v76 + 52) = v10;
      v95 = v76;
      sub_100027D94(v76, v9);
      v96 = v108;
      if ((v106 & 0x10) != 0)
      {
        v96 = v106 & 0x8F;
      }

      LOBYTE(v108) = v96;
      v95[2] = v95[2] & 0xFFFFFFEFFFFFFFF7 | 8;
      obj_cache_unlock_by_state(a1, 2);
      v36 = 0;
      goto LABEL_244;
    }

LABEL_258:
    sub_1000A584C();
  }

  v46 = (v37 + 16);
  v45 = *(v37 + 16);
  if ((v45 & 0x40) != 0)
  {
    goto LABEL_117;
  }

  if (!v13)
  {
    if (!(*(v37 + 16) & 0x20 | v122))
    {
      goto LABEL_203;
    }

    if ((*(v37 + 16) & 0x300) != 0x100 && (*(v37 + 16) & 0x300) != 0x200)
    {
      goto LABEL_299;
    }

    goto LABEL_190;
  }

  if (v13 > *(v37 + 168) && !v122)
  {
LABEL_203:
    v112 = v37;
    v84 = (v33 & 0xFFFFFFBF | (((v9 >> 8) & 1) << 6)) ^ 0x40;
    v85 = v119;
    obj_cache_unlock_by_state(a1, v119);
    v86 = a6;
    if (!a6)
    {
      v86 = *(a1 + 392);
    }

    v10 = omap_get(v86, a3, v13, 0, 0, 0, &v122);
    if (!v10)
    {
      obj_cache_lock_by_state(a1, v85);
      v119 = v85;
      v35 = v84;
      goto LABEL_221;
    }

    v97 = v124;
    if (v124)
    {
      pthread_mutex_lock(a1);
      v119 = 2;
      v36 = v112;
      LOBYTE(v35) = v84;
      v12 = v114;
      goto LABEL_265;
    }

    return v10;
  }

LABEL_117:
  if ((v45 & 0x300) != 0x100 && (v45 & 0x300) != 0x200)
  {
LABEL_299:
    sub_1000A5820();
  }

  v46 = (v37 + 16);
  if (!v13)
  {
LABEL_190:
    if ((v45 & 0x100) != 0)
    {
      goto LABEL_219;
    }

    v53 = 1;
LABEL_192:
    v78 = v119;
    if (v119 == 1)
    {
      v78 = 2;
    }

    v119 = v78;
    v79 = atomic_fetch_add_explicit((v37 + 24), 0, memory_order_relaxed);
    if ((v79 & 0xFFFFFF) == ((v79 >> 24) & 0xFFFFF))
    {
      if (v53)
      {
        v80 = *v46 & 0xFFFFFFFFFFFFFCDFLL | 0x120;
LABEL_213:
        *v46 = v80;
LABEL_217:
        if ((v35 & 8) == 0)
        {
          v9 = v125;
          goto LABEL_219;
        }

        v91 = *(v37 + 16);
        if ((v91 & 0x20000000000) == 0)
        {
          v122 = *(v37 + 120);
          v12 = v114;
          goto LABEL_105;
        }

        *(v37 + 16) = v91 | 0x80;
        v92 = v35;
        cv_wait_rw((a1 + 1328), a1, 2, 0);
        v35 = v92 & 0xFFFFFFF7;
        goto LABEL_225;
      }

      v89 = *v46;
      if ((v9 & 0x200) == 0 || (v89 & 0x80000000000) != 0)
      {
        v80 = v89 & 0xFFFFFFFFFFFFFCFFLL | 0x200;
        goto LABEL_213;
      }
    }

    else
    {
      v81 = *v46;
      if (v53)
      {
        if ((v81 & 0x200) != 0)
        {
          v110 = (v33 & 0xFFFFFFBF | (((v9 >> 8) & 1) << 6)) ^ 0x40;
          if (!v124)
          {
            v93 = v37;
            v94 = sub_100027208(a1, *(v37 + 44), *(v37 + 36), *(v37 + 48), v9, &v118, &v124, v32);
            if (v94)
            {
              v10 = v94;
              v36 = v93;
              LOBYTE(v35) = v110;
              goto LABEL_261;
            }

            if (v124 == v93 || (v118 & 1) != 0)
            {
              v10 = 0;
              v35 = v110;
              goto LABEL_220;
            }

            v37 = v93;
            v81 = *v46;
          }

          *(v37 + 16) = v81 & 0xFFFFFFFFFFFFFFDFLL;
          v82 = v37;
          v83 = obj_clone(v37, 0, &v124, &v118, v29, v30, v31, v32);
          if (v118 == 1)
          {
            sub_1000A57F4();
          }

          v30 = v115;
          v10 = 0;
          if (v83)
          {
            v35 = v110 | 8;
            v37 = v82;
          }

          else
          {
            v37 = v124;
            v124 = 0;
            *(v37 + 16) |= 0x120uLL;
            atomic_fetch_add_explicit((v37 + 24), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
            v35 = v110;
          }
        }

        goto LABEL_217;
      }

      if ((v81 & 0x100) == 0 || (v9 & 8) != 0)
      {
        if ((v9 & 0x200) != 0 && (v81 & 0x80000000000) == 0)
        {
          v35 |= 8u;
        }

        goto LABEL_217;
      }
    }

    v35 |= 8u;
    goto LABEL_217;
  }

  if ((v45 & 0x200) == 0)
  {
    v53 = 0;
    goto LABEL_192;
  }

LABEL_219:
  v90 = v35;
  v36 = v37;
  v115 = v30;
  v10 = sub_100029C50(v37, v9, a3, v13, v116, v30, (v35 >> 6) & 1, &v121, &v119);
  v35 = v90;
  if (v10 == 35)
  {
LABEL_220:
    v12 = v114;
    goto LABEL_221;
  }

LABEL_261:
  v12 = v114;
LABEL_262:
  v74 = v119;
LABEL_263:
  v97 = v124;
  if (v124)
  {
    if (v74 != 2)
    {
      sub_1000A58A4();
    }

LABEL_265:
    LOBYTE(v108) = v35;
    v98 = *(a1 + 684);
    if (!v98)
    {
      sub_1000A58D0();
    }

    *(a1 + 684) = v98 - 1;
    sub_100029F34(v97, 1);
    v74 = v119;
  }

  else
  {
    LOBYTE(v108) = v35;
  }

  if (v74)
  {
    obj_cache_unlock_by_state(a1, v74);
  }

LABEL_270:
  if (!v10)
  {
    if (v36)
    {
LABEL_272:
      v99 = v125;
      if ((v125 & 4) != 0)
      {
        if (v125)
        {
          v100 = 2;
        }

        else
        {
          v100 = 1;
        }

        obj_lock(v36, v100);
        v99 = v125;
      }

      if ((v99 & 1) != 0 && (v101 = obj_modify(v36, v99 & 3, v12, v28, v29, v30, v31, v32), v101))
      {
        v10 = v101;
        if ((v125 & 4) != 0)
        {
          if (v125)
          {
            v102 = 2;
          }

          else
          {
            v102 = 1;
          }

          obj_unlock(v36, v102);
        }

        obj_release(v36);
      }

      else
      {
        if ((v108 & 2) == 0)
        {
          v103 = 136;
          if ((v108 & 0x20) == 0)
          {
            v103 = 144;
          }

          atomic_fetch_add_explicit((a1 + 1104), 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit((a1 + v103 + 976), 1uLL, memory_order_relaxed);
          v104 = qword_100103710 + v103;
          atomic_fetch_add_explicit((qword_100103710 + 264), 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit((v104 + 136), 1uLL, memory_order_relaxed);
        }

        v10 = 0;
        if ((v125 & 0x100) != 0)
        {
          v105 = 0;
        }

        else
        {
          v105 = v36;
        }

        *a9 = v105;
      }
    }

    else
    {
      return 2;
    }
  }

  return v10;
}

uint64_t sub_10002930C(uint64_t result, _BYTE *a2)
{
  *a2 = 1;
  v2 = *(result + 1376);
  if (v2)
  {
    v4 = result;
    while (1)
    {
      if ((*(*(v2 + 136) + 20) & 0x80) == 0)
      {
        result = dev_read_poll(*(*(v4 + 392) + 384));
        if (result != 36)
        {
          break;
        }
      }

      v2 = *(v2 + 104);
      if (!v2)
      {
        return result;
      }
    }

    return sub_10002AE24(v2, a2);
  }

  return result;
}

uint64_t sub_10002939C(uint64_t result, int a2, uint64_t *a3)
{
  v3 = *a3;
  if ((*a3 & 0xC0000000) != 0)
  {
    sub_1000A58FC();
  }

  v5 = result;
  v6 = *(result + 504);
  if (!v6)
  {
    v6 = result;
  }

  if (*(*(v6 + 376) + 264))
  {
    v11 = v3 & 0xFFFFFFFF2FFF03FFLL;
  }

  else
  {
    v8 = v3 | 0x10000000;
    *a3 = v8;
    if (a2 == 36 || (has_secondary_fsroot = apfs_has_secondary_fsroot(result), v8 = *a3, a2 == 37) && has_secondary_fsroot)
    {
      v10 = v8 & 0xFFFFFFFFFFFF1FFFLL | 0x2000;
    }

    else
    {
      v10 = v8 & 0xFFFFFFFFFFFF1FFFLL;
    }

    *a3 = v10;
    result = apfs_has_secondary_fsroot(v5);
    v12 = 1024;
    if (!result)
    {
      v12 = 0;
    }

    v11 = *a3 & 0xFFFFFFFFFFFFE3FFLL | v12;
  }

  *a3 = v11;
  return result;
}

uint64_t sub_100029464(uint64_t *a1)
{
  v1 = a1[2];
  if ((v1 & 2) == 0)
  {
    __assert_rtn("obj_initting_wait", "obj.c", 4190, "o->o_flags & OBJ_INITTING");
  }

  v2 = *a1;
  v5 = xmmword_1000AAED0;
  v4 = 0;
  result = cv_wait_rw((v2 + 1328), v2, 2, (&v5 & (v1 << 23 >> 63)));
  if ((v1 & 0x10000000000) != 0 && *(v2 + 1376))
  {
    result = sub_10002930C(v2, &v4);
    if ((v4 & 1) == 0)
    {
      return pthread_mutex_lock(v2);
    }
  }

  return result;
}

unint64_t sub_10002950C(uint64_t a1, void (*a2)(uint64_t a1, int8x16_t a2, int8x16_t a3), _OWORD *a3, _WORD *a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, _BYTE *a9)
{
  *a9 = 0;
  v17 = _apfs_calloc_typed(1uLL, 0xA8uLL, 0x10A20403EA893BFuLL);
  if (!v17)
  {
    v31 = 12;
LABEL_16:
    *a9 = 1;
    return v31;
  }

  v25 = v17;
  if (!a4)
  {
    goto LABEL_19;
  }

  if (*a4 != 25987)
  {
    if (!a5)
    {
      a5 = *(a1 + 392);
    }

    if (*(a5 + 36) != 13)
    {
      v32 = *(a5 + 384) + 212;
    }

    v42 = *(a6 + 36);
    v43 = *(a6 + 40);
    v41 = *(a6 + 112);
    log_err("%s:%d: %s oid 0x%llx flags 0x%llx type 0x%x/0x%x: attempt to perform async fetch without proper init args\n", v18, v19, v20, v21, v22, v23, v24, "obj_get_async_read");
    v31 = 22;
    goto LABEL_15;
  }

  v26 = a4[1];
  if (!a4[1])
  {
    v30 = 0;
    v29 = v25[20];
    goto LABEL_18;
  }

  if (v26 <= 3 || (v27 = _apfs_malloc_typed(v26, 0x100004052888210uLL), v28 = a4[1], v28 <= 3))
  {
    __assert_rtn("obj_get_async_read", "obj.c", 3780, "args->oia_size >= sizeof(obj_init_async_args_t)");
  }

  v29 = v27;
  bzero(v27, v28);
  v25[20] = v29;
  if (!v29)
  {
    v31 = 12;
LABEL_15:
    _apfs_free(v25, 168);
    goto LABEL_16;
  }

  v30 = a4[1];
LABEL_18:
  memcpy(v29, a4, v30);
  *(v25 + 152) = 1;
LABEL_19:
  pthread_mutex_lock(a1);
  v25[13] = 0;
  v33 = *(a1 + 1384);
  v25[14] = v33;
  *v33 = v25;
  *(a1 + 1384) = v25 + 13;
  obj_cache_unlock_write(a1);
  *v25 = sub_10002C1F4;
  v25[17] = a6;
  *(v25 + 15) = *a3;
  v25[18] = a2;
  obj_retain_0(a6);
  atomic_fetch_add_explicit((a1 + 944), 1u, memory_order_relaxed);
  v31 = obj_read(a6, a7, a8, v25, v34, v35, v36, v37);
  if (!v31)
  {
    *a9 = 1;
    pthread_mutex_lock(a1);
    v38 = *(a6 + 16);
    v39 = v38 & 0xFFFFFF7FFFFFFFFBLL;
    if ((a8 & 0xE0) != 0)
    {
      v39 = v38 & 0xFFFFFF7FFFFF1FFBLL | (a8 << 8) & 0xE000;
    }

    if ((a8 & 0x700) != 0)
    {
      v39 = v39 & 0xFFFFFFFFFFFFE3FFLL | (4 * a8) & 0x1C00;
    }

    *(a6 + 16) = v39;
    obj_cache_unlock_write(a1);
    if ((v38 & 4) != 0)
    {
      cv_wakeup((a1 + 1328));
    }

    return 0;
  }

  return v31;
}

unint64_t obj_read(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 48);
  v9 = *(*a1 + 392);
  v10 = *(*(v9 + 376) + 36);
  if (v8 % v10)
  {
    sub_1000A5928();
  }

  v14 = *(a1 + 128);
  v15 = *(a1 + 8);
  if (v14)
  {
    v16 = *(a1 + 36);
    if ((a3 & 4) != 0 && v15)
    {
      *(a1 + 36) = v16 | 0x10000000;
      if ((*(a1 + 21) & 8) == 0)
      {
        if (a3 >> 5 == 1)
        {
          v17 = (a3 & 0x10) == 0;
          v18 = 824;
          v19 = 632;
        }

        else
        {
          if (a3 >> 5)
          {
            panic("invalid crypto index %d\n");
          }

          v17 = (a3 & 0x10) == 0;
          v18 = 728;
          v19 = 536;
        }

        if (!v17)
        {
          v19 = v18;
        }

        v20 = (a3 >> 8) & 7;
        v22 = v15 + v19;
        if (v20)
        {
          if (v20 != 1)
          {
            panic("invalid tweak type %d\n");
          }

          v21 = *(a1 + 112) ^ HIDWORD(a2) | *(a1 + 112) & 0xFFFFFFFF00000000 ^ (a2 << 32);
          v20 = 4;
          if ((a3 & 8) != 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v21 = (a3 >> 8) & 7;
          if ((a3 & 8) != 0)
          {
            goto LABEL_27;
          }
        }

LABEL_26:
        if ((*(a1 + 21) & 8) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      v20 = 0;
      v21 = 0;
      v22 = 0;
      if ((a3 & 8) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      *(a1 + 36) = v16 & 0xEFFFFFFF;
      if ((a3 & 8) == 0)
      {
        goto LABEL_26;
      }
    }

LABEL_27:
    *(a1 + 120) = a2;
LABEL_28:
    if (!v22 || (v25 = *(v15 + 1152)) == 0)
    {
      v25 = *(v9 + 384);
    }

    extended = dev_read_extended(v25, v14, (v8 + v10 - 1) / v10, *(a1 + 56), v22, a4 != 0, a4, v21, v20);
    v24 = extended;
    if (!a4 && !extended)
    {
      if ((*(a1 + 18) & 0x8002000) != 0)
      {
        return 0;
      }

      else
      {
        v24 = obj_checksum_verify(a1, v27, v28);
        if (v24)
        {
          if (!*(a1 + 8))
          {
            v36 = *(*(*a1 + 392) + 384) + 212;
          }

          v47 = *(a1 + 40);
          v48 = *(a1 + 128);
          v43 = *(a1 + 32);
          v45 = *(a1 + 36);
          v39 = *(a1 + 112);
          v41 = *(a1 + 16);
          log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x paddr 0x%llx error verifying checksum\n", v29, v30, v31, v32, v33, v34, v35, "obj_read");
        }
      }
    }

    return v24;
  }

  if (!v15)
  {
    v23 = *(v9 + 384) + 212;
  }

  v44 = *(a1 + 36);
  v46 = *(a1 + 40);
  v40 = *(a1 + 16);
  v42 = *(a1 + 32);
  v38 = *(a1 + 112);
  log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x object missing paddr!\n", 0, a3, a4, a5, a6, a7, a8, "obj_read");
  v24 = 22;
  if (a4)
  {
    *(a4 + 96) = 22;
    (*a4)(a4);
  }

  return v24;
}

uint64_t sub_100029A30(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  v12 = *(a1 + 16);
  if ((v12 & 0x80020000000) != 0)
  {
LABEL_2:
    v13 = 0;
    if ((v10 & 0x210) == 0 && a4)
    {
      v29 = 0;
      v14 = obj_descriptor_funcs_for_type(*(a1 + 36), &v29);
      if (v14)
      {
        v13 = v14;
      }

      else
      {
        v17 = *(v29 + 8);
        if (v17)
        {
          v13 = v17(a1, a5);
          v12 = *(a1 + 16);
        }

        else
        {
          v13 = 0;
        }
      }
    }

    goto LABEL_31;
  }

  v15 = *(a1 + 56);
  v16 = *(v15 + 16);
  *(a1 + 120) = v16;
  if (!a8)
  {
    *(a1 + 40) = *(v15 + 28);
  }

  if ((!a7 || ((*(v15 + 24) ^ a7) & 0xEFFFFFFF) == 0) && (!a8 || *(v15 + 28) == a8) && *(v15 + 8) == a3)
  {
    v13 = 0;
    if (!a6 || v16 <= a6)
    {
LABEL_19:
      if (!a4)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }
  }

  if ((a2 & 0x20) != 0)
  {
    v13 = 2;
    goto LABEL_19;
  }

  if (!*(a1 + 8))
  {
    v18 = *(*(*a1 + 392) + 384) + 212;
  }

  v28 = *(v15 + 28);
  v26 = *(v15 + 8);
  v27 = *(v15 + 24);
  v25 = *(a1 + 128);
  log_err("%s:%d: %s wrong object at 0x%llx - wanted oid 0x%llx type 0x%x:0x%x xid %lld - got oid 0x%llx type 0x%x:0x%x xid %lld\n", a2, a3, a4, a5, a6, a7, a8, "obj_init");
  v13 = nx_corruption_detected_int(*(*a1 + 392));
  if (!a4)
  {
    goto LABEL_27;
  }

LABEL_25:
  if (*a4)
  {
    v19 = *(a1 + 36);
    goto LABEL_28;
  }

LABEL_27:
  v20 = *(a1 + 56);
  v19 = *(v20 + 24) | (*(a1 + 38) << 16);
  LODWORD(v20) = *(v20 + 28);
  *(a1 + 36) = v19;
  *(a1 + 40) = v20;
LABEL_28:
  v12 = *(a1 + 16);
  v21 = v19 & 0x10000000;
  if ((v12 & 0x10000000) != v21)
  {
    v12 = v12 & 0xFFFFFFFFEFFFFFFFLL | v21;
    *(a1 + 16) = v12;
  }

  if (!v13)
  {
    goto LABEL_2;
  }

LABEL_31:
  *(a1 + 52) = v13;
  if (v13)
  {
    v22 = 0;
  }

  else
  {
    v22 = (v10 & 0x10) == 0;
  }

  v23 = 0xFFFFFE7FFFFFFFF9;
  if (!v22)
  {
    v23 = 0xFFFFFE7FFFFFFFFBLL;
  }

  *(a1 + 16) = v12 & v23;
  if ((v12 & 4) != 0)
  {
    cv_wakeup((*a1 + 1328));
  }

  return v13;
}

uint64_t sub_100029C50(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7, int *a8, _BYTE *a9)
{
  v9 = *(a1 + 16);
  if ((v9 & 0x10) != 0)
  {
    return 2;
  }

  v14 = a2;
  v16 = *a1;
  v17 = a2 & 0x40 | ~v9 & 0x1000000008;
  v18 = (v9 >> 46) & 1;
  if ((a2 & 0x100000040) != 0)
  {
    LODWORD(v18) = 0;
  }

  if (v17)
  {
    v19 = v18 == 0;
  }

  else
  {
    v19 = 0;
  }

  if (!v19)
  {
    if (*a9 == 1)
    {
      *a9 = 2;
    }

    if (!v17)
    {
      v20 = *(a1 + 16) & 0xFFFFFFEFFFFFFFF7;
      *(a1 + 16) = v20;
      if ((a2 & 0x100000000) != 0)
      {
        *(a1 + 16) = v20 | 0x400000000000;
      }
    }

    if (v18)
    {
      *(a1 + 16) &= ~0x400000000000uLL;
    }
  }

  if ((a2 & 0x50) == 0 && (*(a1 + 16) & 8) != 0)
  {
    sub_1000A5954();
  }

  if (a7 && (sub_1000245E4(a1, a8, 0, *a9) & 1) != 0)
  {
    return 35;
  }

  if ((atomic_fetch_and_explicit((a1 + 32), 0xFFFFFFFD, memory_order_relaxed) & 2) != 0)
  {
    cv_wakeup((v16 + 1328));
  }

  if ((*(a1 + 32) & 1) == 0 && (*(a1 + 19) & 0x80) == 0)
  {
    v22 = pthread_rwlock_rdlock((v16 + 128));
    if (v22)
    {
      panic("%s:%d: rdlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 3490, v22);
    }

    if (*(a1 + 88) != 3735928559)
    {
      sub_10002AF54(v16, a1);
    }

    v23 = pthread_rwlock_unlock((v16 + 128));
    if (v23)
    {
      panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 3494, v23);
    }
  }

  if ((v14 & 0xC8000000) == 0 && a4)
  {
    v24 = *(a1 + 168);
    if (v24 <= a4)
    {
      v24 = a4;
    }

    *(a1 + 168) = v24;
  }

  v25 = *(a1 + 16);
  if ((v14 & 1) != 0 && !a4 && (v25 & 0x200) != 0)
  {
    sub_1000A5980();
  }

  if (((v25 ^ v14) & 0xC8000000) != 0)
  {
    sub_1000A59AC();
  }

  if (a5 && ((*(a1 + 36) ^ a5) & 0xEFFFFFFF) != 0 || a6 && *(a1 + 40) != a6)
  {
    sub_1000A59D8();
  }

  if ((v25 & 0x80020000040) == 0 && (a5 && ((*(*(a1 + 56) + 24) ^ a5) & 0xEFFFFFFF) != 0 || a6 && *(*(a1 + 56) + 28) != a6))
  {
    sub_1000A5A04();
  }

  v26 = *(a1 + 112);
  if (v26 != a3 && v26 != *(a1 + 128) && v26 != *(a1 + 152))
  {
    sub_1000A5A30();
  }

  if ((v25 & 0x800E0000040) == 0 && v26 != *(*(a1 + 56) + 8))
  {
    sub_1000A5A5C();
  }

  result = 0;
  if (a4)
  {
    if (*(a1 + 120) > a4)
    {
      sub_1000A5A88();
    }
  }

  return result;
}

void sub_100029F34(uint64_t a1, char a2)
{
  v4 = *a1;
  v5 = *(a1 + 16);
  if ((v5 & 0xC00000000) != 0 && !*(v4 + 940))
  {
    sub_1000A5AB4();
  }

  if (v5)
  {
    v6 = *(a1 + 72);
    v7 = *(a1 + 80);
    if (v6)
    {
      *(v6 + 80) = v7;
    }

    *v7 = v6;
    *(a1 + 16) = v5 & 0xFFFFFFFFFFFFFFFELL;
  }

  v8 = atomic_load_explicit((a1 + 32), memory_order_acquire) & 0x10;
  if (*(a1 + 88) != 3735928559 || v8 != 0)
  {
    v10 = pthread_rwlock_wrlock((v4 + 128));
    if (v10)
    {
      panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 3080, v10);
    }

    v11 = *(a1 + 88);
    if (v11 == 3735928559)
    {
      goto LABEL_23;
    }

    v12 = *(a1 + 16);
    if ((v12 & 0x80000000) != 0)
    {
      v13 = *(a1 + 96);
      v14 = 768;
      if ((*(a1 + 16) & 0x8000000) == 0)
      {
        v14 = 752;
      }

      v15 = (v4 + v14);
      if (v11)
      {
        v15 = (v11 + 96);
      }

      *v15 = v13;
      *v13 = v11;
    }

    else
    {
      if ((*(a1 + 32) & 1) == 0)
      {
        sub_10002BDA8(a1);
        goto LABEL_23;
      }

      if (*(v4 + 888) == a1)
      {
        *(v4 + 888) = v11;
      }

      if ((v12 & 0x40000000) != 0)
      {
        v24 = *(v4 + 912);
        if (!v24)
        {
          sub_1000A5AE0();
        }

        v25 = *(a1 + 96);
        v26 = (v4 + 848);
        if (v11)
        {
          v26 = (v11 + 96);
        }

        *v26 = v25;
        *v25 = v11;
        *(v4 + 912) = v24 - 1;
      }

      else
      {
        v21 = *(v4 + 908);
        if (!v21)
        {
          sub_1000A5B0C();
        }

        v22 = *(a1 + 96);
        v23 = (v4 + 832);
        if (v11)
        {
          v23 = (v11 + 96);
        }

        *v23 = v22;
        *v22 = v11;
        *(v4 + 908) = v21 - 1;
      }
    }

    *(a1 + 88) = 3735928559;
LABEL_23:
    sub_10002C448(v4, a1);
    v16 = pthread_rwlock_unlock((v4 + 128));
    if (v16)
    {
      panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 3108, v16);
    }
  }

  if ((a2 & 1) != 0 || !sub_10002C090(a1))
  {

    sub_10002C0D8(a1, 1);
  }

  else
  {
    if (*(v4 + 728))
    {
      v17 = *(v4 + 736);
      if (!v17)
      {
        sub_1000A5B38();
      }

      v20 = *(v17 + 72);
      v18 = (v17 + 72);
      v19 = v20;
      *(a1 + 72) = v20;
      if (v20)
      {
        *(v19 + 80) = a1 + 72;
      }
    }

    else
    {
      v18 = (v4 + 728);
      *(a1 + 72) = 0;
    }

    *v18 = a1;
    *(a1 + 80) = v18;
    *(v4 + 736) = a1;
  }
}

uint64_t obj_lock(uint64_t a1, unsigned int a2)
{
  if (a2 >= 4)
  {
    sub_1000A5B64();
  }

  if (a2)
  {
    if (pthread_rwlock_rdlock((a1 + 176)))
    {
      panic("%s:%d: rdlock == 0 failed %d\n");
    }
  }

  else
  {
    if (!a2)
    {
      panic("invalid lock flags: 0x%x\n");
    }

    if (pthread_rwlock_wrlock((a1 + 176)))
    {
      panic("%s:%d: wrlock == 0 failed %d\n");
    }
  }

  return 0;
}

uint64_t obj_modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v9 = *(*a1 + 392);
  if (a1[1])
  {
    v10 = a1[1];
  }

  else
  {
    v10 = *(*a1 + 392);
  }

  if (a2 >= 4)
  {
    sub_1000A5B90();
  }

  v12 = a2;
  v14 = a1[2];
  if ((v14 & 0x8000000) == 0)
  {
    if (*(v9 + 627))
    {
      return 30;
    }

    if (!xid_is_current_tx(*(*a1 + 392), a3))
    {
      return 22;
    }

    v14 = a1[2];
  }

  if ((v14 & 0x10000000000) != 0)
  {
    if (*(v10 + 36) != 13)
    {
      v22 = *(v10 + 384) + 212;
    }

    v84 = *(a1 + 9);
    v89 = *(a1 + 10);
    v80 = *(a1 + 8);
    v72 = a1[14];
    log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x can't modify object before read completes\n", a2, a3, a4, a5, a6, a7, a8, "obj_modify");
    return 22;
  }

  v16 = a1[8];
  if (v16 && v16 == a1[7])
  {
    if (!qword_100103710)
    {
      sub_1000A56C0();
    }

    v17 = *(a1 + 12);
    v18 = _apfs_obj_zalloc(v17, *(v8 + 952));
    sub_10002C488((v8 + 976), v14, v18, v17);
    sub_10002C488((qword_100103710 + 136), v14, v18, v17);
    if (!v18)
    {
      return 12;
    }

    for (i = (a1 + 4); (atomic_fetch_or_explicit(i, 8u, memory_order_acquire) & 8) != 0; i = (a1 + 4))
    {
      pthread_mutex_lock((v8 + 328));
      pthread_mutex_unlock((v8 + 328));
    }

    v23 = a1[8];
    if (v23 && v23 == a1[7])
    {
      if ((*(a1 + 18) & 0x8002000) == 0 && obj_checksum_verify_phys(v23, *(a1 + 12), v19, v20))
      {
        if (*(v10 + 36) == 13)
        {
          is_panic_on_corruption_enabled = nx_is_panic_on_corruption_enabled(*(v10 + 392));
        }

        else
        {
          is_panic_on_corruption_enabled = nx_is_panic_on_corruption_enabled(v10);
          v31 = *(v10 + 384) + 212;
        }

        v95 = a1[7];
        v96 = a1[8];
        v90 = *(a1 + 10);
        v94 = a1[16];
        v81 = *(a1 + 8);
        v85 = *(a1 + 9);
        v73 = a1[14];
        v77 = a1[2];
        log_corrupt(is_panic_on_corruption_enabled, "%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x paddr 0x%llx error verifying checksum, phys %p/%p\n", v25, v26, v27, v28, v29, v30, "obj_modify");
      }

      memcpy(v18, a1[7], v17);
      a1[8] = v18;
      atomic_fetch_and_explicit(a1 + 8, 0xFFFFFFF7, memory_order_release);
    }

    else
    {
      atomic_fetch_and_explicit(a1 + 8, 0xFFFFFFF7, memory_order_release);
      fs_obj_zfree_oc(v18, v17, a1[2], v8);
    }
  }

  v32 = a1[2];
  if ((v32 & 0x80000000) != 0)
  {
    return 0;
  }

  if ((v32 & 0x40000000) == 0)
  {
    if ((v32 & 0xC00000000) != 0 || a1[15] == a3)
    {
      return 0;
    }

    pthread_mutex_lock(v8);
    while (1)
    {
      v33 = a1[2];
      if ((v33 & 0xC00000000) != 0 || a1[15] == a3)
      {
        break;
      }

      v34 = *(*(v9 + 376) + 36);
      v35 = *(a1 + 12);
      v98 = 0;
      if ((v33 & 0x100000000) == 0)
      {
        a1[2] = v33 | &_mh_execute_header;
        v40 = (v34 + v35 - 1) / v34;
        obj_cache_unlock_write(v8);
        v15 = spaceman_reserve(v10, 0x48u, v40, a3, &v98);
        pthread_mutex_lock(v8);
        v48 = a1[2];
        a1[2] = v48 & 0xFFFFFFFCFFFFFFFFLL;
        if (v15)
        {
          if (*(v10 + 36) != 13)
          {
            v50 = *(v10 + 384) + 212;
          }

          v86 = *(a1 + 9);
          v91 = *(a1 + 10);
          v82 = *(a1 + 8);
          v74 = a1[14];
          log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error reserving %d blocks of space: %d\n", v41, v42, v43, v44, v45, v46, v47, "obj_modify");
        }

        else
        {
          v49 = 0x800000000;
          if ((v98 & 0x10) == 0)
          {
            v49 = 0x400000000;
          }

          a1[2] = v49 & 0xFFFFEFFFFFFFFFFFLL | ((((v98 & 0x10000) >> 16) & 1) << 44) | v48 & 0xFFFFFFFCFFFFFFFFLL;
        }

        obj_cache_unlock_write(v8);
        if ((v48 & 0x200000000) != 0)
        {
          cv_wakeup((v8 + 1328));
        }

        return v15;
      }

      a1[2] = v33 | 0x200000000;
      cv_wait_rw((v8 + 1328), v8, 2, 0);
    }

    goto LABEL_49;
  }

  if (v12 < 2 || (a1[4] & 1) != 0)
  {
    return 0;
  }

  pthread_mutex_lock(v8);
  if (a1[4])
  {
LABEL_49:
    obj_cache_unlock_write(v8);
    return 0;
  }

  v36 = a1[19];
  if (v36)
  {
LABEL_48:
    sub_10002B3B4(a1, a3, v36);
    goto LABEL_49;
  }

  if (a1[15] == a3)
  {
    v36 = a1[16];
    goto LABEL_48;
  }

  v38 = (*(*(v9 + 376) + 36) + *(a1 + 12) - 1) / *(*(v9 + 376) + 36);
  atomic_fetch_or_explicit(a1 + 8, 1u, memory_order_relaxed);
  obj_cache_unlock_write(v8);
  if ((*(a1 + 19) & 0x10) != 0)
  {
    v97 = 0;
  }

  else
  {
    if (*(a1 + 18) == 11 || *(a1 + 20) == 11)
    {
      v39 = 2;
    }

    else
    {
      v39 = 1;
    }

    v97 = v39;
  }

  v51 = spaceman_alloc(v10, 72, v38, a3, &v97, 0);
  if (v51)
  {
    v59 = v51;
    if (*(v10 + 36) != 13)
    {
      v68 = *(v10 + 384) + 212;
    }

    v70 = *(a1 + 8);
    v69 = (a1 + 4);
    v92 = v69[2];
    v87 = v69[1];
    v75 = *(v69 + 10);
    v78 = *(v69 - 2);
    log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error allocating new location %d\n", v52, v53, v54, v55, v56, v57, v58, "obj_modify");
    pthread_mutex_lock(v8);
    atomic_fetch_and_explicit(v69, 0xFFFFFFFE, memory_order_relaxed);
    obj_cache_unlock_write(v8);
    return v59;
  }

  else
  {
    pthread_mutex_lock(v8);
    v60 = a1[16];
    atomic_fetch_and_explicit(a1 + 8, 0xFFFFFFFE, memory_order_relaxed);
    sub_10002B3B4(a1, a3, v97);
    obj_cache_unlock_write(v8);
    v15 = spaceman_free(v10, 64, v60, v38, a3);
    if (v15)
    {
      if (*(v10 + 36) != 13)
      {
        v71 = *(v10 + 384) + 212;
      }

      v88 = *(a1 + 9);
      v93 = *(a1 + 10);
      v79 = a1[2];
      v83 = *(a1 + 8);
      v76 = a1[14];
      log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error freeing old space @ 0x%llx: %d\n", v61, v62, v63, v64, v65, v66, v67, "obj_modify");
    }
  }

  return v15;
}

uint64_t obj_unlock(uint64_t a1, unsigned int a2)
{
  if (a2 >= 4)
  {
    sub_1000A5BBC();
  }

  if (a2)
  {
    if (pthread_rwlock_unlock((a1 + 176)))
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (!a2)
    {
      panic("invalid unlock flags: 0x%x\n");
    }

    if (pthread_rwlock_unlock((a1 + 176)))
    {
LABEL_7:
      panic("%s:%d: unlock == 0 failed %d\n");
    }
  }

  return 0;
}

uint64_t obj_checkpoint_get(pthread_mutex_t *a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, int a6, unint64_t a7, uint64_t a8, uint64_t *a9)
{
  v57 = a7;
  v58 = a5;
  v55 = 0;
  if (!a4)
  {
    return 22;
  }

  if (a4[3] < 0x178)
  {
    return 22;
  }

  v10 = a4[2];
  if (!v10)
  {
    return 22;
  }

  v12 = *(*(*a1[6].__opaque + 376) + 36);
  if (v10 % v12)
  {
    return 22;
  }

  v16 = a2 | (*(a4 + 1) << 16);
  if ((v16 & 0x80000000) == 0)
  {
    sub_1000A5BE8();
  }

  LODWORD(v18) = a6;
  v56 = 0;
  pthread_mutex_lock(a1);
  v22 = sub_100027208(a1, a4[3], *a4, a4[2], v16, 0, &v56, v21);
  if (v22)
  {
    v13 = v22;
    goto LABEL_51;
  }

  v23 = a4[1];
  v24 = *a4 | v16 & 0xFFFF0000;
  v25 = v56;
  *(v56 + 36) = v24;
  *(v25 + 40) = v23;
  v26 = (v10 + v12 - 1) / v12;
  *(v25 + 112) = a3;
  *(v25 + 120) = a8;
  v53 = v16;
  *(v25 + 16) |= v16 & 0xA000FC00 | (a2 << 34) & 0x80000000000 | 0x2000000002;
  *(v25 + 128) = a5;
  obj_retain_0(v25);
  obj_cache_unlock_write(a1);
  if (v26 <= a7)
  {
    v41 = obj_read(v25, 0, 0, 0, v27, v28, v29, v30);
    goto LABEL_28;
  }

  v31 = *(v25 + 56);
  v32 = v26;
  do
  {
    if (v57 >= v32)
    {
      v33 = v32;
    }

    else
    {
      v33 = v57;
    }

    v34 = dev_read(*(*(*v25 + 392) + 384));
    if (v34)
    {
      v13 = v34;
      goto LABEL_36;
    }

    v32 -= v33;
    if (!v32)
    {
      goto LABEL_25;
    }

    v37 = *a1[6].__opaque;
    v38 = *(v37 + 376);
    if (v18 + v33 >= (*(v38 + 108) & 0x7FFFFFFFu))
    {
      v18 = 0;
    }

    else
    {
      v18 = (v18 + v33);
    }

    v31 += v33 * *(v38 + 36);
    v39 = nx_checkpoint_data_block_address(v37, v18, &v58, &v57);
  }

  while (v32 >= 1 && v39 == 0);
  v13 = v39;
  if (v39)
  {
LABEL_36:
    pthread_mutex_lock(a1);
    goto LABEL_49;
  }

LABEL_25:
  if ((*(v25 + 18) & 0x8002000) != 0)
  {
    pthread_mutex_lock(a1);
    goto LABEL_29;
  }

  v41 = obj_checksum_verify(v25, v35, v36);
LABEL_28:
  v13 = v41;
  pthread_mutex_lock(a1);
  if (v13)
  {
LABEL_49:
    v49 = *(v25 + 16);
    v47 = *(v25 + 48);
    v48 = a1;
    goto LABEL_50;
  }

LABEL_29:
  if ((*(v25 + 18) & 0x8002000) == 0)
  {
    v50 = *(v25 + 56);
    if (*(v50 + 24) != *(v25 + 36) || *(v50 + 28) != *(v25 + 40) || *(v50 + 8) != a3 || *(v50 + 16) != a8)
    {
      v13 = nx_corruption_detected_int(*a1[6].__opaque);
      if (v13)
      {
        goto LABEL_49;
      }
    }
  }

  v42 = (*a1[11].__opaque + 8 * (*(v25 + 112) & LODWORD(a1[11].__sig)));
  v43 = *v42;
  *(v25 + 72) = *v42;
  if (v43)
  {
    *(v43 + 80) = v25 + 72;
  }

  *v42 = v25;
  *(v25 + 80) = v42;
  v44 = *(v25 + 16) | 1;
  *(v25 + 88) = 0;
  *(v25 + 16) = v44;
  v45 = *&a1[11].__opaque[40];
  *(v25 + 96) = v45;
  *v45 = v25;
  *&a1[11].__opaque[40] = v25 + 88;
  v46 = obj_descriptor_funcs_for_type(*(v25 + 36), &v55);
  if (v46)
  {
    v13 = v46;
    goto LABEL_34;
  }

  v51 = *(v55 + 8);
  if (v51 && (v52 = v51(v25, 0), v52))
  {
    v13 = v52;
    v44 = *(v25 + 16);
LABEL_34:
    v47 = *(v25 + 48);
    v48 = a1;
    LODWORD(v49) = v44;
LABEL_50:
    obj_cache_ephemeral_adjust(v48, v49, v47, -1);
    atomic_fetch_add_explicit((v25 + 24), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
    sub_100029F34(v25, 0);
LABEL_51:
    obj_cache_unlock_write(a1);
  }

  else
  {
    sub_100027D94(v25, v53);
    obj_cache_unlock_write(a1);
    v13 = 0;
    *a9 = v25;
  }

  return v13;
}

unint64_t obj_checksum_verify(uint64_t a1, int8x16_t a2, int8x16_t a3)
{
  v4 = *(*a1 + 392);
  v5 = *(a1 + 56);
  result = fletcher64_verify_cksum(v5, (v5 + 8), (*(a1 + 48) - 8), 0, a2, a3);
  if (result)
  {
    if (!*(a1 + 8))
    {
      v14 = *(*(*a1 + 392) + 384) + 212;
    }

    v19 = *(v5 + 7);
    v17 = *(v5 + 2);
    v18 = *(v5 + 6);
    v16 = *v5;
    log_err("%s:%d: %s failed: cksum 0x%016llx, oid 0x%llx, o_xid 0x%llx, o_type 0x%x, o_subtype 0x%x, size %d\n", v7, v8, v9, v10, v11, v12, v13, "obj_checksum_verify");
    atomic_fetch_add_explicit((*(v4 + 376) + 992), 1uLL, memory_order_relaxed);
    if (*(v4 + 625) == 1)
    {
      v15 = *(v4 + 616);
      if (v15)
      {
        v15(a1);
      }
    }

    return nx_corruption_detected_int(v4);
  }

  return result;
}

uint64_t obj_async_wait(uint64_t a1)
{
  v2 = *a1;
  v7 = 0;
  pthread_mutex_lock(v2);
  while (1)
  {
    v3 = *(v2 + 1376);
    if (!v3)
    {
LABEL_8:
      if (*(a1 + 21))
      {
        v5 = 2;
      }

      else
      {
        v5 = *(a1 + 52);
      }

      obj_cache_unlock_write(v2);
      return v5;
    }

    while (*(v3 + 136) != a1)
    {
      v3 = *(v3 + 104);
      if (!v3)
      {
        goto LABEL_8;
      }
    }

    v4 = *(a1 + 16);
    if ((v4 & 0x8000000000) == 0)
    {
      break;
    }

    *(a1 + 16) = v4 | 4;
    cv_wait_rw((v2 + 1328), v2, 2, 0);
  }

  sub_10002AE24(v3, &v7);
  if (v7 == 1)
  {
    obj_cache_unlock_write(v2);
  }

  return *(a1 + 52);
}

uint64_t sub_10002AE24(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 136);
  v3 = v2[2];
  if ((v3 & 0x10000000000) != 0)
  {
    v5 = *v2;
    while ((v3 & 0x8000000000) != 0)
    {
      v2[2] = v3 | 4;
      *a2 = 1;
      result = cv_wait_rw((v5 + 1328), v5, 2, 0);
      v3 = v2[2];
      if ((v3 & 0x10000000000) == 0)
      {
        return result;
      }
    }

    v2[2] = v3 | 0x8000000000;
    obj_cache_unlock_write(v5);
    *a2 = 0;
    v6 = *(*(*v2 + 392) + 384);

    return dev_read_finish(v6);
  }

  return result;
}

atomic_ullong *obj_retain_ephemeral_no_ref(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x80000000) == 0)
  {
    panic("obj %p oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x refs 0x%llx is not ephemeral\n", a1, *(a1 + 112), v1, *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 24));
  }

  return obj_retain_0(a1);
}

uint64_t sub_10002AF54(uint64_t result, uint64_t a2)
{
  if (*(a2 + 19) & 0x80) != 0 || (atomic_fetch_or_explicit((a2 + 32), 0, memory_order_relaxed))
  {
    sub_1000A5C14();
  }

  if ((atomic_fetch_or_explicit((a2 + 32), 0x10u, memory_order_relaxed) & 0x10) == 0)
  {
    v3 = result;
    add_explicit = atomic_fetch_add_explicit((result + 904), 1u, memory_order_relaxed);
    if (add_explicit >= 0x100)
    {
      do
      {
        atomic_fetch_add_explicit((v3 + 904), 0xFFFFFFFF, memory_order_relaxed);
        v5 = pthread_rwlock_unlock((v3 + 128));
        if (v5)
        {
          panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 496, v5);
        }

        v6 = pthread_rwlock_wrlock((v3 + 128));
        if (v6)
        {
          panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 497, v6);
        }

        sub_10002BC1C(v3);
        v7 = pthread_rwlock_unlock((v3 + 128));
        if (v7)
        {
          panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 503, v7);
        }

        result = pthread_rwlock_rdlock((v3 + 128));
        if (result)
        {
          panic("%s:%d: rdlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 506, result);
        }

        add_explicit = atomic_fetch_add_explicit((v3 + 904), 1u, memory_order_relaxed);
      }

      while (add_explicit > 0xFF);
    }

    *(*(v3 + 896) + 8 * add_explicit) = a2;
    atomic_fetch_or_explicit((a2 + 32), add_explicit << 24, memory_order_relaxed);
  }

  return result;
}

uint64_t obj_ephemeral_set_persistent(uint64_t a1, int a2)
{
  if ((*(a1 + 19) & 0x80) == 0)
  {
    return 22;
  }

  v5 = *a1;
  pthread_mutex_lock(*a1);
  v6 = *(a1 + 16);
  if ((a2 != 0) != ((v6 & 0x8000000) == 0))
  {
    obj_cache_ephemeral_adjust(v5, v6, *(a1 + 48), -1);
    v8 = *(a1 + 88);
    v9 = *(a1 + 96);
    v7 = a1 + 88;
    v10 = (v8 + 96);
    if (a2)
    {
      if (!v8)
      {
        v10 = v5 + 12;
      }

      v10->__sig = v9;
      *v9 = v8;
      v11 = *(a1 + 16);
      *(a1 + 16) = v11 & 0xFFFFFFFFF7FFFFFFLL;
      *(a1 + 36) &= ~0x8000000u;
      if ((v11 & 0x80020000000) == 0)
      {
        *(*(a1 + 56) + 24) &= ~0x8000000u;
      }

      v12 = *&v5[11].__opaque[40];
      *(a1 + 88) = 0;
      *(a1 + 96) = v12;
      *v12 = a1;
      *&v5[11].__opaque[40] = v7;
      v13 = *(a1 + 48);
      atomic_fetch_add_explicit(&v5[19].__opaque[32], -v13, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5[19].__opaque[48], v13, memory_order_relaxed);
      atomic_fetch_add_explicit(v5[20].__opaque, 1uLL, memory_order_relaxed);
      v14 = qword_100103710;
      v15 = *(a1 + 48);
      atomic_fetch_add_explicit((qword_100103710 + 416), -v15, memory_order_relaxed);
      atomic_fetch_add_explicit((v14 + 432), v15, memory_order_relaxed);
      atomic_fetch_add_explicit((v14 + 448), 1uLL, memory_order_relaxed);
      v16 = &v5[18].__opaque[48];
      if (*(a1 + 56))
      {
        v17 = *(a1 + 48);
        atomic_fetch_add_explicit(v16, v17, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5[19].__sig, v17, memory_order_relaxed);
        v18 = 3;
      }

      else
      {
        v18 = 5;
      }

      atomic_fetch_add_explicit(&v16[v18], 1uLL, memory_order_relaxed);
      v27 = qword_100103710;
      v28 = (qword_100103710 + 368);
      if (*(a1 + 56))
      {
        v29 = *(a1 + 48);
        atomic_fetch_add_explicit(v28, v29, memory_order_relaxed);
        v30 = (v27 + 376);
LABEL_23:
        atomic_fetch_add_explicit(v30, v29, memory_order_relaxed);
        v32 = 3;
LABEL_25:
        atomic_fetch_add_explicit(&v28[v32], 1uLL, memory_order_relaxed);
        obj_cache_ephemeral_adjust(v5, *(a1 + 16), *(a1 + 48), 1);
        goto LABEL_26;
      }
    }

    else
    {
      if (!v8)
      {
        v10 = (v5 + 752);
      }

      v10->__sig = v9;
      *v9 = v8;
      v19 = *(a1 + 16);
      *(a1 + 16) = v19 | 0x8000000;
      *(a1 + 36) |= 0x8000000u;
      if ((v19 & 0x80020000000) == 0)
      {
        *(*(a1 + 56) + 24) |= 0x8000000u;
      }

      sig = v5[12].__sig;
      *(a1 + 88) = 0;
      *(a1 + 96) = sig;
      *sig = a1;
      v5[12].__sig = v7;
      v21 = *(a1 + 48);
      atomic_fetch_add_explicit(&v5[18].__opaque[48], -v21, memory_order_relaxed);
      atomic_fetch_add_explicit(v5[19].__opaque, v21, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5[19].__opaque[16], 1uLL, memory_order_relaxed);
      v22 = qword_100103710;
      v23 = *(a1 + 48);
      atomic_fetch_add_explicit((qword_100103710 + 368), -v23, memory_order_relaxed);
      atomic_fetch_add_explicit((v22 + 384), v23, memory_order_relaxed);
      atomic_fetch_add_explicit((v22 + 400), 1uLL, memory_order_relaxed);
      v24 = &v5[19].__opaque[32];
      if (*(a1 + 56))
      {
        v25 = *(a1 + 48);
        atomic_fetch_add_explicit(v24, v25, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5[19].__opaque[40], v25, memory_order_relaxed);
        v26 = 3;
      }

      else
      {
        v26 = 5;
      }

      atomic_fetch_add_explicit(&v24[v26], 1uLL, memory_order_relaxed);
      v31 = qword_100103710;
      v28 = (qword_100103710 + 416);
      if (*(a1 + 56))
      {
        v29 = *(a1 + 48);
        atomic_fetch_add_explicit(v28, v29, memory_order_relaxed);
        v30 = (v31 + 424);
        goto LABEL_23;
      }
    }

    v32 = 5;
    goto LABEL_25;
  }

LABEL_26:
  obj_cache_unlock_write(v5);
  return 0;
}

uint64_t obj_set_skip_checkpoint_traverse(uint64_t a1, int a2)
{
  v3 = a2 != 0;
  v4 = *a1;
  pthread_mutex_lock(*a1);
  *(a1 + 16) = *(a1 + 16) & 0xFFFFFFBFFFFFFFFFLL | (v3 << 38);
  obj_cache_unlock_write(v4);
  return 0;
}

uint64_t *sub_10002B3B4(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *result;
  v7 = result[2];
  if ((v7 & 0x10) != 0)
  {
    panic("deleted object @ %p can not be dirtied!! (flags: 0x%llx)\n", result, v7);
  }

  if ((v7 & 0x80000000000) != 0)
  {
    panic("ciphertext object @ %p can not be dirtied!! (flags: 0x%llx)\n", result, v7);
  }

  if ((v7 & 0x8000000) == 0)
  {
    result = xid_is_current_tx(*(v6 + 392), a2);
    if (!result)
    {
      v8 = *(v5 + 112);
      panic("oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x bad dirty xid: 0x%llx\n", v8, *(v5 + 16), *(v5 + 32), *(v5 + 36), *(v5 + 40), a2);
    }
  }

  v9 = *(v5 + 64);
  if (v9 && v9 == *(v5 + 56))
  {
    panic("oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x object not prepared before dirtying\n", *(v5 + 112), *(v5 + 16), *(v5 + 32), *(v5 + 36), *(v5 + 40));
  }

  v10 = *(v5 + 16);
  if ((v10 & 0x80000000) != 0)
  {
    *(v5 + 144) = a2;
  }

  else if (atomic_fetch_or_explicit((v5 + 32), 1u, memory_order_relaxed))
  {
    if (a3 && *(v5 + 152) != a3)
    {
      v27 = *(v5 + 152);
      panic("new address mismatch on redirty 0x%llx 0x%llx\n");
    }
  }

  else
  {
    v11 = *(v5 + 36);
    if ((v10 & 0xC00000000) == 0 && !(v11 >> 30))
    {
      v12 = *(v5 + 120);
      if (v12 != a2 && *(v5 + 144) != a2)
      {
        panic("virtual object not prepared before dirtying: oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x xid 0x%llx 0x%llx 0x%llx\n", *(v5 + 112), v10, *(v5 + 32), v11, *(v5 + 40), v12, *(v5 + 144), a2);
      }
    }

    *(v5 + 168) = 0;
    if (v11 >> 30 == 1)
    {
      v13 = *(v5 + 16);
      if ((v13 & 0x40) == 0)
      {
        v14 = *(v5 + 120);
        if (v14 != a2)
        {
          v15 = *(v5 + 144);
          if (v14 != v15 && !(*(v5 + 152) | a3))
          {
            panic("physical object not prepared before dirtying: oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x xid 0x%llx 0x%llx 0x%llx naddr 0x%llx 0x%llx\n", *(v5 + 112), v13, *(v5 + 32), v11, *(v5 + 40), v14, v15, a2, 0, 0);
          }
        }
      }
    }

    v16 = *(v5 + 152);
    if (v16)
    {
      if (v16 != a3)
      {
        if (a3)
        {
          v17 = *(v5 + 36);
          if ((v17 & 0xC0000000) == 0x40000000)
          {
            panic("physical object new address mismatch: oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x xid 0x%llx 0x%llx 0x%llx naddr 0x%llx 0x%llx\n", *(v5 + 112), *(v5 + 16), *(v5 + 32), v17, *(v5 + 40), *(v5 + 120), *(v5 + 144), a2, *(v5 + 152), a3);
          }
        }
      }
    }

    else
    {
      *(v5 + 152) = a3;
      if (a3 && (*(v5 + 16) & 0x40000000) != 0 && *(v5 + 112) != a3)
      {
        v18 = *(v5 + 72);
        v19 = *(v5 + 80);
        if (v18)
        {
          *(v18 + 80) = v19;
        }

        *v19 = v18;
        *(v5 + 112) = a3;
        v20 = (*(v6 + 712) + 8 * (*(v6 + 704) & a3));
        v21 = *v20;
        *(v5 + 72) = *v20;
        if (v21)
        {
          *(v21 + 80) = v5 + 72;
        }

        *v20 = v5;
        *(v5 + 80) = v20;
      }
    }

    *(v5 + 144) = a2;
    v22 = pthread_rwlock_wrlock((v6 + 128));
    if (v22)
    {
      panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 6038, v22);
    }

    v23 = v5 + 88;
    if (*(v5 + 88) != 3735928559)
    {
      sub_10002BDA8(v5);
    }

    sub_10002C448(v6, v5);
    if (*(v5 + 88) != 3735928559)
    {
      panic("obj %p oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x dirty object on the free list?!\n", v5, *(v5 + 112), *(v5 + 16), *(v5 + 32), *(v5 + 36), *(v5 + 40));
    }

    v24 = *(v5 + 16);
    *(v5 + 88) = 0;
    if ((v24 & 0x40000000) != 0)
    {
      v26 = *(v6 + 848);
      *(v5 + 96) = v26;
      *v26 = v5;
      *(v6 + 848) = v23;
      ++*(v6 + 912);
    }

    else
    {
      v25 = *(v6 + 832);
      *(v5 + 96) = v25;
      *v25 = v5;
      *(v6 + 832) = v23;
      ++*(v6 + 908);
    }

    result = pthread_rwlock_unlock((v6 + 128));
    if (result)
    {
      panic("%s:%d: unlock == 0 failed %d\n");
    }
  }

  return result;
}

void obj_dirty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 19) & 0x80) != 0)
  {
    *(a1 + 144) = a2;
  }

  else
  {
    v5 = *a1;
    if ((atomic_fetch_or_explicit((a1 + 32), 0, memory_order_relaxed) & 1) == 0)
    {
      pthread_mutex_lock(v5);
      sub_10002B3B4(a1, a2, a3);

      obj_cache_unlock_write(v5);
    }
  }
}

uint64_t obj_exchange_phys(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  pthread_mutex_lock(*a1);
  v5 = *(a1 + 16);
  if ((v5 & 0x20000000000) != 0)
  {
    do
    {
      *(a1 + 16) = v5 | 0x80;
      v7 = cv_wait_rw(&v4[20].__opaque[40], v4, 2, 0);
      v5 = *(a1 + 16);
    }

    while ((v5 & 0x20000000000) != 0);
    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  v8 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v8;
  obj_cache_unlock_write(v4);
  return v6;
}

uint64_t obj_checkpoint_start(uint64_t a1)
{
  if ((*(a1 + 19) & 0x80) != 0)
  {
    return (4 * atomic_fetch_or_explicit((a1 + 32), 4u, memory_order_relaxed)) & 0x10;
  }

  else
  {
    return nx_corruption_detected_int(*(*a1 + 392));
  }
}

uint64_t obj_checkpoint_done(uint64_t a1)
{
  if ((*(a1 + 19) & 0x80) == 0)
  {
    return nx_corruption_detected_int(*(*a1 + 392));
  }

  if ((atomic_fetch_and_explicit((a1 + 32), 0xFFFFFFFB, memory_order_relaxed) & 4) != 0)
  {
    return 0;
  }

  return 22;
}

uint64_t obj_checkpoint_known(uint64_t a1)
{
  v1 = *a1;
  if ((*(a1 + 19) & 0x80) != 0)
  {
    pthread_mutex_lock(*a1);
    v5 = *(a1 + 16);
    if ((v5 & 0x2000000000) != 0)
    {
      *(a1 + 16) = v5 & 0xFFFFFFDFFFFFFFFFLL;
      obj_cache_unlock_write(v1);
      return 0;
    }

    else
    {
      obj_cache_unlock_write(v1);
      return 22;
    }
  }

  else
  {
    v2 = *v1[6].__opaque;

    return nx_corruption_detected_int(v2);
  }
}

uint64_t obj_checkpoint_traverse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 36);
  if (v5 > 0xA)
  {
    if (v5 == 11)
    {

      return omap_checkpoint_traverse(a1, a2, a3, a4);
    }

    else
    {
      if (v5 != 13)
      {
        return 22;
      }

      if (*(a1 + 36) != 1)
      {
        sub_1000A5C40();
      }

      return apfs_checkpoint_traverse(a1, a2, a3, a4);
    }
  }

  else
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {

        return btree_node_checkpoint_traverse(a1, a2, 0, a3, a4);
      }

      return 22;
    }

    return btree_checkpoint_traverse(a1, a2, a3, a4);
  }
}

void obj_checkpoint_check_for_unknown(uint64_t a1)
{
  pthread_mutex_lock(a1);
  for (i = *(a1 + 744); i; i = *(i + 88))
  {
    if ((*(i + 20) & 0x20) != 0)
    {
      v12 = *(i + 36);
      v13 = *(i + 40);
      v10 = *(*(a1 + 392) + 384) + 212;
      v11 = *(i + 112);
      log_warn("%s:%d: %s Unknown object loaded from checkpoint: oid 0x%llx type 0x%x/0x%x\n", v2, v3, v4, v5, v6, v7, v8, "obj_checkpoint_check_for_unknown");
    }
  }

  obj_cache_unlock_write(a1);
}

unint64_t obj_checksum_set_phys(uint64_t a1, unint64_t *a2, int a3, int8x16_t a4, int8x16_t a5)
{
  if (!a1)
  {
    sub_1000A5C6C();
  }

  atomic_fetch_add_explicit((*(a1 + 376) + 984), 1uLL, memory_order_relaxed);
  v7 = (a3 - 8);
  v8 = (a2 + 1);

  return fletcher64_set_cksum(a2, v8, v7, 0, a4, a5);
}

uint64_t obj_mem_mgr_register(int64x2_t *a1, int a2)
{
  if (!qword_100103710)
  {
    sub_1000A5C98();
  }

  pthread_mutex_lock((qword_100103710 + 8));
  v4 = a1[82].i64[1];
  a1[82].i64[1] = v4 | 1;
  if (a2)
  {
    a1[82].i64[1] = v4 | 3;
    v5 = qword_100103710;
    v6 = (qword_100103710 + 80);
    v7 = *(qword_100103710 + 80);
    a1[60].i64[0] = v7;
    if (v7)
    {
      *(v7 + 968) = a1 + 60;
    }

    *v6 = a1;
    a1[60].i64[1] = v6;
  }

  else
  {
    v5 = qword_100103710;
    v8 = qword_100103710 + 72;
    v9 = *(qword_100103710 + 72);
    a1[60].i64[0] = v9;
    if (v9)
    {
      *(v9 + 968) = a1 + 60;
    }

    *(v5 + 72) = a1;
    a1[60].i64[1] = v8;
    ++*(v5 + 104);
    *(v5 + 136) = vaddq_s64(*(v5 + 136), a1[61]);
    *(v5 + 152) += a1[62].i64[0];
  }

  return pthread_mutex_unlock((v5 + 8));
}

uint64_t sub_10002BC1C(uint64_t a1)
{
  v16.tv_sec = 0;
  v16.tv_nsec = 0;
  result = clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v16);
  v3 = *(a1 + 904);
  if (v3)
  {
    v4 = 0;
    tv_sec = v16.tv_sec;
    do
    {
      v6 = *(*(a1 + 896) + 8 * v4);
      if (v6)
      {
        v7 = *(v6 + 32);
        if ((v7 & 0x10) == 0)
        {
          sub_1000A5D1C();
        }

        if (v4 != v7 >> 24)
        {
          sub_1000A5CC4();
        }

        if ((*(v6 + 19) & 0x80) != 0)
        {
          sub_1000A5CF0();
        }

        add_explicit = atomic_fetch_add_explicit((v6 + 24), 0, memory_order_relaxed);
        v10 = (-(add_explicit >> 44) & 0xFFFFF) != 0 || (add_explicit & 0xFFFFFF) > ((add_explicit >> 24) & 0xFFFFF);
        v11 = (v6 + 88);
        if (*(v6 + 88) != 3735928559)
        {
          result = sub_10002BDA8(v6);
        }

        if (!v10 && *(v6 + 36) != 13)
        {
          *(v6 + 160) = tv_sec;
          v12 = *(v6 + 16);
          if ((v12 & 0x400000000000) != 0)
          {
            atomic_fetch_or_explicit((v6 + 32), 0x20u, memory_order_relaxed);
            v14 = *(a1 + 816);
            *(v6 + 88) = 0;
            *(v6 + 96) = v14;
            *v14 = v6;
            *(a1 + 816) = v11;
            ++*(a1 + 924);
          }

          else
          {
            *v11 = 0;
            if ((v12 & 0x40000000) != 0)
            {
              v15 = *(a1 + 800);
              *(v6 + 96) = v15;
              *v15 = v6;
              *(a1 + 800) = v11;
              ++*(a1 + 920);
            }

            else
            {
              v13 = *(a1 + 784);
              *(v6 + 96) = v13;
              *v13 = v6;
              *(a1 + 784) = v11;
              ++*(a1 + 916);
            }
          }
        }

        atomic_fetch_and_explicit((v6 + 32), 0xFFFFEFu, memory_order_release);
        v3 = *(a1 + 904);
      }

      ++v4;
    }

    while (v4 < v3);
  }

  *(a1 + 904) = 0;
  return result;
}

uint64_t sub_10002BDA8(uint64_t result)
{
  v1 = *(result + 88);
  if (v1 != 3735928559)
  {
    v2 = *result;
    if ((*(result + 32) & 0x20) != 0)
    {
      if (!v2[231])
      {
        sub_1000A5D48();
      }

      atomic_fetch_and_explicit((result + 32), 0xFFFFFFDF, memory_order_relaxed);
      v6 = *(result + 96);
      v7 = v2 + 204;
      if (v1)
      {
        v7 = (v1 + 96);
      }

      *v7 = v6;
      *v6 = v1;
      --v2[231];
    }

    else if ((*(result + 19) & 0x40) != 0)
    {
      v8 = v2[230];
      if (!v8)
      {
        sub_1000A5D74();
      }

      v9 = *(result + 96);
      v10 = v2 + 200;
      if (v1)
      {
        v10 = (v1 + 96);
      }

      *v10 = v9;
      *v9 = v1;
      v2[230] = v8 - 1;
    }

    else
    {
      v3 = v2[229];
      if (!v3)
      {
        sub_1000A5DA0();
      }

      v4 = *(result + 96);
      v5 = v2 + 196;
      if (v1)
      {
        v5 = (v1 + 96);
      }

      *v5 = v4;
      *v4 = v1;
      v2[229] = v3 - 1;
    }

    *(result + 88) = 3735928559;
  }

  return result;
}

void sub_10002BE90(uint64_t a1, const char *a2)
{
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *v13 = 0u;
  v14 = 0u;
  v4 = backtrace(v13, 16);
  v5 = backtrace_symbols(v13, v4);
  v6 = *(a1 + 112);
  fprintf(__stderrp, "Allocated %s object with OID %lld flags %llx type %x %d from\n", a2, v6, *(a1 + 16), *(a1 + 36), *(a1 + 40));
  if (v4 >= 1)
  {
    v7 = v4;
    v8 = v13;
    v9 = v5;
    do
    {
      v11 = *v8++;
      v10 = v11;
      v12 = *v9++;
      fprintf(__stderrp, "\t%16p %s\n", v10, v12);
      --v7;
    }

    while (v7);
  }

  free(v5);
}

void sub_10002BFA8(void *a1, unsigned __int16 a2, int a3)
{
  if (a3 == 376)
  {
    goto LABEL_2;
  }

  if (a2 > 0xCu)
  {
    if (a2 <= 0x18u)
    {
      if (a2 == 13)
      {
        v3 = 6264;
        goto LABEL_3;
      }

      if (a2 != 17)
      {
        if (a2 == 18)
        {
          v3 = 384;
          goto LABEL_3;
        }

        goto LABEL_2;
      }
    }

    else
    {
      if (a2 <= 0x1Cu)
      {
        if (a2 == 25)
        {
          v3 = 416;
          goto LABEL_3;
        }

        if (a2 != 27)
        {
          goto LABEL_2;
        }

LABEL_24:
        v3 = 392;
        goto LABEL_3;
      }

      if (a2 == 29)
      {
        goto LABEL_24;
      }

      if (a2 != 30)
      {
        goto LABEL_2;
      }
    }

    v3 = 400;
    goto LABEL_3;
  }

  if (a2 > 5u)
  {
    if (a2 - 6 >= 3)
    {
      if (a2 == 11)
      {
        v3 = 496;
        goto LABEL_3;
      }

      goto LABEL_2;
    }
  }

  else if (a2 - 2 >= 2)
  {
    if (a2 == 1)
    {
      v3 = 1192;
      goto LABEL_3;
    }

    if (a2 == 5)
    {
      v3 = 1664;
      goto LABEL_3;
    }

LABEL_2:
    v3 = 376;
LABEL_3:
    _apfs_free(a1, v3);
    return;
  }

  _apfs_zfree(a1, 4u);
}

uint64_t sub_10002C090(uint64_t a1)
{
  v2 = 0;
  if ((*(a1 + 16) & 2) != 0 || obj_descriptor_funcs_for_type(*(a1 + 36), &v2))
  {
    return 0;
  }

  else
  {
    return *(v2 + 16);
  }
}

void sub_10002C0D8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = sub_10002C090(a1);
    if (v3)
    {
      if (v3(a1))
      {
        if (!*(a1 + 8))
        {
          v11 = *(*(*a1 + 392) + 384) + 212;
        }

        v17 = *(a1 + 40);
        v15 = *(a1 + 16);
        v16 = *(a1 + 36);
        v14 = *(a1 + 112);
        log_err("%s:%d: %s oid 0x%llx flags 0x%llx type 0x%x/0x%x error destroying: %d\n", v4, v5, v6, v7, v8, v9, v10, "obj_destroy_complete");
      }
    }
  }

  if (*(a1 + 88) != 3735928559)
  {
    panic("object to be freed is on a list, o %p oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x refs 0x%llx list %p/%p\n", a1, *(a1 + 112), *(a1 + 16), *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 24), *(a1 + 88), *(a1 + 96));
  }

  free_rwlock((a1 + 176));
  fs_obj_zfree_oc(*(a1 + 56), *(a1 + 48), *(a1 + 16), *a1);
  v12 = *(a1 + 36);
  v13 = *(a1 + 44);

  sub_10002BFA8(a1, v12, v13);
}

void sub_10002C1F4(uint64_t a1, int8x16_t a2, int8x16_t a3)
{
  v4 = 0;
  v5 = *(a1 + 120);
  v22 = 16000;
  v6 = *(a1 + 136);
  if (v5)
  {
    v7 = (a1 + 120);
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 152) == 1)
  {
    v4 = *(a1 + 160);
  }

  v8 = *v6;
  v9 = *(a1 + 96);
  v10 = *(a1 + 144);
  v11 = v10 & 0xFFFF0000;
  if (v5)
  {
    v11 = v5 | v11;
    v12 = *(a1 + 124);
    if (v9)
    {
LABEL_8:
      pthread_mutex_lock(*v6);
      *(v6 + 52) = v9;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  if ((*(v6 + 18) & 0x8002000) != 0)
  {
    pthread_mutex_lock(*v6);
    *(v6 + 52) = 0;
    v14 = (v6 + 52);
  }

  else
  {
    v20 = obj_checksum_verify(*(a1 + 136), a2, a3);
    pthread_mutex_lock(v8);
    *(v6 + 52) = v20;
    v14 = (v6 + 52);
    if (v20)
    {
LABEL_9:
      v13 = *(v6 + 16);
      *(v6 + 16) = v13 & 0xFFFFFE7FFFFFFFFBLL;
      if ((v13 & 4) != 0)
      {
        cv_wakeup((*v6 + 1328));
      }

LABEL_17:
      *(v6 + 16) = *(v6 + 16) & 0xFFFFFFEFFFFFFFF7 | 8;
      goto LABEL_18;
    }
  }

  if (sub_100029A30(v6, v10, *(v6 + 112), v7, v4, *(v6 + 120), v11, v12))
  {
    goto LABEL_17;
  }

  v21 = 2;
  v15 = sub_100029C50(v6, v10, *(v6 + 112), *(v6 + 120), v11, v12, 0, &v22, &v21);
  if (v15 == 35)
  {
    sub_1000A5DF8();
  }

  *v14 = v15;
  if (v15)
  {
    goto LABEL_17;
  }

LABEL_18:
  v16 = *(a1 + 104);
  v17 = *(a1 + 112);
  v18 = &v8[21].__opaque[32];
  if (v16)
  {
    v18 = (v16 + 112);
  }

  *v18 = v17;
  *v17 = v16;
  obj_cache_unlock_write(v8);
  obj_release(v6);
  if (*(a1 + 152) == 1)
  {
    v19 = *(v4 + 2);
    if (v19 <= 3)
    {
      sub_1000A5DCC();
    }

    _apfs_free(*(a1 + 160), v19);
  }

  _apfs_free(a1, 168);
  if (atomic_fetch_add_explicit(&v8[14].__opaque[40], 0xFFFFFFFF, memory_order_relaxed) == 1 && atomic_fetch_add_explicit(&v8[14].__opaque[36], 0, memory_order_relaxed))
  {
    pthread_mutex_lock(v8);
    cv_wakeup(&v8[20].__opaque[40]);

    obj_cache_unlock_write(v8);
  }
}

uint64_t sub_10002C448(uint64_t result, uint64_t a2)
{
  v2 = atomic_fetch_and_explicit((a2 + 32), 0xFFFFEFu, memory_order_relaxed);
  if ((v2 & 0x10) != 0)
  {
    v3 = *(result + 896);
    v4 = HIBYTE(v2);
    if (*(v3 + 8 * v4) != a2)
    {
      sub_1000A5E24();
    }

    *(v3 + 8 * v4) = 0;
  }

  return result;
}

atomic_ullong *sub_10002C488(atomic_ullong *result, int a2, uint64_t a3, unint64_t a4)
{
  v5 = a2 & 0xC8000000;
  if (a2 < 0 == v4)
  {
    if (v5 != 0x40000000 && v5 != 0)
    {
LABEL_14:
      panic("unexpected storagetype: 0x%x\n", a2 & 0xC8000000);
    }

    v6 = result + 23;
    if (a3)
    {
      atomic_fetch_add_explicit(v6, a4, memory_order_relaxed);
      v7 = result + 24;
      goto LABEL_17;
    }

LABEL_18:
    v9 = 5;
    goto LABEL_19;
  }

  if (v5 == 0x80000000)
  {
    v6 = result + 29;
    if (a3)
    {
      atomic_fetch_add_explicit(v6, a4, memory_order_relaxed);
      v7 = result + 30;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (v5 != -2013265920)
  {
    goto LABEL_14;
  }

  v6 = result + 35;
  if (!a3)
  {
    goto LABEL_18;
  }

  atomic_fetch_add_explicit(v6, a4, memory_order_relaxed);
  v7 = result + 36;
LABEL_17:
  atomic_fetch_add_explicit(v7, a4, memory_order_relaxed);
  v9 = 3;
LABEL_19:
  atomic_fetch_add_explicit(&v6[v9], 1uLL, memory_order_relaxed);
  return result;
}

uint64_t fext_tree_key_cmp(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
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

uint64_t fext_tree_insert_with_tree(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (obj_subtype(a1) != 31)
  {
    sub_1000A5E50();
  }

  v8 = *(a4 + 48) & 0xFE;
  v12 = *(a4 + 8);
  v9 = *(a4 + 24);
  v11[0] = *(a4 + 40) | (v8 << 56);
  v11[1] = v9;
  return bt_insert(a1, a3, &v12, 16, v11, 0x10u, a2);
}

uint64_t fext_tree_insert(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  tree = jfs_get_tree(a1, 5, a2, &v8);
  if (!tree)
  {
    tree = fext_tree_insert_with_tree(v8, a2, *(a1 + 440), a3);
    obj_release(v8);
  }

  return tree;
}

uint64_t fext_tree_remove(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = 0;
  v9[0] = a3;
  v9[1] = a4;
  tree = jfs_get_tree(a1, 5, a2, &v8);
  if (!tree)
  {
    tree = bt_remove(v8, *(a1 + 440), v9, 0x10u, a2);
    obj_release(v8);
  }

  return tree;
}

uint64_t fext_tree_iterate_fexts_with_flags(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, _OWORD *a6, int a7, uint64_t (*a8)(__int128 *, uint64_t), uint64_t a9)
{
  v26 = 0;
  v27 = 0;
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v23 = 0;
  v28 = a4;
  v29 = a5;
  tree_in_snap = jfs_get_tree_in_snap(a1, 5, a2, a3, &v23);
  if (!tree_in_snap)
  {
    bt_iterator_init_with_hint(v24, v23, a3, a7, &v28, 16, 0x10u, &v26, 0x10u, a6);
    if (v15 != 2)
    {
      tree_in_snap = v15;
      if (v15)
      {
LABEL_13:
        obj_release(v23);
        return tree_in_snap;
      }

      v22 = 0;
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      while (!bt_iterator_ended(v24) && (!a4 || v28 == a4))
      {
        LODWORD(v19) = 3670280;
        *(&v19 + 1) = v28;
        *&v20 = v29;
        *&v21 = 0;
        *(&v21 + 1) = v26 & 0xFFFFFFFFFFFFFFLL;
        *(&v20 + 1) = v27;
        LOBYTE(v22) = HIBYTE(v26);
        v16 = a8(&v19, a9);
        if (v16)
        {
          tree_in_snap = v16;
          goto LABEL_13;
        }

        v17 = bt_iterator_next(v24);
        if ((a7 & 0x40000) == 0)
        {
          tree_in_snap = v17;
          if (v17)
          {
            goto LABEL_13;
          }
        }
      }
    }

    tree_in_snap = 0;
    goto LABEL_13;
  }

  return tree_in_snap;
}

pthread_cond_t *free_cv(pthread_cond_t *result)
{
  if (result)
  {
    return pthread_cond_destroy(result);
  }

  return result;
}

uint64_t cv_wait(pthread_cond_t *a1, pthread_mutex_t *a2, uint64_t a3, uint64_t a4, timespec *a5)
{
  if (a5)
  {
    v14.tv_sec = 0;
    v14.tv_nsec = 0;
    clock_gettime(_CLOCK_REALTIME, &v14);
    v8 = __OFADD__(a5->tv_sec, v14.tv_sec);
    v9 = a5->tv_sec + v14.tv_sec;
    a5->tv_sec = v9;
    if (v8)
    {
      return 35;
    }

    else
    {
      tv_nsec = a5->tv_nsec;
      v8 = __OFADD__(tv_nsec, v14.tv_nsec);
      v12 = tv_nsec + v14.tv_nsec;
      if (v8)
      {
        v12 = 999999999;
      }

      a5->tv_nsec = v12;
      if (v12 > 0x3B9ACA00)
      {
        v13 = v12 - 1000000000;
        a5->tv_sec = v9 + (v13 - 1) / 0x3B9ACA00 + 1;
        a5->tv_nsec = v13 - 1000000000 * ((v13 - 1) / 0x3B9ACA00);
      }

      LODWORD(result) = pthread_cond_timedwait(a1, a2, a5);
      if (result == 60)
      {
        return 35;
      }

      else
      {
        return result;
      }
    }
  }

  else
  {

    return pthread_cond_wait(a1, a2);
  }
}

uint64_t io_container_is_external(io_object_t a1)
{
  v1 = a1;
  IOObjectRetain(a1);
  if (!v1)
  {
    return 0;
  }

  iterator = 0;
  while (1)
  {
    parent = 0;
    if (IOObjectConformsTo(v1, "AppleAPFSContainerScheme"))
    {
      break;
    }

    if (IOObjectConformsTo(v1, "IOBlockStorageDevice"))
    {
      goto LABEL_15;
    }

    if (IORegistryEntryGetParentEntry(v1, "IOService", &parent))
    {
      parent = 0;
    }

    IOObjectRelease(v1);
    v1 = parent;
    if (!parent)
    {
      return 0;
    }
  }

  v3 = IORegistryEntrySearchCFProperty(v1, "IOService", @"Device Characteristics", kCFAllocatorDefault, 3u);
  if (v3)
  {
    v4 = v3;
    Value = CFDictionaryGetValue(v3, @"Target Disk Mode");
    if (Value)
    {
      v6 = CFBooleanGetValue(Value);
      CFRelease(v4);
      if (v6)
      {
LABEL_15:
        v2 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      CFRelease(v4);
    }
  }

  if (IORegistryEntryGetParentIterator(v1, "IOService", &iterator))
  {
    goto LABEL_15;
  }

  while (1)
  {
    while (1)
    {
      v8 = IOIteratorNext(iterator);
      if (!v8)
      {
        v2 = 0;
        goto LABEL_32;
      }

      v9 = v8;
      if (!sub_10002CC2C(v8, @"image-format-read-only"))
      {
        break;
      }

LABEL_28:
      IOObjectRelease(v9);
    }

    if (sub_10002CC2C(v9, @"Removable"))
    {
      break;
    }

    v10 = IORegistryEntrySearchCFProperty(v9, "IOService", @"Protocol Characteristics", kCFAllocatorDefault, 3u);
    if (!v10)
    {
      goto LABEL_28;
    }

    v11 = v10;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID != CFGetTypeID(v11) || (v13 = CFDictionaryGetValue(v11, @"Physical Interconnect Location")) == 0 || (v14 = v13, v15 = CFStringGetTypeID(), v15 != CFGetTypeID(v14)))
    {
      CFRelease(v11);
      goto LABEL_28;
    }

    v16 = CFEqual(v14, @"Internal");
    CFRelease(v11);
    IOObjectRelease(v9);
    if (!v16)
    {
      goto LABEL_31;
    }
  }

  IOObjectRelease(v9);
LABEL_31:
  v2 = 1;
LABEL_32:
  IOObjectRelease(iterator);
LABEL_16:
  IOObjectRelease(v1);
  return v2;
}

BOOL sub_10002CC2C(io_registry_entry_t a1, CFStringRef key)
{
  v2 = IORegistryEntrySearchCFProperty(a1, "IOService", key, kCFAllocatorDefault, 3u);
  if (!v2)
  {
    return 0;
  }

  v3 = v2 == kCFBooleanTrue;
  CFRelease(v2);
  return v3;
}

uint64_t io_get_device_features(int a1, dev_t *a2, _DWORD *a3, _DWORD *a4, dev_t *a5)
{
  if (a2)
  {
    v45.st_dev = 0;
    if (ioctl(a1, 0x4004644CuLL, &v45))
    {
      if (*__error() != 25)
      {
        v10 = __error();
        strerror(*v10);
        log_err("%s:%d: can't get features for device (%s)\n", v11, v12, v13, v14, v15, v16, v17, "io_get_device_features");
      }

      st_dev = 0;
    }

    else
    {
      st_dev = v45.st_dev;
    }

    *a2 = st_dev;
  }

  if (a3)
  {
    *a3 = (fcntl(a1, 3) & 3) != 0;
  }

  if (a4)
  {
    memset(&v45, 0, sizeof(v45));
    if (!fstat(a1, &v45) && (v45.st_mode & 0xB000 | 0x4000) == 0x6000)
    {
      v19 = IOServiceMatching("IOMedia");
      if (!v19)
      {
        goto LABEL_13;
      }

      v43 = v45.st_rdev & 0xFFFFFF;
      valuePtr = HIBYTE(v45.st_rdev);
      v29 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
      if (v29)
      {
        v30 = v29;
        CFDictionarySetValue(v19, @"BSD Major", v29);
        CFRelease(v30);
      }

      v31 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v43);
      if (v31)
      {
        v32 = v31;
        CFDictionarySetValue(v19, @"BSD Minor", v31);
        CFRelease(v32);
      }

      MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v19);
      if (MatchingService)
      {
        v41 = MatchingService;
        LODWORD(v19) = io_container_is_external(MatchingService);
        IOObjectRelease(v41);
        goto LABEL_13;
      }

      log_debug("%s:%d: fd %d is type %o rdev %d (%d, %d): I/O registry entry not found\n", v34, v35, v36, v37, v38, v39, v40, "io_get_device_features");
    }

    LODWORD(v19) = 0;
LABEL_13:
    *a4 = v19;
  }

  if (a5)
  {
    v45.st_dev = 0;
    if (ioctl(a1, 0x4004644FuLL, &v45))
    {
      if (*__error() != 25)
      {
        v20 = __error();
        strerror(*v20);
        log_err("%s:%d: can't get solidstate for device (%s)\n", v21, v22, v23, v24, v25, v26, v27, "io_get_device_features");
      }

      v28 = 1;
    }

    else
    {
      v28 = v45.st_dev;
    }

    *a5 = v28;
  }

  return 0;
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

const char *device_basename(const char *a1)
{
  v1 = a1;
  if (!strncmp(a1, "/dev/", 5uLL))
  {
    v2 = *(v1 + 5);
    v1 += 5;
    if (v2 == 114)
    {
      ++v1;
    }
  }

  return v1;
}

unint64_t device_container_path(char *a1, _DWORD *a2)
{
  if (!device_is_volume(a1))
  {
    return 0;
  }

  result = strrchr(a1, 115);
  if (result)
  {
    v5 = result;
    result = strtoul((result + 1), 0, 10);
    if (result)
    {
      v6 = result;
      result = strndup(a1, v5 - a1);
      if (result)
      {
        if (a2)
        {
          *a2 = v6 - 1;
        }
      }
    }
  }

  return result;
}

BOOL device_is_volume(const char *a1)
{
  v1 = a1;
  if (!strncmp(a1, "/dev/", 5uLL))
  {
    v2 = *(v1 + 5);
    v1 += 5;
    if (v2 == 114)
    {
      ++v1;
    }
  }

  v3 = IOBSDNameMatching(kIOMasterPortDefault, 0, v1);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v3);
  if (!MatchingService)
  {
    return 0;
  }

  v5 = MatchingService;
  v6 = IOObjectConformsTo(MatchingService, "AppleAPFSVolume") != 0;
  IOObjectRelease(v5);
  return v6;
}

BOOL sub_10002D140(const char *a1, const char *a2)
{
  v2 = sub_10002D194(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2 == kCFBooleanTrue;
  CFRelease(v2);
  return v3;
}

CFTypeRef sub_10002D194(const char *a1, const char *a2)
{
  v3 = a1;
  if (!strncmp(a1, "/dev/", 5uLL))
  {
    v4 = *(v3 + 5);
    v3 += 5;
    if (v4 == 114)
    {
      ++v3;
    }
  }

  if (*v3 == 114)
  {
    v5 = v3 + 1;
  }

  else
  {
    v5 = v3;
  }

  v6 = IOBSDNameMatching(kIOMasterPortDefault, 0, v5);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
  if (!MatchingService)
  {
    return 0;
  }

  v8 = MatchingService;
  v9 = CFStringCreateWithCString(0, a2, 0x8000100u);
  if (v9)
  {
    v10 = v9;
    CFProperty = IORegistryEntryCreateCFProperty(v8, v9, kCFAllocatorDefault, 0);
    CFRelease(v10);
  }

  else
  {
    CFProperty = 0;
  }

  IOObjectRelease(v8);
  return CFProperty;
}

uint64_t get_first_child_of_class(io_registry_entry_t a1, const char *a2)
{
  iterator = 0;
  v3 = 0;
  if (!IORegistryEntryGetChildIterator(a1, "IOService", &iterator))
  {
    while (1)
    {
      v4 = IOIteratorNext(iterator);
      v3 = v4;
      if (!v4 || IOObjectConformsTo(v4, a2))
      {
        break;
      }

      IOObjectRelease(v3);
    }

    IOObjectRelease(iterator);
  }

  return v3;
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

    v3 = IOBSDNameMatching(kIOMasterPortDefault, 0, v1);

    return IOServiceGetMatchingService(kIOMasterPortDefault, v3);
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

uint64_t physical_store_to_container(io_registry_entry_t a1)
{
  *iterator = 0;
  object = 0;
  v1 = 0;
  if (IORegistryEntryGetChildIterator(a1, "IOService", &iterator[1]))
  {
    return v1;
  }

  v2 = IOIteratorNext(iterator[1]);
  if (!v2)
  {
LABEL_18:
    v1 = 0;
    v5 = iterator[1];
    goto LABEL_20;
  }

  v3 = v2;
  while (1)
  {
    if (!IOObjectConformsTo(v3, "AppleAPFSContainerScheme") || IORegistryEntryGetChildIterator(v3, "IOService", iterator))
    {
      goto LABEL_17;
    }

    v4 = IOIteratorNext(iterator[0]);
    if (v4)
    {
      break;
    }

LABEL_16:
    IOObjectRelease(iterator[0]);
LABEL_17:
    IOObjectRelease(v3);
    v3 = IOIteratorNext(iterator[1]);
    if (!v3)
    {
      goto LABEL_18;
    }
  }

  v5 = v4;
  while (1)
  {
    if (!IOObjectConformsTo(v5, "AppleAPFSMedia") || IORegistryEntryGetChildIterator(v5, "IOService", &object))
    {
      goto LABEL_15;
    }

    v6 = IOIteratorNext(object);
    if (v6)
    {
      break;
    }

LABEL_14:
    IOObjectRelease(object);
LABEL_15:
    IOObjectRelease(v5);
    v5 = IOIteratorNext(iterator[0]);
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  v1 = v6;
  while (!IOObjectConformsTo(v1, "AppleAPFSContainer"))
  {
    IOObjectRelease(v1);
    v1 = IOIteratorNext(object);
    if (!v1)
    {
      goto LABEL_14;
    }
  }

  IOObjectRelease(iterator[1]);
  IOObjectRelease(iterator[0]);
  IOObjectRelease(object);
  IOObjectRelease(v3);
LABEL_20:
  IOObjectRelease(v5);
  return v1;
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
      v12 = volume_io_object;
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
          v13 = IOServiceOpen(first_child_of_class, mach_task_self_, 0, a3);
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

uint64_t doc_id_tree_key_cmp(uint64_t a1, _DWORD *a2, int a3, _DWORD *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 4 && a5 == 4)
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

uint64_t utf8_normalizeOptCaseFoldAndHash(unint64_t a1, uint64_t a2, int a3, void (*a4)(_OWORD *, uint64_t, uint64_t), uint64_t a5)
{
  v16 = 0;
  v17 = a1;
  v20[0] = 0;
  v20[1] = 0;
  v8 = a1 + a2;
  v15 = 0;
  v14 = 1;
  do
  {
    memset(v19, 0, sizeof(v19));
    memset(v18, 0, sizeof(v18));
    v13 = 0;
    v12 = 0;
    v9 = sub_10002D8D4(&v17, v8, a3, v20, &v16 + 4, &v16, &v15, v19, v18, &v13, &v12, &v14);
    if (v9)
    {
      break;
    }

    v10 = v13;
    if (v13 >= 1)
    {
      if (v12 == 1)
      {
        doReorder(v19, v18, v13);
      }

      a4(v19, 4 * v10, a5);
    }
  }

  while (v17 < v8 || v16 > 0);
  return v9;
}

uint64_t sub_10002D8D4(unint64_t *a1, unint64_t a2, int a3, int *a4, uint64_t a5, int *a6, int *a7, uint64_t a8, uint64_t a9, int *a10, _BYTE *a11, _BYTE *a12)
{
  v17 = *a6;
  v18 = *a7;
  if (*a6 >= 1 && v18 < v17)
  {
    v65 = 0;
    *a11 = 0;
    *a10 = 0;
    v18 = *a7;
    while (1)
    {
      if (v65 >= 1 && *(a5 + v18) && *(a5 + v18) < *(a9 - 1 + v65))
      {
        *a11 = 1;
      }

      *(a8 + 4 * v65) = a4[v18];
      v66 = *a7;
      *a7 = v66 + 1;
      LOBYTE(v66) = *(a5 + v66);
      v67 = *a10;
      *a10 = v67 + 1;
      *(a9 + v67) = v66;
      v18 = *a7;
      v17 = *a6;
      if (*a7 >= *a6 || !*(a5 + v18))
      {
        break;
      }

      v65 = *a10;
    }
  }

  if (v18 >= v17)
  {
    *a6 = 0;
    *a7 = 0;
    v20 = *a1;
    if (*a1 < a2)
    {
      v21 = a4 - 1;
      do
      {
        v23 = v20 + 1;
        *a1 = (v20 + 1);
        v24 = *v20;
        result = 92;
        if (!*v20 || v24 == 47)
        {
          return result;
        }

        if ((v24 & 0x80) == 0)
        {
          result = 0;
          if (v24 - 91 < 0xFFFFFFE6)
          {
            v68 = 1;
          }

          else
          {
            v68 = a3;
          }

          if (v68)
          {
            v69 = *v20;
          }

          else
          {
            v69 = v24 | 0x20;
          }

          *a4 = v69;
          *a6 = 1;
          *a5 = 0;
          goto LABEL_143;
        }

        if (v24 - 225 > 0xB)
        {
          if (v24 - 194 <= 0x1D && v23 < a2)
          {
            v30 = *v23 ^ 0x80;
            if (v30 <= 0x3F)
            {
              v28 = ((v24 & 0x1F) << 6) | v30;
              v23 = v20 + 2;
              goto LABEL_44;
            }
          }
        }

        else if ((v20 + 2) < a2)
        {
          v26 = *v23 ^ 0x80;
          if (v26 <= 0x3F)
          {
            v27 = v20[2] ^ 0x80;
            if (v27 <= 0x3F)
            {
              v28 = ((v24 & 0xF) << 12) | (v26 << 6) | v27;
              v23 = v20 + 3;
              goto LABEL_44;
            }
          }
        }

        if (v24 > 0xEF)
        {
          if (v24 > 0xFD)
          {
            v33 = 0;
            goto LABEL_33;
          }

          if (v24 <= 0xF7)
          {
            v31 = 3;
          }

          else
          {
            v31 = 4;
          }

          v32 = v24 > 0xFB;
        }

        else
        {
          v31 = v24 > 0xDF;
          v32 = v24 > 0xBF;
        }

        if (v32)
        {
          v33 = v31 + 1;
        }

        else
        {
          v33 = v31;
        }

LABEL_33:
        v28 = -1;
        if (&v23[v33] <= a2)
        {
          v34 = v24 & ~(-1 << (6 - v33));
          if (v33 == 1)
          {
            goto LABEL_41;
          }

          if (v33 == 2 || v33 == 3 && (v23 = v20 + 2, v35 = v20[1] ^ 0x80, v28 = -1, v35 <= 0x3F) && (v34 = v35 | (v34 << 6), v34 <= 0x10F))
          {
            v36 = *v23++;
            v37 = v36 ^ 0x80;
            v28 = -1;
            if ((v36 ^ 0x80u) <= 0x3F)
            {
              v34 = v37 | (v34 << 6);
              if ((v34 & 0xFFE0) != 0x360)
              {
LABEL_41:
                v38 = *v23++;
                v39 = v38 ^ 0x80;
                if ((v38 ^ 0x80u) > 0x3F || (v28 = v39 | (v34 << 6), v28 < dword_1000AAEE0[v33]))
                {
                  v28 = -1;
                }
              }
            }
          }
        }

LABEL_44:
        *a1 = v23;
        if (v28 < 1)
        {
          return result;
        }

        *a5 = 0;
        if (v28 >= 0xF0000)
        {
          if ((~v28 & 0xFFFE) == 0)
          {
            goto LABEL_144;
          }

LABEL_47:
          *a4 = v28;
          goto LABEL_55;
        }

        v40 = v28;
        if (v28 >> 10 >= 0xC9)
        {
          if (v28 - 918016 < 0xFFFFFE00)
          {
            goto LABEL_144;
          }

          v40 = v28 - 711680;
        }

        v41 = word_1000AAEF0[v40 >> 8];
        if (!word_1000AAEF0[v40 >> 8])
        {
          goto LABEL_54;
        }

        if (v41 == 0xFFFF)
        {
          goto LABEL_144;
        }

        if ((v41 & 0xFF00) == 0xAD00)
        {
LABEL_54:
          *a4 = v28;
          *a5 = v41;
          goto LABEL_55;
        }

        if (((v40 >> 8) - 172) <= 0x2A)
        {
          goto LABEL_69;
        }

        v50 = word_1000ADA6C[16 * (v41 & 0xFFF) + (v40 >> 4)];
        if (!v50)
        {
LABEL_75:
          *a4 = v28;
          *a5 = v50;
          goto LABEL_76;
        }

        if (v50 == 0xFFFF)
        {
          goto LABEL_144;
        }

        if ((v50 & 0xFF00) == 0xAE00)
        {
          if ((word_1000AB53C[v50] >> (v40 & 0xF)))
          {
            goto LABEL_144;
          }

          *a4 = v28;
          v42 = 1;
          if (v28 <= 0x4FF && (a3 & 1) == 0)
          {
            *a4 = word_1000AED8C[v28];
          }

          goto LABEL_56;
        }

        if ((v50 & 0xFF00) == 0xAD00)
        {
          goto LABEL_75;
        }

        if (v50 == 44032 || (v52 = word_1000AF78C[16 * (v50 & 0xFFF) + (v40 & 0xF)], v52 == 44032))
        {
LABEL_69:
          v45 = v28 - 44032;
          v46 = v45 / 28;
          v47 = v45 / 588;
          v48 = (49933 * (v45 / 28)) >> 16;
          *(a5 + 1) = 0;
          v49 = v45 % 28;
          *a4 = v47 + 4352;
          a4[1] = (v46 - 21 * ((v48 >> 4) + ((v48 & 0x8000) >> 15)) + 4449);
          if (v49)
          {
            a4[2] = v49 + 4519;
            v42 = 3;
          }

          else
          {
            v42 = 2;
          }

          goto LABEL_56;
        }

        if (v52 == 0xFFFF)
        {
LABEL_144:
          v54 = -1;
LABEL_145:
          *a6 = v54;
          return result;
        }

        if (((v52 + 1792) >> 8) <= 0xB6u)
        {
          if (!v52 || (v52 & 0xFF00) == 0xAD00)
          {
            *a4 = v28;
            *a5 = v52;
          }

          else
          {
            *a4 = v52;
          }

LABEL_76:
          if ((a3 & 1) == 0)
          {
            v51 = *a4;
            if (v51 <= 1279)
            {
              v28 = word_1000AED8C[v51];
              goto LABEL_47;
            }
          }

LABEL_55:
          v42 = 1;
LABEL_56:
          *a6 = v42;
          goto LABEL_57;
        }

        v53 = (v52 - 45056) >> 12;
        v54 = -1;
        if (v53 <= 1)
        {
          if (v53)
          {
            if (v53 != 1)
            {
              goto LABEL_145;
            }

            if ((v52 & 0x800) != 0 && a3)
            {
              goto LABEL_47;
            }

            v70 = 0;
            v55 = &unk_1000AC266 + 6 * (v52 & 0x7FF);
            v42 = 3;
          }

          else
          {
            if ((v52 & 0x800) != 0 && a3)
            {
              goto LABEL_47;
            }

            v70 = 0;
            v55 = &unk_1000AB652 + 4 * (v52 & 0x7FF);
            v42 = 2;
          }
        }

        else
        {
          if (v53 == 2)
          {
            v70 = 0;
            v58 = (&unk_1000AC79A + 2 * (v52 & 0x3FF));
            v59 = *v58;
            v55 = (v58 + 1);
            v57 = v59;
            goto LABEL_109;
          }

          if (v53 != 3)
          {
            if (v53 != 4)
            {
              goto LABEL_145;
            }

            v55 = 0;
            v56 = (&unk_1000AD810 + 4 * (v52 & 0x3FF));
            v57 = *v56;
            v70 = v56 + 1;
LABEL_109:
            v42 = v57 & 0xF;
            *a5 = v57 >> 4;
            if (v42 - 5 < 0xFFFFFFFC)
            {
              v54 = 0;
              goto LABEL_145;
            }

            goto LABEL_110;
          }

          if ((v52 & 0x800) != 0 && a3)
          {
            goto LABEL_47;
          }

          v55 = 0;
          v70 = (&unk_1000AC928 + 4 * (v52 & 0x7FF));
          v42 = 1;
        }

LABEL_110:
        v60 = 0;
        v74 = a3;
        v72 = a12;
        v73 = a2;
        v71 = v21;
        do
        {
          if (v55)
          {
            v62 = *v55;
            v55 += 2;
            v61 = v62;
          }

          else
          {
            v61 = *v70++;
          }

          a4[v60] = v61;
          if (v60)
          {
            v75 = v60;
            v76 = v55;
            v63 = sub_10002E574(v61);
            v60 = v75;
            v55 = v76;
            *(a5 + v75) = v63;
          }

          ++v60;
          a3 = v74;
          a12 = v72;
          a2 = v73;
          v21 = v71;
        }

        while (v42 != v60);
        if ((v74 & 1) == 0)
        {
          v64 = *a4;
          if (v64 <= 1279)
          {
            *a4 = word_1000AED8C[v64];
          }

          if (v42 < 2)
          {
            goto LABEL_55;
          }

          if (v71[v42] == 837)
          {
            v71[v42] = 953;
          }
        }

        *a6 = v42;
        if (v42 < 1)
        {
          return 92;
        }

LABEL_57:
        if (!*a5 || *a12 == 1)
        {
          result = 0;
LABEL_143:
          *a12 = 0;
          return result;
        }

        v43 = *a10;
        if ((v42 + *a10) > 32)
        {
          return 92;
        }

        v44 = 0;
        do
        {
          if (v43 >= 1 && *(a5 + v44) && *(a5 + v44) < *(a9 - 1 + v43))
          {
            *a11 = 1;
          }

          *(a8 + 4 * v43) = a4[v44];
          *(a9 + *a10) = *(a5 + v44++);
          v43 = *a10 + 1;
          *a10 = v43;
        }

        while (v44 < *a6);
        *a6 = 0;
        v20 = *a1;
      }

      while (*a1 < a2);
    }
  }

  return 0;
}

uint64_t doReorder(uint64_t result, uint64_t a2, int a3)
{
  if (a3 >= 2)
  {
    v3 = 0;
    do
    {
      v4 = a3 - 1;
      do
      {
        v5 = *(a2 + v4);
        if (v5 < *(a2 + v4 - 1))
        {
          v6 = *(result + 4 * v4);
          *(result + 4 * v4) = *(result + 4 * (v4 - 1));
          *(a2 + v4) = *(a2 + v4 - 1);
          *(result + 4 * (v4 - 1)) = v6;
          *(a2 + v4 - 1) = v5;
        }

        --v4;
      }

      while (v4 > v3);
      ++v3;
    }

    while (v3 != a3 - 1);
  }

  return result;
}

uint64_t utf8_normalizeOptCaseFoldAndCompare(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, BOOL *a6)
{
  v31 = a3;
  v32 = a1;
  v7 = a1 + a2;
  v8 = a3 + a4;
  memset(__b, 0, 32);
  v42 = 0u;
  v43 = 0u;
  v40 = 0;
  v41 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 1;
  v27 = 1;
  while (1)
  {
    v39 = 0u;
    memset(__s1, 0, sizeof(__s1));
    v37 = 0u;
    memset(__s2, 0, sizeof(__s2));
    v34 = 0u;
    v35 = 0u;
    memset(v33, 0, sizeof(v33));
    v25 = 0;
    v26 = 0;
    v24 = 0;
    result = sub_10002D8D4(&v32, v7, a5, __b, &v41, &v30 + 1, &v29 + 1, __s1, &v34, &v26, &v24 + 1, &v28);
    if (result)
    {
      return result;
    }

    result = sub_10002D8D4(&v31, v8, a5, &v42, &v40, &v30, &v29, __s2, v33, &v25, &v24, &v27);
    if (result)
    {
      return result;
    }

    v11 = v25;
    v10 = v26;
    if (v26 > 0 || v25 >= 1)
    {
      if (HIBYTE(v24) == 1)
      {
        doReorder(__s1, &v34, v26);
      }

      if (v24 == 1)
      {
        doReorder(__s2, v33, v11);
      }

      if (a5)
      {
        v12 = v11;
        v13 = v10;
        goto LABEL_50;
      }

      if (v10 < 2 || __s1[(v10 - 1)] != 953 || HIDWORD(v29))
      {
        v13 = v10;
      }

      else
      {
        v14 = HIDWORD(v30);
        if (SHIDWORD(v30) >= 8)
        {
          v15 = 0;
          v26 = v10;
          goto LABEL_25;
        }

        v15 = 0;
        while (__s1[v10 - 1] == 953)
        {
          ++v15;
          v13 = v10 - 1;
          if (v15 < 8 - HIDWORD(v30))
          {
            v16 = v10-- > 2;
            if (v16)
            {
              continue;
            }
          }

          goto LABEL_24;
        }

        v13 = v10;
LABEL_24:
        v26 = v13;
        LODWORD(v10) = v13;
        if (SHIDWORD(v30) >= 1)
        {
LABEL_25:
          v17 = HIDWORD(v30);
          do
          {
            __b[v15 - 1 + v17] = __b[v17 - 1];
            *(&v40 + v15 + v17 + 7) = *(&v40 + v17 + 7);
            v16 = v17-- > 1;
          }

          while (v16);
          v13 = v10;
        }

        if (v15)
        {
          bzero(&v41, v15);
          memset_pattern16(__b, &unk_1000B2F90, 4 * v15);
        }

        HIDWORD(v30) = v14 + v15;
      }

      if (v11 >= 2 && (*(__s2 + (v11 - 1)) == 953 ? (v18 = v29 == 0) : (v18 = 0), v18))
      {
        v19 = v30;
        v20 = 0;
        if (v30 > 7)
        {
          goto LABEL_44;
        }

        while (*(&v35 + v11 + 3) == 953)
        {
          ++v20;
          v12 = v11 - 1;
          if (v20 < 8 - v30)
          {
            v16 = v11-- > 2;
            if (v16)
            {
              continue;
            }
          }

          goto LABEL_43;
        }

        v12 = v11;
LABEL_43:
        v25 = v12;
        LODWORD(v11) = v12;
        if (v30 >= 1)
        {
LABEL_44:
          v21 = v30;
          do
          {
            *(&v41 + v20 + v21 + 1) = *(&v41 + v21 + 1);
            *(&v39 + v20 + v21 + 15) = *(&v39 + v21 + 15);
            v16 = v21-- > 1;
          }

          while (v16);
          v12 = v11;
        }

        if (v20)
        {
          bzero(&v40, v20);
          memset_pattern16(&v42, &unk_1000B2F90, 4 * v20);
        }

        LODWORD(v30) = v19 + v20;
      }

      else
      {
        v12 = v11;
      }

LABEL_50:
      if (v13 != v12 || memcmp(__s1, __s2, 4 * v12))
      {
        result = 0;
        *a6 = 0;
        return result;
      }
    }

    if (v32 >= v7 && SHIDWORD(v30) < 1 || v31 >= v8 && v30 <= 0)
    {
      v22 = 0;
      if (v32 == v7 && !HIDWORD(v30) && v31 == v8)
      {
        v22 = v30 == 0;
      }

      result = 0;
      *a6 = v22;
      return result;
    }
  }
}

uint64_t sub_10002E574(int a1)
{
  if (a1 >= 983040)
  {
    return 0;
  }

  if (a1 == 953)
  {
    return 240;
  }

  v2 = a1 - 711680;
  if (a1 <= 205823)
  {
    v2 = a1;
  }

  LOWORD(v3) = word_1000AAEF0[v2 >> 8];
  if (v3)
  {
    v4 = (v3 & 0xFF00) == 44288;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return v3;
  }

  v3 = word_1000ADA6C[16 * (v3 & 0xFFF) + (v2 >> 4)];
  if (!v3)
  {
    return v3;
  }

  if ((v3 & 0xFF00) == 0xAE00)
  {
    return 0;
  }

  if ((v3 & 0xFF00) == 0xAD00)
  {
    return v3;
  }

  v5 = word_1000AF78C[16 * (v3 & 0xFFF) + (v2 & 0xF)];
  if ((v5 & 0xFF00) == 0xAD00)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void crc32c_init()
{
  if (!crc32c)
  {
    cpu_capabilities = _get_cpu_capabilities();
    v1 = sub_10002E708;
    if ((cpu_capabilities & 0x4000000) == 0)
    {
      v2 = crc32c;
      if (crc32c)
      {
        return;
      }

      do
      {
        v3 = 0;
        for (i = 0; i != 8; ++i)
        {
          v5 = (v2 >> i) ^ v3;
          v6 = v3 >> 1;
          v3 = (v3 >> 1) ^ 0x82F63B78;
          if ((v5 & 1) == 0)
          {
            v3 = v6;
          }
        }

        crc32c_table[v2++] = v3;
        v1 = sub_10002E6DC;
      }

      while (v2 != 256);
    }

    crc32c = v1;
  }
}

uint64_t sub_10002E6DC(uint64_t result, char *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    result = crc32c_table[(v3 ^ result)] ^ (result >> 8);
  }

  return result;
}

uint64_t sub_10002E708(uint64_t result, unsigned __int16 *a2, unint64_t a3)
{
  if ((a2 & 7) != 0)
  {
    if (!a3)
    {
      return result;
    }

    if (a2)
    {
      v4 = *a2;
      a2 = (a2 + 1);
      _W8 = v4;
      __asm { CRC32CB         W0, W0, W8 }

      result = _OFF;
      __asm { CRC32CB         W0, W0, W8 }

      --a3;
    }

    if (a3 >= 2 && (a2 & 3) != 0)
    {
      v11 = *a2++;
      _W9 = v11;
      __asm { CRC32CH         W0, W0, W9 }

      result = _OFF;
      __asm { CRC32CH         W0, W0, W9 }

      a3 -= 2;
    }

    if (a3 >= 4 && (a2 & 7) != 0)
    {
      v14 = *a2;
      a2 += 2;
      _W9 = v14;
      __asm { CRC32CW         W0, W0, W9 }

      result = _OFF;
      __asm { CRC32CW         W0, W0, W9 }

      a3 -= 4;
    }
  }

  if (a3 >= 8)
  {
    do
    {
      v17 = *a2;
      a2 += 4;
      _X8 = v17;
      __asm { CRC32CX         W0, W0, X8 }

      result = _OFF;
      __asm { CRC32CX         W0, W0, X8 }

      a3 -= 8;
    }

    while (a3 > 7);
  }

  if (a3 >= 4)
  {
    v20 = *a2;
    a2 += 2;
    _W9 = v20;
    __asm { CRC32CW         W0, W0, W9 }

    result = _OFF;
    __asm { CRC32CW         W0, W0, W9 }

    a3 -= 4;
  }

  if (a3 >= 2)
  {
    v23 = *a2++;
    _W9 = v23;
    __asm { CRC32CH         W0, W0, W9 }

    result = _OFF;
    __asm { CRC32CH         W0, W0, W9 }

    a3 -= 2;
  }

  if (a3)
  {
    _W8 = *a2;
    __asm { CRC32CB         W0, W0, W8 }

    result = _OFF;
    __asm { CRC32CB         W0, W0, W8 }
  }

  return result;
}

uint64_t get_pending_purgeable_flags_from_ino(uint64_t a1)
{
  __dst = 0;
  if (xf_get((a1 + 408), 15, 0, &__dst, 8uLL))
  {
    return 66048;
  }

  else
  {
    return __dst;
  }
}

uint64_t btree_check_recent_sanity(void *a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, void, uint64_t, void), uint64_t a4)
{
  v8 = a1[1];
  if (!v8)
  {
    v8 = *(*a1 + 392);
  }

  v9 = a1[50];
  __chkstk_darwin(a1);
  v11 = (&v63 - v10);
  bzero(&v63 - v10, v12);
  v67 = 0;
  v68 = 0;
  v65 = 0;
  v66 = 0;
  obj_lock(a1, 1u);
  v13 = btree_level_count(a1, &v66);
  if (v13)
  {
    v14 = v13;
    obj_unlock(a1, 1u);
    return v14;
  }

  v15 = _apfs_calloc_typed(v66, 0x10uLL, 0x1020040FFEA222EuLL);
  if (!v15)
  {
    obj_unlock(a1, 1u);
    return 12;
  }

  v16 = v15;
  *v15 = a1;
  *(v15 + 4) = 0;
  obj_retain(a1);
  v17 = 0;
  v64 = v16;
  while (1)
  {
    while (1)
    {
      v18 = &v16[16 * v17];
      if (obj_xid(*v18) <= a2)
      {
        v20 = *v18;
        goto LABEL_16;
      }

      v19 = *(v18 + 4);
      v20 = *v18;
      v21 = (*v18)[7];
      if (*(v21 + 36) > v19)
      {
        break;
      }

LABEL_16:
      btree_node_release(v20, 1);
LABEL_17:
      *v18 = 0;
      if ((--v17 & 0x8000) != 0)
      {
LABEL_29:
        v14 = 0;
        goto LABEL_35;
      }
    }

    if ((*(v21 + 32) & 2) != 0)
    {
      break;
    }

    v22 = btree_node_child_val(v20, v19, v11);
    if (v22)
    {
      v14 = v22;
      if (!a1[1])
      {
        v44 = *(*(*a1 + 392) + 384) + 212;
      }

      obj_oid(*v18);
      v57 = *((*v18)[7] + 34);
      v59 = *(v18 + 4);
      v36 = "%s:%d: %s node 0x%llx (level %d): error getting index %d child oid: %d\n";
      goto LABEL_33;
    }

    ++*(v18 + 4);
    if (v66 <= ++v17)
    {
      if (!a1[1])
      {
        v45 = *(*(*a1 + 392) + 384) + 212;
      }

      v46 = v64;
      v47 = &v64[16 * v17];
      obj_oid(*(v47 - 2));
      v61 = *(*(*(v47 - 2) + 56) + 34);
      v62 = *(v47 - 4);
      v16 = v46;
      log_err("%s:%d: %s node 0x%llx (level %d) index %d: more levels than expected\n", v48, v49, v50, v51, v52, v53, v54, "btree_check_recent_sanity");
      v14 = 22;
      goto LABEL_35;
    }

    v23 = &v16[16 * v17];
    *(v23 + 4) = 0;
    v24 = btree_node_get(a1, v11, 0, 2u, *(*(*(v23 - 2) + 56) + 34) - 1, 0, v23);
    if (v24)
    {
      v14 = v24;
      if (!a1[1])
      {
        v55 = *(*(*a1 + 392) + 384) + 212;
      }

      obj_oid(*(v23 - 2));
      v60 = *(v23 - 4);
      v58 = *(*(*(v23 - 2) + 56) + 34);
      v36 = "%s:%d: %s node 0x%llx (level %d): error getting index %d child: %d\n";
      goto LABEL_33;
    }

    if ((v17 & 0x8000) != 0)
    {
      goto LABEL_29;
    }
  }

  if (!a3)
  {
LABEL_25:
    btree_node_release(v20, 1);
    v16 = v64;
    goto LABEL_17;
  }

  v25 = 0;
  while (1)
  {
    v26 = btree_node_key_ptr(v20, v25, &v68, &v65 + 1);
    if (v26)
    {
      break;
    }

    v26 = btree_node_val_ptr(*v18, v25, &v67, &v65);
    if (v26)
    {
      break;
    }

    v27 = a3(v8, a4, a2, v68, HIWORD(v65), v67, v65);
    if (v27)
    {
      v14 = v27;
      goto LABEL_34;
    }

    ++v25;
    v20 = *v18;
    if (v25 >= *((*v18)[7] + 36))
    {
      goto LABEL_25;
    }
  }

  v14 = v26;
  if (!a1[1])
  {
    v35 = *(*(*a1 + 392) + 384) + 212;
  }

  obj_oid(*v18);
  v56 = *((*v18)[7] + 34);
  v36 = "%s:%d: %s node 0x%llx (level %d): error getting index %d key/val: %d\n";
LABEL_33:
  log_err(v36, v28, v29, v30, v31, v32, v33, v34, "btree_check_recent_sanity");
LABEL_34:
  v16 = v64;
LABEL_35:
  v37 = v66;
  v38 = v66 - 1;
  if (((v66 - 1) & 0x8000) == 0)
  {
    v39 = v16;
    v40 = v38 + 1;
    v41 = &v39[16 * v38];
    do
    {
      if (*v41)
      {
        if (!v14)
        {
          sub_1000A5E7C();
        }

        btree_node_release(*v41, 1);
      }

      v41 -= 2;
    }

    while (v40-- > 1);
    v37 = v66;
    v16 = v64;
  }

  _apfs_free(v16, 16 * v37);
  return v14;
}

BOOL bitmap_range_is_set(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = a2 + 63;
  }

  v4 = v3 >> 6;
  v5 = a2 - (v3 & 0xFFFFFFFFFFFFFFC0);
  if (a3 >= 64)
  {
    v6 = (a1 + 8 * v4 + 8);
    while (-1 << v5 <= (*(v6 - 1) & (-1 << v5)) && (!v5 || ((0xFFFFFFFFFFFFFFFFLL >> -v5) & ~*v6) == 0))
    {
      ++v4;
      v7 = a3 - 64;
      ++v6;
      v8 = a3 <= 127;
      a3 -= 64;
      if (v8)
      {
        if (v7)
        {
          goto LABEL_14;
        }

        return 1;
      }
    }

    return 0;
  }

  v7 = a3;
  if (!a3)
  {
    return 1;
  }

LABEL_14:
  v9 = 64 - v5;
  v10 = ~(-1 << v7);
  v11 = v10 << v5;
  v12 = v10 >> (64 - v5);
  if (!v5)
  {
    v12 = 0;
  }

  v13 = (a1 + 8 * v4);
  return (v11 & ~((-1 << v5) & *v13)) == 0 && (v7 <= v9 || !v12 || (v12 & ~((0xFFFFFFFFFFFFFFFFLL >> v9) & v13[1])) == 0);
}

uint64_t bitmap_range_is_clear@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2 / 64;
  v5 = a2 - (a4 & 0xFFFFFFFFFFFFFFC0);
  v6 = 64 - v5;
  if (a3 >= 64)
  {
    v7 = (a1 + 8 * v4 + 8);
    while (((-1 << v5) & *(v7 - 1)) == 0 && (!v5 || ((0xFFFFFFFFFFFFFFFFLL >> v6) & *v7) == 0))
    {
      ++v4;
      v8 = a3 - 64;
      ++v7;
      v9 = a3 <= 127;
      a3 -= 64;
      if (v9)
      {
        if (v8)
        {
          goto LABEL_11;
        }

        return 1;
      }
    }

    return 0;
  }

  v8 = a3;
  if (a3)
  {
LABEL_11:
    v10 = ~(-1 << v8);
    v11 = v10 << v5;
    v12 = v10 >> v6;
    if (!v5)
    {
      v12 = 0;
    }

    v13 = (a1 + 8 * v4);
    if ((v11 & (-1 << v5) & *v13) != 0 || v8 > v6 && v12 && ((0xFFFFFFFFFFFFFFFFLL >> v6) & v12 & v13[1]) != 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t bitmap_set_range@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2 / 64;
  v5 = a2 - (a4 & 0xFFFFFFFFFFFFFFC0);
  v6 = 64 - v5;
  if (a3 < 64)
  {
    v8 = a3;
    if (!a3)
    {
      return result;
    }

    goto LABEL_10;
  }

  v7 = (result + 8 * v4 + 8);
  do
  {
    *(v7 - 1) = *(v7 - 1) & ~(-1 << v5) | (-1 << v5);
    if (v5)
    {
      *v7 |= 0xFFFFFFFFFFFFFFFFLL >> v6;
    }

    ++v4;
    v8 = a3 - 64;
    ++v7;
    v9 = a3 <= 127;
    a3 -= 64;
  }

  while (!v9);
  if (v8)
  {
LABEL_10:
    v10 = ~(-1 << v8);
    v11 = v10 << v5;
    v12 = v10 >> v6;
    if (!v5)
    {
      v12 = 0;
    }

    v13 = (result + 8 * v4);
    *v13 = *v13 & ~v11 | v11 & (-1 << v5);
    if (v8 > v6)
    {
      if (v12)
      {
        v13[1] = v13[1] & ~v12 | v12 & (0xFFFFFFFFFFFFFFFFLL >> v6);
      }
    }
  }

  return result;
}

uint64_t bitmap_clear_range(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = a2 + 63;
  }

  v4 = v3 >> 6;
  v5 = a2 - (v3 & 0xFFFFFFFFFFFFFFC0);
  v6 = 64 - v5;
  if (a3 < 64)
  {
    v8 = a3;
    if (!a3)
    {
      return result;
    }

    goto LABEL_13;
  }

  v7 = (result + 8 * v4 + 8);
  do
  {
    *(v7 - 1) &= ~(-1 << v5);
    if (v5)
    {
      *v7 &= ~(0xFFFFFFFFFFFFFFFFLL >> v6);
    }

    ++v4;
    v8 = a3 - 64;
    ++v7;
    v9 = a3 <= 127;
    a3 -= 64;
  }

  while (!v9);
  if (v8)
  {
LABEL_13:
    v10 = ~(-1 << v8);
    v11 = v10 << v5;
    v12 = v10 >> v6;
    if (v5)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = (result + 8 * v4);
    *v14 &= ~v11;
    if (v8 > v6)
    {
      if (v13)
      {
        v14[1] &= ~v13;
      }
    }
  }

  return result;
}

uint64_t bitmap_range_find_first(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a4 < 1)
  {
    return 0;
  }

  if (a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  v6 = (a2 + 8 * (a3 / 64));
  while (1)
  {
    v7 = a3 & 0x3F;
    if (a3 <= 0)
    {
      v7 = -(-a3 & 0x3F);
    }

    v8 = 64 - v7;
    v10 = *v6++;
    v9 = v10;
    if (64 - v7 >= a4)
    {
      v8 = a4;
    }

    v11 = __clz(__rbit64((v9 >> v7) ^ v5));
    if (v8 > v11)
    {
      break;
    }

    a3 += v8;
    v12 = a4 <= v8;
    a4 -= v8;
    if (v12)
    {
      return 0;
    }
  }

  *a5 = v11 + a3;
  return 1;
}

uint64_t bitmap_range_find_last_set(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 < 1)
  {
    return 0;
  }

  v4 = a3 + a2;
  v5 = a3 + a2 - 1;
  if (a3 + a2 < 1)
  {
    v5 = a3 + a2 + 62;
  }

  v6 = (a1 + 8 * (v5 >> 6));
  while (1)
  {
    if (v4 <= 0)
    {
      v7 = -(-v4 & 0x3F);
    }

    else
    {
      v7 = v4 & 0x3F;
    }

    v8 = 64 - v7;
    if (!v7)
    {
      v7 = 64;
      v8 = 0;
    }

    if (v7 >= a3)
    {
      v7 = a3;
    }

    v9 = *v6--;
    v10 = __clz(v9 << v8);
    if (v7 > v10)
    {
      break;
    }

    v4 -= v7;
    v11 = a3 <= v7;
    a3 -= v7;
    if (v11)
    {
      return 0;
    }
  }

  *a4 = v4 + ~v10;
  return 1;
}