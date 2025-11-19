void *sub_2366DD7E8(uint64_t a1, int *a2)
{
  *(a2 + 16) = sub_2366E7294((*(a1 + 100) + 2) * a2[2], "AllocateKWayPartitionMemory: pwgts");
  *(a2 + 15) = sub_2366E7294(*a2, "AllocateKWayPartitionMemory: where");
  *(a2 + 18) = sub_2366E7294(*a2, "AllocateKWayPartitionMemory: bndptr");
  *(a2 + 19) = sub_2366E7294(*a2, "AllocateKWayPartitionMemory: bndind");
  v10 = *(a1 + 4);
  if (v10 == 1)
  {
    result = sub_23681BC6C(20 * *a2, "AllocateKWayVolPartitionMemory: vkrinfo");
    *(a2 + 22) = result;
    *(a2 + 23) = result;
  }

  else if (v10)
  {
    return sub_236815030(15, "Unknown objtype of %d\n", v4, v5, v6, v7, v8, v9, *(a1 + 4));
  }

  else
  {
    result = sub_23681BC6C(16 * *a2, "AllocateKWayPartitionMemory: ckrinfo");
    *(a2 + 22) = result;
  }

  return result;
}

uint64_t sub_2366DD8D0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_2366E2AA8(a1, a2, a3, a4, a5, a6, a7, a8, v54);
  v10 = *(a1 + 100);
  v11 = *a2;
  v12 = *(a2 + 2);
  v13 = *(a2 + 4);
  v14 = *(a2 + 5);
  v15 = *(a2 + 15);
  v56 = *(a2 + 19);
  v55 = sub_2366E736C(v11, -1, *(a2 + 18));
  v22 = sub_2366E2AB8(a1, v10, v16, v17, v18, v19, v20, v21);
  v23 = sub_2366E736C(v10, -1, v22);
  a2[34] = 0;
  a2[29] = 0;
  if (v11 >= 1)
  {
    v31 = 0;
    v32 = *(a2 + 23);
    v28 = 0x80000000;
    do
    {
      v33 = (v32 + 20 * v31);
      v33[2] = 0x80000000;
      v26 = v33[3];
      if (v26 >= 1)
      {
        v34 = *(v15 + 4 * v31);
        v35 = *(a1 + 280);
        v36 = v33[4];
        a2[29] += *(v13 + 4 * v31) * v26;
        v24 = v12 + 4 * v31;
        v27 = *(v24 + 4);
        v25 = *v24;
        if (v25 >= v27)
        {
          goto LABEL_31;
        }

        do
        {
          v30 = *(v14 + 4 * v25);
          v27 = *(v15 + 4 * v30);
          v37 = v32 + 20 * v30;
          v29 = (v35 + 12 * *(v37 + 16));
          if (*(v37 + 12) >= 1)
          {
            v38 = 0;
            v39 = (v35 + 12 * *(v37 + 16));
            do
            {
              v40 = *v39;
              v39 += 3;
              *(v23 + 4 * v40) = v38++;
            }

            while (v38 < *(v37 + 12));
          }

          *(v23 + 4 * v27) = 1;
          if (v34 == v27)
          {
            v41 = v33[3];
            if (v41 >= 1)
            {
              v42 = (v35 + 12 * v36 + 8);
              do
              {
                if (*(v23 + 4 * *(v42 - 2)) == -1)
                {
                  *v42 -= *(v13 + 4 * v30);
                }

                v42 += 3;
                --v41;
              }

              while (v41);
            }
          }

          else
          {
            v43 = v33[3];
            if (v29[3 * *(v23 + 4 * v34) + 1] == 1)
            {
              if (v43 >= 1)
              {
                v44 = (v35 + 12 * v36 + 8);
                do
                {
                  if (*(v23 + 4 * *(v44 - 2)) != -1)
                  {
                    *v44 += *(v13 + 4 * v30);
                  }

                  v44 += 3;
                  --v43;
                }

                while (v43);
              }
            }

            else
            {
              v45 = (v35 + 12 * v36 + 8);
              if (v43 >= 1)
              {
                do
                {
                  if (*(v23 + 4 * *(v45 - 2)) == -1)
                  {
                    *v45 -= *(v13 + 4 * v30);
                  }

                  v45 += 3;
                  --v43;
                }

                while (v43);
              }
            }
          }

          if (*(v37 + 12) >= 1)
          {
            v30 = 0;
            do
            {
              v46 = *v29;
              v29 += 3;
              *(v23 + 4 * v46) = -1;
              ++v30;
            }

            while (v30 < *(v37 + 12));
          }

          *(v23 + 4 * v27) = -1;
          ++v25;
        }

        while (v25 < *(v24 + 4));
        v26 = v33[3];
        v28 = 0x80000000;
        if (v26 >= 1)
        {
LABEL_31:
          v24 = v33[2];
          v47 = v26;
          v48 = (v35 + 12 * v36 + 8);
          do
          {
            v50 = *v48;
            v48 += 3;
            v49 = v50;
            if (v50 > v24)
            {
              v33[2] = v49;
              v24 = v49;
            }

            --v47;
          }

          while (v47);
        }

        if (v33[1] <= 0)
        {
          v51 = v33[2];
        }

        else
        {
          v51 = v33[2];
          if (!*v33)
          {
            v51 += *(v13 + 4 * v31);
            v33[2] = v51;
          }
        }

        if ((v51 & 0x80000000) == 0)
        {
          *(v56 + 4 * a2[34]) = v31;
          v52 = a2[34];
          a2[34] = v52 + 1;
          *(v55 + 4 * v31) = v52;
        }
      }

      ++v31;
    }

    while (v31 != v11);
  }

  return sub_2366E2AB0(a1, v24, v25, v26, v27, v28, v29, v30);
}

void sub_2366DDBE4(int *a1, uint64_t a2, int **a3)
{
  if (a1[1] < 2)
  {
    sub_2366DDFD0(a1, a2, 0, a3);
  }

  else
  {
    sub_2366DDC04(a1, a2, 0, a3);
  }
}

void sub_2366DDC04(int *a1, uint64_t a2, int a3, int **a4)
{
  v8 = sub_2366DE2E4(a1[100]);
  v10 = sub_2366DE2A4(a1[100], v9);
  v11 = v8;
  v12 = v8 - 1;
  if (v8 == 1)
  {

    sub_2366DDFD0(a1, a2, a3, a4);
  }

  else
  {
    v13 = v10;
    sub_2366CAFB8(a1, a2, a4);
    v14 = v13;
    if (!v13)
    {
      sub_2366E8294((a1 + 90));
    }

    v54 = v8;
    v15 = sub_2366DE78C(((4 * v8 + 4) & 0x3FFFFFFFCLL) + 32, a1[100]);
    v55 = (v15 + 8);
    v16 = malloc_type_malloc(4 * *(*(a2 + 48) + 4 * v14), 0x100004052888210uLL);
    v17 = v16;
    v18 = *(a2 + 48);
    v19 = *(v18 + 4 * v14);
    if (v19)
    {
      v20 = 0;
      v21 = 0;
      v22 = a4[v14];
      do
      {
        if (v22[v20] == 2)
        {
          v16[v21++] = v20;
          v19 = *(v18 + 4 * v14);
        }

        ++v20;
      }

      while (v20 < v19);
    }

    else
    {
      v21 = 0;
    }

    *&v55[4 * v14] = v21;
    sub_2366DE30C(*(a2 + 12));
    if (v11 && !v14)
    {
      v23 = 0;
      v24 = v15[8];
      v15[8] = 0;
      v25 = v15 + 9;
      do
      {
        v23 += v24;
        v24 = *v25;
        *v25++ = v23;
        --v12;
      }

      while (v12);
    }

    v26 = sub_2366BF914(a2, a4, v15);
    free(*(*(a2 + 64) + 8 * v14));
    free(*(*(a2 + 80) + 8 * v14));
    free(*(*(a2 + 88) + 8 * v14));
    free(*(*(a2 + 72) + 8 * v14));
    v27 = a3;
    if (v26)
    {
      v27 = **v15 + a3;
    }

    v53 = v27;
    sub_2366DE30C(a1[100]);
    if (!v14)
    {
      *(a2 + 220) = 0;
      *(a2 + 232) = 0;
    }

    v28 = (v15 + 4);
    if (v21)
    {
      v29 = a4[v14];
      v30 = v21;
      v31 = ~*&v55[4 * v14] + *a2 + a3;
      v32 = v17;
      do
      {
        v33 = *v32++;
        v29[v33] = v31--;
        --v30;
      }

      while (v30);
    }

    free(v17);
    v34 = *&v15[2 * v26];
    v35 = *(v34 + 12);
    v37 = sub_2366DE2A4(*(v34 + 12), v36);
    v38 = sub_2366E5714(a1, **&v15[2 * v26], 3, v35);
    *&v28[8 * v26] = sub_2366DE78C(8 * v54, v35);
    *(*&v28[8 * v26] + 8 * v37) = malloc_type_malloc(4 * *(*(*&v15[2 * v26] + 48) + 4 * v37), 0x100004052888210uLL);
    if (v14)
    {
      v40 = a1;
      sub_2366DDC04(v38, *&v15[2 * v26], v53, *&v28[8 * v26], v39);
    }

    else
    {
      v42 = sub_2366E82F4((a1 + 90));
      sub_2366DDC04(v38, *&v15[2 * v26], v53, *&v28[8 * v26], v42);
      v40 = a1;
      sub_2366E5500(a1, v38);
    }

    sub_2366E56BC(v38, v41);
    v43 = *&v15[2 * v26];
    v44 = *(*(v43 + 48) + 4 * v37);
    v45 = *&v28[8 * v26];
    if (v44)
    {
      v46 = 0;
      v47 = *(*(v43 + 200) + 8 * v37);
      v48 = *(v45 + 8 * v37);
      v49 = 4 * v44;
      do
      {
        a4[(*(v47 + v46) >> *(a2 + 24)) - 1][*(a2 + 20) & *(v47 + v46)] = *&v48[v46];
        v46 += 4;
      }

      while (v49 != v46);
    }

    else
    {
      v48 = *(v45 + 8 * v37);
    }

    free(v48);
    sub_2366DE830(*&v28[8 * v26], v35);
    sub_2366BE8D0(*&v15[2 * v26], v50);
    sub_2366DE678(v35, v51);
    v52 = v40[100];

    sub_2366DE830(v15, v52);
  }
}

void sub_2366DDFD0(uint64_t a1, uint64_t a2, int a3, int **a4)
{
  sub_2366BC780(a1, a2, a4);
  v7 = *(a2 + 48);
  if (*v7)
  {
    v8 = 0;
    v9 = *a4;
    do
    {
      v9[v8++] += a3;
    }

    while (v8 < *v7);
  }
}

void sub_2366DE06C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  qword_27DE5A7B0 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
  *qword_27DE5A7B0 = 0;
  sub_2366DE18C(dword_27DE487B0, a1);
  qword_27DE48700 = a1;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = sub_2366DE1F4;
  v8[3] = &unk_278A003C0;
  v8[4] = a3;
  v8[5] = a2;
  dispatch_apply(a1, 0, v8);
  v6 = qword_27DE487E0;
  if (qword_27DE487E0)
  {
    if (a1)
    {
      v7 = 0;
      do
      {
        free(*(qword_27DE487E0 + 8 * v7++));
      }

      while (a1 != v7);
      v6 = qword_27DE487E0;
    }

    free(v6);
  }

  free(qword_27DE487D0);
  dword_27DE487B0[0] = 0;
  free(qword_27DE5A7B0);
}

void *sub_2366DE18C(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  *a1 = 1;
  *(a1 + 8) = a2;
  *(a1 + 48) = 0;
  v4 = sub_2366D0B2C(a2);
  v5 = sub_2366D0B2C((v4 << 7) + 4096);
  *(a1 + 16) = v5;
  result = malloc_type_malloc(v5, 0x4B1B34DEuLL);
  *(a1 + 32) = result;
  *(a1 + 40) = 0;
  *(a1 + 56) = v2;
  *(a1 + 60) = 0;
  *(a1 + 64) = v2;
  return result;
}

uint64_t sub_2366DE1F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = off_281949E78();
  *v3 = v4;
  v5 = off_281949E90();
  *v5 = v8;

  return v6(v7);
}

void sub_2366DE248(int a1)
{
  if (a1 != -2)
  {
    os_unfair_lock_lock(&dword_27DE487B0[18 * a1 + 10]);
  }
}

void sub_2366DE26C(int a1)
{
  if (a1 != -2)
  {
    os_unfair_lock_unlock(&dword_27DE487B0[18 * a1 + 10]);
  }
}

uint64_t sub_2366DE2A4(int a1, uint64_t a2)
{
  if (a1 == -2)
  {
    return 0;
  }

  v3 = off_281949E90(&off_281949E90, a2);
  return *(v3 + 8 * v4);
}

uint64_t sub_2366DE2E4(int a1)
{
  if (a1 == -2)
  {
    return 1;
  }

  else
  {
    return *&dword_27DE487B0[18 * a1 + 2];
  }
}

uint64_t sub_2366DE30C(uint64_t result)
{
  if (result != -2)
  {
    v1 = &dword_27DE487B0[18 * result];
    v2 = (v1 + 15);
    v3 = atomic_load(v1 + 15);
    if (atomic_fetch_add(v1 + 16, 0xFFFFFFFF) == 1)
    {
      v4 = v1 + 14;
      atomic_store(*v4, v4 + 2);
      atomic_fetch_add(v4 + 1, 1u);

      return __ulock_wake();
    }

    else
    {
      v5 = 3000;
      while (1)
      {
        v6 = atomic_load(v2);
        if (v6 > v3)
        {
          break;
        }

        if (!--v5)
        {
          while (1)
          {
            v7 = atomic_load(v2);
            if (v7 != v3)
            {
              break;
            }

            result = __ulock_wait();
          }

          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_2366DE3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == -2)
  {
    return 4294967294;
  }

  v7 = off_281949E90(&off_281949E90, a2);
  v9 = *(v7 + 8 * v8);
  v10 = *&dword_27DE487B0[18 * v8 + 2];
  v12 = sub_2366DE584(8 * v10 + 4 * v11, v8);
  v13 = &v12[a2];
  if (!v9)
  {
    os_unfair_lock_lock(qword_27DE5A7B0);
    if (a2)
    {
      v14 = 0;
      v15 = dword_27DE48708;
      do
      {
        if (dword_27DE487B0[18 * v15] == 1)
        {
          v16 = &dword_27DE487B0[18 * v15 + 18];
          do
          {
            v17 = *v16;
            v16 += 18;
            ++v15;
          }

          while (v17 == 1);
        }

        dword_27DE48708 = v15 + 1;
        v12[v14] = v15;
        *&dword_27DE487B0[18 * v12[v14] + 2] = 0;
        dword_27DE487B0[18 * v12[v14++]] = 1;
        ++v15;
      }

      while (v14 != a2);
    }

    os_unfair_lock_unlock(qword_27DE5A7B0);
  }

  sub_2366DE30C(a3);
  v3 = v12[a1];
  v13[v9] = a1;
  sub_2366DE30C(a3);
  if (v9)
  {
    v18 = 1;
  }

  else
  {
    v18 = v10 == 0;
  }

  if (!v18)
  {
    v19 = v13;
    do
    {
      v20 = &dword_27DE487B0[18 * v12[*v19]];
      v21 = *(v20 + 1);
      *(v20 + 1) = v21 + 1;
      *v19++ = v21;
      --v10;
    }

    while (v10);
  }

  sub_2366DE30C(a3);
  v22 = v13[v9];
  if (!v22)
  {
    sub_2366DE18C(&dword_27DE487B0[18 * v3], *&dword_27DE487B0[18 * v3 + 2]);
  }

  *(v7 + 8 * v3) = v22;
  sub_2366DE30C(a3);
  return v3;
}

void *sub_2366DE584(size_t a1, uint64_t a2)
{
  if (a2 == -2)
  {
    v3 = off_281949EC0();
    v4 = *v3;
    v5 = off_281949EA8();
    v6 = v5;
    if (v7 < a1)
    {
      *v5 = malloc_type_realloc(*v5, a1, 0x68DF380AuLL);
      *v3 = a1;
    }
  }

  else
  {
    v9 = &dword_27DE487B0[18 * a2];
    if (*(v9 + 2) < a1)
    {
      v10 = *(off_281949E90(&off_281949E90, a2) + 8 * a2);
      sub_2366DE30C(a2);
      if (!v10)
      {
        free(*(v9 + 4));
        *(v9 + 4) = malloc_type_malloc(a1, 0xC8E03ADAuLL);
        *(v9 + 2) = a1;
      }

      sub_2366DE30C(a2);
    }

    v6 = (v9 + 8);
  }

  return *v6;
}

void sub_2366DE678(uint64_t a1, uint64_t a2)
{
  if (a1 == -2)
  {
    v2 = off_281949EA8();
    if (*v2)
    {
      free(*v2);
      *v2 = 0;
      *off_281949EC0() = 0;
    }
  }

  else
  {
    v4 = *(off_281949E90(&off_281949E90, a2) + 8 * a1);
    sub_2366DE30C(a1);
    v5 = &dword_27DE487B0[18 * a1];
    v6 = *(v5 + 6);
    if (v6)
    {
      free(*(v6 + 8 * v4));
      sub_2366DE30C(a1);
      if (v4)
      {
        return;
      }

      free(*(v5 + 6));
    }

    else if (v4)
    {
      return;
    }

    free(*(v5 + 4));
    *v5 = 0;
    os_unfair_lock_lock(qword_27DE5A7B0);
    if (dword_27DE48708 > a1)
    {
      dword_27DE48708 = a1;
    }

    v7 = qword_27DE5A7B0;

    os_unfair_lock_unlock(v7);
  }
}

void *sub_2366DE78C(size_t size, uint64_t a2)
{
  if (a2 == -2)
  {

    return malloc_type_malloc(size, 0x1F0A8D9BuLL);
  }

  else
  {
    v5 = off_281949E90(&off_281949E90, a2);
    v8 = &dword_27DE487B0[18 * v7];
    if (!*(v5 + 8 * v7))
    {
      **(v8 + 4) = malloc_type_malloc(v6, 0x288B3D61uLL);
    }

    sub_2366DE30C(a2);
    v9 = **(v8 + 4);
    sub_2366DE30C(a2);
    return v9;
  }
}

void sub_2366DE830(void *a1, uint64_t a2)
{
  if (a2 == -2)
  {
    sub_2366DE30C(4294967294);
  }

  else
  {
    v3 = off_281949E90(&off_281949E90, a2);
    v5 = *(v3 + 8 * v4);
    sub_2366DE30C(v4);
    if (v5)
    {
      return;
    }
  }

  free(a1);
}

double sub_2366DE8A4(uint64_t a1, uint64_t a2, uint64_t a3, float *a4)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    *(a1 + 184) = *(a1 + 184) - sub_23681E0C8();
  }

  sub_2366DE9B0(a1, a3);
  while (1)
  {
    if ((*(a1 + 8) & 2) != 0)
    {
      *(a1 + 192) = *(a1 + 192) - sub_23681E0C8();
    }

    sub_2366BCA2C(a1, a3, a4);
    sub_2366E8464(a1, a3, a4, *(a1 + 76), v8, v9, v10, v11);
    if ((*(a1 + 8) & 2) != 0)
    {
      result = sub_23681E0C8() + *(a1 + 192);
      *(a1 + 192) = result;
    }

    if (a3 == a2)
    {
      break;
    }

    a3 = *(a3 + 208);
    if ((*(a1 + 8) & 2) != 0)
    {
      *(a1 + 200) = *(a1 + 200) - sub_23681E0C8();
    }

    sub_2366DEB90(a1, a3);
    if ((*(a1 + 8) & 2) != 0)
    {
      *(a1 + 200) = sub_23681E0C8() + *(a1 + 200);
    }
  }

  if ((*(a1 + 8) & 2) != 0)
  {
    result = sub_23681E0C8() + *(a1 + 184);
    *(a1 + 184) = result;
  }

  return result;
}

uint64_t sub_2366DE9B0(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = a2[2];
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  v7 = *(a2 + 6);
  v43 = *(a2 + 5);
  v8 = *(a2 + 20);
  v9 = *(a2 + 21);
  v10 = *(a2 + 15);
  v11 = sub_2366E736C(2 * v4, 0, *(a2 + 16));
  result = sub_2366E736C(v3, -1, *(a2 + 18));
  v13 = *(a2 + 19);
  if (v4 != 1)
  {
    if (v3 >= 1)
    {
      for (i = 0; i != v3; ++i)
      {
        if (v4 >= 1)
        {
          v20 = (v11 + 4 * v10[i] * v4);
          v21 = v4;
          v22 = v6;
          do
          {
            v23 = *v22++;
            *v20++ += v23;
            --v21;
          }

          while (v21);
        }

        v6 += v4;
      }

      goto LABEL_12;
    }

LABEL_29:
    v26 = 0;
    v42 = 0;
    goto LABEL_30;
  }

  if (v3 < 1)
  {
    goto LABEL_29;
  }

  v14 = v3;
  v15 = v10;
  do
  {
    v17 = *v6++;
    v16 = v17;
    v18 = *v15++;
    *(v11 + 4 * v18) += v16;
    --v14;
  }

  while (v14);
LABEL_12:
  v24 = 0;
  v25 = 0;
  v26 = 0;
  do
  {
    v27 = *(v5 + 4 * v24);
    v28 = v24 + 1;
    v29 = *(v5 + 4 * (v24 + 1));
    if (v27 >= v29)
    {
      v31 = 0;
      v30 = 0;
    }

    else
    {
      v30 = 0;
      v31 = 0;
      v32 = v10[v24];
      v33 = v29 - v27;
      v34 = (v43 + 4 * v27);
      v35 = (v7 + 4 * v27);
      do
      {
        v36 = *v34++;
        v37 = v10[v36];
        LODWORD(v36) = *v35++;
        v38 = v36;
        v39 = v32 == v37;
        if (v32 == v37)
        {
          v40 = v38;
        }

        else
        {
          v40 = 0;
        }

        v31 += v40;
        if (v39)
        {
          v41 = 0;
        }

        else
        {
          v41 = v38;
        }

        v30 += v41;
        --v33;
      }

      while (v33);
    }

    *(v8 + 4 * v24) = v31;
    *(v9 + 4 * v24) = v30;
    if (v30 > 0 || v27 == v29)
    {
      *(v13 + 4 * v26) = v24;
      *(result + 4 * v24) = v26++;
      v25 += v30;
    }

    ++v24;
  }

  while (v28 != v3);
  v42 = v25 / 2;
LABEL_30:
  a2[28] = v42;
  a2[34] = v26;
  return result;
}

void *sub_2366DEB90(uint64_t a1, int *a2)
{
  sub_2366DED50(a1, a2);
  v47 = *(a2 + 25);
  v3 = *(v47 + 120);
  v4 = *(v47 + 144);
  v5 = *a2;
  v6 = *(a2 + 12);
  v7 = *(a2 + 2);
  v8 = *(a2 + 6);
  v46 = *(a2 + 5);
  v9 = *(a2 + 15);
  v11 = *(a2 + 20);
  v10 = *(a2 + 21);
  v12 = sub_2366E736C(v5, -1, *(a2 + 18));
  if (v5 >= 1)
  {
    v13 = *(a2 + 19);
    v14 = v5;
    v15 = v6;
    v16 = v9;
    do
    {
      v17 = *v15;
      *v16++ = *(v3 + 4 * v17);
      *v15++ = *(v4 + 4 * v17);
      --v14;
    }

    while (v14);
    v18 = 0;
    while (1)
    {
      v19 = *(v7 + 4 * v18);
      v20 = v18 + 1;
      v21 = *(v7 + 4 * (v18 + 1));
      if (v6[v18] == -1)
      {
        if (v19 < v21)
        {
          v23 = 0;
          v34 = (v8 + 4 * v19);
          v35 = v21 - v19;
          do
          {
            v36 = *v34++;
            v23 += v36;
            --v35;
          }

          while (v35);
          goto LABEL_21;
        }
      }

      else if (v19 < v21)
      {
        v22 = 0;
        v23 = 0;
        v24 = v9[v18];
        v25 = v21 - v19;
        v26 = (v46 + 4 * v19);
        v27 = (v8 + 4 * v19);
        do
        {
          v28 = *v26++;
          v29 = v9[v28];
          LODWORD(v28) = *v27++;
          v30 = v28;
          v31 = v24 == v29;
          if (v24 == v29)
          {
            v32 = v30;
          }

          else
          {
            v32 = 0;
          }

          v23 += v32;
          if (v31)
          {
            v33 = 0;
          }

          else
          {
            v33 = v30;
          }

          v22 += v33;
          --v25;
        }

        while (v25);
        goto LABEL_22;
      }

      v23 = 0;
LABEL_21:
      v22 = 0;
LABEL_22:
      *(v11 + 4 * v18) = v23;
      *(v10 + 4 * v18) = v22;
      if (v22 > 0 || v19 == v21)
      {
        *(v13 + 4 * v14) = v18;
        *(v12 + 4 * v18) = v14;
        LODWORD(v14) = v14 + 1;
      }

      ++v18;
      if (v20 == v5)
      {
        goto LABEL_31;
      }
    }
  }

  LODWORD(v14) = 0;
LABEL_31:
  a2[28] = *(v47 + 112);
  a2[34] = v14;
  sub_2366E7408(2 * a2[2], *(v47 + 128), *(a2 + 16));
  result = sub_2366EC36C(a2 + 25, v38, v39, v40, v41, v42, v43, v44);
  *(a2 + 25) = 0;
  return result;
}

void *sub_2366DED50(uint64_t a1, int *a2)
{
  v3 = *a2;
  *(a2 + 16) = sub_2366E7294(2 * a2[2], "Allocate2WayPartitionMemory: pwgts");
  *(a2 + 15) = sub_2366E7294(v3, "Allocate2WayPartitionMemory: where");
  *(a2 + 18) = sub_2366E7294(v3, "Allocate2WayPartitionMemory: bndptr");
  *(a2 + 19) = sub_2366E7294(v3, "Allocate2WayPartitionMemory: bndind");
  *(a2 + 20) = sub_2366E7294(v3, "Allocate2WayPartitionMemory: id");
  result = sub_2366E7294(v3, "Allocate2WayPartitionMemory: ed");
  *(a2 + 21) = result;
  return result;
}

double sub_2366DEDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v139 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = *(a1 + 464);
  if (v8 != 2)
  {
    if (v8 == 1)
    {
LABEL_16:

      return sub_2366DF7C4(a1, a2, a3, a4, a5);
    }

    v126 = a3;
    if (v8)
    {
      sub_2366DFE3C((a1 + 464));
    }

    v9 = sub_2366DE2A4(*(a1 + 400), a2);
    v10 = sub_2366DE2E4(*(v7 + 400));
    v11 = *(v6 + 48);
    v12 = *(v11 + 4 * v9);
    v140 = *(v6 + 64);
    v136 = *(v6 + 72);
    v137 = *(v6 + 80);
    v142 = *(v6 + 88);
    v13 = *(v6 + 120);
    if (v126)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      a4 = v139;
      do
      {
        v17 = 0;
        v18 = *(a5 + 4 * v14);
        v19 = v9;
        while (1)
        {
          v20 = *(*(v139 + 8 * v19) + 4 * v18);
          v21 = v19;
          if (v20 >= *(v11 + 4 * v19))
          {
            v21 = (v20 >> *(v6 + 24)) - 1;
            v20 &= *(v6 + 20);
          }

          v17 += *(*(v140 + 8 * v19) + 4 * (v18 + 1)) - *(*(v140 + 8 * v19) + 4 * v18);
          v18 = v20;
          v19 = v21;
          if (v21 == v9)
          {
            v18 = v20;
            v19 = v21;
            if (v20 == *(a5 + 4 * v14))
            {
              break;
            }
          }
        }

        if (v16 <= v17)
        {
          v16 = v17;
        }

        v15 += v17;
        ++v14;
      }

      while (v14 != v126);
      if (v16 >= 0x401)
      {
        a1 = v7;
        a2 = v6;
        a3 = v126;
        goto LABEL_16;
      }

      v129 = v10;
      v81 = 4 * v15;
    }

    else
    {
      v129 = v10;
      v81 = 0;
    }

    if (!v9)
    {
      sub_2366E8294(v7 + 240);
    }

    v125 = v7;
    v82 = sub_2366BF6D4(v6, v126);
    v84 = *(v82 + 20);
    v83 = *(v82 + 24);
    if (v12)
    {
      v85 = *(*(v6 + 120) + 8 * v9);
      v86 = *(v6 + 20);
      v87 = *(v6 + 24);
      v88 = *(v6 + 28);
      do
      {
        if (*v85 >= v88)
        {
          *v85 = (*v85 >> v87 << v83) | *v85 & v86;
        }

        ++v85;
        --v12;
      }

      while (v12);
    }

    v135 = *(*(v82 + 64) + 8 * v9);
    v89 = v82;
    v90 = malloc_type_malloc(v81, 0x100004052888210uLL);
    *(*(v89 + 10) + 8 * v9) = v90;
    v91 = *(*(v89 + 9) + 8 * v9);
    v92 = malloc_type_malloc(v81, 0x100004052888210uLL);
    v132 = v89;
    *(*(v89 + 11) + 8 * v9) = v92;
    v93 = malloc_type_malloc(0x4000uLL, 0x1000040BDFB0063uLL);
    v94 = v93;
    if (v93)
    {
      memset(v93, 255, 0x4000uLL);
    }

    *v135 = 0;
    sub_2366DE30C(*(v7 + 400));
    if (!v126)
    {
      v96 = 0;
      goto LABEL_128;
    }

    v95 = 0;
    v96 = 0;
    v97 = *(v6 + 48);
    v98 = a5;
LABEL_89:
    v99 = v96;
    *(v91 + 4 * v95) = 0;
    v100 = *(v98 + 4 * v95);
    v101 = v9;
    while (1)
    {
      v102 = v100;
      v103 = *(v6 + 96) ? 1 : *(*(v136 + 8 * v101) + 4 * v100);
      *(v91 + 4 * v95) += v103;
      v104 = *(v140 + 8 * v101);
      v105 = *(v104 + 4 * v100);
      v106 = v100 + 1;
      if (v105 < *(v104 + 4 * v106))
      {
        break;
      }

LABEL_118:
      v100 = *(*(v139 + 8 * v101) + 4 * v102);
      if (v100 >= *(v97 + 4 * v101))
      {
        v101 = (v100 >> *(v6 + 24)) - 1;
        v100 &= *(v6 + 20);
      }

      if (v101 == v9 && v100 == *(a5 + 4 * v95))
      {
        v117 = v135[v95];
        if (v96 > v117)
        {
          v118 = v96;
          do
          {
            v94[v90[--v118] & 0x1FFF] = -1;
          }

          while (v118 > v117);
        }

        v135[++v95] = v96;
        v98 = a5;
        if (v95 == v126)
        {
LABEL_128:
          free(v94);
          v74 = v132;
          *(*(v132 + 7) + 4 * v9) = v96;
          v75 = v125;
          sub_2366DE30C(*(v125 + 400));
          if (v9)
          {
            goto LABEL_129;
          }

          v77 = 0;
          v119 = v129;
          if (v129)
          {
            v120 = *(v132 + 7);
            do
            {
              v121 = *v120++;
              v77 += v121;
              --v119;
            }

            while (v119);
          }

LABEL_135:
          v74[2] = v77;
          sub_2366BE714(v74, v76);

          return sub_2366E82F4(v75 + 240);
        }

        goto LABEL_89;
      }
    }

    v107 = *(v137 + 8 * v101);
    while (1)
    {
      v108 = *(v107 + 4 * v105);
      v109 = v101;
      if (v108 >= *(v97 + 4 * v101))
      {
        v109 = (v108 >> *(v6 + 24)) - 1;
        v108 &= *(v6 + 20);
      }

      v110 = *(*(v13 + 8 * v109) + 4 * v108);
      if ((v110 >> v83) - 1 == v9)
      {
        v111 = v84;
      }

      else
      {
        v111 = -1;
      }

      v112 = v111 & v110;
      if (v95 != v112 && v112 != (((v9 + 1) << v83) | v95))
      {
        if (*(v6 + 100))
        {
          v114 = 1;
        }

        else
        {
          v114 = *(*(v142 + 8 * v101) + 4 * v105);
        }

        v115 = v94[v112 & 0x1FFF];
        if (v115 == 0xFFFF)
        {
          v90[v96] = v112;
          v92[v96] = v114;
          v94[v112 & 0x1FFF] = v96 - v99;
        }

        else
        {
          v116 = v99 + v115;
          if (v116 < v96)
          {
            while (v90[v116] != v112)
            {
              if (v96 == ++v116)
              {
                goto LABEL_115;
              }
            }

            v92[v116] += v114;
          }

          if (v116 != v96)
          {
            goto LABEL_117;
          }

LABEL_115:
          v90[v96] = v112;
          v92[v96] = v114;
        }

        ++v96;
      }

LABEL_117:
      if (++v105 >= *(v104 + 4 * v106))
      {
        goto LABEL_118;
      }
    }
  }

  v23 = sub_2366DE2A4(*(a1 + 400), a2);
  v122 = sub_2366DE2E4(*(v7 + 400));
  v24 = *(*(v6 + 48) + 4 * v23);
  v133 = *(v6 + 72);
  v134 = *(v6 + 64);
  v25 = *(v6 + 88);
  v131 = *(v6 + 80);
  v26 = *(v6 + 120);
  if (!v23)
  {
    sub_2366E8294(v7 + 240);
  }

  v27 = sub_2366BF6D4(v6, v5);
  v29 = *(v27 + 20);
  v28 = *(v27 + 24);
  if (v24)
  {
    v30 = *(*(v6 + 120) + 8 * v23);
    v31 = *(v6 + 20);
    v32 = *(v6 + 24);
    v33 = *(v6 + 28);
    do
    {
      if (*v30 >= v33)
      {
        *v30 = (*v30 >> v32 << v28) | *v30 & v31;
      }

      ++v30;
      --v24;
    }

    while (v24);
  }

  v124 = v7;
  v127 = v5;
  if (v5)
  {
    v34 = 0;
    v35 = 0;
    v36 = 0;
    do
    {
      v37 = 0;
      v38 = *(a5 + 4 * v34);
      v39 = v23;
      while (1)
      {
        v40 = *(*(v139 + 8 * v39) + 4 * v38);
        v41 = v39;
        if (v40 >= *(*(v6 + 48) + 4 * v39))
        {
          v41 = (v40 >> *(v6 + 24)) - 1;
          v40 &= *(v6 + 20);
        }

        v37 += *(*(v134 + 8 * v39) + 4 * (v38 + 1)) - *(*(v134 + 8 * v39) + 4 * v38);
        v38 = v40;
        v39 = v41;
        if (v41 == v23)
        {
          v38 = v40;
          v39 = v41;
          if (v40 == *(a5 + 4 * v34))
          {
            break;
          }
        }
      }

      if (v36 <= v37)
      {
        v36 = v37;
      }

      v35 += v37;
      ++v34;
    }

    while (v34 != v5);
    v42 = 4 * v35;
    v143 = 8 * v36;
  }

  else
  {
    v143 = 0;
    v42 = 0;
  }

  v141 = *(*(v27 + 64) + 8 * v23);
  v43 = v27;
  v130 = malloc_type_malloc(v42, 0x100004052888210uLL);
  *(*(v43 + 10) + 8 * v23) = v130;
  v44 = *(*(v43 + 9) + 8 * v23);
  v123 = v43;
  v128 = malloc_type_malloc(v42, 0x100004052888210uLL);
  *(*(v43 + 11) + 8 * v23) = v128;
  v45 = malloc_type_malloc(v143, 0x100004000313F17uLL);
  *v141 = 0;
  sub_2366DE30C(*(v124 + 400));
  if (v127)
  {
    v47 = 0;
    v48 = 0;
    v49 = a5;
    v50 = v139;
    v52 = v133;
    v51 = v134;
    v53 = v131;
    do
    {
      v54 = 0;
      v55 = 0;
      *(v44 + 4 * v47) = 0;
      v56 = *(v49 + 4 * v47);
      v57 = *(v6 + 48);
      v58 = v23;
      while (1)
      {
        *(v44 + 4 * v47) = *(*(v52 + 8 * v58) + 4 * v56) + v54;
        v59 = *(v51 + 8 * v58);
        v60 = *(v59 + 4 * v56);
        v61 = *(v59 + 4 * (v56 + 1));
        if (v60 < v61)
        {
          v62 = *(v53 + 8 * v58);
          do
          {
            v63 = *(v62 + 4 * v60);
            v64 = v58;
            if (v63 >= *(v57 + 4 * v58))
            {
              v64 = (v63 >> *(v6 + 24)) - 1;
              v63 &= *(v6 + 20);
            }

            v65 = *(*(v26 + 8 * v64) + 4 * v63);
            if ((v65 >> v28) - 1 == v23)
            {
              v66 = v29;
            }

            else
            {
              v66 = -1;
            }

            v67 = v66 & v65;
            if (v47 != v67 && v67 != (((v23 + 1) << v28) | v47))
            {
              v69 = &v45[2 * v55];
              *v69 = v67;
              v69[1] = *(*(v25 + 8 * v58) + 4 * v60);
              ++v55;
              v61 = *(v59 + 4 * (v56 + 1));
            }

            ++v60;
          }

          while (v60 < v61);
        }

        v56 = *(*(v50 + 8 * v58) + 4 * v56);
        if (v56 >= *(v57 + 4 * v58))
        {
          v58 = (v56 >> *(v6 + 24)) - 1;
          v56 &= *(v6 + 20);
        }

        if (v58 == v23 && v56 == *(v49 + 4 * v47))
        {
          break;
        }

        v54 = *(v44 + 4 * v47);
      }

      if (v55)
      {
        sub_2366DFC8C(v45, v55, v46);
        v70 = v55 - 1;
        v71 = &v45[2 * v70];
        v130[v48] = *v71;
        v128[v48++] = v71[1];
        if (v55 == 1)
        {
          v49 = a5;
          v50 = v139;
          v52 = v133;
          v51 = v134;
          v53 = v131;
        }

        else
        {
          v72 = &v45[2 * v70 - 1];
          v49 = a5;
          v50 = v139;
          v52 = v133;
          v51 = v134;
          v53 = v131;
          do
          {
            v73 = *(v72 - 1);
            if (v130[v48 - 1] == v73)
            {
              v128[v48 - 1] += *v72;
            }

            else
            {
              v130[v48] = v73;
              v128[v48++] = *v72;
            }

            v72 -= 2;
            --v70;
          }

          while (v70);
        }
      }

      v141[++v47] = v48;
    }

    while (v47 != v127);
  }

  else
  {
    v48 = 0;
  }

  free(v45);
  v74 = v123;
  *(*(v123 + 7) + 4 * v23) = v48;
  v75 = v124;
  sub_2366DE30C(*(v124 + 400));
  if (!v23)
  {
    v77 = 0;
    v78 = v122;
    if (v122)
    {
      v79 = *(v123 + 7);
      do
      {
        v80 = *v79++;
        v77 += v80;
        --v78;
      }

      while (v78);
    }

    goto LABEL_135;
  }

LABEL_129:

  sub_2366BE714(v74, v76);
  return result;
}

double sub_2366DF7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2366DE2A4(*(a1 + 400), a2);
  v60 = sub_2366DE2E4(*(a1 + 400));
  v9 = *(*(a2 + 48) + 4 * v8);
  v63 = *(a2 + 64);
  v10 = *(a2 + 80);
  v11 = *(a2 + 88);
  v68 = v10;
  v69 = *(a2 + 72);
  v12 = *(a2 + 120);
  if (!v8)
  {
    sub_2366E8294(a1 + 240);
  }

  v66 = a1;
  v13 = sub_2366BF6D4(a2, a3);
  v14 = *(v13 + 20);
  v15 = *(v13 + 24);
  if (v9)
  {
    v16 = *(*(a2 + 120) + 8 * v8);
    v17 = *(a2 + 20);
    v18 = *(a2 + 24);
    v19 = *(a2 + 28);
    do
    {
      if (*v16 >= v19)
      {
        *v16 = (*v16 >> v18 << v15) | *v16 & v17;
      }

      ++v16;
      --v9;
    }

    while (v9);
  }

  v61 = a3;
  if (a3)
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = 0;
      v23 = *(a5 + 4 * v20);
      v24 = v8;
      while (1)
      {
        v25 = *(*(a4 + 8 * v24) + 4 * v23);
        v26 = v24;
        if (v25 >= *(*(a2 + 48) + 4 * v24))
        {
          v26 = (v25 >> *(a2 + 24)) - 1;
          v25 &= *(a2 + 20);
        }

        v22 += *(*(v63 + 8 * v24) + 4 * (v23 + 1)) - *(*(v63 + 8 * v24) + 4 * v23);
        v23 = v25;
        v24 = v26;
        if (v26 == v8)
        {
          v23 = v25;
          v24 = v26;
          if (v25 == *(a5 + 4 * v20))
          {
            break;
          }
        }
      }

      v21 += v22;
      ++v20;
    }

    while (v20 != a3);
    v27 = 4 * v21;
  }

  else
  {
    v27 = 0;
  }

  v67 = *(*(v13 + 64) + 8 * v8);
  v28 = v13;
  v29 = malloc_type_malloc(v27, 0x100004052888210uLL);
  *(*(v28 + 10) + 8 * v8) = v29;
  v70 = *(*(v28 + 9) + 8 * v8);
  v30 = malloc_type_malloc(v27, 0x100004052888210uLL);
  v62 = v28;
  *(*(v28 + 11) + 8 * v8) = v30;
  v31 = *(a2 + 4);
  v32 = malloc_type_malloc(4 * v31, 0x100004052888210uLL);
  v33 = v32;
  if (v31 && v32)
  {
    v71 = -1;
    if (v31 >= 0x40)
    {
      for (i = 1; i != 4; ++i)
      {
        if (*(&v71 + i) != 255)
        {
          break;
        }
      }
    }

    memset(v32, 255, 4 * v31);
  }

  *v67 = 0;
  sub_2366DE30C(*(v66 + 400));
  if (v61)
  {
    v35 = 0;
    v36 = 0;
    v37 = *(a2 + 48);
    v38 = v70;
    do
    {
      v39 = 0;
      *(v38 + 4 * v35) = 0;
      v40 = *(a5 + 4 * v35);
      v41 = v8;
      while (1)
      {
        *(v38 + 4 * v35) = v39 + *(*(v69 + 8 * v41) + 4 * v40);
        v42 = *(v63 + 8 * v41);
        v43 = *(v42 + 4 * v40);
        if (v43 < *(v42 + 4 * (v40 + 1)))
        {
          v44 = *(v68 + 8 * v41);
          do
          {
            v45 = *(v44 + 4 * v43);
            v46 = v41;
            if (v45 >= *(v37 + 4 * v41))
            {
              v46 = (v45 >> *(a2 + 24)) - 1;
              v45 &= *(a2 + 20);
            }

            v47 = *(*(v12 + 8 * v46) + 4 * v45);
            if ((v47 >> v15) - 1 == v8)
            {
              v48 = v14;
            }

            else
            {
              v48 = -1;
            }

            v49 = v48 & v47;
            if (v35 != v49 && v49 != (((v8 + 1) << v15) | v35))
            {
              if (*(a2 + 100))
              {
                v51 = 1;
              }

              else
              {
                v51 = *(*(v11 + 8 * v41) + 4 * v43);
              }

              v52 = v33[v49];
              if (v52 == -1)
              {
                v29[v36] = v49;
                v30[v36] = v51;
                v33[v49] = v36++;
              }

              else
              {
                v30[v52] += v51;
              }
            }

            ++v43;
          }

          while (v43 < *(v42 + 4 * (v40 + 1)));
        }

        v40 = *(*(a4 + 8 * v41) + 4 * v40);
        if (v40 >= *(v37 + 4 * v41))
        {
          v41 = (v40 >> *(a2 + 24)) - 1;
          v40 &= *(a2 + 20);
        }

        v38 = v70;
        if (v41 == v8 && v40 == *(a5 + 4 * v35))
        {
          break;
        }

        v39 = *(v70 + 4 * v35);
      }

      if (v36 > v67[v35])
      {
        v53 = v36;
        do
        {
          v33[v29[--v53]] = -1;
        }

        while (v53 > v67[v35]);
      }

      v67[++v35] = v36;
    }

    while (v35 != v61);
  }

  else
  {
    v36 = 0;
  }

  free(v33);
  *(*(v62 + 7) + 4 * v8) = v36;
  sub_2366DE30C(*(v66 + 400));
  if (v8)
  {

    sub_2366BE714(v62, v54);
  }

  else
  {
    v56 = 0;
    v57 = v60;
    if (v60)
    {
      v58 = *(v62 + 7);
      do
      {
        v59 = *v58++;
        v56 += v59;
        --v57;
      }

      while (v57);
    }

    v62[2] = v56;
    sub_2366BE714(v62, v54);

    return sub_2366E82F4(v66 + 240);
  }

  return result;
}

unsigned int *sub_2366DFC8C(unsigned int *result, unint64_t a2, __n128 a3)
{
  v4 = a2;
  v5 = a2 > 0xF;
  if (a2 < 0x10)
  {
    if (a2 < 2)
    {
      v6 = 0;
    }

    else
    {
      v16 = result;
LABEL_19:
      v17 = 1;
      v18 = v16;
      do
      {
        a3.n128_u64[0] = *&v16[2 * v17];
        v24 = a3;
        v19 = v18;
        v20 = v17;
        while (1)
        {
          v21 = *v19;
          v19 -= 2;
          if (*&v16[2 * v17] >= v21)
          {
            break;
          }

          if (v20-- <= 1)
          {
            v20 = 0;
            break;
          }
        }

        v23 = &v16[2 * v20];
        memmove(v23 + 2, v23, 8 * (v17 - v20));
        a3.n128_u64[1] = v24.n128_u64[1];
        *v23 = v24.n128_u64[0];
        ++v17;
        v18 += 2;
      }

      while (v17 != v4);
      result = v16;
      v6 = v5;
    }
  }

  else
  {
    v6 = 0;
    while (1)
    {
      v7 = (4 * v4) & 0xFFFFFFFFFFFFFFF8;
      v8 = *(result + v7);
      v9 = v4 - 1;
      *(result + v7) = *result;
      v10 = 1;
      do
      {
        v11 = &result[2 * v10];
        v12 = &result[2 * v9];
        v13 = *v12;
        if (v8 >= *v11)
        {
          v9 -= v8 < v13;
          ++v10;
        }

        else
        {
          if (v8 >= v13)
          {
            v14 = *v12;
            *v12 = *v11;
            *v11 = v14;
            ++v10;
          }

          --v9;
        }
      }

      while (v10 < v9);
      v15 = v10 - (v8 < result[2 * v10]);
      *result = *&result[2 * v15];
      *&result[2 * v15] = v8;
      if (v15 >= 2)
      {
        result = sub_2366DFC8C();
      }

      v4 -= v15 + 1;
      if (v4 < 2)
      {
        break;
      }

      v16 = &result[2 * v15 + 2];
      if ((v6 & 1) == 0)
      {
        v3 = result;
      }

      v6 = 1;
      result += 2 * v15 + 2;
      if (v4 < 0x10)
      {
        goto LABEL_19;
      }
    }
  }

  if (v6)
  {
    return v3;
  }

  return result;
}

void sub_2366DFE3C(_DWORD *a1)
{
  v2 = MEMORY[0x277D85DF8];
  fwrite("ERROR: ", 7uLL, 1uLL, *MEMORY[0x277D85DF8]);
  fprintf(*v2, "Unknown contraction type '%d'\n", *a1);
  fflush(*v2);
  abort();
}

uint64_t sub_2366DFE98(uint64_t result, _DWORD *a2, uint64_t a3)
{
  if ((result & 0x80000000) == 0)
  {
    v3 = (result + 1);
    v4 = a2;
    do
    {
      --*v4++;
      --v3;
    }

    while (v3);
  }

  if (a2[result] >= 1)
  {
    v5 = 0;
    do
    {
      --*(a3 + 4 * v5++);
    }

    while (v5 < a2[result]);
  }

  return result;
}

uint64_t sub_2366DFEE8(uint64_t result, _DWORD *a2, uint64_t a3, _DWORD *a4)
{
  if (result >= 1)
  {
    v4 = result;
    do
    {
      ++*a4++;
      --v4;
    }

    while (v4);
  }

  if (a2[result] >= 1)
  {
    v5 = 0;
    do
    {
      ++*(a3 + 4 * v5++);
    }

    while (v5 < a2[result]);
  }

  if ((result & 0x80000000) == 0)
  {
    v6 = (result + 1);
    do
    {
      ++*a2++;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_2366DFF54(uint64_t result, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  if (result >= 1)
  {
    v5 = result;
    do
    {
      ++*a4++;
      ++*a5++;
      --v5;
    }

    while (v5);
  }

  v6 = a2[result];
  if (v6 >= 1)
  {
    do
    {
      ++*a3++;
      --v6;
    }

    while (v6);
  }

  if ((result & 0x80000000) == 0)
  {
    v7 = (result + 1);
    do
    {
      ++*a2++;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_2366DFFC0(_DWORD *a1, uint64_t a2)
{
  v4 = sub_2366DE2E4(a1[100]);
  v6 = sub_2366DE2A4(a1[100], v5);
  if (*a2 >= 2u)
  {
    v7 = v6;
    if (!v6)
    {
      sub_2366E8294((a1 + 48));
    }

    v8 = malloc_type_malloc(4 * *(*(a2 + 48) + 4 * v7), 0x100004052888210uLL);
    v9 = *(*(a2 + 48) + 4 * v7);
    v10 = malloc_type_malloc(4 * v9, 0x100004052888210uLL);
    v11 = v10;
    if (v9)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v23 = -1;
      if (v9 >= 0x40)
      {
        for (i = 1; i != 4; ++i)
        {
          if (*(&v23 + i) != 255)
          {
            break;
          }
        }
      }

      memset(v10, 255, 4 * v9);
    }

    v14 = v4;
    v15 = sub_2366DE78C(8 * v4, a1[100]);
    v15[v7] = v11;
    if (a1[2] >= 3)
    {
      printf("Graph{%zu} has %u[%u] vertices, %u edges, and %lld exposed edge weight.\n", *(a2 + 112), *a2, a1[118], *(a2 + 8), *(a2 + 176));
    }

    if (v7)
    {
      sub_2366DE30C(a1[100]);
      v16 = sub_2366D80D8(a1, a2, v15, v8);
      sub_2366DEDF0(a1, a2, v16, v15, v8);
      sub_2366DE830(v15, a1[100]);
      free(v8);
      free(v11);
    }

    else
    {
      if (!*(a2 + 120))
      {
        if (v14 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v14;
        }

        *(a2 + 120) = malloc_type_malloc(8 * v17, 0x10040436913F5uLL);
      }

      v18 = 1.5;
      LODWORD(v18) = a1[118];
      v19 = v18;
      v20 = vcvtd_n_f64_u32(*a2, 2uLL);
      if (v20 > v19)
      {
        v19 = v20;
      }

      a1[119] = (*(a2 + 168) * 1.5 / v19);
      sub_2366DE30C(a1[100]);
      v21 = sub_2366D80D8(a1, a2, v15, v8);
      sub_2366DEDF0(a1, a2, v21, v15, v8);
      sub_2366DE830(v15, a1[100]);
      free(v8);
      free(v11);
      sub_2366E82F4((a1 + 48));
    }

    return *(a2 + 240);
  }

  return a2;
}

uint64_t sub_2366E0234(uint64_t a1, uint64_t a2, uint64_t *a3, double a4, double a5)
{
  v6 = a2;
  v7 = a1;
  v187[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 128);
  v9 = vcvt_s32_f32(vmul_n_f32(vmul_n_f32(**(a1 + 432), *(a2 + 168)), *(a1 + 448)));
  v155 = v9;
  v186 = v9;
  LODWORD(v9) = *(a2 + 8);
  v10 = v9;
  LODWORD(a5) = *(a2 + 16);
  if (sqrt(*&a5) * 32768.0 > v10)
  {
LABEL_4:
    v12 = sub_2366E0EC4(a1, a2, *(a1 + 504), a3, &v186, v10);
    goto LABEL_121;
  }

  v11 = *(a1 + 496);
  if (v11)
  {
    if (v11 != 1)
    {
      sub_2366E1830((a1 + 496));
    }

    goto LABEL_4;
  }

  v154 = v8;
  v156 = *(a1 + 504);
  v13 = sub_2366DE2A4(*(a1 + 400), a2);
  v15 = *a3;
  v14 = a3[1];
  v162 = *(v6 + 128);
  v168 = *(v7 + 432);
  v177 = v6;
  v160 = v13;
  v16 = *(*(v6 + 56) + 4 * v13);
  v17 = *(v7 + 400);
  v18 = sub_2366DE2E4(*(v7 + 400));
  v20 = sub_2366DE2A4(v17, v19);
  v21 = sub_2366DE78C(0x18uLL, v17);
  v22 = v21;
  if (!v20)
  {
    *v21 = v17;
    *(v21 + 1) = malloc_type_malloc(v18 << 6, 0x1020040C3AA3679uLL);
    *(v22 + 2) = malloc_type_malloc(8 * v18, 0x2004093837F09uLL);
  }

  sub_2366DE30C(v17);
  v23 = *(v22 + 1) + (v20 << 6);
  *(v23 + 4) = 0;
  *v23 = 0;
  *(v23 + 8) = v16;
  *(v23 + 16) = 0;
  *(*(v22 + 1) + (v20 << 6) + 24) = malloc_type_malloc(16 * v16, 0x10200405730B0C9uLL);
  *(*(v22 + 2) + 8 * v20) = malloc_type_malloc(24 * v18, 0x20040960023A9uLL);
  if (v18)
  {
    v24 = 0;
    v25 = *(v22 + 2);
    do
    {
      *(*(v25 + 8 * v20) + v24) = 0;
      *(*(v25 + 8 * v20) + v24 + 8) = 0;
      *(*(v25 + 8 * v20) + v24 + 16) = 0;
      v24 += 24;
      --v18;
    }

    while (v18);
  }

  sub_2366DE30C(v17);
  v26 = sub_2366C6030(*(*(v177 + 48) + 4 * v160));
  v27 = v162;
  v12 = 0;
  if (!v156)
  {
    goto LABEL_118;
  }

  v28 = 0;
  v159 = v7;
  v174 = v15;
  do
  {
    v29 = vmul_f32(vrev64_s32(*v168), vcvt_f32_s32(*v27));
    v157 = v28;
    if (v29.f32[0] > v29.f32[1])
    {
      LOBYTE(v30) = 1;
LABEL_17:
      v161 = v30;
      goto LABEL_18;
    }

    if (v29.f32[0] >= v29.f32[1])
    {
      v30 = *(v177 + 112);
      goto LABEL_17;
    }

    v161 = 0;
LABEL_18:
    v158 = v12;
    v165 = 0;
    v31 = 0;
    v32 = 1;
    do
    {
      v164 = v32;
      v33 = (v31 + v161) & 1;
      v187[0] = *v27;
      sub_2366DE30C(*(v7 + 400));
      v34 = *(v7 + 400);
      v185 = 0;
      v36 = sub_2366DE2A4(v34, v35);
      v163 = v34;
      v37 = sub_2366DE2E4(v34);
      v38 = *(&v186 | (4 * v33));
      v39 = *(v187 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v33 & 1)));
      if ((v38 - v39) / v37 + v39 <= v38)
      {
        v40 = (v38 - v39) / v37 + v39;
      }

      else
      {
        v40 = v38;
      }

      v41 = *(*(v177 + 136) + 8 * v36);
      v167 = *(*(v177 + 72) + 8 * v36);
      v173 = v33 ^ 1;
      v42 = (*(v168 + 4) * v187[0].i32[0]) - (*v168 * v187[0].i32[1]);
      if (v42 < 0)
      {
        v42 = (*v168 * v187[0].i32[1]) - (*(v168 + 4) * v187[0].i32[0]);
      }

      v179 = v42;
      sub_2366C60B0(v26);
      v43 = *v15;
      if (*v15)
      {
        v44 = 0;
        v45 = 1;
        do
        {
          v46 = *(*(v15 + 24) + 4 * v44);
          if (*(v41 + 4 * v46) == v173)
          {
            sub_2366C612C((*(v14 + 8 * v46 + 4 * v33) - *(v14 + 8 * v46 + 4 * v173)), v46, v26);
            v43 = *v15;
          }

          v44 = v45;
        }

        while (v43 > v45++);
      }

      v48 = 0;
      v172 = 0;
      v166 = v36;
      for (i = v40; ; i = v40)
      {
        do
        {
          while (sub_2366C7430(&v185, v22))
          {
            v48 += sub_2366E1710(v33, v185, HIDWORD(v185), v41, v14, v15, v26);
          }

          v51 = (v187 | (4 * v33));
          v52 = *v51;
          if (*v51 < i)
          {
            if (v26[1])
            {
              if ((*v26[2] & 0x80000000) == 0)
              {
                v53 = sub_2366C6764(v26);
                v54 = *(v167 + 4 * v53);
                v52 = *v51;
                v55 = v54 + *v51;
                v56 = (v187 | (4 * v173));
                v57 = *v56;
                v58 = *(v168 + 4 * v33);
                v59 = *(v168 + 4 * v173) * v55;
                if (v55 <= i || v59 <= (v58 * v57))
                {
                  v60 = v14 + 8 * v53;
                  v61 = *(v60 + 4 * v33);
                  v62 = *(v60 + 4 * v173);
                  v63 = v59 - (v58 * (v57 - v54));
                  v64 = v63 >= 0 ? v63 : -v63;
                  v65 = __OFSUB__(v62, v61);
                  v66 = v62 - v61;
                  if (v66 < 0 != v65 || !v66 && v64 < v179)
                  {
                    v169 = v14 + 8 * v53;
                    v183 = v66;
                    v171 = v64;
                    v67 = *(*(v177 + 48) + 4 * v166);
                    v68 = *(*(v177 + 64) + 8 * v166);
                    v180 = *(*(v177 + 80) + 8 * v166);
                    v69 = *(*(v177 + 72) + 8 * v166);
                    v178 = *(*(v177 + 88) + 8 * v166);
                    v176 = *(*(v177 + 136) + 8 * v166);
                    *(v176 + 4 * v53) = v33;
                    *v51 += *(v69 + 4 * v53);
                    *v56 -= *(v69 + 4 * v53);
                    v70 = *(v68 + 4 * v53);
                    v170 = v53;
                    v71 = v53 + 1;
                    v181 = v68;
                    if (v70 < *(v68 + 4 * v71))
                    {
                      v175 = v67;
                      do
                      {
                        v72 = *(v180 + 4 * v70);
                        if (v72 >= v67)
                        {
                          v73 = v14;
                          v74 = v71;
                          v75 = v73;
                          v76 = (v72 >> *(v177 + 24)) - 1;
                          v77 = *(v177 + 20) & v72 | (*(v178 + 4 * v70) << 32);
                          v78 = sub_2366DE2A4(*v22, v72);
                          v79 = *(v22 + 1) + (v78 << 6);
                          v81 = *(v79 + 16);
                          v80 = *(v79 + 24);
                          *(v79 + 16) = v81 + 1;
                          v82 = (v80 + 16 * v81);
                          *v82 = v77;
                          v82[1] = 0;
                          v83 = *(v22 + 2);
                          v84 = *(v83 + 8 * v76) + 24 * v78;
                          v87 = *(v84 + 16);
                          v85 = (v84 + 16);
                          v86 = v87;
                          if (v87)
                          {
                            *(v86 + 8) = v82;
                            v88 = (*(v83 + 8 * v76) + 24 * v78 + 16);
                          }

                          else
                          {
                            *v85 = v82;
                            v88 = (*(v83 + 8 * v76) + 24 * v78);
                          }

                          v71 = v74;
                          *v88 = v82;
                          v89 = (*(v22 + 1) + (v76 << 6));
                          *v89 = 0;
                          v89[1] = 1;
                          v67 = v175;
                          v14 = v75;
                          v15 = v174;
                        }

                        else
                        {
                          v183 += sub_2366E1710(v33, v72, *(v178 + 4 * v70), v176, v14, v15, v26);
                        }

                        ++v70;
                      }

                      while (v70 < *(v181 + 4 * v71));
                    }

                    if (*(v169 + 4 * v173) < 1)
                    {
                      i = v40;
                      v93 = (v187 | (4 * v33));
                      v90 = v171;
                      v94 = v183;
                      if (*(v169 + 4 * v33) >= 1)
                      {
                        v97 = v170 - *(v15 + 16);
                        v98 = *(v15 + 32);
                        v99 = *(v98 + 4 * v97);
                        if (v99 != -1)
                        {
                          v100 = *(v15 + 24);
                          v101 = *v15 - 1;
                          *v15 = v101;
                          v102 = *(v100 + 4 * v101);
                          *(v100 + 4 * v99) = v102;
                          *(v98 + 4 * (v102 - *(v15 + 16))) = *(v98 + 4 * v97);
                          *(v98 + 4 * v97) = -1;
                        }
                      }
                    }

                    else
                    {
                      v90 = v171;
                      v91 = v170 - *(v15 + 16);
                      v92 = *(v15 + 32);
                      i = v40;
                      v93 = (v187 | (4 * v33));
                      v94 = v183;
                      if (*(v92 + 4 * v91) == -1)
                      {
                        v95 = *v15;
                        *(v92 + 4 * v91) = *v15;
                        v96 = *(v15 + 24);
                        *v15 = v95 + 1;
                        *(v96 + 4 * v95) = v170;
                      }
                    }

                    ++v172;
                    v48 += v94;
                    v52 = *v93;
                    v179 = v90;
                  }
                }
              }
            }
          }
        }

        while (v52 < i && v26[1] && (*v26[2] & 0x80000000) == 0);
        v103 = sub_2366DE2A4(*v22, v50);
        v182 = sub_2366DE2E4(*v22);
        v184 = v103;
        v104 = (*(v22 + 1) + (v103 << 6));
        if (sub_2366C7430(0, v22))
        {
          goto LABEL_63;
        }

        if (!*v104)
        {
          *v104 = 1;
        }

        v106 = v182;
        v105 = v184;
        v107 = (v184 + 1) % v182;
        if (v107 == v184)
        {
          break;
        }

        v113 = *(v22 + 1);
        while (*(v113 + (v107 << 6)))
        {
LABEL_83:
          if (v107 + 1 == v106)
          {
            v107 = 0;
          }

          else
          {
            ++v107;
          }

          if (v107 == v105)
          {
            goto LABEL_67;
          }
        }

        while (!sub_2366C7430(0, v22))
        {
          if (!*v104)
          {
            *v104 = 1;
          }

          __isb(0xFu);
          v113 = *(v22 + 1);
          if (*(v113 + (v107 << 6)))
          {
            v106 = v182;
            v105 = v184;
            goto LABEL_83;
          }
        }

LABEL_63:
        *v104 = 0;
      }

LABEL_67:
      if (sub_2366C7430(0, v22))
      {
        goto LABEL_63;
      }

      *v104 = 2;
      if (sub_2366C7430(0, v22))
      {
        goto LABEL_63;
      }

      v109 = *(v22 + 1);
      v111 = v182;
      v110 = v184;
      v112 = v184;
      do
      {
        v112 = (v112 + 1) % v111;
        if (*(v109 + (v112 << 6)) != 2)
        {
          while (!sub_2366C7430(0, v22))
          {
            __isb(0xFu);
            v109 = *(v22 + 1);
            if (*(v109 + (v112 << 6)) == 2)
            {
              v111 = v182;
              v110 = v184;
              goto LABEL_74;
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        ;
      }

      while (v112 != v110);
      v114 = sub_2366DE2A4(*v22, v108);
      v115 = sub_2366DE2E4(*v22);
      v116 = *(v22 + 1) + (v114 << 6);
      sub_2366DE30C(*v22);
      *(v116 + 16) = 0;
      *v116 = 0;
      *(v116 + 4) = 0;
      if (v115)
      {
        v117 = 0;
        v118 = *(v22 + 2);
        do
        {
          *(*(v118 + 8 * v114) + v117) = 0;
          *(*(v118 + 8 * v114) + v117 + 8) = 0;
          *(*(v118 + 8 * v114) + v117 + 16) = 0;
          v117 += 24;
          --v115;
        }

        while (v115);
      }

      sub_2366DE30C(*v22);
      v120 = sub_2366DE2A4(v163, v119);
      v121 = sub_2366DE2E4(v163);
      v122 = sub_2366DE584(4 * v121, v163);
      v122[v120] = v48;
      sub_2366DE30C(v163);
      v7 = v159;
      if (!v120)
      {
        if (v121 >= 2)
        {
          v123 = v121 - 1;
          v124 = v122 + 1;
          do
          {
            v125 = *v124++;
            v48 += v125;
            --v123;
          }

          while (v123);
        }

        *v122 = v48;
      }

      sub_2366DE30C(v163);
      v126 = *v122;
      sub_2366DE30C(v163);
      if (!v166)
      {
        *(v177 + 208) += v126 / 2;
      }

      v128 = *(v159 + 400);
      v27 = v162;
      v187[0] = vsub_s32(v187[0], *v162);
      v129 = sub_2366DE2A4(v128, v127);
      v130 = sub_2366DE2E4(v128);
      sub_2366D0AD8(v129, v130, 3uLL);
      sub_2366D0AF0(v129, v130, 3uLL);
      v131 = sub_2366DE584(8 * v130, v128);
      v131[v129] = v187;
      sub_2366DE30C(v128);
      if (!v129 && v130 >= 2)
      {
        v132 = *v131;
        for (j = 1; j != v130; ++j)
        {
          v134 = 0;
          v135 = v131[j];
          do
          {
            *(v132 + v134) += *(v135 + v134);
            v134 += 4;
          }

          while (v134 != 12);
        }

        for (k = 1; k != v130; ++k)
        {
          v137 = v131[k];
          v138 = **v131;
          *(v137 + 2) = *(*v131 + 2);
          *v137 = v138;
        }
      }

      sub_2366DE30C(v128);
      v187[0] = vadd_s32(v187[0], *v162);
      sub_2366DE30C(v128);
      if (!v160)
      {
        *v162 = v187[0];
      }

      v165 += v172;
      sub_2366DE30C(v128);
      v32 = 0;
      v31 = 1;
    }

    while ((v164 & 1) != 0);
    v140 = *(v159 + 400);
    v141 = sub_2366DE2A4(*(v159 + 400), v139);
    v142 = sub_2366DE2E4(v140);
    v143 = sub_2366DE584(4 * v142, v140);
    v144 = v165;
    v143[v141] = v165;
    sub_2366DE30C(v140);
    if (!v141)
    {
      if (v142 >= 2)
      {
        v145 = v142 - 1;
        v146 = v143 + 1;
        do
        {
          v147 = *v146++;
          v144 += v147;
          --v145;
        }

        while (v145);
      }

      *v143 = v144;
    }

    sub_2366DE30C(v140);
    v148 = *v143;
    sub_2366DE30C(v140);
    if (!v148)
    {
      v12 = v158;
      break;
    }

    v12 = (v148 + v158);
    v28 = v157 + 1;
    v27 = v162;
  }

  while (v157 + 1 != v156);
LABEL_118:
  sub_2366C6FA8(v26);
  v150 = sub_2366DE2A4(*v22, v149);
  v151 = *v22;
  sub_2366DE30C(v151);
  free(*(*(v22 + 2) + 8 * v150));
  free(*(*(v22 + 1) + (v150 << 6) + 24));
  sub_2366DE30C(*v22);
  if (!v150)
  {
    free(*(v22 + 2));
    free(*(v22 + 1));
  }

  sub_2366DE830(v22, v151);
  v6 = v177;
  v8 = v154;
LABEL_121:
  if (*(v7 + 8) >= 3)
  {
    printf("%zu) [%u %u] {%d:%d %d # %d:%d %u}\n", *(v6 + 112), *v6, *(v6 + 8), *v8, v8[1], *(v6 + 208), v155, HIDWORD(v155), v12);
  }

  v152 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t sub_2366E0EC4(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4, uint64_t a5, double a6)
{
  v9 = a2[4];
  v10 = *(a2 + 9);
  v89 = v10;
  v90 = *(a1 + 432);
  v11 = *(a2 + 17);
  v91 = *(a2 + 16);
  LODWORD(a6) = *a2;
  v12 = *&a6 * 0.01;
  v13 = 15.0;
  if (v12 < 15.0)
  {
    v12 = 15.0;
  }

  LODWORD(v13) = *(a1 + 512);
  v14 = v13;
  if (v12 <= v14)
  {
    v15 = v12;
  }

  else
  {
    v15 = v14;
  }

  v16 = sub_2366DE2A4(*(a1 + 400), a2);
  v17 = sub_2366DE78C(16 * v9, *(a1 + 400));
  v18 = &v17[v9];
  v17[v16] = a4[1];
  *(v18 + 8 * v16) = *a4;
  v19 = a1;
  sub_2366DE30C(*(a1 + 400));
  if (!v16)
  {
    v88 = v9;
    v76 = a1;
    v81 = malloc_type_malloc(4 * *a2, 0x100004052888210uLL);
    v22 = sub_2366C6030(a2[1]);
    if (!a3)
    {
      v21 = 0;
      goto LABEL_56;
    }

    v23 = 0;
    v21 = 0;
    v24 = v90;
    v25 = v91;
    while (1)
    {
      v26 = vmul_f32(vrev64_s32(*v24), vcvt_f32_s32(*v25));
      v79 = v21;
      v78 = v23;
      if (v26.f32[0] > v26.f32[1])
      {
        break;
      }

      if (v26.f32[0] >= v26.f32[1])
      {
        v27 = a2[28];
        goto LABEL_15;
      }

      v80 = 0;
LABEL_16:
      v28 = 0;
      v29 = 0;
      v30 = 1;
      v31 = a5;
      do
      {
        v82 = v30;
        v83 = v28;
        v32 = (v29 + v80) & 1;
        v33 = !((v29 + v80) & 1);
        v34 = (*(v24 + 4) * v25->i32[0]) - (*v24 * v25->i32[1]);
        if (v34 < 0)
        {
          v34 = (*v24 * v25->i32[1]) - (*(v24 + 4) * v25->i32[0]);
        }

        v84 = v34;
        sub_2366C60B0(v22);
        v35 = v88;
        if (v88)
        {
          v36 = 0;
          do
          {
            v37 = *(v18 + 8 * v36);
            v38 = *v37;
            if (*v37)
            {
              v39 = 0;
              v40 = v36 + 1;
              v41 = 1;
              do
              {
                v42 = *(v37[3] + 4 * v39);
                if (*(*(v11 + 8 * v36) + 4 * v42) == v33)
                {
                  v43 = v17[v36] + 8 * v42;
                  sub_2366C612C((*(v43 + 4 * v32) - *(v43 + 4 * v33)), (v40 << a2[6]) | v42, v22);
                  v37 = *(v18 + 8 * v36);
                  v38 = *v37;
                }

                v39 = v41;
              }

              while (v38 > v41++);
              v31 = a5;
              v35 = v88;
            }

            else
            {
              v40 = v36 + 1;
            }

            v36 = v40;
          }

          while (v40 != v35);
        }

        v45 = 0;
        v46 = 0;
        v85 = a2[52];
        v86 = v85;
        while (2)
        {
          v25 = v91;
          do
          {
            if (!v22[1])
            {
              goto LABEL_46;
            }

            v47 = sub_2366C6764(v22);
            v25 = v91;
            v48 = v91->i32[v32];
            v49 = *(v31 + 4 * v32);
            if (v48 >= v49)
            {
              goto LABEL_46;
            }

            v50 = a2[5] & v47;
            v51 = (v47 >> a2[6]) - 1;
            v52 = *(*(v89 + 8 * v51) + 4 * v50);
            v53 = v52 + v48;
            v54 = v91->i32[v33];
            v55 = *(v90 + 4 * v32);
            v56 = *(v90 + 4 * v33) * v53;
          }

          while (v53 > v49 && v56 > (v55 * v54));
          v57 = v17[v51] + 8 * v50;
          v58 = *(v57 + 4 * v33) - *(v57 + 4 * v32) + v85;
          v59 = v56 - (v55 * (v54 - v52));
          if (v59 < 0)
          {
            v59 = -v59;
          }

          v85 += *(v57 + 4 * v33) - *(v57 + 4 * v32);
          if (v58 < v86 || v58 == v86 && v59 < v84 || v54 > *(v31 + 4 * v33) && v59 < v84)
          {
            ++v46;
            v86 = v58;
            v84 = v59;
            v45 = v46;
LABEL_43:
            v81[v46] = v47;
            sub_2366E1428(v51, v50, v32, a2, v17, v18, v22);
            continue;
          }

          break;
        }

        if (v46 - v45 + 1 <= v15)
        {
          ++v46;
          goto LABEL_43;
        }

LABEL_46:
        if (v46 > v45)
        {
          v60 = &v81[v46];
          do
          {
            v61 = *v60--;
            sub_2366E1428((v61 >> a2[6]) - 1, a2[5] & v61, v33, a2, v17, v18, 0);
            --v46;
          }

          while (v45 < v46);
          v46 = v45;
          v31 = a5;
          v25 = v91;
        }

        v30 = 0;
        a2[52] = v86;
        v28 = v46 + v83;
        v29 = 1;
        v24 = v90;
      }

      while ((v82 & 1) != 0);
      if (!v28)
      {
        v21 = v79;
        goto LABEL_56;
      }

      v21 = v28 + v79;
      v23 = v78 + 1;
      if (v78 + 1 == a3)
      {
LABEL_56:
        free(v81);
        sub_2366C6FA8(v22);
        v19 = v76;
        goto LABEL_57;
      }
    }

    LOBYTE(v27) = 1;
LABEL_15:
    v80 = v27;
    goto LABEL_16;
  }

  v21 = 0;
LABEL_57:
  v62 = *(v19 + 400);
  v63 = sub_2366DE2A4(*(v19 + 400), v20);
  v64 = sub_2366DE2E4(v62);
  v65 = sub_2366DE584(4 * v64, v62);
  v66 = v65;
  if (!v63 && v64)
  {
    v67 = (v64 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v68 = vdupq_n_s64(v64 - 1);
    v69 = xmmword_23681F910;
    v70 = xmmword_23681F920;
    v71 = v65 + 8;
    v72 = vdupq_n_s64(4uLL);
    do
    {
      v73 = vmovn_s64(vcgeq_u64(v68, v70));
      if (vuzp1_s16(v73, *v68.i8).u8[0])
      {
        *(v71 - 2) = v21;
      }

      if (vuzp1_s16(v73, *&v68).i8[2])
      {
        *(v71 - 1) = v21;
      }

      if (vuzp1_s16(*&v68, vmovn_s64(vcgeq_u64(v68, *&v69))).i32[1])
      {
        *v71 = v21;
        v71[1] = v21;
      }

      v69 = vaddq_s64(v69, v72);
      v70 = vaddq_s64(v70, v72);
      v71 += 4;
      v67 -= 4;
    }

    while (v67);
  }

  sub_2366DE30C(v62);
  v74 = *&v66[4 * v63];
  sub_2366DE30C(v62);
  sub_2366DE830(v17, *(v19 + 400));
  return v74;
}

uint64_t sub_2366E1428(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a4 + 48);
  v11 = *(a4 + 64);
  v10 = *(a4 + 72);
  v13 = *(a4 + 80);
  v12 = *(a4 + 88);
  v14 = *(a4 + 128);
  v15 = *(a4 + 136);
  v16 = a3 ^ 1;
  *(*(v15 + 8 * result) + 4 * a2) = a3;
  v17 = *(v10 + 8 * result);
  v18 = result;
  *(v14 + 4 * a3) += *(v17 + 4 * a2);
  v58 = a2;
  *(v14 + 4 * (a3 ^ 1)) -= *(v17 + 4 * a2);
  v19 = *(v11 + 8 * result);
  v20 = *(v19 + 4 * a2);
  v21 = a2 + 1;
  if (v20 < *(v19 + 4 * (a2 + 1)))
  {
    result = (result + 1);
    v63 = v9;
    v64 = a6;
    v61 = v12;
    v62 = v13;
    v60 = result;
    while (1)
    {
      v24 = *(*(v13 + 8 * v18) + 4 * v20);
      if (v24 >= *(v9 + 4 * v18))
      {
        v25 = *(a4 + 20) & v24;
        v26 = (v24 >> *(a4 + 24)) - 1;
      }

      else
      {
        v25 = *(*(v13 + 8 * v18) + 4 * v20);
        v24 |= result << *(a4 + 24);
        v26 = v18;
      }

      v27 = *(v12 + 8 * v18);
      v28 = *(a5 + 8 * v26) + 8 * v25;
      v29 = *(v28 + 4 * a3) + *(v27 + 4 * v20);
      *(v28 + 4 * a3) = v29;
      v30 = *(v27 + 4 * v20);
      v31 = *(v28 + 4 * v16);
      v32 = v31 - v30;
      *(v28 + 4 * v16) = v31 - v30;
      if (*(*(v15 + 8 * v26) + 4 * v25) == a3)
      {
        if (v31 == v30)
        {
          v33 = *(a6 + 8 * v26);
          v34 = v25 - *(v33 + 16);
          v35 = *(v33 + 32);
          v36 = *(v35 + 4 * v34);
          if (v36 != -1)
          {
            v37 = *(v33 + 24);
            v38 = *v33 - 1;
            *v33 = v38;
            v39 = *(v37 + 4 * v38);
            *(v37 + 4 * v36) = v39;
            *(v35 + 4 * (v39 - *(v33 + 16))) = *(v35 + 4 * v34);
            *(v35 + 4 * v34) = -1;
          }
        }

        goto LABEL_17;
      }

      v40 = *(a6 + 8 * v26);
      v41 = v25 - *(v40 + 4);
      v42 = v40[4];
      if (*(v42 + 4 * v41) != -1)
      {
        break;
      }

      v43 = *v40;
      *(v42 + 4 * v41) = *v40;
      v44 = v40[3];
      *v40 = v43 + 1;
      *(v44 + 4 * v43) = v25;
      if (a7)
      {
        sub_2366C612C((*(v28 + 4 * a3) - *(v28 + 4 * v16)), v24, a7);
LABEL_16:
        result = v60;
        v12 = v61;
        v13 = v62;
        v9 = v63;
        a6 = v64;
      }

LABEL_17:
      if (++v20 >= *(*(v11 + 8 * v18) + 4 * v21))
      {
        goto LABEL_18;
      }
    }

    if (!a7 || *(*(a7 + 32) + 8 * (v24 - *(a7 + 24))) == -1)
    {
      goto LABEL_17;
    }

    sub_2366CE6C4((v29 - v32), v24, a7);
    goto LABEL_16;
  }

LABEL_18:
  v45 = *(a5 + 8 * v18) + 8 * v58;
  if (*(v45 + 4 * v16) < 1)
  {
    if (*(v45 + 4 * a3) >= 1)
    {
      v51 = *(a6 + 8 * v18);
      v52 = a2 - *(v51 + 16);
      v53 = *(v51 + 32);
      v54 = *(v53 + 4 * v52);
      if (v54 != -1)
      {
        v55 = *(v51 + 24);
        v56 = *v51 - 1;
        v57 = *(v55 + 4 * v56);
        *v51 = v56;
        *(v55 + 4 * v54) = v57;
        *(v53 + 4 * (v57 - *(v51 + 16))) = *(v53 + 4 * v52);
        *(v53 + 4 * v52) = -1;
      }
    }
  }

  else
  {
    v46 = *(a6 + 8 * v18);
    v47 = a2 - *(v46 + 4);
    v48 = v46[4];
    if (*(v48 + 4 * v47) == -1)
    {
      v49 = *v46;
      *(v48 + 4 * v47) = *v46;
      v50 = v46[3];
      *v46 = v49 + 1;
      *(v50 + 4 * v49) = a2;
    }
  }

  return result;
}

uint64_t sub_2366E1710(unsigned int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v8 = a5 + 8 * a2;
  v9 = *(v8 + 4 * a1) + a3;
  *(v8 + 4 * a1) = v9;
  v10 = *(v8 + 4 * (a1 ^ 1));
  v11 = v10 - a3;
  *(v8 + 4 * (a1 ^ 1)) = v10 - a3;
  if (*(a4 + 4 * a2) != a1)
  {
    v19 = a2 - *(a6 + 4);
    v20 = a6[4];
    if (*(v20 + 4 * v19) == -1)
    {
      v22 = *a6;
      *(v20 + 4 * v19) = *a6;
      v23 = a6[3];
      *a6 = v22 + 1;
      *(v23 + 4 * v22) = a2;
      if (!a7)
      {
        return a3;
      }

      v21 = (*(v8 + 4 * a1) - *(v8 + 4 * (a1 ^ 1)));
    }

    else
    {
      if (!a7)
      {
        return a3;
      }

      v21 = (v9 - v11);
      if (*(*(a7 + 32) + 8 * (a2 - *(a7 + 24))) != -1)
      {
        sub_2366CE6C4(v21, a2, a7);
        return a3;
      }
    }

    sub_2366C612C(v21, a2, a7);
    return a3;
  }

  result = -a3;
  if (v10 == a3)
  {
    v13 = a2 - *(a6 + 4);
    v14 = a6[4];
    v15 = *(v14 + 4 * v13);
    if (v15 != -1)
    {
      v16 = a6[3];
      v17 = *a6 - 1;
      v18 = *(v16 + 4 * v17);
      *a6 = v17;
      *(v16 + 4 * v15) = v18;
      *(v14 + 4 * (v18 - *(a6 + 4))) = *(v14 + 4 * v13);
      *(v14 + 4 * v13) = -1;
    }
  }

  return result;
}

void sub_2366E1830(_DWORD *a1)
{
  v2 = MEMORY[0x277D85DF8];
  fwrite("ERROR: ", 7uLL, 1uLL, *MEMORY[0x277D85DF8]);
  fprintf(*v2, "Unknown refinement type for edge separators '%d'\n", *a1);
  fflush(*v2);
  abort();
}

int *sub_2366E188C(int a1, _DWORD *a2, int a3, int a4, const void *a5, const void *a6)
{
  v12 = sub_23681BC6C(0x158uLL, "SetupCtrl: ctrl");
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  *(v12 + 3) = 0u;
  *(v12 + 4) = 0u;
  *(v12 + 5) = 0u;
  *(v12 + 6) = 0u;
  *(v12 + 7) = 0u;
  *(v12 + 8) = 0u;
  *(v12 + 9) = 0u;
  *(v12 + 10) = 0u;
  *(v12 + 11) = 0u;
  *(v12 + 12) = 0u;
  *(v12 + 13) = 0u;
  *(v12 + 14) = 0u;
  *(v12 + 15) = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 17) = 0u;
  *(v12 + 18) = 0u;
  *(v12 + 19) = 0u;
  *(v12 + 20) = 0u;
  *(v12 + 42) = 0;
  v12[84] = getpid();
  switch(a1)
  {
    case 2:
      if (a2)
      {
        v32 = a2[1];
        if (v32 == -1)
        {
          v32 = 2;
        }

        v12[1] = v32;
        v33 = a2[4];
        if (v33 == -1)
        {
          v33 = 3;
        }

        v12[5] = v33;
        v34 = a2[3];
        if (v34 == -1)
        {
          v34 = 2;
        }

        v12[4] = v34;
        v35 = a2[16];
        if (v35 == -1)
        {
          v35 = 1;
        }

        v12[12] = v35;
        v36 = a2[6];
        if (v36 == -1)
        {
          v36 = 10;
        }

        v12[19] = v36;
        v37 = a2[17];
        if (v37 == -1)
        {
          v37 = 200;
        }

        v12[13] = v37;
        v38 = a2[13];
        if (v38 == -1)
        {
          v38 = 1;
        }

        v12[14] = v38;
        v39 = a2[14];
        if (v39 == -1)
        {
          v39 = 0;
        }

        v12[15] = v39;
        v40 = a2[15];
        if (v40 != -1)
        {
          v41 = v40 * 0.1;
LABEL_59:
          *(v12 + 26) = v41;
          goto LABEL_70;
        }
      }

      else
      {
        v12[1] = 2;
        *(v12 + 2) = 0x300000002;
        v12[19] = 10;
        *(v12 + 3) = xmmword_23681FA20;
      }

      v41 = 0.0;
      goto LABEL_59;
    case 1:
      if (a2)
      {
        v25 = a2[1];
        if (v25 == -1)
        {
          v25 = 0;
        }

        v12[1] = v25;
        v26 = a2[3];
        if (v26 == -1)
        {
          v26 = 4;
        }

        v12[4] = v26;
        v12[5] = 1;
        v27 = a2[7];
        if (v27 == -1)
        {
          v27 = 1;
        }

        v12[18] = v27;
        v28 = a2[6];
        if (v28 == -1)
        {
          v28 = 10;
        }

        v12[19] = v28;
        v29 = a2[17];
        if (v29 == -1)
        {
          v29 = 30;
        }

        v12[13] = v29;
        v30 = a2[11];
        if (v30 == -1)
        {
          v30 = 0;
        }

        v12[10] = v30;
        v31 = a2[12];
        if (v31 == -1)
        {
          v31 = 0;
        }
      }

      else
      {
        v31 = 0;
        v12[1] = 0;
        *(v12 + 2) = 0x100000004;
        *(v12 + 9) = 0xA00000001;
        v12[13] = 30;
        v12[10] = 0;
      }

      v12[11] = v31;
      if (a2)
      {
        goto LABEL_72;
      }

      goto LABEL_56;
    case 0:
      if (a2)
      {
        v19 = a2[1];
        if (v19 == -1)
        {
          v19 = 0;
        }

        v12[1] = v19;
        v12[5] = 0;
        v20 = a2[7];
        if (v20 == -1)
        {
          v20 = 1;
        }

        v12[18] = v20;
        v21 = a2[6];
        if (v21 == -1)
        {
          v21 = 10;
        }

        v12[19] = v21;
        v22 = a2[3];
        if (a3 == 1)
        {
          if (v22 == -1)
          {
            v23 = 0;
          }

          else
          {
            v23 = a2[3];
          }

          v12[4] = v23;
          v24 = a2[17];
          if (v24 == -1)
          {
            v24 = 1;
          }

          goto LABEL_62;
        }

        if (v22 == -1)
        {
          v22 = 1;
        }

        v12[4] = v22;
        if (a2[17] == -1)
        {
          v44 = 10;
        }

        else
        {
          v44 = a2[17];
        }
      }

      else
      {
        v12[1] = 0;
        v12[5] = 0;
        *(v12 + 9) = 0xA00000001;
        if (a3 == 1)
        {
          v12[4] = 0;
          v24 = 1;
LABEL_62:
          v12[13] = v24;
          v43 = 20;
          goto LABEL_71;
        }

        v12[4] = 1;
        v44 = 10;
      }

      v12[13] = v44;
LABEL_70:
      v43 = 100;
LABEL_71:
      v12[6] = v43;
      if (a2)
      {
        goto LABEL_72;
      }

LABEL_56:
      v42 = 0;
      *(v12 + 4) = 0;
      v12[16] = -1;
      *(v12 + 1) = 0x100000000;
      goto LABEL_82;
  }

  sub_236815030(15, "Unknown optype of %d\n", v13, v14, v15, v16, v17, v18, a1);
  if (!a2)
  {
    goto LABEL_56;
  }

LABEL_72:
  v45 = a2[2];
  if (v45 == -1)
  {
    v45 = 1;
  }

  v12[3] = v45;
  v46 = a2[9];
  if (v46 == -1)
  {
    v46 = 0;
  }

  v12[8] = v46;
  v47 = a2[10];
  if (v47 == -1)
  {
    v47 = 0;
  }

  v12[9] = v47;
  v12[16] = a2[8];
  v48 = a2[5];
  if (v48 == -1)
  {
    v48 = 0;
  }

  v12[2] = v48;
  v42 = a2[18];
  if (v42 == -1)
  {
    v42 = 0;
  }

LABEL_82:
  v12[20] = v42;
  *v12 = a1;
  v12[24] = a3;
  v12[25] = a4;
  *(v12 + 11) = sub_2366E72A4(a3, 0, "SetupCtrl: maxvwgt");
  if (*v12 == 2)
  {
    *(v12 + 15) = sub_2366E75EC(2, "SetupCtrl: ctrl->tpwgts", 0.5);
  }

  else
  {
    v49 = sub_2366E75EC((a4 + 2) * a3, "SetupCtrl: ctrl->tpwgts", 0.0);
    *(v12 + 15) = v49;
    if (a5)
    {
      sub_2366E7408(a4 * a3, a5, v49);
    }

    else if (a4 >= 1)
    {
      v50 = 0;
      v51 = 1.0 / a4;
      *&v51 = v51;
      v52 = vdupq_n_s64(a3 - 1);
      v53 = v49 + 8;
      v54 = vdupq_n_s64(4uLL);
      do
      {
        if (a3 >= 1)
        {
          v55 = v53;
          v56 = (a3 + 3) & 0xFFFFFFFC;
          v57 = xmmword_23681F920;
          v58 = xmmword_23681F910;
          do
          {
            v59 = vmovn_s64(vcgeq_u64(v52, v57));
            if (vuzp1_s16(v59, *&v51).u8[0])
            {
              *(v55 - 2) = LODWORD(v51);
            }

            if (vuzp1_s16(v59, *&v51).i8[2])
            {
              *(v55 - 1) = LODWORD(v51);
            }

            if (vuzp1_s16(*&v51, vmovn_s64(vcgeq_u64(v52, *&v58))).i32[1])
            {
              *v55 = LODWORD(v51);
              *(v55 + 1) = LODWORD(v51);
            }

            v58 = vaddq_s64(v58, v54);
            v57 = vaddq_s64(v57, v54);
            v55 += 16;
            v56 -= 4;
          }

          while (v56);
        }

        ++v50;
        v53 += 4 * a3;
      }

      while (v50 != a4);
    }
  }

  v60 = v12[13] * 0.001 + 1.0;
  v61 = sub_2366E75EC(v12[24], "SetupCtrl: ubfactors", v60);
  *(v12 + 14) = v61;
  if (a6)
  {
    sub_2366E7408(v12[24], a6, v61);
  }

  v62 = v12[24];
  if (v62 >= 1)
  {
    v63 = *(v12 + 14);
    do
    {
      v64 = *v63 + 0.0000499;
      *v63++ = v64;
      --v62;
    }

    while (v62);
  }

  *(v12 + 16) = sub_2366E7294(a4 * a3, "SetupCtrl: ctrl->pijbm");
  sub_2366C8C94(v12[16]);
  v12[17] = v12[16];
  if (v12[2])
  {
    sub_2366E1EA4(v12);
  }

  if (!sub_2366E22A0(v12))
  {
    sub_2366E29EC(v12, v65, v66, v67, v68, v69, v70, v71);
    sub_23681BE6C(v12 + 15, v72, v73, v74, v75, v76, v77, v78, v12 + 16, (v12 + 28));
    return 0;
  }

  return v12;
}

uint64_t sub_2366E1EA4(uint64_t a1)
{
  puts(" Runtime parameters:");
  printf("   Objective type: ");
  v2 = *(a1 + 4);
  v3 = "Unknown!";
  v4 = "Unknown!";
  if (v2 <= 2)
  {
    v4 = off_278A003E0[v2];
  }

  puts(v4);
  printf("   Coarsening type: ");
  v5 = *(a1 + 12);
  v6 = "METIS_CTYPE_SHEM";
  if (v5 != 1)
  {
    v6 = "Unknown!";
  }

  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = "METIS_CTYPE_RM";
  }

  puts(v7);
  printf("   Initial partitioning type: ");
  v8 = *(a1 + 16);
  if (v8 <= 4)
  {
    v3 = off_278A003F8[v8];
  }

  puts(v3);
  printf("   Refinement type: ");
  v9 = *(a1 + 20);
  if (v9 > 3)
  {
    v10 = "Unknown!";
  }

  else
  {
    v10 = off_278A00420[v9];
  }

  puts(v10);
  if (*(a1 + 32))
  {
    v11 = "Yes";
  }

  else
  {
    v11 = "No";
  }

  printf("   Perform a 2-hop matching: %s\n", v11);
  if (*(a1 + 36))
  {
    v12 = "Yes";
  }

  else
  {
    v12 = "No";
  }

  printf("   On disk storage: %s\n", v12);
  printf("   Number of balancing constraints: %d\n", *(a1 + 96));
  printf("   Number of refinement iterations: %d\n", *(a1 + 76));
  printf("   Random number seed: %d\n", *(a1 + 64));
  if (*a1 == 2)
  {
    printf("   Number of separators: %d\n", *(a1 + 48));
    if (*(a1 + 56))
    {
      v13 = "Yes";
    }

    else
    {
      v13 = "No";
    }

    printf("   Compress graph prior to ordering: %s\n", v13);
    if (*(a1 + 60))
    {
      v14 = "Yes";
    }

    else
    {
      v14 = "No";
    }

    printf("   Detect & order connected components separately: %s\n", v14);
    printf("   Prunning factor for high degree vertices: %f\n", *(a1 + 104));
  }

  else
  {
    printf("   Number of partitions: %d\n", *(a1 + 100));
    printf("   Number of cuts: %d\n", *(a1 + 72));
    printf("   User-supplied ufactor: %d\n", *(a1 + 52));
    if (*a1 == 1)
    {
      if (*(a1 + 40))
      {
        v15 = "Yes";
      }

      else
      {
        v15 = "No";
      }

      printf("   Minimize connectivity: %s\n", v15);
      if (*(a1 + 44))
      {
        v16 = "Yes";
      }

      else
      {
        v16 = "No";
      }

      printf("   Create contiguous partitions: %s\n", v16);
    }

    v17 = *(a1 + 96);
    switch(v17)
    {
      case 1:
        v18 = 5;
        break;
      case 2:
        v18 = 3;
        break;
      case 3:
        v18 = 2;
        break;
      default:
        v18 = 1;
        break;
    }

    printf("   Target partition weights: ");
    if (*(a1 + 100) >= 1)
    {
      v19 = 0;
      do
      {
        if (!(v19 % v18))
        {
          printf("\n     ");
        }

        printf("%4d=[", v19);
        v20 = *(a1 + 96);
        if (v20 >= 1)
        {
          v21 = 0;
          do
          {
            if (v21)
            {
              v22 = " ";
            }

            else
            {
              v22 = &unk_236821856;
            }

            printf("%s%.2e", v22, *(*(a1 + 120) + 4 * (v21 + v19 * v20)));
            v20 = *(a1 + 96);
            ++v21;
          }

          while (v21 < v20);
        }

        putchar(93);
        ++v19;
      }

      while (v19 < *(a1 + 100));
    }

    putchar(10);
  }

  printf("   Allowed maximum load imbalance: ");
  if (*(a1 + 96) >= 1)
  {
    v23 = 0;
    do
    {
      printf("%.3f ", *(*(a1 + 112) + 4 * v23++));
    }

    while (v23 < *(a1 + 96));
  }

  putchar(10);

  return putchar(10);
}

uint64_t sub_2366E22A0(int *a1)
{
  v2 = *a1;
  if (*a1 != 2)
  {
    if (v2 != 1)
    {
      if (v2)
      {
        v26 = "Input Error: Incorrect optype";
        goto LABEL_75;
      }

      if (!a1[1])
      {
        if (a1[3] < 2)
        {
          if (a1[4] < 2)
          {
            if (!a1[5])
            {
              if (a1[18] > 0)
              {
                if (a1[19] > 0)
                {
                  if (a1[13] > 0)
                  {
                    if (a1[20] < 2)
                    {
                      if (a1[25] > 0)
                      {
                        LODWORD(v3) = a1[24];
                        if (v3 >= 1)
                        {
                          v4 = 0;
                          v5 = 0;
                          while (1)
                          {
                            v6 = sub_2366E7240(a1[25], (*(a1 + 15) + v4), v3);
                            v7 = *&v6;
                            if (v7 < 0.99 || v7 > 1.01)
                            {
                              break;
                            }

                            ++v5;
                            v3 = a1[24];
                            v4 += 4;
                            if (v5 >= v3)
                            {
                              if (v3 < 1)
                              {
                                return 1;
                              }

                              v8 = 0;
                              v9 = 0;
                              v10 = a1[25];
                              while (v10 < 1)
                              {
LABEL_24:
                                ++v9;
                                v8 += 4;
                                if (v9 == v3)
                                {
                                  v13 = 0;
                                  result = 1;
                                  while (*(*(a1 + 14) + 4 * v13) > 1.0)
                                  {
                                    if (v3 == ++v13)
                                    {
                                      return result;
                                    }
                                  }

                                  goto LABEL_92;
                                }
                              }

                              v11 = 0;
                              v12 = (*(a1 + 15) + v8);
                              while (*v12 > 0.0)
                              {
                                ++v11;
                                v12 += v3;
                                if (v10 == v11)
                                {
                                  goto LABEL_24;
                                }
                              }

                              goto LABEL_88;
                            }
                          }

LABEL_85:
                          printf("Input Error: Incorrect sum of %f for tpwgts for constraint %d.\n");
                          return 0;
                        }

                        goto LABEL_83;
                      }

                      goto LABEL_82;
                    }

                    goto LABEL_81;
                  }

                  goto LABEL_79;
                }

                goto LABEL_78;
              }

              goto LABEL_77;
            }

            goto LABEL_74;
          }

          goto LABEL_73;
        }

        goto LABEL_72;
      }

      goto LABEL_70;
    }

    if (a1[1] < 2)
    {
      if (a1[3] < 2)
      {
        if ((a1[4] | 4) == 4)
        {
          if (a1[5] == 1)
          {
            if (a1[18] <= 0)
            {
LABEL_77:
              v26 = "Input Error: Incorrect ncuts.";
              goto LABEL_75;
            }

            if (a1[19] > 0)
            {
              if (a1[13] > 0)
              {
                if (a1[20] < 2)
                {
                  if (a1[25] > 0)
                  {
                    LODWORD(v15) = a1[24];
                    if (v15 > 0)
                    {
                      if (a1[11] >= 2)
                      {
                        v26 = "Input Error: Incorrect contig.";
                      }

                      else
                      {
                        if (a1[10] <= 1)
                        {
                          v16 = 0;
                          v17 = 0;
                          while (1)
                          {
                            v18 = sub_2366E7240(a1[25], (*(a1 + 15) + v16), v15);
                            v19 = *&v18;
                            if (v19 < 0.99 || v19 > 1.01)
                            {
                              goto LABEL_85;
                            }

                            ++v17;
                            v15 = a1[24];
                            v16 += 4;
                            if (v17 >= v15)
                            {
                              if (v15 < 1)
                              {
                                return 1;
                              }

                              v20 = 0;
                              v21 = 0;
                              v22 = a1[25];
                              while (v22 < 1)
                              {
LABEL_51:
                                ++v21;
                                v20 += 4;
                                if (v21 == v15)
                                {
                                  v25 = 0;
                                  result = 1;
                                  while (*(*(a1 + 14) + 4 * v25) > 1.0)
                                  {
                                    if (v15 == ++v25)
                                    {
                                      return result;
                                    }
                                  }

                                  goto LABEL_92;
                                }
                              }

                              v23 = 0;
                              v24 = (*(a1 + 15) + v20);
                              while (*v24 > 0.0)
                              {
                                ++v23;
                                v24 += v15;
                                if (v22 == v23)
                                {
                                  goto LABEL_51;
                                }
                              }

LABEL_88:
                              printf("Input Error: Incorrect tpwgts for partition %d and constraint %d.\n");
                              return 0;
                            }
                          }
                        }

                        v26 = "Input Error: Incorrect minconn.";
                      }

LABEL_75:
                      puts(v26);
                      return 0;
                    }

LABEL_83:
                    v26 = "Input Error: Incorrect ncon.";
                    goto LABEL_75;
                  }

LABEL_82:
                  v26 = "Input Error: Incorrect nparts.";
                  goto LABEL_75;
                }

LABEL_81:
                v26 = "Input Error: Incorrect numflag.";
                goto LABEL_75;
              }

LABEL_79:
              v26 = "Input Error: Incorrect ufactor.";
              goto LABEL_75;
            }

LABEL_78:
            v26 = "Input Error: Incorrect niter.";
            goto LABEL_75;
          }

LABEL_74:
          v26 = "Input Error: Incorrect refinement scheme.";
          goto LABEL_75;
        }

LABEL_73:
        v26 = "Input Error: Incorrect initial partitioning scheme.";
        goto LABEL_75;
      }

LABEL_72:
      v26 = "Input Error: Incorrect coarsening scheme.";
      goto LABEL_75;
    }

LABEL_70:
    v26 = "Input Error: Incorrect objective type.";
    goto LABEL_75;
  }

  if (a1[1] != 2)
  {
    goto LABEL_70;
  }

  if (a1[3] >= 2)
  {
    goto LABEL_72;
  }

  if ((a1[4] & 0xFFFFFFFE) != 2)
  {
    goto LABEL_73;
  }

  if ((a1[5] & 0xFFFFFFFE) != 2)
  {
    goto LABEL_74;
  }

  if (a1[12] <= 0)
  {
    v26 = "Input Error: Incorrect nseps.";
    goto LABEL_75;
  }

  if (a1[19] <= 0)
  {
    goto LABEL_78;
  }

  if (a1[13] <= 0)
  {
    goto LABEL_79;
  }

  if (a1[20] >= 2)
  {
    goto LABEL_81;
  }

  if (a1[25] != 3)
  {
    goto LABEL_82;
  }

  if (a1[24] != 1)
  {
    goto LABEL_83;
  }

  if (a1[14] >= 2)
  {
    v26 = "Input Error: Incorrect compress.";
    goto LABEL_75;
  }

  if (a1[15] >= 2)
  {
    v26 = "Input Error: Incorrect ccorder.";
    goto LABEL_75;
  }

  if (*(a1 + 26) < 0.0)
  {
    v26 = "Input Error: Incorrect pfactor.";
    goto LABEL_75;
  }

  if (**(a1 + 14) <= 1.0)
  {
LABEL_92:
    printf("Input Error: Incorrect ubfactor for constraint %d.\n");
    return 0;
  }

  return 1;
}

void *sub_2366E2774(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *a1;
  sub_2366E29EC(*a1, a2, a3, a4, a5, a6, a7, a8);
  result = sub_23681BE6C((v17 + 120), v9, v10, v11, v12, v13, v14, v15, (v17 + 128), v17 + 112);
  *a1 = 0;
  return result;
}

uint64_t sub_2366E27D4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 100);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a2 + 8);
    do
    {
      if (v5 >= 1)
      {
        v6 = *(a2 + 64);
        v7 = (*(result + 128) + v3);
        v8 = (*(result + 120) + v3);
        v9 = v5;
        do
        {
          v10 = *v6++;
          v11 = v10;
          v12 = *v8++;
          *v7++ = v11 / v12;
          --v9;
        }

        while (v9);
      }

      ++v4;
      v3 += 4 * v5;
    }

    while (v4 != v2);
  }

  return result;
}

uint64_t sub_2366E2838(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = *(a2 + 8);
  v5 = 4 * v4;
  v6 = 1;
  do
  {
    v7 = v6;
    if (v4 >= 1)
    {
      v8 = *(a2 + 64);
      v9 = v5 * v3;
      v10 = (*(result + 128) + v5 * v3);
      v11 = (a3 + v9);
      v12 = v4;
      do
      {
        v13 = *v8++;
        v14 = v13;
        v15 = *v11++;
        *v10++ = v14 / v15;
        --v12;
      }

      while (v12);
    }

    v6 = 0;
    v3 = 1;
  }

  while ((v7 & 1) != 0);
  return result;
}

_OWORD *sub_2366E2894(void *a1)
{
  result = sub_2368146A0(0);
  a1[31] = 0;
  a1[32] = 0;
  a1[30] = result;
  return result;
}

uint64_t sub_2366E28C4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 248) = a2;
  v9 = *(a1 + 4);
  if (v9 == 1)
  {
    result = sub_23681BC6C(12 * a2, "AllocateRefinementWorkSpace: vnbrpool");
    *(a1 + 280) = result;
  }

  else if (v9)
  {
    result = sub_236815030(15, "Unknown objtype of %d\n", a3, a4, a5, a6, a7, a8, *(a1 + 4));
  }

  else
  {
    result = sub_23681BC6C(8 * a2, "AllocateRefinementWorkSpace: cnbrpool");
    *(a1 + 272) = result;
  }

  if (*(a1 + 40))
  {
    *(a1 + 320) = sub_2366E7294(*(a1 + 100) + 1, "AllocateRefinementWorkSpace: pvec1");
    *(a1 + 328) = sub_2366E7294(*(a1 + 100) + 1, "AllocateRefinementWorkSpace: pvec2");
    *(a1 + 288) = sub_2366E72A4(*(a1 + 100), 200, "AllocateRefinementWorkSpace: maxnads");
    *(a1 + 296) = sub_2366E7294(*(a1 + 100), "AllocateRefinementWorkSpace: nads");
    *(a1 + 304) = sub_2366E7418(*(a1 + 100), 200, 0, "AllocateRefinementWorkSpace: adids");
    result = sub_2366E7418(*(a1 + 100), 200, 0, "AllocateRefinementWorkSpace: adwgts");
    *(a1 + 312) = result;
  }

  return result;
}

void *sub_2366E29EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_2368147B8((a1 + 240), *(a1 + 8) & 1, a3, a4, a5, a6, a7, a8);
  if (*(a1 + 8))
  {
    printf(" nbrpool statistics\n        nbrpoolsize: %12zu   nbrpoolcpos: %12zu\n    nbrpoolreallocs: %12zu\n\n", *(a1 + 248), *(a1 + 256), *(a1 + 264));
  }

  result = sub_23681BE6C((a1 + 272), v9, v10, v11, v12, v13, v14, v15, (a1 + 280), 0);
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  if (*(a1 + 40))
  {
    sub_2366E7588((a1 + 304), *(a1 + 100), 200, v17, v18, v19, v20, v21);
    sub_2366E7588((a1 + 312), *(a1 + 100), 200, v22, v23, v24, v25, v26);
    return sub_23681BE6C((a1 + 320), v27, v28, v29, v30, v31, v32, v33, (a1 + 328), a1 + 288);
  }

  return result;
}

uint64_t sub_2366E2AD8(uint64_t a1, int a2)
{
  v3 = *(a1 + 248);
  v4 = *(a1 + 256) + a2;
  *(a1 + 256) = v4;
  if (v4 > v3)
  {
    v6 = 10 * a2;
    if (10 * a2 <= v3 / 2)
    {
      v6 = v3 / 2;
    }

    v7 = v3 + v6;
    *(a1 + 248) = v7;
    v8 = sub_23681BD68(*(a1 + 272), 8 * v7, "cnbrpoolGet: cnbrpool");
    v4 = *(a1 + 256);
    ++*(a1 + 264);
    *(a1 + 272) = v8;
  }

  return (v4 - a2);
}

uint64_t sub_2366E2B54(uint64_t a1, int a2)
{
  v3 = *(a1 + 248);
  v4 = *(a1 + 256) + a2;
  *(a1 + 256) = v4;
  if (v4 > v3)
  {
    v6 = 10 * a2;
    if (10 * a2 <= v3 / 2)
    {
      v6 = v3 / 2;
    }

    v7 = v3 + v6;
    *(a1 + 248) = v7;
    *(a1 + 280) = sub_23681BD68(*(a1 + 280), 12 * v7, "vnbrpoolGet: vnbrpool");
    v4 = *(a1 + 256);
    ++*(a1 + 264);
  }

  return (v4 - a2);
}

int *sub_2366E2BD8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    *(a1 + 176) = *(a1 + 176) - sub_23681E0C8();
  }

  v10 = a2[1];
  if (v10 <= 1)
  {
    v17 = 0;
  }

  else
  {
    v11 = *(a2 + 6);
    v14 = *v11;
    v12 = v11 + 1;
    v13 = v14;
    v15 = v10 - 2;
    do
    {
      v16 = *v12++;
      v17 = v13 != v16;
    }

    while (v13 == v16 && v15-- != 0);
  }

  if (a2[2] >= 1)
  {
    v19 = 0;
    v20 = *(a2 + 7);
    v21 = *(a1 + 88);
    do
    {
      *(v21 + 4 * v19) = (*(v20 + 4 * v19) * 1.5 / *(a1 + 24));
      ++v19;
    }

    while (v19 < a2[2]);
  }

  do
  {
    if ((*(a1 + 8) & 4) != 0)
    {
      sub_2366E2DB4(a1, a2);
    }

    if (!*(a2 + 12))
    {
      *(a2 + 12) = sub_2366E7294(*a2, "CoarsenGraph: graph->cmap");
    }

    v22 = *(a1 + 12);
    if (v22 == 1)
    {
      if (!v17 || !a2[1])
      {
LABEL_28:
        sub_2366E2E74(a1, a2, a3, a4, a5, a6, a7, a8);
        goto LABEL_29;
      }

      sub_2366E3314(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      if (!v22)
      {
        goto LABEL_28;
      }

      sub_236815030(15, "Unknown ctype: %d\n", a3, a4, a5, a6, a7, a8, *(a1 + 12));
    }

LABEL_29:
    sub_2366EC430(a1, a2);
    a2 = *(a2 + 25);
    v23 = *a2;
    if (*a2 <= *(a1 + 24))
    {
      break;
    }

    if (**(a2 + 26) * 0.85 <= v23)
    {
      break;
    }

    v17 = 1;
  }

  while (a2[1] > v23 / 2);
  v24 = *(a1 + 8);
  if ((v24 & 4) != 0)
  {
    sub_2366E2DB4(a1, a2);
    v24 = *(a1 + 8);
  }

  if ((v24 & 2) != 0)
  {
    *(a1 + 176) = sub_23681E0C8() + *(a1 + 176);
  }

  return a2;
}

uint64_t sub_2366E2DB4(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = sub_2366E71E0(v5, *(a2 + 6), 1);
  printf("%10d %10d %10d [%d] [", v4, v5, v6, *(a1 + 24));
  if (a2[2] >= 1)
  {
    v7 = 0;
    do
    {
      printf(" %8d:%8d", *(*(a1 + 88) + 4 * v7), *(*(a2 + 7) + 4 * v7));
      ++v7;
    }

    while (v7 < a2[2]);
  }

  return puts(" ]");
}

uint64_t sub_2366E2E74(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_2366E2AA8(a1, a2, a3, a4, a5, a6, a7, a8, v85);
  if ((*(a1 + 8) & 2) != 0)
  {
    *(a1 + 160) = *(a1 + 160) - sub_23681E0C8();
  }

  v16 = *a2;
  v94 = a2[2];
  v17 = *(a2 + 2);
  v95 = *(a2 + 5);
  v96 = *(a2 + 3);
  v18 = *(a2 + 12);
  v97 = *(a1 + 88);
  v19 = sub_2366E2AB8(a1, *a2, v10, v11, v12, v13, v14, v15);
  v20 = sub_2366E736C(v16, -1, v19);
  v27 = sub_2366E2AB8(a1, v16, v21, v22, v23, v24, v25, v26);
  v34 = sub_2366E2AB8(a1, v16, v28, v29, v30, v31, v32, v33);
  v41 = sub_2366E2AB8(a1, v16, v35, v36, v37, v38, v39, v40);
  v42 = v16 + 7;
  if (v16 >= 0)
  {
    v42 = v16;
  }

  sub_2366C8A48(v16, v34, v42 >> 3, 1, (a1 + 68));
  v92 = v27;
  v86 = a2;
  v87 = a1;
  if (v16 <= 0)
  {
    sub_2366D7284(a1, v16, 0, v41, v34, v27, v43, v44);
    v93 = 0;
    v89 = 0;
    goto LABEL_51;
  }

  v45 = (4 * (*(v17 + 4 * v16) / v16));
  v90 = v17;
  v46 = (v17 + 4);
  v47 = v16;
  v48 = v41;
  do
  {
    v49 = sqrt((*v46 - *(v46 - 1) + 1));
    if (v45 < v49)
    {
      v49 = v45;
    }

    *v48++ = v49;
    ++v46;
    --v47;
  }

  while (v47);
  v50 = v27;
  sub_2366D7284(a1, v16, v45, v41, v34, v27, v43, v44);
  v55 = 0;
  v56 = 0;
  v93 = 0;
  v88 = v27 + 4;
  v89 = 0;
  v91 = v18;
  v57 = v94;
  do
  {
    v58 = *&v50[4 * v55];
    if (*(v20 + 4 * v58) != -1)
    {
      goto LABEL_44;
    }

    if (v57 == 1)
    {
      if (*(v96 + 4 * v58) < *v97)
      {
        v59 = (v90 + 4 * v58);
        v60 = v59[1];
        v61 = *v59;
        if (v60 == v61)
        {
LABEL_24:
          if (v56 <= v55)
          {
            v70 = v55;
          }

          else
          {
            v70 = v56;
          }

          v71 = &v88[4 * v70];
          v72 = v70 + 1;
          v18 = v91;
          v50 = v92;
          while (1)
          {
            v56 = v72;
            if (v16 <= v72)
            {
              break;
            }

            v73 = *v71;
            v71 += 4;
            LODWORD(v64) = v73;
            ++v72;
            if (*(v20 + 4 * v73) == -1)
            {
              goto LABEL_42;
            }
          }
        }

        else
        {
          v18 = v91;
          v50 = v92;
          if (v60 > v61)
          {
            v62 = (v95 + 4 * v61);
            v63 = v60 - v61;
            while (1)
            {
              v65 = *v62++;
              LODWORD(v64) = v65;
              if (*(v20 + 4 * v65) == -1 && *(v96 + 4 * v64) + *(v96 + 4 * v58) <= *v97)
              {
                break;
              }

              if (!--v63)
              {
                goto LABEL_20;
              }
            }

            if (v64 != v58)
            {
              goto LABEL_42;
            }
          }

LABEL_20:
          if (*v97 > 2 * *(v96 + 4 * v58))
          {
            ++v89;
            goto LABEL_44;
          }
        }
      }

      LODWORD(v64) = v58;
      goto LABEL_42;
    }

    v66 = v96 + 4 * (v58 * v57);
    if (!sub_2366ED59C(v57, v66, v97))
    {
      LODWORD(v64) = v58;
      goto LABEL_41;
    }

    v67 = (v90 + 4 * v58);
    v68 = v67[1];
    v69 = *v67;
    v57 = v94;
    if (v69 == v68)
    {
      goto LABEL_24;
    }

    if (v69 >= v68)
    {
      goto LABEL_38;
    }

    while (1)
    {
      v64 = *(v95 + 4 * v69);
      if (*(v20 + 4 * v64) == -1)
      {
        break;
      }

LABEL_37:
      if (++v69 >= v68)
      {
        goto LABEL_38;
      }
    }

    if (!sub_2366ED5D4(v57, 1, v66, v96 + 4 * (v64 * v57), v97))
    {
      v68 = v67[1];
      v57 = v94;
      goto LABEL_37;
    }

    v57 = v94;
    if (v64 != v58)
    {
      v18 = v91;
      v50 = v92;
      goto LABEL_42;
    }

LABEL_38:
    if (sub_2366ED5D4(v57, 2, v66, v66, v97))
    {
      ++v89;
      v18 = v91;
      v50 = v92;
      v57 = v94;
      goto LABEL_44;
    }

    LODWORD(v64) = v58;
    v18 = v91;
    v50 = v92;
LABEL_41:
    v57 = v94;
LABEL_42:
    if (v64 != -1)
    {
      *(v18 + 4 * v64) = v93;
      *(v18 + 4 * v58) = v93;
      *(v20 + 4 * v58) = v64;
      *(v20 + 4 * v64) = v58;
      ++v93;
    }

LABEL_44:
    ++v55;
  }

  while (v55 != v16);
LABEL_51:
  if (!*(v87 + 32) && v16 * 0.1 < v89)
  {
    sub_2366E3A80(v87, v86, v92, v20, v93, v89, v53, v54);
  }

  if (v16 >= 1)
  {
    v74 = 0;
    v75 = 0;
    while (1)
    {
      v76 = *(v20 + 4 * v74);
      if (v76 == -1)
      {
        break;
      }

      if (v74 <= v76)
      {
        *(v18 + 4 * v76) = v75;
LABEL_60:
        *(v18 + 4 * v74) = v75;
        v75 = (v75 + 1);
      }

      if (v16 == ++v74)
      {
        goto LABEL_64;
      }
    }

    *(v20 + 4 * v74) = v74;
    goto LABEL_60;
  }

  v75 = 0;
LABEL_64:
  if ((*(v87 + 8) & 2) != 0)
  {
    *(v87 + 160) = sub_23681E0C8() + *(v87 + 160);
  }

  sub_2366E3B7C(v87, v86, v75, v20, v51, v52, v53, v54);
  sub_2366E2AB0(v87, v77, v78, v79, v80, v81, v82, v83);
  return v75;
}

uint64_t sub_2366E3314(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_2366E2AA8(a1, a2, a3, a4, a5, a6, a7, a8, v92);
  if ((*(a1 + 8) & 2) != 0)
  {
    *(a1 + 160) = *(a1 + 160) - sub_23681E0C8();
  }

  v16 = *a2;
  v17 = a2[2];
  v18 = *(a2 + 2);
  v108 = *(a2 + 3);
  v103 = *(a2 + 5);
  v100 = *(a2 + 6);
  v95 = *(a2 + 12);
  v107 = *(a1 + 88);
  v19 = sub_2366E2AB8(a1, *a2, v10, v11, v12, v13, v14, v15);
  v20 = sub_2366E736C(v16, -1, v19);
  v27 = sub_2366E2AB8(a1, v16, v21, v22, v23, v24, v25, v26);
  v34 = sub_2366E2AB8(a1, v16, v28, v29, v30, v31, v32, v33);
  v41 = sub_2366E2AB8(a1, v16, v35, v36, v37, v38, v39, v40);
  v42 = v16 + 7;
  if (v16 >= 0)
  {
    v42 = v16;
  }

  sub_2366C8A48(v16, v34, v42 >> 3, 1, (a1 + 68));
  v45 = (4 * (*(v18 + 4 * v16) / v16));
  v94 = a1;
  v97 = a2;
  if (v16 <= 0)
  {
    sub_2366D7284(a1, v16, v45, v41, v34, v27, v43, v44);
    v104 = 0;
    v98 = 0;
    v57 = v95;
    v50 = v27;
    goto LABEL_57;
  }

  v93 = v27;
  v99 = v18;
  v46 = (v18 + 4);
  v47 = v16;
  v48 = v41;
  do
  {
    v49 = sqrt((*v46 - *(v46 - 1) + 1));
    if (v49 >= v45)
    {
      v49 = v45;
    }

    *v48++ = v49;
    ++v46;
    --v47;
  }

  while (v47);
  v50 = v27;
  sub_2366D7284(a1, v16, v45, v41, v34, v27, v43, v44);
  v55 = 0;
  v98 = 0;
  v56 = 0;
  v104 = 0;
  v96 = v27 + 4;
  v57 = v95;
  v106 = v17;
  do
  {
    v58 = *(v50 + 4 * v55);
    if (*(v20 + 4 * v58) != -1)
    {
      goto LABEL_37;
    }

    v59 = v58;
    if (v17 == 1)
    {
      if (*(v108 + 4 * v58) < *v107)
      {
        v102 = v58;
        v60 = (v99 + 4 * v58);
        v62 = *v60;
        v61 = v60[1];
        if (v62 == v61)
        {
LABEL_27:
          if (v56 <= v55)
          {
            v73 = v55;
          }

          else
          {
            v73 = v56;
          }

          v74 = &v96[4 * v73];
          v75 = v73 + 1;
          v17 = v106;
          v59 = v102;
          while (1)
          {
            v56 = v75;
            if (v16 <= v75)
            {
              break;
            }

            v76 = *v74;
            v74 += 4;
            v65 = v76;
            ++v75;
            if (*(v20 + 4 * v76) == -1)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          v17 = v106;
          v59 = v58;
          if (v62 < v61)
          {
            v63 = v61 - v62;
            v64 = -1;
            v65 = *(v50 + 4 * v55);
            v66 = (v103 + 4 * v62);
            v67 = (v100 + 4 * v62);
            do
            {
              v69 = *v66++;
              v68 = v69;
              if (*(v20 + 4 * v69) == -1 && v64 < *v67 && *(v108 + 4 * v68) + *(v108 + 4 * v58) <= *v107)
              {
                v65 = v68;
                v64 = *v67;
              }

              ++v67;
              --v63;
            }

            while (v63);
            if (v65 != v58)
            {
              goto LABEL_35;
            }
          }

          if (*v107 > 2 * *(v108 + 4 * v58))
          {
LABEL_52:
            ++v98;
            goto LABEL_37;
          }
        }
      }

LABEL_34:
      v65 = v58;
      goto LABEL_35;
    }

    v105 = (v108 + 4 * (v58 * v17));
    if (!sub_2366ED59C(v17, v105, v107))
    {
      goto LABEL_34;
    }

    v102 = v58;
    v70 = (v99 + 4 * v58);
    v71 = v70[1];
    v72 = *v70;
    if (v72 == v71)
    {
      goto LABEL_27;
    }

    if (v72 >= v71)
    {
      goto LABEL_51;
    }

    v101 = -1;
    v65 = v58;
    v77 = v103;
    do
    {
      v78 = *(v77 + 4 * v72);
      if (*(v20 + 4 * v78) != -1)
      {
        goto LABEL_49;
      }

      if (!sub_2366ED5D4(v106, 1, v105, v108 + 4 * (v78 * v106), v107))
      {
        goto LABEL_48;
      }

      v79 = *(v100 + 4 * v72);
      if (v101 < v79)
      {
        v65 = v78;
        v101 = *(v100 + 4 * v72);
LABEL_48:
        v77 = v103;
        goto LABEL_49;
      }

      if (v101 != v79)
      {
        goto LABEL_48;
      }

      v80 = sub_2366ED65C(v106, v97[8], v105, (v108 + 4 * (v65 * v106)), (v108 + 4 * (v78 * v106)));
      v77 = v103;
      if (v80)
      {
        v101 = *(v100 + 4 * v72);
        v65 = v78;
      }

LABEL_49:
      ++v72;
    }

    while (v72 < v70[1]);
    v57 = v95;
    v50 = v93;
    if (v65 == v58)
    {
LABEL_51:
      v17 = v106;
      if (sub_2366ED5D4(v106, 2, v105, v105, v107))
      {
        goto LABEL_52;
      }

      v65 = v58;
    }

    else
    {
      v17 = v106;
    }

    v59 = v58;
LABEL_35:
    if (v65 != -1)
    {
      *(v57 + 4 * v65) = v104;
      *(v57 + 4 * v59) = v104;
      *(v20 + 4 * v59) = v65;
      *(v20 + 4 * v65) = v58;
      ++v104;
    }

LABEL_37:
    ++v55;
  }

  while (v55 != v16);
LABEL_57:
  if (!*(v94 + 32) && v16 * 0.1 < v98)
  {
    sub_2366E3A80(v94, v97, v50, v20, v104, v98, v53, v54);
  }

  if (v16 >= 1)
  {
    v81 = 0;
    v82 = 0;
    while (1)
    {
      v83 = *(v20 + 4 * v81);
      if (v83 == -1)
      {
        break;
      }

      if (v81 <= v83)
      {
        *(v57 + 4 * v83) = v82;
LABEL_66:
        *(v57 + 4 * v81) = v82;
        v82 = (v82 + 1);
      }

      if (v16 == ++v81)
      {
        goto LABEL_70;
      }
    }

    *(v20 + 4 * v81) = v81;
    goto LABEL_66;
  }

  v82 = 0;
LABEL_70:
  if ((*(v94 + 8) & 2) != 0)
  {
    *(v94 + 160) = sub_23681E110() + *(v94 + 160);
  }

  sub_2366E3B7C(v94, v97, v82, v20, v51, v52, v53, v54);
  sub_2366E2AB0(v94, v84, v85, v86, v87, v88, v89, v90);
  return v82;
}

int *sub_2366E3860(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  if ((*(a1 + 8) & 2) != 0)
  {
    *(a1 + 176) = *(a1 + 176) - sub_23681E0C8();
  }

  v11 = a2[1];
  if (v11 <= 1)
  {
    v16 = 0;
  }

  else
  {
    v12 = *(a2 + 6);
    if (*v12 == v12[1])
    {
      v13 = 2;
      do
      {
        v14 = v13;
        if (v11 == v13)
        {
          break;
        }

        v15 = v12[v13++];
      }

      while (*v12 == v15);
      v16 = v14 < v11;
    }

    else
    {
      v16 = 1;
    }
  }

  if (a2[2] >= 1)
  {
    v17 = 0;
    v18 = *(a2 + 7);
    v19 = *(a1 + 88);
    do
    {
      *(v19 + 4 * v17) = (*(v18 + 4 * v17) * 1.5 / *(a1 + 24));
      ++v17;
    }

    while (v17 < a2[2]);
  }

  v20 = v8 - 1;
  if (v8 >= 1)
  {
    while (1)
    {
      if ((*(a1 + 8) & 4) != 0)
      {
        sub_2366E2DB4(a1, a2);
      }

      if (!*(a2 + 12))
      {
        *(a2 + 12) = sub_2366E7294(*a2, "CoarsenGraph: graph->cmap");
      }

      v21 = *(a1 + 12);
      if (v21 == 1)
      {
        if (!v16 || !a2[1])
        {
LABEL_25:
          sub_2366E2E74(a1, a2, a3, a4, a5, a6, a7, a8);
          goto LABEL_26;
        }

        sub_2366E3314(a1, a2, a3, a4, a5, a6, a7, a8);
      }

      else
      {
        if (!v21)
        {
          goto LABEL_25;
        }

        sub_236815030(15, "Unknown ctype: %d\n", a3, a4, a5, a6, a7, a8, *(a1 + 12));
      }

LABEL_26:
      sub_2366EC430(a1, a2);
      a2 = *(a2 + 25);
      v22 = *a2;
      if (*a2 >= *(a1 + 24) && **(a2 + 26) * 0.85 >= v22)
      {
        v23 = a2[1] < v22 / 2 || v20-- == 0;
        v16 = 1;
        if (!v23)
        {
          continue;
        }
      }

      break;
    }
  }

  v24 = *(a1 + 8);
  if ((v24 & 4) != 0)
  {
    sub_2366E2DB4(a1, a2);
    v24 = *(a1 + 8);
  }

  if ((v24 & 2) != 0)
  {
    *(a1 + 176) = sub_23681E0C8() + *(a1 + 176);
  }

  return a2;
}

uint64_t sub_2366E3A80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = a6;
  v12 = sub_2366E4148(a1, a2, a3, a4, a5, &v20, 2, a8);
  v14 = sub_2366E442C(a1, a2, a3, a4, v12, &v20, 0x40uLL, v13);
  v16 = v20;
  v17 = *a2;
  v18 = *a2;
  if (v18 * 0.15 < v20)
  {
    v14 = sub_2366E4148(a1, a2, a3, a4, v14, &v20, 3, v15);
    v17 = *a2;
    v16 = v20;
    v18 = *a2;
  }

  if (v18 * 0.2 < v16)
  {
    return sub_2366E4148(a1, a2, a3, a4, v14, &v20, v17, v15);
  }

  return v14;
}

uint64_t sub_2366E3B7C(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v11 = *(a1 + 4) == 1;
  if (a3 < 4094 || a2[1] / *a2 >= 103)
  {
LABEL_6:

    return sub_2366E4700(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    v12 = *a2 & ~(*a2 >> 31);
    v13 = (*(a2 + 2) + 4);
    while (v12)
    {
      v14 = *v13 - *(v13 - 1);
      --v12;
      ++v13;
      if (v14 >= 256)
      {
        goto LABEL_6;
      }
    }

    v81 = *(a2 + 2);
    v84 = *a2;
    v82 = *(a1 + 4);
    sub_2366E2AA8(a1, a2, a3, a4, a5, a6, a7, a8, v74);
    if ((*(a1 + 8) & 2) != 0)
    {
      *(a1 + 168) = *(a1 + 168) - sub_23681E0C8();
    }

    v87 = *(a2 + 3);
    v88 = a2[2];
    v80 = *(a2 + 4);
    v17 = *(a2 + 5);
    v16 = *(a2 + 6);
    v18 = *(a2 + 12);
    v76 = a2;
    v19 = sub_2366E4B24(a2, v8, v11);
    v20 = *(v19 + 2);
    v86 = *(v19 + 3);
    v21 = *(v19 + 5);
    v79 = *(v19 + 4);
    v75 = v19;
    v22 = *(v19 + 6);
    v77 = a1;
    v29 = sub_2366E2AB8(a1, 2048, v23, v24, v25, v26, v27, v28);
    v30 = sub_2366E736C(2048, -1, v29);
    v85 = v20;
    *v20 = 0;
    v31 = v84;
    if (v84 >= 1)
    {
      v32 = v30;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = a4;
      v37 = v82;
      v38 = v88;
      v39 = v81;
      while (1)
      {
        v40 = *(v36 + 4 * v33);
        if (v33 <= v40)
        {
          break;
        }

LABEL_76:
        if (++v33 == v31)
        {
          goto LABEL_81;
        }
      }

      if (v38 == 1)
      {
        *(v86 + 4 * v35) = *(v87 + 4 * v33);
      }

      else
      {
        v41 = v34;
        v42 = (v87 + 4 * v33 * v38);
        v43 = (v86 + 4 * v35 * v38);
        v44 = v38;
        v45 = v35;
        v30 = sub_2366E7408(v44, v42, v43);
        v35 = v45;
        v34 = v41;
        v39 = v81;
        v36 = a4;
        v31 = v84;
        v37 = v82;
      }

      if (v37 == 1)
      {
        *(v79 + 4 * v35) = *(v80 + 4 * v33);
      }

      v46 = (v39 + 4 * v33);
      v47 = *v46;
      v48 = v46[1];
      if (v47 < v48)
      {
        v49 = 0;
        while (1)
        {
          v50 = *(v18 + 4 * *(v17 + 4 * v47));
          v51 = *(v32 + 4 * (v50 & 0x7FF));
          if (v51 == -1)
          {
            break;
          }

          if (v21[v51] != v50)
          {
            if (v49 < 1)
            {
              LODWORD(v52) = 0;
            }

            else
            {
              v52 = 0;
              while (v21[v52] != v50)
              {
                if (v49 == ++v52)
                {
                  goto LABEL_33;
                }
              }

              *(v22 + 4 * v52) += *(v16 + 4 * v47);
            }

            if (v52 != v49)
            {
              goto LABEL_35;
            }

LABEL_33:
            v21[v49] = v50;
            *(v22 + 4 * v49) = *(v16 + 4 * v47);
            goto LABEL_34;
          }

          *(v22 + 4 * v51) += *(v16 + 4 * v47);
LABEL_35:
          if (++v47 == v48)
          {
            goto LABEL_38;
          }
        }

        v21[v49] = v50;
        *(v22 + 4 * v49) = *(v16 + 4 * v47);
        *(v32 + 4 * (v50 & 0x7FF)) = v49;
LABEL_34:
        ++v49;
        goto LABEL_35;
      }

      v49 = 0;
LABEL_38:
      if (v33 != v40)
      {
        v30 = v88;
        if (v88 == 1)
        {
          *(v86 + 4 * v35) += *(v87 + 4 * v40);
        }

        else
        {
          v78 = v34;
          v53 = v35;
          v30 = sub_2366E7208(v88, 1, (v87 + 4 * v40 * v88), 1, (v86 + 4 * v35 * v88), 1);
          v35 = v53;
          v34 = v78;
          v39 = v81;
          v36 = a4;
          v31 = v84;
          v37 = v82;
        }

        if (v37 == 1)
        {
          *(v79 + 4 * v35) += *(v80 + 4 * v40);
        }

        v54 = (v39 + 4 * v40);
        v55 = *v54;
        v56 = v54[1];
        if (v55 < v56)
        {
          while (1)
          {
            v57 = *(v18 + 4 * *(v17 + 4 * v55));
            v58 = *(v32 + 4 * (v57 & 0x7FF));
            if (v58 == -1)
            {
              break;
            }

            if (v21[v58] != v57)
            {
              if (v49 < 1)
              {
                LODWORD(v59) = 0;
              }

              else
              {
                v59 = 0;
                while (v21[v59] != v57)
                {
                  if (v49 == ++v59)
                  {
                    goto LABEL_57;
                  }
                }

                *(v22 + 4 * v59) += *(v16 + 4 * v55);
              }

              if (v59 != v49)
              {
                goto LABEL_59;
              }

LABEL_57:
              v21[v49] = v57;
              *(v22 + 4 * v49) = *(v16 + 4 * v55);
              goto LABEL_58;
            }

            *(v22 + 4 * v58) += *(v16 + 4 * v55);
LABEL_59:
            if (++v55 == v56)
            {
              goto LABEL_60;
            }
          }

          v21[v49] = v57;
          *(v22 + 4 * v49) = *(v16 + 4 * v55);
          *(v32 + 4 * (v57 & 0x7FF)) = v49;
LABEL_58:
          ++v49;
          goto LABEL_59;
        }

LABEL_60:
        v60 = *(v32 + 4 * (v35 & 0x7FF));
        if ((v60 & 0x80000000) == 0)
        {
          if (v21[v60] != v35)
          {
            if (v49 >= 1)
            {
              v60 = 0;
              while (v21[v60] != v35)
              {
                if (v49 == ++v60)
                {
                  goto LABEL_72;
                }
              }

              v60 = v60;
              if ((v60 & 0x80000000) != 0)
              {
                goto LABEL_72;
              }

              goto LABEL_69;
            }

            v60 = 0;
          }

          if ((v60 & 0x80000000) == 0)
          {
LABEL_69:
            if (v60 < v49 && v21[v60] == v35)
            {
              v21[v60] = v21[--v49];
              *(v22 + 4 * v60) = *(v22 + 4 * v49);
            }
          }
        }
      }

LABEL_72:
      if (v49 >= 1)
      {
        v61 = v49;
        v62 = v21;
        do
        {
          v63 = *v62++;
          *(v32 + 4 * (v63 & 0x7FF)) = -1;
          --v61;
        }

        while (v61);
      }

      *(v32 + 4 * (v35 & 0x7FF)) = -1;
      v34 += v49;
      v85[v35 + 1] = v34;
      v21 += v49;
      ++v35;
      v22 += 4 * v49;
      v38 = v88;
      goto LABEL_76;
    }

    v34 = 0;
    v38 = v88;
LABEL_81:
    v75[1] = v34;
    if (v38 >= 1)
    {
      v64 = 0;
      do
      {
        v30 = sub_2366E71E0(*v75, (*(v75 + 3) + v64), v38);
        v65 = *(v75 + 8);
        *(*(v75 + 7) + v64) = v30;
        v66 = 1.0 / v30;
        if (v30 <= 0)
        {
          v66 = 1.0;
        }

        *(v65 + v64) = v66;
        v64 += 4;
      }

      while (4 * v38 != v64);
    }

    sub_2366E4C0C(v30, v76, v75);
    if ((*(v77 + 8) & 2) != 0)
    {
      *(v77 + 168) = sub_23681E0C8() + *(v77 + 168);
    }

    return sub_2366E2AB0(v77, v67, v68, v69, v70, v71, v72, v73);
  }
}

uint64_t sub_2366E4148(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v71 = a7;
  v9 = a5;
  if ((*(a1 + 8) & 2) != 0)
  {
    *(a1 + 232) = *(a1 + 232) - sub_23681E110();
  }

  v14 = *a2;
  v15 = a2[2];
  v16 = a2[5];
  v17 = a2[12];
  v72 = a6;
  v18 = *a6;
  sub_2366E2AA8(a1, a2, a3, a4, a5, a6, a7, a8, v70);
  v25 = sub_2366E2AB8(a1, v14 + 1, v19, v20, v21, v22, v23, v24);
  v26 = sub_2366E736C(v14, 0, v25);
  v33 = v26;
  if (v14 < 1)
  {
    *v26 = 0;
    sub_2366E2AB8(a1, v26[v14], v27, v28, v29, v30, v31, v32);
    *v33 = 0;
  }

  else
  {
    for (i = 0; i != v14; ++i)
    {
      if (*(a4 + 4 * i) == -1)
      {
        v35 = (v15 + 4 * i);
        LODWORD(v36) = *v35;
        v37 = v35[1];
        v38 = v37 - *v35 >= v71 || v37 <= v36;
        if (!v38)
        {
          v36 = v36;
          do
          {
            ++v26[*(v16 + 4 * v36++)];
          }

          while (v36 < v35[1]);
        }
      }
    }

    if (v14 != 1)
    {
      v39 = v26 + 1;
      v40 = *v26;
      v41 = v14 - 1;
      do
      {
        v40 += *v39;
        *v39++ = v40;
        --v41;
      }

      while (v41);
    }

    v42 = v14;
    do
    {
      v26[v42] = v26[v42 - 1];
      v38 = v42-- > 1;
    }

    while (v38);
    *v26 = 0;
    v43 = sub_2366E2AB8(a1, v26[v14], v27, v28, v29, v30, v31, v32);
    for (j = 0; j != v14; ++j)
    {
      v52 = *(a3 + 4 * j);
      if (*(a4 + 4 * v52) == -1)
      {
        v53 = (v15 + 4 * v52);
        LODWORD(v54) = *v53;
        v55 = v53[1];
        if (v55 - *v53 < v71 && v55 > v54)
        {
          v54 = v54;
          do
          {
            v57 = *(v16 + 4 * v54);
            v58 = v33[v57];
            v33[v57] = v58 + 1;
            v43[v58] = v52;
            ++v54;
          }

          while (v54 < v53[1]);
        }
      }
    }

    v59 = v14;
    do
    {
      v33[v59] = v33[v59 - 1];
      v38 = v59-- > 1;
    }

    while (v38);
    v60 = 0;
    *v33 = 0;
    do
    {
      LODWORD(v62) = v33[*(a3 + 4 * v60)];
      v61 = v33[*(a3 + 4 * v60) + 1];
      if (v61 - v62 >= 2 && v61 > v62)
      {
        v62 = v62;
        do
        {
          if (*(a4 + 4 * v43[v62]) == -1)
          {
            v64 = &v43[v61];
            v65 = v61 - 1;
            while (v65 > v62)
            {
              v67 = *--v64;
              v66 = v67;
              --v61;
              --v65;
              if (*(a4 + 4 * v67) == -1)
              {
                *(v17 + 4 * v66) = v9;
                *(v17 + 4 * v43[v62]) = v9;
                v9 = (v9 + 1);
                v68 = *v64;
                *(a4 + 4 * v43[v62]) = v68;
                *(a4 + 4 * v68) = v43[v62];
                v18 -= 2;
                goto LABEL_41;
              }
            }

            --v61;
          }

LABEL_41:
          ++v62;
        }

        while (v62 < v61);
      }

      ++v60;
    }

    while (v60 != v14);
  }

  sub_2366E2AB0(a1, v44, v45, v46, v47, v48, v49, v50);
  if ((*(a1 + 8) & 2) != 0)
  {
    *(a1 + 232) = sub_23681E110() + *(a1 + 232);
  }

  *v72 = v18;
  return v9;
}

uint64_t sub_2366E442C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, unint64_t a7, uint64_t a8)
{
  v10 = a5;
  if ((*(a1 + 8) & 2) != 0)
  {
    *(a1 + 232) = *(a1 + 232) - sub_23681E110();
  }

  v15 = *a2;
  v16 = a2[2];
  v17 = a2[5];
  v72 = a2[12];
  v74 = a6;
  v18 = *a6;
  sub_2366E2AA8(a1, a2, a3, a4, a5, a6, a7, a8, v71);
  v73 = v18;
  v25 = sub_2366E2AC4(a1, v18, v19, v20, v21, v22, v23, v24);
  v26 = v25;
  if (v15 < 1)
  {
    v28 = 0;
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v29 = 0x7FFFFFFF / a7;
    do
    {
      v30 = *(a3 + 4 * v27);
      v31 = (v16 + 4 * v30);
      v33 = *v31;
      v32 = v31[1];
      v34 = v32 - v33;
      if (*(a4 + 4 * v30) == -1 && v34 >= 2 && v34 < a7)
      {
        if (v32 <= v33)
        {
          v37 = 0;
        }

        else
        {
          v37 = 0;
          v38 = (v17 + 4 * v33);
          v39 = v32 - v33;
          do
          {
            v40 = *v38++;
            v37 += v40 % v29;
            --v39;
          }

          while (v39);
        }

        v41 = &v25[8 * v28];
        *v41 = v34 + v37 % v29 * a7;
        *(v41 + 1) = v30;
        ++v28;
      }

      ++v27;
    }

    while (v27 != v15);
  }

  v42 = v28;
  sub_2366D7228(v28, v25);
  v49 = sub_2366E2AB8(a1, v15, v43, v44, v45, v46, v47, v48);
  v50 = sub_2366E736C(v15, 0, v49);
  if (v28 < 1)
  {
    v60 = v73;
  }

  else
  {
    v58 = 0;
    v59 = 1;
    v55 = v72;
    v60 = v73;
    do
    {
      v61 = &v26[8 * v58];
      v62 = *(v61 + 1);
      if (*(a4 + 4 * v62) == -1)
      {
        v63 = (v16 + 4 * v62);
        LODWORD(v64) = v63[1];
        v65 = *v63;
        if (v65 < v64)
        {
          do
          {
            *(v50 + 4 * *(v17 + 4 * v65++)) = v62;
            v64 = v63[1];
          }

          while (v65 < v64);
        }

        if (++v58 < v42)
        {
          v66 = v59;
          while (1)
          {
            v67 = &v26[8 * v66];
            v68 = *(v67 + 1);
            v51 = *(a4 + 4 * v68);
            if (v51 == -1)
            {
              v51 = *v61;
              if (v51 != *v67)
              {
                goto LABEL_42;
              }

              v53 = (v64 - *v63);
              v52 = *(v16 + 4 * v68);
              v51 = *(v16 + 4 * v68 + 4);
              v54 = (v51 - v52);
              if (v53 != v54)
              {
                goto LABEL_42;
              }

              if (v51 > v52)
              {
                v53 = v17 + 4 * v52;
                while (1)
                {
                  v69 = *v53;
                  v53 += 4;
                  v54 = *(v50 + 4 * v69);
                  if (v54 != v62)
                  {
                    break;
                  }

                  v52 = (v52 + 1);
                  if (v51 == v52)
                  {
                    goto LABEL_41;
                  }
                }
              }

              if (v52 == v51)
              {
                break;
              }
            }

            if (++v66 == v42)
            {
              goto LABEL_42;
            }
          }

LABEL_41:
          *(v72 + 4 * v68) = v10;
          *(v72 + 4 * v62) = v10;
          v10 = (v10 + 1);
          *(a4 + 4 * v62) = v68;
          *(a4 + 4 * v68) = v62;
          v60 -= 2;
        }
      }

      else
      {
        ++v58;
      }

LABEL_42:
      ++v59;
    }

    while (v58 != v42);
  }

  sub_2366E2AB0(a1, v51, v52, v53, v54, v55, v56, v57);
  if ((*(a1 + 8) & 2) != 0)
  {
    *(a1 + 232) = sub_23681E110() + *(a1 + 232);
  }

  *v74 = v60;
  return v10;
}

uint64_t sub_2366E4700(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  sub_2366E2AA8(a1, a2, a3, a4, a5, a6, a7, a8, v73);
  v87 = *(a1 + 4);
  if ((*(a1 + 8) & 2) != 0)
  {
    *(a1 + 168) = *(a1 + 168) - sub_23681E0C8();
  }

  v11 = *a2;
  v88 = a2[2];
  v85 = *(a2 + 3);
  v86 = *(a2 + 2);
  v80 = *(a2 + 5);
  v81 = *(a2 + 4);
  v79 = *(a2 + 6);
  v12 = *(a2 + 12);
  v74 = a2;
  v13 = sub_2366E4B24(a2, v8, v87 == 1);
  v14 = *(v13 + 2);
  v84 = *(v13 + 3);
  v15 = *(v13 + 5);
  v78 = *(v13 + 4);
  v16 = *(v13 + 6);
  v75 = a1;
  v23 = sub_2366E2AB8(a1, v8, v17, v18, v19, v20, v21, v22);
  v24 = sub_2366E736C(v8, -1, v23);
  v25 = v11;
  v83 = v14;
  *v14 = 0;
  if (v11 < 1)
  {
    v28 = 0;
    v30 = v88;
  }

  else
  {
    v26 = v24;
    v27 = 0;
    v28 = 0;
    LODWORD(v29) = 0;
    v30 = v88;
    v31 = a4;
    v77 = v25;
    do
    {
      v32 = *(v31 + 4 * v27);
      if (v27 <= v32)
      {
        if (v30 == 1)
        {
          *(v84 + 4 * v29) = *(v85 + 4 * v27);
        }

        else
        {
          v33 = (v85 + 4 * v27 * v30);
          v34 = (v84 + 4 * v29 * v30);
          v35 = v30;
          v36 = v28;
          v24 = sub_2366E7408(v35, v33, v34);
          v28 = v36;
          v25 = v77;
          v31 = a4;
        }

        if (v87 == 1)
        {
          *(v78 + 4 * v29) = *(v81 + 4 * v27);
        }

        v37 = (v86 + 4 * v27);
        v39 = *v37;
        v38 = v37[1];
        if (v39 >= v38)
        {
          v40 = 0;
        }

        else
        {
          v40 = 0;
          v41 = (v80 + 4 * v39);
          v42 = v38 - v39;
          v43 = (v79 + 4 * v39);
          do
          {
            v44 = *v41++;
            v45 = *(v12 + 4 * v44);
            v46 = *(v26 + 4 * v45);
            if (v46 == -1)
            {
              v15[v40] = v45;
              *(v16 + 4 * v40) = *v43;
              *(v26 + 4 * v45) = v40++;
            }

            else
            {
              *(v16 + 4 * v46) += *v43;
            }

            ++v43;
            --v42;
          }

          while (v42);
        }

        if (v27 != v32)
        {
          v24 = v88;
          if (v88 == 1)
          {
            *(v84 + 4 * v29) += *(v85 + 4 * v32);
          }

          else
          {
            v47 = (v84 + 4 * v29 * v88);
            v76 = v29;
            v48 = v28;
            v24 = sub_2366E7208(v88, 1, (v85 + 4 * v32 * v88), 1, v47, 1);
            v28 = v48;
            LODWORD(v29) = v76;
            v25 = v77;
            v31 = a4;
          }

          if (v87 == 1)
          {
            *(v78 + 4 * v29) += *(v81 + 4 * v32);
          }

          v49 = (v86 + 4 * v32);
          v51 = *v49;
          v50 = v49[1];
          if (v51 < v50)
          {
            v52 = (v80 + 4 * v51);
            v53 = v50 - v51;
            v54 = (v79 + 4 * v51);
            do
            {
              v55 = *v52++;
              v56 = *(v12 + 4 * v55);
              v57 = *(v26 + 4 * v56);
              if (v57 == -1)
              {
                v15[v40] = v56;
                *(v16 + 4 * v40) = *v54;
                *(v26 + 4 * v56) = v40++;
              }

              else
              {
                *(v16 + 4 * v57) += *v54;
              }

              ++v54;
              --v53;
            }

            while (v53);
          }

          v58 = *(v26 + 4 * v29);
          if (v58 != -1)
          {
            v15[v58] = v15[--v40];
            *(v16 + 4 * v58) = *(v16 + 4 * v40);
            *(v26 + 4 * v29) = -1;
          }
        }

        if (v40 >= 1)
        {
          v59 = v40;
          v60 = v15;
          do
          {
            v61 = *v60++;
            *(v26 + 4 * v61) = -1;
            --v59;
          }

          while (v59);
        }

        v28 += v40;
        v29 = v29 + 1;
        v83[v29] = v28;
        v15 += v40;
        v16 += 4 * v40;
        v30 = v88;
      }

      ++v27;
    }

    while (v27 != v25);
  }

  v13[1] = v28;
  if (v30 >= 1)
  {
    v62 = 0;
    do
    {
      v24 = sub_2366E71E0(*v13, (*(v13 + 3) + v62), v30);
      v63 = *(v13 + 8);
      *(*(v13 + 7) + v62) = v24;
      v64 = 1.0 / v24;
      if (v24 <= 0)
      {
        v64 = 1.0;
      }

      *(v63 + v62) = v64;
      v62 += 4;
    }

    while (4 * v30 != v62);
  }

  sub_2366E4C0C(v24, v74, v13);
  if ((*(v75 + 8) & 2) != 0)
  {
    *(v75 + 168) = sub_23681E0C8() + *(v75 + 168);
  }

  return sub_2366E2AB0(v75, v65, v66, v67, v68, v69, v70, v71);
}

uint64_t sub_2366E4B24(uint64_t a1, int a2, int a3)
{
  sub_2366EC044();
  v7 = v6;
  *v6 = a2;
  *(v6 + 8) = *(a1 + 8);
  *(v6 + 208) = a1;
  *(a1 + 200) = v6;
  *(v6 + 16) = sub_2366E7294(a2 + 1, "SetupCoarseGraph: xadj");
  *(v7 + 40) = sub_2366E7294(*(a1 + 4), "SetupCoarseGraph: adjncy");
  *(v7 + 48) = sub_2366E7294(*(a1 + 4), "SetupCoarseGraph: adjwgt");
  *(v7 + 24) = sub_2366E7294(*(v7 + 8) * a2, "SetupCoarseGraph: vwgt");
  *(v7 + 56) = sub_2366E7294(*(v7 + 8), "SetupCoarseGraph: tvwgt");
  *(v7 + 64) = sub_2366E7294(*(v7 + 8), "SetupCoarseGraph: invtvwgt");
  if (a3)
  {
    *(v7 + 32) = sub_2366E7294(a2, "SetupCoarseGraph: vsize");
  }

  return v7;
}

void sub_2366E4C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 4);
  if (v4 >= 10001 && *(a2 + 4) * 0.9 > v4)
  {
    *(a3 + 40) = sub_2366E729C(*(a3 + 40), v4, "ReAdjustMemory: adjncy");
    *(a3 + 48) = sub_2366E729C(*(a3 + 48), *(a3 + 4), "ReAdjustMemory: adjwgt");
  }
}

char *sub_2366E4C90()
{
  v0 = malloc_type_calloc(1uLL, 0x218uLL, 0x1090040516FEABBuLL);
  qos_class_self();
  *(v0 + 1) = pthread_qos_max_parallelism();
  v1 = getenv("VECLIB_MAXIMUM_THREADS");
  if (v1)
  {
    *(v0 + 1) = strtol(v1, 0, 0);
  }

  *v0 = 0;
  *(v0 + 26) = vdupq_n_s64(1uLL);
  *(v0 + 63) = 8;
  *(v0 + 64) = 16;
  *(v0 + 130) = 0;
  *(v0 + 112) = 1065604874;
  *(v0 + 115) = 1;
  *(v0 + 124) = 0;
  *(v0 + 101) = 0;
  *(v0 + 8) = xmmword_23681FA50;
  *(v0 + 452) = 0;
  *(v0 + 66) = 5;
  *(v0 + 60) = 0x3FEB333333333333;
  *(v0 + 61) = 8;
  *(v0 + 58) = 0x100000000;
  *(v0 + 49) = 0;
  return v0;
}

void sub_2366E4D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 404);
  if ((v5 - 3) < 2)
  {
    v6 = 3;
LABEL_5:
    *(a1 + 408) = v6;
    goto LABEL_7;
  }

  if (v5 == 1)
  {
    v6 = 2;
    goto LABEL_5;
  }

  v6 = *(a1 + 408);
LABEL_7:
  v7 = *(a1 + 4);
  if (a2)
  {
    *(a1 + 432) = a2;
  }

  else
  {
    v8 = malloc_type_malloc(4 * v6, 0x100004052888210uLL);
    v9 = v8;
    *(a1 + 432) = v8;
    v5 = *(a1 + 404);
    if ((v5 - 3) > 1)
    {
      if (v6)
      {
        v10 = 1.0 / v6;
        *&v10 = v10;
        v11 = (v6 + 3) & 0x1FFFFFFFCLL;
        v12 = vdupq_n_s64(v6 - 1);
        v13 = xmmword_23681F910;
        v14 = xmmword_23681F920;
        v15 = v8 + 2;
        v16 = vdupq_n_s64(4uLL);
        do
        {
          v17 = vmovn_s64(vcgeq_u64(v12, v14));
          if (vuzp1_s16(v17, *&v10).u8[0])
          {
            *(v15 - 2) = LODWORD(v10);
          }

          if (vuzp1_s16(v17, *&v10).i8[2])
          {
            *(v15 - 1) = LODWORD(v10);
          }

          if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v12, *&v13))).i32[1])
          {
            *v15 = LODWORD(v10);
            v15[1] = LODWORD(v10);
          }

          v13 = vaddq_s64(v13, v16);
          v14 = vaddq_s64(v14, v16);
          v15 += 4;
          v11 -= 4;
        }

        while (v11);
      }
    }

    else
    {
      memset_pattern16(v8, &unk_23681FA60, 8uLL);
      v9[2] = 1065353216;
    }
  }

  if ((v5 - 1) < 2)
  {
    v18 = 200;
  }

  else if ((v5 - 3) >= 2)
  {
    if (v5)
    {
      sub_2366CB95C((a1 + 404), a2, a3);
    }

    v18 = v3 / (20 * (32 - __clz((v6 - 1) | 1)));
    if (v18 <= 30 * v6)
    {
      v18 = 30 * v6;
    }
  }

  else
  {
    v18 = 1500 * v7;
  }

  *(a1 + 472) = v18;
}

uint64_t sub_2366E4F48(double *a1, uint64_t *a2)
{
  v4 = sub_2366E4C90();
  v5 = v4;
  v6 = a1[2];
  if (v6 != -1.79769313e308)
  {
    if (v6 < 1.0)
    {
      v7 = MEMORY[0x277D85DF8];
      fwrite("ERROR: ", 7uLL, 1uLL, *MEMORY[0x277D85DF8]);
      fprintf(*v7, "Invalid number of threads: %u\n", a1[2]);
      fflush(*v7);
      if (!v5)
      {
        return 2;
      }

      goto LABEL_35;
    }

    *(v4 + 1) = v6;
  }

  v8 = a1[13];
  if (v8 == -1.79769313e308)
  {
    v9 = *(v4 + 101);
  }

  else
  {
    v9 = v8;
    *(v4 + 101) = v8;
    if (v8 > 2)
    {
      if ((v9 - 3) <= 1)
      {
        if (*(v4 + 1) <= 1u)
        {
          v10 = 1;
        }

        else
        {
          v10 = 3;
        }

        *(v4 + 124) = v10;
        *(v4 + 102) = 3;
      }
    }

    else
    {
      switch(v9)
      {
        case 0:
          *(v4 + 124) = 0;
          *(v4 + 102) = 3;
          goto LABEL_30;
        case 1:
          *(v4 + 102) = 2;
          v9 = 1;
          goto LABEL_38;
        case 2:
          *(v4 + 124) = *(v4 + 1) < 2u;
          v9 = 2;
          goto LABEL_30;
      }
    }
  }

  if (v9 > 2)
  {
    if ((v9 - 3) >= 2)
    {
      goto LABEL_40;
    }

    v11 = 300;
    goto LABEL_39;
  }

  if (v9)
  {
    if (v9 != 1)
    {
      if (v9 != 2)
      {
        goto LABEL_40;
      }

      goto LABEL_30;
    }

LABEL_38:
    v11 = 100;
LABEL_39:
    *(v4 + 128) = v11;
    goto LABEL_40;
  }

LABEL_30:
  v12 = a1[1];
  v13 = MEMORY[0x277D85DF8];
  if (v12 == -1.79769313e308)
  {
    fwrite("ERROR: ", 7uLL, 1uLL, *MEMORY[0x277D85DF8]);
    v14 = *v13;
    v15 = "The number of partitions must be specified.\n";
    v16 = 44;
LABEL_34:
    fwrite(v15, v16, 1uLL, v14);
    fflush(*v13);
LABEL_35:
    sub_2366E54A8(v5);
    return 2;
  }

  if (v12 < 1.0)
  {
    fwrite("ERROR: ", 7uLL, 1uLL, *MEMORY[0x277D85DF8]);
    v14 = *v13;
    v15 = "The number of partitions must be at least 1.\n";
    v16 = 45;
    goto LABEL_34;
  }

  *(v4 + 102) = v12;
  if ((v9 - 1) <= 1)
  {
    goto LABEL_38;
  }

LABEL_40:
  v18 = a1[3];
  if (v18 != -1.79769313e308)
  {
    *v4 = v18;
  }

  v19 = a1[4];
  if (v19 != -1.79769313e308)
  {
    *(v4 + 53) = v19;
  }

  v20 = a1[5];
  if (v20 != -1.79769313e308)
  {
    *(v4 + 52) = v20;
  }

  v21 = a1[7];
  if (v21 != -1.79769313e308)
  {
    *(v4 + 63) = v21;
  }

  v22 = a1[8];
  if (v22 != -1.79769313e308)
  {
    v23 = v22;
LABEL_52:
    *(v4 + 112) = v23;
    goto LABEL_53;
  }

  if (v9 == 4)
  {
    v23 = 1.2;
    goto LABEL_52;
  }

LABEL_53:
  v24 = a1[6];
  if (v24 != -1.79769313e308)
  {
    *(v4 + 61) = v24;
  }

  v25 = a1[9];
  if (v25 != -1.79769313e308)
  {
    *(v4 + 115) = v25;
  }

  v26 = a1[10];
  if (v26 != -1.79769313e308)
  {
    *(v4 + 116) = v26;
  }

  v27 = a1[11];
  if (v27 != -1.79769313e308)
  {
    *(v4 + 117) = v27;
  }

  v28 = a1[12];
  if (v28 != -1.79769313e308)
  {
    *(v4 + 124) = v28;
  }

  v29 = a1[20];
  if (v29 != -1.79769313e308)
  {
    *(v4 + 129) = v29;
  }

  v30 = a1[19];
  if (v30 != -1.79769313e308)
  {
    *(v4 + 128) = v30;
  }

  v31 = a1[14];
  if (v31 != -1.79769313e308)
  {
    *(v4 + 2) = v31;
  }

  v32 = a1[15];
  if (v32 != -1.79769313e308)
  {
    *(v4 + 5) = v32;
  }

  if (v9 != 4 && a1[16] != -1.79769313e308)
  {
    *(v4 + 4) = 1;
    *(v4 + 48) = malloc_type_malloc(4 * *(v4 + 52), 0x100004052888210uLL);
  }

  if (a1[17] != -1.79769313e308)
  {
    *(v5 + 452) = 1;
  }

  if (*a1 != -1.79769313e308)
  {
    *(v5 + 12) = 1;
    sub_2366E5404(v5);
  }

  v33 = a1[18];
  if (v33 != -1.79769313e308)
  {
    *(v5 + 456) = v33;
  }

  if (a1[21] != -1.79769313e308)
  {
    *(v5 + 392) = 1;
  }

  v34 = a1[22];
  if (v34 != -1.79769313e308)
  {
    *(v5 + 396) = v34;
  }

  *a2 = v5;
  return 1;
}

double sub_2366E5404(uint64_t a1)
{
  sub_2366E827C(a1 + 24);
  sub_2366E827C(a1 + 48);
  sub_2366E827C(a1 + 144);
  sub_2366E827C(a1 + 72);
  sub_2366E827C(a1 + 96);
  sub_2366E827C(a1 + 120);
  sub_2366E827C(a1 + 168);
  sub_2366E827C(a1 + 192);
  sub_2366E827C(a1 + 216);
  sub_2366E827C(a1 + 240);
  sub_2366E827C(a1 + 264);
  sub_2366E827C(a1 + 288);
  sub_2366E827C(a1 + 312);
  sub_2366E827C(a1 + 336);

  return sub_2366E827C(a1 + 360);
}

void sub_2366E54A8(void *a1)
{
  v2 = a1[54];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[55];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[48];
  if (v4)
  {
    free(v4);
  }

  free(a1);
}

double sub_2366E5500(uint64_t a1, double *a2)
{
  if (*(a1 + 404) == 4)
  {
    sub_2366E83F4((a1 + 168), a2 + 21);
  }

  sub_2366E83F4((a1 + 120), a2 + 15);
  sub_2366E83F4((a1 + 72), a2 + 9);
  sub_2366E83F4((a1 + 96), a2 + 12);
  sub_2366E83F4((a1 + 192), a2 + 24);
  sub_2366E83F4((a1 + 216), a2 + 27);
  sub_2366E83F4((a1 + 240), a2 + 30);
  sub_2366E83F4((a1 + 264), a2 + 33);
  sub_2366E83F4((a1 + 288), a2 + 36);
  sub_2366E83F4((a1 + 312), a2 + 39);
  sub_2366E83F4((a1 + 336), a2 + 42);

  return sub_2366E83F4((a1 + 360), a2 + 45);
}

void *sub_2366E55CC(void *a1, unsigned int *a2)
{
  v4 = malloc_type_malloc(0x218uLL, 0x1090040516FEABBuLL);
  memcpy(v4, a1, 0x218uLL);
  v5 = 1;
  *(v4 + 101) = 1;
  v6 = malloc_type_malloc(8uLL, 0x100004052888210uLL);
  v7 = 0;
  *(v4 + 54) = v6;
  *v6 = 0;
  v10 = *a2;
  v9 = a2 + 1;
  v8 = v10;
  do
  {
    v11 = v5;
    v12 = v9[v7];
    if (v8 < v12)
    {
      v13 = v6[v7];
      v14 = (a1[54] + 4 * v8);
      v15 = v12 - v8;
      do
      {
        v16 = *v14++;
        v13 = v16 + v13;
        v6[v7] = v13;
        --v15;
      }

      while (v15);
    }

    v5 = 0;
    v8 = v12;
    v7 = 1;
  }

  while ((v11 & 1) != 0);
  *(v4 + 102) = 2;
  *(v4 + 52) = a1[53];
  *(v4 + 4) = 0;
  *(v4 + 48) = 0;
  *(v4 + 55) = 0;
  sub_2366E5404(v4);
  return v4;
}

void sub_2366E56BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_2366DE2A4(*(a1 + 400), a2);
  sub_2366DE30C(*(a1 + 400));
  if (!v3)
  {

    sub_2366E54A8(a1);
  }
}

uint64_t sub_2366E5714(const void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2366DE2A4(a4, a2);
  v9 = sub_2366DE78C(0x218uLL, a4);
  v10 = v9;
  if (!v8)
  {
    memcpy(v9, a1, 0x218uLL);
    *(v10 + 384) = 0;
    *(v10 + 16) = 0;
    *(v10 + 432) = 0;
    *(v10 + 440) = 0;
    *(v10 + 4) = sub_2366DE2E4(a4);
    *(v10 + 408) = a3;
    sub_2366E5404(v10);
    sub_2366E4D70(v10, *(v10 + 432), a2);
    *(v10 + 400) = a4;
  }

  sub_2366DE30C(a4);
  return v10;
}

uint64_t sub_2366E57C4(double *a1, void *a2, uint64_t a3)
{
  v6 = sub_2366DE2A4(a3, a2);
  v7 = sub_2366DE78C(8uLL, a3);
  if (!v6)
  {
    v11 = 0;
    v8 = sub_2366E4F48(a1, &v11);
    v9 = 0;
    if (v8 == 1)
    {
      v9 = v11;
      *(v11 + 400) = a3;
    }

    *v7 = v9;
  }

  sub_2366DE30C(a3);
  *a2 = *v7;
  sub_2366DE830(v7, a3);
  if (*a2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_2366E5878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2366DE30C(*(a1 + 400));
  if (!sub_2366DE2A4(*(a1 + 400), v6))
  {
    sub_2366E4D70(a1, a2, a3);
  }

  v7 = *(a1 + 400);

  return sub_2366DE30C(v7);
}

uint64_t sub_2366E58E0(uint64_t a1, unsigned int *a2)
{
  v4 = sub_2366DE2A4(*(a1 + 400), a2);
  v5 = sub_2366DE584(8uLL, *(a1 + 400));
  if (!v4)
  {
    *v5 = sub_2366E55CC(a1, a2);
  }

  sub_2366DE30C(*(a1 + 400));
  return *v5;
}

uint64_t sub_2366E59B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6, uint64_t a7, uint64_t a8)
{
  v104[256] = *MEMORY[0x277D85DE8];
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v99 = 0;
  v15 = sub_2366E4F48(a6, &v99);
  if (v15 == 1)
  {
    sub_2366E4D70(v99, 0, a1);
    v16 = v99;
    if (*(v99 + 2) >= 1)
    {
      sub_2366C8878("PARAMETERS", 37);
      v17 = *(v99 + 1);
      v18 = sub_2366E5988(*(v99 + 2));
      printf("Number of Threads: %u | Verbosity: %s\n", v17, v18);
      printf("Number of Runs: %zu | Random Seed: %u\n", *(v99 + 52), *v99);
      v19 = *(v99 + 102);
      v20 = sub_2366E5948(*(v99 + 101));
      printf("Number of Partitions: %u | Partition Type: %s\n", v19, v20);
      v21 = sub_2366E5958(*(v99 + 115));
      v22 = sub_2366E5968(*(v99 + 116));
      printf("Coarsening Type: %s | Contraction Type: %s\n", v21, v22);
      v23 = sub_2366E5978(*(v99 + 124));
      printf("Refinement Type: %s | Number of Refinement Passes: %zu\n", v23, *(v99 + 63));
      v24 = *(v99 + 112);
      v25 = sub_2366E5998(*(v99 + 5));
      printf("Balance: %0.2lf | Distribution: %s\n", v24, v25);
      if (*(v99 + 117))
      {
        v26 = "Yes";
      }

      else
      {
        v26 = "No";
      }

      if (*(v99 + 114))
      {
        v27 = "Yes";
      }

      else
      {
        v27 = "No";
      }

      printf("Leaf-Matching: %s | Remove Islands: %s\n", v26, v27);
      sub_2366C8968(37);
    }

    sub_2366E8294(v16 + 24);
    *&v100 = v99;
    DWORD2(v100) = a1;
    *&v101 = a2;
    *(&v101 + 1) = a3;
    *&v102 = a4;
    if (a5 && (*(v99 + 101) - 3) < 2)
    {
      a5 = 0;
    }

    *(&v102 + 1) = a5;
    *&v103 = a7;
    *(&v103 + 1) = a8;
    sub_2366DE06C(*(v99 + 1), sub_2366E617C, &v100);
    v28 = v99;
    if (*(v99 + 3))
    {
      sub_2366C8878("MTMETIS TIME", 36);
      sub_2366E8368(v16 + 24);
      printf("Total Time: %.03fs\n", v29);
      sub_2366E8368(v16 + 72);
      printf("\tPreprocessing: %.05fs\n", v30);
      if (*(v99 + 101) == 4)
      {
        sub_2366E8368(v16 + 144);
        printf("\tOrdering: %.05fs\n", v31);
      }

      sub_2366E8368(v16 + 168);
      printf("\tPartitioning: %.05fs\n", v32);
      sub_2366E8368(v16 + 192);
      printf("\t\tCoarsening: %.05fs\n", v33);
      sub_2366E8368(v16 + 216);
      printf("\t\t\tMatching: %.05fs\n", v34);
      sub_2366E8368(v16 + 240);
      printf("\t\t\tContraction: %.05fs\n", v35);
      sub_2366E8368(v16 + 264);
      printf("\t\tInitial Partitioning: %.05fs\n", v36);
      sub_2366E8368(v16 + 288);
      printf("\t\tUncoarsening: %.05fs\n", v37);
      sub_2366E8368(v16 + 312);
      printf("\t\t\tProjection: %.05fs\n", v38);
      sub_2366E8368(v16 + 336);
      printf("\t\t\tRefinement: %.05fs\n", v39);
      v40 = v99;
      v41 = *(v99 + 101);
      if (v41 == 4 || v41 == 2)
      {
        sub_2366E8368(v16 + 360);
        printf("\t\tRecursion Overhead: %.05fs\n", v42);
        v40 = v99;
        v41 = *(v99 + 101);
      }

      if (v41 == 2 || v41 == 4 || v40[113])
      {
        sub_2366E8368(v16 + 120);
        printf("\tMetis: %.05fs\n", v43);
      }

      sub_2366E8368(v16 + 96);
      printf("\tPostprocessing: %.05fs\n", v44);
      sub_2366C8968(36);
      v28 = v99;
    }

    if (!v28[4])
    {
      goto LABEL_80;
    }

    sub_2366C8878("STATISTICS", 38);
    v45 = *(v99 + 48);
    v46 = *(v99 + 52);
    if (v46 < 2)
    {
      v47 = 0;
    }

    else
    {
      v47 = 0;
      for (i = 1; i != v46; ++i)
      {
        v49 = *(v45 + 4 * i);
        v50 = *(v45 + 4 * v47);
        if (v49 < v50 || i < v47 && v49 == v50)
        {
          v47 = i;
        }
      }
    }

    printf("Best Objective: %d\n", *(v45 + 4 * v47));
    v51 = *(v99 + 48);
    v52 = *(v99 + 52);
    if (v52 < 2)
    {
      v53 = 0;
    }

    else
    {
      v53 = 0;
      for (j = 1; j != v52; ++j)
      {
        v55 = *(v51 + 4 * j);
        v56 = *(v51 + 4 * v53);
        if (v55 > v56 || j < v53 && v55 == v56)
        {
          v53 = j;
        }
      }
    }

    printf("Worst Objective: %d\n", *(v51 + 4 * v53));
    v57 = *(v99 + 48);
    v58 = *(v99 + 52);
    if (v58 == 2)
    {
      v59 = (v57[1] + *v57) / 2;
    }

    else if (v58 == 1)
    {
      v59 = *v57;
    }

    else
    {
      v60 = malloc_type_malloc(4 * v58, 0x100004052888210uLL);
      v61 = v60;
      if (v58)
      {
        v62 = v60 == 0;
      }

      else
      {
        v62 = 1;
      }

      if (!v62)
      {
        v63 = v60;
        v64 = v58;
        do
        {
          v65 = *v57++;
          *v63 = v65;
          v63 += 4;
          --v64;
        }

        while (v64);
      }

      v66 = malloc_type_malloc(4 * v58, 0x100004052888210uLL);
      v67 = 0;
      v68 = v61;
      do
      {
        while (1)
        {
          v69 = v66;
          v66 = v68;
          sub_2366D08EC(v104, 0, 0x100uLL);
          if (v58)
          {
            break;
          }

          sub_2366D0A84(v104, 256);
          ++v67;
          v68 = v69;
          if (v67 == 3)
          {
            sub_2366D08EC(v104, 0, 0x100uLL);
            sub_2366D0A84(v104, 256);
            goto LABEL_66;
          }
        }

        v70 = &v66[v67];
        v71 = v58;
        do
        {
          v72 = *v70;
          v70 += 4;
          ++v104[v72];
          --v71;
        }

        while (v71);
        sub_2366D0A84(v104, 256);
        v73 = v66;
        v74 = v58;
        do
        {
          v75 = *(v73 + v67);
          v76 = *v73++;
          v77 = v104[v75];
          v104[v75] = v77 + 1;
          *&v69[4 * v77] = v76;
          --v74;
        }

        while (v74);
        ++v67;
        v68 = v69;
      }

      while (v67 != 3);
      sub_2366D08EC(v104, 0, 0x100uLL);
      v78 = v69 + 3;
      v79 = v58;
      do
      {
        v80 = *v78;
        v78 += 4;
        ++v104[v80 ^ 0x80];
        --v79;
      }

      while (v79);
      sub_2366D0A84(v104, 256);
      v81 = v69;
      v82 = v58;
      do
      {
        v83 = v81[3] ^ 0x80;
        v84 = *v81;
        v81 += 4;
        v85 = v104[v83];
        v104[v83] = v85 + 1;
        *&v66[4 * v85] = v84;
        --v82;
      }

      while (v82);
LABEL_66:
      if (v66 != v61)
      {
        memcpy(v61, v66, 4 * v58);
        v69 = v66;
      }

      free(v69);
      v86 = &v61[4 * (v58 >> 1)];
      v59 = *v86;
      if ((v58 & 1) == 0)
      {
        v59 = (v86[1] + v59) / 2;
      }

      free(v61);
    }

    printf("Median Objective: %d\n", v59);
    v87 = *(v99 + 52);
    if (v87)
    {
      v88 = 0;
      v89 = *(v99 + 48);
      v90 = 0.0;
      do
      {
        v90 = v90 + log2(v89[v88++]);
      }

      while (v87 != v88);
      v91 = v87;
      v92 = v90 / v87;
      v93 = 0.0;
      do
      {
        v94 = *v89++;
        v93 = v93 + v94;
        --v87;
      }

      while (v87);
      v95 = exp2(v92);
      v96 = v93 / v91;
    }

    else
    {
      v96 = NAN;
      v95 = exp2(NAN);
    }

    printf("Mean Objective - Geo.: %0.2lf - Ari.: %.2lf\n", v95, v96);
    sub_2366C8968(38);
  }

  v28 = v99;
  if (v99)
  {
LABEL_80:
    sub_2366E54A8(v28);
  }

  v97 = *MEMORY[0x277D85DE8];
  return v15;
}

double sub_2366E617C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 48);
  v5 = sub_2366DE2A4(*(*a1 + 400), a2);
  v6 = sub_2366DE2E4(v3[100]);
  v7 = v5;
  if (!v5)
  {
    sub_2366E8294((v3 + 18));
  }

  v8 = sub_2366DE78C(8 * v6, v3[100]);
  v9 = sub_2366C1CDC(v3[5], *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), v3[100]);
  v8[v7] = malloc_type_malloc(4 * *(v9[6] + 4 * v7), 0x100004052888210uLL);
  if (!v7)
  {
    sub_2366E82F4((v3 + 18));
  }

  v10 = v3 + 101;
  v11 = v3[101];
  if (v11 <= 1)
  {
    if (!v11)
    {
LABEL_17:
      sub_2366CA994(v3, v9, v8);
      goto LABEL_18;
    }

    if (v11 != 1)
    {
LABEL_36:
      sub_2366E6504(v3 + 101);
    }

    sub_2366CB064(v3, v9, v8);
  }

  else
  {
    switch(v11)
    {
      case 4:
        sub_2366DDBE4(v3, v9, v8);
        break;
      case 3:
        if ((v6 & 0xFFFFFFFE) != 0)
        {
          sub_2366CB120(v3, v9);
          v8[v7] = malloc_type_realloc(v8[v7], 4 * *(v9[6] + 4 * v7), 0x100004052888210uLL);
        }

        sub_2366CAFB8(v3, v9, v8);
        break;
      case 2:
        goto LABEL_17;
      default:
        goto LABEL_36;
    }
  }

LABEL_18:
  if (*v10 != 4 && v3[2] >= 1)
  {
    sub_2366DE30C(v3[100]);
    if (!v7)
    {
      sub_2366CA2E4(v3, v9, v8);
    }

    sub_2366DE30C(v3[100]);
  }

  if (!v7)
  {
    sub_2366E8294((v3 + 24));
    v13 = *(a1 + 56);
    if (v13)
    {
      v14 = *v10;
      if (v14 >= 5)
      {
        sub_2366D807C(v3 + 101);
      }

      *v13 = *(v9 + qword_23681FA78[v14]);
    }
  }

  if (v4)
  {
    v15 = sub_2366DE2A4(*(v9 + 3), v12);
    v16 = v9[6];
    if (*(v16 + 4 * v15))
    {
      v17 = 0;
      v18 = v8[v15];
      v19 = *(v9[25] + 8 * v15);
      do
      {
        *(v4 + 4 * *(v19 + 4 * v17)) = v18[v17];
        ++v17;
      }

      while (v17 < *(v16 + 4 * v15));
    }
  }

  free(v8[v7]);
  sub_2366BE8D0(v9, v20);
  sub_2366DE830(v8, v3[100]);
  if (!v7)
  {

    return sub_2366E82F4((v3 + 24));
  }

  return result;
}

uint64_t sub_2366E6428(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5, uint64_t a6, uint64_t a7)
{
  if (!a7)
  {
    return 2;
  }

  sub_2366D0F98(a5, 25);
  v14 = v13;
  v13[13] = 0x4010000000000000;
  v13[1] = 0x4008000000000000;
  v15 = sub_2366E59B8(*a1, a2, a3, a4, 0, v13, a7, 0);
  v16 = v15;
  if (a6 && v15 == 1 && *a1)
  {
    v17 = 0;
    do
    {
      *(a6 + 4 * *(a7 + 4 * v17)) = v17;
      ++v17;
    }

    while (v17 < *a1);
  }

  free(v14);
  return v16;
}

void sub_2366E6504(_DWORD *a1)
{
  v2 = MEMORY[0x277D85DF8];
  fwrite("ERROR: ", 7uLL, 1uLL, *MEMORY[0x277D85DF8]);
  fprintf(*v2, "Unknown ptype '%d'", *a1);
  fflush(*v2);
  abort();
}

uint64_t sub_2366E6560(_DWORD *a1, uint64_t a2)
{
  v3 = a1;
  v221[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2366DE2A4(a1[100], a2);
  v8 = v4;
  if (!v4)
  {
    v6 = sub_2366E8294((v3 + 84));
  }

  v9 = v3[101];
  if ((v9 - 1) >= 2)
  {
    if ((v9 - 3) < 2)
    {
      v10 = *(a2 + 160);
      if (!v10)
      {
        v194 = v8;
        v11 = *(a2 + 72);
        v12 = *(a2 + 80);
        v13 = *(a2 + 64);
        v14 = *(a2 + 136);
        v15 = sub_2366DE2A4(v3[100], v5);
        v16 = sub_2366DE2E4(v3[100]);
        v17 = *(a2 + 128);
        v18 = *(*(a2 + 48) + 4 * v15);
        v210 = *(v12 + 8 * v15);
        v213 = *(v13 + 8 * v15);
        v216 = *(v11 + 8 * v15);
        v19 = v3;
        v20 = *(v14 + 8 * v15);
        v205 = v16;
        v21 = sub_2366DE78C(8 * v16, *(v19 + 400));
        sub_2366DE30C(*(v19 + 400));
        v22 = malloc_type_calloc(3uLL, 4uLL, 0x100004052888210uLL);
        v21[v15] = v22;
        v197 = v19;
        sub_2366EC980(v19, a2);
        v23 = *(a2 + 160) + 16 * v15;
        v25 = *v23;
        v24 = *(v23 + 8);
        v26 = **v23;
        if (v26)
        {
          v27 = v25[3];
          v28 = v25[4];
          do
          {
            v29 = *v27++;
            *(v28 + 4 * v29) = -1;
            --v26;
          }

          while (v26);
        }

        v207 = v24;
        *v25 = 0;
        if (v18)
        {
          v30 = v216;
          v31 = v20;
          v32 = v18;
          do
          {
            v34 = *v30++;
            v33 = v34;
            v35 = *v31++;
            v22[v35] += v33;
            --v32;
          }

          while (v32);
        }

        sub_2366DE30C(v197[100]);
        if (!v15)
        {
          for (i = 0; i != 3; ++i)
          {
            v37 = 0;
            if (v205)
            {
              v38 = v21;
              v39 = v205;
              do
              {
                v40 = *v38++;
                v37 += *(v40 + 4 * i);
                --v39;
              }

              while (v39);
            }

            *(v17 + 4 * i) = v37;
          }
        }

        if (v18)
        {
          v41 = 0;
          v42 = 0;
          do
          {
            if (v20[v41] == 2)
            {
              v43 = *(v213 + 4 * v41);
              v44 = v41 + 1;
              v45 = *(v213 + 4 * (v41 + 1));
              if (v43 >= v45)
              {
                v47 = 0;
                v46 = 0;
              }

              else
              {
                v46 = 0;
                v47 = 0;
                v48 = v45 - v43;
                v49 = (v210 + 4 * v43);
                do
                {
                  v51 = *v49++;
                  v50 = v51;
                  v52 = (v51 >> *(a2 + 24)) - 1;
                  v53 = v51 >= v18;
                  if (v51 < v18)
                  {
                    v54 = -1;
                  }

                  else
                  {
                    v54 = *(a2 + 20);
                  }

                  v55 = v54 & v50;
                  if (v53)
                  {
                    v56 = v52;
                  }

                  else
                  {
                    v56 = v15;
                  }

                  v57 = *(*(v14 + 8 * v56) + 4 * v55);
                  v58 = *(*(v11 + 8 * v56) + 4 * v55);
                  if (v57 == 1)
                  {
                    v46 += v58;
                  }

                  else if (!v57)
                  {
                    v47 += v58;
                  }

                  --v48;
                }

                while (v48);
              }

              v59 = (v207 + 8 * v41);
              *v59 = v47;
              v59[1] = v46;
              v42 += v216[v41];
              v60 = v41 - *(v25 + 4);
              v61 = v25[4];
              if (*(v61 + 4 * v60) == -1)
              {
                v62 = *v25;
                *(v61 + 4 * v60) = *v25;
                v63 = v25[3];
                *v25 = v62 + 1;
                *(v63 + 4 * v62) = v41;
              }
            }

            else
            {
              v44 = v41 + 1;
            }

            v41 = v44;
          }

          while (v44 != v18);
        }

        else
        {
          v42 = 0;
        }

        v3 = v197;
        v187 = sub_2366BE66C(v42, v197[100]);
        free(v21[v15]);
        sub_2366DE30C(v197[100]);
        if (!v15)
        {
          *(a2 + 212) = v187;
        }

        sub_2366DE830(v21, v197[100]);
        v10 = *(a2 + 160);
        v8 = v194;
      }

      v186 = sub_2366CD440(v3, a2, v10 + 16 * v8);
      goto LABEL_138;
    }

    if (v9)
    {
      sub_2366D807C(v3 + 101);
    }

    v118 = *(a2 + 144);
    if (!v118)
    {
      v196 = v8;
      v119 = sub_2366DE2A4(v3[100], v5);
      v120 = sub_2366DE2E4(v3[100]);
      count = v3[102];
      v121 = v3;
      v122 = *(a2 + 128);
      v123 = *(a2 + 136);
      v124 = *(*(a2 + 48) + 4 * v119);
      v125 = *(*(a2 + 64) + 8 * v119);
      v126 = *(*(a2 + 80) + 8 * v119);
      v127 = *(*(a2 + 72) + 8 * v119);
      v202 = *(*(a2 + 88) + 8 * v119);
      v209 = *(v123 + 8 * v119);
      v201 = *(v121 + 496);
      sub_2366ECB2C(v121, a2);
      v199 = v121;
      v128 = sub_2366DE78C(8 * v120, *(v121 + 400));
      v129 = malloc_type_calloc(count, 4uLL, 0x100004052888210uLL);
      v192 = v128;
      v128[v119] = v129;
      v130 = *(a2 + 144) + (v119 << 6);
      *(v130 + 24) = 0;
      v131 = *(v130 + 8);
      v206 = *(v130 + 16);
      v132 = *v131;
      if (*v131)
      {
        v133 = v131[3];
        v134 = v131[4];
        do
        {
          v135 = *v133++;
          *(v134 + 4 * v135) = -1;
          --v132;
        }

        while (v132);
      }

      v204 = v130;
      *v131 = 0;
      if (v124)
      {
        v136 = v209;
        v137 = v124;
        do
        {
          v139 = *v127++;
          v138 = v139;
          v140 = *v136++;
          v129[v140] += v138;
          --v137;
        }

        while (v137);
      }

      sub_2366DE30C(v199[100]);
      v141 = v202;
      v142 = count;
      if (!v119 && count)
      {
        for (j = 0; j != count; ++j)
        {
          v144 = 0;
          if (v120)
          {
            v145 = v192;
            v146 = v120;
            do
            {
              v147 = *v145++;
              v144 += *(v147 + 4 * j);
              --v146;
            }

            while (v146);
          }

          *(v122 + 4 * j) = v144;
        }
      }

      if (v124)
      {
        v148 = 0;
        v149 = 0;
        v150 = v204;
        v200 = v131;
        while (1)
        {
          v151 = v148;
          v152 = v206 + 16 * v148;
          *v152 = xmmword_23681F9A0;
          ++v148;
          v153 = v142 >= *(v125 + 4 * v148) - *(v125 + 4 * v151) ? *(v125 + 4 * v148) - *(v125 + 4 * v151) : v142;
          if (v153)
          {
            v220 = v149;
            v218 = v151;
            v154 = *(v150 + 16) + 16 * v151;
            v157 = *(v154 + 12);
            v156 = (v154 + 12);
            v155 = v157;
            if (v157 == -1)
            {
              v155 = *(v150 + 24);
              *v156 = v155;
              *(v150 + 24) = v155 + v153;
            }

            v212 = v156;
            v215 = v153;
            v158 = sub_2366D0B1C(((v153 + v155 - 1) >> *(v150 + 32)) + 1);
            v150 = v204;
            v159 = v158;
            v160 = *(v204 + 28);
            v161 = v160 << v158;
            if (!*(*(v204 + 48) + 8 * v158))
            {
              v193 = v160 << v158;
              v162 = malloc_type_malloc(8 * (v160 << v158), 0x100004000313F17uLL);
              v161 = v193;
              v150 = v204;
              *(*(v204 + 48) + 8 * v159) = v162;
            }

            v163 = v161 - v160;
            v164 = *v212 - (v161 - v160);
            if (*v212 >= v163)
            {
              v165 = *(*(v150 + 48) + 8 * v159) + 8 * v164;
              v141 = v202;
              v142 = count;
              v131 = v200;
              v149 = v220;
              v151 = v218;
              v153 = v215;
            }

            else
            {
              *v212 = v163;
              v153 = v215;
              *(v150 + 24) = v163 + v215;
              v165 = *(*(v150 + 48) + 8 * v159);
              v141 = v202;
              v142 = count;
              v131 = v200;
              v149 = v220;
              v151 = v218;
            }
          }

          else
          {
            v165 = 0;
          }

          v166 = v209[v151];
          v167 = *(v125 + 4 * v151);
          LODWORD(v168) = *(v125 + 4 * v148);
          if (v167 < v168)
          {
            do
            {
              v169 = *(v126 + 4 * v167);
              v170 = v119;
              if (v169 >= v124)
              {
                v170 = (v169 >> *(a2 + 24)) - 1;
                v169 &= *(a2 + 20);
              }

              v171 = v166 != *(*(v123 + 8 * v170) + 4 * v169);
              *(v152 + 4 * v171) += *(v141 + 4 * v167++);
              v168 = *(v125 + 4 * v148);
            }

            while (v167 < v168);
          }

          v172 = *(v152 + 4);
          if (v172 >= 1)
          {
            break;
          }

          if (!*v152)
          {
            goto LABEL_119;
          }

          *(v152 + 12) = -1;
          *(v150 + 24) -= v153;
LABEL_121:
          if (v148 == v124)
          {
            goto LABEL_134;
          }
        }

        v173 = *(v125 + 4 * v151);
        if (v173 < v168)
        {
          do
          {
            v174 = *(v126 + 4 * v173);
            v175 = v119;
            if (v174 >= v124)
            {
              v175 = (v174 >> *(a2 + 24)) - 1;
              v174 &= *(a2 + 20);
            }

            v176 = *(*(v123 + 8 * v175) + 4 * v174);
            if (v166 != v176)
            {
              v177 = *(v152 + 8);
              if (v177)
              {
                v178 = 0;
                v179 = v165;
                while (v179[1] != v176)
                {
                  ++v178;
                  v179 += 2;
                  if (v177 == v178)
                  {
                    goto LABEL_112;
                  }
                }

                *v179 += *(v141 + 4 * v173);
              }

              else
              {
                LODWORD(v178) = 0;
              }

              if (v178 == v177)
              {
LABEL_112:
                v180 = (v165 + 8 * v177);
                v180[1] = v176;
                *v180 = *(v141 + 4 * v173);
                *(v152 + 8) = v177 + 1;
              }
            }

            ++v173;
          }

          while (v173 < *(v125 + 4 * v148));
        }

        v149 += v172;
        if (!v201 && v172 < *v152)
        {
          goto LABEL_121;
        }

LABEL_119:
        v181 = v151 - *(v131 + 4);
        v182 = v131[4];
        if (*(v182 + 4 * v181) == -1)
        {
          v183 = *v131;
          *(v182 + 4 * v181) = *v131;
          v184 = v131[3];
          *v131 = v183 + 1;
          *(v184 + 4 * v183) = v151;
        }

        goto LABEL_121;
      }

      v149 = 0;
LABEL_134:
      v3 = v199;
      v188 = sub_2366BE66C(v149, v199[100]);
      free(v192[v119]);
      sub_2366DE30C(v199[100]);
      if (!v119)
      {
        *(a2 + 208) = v188 / 2;
      }

      sub_2366DE830(v192, v199[100]);
      v118 = *(a2 + 144);
      v8 = v196;
    }

    v186 = sub_2366C30CC(v3, a2, v118 + (v8 << 6));
    goto LABEL_138;
  }

  v64 = *(a2 + 152);
  if (!v64)
  {
    v195 = v8;
    v65 = *(a2 + 64);
    v66 = *(a2 + 72);
    v67 = *(a2 + 80);
    v68 = *(a2 + 88);
    v69 = *(a2 + 136);
    v70 = sub_2366DE2A4(v3[100], v5);
    v71 = sub_2366DE2E4(v3[100]);
    v211 = *(a2 + 128);
    v72 = *(*(a2 + 48) + 4 * v70);
    v73 = *(v65 + 8 * v70);
    v217 = *(v67 + 8 * v70);
    v74 = v3;
    v75 = *(v66 + 8 * v70);
    v214 = *(v68 + 8 * v70);
    v76 = *(v69 + 8 * v70);
    v208 = v71;
    v77 = sub_2366DE78C(8 * v71, *(v74 + 400));
    sub_2366DE30C(*(v74 + 400));
    v78 = malloc_type_calloc(*(v74 + 408), 4uLL, 0x100004052888210uLL);
    v219 = v77;
    v77[v70] = v78;
    v198 = v74;
    sub_2366EC7EC(v74, a2);
    v79 = *(a2 + 152) + 16 * v70;
    v81 = *v79;
    v80 = *(v79 + 8);
    v82 = **v79;
    if (v82)
    {
      v83 = v81[3];
      v84 = v81[4];
      do
      {
        v85 = *v83++;
        *(v84 + 4 * v85) = -1;
        --v82;
      }

      while (v82);
    }

    *v81 = 0;
    if (v72)
    {
      v86 = v76;
      v87 = v72;
      do
      {
        v89 = *v75++;
        v88 = v89;
        v90 = *v86++;
        v78[v90] += v88;
        --v87;
      }

      while (v87);
    }

    v3 = v198;
    sub_2366DE30C(v198[100]);
    if (!v70)
    {
      v91 = 0;
      v92 = 1;
      do
      {
        v93 = v92;
        v94 = 0;
        if (v208)
        {
          v95 = v219;
          v96 = v208;
          do
          {
            v97 = *v95++;
            v94 += *(v97 + 4 * v91);
            --v96;
          }

          while (v96);
        }

        v92 = 0;
        *(v211 + 4 * v91) = v94;
        v91 = 1;
      }

      while ((v93 & 1) != 0);
    }

    if (v72)
    {
      v98 = 0;
      v99 = 0;
      do
      {
        v100 = v76[v98];
        v221[0] = 0;
        v101 = *(v73 + 4 * v98);
        v102 = v98 + 1;
        v103 = *(v73 + 4 * (v98 + 1));
        if (v101 < v103)
        {
          v104 = v103 - v101;
          v105 = (v214 + 4 * v101);
          v106 = (v217 + 4 * v101);
          do
          {
            v108 = *v106++;
            v107 = v108;
            v109 = v70;
            if (v108 >= v72)
            {
              v110 = v107 >> *(a2 + 24);
              v107 &= *(a2 + 20);
              v109 = v110 - 1;
            }

            v111 = *(*(v69 + 8 * v109) + 4 * v107);
            v112 = *v105++;
            *(v221 + v111) += v112;
            --v104;
          }

          while (v104);
        }

        v113 = *(v221 + (v100 ^ 1));
        if (v113)
        {
          v99 += v113;
          v114 = v98 - *(v81 + 4);
          v115 = v81[4];
          if (*(v115 + 4 * v114) == -1)
          {
            v116 = *v81;
            *(v115 + 4 * v114) = *v81;
            v117 = v81[3];
            *v81 = v116 + 1;
            *(v117 + 4 * v116) = v98;
          }
        }

        *(v80 + 8 * v98++) = v221[0];
      }

      while (v102 != v72);
    }

    else
    {
      v99 = 0;
    }

    v185 = sub_2366BE66C(v99, v198[100]);
    free(v219[v70]);
    sub_2366DE30C(v198[100]);
    if (!v70)
    {
      *(a2 + 208) = v185 / 2;
    }

    sub_2366DE830(v219, v198[100]);
    v64 = *(a2 + 152);
    v8 = v195;
  }

  v186 = sub_2366E0234(v3, a2, (v64 + 16 * v8), v6, v7);
LABEL_138:
  v189 = v186;
  if (!v8)
  {
    sub_2366E82F4((v3 + 84));
  }

  v190 = *MEMORY[0x277D85DE8];
  return v189;
}

uint64_t sub_2366E703C(uint64_t a1, int a2, uint64_t a3)
{
  if (a1)
  {
    v3 = (a1 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v4 = vdupq_n_s64(a1 - 1);
    v5 = xmmword_23681F910;
    v6 = xmmword_23681F920;
    v7 = (a3 + 8);
    v8 = vdupq_n_s64(4uLL);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v4, v6));
      if (vuzp1_s16(v9, *v4.i8).u8[0])
      {
        *(v7 - 2) = a2;
      }

      if (vuzp1_s16(v9, *&v4).i8[2])
      {
        *(v7 - 1) = a2 + 1;
      }

      if (vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v5))).i32[1])
      {
        *v7 = a2 + 2;
        v7[1] = a2 + 3;
      }

      v5 = vaddq_s64(v5, v8);
      v6 = vaddq_s64(v6, v8);
      a2 += 4;
      v7 += 4;
      v3 -= 4;
    }

    while (v3);
  }

  return a3;
}

uint64_t sub_2366E70E8(uint64_t result, unsigned int *a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    result = *a2;
    v4 = v3 - 1;
    if (v4)
    {
      v5 = &a2[a3];
      do
      {
        if (*v5 <= result)
        {
          result = result;
        }

        else
        {
          result = *v5;
        }

        v5 += a3;
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

uint64_t sub_2366E7120(uint64_t result, unsigned int *a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    result = *a2;
    v4 = v3 - 1;
    if (v4)
    {
      v5 = &a2[a3];
      do
      {
        if (*v5 >= result)
        {
          result = result;
        }

        else
        {
          result = *v5;
        }

        v5 += a3;
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

unint64_t sub_2366E7158(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    v4 = a1 - 1;
    v5 = a3;
    do
    {
      if (*(a2 + 4 * v5) > *(a2 + 4 * v3))
      {
        v3 = v5;
      }

      v5 += a3;
      --v4;
    }

    while (v4);
  }

  return v3 / a3;
}

unint64_t sub_2366E7198(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    v4 = a1 - 1;
    v5 = a3;
    do
    {
      if (*(a2 + 4 * v5) < *(a2 + 4 * v3))
      {
        v3 = v5;
      }

      v5 += a3;
      --v4;
    }

    while (v4);
  }

  return v3 / a3;
}

uint64_t sub_2366E71E0(uint64_t result, _DWORD *a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    LODWORD(result) = 0;
    do
    {
      result = (*a2 + result);
      a2 += a3;
      --v3;
    }

    while (v3);
  }

  return result;
}

_DWORD *sub_2366E7208(uint64_t a1, int a2, _DWORD *a3, uint64_t a4, _DWORD *a5, uint64_t a6)
{
  if (a1)
  {
    v6 = a5;
    do
    {
      *v6 += *a3 * a2;
      a3 += a4;
      v6 += a6;
      --a1;
    }

    while (a1);
  }

  return a5;
}

double sub_2366E7240(uint64_t a1, float *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0.0;
  }

  result = 0.0;
  do
  {
    *&result = *&result + *a2;
    a2 += a3;
    --a1;
  }

  while (a1);
  return result;
}

float *sub_2366E726C(uint64_t a1, float *a2, uint64_t a3, float a4)
{
  for (; a1; --a1)
  {
    *a2 = *a2 * a4;
    a2 += a3;
  }

  return a2;
}

char *sub_2366E72A4(uint64_t a1, int a2, char a3)
{
  result = sub_23681BC6C(4 * a1, a3);
  if (a1 && result)
  {
    v6 = (a1 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v7 = vdupq_n_s64(a1 - 1);
    v8 = xmmword_23681F910;
    v9 = xmmword_23681F920;
    v10 = result + 8;
    v11 = vdupq_n_s64(4uLL);
    do
    {
      v12 = vmovn_s64(vcgeq_u64(v7, v9));
      if (vuzp1_s16(v12, *v7.i8).u8[0])
      {
        *(v10 - 2) = a2;
      }

      if (vuzp1_s16(v12, *&v7).i8[2])
      {
        *(v10 - 1) = a2;
      }

      if (vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v8))).i32[1])
      {
        *v10 = a2;
        v10[1] = a2;
      }

      v8 = vaddq_s64(v8, v11);
      v9 = vaddq_s64(v9, v11);
      v10 += 4;
      v6 -= 4;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_2366E736C(uint64_t a1, int a2, uint64_t a3)
{
  if (a1)
  {
    v3 = (a1 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v4 = vdupq_n_s64(a1 - 1);
    v5 = xmmword_23681F910;
    v6 = xmmword_23681F920;
    v7 = (a3 + 8);
    v8 = vdupq_n_s64(4uLL);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v4, v6));
      if (vuzp1_s16(v9, *v4.i8).u8[0])
      {
        *(v7 - 2) = a2;
      }

      if (vuzp1_s16(v9, *&v4).i8[2])
      {
        *(v7 - 1) = a2;
      }

      if (vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v5))).i32[1])
      {
        *v7 = a2;
        v7[1] = a2;
      }

      v5 = vaddq_s64(v5, v8);
      v6 = vaddq_s64(v6, v8);
      v7 += 4;
      v3 -= 4;
    }

    while (v3);
  }

  return a3;
}

uint64_t *sub_2366E7418(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v8 = sub_23681BC6C(8 * a1, a4);
  if (!v8 || !a1)
  {
    return v8;
  }

  v9 = 0;
  v26 = vdupq_n_s64(a2 - 1);
  v25 = vdupq_n_s64(4uLL);
  while (1)
  {
    v10 = sub_23681BC6C(4 * a2, a4);
    if (a2 && v10)
    {
      v18 = v10 + 8;
      v19 = (a2 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v20 = xmmword_23681F920;
      v21 = xmmword_23681F910;
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v26, v20));
        if (vuzp1_s16(v22, *v20.i8).u8[0])
        {
          *(v18 - 2) = a3;
        }

        if (vuzp1_s16(v22, *&v20).i8[2])
        {
          *(v18 - 1) = a3;
        }

        if (vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v26, *&v21))).i32[1])
        {
          *v18 = a3;
          v18[1] = a3;
        }

        v21 = vaddq_s64(v21, v25);
        v20 = vaddq_s64(v20, v25);
        v18 += 4;
        v19 -= 4;
      }

      while (v19);
      v8[v9] = v10;
      goto LABEL_16;
    }

    v8[v9] = v10;
    if (!v10)
    {
      break;
    }

LABEL_16:
    if (++v9 == a1)
    {
      return v8;
    }
  }

  for (; v9; --v9)
  {
    sub_23681BE6C(v8++, v11, v12, v13, v14, v15, v16, v17, 0, v24);
  }

  return 0;
}

uint64_t **sub_2366E7588(uint64_t **result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *result;
  if (*result)
  {
    v9 = a2;
    for (i = result; v9; --v9)
    {
      sub_23681BE6C(v8++, a2, a3, a4, a5, a6, a7, a8, 0, v11);
    }

    return sub_23681BE6C(i, a2, a3, a4, a5, a6, a7, a8, 0, v11);
  }

  return result;
}

char *sub_2366E75EC(uint64_t a1, char a2, float a3)
{
  result = sub_23681BC6C(4 * a1, a2);
  if (a1 && result)
  {
    v6 = (a1 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v7 = vdupq_n_s64(a1 - 1);
    v8 = xmmword_23681F910;
    v9 = xmmword_23681F920;
    v10 = (result + 8);
    v11 = vdupq_n_s64(4uLL);
    do
    {
      v12 = vmovn_s64(vcgeq_u64(v7, v9));
      if (vuzp1_s16(v12, *v7.i8).u8[0])
      {
        *(v10 - 2) = a3;
      }

      if (vuzp1_s16(v12, *&v7).i8[2])
      {
        *(v10 - 1) = a3;
      }

      if (vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v8))).i32[1])
      {
        *v10 = a3;
        v10[1] = a3;
      }

      v8 = vaddq_s64(v8, v11);
      v9 = vaddq_s64(v9, v11);
      v10 += 4;
      v6 -= 4;
    }

    while (v6);
  }

  return result;
}

void *sub_2366E76B8(uint64_t a1)
{
  v2 = sub_23681BC6C(0x20uLL, "gk_pqCreate: queue");
  *v2 = 0;
  v2[1] = a1;
  v2[2] = sub_23681BC6C(8 * a1, "gk_PQInit: heap");
  v2[3] = sub_23681BF20(a1, -1, "gk_PQInit: locator");
  return v2;
}

char *sub_2366E7720(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = a2;
  a1[2] = sub_23681BC6C(8 * a2, "gk_PQInit: heap");
  result = sub_23681BF20(a2, -1, "gk_PQInit: locator");
  a1[3] = result;
  return result;
}

uint64_t *sub_2366E7774(uint64_t *result)
{
  v1 = *result;
  if (*result >= 1)
  {
    v2 = result[3];
    v3 = v1 + 1;
    v4 = (result[2] + 8 * v1 - 4);
    do
    {
      v5 = *v4;
      v4 -= 2;
      *(v2 + 8 * v5) = -1;
      --v3;
    }

    while (v3 > 1);
  }

  *result = 0;
  return result;
}

uint64_t *sub_2366E77B0(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    result = sub_23681BE6C(result + 2, a2, a3, a4, a5, a6, a7, a8, result + 3, 0);
    v8[1] = 0;
  }

  return result;
}

uint64_t *sub_2366E77F4(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = result;
  if (result)
  {
    v8 = result;
    sub_23681BE6C(result + 2, a2, a3, a4, a5, a6, a7, a8, result + 3, 0);
    v8[1] = 0;
    return sub_23681BE6C(&v17, v9, v10, v11, v12, v13, v14, v15, 0, v16);
  }

  return result;
}

uint64_t sub_2366E7844(void *a1, int a2, int a3)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = (*a1)++;
  if (v5 >= 1)
  {
    while (1)
    {
      v6 = v5 - 1;
      v7 = (v5 - 1) >> 1;
      v8 = (v4 + 8 * v7);
      if (*v8 >= a3)
      {
        break;
      }

      v9 = *v8;
      *(v4 + 8 * v5) = v9;
      *(v3 + 8 * (v9 >> 32)) = v5;
      v5 = (v5 - 1) >> 1;
      if (v6 <= 1)
      {
        goto LABEL_6;
      }
    }
  }

  v7 = v5;
LABEL_6:
  v10 = (v4 + 8 * v7);
  *v10 = a3;
  v10[1] = a2;
  *(v3 + 8 * a2) = v7;
  return 0;
}

uint64_t sub_2366E78AC(uint64_t *a1, int a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = *(v2 + 8 * a2);
  *(v2 + 8 * a2) = -1;
  v6 = *a1 - 1;
  v5 = *a1 == 1;
  *a1 = v6;
  if (!v5)
  {
    v7 = (v3 + 8 * v6);
    v8 = v7[1];
    if (v8 != a2)
    {
      v9 = *v7;
      if (v9 <= *(v3 + 8 * v4))
      {
        v14 = (2 * v4) | 1;
        if (v14 < v6)
        {
          v15 = 2 * v4;
          while (1)
          {
            v16 = *(v3 + 8 * v14);
            v11 = v15 + 2;
            if (v16 <= v9)
            {
              if (v11 >= v6 || *(v3 + 8 * v11) <= v9)
              {
                break;
              }
            }

            else
            {
              if (v11 < v6 && *(v3 + 8 * v11) > v16)
              {
                v14 = v15 + 2;
              }

              v11 = v14;
            }

            v17 = *(v3 + 8 * v11);
            *(v3 + 8 * v4) = v17;
            *(v2 + 8 * (v17 >> 32)) = v4;
            v15 = 2 * v11;
            v14 = (2 * v11) | 1;
            v4 = v11;
            if (v14 >= v6)
            {
              goto LABEL_20;
            }
          }
        }
      }

      else if (v4 >= 1)
      {
        while (1)
        {
          v10 = v4 - 1;
          v11 = (v4 - 1) >> 1;
          v12 = (v3 + 8 * v11);
          if (v9 <= *v12)
          {
            break;
          }

          v13 = *v12;
          *(v3 + 8 * v4) = v13;
          *(v2 + 8 * (v13 >> 32)) = v4;
          v4 = (v4 - 1) >> 1;
          if (v10 < 2)
          {
            goto LABEL_20;
          }
        }
      }

      v11 = v4;
LABEL_20:
      v18 = (v3 + 8 * v11);
      *v18 = v9;
      v18[1] = v8;
      *(v2 + 8 * v8) = v11;
    }
  }

  return 0;
}

uint64_t *sub_2366E79D4(uint64_t *result, int a2, int a3)
{
  v4 = result[2];
  v3 = result[3];
  v5 = *(v3 + 8 * a2);
  if (*(v4 + 8 * v5) >= a3)
  {
    v10 = *result;
    v11 = (2 * v5) | 1;
    if (v11 < *result)
    {
      v12 = 2 * v5;
      while (1)
      {
        v13 = *(v4 + 8 * v11);
        v7 = v12 + 2;
        if (v13 <= a3)
        {
          if (v7 >= v10 || *(v4 + 8 * v7) <= a3)
          {
            break;
          }
        }

        else
        {
          if (v7 < v10 && *(v4 + 8 * v7) > v13)
          {
            v11 = v12 + 2;
          }

          v7 = v11;
        }

        v14 = *(v4 + 8 * v7);
        *(v4 + 8 * v5) = v14;
        *(v3 + 8 * (v14 >> 32)) = v5;
        v12 = 2 * v7;
        v11 = (2 * v7) | 1;
        v5 = v7;
        if (v11 >= v10)
        {
          goto LABEL_18;
        }
      }
    }
  }

  else if (v5 >= 1)
  {
    while (1)
    {
      v6 = v5 - 1;
      v7 = (v5 - 1) >> 1;
      v8 = (v4 + 8 * v7);
      if (*v8 >= a3)
      {
        break;
      }

      v9 = *v8;
      *(v4 + 8 * v5) = v9;
      *(v3 + 8 * (v9 >> 32)) = v5;
      v5 = (v5 - 1) >> 1;
      if (v6 < 2)
      {
        goto LABEL_18;
      }
    }
  }

  v7 = v5;
LABEL_18:
  v15 = (v4 + 8 * v7);
  *v15 = a3;
  v15[1] = a2;
  *(v3 + 8 * a2) = v7;
  return result;
}

uint64_t sub_2366E7AD0(uint64_t *a1)
{
  if (!*a1)
  {
    return 0xFFFFFFFFLL;
  }

  --*a1;
  v3 = a1[2];
  v2 = a1[3];
  result = *(v3 + 4);
  *(v2 + 8 * result) = -1;
  v5 = *a1;
  if (*a1 < 1)
  {
    return result;
  }

  v6 = *(v3 + 8 * v5);
  if (v5 == 1)
  {
    v7 = 0;
    goto LABEL_18;
  }

  v8 = 0;
  v9 = 0;
  v10 = 1;
  while (1)
  {
    v11 = *(v3 + 8 * v10);
    v7 = v8 + 2;
    if (v11 > v6)
    {
      if (v7 < v5 && *(v3 + 8 * v7) > v11)
      {
        v10 = v8 + 2;
      }

      v7 = v10;
      goto LABEL_15;
    }

    if (v7 >= v5 || *(v3 + 8 * v7) <= v6)
    {
      break;
    }

LABEL_15:
    v12 = *(v3 + 8 * v7);
    *(v3 + 8 * v9) = v12;
    *(v2 + 8 * (v12 >> 32)) = v9;
    v8 = 2 * v7;
    v10 = (2 * v7) | 1;
    v5 = *a1;
    v9 = v7;
    if (v10 >= *a1)
    {
      goto LABEL_18;
    }
  }

  v7 = v9;
LABEL_18:
  *(v3 + 8 * v7) = v6;
  *(v2 + 8 * SHIDWORD(v6)) = v7;
  return result;
}

uint64_t sub_2366E7BC4(void *a1, int a2, float a3)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = (*a1)++;
  if (v5 >= 1)
  {
    while (1)
    {
      v6 = v5 - 1;
      v7 = (v5 - 1) >> 1;
      v8 = (v4 + 8 * v7);
      if (*v8 >= a3)
      {
        break;
      }

      v9 = *v8;
      *(v4 + 8 * v5) = v9;
      *(v3 + 8 * (v9 >> 32)) = v5;
      v5 = (v5 - 1) >> 1;
      if (v6 <= 1)
      {
        goto LABEL_6;
      }
    }
  }

  v7 = v5;
LABEL_6:
  v10 = v4 + 8 * v7;
  *v10 = a3;
  *(v10 + 4) = a2;
  *(v3 + 8 * a2) = v7;
  return 0;
}

uint64_t sub_2366E7C30(uint64_t *a1, int a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = *(v2 + 8 * a2);
  *(v2 + 8 * a2) = -1;
  v6 = *a1 - 1;
  v5 = *a1 == 1;
  *a1 = v6;
  if (!v5)
  {
    v7 = v3 + 8 * v6;
    v8 = *(v7 + 4);
    if (v8 != a2)
    {
      v9 = *v7;
      if (*v7 <= *(v3 + 8 * v4))
      {
        v14 = (2 * v4) | 1;
        if (v14 < v6)
        {
          v15 = 2 * v4;
          while (1)
          {
            v16 = *(v3 + 8 * v14);
            v11 = v15 + 2;
            if (v16 <= v9)
            {
              if (v11 >= v6 || *(v3 + 8 * v11) <= v9)
              {
                break;
              }
            }

            else
            {
              if (v11 < v6 && *(v3 + 8 * v11) > v16)
              {
                v14 = v15 + 2;
              }

              v11 = v14;
            }

            v17 = *(v3 + 8 * v11);
            *(v3 + 8 * v4) = v17;
            *(v2 + 8 * (v17 >> 32)) = v4;
            v15 = 2 * v11;
            v14 = (2 * v11) | 1;
            v4 = v11;
            if (v14 >= v6)
            {
              goto LABEL_20;
            }
          }
        }
      }

      else if (v4 >= 1)
      {
        while (1)
        {
          v10 = v4 - 1;
          v11 = (v4 - 1) >> 1;
          v12 = (v3 + 8 * v11);
          if (v9 <= *v12)
          {
            break;
          }

          v13 = *v12;
          *(v3 + 8 * v4) = v13;
          *(v2 + 8 * (v13 >> 32)) = v4;
          v4 = (v4 - 1) >> 1;
          if (v10 < 2)
          {
            goto LABEL_20;
          }
        }
      }

      v11 = v4;
LABEL_20:
      v18 = v3 + 8 * v11;
      *v18 = v9;
      *(v18 + 4) = v8;
      *(v2 + 8 * v8) = v11;
    }
  }

  return 0;
}

uint64_t *sub_2366E7D60(uint64_t *result, int a2, float a3)
{
  v4 = result[2];
  v3 = result[3];
  v5 = *(v3 + 8 * a2);
  if (*(v4 + 8 * v5) >= a3)
  {
    v10 = *result;
    v11 = (2 * v5) | 1;
    if (v11 < *result)
    {
      v12 = 2 * v5;
      while (1)
      {
        v13 = *(v4 + 8 * v11);
        v7 = v12 + 2;
        if (v13 <= a3)
        {
          if (v7 >= v10 || *(v4 + 8 * v7) <= a3)
          {
            break;
          }
        }

        else
        {
          if (v7 < v10 && *(v4 + 8 * v7) > v13)
          {
            v11 = v12 + 2;
          }

          v7 = v11;
        }

        v14 = *(v4 + 8 * v7);
        *(v4 + 8 * v5) = v14;
        *(v3 + 8 * (v14 >> 32)) = v5;
        v12 = 2 * v7;
        v11 = (2 * v7) | 1;
        v5 = v7;
        if (v11 >= v10)
        {
          goto LABEL_18;
        }
      }
    }
  }

  else if (v5 >= 1)
  {
    while (1)
    {
      v6 = v5 - 1;
      v7 = (v5 - 1) >> 1;
      v8 = (v4 + 8 * v7);
      if (*v8 >= a3)
      {
        break;
      }

      v9 = *v8;
      *(v4 + 8 * v5) = v9;
      *(v3 + 8 * (v9 >> 32)) = v5;
      v5 = (v5 - 1) >> 1;
      if (v6 < 2)
      {
        goto LABEL_18;
      }
    }
  }

  v7 = v5;
LABEL_18:
  v15 = v4 + 8 * v7;
  *v15 = a3;
  *(v15 + 4) = a2;
  *(v3 + 8 * a2) = v7;
  return result;
}

uint64_t sub_2366E7E64(uint64_t *a1)
{
  if (!*a1)
  {
    return 0xFFFFFFFFLL;
  }

  --*a1;
  v3 = a1[2];
  v2 = a1[3];
  result = *(v3 + 4);
  *(v2 + 8 * result) = -1;
  v5 = *a1;
  if (*a1 < 1)
  {
    return result;
  }

  v6 = v3 + 8 * v5;
  v7 = *v6;
  v8 = *(v6 + 4);
  if (v5 == 1)
  {
    v9 = 0;
    goto LABEL_18;
  }

  v10 = 0;
  v11 = 0;
  v12 = 1;
  while (1)
  {
    v13 = *(v3 + 8 * v12);
    v9 = v10 + 2;
    if (v13 > v7)
    {
      if (v9 < v5 && *(v3 + 8 * v9) > v13)
      {
        v12 = v10 + 2;
      }

      v9 = v12;
      goto LABEL_15;
    }

    if (v9 >= v5 || *(v3 + 8 * v9) <= v7)
    {
      break;
    }

LABEL_15:
    v14 = *(v3 + 8 * v9);
    *(v3 + 8 * v11) = v14;
    *(v2 + 8 * (v14 >> 32)) = v11;
    v10 = 2 * v9;
    v12 = (2 * v9) | 1;
    v5 = *a1;
    v11 = v9;
    if (v12 >= *a1)
    {
      goto LABEL_18;
    }
  }

  v9 = v11;
LABEL_18:
  v15 = v3 + 8 * v9;
  *v15 = v7;
  *(v15 + 4) = v8;
  *(v2 + 8 * v8) = v9;
  return result;
}

uint64_t sub_2366E7F5C(void *a1)
{
  if (*a1)
  {
    return *(a1[2] + 4);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

float sub_2366E7F78(uint64_t a1)
{
  if (*a1)
  {
    return **(a1 + 16);
  }

  else
  {
    return 3.4028e38;
  }
}

uint64_t sub_2366E7FA0(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = a3;
  v6 = result;
  if (a4 == 1 && result >= 1)
  {
    v7 = 0;
    v8 = vdupq_n_s64(result - 1);
    v9 = xmmword_23681F910;
    v10 = xmmword_23681F920;
    v11 = (a2 + 8);
    v12 = vdupq_n_s64(4uLL);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v8, v10));
      if (vuzp1_s16(v13, *v8.i8).u8[0])
      {
        *(v11 - 2) = v7;
      }

      if (vuzp1_s16(v13, *&v8).i8[2])
      {
        *(v11 - 1) = v7 + 1;
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v9))).i32[1])
      {
        *v11 = v7 + 2;
        v11[1] = v7 + 3;
      }

      v7 += 4;
      v9 = vaddq_s64(v9, v12);
      v10 = vaddq_s64(v10, v12);
      v11 += 4;
    }

    while (((result + 3) & 0xFFFFFFFC) != v7);
  }

  if (result >= 10)
  {
    if (a3 >= 1)
    {
      v17 = result - 3;
      do
      {
        v18 = j__rand() % v17;
        result = j__rand();
        v19 = (a2 + 4 * v18);
        v20 = *v19;
        v21 = (a2 + 4 * (result % v17));
        *v19 = v21[2];
        v21[2] = v20;
        v22 = v19[1];
        v19[1] = v21[3];
        v21[3] = v22;
        v23 = v19[2];
        v19[2] = *v21;
        *v21 = v23;
        v24 = v19[3];
        v19[3] = v21[1];
        v21[1] = v24;
        --v4;
      }

      while (v4);
    }
  }

  else if (result >= 1)
  {
    v14 = result;
    do
    {
      v15 = j__rand() % v6;
      result = j__rand();
      v16 = *(a2 + 4 * v15);
      *(a2 + 4 * v15) = *(a2 + 4 * (result % v6));
      *(a2 + 4 * (result % v6)) = v16;
      --v14;
    }

    while (v14);
  }

  return result;
}

void sub_2366E8144(int a1, int a2, int *a3, char *a4, uint64_t a5)
{
  if ((a2 & 0x80000000) == 0)
  {
    bzero(a4, 4 * (a2 + 1));
  }

  if (a1 >= 1)
  {
    v10 = a1;
    v11 = a3;
    do
    {
      v12 = *v11++;
      ++*&a4[4 * v12];
      --v10;
    }

    while (v10);
  }

  if (a2 > 1)
  {
    v13 = a4 + 4;
    v14 = *a4;
    v15 = a2 - 1;
    do
    {
      v14 += *v13;
      *v13++ = v14;
      --v15;
    }

    while (v15);
  }

  v16 = &a4[4 * a2];
  if (a2 >= 1)
  {
    v17 = a2 + 1;
    v18 = &a4[4 * a2];
    v19 = v18;
    do
    {
      v20 = *(v19 - 1);
      v19 -= 4;
      *v18 = v20;
      --v17;
      v18 = v19;
    }

    while (v17 > 1);
  }

  *a4 = 0;
  if (a1 >= 1)
  {
    v21 = 0;
    do
    {
      v22 = a3[v21];
      v23 = *&a4[4 * v22];
      *&a4[4 * v22] = v23 + 1;
      *(a5 + 4 * v23) = v21++;
    }

    while (a1 != v21);
  }

  if (a2 >= 1)
  {
    v24 = a2 + 1;
    v25 = &a4[4 * a2];
    do
    {
      v26 = *(v25 - 1);
      v25 -= 4;
      *v16 = v26;
      --v24;
      v16 = v25;
    }

    while (v24 > 1);
  }

  *a4 = 0;
}

double sub_2366E827C(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_23681FAB0;
  *(a1 + 16) = 2;
  return result;
}

double sub_2366E8294(uint64_t a1)
{
  *(a1 + 16) = 1;
  v3.tv_sec = 0;
  *&v3.tv_usec = 0;
  gettimeofday(&v3, 0);
  result = v3.tv_sec + v3.tv_usec * 0.000001;
  *(a1 + 8) = result;
  return result;
}

double sub_2366E82F4(uint64_t a1)
{
  v3.tv_sec = 0;
  *&v3.tv_usec = 0;
  gettimeofday(&v3, 0);
  result = *a1 + v3.tv_sec + v3.tv_usec * 0.000001 - *(a1 + 8);
  *a1 = result;
  *(a1 + 8) = 0xBFF0000000000000;
  *(a1 + 16) = 2;
  return result;
}

_DWORD *sub_2366E8368(uint64_t a1)
{
  v4 = *(a1 + 16);
  result = (a1 + 16);
  v3 = v4;
  if (v4 == 2)
  {
    v7 = *a1;
  }

  else
  {
    if (v3 != 1)
    {
      sub_2366E8408(result);
    }

    v5 = *a1;
    v8.tv_sec = 0;
    *&v8.tv_usec = 0;
    result = gettimeofday(&v8, 0);
    v6 = v5 + v8.tv_sec + v8.tv_usec * 0.000001 - *(a1 + 8);
  }

  return result;
}

double sub_2366E83F4(double *a1, double *a2)
{
  result = *a2 + *a1;
  *a1 = result;
  return result;
}

void sub_2366E8408(_DWORD *a1)
{
  v2 = MEMORY[0x277D85DF8];
  fwrite("ERROR: ", 7uLL, 1uLL, *MEMORY[0x277D85DF8]);
  fprintf(*v2, "Unknown timer state %d\n", *a1);
  fflush(*v2);
  abort();
}

uint64_t sub_2366E8464(uint64_t a1, uint64_t a2, float *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8) == 1)
  {
    return sub_2366E8478(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    return sub_2366E8CEC(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_2366E8478(uint64_t a1, uint64_t a2, float *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v135 = a4;
  v8 = a2;
  v162[2] = *MEMORY[0x277D85DE8];
  sub_2366E2AA8(a1, a2, a3, a4, a5, a6, a7, a8, v132);
  v10 = *v8;
  v157 = v10;
  v11 = *(v8 + 2);
  v145 = *(v8 + 3);
  v160 = *(v8 + 6);
  v161 = *(v8 + 5);
  v12 = *(v8 + 20);
  v13 = *(v8 + 21);
  v14 = *(v8 + 15);
  v15 = *(v8 + 16);
  v16 = *(v8 + 18);
  v17 = *(v8 + 19);
  v159 = sub_2366E2AB8(a1, *v8, v18, v19, v20, v21, v22, v23);
  v144 = sub_2366E2AB8(a1, v10, v24, v25, v26, v27, v28, v29);
  v147 = a1;
  v138 = sub_2366E2AB8(a1, v10, v30, v31, v32, v33, v34, v35);
  v36 = fmax(v10 * 0.01, 15.0);
  if (v36 < 100.0)
  {
    v37 = v36;
  }

  else
  {
    v37 = 100.0;
  }

  v146 = v10;
  if (v10 < 1)
  {
    v154 = 0;
  }

  else
  {
    v38 = v15[1] + *v15;
    v39 = v38 / 20;
    v40 = 2 * v38 / v10;
    if (v39 < v40)
    {
      v40 = v39;
    }

    v154 = v40;
  }

  v41 = **(v8 + 7);
  v42 = *a3;
  v137 = sub_2366E76B8(v157);
  v162[0] = v137;
  v136 = sub_2366E76B8(v157);
  v162[1] = v136;
  if ((*(a1 + 8) & 8) != 0)
  {
    sub_2366E9830(a1, v8, a3, -2, 0.0);
  }

  v156 = v15;
  v43 = *v15;
  sub_2366E736C(v157, -1, v159);
  if (v135 < 1)
  {
    goto LABEL_102;
  }

  v51 = (v42 * v41);
  v52 = v51 - v43;
  if (v51 - v43 < 0)
  {
    v52 = v43 - v51;
  }

  v141 = v52 + v154;
  v53 = 0;
  v149 = (v42 * v41);
  v142 = v41 - v51;
  v134 = v8;
  v143 = v11;
  do
  {
    v139 = v53;
    sub_2366E7774(v137);
    sub_2366E7774(v136);
    v140 = v8[28];
    v54 = v156;
    v55 = v149 - *v156;
    if (v55 < 0)
    {
      v55 = *v156 - v149;
    }

    v148 = v55;
    v56 = v8[34];
    sub_2366C8A48(v56, v138, v56, 1, (v147 + 68));
    if (v56 >= 1)
    {
      v57 = v56;
      v58 = v138;
      do
      {
        v59 = *v58++;
        sub_2366E7BC4(v162[*(v14 + 4 * *(v17 + 4 * v59))], *(v17 + 4 * v59), (*(v13 + 4 * *(v17 + 4 * v59)) - *(v12 + 4 * *(v17 + 4 * v59))));
        --v57;
      }

      while (v57);
    }

    if (v146 < 1)
    {
      v46 = 0xFFFFFFFFLL;
      v73 = v140;
      LODWORD(v92) = -1;
      v47 = v144;
      v44 = v145;
      v50 = v160;
      v45 = v161;
      v48 = 0xFFFFFFFFLL;
      v49 = 1;
      goto LABEL_69;
    }

    v158 = 0;
    v60 = 0xFFFFFFFFLL;
    v61 = v140;
    v150 = v140;
    while (1)
    {
      v151 = v60;
      v62 = v149 - *v54;
      v63 = v142 - v54[1];
      v64 = v62 < v63;
      v65 = v54;
      v66 = v62 >= v63;
      v67 = sub_2366E7E64(v162[v62 >= v63]);
      if (v67 == -1)
      {
        v44 = v145;
        v79 = v158;
        v78 = v159;
        v49 = 1;
        v46 = v151;
        v73 = v61;
        v54 = v65;
        goto LABEL_63;
      }

      v68 = v65;
      v69 = v67;
      v44 = v145;
      v46 = v151;
      v70 = *(v12 + 4 * v67) - *(v13 + 4 * v67) + v150;
      v71 = v68[v64] + *(v145 + 4 * v67);
      v68[v64] = v71;
      v72 = v68[v66] - *(v145 + 4 * v67);
      v68[v66] = v72;
      v73 = v61;
      v74 = v70;
      v75 = v70 < v73;
      v77 = v160;
      v76 = v161;
      v79 = v158;
      v78 = v159;
      if (v75)
      {
        v80 = v149 - *v156 >= 0 ? v149 - *v156 : *v156 - v149;
        v155 = v74;
        v152 = v158;
        v153 = v80;
        if (v80 <= v141)
        {
          goto LABEL_36;
        }
      }

      if (v74 == v73)
      {
        v81 = v149 - *v156 >= 0 ? v149 - *v156 : *v156 - v149;
        v153 = v81;
        v155 = v74;
        v152 = v158;
        if (v81 < v148)
        {
          goto LABEL_36;
        }
      }

      if (v158 - v151 > v37)
      {
        break;
      }

      v155 = v73;
      v152 = v151;
      v153 = v148;
LABEL_36:
      *(v14 + 4 * v67) = v64;
      v159[v67] = v158;
      v144[v158] = v67;
      if ((*(v147 + 8) & 0x20) != 0)
      {
        printf("Moved %6d from %d. [%3d %3d] %5d [%4d %4d]\n", v67, v66, *(v13 + 4 * v67) - *(v12 + 4 * v67), *(v145 + 4 * v67), v74, *v156, v156[1]);
        v78 = v159;
        v77 = v160;
        v76 = v161;
      }

      v150 = v74;
      v82 = *(v12 + 4 * v69);
      *(v12 + 4 * v69) = *(v13 + 4 * v69);
      *(v13 + 4 * v69) = v82;
      v83 = (v143 + 4 * v69);
      if (!v82 && *v83 < v83[1])
      {
        LODWORD(v56) = v56 - 1;
        v84 = *(v17 + 4 * v56);
        *(v17 + 4 * *(v16 + 4 * v69)) = v84;
        *(v16 + 4 * v84) = *(v16 + 4 * v69);
        *(v16 + 4 * v69) = -1;
      }

      v85 = *v83;
      if (v85 < v83[1])
      {
        do
        {
          v86 = *(v76 + 4 * v85);
          if (*(v14 + 4 * v86) == v64)
          {
            v87 = *(v77 + 4 * v85);
          }

          else
          {
            v87 = -*(v77 + 4 * v85);
          }

          *(v12 + 4 * v86) += v87;
          v88 = *(v13 + 4 * v86);
          v89 = v88 - v87;
          *(v13 + 4 * v86) = v88 - v87;
          v90 = *(v16 + 4 * v86);
          if (v90 == -1)
          {
            if (v89 >= 1)
            {
              *(v17 + 4 * v56) = v86;
              *(v16 + 4 * v86) = v56;
              if (v78[v86] == -1)
              {
                sub_2366E7BC4(v162[*(v14 + 4 * v86)], v86, (*(v13 + 4 * v86) - *(v12 + 4 * v86)));
                v78 = v159;
                v77 = v160;
                v76 = v161;
              }

              LODWORD(v56) = v56 + 1;
            }

            goto LABEL_56;
          }

          if (v88 == v87)
          {
            v56 = v56 - 1;
            v91 = *(v17 + 4 * v56);
            *(v17 + 4 * v90) = v91;
            *(v16 + 4 * v91) = *(v16 + 4 * v86);
            *(v16 + 4 * v86) = -1;
            if (v78[v86] == -1)
            {
              sub_2366E7C30(v162[*(v14 + 4 * v86)], v86);
LABEL_55:
              v78 = v159;
              v77 = v160;
              v76 = v161;
            }
          }

          else if (v78[v86] == -1)
          {
            sub_2366E7D60(v162[*(v14 + 4 * v86)], v86, (v89 - *(v12 + 4 * v86)));
            goto LABEL_55;
          }

LABEL_56:
          ++v85;
        }

        while (v85 < v83[1]);
      }

      v60 = v152;
      v148 = v153;
      v73 = v155;
      v61 = v155;
      ++v158;
      v54 = v156;
      if (v158 == v146)
      {
        v79 = v146;
        v46 = v152;
        v44 = v145;
        v78 = v159;
        goto LABEL_62;
      }
    }

    v156[v66] = *(v145 + 4 * v67) + v72;
    v54 = v156;
    v156[v64] = v71 - *(v145 + 4 * v67);
LABEL_62:
    v49 = 1;
LABEL_63:
    v47 = v144;
    v48 = 0xFFFFFFFFLL;
    if (v79)
    {
      v93 = v79;
      v94 = v144;
      do
      {
        v95 = *v94++;
        v78[v95] = -1;
        --v93;
      }

      while (v93);
      LODWORD(v92) = v79 - 1;
    }

    else
    {
      LODWORD(v92) = -1;
    }

    v50 = v160;
    v45 = v161;
LABEL_69:
    if (v92 > v46)
    {
      v92 = v92;
      LODWORD(v96) = v56;
      v8 = v134;
      v97 = v139;
      while (1)
      {
        v98 = *(v47 + 4 * v92);
        v99 = *(v14 + 4 * v98);
        v100 = __OFADD__(v99++, 1);
        v75 = (v99 < 0) ^ v100;
        v101 = v99 & 1;
        if (v75)
        {
          v101 = -v101;
        }

        *(v14 + 4 * v98) = v101;
        v102 = *(v12 + 4 * v98);
        v103 = v98;
        *(v12 + 4 * v98) = *(v13 + 4 * v98);
        *(v13 + 4 * v98) = v102;
        v104 = (v143 + 4 * v98);
        if (v102)
        {
          if (v102 >= 1 && *(v16 + 4 * v98) == -1)
          {
            *(v17 + 4 * v96) = v98;
            *(v16 + 4 * v98) = v96;
            LODWORD(v96) = v96 + 1;
          }
        }

        else
        {
          v105 = *(v16 + 4 * v98);
          if (v105 != -1 && *v104 < v104[1])
          {
            v96 = v96 - 1;
            v106 = *(v17 + 4 * v96);
            *(v17 + 4 * v105) = v106;
            *(v16 + 4 * v106) = *(v16 + 4 * v103);
            *(v16 + 4 * v103) = -1;
          }
        }

        v54[v101] += *(v44 + 4 * v103);
        v54[(v101 & 1) == 0] -= *(v44 + 4 * v103);
        v107 = *v104;
        if (v107 < v104[1])
        {
          break;
        }

LABEL_94:
        if (--v92 <= v46)
        {
          goto LABEL_97;
        }
      }

      while (2)
      {
        v108 = *(v45 + 4 * v107);
        if (v101 == *(v14 + 4 * v108))
        {
          v109 = *(v50 + 4 * v107);
        }

        else
        {
          v109 = -*(v50 + 4 * v107);
        }

        *(v12 + 4 * v108) += v109;
        v110 = *(v13 + 4 * v108);
        v111 = v110 - v109;
        *(v13 + 4 * v108) = v110 - v109;
        v112 = *(v16 + 4 * v108);
        if (v112 != -1 && v110 == v109)
        {
          LODWORD(v96) = v96 - 1;
          v114 = *(v17 + 4 * v96);
          *(v17 + 4 * v112) = v114;
          *(v16 + 4 * v114) = *(v16 + 4 * v108);
          *(v16 + 4 * v108) = -1;
          v111 = *(v13 + 4 * v108);
LABEL_91:
          if (v111 >= 1)
          {
            *(v17 + 4 * v96) = v108;
            *(v16 + 4 * v108) = v96;
            LODWORD(v96) = v96 + 1;
          }
        }

        else if (v112 == -1)
        {
          goto LABEL_91;
        }

        if (++v107 >= v104[1])
        {
          goto LABEL_94;
        }

        continue;
      }
    }

    LODWORD(v96) = v56;
    v8 = v134;
    v97 = v139;
LABEL_97:
    v8[28] = v73;
    v8[34] = v96;
    if ((*(v147 + 8) & 8) != 0)
    {
      v115 = v46;
      sub_2366E9830(v147, v8, a3, v46, 0.0);
      v46 = v115;
    }

    if (v46 < 1)
    {
      break;
    }

    if (v73 == v140)
    {
      break;
    }

    v53 = v97 + 1;
  }

  while (v53 != v135);
LABEL_102:
  sub_2366E77F4(v137, v44, v45, v46, v47, v48, v49, v50);
  sub_2366E77F4(v136, v116, v117, v118, v119, v120, v121, v122);
  v130 = *MEMORY[0x277D85DE8];

  return sub_2366E2AB0(v147, v123, v124, v125, v126, v127, v128, v129);
}