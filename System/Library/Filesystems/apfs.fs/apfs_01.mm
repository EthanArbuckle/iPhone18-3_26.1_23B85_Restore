uint64_t sub_10000CB64(uint64_t *a1, unint64_t a2, int64_t a3)
{
  v14 = 0;
  if (sub_100009C74(a1, &v14) || (v13 = sub_100009B88(a1, v14, a2, a3), obj_release(v14), !v13))
  {
    a1[120] += a3;
    if (a3 < 2)
    {
      v8 = 0;
    }

    else
    {
      v6 = 0;
      v7 = a3;
      do
      {
        v8 = v6 + 1;
        if (v7 < 4)
        {
          break;
        }

        v7 >>= 2;
      }

      while (v6++ < 4);
    }

    ++a1[v8 + 121];
    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    tv_sec = __tp.tv_sec;
    v11 = SLODWORD(__tp.tv_nsec) / 1000;
    dev_unmap(a1[48]);
    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    a1[119] += 1000000 * (__tp.tv_sec - tv_sec) - v11 + SLODWORD(__tp.tv_nsec) / 1000;
  }

  else if (sub_10000762C(a1))
  {
    log_err("%s:%d: %s free extent %lld:%lld appears to span container metadata and should not be free: %d\n", "spaceman_trim_free_extent_callback", 4335, (a1[48] + 212), a2, a3, v13);
  }

  return 0;
}

uint64_t sub_10000CD00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 < v3;
  v5 = v2 > v3;
  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_10000CD18(uint64_t a1)
{
  v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v5);
  tv_sec = v5.tv_sec;
  v3 = SLODWORD(v5.tv_nsec) / 1000;
  dev_unmap_flush(*(a1 + 384));
  v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  result = clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v5);
  *(a1 + 952) += 1000000 * (v5.tv_sec - tv_sec) - v3 + SLODWORD(v5.tv_nsec) / 1000;
  return result;
}

uint64_t sub_10000CDD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 >= v3;
  v5 = v2 != v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_10000CE04(uint64_t *a1, int a2, unsigned int a3)
{
  dev_features(a1[48]);
  v6 = 0;
  if (a3)
  {
    if (a2)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    a1[118] = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
    v6 = sub_10000B45C(a1, v7 | a3, 0, 0, a1);
    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    v8 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000 - a1[118];
    v10 = a1[48] + 212;
    log_debug("%s:%d: %s scan took %lld.%06lld s (no trims)\n");
  }

  return v6;
}

uint64_t sub_10000D16C(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
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
        v10 = v8 < v9;
        v7 = v8 > v9;
        if (v10)
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

uint64_t sub_10000D1C8(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5, _BYTE *a6)
{
  v6 = *(a2 + 376);
  memset(v23, 170, sizeof(v23));
  *a6 = 0;
  v7 = v6 + 40 * a3;
  if (!*(v7 + 208))
  {
    return 0;
  }

  v21 = -1431655766;
  v22 = -1431655766;
  v14 = sub_10000B310();
  if (v14)
  {
    v15 = v14;
    log_err("%s:%d: %s can't get spaceman %d free queue tree %lld: %d\n", "spaceman_fq_tree_find_overlap", 4969, (*(a1 + 384) + 212), a3, *(v7 + 208), v14);
  }

  else
  {
    v16 = *(v7 + 216);
    if (v16 > obj_xid(a2))
    {
LABEL_23:
      v15 = 0;
    }

    else
    {
      v17 = a5 + a4;
      do
      {
        v21 = 8;
        v22 = 16;
        v23[0] = v16;
        v23[1] = a4;
        v18 = bt_lookup_variant(v23[3], 0, v23, &v22, 0x10u, &v23[2], &v21, 1u, 0, 0);
        if (v18 != 2)
        {
          v15 = v18;
          if (v18)
          {
            break;
          }

          if (!v21)
          {
            v23[2] = 1;
          }

          if (v16 == v23[0] && v23[2] + v23[1] > a4 && v17 > v23[1])
          {
            goto LABEL_27;
          }
        }

        v21 = 8;
        v22 = 16;
        v23[0] = v16;
        v23[1] = a4;
        v19 = bt_lookup_variant(v23[3], 0, v23, &v22, 0x10u, &v23[2], &v21, 4u, 0, 0);
        v15 = v19;
        if (v19 != 2)
        {
          if (v19)
          {
            break;
          }

          if (!v21)
          {
            v23[2] = 1;
          }

          if (v16 == v23[0] && v23[2] + v23[1] > a4 && v17 > v23[1])
          {
LABEL_27:
            v15 = 0;
            *a6 = 1;
            goto LABEL_24;
          }
        }

        ++v16;
      }

      while (v16 <= obj_xid(a2));
      if ((v15 | 2) == 2)
      {
        goto LABEL_23;
      }

      log_err("%s:%d: %s error searching spaceman free queue tree: %d\n", "spaceman_fq_tree_find_overlap", 5023, (*(a1 + 384) + 212), v15);
    }

LABEL_24:
    obj_release(v23[3]);
  }

  return v15;
}

uint64_t sub_10000D428(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  v4 = *(a3 + 56);
  v5 = *(*(a1 + 376) + 40 * a2 + 224);
  if (a4)
  {
    v6 = *(*(a3 + 392) + 32);
    if (v5 >= 2)
    {
      return v6 > v5 >> 1;
    }

    if (v6 <= 1)
    {
      v9 = v4[25] + v4[23] + v4[27];
      v10 = v9 >= obj_size_phys(a3) >> 1;
      return !v10;
    }

    return 1;
  }

  if (v5 >= 2)
  {
    return *(*(a3 + 392) + 32) > (3 * v5) >> 2;
  }

  if (*(*(a3 + 392) + 32) > 1uLL)
  {
    return 1;
  }

  v11 = v4[25] + v4[23] + v4[27];
  v10 = v11 >= obj_size_phys(a3) >> 2;
  return !v10;
}

uint64_t sub_10000D4FC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v6 = *(a2 + 376);
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v7 = *(v6 + 152);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = *(v6 + 176);
    v9 = v8 + v7;
    v10 = __OFSUB__(a3, v8);
    v11 = a3 - v8;
    if (v11 < 0 != v10 || v9 <= a3)
    {
      return 22;
    }

    v13 = 0;
LABEL_12:
    *a4 = v11;
    return v13;
  }

  v15 = (a2 + 1512);
  if (*(a2 + 1512))
  {
    goto LABEL_8;
  }

  v29 = 0xAAAAAAAAAAAAAAAALL;
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v17 = btree_create(a1, 2281701376, 0, 0, 0, 8, 16, sub_1000069C0, 0, a2 + 1512);
  if (v17)
  {
    return v17;
  }

  v34 = 0xAAAAAAAAAAAAAAAALL;
  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v32[0] = v18;
  v32[1] = v18;
  v32[2] = v18;
  v32[3] = v18;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  v17 = sub_1000069F4(a1, *(*(a2 + 376) + 176), &v34);
  if (v17)
  {
    return v17;
  }

  v31 = 0;
  bt_iterator_init(v32, v34, 0, 0, &v31, 8, 8u, &v29, 0x10u);
  v13 = v20;
  if (!bt_iterator_ended(v32))
  {
    while (1)
    {
      v27 = v29;
      v28[0] = v31;
      v28[1] = v30;
      v22 = bt_insert(*v15, 0, &v27, 8, v28, 0x10u, 0);
      if (v22)
      {
        break;
      }

      v21 = bt_iterator_next(v32);
      if (v21)
      {
        v13 = v21;
        v23 = (*(a1 + 384) + 212);
        v24 = strerror(v21);
        log_err("%s:%d: %s failed to get next internal pool reverse mapping, error %s(%d)\n", "spaceman_set_up_ip_reverse_mapping_tree", 5174, v23, v24, v13);
        goto LABEL_26;
      }

      if (bt_iterator_ended(v32))
      {
        obj_release(v34);
        goto LABEL_8;
      }
    }

    v13 = v22;
LABEL_26:
    obj_release(v34);
    return v13;
  }

  obj_release(v34);
  if (!v13)
  {
LABEL_8:
    *&v32[0] = a3;
    LODWORD(v29) = 8;
    LODWORD(v28[0]) = 16;
    v13 = bt_lookup_variant(*v15, 0, v32, &v29, 8u, &v25, v28, 1u, 0, 0);
    if (v13)
    {
      return v13;
    }

    if (a3 - *&v32[0] >= v26)
    {
      return 2;
    }

    v13 = 0;
    v11 = v25 + a3 - *&v32[0];
    goto LABEL_12;
  }

  return v13;
}

uint64_t sub_10000D764(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a2 + 376);
  v6 = *(v5 + 164) & 0x7FFFFFFF;
  if (v6 <= a3)
  {
    return 22;
  }

  v7 = *(v5 + 322);
  if (v7 == 0xFFFF)
  {
    v8 = *(a2 + 888);
    goto LABEL_7;
  }

  if (v6 > v7)
  {
    v8 = *(a2 + 888);
    *(v8 + 2 * *(v5 + 322)) = a3;
LABEL_7:
    *(v8 + 2 * a3) = -1;
    *(v5 + 322) = a3;
    if (*(v5 + 320) == -1)
    {
      *(v5 + 320) = a3;
    }

    obj_dirty(a2, a4, 0);
    return 0;
  }

  return nx_corruption_detected_int(a1);
}

uint64_t sub_10000D80C(uint64_t a1, pthread_mutex_t *a2, unint64_t a3, uint64_t a4)
{
  v8 = 22;
  if (xid_is_current_tx(a1, a4))
  {
    pthread_mutex_lock(a2 + 7);
    v9 = sub_10000D4FC(a1, a2, a3, &v11);
    if (v9 == 2)
    {
      v8 = 22;
    }

    else
    {
      v8 = v9;
    }

    if (!v8)
    {
      v8 = sub_10000D8B4(a1, a2, 0, a3, 1, a4);
    }

    pthread_mutex_unlock(a2 + 7);
  }

  return v8;
}

uint64_t sub_10000D8B4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a2 + 376);
  v36 = 0xAAAAAAAAAAAAAAAALL;
  v35[0] = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  memset(v33, 170, 24);
  v13 = sub_10000B310();
  if (!v13)
  {
    *&v32 = 0;
    *&v34 = a6;
    *(&v34 + 1) = a4;
    v30 = 8;
    v31 = 16;
    v14 = bt_lookup_variant(v36, 0, &v34, &v31, 0x10u, v35, &v30, 1u, 0, 0);
    if (v14 == 2)
    {
      goto LABEL_13;
    }

    v13 = v14;
    if (v14)
    {
      goto LABEL_43;
    }

    if (v34 != a6)
    {
      goto LABEL_13;
    }

    if (v30)
    {
      v15 = v35[0];
    }

    else
    {
      v15 = 1;
      v35[0] = 1;
    }

    if (v15 + *(&v34 + 1) <= a4)
    {
      if (v15 + *(&v34 + 1) != a4)
      {
        goto LABEL_13;
      }
    }

    else
    {
      log_err("%s:%d: %s range 0x%llx:%lld overlaps with recently-freed range 0x%llx:%lld\n", "spaceman_fq_tree_insert", 4855, (*(a1 + 384) + 212), a4, a5, *(&v34 + 1), v15);
      v15 = v35[0];
      a5 += a4 - (v35[0] + *(&v34 + 1));
      if (a5 < 1)
      {
        v13 = 22;
        goto LABEL_43;
      }

      a4 = v35[0] + *(&v34 + 1);
    }

    v33[0] = v34;
    v16 = v15 + a5;
    *&v33[1] = v15 + a5;
    if (v34)
    {
LABEL_14:
      v34 = v33[0];
      v30 = 8;
      v31 = 16;
      v17 = bt_lookup_variant(v36, 0, &v34, &v31, 0x10u, v35, &v30, 4u, 0, 0);
      if (v17 == 2)
      {
LABEL_31:
        v30 = 8 * (v16 != 1);
        v13 = bt_insert(v36, 0, v33, 16, &v33[1], v30, a6);
        if (!v13)
        {
          pthread_mutex_lock((a2 + 576));
          v22 = v12 + 40 * a3;
          v25 = *(v22 + 200);
          v23 = (v22 + 200);
          v24 = v25;
          if (!v25)
          {
            v23[2] = a6;
          }

          *v23 = v24 + a5;
          pthread_mutex_unlock((a2 + 576));
          obj_dirty(a2, a6, 0);
          if (v32)
          {
            v26 = bt_remove(v36, 0, &v32, 0x10u, a6);
            if (v26)
            {
              log_err("%s:%d: %s removal of replaced free extent failed: %d\n", "spaceman_fq_tree_insert", 4932, (*(a1 + 384) + 212), v26);
            }
          }

          if (sub_10000D428(a2, a3, v36, 0))
          {
            *&v27 = 0xAAAAAAAAAAAAAAAALL;
            *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v29[2] = v27;
            v29[3] = v27;
            v29[0] = v27;
            v29[1] = v27;
            sub_10000A0D8(a1, v29, 0, 0);
              ;
            }

            sub_10000A9E8(a1, v29);
          }

          v13 = 0;
        }

        goto LABEL_43;
      }

      v13 = v17;
      if (!v17)
      {
        if (v34 == a6)
        {
          if (v30)
          {
            v18 = v35[0];
          }

          else
          {
            v18 = 1;
            v35[0] = 1;
          }

          v19 = v16 + *(&v33[0] + 1);
          if (*(&v34 + 1) <= v16 + *(&v33[0] + 1))
          {
            if (*(&v34 + 1) < v16 + *(&v33[0] + 1))
            {
              v20 = v18 + *(&v34 + 1);
              log_err("%s:%d: %s range 0x%llx:%lld overlaps with recently-freed range 0x%llx:%lld\n", "spaceman_fq_tree_insert", 4897, (*(a1 + 384) + 212), a4, a5, *(&v34 + 1), v18);
              if (v20 > v19)
              {
                v16 += v20 - v19;
                *&v33[1] = v16;
              }

              if (v20 >= v19)
              {
                v21 = v19;
              }

              else
              {
                v21 = v20;
              }

              a5 = a5 - v21 + *(&v34 + 1);
            }

            else
            {
              v16 += v18;
              *&v33[1] = v16;
            }

            v32 = v34;
          }
        }

        goto LABEL_31;
      }

LABEL_43:
      obj_release(v36);
      return v13;
    }

LABEL_13:
    *&v33[0] = a6;
    *(&v33[0] + 1) = a4;
    v16 = a5;
    *&v33[1] = a5;
    goto LABEL_14;
  }

  return v13;
}

uint64_t sub_10000DC8C(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, int a5, uint64_t a6)
{
  if (!xid_is_current_tx(a1, a6))
  {
    return 22;
  }

  v12 = sub_100009B88(a1, a2, a3, a4);
  if (v12)
  {
    v13 = v12;
    if (sub_10000762C(a1))
    {
      log_err("%s:%d: %s attempt to free extent (0x%llx:0x%llx) which should not be free: %d\n", "spaceman_freed", 6134, (a1[48] + 212), a3, a4, v13);
    }

    return 22;
  }

  dev_unmap(a1[48]);

  return sub_10000DD98(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_10000DD98(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, int a5, uint64_t a6)
{
  if (a4)
  {
    spaceman_handle_metazone_freed(a1, a2, a3);
  }

  v12 = sub_100010C34(a1, 0, a2, a3, a4, a6, 1, a5);
  if (!v12)
  {
    sub_1000010D4(*(a2 + 1576), 0, a3, a4);
  }

  return v12;
}

void *sub_10000DE34(uint64_t a1, uint64_t a2)
{
  *(a2 + 1538) = 256;
  *(a2 + 1542) = 0;
  result = _apfs_calloc_typed(0x100uLL, 0x10uLL, 0x1000040451B5BE8uLL);
  *(a2 + 1544) = result;
  if (!result)
  {
    *(a2 + 1538) = 0;
  }

  return result;
}

uint64_t sub_10000DE8C(const char *a1, int a2, uint64_t a3, unint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v164 = 0;
  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v150 = v11;
  v151 = v11;
  v149 = v11;
  v166 = 0;
  v147 = 0;
  v12 = 0;
  v13 = a1;
  if (obj_type(a1) == 13)
  {
    v13 = *(a1 + 49);
    v12 = a1;
  }

  BYTE8(v163) = a6 != 0;
  BYTE9(v163) = 1;
  if (a6)
  {
    v14 = a2 | 0x1000;
  }

  else
  {
    v14 = a2 & 0xFFFFEBFF;
  }

  DWORD2(v162) = v14;
  LODWORD(v163) = 0;
  v15 = *(v13 + 376);
  v16 = *(v15 + 1240);
  v17 = a3;
  v155.i64[0] = a3;
  *&v157 = v16;
  v18 = *(v15 + 1248);
  *(&v157 + 1) = v18 + v16;
  if (!v18)
  {
    v157 = 0uLL;
  }

  DWORD1(v163) = 0;
  v19 = *(v13 + 1024);
  v20 = v19 + *(v13 + 1016);
  *&v156 = *(v13 + 1016);
  *(&v156 + 1) = v20;
  if ((*(v13 + 634) & 1) != 0 || !v19)
  {
    v156 = 0uLL;
    if ((v14 & 0x80) == 0)
    {
LABEL_11:
      if ((v14 & 0x200) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }
  }

  else if ((v14 & 0x80) == 0)
  {
    goto LABEL_11;
  }

  v14 |= 0x8100u;
  DWORD2(v162) = v14;
  if ((v14 & 0x200) == 0)
  {
LABEL_12:
    if ((v14 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_21:
  v14 |= 0x102u;
  DWORD2(v162) = v14;
  *a5 = *(v13 + 1032);
  if ((v14 & 0x400) != 0)
  {
LABEL_13:
    v14 |= 0x100u;
    DWORD2(v162) = v14;
  }

LABEL_14:
  if (*(v13 + 637) == 1)
  {
    v14 |= 0x900u;
    DWORD2(v162) = v14;
  }

  if ((v14 & 2) != 0)
  {
    v14 &= ~0x40u;
    DWORD2(v162) = v14;
    v137 = *a5;
    if ((v14 & 0x40) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v137 = 0;
    if ((v14 & 0x40) != 0)
    {
LABEL_18:
      BYTE11(v163) = 1;
      v21 = *a5;
      goto LABEL_25;
    }
  }

  v21 = 3;
LABEL_25:
  v142 = v21;
  *a5 = 0;
  if ((v14 & 4) != 0)
  {
    if (a3 < 1)
    {
      return 22;
    }
  }

  else
  {
    v22 = 22;
    if (!xid_is_current_tx(v13, a4) || a3 < 1)
    {
      return v22;
    }
  }

  v165 = 0xAAAAAAAAAAAAAAAALL;
  *&v23 = 0xAAAAAAAAAAAAAAAALL;
  *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v148[0] = v23;
  v148[1] = v23;
  v148[2] = v23;
  v148[3] = v23;
  v22 = sub_100009C74(v13, &v165);
  if (v22)
  {
    return v22;
  }

  v24 = v165;
  v136 = v165[47];
  v25 = v165[199];
  if (v25)
  {
    v26 = v155.i64[0];
    v27.i64[0] = vdupq_n_s64(1uLL).u64[0];
    v27.i64[1] = v155.i64[0];
    *v25 = vaddq_s64(*v25, v27);
    if (BYTE11(v163) == 1)
    {
      ++v25[1].i64[0];
      goto LABEL_34;
    }

    if (v26 > 2)
    {
      if (v26 == 4)
      {
        v28 = 7;
      }

      else
      {
        if (v26 != 3)
        {
LABEL_34:
          if (v26 <= 1)
          {
            goto LABEL_49;
          }

          goto LABEL_46;
        }

        v28 = 6;
      }
    }

    else
    {
      if (v26 == 1)
      {
        v29 = 2;
LABEL_48:
        ++v25[v29].i64[0];
        goto LABEL_49;
      }

      if (v26 != 2)
      {
        goto LABEL_34;
      }

      v28 = 5;
    }

    ++v25->i64[v28];
LABEL_46:
    if (BYTE8(v163))
    {
      goto LABEL_49;
    }

    v29 = 4;
    goto LABEL_48;
  }

LABEL_49:
  v30 = DWORD2(v162);
  if ((WORD4(v162) & 0x200) != 0)
  {
    v31 = *(v136 + 48 * DWORD1(v163) + 48);
    *&v156 = *(&v156 + 1);
    *(&v156 + 1) = v31;
  }

  if ((BYTE8(v163) & 1) == 0 && v155.i64[0] >= *(v136 + 96) + *(v136 + 48))
  {
    v22 = 28;
LABEL_289:
    v112 = v165;
    v113 = v165[199];
    if (v113)
    {
      ++*(v113 + 72);
    }

    obj_release(v112);
    return v22;
  }

  if ((BYTE8(v162) & 2) != 0 && v137 >= *(v136 + 48))
  {
    v30 = DWORD2(v162) & 0xFFFFFFFD;
    DWORD2(v162) &= ~2u;
  }

  if ((v30 & 0x1A) == 2)
  {
    v30 |= 8u;
    DWORD2(v162) = v30;
  }

  v22 = sub_10000F34C(v24, v30, &v166, &v147, (*(*(v13 + 376) + 48) >> 1) & 1);
  if (v22)
  {
    goto LABEL_289;
  }

  pthread_mutex_lock(v165 + 6);
  if (BYTE11(v163) & 1) != 0 || (BYTE9(v162))
  {
    BYTE9(v163) = 0;
  }

  v135 = v12;
  v131 = a5;
  if (!v165[187])
  {
    DWORD2(v162) |= 0x100u;
  }

  v32 = 0;
  v134 = a1 + 4040;
  v33 = v136 + 48;
  v132 = 2;
  v133 = 0;
LABEL_65:
  v139 = v147;
  v34 = v133;
  while (2)
  {
    v35 = v17;
    v133 = v34;
    v143 = v32;
    while (1)
    {
      do
      {
        while (1)
        {
          v32 = v143;
          v36 = v35;
          if (v139 > v143)
          {
            goto LABEL_77;
          }

          if (BYTE9(v163) == 1)
          {
            BYTE9(v163) = 0;
            if (!v156)
            {
              v32 = 0;
              goto LABEL_77;
            }
          }

          else if (!v156)
          {
            goto LABEL_287;
          }

          if ((BYTE9(v162) & 2) == 0)
          {
            v37 = obj_type(a1);
            v38 = a1 + 4040;
            if (v37 != 13)
            {
              v38 = (*(a1 + 48) + 212);
            }

            log_debug("%s:%d: %s Could not find data to allocate outside the soft block-out range, disable soft block-out range\n", "spaceman_alloc", 7990, v38);
            *(v13 + 634) = 1;
            *(v13 + 1048) = 0;
          }

          v32 = 0;
          v156 = 0uLL;
LABEL_77:
          v39 = *(&v166 + v32);
          HIDWORD(v162) = v39;
          v143 = v32 + 1;
          BYTE12(v163) = 0;
          v41 = v39 == DWORD1(v163) && *(&v156 + 1) != 0;
          BYTE10(v163) = v41;
          v155 = v35;
          if ((v14 & 4) != 0)
          {
            v42 = v35;
            goto LABEL_85;
          }

          v46 = DWORD2(v162);
          v47 = v165;
          if (BYTE8(v162))
          {
            v49 = &v165[v39];
            if ((BYTE8(v162) & 0x40) != 0)
            {
              v51 = v49[106];
              v42 = v35;
              if (v51 >= v35)
              {
                goto LABEL_85;
              }

              v104 = obj_type(a1);
              if (v104 == 13)
              {
                v105 = &v165[HIDWORD(v162)];
                v127 = v105[106];
                v129 = v105[104];
              }

              else
              {
                v110 = *(a1 + 48) + 212;
                v111 = &v165[HIDWORD(v162)];
                v128 = v111[106];
                v130 = v111[104];
              }

              log_err("%s:%d: %s Bogus attempt to perform metadata reserved allocation %lld with insufficient reserve %lld (%lld)\n");
            }

            else
            {
              v50 = v49[104] - v49[106];
              v42 = v35;
              if (v50 >= v35)
              {
                goto LABEL_85;
              }

              v103 = obj_type(a1);
              if (v103 != 13)
              {
                v109 = *(a1 + 48) + 212;
              }

              v126 = v165[HIDWORD(v162) + 104] - v165[HIDWORD(v162) + 106];
              log_err("%s:%d: %s Bogus attempt to perform non-metadata reserved allocation %lld with insufficient reserve %lld (%lld)\n");
            }

LABEL_287:
            v22 = 28;
            goto LABEL_288;
          }

          if ((DWORD2(v162) & 0x30000) == 0)
          {
            sub_100009BFC(v13, v165);
            v47 = v165;
            LODWORD(v39) = HIDWORD(v162);
            v46 = DWORD2(v162);
          }

          v48 = sub_10000F424(v13, v135, v47, v39, v46, v155.i64, a4);
          if (v48 != 7)
          {
            break;
          }

          if (v139 <= v143)
          {
            BYTE9(v163) = 0;
          }
        }

        v22 = v48;
        if (v48)
        {
          goto LABEL_288;
        }

        LODWORD(v39) = HIDWORD(v162);
        v42 = v155.i64[0];
LABEL_85:
        v43 = 0;
        v140 = v165[13 * v39 + 139] & BYTE11(v163);
        if ((v140 & 1) == 0 && (v42 - 5) >= 0xFFFFFFFFFFFFFFFCLL)
        {
          v43 = v42 - 1;
          v44 = &v165[17 * v39 + 153];
          if (LOBYTE(v44[4 * v43 + 3]) == 1 && (BYTE9(v162) & 1) == 0)
          {
            BYTE12(v163) = 1;
            metazone_alloc_index = v44[4 * v43];
LABEL_98:
            *(&v159 + 1) = metazone_alloc_index;
            goto LABEL_113;
          }
        }

        if (((v165[13 * v39 + 139] & BYTE11(v163)) & (v142 < 3)) == 1)
        {
          metazone_alloc_index = spaceman_get_metazone_alloc_index(v165, v39, v142);
          goto LABEL_98;
        }

        if (v39 || (BYTE8(v162) & 2) == 0)
        {
          if ((WORD4(v162) & 0x800) == 0)
          {
            metazone_alloc_index = v165[v39 + 125];
            goto LABEL_98;
          }

          metazone_alloc_index = 0;
          *(&v159 + 1) = 0;
        }

        else
        {
          metazone_alloc_index = v137;
          v155.i64[1] = v137;
          *(&v159 + 1) = v137;
        }

        DWORD2(v162) |= 0x4000u;
LABEL_113:
        if (BYTE12(v163))
        {
          v52 = v165;
          v53 = HIDWORD(v162);
          if ((BYTE9(v162) & 1) != 0 || v155.i64[0] <= (*(v165[HIDWORD(v162) + 187] + 4 * (metazone_alloc_index / *(v136 + 36))) & 0xFFFFFFu))
          {
            v54 = 1;
          }

          else
          {
            v54 = 0;
            BYTE12(v163) = 0;
          }
        }

        else
        {
          v54 = 0;
          v52 = v165;
          v53 = HIDWORD(v162);
        }

        BYTE14(v163) = 0;
        v158 = 0uLL;
        v160 = 0uLL;
        *(&v161 + 1) = 0;
        *&v162 = 0;
        v55 = v52[v53 + 197];
        v56 = BYTE11(v163);
        v138 = v43;
        if (!v55 || (BYTE11(v163) & 1) != 0 || (v54 & 1) != 0)
        {
          goto LABEL_145;
        }

        if ((WORD4(v162) & 0x8400) != 0)
        {
          goto LABEL_146;
        }

        v158 = vextq_s8(v155, v155, 8uLL);
        BYTE14(v163) = 1;
        if (BYTE9(v163))
        {
          v57 = DWORD2(v162) | 0x2000;
        }

        else
        {
          v57 = DWORD2(v162) & 0xFFFF5BFF;
        }

        DWORD2(v162) = v57;
        v58 = sub_100002F78(v55, v57, v158.i64, &v158.u64[1]);
      }

      while (v58 == 28);
      v59 = v158.u64[1];
      v60 = v158.i64[0];
      if (v158.i64[1] && !v158.i64[0])
      {
        v158 = 0uLL;
        v59 = 0;
      }

      v53 = HIDWORD(v162);
      if (v132 == HIDWORD(v162))
      {
        v61 = 0;
      }

      else
      {
        v61 = 3;
      }

      if (v58 != 3)
      {
        v61 = v58;
      }

      if (v61 == 3)
      {
        *&v85 = 0xAAAAAAAAAAAAAAAALL;
        *(&v85 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v145 = v85;
        v146 = v85;
        v144 = v85;
        *&v144 = v165[HIDWORD(v162) + 197];
        *(&v144 + 1) = v155.i64[0];
        *&v145 = v59;
        *(&v145 + 1) = sub_100002F50(SWORD4(v162), v155.u64[0], v59);
        *&v146 = 0;
        *(&v146 + 1) = DWORD2(v162);
        v86 = v165;
        v87 = &v165[HIDWORD(v162)];
        v88 = v87 + 102;
        v89 = v87[102];
        if ((v89 & 0x10) != 0)
        {
          v90 = v87[102];
          do
          {
            *v88 = v90 | 0x20;
            cv_wait(v86 + 16, v86 + 6, 8, "spaceman_alloc_fxc_scan_wait", 0);
            v86 = v165;
            v91 = &v165[HIDWORD(v162)];
            v88 = v91 + 102;
            v90 = v91[102];
          }

          while ((v90 & 0x10) != 0);
          *v88 = v90 | 0x10;
          if ((v89 & 0x10) == 0 || *(v91[197] + 128) < *(&v145 + 1))
          {
            goto LABEL_245;
          }

          v22 = 0;
        }

        else
        {
          *v88 = v89 | 0x10;
LABEL_245:
          pthread_mutex_unlock(v86 + 6);
          v132 = HIDWORD(v162);
          if (HIDWORD(v162) == 1)
          {
            v92 = 42;
          }

          else
          {
            v92 = 38;
          }

          v93 = sub_10000B45C(v13, v92, 0, sub_10000F778, &v144);
          pthread_mutex_lock(v165 + 6);
          if (v93 == 34 || v93 == 37)
          {
            v95 = 0;
          }

          else
          {
            v95 = v93;
          }

          if (v93 == HIDWORD(v146))
          {
            v22 = v95;
          }

          else
          {
            v22 = v93;
          }
        }

        v17 = a3;
        v158 = 0uLL;
        v96 = v165;
        v97 = HIDWORD(v162);
        v98 = v165[HIDWORD(v162) + 102];
        if ((v98 & 0x20) != 0)
        {
          cv_wakeup(v165 + 16);
          v96 = v165;
          v97 = HIDWORD(v162);
          v98 = v165[HIDWORD(v162) + 102];
        }

        v96[v97 + 102] = v98 & 0xFFFFFFFFFFFFFFCFLL;
        if (v22)
        {
LABEL_288:
          pthread_mutex_unlock(v165 + 6);
          goto LABEL_289;
        }

        goto LABEL_65;
      }

      v36 = v35;
      if (!v61 && v59 && v60)
      {
        *(&v161 + 1) = v60;
        *&v162 = v59;
        if (BYTE10(v163) != 1)
        {
          goto LABEL_143;
        }

        v22 = 0;
        if ((BYTE9(v162) & 2) == 0 && v60 < *(&v156 + 1))
        {
          if ((v59 + v60) < v156)
          {
LABEL_143:
            v22 = 0;
            goto LABEL_207;
          }

          v77 = obj_type(a1);
          v78 = a1 + 4040;
          if (v77 != 13)
          {
            v78 = (*(a1 + 48) + 212);
          }

          log_debug("%s:%d: %s Could not find data to allocate outside the soft block-out range, disable soft block-out range\n", "spaceman_alloc", 8208, v78);
          v22 = 0;
          *(v13 + 634) = 1;
          *(v13 + 1048) = 0;
        }

        goto LABEL_207;
      }

      DWORD2(v162) |= 0x100u;
      v56 = BYTE11(v163);
LABEL_145:
      if ((v56 & 1) == 0)
      {
LABEL_146:
        if ((BYTE12(v163) & 1) == 0 && v165[v53 + 187] && (BYTE9(v162) & 1) == 0)
        {
          *&v149 = *(&v159 + 1);
          *(&v149 + 1) = v155.i64[0];
          LOBYTE(v150) = BYTE9(v163);
          BYTE8(v151) = BYTE8(v163) ^ 1;
          *(&v150 + 1) = 0;
          *&v151 = 0;
          if (BYTE10(v163) == 1)
          {
            *(&v150 + 1) = v156;
            *&v151 = *(&v156 + 1) - v156;
          }

          sub_10000F7F0(v165, v53, &v149, &v152);
          if (v62)
          {
            v63 = v62;
            BYTE9(v163) = 0;
            if (v62 != 28)
            {
              if (obj_type(a1) == 13)
              {
                log_err("%s:%d: %s failed to search bitmap hints: %d\n", "spaceman_alloc", 8249, v134, v63);
              }

              else
              {
                log_err("%s:%d: %s failed to search bitmap hints: %d\n", "spaceman_alloc", 8249, (*(a1 + 48) + 212), v63);
              }
            }
          }

          else
          {
            BYTE13(v163) = 1;
            BYTE9(v163) = v153;
            *(&v159 + 1) = v152;
            if (BYTE8(v163) == 1)
            {
              v155.i64[0] = *(&v152 + 1);
            }
          }

          v36 = a3;
          if ((BYTE9(v163) & 1) == 0 && BYTE10(v163) == 1)
          {
            if ((BYTE9(v162) & 2) == 0)
            {
              *(v13 + 634) = 1;
              *(v13 + 1048) = 0;
            }

            v156 = 0uLL;
          }
        }

        goto LABEL_167;
      }

      do
      {
LABEL_167:
        v64 = HIDWORD(v162);
        if (HIDWORD(v162) == v163 && *(&v159 + 1) >= v157 && *(&v159 + 1) < *(&v157 + 1))
        {
          *(&v159 + 1) = *(&v157 + 1);
          if ((BYTE14(v163) & 1) == 0 && HIDWORD(v162) == DWORD1(v163) && *(&v157 + 1) >= v156 && *(&v157 + 1) < *(&v156 + 1))
          {
            *(&v159 + 1) = *(&v156 + 1);
          }
        }

        if ((BYTE14(v163) & 1) == 0 && HIDWORD(v162) == DWORD1(v163) && *(&v159 + 1) >= v156 && *(&v159 + 1) < *(&v156 + 1))
        {
          *(&v159 + 1) = *(&v156 + 1);
          if (HIDWORD(v162) == v163 && *(&v156 + 1) >= v157 && *(&v156 + 1) < *(&v157 + 1))
          {
            *(&v159 + 1) = *(&v157 + 1);
          }
        }

        v65 = v165[HIDWORD(v162) + 197];
        if (v65)
        {
          if (BYTE14(v163))
          {
            v66 = &v159 + 1;
          }

          else
          {
            v66 = 0;
          }

          HIBYTE(v163) = sub_100002C8C(v65, v66);
          LOBYTE(v164) = 0;
          v64 = HIDWORD(v162);
        }

        else
        {
          HIBYTE(v163) = 0;
        }

        v67 = *(&v159 + 1);
        if (*(&v159 + 1) >= *(v33 + 48 * v64))
        {
          v67 = 0;
          *(&v159 + 1) = 0;
        }

        *&v159 = v67;
        v68 = sub_10000FBF4(a1, v13, v165, &v152);
      }

      while (v68 == 3);
      v22 = v68;
      if ((v164 & 0x100) != 0)
      {
        if (!HIBYTE(v163))
        {
          goto LABEL_207;
        }

        v69 = BYTE14(v163) == 1 ? *(v165[47] + 48 * HIDWORD(v162) + 48) : 0;
        v71 = v165[HIDWORD(v162) + 197];
        v72 = 1;
      }

      else
      {
        if (!HIBYTE(v163))
        {
          goto LABEL_207;
        }

        if (BYTE14(v163) == 1)
        {
          v69 = v159;
          if (!v68 && v159 > *(&v159 + 1))
          {
            v70 = *(&v160 + 1) || !v162 ? v161 + *(&v160 + 1) + v160 : *(&v161 + 1) + v162;
            if (v159 <= v70)
            {
              v69 = v70;
            }
          }
        }

        else
        {
          v69 = 0;
        }

        v71 = v165[HIDWORD(v162) + 197];
        v72 = 0;
      }

      sub_100002D38(v71, v69, v72);
      HIBYTE(v163) = 0;
LABEL_207:
      v35 = v36;
      v73 = v32;
      v74 = *(&v160 + 1);
      if (*(&v160 + 1))
      {
        if (v22)
        {
          goto LABEL_279;
        }

        v79 = v160 + v161;
        goto LABEL_226;
      }

      v74 = v162;
      if (v22 || v162)
      {
        break;
      }

      if (BYTE1(v164) != 1)
      {
        v74 = 0;
        v79 = 0;
        goto LABEL_226;
      }

      if ((v14 & 4) == 0)
      {
        pthread_mutex_unlock(v165 + 6);
        pthread_mutex_lock(v165 + 8);
        sub_10000A0D8(v13, v148, 0, 0);
        v75 = sub_10000A1D0(v13, v165, HIDWORD(v162) + 1, 1, v148, a4);
        v76 = v143;
        if (v75)
        {
          v76 = v73;
        }

        v143 = v76;
        sub_10000A9E8(v13, v148);
        pthread_mutex_unlock(v165 + 8);
        pthread_mutex_lock(v165 + 6);
      }
    }

    if (v162)
    {
      v79 = *(&v161 + 1);
    }

    else
    {
      v79 = 0;
    }

    if (v22)
    {
      goto LABEL_279;
    }

LABEL_226:
    v80 = sub_100009B88(v13, v165, v79, v74);
    if (v80)
    {
      v106 = v80;
      if (sub_10000762C(*(*a1 + 392)))
      {
        v107 = obj_type(a1);
        v108 = a1 + 4040;
        if (v107 != 13)
        {
          v108 = (*(a1 + 48) + 212);
        }

        log_err("%s:%d: %s found free extent (0x%llx:0x%llx) which should not be free!: %d\n", "spaceman_alloc", 8387, v108, v79, v74, v106);
      }

      v22 = nx_corruption_detected_int(v13);
LABEL_279:
      pthread_mutex_unlock(v165 + 6);
      v99 = v131;
      v100 = a6;
      if (v22)
      {
        goto LABEL_289;
      }

      goto LABEL_318;
    }

    v81 = v79 + v74;
    if (v79 + v74 >= *(v33 + 48 * HIDWORD(v162)))
    {
      v81 = 0;
    }

    *&v159 = v81;
    if ((v14 & 4) == 0 && v74 >= 1)
    {
      if (*(v13 + 627))
      {
        v22 = 30;
        goto LABEL_288;
      }

      v82 = obj_modify(v165, 0, a4);
      if (v82)
      {
        v22 = v82;
        goto LABEL_288;
      }

      v22 = sub_100010C34(v13, v135, v165, v79, v74, a4, 0, SDWORD2(v162));
      sub_1000026B8(v165[HIDWORD(v162) + 197], v79, v74);
      if (v22)
      {
        v83 = obj_type(a1);
        v84 = a1 + 4040;
        if (v83 != 13)
        {
          v84 = (*(a1 + 48) + 212);
        }

        log_err("%s:%d: %s Failed to set bits for allocation %lld:%lld: %d\n", "spaceman_alloc", 8418, v84, v79, v74, v22);
        if (BYTE14(v163) != 1)
        {
          goto LABEL_288;
        }

        sub_100000A68(v165[HIDWORD(v162) + 197]);
        v34 = 1;
        v32 = v73;
        v17 = a3;
        if (v133)
        {
          goto LABEL_288;
        }

        continue;
      }
    }

    break;
  }

  v99 = v131;
  *v131 = v79;
  v100 = a6;
  if (a6)
  {
    *a6 = v74;
  }

  v101 = v165;
  v102 = v165[199];
  if (v102)
  {
    v102[10] += v74;
    if (v74 < a3)
    {
      ++v102[11];
    }

    if (BYTE12(v163))
    {
      ++v102[3];
      goto LABEL_294;
    }

LABEL_299:
    if ((WORD4(v162) & 0x200) != 0)
    {
      v117 = *(v13 + 1016);
      if (HIDWORD(v162) || v159 < v117 || v159 >= *(v13 + 1024) + v117)
      {
        *(v13 + 1032) = v117;
      }

      else
      {
        *(v13 + 1032) = v159;
      }
    }

    else
    {
      v116 = HIDWORD(v162);
      if ((WORD4(v162) & 0x142) == 0 || HIDWORD(v162))
      {
        v118 = v159;
        v101[HIDWORD(v162) + 125] = v159;
        if (BYTE9(v163) == 1 && spaceman_should_avoid_data_allocation_at_block(v101, v116, v118, 5))
        {
          *&v149 = v159;
          *(&v149 + 1) = 1;
          LOBYTE(v150) = 1;
          BYTE8(v151) = 1;
          *(&v150 + 1) = 0;
          *&v151 = 0;
          sub_10000F7F0(v165, HIDWORD(v162), &v149, &v152);
          if (v119)
          {
            if (v119 != 28)
            {
              if (obj_type(a1) != 13)
              {
                v125 = *(a1 + 48) + 212;
              }

              log_err("%s:%d: %s failed to move roving pointer for dev %d error %d\n");
            }
          }

          else if (*(&v152 + 1) >= 1)
          {
            v165[HIDWORD(v162) + 125] = v152;
          }
        }
      }

      else if (v140)
      {
        spaceman_update_metazone_alloc_index(v101, 0, v142, v159);
      }
    }
  }

  else
  {
    if ((BYTE12(v163) & 1) == 0)
    {
      goto LABEL_299;
    }

LABEL_294:
    if ((*(v101[HIDWORD(v162) + 187] + 4 * (v101[17 * HIDWORD(v162) + 153 + 4 * v138] / *(v136 + 36))) & 0xFFFFFFu) <= v138)
    {
      new_chunk_for_allocation_zone = spaceman_get_new_chunk_for_allocation_zone(v13, v101, HIDWORD(v162), v138);
      if (new_chunk_for_allocation_zone)
      {
        if (new_chunk_for_allocation_zone != 28)
        {
          if (obj_type(a1) != 13)
          {
            v120 = *(a1 + 48) + 212;
          }

          log_err("%s:%d: %s failed to update chunk for alloc zone %d: %d\n");
        }
      }
    }
  }

  pthread_mutex_unlock(v165 + 6);
LABEL_318:
  obj_release(v165);
  if ((BYTE8(v162) & 4) != 0)
  {
    return 0;
  }

  v22 = 0;
  if ((WORD4(v162) & 0x200) != 0)
  {
    return v22;
  }

  v121 = *(v13 + 1024);
  if (!v121)
  {
    return v22;
  }

  v122 = *(v13 + 1016);
  if (*v99 >= v122 && *v99 < v122 + v121)
  {
    return 0;
  }

  if (*(v13 + 634) == 1)
  {
    v123 = &v155;
    if (v100)
    {
      v123 = v100;
    }

    v124 = *(v13 + 1048) + v123->i64[0];
    *(v13 + 1048) = v124;
    if (v124 >= 0x401)
    {
      if (obj_type(a1) != 13)
      {
        v134 = (*(a1 + 48) + 212);
      }

      log_debug("%s:%d: %s Found enough data to allocate outside the soft block-out range, re-enable soft block-out range\n", "spaceman_alloc", 8546, v134);
      v22 = 0;
      *(v13 + 634) = 0;
      return v22;
    }

    return 0;
  }

  if (!v100 || 10000 * v100->i64[0] >= v155.i64[0] || v100->i64[0] * *(*(v13 + 376) + 36) >= 0x40000)
  {
    return 0;
  }

  if (obj_type(a1) != 13)
  {
    v134 = (*(a1 + 48) + 212);
  }

  log_debug("%s:%d: %s Space outside soft block-out range seems fragmented (requested %llu, but could alloc only %llu), disable soft block-out range\n", "spaceman_alloc", 8553, v134, v155.i64[0], v100->i64[0]);
  v22 = 0;
  *(v13 + 634) = 1;
  *(v13 + 1048) = 0;
  return v22;
}

uint64_t sub_10000F34C(uint64_t a1, unsigned int a2, const mach_header_64 **a3, char *a4, int a5)
{
  if ((~a2 & 0x38) == 0)
  {
    panic("Absurd combination of allocation flags for spaceman %llx", a1);
  }

  if (*(*(a1 + 376) + 96))
  {
    v5 = a2 & 0x20;
    v6 = (a2 >> 3) & 3;
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        goto LABEL_6;
      }
    }

    else if (v6)
    {
LABEL_6:
      *a3 = &_mh_execute_header;
      goto LABEL_11;
    }

    *a3 = 1;
    v5 |= a5;
LABEL_11:
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    goto LABEL_14;
  }

  if ((a2 & 0x10) == 0)
  {
    *a3 = 0;
    v7 = 1;
LABEL_14:
    result = 0;
    *a4 = v7;
    return result;
  }

  return 22;
}

uint64_t sub_10000F424(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t *a6, uint64_t a7)
{
  v55 = *a6;
  if (*a6 < 1)
  {
    return 0;
  }

  v13 = *(a3 + 376);
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v59[2] = v14;
  v59[3] = v14;
  v59[0] = v14;
  v59[1] = v14;
  v58 = a3 + 832;
  v15 = v13 + 48 * a4;
  v56 = a4 + 1;
  v53 = v13 + 40 * (a4 + 1);
  v54 = a3 + 984;
  v16 = 1;
  while (1)
  {
    pthread_mutex_lock((a3 + 576));
    if (a2)
    {
      v17 = *(a2 + 408);
      v18 = *(a2 + 376);
      v20 = v18[10];
      v19 = v18[11];
      v21 = v18[9];
      if (v20 >= v19 + v17)
      {
        v22 = v20 - (v19 + v17);
      }

      else
      {
        v22 = 0;
      }

      if (v21 - v19 >= v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = v21 - v19;
      }

      if (v20 <= v19 + v17)
      {
        v24 = v21 - v19;
      }

      else
      {
        v24 = v23;
      }

      v25 = v24 >= v17;
      v26 = v24 - v17;
      if (!v25)
      {
        v26 = 0;
      }

      if (v21 <= v19)
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
      v22 = 0;
    }

    v27 = *(a3 + 376);
    v28 = v27[30] + v27[9] + *(a3 + 984) + v27[15] + v27[35] + *(a3 + 992);
    v30 = v27[23];
    v29 = v27[24];
    v25 = v30 >= v29;
    v31 = v30 - v29;
    if (!v25)
    {
      v31 = 0;
    }

    v32 = *(a3 + 840) + *(a3 + 832);
    v33 = *(a3 + 864);
    v25 = v32 >= v33;
    v34 = v32 - v33;
    if (!v25)
    {
      v34 = 0;
    }

    v35 = v34 + v31;
    v25 = v28 >= v35;
    v36 = v28 - v35;
    if (!v25)
    {
      v36 = 0;
    }

    if (*(a3 + 1616))
    {
      v37 = *(a3 + 1632);
      v25 = v34 >= v37;
      v38 = v34 - v37;
      if (!v25)
      {
        v38 = 0;
      }

      v39 = *(a3 + 1624);
      v40 = *(a3 + 1640);
      v25 = v39 >= v40;
      v41 = v39 - v40;
      if (!v25)
      {
        v41 = 0;
      }

      v25 = v41 >= v37;
      v42 = v41 - v37;
      if (!v25)
      {
        v42 = 0;
      }

      v43 = *(a3 + 1648);
      v44 = *(a3 + 1656);
      v25 = v43 >= v44;
      v45 = v43 - v44;
      if (!v25)
      {
        v45 = 0;
      }

      v25 = v45 >= v38;
      v46 = v45 - v38;
      if (!v25)
      {
        v46 = 0;
      }

      v25 = v36 >= v46 + v42;
      v47 = v36 - (v46 + v42);
      if (!v25)
      {
        v47 = 0;
      }

      if ((a5 & 0x10000) != 0)
      {
        v46 = v42;
      }

      v48 = v46 + v26 + v47;
      if (!a2)
      {
LABEL_53:
        pthread_mutex_unlock((a3 + 576));
        v50 = *a6;
LABEL_54:
        v22 = v50;
        if (v50 <= v48)
        {
          goto LABEL_57;
        }

        if ((a5 & 0x1000) == 0)
        {
          return 28;
        }

LABEL_56:
        *a6 = v48;
        v22 = v48;
        if (v48 < 1)
        {
          return 28;
        }

        goto LABEL_57;
      }
    }

    else
    {
      v48 = v36 + v26;
      if (!a2)
      {
        goto LABEL_53;
      }
    }

    if (v48 >= v22)
    {
      v49 = v22;
    }

    else
    {
      v49 = v48;
    }

    if (*(*(a2 + 376) + 80))
    {
      v48 = v49;
    }

    pthread_mutex_unlock((a3 + 576));
    v50 = *a6;
    if (!*(*(a2 + 376) + 80) || v50 <= v22)
    {
      goto LABEL_54;
    }

    if ((a5 & 0x1000) == 0)
    {
      return 69;
    }

    *a6 = v22;
    if (v22 < 1)
    {
      return 69;
    }

    if (v22 > v48)
    {
      goto LABEL_56;
    }

LABEL_57:
    v51 = *(v15 + 72) - *(v58 + 8 * a4);
    if (v22 > v51)
    {
      break;
    }

LABEL_65:
    if (v22 <= v51)
    {
      return 0;
    }
  }

  if (v16)
  {
    v51 += *(v53 + 200) + *(v54 + 8 * a4);
    if (v22 <= v51)
    {
      goto LABEL_62;
    }
  }

  if ((a5 & 0x1000) == 0)
  {
    return 7;
  }

  *a6 = v51;
  if (v51 > 0 && v16)
  {
LABEL_62:
    pthread_mutex_unlock((a3 + 384));
    pthread_mutex_lock((a3 + 512));
    sub_10000A0D8(a1, v59, 0, 0);
    v16 = sub_10000A1D0(a1, a3, v56, 1, v59, a7) != 0;
    sub_10000A9E8(a1, v59);
    pthread_mutex_unlock((a3 + 512));
    pthread_mutex_lock((a3 + 384));
    v51 = 0;
    if ((a5 & 0x1000) != 0)
    {
      v22 = v55;
      *a6 = v55;
    }

    else
    {
      v22 = *a6;
    }

    goto LABEL_65;
  }

  if (v51 <= 0)
  {
    return 7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000F778(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = *(a1 + 44);
  if (!result)
  {
    v5 = *(a1 + 32);
    if (!v5)
    {
      *(a1 + 32) = a2;
      v5 = a2;
    }

    if (*(a1 + 24) <= a3)
    {
      result = 37;
    }

    else
    {
      v6 = *(*(*(*a1 + 8) + 376) + 36);
      result = sub_100000AF8(*a1, (a2 - v5 / v6 * v6) / v6);
      if (!result)
      {
        return result;
      }

      result = 34;
    }

    *(a1 + 44) = result;
  }

  return result;
}

double sub_10000F7F0(unint64_t a1, unsigned int a2, uint64_t a3, _OWORD *a4)
{
  v57 = 0;
  v6 = *(a3 + 16);
  v7 = *(a3 + 32);
  v61[0] = *a3;
  v61[1] = v6;
  v8 = *(a1 + 376);
  v9 = *(a3 + 16);
  v50 = *(a3 + 40);
  v10 = *a3 / *(v8 + 36);
  v11 = v10;
  v61[2] = v7;
  v12 = a1 + 1496;
  v13 = a2;
  v14 = *(a1 + 1496 + 8 * a2) + 4 * v10;
  v55 = *(a3 + 8);
  *&v15 = 0;
  a4[1] = 0u;
  a4[2] = 0u;
  *a4 = 0u;
  v56 = v8;
  v16 = v8 + 48 * a2;
  v51 = v14;
  v52 = v10;
  do
  {
    if (!v9)
    {
      v28 = 1;
      v29 = v51;
      goto LABEL_24;
    }

    v17 = *(a1 + 376);
    if ((*(v14 + 3) & 0xC) == 0)
    {
      v18 = v17 + 48 * v13;
      v19 = *(v18 + 56);
      if (v19 <= v11)
      {
        goto LABEL_18;
      }

      v20 = *(a3 + 32);
      if (!v20)
      {
        goto LABEL_18;
      }

      v21 = *(v17 + 36);
      v22 = v21;
      if (v19 - 1 == v11)
      {
        v22 = *(v18 + 48) % v21;
      }

      if (!calc_overlap_range(v11 * v21, v22, *(a3 + 24), v20, 0))
      {
LABEL_18:
        if (v11 == v10)
        {
          v28 = 1;
        }

        else
        {
          v28 = 0;
          *&v61[0] = v11 * *(v56 + 36);
        }

        v52 = v11;
        goto LABEL_23;
      }

      v17 = *(a1 + 376);
    }

    v23 = v17 + 48 * v13;
    v24 = *(v23 + 56);
    if (v24 > v11)
    {
      v25 = *(a3 + 32);
      if (v25)
      {
        v26 = *(v17 + 36);
        v27 = v26;
        if (v24 - 1 == v11)
        {
          v27 = *(v23 + 48) % v26;
        }

        v57 |= calc_overlap_range(v11 * v26, v27, *(a3 + 24), v25, 0) != 0;
      }
    }

    v11 = (v11 + 1) % *(v16 + 56);
    v14 = *(v12 + 8 * v13) + 4 * v11;
  }

  while (v11 != v10);
  if ((v57 & 1) == 0)
  {
    return *&v15;
  }

  v28 = 1;
LABEL_23:
  v29 = v14;
LABEL_24:
  v30 = v55;
  if (v55 < 2)
  {
    goto LABEL_53;
  }

  v31 = *v29;
  LODWORD(v29) = *v29 & 0xFFFFFF;
  if (v55 <= (*&v31 & 0xFFFFFFuLL))
  {
    goto LABEL_53;
  }

  if (v52 < *(v16 + 56) - 1 && (v31 & 0x2000000) != 0 && *(v12 + 8 * v13) + 4 * v52 != -4)
  {
    v32 = *(*(v12 + 8 * v13) + 4 * v52 + 4);
    if ((v32 & 0x1000000) != 0 && ((v32 & 0xC000000) == 0 || (v9 & 1) == 0))
    {
      v41 = v32 & 0xFFFFFF;
      v36 = v50;
      if (v50)
      {
        v35 = a4;
        v33 = v56;
        if (v55 <= v41 + v29)
        {
          goto LABEL_54;
        }

        v34 = *(v56 + 36);
        goto LABEL_33;
      }

      if (v29 <= v41)
      {
        v29 = v41;
      }

      else
      {
        v29 = v29;
      }

      if (v55 >= v29)
      {
        v30 = v29;
      }

LABEL_53:
      v35 = a4;
      v33 = v56;
      goto LABEL_54;
    }
  }

  v33 = v56;
  v34 = *(v56 + 36);
  v35 = a4;
  v36 = v50;
  if (!v50)
  {
LABEL_37:
    *&v61[0] = v52 * v34;
    sub_10001345C(a1, a2, 0, v61, v35);
    v38 = *(v35 + 8);
    if (v38 < v55)
    {
      v39 = v36;
    }

    else
    {
      v39 = 0;
    }

    if (!v38 || v39)
    {
      v15 = *(v35 + 24);
      *v35 = v15;
      *(v35 + 16) = *(v35 + 40);
      *(v35 + 24) = 0;
      *(v35 + 32) = 0;
      *(v35 + 40) = 0;
      v40 = *(v35 + 8);
    }

    return *&v15;
  }

LABEL_33:
  if (v34 >= 0xFFFFFF)
  {
    v37 = 0xFFFFFFLL;
  }

  else
  {
    v37 = v34;
  }

  if (v55 <= v37)
  {
    goto LABEL_37;
  }

LABEL_54:
  v42 = *&v61[0];
  *v35 = *&v61[0];
  *(v35 + 8) = v30;
  *(v35 + 16) = v9;
  if (v28)
  {
    v43 = *(a1 + 376);
    v44 = v43 + 48 * v13;
    v45 = *(v44 + 56);
    if (v45 > v10)
    {
      v46 = *(a3 + 32);
      if (v46)
      {
        v47 = *(v43 + 36);
        v48 = v10 * v47;
        if (v45 - 1 == v10)
        {
          v47 = *(v44 + 48) % v47;
        }

        if (calc_overlap_range(v48, v47, *(a3 + 24), v46, 0))
        {
          *(v35 + 16) = 0;
        }
      }
    }
  }

  if (v42 % *(v33 + 36))
  {
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    sub_10001345C(a1, a2, 3uLL, v61, &v58);
    if (*(&v58 + 1) >= v30)
    {
      *&v15 = v58;
      *(v35 + 24) = v58;
      *(v35 + 40) = v59;
    }

    else
    {
      v15 = *v35;
      *(v35 + 24) = *v35;
      *(v35 + 40) = *(v35 + 16);
      *(v35 + 24) = v42 / *(v33 + 36) * *(v33 + 36);
    }
  }

  return *&v15;
}

uint64_t sub_10000FBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  LODWORD(v7) = 0;
  v8 = 0;
  v9 = 0;
  v10 = *(a3 + 376);
  v117 = 0;
  v118 = 0;
  v11 = v10 + 12;
  v98 = a3 + 896;
  v116 = 0;
  memset(v115, 170, sizeof(v115));
  v104 = v10 + 12;
  v105 = (a1 + 4040);
  v107 = a3 + 1576;
  v99 = -1;
  v114 = 0xAAAAAAAAAAAAAAAALL;
  v12 = *(a4 + 172);
  v109 = v10;
  do
  {
    v13 = *(a4 + 112) / v10[9] / v10[10];
    v103 = v8;
    if (v11[12 * v12 + 5])
    {
      v14 = v10[11];
      v15 = v13 / v14;
      v16 = v118;
      if (v13 / v14 == v99)
      {
        LODWORD(v17) = *(a4 + 112) / v10[9] / v10[10];
        v15 = v99;
      }

      else
      {
        v19 = *(*(v98 + 8 * v12) + 8 * v15);
        if (v118)
        {
          obj_release(v118);
          v10 = v109;
          v118 = 0;
          LODWORD(v12) = *(a4 + 172);
        }

        v115[1] = v10;
        v115[2] = __PAIR64__(v15, v12);
        v20 = v10;
        v21 = obj_get(*(a2 + 392), 0x40000000, v19, &xmmword_1000517C0, &v115[1], 0, 0, 0, &v118);
        if (v21)
        {
          v93 = v21;
          v8 = v103;
          break;
        }

        v14 = v20[11];
        v16 = v118;
        LODWORD(v12) = *(a4 + 172);
        v99 = v15;
        v17 = *(a4 + 112) / v20[9] / v20[10];
        v10 = v20;
      }

      v18 = (v16[7] + 8 * (v13 - v14 * v15) + 40);
      LODWORD(v13) = v17;
      v8 = v103;
    }

    else
    {
      v18 = (*(v98 + 8 * v12) + 8 * v13);
    }

    v22 = *v18;
    v115[1] = v10;
    v115[2] = __PAIR64__(v13, v12);
    v106 = v22;
    v23 = v10;
    v24 = obj_get(*(a2 + 392), 0x40000000, v22, &xmmword_1000517D0, &v115[1], 0, 0, 0, &v117);
    if (v24)
    {
      v93 = v24;
      break;
    }

    v5 = v117[7];
    v25 = *(v5 + 32);
    v27 = v23[9];
    v26 = v23[10];
    v28 = v26 * v25;
    v29 = v23;
    if (v8 == v11[12 * *(a4 + 172) + 4])
    {
      v30 = *(a4 + 120) / v27 - v28 + 1;
    }

    else
    {
      v30 = *(v5 + 36);
    }

    v7 = *(a4 + 112) / v27 - v26 * v25;
    if (v30 <= v7)
    {
      v93 = 0;
      goto LABEL_276;
    }

    v110 = v5 + 40;
    v101 = v117[7];
    v7 = v7;
    v111 = v26 * v25;
    while (1)
    {
      if (v6 >= 3 && *(a4 + 189) == 1)
      {
        v31 = *(a4 + 32);
        if (v31 >= 1 && *(a4 + 48) <= (2 * v29[9]))
        {
          *(a4 + 189) = 0;
          *(a4 + 120) = *(a4 + 24);
          if (*(a4 + 184) == 1)
          {
            *(a4 + 48) = v31;
          }

          v94 = *(a4 + 40);
          *(a4 + 185) = v94;
          if ((v94 & 1) == 0 && *(a4 + 186) == 1)
          {
            if ((*(a4 + 169) & 2) == 0)
            {
              *(a2 + 634) = 1;
              *(a2 + 1048) = 0;
            }

            *(a4 + 64) = 0;
            *(a4 + 72) = 0;
          }

          v93 = 3;
          goto LABEL_276;
        }
      }

      v32 = v110 + 32 * v7;
      v33 = *(v32 + 8);
      v34 = v28 + v7;
      v35 = v29[9];
      if (v33 != (v28 + v7) * v35)
      {
        v39 = obj_type(a1);
        v40 = v105;
        if (v39 != 13)
        {
          v40 = (*(a1 + 384) + 212);
        }

        log_err("%s:%d: %s skip bad chunk info ci @ block %lld (cib %lld) ci_index 0x%x ci_addr 0x%llx (expect 0x%llx)\n", "spaceman_alloc_iterate_chunks", 7327, v40, v106, *(v5 + 8), v7, *(v32 + 8), v34 * v109[9]);
        v29 = v109;
        if (v29[9] + v29[9] * v34 >= *&v11[12 * *(a4 + 172)])
        {
          v9 = 0;
        }

        else
        {
          v9 = v109[9] + v109[9] * v34;
        }

        v28 = v111;
LABEL_105:
        *(a4 + 112) = v9;
        goto LABEL_106;
      }

      v36 = *(a4 + 172);
      if (v8 == v11[12 * v36 + 4] && (v37 = *(a4 + 120), v37 / v35 - v28 == v7))
      {
        v38 = v37 - v33;
      }

      else
      {
        v38 = *(v32 + 16) & 0xFFFFFLL;
      }

      v41 = *(a4 + 176);
      if (v36 == v41)
      {
        v42 = *(a4 + 80);
        v43 = v42 - v33;
        if (v42 - v33 >= v38)
        {
          v43 = v38;
        }

        if (v42 > v33 && v42 < v38 + v33)
        {
          v38 = v43;
        }
      }

      v45 = *(a4 + 180);
      v112 = v6;
      should_avoid_data_allocation_at_block = 0;
      if (v36 == v45)
      {
        v52 = *(a4 + 64);
        if (v52 > v33 && v52 < v38 + v33)
        {
          if (*(a4 + 190))
          {
            should_avoid_data_allocation_at_block = 1;
          }

          else
          {
            should_avoid_data_allocation_at_block = 0;
            if (v52 - v33 < v38)
            {
              v38 = v52 - v33;
            }
          }
        }
      }

      v47 = *(a4 + 112);
      v48 = v47 - v33;
      if (v36 == v41)
      {
        v49 = *(a4 + 88);
        if (v49 > v33 && v49 < v38 + v33)
        {
          if (v49 - v33 > v48)
          {
            v48 = v49 - v33;
          }

          v47 = v48 + v33;
          *(a4 + 112) = v48 + v33;
          if (v48 > 0)
          {
            v9 = 0;
          }
        }
      }

      if (v36 == v45)
      {
        v53 = *(a4 + 72);
        if (v53 > v33 && v53 < v38 + v33)
        {
          if (*(a4 + 190))
          {
            should_avoid_data_allocation_at_block = 1;
          }

          else
          {
            if (v53 - v33 > v48)
            {
              v48 = v53 - v33;
            }

            v47 = v48 + v33;
            *(a4 + 112) = v48 + v33;
            if (v48 > 0)
            {
              v9 = 0;
            }
          }
        }
      }

      if ((*(a4 + 184) & 1) == 0)
      {
        v50 = *(v32 + 20) & 0xFFFFF;
        if (!v9 || v50 < (*(v32 + 16) & 0xFFFFFu) && *(a4 + 48) - v9 > v50)
        {
          if (v50)
          {
            if (v7 >= v30 - 1 || (v51 = *(v32 + 52) & 0xFFFFF, *(a4 + 48) <= (v51 + v50)))
            {
              v9 = 0;
            }

            else
            {
              v9 = 0;
              if (v51 < (*(v32 + 48) & 0xFFFFFu))
              {
                should_avoid_data_allocation_at_block = 1;
              }
            }
          }

          else
          {
            v9 = 0;
            should_avoid_data_allocation_at_block = 2;
          }
        }
      }

      if (v36 == v41 && *(a4 + 80) <= v48 + v33 && *(a4 + 88) >= v38 + v33)
      {
        should_avoid_data_allocation_at_block = 2;
        if (!*(a4 + 184))
        {
          goto LABEL_88;
        }
      }

      else
      {
        if (v36 != v45 || should_avoid_data_allocation_at_block)
        {
          goto LABEL_85;
        }

        if (*(a4 + 64) <= v48 + v33)
        {
          should_avoid_data_allocation_at_block = *(a4 + 72) >= v38 + v33;
LABEL_85:
          if (!*(a4 + 184))
          {
            goto LABEL_88;
          }

          goto LABEL_86;
        }

        should_avoid_data_allocation_at_block = 0;
        if (!*(a4 + 184))
        {
          goto LABEL_88;
        }
      }

LABEL_86:
      if ((*(v32 + 20) & 0xFFFFF) == 0)
      {
        should_avoid_data_allocation_at_block = 2;
      }

LABEL_88:
      v54 = *(v32 + 24);
      if (!v54 && ((*(v32 + 16) ^ *(v32 + 20)) & 0xFFFFF) != 0)
      {
        LOBYTE(v55) = *(a4 + 190);
LABEL_96:
        v56 = v47 + v38 - v48;
        *(a4 + 112) = v56;
        v11 = v104;
        v28 = v111;
        v6 = v112;
        if (v36 == v41 && v56 >= *(a4 + 80) && v56 < *(a4 + 88) || (v55 & 1) == 0 && v36 == *(a4 + 180) && v56 >= *(a4 + 64) && v56 < *(a4 + 72))
        {
          v56 = *(v32 + 8) + (*(v32 + 16) & 0xFFFFF);
          *(a4 + 112) = v56;
        }

        v9 = 0;
        if (v56 < *&v104[12 * v36])
        {
          goto LABEL_107;
        }

        goto LABEL_105;
      }

      if (!should_avoid_data_allocation_at_block)
      {
        if (*(a4 + 185) != 1)
        {
          v57 = 1;
          goto LABEL_111;
        }

        should_avoid_data_allocation_at_block = spaceman_should_avoid_data_allocation_at_block(a3, v36, v33, *(a4 + 48));
        v29 = v109;
      }

      v55 = *(a4 + 190);
      if (should_avoid_data_allocation_at_block > v55)
      {
        v47 = *(a4 + 112);
        v36 = *(a4 + 172);
        v41 = *(a4 + 176);
        goto LABEL_96;
      }

      v54 = *(v32 + 24);
      v57 = should_avoid_data_allocation_at_block == 0;
LABEL_111:
      v113 = (v112 + 1);
      v116 = 0;
      if (v54)
      {
        v58 = obj_get(*(a2 + 392), 0x40000000, v54, &xmmword_1000517E0, 0, 0, 0, 0, &v116);
        if (v58)
        {
          v93 = v58;
          goto LABEL_274;
        }
      }

      if (v9)
      {
        v59 = v38;
        if (v57)
        {
          if (*(a4 + 48) - v9 >= v38)
          {
            v59 = v38;
          }

          else
          {
            v59 = *(a4 + 48) - v9;
          }
        }

        if (!v116 || !bitmap_range_find_first(1, v116[7], 0, v59, (a4 + 128)))
        {
          v6 = v113;
          if (v57)
          {
            v63 = *(a4 + 48);
            if (v63 == v59 + v9)
            {
              *(a4 + 152) = *(a4 + 112) - v9;
              *(a4 + 160) = v63;
              v11 = v104;
              if (v116)
              {
                obj_release(v116);
              }

              v9 = 0;
              v93 = 0;
              v116 = 0;
              v5 = v101;
              v8 = v103;
              goto LABEL_276;
            }
          }

          v11 = v104;
          if (*(a4 + 190) == 1)
          {
            v64 = *(a4 + 191);
          }

          else
          {
            v64 = 0;
          }

          v65 = v59 + v9;
          sub_1000010D4(*(v107 + 8 * *(a4 + 172)), v64 & 1, *(a4 + 112) - v9, v59 + v9);
          if (*(a4 + 184) == 1 && v65 > *(a4 + 160))
          {
            if (v57 || !spaceman_clip_extent_to_zones(a2, a3, *(a4 + 172), *(a4 + 112) - v9, v59 + v9, *(a4 + 168), *(a4 + 56), v115, &v114))
            {
              *(a4 + 152) = *(a4 + 112) - v9;
              v66 = *(a4 + 48);
              if (v65 < v66)
              {
                v66 = v59 + v9;
              }

LABEL_145:
              *(a4 + 160) = v66;
            }

            else
            {
              v66 = v114;
              if (v114 >= *(a4 + 48))
              {
                v66 = *(a4 + 48);
              }

              v114 = v66;
              if (v66 > *(a4 + 160))
              {
                *(a4 + 152) = v115[0];
                goto LABEL_145;
              }
            }
          }

          v67 = *(a4 + 112) + v59;
          *(a4 + 112) = v67;
          v68 = *(a4 + 172);
          v5 = v101;
          v8 = v103;
          if (v68 == *(a4 + 176) && v67 >= *(a4 + 80) && v67 < *(a4 + 88) || (*(a4 + 190) & 1) == 0 && v68 == *(a4 + 180) && v67 >= *(a4 + 64) && v67 < *(a4 + 72))
          {
            v65 = 0;
            v67 = *(v32 + 8) + (*(v32 + 16) & 0xFFFFF);
            *(a4 + 112) = v67;
          }

          v9 = v65;
          if (v67 >= *&v104[12 * v68])
          {
            v9 = 0;
            *(a4 + 112) = 0;
          }

          if (v116)
          {
            obj_release(v116);
          }

          v116 = 0;
          if (v9)
          {
            goto LABEL_262;
          }

          v28 = v111;
          v29 = v109;
          if ((*(a4 + 169) & 4) != 0 && *(a4 + 160))
          {
            v9 = 0;
            v93 = 0;
            goto LABEL_276;
          }

          goto LABEL_106;
        }

        v5 = v101;
        if (*(a4 + 184) != 1)
        {
          goto LABEL_168;
        }

        v60 = *(a4 + 128) + v9;
        if (v60 <= *(a4 + 160))
        {
          goto LABEL_168;
        }

        if (!v57)
        {
          if (spaceman_clip_extent_to_zones(a2, a3, *(a4 + 172), *(a4 + 112) - v9, v60, *(a4 + 168), *(a4 + 56), v115, &v114))
          {
            v61 = *(a4 + 48);
            if (v114 < v61)
            {
              v61 = v114;
            }

            v114 = v61;
            v62 = *(a4 + 160);
            if (v61 > v62)
            {
              *(a4 + 152) = v115[0];
              *(a4 + 160) = v61;
LABEL_167:
              if ((*(a4 + 169) & 4) != 0)
              {
                if (v116)
                {
                  obj_release(v116);
                }

                v9 = 0;
                v93 = 0;
                v116 = 0;
LABEL_274:
                v8 = v103;
                goto LABEL_275;
              }

LABEL_168:
              if (*(a4 + 190) == 1)
              {
                v69 = *(a4 + 191);
              }

              else
              {
                v69 = 0;
              }

              sub_1000010D4(*(v107 + 8 * *(a4 + 172)), v69 & 1, *(a4 + 112) - v9, *(a4 + 128) + v9);
              v70 = *(a4 + 128);
              *(a4 + 112) += v70 - v48;
              v48 = v70;
              goto LABEL_172;
            }

LABEL_166:
            if (v62)
            {
              goto LABEL_167;
            }

            goto LABEL_168;
          }

          v60 = *(a4 + 128) + v9;
        }

        v62 = *(a4 + 48);
        if (v60 < v62)
        {
          v62 = v60;
        }

        *(a4 + 152) = *(a4 + 112) - v9;
        *(a4 + 160) = v62;
        goto LABEL_166;
      }

LABEL_172:
      if (!v116)
      {
        break;
      }

      if (*(v107 + 8 * *(a4 + 172)))
      {
        if (v38 > v48)
        {
          v71 = 0;
          v72 = 0;
          v73 = v48;
          while (1)
          {
            bitmap_range_find_first_clear_range(v116[7], v38 - v73, v73, v38, (a4 + 128), (a4 + 136));
            v74 = *(a4 + 136);
            if (!v74)
            {
              goto LABEL_212;
            }

            if (v74 <= v71)
            {
              break;
            }

            if ((*(a4 + 169) & 4) != 0)
            {
              if (v71)
              {
                break;
              }

              v75 = *(a4 + 48);
            }

            else
            {
              v75 = *(a4 + 48);
              if (v71 >= v75)
              {
                break;
              }
            }

            v72 = *(a4 + 128);
            if (v75 >= v74)
            {
              v71 = *(a4 + 136);
            }

            else
            {
              v71 = v75;
            }

            if (!v57)
            {
              goto LABEL_192;
            }

LABEL_183:
            v76 = *(a4 + 48);
            if (v71 >= v76 && ((*(a4 + 187) & 1) != 0 || (*(a4 + 188) & 1) != 0))
            {
              *(a4 + 128) = v72;
              *(a4 + 136) = v71;
              goto LABEL_214;
            }

LABEL_192:
            if (*(a4 + 190) == 1)
            {
              v77 = *(a4 + 191);
            }

            else
            {
              v77 = 0;
            }

            sub_1000010D4(*(v107 + 8 * *(a4 + 172)), v77 & 1, *(a4 + 112) - v48 + *(a4 + 128), v74);
            v73 = *(a4 + 136) + *(a4 + 128);
            if (v73 >= v38)
            {
              goto LABEL_212;
            }
          }

          if (!v57)
          {
            goto LABEL_192;
          }

          goto LABEL_183;
        }

        v72 = 0;
        v71 = 0;
LABEL_212:
        *(a4 + 128) = v72;
        *(a4 + 136) = v71;
        if (v57)
        {
          v76 = *(a4 + 48);
LABEL_214:
          if (v71 >= v76)
          {
            v9 = 0;
            v93 = 0;
            *(a4 + 112) += v38 - v48;
            v5 = v101;
            goto LABEL_274;
          }

          v82 = 0;
          v5 = v101;
        }

        else
        {
          v82 = 0;
          v5 = v101;
        }
      }

      else
      {
        if (bitmap_range_find_desired_or_first_clear_range(v116[7], *(a4 + 48), v48, v38, (a4 + 128), (a4 + 136), (*(a4 + 168) >> 10) & 1))
        {
          v9 = 0;
          v93 = 0;
          goto LABEL_274;
        }

        v82 = 0;
      }

LABEL_219:
      if (*(a4 + 184) != 1)
      {
        goto LABEL_228;
      }

      v9 = *(a4 + 136);
      if (v9 > *(a4 + 160))
      {
        v84 = *(a4 + 112);
        v85 = *(a4 + 128);
        if (!v57)
        {
          if (spaceman_clip_extent_to_zones(a2, a3, *(a4 + 172), v84 - v48 + v85, v9, *(a4 + 168), *(a4 + 56), v115, &v114))
          {
            v9 = v114;
            if (v114 > *(a4 + 160))
            {
              v86 = v115[0];
              goto LABEL_227;
            }

            goto LABEL_228;
          }

          v84 = *(a4 + 112);
          v85 = *(a4 + 128);
          v9 = *(a4 + 136);
        }

        v86 = v84 - v48 + v85;
LABEL_227:
        *(a4 + 152) = v86;
        *(a4 + 160) = v9;
LABEL_228:
        v9 = *(a4 + 136);
      }

      v8 = v103;
      if (v9 && *(a4 + 128) + v9 == v38)
      {
        goto LABEL_243;
      }

      if ((*(a4 + 169) & 4) != 0 && *(a4 + 160))
      {
        v9 = 0;
        v93 = 0;
        *(a4 + 112) += v38 - v48;
LABEL_275:
        v11 = v104;
        v6 = v113;
        goto LABEL_276;
      }

      v9 = v82;
      if (!v82)
      {
        v87 = *(a4 + 48);
        v88 = v38 - v87;
        if (v38 < v87)
        {
          v88 = 0;
          v87 = v38;
        }

        if (bitmap_range_find_last_set(v116[7], v88, v87, (a4 + 128)) && (v89 = *(a4 + 128), v89 < v38 - 1))
        {
          if (*(a4 + 190) == 1)
          {
            v90 = *(a4 + 191);
          }

          else
          {
            v90 = 0;
          }

          v9 = v38 + ~v89;
          sub_1000010D4(*(v107 + 8 * *(a4 + 172)), v90 & 1, v89 - v48 + *(a4 + 112) + 1, v9);
        }

        else
        {
          v9 = 0;
        }
      }

LABEL_243:
      *(a4 + 136) = 0;
      v91 = *(a4 + 112) + v38 - v48;
      *(a4 + 112) = v91;
      v92 = *(a4 + 172);
      v11 = v104;
      v6 = v113;
      if (v92 == *(a4 + 176) && v91 >= *(a4 + 80) && v91 < *(a4 + 88) || (*(a4 + 190) & 1) == 0 && v92 == *(a4 + 180) && v91 >= *(a4 + 64) && v91 < *(a4 + 72))
      {
        v9 = 0;
        v91 = *(v32 + 8) + (*(v32 + 16) & 0xFFFFF);
        *(a4 + 112) = v91;
      }

      if (v91 >= *&v104[12 * v92])
      {
        v9 = 0;
        *(a4 + 112) = 0;
      }

      if (v116)
      {
        obj_release(v116);
      }

      v116 = 0;
      if (!v113)
      {
        goto LABEL_262;
      }

      v28 = v111;
      v29 = v109;
      if ((*(a4 + 190) & 1) == 0 || v9)
      {
        goto LABEL_107;
      }

      if (*(a4 + 160) || *(a4 + 104))
      {
        if (!sub_100000AF8(*(v107 + 8 * *(a4 + 172)), v113))
        {
          v9 = 0;
LABEL_262:
          v28 = v111;
          v29 = v109;
          goto LABEL_107;
        }

        v96 = *(a4 + 104);
        if (v96 > *(a4 + 160))
        {
          *(a4 + 152) = *(a4 + 96);
          *(a4 + 160) = v96;
        }

        v9 = 0;
        v93 = 0;
        *(a4 + 192) = 1;
LABEL_276:
        if (*(a4 + 136))
        {
          goto LABEL_302;
        }

        goto LABEL_277;
      }

LABEL_106:
      v9 = 0;
LABEL_107:
      if (++v7 >= v30)
      {
        v93 = 0;
        LODWORD(v7) = v30;
        goto LABEL_276;
      }
    }

    v78 = *(a4 + 48);
    v79 = v78 <= v38 - v48;
    if (v78 >= v38 - v48)
    {
      v80 = v38 - v48;
    }

    else
    {
      v80 = *(a4 + 48);
    }

    *(a4 + 128) = v48;
    *(a4 + 136) = v80;
    v81 = v78 <= v38 - v48 && v57;
    if (v79)
    {
      v82 = v38 - v48;
    }

    else
    {
      v82 = 0;
    }

    if (!v81)
    {
      if (*(a4 + 190) == 1)
      {
        v83 = *(a4 + 191);
      }

      else
      {
        v83 = 0;
      }

      sub_1000010D4(*(v107 + 8 * *(a4 + 172)), v83 & 1, *(a4 + 112), v80);
      goto LABEL_219;
    }

    v9 = 0;
    v93 = 0;
    v8 = v103;
    v11 = v104;
    v6 = v113;
    if (v80)
    {
      break;
    }

LABEL_277:
    v95 = *(a4 + 160);
    if (v95 == *(a4 + 48))
    {
      break;
    }

    if (v9 || !v95)
    {
      if (v93)
      {
        break;
      }
    }

    else if (*(a4 + 168) & 0x400 | v93)
    {
      break;
    }

    if (*(a4 + 192))
    {
      break;
    }

    obj_release(v117);
    v117 = 0;
    ++v8;
    v12 = *(a4 + 172);
    v10 = v109;
  }

  while (v8 <= v11[12 * v12 + 4]);
LABEL_302:
  *(a4 + 193) = v8 == v11[12 * *(a4 + 172) + 4] + 1;
  if (*(a4 + 136))
  {
    *(a4 + 144) = *(v5 + 32 * v7 + 48);
  }

  if (v118)
  {
    obj_release(v118);
    v118 = 0;
  }

  if (v117)
  {
    obj_release(v117);
    v117 = 0;
  }

  if (v116)
  {
    obj_release(v116);
  }

  return v93;
}

uint64_t sub_100010C34(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v8 = a6;
  v10 = a4;
  v11 = a3;
  v120 = 0;
  v124 = 0;
  v122 = 0;
  v12 = *(a3 + 376);
  v144 = 0;
  v145 = 0;
  v143 = 0;
  memset(v142, 170, sizeof(v142));
  if (a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = a1;
  }

  v119 = v13;
  v117 = (v13 + 505);
  v118 = (a2 + 505);
  v121 = a8 & 0x10001;
  v123 = -1;
  v137 = a4;
  v130 = v12;
  while (1)
  {
    pthread_mutex_lock((v11 + 640));
    v14 = v10 / v12[9];
    v15 = v14 / v12[10];
    v140 = v12[17];
    if (v140)
    {
      v16 = v15 / v12[11];
      if (v16 != v123 || v120 == 0)
      {
        v18 = *(*(v11 + 896) + 8 * v16);
        if (v145)
        {
          obj_release(v145);
          v145 = 0;
        }

        v142[1] = v12;
        LODWORD(v142[2]) = 0;
        HIDWORD(v142[2]) = v16;
        v124 = v18;
        v19 = obj_get(a1[49], 1073741829, v18, &xmmword_1000517C0, &v142[1], 0, 0, v8, &v145);
        if (v19)
        {
          v109 = v19;
          log_err("%s:%d: %s error getting cab %d @ %lld: %d\n", "spaceman_modify_bits", 5882, (a1[48] + 212), v16, v124, v19);
          v110 = 1;
          goto LABEL_158;
        }

        v120 = v145[7];
        v123 = v16;
      }

      else
      {
        obj_lock(v145, 2);
      }

      pthread_mutex_unlock((v11 + 640));
      if (obj_xid(v145) == v8)
      {
        v22 = v124;
        v23 = v123;
      }

      else
      {
        v24 = sub_100009800(a1, v11, v8, v142);
        if (v24)
        {
          v109 = v24;
          if (sub_10000762C(a1))
          {
            log_err("%s:%d: %s failed to allocate block from internal pool: %d\n", "spaceman_modify_bits", 5901, (a1[48] + 212), v109);
          }

          v110 = 1;
          v122 = 1;
          goto LABEL_159;
        }

        v22 = v142[0];
        v23 = v123;
        *(*(v11 + 896) + 8 * v123) = v142[0];
        obj_dirty(v145, v8, v22);
        v25 = sub_10000D80C(a1, v11, v124, v8);
        if (v25)
        {
          v109 = v25;
          log_err("%s:%d: %s failed to free internal pool block %lld: %d\n", "spaceman_modify_bits", 5908, (a1[48] + 212), v124, v25);
          v110 = 1;
          v122 = 1;
          goto LABEL_159;
        }
      }

      v21 = v120 + 40;
      v26 = *(v130 + 40);
      LODWORD(v15) = v15 - *(v130 + 44) * v23;
      v142[1] = v130;
      LODWORD(v142[2]) = 0;
      HIDWORD(v142[2]) = v14 / v26;
      v122 = 1;
      v124 = v22;
    }

    else
    {
      v20 = v12;
      v21 = *(v11 + 896);
      v142[1] = v20;
      LODWORD(v142[2]) = 0;
      HIDWORD(v142[2]) = v15;
      if (!v21)
      {
        v109 = 22;
        v110 = 1;
        goto LABEL_158;
      }
    }

    v27 = *(v21 + 8 * v15);
    v28 = obj_get(a1[49], 1073741829, v27, &xmmword_1000517D0, &v142[1], 0, 0, v8, &v144);
    if (v28)
    {
      v109 = v28;
      if (v123 == -1)
      {
        v108 = 0;
      }

      else
      {
        v108 = *(v130 + 44) * v123;
      }

      log_err("%s:%d: %s error getting cib %d @ %lld: %d\n", "spaceman_modify_bits", 5934, (a1[48] + 212), v108 + v15, v27, v28);
      v110 = 1;
      goto LABEL_155;
    }

    v131 = v144[7];
    if (obj_xid(v144) == v8)
    {
      v128 = v27;
      v29 = v130;
      v30 = v137;
      goto LABEL_29;
    }

    v31 = sub_100009800(a1, v11, v8, v142);
    if (v31)
    {
      v109 = v31;
      v115 = a1[48] + 212;
      log_err("%s:%d: %s failed to allocate block from internal pool: %d\n");
      goto LABEL_152;
    }

    v128 = v142[0];
    *(v21 + 8 * v15) = v142[0];
    if (v145)
    {
      obj_dirty(v145, v8, v124);
    }

    obj_dirty(v144, v8, v128);
    v32 = sub_10000D80C(a1, v11, v27, v8);
    v29 = v130;
    v30 = v137;
    if (v32)
    {
      break;
    }

LABEL_29:
    if (!v140)
    {
      pthread_mutex_unlock((v11 + 640));
    }

    if (v145)
    {
      obj_unlock(v145, 2);
      v122 = 0;
    }

    v138 = v14 % v29[10];
    v132 = v131 + 40;
    v33 = v131 + 40 + 32 * v138;
    v34 = (v33 + 24);
    v35 = *(v33 + 24);
    if (a7 == 1)
    {
LABEL_34:
      if (v35)
      {
        goto LABEL_35;
      }

      if (((*(v33 + 16) ^ *(v33 + 20)) & 0xFFFFF) != 0)
      {
        v109 = nx_corruption_detected_int(a1);
        v110 = 0;
      }

      else
      {
        v110 = 0;
        v109 = 22;
      }

      goto LABEL_159;
    }

    while (1)
    {
LABEL_35:
      if (v35)
      {
        v36 = obj_get(a1[49], 1073741825, v35, &xmmword_1000517E0, 0, 0, 0, v8, &v143);
        if (v36)
        {
          v107 = v36;
          v104 = a1[48] + 212;
          if (v123 != -1)
          {
            v105 = v29[11] * v123;
          }

          log_err("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n");
          goto LABEL_146;
        }

        v37 = v143[7];
      }

      else
      {
        v37 = 0;
      }

      v38 = v29[9];
      v39 = v10 % v38;
      v40 = v38 - v10 % v38;
      if (a5 < v40)
      {
        v40 = a5;
      }

      v141 = v40;
      v134 = a5;
      if (v35 && *v33 == a6)
      {
        v133 = v35;
        goto LABEL_50;
      }

      v41 = sub_100009800(a1, v11, a6, v142);
      if (v41)
      {
        v106 = v41;
        log_err("%s:%d: %s failed to allocate block from internal pool: %d\n", "spaceman_modify_bits", 6004, (a1[48] + 212), v41);
        v110 = 0;
        v109 = v106;
        goto LABEL_159;
      }

      *v33 = a6;
      v42 = v142[0];
      *v34 = v142[0];
      v133 = v42;
      if (v35)
      {
        obj_dirty(v143, a6, v42);
        v43 = sub_10000D80C(a1, v11, v35, a6);
        if (v43)
        {
          v107 = v43;
          v114 = a1[48] + 212;
          log_err("%s:%d: %s failed to free internal pool block %lld: %d\n");
LABEL_146:
          v110 = 0;
          v109 = v107;
          goto LABEL_159;
        }
      }

      else
      {
        v44 = obj_create(a1[49], 0x40000000, v42, &xmmword_1000517E0, 0, 0, a6, &v143);
        if (v44)
        {
          v109 = v44;
          log_err("%s:%d: %s failed to create bitmap object %lld: %d\n", "spaceman_modify_bits", 6019, (a1[48] + 212), v133, v44);
          v110 = 0;
          goto LABEL_159;
        }

        v37 = v143[7];
      }

LABEL_50:
      v45 = *(v11 + 376);
      if (a7 == 1)
      {
        v46 = bitmap_count_bits(v37, 0, v39, v141 + v39);
        v47 = v46;
        if (v46)
        {
          log_err("%s:%d: %s freeing 0x%llx:%lld, but %lld bits are already clear.  Double free?\n", "spaceman_clear_bits_in_bm", 5603, (a1[48] + 212), v30, a5, v46);
        }

        v48 = a1[47];
        v49 = *(v48 + 1248);
        v50 = v132 + 32 * v138;
        if (v49)
        {
          v51 = *(v48 + 1240);
          v146 = 0xAAAAAAAAAAAAAAAALL;
          v52 = calc_overlap_range(v30, v141, v51, v49, &v146);
          v53 = v52;
          if (v52)
          {
            v52 = bitmap_count_bits(v37, 0, v146 - *(v50 + 8), v146 + v52 - *(v50 + 8));
          }

          v54 = v10;
          v55 = v47 - v52;
        }

        else
        {
          v54 = v10;
          v53 = 0;
          v55 = v47;
        }

        bitmap_clear_range(v37, v39, v141);
        sub_100012DB4(a3, v37, v30 / *(v45 + 36));
        *(v50 + 20) += v141 - v47;
        pthread_mutex_lock((a3 + 576));
        *(v45 + 72) += v141 - v53 - v55;
        a5 = v134;
        v8 = a6;
        v59 = v138;
        v10 = v54;
        v11 = a3;
        if (a8)
        {
          v76 = *(a3 + 984);
          v64 = v76 >= v141;
          v77 = v76 - v141;
          if (!v64)
          {
            v77 = 0;
          }

          *(a3 + 984) = v77;
        }

LABEL_128:
        pthread_mutex_unlock((v11 + 576));
        v79 = 0;
        v109 = 0;
        v78 = 1;
        goto LABEL_129;
      }

      v56 = (*(v33 + 16) & 0xFFFFF) - v39;
      if (v56 >= v141)
      {
        v57 = v141;
      }

      else
      {
        v57 = (*(v33 + 16) & 0xFFFFF) - v39;
      }

      if (bitmap_range_is_clear(v37, v39, v57, v56))
      {
        bitmap_set_range(v37, v39, v57, v58);
        v59 = v138;
        sub_100012DB4(v11, v37, v138 + *(v45 + 40) * *(v131 + 32));
        pthread_mutex_lock((v11 + 576));
        v60 = *(v45 + 72);
        if (*(v11 + 1616))
        {
          v61 = *(v45 + 240) + v60 + *(v11 + 984) + *(v45 + 120) + *(v45 + 280) + *(v11 + 992);
          v62 = *(v45 + 184);
          v63 = *(v45 + 192);
          v64 = v62 >= v63;
          v65 = v62 - v63;
          if (!v64)
          {
            v65 = 0;
          }

          v64 = v61 >= v65;
          v66 = v61 - v65;
          if (!v64)
          {
            v66 = 0;
          }

          v67 = *(v11 + 1624);
          v68 = *(v11 + 1640);
          v64 = v67 >= v68;
          v69 = v67 - v68;
          if (v64)
          {
            v70 = v69;
          }

          else
          {
            v70 = 0;
          }

          v71 = *(v11 + 1648);
          v72 = *(v11 + 1656);
          v64 = v71 >= v72;
          v73 = v71 - v72;
          if (!v64)
          {
            v73 = 0;
          }

          v74 = v73 + v70;
          v64 = v66 >= v74;
          v75 = v66 - v74;
          if (!v64)
          {
            v75 = 0;
          }

          v125 = v75;
        }

        else
        {
          v70 = 0;
          v125 = 0;
        }

        v80 = a2;
        *(v33 + 20) -= v57;
        *(v45 + 72) = v60 - v57;
        v8 = a6;
        if (a8)
        {
          v82 = *(v11 + 848);
          if (*(v11 + 832) < v82)
          {
            panic("%s, Reserved space < reserved metadata: %llu < %llu\n", "Main", *(v11 + 832), v82);
          }

          if ((a8 & 0x40) != 0)
          {
            if (v82 < v57)
            {
              panic("reserved metadata space underflow: %lld (%lld)\n", *(v11 + 848), v57);
            }

            *(v11 + 848) = v82 - v57;
            *(v11 + 832) -= v57;
            v80 = a2;
          }

          else
          {
            v83 = *(v11 + 832);
            if (v83 - v82 >= v57)
            {
              v82 = v83 - v57;
            }

            else if (obj_type(v119) == 13)
            {
              log_err("%s:%d: %s reserved space underflow: %lld (+meta:%llu) < %lld\n", "spaceman_set_bits_in_bm", 5755, v117, *(v11 + 832) - v82, v82, v57);
            }

            else
            {
              log_err("%s:%d: %s reserved space underflow: %lld (+meta:%llu) < %lld\n", "spaceman_set_bits_in_bm", 5755, (*(v119 + 384) + 212), *(v11 + 832) - v82, v82, v57);
            }

            v80 = a2;
            *(v11 + 832) = v82;
          }

          v59 = v138;
          if (v80)
          {
            v84 = v80[51];
            v64 = v84 >= v57;
            v85 = v84 - v57;
            if (!v64)
            {
              v86 = obj_type(v80);
              v87 = v118;
              if (v86 != 13)
              {
                v87 = (a2[48] + 212);
              }

              log_err("%s:%d: %s fs reserved space underflow: %lld (%lld)\n", "spaceman_set_bits_in_bm", 5770, v87, a2[51], v57);
              v80 = a2;
              v85 = 0;
            }

            v80[51] = v85;
            goto LABEL_102;
          }

          v81 = 0;
        }

        else
        {
          if (!a2)
          {
            v81 = 0;
LABEL_119:
            if (*(v11 + 1616))
            {
              v98 = v57 - v81;
              if ((a8 & 0x10000) != 0)
              {
                v101 = *(v11 + 1640);
                if (v98 <= v70)
                {
                  v102 = v101 + v98;
                }

                else
                {
                  v102 = v101 + v70;
                }

                *(v11 + 1640) = v102;
              }

              else
              {
                v99 = v98 > v125;
                v100 = v98 - v125;
                if (v99)
                {
                  *(v11 + 1656) += v100;
                }
              }
            }

            goto LABEL_128;
          }

LABEL_102:
          v88 = v80[47];
          v89 = *(v88 + 72);
          v90 = *(v88 + 88);
          v91 = v89 - v90;
          if (v89 < v90)
          {
            v91 = 0;
          }

          if (v57 >= v91)
          {
            v81 = v91;
          }

          else
          {
            v81 = v57;
          }

          v92 = v90 + v57;
          *(v88 + 88) = v92;
          *(v45 + 192) += v81;
          if (v89)
          {
            v64 = v89 >= v92;
            v93 = v89 - v92;
            if (!v64)
            {
              v93 = 0;
            }

            v94 = v80[52];
            if (v93 >= v80[51])
            {
              v93 = v80[51];
            }

            v95 = *(v11 + 864);
            v80[52] = v93;
            *(v11 + 864) = v93 - v94 + v95;
          }

          fs_sb_dirty(v80, a6);
        }

        if (v121 == 65537)
        {
          v96 = *(v11 + 1632);
          v64 = v96 >= v57;
          v97 = v96 - v57;
          if (!v64)
          {
            v97 = 0;
          }

          *(v11 + 1632) = v97;
        }

        goto LABEL_119;
      }

      v78 = 0;
      v109 = 22;
      v79 = 1;
      v8 = a6;
      v59 = v138;
LABEL_129:
      obj_dirty(v11, v8, 0);
      obj_dirty(v144, v8, v128);
      obj_dirty(v143, v8, v133);
      obj_release(v143);
      v143 = 0;
      v30 += v141;
      v10 += v141;
      a5 -= v141;
      if (!v78 || a5 < 1 || v59 >= (*(v131 + 36) - 1))
      {
        break;
      }

      v138 = v59 + 1;
      v33 = v132 + 32 * (v59 + 1);
      v34 = (v33 + 24);
      v35 = *(v33 + 24);
      v29 = v130;
      if (a7 == 1)
      {
        goto LABEL_34;
      }
    }

    v137 = v30;
    obj_unlock(v144, 2);
    obj_release(v144);
    v144 = 0;
    if (a5 < 1)
    {
      v103 = 1;
    }

    else
    {
      v103 = v79;
    }

    v12 = v130;
    if (v103)
    {
      v110 = 1;
      goto LABEL_159;
    }
  }

  v109 = v32;
  v116 = a1[48] + 212;
  log_err("%s:%d: %s failed to free internal pool block %lld: %d\n");
LABEL_152:
  v110 = 0;
LABEL_155:
  if (!v140)
  {
LABEL_158:
    pthread_mutex_unlock((v11 + 640));
  }

LABEL_159:
  if (v145 && (v122 & 1) != 0)
  {
    obj_unlock(v145, 2);
  }

  if (v144)
  {
    v111 = v110;
  }

  else
  {
    v111 = 1;
  }

  if ((v111 & 1) == 0)
  {
    obj_unlock(v144, 2);
  }

  if (v145)
  {
    obj_release(v145);
  }

  if (v144)
  {
    obj_release(v144);
  }

  if (v143)
  {
    obj_release(v143);
  }

  if (a7 == 1)
  {
    if (v109)
    {
      if (a5)
      {
        v112 = *(v11 + 984);
        if (v112)
        {
          *(v11 + 984) = v112 - a5;
        }
      }
    }
  }

  return v109;
}

uint64_t sub_100011A14(const char *a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = 0;
  if (obj_type(a1) == 13)
  {
    v10 = *(a1 + 49);
    v11 = a1;
  }

  else
  {
    v11 = 0;
    v10 = a1;
  }

  is_current_tx = xid_is_current_tx(v10, a5);
  v13 = 22;
  if (a4 >= 1 && is_current_tx)
  {
    v26 = 0xAAAAAAAAAAAAAAAALL;
    v13 = sub_100009C74(v10, &v26);
    if (!v13)
    {
      p_sig = &v26->__sig;
      v15 = *&v26[24].__opaque[48];
      if (v15)
      {
        v16.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v16.i64[1] = a4;
        v15[6] = vaddq_s64(v15[6], v16);
      }

      v17 = sub_100009B88(v10, p_sig, a3, a4);
      if (v17)
      {
        v18 = v17;
        if (sub_10000762C(*(*a1 + 392)))
        {
          if (obj_type(a1) == 13)
          {
            v19 = a1 + 4040;
          }

          else
          {
            v19 = (*(a1 + 48) + 212);
          }

          log_err("%s:%d: %s attempt to free extent (0x%llx:0x%llx) which should not be freed: %d\n", "spaceman_free", 8742, v19, a3, a4, v18);
        }

        v13 = 22;
        goto LABEL_20;
      }

      v13 = obj_modify(v26, 0, a5);
      if (!v13)
      {
        if (*(v10 + 629) == 1)
        {
          v20 = sub_100011CC8(v10, a3, a4, &v25);
          if (v20 | v25)
          {
            v13 = 0;
            goto LABEL_20;
          }

          pthread_mutex_lock(v26 + 6);
          v13 = sub_10000DC8C(v10, v26, a3, a4, 0, a5);
          dev_unmap_flush(*(v10 + 384));
          if (!v13)
          {
            if (v11)
            {
              sub_100011D50(v11, v26, a4, a5);
            }

            v24 = &v26->__sig;
            if (*&v26[25].__opaque[8])
            {
              sub_100011E98(&v26->__sig, a2, a4);
              v24 = &v26->__sig;
            }

            obj_dirty(v24, a5, 0);
          }

          v23 = v26 + 6;
        }

        else
        {
          pthread_mutex_lock(v26 + 8);
          v13 = sub_10000D8B4(v10, v26, 1, a3, a4, a5);
          if (!v13)
          {
            pthread_mutex_lock(v26 + 6);
            if (v11)
            {
              sub_100011D50(v11, v26, a4, a5);
            }

            v22 = &v26->__sig;
            if (*&v26[25].__opaque[8])
            {
              sub_100011E98(&v26->__sig, a2, a4);
              v22 = &v26->__sig;
            }

            obj_dirty(v22, a5, 0);
            pthread_mutex_unlock(v26 + 6);
          }

          v23 = v26 + 8;
        }

        pthread_mutex_unlock(v23);
      }

LABEL_20:
      obj_release(&v26->__sig);
    }
  }

  return v13;
}

uint64_t sub_100011CC8(uint64_t a1, unint64_t a2, uint64_t a3, _BOOL4 *a4)
{
  v8 = *(a1 + 416);
  pthread_mutex_lock(v8 + 8);
  pthread_mutex_lock(v8 + 6);
  v9 = sub_100011FA0(a1, v8, 1, a2, a3, a4, 0);
  pthread_mutex_unlock(v8 + 6);
  pthread_mutex_unlock(v8 + 8);
  return v9;
}

void sub_100011D50(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 376);
  pthread_mutex_lock((a2 + 576));
  v9 = *(a1 + 376);
  v10 = *(v9 + 88);
  v11 = v10 >= a3;
  v12 = v10 - a3;
  if (v11)
  {
    *(v9 + 88) = v12;
  }

  else
  {
    v13 = obj_oid(a1);
    log_err("%s:%d: %s fs %lld alloc count underflow: %lld (%lld)\n", "spaceman_free_fs_deduct_block_counts", 8664, (a1 + 4040), v13, *(*(a1 + 376) + 88), a3);
    v12 = 0;
    v9 = *(a1 + 376);
    *(v9 + 88) = 0;
  }

  v14 = *(v9 + 72);
  if (v14)
  {
    v15 = v14 - v12;
    if (v14 < v12)
    {
      v15 = 0;
    }

    v16 = *(a1 + 416);
    if (v15 >= *(a1 + 408))
    {
      v15 = *(a1 + 408);
    }

    v17 = *(a2 + 864);
    *(a1 + 416) = v15;
    *(a2 + 864) = v15 - v16 + v17;
  }

  v11 = v14 >= v12;
  v18 = v14 - v12;
  if (v18 != 0 && v11)
  {
    if (v18 >= a3)
    {
      v18 = a3;
    }

    v19 = *(v8 + 192);
    v20 = v19 - v18;
    if (v19 < v18)
    {
      log_err("%s:%d: %s spaceman fs reserve alloc count underflow: %lld (%lld)\n", "spaceman_free_fs_deduct_block_counts", 8680, (a1 + 4040), *(v8 + 192), v18);
      v20 = 0;
    }

    *(v8 + 192) = v20;
  }

  pthread_mutex_unlock((a2 + 576));

  fs_sb_dirty(a1, a4);
}

uint64_t *sub_100011E98(uint64_t *result, int a2, unint64_t a3)
{
  if (!result[202])
  {
    return result;
  }

  v5 = result;
  if ((a2 & 0x30000) == 0)
  {
    sub_100009BFC(0, result);
  }

  pthread_mutex_lock(v5 + 9);
  if ((a2 & 0x40) == 0)
  {
    goto LABEL_11;
  }

  if ((a2 & 0x10000) != 0)
  {
    v6 = v5 + 205;
    v7 = v5[205];
  }

  else
  {
    v6 = v5 + 207;
    v7 = v5[207];
  }

  if (v7 < a3)
  {
    a3 -= v7;
    *v6 = 0;
LABEL_11:
    if (a3)
    {
      v8 = v5[203];
      v9 = v5[202];
      v10 = v9 - v8;
      if (v9 > v8)
      {
        v11 = v8 + a3;
        v12 = a3 >= v10;
        v13 = a3 - v10;
        if (v13 == 0 || !v12)
        {
          v9 = v11;
        }

        if (v12)
        {
          a3 = v13;
        }

        else
        {
          a3 = 0;
        }

        v5[203] = v9;
      }

      if ((a2 & 0x40) == 0 && a3)
      {
        if ((a2 & 0x10000) != 0)
        {
          v16 = v5[205];
          v12 = v16 >= a3;
          v17 = v16 - a3;
          if (v12)
          {
            v5[205] = v17;
          }

          else
          {
            v5[205] = 0;
          }
        }

        else
        {
          v14 = v5[207];
          v12 = v14 >= a3;
          v15 = v14 - a3;
          if (v12)
          {
            v5[207] = v15;
          }

          else
          {
            v5[207] = 0;
          }
        }
      }
    }

    goto LABEL_25;
  }

  *v6 = v7 - a3;
LABEL_25:

  return pthread_mutex_unlock(v5 + 9);
}

uint64_t sub_100011FA0(uint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5, _BOOL4 *a6, void *a7)
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v11 = a2;
  v60 = 0;
  v61 = 0;
  v58 = 0xAAAAAAAAAAAAAAAALL;
  v59 = 0;
  v57 = 0xAAAAAAAAAAAAAAAALL;
  if ((a3 & 2) != 0)
  {
    *a7 = 0;
  }

  v12 = *(a2 + 376);
  v13 = *(v12 + 48);
  if (v13 <= a5 || v13 - a5 < a4)
  {
    log_err("%s:%d: %s block range %lld:%lld out of %s bounds %lld\n", "spaceman_check_allocation_status_internal", 8850, (*(a1 + 384) + 212), a4, a5, "main", *(v12 + 48));
    return 22;
  }

  if (a5 <= 0)
  {
    is_set = 0;
    v15 = 0;
    if ((a3 & 3) == 0)
    {
LABEL_58:
      if (!v15 && is_set)
      {
        v56 = 0;
        v15 = sub_10000D1C8(a1, v11, 1u, v9, v8, &v56);
        if (((v15 == 0) & v56) != 0)
        {
          is_set = 0;
        }
      }
    }

LABEL_62:
    if (v15)
    {
      log_debug("%s:%d: %s %lld:%lld error: %d\n", "spaceman_check_allocation_status_internal", 8981, (*(a1 + 384) + 212), v9, v8, v15);
    }

    goto LABEL_64;
  }

  is_set = 0;
  v17 = 0;
  v18 = a5 + a4;
  v53 = a3 & 3;
  v19 = -1;
  while (1)
  {
    v20 = *(v12 + 40);
    v21 = v9 / *(v12 + 36);
    v52 = v21;
    v22 = v21 / v20;
    if (*(v12 + 68))
    {
      v23 = *(v12 + 44);
      v24 = v22 / v23;
      v25 = v21 / v20;
      if (v22 / v23 == v19)
      {
LABEL_16:
        LODWORD(v28) = v22 - v23 * v19;
        LODWORD(v22) = v25;
        goto LABEL_18;
      }

      v26 = *(*(v11 + 896) + 8 * v24);
      if (v61)
      {
        obj_release(v61);
        v61 = 0;
      }

      v57 = v12;
      LODWORD(v58) = 0;
      HIDWORD(v58) = v24;
      v27 = obj_get(*(a1 + 392), 0x40000000, v26, &xmmword_1000517C0, &v57, 0, 0, 0, &v61);
      if (!v27)
      {
        v17 = v61[7] + 40;
        v23 = *(v12 + 44);
        v19 = v24;
        v25 = v52 / *(v12 + 40);
        goto LABEL_16;
      }

      v44 = v27;
      log_err("%s:%d: %s error getting cab %d @ %lld: %d\n", "spaceman_check_allocation_status_internal", 8877, (*(a1 + 384) + 212), v24, v26, v27);
      v15 = v44;
LABEL_57:
      v9 = a4;
      v7 = a6;
      v8 = a5;
      if (!v53)
      {
        goto LABEL_58;
      }

      goto LABEL_62;
    }

    v17 = *(v11 + 896);
    v28 = v21 / v20;
LABEL_18:
    v57 = v12;
    LODWORD(v58) = 0;
    HIDWORD(v58) = v22;
    if (!v17)
    {
      v15 = 22;
      goto LABEL_57;
    }

    v50 = v19;
    v51 = v17;
    v29 = *(v17 + 8 * v28);
    v30 = obj_get(*(a1 + 392), 0x40000000, v29, &xmmword_1000517D0, &v57, 0, 0, 0, &v60);
    if (v30)
    {
      v15 = v30;
      log_err("%s:%d: %s error getting cib %d @ %lld: %d\n", "spaceman_check_allocation_status_internal", 8902, (*(a1 + 384) + 212), v52 / *(v12 + 40), v29, v30);
      goto LABEL_57;
    }

    if (v9 < v18)
    {
      break;
    }

    v15 = 0;
LABEL_46:
    obj_release(v60);
    v60 = 0;
    if (!v15)
    {
      v17 = v51;
      v19 = v50;
      if (v9 < v18)
      {
        continue;
      }
    }

    goto LABEL_57;
  }

  v31 = v52 % *(v12 + 40);
  v32 = v60[7];
  while (1)
  {
    if (v31 >= *(v32 + 36))
    {
LABEL_42:
      v15 = 0;
LABEL_45:
      v11 = a2;
      goto LABEL_46;
    }

    v33 = v32 + 40 + 32 * v31;
    v34 = *(v33 + 24);
    if (!v34)
    {
      break;
    }

    v35 = obj_get(*(a1 + 392), 0x40000000, v34, &xmmword_1000517E0, 0, 0, 0, 0, &v59);
    if (v35)
    {
      v15 = v35;
      log_err("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n", "spaceman_check_allocation_status_internal", 8929, (*(a1 + 384) + 212), v52 / *(v12 + 40), v31, v34, v35);
      goto LABEL_45;
    }

    v36 = v59[7];
    v37 = *(v12 + 36);
    v38 = v9 % v37;
    v39 = v37 - v9 % v37;
    if (v18 - v9 >= v39)
    {
      v40 = v39;
    }

    else
    {
      v40 = v18 - v9;
    }

    if (a3)
    {
      is_clear = bitmap_range_is_clear(v36, v38, v40, v39);
      v43 = a3 & 2 | is_clear;
      is_set = is_clear == 0;
      obj_release(v59);
      v59 = 0;
      if (!v43)
      {
        v15 = 0;
        is_set = 1;
        goto LABEL_53;
      }
    }

    else if ((a3 & 2) != 0)
    {
      *a7 += bitmap_count_bits(v36, 0, v38, v40 + v38);
      obj_release(v59);
      v59 = 0;
    }

    else
    {
      is_set = bitmap_range_is_set(v36, v38, v40);
      obj_release(v59);
      v59 = 0;
      if (!is_set)
      {
        goto LABEL_52;
      }
    }

LABEL_41:
    v9 += v40;
    ++v31;
    if (v9 >= v18)
    {
      goto LABEL_42;
    }
  }

  if (v53)
  {
    v41 = (*(v33 + 20) & 0xFFFFF) + v9 / *(v12 + 36) * *(v12 + 36) - v9;
    if (v18 - v9 >= v41)
    {
      v40 = v41;
    }

    else
    {
      v40 = v18 - v9;
    }

    is_set = 0;
    if (a7)
    {
      *a7 += v40;
    }

    goto LABEL_41;
  }

  is_set = 0;
LABEL_52:
  v15 = 0;
LABEL_53:
  v7 = a6;
LABEL_64:
  if (v61)
  {
    obj_release(v61);
  }

  if (v60)
  {
    obj_release(v60);
  }

  if (v59)
  {
    obj_release(v59);
  }

  *v7 = is_set;
  return v15;
}

uint64_t sub_100012510(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v9 = a1;
  v33 = a3;
  if (obj_type(a1) == 13)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v9 = v10[49];
  }

  v32 = 0xAAAAAAAAAAAAAAAALL;
  v34 = 0;
  v31 = 0;
  if (a3 < 1)
  {
    return 22;
  }

  v11 = sub_100009C74(v9, &v32);
  if (!v11)
  {
    v11 = sub_10000F34C(v32, a2, &v34, &v31, (*(*(v9 + 376) + 48) >> 1) & 1);
    p_sig = &v32->__sig;
    if (!v11)
    {
      pthread_mutex_lock(v32 + 6);
      v13 = v31;
      v14 = a2 & 0x30000;
      v15 = &v34;
      do
      {
        if (!v13)
        {
          pthread_mutex_unlock(v32 + 6);
          v11 = 28;
          goto LABEL_34;
        }

        v16 = *v15;
        if (!v14)
        {
          sub_100009BFC(0, &v32->__sig);
        }

        v17 = sub_10000F424(v9, v10, v32, v16, a2, &v33, a4);
        --v13;
        v15 = (v15 + 4);
      }

      while (v17 == 7);
      v11 = v17;
      if (v17)
      {
        pthread_mutex_unlock(v32 + 6);
      }

      else
      {
        pthread_mutex_lock(v32 + 9);
        v18 = v32;
        v19 = v33;
        v20 = &v32->__sig + v16;
        v20[104] += v33;
        if ((a2 & 0x40) != 0)
        {
          v20[106] += v19;
        }

        if (v10)
        {
          v21 = v10[51] + v19;
          v10[51] = v21;
          v22 = v10[47];
          v23 = *(v22 + 72);
          if (v23)
          {
            v24 = *(v22 + 88);
            v25 = v23 >= v24;
            v26 = v23 - v24;
            if (!v25)
            {
              v26 = 0;
            }

            if (v26 < v21)
            {
              v21 = v26;
            }

            v27 = *&v18[13].__opaque[24] - v10[52];
            v10[52] = v21;
            *&v18[13].__opaque[24] = v27 + v21;
          }
        }

        if (v16 == 1)
        {
          v28 = 16;
        }

        else
        {
          v28 = 8;
        }

        v29 = v28 | a2 & 0x40;
        *a5 = v29;
        if (*&v18[25].__opaque[8])
        {
          *a5 = v29 | v14;
          if ((a2 & 0x10000) != 0)
          {
            *&v18[25].__opaque[24] += v19;
          }
        }

        pthread_mutex_unlock(v18 + 9);
        pthread_mutex_unlock(v32 + 6);
        v11 = 0;
      }

LABEL_34:
      p_sig = &v32->__sig;
    }

    obj_release(p_sig);
  }

  return v11;
}

uint64_t sub_100012774(uint64_t a1, unsigned int a2, unint64_t a3)
{
  if (obj_type(a1) == 13)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  if (v6)
  {
    v7 = v6[49];
  }

  v30 = 0xAAAAAAAAAAAAAAAALL;
  v8 = sub_100009C74(v7, &v30);
  if (!v8)
  {
    v9 = (a2 >> 4) & 1;
    pthread_mutex_lock((v30 + 384));
    pthread_mutex_lock((v30 + 576));
    if (*(v30 + 832 + 8 * v9) < *(v30 + 848 + 8 * v9))
    {
      v10 = "T2";
      if (!v9)
      {
        v10 = "Main";
      }

      v11 = *(v30 + 832);
      panic("%s, Reserved space < reserved metadata: %llu < %llu\n", v10, v11, *(v30 + 848));
    }

    v12 = v30;
    v13 = *(v30 + 848 + 8 * v9);
    if ((a2 & 0x40) != 0)
    {
      if (v13 < a3)
      {
        panic("reserved metadata space underflow: %lld (%lld)\n", *(v30 + 848 + 8 * v9), a3);
      }

      *(v30 + 848 + 8 * v9) = v13 - a3;
      *(v12 + 8 * v9 + 832) -= a3;
      if (!v6)
      {
LABEL_35:
        v21 = v30;
        if ((a2 & 0x10000) == 0)
        {
LABEL_42:
          pthread_mutex_unlock((v21 + 576));
          pthread_mutex_unlock((v30 + 384));
          obj_release(v30);
          return v8;
        }

LABEL_36:
        v26 = *(v21 + 1632);
        v23 = v26 >= a3;
        v27 = v26 - a3;
        if (v23)
        {
          *(v21 + 1632) = v27;
        }

        else
        {
          if (obj_type(a1) == 13)
          {
            v28 = (a1 + 4040);
          }

          else
          {
            v28 = (*(a1 + 384) + 212);
          }

          log_err("%s:%d: %s entitled reserve: reserved space underflow: %lld (%lld)\n", "spaceman_unreserve", 9216, v28, *(v30 + 1632), a3);
          v21 = v30;
          *(v30 + 1632) = 0;
        }

        goto LABEL_42;
      }
    }

    else
    {
      v14 = *(v30 + 832 + 8 * v9);
      if (v14 - v13 >= a3)
      {
        *(v30 + 832 + 8 * v9) = v14 - a3;
        if (!v6)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (obj_type(a1) == 13)
        {
          v15 = (a1 + 4040);
        }

        else
        {
          v15 = (*(a1 + 384) + 212);
        }

        log_err("%s:%d: %s reserved space underflow: %lld (+meta:%llu) < %lld\n", "spaceman_unreserve", 9191, v15, *(v30 + 8 * v9 + 832) - v13, v13, a3);
        *(v30 + 8 * v9 + 832) = v13;
        if (!v6)
        {
          goto LABEL_35;
        }
      }
    }

    v16 = v6[51];
    v17 = v16 - a3;
    if (v16 < a3)
    {
      if (obj_type(a1) == 13)
      {
        v18 = (a1 + 4040);
      }

      else
      {
        v18 = (*(a1 + 384) + 212);
      }

      log_err("%s:%d: %s fs reserved space underflow: %lld (%lld)\n", "spaceman_unreserve", 9200, v18, v6[51], a3);
      v17 = 0;
    }

    v6[51] = v17;
    v19 = v6[47];
    v20 = *(v19 + 72);
    v21 = v30;
    if (v20)
    {
      v22 = *(v19 + 88);
      v23 = v20 >= v22;
      v24 = v20 - v22;
      if (!v23)
      {
        v24 = 0;
      }

      if (v24 < v17)
      {
        v17 = v24;
      }

      v25 = *(v30 + 864) - v6[52];
      v6[52] = v17;
      *(v21 + 864) = v25 + v17;
    }

    if ((a2 & 0x10000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_36;
  }

  return v8;
}

uint64_t sub_100012A58(void *a1, uint64_t a2, unint64_t a3)
{
  v28 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_100009C74(a1, &v28);
  if (!result)
  {
    v6 = *&v28[5].__opaque[48];
    result = obj_modify(v28, 0, a3);
    if (!result)
    {
      pthread_mutex_lock(v28 + 6);
      pthread_mutex_lock(v28 + 9);
      v7 = *(a2 + 376);
      v8 = v7[9];
      v9 = v7[11];
      if (v9)
      {
        v10 = obj_oid(a2);
        log_err("%s:%d: %s file system %lld alloc block count is not zero: %lld/%lld\n", "spaceman_fs_bounds_clear", 9426, (a2 + 4040), v10, v9, v8);
        v7 = *(a2 + 376);
        if (v7[9])
        {
          goto LABEL_8;
        }
      }

      else
      {
        v11 = v7[9];
        if (v8)
        {
          goto LABEL_8;
        }
      }

      if (!v7[10])
      {
        v20 = v28;
LABEL_25:
        pthread_mutex_unlock(v20 + 9);
        pthread_mutex_unlock(v28 + 6);
        obj_release(&v28->__sig);
        return 0;
      }

LABEL_8:
      if (v9 >= v8)
      {
        v9 = v8;
      }

      v12 = *(v6 + 184);
      if (v12 < v8)
      {
        v13 = obj_oid(a2);
        log_err("%s:%d: %s file system %lld fs reserve block count %lld larger than global fs reserve block count %lld\n", "spaceman_fs_bounds_clear", 9442, (a2 + 4040), v13, v8, *(v6 + 184));
        v12 = *(v6 + 184);
        v8 = v12;
      }

      *(v6 + 184) = v12 - v8;
      v14 = *(v6 + 192);
      if (v14 < v9)
      {
        v15 = obj_oid(a2);
        log_err("%s:%d: %s file system %lld fs reserve alloc count %lld larger than global fs reserve alloc count %lld\n", "spaceman_fs_bounds_clear", 9449, (a2 + 4040), v15, v9, *(v6 + 192));
        v14 = *(v6 + 192);
        v9 = v14;
      }

      *(v6 + 192) = v14 - v9;
      p_sig = &v28->__sig;
      v17 = *&v28[25].__opaque[8];
      if (v17)
      {
        if (v8 > v9)
        {
          v18 = *&v28[25].__opaque[16];
          if (v18 < v17)
          {
            if (v8 - v9 + v18 < v17)
            {
              v17 = v8 - v9 + v18;
            }

            *&v28[25].__opaque[16] = v17;
          }
        }
      }

      v19 = *(a2 + 376);
      *(v19 + 72) = 0;
      *(v19 + 80) = 0;
      obj_dirty(p_sig, a3, 0);
      fs_sb_dirty(a2, a3);
      v20 = v28;
      v21 = *(a2 + 376);
      v22 = *(v21 + 72);
      v23 = *(v21 + 88);
      v24 = v22 >= v23;
      v25 = v22 - v23;
      if (!v24)
      {
        v25 = 0;
      }

      v26 = *(a2 + 416);
      if (v25 >= *(a2 + 408))
      {
        v25 = *(a2 + 408);
      }

      v27 = *&v28[13].__opaque[24];
      *(a2 + 416) = v25;
      *&v20[13].__opaque[24] = v25 - v26 + v27;
      goto LABEL_25;
    }
  }

  return result;
}

uint64_t sub_100012C88(void *a1, unint64_t a2)
{
  v2 = a1[47];
  if (!*(v2 + 1248))
  {
    return 0;
  }

  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v5 = sub_100009C74(a1, &v10);
  if (!v5)
  {
    v6 = *&v10[5].__opaque[48];
    v5 = obj_modify(v10, 0, a2);
    p_sig = &v10->__sig;
    if (!v5)
    {
      pthread_mutex_lock(v10 + 8);
      pthread_mutex_lock(v10 + 6);
      v5 = sub_100011FA0(a1, v10, 2, *(v2 + 1240), *(v2 + 1248), &v11, &v9);
      pthread_mutex_lock(v10 + 9);
      *(v6 + 72) += v9;
      pthread_mutex_unlock(v10 + 9);
      *(a1[47] + 1240) = 0u;
      pthread_mutex_unlock(v10 + 6);
      pthread_mutex_unlock(v10 + 8);
      obj_dirty(v10, a2, 0);
      p_sig = &v10->__sig;
    }

    obj_release(p_sig);
  }

  return v5;
}

BOOL sub_100012DB4(_BOOL8 result, _DWORD *a2, uint64_t a3)
{
  v3 = *(result + 376);
  v4 = *(result + 1496);
  v10 = 0;
  v11 = 0;
  if (v4)
  {
    v7 = *(result + 1592);
    if (v7)
    {
      ++*(v7 + 112);
    }

    if (*(v3 + 56) - 1 == a3)
    {
      v8 = *(v3 + 48) % *(v3 + 36);
    }

    else
    {
      v8 = *(v3 + 36);
    }

    *(v4 + 4 * a3) = (*(v4 + 4 * a3) & 0xFEFFFFFF | ((*a2 & 1) << 24)) ^ 0x1000000;
    result = bitmap_range_find_clear_range(a2, 0xFFFFFFLL, 0, v8, &v11, &v10);
    if (v8 < 0x40 || (*&a2[2 * (v8 >> 6) - 2] & 0x8000000000000000) != 0)
    {
      v9 = *(v4 + 4 * a3) & 0xFDFFFFFF;
    }

    else
    {
      v9 = *(v4 + 4 * a3) | 0x2000000;
    }

    *(v4 + 4 * a3) = v9 & 0xFF000000 | v10 & 0xFFFFFF;
  }

  return result;
}

uint64_t sub_100012E9C(uint64_t result, uint64_t a2)
{
  if (a2 && *(a2 + 62) == 1 && (*(a2 + 63) & 1) == 0)
  {
    v3 = result;
    v7.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v7.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    result = clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v7);
    tv_sec = v7.tv_sec;
    tv_nsec = v7.tv_nsec;
    *a2 = v7.tv_sec;
    tv_nsec /= 1000;
    *(a2 + 8) = tv_nsec;
    v6 = 1000000 * tv_sec + tv_nsec;
    *(a2 + 32) = v6;
    if (v6 - *(a2 + 24) >= 1000 * *(a2 + 60))
    {
      atomic_fetch_add_explicit((*(v3 + 384) + 152), 1uLL, memory_order_relaxed);
      ++*(a2 + 56);
      *(a2 + 24) = *(a2 + 32);
    }
  }

  return result;
}

uint64_t sub_100012F74(uint64_t result, uint64_t a2, unsigned int a3, unint64_t a4)
{
  v4 = *(a2 + 376) + 40 * a3;
  v6 = *(v4 + 200);
  v5 = (v4 + 200);
  v7 = v6 - a4;
  if (v6 >= a4)
  {
    *v5 = v7;
  }

  else
  {
    v11 = result;
    result = sub_10000762C(result);
    if (result)
    {
      result = log_err("%s:%d: %s sfq %d count underflow %lld - %lld\n", "spaceman_decrement_free_queue_count", 6155, (*(v11 + 384) + 212), a3, *(*(a2 + 376) + 40 * a3 + 200), a4);
    }

    *(*(a2 + 376) + 40 * a3 + 200) = 0;
  }

  return result;
}

uint64_t sub_100013034(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t *a5)
{
  v7 = *(*(a2 + 376) + 152);
  v9 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10000D4FC(a1, a2, a3, &v9);
  if (result == 2)
  {
    return 22;
  }

  if (result)
  {
    return result;
  }

  if ((v7 & 0x7FFFFFFFFFFFFFFFLL) <= a4 || v9 > (v7 & 0x7FFFFFFFFFFFFFFFuLL) - a4)
  {
    return 22;
  }

  result = 0;
  if (a5)
  {
    *a5 = v9;
  }

  return result;
}

void sub_1000130B8(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    if (!*(a2 + 1540))
    {
      return;
    }

    pthread_mutex_unlock((a2 + 512));
    v10 = *(a2 + 1540) + 16;
    v11 = 16;
  }

  else
  {
    if (!*(a2 + 1542))
    {
      return;
    }

    pthread_mutex_unlock((a2 + 448));
    v11 = 0;
    v10 = *(a2 + 1542);
  }

  sub_100012E9C(a1, a4);
  v12 = v10;
  if (v11 < v10)
  {
    v13 = 16 * v11;
    v14 = v10 - v11;
    do
    {
      v15 = (*(a2 + 1544) + v13);
      v16 = *v15;
      v17 = v15[1];
      dev_unmap(a1[48]);
      v13 += 16;
      --v14;
    }

    while (v14);
  }

  dev_unmap_flush(a1[48]);
  if (a3)
  {
    pthread_mutex_lock((a2 + 512));
    v18 = 384;
  }

  else
  {
    v18 = 448;
  }

  pthread_mutex_lock((a2 + v18));
  if (v11 < v10)
  {
    v19 = 16 * v11;
    v20 = v12 - v11;
    do
    {
      v21 = (*(a2 + 1544) + v19);
      v22 = *v21;
      v23 = v21[1];
      if (a3)
      {
        sub_10000DD98(a1, a2, v22, v23, 1, a5);
      }

      else
      {
        sub_10001321C(a1, a2, v22, v23, a5);
      }

      v19 += 16;
      --v20;
    }

    while (v20);
  }

  if (a3)
  {
    pthread_mutex_unlock((a2 + 384));
    *(a2 + 1560) = 0;
    *(a2 + 1540) = 0;
  }

  else
  {
    *(a2 + 1552) = 0;
    *(a2 + 1542) = 0;
  }
}

void sub_10001321C(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2[47];
  v26 = 0;
  if (xid_is_current_tx(a1, a5))
  {
    v27 = 0xAAAAAAAAAAAAAAAALL;
    v24 = 0xAAAAAAAAAAAAAAAALL;
    v25 = 0xAAAAAAAAAAAAAAAALL;
    v11 = sub_100013034(a1, a2, a3, a4, &v27);
    if (v11)
    {
      v21 = *(a1 + 384) + 212;
      if (v11 == 22)
      {
        log_err("%s:%d: %s attempt to free block(s) outside of internal pool: 0x%llx:0x%llx\n");
      }

      else
      {
        log_err("%s:%d: %s Error mapping freed IP block range 0x%llx:0x%llx to index: %d\n");
      }
    }

    else
    {
      v12 = 8 * *(v10 + 32);
      if (v12)
      {
        v13 = a4 < 1;
      }

      else
      {
        v13 = 1;
      }

      if (!v13)
      {
        v14 = v12;
        v15 = v27;
        v22 = v10;
        do
        {
          v16 = v15 / v14;
          v17 = *(a2[110] + 2 * (v15 / v14));
          if (sub_100009C38(a1, v10, v17, &v25) || obj_get(*(a1 + 392), 1073741825, v25, &xmmword_1000517E0, 0, 0, 0, a5, &v26))
          {
            break;
          }

          v18 = v26[7];
          v19 = v27 % v14;
          if (a4 >= (v14 - v27 % v14))
          {
            v20 = v14 - v27 % v14;
          }

          else
          {
            v20 = a4;
          }

          if (*(a2[109] + 8 * v16) != a5)
          {
            v24 = 0;
            v23 = 0;
            if (sub_1000096FC(a1, a2, a5, &v24, &v23) || sub_10000D764(a1, a2, v17, a5))
            {
              obj_release(v26);
              return;
            }

            v25 = v24;
            *(a2[110] + 2 * v16) = v23;
            *(a2[109] + 8 * v16) = a5;
          }

          bitmap_clear_range(v18, v19, v20);
          obj_dirty(v26, a5, v25);
          obj_release(v26);
          v15 = v27 + v20;
          v27 += v20;
          v13 = a4 <= v20;
          a4 -= v20;
          v10 = v22;
        }

        while (!v13);
      }
    }
  }
}

unint64_t sub_10001345C(unint64_t result, unsigned int a2, unint64_t a3, void *a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v7 = result;
  v8 = *(result + 376);
  v9 = a2;
  v10 = *(v8 + 48 * a2 + 56);
  v11 = a4[1];
  v12 = *(v8 + 36);
  v13 = *a4 / v12;
  v14 = result + 1496;
  v15 = *(*(result + 1496 + 8 * a2) + 4 * v13) & 0xFFFFFF;
  if (a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = *(v8 + 48 * a2 + 56);
  }

  if (v10 < v16)
  {
    v16 = *(v8 + 48 * a2 + 56);
  }

  if (v12 >= 0xFFFFFF)
  {
    v17 = 0xFFFFFF;
  }

  else
  {
    v17 = *(v8 + 36);
  }

  if (v15 == v17 || v16 < 2)
  {
    v19 = *a4 / v12;
    LODWORD(v20) = *(*(result + 1496 + 8 * a2) + 4 * v13) & 0xFFFFFF;
    goto LABEL_37;
  }

  v21 = v16 - 1;
  v22 = v13 + 1;
  v23 = *(*(result + 1496 + 8 * a2) + 4 * v13) & 0xFFFFFF;
  v24 = *a4 / v12;
  do
  {
    v19 = v22 % v10;
    v25 = *(v14 + 8 * v9);
    v26 = *(v25 + 4 * (v22 % v10));
    LODWORD(v20) = v26 & 0xFFFFFF;
    if ((v26 & 0xFFFFFFu) > v15)
    {
      v13 = v22 % v10;
      v15 = v26 & 0xFFFFFF;
    }

    if (v20 > v23)
    {
      if (*(v6 + 16) == 1)
      {
        if ((v26 & 0xC000000) != 0)
        {
          goto LABEL_34;
        }

        v27 = *(v7 + 376);
        v28 = v27 + 48 * v9;
        v29 = *(v28 + 56);
        if (v29 > v19)
        {
          v30 = v6[4];
          if (v30)
          {
            v46 = v24;
            v47 = v7;
            v49 = v11;
            v50 = v8;
            v31 = *(v27 + 36);
            v32 = v31;
            if (v29 - 1 == v19)
            {
              v32 = *(v28 + 48) % v31;
            }

            v48 = v6;
            result = calc_overlap_range(v19 * v31, v32, v6[3], v30, 0);
            v6 = v48;
            v11 = v49;
            v8 = v50;
            v24 = v46;
            v7 = v47;
            if (result)
            {
              goto LABEL_34;
            }

            LODWORD(v20) = *(v25 + 4 * v19) & 0xFFFFFF;
          }
        }
      }

      LODWORD(v12) = *(v8 + 36);
      if (v12 >= 0xFFFFFF)
      {
        v33 = 0xFFFFFF;
      }

      else
      {
        v33 = *(v8 + 36);
      }

      if (v11 <= v20 || v20 == v33)
      {
        goto LABEL_36;
      }

      v24 = v22 % v10;
      v23 = v20;
    }

LABEL_34:
    ++v22;
    --v21;
  }

  while (v21);
  LODWORD(v12) = *(v8 + 36);
  v19 = v24;
  LODWORD(v20) = v23;
LABEL_36:
  v12 = v12;
  v5 = a5;
LABEL_37:
  v35 = v19 * v12;
  if (v11 >= v20)
  {
    v20 = v20;
  }

  else
  {
    v20 = v11;
  }

  *v5 = v35;
  *(v5 + 8) = v20;
  if (*(v6 + 16) == 1)
  {
    v36 = *(v7 + 376);
    v37 = v36 + 48 * v9;
    v38 = *(v37 + 56);
    if (v38 > v19 && (v39 = v6[4]) != 0)
    {
      v40 = *(v36 + 36);
      v41 = v19 * v40;
      v42 = v11;
      v43 = v8;
      if (v38 - 1 == v19)
      {
        v40 = *(v37 + 48) % v40;
      }

      result = calc_overlap_range(v41, v40, v6[3], v39, 0);
      v44 = result == 0;
      v8 = v43;
      v11 = v42;
    }

    else
    {
      v44 = 1;
    }
  }

  else
  {
    v44 = 0;
  }

  *(v5 + 16) = v44;
  if (v19 != v13)
  {
    v45 = v15;
    if (v11 < v15)
    {
      v45 = v11;
    }

    *(v5 + 24) = v13 * *(v8 + 36);
    *(v5 + 32) = v45;
    *(v5 + 40) = 0;
  }

  return result;
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

uint64_t authapfs_digest(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v10 = a2;
  if (a2 && a2 < a3)
  {
    v22 = &v22;
    v11 = 2 * *a1;
    __chkstk_darwin(a1);
    bzero(&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
    v12 = *(a1 + 8) + *(a1 + 16) + 19;
    __chkstk_darwin(v13);
    v16 = &v22 - v15;
    if (v17 >= 8)
    {
      memset(&v22 - v15, 170, v14);
    }

    ccdigest_init();
    v18 = 2 * (a2 & 0x7FFFFFFF);
    if (v18 > v7)
    {
      goto LABEL_18;
    }

    do
    {
      ccdigest_parallel();
      ccdigest_update();
      v7 -= v18;
      a4 += v18;
    }

    while (v7 >= v18);
    if (v7)
    {
LABEL_18:
      do
      {
        if (v7 >= v10)
        {
          v19 = v10;
        }

        else
        {
          v19 = v7;
        }

        ccdigest();
        ccdigest_update();
        a4 += v19;
        v7 -= v19;
      }

      while (v7);
    }

    (*(a1 + 56))(a1, v16, a5);
    v20 = *(a1 + 8) + *(a1 + 16);
    return cc_clear();
  }

  else
  {

    return ccdigest();
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
  memset(__s1, 0, sizeof(__s1));
  if (!a2)
  {
    return 22;
  }

  result = authapfs_hash_node(a1, __s1, a3, a4);
  if (!result)
  {
    result = memcmp(__s1, a2, a3);
    if (result)
    {
      v11 = -86;
      *&v7 = 0xAAAAAAAAAAAAAAAALL;
      *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v10[6] = v7;
      v10[7] = v7;
      v10[4] = v7;
      v10[5] = v7;
      v10[2] = v7;
      v10[3] = v7;
      v10[0] = v7;
      v10[1] = v7;
      v9 = -86;
      v8[6] = v7;
      v8[7] = v7;
      v8[4] = v7;
      v8[5] = v7;
      v8[2] = v7;
      v8[3] = v7;
      v8[0] = v7;
      v8[1] = v7;
      authapfs_hexdump_hash(a2, v8, a3);
      authapfs_hexdump_hash(__s1, v10, a3);
      log_err("%s:%d: hash mismatch! expected: %s, actual: %s\n", "authapfs_validate_node_hash", 204, v8, v10);
      return 80;
    }
  }

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
  if (!authapfs_should_hash_node(a1))
  {
    return 0;
  }

  if ((byte_1000580C0 & 1) == 0)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = a1[50];
  if (authapfs_seal_is_broken(v4, a1))
  {
    return 0;
  }

  memset(__s2, 0, sizeof(__s2));
  if (!a2)
  {
    return a2;
  }

  if (!memcmp((a2 + 32), __s2, HIBYTE(v5) & 0x7F))
  {
    return 0;
  }

  a2 = authapfs_validate_node_hash(a1, (a2 + 32), HIBYTE(v5) & 0x7F, (v5 >> 44) & 0xFFF);
  if (a2)
  {
    v7 = obj_oid(a1);
    v8 = obj_xid(a1);
    v9 = obj_oid(v4);
    log_err("%s:%d: failed to validate node %p (oid:%llu, xid:%llu) of fs %p (%llu) - %d\n", "authapfs_validate_node", 325, a1, v7, v8, v4, v9, a2);
  }

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
    return dword_100051828[(a1 - 1)];
  }
}

double sub_100013E88(uint64_t a1, uint64_t a2, int *a3)
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

uint64_t sub_100013ED4(uint64_t a1)
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

uint64_t sub_100013F60(uint64_t a1, void *a2, int a3)
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

    v13 = 0xAAAAAAAAAAAAAAAALL;
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

  result = sub_100013F60(a1, &v8, 0);
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

uint64_t sub_1000142B8(uint64_t a1)
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

uint64_t sub_100014308(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = sub_100014F4C(a1, *(v2 + 116));
  if (v3)
  {
    return v3;
  }

  v3 = sub_100014F4C(a1, *(v2 + 120));
  if (v3)
  {
    return v3;
  }

  v3 = sub_100014F4C(a1, *(v2 + 124));
  if (v3)
  {
    return v3;
  }

  v6 = *(v2 + 56);
  if ((v6 & 0x20) != 0)
  {
    v3 = sub_100014F4C(a1, *(v2 + 1040));
    if (v3)
    {
      return v3;
    }

    v6 = *(v2 + 56);
  }

  if ((v6 & 0x40) != 0)
  {
    v3 = sub_100014F4C(a1, *(v2 + 1044));
    if (v3)
    {
      return v3;
    }
  }

  v3 = sub_100014E94(a1 + 3296, "apfs-stream-id-lock", 0x100u);
  if (v3)
  {
    return v3;
  }

  v7 = sub_100014E94(a1 + 3432, "apfs-dir-stats-id-lock", 0x10u);
  if (v7)
  {
    v4 = v7;
LABEL_16:
    sub_100014F00(a1 + 3296);
    return v4;
  }

  v8 = initialize_phys_range_lock_state(a1 + 3648, 0x20u);
  if (v8)
  {
    v4 = v8;
    sub_100014F00(a1 + 3432);
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

uint64_t sub_100014558(uint64_t a1)
{
  v2 = *(a1 + 3632);
  if (v2 && !*(*a1 + 940))
  {
    obj_release(v2);
  }

  sub_100014F00(a1 + 3432);
  sub_100014F00(a1 + 3296);
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

uint64_t sub_100014660(uint64_t a1, char a2, uint64_t a3, unsigned int a4, unint64_t a5)
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
    sub_100012A58(*(a1 + 392), a1, a5);
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

    v13 = sub_100014F84(a1, a5, &v24, a3);
    if (v13)
    {
      return v13;
    }

    *a3 = 0;
    *(a3 + 16) = 2;
  }

  v13 = sub_100015144(a1, a5, *(*(a1 + 376) + 144), &v24, a3);
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

  v15 = 0xAAAAAAAAAAAAAAAALL;
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

uint64_t apfs_get_fsroot_tree_ext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
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
  memset(&v14[2], 0, 64);
  v14[0] = *off_100054500;
  v14[1] = unk_100054510;
  if ((*(v10 + 56) & 0x20) == 0 || (result = authapfs_get_hash_args(a1, v14), !result))
  {
    if (v11 == 2)
    {
      return btree_get_extended(a1, v11 & 0xFFFF0000, v12, a3, a4 != 0, v14, a4, a5);
    }

    else
    {
      return 22;
    }
  }

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

uint64_t apfs_get_secondary_fsroot_tree_ext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5)
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

  return btree_get_extended(a1, v11 & 0xFFFF0000, v12, a3, a4 != 0, off_100054560, a4, a5);
}

uint64_t apfs_get_extentref_tree(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  if (*(*(a1 + 376) + 120) == 2)
  {
    return btree_get_extended(a1, *(*(a1 + 376) + 120) & 0xFFFF0000, a2, 0, a3 != 0, &off_1000545C0, a3, a4);
  }

  else
  {
    return 22;
  }
}

uint64_t apfs_get_snap_meta_tree(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v3 = *(a1 + 376);
  if (*(v3 + 124) == 2)
  {
    return btree_get_extended(a1, *(v3 + 124) & 0xFFFF0000, *(v3 + 152), 0, a2 != 0, &off_100054620, a2, a3);
  }

  else
  {
    return 22;
  }
}

uint64_t apfs_get_doc_id_tree_ext(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t **a6)
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

  return btree_get_extended(a1, *(v7 + 1068) & 0xFFFF0000, *(v7 + v8), a4, a5 != 0, off_100054680, a5, a6);
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

uint64_t sub_100014E94(uint64_t a1, uint64_t a2, unsigned int a3)
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

void sub_100014F00(uint64_t a1)
{
  free_cv((a1 + 64));
  free_lock(a1);
  v2 = *(a1 + 112);
  v3 = 16 * *(a1 + 120);

  _apfs_free(v2, v3);
}

uint64_t sub_100014F4C(uint64_t a1, int a2)
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

uint64_t sub_100014F84(uint64_t a1, unint64_t a2, unint64_t *a3, uint64_t *a4)
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
        v12 = sub_100015144(a1, a2, v11, a3, a4);
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

uint64_t sub_100015144(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5)
{
  v25 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[2] = v10;
  v24[3] = v10;
  v24[0] = v10;
  v24[1] = v10;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v23 = 0;
  memset(v21, 170, 20);
  extentref_tree = apfs_get_extentref_tree(a1, a3, 0, &v23);
  if (extentref_tree)
  {
    v12 = extentref_tree;
    log_err("%s:%d: apfs_get_extentref_tree(oid=%llu) returned %d\n", "apfs_reap_extentref_blocks", 510, a3, extentref_tree);
  }

  else
  {
    v22 = *a5 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
    bt_iterator_init_with_hint(v24, v23, 0, 4, &v22, 8, 8u, v21, 0x14u, 0);
    if ((v13 & 0xFFFFFFFD) != 0)
    {
      v12 = v13;
      log_err("%s:%d: %s tree_iter_init() returned %d\n", "apfs_reap_extentref_blocks", 520, (a1 + 4040), v13);
    }

    else
    {
      while (1)
      {
        if (bt_iterator_ended(v24))
        {
          btree_delete(v23, a2, 0);
          v12 = 0;
          goto LABEL_5;
        }

        v15 = v22 & 0xFFFFFFFFFFFFFFFLL;
        *a5 = v22 & 0xFFFFFFFFFFFFFFFLL;
        if (v21[0] >> 60 == 1 && v21[1] <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v17 = v21[0] & 0xFFFFFFFFFFFFFFFLL;
          if ((v21[0] & 0xFFFFFFFFFFFFFFFLL) != 0)
          {
            if (apfs_free_data_blocks(a1, a2, v15, v21[0] & 0xFFFFFFFFFFFFFFFLL))
            {
              log_err("%s:%d: %s extent at lba %llu len %llu couldn't be freed: %d\n");
            }
          }

          else
          {
            log_err("%s:%d: %s found bogus 0-length extent at lba %llu, ignoring\n");
          }

          v18 = *a4 + v17;
          *a4 = v18;
          if (v18 > 0x4000)
          {
            break;
          }
        }

        v19 = bt_iterator_next(v24);
        if ((v19 & 0xFFFFFFFD) != 0)
        {
          v20 = v19;
          log_err("%s:%d: %s iter_next returned %d\n", "apfs_reap_extentref_blocks", 552, (a1 + 4040), v19);
          v12 = v20;
          goto LABEL_5;
        }
      }

      v12 = 36;
    }
  }

LABEL_5:
  if (v23)
  {
    obj_release(v23);
  }

  return v12;
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

BOOL bitmap_range_find_desired_or_first_clear_range(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, int a7)
{
  v12 = 0;
  v36 = 0xAAAAAAAAAAAAAAAALL;
  v34 = a4 - 1;
  v13 = -1;
  while (1)
  {
    if (v12 >= a2)
    {
      goto LABEL_40;
    }

    v14 = a4 - a3;
    if (a4 - a3 < 1)
    {
      goto LABEL_40;
    }

    v15 = 8 * (a3 / 64);
    while (1)
    {
      v16 = a3 & 0x3F;
      if (a3 <= 0)
      {
        v16 = -(-a3 & 0x3F);
      }

      v17 = 64 - v16;
      if (64 - v16 >= v14)
      {
        v17 = v14;
      }

      v18 = __clz(__rbit64(~(*(a1 + v15) >> v16)));
      if (v17 > v18)
      {
        break;
      }

      a3 += v17;
      v15 += 8;
      v19 = v14 <= v17;
      v14 -= v17;
      if (v19)
      {
        goto LABEL_40;
      }
    }

    v20 = v18 + a3;
    if ((v18 + a3) >= a4 - v12)
    {
LABEL_40:
      v20 = v13;
      goto LABEL_41;
    }

    if (!v12)
    {
      v13 = v18 + a3;
      v12 = 1;
      if (v20 >= v34)
      {
        break;
      }
    }

    v35 = a7;
    v21 = v12 + 1;
    if (v12 + 1 < a4 - v20)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = a4 - v20;
    }

    if (bitmap_range_find_last_set(a1, v20, v22, &v36))
    {
      v23 = v36;
      v20 = v13;
    }

    else
    {
      v24 = a2 - v21;
      if (a2 == v21)
      {
        v12 = a2;
        goto LABEL_41;
      }

      v25 = v21 + v20;
      if (v24 >= a4 - (v21 + v20))
      {
        v24 = a4 - (v21 + v20);
      }

      if (v24 < 1)
      {
LABEL_35:
        v12 = v24 + v21;
      }

      else
      {
        v26 = v25 + 63;
        if (v25 >= 0)
        {
          v26 = v21 + v20;
        }

        v27 = (a1 + 8 * (v26 >> 6));
        v28 = v24;
        while (1)
        {
          v29 = v25 & 0x3F;
          if (v25 <= 0)
          {
            v29 = -(-v25 & 0x3F);
          }

          v30 = 64 - v29;
          if (64 - v29 >= v28)
          {
            v30 = v28;
          }

          v31 = *v27++;
          v32 = __clz(__rbit64(v31 >> v29));
          if (v30 > v32)
          {
            break;
          }

          v25 += v30;
          v19 = v28 <= v30;
          v28 -= v30;
          if (v19)
          {
            goto LABEL_35;
          }
        }

        v12 = v32 + v25 - v20;
      }

      v23 = v12 + v20;
      v36 = v12 + v20;
      v13 = v20;
    }

    a7 = v35;
    a3 = v23 + 1;
    if (v35)
    {
      goto LABEL_41;
    }
  }

  v12 = 1;
LABEL_41:
  *a5 = v20;
  *a6 = v12;
  return v12 == a2;
}

unint64_t bitmap_count_bits(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= a4)
  {
    return 0;
  }

  result = 0;
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (a2)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  do
  {
    v8 = a4 - a3;
    if (a4 - a3 < 1)
    {
      break;
    }

    v9 = (a1 + 8 * (a3 / 64));
    while (1)
    {
      v10 = a3 & 0x3F;
      if (a3 <= 0)
      {
        v10 = -(-a3 & 0x3F);
      }

      v11 = 64 - v10;
      v13 = *v9++;
      v12 = v13;
      if (64 - v10 >= v8)
      {
        v11 = v8;
      }

      v14 = __clz(__rbit64((v12 >> v10) ^ v6));
      if (v11 > v14)
      {
        break;
      }

      a3 += v11;
      v15 = v8 <= v11;
      v8 -= v11;
      if (v15)
      {
        return result;
      }
    }

    v16 = v14 + a3;
    v17 = a4 - (v14 + a3);
    if (v17 < 1)
    {
      return result - v16 + a4;
    }

    v18 = v16 + 63;
    if (v16 >= 0)
    {
      v18 = v14 + a3;
    }

    v19 = (a1 + 8 * (v18 >> 6));
    v20 = v14 + a3;
    while (1)
    {
      v21 = v20 & 0x3F;
      if (v20 <= 0)
      {
        v21 = -(-v20 & 0x3F);
      }

      v22 = 64 - v21;
      v24 = *v19++;
      v23 = v24;
      if (64 - v21 >= v17)
      {
        v22 = v17;
      }

      v25 = __clz(__rbit64((v23 >> v21) ^ v7));
      if (v22 > v25)
      {
        break;
      }

      v20 += v22;
      v15 = v17 <= v22;
      v17 -= v22;
      if (v15)
      {
        return result - v16 + a4;
      }
    }

    a3 = v25 + v20;
    result = result - v16 + v25 + v20;
  }

  while ((v25 + v20) < a4);
  return result;
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
    v29 = sub_1000043D4(v28);
    v30 = *(*(*a1 + 392) + 384) + 212;
    obj_type(a1);
    obj_subtype(a1);
    obj_oid(a1);
    log_corrupt(v29, "%s:%d: %s BT node sanity check failed for node type %u subtype %u oid %llu with mask 0x%x!\n", v31, v32, v33, v34, v35, v36, "btree_node_sanity_check");
    v28 = *(*a1 + 392);
  }

  return nx_corruption_detected_int(v28);
}

uint64_t sub_1000160CC(uint64_t a1, unsigned int a2, uint64_t a3)
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

uint64_t sub_1000161BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
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
            if (sub_100005FC4(v20, v17, v21, v14, v27, a5, 0))
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

uint64_t btree_node_get(void *a1, void *a2, uint64_t a3, unsigned int a4, __int16 a5, uint64_t a6, uint64_t **a7)
{
  v14 = a1[50];
  if ((v14 & 0x4000000000000000) != 0)
  {
    v15 = 96;
  }

  else
  {
    v15 = (HIBYTE(v14) & 0x3F) + 32;
  }

  __chkstk_darwin();
  v17 = v30 - v16;
  bzero(v30 - v16, v15);
  v31 = 0;
  v30[3] = 448;
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
  v30[2] = obj_size_phys(a1);
  v21 = obj_type_and_flags(a1) & 0xFFFF0000;
  v30[0] = v21 | 3;
  v30[1] = obj_subtype(a1);
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
    v24 = v30;
  }

  v25 = obj_get(*a1, (a4 & 0x180 | (32 * ((a4 >> 2) & 1))) & 0xFFFFFFFEFFFFFFFFLL | ((((a4 & 0x200) >> 9) & 1) << 32) | v23, *a2, v24, v17, a1[1], a3, a6, &v31);
  if (v25)
  {
    v26 = v25;
    v27 = 0;
  }

  else
  {
    v27 = v31;
    if ((a4 & 0x104) == 4 && (v31[2] & 0x10) != 0)
    {
      if (a4)
      {
        v28 = 2;
      }

      else
      {
        v28 = 1;
      }

      btree_node_release(v31, v28 & ((a4 << 30) >> 31));
      v27 = 0;
      v26 = 2;
    }

    else
    {
      v26 = 0;
    }
  }

  *a7 = v27;
  return v26;
}

void btree_node_release(uint64_t *a1, char a2)
{
  v3 = a2 & 3;
  if (v3)
  {
    obj_unlock(a1, v3);
  }

  obj_release(a1);
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

  result = sub_100016954(a1, *v10, v12);
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

uint64_t sub_100016954(uint64_t a1, unsigned int a2, int a3)
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
  result = sub_100016A80(a1, v12, v13);
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

uint64_t sub_100016A80(uint64_t a1, unsigned int a2, unsigned int a3)
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

  v9 = 0xAAAAAAAAAAAAAAAALL;
  v8 = -21846;
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
  v6 = *(a1 + 400);
  __chkstk_darwin(a1);
  v8 = (&v11 - v7);
  bzero(&v11 - v7, v9);
  result = btree_node_child_val(a1, a2, v8);
  if (!result)
  {
    *a3 = *v8;
  }

  return result;
}

uint64_t bt_insert(void *a1, uint64_t a2, unint64_t *a3, int a4, void *a5, unsigned int a6, uint64_t a7)
{
  LODWORD(v10) = a4;
  v14 = a1[50];
  __chkstk_darwin(a1);
  v16 = (&v188 - v15);
  bzero(&v188 - v15, v17);
  v221 = 0u;
  v222 = 0u;
  v220 = 0u;
  v218 = 0;
  v219 = 0;
  v217 = 0xAAAAAAAAAAAAAAAALL;
  v216 = 0;
  v212 = -1431655766;
  v211 = -1431655766;
  if (!a1[52])
  {
    return 22;
  }

  v215 = -21846;
  v214 = v10;
  if (a6 == 65534)
  {
    v18 = 0;
  }

  else
  {
    v18 = a6;
  }

  v213 = v18;
  v19 = btree_entry_size_check(a1, v10, a6);
  if (v19)
  {
    v20 = v19;
    v21 = a1[1];
    if (v21)
    {
      v22 = (v21 + 4040);
      if ((v14 & 0x40) != 0)
      {
        v23 = v10;
      }

      else
      {
        v23 = (v10 + 7) & 0xFFFFFFF8;
      }

      if ((v14 & 0x40) != 0)
      {
        v24 = v18;
      }

      else
      {
        v24 = (v18 + 7) & 0x1FFF8;
      }

      v25 = (v14 >> 27) & 0x1F000;
      v26 = (v14 >> 23);
      v27 = (v14 >> 9) & 0x3FFF;
      if (v27)
      {
        v28 = (v14 >> 9) & 0x3FFF;
      }

      else
      {
        v28 = (((v25 - 160) & 0xFFE0) >> 2) - 72;
      }
    }

    else
    {
      v22 = (*(*(*a1 + 392) + 384) + 212);
      if ((v14 & 0x40) != 0)
      {
        v23 = v10;
      }

      else
      {
        v23 = (v10 + 7) & 0xFFFFFFF8;
      }

      if ((v14 & 0x40) != 0)
      {
        v24 = v18;
      }

      else
      {
        v24 = (v18 + 7) & 0x1FFF8;
      }

      v25 = (v14 >> 27) & 0x1F000;
      v26 = (v14 >> 23);
      v27 = (v14 >> 9) & 0x3FFF;
      if (v27)
      {
        v28 = (v14 >> 9) & 0x3FFF;
      }

      else
      {
        v28 = (((v25 - 160) & 0xFFE0) >> 2) - 72;
      }
    }

    v30 = btree_entry_max_size(v14, v25, v27, v26);
    log_err("%s:%d: %s request to insert entry %d (%d) %d (%d) = (%d), max size is %d key %d, error %d\n", "bt_insert", 3392, v22, v10, v23, v18, v24, v23 + v24, v30, v28, v20);
    return v20;
  }

  v203 = a6;
  obj_lock(a1, 2);
  v29 = obj_modify(a1, (*(a1 + 100) >> 3) & 2, a7);
  if (v29)
  {
    v20 = v29;
    obj_unlock(a1, 2);
    return v20;
  }

  *&v220 = a1;
  obj_retain(a1);
  v32 = a1[49];
  v33 = *(v32 + 16);
  v34 = *(v32 + 20) >= v18;
  if (v33 < v10)
  {
    v35 = v10;
  }

  else
  {
    v35 = v33;
  }

  if (v33 < v10)
  {
    v34 = 0;
  }

  v205 = v34;
  v36 = a1[54];
  v202 = a2;
  if (v36)
  {
    v37 = a1[53];
    if (v37)
    {
      v38 = a1[1];
      if (!v38)
      {
        v38 = *(*a1 + 392);
      }

      if (v37(v38, a3, v10))
      {
        v221 = v220;
        *&v220 = 0;
        v39 = a1[54];
        *v16 = v39;
        if (v39 != obj_oid(a1) && !btree_node_get(a1, v16, a2, (a7 != 0) | (((*(a1[7] + 32) >> 3) & 1) << 6) | 6u, 61455, a7, &v220))
        {
          v40 = v35;
          v41 = v220;
          if ((*(*(v220 + 56) + 32) & 2) != 0 && a1[54] == *(v220 + 112))
          {
            v42 = sub_100018B08(v220, a3, v10, &v220 + 4, (&v220 | 0xA));
            v41 = v220;
            if (!v42)
            {
              if (WORD4(v220))
              {
                if (BYTE10(v220))
                {
                  v43 = (sub_100018CDC)(v220);
                }

                else
                {
                  v43 = (sub_100019640)(v220);
                }

                if (!v43)
                {
                  v198 = 0;
                  v46 = 0;
                  v20 = 0;
                  v200 = 0;
                  v204 = 0;
                  goto LABEL_362;
                }

                v41 = v220;
              }
            }
          }

          obj_unlock(v41, 2);
          obj_release(v41);
          v35 = v40;
        }

        v220 = v221;
        *&v221 = 0;
      }
    }
  }

  v44 = *(*(v220 + 56) + 32);
  v45 = sub_100018B08(v220, a3, v10, &v220 + 4, (&v220 | 0xA));
  v20 = v45;
  if ((v44 & 2) != 0)
  {
    if (v45)
    {
      goto LABEL_59;
    }
  }

  else
  {
    if (v45)
    {
      goto LABEL_59;
    }

    if ((BYTE10(v220) & 1) == 0 && WORD4(v220))
    {
      --WORD4(v220);
    }
  }

  v192 = v35;
  v46 = v220;
  v53 = *(v220 + 56);
  v54 = *(v53 + 36);
  v55 = *(v53 + 32);
  v206 = (__PAIR64__(v54, v55 & 2) - 1) >> 32 == WORD4(v220);
  if (WORD4(v220) || (BYTE10(v220) & 1) != 0 || (v55 & 2) != 0)
  {
    v56 = 0;
    v46 = 0;
    v57 = v203;
    if ((v55 & 2) == 0)
    {
      goto LABEL_103;
    }

    v198 = 0;
    v204 = 0;
LABEL_89:
    v58 = v222;
    if (v222)
    {
      if ((v222 != a1 || v205) && v222 != v46 && v222 != v198)
      {
        obj_unlock(v222, 2);
        obj_release(v58);
      }

      *&v222 = 0;
    }

    if (v206)
    {
      v59 = a1[54];
      v60 = *(v220 + 112);
      if (v59 != v60)
      {
        v61 = a1[50];
        if (v59)
        {
          if ((v61 & 0x10) == 0)
          {
            panic("btree rightmost leaf mismatch! (expected %lld found %lld)\n", *(v220 + 112), v59);
          }

          panic("btree rightmost leaf field is set for physical tree!\n");
        }

        if ((v61 & 0x10) == 0)
        {
          a1[54] = v60;
        }
      }
    }

    v200 = v56;
    v10 = v214;
    if (BYTE10(v220) == 1)
    {
      v145 = sub_100018CDC(v220, WORD4(v220), a3, v214, a5, v57, a7);
    }

    else
    {
      v145 = sub_100019640(v220, WORD4(v220), a3, v214, a5, v57, a7);
    }

    v20 = v145;
    if (v145 != 28)
    {
      goto LABEL_357;
    }

    v146 = sub_100019DDC(a1, v221, WORD4(v221), v220, WORD4(v220), a3, v10, 1u, &v214, &v213, 0, a2, a7, &v219);
    if (v146)
    {
      v20 = v146;
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
      goto LABEL_357;
    }

    v149 = v219;
    if (!v219)
    {
      v149 = v220;
      goto LABEL_352;
    }

    if (v221)
    {
      ++WORD4(v221);
      v150 = v220;
      if (v220 && (v220 != a1 || v205) && v220 != v46 && v220 != v198)
      {
        obj_unlock(v220, 2);
        obj_release(v150);
      }

      v219 = 0;
      *&v220 = v149;
LABEL_352:
      v20 = sub_10001BEC4(v149, a3, v10, a5, v203, a7, &v220 + 4, (&v220 | 0xA));
      if (!v20)
      {
        goto LABEL_357;
      }

      goto LABEL_353;
    }

    v168 = v220;
    *&v221 = v220;
    if (*(v219[7] + 36))
    {
      v169 = btree_node_key_ptr(v219, 0, &v217, &v215);
      if (v169)
      {
        v20 = v169;
        v219 = 0;
        *&v220 = v149;
        goto LABEL_353;
      }

      v168 = v221;
      v182 = v217;
      v183 = v215;
    }

    else
    {
      v182 = a3;
      v183 = v10;
    }

    v20 = sub_100019AB8(v168, v182, v183, &v221 + 4, &v221 + 10);
    v219 = 0;
    *&v220 = v149;
    if (!v20)
    {
      goto LABEL_352;
    }

LABEL_353:
    v151 = a1[1];
    if (v151)
    {
      v152 = (v151 + 4040);
    }

    else
    {
      v152 = (*(*(*a1 + 392) + 384) + 212);
    }

    log_err("%s:%d: %s bt_shift_or_split failed with error: %d\n", "bt_insert", 3915, v152, v20);
LABEL_357:
    if (!v20 && !WORD4(v220) && v221)
    {
      v153 = btree_node_key_ptr(v221, WORD4(v221), &v217, &v215);
      if (v153)
      {
        v20 = v153;
      }

      else
      {
        v164 = a1[1];
        if (!v164)
        {
          v164 = *(*a1 + 392);
        }

        v20 = (a1[52])(v164, a3, v10, v217, v215, &v216);
        if (!v20)
        {
          if (v216)
          {
            v165 = sub_100018CDC(v221, WORD4(v221), a3, v10, 0, 0, a7);
            v20 = v165;
            if (v165)
            {
              v166 = a1[1];
              if (v166)
              {
                v167 = (v166 + 4040);
              }

              else
              {
                v167 = (*(*(*a1 + 392) + 384) + 212);
              }

              log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_insert", 3929, v167, v165);
            }
          }
        }
      }
    }

LABEL_362:
    v154 = v221;
    if (v221)
    {
      if ((v221 != a1 || v205) && v221 != v46 && v221 != v198)
      {
        obj_unlock(v221, 2);
        obj_release(v154);
      }

      *&v221 = 0;
    }

    v155 = v220;
    if (v220)
    {
      if ((v220 != a1 || v205) && v220 != v46 && v220 != v218)
      {
        obj_unlock(v220, 2);
        obj_release(v155);
      }

      *&v220 = 0;
    }

    if (v20)
    {
      goto LABEL_60;
    }

    v156 = a1[49];
    v157 = *(v156 + 16);
    v158 = v157 >= v10;
    v159 = v157 < v10;
    if (!v158)
    {
      *(v156 + 16) = v10;
    }

    v160 = v200;
    if (*(v156 + 20) < v213)
    {
      *(v156 + 20) = v213;
      v159 = 1;
    }

    if (BYTE10(v220))
    {
      if ((((a1[50] & 0x80) == 0) & ~v159) != 0)
      {
        goto LABEL_384;
      }
    }

    else
    {
      atomic_fetch_add_explicit((v156 + 24), 1uLL, memory_order_relaxed);
    }

    obj_dirty(a1, a7, 0);
LABEL_384:
    if ((v204 & (WORD4(v220) == 0)) != 1)
    {
      v20 = 0;
      goto LABEL_60;
    }

    if (v46)
    {
      v161 = sub_100018CDC(v46, v160, a3, v10, 0, 0, a7);
      v20 = v161;
      if (v161)
      {
        v162 = a1[1];
        if (v162)
        {
          v163 = (v162 + 4040);
        }

        else
        {
          v163 = (*(*(*a1 + 392) + 384) + 212);
        }

        log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_insert", 3969, v163, v161);
      }

      if (v46 != v222 && v46 != v221 && (v46 != a1 || v205))
      {
        obj_unlock(v46, 2);
        obj_release(v46);
      }
    }

    else
    {
      v20 = 0;
    }

    v170 = v218;
    v171 = v218 + 7;
    if (*(v218[7] + 34) < 2u)
    {
LABEL_445:
      if (v170 != v222 && v170 != v221 && (v170 != a1 || v205))
      {
        obj_unlock(v170, 2);
        obj_release(v170);
      }

      v46 = 0;
      v218 = 0;
      goto LABEL_60;
    }

    v172 = v214;
    while (1)
    {
      v209 = -21846;
      LOBYTE(v207) = -86;
      v173 = sub_100019AB8(v170, a3, v172, &v209, &v207);
      if (v173)
      {
        v20 = v173;
        goto LABEL_59;
      }

      v174 = v207;
      v175 = v209;
      if ((v207 & 1) != 0 || v209)
      {
        v180 = a1[1];
        if (v180)
        {
          v181 = (v180 + 4040);
        }

        else
        {
          v181 = (*(*(*a1 + 392) + 384) + 212);
        }

        v186 = obj_oid(v170);
        v187 = obj_subtype(v170);
        log_err("%s:%d: %s minkey update traversal unexpectedly found the key (%d) or a non-zero index (%d); oid %llu subtype 0x%x level %d\n", "bt_insert", 3987, v181, v174, v175, v186, v187, *(*v171 + 34));
LABEL_444:
        v20 = 0;
        goto LABEL_445;
      }

      v176 = sub_100018CDC(v170, 0, a3, v172, 0, 0, a7);
      v20 = v176;
      if (v176)
      {
        v177 = a1[1];
        if (v177)
        {
          v178 = (v177 + 4040);
        }

        else
        {
          v178 = (*(*(*a1 + 392) + 384) + 212);
        }

        log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_insert", 3992, v178, v176);
      }

      v179 = *(*v171 + 34);
      if (v179 == 2)
      {
        goto LABEL_445;
      }

      v20 = btree_node_child_val(v170, 0, v16);
      v218 = 0;
      if (!v20)
      {
        v20 = btree_node_get(a1, v16, v202, 3u, v179 - 1, a7, &v218);
      }

      if (v170 != v222 && v170 != v221 && (v170 != a1 || v205))
      {
        obj_unlock(v170, 2);
        obj_release(v170);
      }

      v170 = v218;
      if (v20)
      {
        break;
      }

      v171 = v218 + 7;
      if (*(v218[7] + 34) <= 1u)
      {
        goto LABEL_444;
      }
    }

    if (v218)
    {
      goto LABEL_445;
    }

LABEL_59:
    v46 = 0;
    goto LABEL_60;
  }

  v218 = v220;
  v56 = 1;
LABEL_103:
  v62 = v46;
  v46 = 0;
  v195 = v62;
  v196 = v62;
  v197 = v62;
  v201 = v62;
  v198 = v62;
  v199 = v62;
  v204 = v56;
  v56 = 0;
  v193 = a5;
  while (2)
  {
    v200 = v56;
    v63 = v222;
    if (v222 && (v222 != a1 || v205))
    {
      v64 = v222 == v46 || v222 == v199;
      if (!v64)
      {
        obj_unlock(v222, 2);
        obj_release(v63);
      }
    }

    v65 = v221;
    v221 = v220;
    v222 = v65;
    *&v220 = 0;
    v66 = btree_node_child_val(v221, WORD4(v221), v16);
    if (v66)
    {
LABEL_330:
      v20 = v66;
      goto LABEL_60;
    }

    v67 = *(*(v221 + 56) + 34) - 1;
    v68 = a1;
    v69 = v16;
    for (i = a2; ; i = v85)
    {
      v66 = btree_node_get(v68, v69, i, 3u, v67, a7, &v220);
      if (v66)
      {
        goto LABEL_330;
      }

      v71 = v220;
      if ((a1[50] & 0x10) != 0 && *(v220 + 112) != *v16)
      {
        sub_100019AFC(v221, WORD4(v221), (v220 + 112), a7);
        v71 = v220;
      }

      v72 = *(*(v71 + 56) + 32);
      v73 = sub_100018B08(v71, a3, v214, &v220 + 4, (&v220 | 0xA));
      v20 = v73;
      if ((v72 & 2) != 0)
      {
        if (v73)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v73)
        {
          goto LABEL_60;
        }

        if ((BYTE10(v220) & 1) == 0 && WORD4(v220))
        {
          --WORD4(v220);
        }
      }

      v74 = a7;
      v75 = a3;
      v76 = v46;
      v77 = v220;
      if (!v206)
      {
        v206 = 0;
        v79 = *(v220 + 56);
        LOWORD(v80) = *(v79 + 32);
        v78 = WORD4(v220);
        if ((v80 & 2) == 0)
        {
          goto LABEL_152;
        }

        goto LABEL_132;
      }

      v78 = WORD4(v220);
      v79 = *(v220 + 56);
      v80 = *(v79 + 32);
      if (((v80 >> 1) & 1) + *(v79 + 36) - 1 == WORD4(v220))
      {
        break;
      }

      v206 = 0;
      if ((v80 & 2) == 0)
      {
        goto LABEL_152;
      }

LABEL_132:
      if (*(v79 + 36) != v78)
      {
        goto LABEL_152;
      }

      v81 = WORD4(v221);
      v82 = v221;
      if (*(*(v221 + 56) + 36) - 1 <= WORD4(v221) || sub_100019BD4(v77, 1u, &v214, &v213, 0, 0, 0))
      {
        goto LABEL_152;
      }

      v66 = btree_node_child_val(v82, (v81 + 1), v16);
      v46 = v76;
      if (v66)
      {
        goto LABEL_330;
      }

      v83 = v220;
      obj_unlock(v220, 2);
      obj_release(v83);
      *&v220 = 0;
      v84 = WORD4(v221)++;
      if ((v204 & (v84 == 0)) == 1)
      {
        v85 = v202;
        a3 = v75;
        if (v46)
        {
          a7 = v74;
          v86 = v201;
          if (v46 != v222 && v46 != v221 && (v46 != a1 || v205))
          {
            obj_unlock(v46, 2);
            obj_release(v46);
            v86 = v218;
            v195 = v218;
            v196 = v218;
            v197 = v218;
            v198 = v218;
          }
        }

        else
        {
          a7 = v74;
          v86 = v201;
        }

        if (v86)
        {
          if (v86 != v222 && v86 != v221 && (v86 != a1 || v205))
          {
            obj_unlock(v86, 2);
            obj_release(v86);
          }

          v198 = 0;
          v195 = 0;
          v196 = 0;
          v197 = 0;
          v201 = 0;
          v199 = 0;
          v46 = 0;
          v200 = 0;
          v204 = 0;
          v218 = 0;
        }

        else
        {
          v201 = 0;
          v199 = 0;
          v46 = 0;
          v200 = 0;
          v204 = 0;
        }
      }

      else
      {
        v85 = v202;
        a3 = v75;
        a7 = v74;
      }

      v67 = *(*(v221 + 56) + 34) - 1;
      v68 = a1;
      v69 = v16;
    }

    if (a1[54] == *(v221 + 112))
    {
      a1[54] = *(v220 + 112);
    }

    v206 = 1;
    if ((v80 & 2) != 0)
    {
      goto LABEL_132;
    }

LABEL_152:
    v87 = v78 != 0;
    if (!(v204 & 1 | v87))
    {
      v204 = 0;
      a2 = v202;
      v46 = v76;
      if ((v80 & 2) == 0)
      {
        a3 = v75;
        a7 = v74;
        a5 = v193;
        if ((BYTE10(v220) & 1) == 0)
        {
          v46 = v221;
          v204 = 1;
          v198 = v77;
          v195 = v77;
          v200 = WORD4(v221);
          v196 = v77;
          v197 = v77;
          v218 = v77;
          v201 = v77;
          v199 = v77;
        }

        goto LABEL_172;
      }

      goto LABEL_162;
    }

    a2 = v202;
    v46 = v76;
    if ((v204 & v87) != 1)
    {
LABEL_162:
      a3 = v75;
      a7 = v74;
      a5 = v193;
      goto LABEL_172;
    }

    a3 = v75;
    if (!v46)
    {
      a7 = v74;
      goto LABEL_164;
    }

    a7 = v74;
    if (v46 == v222)
    {
LABEL_164:
      a5 = v193;
      goto LABEL_165;
    }

    a5 = v193;
    if (v46 != v221 && (v46 != a1 || v205))
    {
      obj_unlock(v46, 2);
      obj_release(v46);
      v195 = v218;
      v196 = v218;
      v198 = v218;
      v197 = v218;
    }

LABEL_165:
    v88 = v197;
    if (v197)
    {
      if (v197 != v222 && v197 != v221 && (v197 != a1 || v205))
      {
        obj_unlock(v197, 2);
        obj_release(v88);
      }

      v198 = 0;
      v195 = 0;
      v196 = 0;
      v197 = 0;
      v201 = 0;
      v199 = 0;
      v46 = 0;
      v200 = 0;
      v204 = 0;
      v218 = 0;
    }

    else
    {
      v197 = 0;
      v201 = 0;
      v199 = 0;
      v46 = 0;
      v200 = 0;
      v204 = 0;
    }

LABEL_172:
    v89 = sub_100019D60(v220);
    v194 = v46;
    if (WORD4(v220) || (BYTE10(v220) & 1) != 0)
    {
      goto LABEL_179;
    }

    v66 = btree_node_key_ptr(v221, WORD4(v221), &v217, &v215);
    if (v66)
    {
      goto LABEL_330;
    }

    v90 = a1[1];
    if (!v90)
    {
      v90 = *(*a1 + 392);
    }

    v91 = v214;
    v66 = (a1[52])(v90, a3, v214, v217, v215, &v216);
    if (v66)
    {
      goto LABEL_330;
    }

    if ((v216 & 0x80000000) == 0)
    {
LABEL_179:
      v92 = 0;
      v93 = 0;
    }

    else
    {
      v109 = *(v220 + 400);
      if ((v109 & 0x40) != 0)
      {
        v110 = v91;
      }

      else
      {
        v110 = (v91 + 7) & 0x1FFF8;
      }

      if ((v109 & 0x40) != 0)
      {
        v111 = v215;
      }

      else
      {
        v111 = (v215 + 7) & 0x1FFF8;
      }

      if (v110 <= v111)
      {
        v92 = 0;
      }

      else
      {
        v64 = (*(v220 + 400) & 0x40) == 0;
        if ((v109 & 0x40) != 0)
        {
          v112 = v91;
        }

        else
        {
          v112 = (v91 + 7) & 0x1FFF8;
        }

        if ((*(v220 + 400) & 0x40) != 0)
        {
          v113 = v215;
        }

        else
        {
          v113 = (v215 + 7) & 0x1FFF8;
        }

        v92 = v112 - v113;
      }

      v93 = 1;
    }

    v94 = v221;
    v95 = *(*(v221 + 56) + 34);
    if (v95 < 2)
    {
      LOWORD(v212) = v89;
      v97 = *(v221 + 400);
      v98 = (HIBYTE(v97) & 0x7F) + 8;
      LOWORD(v211) = v98;
      if ((v93 & 1) == 0)
      {
        v96 = v214;
        goto LABEL_188;
      }

      goto LABEL_186;
    }

    v96 = v214;
    if (v89 > v214)
    {
      v96 = v89;
    }

    LOWORD(v212) = v96;
    v97 = *(v221 + 400);
    v98 = (HIBYTE(v97) & 0x7F) + 8;
    LOWORD(v211) = v98;
    if (v93)
    {
LABEL_186:
      v99 = 1;
      goto LABEL_189;
    }

LABEL_188:
    HIWORD(v212) = v96;
    HIWORD(v211) = v98;
    v99 = 2;
LABEL_189:
    LODWORD(v191) = v92;
    LODWORD(v189) = v99;
    LODWORD(v190) = v92;
    if (sub_100019BD4(v221, v99, &v212, &v211, v92, 0, 0))
    {
      v46 = v194;
      goto LABEL_249;
    }

    if (v95 < 2)
    {
      v101 = v220;
      if (BYTE10(v220) == 1)
      {
        if ((*(*(v220 + 56) + 32) & 4) != 0)
        {
          v103 = *(v220 + 400);
          v102 = (v103 >> 9) & 0x3FFF;
        }

        else
        {
          v102 = *(*(v220 + 376) + 8 * WORD4(v220) + 2);
          v103 = *(v220 + 400);
        }

        v215 = v102;
        v114 = btree_node_val_len(v220, WORD4(v220));
        v115 = 0;
        if (v114 == 65534)
        {
          v116 = 0;
        }

        else
        {
          v116 = v114;
        }

        if ((v103 & 0x40) != 0)
        {
          v117 = v214;
        }

        else
        {
          v117 = (v214 + 7) & 0x1FFF8;
        }

        if ((v103 & 0x40) != 0)
        {
          v118 = v102;
        }

        else
        {
          v118 = (v102 + 7) & 0x1FFF8;
        }

        if (v117 > v118)
        {
          if ((v103 & 0x40) != 0)
          {
            v119 = v214;
          }

          else
          {
            v119 = (v214 + 7) & 0xFFF8;
          }

          if ((v103 & 0x40) != 0)
          {
            v120 = v102;
          }

          else
          {
            v120 = (v102 + 7) & 0xFFF8;
          }

          v115 = v119 - v120;
        }

        v121 = v213;
        if ((v103 & 0x40) != 0)
        {
          v122 = v213;
        }

        else
        {
          v122 = (v213 + 7) & 0x1FFF8;
        }

        if ((v103 & 0x40) != 0)
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
          if ((v103 & 0x40) == 0)
          {
            v121 = (v213 + 7) & 0xFFF8;
            LOWORD(v116) = (v116 + 7) & 0xFFF8;
          }

          v124 = v121 - v116;
        }

        v46 = v194;
        if (v115 | v124 && !sub_100019BD4(v101, 0, 0, 0, v115, v124, 0))
        {
          goto LABEL_253;
        }
      }

      else
      {
        v108 = sub_100019BD4(v220, 1u, &v214, &v213, 0, 0, 0);
        v46 = v194;
        if (!v108)
        {
          goto LABEL_253;
        }
      }

      if (v191)
      {
        v105 = v94;
        v100 = 0;
        v106 = 0;
        v107 = 0;
        v104 = v190;
        goto LABEL_248;
      }

LABEL_249:
      v57 = v203;
LABEL_250:
      v56 = v200;
      goto LABEL_251;
    }

    v210 = -21846;
    v208 = -21846;
    v209 = v192;
    v207 = (HIBYTE(v97) & 0x7F) + 8;
    if (v93)
    {
      v100 = 1;
    }

    else
    {
      v210 = v192;
      v208 = (HIBYTE(v97) & 0x7F) + 8;
      v100 = 2;
    }

    v46 = v194;
    v104 = v190;
    v105 = v220;
    v106 = &v209;
    v107 = &v207;
LABEL_248:
    if (sub_100019BD4(v105, v100, v106, v107, v104, 0, 0))
    {
      goto LABEL_249;
    }

LABEL_253:
    v125 = v214;
    v126 = sub_100019DDC(a1, v222, WORD4(v222), v94, (WORD4(v221) + ((BYTE10(v221) & 1) == 0)), a3, v214, v189, &v212, &v211, v191, a2, a7, &v219);
    if (v126)
    {
      v20 = v126;
      v184 = a1[1];
      if (v184)
      {
        v185 = (v184 + 4040);
      }

      else
      {
        v185 = (*(*(*a1 + 392) + 384) + 212);
      }

      log_err("%s:%d: %s bt_shift_or_split failed with error: %d\n", "bt_insert", 3679, v185, v126);
      goto LABEL_60;
    }

    v127 = v219;
    v57 = v203;
    v56 = v200;
    if (!v219)
    {
      goto LABEL_251;
    }

    v128 = v221;
    v191 = v221;
    if (v222)
    {
      ++WORD4(v222);
      if (v221)
      {
        if (v221 != a1 || v205)
        {
          if (v46 == v221)
          {
            v129 = v196;
          }

          else
          {
            v129 = v196;
            if (v221 != v196)
            {
              v130 = v196;
              v189 = v219;
              obj_unlock(v221, 2);
              obj_release(v191);
              v127 = v189;
              v190 = 0;
              v197 = v130;
              v201 = v130;
              v199 = v130;
              goto LABEL_273;
            }
          }

          v197 = v129;
          v201 = v129;
          v199 = v129;
        }

        v190 = v221;
      }

      else
      {
        v190 = 0;
      }

LABEL_273:
      if (v46 == v222 && v46 != 0)
      {
        v56 = WORD4(v222);
      }

      v200 = v56;
      *&v221 = v127;
      v219 = 0;
      v135 = v125;
      v66 = sub_100019AB8(v127, a3, v125, &v221 + 4, &v221 + 10);
      if (v66)
      {
        goto LABEL_330;
      }

      v136 = v220;
      obj_unlock(v220, 2);
      obj_release(v136);
      *&v220 = 0;
      v66 = btree_node_child_val(v221, WORD4(v221), v16);
      if (v66)
      {
        goto LABEL_330;
      }

      v66 = btree_node_get(a1, v16, a2, 3u, *(*(v221 + 56) + 34) - 1, a7, &v220);
      if (v66)
      {
        goto LABEL_330;
      }

      v137 = v220;
      if ((a1[50] & 0x10) != 0 && *(v220 + 112) != *v16)
      {
        sub_100019AFC(v221, WORD4(v221), (v220 + 112), a7);
        v137 = v220;
      }

      if ((*(*(v137 + 56) + 32) & 2) != 0)
      {
        v138 = sub_100018B08(v137, a3, v135, &v220 + 4, (&v220 | 0xA));
      }

      else
      {
        v138 = sub_100019AB8(v137, a3, v135, &v220 + 4, (&v220 | 0xA));
      }

      v20 = v138;
      v139 = v190;
      if (v138)
      {
        goto LABEL_60;
      }

      if (v46 == v191)
      {
        v141 = WORD4(v221);
        v57 = v203;
        v56 = v200;
        if (v46 == a1 && !WORD4(v221))
        {
          v195 = v221;
          v218 = v221;
          v196 = v221;
          v197 = v221;
          v201 = v221;
          v198 = v221;
          v199 = v221;
          goto LABEL_251;
        }

        if (!WORD4(v221))
        {
          v46 = v222;
          v142 = v221;
          goto LABEL_319;
        }

        v46 = v221;
        v142 = v220;
        v195 = v220;
      }

      else
      {
        v57 = v203;
        if ((v204 & 1) == 0)
        {
          v141 = v200;
          v140 = v201;
          goto LABEL_306;
        }

        v140 = v201;
        if (!(WORD4(v221) | WORD4(v220)))
        {
          v204 = 1;
          v141 = v200;
          goto LABEL_321;
        }

        if (v46 && v46 != v222 && v46 != v221 && (v46 != a1 || v205))
        {
          obj_unlock(v46, 2);
          obj_release(v46);
          v139 = v190;
          v198 = v218;
          v195 = v218;
        }

        v46 = v195;
        if (v195)
        {
          if (v195 != v222 && v195 != v221 && (v195 != a1 || v205))
          {
            obj_unlock(v195, 2);
            obj_release(v46);
            v139 = v190;
          }

          v198 = 0;
          v195 = 0;
          v196 = 0;
          v197 = 0;
          v140 = 0;
          v199 = 0;
          v46 = 0;
          v141 = 0;
          v218 = 0;
        }

        else
        {
          v195 = 0;
          v196 = 0;
          v197 = 0;
          v140 = 0;
          v199 = 0;
          v141 = 0;
        }

LABEL_306:
        if (WORD4(v220))
        {
LABEL_307:
          v204 = 0;
          goto LABEL_321;
        }

        if (WORD4(v221) || (BYTE10(v221) & 1) != 0)
        {
          if ((BYTE10(v220) & 1) != 0 || (*(*(v220 + 56) + 32) & 2) != 0)
          {
            goto LABEL_307;
          }

          v46 = v221;
          v204 = 1;
          v198 = v220;
          v195 = v220;
          v196 = v220;
          v218 = v220;
          v197 = v220;
          v140 = v220;
          v199 = v220;
          v141 = WORD4(v221);
LABEL_321:
          if (v139)
          {
            if (v139 == a1 && !v205 || v139 == v46)
            {
              v195 = v198;
              v196 = v198;
              v197 = v198;
              v201 = v198;
              v199 = v198;
            }

            else
            {
              v143 = v198;
              if (v139 != v198)
              {
                v144 = v139;
                v200 = v141;
                obj_unlock(v139, 2);
                obj_release(v144);
                v195 = v143;
                v196 = v143;
                v197 = v143;
                v201 = v143;
                v199 = v143;
                goto LABEL_250;
              }

              v195 = v198;
              v196 = v198;
              v197 = v198;
              v201 = v198;
              v199 = v198;
            }
          }

          else
          {
            v201 = v140;
          }

          v56 = v141;
LABEL_251:
          if ((*(*(v220 + 56) + 32) & 2) == 0)
          {
            continue;
          }

          goto LABEL_89;
        }

        v46 = v222;
        v142 = v221;
        v204 = 1;
LABEL_319:
        v195 = v142;
        v141 = WORD4(v222);
      }

      v218 = v142;
      v196 = v142;
      v197 = v142;
      v140 = v142;
      v198 = v142;
      v199 = v142;
      goto LABEL_321;
    }

    break;
  }

  *&v222 = v221;
  if (*(v219[7] + 36))
  {
    v131 = v219;
    v66 = btree_node_key_ptr(v219, 0, &v217, &v215);
    if (v66)
    {
      goto LABEL_330;
    }

    v128 = v222;
    v132 = v217;
    v133 = v215;
  }

  else
  {
    v131 = v219;
    v132 = a3;
    v133 = v125;
  }

  v20 = sub_100019AB8(v128, v132, v133, &v222 + 4, &v222 + 10);
  if (!v20)
  {
    v190 = 0;
    v56 = v200;
    v127 = v131;
    goto LABEL_273;
  }

LABEL_60:
  v47 = v222;
  v48 = v218;
  if (v222 && v222 != v46 && v222 != v218)
  {
    obj_unlock(v222, 2);
    obj_release(v47);
  }

  v49 = v221;
  if (v221 && v221 != v46 && v221 != v48)
  {
    obj_unlock(v221, 2);
    obj_release(v49);
  }

  v50 = v220;
  if (v220 && v220 != v46 && v220 != v48)
  {
    obj_unlock(v220, 2);
    obj_release(v50);
  }

  if (v46)
  {
    obj_unlock(v46, 2);
    obj_release(v46);
    v48 = v218;
  }

  if (v48)
  {
    obj_unlock(v48, 2);
    obj_release(v48);
  }

  v51 = v219;
  if (v219)
  {
    obj_unlock(v219, 2);
    obj_release(v51);
  }

  v52 = v205;
  if (v222 == a1)
  {
    v52 = 1;
  }

  if (v48 != a1 && (v52 & 1) == 0 && v221 != a1 && v220 != a1 && v46 != a1)
  {
    obj_unlock(a1, 2);
    obj_release(a1);
  }

  return v20;
}