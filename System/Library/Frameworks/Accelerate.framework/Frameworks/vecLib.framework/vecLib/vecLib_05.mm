void sub_2366F6C28(uint64_t a1, int a2, int a3, unsigned int a4, void *a5, void *a6, signed int a7, uint64_t a8, int *a9, int *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = sub_236701978;
  v15 = sub_2367019C8;
  if (a4 <= 2)
  {
    if (a4)
    {
      v14 = sub_2367FF780;
      v15 = sub_2368005E4;
    }

    goto LABEL_6;
  }

  if (a4 == 3)
  {
    v14 = sub_23673BA0C;
    v15 = sub_23674038C;
LABEL_6:
    v16 = v15;
    v17 = 0;
    v18 = 0;
    v19 = a5[10];
    v20 = a4 - 3 < 2;
    v21 = a1;
    goto LABEL_8;
  }

  v19 = a5[10];
  v21 = a1;
  v18 = atomic_load((a6[6] + 4 * a1));
  v16 = sub_23674038C;
  v14 = sub_23673BA0C;
  v20 = 1;
  v17 = 1;
LABEL_8:
  v22 = a5[15];
  v23 = a1;
  v24 = a1 + 1;
  v25 = a5[11];
  v26 = *(v25 + 4 * v24);
  v27 = v18 + *(v22 + 8 * v24) - *(v22 + 8 * v21);
  v28 = v26 - *(v25 + 4 * v21) + v18;
  v29 = v28;
  if (v17)
  {
    v29 = *(a6[7] + 4 * v21);
  }

  v30 = v28 * v27;
  if (!v20)
  {
    v30 = 0;
  }

  if (v29)
  {
    v31 = *(a6[5] + 8 * v21) + 8;
    v32 = v27;
    v33 = v31 + 8 * v30;
    v34 = v28 + a3;
    v35 = v27 - (v28 + a3);
    if (v35 >= a7)
    {
      v36 = a7;
    }

    else
    {
      v36 = v35;
    }

    v37 = v27 - v28;
    if ((v27 - v28) >= a7)
    {
      v38 = a7;
    }

    else
    {
      v38 = v27 - v28;
    }

    v39 = v38;
    v40 = *(v22 + 8 * v23) + v26 - *(v25 + 4 * v23);
    v41 = v40 + a3;
    v42 = v41 + v36;
    if (a2 == a3)
    {
      (v14)(v36, v29, v31 + 8 * v34, v32, v33, a8, v38, a13);
      v61[0] = v41;
      for (i = *(a5[14] + 4 * v23); i != -1; i = *(a5[14] + 4 * v45))
      {
        v44 = a5[16];
        v45 = i;
        v46 = (a5[11] + 4 * i);
        if (*(v19 + 4 * *(v44 + 4 * v61[0])) < v46[1])
        {
          if (v42 < *(a5[15] + 8 * v24) && *(v19 + 4 * *(v44 + 4 * v42)) < *v46)
          {
            return;
          }

          v47 = (a8 + 8 * (v61[0] - v41) * (v39 + 1));
          if (a12)
          {
            sub_2367D52EC(a1, v45, v61, v41 + v36, a4, a5, a6, v47, v39, v19, a11, a10, (a12 + v45));
          }

          else
          {
            sub_2367D52EC(a1, v45, v61, v41 + v36, a4, a5, a6, v47, v39, v19, a11, a10, 0);
          }
        }
      }
    }

    else
    {
      if (v37 - a2 >= a7)
      {
        v48 = a7;
      }

      else
      {
        v48 = (v37 - a2);
      }

      v16(v48, v36, v29, v31 + 8 * (v28 + a2), v31 + 8 * v34, v32, v33, a8, v38, a13);
      v61[0] = v41;
      v49 = *(a5[14] + 4 * v23);
      if (v49 != -1)
      {
        v50 = v40 + a2;
        v51 = v50 + v48;
        do
        {
          v52 = a5[16];
          v53 = v49;
          v54 = (a5[11] + 4 * v49);
          if (*(v19 + 4 * *(v52 + 4 * v61[0])) < v54[1])
          {
            if (v42 < *(a5[15] + 8 * v24) && *(v19 + 4 * *(v52 + 4 * v42)) < *v54)
            {
              return;
            }

            v55 = (a8 + 8 * (v61[0] - v41) * v39);
            if (a12)
            {
              sub_2367D5508(a1, v53, v50, v61, v51, v41 + v36, a4, a5, a6, v55, v39, v19, a11, a9, a10, (a12 + v53));
            }

            else
            {
              sub_2367D5508(a1, v53, v50, v61, v51, v41 + v36, a4, a5, a6, v55, v39, v19, a11, a9, a10, 0);
            }
          }

          v49 = *(a5[14] + 4 * v53);
        }

        while (v49 != -1);
      }
    }
  }
}

void sub_2366F7024(uint64_t a1, atomic_uint *volatile *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v10 = *(a1 + 8);
  v11 = *(v10 + 64);
  v12 = *(a1 + 40);
  v13 = v12 + *(v10 + 48);
  v14 = *(v11 + 2);
  v15 = ((v12 + 4 * *(v14 + 60) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v13 < v15)
  {
    goto LABEL_7;
  }

  a7 = *(v11 + 8);
  v8 = ((&v15[a7 + 1] + 3) & 0xFFFFFFFFFFFFFFF8);
  if (v13 < v8)
  {
    goto LABEL_7;
  }

  a8 = (&v8[a7 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
  if (v13 < a8)
  {
    goto LABEL_7;
  }

  v16 = a8 + 8 * a7 * a7;
  if (v16 > v13)
  {
    goto LABEL_7;
  }

  v9 = a2;
  a4 = *v11;
  if (a4 - 2 > 2)
  {
LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  if (v16 + 33280 > v13)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  sub_2366F6C28(*v9, *(v9 + 1), *(v9 + 2), a4, v14, *(v11 + 3), a7, a8, v15, v8, v12, *(v11 + 7), v16);
  atomic_fetch_add(v9[2], 1u);
}

void sub_2366F716C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2366F711C();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2366F726C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2366F711C();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2366F736C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

int32x2_t *sub_2366F7434(int64x2_t *a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, int a6)
{
  if (a1->i64[0] != 0xF0A30000DAFA2903)
  {
    return 0;
  }

  v6 = a1;
  v7 = 0;
  if (!a1[1].i32[0])
  {
    v8 = a1->u64[1];
    if (v8 <= a2)
    {
      v11 = a1[1].i8[8];
      v20 = a1[2];
      v13 = a1[3].i64[1];
      v12 = a1[4].i64[0];
      v14 = a1[5].i64[0];
      v18 = v12;
      v19 = a1[4].i64[1];
      v16 = a1[5].i64[1];
      v15 = a1[6].i64[0];
      if (a6)
      {
        v7 = malloc_type_malloc(0x28uLL, 0x10900405D25300CuLL);
      }

      else
      {
        v7 = malloc_type_malloc(v8 - 80, 0xD8FDDC93uLL);
        memcpy(((&v7[1] + 7) & 0xFFFFFFFFFFFFFFF0), (v6 + 136), v8 - 136);
        v6 = ((&v7[1] + 7) & 0xFFFFFFFFFFFFFFF0) - 136;
      }

      if (a4 | a5 && v19)
      {
        if (a4)
        {
          *a4 = v6 + v18;
        }

        if (a5)
        {
          *a5 = v19;
        }
      }

      *v7 = vmovn_s64(v20);
      v7[1] = (v6 + v14);
      v7[2] = (v6 + v16);
      v7[3].i32[0] = 0;
      v7[3].i8[4] = v13;
      v7[4] = (v6 + v15);
      if (v11)
      {
        v7[3].i16[0] = 12;
      }
    }
  }

  return v7;
}

_DWORD *sub_2366F75B4(int a1, uint64_t a2, unint64_t a3, int a4)
{
  if (*a2 != 0xF0A30000DAFA2903)
  {
    return 0;
  }

  if (*(a2 + 16) || *(a2 + 8) > a3)
  {
    return 0;
  }

  v5 = *(a2 + 32);
  if (a1)
  {
    if (a1 == 1)
    {
      v6 = *(a2 + 112);
      v7 = *(a2 + 128);
      goto LABEL_12;
    }

    return 0;
  }

  v6 = *(a2 + 104);
  v7 = *(a2 + 120);
LABEL_12:
  v10 = (a2 + v7);
  if (a4)
  {
    v8 = malloc_type_malloc(0x18uLL, 0x108004032FBF093uLL);
    *v8 = v5;
    v8[1] = v6;
    v8[2] = v5;
    v8[3] = 0;
    *(v8 + 2) = v10;
  }

  else
  {
    v8 = malloc_type_malloc(4 * v5 * v6 + 40, 0x108004032FBF093uLL);
    v11 = ((v8 + 39) & 0xFFFFFFFFFFFFFFF0);
    *v8 = v5;
    v8[1] = v6;
    v8[2] = v5;
    v8[3] = 0;
    *(v8 + 2) = v11;
    memcpy(v11, v10, 4 * v5 * v6);
  }

  return v8;
}

uint64_t sub_2366F76AC(int a1, const void *a2, size_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 + 28);
  v34 = (~*(a4 + 12) & 0xC) == 0;
  v9 = a4[1];
  if (a5)
  {
    v10 = *(a5 + 4);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(*(a4 + 1) + 8 * v9);
  v12 = *a4;
  if (a6)
  {
    v13 = *(a6 + 4);
  }

  else
  {
    v13 = 0;
  }

  v36 = v10;
  if (a2)
  {
    v14 = 136;
  }

  else
  {
    v14 = 0;
  }

  if (a2)
  {
    v15 = (a3 + 143) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v15 = 136;
  }

  v32 = v13;
  v33 = 8 * v9 + 8;
  v16 = v33 + v15;
  v17 = v33 + v15 + 4 * v11;
  v35 = v11 * (4 * v8 * v8);
  v18 = 4 * v12 * *(a4 + 28);
  v19 = v18 * v10;
  if (a5)
  {
    v20 = v17 + v35;
  }

  else
  {
    v20 = 0;
  }

  v30 = v20;
  v31 = v14;
  if (!a5)
  {
    v19 = 0;
  }

  v21 = v19 + v17 + v35;
  v22 = v21 + v18 * v13;
  if (a6)
  {
    v23 = v19 + v17 + v35;
  }

  else
  {
    v23 = 0;
  }

  v29 = v23;
  if (a6)
  {
    v24 = v22;
  }

  else
  {
    v24 = v21;
  }

  if (ftruncate(a1, v24))
  {
    sub_2366F7F2C(v24);
    return 0xFFFFFFFFLL;
  }

  v25 = mmap(0, v24, 3, 1, a1, 0);
  if (v25 == -1)
  {
    fwrite("Failed to mmap file\n", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0xFFFFFFFFLL;
  }

  v26 = v25;
  *v25 = 0xF0A30000DAFA2903;
  *(v25 + 1) = v24;
  *(v25 + 2) = 0x200000000;
  v25[24] = v34;
  *(v25 + 25) = 0;
  *(v25 + 7) = 0;
  *(v25 + 4) = v12;
  *(v25 + 5) = v9;
  *(v25 + 6) = v11;
  *(v25 + 7) = v8;
  *(v25 + 8) = v31;
  *(v25 + 9) = 0;
  *(v25 + 10) = v15;
  *(v25 + 11) = v16;
  *(v25 + 12) = v17;
  *(v25 + 13) = v36;
  *(v25 + 14) = v32;
  *(v25 + 15) = v30;
  *(v25 + 16) = v29;
  if (a2)
  {
    memcpy(v25 + 136, a2, a3);
  }

  memcpy(&v26[v15], *(a4 + 1), v33);
  memcpy(&v26[v16], *(a4 + 2), 4 * v11);
  memcpy(&v26[v17], *(a4 + 4), v35);
  munmap(v26, v24);
  return 0;
}

_DWORD *sub_2366F78D8(int a1, uint64_t a2, unint64_t a3, int a4)
{
  if (*a2 != 0xF0A30000DAFA2903)
  {
    return 0;
  }

  if (*(a2 + 16) || *(a2 + 8) > a3)
  {
    return 0;
  }

  v5 = *(a2 + 32);
  if (a1)
  {
    if (a1 == 1)
    {
      v6 = *(a2 + 112);
      v7 = *(a2 + 128);
      goto LABEL_12;
    }

    return 0;
  }

  v6 = *(a2 + 104);
  v7 = *(a2 + 120);
LABEL_12:
  v10 = (a2 + v7);
  if (a4)
  {
    v8 = malloc_type_malloc(0x18uLL, 0x108004032FBF093uLL);
    *v8 = v5;
    v8[1] = v6;
    v8[2] = v5;
    v8[3] = 0;
    *(v8 + 2) = v10;
  }

  else
  {
    v8 = malloc_type_malloc(8 * v5 * v6 + 40, 0x108004032FBF093uLL);
    v11 = ((v8 + 39) & 0xFFFFFFFFFFFFFFF0);
    *v8 = v5;
    v8[1] = v6;
    v8[2] = v5;
    v8[3] = 0;
    *(v8 + 2) = v11;
    memcpy(v11, v10, 8 * v5 * v6);
  }

  return v8;
}

uint64_t sub_2366F79D0(int a1, const void *a2, size_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 + 28);
  v34 = (a4[6] & 0x1C) == 12;
  v9 = a4[1];
  if (a5)
  {
    v10 = *(a5 + 4);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(*(a4 + 1) + 8 * v9);
  v12 = *a4;
  if (a6)
  {
    v13 = *(a6 + 4);
  }

  else
  {
    v13 = 0;
  }

  v36 = v10;
  if (a2)
  {
    v14 = 136;
  }

  else
  {
    v14 = 0;
  }

  if (a2)
  {
    v15 = (a3 + 143) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v15 = 136;
  }

  v32 = v13;
  v33 = 8 * v9 + 8;
  v16 = v33 + v15;
  v17 = v33 + v15 + 4 * v11;
  v35 = v11 * (8 * v8 * v8);
  v18 = 8 * v12 * *(a4 + 28);
  v19 = v18 * v10;
  if (a5)
  {
    v20 = v17 + v35;
  }

  else
  {
    v20 = 0;
  }

  v30 = v20;
  v31 = v14;
  if (!a5)
  {
    v19 = 0;
  }

  v21 = v19 + v17 + v35;
  v22 = v21 + v18 * v13;
  if (a6)
  {
    v23 = v19 + v17 + v35;
  }

  else
  {
    v23 = 0;
  }

  v29 = v23;
  if (a6)
  {
    v24 = v22;
  }

  else
  {
    v24 = v21;
  }

  if (ftruncate(a1, v24))
  {
    sub_2366F7F2C(v24);
    return 0xFFFFFFFFLL;
  }

  v25 = mmap(0, v24, 3, 1, a1, 0);
  if (v25 == -1)
  {
    fwrite("Failed to mmap file\n", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0xFFFFFFFFLL;
  }

  v26 = v25;
  *v25 = 0xF0A30000DAFA2903;
  *(v25 + 1) = v24;
  *(v25 + 2) = 0x300000000;
  v25[24] = v34;
  *(v25 + 25) = 0;
  *(v25 + 7) = 0;
  *(v25 + 4) = v12;
  *(v25 + 5) = v9;
  *(v25 + 6) = v11;
  *(v25 + 7) = v8;
  *(v25 + 8) = v31;
  *(v25 + 9) = 0;
  *(v25 + 10) = v15;
  *(v25 + 11) = v16;
  *(v25 + 12) = v17;
  *(v25 + 13) = v36;
  *(v25 + 14) = v32;
  *(v25 + 15) = v30;
  *(v25 + 16) = v29;
  if (a2)
  {
    memcpy(v25 + 136, a2, a3);
  }

  memcpy(&v26[v15], *(a4 + 1), v33);
  memcpy(&v26[v16], *(a4 + 2), 4 * v11);
  memcpy(&v26[v17], *(a4 + 4), v35);
  munmap(v26, v24);
  return 0;
}

_DWORD *sub_2366F7BFC(int a1, uint64_t a2, unint64_t a3, int a4)
{
  if (*a2 != 0xF0A30000DAFA2903)
  {
    return 0;
  }

  if (*(a2 + 16) || *(a2 + 8) > a3)
  {
    return 0;
  }

  v5 = *(a2 + 32);
  if (a1)
  {
    if (a1 == 1)
    {
      v6 = *(a2 + 112);
      v7 = *(a2 + 128);
      goto LABEL_12;
    }

    return 0;
  }

  v6 = *(a2 + 104);
  v7 = *(a2 + 120);
LABEL_12:
  v10 = (a2 + v7);
  if (a4)
  {
    v8 = malloc_type_malloc(0x18uLL, 0x108004032FBF093uLL);
    *v8 = v5;
    v8[1] = v6;
    v8[2] = v5;
    v8[3] = 0;
    *(v8 + 2) = v10;
  }

  else
  {
    v8 = malloc_type_malloc(16 * v5 * v6 + 40, 0x108004032FBF093uLL);
    v11 = ((v8 + 39) & 0xFFFFFFFFFFFFFFF0);
    *v8 = v5;
    v8[1] = v6;
    v8[2] = v5;
    v8[3] = 0;
    *(v8 + 2) = v11;
    memcpy(v11, v10, 16 * v5 * v6);
  }

  return v8;
}

uint64_t sub_2366F7CF4(int a1, const void *a2, size_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 + 28);
  v35 = (a4[6] & 0x1C) == 12;
  v9 = a4[1];
  if (a5)
  {
    v10 = *(a5 + 4);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(*(a4 + 1) + 8 * v9);
  v12 = *a4;
  if (a6)
  {
    v13 = *(a6 + 4);
  }

  else
  {
    v13 = 0;
  }

  v36 = v10;
  if (a2)
  {
    v14 = 136;
  }

  else
  {
    v14 = 0;
  }

  if (a2)
  {
    v15 = (a3 + 143) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v15 = 136;
  }

  v32 = v13;
  v33 = 8 * v9 + 8;
  v16 = v33 + v15;
  v17 = (v33 + v15 + 4 * v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = v11 * (16 * v8 * v8);
  v18 = 16 * v12 * *(a4 + 28);
  v19 = v18 * v10;
  if (a5)
  {
    v20 = v17 + v34;
  }

  else
  {
    v20 = 0;
  }

  v30 = v20;
  v31 = v14;
  if (!a5)
  {
    v19 = 0;
  }

  v21 = v19 + v17 + v34;
  v22 = v18 * v13;
  if (a6)
  {
    v23 = v19 + v17 + v34;
  }

  else
  {
    v23 = 0;
  }

  v29 = v23;
  if (!a6)
  {
    v22 = 0;
  }

  v24 = v21 + v22;
  if (ftruncate(a1, v21 + v22))
  {
    sub_2366F7F2C(v24);
    return 0xFFFFFFFFLL;
  }

  v25 = mmap(0, v24, 3, 1, a1, 0);
  if (v25 == -1)
  {
    fwrite("Failed to mmap file\n", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0xFFFFFFFFLL;
  }

  v26 = v25;
  *v25 = 0xF0A30000DAFA2903;
  *(v25 + 1) = v24;
  *(v25 + 2) = 0x100000000;
  v25[24] = v35;
  *(v25 + 25) = 0;
  *(v25 + 7) = 0;
  *(v25 + 4) = v12;
  *(v25 + 5) = v9;
  *(v25 + 6) = v11;
  *(v25 + 7) = v8;
  *(v25 + 8) = v31;
  *(v25 + 9) = 0;
  *(v25 + 10) = v15;
  *(v25 + 11) = v16;
  *(v25 + 12) = v17;
  *(v25 + 13) = v36;
  *(v25 + 14) = v32;
  *(v25 + 15) = v30;
  *(v25 + 16) = v29;
  if (a2)
  {
    memcpy(v25 + 136, a2, a3);
  }

  memcpy(&v26[v15], *(a4 + 1), v33);
  memcpy(&v26[v16], *(a4 + 2), 4 * v11);
  memcpy(&v26[v17], *(a4 + 4), v34);
  munmap(v26, v24);
  return 0;
}

void sub_2366F7F2C(uint64_t a1)
{
  fprintf(*MEMORY[0x277D85DF8], "Failed to resize file to length %llu\n", a1);

  perror(&unk_236821856);
}

_DWORD *sub_2366F7F80(FILE *a1, int a2, size_t a3, char *__dst)
{
  strncpy(__dst, "MatrixMarket Matrix", a3);
  __linecapp = 81;
  __linep = malloc_type_malloc(0x51uLL, 0x458AA608uLL);
  if (getline(&__linep, &__linecapp, a1) < 1)
  {
LABEL_17:
    v9 = *MEMORY[0x277D85DF8];
    v10 = "File does not contain any non-comment lines.\n";
    v11 = 45;
LABEL_18:
    fwrite(v10, v11, 1uLL, v9);
    return 0;
  }

  v5 = 2;
  while (1)
  {
    v6 = __linep;
    if (*__linep != 37)
    {
      break;
    }

    if (!strncmp(__linep, "%%MatrixMarket", 0xEuLL))
    {
      strtok(v6, " \t\n\r");
      v7 = strtok(0, " \t\n\r");
      if (v7)
      {
        v8 = v7;
        do
        {
          if (strcasecmp(v8, "matrix") && strcasecmp(v8, "coordinate") && strcasecmp(v8, "real") && strcasecmp(v8, "integer"))
          {
            if (!strcasecmp(v8, "general"))
            {
              v5 &= 0xFFFFFFF3;
            }

            else
            {
              if (strcasecmp(v8, "symmetric"))
              {
                fprintf(*MEMORY[0x277D85DF8], "Unsupported symbol in MatrixMarket header '%s'\n", v8);
                return 0;
              }

              v5 |= 0xCu;
            }
          }

          v8 = strtok(0, " \t\n\r");
        }

        while (v8);
      }
    }

    if (getline(&__linep, &__linecapp, a1) <= 0)
    {
      goto LABEL_17;
    }
  }

  v38 = 0;
  v39 = 0;
  v37 = 0;
  if (sscanf(__linep, "%ld %ld %ld", &v39, &v38, &v37) != 3)
  {
    v9 = *MEMORY[0x277D85DF8];
    v10 = "Matrix description line is malformed.\n";
    v11 = 38;
    goto LABEL_18;
  }

  v12 = malloc_type_malloc(8 * (v37 + v38) + 96, 0x10900405D25300CuLL);
  v14 = (v12 + 55) & 0xFFFFFFFFFFFFFFF0;
  v15 = v38;
  *v12 = v39;
  v12[1] = v15;
  *(v12 + 12) = v5;
  *(v12 + 13) = 0;
  *(v12 + 28) = 1;
  v16 = (v14 + 8 * v15 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v12 + 1) = v14;
  *(v12 + 2) = v16;
  *(v12 + 4) = (v16 + 4 * v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (getline(&__linep, &__linecapp, a1) < 1)
  {
    v18 = 0;
    v22 = -1;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = -1;
    v20 = 0.0;
    v21 = -1;
    v22 = -1;
    do
    {
      v23 = __linep;
      __endptr = 0;
      if (__linep)
      {
        do
        {
          if (v17 == 2)
          {
            v27 = strtod(v23, &__endptr);
            v26 = __endptr;
            v20 = v27;
            v25 = v23 != __endptr;
            v17 = 2 * (v23 == __endptr);
          }

          else if (v17 == 1)
          {
            v24 = strtol(v23, &__endptr, 0);
            v25 = 0;
            v19 = v24 - 1;
            v26 = __endptr;
            v17 = v23 == __endptr ? 1 : 2;
          }

          else
          {
            v28 = strtol(v23, &__endptr, 0);
            v25 = 0;
            v21 = v28 - 1;
            v26 = __endptr;
            v17 = v23 != __endptr;
          }

          if (v23 == v26)
          {
            break;
          }

          if (v25)
          {
            v29 = v19 - v22;
            if (v19 < v22)
            {
              fwrite("Error, columns are expected to appear in increasing order.\n", 0x3BuLL, 1uLL, *MEMORY[0x277D85DF8]);
              goto LABEL_56;
            }

            if (v19 > v22)
            {
              v30 = (v29 + 1) & 0xFFFFFFFFFFFFFFFELL;
              v31 = vdupq_n_s64(v29 - 1);
              v32 = (*(v12 + 1) + 8 * v22 + 16);
              v33 = 1;
              do
              {
                v34 = vmovn_s64(vcgeq_u64(v31, vorrq_s8(vdupq_n_s64(v33 - 1), xmmword_23681F920)));
                if (v34.i8[0])
                {
                  *(v32 - 1) = v18;
                }

                if (v34.i8[4])
                {
                  *v32 = v18;
                }

                v33 += 2;
                v32 += 2;
                v30 -= 2;
              }

              while (v30);
              v22 = v19;
            }

            *(*(v12 + 2) + 4 * v18) = v21;
            *(*(v12 + 4) + 4 * v18++) = v20;
          }

          v23 = v26;
        }

        while (v26);
      }
    }

    while (getline(&__linep, &__linecapp, a1) > 0);
  }

  if (v22 < v38)
  {
    v35 = *(v12 + 1) + 8;
    do
    {
      *(v35 + 8 * v22++) = v18;
    }

    while (v22 < v38);
  }

  if (v18 >= v37)
  {
    free(__linep);
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "Error, coordinate list ended before reaching expected %ld entries.\n", v37);
LABEL_56:
    free(v12);
    return 0;
  }

  return v12;
}

_DWORD *sub_2366F843C(FILE *a1, int a2, size_t a3, char *__dst)
{
  strncpy(__dst, "MatrixMarket Matrix", a3);
  __linecapp = 81;
  __linep = malloc_type_malloc(0x51uLL, 0x458AA608uLL);
  if (getline(&__linep, &__linecapp, a1) < 1)
  {
LABEL_19:
    v9 = *MEMORY[0x277D85DF8];
    v10 = "File does not contain any non-comment lines.\n";
    v11 = 45;
LABEL_20:
    fwrite(v10, v11, 1uLL, v9);
    return 0;
  }

  v41 = 0;
  v5 = 2;
  while (1)
  {
    v6 = __linep;
    if (*__linep != 37)
    {
      break;
    }

    if (!strncmp(__linep, "%%MatrixMarket", 0xEuLL))
    {
      strtok(v6, " \t\n\r");
      v7 = strtok(0, " \t\n\r");
      if (v7)
      {
        v8 = v7;
        do
        {
          if (strcasecmp(v8, "matrix") && strcasecmp(v8, "coordinate") && strcasecmp(v8, "real") && strcasecmp(v8, "integer"))
          {
            if (!strcasecmp(v8, "complex"))
            {
              v41 = 1;
            }

            else if (!strcasecmp(v8, "general"))
            {
              v5 &= 0xFFFFFFE3;
            }

            else
            {
              if (strcasecmp(v8, "symmetric"))
              {
                fprintf(*MEMORY[0x277D85DF8], "Unsupported symbol in MatrixMarket header '%s'\n", v8);
                return 0;
              }

              v5 = v5 & 0xFFFFFFE3 | 0xC;
            }
          }

          v8 = strtok(0, " \t\n\r");
        }

        while (v8);
      }
    }

    if (getline(&__linep, &__linecapp, a1) <= 0)
    {
      goto LABEL_19;
    }
  }

  v44 = 0;
  v45 = 0;
  v43 = 0;
  if (sscanf(__linep, "%ld %ld %ld", &v45, &v44, &v43) != 3)
  {
    v9 = *MEMORY[0x277D85DF8];
    v10 = "Matrix description line is malformed.\n";
    v11 = 38;
    goto LABEL_20;
  }

  v12 = malloc_type_malloc(12 * v43 + 8 * v44 + 96, 0x10900405D25300CuLL);
  v14 = (v12 + 55) & 0xFFFFFFFFFFFFFFF0;
  v15 = v44;
  *v12 = v45;
  v12[1] = v15;
  *(v12 + 12) = v5;
  *(v12 + 13) = 0;
  *(v12 + 28) = 1;
  v16 = (v14 + 8 * v15 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v12 + 1) = v14;
  *(v12 + 2) = v16;
  *(v12 + 4) = (v16 + 4 * v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (getline(&__linep, &__linecapp, a1) < 1)
  {
    v18 = 0;
    v24 = -1;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    if (v41)
    {
      v19 = 3;
    }

    else
    {
      v19 = 0;
    }

    v20 = -1;
    v21 = 0.0;
    v22 = 0.0;
    v23 = -1;
    v24 = -1;
    do
    {
      v25 = __linep;
      __endptr = 0;
      if (__linep)
      {
        do
        {
          if (v17 > 1)
          {
            if (v17 == 2)
            {
              v32 = strtod(v25, &__endptr);
              v27 = xmmword_23681F920;
              v22 = v32;
              v29 = __endptr;
              v17 = v25 == __endptr ? 2 : v19;
              v28 = (v25 != __endptr) & (v41 ^ 1);
            }

            else
            {
              v30 = strtod(v25, &__endptr);
              v27 = xmmword_23681F920;
              v21 = v30;
              v29 = __endptr;
              v28 = v25 != __endptr;
              v17 = v25 == __endptr ? 3 : 0;
            }
          }

          else if (v17)
          {
            v26 = strtol(v25, &__endptr, 0);
            v27 = xmmword_23681F920;
            v28 = 0;
            v20 = v26 - 1;
            v29 = __endptr;
            v17 = v25 == __endptr ? 1 : 2;
          }

          else
          {
            v31 = strtol(v25, &__endptr, 0);
            v27 = xmmword_23681F920;
            v28 = 0;
            v23 = v31 - 1;
            v29 = __endptr;
            v17 = v25 != __endptr;
          }

          if (v25 == v29)
          {
            break;
          }

          if (v28)
          {
            v33 = v20 - v24;
            if (v20 < v24)
            {
              fwrite("Error, columns are expected to appear in increasing order.\n", 0x3BuLL, 1uLL, *MEMORY[0x277D85DF8]);
              goto LABEL_68;
            }

            if (v20 > v24)
            {
              v34 = (v33 + 1) & 0xFFFFFFFFFFFFFFFELL;
              v35 = vdupq_n_s64(v33 - 1);
              v36 = (*(v12 + 1) + 8 * v24 + 16);
              v37 = 1;
              do
              {
                v38 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(vdupq_n_s64(v37 - 1), v27)));
                if (v38.i8[0])
                {
                  *(v36 - 1) = v18;
                }

                if (v38.i8[4])
                {
                  *v36 = v18;
                }

                v37 += 2;
                v36 += 2;
                v34 -= 2;
              }

              while (v34);
              v24 = v20;
            }

            *(*(v12 + 2) + 4 * v18) = v23;
            v39 = (*(v12 + 4) + 8 * v18++);
            *v39 = v22 + (v21 * 0.0);
            v39[1] = v21;
          }

          v25 = v29;
        }

        while (v29);
      }
    }

    while (getline(&__linep, &__linecapp, a1) > 0);
  }

  if (v24 < v44)
  {
    v40 = *(v12 + 1) + 8;
    do
    {
      *(v40 + 8 * v24++) = v18;
    }

    while (v24 < v44);
  }

  if (v18 >= v43)
  {
    free(__linep);
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "Error, coordinate list ended before reaching expected %ld entries.\n", v43);
LABEL_68:
    free(v12);
    return 0;
  }

  return v12;
}

_DWORD *sub_2366F89C4(FILE *a1, int a2, size_t a3, char *__dst)
{
  strncpy(__dst, "MatrixMarket Matrix", a3);
  __linecapp = 81;
  __linep = malloc_type_malloc(0x51uLL, 0x458AA608uLL);
  if (getline(&__linep, &__linecapp, a1) < 1)
  {
LABEL_19:
    v9 = *MEMORY[0x277D85DF8];
    v10 = "File does not contain any non-comment lines.\n";
    v11 = 45;
LABEL_20:
    fwrite(v10, v11, 1uLL, v9);
    return 0;
  }

  v41 = 0;
  v5 = 2;
  while (1)
  {
    v6 = __linep;
    if (*__linep != 37)
    {
      break;
    }

    if (!strncmp(__linep, "%%MatrixMarket", 0xEuLL))
    {
      strtok(v6, " \t\n\r");
      v7 = strtok(0, " \t\n\r");
      if (v7)
      {
        v8 = v7;
        do
        {
          if (strcasecmp(v8, "matrix") && strcasecmp(v8, "coordinate") && strcasecmp(v8, "real") && strcasecmp(v8, "integer"))
          {
            if (!strcasecmp(v8, "complex"))
            {
              v41 = 1;
            }

            else if (!strcasecmp(v8, "general"))
            {
              v5 &= 0xFFFFFFE3;
            }

            else
            {
              if (strcasecmp(v8, "symmetric"))
              {
                fprintf(*MEMORY[0x277D85DF8], "Unsupported symbol in MatrixMarket header '%s'\n", v8);
                return 0;
              }

              v5 = v5 & 0xFFFFFFE3 | 0xC;
            }
          }

          v8 = strtok(0, " \t\n\r");
        }

        while (v8);
      }
    }

    if (getline(&__linep, &__linecapp, a1) <= 0)
    {
      goto LABEL_19;
    }
  }

  v44 = 0;
  v45 = 0;
  v43 = 0;
  if (sscanf(__linep, "%ld %ld %ld", &v45, &v44, &v43) != 3)
  {
    v9 = *MEMORY[0x277D85DF8];
    v10 = "Matrix description line is malformed.\n";
    v11 = 38;
    goto LABEL_20;
  }

  v12 = malloc_type_malloc(20 * v43 + 8 * v44 + 96, 0x10900405D25300CuLL);
  v14 = (v12 + 55) & 0xFFFFFFFFFFFFFFF0;
  v15 = v44;
  *v12 = v45;
  v12[1] = v15;
  *(v12 + 12) = v5;
  *(v12 + 13) = 0;
  *(v12 + 28) = 1;
  v16 = (v14 + 8 * v15 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v12 + 1) = v14;
  *(v12 + 2) = v16;
  *(v12 + 4) = (v16 + 4 * v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (getline(&__linep, &__linecapp, a1) < 1)
  {
    v18 = 0;
    v24 = -1;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    if (v41)
    {
      v19 = 3;
    }

    else
    {
      v19 = 0;
    }

    v20 = -1;
    v21 = 0.0;
    v22 = 0.0;
    v23 = -1;
    v24 = -1;
    do
    {
      v25 = __linep;
      __endptr = 0;
      if (__linep)
      {
        do
        {
          if (v17 > 1)
          {
            if (v17 == 2)
            {
              v32 = strtod(v25, &__endptr);
              v27 = xmmword_23681F920;
              v22 = v32;
              v29 = __endptr;
              v17 = v25 == __endptr ? 2 : v19;
              v28 = (v25 != __endptr) & (v41 ^ 1);
            }

            else
            {
              v30 = strtod(v25, &__endptr);
              v27 = xmmword_23681F920;
              v21 = v30;
              v29 = __endptr;
              v28 = v25 != __endptr;
              v17 = v25 == __endptr ? 3 : 0;
            }
          }

          else if (v17)
          {
            v26 = strtol(v25, &__endptr, 0);
            v27 = xmmword_23681F920;
            v28 = 0;
            v20 = v26 - 1;
            v29 = __endptr;
            v17 = v25 == __endptr ? 1 : 2;
          }

          else
          {
            v31 = strtol(v25, &__endptr, 0);
            v27 = xmmword_23681F920;
            v28 = 0;
            v23 = v31 - 1;
            v29 = __endptr;
            v17 = v25 != __endptr;
          }

          if (v25 == v29)
          {
            break;
          }

          if (v28)
          {
            v33 = v20 - v24;
            if (v20 < v24)
            {
              fwrite("Error, columns are expected to appear in increasing order.\n", 0x3BuLL, 1uLL, *MEMORY[0x277D85DF8]);
              goto LABEL_68;
            }

            if (v20 > v24)
            {
              v34 = (v33 + 1) & 0xFFFFFFFFFFFFFFFELL;
              v35 = vdupq_n_s64(v33 - 1);
              v36 = (*(v12 + 1) + 8 * v24 + 16);
              v37 = 1;
              do
              {
                v38 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(vdupq_n_s64(v37 - 1), v27)));
                if (v38.i8[0])
                {
                  *(v36 - 1) = v18;
                }

                if (v38.i8[4])
                {
                  *v36 = v18;
                }

                v37 += 2;
                v36 += 2;
                v34 -= 2;
              }

              while (v34);
              v24 = v20;
            }

            *(*(v12 + 2) + 4 * v18) = v23;
            v39 = (*(v12 + 4) + 16 * v18++);
            *v39 = v22 + v21 * 0.0;
            v39[1] = v21;
          }

          v25 = v29;
        }

        while (v29);
      }
    }

    while (getline(&__linep, &__linecapp, a1) > 0);
  }

  if (v24 < v44)
  {
    v40 = *(v12 + 1) + 8;
    do
    {
      *(v40 + 8 * v24++) = v18;
    }

    while (v24 < v44);
  }

  if (v18 >= v43)
  {
    free(__linep);
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "Error, coordinate list ended before reaching expected %ld entries.\n", v43);
LABEL_68:
    free(v12);
    return 0;
  }

  return v12;
}

void sub_2366F8F68(int a1, int a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, int *__b, uint64_t a16, char *a17, uint64_t a18)
{
  v431 = a3;
  v18 = &a17[a18];
  v19 = (&a17[4 * a2 + 7] & 0xFFFFFFFFFFFFFFF8);
  if (&a17[a18] < v19 || (v25 = 4 * a2, bzero(a17, v25), v389 = a3, v388 = a3 + 2, v26 = &v19[8 * v388 + 24 + 8 * a3], v26 > v18) || v18 < ((v26 + v25 + 7) & 0xFFFFFFFFFFFFFFF8))
  {
    __break(1u);
  }

  else
  {
    v393 = ((v26 + v25 + 7) & 0xFFFFFFFFFFFFFFF8);
    v395 = v25;
    if (a3 >= 1)
    {
      v27 = 0;
      LODWORD(v28) = *a4;
      do
      {
        v29 = v27++;
        LODWORD(v30) = a4[v27];
        if (v28 < v30)
        {
          v28 = v28;
          do
          {
            *(v26 + 4 * v28++) = v29;
            v30 = a4[v27];
          }

          while (v28 < v30);
        }

        LODWORD(v28) = v30;
      }

      while (v27 != a3);
    }

    v415 = &v19[8 * v388 + 24 + 8 * a3];
    __pattern4 = a3;
    v31 = &v19[(4 * a3 + 7) & 0xFFFFFFFFFFFFFFF8];
    v416 = v19;
    memset_pattern4(v19, &__pattern4, 4 * a3);
    bzero(v31, 8 * v388);
    v32 = (*(a16 + 24))(5 * a9[a3]);
    v33 = v31;
    v387 = v31 + 16;
    v402 = a8;
    v403 = a6;
    v394 = a7;
    v406 = v31;
    v422 = v32;
    if (a3 < 1)
    {
      v53 = 0;
      v127 = 0;
      *(v31 + 1) = 0;
      v386 = v31 + 8;
      v433 = 0;
      v434 = 0;
      v55 = 1;
      v435 = 0;
      v436 = a16;
      v128 = a16;
    }

    else
    {
      v34 = 0;
      v35 = v32 + 4 * a9[a3];
      v36 = *a9;
      v37 = a5;
      v38 = &v19[8 * v388 + 24 + 8 * a3];
      v39 = a1;
      v40 = v19;
      do
      {
        v41 = v34++;
        while (v36 < a9[v34])
        {
          v42 = *(a10 + 4 * v36);
          ++v387[v42];
          if (*(a11 + v36) == 3)
          {
            v43 = *&v19[4 * v42];
            if (v43 >= v41)
            {
              v43 = v41;
            }

            *&v19[4 * v42] = v43;
          }

          ++v36;
        }

        v36 = a9[v34];
      }

      while (v34 != a3);
      v44 = 0;
      *(v33 + 1) = 0;
      v45 = v33 + 8;
      v46 = v387;
      v47 = a3;
      do
      {
        v44 += *v46;
        *v46++ = v44;
        --v47;
      }

      while (v47);
      v48 = 0;
      v49 = *a9;
      do
      {
        v50 = v48++;
        while (v49 < a9[v48])
        {
          v51 = *(a10 + 4 * v49);
          v52 = v45[v51];
          *(v32 + 4 * v52) = v50;
          *(v35 + v52) = *(a11 + v49);
          v45[v51] = v52 + 1;
          ++v49;
        }

        v49 = a9[v48];
      }

      while (v48 != a3);
      v386 = v33 + 8;
      v53 = 0;
      v54 = 0;
      v433 = 0;
      v434 = 0;
      v435 = 0;
      v436 = a16;
      LODWORD(v55) = 1;
      v424 = v35;
      do
      {
        v56 = v54;
        v413 = v54;
        if (v55 > 2147483630)
        {
          bzero(a17, v395);
          v56 = v413;
          v37 = a5;
          v33 = v406;
          v38 = v415;
          v40 = v416;
          v39 = a1;
          LODWORD(v55) = 1;
        }

        v57 = v55 + 1;
        v58 = *&v33[8 * v56];
        v54 = v56 + 1;
        v59 = *&v33[8 * v56 + 8];
        if (v58 < v59)
        {
          do
          {
            if ((*(v35 + v58) & 2) != 0)
            {
              v60 = *(v422 + 4 * v58);
              v61 = a4[v60];
              v62 = v60 + 1;
              if (v61 < a4[v60 + 1])
              {
                do
                {
                  *&a17[4 * v61++] = v57;
                }

                while (v61 < a4[v62]);
              }

              v63 = *(a7 + 8 * v60);
              v64 = *(a7 + 8 * v62);
              v80 = v64 <= v63;
              v65 = v64 - v63;
              if (!v80)
              {
                v66 = (a8 + 4 * v63);
                do
                {
                  v67 = *v66++;
                  *&a17[4 * v67] = v57;
                  --v65;
                }

                while (v65);
              }
            }

            ++v58;
          }

          while (v58 != v59);
        }

        if (v39 == 83 || (v68 = (v37 + 8 * v56), v70 = *v68, v69 = v68[1], v80 = v69 <= v70, v71 = v69 - v70, v80))
        {
          v72 = 0;
        }

        else
        {
          v72 = 0;
          v73 = (a6 + 4 * v70);
          do
          {
            v74 = *v73++;
            v75 = *(v38 + 4 * v74);
            if (v72 <= v75)
            {
              v72 = v75;
            }

            --v71;
          }

          while (v71);
        }

        v76 = (v394 + 8 * v56);
        v77 = *v76;
        v408 = v56 + 1;
        for (i = v76; v77 < v76[1]; ++v77)
        {
          v78 = *(a8 + 4 * v77);
          v79 = *(v38 + 4 * v78);
          v80 = v39 != 83 && v72 < v79;
          v81 = v80;
          if (v79 < *&v40[4 * v56] && (v81 & 1) == 0 && *&a17[4 * v78] <= v55)
          {
            if (v53 >= v435)
            {
              v82 = v433;
              v83 = v53 - v433;
              v84 = 0xAAAAAAAAAAAAAAABLL * ((v53 - v433) >> 2);
              v85 = v84 + 1;
              if (v84 + 1 > 0x1555555555555555)
              {
                sub_2366FB858();
              }

              if (0x5555555555555556 * ((v435 - v433) >> 2) > v85)
              {
                v85 = 0x5555555555555556 * ((v435 - v433) >> 2);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v435 - v433) >> 2) >= 0xAAAAAAAAAAAAAAALL)
              {
                v86 = 0x1555555555555555;
              }

              else
              {
                v86 = v85;
              }

              v441 = &v436;
              if (v86)
              {
                v87 = sub_2366FB914(&v436, v86);
                v82 = v433;
                v83 = v434 - v433;
              }

              else
              {
                v87 = 0;
              }

              v88 = v87 + 12 * v84;
              v400 = v87 + 12 * v86;
              *v88 = v413;
              *(v88 + 4) = v79;
              *(v88 + 8) = 1;
              v53 = v88 + 12;
              v89 = (v88 - v83);
              memcpy((v88 - v83), v82, v83);
              v90 = v433;
              v91 = v435;
              v433 = v89;
              v434 = v53;
              v435 = v400;
              v439 = v90;
              v440 = v91;
              v437 = v90;
              v438 = v90;
              sub_2366FB9A0(&v437);
              v56 = v413;
              a8 = v402;
              a6 = v403;
              v37 = a5;
              v38 = v415;
              v39 = a1;
              v40 = v416;
              v33 = v406;
              v54 = v408;
              v76 = i;
            }

            else
            {
              *v53 = v56;
              *(v53 + 4) = v79;
              *(v53 + 8) = 1;
              v53 += 12;
            }

            v434 = v53;
            v92 = &a4[v79];
            v93 = *v92;
            if (v93 < v92[1])
            {
              do
              {
                *&a17[4 * v93++] = v57;
              }

              while (v93 < v92[1]);
            }
          }
        }

        if (v55 > 2147483629)
        {
          bzero(a17, v395);
          v54 = v408;
          v56 = v413;
          v33 = v406;
          v38 = v415;
          v40 = v416;
          v39 = a1;
          v37 = a5;
          v57 = 1;
        }

        v55 = (v57 + 1);
        v94 = *&v33[8 * v56];
        v95 = *&v33[8 * v54];
        v35 = v424;
        if (v94 < v95)
        {
          do
          {
            if (*(v424 + v94))
            {
              v96 = *(v422 + 4 * v94);
              v97 = a4[v96];
              v98 = v96 + 1;
              if (v97 < a4[v96 + 1])
              {
                do
                {
                  *&a17[4 * v97++] = v55;
                }

                while (v97 < a4[v98]);
              }

              v99 = *(v37 + 8 * v96);
              v100 = *(v37 + 8 * v98);
              v80 = v100 <= v99;
              v101 = v100 - v99;
              if (!v80)
              {
                v102 = (a6 + 4 * v99);
                do
                {
                  v103 = *v102++;
                  *&a17[4 * v103] = v55;
                  --v101;
                }

                while (v101);
              }
            }

            ++v94;
          }

          while (v94 != v95);
        }

        if (v39 == 83 || (v104 = i[1], v80 = v104 <= *i, v105 = v104 - *i, v80))
        {
          v106 = 0;
        }

        else
        {
          v106 = 0;
          v107 = (a8 + 4 * *i);
          do
          {
            v108 = *v107++;
            v109 = *(v38 + 4 * v108);
            if (v106 <= v109)
            {
              v106 = v109;
            }

            --v105;
          }

          while (v105);
        }

        for (j = *(v37 + 8 * v56); j < *(v37 + 8 * v54); ++j)
        {
          v111 = *(a6 + 4 * j);
          v112 = *(v38 + 4 * v111);
          v114 = v39 != 83 && v106 < v112;
          if (v112 >= *&v40[4 * v56] || v114 || *&a17[4 * v111] > v57)
          {
            goto LABEL_116;
          }

          if (v53 >= v435)
          {
            v115 = v433;
            v116 = v53 - v433;
            v117 = 0xAAAAAAAAAAAAAAABLL * ((v53 - v433) >> 2);
            v118 = v117 + 1;
            if (v117 + 1 > 0x1555555555555555)
            {
              sub_2366FB858();
            }

            if (0x5555555555555556 * ((v435 - v433) >> 2) > v118)
            {
              v118 = 0x5555555555555556 * ((v435 - v433) >> 2);
            }

            v119 = 0xAAAAAAAAAAAAAAABLL * ((v435 - v433) >> 2) >= 0xAAAAAAAAAAAAAAALL ? 0x1555555555555555 : v118;
            v441 = &v436;
            if (v119)
            {
              v120 = sub_2366FB914(&v436, v119);
              v115 = v433;
              v116 = v434 - v433;
            }

            else
            {
              v120 = 0;
            }

            v121 = v120 + 12 * v117;
            v401 = v120 + 12 * v119;
            *v121 = v413;
            *(v121 + 4) = v112;
            *(v121 + 8) = 0;
            v53 = v121 + 12;
            v122 = (v121 - v116);
            memcpy((v121 - v116), v115, v116);
            v123 = v433;
            v124 = v435;
            v433 = v122;
            v434 = v53;
            v435 = v401;
            v439 = v123;
            v440 = v124;
            v437 = v123;
            v438 = v123;
            sub_2366FB9A0(&v437);
            v56 = v413;
            a8 = v402;
            a6 = v403;
            v37 = a5;
            v38 = v415;
            v39 = a1;
            v40 = v416;
            v33 = v406;
            v54 = v408;
          }

          else
          {
            *v53 = v56;
            *(v53 + 4) = v112;
            *(v53 + 8) = 0;
            v53 += 12;
          }

          v434 = v53;
          v125 = &a4[v112];
          v126 = *v125;
          if (v126 >= v125[1])
          {
LABEL_116:
            v35 = v424;
          }

          else
          {
            v35 = v424;
            do
            {
              *&a17[4 * v126++] = v55;
            }

            while (v126 < v125[1]);
          }
        }

        a7 = v394;
      }

      while (v54 != v389);
      v127 = v433;
      v128 = a16;
    }

    v129 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v53 - v127) >> 2));
    if (v53 == v127)
    {
      v130 = 0;
    }

    else
    {
      v130 = v129;
    }

    sub_2366FBA18(v127, v53, v130, 1);
    v131 = a9[v389] - 0x5555555555555555 * ((v434 - v433) >> 2);
    *a13 = (*(v128 + 24))(4 * v131);
    v132 = (*(v128 + 24))(v131);
    v133 = a14;
    v134 = a12;
    *a14 = v132;
    if (v389 < 1)
    {
      v136 = 0;
    }

    else
    {
      v135 = 0;
      v136 = 0;
      v137 = 0;
      v138 = v433;
      v139 = 0xAAAAAAAAAAAAAAABLL * ((v434 - v433) >> 2);
      v140 = a13;
      do
      {
        v134[v135] = v136;
        v141 = v55;
        if (v55 > 2147483630)
        {
          bzero(a17, v395);
          v134 = a12;
          v133 = a14;
          v140 = a13;
          v141 = 1;
        }

        v55 = (v141 + 1);
        v142 = a9[v135];
        v143 = v135 + 1;
        v144 = a9[v135 + 1];
        v80 = v144 <= v142;
        v145 = v144 - v142;
        if (!v80)
        {
          v146 = *v140;
          v147 = *v133;
          v148 = (a11 + v142);
          v149 = (a10 + 4 * v142);
          do
          {
            v151 = *v149++;
            v150 = v151;
            *(v146 + 4 * v136) = v151;
            LOBYTE(v151) = *v148++;
            *(v147 + v136) = v151;
            *&a17[4 * v150] = v55;
            ++v136;
            --v145;
          }

          while (v145);
        }

        while (v137 < v139)
        {
          v152 = v138 + 12 * v137;
          v153 = *(v152 + 1);
          if (v135 < v153)
          {
            break;
          }

          v154 = *v152;
          v155 = v152[8];
          if (*&a17[4 * v154] <= v141)
          {
            *(*v140 + 4 * v136) = v154;
            if (v155)
            {
              v160 = 2;
            }

            else
            {
              v160 = 1;
            }

            *(*v133 + v136) = v160;
            *&a17[4 * v154] = v55;
            ++v136;
          }

          else
          {
            v156 = v136;
            while (v156 > v134[v135])
            {
              v157 = v156 - 1;
              v158 = *(*v140 + 4 * v156-- - 4);
              if (v158 == v154)
              {
                if (v155)
                {
                  v159 = 2;
                }

                else
                {
                  v159 = 1;
                }

                *(*v133 + v157) |= v159;
                if (*&v416[4 * v154] < v153)
                {
                  LODWORD(v153) = *&v416[4 * v154];
                }

                *&v416[4 * v154] = v153;
                break;
              }
            }
          }

          ++v137;
        }

        ++v135;
      }

      while (v143 != v389);
    }

    v134[v389] = v136;
    v161 = v134;
    (*(a16 + 32))(v422);
    v162 = (*(a16 + 24))(5 * v161[v389]);
    v163 = v161[v389];
    v164 = v387;
    bzero(v387, 8 * v389);
    if (v389 < 1)
    {
      *v386 = 0;
      v425 = v433;
      v434 = v433;
    }

    else
    {
      v165 = 0;
      v166 = v406;
      v167 = &v406[8 * v388];
      v168 = *v161;
      v169 = v162 + 4 * v163;
      v170 = v416;
      v171 = v389;
      do
      {
        v172 = v161[++v165];
        if (v168 < v172)
        {
          v173 = *a13;
          do
          {
            ++v387[*(v173 + 4 * v168++)];
            v172 = v161[v165];
          }

          while (v168 < v172);
        }

        v168 = v172;
      }

      while (v165 != v389);
      v174 = 0;
      *(v406 + 1) = 0;
      v175 = v406 + 8;
      v176 = v389;
      do
      {
        v174 += *v164;
        *v164++ = v174;
        --v176;
      }

      while (v176);
      v177 = 0;
      v178 = *v161;
      do
      {
        v179 = v177++;
        v180 = v161[v177];
        if (v178 < v180)
        {
          v181 = *a13;
          v182 = *a14;
          do
          {
            v183 = *(v181 + 4 * v178);
            v184 = v175[v183];
            *(v162 + 4 * v184) = v179;
            *(v169 + v184) = *(v182 + v178);
            v175[v183] = v184 + 1;
            ++v178;
            v180 = v161[v177];
          }

          while (v178 < v180);
        }

        v178 = v180;
      }

      while (v177 != v389);
      v185 = 0;
      v186 = 0;
      v425 = v433;
      v434 = v433;
      v187 = v55;
      do
      {
        if (*&v170[4 * v185] >= v171)
        {
          if (v187 >= 2147483628)
          {
            v188 = v171;
            bzero(a17, v395);
            v171 = v188;
            v166 = v406;
            v170 = v416;
            LODWORD(v187) = 1;
          }

          v55 = (v187 + 3);
          v189 = v186 + 1;
          *&v167[4 * v186] = v185;
          if ((v186 & 0x80000000) == 0)
          {
            do
            {
              v190 = *&v167[4 * --v189];
              v191 = *&v166[8 * v190];
              v192 = v175[v190];
              v80 = v192 <= v191;
              v193 = v192 - v191;
              if (!v80)
              {
                v194 = (v162 + 4 * v191);
                v195 = (v169 + v191);
                do
                {
                  v196 = *v195++;
                  if (v196)
                  {
                    v197 = *v194;
                    if (*&a17[4 * *v194] < v55)
                    {
                      *&a17[4 * v197] = v187 + 4;
                      *&v167[4 * v189++] = v197;
                    }
                  }

                  ++v194;
                  --v193;
                }

                while (v193);
              }
            }

            while (v189 >= 1);
          }

          *&v167[4 * v189] = v185;
          if (v189 < 0)
          {
            v186 = v189 + 1;
          }

          else
          {
            v198 = v162;
            v199 = v187 + 5;
            v186 = 1;
            v200 = v171;
            do
            {
              v201 = *&v167[4 * --v186];
              v202 = *&v166[8 * v201];
              v203 = v175[v201];
              v80 = v203 <= v202;
              v204 = v203 - v202;
              if (!v80)
              {
                v205 = (v198 + 4 * v202);
                v206 = (v169 + v202);
                do
                {
                  v207 = *v206++;
                  if ((v207 & 2) != 0)
                  {
                    v208 = *v205;
                    v209 = *&a17[4 * *v205];
                    v210 = __OFSUB__(v209, v55);
                    v211 = v209 - v55;
                    if (v211 < 0 != v210)
                    {
                      *&a17[4 * v208] = v199;
                      *&v167[4 * v186++] = v208;
                    }

                    else
                    {
                      if (v200 < v208)
                      {
                        v208 = v200;
                      }

                      if (v211 == 1)
                      {
                        v200 = v208;
                      }
                    }
                  }

                  ++v205;
                  --v204;
                }

                while (v204);
              }
            }

            while (v186 >= 1);
            if (v200 < v171)
            {
              if (v425 >= v435)
              {
                v213 = v433;
                v214 = v425 - v433;
                v426 = 0xAAAAAAAAAAAAAAABLL * ((v425 - v433) >> 2);
                v215 = v426 + 1;
                if (v426 + 1 > 0x1555555555555555)
                {
                  sub_2366FB858();
                }

                if (0x5555555555555556 * ((v435 - v433) >> 2) > v215)
                {
                  v215 = 0x5555555555555556 * ((v435 - v433) >> 2);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v435 - v433) >> 2) >= 0xAAAAAAAAAAAAAAALL)
                {
                  v216 = 0x1555555555555555;
                }

                else
                {
                  v216 = v215;
                }

                v441 = &v436;
                if (v216)
                {
                  v409 = v216;
                  v217 = sub_2366FB914(&v436, v216);
                  v213 = v433;
                  v214 = v434 - v433;
                  v216 = v409;
                }

                else
                {
                  v217 = 0;
                }

                v218 = v217 + 12 * v426;
                v410 = v217 + 12 * v216;
                *v218 = v185;
                *(v218 + 4) = v200;
                *(v218 + 8) = 1;
                v427 = (v218 + 12);
                v397 = (v218 - v214);
                memcpy((v218 - v214), v213, v214);
                v219 = v433;
                v220 = v435;
                v433 = v397;
                v434 = v427;
                v435 = v410;
                v439 = v219;
                v440 = v220;
                v437 = v219;
                v438 = v219;
                sub_2366FB9A0(&v437);
                v212 = v427;
                v170 = v416;
                v171 = v389;
                v166 = v406;
              }

              else
              {
                *v425 = v185;
                *(v425 + 1) = v200;
                *(v425 + 8) = 1;
                v212 = (v425 + 12);
              }

              v425 = v212;
              v434 = v212;
              *&v170[4 * v185] = v200;
            }

            v162 = v198;
          }
        }

        else
        {
          v55 = v187;
        }

        ++v185;
        v187 = v55;
      }

      while (v185 != v389);
    }

    if (v55 >= 2147483628)
    {
      bzero(a17, v395);
      LODWORD(v55) = 1;
    }

    v221 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v425 - v433) >> 2));
    if (v425 == v433)
    {
      v222 = 0;
    }

    else
    {
      v222 = v221;
    }

    sub_2366FBA18(v433, v425, v222, 1);
    v223 = a12[v389] - 0x5555555555555555 * ((v434 - v433) >> 2);
    v224 = (*(a16 + 24))(4 * v223);
    v225 = (*(a16 + 24))(v223);
    v423 = v162;
    v226 = v55 + 3;
    v227 = a12;
    v228 = v416;
    if (v389 < 1)
    {
      v230 = 0;
    }

    else
    {
      v229 = 0;
      v230 = 0;
      v231 = 0;
      v232 = *a12;
      v233 = v433;
      v234 = 0xAAAAAAAAAAAAAAABLL * ((v434 - v433) >> 2);
      v235 = a14;
      v428 = v433;
      do
      {
        v227[v229] = v230;
        v236 = v226;
        if (v226 > 2147483630)
        {
          v237 = v234;
          bzero(a17, v395);
          v234 = v237;
          v233 = v428;
          v228 = v416;
          v227 = a12;
          v235 = a14;
          v236 = 1;
        }

        v226 = v236 + 1;
        v238 = v229 + 1;
        v239 = v227[v229 + 1];
        if (v232 < v239)
        {
          v240 = *a13;
          do
          {
            v241 = *(v240 + 4 * v232);
            if (v229 <= *&v228[4 * v241])
            {
              *(v224 + 4 * v230) = v241;
              *(v225 + v230) = *(*v235 + v232);
              *&a17[4 * v241] = v226;
              ++v230;
            }

            ++v232;
          }

          while (v239 != v232);
        }

        while (v231 < v234)
        {
          v242 = v233 + 3 * v231;
          if (v229 < v242[1])
          {
            break;
          }

          v243 = *v242;
          if (*&a17[4 * v243] <= v236)
          {
            *(v224 + 4 * v230) = v243;
            *(v225 + v230++) = 3;
            *&a17[4 * v243] = v226;
          }

          else
          {
            v244 = v230;
            while (v244 > v227[v229])
            {
              v245 = v244 - 1;
              v246 = *(v224 - 4 + 4 * v244--);
              if (v246 == v243)
              {
                *(v225 + v245) = 3;
                break;
              }
            }
          }

          ++v231;
        }

        v232 = v239;
        ++v229;
      }

      while (v238 != v389);
    }

    v227[v389] = v230;
    (*(a16 + 32))(v423);
    (*(a16 + 32))(*a13);
    (*(a16 + 32))(*a14);
    *a13 = v224;
    *a14 = v225;
    if (v433)
    {
      v434 = v433;
      (*(v436 + 32))();
    }

    if (a1 == 83)
    {
      v247 = v431;
      memset_pattern4(__b, &v431, 4 * v431);
      v248 = 4 * a4[v247];
      v249 = (v248 + 7) & 0xFFFFFFFFFFFFFFF8;
      v250 = &v393[v249];
      v390 = v248;
      bzero(v393, v248);
      bzero(&v393[v249], 8 * v247 + 16);
      v251 = a16;
      v252 = (*(a16 + 24))(5 * a12[v247]);
      v253 = v252;
      v392 = v247;
      if (v247 < 1)
      {
        v349 = 0;
        v348 = 0;
        *(v250 + 1) = 0;
        v433 = 0;
        v434 = 0;
        v435 = 0;
        v436 = a16;
      }

      else
      {
        v254 = v249;
        v255 = 0;
        v405 = &v250[8 * v247 + 16];
        v407 = &v393[v249];
        v256 = v252 + 4 * a12[v247];
        v257 = v250 + 16;
        v258 = *a12;
        v260 = a5;
        v259 = v415;
        v261 = v247;
        v262 = v403;
        do
        {
          v263 = v255++;
          v264 = a12[v255];
          if (v258 < v264)
          {
            v265 = *a13;
            v266 = *a14;
            do
            {
              v267 = *(v265 + 4 * v258);
              ++*&v257[8 * v267];
              if (*(v266 + v258) == 3)
              {
                __b[v267] = v263;
              }

              ++v258;
              v264 = a12[v255];
            }

            while (v258 < v264);
          }

          v258 = v264;
        }

        while (v255 != v247);
        v268 = 0;
        *(v407 + 1) = 0;
        v269 = v407 + 8;
        v270 = v254 + 16;
        v271 = v247;
        v272 = v393;
        do
        {
          v268 += *&v393[v270];
          *&v393[v270] = v268;
          v270 += 8;
          --v271;
        }

        while (v271);
        v273 = 0;
        v274 = *a12;
        do
        {
          v275 = v273++;
          v276 = a12[v273];
          if (v274 < v276)
          {
            v277 = *a13;
            v278 = *a14;
            do
            {
              v279 = *(v277 + 4 * v274);
              v280 = *&v269[8 * v279];
              *(v253 + 4 * v280) = v275;
              *(v256 + v280) = *(v278 + v274);
              *&v269[8 * v279] = v280 + 1;
              ++v274;
              v276 = a12[v273];
            }

            while (v274 < v276);
          }

          v274 = v276;
        }

        while (v273 != v247);
        v429 = v407 + 8;
        v281 = 0;
        v282 = 0;
        v433 = 0;
        v434 = 0;
        v435 = 0;
        v436 = a16;
        v283 = 1;
        v284 = __b;
        v286 = v405;
        v285 = v407;
        do
        {
          v287 = v284[v281];
          if (v287 == v261)
          {
            v288 = v281 + 1;
          }

          else
          {
            if (v283 > 2147483630)
            {
              bzero(v272, v390);
              v286 = v405;
              v285 = v407;
              v284 = __b;
              v260 = a5;
              v259 = v415;
              v283 = 1;
            }

            v289 = v283 + 1;
            v290 = *(v260 + 8 * v281);
            v391 = v281 + 1;
            v291 = *(v260 + 8 * (v281 + 1));
            v80 = v291 <= v290;
            v292 = v291 - v290;
            if (!v80)
            {
              v293 = (v262 + 4 * v290);
              do
              {
                v294 = *v293++;
                v295 = *(v259 + 4 * v294);
                if (v295 < v284[v281])
                {
                  *(v272 + v295) = v289;
                }

                --v292;
              }

              while (v292);
            }

            v419 = v281;
            v417 = v283;
            v411 = v283 + 1;
            if (v226 > 2147483630)
            {
              bzero(a17, v395);
              v289 = v411;
              v283 = v417;
              v286 = v405;
              v285 = v407;
              v284 = __b;
              v259 = v415;
              v226 = 1;
            }

            v296 = v226 + 1;
            v297 = v282 + 1;
            *&v286[4 * v282] = v419;
            if ((v282 & 0x80000000) == 0)
            {
              do
              {
                v298 = *&v286[4 * --v297];
                v299 = *&v285[8 * v298];
                v300 = *&v429[8 * v298];
                v301 = v300 - v299;
                if (v300 <= v299)
                {
                  if (v284[v298] > v287)
                  {
LABEL_283:
                    v308 = v434;
                    if (v434 >= v435)
                    {
                      v310 = v433;
                      v311 = v434 - v433;
                      v312 = 0xAAAAAAAAAAAAAAABLL * ((v434 - v433) >> 2);
                      v313 = v312 + 1;
                      if (v312 + 1 > 0x1555555555555555)
                      {
                        sub_2366FB858();
                      }

                      if (0x5555555555555556 * ((v435 - v433) >> 2) > v313)
                      {
                        v313 = 0x5555555555555556 * ((v435 - v433) >> 2);
                      }

                      if (0xAAAAAAAAAAAAAAABLL * ((v435 - v433) >> 2) >= 0xAAAAAAAAAAAAAAALL)
                      {
                        v314 = 0x1555555555555555;
                      }

                      else
                      {
                        v314 = v313;
                      }

                      v441 = &v436;
                      if (v314)
                      {
                        v398 = v314;
                        v315 = sub_2366FB914(&v436, v314);
                        v310 = v433;
                        v311 = v434 - v433;
                        v314 = v398;
                      }

                      else
                      {
                        v315 = 0;
                      }

                      v316 = v315 + 12 * v312;
                      v399 = v315 + 12 * v314;
                      *v316 = v298;
                      *(v316 + 4) = v287;
                      *(v316 + 8) = 1;
                      v309 = (v316 + 12);
                      v317 = (v316 - v311);
                      memcpy((v316 - v311), v310, v311);
                      v318 = v433;
                      v319 = v435;
                      v433 = v317;
                      v434 = v309;
                      v435 = v399;
                      v439 = v318;
                      v440 = v319;
                      v437 = v318;
                      v438 = v318;
                      sub_2366FB9A0(&v437);
                      v259 = v415;
                      v272 = v393;
                      v284 = __b;
                      v286 = v405;
                      v285 = v407;
                      v283 = v417;
                      v289 = v411;
                    }

                    else
                    {
                      *v434 = v298;
                      *(v308 + 1) = v287;
                      v309 = (v308 + 12);
                      *(v308 + 8) = 1;
                    }

                    v434 = v309;
                  }
                }

                else
                {
                  v302 = *&v285[8 * v298];
                  do
                  {
                    v303 = *(v253 + 4 * v302);
                    if (*&a17[4 * v303] <= v226 && v303 < v287 && (*(v256 + v302) & 1) != 0)
                    {
                      *&v286[4 * v297++] = v303;
                      *&a17[4 * v303] = v296;
                    }

                    ++v302;
                  }

                  while (v300 != v302);
                  if (v284[v298] > v287)
                  {
                    v305 = (v253 + 4 * v299);
                    v306 = (v256 + v299);
                    while (1)
                    {
                      v307 = *v306++;
                      if (v307 == 2 && *(v272 + *v305) > v283)
                      {
                        break;
                      }

                      ++v305;
                      if (!--v301)
                      {
                        goto LABEL_283;
                      }
                    }
                  }
                }
              }

              while (v297 > 0);
            }

            if (v283 > 2147483629)
            {
              bzero(v272, v390);
              v286 = v405;
              v285 = v407;
              v284 = __b;
              v259 = v415;
              v289 = 1;
            }

            v283 = v289 + 1;
            v320 = *(v394 + 8 * v419);
            v321 = *(v394 + 8 * v391);
            v80 = v321 <= v320;
            v322 = v321 - v320;
            if (!v80)
            {
              v323 = (v402 + 4 * v320);
              do
              {
                v324 = *v323++;
                v325 = *(v259 + 4 * v324);
                if (v325 < v284[v419])
                {
                  *(v272 + v325) = v283;
                }

                --v322;
              }

              while (v322);
            }

            v418 = v289 + 1;
            v412 = v289;
            if (v226 > 2147483629)
            {
              bzero(a17, v395);
              v289 = v412;
              v283 = v418;
              v286 = v405;
              v285 = v407;
              v284 = __b;
              v259 = v415;
              v296 = 1;
            }

            v226 = v296 + 1;
            v282 = v297 + 1;
            *&v286[4 * v297] = v419;
            v260 = a5;
            if ((v297 & 0x80000000) == 0)
            {
              do
              {
                v326 = *&v286[4 * --v282];
                v327 = *&v285[8 * v326];
                v328 = *&v429[8 * v326];
                v329 = v328 - v327;
                if (v328 <= v327)
                {
                  if (v284[v326] > v287)
                  {
LABEL_323:
                    v336 = v434;
                    if (v434 >= v435)
                    {
                      v338 = v433;
                      v339 = v434 - v433;
                      v340 = 0xAAAAAAAAAAAAAAABLL * ((v434 - v433) >> 2);
                      v341 = v340 + 1;
                      if (v340 + 1 > 0x1555555555555555)
                      {
                        sub_2366FB858();
                      }

                      if (0x5555555555555556 * ((v435 - v433) >> 2) > v341)
                      {
                        v341 = 0x5555555555555556 * ((v435 - v433) >> 2);
                      }

                      if (0xAAAAAAAAAAAAAAABLL * ((v435 - v433) >> 2) >= 0xAAAAAAAAAAAAAAALL)
                      {
                        v342 = 0x1555555555555555;
                      }

                      else
                      {
                        v342 = v341;
                      }

                      v441 = &v436;
                      if (v342)
                      {
                        v420 = v342;
                        v343 = sub_2366FB914(&v436, v342);
                        v338 = v433;
                        v339 = v434 - v433;
                        v342 = v420;
                      }

                      else
                      {
                        v343 = 0;
                      }

                      v344 = v343 + 12 * v340;
                      v421 = v343 + 12 * v342;
                      *v344 = v326;
                      *(v344 + 4) = v287;
                      *(v344 + 8) = 0;
                      v337 = (v344 + 12);
                      v345 = (v344 - v339);
                      memcpy((v344 - v339), v338, v339);
                      v346 = v433;
                      v347 = v435;
                      v433 = v345;
                      v434 = v337;
                      v435 = v421;
                      v439 = v346;
                      v440 = v347;
                      v437 = v346;
                      v438 = v346;
                      sub_2366FB9A0(&v437);
                      v260 = a5;
                      v259 = v415;
                      v272 = v393;
                      v284 = __b;
                      v286 = v405;
                      v285 = v407;
                      v283 = v418;
                      v289 = v412;
                    }

                    else
                    {
                      *v434 = v326;
                      *(v336 + 1) = v287;
                      v337 = (v336 + 12);
                      *(v336 + 8) = 0;
                    }

                    v434 = v337;
                  }
                }

                else
                {
                  v330 = *&v285[8 * v326];
                  do
                  {
                    v331 = *(v253 + 4 * v330);
                    if (*&a17[4 * v331] <= v296 && v331 < v287 && (*(v256 + v330) & 2) != 0)
                    {
                      *&v286[4 * v282++] = v331;
                      *&a17[4 * v331] = v226;
                    }

                    ++v330;
                  }

                  while (v328 != v330);
                  if (v284[v326] > v287)
                  {
                    v333 = (v253 + 4 * v327);
                    v334 = (v256 + v327);
                    while (1)
                    {
                      v335 = *v334++;
                      if (v335 == 1 && *(v272 + *v333) > v289)
                      {
                        break;
                      }

                      ++v333;
                      if (!--v329)
                      {
                        goto LABEL_323;
                      }
                    }
                  }
                }
              }

              while (v282 > 0);
            }

            v262 = v403;
            v288 = v391;
            v261 = v392;
          }

          v281 = v288;
        }

        while (v288 != v261);
        v348 = v433;
        v349 = v434;
        v251 = a16;
      }

      v350 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v349 - v348) >> 2));
      if (v349 == v348)
      {
        v351 = 0;
      }

      else
      {
        v351 = v350;
      }

      sub_2366FBA18(v348, v349, v351, 1);
      v352 = a12[v392] - 0x5555555555555555 * ((v434 - v433) >> 2);
      v353 = (*(v251 + 24))(4 * v352);
      v354 = (*(v251 + 24))(v352);
      v355 = a13;
      v356 = a14;
      v357 = __b;
      if (v392 < 1)
      {
        v379 = 0;
      }

      else
      {
        v358 = 0;
        v359 = 0;
        LODWORD(v360) = 0;
        v361 = *a12;
        v362 = v433;
        v363 = 0xAAAAAAAAAAAAAAABLL * ((v434 - v433) >> 2);
        v430 = v363;
        do
        {
          a12[v358] = v359;
          v364 = v226;
          if (v226 > 2147483630)
          {
            v365 = v362;
            bzero(a17, v395);
            v357 = __b;
            v363 = v430;
            v362 = v365;
            v356 = a14;
            v355 = a13;
            v364 = 1;
          }

          v226 = v364 + 1;
          v366 = v358 + 1;
          v367 = a12[v358 + 1];
          if (v361 < v367)
          {
            v368 = *v355;
            do
            {
              v369 = *(v368 + 4 * v361);
              if (v358 <= v357[v369])
              {
                *(v353 + 4 * v359) = v369;
                *(v354 + v359) = *(*v356 + v361);
                *&a17[4 * v369] = v226;
                ++v359;
              }

              ++v361;
            }

            while (v367 != v361);
          }

          if (v363 > v360)
          {
            v360 = v360;
            while (1)
            {
              v370 = v362 + 3 * v360;
              v371 = v370[1];
              if (v358 < v371)
              {
                break;
              }

              v372 = *v370;
              if (v357[*v370] >= v371)
              {
                v373 = *(v370 + 8);
                v374 = (v373 & 1) != 0 ? 2 : 1;
                if (*&a17[4 * v372] <= v364)
                {
                  goto LABEL_376;
                }

                v375 = a12[v358];
                if (v375 >= v359)
                {
                  goto LABEL_376;
                }

                v376 = 0;
                v377 = v359 - 1;
                v378 = -1;
                do
                {
                  if (*(v353 + 4 * v377) == v372)
                  {
                    v376 |= *(v354 + v377) == v374;
                    if (*(v354 + v377) == v374)
                    {
                      if ((v373 & 1) == 0)
                      {
                        v356 = a14;
                        v357 = __b;
                        goto LABEL_377;
                      }
                    }

                    else
                    {
                      v378 = v377;
                    }
                  }

                  v80 = v377-- <= v375;
                }

                while (!v80);
                if (!(v376 & 1 | (v378 == -1)) && (v373 & 1) != 0)
                {
                  v374 = *(v354 + v378);
                  *(v354 + v378) = 2;
                  v356 = a14;
                  v357 = __b;
                  goto LABEL_376;
                }

                if (!(v376 & 1 | (v378 == -1)))
                {
                  v374 = 1;
                }

                v356 = a14;
                v357 = __b;
                if ((v376 & 1) == 0)
                {
LABEL_376:
                  *(v353 + 4 * v359) = v372;
                  *(v354 + v359++) = v374;
                  *&a17[4 * v372] = v226;
                }
              }

LABEL_377:
              if (++v360 == v363)
              {
                LODWORD(v360) = v363;
                break;
              }
            }
          }

          v361 = v367;
          ++v358;
        }

        while (v366 != v392);
        v379 = v359;
        v251 = a16;
      }

      a12[v392] = v379;
      (*(v251 + 32))(*v355);
      (*(v251 + 32))(*a14);
      *a13 = v353;
      *a14 = v354;
      (*(v251 + 32))(v253);
      if (v433)
      {
        v434 = v433;
        (*(v436 + 32))();
      }

      v380 = v392;
      if (v392 >= 1)
      {
        v381 = a4[v392];
        do
        {
          v382 = v380--;
          LODWORD(v383) = a4[v380];
          if (v381 > v383)
          {
            v384 = v381;
            v385 = __b[v380];
            do
            {
              __b[v384 - 1] = v385;
              v383 = a4[v380];
              --v384;
            }

            while (v384 > v383);
          }

          v381 = v383;
        }

        while (v382 >= 2);
      }
    }
  }
}

void sub_2366FAA9C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 160);
  if (v3)
  {
    *(v1 - 152) = v3;
    (*(*(v1 - 136) + 32))();
  }

  _Unwind_Resume(exception_object);
}

void sub_2366FAB3C(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 240) + 8 * *(a1 + 168));
  v5 = (*(a1 + 24))(12 * v4);
  v6 = v5 + 4 * v4;
  *(a1 + 264) = v5;
  *(a1 + 272) = v6;
  *(a1 + 280) = v6 + 4 * v4;
  v7 = *(a1 + 168);
  bzero(a2, 8 * v7 + 16);
  v8 = (*(a1 + 24))(5 * *(*(a1 + 240) + 8 * *(a1 + 168)));
  v9 = *(a1 + 168);
  if (v9 <= 0)
  {
    a2[1] = 0;
  }

  else
  {
    v10 = 0;
    v11 = &a2[v7 + 2];
    v12 = *(a1 + 240);
    v13 = &v8[v12[v9]];
    v14 = a2 + 2;
    v15 = *v12;
    do
    {
      v16 = v12[++v10];
      if (v15 < v16)
      {
        v17 = *(a1 + 248);
        do
        {
          ++v14[*(v17 + 4 * v15++)];
          v16 = v12[v10];
        }

        while (v15 < v16);
      }

      v15 = v16;
    }

    while (v10 != v9);
    v18 = 0;
    a2[1] = 0;
    v19 = a2 + 1;
    v20 = v9;
    do
    {
      v18 += *v14;
      *v14++ = v18;
      --v20;
    }

    while (v20);
    v21 = 0;
    v22 = *v12;
    do
    {
      v23 = v21++;
      v24 = v12[v21];
      if (v22 < v24)
      {
        v25 = *(a1 + 248);
        v26 = *(a1 + 256);
        do
        {
          v27 = *(v25 + 4 * v22);
          v28 = v19[v27];
          v8[v28] = v23;
          v13[v28] = *(v26 + v22);
          v19[v27] = v28 + 1;
          ++v22;
          v24 = v12[v21];
        }

        while (v22 < v24);
        LODWORD(v9) = *(a1 + 168);
      }

      v22 = v24;
    }

    while (v21 < v9);
    if (v9 >= 1)
    {
      v29 = 0;
      v30 = 4 * *(a1 + 60) + 7;
      v31 = v11 + (v30 & 0xFFFFFFFFFFFFFFF8);
      v32 = &v31[v30 & 0xFFFFFFFFFFFFFFF8];
      v34 = *(a1 + 184);
      v33 = *(a1 + 192);
      v36 = *(a1 + 200);
      v35 = *(a1 + 208);
      v37 = *v34;
      v38 = &a2[v7];
      v39 = &v38[2 * (v30 >> 3) + 2];
      v40 = v38 + (v30 & 0xFFFFFFFFFFFFFFF8);
      v142 = v40 + 28;
      v143 = v38 + 7;
      v41 = v40 + 20;
      v147 = v38 + 20;
      v42 = vdupq_n_s64(4uLL);
      v144 = v33;
      v145 = a2;
      while (1)
      {
        v43 = v29;
        v44 = v33 + 4 * v37;
        v146 = v34[++v29];
        v45 = v146 - v37;
        if (v146 - v37 >= 1)
        {
          v46 = (v45 + 3) & 0xFFFFFFFC;
          v47 = vdupq_n_s64((v45 & 0x7FFFFFFF) - 1);
          v48 = v143;
          v49 = xmmword_23681F920;
          v50 = xmmword_23681F910;
          do
          {
            v51 = vmovn_s64(vcgeq_u64(v47, v49));
            if (vuzp1_s16(v51, 2).u8[0])
            {
              *(v48 - 3) = v9;
            }

            if (vuzp1_s16(v51, 2).i8[2])
            {
              *(v48 - 2) = v9;
            }

            if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v47, *&v50))).i32[1])
            {
              *(v48 - 1) = v9;
              *v48 = v9;
            }

            v50 = vaddq_s64(v50, v42);
            v49 = vaddq_s64(v49, v42);
            v48 += 4;
            v46 -= 4;
          }

          while (v46);
          v52 = 0;
          do
          {
            *&v32[4 * *(v44 + 4 * v52)] = v52;
            ++v52;
          }

          while ((v45 & 0x7FFFFFFF) != v52);
        }

        v53 = a2[v43];
        v54 = a2[v29];
        v55 = v53;
        if (v53 < v54)
        {
          do
          {
            if (v13[v55])
            {
              v56 = v8[v55];
              v57 = (*(a1 + 176) + 4 * v56);
              v58 = v57[1];
              v59 = *v57;
              if (v59 < v58)
              {
                v60 = (v39 + 4 * v59);
                do
                {
                  v62 = *v60++;
                  v61 = v62;
                  if ((v62 & 0x80000000) == 0 && v61 < v45 && v59 == *(v44 + 4 * v61))
                  {
                    v63 = *(v11 + v61);
                    if (v56 < v63)
                    {
                      v63 = v56;
                    }

                    *(v11 + v61) = v63;
                    v58 = v57[1];
                  }

                  ++v59;
                }

                while (v59 < v58);
              }

              v64 = &v34[v56];
              v66 = *v64;
              v65 = v64[1];
              v67 = v65 <= v66;
              v68 = v65 - v66;
              if (!v67)
              {
                v69 = (v33 + 4 * v66);
                do
                {
                  v71 = *v69++;
                  v70 = v71;
                  v72 = *&v32[4 * v71];
                  if ((v72 & 0x80000000) == 0 && v72 < v45 && *(v44 + 4 * v72) == v70)
                  {
                    v73 = *(v11 + v72);
                    if (v56 < v73)
                    {
                      v73 = v56;
                    }

                    *(v11 + v72) = v73;
                  }

                  --v68;
                }

                while (v68);
              }
            }

            ++v55;
          }

          while (v55 != v54);
        }

        v74 = *(v36 + 8 * v43);
        v75 = v35 + 4 * v74;
        v76 = *(v36 + 8 * v29) - v74;
        if (v76 >= 1)
        {
          v77 = *(a1 + 168);
          v78 = (v76 + 3) & 0xFFFFFFFC;
          v79 = vdupq_n_s64((v76 & 0x7FFFFFFF) - 1);
          v80 = v142;
          v81 = xmmword_23681F920;
          v82 = xmmword_23681F910;
          do
          {
            v83 = vmovn_s64(vcgeq_u64(v79, v81));
            if (vuzp1_s16(v83, 2).u8[0])
            {
              *(v80 - 3) = v77;
            }

            if (vuzp1_s16(v83, 2).i8[2])
            {
              *(v80 - 2) = v77;
            }

            if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v79, *&v82))).i32[1])
            {
              *(v80 - 1) = v77;
              *v80 = v77;
            }

            v84 = vdupq_n_s64(4uLL);
            v82 = vaddq_s64(v82, v84);
            v81 = vaddq_s64(v81, v84);
            v80 += 4;
            v78 -= 4;
          }

          while (v78);
          v85 = 0;
          do
          {
            *&v32[4 * *(v75 + 4 * v85)] = v85;
            ++v85;
          }

          while ((v76 & 0x7FFFFFFF) != v85);
        }

        v86 = v53;
        if (v53 < v54)
        {
          do
          {
            if ((v13[v86] & 2) != 0)
            {
              v87 = v8[v86];
              v88 = (*(a1 + 176) + 4 * v87);
              v89 = v88[1];
              v90 = *v88;
              if (v90 < v89)
              {
                v91 = (v39 + 4 * v90);
                do
                {
                  v93 = *v91++;
                  v92 = v93;
                  if ((v93 & 0x80000000) == 0 && v92 < v76 && v90 == *(v75 + 4 * v92))
                  {
                    v94 = *&v31[4 * v92];
                    if (v87 < v94)
                    {
                      v94 = v87;
                    }

                    *&v31[4 * v92] = v94;
                    v89 = v88[1];
                  }

                  ++v90;
                }

                while (v90 < v89);
              }

              v95 = (v36 + 8 * v87);
              v97 = *v95;
              v96 = v95[1];
              v67 = v96 <= v97;
              v98 = v96 - v97;
              if (!v67)
              {
                v99 = (v35 + 4 * v97);
                do
                {
                  v101 = *v99++;
                  v100 = v101;
                  v102 = *&v32[4 * v101];
                  if ((v102 & 0x80000000) == 0 && v102 < v76 && *(v75 + 4 * v102) == v100)
                  {
                    v103 = *&v31[4 * v102];
                    if (v87 < v103)
                    {
                      v103 = v87;
                    }

                    *&v31[4 * v102] = v103;
                  }

                  --v98;
                }

                while (v98);
              }
            }

            ++v86;
          }

          while (v86 != v54);
        }

        if (v45 >= 1)
        {
          v104 = 0;
          v105 = 1;
          do
          {
            if (v104)
            {
              v106 = v105;
              do
              {
                v107 = v106 - 1;
                v108 = v106 - 2;
                v109 = *(v11 + v108);
                v110 = *(v11 + v107);
                if (v109 <= v110)
                {
                  break;
                }

                *(v11 + v108) = v110;
                *(v11 + v107) = v109;
                v111 = *(v44 + 4 * v108);
                *(v44 + 4 * v108) = *(v44 + 4 * v107);
                *(v44 + 4 * v107) = v111;
                v106 = v107;
              }

              while (v107 > 1);
            }

            ++v104;
            ++v105;
          }

          while (v104 != v45);
        }

        if (v76 >= 1)
        {
          v112 = 0;
          v113 = 1;
          do
          {
            if (v112)
            {
              v114 = v113;
              do
              {
                v115 = v114 - 1;
                v116 = v114 - 2;
                v117 = *&v31[4 * v116];
                v118 = *&v31[4 * v115];
                if (v117 <= v118)
                {
                  break;
                }

                *&v31[4 * v116] = v118;
                *&v31[4 * v115] = v117;
                v119 = *(v75 + 4 * v116);
                *(v75 + 4 * v116) = *(v75 + 4 * v115);
                *(v75 + 4 * v115) = v119;
                v114 = v115;
              }

              while (v115 > 1);
            }

            ++v112;
            ++v113;
          }

          while (v112 != v76);
        }

        if (v53 < v54)
        {
          break;
        }

LABEL_154:
        v9 = *(a1 + 168);
        v33 = v144;
        a2 = v145;
        v37 = v146;
        if (v29 >= v9)
        {
          goto LABEL_157;
        }
      }

      v120 = v45 & 0x7FFFFFFF;
      v121 = v76 & 0x7FFFFFFF;
      while (1)
      {
        v122 = v8[v53];
        v123 = &v12[v122];
        v125 = *v123;
        v124 = v123[1];
        if (*v123 < v124)
        {
          while (v43 != *(*(a1 + 248) + 4 * v125) || *(*(a1 + 256) + v125) != v13[v53])
          {
            if (v124 == ++v125)
            {
              v125 = v123[1];
              break;
            }
          }
        }

        v126 = v13[v53];
        if ((v126 - 2) < 2)
        {
          break;
        }

        if (v126 == 1)
        {
          if (v45 < 1)
          {
            LODWORD(v128) = 0;
          }

          else
          {
            v128 = 0;
            while (*(v11 + v128) != v122)
            {
              if (v120 == ++v128)
              {
                LODWORD(v128) = v45;
                break;
              }
            }
          }

          v136 = *(a1 + 264);
          *(v136 + 4 * v125) = v128;
          if (v76 < 1)
          {
            LODWORD(v137) = 0;
          }

          else
          {
            v137 = 0;
            while (*&v31[4 * v137] <= v122)
            {
              if (v121 == ++v137)
              {
                LODWORD(v137) = v76;
                break;
              }
            }
          }

          *(*(a1 + 272) + 4 * v125) = v137;
          if (v45 <= v128 + 1)
          {
            v138 = v128 + 1;
          }

          else
          {
            v138 = v45;
          }

          v139 = &v147[4 * v128];
          while (1)
          {
            LODWORD(v128) = v128 + 1;
            if (v128 >= v45)
            {
              break;
            }

            v140 = *v139;
            v139 += 4;
            if (v140 != v122)
            {
              goto LABEL_148;
            }
          }

          LODWORD(v128) = v138;
LABEL_148:
          if (v128 >= v45)
          {
            v141 = v45;
          }

          else
          {
            v141 = v128;
          }

          v135 = v141 - *(v136 + 4 * v125);
          goto LABEL_152;
        }

LABEL_153:
        if (++v53 == v54)
        {
          goto LABEL_154;
        }
      }

      if (v45 < 1)
      {
        LODWORD(v127) = 0;
      }

      else
      {
        v127 = 0;
        while (*(v11 + v127) < v122)
        {
          if (v120 == ++v127)
          {
            LODWORD(v127) = v45;
            break;
          }
        }
      }

      *(*(a1 + 264) + 4 * v125) = v127;
      if (v76 < 1)
      {
        LODWORD(v129) = 0;
      }

      else
      {
        v129 = 0;
        while (*&v31[4 * v129] != v122)
        {
          if (v121 == ++v129)
          {
            LODWORD(v129) = v76;
            break;
          }
        }
      }

      *(*(a1 + 272) + 4 * v125) = v129;
      if (v76 <= v129 + 1)
      {
        v130 = v129 + 1;
      }

      else
      {
        v130 = v76;
      }

      v131 = &v41[4 * v129];
      v132 = v129;
      while (++v132 < v76)
      {
        v133 = *v131++;
        if (v133 != v122)
        {
          goto LABEL_129;
        }
      }

      v132 = v130;
LABEL_129:
      if (v132 >= v76)
      {
        v134 = v76;
      }

      else
      {
        v134 = v132;
      }

      v135 = v134 - v129;
LABEL_152:
      *(*(a1 + 280) + 4 * v125) = v135;
      goto LABEL_153;
    }
  }

LABEL_157:

  free(v8);
}

void sub_2366FB348(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = (4 * *(a1 + 168) + 11) & 0xFFFFFFFFFFFFFFF8;
  *a2 = 0;
  LODWORD(a2) = *(a1 + 168);
  if (a2 < 1)
  {
    v20 = 0;
    v8 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *(a1 + 112);
    v11 = *(a1 + 176);
    v12 = (*(a1 + 184) + 8);
    v13 = (*(a1 + 200) + 8);
    do
    {
      v14 = *v11;
      if (*v11 >= *(v10 + 4 * (v9 + 1)))
      {
        v7 = 0;
        v6 = 0;
        v2[++v8] = v5;
        v14 = *v11;
        ++v9;
      }

      v15 = v11[1] - v14;
      v16 = *v12 - *(v12 - 1) + v15;
      v17 = *v13 - *(v13 - 1);
      v18 = -3 * (v17 + v15 + v16) + 2 * v15 - 2;
      v19 = ((v18 + v18 * v15) * 0x2AAAAAAAAAAAAAABLL) >> 64;
      v6 += (v19 + (v19 >> 63) + v16 + v16 * (v17 + v15)) * v15;
      v7 += (v17 + v16) * v15;
      if (v6 >> 4 >= 0xC35 && v7 >= 0xA000)
      {
        v7 = 0;
        v6 = 0;
        v2[++v8] = v5 + 1;
      }

      ++v5;
      a2 = *(a1 + 168);
      ++v12;
      ++v11;
      ++v13;
    }

    while (v5 < a2);
    v20 = v2[v8];
  }

  v21 = v2 + v4;
  if (v20 != a2)
  {
    v2[++v8] = a2;
  }

  *(a1 + 336) = v8;
  v22 = 4 * v8 + 4;
  v23 = (*(a1 + 24))(v22 + 24 * v8 + 24);
  v24 = *(a1 + 336);
  v25 = v23 + 8 * v24 + 16;
  *(a1 + 368) = v25;
  v26 = v25 + 8 * v24 + 8;
  *(a1 + 384) = v26;
  v27 = (v26 + 8 * v24);
  *(a1 + 344) = v27;
  *(a1 + 352) = v23;
  memcpy(v27, v2, v22);
  v28 = *(a1 + 336);
  if (v28 >= 1)
  {
    v29 = 0;
    v30 = *(a1 + 344);
    v31 = *v30;
    do
    {
      v32 = v29++;
      LODWORD(v33) = v30[v29];
      if (v31 < v33)
      {
        v34 = v31;
        do
        {
          v2[v34++] = v32;
          v33 = v30[v29];
        }

        while (v34 < v33);
        v28 = *(a1 + 336);
      }

      v31 = v33;
    }

    while (v29 < v28);
  }

  bzero(*(a1 + 352), 8 * v28 + 16);
  v35 = 4 * *(a1 + 168);
  bzero(v21, v35);
  v36 = *(a1 + 352);
  LODWORD(v37) = *(a1 + 336);
  if (v37 <= 0)
  {
    v51 = v36 + 8;
    v40 = 1;
  }

  else
  {
    v38 = 0;
    v39 = (v36 + 16);
    v40 = 1;
    do
    {
      v41 = v40;
      if (v40 > 2147483630)
      {
        bzero(v21, v35);
        v41 = 1;
      }

      v40 = v41 + 1;
      *&v21[4 * v38] = v41 + 1;
      v42 = *(a1 + 344);
      v43 = *(v42 + 4 * v38++);
      v44 = *(v42 + 4 * v38);
      if (v43 < v44)
      {
        v45 = *(a1 + 240);
        v46 = *(v45 + 8 * v43);
        do
        {
          ++v43;
          v47 = *(v45 + 8 * v43);
          if (v46 < v47)
          {
            v48 = *(a1 + 248);
            do
            {
              v49 = v2[*(v48 + 4 * v46)];
              if (*&v21[4 * v49] <= v41)
              {
                ++v39[v49];
                *&v21[4 * v49] = v40;
                v47 = *(v45 + 8 * v43);
              }

              ++v46;
            }

            while (v46 < v47);
            v44 = *(v42 + 4 * v38);
          }

          v46 = v47;
        }

        while (v43 < v44);
      }

      v37 = *(a1 + 336);
    }

    while (v38 < v37);
    v50 = *(a1 + 352);
    v51 = v50 + 8;
    if (v37 >= 1)
    {
      v52 = *(v50 + 8);
      v53 = (v50 + 16);
      v54 = *(a1 + 336);
      do
      {
        v55 = *v39++;
        v52 += v55;
        *v53++ = v52;
        --v54;
      }

      while (v54);
    }
  }

  v56 = malloc_type_malloc(8 * *(v51 + 8 * v37), 0x100004052888210uLL);
  *(a1 + 360) = v56;
  v57 = *(a1 + 336);
  *(a1 + 376) = &v56[4 * *(v51 + 8 * v57)];
  if (v57 <= 0)
  {
    *(*(a1 + 368) + 8 * v57) = 0;
  }

  else
  {
    v58 = 0;
    v59 = 0;
    do
    {
      v60 = v58;
      v61 = v40;
      if (v40 > 2147483630)
      {
        bzero(v21, v35);
        v61 = 1;
      }

      v40 = v61 + 1;
      *&v21[4 * v60] = v61 + 1;
      v62 = *(a1 + 368);
      *(v62 + 8 * v60) = v59;
      v63 = *(a1 + 344);
      v64 = *(v63 + 4 * v60);
      v58 = v60 + 1;
      v65 = *(v63 + 4 * (v60 + 1));
      if (v64 < v65)
      {
        v66 = *(a1 + 240);
        v67 = *(v66 + 8 * v64);
        do
        {
          ++v64;
          v68 = *(v66 + 8 * v64);
          if (v67 < v68)
          {
            v69 = *(a1 + 248);
            do
            {
              v70 = v2[*(v69 + 4 * v67)];
              if (*&v21[4 * v70] <= v61)
              {
                v71 = *(v51 + 8 * v70);
                *(v51 + 8 * v70) = v71 + 1;
                *(*(a1 + 360) + 4 * v71) = v60;
                *(*(a1 + 376) + 4 * v59++) = v70;
                *&v21[4 * v70] = v40;
                v68 = *(v66 + 8 * v64);
              }

              ++v67;
            }

            while (v67 < v68);
            v65 = *(v63 + 4 * v58);
          }

          v67 = v68;
        }

        while (v64 < v65);
      }

      v72 = *(a1 + 336);
    }

    while (v58 < v72);
    *(v62 + 8 * v72) = v59;
    if (v72 >= 1)
    {
      v73 = 0;
      v74 = *(a1 + 344);
      v75 = *(a1 + 384);
      v76 = *v74;
      do
      {
        v77 = v73 + 1;
        v78 = v74[v73 + 1];
        if (v76 >= v78)
        {
          v79 = 0;
        }

        else
        {
          v79 = 0;
          v80 = (*(a1 + 176) + 4 * v76);
          v83 = *v80;
          v82 = v80 + 1;
          v81 = v83;
          v84 = (*(a1 + 184) + 8 * v76);
          v87 = *v84;
          v86 = v84 + 1;
          v85 = v87;
          v88 = (*(a1 + 200) + 8 * v76);
          v91 = *v88;
          v90 = v88 + 1;
          v89 = v91;
          v92 = v78 - v76;
          do
          {
            v94 = *v82++;
            v93 = v94;
            v96 = *v86++;
            v95 = v96;
            v97 = *v90++;
            v79 += (v95 + v93 - v81 + v97 - (v85 + v89)) * (v93 - v81);
            v89 = v97;
            v85 = v95;
            v81 = v93;
            --v92;
          }

          while (v92);
        }

        *(v75 + 8 * v73) = v79;
        v76 = v78;
        ++v73;
      }

      while (v77 != v72);
    }
  }
}

void sub_2366FB884(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2366FB8E0(exception, a1);
  __cxa_throw(exception, off_278A00338, MEMORY[0x277D825F0]);
}

std::logic_error *sub_2366FB8E0(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t sub_2366FB914(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x1555555555555556)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_array_new_length::bad_array_new_length(exception);
    v5 = MEMORY[0x277D82778];
    v6 = MEMORY[0x277D82620];
    goto LABEL_6;
  }

  result = (*(*a1 + 24))(12 * a2);
  if (!result)
  {
    v7 = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(v7);
    v5 = MEMORY[0x277D82788];
    v6 = MEMORY[0x277D826E0];
LABEL_6:
    __cxa_throw(v4, v5, v6);
  }

  return result;
}

uint64_t *sub_2366FB9A0(uint64_t *a1)
{
  v2 = a1[2];
  if (v2 != a1[1])
  {
    a1[2] = (v2 - a1[1] - 12) % 0xCuLL + a1[1];
  }

  v3 = *a1;
  if (*a1)
  {
    (*(*a1[4] + 32))();
  }

  return a1;
}

unint64_t *sub_2366FBA18(unint64_t *result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = (a2 - 12);
    v9 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v9;
          v10 = a2 - v9;
          v11 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v9) >> 2);
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:

                return sub_2366FC53C(v9, (v9 + 12), (a2 - 12));
              case 4:
                result = sub_2366FC53C(v9, (v9 + 12), (v9 + 24));
                v74 = *(a2 - 12);
                v75 = *(v9 + 24);
                if (HIDWORD(v74) == HIDWORD(v75))
                {
                  v76 = v74 < v75;
                }

                else
                {
                  v76 = SHIDWORD(v74) < SHIDWORD(v75);
                }

                if (v76)
                {
                  *(v9 + 24) = v74;
                  *(a2 - 12) = v75;
                  v77 = *(v9 + 28);
                  *(v9 + 28) = *(a2 - 8);
                  *(a2 - 8) = v77;
                  LOBYTE(v77) = *(v9 + 32);
                  *(v9 + 32) = *(a2 - 4);
                  *(a2 - 4) = v77;
                  v78 = *(v9 + 24);
                  v79 = *(v9 + 12);
                  v80 = HIDWORD(v78);
                  v81 = v78 < v79;
                  if (HIDWORD(v78) != HIDWORD(v79))
                  {
                    v81 = SHIDWORD(v78) < SHIDWORD(v79);
                  }

                  if (v81)
                  {
                    *(v9 + 12) = v78;
                    *(v9 + 24) = v79;
                    v82 = *(v9 + 20);
                    v83 = *(v9 + 32);
                    *(v9 + 20) = v83;
                    *(v9 + 32) = v82;
                    v84 = *(v9 + 12);
                    v85 = *v9;
                    v86 = HIDWORD(*v9);
                    if (HIDWORD(v84) == v86 ? v84 < *v9 : SHIDWORD(v84) < v86)
                    {
                      *v9 = v84;
                      *(v9 + 4) = v80;
                      *(v9 + 12) = v85;
                      *(v9 + 16) = v86;
                      v88 = *(v9 + 8);
                      *(v9 + 8) = v83;
                      *(v9 + 20) = v88;
                    }
                  }
                }

                return result;
              case 5:

                return sub_2366FC6E0(v9, v9 + 12, v9 + 24, (v9 + 36), a2 - 12);
            }
          }

          else
          {
            if (v11 < 2)
            {
              return result;
            }

            if (v11 == 2)
            {
              v70 = *(a2 - 12);
              v71 = *v9;
              if (HIDWORD(v70) == HIDWORD(v71))
              {
                v72 = v70 < *v9;
              }

              else
              {
                v72 = SHIDWORD(v70) < HIDWORD(*v9);
              }

              if (v72)
              {
                *v9 = v70;
                *(a2 - 12) = v71;
                v73 = *(v9 + 4);
                *(v9 + 4) = *(a2 - 8);
                *(a2 - 8) = v73;
                LOBYTE(v73) = *(v9 + 8);
                *(v9 + 8) = *(a2 - 4);
                *(a2 - 4) = v73;
              }

              return result;
            }
          }

          if (v10 <= 287)
          {
            v89 = v9 + 12;
            v91 = v9 == a2 || v89 == a2;
            if (a4)
            {
              if (!v91)
              {
                v92 = 0;
                v93 = v9;
                do
                {
                  v94 = v89;
                  v95 = *(v93 + 12);
                  v96 = *v93;
                  if (HIDWORD(v95) == HIDWORD(*v93))
                  {
                    v97 = v95 < *v93;
                  }

                  else
                  {
                    v97 = SHIDWORD(v95) < HIDWORD(*v93);
                  }

                  if (v97)
                  {
                    v98 = *(v93 + 20);
                    v99 = v92;
                    while (1)
                    {
                      v100 = v9 + v99;
                      v101 = *(v9 + v99 + 4);
                      *(v100 + 12) = v96;
                      *(v100 + 16) = v101;
                      *(v100 + 20) = *(v9 + v99 + 8);
                      if (!v99)
                      {
                        break;
                      }

                      v96 = *(v100 - 12);
                      v102 = SHIDWORD(v95) < SHIDWORD(v96);
                      if (HIDWORD(v95) == HIDWORD(v96))
                      {
                        v102 = v95 < v96;
                      }

                      v99 -= 12;
                      if (!v102)
                      {
                        v103 = v9 + v99 + 12;
                        goto LABEL_135;
                      }
                    }

                    v103 = v9;
LABEL_135:
                    *v103 = v95;
                    *(v103 + 8) = v98;
                  }

                  v89 = v94 + 12;
                  v92 += 12;
                  v93 = v94;
                }

                while (v94 + 12 != a2);
              }
            }

            else if (!v91)
            {
              v153 = (v9 + 20);
              do
              {
                v154 = v89;
                v155 = *(v7 + 12);
                v156 = *v7;
                if (HIDWORD(v155) == HIDWORD(*v7))
                {
                  v157 = v155 < *v7;
                }

                else
                {
                  v157 = SHIDWORD(v155) < HIDWORD(*v7);
                }

                if (v157)
                {
                  v158 = *(v7 + 20);
                  v159 = v153;
                  do
                  {
                    v160 = v159;
                    v161 = *(v159 - 4);
                    *(v159 - 2) = v156;
                    *(v159 - 1) = v161;
                    v162 = *(v159 - 12);
                    v159 -= 12;
                    *v160 = v162;
                    v156 = *(v160 - 4);
                    v163 = SHIDWORD(v155) < SHIDWORD(v156);
                    if (HIDWORD(v155) == HIDWORD(v156))
                    {
                      v163 = v155 < v156;
                    }
                  }

                  while (v163);
                  *(v159 - 1) = v155;
                  *v159 = v158;
                }

                v89 = v154 + 12;
                v153 += 12;
                v7 = v154;
              }

              while (v154 + 12 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v9 != a2)
            {
              v104 = (v11 - 2) >> 1;
              v105 = v104;
              do
              {
                v106 = v105;
                if (v104 >= v105)
                {
                  v107 = (2 * v105) | 1;
                  v108 = v9 + 12 * v107;
                  v109 = *v108;
                  if (2 * v106 + 2 < v11)
                  {
                    v110 = *(v108 + 12);
                    if (HIDWORD(v109) == HIDWORD(v110) ? v109 < v110 : SHIDWORD(v109) < SHIDWORD(v110))
                    {
                      v109 = *(v108 + 12);
                      v108 += 12;
                      v107 = 2 * v106 + 2;
                    }
                  }

                  v112 = v9 + 12 * v106;
                  v113 = *v112;
                  v114 = HIDWORD(v109);
                  v115 = HIDWORD(*v112);
                  v116 = v109 < *v112;
                  if (v114 != v115)
                  {
                    v116 = v114 < v115;
                  }

                  if (!v116)
                  {
                    v117 = *(v112 + 8);
                    LODWORD(v118) = *v108;
                    do
                    {
                      v119 = v112;
                      v112 = v108;
                      *v119 = v118;
                      *(v119 + 4) = *(v108 + 4);
                      *(v119 + 8) = *(v108 + 8);
                      if (v104 < v107)
                      {
                        break;
                      }

                      v120 = (2 * v107) | 1;
                      v108 = v9 + 12 * v120;
                      v121 = 2 * v107 + 2;
                      v118 = *v108;
                      if (v121 < v11)
                      {
                        v122 = *(v108 + 12);
                        if (HIDWORD(v118) == HIDWORD(v122) ? v118 < v122 : SHIDWORD(v118) < SHIDWORD(v122))
                        {
                          v118 = *(v108 + 12);
                          v108 += 12;
                          v120 = v121;
                        }
                      }

                      v124 = v118 < v113;
                      if (HIDWORD(v118) != v115)
                      {
                        v124 = SHIDWORD(v118) < v115;
                      }

                      v107 = v120;
                    }

                    while (!v124);
                    *v112 = v113;
                    *(v112 + 4) = v115;
                    *(v112 + 8) = v117;
                  }
                }

                v105 = v106 - 1;
              }

              while (v106);
              v125 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 2);
              do
              {
                v126 = 0;
                v127 = *v9;
                v128 = *(v9 + 4);
                v129 = *(v9 + 8);
                v130 = v9;
                do
                {
                  v131 = v130 + 12 * v126;
                  v132 = v131 + 12;
                  v133 = (2 * v126) | 1;
                  v126 = 2 * v126 + 2;
                  if (v126 >= v125)
                  {
                    v126 = v133;
                  }

                  else
                  {
                    v135 = *(v131 + 24);
                    v134 = v131 + 24;
                    v136 = *(v134 - 12);
                    v137 = HIDWORD(v136);
                    v138 = v136 < v135;
                    v139 = v137 < SHIDWORD(v135);
                    if (v137 == HIDWORD(v135))
                    {
                      v140 = v138;
                    }

                    else
                    {
                      v140 = v139;
                    }

                    if (v140)
                    {
                      v132 = v134;
                    }

                    else
                    {
                      v126 = v133;
                    }
                  }

                  *v130 = *v132;
                  *(v130 + 4) = *(v132 + 4);
                  result = *(v132 + 8);
                  *(v130 + 8) = result;
                  v130 = v132;
                }

                while (v126 <= ((v125 - 2) >> 1));
                if (v132 == a2 - 12)
                {
                  *v132 = v127;
                  *(v132 + 4) = v128;
                  *(v132 + 8) = v129;
                }

                else
                {
                  *v132 = *(a2 - 12);
                  *(v132 + 4) = *(a2 - 8);
                  *(v132 + 8) = *(a2 - 4);
                  *(a2 - 12) = v127;
                  *(a2 - 8) = v128;
                  *(a2 - 4) = v129;
                  v141 = v132 - v9 + 12;
                  if (v141 >= 13)
                  {
                    v142 = (0xAAAAAAAAAAAAAAABLL * (v141 >> 2) - 2) >> 1;
                    v143 = v9 + 12 * v142;
                    result = *v143;
                    v144 = *v132;
                    v145 = HIDWORD(*v143);
                    v146 = HIDWORD(*v132);
                    if (v145 == v146 ? *v143 < *v132 : v145 < v146)
                    {
                      v148 = *(v132 + 8);
                      do
                      {
                        v149 = v132;
                        v132 = v143;
                        *v149 = result;
                        *(v149 + 4) = *(v143 + 4);
                        *(v149 + 8) = *(v143 + 8);
                        if (!v142)
                        {
                          break;
                        }

                        v142 = (v142 - 1) >> 1;
                        v143 = v9 + 12 * v142;
                        result = *v143;
                        v150 = HIDWORD(*v143);
                      }

                      while (v150 == v146 ? *v143 < v144 : v150 < v146);
                      *v132 = v144;
                      *(v132 + 4) = v146;
                      *(v132 + 8) = v148;
                    }
                  }
                }

                a2 -= 12;
              }

              while (v125-- > 2);
            }

            return result;
          }

          v12 = v11 >> 1;
          v13 = v9 + 12 * (v11 >> 1);
          if (v10 < 0x601)
          {
            result = sub_2366FC53C((v7 + 12 * v12), v7, (a2 - 12));
          }

          else
          {
            sub_2366FC53C(v7, (v7 + 12 * v12), (a2 - 12));
            v14 = 3 * v12;
            v15 = (v7 + 12 * v12 - 12);
            sub_2366FC53C((v7 + 12), v15, (a2 - 24));
            v16 = (v7 + 12 + 4 * v14);
            sub_2366FC53C((v7 + 24), v16, (a2 - 36));
            result = sub_2366FC53C(v15, v13, v16);
            v17 = *v7;
            *v7 = *v13;
            *v13 = v17;
            v18 = *(v7 + 8);
            *(v7 + 8) = *(v13 + 8);
            *(v13 + 8) = v18;
          }

          --a3;
          v19 = *v7;
          v20 = HIDWORD(*v7);
          if (a4)
          {
            v21 = *(v7 + 8);
            break;
          }

          v22 = *(v7 - 12);
          v21 = *(v7 + 8);
          v23 = HIDWORD(v22);
          v24 = v22 < v19;
          if (v23 != HIDWORD(v19))
          {
            v24 = v23 < v20;
          }

          if (v24)
          {
            break;
          }

          if (v20 == HIDWORD(*v8))
          {
            v49 = v19 < *v8;
          }

          else
          {
            v49 = v20 < HIDWORD(*v8);
          }

          if (v49)
          {
            v9 = v7;
            do
            {
              v50 = *(v9 + 12);
              v9 += 12;
              v51 = v19 < v50;
              v52 = v20 < SHIDWORD(v50);
              if (v20 == HIDWORD(v50))
              {
                v53 = v51;
              }

              else
              {
                v53 = v52;
              }
            }

            while (!v53);
          }

          else
          {
            v54 = v7 + 12;
            do
            {
              v9 = v54;
              if (v54 >= a2)
              {
                break;
              }

              v54 += 12;
            }

            while (!(v20 == HIDWORD(*v9) ? v19 < *v9 : v20 < HIDWORD(*v9)));
          }

          v56 = a2;
          if (v9 < a2)
          {
            v56 = a2;
            do
            {
              v57 = *(v56 - 12);
              v56 -= 12;
              v58 = v19 < v57;
              v59 = v20 < SHIDWORD(v57);
              if (v20 == HIDWORD(v57))
              {
                v60 = v58;
              }

              else
              {
                v60 = v59;
              }
            }

            while (v60);
          }

          if (v9 < v56)
          {
            v61 = *v9;
            v62 = *v56;
            do
            {
              *v9 = v62;
              *v56 = v61;
              v63 = *(v9 + 4);
              *(v9 + 4) = *(v56 + 4);
              *(v56 + 4) = v63;
              LOBYTE(v63) = *(v9 + 8);
              *(v9 + 8) = *(v56 + 8);
              *(v56 + 8) = v63;
              do
              {
                v64 = *(v9 + 12);
                v9 += 12;
                v61 = v64;
                v65 = v19 < v64;
                v66 = v20 < SHIDWORD(v64);
                if (v20 == HIDWORD(v64))
                {
                  v66 = v65;
                }
              }

              while (!v66);
              do
              {
                v67 = *(v56 - 12);
                v56 -= 12;
                v62 = v67;
                v68 = v19 < v67;
                v69 = v20 < SHIDWORD(v67);
                if (v20 == HIDWORD(v67))
                {
                  v69 = v68;
                }
              }

              while (v69);
            }

            while (v9 < v56);
          }

          if (v9 - 12 != v7)
          {
            *v7 = *(v9 - 12);
            *(v7 + 4) = *(v9 - 8);
            *(v7 + 8) = *(v9 - 4);
          }

          a4 = 0;
          *(v9 - 12) = v19;
          *(v9 - 8) = v20;
          *(v9 - 4) = v21;
        }

        v25 = 0;
        do
        {
          v26 = *(v7 + v25 + 12);
          if (HIDWORD(v26) == v20)
          {
            v27 = v19 > v26;
          }

          else
          {
            v27 = v20 > SHIDWORD(v26);
          }

          v25 += 12;
        }

        while (v27);
        v28 = v7 + v25;
        v29 = a2;
        if (v25 == 12)
        {
          v29 = a2;
          do
          {
            if (v28 >= v29)
            {
              break;
            }

            v33 = *(v29 - 3);
            v29 -= 3;
            v34 = v19 > v33;
            v35 = v20 > SHIDWORD(v33);
            if (HIDWORD(v33) != v20)
            {
              v34 = v35;
            }
          }

          while (!v34);
        }

        else
        {
          do
          {
            v30 = *(v29 - 3);
            v29 -= 3;
            v31 = v19 > v30;
            v32 = v20 > SHIDWORD(v30);
            if (HIDWORD(v30) != v20)
            {
              v31 = v32;
            }
          }

          while (!v31);
        }

        if (v28 >= v29)
        {
          v9 = v28;
        }

        else
        {
          v36 = *v29;
          v37 = v26;
          v9 = v28;
          v38 = v29;
          do
          {
            *v9 = v36;
            *v38 = v37;
            v39 = *(v9 + 4);
            *(v9 + 4) = v38[1];
            v38[1] = v39;
            LOBYTE(v39) = *(v9 + 8);
            *(v9 + 8) = *(v38 + 8);
            *(v38 + 8) = v39;
            do
            {
              v40 = *(v9 + 12);
              v9 += 12;
              v37 = v40;
              v41 = v19 > v40;
              v42 = v20 > SHIDWORD(v40);
              if (HIDWORD(v40) == v20)
              {
                v43 = v41;
              }

              else
              {
                v43 = v42;
              }
            }

            while (v43);
            do
            {
              v44 = *(v38 - 3);
              v38 -= 3;
              v36 = v44;
              v45 = v19 > v44;
              v46 = v20 > SHIDWORD(v44);
              if (HIDWORD(v44) == v20)
              {
                v47 = v45;
              }

              else
              {
                v47 = v46;
              }
            }

            while (!v47);
          }

          while (v9 < v38);
        }

        if (v9 - 12 != v7)
        {
          *v7 = *(v9 - 12);
          *(v7 + 4) = *(v9 - 8);
          *(v7 + 8) = *(v9 - 4);
        }

        *(v9 - 12) = v19;
        *(v9 - 8) = v20;
        *(v9 - 4) = v21;
        if (v28 >= v29)
        {
          break;
        }

LABEL_54:
        result = sub_2366FBA18(v7, v9 - 12, a3, a4 & 1);
        a4 = 0;
      }

      v48 = sub_2366FC98C(v7, v9 - 12);
      result = sub_2366FC98C(v9, a2);
      if (result)
      {
        break;
      }

      if (!v48)
      {
        goto LABEL_54;
      }
    }

    a2 = v9 - 12;
    if (!v48)
    {
      continue;
    }

    return result;
  }
}

unint64_t *sub_2366FC53C(unint64_t *result, unint64_t *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = *result;
  v5 = HIDWORD(*a2);
  v6 = *a2 < *result;
  if (v5 != HIDWORD(*result))
  {
    v6 = v5 < HIDWORD(*result);
  }

  v7 = *a3;
  if (v6)
  {
    if (HIDWORD(v7) == v5)
    {
      v8 = v7 < v3;
    }

    else
    {
      v8 = SHIDWORD(v7) < v5;
    }

    if (v8)
    {
      *result = v7;
      *a3 = v4;
      v9 = *(result + 1);
      *(result + 1) = *(a3 + 1);
      *(a3 + 1) = v9;
      v10 = *(result + 8);
      *(result + 8) = *(a3 + 8);
LABEL_23:
      *(a3 + 8) = v10;
      return result;
    }

    *result = v3;
    *a2 = v4;
    v17 = *(result + 1);
    *(result + 1) = *(a2 + 1);
    *(a2 + 1) = v17;
    v10 = *(result + 8);
    *(result + 8) = *(a2 + 8);
    *(a2 + 8) = v10;
    v18 = *a2;
    v19 = HIDWORD(*a3);
    if (v19 == HIDWORD(*a2))
    {
      v20 = *a3 < *a2;
    }

    else
    {
      v20 = v19 < HIDWORD(*a2);
    }

    if (v20)
    {
      *a2 = *a3;
      *a3 = v18;
      v21 = *(a2 + 1);
      *(a2 + 1) = *(a3 + 1);
      *(a3 + 1) = v21;
      *(a2 + 8) = *(a3 + 8);
      goto LABEL_23;
    }
  }

  else
  {
    if (HIDWORD(v7) == v5)
    {
      v11 = v7 < v3;
    }

    else
    {
      v11 = SHIDWORD(v7) < v5;
    }

    if (v11)
    {
      *a2 = v7;
      *a3 = v3;
      v12 = *(a2 + 1);
      *(a2 + 1) = *(a3 + 1);
      *(a3 + 1) = v12;
      LOBYTE(v12) = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v12;
      v13 = *result;
      v14 = HIDWORD(*a2);
      if (v14 == HIDWORD(*result) ? *a2 < *result : v14 < HIDWORD(*result))
      {
        *result = *a2;
        *a2 = v13;
        v16 = *(result + 1);
        *(result + 1) = *(a2 + 1);
        *(a2 + 1) = v16;
        LOBYTE(v16) = *(result + 8);
        *(result + 8) = *(a2 + 8);
        *(a2 + 8) = v16;
      }
    }
  }

  return result;
}

unint64_t *sub_2366FC6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  result = sub_2366FC53C(a1, a2, a3);
  v11 = *a3;
  v12 = HIDWORD(*a4);
  if (v12 == HIDWORD(*a3))
  {
    v13 = *a4 < *a3;
  }

  else
  {
    v13 = v12 < HIDWORD(*a3);
  }

  if (v13)
  {
    *a3 = *a4;
    *a4 = v11;
    v14 = *(a3 + 4);
    *(a3 + 4) = *(a4 + 1);
    *(a4 + 1) = v14;
    LOBYTE(v14) = *(a3 + 8);
    *(a3 + 8) = *(a4 + 8);
    *(a4 + 8) = v14;
    v15 = *a2;
    v16 = HIDWORD(*a3);
    if (v16 == HIDWORD(*a2) ? *a3 < *a2 : v16 < HIDWORD(*a2))
    {
      *a2 = *a3;
      *a3 = v15;
      v18 = *(a2 + 4);
      *(a2 + 4) = *(a3 + 4);
      *(a3 + 4) = v18;
      LOBYTE(v18) = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v18;
      v19 = *a1;
      v20 = HIDWORD(*a2);
      if (v20 == HIDWORD(*a1) ? *a2 < *a1 : v20 < HIDWORD(*a1))
      {
        *a1 = *a2;
        *a2 = v19;
        v22 = *(a1 + 4);
        *(a1 + 4) = *(a2 + 4);
        *(a2 + 4) = v22;
        LOBYTE(v22) = *(a1 + 8);
        *(a1 + 8) = *(a2 + 8);
        *(a2 + 8) = v22;
      }
    }
  }

  v23 = *a4;
  v24 = HIDWORD(*a5);
  if (v24 == HIDWORD(*a4))
  {
    v25 = *a5 < *a4;
  }

  else
  {
    v25 = v24 < HIDWORD(*a4);
  }

  if (v25)
  {
    *a4 = *a5;
    *a5 = v23;
    v26 = *(a4 + 1);
    *(a4 + 1) = *(a5 + 4);
    *(a5 + 4) = v26;
    LOBYTE(v26) = *(a4 + 8);
    *(a4 + 8) = *(a5 + 8);
    *(a5 + 8) = v26;
    v27 = *a3;
    v28 = HIDWORD(*a4);
    if (v28 == HIDWORD(*a3) ? *a4 < *a3 : v28 < HIDWORD(*a3))
    {
      *a3 = *a4;
      *a4 = v27;
      v30 = *(a3 + 4);
      *(a3 + 4) = *(a4 + 1);
      *(a4 + 1) = v30;
      LOBYTE(v30) = *(a3 + 8);
      *(a3 + 8) = *(a4 + 8);
      *(a4 + 8) = v30;
      v31 = *a2;
      v32 = HIDWORD(*a3);
      if (v32 == HIDWORD(*a2) ? *a3 < *a2 : v32 < HIDWORD(*a2))
      {
        *a2 = *a3;
        *a3 = v31;
        v34 = *(a2 + 4);
        *(a2 + 4) = *(a3 + 4);
        *(a3 + 4) = v34;
        LOBYTE(v34) = *(a2 + 8);
        *(a2 + 8) = *(a3 + 8);
        *(a3 + 8) = v34;
        v35 = *a1;
        v36 = HIDWORD(*a2);
        if (v36 == HIDWORD(*a1))
        {
          v37 = *a2 < *a1;
        }

        else
        {
          v37 = v36 < HIDWORD(*a1);
        }

        if (v37)
        {
          *a1 = *a2;
          *a2 = v35;
          v38 = *(a1 + 4);
          *(a1 + 4) = *(a2 + 4);
          *(a2 + 4) = v38;
          LOBYTE(v38) = *(a1 + 8);
          *(a1 + 8) = *(a2 + 8);
          *(a2 + 8) = v38;
        }
      }
    }
  }

  return result;
}

BOOL sub_2366FC98C(uint64_t a1, uint64_t a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_2366FC53C(a1, (a1 + 12), (a2 - 12));
        break;
      case 4:
        sub_2366FC53C(a1, (a1 + 12), (a1 + 24));
        v23 = *(a2 - 12);
        v24 = *(a1 + 24);
        if (HIDWORD(v23) == HIDWORD(v24))
        {
          v25 = v23 < v24;
        }

        else
        {
          v25 = SHIDWORD(v23) < SHIDWORD(v24);
        }

        if (v25)
        {
          *(a1 + 24) = v23;
          *(a2 - 12) = v24;
          v26 = *(a1 + 28);
          *(a1 + 28) = *(a2 - 8);
          *(a2 - 8) = v26;
          LOBYTE(v26) = *(a1 + 32);
          *(a1 + 32) = *(a2 - 4);
          *(a2 - 4) = v26;
          v27 = *(a1 + 24);
          v28 = *(a1 + 12);
          v29 = HIDWORD(v27);
          v30 = v27 < v28;
          if (HIDWORD(v27) != HIDWORD(v28))
          {
            v30 = SHIDWORD(v27) < SHIDWORD(v28);
          }

          if (v30)
          {
            *(a1 + 12) = v27;
            *(a1 + 24) = v28;
            v31 = *(a1 + 20);
            v32 = *(a1 + 32);
            *(a1 + 20) = v32;
            *(a1 + 32) = v31;
            v33 = *(a1 + 12);
            v34 = *a1;
            v35 = HIDWORD(*a1);
            if (HIDWORD(v33) == v35 ? v33 < *a1 : SHIDWORD(v33) < v35)
            {
              *a1 = v33;
              *(a1 + 4) = v29;
              *(a1 + 12) = v34;
              *(a1 + 16) = v35;
              v37 = *(a1 + 8);
              *(a1 + 8) = v32;
              *(a1 + 20) = v37;
            }
          }
        }

        return 1;
      case 5:
        sub_2366FC6E0(a1, a1 + 12, a1 + 24, (a1 + 36), a2 - 12);
        break;
      default:
        goto LABEL_14;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 12);
    v6 = *a1;
    if (HIDWORD(v5) == HIDWORD(*a1))
    {
      v7 = v5 < *a1;
    }

    else
    {
      v7 = SHIDWORD(v5) < HIDWORD(*a1);
    }

    if (v7)
    {
      *a1 = v5;
      *(a2 - 12) = v6;
      v8 = *(a1 + 4);
      *(a1 + 4) = *(a2 - 8);
      *(a2 - 8) = v8;
      LOBYTE(v8) = *(a1 + 8);
      *(a1 + 8) = *(a2 - 4);
      *(a2 - 4) = v8;
    }

    return 1;
  }

LABEL_14:
  v9 = (a1 + 24);
  sub_2366FC53C(a1, (a1 + 12), (a1 + 24));
  v10 = a1 + 36;
  if (a1 + 36 == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = *v10;
    v14 = HIDWORD(*v10);
    v15 = *v9;
    if (v14 == HIDWORD(*v9) ? *v10 < *v9 : v14 < HIDWORD(*v9))
    {
      v17 = *(v10 + 8);
      v18 = v11;
      while (1)
      {
        v19 = a1 + v18;
        v20 = *(a1 + v18 + 28);
        *(v19 + 36) = v15;
        *(v19 + 40) = v20;
        *(v19 + 44) = *(a1 + v18 + 32);
        if (v18 == -24)
        {
          break;
        }

        v15 = *(v19 + 12);
        v21 = v14 < SHIDWORD(v15);
        if (v14 == HIDWORD(v15))
        {
          v21 = v13 < v15;
        }

        v18 -= 12;
        if (!v21)
        {
          v22 = a1 + v18 + 36;
          goto LABEL_27;
        }
      }

      v22 = a1;
LABEL_27:
      *v22 = v13;
      *(v22 + 4) = v14;
      *(v22 + 8) = v17;
      if (++v12 == 8)
      {
        return v10 + 12 == a2;
      }
    }

    v9 = v10;
    v11 += 12;
    v10 += 12;
    if (v10 == a2)
    {
      return 1;
    }
  }
}

const char *sub_2366FCC74()
{
  qos_class_self();
  v0 = pthread_qos_max_parallelism();
  if (v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = 2;
  }

  dword_27DE5A7B8 = v1;
  result = getenv("VECLIB_MAXIMUM_THREADS");
  if (result)
  {
    result = strtol(result, 0, 0);
  }

  dword_27DE5A7BC = result;
  return result;
}

uint64_t sub_2366FCCD0(unsigned int a1)
{
  if (qword_27DE5A7C0 != -1)
  {
    sub_2366FD2D0();
  }

  result = dword_27DE5A7BC;
  if (!dword_27DE5A7BC)
  {
    if (dword_27DE5A7B8 >= a1)
    {
      v3 = a1;
    }

    else
    {
      v3 = dword_27DE5A7B8;
    }

    if (a1)
    {
      return v3;
    }

    else
    {
      return dword_27DE5A7B8;
    }
  }

  return result;
}

uint64_t sub_2366FCD2C(unsigned int *a1, int a2)
{
  if (a2)
  {
    BLASGetThreading();
  }

  v4 = *a1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = sub_2366FD148;
  v6[3] = &unk_278A00530;
  v7 = a2;
  v6[4] = a1;
  dispatch_apply(v4, 0, v6);
  if (a2)
  {
    BLASSetThreading();
  }

  return atomic_load(a1 + 4);
}

uint64_t sub_2366FCDE4(void *a1, BOOL *a2)
{
  v2 = a1[2];
  v3 = a1[1];
  if (!v2)
  {
    if ((*(v3 + 12) & 1) == 0)
    {
      _X2 = 0;
      _X3 = 0;
      __asm { CASP            X2, X3, X2, X3, [X8] }

      while (1)
      {
        v2 = _X2 & 0xFFFFFFFFFFFFFFFELL;
        if ((_X2 & 0xFFFFFFFFFFFFFFFELL) == 0)
        {
          break;
        }

        _X4 = *(v2 + 24) | _X2 & 1;
        v17 = *(v2 + 32);
        _X7 = 0;
        __asm { CASPA           X6, X7, X4, X5, [X10] }

        if (_X6 == _X2)
        {
          if ((*(v3 + 12) & 1) == 0)
          {
            goto LABEL_4;
          }

          goto LABEL_6;
        }

        _X2 = 0;
        _X3 = 0;
        __asm { CASP            X2, X3, X2, X3, [X10] }
      }
    }

    goto LABEL_6;
  }

  if (atomic_load_explicit((v3 + 12), memory_order_acquire))
  {
LABEL_6:
    v6 = 0;
    v7 = atomic_load((a1[1] + 16));
    *a2 = v7 != 0;
    return v6;
  }

  a1[2] = 0;
  a1[3] = 0;
LABEL_4:
  v4 = atomic_load((a1[1] + 16));
  *a2 = v4 != 0;
  v5 = *(v2 + 8);
  (*(v2 + 16))();
  return 1;
}

uint64_t sub_2366FCEC8(uint64_t result)
{
  v1 = result;
  if (*result)
  {
    *result = 0;
    if (atomic_fetch_add_explicit((*(result + 8) + 4), 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      _X2 = 0;
      atomic_store(1u, (*(result + 8) + 12));
      _X3 = 0;
      __asm { CASPAL          X2, X3, X2, X3, [X1] }

      if (_X2)
      {
        result = __ulock_wake();
      }
    }
  }

  else
  {
    v10 = *(*(result + 8) + 4);
  }

    ;
  }

  return result;
}

unint64_t sub_2366FCF58(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (*a1)
  {
    *a1 = 0;
    if (atomic_fetch_add_explicit((v2 + 4), 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
LABEL_3:
      _X2 = 0;
      atomic_store(1u, (*(a1 + 8) + 12));
      _X3 = 0;
      __asm { CASPAL          X2, X3, X2, X3, [X1] }

      if (_X2)
      {
        __ulock_wake();
      }

      return 0;
    }
  }

  else if (!*(v2 + 4))
  {
    return 0;
  }

  if ((*(v2 + 12) & 1) == 0)
  {
    v11 = 0;
    do
    {
      v12 = __ldxp((v2 + 32));
      result = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) != 0)
      {
        __clrex();
        if (*a1 == 1)
        {
          v29 = *(*(a1 + 8) + 4);
        }

        else
        {
          *a1 = 1;
          atomic_fetch_add((*(a1 + 8) + 4), 1u);
        }

        _X4 = *(result + 24) | v12 & 1;
        v14 = *(result + 32);
        _X7 = *(&v12 + 1);
        __asm { CASPA           X6, X7, X4, X5, [X20] }

        if (_X6 == v12)
        {
          return result;
        }

        if (*a1 == 1)
        {
          *a1 = 0;
          if (atomic_fetch_add_explicit((*(a1 + 8) + 4), 0xFFFFFFFF, memory_order_relaxed) == 1)
          {
            goto LABEL_3;
          }
        }

        else if (!*(*(a1 + 8) + 4))
        {
          return 0;
        }
      }

      if (v11 >= 4)
      {
        while (1)
        {
          _X0 = 0;
          _X1 = 0;
          __asm { CASP            X0, X1, X0, X1, [X20] }

          if (_X0 > 1)
          {
            break;
          }

          if (!_X0)
          {
            _X2 = 1;
            _X5 = 0;
            __asm { CASPAL          X4, X5, X2, X3, [X20] }

            if (_X4)
            {
              continue;
            }
          }

          __ulock_wait();
          do
          {
            _X0 = 0;
            _X1 = 0;
            __asm { CASP            X0, X1, X0, X1, [X8] }

            if (*v2 - *(v2 + 4) != 1)
            {
              break;
            }

            _X2 = _X0 & 0xFFFFFFFFFFFFFFFELL;
            _X5 = 0;
            __asm { CASPAL          X4, X5, X2, X3, [X20] }
          }

          while (_X4 != _X0);
          break;
        }
      }

      else
      {
        __wfe();
      }

      ++v11;
    }

    while ((*(v2 + 12) & 1) == 0);
  }

  return 0;
}

unint64_t sub_2366FD148(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 1)
  {
    BLASSetThreading();
  }

  v4 = *(a1 + 32);
  v22 = 0;
  v23 = v4;
  v24 = 0;
  v25 = 0;
  v26 = a2;
  v27 = 0;
  v5 = *(v4 + 48);
  if (v5)
  {
    v27 = ((*(v4 + 56) + 15) & 0xFFFFFFFFFFFFFFF0) + ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) * a2;
  }

  LOBYTE(v22) = 1;
  atomic_fetch_add((v4 + 4), 1u);
  while (1)
  {
    result = v24;
    if (v24)
    {
      break;
    }

    if (*(v23 + 12))
    {
      goto LABEL_19;
    }

    for (_X2 = 0; ; _X2 = 0)
    {
      _X3 = 0;
      __asm { CASP            X2, X3, X2, X3, [X9] }

      result = _X2 & 0xFFFFFFFFFFFFFFFELL;
      if ((_X2 & 0xFFFFFFFFFFFFFFFELL) == 0)
      {
        result = sub_2366FCF58(&v22);
        if (result)
        {
          goto LABEL_18;
        }

        goto LABEL_19;
      }

      _X4 = *(result + 24) | _X2 & 1;
      v15 = *(result + 32);
      _X7 = 0;
      __asm { CASPA           X6, X7, X4, X5, [X9] }

      if (_X6 == _X2)
      {
        break;
      }
    }

    if (*(v23 + 12))
    {
      goto LABEL_19;
    }

LABEL_18:
    (*(result + 16))(&v22, *(result + 8));
  }

  if ((atomic_load_explicit((v23 + 12), memory_order_acquire) & 1) == 0)
  {
    v24 = 0;
    v25 = 0;
    if (result)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  if (v22)
  {
    LOBYTE(v22) = 0;
    if (atomic_fetch_add_explicit((v23 + 4), 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      _X2 = 0;
      atomic_store(1u, (v23 + 12));
      _X3 = 0;
      __asm { CASPAL          X2, X3, X2, X3, [X1] }

      if (_X2)
      {
        return __ulock_wake();
      }
    }
  }

  else
  {
    v21 = *(v23 + 4);
  }

  return result;
}

SparseSymbolicFactorOptions *__cdecl _SparseGetOptionsFromSymbolicFactor(SparseSymbolicFactorOptions *__return_ptr retstr, SparseSymbolicFactorOptions *factor)
{
  malloc = factor->malloc;
  v3 = *(malloc + 1);
  *&retstr->control = *malloc;
  *&retstr->ignoreRowsAndColumns = v3;
  *&retstr->free = *(malloc + 2);
  return factor;
}

uint64_t _SparseFromKindComplex(uint64_t result)
{
  if (result == 7)
  {
    return 3;
  }

  else
  {
    return result;
  }
}

__n128 _SparseFromStructureComplex@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 24) = *(a1 + 24) & 0x800F;
  *(a2 + 28) = *(a1 + 28);
  return result;
}

__n128 _SparseToStructureComplex@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 24) = *(a1 + 24) & 0x800F;
  *(a2 + 28) = *(a1 + 28);
  return result;
}

SparseNumericFactorOptions *__cdecl _SparseGetOptionsFromNumericFactor_Double(SparseNumericFactorOptions *__return_ptr retstr, SparseNumericFactorOptions *factor)
{
  pivotTolerance = factor[2].pivotTolerance;
  v3 = *(*&pivotTolerance + 16);
  *&retstr->control = **&pivotTolerance;
  *&retstr->pivotTolerance = v3;
  return factor;
}

int *sub_2366FD390(int *result, unsigned int *a2)
{
  v3 = result;
  if ((*(a2 + 6) ^ *(result + 6)))
  {
    v8 = a2[1];
    if (v8 >= 1)
    {
      v9 = 0;
      v10 = 0;
      v11 = *a2;
      do
      {
        if (v11 >= 1)
        {
          v12 = (*(a2 + 2) + v9 * a2[2]);
          v13 = (*(result + 2) + v9);
          v14 = 8 * result[2];
          v15 = v11;
          do
          {
            *v12++ = *v13;
            v13 = (v13 + v14);
            --v15;
          }

          while (v15);
        }

        ++v10;
        v9 += 8;
      }

      while (v10 != v8);
    }
  }

  else
  {
    v4 = result[2];
    if (v4 == *result && a2[2] == v4)
    {
      v5 = *(a2 + 2);
      v6 = *(v3 + 2);
      v7 = 8 * v3[1] * v4;

      return memcpy(v5, v6, v7);
    }

    else if (result[1] >= 1)
    {
      v16 = 0;
      do
      {
        result = memcpy((*(a2 + 2) + 8 * (a2[2] * v16)), (*(v3 + 2) + 8 * v3[2] * v16), 8 * *v3);
        ++v16;
      }

      while (v16 < v3[1]);
    }
  }

  return result;
}

void sub_2366FD4D0(int *a1)
{
  v2 = a1[2];
  if (v2 == *a1)
  {
    v3 = *(a1 + 2);
    v4 = 8 * a1[1] * v2;

    bzero(v3, v4);
  }

  else if (a1[1] >= 1)
  {
    v5 = 0;
    do
    {
      bzero((*(a1 + 2) + 8 * a1[2] * v5++), 8 * *a1);
    }

    while (v5 < a1[1]);
  }
}

uint64_t sub_2366FD568(int a1, int a2, uint64_t a3, int a4)
{
  v4 = a4 * a2;
  if (a4 * a1 > a4 * a2)
  {
    v4 = a4 * a1;
  }

  return 8 * (a4 * a1 + 2 * a4 * a2 + (a4 * a2 + 1)) + 4 * (2 * a4 * a2 + (5 * a4 * a2) + a4 * a1 + v4 + a4 * a2 + 2 * a4 * a1 + 2 * a3 * (a4 * a4)) + 112;
}

uint64_t sub_2366FD5C4(uint64_t a1, char *a2, float *a3, float *a4, uint64_t *a5)
{
  v5 = a4;
  v6 = a3;
  v7 = *(a1 + 28);
  v8 = (*a1 * v7);
  v9 = (*(a1 + 4) * v7);
  v10 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v10;
  v14 = *(a1 + 32);
  v11 = sub_2366FD680(0, v13, a2, v8, a3, v8, a4, v9, a5);
  if (v8)
  {
    do
    {
      *v6 = expf(*v6);
      ++v6;
      --v8;
    }

    while (v8);
  }

  if (v9)
  {
    do
    {
      *v5 = expf(*v5);
      ++v5;
      --v9;
    }

    while (v9);
  }

  return v11;
}

uint64_t sub_2366FD680(int a1, signed int *a2, char *a3, uint64_t a4, float *a5, unint64_t a6, float *a7, unint64_t a8, uint64_t *a9)
{
  v10 = a2;
  v12 = *(a2 + 28);
  v13 = a2[1];
  v14 = *a2 * v12;
  v15 = v13 * v12;
  v267 = *(a2 + 1);
  v263 = (v12 * v12);
  v16 = (*(v267 + 8 * v13) * v263) << a1;
  v244 = v15 + 1;
  v17 = a9;
  v18 = 8 * (v15 + 1);
  v19 = a9 + v18;
  v265 = v16 & 0x3FFFFFFFFFFFFFFFLL;
  v239 = 4 * v16 + 7;
  v20 = a9 + v18 + (v239 & 0xFFFFFFFFFFFFFFF8);
  v270 = (v20 + (v239 & 0xFFFFFFFFFFFFFFF8));
  v21 = (20 * v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v232 = 4 * v15;
  v231 = v232 + 7;
  v22 = (v232 + 7) & 0xFFFFFFFFFFFFFFF8;
  v236 = v21;
  *v246 = v14;
  v243 = v14 & 0x3FFFFFFFFFFFFFFFLL;
  v240 = (4 * v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = v15;
  v242 = v15 & 0x3FFFFFFFFFFFFFFFLL;
  v249 = &v270[v21 + v240];
  v252 = &v270[v21];
  v24 = v249 + v22;
  v238 = v22;
  v262 = v249 + v22 + v22;
  v25 = &a9[v15];
  v259 = v15;
  v248 = v18;
  v241 = v239 & 0xFFFFFFFFFFFFFFF8;
  if (v15 < 1)
  {
    *v25 = 0;
    if ((a1 & 1) == 0)
    {
      goto LABEL_65;
    }

    v53 = 0;
  }

  else
  {
    v235 = &a9[v15];
    v26 = 8 * (v15 + 1);
    v27 = 0;
    v28 = 0;
    v255 = a9 + (v239 & 0xFFFFFFFFFFFFFFF8) + v26;
    v29 = 0;
    do
    {
      v17[v27] = v28;
      v30 = (v267 + 8 * (v27 / v12));
      v31 = *v30;
      v32 = v30[1];
      if (v31 < v32)
      {
        v33 = *(v10 + 2);
        v29 = v28;
        do
        {
          v34 = *(v33 + 4 * v31);
          if ((v34 & 0x80000000) == 0)
          {
            v35 = v34 < (v27 / v12) ? a1 : 0;
            if ((v35 & 1) == 0 && v34 < *v10)
            {
              v36 = v27 % v12;
              v37 = v36 * v12;
              if (!a1)
              {
                v36 = 0;
              }

              v38 = *(v10 + 4) + 4 * v31 * v263 + 4 * v37;
              v39 = v36 + v34 * v12;
              do
              {
                v40 = *(v38 + 4 * v36);
                if (v40 != 0.0)
                {
                  *(v19 + 4 * v29) = v39;
                  *(v20 + 4 * v29++) = fabsf(v40);
                }

                ++v36;
                ++v39;
              }

              while (v36 < v12);
            }
          }

          ++v31;
        }

        while (v31 != v32);
      }

      v41 = v29 - v28;
      if (v29 > v28)
      {
        v42 = &v255[4 * v28];
        do
        {
          *v42 = logf(*v42);
          ++v42;
          --v41;
        }

        while (v41);
      }

      ++v27;
      v28 = v29;
      v17 = a9;
      v10 = a2;
    }

    while (v27 != v259);
    *v235 = v29;
    v18 = v248;
    if ((a1 & 1) == 0)
    {
      goto LABEL_49;
    }

    v43 = v29 + 1;
    bzero(v270, 4 * v259);
    v44 = 0;
    v45 = 0;
    v46 = *a9;
    do
    {
      v47 = v44 + 1;
      v48 = a9[v44 + 1];
      *&v270[4 * v44] += v48 - v46;
      v49 = v48 - v46;
      if (v48 > v46)
      {
        v50 = (a9 + 4 * v46 + v248);
        do
        {
          v52 = *v50++;
          v51 = v52;
          if (v44 == v52)
          {
            ++v45;
          }

          else
          {
            ++*&v270[4 * v51];
          }

          --v49;
        }

        while (v49);
      }

      v46 = v48;
      ++v44;
    }

    while (v47 != v259);
    v53 = 2 * v29 - v45;
    v54 = v53 + 1;
    v55 = a9 + v248 - 8;
    v56 = v259;
    v10 = a2;
    do
    {
      v57 = v56 - 1;
      v58 = a9[v56 - 1] + 1;
      v59 = v54;
      if (v43 > v58)
      {
        v60 = 0;
        do
        {
          *(v55 + v241 + 4 * v54 + 4 * v60) = *(v55 + v241 + 4 * v43 + 4 * v60);
          *(v55 + 4 * v54 + 4 * v60) = *(v55 + 4 * v43 + 4 * v60);
          --v60;
        }

        while (v43 + v60 > v58);
        v59 = v54 + v60;
      }

      a9[v57] = v59 - 1;
      v54 -= *&v270[4 * v57];
      *&v270[4 * v57] = v43 - v58;
      v43 = v58;
      v126 = v56-- <= 1;
    }

    while (!v126);
    v18 = v248;
    v61 = v259;
    do
    {
      v62 = v61--;
      v63 = *&v270[4 * v61];
      if (v63 >= 1)
      {
        v64 = a9[v61];
        v65 = v64 + v63;
        do
        {
          v66 = *(v19 + 4 * v64);
          if (v61 != v66)
          {
            v67 = a9[v66] - 1;
            a9[v66] = v67;
            *(v20 + 4 * v67) = *(a9 + 4 * v64 + v241 + v248);
            *(v19 + 4 * v67) = v61;
          }

          ++v64;
        }

        while (v64 < v65);
      }
    }

    while (v62 >= 2);
    v25 = v235;
  }

  *v25 = v53;
LABEL_49:
  v23 = v259;
  if (v259 >= 1)
  {
    v68 = 0;
    v69 = *v17;
    do
    {
      v70 = v68 + 1;
      v71 = v17[v68 + 1];
      v72 = v71 - v69;
      if (v71 - v69 == -1)
      {
        v73 = v265 - v69;
      }

      else
      {
        v73 = v71 - v69;
      }

      if (v73)
      {
        v74 = (v20 + 4 * v69);
        v75 = *v74;
        v76 = 4 * v73;
        do
        {
          v77 = *v74++;
          v78 = v77;
          if (v75 < v77)
          {
            v75 = v78;
          }

          v76 -= 4;
        }

        while (v76);
      }

      else
      {
        v75 = NAN;
      }

      *&v24[4 * v68] = v75;
      if (v71 > v69)
      {
        v79 = (v17 + 4 * v69 + v241 + v18);
        do
        {
          *v79 = v75 - *v79;
          ++v79;
          --v72;
        }

        while (v72);
      }

      v69 = v71;
      ++v68;
    }

    while (v70 != v259);
  }

LABEL_65:
  v80 = sub_2366FE790(v246[0], v23, v17, v244, v19, v265, v20, v265, a3, a4, v252, v243, v249, v242, v262);
  if (!a1 || v80 == v23)
  {
    v245 = v80;
    v141 = v239 >> 3;
    v142 = *v246;
    if (v246[0] >= 1)
    {
      v143 = (&v17[2 * v141] + v18 + v236);
      v144 = a5;
      do
      {
        v145 = *v143++;
        *v144++ = v145;
        --v142;
      }

      while (v142);
    }

    v146 = a7;
    if (v23 >= 1)
    {
      v147 = (&v17[2 * v141] + v240 + v18 + v236);
      v148 = a7;
      do
      {
        v149 = *(v147 + v238);
        v150 = *v147++;
        *v148++ = v150 - v149;
        --v23;
      }

      while (v23);
    }

    v151 = *v10;
    v152 = *(v10 + 28);
    v269 = *v10;
    v153 = *v10 * v152;
    v154 = v10[1] * v152;
    if (v153 == v154)
    {
      v155 = a6;
      if (v153 != -1)
      {
        v155 = v151 * *(v10 + 28);
      }

      v156 = 0.0;
      v157 = 0.0;
      if (v155)
      {
        v158 = 4 * v155;
        v159 = a5;
        do
        {
          v160 = *v159++;
          v157 = v157 + v160;
          v158 -= 4;
        }

        while (v158);
      }

      v161 = a8;
      if (v153 != -1)
      {
        v161 = *v10 * *(v10 + 28);
      }

      if (v161)
      {
        v162 = 4 * v161;
        v156 = 0.0;
        v163 = a7;
        do
        {
          v164 = *v163++;
          v156 = v156 + v164;
          v162 -= 4;
        }

        while (v162);
      }

      if (v153 >= 1)
      {
        v165 = ((v157 / v153) - (v156 / v153)) * 0.5;
        v166 = v153;
        v167 = v153;
        do
        {
          *a5 = *a5 - v165;
          ++a5;
          --v167;
        }

        while (v167);
        do
        {
          *v146 = v165 + *v146;
          ++v146;
          --v166;
        }

        while (v166);
      }
    }

    else
    {
      v257 = *(v10 + 1);
      v272 = *(v10 + 2);
      v266 = v152 * v152;
      v264 = *(v10 + 4);
      v254 = v10[1] * v152;
      v274 = *(v10 + 28);
      if (v153 >= v154)
      {
        if (v154 < v153)
        {
          v251 = v151 * v152;
          if (v153 <= 0)
          {
            v186 = ((0.0 / v80) - (0.0 / v80)) * 0.5;
          }

          else
          {
            v179 = 0.0;
            v180 = a3;
            v181 = a5;
            v182 = v153;
            v183 = 0.0;
            do
            {
              v185 = *v180;
              v180 += 4;
              v184 = v185;
              if (v185 != -1)
              {
                v183 = v183 + *v181;
                v179 = v179 + a7[v184];
              }

              ++v181;
              --v182;
            }

            while (v182);
            v186 = ((v183 / v80) - (v179 / v80)) * 0.5;
            v187 = a5;
            v188 = v153;
            do
            {
              *v187 = *v187 - v186;
              ++v187;
              --v188;
            }

            while (v188);
          }

          *v247 = v153;
          if (v154 <= 0)
          {
            bzero(v262, 4 * v153);
          }

          else
          {
            v213 = a7;
            v214 = v154;
            do
            {
              *v213 = v186 + *v213;
              ++v213;
              --v214;
            }

            while (v214);
            bzero(v262, 4 * v153);
            v215 = 0;
            if (v152 <= 1)
            {
              v216 = 1;
            }

            else
            {
              v216 = v152;
            }

            v260 = v216;
            do
            {
              v217 = v215 / v152;
              v218 = (v257 + 8 * v217);
              v219 = *v218;
              v220 = v218[1];
              if (*v218 < v220)
              {
                do
                {
                  v221 = *(v272 + 4 * v219);
                  if ((v221 & 0x80000000) == 0 && v221 < v269)
                  {
                    v222 = 0;
                    v223 = &v262[4 * v221 * v274];
                    v224 = v260;
                    do
                    {
                      v225 = fabsf(*(v264 + 4 * v219 * v266 + 4 * (v215 - v217 * v274) * v274 + 4 * v222));
                      v226 = v225 * expf(a7[v215]);
                      if (*v223 >= v226)
                      {
                        v226 = *v223;
                      }

                      *v223++ = v226;
                      ++v222;
                      --v224;
                    }

                    while (v224);
                  }

                  ++v219;
                }

                while (v219 != v220);
              }

              ++v215;
              v152 = v274;
            }

            while (v215 != v154);
          }

          if (v251 >= 1)
          {
            v227 = *v247;
            v228 = (&a9[2 * (v231 >> 3)] + v236 + v240 + v248 + ((2 * v239) & 0xFFFFFFFFFFFFFFF0));
            do
            {
              v229 = *a3;
              a3 += 4;
              if (v229 == -1)
              {
                v230 = 0.0;
                if (*v228 != 0.0)
                {
                  v230 = logf(1.0 / *v228);
                }

                *a5 = v230;
              }

              ++a5;
              ++v228;
              --v227;
            }

            while (v227);
          }
        }
      }

      else
      {
        v250 = v151 * v152;
        if (v153 <= 0)
        {
          v176 = ((0.0 / v80) - (0.0 / v80)) * 0.5;
        }

        else
        {
          v168 = v153;
          v169 = 0.0;
          v170 = a3;
          v171 = a5;
          v172 = v153;
          v173 = 0.0;
          do
          {
            v175 = *v170;
            v170 += 4;
            v174 = v175;
            if (v175 != -1)
            {
              v169 = v169 + *v171;
              v173 = v173 + a7[v174];
            }

            ++v171;
            --v172;
          }

          while (v172);
          v176 = ((v169 / v80) - (v173 / v80)) * 0.5;
          v177 = a5;
          do
          {
            *v177 = *v177 - v176;
            ++v177;
            --v168;
          }

          while (v168);
        }

        if (v154 >= 1)
        {
          v189 = a7;
          v190 = v154;
          do
          {
            *v189 = v176 + *v189;
            ++v189;
            --v190;
          }

          while (v190);
          v191 = 0;
          if (v152 <= 1)
          {
            v192 = 1;
          }

          else
          {
            v192 = v152;
          }

          do
          {
            v193 = (v257 + 8 * (v191 / v152));
            v195 = *v193;
            v194 = v193[1];
            v196 = 0.0;
            if (*v193 < v194)
            {
              v197 = 0.0;
              v198 = v191 % v152 * v152;
              do
              {
                v199 = *(v272 + 4 * v195);
                if ((v199 & 0x80000000) == 0 && v199 < v269)
                {
                  v200 = 0;
                  v201 = &a5[v199 * v274];
                  v202 = v192;
                  do
                  {
                    v203 = fabsf(*(v264 + 4 * v195 * v266 + 4 * v198 + 4 * v200));
                    v204 = *v201++;
                    v205 = v203 * expf(v204);
                    if (v197 < v205)
                    {
                      v197 = v205;
                    }

                    ++v200;
                    --v202;
                  }

                  while (v202);
                }

                ++v195;
              }

              while (v195 != v194);
              v196 = 0.0;
              v154 = v254;
              v152 = v274;
              if (v197 != 0.0)
              {
                v196 = logf(1.0 / v197);
              }
            }

            *&v262[4 * v191++] = v196;
          }

          while (v191 != v154);
        }

        v206 = a7;
        v207 = a3;
        if (v250 >= 1)
        {
          v208 = v250;
          do
          {
            v210 = *v207;
            v207 += 4;
            v209 = v210;
            if (v210 != -1)
            {
              *&v262[4 * v209] = a7[v209];
            }

            --v208;
          }

          while (v208);
        }

        if (v154 >= 1)
        {
          v211 = (&a9[2 * (v231 >> 3)] + v236 + v240 + v248 + ((2 * v239) & 0xFFFFFFFFFFFFFFF0));
          do
          {
            v212 = *v211++;
            *v206++ = v212;
            --v154;
          }

          while (v154);
        }
      }
    }
  }

  else
  {
    v81 = 2 * v23;
    if (v23 == -1)
    {
      v82 = 0x3FFFFFFFFFFFFFFDLL;
    }

    else
    {
      v82 = v23;
    }

    v83 = &v270[4 * v81];
    if (v246[0] >= 1)
    {
      v84 = 0;
      v85 = 0;
      v86 = v80 + 1;
      v87 = &v17[2 * (v239 >> 3)] + v18;
      do
      {
        if (*&a3[4 * v84] > -2)
        {
          *&v87[4 * v84] = v85;
          *&v270[4 * v23 + 4 * v85++] = v84;
        }

        else
        {
          *&v87[4 * v84] = ~v86++;
        }

        ++v84;
      }

      while (*v246 != v84);
    }

    *v17 = 0;
    if (v23 <= 0)
    {
      return sub_2366FE790(0, 0, v17, v244, v19, v265, v20, v265, v83, v82, v252, v243, v249, v242, v262);
    }

    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v92 = v81;
    do
    {
      v93 = v88 + 1;
      v94 = v17[v88 + 1];
      if (*&a3[4 * v88] >= -1)
      {
        v95 = v94 - v91;
        if (v94 > v91)
        {
          v96 = v17 + 4 * v91 + v18;
          v97 = v96;
          do
          {
            v99 = *v97++;
            v98 = v99;
            if (*&a3[4 * v99] >= -1)
            {
              *(v19 + 4 * v89) = *&v270[4 * v98];
              *(v20 + 4 * v89++) = *(v96 + v241);
            }

            v96 = v97;
            --v95;
          }

          while (v95);
        }

        v17[++v90] = v89;
      }

      v88 = v93;
      v91 = v94;
    }

    while (v93 != v259);
    v245 = sub_2366FE790(v90, v90, v17, v244, v19, v265, v20, v265, v83, v82, v252, v243, v249, v242, v262);
    v100 = v17;
    v101 = v248 + 16 * (v239 >> 3);
    v102 = (v100 + v101);
    v103 = v259;
    v104 = a5;
    v105 = (v100 + v101);
    do
    {
      v107 = *v105++;
      v106 = v107;
      if (v107 >= -1)
      {
        v108 = ((*&v252[4 * v106] + v249[v106]) - *(v102 + v236 + v240 + v238)) * 0.5;
      }

      else
      {
        v108 = -INFINITY;
      }

      *v104++ = v108;
      v102 = v105;
      --v103;
    }

    while (v103);
    v109 = a3;
    memset_pattern16(a3, &unk_23681FAD0, 4 * v259);
    if (v90 > 0)
    {
      v110 = v90;
      v111 = (a9 + 4 * v92 + v101);
      v112 = (a9 + v232 + v101);
      do
      {
        v114 = *v111++;
        v113 = v114;
        v115 = *v112++;
        *&a3[4 * v115] = v113;
        --v110;
      }

      while (v110);
    }

    v116 = (a9 + v101);
    v117 = v259;
    do
    {
      if (*v109 == -2)
      {
        *v109 = *v116;
      }

      v109 += 4;
      ++v116;
      --v117;
    }

    while (v117);
    v253 = v236 + 16 * (v239 >> 3);
    v118 = (a9 + v238 + v240 + v248 + v253);
    v119 = v259;
    v120 = a5;
    do
    {
      v121 = *v120++;
      *v118++ = v121;
      --v119;
    }

    while (v119);
    v122 = 0;
    v256 = *(a2 + 1);
    do
    {
      v123 = (v256 + 8 * (v122 / v12));
      v124 = *v123;
      v271 = v123[1];
      if (*v123 < v271)
      {
        v268 = *(a2 + 2);
        do
        {
          v125 = *(v268 + 4 * v124);
          if ((v125 & 0x80000000) == 0)
          {
            v126 = v125 >= (v122 / v12) && v125 < *a2;
            if (v126)
            {
              v127 = (v125 * v12);
              v128 = *(a2 + 4) + 4 * v124 * v263 + 4 * v122 % v12 * v12;
              v129 = v122 % v12;
              do
              {
                v130 = v129 + v127;
                v131 = *(v128 + 4 * v129);
                if (*&v24[4 * v122] == -INFINITY && *&v24[4 * v130] != -INFINITY)
                {
                  v132 = logf(fabsf(v131)) + a5[v130];
                  if (a5[v122] >= v132)
                  {
                    v132 = a5[v122];
                  }

                  a5[v122] = v132;
                }

                if (*&v24[4 * v130] == -INFINITY && *&v24[4 * v122] != -INFINITY)
                {
                  v133 = logf(fabsf(v131)) + a5[v122];
                  if (a5[v130] >= v133)
                  {
                    v133 = a5[v130];
                  }

                  a5[v130] = v133;
                }

                ++v129;
              }

              while (v129 < v12);
            }
          }

          ++v124;
        }

        while (v124 != v271);
      }

      ++v122;
    }

    while (v122 != v259);
    v134 = a7;
    v135 = (a9 + v238 + v240 + v248 + v253);
    v136 = v259;
    v137 = v259;
    v138 = a5;
    do
    {
      if (*v135 == -INFINITY)
      {
        if (*v138 == -INFINITY)
        {
          v139 = 0.0;
        }

        else
        {
          v139 = -*v138;
        }

        *v138 = v139;
      }

      ++v135;
      ++v138;
      --v137;
    }

    while (v137);
    do
    {
      v140 = *a5++;
      *v134++ = v140;
      --v136;
    }

    while (v136);
  }

  return v245;
}

uint64_t sub_2366FE6C0(uint64_t a1, char *a2, float *a3, float *a4)
{
  v6 = *(a1 + 4) * *(a1 + 28);
  v7 = (4 * v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v8;
  v12 = *(a1 + 32);
  v9 = sub_2366FD680(1, v11, a2, v6, a4, v6 & 0x3FFFFFFFFFFFFFFFLL, (a4 + v7), v6 & 0x3FFFFFFFFFFFFFFFLL, (a4 + v7 + v7));
  if (v6)
  {
    do
    {
      *a3++ = expf((*a4 + *(a4 + v7)) * 0.5);
      ++a4;
      --v6;
    }

    while (v6);
  }

  return v9;
}

uint64_t sub_2366FE790(int a1, int a2, uint64_t *a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, char *__b, uint64_t a10, _DWORD *a11, uint64_t a12, float *a13, uint64_t a14, char *a15)
{
  v18 = a15;
  v19 = &a15[8 * a2];
  v140 = &v19[8 * a2];
  v137 = (4 * a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = &v140[v137];
  v134 = 4 * a1 + 7;
  v21 = v134 & 0xFFFFFFFFFFFFFFF8;
  if (a1 <= a2)
  {
    v22 = a2;
  }

  else
  {
    v22 = a1;
  }

  v143 = v22;
  v145 = &v140[v137];
  if (a1 >= 1)
  {
    memset(__b, 255, 4 * a1);
    v20 = &v140[v137];
  }

  v129 = a1;
  v141 = &v20[v21];
  v23 = a11;
  if (a2 >= 1)
  {
    memset(a15, 255, 8 * a2);
    v20 = &v140[v137];
  }

  LODWORD(v24) = a1;
  if (a1 >= 1)
  {
    memset_pattern16(a11, &unk_23681FB20, 4 * a1);
    LODWORD(v24) = a1;
    bzero(v141, 8 * a1);
    v20 = &v140[v137];
  }

  v25 = &v141[8 * v24];
  v26 = __b;
  v27 = a7;
  if (a2 >= 1)
  {
    v28 = 0;
    v29 = *a3;
    do
    {
      v30 = v28++;
      v31 = a3[v28];
      while (v29 < v31)
      {
        v32 = *(a5 + 4 * v29);
        v33 = *(a7 + 4 * v29);
        if (v33 <= *&a11[v32])
        {
          *&a11[v32] = v33;
          *&__b[4 * v32] = v30;
          *&v141[8 * v32] = v29;
          v31 = a3[v28];
        }

        ++v29;
      }

      v29 = v31;
    }

    while (v28 != a2);
  }

  v34 = v25 + v21;
  v142 = a3 + 1;
  if (v24 < 1)
  {
    result = 0;
  }

  else
  {
    result = 0;
    v36 = v24;
    v37 = __b;
    v38 = v141;
    do
    {
      v39 = *v37;
      if (*v37 != -1)
      {
        *v37 = -1;
        if (*&a15[8 * v39] == -1 && (v24 < 0x33 || v142[v39] - a3[v39] <= (v24 / 0xAuLL)))
        {
          result = (result + 1);
          *v37 = v39;
          *&a15[8 * v39] = *v38;
        }
      }

      ++v38;
      ++v37;
      --v36;
    }

    while (v36);
  }

  if (a2 >= v24)
  {
    v24 = v24;
  }

  else
  {
    v24 = a2;
  }

  v139 = v19;
  if (a2 >= 1 && result != v24)
  {
    v40 = result;
    bzero((v25 + v21), 4 * a2);
    v41 = a3;
    v42 = v19;
    v43 = a2;
    do
    {
      v44 = *v41++;
      *v42 = v44;
      v42 += 8;
      --v43;
    }

    while (v43);
    v45 = 0;
    v26 = __b;
    v20 = &v140[v137];
    v27 = a7;
    result = v40;
    do
    {
      if (*&a15[8 * v45] == -1)
      {
        v46 = a3[v45];
        v47 = v142[v45];
        if (v46 < v47)
        {
          v48 = *(a5 + 4 * v46);
          v49 = *(a7 + 4 * v46) - *&a11[v48];
          v50 = v46 + 1;
          if (v46 + 1 < v47)
          {
            do
            {
              v51 = *(a5 + 4 * v50);
              v52 = *(a7 + 4 * v50) - *&a11[v51];
              if (v52 <= v49)
              {
                v53 = v52 != v49 || v52 == INFINITY;
                if (v53 || *&__b[4 * v51] == -1 && *&__b[4 * v48] != -1)
                {
                  v48 = *(a5 + 4 * v50);
                  v49 = *(a7 + 4 * v50) - *&a11[v51];
                  v46 = v50;
                }
              }

              ++v50;
            }

            while (v47 != v50);
          }

          *(v34 + 4 * v45) = v49;
          v54 = &__b[4 * v48];
          if (*v54 == -1)
          {
            v61 = v19;
LABEL_62:
            result = (result + 1);
            *&a15[8 * v45] = v46;
            *v54 = v45;
            *&v61[8 * v45] = v46 + 1;
          }

          else
          {
            while (v46 < v47)
            {
              v55 = *(a5 + 4 * v46);
              if ((*(a7 + 4 * v46) - *&a11[v55]) <= v49)
              {
                v56 = *&__b[4 * v55];
                v57 = v56;
                v58 = *&v19[8 * v56];
                v59 = v142[v56];
                if (v58 < v59)
                {
                  while (1)
                  {
                    v60 = *(a5 + 4 * v58);
                    if ((*&__b[4 * v60] & 0x80000000) != 0 && (*(a7 + 4 * v58) - *&a11[v60]) <= *(v34 + 4 * v56))
                    {
                      break;
                    }

                    if (v59 == ++v58)
                    {
                      goto LABEL_58;
                    }
                  }

                  *&a15[8 * v56] = v58;
                  *&__b[4 * v60] = v56;
                  v62 = v58 + 1;
                  v61 = v19;
                  *&v19[8 * v57] = v62;
                  v54 = &__b[4 * v55];
                  goto LABEL_62;
                }

LABEL_58:
                *&v19[8 * v56] = v59;
                v47 = v142[v45];
              }

              ++v46;
            }
          }
        }
      }

      ++v45;
    }

    while (v45 != a2);
  }

  if (result != v24)
  {
    if (v129 >= 1)
    {
      v69 = 8 * v129;
      v70 = &a15[16 * a2];
      v71 = &v70[(2 * v134) & 0x7FFFFFFF0];
      v135 = result;
      memset_pattern16(&v71[v137 + v69], &unk_23681FB20, 4 * v129);
      v72 = &v70[v21 + v137 + v69];
      v19 = v139;
      memset(v72, 255, 4 * v129);
      result = v135;
      v26 = __b;
      v20 = &v140[v137];
      v27 = a7;
    }

    if (a2 < 1)
    {
      goto LABEL_167;
    }

    v73 = 0;
    v74 = a2;
    v18 = a15;
    v127 = &a15[16 * a2 + v137];
    v75 = -1;
    v76 = -1;
    v24 = result;
    v131 = a3;
    while (v18[v73] != -1)
    {
LABEL_163:
      if (++v73 == v74)
      {
        goto LABEL_65;
      }
    }

    v132 = v24;
    *&v140[4 * v73] = -1;
    v77 = a3[v73];
    v78 = v142[v73];
    v130 = v73;
    if (v77 >= v78)
    {
      v136 = v76;
      v133 = v75;
      LODWORD(v87) = 0;
      v80 = INFINITY;
      v81 = INFINITY;
      LODWORD(v82) = v129;
    }

    else
    {
      v79 = 0;
      v80 = INFINITY;
      v81 = INFINITY;
      LODWORD(v82) = v129;
      do
      {
        v83 = *(a5 + 4 * v77);
        v84 = *&a11[v83];
        v85 = *(v27 + 4 * v77) - v84;
        if (v85 < v81)
        {
          if (v26[v83] == -1)
          {
            v81 = *(v27 + 4 * v77) - v84;
            v76 = v73;
            v75 = v77;
          }

          else
          {
            if (v85 < v80)
            {
              v80 = *(v27 + 4 * v77) - v84;
            }

            *(v34 + 4 * v83) = v85;
            *&v141[8 * v79++] = v77;
            v78 = v142[v73];
          }
        }

        ++v77;
      }

      while (v77 < v78);
      v136 = v76;
      v133 = v75;
      if (v79 >= 1)
      {
        v86 = 0;
        v87 = 0;
        v88 = v129;
        do
        {
          v89 = *&v141[8 * v86];
          v90 = *(a5 + 4 * v89);
          v91 = *(v34 + 4 * v90);
          if (v81 <= v91)
          {
            *(v34 + 4 * v90) = 2139095040;
          }

          else
          {
            if (v91 <= v80)
            {
              *&v20[4 * --v88] = v90;
              *(v25 + 4 * v90) = v88;
              v92 = v87;
            }

            else
            {
              v92 = (v87 + 1);
              *(v25 + 4 * v90) = v87;
              if (v87 < 1)
              {
                *&v20[4 * v87] = v90;
              }

              else
              {
                while (1)
                {
                  v93 = *&v20[4 * ((v87 + 1) >> 1) - 4];
                  if (v91 >= *(v34 + 4 * v93))
                  {
                    break;
                  }

                  *&v20[4 * v87] = v93;
                  *(v25 + 4 * v93) = v87;
                  v108 = v87 > 2;
                  LODWORD(v87) = ((v87 + 1) >> 1) - 1;
                  if (!v108)
                  {
                    LODWORD(v87) = 0;
                    break;
                  }
                }

                *&v20[4 * v87] = v90;
                *(v25 + 4 * v90) = v87;
              }
            }

            v94 = v26[v90];
            *&v19[8 * v94] = v89;
            *&v140[4 * v94] = v130;
            v87 = v92;
          }

          ++v86;
        }

        while (v86 != v79);
        goto LABEL_104;
      }

      LODWORD(v87) = 0;
    }

    v88 = v82;
LABEL_104:
    v146[0] = v87;
    if (v132 >= 1)
    {
      v138 = 0;
      v82 = v129;
      while (1)
      {
        if (v88 == v82)
        {
          a3 = v131;
          if (!v146[0])
          {
            LODWORD(v82) = v88;
LABEL_145:
            v18 = a15;
LABEL_146:
            v19 = v139;
            break;
          }

          v80 = *(v34 + 4 * *v20);
          v18 = a15;
          v19 = v139;
          if (v80 >= v81)
          {
            LODWORD(v82) = v88;
            break;
          }

          if (v146[0] >= 1)
          {
            v95 = &v127[4 * v88 - 4];
            do
            {
              v96 = *v20;
              if (*(v34 + 4 * *v20) > v80)
              {
                break;
              }

              sub_2366FF274(0, v146, v20, v129 & 0x3FFFFFFFFFFFFFFFLL, v34, v143 & 0x3FFFFFFFFFFFFFFFLL, v25);
              v26 = __b;
              v20 = v145;
              v27 = a7;
              --v88;
              *v95 = v96;
              v95 -= 4;
              *(v25 + 4 * v96) = v88;
            }

            while (v146[0] > 0);
          }
        }

        else
        {
          a3 = v131;
        }

        v97 = v82 - 1;
        v98 = *&v20[4 * v82 - 4];
        v99 = *(v34 + 4 * v98);
        if (v99 >= v81)
        {
          goto LABEL_145;
        }

        v100 = v26[v98];
        v101 = a3[v100];
        v102 = v142[v100];
        if (v101 < v102)
        {
          v103 = (v99 - *(v27 + 4 * *&a15[8 * v100])) + *&a11[v98];
          do
          {
            v104 = *(a5 + 4 * v101);
            v105 = *(v25 + 4 * v104);
            if (v97 > v105)
            {
              v106 = *&a11[v104];
              v107 = (v103 + *(v27 + 4 * v101)) - v106;
              if (v107 < v81)
              {
                if (v26[v104] == -1)
                {
                  v81 = (v103 + *(v27 + 4 * v101)) - v106;
                  v136 = v100;
                  v133 = v101;
                }

                else
                {
                  v108 = *(v34 + 4 * v104) > v107 && v105 < v88;
                  if (v108)
                  {
                    *(v34 + 4 * v104) = v107;
                    if (v107 <= v80)
                    {
                      if (v105 != -1)
                      {
                        sub_2366FF274(v105, v146, v20, v129 & 0x3FFFFFFFFFFFFFFFLL, v34, v143 & 0x3FFFFFFFFFFFFFFFLL, v25);
                        v26 = __b;
                        v20 = v145;
                        v27 = a7;
                      }

                      *&v20[4 * --v88] = v104;
                      *(v25 + 4 * v104) = v88;
                    }

                    else
                    {
                      if (v105 == -1)
                      {
                        LODWORD(v105) = v146[0]++;
                        *(v25 + 4 * v104) = v105;
                      }

                      if (v105 < 1)
                      {
                        *&v20[4 * v105] = v104;
                      }

                      else
                      {
                        while (1)
                        {
                          v109 = *&v20[4 * ((v105 + 1) >> 1) - 4];
                          if (v107 >= *(v34 + 4 * v109))
                          {
                            break;
                          }

                          *&v20[4 * v105] = v109;
                          *(v25 + 4 * v109) = v105;
                          v108 = v105 > 2;
                          LODWORD(v105) = ((v105 + 1) >> 1) - 1;
                          if (!v108)
                          {
                            LODWORD(v105) = 0;
                            break;
                          }
                        }

                        *&v20[4 * v105] = v104;
                        *(v25 + 4 * v104) = v105;
                      }
                    }

                    v110 = v26[v104];
                    *&v139[8 * v110] = v101;
                    *&v140[4 * v110] = v100;
                    v102 = v142[v100];
                  }
                }
              }
            }

            ++v101;
          }

          while (v101 < v102);
        }

        v82 = v97;
        if (++v138 >= v132)
        {
          LODWORD(v82) = v97;
          a3 = v131;
          v18 = a15;
          goto LABEL_146;
        }
      }
    }

    if (v81 == INFINITY)
    {
      v111 = v129;
      v24 = v132;
    }

    else
    {
      v26[*(a5 + 4 * v133)] = v136;
      v18[v136] = v133;
      if ((v132 & 0x80000000) == 0)
      {
        v112 = v132 + 1;
        v113 = v136;
        do
        {
          v114 = *&v140[4 * v113];
          if (v114 == -1)
          {
            break;
          }

          v115 = *&v19[8 * v113];
          v26[*(a5 + 4 * v115)] = v114;
          v18[v114] = v115;
          v113 = v114;
          --v112;
        }

        while (v112);
      }

      if (v82 < v129)
      {
        v116 = &v127[4 * v82];
        v117 = v129 - v82;
        do
        {
          v118 = *v116;
          v116 += 4;
          *&a11[v118] = (*&a11[v118] + *(v34 + 4 * v118)) - v81;
          --v117;
        }

        while (v117);
      }

      v24 = (v132 + 1);
      v111 = v129;
    }

    if (v88 < v111)
    {
      v119 = &v127[4 * v88];
      v120 = v129 - v88;
      do
      {
        v121 = *v119;
        v119 += 4;
        *(v34 + 4 * v121) = 2139095040;
        *(v25 + 4 * v121) = -1;
        --v120;
      }

      while (v120);
    }

    v122 = v146[0];
    v123 = v20;
    if (v146[0] >= 1)
    {
      do
      {
        v124 = *v123;
        v123 += 4;
        *(v34 + 4 * v124) = 2139095040;
        *(v25 + 4 * v124) = -1;
        --v122;
      }

      while (v122);
    }

    v73 = v130;
    v74 = a2;
    v75 = v133;
    v76 = v136;
    goto LABEL_163;
  }

LABEL_65:
  if (a2 < 1)
  {
    result = v24;
LABEL_167:
    v65 = v129;
    goto LABEL_168;
  }

  v64 = a2;
  v65 = v129;
  do
  {
    v67 = *v18++;
    v66 = v67;
    if (v67 == -1)
    {
      v68 = 0.0;
    }

    else
    {
      v68 = *(v27 + 4 * v66) - *&a11[*(a5 + 4 * v66)];
    }

    *a13++ = v68;
    --v64;
  }

  while (v64);
  result = v24;
LABEL_168:
  if (v65 >= 1)
  {
    v125 = v65;
    do
    {
      v126 = *v26++;
      if (v126 == -1)
      {
        *v23 = 0;
      }

      ++v23;
      --v125;
    }

    while (v125);
  }

  return result;
}

uint64_t sub_2366FF274(uint64_t result, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a2 - 1;
  if (v7 == result)
  {
    *a2 = result;
    return result;
  }

  *a2 = v7;
  v8 = *(a3 + 4 * v7);
  v9 = *(a5 + 4 * v8);
  if (result < 1)
  {
    *(a3 + 4 * result) = v8;
    v14 = (a7 + 4 * v8);
    *v14 = result;
LABEL_12:
    v15 = 2 * result;
    v16 = *a2 - 1;
    if (2 * result < v16)
    {
      while (1)
      {
        v17 = v15 | 1;
        v18 = *(a5 + 4 * *(a3 + 4 * v17));
        if (v17 < v16)
        {
          v19 = v15 + 2;
          v20 = *(a5 + 4 * *(a3 + 4 * v19));
          if (v18 <= v20)
          {
            v17 = v17;
          }

          else
          {
            v17 = v19;
          }

          if (v18 > v20)
          {
            v18 = *(a5 + 4 * *(a3 + 4 * v19));
          }
        }

        if (v9 <= v18)
        {
          break;
        }

        v21 = *(a3 + 4 * v17);
        *(a3 + 4 * result) = v21;
        *(a7 + 4 * v21) = result;
        v15 = 2 * v17;
        v16 = *a2 - 1;
        result = v17;
        if (2 * v17 >= v16)
        {
          goto LABEL_24;
        }
      }
    }

    LODWORD(v17) = result;
LABEL_24:
    *(a3 + 4 * v17) = v8;
    *v14 = v17;
    return result;
  }

  v10 = result;
  while (1)
  {
    v11 = (v10 + 1) / 2 - 1;
    v12 = *(a3 + 4 * v11);
    if (v9 >= *(a5 + 4 * v12))
    {
      break;
    }

    *(a3 + 4 * v10) = v12;
    *(a7 + 4 * v12) = v10;
    v13 = v10 <= 2;
    v10 = (v10 + 1) / 2 - 1;
    if (v13)
    {
      goto LABEL_11;
    }
  }

  v11 = v10;
LABEL_11:
  *(a3 + 4 * v11) = v8;
  v14 = (a7 + 4 * v8);
  *v14 = v11;
  if (v11 == result)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t _SparseGetIterativeStateSize_Complex_Double(_DWORD *a1, uint64_t a2, int a3, int a4, int a5)
{
  if (*a1 == 2)
  {
    return sub_2367FD1CC((a1 + 2), a2, a3, a4, a5);
  }

  if (*a1 == 1)
  {
    return sub_2367FB7D0(a1, a2, a4, a5);
  }

  return sub_2367FB224(a2, a4, a5);
}

uint64_t _SparseGetIterativeStateSize_Complex_Float(_DWORD *a1, uint64_t a2, int a3, int a4, int a5)
{
  if (*a1 == 2)
  {
    return sub_2367A3008((a1 + 2), a2, a3, a4, a5);
  }

  if (*a1 == 1)
  {
    return sub_23674D4B8(a1, a2, a4, a5);
  }

  return sub_23676C054(a2, a4, a5);
}

uint64_t SparseRankTwoInitialSparseFactor@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  return result;
}

void SparseRankTwoUpdateSparseSolve(uint64_t a1, DenseMatrix_Double *a2)
{
  v70 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v5 = *v4;
  v6 = v4[2];
  *&Factored.symbolicFactorization.columnCount = v4[1];
  *&Factored.symbolicFactorization.workspaceSize_Float = v6;
  *&Factored.status = v5;
  v7 = v4[3];
  v8 = v4[4];
  v9 = v4[5];
  v55 = *(v4 + 12);
  *&Factored.userFactorStorage = v8;
  *&Factored.solveWorkspaceRequiredStatic = v9;
  *&Factored.symbolicFactorization.factorSize_Float = v7;
  Soln = *a2;
  if (Factored.symbolicFactorization.status || !Factored.symbolicFactorization.workspaceSize_Float)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v56, &Factored.symbolicFactorization);
  reportError = v56.reportError;
  if (Factored.symbolicFactorization.status || !Factored.symbolicFactorization.workspaceSize_Float || Factored.status || !Factored.solveWorkspaceRequiredStatic)
  {
    if (v56.reportError)
    {
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v57 = 0u;
      memset(&v56, 0, sizeof(v56));
      snprintf(&v56, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
      goto LABEL_36;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F736C();
    }

LABEL_4:
    _SparseTrap();
  }

  if (Soln.columnStride < Soln.rowCount)
  {
    if (v56.reportError)
    {
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v57 = 0u;
      memset(&v56, 0, sizeof(v56));
      snprintf(&v56, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
LABEL_36:
      (reportError)(&v56);
      goto LABEL_5;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366FFF74();
    }

    goto LABEL_4;
  }

  if (*&Soln.attributes)
  {
    columnCount = Soln.columnCount;
  }

  else
  {
    columnCount = Soln.rowCount;
  }

  if (*&Soln.attributes)
  {
    rowCount = Soln.rowCount;
  }

  else
  {
    rowCount = Soln.columnCount;
  }

  if (rowCount <= 0)
  {
    if (v56.reportError)
    {
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v57 = 0u;
      memset(&v56, 0, sizeof(v56));
      snprintf(&v56, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
      goto LABEL_36;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366FFDD4();
    }

    goto LABEL_4;
  }

  if (Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization) <= Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization))
  {
    v49 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
  }

  else
  {
    v49 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
  }

  if (columnCount != v49)
  {
    if (v56.reportError)
    {
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v57 = 0u;
      memset(&v56, 0, sizeof(v56));
      snprintf(&v56, 0x100uLL, "%s (%dx%d) is not consistent with largest dimension of matrix factorization %s (%d).\n");
      goto LABEL_36;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366FFE58();
    }

    goto LABEL_4;
  }

  free = v56.free;
  v51 = (v56.malloc)(Factored.solveWorkspaceRequiredPerRHS + v55 * rowCount);
  if (!v51)
  {
    if (reportError)
    {
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v57 = 0u;
      memset(&v56, 0, sizeof(v56));
      snprintf(&v56, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
      goto LABEL_36;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366FFEF8();
    }

    goto LABEL_4;
  }

  v52 = v51;
  _SparseSolveOpaque_Double(&Factored, 0, &Soln, v51);
  (free)(v52);
LABEL_5:
  v10 = malloc_type_malloc(8 * a2->columnCount, 0x100004000313F17uLL);
  v11 = malloc_type_malloc(8 * a2->rowCount * a2->columnCount, 0x100004000313F17uLL);
  v12 = *(a1 + 16);
  if (v12)
  {
    LODWORD(v13) = a2->columnCount;
    do
    {
      memcpy(v11, a2->data, 8 * a2->rowCount * v13);
      bzero(v10, 8 * a2->columnCount);
      v13 = a2->columnCount;
      if (v13 >= 1)
      {
        v14 = 0;
        v15 = *(v12 + 28);
        do
        {
          if (v15 >= 1)
          {
            v16 = a2->rowCount * v14;
            v18 = *(v12 + 32);
            v17 = *(v12 + 40);
            v19 = *(v10 + v14);
            v20 = v15;
            do
            {
              v21 = *v17++;
              v22 = v21;
              LODWORD(v21) = *v18++;
              v19 = v19 + v22 * *&v11[8 * LODWORD(v21) + 8 * v16];
              *(v10 + v14) = v19;
              --v20;
            }

            while (v20);
          }

          ++v14;
        }

        while (v14 != v13);
        v23 = 0;
        LODWORD(v24) = a2->rowCount;
        do
        {
          if (v24 >= 4)
          {
            v26 = 0;
            v27 = 0;
            do
            {
              v28 = (*(v12 + 16) + v26 * 8);
              v29 = *v28;
              v30 = v28[1];
              v31 = (v28 + 8 * v24);
              v32 = &v11[8 * v23 * v24 + v26 * 8];
              v33 = *(v10 + v23);
              v34 = vmlaq_n_f64(*v32, v29, v33);
              v29.f64[0] = *&v11[8 * *(v12 + 24) + 8 * v24 * v23];
              v35 = vmlaq_n_f64(vmlaq_n_f64(v32[1], v30, v33), v31[1], v29.f64[0]);
              v36 = &a2->data[v23 * v24 + v26];
              *v36 = vmlaq_n_f64(v34, *v31, v29.f64[0]);
              v36[1] = v35;
              v24 = a2->rowCount;
              v37 = v27 + 8;
              v27 += 4;
              v26 += 4;
            }

            while (v37 <= v24);
            v25 = v27;
          }

          else
          {
            v25 = 0;
          }

          if (v25 < v24)
          {
            v38 = *(v12 + 24) + (v24 * v23);
            v39 = (*(v12 + 16) + 8 * v25);
            v40 = v25 + v24 * v23;
            v41 = &v11[8 * v40];
            v42 = &a2->data[v40];
            v43 = v24 - v25;
            do
            {
              v44 = *v41++;
              *v42++ = v44 + *v39 * *(v10 + v23) + v39[v24] * *&v11[8 * v38];
              ++v39;
              --v43;
            }

            while (v43);
          }

          ++v23;
        }

        while (v23 < a2->columnCount);
        LODWORD(v13) = a2->columnCount;
      }

      v12 = *(v12 + 48);
    }

    while (v12);
  }

  ::free(v10);
  ::free(v11);
  v45 = *MEMORY[0x277D85DE8];
}

void SparseRankTwoUpdateSparseCleanup(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    do
    {
      free(*(v1 + 16));
      free(*(v1 + 32));
      free(*(v1 + 40));
      v2 = *(v1 + 48);
      free(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void sub_2366FFDD4()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2366FFDB8();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2366FFE58()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2366FFDB8();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2366FFEF8()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2366FFF74()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t sub_236700018(FILE *a1, const char *a2, int *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = "UNTITLED";
  if (a2)
  {
    v5 = a2;
  }

  result = fprintf(a1, "%-72s%8s\n", v5, "00000000");
  if ((result & 0x80000000) == 0)
  {
    v7 = a3[1];
    v8 = v7 / 3;
    v9 = v7 / 3 + 1;
    v10 = *(*(a3 + 1) + 8 * v7) - 1;
    result = fprintf(a1, "%14ld %13d %13ld %13ld\n", v10 / 6 + 1 + v8 + 5 + v10 / 2 + 1, v9, v10 / 6 + 1, v10 / 2 + 1);
    if ((result & 0x80000000) == 0)
    {
      v28 = 6373234;
      v11 = *a3;
      v12 = a3[1];
      v13 = *a3 == v12 ? 117 : 114;
      v14 = (~*(a3 + 12) & 0xC) != 0 ? v13 : 115;
      BYTE1(v28) = v14;
      result = fprintf(a1, "%3s            %13d %13d %13ld %13d\n", &v28, v11, v12, *(*(a3 + 1) + 8 * v12), 0);
      if ((result & 0x80000000) == 0)
      {
        snprintf(__str, 0x50uLL, "(%dI22)", 3);
        snprintf(v30, 0x50uLL, "(%dI12)", 6);
        snprintf(v29, 0x50uLL, "(%dE27.16)", 2);
        result = fprintf(a1, "%16s%16s%20s\n", __str, v30, v29);
        if ((result & 0x80000000) == 0)
        {
          v15 = a3[1];
          if ((v15 & 0x80000000) != 0)
          {
LABEL_21:
            v21 = *(*(a3 + 1) + 8 * v15);
            v22 = v21 - 1;
            if (v21 < 1)
            {
              result = 0;
            }

            else
            {
              v23 = 0;
              v24 = -1;
              v25 = 1;
              while (1)
              {
                result = fprintf(a1, "%12d", *(*(a3 + 2) + v23) + 1);
                if ((result & 0x80000000) != 0)
                {
                  break;
                }

                if (!--v21 || !(v24 + 6 * (v25 / 6)))
                {
                  result = fprintf(a1, "\n");
                  if ((result & 0x80000000) != 0)
                  {
                    break;
                  }
                }

                --v24;
                ++v25;
                v23 += 4;
                if (!v21)
                {
                  while (1)
                  {
                    result = fprintf(a1, "%27.16e", *(*(a3 + 4) + 8 * v21));
                    if ((result & 0x80000000) != 0)
                    {
                      goto LABEL_35;
                    }

                    if ((v21 & 1) != 0 || v22 == v21)
                    {
                      v26 = fprintf(a1, "\n");
                      if (v26 < 0 || v22 == v21)
                      {
                        result = v26 & (v26 >> 31);
                        goto LABEL_35;
                      }
                    }

                    ++v21;
                  }
                }
              }
            }
          }

          else
          {
            v16 = 0;
            v17 = 8 * v15;
            v18 = 8 * v15 + 8;
            v19 = -1;
            v20 = 1;
            while (1)
            {
              result = fprintf(a1, "%22ld", *(*(a3 + 1) + v16) + 1);
              if ((result & 0x80000000) != 0)
              {
                break;
              }

              if (v17 == v16 || !(v19 + 3 * (v20 / 3)))
              {
                result = fprintf(a1, "\n");
                if ((result & 0x80000000) != 0)
                {
                  break;
                }
              }

              v16 += 8;
              --v19;
              ++v20;
              if (v18 == v16)
              {
                LODWORD(v15) = a3[1];
                goto LABEL_21;
              }
            }
          }
        }
      }
    }
  }

LABEL_35:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

int *sub_23670039C(FILE *a1, uint64_t a2, size_t a3, char *a4)
{
  __endptr[16] = *MEMORY[0x277D85DE8];
  __linecapp = 81;
  __linep = malloc_type_malloc(0x51uLL, 0x66584420uLL);
  if (getline(&__linep, &__linecapp, a1) > 0)
  {
    if (a4)
    {
      v7 = __linep;
      strncpy(a4, __linep, a3);
      a4[strlen(v7) - 1] = 0;
    }

    v62 = 0;
    v63 = 0;
    v60 = 0;
    v61 = 0;
    v59 = 0;
    if (getline(&__linep, &__linecapp, a1) <= 0)
    {
      v8 = *MEMORY[0x277D85DF8];
      v9 = "File is missing header line 1.\n";
    }

    else
    {
      if ((sscanf(__linep, "%ld %ld %ld %ld %ld", &v63, &v62, &v61, &v60, &v59) - 6) <= 0xFFFFFFFD)
      {
        v8 = *MEMORY[0x277D85DF8];
        v9 = "Header line 1 is malformed.\n";
LABEL_12:
        v10 = 28;
        goto LABEL_15;
      }

      v54 = 0;
      v55 = 0;
      v52 = 0;
      v53 = 0;
      if (getline(&__linep, &__linecapp, a1) > 0)
      {
        if (sscanf(__linep, "%3s %ld %ld %ld %ld", &v56, &v55, &v54, &v53, &v52) <= 4)
        {
          v8 = *MEMORY[0x277D85DF8];
          v9 = "Header line 2 is malformed.\n";
          goto LABEL_12;
        }

        v14 = v56 - 67;
        if (v14 <= 0x2F)
        {
          if (((1 << v14) & 0x804000008040) != 0)
          {
            v15 = 0;
            goto LABEL_24;
          }

          if (((1 << v14) & 0x100000001) != 0)
          {
            v8 = *MEMORY[0x277D85DF8];
            v9 = "Cannot read complex-valued matrix into real-valued type.\n";
            v10 = 57;
            goto LABEL_15;
          }

          if (((1 << v14) & 0x200000002000) != 0)
          {
            v15 = 1;
LABEL_24:
            if (v52 || (v58 & 0xDF) != 0x41)
            {
              v8 = *MEMORY[0x277D85DF8];
              v9 = "Elemental matrices are not supported (yet).\n";
              v10 = 44;
              goto LABEL_15;
            }

            v16 = 8 * v53;
            if (v15)
            {
              v16 = 0;
            }

            v17 = malloc_type_malloc(4 * v53 + 8 * v54 + v16 + 96, 0x10900405D25300CuLL);
            v11 = v17;
            v18 = (v17 + 55) & 0xFFFFFFFFFFFFFFF0;
            v19 = v54;
            *v17 = v55;
            *(v17 + 1) = v19;
            *(v17 + 6) = 0;
            v17[28] = 1;
            *(v17 + 29) = 0;
            v17[31] = 0;
            v20 = (v18 + 8 * v19 + 23) & 0xFFFFFFFFFFFFFFF0;
            *(v17 + 1) = v18;
            *(v17 + 2) = v20;
            v21 = (v20 + 4 * v53 + 15) & 0xFFFFFFFFFFFFFFF0;
            if (v15)
            {
              v21 = 0;
            }

            *(v17 + 4) = v21;
            v22 = v57 - 72;
            if (v22 <= 0x2D)
            {
              if (((1 << v22) & 0x240000002400) != 0)
              {
                v23 = *(v17 + 12) & 0xFFF3;
                goto LABEL_39;
              }

              if (((1 << v22) & 0x100000001) != 0)
              {
                v48 = *MEMORY[0x277D85DF8];
                v49 = "Hermitian matrices are not supported with real-valued type (did you mean Symmetric?)\n";
                v50 = 85;
                goto LABEL_79;
              }

              if (((1 << v22) & 0x80000000800) != 0)
              {
                v23 = *(v17 + 12) | 0xE;
LABEL_39:
                *(v17 + 12) = v23;
                if (getline(&__linep, &__linecapp, a1) < 1)
                {
                  v48 = *MEMORY[0x277D85DF8];
                  v49 = "File is missing header line 3.\n";
                }

                else
                {
                  v24 = v62-- < 1;
                  if (!v24)
                  {
                    v25 = 0;
                    while (getline(&__linep, &__linecapp, a1) > 0)
                    {
                      v26 = __linep;
                      __endptr[0] = 0;
                      while (1)
                      {
                        v27 = strtol(v26, __endptr, 0);
                        v28 = __endptr[0];
                        if (__endptr[0] == v26)
                        {
                          break;
                        }

                        v29 = v25 + 1;
                        *(*(v11 + 1) + 8 * v25) = v27 - 1;
                        v26 = v28;
                        v24 = v25++ < v11[1];
                        if (!v24)
                        {
                          goto LABEL_48;
                        }
                      }

                      v29 = v25;
LABEL_48:
                      v30 = v62--;
                      v25 = v29;
                      if (v30 <= 0)
                      {
                        goto LABEL_49;
                      }
                    }

                    v48 = *MEMORY[0x277D85DF8];
                    v49 = "File truncated in pointer lines.\n";
                    v50 = 33;
                    goto LABEL_79;
                  }

LABEL_49:
                  v24 = v61-- < 1;
                  if (!v24)
                  {
                    v31 = 0;
                    while (getline(&__linep, &__linecapp, a1) > 0)
                    {
                      v32 = __linep;
                      __endptr[0] = 0;
                      while (1)
                      {
                        v33 = strtol(v32, __endptr, 0);
                        v34 = __endptr[0];
                        if (__endptr[0] == v32)
                        {
                          break;
                        }

                        v35 = v31 + 1;
                        *(*(v11 + 2) + 4 * v31) = v33 - 1;
                        v31 = v35;
                        v32 = v34;
                        if (v35 >= v53)
                        {
                          goto LABEL_57;
                        }
                      }

                      v35 = v31;
LABEL_57:
                      v36 = v61--;
                      v31 = v35;
                      if (v36 <= 0)
                      {
                        goto LABEL_58;
                      }
                    }

                    v48 = *MEMORY[0x277D85DF8];
                    v49 = "File truncated in row index lines.\n";
                    v50 = 35;
                    goto LABEL_79;
                  }

LABEL_58:
                  if ((v15 & 1) != 0 || (v37 = *(v11 + 4), v24 = v60 < 1, --v60, v24))
                  {
LABEL_72:
                    free(__linep);
                    goto LABEL_17;
                  }

                  v38 = 0;
                  while (getline(&__linep, &__linecapp, a1) > 0)
                  {
                    v39 = strtok(__linep, " \t\n");
                    v51 = 0;
                    if (v39)
                    {
                      v40 = v39;
                      do
                      {
                        v41 = strtod(v40, &v51);
                        v42 = v51;
                        if (*v51)
                        {
                          __memcpy_chk();
                          v43 = __endptr + v42 - v40;
                          *v43 = 69;
                          v44 = strlen(v42);
                          memcpy(v43 + 1, v42, v44 + 1);
                          v45 = strtod(__endptr, &v51);
                          if (*v51)
                          {
                            fprintf(*MEMORY[0x277D85DF8], "Number %s not read correctly as %s\n", v40, __endptr);
                          }
                        }

                        else
                        {
                          v45 = v41;
                        }

                        v46 = v38 + 1;
                        *(v37 + 8 * v38) = v45;
                        v40 = strtok(0, " \t\n");
                        ++v38;
                      }

                      while (v40);
                    }

                    else
                    {
                      v46 = v38;
                    }

                    v47 = v60--;
                    v38 = v46;
                    if (v47 <= 0)
                    {
                      goto LABEL_72;
                    }
                  }

                  v48 = *MEMORY[0x277D85DF8];
                  v49 = "File truncated in value lines.\n";
                }

                v50 = 31;
LABEL_79:
                fwrite(v49, v50, 1uLL, v48);
                goto LABEL_80;
              }
            }

            fprintf(*MEMORY[0x277D85DF8], "Unsuported matrix type %c%c%c\n", v56, v57, v58);
LABEL_80:
            free(v11);
            goto LABEL_16;
          }
        }

        v8 = *MEMORY[0x277D85DF8];
        v9 = "Unsupported matrix type.\n";
        v10 = 25;
        goto LABEL_15;
      }

      v8 = *MEMORY[0x277D85DF8];
      v9 = "File is missing header line 2.\n";
    }

    v10 = 31;
    goto LABEL_15;
  }

  v8 = *MEMORY[0x277D85DF8];
  v9 = "File is missing description line.\n";
  v10 = 34;
LABEL_15:
  fwrite(v9, v10, 1uLL, v8);
LABEL_16:
  v11 = 0;
LABEL_17:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_236700AAC(int a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, __n128 a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v44 = a3 - 1;
  if (a3 < 1)
  {
    goto LABEL_35;
  }

  v13 = 0;
  v45 = a5 + 8 * ~a6 * a4;
  v51 = a5 + 8;
  v52 = a6 + 1;
  v14 = 8 * a6;
  v50 = 8 * a6 + 8;
  v15 = a3;
  v16 = a9;
  v53 = a6;
  while (1)
  {
    v17 = (v13 + 1);
    if (v17 >= a3)
    {
      break;
    }

    v18 = (v51 + v50 * v13);
    a7.n128_u64[0] = -1.0;
    v19 = -1;
    v20 = v13 + 1;
    do
    {
      v21 = *v18++;
      v22 = fabs(v21);
      if (v22 > a7.n128_f64[0])
      {
        a7.n128_f64[0] = v22;
        v19 = v20;
      }

      ++v20;
    }

    while (a3 != v20);
    if (v19 < 0)
    {
      goto LABEL_13;
    }

    v23 = *(a10 + 24);
    if (a7.n128_f64[0] >= v23 || fabs(*(a5 + 8 * v52 * v13)) >= v23)
    {
      goto LABEL_13;
    }

    sub_2367781D0((v13 + a4), (--v15 + a4), (a4 + a1), (a4 + a2), v45);
    v17 = v13;
LABEL_27:
    v13 = v17;
    a6 = v53;
    if (v17 >= v15)
    {
      goto LABEL_32;
    }
  }

  a7.n128_u64[0] = -1.0;
  v19 = -1;
LABEL_13:
  if (v13 != v15 - 1 || *(a5 + 8 * v52 * v13) != 0.0)
  {
    v24 = (a5 + 8 * v52 * v13);
    v25 = v16 + 16 * v13;
    if (v19 == -1)
    {
      goto LABEL_26;
    }

    v26 = fabs(*v24);
    if (v26 >= a7.n128_f64[0] * 0.640388203)
    {
      goto LABEL_26;
    }

    v27 = -1.0;
    if (v13 < v19)
    {
      v28 = (a5 + v14 * v13 + 8 * v19);
      v29 = v19 - v13;
      do
      {
        v27 = fmax(v27, fabs(*v28));
        v28 = (v28 + v14);
        --v29;
      }

      while (v29);
    }

    if (v19 + 1 < a3)
    {
      v30 = (a5 + v14 * v19 + 8 * (v19 + 1));
      v31 = v44 - v19;
      do
      {
        v32 = *v30++;
        v27 = fmax(v27, fabs(v32));
        --v31;
      }

      while (v31);
    }

    a7.n128_f64[0] = a7.n128_f64[0] * (a7.n128_f64[0] * 0.640388203);
    if (a7.n128_f64[0] <= v26 * v27)
    {
LABEL_26:
      sub_236778EA4((a3 - v13), (a3 - v13), a5 + 8 * v52 * v13, a6, v16 + 16 * v13, a11, a7);
    }

    else
    {
      v33 = (a3 - v13);
      if (fabs(*(a5 + 8 * v52 * v19)) >= v27 * 0.640388203)
      {
        v36 = (v13 + a4);
        v37 = a6;
        sub_2367781D0(v36, (v19 + a4), (a4 + a1), (a4 + a2), v45);
        sub_236778EA4(v33, v33, v24, v37, v25, a11, v38);
      }

      else
      {
        v34 = (v17 + a4);
        v35 = a6;
        sub_2367781D0(v34, (v19 + a4), (a4 + a1), (a4 + a2), v45);
        sub_23677B60C((a3 - v13), (a3 - v13), v24, v35, v25, a11);
        v17 = (v13 + 2);
      }

      v16 = a9;
    }

    goto LABEL_27;
  }

  v15 = v13;
LABEL_32:
  v39 = (a3 - v15);
  if (a3 > v15)
  {
    v40 = a9 + 16 * v15;
    v41 = (a5 + 8 * v52 * v15);
    v42 = v14 + 8;
    do
    {
      *v41 = 0x3E50000000000000;
      sub_236778EA4(v39, v39, v41, a6, v40, a11, a7);
      a6 = v53;
      v40 += 16;
      v41 = (v41 + v42);
      v39 = (v39 - 1);
    }

    while (v39);
  }

LABEL_35:
  sub_23677F628((a1 - a3), a3, a5, a6, a5 + 8 * a3, a6, a9, a11);
  return a3;
}

uint64_t sub_236700E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  v10 = a4;
  v11 = a3;
  v13 = a3 + 8 * a2 * a4;
  if (a2 >= 48)
  {
    LODWORD(v14) = 0;
    v31 = a4 + 1;
    v26 = a1 - a2;
    v28 = a3 + 8 * a2 * a4;
    v29 = a5;
    v27 = a6;
    do
    {
      v15 = v11 + 8 * v31 * v14;
      v16 = v13 + 16 * v14;
      v17 = a2 - v14;
      if (a2 - v14 >= 48)
      {
        v18 = 48;
      }

      else
      {
        v18 = v17;
      }

      v19 = a1;
      v20 = a7;
      v21 = v10;
      sub_236700AAC(a1 - v14, a2 - v14, v18, v14, v11 + 8 * v31 * v14, v10, a8, a5 + 4 * v14, v13 + 16 * v14, a6, a7);
      v14 = (v18 + v14);
      if (v17 >= 1 && v14 < a2)
      {
        v22 = (v17 - v18);
        v23 = v15 + 8 * v18;
        v24 = v15 + 8 * v31 * v18;
        sub_23674491C(v22, v18, v23, v21, v16, v24, v21, v20);
        if (v19 > a2)
        {
          sub_2367490D0(v26, v22, v18, v23 + 8 * v22, v23, v21, v16, v24 + 8 * v22, v21, v20);
        }
      }

      a5 = v29;
      v11 = a3;
      a6 = v27;
      v13 = v28;
      v10 = v21;
      a7 = v20;
      a1 = v19;
    }

    while (v14 < a2);
  }

  else
  {
    sub_236700AAC(a1, a2, a2, 0, a3, a4, a8, a5, v13, a6, a7);
    return a2;
  }

  return v14;
}

BOOL sub_23670100C(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a1;
  v9 = a5 + 8 * a1 * a6;
  v10 = *(v9 + 8 * a1);
  v11 = *(v9 + 8 * a2);
  v12 = *(a5 + 8 * (a2 * a6 + a2));
  v13 = fmax(fabs(v10), fmax(fabs(v11), fabs(v12)));
  v14 = *(a7 + 24);
  if (v13 < v14)
  {
    return 0;
  }

  v15 = 1.0 / v13;
  v16 = v10 * v15;
  v17 = v12 * (v10 * v15);
  v18 = v11 * (v11 * v15);
  v19 = vabdd_f64(v17, v18);
  if (v19 < v14)
  {
    return 0;
  }

  if (v19 < fmax(fabs(v17) * 0.5, fabs(v18) * 0.5))
  {
    return 0;
  }

  v25 = v17 - v18;
  v26 = v12 * v15 / (v17 - v18);
  v27 = -(v11 * v15) / (v17 - v18);
  sub_236701184(a1, a2, a3, a4, a5, a6);
  v29 = v28;
  sub_236701184(a2, v8, a3, a4, a5, a6);
  v31 = fabs(v27);
  v32 = 1.0 / *(a7 + 16);
  if (v31 * v30 + fabs(v26) * v29 > v32)
  {
    return 0;
  }

  return fabs(v16 / v25) * v30 + v31 * v29 <= v32;
}

uint64_t sub_236701184(uint64_t result, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v6 = 0.0;
  if (a4 < result)
  {
    v7 = a2 - a4;
    v8 = (a5 + 8 * a6 * a4 + 8 * result);
    v9 = result - a4;
    do
    {
      if (v7)
      {
        v10 = fabs(*v8);
        if (v10 > v6)
        {
          v6 = v10;
        }
      }

      --v7;
      v8 += a6;
      --v9;
    }

    while (v9);
  }

  v11 = result + 1;
  if (result + 1 < a3)
  {
    v12 = a2 - v11;
    v13 = (a5 + 8 * a6 * result + 8 * v11);
    v14 = ~result + a3;
    do
    {
      if (v12)
      {
        v15 = fabs(*v13);
        if (v15 > v6)
        {
          v6 = v15;
        }
      }

      --v12;
      ++v13;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_236701238(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a3 < 1)
  {
    return 0;
  }

  v10 = a6;
  v12 = 0;
  v39 = a5 + 8 * ~a6 * a4;
  v47 = a3;
  v48 = a6 + 1;
  v44 = a5 + 8;
  v13 = 8 * a6;
  v38 = 8 * a6 + 8;
  v14 = a9;
  v37 = a1 - 2;
  while (2)
  {
    v15 = 0;
    v16 = v12;
    v45 = a5 + 8 * v12 * v10;
    v46 = v12 + 1;
    v17 = (v44 + v13 + v13 * v12 + 8 * v12);
    v18 = v12;
    while (1)
    {
      v19 = v18 + 1;
      if (v18 + 1 >= v47)
      {
        break;
      }

      v20 = v12;
      if (v18 > v16)
      {
        v21 = fabs(*(v45 + 8 * v19));
        v22 = v15;
        v23 = v12 + 1;
        v24 = v17;
        LODWORD(v20) = v12;
        do
        {
          v25 = fabs(*v24);
          if (v25 <= v21)
          {
            v20 = v20;
          }

          else
          {
            v21 = v25;
            v20 = v23;
          }

          v24 = (v24 + v13);
          ++v23;
          --v22;
        }

        while (v22);
      }

      v10 = a6;
      if (sub_23670100C(v20, v19, a1, v12, a5, a6, v14))
      {
        sub_2367781D0((v12 + a4), (v20 + a4), (a4 + a1), (a4 + a2), v39);
        sub_2367781D0(v46 + a4, (v19 + a4), (a4 + a1), (a4 + a2), v39);
        v27 = a3;
        sub_23677B60C((a1 - v12), (a3 - v12), a5 + 8 * v48 * v12, a6, a8 + 16 * v12, a10);
        v29 = (v12 + 2);
        goto LABEL_27;
      }

      if (fabs(*(a5 + 8 * v48 * v20)) <= fabs(*(a5 + 8 * v48 * v19)))
      {
        v20 = v19;
      }

      else
      {
        v20 = v20;
      }

      sub_2367016F4(v20, a1, v12, a5, a6);
      if (v26 < *(v14 + 24))
      {
        v10 = a6;
        sub_2367781D0((v12 + a4), (v20 + a4), (a4 + a1), (a4 + a2), v39);
        v14 = a9;
        v34 = *(v45 + 8 * v12);
        if (fabs(v34) < *(a9 + 24))
        {
          v34 = INFINITY;
        }

        *(a8 + 16 * v12) = v34;
        *(a8 + 8 * ((2 * v12) | 1)) = 0;
        *(v45 + 8 * v12) = 0x3FF0000000000000;
        v29 = v46;
        if (v46 < a1)
        {
          bzero((v44 + v38 * v12), 8 * (v37 - v12) + 8);
          v14 = a9;
        }

        v27 = a3;
        goto LABEL_27;
      }

      ++v17;
      ++v15;
      v18 = v19;
      v16 = v12;
      if (v26 * *(v14 + 16) <= fabs(*(a5 + 8 * v48 * v20)))
      {
        v10 = a6;
        sub_2367781D0((v12 + a4), (v20 + a4), (a4 + a1), (a4 + a2), v39);
        v27 = a3;
        sub_236778EA4((a1 - v12), (a3 - v12), a5 + 8 * v48 * v12, a6, a8 + 16 * v12, a10, v28);
        v14 = a9;
        v29 = v46;
        goto LABEL_27;
      }
    }

    v30 = v16;
    v10 = a6;
    sub_2367016F4(v12, a1, v12, a5, a6);
    v32 = *(a9 + 24);
    if (v31.n128_f64[0] < v32)
    {
      v35 = *(v45 + 8 * v30);
      if (fabs(v35) < v32)
      {
        v35 = INFINITY;
      }

      *(a8 + 16 * v30) = v35;
      *(a8 + 8 * ((2 * v30) | 1)) = 0;
      *(v45 + 8 * v30) = 0x3FF0000000000000;
      v29 = v46;
      if (v46 < a1)
      {
        bzero((v44 + v38 * v30), 8 * (v37 - v12) + 8);
      }

      return v29;
    }

    v33 = (a5 + 8 * v48 * v30);
    v31.n128_f64[0] = v31.n128_f64[0] * *(a9 + 16);
    v29 = v46;
    if (v31.n128_f64[0] > fabs(*v33))
    {
      return v12;
    }

    v27 = a3;
    sub_236778EA4((a1 - v12), (a3 - v12), v33, a6, a8 + 16 * v30, a10, v31);
    v14 = a9;
LABEL_27:
    v12 = v29;
    if (v29 < v27)
    {
      continue;
    }

    return v29;
  }
}

uint64_t sub_2367016F4(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = 0.0;
  if (a3 < result)
  {
    v6 = (a4 + 8 * a5 * a3 + 8 * result);
    v7 = result - a3;
    do
    {
      v8 = fabs(*v6);
      if (v8 > v5)
      {
        v5 = v8;
      }

      v6 += a5;
      --v7;
    }

    while (v7);
  }

  if (result + 1 < a2)
  {
    v9 = (a4 + 8 * a5 * result + 8 * (result + 1));
    v10 = ~result + a2;
    do
    {
      v11 = *v9++;
      v12 = fabs(v11);
      if (v12 > v5)
      {
        v5 = v12;
      }

      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_236701784(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a3;
  v10 = a3 + 8 * a2 * a4;
  if (a2 < 48)
  {
    return sub_236701238(a1, a2, a2, 0, a3, a4, a5, v10, a6, a7);
  }

  v12 = 0;
  v28 = a4 + 1;
  v24 = a1 - a2;
  v25 = a3 + 8 * a2 * a4;
  v26 = a5;
  v29 = a6;
  do
  {
    v13 = v8 + 8 * v28 * v12;
    v14 = v10 + 16 * v12;
    v15 = a2 - v12;
    if (a2 - v12 >= 48)
    {
      v16 = 48;
    }

    else
    {
      v16 = a2 - v12;
    }

    v17 = a1;
    v18 = a1 - v12;
    v19 = a5 + 4 * v12;
    v20 = sub_236701238(a1 - v12, a2 - v12, v16, v12, v8 + 8 * v28 * v12, a4, v19, v10 + 16 * v12, a6, a7);
    if (v20)
    {
      v21 = v20;
      if (v16 + v12 < a2 && v20 >= 1)
      {
        v22 = (v15 - v16);
        v23 = v13 + 8 * v28 * v16;
        sub_23674491C(v22, v20, v13 + 8 * v16, a4, v14, v23, a4, a7);
        if (v17 > a2)
        {
          sub_2367490D0(v24, v22, v21, v13 + 8 * v16 + 8 * v22, v13 + 8 * v16, a4, v14, v23 + 8 * v22, a4, a7);
        }
      }

      a1 = v17;
      goto LABEL_15;
    }

    if (v15 < 49)
    {
      break;
    }

    v21 = sub_236701238(v18, a2 - v12, a2 - v12, v12, v13, a4, v19, v14, v29, a7);
    a1 = v17;
    if (!v21)
    {
      break;
    }

LABEL_15:
    v12 = (v21 + v12);
    a5 = v26;
    v8 = a3;
    a6 = v29;
    v10 = v25;
  }

  while (v12 < a2);
  return v12;
}

uint64_t sub_236701A2C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a4;
  v10 = a2;
  v78 = a1;
  if (a1 > 192 || a2 > 96)
  {
    if (a8)
    {
      v11 = (a1 - 1) / 96 + 1;
      v83 = a4;
      v12 = (a2 - 1) / 96 + 1;
      v81[0] = a1;
      v81[1] = a2;
      v82 = a3;
      v84 = a2;
      v79 = 0u;
      v80 = 0u;
      sub_236792218(a8, a9 + 64, &v79);
      *(&v80 + 1) = v81;
      v17 = v12 * v11;
      v18 = *(a9 + 80) + 48 * atomic_fetch_add((a9 + 88), v17);
      if (v17 >= 1)
      {
        _X0 = 0;
        for (i = 0; i != v17; ++i)
        {
          v21 = v18 + 48 * i;
          atomic_store(0, v21);
          *(v21 + 4) = 0;
          *(v21 + 8) = 0;
          v22 = *(v21 + 16);
          do
          {
            _X5 = *(v21 + 24);
            __asm { CASPAL          X4, X5, X0, X1, [X12] }

            _ZF = _X4 == v22;
            v22 = _X4;
          }

          while (!_ZF);
          *(v21 + 32) = 0;
          *(v21 + 40) = 0;
        }
      }

      v77 = v18;
      if (v10 >= 1)
      {
        v71 = 0;
        v75 = v11;
        v70 = 96;
        do
        {
          v27 = v71;
          v28 = v71 / 0x60 * v75;
          v29 = v77 + 48 * v28;
          v30 = v29 + 48 * (v71 / 0x60);
          v73 = v71 / 0x60;
          sub_236792228(&v79, v71 / 0x60, sub_236702178, 1, _X4, _X5, v15, v16, v30);
          v31 = v78;
          v71 += 96;
          if (v27 + 96 < v78)
          {
            v32 = v70;
            do
            {
              sub_236792228(&v79, v28 + v32 / 0x60uLL, sub_236702274, 2, _X4, _X5, v15, v16, v30);
              v31 = v78;
              v32 += 96;
            }

            while (v32 < v78);
          }

          v33 = v70;
          if (v71 >= v10)
          {
            break;
          }

          do
          {
            if (v33 < v31)
            {
              v34 = v33 / 0x60u;
              v35 = v33;
              do
              {
                v36 = v35 / 0x60uLL;
                v37 = (v73 + v33 / 0x60u * v75) * v75 + v36;
                if (v35 / 0x60 == v34)
                {
                  sub_236792228(&v79, v37, sub_236702330, 2, _X4, _X5, v15, v16, v29 + 48 * v34);
                }

                else
                {
                  sub_236792228(&v79, v37, sub_236702330, 3, _X4, _X5, v15, v16, v29 + 48 * v36);
                }

                v35 += 96;
                v31 = v78;
              }

              while (v35 < v78);
            }

            v33 += 96;
            LODWORD(v10) = a2;
          }

          while (v33 < a2);
          v70 += 96;
        }

        while (v71 < a2);
      }

      if (sub_236792900(&v79))
      {
        sub_2366FCEC8(a8);
      }

      return v84;
    }

    else if (a2 >= 1)
    {
      v39 = 0;
      v61 = a1 - 96;
      v58 = a2 - 96;
      v62 = 768 * a4 + 768;
      v57 = a3 + v62;
      v59 = 96;
      v60 = a3 + 768;
      for (j = a4; ; v9 = j)
      {
        if (v10 - v39 >= 96)
        {
          v40 = 96;
        }

        else
        {
          v40 = v10 - v39;
        }

        v74 = v40;
        v81[0] = v40;
        v86 = 76;
        if (a1 - v39 >= 96)
        {
          v41 = 96;
        }

        else
        {
          v41 = a1 - v39;
        }

        LODWORD(v79) = 0;
        v85 = v9;
        dpotf2_NEWLAPACK();
        v42 = v81[0];
        if (v41 > v81[0])
        {
          APL_dtrsm();
          v42 = v81[0];
        }

        if (v42 < v74)
        {
          break;
        }

        a1 = v78;
        v56 = v39 + 96;
        if (v39 + 96 < v78)
        {
          v43 = v60;
          v44 = v59;
          v45 = v61;
          do
          {
            v46 = v45 - 96;
            APL_dtrsm();
            a1 = v78;
            v43 += 768;
            v44 += 96;
            v45 = v46;
          }

          while (v44 < v78);
        }

        if (v56 >= v10)
        {
          return v10;
        }

        v47 = v59;
        v66 = v57;
        v68 = v60;
        v48 = v58;
        v65 = v61;
        do
        {
          v63 = v48;
          v76 = v10 - v47;
          v64 = v47;
          if (v47 < a1)
          {
            v49 = 0;
            v50 = v47;
            v51 = v66;
            v52 = v68;
            v53 = v65;
            do
            {
              v54 = v53;
              _VF = __OFSUB__(v53, 96);
              v53 -= 96;
              if (v53 < 0 != _VF)
              {
                v55 = v54;
              }

              else
              {
                v55 = 96;
              }

              if (v49 || (cblas_dsyrk_NEWLAPACK(), v76 < v55))
              {
                APL_dgemm();
              }

              v51 += 768;
              v52 += 768;
              v49 -= 768;
              v50 += 96;
              a1 = v78;
            }

            while (v50 < v78);
          }

          v47 = v64 + 96;
          v65 -= 96;
          v48 = v63 - 96;
          v10 = a2;
          v66 += v62;
          v68 += 768;
        }

        while (v64 + 96 < a2);
        v61 -= 96;
        v59 += 96;
        v60 += v62;
        v58 -= 96;
        v39 = v56;
        v57 += v62;
      }

      return 0;
    }
  }

  else
  {
    v81[0] = a2;
    v86 = 76;
    LODWORD(v79) = 0;
    v85 = a4;
    dpotf2_NEWLAPACK();
    v10 = v81[0];
    if (v78 > v81[0])
    {
      APL_dtrsm();
      return v81[0];
    }
  }

  return v10;
}