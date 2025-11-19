uint64_t sub_100053DE8(unsigned int *a1)
{
  v30 = 0;
  v29 = 0;
  v28 = 0;
  memset(&v27, 0, sizeof(v27));
  if (fstat(*a1, &v27))
  {
    v2 = *__error();
    v26 = *a1;
    log_err("%s:%d: Couldn't fstat dev_fd (%d), err %d dev_name = %s\n", v3, v4, v5, v6, v7, v8, v9, "dev_init_common");
  }

  else
  {
    *(a1 + 9) = apfs_userspace_io;
    device_block_size = io_get_device_block_size(*a1);
    a1[20] = device_block_size;
    a1[21] = device_block_size;
    v11 = *a1;
    v32 = 0;
    memset(&v31, 0, sizeof(v31));
    if (ioctl(v11, 0x40086419uLL, &v32))
    {
      if (fstat(v11, &v31))
      {
        v12 = __error();
        strerror(*v12);
        log_err("%s:%d: can't get block count (%s)\n", v13, v14, v15, v16, v17, v18, v19, "io_get_num_device_blocks");
        v20 = 0;
      }

      else
      {
        st_size = v31.st_size;
        v20 = st_size / io_get_device_block_size(v11);
      }
    }

    else
    {
      v20 = v32;
    }

    *(a1 + 14) = v20;
    io_get_device_features(*a1, &v30, &v29, &v28 + 1, &v28);
    v22 = v29;
    a1[22] = v30;
    a1[23] = v22;
    v23 = v28;
    a1[24] = HIDWORD(v28);
    a1[25] = v23;
    *(a1 + 32) = v27.st_mode;
    a1[26] = 0;
    v24 = a1[20] >> 4;
    a1[51] = a1[20] >> 4;
    v2 = 0;
    *(a1 + 24) = _apfs_calloc_typed(v24, 0x10uLL, 0x1000040451B5BE8uLL);
    a1[50] = 0;
  }

  return v2;
}

uint64_t dev_init(char *a1, int a2, int **a3)
{
  if (!strncmp(a1, "/dev/", 5uLL))
  {
    v6 = 5;
  }

  else
  {
    v6 = 0;
  }

  v7 = &a1[v6];
  v8 = strlen(&a1[v6]);
  *a3 = 0;
  v9 = _apfs_calloc_typed(1uLL, v8 + 216, 0xB22E4C5DuLL);
  if (v9)
  {
    v10 = v9;
    memset(&v58, 0, sizeof(v58));
    v9[17] = 0;
    if (stat(a1, &v58) || (v58.st_mode & 0xF000) != 0x4000)
    {
      v13 = device_container_path(a1, 0);
      if (v13)
      {
        v14 = v13;
        v10[2] = -1;
        v15 = open(a1, a2 & 0xFFFFFFCF | 0x10);
        v10[1] = v15;
        if (v15 < 0)
        {
          v36 = __error();
          v12 = *v36;
          strerror(*v36);
          log_err("%s:%d: failed to open volume device %s: %s\n", v37, v38, v39, v40, v41, v42, v43, "dev_init");
        }

        else
        {
          v16 = open(v14, a2 & 0xFFFFFFCF | 0x10);
          *v10 = v16;
          if ((v16 & 0x80000000) == 0)
          {
LABEL_30:
            v46 = sub_100053DE8(v10);
            if (v46)
            {
              v12 = v46;
              free(v14);
LABEL_38:
              _apfs_free(v10, v8 + 216);
              return v12;
            }

            strlcpy(v10 + 212, v7, v8 + 1);
            free(v14);
LABEL_39:
            v12 = 0;
            *a3 = v10;
            return v12;
          }

          v17 = __error();
          v12 = *v17;
          strerror(*v17);
          log_err("%s:%d: failed to open container device %s: %s\n", v18, v19, v20, v21, v22, v23, v24, "dev_init");
          close(v10[1]);
        }
      }

      else
      {
        *(v10 + 1) = -1;
        v25 = open(a1, a2);
        *v10 = v25;
        if ((v25 & 0x80000000) == 0)
        {
LABEL_29:
          v14 = 0;
          goto LABEL_30;
        }

        v26 = 30;
        while (*__error() == 16 && v26 != 0)
        {
          log_err("%s:%d: open %s hit EBUSY, attempts remaining: %u dev_name = %s\n", v27, v28, v29, v30, v31, v32, v33, "dev_init");
          sleep(1u);
          v35 = open(a1, a2);
          *v10 = v35;
          --v26;
          if ((v35 & 0x80000000) == 0)
          {
            v14 = 0;
            goto LABEL_30;
          }
        }

        v14 = 0;
        v12 = *__error();
      }
    }

    else
    {
      bzero(__str, 0x400uLL);
      bzero(v60, 0x400uLL);
      bzero(v59, 0x400uLL);
      snprintf(__str, 0x400uLL, "%s/apfs", a1);
      snprintf(v59, 0x400uLL, "%s/apfs_data", a1);
      snprintf(v60, 0x400uLL, "%s/nx", a1);
      v11 = open(__str, a2);
      v10[1] = v11;
      if (v11 < 0)
      {
        v12 = *__error();
      }

      else
      {
        v12 = 0;
      }

      v44 = open(v59, a2);
      v10[2] = v44;
      if (v44 < 0)
      {
        v12 = *__error();
      }

      v45 = open(v60, a2);
      *v10 = v45;
      if ((v10[1] & 0x80000000) == 0 && (v10[2] & 0x80000000) == 0 && (v45 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      if (!v12)
      {
        v12 = *__error();
        v47 = *v10;
        v48 = v10[1];
      }

      v49 = v10[2];
      strerror(v12);
      log_err("%s:%d: failed to open apfs/nx special devices ['%s'(%d) / '%s'(%d) / '%s'(%d)] - err %d (%s) dev_name = '%s'\n", v50, v51, v52, v53, v54, v55, v56, "dev_init");
      close(*v10);
      close(v10[1]);
      close(v10[2]);
      v14 = 0;
    }

    free(v14);
    if (v12)
    {
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  return 12;
}

uint64_t fskit_dev_init(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    return 22;
  }

  if ((*(a1 + 28) & 0x80000000) != 0)
  {
    return 22;
  }

  if (!*(a1 + 8))
  {
    return 22;
  }

  if (!*(a1 + 12))
  {
    return 22;
  }

  v4 = *a1;
  if (!*a1 || !*(a1 + 16) || *(a1 + 24) != 1)
  {
    return 22;
  }

  if (!strncmp(*a1, "/dev/", 5uLL))
  {
    v6 = 5;
  }

  else
  {
    v6 = 0;
  }

  v7 = strlen(&v4[v6]);
  *a3 = 0;
  v8 = _apfs_calloc_typed(1uLL, v7 + 216, 0x14937999uLL);
  if (!v8)
  {
    return 12;
  }

  v9 = v8;
  *(v8 + 17) = 0;
  *v8 = *(a1 + 28);
  *(v8 + 4) = -1;
  *(v8 + 32) = 0x8000;
  *(v8 + 14) = *(a1 + 8);
  *(v8 + 10) = vrev64_s32(*(a1 + 12));
  v10 = *(a1 + 24);
  *(v8 + 26) = 0;
  *(v8 + 22) = 0;
  *(v8 + 23) = v10;
  *(v8 + 12) = 1;
  *(v8 + 9) = apfs_userspace_io;
  strlcpy(v8 + 212, &v4[v6], v7 + 1);
  result = 0;
  *a3 = v9;
  return result;
}

uint64_t sub_1000544FC(int *a1, unint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v21 = sub_100054674(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v21)
  {
    v22 = a1[21];
    if ((a2 & 0x8000000000000000) == 0 && (v23 = (a2 * a1[21]) >> 64, is_mul_ok(a2, v22)) && (v24 = a2 * v22, ((a2 * v22) & 0x8000000000000000) == 0) && (v25 = (a3 * a1[21]) >> 64, is_mul_ok(a3, v22)))
    {
      v27 = a3 * v22;
      if (!a5 || (v28 = a1[1], v28 < 0))
      {
        v28 = *a1;
      }

      v29 = pread(v28, a4, a3 * v22, a2 * v22);
      v30 = v29;
      if (v29 < 0)
      {
        v31 = __error();
        v21 = *v31;
        if (v21 == 6)
        {
          v21 = 6;
        }

        else
        {
          v41 = *v31;
          log_err("%s:%d: blknum 0x%llx size %zu, error %d dev_name = %s\n", v32, v33, v34, v35, v36, v37, v38, "fd_dev_read_helper");
        }
      }

      else if (v29 == v27)
      {
        v21 = 0;
      }

      else
      {
        v21 = 5;
      }

      if (a5)
      {
        if (v30 >= 1)
        {
          v39 = *(a5 + 72);
          if (v39)
          {
            if (v8)
            {
              *(v39 + 12) = a2;
            }

            userfs_data_cryptor(a5, a4, a4, v30, v24, a1[21], 0);
          }
        }
      }
    }

    else
    {
      v40 = a1[21];
      log_err("%s:%d: blknum %lld size %zu blksize %u invalid, dev_name = %s\n", v14, v15, v16, v17, v18, v19, v20, "fd_dev_read_helper");
      return 22;
    }
  }

  return v21;
}

uint64_t sub_100054674(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 24);
  if (v11)
  {
    v12 = *(a1 + 36);
    if (v12)
    {
      v13 = *(a1 + 40);
      v14 = a3 + a2 > v13 && v13 + v12 > a2;
      if (v14)
      {
        result = sub_100054704(a1, v13, v12, v11, *(a1 + 48), a6, a7, a8);
        if (result)
        {
          return result;
        }

        *(a1 + 36) = 0;
      }
    }
  }

  v15 = *(a1 + 112);
  v14 = v15 > a2;
  v16 = v15 - a2;
  if (!v14)
  {
    sub_1000A78F4();
  }

  if (v16 < a3)
  {
    sub_1000A7920();
  }

  return 0;
}

uint64_t sub_100054704(uint64_t a1, unint64_t a2, unint64_t a3, void *__buf, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 112);
  v9 = v8 > a2;
  v10 = v8 - a2;
  if (!v9)
  {
    sub_1000A794C();
  }

  if (v10 < a3)
  {
    sub_1000A7978();
  }

  v11 = *(a1 + 84);
  if ((a2 & 0x8000000000000000) == 0 && (v12 = (a2 * *(a1 + 84)) >> 64, is_mul_ok(a2, v11)) && (v13 = a2 * v11, ((a2 * v11) & 0x8000000000000000) == 0) && (v14 = (a3 * *(a1 + 84)) >> 64, is_mul_ok(a3, v11)))
  {
    v16 = a3 * v11;
    if (!a5 || (v17 = *(a1 + 4), v17 < 0))
    {
      v17 = *a1;
    }

    v18 = pwrite(v17, __buf, v16, v13);
    if (v18 < 0)
    {
      return *__error();
    }

    else if (v18 == v16)
    {
      return 0;
    }

    else
    {
      return 5;
    }
  }

  else
  {
    v19 = *(a1 + 84);
    log_err("%s:%d: blknum %lld size %zu blksize %u invalid, dev_name = %s\n", a2, a3, __buf, a5, a6, a7, a8, "_fd_dev_write");
    return 22;
  }
}

uint64_t sub_1000547DC(int *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a6;
  v15 = sub_100054674(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v15)
  {
    if (!a7)
    {
      sub_1000A79A4();
    }

    *(a7 + 8) = 0u;
    v17 = (a7 + 8);
    *(a7 + 88) = a5;
    *(a7 + 24) = 0u;
    *(a7 + 40) = 0u;
    *(a7 + 56) = 0u;
    *(a7 + 72) = 0u;
    v18 = a1[21];
    *(a7 + 16) = v18 * a2;
    *(a7 + 24) = a4;
    *(a7 + 32) = v18 * a3;
    if (a5)
    {
      v19 = a1[1];
      if (v19 < 0)
      {
        v19 = *a1;
      }

      v17->aio_fildes = v19;
      if (v9)
      {
        v20 = *(a5 + 72);
        if (v20)
        {
          *(v20 + 12) = a2;
        }
      }
    }

    else
    {
      v17->aio_fildes = *a1;
    }

    if (!aio_read(v17))
    {
      return 0;
    }

    if (*__error() == 35)
    {
      v15 = 16;
    }

    else
    {
      v15 = *__error();
      if (!v15)
      {
        return v15;
      }
    }
  }

  v16 = *a7;
  if (*a7)
  {
    *(a7 + 96) = v15;
    v16(a7);
  }

  return v15;
}

uint64_t sub_1000548EC(uint64_t a1, unint64_t a2, unint64_t a3, char *__buf, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  if (*(a1 + 60) && !*(a1 + 24))
  {
    v14 = *(a1 + 84);
    v15 = v14 <= 0x100000 ? 0x100000 / v14 : 1;
    *(a1 + 32) = v15;
    v16 = _apfs_malloc_typed(v15 * v14, 0x835B50A5uLL);
    *(a1 + 24) = v16;
    *(a1 + 36) = 0;
    if (!v16)
    {
      return 12;
    }
  }

  if (!a5)
  {
    if (!*(a1 + 24))
    {
      goto LABEL_45;
    }

LABEL_23:
    if (!a3)
    {
      return 0;
    }

    v29 = *(a1 + 36);
    while (1)
    {
      while (1)
      {
        v30 = *(a1 + 32) - v29;
        v31 = a3 <= v30 ? a3 : v30;
        if ((v8 & 4) != 0 || ((*(a1 + 56) ^ v8) & 1) != 0 || a2 != *(a1 + 40) + v29)
        {
          break;
        }

        if (*(a1 + 48) != a5 || v31 == 0)
        {
          break;
        }

        v34 = *(a1 + 24);
        v35 = *(a1 + 84);
        v36 = v35 * v29;
        if (a5 && *(a5 + 72))
        {
          userfs_data_cryptor(a5, __buf, (v34 + v36), (v35 * v31), a2 * v35, v35, 1);
          *(*(a5 + 72) + 12) += v31;
        }

        else
        {
          memcpy((v34 + v36), __buf, (v35 * v31));
        }

        v29 = *(a1 + 36) + v31;
        *(a1 + 36) = v29;
        a2 += v31;
        a3 -= v31;
        __buf += (*(a1 + 84) * v31);
        if (!a3)
        {
          return 0;
        }
      }

      if (v29)
      {
        v33 = sub_100054704(a1, *(a1 + 40), v29, *(a1 + 24), *(a1 + 48), a6, a7, a8);
        if (v33)
        {
          break;
        }
      }

      v29 = 0;
      *(a1 + 36) = 0;
      *(a1 + 40) = a2;
      *(a1 + 48) = a5;
      *(a1 + 56) = v8;
    }

    return v33;
  }

  v17 = *(a5 + 72);
  if ((v8 & 1) != 0 && v17)
  {
    *(v17 + 12) = a2;
  }

  if (*(a1 + 24))
  {
    goto LABEL_23;
  }

  if (v17)
  {
    v18 = _apfs_malloc_typed(*(a1 + 84), 0x4C8514E4uLL);
    if (v18)
    {
      v19 = v18;
      v20 = *(a1 + 84);
      if (a3)
      {
        v21 = a3 - 1;
        do
        {
          userfs_data_cryptor(a5, __buf, v19, v20, a2 * v20, v20, 1);
          ++*(*(a5 + 72) + 12);
          v25 = sub_100054704(a1, a2, 1uLL, v19, a5, v22, v23, v24);
          v26 = v25;
          v20 = *(a1 + 84);
          v28 = v21-- != 0;
          if (v25)
          {
            break;
          }

          ++a2;
          __buf += v20;
        }

        while (v28);
      }

      else
      {
        v26 = 0;
      }

      _apfs_free(v19, v20);
      return v26;
    }

    return 12;
  }

LABEL_45:

  return sub_100054704(a1, a2, a3, __buf, a5, a6, a7, a8);
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

uint64_t nx_checkpoint_find_highest_xid(uint64_t a1, int *a2, unint64_t *a3)
{
  v6 = _apfs_malloc_typed(*(*(a1 + 376) + 36), 0xD3A61ACFuLL);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  v42 = 0;
  v8 = *(a1 + 376);
  if ((*(v8 + 104) & 0x7FFFFFFF) != 0)
  {
    v9 = 0;
    v41 = 0;
    v10 = 0;
    v11 = -1;
    while (1)
    {
      v7[6] = 0;
      if (nx_checkpoint_desc_block_address(a1, v9, &v42) || dev_read(*(a1 + 384)))
      {
        v32 = *(a1 + 384) + 212;
        log_err("%s:%d: %s couldn't read checkpoint descriptor block %d @ 0x%llx: %d\n", v12, v13, v14, v15, v16, v17, v18, "nx_checkpoint_find_highest_xid");
      }

      else
      {
        v21 = v7[6];
        if (v21 == -2147483647)
        {
          goto LABEL_12;
        }

        if (v21)
        {
          if (v21 == 1073741836)
          {
LABEL_12:
            if (obj_checksum_verify_phys(v7, *(*(a1 + 376) + 36), v19, v20))
            {
              v33 = *(a1 + 384) + 212;
              v37 = v7[6];
              log_err("%s:%d: %s invalid checksum for object type 0x%x @ checkpoint descriptor block %d @ 0x%llx\n", v22, v23, v24, v25, v26, v27, v28, "nx_checkpoint_find_highest_xid");
            }

            else if (v7[7])
            {
              v40 = v7[6];
              v35 = *(a1 + 384) + 212;
              v39 = v7[7];
              log_err("%s:%d: %s found unexpected subtype 0x%x for object type 0x%x @ checkpoint descriptor block %d\n", v22, v23, v24, v25, v26, v27, v28, "nx_checkpoint_find_highest_xid");
            }

            else
            {
              v29 = *(v7 + 2);
              if (v29)
              {
                if (v29 >= v10)
                {
                  v30 = v7[6];
                  if (v29 == v10 && v41 && v30 != -2147483647)
                  {
                    v41 = 1;
                  }

                  else
                  {
                    v41 = v30 == -2147483647;
                    v10 = *(v7 + 2);
                    v11 = v9;
                  }
                }
              }

              else
              {
                v36 = *(a1 + 384) + 212;
                log_err("%s:%d: %s found unexpected xid %lld @ checkpoint descriptor block %d\n", v22, v23, v24, v25, v26, v27, v28, "nx_checkpoint_find_highest_xid");
              }
            }

            goto LABEL_7;
          }

          v38 = v7[6];
          v34 = *(a1 + 384) + 212;
          log_err("%s:%d: %s found unexpected object type 0x%x @ checkpoint descriptor block %d\n", v12, v13, v14, v15, v16, v17, v18, "nx_checkpoint_find_highest_xid");
        }
      }

LABEL_7:
      ++v9;
      v8 = *(a1 + 376);
      if (v9 >= (*(v8 + 104) & 0x7FFFFFFFu))
      {
        goto LABEL_27;
      }
    }
  }

  v10 = 0;
  v11 = -1;
LABEL_27:
  _apfs_free(v7, *(v8 + 36));
  *a2 = v11;
  *a3 = v10;
  return 2 * (v10 == 0);
}

uint64_t nx_check_checkpoint_map_block(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int8x16_t a5, int8x16_t a6)
{
  v10 = obj_checksum_verify_phys(a2, *(a1 + 36), a5, a6);
  v11 = *(a2 + 36);
  if (!v11)
  {
    goto LABEL_19;
  }

  if (v10)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  if (*(a2 + 24) == 1073741836)
  {
    v13 = v10 != 0;
  }

  else
  {
    v13 = v12;
  }

  if (*(a2 + 28))
  {
    ++v13;
  }

  if (*(a2 + 16) != *(a1 + 16))
  {
    ++v13;
  }

  v14 = *(a2 + 8) == a3 ? v13 : v13 + 1;
  v15 = *(a1 + 36);
  v16 = v14 | *(a2 + 32) & 1 ^ (a4 != 0);
  if (v11 <= (v15 - 40) / 0x28uLL && v16 == 0)
  {
    v19 = 0;
    v20 = *(a1 + 108);
    v21 = (a2 + 72);
    while (v11 != v19)
    {
      v23 = *(v21 - 8);
      v22 = *(v21 - 7);
      if ((v23 & 0xC0000000) == 0x80000000)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (*(v21 - 8) > 0x12u || ((1 << *(v21 - 8)) & 0x6002C) == 0)
      {
        v26 = v24;
      }

      else
      {
        v26 = (v23 & 0xC0000000) != 0x80000000;
      }

      if ((v22 & 0xC0000000) != 0)
      {
        ++v26;
      }

      if ((*(v21 - 7) > 0x24u || ((1 << v22) & 0x100009CA01) == 0) && *(v21 - 7) != 255)
      {
        ++v26;
      }

      if (!*(v21 - 1))
      {
        ++v26;
      }

      if ((v20 & 0x80000000) != 0)
      {
        v32 = v19;
      }

      else
      {
        v27 = *v21;
        v28 = *(a1 + 120);
        if (*v21 < v28)
        {
          ++v26;
        }

        if (v27 >= v28 + v20)
        {
          ++v26;
        }

        v29 = v27 - v28;
        v30 = *(a1 + 144);
        if (v30 <= v29)
        {
          v31 = 0;
        }

        else
        {
          v31 = *(a1 + 108);
        }

        v32 = v31 - v30 + v29;
        if (v32 >= *(a1 + 148))
        {
          ++v26;
        }
      }

      v33 = *(v21 - 6);
      if (v33)
      {
        v34 = v26;
      }

      else
      {
        v34 = v26 + 1;
      }

      if (!(v34 | (v33 % v15 != 0)))
      {
        ++v19;
        v21 += 5;
        if (v33 / v15 <= *(a1 + 148) - v32)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    return 0;
  }

  else
  {
LABEL_19:

    return nx_corruption_detected_int(0);
  }
}

BOOL nx_superblock_agrees_with_main_superblock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80))
  {
    v11 = 0;
  }

  else
  {
    log_err("%s:%d: %s<->superblock mismatch on uuid\n", a2, a3, a4, a5, a6, a7, a8, "nx_superblock_agrees_with_main_superblock");
    v11 = 1;
  }

  if (*(a1 + 1280) != *(a2 + 1280) || *(a1 + 1288) != *(a2 + 1288))
  {
    log_err("%s:%d: %s<->superblock mismatch on fusion uuid\n", a2, a3, a4, a5, a6, a7, a8, "nx_superblock_agrees_with_main_superblock");
    ++v11;
  }

  if (*(a1 + 16) > *(a2 + 16))
  {
    v14 = *(a2 + 16);
    v21 = *(a1 + 16);
    log_err("%s:%d: the %s superblock has a lower XID %lld than the main superblock %lld\n", a2, a3, a4, a5, a6, a7, a8, "nx_superblock_agrees_with_main_superblock");
  }

  if (*(a1 + 36) != *(a2 + 36))
  {
    v15 = *(a1 + 36);
    v22 = *(a2 + 36);
    log_err("%s:%d: %s<->superblock mismatch on block size: %d %d\n", a2, a3, a4, a5, a6, a7, a8, "nx_superblock_agrees_with_main_superblock");
    ++v11;
  }

  if (*(a1 + 40) != *(a2 + 40))
  {
    v16 = *(a1 + 40);
    v23 = *(a2 + 40);
    log_err("%s:%d: %s<->superblock mismatch on block count: %lld %lld\n", a2, a3, a4, a5, a6, a7, a8, "nx_superblock_agrees_with_main_superblock");
    ++v11;
  }

  if (*(a1 + 104) != *(a2 + 104))
  {
    v17 = *(a1 + 104);
    v24 = *(a2 + 104);
    log_err("%s:%d: %s<->superblock mismatch on checkpoint descriptor block count: %d %d\n", a2, a3, a4, a5, a6, a7, a8, "nx_superblock_agrees_with_main_superblock");
    ++v11;
  }

  if (*(a1 + 108) != *(a2 + 108))
  {
    v18 = *(a1 + 108);
    v25 = *(a2 + 108);
    log_err("%s:%d: %s<->superblock mismatch on checkpoint data block count: %d %d\n", a2, a3, a4, a5, a6, a7, a8, "nx_superblock_agrees_with_main_superblock");
    ++v11;
  }

  if (*(a1 + 112) != *(a2 + 112))
  {
    v19 = *(a1 + 112);
    v26 = *(a2 + 112);
    log_err("%s:%d: %s<->superblock mismatch on checkpoint descriptor base address: %lld %lld\n", a2, a3, a4, a5, a6, a7, a8, "nx_superblock_agrees_with_main_superblock");
    ++v11;
  }

  if (*(a1 + 120) != *(a2 + 120))
  {
    v20 = *(a1 + 120);
    v27 = *(a2 + 120);
    log_err("%s:%d: %s<->superblock mismatch on checkpoint data base address: %lld %lld\n", a2, a3, a4, a5, a6, a7, a8, "nx_superblock_agrees_with_main_superblock");
    v11 = 1;
  }

  return v11 == 0;
}

uint64_t nx_checkpoint_find_valid_checkpoint(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int *a5)
{
  v131 = 0;
  v132 = 0;
  v130 = 0;
  *a5 = -1;
  v5 = *(a2 + 104) & 0x7FFFFFFF;
  if (!v5)
  {
    return 2;
  }

  v6 = a5;
  v11 = 0;
  v12 = 0;
  v129 = (a1 + 424);
  while (1)
  {
    if (v11 && (*(a2 + 1264) & 2) != 0)
    {
      return 35;
    }

    v13 = (v5 + a3) % v5;
    v133 = -1;
    if (nx_checkpoint_desc_block_address(a1, v13, &v133) || dev_read(*(a1 + 384)))
    {
      v99 = *(a1 + 384) + 212;
      log_err("%s:%d: %s couldn't read checkpoint descriptor block %d @ %lld: %d\n", v14, v15, v16, v17, v18, v19, v20, "nx_checkpoint_find_valid_checkpoint");
      goto LABEL_8;
    }

    if (*(a4 + 24) != -2147483647)
    {
      goto LABEL_8;
    }

    if (nx_check_superblock(a4, *(a2 + 36), 1, v21, v22))
    {
      v100 = *(a1 + 384) + 212;
      log_err("%s:%d: %s checkpoint superblock %d @ %lld: failed sanity check: %d\n", v23, v24, v25, v26, v27, v28, v29, "nx_checkpoint_find_valid_checkpoint");
      goto LABEL_8;
    }

    v128 = v6;
    v30 = *(a2 + 64);
    if ((v30 & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      break;
    }

    v6 = v128;
    if (nx_superblock_agrees_with_main_superblock(a2, a4, "checkpoint", v25, v26, v27, v28, v29))
    {
      v38 = *(a4 + 140);
      v39 = *(a2 + 104) & 0x7FFFFFFF;
      if (v13 == (*(a4 + 136) + v38 - 1) % v39)
      {
        if (v38 <= v11 + v39)
        {
          if (nx_metadata_range_add(a1, 0, 1, 0, 1) || nx_metadata_range_add(a1, *(a4 + 112), *(a4 + 104) & 0x7FFFFFFF, *(a4 + 104) < 0, 0) || nx_metadata_range_add(a1, *(a4 + 120), *(a4 + 108) & 0x7FFFFFFF, *(a4 + 108) < 0, 0))
          {
            v124 = *(a4 + 136);
            v103 = *(a1 + 384) + 212;
            v117 = *(a4 + 16);
            log_err("%s:%d: %s xid %lld at index %d failed to load checkpoint metadata ranges (overlap?): %d\n", v40, v41, v42, v43, v44, v45, v46, "nx_checkpoint_find_valid_checkpoint");
          }

          else if (sub_100055A10(a1, a4))
          {
            v125 = *(a4 + 136);
            v104 = *(a1 + 384) + 212;
            v118 = *(a4 + 16);
            log_err("%s:%d: %s xid %lld validation failed for checkpoint at index %d: %d\n", v47, v48, v49, v50, v51, v52, v53, "nx_checkpoint_find_valid_checkpoint");
          }

          else
          {
            if (!sub_100055B1C(a1, a4, &v132, &v131))
            {
              memcpy(*(a1 + 376), a4, *(a2 + 36));
              *(*(a1 + 392) + 400) = *(*(a1 + 376) + 88);
              if (nx_checkpoint_traverse(a1, 0, 2))
              {
                v120 = *(a4 + 16);
                v106 = *(a1 + 384) + 212;
                log_err("%s:%d: %s xid %lld failed to fix up checkpoint data: %d\n", v61, v62, v63, v64, v65, v66, v67, "nx_checkpoint_find_valid_checkpoint");
LABEL_37:
                obj_cache_reset(*(a1 + 392), 0);
                *(a1 + 408) = 0;
                *(a1 + 736) = 0;
                *v129 = 0u;
                v129[1] = 0u;
                v129[2] = 0u;
                memcpy(*(a1 + 376), a2, *(a2 + 36));
                *(*(a1 + 392) + 400) = *(*(a1 + 376) + 88);
                goto LABEL_8;
              }

              if (*(a1 + 628) == 1)
              {
                v68 = *(a1 + 384) + 212;
                if (*(a1 + 631) == 1)
                {
                  v107 = *(a1 + 384) + 212;
                  log_info("%s:%d: %s probe of external device... skipping recent sanity checks.\n", v61, v62, v63, v64, v65, v66, v67, "nx_checkpoint_find_valid_checkpoint");
                }

                else
                {
                  v108 = *(a1 + 384) + 212;
                  log_info("%s:%d: %s sanity checking all recently-changed container state... please be patient.\n", v61, v62, v63, v64, v65, v66, v67, "nx_checkpoint_find_valid_checkpoint");
                  if (nx_check_recent_sanity(a1))
                  {
                    v121 = *(a4 + 16);
                    v109 = *(a1 + 384) + 212;
                    log_err("%s:%d: %s xid %lld sanity check of recently-changed structures failed: %d\n", v69, v70, v71, v72, v73, v74, v75, "nx_checkpoint_find_valid_checkpoint");
                    goto LABEL_37;
                  }
                }
              }

              if (spaceman_get(a1, &v130))
              {
                v122 = *(a4 + 16);
                v110 = *(a1 + 384) + 212;
                log_err("%s:%d: %s xid %lld failed to get spaceman: %d\n", v76, v77, v78, v79, v80, v81, v82, "nx_checkpoint_find_valid_checkpoint");
              }

              else
              {
                if (nx_metadata_range_add(a1, *(v130[47] + 168), *(v130[47] + 164) & 0x7FFFFFFF, *(v130[47] + 164) < 0, 0))
                {
                  obj_release(v130);
                }

                else
                {
                  v90 = nx_metadata_range_add(a1, *(v130[47] + 176), *(v130[47] + 152), *(v130[47] + 152) < 0, 0);
                  obj_release(v130);
                  if (!v90)
                  {
                    if (*(*(a1 + 376) + 16) < v132)
                    {
                      v114 = *(a1 + 384) + 212;
                      log_err("%s:%d: %s warning: best valid checkpoint xid %lld is less than max free queue oldest xid %lld seen in checkpoint %lld\n", v83, v84, v85, v86, v87, v88, v89, "nx_checkpoint_find_valid_checkpoint");
                    }

                    result = 0;
                    *v128 = v13;
                    return result;
                  }
                }

                v123 = *(a4 + 16);
                v111 = *(a1 + 384) + 212;
                log_err("%s:%d: %s xid %lld failed to load spaceman metadata ranges (overlap?): %d\n", v83, v84, v85, v86, v87, v88, v89, "nx_checkpoint_find_valid_checkpoint");
                v6 = v128;
              }

              goto LABEL_37;
            }

            v126 = *(a4 + 136);
            v105 = *(a1 + 384) + 212;
            v119 = *(a4 + 16);
            log_err("%s:%d: %s xid %lld data for checkpoint at index %d couldn't be loaded: %d\n", v54, v55, v56, v57, v58, v59, v60, "nx_checkpoint_find_valid_checkpoint");
          }

          obj_cache_reset(*(a1 + 392), 0);
          *(a1 + 408) = 0;
          *(a1 + 736) = 0;
          *v129 = 0u;
          v129[1] = 0u;
          v129[2] = 0u;
        }

        else
        {
          v127 = *(a4 + 140);
          v115 = *(a4 + 16);
          v101 = *(a1 + 384) + 212;
          log_err("%s:%d: %s xid %lld checkpoint superblock index %d doesn't fit in blocks remaining: %d > %d\n", v31, v32, v33, v34, v35, v36, v37, "nx_checkpoint_find_valid_checkpoint");
        }
      }

      else
      {
        v102 = *(a1 + 384) + 212;
        v116 = *(a4 + 16);
        log_err("%s:%d: %s xid %lld checkpoint superblock index %d doesn't match index block was found at: %d\n", v31, v32, v33, v34, v35, v36, v37, "nx_checkpoint_find_valid_checkpoint");
      }
    }

LABEL_8:
    ++v12;
    v5 = *(a2 + 104) & 0x7FFFFFFF;
    --a3;
    --v11;
    if (v12 >= v5)
    {
      return 2 * (*v6 == -1);
    }
  }

  v112 = *(a1 + 384) + 212;
  log_err("%s:%d: %s unsupported nx_incompatible_features (0x%llx): unable to mount\n", v23, v24, v25, v26, v27, v28, v29, "nx_checkpoint_find_valid_checkpoint");
  if ((v30 & 0x100) != 0)
  {
    v113 = *(a1 + 384) + 212;
    log_err("%s:%d: %s Fusion is not supported anymore\n", v92, v93, v94, v95, v96, v97, v98, "nx_checkpoint_find_valid_checkpoint");
  }

  return 75;
}

uint64_t sub_100055A10(uint64_t a1, unsigned int *a2)
{
  v4 = _apfs_malloc_typed(a2[9], 0x9BA6ADA8uLL);
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  v12 = 0;
  if (a2[35] == 1)
  {
LABEL_3:
    v6 = 0;
  }

  else
  {
    v7 = 0;
    while (1)
    {
      v8 = nx_checkpoint_desc_block_address(a1, (v7 + a2[34]) % (a2[26] & 0x7FFFFFFF), &v12);
      if (v8)
      {
        break;
      }

      v8 = dev_read(*(a1 + 384));
      if (v8)
      {
        break;
      }

      v8 = nx_check_checkpoint_map_block(a2, v5, v12, v7 == a2[35] - 2, v9, v10);
      if (v8)
      {
        break;
      }

      if (++v7 >= a2[35] - 1)
      {
        goto LABEL_3;
      }
    }

    v6 = v8;
  }

  _apfs_free(v5, a2[9]);
  return v6;
}

uint64_t sub_100055B1C(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v82[0] = 0;
  v6 = *(*(a1 + 376) + 36);
  v79 = 0;
  v7 = _apfs_malloc_typed(v6, 0xB5246107uLL);
  if (v7)
  {
    v15 = v7;
    v80 = 0;
    v81 = 0;
    v77 = 0;
    v78 = 0;
    if (*(a2 + 140) - 1 < 1)
    {
LABEL_28:
      _apfs_free(v15, v6);
      return 0;
    }

    else
    {
      v16 = 0;
      v17 = *(a2 + 144);
      v18 = *(a2 + 136);
      v72 = v7 + 10;
      v71 = *(a2 + 140) - 1;
      while (1)
      {
        v78 = 0;
        v19 = nx_checkpoint_desc_block_address(a1, v18, &v78);
        if (v19 || (v19 = dev_read(*(a1 + 384)), v19) || (v19 = obj_checksum_verify_phys(v15, v6, v27, v28), v19))
        {
          v59 = v19;
          v66 = *(a1 + 384) + 212;
          log_err("%s:%d: %s couldn't read checkpoint descriptor map block %d @ %lld: %d\n", v20, v21, v22, v23, v24, v25, v26, "nx_checkpoint_load_data");
LABEL_39:
          _apfs_free(v15, v6);
LABEL_40:
          obj_cache_reset(*(a1 + 392), 0);
          *(a1 + 408) = 0;
          *(a1 + 736) = 0;
          *(a1 + 424) = 0u;
          *(a1 + 440) = 0u;
          *(a1 + 456) = 0u;
          return v59;
        }

        v73 = v16;
        v74 = v18;
        if (v15[9])
        {
          break;
        }

LABEL_27:
        v18 = (v74 + 1) % (*(a2 + 104) & 0x7FFFFFFFu);
        v16 = v73 + 1;
        if (v73 + 1 == v71)
        {
          goto LABEL_28;
        }
      }

      v29 = 0;
      v30 = v72;
      while (1)
      {
        v31 = v30[2];
        v78 = 0;
        v32 = nx_checkpoint_data_block_address(a1, v17, &v78, &v77);
        if (v32)
        {
          v59 = v32;
          v63 = *(a1 + 384) + 212;
          log_err("%s:%d: %s couldn't read checkpoint data block %d @ %lld: %d\n", v33, v34, v35, v36, v37, v38, v39, "nx_checkpoint_load_data");
          goto LABEL_39;
        }

        if (v78 != *(v30 + 4))
        {
          break;
        }

        v40 = *(a2 + 144);
        v41 = v17;
        if (v17 < v40)
        {
          v41 = (*(a2 + 108) & 0x7FFFFFFF) + v17;
        }

        v42 = v41 - v40;
        v43 = *(a2 + 148);
        v44 = (v6 - 1 + v31) / v6;
        if (v42 >= v43 || v42 + v44 > v43)
        {
          v70 = *(a2 + 144);
          v65 = *(a1 + 384) + 212;
          log_err("%s:%d: %s checkpoint mapping (%d,%d) extends beyond checkpoint data range: %d,%d\n", v33, v34, v35, v36, v37, v38, v39, "nx_checkpoint_load_data");
          goto LABEL_33;
        }

        v82[0] = 0;
        v45 = obj_descriptor_and_flags_for_type(*v30, v82, &v80);
        HIDWORD(v80) = v30[1];
        LODWORD(v81) = v31;
        if (v45)
        {
          v59 = v45;
LABEL_38:
          v67 = *(a1 + 384) + 212;
          v69 = *v30;
          log_err("%s:%d: %s failed to load checkpoint data of type 0x%x:0x%x @ %lld\n", v46, v47, v48, v49, v50, v51, v52, "nx_checkpoint_load_data");
          goto LABEL_39;
        }

        v53 = obj_checkpoint_get(*(a1 + 392), v82[0] | 0x80000000, *(v30 + 3), &v80, v78, v17, v77, *(a2 + 16), &v79);
        if (v53)
        {
          v59 = v53;
          v60 = v30[1];
          goto LABEL_38;
        }

        if (a3)
        {
          v54 = v79;
          if (!*a4)
          {
            v55 = obj_type(v79);
            v54 = v79;
            if (v55 == 5)
            {
              v56 = v79[7];
              v57 = v56[32];
              if (v57 <= v56[27])
              {
                v57 = v56[27];
              }

              *a3 = v57;
              v58 = v56[37];
              if (v58 <= v57)
              {
                v58 = v57;
              }

              *a3 = v58;
              *a4 = *(a2 + 16);
            }
          }
        }

        else
        {
          v54 = v79;
        }

        obj_release(v54);
        v17 = (v44 + v17) % (*(a2 + 108) & 0x7FFFFFFFu);
        ++v29;
        v30 += 10;
        if (v29 >= v15[9])
        {
          goto LABEL_27;
        }
      }

      v68 = *(v30 + 4);
      v64 = *(a1 + 384) + 212;
      log_err("%s:%d: %s unexpected checkpoint map entry address: 0x%llx, expected 0x%llx\n", v33, v34, v35, v36, v37, v38, v39, "nx_checkpoint_load_data");
LABEL_33:
      v59 = nx_corruption_detected_int(0);
      _apfs_free(v15, v6);
      if (v59)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    v62 = *(a1 + 384) + 212;
    log_err("%s:%d: %s couldn't allocate memory for checkpoint map block\n", v8, v9, v10, v11, v12, v13, v14, "nx_checkpoint_load_data");
    return 12;
  }

  return v59;
}

uint64_t nx_dev_init(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5, void *a6, void *a7)
{
  v59 = 0;
  if (a3)
  {
    v59 = a1;
  }

  else
  {
    if (a4)
    {
      return 45;
    }

    v48 = fskit_dev_init(a1, 2, &v59);
    if (v48)
    {
      v46 = v48;
      log_err("%s:%d: device initialization failed: %d\n", v49, v50, v51, v52, v53, v54, v55, "nx_dev_init");
      goto LABEL_36;
    }

    a1 = v59;
  }

  v9 = dev_block_size(a1);
  v10 = dev_block_count(v59);
  if (v9 <= 0x1000)
  {
    v18 = 4096;
  }

  else
  {
    v18 = v9;
  }

  v19 = v10 * v9;
  while (!(v18 % v9))
  {
    if (v18 > v9)
    {
      dev_set_block_size(v59);
    }

    v27 = _apfs_malloc_typed(v18, 0x92FC743FuLL);
    if (!v27)
    {
      log_err("%s:%d: %s couldn't allocate memory for superblock of size %d\n", v20, v21, v22, v23, v24, v25, v26, "nx_dev_init");
      v46 = 12;
      goto LABEL_36;
    }

    v28 = dev_read(v59);
    if (v28)
    {
      v46 = v28;
      log_err("%s:%d: %s couldn't read superblock of size %d\n", v29, v30, v31, v32, v33, v34, v35, "nx_dev_init");
LABEL_33:
      _apfs_free(v27, v18);
      goto LABEL_36;
    }

    v38 = nx_check_superblock(v27, v18, 0, v36, v37);
    if (v38)
    {
      goto LABEL_13;
    }

    v47 = v27[9];
    if (v47 % v9)
    {
      v57 = v27[9];
      log_err("%s:%d: %s superblock block size %d not an even multiple of device block size %d\n", v39, v40, v41, v42, v43, v44, v45, "nx_dev_init");
      v38 = nx_corruption_detected_int(0);
      if (v38)
      {
        goto LABEL_13;
      }

      v47 = v27[9];
    }

    if (*(v27 + 5) * v47 > v19)
    {
      v58 = *(v27 + 5) * v47;
      log_err("%s:%d: %s superblock container size %lld greater than device size %lld\n", v39, v40, v41, v42, v43, v44, v45, "nx_dev_init");
      v38 = nx_corruption_detected_int(0);
LABEL_13:
      v46 = v38;
      if (v38)
      {
        if (v38 != 79)
        {
          log_err("%s:%d: %s superblock failed sanity checks: %d\n", v39, v40, v41, v42, v43, v44, v45, "nx_dev_init");
        }

        goto LABEL_33;
      }

      v47 = v27[9];
    }

    if (v47 == v18)
    {
      v46 = 0;
      *a7 = v27;
      *a6 = v59;
      return v46;
    }

    _apfs_free(v27, v18);
    dev_set_block_size(v59);
    v18 = v47;
    if (v47 < v9)
    {
      log_err("%s:%d: %s container block size too small for device block size (%d < %d)\n", v11, v12, v13, v14, v15, v16, v17, "nx_dev_init");
      goto LABEL_35;
    }
  }

  log_err("%s:%d: %s block size %d is not an even multiple of device block size %d\n", v11, v12, v13, v14, v15, v16, v17, "nx_dev_init");
LABEL_35:
  v46 = 22;
LABEL_36:
  if (v59)
  {
    dev_close(v59);
  }

  return v46;
}

uint64_t nx_mount(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v350 = 0;
  v351 = 0;
  memset(v352, 0, sizeof(v352));
  v348 = 0;
  v349 = 0;
  v347 = 0;
  v346 = 0;
  v345 = 0;
  v344 = 0;
  v343 = 0;
  *a3 = 0;
  if (a2)
  {
    v10 = *(a2 + 8);
    v11 = *(a2 + 4);
    v12 = (v10 >> 13) & 1;
    if (((v10 & 0x100) != 0 || (v10 & 0x2000) != 0) && (v11 & 0x80000000) == 0)
    {
      log_err("%s:%d: conflicting mount options: probe %d temporary %d sbindex %d\n", a2, a3, a4, a5, a6, a7, a8, "nx_mount");
LABEL_9:
      LODWORD(v19) = 0;
      v20 = 0;
      v21 = 22;
      goto LABEL_10;
    }

    if ((v10 & 0xC00) == 0x800)
    {
      log_err("%s:%d: conflicting mount options: is_system_graft but not is_graft\n", a2, a3, a4, a5, a6, a7, a8, "nx_mount");
      goto LABEL_9;
    }

    __n = *a2;
    __src = (v10 >> 9) & 1;
    v17 = (*(a2 + 8) >> 1) & 1;
    v15 = (v10 >> 10) & 1;
    v14 = (*(a2 + 8) >> 5) & 1;
    crc32c_init();
    v337 = (v10 >> 2) & 1;
    v8 = a3;
    v16 = (v10 >> 11) & 1;
    v18 = (v10 >> 8) & 1;
    v335 = (v10 >> 12) & 1;
  }

  else
  {
    crc32c_init();
    __n = 0;
    v337 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    __src = 0;
    v335 = 0;
    v12 = 0;
    v11 = 0xFFFFFFFFLL;
  }

  v24 = nx_dev_init(a1, v13, v17, v15, 0, &v351, &v348);
  if (v24)
  {
    v21 = v24;
    if (v24 != 79)
    {
      log_err("%s:%d: device initialization failed: %d\n", v25, v26, v27, v28, v29, v30, v31, "nx_mount");
    }

    return v21;
  }

  v333 = v18;
  v330 = v14;
  v331 = v16;
  v326 = v8;
  v327 = v11;
  v33 = v351;
  v329 = dev_is_writable(v351) == 0;
  is_external = dev_is_external(v33);
  v41 = dev_real_block_size(v33);
  v42 = v348;
  v43 = v348[9];
  if (__src)
  {
    v44 = 128;
  }

  else
  {
    v44 = 0x10000;
  }

  if (__src)
  {
    v45 = 128;
  }

  else
  {
    v45 = 0x8000;
  }

  log_debug("%s:%d: %s initializing cache w/hash_size %u and cache size %u\n", v34, v35, v36, v37, v38, v39, v40, "nx_mount");
  v46 = v45;
  v19 = v43;
  v47 = obj_cache_create(v46, v44, v43, &v350);
  if (v47)
  {
    v55 = v47;
    log_err("%s:%d: %s object cache initialization failed: %d\n", v48, v49, v50, v51, v52, v53, v54, "nx_mount");
    v20 = 0;
    v21 = v55;
    goto LABEL_10;
  }

  __srca = v42;
  v56 = v350;
  if (v331)
  {
    *&v350[14].__opaque[48] = 1;
  }

  memset(&v352[3] + 8, 0, 24);
  *(&v352[2] + 8) = 0u;
  memset(v352 + 8, 0, 32);
  *&v352[0] = __PAIR64__(v43, v41);
  *(&v352[0] + 1) = v42[5];
  *(&v352[1] + 1) = v33;
  *&v352[2] = 1;
  DWORD2(v352[2]) = (__n | v329) & 1;
  HIDWORD(v352[2]) = is_external != 0;
  *&v352[3] = __PAIR64__(v333, v337);
  *(&v352[3] + 1) = __PAIR64__(v12, v335);
  bootstrap = obj_create_bootstrap(v56, 0x80000000, 1uLL, &nx_desc, v352, v43, 1, &v349);
  if (bootstrap)
  {
    v21 = bootstrap;
    log_err("%s:%d: %s object cache bootstrap failed: %d\n", v58, v59, v60, v61, v62, v63, v64, "nx_mount");
LABEL_37:
    v20 = 0;
    goto LABEL_10;
  }

  v65 = v349;
  if (v330)
  {
    *(v349 + 640) = 1;
  }

  memcpy(v65[47], v42, v43);
  v66 = v350;
  v67 = v349[47];
  v68 = *(v67 + 88);
  *v350[6].__opaque = v349;
  v66[25].i64[0] = v68;
  __strlcpy_chk();
  obj_mem_mgr_register(v350, v15 & (v331 ^ 1));
  v350 = 0;
  v351 = 0;
  v69 = *(v67 + 104);
  v70 = v327;
  if (v69 < 0 && (v80 = nx_metadata_fragmented_sanity_check(v349, *(v67 + 112), v69 & 0x7FFFFFFF), v80) || (v71 = *(v67 + 108), v71 < 0) && (v80 = nx_metadata_fragmented_sanity_check(v349, *(v67 + 120), v71 & 0x7FFFFFFF), v80))
  {
    v21 = v80;
    v275 = v349[48] + 212;
    log_err("%s:%d: %s fragmented checkpoint area failed sanity check: %d\n", v81, v82, v83, v84, v85, v86, v87, "nx_mount");
    goto LABEL_37;
  }

  v20 = _apfs_malloc_typed(v43, 0x286E03C4uLL);
  if (!v20)
  {
    v276 = v349[48] + 212;
    log_err("%s:%d: %s failed to allocate buffer for checkpoint superblock\n", v72, v73, v74, v75, v76, v77, v78, "nx_mount");
    v21 = 12;
    goto LABEL_10;
  }

  if ((*(v67 + 1264) & 2) == 0)
  {
    goto LABEL_56;
  }

  v79 = v349;
  *(v349 + 626) = 1;
  if (*(v79 + 628) == 1)
  {
    v274 = v79[48] + 212;
    log_err("%s:%d: %s storage is untrusted. Container cleanly-unmounted flag ignored\n", v72, v73, v74, v75, v76, v77, v78, "nx_mount");
LABEL_55:
    *(v67 + 1264) &= ~2uLL;
    __srca[158] &= ~2uLL;
    goto LABEL_56;
  }

  if (!*(v67 + 140))
  {
    v278 = v79[48] + 212;
    log_err("%s:%d: %s checkpoint descriptor length is bad.  Container cleanly-unmounted flag ignored\n", v72, v73, v74, v75, v76, v77, v78, "nx_mount");
    goto LABEL_55;
  }

  if (!*(v67 + 148))
  {
    v277 = v79[48] + 212;
    log_err("%s:%d: %s checkpoint data length is bad.  Container cleanly-unmounted flag ignored\n", v72, v73, v74, v75, v76, v77, v78, "nx_mount");
    goto LABEL_55;
  }

LABEL_56:
  v338 = 0;
  __na = v19;
  v88 = 0;
  v334 = 0;
  v336 = 0;
  while (1)
  {
    while (1)
    {
      v89 = v349;
      if ((*(v67 + 1264) & 2) != 0)
      {
        v279 = v349[48] + 212;
        log_info("%s:%d: %s container cleanly-unmounted flag set.\n", v72, v73, v74, v75, v76, v77, v78, "nx_mount");
        v89 = v349;
        v90 = *(v349 + 633);
      }

      else
      {
        v90 = *(v349 + 633);
        if ((v88 & v90 & 1) == 0)
        {
          highest_xid = nx_checkpoint_find_highest_xid(v349, &v344, &v345);
          if (highest_xid)
          {
            v21 = highest_xid;
            v290 = v349[48] + 212;
            log_err("%s:%d: %s failed to scan checkpoint descriptor area for largest xid: %d\n", v72, v73, v74, v75, v76, v77, v78, "nx_mount");
            goto LABEL_134;
          }

          goto LABEL_63;
        }
      }

      v92 = *(v67 + 136) + *(v67 + 140) - 1;
      v93 = *(v67 + 104) & 0x7FFFFFFF;
      v94 = v92 % v93;
      v344 = v92 % v93;
      v345 = *(v67 + 16);
      if (v88 & v90)
      {
        v283 = v89[48] + 212;
        v315 = *(v67 + 1408);
        log_info("%s:%d: %s Attempting to load from temporary checkpoint (start xid %lld).\n", v72, v73, v74, v75, v76, v77, v78, "nx_mount");
        v112 = v94;
        v113 = __srca;
        if (!*(v67 + 1408))
        {
          v306 = v349[48] + 212;
          log_err("%s:%d: %s No temporary checkpoint start xid!  Aborting!\n", v72, v73, v74, v75, v76, v77, v78, "nx_mount");
          v21 = 100;
          goto LABEL_134;
        }

        goto LABEL_73;
      }

LABEL_63:
      if ((v70 & 0x80000000) == 0)
      {
        break;
      }

      v95 = __srca;
      valid_checkpoint = nx_checkpoint_find_valid_checkpoint(v349, __srca, v344, v20, &v346);
      v21 = valid_checkpoint;
      if (valid_checkpoint != 35)
      {
        if (valid_checkpoint)
        {
LABEL_109:
          v289 = v349[48] + 212;
          log_err("%s:%d: %s failed to find valid checkpoint: %d\n", v97, v98, v99, v100, v101, v102, v103, "nx_mount");
          goto LABEL_134;
        }

        v332 = v20[2];
        v281 = v349[48] + 212;
        log_debug("%s:%d: %s checkpoint search: largest xid %lld, best xid %lld @ %d\n", v97, v98, v99, v100, v101, v102, v103, "nx_mount");
        v111 = v349;
        if (__srca[2] != v20[2])
        {
          v314 = v20[2];
          v282 = v349[48] + 212;
          log_err("%s:%d: %s reloading after unclean unmount, checkpoint xid %lld, superblock xid %lld\n", v104, v105, v106, v107, v108, v109, v110, "nx_mount");
          v111 = v349;
          if ((*(v349 + 633) & 1) == 0)
          {
            v334 = 1;
            *(v349 + 643) = 1;
          }
        }

        goto LABEL_103;
      }

      if ((*(v67 + 1264) & 2) == 0)
      {
        goto LABEL_109;
      }

      v280 = v349[48] + 212;
      log_err("%s:%d: %s Couldn't load checkpoint from cleanly-unmounted state.  Falling back to descriptor scan.\n", v97, v98, v99, v100, v101, v102, v103, "nx_mount");
      *(v67 + 1264) &= ~2uLL;
      __srca[158] &= ~2uLL;
    }

    v112 = v70;
    v113 = __srca;
LABEL_73:
    if (v112 >= (*(v67 + 104) & 0x7FFFFFFFu))
    {
      v294 = v349[48] + 212;
      log_err("%s:%d: %s checkpoint descriptor index %d out of range [0...%d]\n", v72, v73, v74, v75, v76, v77, v78, "nx_mount");
      v202 = v349;
      goto LABEL_133;
    }

    v70 = v112;
    v114 = nx_checkpoint_desc_block_address(v349, v112, &v343);
    v122 = v349;
    if (v114)
    {
      v21 = v114;
LABEL_126:
      v295 = v122[48] + 212;
      log_err("%s:%d: %s couldn't read checkpoint descriptor block %d @ %lld: %d\n", v115, v116, v117, v118, v119, v120, v121, "nx_mount");
      goto LABEL_10;
    }

    v123 = dev_read(v349[48]);
    v21 = v123;
    if (*(v349 + 633) == 1)
    {
      if (!v123 && v19)
      {
        v126 = 0;
        while (!*(v20 + v126))
        {
          if (v19 == ++v126)
          {
            v21 = 0;
            goto LABEL_83;
          }
        }

        v284 = v349[48] + 212;
        log_err("%s:%d: %s Attempt to load temporary checkpoint found unexpected data (0x%02x @ %d), checkpoint descriptor block %d @ %lld\n", v115, v116, v117, v118, v119, v120, v121, "nx_mount");
        v21 = 22;
      }

LABEL_83:
      memcpy(v20, v113, v19);
      obj_checksum_set_phys(v349, v20, v19, v127, v128);
    }

    if (v21)
    {
      v122 = v349;
      goto LABEL_126;
    }

    if (*(v20 + 7) || *(v20 + 6) != -2147483647)
    {
      v292 = v349[48] + 212;
      log_err("%s:%d: %s checkpoint descriptor block %d is not a valid superblock\n", v115, v116, v117, v118, v119, v120, v121, "nx_mount");
      v202 = v349;
LABEL_133:
      v21 = nx_corruption_detected_int(v202);
      goto LABEL_134;
    }

    v129 = nx_check_superblock(v20, *(v67 + 36), 1, v124, v125);
    if (v129)
    {
      v21 = v129;
      v296 = v349[48] + 212;
      log_err("%s:%d: %s checkpoint descriptor block %d superblock failed sanity checks: %d\n", v130, v131, v132, v133, v134, v135, v136, "nx_mount");
      goto LABEL_134;
    }

    v137 = *(v67 + 64);
    if ((v137 & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      v297 = v349[48] + 212;
      log_err("%s:%d: %s unsupported nx_incompatible_features (0x%llx): unable to mount\n", v130, v131, v132, v133, v134, v135, v136, "nx_mount");
      if ((v137 & 0x100) != 0)
      {
        v298 = v349[48] + 212;
        log_err("%s:%d: %s Fusion is not supported anymore\n", v217, v218, v219, v220, v221, v222, v223, "nx_mount");
      }

      v21 = 75;
      goto LABEL_10;
    }

    v95 = __srca;
    if (!nx_superblock_agrees_with_main_superblock(__srca, v20, "checkpoint", v132, v133, v134, v135, v136))
    {
      v299 = v349[48] + 212;
      log_err("%s:%d: %s checkpoint descriptor block %d doesn't agree with main superblock\n", v138, v139, v140, v141, v142, v143, v144, "nx_mount");
      v21 = 22;
LABEL_134:
      LODWORD(v19) = __na;
      goto LABEL_10;
    }

    if (v70 != (*(v20 + 34) + *(v20 + 35) - 1) % (*(v67 + 104) & 0x7FFFFFFFu))
    {
      v300 = v349[48] + 212;
      log_err("%s:%d: %s checkpoint superblock index %d doesn't match index block was found at: %d\n", v138, v139, v140, v141, v142, v143, v144, "nx_mount");
      v202 = v349;
      goto LABEL_133;
    }

    v145 = nx_metadata_range_add(v349, 0, 1, 0, 1);
    if (v145 || (v145 = nx_metadata_range_add(v349, v20[14], v20[13] & 0x7FFFFFFF, *(v20 + 26) < 0, 0), v145) || (v145 = nx_metadata_range_add(v349, v20[15], *(v20 + 27) & 0x7FFFFFFF, *(v20 + 27) < 0, 0), v145))
    {
      v21 = v145;
      v324 = *(v20 + 34);
      v291 = v349[48] + 212;
      v317 = v20[2];
      log_err("%s:%d: %s xid %lld at index %d failed to load checkpoint metadata ranges (overlap?): %d\n", v146, v147, v148, v149, v150, v151, v152, "nx_mount");
      goto LABEL_10;
    }

    v153 = sub_100055A10(v349, v20);
    if (v153)
    {
      v21 = v153;
      v318 = *(v20 + 34);
      v301 = v349[48] + 212;
      log_err("%s:%d: %s validation failed for checkpoint at index %d: %d\n", v154, v155, v156, v157, v158, v159, v160, "nx_mount");
      goto LABEL_134;
    }

    v346 = v70;
    v332 = v20[2];
    v285 = v349[48] + 212;
    log_debug("%s:%d: %s checkpoint: largest xid %lld, given checkpoint xid %lld @ %d\n", v154, v155, v156, v157, v158, v159, v160, "nx_mount");
    v168 = v349;
    if (__srca[2] != v20[2])
    {
      v316 = v20[2];
      v323 = *(v67 + 16);
      v286 = v349[48] + 212;
      log_err("%s:%d: %s loading older checkpoint, checkpoint xid %lld, superblock xid %lld\n", v161, v162, v163, v164, v165, v166, v167, "nx_mount");
      v168 = v349;
      v334 = 1;
      *(v349 + 643) = 1;
    }

    v169 = sub_100055B1C(v168, v20, 0, 0);
    if (v169)
    {
      v21 = v169;
      v319 = *(v20 + 34);
      v302 = v349[48] + 212;
      log_err("%s:%d: %s data for checkpoint at index %d couldn't be loaded: %d\n", v170, v171, v172, v173, v174, v175, v176, "nx_mount");
      goto LABEL_134;
    }

    memcpy(v349[47], v20, v19);
    v177 = v349;
    *(v349[49] + 400) = *(v349[47] + 88);
    v21 = nx_checkpoint_traverse(v177, 0, 2);
    if (v21)
    {
      v303 = v349[48] + 212;
      log_err("%s:%d: %s failed to fix up checkpoint data: %d\n", v178, v179, v180, v181, v182, v183, v184, "nx_mount");
      goto LABEL_134;
    }

    v21 = spaceman_get(v349, &v347);
    if (v21)
    {
      v320 = v20[2];
      v304 = v349[48] + 212;
      log_err("%s:%d: %s checkpoint xid %lld failed to get spaceman: %d\n", v185, v186, v187, v188, v189, v190, v191, "nx_mount");
      goto LABEL_134;
    }

    v192 = nx_metadata_range_add(v349, *(v347[47] + 168), *(v347[47] + 164) & 0x7FFFFFFF, *(v347[47] + 164) < 0, 0);
    if (v192)
    {
      v21 = v192;
      obj_release(v347);
LABEL_140:
      v321 = v20[2];
      v305 = v349[48] + 212;
      log_err("%s:%d: %s checkpoint xid %lld failed to load spaceman metadata ranges (overlap?): %d\n", v104, v105, v106, v107, v108, v109, v110, "nx_mount");
LABEL_10:
      if (v348)
      {
        _apfs_free(v348, v348[9]);
      }

      if (v20)
      {
        _apfs_free(v20, v19);
      }

      v22 = v349;
      if (v349)
      {
        *(v349 + 627) = 1;
        nx_unmount_internal(v22, 0);
      }

      if (v350)
      {
        obj_cache_destroy(v350);
      }

      if (v351)
      {
        dev_close(v351);
      }

      return v21;
    }

    v21 = nx_metadata_range_add(v349, *(v347[47] + 176), *(v347[47] + 152), *(v347[47] + 152) < 0, 0);
    obj_release(v347);
    if (v21)
    {
      goto LABEL_140;
    }

    v111 = v349;
LABEL_103:
    if (*(v111[47] + 56))
    {
      v287 = v111[48] + 212;
      log_debug("%s:%d: %s unsupported nx_readonly_compatible_features (0x%llx): mount r/o\n", v104, v105, v106, v107, v108, v109, v110, "nx_mount");
      v111 = v349;
      *(v349 + 627) = 1;
    }

    obj_checkpoint_check_for_unknown(v111[49]);
    v200 = v349;
    v201 = *(v349 + 633);
    if ((v88 & v201 & 1) == 0)
    {
      v336 = *(v20 + 36);
      v338 = *(v20 + 34);
      v288 = v349[48] + 212;
      log_debug("%s:%d: %s stable checkpoint indices: desc %d data %d\n", v193, v194, v195, v196, v197, v198, v199, "nx_mount");
      v200 = v349;
      v201 = *(v349 + 633);
    }

    if (v88 & 1 | ((v201 & 1) == 0))
    {
      break;
    }

    obj_cache_reset(v200[49], 0);
    v200[51] = 0;
    v200[92] = 0;
    *(v200 + 53) = 0u;
    *(v200 + 55) = 0u;
    *(v200 + 57) = 0u;
    memcpy(v349[47], v95, v19);
    v88 = 1;
  }

  if (*(v200 + 628) == 1 && ((*(v200 + 631) | v201) & 1) == 0 && (v200[79] & 1) == 0 && !v95[176])
  {
    *(v200 + 165) = (*(v20 + 34) + *(v20 + 35) - 1) % (v20[13] & 0x7FFFFFFFu);
  }

  *(v67 + 136) = 0;
  *(v67 + 144) = 0;
  *(v67 + 1264) &= ~2uLL;
  nx_metadata_range_optimize(v200);
  v203 = v349;
  if (*(v349 + 629) == 1)
  {
    v21 = spaceman_get(v349, &v347);
    if (v21)
    {
LABEL_122:
      v293 = v349[48] + 212;
      log_err("%s:%d: %s failed to set up spaceman for demo mode: %d\n", v204, v205, v206, v207, v208, v209, v210, "nx_mount");
      goto LABEL_134;
    }

    v211 = v349[49];
    if (!v211)
    {
      sub_1000A79D0();
    }

    obj_cache_lock_write(v211);
    v212 = v349;
    v349[52] = 0;
    v21 = obj_clone(v347, 0, v212 + 52, 0, v213, v214, v215, v216);
    obj_cache_unlock_write(v349[49]);
    if (v21)
    {
      obj_release(v347);
      goto LABEL_122;
    }

    obj_ephemeral_set_persistent(v349[52], 0);
    obj_release(v347);
    v203 = v349;
  }

  v21 = tx_mgr_init(v203, v332 + 1, v203 + 50);
  v231 = v349;
  if (v21)
  {
    v307 = v349[48] + 212;
    log_err("%s:%d: %s tx manager initialization failed: %d\n", v224, v225, v226, v227, v228, v229, v230, "nx_mount");
    goto LABEL_134;
  }

  v232 = v349[50];
  *(v232 + 104) = v338;
  *(v232 + 108) = v336;
  if ((*(v231 + 627) & 1) == 0)
  {
    if (*(v231 + 633) & 1) != 0 || *(v231 + 632) == 1 && (v309 = v231[48] + 212, log_info("%s:%d: %s Enabling temporary checkpoints starting with xid %lld.\n", v224, v225, v226, v227, v228, v229, v230, "nx_mount"), v231 = v349, *(v349[47] + 1408) = v332 + 1, (*(v231 + 633)))
    {
      if ((v231[79] & 1) == 0)
      {
        v233 = v231[47];
        v322 = *(v233 + 16);
        v325 = *(v233 + 1408);
        v308 = v231[48] + 212;
        log_info("%s:%d: %s Making temporary checkpoint %lld permanent (start %lld).\n", v224, v225, v226, v227, v228, v229, v230, "nx_mount");
        v20[176] = 0;
        obj_checksum_set_phys(v349, v20, v19, v234, v235);
        v242 = v343;
        if (!v343)
        {
          v21 = 22;
          goto LABEL_170;
        }

        v243 = dev_write(v349[48]);
        if (v243 || (v243 = tx_barrier(v349, 16), v243))
        {
          v21 = v243;
LABEL_170:
          v313 = v349[48] + 212;
          log_err("%s:%d: %s failed to write superblock to block %lld: %d\n", v242, v236, v237, v238, v239, v240, v241, "nx_mount");
          goto LABEL_134;
        }

        v231 = v349;
        *(v349[47] + 1408) = 0;
        v334 = 1;
      }
    }

    if (spaceman_allocation_init(v231))
    {
      v310 = v349[48] + 212;
      log_err("%s:%d: %s failed to set up sm allocation metadata: %d\n", v244, v245, v246, v247, v248, v249, v250, "nx_mount");
    }

    if (v334)
    {
      obj_checksum_set(v349, v251, v252);
      v253 = v349[47];
      v254 = dev_write(v349[48]);
      if (v254)
      {
        v21 = v254;
        v311 = v349[48] + 212;
        log_err("%s:%d: %s failed to write superblock to block 0: %d\n", v255, v256, v257, v258, v259, v260, v261, "nx_mount");
        goto LABEL_134;
      }
    }

    v262 = v349;
    v263 = v349[47];
    v264 = *(v263 + 1384);
    v265 = apfs_source_version_val_full();
    if (v264 < v265)
    {
      *(v263 + 1384) = v265;
    }

    sub_100057528(v262);
    nx_reaper_check_for_work(v349);
  }

  _apfs_free(v20, __na);
  v266 = v349;
  if (*(v349[47] + 1248))
  {
    if ((*(v349 + 627) & 1) == 0)
    {
      v21 = nx_unblock_physical_range(v349);
      v266 = v349;
      if (v21)
      {
        v312 = v349[48] + 212;
        log_err("%s:%d: %s nx_unblock_physical_range failed with error: %d\n", v267, v268, v269, v270, v271, v272, v273, "nx_mount");
        v20 = 0;
        goto LABEL_134;
      }
    }
  }

  *v326 = v266;
  if (v348)
  {
    _apfs_free(v348, v348[9]);
  }

  return 0;
}

void sub_100057528(void *a1)
{
  if (spaceman_scan_free_blocks(a1, 0, 1u))
  {
    v9 = a1[48] + 212;
    log_err("%s:%d: %s *** trim'ing free blocks returned: %d\n", v2, v3, v4, v5, v6, v7, v8, "nx_mount_initiate_free_space_trims");
  }

  spaceman_free_extent_cache_print_stats(a1);
}

void nx_unmount_internal(uint64_t a1, _DWORD *a2)
{
  nx_reaper_shut_down(a1);
  v9 = *(a1 + 400);
  if (v9)
  {
    if ((*(a1 + 627) & 1) == 0)
    {
      tx_unmount(a1);
      v9 = *(a1 + 400);
    }

    tx_mgr_destroy(a1, v9, *(*(a1 + 376) + 36), v4, v5, v6, v7, v8);
  }

  if (a2)
  {
    *a2 = *(a1 + 660);
  }

  v10 = *(a1 + 408);
  if (v10)
  {
    obj_release(v10);
    *(a1 + 408) = 0;
  }

  for (i = 0; i != 32; i += 8)
  {
    v12 = *(a1 + 432 + i);
    if (v12)
    {
      obj_release(v12);
    }
  }

  v13 = *(a1 + 464);
  if (v13)
  {
    btree_delete(v13, 0, 0);
    obj_release(*(a1 + 464));
  }

  v14 = *(a1 + 1088);
  if (v14)
  {
    btree_delete(v14, 0, 0);
    obj_release(*(a1 + 1088));
    *(a1 + 1088) = 0;
  }

  v15 = *(a1 + 384);
  if (v15)
  {
    dev_close(v15);
    *(a1 + 384) = 0;
  }

  v16 = *(a1 + 392);
  if (v16)
  {

    obj_cache_destroy(v16);
  }
}

void log_debug(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (apfs_log_level >= 5)
  {
    appexPrint(&a9, a1);
  }
}

void log_info(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (apfs_log_level >= 4)
  {
    appexPrint(&a9, a1);
  }
}

void log_warn(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (apfs_log_level >= 3)
  {
    appexPrint(&a9, a1);
  }
}

void log_err(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (apfs_log_level >= 2)
  {
    appexPrint(&a9, a1);
  }
}

void log_corrupt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (apfs_log_level >= 1)
  {
    appexPrint(&a9, a2);
  }
}

uint64_t nx_format(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v199 = 0;
  v200 = 0;
  v197 = 0;
  v198 = 0;
  *a4 = 0;
  if (a2)
  {
    v7 = *(a2 + 16);
    v8 = *(a2 + 20);
    v9 = *(a2 + 26);
    v10 = *(a2 + 24);
    v11 = v10 & 3;
    if ((v10 & 3) == 0)
    {
      *(a2 + 24) = v10 | 1;
      v11 = 1;
    }

    v12 = v11 == 2;
  }

  else
  {
    v9 = 0;
    v7 = 0;
    v12 = 0;
    v8 = 1073741826;
  }

  v202 = 0u;
  memset(v201, 0, sizeof(v201));
  v203 = 0u;
  v204 = 0u;
  memset(v205, 0, 48);
  v195 = 0;
  v196 = 0;
  v194 = 0;
  crc32c_init();
  v13 = fskit_dev_init(*(a2 + 32), 2, &v199);
  if (v13)
  {
    v192 = v13;
    strerror(v13);
    log_err("%s:%d: device initialization failed: %d - %s\n", v14, v15, v16, v17, v18, v19, v20, "nx_format");
    v26 = v192;
    goto LABEL_25;
  }

  if (!dev_is_writable(v199))
  {
    log_err("%s:%d: error: device is not writable!\n", v27, v28, v29, v30, v31, v32, v33, "nx_format");
    v26 = 30;
    goto LABEL_25;
  }

  v34 = dev_block_size(v199);
  v35 = dev_block_count(v199);
  v43 = v35;
  if (!v7)
  {
    v44 = v35 * v34;
    if (v44 >> 50)
    {
      v45 = 0x4000;
    }

    else
    {
      v45 = 4096;
    }

    if (v44 >> 59)
    {
      v46 = 0x10000;
    }

    else
    {
      v46 = v45;
    }

    if (v34 <= v46)
    {
      v7 = v46;
    }

    else
    {
      v7 = v34;
    }
  }

  if (v7 <= 4095)
  {
    log_warn("%s:%d: warning: fs block size too small (%d < %d)\n", v36, v37, v38, v39, v40, v41, v42, "nx_format");
LABEL_24:
    v26 = 22;
    goto LABEL_25;
  }

  if (v7 < v34)
  {
    log_warn("%s:%d: warning: fs block size too small for device block size (%d < %d)\n", v36, v37, v38, v39, v40, v41, v42, "nx_format");
    goto LABEL_24;
  }

  if (v7 % v34)
  {
    log_err("%s:%d: error: block size %d is not an even multiple of device block size %d\n", v36, v37, v38, v39, v40, v41, v42, "nx_format");
    goto LABEL_24;
  }

  if (v7 > v34)
  {
    dev_set_block_size(v199);
  }

  v49 = v43 / (v7 / v34);
  v50 = nx_calculate_metadata_parameters(v7, v49, v9, v201);
  if (v50)
  {
    v51 = v50;
    strerror(v50);
    log_err("%s:%d: metadata space calculation failed: %d - %s\n", v52, v53, v54, v55, v56, v57, v58, "nx_format");
LABEL_41:
    v26 = v51;
    goto LABEL_25;
  }

  v59 = obj_cache_create(0xC800u, 0xC350u, v7, &v200);
  if (v59)
  {
    v51 = v59;
    strerror(v59);
    log_err("%s:%d: object cache initialization failed: %d - %s\n", v60, v61, v62, v63, v64, v65, v66, "nx_format");
    goto LABEL_41;
  }

  v196 = 1;
  memset(&v205[1], 0, 40);
  *&v203 = __PAIR64__(v7, v34);
  *(&v204 + 1) = v199;
  v205[0] = 1;
  *(&v203 + 1) = v49;
  *&v204 = v12;
  if (uuid_is_null(a2))
  {
    uuid_generate(&v205[4]);
  }

  else
  {
    uuid_copy(&v205[4], a2);
  }

  bootstrap = obj_create_bootstrap(v200, 0x80000000, 1uLL, &nx_desc, &v203, v7, v196, &v198);
  if (bootstrap)
  {
    v193 = bootstrap;
    strerror(bootstrap);
    log_err("%s:%d: object cache bootstrap failed: %d - %s\n", v68, v69, v70, v71, v72, v73, v74, "nx_format");
    v26 = v193;
    goto LABEL_25;
  }

  v75 = v198;
  *(v198 + 624) = 1;
  v76 = v75[47];
  v77 = v202;
  v76[22].i32[1] = v201[11].i32[2];
  v76[13] = vmovn_s64(*(&v201[10] + 8));
  v76[164] = ((*(&v202 + 1) << 32) | (v77 << 16) | 1);
  *(v75 + 625) = a3 != 0;
  v78 = v200;
  v79 = v76[11];
  *v200[6].__opaque = v75;
  *&v78[6].__opaque[8] = v79;
  v80 = spaceman_create(v75, v201, a3, v196, &v76[19]);
  if (v80)
  {
    v26 = v80;
    strerror(v80);
    log_err("%s:%d: spaceman initialization failed: %d - %s\n", v81, v82, v83, v84, v85, v86, v87, "nx_format");
    goto LABEL_25;
  }

  v88 = spaceman_get(v198, &v197);
  if (!v88)
  {
    if (spaceman_allocation_init(v198))
    {
      log_err("%s:%d: failed to set up sm allocation metadata: %d\n", v96, v97, v98, v99, v100, v101, v102, "nx_format");
    }

    v103 = tx_mgr_init(v198, v196, v198 + 50);
    if (v103)
    {
      v26 = v103;
      strerror(v103);
      log_err("%s:%d: tx manager initialization failed: %d - %s\n", v104, v105, v106, v107, v108, v109, v110, "nx_format");
LABEL_58:
      obj_release(v197);
      goto LABEL_25;
    }

    v196 = 0;
    v111 = tx_enter(v198, &v196);
    if (v111)
    {
      v26 = v111;
      strerror(v111);
      log_err("%s:%d: tx_enter for initialization failed: %d - %s\n", v112, v113, v114, v115, v116, v117, v118, "nx_format");
      goto LABEL_58;
    }

    v119 = v198;
    v120 = v198[47];
    if ((*(v120 + 104) & 0x80000000) != 0)
    {
      v130 = nx_metadata_fragmented_extent_list_tree_store(v198, (v120 + 112), v196);
      if (v130)
      {
        goto LABEL_77;
      }

      v119 = v198;
      v120 = v198[47];
    }

    if ((*(v120 + 108) & 0x80000000) != 0)
    {
      v130 = nx_metadata_fragmented_extent_list_tree_store(v119, (v120 + 120), v196);
      if (v130)
      {
        goto LABEL_77;
      }

      v119 = v198;
    }

    v121 = v197[47];
    if ((*(v121 + 164) & 0x80000000) != 0)
    {
      v130 = nx_metadata_fragmented_extent_list_tree_store(v119, (v121 + 168), v196);
      if (v130)
      {
        goto LABEL_77;
      }

      v119 = v198;
      v121 = v197[47];
    }

    if ((*(v121 + 152) & 0x8000000000000000) == 0)
    {
LABEL_63:
      v122 = nx_metadata_range_add(v119, 0, 1, 0, 1);
      if (v122 || (v122 = nx_metadata_range_add(v198, *(v198[47] + 112), *(v198[47] + 104) & 0x7FFFFFFF, *(v198[47] + 104) < 0, 0), v122) || (v122 = nx_metadata_range_add(v198, *(v198[47] + 120), *(v198[47] + 108) & 0x7FFFFFFF, *(v198[47] + 108) < 0, 0), v122) || (v122 = nx_metadata_range_add(v198, *(v197[47] + 168), *(v197[47] + 164) & 0x7FFFFFFF, *(v197[47] + 164) < 0, 0), v122))
      {
        v26 = v122;
        obj_release(v197);
      }

      else
      {
        v26 = nx_metadata_range_add(v198, *(v197[47] + 176), *(v197[47] + 152), *(v197[47] + 152) < 0, 0);
        obj_release(v197);
        if (!v26)
        {
          nx_metadata_range_optimize(v198);
          v138 = tx_checkpoint_desc_zero(v198, *(v198[47] + 104) & 0x7FFFFFFF);
          if (v138)
          {
            v26 = v138;
            strerror(v138);
            log_err("%s:%d: tx checkpoint descriptor area initialization failed: %d - %s\n", v139, v140, v141, v142, v143, v144, v145, "nx_format");
          }

          else
          {
            v146 = obj_create(v198[49], 0x80000000, 0, &nx_reaper_desc, 0, 0, v196, &v195);
            if (v146)
            {
              v26 = v146;
              strerror(v146);
              log_err("%s:%d: reaper initialization failed: %d - %s\n", v147, v148, v149, v150, v151, v152, v153, "nx_format");
            }

            else
            {
              v154 = obj_oid(v195);
              *(v198[47] + 168) = v154;
              obj_release(v195);
              v155 = omap_create(v198, 0x40000000u, 1u, v8, v196, &v194);
              if (!v155)
              {
                v163 = obj_oid(v194);
                *(v198[47] + 160) = v163;
                obj_release(v194);
                v164 = tx_leave(v198, v196, 0);
                if (v164)
                {
                  v26 = v164;
                  strerror(v164);
                  log_err("%s:%d: tx_leave for omap initialization failed: %d - %s\n", v165, v166, v167, v168, v169, v170, v171, "nx_format");
                  goto LABEL_25;
                }

                v172 = tx_finish(v198, 0);
                if (v172)
                {
                  v26 = v172;
                  strerror(v172);
                  log_err("%s:%d: failed to finish first transaction: %d - %s\n", v175, v176, v177, v178, v179, v180, v181, "nx_format");
                  goto LABEL_25;
                }

                v182 = v198;
                if ((*(v198 + 625) & 1) == 0)
                {
                  obj_checksum_set(v198, v173, v174);
                  v183 = v198[47];
                  v184 = dev_write(v198[48]);
                  if (v184)
                  {
                    v26 = v184;
                    strerror(v184);
                    log_err("%s:%d: failed to write superblock to block 0: %d - %s\n", v185, v186, v187, v188, v189, v190, v191, "nx_format");
                    goto LABEL_25;
                  }

                  v182 = v198;
                }

                v26 = 0;
                *(v182 + 624) = 0;
                *a4 = v182;
                return v26;
              }

              v26 = v155;
              strerror(v155);
              log_err("%s:%d: omap initialization failed: %d - %s\n", v156, v157, v158, v159, v160, v161, v162, "nx_format");
            }
          }

LABEL_69:
          tx_leave(v198, v196, 0);
          goto LABEL_25;
        }
      }

      log_err("%s:%d: failed load container metadata ranges (overlap?): %d\n", v123, v124, v125, v126, v127, v128, v129, "nx_format");
      goto LABEL_69;
    }

    v130 = nx_metadata_fragmented_extent_list_tree_store(v119, (v121 + 176), v196);
    if (!v130)
    {
      v119 = v198;
      goto LABEL_63;
    }

LABEL_77:
    v26 = v130;
    strerror(v130);
    log_err("%s:%d: creation of fragmented metadata physical extent list tree(s) failed: %d - %s\n", v131, v132, v133, v134, v135, v136, v137, "nx_format");
    obj_release(v197);
    goto LABEL_25;
  }

  v26 = v88;
  log_err("%s:%d: failed to get spaceman: %d\n", v89, v90, v91, v92, v93, v94, v95, "nx_format");
LABEL_25:
  if (v198)
  {
    v47 = v198[50];
    if (v47)
    {
      tx_mgr_destroy(v198, v47, v7, v21, v22, v23, v24, v25);
    }
  }

  if (v200)
  {
    obj_cache_destroy(v200);
  }

  if (v199)
  {
    dev_close(v199);
  }

  return v26;
}

void appexPrintInternal(void *a1)
{
  v1 = a1;
  if (qword_1001037A0)
  {
    if (*qword_1001037A0)
    {
      v2 = *qword_1001037A0;
      if ([v1 hasSuffix:@"\n"])
      {
        v3 = [v1 substringToIndex:{objc_msgSend(v1, "length") - 1}];

        v1 = v3;
      }

      [v2 logMessage:v1];
    }

    else
    {
      v2 = fskit_std_log();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_1000A79FC(v2);
      }
    }
  }

  else
  {
    v2 = fskit_std_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1000A7A80(v2);
    }
  }
}

void appexPrint(uint64_t a1, uint64_t a2)
{
  v4 = [NSString alloc];
  v5 = [NSString stringWithUTF8String:a2];
  v6 = [v4 initWithFormat:v5 arguments:a1];

  appexPrintInternal(v6);
}

void appexPrintFixed(uint64_t a1)
{
  v1 = [NSString stringWithUTF8String:a1];
  appexPrintInternal(v1);
}

id doFormat(void *a1, void *a2, char a3, char a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, int a9)
{
  v16 = a1;
  v17 = a2;
  v18 = a7;
  v24 = v18;
  v45 = 0;
  if ((a3 & 1) == 0)
  {
    v25 = [v18 bsdName];
    v26 = nx_format([v25 UTF8String], a6, 0, &v45);

    if (v26)
    {
      goto LABEL_13;
    }
  }

  if (a4)
  {
    v46 = 0;
    v47 = 0;
    if (nx_mount(a8, 0, &v47, v19, v20, v21, v22, v23))
    {
      goto LABEL_13;
    }

    v32 = apfs_deletefs(v47, (a9 - 1), &v46, v27, v28, v29, v30, v31);
    v33 = v47;
    if (!v32)
    {
      v34 = nx_reaper_wait(v47, v46);
      nx_unmount(v47);
      if (!v34)
      {
        goto LABEL_18;
      }

LABEL_13:
      v42 = fs_errorForPOSIXError();
      goto LABEL_14;
    }

LABEL_12:
    nx_unmount(v33);
    goto LABEL_13;
  }

  v46 = 0;
  v47 = 0;
  if (nx_mount(a8, 0, &v47, v19, v20, v21, v22, v23))
  {
    goto LABEL_13;
  }

  if (apfs_newfs(v47, a5, 0, 0, &v46))
  {
    v33 = v47;
    goto LABEL_12;
  }

  v44 = (*(v46[47] + 36) + 1);
  log_info("%s:%d: created a new volume with index : %d", v35, v36, v37, v38, v39, v40, v41, "do_userland_create");
  obj_release(v46);
  nx_unmount(v47);
LABEL_18:
  [v17 setCompletedUnitCount:2];
  v42 = 0;
LABEL_14:

  return v42;
}

id doCheck(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (fsck_apfs_check_fs(a4))
  {
    v6 = fs_errorForPOSIXError();
  }

  else
  {
    v6 = 0;
  }

  [v5 setCompletedUnitCount:2];

  return v6;
}

void sub_100058A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100058AA4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100058ABC(uint64_t a1, void *a2, void *a3)
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

void sub_1000594CC(id *a1, uint64_t a2, uint64_t a3)
{
  v4 = doCheck(a1, a1[5], a3, (a1 + 7));
  [a1[4] didCompleteWithError:v4];
  v5 = fskit_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[APFSFileSystem startCheckWithTask:options:error:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: done", &v7, 0xCu);
  }

  free(a1[6]);
  qword_1001037A0 = 0;
  free(a1[19]);
  free(a1[20]);
  v6 = a1[18];
  if (v6)
  {
    free(*v6);
    free(a1[18]);
  }
}

void sub_100059CB4(uint64_t a1)
{
  v2 = doFormat(*(a1 + 32), *(a1 + 40), *(a1 + 612), *(a1 + 613), a1 + 56, a1 + 552, *(a1 + 48), *(a1 + 592), *(a1 + 608));
  [*(a1 + 32) didCompleteWithError:v2];
  v3 = fskit_std_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[APFSFileSystem startFormatWithTask:options:error:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: done", buf, 0xCu);
  }

  free(*(a1 + 600));
  qword_1001037A0 = 0;
  v4 = *(a1 + 592);
  if (v4)
  {
    free(*v4);
    free(*(a1 + 592));
  }
}

char *purgeable_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a1 && (v10 = *(a1 + 40), (*(v10 + 57) & 2) != 0))
  {
    v12 = *(v10 + 176);
    v13 = memory_storage_limit(0x64u, 0x38400000uLL, 0x5A00000uLL);
    byte_1001037A8 = BYTE1(*(*(a1 + 40) + 56)) & 1;
    bitmap_store_init(&unk_1001037B0, v12, v13);
    if (!tree_init_ext(&unk_100103818, 0, 0, 0x8000000, 2, 0, 0, 4096, 8, 9, 0, 0, uint64_key_compare))
    {
      tree_create(&unk_100103818, 0, 64);
    }

    result = memory_storage_register_tree(&unk_100103818, "purgeable", purgeable_abort);
    if (result)
    {
      fsck_printf_warn("failed to register the purgeable tree in the fsck memory storage\n", v14, v15, v16, v17, v18, v19, v20, v21);

      return fsck_fail_func(0x5C1, 12);
    }
  }

  else
  {

    return fsck_printf_debug("skipping purgeable cross checks\n", a2, a3, a4, a5, a6, a7, a8, a9);
  }

  return result;
}

uint64_t purgeable_abort()
{
  bitmap_store_destroy(&unk_1001037B0);

  return tree_destroy(&unk_100103818, 0);
}

uint64_t purgeable_register(unint64_t a1)
{
  if (!bitmap_store_inited(&unk_1001037B0))
  {
    return 0;
  }

  if (byte_1001037A8 != 1)
  {
    v11 = mark_range(&unk_1001037B0, a1, 1uLL, 1);
    if (v11 != 17)
    {
LABEL_8:
      v10 = v11;
      goto LABEL_9;
    }

LABEL_7:
    v11 = sub_10005A11C(a1);
    goto LABEL_8;
  }

  v2 = check_range(&unk_1001037B0, a1, 1uLL, 1);
  if (!v2)
  {
    v10 = mark_range(&unk_1001037B0, a1, 1uLL, 0);
    if (!v10)
    {
      return v10;
    }

    fsck_printf_err("can't unmark purgeable (file_id %llu) for cross checks\n", v27, v28, v29, v30, v31, v32, v33, a1);
    fsck_fail_func(0x5C3, 92);
LABEL_10:
    if (v10 == 34)
    {
      strerror(34);
      fsck_printf_warn("failed to cross check purgeable record: %d (%s)\n", v12, v13, v14, v15, v16, v17, v18, 34);
      fsck_fail_func(0x5C5, 0);
    }

    else
    {
      if (v10 != 12)
      {
        strerror(v10);
        fsck_printf_err("failed to cross check purgeable record: %d (%s)\n", v20, v21, v22, v23, v24, v25, v26, v10);
        fsck_fail_func(0x5C6, v10);
        return v10;
      }

      fsck_printf_warn("aborting purgeable cross checks - out of memory\n", v3, v4, v5, v6, v7, v8, v9, v34);
      fsck_fail_func(0x5C4, 12);
      bitmap_store_destroy(&unk_1001037B0);
      tree_destroy(&unk_100103818, 0);
    }

    return 0;
  }

  v10 = v2;
  if (v2 == 17)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v10)
  {
    goto LABEL_10;
  }

  return v10;
}

uint64_t sub_10005A11C(uint64_t a1)
{
  v14 = 0;
  v12 = a1;
  v13 = 0;
  v1 = tree_insert(&unk_100103818, 0, &v12, 8, &v13, 9);
  v2 = v1;
  if (v1)
  {
    v3 = v12;
    strerror(v1);
    fsck_printf_err("failed to insert purgeable (file_id %llu): %s (%d)\n", v4, v5, v6, v7, v8, v9, v10, v3);
    fsck_fail_func(0x5C2, v2);
  }

  return v2;
}

uint64_t purgeable_register_inode(uint64_t a1, unint64_t a2)
{
  if (!bitmap_store_inited(&unk_1001037B0))
  {
    return 0;
  }

  if (byte_1001037A8 == 1)
  {
    v4 = mark_range(&unk_1001037B0, a2, 1uLL, 1);
    if (v4 == 17)
    {
      fsck_printf_err("purgeable inode (id %llu) was unexpectedly registered twice\n", v5, v6, v7, v8, v9, v10, v11, a2);
      v12 = 92;
      fsck_fail_func(0x5C7, 92);
LABEL_14:
      strerror(v12);
      fsck_printf_err("failed to cross check purgeable inode: %d (%s)\n", v27, v28, v29, v30, v31, v32, v33, v12);
      fsck_fail_func(0x5CC, v12);
      return v12;
    }

    v12 = v4;
    goto LABEL_10;
  }

  v13 = check_range(&unk_1001037B0, a2, 1uLL, 1);
  if (!v13)
  {
    v12 = mark_range(&unk_1001037B0, a2, 1uLL, 0);
    if (!v12)
    {
      return v12;
    }

    fsck_printf_err("can't unmark purgeable (file_id %llu) for cross checks\n", v35, v36, v37, v38, v39, v40, v41, a2);
    fsck_fail_func(0x5CA, 92);
    goto LABEL_11;
  }

  v12 = v13;
  if (v13 != 17)
  {
LABEL_10:
    if (v12)
    {
      goto LABEL_11;
    }

    return v12;
  }

  fsck_printf_warn("purgeable inode (id %llu) is missing a purgeable record\n", v5, v6, v7, v8, v9, v10, v11, a2);
  fsck_fail_func(0x5C8, -2);
  v19 = inode_repair_clear_internal_flags(a1 + 768, a2, 0x80000, v14, v15, v16, v17, v18);
  v12 = v19;
  if (v19)
  {
    strerror(v19);
    fsck_printf_err("inode (id %llu): unable to add repair to unmark purgeable: %d (%s)\n", v20, v21, v22, v23, v24, v25, v26, a2);
    fsck_fail_func(0x5C9, v12);
LABEL_11:
    if (v12 != 12)
    {
      goto LABEL_14;
    }

    fsck_printf_warn("aborting purgeable cross checks - out of memory\n", v5, v6, v7, v8, v9, v10, v11, v42);
    fsck_fail_func(0x5CB, 12);
    bitmap_store_destroy(&unk_1001037B0);
    tree_destroy(&unk_100103818, 0);
    return 0;
  }

  return v12;
}

uint64_t purgeable_finalize(uint64_t a1, void *a2, uint64_t a3)
{
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v39 = 0;
  v40 = 0;
  v42 = 0;
  v41 = 0;
  bitmap_store_iterate(&unk_1001037B0, sub_10005A660, a3);
  v38 = 0;
  tree_key_count(&unk_100103818, 0, &v38);
  if (v38)
  {
    v6 = malloc_type_calloc(1uLL, 0x340uLL, 0x30AFF060uLL);
    v7 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x37CBAB78uLL);
    tree_for_jobj = get_tree_for_jobj(a1, a2, 3, &v43, v8, v9, v10, v11);
    if (!v7 || !v6 || !v43)
    {
      fsck_printf_err("unable to init fsroot tree to enque purgeable repairs\n", v12, v13, v14, v15, v16, v17, v18, v31);
      fsck_fail_func(0x5D4, tree_for_jobj);
      goto LABEL_19;
    }

    v32 = a1;
    v33 = a2;
  }

  else
  {
    v32 = a1;
    v33 = a2;
    v7 = 0;
    v6 = 0;
  }

  v36 = 9;
  v37 = 8;
  if (!tree_lookup_min(&unk_100103818, 0, &v48, &v37, &v46, &v36))
  {
    while (1)
    {
      *v6 = v48 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
      v45 = 8;
      v44 = 3808;
      v20 = tree_lookup(v43, 0, 0, v6, &v45, 0x340u, v7, &v44);
      if (!v20)
      {
        break;
      }

      v21 = v20;
      if (v20 == 2)
      {
        goto LABEL_12;
      }

      v22 = v48;
      strerror(v20);
      fsck_printf_err("unable to find inode (id %llu): %d (%s)\n", v23, v24, v25, v26, v27, v28, v29, v22);
      fsck_fail_func(0x5D5, v21);
LABEL_14:
      v34 = 9;
      v35 = 8;
      if (tree_lookup(&unk_100103818, 0, 2u, &v48, &v35, 8u, &v46, &v34))
      {
        goto LABEL_15;
      }
    }

    v46 = *(v7 + 5);
    if ((*(v7 + 50) & 0x18) == 0)
    {
LABEL_12:
      v47 |= 1u;
    }

    tree_insert(&unk_100103818, 0, &v48, 8, &v46, 9);
    goto LABEL_14;
  }

LABEL_15:
  v38 = 0;
  tree_key_count(&unk_100103818, 0, &v38);
  if (v38)
  {
    LODWORD(v40) = 16;
    v39 = 0xE000000000000007;
    tree_for_jobj = fsroot_iterate(v32, v33, 0, 1, &v39, 28, sub_10005A754, a3);
  }

  else
  {
    tree_for_jobj = 0;
  }

LABEL_19:
  free(v6);
  free(v7);
  bitmap_store_destroy(&unk_1001037B0);
  tree_destroy(&unk_100103818, 0);
  return tree_for_jobj;
}

uint64_t sub_10005A660(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 + a1 <= a1)
  {
    return 0;
  }

  v9 = a2;
  v10 = a1;
  do
  {
    if (byte_1001037A8 == 1)
    {
      fsck_printf_warn("purgeable inode (id %llu) is missing a purgeable record\n", a2, a3, a4, a5, a6, a7, a8, v10);
      fsck_fail_func(0x5D2, -2);
      v16 = inode_repair_clear_internal_flags(a3, v10, 0x80000, v11, v12, v13, v14, v15);
      v17 = v16;
      if (v16)
      {
        strerror(v16);
        fsck_printf_err("inode (id %llu): unable to add repair to unmark purgeable: %d (%s)\n", v18, v19, v20, v21, v22, v23, v24, v10);
        fsck_fail_func(0x5D3, v17);
      }
    }

    else
    {
      v17 = sub_10005A11C(v10);
      if (v17)
      {
        return v17;
      }
    }

    ++v10;
    --v9;
  }

  while (v9);
  return v17;
}

uint64_t sub_10005A754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = 0;
  v57 = 0;
  v59 = *(a1 + 20);
  v55 = 9;
  v56 = 8;
  v7 = tree_lookup(&unk_100103818, 0, 0, &v59, &v56, 8u, &v57, &v55);
  if (v7 == 2)
  {
    return 0;
  }

  v15 = v7;
  if (v7)
  {
    v17 = *(a1 + 20);
    strerror(v7);
    fsck_printf_err("failed to search purgeable record (file id %llu) in the fsck_apfs tree: %d (%s)\n", v18, v19, v20, v21, v22, v23, v24, v17);
    v25 = 1489;
    goto LABEL_11;
  }

  if (v58)
  {
    v51 = *(a1 + 20);
    fsck_printf_warn("found an orphan purgeable record (atime %llu, file_id %llu)\n", v8, v9, v10, v11, v12, v13, v14, *(a1 + 12));
    fsck_fail_func(0x5CD, -2);
    v15 = sub_10005A8E4(a5, *(a1 + 20), *(a1 + 12), v26, v27, v28, v29, v30);
    if (!v15)
    {
      return v15;
    }

    v52 = *(a1 + 12);
    fsck_printf_err("failed to enqueue purgeable record (file id %llu, atime %llu) for remove\n", v31, v32, v33, v34, v35, v36, v37, *(a1 + 20));
    v25 = 1486;
LABEL_11:
    fsck_fail_func(v25, v15);
    return v15;
  }

  v16 = *(a1 + 12);
  if (v57 != v16)
  {
    v53 = *(a1 + 20);
    fsck_printf_warn("purgeable record (atime %llu, file_id %llu) is different than inode atime (%llu)\n", v8, v9, v10, v11, v12, v13, v14, v16);
    fsck_fail_func(0x5CF, -2);
    v15 = sub_10005A8E4(a5, *(a1 + 20), *(a1 + 12), v38, v39, v40, v41, v42);
    if (!v15)
    {
      return v15;
    }

    v54 = *(a1 + 12);
    fsck_printf_err("failed to enqueue purgeable record (file id %llu, atime %llu) for remove\n", v43, v44, v45, v46, v47, v48, v49, *(a1 + 20));
    v25 = 1488;
    goto LABEL_11;
  }

  return 0;
}

uint64_t sub_10005A8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 0xE000000000000007;
  v10 = 16;
  v11 = a3;
  v12 = a2;
  if (a1)
  {
    return fsck_repairs_add(a1, 7, 0, 0, 0, &v9, 0x1Cu, 0, 0);
  }

  return print_snapshot_warning(0, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t fsck_userfs_get_keybag(uint64_t a1, int a2, int a3, unsigned __int8 *src)
{
  *dst = 0u;
  memset(v13, 0, sizeof(v13));
  v11[2] = 0;
  v11[0] = dst;
  uuid_copy(dst, src);
  uuid_copy(v13, src);
  v11[1] = 32;
  *v9 = 0u;
  v10 = 0u;
  memset(v8, 0, sizeof(v8));
  v6 = sub_10005AA60(v8, v11);
  if (!v6)
  {
    v6 = fsck_dev_raw_read(a1);
    free(v9[1]);
  }

  return v6;
}

uint64_t sub_10005AA60(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = malloc_type_calloc(1uLL, v4 + 20, 0x1000040A86A77D5uLL);
  v6 = v5;
  if (v5)
  {
    v5[4] = v4;
    v5[5] = v4;
    memcpy(v5 + 10, v3, v4);
    result = 0;
    *(v6 + 1) |= 0x10u;
  }

  else
  {
    result = 12;
  }

  *(a1 + 72) = v6;
  return result;
}

uint64_t fsck_meta_crypto_state_unwrap(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  *__s1 = 0u;
  v67 = 0u;
  v6 = AKS_FV_service();
  memset(v65, 0, sizeof(v65));
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v55 = 0;
  v56 = 0;
  if (!*(state + 72))
  {
    v13 = 22;
    v15 = strerror(22);
    fsck_printf_err("Failed to get password for encrypted volume from provided file descriptor: %s\n", v16, v17, v18, v19, v20, v21, v22, v15);
    return v13;
  }

  v7 = v6;
  v62 = 0;
  v63 = 0;
  v60 = 0;
  v61 = 0;
  __strlcpy_chk();
  v64[0] = __s1;
  v64[1] = strnlen(__s1, 0x80uLL);
  v11 = sub_10005ADB8(a1, *(a1[1] + 1296), *(a1[1] + 1304), (a1[1] + 72), &v55, v8, v9, v10);
  v12 = v55;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v24 = sub_10005AEA8(v55 + 32, (*(a2 + 40) + 240), 2, 0);
    if (v24)
    {
      v32 = *(v24 + 18);
      v62 = v24 + 24;
      v63 = v32;
      v33 = sub_10005AEA8(v12 + 32, (*(a2 + 40) + 240), 3, 0);
      if (v33)
      {
        v41 = sub_10005ADB8(a1, *(v33 + 24), *(v33 + 32), (*(a2 + 40) + 240), &v56, v38, v39, v40);
        if (v41)
        {
          v13 = v41;
          v14 = v56;
        }

        else
        {
          v57 = malloc_type_calloc(1uLL, 0x40uLL, 0xDCEA155CuLL);
          v14 = v56;
          if (v57)
          {
            v42 = 0;
            v58 = 64;
            LODWORD(v59) = 0;
            while (1)
            {
              v43 = sub_10005AEA8(v14 + 32, byte_1000B3150, 3, v42);
              if (!v43)
              {
                break;
              }

              v42 = v43;
              v44 = *(v43 + 18);
              v60 = v43 + 24;
              v61 = v44;
              if (!(*(v7 + 8))(v65, v64, &v60, &v62, &v57))
              {
                v13 = sub_10005AA60(a3, &v57);
                goto LABEL_5;
              }
            }

            v13 = 1;
            v45 = strerror(1);
            fsck_printf_err("Failed to unwrap encrypted volume keybag using the provided password: %s\n", v46, v47, v48, v49, v50, v51, v52, v45);
          }

          else
          {
            v13 = 12;
          }
        }
      }

      else
      {
        v54 = *(a2 + 40) + 704;
        fsck_printf_err("Failed to get keybag entry with tag %d for volume %s\n", v34, v35, v36, v37, v38, v39, v40, 3);
        v14 = 0;
        v13 = 2;
      }

      goto LABEL_5;
    }

    v13 = 2;
    v53 = *(a2 + 40) + 704;
    fsck_printf_err("Failed to get keybag entry with tag %d for volume %s\n", v25, v26, v27, v28, v29, v30, v31, 2);
  }

  v14 = 0;
LABEL_5:
  free(v12);
  free(v14);
  free(v57);
  return v13;
}

uint64_t sub_10005ADB8(uint64_t *a1, size_t a2, size_t count, unsigned __int8 *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (count >> 20 || (v8 = count, v9 = a2, a2 = *(a1[1] + 36), count * a2 >= 0x100000))
  {
    fsck_printf_err("Keybag size is too large\n", a2, count, a4, a5, a6, a7, a8, v33);
    return 92;
  }

  else
  {
    v13 = malloc_type_calloc(count, a2, 0xE829BD6FuLL);
    if (v13)
    {
      v21 = v13;
      keybag = fsck_userfs_get_keybag(*a1, v9, v8, a4);
      v23 = keybag;
      if (keybag)
      {
        v24 = strerror(keybag);
        fsck_printf_err("Failed to get keybag : %s\n", v25, v26, v27, v28, v29, v30, v31, v24);
        free(v21);
      }

      else
      {
        *a5 = v21;
      }
    }

    else
    {
      fsck_printf_err("Failed to allocate memory for keybag\n", v14, v15, v16, v17, v18, v19, v20, v33);
      return 12;
    }
  }

  return v23;
}

unint64_t sub_10005AEA8(uint64_t a1, unsigned __int8 *uu, int a3, uint64_t a4)
{
  v6 = a1 + *(a1 + 4);
  if (a4)
  {
    v7 = *(a4 + 18);
    v8 = v7 + 24;
    v9 = v7 - ((v7 + 24) & 0xF) + 40;
    if ((v8 & 0xF) == 0)
    {
      v9 = v8;
    }

    v10 = a4 + v9;
  }

  else
  {
    v10 = a1 + 16;
  }

  while (v10 < v6)
  {
    if (*(v10 + 16) == a3 && (uuid_is_null(uu) || !uuid_compare(uu, v10)))
    {
      return v10;
    }

    v11 = *(v10 + 18);
    v12 = v11 + 24;
    v13 = v11 - ((v11 + 24) & 0xF) + 40;
    if ((v12 & 0xF) == 0)
    {
      v13 = v12;
    }

    v10 += v13;
  }

  return 0;
}

void bitmap_store_init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!tree_init_ext(a1, 0, 0, 0x8000000, 2, 0, 0, 4096, 8, 128, 0, 0, uint64_key_compare))
  {
    tree_create(a1, 0, 64);
  }

  v6 = *(a1 + 24);
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = -1;
  }

  if (v6 > a3)
  {
    v8 = -1;
  }

  else
  {
    v8 = a3 / v6;
  }

  *(a1 + 64) = v7;
  *(a1 + 72) = v8;
  *(a1 + 96) = 1024;
  v9 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
  *(a1 + 88) = v9;
  if (v9)
  {
    v10 = v9;
    v11 = *(a1 + 96);
    v12 = v11 - 1;
    if ((v11 - 1) > 7)
    {
      v14 = v12 >> 3;
      *v9 = 0;
      if (v12 >> 3 >= 2)
      {
        bzero(v9 + 1, (v14 - 1));
      }

      v13 = 510 << (v12 & 7);
      v10 += v14;
    }

    else
    {
      v13 = 255 << v11;
    }

    *v10 &= v13;
  }
}

void bitmap_store_destroy(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    free(v2);
    *(a1 + 88) = 0;
  }

  if (*(a1 + 56))
  {

    tree_destroy(a1, 0);
  }
}

uint64_t get_bitmap_for_range(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((a2 & 0x3F) != 0)
  {
    sub_10005BD00();
  }

  v4 = a3;
  if ((a3 & 0x3F) != 0)
  {
    sub_10005BD2C();
  }

  if (!a4)
  {
    sub_10005BD58();
  }

  if (!a3)
  {
    return 0;
  }

  v6 = a2;
  v8 = 0;
  memset(v11, 0, sizeof(v11));
  while (1)
  {
    result = sub_10005B210(a1, v6, v11);
    if (result)
    {
      break;
    }

    if (v4 >= 1024 - (v6 & 0x3FF))
    {
      v10 = 1024 - (v6 & 0x3FF);
    }

    else
    {
      v10 = v4;
    }

    memcpy((a4 + 8 * v8), v11 + ((v6 >> 3) & 0x78), v10 >> 3);
    v6 += v10;
    v8 += v10 >> 6;
    v4 -= v10;
    if (!v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10005B210(uint64_t a1, unint64_t a2, int8x16_t *a3)
{
  v6 = a2 >> 10;
  v23 = a2 >> 10;
  v21 = 128;
  v22 = 8;
  v7 = tree_lookup(a1, 0, 0, &v23, &v22, 8u, a3, &v21);
  v8 = v7;
  if ((v7 & 0xFFFFFFFD) != 0)
  {
    v9 = v23;
    strerror(v7);
    fsck_printf_err("failed to find node at segment (%llu) : error %s\n", v10, v11, v12, v13, v14, v15, v16, v9);
    fsck_fail_func(0x363, v8);
  }

  if (v8 == 2)
  {
    v17 = *(a1 + 88);
    if (v17 && *(a1 + 96) > v6 && ((*(v17 + (a2 >> 13)) >> ((a2 >> 10) & 7)) & 1) != 0)
    {
      v18 = 255;
    }

    else
    {
      v18 = 0;
    }

    v8 = 0;
    v19 = vdupq_n_s8(v18);
    a3[6] = v19;
    a3[7] = v19;
    a3[4] = v19;
    a3[5] = v19;
    a3[2] = v19;
    a3[3] = v19;
    *a3 = v19;
    a3[1] = v19;
  }

  return v8;
}

uint64_t range_ffs(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t *a4)
{
  v6 = a2;
  memset(&v12, 0, 128);
  if (sub_10005B210(a1, a2, &v12))
  {
    sub_10005BD84();
  }

  if (!a3)
  {
    return 0;
  }

  for (i = (v6 >> 6) & 0xF; ; ++i)
  {
    if (i >= 0x10)
    {
      if (sub_10005B210(a1, v6, &v12))
      {
        sub_10005BDB0();
      }

      i = (v6 >> 6) & 0xF;
    }

    v9 = 64 - (v6 & 0x3F);
    if (a3 < v9)
    {
      v9 = a3;
    }

    v10 = (0xFFFFFFFFFFFFFFFFLL >> -((v6 & 0x3F) + v9)) & (-1 << v6) & v12.i64[i];
    if (v10)
    {
      break;
    }

    v6 += v9;
    a3 -= v9;
    if (!a3)
    {
      return 0;
    }
  }

  *a4 = __clz(__rbit64(v10)) | v6 & 0xFFFFFFFFFFFFFFC0;
  return 1;
}

uint64_t range_ffc(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t *a4)
{
  v6 = a2;
  memset(&v13, 0, 128);
  if (sub_10005B210(a1, a2, &v13))
  {
    sub_10005BDDC();
  }

  if (!a3)
  {
    return 0;
  }

  for (i = (v6 >> 6) & 0xF; ; ++i)
  {
    if (i >= 0x10)
    {
      if (sub_10005B210(a1, v6, &v13))
      {
        sub_10005BE08();
      }

      i = (v6 >> 6) & 0xF;
    }

    v9 = 64 - (v6 & 0x3F);
    if (a3 < v9)
    {
      v9 = a3;
    }

    v10 = (0xFFFFFFFFFFFFFFFFLL >> (-(v6 & 0x3F) - v9)) & (-1 << v6);
    v11 = v13.i64[i] & v10;
    if (v11 != v10)
    {
      break;
    }

    v6 += v9;
    a3 -= v9;
    if (!a3)
    {
      return 0;
    }
  }

  *a4 = __clz(__rbit64(v11 ^ v10)) | v6 & 0xFFFFFFFFFFFFFFC0;
  return 1;
}

uint64_t mark_range(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v6 = a2;
  memset(&v22, 0, 128);
  result = sub_10005B210(a1, a2, &v22);
  if (!result)
  {
    if (a3)
    {
      v14 = (v6 >> 6) & 0xF;
      v15 = v6;
      while (1)
      {
        if (v14 >= 0x10)
        {
          result = sub_10005B6E0(a1, v15, &v22, v9, v10, v11, v12, v13);
          if (result)
          {
            return result;
          }

          result = sub_10005B210(a1, v6, &v22);
          if (result)
          {
            return result;
          }

          v14 = (v6 >> 6) & 0xF;
          v15 = v6;
        }

        v16 = 64 - (v6 & 0x3F);
        if (a3 < v16)
        {
          v16 = a3;
        }

        v17 = (0xFFFFFFFFFFFFFFFFLL >> (-(v6 & 0x3F) - v16)) & (-1 << v6);
        v18 = v22.i64[v14];
        v19 = a4 ? 0 : (0xFFFFFFFFFFFFFFFFLL >> (-(v6 & 0x3F) - v16)) & (-1 << v6);
        if ((v18 & v17) != v19)
        {
          break;
        }

        v20 = v18 & ~v17;
        v21 = v18 | v17;
        if (!a4)
        {
          v21 = v20;
        }

        v22.i64[v14] = v21;
        v6 += v16;
        ++v14;
        a3 -= v16;
        if (!a3)
        {
          return sub_10005B6E0(a1, v15, &v22, v9, v10, v11, v12, v13);
        }
      }

      return 17;
    }

    else
    {
      v15 = v6;
      return sub_10005B6E0(a1, v15, &v22, v9, v10, v11, v12, v13);
    }
  }

  return result;
}

uint64_t sub_10005B6E0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 64) <= a2)
  {
    v41 = *(a1 + 64);
    fsck_printf_warn("bitmap store: address %llu is beyond maximum allowed %llu\n", a2, a3, a4, a5, a6, a7, a8, a2);
    return 34;
  }

  v10 = a1;
  v42 = 0;
  tree_node_count(a1, 0, &v42);
  if (v42 >= *(v10 + 72))
  {
    if ((*(v10 + 80) & 1) == 0)
    {
      fsck_printf_warn("bitmap store: reached limit of %llu B-tree nodes\n", v11, v12, v13, v14, v15, v16, v17, *(v10 + 72));
    }

    *(v10 + 80) = 1;
    return 12;
  }

  else
  {
    if (bitmap_range_is_set(a3, 0, 1024) && (v18 = *(v10 + 88)) != 0 && !sub_10005BBC4(v10, a2 >> 10))
    {
      v28 = *(v10 + 88);
      v29 = a2 >> 13;
      v30 = *(v28 + (a2 >> 13)) | (1 << ((a2 >> 10) & 7));
    }

    else
    {
      if (!bitmap_range_is_clear(a3, 0, 1024, v18) || !*(v10 + 88) || sub_10005BBC4(v10, a2 >> 10))
      {
        v42 = a2 >> 10;
        v19 = tree_insert(v10, 0, &v42, 8, a3, 128);
        v10 = v19;
        if (v19)
        {
          v20 = v42;
          strerror(v19);
          fsck_printf_err("failed to insert node at segment (%llu) error : %s\n", v21, v22, v23, v24, v25, v26, v27, v20);
          fsck_fail_func(0x1C9, v10);
        }

        return v10;
      }

      v28 = *(v10 + 88);
      v29 = a2 >> 13;
      v30 = *(v28 + (a2 >> 13)) & ~(1 << ((a2 >> 10) & 7));
    }

    *(v28 + v29) = v30;
    v42 = a2 >> 10;
    v31 = tree_remove(v10, 0, &v42, 8);
    LODWORD(v10) = v31;
    if ((v31 & 0xFFFFFFFD) != 0)
    {
      v32 = v42;
      strerror(v31);
      fsck_printf_err("failed to remove node at segment (%llu) error : %s\n", v33, v34, v35, v36, v37, v38, v39, v32);
      fsck_fail_func(0x1CA, v10);
    }

    if (v10 == 2)
    {
      return 0;
    }

    else
    {
      return v10;
    }
  }
}

uint64_t check_range(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v6 = a2;
  memset(&v13, 0, 128);
  result = sub_10005B210(a1, a2, &v13);
  if (!result)
  {
    v9 = (v6 >> 6) & 0xF;
    while (a3)
    {
      if (v9 >= 0x10)
      {
        result = sub_10005B210(a1, v6, &v13);
        if (result)
        {
          return result;
        }

        v9 = (v6 >> 6) & 0xF;
      }

      v10 = 64 - (v6 & 0x3F);
      if (a3 < v10)
      {
        v10 = a3;
      }

      v11 = (0xFFFFFFFFFFFFFFFFLL >> (-(v6 & 0x3F) - v10)) & (-1 << v6);
      v12 = v13.i64[v9] & v11;
      if (!a4)
      {
        v11 = 0;
      }

      a3 -= v10;
      v6 += v10;
      ++v9;
      if (v12 != v11)
      {
        return 17;
      }
    }

    return 0;
  }

  return result;
}

uint64_t bitmap_store_iterate(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v27[0] = 0;
  memset(v26, 0, sizeof(v26));
  if (*(a1 + 88) && (v6 = *(a1 + 96), v6 >= 8))
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = *(a1 + 88);
      v11 = *(v10 + v9);
      if (*(v10 + v9))
      {
        break;
      }

LABEL_13:
      ++v9;
      v8 += 0x2000;
      if (v9 >= v6 >> 3)
      {
        goto LABEL_3;
      }
    }

    v12 = 0;
    v13 = v8;
    while (1)
    {
      if ((v11 >> v12))
      {
        result = a2(v13, 1024, a3);
        if (result)
        {
          break;
        }
      }

      ++v12;
      v13 += 1024;
      if (v12 == 8)
      {
        v6 = *(a1 + 96);
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_3:
    v24 = 128;
    v25 = 8;
    if (tree_lookup_min(a1, 0, v27, &v25, v26, &v24))
    {
      return 0;
    }

    else
    {
      do
      {
        v14 = 0;
        v15 = v27[0] << 10;
        do
        {
          v16 = *(v26 + v14);
          if (v16)
          {
            v17 = 0;
            v18 = 1;
            do
            {
              if ((v18 & v16) != 0)
              {
                v19 = 0;
                do
                {
                  v20 = (v16 & (2 * v18)) == 0;
                  v18 *= 2;
                  ++v19;
                }

                while (!v20 && v19 + v17 < 0x40);
                result = a2(v17 | (v15 + (v14 << 6)), v19, a3);
                if (result)
                {
                  return result;
                }

                LODWORD(v17) = v17 + v19;
              }

              v18 *= 2;
              v17 = v17 + 1;
            }

            while (v17 < 0x40);
          }

          ++v14;
        }

        while (v14 != 16);
        v22 = 128;
        v23 = 8;
        v21 = tree_lookup(a1, 0, 2u, v27, &v23, 8u, v26, &v22);
        result = 0;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t sub_10005BBC4(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 96);
  if (v2 > a2)
  {
    return 0;
  }

  v5 = *(a1 + 88);
  v6 = 1 << -__clz(a2);
  v7 = malloc_type_realloc(v5, (v6 + 7) >> 3, 0x100004077774924uLL);
  if (v7)
  {
    v8 = v7;
    v9 = v6 - 1;
    v10 = v2 >> 3;
    v11 = 0xFFu >> (8 - (v2 & 7));
    if (v2 >> 3 == (v6 - 1) >> 3)
    {
      v12 = v11 | (510 << (v9 & 7));
      v13 = v2 >> 3;
    }

    else
    {
      v13 = v9 >> 3;
      v21 = &v7[v10];
      *v21 &= v11;
      if (v10 + 1 < v9 >> 3)
      {
        bzero(v21 + 1, (v13 - v10 - 2) + 1);
      }

      v12 = 510 << (v9 & 7);
    }

    v3 = 0;
    v8[v13] &= v12;
    *(a1 + 88) = v8;
    *(a1 + 96) = v6;
  }

  else
  {
    free(v5);
    fsck_printf_err("failed to allocate memory for bitmap store\n", v14, v15, v16, v17, v18, v19, v20, v23);
    v3 = 12;
    fsck_fail_func(0x3B2, 12);
  }

  return v3;
}

unint64_t memory_storage_limit(unsigned int a1, unint64_t a2, unint64_t a3)
{
  v8 = 8;
  v9 = 0;
  if (sysctlbyname("hw.memsize", &v9, &v8, 0, 0) == -1)
  {
    v6 = 0x4000000;
  }

  else
  {
    v6 = v9 / a1;
  }

  if (v6 >= a2)
  {
    v6 = a2;
  }

  if (v6 <= a3)
  {
    return a3;
  }

  else
  {
    return v6;
  }
}

uint64_t memory_storage_register_tree(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_100103860;
  if (dword_100103858)
  {
    v7 = dword_100103858;
    do
    {
      if (*v6 == a1)
      {
        return 0;
      }

      v6 += 3;
      --v7;
    }

    while (v7);
    v8 = qword_100103860;
    if ((dword_100103858 & (dword_100103858 - 1)) != 0)
    {
      goto LABEL_10;
    }

    v8 = malloc_type_realloc(qword_100103860, 24 * (2 * dword_100103858), 0xF0040613C4080uLL);
    if (v8)
    {
      qword_100103860 = v8;
      goto LABEL_10;
    }

    return 12;
  }

  if (qword_100103860)
  {
    sub_10005C450();
  }

  v8 = malloc_type_malloc(0x18uLL, 0xF0040613C4080uLL);
  qword_100103860 = v8;
  if (!v8)
  {
    return 12;
  }

LABEL_10:
  v9 = 0;
  v10 = dword_100103858;
  v11 = &v8[24 * dword_100103858];
  *(v11 + 1) = a2;
  *(v11 + 2) = a3;
  *v11 = a1;
  dword_100103858 = v10 + 1;
  return v9;
}

uint64_t memory_storage_limit_reached(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = qword_100103870;
  if (!qword_100103870)
  {
    return 0;
  }

  v9 = qword_100103878;
  if (qword_100103878 >= qword_100103868)
  {
    qword_100103868 = qword_100103878 + 52428800;
    a1 = sub_10005C0F4(a1, a2, a3, a4, a5, a6, a7, a8);
    v9 = qword_100103878;
    v8 = qword_100103870;
  }

  if (v9 < v8)
  {
    return 0;
  }

  if (v9 >= qword_100103868)
  {
    qword_100103868 = v9 + 52428800;
    sub_10005C0F4(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  result = 1;
  if (qword_100103860 && dword_100103858)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = qword_100103860 + v11;
      v24 = 0;
      tree_node_count(*(qword_100103860 + v11), 0, &v24);
      if (v24 > v13)
      {
        v14 = v15;
        v13 = v24;
      }

      ++v12;
      v11 += 24;
    }

    while (v12 < dword_100103858);
    if (v14)
    {
      v23 = fsck_printf_debug("Disabling fsck cross checks of %s tree\n", v16, v17, v18, v19, v20, v21, v22, *(v14 + 8));
      (*(v14 + 16))(v23);
      qword_100103868 = 0;
    }

    return 1;
  }

  return result;
}

char *sub_10005C0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = fsck_printf_debug("Allocated (%llu) MB for cached btrees in %u blocks, limit is (%llu) MB\n", a2, a3, a4, a5, a6, a7, a8, qword_100103878 >> 20);
  if (dword_100103858)
  {
    result = fsck_printf_debug("Node counts:", v9, v10, v11, v12, v13, v14, v15, v26);
    if (dword_100103858)
    {
      v16 = 0;
      v17 = 0;
      do
      {
        v27 = 0;
        v18 = *(qword_100103860 + v16 + 8);
        tree_node_count(*(qword_100103860 + v16), 0, &v27);
        result = fsck_printf_debug(" %s tree (%llu)%s", v19, v20, v21, v22, v23, v24, v25, v18);
        ++v17;
        v16 += 24;
      }

      while (v17 < dword_100103858);
    }
  }

  return result;
}

uint64_t memory_storage_create(size_t size, void *a2, void *a3)
{
  v5 = size;
  if (!qword_100103870)
  {
    qword_100103870 = memory_storage_limit(0x10u, 0x80000000uLL, 0);
  }

  if (dword_100103880)
  {
    if ((dword_100103880 & (dword_100103880 - 1)) != 0)
    {
      goto LABEL_8;
    }

    v6 = malloc_type_realloc(qword_100103888, 8 * (2 * dword_100103880), 0x10040436913F5uLL);
    if (v6)
    {
      qword_100103888 = v6;
      goto LABEL_8;
    }

    return 12;
  }

  qword_100103888 = malloc_type_malloc(8uLL, 0x10040436913F5uLL);
  if (!qword_100103888)
  {
    return 12;
  }

LABEL_8:
  *a2 = ++dword_100103880;
  v7 = malloc_type_calloc(1uLL, v5, 0xE56A0005uLL);
  *(qword_100103888 + 8 * *a2 - 8) = v7;
  if (__CFADD__(qword_100103878, v5))
  {
    sub_10005C47C();
  }

  v8 = v7;
  qword_100103878 += v5;
  if (!v7)
  {
    return 12;
  }

  result = 0;
  if (a3)
  {
    *a3 = v8;
  }

  return result;
}

uint64_t memory_storage_destroy(unsigned int a1, uint64_t a2)
{
  result = 14;
  if (a2 && dword_100103880 >= a2)
  {
    v4 = qword_100103888 + 8 * a2;
    free(*(v4 - 8));
    if (qword_100103878 < a1)
    {
      sub_10005C4A8();
    }

    result = 0;
    qword_100103878 -= a1;
    *(v4 - 8) = 0;
  }

  return result;
}

uint64_t memory_storage_read(uint64_t a1, uint64_t a2, void *a3)
{
  result = 14;
  if (a2 && dword_100103880 >= a2)
  {
    v4 = *(qword_100103888 + 8 * a2 - 8);
    if (v4)
    {
      result = 0;
      *a3 = v4;
    }
  }

  return result;
}

uint64_t memory_storage_write(size_t __n, uint64_t a2, void *__src)
{
  v3 = 14;
  if (a2 && dword_100103880 >= a2)
  {
    v4 = *(qword_100103888 + 8 * a2 - 8);
    if (v4)
    {
      if (v4 != __src)
      {
        memcpy(v4, __src, __n);
      }

      return 0;
    }

    else
    {
      return 14;
    }
  }

  return v3;
}

uint64_t apfs_crypto_io_enable(char *__s, uint64_t a2, __int128 *a3, io_connect_t *a4, uint64_t a5)
{
  outputStructCnt = 100;
  result = 22;
  if (__s && a4)
  {
    v11 = apfs_container_iouc(__s, 0, a4, 0, 0);
    if (v11)
    {

      return rc_to_errno(v11);
    }

    else
    {
      bzero(v20 + 8, 0x950uLL);
      v12 = a3[1];
      outputStruct = *a3;
      v19 = v12;
      *&v20[0] = a2;
      v13 = IOConnectCallStructMethod(*a4, 0x32u, &outputStruct, 0x28uLL, &outputStruct, &outputStructCnt);
      if (v13)
      {
        IOServiceClose(*a4);
      }

      if (a5)
      {
        v14 = v20[3];
        *(a5 + 64) = v20[2];
        *(a5 + 80) = v14;
        *(a5 + 96) = v21;
        v15 = v19;
        *a5 = outputStruct;
        *(a5 + 16) = v15;
        v16 = v20[1];
        *(a5 + 32) = v20[0];
        *(a5 + 48) = v16;
      }

      if (v13)
      {
        return rc_to_errno(v13);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t apfs_crypto_io_disable(io_connect_t *a1)
{
  outputStructCnt = 0;
  if (!a1)
  {
    return 22;
  }

  v2 = *a1;
  if (!v2)
  {
    return 22;
  }

  v3 = IOConnectCallStructMethod(v2, 0x33u, 0, 0, 0, &outputStructCnt);
  if (v3)
  {
    return rc_to_errno(v3);
  }

  IOServiceClose(*a1);
  result = 0;
  *a1 = 0;
  return result;
}

uint64_t apfs_crypto_io_getset_locker_data(char *a1, unsigned __int8 *uu, __int128 *a3, char a4, uint64_t a5)
{
  outputStructCnt = 0;
  if (!a1)
  {
    return 22;
  }

  is_null = uuid_is_null(uu);
  result = 22;
  if (a5 && !is_null)
  {
    v21 = 0;
    bzero(dst, 0x978uLL);
    v12 = apfs_container_iouc(a1, 0, &v21, 0, 0);
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      uuid_copy(dst, uu);
      v14 = a3[1];
      v16 = *a3;
      v17 = v14;
      v19 = a5;
      v18 = a4;
      v13 = IOConnectCallStructMethod(v21, 0x3Bu, dst, 0x40uLL, 0, &outputStructCnt);
      IOServiceClose(v21);
      if (!v13)
      {
        return 0;
      }
    }

    return rc_to_errno(v13);
  }

  return result;
}

double fsck_apfs_state_init(uint64_t a1)
{
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 24) = -1;
  *(a1 + 16) = -1;
  *&result = 0x100000001;
  *(a1 + 32) = 0x100000001;
  return result;
}

uint64_t fsck_apfs_init(int a1, uint64_t *a2)
{
  fsck_fail_init();
  srandomdev();
  crc32c_init();
  if (a1)
  {
    setup_logging();
  }

  cdevname = *a2;
  a2[1] = strdup(cdevname);
  return 0;
}

uint64_t fsck_progress_init_for_container(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    if (result)
    {
      v7 = (result + 48 + 48 * v3);
      v8 = *v7;
      v9 = v7[3];
      if (v8 > v9)
      {
        v4 = v8 + v4 - v9;
      }
    }

    v5 = 0;
    v3 = 1;
  }

  while ((v6 & 1) != 0);
  byte_100103890 = 0;
  qword_1001038A0 = v4;
  if (*(state + 54))
  {
    v10 = sub_10005CA38;
  }

  else
  {
    v10 = nullsub_1;
  }

  if (*(state + 54))
  {
    v11 = j__FSKitCheckUpdate;
  }

  else
  {
    v11 = sub_10005CACC;
  }

  v12 = nullsub_2;
  if (*(state + 54))
  {
    v12 = j__FSKitCheckDone;
  }

  qword_1001038C0 = v10;
  off_1001038B0 = v11;
  off_1001038B8 = v12;
  if (a2)
  {
    return v10(a2, a3);
  }

  return result;
}

uint64_t fsck_progress_init_for_volume(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v2 = *(result + 88);
  }

  else
  {
    v2 = 0;
  }

  byte_100103890 = 1;
  qword_1001038A0 = v2;
  if (*(state + 54))
  {
    v3 = sub_10005CA38;
  }

  else
  {
    v3 = nullsub_1;
  }

  if (*(state + 54))
  {
    v4 = j__FSKitCheckUpdate;
  }

  else
  {
    v4 = sub_10005CACC;
  }

  v5 = nullsub_2;
  if (*(state + 54))
  {
    v5 = j__FSKitCheckDone;
  }

  qword_1001038C0 = v3;
  off_1001038B0 = v4;
  off_1001038B8 = v5;
  if (a2)
  {
    return v3(a2, 1);
  }

  return result;
}

uint64_t fsck_progress_update(uint64_t result, int a2)
{
  if (byte_100103890 != 1 || a2 != 0)
  {
    v3 = qword_100103898 + result;
    qword_100103898 += result;
    if (qword_1001038A0)
    {
      v4 = 100 * v3 / qword_1001038A0;
      if (dword_1001038A8 < v4 && v4 <= 100)
      {
        result = off_1001038B0(v4);
        dword_1001038A8 = v4;
      }
    }
  }

  return result;
}

uint64_t sub_10005CA38(uint64_t *a1, uint64_t a2)
{
  v4 = *(state + 24);
  v5 = device_basename(*state);
  if (v4 == -1)
  {

    return _FSKitCheckContainerStart(v5, a1, a2);
  }

  else
  {
    v6 = *a1;

    return _FSKitCheckStart(v5, v6);
  }
}

time_t fsck_fail_init()
{
  result = time(0);
  qword_1001038C8 = result;
  qword_1001038D0 = &byte_1000B36A6;
  dword_1001038D8 = 1;
  dword_1001038DC = -1;
  dword_1001038E0 = 0;
  dword_1001038E4 = 1;
  return result;
}

BOOL fsck_fail_add_iteration()
{
  v0 = dword_1001038E4;
  if (dword_1001038E4 <= 4)
  {
    ++dword_1001038E4;
  }

  return v0 < 5;
}

char *fsck_fail_func(char *result, int a2)
{
  v2 = result;
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = -1;
  }

  if ((v3 + 11) >= 0xA)
  {
    v8 = dword_1001039EC;
    v9 = dword_1001039EC;
    v10 = dword_1001038DC;
    if (dword_1001039EC < 1)
    {
      LODWORD(v11) = 0;
    }

    else
    {
      v11 = 0;
      while (dword_1001039F0[v11] != dword_1001038DC)
      {
        if (dword_1001039EC == ++v11)
        {
          LODWORD(v11) = dword_1001039EC;
          goto LABEL_15;
        }
      }

      ++dword_100103A04[v11];
    }

LABEL_15:
    if (v11 == v9 && v8 <= 4 && v10 >= 1)
    {
      dword_1001039F0[v9] = v10;
      dword_100103A04[v9] = 1;
      dword_1001039EC = v9 + 1;
    }

    free(qword_1001038E8);
    result = strdup(qword_1001038D0);
    qword_1001038E8 = result;
    dword_100103A18 = dword_1001038D8;
    dword_1001038DC = v2;
    dword_1001038E0 = v3;
    v7 = &dword_1001038F8;
    v4 = dword_1001038F8;
    goto LABEL_20;
  }

  v4 = dword_1001038F4;
  if (dword_1001038F4 <= 20)
  {
    v5 = (-2 - v3);
    v6 = dword_1001038FC[v5];
    if (v6 <= 4)
    {
      dword_100103924[5 * v5 + v6] = result;
      dword_1001038FC[v5] = v6 + 1;
      v7 = &dword_1001038F4;
LABEL_20:
      *v7 = v4 + 1;
    }
  }

  return result;
}

uint64_t fsck_nx_keybags(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[1];
  v10 = *(v9 + 1400);
  if (v10)
  {
    result = sub_10005CE30(a1, 0x6D6B6579uLL, *(v9 + 1392), v10, (v9 + 72), a6, a7, a8);
    if (result)
    {
      return result;
    }

    v9 = a1[1];
  }

  v12 = *(v9 + 1304);
  if (v12 && (*(state + 47) & 1) == 0)
  {
    result = sub_10005CE30(a1, 0x6B657973uLL, *(v9 + 1296), v12, (v9 + 72), a6, a7, a8);
    if (result)
    {
      return result;
    }

    v9 = a1[1];
  }

  mark_object_allocated(a1, *(v9 + 1392), *(v9 + 1400), 0, 0x40000000, *(v9 + 1392), 0, 0, 1u, 1u);
  mark_object_allocated(a1, *(a1[1] + 1296), *(a1[1] + 1304), 0, 0x40000000, *(a1[1] + 1296), 0, 0, 1u, 1u);
  return 0;
}

uint64_t sub_10005CE30(uint64_t *a1, size_t a2, uint64_t a3, size_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v171 = 0;
  v170 = 0;
  v13 = sub_10005E25C(a1, a2, a3, a4, a5, &v171, a7, a8);
  if (v13)
  {
    return v13;
  }

  v16 = v171;
  if (a2 == 1869900147)
  {
    v17 = 14;
  }

  else
  {
    v17 = 12;
  }

  v18 = fsck_obj_phys(v171, v17, *(a1[1] + 16), a2, 0, *(a1[1] + 36) * a4, v14, v15);
  if (v18)
  {
    v13 = v18;
    if (a2 > 1869900146)
    {
      if (a2 == 1869900147)
      {
        v26 = "OTI keybag";
        goto LABEL_181;
      }

      if (a2 == 1919247219)
      {
        fsck_printf_warn("%s (%llu+%llu): block range isn't a valid keybag, skipping checks\n", v19, v20, v21, v22, v23, v24, v25, "volume keybag");
        goto LABEL_188;
      }
    }

    else
    {
      if (a2 == 1801812339)
      {
        v26 = "container keybag";
        goto LABEL_181;
      }

      if (a2 == 1835754873)
      {
        v26 = "media keybag";
LABEL_181:
        fsck_printf_err("%s (%llu+%llu): block range isn't a valid keybag, aborting\n", v19, v20, v21, v22, v23, v24, v25, v26);
        goto LABEL_214;
      }
    }

    v26 = "unknown keybag";
    if (a2 == 1651273570)
    {
      v26 = "OTI blob";
    }

    goto LABEL_181;
  }

  v27 = (v16 + 32);
  v160 = *(a1[1] + 36) * a4;
  v167 = v16;
  v28 = (v16 + 32);
  if (a2 != 1869900147)
  {
    v29 = sub_10005E72C(a1, v28, a2, a3, a4, 2, 0x18uLL, v25);
    if (v29)
    {
      goto LABEL_190;
    }

    v150 = v8;
    v93 = *(v16 + 9);
    if (v93 < 0x11)
    {
      v157 = 0;
      v159 = 16;
LABEL_185:
      v13 = sub_10005EBA0(v27, a2, a3, a4, v157, v159, &v170, v92);
      goto LABEL_186;
    }

    v94 = 0;
    v95 = &v16[v93 + 32];
    v96 = v16 + 48;
    if (a2 == 1651273570)
    {
      v97 = "OTI blob";
    }

    else
    {
      v97 = "unknown keybag";
    }

    v157 = 0;
    v159 = 16;
    v98 = v160;
    v151 = v97;
    v153 = v16 + 32;
    while (1)
    {
      v162 = v95;
      v99 = *(v96 + 9);
      v100 = v99 + 24;
      if (((v99 + 24) & 0xF) != 0)
      {
        v100 = v99 - ((v99 + 24) & 0xF) + 40;
      }

      v169 = v100;
      v166 = v95 - v96;
      v154 = v100 - (v95 - v96);
      if (v100 > v95 - v96)
      {
        if (a2 > 1869900146)
        {
          LOBYTE(v101) = v97;
          if (a2 == 1919247219)
          {
            v101 = "volume keybag";
          }
        }

        else if (a2 == 1801812339)
        {
          v101 = "container keybag";
        }

        else
        {
          v101 = "media keybag";
          if (a2 != 1835754873)
          {
            LOBYTE(v101) = v97;
          }
        }

        v149 = *(v16 + 9);
        fsck_printf_err("%s (%llu+%llu): entry %u has size %u > remaining size %u (keybag size %u)\n", v86, v87, v88, v89, v90, v91, v92, v101);
        fsck_fail_func(0x4EE, -11);
        LODWORD(v99) = *(v96 + 9);
      }

      if (v99 >= 0x201)
      {
        if (a2 > 1869900146)
        {
          if (a2 == 1919247219)
          {
            v97 = "volume keybag";
          }
        }

        else if (a2 == 1801812339)
        {
          v97 = "container keybag";
        }

        else if (a2 == 1835754873)
        {
          v97 = "media keybag";
        }

        fsck_printf_err("%s (%llu+%llu): entry %u has size %u > maximum size %u\n", v86, v87, v88, v89, v90, v91, v92, v97);
        v13 = 92;
        v136 = 1066;
        goto LABEL_213;
      }

      if (v159 + v169 > v98)
      {
        if (a2 > 1869900146)
        {
          if (a2 == 1919247219)
          {
            v97 = "volume keybag";
          }
        }

        else if (a2 == 1801812339)
        {
          v97 = "container keybag";
        }

        else if (a2 == 1835754873)
        {
          v97 = "media keybag";
        }

        fsck_printf_err("%s (%llu+%llu): entry %u with size %u brings total size %u beyond object size %u\n", v86, v87, v88, v89, v90, v91, v92, v97);
        v13 = 92;
        v136 = 1067;
        goto LABEL_213;
      }

      if (!uuid_is_null(v96))
      {
        goto LABEL_105;
      }

      if (a2 > 1869900146)
      {
        LOBYTE(v102) = v97;
        if (a2 == 1919247219)
        {
          v102 = "volume keybag";
        }
      }

      else if (a2 == 1801812339)
      {
        v102 = "container keybag";
      }

      else
      {
        v102 = "media keybag";
        if (a2 != 1835754873)
        {
          LOBYTE(v102) = v97;
        }
      }

      fsck_printf_warn("%s (%llu+%llu): UUID of entry %u is null\n", v86, v87, v88, v89, v90, v91, v92, v102);
      fsck_fail_func(0x42C, -2);
      if (fsckAskPrompt(fsck_apfs_ctx, "Remove entry with null UUID? ", v103, v104, v105, v106, v107, v108, v143))
      {
        v164 = 1;
        v170 = 1;
      }

      else
      {
LABEL_105:
        v164 = 0;
      }

      if (a2 == 1835754873 && !uuid_is_null(v96) && uuid_compare(v96, (a1[1] + 72)))
      {
        memset(out, 0, sizeof(out));
        memset(v172, 0, 37);
        uuid_unparse(v96, out);
        uuid_unparse((a1[1] + 72), v172);
        v146 = *(v96 + 8);
        fsck_printf_warn("%s (%llu+%llu): UUID %s of entry %u (tag %u) is not the container UUID %s\n", v109, v110, v111, v112, v113, v114, v115, "media keybag");
        fsck_fail_func(0x42D, -2);
      }

      if (!*(v96 + 8))
      {
        if (a2 > 1869900146)
        {
          LOBYTE(v116) = v97;
          if (a2 == 1919247219)
          {
            v116 = "volume keybag";
          }
        }

        else if (a2 == 1801812339)
        {
          v116 = "container keybag";
        }

        else
        {
          v116 = "media keybag";
          if (a2 != 1835754873)
          {
            LOBYTE(v116) = v97;
          }
        }

        fsck_printf_warn("%s (%llu+%llu): entry %u has 'unknown' tag type\n", v86, v87, v88, v89, v90, v91, v92, v116);
        fsck_fail_func(0x42E, -5);
      }

      if (v96[20] || v96[21] || v96[22] || v96[23])
      {
        if (a2 > 1869900146)
        {
          LOBYTE(v117) = v97;
          if (a2 == 1919247219)
          {
            v117 = "volume keybag";
          }
        }

        else if (a2 == 1801812339)
        {
          v117 = "container keybag";
        }

        else
        {
          v117 = "media keybag";
          if (a2 != 1835754873)
          {
            LOBYTE(v117) = v97;
          }
        }

        fsck_printf_warn("%s (%llu+%llu): entry %u has invalid padding\n", v86, v87, v88, v89, v90, v91, v92, v117);
        fsck_fail_func(0x42F, -10);
      }

      if (a2 == 1801812339)
      {
        v118 = *(v96 + 8);
        if (v118 == 16 || v118 == 3)
        {
          v119 = v27;
          if (v118 == 16)
          {
            v120 = 1869900147;
          }

          else
          {
            v120 = 1919247219;
          }

          if (*(v96 + 9) != 16)
          {
            fsck_printf_err("%s (%llu+%llu): %s records entry %u does not contain a range (size %u)\n", v86, v87, v88, v89, v90, v91, v92, "container keybag");
            v13 = 92;
            v136 = 1072;
LABEL_213:
            fsck_fail_func(v136, 92);
            goto LABEL_214;
          }

          v121 = *(v96 + 3);
          v122 = *(v96 + 4);
          v123 = *(a1[1] + 40);
          if (v123 - v122 < v121 || v123 <= v122 || v121 < 1 || v123 <= v121)
          {
            v147 = *(v96 + 3);
            fsck_printf_err("%s (%llu+%llu): %s records entry %u contains invalid range %llu+%llu\n", v86, v121, v122, v89, v90, v91, v92, "container keybag");
            fsck_fail_func(0x431, 92);
            if (v164)
            {
              v164 = 1;
LABEL_152:
              v27 = v119;
              goto LABEL_153;
            }

            LOBYTE(v97) = v151;
            if (!fsckAskPrompt(fsck_apfs_ctx, "Remove entry with invalid range? ", v87, v88, v89, v90, v91, v92, v139))
            {
              goto LABEL_207;
            }

            v27 = v119;
            v164 = 1;
            v170 = 1;
            v16 = v167;
          }

          else
          {
            v124 = sub_10005CE30(a1, v120);
            if (!v124)
            {
              if (!v164)
              {
                sub_10005DFA8(a1, v120, *(v96 + 3), *(v96 + 4));
                v98 = v160;
                v27 = v119;
                v16 = v167;
                LOBYTE(v97) = v151;
                if (v169 <= v166)
                {
                  goto LABEL_169;
                }

LABEL_160:
                if (!fsckAskPrompt(fsck_apfs_ctx, "Fix the keybag size? ", v87, v88, v89, v90, v91, v92, v139))
                {
                  goto LABEL_169;
                }

                v125 = 0;
                goto LABEL_162;
              }

              v164 = 1;
              v98 = v160;
              goto LABEL_152;
            }

            v13 = v124;
            if (v124 != 92)
            {
              goto LABEL_186;
            }

            v27 = v119;
            fsck_printf_err("%s (%llu+%llu): %s records entry %u contains invalid keybag\n", v86, v87, v88, v89, v90, v91, v92, "container keybag");
            fsck_fail_func(0x5D8, 92);
            if (v164)
            {
              v164 = 1;
              v98 = v160;
LABEL_153:
              v16 = v167;
              LOBYTE(v97) = v151;
              goto LABEL_154;
            }

            v98 = v160;
            v16 = v167;
            LOBYTE(v97) = v151;
            if (!fsckAskPrompt(fsck_apfs_ctx, "Remove entry with invalid keybag? ", v87, v88, v89, v90, v91, v92, v139))
            {
LABEL_207:
              v13 = 92;
              goto LABEL_214;
            }

            v164 = 1;
            v170 = 1;
          }
        }
      }

LABEL_154:
      if (v169 <= v166)
      {
        if (!v164)
        {
          goto LABEL_169;
        }

        goto LABEL_165;
      }

      if ((v164 & 1) == 0)
      {
        goto LABEL_160;
      }

      v125 = 1;
LABEL_162:
      v126 = *(v16 + 9) + v154;
      *(v16 + 9) = v126;
      v127 = *(v16 + 17);
      if (v157 + 1 > v127)
      {
        *(v16 + 17) = v127 + 1;
      }

      v162 = v27 + v126;
      v170 = 1;
      if ((v125 & 1) == 0)
      {
LABEL_169:
        v133 = *(v96 + 9);
        v134 = v133 + 24;
        v135 = v133 - ((v133 + 24) & 0xF) + 40;
        if ((v134 & 0xF) == 0)
        {
          v135 = v134;
        }

        v96 += v135;
        ++v157;
        v159 += v169;
        v95 = v162;
        goto LABEL_172;
      }

LABEL_165:
      v128 = *(v96 + 9);
      v129 = v128 + 24;
      v130 = v128 - ((v128 + 24) & 0xF) + 40;
      if ((v129 & 0xF) != 0)
      {
        v131 = v130;
      }

      else
      {
        v131 = v129;
      }

      memmove(v96, &v96[v131], v162 - &v96[v131]);
      memset_s((v162 - v131), v131, 0, v131);
      v132 = (*(v16 + 9) - v131);
      LOBYTE(v97) = v151;
      v27 = v153;
      *(v16 + 9) = v132;
      --*(v16 + 17);
      v95 = &v153[v132];
LABEL_172:
      ++v94;
      if (v96 >= v95)
      {
        goto LABEL_185;
      }
    }
  }

  v29 = sub_10005E72C(a1, v28, 1869900147, a3, a4, 1, 0x28uLL, v25);
  if (v29)
  {
    goto LABEL_190;
  }

  v37 = *(v16 + 9);
  if (v37 < 0x11)
  {
    v137 = 0;
    v41 = 16;
LABEL_183:
    v13 = sub_10005EBA0(v27, 1869900147, a3, a4, v137, v41, &v170, v36);
    goto LABEL_187;
  }

  v150 = v8;
  v165 = 0;
  v38 = 0;
  v156 = 0;
  v39 = v27 + v37;
  v40 = v16 + 48;
  LODWORD(v41) = 16;
  v152 = v16 + 32;
  while (1)
  {
    v168 = v39 - v40;
    if ((v39 - v40) <= 0x27)
    {
      v148 = *(v167 + 9);
      v42 = v39;
      fsck_printf_err("%s (%llu+%llu): entry %u has size %u > remaining size %u (keybag size %u)\n", v30, v31, v32, v33, v34, v35, v36, "OTI keybag");
      fsck_fail_func(0x5DB, -11);
      v39 = v42;
    }

    if (!*(v40 + 16))
    {
      fsck_printf_err("%s (%llu+%llu): entry %u has blob size == 0\n", v30, v31, v32, v33, v34, v35, v36, "OTI keybag");
      v13 = 92;
      v136 = 1500;
      goto LABEL_213;
    }

    if (*(v40 + 16) > 0x1000u)
    {
      fsck_printf_err("%s (%llu+%llu): entry %u has blob size %u > maximum blob size %u\n", v30, v31, v32, v33, v34, v35, v36, "OTI keybag");
      v13 = 92;
      v136 = 1501;
      goto LABEL_213;
    }

    v43 = (v41 + 40);
    if (v43 > v160)
    {
      fsck_printf_err("%s (%llu+%llu): entry %u with size %u brings total size %u beyond object size %u\n", v30, v31, v32, v33, v34, v35, v36, "OTI keybag");
      v13 = 92;
      v136 = 1502;
      goto LABEL_213;
    }

    v163 = v39;
    if (uuid_is_null(v40))
    {
      fsck_printf_warn("%s (%llu+%llu): UUID of entry %u is null\n", v44, v45, v46, v47, v48, v49, v50, "OTI keybag");
      fsck_fail_func(0x5DF, -2);
      v57 = fsckAskPrompt(fsck_apfs_ctx, "Remove entry with null UUID? ", v51, v52, v53, v54, v55, v56, v140);
      v161 = v57 != 0;
      v58 = v165;
      if (v57)
      {
        v58 = 1;
      }

      v165 = v58;
    }

    else
    {
      v161 = 0;
    }

    if (!*(v40 + 17))
    {
      fsck_printf_warn("%s (%llu+%llu): entry %u has 'unknown' tag type\n", v44, v45, v46, v47, v48, v49, v50, "OTI keybag");
      fsck_fail_func(0x5E0, -5);
    }

    v158 = v41;
    if (v40[36] || v40[37] || v40[38] || v40[39])
    {
      fsck_printf_warn("%s (%llu+%llu): entry %u has invalid padding\n", v44, v45, v46, v47, v48, v49, v50, "OTI keybag");
      fsck_fail_func(0x5E1, -10);
    }

    v59 = *(v40 + 3);
    v60 = *(v40 + 16);
    v61 = a1[1];
    v62 = *(v61 + 36);
    v63 = v60 / v62;
    if (v60 % v62)
    {
      v64 = v63 + 1;
    }

    else
    {
      v64 = v63;
    }

    if (v59 < 1 || (v65 = *(v61 + 40), v65 <= v59) || (v65 > v64 ? (v66 = v65 - v64 >= v59) : (v66 = 0), !v66))
    {
      v145 = *(v40 + 3);
      fsck_printf_err("%s (%llu+%llu): entry %u has invalid blob range %llu+%llu\n", v44, v45, v46, v47, v48, v49, v50, "OTI keybag");
      fsck_fail_func(0x5E2, 92);
      v27 = v152;
      v41 = v158;
      if (!v161)
      {
        v68 = fsck_apfs_ctx;
        v69 = "Remove entry with invalid blob range? ";
LABEL_54:
        if (!fsckAskPrompt(v68, v69, v31, v32, v33, v34, v35, v36, v141))
        {
          goto LABEL_207;
        }

        v165 = 1;
        goto LABEL_56;
      }

      goto LABEL_56;
    }

    v155 = v43;
    v67 = v64 * v62;
    if (v64 * v62 < 0x10000)
    {
      break;
    }

    fsck_printf_err("%s (%llu+%llu): oti_ke_blob_len (%u) is too large\n", v44, v45, v46, v47, v48, v49, v50, "OTI blob");
    fsck_fail_func(0x5D9, 92);
    v27 = v152;
    v41 = v158;
    v43 = v155;
LABEL_52:
    fsck_printf_err("%s (%llu+%llu): entry %u has invalid blob\n", v30, v31, v32, v33, v34, v35, v36, "OTI keybag");
    fsck_fail_func(0x5E3, 92);
    if (!v161)
    {
      v68 = fsck_apfs_ctx;
      v69 = "Remove entry with invalid blob? ";
      goto LABEL_54;
    }

LABEL_56:
    if (v168 >= 0x28)
    {
      goto LABEL_62;
    }

    v81 = 1;
LABEL_58:
    v82 = *(v167 + 9) - v168 + 40;
    *(v167 + 9) = v82;
    v83 = *(v167 + 17);
    if (v156 + 1 > v83)
    {
      *(v167 + 17) = v83 + 1;
    }

    v39 = v27 + v82;
    if (!v81)
    {
      v165 = 1;
LABEL_64:
      ++v156;
      v40 += 40;
      v41 = v43;
      goto LABEL_65;
    }

    v163 = v39;
    v165 = 1;
LABEL_62:
    memmove(v40, v40 + 40, v163 - (v40 + 40));
    memset_s((v163 - 40), 0x28uLL, 0, 0x28uLL);
    v84 = (*(v167 + 9) - 40);
    *(v167 + 9) = v84;
    --*(v167 + 17);
    v39 = v27 + v84;
LABEL_65:
    ++v38;
    if (v40 >= v39)
    {
      v170 = v165;
      v8 = v150;
      v137 = v156;
      goto LABEL_183;
    }
  }

  *out = 0;
  v13 = sub_10005E25C(a1, 0x626C6F62uLL, v59, v64, v150, out, v49, v50);
  if (!v13)
  {
    v72 = v67;
    v73 = *out;
    if (fletcher64_verify_cksum(v40 + 2, *out, v72, 0, v70, v71))
    {
      v144 = *(v40 + 2);
      fsck_printf_err("%s (%llu+%llu): oti_ke_blob_cksum (0x%llx) is invalid for blob\n", v74, v75, v76, v77, v78, v79, v80, "OTI blob");
      v13 = 92;
      fsck_fail_func(0x5DA, 92);
    }

    else
    {
      v13 = 0;
    }

    free(v73);
  }

  if (!v13)
  {
    v43 = v155;
    if (!v161)
    {
      mark_object_allocated(a1, v59, v64, 0, 0x40000000, v59, 0, 0, 0xDu, 1u);
      if (v168 > 0x27)
      {
        v27 = v152;
        v39 = v163;
        goto LABEL_64;
      }

      v85 = fsckAskPrompt(fsck_apfs_ctx, "Fix the keybag size? ", v31, v32, v33, v34, v35, v36, v142);
      v27 = v152;
      v41 = v158;
      v39 = v163;
      if (!v85)
      {
        goto LABEL_64;
      }

      v81 = 0;
      goto LABEL_58;
    }

    v27 = v152;
    v41 = v158;
    goto LABEL_56;
  }

  v27 = v152;
  v41 = v158;
  v43 = v155;
  if (v13 == 92)
  {
    goto LABEL_52;
  }

  v170 = v165;
LABEL_186:
  v8 = v150;
LABEL_187:
  if (!v13)
  {
LABEL_188:
    if (v170 == 1)
    {
      v29 = sub_10005E58C(a1, a2, a3, a4, v8, v171, v70, v71);
LABEL_190:
      v13 = v29;
    }

    else
    {
      v13 = 0;
    }
  }

LABEL_214:
  free(v171);
  return v13;
}

uint64_t sub_10005DFA8(uint64_t a1, int a2, unint64_t a3, unint64_t a4)
{
  if (a2 == 1869900147 || a2 == 1919247219)
  {
    v5 = 13;
  }

  else
  {
    v5 = 1;
  }

  return mark_object_allocated(a1, a3, a4, 0, 0x40000000, a3, 0, 0, v5, 1u);
}

uint64_t fsck_nx_keybag_orphans(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[1];
  v9 = *(v8 + 1304);
  if (!v9 || (*(state + 47) & 1) != 0)
  {
    return 0;
  }

  v12 = *(v8 + 1296);
  v45 = 0;
  v10 = sub_10005E25C(a1, 0x6B657973uLL, v12, v9, (v8 + 72), &v45, a7, a8);
  if (!v10)
  {
    v13 = v45;
    v14 = *(v45 + 36);
    if (v14 < 0x11)
    {
      goto LABEL_21;
    }

    v15 = 0;
    v16 = 0;
    v17 = v45 + v14 + 32;
    v18 = (v45 + 48);
    do
    {
      if (uuid_is_null(v18) || fsck_global_volume_get_by_uuid(a1, v18) || (memset(out, 0, 37), uuid_unparse(v18, out), v44 = v18[8], fsck_printf_warn("%s (%llu+%llu): UUID %s of entry %u (tag %u) does not reference any volume\n", v24, v25, v26, v27, v28, v29, v30, "container keybag"), fsck_fail_func(0x445, -2), !fsckAskPrompt(fsck_apfs_ctx, "Remove orphan entry? ", v31, v32, v33, v34, v35, v36, v43)))
      {
        v21 = v18[9];
        v22 = v21 + 24;
        v23 = v21 - ((v21 + 24) & 0xF) + 40;
        if ((v22 & 0xF) == 0)
        {
          v23 = v22;
        }

        v18 = (v18 + v23);
      }

      else
      {
        v37 = v18[9];
        v38 = v37 + 24;
        v39 = v37 - ((v37 + 24) & 0xF) + 40;
        if ((v38 & 0xF) != 0)
        {
          v40 = v39;
        }

        else
        {
          v40 = v38;
        }

        memmove(v18, v18 + v40, v17 - (v18 + v40));
        memset_s((v17 - v40), v40, 0, v40);
        v41 = (*(v13 + 36) - v40);
        *(v13 + 36) = v41;
        --*(v13 + 34);
        v17 = v13 + 32 + v41;
        v16 = 1;
      }

      ++v15;
    }

    while (v18 < v17);
    v13 = v45;
    if (v16)
    {
      v10 = sub_10005E58C(a1, 1801812339, v12, v9, (a1[1] + 72), v45, v19, v20);
    }

    else
    {
LABEL_21:
      v10 = 0;
    }

    free(v13);
  }

  return v10;
}

uint64_t sub_10005E25C(uint64_t *a1, size_t a2, uint64_t a3, size_t count, unsigned __int8 *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8 = count;
  v9 = a3;
  v10 = a2;
  if (HIDWORD(count) || (a2 = *(a1[1] + 36), (count * a2) >> 32))
  {
    if (v10 > 1869900146)
    {
      if (v10 == 1869900147)
      {
        v25 = "OTI keybag";
        goto LABEL_18;
      }

      if (v10 == 1919247219)
      {
        v25 = "volume keybag";
        goto LABEL_18;
      }
    }

    else
    {
      if (v10 == 1801812339)
      {
        v25 = "container keybag";
        goto LABEL_18;
      }

      if (v10 == 1835754873)
      {
        v25 = "media keybag";
LABEL_18:
        fsck_printf_err("%s (%llu+%llu): size is too large\n", a2, a3, count, a5, a6, a7, a8, v25);
        v26 = 92;
        v27 = 1058;
        v28 = 92;
LABEL_19:
        fsck_fail_func(v27, v28);
        return v26;
      }
    }

    v25 = "unknown keybag";
    if (v10 == 1651273570)
    {
      v25 = "OTI blob";
    }

    goto LABEL_18;
  }

  v14 = malloc_type_calloc(count, a2, 0xC61E6867uLL);
  if (!v14)
  {
    if (v10 > 1869900146)
    {
      if (v10 == 1869900147)
      {
        v30 = "OTI keybag";
        goto LABEL_49;
      }

      if (v10 == 1919247219)
      {
        v30 = "volume keybag";
        goto LABEL_49;
      }
    }

    else
    {
      if (v10 == 1801812339)
      {
        v30 = "container keybag";
        goto LABEL_49;
      }

      if (v10 == 1835754873)
      {
        v30 = "media keybag";
LABEL_49:
        fsck_printf_err("%s (%llu+%llu): failed to allocate memory\n", v15, v16, v17, v18, v19, v20, v21, v30);
        v26 = 12;
        v27 = 1059;
        v28 = 12;
        goto LABEL_19;
      }
    }

    v30 = "unknown keybag";
    if (v10 == 1651273570)
    {
      v30 = "OTI blob";
    }

    goto LABEL_49;
  }

  v22 = v14;
  v23 = *a1;
  if (v10 == 1835754873)
  {
    keybag = dev_read(v23);
  }

  else
  {
    keybag = fsck_userfs_get_keybag(v23, v9, v8, a5);
  }

  v26 = keybag;
  if (keybag)
  {
    if (v10 > 1869900146)
    {
      if (v10 == 1869900147)
      {
        v31 = "OTI keybag";
        goto LABEL_43;
      }

      if (v10 == 1919247219)
      {
        v31 = "volume keybag";
        goto LABEL_43;
      }
    }

    else
    {
      if (v10 == 1801812339)
      {
        v31 = "container keybag";
        goto LABEL_43;
      }

      if (v10 == 1835754873)
      {
        v31 = "media keybag";
LABEL_43:
        strerror(keybag);
        fsck_printf_err("%s (%llu+%llu): failed to get keybag data: %s\n", v32, v33, v34, v35, v36, v37, v38, v31);
        fsck_fail_func(0x424, v26);
        free(v22);
        return v26;
      }
    }

    if (v10 == 1651273570)
    {
      v31 = "OTI blob";
    }

    else
    {
      v31 = "unknown keybag";
    }

    goto LABEL_43;
  }

  *a6 = v22;
  return v26;
}

uint64_t sub_10005E58C(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, int8x16_t a7, int8x16_t a8)
{
  fletcher64_set_cksum(a6, (a6 + 8), (*(a1[1] + 36) * a4 - 8), 0, a7, a8);
  if (a2 == 1835754873)
  {
    v14 = dev_write(*a1);
  }

  else
  {
    v15 = a1[1];
    v16 = *(state + 8);
    *&v27[0] = a3;
    *(&v27[0] + 1) = a4;
    v27[1] = *(v15 + 1392);
    v14 = apfs_crypto_io_getset_locker_data(v16, a5, v27, 0, a6);
  }

  v17 = v14;
  if (v14)
  {
    if (a2 > 1869900146)
    {
      if (a2 == 1869900147)
      {
        v18 = "OTI keybag";
        goto LABEL_17;
      }

      if (a2 == 1919247219)
      {
        v18 = "volume keybag";
        goto LABEL_17;
      }
    }

    else
    {
      if (a2 == 1801812339)
      {
        v18 = "container keybag";
        goto LABEL_17;
      }

      if (a2 == 1835754873)
      {
        v18 = "media keybag";
LABEL_17:
        strerror(v14);
        fsck_printf_err("%s (%llu+%llu): failed to put keybag: %s\n", v19, v20, v21, v22, v23, v24, v25, v18);
        fsck_fail_func(0x443, v17);
        return v17;
      }
    }

    if (a2 == 1651273570)
    {
      v18 = "OTI blob";
    }

    else
    {
      v18 = "unknown keybag";
    }

    goto LABEL_17;
  }

  return v17;
}

uint64_t sub_10005E72C(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  if (!*a2)
  {
    if (a3 > 1869900146)
    {
      if (a3 == 1869900147)
      {
        v10 = "OTI keybag";
        goto LABEL_47;
      }

      if (a3 == 1919247219)
      {
        v10 = "volume keybag";
        goto LABEL_47;
      }
    }

    else
    {
      if (a3 == 1801812339)
      {
        v10 = "container keybag";
        goto LABEL_47;
      }

      if (a3 == 1835754873)
      {
        v10 = "media keybag";
LABEL_47:
        fsck_printf_err("%s (%llu+%llu): version cannot be 0\n", a2, a3, a4, a5, a6, a7, a8, v10);
        v14 = 92;
        v15 = 1061;
LABEL_74:
        fsck_fail_func(v15, 92);
        return v14;
      }
    }

    v10 = "unknown keybag";
    if (a3 == 1651273570)
    {
      v10 = "OTI blob";
    }

    goto LABEL_47;
  }

  if (*a2 != a6)
  {
    if (a3 > 1869900146)
    {
      if (a3 == 1869900147)
      {
        v11 = "OTI keybag";
        goto LABEL_53;
      }

      if (a3 == 1919247219)
      {
        v11 = "volume keybag";
        goto LABEL_53;
      }
    }

    else
    {
      if (a3 == 1801812339)
      {
        v11 = "container keybag";
        goto LABEL_53;
      }

      if (a3 == 1835754873)
      {
        v11 = "media keybag";
LABEL_53:
        v19 = *a2;
        fsck_printf_warn("%s (%llu+%llu): unknown version %u\n, skipping checks\n", a2, a3, a4, a5, a6, a7, a8, v11);
        v16 = 1062;
        v17 = -6;
LABEL_54:
        fsck_fail_func(v16, v17);
        return 0;
      }
    }

    v11 = "unknown keybag";
    if (a3 == 1651273570)
    {
      v11 = "OTI blob";
    }

    goto LABEL_53;
  }

  v8 = (*(*(a1 + 8) + 36) * a5);
  if (v8 / a7 < a2[1])
  {
    if (a3 > 1869900146)
    {
      if (a3 == 1869900147)
      {
        v9 = "OTI keybag";
        goto LABEL_67;
      }

      if (a3 == 1919247219)
      {
        v9 = "volume keybag";
        goto LABEL_67;
      }
    }

    else
    {
      if (a3 == 1801812339)
      {
        v9 = "container keybag";
        goto LABEL_67;
      }

      if (a3 == 1835754873)
      {
        v9 = "media keybag";
LABEL_67:
        v20 = a2[1];
        fsck_printf_err("%s (%llu+%llu): number of entries %u exceeds object capacity %lu\n", a2, a3, a4, a5, a6, a7, a8, v9);
        v14 = 92;
        v15 = 1063;
        goto LABEL_74;
      }
    }

    v9 = "unknown keybag";
    if (a3 == 1651273570)
    {
      v9 = "OTI blob";
    }

    goto LABEL_67;
  }

  if (*(a2 + 1) > v8)
  {
    if (a3 > 1869900146)
    {
      if (a3 == 1869900147)
      {
        v12 = "OTI keybag";
        goto LABEL_73;
      }

      if (a3 == 1919247219)
      {
        v12 = "volume keybag";
        goto LABEL_73;
      }
    }

    else
    {
      if (a3 == 1801812339)
      {
        v12 = "container keybag";
        goto LABEL_73;
      }

      if (a3 == 1835754873)
      {
        v12 = "media keybag";
LABEL_73:
        v21 = *(a2 + 1);
        v22 = (*(*(a1 + 8) + 36) * a5);
        fsck_printf_err("%s (%llu+%llu): number of bytes %u exceeds object size %u\n", a2, a3, a4, a5, a6, a7, a8, v12);
        v14 = 92;
        v15 = 1064;
        goto LABEL_74;
      }
    }

    v12 = "unknown keybag";
    if (a3 == 1651273570)
    {
      v12 = "OTI blob";
    }

    goto LABEL_73;
  }

  if (*(a2 + 8) || *(a2 + 9) || *(a2 + 10) || *(a2 + 11) || *(a2 + 12) || *(a2 + 13) || *(a2 + 14) || *(a2 + 15))
  {
    if (a3 > 1869900146)
    {
      if (a3 == 1869900147)
      {
        v13 = "OTI keybag";
        goto LABEL_81;
      }

      if (a3 == 1919247219)
      {
        v13 = "volume keybag";
        goto LABEL_81;
      }
    }

    else
    {
      if (a3 == 1801812339)
      {
        v13 = "container keybag";
        goto LABEL_81;
      }

      if (a3 == 1835754873)
      {
        v13 = "media keybag";
LABEL_81:
        fsck_printf_warn("%s (%llu+%llu): invalid padding\n", a2, a3, a4, a5, a6, a7, a8, v13);
        v16 = 1065;
        v17 = -10;
        goto LABEL_54;
      }
    }

    v13 = "unknown keybag";
    if (a3 == 1651273570)
    {
      v13 = "OTI blob";
    }

    goto LABEL_81;
  }

  return 0;
}

uint64_t sub_10005EBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  v9 = a6;
  v10 = a2;
  if (*(a1 + 2) == a5)
  {
    goto LABEL_16;
  }

  v12 = a5;
  if (a2 > 1869900146)
  {
    if (a2 == 1869900147)
    {
      v13 = "OTI keybag";
      goto LABEL_14;
    }

    if (a2 == 1919247219)
    {
      v13 = "volume keybag";
      goto LABEL_14;
    }

LABEL_9:
    v13 = "unknown keybag";
    if (a2 == 1651273570)
    {
      v13 = "OTI blob";
    }

    goto LABEL_14;
  }

  if (a2 == 1801812339)
  {
    v13 = "container keybag";
    goto LABEL_14;
  }

  if (a2 != 1835754873)
  {
    goto LABEL_9;
  }

  v13 = "media keybag";
LABEL_14:
  v31 = *(a1 + 2);
  fsck_printf_err("%s (%llu+%llu): number of keys %u does not match number of entries found %u\n", a2, a3, a4, a5, a6, a7, a8, v13);
  v14 = 92;
  fsck_fail_func(0x444, 92);
  if (!fsckAskPrompt(fsck_apfs_ctx, "Fix the number of keys? ", v15, v16, v17, v18, v19, v20, v29))
  {
    return v14;
  }

  *(a1 + 2) = v12;
  *a7 = 1;
LABEL_16:
  if (*(a1 + 4) == v9)
  {
    return 0;
  }

  if (v10 > 1869900146)
  {
    if (v10 == 1869900147)
    {
      v21 = "OTI keybag";
    }

    else
    {
      if (v10 != 1919247219)
      {
        goto LABEL_25;
      }

      v21 = "volume keybag";
    }
  }

  else
  {
    if (v10 != 1801812339)
    {
      if (v10 == 1835754873)
      {
        v21 = "media keybag";
        goto LABEL_30;
      }

LABEL_25:
      v21 = "unknown keybag";
      if (v10 == 1651273570)
      {
        v21 = "OTI blob";
      }

      goto LABEL_30;
    }

    v21 = "container keybag";
  }

LABEL_30:
  v32 = *(a1 + 4);
  fsck_printf_err("%s (%llu+%llu): number of bytes %u does not match sum of all entries %u\n", a2, a3, a4, a5, a6, a7, a8, v21);
  v14 = 92;
  fsck_fail_func(0x432, 92);
  if (fsckAskPrompt(fsck_apfs_ctx, "Fix the number of bytes? ", v22, v23, v24, v25, v26, v27, v30))
  {
    v14 = 0;
    *(a1 + 4) = v9;
    *a7 = 1;
  }

  return v14;
}

uint64_t write_apfs_superblock(uint64_t *a1, int8x16_t *a2)
{
  apfs_do_update_last_modified_by(a2[2].i64[1], "fsck_apfs", *(a2[2].i64[1] + 16));
  v4 = a2[2].i64[1];
  v7 = a2[5];
  v8 = a2[6].i64[0];
  result = write_obj(a1, 0, v4, &v7, v7, v5);
  if (!result)
  {
    *(state + 53) = 1;
  }

  return result;
}

uint64_t get_latest_snap_xid(uint64_t *a1, uint64_t a2, void *a3)
{
  v22 = 0;
  *a3 = -1;
  v21 = 8;
  v20[0] = 0;
  v20[1] = 0;
  v19 = 16;
  omap_snap_tree = get_omap_snap_tree(a1, a2, &v22);
  if (!omap_snap_tree)
  {
    v14 = v22;
    v15 = -1;
    v16 = a3;
    v17 = 8;
    while (1)
    {
      v18 = tree_lookup(v14, 0, v15, v16, &v21, v17, v20, &v19);
      omap_snap_tree = v18;
      if ((v18 & 0xFFFFFFFD) != 0)
      {
        break;
      }

      if (v18)
      {
        return omap_snap_tree;
      }

      if ((v20[0] & 3) == 0)
      {
        return 0;
      }

      v14 = v22;
      v17 = v21;
      v15 = -2;
      v16 = a3;
    }
  }

  v5 = strerror(omap_snap_tree);
  fsck_printf_err("unable to lookup latest snap xid: %s\n", v6, v7, v8, v9, v10, v11, v12, v5);
  return omap_snap_tree;
}

uint64_t fsck_obj_phys(uint64_t *a1, char a2, unint64_t a3, int a4, int a5, int a6, int8x16_t a7, int8x16_t a8)
{
  if (fletcher64_verify_cksum(a1, (a1 + 1), (a6 - 8), 0, a7, a8))
  {
    v23 = *a1;
    fsck_printf_err("object (oid 0x%llx): o_cksum (0x%llx) is invalid for object\n", v13, v14, v15, v16, v17, v18, v19, a1[1]);
    v20 = 92;
    fsck_fail_func(5, 92);
    if ((a2 & 1) == 0)
    {
LABEL_6:
      if ((a2 & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v20 = 0;
    if ((a2 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  if (a1[1])
  {
    goto LABEL_6;
  }

  fsck_printf_err("object (oid 0x%llx): o_oid invalid\n", v13, v14, v15, v16, v17, v18, v19, 0);
  v20 = 92;
  fsck_fail_func(6, 92);
  if ((a2 & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  v21 = a1[2];
  if (!v21)
  {
    fsck_printf_err("object (oid 0x%llx): o_xid invalid, o_xid is 0\n", v13, v14, v15, v16, v17, v18, v19, a1[1]);
    v20 = 92;
    fsck_fail_func(7, 92);
    v21 = a1[2];
  }

  if (v21 > a3)
  {
    fsck_printf_err("object (oid 0x%llx): o_xid invalid, o_xid %llu is greater than nx_next_xid: %llu\n", v13, v14, v15, v16, v17, v18, v19, a1[1]);
    v20 = 92;
    fsck_fail_func(8, 92);
  }

LABEL_12:
  if ((a2 & 4) != 0 && *(a1 + 6) != a4)
  {
    v24 = *(a1 + 6);
    fsck_printf_err("object (oid 0x%llx): o_type invalid, o_type 0x%x should be 0x%x\n", v13, v14, v15, v16, v17, v18, v19, a1[1]);
    v20 = 92;
    fsck_fail_func(9, 92);
  }

  if ((a2 & 8) != 0 && *(a1 + 7) != a5)
  {
    v25 = *(a1 + 7);
    fsck_printf_err("object (oid 0x%llx): o_subtype invalid, o_subtype 0x%x should be 0x%x\n", v13, v14, v15, v16, v17, v18, v19, a1[1]);
    v20 = 92;
    fsck_fail_func(0xA, 92);
  }

  return v20;
}

unsigned int *get_nx_superblock(uint64_t a1, _BYTE *a2)
{
  v4 = dev_block_size(a1);
  if (v4 <= 0x1000)
  {
    v5 = 4096;
  }

  else
  {
    v5 = v4;
  }

  v6 = dev_block_count(a1);
  v7 = malloc_type_calloc(1uLL, v5, 0xF6CF7D2AuLL);
  if (!v7)
  {
LABEL_13:
    fsck_printf_err("failed to allocate memory to read the container superblock\n", v8, v9, v10, v11, v12, v13, v14, v57);
    fsck_fail_func(0x56, 12);
    return 0;
  }

  v15 = v7;
  while (1)
  {
    dev_block_size(a1);
    v16 = dev_read(a1);
    if (v16)
    {
      v38 = v16;
      fsck_printf_err("failed to read container superblock\n", v17, v18, v19, v20, v21, v22, v23, v57);
      v37 = 87;
      v39 = v38;
LABEL_25:
      fsck_fail_func(v37, v39);
      free(v15);
      return 0;
    }

    if (v15[8] != 1112758350)
    {
      DumpData(v15, v5);
      fsck_printf_err("Device does not contain a valid APFS container.\n", v40, v41, v42, v43, v44, v45, v46, v57);
      v37 = 88;
LABEL_24:
      v39 = 22;
      goto LABEL_25;
    }

    v24.i32[0] = v15[9];
    if ((v24.i32[0] - 65537) < 0xFFFF0FFF || (v25 = v24.i32[0] % dev_block_size(a1), v24 = v15[9], v25) || (v26 = vcnt_s8(v24), v26.i16[0] = vaddlv_u8(v26), v26.i32[0] >= 2u))
    {
      fsck_printf_err("nx_block_size of %u is invalid\n", v17, v18, v19, v20, v21, v22, v23, v24.i8[0]);
      v37 = 89;
      goto LABEL_24;
    }

    if (v24.i32[0] == dev_block_size(a1))
    {
      break;
    }

    v36 = v15[9];
    dev_set_block_size(a1);
    v5 = v15[9];
    free(v15);
    v6 = dev_block_count(a1);
    v15 = malloc_type_calloc(1uLL, v5, 0xF6CF7D2AuLL);
    if (!v15)
    {
      goto LABEL_13;
    }
  }

  if (*(v15 + 5) - 1 >= v6)
  {
    fsck_printf_warn("nx_block_count is %llu, while device block count is %llu\n", v27, v28, v29, v30, v31, v32, v33, *(v15 + 5));
    fsck_fail_func(0x1F9, -7);
    *(v15 + 5) = v6;
    *a2 = 1;
  }

  if (!fsck_obj_phys(v15, 15, *(v15 + 12), -2147483647, 0, v15[9], v34, v35))
  {
    return v15;
  }

  v87 = 0;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  v59[0] = a1;
  v59[1] = v15;
  v58[0] = v59;
  v58[1] = 0;
  v54 = v15[26];
  if ((v54 & 0x7FFFFFF8) == 0)
  {
    goto LABEL_23;
  }

  v55 = *(v15 + 14);
  if ((v54 & 0x80000000) != 0)
  {
    if (!extent_list_tree_iterate(v59, v55, extent_is_valid_range_cb, v58))
    {
      goto LABEL_29;
    }

LABEL_23:
    fsck_printf_err("cannot find checkpoint area because container superblock is too damaged\n", v47, v48, v49, v50, v51, v52, v53, v57);
    v37 = 506;
    goto LABEL_24;
  }

  v88[1] = v15[26];
  v89 = 0;
  v88[0] = v55;
  if (extent_is_valid_range_cb(&v89, 8, v88, 16, v58, v51, v52, v53))
  {
    goto LABEL_23;
  }

LABEL_29:
  *a2 = 1;
  return v15;
}

uint64_t fsck_nx_superblock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8) != 1)
  {
    fsck_printf_err("nx_sb->nx_o.o_oid != OID_NX_SUPERBLOCK, %llu\n", a2, a3, a4, a5, a6, a7, a8, *(a2 + 8));
    v19 = 92;
    v20 = 51;
    goto LABEL_12;
  }

  if (*(a2 + 32) != 1112758350)
  {
    fsck_printf_err("nx_superblock magic number invalid: 0x%X\n", a2, a3, a4, a5, a6, a7, a8, *(a2 + 32));
    v19 = 92;
    v20 = 52;
    goto LABEL_12;
  }

  v9 = a3;
  if (*(a2 + 40) - 1 >= dev_block_count(a1))
  {
    fsck_printf_err("nx_block_count is %llu, while device block count is %llu\n", v11, v12, v13, v14, v15, v16, v17, *(a2 + 40));
    v22 = 53;
    v23 = 92;
    goto LABEL_15;
  }

  if ((*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    fsck_printf_warn("nx_features has unsupported flags: (0x%llX)\n", v11, v12, v13, v14, v15, v16, v17, *(a2 + 48) & 0xFE);
    fsck_fail_func(0x36, -3);
  }

  if (*(a2 + 56))
  {
    fsck_printf_warn("nx_read_only_compatible_features has unsupported flags: (0x%llX)\n", v11, v12, v13, v14, v15, v16, v17, *(a2 + 56));
    v18 = state;
    *(state + 32) = 1;
    *(v18 + 41) = 1;
    fsckSetDefaultResponse(fsck_apfs_ctx, 1);
    fsck_fail_func(0x37, -3);
  }

  if ((*(a2 + 64) & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    if (uuid_is_null((a2 + 72)))
    {
      fsck_printf_err("nx_uuid is NULL\n", v24, v25, v26, v27, v28, v29, v30, v85);
      v19 = 92;
      v20 = 57;
      goto LABEL_12;
    }

    if (*(a2 + 88) <= 0x3FFuLL)
    {
      fsck_printf_err("nx_next_oid (%llu) is less than the minimum (%u)\n", v24, v25, v26, v27, v28, v29, v30, *(a2 + 88));
      v19 = 92;
      v20 = 58;
      goto LABEL_12;
    }

    v119 = 0;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v92 = 0u;
    v90 = a1;
    v91 = a2;
    v31 = *(a2 + 104) & 0x7FFFFFFF;
    v88 = &v90;
    v89 = 0;
    if (v31 <= 7)
    {
      fsck_printf_err("nx_xp_desc_blocks (%u) is less than 8\n", v24, v25, v26, v27, v28, v29, v30, v31);
      v19 = 92;
      v20 = 59;
      goto LABEL_12;
    }

    if (sub_10005FCBC(&v90, &v88, v25, v26, v27, v28, v29, v30))
    {
      v86 = *(a2 + 104);
      fsck_printf_err("NX checkpoint desc range is invalid: 0x%llx+0x%x\n", v32, v33, v34, v35, v36, v37, v38, *(a2 + 112));
      v19 = 92;
      v20 = 60;
      goto LABEL_12;
    }

    if (v89 != (*(a2 + 104) & 0x7FFFFFFF))
    {
      fsck_printf_err("NX checkpoint desc blocks field is %u, but sum of ranges is %llu\n", v32, v33, v34, v35, v36, v37, v38, *(a2 + 104));
      v19 = 92;
      v20 = 574;
      goto LABEL_12;
    }

    if ((*(a2 + 108) & 0x7FFFFFFFu) <= 7)
    {
      fsck_printf_err("nx_xp_data_blocks (%u) is less than 8\n", v32, v33, v34, v35, v36, v37, v38, *(a2 + 108));
      v19 = 92;
      v20 = 61;
      goto LABEL_12;
    }

    v89 = 0;
    if (sub_10005FD2C(&v90, extent_is_valid_range_cb, &v88))
    {
      v87 = *(a2 + 108);
      fsck_printf_err("NX checkpoint data range is invalid: 0x%llx+0x%x\n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 120));
      v19 = 92;
      v20 = 62;
      goto LABEL_12;
    }

    v46 = *(a2 + 108) & 0x7FFFFFFF;
    if (v89 != v46)
    {
      fsck_printf_err("NX checkpoint data blocks field is %u, but sum of ranges is %llu\n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 108));
      v19 = 92;
      v20 = 575;
      goto LABEL_12;
    }

    v47 = *(a2 + 104) & 0x7FFFFFFF;
    if (*(a2 + 128) >= v47)
    {
      fsck_printf_err("nx_xp_desc_next (%u) is larger than the # of nx_xp_desc_blocks (%u)\n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 128));
      v19 = 92;
      v20 = 63;
      goto LABEL_12;
    }

    if (*(a2 + 132) >= v46)
    {
      fsck_printf_err("nx_xp_data_next (%u) is larger than the # of nx_xp_data_blocks (%u)\n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 132));
      v19 = 92;
      v20 = 64;
      goto LABEL_12;
    }

    if ((v9 & 1) != 0 || *(a2 + 140) || *(a2 + 148) || *(a2 + 136) || *(a2 + 144))
    {
      if (*(a2 + 136) >= v47)
      {
        fsck_printf_err("nx_xp_desc_index (%u) is larger than nx_xp_desc_blocks (%u)\n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 136));
        v19 = 92;
        v20 = 65;
        goto LABEL_12;
      }

      v48 = *(a2 + 140);
      if (v48 <= 1)
      {
        fsck_printf_err("nx_xp_desc_len (%u) is less than 2\n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 140));
        v19 = 92;
        v20 = 66;
        goto LABEL_12;
      }

      if (v48 >= v47)
      {
        fsck_printf_err("nx_xp_desc_len (%u) is larger than nx_xp_desc_blocks (%u)\n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 140));
        v19 = 92;
        v20 = 67;
        goto LABEL_12;
      }

      if (*(a2 + 144) >= v46)
      {
        fsck_printf_err("nx_xp_data_index (%u) is is larger than nx_xp_data_blocks (%u)\n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 144));
        v19 = 92;
        v20 = 68;
        goto LABEL_12;
      }

      v49 = *(a2 + 148);
      if (v49 <= 1)
      {
        fsck_printf_err("nx_xp_data_len (%u) is less than 2\n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 148));
        v19 = 92;
        v20 = 69;
        goto LABEL_12;
      }

      if (v49 >= v46)
      {
        fsck_printf_err("nx_xp_data_len (%u) is larger than nx_xp_data_blocks (%u)\n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 148));
        v19 = 92;
        v20 = 70;
        goto LABEL_12;
      }
    }

    if (!*(a2 + 152))
    {
      fsck_printf_err("nx_spaceman_oid is invalid\n", v39, v40, v41, v42, v43, v44, v45, v85);
      v19 = 92;
      v20 = 71;
      goto LABEL_12;
    }

    if (!*(a2 + 160))
    {
      fsck_printf_err("nx_omap_oid is invalid\n", v39, v40, v41, v42, v43, v44, v45, v85);
      v19 = 92;
      v20 = 72;
      goto LABEL_12;
    }

    if ((*(a2 + 168) - 1) <= 0x3FE)
    {
      fsck_printf_err("nx_reaper_oid (%llu) is less than minimum OID (%d)\n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 168));
      v19 = 92;
      v20 = 73;
      goto LABEL_12;
    }

    if ((*(a2 + 180) - 101) < 0xFFFFFF9C)
    {
      fsck_printf_err("nx_max_file_systems (%u) is invalid\n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 180));
      v19 = 92;
      v20 = 74;
      goto LABEL_12;
    }

    for (i = 0; i != 100; ++i)
    {
      v51 = *(a2 + 184 + 8 * i);
      if ((v51 - 1) < 0x3FF)
      {
        fsck_printf_err("nx_fs_oid (%llu) at index (%d) is less than minimum OID (%d)\n", v39, v40, v41, v42, v43, v44, v45, v51);
        v19 = 92;
        v20 = 75;
        goto LABEL_12;
      }
    }

    if (*(a2 + 1264) >= 8uLL)
    {
      fsck_printf_warn("nx_flags (0x%llx) has an unknown flag set \n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 1264));
      fsck_fail_func(0x4C, -3);
    }

    v52 = *(a2 + 1312);
    if (v52 != 1)
    {
      fsck_printf_warn("nx_ephemeral_info 0: invalid version (%u), should be: (%d)\n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 1312));
      fsck_fail_func(0x4D, -6);
    }

    if (WORD1(v52) != 4)
    {
      fsck_printf_warn("nx_ephemeral_info 0: invalid structures per fs (%u), should be: (%d)\n", v39, v40, v41, v42, v43, v44, v45, SBYTE2(v52));
      fsck_fail_func(0x4E, -8);
    }

    if ((v52 - 0x900000000) <= 0xFFFFFFF7FFFFFFFFLL)
    {
      fsck_printf_warn("nx_ephemeral_info 0: invalid minimum block count per structure (%u), should be less than: (%d)\n", v39, v40, v41, v42, v43, v44, v45, SBYTE2(v52));
      fsck_fail_func(0x4F, -7);
    }

    for (j = 0; j != 3; ++j)
    {
      if (*(a2 + 1320 + 8 * j))
      {
        fsck_printf_warn("nx_ephemeral_info %d: invalid info (0x%llx)\n", v39, v40, v41, v42, v43, v44, v45, j + 1);
        fsck_fail_func(0x50, -10);
      }
    }

    v54 = *(a2 + 1400);
    if (v54)
    {
      v55 = *(a2 + 1392);
      v56 = *(v91 + 40);
      v57 = v56 - v54 >= v55 && v56 > v54;
      v58 = !v57 || v55 < 1;
      if (v58 || v56 <= v55)
      {
        fsck_printf_err("NX media keylocker data range is invalid: 0x%llx+%llu\n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 1392));
        v19 = 92;
        v20 = 949;
        goto LABEL_12;
      }
    }

    v60 = *(a2 + 1304);
    if (v60)
    {
      v61 = *(a2 + 1296);
      v62 = *(v91 + 40);
      v63 = v62 - v60 >= v61 && v62 > v60;
      v64 = !v63 || v61 < 1;
      if (v64 || v62 <= v61)
      {
        fsck_printf_err("NX keybag data range is invalid: 0x%llx+%llu\n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 1296));
        v19 = 92;
        v20 = 81;
        goto LABEL_12;
      }
    }

    v66 = *(a2 + 1248);
    if (v66)
    {
      v67 = *(a2 + 1240);
      v68 = *(v91 + 40);
      v69 = v68 - v66 >= v67 && v68 > v66;
      v70 = !v69 || v67 < 1;
      if (v70 || v68 <= v67)
      {
        fsck_printf_err("NX blocked out range is invalid: 0x%llx+%llu\n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 1240));
        v19 = 92;
        v20 = 82;
        goto LABEL_12;
      }
    }

    if (*(a2 + 1352))
    {
      fsck_printf_err("nx_fusion_mt_oid should be invalid but isn't\n", v39, v40, v41, v42, v43, v44, v45, v85);
      v19 = 92;
      v20 = 83;
      goto LABEL_12;
    }

    if (*(a2 + 1360))
    {
      fsck_printf_err("nx_fusion_wbc_oid should be invalid but isn't\n", v39, v40, v41, v42, v43, v44, v45, v85);
      v19 = 92;
      v20 = 84;
      goto LABEL_12;
    }

    if (*(a2 + 1376) || *(a2 + 1368))
    {
      fsck_printf_warn("nx_fusion_wbc should be empty but isn't\n", v39, v40, v41, v42, v43, v44, v45, v85);
      fsck_fail_func(0x5BF, -6);
    }

    v72 = *(a2 + 1384);
    v73 = v72 - 1;
    if (v72 <= 0x3B9AC9BB15066FFFLL && v73 > 0x4BFFE92108FFELL)
    {
      return 0;
    }

    *__str = 0;
    v121 = 0;
    v123 = 0;
    v122 = 0;
    v74 = apfs_parse_version(v72, __str, 25);
    LOBYTE(v82) = v74;
    if (!v74)
    {
      v82 = __str;
      snprintf(__str, 0x19uLL, "%llu", v72);
    }

    if (v72 <= 0x3B9AC9BB15066FFFLL)
    {
      if (v73 >= 0xE8D4A50FFFLL)
      {
        v84 = "nx_newest_mounted_version is less than expected: %s\n";
      }

      else
      {
        v84 = "nx_newest_mounted_version should not start with a 0: %s\n";
      }

      if (v73 < 0xE8D4A50FFFLL)
      {
        v83 = 859;
      }

      else
      {
        v83 = 860;
      }

      if (v73 > 0x4BFFE92108FFELL)
      {
        return 0;
      }
    }

    else
    {
      v83 = 858;
      v84 = "nx_newest_mounted_version is greater than expected: %s\n";
    }

    fsck_printf_warn(v84, v75, v76, v77, v78, v79, v80, v81, v82);
    v22 = v83;
    v23 = -6;
LABEL_15:
    fsck_fail_func(v22, v23);
    return 0;
  }

  fsck_printf_err("nx_incompatible_features has unsupported flags: (0x%llX)\n", v11, v12, v13, v14, v15, v16, v17, *(a2 + 64) & 0xFD);
  v19 = 92;
  v20 = 56;
LABEL_12:
  fsck_fail_func(v20, 92);
  return v19;
}

uint64_t sub_10005FCBC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 8);
  v11 = *(v10 + 104);
  v12 = *(v10 + 112);
  if ((v11 & 0x80000000) != 0)
  {

    return extent_list_tree_iterate(a1, v12, extent_is_valid_range_cb, a2);
  }

  else
  {
    v15 = 0;
    v14[0] = v12;
    v14[1] = v11;
    return extent_is_valid_range_cb(&v15, 8, v14, 16, a2, a6, a7, a8);
  }
}

uint64_t sub_10005FD2C(uint64_t a1, uint64_t (*a2)(void *, uint64_t, void *, uint64_t, uint64_t), uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(v5 + 108);
  v7 = *(v5 + 120);
  if ((v6 & 0x80000000) != 0)
  {

    return extent_list_tree_iterate(a1, v7, a2, a3);
  }

  else
  {
    v10 = 0;
    v9[0] = v7;
    v9[1] = v6;
    return a2(&v10, 8, v9, 16, a3);
  }
}

uint64_t block0_sb_agrees_with_checkpoint_sb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v10 = *(a2 + 16);
    if (*(a1 + 16) > v10)
    {
      v26 = *(a1 + 16);
      fsck_printf_debug("the checkpoint superblock has a lower o_xid (%lld) than the %s (%lld)\n", a2, a3, a4, a5, a6, a7, a8, v10);
      return 92;
    }
  }

  if (*(a1 + 36) != *(a2 + 36))
  {
    v20 = *(a2 + 36);
    v27 = *(a1 + 36);
    fsck_printf_debug("checkpoint<->%s mismatch on nx_block_size: %d %d\n", a2, a3, a4, a5, a6, a7, a8, "block 0 superblock");
    return 92;
  }

  if (*(a1 + 40) != *(a2 + 40))
  {
    v21 = *(a2 + 40);
    v28 = *(a1 + 40);
    fsck_printf_debug("checkpoint<->%s mismatch on nx_block_count: %lld %lld\n", a2, a3, a4, a5, a6, a7, a8, "block 0 superblock");
    return 92;
  }

  if (uuid_compare((a1 + 72), (a2 + 72)))
  {
    fsck_printf_debug("checkpoint<->%s mismatch on uuid\n", v11, v12, v13, v14, v15, v16, v17, "block 0 superblock");
    return 92;
  }

  if (*(a1 + 1280) != *(a2 + 1280) || *(a1 + 1288) != *(a2 + 1288))
  {
    fsck_printf_debug("checkpoint<->%s mismatch on fusion uuid\n", v11, v12, v13, v14, v15, v16, v17, "block 0 superblock");
    return 92;
  }

  if (*(a1 + 104) != *(a2 + 104))
  {
    v22 = *(a2 + 104);
    v29 = *(a1 + 104);
    fsck_printf_debug("checkpoint<->%s mismatch on nx_xp_desc_blocks: %d %d\n", v11, v12, v13, v14, v15, v16, v17, "block 0 superblock");
    return 92;
  }

  if (*(a1 + 108) != *(a2 + 108))
  {
    v23 = *(a2 + 108);
    v30 = *(a1 + 108);
    fsck_printf_debug("checkpoint<->%s mismatch on nx_xp_data_blocks: %d %d\n", v11, v12, v13, v14, v15, v16, v17, "block 0 superblock");
    return 92;
  }

  if (*(a1 + 112) != *(a2 + 112))
  {
    v24 = *(a2 + 112);
    v31 = *(a1 + 112);
    fsck_printf_debug("checkpoint<->%s mismatch on nx_xp_desc_base: %lld %lld\n", v11, v12, v13, v14, v15, v16, v17, "block 0 superblock");
    return 92;
  }

  if (*(a1 + 120) != *(a2 + 120))
  {
    v25 = *(a2 + 120);
    v32 = *(a1 + 120);
    fsck_printf_debug("checkpoint<->%s mismatch on nx_xp_data_base: %lld %lld\n", v11, v12, v13, v14, v15, v16, v17, "block 0 superblock");
    return 92;
  }

  return 0;
}

uint64_t get_latest_checkpoint(uint64_t a1, uint64_t a2, void **a3, unint64_t *a4)
{
  v180 = a4;
  v181 = &v175;
  v214 = 0;
  v7 = *(a2 + 36);
  __chkstk_darwin(a1);
  v9 = (&v175 - ((v8 + 15) & 0x1FFFFFFF0));
  bzero(v9, v8);
  v17 = *(a2 + 1264);
  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  v208 = 0u;
  v209 = 0u;
  v206 = 0u;
  v207 = 0u;
  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v203 = 0u;
  v201 = 0u;
  v200 = 0u;
  v199 = 0u;
  v198 = 0u;
  v197 = 0u;
  v196 = 0u;
  v195 = 0u;
  v194 = 0u;
  v192 = 0u;
  v193 = 0u;
  v190 = 0u;
  v191 = 0u;
  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  v185 = a1;
  v183 = a3;
  *a3 = 0;
  if (!*(a2 + 140) || !*(a2 + 148) || !*(a2 + 136) || !*(a2 + 144) || dev_is_external(a1) || (v17 & 2) == 0)
  {
    goto LABEL_134;
  }

  v18 = (*(a2 + 140) + *(a2 + 136) - 1) % (*(a2 + 104) & 0x7FFFFFFFu);
  v19 = 1;
  v182 = 1;
  do
  {
    v20 = 0;
    v21 = 0;
    while (1)
    {
      v22 = *(a2 + 104);
      v23 = v22 & 0x7FFFFFFF;
      if ((v22 & 0x7FFFFFFF) <= v20 || v21 > v23)
      {
        sub_10006128C();
      }

      v25 = v20 + v18 + v23;
      v26 = v25 % v23;
      *&v186 = a2;
      v27 = *(a2 + 112);
      if (v22 < 0)
      {
        v40 = nx_metadata_fragmented_block_address_lookup(&v185, v27, v25 % v23, &v214, 0);
        if (v40)
        {
          v31 = v40;
          v41 = strerror(v40);
          fsck_printf_warn("failed to look up checkpoint block address: %s\n", v42, v43, v44, v45, v46, v47, v48, v41);
          v39 = 542;
          goto LABEL_19;
        }
      }

      else
      {
        v214 = v27 + v26;
      }

      v28 = dev_read(a1);
      if (v28)
      {
        v31 = v28;
        v168 = v214;
        strerror(v28);
        fsck_printf_err("dev_read(%llu, 1): %s\n", v32, v33, v34, v35, v36, v37, v38, v168);
        v39 = 127;
LABEL_19:
        v49 = v31;
        goto LABEL_20;
      }

      if (!v9[1] && *v183)
      {
        return 0;
      }

      if (*(v9 + 6) == -2147483647)
      {
        if (fsck_obj_phys(v9, 11, v9[2], 0, 0, *(a2 + 36), v29, v30))
        {
          v170 = v9[2];
          fsck_printf_warn("checkpoint %d (xid %llu) fsck_obj_phys failed\n", v50, v51, v52, v53, v54, v55, v56, v26);
          goto LABEL_21;
        }

        if (block0_sb_agrees_with_checkpoint_sb(a2, v9, v21 == 0, v52, v53, v54, v55, v56))
        {
          v171 = v9[2];
          fsck_printf_warn("checkpoint %d (xid %llu) superblock disagrees with block 0\n", v10, v11, v12, v13, v14, v15, v16, v26);
          goto LABEL_21;
        }

        v57 = *(v9 + 35);
        v58 = (v57 + *(v9 + 34) - 1) % (v9[13] & 0x7FFFFFFF);
        if (v26 != v58)
        {
          fsck_printf_warn("xp_sb->nx_xp_desc_index (%d) doesn't match index block (%d)\n", v10, v11, v12, v13, v14, v15, v16, v58);
          v39 = 128;
          goto LABEL_36;
        }

        if (v57 + v21 <= (*(a2 + 104) & 0x7FFFFFFFu))
        {
          break;
        }
      }

LABEL_21:
      v20 = ~v21++;
      if (v21 == v19)
      {
        goto LABEL_132;
      }
    }

    if (fsck_nx_superblock(a1, v9, 1, v12, v13, v14, v15, v16))
    {
      v172 = v9[2];
      fsck_printf_warn("checkpoint %d (xid %llu) superblock is invalid\n", v59, v60, v61, v62, v63, v64, v65, v26);
      goto LABEL_21;
    }

    *&v186 = v9;
    v215 = 0;
    v216 = 0;
    if (*(v9 + 35) == 1)
    {
      goto LABEL_115;
    }

    v66 = 0;
    while (1)
    {
      v67 = *(v9 + 34);
      v176 = v66;
      v68 = (v67 + v66) % (v9[13] & 0x7FFFFFFF);
      v69 = *(v186 + 104);
      if ((v69 & 0x7FFFFFFFu) <= v68)
      {
        v71 = 22;
LABEL_100:
        LODWORD(v184) = v71;
        strerror(v71);
        fsck_printf_err("failed to look up checkpoint block address %d: %s\n", v101, v102, v103, v104, v105, v106, v107, v68);
        v110 = 540;
        v108 = v184;
        goto LABEL_111;
      }

      v70 = *(v186 + 112);
      if (v69 < 0)
      {
        v71 = nx_metadata_fragmented_block_address_lookup(&v185, v70, v68, &v215, 0);
        if (v71)
        {
          goto LABEL_100;
        }
      }

      else
      {
        v215 = v70 + v68;
      }

      if (v216)
      {
        free(v216);
        v216 = 0;
      }

      v72 = copy_obj(&v185, 0, 0x40000000, v215, 0, 0, 12, 0, &v216, 0, 0);
      v80 = v72 == 0;
      if (v72)
      {
        goto LABEL_112;
      }

      v81 = v216;
      if (*(v216 + 1) != v215)
      {
        fsck_printf_err("cpm_o.o_oid (0x%llx) doesn't match the physical address (0x%llx)\n", v73, v74, v75, v76, v77, v78, v79, *(v216 + 1));
        v110 = 107;
        goto LABEL_110;
      }

      if (*(v216 + 2) != *(v186 + 16))
      {
        fsck_printf_err("checkpoint map o_xid (0x%llx) doesn't match checkpoint superblock o_xid (0x%llx)\n", v73, v74, v75, v76, v77, v78, v79, *(v216 + 2));
        v110 = 108;
        goto LABEL_110;
      }

      v82 = v216[9];
      if (!v82)
      {
        fsck_printf_err("cpm_count is 0\n", v73, v74, v75, v76, v77, v78, v79, v175);
        v110 = 109;
        goto LABEL_110;
      }

      v83 = *(v186 + 36);
      v177 = v186;
      v178 = v83;
      if ((v83 - 40) / 0x28uLL < v82)
      {
        fsck_printf_err("cpm_count (%u) is larger than the max that this block size can accommodate (%u)\n", v73, v74, v75, v76, v77, v78, v79, v82);
        v110 = 110;
        goto LABEL_110;
      }

      v175 = v72 == 0;
      v84 = *(v9 + 35);
      v85 = v216[8];
      v179 = v216;
      if (v85 >= 2)
      {
        fsck_printf_warn("cpm_flags has an unknown flag set 0x%x\n", v73, v74, v75, v76, v77, v78, v79, v85);
        fsck_fail_func(0x6F, -3);
        v81 = v179;
        v85 = *(v179 + 8);
      }

      if (v176 == v84 - 2)
      {
        if ((v85 & 1) == 0)
        {
          fsck_printf_err("cpm_flags has invalid flags set: 0x%x\n", v73, v74, v75, v76, v77, v78, v79, v85);
          v110 = 112;
          goto LABEL_110;
        }
      }

      else if (v85)
      {
        fsck_printf_err("cpm_flags has invalid flags set: 0x%x\n", v73, v74, v75, v76, v77, v78, v79, v85);
        v110 = 113;
        goto LABEL_110;
      }

      if (*(v81 + 9))
      {
        break;
      }

LABEL_90:
      v80 = v175;
      v66 = v176 + 1;
      if (v176 + 1 >= (*(v9 + 35) - 1))
      {
        goto LABEL_112;
      }
    }

    v86 = 0;
    v87 = (v81 + 9);
    while (2)
    {
      v88 = *(v87 - 8);
      if ((v88 & 0xC0000000) != 0x80000000)
      {
        fsck_printf_err("cpm_map[%d].cpm_type storage type (0x%x) != OBJ_EPHEMERAL\n", v73, v74, v75, v76, v77, v78, v79, v86);
        v110 = 114;
        goto LABEL_110;
      }

      v89 = *(v87 - 8) > 0x12u || ((1 << v88) & 0x6002C) == 0;
      v184 = v86;
      if (v89)
      {
        fsck_printf_warn("cpm_map[%d].cpm_type object type (0x%x) is invalid!\n", v73, v74, v75, v76, v77, v78, v79, v86);
        fsck_fail_func(0x73, -5);
        LOBYTE(v86) = v184;
      }

      v90 = *(v87 - 7);
      if ((v90 & 0xC0000000) != 0)
      {
        fsck_printf_err("cpm_map[%d].cpm_subtype has nonzero storage type (0x%x)\n", v73, v74, v75, v76, v77, v78, v79, v86);
        v110 = 649;
        goto LABEL_110;
      }

      if ((*(v87 - 7) > 0x24u || ((1 << v90) & 0x100009CA01) == 0) && *(v87 - 7) != 255)
      {
        fsck_printf_warn("cmp_map[%d].cpm_subtype object type (0x%x) is invalid!\n", v73, v74, v75, v76, v77, v78, v79, v86);
        fsck_fail_func(0x28A, -5);
        LOBYTE(v86) = v184;
      }

      if (*(v87 - 2) - 1 <= 0x3FE)
      {
        v165 = *(v87 - 2);
        fsck_printf_err("cpm_map[%d].cpm_fs_oid (%llu) is less than minimum oid (%u)!\n", v73, v74, v75, v76, v77, v78, v79, v86);
        v110 = 515;
        goto LABEL_110;
      }

      if (!*(v87 - 1))
      {
        fsck_printf_err("cpm_map[%d].cpm_oid object type is invalid!\n", v73, v74, v75, v76, v77, v78, v79, v86);
        v110 = 116;
        goto LABEL_110;
      }

      v91 = *(v87 - 6);
      if (!v91)
      {
        fsck_printf_err("xp_map->cpm_map[%d].cpm_size is 0\n", v73, v74, v75, v76, v77, v78, v79, v86);
        v110 = 121;
        goto LABEL_110;
      }

      if (v91 % v178)
      {
        v166 = *(v87 - 6);
        fsck_printf_err("xp_map->cpm_map[%d].cpm_size (%u) is not a multiple of nx_block_size (%u)\n", v73, v74, v75, v76, v77, v78, v79, v86);
        v110 = 122;
        goto LABEL_110;
      }

      v217[0] = *v87;
      v217[1] = (v91 / v178);
      v92 = *(v186 + 120);
      if ((*(v186 + 108) & 0x80000000) != 0)
      {
        if (!extent_list_tree_iterate(&v185, v92, extent_does_not_contain_range_cb, v217))
        {
LABEL_98:
          v167 = *v87;
          v169 = *(v87 - 6);
          fsck_printf_err("cpm_map[%d].cpm_paddr (%llu) + cpm_size (%u) is not in the checkpoint data area\n", v93, v74, v75, v76, v77, v78, v79, v184);
          v110 = 538;
          goto LABEL_110;
        }
      }

      else
      {
        v218[1] = *(v186 + 108);
        v219 = 0;
        v218[0] = v92;
        if (!extent_does_not_contain_range_cb(&v219, 8, v218, 16, v217, v77, v78, v79))
        {
          goto LABEL_98;
        }
      }

      v94 = *v87;
      v218[0] = *v87;
      v95 = *(v186 + 108);
      v73 = *(v186 + 120);
      if ((v95 & 0x80000000) == 0)
      {
        v96 = v94 - v73;
        if (v94 < v73)
        {
          goto LABEL_107;
        }

        v97 = v184;
        if (v96 >= v95)
        {
          goto LABEL_108;
        }

        goto LABEL_81;
      }

      if (extent_list_tree_iterate(&v185, v73, sub_10006123C, v218) == -1)
      {
        v96 = v218[0];
        v97 = v184;
LABEL_81:
        v98 = v177[36];
        if (v96 >= v98)
        {
          v99 = v96 >= (v177[37] + v98);
          v100 = v179;
          if (v99)
          {
            fsck_printf_err("nx_xp_data_index (%u) puts the checkpoint data outside of its range\n", v73, v74, v75, v76, v77, v78, v79, v177[36]);
            v110 = 120;
            goto LABEL_110;
          }
        }

        else
        {
          v99 = v96 + (v177[27] & 0x7FFFFFFF) >= (v177[37] + v98);
          v100 = v179;
          if (v99)
          {
            fsck_printf_err("nx_xp_data_index (%u) puts the checkpoint data outside of its range\n", v73, v74, v75, v76, v77, v78, v79, v177[36]);
            v110 = 119;
            goto LABEL_110;
          }
        }

        v86 = v97 + 1;
        v87 += 5;
        if (v86 >= *(v100 + 9))
        {
          goto LABEL_90;
        }

        continue;
      }

      break;
    }

    v109 = *v87;
LABEL_107:
    LOBYTE(v97) = v184;
LABEL_108:
    fsck_printf_err("could not look up cpm_map[%d].cpm_paddr (%llu) in checkpoint data area\n", v73, v74, v75, v76, v77, v78, v79, v97);
    v110 = 539;
LABEL_110:
    v108 = 92;
LABEL_111:
    fsck_fail_func(v110, v108);
    v80 = 0;
LABEL_112:
    if (v216)
    {
      free(v216);
    }

    if (!v80)
    {
      v174 = v9[2];
      fsck_printf_warn("checkpoint %d (xid %llu) checkpoint map is invalid\n", v73, v74, v75, v76, v77, v78, v79, v26);
      goto LABEL_21;
    }

LABEL_115:
    if (get_nx_reaper(&v185, 0) || get_spaceman(&v185, 0) || get_omap(&v185, 0, 0) || (v218[0] = 0, get_omap_tree(&v185, 0, v218)) || fsck_tree(v218[0], 0, 0, 0, 0, 0))
    {
LABEL_120:
      v111 = v185;
      v185 = 0;
      *&v186 = 0;
      container_cleanup(&v185);
      v185 = v111;
      v173 = v9[2];
      fsck_printf_warn("checkpoint %d (xid %llu) failed consistency check\n", v112, v113, v114, v115, v116, v117, v118, v26);
      v39 = 990;
LABEL_36:
      v49 = -7;
LABEL_20:
      fsck_fail_func(v39, v49);
      goto LABEL_21;
    }

    v217[0] = 0;
    v119 = v186;
    if (*(v186 + 180))
    {
      v120 = 0;
      do
      {
        v121 = *(v119 + 8 * v120 + 184);
        if (v121)
        {
          if (copy_obj(&v185, 0, 0, v121, 0, 0, 13, 0, v217, 0, 0))
          {
            goto LABEL_120;
          }

          free(v217[0]);
          v217[0] = 0;
          v119 = v186;
        }

        ++v120;
      }

      while (v120 < *(v119 + 180));
    }

    v122 = v185;
    v185 = 0;
    *&v186 = 0;
    container_cleanup(&v185);
    v185 = v122;
    if (*v183)
    {
      free(*v183);
    }

    v123 = malloc_type_malloc(*(a2 + 36), 0x3D218F84uLL);
    *v183 = v123;
    if (!v123)
    {
      fsck_printf_err("malloc(%u)\n", v124, v125, v126, v127, v128, v129, v130, *(a2 + 36));
      v161 = 12;
      v162 = 129;
      v163 = 12;
      goto LABEL_166;
    }

    memcpy(v123, v9, 0x588uLL);
    v131 = v180;
    *v180 = v214;
    *(v131 + 2) = *(a2 + 36);
LABEL_132:
    if (*v183)
    {
      return 0;
    }

    if ((v182 & 1) == 0)
    {
      goto LABEL_164;
    }

LABEL_134:
    v132 = *(a2 + 104);
    if ((v132 & 0x7FFFFFFF) == 0)
    {
LABEL_163:
      fsck_printf_err("no valid checkpoint found\n", v10, v11, v12, v13, v14, v15, v16, v175);
      v161 = 92;
      v162 = 126;
      goto LABEL_165;
    }

    v133 = 0;
    v134 = 0;
    LODWORD(v184) = 0;
    v135 = 0;
    while (2)
    {
      *&v186 = a2;
      v136 = *(a2 + 112);
      if ((v132 & 0x80000000) == 0)
      {
        v214 = v133 + v136;
        goto LABEL_138;
      }

      v150 = nx_metadata_fragmented_block_address_lookup(&v185, v136, v133, &v214, 0);
      if (v150)
      {
        v140 = v150;
        strerror(v150);
        fsck_printf_warn("failed to look up checkpoint block address %d: %s\n", v151, v152, v153, v154, v155, v156, v157, v133);
        v149 = 541;
LABEL_142:
        v158 = v140;
LABEL_143:
        fsck_fail_func(v149, v158);
      }

      else
      {
LABEL_138:
        v137 = dev_read(a1);
        if (v137)
        {
          v140 = v137;
          v141 = v214;
          strerror(v137);
          fsck_printf_err("dev_read(%llu, 1): %s\n", v142, v143, v144, v145, v146, v147, v148, v141);
          v149 = 124;
          goto LABEL_142;
        }

        if (v9[1])
        {
          if (fsck_obj_phys(v9, 10, v9[2], 0, 0, *(a2 + 36), v138, v139))
          {
            fsck_printf_warn("checkpoint %d fsck_obj_phys failed\n", v10, v11, v12, v13, v14, v15, v16, v133);
            goto LABEL_144;
          }

          v159 = *(v9 + 6);
          if (v159 != -2147483647 && v159 != 1073741836)
          {
            fsck_printf_warn("checkpoint %d obj->o_type is invalid: (0x%x)\n", v10, v11, v12, v13, v14, v15, v16, v133);
            v149 = 125;
            v158 = -5;
            goto LABEL_143;
          }
        }

        v160 = v9[2];
        if (v160 == v135 && v134)
        {
          v134 = 1;
          if (*(v9 + 6) != -2147483647)
          {
            goto LABEL_144;
          }
        }

        else
        {
          if (v160 < v135)
          {
            goto LABEL_144;
          }

          v134 = *(v9 + 6) == -2147483647;
        }

        v135 = v9[2];
        LODWORD(v184) = v133;
      }

LABEL_144:
      ++v133;
      v132 = *(a2 + 104);
      v19 = v132 & 0x7FFFFFFF;
      if (v133 < (v132 & 0x7FFFFFFFu))
      {
        continue;
      }

      break;
    }

    if (!v135)
    {
      goto LABEL_163;
    }

    v182 = 0;
    v18 = v184;
  }

  while (v19);
  if (*v183)
  {
    return 0;
  }

LABEL_164:
  fsck_printf_err("no valid checkpoint\n", v10, v11, v12, v13, v14, v15, v16, v175);
  v161 = 92;
  v162 = 130;
LABEL_165:
  v163 = 92;
LABEL_166:
  fsck_fail_func(v162, v163);
  return v161;
}

uint64_t fsck_nx_efi_jumpstart(uint64_t *a1)
{
  v32 = 0;
  v2 = a1[1];
  v3 = *(v2 + 36);
  v4 = copy_obj(a1, 0, 0x40000000, *(v2 + 1272), 0, 0, 20, 0, &v32, 0, 1);
  if (!v4)
  {
    v13 = v32;
    if (*(v32 + 8) == 1380209482)
    {
      v14 = *(v32 + 9);
      if (v14 == 1)
      {
        if (!*(v32 + 10))
        {
          fsck_printf_err("invalid EFI jumpstart record file length: %d\n", v5, v6, v7, v8, v9, v10, v11, 0);
          v12 = 92;
          v16 = 92;
          goto LABEL_10;
        }

        v15 = *(v32 + 11);
        if (!v15 || v15 > (v3 - 176) >> 4)
        {
          fsck_printf_err("invalid EFI jumpstart record number of extents: %d\n", v5, v6, v7, v8, v9, v10, v11, *(v32 + 11));
          v12 = 92;
          v16 = 93;
LABEL_10:
          fsck_fail_func(v16, 92);
LABEL_13:
          free(v32);
          return v12;
        }

        v18 = 0;
        v19 = 0;
        v20 = 0;
        do
        {
          v21 = &v13[v18];
          v22 = *(v21 + 22);
          v23 = *(v21 + 23);
          v24 = *(a1[1] + 40);
          if (v24 - v23 < v22 || v24 <= v23 || v22 < 1 || v24 <= v22)
          {
            fsck_printf_err("NX jumpstart record range is invalid: 0x%llx+%llu\n", v22, v23, v7, v8, v9, v10, v11, v22);
            v12 = 92;
            v16 = 1243;
            goto LABEL_10;
          }

          v20 += v23;
          mark_object_allocated(a1, v22, v23, 0, 0x40000000, v22, 0, 0, 0x14u, 1u);
          ++v19;
          v13 = v32;
          v18 += 16;
        }

        while (v19 < *(v32 + 11));
        v30 = *(v32 + 10);
        if (v20 * v3 != (v30 + v3 - 1) / v3 * v3)
        {
          fsck_printf_err("the EFI jumpstart entry has length %u but occupies %llu blocks of size %u\n", v28, v29, v7, v8, v9, v10, v11, v30);
          v12 = 92;
          v16 = 95;
          goto LABEL_10;
        }
      }

      else
      {
        fsck_printf_warn("found EFI jumpstart record of unknown version %d (max known: %d)\n", v5, v6, v7, v8, v9, v10, v11, v14);
        fsck_fail_func(0x5B, -6);
      }

      v12 = 0;
      goto LABEL_13;
    }

    fsck_printf_err("the EFI jumpstart record magic number is invalid: 0x%x\n", v5, v6, v7, v8, v9, v10, v11, *(v32 + 8));
    v12 = 92;
    v16 = 90;
    goto LABEL_10;
  }

  v12 = v4;
  fsck_printf_err("verification/reading of the EFI jumpstart record failed\n", v5, v6, v7, v8, v9, v10, v11, v31);
  return v12;
}

uint64_t evict_mapping_tree_validate_key_val(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4 == 8 && a6 == 16)
  {
    v8 = *a3;
    v9 = *a5;
    v10 = a5[1];
    v11 = *(*(a1 + 8) + 40);
    v12 = v11 - v10;
    if (v11 > v10 && v8 >= 1 && v11 > v8 && v12 >= v8 && v9 >= 1 && v11 > v9 && v12 >= v9)
    {
      return 0;
    }

    v22 = *a5;
    v23 = a5[1];
    fsck_printf_err("evict mapping range is invalid: (0x%llx+%llu --> 0x%llx+%llu)\n", a2, a3, a4, a5, a6, a7, a8, v8);
    v19 = 850;
  }

  else
  {
    fsck_printf_err("unexpected key (%u) / val (%u) size in evict mapping tree\n", a2, a3, a4, a5, a6, a7, a8, a4);
    v19 = 849;
  }

  v20 = 92;
  fsck_fail_func(v19, 92);
  return v20;
}

uint64_t fsck_fragmented_metadata(uint64_t a1)
{
  memset(v19, 0, sizeof(v19));
  v18[0] = a1;
  v18[1] = 0;
  v2 = *(a1 + 8);
  if ((*(v2 + 104) & 0x80000000) != 0)
  {
    tree_init_ext(v19, a1, 0, 0x40000000, 2, 10, 0, *(v2 + 36), 8, 16, 0, *(v2 + 112), uint64_key_compare);
    v5 = fsck_tree(v19, 0, sub_100061204, v18, 0, 1);
    if (v5)
    {
      v4 = v5;
      v13 = "NX checkpoint descriptor area fragmented metadata tree is invalid\n";
LABEL_14:
      fsck_printf_err(v13, v6, v7, v8, v9, v10, v11, v12, v17);
      return v4;
    }

    v2 = *(a1 + 8);
  }

  if ((*(v2 + 108) & 0x80000000) != 0)
  {
    tree_init_ext(v19, a1, 0, 0x40000000, 2, 10, 0, *(v2 + 36), 8, 16, 0, *(v2 + 120), uint64_key_compare);
    v14 = fsck_tree(v19, 0, sub_100061204, v18, 0, 1);
    if (v14)
    {
      v4 = v14;
      v13 = "NX checkpoint data area fragmented metadata tree is invalid\n";
      goto LABEL_14;
    }
  }

  v3 = *(a1 + 24);
  if ((*(v3 + 164) & 0x80000000) != 0)
  {
    tree_init_ext(v19, a1, 0, 0x40000000, 2, 10, 0, *(*(a1 + 8) + 36), 8, 16, 0, *(v3 + 168), uint64_key_compare);
    v15 = fsck_tree(v19, 0, sub_100061204, v18, 0, 1);
    if (v15)
    {
      v4 = v15;
      v13 = "Spaceman internal pool bitmap fragmented metadata tree is invalid\n";
      goto LABEL_14;
    }

    v3 = *(a1 + 24);
  }

  if ((*(v3 + 152) & 0x8000000000000000) == 0)
  {
    return 0;
  }

  tree_init_ext(v19, a1, 0, 0x40000000, 2, 10, 0, *(*(a1 + 8) + 36), 8, 16, 0, *(v3 + 176), uint64_key_compare);
  v4 = fsck_tree(v19, 0, sub_100061204, v18, 0, 1);
  if (v4)
  {
    v13 = "Spaceman internal pool fragmented metadata tree is invalid\n";
    goto LABEL_14;
  }

  return v4;
}

uint64_t sub_100061204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, void *a7, uint64_t a8)
{
  if (extent_is_valid_range_cb(a3, a4, a5, a6, a7, a6, a7, a8))
  {
    return 92;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006123C(void *a1, int a2, void *a3, int a4, void *a5)
{
  result = 92;
  if (a2 == 8 && a4 == 16)
  {
    v7 = *a5 - *a3;
    if (*a5 < *a3 || v7 >= a3[1])
    {
      return 0;
    }

    else
    {
      *a5 = *a1 + v7;
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

char *crypto_init(uint64_t a1)
{
  qword_100103A20 = a1;
  if (!tree_init_ext(&unk_100103A28, 0, 0, 0x8000000, 2, 0, 0, 4096, 8, 24, 0, 0, uint64_key_compare))
  {
    tree_create(&unk_100103A28, 0, 64);
  }

  result = memory_storage_register_tree(&unk_100103A28, "crypto", crypto_abort);
  if (result)
  {
    fsck_printf_warn("failed to register the crypto tree in the fsck memory storage\n", v2, v3, v4, v5, v6, v7, v8, v9);

    return fsck_fail_func(0x582, 12);
  }

  return result;
}

uint64_t crypto_abort()
{
  if (qword_100103A60)
  {
    result = tree_destroy(&unk_100103A28, 0);
  }

  qword_100103A80 = 0;
  return result;
}

void crypto_register(uint64_t a1, char *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!qword_100103A60)
  {
    return;
  }

  if (*a2 >> 60 != 7)
  {
    sub_1000627B0();
  }

  v12 = *a2 & 0xFFFFFFFFFFFFFFFLL;
  v13 = *(a1 + 40);
  v14 = *(v13 + 264);
  if (v12 == 4)
  {
    if ((v14 & 0x108) != 0 || (v14 & 1) != 0 && *(v13 + 976) | qword_100103A20)
    {
LABEL_7:
      sub_100061574(v12);
      if (!v15)
      {
        if (BYTE8(xmmword_100103A68) == 1)
        {
          sub_1000627DC();
        }

        BYTE8(xmmword_100103A68) = 1;
        LODWORD(xmmword_100103A68) = *a3;
      }

      return;
    }
  }

  else if ((v14 & 9) == 0)
  {
    goto LABEL_7;
  }

  v18 = *a3;
  fsck_printf_warn("found unexpected crypto state object (id %llu, refcnt %u)\n", a2, a3, a4, a5, a6, a7, a8, *a2);
  fsck_fail_func(0x340, -2);

  sub_10006150C(a4, 0, 0, 0, a2, 0, v16, v17);
}

uint64_t sub_10006150C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (a6)
    {
      v9 = *(a6 + 22) + 24;
    }

    else
    {
      v9 = 0;
    }

    return fsck_repairs_add(a1, 7, a2, a3, a4, a5, 8u, a6, v9);
  }

  else
  {

    return print_snapshot_warning(0, a2, a3, a4, a5, a6, a7, a8);
  }
}

double sub_100061574(uint64_t a1)
{
  v6 = a1;
  if (!sub_100061C30(a1) && !qword_100103A80)
  {
    v4 = 0uLL;
    v5 = 0;
    v2 = 24;
    v3 = 8;
    if ((tree_lookup(&unk_100103A28, 0, 0, &v6, &v3, 8u, &v4, &v2) & 0xFFFFFFFD) == 0)
    {
      qword_100103A80 = v6;
      result = *&v4;
      xmmword_100103A68 = v4;
      qword_100103A78 = v5;
    }
  }

  return result;
}

void crypto_register_dstream(uint64_t a1, uint64_t a2)
{
  if (qword_100103A60)
  {
    v2 = *(a2 + 16);
    if ((v2 + 1) > 6 || ((1 << (v2 + 1)) & 0x43) == 0)
    {
      sub_100061574(*(a2 + 16));
      if (!v5)
      {
        if (v2 != 4 && v2 != a1 && !qword_100103A78)
        {
          qword_100103A78 = a1;
        }

        ++DWORD1(xmmword_100103A68);
      }
    }
  }
}

double crypto_register_fext(uint64_t *a1, uint64_t a2)
{
  if (qword_100103A60)
  {
    v2 = *a1;
    if (*a1 >> 60 != 8)
    {
      sub_100062808();
    }

    if (!*(a2 + 8))
    {
      sub_100062834();
    }

    if (*(a2 + 7))
    {
      result = sub_100061574(4);
      if (v5)
      {
        return result;
      }
    }

    else
    {
      v3 = *(a2 + 16);
      if (!v3)
      {
        return result;
      }

      if (v3 == 5)
      {
        return result;
      }

      result = sub_100061574(*(a2 + 16));
      if (v6)
      {
        return result;
      }

      if (v3 != 4 && (v2 & 0xFFFFFFFFFFFFFFFLL) != v3 && !qword_100103A78)
      {
        qword_100103A78 = v2 & 0xFFFFFFFFFFFFFFFLL;
      }
    }

    ++DWORD1(xmmword_100103A68);
  }

  return result;
}

double crypto_unregister_fext(uint64_t *a1, uint64_t a2)
{
  if (qword_100103A60)
  {
    v2 = *a1;
    if (*a1 >> 60 != 8)
    {
      sub_100062808();
    }

    if (!*(a2 + 8))
    {
      sub_100062834();
    }

    if (*(a2 + 7))
    {
      result = sub_100061574(4);
      if (v5)
      {
        return result;
      }
    }

    else
    {
      v3 = *(a2 + 16);
      if (!v3)
      {
        return result;
      }

      if (v3 == 5)
      {
        return result;
      }

      result = sub_100061574(*(a2 + 16));
      if (v6)
      {
        return result;
      }

      if (v3 != 4 && qword_100103A78 == (v2 & 0xFFFFFFFFFFFFFFFLL))
      {
        qword_100103A78 = 0;
      }
    }

    --DWORD1(xmmword_100103A68);
  }

  return result;
}

uint64_t crypto_finalize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_100103A60)
  {
    return 0;
  }

  v62 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v6 = sub_100061C30(0);
  if (v6)
  {
LABEL_3:
    tree_for_jobj = v6;
    goto LABEL_9;
  }

  v57 = 24;
  v58 = 8;
  v8 = tree_lookup(&unk_100103A28, 0, 1u, &v62, &v58, 8u, &v59, &v57);
  if (v8)
  {
LABEL_6:
    if (v8 == 2)
    {
      tree_for_jobj = 0;
    }

    else
    {
      tree_for_jobj = v8;
    }

    goto LABEL_9;
  }

  while (1)
  {
    v17 = v60;
    if (v60)
    {
      goto LABEL_27;
    }

    if (v59)
    {
      sub_100062860();
    }

    *v51 = 0;
    v56 = v62 & 0xFFFFFFFFFFFFFFFLL | 0x7000000000000000;
    v54 = 3808;
    v55 = 8;
    v22 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x5B8D365AuLL);
    if (!v22)
    {
      break;
    }

    tree_for_jobj = get_tree_for_jobj(a1, a2, 7, v51, v18, v19, v20, v21);
    if (!tree_for_jobj)
    {
      tree_for_jobj = tree_lookup(*v51, qword_100103A20, 0, &v56, &v55, v55, v22, &v54);
    }

    if (tree_for_jobj == 2)
    {
      free(v22);
      fsck_printf_err("missing crypto state object (id %llu) referenced by %u file extents / dstreams\n", v24, v25, v26, v27, v28, v29, v30, v62);
      fsck_fail_func(0x345, 92);
      if ((*(*(a2 + 40) + 264) & 0x109) == 0x100)
      {
        *(a2 + 13) = 1;
      }

      else
      {
        v31 = v62;
        v32 = v61;
        if (v62 == v61)
        {
          sub_10006288C();
        }

        v6 = sub_100061D04(a1, a2, a3, v62, v62, v13, v14, v15);
        if (v6)
        {
          goto LABEL_3;
        }

        if (v32)
        {
          v6 = sub_100061D04(a1, a2, a3, v31, v32, v13, v14, v15);
          if (v6)
          {
            goto LABEL_3;
          }
        }
      }
    }

    else
    {
      if (tree_for_jobj)
      {
        goto LABEL_40;
      }

      LOBYTE(v60) = 1;
      v23 = HIDWORD(v59) + *v22 < 0;
      LODWORD(v59) = *v22;
      HIDWORD(v59) += v59;
      if (v23)
      {
        sub_1000628B8();
      }

      free(v22);
    }

    v17 = v60;
LABEL_27:
    if ((v17 & 1) != 0 && v62 != 4)
    {
      if (HIDWORD(v59))
      {
        if (v59 >= HIDWORD(v59))
        {
          if (v59 <= HIDWORD(v59))
          {
            sub_1000628E4();
          }

          fsck_printf_warn("refcnt (%u) of crypto state object (id %llu) is greater than expected (%u)\n", v9, v10, v11, v12, v13, v14, v15, v59);
          fsck_fail_func(0x348, -8);
          v56 = v62 & 0xFFFFFFFFFFFFFFFLL | 0x7000000000000000;
          v52 = 0;
          *&v51[4] = 0;
          v53 = 0;
          *v51 = HIDWORD(v59);
          v35 = &v56;
          v36 = v51;
          v37 = a3;
          v38 = 1;
          v39 = 22;
          v40 = 0;
        }

        else
        {
          fsck_printf_err("refcnt (%u) of crypto state object (id %llu) is less than expected (%u)\n", v9, v10, v11, v12, v13, v14, v15, v59);
          fsck_fail_func(0x347, 92);
          v56 = v62 & 0xFFFFFFFFFFFFFFFLL | 0x7000000000000000;
          v52 = 0;
          *&v51[4] = 0;
          v53 = 0;
          *v51 = HIDWORD(v59);
          v35 = &v56;
          v36 = v51;
          v37 = a3;
          v38 = 1;
          v39 = 22;
          v40 = 1;
        }
      }

      else
      {
        fsck_printf_warn("found orphan crypto state object (id %llu, refcnt %u)\n", v9, v10, v11, v12, v13, v14, v15, v62);
        fsck_fail_func(0x346, -8);
        *v51 = v62 & 0xFFFFFFFFFFFFFFFLL | 0x7000000000000000;
        v35 = v51;
        v37 = a3;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v36 = 0;
      }

      v6 = sub_10006150C(v37, v38, v39, v40, v35, v36, v33, v34);
      if (v6)
      {
        goto LABEL_3;
      }
    }

    v49 = 24;
    v50 = 8;
    v8 = tree_lookup(&unk_100103A28, 0, 2u, &v62, &v50, 8u, &v59, &v49);
    if (v8)
    {
      goto LABEL_6;
    }
  }

  tree_for_jobj = 12;
LABEL_40:
  free(v22);
  v41 = v62;
  strerror(tree_for_jobj);
  fsck_printf_err("failed to look up crypto state object (id %llu): %s\n", v42, v43, v44, v45, v46, v47, v48, v41);
  fsck_fail_func(0x3EE, tree_for_jobj);
LABEL_9:
  tree_destroy(&unk_100103A28, 0);
  return tree_for_jobj;
}

uint64_t sub_100061C30(uint64_t a1)
{
  if (qword_100103A80)
  {
    v1 = qword_100103A80 == a1;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    return 0;
  }

  v3 = xmmword_100103A68;
  v4 = qword_100103A78;
  v5 = qword_100103A80;
  if (qword_100103A80 == 4 || v3 == 0 && (BYTE8(v3) & 1) != 0 || v3 != DWORD1(v3))
  {
    result = tree_insert(&unk_100103A28, 0, &v5, 8, &v3, 24);
    goto LABEL_9;
  }

  result = tree_remove(&unk_100103A28, 0, &v5, 8);
  if (result != 2)
  {
LABEL_9:
    if (result)
    {
      return result;
    }
  }

  result = 0;
  qword_100103A80 = 0;
  return result;
}

uint64_t sub_100061D04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = 0;
  LODWORD(v13) = get_tree_for_jobj(a1, a2, 3, &v52, a5, a6, a7, a8);
  v14 = malloc_type_calloc(1uLL, 0x340uLL, 0x8A1E9A27uLL);
  v15 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x829F47D7uLL);
  v23 = v15;
  if (v13 || !v14 || !v15)
  {
    if (v13)
    {
      v13 = v13;
    }

    else
    {
      v13 = 12;
    }

    fsck_printf_err("unable to allocate memory to repair missing crypto state\n", v16, v17, v18, v19, v20, v21, v22, v45);
    v37 = 1084;
LABEL_13:
    fsck_fail_func(v37, v13);
    goto LABEL_14;
  }

  v50 = 3808;
  v51 = 8;
  *v14 = a5 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
  v24 = tree_lookup(v52, qword_100103A20, 0, v14, &v51, 8u, v15, &v50);
  if (!v24)
  {
LABEL_7:
    tree_for_jobj = get_tree_for_jobj(a1, a2, 6, &v52, v25, v26, v27, v28);
    if (!tree_for_jobj)
    {
      v49 = a5 & 0xFFFFFFFFFFFFFFFLL | 0x6000000000000000;
      v47 = 8;
      v48 = 0;
      v46 = 4;
      v39 = tree_lookup(v52, 0, 0, &v49, &v47, 8u, &v48, &v46);
      if (v39 == 2)
      {
        goto LABEL_28;
      }

      v13 = v39;
      if (v39)
      {
        goto LABEL_14;
      }

      if (v14)
      {
        v40 = v23[1];
        v41 = v40 == a5;
        v42 = v40 == a5 ? v14 : 0;
      }

      else
      {
        v41 = 0;
        v42 = 0;
      }

      v43 = sub_100061F80(a1, a2, a3, a5, v42, v23, v50, a4);
      if (!v43)
      {
        v44 = !v14 || v41;
        if (v44 || (v43 = sub_100061F80(a1, a2, a3, v23[1], v14, v23, v50, a4), !v43))
        {
LABEL_28:
          v55[0] = a1;
          v55[1] = a2;
          v55[2] = a3;
          v55[3] = v14;
          v55[4] = v23;
          v55[5] = a4;
          v53 = a5 & 0xFFFFFFFFFFFFFFFLL | 0x4000000000000000;
          v54 = 0;
          v43 = fsroot_iterate(a1, a2, 0, 1, &v53, 10, sub_10006246C, v55);
        }
      }

      v13 = v43;
      goto LABEL_14;
    }

    v13 = tree_for_jobj;
    fsck_printf_err("unable to get fsroot tree to repair missing crypto state\n", v30, v31, v32, v33, v34, v35, v36, v45);
    v37 = 1158;
    goto LABEL_13;
  }

  v13 = v24;
  if (v24 == 2)
  {
    v14 = 0;
    goto LABEL_7;
  }

LABEL_14:
  free(v14);
  free(v23);
  return v13;
}

uint64_t sub_100061F80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, int a7, uint64_t a8)
{
  if (a5)
  {
    v15 = *(a6 + 80) & 0xF000;
    v54 = 0;
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    v50 = 0;
    if (v15 == 0x8000)
    {
      xfield = get_xfield((a6 + 92), a7 - 92, 8, &v54, &v50, 0, 0);
      if (xfield)
      {
LABEL_6:
        v17 = *a5 & 0xFFFFFFFFFFFFFFFLL;
        strerror(xfield);
        fsck_printf_err("failed to get inode (id %llu) dstream: %s\n", v18, v19, v20, v21, v22, v23, v24, v17);
        fsck_fail_func(0x43B, xfield);
        return xfield;
      }

      if (v50 < 0x28u)
      {
        xfield = 34;
        goto LABEL_6;
      }

      v42 = *(v54 + 4);
      v43 = v54[1];
      v51 = *v54;
      v52 = v43;
      v53 = v42;
      v26 = 1;
      v25 = v43;
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v54 = 0;
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    v50 = 0;
  }

  if (v25 == a8)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v47 = 0;
  v48 = 0;
  v46[0] = a1;
  v46[1] = a2;
  v46[2] = a3;
  v46[3] = a8;
  BYTE4(v47) = v27;
  v49 = 0;
  if (v27 == 1)
  {
    LODWORD(v47) = *(a6 + 60);
  }

  v45[0] = a4 & 0xFFFFFFFFFFFFFFFLL | 0x8000000000000000;
  v45[1] = 0;
  v28 = fsroot_iterate(a1, a2, 0, 1, v45, 16, sub_1000621DC, v46);
  if (v28)
  {
    return v28;
  }

  if (v27)
  {
    v37 = v48;
    if (!v48)
    {
      v37 = -1;
    }

    *&v52 = v37;
    fsck_printf_warn("found dstream (id %llu) with missing crypto state object (id %llu)\n", v29, v30, v31, v32, v33, v34, v35, a4);
    v28 = sub_100062364(a3, 14, a5, &v51, 40, v38, v39, v40);
    if (v28)
    {
      return v28;
    }

    if (v48)
    {
      v44 = v48 & 0xFFFFFFFFFFFFFFFLL | 0x7000000000000000;
      v28 = sub_10006150C(a3, 1, 23, 1, &v44, 0, v34, v35);
      if (v28)
      {
        return v28;
      }
    }
  }

  v41 = v49 ? v26 : 0;
  if (v41 == 1 && (v28 = sub_100062364(a3, 16, a5, &v49, 8, v33, v34, v35), v28))
  {
    return v28;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000621DC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a3 + 16);
  if (v10 == *(a5 + 24))
  {
    v12 = *(a3 + 8);
    if (v12)
    {
      v12 = *a3 & 0xFFFFFFFFFFFFFFLL;
    }

    v13 = *(a5 + 48);
    v14 = __CFADD__(v13, v12);
    v15 = v13 + v12;
    *(a5 + 48) = v15;
    if (v14)
    {
      fsck_printf_warn("sparse bytes overflow (current %llu, update %llu)\n", a2, v10, a4, a5, a6, a7, a8, v15);
      fsck_fail_func(0x43A, 92);
      v10 = *(a5 + 24);
    }

    fsck_printf_err("found fext (id %llu) with missing crypto state object (id %llu)\n", a2, v10, a4, a5, a6, a7, a8, *a1);
    v23 = *(a5 + 16);
    if (v23)
    {
      v25 = *a5;
      v24 = *(a5 + 8);
      result = fsck_repairs_add(v23, 7, 1, 0xBu, 1, a1, 0x10u, a3, 0x18u);
      if (!result)
      {
        v27 = *(a3 + 8);
        v28 = (*a3 & 0xFFFFFFFFFFFFFFuLL) / *(*(v25 + 8) + 36);

        return file_extent_unregister(v24, v27, v28);
      }
    }

    else
    {

      return print_snapshot_warning(0, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  else if (*(a5 + 36) == 1 && (v10 ? (v29 = *(a5 + 40) == 0) : (v29 = 0), v29))
  {
    v30 = 0;
    result = sub_1000623B8(*a5, *(a5 + 8), v10, *(a5 + 32), &v30, a6, a7, a8);
    if (!result && v30 == 1)
    {
      *(a5 + 40) = *(a3 + 16);
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_100062364(uint64_t a1, uint64_t a2, char *a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    return fsck_repairs_add(a1, 7, 1, a2, 1, a3, 8u, a4, a5);
  }

  return print_snapshot_warning(0, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1000623B8(uint64_t a1, void *a2, uint64_t a3, int a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = 0;
  result = get_tree_for_jobj(a1, a2, 7, &v18, a5, a6, a7, a8);
  if (!result)
  {
    v16 = 0;
    v17 = a3 & 0xFFFFFFFFFFFFFFFLL | 0x7000000000000000;
    v14 = 0;
    v15 = 0;
    v12 = 24;
    v13 = 8;
    LODWORD(result) = tree_lookup(v18, qword_100103A20, 0, &v17, &v13, 8u, &v14, &v12);
    if (!result && (BYTE4(v15) & 0x1F) == a4)
    {
      *a5 = 1;
    }

    if (result == 2)
    {
      return 0;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_10006246C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*a3 & 1) == 0)
  {
    return 0;
  }

  v40[7] = v8;
  v40[8] = v9;
  if (*(a3 + 28) != a5[5])
  {
    return 0;
  }

  v13 = *(a3 + 4);
  v14 = (a1 + 10);
  v32 = *(a1 + 8);
  fsck_printf_warn("found xattr (id %llu, name %.*s) with missing crypto state\n", a2, a3, a4, a5, a6, a7, a8, *a1);
  v38 = 0;
  v39 = 0;
  v15 = *a5;
  v16 = a5[1];
  v36[0] = *a5;
  v36[1] = v16;
  v36[2] = a5[5];
  v37 = 0;
  v17 = a5[3];
  v37 = v17 != 0;
  if (v17)
  {
    HIDWORD(v37) = *(a5[4] + 60);
  }

  v35[0] = v13 & 0xFFFFFFFFFFFFFFFLL | 0x8000000000000000;
  v35[1] = 0;
  result = fsroot_iterate(v15, v16, 0, 1, v35, 16, sub_1000626B8, v36);
  if (!result)
  {
    v20 = v38;
    v40[0] = v38;
    if (*(a1 + 8) == 23)
    {
      v21 = strncmp(v14, "com.apple.ResourceFork", 0x17uLL);
      v22 = v21 == 0;
      if (v20)
      {
        goto LABEL_14;
      }

      if (!v21)
      {
        v22 = 1;
        LOBYTE(v39) = 1;
        goto LABEL_15;
      }
    }

    else if (v38)
    {
      v22 = 0;
      goto LABEL_14;
    }

    v22 = 0;
    v40[0] = -1;
LABEL_14:
    if ((v39 & 1) == 0)
    {
      return sub_100062754(a5[2], 1, 25, a1, v40, 8, v18, v19);
    }

LABEL_15:
    result = sub_100062754(a5[2], 0, 0, a1, 0, 0, v18, v19);
    if (result)
    {
      return result;
    }

    v26 = a5[3];
    if (v26)
    {
      if (v22)
      {
        v33 = 0x8000;
        result = sub_100062364(a5[2], 17, v26, &v33, 8, v23, v24, v25);
        if (result)
        {
          return result;
        }

        v34 = 0x4000;
        v26 = a5[3];
LABEL_28:
        result = sub_100062364(a5[2], 18, v26, &v34, 8, v27, v28, v29);
        if (result)
        {
          return result;
        }

        return 0;
      }

      v30 = *(a1 + 8);
      if (v30 == 21)
      {
        if (!strncmp(v14, "com.apple.FinderInfo", 0x15uLL))
        {
          v31 = 256;
          goto LABEL_27;
        }
      }

      else if (v30 == 26 && !strncmp(v14, "com.apple.system.Security", 0x1AuLL))
      {
        v31 = 64;
LABEL_27:
        v34 = v31;
        goto LABEL_28;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000626B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a3 + 16);
  if (v10 == *(a5 + 16))
  {
    *(a5 + 40) = 1;
    return 0xFFFFFFFFLL;
  }

  else if (*(a5 + 24) == 1 && (v10 ? (v12 = *(a5 + 32) == 0) : (v12 = 0), v12))
  {
    v13 = 0;
    result = sub_1000623B8(*a5, *(a5 + 8), v10, *(a5 + 28), &v13, a6, a7, a8);
    if (!result && v13 == 1)
    {
      *(a5 + 32) = *(a3 + 16);
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_100062754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    return fsck_repairs_add(a1, 7, a2, a3, 1, a4, *(a4 + 8) + 10, a5, a6);
  }

  return print_snapshot_warning(0, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t CacheInit(void *a1, uint64_t a2, __int128 *a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, int a8, char a9)
{
  if (!a1)
  {
    return 22;
  }

  v11 = a6;
  if (a6 > 0x10000 && (a9 & 1) != 0)
  {
    v11 = 0x10000;
  }

  else
  {
    while (a5 > 0x10000 && v11 < 0x10000 || a5 > 0x1000 && v11 < 0x400)
    {
      a5 >>= 1;
      v11 *= 2;
    }

    while (a5 <= 0xFFF && v11 > 0x400 || !HIWORD(a5) && v11 > 0x10000)
    {
      a5 *= 2;
      v11 >>= 1;
    }
  }

  result = 34;
  if (a5 - 65537 >= 0xFFFF0FFF && v11 - 65537 >= 0xFFFF03FF)
  {
    v18 = *(a2 + 84);
    v19 = malloc_type_calloc(1uLL, 0x118uLL, 0x10E004027214369uLL);
    if (v19)
    {
      v20 = v19;
      *(v19 + 4) = a2;
      *(v19 + 5) = a4;
      *(v19 + 12) = v18;
      *(v19 + 7) = *(a2 + 112);
      *(v19 + 18) = a7;
      if (a3)
      {
        v21 = *a3;
        *(v19 + 200) = a3[1];
        *(v19 + 184) = v21;
        v22 = a3[2];
        v23 = a3[3];
        v24 = a3[4];
        *(v19 + 264) = a3[5];
        *(v19 + 248) = v24;
        *(v19 + 232) = v23;
        *(v19 + 216) = v22;
      }

      v25 = malloc_type_calloc(1uLL, 8 * a7, 0x2004093837F09uLL);
      *(v20 + 8) = v25;
      if (v25)
      {
        v26 = v11 * a5;
        do
        {
          if (a5 % v18)
          {
            CacheDestroy(v20);
            return 34;
          }

          v27 = v11;
          v28 = a5;
          v29 = mmap(0, v26, 3, 4098, -1, 0);
          v30 = v29;
          *(v20 + 15) = v29;
          if (v29 != -1)
          {
            break;
          }

          v11 = 0;
          a5 = 0x10000;
          v31 = v26 > 0x400000;
          v26 = 0;
        }

        while (v31);
        if (v29 != -1)
        {
          *(v20 + 14) = v29;
          if (a8)
          {
            v32 = getpagesize();
            v33 = v27 * v28;
            if (v33)
            {
              v34 = &v30[v33];
              do
              {
                *v30 = 0;
                v30 += v32;
              }

              while (v30 < v34);
              v30 = *(v20 + 15);
            }
          }

          v35 = v27 - 1;
          if (v27 == 1)
          {
            v36 = v30;
          }

          else
          {
            do
            {
              v36 = &v30[v28];
              *v30 = v36;
              v30 = v36;
              --v35;
            }

            while (v35);
          }

          *v36 = 0;
          *(v20 + 32) = v27;
          *(v20 + 19) = v28;
          *(v20 + 20) = v27;
          v37 = malloc_type_malloc(0x900uLL, 0x10A0040E6181C31uLL);
          if (v37)
          {
            v38 = v37;
            bzero(v37, 0x900uLL);
            v39 = 0;
            v40 = v38 + 48;
            v41 = vdupq_n_s64(0x2FuLL);
            do
            {
              v42 = vorrq_s8(vdupq_n_s64(v39), xmmword_1000AAE30);
              if (vmovn_s64(vcgtq_u64(v41, v42)).u8[0])
              {
                *(v40 - 6) = v40;
              }

              if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x2FuLL), v42)).i32[1])
              {
                *v40 = v40 + 6;
              }

              v39 += 2;
              v40 += 12;
            }

            while (v39 != 48);
            result = 0;
            *(v20 + 19) = v38;
            *(v20 + 17) = v38;
            *a1 = v20;
            *v20 = v20;
            *(v20 + 1) = v20;
            *(v20 + 2) = v20 + 16;
            *(v20 + 3) = v20 + 16;
            return result;
          }
        }
      }

      CacheDestroy(v20);
    }

    return 12;
  }

  return result;
}

uint64_t CacheDestroy(unsigned int *a1)
{
  if (a1)
  {
    if (*(a1 + 17))
    {
      for (i = *(a1 + 18); i; i = *i)
      {
        v3 = i[5];
        if (v3 && (i[2] & 0x80000000) != 0)
        {
          free(v3);
        }
      }

      for (j = *(a1 + 19); j; j = *j)
      {
        v5 = j[5];
        if (v5 && (j[2] & 0x80000000) != 0)
        {
          free(v5);
        }
      }

      free(*(a1 + 17));
    }

    if (*(a1 + 14))
    {
      CacheFlush(a1);
      munmap(*(a1 + 14), a1[20] * a1[19]);
    }

    v6 = *(a1 + 8);
    if (v6)
    {
      v7 = a1[18];
      if (v7)
      {
        for (k = 0; k < v7; ++k)
        {
          v9 = *(*(a1 + 8) + 8 * k);
          if (v9)
          {
            do
            {
              v10 = v9[2];
              free(v9);
              v9 = v10;
            }

            while (v10);
            v7 = a1[18];
          }
        }

        v6 = *(a1 + 8);
      }

      free(v6);
    }

    *(a1 + 34) = 0;
    *(a1 + 15) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 13) = 0u;
    *(a1 + 14) = 0u;
    *(a1 + 11) = 0u;
    *(a1 + 12) = 0u;
    *(a1 + 9) = 0u;
    *(a1 + 10) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
    free(a1);
  }

  return 0;
}

uint64_t CacheUpdateDevBlockSize(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 76) % a2)
  {
    return 34;
  }

  result = 0;
  v4 = *(a1 + 56) * *(a1 + 48) / a2;
  *(a1 + 48) = a2;
  *(a1 + 56) = v4;
  return result;
}