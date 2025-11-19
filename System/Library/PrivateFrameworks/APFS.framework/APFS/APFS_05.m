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
    v38 = 0;
    v11 = 0;
    v12 = v9;
    v13 = 0;
    v14 = 0;
    v15 = (a1 + 720);
    v37 = v12;
    v36 = v12 - 1;
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

LABEL_24:
        if (!v10)
        {
          goto LABEL_33;
        }
      }

      add_explicit = atomic_fetch_add_explicit((v16 + 24), 0, memory_order_relaxed);
      if ((add_explicit & 0xFFFFFF) == ((add_explicit >> 24) & 0xFFFFF))
      {
        if ((v18 & 0xC00000000) != 0)
        {
          v20 = (v36 + *(v16 + 48)) / v37;
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
          v24 = v38;
          v25 = v38 + v20;
          if ((v18 & 0x100000000000) != 0)
          {
            v23 = v11;
          }

          else
          {
            v25 = v38;
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

          v38 = v24;
          *(v16 + 16) = v18 & 0xFFFFEFF33FFFFFFFLL;
        }

        --*(a1 + 684);
        obj_destroy_internal(v16, 0);
        goto LABEL_24;
      }

      if (v18)
      {
        v26 = *(v16 + 80);
        if (v10)
        {
          *(v10 + 80) = v26;
        }

        *v26 = v10;
      }

      v27 = *v15;
      *v17 = *v15;
      if (v27)
      {
        *(v27 + 80) = v17;
      }

      *v15 = v16;
      *(v16 + 80) = v15;
      *(v16 + 16) = v18 | 9;
      if (!v10)
      {
LABEL_33:
        obj_cache_unlock_write(a1);
        if (v14)
        {
          v28 = spaceman_unreserve(v8, 0x48u, v14);
          if (v28)
          {
            if (*(v8 + 36) == 13)
            {
              v29 = (v8 + 4040);
            }

            else
            {
              v29 = (*(v8 + 384) + 212);
            }

            log_err("%s:%d: %s error unreserving space, %lld blocks: %d\n", "obj_cache_remove", 1830, v29, v14, v28);
          }
        }

        if (v11)
        {
          v30 = spaceman_unreserve(v8, 0x50u, v11);
          if (v30)
          {
            if (*(v8 + 36) == 13)
            {
              v31 = (v8 + 4040);
            }

            else
            {
              v31 = (*(v8 + 384) + 212);
            }

            log_err("%s:%d: %s error unreserving tier2 space, %lld blocks: %d\n", "obj_cache_remove", 1836, v31, v11, v30);
          }
        }

        if (v13)
        {
          v32 = spaceman_unreserve(v8, 0x10048u, v13);
          if (v32)
          {
            if (*(v8 + 36) == 13)
            {
              v33 = (v8 + 4040);
            }

            else
            {
              v33 = (*(v8 + 384) + 212);
            }

            log_err("%s:%d: %s error unreserving space, %lld blocks: %d\n", "obj_cache_remove", 1842, v33, v13, v32);
          }
        }

        if (v38)
        {
          v34 = spaceman_unreserve(v8, 0x10050u, v38);
          if (v34)
          {
            if (*(v8 + 36) == 13)
            {
              v35 = (v8 + 4040);
            }

            else
            {
              v35 = (*(v8 + 384) + 212);
            }

            log_err("%s:%d: %s error unreserving tier2 space, %lld blocks: %d\n", "obj_cache_remove", 1848, v35, v38, v34);
          }
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
  v44 = (a2 + 4040);
  log_debug("%s:%d: %s removing reverted fs objects for fs %lld: %lld - %lld\n", "obj_cache_remove_reverted_fs_objects", 1870, (a2 + 4040), *(a2 + 112), a3, a4);
  v9 = *(a1 + 700);
  if (!v9)
  {
    v11 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    goto LABEL_45;
  }

  v10 = 0;
  v43 = 0;
  v41 = 0;
  v42 = 0;
  v11 = 0;
  v12 = (a1 + 720);
  v39 = v8 - 1;
  v40 = v8;
  do
  {
    v13 = *(*(a1 + 712) + 8 * v10);
    if (!v13)
    {
      goto LABEL_42;
    }

    do
    {
      while (1)
      {
        v14 = v13;
        v15 = (v13 + 72);
        v13 = *(v13 + 72);
        if (v14 == a2)
        {
          goto LABEL_30;
        }

        if (*(v14 + 8) != a2)
        {
          goto LABEL_30;
        }

        v16 = *(v14 + 16);
        if ((v16 & 0xC0000000) != 0)
        {
          goto LABEL_30;
        }

        v17 = *(v14 + 120);
        if (v17 <= *(v14 + 144))
        {
          v17 = *(v14 + 144);
        }

        if (v17 < a3 || v17 > a4)
        {
          goto LABEL_30;
        }

        v19 = *(v14 + 32);
        if (v19)
        {
          log_debug("%s:%d: %s danger: oid %lld type 0x%x/0x%x flags 0x%llx 0x%x xid %lld refs 0x%llx - is dirty\n", "obj_cache_remove_reverted_fs_objects", 1887, v44, *(v14 + 112), *(v14 + 36), *(v14 + 40), v16, v19, v17, *(v14 + 24));
        }

        add_explicit = atomic_fetch_add_explicit((v14 + 24), 0, memory_order_relaxed);
        if ((add_explicit & 0xFFFFFF) != ((add_explicit >> 24) & 0xFFFFF))
        {
          break;
        }

        v21 = *(v14 + 16);
        if ((v21 & 0xC00000000) != 0)
        {
          v22 = (v39 + *(v14 + 48)) / v40;
          v23 = v11 + v22;
          v25 = v41;
          v24 = v42;
          v26 = v42 + v22;
          if ((v21 & 0x100000000000) != 0)
          {
            v23 = v11;
          }

          else
          {
            v26 = v42;
          }

          v27 = v41 + v22;
          v28 = v43;
          v29 = v43 + v22;
          if ((v21 & 0x100000000000) != 0)
          {
            v27 = v41;
          }

          else
          {
            v29 = v43;
          }

          if ((v21 & 0x800000000) != 0)
          {
            v25 = v27;
          }

          else
          {
            v11 = v23;
            v24 = v26;
          }

          v41 = v25;
          v42 = v24;
          if ((v21 & 0x800000000) != 0)
          {
            v28 = v29;
          }

          v43 = v28;
          *(v14 + 16) = v21 & 0xFFFFEFF3FFFFFFFFLL;
        }

        --*(a1 + 684);
        obj_destroy_internal(v14, 0);
LABEL_30:
        if (!v13)
        {
          goto LABEL_41;
        }
      }

      v30 = *(v14 + 120);
      if (v30 <= *(v14 + 144))
      {
        v30 = *(v14 + 144);
      }

      log_debug("%s:%d: %s danger: oid %lld type 0x%x/0x%x flags 0x%llx 0x%x xid %lld refs 0x%llx - has refs\n", "obj_cache_remove_reverted_fs_objects", 1891, v44, *(v14 + 112), *(v14 + 36), *(v14 + 40), *(v14 + 16), *(v14 + 32), v30, *(v14 + 24));
      v31 = *(v14 + 16);
      if (v31)
      {
        v32 = *(v14 + 72);
        v33 = *(v14 + 80);
        if (v32)
        {
          *(v32 + 80) = v33;
        }

        *v33 = v32;
      }

      v34 = *v12;
      *v15 = *v12;
      if (v34)
      {
        *(v34 + 80) = v15;
      }

      *v12 = v14;
      *(v14 + 80) = v12;
      *(v14 + 16) = v31 | 9;
    }

    while (v13);
LABEL_41:
    v9 = *(a1 + 700);
LABEL_42:
    ++v10;
  }

  while (v10 < v9);
LABEL_45:
  obj_cache_unlock_write(a1);
  if (v42 + v11 + v41 + v43)
  {
    log_debug("%s:%d: %s unreserving %lld blocks for reverted fs objects\n", "obj_cache_remove_reverted_fs_objects", 1930, v44, v42 + v11 + v41 + v43);
  }

  if (v11)
  {
    v35 = spaceman_unreserve(a2, 0x48u, v11);
    if (v35)
    {
      log_err("%s:%d: %s error unreserving space, %lld blocks: %d\n", "obj_cache_remove_reverted_fs_objects", 1935, v44, v11, v35);
    }
  }

  if (v41)
  {
    v36 = spaceman_unreserve(a2, 0x50u, v41);
    if (v36)
    {
      log_err("%s:%d: %s error unreserving tier2 space, %lld blocks: %d\n", "obj_cache_remove_reverted_fs_objects", 1941, v44, v41, v36);
    }
  }

  if (v42)
  {
    v37 = spaceman_unreserve(a2, 0x10048u, v42);
    if (v37)
    {
      log_err("%s:%d: %s error unreserving space, %lld blocks: %d\n", "obj_cache_remove_reverted_fs_objects", 1947, v44, v42, v37);
    }
  }

  if (v43)
  {
    v38 = spaceman_unreserve(a2, 0x10050u, v43);
    if (v38)
    {
      log_err("%s:%d: %s error unreserving tier2 space, %lld blocks: %d\n", "obj_cache_remove_reverted_fs_objects", 1953, v44, v43, v38);
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
  v30 = *(*(*(a1 + 392) + 376) + 36);
  v31 = 0;
  v32 = &v31;
  pthread_mutex_lock(a1);
  v4 = pthread_rwlock_wrlock((a1 + 128));
  if (v4)
  {
    panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 2088, v4);
  }

  for (i = *(a1 + 824); i; v32 = v7)
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
        goto LABEL_12;
      }
    }

    v8 = *(v6 + 96);
    v9 = (i + 96);
    if (!i)
    {
      v9 = (a1 + 832);
    }

    *v9 = v8;
    *v8 = i;
    --*(a1 + 908);
    v10 = v32;
    *(v6 + 88) = 0;
    *(v6 + 96) = v10;
    *v10 = v6;
  }

LABEL_12:
  v11 = pthread_rwlock_unlock((a1 + 128));
  if (v11)
  {
    panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 2100, v11);
  }

  v12 = v31;
  if (v31)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    do
    {
      v18 = *(v12 + 88);
      v17 = *(v12 + 96);
      v19 = (v18 + 96);
      if (!v18)
      {
        v19 = &v32;
      }

      *v19 = v17;
      *v17 = v18;
      *(v12 + 88) = 3735928559;
      v20 = *(v12 + 16);
      if ((v20 & 0xC00000000) != 0)
      {
        v21 = (v30 - 1 + *(v12 + 48)) / v30;
        v22 = v13 + v21;
        v23 = v16 + v21;
        if ((v20 & 0x100000000000) != 0)
        {
          v22 = v13;
        }

        else
        {
          v23 = v16;
        }

        v24 = v15 + v21;
        v25 = v14 + v21;
        if ((v20 & 0x100000000000) != 0)
        {
          v24 = v15;
        }

        else
        {
          v25 = v14;
        }

        if ((v20 & 0x800000000) != 0)
        {
          v15 = v24;
        }

        else
        {
          v16 = v23;
        }

        if ((v20 & 0x800000000) != 0)
        {
          v14 = v25;
        }

        else
        {
          v13 = v22;
        }

        *(v12 + 16) = v20 & 0xFFFFEFF3FFFFFFFFLL;
      }

      --*(a1 + 684);
      obj_destroy_internal(v12, 0);
      v12 = v18;
    }

    while (v18);
    obj_cache_unlock_write(a1);
    if (v13)
    {
      v26 = spaceman_unreserve(a2, 0x48u, v13);
      if (v26)
      {
        log_err("%s:%d: %s error unreserving space, %lld blocks: %d\n", "obj_cache_remove_new_fs_objects", 2133, (a2 + 4040), v13, v26);
      }
    }

    if (v15)
    {
      v27 = spaceman_unreserve(a2, 0x50u, v15);
      if (v27)
      {
        log_err("%s:%d: %s error unreserving tier2 space, %lld blocks: %d\n", "obj_cache_remove_new_fs_objects", 2139, (a2 + 4040), v15, v27);
      }
    }

    if (v16)
    {
      v28 = spaceman_unreserve(a2, 0x10048u, v16);
      if (v28)
      {
        log_err("%s:%d: %s error unreserving space, %lld blocks: %d\n", "obj_cache_remove_new_fs_objects", 2145, (a2 + 4040), v16, v28);
      }
    }

    if (v14)
    {
      v29 = spaceman_unreserve(a2, 0x10050u, v14);
      if (v29)
      {
        log_err("%s:%d: %s error unreserving tier2 space, %lld blocks: %d\n", "obj_cache_remove_new_fs_objects", 2151, (a2 + 4040), v14, v29);
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

uint64_t obj_create_bootstrap(pthread_mutex_t *a1, uint64_t a2, unint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  if (a6 >= 0x1000)
  {
    return obj_create_internal(a1, a2, a3, a4, a5, a6, 0, 0, a7, 1, a8);
  }

  else
  {
    return 22;
  }
}

uint64_t obj_create_internal(pthread_mutex_t *a1, uint64_t a2, unint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, char a10, uint64_t *a11)
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

  v85 = 0;
  v84 = 0;
  if (!a4)
  {
    return 22;
  }

  if (a4[3] < 0x178)
  {
    return 22;
  }

  v16 = a6;
  if (!a6)
  {
    v16 = a4[2];
    if (!v16)
    {
      if (!v11)
      {
        return 22;
      }

      v16 = *(*(v11 + 376) + 36);
      if (!v16)
      {
        return 22;
      }
    }
  }

  v19 = a10;
  if ((a10 & 1) == 0)
  {
    if (v16 % *(*(v11 + 376) + 36))
    {
      return 22;
    }
  }

  v20 = a2 | (*(a4 + 1) << 16);
  v21 = v20 & 0xC0000000;
  v22 = ((v20 >> 30) & 1) + (v20 >> 31);
  if ((v20 & 0xC0000000) == 0)
  {
    ++v22;
  }

  if ((v20 & 0x88000000) == 0x8000000 || v22 != 1)
  {
    return 22;
  }

  v26 = a2 | (*(a4 + 1) << 16);
  if (a7)
  {
    v26 = a2 | (*(a4 + 1) << 16);
    if ((v20 & 0xC0000000) == 0)
    {
      v27 = *(a7 + 504);
      if (!v27)
      {
        v27 = a7;
      }

      if (*(*(v27 + 376) + 264))
      {
        v26 = v20 & 0xFFFFFFFF2FFF03FFLL;
      }

      else
      {
        v74 = a5;
        v28 = v20 | 0x10000000;
        if (a4[1] == 36 || (v77 = a4[1], has_secondary_fsroot = apfs_has_secondary_fsroot(a7), v28 = v20 | 0x10000000, v77 == 37) && has_secondary_fsroot)
        {
          v30 = v28 & 0xFFFFFFFF3FFF1FFFLL | 0x2000;
        }

        else
        {
          v30 = v20 & 0xFFFFFFFF2FFF1FFFLL | 0x10000000;
        }

        v80 = v30;
        v31 = apfs_has_secondary_fsroot(a7);
        v32 = 1024;
        if (!v31)
        {
          v32 = 0;
        }

        v21 = v20 & 0xC0000000;
        v26 = v32 | v80 & 0xFFFFFFFFFFFFE3FFLL;
        a5 = v74;
      }
    }
  }

  v33 = a9;
  if ((v26 & 0x10000000) != 0)
  {
    v83 = 0;
    if ((v26 & 0x8000000) != 0)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (*a4 == 11 || a4[1] == 11)
    {
      v34 = 2;
    }

    else
    {
      v34 = 1;
    }

    v83 = v34;
    if ((v26 & 0x8000000) != 0)
    {
      goto LABEL_47;
    }
  }

  if ((a10 & 1) == 0)
  {
    if (*(v11 + 627))
    {
      return 30;
    }

    v75 = v12;
    v81 = v26;
    v35 = v21;
    v36 = a5;
    is_current_tx = xid_is_current_tx(v11, a9);
    a5 = v36;
    v21 = v35;
    v19 = a10;
    v26 = v81;
    v12 = v75;
    v33 = a9;
    if (!is_current_tx)
    {
      return 22;
    }
  }

LABEL_47:
  v38 = v33;
  if (a8)
  {
    v38 = a8;
    if (a8 > v33)
    {
      return 22;
    }
  }

  v71 = v38;
  v76 = a5;
  v78 = v33;
  v79 = v21;
  v82 = v26;
  if (a3)
  {
    v39 = 1;
  }

  else
  {
    v39 = v19;
  }

  v86 = 0;
  if ((v20 & 0x40000000) == 0)
  {
    v39 = 1;
  }

  v72 = v39;
  if (v39)
  {
    v73 = 0;
    if (v21)
    {
      goto LABEL_67;
    }

    goto LABEL_61;
  }

  v73 = (v16 + *(*(v11 + 376) + 36) - 1) / *(*(v11 + 376) + 36);
  v40 = spaceman_alloc(v12, 72);
  if (v40)
  {
    v24 = v40;
    if (*(v12 + 36) != 13)
    {
      v43 = *(v12 + 384) + 212;
    }

    v69 = a4[1];
    v67 = *a4;
    log_err("%s:%d: %s flags 0x%llx type 0x%x/0x%x error allocating new physical location %d\n");
    return v24;
  }

  v33 = v78;
  if (!v79)
  {
LABEL_61:
    v41 = (v16 + *(*(v11 + 376) + 36) - 1) / *(*(v11 + 376) + 36);
    v42 = spaceman_reserve(v12, 0x48u, v41, v33, &v84);
    if (v42)
    {
      v24 = v42;
      if (*(v12 + 36) != 13)
      {
        v57 = *(v12 + 384) + 212;
      }

      v68 = *a4;
      v70 = a4[1];
      log_err("%s:%d: %s flags 0x%llx type 0x%x/0x%x error reserving %d blocks of space: %d\n", "obj_create_internal");
      return v24;
    }

    v73 = v41;
  }

LABEL_67:
  pthread_mutex_lock(a1);
  v44 = obj_alloc(a1, a4[3], *a4, v16, v82, 0, &v86);
  if (v44)
  {
    v24 = v44;
LABEL_105:
    obj_cache_unlock_write(a1);
    if ((v72 & 1) == 0)
    {
      spaceman_free(v12, 64, v83, v73, v78);
    }

    if (!v79)
    {
      spaceman_unreserve(v12, v84, v73);
    }

    return v24;
  }

  v45 = v86;
  v46 = 66;
  if ((v82 & 0x40) != 0)
  {
    v46 = 0x100000004ALL;
  }

  v47 = *(v86 + 16) | v82 & 0xFFFFFC00 | v46 | (v82 << 14) & 0x400000000000;
  *(v86 + 16) = v47;
  v49 = *a4;
  v48 = a4[1];
  v50 = v45;
  v51 = v49 | v82 & 0xFFFF0000;
  *(v45 + 36) = v51;
  *(v45 + 40) = v48;
  if (!a7 || (v52 = *(a7 + 504)) == 0)
  {
    v52 = a7;
  }

  *(v45 + 8) = v52;
  *(v45 + 120) = v71;
  *(v45 + 144) = 0;
  if ((v20 & 0x80000000) == 0)
  {
    if ((v20 & 0x40000000) != 0)
    {
      if (a3)
      {
        v83 = a3;
      }

      else
      {
        a3 = v83;
      }

      *(v45 + 128) = a3;
    }

    else
    {
      if (v79)
      {
        goto LABEL_97;
      }

      v55 = 0x800000120;
      if ((v84 & 0x10) == 0)
      {
        v55 = 0x400000120;
      }

      *(v50 + 16) = v55 & 0xFFFFEFFFFFFFFFFFLL | ((((v84 & 0x10000) >> 16) & 1) << 44) | v47;
      if (!a3)
      {
        v56 = *&a1[6].__opaque[8];
        *(v50 + 112) = v56;
        *&a1[6].__opaque[8] = v56 + 1;
        if (trace_obj_alloc != 1 || obj_type_expected == v51 && obj_subtype_expected == v48)
        {
          goto LABEL_97;
        }

        v54 = "virtual";
        goto LABEL_79;
      }
    }

LABEL_96:
    *(v50 + 112) = a3;
    goto LABEL_97;
  }

  if (a3)
  {
    goto LABEL_96;
  }

  if ((v82 & 0x8000000) != 0)
  {
    v58 = *&a1[6].__opaque[16];
    *(v45 + 112) = v58;
    *&a1[6].__opaque[16] = v58 + 1;
    goto LABEL_97;
  }

  v53 = *&a1[6].__opaque[8];
  *(v45 + 112) = v53;
  *&a1[6].__opaque[8] = v53 + 1;
  if (trace_obj_alloc == 1)
  {
    v54 = "ephemeral";
LABEL_79:
    report_obj_alloc(v50, v54);
  }

LABEL_97:
  if ((*(v50 + 19) & 0x20) == 0)
  {
    v59 = *(v50 + 56);
    *(v59 + 24) = *(v50 + 36);
    *(v59 + 8) = *(v50 + 112);
  }

  if ((~atomic_fetch_add_explicit((v50 + 24), 1uLL, memory_order_relaxed) & 0xFFFFFF) == 0)
  {
    panic("Reference count overflowed for object %p!\n", v50);
  }

  v60 = obj_descriptor_funcs_for_type(*(v50 + 36), &v85);
  if (v60 || (v61 = v85, *v85) && (v60 = (*v85)(*(v50 + 56), v16, v76), v60) || (v62 = v61[1]) != 0 && (v60 = v62(v50, v76), v60))
  {
    v24 = v60;
    if ((v82 & 0x80000000) != 0)
    {
      obj_cache_ephemeral_adjust(a1, v82, v16, -1);
    }

    else
    {
      --*&a1[10].__opaque[36];
    }

    obj_destroy_internal(v50, 0);
    goto LABEL_105;
  }

  obj_init_wakeup(v50, v82);
  v63 = (*a1[11].__opaque + 8 * (*(v50 + 112) & LODWORD(a1[11].__sig)));
  v64 = *v63;
  *(v50 + 72) = *v63;
  if (v64)
  {
    *(v64 + 80) = v50 + 72;
  }

  *v63 = v50;
  *(v50 + 80) = v63;
  *(v50 + 16) |= 1uLL;
  if ((v82 & 0x80000000) != 0)
  {
    *(v50 + 88) = 0;
    v65 = 768;
    if ((v82 & 0x8000000) == 0)
    {
      v65 = 752;
    }

    v66 = *(&a1->__sig + v65);
    *(v50 + 96) = v66;
    *v66 = v50;
    *(&a1->__sig + v65) = v50 + 88;
  }

  if ((v19 & 1) == 0)
  {
    obj_dirty_locked(v50, v78, 0);
  }

  obj_cache_unlock_write(a1);
  if ((v82 & 4) != 0)
  {
    obj_lock(v50, 2);
  }

  v24 = 0;
  *a11 = v50;
  return v24;
}

uint64_t obj_clone(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  v8 = *(a1 + 56);
  v9 = *a1;
  v32[0] = 0;
  v32[1] = 0;
  v31 = 0;
  if (a4)
  {
    *a4 = 0;
  }

  if ((a2 & 0x210) == 0)
  {
    v25 = obj_descriptor_and_flags_for_type(*(a1 + 36), &v31, v32);
    if (v25)
    {
      return v25;
    }
  }

  v10 = *(a1 + 16);
  if ((v10 & 2) != 0)
  {
    return 22;
  }

  v33 = 0;
  v11 = v10 | 2;
  *(a1 + 16) = v10 | 2;
  if (*a3)
  {
    v33 = *a3;
    goto LABEL_7;
  }

  v25 = obj_alloc(v9, *(a1 + 44), *(a1 + 36), *(a1 + 48), v10 & 0xC0000000, a4, &v33);
  if (v25)
  {
    return v25;
  }

  v11 = *(a1 + 16);
LABEL_7:
  LODWORD(v12) = v11 & 0xFFFFFFFB;
  *(a1 + 16) = v11 & 0xFFFFFE7FFFFFFFFBLL;
  if (!*(a1 + 52))
  {
    LODWORD(v12) = v11 & 0xFFFFFFF9;
    *(a1 + 16) = v11 & 0xFFFFFE7FFFFFFFF9;
  }

  if ((v11 & 4) != 0)
  {
    cv_wakeup((*a1 + 1328));
    v12 = *(a1 + 16);
  }

  v13 = v33;
  *(v33 + 36) = *(a1 + 36);
  v14 = *(a1 + 8);
  *(v13 + 7) = *(a1 + 112);
  v13[16] = *(a1 + 128);
  v15 = v12 & 0xFFFFFC00 | v13[2];
  v16 = v15 | 0x40000000002;
  v13[1] = v14;
  v13[2] = v15 | 0x40000000002;
  if ((a2 & 0x50) != 0)
  {
    v16 = v15 | 0x4000000000ALL;
    v13[2] = v15 | 0x4000000000ALL;
    if ((a2 & 0x40) != 0)
    {
      v16 = v15 | 0x4100000000ALL;
      v13[2] = v15 | 0x4100000000ALL;
    }
  }

  if ((a2 & 0x100000200) != 0)
  {
    v13[2] = v16 | (a2 << 14) & 0x400000000000 | (a2 << 34) & 0x80000000000;
  }

  memcpy(v13[7], v8, *(a1 + 48));
  if ((a2 & 0x210) != 0)
  {
    goto LABEL_17;
  }

  v30 = 0;
  memcpy(v13 + 47, (a1 + 376), *(a1 + 44) - 376);
  v27 = obj_descriptor_funcs_for_type(*(a1 + 36), &v30);
  if (v27)
  {
    v24 = v27;
    goto LABEL_38;
  }

  v29 = *(v30 + 8);
  if (v29)
  {
    v24 = v29(v13, 0);
    if (v24)
    {
LABEL_38:
      v28 = v13[2];
      if ((v28 & 0x80000000) != 0)
      {
        obj_cache_ephemeral_adjust(v9, v28, *(v13 + 12), -1);
      }

      else
      {
        --*(v9 + 684);
      }

      if (*a3)
      {
        v13[2] &= ~0x40000000000uLL;
      }

      else
      {
        obj_destroy_internal(v13, 0);
      }

      return v24;
    }
  }

LABEL_17:
  v17 = (*(v9 + 712) + 8 * (v13[14] & *(v9 + 704)));
  v18 = *v17;
  v13[9] = *v17;
  if (v18)
  {
    *(v18 + 80) = v13 + 9;
  }

  *v17 = v13;
  v13[10] = v17;
  v19 = v13[2];
  v13[2] = v19 | 1;
  v20 = *(a1 + 16);
  if ((v20 & 0x80000000) != 0)
  {
    v13[11] = 0;
    v21 = (v20 & 0x8000000) == 0;
    v22 = 768;
    if (v21)
    {
      v22 = 752;
    }

    v23 = *(v9 + v22);
    v13[12] = v23;
    *v23 = v13;
    *(v9 + v22) = v13 + 11;
  }

  v13[2] = v19 & 0xFFFFFA7FFFFFFFFALL | 1;
  if ((a2 & 0x10) == 0 && !*(v13 + 13))
  {
    v13[2] = v19 & 0xFFFFFA7FFFFFFFF8 | 1;
  }

  if ((v19 & 4) != 0)
  {
    cv_wakeup((*v13 + 1328));
  }

  if ((~atomic_fetch_add_explicit(v13 + 3, 1uLL, memory_order_relaxed) & 0xFFFFFF) == 0)
  {
    panic("Reference count overflowed for object %p!\n", v13);
  }

  v24 = 0;
  *a3 = v13;
  return v24;
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

uint64_t obj_alloc(uint64_t a1, unsigned int a2, int a3, unsigned int a4, int a5, _BYTE *a6, uint64_t *a7)
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v87 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    *a6 = 0;
  }

  if (a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = 376;
  }

  if (a4)
  {
    v13 = 0;
  }

  else
  {
    v14 = *(a1 + 392);
    if (!v14)
    {
      v9 = 0;
      v13 = 22;
      goto LABEL_11;
    }

    v13 = 0;
    v9 = *(*(v14 + 376) + 36);
  }

  LOBYTE(v14) = 1;
LABEL_11:
  v15 = *(a1 + 392);
  if (v12 < 0x178)
  {
    v13 = 22;
    if (!v15)
    {
      goto LABEL_23;
    }

LABEL_19:
    v64 = *(v15 + 384) + 212;
    log_err("%s:%d: %s invalid object size: %d size_phys %d\n");
    goto LABEL_24;
  }

  if (v15)
  {
    if (v9 % *(*(v15 + 376) + 36))
    {
      LOBYTE(v14) = 0;
      v13 = 22;
    }

    else
    {
      v13 = v13;
    }

    if ((v14 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if ((v14 & 1) == 0)
  {
LABEL_23:
    log_err("%s:%d: invalid object size: %d size_phys %d\n");
    goto LABEL_24;
  }

  v71 = v12;
  v68 = v9;
  if (a5 < 0)
  {
    v67 = 0;
    v21 = 0;
    v65 = 0;
    goto LABEL_95;
  }

  v16 = 0;
  v67 = 0;
  v17 = 0;
  v65 = 0;
  v73 = 0;
  v18 = *(a1 + 684);
  while (2)
  {
    if (v18 < *(a1 + 676))
    {
      v22 = 0;
      goto LABEL_93;
    }

    v23 = (v8 & 0x40000000) == 0;
    if ((v8 & 0x40000000) != 0)
    {
      v24 = (a1 + 792);
    }

    else
    {
      v24 = (a1 + 776);
    }

    if (v23)
    {
      v25 = (a1 + 792);
    }

    else
    {
      v25 = (a1 + 776);
    }

    while (1)
    {
      v26 = pthread_rwlock_wrlock((a1 + 128));
      if (v26)
      {
        panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 2308, v26);
      }

      v27 = *(a1 + 808);
      if (v27)
      {
        if ((*(v27 + 32) & 0x10) != 0)
        {
          obj_cache_perform_deferred_updates(a1);
          v29 = pthread_rwlock_unlock((a1 + 128));
          if (v29)
          {
            panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 2313, v29);
          }

          goto LABEL_51;
        }

        if (*(a1 + 924) > *(a1 + 696))
        {
          goto LABEL_73;
        }

        __tp.tv_sec = 0;
        __tp.tv_nsec = 0;
        clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
        if (__tp.tv_sec - *(v27 + 160) > 29)
        {
          goto LABEL_73;
        }
      }

      v27 = *v24;
      if (*v24)
      {
        if ((*(v27 + 32) & 0x10) != 0)
        {
          goto LABEL_49;
        }

        v28 = *v25;
        if (!*v25)
        {
          break;
        }
      }

      else
      {
        v28 = *v25;
        if (!*v25)
        {
          v22 = 0;
          v27 = 0;
          goto LABEL_62;
        }
      }

      if ((*(v28 + 32) & 0x10) == 0)
      {
        break;
      }

LABEL_49:
      obj_cache_perform_deferred_updates(a1);
      v30 = pthread_rwlock_unlock((a1 + 128));
      if (v30)
      {
        panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 2364, v30);
      }

LABEL_51:
      if (*(a1 + 684) < *(a1 + 676))
      {
        v22 = 0;
        v8 = a5;
        v12 = v71;
        v10 = a3;
        v9 = v68;
        goto LABEL_93;
      }
    }

    if ((*(a1 + 1320) & 4) != 0)
    {
      goto LABEL_58;
    }

    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    if (!v27 || __tp.tv_sec - *(v27 + 160) <= 599)
    {
      if (v28)
      {
        if (__tp.tv_sec - *(v28 + 160) > 599)
        {
          goto LABEL_68;
        }

LABEL_58:
        if (*(a1 + 684) < *(a1 + 680))
        {
          goto LABEL_59;
        }

        if (v28)
        {
          if (v27)
          {
            if (*(v28 + 160) < *(v27 + 160))
            {
              v27 = v28;
            }

            goto LABEL_73;
          }

LABEL_68:
          v27 = v28;
          goto LABEL_73;
        }

        if (v27)
        {
          goto LABEL_73;
        }

LABEL_59:
        v22 = 0;
      }

      else
      {
        v22 = 0;
        if (v27 && *(a1 + 684) >= *(a1 + 680))
        {
          goto LABEL_73;
        }
      }

      v27 = 0;
LABEL_62:
      v8 = a5;
      v10 = a3;
      v9 = v68;
      goto LABEL_88;
    }

LABEL_73:
    v9 = v68;
    if (*(v27 + 44) == v71 && *(v27 + 48) == v68)
    {
      obj_free_list_remove(v27);
      v8 = a5;
      v10 = a3;
      if (v16)
      {
        fs_obj_zfree_oc(v73, v68, a5, a1);
        free_rwlock((v16 + 176));
        obj_type_free(v16, a3, v71);
        v73 = 0;
        v65 = 1;
      }

      v31 = *(v27 + 16);
      v67 = 1;
      if (v31)
      {
        v32 = *(v27 + 72);
        v33 = *(v27 + 80);
        if (v32)
        {
          *(v32 + 80) = v33;
        }

        v16 = 0;
        *v33 = v32;
        *(v27 + 16) = v31 & 0xFFFFFFFFFFFFFFFELL;
        v67 = 1;
      }

      else
      {
        v16 = 0;
      }

      v22 = v27;
LABEL_87:
      v27 = 0;
    }

    else
    {
      v8 = a5;
      v10 = a3;
      if ((*(v27 + 21) & 0x40) == 0)
      {
        v67 = 1;
        if (*(a1 + 684) < *(a1 + 680))
        {
          v22 = 0;
          goto LABEL_87;
        }
      }

      obj_free_list_remove(v27);
      v22 = 0;
      --*(a1 + 684);
      v67 = 1;
    }

LABEL_88:
    v34 = pthread_rwlock_unlock((a1 + 128));
    if (v34)
    {
      panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 2427, v34);
    }

    if (v27)
    {
      obj_destroy_internal(v27, 0);
    }

    v12 = v71;
LABEL_93:
    if (v22 | v16)
    {
      if (v22)
      {
        v21 = v17;
        v86 = 0;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        __tp = 0;
        v75 = 0u;
        v42 = obj_destroy_for_obj(v22);
        if (v42)
        {
          v43 = v42;
          obj_cache_unlock_write(a1);
          if (a6)
          {
            *a6 = 1;
          }

          v44 = v43(v22);
          if (v44)
          {
            v45 = *(v22 + 8);
            if (v45)
            {
              v46 = (v45 + 4040);
            }

            else
            {
              v46 = (*(*(*v22 + 392) + 384) + 212);
            }

            log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error destroying: %d\n", "obj_alloc", 2523, v46, *(v22 + 112), *(v22 + 16), *(v22 + 32), *(v22 + 36), *(v22 + 40), v44);
          }

          pthread_mutex_lock(a1);
        }

        v47 = *(v22 + 56);
        v48 = *(v22 + 352);
        v84 = *(v22 + 336);
        v85 = v48;
        v86 = *(v22 + 368);
        v49 = *(v22 + 288);
        v80 = *(v22 + 272);
        v81 = v49;
        v50 = *(v22 + 320);
        v82 = *(v22 + 304);
        v83 = v50;
        v51 = *(v22 + 224);
        v76 = *(v22 + 208);
        v77 = v51;
        v52 = *(v22 + 256);
        v78 = *(v22 + 240);
        v79 = v52;
        v53 = *(v22 + 192);
        __tp = *(v22 + 176);
        v75 = v53;
        v73 = v47;
        bzero(v47, v9);
        bzero(v22, v12);
        v54 = v85;
        *(v22 + 336) = v84;
        *(v22 + 352) = v54;
        *(v22 + 368) = v86;
        v55 = v81;
        *(v22 + 272) = v80;
        *(v22 + 288) = v55;
        v56 = v83;
        *(v22 + 304) = v82;
        *(v22 + 320) = v56;
        v57 = v77;
        *(v22 + 208) = v76;
        *(v22 + 224) = v57;
        v58 = v79;
        *(v22 + 240) = v78;
        *(v22 + 256) = v58;
        v59 = v75;
        v17 = v21;
        *(v22 + 176) = __tp;
        *(v22 + 192) = v59;
      }

      else
      {
        ++*(a1 + 684);
        v22 = v16;
        v21 = v17;
      }

      break;
    }

    v21 = v17;
    v7 = a6;
LABEL_95:
    obj_cache_unlock_write(a1);
    if (v7)
    {
      *v7 = 1;
    }

    v35 = _apfs_obj_zalloc(v9, *(a1 + 952));
    obj_cache_stats_update_zalloc((a1 + 976), v8, v35, v9);
    v73 = v35;
    obj_cache_stats_update_zalloc((omm + 136), v8, v35, v9);
    if (v10 > 0xCu)
    {
      if (v10 <= 0x18u)
      {
        if (v10 == 13)
        {
          v36 = 0x10B004081236861;
          v37 = 6256;
          goto LABEL_127;
        }

        if (v10 != 17)
        {
          if (v10 != 18)
          {
            goto LABEL_119;
          }

          v36 = 0x10A0040009CC2E3;
          v37 = 384;
          goto LABEL_127;
        }

        v39 = -1969217434;
      }

      else
      {
        if (v10 <= 0x1Cu)
        {
          if (v10 == 25)
          {
            v36 = 0x10A0040906DED57;
            v37 = 416;
            goto LABEL_127;
          }

          if (v10 != 27)
          {
            goto LABEL_119;
          }

          v36 = 0x10B0040200AD5F0;
          goto LABEL_123;
        }

        if (v10 == 29)
        {
          v36 = 0x10A00404C324ACELL;
LABEL_123:
          v37 = 392;
          goto LABEL_127;
        }

        if (v10 != 30)
        {
          goto LABEL_119;
        }

        v39 = -1209887300;
      }

      v36 = v39 | 0x10B004000000000;
      v37 = 400;
      goto LABEL_127;
    }

    if (v10 > 5u)
    {
      if (v10 - 6 < 3)
      {
        goto LABEL_109;
      }

      if (v10 != 11)
      {
        goto LABEL_119;
      }

      v36 = 0x10A0040FDA1D44DLL;
      v37 = 496;
LABEL_127:
      v38 = _apfs_calloc_typed(1uLL, v37, v36);
    }

    else
    {
      if (v10 - 2 >= 2)
      {
        if (v10 == 1)
        {
          v36 = 0x10A0040F77FBBF2;
          v37 = 1192;
        }

        else
        {
          if (v10 == 5)
          {
            v36 = 0x10B00403059A9A9;
            v37 = 1664;
            goto LABEL_127;
          }

LABEL_119:
          v36 = 0x10A00402D31E437;
          v37 = 376;
        }

        goto LABEL_127;
      }

LABEL_109:
      v38 = _apfs_zalloc(4u);
    }

    v22 = v38;
    v40 = v73;
    if (!v73 || !v22)
    {
      v13 = 12;
      if (!v73)
      {
        goto LABEL_145;
      }

      goto LABEL_144;
    }

    *(v22 + 24) = 0;
    v41 = new_rwlock((v22 + 176));
    if (v41)
    {
      v13 = v41;
      v40 = v73;
LABEL_144:
      fs_obj_zfree_oc(v40, v9, v8, a1);
LABEL_145:
      if (v22)
      {
        obj_type_free(v22, v10, v12);
      }

      pthread_mutex_lock(a1);
      goto LABEL_24;
    }

    pthread_mutex_lock(a1);
    if (v8 < 0)
    {
      v17 = 1;
      obj_cache_ephemeral_adjust(a1, v8, v9, 1);
    }

    else
    {
      v18 = *(a1 + 684);
      v17 = 1;
      if (*(a1 + 680) - 1 < v18)
      {
        v16 = v22;
        continue;
      }

      *(a1 + 684) = v18 + 1;
    }

    break;
  }

  v60 = a7;
  *v22 = a1;
  *(v22 + 36) = v10;
  *(v22 + 44) = v12;
  *(v22 + 48) = v9;
  *(v22 + 56) = v73;
  *(v22 + 88) = 3735928559;
  *(v22 + 104) = 3735928559;
  *(v22 + 160) = -1;
  if ((v8 & 0x80000000) == 0)
  {
    atomic_fetch_add_explicit((a1 + 1056), 1uLL, memory_order_relaxed);
    if (v17)
    {
      atomic_fetch_add_explicit((a1 + 1064), 1uLL, memory_order_relaxed);
      if (v21)
      {
        atomic_fetch_add_explicit((a1 + 1072), 1uLL, memory_order_relaxed);
      }

      v61 = 104;
      if (v65)
      {
        v61 = 112;
      }

      atomic_fetch_add_explicit((a1 + 976 + v61), 1uLL, memory_order_relaxed);
    }

    if (v67)
    {
      atomic_fetch_add_explicit((a1 + 1096), 1uLL, memory_order_relaxed);
    }

    v62 = omm;
    atomic_fetch_add_explicit((omm + 216), 1uLL, memory_order_relaxed);
    if (v17)
    {
      atomic_fetch_add_explicit(v62 + 28, 1uLL, memory_order_relaxed);
      if (v21)
      {
        atomic_fetch_add_explicit(v62 + 29, 1uLL, memory_order_relaxed);
      }

      v63 = 13;
      if (v65)
      {
        v63 = 14;
      }

      atomic_fetch_add_explicit(&v62[v63 + 17], 1uLL, memory_order_relaxed);
      v60 = a7;
    }

    if (v67)
    {
      atomic_fetch_add_explicit(v62 + 32, 1uLL, memory_order_relaxed);
    }
  }

  v13 = 0;
  *v60 = v22;
LABEL_24:
  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t obj_init_wakeup(uint64_t result, char a2)
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
  *a2 = off_278BC6818[v2];
  return result;
}

void obj_delete_internal(uint64_t *a1, uint64_t a2, int a3)
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

    v27 = v8;
    a1[16] = 0;
    a1[19] = 0;
    if (atomic_fetch_and_explicit(a1 + 8, 0xFFFFFFFE, memory_order_relaxed))
    {
      v9 = pthread_rwlock_wrlock((v6 + 128));
      if (v9)
      {
        panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 3186, v9);
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
        panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 3200, v13);
      }
    }

    v14 = a1[1];
    if (!v14)
    {
      v14 = *(v6 + 392);
    }

    v15 = a1[2];
    v16 = a1[15];
    if (a3)
    {
      a1[2] = v15 & 0xFFFFFFEFFFFFFFF7 | 8;
    }

    v17 = a1[18];
    v18 = *(a1 + 12);
    v19 = a1[14];
    v21 = *(a1 + 9);
    v20 = *(a1 + 10);
    obj_cache_unlock_write(v6);
    if (!(v8 | v15 & 0x40))
    {
      v22 = omap_get(v14, v19, v16, &v27, 0, 0, 0);
      if (v22)
      {
        if (*(v14 + 36) == 13)
        {
          v23 = (v14 + 4040);
        }

        else
        {
          v23 = (*(v14 + 384) + 212);
        }

        log_err("%s:%d: %s oid 0x%llx flags 0x%llx type 0x%x/0x%x error getting mapping to free %d\n", "obj_delete_internal", 3222, v23, v19, v15, v21, v20, v22);
      }

      v8 = v27;
    }

    if (v8)
    {
      if ((v15 & 0x40000000) != 0)
      {
        v24 = *(*(*(v6 + 392) + 376) + 36);
        if (spaceman_free(v14, 64, v8, (v18 + v24 - 1) / v24, v17))
        {
          if (*(v14 + 36) != 13)
          {
            v26 = *(v14 + 384) + 212;
          }

          log_err("%s:%d: %s oid 0x%llx flags 0x%llx type 0x%x/0x%x error freeing space %d\n", "obj_delete_internal");
        }
      }

      else if (omap_delete(v14, v19, v16, v8, v18, 1, v17))
      {
        if (*(v14 + 36) != 13)
        {
          v25 = *(v14 + 384) + 212;
        }

        log_err("%s:%d: %s oid 0x%llx flags 0x%llx type 0x%x/0x%x error deleting mapping %d\n", "obj_delete_internal");
      }
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
  v12 = *(a1 + 392);
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v28[0] = 0;
  v28[1] = 0;
  v13 = obj_descriptor_and_flags_for_type(a2, &v29, v28);
  if (!v13)
  {
    v27 = 0;
    if (a4)
    {
      v15 = obj_get(a1, 0, a4, &apfs_desc, 0, 0, 0, 0, &v31);
      if (v15)
      {
        v13 = v15;
        log_err("%s:%d: %s unable to get fs object 0x%llx: %d\n", "obj_delete_and_free_by_oid", 3310, (*(v12 + 384) + 212), a4, v15);
        return v13;
      }

      v16 = v31;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v12;
    }

    v18 = v29;
    v19 = obj_get(a1, v29, a5, 0, 0, v16, 0, 0, &v30);
    if (v19)
    {
      if ((v18 & 0x80000000) != 0)
      {
        v13 = v19;
      }

      else if (v18 >> 30)
      {
        v22 = spaceman_free(v17, 64, a5, (a3 + *(*(v12 + 376) + 36) - 1) / *(*(v12 + 376) + 36), a6);
        v13 = v22;
        if (v22)
        {
          if (*(v17 + 36) == 13)
          {
            log_err("%s:%d: %s oid 0x%llx flags 0x%x type 0x%x error freeing space %d\n", "obj_delete_and_free_by_oid", 3332, (v17 + 4040), a5, v18, a2, v22);
          }

          else
          {
            log_err("%s:%d: %s oid 0x%llx flags 0x%x type 0x%x error freeing space %d\n", "obj_delete_and_free_by_oid", 3332, (*(v17 + 384) + 212), a5, v18, a2, v22);
          }
        }
      }

      else
      {
        v26 = 0;
        v25 = 0;
        v20 = omap_get(v17, a5, 0, &v27, &v26, 0, &v25);
        if (v20)
        {
          v13 = v20;
          if (*(v17 + 36) != 13)
          {
            v23 = *(v17 + 384) + 212;
          }

          log_err("%s:%d: %s oid 0x%llx flags 0x%x type 0x%x error getting mapping to free %d\n");
        }

        else
        {
          v13 = omap_delete(v17, a5, v25, v27, a3, 1, a6);
          if (v13)
          {
            if (*(v17 + 36) != 13)
            {
              v24 = *(v17 + 384) + 212;
            }

            log_err("%s:%d: %s oid 0x%llx flags 0x%x type 0x%x error deleting mapping %d\n");
          }
        }

        v16 = v31;
      }
    }

    else
    {
      v21 = v30;
      obj_delete_internal(v30, a6, 1);
      obj_release(v21);
      v13 = 0;
    }

    if (v16)
    {
      obj_release(v16);
    }
  }

  return v13;
}

uint64_t obj_get(uint64_t a1, uint64_t a2, unint64_t a3, int *a4, _WORD *a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t *a9)
{
  v9 = a2;
  v113 = a2;
  v110 = a7 & (a2 << 60 >> 63);
  v111 = 0;
  v108 = 0;
  v109 = 16000;
  v105 = 0;
  *a9 = 0;
  if ((~a2 & 0xC0000000) == 0)
  {
    return 22;
  }

  v13 = a7;
  if ((a2 & 0x8000001) == 1)
  {
    is_current_tx = xid_is_current_tx(*(a1 + 392), a8);
    finish = 22;
    if ((~v9 & 0x180) == 0 || !is_current_tx)
    {
      return finish;
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

  finish = 22;
  if ((v9 & 0x210) == 0x200 || !a3)
  {
    return finish;
  }

  if (*(a1 + 1376))
  {
    pthread_mutex_lock(a1);
    v107 = 2;
    oc_poll_async_prefetch_objects(a1, &v105);
    if (v105 == 1)
    {
      obj_cache_unlock_write(a1);
    }
  }

  if (a4)
  {
    v9 |= *(a4 + 1) << 16;
    v113 = v9;
  }

  v20 = (v9 >> 30) & 2;
  v21 = (v9 >> 30) | (v20 >> 1);
  v22 = (v9 & 0x40000000) != 0 || ((v9 >> 30) & 2) != 0 ? 0 : 4;
  if (((v9 >> 30) & 1) + (((v9 >> 30) & 2) >> 1) + ((v9 & 0x40000000) == 0 && ((v9 >> 30) & 2) == 0) != 1 || (((v9 & 0x200) != 0) & v21) != 0)
  {
    return 22;
  }

  if ((v9 & 0x40000000) != 0 || ((v9 >> 30) & 2) != 0)
  {
    v13 = 0;
    v110 = 0;
  }

  if ((v9 & 0x8000000) != 0)
  {
    if (v20)
    {
      v23 = *(a1 + 408);
      if (v23 <= *(a1 + 400))
      {
        v23 = *(a1 + 400);
      }

      goto LABEL_36;
    }

    return 22;
  }

  if (v9 & 1) != 0 && (*(*(a1 + 392) + 627))
  {
    return 30;
  }

  if ((v9 >> 30))
  {
    goto LABEL_37;
  }

  v23 = *(a1 + 400);
LABEL_36:
  if (v23 <= a3)
  {
    return 22;
  }

LABEL_37:
  v97 = a5;
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

  v103 = v25;
  if (!((a6 == 0) | v21 & 1))
  {
    apfs_encryption_state_for_object(a6, v25, &v113);
    v24 = v9 >> 30;
    LODWORD(v9) = v113;
  }

  v112 = 0;
  v27 = v24 | v22 | 0x20;
  pthread_mutex_lock(a1);
  v28 = v27;
  finish = 0;
  v107 = 1;
  v100 = v9 & 0xFFFF0000 | v26;
  v104 = v26;
  v29 = 512;
  if (!v13)
  {
    v29 = 288;
  }

  v96 = v29;
  v30 = v103;
  while (1)
  {
    v31 = (v28 & 0xFFFFFFBF | (((v9 >> 8) & 1) << 6)) ^ 0x40;
    v106 = 0;
    v32 = *(*(a1 + 712) + 8 * (*(a1 + 704) & a3));
    if (v32)
    {
      break;
    }

    if ((v28 & 2) != 0)
    {
LABEL_227:
      v32 = 0;
      v94 = 0;
      finish = 2;
      goto LABEL_237;
    }

LABEL_102:
    if (a4)
    {
      v41 = v112;
      if (v112)
      {
        goto LABEL_109;
      }

      v99 = v31;
      v42 = v107;
      if (v107 == 1)
      {
        v42 = 2;
      }

      v107 = v42;
      v44 = a4[2];
      v43 = a4[3];
    }

    else
    {
      if ((v113 & 0x10) == 0)
      {
        v32 = 0;
        v94 = 0;
        goto LABEL_237;
      }

      v41 = v112;
      if (v112)
      {
LABEL_109:
        v45 = v113;
        goto LABEL_121;
      }

      v99 = v31;
      v43 = 0;
      v44 = 0;
      v47 = v107;
      if (v107 == 1)
      {
        v47 = 2;
      }

      v107 = v47;
    }

    v45 = v113;
    v48 = obj_alloc(a1, v43, v100, v44, v113, &v106, &v112);
    if (v48)
    {
      finish = v48;
      v32 = 0;
LABEL_235:
      v94 = 0;
      goto LABEL_236;
    }

    v31 = v99;
    finish = 0;
    if (v106)
    {
      goto LABEL_180;
    }

    v41 = v112;
LABEL_121:
    v112 = 0;
    v49 = v45 & 0xFFFF0000;
    if (a4)
    {
      v50 = a4[1];
      v51 = *a4 | v49;
    }

    else
    {
      v50 = 0;
      v51 = v45 & 0xFFFF0000;
    }

    *(v41 + 36) = v51;
    *(v41 + 40) = v50;
    *(v41 + 112) = a3;
    if (!a6 || (v52 = *(a6 + 504)) == 0)
    {
      v52 = a6;
    }

    v53 = (*(a1 + 712) + 8 * (*(a1 + 704) & a3));
    v54 = *v53;
    *(v41 + 72) = *v53;
    *(v41 + 8) = v52;
    v55 = v110;
    if ((v31 & 8) == 0)
    {
      v55 = v13;
    }

    *(v41 + 120) = v55;
    if (v31)
    {
      v56 = a3;
    }

    else
    {
      v56 = 0;
    }

    *(v41 + 128) = v56;
    v98 = (v41 + 128);
    v57 = *(v41 + 16);
    v58 = v45 & 0xFC00;
    if ((v31 & 4) != 0)
    {
      v58 = 0;
    }

    if (v54)
    {
      *(v54 + 80) = v41 + 72;
    }

    v59 = v57 | v58 | v49;
    *v53 = v41;
    *(v41 + 80) = v53;
    v60 = v59 | 0x10000000003;
    *(v41 + 16) = v59 | 0x10000000003;
    if ((v45 & 0x50) != 0)
    {
      v60 = v59 | 0x1000000000BLL;
      *(v41 + 16) = v59 | 0x1000000000BLL;
      if ((v45 & 0x40) != 0)
      {
        v60 = v59 | 0x1100000000BLL;
        *(v41 + 16) = v59 | 0x1100000000BLL;
      }
    }

    v61 = v60 | (v45 << 14) & 0x400000000000;
    if ((v45 & 0x180) != 0)
    {
      v61 |= 0x8000000000uLL;
    }

    v62 = v61 | (v45 << 34) & 0x80000000000;
    if ((v31 & 4) != 0)
    {
      v62 |= v96;
    }

    if ((v45 & 0x100000380) != 0 || (v31 & 4) != 0)
    {
      *(v41 + 16) = v62;
    }

    v101 = v41;
    if ((~atomic_fetch_add_explicit((v41 + 24), 1uLL, memory_order_relaxed) & 0xFFFFFF) == 0)
    {
      panic("Reference count overflowed for object %p!\n", v41);
    }

    if ((v45 & 0x180) != 0)
    {
      v63 = v31;
    }

    else
    {
      v63 = v31 | 0x10;
    }

    obj_cache_unlock_write(a1);
    v107 = 0;
    v95 = v63;
    v99 = v63 & 0xFFFFFF9F;
    if ((v63 & 4) != 0)
    {
      v66 = *(v101 + 8);
      if (!v66)
      {
        v66 = *(a1 + 392);
      }

      finish = omap_get(v66, a3, v13, v98, 0, &v108, &v111);
      v64 = v97;
      if (!finish)
      {
        if ((v45 & 8) == 0 || v111 == v13)
        {
LABEL_152:
          if ((v45 & 0x180) != 0)
          {
            v65 = obj_get_async_read(a1, v45, a4, v64, a6, v101, v111, v108, &v105 + 1);
            finish = v65;
            if (HIBYTE(v105) == 1)
            {
              if (v65)
              {
                v94 = v101;
                obj_free(v101);
                v32 = v101;
              }

              else
              {
                v32 = v101;
                v94 = v101 & ((v45 << 55) >> 63);
              }

LABEL_236:
              LOBYTE(v31) = v99;
              goto LABEL_237;
            }
          }

          else
          {
            finish = obj_read(v101, v111, v108, 0);
          }

          goto LABEL_169;
        }

        finish = 2;
      }
    }

    else
    {
      v64 = v97;
      if (!finish)
      {
        goto LABEL_152;
      }
    }

LABEL_169:
    pthread_mutex_lock(a1);
    v107 = 2;
    v68 = v108;
    v69 = v101;
    if ((v108 & 0xE0) != 0)
    {
      *(v101 + 16) = *(v101 + 16) & 0xFFFFFFFFFFFF1FFFLL | ((v108 >> 5) << 13);
    }

    if ((v68 & 0x700) != 0)
    {
      *(v101 + 16) = *(v101 + 16) & 0xFFFFFFFFFFFFE3FFLL | (((v68 >> 8) & 7) << 10);
    }

    if (finish)
    {
      goto LABEL_229;
    }

    v70 = obj_init(v101, v45, a3, a4, v64, v13, v100, v103);
    if (v70)
    {
      finish = v70;
      v69 = v101;
LABEL_229:
      *(v69 + 52) = finish;
      obj_init_wakeup(v101, v45);
      v94 = v101;
      v32 = 0;
      if ((v95 & 0x10) != 0)
      {
        LOBYTE(v31) = v95 & 0x8F;
      }

      else
      {
        LOBYTE(v31) = v99;
      }

      *(v101 + 16) = *(v101 + 16) & 0xFFFFFFEFFFFFFFF7 | 8;
LABEL_237:
      v83 = v112;
      if (v112)
      {
LABEL_238:
        --*(a1 + 684);
        v84 = v83;
        v85 = v31;
        obj_destroy_internal(v84, 1);
        LOBYTE(v31) = v85;
      }

      goto LABEL_239;
    }

    v31 = v99;
    v33 = v101;
LABEL_178:
    v67 = v31;
    v32 = v33;
    finish = obj_get_finish(v33, v113, v13, (v31 >> 6) & 1, &v109, &v107);
    if (finish != 35)
    {
      v94 = 0;
LABEL_226:
      LOBYTE(v31) = v67;
      goto LABEL_237;
    }

LABEL_179:
    v31 = v67;
LABEL_180:
    v30 = v103;
LABEL_181:
    LODWORD(v9) = v113;
    v28 = v31;
  }

  v33 = 0;
  while (2)
  {
    v34 = *(v32 + 8);
    if (v34 != a6 && (!a6 || v34 != *(a6 + 504)))
    {
      goto LABEL_92;
    }

    v35 = *(v32 + 16);
    if (((v35 ^ v9) & 0xC8000000) != 0 || *(v32 + 112) != a3)
    {
      goto LABEL_92;
    }

    if ((v35 & 2) != 0)
    {
      if ((v9 & 0x180) == 0)
      {
        v78 = v107;
        if (v107 == 1)
        {
          v78 = 2;
        }

        v107 = v78;
        *(v32 + 16) = v35 | 4;
        v79 = (v28 & 0xFFFFFFBF | (((v9 >> 8) & 1) << 6)) ^ 0x40;
        obj_initting_wait(v32);
        v30 = v103;
        v31 = v79;
        goto LABEL_181;
      }

      if (*(v32 + 52))
      {
        v94 = 0;
        finish = *(v32 + 52);
        goto LABEL_237;
      }

      if ((~v35 & 0xA) == 0)
      {
        v94 = 0;
        finish = 16;
        goto LABEL_237;
      }

      if ((v9 & 0x100) != 0)
      {
        v94 = 0;
        finish = 0;
        goto LABEL_237;
      }

      v67 = (v28 & 0xFFFFFFBF | (((v9 >> 8) & 1) << 6)) ^ 0x40;
      if ((v35 & 0x8000000000) != 0)
      {
        *(v32 + 16) = v35 | 4;
        cv_wait_rw((a1 + 1328), a1, 2, 0);
        goto LABEL_179;
      }

      if (obj_reference_release_wait(v32, &v109, 0, v107))
      {
        goto LABEL_179;
      }

      v94 = 0;
      finish = 0;
      goto LABEL_226;
    }

    if (v104 && *(v32 + 36) && ((*(v32 + 36) ^ v100) & 0xEFFFFFFF) != 0 || v30 && *(v32 + 40) != v30)
    {
      goto LABEL_92;
    }

    if ((v28 | ((v28 & 2) >> 1)))
    {
      v33 = v32;
      if ((v28 & 2) == 0)
      {
        goto LABEL_94;
      }

LABEL_177:
      if (!v33)
      {
        goto LABEL_227;
      }

      goto LABEL_178;
    }

    if (!v110)
    {
      if (v13)
      {
        v36 = *(v32 + 120);
        if (v36 <= *(v32 + 144))
        {
          v36 = *(v32 + 144);
        }

        goto LABEL_68;
      }

      goto LABEL_71;
    }

    v36 = *(v32 + 120);
    if (v36 <= *(v32 + 144))
    {
      v36 = *(v32 + 144);
    }

    if (!v13)
    {
      if (v36 < v110)
      {
        goto LABEL_92;
      }

LABEL_71:
      v37 = 1;
      goto LABEL_72;
    }

    if (v36 != v110)
    {
      goto LABEL_92;
    }

LABEL_68:
    if (v36 > v13)
    {
      goto LABEL_92;
    }

    v37 = 0;
LABEL_72:
    if (!v33)
    {
      goto LABEL_91;
    }

    v38 = *(v32 + 120);
    if (v38 <= *(v32 + 144))
    {
      v38 = *(v32 + 144);
    }

    v39 = *(v33 + 120);
    if (v39 <= *(v33 + 144))
    {
      v39 = *(v33 + 144);
    }

    if (v38 >= v39)
    {
      if (v38 != v39)
      {
        goto LABEL_85;
      }

      if (v37)
      {
        if ((v35 & 0x200) != 0 && (*(v33 + 17) & 2) == 0)
        {
          goto LABEL_92;
        }

LABEL_85:
        if ((v9 & 0x200) != 0)
        {
          if ((v35 & 0x80000000000) == 0 && (*(v33 + 21) & 8) != 0)
          {
            goto LABEL_92;
          }
        }

        else if ((v35 & 0x80000000000) != 0 && (*(v33 + 21) & 8) == 0)
        {
          goto LABEL_92;
        }

LABEL_91:
        v33 = v32;
        goto LABEL_92;
      }

      if ((v35 & 0x200) != 0 || (*(v33 + 17) & 2) == 0)
      {
        goto LABEL_85;
      }
    }

LABEL_92:
    v32 = *(v32 + 72);
    if (v32)
    {
      continue;
    }

    break;
  }

  if ((v28 & 2) != 0)
  {
    goto LABEL_177;
  }

LABEL_94:
  if (!v33 || (v28 & 4) == 0)
  {
    if (!v33)
    {
      goto LABEL_102;
    }

    if ((v28 & 4) == 0)
    {
      goto LABEL_178;
    }

LABEL_112:
    v40 = *(v33 + 16);
    if (v13)
    {
      goto LABEL_113;
    }

LABEL_183:
    if ((v40 & 0x100) != 0)
    {
      goto LABEL_178;
    }

    v46 = 1;
LABEL_185:
    v71 = v107;
    if (v107 == 1)
    {
      v71 = 2;
    }

    v107 = v71;
    add_explicit = atomic_fetch_add_explicit((v33 + 24), 0, memory_order_relaxed);
    if ((add_explicit & 0xFFFFFF) == ((add_explicit >> 24) & 0xFFFFF))
    {
      if (v46)
      {
        v73 = v40 & 0xFFFFFFFFFFFFFCDFLL | 0x120;
LABEL_205:
        *(v33 + 16) = v73;
LABEL_209:
        if ((v31 & 8) == 0)
        {
          goto LABEL_178;
        }

        v80 = *(v33 + 16);
        if ((v80 & 0x20000000000) == 0)
        {
          v110 = *(v33 + 120);
          goto LABEL_102;
        }

        *(v33 + 16) = v80 | 0x80;
        v81 = v31;
        cv_wait_rw((a1 + 1328), a1, 2, 0);
        v31 = v81 & 0xFFFFFFF7;
        v30 = v103;
        goto LABEL_181;
      }

      if ((v9 & 0x200) == 0 || (v40 & 0x80000000000) != 0)
      {
        v73 = v40 & 0xFFFFFFFFFFFFFCFFLL | 0x200;
        goto LABEL_205;
      }
    }

    else
    {
      if (v46)
      {
        if ((v40 & 0x200) != 0)
        {
          v99 = (v28 & 0xFFFFFFBF | (((v9 >> 8) & 1) << 6)) ^ 0x40;
          if (!v112)
          {
            v32 = v33;
            v82 = obj_alloc(a1, *(v33 + 44), *(v33 + 36), *(v33 + 48), v9, &v106, &v112);
            if (v82)
            {
              finish = v82;
              goto LABEL_235;
            }

            if (v112 == v32 || (v106 & 1) != 0)
            {
              finish = 0;
              v31 = v99;
              goto LABEL_180;
            }

            v33 = v32;
            v40 = *(v32 + 16);
          }

          *(v33 + 16) = v40 & 0xFFFFFFFFFFFFFFDFLL;
          v74 = v33;
          finish = 0;
          if (obj_clone(v33, 0, &v112, &v106))
          {
            v31 = v99 | 8;
            v33 = v74;
          }

          else
          {
            v33 = v112;
            v112 = 0;
            *(v33 + 16) |= 0x120uLL;
            atomic_fetch_add_explicit((v33 + 24), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
            v31 = v99;
          }
        }

        goto LABEL_209;
      }

      if ((v40 & 0x100) == 0 || (v9 & 8) != 0)
      {
        if ((v9 & 0x200) != 0 && (v40 & 0x80000000000) == 0)
        {
          v31 |= 8u;
        }

        goto LABEL_209;
      }
    }

    v31 |= 8u;
    goto LABEL_209;
  }

  v40 = *(v33 + 16);
  if ((v40 & 0x40) != 0)
  {
    goto LABEL_112;
  }

  if (!v13)
  {
    if (!(*(v33 + 16) & 0x20 | v110))
    {
      goto LABEL_195;
    }

    goto LABEL_183;
  }

  if (v13 <= *(v33 + 168) || v110)
  {
LABEL_113:
    if ((v40 & 0x200) != 0)
    {
      goto LABEL_178;
    }

    v46 = 0;
    goto LABEL_185;
  }

LABEL_195:
  v102 = v33;
  v75 = (v28 & 0xFFFFFFBF | (((v9 >> 8) & 1) << 6)) ^ 0x40;
  v76 = v107;
  obj_cache_unlock_by_state(a1, v107);
  v107 = 0;
  v77 = a6;
  if (!a6)
  {
    v77 = *(a1 + 392);
  }

  finish = omap_get(v77, a3, v13, 0, 0, 0, &v110);
  if (!finish)
  {
    obj_cache_lock_by_state(a1, v76);
    v107 = v76;
    v31 = v75;
    goto LABEL_180;
  }

  v83 = v112;
  if (v112)
  {
    pthread_mutex_lock(a1);
    v94 = 0;
    v107 = 2;
    LOBYTE(v31) = v75;
    v32 = v102;
    goto LABEL_238;
  }

  v94 = 0;
  LOBYTE(v31) = v75;
  v32 = v102;
LABEL_239:
  v86 = v31;
  if (v107)
  {
    obj_cache_unlock_by_state(a1, v107);
  }

  if (v94)
  {
    obj_release(v94);
  }

  if (!finish)
  {
    if (v32)
    {
      v87 = v113;
      if ((v113 & 4) != 0)
      {
        if (v113)
        {
          v88 = 2;
        }

        else
        {
          v88 = 1;
        }

        obj_lock(v32, v88);
        v87 = v113;
      }

      if ((v87 & 1) != 0 && (v89 = obj_modify(v32, v87 & 3, a8), v89))
      {
        finish = v89;
        if ((v113 & 4) != 0)
        {
          if (v113)
          {
            v90 = 2;
          }

          else
          {
            v90 = 1;
          }

          obj_unlock(v32, v90);
        }

        obj_release(v32);
      }

      else
      {
        if ((v86 & 2) == 0)
        {
          v91 = 136;
          if ((v86 & 0x20) == 0)
          {
            v91 = 144;
          }

          atomic_fetch_add_explicit((a1 + 1104), 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit((a1 + v91 + 976), 1uLL, memory_order_relaxed);
          v92 = omm + v91;
          atomic_fetch_add_explicit((omm + 264), 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit((v92 + 136), 1uLL, memory_order_relaxed);
        }

        finish = 0;
        if ((v113 & 0x100) != 0)
        {
          v93 = 0;
        }

        else
        {
          v93 = v32;
        }

        *a9 = v93;
      }
    }

    else
    {
      return 2;
    }
  }

  return finish;
}

uint64_t oc_poll_async_prefetch_objects(uint64_t result, _BYTE *a2)
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

    return obj_async_finish(v2, a2);
  }

  return result;
}

uint64_t apfs_encryption_state_for_object(uint64_t result, int a2, uint64_t *a3)
{
  v4 = *(result + 504);
  if (!v4)
  {
    v4 = result;
  }

  v5 = *(v4 + 376);
  v6 = *a3;
  if (*(v5 + 264))
  {
    v12 = v6 & 0xFFFFFFFFEFFF03FFLL;
  }

  else
  {
    v8 = result;
    v9 = v6 | 0x10000000;
    *a3 = v9;
    if (a2 == 36 || (has_secondary_fsroot = apfs_has_secondary_fsroot(result), v9 = *a3, a2 == 37) && has_secondary_fsroot)
    {
      v11 = v9 & 0xFFFFFFFFFFFF1FFFLL | 0x2000;
    }

    else
    {
      v11 = v9 & 0xFFFFFFFFFFFF1FFFLL;
    }

    *a3 = v11;
    result = apfs_has_secondary_fsroot(v8);
    v13 = 1024;
    if (!result)
    {
      v13 = 0;
    }

    v12 = *a3 & 0xFFFFFFFFFFFFE3FFLL | v13;
  }

  *a3 = v12;
  return result;
}

uint64_t obj_initting_wait(uint64_t *a1)
{
  v1 = *a1;
  v5 = xmmword_23D298FF0;
  v2 = a1[2];
  result = cv_wait_rw((v1 + 1328), v1, 2, (&v5 & (v2 << 23 >> 63)));
  if ((v2 & 0x10000000000) != 0 && *(v1 + 1376))
  {
    v4 = 0;
    result = oc_poll_async_prefetch_objects(v1, &v4);
    if ((v4 & 1) == 0)
    {
      return pthread_mutex_lock(v1);
    }
  }

  return result;
}

unint64_t obj_get_async_read(uint64_t a1, void (*a2)(uint64_t a1, int8x16_t a2, int8x16_t a3), _OWORD *a3, _WORD *a4, uint64_t a5, uint64_t a6, unint64_t a7, unsigned int a8, _BYTE *a9)
{
  *a9 = 0;
  v17 = _apfs_calloc_typed(1uLL, 0xA8uLL, 0x10A20403EA893BFuLL);
  if (!v17)
  {
    v21 = 12;
    goto LABEL_15;
  }

  v18 = v17;
  if (a4)
  {
    if (*a4 == 25987)
    {
      if (!a4[1])
      {
        v20 = 0;
        v19 = v17[20];
        goto LABEL_17;
      }

      v19 = _apfs_malloc_typed(a4[1], 0x100004052888210uLL);
      bzero(v19, a4[1]);
      v18[20] = v19;
      if (v19)
      {
        v20 = a4[1];
LABEL_17:
        memcpy(v19, a4, v20);
        *(v18 + 152) = 1;
        goto LABEL_18;
      }

      v21 = 12;
    }

    else
    {
      if (!a5)
      {
        a5 = *(a1 + 392);
      }

      if (*(a5 + 36) == 13)
      {
        v22 = (a5 + 4040);
      }

      else
      {
        v22 = (*(a5 + 384) + 212);
      }

      log_err("%s:%d: %s oid 0x%llx flags 0x%llx type 0x%x/0x%x: attempt to perform async fetch without proper init args\n", "obj_get_async_read", 3775, v22, *(a6 + 112), a2, *(a6 + 36), *(a6 + 40));
      v21 = 22;
    }

    _apfs_free(v18, 168);
LABEL_15:
    *a9 = 1;
    return v21;
  }

LABEL_18:
  pthread_mutex_lock(a1);
  v18[13] = 0;
  v23 = *(a1 + 1384);
  v18[14] = v23;
  *v23 = v18;
  *(a1 + 1384) = v18 + 13;
  obj_cache_unlock_write(a1);
  *v18 = obj_get_callback;
  v18[17] = a6;
  *(v18 + 15) = *a3;
  v18[18] = a2;
  if ((~atomic_fetch_add_explicit((a6 + 24), 1uLL, memory_order_relaxed) & 0xFFFFFF) == 0)
  {
    panic("Reference count overflowed for object %p!\n", a6);
  }

  atomic_fetch_add_explicit((a1 + 944), 1u, memory_order_relaxed);
  v21 = obj_read(a6, a7, a8, v18);
  if (!v21)
  {
    *a9 = 1;
    pthread_mutex_lock(a1);
    v24 = *(a6 + 16);
    v25 = v24 & 0xFFFFFF7FFFFFFFFBLL;
    if ((a8 & 0xE0) != 0)
    {
      v25 = v24 & 0xFFFFFF7FFFFF1FFBLL | (a8 << 8) & 0xE000;
    }

    if ((a8 & 0x700) != 0)
    {
      v25 = v25 & 0xFFFFFFFFFFFFE3FFLL | (4 * a8) & 0x1C00;
    }

    *(a6 + 16) = v25;
    obj_cache_unlock_write(a1);
    if ((v24 & 4) != 0)
    {
      cv_wakeup((a1 + 1328));
    }

    return 0;
  }

  return v21;
}

unint64_t obj_read(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a1 + 128);
  v8 = *(a1 + 8);
  if (v7)
  {
    v9 = *(a1 + 36);
    if ((a3 & 4) != 0 && v8)
    {
      *(a1 + 36) = v9 | 0x10000000;
      if ((*(a1 + 21) & 8) != 0)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        if ((a3 & 8) != 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (a3 >> 5 == 1)
        {
          v10 = (a3 & 0x10) == 0;
          v11 = 824;
          v12 = 632;
        }

        else
        {
          if (a3 >> 5)
          {
            panic("invalid crypto index %d\n");
          }

          v10 = (a3 & 0x10) == 0;
          v11 = 728;
          v12 = 536;
        }

        if (!v10)
        {
          v12 = v11;
        }

        v14 = (a3 >> 8) & 7;
        v16 = v8 + v12;
        if (v14)
        {
          if (v14 != 1)
          {
            panic("invalid tweak type %d\n");
          }

          v15 = *(a1 + 112) ^ HIDWORD(a2) | *(a1 + 112) & 0xFFFFFFFF00000000 ^ (a2 << 32);
          v14 = 4;
          if ((a3 & 8) != 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v15 = (a3 >> 8) & 7;
          if ((a3 & 8) != 0)
          {
            goto LABEL_26;
          }
        }
      }
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 36) = v9 & 0xEFFFFFFF;
      if ((a3 & 8) != 0)
      {
        goto LABEL_26;
      }
    }

    if ((*(a1 + 21) & 8) == 0)
    {
LABEL_27:
      if (v16 && (v18 = *(v8 + 1144)) != 0)
      {
        v19 = *(*a1 + 392);
      }

      else
      {
        v19 = *(*a1 + 392);
        v18 = *(v19 + 384);
      }

      extended = dev_read_extended(v18, v7, (*(a1 + 48) + *(*(v19 + 376) + 36) - 1) / *(*(v19 + 376) + 36), *(a1 + 56), v16, a4 != 0, a4, v15, v14);
      v17 = extended;
      if (!a4 && !extended)
      {
        if ((*(a1 + 18) & 0x8002000) != 0)
        {
          return 0;
        }

        else
        {
          v17 = obj_checksum_verify(a1, v21, v22);
          if (v17)
          {
            v23 = *(a1 + 8);
            if (v23)
            {
              v24 = (v23 + 4040);
            }

            else
            {
              v24 = (*(*(*a1 + 392) + 384) + 212);
            }

            log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x paddr 0x%llx error verifying checksum\n", "obj_read", 6614, v24, *(a1 + 112), *(a1 + 16), *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 128));
          }
        }
      }

      return v17;
    }

LABEL_26:
    *(a1 + 120) = a2;
    goto LABEL_27;
  }

  if (v8)
  {
    v13 = (v8 + 4040);
  }

  else
  {
    v13 = (*(*(*a1 + 392) + 384) + 212);
  }

  log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x object missing paddr!\n", "obj_read", 6571, v13, *(a1 + 112), *(a1 + 16), *(a1 + 32), *(a1 + 36), *(a1 + 40));
  v17 = 22;
  if (a4)
  {
    *(a4 + 96) = 22;
    (*a4)(a4);
  }

  return v17;
}

uint64_t obj_init(uint64_t a1, __int16 a2, uint64_t a3, _DWORD *a4, uint64_t a5, unint64_t a6, int a7, int a8)
{
  v12 = *(a1 + 16);
  if ((v12 & 0x80020000000) != 0)
  {
LABEL_2:
    v13 = 0;
    if ((a2 & 0x210) == 0 && a4)
    {
      v26 = 0;
      v14 = obj_descriptor_funcs_for_type(*(a1 + 36), &v26);
      if (v14)
      {
        v13 = v14;
      }

      else
      {
        v19 = *(v26 + 8);
        if (v19)
        {
          v13 = v19(a1, a5);
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

  v17 = *(a1 + 8);
  if (v17)
  {
    v18 = (v17 + 4040);
  }

  else
  {
    v18 = (*(*(*a1 + 392) + 384) + 212);
  }

  log_err("%s:%d: %s wrong object at 0x%llx - wanted oid 0x%llx type 0x%x:0x%x xid %lld - got oid 0x%llx type 0x%x:0x%x xid %lld\n", "obj_init", 3392, v18, *(a1 + 128), a3, a7, a8, a6, *(v15 + 8), *(v15 + 24), *(v15 + 28), v16);
  v13 = nx_corruption_detected_int(*(*a1 + 392));
  if (!a4)
  {
    goto LABEL_27;
  }

LABEL_25:
  if (*a4)
  {
    v20 = *(a1 + 36);
    goto LABEL_28;
  }

LABEL_27:
  v21 = *(a1 + 56);
  v20 = *(v21 + 24) | (*(a1 + 38) << 16);
  LODWORD(v21) = *(v21 + 28);
  *(a1 + 36) = v20;
  *(a1 + 40) = v21;
LABEL_28:
  v12 = *(a1 + 16);
  v22 = v20 & 0x10000000;
  if ((v12 & 0x10000000) != v22)
  {
    v12 = v12 & 0xFFFFFFFFEFFFFFFFLL | v22;
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
    v23 = 0;
  }

  else
  {
    v23 = (a2 & 0x10) == 0;
  }

  v24 = 0xFFFFFE7FFFFFFFF9;
  if (!v23)
  {
    v24 = 0xFFFFFE7FFFFFFFFBLL;
  }

  *(a1 + 16) = v12 & v24;
  if ((v12 & 4) != 0)
  {
    cv_wakeup((*a1 + 1328));
  }

  return v13;
}

uint64_t obj_get_finish(uint64_t a1, uint64_t a2, unint64_t a3, int a4, int *a5, _BYTE *a6)
{
  v6 = *(a1 + 16);
  if ((v6 & 0x10) != 0)
  {
    return 2;
  }

  v8 = a2;
  v10 = *a1;
  v11 = a2 & 0x40 | ~v6 & 0x1000000008;
  v12 = (v6 >> 46) & 1;
  if ((a2 & 0x100000040) != 0)
  {
    LODWORD(v12) = 0;
  }

  if (v11)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    if (*a6 == 1)
    {
      *a6 = 2;
    }

    if (!v11)
    {
      v14 = *(a1 + 16) & 0xFFFFFFEFFFFFFFF7;
      *(a1 + 16) = v14;
      if ((a2 & 0x100000000) != 0)
      {
        *(a1 + 16) = v14 | 0x400000000000;
      }
    }

    if (v12)
    {
      *(a1 + 16) &= ~0x400000000000uLL;
    }
  }

  if (a4 && (obj_reference_release_wait(a1, a5, 0, *a6) & 1) != 0)
  {
    return 35;
  }

  if ((atomic_fetch_and_explicit((a1 + 32), 0xFFFFFFFD, memory_order_relaxed) & 2) != 0)
  {
    cv_wakeup((v10 + 1328));
  }

  if ((*(a1 + 32) & 1) == 0 && (*(a1 + 19) & 0x80) == 0)
  {
    v16 = pthread_rwlock_rdlock((v10 + 128));
    if (v16)
    {
      panic("%s:%d: rdlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 3490, v16);
    }

    if (*(a1 + 88) != 3735928559)
    {
      obj_cache_enqueue_deferred_update(v10, a1);
    }

    v17 = pthread_rwlock_unlock((v10 + 128));
    if (v17)
    {
      panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 3494, v17);
    }
  }

  result = 0;
  if ((v8 & 0xC8000000) == 0 && a3)
  {
    result = 0;
    v18 = *(a1 + 168);
    if (v18 <= a3)
    {
      v18 = a3;
    }

    *(a1 + 168) = v18;
  }

  return result;
}

void obj_destroy_internal(uint64_t a1, char a2)
{
  v4 = *a1;
  v5 = *(a1 + 16);
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
      panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 3080, v10);
    }

    v11 = *(a1 + 88);
    if (v11 == 3735928559)
    {
      goto LABEL_21;
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
        obj_free_list_remove(a1);
LABEL_21:
        v16 = atomic_fetch_and_explicit((a1 + 32), 0xFFFFEFu, memory_order_relaxed);
        if ((v16 & 0x10) != 0)
        {
          *(*(v4 + 896) + 8 * HIBYTE(v16)) = 0;
        }

        v17 = pthread_rwlock_unlock((v4 + 128));
        if (v17)
        {
          panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 3108, v17);
        }

        goto LABEL_25;
      }

      if (*(v4 + 888) == a1)
      {
        *(v4 + 888) = v11;
      }

      v22 = *(a1 + 96);
      if ((v12 & 0x40000000) != 0)
      {
        v24 = (v4 + 848);
        if (v11)
        {
          v24 = (v11 + 96);
        }

        *v24 = v22;
        *v22 = v11;
        --*(v4 + 912);
      }

      else
      {
        v23 = (v4 + 832);
        if (v11)
        {
          v23 = (v11 + 96);
        }

        *v23 = v22;
        *v22 = v11;
        --*(v4 + 908);
      }
    }

    *(a1 + 88) = 3735928559;
    goto LABEL_21;
  }

LABEL_25:
  if ((a2 & 1) != 0 || !obj_destroy_for_obj(a1))
  {

    obj_destroy_complete(a1, 1);
  }

  else
  {
    if (*(v4 + 728))
    {
      v18 = *(v4 + 736);
      v21 = *(v18 + 72);
      v19 = (v18 + 72);
      v20 = v21;
      *(a1 + 72) = v21;
      if (v21)
      {
        *(v20 + 80) = a1 + 72;
      }
    }

    else
    {
      v19 = (v4 + 728);
      *(a1 + 72) = 0;
    }

    *v19 = a1;
    *(a1 + 80) = v19;
    *(v4 + 736) = a1;
  }
}

uint64_t obj_lock(uint64_t a1, char a2)
{
  if (a2)
  {
    if (pthread_rwlock_rdlock((a1 + 176)))
    {
      panic("%s:%d: rdlock == 0 failed %d\n");
    }
  }

  else
  {
    if ((a2 & 2) == 0)
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

uint64_t obj_modify(void *a1, char a2, unint64_t a3)
{
  v6 = *a1;
  v7 = *(*a1 + 392);
  if (a1[1])
  {
    v8 = a1[1];
  }

  else
  {
    v8 = *(*a1 + 392);
  }

  v9 = a1[2];
  if ((v9 & 0x8000000) == 0)
  {
    if (*(v7 + 627))
    {
      return 30;
    }

    if (!xid_is_current_tx(*(*a1 + 392), a3))
    {
      return 22;
    }

    v9 = a1[2];
  }

  if ((v9 & 0x10000000000) != 0)
  {
    if (*(v8 + 36) == 13)
    {
      v15 = (v8 + 4040);
    }

    else
    {
      v15 = (*(v8 + 384) + 212);
    }

    log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x can't modify object before read completes\n", "obj_modify", 5740, v15, a1[14], v9, *(a1 + 8), *(a1 + 9), *(a1 + 10));
    return 22;
  }

  v11 = a1[8];
  if (v11 && v11 == a1[7])
  {
    v12 = *(a1 + 12);
    v13 = _apfs_obj_zalloc(v12, *(v6 + 952));
    obj_cache_stats_update_zalloc((v6 + 976), v9, v13, v12);
    obj_cache_stats_update_zalloc((omm + 136), v9, v13, v12);
    if (!v13)
    {
      return 12;
    }

    for (i = (a1 + 4); (atomic_fetch_or_explicit(i, 8u, memory_order_acquire) & 8) != 0; i = (a1 + 4))
    {
      pthread_mutex_lock((v6 + 328));
      pthread_mutex_unlock((v6 + 328));
    }

    v16 = a1[8];
    if (v16 && (v17 = a1[7], v16 == v17))
    {
      memcpy(v13, v17, v12);
      a1[8] = v13;
      atomic_fetch_and_explicit(a1 + 8, 0xFFFFFFF7, memory_order_release);
    }

    else
    {
      atomic_fetch_and_explicit(a1 + 8, 0xFFFFFFF7, memory_order_release);
      fs_obj_zfree_oc(v13, v12, a1[2], v6);
    }
  }

  v18 = a1[2];
  if ((v18 & 0x80000000) != 0)
  {
    return 0;
  }

  if ((v18 & 0x40000000) == 0)
  {
    if ((v18 & 0xC00000000) != 0 || a1[15] == a3)
    {
      return 0;
    }

    pthread_mutex_lock(v6);
    while (1)
    {
      v19 = a1[2];
      if ((v19 & 0xC00000000) != 0 || a1[15] == a3)
      {
        break;
      }

      v20 = *(*(v7 + 376) + 36);
      v21 = *(a1 + 12);
      v39 = 0;
      if ((v19 & 0x100000000) == 0)
      {
        a1[2] = v19 | 0x100000000;
        v26 = (v20 + v21 - 1) / v20;
        obj_cache_unlock_write(v6);
        v10 = spaceman_reserve(v8, 0x48u, v26, a3, &v39);
        pthread_mutex_lock(v6);
        v27 = a1[2];
        a1[2] = v27 & 0xFFFFFFFCFFFFFFFFLL;
        if (v10)
        {
          if (*(v8 + 36) == 13)
          {
            v28 = (v8 + 4040);
          }

          else
          {
            v28 = (*(v8 + 384) + 212);
          }

          log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error reserving %d blocks of space: %d\n", "obj_modify", 5856, v28, a1[14], v27 & 0xFFFFFFFCFFFFFFFFLL, *(a1 + 8), *(a1 + 9), *(a1 + 10), v26, v10);
        }

        else
        {
          v29 = 0x800000000;
          if ((v39 & 0x10) == 0)
          {
            v29 = 0x400000000;
          }

          a1[2] = v29 & 0xFFFFEFFFFFFFFFFFLL | ((((v39 & 0x10000) >> 16) & 1) << 44) | v27 & 0xFFFFFFFCFFFFFFFFLL;
        }

        obj_cache_unlock_write(v6);
        if ((v27 & 0x200000000) != 0)
        {
          cv_wakeup((v6 + 1328));
        }

        return v10;
      }

      a1[2] = v19 | 0x200000000;
      cv_wait_rw((v6 + 1328), v6, 2, 0);
    }

    goto LABEL_42;
  }

  if (a2 & 2) == 0 || (a1[4])
  {
    return 0;
  }

  pthread_mutex_lock(v6);
  if (a1[4])
  {
LABEL_42:
    obj_cache_unlock_write(v6);
    return 0;
  }

  v22 = a1[19];
  if (v22)
  {
LABEL_41:
    obj_dirty_locked(a1, a3, v22);
    goto LABEL_42;
  }

  if (a1[15] == a3)
  {
    v22 = a1[16];
    goto LABEL_41;
  }

  v24 = (*(*(v7 + 376) + 36) + *(a1 + 12) - 1) / *(*(v7 + 376) + 36);
  atomic_fetch_or_explicit(a1 + 8, 1u, memory_order_relaxed);
  obj_cache_unlock_write(v6);
  if ((*(a1 + 19) & 0x10) != 0)
  {
    v38 = 0;
  }

  else
  {
    if (*(a1 + 18) == 11 || *(a1 + 20) == 11)
    {
      v25 = 2;
    }

    else
    {
      v25 = 1;
    }

    v38 = v25;
  }

  v30 = spaceman_alloc(v8, 72, v24, a3, &v38, 0);
  if (v30)
  {
    v31 = v30;
    if (*(v8 + 36) == 13)
    {
      v32 = (v8 + 4040);
    }

    else
    {
      v32 = (*(v8 + 384) + 212);
    }

    v37 = *(a1 + 8);
    v36 = a1 + 4;
    log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error allocating new location %d\n", "obj_modify", 5914, v32, v36[10], *(v36 - 2), v37, *(v36 + 1), *(v36 + 2), v30);
    pthread_mutex_lock(v6);
    atomic_fetch_and_explicit(v36, 0xFFFFFFFE, memory_order_relaxed);
    obj_cache_unlock_write(v6);
    return v31;
  }

  else
  {
    pthread_mutex_lock(v6);
    v33 = a1[16];
    atomic_fetch_and_explicit(a1 + 8, 0xFFFFFFFE, memory_order_relaxed);
    obj_dirty_locked(a1, a3, v38);
    obj_cache_unlock_write(v6);
    v34 = spaceman_free(v8, 64, v33, v24, a3);
    v10 = v34;
    if (v34)
    {
      if (*(v8 + 36) == 13)
      {
        v35 = (v8 + 4040);
      }

      else
      {
        v35 = (*(v8 + 384) + 212);
      }

      log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error freeing old space @ 0x%llx: %d\n", "obj_modify", 5932, v35, a1[14], a1[2], *(a1 + 8), *(a1 + 9), *(a1 + 10), v33, v34);
    }
  }

  return v10;
}

uint64_t obj_unlock(uint64_t a1, char a2)
{
  if (a2)
  {
    if (pthread_rwlock_unlock((a1 + 176)))
    {
      goto LABEL_7;
    }
  }

  else
  {
    if ((a2 & 2) == 0)
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

uint64_t obj_checkpoint_get(pthread_mutex_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unint64_t a7, uint64_t a8, uint64_t *a9)
{
  v51 = a7;
  v52 = a5;
  v49 = 0;
  if (!a4)
  {
    return 22;
  }

  if (*(a4 + 12) < 0x178u)
  {
    return 22;
  }

  v10 = *(a4 + 8);
  if (!v10)
  {
    return 22;
  }

  v12 = *(*(*a1[6].__opaque + 376) + 36);
  if (v10 % v12)
  {
    return 22;
  }

  LODWORD(v16) = a6;
  v50 = 0;
  v20 = a2 | (*(a4 + 2) << 16);
  pthread_mutex_lock(a1);
  v47 = v20;
  v21 = obj_alloc(a1, *(a4 + 12), *a4, *(a4 + 8), v20, 0, &v50);
  if (v21)
  {
    v13 = v21;
    goto LABEL_51;
  }

  v22 = *(a4 + 4);
  v23 = *a4 | v20 & 0xFFFF0000;
  v24 = v50;
  *(v50 + 36) = v23;
  *(v24 + 40) = v22;
  *(v24 + 112) = a3;
  *(v24 + 120) = a8;
  *(v24 + 16) |= v20 & 0xA000FC00 | (a2 << 34) & 0x80000000000 | 0x2000000002;
  *(v24 + 128) = a5;
  if ((~atomic_fetch_add_explicit((v24 + 24), 1uLL, memory_order_relaxed) & 0xFFFFFF) == 0)
  {
    panic("Reference count overflowed for object %p!\n", v24);
  }

  obj_cache_unlock_write(a1);
  if ((v10 + v12 - 1) / v12 <= a7)
  {
    v35 = obj_read(v24, 0, 0, 0);
    goto LABEL_28;
  }

  v25 = *(v24 + 56);
  v26 = (v10 + v12 - 1) / v12;
  do
  {
    if (v51 >= v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = v51;
    }

    v28 = dev_read(*(*(*v24 + 392) + 384));
    if (v28)
    {
      v13 = v28;
      goto LABEL_36;
    }

    v26 -= v27;
    if (!v26)
    {
      goto LABEL_25;
    }

    v31 = *a1[6].__opaque;
    v32 = *(v31 + 376);
    if (v16 + v27 >= (*(v32 + 108) & 0x7FFFFFFFu))
    {
      v16 = 0;
    }

    else
    {
      v16 = (v16 + v27);
    }

    v25 += v27 * *(v32 + 36);
    v33 = nx_checkpoint_data_block_address(v31, v16, &v52, &v51);
  }

  while (v26 >= 1 && v33 == 0);
  v13 = v33;
  if (v33)
  {
LABEL_36:
    pthread_mutex_lock(a1);
    goto LABEL_49;
  }

LABEL_25:
  if ((*(v24 + 18) & 0x8002000) != 0)
  {
    pthread_mutex_lock(a1);
    goto LABEL_29;
  }

  v35 = obj_checksum_verify(v24, v29, v30);
LABEL_28:
  v13 = v35;
  pthread_mutex_lock(a1);
  if (v13)
  {
LABEL_49:
    v43 = *(v24 + 16);
    v41 = *(v24 + 48);
    v42 = a1;
    goto LABEL_50;
  }

LABEL_29:
  if ((*(v24 + 18) & 0x8002000) == 0)
  {
    v44 = *(v24 + 56);
    if (*(v44 + 24) != *(v24 + 36) || *(v44 + 28) != *(v24 + 40) || *(v44 + 8) != a3 || *(v44 + 16) != a8)
    {
      v13 = nx_corruption_detected_int(*a1[6].__opaque);
      if (v13)
      {
        goto LABEL_49;
      }
    }
  }

  v36 = (*a1[11].__opaque + 8 * (*(v24 + 112) & LODWORD(a1[11].__sig)));
  v37 = *v36;
  *(v24 + 72) = *v36;
  if (v37)
  {
    *(v37 + 80) = v24 + 72;
  }

  *v36 = v24;
  *(v24 + 80) = v36;
  v38 = *(v24 + 16) | 1;
  *(v24 + 88) = 0;
  *(v24 + 16) = v38;
  v39 = *&a1[11].__opaque[40];
  *(v24 + 96) = v39;
  *v39 = v24;
  *&a1[11].__opaque[40] = v24 + 88;
  v40 = obj_descriptor_funcs_for_type(*(v24 + 36), &v49);
  if (v40)
  {
    v13 = v40;
    goto LABEL_34;
  }

  v45 = *(v49 + 8);
  if (v45 && (v46 = v45(v24, 0), v46))
  {
    v13 = v46;
    v38 = *(v24 + 16);
LABEL_34:
    v41 = *(v24 + 48);
    v42 = a1;
    LODWORD(v43) = v38;
LABEL_50:
    obj_cache_ephemeral_adjust(v42, v43, v41, -1);
    atomic_fetch_add_explicit((v24 + 24), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
    obj_destroy_internal(v24, 0);
LABEL_51:
    obj_cache_unlock_write(a1);
  }

  else
  {
    obj_init_wakeup(v24, v47);
    obj_cache_unlock_write(a1);
    v13 = 0;
    *a9 = v24;
  }

  return v13;
}

unint64_t obj_checksum_verify(uint64_t a1, int8x16_t a2, int8x16_t a3)
{
  v4 = *(*a1 + 392);
  v5 = *(a1 + 56);
  v6 = *(a1 + 48);
  result = fletcher64_verify_cksum(v5, (v5 + 1), (v6 - 8), 0, a2, a3);
  if (result)
  {
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = (v8 + 4040);
    }

    else
    {
      v9 = (*(*(*a1 + 392) + 384) + 212);
    }

    log_err("%s:%d: %s failed: cksum 0x%016llx, oid 0x%llx, o_xid 0x%llx, o_type 0x%x, o_subtype 0x%x, size %d\n", "obj_checksum_verify", 7004, v9, *v5, v5[1], v5[2], *(v5 + 6), *(v5 + 7), v6);
    atomic_fetch_add_explicit((*(v4 + 376) + 992), 1uLL, memory_order_relaxed);
    if (*(v4 + 625) == 1)
    {
      v10 = *(v4 + 616);
      if (v10)
      {
        v10(a1);
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

  obj_async_finish(v3, &v7);
  if (v7 == 1)
  {
    obj_cache_unlock_write(v2);
  }

  return *(a1 + 52);
}

uint64_t obj_async_finish(uint64_t result, _BYTE *a2)
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

atomic_ullong *obj_retain(atomic_ullong *result)
{
  if ((~atomic_fetch_add_explicit(result + 3, 1uLL, memory_order_relaxed) & 0xFFFFFF) == 0)
  {
    panic("Reference count overflowed for object %p!\n", result);
  }

  return result;
}

uint64_t obj_retain_ephemeral_no_ref(uint64_t result)
{
  v1 = *(result + 16);
  if ((v1 & 0x80000000) == 0)
  {
    panic("obj %p oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x refs 0x%llx is not ephemeral\n", result, *(result + 112), v1, *(result + 32), *(result + 36), *(result + 40), *(result + 24));
  }

  if ((~atomic_fetch_add_explicit((result + 24), 1uLL, memory_order_relaxed) & 0xFFFFFF) == 0)
  {
    panic("Reference count overflowed for object %p!\n", result);
  }

  return result;
}

uint64_t obj_cache_enqueue_deferred_update(uint64_t result, uint64_t a2)
{
  if ((atomic_fetch_or_explicit((a2 + 32), 0x10u, memory_order_relaxed) & 0x10) == 0)
  {
    v2 = result;
    add_explicit = atomic_fetch_add_explicit((result + 904), 1u, memory_order_relaxed);
    if (add_explicit >= 0x100)
    {
      v7 = a2;
      do
      {
        atomic_fetch_add_explicit((v2 + 904), 0xFFFFFFFF, memory_order_relaxed);
        v4 = pthread_rwlock_unlock((v2 + 128));
        if (v4)
        {
          panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 496, v4);
        }

        v5 = pthread_rwlock_wrlock((v2 + 128));
        if (v5)
        {
          panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 497, v5);
        }

        obj_cache_perform_deferred_updates(v2);
        v6 = pthread_rwlock_unlock((v2 + 128));
        if (v6)
        {
          panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 503, v6);
        }

        result = pthread_rwlock_rdlock((v2 + 128));
        if (result)
        {
          panic("%s:%d: rdlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 506, result);
        }

        add_explicit = atomic_fetch_add_explicit((v2 + 904), 1u, memory_order_relaxed);
      }

      while (add_explicit > 0xFF);
      a2 = v7;
    }

    *(*(v2 + 896) + 8 * add_explicit) = a2;
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
      v14 = omm;
      v15 = *(a1 + 48);
      atomic_fetch_add_explicit((omm + 416), -v15, memory_order_relaxed);
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
      v27 = omm;
      v28 = (omm + 368);
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
      v22 = omm;
      v23 = *(a1 + 48);
      atomic_fetch_add_explicit((omm + 368), -v23, memory_order_relaxed);
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
      v31 = omm;
      v28 = (omm + 416);
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

uint64_t obj_dirty_locked(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *result;
  v7 = *(result + 16);
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
      v28 = *(v5 + 152);
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
      panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 6038, v22);
    }

    v23 = (v5 + 88);
    if (*(v5 + 88) != 3735928559)
    {
      obj_free_list_remove(v5);
    }

    v24 = atomic_fetch_and_explicit((v5 + 32), 0xFFFFEFu, memory_order_relaxed);
    if ((v24 & 0x10) != 0)
    {
      *(*(v6 + 896) + 8 * HIBYTE(v24)) = 0;
    }

    if (*v23 != 3735928559)
    {
      panic("obj %p oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x dirty object on the free list?!\n", v5, *(v5 + 112), *(v5 + 16), *(v5 + 32), *(v5 + 36), *(v5 + 40));
    }

    v25 = *(v5 + 16);
    *(v5 + 88) = 0;
    if ((v25 & 0x40000000) != 0)
    {
      v27 = *(v6 + 848);
      *(v5 + 96) = v27;
      *v27 = v5;
      *(v6 + 848) = v23;
      ++*(v6 + 912);
    }

    else
    {
      v26 = *(v6 + 832);
      *(v5 + 96) = v26;
      *v26 = v5;
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
      obj_dirty_locked(a1, a2, a3);

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
  v4 = *(a3 + 36);
  if (v4 > 0xA)
  {
    if (v4 != 11)
    {
      if (v4 == 13)
      {
        return apfs_checkpoint_traverse(a1, a2, a3, a4);
      }

      return 22;
    }

    return omap_checkpoint_traverse(a1, a2, a3, a4);
  }

  else
  {
    if (v4 != 2)
    {
      if (v4 == 3)
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
      log_warn("%s:%d: %s Unknown object loaded from checkpoint: oid 0x%llx type 0x%x/0x%x\n", "obj_checkpoint_check_for_unknown", 6228, (*(*(a1 + 392) + 384) + 212), *(i + 112), *(i + 36), *(i + 40));
    }
  }

  obj_cache_unlock_write(a1);
}

unint64_t obj_checksum_set(uint64_t a1, int8x16_t a2, int8x16_t a3)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 48);
  atomic_fetch_add_explicit((*(*(*a1 + 392) + 376) + 984), 1uLL, memory_order_relaxed);
  return fletcher64_set_cksum(v3, (v3 + 8), (v4 - 8), 0, a2, a3);
}

uint64_t obj_mem_mgr_register(int64x2_t *a1, int a2)
{
  pthread_mutex_lock((omm + 8));
  v4 = a1[82].i64[1];
  a1[82].i64[1] = v4 | 1;
  if (a2)
  {
    a1[82].i64[1] = v4 | 3;
    v5 = omm;
    v6 = (omm + 80);
    v7 = *(omm + 80);
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
    v5 = omm;
    v8 = omm + 72;
    v9 = *(omm + 72);
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

uint64_t obj_cache_perform_deferred_updates(uint64_t a1)
{
  v15.tv_sec = 0;
  v15.tv_nsec = 0;
  result = clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v15);
  v3 = *(a1 + 904);
  if (v3)
  {
    v4 = 0;
    tv_sec = v15.tv_sec;
    do
    {
      v6 = *(*(a1 + 896) + 8 * v4);
      if (v6)
      {
        add_explicit = atomic_fetch_add_explicit((v6 + 24), 0, memory_order_relaxed);
        v9 = (-(add_explicit >> 44) & 0xFFFFF) != 0 || (add_explicit & 0xFFFFFF) > ((add_explicit >> 24) & 0xFFFFF);
        v10 = v6 + 88;
        if (*(v6 + 88) != 3735928559)
        {
          result = obj_free_list_remove(v6);
        }

        if (!v9 && *(v6 + 36) != 13)
        {
          *(v6 + 160) = tv_sec;
          v11 = *(v6 + 16);
          if ((v11 & 0x400000000000) != 0)
          {
            atomic_fetch_or_explicit((v6 + 32), 0x20u, memory_order_relaxed);
            v13 = *(a1 + 816);
            *(v6 + 88) = 0;
            *(v6 + 96) = v13;
            *v13 = v6;
            *(a1 + 816) = v10;
            ++*(a1 + 924);
          }

          else
          {
            *(v6 + 88) = 0;
            if ((v11 & 0x40000000) != 0)
            {
              v14 = *(a1 + 800);
              *(v6 + 96) = v14;
              *v14 = v6;
              *(a1 + 800) = v10;
              ++*(a1 + 920);
            }

            else
            {
              v12 = *(a1 + 784);
              *(v6 + 96) = v12;
              *v12 = v6;
              *(a1 + 784) = v10;
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

uint64_t obj_free_list_remove(uint64_t result)
{
  v1 = *(result + 88);
  if (v1 != 3735928559)
  {
    v2 = *result;
    if ((*(result + 32) & 0x20) != 0)
    {
      atomic_fetch_and_explicit((result + 32), 0xFFFFFFDF, memory_order_relaxed);
      v5 = *(result + 96);
      v6 = v2 + 204;
      if (v1)
      {
        v6 = (v1 + 96);
      }

      *v6 = v5;
      *v5 = v1;
      --v2[231];
    }

    else
    {
      v3 = *(result + 96);
      v4 = (v1 + 96);
      if ((*(result + 19) & 0x40) != 0)
      {
        if (!v1)
        {
          v4 = v2 + 200;
        }

        *v4 = v3;
        *v3 = v1;
        --v2[230];
      }

      else
      {
        if (!v1)
        {
          v4 = v2 + 196;
        }

        *v4 = v3;
        *v3 = v1;
        --v2[229];
      }
    }

    *(result + 88) = 3735928559;
  }

  return result;
}

void report_obj_alloc(uint64_t a1, const char *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *v15 = 0u;
  v16 = 0u;
  v4 = backtrace(v15, 16);
  v5 = backtrace_symbols(v15, v4);
  v6 = MEMORY[0x277D85DF8];
  v7 = *(a1 + 112);
  fprintf(*MEMORY[0x277D85DF8], "Allocated %s object with OID %lld flags %llx type %x %d from\n", a2, v7, *(a1 + 16), *(a1 + 36), *(a1 + 40));
  if (v4 >= 1)
  {
    v8 = v4;
    v9 = v15;
    v10 = v5;
    do
    {
      v12 = *v9++;
      v11 = v12;
      v13 = *v10++;
      fprintf(*v6, "\t%16p %s\n", v11, v13);
      --v8;
    }

    while (v8);
  }

  free(v5);
  v14 = *MEMORY[0x277D85DE8];
}

void obj_type_free(void *a1, unsigned __int16 a2, int a3)
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
        v3 = 6256;
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

uint64_t obj_destroy_for_obj(uint64_t a1)
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

void obj_destroy_complete(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = obj_destroy_for_obj(a1);
    if (v3)
    {
      v4 = v3(a1);
      if (v4)
      {
        v5 = *(a1 + 8);
        if (v5)
        {
          v6 = (v5 + 4040);
        }

        else
        {
          v6 = (*(*(*a1 + 392) + 384) + 212);
        }

        log_err("%s:%d: %s oid 0x%llx flags 0x%llx type 0x%x/0x%x error destroying: %d\n", "obj_destroy_complete", 3043, v6, *(a1 + 112), *(a1 + 16), *(a1 + 36), *(a1 + 40), v4);
      }
    }
  }

  if (*(a1 + 88) != 3735928559)
  {
    panic("object to be freed is on a list, o %p oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x refs 0x%llx list %p/%p\n", a1, *(a1 + 112), *(a1 + 16), *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 24), *(a1 + 88), *(a1 + 96));
  }

  free_rwlock((a1 + 176));
  fs_obj_zfree_oc(*(a1 + 56), *(a1 + 48), *(a1 + 16), *a1);
  v7 = *(a1 + 36);
  v8 = *(a1 + 44);

  obj_type_free(a1, v7, v8);
}

void obj_get_callback(uint64_t a1, int8x16_t a2, int8x16_t a3)
{
  v4 = 0;
  v5 = *(a1 + 120);
  v20 = 16000;
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
    v11 |= v5;
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
  }

  else
  {
    v18 = obj_checksum_verify(*(a1 + 136), a2, a3);
    pthread_mutex_lock(v8);
    *(v6 + 52) = v18;
    if (v18)
    {
LABEL_9:
      v13 = *(v6 + 16);
      *(v6 + 16) = v13 & 0xFFFFFE7FFFFFFFFBLL;
      if ((v13 & 4) != 0)
      {
        cv_wakeup((*v6 + 1328));
      }

      goto LABEL_16;
    }
  }

  if (obj_init(v6, v10, *(v6 + 112), v7, v4, *(v6 + 120), v11, v12) || (v19 = 2, finish = obj_get_finish(v6, v10, *(v6 + 120), 0, &v20, &v19), (*(v6 + 52) = finish) != 0))
  {
LABEL_16:
    *(v6 + 16) = *(v6 + 16) & 0xFFFFFFEFFFFFFFF7 | 8;
  }

  v15 = *(a1 + 104);
  v16 = *(a1 + 112);
  v17 = &v8[21].__opaque[32];
  if (v15)
  {
    v17 = (v15 + 112);
  }

  *v17 = v16;
  *v16 = v15;
  obj_cache_unlock_write(v8);
  obj_release(v6);
  if (*(a1 + 152) == 1)
  {
    _apfs_free(*(a1 + 160), *(v4 + 2));
  }

  _apfs_free(a1, 168);
  if (atomic_fetch_add_explicit(&v8[14].__opaque[40], 0xFFFFFFFF, memory_order_relaxed) == 1 && atomic_fetch_add_explicit(&v8[14].__opaque[36], 0, memory_order_relaxed))
  {
    pthread_mutex_lock(v8);
    cv_wakeup(&v8[20].__opaque[40]);

    obj_cache_unlock_write(v8);
  }
}

atomic_ullong *obj_cache_stats_update_zalloc(atomic_ullong *result, int a2, uint64_t a3, unint64_t a4)
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

uint64_t apfs_update_dev_name(uint64_t result)
{
  if (result)
  {
    v1 = *(*(result + 392) + 384) + 212;
    v2 = (*(*(result + 376) + 36) + 1);
    if (*(result + 504))
    {
      v4 = (*(*(result + 376) + 36) + 1);
      v5 = *(result + 440);
      return snprintf((result + 4040), 0x20uLL, "%ss%d:%lld");
    }

    else
    {
      v3 = *(*(result + 392) + 384) + 212;
      return snprintf((result + 4040), 0x20uLL, "%ss%d");
    }
  }

  return result;
}

uint64_t apfs_init_phys(uint64_t a1)
{
  *(a1 + 32) = 1112756289;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 116) = 0x4000000200000002;
  *(a1 + 124) = 1073741826;
  *(a1 + 1040) = vdup_n_s32(0x40000002u);
  *(a1 + 1068) = 2;
  *(a1 + 1104) = 2;
  return 0;
}

uint64_t apfs_init(uint64_t a1)
{
  v2 = *(a1 + 56);
  locked = apfs_sanity_check_tree_type(a1, *(v2 + 116));
  if (locked)
  {
    return locked;
  }

  locked = apfs_sanity_check_tree_type(a1, *(v2 + 120));
  if (locked)
  {
    return locked;
  }

  locked = apfs_sanity_check_tree_type(a1, *(v2 + 124));
  if (locked)
  {
    return locked;
  }

  v6 = *(v2 + 56);
  if ((v6 & 0x20) != 0)
  {
    locked = apfs_sanity_check_tree_type(a1, *(v2 + 1040));
    if (locked)
    {
      return locked;
    }

    v6 = *(v2 + 56);
  }

  if ((v6 & 0x40) != 0)
  {
    locked = apfs_sanity_check_tree_type(a1, *(v2 + 1044));
    if (locked)
    {
      return locked;
    }
  }

  locked = apfs_locked_ids_init(a1 + 3296, "apfs-stream-id-lock", 0x100u);
  if (locked)
  {
    return locked;
  }

  v7 = apfs_locked_ids_init(a1 + 3432, "apfs-dir-stats-id-lock", 0x10u);
  if (v7)
  {
    v4 = v7;
LABEL_16:
    apfs_locked_ids_destroy(a1 + 3296);
    return v4;
  }

  v8 = initialize_phys_range_lock_state(a1 + 3648, 0x20u);
  if (v8)
  {
    v4 = v8;
    apfs_locked_ids_destroy(a1 + 3432);
    goto LABEL_16;
  }

  *(a1 + 376) = v2;
  *(a1 + 392) = *(*a1 + 392);
  new_lock((a1 + 1216));
  new_lock((a1 + 1280));
  new_lock((a1 + 1344));
  new_lock((a1 + 1408));
  new_lock((a1 + 1472));
  new_lock((a1 + 1664));
  new_lock((a1 + 1536));
  new_lock((a1 + 1600));
  new_lock((a1 + 1152));
  new_lock((a1 + 3232));
  new_lock((a1 + 1728));
  new_lock((a1 + 3952));
  new_rwlock((a1 + 1792));
  new_rwlock((a1 + 3008));
  new_rwlock((a1 + 1992));
  rolling_stats_init(a1 + 3832, 0xE10u, 0x18u);
  apfs_update_dev_name(a1);
  *(a1 + 600) = 0;
  if ((*(*(a1 + 376) + 57) & 1) != 0 && (fs_is_fully_unencrypted(a1) & 1) == 0)
  {
    *(a1 + 696) = 1;
  }

  new_lock((a1 + 4072));
  new_cv((a1 + 4136));
  return 0;
}

uint64_t apfs_destroy(uint64_t a1)
{
  v2 = *(a1 + 3632);
  if (v2 && !*(*a1 + 940))
  {
    obj_release(v2);
  }

  apfs_locked_ids_destroy(a1 + 3432);
  apfs_locked_ids_destroy(a1 + 3296);
  rolling_stats_destroy(a1 + 3832);
  free_rwlock((a1 + 2808));
  free_rwlock((a1 + 2600));
  free_rwlock((a1 + 2400));
  free_rwlock((a1 + 2192));
  free_rwlock((a1 + 1992));
  free_rwlock((a1 + 3008));
  free_rwlock((a1 + 1792));
  free_lock((a1 + 3232));
  free_lock((a1 + 1152));
  free_lock((a1 + 1216));
  free_lock((a1 + 1536));
  free_lock((a1 + 1600));
  free_lock((a1 + 1408));
  free_lock((a1 + 1472));
  free_lock((a1 + 1664));
  free_lock((a1 + 1280));
  free_lock((a1 + 1344));
  free_lock((a1 + 1728));
  free_lock((a1 + 3952));
  release_phys_range_lock_state(a1 + 3648);
  free_lock((a1 + 4072));
  free_cv((a1 + 4136));
  return 0;
}

uint64_t apfs_reap(uint64_t a1, char a2, uint64_t a3, unsigned int a4, unint64_t a5)
{
  v24 = 0;
  if (a4 < 0x14)
  {
    return 28;
  }

  v8 = *(a3 + 16);
  if (v8 >= 5)
  {
    log_err("%s:%d: %s bogus phase, %u\n", "apfs_reap", 637, (a1 + 4040), v8);
    return 5;
  }

  v11 = obj_modify(a1, 0, a5);
  if (v11)
  {
    v5 = v11;
    log_err("%s:%d: %s failed to modify the apfs_t before reaping (error %d).\n", "apfs_reap", 643, (a1 + 4040), v11);
    return v5;
  }

  if (a2)
  {
    spaceman_fs_bounds_clear(*(a1 + 392), a1, a5);
    obj_delete_and_free(a1, a5);
    return 0;
  }

  v5 = 0;
  v12 = *(a3 + 16);
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      if (v12 != 3)
      {
        return v5;
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (v12)
    {
      if (v12 != 1)
      {
        return v5;
      }
    }

    else
    {
      *(a3 + 16) = 1;
    }

    v13 = apfs_reap_snapshots(a1, a5, &v24, a3);
    if (v13)
    {
      return v13;
    }

    *a3 = 0;
    *(a3 + 16) = 2;
  }

  v13 = apfs_reap_extentref_blocks(a1, a5, *(*(a1 + 376) + 144), &v24, a3);
  if (v13)
  {
    return v13;
  }

  v14 = *(a1 + 376);
  v15 = *(v14 + 224);
  if (*(v14 + 232) != v15)
  {
    log_err("%s:%d: %s freed != alloced (%llu freed, %llu alloced)\n", "apfs_reap", 677, (a1 + 4040), *(v14 + 232), v15);
    v14 = *(a1 + 376);
  }

  v16 = *(v14 + 56);
  if ((v16 & 0x20) != 0)
  {
    v17 = supplemental_tree_destroy(a1, *(v14 + 1040), 5, a5, 0, 0);
    if (v17)
    {
      v5 = v17;
      strerror(v17);
      log_err("%s:%d: %s supplemental_tree_destroy(fext_tree) failed: %d (%s)\n");
      return v5;
    }

    v14 = *(a1 + 376);
    v16 = *(v14 + 56);
  }

  if ((v16 & 0x40) != 0)
  {
    v18 = supplemental_tree_destroy(a1, *(v14 + 1044), 6, a5, 0, 0);
    if (v18)
    {
      v5 = v18;
      strerror(v18);
      log_err("%s:%d: %s supplemental_tree_destroy(pfkur_tree) failed: %d (%s)\n");
      return v5;
    }
  }

  *(a3 + 16) = 3;
LABEL_31:
  obj_cache_remove_new_fs_objects(*(*(a1 + 392) + 392), a1);
  v19 = *(a1 + 3568);
  if (v19)
  {
    obj_release(v19);
    *(a1 + 3568) = 0;
  }

  v20 = *(a1 + 3616);
  if (v20)
  {
    obj_release(v20);
    *(a1 + 3616) = 0;
  }

  v21 = *(a1 + 3576);
  if (v21)
  {
    obj_release(v21);
    *(a1 + 3576) = 0;
  }

  v5 = omap_destroy(a1, *(*(a1 + 376) + 128), a5, 0);
  if (v5)
  {
    log_err("%s:%d: %s omap_destroy returned %d!\n");
  }

  else
  {
    v22 = *(a1 + 376);
    *(v22 + 976) = 0;
    *(v22 + 1032) = 0;
    *(v22 + 1048) = 0;
    *(v22 + 1096) = 0;
    *(v22 + 1112) = 0;
    *(v22 + 128) = 0u;
    *(v22 + 144) = 0u;
    *(v22 + 1072) = 0u;
    fs_sb_dirty(a1, a5);
    *(a3 + 16) = 4;
  }

  return v5;
}

uint64_t apfs_checkpoint_traverse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a3 + 20) & 0x40) != 0)
  {
    return 0;
  }

  v15 = 0;
  v5 = *(*(a3 + 376) + 128);
  if (!v5)
  {
    goto LABEL_13;
  }

  v9 = obj_get(*(a1 + 392), 0x40000000, v5, &om_desc, 0, a3, 0, 0, &v15);
  if (v9)
  {
    v10 = v9;
    v11 = *(a1 + 400);
    if (!v11 || !*(v11 + 76))
    {
      log_err("%s:%d: %s failed to get omap %lld: %d\n");
    }

    return v10;
  }

  v10 = omap_checkpoint_traverse(a3, a2, v15, a4);
  v12 = v15[2];
  obj_release(v15);
  if (!v10)
  {
    if ((v12 & 0x4000000000) == 0)
    {
      return 0;
    }

LABEL_13:
    obj_set_skip_checkpoint_traverse(a3, 1);
    return 0;
  }

  v13 = *(a1 + 400);
  if (!v13 || !*(v13 + 76))
  {
    log_err("%s:%d: %s omap checkpoint traverse (op %d) failed: %d\n");
  }

  return v10;
}

uint64_t apfs_get_fsroot_tree_ext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a1;
  }

  v10 = *(v9 + 376);
  v11 = *(v10 + 116);
  v12 = *(v10 + 136);
  v15[4] = xmmword_284F57E20;
  v15[5] = unk_284F57E30;
  v15[2] = xmmword_284F57E00;
  v15[3] = unk_284F57E10;
  v15[0] = xmmword_284F57DE0;
  v15[1] = unk_284F57DF0;
  if ((*(v10 + 56) & 0x20) == 0 || (result = authapfs_get_hash_args(a1, v15), !result))
  {
    if (v11 == 2)
    {
      result = btree_get_extended(a1, v11 & 0xFFFF0000, v12, a3, a4 != 0, v15, a4, a5);
    }

    else
    {
      result = 22;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t apfs_has_secondary_fsroot(uint64_t a1)
{
  if (*(*(a1 + 376) + 57))
  {
    return fs_is_fully_unencrypted(a1) ^ 1;
  }

  else
  {
    return 0;
  }
}

uint64_t apfs_get_secondary_fsroot_tree_ext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  if ((*(*(a1 + 376) + 57) & 1) == 0)
  {
    return 45;
  }

  v10 = *(v5 + 376);
  v11 = *(v10 + 1104);
  v12 = *(v10 + 1096);
  if (fs_is_fully_unencrypted(a1))
  {
    return 45;
  }

  if (v11 != 2)
  {
    return 22;
  }

  return btree_get_extended(a1, v11 & 0xFFFF0000, v12, a3, a4 != 0, apfs_get_secondary_fsroot_tree_ext_BTARGS, a4, a5);
}

uint64_t apfs_get_extentref_tree(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(*(a1 + 376) + 120) == 2)
  {
    return btree_get_extended(a1, *(*(a1 + 376) + 120) & 0xFFFF0000, a2, 0, a3 != 0, &apfs_get_extentref_tree_BTARGS, a3, a4);
  }

  else
  {
    return 22;
  }
}

uint64_t apfs_get_snap_meta_tree(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 376);
  if (*(v3 + 124) == 2)
  {
    return btree_get_extended(a1, *(v3 + 124) & 0xFFFF0000, *(v3 + 152), 0, a2 != 0, &apfs_get_snap_meta_tree_BTARGS, a2, a3);
  }

  else
  {
    return 22;
  }
}

uint64_t apfs_get_doc_id_tree_ext(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a1;
  }

  v7 = *(v6 + 376);
  if (*(v7 + 1068) != 2)
  {
    return 22;
  }

  v8 = 1072;
  if (a2)
  {
    v8 = 1080;
  }

  return btree_get_extended(a1, *(v7 + 1068) & 0xFFFF0000, *(v7 + v8), a4, a5 != 0, apfs_get_doc_id_tree_by_oid_BTARGS, a5, a6);
}

uint64_t apfs_doc_id_index_supported(uint64_t a1)
{
  v1 = *(*(a1 + 376) + 964);
  result = 1;
  if (v1 > 63)
  {
    if (v1 != 64 && v1 != 576)
    {
      return 0;
    }
  }

  else
  {
    if (v1)
    {
      v3 = v1 == 2;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t apfs_locked_ids_init(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(a1 + 120) = a3;
  v4 = _apfs_calloc_typed(a3, 0x10uLL, 0x10200405730B0C9uLL);
  *(a1 + 112) = v4;
  if (!v4)
  {
    return 12;
  }

  new_lock(a1);
  new_cv((a1 + 64));
  return 0;
}

void apfs_locked_ids_destroy(uint64_t a1)
{
  free_cv((a1 + 64));
  free_lock(a1);
  v2 = *(a1 + 112);
  v3 = 16 * *(a1 + 120);

  _apfs_free(v2, v3);
}

uint64_t apfs_sanity_check_tree_type(uint64_t a1, int a2)
{
  if ((a2 | 0x40000000u) >> 30 == 1 && a2 == 2)
  {
    return 0;
  }

  else
  {
    return nx_corruption_detected_int(*(*a1 + 392));
  }
}

uint64_t apfs_reap_snapshots(uint64_t a1, unint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v17 = 0;
  v18 = 0;
  v8 = a4[1];
  if (v8)
  {
    while (1)
    {
LABEL_2:
      v9 = fs_lookup_snapshot_metadata_by_xid(a1, v8, &v18);
      if (v9)
      {
        v14 = v9;
        log_err("%s:%d: %s Couldn't find snapshot metadata for xid %llu\n");
        return v14;
      }

      v10 = v18;
      v11 = *(v18 + 2);
      if (v11)
      {
        v12 = apfs_reap_extentref_blocks(a1, a2, v11, a3, a4);
        if (v12)
        {
          return v12;
        }

        v10 = v18;
      }

      fs_delete_supplemental_tree(a1, 5, *(v10 + 3), a2, 0);
      fs_delete_supplemental_tree(a1, 6, *(v18 + 3), a2, 0);
      fs_delete_clone_superblock(a1, *(v18 + 3), a2);
      next_snapshot_xid = omap_find_next_snapshot_xid(a1, a4[1], &v17);
      if (next_snapshot_xid)
      {
        break;
      }

      v8 = v17;
      *a4 = 0;
      a4[1] = v8;
    }

    v14 = next_snapshot_xid;
    if (next_snapshot_xid == 2)
    {
      goto LABEL_13;
    }

    log_err("%s:%d: %s lookup_next_snapshot() returned %d\n", "apfs_reap_snapshots", 615, (a1 + 4040), next_snapshot_xid);
  }

  else
  {
    v15 = omap_find_next_snapshot_xid(a1, 0, &v17);
    if (!v15)
    {
      v8 = v17;
      a4[1] = v17;
      goto LABEL_2;
    }

    v14 = v15;
    if (v15 == 2)
    {
LABEL_13:
      fs_delete_snapshot_metadata_tree(a1, a2, 0);
      return 0;
    }

    else
    {
      log_err("%s:%d: %s Hit %d looking up first snapshot\n");
    }
  }

  return v14;
}

uint64_t apfs_reap_extentref_blocks(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5)
{
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v23 = 0;
  v24 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  extentref_tree = apfs_get_extentref_tree(a1, a3, 0, &v24);
  if (extentref_tree)
  {
    v11 = extentref_tree;
    log_err("%s:%d: apfs_get_extentref_tree(oid=%llu) returned %d\n", "apfs_reap_extentref_blocks", 510, a3, extentref_tree);
  }

  else
  {
    v23 = *a5 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
    bt_iterator_init_with_hint(v25, v24, 0, 4, &v23, 8, 8u, &v20, 0x14u, 0);
    if ((v12 & 0xFFFFFFFD) != 0)
    {
      v11 = v12;
      log_err("%s:%d: %s tree_iter_init() returned %d\n", "apfs_reap_extentref_blocks", 520, (a1 + 4040), v12);
    }

    else
    {
      while (1)
      {
        if (bt_iterator_ended(v25))
        {
          btree_delete(v24, a2, 0);
          v11 = 0;
          goto LABEL_5;
        }

        v14 = v23 & 0xFFFFFFFFFFFFFFFLL;
        *a5 = v23 & 0xFFFFFFFFFFFFFFFLL;
        if (v20 >> 60 == 1 && v21 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v16 = v20 & 0xFFFFFFFFFFFFFFFLL;
          if ((v20 & 0xFFFFFFFFFFFFFFFLL) != 0)
          {
            if (apfs_free_data_blocks(a1, a2, v14, v20 & 0xFFFFFFFFFFFFFFFLL))
            {
              log_err("%s:%d: %s extent at lba %llu len %llu couldn't be freed: %d\n");
            }
          }

          else
          {
            log_err("%s:%d: %s found bogus 0-length extent at lba %llu, ignoring\n");
          }

          v17 = *a4 + v16;
          *a4 = v17;
          if (v17 > 0x4000)
          {
            break;
          }
        }

        v18 = bt_iterator_next(v25);
        if ((v18 & 0xFFFFFFFD) != 0)
        {
          v19 = v18;
          log_err("%s:%d: %s iter_next returned %d\n", "apfs_reap_extentref_blocks", 552, (a1 + 4040), v18);
          v11 = v19;
          goto LABEL_5;
        }
      }

      v11 = 36;
    }
  }

LABEL_5:
  if (v24)
  {
    obj_release(v24);
  }

  return v11;
}

void *_apfs_obj_zalloc(size_t size, uint64_t a2)
{
  if (size == 0x2000)
  {
    v2 = qword_27E2BAA70;
    goto LABEL_5;
  }

  v2 = size;
  if (size == 4096)
  {
    v2 = *(&apfs_zone_infos[1] + ((a2 << 63 >> 63) & 0x78));
LABEL_5:
    v3 = v2;
    v4 = 3442331901;
    goto LABEL_7;
  }

  v3 = size;
  v4 = 889960617;
LABEL_7:
  result = malloc_type_calloc(1uLL, v3, v4);
  if (result)
  {
    atomic_fetch_add_explicit(&apfs_allocated_mem_total, v2, memory_order_relaxed);
  }

  return result;
}

void *_apfs_zalloc(unsigned int a1)
{
  v1 = apfs_zone_infos[3 * a1 + 1];
  result = malloc_type_calloc(1uLL, v1, 0xCD2DD0FDuLL);
  if (result)
  {
    atomic_fetch_add_explicit(&apfs_allocated_mem_total, v1, memory_order_relaxed);
  }

  return result;
}

void *_apfs_calloc_typed(size_t a1, size_t a2, malloc_type_id_t a3)
{
  result = malloc_type_calloc(a1, a2, a3);
  if (result)
  {
    atomic_fetch_add_explicit(&apfs_allocated_mem_total, a2 * a1, memory_order_relaxed);
  }

  return result;
}

void _apfs_obj_zfree(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x2000)
  {
    if (!a1)
    {
      return;
    }

    v4 = &qword_27E2BAA70;
  }

  else
  {
    v3 = a2;
    if (a2 != 4096)
    {
      if (!a1)
      {
        return;
      }

      goto LABEL_9;
    }

    if (!a1)
    {
      return;
    }

    v4 = (&apfs_zone_infos + ((a3 << 63 >> 63) & 0x78) + 8);
  }

  v3 = *v4;
LABEL_9:
  free(a1);
  atomic_fetch_add_explicit(&apfs_allocated_mem_total, -v3, memory_order_relaxed);
}

void _apfs_zfree(void *a1, unsigned int a2)
{
  if (a1)
  {
    v2 = apfs_zone_infos[3 * a2 + 1];
    free(a1);
    atomic_fetch_add_explicit(&apfs_allocated_mem_total, -v2, memory_order_relaxed);
  }
}

void _apfs_free(void *a1, uint64_t a2)
{
  if (a1)
  {
    free(a1);
    atomic_fetch_add_explicit(&apfs_allocated_mem_total, -a2, memory_order_relaxed);
  }
}

void *_apfs_malloc_typed(size_t a1, malloc_type_id_t a2)
{
  result = malloc_type_malloc(a1, a2);
  if (result)
  {
    atomic_fetch_add_explicit(&apfs_allocated_mem_total, a1, memory_order_relaxed);
  }

  return result;
}

void *_apfs_calloc(size_t a1, size_t a2)
{
  result = malloc_type_calloc(a1, a2, 0x7012DB5EuLL);
  if (result)
  {
    atomic_fetch_add_explicit(&apfs_allocated_mem_total, a2 * a1, memory_order_relaxed);
  }

  return result;
}

uint64_t nx_is_panic_on_corruption_enabled(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 635);
  }

  else
  {
    v1 = apfs_corruption_panics & 1;
  }

  return v1 & 1;
}

uint64_t nx_calculate_metadata_parameters(unsigned int a1, unint64_t a2, unsigned int a3, uint64_t a4)
{
  *(a4 + 176) = 0u;
  *(a4 + 192) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  v4 = 22;
  *a4 = 0u;
  if (a1 - 65537 < 0xFFFF0FFF || !a2)
  {
    return v4;
  }

  v5 = 8 * a1;
  v6 = a1 - 40;
  v7 = v6 >> 5;
  *(a4 + 88) = v6 >> 5;
  *(a4 + 96) = v6 >> 3;
  *(a4 + 8) = a1;
  *(a4 + 16) = a2;
  v8 = (a2 + v5 - 1) / v5;
  v9 = (v8 + (v6 >> 5) - 1) / (v6 >> 5);
  *(a4 + 24) = v8;
  *(a4 + 32) = v9;
  if ((v9 + (v6 >> 3) - 1) / (v6 >> 3) == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = (v9 + (v6 >> 3) - 1) / (v6 >> 3);
  }

  *(a4 + 40) = v10;
  *(a4 + 48) = 0;
  v11 = (v5 - 1) / v5;
  v12 = (v7 + v11 - 1) / (v6 >> 5);
  *(a4 + 56) = v11;
  *(a4 + 64) = v12;
  v13 = ((v6 >> 3) + (v7 + v11 - 1) / (v6 >> 5) - 1) / (v6 >> 3);
  if (v13 == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = ((v6 >> 3) + (v7 + v11 - 1) / (v6 >> 5) - 1) / (v6 >> 3);
  }

  *(a4 + 72) = v14;
  *(a4 + 80) = v5;
  v15 = 3 * (v9 + v8 + v11 + v12 + v14 + v10);
  *(a4 + 104) = v15;
  v16 = ((((v15 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8) + a1 - 1) / a1;
  if (HIDWORD(v16))
  {
    return 27;
  }

  *(a4 + 112) = v16;
  *(a4 + 120) = 16;
  if (v16 < 0x1000)
  {
    v17 = 16 * v16;
    goto LABEL_14;
  }

  if (v16 >> 13)
  {
    return 27;
  }

  v17 = 65534;
LABEL_14:
  *(a4 + 128) = v17;
  v18 = (2 * v17 + 6) & 0x7FFFFFFFFFFFFFF8;
  if (v10)
  {
    v9 = (v9 + (v6 >> 3) - 1) / (v6 >> 3);
  }

  if (v14)
  {
    v19 = v13;
  }

  else
  {
    v19 = v12;
  }

  v20 = ((2 * v16 + 6) & 0x3FFFFFFF8) + 8 * (v19 + v9 + v16) + v18 + 2520;
  if (v20 > 0x100000)
  {
    return 27;
  }

  if (v20 % a1)
  {
    v20 = (v20 + a1 - 1) / a1 * a1;
  }

  *(a4 + 136) = v20;
  v22 = (a1 - 96 - (((((18725 * ((a1 - 96) >> 2)) >> 15) & 0x3FFC) + 28) & 0x7FE0)) / 0x30uLL;
  v23 = 0x200000 / a1;
  v24 = 15;
  if (a2 < 0x100000)
  {
    v24 = 31;
  }

  v25 = 4;
  if (a2 < 0x100000)
  {
    v25 = 5;
  }

  if (a2 < 0x40000)
  {
    v24 = 63;
    v25 = 6;
  }

  v26 = (v22 - 1 + ((v24 + a2) >> v25)) / v22;
  if (v26 >= v23)
  {
    v26 = 0x200000 / a1;
  }

  if (v26 == 2)
  {
    v26 = 3;
  }

  *(a4 + 152) = v26;
  *(a4 + 160) = 0;
  if (a2 >> 18)
  {
    if (a2 >> 20)
    {
      v27 = (v15 + 15) >> 4;
    }

    else
    {
      v27 = (v15 + 31) >> 5;
    }
  }

  else
  {
    v27 = (v15 + 63) >> 6;
  }

  v28 = (v22 - 1 + v27) / v22;
  if (v28 >= v23)
  {
    v28 = 0x200000 / a1;
  }

  if (v28 == 2)
  {
    v28 = 3;
  }

  *(a4 + 144) = v28;
  v29 = v20 / a1;
  v30 = v29 - 1;
  if (!v29)
  {
    v30 = 0;
  }

  v31 = 8;
  if (v26 < 8)
  {
    v31 = v26;
  }

  *(a4 + 192) = 4;
  *(a4 + 200) = v31;
  if (a3)
  {
    if (a3 > 0x64)
    {
      return 22;
    }
  }

  else
  {
    v32 = a1 * a2;
    if ((v32 & 0x1FFFFFFF) != 0)
    {
      v33 = (v32 >> 29) + 1;
    }

    else
    {
      v33 = v32 >> 29;
    }

    if (v33 >= 0x64)
    {
      a3 = 100;
    }

    else
    {
      a3 = v33;
    }
  }

  *(a4 + 184) = a3;
  v34 = v26 + v29 + v28 + v30 + 8 * v31 * a3 + 2;
  v35 = ((a1 - 40) / 0x28u + v34 - 1) / ((a1 - 40) / 0x28u);
  *(a4 + 168) = 4 * v35 + 4;
  v4 = 27;
  if (v35 <= 0x3FFFFFFE)
  {
    *(a4 + 176) = 4 * v34;
    if (v34 >> 30)
    {
      return 27;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t nx_get_evict_mapping_tree(uint64_t a1, unsigned int a2, uint64_t a3, int a4, int a5, uint64_t *a6)
{
  v20 = *MEMORY[0x277D85DE8];
  *&v14 = 0;
  v15 = 0u;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v13 = evict_mapping_key_compare;
  DWORD2(v14) = 33;
  HIDWORD(v14) = a4;
  result = btree_get_extended(a1, a2, a3, 0, 0, &v13, 0, a6);
  if (result == 92)
  {
    if (a5)
    {
      v14 = 0u;
      v15 = 0u;
      v19 = 0;
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
      v13 = evict_mapping_key_compare;
      HIDWORD(v14) = a4;
      result = btree_get_extended(a1, 0, a3, 0, 0, &v13, 0, a6);
      if (!result)
      {
        log_debug("%s:%d: %s found mapping tree with old subtype\n", "nx_get_evict_mapping_tree", 526, (*(a1 + 384) + 212));
        result = 0;
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t nx_init_phys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 22;
  }

  v3 = *(a3 + 4);
  *(a1 + 32) = 1112758350;
  *(a1 + 36) = v3;
  *(a1 + 1264) = 0;
  *(a1 + 40) = *(a3 + 8);
  *(a1 + 56) = xmmword_23D299000;
  v4 = *(a3 + 32);
  *(a1 + 88) = 1024;
  *(a1 + 96) = v4;
  uuid_copy((a1 + 72), (a3 + 64));
  return 0;
}

uint64_t nx_init(uint64_t a1, unsigned int *a2)
{
  if (!a2)
  {
    return 22;
  }

  v3 = *(a1 + 56);
  *(a1 + 660) = -1;
  v4 = *a2;
  *(a1 + 664) = *a2;
  *(a1 + 668) = *(v3 + 36) / v4;
  v5 = *(a2 + 3);
  *(a1 + 376) = v3;
  *(a1 + 384) = v5;
  LODWORD(v5) = a2[11];
  *(a1 + 627) = a2[10] != 0;
  *(a1 + 628) = v5 != 0;
  LODWORD(v5) = a2[13];
  *(a1 + 629) = a2[12] != 0;
  *(a1 + 631) = v5 != 0;
  LODWORD(v5) = a2[15];
  *(a1 + 632) = a2[14] != 0;
  *(a1 + 633) = v5 != 0;
  *(a1 + 392) = *a1;
  new_lock((a1 + 672));
  new_lock((a1 + 864));
  *(a1 + 928) = 0;
  new_lock((a1 + 1120));
  new_lock((a1 + 752));
  *(a1 + 828) = 0;
  *(a1 + 816) = 0;
  *(a1 + 824) = 0;
  new_lock((a1 + 504));
  new_cv((a1 + 568));
  return 0;
}

uint64_t nx_destroy(uint64_t a1)
{
  v2 = *(a1 + 736);
  if (v2 && !*(*a1 + 940))
  {
    obj_release(v2);
  }

  free_lock((a1 + 864));
  free_lock((a1 + 672));
  free_lock((a1 + 1120));
  free_lock((a1 + 752));
  free_lock((a1 + 504));
  free_cv((a1 + 568));
  return 0;
}

uint64_t nx_checkpoint_traverse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v51 = 0;
  v6 = spaceman_get(a1, &v54);
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 400);
    if (!v8 || !*(v8 + 76))
    {
      v9 = *(a1 + 384) + 212;
      v10 = *(*(a1 + 376) + 152);
      LODWORD(v11) = 739;
      log_err("%s:%d: %s failed to get spaceman oid %lld for checkpoint %s traverse: %d\n");
      goto LABEL_9;
    }

    return v7;
  }

  v7 = spaceman_checkpoint_traverse(a1, a2, v54, a3);
  obj_release(v54);
  if (v7)
  {
    v12 = *(a1 + 400);
    if (!v12 || !*(v12 + 76))
    {
      v13 = *(a1 + 384) + 212;
      LODWORD(v11) = 746;
      log_err("%s:%d: %s spaceman checkpoint %s traverse failed: %d\n");
      goto LABEL_9;
    }

    return v7;
  }

  v16 = *(a1 + 376);
  v17 = *(v16 + 160);
  if (v17 && !*(a1 + 744))
  {
    v21 = obj_get(*(a1 + 392), 0x40000000, v17, &om_desc, 0, 0, 0, 0, &v52);
    if (v21)
    {
      v7 = v21;
      v22 = *(a1 + 400);
      if (!v22 || !*(v22 + 76))
      {
        v23 = *(a1 + 384) + 212;
        LODWORD(v11) = 756;
        log_err("%s:%d: %s failed to get omap for checkpoint %s traverse: %d\n");
        goto LABEL_9;
      }

      return v7;
    }

    v7 = omap_checkpoint_traverse(a1, a2, v52, a3);
    obj_release(v52);
    if (v7)
    {
      v26 = *(a1 + 400);
      if (!v26 || !*(v26 + 76))
      {
        v27 = *(a1 + 384) + 212;
        LODWORD(v11) = 762;
        log_err("%s:%d: %s omap checkpoint %s traverse failed: %d\n");
        goto LABEL_9;
      }

      return v7;
    }

    v16 = *(a1 + 376);
  }

  if (*(v16 + 168))
  {
    v18 = nx_reaper_get(a1, &v53);
    if (v18)
    {
      v7 = v18;
      v19 = *(a1 + 400);
      if (!v19 || !*(v19 + 76))
      {
        v20 = *(a1 + 384) + 212;
        LODWORD(v11) = 775;
        log_err("%s:%d: %s failed to get reaper for checkpoint %s traverse: %d\n");
        goto LABEL_9;
      }

      return v7;
    }

    v7 = nx_reaper_checkpoint_traverse(a1, a2, v53, a3);
    obj_release(v53);
    if (v7)
    {
      v24 = *(a1 + 400);
      if (!v24 || !*(v24 + 76))
      {
        v25 = *(a1 + 384) + 212;
        LODWORD(v11) = 782;
        log_err("%s:%d: %s nx reaper checkpoint %s traverse failed: %d\n");
        goto LABEL_9;
      }

      return v7;
    }

    v16 = *(a1 + 376);
  }

  if (*(v16 + 180))
  {
    for (i = 0; i < *(v16 + 180); ++i)
    {
      v29 = *(v16 + 8 * i + 184);
      if (v29)
      {
        v30 = obj_get(*(a1 + 392), 0, v29, &apfs_desc, 0, 0, 0, 0, &v51);
        if (v30)
        {
          v7 = v30;
          v36 = *(a1 + 400);
          if (v36 && *(v36 + 76))
          {
            return v7;
          }

          v37 = "<UNKNOWN>";
          if (a3 == 2)
          {
            v37 = "FIXUP";
          }

          if (a3 == 1)
          {
            v37 = "START";
          }

          v45 = v37;
          v46 = v30;
          v43 = i;
          v44 = v29;
          v42 = *(a1 + 384) + 212;
          v11 = 796;
          v35 = "%s:%d: %s failed to get fs[%d] oid %lld for checkpoint %s traverse: %d\n";
LABEL_58:
          log_err(v35, "nx_checkpoint_traverse", v11, v42, v43, v44, v45, v46, v47);
LABEL_9:
          v14 = *(a1 + 400);
          if (v14)
          {
LABEL_10:
            *(v14 + 76) = v11;
            ++*(v14 + 80);
          }

          return v7;
        }

        v7 = apfs_checkpoint_traverse(a1, a2, v51, a3);
        obj_release(v51);
        if (v7)
        {
          v38 = *(a1 + 400);
          if (!v38 || !*(v38 + 76))
          {
            v39 = *(a1 + 384) + 212;
            LODWORD(v11) = 802;
            log_err("%s:%d: %s fs[%d] checkpoint %s traverse failed: %d\n");
            goto LABEL_9;
          }

          return v7;
        }

        v16 = *(a1 + 376);
      }
    }
  }

  if (!*(v16 + 1344) || !obj_type_is_or_contains_ephemeral(*(v16 + 176)))
  {
    return 0;
  }

  v50[0] = 0;
  v50[1] = 0;
  v49 = 0;
  v48 = 0;
  v31 = obj_descriptor_and_flags_for_type(*(*(a1 + 376) + 176), &v48, v50);
  HIDWORD(v50[0]) = 255;
  if (v31 || (v31 = obj_get(*(a1 + 392), v48, *(*(a1 + 376) + 1344), v50, 0, 0, 0, 0, &v49), v31))
  {
    v7 = v31;
    v32 = *(a1 + 400);
    if (!v32 || !*(v32 + 76))
    {
      v33 = *(a1 + 376);
      v34 = "<UNKNOWN>";
      if (a3 == 2)
      {
        v34 = "FIXUP";
      }

      if (a3 == 1)
      {
        v34 = "START";
      }

      v46 = v34;
      v47 = v31;
      v44 = *(v33 + 176);
      v45 = 255;
      v42 = *(a1 + 384) + 212;
      v43 = *(v33 + 1344);
      v11 = 823;
      v35 = "%s:%d: %s unable to get test object 0x%llx of type 0x%x/0x%x for checkpoint %s traverse: %d\n";
      goto LABEL_58;
    }
  }

  else
  {
    v7 = obj_checkpoint_traverse(a1, a2, v49, a3);
    obj_release(v49);
    if (v7)
    {
      v40 = *(a1 + 400);
      if (!v40 || !*(v40 + 76))
      {
        v41 = "<UNKNOWN>";
        if (a3 == 2)
        {
          v41 = "FIXUP";
        }

        if (a3 == 1)
        {
          v41 = "START";
        }

        LODWORD(v11) = 829;
        log_err("%s:%d: %s failed to checkpoint %s traverse test object 0x%llx of type 0x%x/0x%x: %d\n", "nx_checkpoint_traverse", 829, (*(a1 + 384) + 212), v41, *(*(a1 + 376) + 1344), *(*(a1 + 376) + 176), 255, v7);
        v14 = *(a1 + 400);
        if (v14)
        {
          goto LABEL_10;
        }
      }
    }
  }

  return v7;
}

uint64_t nx_reaper_get(void *a1, atomic_ullong **a2)
{
  v3 = a1[53];
  *a2 = v3;
  if (v3)
  {
    goto LABEL_2;
  }

  result = obj_get(a1[49], 0x80000000, *(a1[47] + 168), &nx_reaper_desc, 0, 0, 0, 0, a2);
  if (!result)
  {
    v3 = *a2;
    a1[53] = *a2;
LABEL_2:
    obj_retain(v3);
    return 0;
  }

  return result;
}

uint64_t nx_reaper_checkpoint_traverse(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 376);
  v36 = 0;
  if (a4 == 2)
  {
    v7 = obj_checkpoint_known(a3);
LABEL_5:
    v8 = v7;
    if (v7)
    {
      return v8;
    }

    goto LABEL_6;
  }

  if (a4 == 1)
  {
    v7 = obj_checkpoint_start(a3);
    goto LABEL_5;
  }

LABEL_6:
  v37 = 0;
  v38 = 0;
  if (*(v6 + 88) && obj_type_is_or_contains_ephemeral(*(v6 + 72)))
  {
    v8 = 0;
    if ((*(v6 + 104) & 0x10) == 0 && (*(v6 + 104) & 6) != 2)
    {
      v9 = nx_reaper_obj_get(a1, *(v6 + 72), *(v6 + 76), *(v6 + 80), *(v6 + 88), &v36, &v37);
      if (v9)
      {
        v8 = v9;
        v10 = a1[50];
        if (!v10 || !*(v10 + 76))
        {
          log_err("%s:%d: %s failed to get object oid %lld: %d\n", "nx_reaper_checkpoint_traverse", 1105, (a1[48] + 212), *(v6 + 88), v9);
        }
      }

      else
      {
        if (v36)
        {
          v32 = v36;
        }

        else
        {
          v32 = a1;
        }

        v8 = obj_checkpoint_traverse(v32, a2, v37, a4);
        obj_release(v37);
      }

      if (v36)
      {
        obj_release(v36);
        v36 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    return v8;
  }

  v11 = *(v6 + 48);
  if (!v11)
  {
    return v8;
  }

  v12 = *(v6 + 68);
  do
  {
    v13 = obj_get(a1[49], 0x80000000, v11, &nx_reap_list_desc, 0, 0, 0, 0, &v38);
    if (v13)
    {
      v8 = v13;
      v30 = a1[50];
      if (!v30 || !*(v30 + 76))
      {
        log_err("%s:%d: %s failed to get reap list object oid %lld: %d\n", "nx_reaper_checkpoint_traverse", 1125, (a1[48] + 212), v11, v13);
      }

      return v8;
    }

    v14 = v38[47];
    v34 = v12;
    if (a4 == 2)
    {
      v15 = obj_checkpoint_known(v38);
      goto LABEL_23;
    }

    if (a4 == 1)
    {
      v15 = obj_checkpoint_start(v38);
LABEL_23:
      v8 = v15;
      goto LABEL_25;
    }

    v8 = 0;
LABEL_25:
    v35 = *(v14 + 32);
    if (v8)
    {
      goto LABEL_56;
    }

    v16 = *(v14 + 52);
    if (v16 == -1)
    {
      goto LABEL_56;
    }

    v17 = v14 + 64;
    v18 = -1;
    while (1)
    {
      v19 = v17 + 40 * v16;
      v20 = *v19;
      if (*v19 != -1 && v20 > *(v14 + 44))
      {
        break;
      }

      v21 = *(v19 + 8);
      if (v21 != *(v6 + 72) || *(v19 + 24) != *(v6 + 88))
      {
        if (v18 == -1 || (v22 = v17 + 40 * v18, v21 != *(v22 + 8)) || *(v19 + 24) != *(v22 + 24))
        {
          v8 = 0;
          if ((*(v19 + 4) & 0x10) != 0 || (*(v19 + 4) & 6) == 2)
          {
            goto LABEL_49;
          }

          if (obj_type_is_or_contains_ephemeral(v21))
          {
            v23 = nx_reaper_obj_get(a1, *(v19 + 8), *(v19 + 12), *(v19 + 16), *(v19 + 24), &v36, &v37);
            if (v23)
            {
              v8 = v23;
              v24 = a1[50];
              if (!v24 || !*(v24 + 76))
              {
                log_err("%s:%d: %s failed to get object oid %lld: %d\n", "nx_reaper_checkpoint_traverse", 1185, (a1[48] + 212), *(v19 + 24), v23);
              }
            }

            else
            {
              if (v36)
              {
                v25 = v36;
              }

              else
              {
                v25 = a1;
              }

              v8 = obj_checkpoint_traverse(v25, a2, v37, a4);
              obj_release(v37);
            }

            if (v36)
            {
              obj_release(v36);
              v36 = 0;
            }

            goto LABEL_49;
          }
        }
      }

      v8 = 0;
LABEL_49:
      if (!v8)
      {
        v18 = v16;
        v16 = v20;
        if (v20 != -1)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    v26 = a1[50];
    if (!v26 || !*(v26 + 76))
    {
      log_err("%s:%d: %s Invalid reap list entry nrl_entries[%d].nrle_next = %d\n", "nx_reaper_checkpoint_traverse", 1147, (a1[48] + 212), v16, v20);
    }

    obj_release(v38);
    v8 = nx_corruption_detected_int(a1);
LABEL_56:
    v27 = *(v6 + 68);
    if (v27)
    {
      v11 = v35;
      v12 = (v34 - 1);
      if (v35 && v34 == 1)
      {
        v28 = a1[50];
        if (!v28 || !*(v28 + 76))
        {
          log_err("%s:%d: %s reap list expected %u objects, but haven't seen last reap list object yet\n", "nx_reaper_checkpoint_traverse", 1201, (a1[48] + 212), v27);
        }

        v8 = nx_corruption_detected_int(a1);
        v12 = 0;
      }

      else if (!v35 && v34 != 1)
      {
        v29 = a1[50];
        if (!v29 || !*(v29 + 76))
        {
          log_warn("%s:%d: %s reap list expected %u objects, but got last reap list object with %u more objects left\n", "nx_reaper_checkpoint_traverse", 1206, (a1[48] + 212), *(v6 + 68), v34 - 1);
        }
      }
    }

    else
    {
      v12 = v34;
      v11 = v35;
    }

    obj_release(v38);
  }

  while (!v8 && v11);
  return v8;
}

uint64_t nx_reaper_init_phys(uint64_t a1, int a2)
{
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 108) = (a2 & 0xFFFFFFFC) - 112;
  return 0;
}

uint64_t nx_reaper_init(void *a1)
{
  v2 = a1[7];
  v4 = *(v2 + 32);
  v3 = *(v2 + 40);
  v5 = *(v2 + 108);
  v6 = (obj_size_phys(a1) & 0xFFFFFFFCLL) - 112;
  if (v3 < v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (v6 >= v5)
  {
    v8 = v3 >= v4;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v2 + 68);
  if (v9 == 1)
  {
    v10 = *(v2 + 48) == *(v2 + 56);
  }

  else
  {
    if (v9)
    {
      if (v8)
      {
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    if (*(v2 + 48))
    {
      goto LABEL_19;
    }

    v10 = *(v2 + 56) == 0;
  }

  if (!v10 || v8)
  {
LABEL_19:
    result = nx_corruption_detected_int(*(*a1 + 392));
    if (result)
    {
      return result;
    }
  }

LABEL_20:
  a1[47] = v2;
  v13 = obj_size_phys(a1);
  result = 0;
  a1[48] = v2 + v13 - *(v2 + 108);
  return result;
}

uint64_t nx_reap_list_init_phys(uint64_t a1, unsigned int a2)
{
  v2 = (a2 - 64) / 0x28;
  *(a1 + 44) = v2;
  *(a1 + 52) = -1;
  *(a1 + 60) = 0;
  v3 = (v2 - 1);
  if (v3)
  {
    v4 = vdupq_n_s64(v3 - 1);
    v5 = (v3 + 3) & 0x1FFFFFFFCLL;
    v6 = xmmword_23D298E90;
    v7 = xmmword_23D298EA0;
    v8 = (a1 + 104);
    v9 = vdupq_n_s64(1uLL);
    v10 = vdupq_n_s64(4uLL);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v4, v7));
      v12 = vaddq_s64(v7, v9);
      if (vuzp1_s16(v11, *v4.i8).u8[0])
      {
        *(v8 - 10) = v12.i32[0];
      }

      if (vuzp1_s16(v11, *&v4).i8[2])
      {
        *v8 = v12.i32[2];
      }

      v13 = vaddq_s64(v6, v9);
      if (vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v6))).i32[1])
      {
        v8[10] = v13.i32[0];
        v8[20] = v13.i32[2];
      }

      v6 = vaddq_s64(v6, v10);
      v7 = vaddq_s64(v7, v10);
      v8 += 40;
      v5 -= 4;
    }

    while (v5);
  }

  else
  {
    LODWORD(v3) = 0;
  }

  *(a1 + 40 * v3 + 64) = -1;
  return 0;
}

uint64_t nx_reap_list_init(void *a1)
{
  v2 = a1[7];
  v3 = v2[11];
  v4 = v3 > ((obj_size_phys(a1) - 64) / 0x28);
  v6 = v2[11];
  v5 = v2[12];
  if (v4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if (v5 <= v6)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  v9 = v2[13];
  v10 = v2[14];
  if (v9 != -1 && v9 >= v6)
  {
    ++v8;
  }

  if (v10 != -1 && v10 >= v6)
  {
    ++v8;
  }

  v13 = v2[15];
  if (v13 != -1 && v13 >= v6)
  {
    v15 = v8 + 1;
  }

  else
  {
    v15 = v8;
  }

  if (v5 == 1)
  {
    v16 = v9 == v10;
  }

  else
  {
    if (v5)
    {
      if (v15)
      {
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    v16 = v9 == -1 && v10 == -1;
  }

  if (!v16 || v15 != 0)
  {
LABEL_36:
    result = nx_corruption_detected_int(*(*a1 + 392));
    if (result)
    {
      return result;
    }
  }

LABEL_37:
  result = 0;
  a1[47] = v2;
  return result;
}

uint64_t nx_reaper_obj_get(uint64_t *a1, int a2, int a3, unint64_t a4, unint64_t a5, uint64_t **a6, uint64_t *a7)
{
  v24 = 0;
  v23 = 0;
  v21 = 0;
  v22 = 0;
  *a7 = 0;
  *a6 = 0;
  if (a4)
  {
    v14 = obj_get(a1[49], 0, a4, &apfs_desc, 0, 0, 0, 0, &v24);
    if (v14)
    {
      v15 = v14;
      log_err("%s:%d: %s unable to get fs object 0x%llx: %d\n", "nx_reaper_obj_get", 1038, (a1[48] + 212), a4, v14);
      return v15;
    }

    v17 = v24;
  }

  else
  {
    v17 = 0;
  }

  *a6 = v17;
  if ((a2 & 0x4000FFFF) == 0x4000000B)
  {
    v18 = (v17 ? v17 : a1);
    if (!omap_obj_get(v18, 0, 0, a7))
    {
      return 0;
    }
  }

  v19 = obj_descriptor_and_flags_for_type(a2, &v23, &v21);
  if (v19)
  {
    v16 = v19;
  }

  else
  {
    LODWORD(v22) = a3;
    v16 = obj_get(a1[49], v23, a5, &v21, 0, v24, 0, 0, a7);
    if (!v16)
    {
      return v16;
    }
  }

  log_err("%s:%d: %s unable to get object 0x%llx: %d\n", "nx_reaper_obj_get", 1059, (a1[48] + 212), a5, v16);
  if (v24)
  {
    obj_release(v24);
  }

  *a7 = 0;
  *a6 = 0;
  return v16;
}

uint64_t nx_reaper_add_ext(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7, void *a8)
{
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  v16 = nx_reaper_get(a1, &v47);
  if (v16)
  {
    return v16;
  }

  v17 = v47[47];
  v16 = obj_descriptor_funcs_for_type(a2, &v44);
  if (v16)
  {
LABEL_3:
    log_err("%s:%d: %s object type 0x%x not reapable: %d\n", "nx_reaper_add_ext", 1255, (*(a1 + 384) + 212), a2, v16);
LABEL_14:
    obj_release(v47);
    return v16;
  }

  if (!*(v44 + 24))
  {
    v16 = 22;
    goto LABEL_3;
  }

  obj_lock(v47, 2);
  v18 = obj_modify(v47, 0, a6);
  if (v18)
  {
    v16 = v18;
LABEL_13:
    obj_unlock(v47, 2);
    goto LABEL_14;
  }

  v19 = *(a1 + 392);
  if (*(v17 + 48) == 0)
  {
    v20 = obj_create(v19, 0x80000000, 0, &nx_reap_list_desc, 0, 0, a6, &v46);
    if (v20)
    {
      v16 = v20;
      v42 = *(a1 + 384) + 212;
      log_err("%s:%d: %s failed to create reap list: %d\n");
      goto LABEL_13;
    }

    v23 = obj_oid(v46);
    *(v17 + 48) = v23;
    *(v17 + 56) = v23;
    v24 = (v17 + 68);
    goto LABEL_17;
  }

  v21 = obj_get(v19, 2147483649, *(v17 + 56), &nx_reap_list_desc, 0, 0, 0, a6, &v46);
  if (v21)
  {
    v16 = v21;
    v43 = *(a1 + 384) + 212;
    log_err("%s:%d: %s failed to get reap list tail: %d\n");
    goto LABEL_13;
  }

  v24 = (v17 + 68);
  if (!*(v17 + 68) && *(v17 + 48) == *(v17 + 56))
  {
LABEL_17:
    *v24 = 1;
    obj_dirty(v47, a6, 0);
  }

  v25 = *(v46 + 376);
  if (v25[12] > (v25[11] - 2))
  {
    v26 = obj_create(*(a1 + 392), 0x80000000, 0, &nx_reap_list_desc, 0, 0, a6, &v45);
    if (v26)
    {
      v16 = v26;
      obj_unlock(v47, 2);
      obj_release(v46);
      goto LABEL_14;
    }

    v27 = obj_oid(v45);
    *(*(v46 + 376) + 32) = v27;
    *(v17 + 56) = obj_oid(v45);
    v28 = *(v17 + 68);
    if (v28)
    {
      *(v17 + 68) = v28 + 1;
    }

    obj_dirty(v47, a6, 0);
    obj_release(v46);
    v46 = v45;
    v25 = *(v45 + 376);
  }

  v29 = *(v17 + 32);
  *(v17 + 32) = v29 + 1;
  v30 = v25[15];
  if (v30 == -1)
  {
    log_err("%s:%d: %s reap list object free list erroneously empty?\n", "nx_reaper_add_ext", 1325, (*(a1 + 384) + 212));
    obj_unlock(v47, 2);
    obj_release(v46);
    obj_release(v47);
    v41 = a1;
    return nx_corruption_detected_int(v41);
  }

  v31 = v25 + 16;
  v32 = &v25[10 * v30 + 16];
  v33 = *v32;
  v25[15] = *v32;
  v34 = v25[14];
  if (v34 != -1)
  {
    v31[10 * v34] = v30;
  }

  if (v25[13] == -1)
  {
    v25[13] = v30;
  }

  v25[14] = v30;
  v35 = v25[12];
  v25[12] = v35 + 1;
  if ((a7 & 2) != 0)
  {
    v36 = 21;
  }

  else
  {
    v36 = 5;
  }

  *v32 = -1;
  *(v32 + 4) = v36;
  *(v32 + 8) = a2;
  *(v32 + 12) = a3;
  *(v32 + 16) = a4;
  *(v32 + 24) = a5;
  *(v32 + 32) = a6;
  if (v33 == -1)
  {
    log_err("%s:%d: %s reap list object free list erroneously empty?\n", "nx_reaper_add_ext", 1356, (*(a1 + 384) + 212));
    obj_unlock(v47, 2);
    obj_release(v46);
    obj_release(v47);
    v41 = a1;
    return nx_corruption_detected_int(v41);
  }

  v37 = &v31[10 * v33];
  v38 = *v37;
  *v32 = v33;
  v25[14] = v33;
  v25[15] = v38;
  v25[12] = v35 + 2;
  if ((a7 & 2) != 0)
  {
    v39 = 19;
  }

  else
  {
    v39 = 3;
  }

  if (a7)
  {
    v39 |= 0xCu;
  }

  *v37 = -1;
  v37[1] = v39;
  v37[2] = a2;
  v37[3] = a3;
  *(v37 + 2) = a4;
  *(v37 + 3) = a5;
  *(v37 + 4) = v29;
  obj_dirty(v46, a6, 0);
  obj_unlock(v47, 2);
  obj_release(v46);
  obj_release(v47);
  if (!a8)
  {
    return 0;
  }

  v40 = v29;
  v16 = 0;
  *a8 = v40;
  return v16;
}

uint64_t nx_reaper_add_sub_object(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7)
{
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  v14 = nx_reaper_get(a1, &v45);
  if (v14)
  {
    return v14;
  }

  v15 = v45[47];
  v14 = obj_descriptor_funcs_for_type(a2, &v42);
  if (v14)
  {
LABEL_3:
    log_err("%s:%d: %s object type 0x%x not reapable: %d\n", "nx_reaper_add_sub_object", 1442, (*(a1 + 384) + 212), a2, v14);
LABEL_4:
    obj_release(v45);
    return v14;
  }

  if (!*(v42 + 24))
  {
    v14 = 22;
    goto LABEL_3;
  }

  obj_lock(v45, 2);
  v17 = obj_modify(v45, 0, a6);
  if (v17)
  {
    v14 = v17;
    obj_unlock(v45, 2);
    goto LABEL_4;
  }

  v18 = *(v15 + 48);
  if (!v18 && !*(v15 + 56))
  {
    v21 = obj_create(*(a1 + 392), 0x80000000, 0, &nx_reap_list_desc, 0, 0, a6, &v44);
    if (v21)
    {
      v14 = v21;
      v41 = *(a1 + 384) + 212;
      log_err("%s:%d: %s failed to create reap list: %d\n");
      goto LABEL_14;
    }

    v22 = obj_oid(v44);
    *(v15 + 48) = v22;
    *(v15 + 56) = v22;
    v20 = (v15 + 68);
    goto LABEL_21;
  }

  v19 = obj_get(*(a1 + 392), 2147483649, v18, &nx_reap_list_desc, 0, 0, 0, a6, &v44);
  if (v19)
  {
    v14 = v19;
    v40 = *(a1 + 384) + 212;
    log_err("%s:%d: %s failed to get reap list head: %d\n");
LABEL_14:
    log_err("%s:%d: %s failed to get reap list head: %d\n", "nx_reaper_add_sub_object", 1478, (*(a1 + 384) + 212), v14);
    obj_unlock(v45, 2);
    obj_release(v45);
    return v14;
  }

  v20 = (v15 + 68);
  if (!*(v15 + 68) && *(v15 + 48) == *(v15 + 56))
  {
LABEL_21:
    *v20 = 1;
    obj_dirty(v45, a6, 0);
  }

  v23 = *(v44 + 376);
  if (v23[12] > v23[11] + ~(a7 & 1u))
  {
    v24 = obj_create(*(a1 + 392), 0x80000000, 0, &nx_reap_list_desc, 0, 0, a6, &v43);
    if (v24)
    {
      v14 = v24;
      obj_unlock(v45, 2);
      obj_release(v44);
      goto LABEL_4;
    }

    v25 = v43;
    *(*(v43 + 376) + 32) = *(v15 + 48);
    *(v15 + 48) = obj_oid(v25);
    v26 = *(v15 + 68);
    if (v26)
    {
      *(v15 + 68) = v26 + 1;
    }

    obj_dirty(v45, a6, 0);
    obj_release(v44);
    v44 = v43;
    v23 = *(v43 + 376);
  }

  v27 = v23[15];
  if (a7)
  {
    if (v27 == -1)
    {
      log_err("%s:%d: %s reap list object free list erroneously empty?\n", "nx_reaper_add_sub_object", 1514, (*(a1 + 384) + 212));
      obj_unlock(v45, 2);
      obj_release(v44);
      obj_release(v45);
      v39 = a1;
      return nx_corruption_detected_int(v39);
    }

    v28 = &v23[10 * v27];
    v31 = v28[16];
    v29 = v28 + 16;
    v30 = v31;
    v23[15] = v31;
    v32 = v23[14];
    *v29 = v23[13];
    v23[13] = v27;
    if (v32 == -1)
    {
      v23[14] = v27;
    }

    ++v23[12];
    if ((a7 & 2) != 0)
    {
      v33 = 29;
    }

    else
    {
      v33 = 13;
    }

    v29[1] = v33;
    v29[2] = a2;
    v29[3] = a3;
    *(v29 + 2) = a4;
    *(v29 + 3) = a5;
    *(v29 + 4) = a6;
    v27 = v30;
  }

  if (v27 == -1)
  {
    log_err("%s:%d: %s reap list object free list erroneously empty?\n", "nx_reaper_add_sub_object", 1542, (*(a1 + 384) + 212));
    obj_unlock(v45, 2);
    obj_release(v44);
    obj_release(v45);
    v39 = a1;
    return nx_corruption_detected_int(v39);
  }

  v34 = &v23[10 * v27];
  v36 = v34[16];
  v35 = v34 + 16;
  v23[15] = v36;
  v37 = v23[14];
  *v35 = v23[13];
  v23[13] = v27;
  if (v37 == -1)
  {
    v23[14] = v27;
  }

  ++v23[12];
  if ((a7 & 2) != 0)
  {
    v38 = 21;
  }

  else
  {
    v38 = 5;
  }

  v35[1] = v38;
  v35[2] = a2;
  v35[3] = a3;
  *(v35 + 2) = a4;
  *(v35 + 3) = a5;
  *(v35 + 4) = a6;
  obj_dirty(v44, a6, 0);
  obj_unlock(v45, 2);
  obj_release(v44);
  obj_release(v45);
  return 0;
}

void nx_reaper_check_for_work(uint64_t *a1)
{
  v5 = 0;
  v6 = 0;
  if (!nx_reaper_get(a1, &v6))
  {
    v2 = v6[47];
    obj_lock(v6, 2);
    if (!*(v2 + 88))
    {
      v3 = *(v2 + 48);
      if (!v3 || obj_get(a1[49], 0x80000000, v3, &nx_reap_list_desc, 0, 0, 0, 0, &v5))
      {
        goto LABEL_4;
      }

      v4 = v5[47];
      if (!*(v4 + 48) && !*(v4 + 32))
      {
        obj_release(v5);
        goto LABEL_4;
      }

      obj_release(v5);
    }

    obj_unlock(v6, 2);
    nx_reaper(a1);
    obj_lock(v6, 2);
LABEL_4:
    obj_unlock(v6, 2);
    obj_release(v6);
  }
}

uint64_t nx_reaper(uint64_t *a1)
{
  v20 = 0;
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  result = nx_reaper_get(a1, &v20);
  if (result)
  {
    return result;
  }

  v3 = v20[47];
  obj_lock(v20, 2);
  v4 = v20;
  if (*(v20 + 98) || *(v20 + 99))
  {
    obj_unlock(v20, 2);
    obj_release(v20);
    log_debug("%s:%d: reaper thread is exiting, returning EBUSY\n", "nx_reaper", 1698);
    return 16;
  }

  v5 = 0;
  *(v20 + 98) = 1;
  while (1)
  {
    v14 = 0;
    v15 = 0;
    obj_unlock(v4, 2);
    v19 = 0;
    v6 = tx_enter(a1, &v19);
    obj_lock(v20, 2);
    v4 = v20;
    if (v6)
    {
      goto LABEL_38;
    }

    v7 = obj_modify(v20, 0, v19);
    v4 = v20;
    if (v7)
    {
      v6 = v7;
      v13 = 0;
      goto LABEL_39;
    }

    if (*(v3 + 88))
    {
      goto LABEL_13;
    }

    if (*(v20 + 99))
    {
      goto LABEL_44;
    }

    record = nx_reaper_next_record(a1, v20, v19);
    if (record)
    {
      break;
    }

    v4 = v20;
    if (!*(v3 + 88))
    {
LABEL_44:
      v13 = 0;
      v6 = 0;
      goto LABEL_39;
    }

LABEL_13:
    obj_unlock(v4, 2);
    if ((*(v3 + 104) & 4) == 0)
    {
      goto LABEL_16;
    }

    v9 = obj_descriptor_funcs_for_type(*(v3 + 72), &v18);
    if (v9)
    {
      goto LABEL_15;
    }

    if (!*(v18 + 24))
    {
      v9 = 22;
LABEL_15:
      log_err("%s:%d: %s object type 0x%x not reapable?: %d\n", "nx_reaper", 1739, (a1[48] + 212), *(v3 + 72), v9);
      v5 = 1;
LABEL_16:
      obj_lock(v20, 2);
LABEL_17:
      if ((*(v3 + 104) & 2) != 0)
      {
        *(v3 + 40) = *(v3 + 96);
      }

      *(v3 + 64) &= ~2u;
      *(v3 + 88) = 0;
      goto LABEL_20;
    }

    v10 = nx_reaper_obj_get(a1, *(v3 + 72), *(v3 + 76), *(v3 + 80), *(v3 + 88), &v16, &v17);
    if (v10)
    {
      v11 = v10;
      log_err("%s:%d: %s unable to get object 0x%llx of type 0x%x: %d\n", "nx_reaper", 1744, (a1[48] + 212), *(v3 + 88), *(v3 + 72), v10);
    }

    else
    {
      if ((*(v3 + 64) & 2) == 0)
      {
        bzero(v20[48], *(v3 + 108));
      }

      v12 = (*(v18 + 24))(v17, (*(v3 + 104) >> 3) & 3, v20[48], *(v3 + 108), v19);
      v11 = v12;
      if (v12 && v12 != 36)
      {
        log_err("%s:%d: %s error reaping object 0x%llx of type 0x%x: %d\n", "nx_reaper", 1758, (a1[48] + 212), *(v3 + 88), *(v3 + 72), v12);
      }

      obj_release(v17);
      if (v16)
      {
        obj_release(v16);
        v16 = 0;
      }
    }

    obj_lock(v20, 2);
    if (v11 != 36)
    {
      v5 = 1;
      goto LABEL_17;
    }

    *(v3 + 64) |= 2u;
    v5 = 1;
LABEL_20:
    obj_dirty(v20, v19, 0);
    obj_unlock(v20, 2);
    spaceman_currently_available_space(a1, 0, &v15, &v14, 0, 0);
    v6 = tx_leave(a1, v19, (v14 < 0x3E8) | (4 * (v14 < 0x7D0)));
    obj_lock(v20, 2);
    v4 = v20;
    if (v6)
    {
      goto LABEL_38;
    }

    if (*(v20 + 99))
    {
      v6 = 0;
LABEL_38:
      v13 = 1;
      goto LABEL_39;
    }
  }

  v6 = record;
  v13 = 0;
  v4 = v20;
LABEL_39:
  *(v4 + 98) = 0;
  obj_unlock(v4, 2);
  obj_release(v20);
  if ((v13 & 1) == 0)
  {
    tx_leave(a1, v19, 0);
  }

  if (v6 | v5)
  {
    return v6;
  }

  else
  {
    return 2;
  }
}

void nx_reaper_shut_down(void *a1)
{
  v4 = 0;
  if (!nx_reaper_get(a1, &v4))
  {
    obj_lock(v4, 2);
    v2 = v4;
    ++*(v4 + 99);
    obj_unlock(v2, 2);
    v3 = a1[53];
    if (v3)
    {
      obj_release(v3);
      a1[53] = 0;
    }

    obj_release(v4);
  }
}

uint64_t extent_list_key_cmp(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
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

uint64_t nx_metadata_fragmented_extent_list_tree_get(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!a2)
  {
    return 22;
  }

  v6 = a1 + 432;
  for (i = 432; i != 464; i += 8)
  {
    v8 = *(a1 + i);
    if (v8 && obj_oid(*(a1 + i)) == a2)
    {
      obj_retain(v8);
      v14 = 0;
      *a3 = v8;
      return v14;
    }
  }

  obj_lock(a1, 2);
  v9 = 0;
  v10 = -1;
  do
  {
    v11 = a1 + 8 * v9;
    v12 = *(v11 + 432);
    if (v12)
    {
      if (obj_oid(*(v11 + 432)) == a2)
      {
        obj_retain(v12);
        *a3 = v12;
        obj_unlock(a1, 2);
        return 0;
      }
    }

    else if (v10 == -1)
    {
      v10 = v9;
    }

    ++v9;
  }

  while (v9 != 4);
  if (a2 < 0)
  {
    v14 = btree_get(a1, 2281701376, a2 & 0x7FFFFFFFFFFFFFFFLL, 0, 0, 0, 10, extent_list_key_cmp, 0, a3);
  }

  else
  {
    v14 = btree_get(a1, 0x40000000, a2, 0, 0, 0, 10, extent_list_key_cmp, 0, a3);
    if (!v14 && v10 != -1)
    {
      v13 = *a3;
      *(v6 + 8 * v10) = *a3;
      obj_retain(v13);
      v14 = 0;
    }
  }

  obj_unlock(a1, 2);
  return v14;
}

uint64_t nx_metadata_fragmented_sanity_check(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v18 = 0;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v5 = nx_metadata_fragmented_extent_list_tree_get(a1, a2, &v18);
  if (!v5)
  {
    v17 = 0;
    bt_iterator_init(v13, v18, 0, 0, &v17, 8, 8u, &v15, 0x10u);
    v5 = v6;
    if (!v6)
    {
      v8 = 0;
      while (!bt_iterator_ended(v13))
      {
        if (v17 == v8)
        {
          v5 = 0;
        }

        else
        {
          v5 = nx_corruption_detected_int(a1);
        }

        if (nx_superblock_sanity_check_extent(*(a1 + 376), 0, v15, v16, 0))
        {
          v5 = nx_corruption_detected_int(a1);
        }

        v9 = v16;
        if (v16 > a3 - v8)
        {
          v5 = nx_corruption_detected_int(a1);
          v9 = v16;
        }

        if (v5)
        {
          goto LABEL_3;
        }

        v8 += v9;
        v10 = bt_iterator_next(v13);
        if (v10)
        {
          v5 = v10;
          v11 = (*(a1 + 384) + 212);
          v12 = strerror(v10);
          log_err("%s:%d: %s failed to get next extent in metadata fragmented extent list tree, error %s(%d)\n", "nx_metadata_fragmented_sanity_check", 2351, v11, v12, v5);
          goto LABEL_3;
        }
      }

      if (a3 == v8)
      {
        v5 = 0;
      }

      else
      {
        v5 = nx_corruption_detected_int(a1);
      }
    }

LABEL_3:
    obj_release(v18);
  }

  return v5;
}

uint64_t nx_metadata_fragmented_block_address_lookup(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void *a5)
{
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v8 = nx_metadata_fragmented_extent_list_tree_get(a1, a2, &v16);
  if (!v8)
  {
    v15 = a3;
    v11 = 16;
    v12 = 8;
    v8 = bt_lookup_variant(v16, 0, &v15, &v12, 8u, &v13, &v11, 1u, 0, 0);
    if (!v8)
    {
      v9 = v14 - (a3 - v15);
      if (v14 <= a3 - v15)
      {
        v8 = 2;
      }

      else
      {
        *a4 = v13 + a3 - v15;
        v8 = 0;
        if (a5)
        {
          *a5 = v9;
        }
      }
    }

    obj_release(v16);
  }

  return v8;
}

uint64_t nx_metadata_range_overlap_check(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t *a4)
{
  v8 = *(a1 + 480);
  if (!v8)
  {
    v13 = 0;
    v14 = 0;
    v15 = a2;
    v12 = 8;
    v11 = 16;
    LODWORD(result) = bt_lookup_variant(*(a1 + 464), 0, &v15, &v12, 8u, &v13, &v11, 1u, 0, 0);
    if (result || (v10 = v15, a2 - v15 >= v14))
    {
      if (result == 2)
      {
        result = 0;
      }

      else
      {
        result = result;
      }

      if (a3 < 2 || result)
      {
        return result;
      }

      v15 = a2;
      v11 = 16;
      v12 = 8;
      LODWORD(result) = bt_lookup_variant(*(a1 + 464), 0, &v15, &v12, 8u, &v13, &v11, 4u, 0, 0);
      if (result || (v10 = v15, v15 - a2 >= a3))
      {
        if (result == 2)
        {
          return 0;
        }

        else
        {
          return result;
        }
      }
    }

    if (a4)
    {
      *a4 = v10;
    }

    return 17;
  }

  if (calc_overlap_range(*(a1 + 472), v8, a2, a3, a4))
  {
    return 17;
  }

  if (!a2)
  {
    if (a4)
    {
      *a4 = 0;
    }

    return 17;
  }

  return 0;
}

uint64_t nx_metadata_range_add(uint64_t a1, unint64_t a2, int a3, char a4, int a5)
{
  if (a4)
  {
    v19 = 0;
    v16 = 0;
    v17 = 0;
    memset(v14, 0, sizeof(v14));
    v15 = 0;
    v6 = nx_metadata_fragmented_extent_list_tree_get(a1, a2, &v19);
    if (v6)
    {
      return v6;
    }

    v7 = btree_iterate_nodes(v19, 0, 0, nx_metadata_range_add_btree_callback, 0, 0);
    if (!v7)
    {
      v18 = 0;
      bt_iterator_init(v14, v19, 0, 0, &v18, 8, 8u, &v16, 0x10u);
      v6 = v10;
      if (bt_iterator_ended(v14))
      {
        goto LABEL_9;
      }

      while (1)
      {
        v7 = nx_metadata_range_check_and_insert(a1, v16, v17, 0);
        if (v7)
        {
          break;
        }

        v11 = bt_iterator_next(v14);
        if (v11)
        {
          v6 = v11;
          v12 = (*(a1 + 384) + 212);
          v13 = strerror(v11);
          log_err("%s:%d: %s failed to get next extent in metadata fragmented extent list tree, error %s(%d)\n", "nx_metadata_range_add", 2587, v12, v13, v6);
          goto LABEL_9;
        }

        if (bt_iterator_ended(v14))
        {
          v6 = 0;
          goto LABEL_9;
        }
      }
    }

    v6 = v7;
LABEL_9:
    obj_release(v19);
    return v6;
  }

  v8 = a3 & 0x7FFFFFFF;

  return nx_metadata_range_check_and_insert(a1, a2, v8, a5);
}

uint64_t nx_metadata_range_check_and_insert(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  if (nx_superblock_sanity_check_extent(*(a1 + 376), 0, a2, a3, a4))
  {
    return 22;
  }

  if (*(a1 + 464))
  {
    result = nx_metadata_range_overlap_check(a1, a2, a3, 0);
    if (result)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = btree_create(a1, 0x88000000uLL, 0, 10, 0, 8u, 16, extent_list_key_cmp, 0, (a1 + 464));
  if (!result)
  {
LABEL_5:
    v8[1] = a3;
    v9 = a2;
    v8[0] = a2;
    return bt_insert(*(a1 + 464), 0, &v9, 8, v8, 0x10u, 0);
  }

  return result;
}

uint64_t nx_metadata_range_add_btree_callback(uint64_t a1)
{
  v2 = *(*a1 + 392);
  v3 = obj_oid(a1);
  v4 = (obj_size_phys(a1) + *(*(v2 + 376) + 36) - 1) / *(*(v2 + 376) + 36);

  return nx_metadata_range_check_and_insert(v2, v3, v4, 0);
}

const char *nx_metadata_range_optimize(const char *result)
{
  *(result + 59) = 0;
  *(result + 60) = 0;
  v1 = *(result + 58);
  if (v1)
  {
    v2 = result;
    v11 = 0uLL;
    memset(v8, 0, sizeof(v8));
    v9 = 0;
    *v10 = 0uLL;
    v12 = 0;
    bt_iterator_init(v8, v1, 0, 0, &v12, 8, 8u, &v11, 0x10u);
    result = bt_iterator_ended(v8);
    if (!result)
    {
      v3 = 0;
      while (1)
      {
        v4 = *(&v11 + 1);
        v5 = v11;
        if (v11)
        {
          if (*(&v11 + 1))
          {
            goto LABEL_9;
          }
        }

        else
        {
          v4 = *(&v11 + 1) - 1;
          *&v11 = 1;
          *(&v11 + 1) = v4;
          v5 = 1;
          if (v4)
          {
LABEL_9:
            if (v10[1] && v10[0] + v10[1] == v5)
            {
              v10[1] += v4;
              if (bt_update(*(v2 + 58), 0, v10, 8, v10, 0x10u, 0))
              {
                v6 = *(v2 + 48) + 212;
                return log_err("%s:%d: %s error updating metadata ranges tree: %d\n");
              }

              if (bt_remove(*(v2 + 58), 0, &v11, 8u, 0))
              {
                v7 = *(v2 + 48) + 212;
                return log_err("%s:%d: %s error removing coalesced extent from metadata ranges tree: %d\n");
              }
            }

            else
            {
              ++v3;
              *v10 = v11;
            }
          }
        }

        bt_iterator_next(v8);
        result = bt_iterator_ended(v8);
        if (result)
        {
          if (v3 == 1)
          {
            *(v2 + 472) = *v10;
          }

          return result;
        }
      }
    }
  }

  return result;
}

uint64_t nx_checkpoint_desc_block_address(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = *(a1 + 376);
  v4 = *(v3 + 104);
  if ((v4 & 0x7FFFFFFFu) <= a2)
  {
    return 22;
  }

  v7 = *(v3 + 112);
  if (v4 < 0)
  {
    return nx_metadata_fragmented_block_address_lookup(a1, v7, a2, a3, 0);
  }

  result = 0;
  *a3 = v7 + a2;
  return result;
}

uint64_t nx_checkpoint_data_block_address(uint64_t a1, unint64_t a2, void *a3, unint64_t *a4)
{
  v4 = *(a1 + 376);
  v5 = *(v4 + 108);
  v6 = (v5 & 0x7FFFFFFF) - a2;
  if ((v5 & 0x7FFFFFFFu) <= a2)
  {
    return 22;
  }

  v10 = *(v4 + 120);
  if (v5 < 0)
  {
    return nx_metadata_fragmented_block_address_lookup(a1, v10, a2, a3, a4);
  }

  *a3 = v10 + a2;
  result = 0;
  if (a4)
  {
    *a4 = v6;
  }

  return result;
}

uint64_t nx_unblock_physical_range(void *a1)
{
  if (*(a1[47] + 1256))
  {
    v11 = 0;
    v12 = 0;
    v10 = 0;
    v2 = tx_enter(a1, &v12);
    if (v2)
    {
      return v2;
    }

    evict_mapping_tree = nx_get_evict_mapping_tree(a1, 0x40000000u, *(a1[47] + 1256), 1, 1, &v11);
    if (evict_mapping_tree)
    {
      v3 = evict_mapping_tree;
      log_err("%s:%d: %s failed to get mapping tree, error: %d\n", "nx_unblock_physical_range", 2929, (a1[48] + 212), evict_mapping_tree);
      goto LABEL_12;
    }

    v3 = btree_delete(v11, v12, &v10);
    obj_release(v11);
    if (v3)
    {
      v8 = a1[48] + 212;
      log_err("%s:%d: %s failed to delete mapping, error: %d\n");
      goto LABEL_12;
    }

    *(a1[47] + 1256) = 0;
    v2 = tx_leave(a1, v12, 0);
    if (v2)
    {
      return v2;
    }
  }

  v12 = 0;
  v3 = tx_enter(a1, &v12);
  if (v3)
  {
    return v3;
  }

  v5 = spaceman_unset_block_out_range(a1, v12);
  if (!v5)
  {
    return tx_leave(a1, v12, 0);
  }

  v3 = v5;
  v9 = a1[48] + 212;
  log_err("%s:%d: %s spaceman_unset_block_out_range failed with error %u\n");
LABEL_12:
  v6 = tx_leave(a1, v12, 0);
  if (v6)
  {
    log_err("%s:%d: %s tx_leave failed with error: %d\n", "nx_unblock_physical_range", 2973, (a1[48] + 212), v6);
  }

  return v3;
}

uint64_t nx_ratelimit_log_allowed(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  timestamp = get_timestamp();
  if ((timestamp - *(a1 + 1056)) >= 0x3B9ACA01)
  {
    v3 = 0;
    *(a1 + 1056) = timestamp;
LABEL_6:
    *(a1 + 1064) = v3 + 1;
    return 1;
  }

  v3 = *(a1 + 1064);
  if (v3 <= 0xF)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t nx_reaper_next_record(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(a2 + 376);
  v5 = *(v4 + 48);
  if (!v5)
  {
    return 0;
  }

  v19 = 0;
  v20 = 0;
  v8 = obj_get(*(a1 + 392), 2147483649, v5, &nx_reap_list_desc, 0, 0, 0, a3, &v20);
  if (v8)
  {
    v9 = v8;
    log_err("%s:%d: %s failed to get reap list head: %d\n", "nx_reaper_next_record", 1597, (*(a1 + 384) + 212), v8);
    return v9;
  }

  v10 = v20;
  if (*(v4 + 88))
  {
LABEL_21:
    obj_release(v10);
    return 0;
  }

  v11 = v20[47];
  while (1)
  {
    while (1)
    {
      v12 = *(v11 + 52);
      if (v12 == -1)
      {
        break;
      }

      v13 = v11 + 64 + 40 * v12;
      *(v4 + 104) = *(v13 + 4);
      *(v4 + 72) = *(v13 + 8);
      *(v4 + 80) = *(v13 + 16);
      *(v4 + 96) = *(v13 + 32);
      obj_dirty(a2, a3, 0);
      v14 = *v13;
      if (*(v11 + 52) == *(v11 + 56))
      {
        *(v11 + 56) = v14;
      }

      *v13 = *(v11 + 60);
      *(v13 + 4) = 0;
      *(v11 + 60) = v12;
      --*(v11 + 48);
      *(v11 + 52) = v14;
      obj_dirty(v20, a3, 0);
      if (*(v4 + 88))
      {
        goto LABEL_20;
      }
    }

    v15 = *(v11 + 32);
    if (!v15)
    {
      if (!*(v4 + 68) && *(v4 + 48) == *(v4 + 56))
      {
        *(v4 + 68) = 1;
        obj_dirty(a2, a3, 0);
      }

LABEL_20:
      v10 = v20;
      goto LABEL_21;
    }

    v16 = obj_get(*(a1 + 392), 0x80000000, v15, &nx_reap_list_desc, 0, 0, 0, a3, &v19);
    if (v16)
    {
      break;
    }

    *(v4 + 48) = *(v11 + 32);
    v17 = *(v4 + 68);
    if (v17)
    {
      *(v4 + 68) = v17 - 1;
    }

    obj_dirty(a2, a3, 0);
    obj_free(v20);
    obj_release(v20);
    v10 = v19;
    v19 = 0;
    v20 = v10;
    v11 = v10[47];
    if (*(v4 + 88))
    {
      goto LABEL_21;
    }
  }

  v9 = v16;
  obj_release(v20);
  return v9;
}

uint64_t spaceman_free_extent_cache_init(uint64_t a1, uint64_t a2, unsigned __int8 a3, unsigned int a4, char *a5)
{
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0x10000;
  }

  if ((v5 - 65537) < 0xFFFF0001)
  {
    return 22;
  }

  bzero(a5, 0x558uLL);
  if (!a1 || (result = new_lock((a5 + 16)), !result))
  {
    *a5 = a1;
    *(a5 + 1) = a2;
    *(a5 + 22) = a3 | (v5 << 8);
    v11 = _apfs_calloc_typed(v5, 0x18uLL, 0x1000040504FFAC1uLL);
    *(a5 + 10) = v11;
    if (v11)
    {
      spaceman_free_extent_cache_table_init(a5);
      return 0;
    }

    else
    {
      if (a1)
      {
        free_lock((a5 + 16));
      }

      return 12;
    }
  }

  return result;
}

uint64_t spaceman_free_extent_cache_table_init(uint64_t result)
{
  v1 = *(result + 88);
  if (v1 <= 0x2FF)
  {
    v5 = (v1 >> 8) - 1;
    v2 = *(result + 80);
  }

  else
  {
    v2 = *(result + 80);
    v3 = 1;
    v4 = 1;
    do
    {
      *(v2 + 24 * v4++) = (v3 + 1);
      v3 = v4;
      v5 = (*(result + 88) >> 8) - 1;
    }

    while (v5 > v4);
  }

  *(v2 + 24 * v5) = 0;
  *(result + 92) = 1;
  return result;
}

void spaceman_free_extent_cache_destroy(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      _apfs_free(v2, 24 * (*(a1 + 88) >> 8));
      *(a1 + 80) = 0;
    }

    if (*a1)
    {
      free_lock((a1 + 16));
      *a1 = 0;
    }
  }
}

uint64_t spaceman_free_extent_cache_reset(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (HIBYTE(*(a1 + 88)))
  {
    v5 = *a1;
    v4 = *(a1 + 8);
    spaceman_free_extent_cache_destroy(a1);
    result = spaceman_free_extent_cache_init(v5, v4, v2, (v2 >> 8), a1);
    if (result)
    {
      v6 = *(a1 + 88);
      v7 = "main";
      if (v6 == 1)
      {
        v7 = "tier2";
      }

      result = log_err("%s:%d: %s dev %d Error reinitializing %s free extent cache: %d\n", "spaceman_free_extent_cache_reset", 262, (*(*a1 + 384) + 212), v6, v7, result);
      *(a1 + 280) |= 2uLL;
    }
  }

  else
  {
    bzero((a1 + 92), 0x4FCuLL);
    bzero(*(a1 + 80), 24 * (v2 >> 8));

    return spaceman_free_extent_cache_table_init(a1);
  }

  return result;
}

uint64_t spaceman_free_extent_cache_scan_should_pause(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 88);
  if (a2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (*(*(*(a1 + 8) + 376) + 48 * *(a1 + 88) + 56) / v3 > 0x64)
  {
    return 0;
  }

  if (*a1)
  {
    pthread_mutex_lock((a1 + 16));
  }

  if ((*(a1 + 280) & 2) != 0 || (*(a1 + 88) >> 8) - 1 > *(a1 + 94))
  {
    goto LABEL_15;
  }

  v6 = *(a1 + 176);
  if (v6 <= *(a1 + 224))
  {
    v6 = *(a1 + 224);
  }

  if (v6 < *(a1 + 248) || (v7 = *(a1 + 128), (v7 - *(a1 + 120)) > 3))
  {
LABEL_15:
    v4 = 0;
  }

  else
  {
    *(a1 + 328) = v7;
    v4 = 1;
  }

  if (*a1)
  {
    pthread_mutex_unlock((a1 + 16));
  }

  return v4;
}

void spaceman_free_extent_cache_print_stats(void *a1)
{
  v33 = 0;
  if (!spaceman_get(a1, &v33))
  {
    v1 = 0;
    for (i = 1; ; i = 0)
    {
      v3 = i;
      v4 = v33[47] + 48 * v1;
      v7 = *(v4 + 48);
      v5 = v4 + 48;
      v6 = v7;
      if (!v7)
      {
        goto LABEL_42;
      }

      v8 = v33[v1 + 197];
      if (!v8)
      {
        goto LABEL_42;
      }

      v32 = v3;
      v9 = *(v5 + 24);
      v10 = *(v8 + 94);
      if (*v8)
      {
        pthread_mutex_lock((v8 + 16));
      }

      v11 = v8 + 1264;
      if (spaceman_fxc_tree_last(v8, v8 + 1264, 1u))
      {
        v31 = 0;
      }

      else
      {
        v31 = *(*(v8 + 80) + 24 * *(v11 + 4 * *(v8 + 1361)) + 8) & 0xFFFFFFFFFFFFFLL;
      }

      if (spaceman_fxc_tree_first(v8, v8 + 1264))
      {
        v12 = 0;
        v13 = 0;
      }

      else
      {
        v30 = *(*(v8 + 80) + 24 * *(v11 + 4 * *(v8 + 1361))) & 0xFFFFFFFFFFFFFLL;
        if (spaceman_fxc_tree_last(v8, v8 + 1264, 0))
        {
          v13 = 0;
          v12 = v30;
        }

        else
        {
          v14 = (*(v8 + 80) + 24 * *(v11 + 4 * *(v8 + 1361)));
          v12 = v30;
          v13 = (*v14 & 0xFFFFFFFFFFFFFLL) - v30 + (v14[1] & 0xFFFFFFFFFFFFFLL);
        }
      }

      v15 = *(v8 + 96);
      if (v15 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = *(v8 + 96);
      }

      if (v9)
      {
        v17 = v9;
      }

      else
      {
        v17 = v16;
      }

      if (v10)
      {
        v18 = v15 / v10;
      }

      else
      {
        v18 = 0;
      }

      log_info("%s:%d: %s dev %d smfree %lld/%lld table %d/%d blocks %lld %lld:%lld:%lld %d.%02d%% range %lld:%lld %d.%02d%% scans %lld\n", "spaceman_fxc_print_stats", 477, (*(*v8 + 384) + 212), *(v8 + 88), v9, v6, v10, (*(v8 + 88) >> 8) - 1, v15, *(v8 + 120), v18, v31, 10000 * v15 / v17 / 0x64, 10000 * v15 / v17 % 0x64, v12, v13, 10000 * v13 / v6 / 0x64, 10000 * v13 / v6 % 0x64, *(v8 + 336));
      v19 = (v8 + 272);
      v20 = 3;
      do
      {
        v21 = *(v19 - 4);
        if (v21)
        {
          if (v9)
          {
            v22 = v9;
          }

          else
          {
            v22 = *(v19 - 4);
          }

          v23 = *(v19 - 5);
          if (v23)
          {
            v24 = v21 / v23;
          }

          else
          {
            v24 = 0;
          }

          v25 = *(v19 - 2);
          log_info("%s:%d: %s dev %d scan_stats[%d]: foundmax %lld extents %lld blocks %lld long %lld avg %lld %d.%02d%% range %lld:%lld %d.%02d%%\n", "spaceman_fxc_print_stats", 496, (*(*v8 + 384) + 212), *(v8 + 88), v20 - 1, *v19, v23, v21, *(v19 - 3), v24, 10000 * v21 / v22 / 0x64, 10000 * v21 / v22 % 0x64, v25, *(v19 - 1), 10000 * *(v19 - 1) / v6 / 0x64, 10000 * *(v19 - 1) / v6 % 0x64);
        }

        v19 -= 6;
        --v20;
      }

      while (v20);
      v26 = *(v8 + 344);
      v27 = *v8;
      if (v26)
      {
        log_info("%s:%d: %s dev %d Searches: %lld success %lld fail %lld partial %lld, bm search yes:%lld (%lld/%lld/%lld) no:%lld/%lld\n", "spaceman_fxc_print_stats", 509, (*(v27 + 384) + 212), *(v8 + 88), v26, *(v8 + 352), *(v8 + 424), *(v8 + 416), *(v8 + 448), *(v8 + 456), *(v8 + 464), *(v8 + 472), *(v8 + 432), *(v8 + 440));
        v28 = *(v8 + 360);
        v3 = v32;
        if (v28)
        {
          v29 = *(v8 + 368) / v28;
        }

        else
        {
          v29 = 0;
        }

        log_info("%s:%d: %s dev %d Remainders: zero %lld one %lld tiny %lld small %lld good %lld, total %lld blocks %lld avg %lld\n", "spaceman_fxc_print_stats", 515, (*(*v8 + 384) + 212), *(v8 + 88), *(v8 + 408), *(v8 + 400), *(v8 + 392), *(v8 + 384), *(v8 + 376), v28, *(v8 + 368), v29);
        if (!*v8)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v3 = v32;
        if (!v27)
        {
          goto LABEL_42;
        }
      }

      pthread_mutex_unlock((v8 + 16));
LABEL_42:
      v1 = 1;
      if ((v3 & 1) == 0)
      {
        obj_release(v33);
        return;
      }
    }
  }
}

uint64_t spaceman_free_extent_cache_setup(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = a2 + 1576;
  for (i = 1; ; i = 0)
  {
    v7 = i;
    if (!*(v5 + 8 * v4))
    {
      v8 = *(*(a2 + 376) + 48 * v4 + 48);
      if (v8)
      {
        v9 = _apfs_calloc_typed(1uLL, 0x558uLL, 0x10200402E7C0D0DuLL);
        *(v5 + 8 * v4) = v9;
        if (!v9)
        {
          v12 = 12;
          goto LABEL_13;
        }

        v10 = v8 >> 18;
        if (v8 >> 18 >= 0xFF80)
        {
          LODWORD(v10) = 65408;
        }

        v11 = spaceman_free_extent_cache_init(a1, a2, v4, v10 + 128, v9);
        if (v11)
        {
          break;
        }
      }
    }

    v4 = 1;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = v11;
  v13 = *(v5 + 8 * v4);
  if (v13)
  {
    *(v13 + 280) |= 2uLL;
  }

LABEL_13:
  log_err("%s:%d: %s failed to initialize free extent cache for device %d, error %d\n", "spaceman_free_extent_cache_setup", 1556, (*(a1 + 384) + 212), v4, v12);
  return v12;
}

uint64_t spaceman_free_extent_cache_insert(unint64_t a1, int a2, unint64_t a3, unint64_t a4)
{
  if (!a1)
  {
    return 22;
  }

  v4 = a4;
  if ((a4 | a3) >> 52)
  {
    return 84;
  }

  if (!a4)
  {
    return 0;
  }

  if (*a1)
  {
    pthread_mutex_lock((a1 + 16));
  }

  v8 = *(a1 + 280);
  if ((v8 & 2) == 0)
  {
    v9 = a1 + 136 + 48 * ((v8 & 4) == 0);
    v11 = *(v9 + 40);
    v10 = (v9 + 40);
    if (v11 < v4)
    {
      *v10 = v4;
    }

    v74 = 0;
    v12 = spaceman_fxc_tree_node_recycle_smallest_if_full(a1, v4, a3);
    if (v12 == 55)
    {
      v13 = a1 + 16 * (a2 ^ 1u);
      v14 = *(v13 + 296);
      if (v14)
      {
        if (v14 < a3 && v4 + a3 < *(v13 + 304))
        {
          spaceman_fxc_dropped(a1, a3, v4);
          v15 = 0;
          *(v13 + 296) = a3;
          goto LABEL_27;
        }
      }
    }

    v16 = spaceman_extent_check(*a1, *(a1 + 8), a3, v4);
    if (v16)
    {
      v17 = v16;
      if (nx_ratelimit_log_allowed(*a1))
      {
        log_err("%s:%d: %s dev %d free extent %lld:%lld appears to span container metadata and should not be free: %d\n", "spaceman_free_extent_cache_insert", 1648, (*(*a1 + 384) + 212), *(a1 + 88), a3, v4, v17);
      }

      goto LABEL_23;
    }

    v18 = (a1 + 1068);
    updated = spaceman_fxc_tree_search(a1, 0, a3, v4, a1 + 1068);
    if (updated)
    {
      goto LABEL_25;
    }

    v21 = *(v18 + 2 * *(a1 + 1165));
    v22 = (a1 + 1166);
    v23 = *(a1 + 1148);
    *(a1 + 1230) = *(a1 + 1132);
    *(a1 + 1246) = v23;
    *(a1 + 1262) = *(a1 + 1164);
    v24 = *(a1 + 1084);
    *(a1 + 1166) = *v18;
    *(a1 + 1182) = v24;
    v25 = *(a1 + 1116);
    *(a1 + 1198) = *(a1 + 1100);
    *(a1 + 1214) = v25;
    if (v21)
    {
      v73 = a1 + 136;
      v15 = 0;
    }

    else
    {
      v47 = spaceman_fxc_tree_adjacent(a1, a1 + 1166, -1);
      v15 = v47;
      if ((v47 & 0xFFFFFFFD) != 0)
      {
        goto LABEL_26;
      }

      v73 = a1 + 136;
      if (v47 == 2)
      {
        v15 = 2;
        goto LABEL_33;
      }
    }

    v26 = *(v22 + 2 * *(a1 + 1263));
    v27 = (*(a1 + 80) + 24 * *(v22 + 2 * *(a1 + 1263)));
    v28 = *v27 & 0xFFFFFFFFFFFFFLL;
    v29 = v27[1] & 0xFFFFFFFFFFFFFLL;
    if (v29 + v28 >= a3)
    {
      v4 = v4 + a3 - v28;
      v48 = *(a1 + 1246);
      *(a1 + 1132) = *(a1 + 1230);
      *(a1 + 1148) = v48;
      *(a1 + 1164) = *(a1 + 1262);
      v49 = *(a1 + 1182);
      *v18 = *v22;
      *(a1 + 1084) = v49;
      v50 = *(a1 + 1214);
      *(a1 + 1100) = *(a1 + 1198);
      *(a1 + 1116) = v50;
      if (v4 <= v29)
      {
        if (v15)
        {
          v15 = 1;
          goto LABEL_26;
        }

        goto LABEL_27;
      }

      updated = spaceman_fxc_update_length(a1, v28, v29, v4, v26);
      if (updated)
      {
LABEL_25:
        v15 = updated;
LABEL_26:
        log_err("%s:%d: %s dev %d Error %d, reinitializing\n", "spaceman_free_extent_cache_insert", 1881, (*(*a1 + 384) + 212), *(a1 + 88), v15);
        spaceman_free_extent_cache_reset(a1);
        goto LABEL_27;
      }

      v51 = v73 + 48 * ((*(a1 + 280) & 4) == 0);
      v53 = *(v51 + 40);
      v52 = (v51 + 40);
      if (v53 < v4)
      {
        *v52 = v4;
      }

      spaceman_fxc_insert_invalidate_last_unwanted_ranges_if_needed(a1, v28, v4);
      v15 = 0;
LABEL_34:
      v30 = *(a1 + 1165);
      if (v30 < 0 || *(v18 + 2 * v30))
      {
        if (v15)
        {
          goto LABEL_26;
        }

        goto LABEL_37;
      }

      if (v12 == 55)
      {
        v54 = spaceman_fxc_tree_adjacent(a1, a1 + 1068, 1);
        if (v54)
        {
          v15 = v54;
          v55 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_76;
        }

        v61 = *(v18 + 2 * *(a1 + 1165));
        v62 = (*(a1 + 80) + 24 * *(v18 + 2 * *(a1 + 1165)));
        v63 = *v62;
        v55 = *v62 & 0xFFFFFFFFFFFFFLL;
        if (v28 + v4 < v55)
        {
          v15 = 2;
LABEL_76:
          spaceman_fxc_dropped(a1, v28, v4);
          v64 = a1 + 16 * (a2 ^ 1u);
          *(v64 + 296) = v28;
          *(v64 + 304) = v55;
          if (v15 != 2)
          {
            goto LABEL_26;
          }

LABEL_23:
          v15 = 0;
          goto LABEL_27;
        }

        v65 = v62[1] & 0xFFFFFFFFFFFFFLL;
        v66 = v55 - v28 + v65;
        if (v55 == *(a1 + 112))
        {
          *(a1 + 112) = v28;
        }

        *v62 = v63 & 0xFFF0000000000000 | v28;
        updated = spaceman_fxc_update_length(a1, v28, v65, v55 - v28 + v65, v61);
        if (!updated)
        {
          v67 = v73 + 48 * ((*(a1 + 280) & 4) == 0);
          v69 = *(v67 + 40);
          v68 = (v67 + 40);
          if (v69 >= v66)
          {
            goto LABEL_23;
          }

          v15 = 0;
          *v68 = v66;
LABEL_27:
          if (*a1)
          {
            pthread_mutex_unlock((a1 + 16));
          }

          return v15;
        }
      }

      else
      {
        v74 = 0;
        updated = spaceman_fxc_tree_insert_at_path(a1, v28, v4, &v74, a1 + 1068);
        if (!updated)
        {
          v56 = spaceman_fxc_tree_insert(a1, 1u, v28, v4, &v74);
          if (v56)
          {
            v15 = v56;
            if (!spaceman_fxc_tree_delete(a1, v28, v4))
            {
              spaceman_fxc_tree_node_free(a1, v74);
            }

            goto LABEL_26;
          }

          v70 = *(a1 + 120);
          if (v70 - 1 >= v4 || v4 == v70 && v28 > *(a1 + 112))
          {
            *(a1 + 112) = v28;
            *(a1 + 120) = v4;
          }

          if (v4 > *(a1 + 128))
          {
            *(a1 + 128) = v4;
          }

          v15 = spaceman_fxc_tree_search(a1, 0, v28, v4, a1 + 1068);
          spaceman_fxc_insert_invalidate_last_unwanted_ranges_if_needed(a1, v28, v4);
          LOBYTE(v30) = *(a1 + 1165);
          if (v15)
          {
            goto LABEL_26;
          }

LABEL_37:
          v71 = *(v18 + 2 * v30);
          v31 = v28 + v4;
          v32 = v4;
          v72 = v28 + v4;
          while (1)
          {
            v33 = *(a1 + 1148);
            *(a1 + 1230) = *(a1 + 1132);
            *(a1 + 1246) = v33;
            *(a1 + 1262) = *(a1 + 1164);
            v34 = *(a1 + 1084);
            *v22 = *v18;
            *(a1 + 1182) = v34;
            v35 = *(a1 + 1116);
            *(a1 + 1198) = *(a1 + 1100);
            *(a1 + 1214) = v35;
            v36 = spaceman_fxc_tree_adjacent(a1, a1 + 1166, 1);
            if (v36)
            {
              break;
            }

            v37 = *(v22 + 2 * *(a1 + 1263));
            v38 = (*(a1 + 80) + 24 * *(v22 + 2 * *(a1 + 1263)));
            v39 = *v38 & 0xFFFFFFFFFFFFFLL;
            if (v31 < v39)
            {
              goto LABEL_67;
            }

            v40 = v28;
            v41 = v38[1] & 0xFFFFFFFFFFFFFLL;
            if (v41 + v39 >= v31)
            {
              v42 = v41 + v39 - v31;
            }

            else
            {
              v42 = 0;
            }

            spaceman_fxc_tree_delete_at_path(a1, a1 + 1166);
            v43 = spaceman_fxc_tree_search(a1, 1u, v39, v41, a1 + 1068);
            if (v43)
            {
              v60 = v43;
LABEL_73:
              log_err("%s:%d: %s dev %d Failed to find successor node in length tree: %d\n", "spaceman_free_extent_cache_insert", 1852, (*(*a1 + 384) + 212), *(a1 + 88), v60);
              v15 = v60;
              goto LABEL_26;
            }

            if (!*(v18 + 2 * *(a1 + 1165)))
            {
              v60 = 2;
              goto LABEL_73;
            }

            v28 = v40;
            if (v39 == *(a1 + 112))
            {
              v44 = *(a1 + 1148);
              *(a1 + 1230) = *(a1 + 1132);
              *(a1 + 1246) = v44;
              *(a1 + 1262) = *(a1 + 1164);
              v45 = *(a1 + 1084);
              *v22 = *v18;
              *(a1 + 1182) = v45;
              v46 = *(a1 + 1116);
              *(a1 + 1198) = *(a1 + 1100);
              *(a1 + 1214) = v46;
              spaceman_fxc_update_smallest_with_successor(a1, a1 + 1166);
            }

            v32 += v42;
            spaceman_fxc_tree_delete_at_path(a1, a1 + 1068);
            spaceman_fxc_tree_node_free(a1, v37);
            v15 = spaceman_fxc_tree_search(a1, 0, v40, v4, a1 + 1068);
            v31 = v72;
            if (v15)
            {
              goto LABEL_26;
            }
          }

          v15 = v36;
          if (v36 != 2)
          {
            goto LABEL_26;
          }

LABEL_67:
          if (v32 <= v4)
          {
            goto LABEL_23;
          }

          updated = spaceman_fxc_update_length(a1, v28, v4, v32, v71);
          if (!updated)
          {
            v57 = v73 + 48 * ((*(a1 + 280) & 4) == 0);
            v59 = *(v57 + 40);
            v58 = (v57 + 40);
            if (v59 >= v32)
            {
              goto LABEL_23;
            }

            v15 = 0;
            *v58 = v32;
            goto LABEL_27;
          }

          goto LABEL_25;
        }
      }

      goto LABEL_25;
    }

LABEL_33:
    v28 = a3;
    goto LABEL_34;
  }

  if (*a1)
  {
    pthread_mutex_unlock((a1 + 16));
  }

  return 45;
}