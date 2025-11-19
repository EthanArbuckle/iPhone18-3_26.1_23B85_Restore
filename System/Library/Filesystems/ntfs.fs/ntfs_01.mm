char *ntfs_mapping_pairs_decompress(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2 || !*(a2 + 8) || (v4 = *(a2 + 16), v4 < 0))
  {
    v12 = 22;
LABEL_52:
    v39 = __error();
    result = 0;
    *v39 = v12;
    return result;
  }

  v5 = *(a2 + 32);
  v6 = *(a2 + 4);
  if (v5 > v6)
  {
LABEL_51:
    v12 = 5;
    goto LABEL_52;
  }

  result = ntfs_malloc(0x1000uLL);
  if (!result)
  {
    return result;
  }

  v10 = result;
  if (v4)
  {
    *result = xmmword_100019860;
    *(result + 2) = v4;
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  if (v5 >= v6)
  {
    goto LABEL_50;
  }

  ptr = a3;
  v13 = 0;
  v14 = (a2 + v5);
  v15 = a2 + v6;
  v16 = 4096;
  while (*v14)
  {
    if (24 * v11 + 72 > v16)
    {
      v16 += 4096;
      v17 = v10;
      v18 = malloc_type_realloc(v10, v16, 0x1E56FE5AuLL);
      if (!v18)
      {
        v12 = *__error();
        v33 = v17;
LABEL_41:
        free(v33);
        goto LABEL_52;
      }

      v10 = v18;
    }

    v19 = &v10[24 * v11];
    *v19 = v4;
    v20 = *v14 & 0xF;
    v21 = &v14[v20];
    if ((*v14 & 0xF) == 0 || v21 > v15)
    {
      goto LABEL_50;
    }

    v23 = *v21;
    LODWORD(v20) = v20 - 1;
    if (v20)
    {
      v20 = v20;
      do
      {
        v23 = v14[v20--] | (v23 << 8);
      }

      while (v20);
    }

    if ((v23 & 0x8000000000000000) != 0)
    {
      goto LABEL_50;
    }

    *(v19 + 2) = v23;
    v24 = *v14;
    if (v24 >= 0x10)
    {
      v26 = v24 & 0xF;
      v27 = v26 + (v24 >> 4);
      if (&v14[v27] > v15)
      {
        goto LABEL_50;
      }

      v28 = v14[v27];
      LODWORD(v27) = v27 - 1;
      if (v27 > v26)
      {
        v27 = v27;
        do
        {
          v28 = v14[v27--] | (v28 << 8);
        }

        while (v26 < v27);
      }

      v25 = v28 + v13;
      v13 = v25;
      if (v25 < -1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v25 = -1;
    }

    v4 += v23;
    *(v19 + 1) = v25;
    ++v11;
    v14 += (*v14 & 0xF) + (*v14 >> 4) + 1;
    if (v14 >= v15)
    {
      goto LABEL_50;
    }
  }

  v29 = *(a2 + 24);
  if (v29 && v4 - 1 != v29)
  {
LABEL_50:
    free(v10);
    goto LABEL_51;
  }

  if (*(a2 + 16))
  {
    v31 = -2;
    v32 = ptr;
  }

  else
  {
    v32 = ptr;
    if (v29)
    {
      v34 = (*(a2 + 40) + *(a1 + 40) - 1) >> *(a1 + 52);
      v35 = v34 - 1 - v29;
      if (v34 - 1 <= v29)
      {
        if (v29 >= v34)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v36 = &v10[24 * v11];
        *v36 = v4;
        v4 += v35;
        *(v36 + 1) = -2;
        *(v36 + 2) = v35;
        ++v11;
      }
    }

    v31 = -3;
  }

  v37 = &v10[24 * v11];
  *v37 = v4;
  *(v37 + 1) = v31;
  *(v37 + 2) = 0;
  if (!v32)
  {
    return v10;
  }

  v38 = v10;
  result = ntfs_runlists_merge(v32, v10);
  if (!result)
  {
    v12 = *__error();
    v33 = v38;
    goto LABEL_41;
  }

  return result;
}

uint64_t ntfs_rl_vcn_to_lcn(void *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    return -4;
  }

  if (!a1)
  {
    return -2;
  }

  if (*a1 > a2)
  {
    return -3;
  }

  v3 = a1 + 3;
  while (*(v3 - 1))
  {
    v4 = *v3;
    v3 += 3;
    if (v4 > a2)
    {
      result = *(v3 - 5);
      if ((result & 0x8000000000000000) == 0)
      {
        return result + a2 - *(v3 - 6);
      }

      return result;
    }
  }

  v5 = *(v3 - 2);
  if (v5 >= 0)
  {
    return -3;
  }

  else
  {
    return v5;
  }
}

uint64_t ntfs_rl_pread(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4, char *a5)
{
  v5 = a4;
  v6 = a2;
  if (!a1 || !a2 || (a4 | a3) < 0)
  {
    *__error() = 22;
    ntfs_log_redirect("ntfs_rl_pread", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/runlist.c", 1094, 256);
    return -1;
  }

  if (!a4)
  {
    return 0;
  }

  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = a2;
    while (1)
    {
      v12 = (v9 << *(a1 + 52)) + v10;
      if (v12 > a3)
      {
        break;
      }

      v6 = v11 + 24;
      v9 = *(v11 + 40);
      v10 = v12;
      v11 += 24;
      if (!v9)
      {
        goto LABEL_15;
      }
    }

    v6 = v11;
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

LABEL_15:
  v13 = 0;
  v14 = a3 - v12;
  while (1)
  {
    v15 = *(v6 + 16);
    if (!v15)
    {
      break;
    }

    v16 = *(v6 + 8);
    if (v16 < 0)
    {
      if (v16 != -1)
      {
        break;
      }

      v21 = (v15 << *(a1 + 52)) - v14;
      if (v5 >= v21)
      {
        v20 = v21;
      }

      else
      {
        v20 = v5;
      }

      bzero(a5, v20);
    }

    else
    {
      v17 = (v15 << *(a1 + 52)) - v14;
      if (v5 >= v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = v5;
      }

      while (1)
      {
        v19 = ntfs_pread(*a1, (*(v6 + 8) << *(a1 + 52)) + v14, v18, a5);
        v20 = v19;
        if (v19 > 0)
        {
          break;
        }

        if (v19 != -1)
        {
          goto LABEL_32;
        }

        if (*__error() != 4)
        {
          v22 = *__error();
          if (v13)
          {
            return v13;
          }

          goto LABEL_35;
        }
      }
    }

    v14 = 0;
    v13 += v20;
    a5 += v20;
    v6 += 24;
    v5 -= v20;
    if (!v5)
    {
      return v13;
    }
  }

LABEL_32:
  v22 = 5;
  if (!v13)
  {
LABEL_35:
    *__error() = v22;
    return -1;
  }

  return v13;
}

uint64_t ntfs_rl_pwrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a5;
  v7 = a2;
  if (!a1 || !a2 || (a5 | a4) < 0)
  {
    *__error() = 22;
    ntfs_log_redirect("ntfs_rl_pwrite", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/runlist.c", 1183, 256);
    return -1;
  }

  if (!a5)
  {
    return 0;
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    while (1)
    {
      v11 = (v10 << *(a1 + 52)) + a3;
      if (v11 > a4)
      {
        break;
      }

      v12 = v7 + 24;
      v10 = *(v7 + 40);
      v7 += 24;
      a3 = v11;
      if (!v10)
      {
        goto LABEL_12;
      }
    }
  }

  v11 = a3;
  v12 = v7;
LABEL_12:
  v13 = 0;
  v14 = a4 - v11;
  while (1)
  {
    v15 = *(v12 + 16);
    if (!v15)
    {
      break;
    }

    v16 = *(v12 + 8);
    if (v16 < 0)
    {
      if (v16 != -1)
      {
        break;
      }

      v20 = (v15 << *(a1 + 52)) - v14;
      if (v6 >= v20)
      {
        v19 = v20;
      }

      else
      {
        v19 = v6;
      }
    }

    else
    {
      v17 = (v15 << *(a1 + 52)) - v14;
      if (v6 >= v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = v6;
      }

      while (1)
      {
        v19 = v18;
        if ((*(a1 + 16) & 1) == 0)
        {
          v19 = ntfs_pwrite(*a1, (*(v12 + 8) << *(a1 + 52)) + v14, v18, a6);
        }

        if (v19 > 0)
        {
          break;
        }

        if (v19 != -1)
        {
          goto LABEL_31;
        }

        if (*__error() != 4)
        {
          v21 = *__error();
          if (v13)
          {
            return v13;
          }

          goto LABEL_34;
        }
      }
    }

    v14 = 0;
    v13 += v19;
    a6 += v19;
    v12 += 24;
    v6 -= v19;
    if (!v6)
    {
      return v13;
    }
  }

LABEL_31:
  v21 = 5;
  if (!v13)
  {
LABEL_34:
    *__error() = v21;
    return -1;
  }

  return v13;
}

uint64_t ntfs_get_nr_significant_bytes(uint64_t a1)
{
  v1 = a1 ^ (a1 >> 63);
  if (v1 < 0x80)
  {
    return 1;
  }

  v2 = v1 >> 7;
  LODWORD(result) = 1;
  do
  {
    result = (result + 1);
    v4 = v2 > 0xFF;
    v2 >>= 8;
  }

  while (v4);
  return result;
}

uint64_t ntfs_get_size_for_mapping_pairs(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  if (a3 < 0)
  {
    goto LABEL_10;
  }

  if (!a2)
  {
    if (!a3)
    {
      return 1;
    }

LABEL_10:
    v8 = __error();
    goto LABEL_11;
  }

  while (1)
  {
    v4 = a2;
    v5 = a2[2];
    if (!v5)
    {
      break;
    }

    a2 += 3;
    if (v4[3] > a3)
    {
      v6 = *v4;
      goto LABEL_9;
    }
  }

  v6 = *a2;
  if (*a2 < a3)
  {
    goto LABEL_10;
  }

LABEL_9:
  if (a3 < v6)
  {
    goto LABEL_10;
  }

  v11 = a3 - v6;
  if (a3 <= v6)
  {
    v11 = 0;
    v7 = 1;
    goto LABEL_32;
  }

  if ((v5 & 0x8000000000000000) != 0 || (v12 = v4[1], v12 < -1))
  {
LABEL_52:
    v24 = v4[1];
    v8 = __error();
    if (v24 != -2)
    {
      v9 = 5;
      goto LABEL_12;
    }

LABEL_11:
    v9 = 22;
LABEL_12:
    *v8 = v9;
    return 0xFFFFFFFFLL;
  }

  v7 = (v5 - v11) ^ ((v5 - v11) >> 63);
  if (v7 < 0x80)
  {
    v7 = 3;
  }

  else
  {
    v13 = v7 >> 7;
    LODWORD(v7) = 3;
    do
    {
      v7 = (v7 + 1);
      v17 = v13 > 0xFF;
      v13 >>= 8;
    }

    while (v17);
  }

  if ((v12 & 0x8000000000000000) == 0 || (v11 = 0, *(a1 + 32) <= 2u))
  {
    v11 += v12;
    v14 = v11 ^ (v11 >> 63);
    if (v14 < 0x80)
    {
      v16 = 1;
    }

    else
    {
      v15 = v14 >> 7;
      v16 = 1;
      do
      {
        ++v16;
        v17 = v15 > 0xFF;
        v15 >>= 8;
      }

      while (v17);
    }

    v7 = (v16 + v7);
  }

  while (1)
  {
    v5 = v4[5];
    v4 += 3;
LABEL_32:
    v17 = v5 && v7 <= a4;
    if (!v17)
    {
      return v7;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_52;
    }

    v18 = v4[1];
    if (v18 < -1)
    {
      goto LABEL_52;
    }

    if (v5 < 0x80)
    {
      v20 = 1;
    }

    else
    {
      v19 = v5 >> 7;
      v20 = 1;
      do
      {
        ++v20;
        v17 = v19 > 0xFF;
        v19 >>= 8;
      }

      while (v17);
    }

    v7 = (v7 + v20 + 1);
    if ((v18 & 0x8000000000000000) == 0 || *(a1 + 32) <= 2u)
    {
      v21 = (v18 - v11) ^ ((v18 - v11) >> 63);
      if (v21 < 0x80)
      {
        v23 = 1;
      }

      else
      {
        v22 = v21 >> 7;
        v23 = 1;
        do
        {
          ++v23;
          v17 = v22 > 0xFF;
          v22 >>= 8;
        }

        while (v17);
      }

      v7 = (v23 + v7);
      v11 = v4[1];
    }
  }
}

unint64_t ntfs_write_significant_bytes(unint64_t result, unint64_t a2, uint64_t a3)
{
  if (result > a2)
  {
LABEL_2:
    *__error() = 28;
    return 0xFFFFFFFFLL;
  }

  *result = a3;
  if (a3 != a3)
  {
    v3 = (result + 1);
    LODWORD(result) = 1;
    while (v3 <= a2)
    {
      a3 >>= 8;
      *v3++ = a3;
      result = (result + 1);
      if (a3 == a3)
      {
        return result;
      }
    }

    goto LABEL_2;
  }

  return 1;
}

uint64_t ntfs_mapping_pairs_build(uint64_t a1, _BYTE *a2, int a3, void *a4, uint64_t a5, void *a6)
{
  if (a5 < 0)
  {
    goto LABEL_13;
  }

  v8 = a2;
  if (a4)
  {
    while (1)
    {
      v10 = a4;
      v11 = a4[2];
      if (!v11)
      {
        break;
      }

      a4 += 3;
      if (v10[3] > a5)
      {
        v12 = *v10;
        goto LABEL_12;
      }
    }

    v12 = *a4;
    if (*a4 < a5)
    {
      goto LABEL_13;
    }

LABEL_12:
    if (a5 < v12)
    {
      goto LABEL_13;
    }

    v16 = &a2[a3 - 1];
    v17 = a5 - v12;
    if (a5 <= v12)
    {
      v19 = 0;
      if (v11)
      {
LABEL_22:
        while ((v11 & 0x8000000000000000) == 0 && v10[1] >= -1)
        {
          v20 = ntfs_write_significant_bytes((v8 + 1), v16, v11);
          if (v20 < 0)
          {
            goto LABEL_41;
          }

          v21 = v20;
          v22 = v20;
          v23 = v10[1];
          if (v23 < 0 && *(a1 + 32) >= 3u)
          {
            v25 = 0;
          }

          else
          {
            v24 = ntfs_write_significant_bytes(&v8[v22 + 1], v16, v23 - v19);
            if (v24 < 0)
            {
              goto LABEL_41;
            }

            v19 = v10[1];
            v25 = v24 & 0x7F;
          }

          if (&v8[v22 + 1 + v25] > v16)
          {
            goto LABEL_41;
          }

          *v8 = v21 | (16 * v25);
          v8 += v22 + v25 + 1;
          v26 = v10 + 3;
          v11 = v10[5];
          v10 += 3;
          if (!v11)
          {
            goto LABEL_47;
          }
        }

LABEL_19:
        v18 = v10[1];
        v13 = __error();
        if (v18 != -2)
        {
          v14 = 5;
          goto LABEL_15;
        }

LABEL_14:
        v14 = 22;
LABEL_15:
        *v13 = v14;
        return 0xFFFFFFFFLL;
      }

LABEL_46:
      v26 = v10;
LABEL_47:
      if (a6)
      {
        *a6 = v26;
      }

      goto LABEL_49;
    }

    if (v11 < 0 || v10[1] < -1)
    {
      goto LABEL_19;
    }

    v27 = ntfs_write_significant_bytes((a2 + 1), v16, v11 - v17);
    if (v27 < 0)
    {
      goto LABEL_41;
    }

    v28 = v27;
    v29 = v27;
    v30 = v10[1];
    if (v30 < 0)
    {
      if (*(a1 + 32) >= 3u)
      {
        v19 = 0;
        v31 = 0;
LABEL_40:
        if (&v8[v29 + 1 + v31] > v16)
        {
LABEL_41:
          if (a6)
          {
            *a6 = v10;
          }

          *v8 = 0;
LABEL_44:
          v13 = __error();
          v14 = 28;
          goto LABEL_15;
        }

        *v8 = v28 | (16 * v31);
        v11 = v10[5];
        v10 += 3;
        v8 += v29 + v31 + 1;
        if (v11)
        {
          goto LABEL_22;
        }

        goto LABEL_46;
      }

      v17 = 0;
    }

    v19 = v17 + v30;
    v31 = ntfs_write_significant_bytes(&v8[v29 + 1], v16, v19);
    if (v31 < 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (a5)
  {
LABEL_13:
    v13 = __error();
    goto LABEL_14;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a3 < 1)
  {
    goto LABEL_44;
  }

LABEL_49:
  result = 0;
  *v8 = 0;
  return result;
}

uint64_t ntfs_rl_truncate(void **a1, uint64_t a2)
{
  if (!a1)
  {
    *__error() = 22;
    v4 = 1620;
    goto LABEL_12;
  }

  v3 = *a1;
  if (!*a1)
  {
    *__error() = 22;
    v9 = *a1;
    v4 = 1623;
LABEL_12:
    ntfs_log_redirect("ntfs_rl_truncate", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/runlist.c", v4, 256);
    return 0xFFFFFFFFLL;
  }

  if (*v3 > a2)
  {
    *__error() = 22;
    v4 = 1631;
    goto LABEL_12;
  }

  do
  {
    if (!v3[2])
    {
      *__error() = 5;
      return 0xFFFFFFFFLL;
    }

    v5 = v3[3];
    v3 += 3;
  }

  while (v5 <= a2);
  v6 = v3 - 3;
  v7 = a2 - *(v3 - 3);
  *(v3 - 1) = v7;
  if (v7)
  {
    *v3 = a2;
    v3[2] = 0;
    v6 = v3;
  }

  result = 0;
  v6[1] = -3;
  return result;
}

uint64_t ntfs_rl_sparse(uint64_t a1)
{
  if (a1)
  {
    if (!*(a1 + 16))
    {
      return 0;
    }

    for (i = (a1 + 40); ; i += 3)
    {
      v2 = *(i - 4);
      if (v2 < 0)
      {
        break;
      }

      if (!*i)
      {
        return 0;
      }
    }

    if (v2 == -1)
    {
      return 1;
    }

    *__error() = 22;
    v5 = 1702;
  }

  else
  {
    *__error() = 22;
    v5 = 1694;
  }

  ntfs_log_redirect("ntfs_rl_sparse", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/runlist.c", v5, 256);
  return 0xFFFFFFFFLL;
}

uint64_t ntfs_rl_get_compressed_size(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    *__error() = 22;
    v7 = 1724;
    goto LABEL_13;
  }

  v2 = *(a2 + 16);
  if (!v2)
  {
    v3 = 0;
    return v3 << *(a1 + 52);
  }

  v3 = 0;
  for (i = (a2 + 40); ; i += 3)
  {
    v5 = *(i - 4);
    if (v5 < 0)
    {
      break;
    }

    v3 += v2;
LABEL_7:
    v6 = *i;
    v2 = v6;
    if (!v6)
    {
      return v3 << *(a1 + 52);
    }
  }

  if (v5 == -1)
  {
    goto LABEL_7;
  }

  *__error() = 22;
  v7 = 1732;
LABEL_13:
  ntfs_log_redirect("ntfs_rl_get_compressed_size", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/runlist.c", v7, 256);
  return -1;
}

uint64_t sub_10000E594(uint64_t *a1, uint64_t *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = a1[1];
    if (v4 == -2)
    {
      if (a2[1] != -2)
      {
        v5 = a1[2] + *a1;
        v6 = *a2;
        return 0;
      }
    }

    else
    {
      v7 = *a1;
      v8 = a1[2];
      if (v8 + v7 != *a2)
      {
        return 0;
      }

      if (v4 < 0)
      {
        if (v4 != -1 || a2[1] != -1)
        {
          return 0;
        }
      }

      else
      {
        v9 = a2[1];
        if (v9 < 0 || v8 + v4 != v9)
        {
          return 0;
        }
      }
    }

    return 1;
  }

  return result;
}

void *ntfs_device_alloc(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v8 = ntfs_malloc(0x20uLL);
    if (v8)
    {
      v9 = strdup(a1);
      v8[2] = v9;
      if (v9)
      {
        *v8 = a3;
        v8[1] = a2;
        v8[3] = a4;
      }

      else
      {
        v10 = *__error();
        free(v8);
        v8 = 0;
        *__error() = v10;
      }
    }
  }

  else
  {
    v8 = 0;
    *__error() = 22;
  }

  return v8;
}

uint64_t ntfs_device_free(uint64_t a1)
{
  if (a1)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      free(*(a1 + 16));
      free(a1);
      return 0;
    }

    v3 = __error();
    v4 = 16;
  }

  else
  {
    v3 = __error();
    v4 = 22;
  }

  *v3 = v4;
  return 0xFFFFFFFFLL;
}

uint64_t ntfs_device_sync(_BYTE *a1)
{
  if ((a1[8] & 4) != 0)
  {
    return (*(*a1 + 56))(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t ntfs_pread(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4 || (v4 = a3, (a3 | a2) < 0))
  {
    *__error() = 22;
    return -1;
  }

  else if (a3)
  {
    v8 = 0;
    v9 = *a1;
    while (1)
    {
      v10 = (*(v9 + 40))(a1, a4 + v8, v4, v8 + a2);
      if (v10 <= 0)
      {
        break;
      }

      v8 += v10;
      v4 -= v10;
      if (!v4)
      {
        return v8;
      }
    }

    if (v8)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10 == 0;
    }

    if (!v11)
    {
      return v10;
    }
  }

  else
  {
    return 0;
  }

  return v8;
}

uint64_t ntfs_pwrite(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4 || (v4 = a3, (a3 | a2) < 0))
  {
    v12 = __error();
    v13 = 22;
LABEL_12:
    *v12 = v13;
    return -1;
  }

  if (!a3)
  {
    return 0;
  }

  v7 = a1[1];
  if ((v7 & 2) != 0)
  {
    v12 = __error();
    v13 = 30;
    goto LABEL_12;
  }

  v9 = 0;
  v10 = *a1;
  a1[1] = v7 | 4;
  while (1)
  {
    v11 = (*(v10 + 48))(a1, a4 + v9, v4, v9 + a2);
    if (v11 <= 0)
    {
      break;
    }

    v9 += v11;
    v4 -= v11;
    if (!v4)
    {
      goto LABEL_19;
    }
  }

  if (v9)
  {
    v15 = 1;
  }

  else
  {
    v15 = v11 == 0;
  }

  if (!v15)
  {
    v9 = v11;
  }

LABEL_19:
  if ((a1[1] & 0x10) != 0 && v9)
  {
    v9 -= (*(v10 + 56))(a1) != 0;
  }

  return v9;
}

uint64_t ntfs_mst_pwrite(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, _WORD *a5)
{
  if (a3 < 0 || (a4 & 0x1FF) != 0)
  {
    *__error() = 22;
    return -1;
  }

  else if (a3)
  {
    v7 = a5;
    v10 = 0;
    v11 = a5;
    while (1)
    {
      v12 = ntfs_mst_pre_write_fixup(v11, a4);
      if (v12 < 0)
      {
        break;
      }

      ++v10;
      v11 += a4;
      if (a3 == v10)
      {
        v10 = a3;
        goto LABEL_11;
      }
    }

    if (!v10)
    {
      return v12;
    }

LABEL_11:
    v13 = ntfs_pwrite(a1, a2, v10 * a4, v7);
    do
    {
      ntfs_mst_post_write_fixup(v7);
      v7 = (v7 + a4);
      --v10;
    }

    while (v10);
    if (v13 >= 1)
    {
      return v13 / a4;
    }
  }

  else
  {
    return 0;
  }

  return v13;
}

unint64_t ntfs_device_size_get(uint64_t a1, int a2)
{
  if (a1 && a2 >= 1 && ((a2 + 0x7FFFFFFF) & a2) == 0)
  {
    v11 = 0;
    v5 = ntfs_device_sector_size_get(a1);
    if ((v5 & 0x80000000) != 0 || (v6 = v5, ((*(*a1 + 72))(a1, 1074291737, &v11) & 0x80000000) != 0))
    {
      v7 = 0;
      v8 = 1024;
      do
      {
        v9 = v7;
        v7 = v8;
        v10 = sub_10000EB60(a1, v8);
        v8 = 2 * v7;
      }

      while (!v10);
      while (v9 < v7 - 1)
      {
        if (sub_10000EB60(a1, (v9 + v7) / 2))
        {
          v7 = (v9 + v7) / 2;
        }

        else
        {
          v9 = (v9 + v7) / 2;
        }
      }

      (*(*a1 + 16))(a1, 0, 0);
      return (v9 + 1) / a2;
    }

    else
    {
      return v11 * v6 / a2;
    }
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

uint64_t ntfs_device_sector_size_get(uint64_t a1)
{
  if (a1)
  {
    v2 = 0;
    if ((*(*a1 + 72))(a1, 1074029592, &v2))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v2;
    }
  }

  else
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_10000EB60(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 16))(a1, a2, 0) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 0;
  v3 = (*(*a1 + 24))(a1, &v5, 1);
  result = 0;
  if (v3 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

unint64_t ntfs_device_partition_start_sector_get(uint64_t a1)
{
  if (!a1)
  {
    *__error() = 22;
    return -1;
  }

  v5 = 0;
  if ((*(*a1 + 72))(a1, 1074291785, &v5))
  {
    return -1;
  }

  v4 = 0;
  if ((*(*a1 + 72))(a1, 1074029592, &v4))
  {
    return -1;
  }

  if (!v4)
  {
    v3 = 5;
LABEL_12:
    *__error() = v3;
    return -1;
  }

  result = v5 / v4;
  v3 = 34;
  if (v5 % v4 || (result & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t ntfs_device_heads_get(uint64_t a1)
{
  v2 = __error();
  if (a1)
  {
    v3 = 102;
  }

  else
  {
    v3 = 22;
  }

  *v2 = v3;
  return 0xFFFFFFFFLL;
}

uint64_t ntfs_device_sectors_per_track_get(uint64_t a1)
{
  v2 = __error();
  if (a1)
  {
    v3 = 102;
  }

  else
  {
    v3 = 22;
  }

  *v2 = v3;
  return 0xFFFFFFFFLL;
}

uint64_t ntfs_device_block_size_set(uint64_t a1)
{
  if (a1)
  {
    if ((*(a1 + 8) & 8) == 0)
    {
      return 0;
    }

    v2 = 102;
  }

  else
  {
    v2 = 22;
  }

  *__error() = v2;
  return 0xFFFFFFFFLL;
}

uint64_t NAttrCompressed(uint64_t a1)
{
  if (*(a1 + 16) == 128 && *(a1 + 24) == &AT_UNNAMED)
  {
    return *(*(a1 + 8) + 32) & 0x800;
  }

  else
  {
    return 0;
  }
}

uint64_t NAttrSetCompressed(uint64_t result)
{
  if (*(result + 16) == 128 && *(result + 24) == &AT_UNNAMED)
  {
    *(*(result + 8) + 32) |= 0x800u;
  }

  return result;
}

uint64_t NAttrClearCompressed(uint64_t result)
{
  if (*(result + 16) == 128 && *(result + 24) == &AT_UNNAMED)
  {
    *(*(result + 8) + 32) &= ~0x800u;
  }

  return result;
}

uint64_t NAttrEncrypted(uint64_t a1)
{
  if (*(a1 + 16) == 128 && *(a1 + 24) == &AT_UNNAMED)
  {
    return *(*(a1 + 8) + 32) & 0x4000;
  }

  else
  {
    return 0;
  }
}

uint64_t NAttrSetEncrypted(uint64_t result)
{
  if (*(result + 16) == 128 && *(result + 24) == &AT_UNNAMED)
  {
    *(*(result + 8) + 32) |= 0x4000u;
  }

  return result;
}

uint64_t NAttrClearEncrypted(uint64_t result)
{
  if (*(result + 16) == 128 && *(result + 24) == &AT_UNNAMED)
  {
    *(*(result + 8) + 32) &= ~0x4000u;
  }

  return result;
}

uint64_t NAttrSparse(uint64_t a1)
{
  if (*(a1 + 16) == 128 && *(a1 + 24) == &AT_UNNAMED)
  {
    return *(*(a1 + 8) + 32) & 0x200;
  }

  else
  {
    return 0;
  }
}

uint64_t NAttrSetSparse(uint64_t result)
{
  if (*(result + 16) == 128 && *(result + 24) == &AT_UNNAMED)
  {
    *(*(result + 8) + 32) |= 0x200u;
  }

  return result;
}

uint64_t NAttrClearSparse(uint64_t result)
{
  if (*(result + 16) == 128 && *(result + 24) == &AT_UNNAMED)
  {
    *(*(result + 8) + 32) &= ~0x200u;
  }

  return result;
}

uint64_t ntfs_get_attribute_value_length(uint64_t a1)
{
  v2 = __error();
  v3 = v2;
  if (a1)
  {
    *v2 = 0;
    if (*(a1 + 8))
    {
      return *(a1 + 48);
    }

    else
    {
      return *(a1 + 16);
    }
  }

  else
  {
    result = 0;
    *v3 = 22;
  }

  return result;
}

uint64_t ntfs_get_attribute_value(uint64_t a1, uint64_t a2, char *__dst)
{
  if (!a1 || !a2 || !__dst)
  {
    goto LABEL_16;
  }

  if (*a2 != 32 && *(a2 + 12))
  {
    v24 = *(a2 + 12);
    ntfs_log_redirect("ntfs_get_attribute_value", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 155, 128);
    v6 = __error();
    v7 = 0;
    v8 = 102;
LABEL_17:
    *v6 = v8;
    return v7;
  }

  if (!*(a2 + 8))
  {
    v18 = *(a2 + 16);
    v19 = *(a2 + 20);
    if ((v18 + v19) <= *(a2 + 4))
    {
      memcpy(__dst, (a2 + v19), v18);
      *__error() = 0;
      return *(a2 + 16);
    }

    return 0;
  }

  if (!*(a2 + 48))
  {
    v7 = 0;
    *__error() = 0;
    return v7;
  }

  v9 = ntfs_mapping_pairs_decompress(a1, a2, 0);
  if (!v9)
  {
LABEL_16:
    v6 = __error();
    v7 = 0;
    v8 = 22;
    goto LABEL_17;
  }

  v10 = v9;
  v11 = *(v9 + 2);
  if (v11)
  {
    v7 = 0;
    v12 = *(a1 + 52);
    v13 = (v9 + 40);
    while (1)
    {
      v14 = v11 << v12;
      if ((v11 << v12) + v7 >= *(a2 + 48))
      {
        break;
      }

      v15 = ntfs_pread(*a1, *(v13 - 4) << v12, v14, &__dst[v7]);
      v12 = *(a1 + 52);
      if (v15 != *(v13 - 3) << v12)
      {
        if (v15 == -1)
        {
          ntfs_log_redirect("ntfs_get_attribute_value", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 278, 256);
        }

        else
        {
          *__error() = 5;
        }

        goto LABEL_30;
      }

      v7 += v15;
      v16 = *v13;
      v13 += 3;
      v11 = v16;
      if (!v16)
      {
        goto LABEL_23;
      }
    }

    v20 = ntfs_malloc(v14);
    if (!v20)
    {
LABEL_30:
      v23 = v10;
      goto LABEL_31;
    }

    v21 = v20;
    v22 = ntfs_pread(*a1, *(v13 - 4) << *(a1 + 52), *(v13 - 3) << *(a1 + 52), v20);
    if (v22 == *(v13 - 3) << *(a1 + 52))
    {
      memcpy(&__dst[v7], v21, *(a2 + 48) - v7);
      free(v21);
      v7 = *(a2 + 48);
      goto LABEL_23;
    }

    if (v22 == -1)
    {
      ntfs_log_redirect("ntfs_get_attribute_value", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 242, 256);
    }

    else
    {
      *__error() = 5;
    }

    free(v10);
    v23 = v21;
LABEL_31:
    free(v23);
    return 0;
  }

  v7 = 0;
LABEL_23:
  free(v10);
  return v7;
}

uint64_t ntfs_attr_init(uint64_t result, int a2, __int16 a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v10 = *(result + 40);
  if ((v10 & 1) == 0)
  {
    *(result + 20) = a3;
    if (a2)
    {
      v10 |= 2uLL;
      *(result + 40) = v10;
    }

    if (a3 && *(result + 16) == 128 && *(result + 24) == &AT_UNNAMED)
    {
      *(*(result + 8) + 32) |= 0x800u;
    }

    if (a4 && *(result + 16) == 128 && *(result + 24) == &AT_UNNAMED)
    {
      *(*(result + 8) + 32) |= 0x4000u;
      if (a5)
      {
        goto LABEL_12;
      }
    }

    else if (a5)
    {
LABEL_12:
      if (*(result + 16) == 128 && *(result + 24) == &AT_UNNAMED)
      {
        *(*(result + 8) + 32) |= 0x200u;
      }

      *(result + 48) = a6;
      *(result + 56) = a7;
      *(result + 64) = a8;
      goto LABEL_18;
    }

    *(result + 48) = a6;
    *(result + 56) = a7;
    *(result + 64) = a8;
    if (!a3)
    {
LABEL_19:
      *(result + 40) = v10 | 1;
      return result;
    }

LABEL_18:
    v11 = *(*(result + 8) + 16);
    *(result + 72) = a9;
    *(result + 85) = 1 << a10;
    v12 = *(v11 + 52) + a10;
    *(result + 80) = 1 << v12;
    *(result + 84) = v12;
    goto LABEL_19;
  }

  return result;
}

void *ntfs_attr_open(uint64_t *a1, unsigned int a2, unsigned __int16 *a3, unsigned int a4)
{
  if (!a1 || !a1[2] || !a1[1])
  {
    v8 = 0;
    *__error() = 22;
    return v8;
  }

  v8 = ntfs_calloc(0x58uLL);
  if (v8)
  {
    v9 = 0;
    if (a3 != NTFS_INDEX_I30)
    {
      if (a3)
      {
        if (a3 != &AT_UNNAMED)
        {
          v9 = ntfs_ucsndup(a3, a4);
          a3 = v9;
          if (!v9)
          {
            goto LABEL_12;
          }
        }
      }
    }

    v10 = ntfs_malloc(0x40uLL);
    if (!v10)
    {
      goto LABEL_12;
    }

    v11 = v10;
    v12 = a1[1];
    v13 = v12 + *(v12 + 20);
    *v10 = v12;
    v10[1] = v13;
    *(v10 + 4) = 1;
    v10[3] = a1;
    *(v10 + 2) = 0u;
    *(v10 + 3) = 0u;
    if (ntfs_attr_lookup(a2, a3, a4, 0, 0, 0, 0, v10))
    {
LABEL_11:
      free(v11);
LABEL_12:
      free(v9);
      free(v8);
      return 0;
    }

    v15 = v11[1];
    if (!a3)
    {
      if (*(v15 + 9))
      {
        v19 = ntfs_ucsndup((v15 + *(v15 + 10)), *(v15 + 9));
        if (!v19)
        {
          goto LABEL_11;
        }

        a3 = v19;
        a4 = *(v15 + 9);
        v9 = v19;
      }

      else
      {
        a4 = 0;
        a3 = &AT_UNNAMED;
      }
    }

    *v8 = 0;
    v8[1] = a1;
    *(v8 + 4) = a2;
    v8[3] = a3;
    *(v8 + 8) = a4;
    if (a2 == 32)
    {
      v16 = 0;
      *(v15 + 12) = 0;
    }

    else if (a2 == 128)
    {
      v16 = *(v15 + 12);
      if (!*(v15 + 56))
      {
        v16 &= 0xFF00u;
        *(v15 + 12) = v16;
        if ((*(a1 + 33) & 8) != 0)
        {
          v17 = a1[2];
          if (*(v17 + 32) >= 3u && (*(v17 + 16) & 0x40) != 0 && *(v17 + 40) <= 0x1000u)
          {
            v16 |= 1u;
            *(v15 + 12) = v16;
          }
        }
      }

      if (a3 == &AT_UNNAMED && (v16 < 0 && (a1[4] & 0x200) == 0 || ((((v16 & 0x4000) == 0) ^ ((a1[4] & 0x4000u) >> 14)) & 1) == 0))
      {
        *__error() = 5;
        v26 = *(v15 + 12);
        v27 = *(v8[1] + 32);
        v24 = *a1;
        v18 = 473;
LABEL_48:
        ntfs_log_redirect("ntfs_attr_open", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", v18, 256);
        goto LABEL_11;
      }
    }

    else
    {
      v16 = *(v15 + 12);
    }

    if (*(v15 + 8))
    {
      if (v16 && !*(v15 + 34))
      {
        *__error() = 5;
        v25 = *a1;
        v18 = 483;
        goto LABEL_48;
      }

      if ((v16 & 0x8001) != 0)
      {
        v20 = *(v15 + 64);
        v21 = *(v15 + 34);
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      ntfs_attr_init(v8, 1, v16, v16 & 0x4000, v16 & 0x8000, *(v15 + 40), *(v15 + 48), *(v15 + 56), v20, v21);
    }

    else
    {
      v22 = *(v15 + 16);
      if ((v16 & 0x8001) != 0)
      {
        v23 = (v22 + 7) & 0x1FFFFFFF8;
      }

      else
      {
        v23 = 0;
      }

      ntfs_attr_init(v8, 0, v16, v16 & 0x4000, v16 & 0x8000, (v22 + 7) & 0x1FFFFFFF8, v22, v22, v23, 0);
    }

    free(v11);
  }

  return v8;
}

void *ntfs_attr_get_search_ctx(uint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    v2 = a2;
    result = ntfs_malloc(0x40uLL);
    if (result)
    {
      if (!v2)
      {
        v2 = *(a1 + 8);
      }

      v5 = v2 + *(v2 + 20);
      *result = v2;
      result[1] = v5;
      *(result + 4) = 1;
      result[3] = a1;
      *(result + 2) = 0u;
      *(result + 3) = 0u;
    }
  }

  else
  {
    *__error() = 22;
    ntfs_log_redirect("ntfs_attr_get_search_ctx", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 2736, 256);
    return 0;
  }

  return result;
}

uint64_t ntfs_attr_lookup(unsigned int a1, unsigned __int16 *a2, unsigned int a3, int a4, uint64_t a5, void *__s1, unsigned int a7, uint64_t a8)
{
  if (!a8 || (v9 = *a8) == 0 || (v10 = *(a8 + 8)) == 0 || (v17 = a1, a2) && a2 != &AT_UNNAMED && ((v18 = *(a8 + 24)) == 0 || (v19 = *(v18 + 16)) == 0 || !*(v19 + 224) || !*(v19 + 232)))
  {
    *__error() = 22;
    v22 = "ntfs_attr_lookup";
    v23 = 2616;
    goto LABEL_16;
  }

  v20 = *(a8 + 40);
  if (v20)
  {
    if (a1 == 32 || (*(v20 + 24) & 2) == 0)
    {
      goto LABEL_114;
    }

    v21 = *(a8 + 24);
    if (v21 != v20)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v21 = *(a8 + 24);
    if (!v21 || a1 == 32 || (v21[3] & 2) == 0)
    {
      goto LABEL_114;
    }

    *(a8 + 40) = v21;
    *(a8 + 48) = v9;
    v20 = v21;
  }

  *(a8 + 56) = v10;
LABEL_25:
  if (a1 == -1)
  {
LABEL_113:
    ntfs_attr_reinit_search_ctx(a8);
    a1 = -1;
LABEL_114:

    return sub_100012334(a1, a2, a3, a4, __s1, a7, a8);
  }

  v68 = *(v20 + 16);
  v26 = *(v20 + 40);
  v27 = *(v20 + 36);
  v28 = *(a8 + 32);
  v29 = v28;
  if (!v28)
  {
    *(a8 + 32) = v26;
    v29 = v26;
  }

  if (*(a8 + 16))
  {
    *(a8 + 16) = 0;
    if (!a1 && !v28 && *v29 > 0x20u)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v33 = (v29 + *(v29 + 4));
    if (a1 || *v29 > 0x1Fu)
    {
      v29 += *(v29 + 4);
    }

    else
    {
      v29 += *(v29 + 4);
      if (*v33 >= 0x21u)
      {
LABEL_32:
        if (!a2 && !a5 && !__s1 && !(a7 | a3))
        {
          *(a8 + 24) = v20;
          v30 = *(a8 + 48);
          *(a8 + 16) = 1;
          v31 = v30 + *(v30 + 20);
          *a8 = v30;
          *(a8 + 8) = v31;
          v32 = v29;
          result = sub_100012334(0x20u, 0, 0, 1, 0, 0, a8);
          *(a8 + 32) = v32;
          *(a8 + 16) = 1;
          if (!result)
          {
            return result;
          }

          if (*__error() != 2)
          {
            return 0xFFFFFFFFLL;
          }

          *__error() = 5;
          v22 = "ntfs_external_attr_find";
          v23 = 2312;
          v24 = 128;
LABEL_17:
          ntfs_log_redirect(v22, "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", v23, v24);
          return 0xFFFFFFFFLL;
        }

        *__error() = 22;
        v22 = "ntfs_external_attr_find";
        v23 = 2279;
LABEL_16:
        v24 = 256;
        goto LABEL_17;
      }
    }
  }

  if (v29 < v26 || (v34 = v26 + v27, v29 > v26 + v27))
  {
LABEL_106:
    if (v21 != v20)
    {
      *(a8 + 24) = v20;
      *a8 = *(a8 + 48);
    }

    *__error() = 5;
    v55 = *v20;
    v22 = "ntfs_external_attr_find";
    v23 = 2482;
    goto LABEL_16;
  }

  v59 = (a8 + 40);
  if (a1)
  {
    v35 = __s1 == 0;
  }

  else
  {
    v35 = 1;
  }

  v36 = !v35;
  v64 = v36;
  v56 = v26;
  __n = a7;
  v67 = v34;
  while (1)
  {
    *(a8 + 32) = v29;
    if (v29 == v34)
    {
      break;
    }

    if (*(v29 + 4))
    {
      v37 = v29 + 6 > v67;
    }

    else
    {
      v37 = 1;
    }

    v34 = v67;
    if (v37 || v29 + *(v29 + 4) > v67)
    {
      goto LABEL_106;
    }

    v60 = v29 + *(v29 + 4);
    v66 = v29;
    if (!v17)
    {
      LODWORD(v40) = *(v29 + 6);
      v65 = (v29 + *(v29 + 7));
LABEL_71:
      v43 = *(v29 + 16);
      v58 = v20;
      if ((v43 & 0xFFFFFFFFFFFFLL) == *v21)
      {
        if (*(v21[1] + 16) == HIWORD(v43))
        {
          v44 = *a8;
LABEL_78:
          v46 = v44 + *(v44 + 20);
          *(a8 + 8) = v46;
          v62 = v40;
          while (1)
          {
            if (v46 > v44 + *(v44 + 28))
            {
              goto LABEL_105;
            }

            if (*v46 == -1)
            {
              v20 = v58;
              goto LABEL_102;
            }

            if (!*(v46 + 4))
            {
LABEL_105:
              v20 = v58;
              goto LABEL_106;
            }

            if (*(v29 + 24) == *(v46 + 14))
            {
              if (*v29 != *v46)
              {
                goto LABEL_105;
              }

              v47 = v21;
              if (!ntfs_names_are_equal((v46 + *(v46 + 10)), *(v46 + 9), v65, v62, 0, *(v68 + 224), *(v68 + 232)))
              {
                v20 = v58;
                v21 = v47;
                goto LABEL_106;
              }

              *(a8 + 8) = v46;
              if (!v64)
              {
                return 0;
              }

              v21 = v47;
              v29 = v66;
              if (!*(v46 + 8) && *(v46 + 16) == a7)
              {
                result = memcmp((v46 + *(v46 + 20)), __s1, __n);
                v29 = v66;
                v21 = v47;
                if (!result)
                {
                  return result;
                }
              }
            }

            v46 += *(v46 + 4);
            v44 = *a8;
            if (v46 < *a8)
            {
              goto LABEL_105;
            }
          }
        }

        v54 = v21;
        ntfs_log_redirect("ntfs_external_attr_find", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 2398, 128);
        v21 = v54;
      }

      else
      {
        if ((v43 & 0xFFFFFFFFFFFFLL) == *v20)
        {
          *(a8 + 24) = v20;
          v44 = *(a8 + 48);
          *a8 = v44;
          v21 = v20;
          goto LABEL_78;
        }

        v45 = ntfs_extent_inode_open(v20, v43);
        v21 = v45;
        if (v45)
        {
          *(a8 + 24) = v45;
          v44 = v45[1];
          *a8 = v44;
          v29 = v66;
          goto LABEL_78;
        }
      }

      goto LABEL_106;
    }

    v39 = v59;
    if (*v29 > v17)
    {
      goto LABEL_117;
    }

    if (*v29 == v17)
    {
      v40 = *(v29 + 6);
      v65 = (v29 + *(v29 + 7));
      if (a2 == &AT_UNNAMED)
      {
        if (*(v29 + 6))
        {
          break;
        }
      }

      else if (a2)
      {
        v61 = *(v29 + 6);
        v41 = v21;
        v42 = ntfs_names_full_collate(a2, a3, v65, *(v29 + 6), a4, *(v68 + 224), *(v68 + 232));
        v29 = v66;
        v34 = v67;
        v21 = v41;
        v40 = v61;
        if (v42)
        {
          if (v42 < 0)
          {
            break;
          }

          goto LABEL_103;
        }
      }

      if (!a5)
      {
        goto LABEL_71;
      }

      if (v60 < v56)
      {
        goto LABEL_71;
      }

      if (v60 + 6 >= v34)
      {
        goto LABEL_71;
      }

      if (v60 + *(v60 + 4) > v34)
      {
        goto LABEL_71;
      }

      if (*(v60 + 8) > a5)
      {
        goto LABEL_71;
      }

      if (*v60 != *v29)
      {
        goto LABEL_71;
      }

      if (*(v60 + 6) != v40)
      {
        goto LABEL_71;
      }

      v48 = v40;
      v49 = v40;
      v63 = v40;
      v40 = v21;
      v50 = ntfs_names_are_equal((v60 + *(v60 + 7)), v48, v65, v49, 0, *(v68 + 224), *(v68 + 232));
      v29 = v66;
      v21 = v40;
      LODWORD(v40) = v63;
      if (!v50)
      {
        goto LABEL_71;
      }

LABEL_102:
      v34 = v67;
    }

LABEL_103:
    v29 = v60;
    if (v60 < *(v20 + 40))
    {
      goto LABEL_106;
    }
  }

  v39 = v59;
  if (v17 + 1 <= 1)
  {
    goto LABEL_113;
  }

LABEL_117:
  v52 = *(a8 + 40);
  v51 = *(a8 + 48);
  v53 = v51 + *(v51 + 20);
  *a8 = v51;
  *(a8 + 8) = v53;
  *(a8 + 16) = 1;
  *(a8 + 24) = v52;
  v39[1] = 0;
  v39[2] = 0;
  *v39 = 0;
  do
  {
    result = sub_100012334(v17, a2, a3, a4, __s1, a7, a8);
  }

  while (!result);
  return result;
}

void ntfs_attr_close(_BYTE *a1)
{
  if (a1)
  {
    if ((a1[40] & 2) != 0)
    {
      v2 = *a1;
      if (*a1)
      {
        free(v2);
      }
    }

    v3 = *(a1 + 3);
    if (v3 != STREAM_SDS && v3 != &AT_UNNAMED && v3 != NTFS_INDEX_I30)
    {
      free(v3);
    }

    free(a1);
  }
}

uint64_t ntfs_attr_map_runlist(char **a1, uint64_t a2)
{
  v4 = ntfs_rl_vcn_to_lcn(*a1, a2);
  if (v4 > -2 || v4 == -3)
  {
    return 0;
  }

  search_ctx = ntfs_attr_get_search_ctx(a1[1], 0);
  if (!search_ctx)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = search_ctx;
  if (ntfs_attr_lookup(*(a1 + 4), a1[3], *(a1 + 8), 0, a2, 0, 0, search_ctx) || (v9 = ntfs_mapping_pairs_decompress(*(a1[1] + 2), v8[1], *a1)) == 0)
  {
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
    *a1 = v9;
  }

  free(v8);
  return v6;
}

uint64_t ntfs_attr_map_whole_runlist(char **a1)
{
  if ((a1[5] & 8) != 0)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = *(v2 + 16);
  search_ctx = ntfs_attr_get_search_ctx(v2, 0);
  if (!search_ctx)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = search_ctx;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  while (1)
  {
    v10 = ntfs_rl_vcn_to_lcn(*a1, v6);
    if (ntfs_attr_lookup(*(a1 + 4), a1[3], *(a1 + 8), 0, v6, 0, 0, v5))
    {
      break;
    }

    v9 = v5[1];
    if (v10 == -2)
    {
      v11 = ntfs_mapping_pairs_decompress(*(a1[1] + 2), v5[1], *a1);
      if (!v11)
      {
        goto LABEL_26;
      }

      *a1 = v11;
    }

    if (!v6)
    {
      if (v9[2])
      {
        *__error() = 5;
        v18 = *a1[1];
        v12 = 718;
        goto LABEL_25;
      }

      v7 = v9[5] >> *(v3 + 52);
    }

    v8 = v9[3];
    if (v8 < 0)
    {
      *__error() = 2;
      goto LABEL_19;
    }

    v6 = v8 + 1;
    if (v8 + 1 < v9[2])
    {
      *__error() = 5;
      v16 = *a1[1];
      v12 = 740;
LABEL_25:
      ntfs_log_redirect("ntfs_attr_map_whole_runlist", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", v12, 256);
      goto LABEL_26;
    }
  }

  if (!v9)
  {
    v12 = 745;
    goto LABEL_25;
  }

LABEL_19:
  v14 = __error();
  if (v8 && v8 != v7 - 1)
  {
    *v14 = 5;
    v17 = *a1[1];
    v12 = 753;
    goto LABEL_25;
  }

  if (*v14 == 2)
  {
    v13 = 0;
    a1[5] = (a1[5] | 8);
    goto LABEL_27;
  }

LABEL_26:
  v13 = 0xFFFFFFFFLL;
LABEL_27:
  free(v5);
  return v13;
}

char *ntfs_attr_find_vcn(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = 22;
LABEL_20:
    v11 = __error();
    result = 0;
    *v11 = v3;
    return result;
  }

  v3 = 22;
  if (a2 < 0 || (*(a1 + 40) & 2) == 0)
  {
    goto LABEL_20;
  }

  v5 = 1;
  do
  {
    v6 = *a1;
    if (*a1 && *v6 <= a2)
    {
      result = v6 - 24;
      do
      {
        if (!*(result + 5))
        {
          v9 = *(result + 4);
          goto LABEL_13;
        }

        v8 = *(result + 6);
        result += 24;
      }

      while (v8 <= a2);
      v9 = *(result + 1);
      if (v9 > -2)
      {
        return result;
      }

LABEL_13:
      if (v9 != -2)
      {
        if (v9 == -3)
        {
          v12 = 2;
        }

        else
        {
          v12 = 5;
        }

        if (v9 == -4)
        {
          v3 = 22;
        }

        else
        {
          v3 = v12;
        }

        goto LABEL_20;
      }
    }

    if ((v5 & 1) == 0)
    {
      goto LABEL_18;
    }

    v10 = ntfs_attr_map_runlist(a1, a2);
    v5 = 0;
  }

  while (!v10);
  if (*__error() == 22 || *__error() == 2)
  {
LABEL_18:
    v3 = 5;
    goto LABEL_20;
  }

  return 0;
}

size_t ntfs_attr_pread(uint64_t a1, int64_t a2, size_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  if (!a1 || (v8 = *(a1 + 8)) == 0 || ((a3 | a2) & 0x8000000000000000) != 0 || !a4 || (v9 = *(v8 + 16)) == 0)
  {
    *__error() = 22;
    v14 = "ntfs_attr_pread";
    v15 = 1080;
    goto LABEL_15;
  }

  if (*(a1 + 20) && (*(a1 + 40) & 2) != 0)
  {
    v17 = __error();
    v18 = 102;
    goto LABEL_19;
  }

  v10 = *(v9 + 280);
  if (v10)
  {
    if (!a3)
    {
      return v5;
    }

    v11 = *(a1 + 56);
    v13 = *(a1 + 64);
    v12 = (a1 + 56);
    if ((*(a1 + 20) & 0x4000) != 0 && (*(a1 + 40) & 2) != 0)
    {
      if (v11 != v13)
      {
        ntfs_log_redirect("ntfs_attr_pread_i", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 886, 128);
        v17 = __error();
        v18 = 22;
        goto LABEL_19;
      }

      v11 = (v11 + 511) & 0xFFFFFFFFFFFFFE00 | 2;
      v13 = v11;
    }
  }

  else
  {
    if (*(a1 + 16) == 128 && *(a1 + 24) == &AT_UNNAMED && (*(v8 + 33) & 0x40) != 0 && (*(a1 + 40) & 2) != 0)
    {
      v17 = __error();
      v18 = 13;
      goto LABEL_19;
    }

    if (!a3)
    {
      return v5;
    }

    v11 = *(a1 + 56);
    v13 = *(a1 + 64);
    v12 = (a1 + 56);
  }

  if ((a3 + a2) > v11)
  {
    v5 = v11 - a2;
    if (v11 <= a2)
    {
      return 0;
    }
  }

  if ((*(a1 + 40) & 2) == 0)
  {
    v19 = ntfs_malloc(0x40uLL);
    if (!v19)
    {
      return -1;
    }

    v20 = v19;
    v21 = *(v8 + 8);
    v22 = v21 + *(v21 + 20);
    *v19 = v21;
    v19[1] = v22;
    *(v19 + 4) = 1;
    v19[3] = v8;
    *(v19 + 2) = 0u;
    *(v19 + 3) = 0u;
    if (!ntfs_attr_lookup(*(a1 + 16), *(a1 + 24), *(a1 + 32), 0, 0, 0, 0, v19))
    {
      v23 = v20[1];
      v24 = v23 + *(v23 + 20);
      if (v24 + *(v23 + 16) <= *v20 + *(v9 + 44))
      {
        memcpy(v4, (v24 + a2), v5);
        free(v20);
        return v5;
      }

      *__error() = 5;
      ntfs_log_redirect("ntfs_attr_pread_i", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 916, 256);
    }

    free(v20);
    return -1;
  }

  v25 = v5 + a2 - v13;
  if ((v5 + a2) <= v13)
  {
    v25 = 0;
  }

  else
  {
    if (v13 <= a2)
    {
      bzero(a4, v5);
      return v5;
    }

    v5 = v13 - a2;
    bzero(&a4[v13 - a2], v25);
    v10 = *(*(*(a1 + 8) + 16) + 280);
  }

  if (!v10 || (*(a1 + 20) & 0x4000) == 0 || (v5 + a2) <= v13 - 2)
  {
    v27 = v5;
    goto LABEL_46;
  }

  v26 = -*v12 & 0x1FF;
  if (v5 + a2 != v13)
  {
    v4[v5 - 1] = -*v12;
    v27 = v5 - 1;
    goto LABEL_83;
  }

  if (v5 == 1)
  {
    v27 = 0;
    *v4 = BYTE1(v26);
LABEL_83:
    ++v25;
    goto LABEL_46;
  }

  *&v4[v5 - 2] = v26;
  v27 = v5 - 2;
  v25 += 2;
LABEL_46:
  vcn = ntfs_attr_find_vcn(a1, a2 >> *(v9 + 52));
  if (!vcn)
  {
    if (*__error() != 2)
    {
      return -1;
    }

    *__error() = 5;
    v14 = "ntfs_attr_pread_i";
    v15 = 971;
LABEL_15:
    ntfs_log_redirect(v14, "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", v15, 256);
    return -1;
  }

  if (!v27)
  {
    v5 = 0;
LABEL_74:
    v5 += v25;
    return v5;
  }

  v29 = vcn;
  v5 = 0;
  v30 = a2 - (*vcn << *(v9 + 52));
  v42 = v25;
  while (1)
  {
    if (v29[1] != -2)
    {
      goto LABEL_52;
    }

    v31 = ntfs_attr_find_vcn(a1, *v29);
    if (!v31)
    {
      break;
    }

    v29 = v31;
    v30 = v5 + a2 - (*v31 << *(v9 + 52));
LABEL_52:
    v32 = v29[2];
    if (!v32)
    {
      *__error() = 5;
      v41 = 997;
      goto LABEL_89;
    }

    v33 = v29[1];
    if ((v33 & 0x8000000000000000) == 0)
    {
      v34 = (v32 << *(v9 + 52)) - v30;
      if (v27 >= v34)
      {
        v35 = v34;
      }

      else
      {
        v35 = v27;
      }

      do
      {
        v36 = v5;
        v37 = ntfs_pread(*v9, (v29[1] << *(v9 + 52)) + v30, v35, v4);
        v38 = v37 & ~(v37 >> 63);
        v27 -= v38;
        v4 += v38;
        v5 += v38;
        if (v37 == v35)
        {
          v25 = v42;
          goto LABEL_67;
        }

        if (v37 != -1)
        {
          if (v5)
          {
            return v5;
          }

          if (!v37)
          {
            *__error() = 5;
          }

          goto LABEL_79;
        }
      }

      while (*__error() == 4);
      if (v36)
      {
        return v5;
      }

LABEL_79:
      v14 = "ntfs_attr_pread_i";
      v15 = 1041;
      goto LABEL_15;
    }

    if (v33 != -1)
    {
      v41 = 1004;
      goto LABEL_89;
    }

    v39 = (v32 << *(v9 + 52)) - v30;
    if (v27 >= v39)
    {
      v40 = v39;
    }

    else
    {
      v40 = v27;
    }

    bzero(v4, v40);
    v5 += v40;
    v27 -= v40;
    v4 += v40;
LABEL_67:
    v30 = 0;
    v29 += 3;
    if (!v27)
    {
      goto LABEL_74;
    }
  }

  if (*__error() != 2)
  {
    goto LABEL_90;
  }

  *__error() = 5;
  v41 = 988;
LABEL_89:
  ntfs_log_redirect("ntfs_attr_pread_i", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", v41, 256);
LABEL_90:
  if (v5)
  {
    return v5;
  }

  v17 = __error();
  v18 = 5;
LABEL_19:
  *v17 = v18;
  return -1;
}

uint64_t ntfs_attr_pwrite(uint64_t a1, uint64_t a2, int64_t a3, char *a4)
{
  v70 = -1;
  if (!a1 || (v5 = *(a1 + 8)) == 0 || (v6 = a3, (a3 | a2) < 0) || (v8 = a4) == 0 || (v9 = *(v5 + 16)) == 0)
  {
    *__error() = 22;
    v13 = 1392;
LABEL_10:
    ntfs_log_redirect("ntfs_attr_pwrite", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", v13, 256);
    return -1;
  }

  v10 = *(a1 + 20);
  if (!v10)
  {
    *(a1 + 86) = 0;
    if ((v10 & 0x4000) != 0 && !*(v9 + 280))
    {
      v11 = __error();
      v12 = 13;
      goto LABEL_8;
    }

    if (!a3)
    {
      return v6;
    }

    search_ctx = *(a1 + 40);
    v16 = *(a1 + 56);
    if (*(a1 + 16) == 128 && v16 <= a2)
    {
      v17 = *(a1 + 40);
      if ((search_ctx & 2) != 0)
      {
        LOBYTE(v17) = search_ctx | 0x10;
        *(a1 + 40) = search_ctx | 0x10;
      }
    }

    else
    {
      v17 = *(a1 + 40);
    }

    v18 = a3 + a2;
    if (a3 + a2 <= v16)
    {
      v20 = 0;
    }

    else
    {
      if ((v17 & 0x10) != 0)
      {
        v19 = 2;
      }

      else
      {
        v19 = 1;
      }

      if (sub_1000110E0(a1, v6 + a2, v19))
      {
        v13 = 1439;
        goto LABEL_10;
      }

      if (*(a1 + 20))
      {
        goto LABEL_7;
      }

      v17 = *(a1 + 40);
      v20 = 2;
    }

    v71 = 0;
    v21 = *(a1 + 64);
    v68 = v21;
    v69 = 0;
    if ((v17 & 2) == 0)
    {
      search_ctx = ntfs_attr_get_search_ctx(*(a1 + 8), 0);
      if (search_ctx)
      {
        if (ntfs_attr_lookup(*(a1 + 16), *(a1 + 24), *(a1 + 32), 0, 0, 0, 0, search_ctx))
        {
          v22 = 1466;
        }

        else
        {
          v29 = *(search_ctx + 8);
          v30 = v29 + *(v29 + 20);
          if (v30 + *(v29 + 16) <= *search_ctx + *(v9 + 44))
          {
            memcpy((v30 + a2), v8, v6);
            if (!ntfs_mft_records_write(v9, **(search_ctx + 24), 1, *search_ctx))
            {
              free(search_ctx);
              return v6;
            }

            v22 = 1487;
          }

          else
          {
            *__error() = 5;
            v22 = 1474;
          }
        }

        ntfs_log_redirect("ntfs_attr_pwrite", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", v22, 256);
      }

LABEL_106:
      v55 = *__error();
      if ((v20 & 1) == 0)
      {
        goto LABEL_113;
      }

      if (search_ctx)
      {
        ntfs_attr_reinit_search_ctx(search_ctx);
      }

      else
      {
        search_ctx = ntfs_attr_get_search_ctx(*(a1 + 8), 0);
        if (!search_ctx)
        {
LABEL_112:
          ntfs_log_redirect("ntfs_attr_pwrite", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 1760, 128);
LABEL_113:
          if (!search_ctx)
          {
LABEL_115:
            if (v70 != -1)
            {
              sub_100014038(a1, 0, 1);
            }

            if ((v20 & 2) != 0 && sub_1000110E0(a1, v16, 1))
            {
              ntfs_log_redirect("ntfs_attr_pwrite", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 1772, 256);
            }

            *__error() = v55;
            return -1;
          }

LABEL_114:
          free(search_ctx);
          goto LABEL_115;
        }
      }

      if (!ntfs_attr_lookup(*(a1 + 16), *(a1 + 24), *(a1 + 32), 0, 0, 0, 0, search_ctx))
      {
        *(a1 + 64) = v68;
        *(*(search_ctx + 8) + 56) = v68;
        if (!ntfs_mft_records_write(v9, **(search_ctx + 24), 1, *search_ctx))
        {
          goto LABEL_114;
        }
      }

      goto LABEL_112;
    }

    if (v18 > v21)
    {
      if ((v17 & 0x10) != 0)
      {
        v23 = a2 >> *(v9 + 52);
        v24 = v23 != 0;
        v25 = v23 - 1;
        if (v24)
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }

        if (sub_100011874(a1, v26))
        {
          goto LABEL_105;
        }

        v70 = v26;
      }

      else if (ntfs_attr_map_whole_runlist(a1))
      {
        goto LABEL_105;
      }

      v27 = search_ctx;
      search_ctx = ntfs_attr_get_search_ctx(*(a1 + 8), 0);
      if (!search_ctx)
      {
        goto LABEL_106;
      }

      if (ntfs_attr_lookup(*(a1 + 16), *(a1 + 24), *(a1 + 32), 0, 0, 0, 0, search_ctx))
      {
        goto LABEL_106;
      }

      v28 = *(a1 + 64);
      if (a2 > v28)
      {
        if (sub_100011A04(a1, v28, a2 - v28))
        {
          goto LABEL_106;
        }
      }

      *(*(search_ctx + 8) + 56) = v18;
      if (ntfs_mft_records_write(v9, **(search_ctx + 24), 1, *search_ctx))
      {
        *(*(search_ctx + 8) + 56) = v68;
        ntfs_mft_records_write(v9, **(search_ctx + 24), 1, *search_ctx);
        goto LABEL_106;
      }

      *(a1 + 64) = v18;
      free(search_ctx);
      v20 |= 1u;
      LOBYTE(search_ctx) = v27;
    }

    vcn = ntfs_attr_find_vcn(a1, a2 >> *(v9 + 52));
    v69 = vcn;
    if (!vcn)
    {
      if (*__error() == 2)
      {
        *__error() = 5;
        ntfs_log_redirect("ntfs_attr_pwrite", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 1578, 256);
      }

      goto LABEL_105;
    }

    v32 = vcn;
    v59 = search_ctx;
    v64 = 0;
    search_ctx = 0;
    v33 = a2 - (*vcn << *(v9 + 52));
    v71 = v33;
    v34 = v6;
    v61 = v16;
    v60 = v20;
    while (2)
    {
      if (v32[1] == -2)
      {
        v35 = ntfs_attr_find_vcn(a1, *v32);
        v69 = v35;
        if (!v35)
        {
          if (*__error() != 2)
          {
LABEL_96:
            v53 = __error();
            if (!search_ctx)
            {
              v56 = *v53;
              *__error() = v56;
              goto LABEL_122;
            }

            v16 = v61;
            v20 = v60;
            if ((v60 & 1) == 0 || search_ctx + a2 > *(a1 + 64))
            {
              goto LABEL_99;
            }

LABEL_105:
            search_ctx = 0;
            goto LABEL_106;
          }

          *__error() = 5;
          v57 = 1595;
LABEL_128:
          ntfs_log_redirect("ntfs_attr_pwrite", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", v57, 256);
          goto LABEL_96;
        }

        v32 = v35;
        v33 = search_ctx + a2 - (*v35 << *(v9 + 52));
        v71 = v33;
      }

      v36 = v32;
      v37 = v32[2];
      if (v37)
      {
        v65 = v36;
        v38 = v36[1];
        if ((v38 & 0x8000000000000000) == 0)
        {
          goto LABEL_67;
        }

        if (v38 == -1)
        {
          v39 = *v65;
          if (!sub_100011B78(a1, v34, &v71, &v69, &v70))
          {
            v64 = v39 + v37;
            v65 = v69;
            v37 = v69[2];
            v33 = v71;
LABEL_67:
            if (v6 >= (v37 << *(v9 + 52)) - v33)
            {
              v40 = (v37 << *(v9 + 52)) - v33;
            }

            else
            {
              v40 = v6;
            }

            v66 = v33;
            v67 = v33 + v40;
            v41 = v65;
            while (1)
            {
              v42 = v40;
              if ((*(v9 + 16) & 1) == 0)
              {
                v43 = *(v9 + 52);
                v44 = v41[1] << v43;
                v45 = v67 + (*v41 << v43);
                v46 = (*(v9 + 40) + v45 - 1) & ~(*(v9 + 40) - 1);
                v47 = v46 - v45;
                if (v46 != v45 && ((v48 = v64 << v43, v45 != *(a1 + 64)) ? (v49 = v45 < v48) : (v49 = 1), v49))
                {
                  v62 = v47 + v40;
                  v63 = v44;
                  v50 = ntfs_malloc(v47 + v40);
                  if (!v50)
                  {
                    goto LABEL_123;
                  }

                  v51 = v50;
                  memcpy(v50, v8, v40);
                  bzero(&v51[v40], v47);
                  v52 = ntfs_pwrite(*v9, v63 + v66, v62, v51);
                  if (v52 == v62)
                  {
                    v42 = v40;
                  }

                  else
                  {
                    v42 = v52;
                  }

                  free(v51);
                  v41 = v65;
                }

                else
                {
                  v42 = ntfs_pwrite(*v9, v44 + v66, v40, v8);
                }
              }

              if (v42 >= 1)
              {
                search_ctx += v42;
                v34 -= v42;
                v8 += v42;
                v6 -= v42;
              }

              if (v42 == v40)
              {
                break;
              }

              if (v42 != -1)
              {
                if (!v42)
                {
                  *__error() = 5;
                }

                goto LABEL_96;
              }

              if (*__error() != 4)
              {
                goto LABEL_96;
              }
            }

            v33 = 0;
            v32 = v41 + 3;
            v69 = v32;
            v71 = 0;
            if (v6)
            {
              continue;
            }

LABEL_99:
            if ((*(a1 + 40) & 0x18) != 0)
            {
              if (sub_100014038(a1, v70 & ~(v70 >> 63), 1))
              {
                return -1;
              }

              v54 = *(a1 + 40);
              if ((v59 & 2) == 0)
              {
                v54 &= 0xFFFFFFFFFFFFFFEBLL;
              }

              *(a1 + 40) = v54 & 0xFFFFFFFFFFFFFFEFLL;
            }

            return search_ctx;
          }

LABEL_123:
          search_ctx = 0;
LABEL_122:
          v16 = v61;
          v20 = v60;
          goto LABEL_106;
        }

        *__error() = 5;
        v58 = v65[1];
        v57 = 1614;
      }

      else
      {
        *__error() = 5;
        v57 = 1604;
      }

      goto LABEL_128;
    }
  }

LABEL_7:
  v11 = __error();
  v12 = 102;
LABEL_8:
  *v11 = v12;
  return -1;
}

uint64_t sub_1000110E0(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    v3 = a2;
    if ((a2 & 0x8000000000000000) == 0)
    {
      while (1)
      {
        v5 = *(a1 + 8);
        if (!*v5 && *(a1 + 16) == 128)
        {
          goto LABEL_61;
        }

        v6 = *(a1 + 56);
        if (v6 == v3)
        {
          return 0;
        }

        v7 = *(a1 + 20);
        if ((v7 & 0x4000) != 0)
        {
          v30 = __error();
          v31 = 13;
          goto LABEL_62;
        }

        if (v7)
        {
          v8 = v7 == 1;
        }

        else
        {
          v8 = 1;
        }

        if (!v8 && (*(a1 + 40) & 2) != 0)
        {
          *__error() = 102;
          v40 = "ntfs_attr_truncate_i";
          v41 = 5636;
LABEL_86:
          ntfs_log_redirect(v40, "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", v41, 256);
          return 0xFFFFFFFFLL;
        }

        if ((*(a1 + 40) & 2) != 0)
        {
          if (v3 && v6 < v3 && v7)
          {
            v3 = (*(a1 + 64) | (*(a1 + 80) - 1)) + 1;
          }

          if (v3 <= v6)
          {

            return sub_1000152FC(a1, v3);
          }

          else
          {

            return sub_100014DE8(a1, v3, a3);
          }
        }

        v10 = ntfs_malloc(0x40uLL);
        if (!v10)
        {
          return 0xFFFFFFFFLL;
        }

        search_ctx = v10;
        v12 = v5[1];
        v13 = v12 + *(v12 + 20);
        *v10 = v12;
        v10[1] = v13;
        *(v10 + 4) = 1;
        v10[3] = v5;
        *(v10 + 2) = 0u;
        *(v10 + 3) = 0u;
LABEL_18:
        if (ntfs_attr_lookup(*(a1 + 16), *(a1 + 24), *(a1 + 32), 0, 0, 0, 0, search_ctx))
        {
          v33 = *__error();
          v34 = 4203;
LABEL_109:
          ntfs_log_redirect("ntfs_resident_attr_resize_i", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", v34, 256);
LABEL_110:
          v32 = 0xFFFFFFFFLL;
LABEL_111:
          free(search_ctx);
          *__error() = v33;
          return v32;
        }

        v14 = *(*(a1 + 8) + 16);
        if ((ntfs_attr_size_bounds_check(v14, *(a1 + 16), v3) & 0x80000000) != 0)
        {
          v35 = *__error();
          if (v35 == 2)
          {
            v33 = 5;
          }

          else
          {
            v33 = v35;
          }

          v34 = 4215;
          goto LABEL_109;
        }

        if (*(v14 + 44) > v3)
        {
          v15 = ntfs_resident_attr_value_resize(*search_ctx, search_ctx[1], v3);
          if (v15 == -2)
          {
            v33 = *__error();
            v32 = 4294967294;
            goto LABEL_111;
          }

          if (!v15)
          {
            break;
          }
        }

        if (ntfs_attr_make_non_resident(a1, search_ctx))
        {
          if (*__error() != 28 && *__error() != 1)
          {
            v33 = *__error();
            v34 = 4282;
            goto LABEL_109;
          }

          v16 = *(*(a1 + 8) + 8);
          if (!v16)
          {
            v16 = MEMORY[8];
          }

          v17 = v16 + *(v16 + 20);
          *search_ctx = v16;
          search_ctx[1] = v17;
          *(search_ctx + 4) = 1;
          *(search_ctx + 3) = 0u;
          *(search_ctx + 5) = 0u;
          search_ctx[7] = 0;
          while (!ntfs_attr_lookup(0, 0, 0, 0, 0, 0, 0, search_ctx))
          {
            v18 = search_ctx[1];
            if (!*(v18 + 8))
            {
              v19 = *(v18 + 9);
              if (((2 * v19 + 7) & 0x3F8) + 72 < *(v18 + 4))
              {
                v20 = ntfs_attr_open(*(a1 + 8), *v18, (v18 + *(v18 + 10)), v19);
                if (!v20)
                {
                  v33 = *__error();
                  v34 = 4309;
                  goto LABEL_109;
                }

                v21 = v20;
                if (!ntfs_attr_make_non_resident(v20, search_ctx))
                {
                  if (*(v21 + 16) == 128 && !*(v21 + 32))
                  {
                    v29 = *(v21 + 8);
                    *(v29 + 72) = *(v21 + 48);
                    *(v29 + 24) |= 8uLL;
                  }

                  if (*(v21 + 20) == 1 && ntfs_attr_pclose(v21))
                  {
                    v33 = *__error();
                    ntfs_attr_close(v21);
                    goto LABEL_110;
                  }

                  ntfs_inode_mark_dirty(*(v21 + 8));
                  ntfs_attr_close(v21);
                  goto LABEL_57;
                }

                ntfs_attr_close(v21);
              }
            }
          }

          if (*__error() != 2)
          {
            v33 = *__error();
            v34 = 4340;
            goto LABEL_109;
          }

          v22 = *(a1 + 16);
          if (v22 == 32 || v22 == 16)
          {
            free(search_ctx);
            if (ntfs_inode_free_space(*(a1 + 8), 72))
            {
              v40 = "ntfs_resident_attr_resize_i";
              v41 = 4352;
              goto LABEL_86;
            }
          }

          else
          {
            v23 = *(a1 + 8);
            v24 = *(v23 + 8);
            v25 = v24 + *(v24 + 20);
            *search_ctx = v24;
            search_ctx[1] = v25;
            *(search_ctx + 4) = 1;
            search_ctx[3] = v23;
            *(search_ctx + 2) = 0u;
            *(search_ctx + 3) = 0u;
            if (ntfs_attr_lookup(*(a1 + 16), *(a1 + 24), *(a1 + 32), 0, 0, 0, 0, search_ctx))
            {
              ntfs_log_redirect("ntfs_resident_attr_resize_i", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 4367, 256);
              v33 = *__error();
              goto LABEL_110;
            }

            if (*(*search_ctx + 24) == *(*search_ctx + 20) + *(search_ctx[1] + 4) + 8)
            {
              v32 = 4294967294;
              v33 = 28;
              goto LABEL_111;
            }

            v26 = *(a1 + 8);
            if (*(v26 + 48) == -1)
            {
              v26 = *(v26 + 56);
            }

            if ((*(v26 + 24) & 2) != 0)
            {
              v27 = ntfs_mft_record_alloc(v14, v26);
              if (!v27)
              {
                v33 = *__error();
                v34 = 4400;
                goto LABEL_109;
              }

              v28 = v27;
              if (ntfs_attr_record_move_to(search_ctx, v27))
              {
                v33 = *__error();
                v34 = 4406;
                goto LABEL_109;
              }

              if (*(*(a1 + 8) + 48) == -1)
              {
                *(a1 + 8) = v28;
              }

LABEL_57:
              free(search_ctx);
              goto LABEL_58;
            }

            free(search_ctx);
            if (ntfs_inode_add_attrlist(v26))
            {
              return 0xFFFFFFFFLL;
            }
          }

LABEL_58:
          search_ctx = ntfs_attr_get_search_ctx(*(a1 + 8), 0);
          if (search_ctx)
          {
            goto LABEL_18;
          }

          return 0xFFFFFFFFLL;
        }

        ntfs_inode_mark_dirty(search_ctx[3]);
        free(search_ctx);
        a3 = 1;
      }

      *(a1 + 56) = v3;
      *(a1 + 64) = v3;
      v36 = (v3 + 7) & 0x7FFFFFFFFFFFFFF8;
      *(a1 + 48) = v36;
      v37 = *(a1 + 20);
      v38 = *(a1 + 16);
      if (*(a1 + 20))
      {
        goto LABEL_73;
      }

      if (v38 == 128)
      {
        if (*(a1 + 24) == &AT_UNNAMED && (*(*(a1 + 8) + 33) & 2) != 0)
        {
LABEL_73:
          *(a1 + 72) = v36;
          goto LABEL_91;
        }

        v38 = 128;
      }

LABEL_91:
      v42 = *(a1 + 8);
      v43 = *(*(v42 + 8) + 22);
      if ((v43 & 2) != 0)
      {
        if (v38 != 144 || *(a1 + 24) != NTFS_INDEX_I30)
        {
          goto LABEL_115;
        }

        *(v42 + 64) = v3;
        if (!v37)
        {
          *(v42 + 72) = v36;
          *(v42 + 24) |= 0x40uLL;
          goto LABEL_115;
        }
      }

      else
      {
        if (v38 != 128 || *(a1 + 24) != &AT_UNNAMED)
        {
          goto LABEL_115;
        }

        *(v42 + 64) = v3;
        if (!v37 && (*(v42 + 33) & 2) == 0)
        {
          v46 = *(v42 + 24);
          v44 = (v42 + 24);
          v45 = v46;
          v44[6] = v36;
LABEL_103:
          *v44 = v45 | 0x48;
          goto LABEL_115;
        }
      }

      if ((*(a1 + 40) & 2) != 0)
      {
        v36 = *(a1 + 72);
      }

      v47 = *(v42 + 24);
      v44 = (v42 + 24);
      v45 = v47;
      v44[6] = v36;
      *v44 = v47 | 0x40;
      if ((v43 & 2) == 0)
      {
        goto LABEL_103;
      }

LABEL_115:
      ntfs_inode_mark_dirty(search_ctx[3]);
      free(search_ctx);
      return 0;
    }
  }

LABEL_61:
  v30 = __error();
  v31 = 22;
LABEL_62:
  *v30 = v31;
  return 0xFFFFFFFFLL;
}

uint64_t sub_100011874(char **a1, uint64_t a2)
{
  v2 = a2;
  v4 = ntfs_rl_vcn_to_lcn(*a1, a2);
  if (v4 > -2 || v4 == -3)
  {
    return 0;
  }

  if (*a1)
  {
    v7 = **a1;
  }

  else
  {
    v7 = -1;
  }

  search_ctx = ntfs_attr_get_search_ctx(a1[1], 0);
  if (!search_ctx)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = search_ctx;
  v10 = 0;
  v11 = a1[6] >> *(*(a1[1] + 2) + 52);
  do
  {
    if (ntfs_attr_lookup(*(a1 + 4), a1[3], *(a1 + 8), 0, v2, 0, 0, v9) || (v12 = v9[1], (v13 = ntfs_mapping_pairs_decompress(*(a1[1] + 2), v12, *a1)) == 0))
    {
      free(v9);
      v17 = 0;
      return (v17 - 1);
    }

    *a1 = v13;
    v14 = *(v12 + 24);
    v15 = v14 + 1;
    v16 = v14 < v2 && v15 < v11;
    v17 = !v16;
    if (v16)
    {
      ntfs_log_redirect("ntfs_attr_map_partial_runlist", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 631, 128);
    }

    if (!*(v12 + 16))
    {
      v10 = 1;
    }

    if (v15 < v7 || v7 < 0)
    {
      v2 = v15;
    }

    else
    {
      v2 = v11;
    }

    if (v2 < v11)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0;
    }
  }

  while ((v19 & 1) != 0);
  free(v9);
  if (v10)
  {
    v20 = v17;
  }

  else
  {
    v20 = 0;
  }

  if (v20 == 1)
  {
    a1[5] = (a1[5] | 8);
    v17 = 1;
  }

  return (v17 - 1);
}

uint64_t sub_100011A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 | a2) < 0)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  v4 = a2;
  v6 = ntfs_calloc(0x2000uLL);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  if (a3 >= 1)
  {
    v8 = 0;
    v9 = a3 + v4;
    v10 = *a1;
    v11 = *(*(a1 + 8) + 16);
    do
    {
      v12 = v10[2];
      if (v12)
      {
        while (1)
        {
          v13 = (v12 << *(v11 + 52)) + v8;
          if (v13 > v4)
          {
            break;
          }

          v14 = v10 + 3;
          v12 = v10[5];
          v10 += 3;
          v8 = v13;
          if (!v12)
          {
            v8 = v13;
            v10 = v14;
            break;
          }
        }
      }

      if (v9 - v4 >= 0x2000)
      {
        v15 = 0x2000;
      }

      else
      {
        v15 = v9 - v4;
      }

      v16 = v10[1] == -1 && v8 <= v4;
      if (v16 && (v17 = v12 << *(v11 + 52), v17 + v8 >= v15 + v4))
      {
        v19 = v8 - v4 + v17;
        if (v9 - v4 >= v19)
        {
          v18 = v19;
        }

        else
        {
          v18 = v9 - v4;
        }
      }

      else
      {
        v18 = ntfs_rl_pwrite(v11, v10, v8, v4, v15, v7);
        if (v18 <= 0)
        {
          ntfs_log_redirect("ntfs_attr_fill_zero", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 1141, 256);
          v20 = 0xFFFFFFFFLL;
          goto LABEL_27;
        }
      }

      v4 += v18;
    }

    while (v4 < v9);
  }

  v20 = 0;
LABEL_27:
  free(v7);
  return v20;
}

uint64_t sub_100011B78(char **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *(a1[1] + 2);
  v10 = *a4;
  v11 = *(v9 + 52);
  v12 = *a3;
  if ((*(*a4 + 16) << v11) - *a3 >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = (*(*a4 + 16) << v11) - *a3;
  }

  v14 = *v10;
  if (*a1 && (a1[5] & 0x10) != 0)
  {
    v15 = v10[1] != -1 || v14 == 0;
    if (!v15 && *(v10 - 3) < 0 && sub_100011874(a1, v14 - 1))
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (ntfs_attr_map_whole_runlist(a1))
  {
    return 0xFFFFFFFFLL;
  }

  vcn = ntfs_attr_find_vcn(a1, v14);
  *a4 = vcn;
  if (!vcn)
  {
    v22 = 1201;
LABEL_65:
    ntfs_log_redirect("ntfs_attr_fill_hole", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", v22, 128);
    *__error() = 5;
    return 0xFFFFFFFFLL;
  }

  v17 = v14 + (v12 >> v11);
  v18 = vcn;
  while (*v18)
  {
    v19 = v18 - 24;
    v20 = *(v18 - 2);
    v18 -= 24;
    if ((v20 & 0x8000000000000000) == 0)
    {
      if (*(a1 + 20))
      {
        v21 = *(v19 + 2);
      }

      else
      {
        v21 = v17 - *v19;
      }

      v23 = v21 + v20;
      if (v21 + v20 != -1)
      {
        goto LABEL_29;
      }

      break;
    }
  }

  v24 = (vcn + 32);
  do
  {
    if (!*(v24 - 2))
    {
      v23 = -1;
      goto LABEL_29;
    }

    v26 = *v24;
    v24 += 3;
    v25 = v26;
  }

  while (v26 < 0);
  v27 = v25 + v17 - *(v24 - 4);
  if (v27 < 0)
  {
    v23 = -1;
  }

  else
  {
    v23 = v27;
  }

LABEL_29:
  v28 = *vcn - v17 + ((v13 + *a3 - 1) >> *(v9 + 52)) + 1;
  if (*(a1 + 20) && (v29 = *(a1 + 85), v28 < v29))
  {
    if ((v17 & -v29) <= *vcn)
    {
      v30 = *vcn;
    }

    else
    {
      v30 = v17 & -v29;
    }

    v28 = ((v29 - 1) & ~v30) + 1;
    if (v28 > *(vcn + 2))
    {
      v22 = 1261;
      goto LABEL_65;
    }

    v31 = v9;
  }

  else
  {
    v31 = v9;
    v30 = v17;
  }

  v32 = ntfs_cluster_alloc(v31, v30, v28, v23, 1u);
  if (!v32)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(a1 + 10) & 0x80FF) != 0)
  {
    a1[9] += v28 << *(v9 + 52);
  }

  v33 = ntfs_runlists_merge(*a1, v32);
  *a4 = v33;
  if (!v33 || *(a1 + 20) && (v34 = *a1, *a1 = v33, v33 = ntfs_rl_extend(a1, *a4, 2), (*a4 = v33) == 0) && (*a1 = v34, (v33 = *a4) == 0))
  {
    v41 = *__error();
    ntfs_log_redirect("ntfs_attr_fill_hole", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 1288, 256);
    if (ntfs_cluster_free_from_rl(v9, v32))
    {
      ntfs_log_redirect("ntfs_attr_fill_hole", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 1291, 256);
    }

    *__error() = v41;
    return 0xFFFFFFFFLL;
  }

  *(a1 + 86) = 2;
  *a1 = v33;
  if (*a5 == -1 || v17 < *a5)
  {
    *a5 = v17;
  }

  v35 = ntfs_attr_find_vcn(a1, v14);
  *a4 = v35;
  if (!v35)
  {
    v22 = 1307;
    goto LABEL_65;
  }

  if ((*(v35 + 1) & 0x8000000000000000) != 0)
  {
    v36 = *(v35 + 4);
    v35 += 24;
    *a4 = v35;
    if (v36 < 0)
    {
      v22 = 1317;
      goto LABEL_65;
    }
  }

  if (*a3)
  {
    if (!sub_100011A04(a1, v14 << *(v9 + 52), *a3))
    {
      v35 = *a4;
      goto LABEL_53;
    }

    return 0xFFFFFFFFLL;
  }

LABEL_53:
  v37 = *v35;
  if (v14 > *v35)
  {
    *a3 += (v14 - *v35) << *(v9 + 52);
    v37 = *v35;
  }

  result = 0;
  v39 = __OFSUB__(v14, v37);
  v40 = v14 - v37;
  if (v40 < 0 != v39)
  {
    *a3 += v40 << *(v9 + 52);
  }

  return result;
}

uint64_t ntfs_attr_reinit_search_ctx(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = *(result + 48);
    if (!v2)
    {
      v2 = *(v1 + 8);
    }

    v3 = v2 + *(v2 + 20);
    *result = v2;
    *(result + 8) = v3;
    *(result + 16) = 1;
    *(result + 24) = v1;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
  }

  else
  {
    *(result + 16) = 1;
    *(result + 8) = *result + *(*result + 20);
    *(result + 32) = 0;
  }

  return result;
}

uint64_t ntfs_attr_pclose(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 8)) != 0 && *(v1 + 16))
  {
    *(a1 + 86) = 0;
    if (*(a1 + 20))
    {
      v2 = __error();
      v3 = 102;
    }

    else
    {
      if (*(a1 + 16) != 128 || *(a1 + 24) != &AT_UNNAMED || (*(v1 + 33) & 0x40) == 0 || (*(a1 + 40) & 2) == 0)
      {
        return 0;
      }

      v2 = __error();
      v3 = 13;
    }

    *v2 = v3;
  }

  else
  {
    *__error() = 22;
    ntfs_log_redirect("ntfs_attr_pclose", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 1789, 256);
  }

  return 1;
}

unint64_t ntfs_attr_mst_pread(uint64_t a1, int a2, uint64_t a3, unsigned int a4, unsigned int *a5)
{
  if (a3 < 0 || (a4 & 0x1FF) != 0)
  {
    *__error() = 22;
    ntfs_log_redirect("ntfs_attr_mst_pread", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 1857, 256);
    return -1;
  }

  else
  {
    v6 = a5;
    v8 = ntfs_attr_pread(a1, a2, a4 * a3, a5);
    if (v8 < 1)
    {
      return v8;
    }

    else
    {
      v9 = *(a1 + 8);
      v10 = v8 / a4;
      v12 = !v9 || (v11 = *(v9 + 16)) == 0 || (*(v11 + 16) & 0x80) == 0;
      if (v8 >= a4)
      {
        v13 = (v6 + v10 * a4);
        do
        {
          ntfs_mst_post_read_fixup_warn(v6, a4, v12);
          v6 = (v6 + a4);
        }

        while (v6 < v13);
      }
    }
  }

  return v10;
}

uint64_t ntfs_attr_mst_pwrite(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, _WORD *a5)
{
  if (a3 < 0 || (a4 & 0x1FF) != 0)
  {
    *__error() = 22;
    return -1;
  }

  else if (a3)
  {
    v7 = a5;
    v10 = 0;
    v11 = a5;
    while (1)
    {
      v12 = ntfs_mst_pre_write_fixup(v11, a4);
      if (v12 < 0)
      {
        break;
      }

      ++v10;
      v11 += a4;
      if (a3 == v10)
      {
        v10 = a3;
        goto LABEL_11;
      }
    }

    v14 = v12;
    ntfs_log_redirect("ntfs_attr_mst_pwrite", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 1925, 256);
    if (!v10)
    {
      return v14;
    }

LABEL_11:
    v13 = ntfs_attr_pwrite(a1, a2, v10 * a4, v7);
    if (v13 <= 0)
    {
      ntfs_log_redirect("ntfs_attr_mst_pwrite", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 1936, 256);
    }

    do
    {
      ntfs_mst_post_write_fixup(v7);
      v7 = (v7 + a4);
      --v10;
    }

    while (v10);
    if (v13 >= 1)
    {
      return v13 / a4;
    }
  }

  else
  {
    return 0;
  }

  return v13;
}

uint64_t sub_100012334(unsigned int a1, unsigned __int16 *a2, unsigned int a3, int a4, void *__s1, unsigned int a6, uint64_t a7)
{
  v13 = *(a7 + 24);
  if (v13)
  {
    v14 = *(v13 + 16);
    v15 = *(v14 + 224);
    v16 = *(v14 + 232);
  }

  else
  {
    v16 = 0;
    v15 = 0;
    if (a2 && a2 != &AT_UNNAMED)
    {
      *__error() = 22;
      v18 = 2036;
      goto LABEL_39;
    }
  }

  v17 = *(a7 + 8);
  if (!*(a7 + 16))
  {
    goto LABEL_8;
  }

  *(a7 + 16) = 0;
  while (v17 >= *a7 && v17 <= *a7 + *(*a7 + 28))
  {
    v19 = *v17;
    v20 = *v17 <= a1 || a1 == 0;
    *(a7 + 8) = v17;
    if (!v20 || v19 == -1)
    {
      goto LABEL_37;
    }

    if (!*(v17 + 4))
    {
      break;
    }

    if (!a1)
    {
      return 0;
    }

    if (v19 == a1)
    {
      if (a2 == &AT_UNNAMED)
      {
        if (*(v17 + 9))
        {
          goto LABEL_37;
        }
      }

      else if (a2)
      {
        v22 = ntfs_names_full_collate(a2, a3, (v17 + *(v17 + 10)), *(v17 + 9), a4, v15, v16);
        if (v22)
        {
          goto LABEL_33;
        }
      }

      if (!__s1)
      {
        return 0;
      }

      v25 = *(v17 + 16);
      if (v25 >= a6)
      {
        v26 = a6;
      }

      else
      {
        v26 = v25;
      }

      v22 = memcmp(__s1, (v17 + *(v17 + 20)), v26);
      if (v22)
      {
LABEL_33:
        if (v22 < 0)
        {
          goto LABEL_37;
        }

        goto LABEL_8;
      }

      if (v25 == a6)
      {
        return 0;
      }

      if (v25 > a6)
      {
LABEL_37:
        *__error() = 2;
        return 0xFFFFFFFFLL;
      }
    }

LABEL_8:
    v17 += *(v17 + 4);
  }

  *__error() = 5;
  v23 = *(a7 + 24);
  if (v23)
  {
    v24 = *v23;
  }

  v18 = 2136;
LABEL_39:
  ntfs_log_redirect("ntfs_attr_find", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", v18, 256);
  return 0xFFFFFFFFLL;
}

uint64_t ntfs_attr_position(unsigned int a1, uint64_t a2)
{
  result = ntfs_attr_lookup(a1, 0, 0, 0, 0, 0, 0, a2);
  if (result)
  {
    if (*__error() == 2)
    {
      if (**(a2 + 8) != -1)
      {
        return 0;
      }

      *__error() = 28;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t ntfs_attr_find_in_attrdef(uint64_t a1, unsigned int a2)
{
  v2 = 2778;
  v3 = 22;
  if (a1)
  {
    if (a2)
    {
      result = *(a1 + 248);
      if (result)
      {
        v6 = *(a1 + 256);
        if (v6 >= 1)
        {
          for (i = 0; i < v6; i += 160)
          {
            v8 = *(result + 128);
            if (!v8)
            {
              break;
            }

            if (v8 >= a2)
            {
              if (v8 == a2)
              {
                return result;
              }

              break;
            }

            result += 160;
          }
        }

        v2 = 2793;
        v3 = 2;
      }
    }
  }

  *__error() = v3;
  ntfs_log_redirect("ntfs_attr_find_in_attrdef", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", v2, 256);
  return 0;
}

uint64_t ntfs_attr_size_bounds_check(uint64_t a1, unsigned int a2, int64_t a3)
{
  if (a3 < 0)
  {
    *__error() = 22;
    v5 = 2821;
    goto LABEL_14;
  }

  if (a2 == 32 && a3 > 0x40000)
  {
    *__error() = 34;
    v5 = 2831;
LABEL_14:
    ntfs_log_redirect("ntfs_attr_size_bounds_check", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", v5, 256);
    return 0xFFFFFFFFLL;
  }

  v6 = ntfs_attr_find_in_attrdef(a1, a2);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(v6 + 144);
  v8 = *(v6 + 152);
  if (a2 == 96)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v6 + 144);
  }

  if (v9 > a3 || (result = 0, v8 >= 1) && v8 < a3)
  {
    *__error() = 34;
    v5 = 2855;
    goto LABEL_14;
  }

  return result;
}

uint64_t ntfs_attr_can_be_resident(uint64_t a1, int a2)
{
  v2 = 22;
  if (!a1 || !a2 || !*(a1 + 248))
  {
    goto LABEL_6;
  }

  if (a2 == 160)
  {
    v2 = 1;
LABEL_6:
    *__error() = v2;
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t ntfs_make_room_for_attr(unint64_t a1, char *__src, int a3)
{
  v4 = &__src[-a1];
  if (__src < a1 || !a1 || !__src)
  {
    *__error() = 22;
    ntfs_log_redirect("ntfs_make_room_for_attr", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 2978, 256);
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 24);
  if (v4 > v5 - 8)
  {
    v6 = __error();
    v7 = 22;
LABEL_14:
    *v6 = v7;
    return 0xFFFFFFFFLL;
  }

  v8 = (a3 + 7) & 0xFFFFFFF8;
  if (v8)
  {
    v9 = v5 + v8;
    v10 = *(a1 + 28);
    v11 = &__src[v8];
    if (v5 + v8 <= v10 && v11 <= a1 + v10)
    {
      memmove(v11, __src, v5 - v4);
      result = 0;
      *(a1 + 24) = v9;
      return result;
    }

    v6 = __error();
    v7 = 28;
    goto LABEL_14;
  }

  return 0;
}

uint64_t ntfs_resident_attr_record_add(uint64_t a1, unsigned int a2, unsigned __int16 *a3, unsigned int a4, void *a5, unsigned int a6, __int16 a7)
{
  if (a1 && (a3 || !a4))
  {
    v14 = *(a1 + 16);
    if (!v14)
    {
      v15 = 22;
      goto LABEL_11;
    }

    v15 = 22;
    if (!a2 || !*(v14 + 248))
    {
      goto LABEL_11;
    }

    if (a2 == 160)
    {
      v15 = 1;
LABEL_11:
      *__error() = v15;
      __error();
      return 0xFFFFFFFFLL;
    }

    v18 = ntfs_malloc(0x40uLL);
    if (!v18)
    {
      return 0xFFFFFFFFLL;
    }

    v19 = v18;
    v20 = *(a1 + 8);
    v21 = v20 + *(v20 + 20);
    *v18 = v20;
    v18[1] = v21;
    *(v18 + 4) = 1;
    v18[3] = a1;
    *(v18 + 2) = 0u;
    *(v18 + 3) = 0u;
    if (!sub_100012334(a2, a3, a4, 0, a5, a6, v18))
    {
      v23 = 17;
      goto LABEL_21;
    }

    if (*__error() != 2)
    {
      v23 = 5;
      goto LABEL_21;
    }

    v22 = v19[1];
    v31 = *v19;
    v29 = ((2 * a4 + 7) & 0x3F8) + 24 + ((a6 + 7) & 0xFFFFFFF8);
    v30 = ((2 * a4 + 7) & 0x3F8) + 24;
    if (ntfs_make_room_for_attr(*v19, v22, v29))
    {
      v23 = *__error();
LABEL_21:
      free(v19);
      *__error() = v23;
      return 0xFFFFFFFFLL;
    }

    *v22 = a2;
    *(v22 + 4) = v29;
    *(v22 + 8) = 0;
    *(v22 + 9) = a4;
    if (a4)
    {
      v24 = 24;
    }

    else
    {
      v24 = 0;
    }

    *(v22 + 10) = v24;
    *(v22 + 12) = a7;
    *(v22 + 14) = *(v31 + 40);
    *(v22 + 16) = a6;
    *(v22 + 20) = v30;
    v25 = (v22 + v30);
    if (a5)
    {
      memcpy(v25, a5, a6);
    }

    else
    {
      bzero(v25, a6);
    }

    *(v22 + 22) = a2 == 48;
    if (a4)
    {
      memcpy((v22 + *(v22 + 10)), a3, 2 * a4);
    }

    ++*(v31 + 40);
    v26 = a1;
    if (*(a1 + 48) == -1)
    {
      v26 = *(a1 + 56);
    }

    if (a2 != 32 && (*(v26 + 24) & 2) != 0 && ntfs_attrlist_entry_add(a1, v22))
    {
      v23 = *__error();
      ntfs_attr_record_resize(v31, v22, 0);
      goto LABEL_21;
    }

    v16 = (v22 - v31);
    if ((*(*(a1 + 8) + 22) & 2) != 0)
    {
      v27 = (a6 + 7) & 0xFFFFFFF8;
      if (a2 == 144)
      {
        v28 = NTFS_INDEX_I30;
LABEL_41:
        if (a3 == v28)
        {
          *(a1 + 64) = a6;
          *(a1 + 72) = v27;
          *(a1 + 24) |= 0x40uLL;
        }
      }
    }

    else
    {
      v27 = (a6 + 7) & 0xFFFFFFF8;
      if (a2 == 128)
      {
        v28 = &AT_UNNAMED;
        goto LABEL_41;
      }
    }

    ntfs_inode_mark_dirty(a1);
    free(v19);
    return v16;
  }

  *__error() = 22;
  return 0xFFFFFFFFLL;
}

uint64_t ntfs_attr_record_resize(uint64_t a1, _DWORD *a2, int a3)
{
  v3 = a2[1];
  v4 = (a3 + 7) & 0xFFFFFFF8;
  if (v4 == v3)
  {
    return 0;
  }

  v7 = *(a1 + 24);
  v8 = *(a1 + 28);
  v9 = v7 - v3 + v4;
  if (v9 <= v8)
  {
    if (v4 <= v3 || *a2 != 144 || (v9 + 120 > v8 ? (v11 = v7 + 120 > v8) : (v11 = 1), v11))
    {
      memmove(a2 + v4, a2 + v3, a1 + v7 - (a2 + v3));
      *(a1 + 24) = v9;
      if (!v4)
      {
        return 0;
      }

      result = 0;
      a2[1] = v4;
    }

    else
    {
      *__error() = 28;
      return 4294967294;
    }
  }

  else
  {
    *__error() = 28;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t ntfs_non_resident_attr_record_add(uint64_t a1, unsigned int a2, unsigned __int16 *a3, unsigned int a4, uint64_t a5, int a6, __int16 a7)
{
  if (!a1 || a6 < 1 || !a3 && a4)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  if (sub_100013040(*(a1 + 16), a2, a3, a4))
  {
    if (*__error() == 1)
    {
      v16 = 3177;
    }

    else
    {
      v16 = 3179;
    }

    ntfs_log_redirect("ntfs_non_resident_attr_record_add", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", v16, 256);
    return 0xFFFFFFFFLL;
  }

  search_ctx = ntfs_attr_get_search_ctx(a1, 0);
  if (search_ctx)
  {
    v18 = search_ctx;
    if (!sub_100012334(a2, a3, a4, 0, 0, 0, search_ctx))
    {
      ntfs_log_redirect("ntfs_non_resident_attr_record_add", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 3195, 256);
      v21 = 17;
      goto LABEL_20;
    }

    if (*__error() != 2)
    {
      ntfs_log_redirect("ntfs_non_resident_attr_record_add", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 3199, 256);
      v21 = 5;
      goto LABEL_20;
    }

    v19 = v18[1];
    v20 = ((2 * a4 + 7) & 0x3F8) + ((a6 + 7) & 0x7FFFFFF8) + 8 * ((a7 & 0x8001) != 0) + 64;
    v23 = *v18;
    if (ntfs_make_room_for_attr(*v18, v19, v20))
    {
      v21 = *__error();
      ntfs_log_redirect("ntfs_non_resident_attr_record_add", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 3214, 256);
LABEL_20:
      free(v18);
      *__error() = v21;
      return 0xFFFFFFFFLL;
    }

    *v19 = a2;
    *(v19 + 4) = v20;
    *(v19 + 8) = 1;
    *(v19 + 9) = a4;
    *(v19 + 10) = (8 * ((a7 & 0x8001) != 0)) | 0x40;
    *(v19 + 12) = a7;
    *(v19 + 14) = *(v23 + 40);
    *(v19 + 16) = a5;
    *(v19 + 32) = ((2 * a4 + 7) & 0x3F8) + 8 * ((a7 & 0x8001) != 0) + 64;
    *(v19 + 34) = 4 * (a7 & 1);
    if (!a5)
    {
      *(v19 + 24) = -1;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 40) = 0;
      *(v19 + (((2 * a4 + 7) & 0x3F8) + 8 * ((a7 & 0x8001) != 0) + 64)) = 0;
    }

    if (a4)
    {
      memcpy((v19 + *(v19 + 10)), a3, 2 * a4);
    }

    ++*(v23 + 40);
    v22 = a1;
    if (*(a1 + 48) == -1)
    {
      v22 = *(a1 + 56);
    }

    if (a2 != 32 && (*(v22 + 24) & 2) != 0 && ntfs_attrlist_entry_add(a1, v19))
    {
      v21 = *__error();
      ntfs_log_redirect("ntfs_non_resident_attr_record_add", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 3253, 256);
      ntfs_attr_record_resize(v23, v19, 0);
      goto LABEL_20;
    }

    ntfs_inode_mark_dirty(a1);
    ntfs_attr_reinit_search_ctx(v18);
    if (!ntfs_attr_lookup(a2, a3, a4, 0, a5, 0, 0, v18))
    {
      v14 = (*(v18 + 2) - *v18);
      free(v18);
      return v14;
    }

    ntfs_log_redirect("ntfs_non_resident_attr_record_add", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 3267, 256);
    free(v18);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100013040(uint64_t a1, unsigned int a2, unsigned __int16 *a3, int a4)
{
  if (a2 == 256 && a3 && ntfs_names_are_equal(TXF_DATA, 9, a3, a4, 0, *(a1 + 224), *(a1 + 232)))
  {
LABEL_7:
    *__error() = 1;
    return 0xFFFFFFFFLL;
  }

  v6 = ntfs_attr_find_in_attrdef(a1, a2);
  if (v6)
  {
    if ((*(v6 + 140) & 0x40) == 0)
    {
      return 0;
    }

    goto LABEL_7;
  }

  return 0xFFFFFFFFLL;
}

uint64_t ntfs_attr_record_rm(uint64_t *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = 0;
      while (1)
      {
        if (!*a1)
        {
          goto LABEL_36;
        }

        v4 = a1[1];
        if (!v4)
        {
          goto LABEL_36;
        }

        v5 = *v4;
        if (a1[5])
        {
          v6 = a1[5];
        }

        else
        {
          v6 = v2;
        }

        if (ntfs_attr_record_resize(*a1, v4, 0))
        {
          v14 = 5;
          if ((*(v6 + 24) & 2) != 0 && v5 != 32)
          {
            ntfs_attrlist_entry_add(v2, a1[1]);
          }

          goto LABEL_37;
        }

        ntfs_inode_mark_dirty(v2);
        v7 = *(v6 + 24);
        if ((v7 & 2) == 0 || v5 == 32)
        {
          if (v5 == 32)
          {
            if ((v7 & 2) != 0)
            {
              v8 = *(v6 + 40);
              if (v8)
              {
                free(v8);
                v7 = *(v6 + 24);
              }
            }

            *(v6 + 40) = 0;
            *(v6 + 24) = v7 & 0xFFFFFFFFFFFFFFF9;
            if (*(*a1 + 24) - *(*a1 + 20) != 8)
            {
LABEL_42:
              v15 = 0;
              goto LABEL_39;
            }

            v9 = 1;
            goto LABEL_22;
          }
        }

        else if (ntfs_attrlist_entry_rm(a1))
        {
          goto LABEL_38;
        }

        if (*(*a1 + 24) - *(*a1 + 20) != 8)
        {
          goto LABEL_27;
        }

        v9 = 0;
LABEL_22:
        if (ntfs_mft_record_free(v2[2], v2))
        {
          v14 = 5;
          goto LABEL_37;
        }

        if (v2 == v6)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        if (v10)
        {
          goto LABEL_42;
        }

LABEL_27:
        if ((*(v6 + 24) & 2) == 0)
        {
          goto LABEL_42;
        }

        if (ntfs_attrlist_need(v6))
        {
          goto LABEL_42;
        }

        ntfs_attr_reinit_search_ctx(a1);
        if (ntfs_attr_lookup(0x20u, 0, 0, 0, 0, 0, 0, a1))
        {
          goto LABEL_42;
        }

        v11 = a1[1];
        if (*(v11 + 8))
        {
          v12 = ntfs_mapping_pairs_decompress(*(v6 + 16), v11, 0);
          if (!v12)
          {
            goto LABEL_42;
          }

          v13 = v12;
          ntfs_cluster_free_from_rl(*(v6 + 16), v12);
          free(v13);
        }

        v2 = a1[3];
        v3 = 1;
        if (!v2)
        {
          goto LABEL_36;
        }
      }
    }
  }

  v3 = 0;
LABEL_36:
  v14 = 22;
LABEL_37:
  *__error() = v14;
LABEL_38:
  v15 = -1;
LABEL_39:
  if (v3)
  {
    return 0;
  }

  else
  {
    return v15;
  }
}

uint64_t ntfs_attr_add(uint64_t a1, unsigned int a2, unsigned __int16 *a3, unsigned int a4, char *a5, unint64_t a6)
{
  v7 = a5;
  v12 = (2 * a4 + 7) & 0x3F8;
  v34 = v12 + ((a6 + 7) & 0xFFFFFFF8) + 24;
  v13 = v12 + 72;
  while (1)
  {
    if (a2 == 32 || (a6 & 0x8000000000000000) != 0 || !a1)
    {
      *__error() = 22;
      v32 = 3451;
      goto LABEL_66;
    }

    if (*(a1 + 48) == -1)
    {
      a1 = *(a1 + 56);
    }

    if (ntfs_attr_size_bounds_check(*(a1 + 16), a2, a6))
    {
      if (*__error() == 2)
      {
        *__error() = 5;
      }

      return 0xFFFFFFFFLL;
    }

    v14 = sub_100013040(*(a1 + 16), a2, a3, a4);
    if (v14)
    {
      if (*__error() != 1)
      {
        v24 = *__error();
        v25 = 3472;
        goto LABEL_64;
      }

      if (!v7)
      {
        *__error() = 22;
        v32 = 3479;
        goto LABEL_66;
      }

      v15 = *(a1 + 16);
      if (*(v15 + 44) < a6)
      {
        *__error() = 34;
        v32 = 3484;
LABEL_66:
        ntfs_log_redirect("ntfs_attr_add", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", v32, 256);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      v15 = *(a1 + 16);
      if (!v15)
      {
        v18 = 22;
        goto LABEL_25;
      }
    }

    v16 = *(v15 + 248);
    if (v16)
    {
      v17 = a2 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      v18 = 22;
    }

    else
    {
      v18 = 1;
    }

    if (v16 && a2 != 160 && a2)
    {
      v19 = 1;
      v20 = v34;
      goto LABEL_27;
    }

LABEL_25:
    *__error() = v18;
    if (*__error() != 1)
    {
      v24 = *__error();
      v25 = 3499;
      goto LABEL_64;
    }

    v19 = 0;
    v20 = v13;
LABEL_27:
    if (*(*(a1 + 8) + 28) - *(*(a1 + 8) + 24) >= v20)
    {
      v23 = a1;
      goto LABEL_45;
    }

    if (ntfs_inode_attach_all_extents(a1))
    {
      v24 = *__error();
      v25 = 3526;
      goto LABEL_64;
    }

    v21 = *(a1 + 48);
    if (v21 >= 1)
    {
      break;
    }

LABEL_33:
    if ((*(a1 + 24) & 2) != 0)
    {
      v23 = ntfs_mft_record_alloc(*(a1 + 16), a1);
      if (v23)
      {
        goto LABEL_45;
      }

      v24 = *__error();
      v25 = 3551;
      goto LABEL_64;
    }

    v7 = a5;
    if (ntfs_inode_add_attrlist(a1))
    {
      v24 = *__error();
      v25 = 3542;
      goto LABEL_64;
    }
  }

  v22 = *(a1 + 56);
  while (1)
  {
    v23 = *v22;
    if (*((*v22)[1] + 28) - *((*v22)[1] + 24) >= v20)
    {
      break;
    }

    ++v22;
    if (!--v21)
    {
      goto LABEL_33;
    }
  }

LABEL_45:
  if (!v19)
  {
LABEL_49:
    v27 = ntfs_non_resident_attr_record_add(v23, a2, a3, a4, 0, 8, 0);
    if ((v27 & 0x80000000) != 0)
    {
      v24 = *__error();
      v31 = 3586;
      goto LABEL_60;
    }

    if (!a6)
    {
      return 0;
    }

    v28 = v27;
    v29 = ntfs_attr_open(a1, a2, a3, a4);
    if (v29)
    {
      v30 = v29;
      if (!sub_1000110E0(v29, a6, 1) && (!a5 || ntfs_attr_pwrite(v30, 0, a6, a5) == a6))
      {
        ntfs_attr_close(v30);
        return 0;
      }

      v24 = *__error();
      ntfs_log_redirect("ntfs_attr_add", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 3605, 256);
      if (ntfs_attr_rm(v30))
      {
        ntfs_log_redirect("ntfs_attr_add", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 3607, 256);
      }

      ntfs_attr_close(v30);
      goto LABEL_65;
    }

    v24 = *__error();
    ntfs_log_redirect("ntfs_attr_add", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 3598, 256);
    if (ntfs_attr_record_resize(v23[1], (v23[1] + v28), 0))
    {
      v31 = 3618;
      goto LABEL_60;
    }

LABEL_61:
    if (*(v23[1] + 24) - *(v23[1] + 20) != 8 || !ntfs_mft_record_free(v23[2], v23))
    {
LABEL_65:
      *__error() = v24;
      return 0xFFFFFFFFLL;
    }

    v25 = 3624;
LABEL_64:
    ntfs_log_redirect("ntfs_attr_add", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", v25, 256);
    goto LABEL_65;
  }

  if ((ntfs_resident_attr_record_add(v23, a2, a3, a4, a5, a6, 0) & 0x80000000) != 0)
  {
    v26 = __error();
    if (!v14 && *v26 == 28)
    {
      goto LABEL_49;
    }

    v24 = *__error();
    v31 = 3574;
LABEL_60:
    ntfs_log_redirect("ntfs_attr_add", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", v31, 256);
    goto LABEL_61;
  }

  return 0;
}

uint64_t ntfs_attr_rm(uint64_t a1)
{
  if (!a1)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  if ((*(a1 + 40) & 2) == 0)
  {
    v2 = 0;
    goto LABEL_7;
  }

  if (ntfs_attr_map_whole_runlist(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = ntfs_cluster_free(*(*(a1 + 8) + 16), a1, 0, -1) >> 31;
LABEL_7:
  search_ctx = ntfs_attr_get_search_ctx(*(a1 + 8), 0);
  if (!search_ctx)
  {
    return 0xFFFFFFFFLL;
  }

  for (i = search_ctx; !ntfs_attr_lookup(*(a1 + 16), *(a1 + 24), *(a1 + 32), 0, 0, 0, 0, i); ntfs_attr_reinit_search_ctx(i))
  {
    if (ntfs_attr_record_rm(i))
    {
      v2 = -1;
    }
  }

  free(i);
  if (*__error() == 2)
  {
    return v2;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ntfs_resident_attr_value_resize(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = ntfs_attr_record_resize(a1, a2, (a3 + *(a2 + 20) + 7) & 0xFFFFFFF8);
  if ((result & 0x80000000) == 0)
  {
    v6 = *(a2 + 16);
    if (a3 > v6)
    {
      bzero((a2 + *(a2 + 20) + v6), a3 - v6);
    }

    result = 0;
    *(a2 + 16) = a3;
  }

  return result;
}

uint64_t ntfs_attr_record_move_to(uint64_t *a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_12;
  }

  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = a2;
  if (!a2)
  {
    goto LABEL_12;
  }

  v5 = a1[3];
  if (!v5)
  {
    goto LABEL_12;
  }

  if (v5 == a2)
  {
    return 0;
  }

  if (!a1[4])
  {
LABEL_12:
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  v6 = ntfs_malloc(0x40uLL);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  v8 = *(v4 + 8);
  v9 = (v8 + *(v8 + 20));
  *v6 = v8;
  v6[1] = v9;
  *(v6 + 4) = 1;
  v6[3] = v4;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  if (!sub_100012334(*v3, (v3 + *(v3 + 10)), *(v3 + 9), 0, 0, 0, v6))
  {
    v10 = 17;
    goto LABEL_15;
  }

  if (*__error() != 2 || ntfs_make_room_for_attr(*(v4 + 8), v7[1], *(v3 + 4)))
  {
    v10 = *__error();
LABEL_15:
    free(v7);
    *__error() = v10;
    return 0xFFFFFFFFLL;
  }

  memcpy(v7[1], v3, *(v3 + 4));
  v12 = *v7;
  v13 = *(*v7 + 20);
  *(v7[1] + 7) = v13;
  *(v12 + 20) = v13 + 1;
  ntfs_attr_record_resize(*a1, v3, 0);
  ntfs_inode_mark_dirty(a1[3]);
  ntfs_inode_mark_dirty(v4);
  v14 = a1[4];
  *(v14 + 16) = *v4 & 0xFFFFFFFFFFFFLL | (*(*(v4 + 8) + 16) << 48);
  *(v14 + 24) = *(v7[1] + 7);
  if (*(v4 + 48) == -1)
  {
    v4 = *(v4 + 56);
  }

  *(v4 + 24) |= 4uLL;
  free(v7);
  return 0;
}

uint64_t ntfs_attr_record_move_away(uint64_t *a1, int a2)
{
  if (!a1)
  {
    *__error() = 22;
    goto LABEL_11;
  }

  if (!a1[1] || a2 < 0 || (v4 = a1[3]) == 0)
  {
    *__error() = 22;
    v7 = a1[1];
LABEL_11:
    v6 = 3906;
    goto LABEL_12;
  }

  v5 = a1[3];
  if (*(v4 + 48) == -1)
  {
    v5 = a1[5];
  }

  if ((*(v5 + 24) & 2) == 0)
  {
    *__error() = 22;
    v13 = *v5;
    v6 = 3922;
LABEL_12:
    ntfs_log_redirect("ntfs_attr_record_move_away", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", v6, 256);
    return 0xFFFFFFFFLL;
  }

  if (ntfs_inode_attach_all_extents(v4))
  {
    v14 = *v5;
    v6 = 3928;
    goto LABEL_12;
  }

  v9 = *(v5 + 48);
  if (v9 >= 1)
  {
    for (i = 0; i < v9; ++i)
    {
      v11 = *(*(v5 + 56) + 8 * i);
      if (*a1[3] != *v11 && *(v11[1] + 28) - *(v11[1] + 24) >= (*(a1[1] + 4) + a2))
      {
        result = ntfs_attr_record_move_to(a1, v11);
        if (!result)
        {
          return result;
        }

        v9 = *(v5 + 48);
      }
    }
  }

  v12 = ntfs_mft_record_alloc(*(v5 + 16), v5);
  if (!v12)
  {
    v6 = 3960;
    goto LABEL_12;
  }

  result = ntfs_attr_record_move_to(a1, v12);
  if (result)
  {
    v6 = 3964;
    goto LABEL_12;
  }

  return result;
}

uint64_t ntfs_attr_make_non_resident(uint64_t a1, uint64_t *a2)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  v4 = *(*(a1 + 8) + 16);
  v5 = a2[1];
  if (sub_100013040(v4, *(a1 + 16), *(a1 + 24), *(a1 + 32)))
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(v4 + 40);
  v7 = *(v5 + 16) + v6 - 1;
  v8 = -v6;
  v9 = v7 & v8;
  if ((v7 & v8) != 0)
  {
    v10 = *(v4 + 52);
    if (*(v5 + 12) == 1)
    {
      v9 = (((16 << v10) - 1) | (v9 - 1)) + 1;
    }

    v12 = ntfs_cluster_alloc(v4, 0, v9 >> v10, -1, 1u);
    if (!v12)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v9 = 0;
    v12 = 0;
  }

  v13 = *(a1 + 40) | 6;
  *a1 = v12;
  *(a1 + 40) = v13;
  *(a1 + 48) = v9;
  v14 = *(v5 + 16);
  *(a1 + 56) = v14;
  *(a1 + 64) = v14;
  if (*(a1 + 16) == 128 && *(a1 + 24) == &AT_UNNAMED)
  {
    *(*(a1 + 8) + 32) &= 0xFFFFBDFF;
  }

  if (*(v5 + 12) == 1)
  {
    *(a1 + 80) = 16 << *(v4 + 52);
    *(a1 + 85) = 16;
  }

  if (v12)
  {
    v15 = ntfs_attr_pwrite(a1, 0, *(v5 + 16), v5 + *(v5 + 20));
    if (v15 != *(v5 + 16))
    {
      v22 = v15;
      v23 = *__error();
      if (v22 < 0)
      {
        v21 = v23;
      }

      else
      {
        v21 = 5;
      }

LABEL_31:
      ntfs_cluster_free(v4, a1, 0, -1);
LABEL_32:
      v24 = *(a1 + 56);
      *(a1 + 40) &= 0xFFFFFFFFFFFFFFF5;
      *(a1 + 48) = v24;
      *a1 = 0;
      free(v12);
      *__error() = v21;
      return 0xFFFFFFFFLL;
    }
  }

  size_for_mapping_pairs = ntfs_get_size_for_mapping_pairs(v4, v12, 0, 0x7FFFFFFF);
  if (size_for_mapping_pairs < 0 || ((*(*(a1 + 8) + 32) & 0x800) != 0 ? (v17 = 72) : (v17 = 64), v18 = (v17 + 2 * *(v5 + 9) + 6) & 0x3F8, v19 = (size_for_mapping_pairs + v18 + 7) & 0x7FFFFFF8, (ntfs_attr_record_resize(*a2, v5, v19) & 0x80000000) != 0))
  {
    v21 = *__error();
    if (!v12)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  *(v5 + 8) = 1;
  if (*(v5 + 9))
  {
    memmove((v5 + v17), (v5 + *(v5 + 10)), 2 * *(v5 + 9));
  }

  *(v5 + 10) = v17;
  *(v5 + 16) = 0;
  *(v5 + 24) = (v9 - 1) >> *(v4 + 52);
  *(v5 + 32) = v18;
  v20 = *(v5 + 12);
  *(v5 + 12) = v20 & 0x3FFF;
  if (v20 == 1)
  {
    *(v5 + 34) = 4;
    *(v5 + 64) = 0;
  }

  else
  {
    *(v5 + 34) = 0;
    v25 = v20 & 0x3F00;
    *(v5 + 12) = v25;
    *(a1 + 20) = v25;
  }

  *(v5 + 39) = 0;
  *(v5 + 35) = 0;
  *(v5 + 40) = v9;
  v26 = *(a1 + 56);
  *(v5 + 48) = v26;
  *(v5 + 56) = v26;
  return (ntfs_mapping_pairs_build(v4, (v5 + v18), v19 - v18, v12, 0, 0) >> 31);
}

uint64_t sub_100014038(void **a1, uint64_t a2, int a3)
{
  v75 = 0;
  if (!a1)
  {
    goto LABEL_101;
  }

  v5 = a1 + 6;
  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_101;
  }

  v6 = a3;
  v8 = 0;
  v72 = (a1 + 9);
  while (1)
  {
    v9 = a1[5];
    if ((v9 & 2) == 0)
    {
      *__error() = 22;
      v71 = 4777;
      goto LABEL_102;
    }

    if (v6 != 2)
    {
      if (!a2 && (v9 & 8) != 0)
      {
        goto LABEL_17;
      }

      if (*(a1 + 10))
      {
        goto LABEL_18;
      }

      if ((*(a1 + 10) & 0x8000) != 0)
      {
        if ((((a1[7] - 1) | (*(a1[1][2] + 40) - 1)) + 1) != a1[9])
        {
          goto LABEL_18;
        }

LABEL_16:
        if (!ntfs_attr_map_whole_runlist(a1))
        {
LABEL_17:
          a2 = 0;
          goto LABEL_18;
        }

        v70 = 4826;
LABEL_165:
        ntfs_log_redirect("ntfs_attr_update_mapping_pairs_i", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", v70, 128);
        *__error() = 5;
        return 0xFFFFFFFFLL;
      }

      v10 = 24;
      if (*(v4 + 1) != -2)
      {
        v10 = 0;
      }

      v11 = ntfs_rl_sparse(&v4[v10]);
      if (v11 < 0)
      {
        v70 = 4808;
        goto LABEL_165;
      }

      if (v11)
      {
        goto LABEL_16;
      }
    }

LABEL_18:
    v12 = a1[1];
    if (*(v12 + 48) == -1)
    {
      v12 = *(v12 + 56);
    }

    search_ctx = ntfs_attr_get_search_ctx(v12, 0);
    if (!search_ctx)
    {
      return 0xFFFFFFFFLL;
    }

    v14 = search_ctx;
    v75 = *a1;
    if (ntfs_attr_lookup(*(a1 + 4), a1[3], *(a1 + 8), 0, a2, 0, 0, search_ctx))
    {
      break;
    }

    v74 = v12;
    v15 = 0;
    v16 = 0;
    v17 = a2 == 0;
    while (1)
    {
      v19 = *v14;
      v18 = v14[1];
      v20 = *(v18 + 16);
      if (!v20)
      {
        v8 = 1;
      }

      if (!v17)
      {
        v21 = ntfs_rl_vcn_to_lcn(*a1, *(v18 + 16));
        if (v21 == -4)
        {
          *__error() = 5;
          v60 = "ntfs_attr_update_mapping_pairs_i";
          v61 = 4872;
          goto LABEL_140;
        }

        v16 = v20;
        if ((v21 + 3) < 2)
        {
          goto LABEL_30;
        }
      }

      if (!v15)
      {
        break;
      }

      v20 = v16;
LABEL_30:
      *(v18 + 24) = -2;
      ntfs_inode_mark_dirty(v14[3]);
      v15 = 1;
      v16 = v20;
LABEL_89:
      v45 = ntfs_attr_lookup(*(a1 + 4), a1[3], *(a1 + 8), 0, 0, 0, 0, v14);
      v17 = 1;
      if (v45)
      {
        v46 = !v15;
        v12 = v74;
        goto LABEL_103;
      }
    }

    if (*(v18 + 16))
    {
      goto LABEL_70;
    }

    *(v18 + 40) = *v5;
    if (a3 == 2)
    {
      if ((*(v18 + 12) & 0x80000000) == 0)
      {
        v22 = *(v18 + 12);
        goto LABEL_40;
      }

LABEL_38:
      v25 = 1;
LABEL_58:
      if ((a1[5] & 8) != 0)
      {
        if (v25)
        {
          v25 = 1;
          goto LABEL_62;
        }

LABEL_61:
        v25 = 0;
        if (*(a1 + 20))
        {
LABEL_62:
          compressed_size = ntfs_rl_get_compressed_size(a1[1][2], *a1);
          if (compressed_size == -1)
          {
            goto LABEL_142;
          }

          *v72 = compressed_size;
          *(v18 + 64) = compressed_size;
        }
      }

LABEL_64:
      if (*(a1 + 4) == 128 && a1[3] == &AT_UNNAMED)
      {
        if ((v25 & 1) != 0 || (v36 = (a1 + 6), *(a1 + 20)))
        {
          v36 = v72;
        }

        v37 = a1[1];
        v37[9] = *v36;
        v37[3] |= 8uLL;
      }

LABEL_70:
      v38 = *(v18 + 4) - *(v18 + 32);
      v39 = *(v19 + 28) - *(v19 + 24) + v38;
      size_for_mapping_pairs = ntfs_get_size_for_mapping_pairs(a1[1][2], v75, v16, v39);
      if (size_for_mapping_pairs <= 0)
      {
        v60 = "ntfs_attr_update_mapping_pairs_i";
        v61 = 4918;
        goto LABEL_140;
      }

      v41 = size_for_mapping_pairs;
      if (size_for_mapping_pairs > v39)
      {
        if (*(a1 + 4) == 32)
        {
          free(v14);
          if (!ntfs_inode_free_space(a1[1], v41 - v38))
          {
            goto LABEL_94;
          }

          v71 = 4934;
        }

        else
        {
          v41 = v39;
          if ((*(v74 + 24) & 2) != 0)
          {
            goto LABEL_74;
          }

          free(v14);
          if (!ntfs_inode_add_attrlist(v74))
          {
            goto LABEL_94;
          }

          v71 = 4944;
        }

LABEL_102:
        ntfs_log_redirect("ntfs_attr_update_mapping_pairs_i", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", v71, 256);
        return 0xFFFFFFFFLL;
      }

LABEL_74:
      if (((v41 + 7) & 0xFFFFFFF8) != v38 && ntfs_attr_record_resize(v19, v18, v41 + *(v18 + 32)))
      {
        *__error() = 5;
        v60 = "ntfs_attr_update_mapping_pairs_i";
        v61 = 4964;
        goto LABEL_140;
      }

      *(v18 + 16) = v16;
      ntfs_inode_mark_dirty(v14[3]);
      v42 = v14[3];
      if (*(v42 + 48) == -1)
      {
        if (*v14[1] != 32)
        {
          *(v14[4] + 8) = v16;
          v42 = *(v42 + 56);
          v43 = *(v42 + 24);
LABEL_82:
          *(v42 + 24) = v43 | 4;
        }
      }

      else
      {
        v43 = *(v42 + 24);
        if ((v43 & 2) != 0 && *v14[1] != 32)
        {
          *(v14[4] + 8) = v16;
          goto LABEL_82;
        }
      }

      v44 = ntfs_mapping_pairs_build(a1[1][2], (v18 + *(v18 + 32)), v41, *a1, v16, &v75);
      v15 = v44 == 0;
      if (v75)
      {
        v16 = *v75;
        if (!v44)
        {
          goto LABEL_88;
        }
      }

      else
      {
        v16 = 0;
        if (!v44)
        {
LABEL_88:
          *(v18 + 24) = v16 - 1;
          goto LABEL_89;
        }
      }

      if (*__error() != 28)
      {
        v60 = "ntfs_attr_update_mapping_pairs_i";
        v61 = 4992;
        goto LABEL_140;
      }

      goto LABEL_88;
    }

    v23 = ntfs_rl_sparse(*a1);
    if (!v23)
    {
      v22 = *(v18 + 12);
LABEL_40:
      if ((v22 & 0xFFFF8001) != 0x8000)
      {
        if ((a1[5] & 8) != 0)
        {
          goto LABEL_61;
        }

        v25 = 0;
        goto LABEL_64;
      }

      if (*(a1 + 4) == 128 && a1[3] == &AT_UNNAMED)
      {
        *(a1[1] + 8) &= ~0x200u;
      }

      v26 = v22 & 0x7FFE;
      *(v18 + 12) = v26;
      *(a1 + 10) = v26;
      *(v18 + 34) = 0;
      memmove((v18 + *(v18 + 10) - 8), (v18 + *(v18 + 10)), 2 * *(v18 + 9));
      v27 = *(v18 + 10);
      v28 = v27 >= 8;
      v29 = v27 - 8;
      if (v28)
      {
        *(v18 + 10) = v29;
      }

      v25 = 0;
      v30 = (v18 + 32);
      v31 = -8;
LABEL_57:
      *v30 += v31;
      goto LABEL_58;
    }

    if (v23 == -1)
    {
      *__error() = 5;
      goto LABEL_142;
    }

    v24 = *(v18 + 12);
    if ((v24 & 0xFFFF8001) != 0)
    {
      goto LABEL_38;
    }

    v30 = (v18 + 32);
    v32 = *(v18 + 32);
    v33 = *(v18 + 4);
    if (v33 - v32 != 8 || *(v19 + 28) != *(v19 + 24))
    {
      if (v33 == v32)
      {
        *__error() = 5;
        v60 = "ntfs_attr_update_meta";
        v61 = 4678;
        goto LABEL_140;
      }

      if (*(a1 + 4) == 128 && a1[3] == &AT_UNNAMED)
      {
        *(a1[1] + 8) |= 0x200u;
      }

      v34 = v24 | 0x8000;
      *(v18 + 12) = v34;
      *(a1 + 10) = v34;
      *(v18 + 34) = 4;
      memmove((v18 + *(v18 + 10) + 8), (v18 + *(v18 + 10)), 2 * *(v18 + 9));
      *(v18 + 10) += 8;
      v25 = 1;
      v31 = 8;
      goto LABEL_57;
    }

    if ((a1[1][3] & 2) != 0)
    {
      if (ntfs_attr_record_move_away(v14, 8))
      {
        v60 = "ntfs_attr_update_meta";
        v61 = 4669;
        goto LABEL_140;
      }

      free(v14);
    }

    else
    {
      free(v14);
      if (ntfs_inode_add_attrlist(a1[1]))
      {
        return 0xFFFFFFFFLL;
      }
    }

LABEL_94:
    a2 = 0;
    v4 = *a1;
    v6 = a3;
    if (!*a1)
    {
LABEL_101:
      *__error() = 22;
      v71 = 4768;
      goto LABEL_102;
    }
  }

  v16 = 0;
  v46 = 1;
LABEL_103:
  if (*__error() != 2)
  {
    v60 = "ntfs_attr_update_mapping_pairs_i";
    v61 = 4999;
    goto LABEL_140;
  }

  if (!v8)
  {
    ntfs_attr_reinit_search_ctx(v14);
    if (ntfs_attr_lookup(*(a1 + 4), a1[3], *(a1 + 8), 0, 0, 0, 0, v14))
    {
      v60 = "ntfs_attr_update_mapping_pairs_i";
      v61 = 5026;
      v62 = 128;
      goto LABEL_141;
    }

    v63 = v14[1];
    *(v63 + 40) = a1[6];
    v64 = *(a1 + 10) & 0x8001;
    if (v64)
    {
      *(v63 + 64) = *v72;
    }

    if (*(a1 + 4) == 128 && a1[3] == &AT_UNNAMED)
    {
      v65 = v64 == 0;
      v66 = 9;
      if (v65)
      {
        v66 = 6;
      }

      v67 = a1[1];
      v67[9] = a1[v66];
      v67[3] |= 8uLL;
    }
  }

  if (!v46)
  {
LABEL_125:
    ntfs_attr_reinit_search_ctx(v14);
    while (!ntfs_attr_lookup(*(a1 + 4), a1[3], *(a1 + 8), 0, 0, 0, 0, v14))
    {
      if (*(v14[1] + 24) == -2)
      {
        if (ntfs_attr_record_rm(v14))
        {
          v60 = "ntfs_attr_update_mapping_pairs_i";
          v61 = 5042;
          goto LABEL_140;
        }

        goto LABEL_125;
      }
    }

    if (*__error() == 2)
    {
      free(v14);
      return 0;
    }

    v60 = "ntfs_attr_update_mapping_pairs_i";
    v61 = 5048;
LABEL_140:
    v62 = 256;
LABEL_141:
    ntfs_log_redirect(v60, "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", v61, v62);
LABEL_142:
    free(v14);
    return 0xFFFFFFFFLL;
  }

  free(v14);
  while (2)
  {
    v47 = ntfs_get_size_for_mapping_pairs(a1[1][2], *a1, v16, 0x7FFFFFFF);
    if (v47 <= 0)
    {
      v71 = 5064;
      goto LABEL_102;
    }

    v48 = v47;
    v49 = ntfs_mft_record_alloc(a1[1][2], v12);
    if (!v49)
    {
      v71 = 5070;
      goto LABEL_102;
    }

    v50 = v49;
    v51 = *(a1 + 4);
    if (*(a1 + 10) || v51 == 128 && a1[3] == &AT_UNNAMED && (a1[1][4] & 0x200) != 0)
    {
      v52 = -72;
    }

    else
    {
      v52 = -64;
    }

    v53 = *(v49 + 8);
    v54 = *(v53 + 28) + v52 - (*(v53 + 24) + ((2 * *(a1 + 8) + 7) & 0xFFFFFFF8));
    if (v48 >= v54)
    {
      v48 = v54;
    }

    v55 = ntfs_non_resident_attr_record_add(v49, v51, a1[3], *(a1 + 8), v16, v48, *(a1 + 10));
    if (v55 == -1)
    {
      v68 = *__error();
      ntfs_log_redirect("ntfs_attr_update_mapping_pairs_i", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 5093, 256);
      if (!ntfs_mft_record_free(a1[1][2], v50))
      {
        goto LABEL_161;
      }

      v69 = 5095;
      goto LABEL_160;
    }

    v56 = v53 + v55;
    v57 = ntfs_mapping_pairs_build(a1[1][2], (v56 + *(v56 + 32)), v48, *a1, v16, &v75);
    v58 = v57;
    if (!v75)
    {
      v16 = 0;
      if (v57 < 0)
      {
        goto LABEL_122;
      }

      goto LABEL_123;
    }

    v16 = *v75;
    if ((v57 & 0x80000000) == 0)
    {
      goto LABEL_123;
    }

LABEL_122:
    if (*__error() == 28)
    {
LABEL_123:
      *(v56 + 24) = v16 - 1;
      ntfs_inode_mark_dirty(v50);
      result = 0;
      if (!v58)
      {
        return result;
      }

      continue;
    }

    break;
  }

  v68 = *__error();
  ntfs_log_redirect("ntfs_attr_update_mapping_pairs_i", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 5110, 256);
  if (!ntfs_mft_record_free(a1[1][2], v50))
  {
    goto LABEL_161;
  }

  v69 = 5112;
LABEL_160:
  ntfs_log_redirect("ntfs_attr_update_mapping_pairs_i", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", v69, 256);
LABEL_161:
  *__error() = v68;
  return 0xFFFFFFFFLL;
}

uint64_t ntfs_attr_truncate(uint64_t a1, uint64_t a2)
{
  result = sub_1000110E0(a1, a2, 1);
  *(a1 + 40) &= 0xFFFFFFFFFFFFFFEBLL;
  return result;
}

char *ntfs_attr_readall(uint64_t *a1, unsigned int a2, unsigned __int16 *a3, unsigned int a4, size_t *a5)
{
  v6 = ntfs_attr_open(a1, a2, a3, a4);
  if (v6)
  {
    v7 = v6;
    v8 = ntfs_malloc(v6[7]);
    if (v8)
    {
      v9 = ntfs_attr_pread(v7, 0, *(v7 + 56), v8);
      if (v9 == *(v7 + 56))
      {
        if (a5)
        {
          *a5 = v9;
        }
      }

      else
      {
        ntfs_log_redirect("ntfs_attr_readall", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 5721, 256);
        free(v8);
        v8 = 0;
      }
    }

    ntfs_attr_close(v7);
  }

  else
  {
    ntfs_log_redirect("ntfs_attr_readall", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 5712, 256);
    return 0;
  }

  return v8;
}

void *ntfs_attr_exist(uint64_t a1, unsigned int a2, unsigned __int16 *a3, unsigned int a4)
{
  result = ntfs_attr_get_search_ctx(a1, 0);
  if (result)
  {
    v8 = result;
    v9 = ntfs_attr_lookup(a2, a3, a4, 0, 0, 0, 0, result);
    free(v8);
    return (v9 == 0);
  }

  return result;
}

uint64_t sub_100014DE8(void **a1, int64_t a2, int a3)
{
  v6 = a1[1][2];
  if ((ntfs_attr_size_bounds_check(v6, *(a1 + 4), a2) & 0x80000000) != 0)
  {
    if (*__error() == 2)
    {
      *__error() = 5;
    }

    v15 = 5357;
    goto LABEL_13;
  }

  if (*(a1 + 4) == 128)
  {
    a1[5] = (a1[5] | 0x10);
  }

  v8 = (a1 + 6);
  v7 = a1[6];
  v9 = *(v6 + 52);
  v10 = (a2 + *(v6 + 40) - 1) >> v9;
  v11 = v7 >> v9;
  if (v7 >> v9 >= v10)
  {
    goto LABEL_32;
  }

  v12 = v11 != 0;
  v13 = v11 - 1;
  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (sub_100011874(a1, v14))
  {
    v15 = 5384;
LABEL_13:
    ntfs_log_redirect("ntfs_non_resident_attr_expand_i", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", v15, 256);
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 4) == 128 && *(v6 + 32) >= 3u)
  {
    v16 = ntfs_malloc(0x1000uLL);
    if (!v16)
    {
      return 0xFFFFFFFFLL;
    }

    v17 = v16;
    v18 = *v8 >> *(v6 + 52);
    *v16 = v18;
    *(v16 + 1) = -1;
    *(v16 + 2) = v10 - v18;
    *(v16 + 3) = v10;
    *(v16 + 2) = xmmword_100019850;
    goto LABEL_29;
  }

  v19 = *a1;
  if ((*a1)[2])
  {
    v20 = 0;
    do
    {
      v21 = *&v19[v20 + 40];
      v20 += 24;
    }

    while (v21);
    v22 = *&v19[v20 - 16];
    v23 = &v19[v20 - 24];
    if ((v22 & 0x8000000000000000) == 0)
    {
LABEL_26:
      v25 = *(v23 + 16) + v22;
      goto LABEL_28;
    }

    v24 = 24 - v20;
    while (v24)
    {
      v22 = *(v23 - 16);
      v23 -= 24;
      v24 += 24;
      if ((v22 & 0x8000000000000000) == 0)
      {
        v23 = &v19[-v24];
        goto LABEL_26;
      }
    }
  }

  v25 = -1;
LABEL_28:
  v17 = ntfs_cluster_alloc(v6, *v8 >> *(v6 + 52), v10 - (*v8 >> *(v6 + 52)), v25, 1u);
  if (!v17)
  {
    v38 = v10 - (*v8 >> *(v6 + 52));
    v15 = 5448;
    goto LABEL_13;
  }

LABEL_29:
  v26 = ntfs_runlists_merge(*a1, v17);
  if (!v26)
  {
    v37 = *__error();
    ntfs_log_redirect("ntfs_non_resident_attr_expand_i", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 5458, 256);
    ntfs_cluster_free_from_rl(v6, v17);
    free(v17);
    *__error() = v37;
    return 0xFFFFFFFFLL;
  }

  *a1 = v26;
  a1[6] = (v10 << *(v6 + 52));
  if (sub_100014038(a1, v14, a3))
  {
    v27 = *__error();
    ntfs_log_redirect("ntfs_non_resident_attr_expand_i", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 5475, 256);
LABEL_39:
    if ((ntfs_cluster_free(v6, a1, v7 >> *(v6 + 52), -1) & 0x80000000) != 0)
    {
      ntfs_log_redirect("ntfs_non_resident_attr_expand_i", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 5529, 256);
      v27 = 5;
    }

    if (ntfs_rl_truncate(a1, v7 >> *(v6 + 52)))
    {
      free(*a1);
      *a1 = 0;
      v31 = 5540;
LABEL_49:
      ntfs_log_redirect("ntfs_non_resident_attr_expand_i", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", v31, 256);
      goto LABEL_50;
    }

    a1[6] = v7;
    if (sub_100014038(a1, 0, 1))
    {
      v31 = 5547;
      goto LABEL_49;
    }

LABEL_50:
    *__error() = v27;
    return 0xFFFFFFFFLL;
  }

LABEL_32:
  search_ctx = ntfs_attr_get_search_ctx(a1[1], 0);
  if (!search_ctx)
  {
    v27 = *__error();
    if (*v8 == v7)
    {
      goto LABEL_50;
    }

    goto LABEL_39;
  }

  v29 = search_ctx;
  if (ntfs_attr_lookup(*(a1 + 4), a1[3], *(a1 + 8), 0, 0, 0, 0, search_ctx))
  {
    v27 = *__error();
    ntfs_log_redirect("ntfs_non_resident_attr_expand_i", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 5493, 256);
    if (v27 == 2)
    {
      v27 = 5;
    }

    v30 = *v8;
    free(v29);
    if (v30 == v7)
    {
      goto LABEL_50;
    }

    goto LABEL_39;
  }

  a1[7] = a2;
  *(v29[1] + 48) = a2;
  v32 = a1[1];
  v33 = *(a1 + 4);
  if ((*(v32[1] + 22) & 2) != 0)
  {
    if (v33 != 144 || a1[3] != NTFS_INDEX_I30)
    {
      goto LABEL_56;
    }

    v32[8] = a1[7];
    v34 = 64;
    v35 = 9;
  }

  else
  {
    if (v33 != 128 || a1[3] != &AT_UNNAMED)
    {
      goto LABEL_56;
    }

    v34 = 8;
    v35 = 8;
    v8 = (a1 + 7);
  }

  v32[v35] = *v8;
  v32[3] |= v34;
LABEL_56:
  ntfs_inode_mark_dirty(v29[3]);
  free(v29);
  return 0;
}

uint64_t sub_1000152FC(uint64_t a1, int64_t a2)
{
  v4 = *(*(a1 + 8) + 16);
  if ((ntfs_attr_size_bounds_check(v4, *(a1 + 16), a2) & 0x80000000) != 0)
  {
    if (*__error() != 34 && *__error() == 2)
    {
      *__error() = 5;
    }

    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 20))
  {
    v5 = ((a2 - 1) | (*(a1 + 80) - 1)) + 1;
  }

  else
  {
    v5 = a2 + *(v4 + 40) - 1;
  }

  v6 = *(v4 + 52);
  v7 = v5 >> v6;
  v8 = (a1 + 48);
  if (*(a1 + 48) >> v6 != v5 >> v6)
  {
    if (ntfs_attr_map_whole_runlist(a1) || (ntfs_cluster_free(v4, a1, v7, -1) & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }

    if (ntfs_rl_truncate(a1, v7))
    {
      free(*a1);
      *a1 = 0;
      return 0xFFFFFFFFLL;
    }

    *(a1 + 48) = v7 << *(v4 + 52);
    if (sub_100014038(a1, 0, 1))
    {
      return 0xFFFFFFFFLL;
    }
  }

  search_ctx = ntfs_attr_get_search_ctx(*(a1 + 8), 0);
  if (!search_ctx)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = search_ctx;
  if (ntfs_attr_lookup(*(a1 + 16), *(a1 + 24), *(a1 + 32), 0, 0, 0, 0, search_ctx))
  {
    v11 = *__error();
    if (v11 == 2)
    {
      v12 = 5;
    }

    else
    {
      v12 = v11;
    }

    free(v10);
    *__error() = v12;
    return 0xFFFFFFFFLL;
  }

  *(a1 + 56) = a2;
  v14 = (a1 + 56);
  *(v10[1] + 48) = a2;
  if (*(a1 + 64) > a2)
  {
    *(a1 + 64) = a2;
    *(v10[1] + 56) = a2;
  }

  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  if ((*(v15[1] + 22) & 2) != 0)
  {
    if (v16 != 144)
    {
      goto LABEL_33;
    }

    if (*(a1 + 24) != NTFS_INDEX_I30)
    {
      v16 = 144;
      goto LABEL_33;
    }

    v15[8] = *v14;
    v16 = 144;
    v17 = 64;
    v18 = 9;
    goto LABEL_32;
  }

  if (v16 == 128 && *(a1 + 24) == &AT_UNNAMED)
  {
    v17 = 8;
    v18 = 8;
    v8 = (a1 + 56);
LABEL_32:
    v15[v18] = *v8;
    v15[3] |= v17;
  }

LABEL_33:
  if (!a2)
  {
    v19 = v10[1];
    if (!*(v19 + 16) && (*(a1 + 40) & 2) != 0)
    {
      v20 = v15[2];
      if (v16 == 176 && !*v15)
      {
        goto LABEL_42;
      }

      if (v20)
      {
        v21 = 22;
        if (!v16 || !v20[31])
        {
          goto LABEL_44;
        }

        if (v16 != 160)
        {
          if ((*(a1 + 20) & 0x4000) != 0)
          {
            v21 = 102;
          }

          else
          {
            v22 = (2 * *(v19 + 9) + 31) & 0x3F8;
            if ((((*v14 + v22 + 7) & 0xFFFFFFFFFFFFFFF8) + (*(*v10 + 24) - *(v19 + 4))) <= *(*v10 + 28))
            {
              v31 = (a1 + 56);
              v32 = (*v14 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
              if (ntfs_attr_map_whole_runlist(a1))
              {
LABEL_45:
                if (*__error() != 1)
                {
                  ntfs_log_redirect("ntfs_non_resident_attr_shrink", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 5304, 128);
                }

                goto LABEL_47;
              }

              if (*(v19 + 9))
              {
                memmove((v19 + 24), (v19 + *(v19 + 10)), 2 * *(v19 + 9));
              }

              *(v19 + 10) = 24;
              if ((ntfs_attr_record_resize(*v10, v19, v32) & 0x80000000) != 0)
              {
                ntfs_log_redirect("ntfs_attr_make_resident", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 4535, 128);
              }

              else
              {
                *(v19 + 8) = 0;
                *(v19 + 12) = 0;
                *(v19 + 16) = *v31;
                *(v19 + 20) = v22;
                if (!*v31 && *(a1 + 16) == 128)
                {
                  v23 = *(a1 + 8);
                  v24 = *(v23 + 16);
                  if (*(v24 + 32) >= 3u && (*(v24 + 16) & 0x40) != 0 && *(v24 + 40) <= 0x1000u && (*(v23 + 33) & 8) != 0)
                  {
                    *(v19 + 12) = 1;
                    *(a1 + 20) = 1;
                  }
                }

                *(v19 + 22) = *v19 == 48;
                *(v19 + 23) = 0;
                v26 = *(a1 + 56);
                v25 = *(a1 + 64);
                if (v25 > v26)
                {
                  *(a1 + 64) = v26;
                  v25 = v26;
                }

                v27 = (v19 + v22);
                v28 = ntfs_rl_pread(v20, *a1, 0, v25, v27);
                if (v28 == *(a1 + 64))
                {
                  if (*v31 > v28)
                  {
                    bzero(&v27[v28], *v31 - v28);
                  }

                  if ((ntfs_cluster_free(v20, a1, 0, -1) & 0x80000000) != 0)
                  {
                    ntfs_log_redirect("ntfs_attr_make_resident", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/attrib.c", 4599, 256);
                  }

                  free(*a1);
                  *a1 = 0;
                  *(a1 + 40) &= 0xFFFFFFFFFFFFFFF5;
                  if (*(a1 + 16) == 128 && *(a1 + 24) == &AT_UNNAMED)
                  {
                    *(*(a1 + 8) + 32) &= 0xFFFFBDFF;
                  }

                  v29 = *(a1 + 56);
                  v30 = (v29 + 7) & 0xFFFFFFFFFFFFFFF8;
                  *(a1 + 64) = v29;
                  *(a1 + 72) = v30;
                  *(a1 + 48) = v30;
                  *(a1 + 80) = 0;
                  *(a1 + 84) = 0;
                  goto LABEL_47;
                }

                if (v28 < 0)
                {
                  v21 = *__error();
                  goto LABEL_44;
                }
              }

              v21 = 5;
            }

            else
            {
              v21 = 28;
            }
          }

LABEL_44:
          *__error() = v21;
          goto LABEL_45;
        }

LABEL_42:
        v21 = 1;
        goto LABEL_44;
      }
    }

    v21 = 22;
    goto LABEL_44;
  }

LABEL_47:
  ntfs_inode_mark_dirty(v10[3]);
  free(v10);
  return 0;
}

uint64_t init_system_file_sd(uint64_t result, void *a2, _DWORD *a3)
{
  if ((result & 0x80000000) != 0)
  {
    *a2 = 0;
    *a3 = 0;
  }

  else
  {
    *a2 = &dword_1000241A8;
    dword_1000241A8 = -2147221503;
    *a3 = 100;
    unk_1000241AC = xmmword_100019870;
    unk_1000241BC = 0x200340002;
    if (result == 7 || result == 4)
    {
      v4 = 1179785;
    }

    else
    {
      v4 = 1180063;
    }

    dword_1000241C4 = 1310720;
    unk_1000241C8 = v4;
    word_1000241CC = 257;
    unk_1000241CE = 0;
    word_1000241D2 = 1280;
    dword_1000241D4 = 18;
    word_1000241D8 = 0;
    word_1000241DA = 24;
    dword_1000241DC = v4;
    word_1000241E0 = 513;
    unk_1000241E2 = 0;
    word_1000241E6 = 1280;
    qword_1000241E8 = 0x22000000020;
    word_1000241F0 = 257;
    byte_1000241F6 = 0;
    unk_1000241F2 = 0;
    byte_1000241F7 = 5;
    dword_1000241F8 = 18;
    word_1000241FC = 513;
    unk_1000241FE = 0;
    word_100024202 = 1280;
    *algn_100024204 = 0x22000000020;
  }

  return result;
}

double init_root_sd(void *a1, _DWORD *a2)
{
  *a2 = 4140;
  *a1 = &dword_100024210;
  dword_100024210 = -2147221503;
  *&dword_100024214 = xmmword_100019880;
  unk_100024224 = 0x810000002;
  dword_10002422C = 1572864;
  unk_100024230 = 2032127;
  word_100024234 = 513;
  unk_100024236 = 0;
  word_10002423A = 1280;
  unk_10002423C = 0x22000000020;
  word_100024244 = 2816;
  word_100024246 = 24;
  dword_100024248 = 0x10000000;
  word_10002424C = 513;
  unk_10002424E = 0;
  word_100024252 = 1280;
  unk_100024254 = 0x22000000020;
  unk_10002425C = 0x1F01FF00140000;
  word_100024264 = 257;
  word_10002426A = 1280;
  unk_100024266 = 0;
  unk_10002426C = 0x140B0000000012;
  dword_100024274 = 0x10000000;
  word_100024278 = 257;
  unk_10002427A = 0;
  word_10002427E = 1280;
  qword_100024280 = 0x14000000000012;
  dword_100024288 = 1245631;
  word_10002428C = 257;
  unk_10002428E = 0;
  word_100024292 = 1280;
  unk_100024294 = 0x140B000000000BLL;
  dword_10002429C = -536805376;
  word_1000242A0 = 257;
  word_1000242A6 = 1280;
  unk_1000242A2 = 0;
  qword_1000242A8 = 0x1800000000000BLL;
  dword_1000242B0 = 1179817;
  word_1000242B4 = 513;
  unk_1000242B6 = 0;
  word_1000242BA = 1280;
  *&result = 0x22100000020;
  unk_1000242BC = 0x22100000020;
  unk_1000242C4 = 0xA000000000180B00;
  word_1000242CC = 513;
  unk_1000242CE = 0;
  word_1000242D2 = 1280;
  unk_1000242D4 = 0x22100000020;
  unk_100025224 = 257;
  unk_100025226 = 0;
  unk_10002522A = 1280;
  unk_10002522C = 18;
  unk_100025230 = 257;
  unk_100025236 = 1280;
  unk_100025232 = 0;
  unk_100025238 = 18;
  return result;
}

double init_secure_sds(uint64_t a1)
{
  *a1 = 0x100F80312F0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x800400010000007CLL;
  *&result = 0x5800000048;
  *(a1 + 24) = xmmword_100019890;
  *(a1 + 40) = 0x200340002;
  *(a1 + 48) = 0x12008900140000;
  *(a1 + 56) = 257;
  *(a1 + 58) = 0;
  *(a1 + 62) = 1280;
  *(a1 + 64) = 0x18000000000012;
  *(a1 + 72) = 1179785;
  *(a1 + 76) = 513;
  *(a1 + 78) = 0;
  *(a1 + 82) = 1280;
  *(a1 + 84) = 0x22000000020;
  *(a1 + 92) = 513;
  *(a1 + 94) = 0;
  *(a1 + 98) = 0;
  *(a1 + 99) = 5;
  *(a1 + 100) = 0x22000000020;
  *(a1 + 108) = 513;
  *(a1 + 110) = 0;
  *(a1 + 114) = 1280;
  *(a1 + 116) = 0x22000000020;
  *(a1 + 128) = 0x10100B32451;
  *(a1 + 136) = 128;
  *(a1 + 144) = 0x800400010000007CLL;
  *(a1 + 152) = xmmword_100019890;
  *(a1 + 168) = 0x200340002;
  *(a1 + 176) = 1310720;
  *(a1 + 180) = 1180063;
  *(a1 + 184) = 257;
  *(a1 + 186) = 0;
  *(a1 + 190) = 1280;
  *(a1 + 192) = 0x18000000000012;
  *(a1 + 200) = 1180063;
  *(a1 + 204) = 513;
  *(a1 + 206) = 0;
  *(a1 + 210) = 1280;
  *(a1 + 212) = 0x22000000020;
  *(a1 + 220) = 513;
  *(a1 + 222) = 0;
  *(a1 + 226) = 1280;
  *(a1 + 228) = 0x22000000020;
  *(a1 + 236) = 513;
  *(a1 + 238) = 0;
  *(a1 + 242) = 1280;
  *(a1 + 244) = 0x22000000020;
  return result;
}

uint64_t ntfs_inode_base(uint64_t result)
{
  if (*(result + 48) == -1)
  {
    return *(result + 56);
  }

  return result;
}

uint64_t ntfs_inode_mark_dirty(uint64_t result)
{
  *(result + 24) |= 1uLL;
  if (*(result + 48) == -1)
  {
    *(*(result + 56) + 24) |= 1uLL;
  }

  return result;
}

void *ntfs_inode_allocate(uint64_t a1)
{
  result = ntfs_calloc(0x88uLL);
  if (result)
  {
    result[2] = a1;
  }

  return result;
}

uint64_t ntfs_inode_real_close(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if ((*(result + 24) & 5) != 0 && ntfs_inode_sync_0(result))
  {
    goto LABEL_4;
  }

  v2 = *(v1 + 48);
  if (v2 >= 1)
  {
    while (!ntfs_inode_real_close(**(v1 + 56)))
    {
      if (*(v1 + 48) < 1)
      {
        goto LABEL_18;
      }
    }

LABEL_4:
    if (*__error() != 5)
    {
      *__error() = 16;
    }

    return 0xFFFFFFFFLL;
  }

  if (v2 == -1)
  {
    v3 = *(v1 + 56);
    v4 = *(v3 + 48);
    if (v4 < 1)
    {
LABEL_16:
      v10 = *v1;
      ntfs_log_redirect("ntfs_inode_real_close", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/inode.c", 375, 128);
    }

    else
    {
      v5 = 0;
      v6 = *(v3 + 56);
      v7 = 1;
      while (v6[v5] != v1)
      {
        ++v5;
        ++v7;
        if (v4 == v5)
        {
          goto LABEL_16;
        }
      }

      memmove(&v6[v5], &v6[v7], 8 * (v4 - v7));
      v8 = *(v3 + 48) - 1;
      *(v3 + 48) = v8;
      if ((v8 & 3) == 0)
      {
        if (v8)
        {
          v9 = malloc_type_realloc(v6, 8 * v8, 0x2004093837F09uLL);
          if (v9)
          {
            *(v3 + 56) = v9;
          }
        }

        else
        {
          free(v6);
          *(v3 + 56) = 0;
        }
      }
    }
  }

LABEL_18:
  sub_100015E10(v1);
  return 0;
}

void sub_100015E10(uint64_t *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v4 = *a1;
    ntfs_log_redirect("__ntfs_inode_release", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/inode.c", 115, 128);
    v2 = a1[3];
  }

  if ((v2 & 2) != 0)
  {
    v3 = a1[5];
    if (v3)
    {
      free(v3);
    }
  }

  free(a1[1]);

  free(a1);
}

uint64_t ntfs_inode_open(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    v4 = ntfs_calloc(0x88uLL);
    v5 = v4;
    if (v4)
    {
      *(v4 + 2) = a1;
      if (ntfs_file_record_read(a1, a2, v4 + 1, 0))
      {
LABEL_32:
        sub_100015E10(v5);
        return 0;
      }

      if ((*(*(v5 + 8) + 22) & 1) == 0)
      {
        *__error() = 2;
        goto LABEL_32;
      }

      *v5 = a2 & 0xFFFFFFFFFFFFLL;
      search_ctx = ntfs_attr_get_search_ctx(v5, 0);
      if (!search_ctx)
      {
        goto LABEL_32;
      }

      v7 = search_ctx;
      if (ntfs_attr_lookup(0x10u, &AT_UNNAMED, 0, 0, 0, 0, 0, search_ctx))
      {
        if (*(*(v5 + 8) + 32))
        {
LABEL_31:
          ntfs_attr_put_search_ctx(v7);
          goto LABEL_32;
        }

        v8 = 178;
LABEL_11:
        ntfs_log_redirect("ntfs_inode_real_open", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/inode.c", v8, 256);
        goto LABEL_31;
      }

      v9 = v7[1];
      v10 = v9 + *(v9 + 20);
      *(v5 + 32) = *(v10 + 32);
      *(v5 + 80) = *v10;
      *(v5 + 96) = *(v10 + 16);
      v11 = *(v9 + 4);
      v12 = *(v5 + 24);
      if (v11 < 0x49)
      {
        *(v5 + 24) = v12 & 0xFFFFFFFFFFFFFFEFLL;
        *(v5 + 112) = 0;
      }

      else
      {
        *(v5 + 24) = v12 | 0x10;
        *(v5 + 112) = *(v10 + 48);
        *(v5 + 116) = *(v10 + 52);
        *(v5 + 120) = *(v10 + 56);
        *(v5 + 128) = *(v10 + 64);
      }

      v13 = *__error();
      if (ntfs_attr_lookup(0x20u, &AT_UNNAMED, 0, 0, 0, 0, 0, v7))
      {
        if (*__error() != 2)
        {
          goto LABEL_31;
        }

        *__error() = v13;
      }

      else
      {
        *(v5 + 24) |= 2uLL;
        attribute_value_length = ntfs_get_attribute_value_length(v7[1]);
        if (!attribute_value_length)
        {
          goto LABEL_31;
        }

        if (attribute_value_length > 0x40000)
        {
          *__error() = 5;
          v8 = 220;
          goto LABEL_11;
        }

        *(v5 + 36) = attribute_value_length;
        v18 = ntfs_malloc(attribute_value_length);
        *(v5 + 40) = v18;
        if (!v18)
        {
          goto LABEL_31;
        }

        attribute_value = ntfs_get_attribute_value(a1, v7[1], v18);
        if (!attribute_value)
        {
          goto LABEL_31;
        }

        if (attribute_value != *(v5 + 36))
        {
          *__error() = 5;
          v22 = *(v5 + 36);
          v8 = 234;
          goto LABEL_11;
        }
      }

      v14 = *__error();
      if (ntfs_attr_lookup(0x80u, &AT_UNNAMED, 0, 0, 0, 0, 0, v7))
      {
        if (*__error() != 2)
        {
          goto LABEL_31;
        }

        *__error() = v14;
        *(v5 + 64) = 0;
        *(v5 + 72) = 0;
      }

      else
      {
        v16 = v7[1];
        if (*(v16 + 8))
        {
          *(v5 + 64) = *(v16 + 48);
          if ((*(v16 + 12) & 0x8001) != 0)
          {
            v17 = *(v16 + 64);
          }

          else
          {
            v17 = *(v16 + 40);
          }

          *(v5 + 72) = v17;
        }

        else
        {
          v21 = *(v16 + 16);
          *(v5 + 64) = v21;
          *(v5 + 72) = (v21 + 7) & 0x1FFFFFFF8;
        }

        *(v5 + 24) |= 0x40uLL;
      }

      ntfs_attr_put_search_ctx(v7);
    }
  }

  else
  {
    v5 = 0;
    *__error() = 22;
  }

  return v5;
}

uint64_t *ntfs_extent_inode_open(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    *__error() = 22;
    ntfs_log_redirect("ntfs_extent_inode_open", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/inode.c", 456, 256);
    return 0;
  }

  v4 = a2 & 0xFFFFFFFFFFFFLL;
  if (!*a1)
  {
    v10 = *(a1 + 16);
    v11 = **(v10 + 152);
    if (!v11)
    {
      goto LABEL_23;
    }

    v12 = v11[2];
    if (v12)
    {
      v13 = (v4 << *(v10 + 53)) >> *(v10 + 52);
      while (*v11 + v12 <= v13)
      {
        v14 = v11 + 3;
        v12 = v11[5];
        v11 += 3;
        if (!v12)
        {
          goto LABEL_22;
        }
      }
    }

    v14 = v11;
LABEL_22:
    if ((v14[1] & 0x8000000000000000) != 0)
    {
LABEL_23:
      ntfs_log_redirect("ntfs_extent_inode_open", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/inode.c", 486, 128);
      ntfs_log_redirect("ntfs_extent_inode_open", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/inode.c", 488, 128);
      v7 = 0;
      *__error() = 5;
      return v7;
    }
  }

  v5 = *(a1 + 48);
  if (v5 < 1)
  {
LABEL_7:
    v8 = *(a1 + 16);
    v9 = ntfs_calloc(0x88uLL);
    v7 = v9;
    if (!v9)
    {
      return v7;
    }

    *(v9 + 2) = v8;
    if (ntfs_file_record_read(*(a1 + 16), a2, v9 + 1, 0))
    {
      goto LABEL_9;
    }

    *v7 = v4;
    *(v7 + 12) = -1;
    v7[7] = a1;
    v15 = *(a1 + 48);
    if ((v15 & 3) != 0)
    {
      v16 = *(a1 + 56);
    }

    else
    {
      v17 = 8 * v15 + 32;
      v18 = ntfs_malloc(v17);
      if (!v18)
      {
LABEL_9:
        sub_100015E10(v7);
        return 0;
      }

      v16 = v18;
      v15 = *(a1 + 48);
      if (v15)
      {
        memcpy(v18, *(a1 + 56), v17 - 32);
        free(*(a1 + 56));
        v15 = *(a1 + 48);
      }

      *(a1 + 56) = v16;
    }

    *(a1 + 48) = v15 + 1;
    v16[v15] = v7;
    return v7;
  }

  v6 = *(a1 + 56);
  while (1)
  {
    v7 = *v6;
    if (v4 == **v6)
    {
      break;
    }

    ++v6;
    if (!--v5)
    {
      goto LABEL_7;
    }
  }

  if (HIWORD(a2) && *(v7[1] + 16) != HIWORD(a2))
  {
    *__error() = 5;
    v20 = *v7;
    ntfs_log_redirect("ntfs_extent_inode_open", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/inode.c", 511, 256);
  }

  return v7;
}

uint64_t ntfs_inode_attach_all_extents(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    if (*(a1 + 48) == -1)
    {
      v1 = *(a1 + 56);
    }

    if ((*(v1 + 24) & 2) == 0)
    {
      return 0;
    }

    v2 = *(v1 + 40);
    v3 = __error();
    if (v2)
    {
      *v3 = 0;
      v4 = *(v1 + 36);
      if (v4)
      {
        v5 = 0;
        v6 = *(v1 + 40);
        v7 = v6;
        do
        {
          v8 = *(v7 + 16);
          if (*v1 != (v8 & 0xFFFFFFFFFFFFLL) && v5 != (v8 & 0xFFFFFFFFFFFFLL))
          {
            if (!ntfs_extent_inode_open(v1, v8))
            {
              return 0xFFFFFFFFLL;
            }

            v5 = *(v7 + 16) & 0xFFFFFFFFFFFFLL;
            v6 = *(v1 + 40);
            v4 = *(v1 + 36);
          }

          v7 += *(v7 + 4);
        }

        while (v7 < v6 + v4);
      }

      return 0;
    }
  }

  else
  {
    v3 = __error();
  }

  *v3 = 22;
  return 0xFFFFFFFFLL;
}

uint64_t ntfs_inode_sync_0(uint64_t a1)
{
  if (!a1)
  {
    *__error() = 22;
    ntfs_log_redirect("ntfs_inode_sync_in_dir", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/inode.c", 823, 128);
    return 0xFFFFFFFFLL;
  }

  if ((*(*(a1 + 8) + 22) & 1) == 0 || *(a1 + 48) == -1)
  {
    goto LABEL_21;
  }

  search_ctx = ntfs_attr_get_search_ctx(a1, 0);
  if (!search_ctx)
  {
    goto LABEL_7;
  }

  v3 = search_ctx;
  if (!ntfs_attr_lookup(0x10u, &AT_UNNAMED, 0, 0, 0, 0, 0, search_ctx))
  {
    v5 = v3[1];
    v6 = v5 + *(v5 + 20);
    *(v6 + 32) = *(a1 + 32);
    v7 = *(a1 + 24);
    if ((v7 & 0x20) == 0)
    {
      *v6 = *(a1 + 80);
      *(v6 + 16) = *(a1 + 96);
    }

    v8 = *(v5 + 4);
    if ((v7 & 0x10) != 0 && v8 <= 0x48)
    {
      ntfs_log_redirect("ntfs_inode_sync_standard_information", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/inode.c", 640, 128);
    }

    else if (v8 >= 0x49)
    {
      *(v6 + 48) = *(a1 + 112);
      *(v6 + 52) = *(a1 + 116);
      *(v6 + 56) = *(a1 + 120);
      *(v6 + 64) = *(a1 + 128);
    }

    v9 = v3[3];
    *(v9 + 24) |= 1uLL;
    if (*(v9 + 48) == -1)
    {
      *(*(v9 + 56) + 24) |= 1uLL;
    }

    ntfs_attr_put_search_ctx(v3);
LABEL_21:
    v4 = 0;
    goto LABEL_22;
  }

  v38 = *a1;
  ntfs_log_redirect("ntfs_inode_sync_standard_information", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/inode.c", 620, 256);
  ntfs_attr_put_search_ctx(v3);
LABEL_7:
  if (*__error() == 5)
  {
    v4 = 5;
  }

  else
  {
    v4 = 16;
  }

LABEL_22:
  if ((*(*(a1 + 8) + 22) & 1) != 0 && *(a1 + 48) != -1)
  {
    v10 = *(a1 + 24);
    *(a1 + 24) = v10 & 0xFFFFFFFFFFFFFFF7;
    if ((v10 & 8) != 0)
    {
      v11 = ntfs_attr_get_search_ctx(a1, 0);
      if (v11)
      {
        v12 = v11;
        if ((*(a1 + 33) & 4) != 0)
        {
          v50 = 0;
          if (!ntfs_attr_lookup(0xC0u, 0, 0, 0, 0, 0, 0, v11))
          {
            v50 = *(v12[1] + *(v12[1] + 20));
          }

          ntfs_attr_reinit_search_ctx(v12);
        }

        else
        {
          v50 = 0;
        }

        v13 = 0;
        if (!ntfs_attr_lookup(0x30u, 0, 0, 0, 0, 0, 0, v12))
        {
          v13 = 0;
          do
          {
            v18 = (v12[1] + *(v12[1] + 20));
            v19 = a1;
            if ((*v18 & 0xFFFFFFFFFFFFLL) == *a1 || (v19 = ntfs_inode_open(*(a1 + 16), *v18)) != 0)
            {
              v20 = ntfs_index_ctx_get(v19, NTFS_INDEX_I30, 4);
              if (v20)
              {
                v21 = v20;
                if (ntfs_index_lookup(v18, 66, v20))
                {
                  if (!v13)
                  {
                    if (*__error() == 2)
                    {
                      v13 = 5;
                    }

                    else
                    {
                      v13 = *__error();
                    }
                  }

                  v42 = *v19;
                  ntfs_log_redirect("ntfs_inode_sync_file_name", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/inode.c", 735, 256);
                }

                else
                {
                  v22 = *(v21 + 32);
                  *(v22 + 56) = *(a1 + 32) & 0x7FB7 | *(v22 + 56) & 0xFFFF8048;
                  if ((*(*(a1 + 8) + 22) & 2) != 0)
                  {
                    v23 = 0;
                    v24 = 0;
                    v25 = v22;
                  }

                  else
                  {
                    v24 = *(a1 + 64);
                    v23 = *(a1 + 72);
                    *(v22 + 40) = v23;
                    v25 = v18;
                  }

                  v25[5] = v23;
                  *(v22 + 48) = v24;
                  *(v22 + 60) = v50;
                  v27 = (a1 + 88);
                  v26 = (a1 + 80);
                  v29 = (a1 + 104);
                  v28 = (a1 + 96);
                  if ((*(a1 + 24) & 0x20) != 0)
                  {
                    v26 = v18 + 1;
                    v27 = (v18 + 2);
                    v28 = (v18 + 3);
                    v29 = (v18 + 4);
                  }

                  v30 = *v29;
                  v31 = *v28;
                  v32 = *v27;
                  *(v22 + 8) = *v26;
                  *(v22 + 16) = v32;
                  *(v22 + 24) = v31;
                  *(v22 + 32) = v30;
                  ntfs_index_entry_mark_dirty(v21);
                }

                ntfs_index_ctx_put(v21);
              }

              else
              {
                if (!v13)
                {
                  v13 = *__error();
                }

                v43 = *v19;
                ntfs_log_redirect("ntfs_inode_sync_file_name", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/inode.c", 721, 256);
              }

              if (v19 != a1 && ntfs_inode_real_close(v19) && !v13)
              {
                v13 = *__error();
              }
            }

            else
            {
              if (!v13)
              {
                v13 = *__error();
              }

              v44 = *v18;
              ntfs_log_redirect("ntfs_inode_sync_file_name", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/inode.c", 713, 256);
            }
          }

          while (!ntfs_attr_lookup(0x30u, 0, 0, 0, 0, 0, 0, v12));
        }

        if (*__error() == 2)
        {
          ntfs_attr_put_search_ctx(v12);
          if (!v13)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v13 = *__error();
          v39 = *a1;
          ntfs_log_redirect("ntfs_inode_sync_file_name", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/inode.c", 782, 256);
          ntfs_attr_put_search_ctx(v12);
        }
      }

      else
      {
        v13 = *__error();
      }

      *__error() = v13;
      if (!v4 || *__error() == 5)
      {
        if (*__error() == 5)
        {
          v4 = 5;
        }

        else
        {
          v4 = 16;
        }
      }

      v40 = *a1;
      ntfs_log_redirect("ntfs_inode_sync_in_dir", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/inode.c", 849, 256);
      *(a1 + 24) |= 8uLL;
    }
  }

LABEL_43:
  if ((*(*(a1 + 8) + 22) & 1) != 0 && *(a1 + 48) != -1)
  {
    v14 = *(a1 + 24);
    if ((v14 & 2) != 0)
    {
      *(a1 + 24) = v14 & 0xFFFFFFFFFFFFFFFBLL;
      if ((v14 & 4) != 0)
      {
        v15 = ntfs_attr_open(a1, 0x20u, &AT_UNNAMED, 0);
        if (v15)
        {
          v16 = v15;
          v17 = v15[7];
          if (v17 == *(a1 + 36))
          {
            if (ntfs_attr_pwrite(v15, 0, v17, *(a1 + 40)) == *(a1 + 36))
            {
LABEL_94:
              ntfs_attr_close(v16);
              goto LABEL_95;
            }

            if (!v4 || *__error() == 5)
            {
              if (*__error() == 5)
              {
                v4 = 5;
              }

              else
              {
                v4 = 16;
              }

              v41 = *a1;
              ntfs_log_redirect("ntfs_inode_sync_in_dir", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/inode.c", 881, 256);
            }
          }

          else
          {
            v46 = *a1;
            ntfs_log_redirect("ntfs_inode_sync_in_dir", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/inode.c", 888, 128);
            v4 = 5;
          }

          *(a1 + 24) |= 4uLL;
          goto LABEL_94;
        }

        if (!v4 || *__error() == 5)
        {
          if (*__error() == 5)
          {
            v4 = 5;
          }

          else
          {
            v4 = 16;
          }

          v45 = *a1;
          ntfs_log_redirect("ntfs_inode_sync_in_dir", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/inode.c", 866, 256);
        }

        *(a1 + 24) |= 4uLL;
      }
    }
  }

LABEL_95:
  v33 = *(a1 + 24);
  *(a1 + 24) = v33 & 0xFFFFFFFFFFFFFFFELL;
  if ((v33 & 1) != 0 && ntfs_mft_records_write(*(a1 + 16), *a1, 1, *(a1 + 8)))
  {
    if (!v4 || *__error() == 5)
    {
      if (*__error() == 5)
      {
        v4 = 5;
      }

      else
      {
        v4 = 16;
      }
    }

    *(a1 + 24) |= 1uLL;
    v47 = *a1;
    ntfs_log_redirect("ntfs_inode_sync_in_dir", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/inode.c", 905, 256);
  }

  if (*(a1 + 48) >= 1)
  {
    v34 = 0;
    do
    {
      v35 = *(*(a1 + 56) + 8 * v34);
      v36 = *(v35 + 24);
      *(v35 + 24) = v36 & 0xFFFFFFFFFFFFFFFELL;
      if ((v36 & 1) != 0 && ntfs_mft_records_write(*(v35 + 16), *v35, 1, *(v35 + 8)))
      {
        if (!v4 || *__error() == 5)
        {
          if (*__error() == 5)
          {
            v4 = 5;
          }

          else
          {
            v4 = 16;
          }
        }

        *(v35 + 24) |= 1uLL;
        v48 = *a1;
        v49 = *v35;
        ntfs_log_redirect("ntfs_inode_sync_in_dir", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/inode.c", 931, 256);
      }

      ++v34;
    }

    while (v34 < *(a1 + 48));
  }

  if (v4)
  {
    *__error() = v4;
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t ntfs_inode_add_attrlist(uint64_t a1)
{
  if (!a1)
  {
    *__error() = 22;
    v2 = 972;
    goto LABEL_6;
  }

  if ((*(a1 + 24) & 2) != 0 || *(a1 + 48))
  {
    *__error() = 17;
    v2 = 980;
LABEL_6:
    ntfs_log_redirect("ntfs_inode_add_attrlist", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/inode.c", v2, 256);
    return 0xFFFFFFFFLL;
  }

  search_ctx = ntfs_attr_get_search_ctx(a1, 0);
  if (!search_ctx)
  {
    v6 = 0;
    v8 = *__error();
LABEL_53:
    free(v6);
    *__error() = v8;
    return 0xFFFFFFFFLL;
  }

  v5 = search_ctx;
  if (!ntfs_attr_lookup(0, 0, 0, 0, 0, 0, 0, search_ctx))
  {
    v10 = 0;
    LODWORD(v7) = 0;
    v11 = 0;
    while (1)
    {
      v12 = v5[1];
      if (*v12 == 32)
      {
        ntfs_log_redirect("ntfs_inode_add_attrlist", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/inode.c", 997, 256);
        v8 = 5;
        goto LABEL_31;
      }

      v13 = (2 * *(v12 + 9) + 33) & 0x3F8;
      v7 = (v13 + v7);
      v14 = malloc_type_realloc(v11, v7, 0x8F61C71EuLL);
      if (!v14)
      {
        break;
      }

      v6 = v14;
      v15 = &v14[v10 - v11];
      bzero(v15, v13);
      v16 = v5[1];
      *v15 = *v16;
      v17 = *(v16 + 9);
      *(v15 + 2) = (2 * v17 + 33) & 0x3F8;
      v15[6] = v17;
      v15[7] = 26;
      if (*(v16 + 8))
      {
        v18 = *(v16 + 16);
      }

      else
      {
        v18 = 0;
      }

      v19 = *a1 & 0xFFFFFFFFFFFFLL | (*(*(a1 + 8) + 16) << 48);
      *(v15 + 1) = v18;
      *(v15 + 2) = v19;
      *(v15 + 12) = *(v16 + 14);
      memcpy(v15 + 26, (v16 + *(v16 + 10)), 2 * v17);
      v10 = &v6[v7];
      v11 = v6;
      if (ntfs_attr_lookup(0, 0, 0, 0, 0, 0, 0, v5))
      {
        goto LABEL_11;
      }
    }

    v8 = *__error();
    ntfs_log_redirect("ntfs_inode_add_attrlist", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/inode.c", 1008, 256);
LABEL_31:
    v6 = v11;
    goto LABEL_52;
  }

  v6 = 0;
  LODWORD(v7) = 0;
LABEL_11:
  if (*__error() != 2)
  {
    v8 = *__error();
    v25 = *a1;
    ntfs_log_redirect("ntfs_inode_add_attrlist", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/inode.c", 1038, 256);
LABEL_52:
    ntfs_attr_put_search_ctx(v5);
    goto LABEL_53;
  }

  *(a1 + 40) = v6;
  *(a1 + 36) = v7;
  *(a1 + 24) |= 6uLL;
  if ((*(*(a1 + 8) + 28) - *(*(a1 + 8) + 24)) <= 0x17 && ntfs_inode_free_space(a1, 24))
  {
    v8 = *__error();
    v9 = 1056;
LABEL_33:
    ntfs_log_redirect("ntfs_inode_add_attrlist", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/inode.c", v9, 256);
LABEL_41:
    ntfs_attr_reinit_search_ctx(v5);
    if (v7)
    {
      v23 = v6;
      while ((*(v23 + 2) & 0xFFFFFFFFFFFFLL) == *a1)
      {
LABEL_50:
        v23 += *(v23 + 2);
        if (v23 >= &v6[v7])
        {
          goto LABEL_51;
        }
      }

      if (ntfs_attr_lookup(*v23, v23 + 13, v23[6], 0, *(v23 + 1), 0, 0, v5))
      {
        v24 = 1121;
      }

      else
      {
        if (!ntfs_attr_record_move_to(v5, a1))
        {
LABEL_49:
          ntfs_attr_reinit_search_ctx(v5);
          goto LABEL_50;
        }

        v24 = 1119;
      }

      ntfs_log_redirect("ntfs_inode_add_attrlist", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/inode.c", v24, 256);
      goto LABEL_49;
    }

LABEL_51:
    *(a1 + 40) = 0;
    *(a1 + 36) = 0;
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF9;
    goto LABEL_52;
  }

  if ((ntfs_resident_attr_record_add(a1, 0x20u, 0, 0, 0, 0, 0) & 0x80000000) != 0)
  {
    v8 = *__error();
    v9 = 1065;
    goto LABEL_33;
  }

  v20 = ntfs_attr_open(a1, 0x20u, &AT_UNNAMED, 0);
  if (!v20)
  {
    v8 = *__error();
    ntfs_log_redirect("ntfs_inode_add_attrlist", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/inode.c", 1073, 256);
LABEL_35:
    *(a1 + 40) = 0;
    *(a1 + 24) &= ~2uLL;
    ntfs_attr_reinit_search_ctx(v5);
    if (ntfs_attr_lookup(0x20u, 0, 0, 0, 0, 0, 0, v5))
    {
      v22 = 1098;
    }

    else
    {
      if (!ntfs_attr_record_rm(v5))
      {
LABEL_40:
        *(a1 + 40) = v6;
        *(a1 + 36) = v7;
        *(a1 + 24) |= 2uLL;
        goto LABEL_41;
      }

      v22 = 1096;
    }

    ntfs_log_redirect("ntfs_inode_add_attrlist", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/inode.c", v22, 256);
    goto LABEL_40;
  }

  v21 = v20;
  if (ntfs_attr_truncate(v20, v7))
  {
    v8 = *__error();
    ntfs_log_redirect("ntfs_inode_add_attrlist", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/inode.c", 1078, 256);
    ntfs_attr_close(v21);
    goto LABEL_35;
  }

  ntfs_attr_put_search_ctx(v5);
  ntfs_attr_close(v21);
  return 0;
}

uint64_t ntfs_inode_free_space(void *a1, int a2)
{
  if (!a1 || a2 < 0)
  {
    *__error() = 22;
    ntfs_log_redirect("ntfs_inode_free_space", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/inode.c", 1153, 256);
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1[1] + 28) - *(a1[1] + 24);
  if (v4 < a2)
  {
    search_ctx = ntfs_attr_get_search_ctx(a1, 0);
    if (search_ctx)
    {
      v6 = search_ctx;
      while (2)
      {
        for (i = 48; ; i = 0)
        {
          if (ntfs_attr_position(i, v6))
          {
            goto LABEL_22;
          }

          v8 = v6[3];
          v9 = *v8;
          if (*v8 == *a1)
          {
            if (*(v8 + 12) == -1)
            {
              v9 = *v8[7];
            }

            v10 = v6[1];
            v11 = *v10 == 128 && v9 == 0;
            if (!v11 && *v10 != 144)
            {
              break;
            }
          }
        }

        v12 = v10[1];
        if (ntfs_attr_record_move_away(v6, 0))
        {
          ntfs_log_redirect("ntfs_inode_free_space", "/Library/Caches/com.apple.xbs/Sources/ntfs/newfs/inode.c", 1198, 256);
LABEL_22:
          ntfs_attr_put_search_ctx(v6);
          __error();
          return 0xFFFFFFFFLL;
        }

        v4 += v12;
        if (v4 < a2)
        {
          ntfs_attr_reinit_search_ctx(v6);
          continue;
        }

        break;
      }

      ntfs_attr_put_search_ctx(v6);
      return 0;
    }

    return 0xFFFFFFFFLL;
  }

  return 0;
}