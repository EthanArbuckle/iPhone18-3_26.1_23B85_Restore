BOOL bitmap_range_find_desired_or_first_clear_range(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, int a7)
{
  v12 = 0;
  v36 = 0;
  v34 = a4 - 1;
  v13 = -1;
  do
  {
    if (v12 >= a2)
    {
      break;
    }

    v14 = a4 - a3;
    if (a4 - a3 < 1)
    {
      break;
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
        goto LABEL_46;
      }
    }

    v20 = v18 + a3;
    if ((v18 + a3) >= a4 - v12)
    {
      break;
    }

    if (!v12)
    {
      v13 = v18 + a3;
      v12 = 1;
      if (v20 >= v34)
      {
        v13 = v18 + a3;
        v12 = 1;
        break;
      }
    }

    v21 = v12 + 1;
    if (v12 + 1 < a4 - v20)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = a4 - v20;
    }

    if (v22 + v20 > a4)
    {
      sub_1000A5F58();
    }

    v35 = a7;
    if (bitmap_range_find_last_set(a1, v20, v22, &v36))
    {
      v23 = v36;
      a7 = v35;
    }

    else
    {
      v24 = v21 + v20;
      v25 = a4 - (v21 + v20);
      if (a4 < v21 + v20)
      {
        sub_1000A5F2C();
      }

      if (a2 == v21)
      {
        v13 = v20;
        v12 = a2;
        break;
      }

      if (a2 - v21 < v25)
      {
        v25 = a2 - v21;
      }

      if (v25 + v24 > a4)
      {
        sub_1000A5ED4();
      }

      if (v25 < 1)
      {
LABEL_38:
        v12 = v25 + v21;
      }

      else
      {
        v26 = v24 + 63;
        if (v24 >= 0)
        {
          v26 = v21 + v20;
        }

        v27 = (a1 + 8 * (v26 >> 6));
        v28 = v25;
        while (1)
        {
          v29 = v24 & 0x3F;
          if (v24 <= 0)
          {
            v29 = -(-v24 & 0x3F);
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

          v24 += v30;
          v19 = v28 <= v30;
          v28 -= v30;
          if (v19)
          {
            goto LABEL_38;
          }
        }

        v12 = v32 + v24 - v20;
      }

      v23 = v12 + v20;
      a7 = v35;
      if (v12 + v20 > a4)
      {
        sub_1000A5EA8();
      }

      v36 = v12 + v20;
      v13 = v20;
    }

    a3 = v23 + 1;
  }

  while (!a7);
LABEL_46:
  if (v12 + v13 > a4)
  {
    sub_1000A5F00();
  }

  *a5 = v13;
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

void *bitmap_copy(void *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2 + 63;
  if (a2 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2 + 63;
  }

  v7 = a2 - (v6 & 0xFFFFFFFFFFFFFFC0);
  v8 = 64 - v7;
  v9 = -1 << v7;
  v10 = (v6 & 0xC0) - a2;
  v11 = 0xFFFFFFFFFFFFFFFFLL >> v10;
  if (a2 == (v6 & 0xFFFFFFFFFFFFFFC0))
  {
    v12 = 0;
  }

  else
  {
    v12 = 0xFFFFFFFFFFFFFFFFLL >> v10;
  }

  if (a4 >= 0)
  {
    v13 = a4;
  }

  else
  {
    v13 = a4 + 63;
  }

  v14 = a4 - (v13 & 0xFFFFFFFFFFFFFFC0);
  v15 = 64 - v14;
  v16 = -1 << v14;
  v17 = 0xFFFFFFFFFFFFFFFFLL >> ((v13 & 0xC0u) - a4);
  if (result == a3 && a2 <= a4)
  {
    v18 = a5 + a2;
    v20 = a5 + a2 - 1;
    v19 = a5 + a2 < 1;
    v21 = a5 + a2 + 62;
    if (v19)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    v23 = a5 + a4;
    v24 = a5 + a4 - 1;
    v19 = a5 + a4 < 1;
    v25 = a5 + a4 + 62;
    if (!v19)
    {
      v25 = v24;
    }

    if (a5 <= 0)
    {
      v26 = -(-a5 & 0x3F);
    }

    else
    {
      v26 = a5 & 0x3F;
    }

    if (v26)
    {
      v19 = v18 < v26;
      v27 = v18 - v26;
      if (v19)
      {
        v27 += 63;
      }

      v28 = v27 >> 6;
      v19 = v23 < v26;
      v29 = v23 - v26;
      if (v19)
      {
        v29 += 63;
      }

      v30 = v29 >> 6;
      v31 = &result[v28];
      v32 = (*v31 & v9) >> v7;
      if (v26 >= v8)
      {
        v32 |= (v31[1] & v12) << v8;
      }

      v33 = ~(-1 << v26);
      v34 = v32 & v33;
      v35 = v33 << v14;
      if (v14)
      {
        v36 = v33 >> v15;
      }

      else
      {
        v36 = 0;
      }

      v37 = &a3[v30];
      *v37 = (v34 << v14) & v35 | *v37 & ~v35;
      if (v26 > v15 && v36)
      {
        v37[1] = v37[1] & ~v36 | (v34 >> v15) & v36;
      }

      a5 -= v26;
      v38 = v28 - 1;
      v39 = v30 - 1;
    }

    else
    {
      v38 = v22 >> 6;
      v39 = v25 >> 6;
    }

    if (a5 >= 64)
    {
      v55 = v6 >> 6;
      if (v38 >= v55)
      {
        v56 = ~v17;
        result += v38 + 1;
        v57 = &a3[v39 + 1];
        do
        {
          v58 = (*(result - 1) & v9) >> v7;
          if (v7)
          {
            v58 |= *result << v8;
          }

          *(v57 - 1) = *(v57 - 1) & ~v16 | (v58 << v14) & v16;
          if (v14)
          {
            *v57 = *v57 & v56 | (v58 >> v15);
          }

          if (a5 < 128)
          {
            break;
          }

          a5 -= 64;
          --result;
          --v57;
          v19 = v38-- <= v55;
        }

        while (!v19);
      }
    }

    return result;
  }

  v40 = v13 >> 6;
  if (a2 >= 0)
  {
    v5 = a2;
  }

  v41 = v5 >> 6;
  if (a5 < 64)
  {
    v46 = a5;
    if (!a5)
    {
      return result;
    }

    goto LABEL_47;
  }

  v42 = ~v17;
  v43 = &a3[v40 + 1];
  v44 = &result[v41 + 1];
  do
  {
    v45 = (*(v44 - 1) & v9) >> v7;
    if (v7)
    {
      v45 |= *v44 << v8;
    }

    *(v43 - 1) = *(v43 - 1) & ~v16 | (v45 << v14) & v16;
    if (v14)
    {
      *v43 = *v43 & v42 | (v45 >> v15);
    }

    ++v41;
    ++v40;
    v46 = a5 - 64;
    ++v43;
    ++v44;
    v19 = a5 <= 127;
    a5 -= 64;
  }

  while (!v19);
  if (v46)
  {
LABEL_47:
    v47 = &result[v41];
    v48 = (*v47 & v9) >> v7;
    if (v7 && v46 >= v8)
    {
      v48 |= (v47[1] & v11) << v8;
    }

    v49 = ~(-1 << v46);
    v50 = v48 & v49;
    v51 = v49 << v14;
    v52 = v49 >> v15;
    if (v14)
    {
      v53 = v52;
    }

    else
    {
      v53 = 0;
    }

    v54 = &a3[v40];
    *v54 = (v50 << v14) & v51 | *v54 & ~v51;
    if (v46 > v15 && v53)
    {
      v54[1] = v54[1] & ~v53 | (v50 >> v15) & v53;
    }
  }

  return result;
}

uint64_t bitmap_shift_down(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (a2 << 6) - a3;
  bitmap_copy(a1, a3, a1, 0, v5);

  return bitmap_clear_range(a1, v5, a3);
}

uint64_t authapfs_valid_hash_type(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a1 & 0xFFFFFF00) <= 0xF00 && (a1 & 0xFD) != 0 && a1 < 9u)
  {
    return 0;
  }

  log_err("%s:%d: Invalid or unknown hash type: %d\n", a2, a3, a4, a5, a6, a7, a8, "authapfs_valid_hash_type");
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
    return dword_1000B2FB8[(a1 - 1)];
  }
}

double sub_10002F990(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 <= 0xFFF)
  {
    sub_1000A5FB0();
  }

  if (!a3)
  {
    sub_1000A5F84();
  }

  v9 = *a3;
  if (!authapfs_valid_hash_type(*a3, a2, a3, a4, a5, a6, a7, a8))
  {
    *&result = 2;
    *(a1 + 32) = 2;
    *(a1 + 40) = v9;
    *(a1 + 44) = 128;
  }

  return result;
}

uint64_t sub_10002F9F0(uint64_t a1)
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

  v12 = v4;
  if (authapfs_valid_hash_type(v3, v5, v6, v7, v8, v9, v10, v11))
  {
    return 92;
  }

  v13 = v2[11];
  if (*(a1 + 48) < (v13 + v12))
  {
    return 92;
  }

  result = 0;
  v15 = *(a1 + 56);
  *(a1 + 376) = v15;
  *(a1 + 384) = v15 + v13;
  *(a1 + 392) = v12;
  return result;
}

uint64_t sub_10002FA7C(uint64_t a1, void *a2, int a3)
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
    pthread_mutex_lock((a1 + 1736));
    v9 = *(a1 + 3632);
    if (v9)
    {
      if (a2)
      {
        obj_retain(v9);
        *a2 = *(a1 + 3632);
      }

      pthread_mutex_unlock((a1 + 1736));
      return 0;
    }

    v19 = 0;
    pthread_mutex_unlock((a1 + 1736));
    result = obj_get(*(v8 + 392), 0, v7, &integrity_meta_desc, 0, a1, *(a1 + 440), 0, &v19);
    if (!result)
    {
      v17 = v19;
      pthread_mutex_lock((a1 + 3960));
      v18 = v17[47];
      *(a1 + 4028) = vrev64_s32(v18[4]);
      *(a1 + 4040) = v18[6];
      *(a1 + 4024) = 1;
      pthread_mutex_unlock((a1 + 3960));
      if (a3)
      {
        pthread_mutex_lock((a1 + 1736));
        if (!*(a1 + 3632))
        {
          obj_retain(v19);
          *(a1 + 3632) = v19;
        }

        pthread_mutex_unlock((a1 + 1736));
      }

      if (!a2)
      {
        obj_release(v19);
        return 0;
      }

      result = 0;
      *a2 = v19;
    }
  }

  else
  {
    obj_oid(a1);
    log_err("%s:%d: %s integrity_meta object of fs %llu, oid invalid\n", v10, v11, v12, v13, v14, v15, v16, "authapfs_integrity_meta_get_internal");
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

  result = sub_10002FA7C(a1, &v8, 0);
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

uint64_t authapfs_integrity_meta_create(uint64_t a1, int a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a2;
  v31 = 0;
  if (!a1)
  {
    return 22;
  }

  if (*(a1 + 1108))
  {
    return 30;
  }

  v12 = *(a1 + 392);
  if (!a4 && *(*(a1 + 376) + 1024))
  {
    return 17;
  }

  v13 = obj_modify(a1, 0, a3, a4, a5, a6, a7, a8);
  if (v13)
  {
    v9 = v13;
    log_err("%s:%d: %s obj_modify failed - %d\n", v14, v15, v16, v17, v18, v19, v20, "authapfs_integrity_meta_create");
  }

  else
  {
    v21 = obj_create(*(v12 + 392), 0, 0, &integrity_meta_desc, &v32, a1, a3, &v31);
    if (v21)
    {
      v9 = v21;
      log_err("%s:%d: %s obj_create failed - %d\n", v22, v23, v24, v25, v26, v27, v28, "authapfs_integrity_meta_create");
    }

    else
    {
      obj_dirty(v31, a3, 0);
      v29 = obj_oid(v31);
      if (a4)
      {
        v9 = 0;
        *a4 = v31;
      }

      else
      {
        *(*(a1 + 376) + 1024) = v29;
        fs_sb_dirty(a1, a3);
        obj_release(v31);
        return 0;
      }
    }
  }

  return v9;
}

uint64_t authapfs_seal_is_broken(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 1736);
  pthread_mutex_lock((a1 + 1736));
  v5 = *(a1 + 3632);
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
    if (*(a1 + 4024) != 1)
    {
LABEL_8:
      LOBYTE(v12) = 0;
      return v12 & 1;
    }

    v4 = (a1 + 3960);
    pthread_mutex_lock((a1 + 3960));
    v7 = (a1 + 4028);
    v8 = (a1 + 4032);
    v9 = (a1 + 4040);
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

uint64_t userfs_data_cryptor(uint64_t a1, char *a2, char *a3, int64_t a4, unint64_t a5, unsigned int a6, int a7)
{
  v7 = 22;
  if (!a2)
  {
    return v7;
  }

  if (!a3)
  {
    return v7;
  }

  v9 = a4;
  if (a4 < 0)
  {
    return v7;
  }

  if (!a4)
  {
    return 0;
  }

  v12 = a5;
  if (!a5)
  {
    panic("Can't read/write encrypted data to/from block 0!");
  }

  if (!a1)
  {
    return 13;
  }

  v15 = *(a1 + 72);
  if (!v15)
  {
    return 13;
  }

  v51[1] = v51;
  v16 = *(v15 + 10) & 0xFFF8;
  __chkstk_darwin(a1);
  v52 = (v51 - v17);
  bzero(v51 - v17, v18);
  __rqtp = xmmword_1000B2FE0;
  pthread_mutex_lock(&stru_100103730);
  v19 = dword_1000E8568;
  if (!dword_1000E8568)
  {
    v51[0] = v12;
    v20 = 200;
    v21 = 200;
    while (1)
    {
      pthread_mutex_unlock(&stru_100103730);
      nanosleep(&__rqtp, 0);
      if (!--v20)
      {
        if (__rqtp.tv_nsec < 3126)
        {
          return 60;
        }

        __rqtp.tv_nsec *= 4;
        v21 >>= 2;
        v20 = v21;
      }

      pthread_mutex_lock(&stru_100103730);
      v19 = dword_1000E8568;
      if (dword_1000E8568)
      {
        v22 = 1;
      }

      else
      {
        v22 = v20 == 0;
      }

      if (v22)
      {
        v12 = v51[0];
        break;
      }
    }
  }

  dword_1000E8568 = v19 - 1;
  pthread_mutex_unlock(&stru_100103730);
  if (a2 != a3)
  {
    v23 = 0;
    goto LABEL_26;
  }

  v23 = _apfs_malloc_typed(0x200uLL, 0x6FED1243uLL);
  if (v23)
  {
LABEL_26:
    v53 = 0;
    v24 = *(a1 + 72);
    if (CCCryptorCreateWithMode(a7 ^ 1, 8u, 0, 0, 0, (v24 + 20), *(v24 + 10) >> 1, (v24 + 20 + (*(v24 + 10) >> 1)), *(v24 + 10) >> 1, 0, 0, &v53))
    {
      log_err("%s:%d: CCCryptorCreateWithMode failed (E%d)\n", v25, v26, v27, v28, v29, v30, v31, "userfs_data_cryptor");
      v7 = 13;
    }

    else
    {
      v32 = *(a1 + 72);
      bzero(v52, *(v32 + 10));
      if (v9 >= 512)
      {
        v41 = 0;
        v42 = *(v32 + 12);
        v51[0] = v12;
        if (v42)
        {
          v43 = v42 * a6;
        }

        else
        {
          v43 = v12;
        }

        v44 = a3;
        v45 = a2;
        while (1)
        {
          *v52 = v43 >> 9;
          v46 = v45;
          if (a2 == a3)
          {
            memcpy(v23, v45, 0x200uLL);
            v46 = v23;
          }

          if (a7 ? CCCryptorEncryptDataBlock() : CCCryptorDecryptDataBlock())
          {
            break;
          }

          v43 += 512;
          v48 = v9 - 512;
          v45 += 512;
          v44 += 512;
          v41 -= 512;
          v23 = v46;
          v49 = v9 <= 1023;
          v9 -= 512;
          if (v49)
          {
            v40 = -v41;
            v23 = v46;
            v9 = v48;
            goto LABEL_43;
          }
        }

        log_err("%s:%d: %s failed (E%d)\n", v33, v34, v35, v36, v37, v38, v39, "userfs_data_cryptor");
        v7 = 5;
      }

      else
      {
        v40 = 0;
LABEL_43:
        if (v9)
        {
          log_debug("%s:%d: Zero'ing excess data to %s: paddr %lld, completed %lld, remaining %zu\n", v33, v34, v35, v36, v37, v38, v39, "userfs_data_cryptor");
          bzero(&a3[v40], v9);
        }

        v7 = 0;
        v46 = v23;
      }

      CCCryptorRelease(v53);
      v23 = v46;
    }

    if (a2 != a3)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  v7 = 12;
LABEL_51:
  _apfs_free(v23, 512);
LABEL_52:
  pthread_mutex_lock(&stru_100103730);
  if (dword_1000E8568 >= 4)
  {
    sub_1000A5FDC();
  }

  ++dword_1000E8568;
  pthread_mutex_unlock(&stru_100103730);
  return v7;
}

uint64_t AKS_FV_service()
{
  v0 = qword_100103770;
  if (!qword_100103770 && (sub_1000A0F98(&qword_100103770) || (v0 = qword_100103770) == 0))
  {
    log_err("%s:%d: lib_get_file_vault_services failed (E%d)\n", v1, v2, v3, v4, v5, v6, v7, "AKS_FV_service");
    return 0;
  }

  return v0;
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
  if (!a1)
  {
    sub_1000A6008();
  }

  if ((*(a1 + 21) & 4) != 0)
  {
    goto LABEL_10;
  }

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

  if (*(a1 + 40) != 14)
  {
LABEL_10:
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = v2 | ((*(*(a1 + 56) + 32) & 8) >> 3);
  }

  return v3 & 1;
}

uint64_t authapfs_validate_node_hash(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(__s1, 0, sizeof(__s1));
  if (!a2)
  {
    return 22;
  }

  v8 = a3;
  result = authapfs_hash_node(a1, __s1, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    result = memcmp(__s1, a2, v8);
    if (result)
    {
      v21 = 0;
      memset(v20, 0, sizeof(v20));
      v19 = 0;
      memset(v18, 0, sizeof(v18));
      authapfs_hexdump_hash(a2, v18, v8);
      authapfs_hexdump_hash(__s1, v20, v8);
      log_err("%s:%d: hash mismatch! expected: %s, actual: %s\n", v11, v12, v13, v14, v15, v16, v17, "authapfs_validate_node_hash");
      return 80;
    }
  }

  return result;
}

uint64_t authapfs_hash_node(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 22;
  if (a2 && (*(*(a1 + 56) + 32) & 8) != 0)
  {
    v10 = a4;
    v11 = a3;
    if (authapfs_valid_hash_type(a4, a2, a3, a4, a5, a6, a7, a8) || authapfs_hash_comparison_size(v10) != v11)
    {
      return 22;
    }

    else
    {
      hash_info = authapfs_get_hash_info(v10);
      v15 = v14;
      v16 = obj_size_phys(a1);
      authapfs_digest(hash_info, v15, v16, *(a1 + 56), a2);
      return 0;
    }
  }

  return result;
}

uint64_t authapfs_validate_node(uint64_t a1, uint64_t a2)
{
  if (!authapfs_should_hash_node(a1))
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 400);
  if (obj_subtype(a1) != 255 && !v4)
  {
    sub_1000A6034();
  }

  if (byte_1000E856C & 1) == 0 || (authapfs_seal_is_broken(v4, a1))
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

  a2 = authapfs_validate_node_hash(a1, (a2 + 32), HIBYTE(v5) & 0x7F, (v5 >> 44) & 0xFFF, v7, v8, v9, v10);
  if (a2)
  {
    obj_oid(a1);
    obj_xid(a1);
    obj_oid(v4);
    log_err("%s:%d: failed to validate node %p (oid:%llu, xid:%llu) of fs %p (%llu) - %d\n", v11, v12, v13, v14, v15, v16, v17, "authapfs_validate_node");
  }

  return a2;
}

uint64_t apfs_do_update_last_modified_by(void *a1, const char *a2, uint64_t a3)
{
  *__str = 0u;
  v11 = 0u;
  v6 = apfs_source_version();
  snprintf(__str, 0x20uLL, "%s (%s)", a2, v6);
  v7 = 0;
  v8 = (a1 + 40);
  do
  {
    if (!strncmp(v8, __str, 0x20uLL))
    {
      break;
    }

    ++v7;
    v8 += 48;
  }

  while (v7 != 7);
  memmove(a1 + 46, a1 + 40, 48 * v7);
  __strlcpy_chk();
  result = get_timestamp();
  a1[44] = result;
  a1[45] = a3;
  return result;
}

uint64_t apfs_set_formatted_by(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = apfs_source_version();
  v7 = snprintf((a1 + 272), 0x20uLL, "%s (%s)", a2, v6);
  if ((v7 & 0x80000000) != 0)
  {
    sub_1000A608C();
  }

  if (v7 >= 0x20)
  {
    v8 = strlen(v6);
    if (v8 + 4 >= 0x21)
    {
      sub_1000A6060();
    }

    snprintf((a1 - v8 + 300), v8 + 4, " (%s)", v6);
  }

  result = get_timestamp();
  *(a1 + 304) = result;
  *(a1 + 312) = a3;
  return result;
}

char *apfs_parse_version(unint64_t a1, char *__str, int a3)
{
  v6 = 0;
  LODWORD(v7) = 1;
  do
  {
    if (__ROR8__(0x1CAC083126E978D5 * (a1 / *(&unk_1000B2FF0 + v6 + 1)), 3) >= 0x4189374BC6A7F0uLL)
    {
      v7 = (v6 + 2);
    }

    else
    {
      v7 = v7;
    }

    ++v6;
  }

  while (v6 != 4);
  v8 = snprintf(__str, a3, "%llu", a1 / 0xE8D4A51000);
  result = 0;
  if ((v8 & 0x80000000) == 0 && v8 <= a3)
  {
    if (v7 < 2)
    {
      return __str;
    }

    else
    {
      v10 = v7 - 1;
      v11 = &qword_1000B2FF8;
      while (1)
      {
        v12 = *v11++;
        v13 = snprintf(&__str[v8], a3 - v8, ".%llu", a1 / v12 % 0x3E8);
        if (v13 < 0)
        {
          break;
        }

        v8 += v13;
        if (v8 > a3)
        {
          break;
        }

        if (!--v10)
        {
          return __str;
        }
      }

      return 0;
    }
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

uint64_t nx_get_evict_mapping_tree(uint64_t a1, unsigned int a2, unint64_t a3, int a4, int a5, uint64_t **a6)
{
  *&v21 = 0;
  v22 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v20 = evict_mapping_key_compare;
  DWORD2(v21) = 33;
  HIDWORD(v21) = a4;
  result = btree_get_extended(a1, a2, a3, 0, 0, &v20, 0, a6);
  if (result == 92 && a5)
  {
    v21 = 0u;
    v22 = 0u;
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    v20 = evict_mapping_key_compare;
    HIDWORD(v21) = a4;
    result = btree_get_extended(a1, 0, a3, 0, 0, &v20, 0, a6);
    if (!result)
    {
      v19 = *(a1 + 384) + 212;
      log_debug("%s:%d: %s found mapping tree with old subtype\n", v12, v13, v14, v15, v16, v17, v18, "nx_get_evict_mapping_tree");
      return 0;
    }
  }

  return result;
}

uint64_t sub_100030F7C(uint64_t a1, int a2, uint64_t a3)
{
  if (!a3)
  {
    return 22;
  }

  if (*(a3 + 4) != a2)
  {
    sub_1000A60B8();
  }

  *(a1 + 32) = 1112758350;
  *(a1 + 36) = a2;
  *(a1 + 1264) = 0;
  *(a1 + 40) = *(a3 + 8);
  *(a1 + 56) = xmmword_1000B3020;
  v3 = *(a3 + 32);
  *(a1 + 88) = 1024;
  *(a1 + 96) = v3;
  uuid_copy((a1 + 72), (a3 + 64));
  return 0;
}

uint64_t sub_100030FEC(uint64_t a1, unsigned int *a2)
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
  *(a1 + 928) = nx_keybag_init(a1);
  new_lock((a1 + 1120));
  new_lock((a1 + 752));
  *(a1 + 828) = 0;
  *(a1 + 816) = 0;
  *(a1 + 824) = 0;
  new_lock((a1 + 504));
  new_cv((a1 + 568));
  return 0;
}

uint64_t sub_100031118(uint64_t a1)
{
  v2 = *(a1 + 736);
  if (v2 && !*(*a1 + 940))
  {
    obj_release(v2);
  }

  free_lock((a1 + 864));
  free_lock((a1 + 672));
  nx_keybag_free(*(a1 + 928));
  free_lock((a1 + 1120));
  free_lock((a1 + 752));
  free_lock((a1 + 504));
  free_cv((a1 + 568));
  return 0;
}

uint64_t nx_checkpoint_traverse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v115 = 0;
  v116 = 0;
  v114 = 0;
  v113 = 0;
  v6 = spaceman_get(a1, &v116);
  if (v6)
  {
    v14 = v6;
    v15 = *(a1 + 400);
    if (v15 && *(v15 + 76))
    {
      return v14;
    }

    v95 = *(a1 + 384) + 212;
    v105 = *(*(a1 + 376) + 152);
    v16 = 739;
    log_err("%s:%d: %s failed to get spaceman oid %lld for checkpoint %s traverse: %d\n", v7, v8, v9, v10, v11, v12, v13, "nx_checkpoint_traverse");
    goto LABEL_9;
  }

  v14 = spaceman_checkpoint_traverse(a1, a2, v116, a3);
  obj_release(v116);
  if (v14)
  {
    v24 = *(a1 + 400);
    if (v24 && *(v24 + 76))
    {
      return v14;
    }

    v16 = 746;
    v96 = *(a1 + 384) + 212;
    log_err("%s:%d: %s spaceman checkpoint %s traverse failed: %d\n", v17, v18, v19, v20, v21, v22, v23, "nx_checkpoint_traverse");
    goto LABEL_9;
  }

  v27 = *(a1 + 376);
  v28 = *(v27 + 160);
  if (v28 && !*(a1 + 744))
  {
    v38 = obj_get(*(a1 + 392), 0x40000000, v28, &om_desc, 0, 0, 0, 0, &v114);
    if (v38)
    {
      v14 = v38;
      v46 = *(a1 + 400);
      if (v46 && *(v46 + 76))
      {
        return v14;
      }

      v16 = 756;
      v98 = *(a1 + 384) + 212;
      log_err("%s:%d: %s failed to get omap for checkpoint %s traverse: %d\n", v39, v40, v41, v42, v43, v44, v45, "nx_checkpoint_traverse");
      goto LABEL_9;
    }

    v14 = omap_checkpoint_traverse(a1, a2, v114, a3);
    obj_release(v114);
    if (v14)
    {
      v62 = *(a1 + 400);
      if (v62 && *(v62 + 76))
      {
        return v14;
      }

      v16 = 762;
      v100 = *(a1 + 384) + 212;
      log_err("%s:%d: %s omap checkpoint %s traverse failed: %d\n", v55, v56, v57, v58, v59, v60, v61, "nx_checkpoint_traverse");
      goto LABEL_9;
    }

    v27 = *(a1 + 376);
  }

  if (*(v27 + 168))
  {
    v29 = nx_reaper_get(a1, &v115);
    if (v29)
    {
      v14 = v29;
      v37 = *(a1 + 400);
      if (v37 && *(v37 + 76))
      {
        return v14;
      }

      v16 = 775;
      v97 = *(a1 + 384) + 212;
      log_err("%s:%d: %s failed to get reaper for checkpoint %s traverse: %d\n", v30, v31, v32, v33, v34, v35, v36, "nx_checkpoint_traverse");
      goto LABEL_9;
    }

    v14 = nx_reaper_checkpoint_traverse(a1, a2, v115, a3);
    obj_release(v115);
    if (v14)
    {
      v54 = *(a1 + 400);
      if (v54 && *(v54 + 76))
      {
        return v14;
      }

      v16 = 782;
      v99 = *(a1 + 384) + 212;
      log_err("%s:%d: %s nx reaper checkpoint %s traverse failed: %d\n", v47, v48, v49, v50, v51, v52, v53, "nx_checkpoint_traverse");
      goto LABEL_9;
    }

    v27 = *(a1 + 376);
  }

  if (!*(v27 + 180))
  {
LABEL_39:
    if (!*(v27 + 1344) || !obj_type_is_or_contains_ephemeral(*(v27 + 176)))
    {
      return 0;
    }

    v112[0] = 0;
    v112[1] = 0;
    v111 = 0;
    v110 = 0;
    v80 = obj_descriptor_and_flags_for_type(*(*(a1 + 376) + 176), &v110, v112);
    HIDWORD(v112[0]) = 255;
    if (!v80)
    {
      v80 = obj_get(*(a1 + 392), v110, *(*(a1 + 376) + 1344), v112, 0, 0, 0, 0, &v111);
      if (!v80)
      {
        v14 = obj_checkpoint_traverse(a1, a2, v111, a3);
        obj_release(v111);
        if (!v14)
        {
          return v14;
        }

        v93 = *(a1 + 400);
        if (v93)
        {
          if (*(v93 + 76))
          {
            return v14;
          }
        }

        v94 = *(a1 + 376);
        v108 = *(v94 + 1344);
        v109 = *(v94 + 176);
        v104 = *(a1 + 384) + 212;
        v16 = 829;
        log_err("%s:%d: %s failed to checkpoint %s traverse test object 0x%llx of type 0x%x/0x%x: %d\n", v86, v87, v88, v89, v90, v91, v92, "nx_checkpoint_traverse");
        v25 = *(a1 + 400);
        if (!v25)
        {
          return v14;
        }

LABEL_10:
        *(v25 + 76) = v16;
        ++*(v25 + 80);
        return v14;
      }
    }

    v14 = v80;
    v81 = *(a1 + 400);
    if (v81 && *(v81 + 76))
    {
      return v14;
    }

    v82 = *(a1 + 376);
    v107 = *(v82 + 176);
    v101 = *(a1 + 384) + 212;
    v106 = *(v82 + 1344);
    v16 = 823;
    v83 = "%s:%d: %s unable to get test object 0x%llx of type 0x%x/0x%x for checkpoint %s traverse: %d\n";
LABEL_50:
    log_err(v83, v66, v67, v68, v69, v70, v71, v72, "nx_checkpoint_traverse");
LABEL_9:
    v25 = *(a1 + 400);
    if (!v25)
    {
      return v14;
    }

    goto LABEL_10;
  }

  v63 = 0;
  while (1)
  {
    v64 = *(v27 + 8 * v63 + 184);
    if (v64)
    {
      break;
    }

LABEL_38:
    if (++v63 >= *(v27 + 180))
    {
      goto LABEL_39;
    }
  }

  v65 = obj_get(*(a1 + 392), 0, v64, &apfs_desc, 0, 0, 0, 0, &v113);
  if (v65)
  {
    v14 = v65;
    v84 = *(a1 + 400);
    if (!v84 || !*(v84 + 76))
    {
      v102 = *(a1 + 384) + 212;
      v16 = 796;
      v83 = "%s:%d: %s failed to get fs[%d] oid %lld for checkpoint %s traverse: %d\n";
      goto LABEL_50;
    }

    return v14;
  }

  v14 = apfs_checkpoint_traverse(a1, a2, v113, a3);
  obj_release(v113);
  if (!v14)
  {
    v27 = *(a1 + 376);
    goto LABEL_38;
  }

  v85 = *(a1 + 400);
  if (!v85 || !*(v85 + 76))
  {
    v103 = *(a1 + 384) + 212;
    v16 = 802;
    log_err("%s:%d: %s fs[%d] checkpoint %s traverse failed: %d\n", v73, v74, v75, v76, v77, v78, v79, "nx_checkpoint_traverse");
    goto LABEL_9;
  }

  return v14;
}

uint64_t nx_reaper_get(void *a1, uint64_t *a2)
{
  if (!a1)
  {
    sub_1000A60E4();
  }

  v4 = a1[53];
  *a2 = v4;
  if (v4)
  {
    goto LABEL_3;
  }

  result = obj_get(a1[49], 0x80000000, *(a1[47] + 168), &nx_reaper_desc, 0, 0, 0, 0, a2);
  if (!result)
  {
    v4 = *a2;
    a1[53] = *a2;
LABEL_3:
    obj_retain(v4);
    return 0;
  }

  return result;
}

uint64_t nx_reaper_checkpoint_traverse(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = *(a3 + 376);
  v62 = 0;
  v63 = 0;
  v61 = 0;
  if (a4 == 2)
  {
    v7 = obj_checkpoint_known(a3);
LABEL_5:
    v8 = v7;
    if (v7)
    {
      LODWORD(v9) = *(v6 + 68);
      v10 = (v6 + 68);
      goto LABEL_76;
    }

    goto LABEL_7;
  }

  if (a4 == 1)
  {
    v7 = obj_checkpoint_start(a3);
    goto LABEL_5;
  }

LABEL_7:
  if (*(v6 + 88) && obj_type_is_or_contains_ephemeral(*(v6 + 72)))
  {
    v8 = 0;
    if ((*(v6 + 104) & 0x10) == 0 && (*(v6 + 104) & 6) != 2)
    {
      v11 = nx_reaper_obj_get(a1, *(v6 + 72), *(v6 + 76), *(v6 + 80), *(v6 + 88), &v61, &v62);
      if (v11)
      {
        v8 = v11;
        v19 = a1[50];
        if (!v19 || !*(v19 + 76))
        {
          v54 = *(v6 + 88);
          v48 = a1[48] + 212;
          log_err("%s:%d: %s failed to get object oid %lld: %d\n", v12, v13, v14, v15, v16, v17, v18, "nx_reaper_checkpoint_traverse");
        }
      }

      else
      {
        if (v61)
        {
          v47 = v61;
        }

        else
        {
          v47 = a1;
        }

        v8 = obj_checkpoint_traverse(v47, a2, v62, v4);
        obj_release(v62);
      }

      if (v61)
      {
        obj_release(v61);
        v61 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = (v6 + 68);
  v9 = *(v6 + 68);
  if (v8)
  {
    goto LABEL_76;
  }

  v20 = *(v6 + 48);
  if (!v20)
  {
    goto LABEL_76;
  }

  v58 = (v6 + 68);
  v59 = v4;
  do
  {
    v21 = obj_get(a1[49], 0x80000000, v20, &nx_reap_list_desc, 0, 0, 0, 0, &v63);
    if (v21)
    {
      v8 = v21;
      v44 = a1[50];
      if (!v44 || !*(v44 + 76))
      {
        v53 = a1[48] + 212;
        log_err("%s:%d: %s failed to get reap list object oid %lld: %d\n", v22, v23, v24, v25, v26, v27, v28, "nx_reaper_checkpoint_traverse");
      }

      break;
    }

    v29 = v63[47];
    if (v4 == 2)
    {
      v30 = obj_checkpoint_known(v63);
      goto LABEL_24;
    }

    if (v4 == 1)
    {
      v30 = obj_checkpoint_start(v63);
LABEL_24:
      v8 = v30;
      goto LABEL_26;
    }

    v8 = 0;
LABEL_26:
    v60 = v9;
    v20 = *(v29 + 32);
    if (v8)
    {
      goto LABEL_57;
    }

    v31 = *(v29 + 52);
    if (v31 == -1)
    {
      goto LABEL_57;
    }

    v32 = v29 + 64;
    v33 = -1;
    while (1)
    {
      v34 = v32 + 40 * v31;
      v35 = *v34;
      if (*v34 != -1 && v35 > *(v29 + 44))
      {
        break;
      }

      v36 = *(v34 + 8);
      if (v36 != *(v6 + 72) || *(v34 + 24) != *(v6 + 88))
      {
        if (v33 == -1 || (v37 = v32 + 40 * v33, v36 != *(v37 + 8)) || *(v34 + 24) != *(v37 + 24))
        {
          v8 = 0;
          if ((*(v34 + 4) & 0x10) != 0 || (*(v34 + 4) & 6) == 2)
          {
            goto LABEL_50;
          }

          if (obj_type_is_or_contains_ephemeral(v36))
          {
            v38 = nx_reaper_obj_get(a1, *(v34 + 8), *(v34 + 12), *(v34 + 16), *(v34 + 24), &v61, &v62);
            if (v38)
            {
              v8 = v38;
              v39 = a1[50];
              if (!v39 || !*(v39 + 76))
              {
                v55 = *(v34 + 24);
                v49 = a1[48] + 212;
                log_err("%s:%d: %s failed to get object oid %lld: %d\n", v22, v23, v24, v25, v26, v27, v28, "nx_reaper_checkpoint_traverse");
              }
            }

            else
            {
              if (v61)
              {
                v40 = v61;
              }

              else
              {
                v40 = a1;
              }

              v8 = obj_checkpoint_traverse(v40, a2, v62, v59);
              obj_release(v62);
            }

            if (v61)
            {
              obj_release(v61);
              v61 = 0;
            }

            goto LABEL_50;
          }
        }
      }

      v8 = 0;
LABEL_50:
      if (!v8)
      {
        v33 = v31;
        v31 = v35;
        if (v35 != -1)
        {
          continue;
        }
      }

      goto LABEL_57;
    }

    v41 = a1[50];
    if (!v41 || !*(v41 + 76))
    {
      v50 = a1[48] + 212;
      log_err("%s:%d: %s Invalid reap list entry nrl_entries[%d].nrle_next = %d\n", v22, v23, v24, v25, v26, v27, v28, "nx_reaper_checkpoint_traverse");
    }

    obj_release(v63);
    v8 = nx_corruption_detected_int(a1);
LABEL_57:
    v10 = (v6 + 68);
    if (*v58)
    {
      v9 = (v60 - 1);
      if (v20 && v60 == 1)
      {
        v42 = a1[50];
        LODWORD(v4) = v59;
        if (!v42 || !*(v42 + 76))
        {
          v51 = a1[48] + 212;
          log_err("%s:%d: %s reap list expected %u objects, but haven't seen last reap list object yet\n", v22, v23, v24, v25, v26, v27, v28, "nx_reaper_checkpoint_traverse");
        }

        v8 = nx_corruption_detected_int(a1);
        v9 = 0;
      }

      else
      {
        LODWORD(v4) = v59;
        if (!v20 && v60 != 1)
        {
          v43 = a1[50];
          if (!v43 || !*(v43 + 76))
          {
            v56 = *v58;
            v52 = a1[48] + 212;
            log_warn("%s:%d: %s reap list expected %u objects, but got last reap list object with %u more objects left\n", v22, v23, v24, v25, v26, v27, v28, "nx_reaper_checkpoint_traverse");
          }
        }
      }
    }

    else
    {
      LODWORD(v4) = v59;
      v9 = v60;
    }

    obj_release(v63);
  }

  while (!v8 && v20);
LABEL_76:
  if (*v10)
  {
    v45 = v9 == 0;
  }

  else
  {
    v45 = 1;
  }

  if (!v45)
  {
    sub_1000A6110();
  }

  return v8;
}

uint64_t sub_100031DC0(uint64_t a1, int a2)
{
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 108) = (a2 & 0xFFFFFFFC) - 112;
  return 0;
}

uint64_t sub_100031DE4(void *a1)
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

uint64_t sub_100031EC0(uint64_t a1, unsigned int a2)
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
    v6 = xmmword_1000AAE20;
    v7 = xmmword_1000AAE30;
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

uint64_t sub_100031FB4(void *a1)
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

uint64_t nx_reaper_obj_get(uint64_t *a1, int a2, int a3, unint64_t a4, unint64_t a5, uint64_t **a6, uint64_t **a7)
{
  v39 = 0;
  v38 = 0;
  v36 = 0;
  v37 = 0;
  *a7 = 0;
  *a6 = 0;
  if (a4)
  {
    v13 = obj_get(a1[49], 0, a4, &apfs_desc, 0, 0, 0, 0, &v39);
    if (v13)
    {
      v21 = v13;
      v34 = a1[48] + 212;
      log_err("%s:%d: %s unable to get fs object 0x%llx: %d\n", v14, v15, v16, v17, v18, v19, v20, "nx_reaper_obj_get");
      return v21;
    }

    v23 = v39;
  }

  else
  {
    v23 = 0;
  }

  *a6 = v23;
  if ((a2 & 0x4000FFFF) == 0x4000000B)
  {
    v24 = (v23 ? v23 : a1);
    if (!omap_obj_get(v24, 0, 0, a7))
    {
      return 0;
    }
  }

  v25 = obj_descriptor_and_flags_for_type(a2, &v38, &v36);
  if (v25)
  {
    v22 = v25;
  }

  else
  {
    LODWORD(v37) = a3;
    v22 = obj_get(a1[49], v38, a5, &v36, 0, v39, 0, 0, a7);
    if (!v22)
    {
      return v22;
    }
  }

  v35 = a1[48] + 212;
  log_err("%s:%d: %s unable to get object 0x%llx: %d\n", v26, v27, v28, v29, v30, v31, v32, "nx_reaper_obj_get");
  if (v39)
  {
    obj_release(v39);
  }

  *a7 = 0;
  *a6 = 0;
  return v22;
}

uint64_t nx_reaper_add_ext(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8)
{
  v73 = 0;
  v74 = 0;
  v71 = 0;
  v72 = 0;
  v16 = nx_reaper_get(a1, &v74);
  if (v16)
  {
    return v16;
  }

  v17 = v74[47];
  v16 = obj_descriptor_funcs_for_type(a2, &v71);
  if (v16)
  {
LABEL_3:
    v67 = *(a1 + 384) + 212;
    log_err("%s:%d: %s object type 0x%x not reapable: %d\n", v18, v19, v20, v21, v22, v23, v24, "nx_reaper_add_ext");
LABEL_14:
    obj_release(v74);
    return v16;
  }

  if (!*(v71 + 24))
  {
    v16 = 22;
    goto LABEL_3;
  }

  obj_lock(v74, 2u);
  v30 = obj_modify(v74, 0, a6, v25, v26, v27, v28, v29);
  if (v30)
  {
    v16 = v30;
LABEL_13:
    obj_unlock(v74, 2u);
    goto LABEL_14;
  }

  v31 = *(a1 + 392);
  if (*(v17 + 48) == 0)
  {
    v32 = obj_create(v31, 0x80000000, 0, &nx_reap_list_desc, 0, 0, a6, &v73);
    if (v32)
    {
      v16 = v32;
      v68 = *(a1 + 384) + 212;
      log_err("%s:%d: %s failed to create reap list: %d\n", v33, v34, v35, v36, v37, v38, v39, "nx_reaper_add_ext");
      goto LABEL_13;
    }

    v49 = obj_oid(v73);
    *(v17 + 48) = v49;
    *(v17 + 56) = v49;
    v50 = (v17 + 68);
  }

  else
  {
    v40 = obj_get(v31, 2147483649, *(v17 + 56), &nx_reap_list_desc, 0, 0, 0, a6, &v73);
    if (v40)
    {
      v16 = v40;
      v69 = *(a1 + 384) + 212;
      log_err("%s:%d: %s failed to get reap list tail: %d\n", v41, v42, v43, v44, v45, v46, v47, "nx_reaper_add_ext");
      goto LABEL_13;
    }

    v50 = (v17 + 68);
    if (*(v17 + 68) || *(v17 + 48) != *(v17 + 56))
    {
      goto LABEL_20;
    }
  }

  *v50 = 1;
  obj_dirty(v74, a6, 0);
LABEL_20:
  v51 = v73[47];
  if (v51[12] > (v51[11] - 2))
  {
    v52 = obj_create(*(a1 + 392), 0x80000000, 0, &nx_reap_list_desc, 0, 0, a6, &v72);
    if (v52)
    {
      v16 = v52;
      obj_unlock(v74, 2u);
      obj_release(v73);
      goto LABEL_14;
    }

    v53 = obj_oid(v72);
    *(v73[47] + 32) = v53;
    *(v17 + 56) = obj_oid(v72);
    v54 = *(v17 + 68);
    if (v54)
    {
      *(v17 + 68) = v54 + 1;
    }

    obj_dirty(v74, a6, 0);
    obj_release(v73);
    v73 = v72;
    v51 = v72[47];
  }

  v55 = *(v17 + 32);
  *(v17 + 32) = v55 + 1;
  v56 = v51[15];
  if (v56 == -1)
  {
    goto LABEL_43;
  }

  v57 = v51 + 16;
  v58 = &v51[10 * v56 + 16];
  v59 = *v58;
  v51[15] = *v58;
  v60 = v51[14];
  if (v60 != -1)
  {
    v57[10 * v60] = v56;
  }

  v61 = v51[12];
  if (v51[13] == -1)
  {
    if (v61)
    {
      sub_1000A613C();
    }

    v51[13] = v56;
  }

  v51[14] = v56;
  v51[12] = v61 + 1;
  v62 = (a7 & 2) != 0 ? 21 : 5;
  *v58 = -1;
  *(v58 + 4) = v62;
  *(v58 + 8) = a2;
  *(v58 + 12) = a3;
  *(v58 + 16) = a4;
  *(v58 + 24) = a5;
  *(v58 + 32) = a6;
  if (v59 == -1)
  {
LABEL_43:
    v70 = *(a1 + 384) + 212;
    log_err("%s:%d: %s reap list object free list erroneously empty?\n", v41, v42, v43, v44, v45, v46, v47, "nx_reaper_add_ext");
    obj_unlock(v74, 2u);
    obj_release(v73);
    obj_release(v74);
    return nx_corruption_detected_int(a1);
  }

  else
  {
    v63 = &v57[10 * v59];
    v64 = *v63;
    *v58 = v59;
    v51[14] = v59;
    v51[15] = v64;
    v51[12] = v61 + 2;
    if ((a7 & 2) != 0)
    {
      v65 = 19;
    }

    else
    {
      v65 = 3;
    }

    if (a7)
    {
      v65 |= 0xCu;
    }

    *v63 = -1;
    v63[1] = v65;
    v63[2] = a2;
    v63[3] = a3;
    *(v63 + 2) = a4;
    *(v63 + 3) = a5;
    *(v63 + 4) = v55;
    obj_dirty(v73, a6, 0);
    obj_unlock(v74, 2u);
    obj_release(v73);
    obj_release(v74);
    if (a8)
    {
      v66 = v55;
      v16 = 0;
      *a8 = v66;
    }

    else
    {
      return 0;
    }
  }

  return v16;
}

uint64_t nx_reaper_add_sub_object(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v79 = 0;
  v80 = 0;
  v77 = 0;
  v78 = 0;
  v14 = nx_reaper_get(a1, &v80);
  if (v14)
  {
    return v14;
  }

  v15 = v80[47];
  v14 = obj_descriptor_funcs_for_type(a2, &v77);
  if (v14)
  {
LABEL_3:
    v72 = *(a1 + 384) + 212;
    log_err("%s:%d: %s object type 0x%x not reapable: %d\n", v16, v17, v18, v19, v20, v21, v22, "nx_reaper_add_sub_object");
LABEL_4:
    obj_release(v80);
    return v14;
  }

  if (!*(v77 + 24))
  {
    v14 = 22;
    goto LABEL_3;
  }

  obj_lock(v80, 2u);
  v29 = obj_modify(v80, 0, a6, v24, v25, v26, v27, v28);
  if (v29)
  {
    v14 = v29;
    obj_unlock(v80, 2u);
    goto LABEL_4;
  }

  v30 = *(v15 + 48);
  if (!v30 && !*(v15 + 56))
  {
    v47 = obj_create(*(a1 + 392), 0x80000000, 0, &nx_reap_list_desc, 0, 0, a6, &v79);
    if (v47)
    {
      v14 = v47;
      v75 = *(a1 + 384) + 212;
      log_err("%s:%d: %s failed to create reap list: %d\n", v48, v49, v50, v51, v52, v53, v54, "nx_reaper_add_sub_object");
      goto LABEL_14;
    }

    v55 = obj_oid(v79);
    *(v15 + 48) = v55;
    *(v15 + 56) = v55;
    v46 = (v15 + 68);
    goto LABEL_21;
  }

  v31 = obj_get(*(a1 + 392), 2147483649, v30, &nx_reap_list_desc, 0, 0, 0, a6, &v79);
  if (v31)
  {
    v14 = v31;
    v73 = *(a1 + 384) + 212;
    log_err("%s:%d: %s failed to get reap list head: %d\n", v32, v33, v34, v35, v36, v37, v38, "nx_reaper_add_sub_object");
LABEL_14:
    v74 = *(a1 + 384) + 212;
    log_err("%s:%d: %s failed to get reap list head: %d\n", v39, v40, v41, v42, v43, v44, v45, "nx_reaper_add_sub_object");
    obj_unlock(v80, 2u);
    obj_release(v80);
    return v14;
  }

  v46 = (v15 + 68);
  if (!*(v15 + 68) && *(v15 + 48) == *(v15 + 56))
  {
LABEL_21:
    *v46 = 1;
    obj_dirty(v80, a6, 0);
  }

  v56 = v79[47];
  if (v56[12] > v56[11] + ~(a7 & 1u))
  {
    v57 = obj_create(*(a1 + 392), 0x80000000, 0, &nx_reap_list_desc, 0, 0, a6, &v78);
    if (v57)
    {
      v14 = v57;
      obj_unlock(v80, 2u);
      obj_release(v79);
      goto LABEL_4;
    }

    v58 = v78;
    *(v78[47] + 32) = *(v15 + 48);
    *(v15 + 48) = obj_oid(v58);
    v59 = *(v15 + 68);
    if (v59)
    {
      *(v15 + 68) = v59 + 1;
    }

    obj_dirty(v80, a6, 0);
    obj_release(v79);
    v79 = v78;
    v56 = v78[47];
  }

  v60 = v56[15];
  if (a7)
  {
    if (v60 == -1)
    {
LABEL_43:
      v76 = *(a1 + 384) + 212;
      log_err("%s:%d: %s reap list object free list erroneously empty?\n", v32, v33, v34, v35, v36, v37, v38, "nx_reaper_add_sub_object");
      obj_unlock(v80, 2u);
      obj_release(v79);
      obj_release(v80);
      return nx_corruption_detected_int(a1);
    }

    v61 = &v56[10 * v60];
    v64 = v61[16];
    v62 = v61 + 16;
    v63 = v64;
    v56[15] = v64;
    v65 = v56[14];
    *v62 = v56[13];
    v56[13] = v60;
    if (v65 == -1)
    {
      v56[14] = v60;
    }

    ++v56[12];
    if ((a7 & 2) != 0)
    {
      v66 = 29;
    }

    else
    {
      v66 = 13;
    }

    v62[1] = v66;
    v62[2] = a2;
    v62[3] = a3;
    *(v62 + 2) = a4;
    *(v62 + 3) = a5;
    *(v62 + 4) = a6;
    v60 = v63;
  }

  if (v60 == -1)
  {
    goto LABEL_43;
  }

  v67 = &v56[10 * v60];
  v69 = v67[16];
  v68 = v67 + 16;
  v56[15] = v69;
  v70 = v56[14];
  *v68 = v56[13];
  v56[13] = v60;
  if (v70 == -1)
  {
    v56[14] = v60;
  }

  ++v56[12];
  if ((a7 & 2) != 0)
  {
    v71 = 21;
  }

  else
  {
    v71 = 5;
  }

  v68[1] = v71;
  v68[2] = a2;
  v68[3] = a3;
  *(v68 + 2) = a4;
  *(v68 + 3) = a5;
  *(v68 + 4) = a6;
  obj_dirty(v79, a6, 0);
  obj_unlock(v80, 2u);
  obj_release(v79);
  obj_release(v80);
  return 0;
}

void nx_reaper_check_for_work(uint64_t *a1)
{
  v5 = 0;
  v6 = 0;
  if (!nx_reaper_get(a1, &v6))
  {
    v2 = v6[47];
    obj_lock(v6, 2u);
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

    obj_unlock(v6, 2u);
    sub_100032CB8(a1);
    obj_lock(v6, 2u);
LABEL_4:
    obj_unlock(v6, 2u);
    obj_release(v6);
  }
}

uint64_t sub_100032CB8(uint64_t *a1)
{
  v60 = 0;
  v58 = 0;
  v59 = 0;
  v56 = 0;
  v57 = 0;
  result = nx_reaper_get(a1, &v60);
  if (result)
  {
    return result;
  }

  v3 = v60[47];
  obj_lock(v60, 2u);
  v4 = v60;
  if (*(v60 + 98) || *(v60 + 99))
  {
    obj_unlock(v60, 2u);
    obj_release(v60);
    log_debug("%s:%d: reaper thread is exiting, returning EBUSY\n", v5, v6, v7, v8, v9, v10, v11, "nx_reaper");
    return 16;
  }

  v12 = 0;
  *(v60 + 98) = 1;
  while (1)
  {
    v54 = 0;
    v55 = 0;
    obj_unlock(v4, 2u);
    v59 = 0;
    v13 = tx_enter(a1, &v59);
    obj_lock(v60, 2u);
    v4 = v60;
    if (v13)
    {
      goto LABEL_38;
    }

    v19 = obj_modify(v60, 0, v59, v14, v15, v16, v17, v18);
    v4 = v60;
    if (v19)
    {
      v13 = v19;
      v45 = 0;
      goto LABEL_39;
    }

    if (*(v3 + 88))
    {
      goto LABEL_13;
    }

    if (*(v60 + 99))
    {
      goto LABEL_44;
    }

    v20 = sub_10003417C(a1, v60, v59);
    if (v20)
    {
      break;
    }

    v4 = v60;
    if (!*(v3 + 88))
    {
LABEL_44:
      v45 = 0;
      v13 = 0;
      goto LABEL_39;
    }

LABEL_13:
    obj_unlock(v4, 2u);
    if ((*(v3 + 104) & 4) == 0)
    {
      goto LABEL_16;
    }

    if (obj_descriptor_funcs_for_type(*(v3 + 72), &v58) || !*(v58 + 24))
    {
      v49 = *(v3 + 72);
      v46 = a1[48] + 212;
      log_err("%s:%d: %s object type 0x%x not reapable?: %d\n", v21, v22, v23, v24, v25, v26, v27, "nx_reaper");
      v12 = 1;
LABEL_16:
      obj_lock(v60, 2u);
LABEL_17:
      if ((*(v3 + 104) & 2) != 0)
      {
        *(v3 + 40) = *(v3 + 96);
      }

      *(v3 + 64) &= ~2u;
      *(v3 + 88) = 0;
      goto LABEL_20;
    }

    v28 = nx_reaper_obj_get(a1, *(v3 + 72), *(v3 + 76), *(v3 + 80), *(v3 + 88), &v56, &v57);
    if (v28)
    {
      v36 = v28;
      v52 = *(v3 + 72);
      v47 = a1[48] + 212;
      v50 = *(v3 + 88);
      log_err("%s:%d: %s unable to get object 0x%llx of type 0x%x: %d\n", v29, v30, v31, v32, v33, v34, v35, "nx_reaper");
    }

    else
    {
      if ((*(v3 + 64) & 2) == 0)
      {
        bzero(v60[48], *(v3 + 108));
      }

      v37 = (*(v58 + 24))(v57, (*(v3 + 104) >> 3) & 3, v60[48], *(v3 + 108), v59);
      v36 = v37;
      if (v37 && v37 != 36)
      {
        v53 = *(v3 + 72);
        v48 = a1[48] + 212;
        v51 = *(v3 + 88);
        log_err("%s:%d: %s error reaping object 0x%llx of type 0x%x: %d\n", v38, v39, v40, v41, v42, v43, v44, "nx_reaper");
      }

      obj_release(v57);
      if (v56)
      {
        obj_release(v56);
        v56 = 0;
      }
    }

    obj_lock(v60, 2u);
    if (v36 != 36)
    {
      v12 = 1;
      goto LABEL_17;
    }

    *(v3 + 64) |= 2u;
    v12 = 1;
LABEL_20:
    obj_dirty(v60, v59, 0);
    obj_unlock(v60, 2u);
    spaceman_currently_available_space(a1, 0, &v55, &v54, 0, 0);
    v13 = tx_leave(a1, v59, (v54 < 0x3E8) | (4 * (v54 < 0x7D0)));
    obj_lock(v60, 2u);
    v4 = v60;
    if (v13)
    {
      goto LABEL_38;
    }

    if (*(v60 + 99))
    {
      v13 = 0;
LABEL_38:
      v45 = 1;
      goto LABEL_39;
    }
  }

  v13 = v20;
  v45 = 0;
  v4 = v60;
LABEL_39:
  *(v4 + 98) = 0;
  obj_unlock(v4, 2u);
  obj_release(v60);
  if ((v45 & 1) == 0)
  {
    tx_leave(a1, v59, 0);
  }

  if (v13 | v12)
  {
    return v13;
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
    obj_lock(v4, 2u);
    v2 = v4;
    ++*(v4 + 99);
    obj_unlock(v2, 2u);
    v3 = a1[53];
    if (v3)
    {
      obj_release(v3);
      a1[53] = 0;
    }

    obj_release(v4);
  }
}

uint64_t nx_reaper_wait(uint64_t *a1, unint64_t a2)
{
  v17 = 0;
  v4 = nx_reaper_get(a1, &v17);
  if (!v4)
  {
    v5 = v17[7];
    obj_lock(v17, 2u);
    v13 = *(v5 + 32);
    if (a2 == -1)
    {
      a2 = v13 - 1;
    }

    if (a2 >= v13)
    {
      v16 = *(v5 + 32);
      v15 = a1[48] + 212;
      log_err("%s:%d: %s invalid reap_id (%llu), must be smaller than nr_next_reap_id (%llu)\n", v6, v7, v8, v9, v10, v11, v12, "nx_reaper_wait");
      v4 = 22;
    }

    else
    {
      while (*(v5 + 40) < a2)
      {
        obj_unlock(v17, 2u);
        v4 = sub_100032CB8(a1);
        obj_lock(v17, 2u);
        if (v4)
        {
          goto LABEL_10;
        }
      }

      v4 = 0;
    }

LABEL_10:
    obj_unlock(v17, 2u);
    obj_release(v17);
  }

  return v4;
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

uint64_t nx_metadata_fragmented_extent_list_tree_store(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) == 0)
  {
    sub_1000A6168();
  }

  v8 = 0;
  v6 = btree_get(a1, 2281701376, v3 & 0x7FFFFFFFFFFFFFFFLL, 0, 0, 0, 10, extent_list_key_cmp, 0, &v10);
  if (!v6)
  {
    v6 = btree_copy(v10, 0x40000000uLL, 0, a3, &v9);
    if (!v6)
    {
      btree_delete(v10, a3, &v8);
      *a2 = obj_oid(v9);
    }

    if (v10)
    {
      obj_release(v10);
    }

    if (v9)
    {
      obj_release(v9);
    }
  }

  return v6;
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

  obj_lock(a1, 2u);
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
        obj_unlock(a1, 2u);
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

  obj_unlock(a1, 2u);
  return v14;
}

uint64_t nx_metadata_fragmented_sanity_check(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v5 = nx_metadata_fragmented_extent_list_tree_get(a1, a2, &v24);
  if (!v5)
  {
    v23 = 0;
    bt_iterator_init(v19, v24, 0, 0, &v23, 8, 8u, &v21, 0x10u);
    v5 = v6;
    if (!v6)
    {
      v8 = 0;
      while (!bt_iterator_ended(v19))
      {
        if (v23 == v8)
        {
          v5 = 0;
        }

        else
        {
          v5 = nx_corruption_detected_int(a1);
        }

        if (nx_superblock_sanity_check_extent(*(a1 + 376), 0, v21, v22, 0))
        {
          v5 = nx_corruption_detected_int(a1);
        }

        v9 = v22;
        if (v22 > a3 - v8)
        {
          v5 = nx_corruption_detected_int(a1);
          v9 = v22;
        }

        if (v5)
        {
          goto LABEL_3;
        }

        v8 += v9;
        v10 = bt_iterator_next(v19);
        if (v10)
        {
          v5 = v10;
          v11 = *(a1 + 384) + 212;
          strerror(v10);
          log_err("%s:%d: %s failed to get next extent in metadata fragmented extent list tree, error %s(%d)\n", v12, v13, v14, v15, v16, v17, v18, "nx_metadata_fragmented_sanity_check");
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
    obj_release(v24);
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
    v25 = 0;
    v22 = 0;
    v23 = 0;
    memset(v20, 0, sizeof(v20));
    v21 = 0;
    v6 = nx_metadata_fragmented_extent_list_tree_get(a1, a2, &v25);
    if (v6)
    {
      return v6;
    }

    v7 = btree_iterate_nodes(v25, 0, 0, sub_100033AD0, 0, 0);
    if (!v7)
    {
      v24 = 0;
      bt_iterator_init(v20, v25, 0, 0, &v24, 8, 8u, &v22, 0x10u);
      v6 = v10;
      if (bt_iterator_ended(v20))
      {
        goto LABEL_9;
      }

      while (1)
      {
        v7 = sub_1000339EC(a1, v22, v23, 0);
        if (v7)
        {
          break;
        }

        v11 = bt_iterator_next(v20);
        if (v11)
        {
          v6 = v11;
          v12 = *(a1 + 384) + 212;
          strerror(v11);
          log_err("%s:%d: %s failed to get next extent in metadata fragmented extent list tree, error %s(%d)\n", v13, v14, v15, v16, v17, v18, v19, "nx_metadata_range_add");
          goto LABEL_9;
        }

        if (bt_iterator_ended(v20))
        {
          v6 = 0;
          goto LABEL_9;
        }
      }
    }

    v6 = v7;
LABEL_9:
    obj_release(v25);
    return v6;
  }

  v8 = a3 & 0x7FFFFFFF;

  return sub_1000339EC(a1, a2, v8, a5);
}

uint64_t sub_1000339EC(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
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

  result = btree_create(a1, 2281701376, 0, 10, 0, 8u, 16, extent_list_key_cmp, 0, (a1 + 464));
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

uint64_t sub_100033AD0(uint64_t a1)
{
  v2 = *(*a1 + 392);
  v3 = obj_oid(a1);
  v4 = (obj_size_phys(a1) + *(*(v2 + 376) + 36) - 1) / *(*(v2 + 376) + 36);

  return sub_1000339EC(v2, v3, v4, 0);
}

void nx_metadata_range_optimize(uint64_t a1)
{
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  v1 = *(a1 + 464);
  if (v1)
  {
    v25 = 0uLL;
    memset(v22, 0, sizeof(v22));
    v23 = 0;
    *v24 = 0uLL;
    v26 = 0;
    bt_iterator_init(v22, v1, 0, 0, &v26, 8, 8u, &v25, 0x10u);
    if (!bt_iterator_ended(v22))
    {
      v3 = 0;
      while (1)
      {
        v4 = *(&v25 + 1);
        v5 = v25;
        if (v25)
        {
          if (*(&v25 + 1))
          {
            goto LABEL_9;
          }
        }

        else
        {
          v4 = *(&v25 + 1) - 1;
          *&v25 = 1;
          *(&v25 + 1) = v4;
          v5 = 1;
          if (v4)
          {
LABEL_9:
            if (v24[1] && v24[0] + v24[1] == v5)
            {
              v24[1] += v4;
              if (bt_update(*(a1 + 464), 0, v24, 8, v24, 0x10u, 0))
              {
                v20 = *(a1 + 384) + 212;
                log_err("%s:%d: %s error updating metadata ranges tree: %d\n", v6, v7, v8, v9, v10, v11, v12, "nx_metadata_range_optimize");
                return;
              }

              if (bt_remove(*(a1 + 464), 0, &v25, 8u, 0))
              {
                v21 = *(a1 + 384) + 212;
                log_err("%s:%d: %s error removing coalesced extent from metadata ranges tree: %d\n", v13, v14, v15, v16, v17, v18, v19, "nx_metadata_range_optimize");
                return;
              }
            }

            else
            {
              ++v3;
              *v24 = v25;
            }
          }
        }

        bt_iterator_next(v22);
        if (bt_iterator_ended(v22))
        {
          if (v3 == 1)
          {
            *(a1 + 472) = *v24;
          }

          return;
        }
      }
    }
  }
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
    v40 = 0;
    v41 = 0;
    v39 = 0;
    v2 = tx_enter(a1, &v41);
    if (v2)
    {
      return v2;
    }

    evict_mapping_tree = nx_get_evict_mapping_tree(a1, 0x40000000u, *(a1[47] + 1256), 1, 1, &v40);
    if (evict_mapping_tree)
    {
      v3 = evict_mapping_tree;
      v35 = a1[48] + 212;
      log_err("%s:%d: %s failed to get mapping tree, error: %d\n", v5, v6, v7, v8, v9, v10, v11, "nx_unblock_physical_range");
      goto LABEL_12;
    }

    v3 = btree_delete(v40, v41, &v39);
    obj_release(v40);
    if (v3)
    {
      v36 = a1[48] + 212;
      log_err("%s:%d: %s failed to delete mapping, error: %d\n", v12, v13, v14, v15, v16, v17, v18, "nx_unblock_physical_range");
      goto LABEL_12;
    }

    *(a1[47] + 1256) = 0;
    v2 = tx_leave(a1, v41, 0);
    if (v2)
    {
      return v2;
    }
  }

  v41 = 0;
  v3 = tx_enter(a1, &v41);
  if (v3)
  {
    return v3;
  }

  v19 = spaceman_unset_block_out_range(a1, v41);
  if (!v19)
  {
    return tx_leave(a1, v41, 0);
  }

  v3 = v19;
  v37 = a1[48] + 212;
  log_err("%s:%d: %s spaceman_unset_block_out_range failed with error %u\n", v20, v21, v22, v23, v24, v25, v26, "nx_unblock_physical_range");
LABEL_12:
  if (tx_leave(a1, v41, 0))
  {
    v38 = a1[48] + 212;
    log_err("%s:%d: %s tx_leave failed with error: %d\n", v27, v28, v29, v30, v31, v32, v33, "nx_unblock_physical_range");
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

uint64_t nx_allocate_metadata_range(pthread_mutex_t **a1, uint64_t (*a2)(pthread_mutex_t **, uint64_t, int64_t, unint64_t *, int64_t *), uint64_t a3, unint64_t *a4, int64_t *a5, int a6)
{
  v12 = *a5;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v13 = a2(a1, a3, v12, &v26, &v27);
  if (v13)
  {
    return v13;
  }

  if (v27 >= v12)
  {
    v14 = 0;
    *a4 = v26;
    return v14;
  }

  v13 = btree_create(a1, 2281701376, 2, 10, 0, 8u, 16, extent_list_key_cmp, 0, &v25);
  if (v13)
  {
    return v13;
  }

  v22 = v26;
  v23 = v27;
  v24 = 0;
  v15 = bt_insert(v25, 0, &v24, 8, &v22, 0x10u, 0);
  if (!v15)
  {
    v18 = v27;
    v19 = v12 - v27;
    if (v19 < 1)
    {
LABEL_15:
      v21 = 0x80000000;
      if (a6)
      {
        v21 = 0x8000000000000000;
      }

      *a5 |= v21;
      v14 = 0;
      *a4 = obj_oid(v25) | 0x8000000000000000;
      v16 = v25;
      if (v25)
      {
        goto LABEL_18;
      }

      return v14;
    }

    while (1)
    {
      v15 = a2(a1, a3, v19, &v26, &v27);
      if (v15)
      {
        break;
      }

      v22 = v26;
      v23 = v27;
      v24 = v18;
      v15 = bt_insert(v25, 0, &v24, 8, &v22, 0x10u, 0);
      if (v15)
      {
        break;
      }

      v18 += v27;
      v20 = v19 <= v27;
      v19 -= v27;
      if (v20)
      {
        goto LABEL_15;
      }
    }
  }

  v14 = v15;
  if (v25)
  {
    btree_delete(v25, 0, 0);
    v16 = v25;
LABEL_18:
    obj_release(v16);
  }

  return v14;
}

uint64_t sub_10003417C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 376);
  v5 = *(v4 + 48);
  if (!v5)
  {
    return 0;
  }

  v27 = 0;
  v28 = 0;
  v8 = obj_get(*(a1 + 392), 2147483649, v5, &nx_reap_list_desc, 0, 0, 0, a3, &v28);
  if (v8)
  {
    v16 = v8;
    v26 = *(a1 + 384) + 212;
    log_err("%s:%d: %s failed to get reap list head: %d\n", v9, v10, v11, v12, v13, v14, v15, "nx_reaper_next_record");
    return v16;
  }

  v17 = v28;
  if (*(v4 + 88))
  {
LABEL_21:
    obj_release(v17);
    return 0;
  }

  v18 = v28[47];
  while (1)
  {
    while (1)
    {
      v19 = *(v18 + 52);
      if (v19 == -1)
      {
        break;
      }

      v20 = v18 + 64 + 40 * v19;
      *(v4 + 104) = *(v20 + 4);
      *(v4 + 72) = *(v20 + 8);
      *(v4 + 80) = *(v20 + 16);
      *(v4 + 96) = *(v20 + 32);
      obj_dirty(a2, a3, 0);
      v21 = *v20;
      if (*(v18 + 52) == *(v18 + 56))
      {
        *(v18 + 56) = v21;
      }

      *v20 = *(v18 + 60);
      *(v20 + 4) = 0;
      *(v18 + 60) = v19;
      --*(v18 + 48);
      *(v18 + 52) = v21;
      obj_dirty(v28, a3, 0);
      if (*(v4 + 88))
      {
        goto LABEL_20;
      }
    }

    v22 = *(v18 + 32);
    if (!v22)
    {
      if (!*(v4 + 68) && *(v4 + 48) == *(v4 + 56))
      {
        *(v4 + 68) = 1;
        obj_dirty(a2, a3, 0);
      }

LABEL_20:
      v17 = v28;
      goto LABEL_21;
    }

    v23 = obj_get(*(a1 + 392), 0x80000000, v22, &nx_reap_list_desc, 0, 0, 0, a3, &v27);
    if (v23)
    {
      break;
    }

    *(v4 + 48) = *(v18 + 32);
    v24 = *(v4 + 68);
    if (v24)
    {
      *(v4 + 68) = v24 - 1;
    }

    obj_dirty(a2, a3, 0);
    obj_free(v28);
    obj_release(v28);
    v17 = v27;
    v27 = 0;
    v28 = v17;
    v18 = v17[47];
    if (*(v4 + 88))
    {
      goto LABEL_21;
    }
  }

  v16 = v23;
  obj_release(v28);
  return v16;
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

uint64_t sub_1000348B8(uint64_t a1, unsigned int a2, uint64_t a3)
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

uint64_t sub_1000349A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1[7] + 32);
  if ((v8 & 8) != 0)
  {
    return 45;
  }

  v11 = a1[1];
  if (v11)
  {
    if (obj_modify(a1[1], 0, a5, a4, a5, a6, a7, a8))
    {
      if (!a1[1])
      {
        v14 = *(*(*a1 + 392) + 384) + 212;
      }

      obj_oid(v11);
      log_err("%s:%d: %s obj_modify(fs %lld) failed: %d\n", v15, v16, v17, v18, v19, v20, v21, "btree_node_reap");
    }

    if ((*(a1[7] + 32) & 2) != 0)
    {
      goto LABEL_34;
    }

    v13 = obj_oid(v11);
    goto LABEL_13;
  }

  if ((v8 & 2) == 0)
  {
    v13 = 0;
LABEL_13:
    v22 = obj_type_and_flags(a1);
    if (((*(a1[7] + 36) - 1) & 0x8000) == 0)
    {
      v23 = v22 & 0xFFFF0000 | 3;
      v24 = (*(a1[7] + 36) - 1);
      do
      {
        v54 = 0;
        if (btree_node_child_id(a1, v24, &v54))
        {
          if (!a1[1])
          {
            v35 = *(*(*a1 + 392) + 384) + 212;
          }

          obj_oid(a1);
          log_err("%s:%d: %s error getting oid for child %d of 0x%llx: %d\n", v36, v37, v38, v39, v40, v41, v42, "btree_node_reap");
        }

        else
        {
          v25 = *a1;
          if (*(a1[7] + 34) < 2u)
          {
            v44 = obj_size_phys(a1);
            if (obj_delete_and_free_by_oid(v25, v23, v44, v13, v54, a5))
            {
              if (!a1[1])
              {
                v53 = *(*(*a1 + 392) + 384) + 212;
              }

              log_err("%s:%d: %s error deleting child 0x%llx type 0x%x: %d\n", v45, v46, v47, v48, v49, v50, v51, "btree_node_reap");
            }
          }

          else
          {
            v26 = *(v25 + 392);
            v27 = obj_size_phys(a1);
            if (nx_reaper_add_sub_object(v26, v23, v27, v13, v54, a5, 0))
            {
              if (!a1[1])
              {
                v52 = *(*(*a1 + 392) + 384) + 212;
              }

              log_err("%s:%d: %s error adding child 0x%llx type 0x%x to reap list: %d\n", v28, v29, v30, v31, v32, v33, v34, "btree_node_reap");
            }
          }
        }
      }

      while (v24-- > 0);
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
  v17 = &v31 - v16;
  bzero(&v31 - v16, v15);
  v32 = 0;
  v31 = btree_node_desc;
  v18 = obj_flags(a1);
  if ((a4 & 0xFFFFFC38) != 0)
  {
    sub_1000A6194();
  }

  v19 = v18 & 0xFC00;
  *v17 = 25987;
  *(v17 + 1) = v15;
  *(v17 + 8) = *(a1 + 25);
  *(v17 + 3) = a1[52];
  v20 = a1[50];
  if ((v20 & 0x80) != 0)
  {
    if ((v20 & 0x4000000000000000) != 0)
    {
      v21 = 64;
    }

    else
    {
      v21 = HIBYTE(v20) & 0x3F;
    }

    memcpy(v17 + 32, a2 + 1, v21);
  }

  *(v17 + 2) = 0;
  *(v17 + 3) = a5;
  DWORD2(v31) = obj_size_phys(a1);
  v22 = obj_type_and_flags(a1) & 0xFFFF0000;
  LODWORD(v31) = v22 | 3;
  DWORD1(v31) = obj_subtype(a1);
  v23 = 3;
  if ((v22 & 0x40000000) == 0)
  {
    v23 = 1;
  }

  if ((a4 & 1) == 0)
  {
    v23 = 0;
  }

  v24 = v19 | v22 | v23;
  if ((a4 & 2) != 0)
  {
    v24 |= 4uLL;
  }

  if (a4 >= 0x200)
  {
    v25 = v24 | a4 & 0x180 | (32 * ((a4 >> 2) & 1)) | &_mh_execute_header;
  }

  else
  {
    v25 = v24 | a4 & 0x180 | (32 * ((a4 >> 2) & 1));
  }

  if ((a4 & 0x40) != 0)
  {
    v26 = 0;
  }

  else
  {
    v26 = &v31;
  }

  result = obj_get(*a1, v25, *a2, v26, v17, a1[1], a3, a6, &v32);
  v28 = v32;
  if ((a4 & 0x104) != 4 || result)
  {
    if (result)
    {
      v30 = 0;
      goto LABEL_32;
    }

LABEL_31:
    v30 = v32;
LABEL_32:
    *a7 = v30;
    if (result | a4 & 0x180)
    {
      return result;
    }

    if (v28)
    {
      result = 0;
      if ((~v25 & 0x40000001) == 0 || v28[14] == *a2)
      {
        return result;
      }
    }

    else if ((~v25 & 0x40000001) == 0)
    {
      return 0;
    }

    sub_1000A61C0();
  }

  if ((v32[2] & 0x10) == 0)
  {
    goto LABEL_31;
  }

  if (a4)
  {
    v29 = 2;
  }

  else
  {
    v29 = 1;
  }

  btree_node_release(v32, v29 & ((a4 << 30) >> 31));
  *a7 = 0;
  return 2;
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

  result = sub_10003511C(a1, *v10, v12);
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

uint64_t sub_10003511C(uint64_t a1, unsigned int a2, int a3)
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
  result = sub_100035248(a1, v12, v13);
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

uint64_t sub_100035248(uint64_t a1, unsigned int a2, unsigned int a3)
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

uint64_t bt_insert(uint64_t *a1, uint64_t a2, unint64_t *a3, int a4, void *a5, unsigned int a6, uint64_t a7)
{
  LODWORD(v10) = a4;
  v14 = a1[50];
  __chkstk_darwin(a1);
  v16 = &v227[-v15];
  bzero(&v227[-v15], v17);
  v258 = 0u;
  v259 = 0u;
  v257 = 0u;
  v255 = 0;
  v256 = 0;
  v254 = 0;
  v253 = 0;
  v249 = 0;
  if (!obj_refcount(a1))
  {
    sub_1000A62C8();
  }

  if (!a1[52])
  {
    return 22;
  }

  v251 = v10;
  if (a6 == 65534)
  {
    v18 = 0;
  }

  else
  {
    v18 = a6;
  }

  v250 = v18;
  v19 = btree_entry_size_check(a1, v10, a6);
  if (v19)
  {
    v20 = v19;
    if (!a1[1])
    {
      v22 = *(*(*a1 + 392) + 384) + 212;
    }

    btree_entry_max_size(a1[50], (a1[50] >> 27) & 0xF000, (a1[50] >> 9) & 0x3FFF, (a1[50] >> 23));
    log_err("%s:%d: %s request to insert entry %d (%d) %d (%d) = (%d), max size is %d key %d, error %d\n", v23, v24, v25, v26, v27, v28, v29, "bt_insert");
    return v20;
  }

  obj_lock(a1, 2u);
  v21 = obj_modify(a1, (*(a1 + 100) >> 3) & 2, a7);
  if (v21)
  {
    v20 = v21;
    obj_unlock(a1, 2u);
    return v20;
  }

  v252 = 0;
  *&v257 = a1;
  obj_retain(a1);
  v31 = a1[49];
  v32 = *(v31 + 16);
  v33 = *(v31 + 20) >= v18;
  if (v32 < v10)
  {
    v34 = v10;
  }

  else
  {
    v34 = v32;
  }

  if (v32 < v10)
  {
    v33 = 0;
  }

  v245 = v33;
  v35 = a1[54];
  v36 = a1;
  v244 = a2;
  v241 = a6;
  if (v35)
  {
    v37 = a1[53];
    v36 = a1;
    if (v37)
    {
      v38 = a1[1];
      if (!v38)
      {
        v38 = *(*a1 + 392);
      }

      v39 = v37(v38, a3, v10);
      v36 = a1;
      if (v39)
      {
        v258 = v257;
        *&v257 = 0;
        v40 = a1[54];
        *v16 = v40;
        if (v40 != obj_oid(a1) && !btree_node_get(a1, v16, a2, (a7 != 0) | (((*(a1[7] + 32) >> 3) & 1) << 6) | 6u, 61455, a7, &v257))
        {
          v41 = v34;
          v42 = v257;
          if ((*(*(v257 + 56) + 32) & 2) != 0 && a1[54] == *(v257 + 112))
          {
            v43 = sub_100037408(v257, a3, v10, &v257 + 4, (&v257 | 0xA));
            v42 = v257;
            if (!v43)
            {
              if (WORD4(v257))
              {
                if (!(BYTE10(v257) ? (sub_1000375C8)(v257) : (sub_100037E98)(v257)))
                {
                  v47 = 0;
                  v20 = 0;
                  v242 = 0;
                  v174 = 0;
                  goto LABEL_358;
                }
              }
            }
          }

          obj_unlock(v42, 2u);
          obj_release(v42);
          v34 = v41;
        }

        v257 = v258;
        *&v258 = 0;
        v36 = v257;
      }
    }
  }

  v45 = *(*(v36 + 56) + 32);
  v46 = sub_100037408(v36, a3, v10, &v257 + 4, (&v257 | 0xA));
  v20 = v46;
  if ((v45 & 2) != 0)
  {
    if (v46)
    {
      goto LABEL_43;
    }
  }

  else
  {
    if (v46)
    {
      goto LABEL_43;
    }

    if ((BYTE10(v257) & 1) == 0 && WORD4(v257))
    {
      --WORD4(v257);
    }
  }

  v54 = *(v257 + 56);
  v55 = *(v54 + 36);
  v56 = *(v54 + 32);
  v247 = (__PAIR64__(v55, v56 & 2) - 1) >> 32 == WORD4(v257);
  if (WORD4(v257) || (BYTE10(v257) & 1) != 0 || (v56 & 2) != 0)
  {
    v57 = 0;
    v58 = 0;
    v59 = v241;
    if ((v56 & 2) == 0)
    {
      goto LABEL_89;
    }

    v239 = 0;
    v47 = 0;
    v246 = 0;
LABEL_75:
    v60 = v259;
    if (v259)
    {
      if ((v259 != a1 || v245) && v259 != v47 && v259 != v239)
      {
        obj_unlock(v259, 2u);
        obj_release(v60);
      }

      *&v259 = 0;
    }

    if (v247)
    {
      v61 = a1[54];
      v62 = *(v257 + 112);
      if (v61)
      {
        if (v61 != v62)
        {
          sub_1000A6244();
        }
      }

      else if (v62 && (a1[50] & 0x10) == 0)
      {
        a1[54] = v62;
      }
    }

    v242 = v57;
    v10 = v251;
    if (BYTE10(v257) == 1)
    {
      v63 = sub_1000375C8(v257, WORD4(v257), a3, v251, a5, v59, a7);
    }

    else
    {
      v63 = sub_100037E98(v257, WORD4(v257), a3, v251, a5, v59, a7);
    }

    v20 = v63;
    if (v63 != 28)
    {
      goto LABEL_339;
    }

    v162 = sub_100038618(a1, v258, WORD4(v258), v257, WORD4(v257), a3, v10, 1u, &v251, &v250, 0, a2, a7, &v256);
    if (v162)
    {
      v20 = v162;
      if (!a1[1])
      {
        v172 = *(*(*a1 + 392) + 384) + 212;
      }

LABEL_338:
      log_err("%s:%d: %s bt_shift_or_split failed with error: %d\n", v163, v164, v165, v166, v167, v168, v169, "bt_insert");
LABEL_339:
      if (v20)
      {
        v174 = v246;
      }

      else
      {
        v174 = v246;
        if (!WORD4(v257) && v258)
        {
          v175 = btree_node_key_ptr(v258, WORD4(v258), &v254, &v252);
          if (v175)
          {
            v20 = v175;
          }

          else
          {
            v176 = a1[1];
            if (!v176)
            {
              v176 = *(*a1 + 392);
            }

            v20 = (a1[52])(v176, a3, v10, v254, v252, &v253);
            if (!v20)
            {
              if (v253)
              {
                v20 = sub_1000375C8(v258, WORD4(v258), a3, v10, 0, 0, a7);
                if (v20)
                {
                  if (!a1[1])
                  {
                    v186 = *(*(*a1 + 392) + 384) + 212;
                  }

                  log_err("%s:%d: %s btree_node_key_update failed: %d\n", v177, v178, v179, v180, v181, v182, v183, "bt_insert");
                }
              }
            }
          }
        }
      }

LABEL_358:
      v187 = v258;
      if (v258)
      {
        if ((v258 != a1 || v245) && v258 != v47 && v258 != v255)
        {
          obj_unlock(v258, 2u);
          obj_release(v187);
        }

        *&v258 = 0;
      }

      v188 = v257;
      if (v257)
      {
        if ((v257 != a1 || v245) && v257 != v47 && v257 != v255)
        {
          obj_unlock(v257, 2u);
          obj_release(v188);
        }

        *&v257 = 0;
      }

      if (v20)
      {
        goto LABEL_44;
      }

      v189 = a1[49];
      v190 = *(v189 + 16);
      v191 = v190 >= v10;
      v192 = v190 < v10;
      if (!v191)
      {
        *(v189 + 16) = v10;
      }

      v193 = v242;
      if (*(v189 + 20) < v250)
      {
        *(v189 + 20) = v250;
        v192 = 1;
      }

      if (BYTE10(v257))
      {
        if ((((a1[50] & 0x80) == 0) & ~v192) != 0)
        {
          goto LABEL_380;
        }
      }

      else
      {
        atomic_fetch_add_explicit((v189 + 24), 1uLL, memory_order_relaxed);
      }

      obj_dirty(a1, a7, 0);
LABEL_380:
      if ((v174 & (WORD4(v257) == 0)) != 1)
      {
        v20 = 0;
        goto LABEL_44;
      }

      if (v47)
      {
        v20 = sub_1000375C8(v47, v193, a3, v10, 0, 0, a7);
        if (v20)
        {
          if (!a1[1])
          {
            v201 = *(*(*a1 + 392) + 384) + 212;
          }

          log_err("%s:%d: %s btree_node_key_update failed: %d\n", v194, v195, v196, v197, v198, v199, v200, "bt_insert");
        }

        if (v47 != v259 && v47 != v258 && (v47 != a1 || v245))
        {
          obj_unlock(v47, 2u);
          obj_release(v47);
        }
      }

      else
      {
        v20 = 0;
      }

      v202 = v255;
      v203 = v255 + 7;
      if (*(v255[7] + 34) < 2u)
      {
LABEL_428:
        if (v202 != v259 && v202 != v258 && (v202 != a1 || v245))
        {
          obj_unlock(v202, 2u);
          obj_release(v202);
        }

        v47 = 0;
        v255 = 0;
        goto LABEL_44;
      }

      v204 = v251;
      while (1)
      {
        WORD2(v248) = 0;
        LOBYTE(v248) = 0;
        v205 = sub_1000382F8(v202, a3, v204, &v248 + 2, &v248);
        if (v205)
        {
          v20 = v205;
          goto LABEL_43;
        }

        if ((v248 & 1) != 0 || WORD2(v248))
        {
          if (!a1[1])
          {
            v217 = *(*(*a1 + 392) + 384) + 212;
          }

          obj_oid(v202);
          obj_subtype(v202);
          v226 = *(*v203 + 34);
          log_err("%s:%d: %s minkey update traversal unexpectedly found the key (%d) or a non-zero index (%d); oid %llu subtype 0x%x level %d\n", v218, v219, v220, v221, v222, v223, v224, "bt_insert");
LABEL_427:
          v20 = 0;
          goto LABEL_428;
        }

        v20 = sub_1000375C8(v202, 0, a3, v204, 0, 0, a7);
        if (v20)
        {
          if (!a1[1])
          {
            v213 = *(*(*a1 + 392) + 384) + 212;
          }

          log_err("%s:%d: %s btree_node_key_update failed: %d\n", v206, v207, v208, v209, v210, v211, v212, "bt_insert");
        }

        v214 = *(*v203 + 34);
        if (v214 == 2)
        {
          goto LABEL_428;
        }

        v20 = btree_node_child_val(v202, 0, v16);
        v255 = 0;
        if (!v20)
        {
          v20 = btree_node_get(a1, v16, v244, 3u, v214 - 1, a7, &v255);
        }

        if (v202 != v259 && v202 != v258 && (v202 != a1 || v245))
        {
          obj_unlock(v202, 2u);
          obj_release(v202);
        }

        v202 = v255;
        if (v20)
        {
          break;
        }

        v203 = v255 + 7;
        if (*(v255[7] + 34) <= 1u)
        {
          goto LABEL_427;
        }
      }

      if (v255)
      {
        goto LABEL_428;
      }

LABEL_43:
      v47 = 0;
      goto LABEL_44;
    }

    v170 = v256;
    if (!v256)
    {
      v170 = v257;
      goto LABEL_335;
    }

    if (v258)
    {
      if (v246)
      {
        sub_1000A6270();
      }

      ++WORD4(v258);
      v171 = v257;
      if (v257 && (v257 != a1 || v245) && v257 != v47 && v257 != v239)
      {
        obj_unlock(v257, 2u);
        obj_release(v171);
      }

      v256 = 0;
      *&v257 = v170;
LABEL_335:
      v20 = sub_10003A7E0(v170, a3, v10, a5, v59, a7, &v257 + 4, (&v257 | 0xA));
      if (!v20)
      {
        goto LABEL_339;
      }

      goto LABEL_336;
    }

    v184 = v257;
    *&v258 = v257;
    if (*(v256[7] + 36))
    {
      v185 = btree_node_key_ptr(v256, 0, &v254, &v252);
      if (v185)
      {
        v20 = v185;
        v256 = 0;
        *&v257 = v170;
        goto LABEL_336;
      }

      v184 = v258;
      v215 = v254;
      v216 = v252;
    }

    else
    {
      v215 = a3;
      v216 = v10;
    }

    v20 = sub_1000382F8(v184, v215, v216, &v258 + 4, &v258 + 10);
    v256 = 0;
    *&v257 = v170;
    v59 = v241;
    if (!v20)
    {
      goto LABEL_335;
    }

LABEL_336:
    if (!a1[1])
    {
      v173 = *(*(*a1 + 392) + 384) + 212;
    }

    goto LABEL_338;
  }

  v58 = v257;
  v255 = v257;
  v57 = 1;
LABEL_89:
  v229 = v34;
  v47 = 0;
  v236 = v58;
  v235 = v58;
  v237 = v58;
  v238 = v58;
  v239 = v58;
  v243 = v58;
  v240 = v58;
  v246 = v57;
  v57 = 0;
  v233 = a5;
  while (2)
  {
    v242 = v57;
    v64 = v259;
    if (v259 && (v259 != a1 || v245))
    {
      v65 = v259 == v47 || v259 == v240;
      if (!v65)
      {
        obj_unlock(v259, 2u);
        obj_release(v64);
      }
    }

    v66 = v258;
    v258 = v257;
    v259 = v66;
    *&v257 = 0;
    v67 = btree_node_child_val(v258, WORD4(v258), v16);
    if (v67)
    {
LABEL_315:
      v20 = v67;
      goto LABEL_44;
    }

    v68 = *(*(v258 + 56) + 34) - 1;
    v69 = a1;
    v70 = v16;
    for (i = a2; ; i = v89)
    {
      v67 = btree_node_get(v69, v70, i, 3u, v68, a7, &v257);
      if (v67)
      {
        goto LABEL_315;
      }

      v75 = v257;
      if ((a1[50] & 0x10) != 0 && *(v257 + 112) != *v16)
      {
        sub_10003833C(v258, WORD4(v258), (v257 + 112), a7, v72, v73, v74);
        v75 = v257;
      }

      v76 = *(*(v75 + 56) + 32);
      v77 = sub_100037408(v75, a3, v251, &v257 + 4, (&v257 | 0xA));
      v20 = v77;
      if ((v76 & 2) != 0)
      {
        if (v77)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v77)
        {
          goto LABEL_44;
        }

        if ((BYTE10(v257) & 1) == 0 && WORD4(v257))
        {
          --WORD4(v257);
        }
      }

      v78 = a7;
      v79 = a3;
      v80 = v47;
      v81 = v257;
      if (!v247)
      {
        v247 = 0;
        v83 = *(v257 + 56);
        LOWORD(v84) = *(v83 + 32);
        v82 = WORD4(v257);
        if ((v84 & 2) == 0)
        {
          goto LABEL_138;
        }

        goto LABEL_118;
      }

      v82 = WORD4(v257);
      v83 = *(v257 + 56);
      v84 = *(v83 + 32);
      if (((v84 >> 1) & 1) + *(v83 + 36) - 1 == WORD4(v257))
      {
        break;
      }

      v247 = 0;
      if ((v84 & 2) == 0)
      {
        goto LABEL_138;
      }

LABEL_118:
      if (*(v83 + 36) != v82)
      {
        goto LABEL_138;
      }

      v85 = WORD4(v258);
      v86 = v258;
      if (*(*(v258 + 56) + 36) - 1 <= WORD4(v258) || sub_100038410(v81, 1u, &v251, &v250, 0, 0, 0))
      {
        goto LABEL_138;
      }

      v67 = btree_node_child_val(v86, (v85 + 1), v16);
      v47 = v80;
      if (v67)
      {
        goto LABEL_315;
      }

      v87 = v257;
      obj_unlock(v257, 2u);
      obj_release(v87);
      *&v257 = 0;
      v88 = WORD4(v258)++;
      if ((v246 & (v88 == 0)) == 1)
      {
        v89 = v244;
        a3 = v79;
        if (v47)
        {
          a7 = v78;
          v90 = v243;
          if (v47 != v259 && v47 != v258 && (v47 != a1 || v245))
          {
            obj_unlock(v47, 2u);
            obj_release(v47);
            v90 = v255;
            v236 = v255;
            v235 = v255;
            v237 = v255;
            v238 = v255;
            v239 = v255;
          }
        }

        else
        {
          a7 = v78;
          v90 = v243;
        }

        if (v90)
        {
          if (v90 != v259 && v90 != v258 && (v90 != a1 || v245))
          {
            obj_unlock(v90, 2u);
            obj_release(v90);
          }

          v239 = 0;
          v236 = 0;
          v235 = 0;
          v237 = 0;
          v238 = 0;
          v243 = 0;
          v240 = 0;
          v47 = 0;
          v242 = 0;
          v246 = 0;
          v255 = 0;
        }

        else
        {
          v243 = 0;
          v240 = 0;
          v47 = 0;
          v242 = 0;
          v246 = 0;
        }
      }

      else
      {
        v89 = v244;
        a3 = v79;
        a7 = v78;
      }

      v68 = *(*(v258 + 56) + 34) - 1;
      v69 = a1;
      v70 = v16;
    }

    if (a1[54] == *(v258 + 112))
    {
      a1[54] = *(v257 + 112);
    }

    v247 = 1;
    if ((v84 & 2) != 0)
    {
      goto LABEL_118;
    }

LABEL_138:
    v91 = v82 != 0;
    v92 = v246;
    if (((v246 | v91) & 1) == 0)
    {
      v92 = 0;
      a2 = v244;
      if ((v84 & 2) == 0)
      {
        v47 = v80;
        a3 = v79;
        a7 = v78;
        a5 = v233;
        if ((BYTE10(v257) & 1) == 0)
        {
          v47 = v258;
          v92 = 1;
          v239 = v81;
          v236 = v81;
          v235 = v81;
          v242 = WORD4(v258);
          v237 = v81;
          v255 = v81;
          v238 = v81;
          v243 = v81;
          v240 = v81;
        }

        goto LABEL_159;
      }

      goto LABEL_148;
    }

    a2 = v244;
    if ((v246 & v91) != 1)
    {
LABEL_148:
      v47 = v80;
      a3 = v79;
      a7 = v78;
      a5 = v233;
      goto LABEL_159;
    }

    if (!v80)
    {
      a3 = v79;
      a7 = v78;
      a5 = v233;
      v47 = v238;
      goto LABEL_152;
    }

    v93 = v80;
    v94 = v80 != a1;
    v65 = v80 == v259;
    a3 = v79;
    v47 = v238;
    if (v65)
    {
      a7 = v78;
      goto LABEL_151;
    }

    a7 = v78;
    if (v93 == v258)
    {
LABEL_151:
      a5 = v233;
      goto LABEL_152;
    }

    a5 = v233;
    if (v94 || v245)
    {
      obj_unlock(v93, 2u);
      obj_release(v93);
      v47 = v255;
      v236 = v255;
      v235 = v255;
      v237 = v255;
      v239 = v255;
    }

LABEL_152:
    if (v47)
    {
      if (v47 != v259 && v47 != v258 && (v47 != a1 || v245))
      {
        obj_unlock(v47, 2u);
        obj_release(v47);
      }

      v239 = 0;
      v236 = 0;
      v235 = 0;
      v237 = 0;
      v238 = 0;
      v243 = 0;
      v240 = 0;
      v47 = 0;
      v242 = 0;
      v92 = 0;
      v255 = 0;
    }

    else
    {
      v238 = 0;
      v243 = 0;
      v240 = 0;
      v242 = 0;
      v92 = 0;
    }

LABEL_159:
    v95 = sub_10003859C(v257);
    v246 = v92;
    if (WORD4(v257) || (BYTE10(v257) & 1) != 0)
    {
      goto LABEL_166;
    }

    v67 = btree_node_key_ptr(v258, WORD4(v258), &v254, &v252);
    if (v67)
    {
      goto LABEL_315;
    }

    v96 = a1[1];
    if (!v96)
    {
      v96 = *(*a1 + 392);
    }

    v97 = a1[52];
    LODWORD(v234) = v251;
    v67 = v97(v96, a3);
    if (v67)
    {
      goto LABEL_315;
    }

    if ((v253 & 0x80000000) == 0)
    {
LABEL_166:
      v98 = 0;
      v99 = 0;
    }

    else
    {
      v111 = *(v257 + 400);
      if ((v111 & 0x40) != 0)
      {
        v112 = v234;
      }

      else
      {
        v112 = (v234 + 7) & 0x1FFF8;
      }

      if ((v111 & 0x40) != 0)
      {
        v113 = v252;
      }

      else
      {
        v113 = (v252 + 7) & 0x1FFF8;
      }

      if (v112 <= v113)
      {
        v98 = 0;
      }

      else
      {
        v65 = (*(v257 + 400) & 0x40) == 0;
        if ((v111 & 0x40) != 0)
        {
          v114 = v234;
        }

        else
        {
          v114 = (v234 + 7) & 0x1FFF8;
        }

        if ((*(v257 + 400) & 0x40) != 0)
        {
          v115 = v252;
        }

        else
        {
          v115 = (v252 + 7) & 0x1FFF8;
        }

        v98 = v114 - v115;
      }

      v99 = 1;
    }

    v234 = v47;
    v100 = *(*(v258 + 56) + 34);
    if (v100 < 2)
    {
      WORD2(v249) = v95;
      v102 = *(v258 + 400);
      v103 = (HIBYTE(v102) & 0x7F) + 8;
      LOWORD(v249) = v103;
      if ((v99 & 1) == 0)
      {
        v101 = v251;
        goto LABEL_175;
      }

      goto LABEL_173;
    }

    v101 = v251;
    if (v95 > v251)
    {
      v101 = v95;
    }

    WORD2(v249) = v101;
    v102 = *(v258 + 400);
    v103 = (HIBYTE(v102) & 0x7F) + 8;
    LOWORD(v249) = v103;
    if (v99)
    {
LABEL_173:
      v104 = 1;
      goto LABEL_176;
    }

LABEL_175:
    HIWORD(v249) = v101;
    WORD1(v249) = v103;
    v104 = 2;
LABEL_176:
    LODWORD(v232) = v98;
    v231 = v258;
    v230 = v98;
    if (sub_100038410(v258, v104, &v249 + 2, &v249, v98, 0, 0))
    {
      v47 = v234;
      v59 = v241;
      v57 = v242;
      goto LABEL_178;
    }

    v228 = v104;
    if (v100 >= 2)
    {
      v248 = ((HIBYTE(v102) & 0x7F) + 8);
      if (v99)
      {
        v105 = 1;
      }

      else
      {
        HIWORD(v248) = v229;
        WORD1(v248) = (HIBYTE(v102) & 0x7F) + 8;
        v105 = 2;
      }

      v47 = v234;
      v59 = v241;
      v109 = sub_100038410(v257, v105, &v248 + 2, &v248, v230, 0, 0);
      v57 = v242;
      if (!v109)
      {
        goto LABEL_238;
      }

LABEL_178:
      if ((*(*(v257 + 56) + 32) & 2) == 0)
      {
        continue;
      }

      goto LABEL_75;
    }

    break;
  }

  v106 = v257;
  if (BYTE10(v257) != 1)
  {
    v110 = sub_100038410(v257, 1u, &v251, &v250, 0, 0, 0);
    v47 = v234;
    v59 = v241;
    v57 = v242;
    if (!v110)
    {
      goto LABEL_238;
    }

LABEL_236:
    if (v232 && !sub_100038410(v231, 0, 0, 0, v230, 0, 0))
    {
      goto LABEL_238;
    }

    goto LABEL_178;
  }

  v57 = v242;
  if ((*(*(v257 + 56) + 32) & 4) != 0)
  {
    v108 = *(v257 + 400);
    v107 = (v108 >> 9) & 0x3FFF;
  }

  else
  {
    v107 = *(*(v257 + 376) + 8 * WORD4(v257) + 2);
    v108 = *(v257 + 400);
  }

  v252 = v107;
  v116 = btree_node_val_len(v257, WORD4(v257));
  v117 = 0;
  if (v116 == 65534)
  {
    v118 = 0;
  }

  else
  {
    v118 = v116;
  }

  if ((v108 & 0x40) != 0)
  {
    v119 = v251;
  }

  else
  {
    v119 = (v251 + 7) & 0x1FFF8;
  }

  if ((v108 & 0x40) != 0)
  {
    v120 = v107;
  }

  else
  {
    v120 = (v107 + 7) & 0x1FFF8;
  }

  if (v119 > v120)
  {
    if ((v108 & 0x40) != 0)
    {
      v121 = v251;
    }

    else
    {
      v121 = (v251 + 7) & 0xFFF8;
    }

    if ((v108 & 0x40) != 0)
    {
      v122 = v107;
    }

    else
    {
      v122 = (v107 + 7) & 0xFFF8;
    }

    v117 = v121 - v122;
  }

  v123 = v250;
  if ((v108 & 0x40) != 0)
  {
    v124 = v250;
  }

  else
  {
    v124 = (v250 + 7) & 0x1FFF8;
  }

  if ((v108 & 0x40) != 0)
  {
    v125 = v118;
  }

  else
  {
    v125 = (v118 + 7) & 0x1FFF8;
  }

  if (v124 <= v125)
  {
    v126 = 0;
  }

  else
  {
    if ((v108 & 0x40) == 0)
    {
      v123 = (v250 + 7) & 0xFFF8;
      LOWORD(v118) = (v118 + 7) & 0xFFF8;
    }

    v126 = v123 - v118;
  }

  v47 = v234;
  v59 = v241;
  if (!(v117 | v126) || sub_100038410(v106, 0, 0, 0, v117, v126, 0))
  {
    goto LABEL_236;
  }

LABEL_238:
  v127 = v251;
  v128 = sub_100038618(a1, v259, WORD4(v259), v231, (WORD4(v258) + ((BYTE10(v258) & 1) == 0)), a3, v251, v228, &v249 + 2, &v249, v232, a2, a7, &v256);
  if (v128)
  {
    v20 = v128;
    if (!a1[1])
    {
      v225 = *(*(*a1 + 392) + 384) + 212;
    }

    log_err("%s:%d: %s bt_shift_or_split failed with error: %d\n", v129, v130, v131, v132, v133, v134, v135, "bt_insert");
    goto LABEL_44;
  }

  v136 = v256;
  v57 = v242;
  if (!v256)
  {
    goto LABEL_178;
  }

  v137 = v258;
  v234 = v258;
  if (v259)
  {
    if ((v246 & (v237 != v257)) == 1)
    {
      sub_1000A61EC();
    }

    ++WORD4(v259);
    if (v258)
    {
      if (v258 == a1 && !v245 || v47 == v258)
      {
        v138 = v237;
      }

      else
      {
        v138 = v237;
        if (v258 != v237)
        {
          v139 = v258;
          v231 = v256;
          obj_unlock(v258, 2u);
          obj_release(v139);
          v136 = v231;
          goto LABEL_247;
        }
      }

      v238 = v138;
      v243 = v138;
      v240 = v138;
      v232 = v258;
    }

    else
    {
LABEL_247:
      v232 = 0;
      v238 = v237;
      v243 = v237;
      v240 = v237;
    }

LABEL_258:
    if (v47 == v259 && v47 != 0)
    {
      v57 = WORD4(v259);
    }

    v242 = v57;
    *&v258 = v136;
    v256 = 0;
    v144 = v127;
    v67 = sub_1000382F8(v136, a3, v127, &v258 + 4, &v258 + 10);
    if (v67)
    {
      goto LABEL_315;
    }

    v145 = v257;
    obj_unlock(v257, 2u);
    obj_release(v145);
    *&v257 = 0;
    v67 = btree_node_child_val(v258, WORD4(v258), v16);
    if (v67)
    {
      goto LABEL_315;
    }

    v67 = btree_node_get(a1, v16, a2, 3u, *(*(v258 + 56) + 34) - 1, a7, &v257);
    if (v67)
    {
      goto LABEL_315;
    }

    v149 = v257;
    if ((a1[50] & 0x10) != 0 && *(v257 + 112) != *v16)
    {
      sub_10003833C(v258, WORD4(v258), (v257 + 112), a7, v146, v147, v148);
      v149 = v257;
    }

    if ((*(*(v149 + 56) + 32) & 2) != 0)
    {
      v150 = sub_100037408(v149, a3, v144, &v257 + 4, (&v257 | 0xA));
    }

    else
    {
      v150 = sub_1000382F8(v149, a3, v144, &v257 + 4, (&v257 | 0xA));
    }

    v20 = v150;
    if (v150)
    {
      goto LABEL_44;
    }

    if (v47 == v234)
    {
      v153 = WORD4(v258);
      v57 = v242;
      v154 = v236;
      if (v47 == a1 && !WORD4(v258))
      {
        v236 = v258;
        v235 = v258;
        v255 = v258;
        v237 = v258;
        v238 = v258;
        v239 = v258;
        v243 = v258;
        v240 = v258;
        v59 = v241;
        goto LABEL_178;
      }

      v59 = v241;
      if (WORD4(v258))
      {
        v155 = v257;
        v152 = v232;
        if (v236 != v257)
        {
          sub_1000A6218();
        }

        v156 = v257;
        v47 = v258;
        v255 = v257;
        v157 = v257;
        v238 = v257;
        v151 = v257;
        v240 = v236;
      }

      else
      {
        v47 = v259;
        v155 = v258;
        v154 = v258;
        v156 = v258;
        v153 = WORD4(v259);
        v255 = v258;
        v157 = v258;
        v238 = v258;
        v151 = v258;
        v240 = v258;
        v152 = v232;
      }
    }

    else
    {
      if ((v246 & 1) == 0)
      {
        v153 = v242;
        v151 = v243;
        v59 = v241;
        v152 = v232;
        goto LABEL_298;
      }

      v151 = v243;
      v152 = v232;
      if (WORD4(v258) | WORD4(v257))
      {
        if (v47)
        {
          v59 = v241;
          if (v47 != v259 && v47 != v258 && (v47 != a1 || v245))
          {
            obj_unlock(v47, 2u);
            obj_release(v47);
            v236 = v255;
            v239 = v255;
            v235 = v255;
          }
        }

        else
        {
          v59 = v241;
        }

        if (v235)
        {
          if (v235 != v259 && v235 != v258 && (v235 != a1 || v245))
          {
            v158 = v235;
            obj_unlock(v235, 2u);
            v159 = v158;
            v59 = v241;
            obj_release(v159);
          }

          v239 = 0;
          v236 = 0;
          v235 = 0;
          v237 = 0;
          v238 = 0;
          v151 = 0;
          v240 = 0;
          v47 = 0;
          v153 = 0;
          v255 = 0;
        }

        else
        {
          v235 = 0;
          v237 = 0;
          v238 = 0;
          v151 = 0;
          v240 = 0;
          v47 = 0;
          v153 = 0;
        }

LABEL_298:
        if (WORD4(v257))
        {
LABEL_299:
          v246 = 0;
          v155 = v239;
          v154 = v236;
          v156 = v235;
          v157 = v237;
        }

        else if (WORD4(v258) || (BYTE10(v258) & 1) != 0)
        {
          if ((BYTE10(v257) & 1) != 0 || (*(*(v257 + 56) + 32) & 2) != 0)
          {
            goto LABEL_299;
          }

          v246 = 1;
          v47 = v258;
          v155 = v257;
          v154 = v257;
          v156 = v257;
          v255 = v257;
          v157 = v257;
          v238 = v257;
          v151 = v257;
          v240 = v257;
          v153 = WORD4(v258);
        }

        else
        {
          v47 = v259;
          v155 = v258;
          v246 = 1;
          v154 = v258;
          v156 = v258;
          v153 = WORD4(v259);
          v255 = v258;
          v157 = v258;
          v238 = v258;
          v151 = v258;
          v240 = v258;
        }
      }

      else
      {
        v246 = 1;
        v153 = v242;
        v155 = v239;
        v154 = v236;
        v156 = v235;
        v157 = v237;
        v59 = v241;
      }
    }

    v239 = v155;
    if (v152)
    {
      if (v152 == a1 && !v245 || v152 == v47)
      {
        v160 = v239;
      }

      else
      {
        v160 = v239;
        if (v152 != v239)
        {
          v161 = v239;
          obj_unlock(v152, 2u);
          obj_release(v152);
          v236 = v161;
          v235 = v161;
          v237 = v161;
          v238 = v161;
          v243 = v161;
          v240 = v161;
          v59 = v241;
LABEL_313:
          v57 = v153;
          goto LABEL_178;
        }
      }

      v236 = v160;
      v235 = v160;
      v237 = v160;
      v238 = v160;
      v243 = v160;
      v240 = v160;
      goto LABEL_313;
    }

    v243 = v151;
    v237 = v157;
    v235 = v156;
    v236 = v154;
    goto LABEL_313;
  }

  *&v259 = v258;
  if (*(v256[7] + 36))
  {
    v140 = v256;
    v67 = btree_node_key_ptr(v256, 0, &v254, &v252);
    if (v67)
    {
      goto LABEL_315;
    }

    v137 = v259;
    v141 = v254;
    v142 = v252;
  }

  else
  {
    v140 = v256;
    v141 = a3;
    v142 = v127;
  }

  v20 = sub_1000382F8(v137, v141, v142, &v259 + 4, &v259 + 10);
  if (!v20)
  {
    v232 = 0;
    v57 = v242;
    v136 = v140;
    goto LABEL_258;
  }

LABEL_44:
  v48 = v259;
  v49 = v255;
  if (v259 && v259 != v47 && v259 != v255)
  {
    obj_unlock(v259, 2u);
    obj_release(v48);
  }

  v50 = v258;
  if (v258 && v258 != v47 && v258 != v49)
  {
    obj_unlock(v258, 2u);
    obj_release(v50);
  }

  v51 = v257;
  if (v257 && v257 != v47 && v257 != v49)
  {
    obj_unlock(v257, 2u);
    obj_release(v51);
  }

  if (v47)
  {
    obj_unlock(v47, 2u);
    obj_release(v47);
    v49 = v255;
  }

  if (v49)
  {
    obj_unlock(v49, 2u);
    obj_release(v49);
  }

  v52 = v256;
  if (v256)
  {
    obj_unlock(v256, 2u);
    obj_release(v52);
  }

  v53 = v245;
  if (v259 == a1)
  {
    v53 = 1;
  }

  if (v49 != a1 && (v53 & 1) == 0 && v258 != a1 && v257 != a1 && v47 != a1)
  {
    obj_unlock(a1, 2u);
    obj_release(a1);
  }

  if (!obj_refcount(a1))
  {
    sub_1000A629C();
  }

  return v20;
}

uint64_t sub_100037408(uint64_t a1, unint64_t *a2, uint64_t a3, _WORD *a4, BOOL *a5)
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

uint64_t sub_1000375C8(uint64_t a1, unsigned int a2, const void *a3, unsigned int a4, const void *a5, unsigned int a6, uint64_t a7)
{
  v7 = a7;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v110 = 0;
  v109 = 0;
  v108 = 0;
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

  v107 = *(v13 + 32);
  if (*(v13 + 36) <= a2)
  {
    v98 = 0;
    v23 = 0;
    v24 = 0;
    v104 = 0;
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
      v24 = 0;
    }

    else
    {
      v34 = v18;
      v35 = btree_node_val_len(a1, a2);
      v18 = v34;
      v24 = v35;
    }

    v104 = v23 != 0;
    if (v23)
    {
      v36 = v18;
      v37 = sub_10003511C(a1, v18, v23);
      v18 = v36;
      if (v37)
      {
        return v37;
      }
    }

    if (v24)
    {
      v100 = v23;
      v38 = v18;
      v37 = sub_100035248(a1, v20, v24);
      if (v37)
      {
        return v37;
      }

      v98 = 1;
      v7 = a7;
      v8 = a5;
      v15 = v22;
      v10 = a3;
      v18 = v38;
      v23 = v100;
      v9 = a4;
    }

    else
    {
      v98 = 0;
      v7 = a7;
      v8 = a5;
      v15 = v22;
      v10 = a3;
      v9 = a4;
    }
  }

  v99 = v18;
  HIWORD(v110) = v18;
  LOWORD(v110) = v20;
  v25 = v9 - v23;
  if (!v10)
  {
    v25 = 0;
  }

  v26 = v25;
  v27 = v15 - v24;
  if (!v8)
  {
    v27 = 0;
  }

  v28 = v27;
  if (!(v25 | v27))
  {
LABEL_145:
    v62 = a6;
    goto LABEL_146;
  }

  if (v10)
  {
    if ((*(a1 + 400) & 0x40) != 0)
    {
      v29 = v9;
    }

    else
    {
      v29 = (v9 + 7) & 0xFFF8;
    }

    v30 = (v23 + 7) & 0xFFF8;
    if ((*(a1 + 400) & 0x40) != 0)
    {
      v30 = v23;
    }

    v31 = (v29 - v30);
  }

  else
  {
    v31 = 0;
  }

  v101 = v28;
  v103 = v26;
  v97 = v7;
  if (v8)
  {
    if ((*(a1 + 400) & 0x40) != 0)
    {
      v40 = v15;
    }

    else
    {
      v40 = (v15 + 7) & 0xFFF8;
    }

    v41 = (v24 + 7) & 0xFFF8;
    if ((*(a1 + 400) & 0x40) != 0)
    {
      v41 = v24;
    }

    v42 = (v40 - v41);
  }

  else
  {
    v42 = 0;
  }

  if (v42 + v31 > sub_1000404E4(a1))
  {
    return 28;
  }

  v43 = 0;
  v108 = -1;
  v109 = -1;
  if (!v9)
  {
    goto LABEL_51;
  }

  v28 = v101;
  v26 = v103;
  if (v103)
  {
    sub_100040564(a1, 1, v9, &v109, &v110 + 1);
    if (SHIWORD(v110) == -1)
    {
      v26 = v103;
      if (v103 < 0)
      {
        v43 = 0;
        HIWORD(v110) = v99;
        v109 = -1;
      }

      else if ((*(a1 + 400) & 0x40) != 0)
      {
        v43 = v9;
      }

      else
      {
        v43 = (v9 + 7) & 0xFFF8;
      }

      goto LABEL_52;
    }

    v43 = 0;
LABEL_51:
    v26 = v103;
LABEL_52:
    v28 = v101;
  }

  v95 = v8;
  if (!v15 || !v28)
  {
LABEL_68:
    v96 = v43;
    goto LABEL_69;
  }

  sub_100040564(a1, 2, v15, &v108, &v110);
  if (v110 != -1)
  {
    v96 = v43;
    v28 = v101;
    v26 = v103;
    goto LABEL_69;
  }

  v28 = v101;
  v26 = v103;
  if ((v101 & 0x80000000) == 0)
  {
    if ((*(a1 + 400) & 0x40) != 0)
    {
      v44 = v15;
    }

    else
    {
      v44 = (v15 + 7) & 0xFFF8;
    }

    v43 += v44;
    goto LABEL_68;
  }

  v96 = v43;
  LOWORD(v110) = v20;
  v108 = -1;
LABEL_69:
  v45 = *(*(a1 + 56) + 46);
  if (v26)
  {
    v46 = v104;
  }

  else
  {
    v46 = 0;
  }

  if (v46)
  {
    v47 = (*(a1 + 400) & 0x40) != 0 ? v23 : (v23 + 7) & 0xFFF8;
    sub_100040784(a1, 1, v99, v47);
    v28 = v101;
    v26 = v103;
    if (HIWORD(v110) != 0xFFFF && v109 == 0xFFFF && HIWORD(v110) != v99 && *(*(a1 + 56) + 48) == v99)
    {
      v109 = v99;
    }
  }

  v48 = v98;
  if (!v28)
  {
    v48 = 0;
  }

  v105 = v48;
  if (v48 == 1)
  {
    v49 = (*(a1 + 400) & 0x40) != 0 ? v24 : (v24 + 7) & 0xFFF8;
    sub_100040784(a1, 2, v20, v49);
    v28 = v101;
    v26 = v103;
    if (v110 != 0xFFFF && v108 == 0xFFFF && v110 != v20 && *(*(a1 + 56) + 52) == v20)
    {
      v108 = v20;
    }
  }

  if (v45 < v96)
  {
    v50 = *(a1 + 56);
    if ((v107 & 0x8000) == 0)
    {
      *(v50 + 32) |= 0x8000u;
    }

    if (*(v50 + 36) > a2)
    {
      v51 = *(v50 + 32);
      v52 = *(a1 + 376);
      if ((v51 & 4) != 0)
      {
        if (v46)
        {
          *(v52 + 4 * a2) = -1;
        }

        if (v105)
        {
          *(v52 + 4 * a2 + 2) = -1;
        }
      }

      else
      {
        if (v46)
        {
          *(v52 + 8 * a2) = 0xFFFF;
        }

        if (v105)
        {
          *(v52 + 8 * a2 + 4) = 0xFFFF;
        }
      }
    }

    v53 = sub_100040930(a1, 0, v97);
    if (v53)
    {
      v39 = v53;
      if (v46)
      {
        v54 = (*(a1 + 400) & 0x40) != 0 ? v9 : (v9 + 7) & 0xFFF8;
        if (sub_100040D2C(a1, 1, v54, 0xFFFF, v99))
        {
          if (!*(a1 + 8))
          {
            v85 = *(*(*a1 + 392) + 384) + 212;
          }

          log_err("%s:%d: %s unable to reclaim just-freed key space on error path: %d\n", v55, v56, v57, v58, v59, v60, v61, "btree_node_entry_update");
        }
      }

      if (v105)
      {
        v86 = (*(a1 + 400) & 0x40) != 0 ? v24 : (v24 + 7) & 0xFFF8;
        if (sub_100040D2C(a1, 2, v86, 0xFFFF, v20))
        {
          if (!*(a1 + 8))
          {
            v94 = *(*(*a1 + 392) + 384) + 212;
          }

          log_err("%s:%d: %s unable to reclaim just-freed val space on error path: %d\n", v87, v88, v89, v90, v91, v92, v93, "btree_node_entry_update");
        }
      }

      return v39;
    }

    v108 = -1;
    v109 = -1;
    v110 = -1;
    v28 = v101;
    v26 = v103;
  }

  if (v26)
  {
    v8 = v95;
    v62 = a6;
    if (HIWORD(v110) == 0xFFFF)
    {
      v63 = sub_100040E50(a1, 1, v9, &v110 + 1);
    }

    else
    {
      v63 = sub_100040D2C(a1, 1, v9, v109, HIWORD(v110));
    }

    v39 = v63;
    v28 = v101;
    v26 = v103;
    if (v63)
    {
      if (!*(a1 + 8))
      {
        v80 = *(*(*a1 + 392) + 384) + 212;
      }

LABEL_166:
      log_err("%s:%d: %s unable allocate space that should be there: %d\n", v64, v65, v66, v67, v68, v69, v70, "btree_node_entry_update");
      return v39;
    }
  }

  else
  {
    v71 = *(a1 + 376);
    v72 = (v71 + 4 * a2);
    v73 = (v71 + 8 * a2);
    if ((*(*(a1 + 56) + 32) & 4) != 0)
    {
      v74 = v72;
    }

    else
    {
      v74 = v73;
    }

    HIWORD(v110) = *v74;
    v8 = v95;
    v62 = a6;
  }

  if (v28)
  {
    v7 = v97;
    if (v15)
    {
      if (v110 == 0xFFFF)
      {
        v75 = sub_100040E50(a1, 2, v15, &v110);
      }

      else
      {
        v75 = sub_100040D2C(a1, 2, v15, v108, v110);
      }

      v39 = v75;
      v28 = v101;
      v26 = v103;
      if (v75)
      {
        if (!*(a1 + 8))
        {
          v84 = *(*(*a1 + 392) + 384) + 212;
        }

        goto LABEL_166;
      }

      LOWORD(v20) = v110;
      v7 = v97;
      goto LABEL_145;
    }

    if (v62 == 65534)
    {
      LOWORD(v20) = -2;
    }

    else
    {
      LOWORD(v20) = -1;
    }

    LOWORD(v110) = v20;
  }

  else
  {
    v76 = *(a1 + 376);
    v77 = v76 + 4 * a2 + 2;
    v78 = v76 + 8 * a2 + 4;
    if ((*(*(a1 + 56) + 32) & 4) != 0)
    {
      v79 = v77;
    }

    else
    {
      v79 = v78;
    }

    LOWORD(v20) = *v79;
    LOWORD(v110) = *v79;
    v7 = v97;
  }

LABEL_146:
  if (v62 == 65534 && v20 != 65534)
  {
    LOWORD(v20) = -2;
    LOWORD(v110) = -2;
    v28 = 1;
  }

  sub_100040824(a1, a2, v26 != 0, v28 != 0, HIWORD(v110), v9, v20, v62);
  if ((v107 & 0x8000) == 0)
  {
    *(*(a1 + 56) + 32) &= ~0x8000u;
  }

  v81 = *(a1 + 440);
  if (!*(a1 + 440) || (v82 = v9, v81 >= v9))
  {
    if (v9 >= v23 || v81 > v23)
    {
      goto LABEL_157;
    }

    v82 = 0;
  }

  *(a1 + 440) = v82;
LABEL_157:
  if (v10 && v9)
  {
    memcpy((*(a1 + 384) + HIWORD(v110)), v10, v9);
  }

  if (v8 && v15)
  {
    memcpy((*(a1 + 392) - v110), v8, v15);
  }

  obj_dirty(a1, v7, 0);
  return 0;
}

uint64_t sub_100037E98(uint64_t a1, unsigned int a2, const void *a3, unsigned int a4, const void *a5, unsigned int a6, uint64_t a7)
{
  v45 = a4;
  if (a6 == 65534)
  {
    v11 = 0;
  }

  else
  {
    v11 = a6;
  }

  v41 = v11;
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
    v41 = 0;
    goto LABEL_14;
  }

  v12 = 0;
  v13 = 0;
  v45 = 0;
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
  v44 = 0;
  v42 = 0;
  v43 = 0;
  if (!sub_100038410(a1, 1u, &v45, &v41, 0, 0, &v44))
  {
    return 28;
  }

  v42 = -1;
  v43 = -1;
  if (v13)
  {
    sub_100040564(a1, 1, v12, &v43 + 1, &v43);
  }

  if (v14)
  {
    sub_100040564(a1, 2, v11, &v42 + 1, &v42);
  }

  if (v43 == -1)
  {
    if ((*(a1 + 400) & 0x40) != 0)
    {
      v21 = v12;
    }

    else
    {
      v21 = (v12 + 7) & 0xFFF8;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v42 == -1)
  {
    if ((*(a1 + 400) & 0x40) != 0)
    {
      v23 = v11;
    }

    else
    {
      v23 = (v11 + 7) & 0xFFF8;
    }

    v21 += v23;
  }

  v24 = *(a1 + 56);
  v25 = v24[23];
  if (v44 + v21 <= v25)
  {
    if (v44)
    {
      memmove((*(a1 + 384) + v44), *(a1 + 384), v24[22]);
      bzero(*(a1 + 384), v44);
      v26 = v44;
      *(a1 + 384) += v44;
      v24 = *(a1 + 56);
      LOWORD(v25) = v24[23] - v26;
      v24[23] = v25;
      v24[21] += v26;
    }
  }

  else
  {
    v22 = sub_100040930(a1, 1, a7);
    if (v22)
    {
      return v22;
    }

    v24 = *(a1 + 56);
    v25 = v24[23];
    if (v25 < v21)
    {
      sub_1000A62F4();
    }

    LOWORD(v42) = -1;
    LOWORD(v43) = -1;
    v44 = 0;
  }

  if (!v13)
  {
LABEL_39:
    if (!v14)
    {
      goto LABEL_62;
    }

    goto LABEL_40;
  }

  v27 = v43;
  if (v43 != 0xFFFF)
  {
    v22 = sub_100040D2C(a1, 1, v12, HIWORD(v43), v43);
    if (!v22)
    {
      goto LABEL_39;
    }

LABEL_48:
    if (!*(a1 + 8))
    {
      v32 = *(*(*a1 + 392) + 384) + 212;
    }

    goto LABEL_60;
  }

  if ((*(a1 + 400) & 0x40) != 0)
  {
    v28 = v12;
  }

  else
  {
    v28 = (v12 + 7) & 0xFFF8;
  }

  if (v25 < v28)
  {
    v22 = 28;
    goto LABEL_48;
  }

  v33 = v24[22];
  v24[22] = v33 + v28;
  v24[23] = v25 - v28;
  LOWORD(v43) = v33;
  if (!v14)
  {
    goto LABEL_62;
  }

LABEL_40:
  v27 = v42;
  if (v42 != 0xFFFF)
  {
    v22 = sub_100040D2C(a1, 2, v11, HIWORD(v42), v42);
    if (!v22)
    {
      goto LABEL_62;
    }

    goto LABEL_54;
  }

  v29 = (v11 + 7) & 0x1FFF8;
  if ((*(a1 + 400) & 0x40) != 0)
  {
    v29 = v11;
  }

  v30 = *(a1 + 56);
  v31 = *(v30 + 46);
  if (v31 < v29)
  {
    v22 = 28;
LABEL_54:
    if (!*(a1 + 8))
    {
      v34 = *(*(*a1 + 392) + 384) + 212;
    }

LABEL_60:
    log_err("%s:%d: %s unable allocate space that should be there: %d\n", v15, v16, v17, v27, v18, v19, v20, "btree_node_insert_internal");
    return v22;
  }

  v35 = v31 - v29;
  v36 = *(a1 + 392) - (v35 + *(a1 + 384) + *(v30 + 44));
  *(v30 + 46) = v35;
  LOWORD(v42) = v36;
LABEL_62:
  if (!v11)
  {
    if (a6 == 65534)
    {
      v37 = -2;
    }

    else
    {
      v37 = -1;
    }

    LOWORD(v42) = v37;
  }

  v38 = *(a1 + 56);
  v39 = *(v38 + 36);
  if (v39 > a2)
  {
    sub_1000410A4(a1, a2, 1);
    v38 = *(a1 + 56);
    v39 = *(v38 + 36);
  }

  *(v38 + 36) = v39 + 1;
  sub_100040824(a1, a2, 1, 1, v43, v12, v42, a6);
  if (*(a1 + 440) && *(a1 + 440) < v12)
  {
    *(a1 + 440) = v12;
  }

  if (v13)
  {
    memcpy((*(a1 + 384) + v43), v13, v12);
  }

  if (v14)
  {
    memcpy((*(a1 + 392) - v42), v14, v11);
  }

  obj_dirty(a1, a7, 0);
  return 0;
}

uint64_t sub_1000382F8(uint64_t a1, unint64_t *a2, uint64_t a3, _WORD *a4, BOOL *a5)
{
  result = sub_100037408(a1, a2, a3, a4, a5);
  if (!result && !*a5)
  {
    if (*a4)
    {
      --*a4;
    }
  }

  return result;
}

uint64_t sub_10003833C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a3;
  v16 = 0;
  v9 = *(*(a1 + 56) + 32);
  if ((v9 & 8) == 0)
  {
LABEL_4:
    if ((v9 & 4) != 0)
    {
      v11 = (*(a1 + 400) >> 9) & 0x3FFF;
    }

    else
    {
      v11 = *(*(a1 + 376) + 8 * a2 + 2);
    }

    return sub_10003B280(a1, a2, 0, v11, v8, 8, 0, a4, sub_100041114, 0);
  }

  v10 = *(a1 + 408);
  if (*a3 > v10)
  {
    v16 = *a3 - v10;
    v8 = &v16;
    goto LABEL_4;
  }

  if (!*(a1 + 8))
  {
    v13 = *(*(*a1 + 392) + 384) + 212;
  }

  v14 = *a3;
  v15 = *(a1 + 408);
  log_err("%s:%d: %s invalid relative OID: %llu < root OID: %llu\n", a2, a3, a4, a3, a6, a7, a4, "btree_node_child_id_update");
  return 22;
}

BOOL sub_100038410(uint64_t a1, unsigned int a2, __int16 *a3, __int16 *a4, __int16 a5, __int16 a6, _WORD *a7)
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

uint64_t sub_10003859C(uint64_t a1)
{
  v1 = (*(a1 + 400) >> 9) & 0x3FFF;
  if (!v1)
  {
    LOWORD(v1) = *(a1 + 440);
    if (!v1)
    {
      v2 = *(a1 + 56);
      v3 = *(v2 + 36);
      if (v3)
      {
        v4 = 0;
        LOWORD(v1) = 0;
        v5 = *(v2 + 32);
        do
        {
          if ((v5 & 4) == 0)
          {
            v6 = *(*(a1 + 376) + 8 * v4 + 2);
            v7 = v1;
            if (v6 > v1)
            {
              v7 = *(*(a1 + 376) + 8 * v4 + 2);
            }

            if (v6 != 0xFFFF)
            {
              LOWORD(v1) = v7;
            }
          }

          ++v4;
        }

        while (v3 != v4);
      }

      else
      {
        LOWORD(v1) = 0;
      }

      *(a1 + 440) = v1;
    }
  }

  return v1;
}

uint64_t sub_100038618(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, unsigned int a5, unint64_t *a6, uint64_t a7, unsigned int a8, __int16 *a9, __int16 *a10, unsigned __int16 a11, uint64_t a12, uint64_t a13, uint64_t **a14)
{
  v377 = a6;
  v20 = a1;
  v21 = a13;
  v22 = *(a1 + 400);
  __chkstk_darwin(a1);
  v379 = &v369[-v23];
  bzero(&v369[-v23], v24);
  LODWORD(v402) = 0;
  memset(v411, 0, sizeof(v411));
  v409 = 0;
  v410 = 0;
  v407 = 0;
  v408 = 0;
  v406 = 0;
  v404 = 0;
  v405 = 0;
  if ((*(a4[7] + 32) & 4) != 0)
  {
    LODWORD(v402) = (a4[50] & 4) == 0;
  }

  *a14 = 0;
  v393 = a8;
  v375 = a14;
  if (a2 && *(*(a2 + 56) + 36) - 1 > a3)
  {
    if (btree_node_child_val(a2, (a3 + 1), v379) || btree_node_get(v20, v379, a12, 3u, *(*(a2 + 56) + 34) - 1, a13, &v410) || !v410)
    {
      v410 = 0;
      v25 = 1;
    }

    else
    {
      if ((*(v20 + 400) & 0x10) != 0 && v410[14] != *v379)
      {
        sub_10003833C(a2, (a3 + 1), v410 + 14, a13, v43, v44, v45);
      }

      v25 = 0;
    }

    a8 = v393;
  }

  else
  {
    v25 = 1;
  }

  *(v411 + 8) = *(v20 + 400);
  *(&v411[1] + 1) = a4[52];
  LODWORD(v411[0]) = 2123139;
  v26 = a4[7];
  WORD2(v411[0]) = *(v26 + 32) & 0x1A;
  WORD3(v411[0]) = *(v26 + 34);
  if (a8)
  {
    v27 = 0;
    v30 = a8;
    do
    {
      v32 = *a9++;
      v31 = v32;
      if ((a4[50] & 0x40) != 0)
      {
        v33 = *a10;
      }

      else
      {
        v31 = (v31 + 7) & 0xFFF8;
        v33 = (*a10 + 7) & 0xFFF8;
      }

      v27 += v31 + v33;
      ++a10;
      --v30;
    }

    while (v30);
    v34 = v27;
  }

  else
  {
    v34 = 0;
  }

  v35 = *(v26 + 36);
  v396 = a5;
  if (v35 <= a5)
  {
    v373 = a7;
    v376 = a3;
    v389 = 0;
    LODWORD(v397) = 0;
    v38 = 0;
    v387 = 0;
  }

  else
  {
    v36 = btree_node_key_ptr(a4, a5, &v407, &v404 + 1);
    if (v36)
    {
      return v36;
    }

    v37 = *(v20 + 8);
    if (!v37)
    {
      v37 = *(*v20 + 392);
    }

    v36 = (*(v20 + 416))(v37, v377, a7, v407, HIWORD(v404), &v405);
    if (v36)
    {
      return v36;
    }

    v376 = a3;
    v373 = a7;
    if (v405)
    {
      v389 = 0;
      LODWORD(v397) = 0;
      v38 = 0;
      v387 = 0;
      a5 = v396;
    }

    else
    {
      a5 = v396;
      if ((*(a4[7] + 32) & 2) != 0)
      {
        v119 = btree_node_val_len(a4, v396);
        if (v119 == 65534)
        {
          v120 = 0;
        }

        else
        {
          v120 = v119;
        }

        LOWORD(v404) = v120;
        if ((a4[50] & 0x40) != 0)
        {
          v121 = HIWORD(v404);
        }

        else
        {
          v121 = (HIWORD(v404) + 7) & 0xFFFFFFF8;
        }

        if ((a4[50] & 0x40) == 0)
        {
          v120 = (v120 + 7) & 0x1FFF8;
        }

        v389 = v121 + v120;
        LODWORD(v397) = 1;
        v38 = 1;
        v387 = 1;
      }

      else
      {
        v389 = 0;
        LODWORD(v397) = 0;
        v387 = 0;
        v38 = 1;
      }
    }
  }

  v390 = v20;
  v388 = a13;
  v403 = a4;
  v380 = a2;
  if (v25)
  {
    v39 = obj_flags(a4);
    v40 = *(v20 + 8);
    if (!v40)
    {
      v40 = *(*v20 + 392);
    }

    v41 = obj_subtype(a4);
    v36 = sub_10003E8A0(v40, v39 & 0xFFFFFC00, v41, v411, a13, &v410);
    if (v36)
    {
      return v36;
    }

    atomic_fetch_add_explicit((*(v20 + 392) + 32), 1uLL, memory_order_relaxed);
    obj_dirty(v20, a13, 0);
    a5 = v396;
    if ((*(v20 + 400) & 2) != 0 || *(v20 + 432) == a4[14])
    {
      v46 = a4[7];
      if (*(v46 + 36) == v396)
      {
        v47 = 0;
        v48 = v396 + ((*(v46 + 32) >> 1) & 1) - 1;
        v49 = 1;
        v25 = 1;
        goto LABEL_143;
      }
    }
  }

  v50 = a4[7];
  v51 = *(v50 + 32);
  v384 = btree_node_toc_required_capacity(a4, 0);
  if ((v51 & 4) != 0)
  {
    v52 = 2;
  }

  else
  {
    v52 = 3;
  }

  v48 = *(v50 + 36);
  if (((v48 - 1) & 0x8000) != 0)
  {
    v400 = v393;
    LODWORD(v57) = v387;
LABEL_122:
    v387 = v57;
    v47 = 0;
    v118 = v400;
LABEL_141:
    v49 = v118 == 0;
    a2 = v380;
LABEL_142:
    a5 = v396;
LABEL_143:
    if (!a2 && (v47 != 0) | v25 & 1)
    {
      v122 = v48;
      v123 = obj_flags(a4);
      v124 = v390[1];
      if (!v124)
      {
        v124 = *(*v390 + 392);
      }

      v125 = obj_subtype(a4);
      v126 = sub_10003E8A0(v124, v123 & 0xFFFFFC00, v125, v411, v21, &v409);
      if (v126)
      {
        v42 = v126;
        v399 = v25;
        v401 = 0;
        v402 = 0;
        v397 = 0;
        LODWORD(v398) = 0;
        LOWORD(v134) = 0;
        v135 = 0;
        v396 = 0;
        v400 = 0;
        v395[0] = 0;
        v136 = 0;
        v380 = 0;
        goto LABEL_149;
      }

      v138 = v390;
      atomic_fetch_add_explicit((v390[49] + 32), 1uLL, memory_order_relaxed);
      obj_dirty(v138, v21, 0);
      a5 = v396;
      LOWORD(v48) = v122;
    }

    v139 = v48;
    if (a5 >= v48)
    {
      v140 = v387;
    }

    else
    {
      v140 = 0;
    }

    v141 = a4[7];
    if (v140 != 1)
    {
      v394 = v49;
      v400 = v140;
      v153 = 0;
      v154 = 0;
      v142 = 0;
      v155 = 0;
LABEL_160:
      v156 = (*(v141 + 36) - v139);
      v396 = v155;
      v397 = v154;
      v401 = v153;
      v402 = v156;
      LODWORD(v398) = v142;
      if (v156 < 1)
      {
        HIDWORD(v395[0]) = 0;
        v167 = 0;
        v168 = v376;
        goto LABEL_171;
      }

      v157 = v410;
      v158 = sub_100041134(a4, v410, v156, v388);
      if (v158)
      {
        v42 = v158;
        v399 = v25;
        v137 = v390;
        v166 = v373;
        if (!v390[1])
        {
          v199 = *(*(*v390 + 392) + 384) + 212;
        }

        log_err("%s:%d: %s bt_move_entries %d failed: %d\n", v159, v160, v161, v162, v163, v164, v165, "bt_shift_or_split");
        v402 = 0;
LABEL_224:
        LOWORD(v134) = 0;
        v135 = 0;
        v395[0] = 0;
        v136 = 0;
LABEL_225:
        v168 = v376;
        goto LABEL_236;
      }

      v166 = v373;
      if ((v25 & 1) == 0)
      {
        v201 = btree_node_key_ptr(v157, 0, &v407, &v404 + 1);
        if (v201 || (v201 = sub_1000375C8(a2, (v376 + 1), v407, HIWORD(v404), 0, 0, v388), v201))
        {
          v42 = v201;
          v137 = v390;
          if (!v390[1])
          {
            v230 = *(*(*v390 + 392) + 384) + 212;
          }

          log_err("%s:%d: %s btree_node_key_update failed: %d\n", v202, v203, v204, v205, v206, v207, v208, "bt_shift_or_split");
          v399 = 0;
          goto LABEL_224;
        }
      }

      HIDWORD(v395[0]) = v25 ^ 1;
      if (!a2 || *(a4[7] + 36))
      {
        v167 = 0;
        v168 = v376;
LABEL_170:
        LODWORD(v154) = v397;
LABEL_171:
        v169 = v409;
        LODWORD(v395[0]) = v167;
        if (v409)
        {
          v399 = v25;
          v170 = a4[7];
          v134 = *(v170 + 36);
          v171 = a4;
          v172 = a4;
          v173 = v388;
          v174 = sub_100041134(v409, v171, -*(v170 + 36), v388);
          if (v174)
          {
            v42 = v174;
            v137 = v390;
            if (!v390[1])
            {
              v228 = *(*(*v390 + 392) + 384) + 212;
            }

            log_err("%s:%d: %s bt_move_entries %d failed: %d\n", v175, v176, v177, v178, v179, v180, v181, "bt_shift_or_split");
            LOWORD(v134) = 0;
            v135 = 0;
            v136 = 0;
            goto LABEL_199;
          }

          sub_1000415EC(v172, (*(*(v172 + 56) + 34) + 1), v173);
          if (*(v169[7] + 36))
          {
            v209 = btree_node_key_ptr(v169, 0, &v407, &v404 + 1);
            v217 = v403;
            v25 = v399;
            v183 = v394;
            if (v209)
            {
LABEL_219:
              v42 = v209;
              v137 = v390;
              v166 = v373;
              if (!v390[1])
              {
                v233 = *(*(*v390 + 392) + 384) + 212;
              }

              log_err("%s:%d: %s btree_node_insert failed: %d\n", v210, v211, v212, v213, v214, v215, v216, "bt_shift_or_split");
              v135 = 0;
              goto LABEL_235;
            }

            v218 = v407;
            v219 = HIWORD(v404);
          }

          else
          {
            v218 = v377;
            v407 = v377;
            v219 = v373;
            HIWORD(v404) = v373;
            v217 = v403;
            v25 = v399;
            v183 = v394;
          }

          v229 = v379;
          *v379 = v169[14];
          v209 = sub_10003A7E0(v217, v218, v219, v229, (*(v217 + 407) & 0x7Fu) + 8, v388, 0, 0);
          if (v209)
          {
            goto LABEL_219;
          }

          v380 = v217;
          if ((v25 & 1) == 0)
          {
            goto LABEL_305;
          }
        }

        else
        {
          LOWORD(v134) = 0;
          v183 = v394;
          if ((v25 & 1) == 0)
          {
LABEL_305:
            v136 = 0;
            goto LABEL_322;
          }
        }

        v184 = v168;
        v185 = v410;
        if (v410)
        {
          v186 = v410[7];
          if (*(v186 + 36))
          {
            v187 = btree_node_key_ptr(v410, 0, &v407, &v404 + 1);
            if (v187 || (v195 = v379, *v379 = v185[14], v187 = sub_10003A7E0(v380, v407, HIWORD(v404), v195, (*(v380 + 407) & 0x7Fu) + 8, v388, 0, 0), v187))
            {
              v42 = v187;
              v168 = v184;
              v137 = v390;
              v166 = v373;
              if (!v390[1])
              {
                v327 = *(*(*v390 + 392) + 384) + 212;
              }

              log_err("%s:%d: %s btree_node_insert failed: %d\n", v188, v189, v190, v191, v192, v193, v194, "bt_shift_or_split");
              v135 = 0;
              v136 = 0;
              v399 = 1;
              goto LABEL_236;
            }

            v136 = 1;
          }

          else
          {
            if ((*(v186 + 32) & 2) != 0)
            {
              v408 = v410;
              v47 = 1;
            }

            else
            {
              atomic_fetch_add_explicit((v390[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
              obj_delete_and_free(v185, v388);
              obj_unlock(v185, 2u);
              obj_release(v185);
            }

            v136 = 0;
            v410 = 0;
          }
        }

        else
        {
          v136 = 0;
        }

        v168 = v184;
LABEL_322:
        if (v47)
        {
          v376 = v168;
          if (v169)
          {
            v328 = v169;
          }

          else
          {
            v328 = v403;
          }

          v329 = *(v328[7] + 32);
          v399 = v25;
          if ((v329 & 2) != 0)
          {
            v135 = 0;
            v343 = v377;
            v407 = v377;
            v166 = v373;
            HIWORD(v404) = v373;
            v344 = v373;
            v330 = v408;
            v137 = v390;
          }

          else
          {
            v330 = v408;
            v331 = sub_100041134(v328, v408, 1, v388);
            v137 = v390;
            v166 = v373;
            if (v331)
            {
              v42 = v331;
              if (!v390[1])
              {
                v363 = *(*(*v390 + 392) + 384) + 212;
              }

              log_err("%s:%d: %s bt_move_entries %d failed: %d\n", v332, v333, v334, v335, v336, v337, v338, "bt_shift_or_split");
LABEL_365:
              v135 = 0;
              goto LABEL_225;
            }

            v354 = btree_node_key_ptr(v330, 0, &v407, &v404 + 1);
            if (v354)
            {
              v42 = v354;
              if (!v137[1])
              {
                v368 = *(*(*v137 + 392) + 384) + 212;
              }

              log_err("%s:%d: %s failed to get newnode minkey: %d\n", v355, v356, v357, v358, v359, v360, v361, "bt_shift_or_split");
              goto LABEL_365;
            }

            v343 = v407;
            v135 = 1;
            v344 = HIWORD(v404);
          }

          v345 = v379;
          *v379 = v330[14];
          v346 = sub_10003A7E0(v380, v343, v344, v345, (*(v380 + 407) & 0x7Fu) + 8, v388, 0, 0);
          if (v346)
          {
            v42 = v346;
            if (!v137[1])
            {
              v362 = *(*(*v137 + 392) + 384) + 212;
            }

            log_err("%s:%d: %s btree_node_insert failed: %d\n", v347, v348, v349, v350, v351, v352, v353, "bt_shift_or_split");
            goto LABEL_225;
          }

          v339 = v410;
          v410 = v330;
          v340 = v403;
          v341 = v380;
          v342 = v401;
          LODWORD(v154) = v397;
        }

        else
        {
          if (v183)
          {
            v339 = 0;
            v137 = v390;
            v340 = v403;
            v341 = v380;
            v342 = v401;
          }

          else
          {
            v339 = v410;
            v137 = v390;
            v340 = v403;
            v341 = v380;
            v342 = v401;
            if (v169)
            {
              v410 = v169;
            }

            else
            {
              v410 = 0;
            }
          }

          if ((v25 & 1) == 0)
          {
            goto LABEL_349;
          }
        }

        sub_1000416B0(v137, v341, v340);
LABEL_349:
        if (v342)
        {
          _apfs_free(v342, v154);
        }

        if (v339)
        {
          obj_unlock(v339, 2u);
          obj_release(v339);
        }

        v364 = v409;
        v365 = v410;
        if (v409 && v410 != v409)
        {
          obj_unlock(v409, 2u);
          obj_release(v364);
        }

        v42 = 0;
        *v375 = v365;
        return v42;
      }

      v168 = v376;
      v312 = sub_1000375C8(a2, v376, v377, v166, 0, 0, v388);
      if (!v312)
      {
        v167 = 1;
        goto LABEL_170;
      }

      v42 = v312;
      v399 = v25;
      v137 = v390;
      if (!v390[1])
      {
        v367 = *(*(*v390 + 392) + 384) + 212;
      }

      log_err("%s:%d: %s btree_node_key_update failed: %d\n", v313, v314, v315, v316, v317, v318, v319, "bt_shift_or_split");
      LOWORD(v134) = 0;
      v135 = 0;
LABEL_234:
      LODWORD(v395[0]) = 0;
LABEL_235:
      v136 = 0;
      goto LABEL_236;
    }

    v142 = *(v141 + 36) + ~a5;
    v143 = (*(v141 + 36) + ~a5);
    if (v143 < 1)
    {
      v394 = v49;
      v155 = 0;
      v168 = v376;
LABEL_178:
      if (*(a4[7] + 36) - 1 != a5)
      {
        sub_1000A6320();
      }

      v182 = btree_node_val_ptr(a4, a5, &v406, &v404);
      if (v182)
      {
        v42 = v182;
        v396 = v155;
        v399 = v25;
        v401 = 0;
        v402 = 0;
        v397 = 0;
        LOWORD(v134) = 0;
        v135 = 0;
        v400 = 0;
        v395[0] = 0;
        v136 = 0;
LABEL_181:
        v137 = v390;
        v166 = v373;
        LODWORD(v398) = v142;
        goto LABEL_236;
      }

      v400 = 1;
      v153 = 0;
      v154 = v404;
      if (v404 && v404 != 65534)
      {
        v196 = _apfs_malloc_typed(v404, 0xC5E0E89uLL);
        if (!v196)
        {
          v396 = v155;
          v399 = v25;
          v401 = 0;
          v402 = 0;
          v397 = 0;
          LOWORD(v134) = 0;
          v135 = 0;
          v400 = 0;
          v395[0] = 0;
          v136 = 0;
          v42 = 12;
          goto LABEL_181;
        }

        v153 = v196;
        memcpy(v196, v406, v404);
        v154 = v404;
      }

      v376 = v168;
      v197 = v388;
      sub_10003C4D0(a4, v396, v388);
      v198 = v390;
      atomic_fetch_add_explicit((v390[49] + 24), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
      obj_dirty(v198, v197, 0);
      v141 = a4[7];
      goto LABEL_160;
    }

    v144 = v410;
    v145 = sub_100041134(a4, v410, v143, v388);
    if (v145)
    {
      v42 = v145;
      v399 = v25;
      v137 = v390;
      if (!v390[1])
      {
        v200 = *(*(*v390 + 392) + 384) + 212;
      }

      log_err("%s:%d: %s bt_move_entries %d failed: %d\n", v146, v147, v148, v149, v150, v151, v152, "bt_shift_or_split");
      v401 = 0;
      v402 = 0;
      v397 = 0;
      LODWORD(v398) = 0;
      LOWORD(v134) = 0;
      v135 = 0;
      v396 = 0;
      v400 = 0;
      v395[0] = 0;
      v136 = 0;
      goto LABEL_198;
    }

    if (v25)
    {
      v394 = v49;
      v155 = 0;
      v168 = v376;
LABEL_177:
      a5 = v396;
      goto LABEL_178;
    }

    v220 = btree_node_key_ptr(v144, 0, &v407, &v404 + 1);
    if (v220)
    {
      v42 = v220;
      v168 = v376;
    }

    else
    {
      v168 = v376;
      v231 = sub_1000375C8(a2, (v376 + 1), v407, HIWORD(v404), 0, 0, v388);
      if (!v231)
      {
        v394 = v49;
        v155 = 1;
        goto LABEL_177;
      }

      v42 = v231;
    }

    v137 = v390;
    v232 = v390[1];
    v166 = v373;
    LODWORD(v398) = v142;
    if (!v232)
    {
      v234 = *(*(*v390 + 392) + 384) + 212;
    }

    log_err("%s:%d: %s btree_node_key_update failed: %d\n", v221, v222, v223, v224, v225, v226, v227, "bt_shift_or_split");
    v399 = 0;
    v401 = 0;
    v402 = 0;
    v397 = 0;
    LOWORD(v134) = 0;
    v135 = 0;
    v396 = 0;
    v400 = 0;
    HIDWORD(v395[0]) = 0;
    goto LABEL_234;
  }

  v374 = v34;
  v53 = v34 + a11;
  v372 = v38 + a5;
  v54 = (v48 - 1);
  v55 = v410;
  v392 = sub_1000404E4(v410);
  *(v395 + 4) = v55;
  v56 = btree_node_toc_required_capacity(v55, 0);
  v398 = v52;
  v391 = v56 << v52;
  v383 = sub_1000404E4(a4);
  LOWORD(v52) = 0;
  LODWORD(v395[0]) = 0;
  LODWORD(v401) = 0;
  v57 = v387;
  v378 = v387 ^ 1;
  v371 = v53;
  v400 = v393;
  v370 = v53;
  v394 = v53;
  v58 = v397;
  while (1)
  {
    v59 = v20;
    v60 = v25;
    v61 = v21;
    v385 = v48;
    v62 = v400;
    v63 = v400 - v58;
    v64 = btree_node_toc_required_capacity(a4, (v400 - v58));
    v65 = v383 + v389 + ((v384 - v64) << v398);
    v386 = (v383 + v389 + ((v384 - v64) << v398) - v394);
    if (((v65 >= v394) & v402) == 1)
    {
      v66 = *(a4[7] + 36) - v58 + v62;
      v67 = v66 >= btree_node_toc_required_capacity(v403, 0);
      a4 = v403;
      if (v67)
      {
        goto LABEL_48;
      }
    }

    else if (v65 < v394)
    {
LABEL_48:
      v21 = v61;
      v25 = v60;
      v20 = v59;
      v68 = v398;
      v69 = v395[0];
      goto LABEL_57;
    }

    v21 = v61;
    v25 = v60;
    if ((v60 & 1) == 0)
    {
      goto LABEL_140;
    }

    v20 = v59;
    if ((*(v59 + 400) & 2) != 0 || *(v59 + 432) == a4[14])
    {
      v68 = v398;
      if ((*(a4[7] + 32) & 2) != 0)
      {
        goto LABEL_140;
      }

      if (!v54)
      {
        goto LABEL_140;
      }

      v69 = v395[0];
      if ((LOWORD(v395[0]) + *(*(*(v395 + 4) + 56) + 36)) > 1u)
      {
        goto LABEL_140;
      }

      v70 = btree_node_toc_required_capacity(*(v395 + 4), SLOWORD(v395[0]));
      v71 = v392 + v391 + v52 - (v70 << v68);
      if (v386 >= (v71 + ((v71 >> 29) & 3)) >> 2)
      {
        goto LABEL_140;
      }
    }

    else
    {
      v68 = v398;
      if (v402)
      {
        if (!v54)
        {
          goto LABEL_140;
        }

        v90 = v63 + *(a4[7] + 36);
        v69 = v395[0];
        v57 = v387;
        if (v90 <= (LOWORD(v395[0]) + *(*(*(v395 + 4) + 56) + 36)))
        {
          goto LABEL_140;
        }
      }

      else
      {
        v69 = v395[0];
        v117 = btree_node_toc_required_capacity(*(v395 + 4), SLOWORD(v395[0]));
        if (!v54)
        {
          goto LABEL_140;
        }

        v57 = v387;
        if (v386 >= (v392 + v391 + v52 - (v117 << v68)))
        {
          goto LABEL_140;
        }
      }
    }

LABEL_57:
    LODWORD(v397) = v58;
    v399 = v25;
    v72 = v54;
    v73 = a4[7];
    v74 = *(v73 + 32);
    if ((v74 & 2) == 0 || v378 + v54 != v396)
    {
      goto LABEL_82;
    }

    v381 = *(v73 + 32);
    v382 = v73;
    v75 = v21;
    v76 = v393;
    v77 = (v69 + v393);
    v78 = *(v395 + 4);
    v79 = btree_node_toc_required_capacity(*(v395 + 4), v77);
    v80 = (v79 << v68) - v391;
    v81 = v374 + v401 + ((v79 << v68) - v391);
    if (((v81 <= v392) & v402) == 1)
    {
      v82 = v76 + v69 + *(*(v78 + 56) + 36);
      v67 = v82 >= btree_node_toc_required_capacity(v78, 0);
      v20 = v390;
      if (v67)
      {
        goto LABEL_62;
      }
    }

    else if (v81 > v392)
    {
LABEL_62:
      v21 = v75;
      if ((v399 & 1) == 0)
      {
        a4 = v403;
        v83 = obj_flags(v403);
        v84 = *(v395 + 4);
        obj_unlock(*(v395 + 4), 2u);
        obj_release(v84);
        v410 = 0;
        v85 = *(v20 + 8);
        v86 = v387;
        if (!v85)
        {
          v85 = *(*v20 + 392);
        }

        v87 = obj_subtype(a4);
        v36 = sub_10003E8A0(v85, v83 & 0xFFFFFC00, v87, v411, v75, &v410);
        v58 = v397;
        if (v36)
        {
          return v36;
        }

        v25 = 1;
        atomic_fetch_add_explicit((*(v20 + 392) + 32), 1uLL, memory_order_relaxed);
        obj_dirty(v20, v21, 0);
        v88 = v410;
        v89 = btree_node_toc_required_capacity(v410, 0);
        v391 = v89 << v398;
        *(v395 + 4) = v88;
        v392 = sub_1000404E4(v88);
        goto LABEL_110;
      }

      if (v387)
      {
        LOWORD(v54) = v385 - 2;
      }

      a4 = v403;
      if (v386 < 0)
      {
        LOWORD(v48) = v54 + 1;
        v49 = v400 == 0;
        v47 = 2843;
        goto LABEL_300;
      }

      v25 = 1;
LABEL_140:
      v118 = v400;
      v47 = 0;
      LOWORD(v48) = v54 + 1;
      goto LABEL_141;
    }

    v400 -= v393;
    v21 = v75;
    v73 = v382;
    if ((v399 & 1) == 0)
    {
      v25 = 0;
      if (v387)
      {
        LOWORD(v54) = v385 - 2;
      }

LABEL_139:
      a4 = v403;
      goto LABEL_140;
    }

    if ((*(v20 + 400) & 2) != 0 || *(v20 + 432) == v403[14])
    {
LABEL_123:
      if (v387)
      {
        LOWORD(v54) = v385 - 2;
      }

      v25 = 1;
      goto LABEL_139;
    }

    v72 = v54;
    v394 -= v370;
    LODWORD(v401) = v401 + v370;
    if (v402)
    {
      if (!v54 || (v400 - v397 + *(v382 + 36)) <= (v77 + *(*(*(v395 + 4) + 56) + 36)))
      {
        goto LABEL_123;
      }
    }

    else if (!v54 || v386 >= (v392 - v401 - v80))
    {
      goto LABEL_123;
    }

    v69 = v77;
    a4 = v403;
    v74 = v381;
    v57 = v387;
LABEL_82:
    LODWORD(v395[0]) = v69;
    if ((v74 & 4) != 0)
    {
      v92 = a4;
      v93 = a4[50];
      v91 = (v93 >> 9) & 0x3FFF;
    }

    else
    {
      v91 = *(a4[47] + 8 * v54 + 2);
      v92 = a4;
      v93 = a4[50];
    }

    HIWORD(v404) = v91;
    v94 = btree_node_val_len(v92, v54);
    v95 = v94 == 65534 ? 0 : v94;
    LOWORD(v404) = v95;
    v96 = (v91 + 7) & 0x1FFF8;
    if ((v93 & 0x40) != 0)
    {
      v96 = v91;
    }

    else
    {
      v95 = (v95 + 7) & 0x1FFF8;
    }

    v97 = v54 == v396 ? v57 : 0;
    if ((v97 & 1) == 0)
    {
      break;
    }

    v54 = v396;
    v20 = v390;
    a4 = v403;
    v25 = v399;
    v58 = v397;
LABEL_116:
    v48 = v54;
    LODWORD(v52) = -v401;
    v116 = v54 - 1;
    v54 = (v54 - 1);
    if (v116 < 0)
    {
      goto LABEL_122;
    }
  }

  v381 = v74;
  v382 = v73;
  v98 = v21;
  v99 = v96 + v95;
  if (v400 != 0 && v372 > v72)
  {
    v100 = v393;
  }

  else
  {
    v100 = 0;
  }

  if (v400 != 0 && v372 > v72)
  {
    v101 = v371;
  }

  else
  {
    v101 = 0;
  }

  v102 = v395[0];
  v103 = (LOWORD(v395[0]) + v100 + 1);
  v104 = *(v395 + 4);
  v105 = btree_node_toc_required_capacity(*(v395 + 4), v103);
  v106 = v101 + v401 + v99 + ((v105 << v68) - v391);
  if (((v106 <= v392) & v402) == 1)
  {
    v107 = v100 + v102 + *(*(v104 + 56) + 36) + 1;
    v67 = v107 >= btree_node_toc_required_capacity(v104, 0);
    v21 = v388;
    v108 = v394;
    if (!v67)
    {
      goto LABEL_112;
    }
  }

  else
  {
    v108 = v394;
    v21 = v98;
    if (v106 <= v392)
    {
LABEL_112:
      LODWORD(v401) = v401 + v101 + v99;
      v400 -= v100;
      if (v100)
      {
        v115 = v101;
      }

      else
      {
        v115 = 0;
      }

      v394 = v108 - v115;
      v58 = v397 + 1;
      v389 += v99;
      LODWORD(v395[0]) = v103;
      v20 = v390;
      a4 = v403;
      v25 = v399;
      goto LABEL_116;
    }
  }

  if ((v399 & 1) == 0)
  {
    v86 = v57;
    a4 = v403;
    v109 = obj_flags(v403);
    v110 = *(v395 + 4);
    obj_unlock(*(v395 + 4), 2u);
    obj_release(v110);
    v410 = 0;
    v20 = v390;
    v111 = v390[1];
    if (!v111)
    {
      v111 = *(*v390 + 392);
    }

    v112 = obj_subtype(a4);
    v36 = sub_10003E8A0(v111, v109 & 0xFFFFFC00, v112, v411, v21, &v410);
    v58 = v397;
    if (v36)
    {
      return v36;
    }

    atomic_fetch_add_explicit((*(v20 + 392) + 32), 1uLL, memory_order_relaxed);
    obj_dirty(v20, v21, 0);
    v113 = v410;
    v114 = btree_node_toc_required_capacity(v410, 0);
    v391 = v114 << v398;
    *(v395 + 4) = v113;
    v392 = sub_1000404E4(v113);
    v25 = 1;
LABEL_110:
    v54 = v385;
    v57 = v86;
    goto LABEL_116;
  }

  a4 = v403;
  if ((v386 & 0x80000000) == 0)
  {
    v25 = 1;
    LOWORD(v48) = v385;
    goto LABEL_122;
  }

  v49 = v400 == 0;
  LOWORD(v48) = v385;
  v47 = 2917;
  if (v385 > 1)
  {
LABEL_300:
    a2 = v380;
    v320 = *(v395 + 4);
    goto LABEL_301;
  }

  a2 = v380;
  v320 = *(v395 + 4);
  if ((v381 & 2) == 0)
  {
    v47 = 0;
    v25 = 1;
    goto LABEL_142;
  }

LABEL_301:
  if (*(v382 + 36) == v48 && v320)
  {
    v25 = 0;
    v408 = v320;
    v410 = 0;
    goto LABEL_142;
  }

  v321 = v49;
  v322 = v48;
  v323 = obj_flags(a4);
  v324 = v390[1];
  if (!v324)
  {
    v324 = *(*v390 + 392);
  }

  v325 = obj_subtype(a4);
  v326 = sub_10003E8A0(v324, v323 & 0xFFFFFC00, v325, v411, v21, &v408);
  if (!v326)
  {
    v366 = v390;
    atomic_fetch_add_explicit((v390[49] + 32), 1uLL, memory_order_relaxed);
    obj_dirty(v366, v21, 0);
    v25 = 1;
    a2 = v380;
    a5 = v396;
    LOWORD(v48) = v322;
    v49 = v321;
    goto LABEL_143;
  }

  v42 = v326;
  v401 = 0;
  v402 = 0;
  v397 = 0;
  LODWORD(v398) = 0;
  LOWORD(v134) = 0;
  v135 = 0;
  v396 = 0;
  v400 = 0;
  v395[0] = 0;
  v136 = 0;
  v399 = 1;
LABEL_149:
  v137 = v390;
LABEL_198:
  v168 = v376;
LABEL_199:
  v166 = v373;
LABEL_236:
  if (!v137[1])
  {
    v235 = *(*(*v137 + 392) + 384) + 212;
  }

  log_err("%s:%d: %s reverting on error: %d\n", v127, v128, v129, v130, v131, v132, v133, "bt_shift_or_split");
  if (v136)
  {
    sub_10003C4D0(v380, (v168 + 1), v388);
  }

  v236 = v403;
  if (v135)
  {
    v42 = sub_100041134(v403, v408, -1, v388);
    if (v42)
    {
      if (!v137[1])
      {
        v244 = *(*(*v137 + 392) + 384) + 212;
      }

      log_err("%s:%d: %s bt_move_entries %d failed: %d\n", v237, v238, v239, v240, v241, v242, v243, "bt_shift_or_split");
    }
  }

  v245 = v168;
  v246 = v380;
  if (v134 >= 1)
  {
    v247 = v388;
    sub_1000415EC(v236, (*(v236[7] + 34) - 1), v388);
    if (sub_100041134(v409, v236, v134, v247))
    {
      if (!v137[1])
      {
        v255 = *(*(*v137 + 392) + 384) + 212;
      }

      v236 = v403;
      log_err("%s:%d: %s bt_move_entries() failed (%d) while trying to revert changes due to error: %d\n", v248, v249, v250, v251, v252, v253, v254, "bt_shift_or_split");
      v246 = 0;
    }

    else
    {
      v246 = 0;
      v236 = v403;
    }
  }

  if (v402 >= 1)
  {
    v256 = v410;
    if (sub_100041134(v236, v410, -v402, v388))
    {
      if (!v137[1])
      {
        v264 = *(*(*v137 + 392) + 384) + 212;
      }

      log_err("%s:%d: %s bt_move_entries() failed (%d) while trying to revert changes due to error: %d\n", v257, v258, v259, v260, v261, v262, v263, "bt_shift_or_split");
    }

    if (!(v399 & 1 | ((v395[0] & 0x100000000) == 0)) && (btree_node_key_ptr(v256, 0, &v407, &v404 + 1) || sub_1000375C8(v246, (v245 + 1), v407, HIWORD(v404), 0, 0, v388)))
    {
      if (!v137[1])
      {
        v272 = *(*(*v137 + 392) + 384) + 212;
      }

      log_err("%s:%d: %s btree_node_key_update() failed (%d) while trying to revert changes due to error: %d\n", v265, v266, v267, v268, v269, v270, v271, "bt_shift_or_split");
    }

    if (LODWORD(v395[0]) && (btree_node_key_ptr(v236, 0, &v407, &v404 + 1) || sub_1000375C8(v246, v245, v407, HIWORD(v404), 0, 0, v388)))
    {
      if (!v137[1])
      {
        v280 = *(*(*v137 + 392) + 384) + 212;
      }

      log_err("%s:%d: %s btree_node_key_update() failed (%d) while trying to revert changes due to error: %d\n", v273, v274, v275, v276, v277, v278, v279, "bt_shift_or_split");
    }
  }

  v281 = v401;
  if (v400)
  {
    if (sub_10003A7E0(v236, v377, v166, v401, v397, v388, 0, 0))
    {
      if (!v137[1])
      {
        v289 = *(*(*v137 + 392) + 384) + 212;
      }

      log_err("%s:%d: %s btree_node_insert() failed (%d) while trying to revert changes due to error: %d\n", v282, v283, v284, v285, v286, v287, v288, "bt_shift_or_split");
    }

    if (v281)
    {
      _apfs_free(v281, v397);
    }
  }

  v290 = v388;
  if (v398 >= 1)
  {
    v291 = v410;
    if (sub_100041134(v403, v410, -v398, v388))
    {
      if (!v137[1])
      {
        v299 = *(*(*v137 + 392) + 384) + 212;
      }

      log_err("%s:%d: %s bt_move_entries() failed (%d) while trying to revert changes due to error: %d\n", v292, v293, v294, v295, v296, v297, v298, "bt_shift_or_split");
    }

    if (!(v399 & 1 | ((v396 & 1) == 0)) && (btree_node_key_ptr(v291, 0, &v407, &v404 + 1) || sub_1000375C8(v246, (v245 + 1), v407, HIWORD(v404), 0, 0, v290)))
    {
      if (!v137[1])
      {
        v307 = *(*(*v137 + 392) + 384) + 212;
      }

      log_err("%s:%d: %s btree_node_key_update() failed (%d) while trying to revert changes due to error: %d\n", v300, v301, v302, v303, v304, v305, v306, "bt_shift_or_split");
    }
  }

  v308 = v410;
  if (v410)
  {
    if (!*(v410[7] + 36))
    {
      atomic_fetch_add_explicit((v137[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
      obj_delete_and_free(v308, v290);
    }

    obj_unlock(v308, 2u);
    obj_release(v308);
  }

  v309 = v408;
  if (v408)
  {
    atomic_fetch_add_explicit((v137[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
    obj_delete_and_free(v309, v290);
    obj_unlock(v309, 2u);
    obj_release(v309);
  }

  v310 = v409;
  if (v409)
  {
    atomic_fetch_add_explicit((v137[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
    obj_delete_and_free(v310, v290);
    obj_unlock(v310, 2u);
    obj_release(v310);
  }

  return v42;
}

uint64_t sub_10003A7E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t *a4, unsigned int a5, uint64_t a6, unsigned __int16 *a7, _BYTE *a8)
{
  v16 = *(a1 + 400);
  __chkstk_darwin(a1);
  v18 = &v31[-v17];
  bzero(&v31[-v17], v19);
  v33 = 0;
  v32 = 0;
  result = sub_100037408(a1, a2, a3, &v33, &v32);
  if (!result)
  {
    if (a8)
    {
      *a8 = v32;
    }

    if (a7)
    {
      *a7 = v33;
    }

    if ((*(*(a1 + 56) + 32) & 0xA) != 8)
    {
      goto LABEL_10;
    }

    if ((*(a1 + 407) & 0x7F) + 8 != a5)
    {
      sub_1000A634C();
    }

    v28 = *(a1 + 408);
    if (*a4 > v28)
    {
      *v18 = *a4 - v28;
      a4 = v18;
LABEL_10:
      if (v32)
      {
        return sub_1000375C8(a1, v33, a2, a3, a4, a5, a6);
      }

      else
      {
        return sub_100037E98(a1, v33, a2, a3, a4, a5, a6);
      }
    }

    if (!*(a1 + 8))
    {
      v29 = *(*(*a1 + 392) + 384) + 212;
    }

    v30 = *a4;
    log_err("%s:%d: %s invalid relative OID: %llu < root OID: %llu\n", v21, v22, v23, v24, v25, v26, v27, "btree_node_insert");
    return 22;
  }

  return result;
}

uint64_t bt_update_with_hint(uint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4, const void *a5, unsigned int a6, uint64_t a7, uint64_t *a8)
{
  v16 = a1[50];
  __chkstk_darwin(a1);
  v18 = (&v51 - v17);
  bzero(&v51 - v17, v19);
  v60 = 0;
  v59 = 0;
  if (!obj_refcount(a1))
  {
    sub_1000A63A4();
  }

  if (!a1[52])
  {
    return 22;
  }

  v20 = btree_entry_size_check(a1, a4, a6);
  if (v20)
  {
    return v20;
  }

  v20 = obj_modify(a1, (*(a1 + 100) >> 3) & 2, a7, v21, v22, v23, v24, v25);
  if (v20)
  {
    return v20;
  }

  v28 = a1[49];
  v29 = *(v28 + 16);
  v53 = a3;
  v30 = v29 < a4 || *(v28 + 20) < a6;
  v54 = v30;
  v61 = 0;
  v58 = 0;
  v51 = a5;
  v52 = a8;
  if (a8)
  {
    v31 = *a8;
    if (*a8)
    {
      if (a8[1] == a1 && ((v54 | ((a1[50] & 0x10) >> 4)) & 1) == 0)
      {
        *v18 = v31;
        if (v31 != obj_oid(a1) && !btree_node_get(a1, v18, a2, (a7 != 0) | (((*(a1[7] + 32) >> 3) & 1) << 6) | 6u, 0, a7, &v61))
        {
          v32 = v61;
          if ((*(v61[7] + 32) & 2) != 0 && !sub_1000382F8(v61, v53, a4, &v59, &v58) && v58)
          {
            if ((*(v32[7] + 32) & 2) == 0)
            {
              goto LABEL_61;
            }

            goto LABEL_46;
          }

          obj_unlock(v32, 2u);
          obj_release(v32);
        }
      }
    }
  }

  v26 = 2;
  obj_lock(a1, 2u);
  obj_retain(a1);
  v34 = a1 + 7;
  v33 = a1[7];
  if ((*(v33 + 32) & 2) == 0)
  {
    v35 = 0;
    v36 = 2;
    v32 = a1;
    while (1)
    {
      if (!*(v33 + 36))
      {
        v26 = v36;
        goto LABEL_41;
      }

      v37 = sub_100037408(v32, v53, a4, &v59, &v58);
      if (v37)
      {
        goto LABEL_58;
      }

      v38 = v59;
      if (!v58 && v59)
      {
        v38 = --v59;
      }

      v37 = btree_node_child_val(v32, v38, v18);
      if (v37 || (v37 = btree_node_get(a1, v18, a2, 3u, *(*v34 + 34) - 1, a7, &v60), v37))
      {
LABEL_58:
        v26 = v37;
        v61 = v32;
        goto LABEL_63;
      }

      if ((a1[50] & 0x10) != 0 && v60[14] != *v18)
      {
        sub_10003833C(v32, v38, v60 + 14, a7, v39, v40, v41);
      }

      if (v32 != a1 || !v54)
      {
        obj_unlock(v32, 2u);
        obj_release(v32);
      }

      v32 = v60;
      if (!v60)
      {
        break;
      }

      v36 = 0;
      v26 = 0;
      v34 = v60 + 7;
      v33 = v60[7];
      v35 = 1;
      if ((*(v33 + 32) & 2) != 0)
      {
        goto LABEL_41;
      }
    }

    v61 = 0;
    goto LABEL_61;
  }

  v35 = 0;
  v32 = a1;
LABEL_41:
  v61 = v32;
  if ((*(v32[7] + 32) & 2) == 0)
  {
    if ((v35 & 1) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  v26 = sub_1000382F8(v32, v53, a4, &v59, &v58);
  if (!v26)
  {
    if (!v58)
    {
LABEL_61:
      v26 = 2;
      goto LABEL_62;
    }

LABEL_46:
    v57 = 0;
    v56 = 0;
    v55 = 0;
    v42 = v59;
    v43 = btree_node_key_ptr(v32, v59, &v57, &v55);
    v45 = v51;
    v44 = v52;
    if (!v43)
    {
      v46 = v57;
      v47 = a1[1];
      if (!v47)
      {
        v47 = *(*a1 + 392);
      }

      if (!(a1[52])(v47, v57, v55, v53, a4, &v56) && v56)
      {
        panic("you can't change a key here!  (ekey %p eklen %d; key %p klen %d; n %p bt %p)\n", v46, v55, v53, a4, v32, a1);
      }
    }

    v26 = sub_1000375C8(v32, v42, v53, a4, v45, a6, a7);
    if (v26)
    {
      goto LABEL_62;
    }

    v48 = a1[49];
    v49 = *(v48 + 16);
    if (v49 < a4)
    {
      *(v48 + 16) = a4;
    }

    if (*(v48 + 20) >= a6)
    {
      if (v49 >= a4 && (a1[50] & 0x80) == 0)
      {
LABEL_72:
        if (v44)
        {
          *v44 = obj_oid(v32);
          v44[1] = a1;
        }

        goto LABEL_62;
      }
    }

    else
    {
      *(v48 + 20) = a6;
    }

    obj_dirty(a1, a7, 0);
    goto LABEL_72;
  }

LABEL_62:
  v32 = v61;
  if (v61)
  {
LABEL_63:
    obj_unlock(v32, 2u);
    obj_release(v32);
  }

  v50 = !v54;
  if (v32 == a1)
  {
    v50 = 1;
  }

  if ((v50 & 1) == 0)
  {
    obj_unlock(a1, 2u);
    obj_release(a1);
  }

  if (!obj_refcount(a1))
  {
    sub_1000A6378();
  }

  return v26;
}

uint64_t bt_update_via_callback(void *a1, uint64_t a2, unint64_t *a3, unsigned int a4, uint64_t a5, unsigned int a6, int a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a10)
{
  v18 = a1[50];
  __chkstk_darwin(a1);
  v20 = (&v40 - v19);
  bzero(&v40 - v19, v21);
  v47 = 0;
  if (!obj_refcount(a1))
  {
    sub_1000A6428();
  }

  if (!a1[52])
  {
    return 22;
  }

  v22 = btree_entry_size_check(a1, a4, a6);
  if (!v22)
  {
    obj_lock(a1, 2u);
    v28 = obj_modify(a1, (*(a1 + 100) >> 3) & 2, a8, v23, v24, v25, v26, v27);
    if (v28)
    {
      v22 = v28;
      obj_unlock(a1, 2u);
      return v22;
    }

    v44 = a3;
    v43 = a7;
    v41 = a10;
    v42 = a5;
    v40 = a9;
    v46 = 0;
    v45 = 0;
    obj_retain(a1);
    v30 = 0;
    v22 = 2;
    v31 = a1;
    while (1)
    {
      v32 = v31;
      v33 = v31[7];
      if ((*(v33 + 32) & 2) != 0)
      {
        break;
      }

      if (!*(v33 + 36))
      {
        if (v30)
        {
LABEL_28:
          v22 = 2;
        }

        goto LABEL_29;
      }

      v34 = sub_100037408(v31, v44, a4, &v46, &v45);
      if (v34)
      {
        goto LABEL_22;
      }

      v35 = v46;
      if (!v45 && v46)
      {
        v35 = --v46;
      }

      v34 = btree_node_child_val(v31, v35, v20);
      if (v34 || (v34 = btree_node_get(a1, v20, a2, 3u, *(v31[7] + 34) - 1, a8, &v47), v34))
      {
LABEL_22:
        v22 = v34;
        obj_unlock(v31, 2u);
        obj_release(v31);
        if (!obj_refcount(a1))
        {
          sub_1000A63D0();
        }

        return v22;
      }

      v31 = v47;
      if ((a1[50] & 0x10) != 0 && v47[14] != *v20)
      {
        sub_10003833C(v32, v35, v47 + 14, a8, v36, v37, v38);
      }

      obj_unlock(v32, 2u);
      obj_release(v32);
      v22 = 0;
      v30 = 1;
      if (!v31)
      {
        v22 = 2;
LABEL_33:
        if (!obj_refcount(a1))
        {
          sub_1000A63FC();
        }

        return v22;
      }
    }

    v39 = v44;
    v22 = sub_1000382F8(v31, v44, a4, &v46, &v45);
    if (!v22)
    {
      if (!v45)
      {
        goto LABEL_28;
      }

      v22 = sub_10003B280(v31, v46, v39, a4, v42, a6, v43, a8, v40, v41);
    }

LABEL_29:
    obj_unlock(v31, 2u);
    obj_release(v31);
    if (!v22)
    {
      if ((a1[50] & 0x80) != 0)
      {
        obj_dirty(a1, a8, 0);
      }

      v22 = 0;
    }

    goto LABEL_33;
  }

  return v22;
}