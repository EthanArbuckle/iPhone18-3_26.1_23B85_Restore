uint64_t alloc_sarray(uint64_t *a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v8 = a1[1];
  v9 = 0x3B9AC9E8 / a3;
  if (a3 > 0x3B9AC9E8)
  {
    v10 = *a1;
    *(v10 + 40) = 72;
    (*v10)(a1);
  }

  if (v9 >= a4)
  {
    v9 = a4;
  }

  *(v8 + 160) = v9;
  v11 = alloc_small(a1, a2, 8 * a4);
  if (a4)
  {
    v12 = 0;
    do
    {
      if (v9 >= a4 - v12)
      {
        v9 = a4 - v12;
      }

      v13 = alloc_large(a1, a2, a3 * v9);
      if (v9)
      {
        v14 = v9;
        do
        {
          v15 = (v12 + 1);
          *(v11 + 8 * v12) = v13;
          v13 = (v13 + a3);
          LODWORD(v12) = v12 + 1;
          --v14;
        }

        while (v14);
      }

      else
      {
        v15 = v12;
      }

      v12 = v15;
    }

    while (v15 < a4);
  }

  return v11;
}

uint64_t alloc_barray(uint64_t *a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v8 = a1[1];
  v9 = a3 << 7;
  v10 = 0x3B9AC9E8 / v9;
  if (a3 >= 0x773594)
  {
    v11 = *a1;
    *(v11 + 40) = 72;
    (*v11)(a1);
  }

  if (v10 >= a4)
  {
    LODWORD(v10) = a4;
  }

  *(v8 + 160) = v10;
  v12 = alloc_small(a1, a2, 8 * a4);
  if (a4)
  {
    v13 = 0;
    v14 = a3 << 7;
    do
    {
      if (v10 >= a4 - v13)
      {
        v10 = a4 - v13;
      }

      else
      {
        v10 = v10;
      }

      v15 = alloc_large(a1, a2, v9 * v10);
      if (v10)
      {
        v16 = v10;
        do
        {
          v17 = (v13 + 1);
          *(v12 + 8 * v13) = v15;
          v15 = (v15 + v14);
          LODWORD(v13) = v13 + 1;
          --v16;
        }

        while (v16);
      }

      else
      {
        v17 = v13;
      }

      v13 = v17;
    }

    while (v17 < a4);
  }

  return v12;
}

uint64_t request_virt_sarray(void *a1, signed int a2, int a3, int a4, int a5, int a6)
{
  v12 = a1[1];
  if (a2 != 1)
  {
    v13 = *a1;
    *(v13 + 10) = 15;
    *(v13 + 12) = a2;
    (**a1)(a1);
  }

  result = alloc_small(a1, a2, 0x98uLL);
  *result = 0;
  *(result + 8) = a5;
  *(result + 12) = a4;
  *(result + 16) = a6;
  *(result + 36) = a3;
  *(result + 44) = 0;
  *(result + 48) = *(v12 + 136);
  *(v12 + 136) = result;
  return result;
}

uint64_t request_virt_barray(void *a1, signed int a2, int a3, int a4, int a5, int a6)
{
  v12 = a1[1];
  if (a2 != 1)
  {
    v13 = *a1;
    *(v13 + 10) = 15;
    *(v13 + 12) = a2;
    (**a1)(a1);
  }

  result = alloc_small(a1, a2, 0x98uLL);
  *result = 0;
  *(result + 8) = a5;
  *(result + 12) = a4;
  *(result + 16) = a6;
  *(result + 36) = a3;
  *(result + 44) = 0;
  *(result + 48) = *(v12 + 144);
  *(v12 + 144) = result;
  return result;
}

uint64_t realize_virt_arrays(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  v3 = *(v2 + 136);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if (!*v3)
      {
        v6 = *(v3 + 12);
        v5 += *(v3 + 16) * v6;
        v4 += *(v3 + 8) * v6;
      }

      v3 = *(v3 + 48);
    }

    while (v3);
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  for (i = *(v2 + 144); i; i = *(i + 48))
  {
    if (!*i)
    {
      v8 = *(i + 12) << 7;
      v5 += v8 * *(i + 16);
      v4 += v8 * *(i + 8);
    }
  }

  if (v5 >= 1)
  {
    result = _cg_jpeg_mem_available(result, v5, v4, *(v2 + 152));
    if (result >= v4)
    {
      v9 = 1000000000;
    }

    else if (result / v5 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = result / v5;
    }

    for (j = *(v2 + 136); j; j = *(j + 48))
    {
      if (!*j)
      {
        v11 = *(j + 8);
        v12 = *(j + 16);
        if ((v11 - 1) / v12 >= v9)
        {
          *(j + 20) = v12 * v9;
          _cg_jpeg_open_backing_store(v1, (j + 56));
          *(j + 44) = 1;
          LODWORD(v11) = *(j + 20);
        }

        else
        {
          *(j + 20) = v11;
        }

        result = alloc_sarray(v1, 1u, *(j + 12), v11);
        *j = result;
        *(j + 24) = *(v2 + 160);
        *(j + 32) = 0;
        *(j + 40) = 0;
      }
    }

    for (k = *(v2 + 144); k; k = *(k + 48))
    {
      if (!*k)
      {
        v14 = *(k + 8);
        v15 = *(k + 16);
        if ((v14 - 1) / v15 >= v9)
        {
          *(k + 20) = v15 * v9;
          _cg_jpeg_open_backing_store(v1, (k + 56));
          *(k + 44) = 1;
          LODWORD(v14) = *(k + 20);
        }

        else
        {
          *(k + 20) = v14;
        }

        result = alloc_barray(v1, 1u, *(k + 12), v14);
        *k = result;
        *(k + 24) = *(v2 + 160);
        *(k + 32) = 0;
        *(k + 40) = 0;
      }
    }
  }

  return result;
}

uint64_t access_virt_sarray(uint64_t *a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  v10 = a4 + a3;
  if (v10 > *(a2 + 8) || *(a2 + 16) < a4 || !*a2)
  {
    v11 = *a1;
    *(v11 + 40) = 23;
    (*v11)(a1);
  }

  v12 = *(a2 + 28);
  if (v12 > a3 || v10 > *(a2 + 20) + v12)
  {
    if (!*(a2 + 44))
    {
      v13 = *a1;
      *(v13 + 40) = 71;
      (*v13)(a1);
    }

    if (*(a2 + 40))
    {
      do_sarray_io(a1, a2, 1);
      *(a2 + 40) = 0;
    }

    v14 = a3;
    if (*(a2 + 28) >= a3)
    {
      v14 = (v10 - *(a2 + 20)) & ~((v10 - *(a2 + 20)) >> 63);
    }

    *(a2 + 28) = v14;
    do_sarray_io(a1, a2, 0);
  }

  v15 = *(a2 + 32);
  if (v15 < v10)
  {
    if (v15 >= a3)
    {
      if (a5)
      {
LABEL_19:
        *(a2 + 32) = v10;
        if (!*(a2 + 36))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      }

      if (*(a2 + 36))
      {
LABEL_22:
        v17 = *(a2 + 28);
        if (v15 - v17 < v10 - v17)
        {
          v18 = *(a2 + 12);
          v19 = 8 * (v15 - v17);
          v20 = a4 + a3 - v15;
          do
          {
            bzero(*(*a2 + v19), v18);
            v19 += 8;
            --v20;
          }

          while (v20);
        }

        goto LABEL_25;
      }
    }

    else
    {
      if (a5)
      {
        v16 = *a1;
        *(v16 + 40) = 23;
        (*v16)(a1);
        v15 = a3;
        goto LABEL_19;
      }

      v15 = a3;
      if (*(a2 + 36))
      {
        goto LABEL_22;
      }
    }

    v22 = *a1;
    *(v22 + 40) = 23;
    (*v22)(a1);
    return *a2 + 8 * (a3 - *(a2 + 28));
  }

LABEL_25:
  if (a5)
  {
LABEL_26:
    *(a2 + 40) = 1;
  }

  return *a2 + 8 * (a3 - *(a2 + 28));
}

uint64_t access_virt_barray(uint64_t *a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  v10 = a4 + a3;
  if (v10 > *(a2 + 8) || *(a2 + 16) < a4 || !*a2)
  {
    v11 = *a1;
    *(v11 + 40) = 23;
    (*v11)(a1);
  }

  v12 = *(a2 + 28);
  if (v12 > a3 || v10 > *(a2 + 20) + v12)
  {
    if (!*(a2 + 44))
    {
      v13 = *a1;
      *(v13 + 40) = 71;
      (*v13)(a1);
    }

    if (*(a2 + 40))
    {
      do_barray_io(a1, a2, 1);
      *(a2 + 40) = 0;
    }

    v14 = a3;
    if (*(a2 + 28) >= a3)
    {
      v14 = (v10 - *(a2 + 20)) & ~((v10 - *(a2 + 20)) >> 63);
    }

    *(a2 + 28) = v14;
    do_barray_io(a1, a2, 0);
  }

  v15 = *(a2 + 32);
  if (v15 < v10)
  {
    if (v15 >= a3)
    {
      if (a5)
      {
LABEL_19:
        *(a2 + 32) = v10;
        if (!*(a2 + 36))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      }

      if (*(a2 + 36))
      {
LABEL_22:
        v17 = *(a2 + 28);
        if (v15 - v17 < v10 - v17)
        {
          v18 = *(a2 + 12) << 7;
          v19 = 8 * (v15 - v17);
          v20 = a4 + a3 - v15;
          do
          {
            bzero(*(*a2 + v19), v18);
            v19 += 8;
            --v20;
          }

          while (v20);
        }

        goto LABEL_25;
      }
    }

    else
    {
      if (a5)
      {
        v16 = *a1;
        *(v16 + 40) = 23;
        (*v16)(a1);
        v15 = a3;
        goto LABEL_19;
      }

      v15 = a3;
      if (*(a2 + 36))
      {
        goto LABEL_22;
      }
    }

    v22 = *a1;
    *(v22 + 40) = 23;
    (*v22)(a1);
    return *a2 + 8 * (a3 - *(a2 + 28));
  }

LABEL_25:
  if (a5)
  {
LABEL_26:
    *(a2 + 40) = 1;
  }

  return *a2 + 8 * (a3 - *(a2 + 28));
}

void free_pool(void *a1, signed int a2)
{
  v4 = a1[1];
  if (a2 < 2)
  {
    if (a2 == 1)
    {
      for (i = v4[17]; i; i = *(i + 48))
      {
        if (*(i + 44))
        {
          *(i + 44) = 0;
          (*(i + 72))(a1, i + 56);
        }
      }

      v4[17] = 0;
      for (j = v4[18]; j; j = *(j + 48))
      {
        if (*(j + 44))
        {
          *(j + 44) = 0;
          (*(j + 72))(a1, j + 56);
        }
      }

      v4[18] = 0;
    }
  }

  else
  {
    v5 = *a1;
    *(v5 + 10) = 15;
    *(v5 + 12) = a2;
    (**a1)(a1);
  }

  v8 = &v4[a2];
  v9 = a2;
  v10 = v8[15];
  v8[15] = 0;
  if (v10)
  {
    do
    {
      v11 = *v10;
      v12 = v10[1] + v10[2] + 24;
      _cg_jpeg_free_small(a1, v10);
      v4[19] -= v12;
      v10 = v11;
    }

    while (v11);
  }

  v13 = &v4[v9];
  v14 = v13[13];
  v13[13] = 0;
  if (v14)
  {
    do
    {
      v15 = *v14;
      v16 = v14[1] + v14[2] + 24;
      _cg_jpeg_free_small(a1, v14);
      v4[19] -= v16;
      v14 = v15;
    }

    while (v15);
  }
}

__n128 self_destruct(uint64_t a1)
{
  for (i = 1; i != -1; --i)
  {
    free_pool(a1, i);
  }

  _cg_jpeg_free_small(a1, *(a1 + 8));
  *(a1 + 8) = 0;

  return _cg_jpeg_mem_term(a1, v3, v4);
}

uint64_t do_sarray_io(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(a2 + 20);
  if (v3)
  {
    v5 = result;
    v6 = 0;
    v7 = *(a2 + 12);
    v8 = *(a2 + 24);
    v9 = *(a2 + 28) * v7;
    if (a3)
    {
      v10 = 64;
    }

    else
    {
      v10 = 56;
    }

    do
    {
      v11 = v3 - v6;
      if (v11 >= v8)
      {
        v11 = v8;
      }

      v12 = v6 + *(a2 + 28);
      if (v11 >= (*(a2 + 32) - v12))
      {
        v11 = *(a2 + 32) - v12;
      }

      v13 = *(a2 + 8) - v12;
      if (v11 >= v13)
      {
        v11 = v13;
      }

      if (v11 < 1)
      {
        break;
      }

      v14 = v11 * v7;
      result = (*(a2 + v10))(v5, a2 + 56, *(*a2 + 8 * v6), v9, v11 * v7);
      v9 += v14;
      v3 = *(a2 + 20);
      v8 = *(a2 + 24);
      v6 += v8;
    }

    while (v6 < v3);
  }

  return result;
}

uint64_t do_barray_io(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(a2 + 20);
  if (v3)
  {
    v5 = result;
    v6 = 0;
    v7 = *(a2 + 12) << 7;
    v8 = *(a2 + 24);
    v9 = v7 * *(a2 + 28);
    if (a3)
    {
      v10 = 64;
    }

    else
    {
      v10 = 56;
    }

    do
    {
      v11 = v3 - v6;
      if (v11 >= v8)
      {
        v11 = v8;
      }

      v12 = v6 + *(a2 + 28);
      if (v11 >= (*(a2 + 32) - v12))
      {
        v11 = *(a2 + 32) - v12;
      }

      v13 = *(a2 + 8) - v12;
      if (v11 >= v13)
      {
        v11 = v13;
      }

      if (v11 < 1)
      {
        break;
      }

      v14 = v11 * v7;
      result = (*(a2 + v10))(v5, a2 + 56, *(*a2 + 8 * v6), v9, v11 * v7);
      v9 += v14;
      v3 = *(a2 + 20);
      v8 = *(a2 + 24);
      v6 += v8;
    }

    while (v6 < v3);
  }

  return result;
}

uint64_t (**_cg_jinit_forward_dct(uint64_t a1))(uint64_t result)
{
  result = (**(a1 + 8))();
  *(a1 + 552) = result;
  *result = start_pass_fdctmgr;
  if (*(a1 + 92) >= 1)
  {
    v3 = 0;
    v4 = (*(a1 + 104) + 88);
    do
    {
      result = (**(a1 + 8))(a1, 1, 256);
      *v4 = result;
      v4 += 12;
      ++v3;
    }

    while (v3 < *(a1 + 92));
  }

  return result;
}

uint64_t start_pass_fdctmgr(uint64_t result)
{
  if (*(result + 92) >= 1)
  {
    v1 = result;
    v2 = 0;
    v3 = 0;
    v4 = *(result + 552);
    v5 = *(result + 104);
    v38 = v4 + 168;
    v40 = v4 + 88;
    v42 = result + 112;
    v41 = v4 + 8;
    __asm { FMOV            V0.2D, #1.0 }

    v39 = _Q0;
    while (1)
    {
      v11 = *(v5 + 36);
      v12 = *(v5 + 40) + (v11 << 8);
      if (v12 <= 1805)
      {
        if (v12 > 1027)
        {
          if (v12 > 1538)
          {
            if (v12 > 1547)
            {
              if (v12 == 1548)
              {
                v3 = 0;
                v13 = jpeg_fdct_6x12;
                goto LABEL_85;
              }

              if (v12 == 1799)
              {
                v3 = 0;
                v13 = jpeg_fdct_7x7;
                goto LABEL_85;
              }
            }

            else
            {
              if (v12 == 1539)
              {
                v3 = 0;
                v13 = jpeg_fdct_6x3;
                goto LABEL_85;
              }

              if (v12 == 1542)
              {
                v3 = 0;
                v13 = jpeg_fdct_6x6;
                goto LABEL_85;
              }
            }
          }

          else if (v12 > 1284)
          {
            if (v12 == 1285)
            {
              v3 = 0;
              v13 = jpeg_fdct_5x5;
              goto LABEL_85;
            }

            if (v12 == 1290)
            {
              v3 = 0;
              v13 = jpeg_fdct_5x10;
              goto LABEL_85;
            }
          }

          else
          {
            if (v12 == 1028)
            {
              v3 = 0;
              v13 = jpeg_fdct_4x4;
              goto LABEL_85;
            }

            if (v12 == 1032)
            {
              v3 = 0;
              v13 = jpeg_fdct_4x8;
              goto LABEL_85;
            }
          }
        }

        else if (v12 > 515)
        {
          if (v12 > 773)
          {
            if (v12 == 774)
            {
              v3 = 0;
              v13 = jpeg_fdct_3x6;
              goto LABEL_85;
            }

            if (v12 == 1026)
            {
              v3 = 0;
              v13 = jpeg_fdct_4x2;
              goto LABEL_85;
            }
          }

          else
          {
            if (v12 == 516)
            {
              v3 = 0;
              v13 = jpeg_fdct_2x4;
              goto LABEL_85;
            }

            if (v12 == 771)
            {
              v3 = 0;
              v13 = jpeg_fdct_3x3;
              goto LABEL_85;
            }
          }
        }

        else if (v12 > 512)
        {
          if (v12 == 513)
          {
            v3 = 0;
            v13 = jpeg_fdct_2x1;
            goto LABEL_85;
          }

          if (v12 == 514)
          {
            v3 = 0;
            v13 = jpeg_fdct_2x2;
            goto LABEL_85;
          }
        }

        else
        {
          if (v12 == 257)
          {
            v3 = 0;
            v13 = jpeg_fdct_1x1;
            goto LABEL_85;
          }

          if (v12 == 258)
          {
            v3 = 0;
            v13 = jpeg_fdct_1x2;
LABEL_85:
            *(v40 + 8 * v2) = v13;
            goto LABEL_86;
          }
        }

        goto LABEL_108;
      }

      if (v12 > 3077)
      {
        if (v12 > 3597)
        {
          if (v12 > 4103)
          {
            if (v12 == 4104)
            {
              v3 = 0;
              v13 = jpeg_fdct_16x8;
              goto LABEL_85;
            }

            if (v12 == 4112)
            {
              v3 = 0;
              v13 = jpeg_fdct_16x16;
              goto LABEL_85;
            }
          }

          else
          {
            if (v12 == 3598)
            {
              v3 = 0;
              v13 = jpeg_fdct_14x14;
              goto LABEL_85;
            }

            if (v12 == 3855)
            {
              v3 = 0;
              v13 = jpeg_fdct_15x15;
              goto LABEL_85;
            }
          }
        }

        else if (v12 > 3340)
        {
          if (v12 == 3341)
          {
            v3 = 0;
            v13 = jpeg_fdct_13x13;
            goto LABEL_85;
          }

          if (v12 == 3591)
          {
            v3 = 0;
            v13 = jpeg_fdct_14x7;
            goto LABEL_85;
          }
        }

        else
        {
          if (v12 == 3078)
          {
            v3 = 0;
            v13 = jpeg_fdct_12x6;
            goto LABEL_85;
          }

          if (v12 == 3084)
          {
            v3 = 0;
            v13 = jpeg_fdct_12x12;
            goto LABEL_85;
          }
        }

        goto LABEL_108;
      }

      if (v12 > 2312)
      {
        break;
      }

      if (v12 <= 2055)
      {
        if (v12 == 1806)
        {
          v3 = 0;
          v13 = jpeg_fdct_7x14;
          goto LABEL_85;
        }

        if (v12 == 2052)
        {
          v3 = 0;
          v13 = jpeg_fdct_8x4;
          goto LABEL_85;
        }

        goto LABEL_108;
      }

      if (v12 != 2056)
      {
        if (v12 == 2064)
        {
          v3 = 0;
          v13 = jpeg_fdct_8x16;
          goto LABEL_85;
        }

LABEL_108:
        v36 = *v1;
        *(v36 + 40) = 7;
        *(v36 + 48) = v11;
        *(*v1 + 52) = *(v5 + 40);
        v37 = *v1;
        goto LABEL_112;
      }

      v14 = v1[78];
      switch(v14)
      {
        case 2:
          *(v38 + 8 * v2) = _cg_jpeg_fdct_float;
          v3 = 2;
          goto LABEL_86;
        case 1:
          *(v40 + 8 * v2) = _cg_jpeg_fdct_ifast;
          v3 = 1;
          goto LABEL_86;
        case 0:
          v3 = 0;
          v13 = _cg_jpeg_fdct_islow;
          goto LABEL_85;
      }

      v37 = *v1;
      *(*v1 + 40) = 49;
LABEL_112:
      result = (*v37)(v1);
LABEL_86:
      v15 = *(v5 + 16);
      if (v15 > 3 || (v16 = *(v42 + 8 * v15)) == 0)
      {
        v17 = *v1;
        *(v17 + 10) = 54;
        *(v17 + 12) = v15;
        result = (**v1)(v1);
        v16 = *(v42 + 8 * v15);
      }

      v18 = *(v5 + 88);
      if (v3)
      {
        v19 = 0;
        if (v3 == 2)
        {
          v20 = 0;
          if (*(v5 + 52))
          {
            v21 = 16.0;
          }

          else
          {
            v21 = 8.0;
          }

          do
          {
            v22 = v20;
            v23 = *(&start_pass_fdctmgr_aanscalefactor + v19);
            v24 = (v18 + 4 * v20);
            v25 = *(v16 + 2 * v22);
            v26 = vmovl_high_u16(v25);
            v27.i64[0] = v26.u32[2];
            v27.i64[1] = v26.u32[3];
            v28 = vcvtq_f64_u64(v27);
            v27.i64[0] = v26.u32[0];
            v27.i64[1] = v26.u32[1];
            v29 = v27;
            v30 = vmovl_u16(*v25.i8);
            v27.i64[0] = v30.u32[2];
            v27.i64[1] = v30.u32[3];
            v31 = vcvtq_f64_u64(v27);
            v27.i64[0] = v30.u32[0];
            v27.i64[1] = v30.u32[1];
            *v24 = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v39, vmulq_n_f64(vmulq_f64(vmulq_n_f64(vcvtq_f64_u64(v27), v23), start_pass_fdctmgr_aanscalefactor), v21))), vdivq_f64(v39, vmulq_n_f64(vmulq_f64(vmulq_n_f64(v31, v23), unk_1862074D0), v21)));
            v24[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v39, vmulq_n_f64(vmulq_f64(vmulq_n_f64(vcvtq_f64_u64(v29), v23), xmmword_1862074E0), v21))), vdivq_f64(v39, vmulq_n_f64(vmulq_f64(vmulq_n_f64(v28, v23), unk_1862074F0), v21)));
            v19 += 8;
            v32 = forward_DCT_float;
            v20 = v22 + 8;
          }

          while (v19 != 64);
        }

        else
        {
          do
          {
            if (*(v5 + 52))
            {
              v33 = 10;
            }

            else
            {
              v33 = 11;
            }

            *(v18 + 4 * v19) = ((1 << (v33 - 1)) + start_pass_fdctmgr_aanscales[v19] * *(v16 + 2 * v19)) >> v33;
            ++v19;
            v32 = forward_DCT;
          }

          while (v19 != 64);
        }
      }

      else
      {
        for (i = 0; i != 64; ++i)
        {
          if (*(v5 + 52))
          {
            v35 = 4;
          }

          else
          {
            v35 = 3;
          }

          *(v18 + 4 * i) = *(v16 + 2 * i) << v35;
          v32 = forward_DCT;
        }
      }

      *(v41 + 8 * v2++) = v32;
      v5 += 96;
      if (v2 >= v1[23])
      {
        return result;
      }
    }

    if (v12 > 2569)
    {
      if (v12 == 2570)
      {
        v3 = 0;
        v13 = jpeg_fdct_10x10;
        goto LABEL_85;
      }

      if (v12 == 2827)
      {
        v3 = 0;
        v13 = jpeg_fdct_11x11;
        goto LABEL_85;
      }
    }

    else
    {
      if (v12 == 2313)
      {
        v3 = 0;
        v13 = jpeg_fdct_9x9;
        goto LABEL_85;
      }

      if (v12 == 2565)
      {
        v3 = 0;
        v13 = jpeg_fdct_10x5;
        goto LABEL_85;
      }
    }

    goto LABEL_108;
  }

  return result;
}

uint64_t forward_DCT(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, unsigned int a7)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v10 = 0;
    v11 = *(*(result + 552) + 8 * *(a2 + 4) + 88);
    v12 = *(a2 + 88);
    v13 = a3 + 8 * a5;
    v14 = a7;
    memset(v23, 0, sizeof(v23));
    do
    {
      result = v11(v23, v13, a6);
      for (i = 0; i != 64; ++i)
      {
        v16 = *(v12 + 4 * i);
        v17 = *(v23 + i);
        v18 = v16 >> 1;
        if (v17 < 0)
        {
          v21 = v18 - v17;
          if (v21 >= v16)
          {
            v22 = v21 / v16;
          }

          else
          {
            v22 = 0;
          }

          v20 = -v22;
        }

        else
        {
          v19 = v17 + v18;
          if (v19 >= v16)
          {
            v20 = v19 / v16;
          }

          else
          {
            LOWORD(v20) = 0;
          }
        }

        *(a4 + 2 * i) = v20;
      }

      ++v10;
      a6 = (*(a2 + 36) + a6);
      a4 += 128;
    }

    while (v10 != v14);
  }

  return result;
}

uint64_t forward_DCT_float(uint64_t result, uint64_t a2, uint64_t a3, int16x8_t *a4, unsigned int a5, uint64_t a6, unsigned int a7)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v10 = 0;
    v11 = *(*(result + 552) + 8 * *(a2 + 4) + 168);
    v12 = a3 + 8 * a5;
    memset(v19, 0, sizeof(v19));
    v13 = a7;
    v14 = *(a2 + 88);
    v18 = vdupq_n_s32(0x46800100u);
    do
    {
      result = v11(v19, v12, a6);
      v15.i64[0] = 0xC000C000C000C000;
      v15.i64[1] = 0xC000C000C000C000;
      v16 = 0;
      v17 = a4;
      do
      {
        *v17++ = vaddq_s16(vuzp1q_s16(vcvtq_s32_f32(vaddq_f32(vmulq_f32(v19[v16], *(v14 + v16 * 16)), v18)), vcvtq_s32_f32(vaddq_f32(vmulq_f32(v19[v16 + 1], *(v14 + v16 * 16 + 16)), v18))), v15);
        v16 += 2;
      }

      while (v16 != 16);
      ++v10;
      a6 = (*(a2 + 36) + a6);
      a4 += 8;
    }

    while (v10 != v13);
  }

  return result;
}

uint64_t _cg_jinit_1pass_quantizer(uint64_t a1)
{
  v2 = (**(a1 + 8))();
  *(a1 + 656) = v2;
  *v2 = start_pass_1_quant;
  v2[2] = finish_pass_1_quant;
  v2[3] = new_color_map_1_quant;
  v2[14] = 0;
  v2[10] = 0;
  if (*(a1 + 144) >= 5)
  {
    v3 = *a1;
    *(v3 + 10) = 57;
    *(v3 + 12) = 4;
    (**a1)(a1);
  }

  v4 = *(a1 + 120);
  if (v4 >= 257)
  {
    v5 = *a1;
    *(v5 + 10) = 59;
    *(v5 + 12) = 256;
    (**a1)(a1);
    v4 = *(a1 + 120);
  }

  v6 = *(a1 + 656);
  v7 = *(a1 + 144);
  v8 = v4;
  v9 = 1;
  do
  {
    v10 = v9++;
    v11 = v9;
    if (v7 >= 2)
    {
      v12 = v7 - 1;
      v11 = v9;
      do
      {
        v11 *= v9;
        --v12;
      }

      while (v12);
    }
  }

  while (v11 <= v4);
  if (v10 <= 1)
  {
    v13 = *a1;
    *(v13 + 10) = 58;
    *(v13 + 12) = v11;
    (**a1)(a1);
  }

  v14 = v6 + 60;
  if (v7 < 1)
  {
    v28 = 1;
  }

  else
  {
    v15 = vdupq_n_s64(v7 - 1);
    v16 = (v7 + 3) & 0xFFFFFFFC;
    v17 = vdupq_n_s32(v10);
    v18 = xmmword_186205EB0;
    v19 = xmmword_186205EC0;
    v20 = (v6 + 72);
    v21.i64[0] = 0x100000001;
    v21.i64[1] = 0x100000001;
    v22 = vdupq_n_s64(4uLL);
    do
    {
      v23 = v21;
      v24 = vcgeq_u64(v15, v19);
      v25 = vmovn_s64(v24);
      if (vuzp1_s16(v25, *v15.i8).u8[0])
      {
        *(v20 - 3) = v10;
      }

      if (vuzp1_s16(v25, *&v15).i8[2])
      {
        *(v20 - 2) = v10;
      }

      v26 = vcgeq_u64(v15, v18);
      if (vuzp1_s16(*&v15, vmovn_s64(*&v26)).i32[1])
      {
        *(v20 - 1) = v10;
        *v20 = v10;
      }

      v21 = vmulq_s32(v21, v17);
      v18 = vaddq_s64(v18, v22);
      v19 = vaddq_s64(v19, v22);
      v20 += 4;
      v16 -= 4;
    }

    while (v16);
    v27 = vbslq_s8(vuzp1q_s32(v24, v26), v21, v23);
    *v27.i8 = vmul_s32(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
    v28 = (v27.i32[0] * v27.i32[1]);
    v29 = 0;
    v30 = 1;
    while (1)
    {
      v31 = v29;
      if (*(a1 + 64) == 2)
      {
        v31 = select_ncolors_RGB_order[v29];
      }

      v32 = *(v14 + 4 * v31);
      v33 = v32 + 1;
      v34 = v28 / v32 * (v32 + 1);
      if (v34 <= v8)
      {
        v30 = 0;
        *(v14 + 4 * v31) = v33;
        ++v29;
        v28 = v34;
        if (v29 != v7)
        {
          continue;
        }
      }

      v29 = 0;
      v35 = v30;
      v30 = 1;
      if (v35)
      {
        break;
      }
    }
  }

  v36 = *a1;
  if (*(a1 + 144) == 3)
  {
    v36[12] = v28;
    v36[13] = *(v6 + 60);
    v36[14] = *(v6 + 64);
    v36[15] = *(v6 + 68);
    v37 = 96;
    v38 = v36;
  }

  else
  {
    v36[12] = v28;
    v38 = *a1;
    v37 = 97;
  }

  v36[10] = v37;
  (v38[1])(a1, 1);
  v39 = (*(*(a1 + 8) + 16))(a1, 1, v28, *(a1 + 144));
  v40 = *(a1 + 144);
  if (v40 >= 1)
  {
    v41 = 0;
    v42 = v28;
    do
    {
      v43 = *(v14 + 4 * v41);
      v44 = v42 / v43;
      if (v43 >= 1)
      {
        v45 = 0;
        v46 = 0;
        do
        {
          if (v45 * v44 < v28)
          {
            v47 = v46;
            do
            {
              if (v44 >= 1)
              {
                v48 = v47;
                v49 = (v42 / v43);
                do
                {
                  *(*(v39 + 8 * v41) + v48++) = (((v43 - 1) >> 1) - v45 + (v45 << 8)) / (v43 - 1);
                  --v49;
                }

                while (v49);
              }

              v47 += v42;
            }

            while (v47 < v28);
          }

          ++v45;
          v46 += v44;
        }

        while (v45 != v43);
        v40 = *(a1 + 144);
      }

      ++v41;
      v42 /= v43;
    }

    while (v41 < v40);
  }

  *(v6 + 32) = v39;
  *(v6 + 40) = v28;
  result = create_colorindex(a1);
  if (*(a1 + 112) == 2)
  {

    return alloc_fs_workspace(a1);
  }

  return result;
}

void start_pass_1_quant(uint64_t a1)
{
  v2 = *(a1 + 656);
  *(a1 + 160) = *(v2 + 32);
  *(a1 + 156) = *(v2 + 40);
  v3 = *(a1 + 112);
  if (v3 == 2)
  {
    v19 = *(v2 + 112);
    v18 = v2 + 112;
    *(v18 - 104) = quantize_fs_dither;
    *(v18 + 32) = 0;
    if (!v19)
    {
      alloc_fs_workspace(a1);
    }

    if (*(a1 + 144) >= 1)
    {
      v20 = 0;
      v21 = 2 * (*(a1 + 136) + 2);
      do
      {
        bzero(*(v18 + 8 * v20++), v21);
      }

      while (v20 < *(a1 + 144));
    }
  }

  else if (v3 == 1)
  {
    v5 = quantize_ord_dither;
    if (*(a1 + 144) == 3)
    {
      v5 = quantize3_ord_dither;
    }

    *(v2 + 8) = v5;
    *(v2 + 76) = 0;
    if (!*(v2 + 56))
    {
      create_colorindex(a1);
    }

    if (!*(v2 + 80))
    {
      v6 = *(a1 + 144);
      if (v6 >= 1)
      {
        v7 = 0;
        v8 = *(a1 + 656);
        v9 = v8 + 60;
        v10 = v8 + 80;
        do
        {
          v11 = *(v9 + 4 * v7);
          if (!v7)
          {
            goto LABEL_19;
          }

          v12 = 0;
          while (v11 != *(v9 + 4 * v12))
          {
            if (v7 == ++v12)
            {
              goto LABEL_19;
            }
          }

          v13 = *(v9 + 8 * v12 + 20);
          if (!v13)
          {
LABEL_19:
            v13 = (**(a1 + 8))(a1, 1, 1024);
            v14 = 0;
            v15 = &base_dither_matrix;
            v16 = v13;
            do
            {
              for (i = 0; i != 16; ++i)
              {
                *(v16 + 4 * i) = 255 * (255 - 2 * v15[i]) / ((v11 << 9) - 512);
              }

              ++v14;
              v16 += 64;
              v15 += 16;
            }

            while (v14 != 16);
            v6 = *(a1 + 144);
          }

          *(v10 + 8 * v7++) = v13;
        }

        while (v7 < v6);
      }
    }
  }

  else if (v3)
  {
    v22 = *a1;
    *(v22 + 40) = 49;
    v23 = *v22;

    v23();
  }

  else
  {
    if (*(a1 + 144) == 3)
    {
      v4 = color_quantize3;
    }

    else
    {
      v4 = color_quantize;
    }

    *(v2 + 8) = v4;
  }
}

uint64_t new_color_map_1_quant(uint64_t *a1)
{
  v1 = *a1;
  *(v1 + 40) = 47;
  return (*v1)(a1);
}

uint64_t create_colorindex(uint64_t a1)
{
  v2 = *(a1 + 656);
  v3 = *(a1 + 112);
  if (v3 == 1)
  {
    v4 = 766;
  }

  else
  {
    v4 = 256;
  }

  *(v2 + 56) = v3 == 1;
  result = (*(*(a1 + 8) + 16))(a1, 1, v4, *(a1 + 144));
  *(v2 + 48) = result;
  if (*(a1 + 144) >= 1)
  {
    v6 = 0;
    v7 = *(v2 + 40);
    do
    {
      v8 = *(v2 + 60 + 4 * v6);
      v9 = *(v2 + 48);
      if (v3 == 1)
      {
        *(v9 + 8 * v6) += 255;
        v9 = *(v2 + 48);
      }

      v10 = 0;
      v11 = 0;
      v12 = *(v9 + 8 * v6);
      v13 = 2 * v8 - 2;
      result = (v8 + 254) / v13;
      v14 = v8 + 764;
      v7 /= v8;
      do
      {
        if (v10 > result)
        {
          v15 = v14 + 510 * v11;
          do
          {
            result = v15 / v13;
            ++v11;
            v15 += 510;
          }

          while (v10 > result);
        }

        v12[v10++] = v11 * v7;
      }

      while (v10 != 256);
      if (v3 == 1)
      {
        v16 = 0;
        v17 = v12 - 1;
        v18 = *v12;
        do
        {
          *v17-- = v18;
          v12[v16++ + 256] = v12[255];
        }

        while (v16 != 255);
      }

      ++v6;
    }

    while (v6 < *(a1 + 144));
  }

  return result;
}

uint64_t alloc_fs_workspace(uint64_t result)
{
  if (*(result + 144) >= 1)
  {
    v1 = result;
    v2 = 0;
    v3 = 2 * (*(result + 136) + 2);
    v4 = *(result + 656) + 112;
    do
    {
      result = (*(*(v1 + 8) + 8))(v1, 1, v3);
      *(v4 + 8 * v2++) = result;
    }

    while (v2 < *(v1 + 144));
  }

  return result;
}

uint64_t color_quantize3(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = *(*(result + 656) + 48);
    v6 = *v5;
    v7 = v5[1];
    v8 = v5[2];
    v9 = *(result + 136);
    do
    {
      if (v9)
      {
        v10 = *(a3 + 8 * v4);
        v11 = *(a2 + 8 * v4);
        v12 = v9;
        do
        {
          result = *(v7 + v11[1]);
          *v10++ = result + *(v6 + *v11) + *(v8 + v11[2]);
          v11 += 3;
          --v12;
        }

        while (v12);
      }

      ++v4;
    }

    while (v4 != a4);
  }

  return result;
}

uint64_t color_quantize(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = *(*(result + 656) + 48);
    v6 = *(result + 136);
    v7 = *(result + 144);
    v8 = a4;
    do
    {
      if (v6)
      {
        v9 = *(a3 + 8 * v4);
        v10 = *(a2 + 8 * v4);
        v11 = v6;
        do
        {
          if (v7 < 1)
          {
            v12 = 0;
          }

          else
          {
            v12 = 0;
            result = v7;
            v13 = v5;
            v14 = v10;
            do
            {
              v16 = *v13++;
              v15 = v16;
              LODWORD(v16) = *v14++;
              v12 += *(v15 + v16);
              --result;
            }

            while (result);
            v10 += (v7 - 1) + 1;
          }

          *v9++ = v12;
          --v11;
        }

        while (v11);
      }

      ++v4;
    }

    while (v4 != v8);
  }

  return result;
}

uint64_t quantize3_ord_dither(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = *(result + 656);
    v6 = *(v5 + 48);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = *(result + 136);
    v11 = a4;
    v12 = *(v5 + 76);
    do
    {
      if (v10)
      {
        v13 = 0;
        v14 = *(v5 + 80) + (v12 << 6);
        result = *(v5 + 88) + (v12 << 6);
        v15 = *(v5 + 96) + (v12 << 6);
        v16 = *(a3 + 8 * v4);
        v17 = *(a2 + 8 * v4);
        v18 = v10;
        do
        {
          *v16++ = *(v8 + *(result + 4 * v13) + v17[1]) + *(v7 + *(v14 + 4 * v13) + *v17) + *(v9 + *(v15 + 4 * v13) + v17[2]);
          v13 = (v13 + 1) & 0xF;
          v17 += 3;
          --v18;
        }

        while (v18);
      }

      v12 = (v12 + 1) & 0xF;
      *(v5 + 76) = v12;
      ++v4;
    }

    while (v4 != v11);
  }

  return result;
}

void quantize_ord_dither(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v6 = 0;
    v7 = *(a1 + 136);
    v8 = *(a1 + 144);
    v9 = *(a1 + 656);
    v10 = *(a1 + 144);
    v11 = a4;
    do
    {
      bzero(*(a3 + 8 * v6), v7);
      v12 = *(v9 + 76);
      if (v10 >= 1)
      {
        v13 = 0;
        do
        {
          if (v7)
          {
            v14 = 0;
            v15 = *(*(v9 + 48) + 8 * v13);
            v16 = *(v9 + 80 + 8 * v13) + (v12 << 6);
            v17 = *(a3 + 8 * v6);
            v18 = *(a2 + 8 * v6);
            v19 = v7;
            do
            {
              *v17++ += *(v15 + *(v16 + 4 * v14) + *(v18 + v13));
              v14 = (v14 + 1) & 0xF;
              v18 += v8;
              --v19;
            }

            while (v19);
          }

          ++v13;
        }

        while (v13 != v8);
      }

      *(v9 + 76) = (v12 + 1) & 0xF;
      ++v6;
    }

    while (v6 != v11);
  }
}

void quantize_fs_dither(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v6 = 0;
    v7 = *(a1 + 144);
    v8 = *(a1 + 136);
    v9 = *(a1 + 440);
    v10 = *(a1 + 656);
    v11 = (v8 - 1);
    v12 = (v11 * v7);
    v13 = v10 + 112;
    v31 = a4;
    while (1)
    {
      v14 = v11;
      v15 = v12;
      bzero(*(a3 + 8 * v6), v8);
      v12 = v15;
      v11 = v14;
      if (v7 >= 1)
      {
        break;
      }

LABEL_13:
      *(v10 + 144) = *(v10 + 144) == 0;
      if (++v6 == v31)
      {
        return;
      }
    }

    v16 = 0;
    while (1)
    {
      v17 = (*(a2 + 8 * v6) + v16);
      v18 = *(a3 + 8 * v6);
      if (*(v10 + 144))
      {
        v17 += v15;
        v18 += v14;
        v19 = (*(v13 + 8 * v16) + 2 * (v8 + 1));
        v20 = -1;
        v21 = -v7;
        if (v8)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v19 = *(v13 + 8 * v16);
        v20 = 1;
        v21 = v7;
        if (v8)
        {
LABEL_7:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v25 = *(*(v10 + 48) + 8 * v16);
          v26 = *(*(v10 + 32) + 8 * v16);
          v27 = v8;
          do
          {
            v28 = *(v9 + *v17 + ((v22 + v19[v20] + 8) >> 4));
            v29 = *(v25 + v28);
            *v18 += v29;
            LODWORD(v29) = v28 - *(v26 + v29);
            v30 = 3 * v29 + v24;
            v24 = 5 * v29 + v23;
            v22 = 7 * v29;
            v17 += v21;
            *v19 = v30;
            v18 += v20;
            v19 += v20;
            v23 = v29;
            --v27;
          }

          while (v27);
          goto LABEL_12;
        }
      }

      v24 = 0;
LABEL_12:
      *v19 = v24;
      if (++v16 == v7)
      {
        goto LABEL_13;
      }
    }
  }
}

double xdr::Texture<unsigned short,float,int>::sampleRead(unsigned __int16 *a1, uint64_t a2, int a3, float a4)
{
  v4 = (a3 + a4);
  if ((v4 & 0x80000000) == 0 && a1[6] > v4)
  {
LABEL_7:
    (*(*a1 + 16))(a1, v4);
    return result;
  }

  v5 = *(a2 + 4);
  if (v5)
  {
    if (v5 == 1)
    {
      v4 &= ~(v4 >> 31);
      if ((a1[6] - 1) < v4)
      {
        LOWORD(v4) = a1[6] - 1;
      }
    }

    goto LABEL_7;
  }

  return 0.0;
}

double _ZNK3xdr7TextureIDv2_tDv2_fDv2_iE10sampleReadERKNS_7SamplerES2_S3_(__int16 *a1, uint64_t a2, float32x2_t a3, int32x2_t a4)
{
  *v4.i8 = vadd_s32(vcvt_s32_f32(a3), a4);
  v5 = vcltz_s16(vuzp1_s16(*v4.i8, *v4.i8));
  if ((vmaxv_u16(v5) & 0x8000) == 0)
  {
    v6.i32[0] = a1[6];
    v6.i32[1] = a1[7];
    v7 = vcge_s32(vshr_n_s32(vshl_n_s32(*v4.i8, 0x10uLL), 0x10uLL), v6);
    v5 = vuzp1_s16(v7, v7);
    if ((vmaxv_u16(v5) & 0x8000) == 0)
    {
      goto LABEL_6;
    }
  }

  v8 = *(a2 + 4);
  if (v8)
  {
    if (v8 == 1)
    {
      v5.i16[0] = a1[6];
      v5.i16[2] = a1[7];
      v9 = vmax_s16(vuzp1_s16(*v4.i8, *v4.i8).u32[0], 0).u32[0];
      v4 = vmovl_u16(vmin_s16(v9, vuzp1_s16(vadd_s32(v5, 0xFFFF0000FFFFLL), v9).u32[0]));
    }

LABEL_6:
    HIWORD(v11) = v4.i16[2];
    LOWORD(v11) = v4.i16[0];
    (*(*a1 + 16))(a1, v11);
    return result;
  }

  return 0.0;
}

double _ZNK3xdr7TextureIDv3_tDv3_fDv3_iE10sampleReadERKNS_7SamplerES2_S3_(int16x4_t *a1, uint64_t a2, float32x4_t a3, int32x4_t a4)
{
  v4 = vcvtq_s32_f32(a3);
  v4.n128_u64[0] = vadd_s16(vmovn_s32(v4), vmovn_s32(a4));
  v5 = vcltz_s16(v4.n128_u64[0]);
  v5.i16[3] = v5.i16[2];
  if ((vmaxv_u16(v5) & 0x8000) == 0)
  {
    v6 = vcge_s16(v4.n128_u64[0], a1[2]);
    v6.i16[3] = v6.i16[2];
    if ((vmaxv_u16(v6) & 0x8000) == 0)
    {
      goto LABEL_6;
    }
  }

  v7 = *(a2 + 4);
  if (v7)
  {
    if (v7 == 1)
    {
      v4.n128_u16[3] = 0;
      v8 = vmax_s16(v4.n128_u64[0], 0);
      v8.i16[3] = 0;
      v9 = vadd_s16(a1[2], -1);
      v9.i16[3] = 0;
      v4.n128_u64[0] = vmin_s16(v8, v9);
    }

LABEL_6:
    (*(*a1 + 16))(v4);
    return result;
  }

  return 0.0;
}

double xdr::Texture<unsigned short,float,int>::sample(unsigned __int16 *a1, _DWORD *a2, int a3, float a4, float a5)
{
  if (!*a2)
  {
    LOWORD(a5) = a1[6];
    a4 = LODWORD(a5) * a4;
  }

  if (a2[2] == 1)
  {
    v8 = a4 + -0.5;
    v12 = ceilf(a4 + -0.5) - (a4 + -0.5);
    v14 = 1.0 - v12;
    *v9.i64 = xdr::Texture<unsigned short,float,int>::sampleRead(a1, a2, a3, a4 + -0.5);
    v13 = vmlaq_n_f32(0, v9, v12);
    *v10.i64 = xdr::Texture<unsigned short,float,int>::sampleRead(a1, a2, a3 + 1, v8);
    *&result = vmlaq_n_f32(v13, v10, v14).u64[0];
  }

  else
  {

    return xdr::Texture<unsigned short,float,int>::sampleRead(a1, a2, a3, a4);
  }

  return result;
}

double _ZNK3xdr7TextureIDv2_tDv2_fDv2_iE6sampleERKNS_7SamplerES2_S3_(uint64_t a1, _DWORD *a2, float32x2_t a3, int32x2_t a4)
{
  if (!*a2)
  {
    v7.i32[0] = *(a1 + 12);
    v7.i32[1] = *(a1 + 14);
    a3 = vmul_f32(vadd_f32(vorr_s8(v7, vdup_n_s32(0x4B400000u)), vdup_n_s32(0xCB400000)), a3);
  }

  if (a2[2] == 1)
  {
    v8 = vadd_f32(vrndm_f32(vadd_f32(a3, 0xBF000000BF000000)), 0x3F0000003F000000);
    v9 = vsub_f32(a3, v8);
    __asm { FMOV            V0.2S, #1.0 }

    v20 = vsub_f32(_D0, v9);
    v21 = v9;
    *v15.i64 = _ZNK3xdr7TextureIDv2_tDv2_fDv2_iE10sampleReadERKNS_7SamplerES2_S3_(a1, a2, v8, a4);
    v22 = vmlaq_n_f32(0, v15, vmuls_lane_f32(v20.f32[0], v20, 1));
    *v16.i64 = _ZNK3xdr7TextureIDv2_tDv2_fDv2_iE10sampleReadERKNS_7SamplerES2_S3_(a1, a2, v8, vadd_s32(a4, 0x100000000));
    v23 = vmlaq_n_f32(v22, v16, vmuls_lane_f32(v20.f32[0], v21, 1));
    *v17.i64 = _ZNK3xdr7TextureIDv2_tDv2_fDv2_iE10sampleReadERKNS_7SamplerES2_S3_(a1, a2, v8, vadd_s32(a4, 1));
    v24 = vmlaq_n_f32(v23, v17, vmuls_lane_f32(v21.f32[0], v20, 1));
    *v18.i64 = _ZNK3xdr7TextureIDv2_tDv2_fDv2_iE10sampleReadERKNS_7SamplerES2_S3_(a1, a2, v8, vadd_s32(a4, 0x100000001));
    *&result = vmlaq_n_f32(v24, v18, vmuls_lane_f32(v21.f32[0], v21, 1)).u64[0];
  }

  else
  {

    return _ZNK3xdr7TextureIDv2_tDv2_fDv2_iE10sampleReadERKNS_7SamplerES2_S3_(a1, a2, a3, a4);
  }

  return result;
}

double _ZNK3xdr7TextureIDv3_tDv3_fDv3_iE6sampleERKNS_7SamplerES2_S3_(uint64_t a1, _DWORD *a2, float32x4_t a3, int32x4_t a4)
{
  if (!*a2)
  {
    a3 = vmulq_f32(vaddq_f32(vorrq_s8(vmovl_u16(*(a1 + 16)), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)), a3);
  }

  if (a2[2] == 1)
  {
    v6.i64[0] = 0xBF000000BF000000;
    v6.i64[1] = 0xBF000000BF000000;
    v7 = vaddq_f32(a3, v6);
    v7.i32[3] = 0;
    v8 = vrndmq_f32(v7);
    v7.i64[0] = 0x3F0000003F000000;
    v7.i64[1] = 0x3F0000003F000000;
    v29 = vaddq_f32(v8, v7);
    v30 = vsubq_f32(a3, v29);
    __asm { FMOV            V0.4S, #1.0 }

    v27 = vsubq_f32(_Q0, v30);
    v14 = vmuls_lane_f32(v27.f32[0], *v27.f32, 1);
    *v15.i64 = _ZNK3xdr7TextureIDv3_tDv3_fDv3_iE10sampleReadERKNS_7SamplerES2_S3_(a1, a2, v29, a4);
    v31 = vmlaq_n_f32(0, v15, vmuls_lane_f32(v14, v27, 2));
    *v16.i64 = _ZNK3xdr7TextureIDv3_tDv3_fDv3_iE10sampleReadERKNS_7SamplerES2_S3_(a1, a2, v29, vaddq_s32(a4, xmmword_186205EC0));
    v32 = vmlaq_n_f32(v31, v16, vmuls_lane_f32(v14, v30, 2));
    v17 = vmuls_lane_f32(v27.f32[0], *v30.f32, 1);
    *v18.i64 = _ZNK3xdr7TextureIDv3_tDv3_fDv3_iE10sampleReadERKNS_7SamplerES2_S3_(a1, a2, v29, vaddq_s32(a4, xmmword_1862079A0));
    v33 = vmlaq_n_f32(v32, v18, vmuls_lane_f32(v17, v27, 2));
    *v19.i64 = _ZNK3xdr7TextureIDv3_tDv3_fDv3_iE10sampleReadERKNS_7SamplerES2_S3_(a1, a2, v29, vaddq_s32(a4, xmmword_186205910));
    v34 = vmlaq_n_f32(v33, v19, vmuls_lane_f32(v17, v30, 2));
    v20 = vmuls_lane_f32(v30.f32[0], *v27.f32, 1);
    *v21.i64 = _ZNK3xdr7TextureIDv3_tDv3_fDv3_iE10sampleReadERKNS_7SamplerES2_S3_(a1, a2, v29, vaddq_s32(a4, xmmword_1862079B0));
    v35 = vmlaq_n_f32(v34, v21, vmuls_lane_f32(v20, v27, 2));
    *v22.i64 = _ZNK3xdr7TextureIDv3_tDv3_fDv3_iE10sampleReadERKNS_7SamplerES2_S3_(a1, a2, v29, vaddq_s32(a4, xmmword_1862079C0));
    v36 = vmlaq_n_f32(v35, v22, vmuls_lane_f32(v20, v30, 2));
    v23 = vmuls_lane_f32(v30.f32[0], *v30.f32, 1);
    *v24.i64 = _ZNK3xdr7TextureIDv3_tDv3_fDv3_iE10sampleReadERKNS_7SamplerES2_S3_(a1, a2, v29, vaddq_s32(a4, xmmword_1862079D0));
    v37 = vmlaq_n_f32(v36, v24, vmuls_lane_f32(v23, v27, 2));
    v24.i64[0] = 0x100000001;
    v24.i64[1] = 0x100000001;
    *v25.i64 = _ZNK3xdr7TextureIDv3_tDv3_fDv3_iE10sampleReadERKNS_7SamplerES2_S3_(a1, a2, v29, vaddq_s32(a4, v24));
    *&result = vmlaq_n_f32(v37, v25, vmuls_lane_f32(v23, v30, 2)).u64[0];
  }

  else
  {

    return _ZNK3xdr7TextureIDv3_tDv3_fDv3_iE10sampleReadERKNS_7SamplerES2_S3_(a1, a2, a3, a4);
  }

  return result;
}

uint64_t IIOCallCreatePixelBufferAttributesForHDRType(int a1, void *a2, void *a3, void *a4)
{
  kdebug_trace();
  v8 = IIOCreatePixelBufferAttributesForHDRType(a1, a2, a3, a4);
  kdebug_trace();
  return v8;
}

uint64_t IIOCallConvertHDRGainMap(__IOSurface *a1, __IOSurface *a2, __IOSurface *a3, __IOSurface *a4, CGImageMetadata **a5, void *a6)
{
  kdebug_trace();
  v12 = IIOCreatePixelBufferWithIOSurfaceAndOptions(a1);
  if (!v12)
  {
    v18 = 4294967246;
    goto LABEL_15;
  }

  v13 = v12;
  if (a2)
  {
    a2 = IIOCreatePixelBufferWithIOSurfaceAndOptions(a2);
  }

  v14 = IIOCreatePixelBufferWithIOSurfaceAndOptions(a3);
  if (v14)
  {
    v15 = v14;
    v16 = IIOCreatePixelBufferWithIOSurfaceAndOptions(a4);
    if (v16)
    {
      v17 = v16;
      v18 = IIOConvertHDRGainMap(v13, a2, v15, v16, a5, a6);
      CFRelease(v17);
    }

    else
    {
      v18 = 4294967246;
    }

    CFRelease(v15);
    if (!a2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v18 = 4294967246;
  if (a2)
  {
LABEL_12:
    CFRelease(a2);
  }

LABEL_13:
  CFRelease(v13);
  if (!v18)
  {
    v18 = IIOSurfaceCopyAlphaValuesFromSource(a1, a3);
    IIO_IOSurfaceLogAlphaInfo(a1, "IIOCallConvertHDRGainMap inputSurface:");
    IIO_IOSurfaceLogAlphaInfo(a3, "IIOCallConvertHDRGainMap outputSurface:");
  }

LABEL_15:
  kdebug_trace();
  return v18;
}

uint64_t IIOCallCreateFlexGTCInfo(__IOSurface *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (!a3 || !a4)
  {
    return 4294967246;
  }

  v8 = a2 ? gFunc_CVPixelBufferRetain(a2) : IIOCreatePixelBufferWithIOSurfaceAndOptions(a1);
  v9 = v8;
  if (!v8)
  {
    return 4294967246;
  }

  FlexGTCInfo = CGImageCreateFlexGTCInfo(v8, a3, a4, a5);
  gFunc_CVPixelBufferRelease(v9);
  return FlexGTCInfo;
}

uint64_t IIOCallComputeHDRStats(__IOSurface *a1, uint64_t a2, uint64_t a3, void **a4, void *a5)
{
  kdebug_trace();
  if (a4)
  {
    v10 = a2 ? gFunc_CVPixelBufferRetain(a2) : IIOCreatePixelBufferWithIOSurfaceAndOptions(a1);
    v11 = v10;
    if (v10)
    {
      if (a3)
      {
        v12 = CGImageComputeHDRImageStatistics(v10, a3, a4, a5);
LABEL_17:
        gFunc_CVPixelBufferRelease(v11);
        goto LABEL_18;
      }

      v19 = 0;
      HDRPixelBufferStatistics = CGImageGetHDRPixelBufferStatistics(v10, &v19);
      v14 = v19;
      if (HDRPixelBufferStatistics)
      {
        v15 = 1;
      }

      else
      {
        v15 = v19 == 0;
      }

      if (v15)
      {
        v18 = 0;
        v12 = CGImageComputeHDRImageStatistics(v11, 0, &v18, a5);
        if (v12)
        {
          goto LABEL_17;
        }

        IIOHDRPixelBufferSetAttachmentsFromStatistics(v11, v18);
        v14 = v18;
      }

      else
      {
        v12 = 0;
      }

      *a4 = v14;
      goto LABEL_17;
    }
  }

  v12 = 4294967246;
LABEL_18:
  v16 = *a4;
  [objc_msgSend(v16 objectForKeyedSubscript:{@"kCGContentHeadroom", "floatValue"}];
  [objc_msgSend(v16 objectForKeyedSubscript:{@"kCGContentBrightness", "floatValue"}];
  kdebug_trace();
  return v12;
}

uint64_t IIOCallConvertHDRData(__IOSurface *a1, __IOSurface *a2, void *a3)
{
  kdebug_trace();
  v6 = IIOCreatePixelBufferWithIOSurfaceAndOptions(a1);
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v6;
  v8 = IIOCreatePixelBufferWithIOSurfaceAndOptions(a2);
  if (!v8)
  {
    CFRelease(v7);
LABEL_8:
    v10 = 4294967246;
    goto LABEL_9;
  }

  v9 = v8;
  if (*gIIO_kCVImageBufferYCbCrMatrix_ITU_R_2020)
  {
    gFunc_CVBufferSetAttachment(v8, *gIIO_kCVImageBufferYCbCrMatrixKey, *gIIO_kCVImageBufferYCbCrMatrix_ITU_R_2020, 1);
  }

  v10 = IIOConvertHDRData(v7, v9, a3);
  CFRelease(v9);
  CFRelease(v7);
  if (!v10)
  {
    v10 = IIOSurfaceCopyAlphaValuesFromSource(a1, a2);
    IIO_IOSurfaceLogAlphaInfo(a1, "IIOCallConvertHDRData inputSurface:");
    IIO_IOSurfaceLogAlphaInfo(a2, "IIOCallConvertHDRData outputSurface:");
  }

LABEL_9:
  kdebug_trace();
  return v10;
}

uint64_t IIOCallApplyHDRGainmap(__IOSurface *a1, uint64_t a2, __IOSurface *a3, void *a4)
{
  v8 = IIOCreatePixelBufferWithIOSurfaceAndOptions(a1);
  if (!v8)
  {
    return 4294967246;
  }

  v9 = v8;
  if (!a2 || (v10 = IIOCreatePixelBufferWithIOSurfaceAndOptions(a3)) == 0)
  {
    CFRelease(v9);
    return 4294967246;
  }

  v11 = v10;
  v12 = IIOApplyHDRGainMap(v9, a2, v10, a4);
  CFRelease(v11);
  CFRelease(v9);
  if (!v12)
  {
    v13 = IIOSurfaceCopyAlphaValuesFromSource(a1, a3);
    IIO_IOSurfaceLogAlphaInfo(a1, "IIOCallApplyHDRGainmap inputSurface:");
    IIO_IOSurfaceLogAlphaInfo(a3, "IIOCallApplyHDRGainmap outputSurface:");
    return v13;
  }

  return v12;
}

uint64_t IIOCallCreateHDRGainmap(__IOSurface *a1, __IOSurface *a2, __IOSurface *a3, void *a4)
{
  v8 = IIOCreatePixelBufferWithIOSurfaceAndOptions(a1);
  if (!v8)
  {
    return 4294967246;
  }

  v9 = v8;
  v10 = IIOCreatePixelBufferWithIOSurfaceAndOptions(a2);
  if (!v10)
  {
    CFRelease(v9);
    return 4294967246;
  }

  v11 = v10;
  v12 = IIOCreatePixelBufferWithIOSurfaceAndOptions(a3);
  if (v12)
  {
    v13 = v12;
    v14 = IIOCreateHDRGainMap(v9, v11, v12, a4);
    CFRelease(v13);
  }

  else
  {
    v14 = 4294967246;
  }

  CFRelease(v11);
  CFRelease(v9);
  if (v14)
  {
    return v14;
  }

  v16 = IIOSurfaceCopyAlphaValuesFromSource(a1, a2);
  IIO_IOSurfaceLogAlphaInfo(a1, "IIOCallCreateHDRGainmap inputSurface:");
  IIO_IOSurfaceLogAlphaInfo(a2, "IIOCallCreateHDRGainmap outputSurface:");
  return v16;
}

clock_t kd_block_encoder::encode(kd_block_encoder *this, kdu_block *a2, double a3)
{
  v5 = MEMORY[0x1EEE9AC00](this, a2);
  v250 = v6;
  v7 = v3;
  v306[91] = *MEMORY[0x1E69E9840];
  v8 = -1.0;
  v9 = v5 > 0.0 && v4 >= 2;
  if (v9 && *(v3 + 32))
  {
    v8 = exp((v4 + -65536.0) * 0.00270760617) * 4294967300.0;
  }

  bzero(v306, 0x2D8uLL);
  v304 = 0u;
  v305 = 0u;
  v303 = 0u;
  memset(v302, 0, sizeof(v302));
  v301 = 0u;
  memset(v300, 0, sizeof(v300));
  v10 = 5824;
  bzero(v298, 0x16C0uLL);
  v11 = &v299;
  do
  {
    *(v11 - 5) = 0;
    *(v11 - 3) = 0;
    *(v11 - 2) = 0;
    *v11 = 0;
    v11[1] = 0;
    *(v11 + 16) = 0;
    v11 += 8;
    v10 -= 64;
  }

  while (v10);
  v13 = *v7;
  v12 = *(v7 + 4);
  v14 = *v7 + 3;
  if (*(v7 + 112) < ((v14 & 0xFFFFFFFC) * v12))
  {
    kd_block_encoder::encode();
  }

  v15 = v14 >> 2;
  v282 = *(v7 + 4);
  v16 = v12 + 3;
  v17 = ((v14 >> 2) + 2) * (v12 + 3);
  if (*(v7 + 116) <= v17)
  {
    if (v17 <= 1599)
    {
      v17 = 1599;
    }

    kdu_block::set_max_contexts(v7, v17 + 1);
  }

  v18 = *(v7 + 104);
  v19 = *(v7 + 48);
  v20 = 3 * (31 - *(v7 + 44)) - 2;
  v21 = v19 <= v20;
  v238 = v19;
  if (v19 >= v20)
  {
    v22 = 3 * (31 - *(v7 + 44)) - 2;
  }

  else
  {
    v22 = *(v7 + 48);
  }

  v23 = v22 & ~(v22 >> 31);
  if (!v21 || v22 < 0)
  {
    *(v7 + 48) = v23;
  }

  v24 = (v18 + 4 * v16);
  v248 = *(v7 + 96);
  if (*(v7 + 88) < v23)
  {
    kdu_block::set_max_passes(v7, v23 + 10, 0);
  }

  v283 = v16;
  v247 = (v24 + 4);
  if (*(v7 + 136))
  {
    *(v7 + 152) = clock();
    v25 = *(v7 + 136);
  }

  else
  {
    v25 = 1;
  }

  v246 = v25;
  v245 = 4 * v16 * v15 + 4;
  v244 = v13 & 3;
  v26 = v282;
  v278 = -3 - v282;
  v293 = 3 * v282;
  v240 = 4 * v16 + 4 * (v15 - 1) * v16 + v18 + 8;
  v269 = v282;
  v270 = 4 * v16;
  v242 = v269 * 4 + v270 + v18 + 12;
  v267 = -12 - v269 * 4;
  v268 = v293;
  v27 = vdup_n_s32(0x49200000u);
  v28 = 2 * v282;
  v294 = v302;
  v241 = v15 + 1;
  v277 = -4 - v282;
  v266 = -2 - v282;
  v264 = v282 + 4;
  v265 = -4 - v282;
  v263 = v282 + 2;
  v262 = 2 * v282;
  v249 = v7;
  v251 = v15;
  v239 = (v18 + v270);
  v291 = v282;
  v243 = vdupq_n_s64(v282 - 1);
  do
  {
    bzero(v24, v245);
    if (v244 > 1)
    {
      if (v244 == 3)
      {
        v31 = 0x40000000;
        v29 = (v282 + 3) & 0xFFFFFFFC;
        v30 = v243;
      }

      else
      {
        v30 = v243;
        v31 = 1207959552;
        v29 = (v282 + 3) & 0xFFFFFFFC;
      }

LABEL_34:
      if (v26 >= 1)
      {
        v32 = 0;
        v33 = v240;
        do
        {
          v34 = vdupq_n_s64(v32);
          v35 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(v34, xmmword_186205EC0)));
          if (vuzp1_s16(v35, *v34.i8).u8[0])
          {
            *(v33 - 1) = v31;
          }

          if (vuzp1_s16(v35, *&v34).i8[2])
          {
            *v33 = v31;
          }

          v36 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(v34, xmmword_186205EB0)));
          if (vuzp1_s16(v36, v36).i32[1])
          {
            v33[1] = v31;
            v33[2] = v31;
          }

          v32 += 4;
          v33 += 4;
        }

        while (v29 != v32);
      }

      goto LABEL_43;
    }

    v29 = (v282 + 3) & 0xFFFFFFFC;
    v30 = v243;
    if (v244)
    {
      v31 = 1224736768;
      goto LABEL_34;
    }

LABEL_43:
    if (v15 >= 1)
    {
      v37 = v241;
      v38 = v242;
      do
      {
        v38->i32[0] = 1226833920;
        v38[-1] = v27;
        v38 = (v38 + v270);
        --v37;
      }

      while (v37 > 1);
    }

    v39 = *(v7 + 44);
    v40 = v5 * 0.0000152587891 * 0.0000152587891;
    if (v39 >= 1)
    {
      v41 = v39 + 1;
      v40 = v5 * 0.0000152587891 * 0.0000152587891;
      do
      {
        v40 = v40 * 0.25;
        --v41;
      }

      while (v41 > 1);
    }

    LODWORD(v42) = *(v7 + 48);
    if (v42 < 1)
    {
      LODWORD(v196) = 0;
      goto LABEL_364;
    }

    v271 = 0;
    v43 = 0;
    v44 = 0;
    v286 = *(v7 + 28);
    v45 = *(v7 + 92);
    v257 = *(v7 + 72);
    v46 = 30 - v39;
    v47 = 2;
    v259 = 1;
    v260 = 0;
    v255 = -1;
    v256 = 0;
    while (2)
    {
      if (v47 == 3)
      {
        v40 = v40 * 0.25;
        v49 = 0;
      }

      else
      {
        v49 = v47;
      }

      v258 = v49;
      v261 = v45;
      v254 = v43;
      if (v45 - v44 <= 4095)
      {
        if (v45 < v44)
        {
          kd_block_encoder::encode();
        }

        v50 = *(v7 + 72);
        kdu_block::set_max_bytes(v7, *(v7 + 92) + 0x2000, 1);
        v51 = *(v7 + 72);
        if (v271)
        {
          v52 = v298;
          v53 = v271;
          do
          {
            mq_encoder::augment_buffer(v52, v50, v51);
            v52 += 64;
            --v53;
          }

          while (v53);
        }

        v261 += 0x2000;
        v257 = &v51[v257 - v50];
        v28 = 2 * v282;
      }

      v54 = &v298[64 * v271];
      v55 = v256;
      if (v260)
      {
        mq_encoder::continues(&v298[64 * v271], &(&v289)[8 * v271]);
      }

      else
      {
        v56 = *(v7 + 48);
        v57 = *(v7 + 28);
        if (v57)
        {
          if (v258 == 2)
          {
            v58 = 1;
          }

          else
          {
            v58 = 2;
          }

          v59 = v271;
          if (v271 > 9)
          {
            v55 = v258 != 2;
          }

          else
          {
            v58 = 10 - v271;
          }
        }

        else
        {
          v58 = *(v7 + 48);
          v59 = v271;
        }

        if ((v57 & 4) != 0)
        {
          v60 = 1;
        }

        else
        {
          v60 = v58;
        }

        if (v60 + v59 <= v56)
        {
          v61 = v60;
        }

        else
        {
          v61 = v56 - v59;
        }

        v260 = v61;
        mq_encoder::start(&v298[64 * v271], v257, !v55);
      }

      v48 = v47 == 3;
      v62 = v250;
      if (v250)
      {
        v62 = 31 - (v46 - v48) == *(v7 + 40);
      }

      if (!v271 || (*(v7 + 28) & 2) != 0)
      {
        v63 = 0;
        v64 = mq_encoder::p_bar_table[0];
        do
        {
          v65 = &v300[v63];
          *v65 = v64;
          v65[1] = &mq_encoder::transition_table;
          v63 += 2;
        }

        while (v63 != 36);
        LODWORD(v300[0]) = unk_1EA8D9498;
        v300[1] = &unk_1EA8E19A8;
        LODWORD(v301) = dword_1EA8D9494;
        *(&v301 + 1) = &unk_1EA8E1968;
      }

      v256 = v55;
      v253 = v46 - v48;
      if (v47 == 3 && !v55)
      {
        if (v46 >= 32)
        {
          kd_block_encoder::encode();
        }

        v110 = !v62;
        v102 = &significance_distortion_lut;
        if (!v110)
        {
          v102 = &significance_distortion_lut_lossless;
        }

        v295 = v102;
        if (v15 < 1)
        {
          goto LABEL_310;
        }

        v103 = v15;
        v296 = 0;
        v104 = 32 - v46;
        v105 = *(&significance_luts + *(v7 + 32));
        v107 = v247;
        v106 = v248;
        while (1)
        {
          LODWORD(v292) = v103;
          if (v282 >= 1)
          {
            break;
          }

LABEL_189:
          v107 += 3;
          v106 += v293;
          v103 = v292 - 1;
          if (v292 <= 1)
          {
            goto LABEL_311;
          }
        }

        v108 = v282;
        while (1)
        {
          v109 = *v107;
          if (!*v107)
          {
            if (!v107[3])
            {
              do
              {
                v108 -= 3;
                v106 += 3;
                v112 = v107[6];
                v107 += 3;
              }

              while (!v112);
            }

            goto LABEL_187;
          }

          v110 = (v109 & 0x1EF) != 0 && (v109 & 0x200010) == 0;
          if (v110)
          {
            v111 = *v106 << v104;
            mq_encoder::mq_encode(v54, v111 & 0x80000000, &v300[2 * *(v105 + (v109 & 0x1EF))]);
            if ((v111 & 0x80000000) != 0)
            {
              v113 = *(&sign_lut + ((*(v107 - 1) >> 2) & 4 | (v109 >> 1) & 0x41 | v107[1] & 0x10 | (((*(v107 - 1) >> 2) & 0x80004 | (v109 >> 1) & 0x820041 | v107[1] & 0x200010) >> 16)));
              v296 += v295[(v111 >> 26) & 0x1F];
              v114 = *v106;
              mq_encoder::mq_encode(v54, *v106 & 0x80000000 ^ (v113 << 31), &v294[(8 * v113) & 0x7F0]);
              *(v107 - 1) |= 0x20u;
              v107[1] |= 8u;
              if (v114 < 0)
              {
                v109 |= 0x300010u;
                if ((v286 & 8) == 0)
                {
                  v107[v277] |= 0x20000u;
                  v107[v278] |= 0x80010000;
                  goto LABEL_163;
                }
              }

              else
              {
                v109 |= 0x100010u;
                if ((v286 & 8) == 0)
                {
                  v107[v277] |= 0x20000u;
                  v107[v278] |= 0x10000u;
LABEL_163:
                  v107[-2 - v282] |= 0x8000u;
                }
              }
            }

            else
            {
              v109 |= 0x100000u;
            }
          }

          if ((v109 & 0xF78) != 0 && (v109 & 0x1000080) == 0)
          {
            v116 = v291;
            v117 = v106[v291] << v104;
            mq_encoder::mq_encode(v54, v117 & 0x80000000, &v300[2 * *(v105 + ((v109 >> 3) & 0x1EFLL))]);
            if ((v117 & 0x80000000) != 0)
            {
              v296 += v295[(v117 >> 26) & 0x1F];
              v118 = *(&sign_lut + ((*(v107 - 1) >> 5) & 4 | (v109 >> 4) & 0x41 | (v107[1] >> 3) & 0x10 | (((*(v107 - 1) >> 5) & 0x80004 | (v109 >> 4) & 0x820041 | (v107[1] >> 3) & 0x200010) >> 16)));
              v119 = v106[v116] & 0x80000000;
              mq_encoder::mq_encode(v54, v119 ^ (v118 << 31), &v294[(8 * v118) & 0x7F0]);
              *(v107 - 1) |= 0x100u;
              v107[1] |= 0x40u;
              v109 |= (v119 >> 7) | 0x800080;
            }

            else
            {
              v109 |= 0x800000u;
            }
          }

          if ((v109 & 0x7BC0) != 0 && (v109 & 0x8000400) == 0)
          {
            v120 = v106[v28] << v104;
            mq_encoder::mq_encode(v54, v120 & 0x80000000, &v300[2 * *(v105 + ((v109 >> 6) & 0x1EFLL))]);
            if ((v120 & 0x80000000) != 0)
            {
              v296 += v295[(v120 >> 26) & 0x1F];
              v121 = *(&sign_lut + ((*(v107 - 1) >> 8) & 4 | (v109 >> 7) & 0x41 | (v107[1] >> 6) & 0x10 | (((*(v107 - 1) >> 8) & 0x80004 | (v109 >> 7) & 0x820041 | (v107[1] >> 6) & 0x200010) >> 16)));
              v122 = v106[v28] & 0x80000000;
              mq_encoder::mq_encode(v54, v122 ^ (v121 << 31), &v294[(8 * v121) & 0x7F0]);
              *(v107 - 1) |= 0x800u;
              v107[1] |= 0x200u;
              v109 |= (v122 >> 4) | 0x4000400;
            }

            else
            {
              v109 |= 0x4000000u;
            }
          }

          if ((v109 & 0x3DE00) != 0 && (v109 & 0x40002000) == 0)
          {
            v123 = v293;
            v124 = v106[v293] << v104;
            mq_encoder::mq_encode(v54, v124 & 0x80000000, &v300[2 * *(v105 + ((v109 >> 9) & 0x1EFLL))]);
            if ((v124 & 0x80000000) != 0)
            {
              v296 += v295[(v124 >> 26) & 0x1F];
              v125 = *(&sign_lut + ((v109 >> 10) & 0x41 | (*(v107 - 1) >> 11) & 4 | (v107[1] >> 9) & 0x10 | (((v109 >> 10) & 0x20041 | (v109 >> 31 << 23) | (*(v107 - 1) >> 11) & 0x80004 | (v107[1] >> 9) & 0x200010) >> 16)));
              v126 = v106[v123];
              mq_encoder::mq_encode(v54, v126 & 0x80000000 ^ (v125 << 31), &v294[(8 * v125) & 0x7F0]);
              v107[v282 + 2] |= 4u;
              v107[v282 + 4] |= 1u;
              *(v107 - 1) |= 0x4000u;
              v107[1] |= 0x1000u;
              v127 = v107[v283];
              if (v126 < 0)
              {
                v107[v283] = v127 | 0x40002;
                v128 = 1610620928;
              }

              else
              {
                v107[v283] = v127 | 2;
                v128 = 536879104;
              }

              v109 |= v128;
            }

            else
            {
              v109 |= 0x20000000u;
            }

            v28 = 2 * v282;
          }

          *v107 = v109;
LABEL_187:
          ++v106;
          ++v107;
          v101 = __OFSUB__(v108--, 1);
          if ((v108 < 0) ^ v101 | (v108 == 0))
          {
            goto LABEL_189;
          }
        }
      }

      if (v47 == 3)
      {
        if (v46 >= 32)
        {
          kd_block_encoder::encode();
        }

        v110 = !v62;
        v129 = &significance_distortion_lut;
        if (!v110)
        {
          v129 = &significance_distortion_lut_lossless;
        }

        v288 = v129;
        if (v15 >= 1)
        {
          v296 = 0;
          LODWORD(v295) = 32 - v46;
          v131 = v247;
          v130 = v248;
          v132 = v15;
          do
          {
            if (v282 >= 1)
            {
              v133 = v54;
              v273 = v132;
              v134 = 0;
              v135 = &v130[v268];
              v136 = &v130[v269];
              v285 = v130;
              v137 = &v130[v262];
              v138 = v282 + 1;
              v139 = v296;
              v289 = &v130[v262];
              v290 = &v130[v268];
              v292 = &v130[v269];
              do
              {
                v140 = v131[v134];
                if (v140)
                {
                  if ((v140 & 0x1EF) != 0 && (v140 & 0x200010) == 0)
                  {
                    v142 = v285[v134] << v295;
                    mq_encoder::raw_encode(v133, v142 >> 31);
                    if ((v142 & 0x80000000) != 0)
                    {
                      v143 = v288[(v142 >> 26) & 0x1F];
                      v144 = v285[v134];
                      mq_encoder::raw_encode(v133, v144 >> 31);
                      if ((v286 & 8) == 0)
                      {
                        v131[v265 + v134] |= 0x20000u;
                        *(v131 + v267 + v134 * 4) |= v144 & 0x80000000 | 0x10000;
                        v131[v266 + v134] |= 0x8000u;
                      }

                      v139 += v143;
                      v145 = &v131[v134];
                      *(v145 - 1) = v131[v134 - 1] | 0x20;
                      v145[1] = v131[v134 + 1] | 8;
                      v140 |= (v144 >> 31 << 21) | 0x100010;
                    }

                    else
                    {
                      v140 |= 0x100000u;
                    }

                    v137 = v289;
                    v135 = v290;
                    v136 = v292;
                  }

                  if ((v140 & 0xF78) != 0 && (v140 & 0x1000080) == 0)
                  {
                    v147 = v136[v134] << v295;
                    mq_encoder::raw_encode(v133, v147 >> 31);
                    if ((v147 & 0x80000000) != 0)
                    {
                      v139 += v288[(v147 >> 26) & 0x1F];
                      v148 = v136[v134] >> 31;
                      mq_encoder::raw_encode(v133, v148);
                      v149 = &v131[v134];
                      *(v149 - 1) = v131[v134 - 1] | 0x100;
                      v149[1] = v131[v134 + 1] | 0x40;
                      LODWORD(v149) = v140 | (v148 << 24);
                      v135 = v290;
                      v140 = v149 | 0x800080;
                    }

                    else
                    {
                      v140 |= 0x800000u;
                    }

                    v137 = v289;
                  }

                  if ((v140 & 0x7BC0) != 0 && (v140 & 0x8000400) == 0)
                  {
                    v151 = v137[v134] << v295;
                    mq_encoder::raw_encode(v133, v151 >> 31);
                    if ((v151 & 0x80000000) != 0)
                    {
                      v139 += v288[(v151 >> 26) & 0x1F];
                      v152 = v137[v134] >> 31;
                      mq_encoder::raw_encode(v133, v152);
                      v153 = &v131[v134];
                      *(v153 - 1) = v131[v134 - 1] | 0x800;
                      v153[1] = v131[v134 + 1] | 0x200;
                      LODWORD(v153) = v140 | (v152 << 27);
                      v135 = v290;
                      v140 = v153 | 0x4000400;
                    }

                    else
                    {
                      v140 |= 0x4000000u;
                    }

                    v136 = v292;
                  }

                  if ((v140 & 0x3DE00) != 0 && (v140 & 0x40002000) == 0)
                  {
                    v154 = v135[v134] << v295;
                    mq_encoder::raw_encode(v133, v154 >> 31);
                    if ((v154 & 0x80000000) != 0)
                    {
                      v139 += v288[(v154 >> 26) & 0x1F];
                      v155 = v135[v134] >> 31;
                      mq_encoder::raw_encode(v133, v155);
                      v131[v263 + v134] |= 4u;
                      v131[v270 / 4 + v134] |= (v155 << 18) | 2;
                      v131[v264 + v134] |= 1u;
                      v156 = &v131[v134];
                      *(v156 - 1) = v131[v134 - 1] | 0x4000;
                      v156[1] = v131[v134 + 1] | 0x1000;
                      LODWORD(v156) = v140 | (v155 << 30);
                      v135 = v290;
                      v140 = v156 | 0x20002000;
                    }

                    else
                    {
                      v140 |= 0x20000000u;
                    }

                    v136 = v292;
                  }

                  v131[v134] = v140;
                }

                ++v134;
                --v138;
              }

              while (v138 > 1);
              v296 = v139;
              v130 = &v285[v134];
              v131 = (v131 + v134 * 4);
              v132 = v273;
              v54 = v133;
            }

            v131 += 3;
            v130 += v293;
            v101 = __OFSUB__(v132--, 1);
          }

          while (!((v132 < 0) ^ v101 | (v132 == 0)));
          goto LABEL_311;
        }

        goto LABEL_310;
      }

      v66 = v47 != 1 || v55;
      v67 = 31 - v46;
      if (!v66)
      {
        if (v62)
        {
          v157 = &refinement_distortion_lut_lossless;
        }

        else
        {
          v157 = &refinement_distortion_lut;
        }

        if (v15 < 1)
        {
          goto LABEL_310;
        }

        v296 = 0;
        v158 = (-1 << (v46 + 2)) & 0x7FFFFFFF;
        v159 = v15;
        v160 = v247;
        v161 = v248;
        while (v282 < 1)
        {
LABEL_282:
          v160 += 3;
          v161 += v293;
          v101 = __OFSUB__(v159--, 1);
          if ((v159 < 0) ^ v101 | (v159 == 0))
          {
            goto LABEL_311;
          }
        }

        v162 = v282;
        while (2)
        {
          v163 = *v160;
          if ((*v160 & 0x12480000) == 0)
          {
            if (!v160[2])
            {
              do
              {
                v162 -= 2;
                v161 += 2;
                v164 = v160[4];
                v160 += 2;
              }

              while (!v164);
            }

            goto LABEL_280;
          }

          if ((v163 & 0x80000) != 0)
          {
            v165 = *v161;
            v166 = &v303;
            if ((v163 & 0x1EF) != 0)
            {
              v166 = &v304;
            }

            if ((v165 & v158) != 0)
            {
              v167 = &v305;
            }

            else
            {
              v167 = v166;
            }

            v168 = v165 << v67;
            v296 += v157[v168 >> 26];
            mq_encoder::mq_encode(v54, v168 & 0x80000000, v167);
            if ((v163 & 0x400000) != 0)
            {
              goto LABEL_262;
            }

LABEL_250:
            if ((v163 & 0x2000000) == 0)
            {
              goto LABEL_251;
            }

LABEL_268:
            v173 = v161[v28];
            v174 = &v303;
            if ((v163 & 0x7BC0) != 0)
            {
              v174 = &v304;
            }

            if ((v173 & v158) != 0)
            {
              v175 = &v305;
            }

            else
            {
              v175 = v174;
            }

            v176 = v173 << v67;
            v296 += v157[v176 >> 26];
            mq_encoder::mq_encode(v54, v176 & 0x80000000, v175);
            if ((v163 & 0x10000000) == 0)
            {
LABEL_280:
              ++v161;
              ++v160;
              v101 = __OFSUB__(v162--, 1);
              if ((v162 < 0) ^ v101 | (v162 == 0))
              {
                goto LABEL_282;
              }

              continue;
            }
          }

          else
          {
            if ((v163 & 0x400000) == 0)
            {
              goto LABEL_250;
            }

LABEL_262:
            v169 = v161[v291];
            v170 = &v303;
            if ((v163 & 0xF78) != 0)
            {
              v170 = &v304;
            }

            if ((v169 & v158) != 0)
            {
              v171 = &v305;
            }

            else
            {
              v171 = v170;
            }

            v172 = v169 << v67;
            v296 += v157[v172 >> 26];
            mq_encoder::mq_encode(v54, v172 & 0x80000000, v171);
            if ((v163 & 0x2000000) != 0)
            {
              goto LABEL_268;
            }

LABEL_251:
            if ((v163 & 0x10000000) == 0)
            {
              goto LABEL_280;
            }
          }

          break;
        }

        v177 = v161[v293];
        v178 = &v303;
        if ((v163 & 0x3DE00) != 0)
        {
          v178 = &v304;
        }

        if ((v177 & v158) != 0)
        {
          v179 = &v305;
        }

        else
        {
          v179 = v178;
        }

        v180 = v177 << v67;
        v296 += v157[v180 >> 26];
        mq_encoder::mq_encode(v54, v180 & 0x80000000, v179);
        goto LABEL_280;
      }

      if (v47 == 1)
      {
        if (v62)
        {
          v181 = &refinement_distortion_lut_lossless;
        }

        else
        {
          v181 = &refinement_distortion_lut;
        }

        if (v15 >= 1)
        {
          v296 = 0;
          v182 = v247;
          v183 = v248;
          v184 = v15;
          while (v282 < 1)
          {
LABEL_307:
            v182 += 3;
            v183 += v293;
            v101 = __OFSUB__(v184--, 1);
            if ((v184 < 0) ^ v101 | (v184 == 0))
            {
              goto LABEL_311;
            }
          }

          v185 = v282;
          while (1)
          {
            v186 = *v182;
            if ((*v182 & 0x12480000) == 0)
            {
              if (!v182[2])
              {
                do
                {
                  v185 -= 2;
                  v183 += 2;
                  v187 = v182[4];
                  v182 += 2;
                }

                while (!v187);
              }

              goto LABEL_305;
            }

            if ((v186 & 0x80000) != 0)
            {
              v188 = *v183 << v67;
              v296 += v181[v188 >> 26];
              mq_encoder::raw_encode(v54, v188 >> 31);
              if ((v186 & 0x400000) == 0)
              {
LABEL_295:
                if ((v186 & 0x2000000) == 0)
                {
                  goto LABEL_296;
                }

                goto LABEL_303;
              }
            }

            else if ((v186 & 0x400000) == 0)
            {
              goto LABEL_295;
            }

            v189 = v183[v291] << v67;
            v296 += v181[v189 >> 26];
            mq_encoder::raw_encode(v54, v189 >> 31);
            if ((v186 & 0x2000000) == 0)
            {
LABEL_296:
              if ((v186 & 0x10000000) == 0)
              {
                goto LABEL_305;
              }

LABEL_304:
              v191 = v183[v293] << v67;
              v296 += v181[v191 >> 26];
              mq_encoder::raw_encode(v54, v191 >> 31);
              goto LABEL_305;
            }

LABEL_303:
            v190 = v183[v28] << v67;
            v296 += v181[v190 >> 26];
            mq_encoder::raw_encode(v54, v190 >> 31);
            if ((v186 & 0x10000000) != 0)
            {
              goto LABEL_304;
            }

LABEL_305:
            ++v183;
            ++v182;
            v101 = __OFSUB__(v185--, 1);
            if ((v185 < 0) ^ v101 | (v185 == 0))
            {
              goto LABEL_307;
            }
          }
        }

LABEL_310:
        v296 = 0;
        goto LABEL_311;
      }

      if (v46 >= 31)
      {
        kd_block_encoder::encode();
      }

      v110 = !v62;
      v68 = &significance_distortion_lut;
      if (!v110)
      {
        v68 = &significance_distortion_lut_lossless;
      }

      v281 = v68;
      if (v15 < 1)
      {
        goto LABEL_310;
      }

      v296 = 0;
      v295 = *(&significance_luts + *(v7 + 32));
      v70 = v247;
      v69 = v248;
      v71 = v68;
      while (2)
      {
        if (v282 < 1)
        {
          goto LABEL_137;
        }

        v252 = v15;
        v72 = 0;
        v275 = &v70[v266];
        v274 = v70 + v267;
        v272 = &v70[v265];
        v292 = &v69[v269];
        v280 = &v70[v270 / 4];
        v279 = &v70[v264];
        v276 = &v70[v263];
        v289 = v69;
        v290 = &v69[v268];
        v73 = &v69[v262];
        v74 = v282 + 1;
        v287 = &v69[v262];
        v284 = v70;
        do
        {
          v75 = v70[v72];
          if (v75)
          {
            if ((v75 & 0x300010) != 0)
            {
              goto LABEL_113;
            }

            v76 = v289;
            v77 = v289[v72] << v67;
            mq_encoder::mq_encode(v54, v77 & 0x80000000, &v300[2 * *(v295 + (v75 & 0x1EF))]);
            if ((v77 & 0x80000000) == 0)
            {
              v70 = v284;
              v73 = v287;
              goto LABEL_113;
            }

            v79 = v76[v72];
            v70 = v284;
            v73 = v287;
          }

          else
          {
            v78 = v289;
            if (((v289[v72] << v67) & 0x80000000) == 0)
            {
              if (((v292[v72] << v67) & 0x80000000) == 0)
              {
                if (((v73[v72] << v67) & 0x80000000) == 0)
                {
                  if (((v290[v72] << v67) & 0x80000000) == 0)
                  {
                    mq_encoder::mq_encode(v54, 0, &v301);
                    goto LABEL_135;
                  }

                  v96 = v290;
                  mq_encoder::mq_encode(v54, 0x80000000, &v301);
                  mq_encoder::mq_encode_run(v54, 3);
                  v75 = v70[v72];
                  v95 = v96[v72];
                  v94 = v95 << v67;
                  goto LABEL_127;
                }

                mq_encoder::mq_encode(v54, 0x80000000, &v301);
                mq_encoder::mq_encode_run(v54, 2);
                v75 = v70[v72];
                v89 = v73[v72];
                v88 = v89 << v67;
                goto LABEL_121;
              }

              mq_encoder::mq_encode(v54, 0x80000000, &v301);
              mq_encoder::mq_encode_run(v54, 1);
              v75 = v70[v72];
              v83 = v292[v72];
              v84 = v83 << v67;
              goto LABEL_116;
            }

            mq_encoder::mq_encode(v54, 0x80000000, &v301);
            mq_encoder::mq_encode_run(v54, 0);
            v75 = v70[v72];
            v79 = v78[v72];
            v77 = v79 << v67;
          }

          v296 += v71[(v77 >> 26) & 0x1F];
          v80 = &v70[v72];
          v81 = *(&sign_lut + ((v70[v72 - 1] >> 2) & 4 | (v75 >> 1) & 0x41 | v70[v72 + 1] & 0x10 | (((v70[v72 - 1] >> 2) & 0x80004 | (v75 >> 1) & 0x820041 | v70[v72 + 1] & 0x200010) >> 16)));
          mq_encoder::mq_encode(v54, v79 & 0x80000000 ^ (v81 << 31), &v294[(8 * v81) & 0x7F0]);
          *(v80 - 1) |= 0x20u;
          v80[1] |= 8u;
          if ((v79 & 0x80000000) == 0)
          {
            v75 |= 0x10u;
            if ((v286 & 8) != 0)
            {
              v71 = v281;
              goto LABEL_113;
            }

            v82 = 0x10000;
            v71 = v281;
LABEL_111:
            v272[v72] |= 0x20000u;
            *(v274 + v72 * 4) |= v82;
            v275[v72] |= 0x8000u;
            goto LABEL_113;
          }

          v75 |= 0x200010u;
          v82 = -2147418112;
          v71 = v281;
          if ((v286 & 8) == 0)
          {
            goto LABEL_111;
          }

LABEL_113:
          if ((v75 & 0x1800080) == 0)
          {
            v84 = v292[v72] << v67;
            mq_encoder::mq_encode(v54, v84 & 0x80000000, &v300[2 * *(v295 + ((v75 >> 3) & 0x1EFLL))]);
            if ((v84 & 0x80000000) != 0)
            {
              v83 = v292[v72];
LABEL_116:
              v296 += v71[(v84 >> 26) & 0x1F];
              v85 = &v70[v72];
              v86 = *(&sign_lut + ((v70[v72 - 1] >> 5) & 4 | (v75 >> 4) & 0x41 | (v70[v72 + 1] >> 3) & 0x10 | (((v70[v72 - 1] >> 5) & 0x80004 | (v75 >> 4) & 0x820041 | (v70[v72 + 1] >> 3) & 0x200010) >> 16)));
              v87 = v83 & 0x80000000;
              mq_encoder::mq_encode(v54, v83 & 0x80000000 ^ (v86 << 31), &v294[(8 * v86) & 0x7F0]);
              *(v85 - 1) |= 0x100u;
              v85[1] |= 0x40u;
              v75 |= (v87 >> 7) | 0x80;
            }
          }

          if ((v75 & 0xC000400) == 0)
          {
            v88 = v73[v72] << v67;
            mq_encoder::mq_encode(v54, v88 & 0x80000000, &v300[2 * *(v295 + ((v75 >> 6) & 0x1EFLL))]);
            if ((v88 & 0x80000000) != 0)
            {
              v89 = v73[v72];
LABEL_121:
              v296 += v71[(v88 >> 26) & 0x1F];
              v90 = &v70[v72];
              v91 = *(&sign_lut + ((v70[v72 - 1] >> 8) & 4 | (v75 >> 7) & 0x41 | (v70[v72 + 1] >> 6) & 0x10 | (((v70[v72 - 1] >> 8) & 0x80004 | (v75 >> 7) & 0x820041 | (v70[v72 + 1] >> 6) & 0x200010) >> 16)));
              v92 = v89 & 0x80000000;
              mq_encoder::mq_encode(v54, v89 & 0x80000000 ^ (v91 << 31), &v294[(8 * v91) & 0x7F0]);
              *(v90 - 1) |= 0x800u;
              v90[1] |= 0x200u;
              v75 |= (v92 >> 4) | 0x400;
            }
          }

          if ((v75 & 0x60002000) == 0)
          {
            v93 = v290;
            v94 = v290[v72] << v67;
            mq_encoder::mq_encode(v54, v94 & 0x80000000, &v300[2 * *(v295 + ((v75 >> 9) & 0x1EFLL))]);
            if ((v94 & 0x80000000) == 0)
            {
              v73 = v287;
              goto LABEL_134;
            }

            v95 = v93[v72];
            v73 = v287;
LABEL_127:
            v296 += v71[(v94 >> 26) & 0x1F];
            v97 = &v70[v72];
            v98 = *(&sign_lut + ((v75 >> 10) & 0x41 | (v70[v72 - 1] >> 11) & 4 | (v70[v72 + 1] >> 9) & 0x10 | (((v75 >> 10) & 0x20041 | (v75 >> 31 << 23) | (v70[v72 - 1] >> 11) & 0x80004 | (v70[v72 + 1] >> 9) & 0x200010) >> 16)));
            mq_encoder::mq_encode(v54, v95 & 0x80000000 ^ (v98 << 31), &v294[(8 * v98) & 0x7F0]);
            v276[v72] |= 4u;
            v279[v72] |= 1u;
            *(v97 - 1) |= 0x4000u;
            v97[1] |= 0x1000u;
            if (v95 >= 0)
            {
              v99 = 2;
            }

            else
            {
              v99 = 262146;
            }

            if (v95 >= 0)
            {
              v100 = 0x2000;
            }

            else
            {
              v100 = 1073750016;
            }

            v280[v72] |= v99;
            v75 |= v100;
          }

LABEL_134:
          v70[v72] = (v75 << 15) & 0x12480000 | v75 & 0xDB6FFFFF;
LABEL_135:
          ++v72;
          --v74;
        }

        while (v74 > 1);
        v69 = &v289[v72];
        v70 = (v70 + v72 * 4);
        v15 = v252;
LABEL_137:
        v70 += 3;
        v69 += v293;
        v101 = __OFSUB__(v15--, 1);
        if (!((v15 < 0) ^ v101 | (v15 == 0)))
        {
          continue;
        }

        break;
      }

LABEL_311:
      *&v306[v271] = v40 * v296;
      v7 = v249;
      if ((*(v249 + 28) & 0x20) != 0 && v258 == 2)
      {
        mq_encoder::mq_encode_run(v54, 2);
        mq_encoder::mq_encode_run(v54, 2);
      }

      v192 = v260 - 1;
      bytes_used = mq_encoder::get_bytes_used(v54);
      v15 = v251;
      if (v260 == 1)
      {
        v194 = mq_encoder::terminate(v54, (v286 & 0x10) == 0);
        v44 = 0;
        v261 += v257 - v194;
        v257 = v194;
      }

      else
      {
        v44 = bytes_used;
      }

      v297 = 0;
      v195 = v254;
      if (v271 >= v254)
      {
        v197 = &v298[64 * v254];
        v198 = 4 * v254;
        v196 = v254;
        do
        {
          v199 = v195;
          *(*(v249 + 56) + v198) = mq_encoder::get_incremental_length(v197, &v297);
          if (v297)
          {
            if (v199 != v196)
            {
              kd_block_encoder::encode();
            }

            v196 = (v196 + 1);
          }

          v195 = v199 + 1;
          v197 = (v197 + 64);
          v198 += 4;
        }

        while (v259 != v199 + 1);
      }

      else
      {
        v196 = v254;
      }

      v28 = 2 * v282;
      if (v8 > 0.0)
      {
        v200 = 0;
        v201 = 0.0;
        v202 = 3;
        v203 = 0.0;
        v204 = 0.0;
        v205 = v271;
        v206 = 0.0;
        while (1)
        {
          if (v205 <= 6)
          {
            v207 = 6;
          }

          else
          {
            v207 = v205;
          }

          v208 = v207 - 7;
          if (v205 > v208)
          {
            v209 = 0;
            v210 = 0.0;
            v211 = 0.0;
            do
            {
              v210 = v210 + *(*(v249 + 56) + 4 * (v205 + v209));
              v211 = v211 + *&v306[v205 + v209];
              if (!v209 || v203 * v210 > v201 * v211)
              {
                v203 = v211;
                v201 = v210;
              }

              --v209;
            }

            while (v205 + v209 > v208);
          }

          v212 = v8 * v201;
          if ((v271 - v205) >= 3)
          {
            v213 = v202;
            do
            {
              v212 = v212 * 3.0;
              v213 -= 3;
            }

            while (v213 > 5);
          }

          if (v203 > v212)
          {
            break;
          }

          if (v203 > 0.0 && v201 > 0.0 && (v200 < 1 || v204 * v203 > v206 * v201))
          {
            ++v200;
            v206 = v203;
            v204 = v201;
          }

          v101 = __OFSUB__(v205--, 1);
          if (v205 < 0 == v101)
          {
            ++v202;
            if (v200 < 3)
            {
              continue;
            }
          }

          if (v200 < 2)
          {
            break;
          }

          if (v271 - v205 < 3)
          {
            break;
          }

          v214 = v271 + 1;
          *(v249 + 48) = v271 + 1;
          if (v260 < 2)
          {
            break;
          }

          mq_encoder::terminate(v54, (v286 & 0x10) == 0);
          if (v271 >= v196)
          {
            v215 = &v298[64 * v196];
            v216 = 4 * v196;
            v217 = v196 + v255;
            do
            {
              v297 = 0;
              *(*(v249 + 56) + v216) = mq_encoder::get_incremental_length(v215, &v297);
              if (!v297)
              {
                kd_block_encoder::encode();
              }

              v215 = (v215 + 64);
              v216 += 4;
              v9 = __CFADD__(v217++, 1);
            }

            while (!v9);
            v196 = v259;
            v28 = 2 * v282;
          }

          goto LABEL_358;
        }
      }

      v214 = v271 + 1;
      if (v260 != 1)
      {
        if (v214 >= *(v249 + 48))
        {
          kd_block_encoder::encode();
        }

LABEL_361:
        v47 = v258 + 1;
        ++v259;
        v260 = v192;
        --v255;
        v271 = v214;
        v43 = v196;
        v46 = v253;
        v45 = v261;
        continue;
      }

      break;
    }

LABEL_358:
    if (v214 != v196)
    {
      kd_block_encoder::encode();
    }

    mq_encoder::finish(v54);
    v42 = *(v249 + 48);
    if (v214 < v42)
    {
      v192 = 0;
      goto LABEL_361;
    }

    v24 = v239;
LABEL_364:
    if (v196 != v42)
    {
      kd_block_encoder::encode();
    }

    if (v5 > 0.0 && v196 >= 1)
    {
      v218 = 0;
      v220 = *(v7 + 56);
      v219 = *(v7 + 64);
      do
      {
        v221 = v218 - 9;
        if (v218 < 9)
        {
          v221 = 0;
        }

        if (v218 >= v221)
        {
          v223 = -1.0;
          v224 = 0.0;
          v225 = v218;
          v226 = 0.0;
          while (1)
          {
            v224 = v224 + *&v306[v225];
            if (v224 <= 0.0)
            {
              break;
            }

            v226 = v226 + *(v220 + 4 * v225);
            if (v226 > 0.0 && (v223 < 0.0 || v223 * v226 > v224))
            {
              v223 = v224 / v226;
            }

            v21 = v225-- <= v221;
            if (v21)
            {
              if (v223 <= 0.0)
              {
                break;
              }

              v227 = v223 * 2.32830644e-10;
              if (v227 > 1.0)
              {
                v227 = 1.0;
              }

              v228 = log(v227) * 369.32993 + 65536.0;
              if (v228 <= 65535.0)
              {
                if (v228 >= 2.0)
                {
                  v222 = v228;
                }

                else
                {
                  LOWORD(v222) = 2;
                }
              }

              else
              {
                LOWORD(v222) = -1;
              }

              goto LABEL_372;
            }
          }
        }

        LOWORD(v222) = 0;
LABEL_372:
        *(v219 + 2 * v218++) = v222;
      }

      while (v218 != v196);
      v229 = 0;
      v230 = v196 - 1;
      v231 = (v219 + 2);
      v15 = v251;
      do
      {
        v232 = v229 + 1;
        if (v229 + 1 < v196)
        {
          v233 = v231;
          v234 = v230;
          while (1)
          {
            v235 = *v233++;
            if (v235 >= *(v219 + 2 * v229))
            {
              break;
            }

            if (!--v234)
            {
              goto LABEL_396;
            }
          }

          *(v219 + 2 * v229) = 0;
        }

LABEL_396:
        --v230;
        ++v231;
        ++v229;
      }

      while (v232 != v196);
      if (v196 == v238 && v250)
      {
        v236 = v219 + 2 * v238;
        if (!*(v236 - 2))
        {
          *(v236 - 2) = 1;
        }
      }
    }

    v21 = v246-- <= 1;
    v26 = v282;
  }

  while (!v21);
  return kdu_block::finish_timing(v7);
}

uint64_t mq_encoder::augment_buffer(uint64_t this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = *(this + 16);
  if (v3)
  {
    if (!a3 || !a2 || (*(this + 33) & 1) != 0)
    {
      mq_encoder::augment_buffer();
    }

    v4 = *(this + 24) + a3 - a2;
    *(this + 16) = v3 + a3 - a2;
    *(this + 24) = v4;
  }

  return this;
}

__n128 mq_encoder::continues(mq_encoder *this, mq_encoder *a2)
{
  if ((*(this + 35) & 1) != 0 || *(this + 2))
  {
    mq_encoder::continues();
  }

  if ((*(a2 + 35) & 1) == 0)
  {
    mq_encoder::continues();
  }

  if (*(a2 + 33) == 1)
  {
    mq_encoder::continues();
  }

  result = *a2;
  v3 = *(a2 + 1);
  v4 = *(a2 + 2);
  *(this + 41) = *(a2 + 41);
  *(this + 1) = v3;
  *(this + 2) = v4;
  *this = result;
  *(this + 5) = a2;
  *(a2 + 6) = this;
  *(a2 + 35) = 0;
  return result;
}

uint64_t mq_encoder::get_bytes_used(mq_encoder *this)
{
  if ((*(this + 33) & 1) != 0 || (v1 = *(this + 2)) == 0)
  {
    mq_encoder::get_bytes_used();
  }

  return (*(this + 6) - v1);
}

uint64_t mq_encoder::get_incremental_length(mq_encoder *this, BOOL *a2)
{
  v4 = *(this + 36);
  if ((v4 & 1) == 0)
  {
    v5 = this;
    do
    {
      v6 = v5;
      v5 = *(v5 + 6);
    }

    while (v5);
    v7 = v6;
    do
    {
      if (*(v7 + 36))
      {
        break;
      }

      if ((*(v7 + 35) & 1) == 0)
      {
        v8 = *(v6 + 3);
        if (&v8[-*(v7 + 24)] >= 5)
        {
          mq_encoder::find_truncation_point(v7, v8);
        }
      }

      v7 = *(v7 + 40);
    }

    while (v7);
    v4 = *(this + 36);
  }

  *a2 = v4;
  v9 = *(this + 5);
  if (v9)
  {
    v10 = (v9 + 24);
  }

  else
  {
    v10 = (this + 16);
  }

  return (*(this + 6) - *v10);
}

uint64_t mq_encoder::finish(uint64_t this)
{
  if ((*(this + 35) & 1) != 0 || *(this + 48))
  {
    mq_encoder::finish();
  }

  do
  {
    if (*(this + 35) == 1)
    {
      mq_encoder::finish();
    }

    v1 = *(this + 40);
    *(this + 36) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
    *(this + 40) = 0;
    *(this + 48) = 0;
    this = v1;
  }

  while (v1);
  return this;
}

clock_t kdu_block::finish_timing(clock_t this)
{
  if (*(this + 136))
  {
    v1 = this;
    this = clock();
    v2 = *(v1 + 18);
    *(v1 + 20) += this - *(v1 + 19);
    *(v1 + 18) = v2 + *v1 * v1[1];
  }

  return this;
}

void kd_block_encoder::~kd_block_encoder(kd_block_encoder *this)
{
  *this = &unk_1EF4D32F0;
}

{
  *this = &unk_1EF4D32F0;
  JUMPOUT(0x186602850);
}

clock_t kd_block_decoder::decode(kd_block_decoder *this, kdu_block *a2)
{
  v193 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = *(a2 + 1);
  v5 = ((*a2 + 3) & 0xFFFFFFFC) * v4;
  v6 = v4 + 3;
  v145 = (*a2 + 3) >> 2;
  v7 = (v145 + 2) * (v4 + 3);
  if (*(a2 + 28) < v5)
  {
    if (v5 <= 4096)
    {
      v8 = 4096;
    }

    else
    {
      v8 = ((*a2 + 3) & 0xFFFFFFFC) * v4;
    }

    kdu_block::set_max_samples(a2, v8);
  }

  if (*(a2 + 29) <= v7)
  {
    if (v7 <= 1599)
    {
      v9 = 1599;
    }

    else
    {
      v9 = (v145 + 2) * (v4 + 3);
    }

    kdu_block::set_max_contexts(a2, v9 + 1);
  }

  v178 = v4;
  v150 = a2;
  if (*(a2 + 34))
  {
    *(a2 + 19) = clock();
    v10 = *(a2 + 34);
  }

  else
  {
    v10 = 1;
  }

  v134 = v10;
  memset(v185, 0, sizeof(v185));
  v191 = 0u;
  v192 = 0u;
  v190 = 0u;
  v175 = v6;
  v132 = 4 * v6 * v145 + 4;
  v133 = 4 * v5;
  v131 = v3 & 3;
  memset(v189, 0, sizeof(v189));
  v188 = 0u;
  v169 = -3 - v4;
  v179 = 3 * v4;
  v141 = (v4 + 3) & 0xFFFFFFFC;
  memset(v187, 0, sizeof(v187));
  v130 = 4 * (v145 - 1) * v6 + 4 * v6 + 8;
  v146 = vdupq_n_s64(v4 - 1);
  v160 = 4 * v4;
  v161 = v6;
  v158 = -12 - v160;
  v159 = 4 * v179;
  v11 = vdup_n_s32(0x49200000u);
  v167 = -2 - v4;
  v168 = -4 - v4;
  v157 = -2 - v4;
  v173 = v4 + 4;
  v174 = v4 + 2;
  v155 = v4 + 4;
  v156 = -4 - v4;
  v154 = v4 + 2;
  v153 = v4 + 1;
  v177 = 2 * v4;
  v152 = 8 * v4;
  v181 = v4;
  while (1)
  {
LABEL_15:
    v139 = *(v150 + 12);
    bzero(v139, v133);
    v12 = *(v150 + 13);
    v13 = (v12 + 4 * v175);
    bzero(v13, v132);
    if (v131 > 1)
    {
      v14 = v131 == 3 ? 0x40000000 : 1207959552;
    }

    else
    {
      if (!v131)
      {
        goto LABEL_30;
      }

      v14 = 1224736768;
    }

    if (v4 >= 1)
    {
      v15 = 0;
      v16 = (v12 + v130);
      do
      {
        v17 = vdupq_n_s64(v15);
        v18 = vmovn_s64(vcgeq_u64(v146, vorrq_s8(v17, xmmword_186205EC0)));
        if (vuzp1_s16(v18, *v17.i8).u8[0])
        {
          *(v16 - 1) = v14;
        }

        if (vuzp1_s16(v18, *&v17).i8[2])
        {
          *v16 = v14;
        }

        v19 = vmovn_s64(vcgeq_u64(v146, vorrq_s8(v17, xmmword_186205EB0)));
        if (vuzp1_s16(v19, v19).i32[1])
        {
          v16[1] = v14;
          v16[2] = v14;
        }

        v15 += 4;
        v16 += 4;
      }

      while (v141 != v15);
    }

LABEL_30:
    if (v145 >= 1)
    {
      v20 = (v12 + v160 + v161 * 4 + 12);
      v21 = v145 + 1;
      do
      {
        v20->i32[0] = 1226833920;
        v20[-1] = v11;
        v20 = (v20 + v161 * 4);
        --v21;
      }

      while (v21 > 1);
    }

    v22 = *(v150 + 11);
    v23 = *(v150 + 10) - v22;
    if (v23 < 1)
    {
      return kdu_block::finish_timing(v150);
    }

    v24 = 30 - v22;
    LODWORD(v25) = 3 * (30 - v22) - 2;
    v26 = *(v150 + 12);
    v25 = v25 >= v26 ? v26 : v25;
    v143 = v25;
    v176 = *(v150 + 7);
    if ((v176 & 0x10) != 0)
    {
      v27 = (*(v150 + 37) & 1) != 0 ? 1 : *(v150 + 36);
      v136 = v27;
    }

    else
    {
      v136 = 0;
    }

    if (v143 < 1)
    {
      break;
    }

    v148 = 0;
    v28 = 0;
    v147 = 0;
    v140 = 0;
    LODWORD(v151) = 0;
    v137 = 0;
    v138 = (v13 + 4);
    v135 = 3 * v23 - 2;
    v142 = *(v150 + 9);
    v29 = 2;
    while (1)
    {
      v162 = v28;
      v30 = v24 - 1;
      v31 = v29 == 3 ? v24 - 1 : v24;
      v180 = v31;
      v32 = v29 == 3 ? 0 : v29;
      v149 = v32;
      if (v151)
      {
        if (v28)
        {
          goto LABEL_78;
        }
      }

      else
      {
        v33 = *(v150 + 7);
        if (v33)
        {
          if (v149 == 2)
          {
            v35 = 1;
          }

          else
          {
            v35 = 2;
          }

          v36 = v28;
          if (v28 <= 9)
          {
            v35 = 10 - v28;
          }

          v37 = v147;
          if (v28 > 9)
          {
            v37 = v149 != 2;
          }

          v147 = v37;
          v34 = v135;
        }

        else
        {
          v34 = v135;
          v35 = v135;
          v36 = v28;
        }

        if ((v33 & 4) != 0)
        {
          LODWORD(v38) = 1;
        }

        else
        {
          LODWORD(v38) = v35;
        }

        v39 = v38 + v36 > v143;
        if (v38 + v36 <= v143)
        {
          v38 = v38;
        }

        else
        {
          v38 = (v143 - v36);
        }

        if (v143 >= v34)
        {
          v39 = 0;
        }

        v140 = v39;
        v151 = v38;
        if (v38 < 1)
        {
          v41 = 0;
        }

        else
        {
          v40 = 0;
          v41 = 0;
          do
          {
            v41 += *(*(v150 + 7) + v148 + 4 * v40++);
          }

          while (v40 < v151);
        }

        mq_decoder::start(v185, v142, v41, !v147);
        v142 += v41;
        v137 = v162;
        LODWORD(v4) = v181;
        if (v162)
        {
LABEL_78:
          if ((*(v150 + 28) & 2) == 0)
          {
            goto LABEL_82;
          }
        }
      }

      v42 = 0;
      v43 = mq_decoder::p_bar_table[0] << 8;
      do
      {
        v44 = &v187[v42];
        *v44 = v43;
        *(v44 + 1) = &mq_decoder::transition_table;
        ++v42;
      }

      while (v42 != 18);
      LODWORD(v187[0]) = unk_1EA8D9554 << 8;
      *(&v187[0] + 1) = &unk_1EA8E0948;
      LODWORD(v188) = dword_1EA8D9550 << 8;
      *(&v188 + 1) = &unk_1EA8E0908;
LABEL_82:
      if (v29 == 3 && !v147)
      {
        v64 = *(v150 + 8);
        v182[0] = 0;
        if (v145 >= 1)
        {
          v65 = *(&significance_luts + v64);
          v66 = (1 << v30) + (1 << v30 >> 1);
          v67 = v138;
          v68 = v139;
          v69 = v145;
          do
          {
            v172 = v69;
            if (v4 >= 1)
            {
              v70 = v4;
              do
              {
                v71 = *v67;
                if (*v67)
                {
                  if ((v71 & 0x1EF) != 0 && (v71 & 0x200010) == 0)
                  {
                    mq_decoder::mq_decode(v185, v182, &v187[*(v65 + (v71 & 0x1EF))]);
                    if (v182[0])
                    {
                      v182[0] = (v71 >> 1) & 0x820041;
                      v73 = v67[1] & 0x200010 | (*(v67 - 1) >> 2) & 0x80004 | v182[0];
                      v182[0] = v73 | HIWORD(v73);
                      v74 = sign_lut[(v73 | BYTE2(v73))];
                      mq_decoder::mq_decode(v185, v182, v189 + ((8 * v74) & 0x7F0));
                      v182[0] ^= v74 & 1;
                      if ((v176 & 8) == 0)
                      {
                        v67[v168] |= 0x20000u;
                        v67[v169] |= (v182[0] << 31) | 0x10000;
                        v67[v167] |= 0x8000u;
                      }

                      *(v67 - 1) |= 0x20u;
                      v67[1] |= 8u;
                      v71 |= (v182[0] << 21) | 0x100010;
                      *v68 = v66 + (v182[0] << 31);
                    }

                    else
                    {
                      v71 |= 0x100000u;
                    }

                    LODWORD(v4) = v181;
                  }

                  if ((v71 & 0xF78) != 0 && (v71 & 0x1000080) == 0)
                  {
                    mq_decoder::mq_decode(v185, v182, &v187[*(v65 + ((v71 >> 3) & 0x1EFLL))]);
                    if (v182[0])
                    {
                      v182[0] = (v71 >> 4) & 0x820041;
                      v77 = (*(v67 - 1) >> 5) & 0x80004 | v182[0] | (v67[1] >> 3) & 0x200010;
                      v182[0] = v77 | HIWORD(v77);
                      v78 = sign_lut[(v77 | BYTE2(v77))];
                      mq_decoder::mq_decode(v185, v182, v189 + ((8 * v78) & 0x7F0));
                      v182[0] ^= v78 & 1;
                      *(v67 - 1) |= 0x100u;
                      v67[1] |= 0x40u;
                      v71 |= (v182[0] << 24) | 0x800080;
                      v68[v178] = v66 + (v182[0] << 31);
                    }

                    else
                    {
                      v71 |= 0x800000u;
                    }

                    LODWORD(v4) = v181;
                  }

                  if ((v71 & 0x7BC0) != 0 && (v71 & 0x8000400) == 0)
                  {
                    mq_decoder::mq_decode(v185, v182, &v187[*(v65 + ((v71 >> 6) & 0x1EFLL))]);
                    if (v182[0])
                    {
                      v182[0] = (v71 >> 7) & 0x820041;
                      v79 = (*(v67 - 1) >> 8) & 0x80004 | v182[0] | (v67[1] >> 6) & 0x200010;
                      v182[0] = v79 | HIWORD(v79);
                      v80 = sign_lut[(v79 | BYTE2(v79))];
                      mq_decoder::mq_decode(v185, v182, v189 + ((8 * v80) & 0x7F0));
                      v182[0] ^= v80 & 1;
                      *(v67 - 1) |= 0x800u;
                      v67[1] |= 0x200u;
                      v71 |= (v182[0] << 27) | 0x4000400;
                      v68[v177] = v66 + (v182[0] << 31);
                    }

                    else
                    {
                      v71 |= 0x4000000u;
                    }

                    LODWORD(v4) = v181;
                  }

                  if ((v71 & 0x3DE00) != 0 && (v71 & 0x40002000) == 0)
                  {
                    mq_decoder::mq_decode(v185, v182, &v187[*(v65 + ((v71 >> 9) & 0x1EFLL))]);
                    if (v182[0])
                    {
                      v182[0] = (v71 >> 10) & 0x20041 | (v71 >> 31 << 23);
                      v81 = (*(v67 - 1) >> 11) & 0x80004 | (v67[1] >> 9) & 0x200010 | v182[0];
                      v182[0] = v81 | HIWORD(v81);
                      v82 = sign_lut[(v81 | BYTE2(v81))];
                      mq_decoder::mq_decode(v185, v182, v189 + ((8 * v82) & 0x7F0));
                      v182[0] ^= v82 & 1;
                      v67[v174] |= 4u;
                      v67[v175] |= (v182[0] << 18) | 2;
                      v67[v173] |= 1u;
                      *(v67 - 1) |= 0x4000u;
                      v67[1] |= 0x1000u;
                      v71 |= (v182[0] << 30) | 0x20002000;
                      v68[v179] = v66 + (v182[0] << 31);
                    }

                    else
                    {
                      v71 |= 0x20000000u;
                    }

                    LODWORD(v4) = v181;
                  }

                  *v67 = v71;
                }

                else if (!v67[3])
                {
                  do
                  {
                    v70 -= 3;
                    v68 += 3;
                    v75 = v67[6];
                    v67 += 3;
                  }

                  while (!v75);
                }

                ++v68;
                ++v67;
                v63 = __OFSUB__(v70--, 1);
              }

              while (!((v70 < 0) ^ v63 | (v70 == 0)));
            }

            v67 += 3;
            v68 += v179;
            v69 = v172 - 1;
          }

          while (v172 > 1);
        }

        goto LABEL_267;
      }

      if (v29 == 3)
      {
        v182[0] = 0;
        if (v145 >= 1)
        {
          v83 = (1 << v30) + (1 << v30 >> 1);
          v84 = v138;
          v85 = v139;
          v86 = v145;
          do
          {
            if (v4 >= 1)
            {
              v165 = v86;
              v87 = 0;
              v88 = v153;
              do
              {
                v89 = v84[v87];
                if (v89)
                {
                  if ((v89 & 0x1EF) != 0 && (v89 & 0x200010) == 0)
                  {
                    mq_decoder::raw_decode(v185, v182);
                    if (v182[0])
                    {
                      mq_decoder::raw_decode(v185, v182);
                      if ((v176 & 8) == 0)
                      {
                        v84[v156 + v87] |= 0x20000u;
                        *(v84 + v158 + v87 * 4) |= (v182[0] << 31) | 0x10000;
                        v84[v157 + v87] |= 0x8000u;
                      }

                      v91 = &v84[v87];
                      *(v91 - 1) = v84[v87 - 1] | 0x20;
                      v91[1] = v84[v87 + 1] | 8;
                      v89 |= (v182[0] << 21) | 0x100010;
                      *&v85[v87 * 4] = v83 + (v182[0] << 31);
                    }

                    else
                    {
                      v89 |= 0x100000u;
                    }
                  }

                  if ((v89 & 0xF78) != 0 && (v89 & 0x1000080) == 0)
                  {
                    mq_decoder::raw_decode(v185, v182);
                    if (v182[0])
                    {
                      mq_decoder::raw_decode(v185, v182);
                      v93 = &v84[v87];
                      *(v93 - 1) = v84[v87 - 1] | 0x100;
                      v93[1] = v84[v87 + 1] | 0x40;
                      v89 |= (v182[0] << 24) | 0x800080;
                      *&v85[v160 + v87 * 4] = v83 + (v182[0] << 31);
                    }

                    else
                    {
                      v89 |= 0x800000u;
                    }
                  }

                  if ((v89 & 0x7BC0) != 0 && (v89 & 0x8000400) == 0)
                  {
                    mq_decoder::raw_decode(v185, v182);
                    if (v182[0])
                    {
                      mq_decoder::raw_decode(v185, v182);
                      v95 = &v84[v87];
                      *(v95 - 1) = v84[v87 - 1] | 0x800;
                      v95[1] = v84[v87 + 1] | 0x200;
                      v89 |= (v182[0] << 27) | 0x4000400;
                      *&v85[v152 + v87 * 4] = v83 + (v182[0] << 31);
                    }

                    else
                    {
                      v89 |= 0x4000000u;
                    }
                  }

                  if ((v89 & 0x3DE00) != 0 && (v89 & 0x40002000) == 0)
                  {
                    mq_decoder::raw_decode(v185, v182);
                    if (v182[0])
                    {
                      mq_decoder::raw_decode(v185, v182);
                      v84[v154 + v87] |= 4u;
                      v84[v161 + v87] |= (v182[0] << 18) | 2;
                      v84[v155 + v87] |= 1u;
                      v96 = &v84[v87];
                      *(v96 - 1) = v84[v87 - 1] | 0x4000;
                      v96[1] = v84[v87 + 1] | 0x1000;
                      v89 |= (v182[0] << 30) | 0x20002000;
                      *&v85[v159 + v87 * 4] = v83 + (v182[0] << 31);
                    }

                    else
                    {
                      v89 |= 0x20000000u;
                    }
                  }

                  v84[v87] = v89;
                }

                ++v87;
                --v88;
              }

              while (v88 > 1);
              v85 += v87 * 4;
              v84 = (v84 + v87 * 4);
              LODWORD(v4) = v181;
              v86 = v165;
            }

            v84 += 3;
            v85 += 4 * v179;
            v63 = __OFSUB__(v86--, 1);
          }

          while (!((v86 < 0) ^ v63 | (v86 == 0)));
        }

        goto LABEL_267;
      }

      if (v29 == 1 && !v147)
      {
        v182[0] = 0;
        if (v145 >= 1)
        {
          v97 = 1 << v24 >> 1;
          v98 = v138;
          v99 = v139;
          v100 = v145;
          do
          {
            if (v4 >= 1)
            {
              v101 = v4;
              do
              {
                v102 = *v98;
                if ((*v98 & 0x12480000) != 0)
                {
                  if ((v102 & 0x80000) != 0)
                  {
                    v103 = *v99;
                    v104 = (*v99 & 0x7FFFFFFFu) >> v180;
                    v182[0] = v104;
                    v105 = &v190;
                    if ((v102 & 0x1EF) != 0)
                    {
                      v105 = &v191;
                    }

                    if (v104 >= 4)
                    {
                      v106 = &v192;
                    }

                    else
                    {
                      v106 = v105;
                    }

                    mq_decoder::mq_decode(v185, v182, v106);
                    *v99 = ((1 - v182[0]) << v180) ^ v103 | v97;
                    LODWORD(v4) = v181;
                  }

                  if ((v102 & 0x400000) != 0)
                  {
                    v107 = v99[v178];
                    v182[0] = (v107 & 0x7FFFFFFFu) >> v180;
                    v108 = &v190;
                    if ((v102 & 0xF78) != 0)
                    {
                      v108 = &v191;
                    }

                    if ((v107 & 0x7FFFFFFFu) >> v180 >= 4)
                    {
                      v109 = &v192;
                    }

                    else
                    {
                      v109 = v108;
                    }

                    mq_decoder::mq_decode(v185, v182, v109);
                    v99[v178] = ((1 - v182[0]) << v180) ^ v107 | v97;
                    LODWORD(v4) = v181;
                  }

                  if ((v102 & 0x2000000) != 0)
                  {
                    v110 = v99[v177];
                    v182[0] = (v110 & 0x7FFFFFFFu) >> v180;
                    v111 = &v190;
                    if ((v102 & 0x7BC0) != 0)
                    {
                      v111 = &v191;
                    }

                    if ((v110 & 0x7FFFFFFFu) >> v180 >= 4)
                    {
                      v112 = &v192;
                    }

                    else
                    {
                      v112 = v111;
                    }

                    mq_decoder::mq_decode(v185, v182, v112);
                    v99[v177] = ((1 - v182[0]) << v180) ^ v110 | v97;
                    LODWORD(v4) = v181;
                  }

                  if ((v102 & 0x10000000) != 0)
                  {
                    v113 = v99[v179];
                    v182[0] = (v113 & 0x7FFFFFFFu) >> v180;
                    v114 = &v190;
                    if ((v102 & 0x3DE00) != 0)
                    {
                      v114 = &v191;
                    }

                    if ((v113 & 0x7FFFFFFFu) >> v180 >= 4)
                    {
                      v115 = &v192;
                    }

                    else
                    {
                      v115 = v114;
                    }

                    mq_decoder::mq_decode(v185, v182, v115);
                    v99[v179] = ((1 - v182[0]) << v180) ^ v113 | v97;
                    LODWORD(v4) = v181;
                  }
                }

                else if (!v98[2])
                {
                  do
                  {
                    v101 -= 2;
                    v99 += 2;
                    v116 = v98[4];
                    v98 += 2;
                  }

                  while (!v116);
                }

                ++v99;
                ++v98;
                v63 = __OFSUB__(v101--, 1);
              }

              while (!((v101 < 0) ^ v63 | (v101 == 0)));
            }

            v98 += 3;
            v99 += v179;
            v63 = __OFSUB__(v100--, 1);
          }

          while (!((v100 < 0) ^ v63 | (v100 == 0)));
        }

        goto LABEL_267;
      }

      if (v29 == 1)
      {
        v182[0] = 0;
        if (v145 >= 1)
        {
          v117 = 1 << v24 >> 1;
          v118 = v138;
          v119 = v139;
          v120 = v145;
          do
          {
            if (v4 >= 1)
            {
              v121 = v4;
              do
              {
                v122 = *v118;
                if ((*v118 & 0x12480000) != 0)
                {
                  if ((v122 & 0x80000) != 0)
                  {
                    mq_decoder::raw_decode(v185, v182);
                    v182[0] = (1 - v182[0]) << v180;
                    v182[0] = v182[0] ^ *v119 | v117;
                    *v119 = v182[0];
                    LODWORD(v4) = v181;
                  }

                  if ((v122 & 0x400000) != 0)
                  {
                    mq_decoder::raw_decode(v185, v182);
                    v182[0] = (1 - v182[0]) << v180;
                    v182[0] = v182[0] ^ v119[v178] | v117;
                    v119[v178] = v182[0];
                    LODWORD(v4) = v181;
                  }

                  if ((v122 & 0x2000000) != 0)
                  {
                    mq_decoder::raw_decode(v185, v182);
                    v182[0] = (1 - v182[0]) << v180;
                    v182[0] = v182[0] ^ v119[v177] | v117;
                    v119[v177] = v182[0];
                    LODWORD(v4) = v181;
                  }

                  if ((v122 & 0x10000000) != 0)
                  {
                    mq_decoder::raw_decode(v185, v182);
                    v182[0] = (1 - v182[0]) << v180;
                    v182[0] = v182[0] ^ v119[v179] | v117;
                    v119[v179] = v182[0];
                    LODWORD(v4) = v181;
                  }
                }

                else if (!v118[2])
                {
                  do
                  {
                    v121 -= 2;
                    v119 += 2;
                    v123 = v118[4];
                    v118 += 2;
                  }

                  while (!v123);
                }

                ++v119;
                ++v118;
                v63 = __OFSUB__(v121--, 1);
              }

              while (!((v121 < 0) ^ v63 | (v121 == 0)));
            }

            v118 += 3;
            v119 += v179;
            v63 = __OFSUB__(v120--, 1);
          }

          while (!((v120 < 0) ^ v63 | (v120 == 0)));
        }

LABEL_267:
        v46 = v162;
        goto LABEL_268;
      }

      v45 = *(v150 + 8);
      *v182 = v188;
      v186 = 0;
      v46 = v162;
      if (v145 < 1)
      {
        goto LABEL_120;
      }

      v47 = *(&significance_luts + v45);
      v171 = (1 << v24) + (1 << v24 >> 1);
      v49 = v138;
      v48 = v139;
      v50 = v145;
      while (2)
      {
        if (v4 < 1)
        {
          goto LABEL_118;
        }

        v144 = v50;
        v51 = 0;
        v170 = &v48[v159];
        v166 = v48;
        v163 = &v48[v160];
        v164 = &v48[v152];
        v52 = v153;
        do
        {
          v53 = v49[v51];
          if (v53)
          {
            goto LABEL_91;
          }

          mq_decoder::mq_decode(v185, &v186, v182);
          LODWORD(v4) = v181;
          if (!v186)
          {
            goto LABEL_116;
          }

          mq_decoder::mq_decode_run(v185, &v186);
          v53 = v49[v51];
          if (v186 <= 1)
          {
            LODWORD(v4) = v181;
            if (v186)
            {
              if (v186 != 1)
              {
LABEL_91:
                if ((v53 & 0x300010) != 0)
                {
                  goto LABEL_102;
                }

                mq_decoder::mq_decode(v185, &v186, &v187[*(v47 + (v53 & 0x1EF))]);
                LODWORD(v4) = v181;
                if (!v186)
                {
                  goto LABEL_102;
                }

                goto LABEL_99;
              }

LABEL_104:
              v186 = (v53 >> 4) & 0x820041;
              v57 = (v49[v51 - 1] >> 5) & 0x80004 | v186 | (v49[v51 + 1] >> 3) & 0x200010;
              v186 = v57 | HIWORD(v57);
              v58 = sign_lut[(v57 | BYTE2(v57))];
              mq_decoder::mq_decode(v185, &v186, v189 + ((8 * v58) & 0x7F0));
              v186 ^= v58 & 1;
              v49[v51 - 1] |= 0x100u;
              v49[v51 + 1] |= 0x40u;
              v53 |= (v186 << 24) | 0x80;
              *&v163[v51 * 4] = v171 + (v186 << 31);
              LODWORD(v4) = v181;
            }

            else
            {
LABEL_99:
              v186 = (v53 >> 1) & 0x820041;
              v54 = &v49[v51];
              v55 = v49[v51 + 1] & 0x200010 | (v49[v51 - 1] >> 2) & 0x80004 | v186;
              v186 = v55 | HIWORD(v55);
              v56 = sign_lut[(v55 | BYTE2(v55))];
              mq_decoder::mq_decode(v185, &v186, v189 + ((8 * v56) & 0x7F0));
              v186 ^= v56 & 1;
              if ((v176 & 8) == 0)
              {
                v49[v156 + v51] |= 0x20000u;
                *(v49 + v158 + v51 * 4) |= (v186 << 31) | 0x10000;
                v49[v157 + v51] |= 0x8000u;
              }

              *(v54 - 1) |= 0x20u;
              v54[1] |= 8u;
              v53 |= (v186 << 21) | 0x10;
              *&v166[v51 * 4] = v171 + (v186 << 31);
              LODWORD(v4) = v181;
LABEL_102:
              if ((v53 & 0x1800080) == 0)
              {
                mq_decoder::mq_decode(v185, &v186, &v187[*(v47 + ((v53 >> 3) & 0x1EFLL))]);
                LODWORD(v4) = v181;
                if (v186)
                {
                  goto LABEL_104;
                }
              }
            }

            if ((v53 & 0xC000400) == 0)
            {
              mq_decoder::mq_decode(v185, &v186, &v187[*(v47 + ((v53 >> 6) & 0x1EFLL))]);
              LODWORD(v4) = v181;
              if (v186)
              {
LABEL_111:
                v186 = (v53 >> 7) & 0x820041;
                v59 = (v49[v51 - 1] >> 8) & 0x80004 | v186 | (v49[v51 + 1] >> 6) & 0x200010;
                v186 = v59 | HIWORD(v59);
                v60 = sign_lut[(v59 | BYTE2(v59))];
                mq_decoder::mq_decode(v185, &v186, v189 + ((8 * v60) & 0x7F0));
                v186 ^= v60 & 1;
                v49[v51 - 1] |= 0x800u;
                v49[v51 + 1] |= 0x200u;
                v53 |= (v186 << 27) | 0x400;
                *&v164[v51 * 4] = v171 + (v186 << 31);
                LODWORD(v4) = v181;
              }
            }

            if ((v53 & 0x60002000) != 0)
            {
              goto LABEL_115;
            }

            mq_decoder::mq_decode(v185, &v186, &v187[*(v47 + ((v53 >> 9) & 0x1EFLL))]);
            LODWORD(v4) = v181;
            if (!v186)
            {
              goto LABEL_115;
            }

            goto LABEL_114;
          }

          LODWORD(v4) = v181;
          if (v186 == 2)
          {
            goto LABEL_111;
          }

          if (v186 != 3)
          {
            goto LABEL_91;
          }

LABEL_114:
          v186 = (v53 >> 10) & 0x20041 | (v53 >> 31 << 23);
          v61 = (v49[v51 - 1] >> 11) & 0x80004 | (v49[v51 + 1] >> 9) & 0x200010 | v186;
          v186 = v61 | HIWORD(v61);
          v62 = sign_lut[(v61 | BYTE2(v61))];
          mq_decoder::mq_decode(v185, &v186, v189 + ((8 * v62) & 0x7F0));
          v186 ^= v62 & 1;
          v49[v154 + v51] |= 4u;
          v49[v161 + v51] |= (v186 << 18) | 2;
          v49[v155 + v51] |= 1u;
          v49[v51 - 1] |= 0x4000u;
          v49[v51 + 1] |= 0x1000u;
          v53 |= (v186 << 30) | 0x2000;
          *&v170[v51 * 4] = v171 + (v186 << 31);
          LODWORD(v4) = v181;
LABEL_115:
          v49[v51] = (v53 << 15) & 0x12480000 | v53 & 0xDB6FFFFF;
LABEL_116:
          ++v51;
          --v52;
        }

        while (v52 > 1);
        v48 = &v166[v51 * 4];
        v49 = (v49 + v51 * 4);
        v46 = v162;
        v50 = v144;
LABEL_118:
        v49 += 3;
        v48 += 4 * v179;
        v63 = __OFSUB__(v50--, 1);
        if (!((v50 < 0) ^ v63 | (v50 == 0)))
        {
          continue;
        }

        break;
      }

LABEL_120:
      v188 = *v182;
LABEL_268:
      if ((*(v150 + 28) & 0x20) != 0 && v149 == 2)
      {
        break;
      }

LABEL_274:
      LODWORD(v151) = v151 - 1;
      if (!v151)
      {
        v125 = mq_decoder::finish(v185, v136 & ~v140 & 1);
        LODWORD(v4) = v181;
        v46 = v162;
        if ((v125 & 1) == 0)
        {
          *(v150 + 12) = v137;
          if ((*(v150 + 28) & 0x20) != 0 && v162 - v149 > v137)
          {
            *(v150 + 12) = v162 - v149;
          }

          goto LABEL_290;
        }
      }

      v28 = v46 + 1;
      v29 = v149 + 1;
      v148 += 4;
      v24 = v180;
      if (v28 == v143)
      {
        goto LABEL_277;
      }
    }

    v182[0] = 0;
    mq_decoder::mq_decode_run(v185, v182);
    v124 = v182[0];
    mq_decoder::mq_decode_run(v185, v182);
    if (v182[0] + 4 * v124 == 10 || (*(v150 + 37) & 1) == 0 && (*(v150 + 36) & 1) == 0)
    {
      LODWORD(v4) = v181;
      v46 = v162;
      goto LABEL_274;
    }

    v127 = v162 - 2;
    if (v162 < 2)
    {
      v127 = 0;
    }

    v128 = v137;
    if (v137 <= v127)
    {
      v128 = v127;
    }

    if (v136)
    {
      v127 = v128;
    }

    *(v150 + 12) = v127;
    mq_decoder::finish(v185, 0);
    LODWORD(v4) = v181;
LABEL_290:
    if (*(v150 + 37) == 1)
    {
      v184 = 0;
      *v182 = 0u;
      v183 = 0u;
      kdu_error::kdu_error(v182, "Kakadu Core Error:\n");
      (*(*v182 + 16))(v182, "Encountered incorrectly terminated codeword segment, or invalid SEGMARK symbol in code-block bit-stream.  You may like to use the resilient mode to recover from and conceal such errors.");
      kdu_error::~kdu_error(v182);
    }

    if ((*(v150 + 120) & 1) == 0)
    {
      *(v150 + 120) = 1;
      v184 = 0;
      *v182 = 0u;
      v183 = 0u;
      kdu_warning::kdu_warning(v182, "Kakadu Core Warning:\n");
      (*(*v182 + 16))(v182, "One or more corrupted block bit-streams detected.\n");
      kdu_warning::~kdu_warning(v182);
      LODWORD(v4) = v181;
    }
  }

LABEL_277:
  if (v134-- > 1)
  {
    goto LABEL_15;
  }

  return kdu_block::finish_timing(v150);
}

void kd_block_decoder::~kd_block_decoder(kd_block_decoder *this)
{
  *this = &unk_1EF4D3368;
}

{
  *this = &unk_1EF4D3368;
  JUMPOUT(0x186602850);
}

int32x4_t *kd_decoder::init(uint64_t a1, int32x4_t *a2, uint64_t a3, int a4, float a5, uint64_t a6, kdu_thread_entity *a7, char *a8)
{
  v37 = a2;
  v8 = (a1 + 88);
  if (*(a1 + 88) || *(a1 + 120))
  {
    kd_decoder::init();
  }

  if (a7)
  {
    *(a1 + 120) = kdu_thread_entity::add_queue(a7, a1 + 8, a8, "block decoder");
  }

  *(a1 + 24) = a2;
  *(a1 + 32) = kdu_subband::get_K_max(&v37);
  K_max_prime = kdu_subband::get_K_max_prime(&v37);
  *(a1 + 34) = K_max_prime;
  if (*(a1 + 32) > K_max_prime)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -50;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  *(a1 + 36) = kdu_subband::get_reversible(&v37);
  *(a1 + 37) = 0;
  *(a1 + 40) = kdu_subband::get_delta(&v37) * a5;
  v36 = 0uLL;
  kdu_subband::get_dims(&v37, &v36);
  v34 = 0;
  v35 = 0;
  kdu_subband::get_block_size(&v37, &v35, &v34);
  result = kdu_subband::get_valid_blocks(&v37, (a1 + 44));
  v17 = v36.i32[2];
  *(a1 + 60) = v36.i64[1];
  v18 = v35.i16[0];
  v19 = vuzp1_s16(v34, v35);
  *(a1 + 70) = vrev32_s16(v19);
  *(a1 + 39) = 1;
  if (!a7)
  {
    *(a1 + 78) = v19.i16[2];
    v24 = (a1 + 78);
    *(a1 + 68) = 0;
    LOWORD(v21) = v17;
    if (v17 > v18)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  result = kdu_thread_entity::get_num_threads(a7);
  v20 = *(a1 + 76);
  v21 = *(a1 + 60);
  if (result > 1)
  {
    v22 = *(a1 + 76);
    if (v21 < v20)
    {
      v22 = v21;
    }

    v23 = (v22 * *(a1 + 64) + (v22 * *(a1 + 64) < 0 ? 0x1FFFuLL : 0)) >> 13;
    if (*(a1 + 56) <= v23)
    {
      kd_decoder::init();
    }

    if (v23 <= 1)
    {
      LODWORD(v23) = 1;
    }

    if (v23 >= 32)
    {
      LOBYTE(v23) = 32;
    }

    *(a1 + 39) = v23;
  }

  *(a1 + 78) = v20;
  v24 = (a1 + 78);
  *(a1 + 68) = 0;
  if (v21 <= v20)
  {
LABEL_23:
    *v24 = v21;
    goto LABEL_24;
  }

  result = kdu_thread_entity::get_num_threads(a7);
  if (result >= 2)
  {
    v25 = 8u / *(a1 + 39) + 1;
    result = kdu_subband::get_band_idx(&v37);
    if (result <= v25)
    {
      v26 = *(a1 + 60) - *(a1 + 72);
      if (v26 >= *(a1 + 76))
      {
        LOWORD(v26) = *(a1 + 76);
      }

      *(a1 + 78) += v26;
      v33 = kdu_node::access_resolution(&v37);
      result = kdu_resolution::get_dwt_level(&v33);
      *(a1 + 68) = 64 - result;
    }
  }

LABEL_24:
  v27 = 0;
  *(a1 + 38) = 0;
  *(a1 + 80) = 0;
  v28 = *(a1 + 64);
  if (v34.i32[1] < v28)
  {
    if (a4)
    {
      v29 = 7;
    }

    else
    {
      v29 = 3;
    }

    v27 = v29 & -v34.i32[1];
    *(a1 + 38) = v27;
  }

  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  if (v36.i32[3] >= 1 && *(v36.i64 + 4) > 0)
  {
    *v8 = a3;
    if (*a3)
    {
      v30 = v28 + v27 + 3;
      if (a4)
      {
        v31 = 1;
      }

      else
      {
        v31 = 2;
      }

      *(a3 + 4) += (((v30 << v31) + 15) & 0xFFFFFFF0) * *(a1 + 78);
      operator new[]();
    }

    kdu_sample_allocator::pre_alloc();
  }

  *(a1 + 60) = 0;
  return result;
}

void kd_decoder::~kd_decoder(kd_decoder *this)
{
  *this = &unk_1EF4D3390;
  *(this + 1) = &unk_1EF4D33C8;
  v2 = *(this + 12);
  if (v2)
  {
    MEMORY[0x186602830](v2, 0x20C8093837F09);
  }

  v3 = *(this + 13);
  if (v3)
  {
    MEMORY[0x186602830](v3, 0x20C8093837F09);
  }

  v4 = *(this + 2);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 1) = &unk_1EF4D3478;
  *this = &unk_1EF4D3448;
}

{
  kd_decoder::~kd_decoder(this);

  JUMPOUT(0x186602850);
}

void non-virtual thunk tokd_decoder::~kd_decoder(kd_decoder *this)
{
  kd_decoder::~kd_decoder((this - 8));
}

{
  kd_decoder::~kd_decoder((this - 8));

  JUMPOUT(0x186602850);
}

uint64_t kd_decoder::start(uint64_t result, kdu_thread_entity *this)
{
  v2 = result;
  if ((*(result + 37) & 1) == 0 && *(result + 64) && *(result + 60))
  {
    if (this)
    {
      result = kdu_thread_entity::acquire_lock(this, 3, 1);
    }

    v4 = *(v2 + 78);
    if (*(v2 + 96))
    {
      if (v4 >= 1)
      {
        v5 = 0;
        v6 = *(v2 + 38);
        do
        {
          result = kdu_sample_allocator::alloc16(*(v2 + 88), 0, *(v2 + 64) + v6 + 3);
          v6 = *(v2 + 38);
          *(*(v2 + 96) + 8 * v5++) = result + 2 * *(v2 + 38);
        }

        while (v5 < *(v2 + 78));
      }
    }

    else if (v4 >= 1)
    {
      v7 = 0;
      v8 = *(v2 + 38);
      do
      {
        result = kdu_sample_allocator::alloc32(*(v2 + 88), 0, *(v2 + 64) + v8 + 3);
        v8 = *(v2 + 38);
        *(*(v2 + 104) + 8 * v7++) = result + 4 * *(v2 + 38);
      }

      while (v7 < *(v2 + 78));
    }

    *(v2 + 37) = 1;
    if (this)
    {
      kdu_thread_entity::release_lock(this, 3);
      v9 = *(v2 + 120);
      v10 = *(v2 + 39);

      return kdu_thread_entity::add_jobs(this, v9, v10, 0);
    }
  }

  else
  {
    *(result + 37) = 1;
  }

  return result;
}

unsigned __int16 *kd_decoder::pull(unsigned __int16 *result, uint64_t a2, kdu_thread_entity *this)
{
  v5 = result;
  if (!this && *(result + 15))
  {
    kd_decoder::pull();
  }

  if (*a2 > *(result + 28))
  {
    if ((*(result + 37) & 1) == 0)
    {
      result = (*(*result + 16))(result, this);
    }

    if (*(v5 + 15) >= 1)
    {
      v6 = v5[40];
      if (v6 == v5[41])
      {
        v5[40] = 0;
        v7 = *(v5 + 15);
        if (v7)
        {
          if (v5[34])
          {
            v8 = v5[38];
            if (v5[39] <= v8)
            {
              kd_decoder::pull();
            }

            if (*(v5 + 21))
            {
              if (v6 <= v8)
              {
                v5[40] = v8;
              }
            }

            else
            {
              kdu_thread_entity::add_jobs(this, v7, *(v5 + 39), v5[34]);
              v7 = *(v5 + 15);
            }
          }

          kdu_thread_entity::process_jobs(this, v7, 0, 1);
        }

        else
        {
          if (*(v5 + 39) != 1)
          {
            kd_decoder::pull();
          }

          (*(*v5 + 32))(v5, this, *(v5 + 21));
        }

        v9 = *(v5 + 21);
        if (v9)
        {
          v10 = *(v5 + 15);
          v11 = v5[40];
          v12 = v10 < v5[38];
          v13 = v11 + v10;
          if (!v12)
          {
            v13 = v11 + v5[38];
          }
        }

        else
        {
          v13 = v5[36];
        }

        v5[41] = v13;
        if (v5[39] < v13)
        {
          kd_decoder::pull();
        }

        *(v5 + 21) = v9 + 1;
      }

      v14 = *(v5 + 16);
      v15 = *(v5 + 28);
      if (*a2 != v15 + v14)
      {
        kd_decoder::pull();
      }

      v16 = *(v5 + 13);
      v17 = *(a2 + 8);
      if (v16)
      {
        if ((*(a2 + 6) & 2) != 0)
        {
          v17 = 0;
        }

        v18 = (v17 + 4 * v15);
        v19 = *(v16 + 8 * v5[40]);
        v20 = 4 * v14;
      }

      else
      {
        if ((*(a2 + 6) & 2) != 0)
        {
          v21 = *(a2 + 8);
        }

        else
        {
          v21 = 0;
        }

        v18 = (v21 + 2 * v15);
        v19 = *(*(v5 + 12) + 8 * v5[40]);
        v20 = 2 * v14;
      }

      result = memcpy(v18, v19, v20);
      v22 = *(v5 + 15);
      v23 = v22 - 1;
      *(v5 + 15) = v22 - 1;
      v24 = v5[40] + 1;
      v5[40] = v24;
      v25 = *(v5 + 15);
      if (v25 && v24 >= v5[41] && v22 >= 2)
      {
        v26 = v5[34];
        if (!v5[34])
        {
          goto LABEL_40;
        }

        v27 = v5[38];
        if (v5[39] <= v27)
        {
          kd_decoder::pull();
        }

        if (v23 <= v27)
        {
          v29 = this;
          v28 = 0;
          v26 = 0;
        }

        else
        {
LABEL_40:
          v28 = *(v5 + 39);
          v29 = this;
        }

        return kdu_thread_entity::add_jobs(v29, v25, v28, v26);
      }
    }
  }

  return result;
}

void kd_decoder::do_job(kd_decoder *this, kdu_thread_entity *a2, int a3)
{
  v3 = a2;
  v5 = *(this + 39);
  v7 = *(this + 12);
  v6 = *(this + 13);
  v8 = a3 / v5;
  if ((a3 / v5))
  {
    v9 = *(this + 38);
    v10 = &v6[v9];
    if (!v6)
    {
      v10 = 0;
    }

    v11 = &v7[v9];
    if (!v7)
    {
      v11 = 0;
    }

    if (*(this + 39) > *(this + 38))
    {
      v7 = v11;
      v6 = v10;
    }
  }

  if (v8 >= *(this + 13))
  {
    kd_decoder::do_job();
  }

  v12 = *(this + 14);
  v13 = *(this + 12);
  v98 = v6;
  v96 = v7;
  if (v5 < 2)
  {
    if (v12 < 1)
    {
      return;
    }
  }

  else
  {
    v14 = a3 % v5 * v12;
    v15 = v14 / v5;
    v16 = (v12 + v14) / v5;
    v12 = v16 - v15;
    if (v16 <= v15)
    {
      kd_decoder::do_job();
    }

    if (v15 >= 1)
    {
      v13 = (v15 + v13);
      v17 = *(this + 35) + (v15 - 1) * *(this + 37);
      goto LABEL_15;
    }
  }

  v17 = 0;
LABEL_15:
  v97 = (v8 + *(this + 11));
  do
  {
    v18 = kdu_subband::open_block(this + 3, v97 | (v13 << 32), 0, v3);
    if (!v18 || ((v19 = v18, (*(**(this + 2) + 16))(*(this + 2), v18), !*(v19 + 24)) ? (v20 = *(v19 + 20)) : (v20 = *(v19 + 16)), !*(v19 + 24) ? (v21 = *(v19 + 16)) : (v21 = *(v19 + 20)), v20 + v17 > *(this + 16)))
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = -50;
      __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
    }

    v99 = v20 + v17;
    v100 = v12;
    if (*(v19 + 48))
    {
      if (*(this + 17) > *(this + 16))
      {
        kd_decoder::adjust_roi_background(this, v19);
      }

      v22 = *(v19 + 4);
      v23 = *(v19 + 96) + 4 * *(v19 + 8) * v22 + 4 * *(v19 + 12);
      if (*(v19 + 25))
      {
        v24 = v21 - 1;
      }

      else
      {
        v24 = 0;
      }

      if (*(v19 + 25))
      {
        v25 = -1;
      }

      else
      {
        v25 = 1;
      }

      if (*(v19 + 26))
      {
        v26 = v20 - 1;
      }

      else
      {
        v26 = 0;
      }

      v27 = v26 + v17;
      if (*(v19 + 26))
      {
        v28 = -1;
      }

      else
      {
        v28 = 1;
      }

      if (v98)
      {
        v29 = &v98[v24];
        if (*(this + 36))
        {
          v30 = *(this + 16);
          if (v30 >= 32)
          {
            v103 = 0;
            v101 = 0u;
            v102 = 0u;
            kdu_error::kdu_error(&v101, "Kakadu Core Error:\n");
            (*(v101 + 16))(&v101, "Insufficient implementation precision available for true reversible processing!");
            kdu_error::~kdu_error(&v101);
          }

          v31 = 31 - v30;
          if (*(v19 + 24))
          {
            v3 = a2;
            if (v21)
            {
              v32 = v27;
              v33 = 4 * v22;
              do
              {
                if (v20)
                {
                  v34 = 0;
                  v35 = (*v29 + 4 * v32);
                  v36 = v20;
                  do
                  {
                    v37 = *(v23 + v34);
                    if (v37 < 0)
                    {
                      v38 = -((v37 & 0x7FFFFFFFu) >> v31);
                    }

                    else
                    {
                      v38 = v37 >> v31;
                    }

                    *v35 = v38;
                    v35 += v28;
                    v34 += v33;
                    --v36;
                  }

                  while (v36);
                }

                v29 += v25;
                v23 += 4;
                LODWORD(v21) = v21 - 1;
              }

              while (v21);
            }
          }

          else
          {
            v3 = a2;
            if (v21)
            {
              v71 = v27;
              v72 = 4 * v22;
              do
              {
                if (v20)
                {
                  v73 = 0;
                  v74 = (*v29 + 4 * v71);
                  do
                  {
                    v75 = *(v23 + 4 * v73);
                    if (v75 < 0)
                    {
                      v76 = -((v75 & 0x7FFFFFFFu) >> v31);
                    }

                    else
                    {
                      v76 = v75 >> v31;
                    }

                    *v74 = v76;
                    v74 += v28;
                    ++v73;
                  }

                  while (v20 != v73);
                }

                v29 += v25;
                v23 += v72;
                LODWORD(v21) = v21 - 1;
              }

              while (v21);
            }
          }
        }

        else
        {
          v51 = *(this + 10);
          v52 = *(this + 16);
          if (v52 > 31)
          {
            v53 = v51 * (1 << (v52 - 31));
          }

          else
          {
            v53 = v51 / (0x80000000 >> v52);
          }

          if (*(v19 + 24))
          {
            if (v21)
            {
              v60 = v27;
              v61 = 4 * v22;
              do
              {
                if (v20)
                {
                  v62 = 0;
                  v63 = (*v29 + 4 * v60);
                  v64 = v20;
                  do
                  {
                    v65 = *(v23 + v62);
                    if (v65 < 0)
                    {
                      v65 = -(v65 & 0x7FFFFFFF);
                    }

                    *v63 = v53 * v65;
                    v63 += v28;
                    v62 += v61;
                    --v64;
                  }

                  while (v64);
                }

                v29 += v25;
                v23 += 4;
                LODWORD(v21) = v21 - 1;
              }

              while (v21);
            }
          }

          else if (v21)
          {
            v66 = v27;
            v67 = 4 * v22;
            do
            {
              if (v20)
              {
                v68 = 0;
                v69 = (*v29 + 4 * v66);
                do
                {
                  v70 = *(v23 + 4 * v68);
                  if (v70 < 0)
                  {
                    v70 = -(v70 & 0x7FFFFFFF);
                  }

                  *v69 = v53 * v70;
                  v69 += v28;
                  ++v68;
                }

                while (v20 != v68);
              }

              v29 += v25;
              v23 += v67;
              LODWORD(v21) = v21 - 1;
            }

            while (v21);
          }
        }
      }

      else
      {
        v42 = &v96[v24];
        if (*(this + 36))
        {
          v43 = *(this + 16);
          if (v43 >= 32)
          {
            v103 = 0;
            v101 = 0u;
            v102 = 0u;
            kdu_error::kdu_error(&v101, "Kakadu Core Error:\n");
            (*(v101 + 16))(&v101, "Need 32 bits for 16-bit dequantized values");
            kdu_error::~kdu_error(&v101);
          }

          v44 = 31 - v43;
          if (*(v19 + 24))
          {
            v3 = a2;
            if (v21)
            {
              v45 = v27;
              v46 = 4 * v22;
              do
              {
                if (v20)
                {
                  v47 = 0;
                  v48 = (*v42 + 2 * v45);
                  v49 = v20;
                  do
                  {
                    v50 = *(v23 + v47);
                    if (v50 < 0)
                    {
                      v50 = -((v50 & 0x7FFFFFFFu) >> v44);
                    }

                    else
                    {
                      LOWORD(v50) = v50 >> v44;
                    }

                    *v48 = v50;
                    v48 += v28;
                    v47 += v46;
                    --v49;
                  }

                  while (v49);
                }

                v42 += v25;
                v23 += 4;
                LODWORD(v21) = v21 - 1;
              }

              while (v21);
            }
          }

          else
          {
            v3 = a2;
            if (v21)
            {
              v89 = v27;
              v90 = 4 * v22;
              do
              {
                if (v20)
                {
                  v91 = 0;
                  v92 = (*v42 + 2 * v89);
                  do
                  {
                    v93 = *(v23 + 4 * v91);
                    if (v93 < 0)
                    {
                      v93 = -((v93 & 0x7FFFFFFFu) >> v44);
                    }

                    else
                    {
                      LOWORD(v93) = v93 >> v44;
                    }

                    *v92 = v93;
                    v92 += v28;
                    ++v91;
                  }

                  while (v20 != v91);
                }

                v42 += v25;
                v23 += v90;
                LODWORD(v21) = v21 - 1;
              }

              while (v21);
            }
          }
        }

        else
        {
          v57 = *(this + 10) * 8192.0;
          v58 = *(this + 16);
          if (v58 > 31)
          {
            v59 = v57 * (1 << (v58 - 31));
          }

          else
          {
            v59 = v57 / (0x80000000 >> v58);
          }

          v77 = ((v59 * 4295000000.0) + 0.5);
          if (*(v19 + 24))
          {
            if (v21)
            {
              v78 = v27;
              v79 = 4 * v22;
              do
              {
                if (v20)
                {
                  v80 = 0;
                  v81 = (*v42 + 2 * v78);
                  v82 = v20;
                  do
                  {
                    v83 = *(v23 + v80);
                    if (v83 < 0)
                    {
                      v83 = -(v83 & 0x7FFFFFFF);
                    }

                    *v81 = (((v83 + 0x8000) >> 16) * v77 + 0x8000) >> 16;
                    v81 += v28;
                    v80 += v79;
                    --v82;
                  }

                  while (v82);
                }

                v42 += v25;
                v23 += 4;
                LODWORD(v21) = v21 - 1;
              }

              while (v21);
            }
          }

          else if (v21)
          {
            v84 = v27;
            v85 = 4 * v22;
            do
            {
              if (v20)
              {
                v86 = 0;
                v87 = (*v42 + 2 * v84);
                do
                {
                  v88 = *(v23 + 4 * v86);
                  if (v88 < 0)
                  {
                    v88 = -(v88 & 0x7FFFFFFF);
                  }

                  *v87 = (((v88 + 0x8000) >> 16) * v77 + 0x8000) >> 16;
                  v87 += v28;
                  ++v86;
                }

                while (v20 != v86);
              }

              v42 += v25;
              v23 += v85;
              LODWORD(v21) = v21 - 1;
            }

            while (v21);
          }
        }
      }
    }

    else if (v98)
    {
      if (v21 >= 1)
      {
        if (v20 >= 4)
        {
          v39 = 4;
        }

        else
        {
          v39 = v20;
        }

        v40 = 16 * ((v20 - v39 + 3) >> 2);
        v41 = v98;
        do
        {
          if (v20 >= 1)
          {
            bzero((*v41 + 4 * v17), v40 + 16);
          }

          ++v41;
          --v21;
        }

        while (v21);
      }
    }

    else if (v21 >= 1)
    {
      if (v20 >= 4)
      {
        v54 = 4;
      }

      else
      {
        v54 = v20;
      }

      v55 = 8 * ((v20 - v54 + 3) >> 2);
      v56 = v96;
      do
      {
        if (v20 >= 1)
        {
          bzero((*v56 + 2 * v17), v55 + 8);
        }

        ++v56;
        --v21;
      }

      while (v21);
    }

    kdu_subband::close_block(this + 24, v19, v3);
    v13 = (v13 + 1);
    v17 = v99;
    v12 = v100 - 1;
  }

  while (v100 > 1);
}

uint64_t kd_decoder::adjust_roi_background(uint64_t this, kdu_block *a2)
{
  v2 = 4 * *(a2 + 1) * ((*a2 + 3) >> 2);
  if (v2)
  {
    v3 = *(this + 32);
    v4 = *(this + 34) - v3;
    v5 = (-1 << ~v3) & 0x7FFFFFFF;
    v6 = *(a2 + 12);
    v7 = vdupq_n_s32(v5);
    do
    {
      v8 = *v6;
      v9 = vmovn_s32(vbicq_s8(vceqzq_s32(vandq_s8(v7, *v6)), vceqzq_s32(*v6)));
      if (v9.i8[0])
      {
        v6->i32[0] = (v8.i32[0] << v4) | v8.i32[0] & 0x80000000;
      }

      if (v9.i8[2])
      {
        v6->i32[1] = (v8.i32[1] << v4) | v8.i32[1] & 0x80000000;
      }

      if (v9.i8[4])
      {
        v6->i32[2] = (v8.i32[2] << v4) | v8.i32[2] & 0x80000000;
      }

      if (v9.i8[6])
      {
        v6->i32[3] = (v8.i32[3] << v4) | v8.i32[3] & 0x80000000;
      }

      ++v6;
      v2 -= 4;
    }

    while (v2);
  }

  return this;
}

void kd_decoder::kd_decoder(kd_decoder *this)
{
  *this = &unk_1EF4D3390;
  *(this + 1) = &unk_1EF4D33C8;
  kdu_block_decoder::kdu_block_decoder((this + 16));
}

void sub_185F8BFBC(_Unwind_Exception *a1)
{
  *v1 = &unk_1EF4D3448;
  v1[1] = &unk_1EF4D3478;
  _Unwind_Resume(a1);
}

float *kd_analysis::init(uint64_t a1, int32x4_t *a2, kdu_sample_allocator *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v164[4] = *MEMORY[0x1E69E9840];
  v162 = a2;
  v161 = kdu_node::access_resolution(&v162);
  if (a5)
  {
    if (kdu_resolution::propagate_roi(&v161))
    {
      kdu_roi_level::create();
    }

    (*(*a5 + 16))(a5);
  }

  reversible = kdu_resolution::get_reversible(&v161);
  *(a1 + 48) = 0u;
  v13 = (a1 + 48);
  *(a1 + 40) = reversible;
  *(a1 + 41) = a4;
  *(a1 + 42) = 0;
  *(a1 + 104) = 0;
  *(a1 + 98) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  kernel_id = kdu_node::get_kernel_id(&v162);
  *(a1 + 200) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  v160 = 0uLL;
  result = kdu_node::get_dims(&v162, &v160);
  v16 = v160.i32[0];
  v17 = v160.i32[1];
  v18 = v160.i32[2];
  v19 = v160.i32[3];
  v20 = v160.i32[3] + v160.i32[1];
  v21 = v160.i32[3] + v160.i32[1] - 1;
  v22 = v160.i32[0] + v160.i32[2] - 1;
  *(a1 + 112) = v160.i32[0];
  *(a1 + 116) = v22;
  *(a1 + 124) = v17;
  *(a1 + 128) = v21;
  v24 = v19 < 1 || v18 < 1;
  *(a1 + 142) = v24;
  *(a1 + 140) = v22 == v16;
  *(a1 + 141) = v21 == v17;
  if (!v24)
  {
    v148 = v19;
    v149 = v20;
    v150 = v17;
    v25 = kdu_node::access_child(&v162, 0);
    v164[0] = v25;
    v26 = kdu_node::access_child(&v162, 1u);
    v164[1] = v26;
    v27 = kdu_node::access_child(&v162, 2u);
    v164[2] = v27;
    v164[3] = kdu_node::access_child(&v162, 3u);
    if (!v25)
    {
      kd_analysis::init();
    }

    *(a1 + 43) = v27 != 0;
    *(a1 + 44) = v26 != 0;
    v158 = 1065353216;
    v159 = 1065353216;
    v156 = 1065353216;
    v157 = 1065353216;
    if (v27)
    {
      v163[0] = 0;
      v154[0] = 0;
      *v155 = 0;
      kernel_info = kdu_node::get_kernel_info(&v162, (a1 + 48), &v159, &v158, (a1 + 96), (a1 + 98), v163, v154, &v155[1], v155, 1);
      if (v154[0] <= v155[0])
      {
        v29 = v155[0];
      }

      else
      {
        v29 = v154[0];
      }

      if (v163[0] >= v155[1])
      {
        v30 = v155[1];
      }

      else
      {
        v30 = v163[0];
      }

      LODWORD(v31) = *(a1 + 48);
      if (v31 > 4)
      {
        operator new[]();
      }

      v32 = a1 + 576;
      *(a1 + 80) = v32;
      if (v31 < 1)
      {
        v34 = 0;
        v35 = 0;
      }

      else
      {
        v34 = 0;
        v35 = 0;
        v36 = *(a1 + 40);
        v37 = (kernel_info + 8);
        v31 = v31;
        do
        {
          *(v32 + 4) = *(v37 - 1);
          v38 = *(v37 - 2);
          *(v32 + 1) = v38;
          *(v32 + 2) = *v37;
          *(v32 + 6) = v37[1];
          if (v35 <= v38)
          {
            v35 = v38;
          }

          *(v32 + 30) = kernel_id;
          *(v32 + 29) = v36;
          v34 += v38;
          v32 += 32;
          v37 += 4;
          --v31;
        }

        while (v31);
        if (v35 > 4)
        {
          operator new[]();
        }
      }

      v33 = v29 - v30;
      *(a1 + 56) = a1 + 272 + 8 * v35;
      *(a1 + 64) = a1 + 272;
      if (*(a1 + 44))
      {
        goto LABEL_34;
      }
    }

    else
    {
      v33 = 0;
      if (v26)
      {
        kernel_info = 0;
        v34 = 0;
LABEL_34:
        v163[0] = 0;
        v154[0] = 0;
        *v155 = 0;
        v39 = kdu_node::get_kernel_info(&v162, (a1 + 52), &v157, &v156, (a1 + 97), (a1 + 99), v163, v154, &v155[1], v155, 0);
        if (v39 == kernel_info)
        {
          v41 = *(a1 + 80);
        }

        else
        {
          v40 = *v13;
          if (v40 + *(a1 + 52) > 4)
          {
            operator new[]();
          }

          v41 = a1 + 32 * v40 + 576;
        }

        *(a1 + 88) = v41;
        if (v41 != *(a1 + 80))
        {
          v42 = *(a1 + 52);
          if (v42 >= 1)
          {
            v43 = *(a1 + 40);
            v44 = (v39 + 8);
            do
            {
              *(v41 + 4) = *(v44 - 1);
              v45 = *(v44 - 2);
              *(v41 + 1) = v45;
              *(v41 + 2) = *v44;
              *(v41 + 6) = v44[1];
              *(v41 + 30) = kernel_id;
              *(v41 + 29) = v43;
              v34 += v45;
              v41 += 32;
              v44 += 4;
              --v42;
            }

            while (v42);
          }
        }

        *(a1 + 132) = ((v149 + 1) >> 1) - ((v150 + 1) >> 1);
        *(a1 + 136) = (v149 >> 1) - (v150 >> 1);
LABEL_46:
        if (v34 >= 9)
        {
          operator new[]();
        }

        v46 = (a1 + 208);
        v47 = (a1 + 240);
        if (*(a1 + 43) == 1)
        {
          kernel_coefficients = kdu_node::get_kernel_coefficients(&v162, 1);
          v49 = *v13;
          if (*v13 >= 1)
          {
            v50 = 0;
            v51 = *(a1 + 80);
            v52 = *(a1 + 40);
            do
            {
              v53 = v51 + 32 * v50;
              *v53 = v50;
              *(v53 + 8) = v46;
              *(v53 + 16) = v47;
              *(v53 + 28) = 0;
              v54 = *(v53 + 1);
              if (*(v53 + 1))
              {
                v55 = *(v53 + 1);
                v56 = kernel_coefficients;
                v57 = v46;
                v58 = 0.4;
                do
                {
                  v59 = *v56;
                  *v57 = *v56;
                  if (v59 <= v58)
                  {
                    if (v59 < -v58)
                    {
                      v58 = -v59;
                    }
                  }

                  else
                  {
                    v58 = v59;
                  }

                  ++v57;
                  ++v56;
                  --v55;
                }

                while (v55);
                if (v52)
                {
LABEL_66:
                  v60 = *(v53 + 2);
                  if (v54)
                  {
                    goto LABEL_70;
                  }

                  goto LABEL_73;
                }

                v60 = 16;
                *(v53 + 2) = 16;
                if (v58 >= 0.499)
                {
                  v60 = 16;
                  do
                  {
                    --v60;
                    v58 = v58 * 0.5;
                  }

                  while (v58 >= 0.499);
                  *(v53 + 2) = v60;
                  if (v60 < 0x10u)
                  {
                    *(v53 + 6) = 1 << (v60 - 1);
                    if (v54)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_73;
                  }
                }
              }

              else
              {
                if (v52)
                {
                  goto LABEL_66;
                }

                v60 = 16;
                *(v53 + 2) = 16;
              }

              *(v53 + 6) = 0x7FFF;
              if (v54)
              {
LABEL_70:
                v61 = (1 << v60);
                v62 = v54;
                v63 = v46;
                v64 = v47;
                do
                {
                  v65 = *v63++;
                  *v64++ = vcvtmd_s64_f64((v65 * v61) + 0.5);
                  --v62;
                }

                while (v62);
                v49 = *v13;
              }

LABEL_73:
              v46 += v54;
              v47 += v54;
              kernel_coefficients += 4 * v54;
              *(v53 + 3) = 0;
              *(v53 + 24) = 0;
              ++v50;
            }

            while (v50 < v49);
          }
        }

        if (*(a1 + 44) == 1)
        {
          v66 = kdu_node::get_kernel_coefficients(&v162, 0);
          if (*(a1 + 52) >= 1)
          {
            v67 = 0;
            v68 = 0;
            v70 = *(a1 + 80);
            v69 = *(a1 + 88);
            while (1)
            {
              v71 = v69 + 32 * v67;
              if (v69 == v70)
              {
                LODWORD(v72) = *(v71 + 1);
                if (*(v71 + 1))
                {
                  v79 = *(v71 + 8);
                  v80 = *(v71 + 1);
                  v81 = v66;
                  do
                  {
                    if (*v79 != *v81)
                    {
                      kd_analysis::init();
                    }

                    ++v81;
                    ++v79;
                    --v80;
                  }

                  while (v80);
                }

                goto LABEL_105;
              }

              *v71 = v67;
              *(v71 + 24) = 0;
              *(v71 + 8) = v46;
              *(v71 + 16) = v47;
              *(v71 + 28) = 0;
              v72 = *(v71 + 1);
              if (*(v71 + 1))
              {
                v73 = *(v71 + 1);
                v74 = v66;
                v75 = v46;
                v76 = 0.4;
                do
                {
                  v77 = *v74;
                  *v75 = *v74;
                  if (v77 <= v76)
                  {
                    if (v77 < -v76)
                    {
                      v76 = -v77;
                    }
                  }

                  else
                  {
                    v76 = v77;
                  }

                  ++v75;
                  ++v74;
                  --v73;
                }

                while (v73);
                if (*(a1 + 40))
                {
LABEL_98:
                  v78 = *(v71 + 2);
                  if (v72)
                  {
                    goto LABEL_102;
                  }

                  goto LABEL_104;
                }

                v78 = 16;
                *(v71 + 2) = 16;
                if (v76 >= 0.499)
                {
                  v78 = 16;
                  do
                  {
                    --v78;
                    v76 = v76 * 0.5;
                  }

                  while (v76 >= 0.499);
                  *(v71 + 2) = v78;
                  if (v78 < 0x10u)
                  {
                    *(v71 + 6) = 1 << (v78 - 1);
                    if (v72)
                    {
                      goto LABEL_102;
                    }

                    goto LABEL_104;
                  }
                }
              }

              else
              {
                if (*(a1 + 40))
                {
                  goto LABEL_98;
                }

                v78 = 16;
                *(v71 + 2) = 16;
              }

              *(v71 + 6) = 0x7FFF;
              if (v72)
              {
LABEL_102:
                v82 = (1 << v78);
                v83 = v72;
                v84 = v46;
                v85 = v47;
                do
                {
                  v86 = *v84++;
                  *v85++ = vcvtmd_s64_f64((v86 * v82) + 0.5);
                  --v83;
                }

                while (v83);
              }

LABEL_104:
              v46 += v72;
              v47 += v72;
LABEL_105:
              v87 = *(v71 + 4);
              if (v67)
              {
                v88 = -1;
              }

              else
              {
                v88 = 1;
              }

              v89 = (*(a1 + 124) << 31 >> 31) & v88;
              if (v67)
              {
                v90 = 1;
              }

              else
              {
                v90 = -1;
              }

              v91 = v89 - v87;
              if (*(a1 + 128))
              {
                v90 = 0;
              }

              v92 = v72 + v87 + v90 - 1;
              if (v91 > v92)
              {
                v92 = v91;
              }

              if (v92 >= 256)
              {
                kd_analysis::init();
              }

              v93 = v92 & ~(v92 >> 31);
              if (v93 > v68)
              {
                v68 = v93;
              }

              v66 += 4 * v72;
              *(v71 + 3) = v93;
              if (++v67 >= *(a1 + 52))
              {
                goto LABEL_121;
              }
            }
          }
        }

        LOBYTE(v68) = 0;
LABEL_121:
        if (*v13 <= 0)
        {
          v97 = *(a1 + 132);
          if (v97 <= *(a1 + 136))
          {
            LOBYTE(v97) = *(a1 + 136);
          }

          v95 = v97 + v68;
        }

        else
        {
          if ((*(a1 + 140) & 1) == 0)
          {
            if (*v13 > 4)
            {
              operator new[]();
            }

            *(a1 + 104) = a1 + 752;
          }

          v94 = *(a1 + 132);
          if (v94 <= *(a1 + 136))
          {
            LOBYTE(v94) = *(a1 + 136);
          }

          v95 = v94 + v68;
          if ((*(a1 + 140) & 1) == 0)
          {
            result = kd_analysis::simulate_vertical_lifting(a1, v33);
            LODWORD(v96) = result;
            if (result >= 7)
            {
              operator new[]();
            }

            *(a1 + 72) = 0;
            if (!result)
            {
LABEL_140:
              *(a1 + 120) = *(a1 + 112);
              LODWORD(v101) = *(a1 + 48);
              if (*(a1 + 104))
              {
                if ((v101 & 0x80000000) != 0)
                {
LABEL_155:
                  *v163 = vdupq_lane_s32(*&a8, 0);
                  *(a1 + 100) = 0;
                  if ((*(a1 + 40) & 1) == 0)
                  {
                    v154[0] = 0;
                    bibo_gains = kdu_node::get_bibo_gains(&v162, v154, 1u);
                    if (v154[0] != *v13)
                    {
                      kd_analysis::init();
                    }

                    v118 = bibo_gains;
                    result = kdu_node::get_bibo_gains(&v162, v154, 0);
                    v120 = v154[0];
                    if (v154[0] != *(a1 + 52))
                    {
                      kd_analysis::init();
                    }

                    v121 = *v13;
                    v122 = *&a8;
                    v119.val[0] = vdup_lane_s32(*&a8, 0);
                    if (v121 < 1 || (*(a1 + 140) & 1) != 0)
                    {
                      v123 = *&a8;
                    }

                    else
                    {
                      v119.val[0] = vdiv_f32(v119.val[0], __PAIR64__(v158, v159));
                      v124 = v119.val[0];
                      v125 = v163;
                      vst2_f32(v125, v119);
                      v126 = (v118 + 4);
                      v127 = *result * *&a8;
                      v128 = 28;
                      v129 = v121;
                      v123 = *&a8;
                      v130 = v127;
                      do
                      {
                        v131 = v130;
                        v130 = v127 * *v126;
                        if (v130 > v123)
                        {
                          v123 = v127 * *v126;
                        }

                        if (a4)
                        {
                          v132 = v131 + v131;
                          if (*(*(a1 + 80) + v128) == 1 && v132 > v123)
                          {
                            v123 = v132;
                          }
                        }

                        v128 += 32;
                        ++v126;
                        --v129;
                      }

                      while (v129);
                      v122 = *&a8;
                    }

                    if (v120 >= 1 && (*(a1 + 141) & 1) == 0)
                    {
                      *v163 = vdivq_f32(vzip1q_s32(v119, v119), vdupq_lane_s64(__SPAIR64__(v156, v157), 0));
                      v134 = *(v118 + 4 * v121);
                      if (v121 >= 1 && *(v118 + 4 * v121 - 4) > v134)
                      {
                        v134 = *(v118 + 4 * v121 - 4);
                      }

                      v135 = v134 * v122;
                      v136 = result + 1;
                      v137 = 28;
                      v138 = v135;
                      do
                      {
                        v139 = v138;
                        v138 = v135 * *v136;
                        if (v138 > v123)
                        {
                          v123 = v135 * *v136;
                        }

                        if (a4)
                        {
                          v140 = v139 + v139;
                          if (*(*(a1 + 88) + v137) == 1 && v140 > v123)
                          {
                            v123 = v140;
                          }
                        }

                        v137 += 32;
                        ++v136;
                        --v120;
                      }

                      while (v120);
                    }

                    if (v123 > 7.6)
                    {
                      v142 = *(a1 + 100);
                      v143 = *v163;
                      v144.i64[0] = 0x3F0000003F000000;
                      v144.i64[1] = 0x3F0000003F000000;
                      do
                      {
                        v143 = vmulq_f32(v143, v144);
                        ++v142;
                        v123 = v123 * 0.5;
                      }

                      while (v123 > 7.6);
                      *v163 = v143;
                      *(a1 + 100) = v142;
                    }
                  }

                  v145 = 0;
                  for (i = 0; i != 4; ++i)
                  {
                    if (v164[i])
                    {
                      if (kdu_node::access_child(&v164[v145], 0))
                      {
                        kdu_analysis::kdu_analysis(v154);
                      }

                      v147 = kdu_node::access_subband(&v164[v145]);
                      result = kdu_encoder::kdu_encoder(v154, v147, a3, a4, 0, a6, a7, *&v163[i]);
                      *(a1 + 8 + 8 * i) = *v154;
                    }

                    ++v145;
                  }

                  return result;
                }

                v102 = 0;
                v103 = -1;
                v104 = -48;
                do
                {
                  v105 = *(a1 + 116);
                  v106 = v105;
                  if (v103 >= 1)
                  {
                    v106 = v105 - ((v105 ^ v103) & 1) + 2 * (*(*(a1 + 80) + v102 - 28) + *(*(a1 + 80) + v102 - 31)) - 2;
                  }

                  result = kd_vlift_queue::init(*(a1 + 104) + v104, *(a1 + 112), v105, v103++, *(a1 + 98), v106);
                  v101 = *(a1 + 48);
                  v104 += 48;
                  v102 += 32;
                }

                while (v103 < v101);
              }

              if (v101 >= 1)
              {
                v107 = v101;
                v108 = (v101 + 3) & 0xFFFFFFFC;
                v109 = vdupq_n_s64(v107 - 1);
                v110 = *(a1 + 112) | 1;
                v111 = ((__PAIR64__(*(a1 + 112), *(a1 + 112) & 1) - 1) >> 32) + 1;
                v112 = xmmword_186205EB0;
                v113 = xmmword_186205EC0;
                v114 = (*(a1 + 80) + 88);
                v115 = vdupq_n_s64(4uLL);
                do
                {
                  v116 = vmovn_s64(vcgeq_u64(v109, v113));
                  if (vuzp1_s16(v116, *v109.i8).u8[0])
                  {
                    *(v114 - 16) = v110;
                  }

                  if (vuzp1_s16(v116, *&v109).i8[2])
                  {
                    *(v114 - 8) = v111;
                  }

                  if (vuzp1_s16(*&v109, vmovn_s64(vcgeq_u64(v109, *&v112))).i32[1])
                  {
                    *v114 = v110;
                    v114[8] = v111;
                  }

                  v112 = vaddq_s64(v112, v115);
                  v113 = vaddq_s64(v113, v115);
                  v114 += 32;
                  v108 -= 4;
                }

                while (v108);
              }

              goto LABEL_155;
            }

LABEL_136:
            v98 = 0;
            v96 = v96;
            do
            {
              v99 = *(a1 + 176);
              v100 = (v99 + v98 + 32);
              if (!v99)
              {
                v100 = (a1 + 368 + v98);
                v99 = a1 + 336;
              }

              *v100 = *(a1 + 72);
              *(a1 + 72) = v99 + v98;
              result = kd_vlift_line::pre_create((v99 + v98), a3, *(a1 + 132), *(a1 + 136), *(a1 + 40), a4, v68, v95, *(a1 + 44));
              v98 += 40;
              --v96;
            }

            while (v96);
            goto LABEL_140;
          }
        }

        *(a1 + 72) = 0;
        LODWORD(v96) = 1;
        goto LABEL_136;
      }

      v34 = 0;
    }

    *(a1 + 132) = v148;
    goto LABEL_46;
  }

  return result;
}

void kdu_analysis::kdu_analysis(void *a1, uint64_t a2)
{
  v2 = a2;
  *a1 = 0;
  operator new();
}

uint64_t kd_analysis::simulate_vertical_lifting(kd_analysis *this, int a2)
{
  v39 = 0;
  v3 = *(this + 28);
  v4 = *(this + 29);
  if (v4 - (v3 + a2) - 2 <= 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = (v4 - (v3 + a2) - 2) & 0x7FFFFFFE;
  }

  v6 = v4 - v5;
  *(this + 30) = v3;
  if ((*(this + 12) & 0x80000000) == 0)
  {
    v7 = 0;
    v8 = -1;
    v9 = -48;
    do
    {
      v10 = v6;
      if (v8 >= 1)
      {
        v10 = v6 - ((v4 ^ v8) & 1) + 2 * (*(*(this + 10) + v7 - 28) + *(*(this + 10) + v7 - 31)) - 2;
      }

      kd_vlift_queue::init(*(this + 13) + v9, *(this + 30), v6, v8++, *(this + 98), v10);
      v11 = *(this + 12);
      v9 += 48;
      v7 += 32;
    }

    while (v8 < v11);
    if (v11 >= 1)
    {
      v12 = (v11 + 3) & 0xFFFFFFFC;
      v13 = vdupq_n_s64(v11 - 1);
      v14 = *(this + 28) | 1;
      v15 = ((__PAIR64__(*(this + 28), *(this + 28) & 1) - 1) >> 32) + 1;
      v16 = xmmword_186205EB0;
      v17 = xmmword_186205EC0;
      v18 = (*(this + 10) + 88);
      v19 = vdupq_n_s64(4uLL);
      do
      {
        v20 = vmovn_s64(vcgeq_u64(v13, v17));
        if (vuzp1_s16(v20, *v13.i8).u8[0])
        {
          *(v18 - 16) = v14;
        }

        if (vuzp1_s16(v20, *&v13).i8[2])
        {
          *(v18 - 8) = v15;
        }

        if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, *&v16))).i32[1])
        {
          *v18 = v14;
          v18[8] = v15;
        }

        v16 = vaddq_s64(v16, v19);
        v17 = vaddq_s64(v17, v19);
        v18 += 32;
        v12 -= 4;
      }

      while (v12);
    }
  }

  v21 = *(this + 30);
  if (v21 > v6)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    if (v39 >= result)
    {
      LODWORD(result) = v39 + 1;
    }

    v38 = result;
    ++v39;
    kd_vlift_queue::simulate_push_line(*(this + 13) + 48 * -(v21 & 1), v21, &v39);
    v23 = (*(this + 30) & 1) == 0;
    do
    {
      if (v23 < 0)
      {
        break;
      }

      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = -1;
      do
      {
        v28 = v27 + 1;
        v29 = *(this + 12);
        if (v27 + 1 >= v29)
        {
          break;
        }

        v30 = *(this + 10);
        v31 = v30 + v24;
        v32 = *(v30 + v24 + 24);
        v33 = (v32 ^ 1) + 2 * *(v30 + v24 + 4);
        if (v32 <= v6)
        {
          v34 = *(this + 13);
          *(v34 + v25 - 12) = v32;
          if (*(v34 + v25 - 24) > v32 || *(v34 + v25 - 20) < v32 || !kd_vlift_queue::simulate_access_source((v34 + v25), v33, *(v30 + v24 + 1), &v39))
          {
            goto LABEL_38;
          }

          kd_vlift_queue::simulate_access_update((*(this + 13) + v25 - 48), *(v31 + 24), &v39);
          v35 = v39;
          v36 = v38;
          if (v39 >= v38)
          {
            v36 = v39 + 1;
          }

          v38 = v36;
          ++v39;
          if (v28 == *(this + 12) - 1)
          {
            v39 = v35;
            kd_vlift_queue::simulate_access_update((*(this + 13) + v25), v33, &v39);
          }

          else
          {
            kd_vlift_queue::simulate_push_line(*(this + 13) + v25 + 48, *(v31 + 24), &v39);
            v23 = v27 + 3;
          }
        }

        else if (v28 != v29 - 1 || (kd_vlift_queue::simulate_access_update((*(this + 13) + v25), v33, &v39) & 1) == 0)
        {
          goto LABEL_38;
        }

        *(v31 + 24) += 2;
        v26 = 1;
LABEL_38:
        ++v27;
        v25 += 48;
        v24 += 32;
      }

      while (v27 < v23);
    }

    while ((v26 & 1) != 0);
    v37 = *(this + 30);
    v21 = v37 + 1;
    *(this + 30) = v37 + 1;
    result = v38;
  }

  while (v37 < v6);
  return result;
}

uint64_t kd_vlift_line::pre_create(kd_vlift_line *this, kdu_sample_allocator *a2, int a3, int a4, char a5, int a6, unsigned __int8 a7, char a8, BOOL a9)
{
  result = kdu_line_buf::pre_create(this, a2, a3, a5, a6, a7, a8 - a3);
  if (a9)
  {

    return kdu_line_buf::pre_create((this + 16), a2, a4, a5, a6, a7, a8 - a4);
  }

  return result;
}

uint64_t kd_vlift_queue::init(uint64_t this, int a2, int a3, int a4, unsigned __int8 a5, int a6)
{
  *(this + 45) = a4;
  *this = a2;
  *(this + 4) = a3;
  *(this + 32) = a2 - 1000;
  *(this + 36) = a2 - 1000;
  *(this + 24) = a2 - 1000;
  *(this + 44) = a5;
  if (((a6 >= a3) & a5) != 0)
  {
    v6 = 2 * a3 - a6;
  }

  else
  {
    v6 = a3 - 1;
  }

  *(this + 40) = v6;
  if (a4 < 0)
  {
    *(this + 40) = a3 + 2;
    *(this + 32) = a3 + 2;
  }

  *(this + 28) = a2 - 1002;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

void kd_analysis::~kd_analysis(kd_roi_level **this)
{
  *this = &unk_1EF4D34A0;
  for (i = 1; i != 5; ++i)
  {
    v3 = this[i];
    if (v3)
    {
      (*(*v3 + 8))(v3);
      this[i] = 0;
    }
  }

  if (this[18])
  {
    kdu_roi_level::destroy(this + 18);
  }

  v4 = this[19];
  if (v4)
  {
    MEMORY[0x186602830](v4, 0x1000C8052888210);
  }

  v5 = this[20];
  if (v5)
  {
    MEMORY[0x186602830](v5, 0x1000C8052888210);
  }

  v6 = this[21];
  if (v6)
  {
    MEMORY[0x186602830](v6, 0x80C80B8603338);
  }

  v7 = this[22];
  if (v7)
  {
    MEMORY[0x186602830](v7, 0x1020C803C8EFFD9);
  }

  v8 = this[23];
  if (v8)
  {
    MEMORY[0x186602830](v8, 0x1090C805C18EE7CLL);
  }

  v9 = this[24];
  if (v9)
  {
    MEMORY[0x186602830](v9, 0x1090C805C18EE7CLL);
  }

  v10 = this[25];
  if (v10)
  {
    MEMORY[0x186602830](v10, 0x1020C806F595497);
  }

  *this = &unk_1EF4D34F0;
}

{
  kd_analysis::~kd_analysis(this);

  JUMPOUT(0x186602850);
}

uint64_t kd_vlift_queue::simulate_push_line(uint64_t this, int a2, int *a3)
{
  if ((*(this + 45) ^ a2))
  {
    kd_vlift_queue::simulate_push_line();
  }

  if (*(this + 32) <= a2 || *(this + 36) <= a2)
  {
    if (*(this + 28) < *(this + 24))
    {
      *(this + 24) = a2;
    }

    *(this + 28) = a2;
  }

  else
  {
    --*a3;
  }

  return this;
}

uint64_t kd_vlift_queue::simulate_access_update(kd_vlift_queue *this, int a2, int *a3)
{
  if (((*(this + 45) ^ a2) & 1) != 0 || *(this + 9) > a2)
  {
    kd_vlift_queue::simulate_access_update();
  }

  *(this + 9) = a2;
  v3 = *(this + 6);
  if (v3 > a2 || *(this + 7) < a2)
  {
    return 0;
  }

  *(this + 9) = a2 + 2;
  do
  {
    if (v3 >= *(this + 8))
    {
      break;
    }

    if (*(this + 7) < v3)
    {
      break;
    }

    if (v3 >= *(this + 10))
    {
      break;
    }

    *(this + 6) = v3 + 2;
    --*a3;
    v3 = *(this + 6);
  }

  while (v3 < *(this + 9));
  return 1;
}

uint64_t kd_vlift_queue::simulate_access_source(kd_vlift_queue *this, int a2, int a3, int *a4)
{
  if (((*(this + 45) ^ a2) & 1) != 0 || *(this + 8) > a2)
  {
    kd_vlift_queue::simulate_access_source();
  }

  *(this + 8) = a2;
  if (a3 <= 0)
  {
    v8 = *(this + 6);
LABEL_20:
    *(this + 8) = a2 + 2;
    while (v8 < *(this + 9) && v8 < *(this + 8) && *(this + 7) >= v8 && v8 < *(this + 10))
    {
      *(this + 6) = v8 + 2;
      --*a4;
      v8 = *(this + 6);
    }

    return 1;
  }

  v4 = a3 - 1;
  v5 = a2 + 2 * (a3 - 1);
  v6 = *this;
  v7 = *(this + 1);
  v8 = *(this + 6);
  while (2)
  {
    v9 = v5;
    while (v9 < v6)
    {
      v10 = *(this + 44);
      v11 = ((v6 ^ v9) & 1) + v6;
      v9 = 2 * *this - v9;
LABEL_10:
      if (v10 != 1)
      {
        v9 = v11;
      }
    }

    if (v9 > v7)
    {
      v10 = *(this + 44);
      v11 = v7 - ((v7 ^ v9) & 1);
      v9 = 2 * v7 - v9;
      goto LABEL_10;
    }

    if (v9 >= v8 && v9 <= *(this + 7))
    {
      v5 -= 2;
      if (v4-- <= 0)
      {
        goto LABEL_20;
      }

      continue;
    }

    return 0;
  }
}

uint64_t kd_analysis::push(uint64_t result, int *a2, kdu_thread_entity *this)
{
  v3 = *(result + 120);
  if (v3 > *(result + 116))
  {
    kd_analysis::push();
  }

  v5 = result;
  if (*(result + 40) != (*(a2 + 6) & 1))
  {
    kd_analysis::push();
  }

  if (*(result + 142) == 1)
  {
    *(result + 120) = v3 + 1;
    return result;
  }

  v6 = this;
  if ((*(result + 42) & 1) == 0)
  {
    if (this)
    {
      result = kdu_thread_entity::acquire_lock(this, 3, 1);
    }

    for (i = *(v5 + 72); i; i = *(i + 32))
    {
      kdu_line_buf::create(i);
      result = kdu_line_buf::create(i + 16);
    }

    *(v5 + 42) = 1;
    if (v6)
    {
      result = kdu_thread_entity::release_lock(v6, 3);
    }
  }

  v8 = *(v5 + 72);
  if (!v8)
  {
    kd_analysis::push();
  }

  if (*(v5 + 43) == 1)
  {
    v9 = *(v5 + 120) & 1;
  }

  else
  {
    v9 = 0;
  }

  if (*(v5 + 48) < 1 || (*(v5 + 140) & 1) != 0)
  {
    v10 = 1;
  }

  else
  {
    *(v5 + 72) = *(v8 + 32);
    *(v8 + 32) = 0;
    v11 = *(v5 + 104);
    result = kd_vlift_queue::push_line(v11 + 48 * -v9, *(v5 + 120), v8, (v5 + 72));
    v10 = v11 == 0;
  }

  v12 = *(v5 + 132);
  ++*(v5 + 120);
  v13 = *a2;
  if (*a2 != *(v5 + 136) + v12)
  {
    kd_analysis::push();
  }

  v14 = v13 + 1;
  v15 = (v13 + 1) >> 1;
  v16 = *(a2 + 1);
  if (*(v5 + 44))
  {
    v17 = v8 + 16 * (*(v5 + 124) & 1);
    if (*(v5 + 41))
    {
      v18 = 0;
      if ((*(a2 + 6) & 2) == 0)
      {
        v16 = 0;
      }

      if ((*(v17 + 6) & 2) != 0)
      {
        v18 = *(v17 + 8);
      }

      v19 = v8 + 16 * !(*(v5 + 124) & 1);
      if ((*(v19 + 6) & 2) != 0)
      {
        v20 = *(v19 + 8);
      }

      else
      {
        v20 = 0;
      }

      v30 = *(v5 + 100);
      if (v30)
      {
        if (v14 >= 2)
        {
          v31 = 0x8000 << v30 >> 16;
          do
          {
            *v18++ = (v31 + *v16) >> *(v5 + 100);
            *v20++ = (v31 + *(v16++ + 1)) >> *(v5 + 100);
            --v15;
          }

          while (v15);
        }
      }

      else if (v14 >= 2)
      {
        do
        {
          *v18++ = *v16;
          *v20++ = *(v16++ + 1);
          --v15;
        }

        while (v15);
      }
    }

    else
    {
      v24 = 0;
      if ((*(a2 + 6) & 2) != 0)
      {
        v16 = 0;
      }

      if ((*(v17 + 6) & 2) == 0)
      {
        v24 = *(v17 + 8);
      }

      v25 = v8 + 16 * !(*(v5 + 124) & 1);
      if ((*(v25 + 6) & 2) != 0)
      {
        v26 = 0;
      }

      else
      {
        v26 = *(v25 + 8);
      }

      v32 = *(v5 + 100);
      if (v32)
      {
        if (v14 >= 2)
        {
          v33 = 1.0 / (1 << v32);
          do
          {
            *v24++ = v33 * *v16;
            *v26++ = v33 * v16[1];
            v16 += 2;
            --v15;
          }

          while (v15);
        }
      }

      else if (v14 >= 2)
      {
        do
        {
          *v24++ = *v16;
          *v26++ = v16[1];
          v16 += 2;
          --v15;
        }

        while (v15);
      }
    }
  }

  else if (*(v5 + 41))
  {
    v21 = 0;
    if ((*(a2 + 6) & 2) == 0)
    {
      v16 = 0;
    }

    if ((*(v8 + 6) & 2) != 0)
    {
      v21 = *(v8 + 8);
    }

    v22 = *(v5 + 100);
    if (v22)
    {
      if (v14 >= 2)
      {
        v23 = 0x8000 << v22 >> 16;
        do
        {
          *v21 = (v23 + *v16) >> *(v5 + 100);
          v21[1] = (v23 + *(v16++ + 1)) >> *(v5 + 100);
          v21 += 2;
          --v15;
        }

        while (v15);
      }
    }

    else if (v14 >= 2)
    {
      do
      {
        *v21 = *v16;
        v21[1] = *(v16++ + 1);
        v21 += 2;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v27 = 0;
    if ((*(a2 + 6) & 2) != 0)
    {
      v16 = 0;
    }

    if ((*(v8 + 6) & 2) == 0)
    {
      v27 = *(v8 + 8);
    }

    v28 = *(v5 + 100);
    if (v28)
    {
      if (v14 >= 2)
      {
        v29 = 1.0 / (1 << v28);
        do
        {
          *v27 = v29 * *v16;
          v27[1] = v29 * v16[1];
          v16 += 2;
          v27 += 2;
          --v15;
        }

        while (v15);
      }
    }

    else if (v14 >= 2)
    {
      do
      {
        *v27 = *v16;
        v27[1] = v16[1];
        v16 += 2;
        v27 += 2;
        --v15;
      }

      while (v15);
    }
  }

  if (*(v5 + 140) == 1 && *(v5 + 40) == 1 && v9 != 0)
  {
    if ((*(v5 + 43) & 1) == 0)
    {
      kd_analysis::push();
    }

    if (*(v5 + 41))
    {
      v35 = 0;
      v36 = 1;
      do
      {
        v37 = v36;
        v38 = v8 + 16 * v35;
        if ((*(v38 + 6) & 2) != 0)
        {
          v39 = *(v38 + 8);
        }

        else
        {
          v39 = 0;
        }

        for (j = *v38; j; --j)
        {
          *v39++ *= 2;
        }

        v36 = 0;
        v35 = 1;
      }

      while ((v37 & 1) != 0);
    }

    else
    {
      v41 = 0;
      v42 = 1;
      do
      {
        v43 = v42;
        v44 = v8 + 16 * v41;
        if ((*(v44 + 6) & 2) != 0)
        {
          v45 = 0;
        }

        else
        {
          v45 = *(v44 + 8);
        }

        for (k = *v44; k; --k)
        {
          *v45++ *= 2;
        }

        v42 = 0;
        v41 = 1;
      }

      while ((v43 & 1) != 0);
    }
  }

  if (!v10)
  {
    if (*(v5 + 48) < 1 || *(v5 + 140) == 1)
    {
      kd_analysis::push();
    }

    v82 = (v5 + 72);
    v47 = v9 ^ 1;
    v79 = v6;
    while (1)
    {
      if (v47 < 0)
      {
        return result;
      }

      v48 = 0;
      v81 = 0;
      do
      {
        v49 = *(v5 + 48);
        if (v48 >= v49)
        {
          break;
        }

        v50 = *(v5 + 80) + 32 * v48;
        v51 = *(v50 + 24);
        v52 = (v51 ^ 1) + 2 * *(v50 + 4);
        if (v51 <= *(v5 + 116))
        {
          v53 = *(v5 + 104);
          v54 = (v53 + 48 * (v48 - 1));
          v54[9] = v51;
          if (v54[6] > v51)
          {
            continue;
          }

          if (v54[7] < v51)
          {
            continue;
          }

          v80 = v47;
          result = kd_vlift_queue::access_source((v53 + 48 * v48), v52, *(v50 + 1), *(v5 + 56), v82);
          if (!result)
          {
            continue;
          }

          v55 = kd_vlift_queue::access_update(*(v5 + 104) + 48 * (v48 - 1), *(v50 + 24), v82);
          v56 = *(v5 + 72);
          if (!v56)
          {
            kd_analysis::push();
          }

          if (*(v50 + 1))
          {
            v57 = v55;
            v58 = 0;
            v59 = 1;
            do
            {
              v60 = v59;
              v61 = *(v5 + 132 + 4 * v58);
              if (v61)
              {
                v62 = *(v5 + 64);
                v63 = *(v50 + 1);
                v64 = v57 + 16 * v58;
                v65 = v56 + 16 * v58;
                if (*(v5 + 41) == 1)
                {
                  if (*(v50 + 1))
                  {
                    v66 = 0;
                    v67 = 8 * v63;
                    do
                    {
                      v68 = *(*(v5 + 56) + v66) + 16 * v58;
                      if ((*(v68 + 6) & 2) != 0)
                      {
                        v69 = *(v68 + 8);
                      }

                      else
                      {
                        v69 = 0;
                      }

                      v62[v66 / 8] = v69;
                      v66 += 8;
                    }

                    while (v67 != v66);
                  }

                  if ((*(v64 + 6) & 2) != 0)
                  {
                    v70 = *(v64 + 8);
                  }

                  else
                  {
                    v70 = 0;
                  }

                  if ((*(v65 + 6) & 2) != 0)
                  {
                    v76 = *(v65 + 8);
                  }

                  else
                  {
                    v76 = 0;
                  }

                  perform_analysis_lifting_step(v50, v62, v70, v76, v61, 0);
                }

                else
                {
                  if (*(v50 + 1))
                  {
                    v71 = 0;
                    v72 = 8 * v63;
                    do
                    {
                      v73 = *(*(v5 + 56) + v71) + 16 * v58;
                      if ((*(v73 + 6) & 2) != 0)
                      {
                        v74 = 0;
                      }

                      else
                      {
                        v74 = *(v73 + 8);
                      }

                      v62[v71 / 8] = v74;
                      v71 += 8;
                    }

                    while (v72 != v71);
                  }

                  if ((*(v64 + 6) & 2) != 0)
                  {
                    v75 = 0;
                  }

                  else
                  {
                    v75 = *(v64 + 8);
                  }

                  if ((*(v65 + 6) & 2) != 0)
                  {
                    v77 = 0;
                  }

                  else
                  {
                    v77 = *(v65 + 8);
                  }

                  perform_analysis_lifting_step(v50, v62, v75, v77, v61, 0);
                }
              }

              v59 = 0;
              v58 = 1;
            }

            while ((v60 & 1) != 0);
          }

          if (v48 == *(v5 + 48) - 1)
          {
            v6 = v79;
            kd_analysis::horizontal_analysis(v5, v56, !(v48 & 1), v79);
            result = kd_vlift_queue::access_update(*(v5 + 104) + 48 * v48, v52, v82);
            if (result)
            {
              result = kd_analysis::horizontal_analysis(v5, result, v48 & 1, v79);
            }

            v47 = v80;
          }

          else
          {
            *(v5 + 72) = *(v56 + 32);
            *(v56 + 32) = 0;
            result = kd_vlift_queue::push_line(*(v5 + 104) + 48 * v48 + 48, *(v50 + 24), v56, v82);
            v47 = v48 + 2;
            v6 = v79;
          }
        }

        else
        {
          if (v48 != v49 - 1)
          {
            continue;
          }

          result = kd_vlift_queue::access_update(*(v5 + 104) + 48 * v48, v52, v82);
          if (!result)
          {
            continue;
          }

          result = kd_analysis::horizontal_analysis(v5, result, v48 & 1, v6);
        }

        *(v50 + 24) += 2;
        v81 = 1;
      }

      while (v48++ < v47);
      if ((v81 & 1) == 0)
      {
        return result;
      }
    }
  }

  return kd_analysis::horizontal_analysis(v5, v8, v9, v6);
}

uint64_t kd_vlift_queue::push_line(uint64_t result, int a2, uint64_t a3, void *a4)
{
  if ((*(result + 45) ^ a2))
  {
    kd_vlift_queue::push_line();
  }

  if (*(result + 32) <= a2 || *(result + 36) <= a2)
  {
    *(a3 + 32) = 0;
    v5 = *(result + 16);
    if (v5)
    {
      if (*(result + 28) + 2 != a2)
      {
        kd_vlift_queue::push_line();
      }

      *(v5 + 32) = a3;
      *(result + 16) = a3;
    }

    else
    {
      *(result + 8) = a3;
      *(result + 16) = a3;
      *(result + 24) = a2;
    }

    *(result + 28) = a2;
  }

  else
  {
    *(a3 + 32) = *a4;
    for (*a4 = a3; ; *a4 = v4)
    {
      v4 = *(result + 8);
      *(result + 16) = v4;
      if (!v4)
      {
        break;
      }

      *(result + 8) = *(v4 + 32);
      *(v4 + 32) = *a4;
    }
  }

  return result;
}

uint64_t kd_analysis::horizontal_analysis(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v4 = result + 132;
  if (*(result + 132) != *a2 || *(result + 136) != *(a2 + 16))
  {
    kd_analysis::horizontal_analysis();
  }

  if (*(result + 141) == 1 && *(result + 52) >= 1 && *(result + 40) == 1 && (*(result + 124) & 1) != 0)
  {
    if ((*(result + 44) & 1) == 0)
    {
      kd_analysis::horizontal_analysis();
    }

    if (*(result + 41))
    {
      **(a2 + 24) *= 2;
    }

    else
    {
      **(a2 + 24) *= 2;
    }
  }

  v7 = *(result + 52);
  if (v7 && (*(result + 141) & 1) == 0)
  {
    if (v7 < 1)
    {
LABEL_114:
      v81 = 0;
      v82 = result + 8;
      v83 = 2 * a3;
      v84 = 1;
      do
      {
        v85 = v84;
        result = (*(**(v82 + 8 * (v81 | v83)) + 16))(*(v82 + 8 * (v81 | v83)), a2 + 16 * v81, a4);
        v84 = 0;
        v81 = 1;
      }

      while ((v85 & 1) != 0);
      return result;
    }

    v13 = 0;
    while (1)
    {
      v14 = *(result + 88) + 32 * v13;
      if (*(v14 + 1))
      {
        v15 = (v13 & 1) == 0;
        v16 = *(v4 + 4 * v15);
        v17 = v13 & 1;
        v18 = a2 + 16 * v17;
        if (*(result + 41) == 1)
        {
          if ((*(v18 + 6) & 2) != 0)
          {
            v19 = *(v18 + 8);
          }

          else
          {
            v19 = 0;
          }

          v21 = a2 + 16 * v15;
          if ((*(v21 + 6) & 2) != 0)
          {
            v22 = *(v21 + 8);
          }

          else
          {
            v22 = 0;
          }

          v25 = *(v4 + 4 * v17);
          v26 = &v19[v25];
          if (*(result + 99))
          {
            if (*(v14 + 3))
            {
              v27 = v26 - 1;
              v28 = v25;
              v29 = -1;
              v30 = 1;
              do
              {
                v19[v29] = v19[v30 - ((*(result + 124) ^ v13) & 1)];
                v19[v28] = v27[v29 + ((*(result + 128) ^ v13) & 1)];
                --v29;
                ++v28;
                v31 = v30++ >= *(v14 + 3);
              }

              while (!v31);
            }
          }

          else if (*(v14 + 3))
          {
            v38 = 0;
            v39 = v19 - 1;
            do
            {
              *v39-- = *v19;
              v26[v38++] = *(v26 - 1);
            }

            while (v38 < *(v14 + 3));
          }

          v40 = (*(result + 124) << 31 >> 31) & (1 - 2 * v15);
          v41 = *(v14 + 4);
          v42 = *(v14 + 1);
          v43 = *(v14 + 16);
          if (v42 == 2 && (v44 = *v43, *v43 == v43[1]))
          {
            v45 = *(v14 + 2);
            v46 = *(v14 + 6);
            if (v44 == 1)
            {
              if (v16 >= 1)
              {
                v77 = &v19[v41 + 1 + v40];
                do
                {
                  *v22++ += (*(v77 - 1) + v46 + *v77) >> v45;
                  ++v77;
                  --v16;
                }

                while (v16);
              }
            }

            else if (v44 == -1)
            {
              if (v16 >= 1)
              {
                v47 = &v19[v41 + 1 + v40];
                do
                {
                  *v22++ += (v46 - (*(v47 - 1) + *v47)) >> v45;
                  ++v47;
                  --v16;
                }

                while (v16);
              }
            }

            else if (v16 >= 1)
            {
              v78 = &v19[v41 + 1 + v40];
              do
              {
                *v22++ += (v46 + (*v78 + *(v78 - 1)) * v44) >> v45;
                ++v78;
                --v16;
              }

              while (v16);
            }
          }

          else if (v16 >= 1)
          {
            v48 = 0;
            v49 = &v19[v40 + v41];
            v50 = *(v14 + 2);
            v51 = *(v14 + 6);
            do
            {
              v52 = v51;
              if (v42)
              {
                v53 = 0;
                v52 = v51;
                do
                {
                  v52 += v43[v53] * *(v49 + 2 * v53);
                  ++v53;
                }

                while (v42 != v53);
              }

              v22[v48++] += v52 >> v50;
              v49 += 2;
            }

            while (v48 != v16);
          }
        }

        else
        {
          if ((*(v18 + 6) & 2) != 0)
          {
            v20 = 0;
          }

          else
          {
            v20 = *(v18 + 8);
          }

          v23 = a2 + 16 * v15;
          if ((*(v23 + 6) & 2) != 0)
          {
            v24 = 0;
          }

          else
          {
            v24 = *(v23 + 8);
          }

          v32 = *(v4 + 4 * v17);
          v33 = &v20[v32];
          if (*(result + 99))
          {
            if (*(v14 + 3))
            {
              v34 = v33 - 1;
              v35 = v32;
              v36 = -1;
              v37 = 1;
              do
              {
                v20[v36] = v20[v37 - ((*(result + 124) ^ v13) & 1)];
                v20[v35] = v34[v36 + ((*(result + 128) ^ v13) & 1)];
                --v36;
                ++v35;
                v31 = v37++ >= *(v14 + 3);
              }

              while (!v31);
            }
          }

          else if (*(v14 + 3))
          {
            v54 = 0;
            v55 = v20 - 1;
            do
            {
              *v55-- = *v20;
              v33[v54++] = *(v33 - 1);
            }

            while (v54 < *(v14 + 3));
          }

          v56 = (*(result + 124) << 31 >> 31) & (1 - 2 * v15);
          v57 = *(v14 + 4);
          v58 = &v20[v56 + v57];
          v59 = *(v14 + 1);
          if (v59 != 2)
          {
            if (*(result + 40))
            {
              goto LABEL_77;
            }

LABEL_85:
            if (v16 >= 1)
            {
              v72 = 0;
              v73 = *(v14 + 8);
              do
              {
                if (v59)
                {
                  v74 = 0;
                  v75 = 0.0;
                  do
                  {
                    v75 = v75 + (*(v73 + v74) * *(v58 + v74));
                    v74 += 4;
                  }

                  while (4 * v59 != v74);
                }

                else
                {
                  v75 = 0.0;
                }

                v24[v72] = v75 + v24[v72];
                ++v72;
                v58 += 4;
              }

              while (v72 != v16);
            }

            goto LABEL_113;
          }

          v60 = *(v14 + 8);
          v61 = *v60;
          if (*v60 != v60[1])
          {
            if (*(result + 40))
            {
LABEL_77:
              if (v16 >= 1)
              {
                v66 = 0;
                v67 = *(v14 + 2);
                v68 = *(v14 + 6);
                v69 = *(v14 + 16);
                do
                {
                  v70 = v68;
                  if (v59)
                  {
                    v71 = 0;
                    v70 = v68;
                    do
                    {
                      v70 += *(v58 + v71) * *(v69 + v71);
                      v71 += 4;
                    }

                    while (4 * v59 != v71);
                  }

                  LODWORD(v24[v66++]) += v70 >> v67;
                  v58 += 4;
                }

                while (v66 != v16);
              }

              goto LABEL_113;
            }

            goto LABEL_85;
          }

          if (*(result + 40))
          {
            v62 = *(v14 + 2);
            v63 = *(v14 + 6);
            v64 = **(v14 + 16);
            if (v64 == 1)
            {
              if (v16 >= 1)
              {
                v79 = &v20[v57 + 1 + v56];
                do
                {
                  *v24++ += (*(v79 - 1) + v63 + *v79) >> v62;
                  ++v79;
                  --v16;
                }

                while (v16);
              }
            }

            else if (v64 == -1)
            {
              if (v16 >= 1)
              {
                v65 = &v20[v57 + 1 + v56];
                do
                {
                  *v24++ += (v63 - (*(v65 - 1) + *v65)) >> v62;
                  ++v65;
                  --v16;
                }

                while (v16);
              }
            }

            else if (v16 >= 1)
            {
              v80 = &v20[v57 + 1 + v56];
              do
              {
                *v24++ += (v63 + (*v80 + *(v80 - 1)) * v64) >> v62;
                ++v80;
                --v16;
              }

              while (v16);
            }
          }

          else if (v16 >= 1)
          {
            v76 = &v20[v57 + 1 + v56];
            do
            {
              *v24 = *v24 + (v61 * (*(v76 - 1) + *v76));
              ++v24;
              ++v76;
              --v16;
            }

            while (v16);
          }
        }
      }

LABEL_113:
      if (++v13 >= *(result + 52))
      {
        goto LABEL_114;
      }
    }
  }

  v8 = 0;
  v9 = result + 8;
  v10 = 2 * a3;
  v11 = 1;
  do
  {
    v12 = v11;
    if (*(v4 + 4 * v8) >= 1)
    {
      result = (*(**(v9 + 8 * (v8 | v10)) + 16))(*(v9 + 8 * (v8 | v10)), a2 + 16 * v8, a4);
    }

    v11 = 0;
    v8 = 1;
  }

  while ((v12 & 1) != 0);
  return result;
}

uint64_t kd_vlift_queue::access_update(uint64_t a1, int a2, void *a3)
{
  if (((*(a1 + 45) ^ a2) & 1) != 0 || *(a1 + 36) > a2)
  {
    kd_vlift_queue::access_update();
  }

  *(a1 + 36) = a2;
  v3 = *(a1 + 24);
  if (v3 > a2 || *(a1 + 28) < a2)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v4 = v6;
  if (v3 < a2)
  {
    v4 = *(a1 + 8);
    v7 = a2;
    do
    {
      v7 -= 2;
      v4 = *(v4 + 32);
    }

    while (v7 > v3);
  }

  if (!v4)
  {
    kd_vlift_queue::access_update();
  }

  v8 = a2 + 2;
  *(a1 + 36) = a2 + 2;
  if (*(a1 + 32) < a2 + 2)
  {
    v8 = *(a1 + 32);
  }

  while (v3 < v8 && v6 && v3 < *(a1 + 40))
  {
    v3 += 2;
    *(a1 + 24) = v3;
    v9 = *(v6 + 32);
    *(v6 + 32) = *a3;
    *a3 = v6;
    *(a1 + 8) = v9;
    if (!v9)
    {
      *(a1 + 16) = 0;
    }

    v6 = v9;
  }

  return v4;
}

uint64_t kd_vlift_queue::access_source(int *a1, int a2, int a3, uint64_t a4, void *a5)
{
  if (((*(a1 + 45) ^ a2) & 1) != 0 || a1[8] > a2)
  {
    kd_vlift_queue::access_source();
  }

  a1[8] = a2;
  v5 = a3 - 1;
  v6 = a2 + 2 * (a3 - 1);
  v7 = a1[7];
  if (v6 > v7 && v6 <= a1[1])
  {
    return 0;
  }

  if (a3 <= 0)
  {
    v11 = a1[6];
LABEL_24:
    v19 = a2 + 2;
    a1[8] = a2 + 2;
    if (a1[9] < a2 + 2)
    {
      v19 = a1[9];
    }

    if (v11 < v19)
    {
      v20 = *(a1 + 1);
      do
      {
        if (!v20 || v11 >= a1[10])
        {
          break;
        }

        v11 += 2;
        a1[6] = v11;
        v21 = *(v20 + 32);
        *(v20 + 32) = *a5;
        *a5 = v20;
        *(a1 + 1) = v21;
        if (!v21)
        {
          *(a1 + 2) = 0;
        }

        v20 = v21;
      }

      while (v11 < v19);
    }

    return 1;
  }

  v8 = (a4 + 8 * v5);
  v9 = *a1;
  v10 = 2 * *a1;
  v11 = a1[6];
  while (2)
  {
    v12 = a1[1];
    v13 = v6;
    while (v13 < v9)
    {
      v14 = *(a1 + 44);
      v15 = ((v9 ^ v13) & 1) + v9;
      v13 = v10 - v13;
LABEL_12:
      if (v14 != 1)
      {
        v13 = v15;
      }
    }

    if (v13 > v12)
    {
      v14 = *(a1 + 44);
      v15 = v12 - ((v12 ^ v13) & 1);
      v13 = 2 * v12 - v13;
      goto LABEL_12;
    }

    v16 = 0;
    if (v13 <= v7 && v13 >= v11)
    {
      for (i = *(a1 + 1); ; i = *(i + 32))
      {
        *v8 = i;
        if (v13 <= v11)
        {
          break;
        }

        v13 -= 2;
      }

      v6 -= 2;
      --v8;
      if (v5-- <= 0)
      {
        goto LABEL_24;
      }

      continue;
    }

    return v16;
  }
}

uint64_t perform_analysis_lifting_step(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  if (a5 >= 1)
  {
    v6 = a6 - 16;
    if (a6 < 0x10)
    {
      v6 = 0;
    }

    v7 = v6 + 7;
    v8 = v7 & 0xFFFFFFF8;
    v9 = 16 * (v7 >> 3) + 16;
    v10 = a3 + v9;
    v11 = a6 - v8 - 8;
    v12 = a4 + v9;
    if (a6 >= 9)
    {
      LODWORD(v13) = v11;
    }

    else
    {
      LODWORD(v13) = a6;
    }

    if (a6 >= 9)
    {
      v14 = v10;
    }

    else
    {
      v12 = a4;
      v14 = a3;
    }

    v15 = v13 + a5;
    v16 = *(result + 1);
    if (v16 == 2 && (v17 = *(result + 16), v18 = *v17, *v17 == v17[1]))
    {
      v19 = *(result + 2);
      v20 = 1 << v19 >> 1;
      v21 = *a2;
      v22 = a2[1];
      v13 = v13;
      if (v18 == 1)
      {
        do
        {
          result = *(v14 + 2 * v13);
          *(v12 + 2 * v13) = result + ((v20 + *(v21 + 2 * v13) + *(v22 + 2 * v13)) >> v19);
          ++v13;
        }

        while (v13 < v15);
      }

      else if (v18 == -1)
      {
        do
        {
          result = *(v14 + 2 * v13);
          *(v12 + 2 * v13) = result + ((v20 - (*(v21 + 2 * v13) + *(v22 + 2 * v13))) >> v19);
          ++v13;
        }

        while (v13 < v15);
      }

      else
      {
        do
        {
          result = *(v14 + 2 * v13);
          *(v12 + 2 * v13) = result + ((v20 + (*(v22 + 2 * v13) + *(v21 + 2 * v13)) * v18) >> v19);
          ++v13;
        }

        while (v13 < v15);
      }
    }

    else
    {
      v23 = *(result + 2);
      v24 = *(result + 6);
      v25 = v13;
      v26 = v15;
      do
      {
        v27 = v24;
        if (v16)
        {
          v28 = *(result + 16);
          v29 = v16;
          v30 = a2;
          v27 = v24;
          do
          {
            v32 = *v28++;
            v31 = v32;
            v33 = *v30++;
            v27 += v31 * *(v33 + 2 * v25);
            --v29;
          }

          while (v29);
        }

        *(v12 + 2 * v25) = *(v14 + 2 * v25) + (v27 >> v23);
        ++v25;
      }

      while (v25 < v26);
    }
  }

  return result;
}

{
  if (a5 < 1)
  {
    return result;
  }

  v6 = a6 - 8;
  if (a6 < 8)
  {
    v6 = 0;
  }

  v7 = v6 + 3;
  v8 = v7 & 0xFFFFFFFC;
  v9 = 16 * (v7 >> 2) + 16;
  v10 = a3 + v9;
  v11 = a6 - v8 - 4;
  v12 = a4 + v9;
  if (a6 >= 5)
  {
    LODWORD(v13) = v11;
  }

  else
  {
    LODWORD(v13) = a6;
  }

  if (a6 >= 5)
  {
    v14 = v10;
  }

  else
  {
    v12 = a4;
    v14 = a3;
  }

  v15 = v13 + a5;
  v16 = *(result + 1);
  if (v16 == 2)
  {
    v17 = *(result + 8);
    v18 = *v17;
    if (*v17 == v17[1])
    {
      v19 = *a2;
      v20 = a2[1];
      if (*(result + 29))
      {
        v21 = *(result + 2);
        v22 = *(result + 6);
        v23 = **(result + 16);
        v13 = v13;
        if (v23 == 1)
        {
          do
          {
            result = *(v20 + 4 * v13);
            *(v12 + 4 * v13) = ((*(v19 + 4 * v13) + v22 + result) >> v21) + *(v14 + 4 * v13);
            ++v13;
          }

          while (v13 < v15);
        }

        else if (v23 == -1)
        {
          do
          {
            result = *(v20 + 4 * v13);
            *(v12 + 4 * v13) = ((v22 - (*(v19 + 4 * v13) + result)) >> v21) + *(v14 + 4 * v13);
            ++v13;
          }

          while (v13 < v15);
        }

        else
        {
          do
          {
            result = ((v22 + (*(v20 + 4 * v13) + *(v19 + 4 * v13)) * v23) >> v21);
            *(v12 + 4 * v13) = result + *(v14 + 4 * v13);
            ++v13;
          }

          while (v13 < v15);
        }
      }

      else
      {
        v40 = v13;
        do
        {
          *(v12 + 4 * v40) = *(v14 + 4 * v40) + (v18 * (*(v19 + 4 * v40) + *(v20 + 4 * v40)));
          ++v40;
        }

        while (v40 < v15);
      }

      return result;
    }

    if (*(result + 29))
    {
      goto LABEL_25;
    }

LABEL_31:
    v35 = 0;
    v36 = v13;
    do
    {
      v37 = a2[v35];
      v38 = *(*(result + 8) + 4 * v35);
      v39 = v36;
      do
      {
        *(v12 + 4 * v39) = *(v14 + 4 * v39) + (v38 * *(v37 + 4 * v39));
        ++v39;
      }

      while (v39 < v15);
      ++v35;
      v14 = v12;
    }

    while (v35 < *(result + 1));
    return result;
  }

  if ((*(result + 29) & 1) == 0)
  {
    if (!*(result + 1))
    {
      return result;
    }

    goto LABEL_31;
  }

LABEL_25:
  v24 = *(result + 2);
  v25 = *(result + 6);
  v26 = v13;
  v27 = v15;
  do
  {
    v28 = v25;
    if (v16)
    {
      v29 = *(result + 16);
      v30 = v16;
      v31 = a2;
      v28 = v25;
      do
      {
        v33 = *v29++;
        v32 = v33;
        v34 = *v31++;
        v28 += *(v34 + 4 * v26) * v32;
        --v30;
      }

      while (v30);
    }

    *(v12 + 4 * v26) = *(v14 + 4 * v26) + (v28 >> v24);
    ++v26;
  }

  while (v26 < v27);
  return result;
}

void kd_analysis::kd_analysis(kd_analysis *this)
{
  v1 = 0;
  *this = &unk_1EF4D34A0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 18) = 0;
  for (i = 336; i != 576; i += 40)
  {
    v3 = v1;
    v4 = 32;
    do
    {
      v5 = this + v3;
      *(v5 + 84) = 0;
      *(v5 + 171) = 0;
      *(v5 + 43) = 0;
      v3 += 16;
      v4 -= 16;
    }

    while (v4);
    v1 += 40;
  }

  *(this + 13) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 25) = 0;
}

void kdu_synthesis::kdu_synthesis(void *a1, uint64_t a2)
{
  v2 = a2;
  *a1 = 0;
  operator new();
}

float *kd_synthesis::init(uint64_t a1, int32x4_t *a2, kdu_sample_allocator *a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7, double a8)
{
  v210 = *MEMORY[0x1E69E9840];
  v206 = a2;
  v205 = kdu_node::access_resolution(&v206);
  reversible = kdu_resolution::get_reversible(&v205);
  *(a1 + 48) = 0;
  *(a1 + 40) = reversible;
  *(a1 + 206) = a4;
  *(a1 + 41) = 0;
  *(a1 + 104) = 0;
  *(a1 + 44) = 0;
  v189 = (a1 + 48);
  v190 = (a1 + 44);
  *(a1 + 98) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  kernel_id = kdu_node::get_kernel_id(&v206);
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  v204 = 0uLL;
  result = kdu_node::get_dims(&v206, &v204);
  v14 = v204.i32[0];
  v13 = v204.i32[1];
  v15 = v204.i32[2];
  v16 = v204.i32[0] + v204.i32[2] - 1;
  v17 = v204.i32[1] - a5;
  v18 = v204.i32[3] - 1;
  v20 = v204.i32[3] < 1;
  v19 = v204.i32[3] - 1 + v204.i32[1];
  *(a1 + 112) = v204.i32[0];
  *(a1 + 120) = v16;
  *(a1 + 184) = v13;
  *(a1 + 188) = v19;
  *(a1 + 200) = v17;
  *(a1 + 148) = v17;
  v20 = v20 || v15 < 1;
  v21 = v20;
  *(a1 + 209) = v21;
  *(a1 + 207) = v16 == v14;
  *(a1 + 208) = v18 == 0;
  if (v21)
  {
    return result;
  }

  v208 = 0u;
  v209 = 0u;
  *&v208 = kdu_node::access_child(&v206, 0);
  *(&v208 + 1) = kdu_node::access_child(&v206, 1u);
  *&v209 = kdu_node::access_child(&v206, 2u);
  *(&v209 + 1) = kdu_node::access_child(&v206, 3u);
  if (!v208)
  {
    kd_synthesis::init();
  }

  v203 = 0uLL;
  kdu_node::get_dims(&v208, &v203);
  v22 = *(&v208 + 1);
  v23 = v209;
  *(a1 + 42) = v209 != 0;
  *(a1 + 43) = v22 != 0;
  v201 = 1065353216;
  v202 = 1065353216;
  v199 = 1065353216;
  v200 = 1065353216;
  *(a1 + 207) = 0;
  if (v23)
  {
    v196[0] = 0;
    *v198 = 0;
    v197 = 0;
    kernel_info = kdu_node::get_kernel_info(&v206, v190, &v202, &v201, (a1 + 96), (a1 + 98), v196, &v198[1], v198, &v197, 1);
    if (v198[1] <= v197)
    {
      v25 = v197;
    }

    else
    {
      v25 = v198[1];
    }

    if (v196[0] >= v198[0])
    {
      v26 = v198[0];
    }

    else
    {
      v26 = v196[0];
    }

    LODWORD(v27) = *(a1 + 44);
    if (v27 > 4)
    {
      operator new[]();
    }

    v28 = a1 + 640;
    *(a1 + 80) = v28;
    if (v27 < 1)
    {
      v30 = 0;
      v31 = 0;
    }

    else
    {
      v30 = 0;
      v31 = 0;
      v32 = *(a1 + 40);
      v33 = (kernel_info + 8);
      v27 = v27;
      do
      {
        *(v28 + 4) = *(v33 - 1);
        v34 = *(v33 - 2);
        *(v28 + 1) = v34;
        *(v28 + 2) = *v33;
        *(v28 + 6) = v33[1];
        if (v31 <= v34)
        {
          v31 = v34;
        }

        *(v28 + 30) = kernel_id;
        *(v28 + 29) = v32;
        v30 += v34;
        v28 += 32;
        v33 += 4;
        --v27;
      }

      while (v27);
      if (v31 > 4)
      {
        operator new[]();
      }
    }

    *(a1 + 56) = a1 + 336 + 8 * v31;
    *(a1 + 64) = a1 + 336;
    v207 = 0uLL;
    kdu_node::get_dims(&v209, &v207);
    v35 = v203.i32[2];
    v36 = 2 * v203.i32[0];
    v37 = 2 * (v203.i32[2] + v203.i32[0]) - 2;
    v38 = v207.i32[0];
    v39 = v207.i32[2];
    v40 = (2 * v207.i32[0]) | 1;
    *(a1 + 124) = 2 * v203.i32[0];
    *(a1 + 128) = v40;
    v41 = 2 * (v39 + v38) - 1;
    *(a1 + 140) = v37;
    *(a1 + 144) = v41;
    if (v39 <= 0)
    {
      *(a1 + 207) = 1;
      if (v36 != v37)
      {
        exception = __cxa_allocate_exception(4uLL);
        *exception = -1;
        __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
      }

      v40 = v36 | 1;
      *(a1 + 128) = v36 | 1;
      v41 = v36 - 1;
      *(a1 + 144) = v36 - 1;
    }

    if (v35 <= 0)
    {
      *(a1 + 207) = 1;
      if (v40 != v41)
      {
        kd_synthesis::init();
      }

      *(a1 + 124) = v41 + 1;
      *(a1 + 140) = v41 - 1;
    }

    v29 = v25 - v26;
    v42 = *(a1 + 43);
    *(a1 + 208) = 0;
    if (v42)
    {
      goto LABEL_36;
    }

LABEL_68:
    v74 = *(a1 + 184);
    v75 = *(a1 + 188);
    *(a1 + 152) = v74;
    *(a1 + 156) = v75;
    *(a1 + 170) = a5;
    v76 = v75 - v74 + 1;
    *(a1 + 172) = v76;
    *(a1 + 171) = 0;
    *(a1 + 176) = 0;
    *(a1 + 204) = (v74 - *(a1 + 148));
    *(a1 + 192) = v76;
    goto LABEL_69;
  }

  v29 = 0;
  *(a1 + 124) = *(a1 + 112);
  *(a1 + 140) = *(a1 + 120);
  *(a1 + 208) = 0;
  if (!v22)
  {
    v30 = 0;
    goto LABEL_68;
  }

  kernel_info = 0;
  v30 = 0;
LABEL_36:
  v196[0] = 0;
  *v198 = 0;
  v197 = 0;
  v43 = kdu_node::get_kernel_info(&v206, (a1 + 48), &v200, &v199, (a1 + 97), (a1 + 99), v196, &v198[1], v198, &v197, 0);
  if (v43 == kernel_info)
  {
    v45 = *(a1 + 80);
  }

  else
  {
    v44 = *v190;
    if (v44 + *v189 > 4)
    {
      operator new[]();
    }

    v45 = a1 + 32 * v44 + 640;
  }

  *(a1 + 88) = v45;
  if (v45 != *(a1 + 80))
  {
    v46 = *v189;
    if (v46 >= 1)
    {
      v47 = *(a1 + 40);
      v48 = (v43 + 8);
      do
      {
        *(v45 + 4) = *(v48 - 1);
        v49 = *(v48 - 2);
        *(v45 + 1) = v49;
        *(v45 + 2) = *v48;
        *(v45 + 6) = v48[1];
        *(v45 + 30) = kernel_id;
        *(v45 + 29) = v47;
        v30 += v49;
        v45 += 32;
        v48 += 4;
        --v46;
      }

      while (v46);
    }
  }

  v207 = 0uLL;
  kdu_node::get_dims(&v208 + 1, &v207);
  v50 = v203.i32[1];
  v51 = v203.i32[3];
  v52 = 2 * v203.i32[1];
  v53 = 2 * (v203.i32[3] + v203.i32[1]) - 2;
  v54 = v207.i32[1];
  v55 = v207.i32[3];
  if (v207.i64[1] <= 0)
  {
    *(a1 + 208) = 1;
    v57 = v52;
    v56 = v52;
    if (v52 != v53)
    {
      kd_synthesis::init();
    }
  }

  else
  {
    v56 = 2 * v207.i32[1];
    v57 = 2 * (v207.i32[3] + v207.i32[1]);
  }

  v58 = v56 | 1;
  v59 = v57 - 1;
  if (v51 <= 0)
  {
    *(a1 + 208) = 1;
    if (v58 != v59)
    {
      kd_synthesis::init();
    }

    v52 = v56 + 2;
    v53 = v56;
  }

  if (v52 >= v58)
  {
    v60 = v56 | 1;
  }

  else
  {
    v60 = v52;
  }

  if (v53 > v59)
  {
    v59 = v53;
  }

  *(a1 + 152) = v60;
  *(a1 + 156) = v59;
  v61 = *(a1 + 148);
  if (v60 < v61)
  {
    if (a4)
    {
      v62 = -8;
    }

    else
    {
      v62 = -4;
    }

    do
    {
      v61 += v62;
    }

    while (v60 < v61);
    *(a1 + 148) = v61;
  }

  v63 = ((v60 + 1) >> 1) - ((v61 + 1) >> 1);
  *(a1 + 168) = ((v60 + 1) >> 1) - ((v61 + 1) >> 1);
  v64 = (v60 >> 1) - (v61 >> 1);
  *(a1 + 169) = (v60 >> 1) - (v61 >> 1);
  v65 = (v59 >> 1) - ((v60 + 1) >> 1) + 1;
  v66 = ((v59 - 1) >> 1) - (v60 >> 1) + 1;
  *(a1 + 160) = v65;
  *(a1 + 164) = v66;
  v67 = v50 - ((v61 + 1) >> 1);
  *(a1 + 170) = v50 - ((v61 + 1) >> 1);
  v68 = v54 - (v61 >> 1);
  *(a1 + 171) = v68;
  *(a1 + 172) = v51;
  *(a1 + 176) = v55;
  v69 = (v50 - ((v61 + 1) >> 1)) - v63;
  if (v69 < 0 || (v70 = v65 + v63 - (v51 + v67), v70 > 0xFF) || v68 - v64 < 0 || (v71 = v66 + v64 - (v55 + v68), v71 >= 0x100))
  {
    kd_synthesis::init();
  }

  *(a1 + 180) = v69;
  *(a1 + 182) = v70;
  *(a1 + 181) = v68 - v64;
  *(a1 + 183) = v71;
  v72 = *(a1 + 184);
  v73 = *(a1 + 188);
  *(a1 + 205) = (v72 >> 1) - (v61 >> 1);
  *(a1 + 204) = ((v72 + 1) >> 1) - ((v61 + 1) >> 1);
  *(a1 + 192) = (v73 >> 1) - ((v72 + 1) >> 1) + 1;
  *(a1 + 196) = ((v73 - 1) >> 1) - (v72 >> 1) + 1;
LABEL_69:
  if (v30 >= 9)
  {
    operator new[]();
  }

  v77 = (a1 + 272);
  v78 = (a1 + 304);
  if (*(a1 + 42) == 1)
  {
    kernel_coefficients = kdu_node::get_kernel_coefficients(&v206, 1);
    v80 = (a1 + 44);
    v81 = *v190;
    if (*v190 >= 1)
    {
      v82 = 0;
      v83 = *(a1 + 80);
      v84 = *(a1 + 40);
      do
      {
        v85 = v83 + 32 * v82;
        *v85 = v82;
        *(v85 + 8) = v77;
        *(v85 + 16) = v78;
        *(v85 + 28) = 0;
        v86 = *(v85 + 1);
        if (*(v85 + 1))
        {
          v87 = *(v85 + 1);
          v88 = kernel_coefficients;
          v89 = v77;
          v90 = 0.4;
          do
          {
            v91 = *v88;
            *v89 = *v88;
            if (v91 <= v90)
            {
              if (v91 < -v90)
              {
                v90 = -v91;
              }
            }

            else
            {
              v90 = v91;
            }

            ++v89;
            ++v88;
            --v87;
          }

          while (v87);
          if (v84)
          {
LABEL_89:
            v92 = *(v85 + 2);
            if (v86)
            {
              goto LABEL_93;
            }

            goto LABEL_96;
          }

          v92 = 16;
          *(v85 + 2) = 16;
          if (v90 >= 0.499)
          {
            v92 = 16;
            do
            {
              --v92;
              v90 = v90 * 0.5;
            }

            while (v90 >= 0.499);
            *(v85 + 2) = v92;
            if (v92 < 0x10u)
            {
              *(v85 + 6) = 1 << (v92 - 1);
              if (v86)
              {
                goto LABEL_93;
              }

              goto LABEL_96;
            }
          }
        }

        else
        {
          if (v84)
          {
            goto LABEL_89;
          }

          v92 = 16;
          *(v85 + 2) = 16;
        }

        *(v85 + 6) = 0x7FFF;
        if (v86)
        {
LABEL_93:
          v93 = (1 << v92);
          v94 = v86;
          v95 = v77;
          v96 = v78;
          do
          {
            v97 = *v95++;
            *v96++ = vcvtmd_s64_f64((v97 * v93) + 0.5);
            --v94;
          }

          while (v94);
          v81 = *v190;
        }

LABEL_96:
        v77 += v86;
        v78 += v86;
        kernel_coefficients += 4 * v86;
        *(v85 + 3) = 0;
        *(v85 + 24) = 0;
        ++v82;
      }

      while (v82 < v81);
    }
  }

  else
  {
    v80 = (a1 + 44);
  }

  if (*(a1 + 43) == 1)
  {
    v98 = kdu_node::get_kernel_coefficients(&v206, 0);
    if (*v189 >= 1)
    {
      v99 = 0;
      v100 = 0;
      v102 = *(a1 + 80);
      v101 = *(a1 + 88);
      v80 = (a1 + 44);
      while (1)
      {
        v103 = v101 + 32 * v99;
        if (v101 == v102)
        {
          LODWORD(v104) = *(v103 + 1);
          if (*(v103 + 1))
          {
            v111 = *(v103 + 8);
            v112 = *(v103 + 1);
            v113 = v98;
            do
            {
              if (*v111 != *v113)
              {
                kd_synthesis::init();
              }

              ++v113;
              ++v111;
              --v112;
            }

            while (v112);
          }

          goto LABEL_130;
        }

        *v103 = v99;
        *(v103 + 24) = 0;
        *(v103 + 8) = v77;
        *(v103 + 16) = v78;
        *(v103 + 28) = 0;
        v104 = *(v103 + 1);
        if (*(v103 + 1))
        {
          v105 = *(v103 + 1);
          v106 = v98;
          v107 = v77;
          v108 = 0.4;
          do
          {
            v109 = *v106;
            *v107 = *v106;
            if (v109 <= v108)
            {
              if (v109 < -v108)
              {
                v108 = -v109;
              }
            }

            else
            {
              v108 = v109;
            }

            ++v107;
            ++v106;
            --v105;
          }

          while (v105);
          if (*(a1 + 40))
          {
LABEL_123:
            v110 = *(v103 + 2);
            if (v104)
            {
              goto LABEL_127;
            }

            goto LABEL_129;
          }

          v110 = 16;
          *(v103 + 2) = 16;
          if (v108 >= 0.499)
          {
            v110 = 16;
            do
            {
              --v110;
              v108 = v108 * 0.5;
            }

            while (v108 >= 0.499);
            *(v103 + 2) = v110;
            if (v110 < 0x10u)
            {
              *(v103 + 6) = 1 << (v110 - 1);
              if (v104)
              {
                goto LABEL_127;
              }

              goto LABEL_129;
            }
          }
        }

        else
        {
          if (*(a1 + 40))
          {
            goto LABEL_123;
          }

          v110 = 16;
          *(v103 + 2) = 16;
        }

        *(v103 + 6) = 0x7FFF;
        if (v104)
        {
LABEL_127:
          v114 = (1 << v110);
          v115 = v104;
          v116 = v77;
          v117 = v78;
          do
          {
            v118 = *v116++;
            *v117++ = vcvtmd_s64_f64((v118 * v114) + 0.5);
            --v115;
          }

          while (v115);
        }

LABEL_129:
        v77 += v104;
        v78 += v104;
LABEL_130:
        v119 = *(v103 + 4);
        if (v99)
        {
          v120 = -1;
        }

        else
        {
          v120 = 1;
        }

        v121 = (*(a1 + 152) << 31 >> 31) & v120;
        if (v99)
        {
          v122 = 1;
        }

        else
        {
          v122 = -1;
        }

        v123 = v121 - v119;
        if (*(a1 + 156))
        {
          v122 = 0;
        }

        v124 = v104 + v119 + v122 - 1;
        if (v123 > v124)
        {
          v124 = v123;
        }

        if (v124 >= 256)
        {
          kd_synthesis::init();
        }

        v125 = v124 & ~(v124 >> 31);
        if (v125 > v100)
        {
          v100 = v125;
        }

        v98 += 4 * v104;
        *(v103 + 3) = v125;
        if (++v99 >= *v189)
        {
          goto LABEL_147;
        }
      }
    }

    v100 = 0;
    v80 = (a1 + 44);
  }

  else
  {
    v100 = 0;
  }

LABEL_147:
  if (*v80 >= 1 && (*(a1 + 207) & 1) == 0)
  {
    if (*v80 > 4)
    {
      operator new[]();
    }

    *(a1 + 104) = a1 + 816;
  }

  v126 = *(a1 + 172) + *(a1 + 170);
  v191 = a1 + 170;
  if (*(a1 + 43) == 1)
  {
    v127 = *(a1 + 168);
    v128 = *(a1 + 169);
    if (v127 >= v128)
    {
      v129 = *(a1 + 169);
    }

    else
    {
      v129 = *(a1 + 168);
    }

    v130 = (v100 - v129) & ~((v100 - v129) >> 31);
    v131 = *(a1 + 160) + v127;
    v132 = *(a1 + 164) + v128;
    if (v131 <= v132)
    {
      LOBYTE(v131) = v132;
    }

    v133 = v131 + v100;
  }

  else
  {
    LOBYTE(v130) = 0;
    v133 = *(a1 + 172) + *(a1 + 170);
  }

  v134 = *(a1 + 171);
  v135 = *(a1 + 176);
  if (*v80 < 1 || (*(a1 + 207) & 1) != 0)
  {
    *(a1 + 72) = 0;
    LODWORD(v136) = 1;
LABEL_166:
    v137 = 0;
    v136 = v136;
    do
    {
      v138 = *(a1 + 240);
      v139 = (v138 + v137 + 32);
      if (!v138)
      {
        v139 = (a1 + 432 + v137);
        v138 = a1 + 400;
      }

      *v139 = *(a1 + 72);
      *(a1 + 72) = v138 + v137;
      result = kd_vlift_line::pre_create((v138 + v137), a3, v126, v135 + v134, *(a1 + 40), a4, v130, v133, *(a1 + 43));
      v137 += 40;
      --v136;
    }

    while (v136);
    goto LABEL_170;
  }

  result = kd_synthesis::simulate_vertical_lifting(a1, v29);
  LODWORD(v136) = result;
  if (result >= 7)
  {
    operator new[]();
  }

  *(a1 + 72) = 0;
  if (result)
  {
    goto LABEL_166;
  }

LABEL_170:
  v141 = a1 + 124;
  v140 = *(a1 + 124);
  *(a1 + 116) = *(a1 + 112);
  v142 = *(a1 + 128);
  *(a1 + 132) = v140;
  *(a1 + 136) = v142;
  LODWORD(v143) = *(a1 + 44);
  if (!*(a1 + 104))
  {
LABEL_188:
    if (v143 >= 1)
    {
      v153 = 0;
      v154 = (*(a1 + 80) + 24);
      do
      {
        *v154 = *(v141 + 4 * ((v153 & 1) == 0));
        v154 += 8;
        ++v153;
      }

      while (v143 != v153);
    }

    goto LABEL_191;
  }

  if (v140 >= v142)
  {
    v144 = v142;
  }

  else
  {
    v144 = v140;
  }

  if (*(a1 + 140) <= *(a1 + 144))
  {
    v145 = *(a1 + 144);
  }

  else
  {
    v145 = *(a1 + 140);
  }

  if ((v143 & 0x80000000) == 0)
  {
    v146 = 0;
    v147 = -1;
    v148 = -48;
    do
    {
      if (*(v141 + 4 * (v147 & 1)) <= v144 + 1)
      {
        v149 = v144;
      }

      else
      {
        v149 = *(v141 + 4 * (v147 & 1));
      }

      v150 = *(a1 + 140 + 4 * (v147 & 1));
      if (v150 >= v145 - 1)
      {
        v151 = v145;
      }

      else
      {
        v151 = *(a1 + 140 + 4 * (v147 & 1));
      }

      v152 = v151;
      if (v147 >= 1)
      {
        v152 = v150 + 2 * (*(*(a1 + 80) + v146 - 28) + *(*(a1 + 80) + v146 - 31)) - 2;
      }

      result = kd_vlift_queue::init(*(a1 + 104) + v148, v149, v151, v147++, *(a1 + 98), v152);
      v143 = *(a1 + 44);
      v148 += 48;
      v146 += 32;
    }

    while (v147 < v143);
    goto LABEL_188;
  }

LABEL_191:
  v207 = vdupq_lane_s32(*&a8, 0);
  *(a1 + 100) = 0;
  if ((*(a1 + 40) & 1) == 0)
  {
    v196[0] = 0;
    bibo_gains = kdu_node::get_bibo_gains(&v206, v196, 1u);
    if (v196[0] != *v190)
    {
      kd_synthesis::init();
    }

    v156 = bibo_gains;
    result = kdu_node::get_bibo_gains(&v206, v196, 0);
    v158 = v196[0];
    if (v196[0] != *v189)
    {
      kd_synthesis::init();
    }

    v159 = *v190;
    v160 = *&a8;
    v157.val[0] = vdup_lane_s32(*&a8, 0);
    if (v159 >= 1)
    {
      if (*(a1 + 207))
      {
        v160 = *&a8;
      }

      else
      {
        v157.val[0] = vdiv_f32(v157.val[0], __PAIR64__(v201, v202));
        v161 = v157.val[0];
        v162 = &v207;
        vst2_f32(v162->f32, v157);
        v163 = (v156 + 4);
        v164 = *result * *&a8;
        v165 = 28;
        v166 = v159;
        v167 = v164;
        v160 = *&a8;
        do
        {
          v168 = v167;
          v167 = v164 * *v163;
          if (v167 > v160)
          {
            v160 = v164 * *v163;
          }

          if (a4)
          {
            v169 = v168 + v168;
            if (*(*(a1 + 80) + v165) == 1 && v169 > v160)
            {
              v160 = v169;
            }
          }

          v165 += 32;
          ++v163;
          --v166;
        }

        while (v166);
      }
    }

    if (v158 >= 1 && (*(a1 + 208) & 1) == 0)
    {
      v207 = vdivq_f32(vzip1q_s32(v157, v157), vdupq_lane_s64(__SPAIR64__(v199, v200), 0));
      v171 = *(v156 + 4 * v159);
      if (v159 >= 1 && *(v156 + 4 * v159 - 4) > v171)
      {
        v171 = *(v156 + 4 * v159 - 4);
      }

      v172 = v171 * *&a8;
      v173 = result + 1;
      v174 = 28;
      v175 = v172;
      do
      {
        v176 = v175;
        v175 = v172 * *v173;
        if (v175 > v160)
        {
          v160 = v172 * *v173;
        }

        if (a4)
        {
          v177 = v176 + v176;
          if (*(*(a1 + 88) + v174) == 1 && v177 > v160)
          {
            v160 = v177;
          }
        }

        v174 += 32;
        ++v173;
        --v158;
      }

      while (v158);
    }

    if (v160 > 7.6)
    {
      v179 = *(a1 + 100);
      v180 = v207;
      v181.i64[0] = 0x3F0000003F000000;
      v181.i64[1] = 0x3F0000003F000000;
      do
      {
        v180 = vmulq_f32(v180, v181);
        ++v179;
        v160 = v160 * 0.5;
      }

      while (v160 > 7.6);
      v207 = v180;
      *(a1 + 100) = v179;
    }
  }

  v182 = 0;
  v183 = 0;
  v184 = a1 + 8;
  do
  {
    if (*(&v208 + v183))
    {
      v185 = *(v191 + (v183 & 1));
      if (kdu_node::access_child((&v208 + v182), 0))
      {
        kdu_synthesis::kdu_synthesis(v196);
      }

      v186 = kdu_node::access_subband((&v208 + v182));
      result = kdu_decoder::kdu_decoder(v196, v186, a3, a4, v185, a6, a7, v207.f32[v183]);
      *(v184 + 8 * v183) = *v196;
    }

    ++v183;
    v182 += 8;
  }

  while (v183 != 4);
  return result;
}