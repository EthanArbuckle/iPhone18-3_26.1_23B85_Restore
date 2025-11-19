_DWORD *__gdtoa(int *a1, int a2, _DWORD *a3, unsigned int *a4, int a5, int a6, _DWORD *a7, void *a8)
{
  v96 = a1;
  v95 = a2;
  v94 = a3;
  v93 = a4;
  v92 = a5;
  v91 = a6;
  v90 = a7;
  v89 = a8;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v84 = 0;
  i = 0;
  v50 = 0;
  v78 = 0;
  v8 = *a4 & 0xFFFFFFCF;
  *a4 = v8;
  v68 = v8;
  v32 = v8 & 7;
  if ((v8 & 7) == 0)
  {
    goto LABEL_14;
  }

  if (v32 != 2 && v32 != 1)
  {
    if (v32 == 3)
    {
      *v90 = -32768;
      return __nrv_alloc_D2A("Infinity", v89, 8);
    }

    else if (v32 == 4)
    {
      *v90 = -32768;
      return __nrv_alloc_D2A("NaN", v89, 3);
    }

    else
    {
      return 0;
    }
  }

  v63 = *v96;
  v53 = bitstob(v94, *v96, &v88);
  v85 = v95;
  v9 = __trailz_D2A(v53);
  i = v9;
  if (v9)
  {
    __rshift_D2A(v53, i);
    v95 += i;
    v88 -= i;
  }

  if (!v53[5])
  {
    __Bfree_D2A(v53);
LABEL_14:
    *v90 = 1;
    return __nrv_alloc_D2A("0", v89, 1);
  }

  v10 = __b2d_D2A(v53, &i);
  LODWORD(v36) = LODWORD(v10);
  i = v95 + v88 - 1;
  HIDWORD(v36) = HIDWORD(v10) & 0xFFFFF | 0x3FF00000;
  v43 = (v36 - 1.5) * 0.289529655 + 0.176091259 + i * 0.301029996;
  v72 = i;
  if (i < 0)
  {
    v72 = 1 - (v95 + v88);
  }

  v73 = v72 - 1077;
  if (v73 > 0)
  {
    v43 = v43 + v73 * 7.0e-17;
  }

  v70 = v43;
  if (v43 < 0.0 && v43 != v70)
  {
    --v70;
  }

  v69 = 1;
  HIDWORD(v36) += (v95 + v88 - 1) << 20;
  if ((v70 & 0x80000000) == 0 && v70 <= 22)
  {
    if (v36 < __tens_D2A[v70])
    {
      --v70;
    }

    v69 = 0;
  }

  if (v88 - i - 1 < 0)
  {
    v87 = 1 - (v88 - i);
    v60 = 0;
  }

  else
  {
    v87 = 0;
    v60 = v88 - i - 1;
  }

  if (v70 < 0)
  {
    v87 -= v70;
    v86 = -v70;
    v59 = 0;
  }

  else
  {
    v86 = 0;
    v59 = v70;
    v60 += v70;
  }

  if (v92 < 0 || v92 > 9)
  {
    v92 = 0;
  }

  v57 = 1;
  if (v92 > 5)
  {
    v92 -= 4;
    v57 = 0;
  }

  v67 = 1;
  v79 = -1;
  v81 = -1;
  if (v92 <= 1)
  {
    i = (v63 * 0.30103) + 3;
    v91 = 0;
    goto LABEL_52;
  }

  switch(v92)
  {
    case 2:
      v67 = 0;
      break;
    case 3:
      v67 = 0;
LABEL_50:
      i = v91 + v70 + 1;
      v81 = i;
      v79 = v91 + v70;
      if (i <= 0)
      {
        i = 1;
      }

      goto LABEL_52;
    case 4:
      break;
    case 5:
      goto LABEL_50;
    default:
      goto LABEL_52;
  }

  if (v91 <= 0)
  {
    v91 = 1;
  }

  i = v91;
  v79 = v91;
  v81 = v91;
LABEL_52:
  v41 = __rv_alloc_D2A(i);
  v42 = v41;
  v62 = v96[3] - 1;
  if (v96[3] != 1)
  {
    if (v62 < 0)
    {
      v62 = 2;
    }

    if ((v68 & 8) != 0)
    {
      v62 = 3 - v62;
    }
  }

  if ((v81 & 0x80000000) == 0 && v81 <= 14 && v57 && !v62 && !v70)
  {
    i = 0;
    v45 = v36;
    v80 = v81;
    v82 = 2;
    if (v69 && v36 < 1.0 && v81 > 0)
    {
      if (v79 <= 0)
      {
LABEL_91:
        v42 = v41;
        v36 = v45;
        v70 = 0;
        v81 = v80;
        goto LABEL_92;
      }

      v81 = v79;
      v70 = -1;
      v36 = v36 * 10.0;
      v82 = 3;
    }

    v33 = v82 * v36 + 7.0;
    HIDWORD(v33) -= 54525952;
    if (v81)
    {
      if (v67)
      {
        v34 = 1.0 * 0.5 / __tens_D2A[v81 - 1] - v33;
        i = 0;
        while (1)
        {
          v54 = (v36 / 1.0);
          v38 = v36 - v54 * 1.0;
          v11 = v42++;
          *v11 = v54 + 48;
          if (v38 < v34)
          {
            break;
          }

          if (1.0 - v38 < v34)
          {
            goto LABEL_109;
          }

          if (++i >= v81)
          {
            goto LABEL_91;
          }

          v34 = v34 * 10.0;
          v36 = v38 * 10.0;
        }

        if (v38 != 0.0)
        {
          v78 = 16;
        }

        goto LABEL_251;
      }

      v35 = v33 * __tens_D2A[v81 - 1];
      i = 1;
      while (1)
      {
        v55 = (v36 / 1.0);
        if (v55)
        {
          v36 = v36 - v55 * 1.0;
        }

        v12 = v42++;
        *v12 = v55 + 48;
        if (i == v81)
        {
          break;
        }

        ++i;
        v36 = v36 * 10.0;
      }

      if (v36 > 1.0 * 0.5 + v35)
      {
LABEL_109:
        v78 = 32;
        while (*--v42 == 57)
        {
          if (v42 == v41)
          {
            ++v70;
            *v42 = 48;
            break;
          }
        }

        v14 = v42++;
        ++*v14;
        goto LABEL_251;
      }

      if (v36 < 1.0 * 0.5 - v35)
      {
        if (v36 != 0.0)
        {
          v78 = 16;
        }

        do
        {
LABEL_116:
          --v42;
        }

        while (*v42 == 48);
        ++v42;
        goto LABEL_251;
      }
    }

    else
    {
      v48 = 0;
      v46 = 0;
      v37 = v36 - 5.0;
      if (v37 > v33)
      {
        goto LABEL_166;
      }

      if (v37 < -v33)
      {
LABEL_165:
        v70 = -1 - v91;
        v78 = 16;
        goto LABEL_246;
      }
    }

    goto LABEL_91;
  }

LABEL_92:
  if (v95 < 0 || v70 > 14)
  {
    v65 = v87;
    v64 = v86;
    v50 = 0;
    v48 = 0;
    if (v67)
    {
      if (v92 >= 2)
      {
        v74 = v81 - 1;
        if (v86 < v81 - 1)
        {
          v75 = v74 - v86;
          v59 += v75;
          v86 += v75;
          v64 = 0;
        }

        else
        {
          v64 = v86 - v74;
        }

        i = v81;
        if (v81 < 0)
        {
          v65 = v87 - i;
          i = 0;
        }
      }

      else
      {
        i = v63 - v88 + 1;
        if (v95 - (v63 - v88) < v96[1])
        {
          i = v95 - v96[1] + 1;
        }
      }

      v87 += i;
      v60 += i;
      v48 = __i2b_D2A(1);
    }

    if (v65 > 0 && v60 > 0)
    {
      if (v65 < v60)
      {
        v31 = v65;
      }

      else
      {
        v31 = v60;
      }

      i = v31;
      v87 -= v31;
      v65 -= v31;
      v60 -= v31;
    }

    if (v86 > 0)
    {
      if (v67)
      {
        if (v64 > 0)
        {
          v48 = __pow5mult_D2A(v48, v64);
          v52 = __mult_D2A(v48, v53);
          __Bfree_D2A(v53);
          v53 = v52;
        }

        if (v86 != v64)
        {
          v53 = __pow5mult_D2A(v53, v86 - v64);
        }
      }

      else
      {
        v53 = __pow5mult_D2A(v53, v86);
      }
    }

    v46 = __i2b_D2A(1);
    if (v59 > 0)
    {
      v46 = __pow5mult_D2A(v46, v59);
    }

    v58 = 0;
    if (v92 < 2 && v88 == 1 && v85 > v96[1] + 1)
    {
      ++v87;
      ++v60;
      v58 = 1;
    }

    if (v59)
    {
      v30 = __hi0bits_D2A(v46[v46[5] + 5]);
    }

    else
    {
      v30 = 31;
    }

    i = (v30 - v60 - 4) & 0x1F;
    v66 = v65 + i;
    v87 += i;
    if (v87 > 0)
    {
      v53 = __lshift_D2A(v53, v87);
    }

    v61 = v60 + i;
    if (v61 > 0)
    {
      v46 = __lshift_D2A(v46, v61);
    }

    if (v69 && (__cmp_D2A(v53, v46) & 0x80000000) != 0)
    {
      --v70;
      v53 = __multadd_D2A(v53, 10, 0);
      if (v67)
      {
        v48 = __multadd_D2A(v48, 10, 0);
      }

      v81 = v79;
    }

    if (v81 <= 0 && v92 > 2)
    {
      if ((v81 & 0x80000000) == 0)
      {
        v46 = __multadd_D2A(v46, 5, 0);
        if (__cmp_D2A(v53, v46) > 0)
        {
          goto LABEL_166;
        }
      }

      goto LABEL_165;
    }

    if (v67)
    {
      if (v66 > 0)
      {
        v48 = __lshift_D2A(v48, v66);
      }

      v50 = v48;
      if (v58)
      {
        v49 = __Balloc_D2A(v48[2]);
        memcpy(v49 + 4, v50 + 4, 4 * v50[5] + 8);
        v48 = __lshift_D2A(v49, 1);
      }

      for (i = 1; ; ++i)
      {
        v84 = __quorem_D2A(v53, v46) + 48;
        v76 = __cmp_D2A(v53, v50);
        v51 = __diff_D2A(v46, v48);
        if (v51[4])
        {
          v29 = 1;
        }

        else
        {
          v29 = __cmp_D2A(v53, v51);
        }

        __Bfree_D2A(v51);
        if (!v29 && !v92 && (*v94 & 1) == 0 && !v62)
        {
          if (v84 == 57)
          {
            goto LABEL_216;
          }

          if (v76 > 0)
          {
            ++v84;
            v78 = 32;
          }

          else if (v53[5] > 1 || v53[6])
          {
            v78 = 16;
          }

          v16 = v42++;
          *v16 = v84;
          goto LABEL_246;
        }

        if (v76 < 0 || !v76 && !v92 && (*v94 & 1) == 0)
        {
          break;
        }

        if (v29 > 0 && v62 != 2)
        {
          if (v84 == 57)
          {
            goto LABEL_216;
          }

          v78 = 32;
          v22 = v42++;
          *v22 = v84 + 1;
          goto LABEL_246;
        }

        v23 = v42++;
        *v23 = v84;
        if (i == v81)
        {
          goto LABEL_226;
        }

        v53 = __multadd_D2A(v53, 10, 0);
        if (v50 == v48)
        {
          v48 = __multadd_D2A(v48, 10, 0);
          v50 = v48;
        }

        else
        {
          v50 = __multadd_D2A(v50, 10, 0);
          v48 = __multadd_D2A(v48, 10, 0);
        }
      }

      if (!v62 || v53[5] <= 1 && !v53[6])
      {
        if (v29 > 0)
        {
          v53 = __lshift_D2A(v53, 1);
          v71 = __cmp_D2A(v53, v46);
          if (v71 > 0 || !v71 && (v84 & 1) != 0)
          {
            v19 = v84++;
            if (v19 == 57)
            {
              goto LABEL_216;
            }
          }

          v78 = 32;
        }

        if (v53[5] > 1 || v53[6])
        {
          v78 = 16;
        }

        goto LABEL_212;
      }

      if (v62 == 2)
      {
        v78 = 16;
LABEL_212:
        v20 = v42++;
        *v20 = v84;
        goto LABEL_246;
      }

      while (__cmp_D2A(v46, v48) > 0)
      {
        v17 = v42++;
        *v17 = v84;
        v47 = __multadd_D2A(v48, 10, 0);
        if (v50 == v48)
        {
          v50 = v47;
        }

        v48 = v47;
        v53 = __multadd_D2A(v53, 10, 0);
        v84 = __quorem_D2A(v53, v46) + 48;
      }

      v18 = v84++;
      if (v18 != 57)
      {
        v78 = 32;
        goto LABEL_212;
      }

LABEL_216:
      v21 = v42++;
      *v21 = 57;
      goto LABEL_235;
    }

    for (i = 1; ; ++i)
    {
      v24 = __quorem_D2A(v53, v46);
      v84 = v24 + 48;
      v25 = v42++;
      *v25 = v24 + 48;
      if (i >= v81)
      {
        break;
      }

      v53 = __multadd_D2A(v53, 10, 0);
    }

LABEL_226:
    if (v62)
    {
      if (v62 == 2 || v53[5] <= 1 && !v53[6])
      {
LABEL_241:
        if (v53[5] > 1 || v53[6])
        {
          v78 = 16;
        }

        do
        {
          --v42;
        }

        while (*v42 == 48);
        ++v42;
        goto LABEL_246;
      }
    }

    else
    {
      v53 = __lshift_D2A(v53, 1);
      v77 = __cmp_D2A(v53, v46);
      if (v77 <= 0 && (v77 || (v84 & 1) == 0))
      {
        goto LABEL_241;
      }
    }

LABEL_235:
    v78 = 32;
    while (*--v42 == 57)
    {
      if (v42 == v41)
      {
        ++v70;
        v26 = v42++;
        *v26 = 49;
        goto LABEL_246;
      }
    }

    v27 = v42++;
    ++*v27;
    goto LABEL_246;
  }

  v44 = __tens_D2A[v70];
  if ((v91 & 0x80000000) == 0 || v81 > 0)
  {
    i = 1;
    while (1)
    {
      v56 = (v36 / v44);
      v39 = v36 - v56 * v44;
      v13 = v42++;
      *v13 = v56 + 48;
      if (v39 == 0.0)
      {
        goto LABEL_251;
      }

      if (i == v81)
      {
        if (v62)
        {
          if (v62 == 1)
          {
            goto LABEL_109;
          }

          v78 = 16;
          goto LABEL_251;
        }

        v40 = v39 + v39;
        if (v40 <= v44 && (v40 != v44 || (v56 & 1) == 0))
        {
          v78 = 16;
          goto LABEL_116;
        }

        goto LABEL_109;
      }

      ++i;
      v36 = v39 * 10.0;
    }
  }

  v48 = 0;
  v46 = 0;
  if (v81 < 0 || v36 <= 5.0 * v44)
  {
    goto LABEL_165;
  }

LABEL_166:
  v78 = 32;
  v15 = v42++;
  *v15 = 49;
  ++v70;
LABEL_246:
  __Bfree_D2A(v46);
  if (v48)
  {
    if (v50 && v50 != v48)
    {
      __Bfree_D2A(v50);
    }

    __Bfree_D2A(v48);
  }

LABEL_251:
  __Bfree_D2A(v53);
  *v42 = 0;
  *v90 = v70 + 1;
  if (v89)
  {
    *v89 = v42;
  }

  *v93 |= v78;
  return v41;
}

uint64_t bitstob(_DWORD *a1, int a2, _DWORD *a3)
{
  v10 = 32;
  v9 = 0;
  while (v10 < a2)
  {
    v10 *= 2;
    ++v9;
  }

  v8 = __Balloc_D2A(v9);
  v7 = &a1[(a2 - 1) >> 5];
  v5 = v8 + 24;
  v6 = (v8 + 24);
  do
  {
    v3 = v6++;
    *v3 = *a1++;
  }

  while (a1 <= v7);
  v11 = (v6 - v5) / 4;
  while (!*(v5 + 4 * --v11))
  {
    if (!v11)
    {
      *(v8 + 20) = 0;
      *a3 = 0;
      return v8;
    }
  }

  *(v8 + 20) = v11 + 1;
  *a3 = 32 * v11 + 32 - __hi0bits_D2A(*(v8 + 24 + 4 * v11));
  return v8;
}

uint64_t __rshift_D2A(uint64_t result, int a2)
{
  v10 = (result + 24);
  v11 = result + 24;
  if (a2 >> 5 < *(result + 20))
  {
    v9 = v11 + 4 * *(result + 20);
    v12 = (v11 + 4 * (a2 >> 5));
    v14 = a2 & 0x1F;
    if ((a2 & 0x1F) != 0)
    {
      v2 = v12;
      v13 = v12 + 1;
      v8 = *v2 >> v14;
      while (v13 < v9)
      {
        v3 = v10++;
        *v3 = v8 | (*v13 << (32 - v14));
        v4 = v13++;
        v8 = *v4 >> v14;
      }

      *v10 = v8;
      if (v8)
      {
        ++v10;
      }
    }

    else
    {
      while (v12 < v9)
      {
        v5 = v12++;
        v6 = v10++;
        *v6 = *v5;
      }
    }
  }

  v7 = (v10 - result - 24) / 4;
  *(result + 20) = v7;
  if (!v7)
  {
    *(result + 24) = 0;
  }

  return result;
}

uint64_t __trailz_D2A(uint64_t a1)
{
  v9 = a1;
  v8 = 0;
  v7 = (a1 + 24);
  v6 = v9 + 24 + 4 * *(v9 + 20);
  for (i = 0; ; i += 32)
  {
    v1 = v9 + 24 + 4 * *(v9 + 20);
    v4 = 0;
    if (v7 < v6)
    {
      v4 = *v7 == 0;
    }

    if (!v4)
    {
      break;
    }

    ++v7;
  }

  v2 = v9 + 24 + 4 * *(v9 + 20);
  if (v7 < v6)
  {
    v8 = *v7;
    i += __lo0bits_D2A(&v8);
  }

  return i;
}

uint64_t __Balloc_D2A(int a1)
{
  if (gdtoa_tsd_key == -1)
  {
    pthread_mutex_lock(&gdtoa_tsd_lock);
    if (gdtoa_tsd_key == -1)
    {
      gdtoa_tsd_key = 14;
      pthread_key_init_np();
    }

    pthread_mutex_unlock(&gdtoa_tsd_lock);
  }

  __b = pthread_getspecific(gdtoa_tsd_key);
  if (!__b)
  {
    __b = malloc_type_malloc();
    memset(__b, 0, 0x50uLL);
    pthread_setspecific(gdtoa_tsd_key, __b);
  }

  if (a1 <= 9 && (v3 = *(__b + a1)) != 0)
  {
    *(__b + a1) = *v3;
  }

  else
  {
    v3 = malloc_type_malloc();
    *(v3 + 8) = a1;
    *(v3 + 12) = 1 << a1;
  }

  *(v3 + 20) = 0;
  *(v3 + 16) = 0;
  return v3;
}

void gdtoa_freelist_free(void **a1)
{
  v1 = a1;
  if (a1)
  {
    for (i = 0; i < 10; ++i)
    {
      if (*v1)
      {
        for (j = *v1; j; j = v2)
        {
          v2 = *j;
          free(j);
        }
      }

      ++v1;
    }

    free(a1);
  }
}

void __Bfree_D2A(int *a1)
{
  if (a1)
  {
    if (a1[2] <= 9)
    {
      v1 = pthread_getspecific(gdtoa_tsd_key);
      *a1 = v1[a1[2]];
      v1[a1[2]] = a1;
    }

    else
    {
      free(a1);
    }
  }
}

uint64_t __lo0bits_D2A(unsigned int *a1)
{
  v2 = *a1;
  if ((*a1 & 7) != 0)
  {
    if (v2)
    {
      return 0;
    }

    else if ((v2 & 2) != 0)
    {
      *a1 = v2 >> 1;
      return 1;
    }

    else
    {
      *a1 = v2 >> 2;
      return 2;
    }
  }

  else
  {
    v3 = 0;
    if (!v2)
    {
      v3 = 16;
      v2 >>= 16;
    }

    if (!v2)
    {
      v3 += 8;
      v2 >>= 8;
    }

    if ((v2 & 0xF) == 0)
    {
      v3 += 4;
      v2 >>= 4;
    }

    if ((v2 & 3) == 0)
    {
      v3 += 2;
      v2 >>= 2;
    }

    if ((v2 & 1) != 0 || (++v3, (v2 >>= 1) != 0))
    {
      *a1 = v2;
      return v3;
    }

    else
    {
      return 32;
    }
  }
}

int *__multadd_D2A(_DWORD *a1, int a2, int a3)
{
  v11 = a1;
  v9 = a1[5];
  v8 = a1 + 6;
  v10 = 0;
  v7 = a3;
  do
  {
    v6 = *v8 * a2 + v7;
    v7 = HIDWORD(v6);
    v3 = v8++;
    *v3 = v6;
    ++v10;
  }

  while (v10 < v9);
  if (v7)
  {
    if (v9 >= a1[3])
    {
      v5 = __Balloc_D2A(a1[2] + 1);
      memcpy((v5 + 16), v11 + 4, 4 * v11[5] + 8);
      __Bfree_D2A(v11);
      v11 = v5;
    }

    v11[v9 + 6] = HIDWORD(v6);
    v11[5] = v9 + 1;
  }

  return v11;
}

uint64_t __hi0bits_D2A(int a1)
{
  v3 = a1;
  v2 = 0;
  if ((a1 & 0xFFFF0000) == 0)
  {
    v2 = 16;
    v3 = a1 << 16;
  }

  if ((v3 & 0xFF000000) == 0)
  {
    v2 += 8;
    v3 <<= 8;
  }

  if ((v3 & 0xF0000000) == 0)
  {
    v2 += 4;
    v3 *= 16;
  }

  if ((v3 & 0xC0000000) == 0)
  {
    v2 += 2;
    v3 *= 4;
  }

  if (v3 < 0)
  {
    return v2;
  }

  ++v2;
  if ((v3 & 0x40000000) != 0)
  {
    return v2;
  }

  else
  {
    return 32;
  }
}

uint64_t __i2b_D2A(int a1)
{
  result = __Balloc_D2A(1);
  *(result + 24) = a1;
  *(result + 20) = 1;
  return result;
}

uint64_t __mult_D2A(_DWORD *a1, _DWORD *a2)
{
  v22 = a1;
  v21 = a2;
  if (a1[5] < a2[5])
  {
    v22 = a2;
    v21 = a1;
  }

  v19 = v22[2];
  v18 = v22[5];
  v17 = v21[5];
  v16 = v18 + v17;
  if (v18 + v17 > v22[3])
  {
    ++v19;
  }

  v20 = __Balloc_D2A(v19);
  for (i = (v20 + 24); i < v20 + 24 + 4 * v16; ++i)
  {
    *i = 0;
  }

  v13 = (v21 + 6);
  v10 = (v20 + 24);
  while (v13 < &v21[v17 + 6])
  {
    v2 = v13;
    v13 += 4;
    v9 = *v2;
    if (*v2)
    {
      v15 = (v22 + 6);
      v11 = v10;
      v8 = 0;
      do
      {
        v3 = v15;
        v15 += 4;
        v7 = *v3 * v9 + *v11 + v8;
        v8 = HIDWORD(v7);
        v4 = v11++;
        *v4 = v7;
      }

      while (v15 < &v22[v18 + 6]);
      *v11 = HIDWORD(v7);
    }

    ++v10;
  }

  v12 = (v20 + 24 + 4 * v16);
  while (1)
  {
    v6 = 0;
    if (v16 > 0)
    {
      v6 = *--v12 == 0;
    }

    if (!v6)
    {
      break;
    }

    --v16;
  }

  *(v20 + 20) = v16;
  return v20;
}

int *__pow5mult_D2A(int *a1, int a2)
{
  v9 = a1;
  if ((a2 & 3) != 0)
  {
    v9 = __multadd_D2A(a1, __pow5mult_D2A_p05[(a2 & 3) - 1], 0);
  }

  v8 = a2 >> 2;
  if (!v8)
  {
    return v9;
  }

  v5 = p5s;
  if (!p5s)
  {
    os_unfair_lock_lock(&stru_E1554);
    v5 = p5s;
    if (!p5s)
    {
      p5s = __i2b_D2A(625);
      v5 = p5s;
      *p5s = 0;
    }

    os_unfair_lock_unlock(&stru_E1554);
  }

  while (1)
  {
    if (v8)
    {
      v6 = __mult_D2A(v9, v5);
      __Bfree_D2A(v9);
      v9 = v6;
    }

    v8 >>= 1;
    if (!v8)
    {
      break;
    }

    v4 = *v5;
    if (!*v5)
    {
      os_unfair_lock_lock(&stru_E1554);
      v4 = *v5;
      if (!*v5)
      {
        v2 = __mult_D2A(v5, v5);
        *v5 = v2;
        v4 = v2;
        *v2 = 0;
      }

      os_unfair_lock_unlock(&stru_E1554);
    }

    v5 = v4;
  }

  return v9;
}

uint64_t __lshift_D2A(int *a1, int a2)
{
  v18 = a2;
  v14 = a2 >> 5;
  v15 = a1[2];
  v13 = (a2 >> 5) + a1[5] + 1;
  for (i = a1[3]; v13 > i; i *= 2)
  {
    ++v15;
  }

  v12 = __Balloc_D2A(v15);
  v10 = (v12 + 24);
  for (j = 0; j < v14; ++j)
  {
    v2 = v10++;
    *v2 = 0;
  }

  v11 = a1 + 6;
  v9 = &a1[a1[5] + 6];
  v19 = v18 & 0x1F;
  if (v19)
  {
    v8 = 0;
    do
    {
      v3 = v10++;
      *v3 = (*v11 << v19) | v8;
      v4 = v11++;
      v8 = *v4 >> (32 - v19);
    }

    while (v11 < v9);
    *v10 = v8;
    if (v8)
    {
      ++v13;
    }
  }

  else
  {
    do
    {
      v5 = v11++;
      v6 = v10++;
      *v6 = *v5;
    }

    while (v11 < v9);
  }

  *(v12 + 20) = v13 - 1;
  __Bfree_D2A(a1);
  return v12;
}

uint64_t __cmp_D2A(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 20);
  v4 = *(a2 + 20);
  if (v5 > 1 && !*(a1 + 24 + 4 * (v5 - 1)))
  {
    fprintf(__stderrp, "%s\n", "cmp called with a->x[a->wds-1] == 0");
    exit(1);
  }

  if (v4 > 1 && !*(a2 + 24 + 4 * (v4 - 1)))
  {
    fprintf(__stderrp, "%s\n", "cmp called with b->x[b->wds-1] == 0");
    exit(1);
  }

  v6 = v5 - v4;
  if (v6)
  {
    return v6;
  }

  else
  {
    v8 = (a1 + 24 + 4 * v4);
    v7 = (a2 + 24 + 4 * v4);
    while (*--v8 == *--v7)
    {
      if (v8 <= a1 + 24)
      {
        return 0;
      }
    }

    if (*v8 < *v7)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t __diff_D2A(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v21 = a2;
  v17 = __cmp_D2A(a1, a2);
  if (v17)
  {
    if ((v17 & 0x80000000) != 0)
    {
      v19 = v22;
      v22 = v21;
      v21 = v19;
      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    v20 = __Balloc_D2A(*(v22 + 8));
    *(v20 + 16) = v18;
    v16 = *(v22 + 20);
    v15 = v22 + 24;
    v14 = (v21 + 24);
    v13 = v21 + 24 + 4 * *(v21 + 20);
    v12 = (v20 + 24);
    v11 = 0;
    do
    {
      v3 = v15;
      v15 += 4;
      v4 = v14++;
      v9 = *v3 - *v4 - v11;
      v11 = HIDWORD(v9) & 1;
      v5 = v12++;
      *v5 = v9;
    }

    while (v14 < v13);
    while (v15 < v22 + 24 + 4 * v16)
    {
      v6 = v15;
      v15 += 4;
      v10 = *v6 - v11;
      v11 = HIDWORD(v10) & 1;
      v7 = v12++;
      *v7 = v10;
    }

    while (!*--v12)
    {
      --v16;
    }

    *(v20 + 20) = v16;
    return v20;
  }

  else
  {
    v2 = __Balloc_D2A(0);
    *(v2 + 20) = 1;
    *(v2 + 24) = 0;
    return v2;
  }
}

double __b2d_D2A(uint64_t a1, _DWORD *a2)
{
  v10 = a1 + 24;
  v11 = (a1 + 24 + 4 * *(a1 + 20) - 4);
  HIDWORD(v9) = *v11;
  if (!*v11)
  {
    fprintf(__stderrp, "%s\n", "zero y in b2d");
    exit(1);
  }

  v7 = __hi0bits_D2A(SHIDWORD(v9));
  *a2 = 32 - v7;
  if (v7 >= 11)
  {
    if (v11 > v10)
    {
      v4 = *--v11;
    }

    else
    {
      v4 = 0;
    }

    LODWORD(v9) = v4;
    v8 = v7 - 11;
    if (v8)
    {
      HIDWORD(v6) = (HIDWORD(v9) << v8) | 0x3FF00000 | (v4 >> (32 - v8));
      if (v11 > v10)
      {
        v3 = *(v11 - 1);
      }

      else
      {
        v3 = 0;
      }

      LODWORD(v6) = (v4 << v8) | (v3 >> (32 - v8));
    }

    else
    {
      v6 = v9 | 0x3FF0000000000000;
    }
  }

  else
  {
    HIDWORD(v6) = (HIDWORD(v9) >> (11 - v7)) | 0x3FF00000;
    if (v11 > v10)
    {
      v5 = *(v11 - 1);
    }

    else
    {
      v5 = 0;
    }

    LODWORD(v6) = (HIDWORD(v9) << (v7 + 21)) | (v5 >> (11 - v7));
  }

  return *&v6;
}

uint64_t __d2b_D2A(_DWORD *a1, _DWORD *a2, double a3)
{
  v18 = a3;
  v17 = a1;
  v16 = a2;
  v13 = 0;
  v11 = 0;
  v9 = 0;
  v14 = a3;
  v15 = __Balloc_D2A(1);
  v10 = (v15 + 24);
  v8 = HIDWORD(v14) & 0xFFFFF;
  HIDWORD(v14) &= ~0x80000000;
  v12 = HIDWORD(v14) >> 20;
  if (HIDWORD(v14) >> 20)
  {
    v8 |= 0x100000u;
  }

  v9 = LODWORD(v14);
  if (LODWORD(v14))
  {
    v11 = __lo0bits_D2A(&v9);
    if (v11)
    {
      *v10 = v9 | (v8 << (32 - v11));
      v8 >>= v11;
    }

    else
    {
      *v10 = v9;
    }

    v3 = v8;
    v10[1] = v8;
    if (v3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    *(v15 + 20) = v4;
    v13 = v4;
  }

  else
  {
    v11 = __lo0bits_D2A(&v8);
    *v10 = v8;
    *(v15 + 20) = 1;
    v13 = 1;
    v11 += 32;
  }

  if (v12)
  {
    *v17 = v12 - 1075 + v11;
    *v16 = 53 - v11;
  }

  else
  {
    *v17 = v11 - 1074;
    v7 = 32 * v13;
    v5 = __hi0bits_D2A(v10[v13 - 1]);
    *v16 = v7 - v5;
  }

  return v15;
}

_BYTE *__strcp_D2A(_BYTE *a1, unsigned __int8 *a2)
{
  while (1)
  {
    v2 = a2++;
    LODWORD(v2) = *v2;
    *a1 = v2;
    if (!v2)
    {
      break;
    }

    ++a1;
  }

  return a1;
}

_DWORD *__s2b_D2A(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v9 = 0;
  for (i = 1; (a3 + 8) / 9 > i; i *= 2)
  {
    ++v9;
  }

  v11 = __Balloc_D2A(v9);
  v11[6] = a4;
  v11[5] = 1;
  v10 = 9;
  if (a2 <= 9)
  {
    v18 = (a1 + a5 + 9);
  }

  else
  {
    v17 = (a1 + 9);
    do
    {
      v5 = v17++;
      v11 = __multadd_D2A(v11, 10, *v5 - 48);
      ++v10;
    }

    while (v10 < a2);
    v18 = &v17[a5];
  }

  while (v10 < a3)
  {
    v6 = v18++;
    v11 = __multadd_D2A(v11, 10, *v6 - 48);
    ++v10;
  }

  return v11;
}

double __ratio_D2A(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  v8 = a2;
  v7 = 0.0;
  v6 = 0.0;
  v5 = 0;
  v4 = 0;
  v3 = 0;
  v7 = __b2d_D2A(a1, &v4);
  v6 = __b2d_D2A(v8, &v3);
  v5 = v4 - v3 + 32 * (*(v9 + 20) - *(v8 + 20));
  if (v5 <= 0)
  {
    v5 = -v5;
    HIDWORD(v6) += v5 << 20;
  }

  else
  {
    HIDWORD(v7) += v5 << 20;
  }

  return v7 / v6;
}

uint64_t __match_D2A(uint64_t *a1, _BYTE *a2)
{
  v4 = *a1;
  while (1)
  {
    v2 = a2++;
    if (!*v2)
    {
      break;
    }

    v5 = *++v4;
    if (v5 >= 65 && v5 <= 90)
    {
      v5 += 32;
    }

    if (v5 != *v2)
    {
      return 0;
    }
  }

  *a1 = v4 + 1;
  return 1;
}

unint64_t __copybits_D2A(unint64_t result, int a2, uint64_t a3)
{
  v8 = result;
  v7 = (a3 + 24);
  v6 = a3 + 24 + 4 * *(a3 + 20);
  while (v7 < v6)
  {
    v3 = v7++;
    v4 = v8;
    v8 += 4;
    *v4 = *v3;
  }

  while (v8 < result + 4 * ((a2 - 1) >> 5) + 4)
  {
    v5 = v8;
    v8 += 4;
    *v5 = 0;
  }

  return result;
}

uint64_t __any_on_D2A(uint64_t a1, int a2)
{
  v3 = a1 + 24;
  v5 = *(a1 + 20);
  v6 = a2 >> 5;
  if (a2 >> 5 <= v5)
  {
    if (v6 < v5 && (a2 & 0x1F) != 0 && *(v3 + 4 * v6) >> (a2 & 0x1F) << (a2 & 0x1F) != *(v3 + 4 * v6))
    {
      return 1;
    }
  }

  else
  {
    v6 = *(a1 + 20);
  }

  v4 = (v3 + 4 * v6);
  while (v4 > a1 + 24)
  {
    if (*--v4)
    {
      return 1;
    }
  }

  return 0;
}

int *__sum_D2A(_DWORD *a1, _DWORD *a2)
{
  v21 = a1;
  v19 = a2;
  if (a1[5] < a2[5])
  {
    v19 = a1;
    v21 = a2;
  }

  v18 = __Balloc_D2A(v21[2]);
  v18[5] = v21[5];
  v17 = 0;
  v15 = v21 + 6;
  v14 = (v19 + 6);
  v16 = v18 + 6;
  v12 = &v18[v19[5] + 6];
  do
  {
    v10 = *v15 + *v14 + v17;
    v2 = v15++;
    v3 = *v2;
    v4 = v14;
    v14 += 2;
    v8 = HIWORD(*v4) + HIWORD(v3) + ((v10 & 0x10000) >> 16);
    v17 = (v8 & 0x10000) >> 16;
    v16[1] = v8;
    *v16 = v10;
    v16 += 2;
  }

  while (v16 < v12);
  v13 = v12 + 4 * (v21[5] - v19[5]);
  while (v16 < v13)
  {
    v11 = *v15 + v17;
    v5 = v15++;
    v9 = ((v11 & 0x10000) >> 16) + HIWORD(*v5);
    v17 = (v9 & 0x10000) >> 16;
    v16[1] = v9;
    *v16 = v11;
    v16 += 2;
  }

  if (v17)
  {
    if (v18[5] == v18[3])
    {
      v20 = __Balloc_D2A(v18[2] + 1);
      memcpy((v20 + 16), v18 + 4, 4 * v18[5] + 8);
      __Bfree_D2A(v18);
      v18 = v20;
    }

    v6 = v18[5]++;
    v18[v6 + 6] = 1;
  }

  return v18;
}

double __ulp_D2A(uint64_t a1)
{
  if ((*(a1 + 4) & 0x7FF00000) - 54525952 <= 0)
  {
    v4 = (54525952 - (*(a1 + 4) & 0x7FF00000)) >> 20;
    if (v4 >= 20)
    {
      HIDWORD(v3) = 0;
      v5 = v4 - 20;
      if (v5 < 31)
      {
        v2 = 1 << (31 - v5);
      }

      else
      {
        v2 = 1;
      }

      LODWORD(v3) = v2;
    }

    else
    {
      HIDWORD(v3) = 0x80000 >> v4;
      LODWORD(v3) = 0;
    }
  }

  else
  {
    HIDWORD(v3) = (*(a1 + 4) & 0x7FF00000) - 54525952;
    LODWORD(v3) = 0;
  }

  return v3;
}

unsigned int alarm(unsigned int a1)
{
  v4 = a1;
  memset(&v3, 0, sizeof(v3));
  memset(&v2, 0, sizeof(v2));
  v3.it_interval.tv_usec = 0;
  v3.it_interval.tv_sec = 0;
  v3.it_value.tv_sec = a1;
  v3.it_value.tv_usec = 0;
  if (setitimer(0, &v3, &v2) < 0)
  {
    return -1;
  }

  if (v2.it_value.tv_usec)
  {
    ++v2.it_value.tv_sec;
  }

  return v2.it_value.tv_sec;
}

uint32_t arc4random(void)
{
  __buf = 0;
  arc4random_buf(&__buf, 4uLL);
  return __buf;
}

void arc4_init()
{
  if (!rng)
  {
    rng = ccrng();
    if (!rng)
    {
      _os_crash("arc4random: unable to get ccrng() handle");
      __break(1u);
      JUMPOUT(0x343E0);
    }
  }
}

uint32_t arc4random_uniform(uint32_t __upper_bound)
{
  arc4_init();
  ccrng_uniform();
  return 0;
}

char *__cdecl basename_r(const char *a1, char *a2)
{
  if (a1 && *a1)
  {
    for (__src = &a1[strlen(a1)]; ; --__src)
    {
      v5 = 0;
      if (__src > a1 + 1)
      {
        v5 = *(__src - 1) == 47;
      }

      if (!v5)
      {
        break;
      }
    }

    v2 = __src;
    for (__srca = __src - 1; ; --__srca)
    {
      v4 = 0;
      if (__srca > a1)
      {
        v4 = *(__srca - 1) != 47;
      }

      if (!v4)
      {
        break;
      }
    }

    __n = v2 - __srca;
    if ((v2 - __srca) < 0x400)
    {
      memcpy(a2, __srca, __n);
      a2[__n] = 0;
      return a2;
    }

    else
    {
      *__error() = 63;
      return 0;
    }
  }

  else
  {
    *a2 = 46;
    a2[1] = 0;
    return a2;
  }
}

char *__cdecl basename(char *a1)
{
  if (basename_bname)
  {
    return basename_r(a1, basename_bname);
  }

  basename_bname = malloc_type_malloc();
  if (basename_bname)
  {
    return basename_r(a1, basename_bname);
  }

  else
  {
    return 0;
  }
}

clock_t clock(void)
{
  memset(&__b, 0, sizeof(__b));
  if (getrusage(0, &__b))
  {
    return -1;
  }

  else
  {
    return 1000000 * __b.ru_utime.tv_sec + __b.ru_utime.tv_usec + 1000000 * __b.ru_stime.tv_sec + __b.ru_stime.tv_usec;
  }
}

uint64_t _fdclosedir(uint64_t a1)
{
  pthread_mutex_lock((a1 + 64));
  v2 = *a1;
  *a1 = -1;
  *(a1 + 8) = 0;
  free(*(a1 + 24));
  _reclaim_telldir(a1);
  pthread_mutex_unlock((a1 + 64));
  pthread_mutex_destroy((a1 + 64));
  free(a1);
  return v2;
}

char *__cdecl ctermid(char *a1)
{
  if (!a1)
  {
    return ctermid_def;
  }

  v1 = ctermid_def[8];
  *a1 = *ctermid_def;
  a1[8] = v1;
  return a1;
}

char *__cdecl ctermid_r(char *a1)
{
  if (a1)
  {
    return ctermid(a1);
  }

  else
  {
    return 0;
  }
}

char *__cdecl dirname_r(const char *a1, char *a2)
{
  if (a1 && *a1)
  {
    for (i = &a1[strlen(a1)]; ; --i)
    {
      v5 = 0;
      if (i > a1 + 1)
      {
        v5 = *(i - 1) == 47;
      }

      if (!v5)
      {
        break;
      }
    }

    while (1)
    {
      v4 = 0;
      if (i > a1)
      {
        v4 = *(i - 1) != 47;
      }

      if (!v4)
      {
        break;
      }

      --i;
    }

    if (i == a1)
    {
      *a2 = 46;
      a2[1] = 0;
      return a2;
    }

    else
    {
      while (1)
      {
        v3 = 0;
        if (i > a1 + 1)
        {
          v3 = *(i - 1) == 47;
        }

        if (!v3)
        {
          break;
        }

        --i;
      }

      __len = i - a1;
      if ((i - a1) < 0x400)
      {
        memmove(a2, a1, __len);
        a2[__len] = 0;
        return a2;
      }

      else
      {
        *__error() = 63;
        return 0;
      }
    }
  }

  else
  {
    *a2 = 46;
    a2[1] = 0;
    return a2;
  }
}

char *__cdecl dirname(char *a1)
{
  if (dirname_dname)
  {
    return dirname_r(a1, dirname_dname);
  }

  dirname_dname = malloc_type_malloc();
  if (dirname_dname)
  {
    return dirname_r(a1, dirname_dname);
  }

  else
  {
    return 0;
  }
}

double drand48(void)
{
  _rand48_seed = _rand48_seed * _rand48_mult + _rand48_add;
  if ((_rand48_seed & 0xFFFFFFFFFFFFLL) == 0)
  {
    return 0.0;
  }

  v2 = 32 * (_rand48_seed & 0xFFFFFFFFFFFFLL);
  v1 = 0;
  while ((v2 & 0x10000000000000) == 0)
  {
    ++v1;
    v2 *= 2;
  }

  *&v3 = v2 & 0x800FFFFFFFFFFFFFLL | (((1022 - v1) & 0x7FFLL) << 52);
  return v3;
}

double erand48(unsigned __int16 a1[3])
{
  v4 = (*a1 + (a1[1] << 16) + (a1[2] << 32)) * _rand48_mult + _rand48_add;
  *a1 = (*a1 + (a1[1] << 16)) * _rand48_mult + _rand48_add;
  a1[2] = WORD2(v4);
  if ((v4 & 0xFFFFFFFFFFFFLL) == 0)
  {
    return 0.0;
  }

  v3 = 32 * (v4 & 0xFFFFFFFFFFFFLL);
  v2 = 0;
  while ((v3 & 0x10000000000000) == 0)
  {
    ++v2;
    v3 *= 2;
  }

  *&v5 = v3 & 0x800FFFFFFFFFFFFFLL | (((1022 - v2) & 0x7FFLL) << 52);
  return v5;
}

void _e_visprintf(FILE *a1, const char *a2, va_list a3)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = 0;
  v9 = 0;
  vasprintf(&v9, a2, a3);
  if (v9)
  {
    strlen(v9);
    v8 = malloc_type_malloc();
    if (v8)
    {
      v6 = v9;
      v5 = v8;
      while (*v6)
      {
        if (escape[*v6])
        {
          if (escape[*v6] == 255)
          {
            sprintf(v5, "\\%03o", *v6);
            v5 += 4;
          }

          else
          {
            *v5 = 92;
            v4 = v5 + 1;
            v5 += 2;
            *v4 = escape[*v6];
          }
        }

        else
        {
          v3 = v5++;
          *v3 = *v6;
        }

        ++v6;
      }

      *v5 = 0;
      fputs(v8, v13);
      free(v8);
    }

    else
    {
      v10 = 1;
    }

    free(v9);
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    vfprintf(v13, v12, a3);
  }
}

void err_set_file(void *a1)
{
  if (a1)
  {
    _e_err_file = a1;
  }

  else
  {
    _e_err_file = __stderrp;
  }
}

void err_set_exit(void (__cdecl *a1)(int))
{
  if (_e_err_exit == 1)
  {
    _Block_release(off_E1568);
    off_E1568 = 0;
  }

  if (a1)
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  _e_err_exit = v1;
  off_E1568 = a1;
}

void err_set_exit_b(void *a1)
{
  if (_e_err_exit == 1)
  {
    _Block_release(off_E1568);
  }

  _e_err_exit = a1 != 0;
  off_E1568 = _Block_copy(a1);
}

int execl(const char *__path, const char *__arg0, ...)
{
  va_start(va, __arg0);
  v16 = __path;
  v15 = __arg0;
  v13 = 0;
  va_copy(v14, va);
  for (i = 1; ; ++i)
  {
    v2 = *v14;
    v14 += 8;
    v11 = v2;
    if (!v2)
    {
      break;
    }
  }

  v9 = &v6 - ((8 * (i + 1) + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v9, 8 * (i + 1));
  v13 = v9;
  if (v9)
  {
    va_copy(v14, va);
    i = 1;
    *v13 = v15;
    while (1)
    {
      v3 = *v14;
      v14 += 8;
      v10 = v3;
      v13[i] = v3;
      if (!v3)
      {
        break;
      }

      ++i;
    }

    v8 = v16;
    v7 = v13;
    v4 = _NSGetEnviron();
    return execve(v8, v7, *v4);
  }

  else
  {
    *__error() = 12;
    return -1;
  }
}

int execle(const char *__path, const char *__arg0, ...)
{
  va_start(va, __arg0);
  v16 = __path;
  v15 = __arg0;
  v13 = 0;
  v12 = 0;
  va_copy(v14, va);
  for (i = 1; ; ++i)
  {
    v2 = *v14;
    v14 += 8;
    v10 = v2;
    if (!v2)
    {
      break;
    }
  }

  v7 = &v6 - ((8 * (i + 1) + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v7, 8 * (i + 1));
  v13 = v7;
  if (v7)
  {
    va_copy(v14, va);
    i = 1;
    *v13 = v15;
    while (1)
    {
      v3 = *v14;
      v14 += 8;
      v9 = v3;
      v13[i] = v3;
      if (!v3)
      {
        break;
      }

      ++i;
    }

    v4 = *v14;
    v14 += 8;
    v8 = v4;
    v12 = v4;
    return execve(v16, v13, v4);
  }

  else
  {
    *__error() = 12;
    return -1;
  }
}

int execlp(const char *__file, const char *__arg0, ...)
{
  va_start(va, __arg0);
  v13 = __file;
  v12 = __arg0;
  v10 = 0;
  va_copy(v11, va);
  for (i = 1; ; ++i)
  {
    v2 = *v11;
    v11 += 8;
    v8 = v2;
    if (!v2)
    {
      break;
    }
  }

  v6 = &v5 - ((8 * (i + 1) + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v6, 8 * (i + 1));
  v10 = v6;
  if (v6)
  {
    va_copy(v11, va);
    i = 1;
    *v10 = v12;
    while (1)
    {
      v3 = *v11;
      v11 += 8;
      v7 = v3;
      v10[i] = v3;
      if (!v3)
      {
        break;
      }

      ++i;
    }

    return execvp(v13, v10);
  }

  else
  {
    *__error() = 12;
    return -1;
  }
}

int execv(const char *__path, char *const *__argv)
{
  v2 = _NSGetEnviron();
  execve(__path, __argv, *v2);
  return -1;
}

uint64_t _execvpe(char *a1, char *const *a2, char *const *a3)
{
  v4 = getenv("PATH");
  if (!v4)
  {
    v4 = "/usr/bin:/bin";
  }

  return execvPe(a1, v4, a2, a3);
}

uint64_t execvPe(char *a1, const char *a2, char *const *a3, char *const *a4)
{
  __s = a1;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v22 = 0;
  i = 0;
  v20 = 0;
  v19 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  memset(&v12, 0, sizeof(v12));
  v18 = 0;
  if (strchr(__s, 47))
  {
    v16 = __s;
    v25 = 0;
    v14 = 0;
LABEL_16:
    execve(v16, v24, v23);
    v9 = *__error();
    if (v9 == 2)
    {
      goto LABEL_6;
    }

    if (v9 != 7)
    {
      if (v9 == 8)
      {
          ;
        }

        if ((i + 2) >= 3)
        {
          v8 = i + 2;
        }

        else
        {
          v8 = 3;
        }

        v7 = &v5 - ((8 * v8 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v7, 8 * v8);
        v22 = v7;
        if (v7)
        {
          if (i)
          {
            *v22 = *v24;
            v22[1] = v16;
            memmove(v22 + 2, v24 + 1, 8 * i);
          }

          else
          {
            *v22 = "sh";
            v22[1] = v16;
            v22[2] = 0;
          }

          execve("/bin/sh", v22, v23);
        }
      }

      else if (v9 != 12)
      {
        if (v9 == 20)
        {
          goto LABEL_6;
        }

        if (v9 != 26)
        {
          if (v9 == 63 || v9 == 62 || (v17 = *__error(), stat(v16, &v12)))
          {
LABEL_6:
            while (v14)
            {
              v15 = strchrnul(v14, 0x3Au);
              if (v15 == v14)
              {
                v13 = ".";
                v20 = 1;
              }

              else
              {
                v13 = v14;
                v20 = v15 - v14;
              }

              if (*v15)
              {
                v14 = v15 + 1;
              }

              else
              {
                v14 = 0;
              }

              if (v20 + v19 + 2 <= 0x400)
              {
                v10 = v28;
                memmove(v28, v13, v20);
                v28[v20] = 47;
                memmove(&v28[v20 + 1], __s, v19);
                v10[v20 + 1 + v19] = 0;
                goto LABEL_16;
              }

              v11 = 2;
              write_NOCANCEL();
              write_NOCANCEL();
              write_NOCANCEL();
            }

            if (v18)
            {
              *__error() = 13;
            }

            else if (v25)
            {
              *__error() = 2;
            }
          }

          else
          {
            if (v17 == 13)
            {
              v18 = 1;
              goto LABEL_6;
            }

            v6 = v17;
            *__error() = v6;
          }
        }
      }
    }

    return -1;
  }

  else
  {
    v16 = v28;
    if (*__s)
    {
      v14 = v25;
      v19 = strlen(__s);
      goto LABEL_6;
    }

    *__error() = 2;
    return -1;
  }
}

const char *__cdecl fmtcheck(const char *a1, const char *a2)
{
  v8 = a1;
  v7 = a2;
  v6 = 0;
  v5 = 0;
  if (!a1)
  {
    return v7;
  }

  v6 = v8;
  next_format = 0;
  v5 = v7;
  v3 = 0;
  while (1)
  {
    next_format = get_next_format(&v6, next_format);
    if (next_format == 23)
    {
      break;
    }

    if (next_format == 24)
    {
      return v7;
    }

    v3 = get_next_format(&v5, v3);
    if (next_format != v3)
    {
      return v7;
    }
  }

  return v8;
}

uint64_t get_next_format(char **a1, int a2)
{
  if (a2 == 21)
  {
    ++*a1;
    return get_next_format_from_width(a1);
  }

  else if (a2 == 22)
  {
    ++*a1;
    return get_next_format_from_precision(a1);
  }

  else
  {
    __s = *a1;
    v6 = 0;
    while (!v6)
    {
      __sa = strchr(__s, 37);
      if (!__sa)
      {
        *a1 = 0;
        return 23;
      }

      __s = __sa + 1;
      if (!*__s)
      {
        *a1 = __s;
        return 24;
      }

      if (*__s == 37)
      {
        ++__s;
      }

      else
      {
        v6 = 1;
      }
    }

    while (1)
    {
      v3 = 0;
      if (*__s)
      {
        v3 = strchr("#'0- +", *__s) != 0;
      }

      if (!v3)
      {
        break;
      }

      ++__s;
    }

    if (*__s == 42)
    {
      *a1 = __s;
      return 21;
    }

    else
    {
      while (isdigit(*__s))
      {
        ++__s;
      }

      if (*__s)
      {
        *a1 = __s;
        return get_next_format_from_width(a1);
      }

      else
      {
        *a1 = __s;
        return 24;
      }
    }
  }
}

uint64_t get_next_format_from_width(char **a1)
{
  v2 = *a1;
  if (**a1 != 46)
  {
    goto LABEL_8;
  }

  if (*++v2 != 42)
  {
    while (isdigit(*v2))
    {
      ++v2;
    }

    if (!*v2)
    {
      *a1 = v2;
      return 24;
    }

LABEL_8:
    *a1 = v2;
    return get_next_format_from_precision(a1);
  }

  *a1 = v2;
  return 22;
}

uint64_t get_next_format_from_precision(char **a1)
{
  v3 = *a1;
  v2 = **a1;
  switch(v2)
  {
    case 'L':
      ++v3;
      v4 = 6;
      break;
    case 'h':
      if (!*++v3)
      {
        *a1 = v3;
        return 24;
      }

      if (*v3 == 104)
      {
        ++v3;
        v4 = 1;
      }

      else
      {
        v4 = 2;
      }

      break;
    case 'j':
      ++v3;
      v4 = 5;
      break;
    case 'l':
      if (!*++v3)
      {
        *a1 = v3;
        return 24;
      }

      if (*v3 == 108)
      {
        ++v3;
        v4 = 4;
      }

      else
      {
        v4 = 3;
      }

      break;
    case 'q':
      ++v3;
      v4 = 4;
      break;
    case 't':
      ++v3;
      v4 = 7;
      break;
    case 'z':
      ++v3;
      v4 = 8;
      break;
    default:
      v4 = 0;
      break;
  }

  if (*v3)
  {
    if (strchr("diouxX", *v3))
    {
      if (v4 <= 2)
      {
        *a1 = v3;
        return 2;
      }

      else
      {
        switch(v4)
        {
          case 3u:
            *a1 = v3;
            return 4;
          case 4u:
            *a1 = v3;
            return 5;
          case 5u:
            *a1 = v3;
            return 6;
          case 7u:
            *a1 = v3;
            return 7;
          default:
            *a1 = v3;
            if (v4 == 8)
            {
              return 8;
            }

            else
            {
              return 24;
            }
        }
      }
    }

    else if (*v3 == 110)
    {
      if (v4)
      {
        switch(v4)
        {
          case 1u:
            *a1 = v3;
            return 9;
          case 2u:
            *a1 = v3;
            return 10;
          case 3u:
            *a1 = v3;
            return 12;
          case 4u:
            *a1 = v3;
            return 13;
          case 5u:
            *a1 = v3;
            return 14;
          case 7u:
            *a1 = v3;
            return 15;
          default:
            *a1 = v3;
            if (v4 == 8)
            {
              return 16;
            }

            else
            {
              return 24;
            }
        }
      }

      else
      {
        *a1 = v3;
        return 11;
      }
    }

    else if (strchr("DOU", *v3))
    {
      *a1 = v3;
      if (v4)
      {
        return 24;
      }

      else
      {
        return 4;
      }
    }

    else if (strchr("aAeEfFgG", *v3))
    {
      if (!v4 || v4 == 3)
      {
        *a1 = v3;
        return 17;
      }

      else
      {
        *a1 = v3;
        if (v4 == 6)
        {
          return 18;
        }

        else
        {
          return 24;
        }
      }
    }

    else
    {
      switch(*v3)
      {
        case 'c':
          if (v4)
          {
            *a1 = v3;
            if (v4 == 3)
            {
              return 3;
            }

            else
            {
              return 24;
            }
          }

          else
          {
            *a1 = v3;
            return 2;
          }

        case 'C':
          *a1 = v3;
          if (v4)
          {
            return 24;
          }

          else
          {
            return 3;
          }

        case 's':
          if (v4)
          {
            *a1 = v3;
            if (v4 == 3)
            {
              return 20;
            }

            else
            {
              return 24;
            }
          }

          else
          {
            *a1 = v3;
            return 19;
          }

        case 'S':
          *a1 = v3;
          if (v4)
          {
            return 24;
          }

          else
          {
            return 20;
          }

        case 'p':
          *a1 = v3;
          if (v4)
          {
            return 24;
          }

          else
          {
            return 4;
          }

        default:
          *a1 = v3;
          return 24;
      }
    }
  }

  else
  {
    *a1 = v3;
    return 24;
  }
}

int fmtmsg(uint64_t a1, const char *a2, int a3, const char *a4, const char *a5, const char *a6)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = a5;
  v14 = a6;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  if (!a5)
  {
    v15 = &unk_C42B5;
  }

  if ((v19 & 0x100) == 0)
  {
    goto LABEL_20;
  }

  v12 = getenv("MSGVERB");
  if (!v12 || !*v12 || strlen(v12) > 0x1E)
  {
    goto LABEL_12;
  }

  v11 = strdup(v12);
  if (v11)
  {
    if (validmsgverb(v11))
    {
LABEL_14:
      v10 = printfmt(v11, v19, v18, v17, v16, v15, v14);
      if (!v10)
      {
        free(v11);
        return 3;
      }

      if (*v10 && fprintf(__stderrp, "%s", v10) < 0)
      {
        v9 = 1;
      }

      free(v11);
      free(v10);
LABEL_20:
      if ((v19 & 0x200) != 0)
      {
        v10 = printfmt("label:severity:text:action:tag", v19, v18, v17, v16, v15, v14);
        if (!v10)
        {
          return 2;
        }

        if (*v10)
        {
          memset(&__b, 0, sizeof(__b));
          __filename = "/dev/console";
          if (!stat("/var/log/console", &__b) && (__b.st_mode & 0xF000) == 0x4000)
          {
            __filename = "/var/log/console";
          }

          v13 = fopen(__filename, "a");
          if (v13)
          {
            fprintf(v13, "%s", v10);
            fclose(v13);
          }

          else if (v9)
          {
            v9 = 3;
          }

          else
          {
            v9 = 2;
          }
        }

        free(v10);
      }

      return v9;
    }

    free(v11);
LABEL_12:
    v11 = strdup("label:severity:text:action:tag");
    if (!v11)
    {
      return 3;
    }

    goto LABEL_14;
  }

  return 3;
}

BOOL validmsgverb(const char *a1)
{
  v2 = 0;
  while (1)
  {
    __s1 = nextcomp(a1);
    if (!__s1)
    {
      break;
    }

    --v2;
    for (i = 0; validlist[i]; ++i)
    {
      if (!strcmp(__s1, validlist[i]))
      {
        ++v2;
      }
    }
  }

  return v2 == 0;
}

char *printfmt(const char *a1, uint64_t a2, const char *a3, int a4, const char *a5, const char *a6, const char *a7)
{
  __size = 32;
  if (a3)
  {
    __size = strlen(a3) + 32;
  }

  __s = sevinfo(a4);
  if (__s)
  {
    __size += strlen(__s);
  }

  if (a5)
  {
    __size += strlen(a5);
  }

  if (a6)
  {
    __size += strlen(a6);
  }

  if (a7)
  {
    __size += strlen(a7);
  }

  __dst = malloc_type_malloc();
  if (!__dst)
  {
    return 0;
  }

  *__dst = 0;
  while (1)
  {
    __s1 = nextcomp(a1);
    if (!__s1)
    {
      break;
    }

    if (!strcmp(__s1, "label") && a3)
    {
      if (*__dst)
      {
        strlcat(__dst, ": ", __size);
      }

      strlcat(__dst, a3, __size);
    }

    else if (!strcmp(__s1, "severity") && __s)
    {
      if (*__dst)
      {
        strlcat(__dst, ": ", __size);
      }

      v7 = sevinfo(a4);
      strlcat(__dst, v7, __size);
    }

    else if (!strcmp(__s1, "text") && a5)
    {
      if (*__dst)
      {
        strlcat(__dst, ": ", __size);
      }

      strlcat(__dst, a5, __size);
    }

    else if (!strcmp(__s1, "action") && a6)
    {
      if (*__dst)
      {
        strlcat(__dst, "\n", __size);
      }

      strlcat(__dst, "TO FIX: ", __size);
      strlcat(__dst, a6, __size);
    }

    else if (!strcmp(__s1, "tag") && a7)
    {
      if (*__dst)
      {
        strlcat(__dst, " ", __size);
      }

      strlcat(__dst, a7, __size);
    }
  }

  if (*__dst)
  {
    strlcat(__dst, "\n", __size);
  }

  return __dst;
}

const char *sevinfo(int a1)
{
  switch(a1)
  {
    case 1:
      return "HALT";
    case 2:
      return "ERROR";
    case 3:
      return "WARNING";
    case 4:
      return "INFO";
  }

  return 0;
}

char *nextcomp(const char *a1)
{
  if (nextcomp_lmsgverb)
  {
    v2 = strtok_r(0, ":", &nextcomp_state);
  }

  else
  {
    strlcpy(&nextcomp_lmsgverb, a1, 0x1FuLL);
    v2 = strtok_r(&nextcomp_lmsgverb, ":", &nextcomp_state);
  }

  if (!v2)
  {
    nextcomp_lmsgverb = 0;
  }

  return v2;
}

int fnmatch(const char *a1, const char *a2, int a3)
{
  v3 = __locale_key;
  v10 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v10)
  {
    v5 = v10;
  }

  else
  {
    v5 = __global_locale;
  }

  memcpy(&__dst, &fnmatch_initial, sizeof(__dst));
  memcpy(&v11, &fnmatch_initial, sizeof(v11));
  return fnmatch1(a1, a2, a2, a3, &__dst, &v11, v5, 64);
}

uint64_t fnmatch1(char *a1, char *a2, char *a3, int a4, mbstate_t *a5, mbstate_t *a6, _xlocale *a7, int a8)
{
  v33 = a1;
  __s = a2;
  v31 = a3;
  v30 = a4;
  v29 = a5;
  v28 = a6;
  v27 = a7;
  v26 = a8;
  memset(__b, 0, sizeof(__b));
  memset(&__dst, 0, sizeof(__dst));
  v23 = 0;
  v22 = 0;
  i = 0;
  v20 = 0;
  v19 = 0;
  v24 = 0;
  v25 = 0;
  v8 = v26--;
  if (v8 <= 0)
  {
    return 2;
  }

  while (1)
  {
    while (1)
    {
      v17 = mbrtowc_l(&v20, v33, 6uLL, a5, v27);
      if (v17 >= 0xFFFFFFFFFFFFFFFELL)
      {
        return 2;
      }

      v33 += v17;
      v15 = mbrtowc_l(&v19, __s, 6uLL, a6, v27);
      if (v15 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v19 = *__s;
        v15 = 1;
        memset(a6, 0, sizeof(mbstate_t));
      }

      if (!v20)
      {
        if ((v30 & 8) != 0 && v19 == 47)
        {
          return 0;
        }

        if (!v19)
        {
          return 0;
        }

        goto LABEL_77;
      }

      if (v20 == 42)
      {
        break;
      }

      if (v20 == 63)
      {
        if (!v19)
        {
          return 1;
        }

        if (v19 == 47 && (v30 & 2) != 0 || v19 == 46 && (v30 & 4) != 0 && (__s == v31 || (v30 & 2) != 0 && *(__s - 1) == 47))
        {
          goto LABEL_77;
        }

        __s += v15;
      }

      else if (v20 == 91)
      {
        if (!v19)
        {
          return 1;
        }

        if (v19 == 47 && (v30 & 2) != 0 || v19 == 46 && (v30 & 4) != 0 && (__s == v31 || (v30 & 2) != 0 && *(__s - 1) == 47))
        {
          goto LABEL_77;
        }

        v11 = rangematch(v33, v19, &__s[v15], v30, &v23, &v22, a5, a6, v27);
        switch(v11)
        {
          case -1:
            return 2;
          case 0:
            goto LABEL_77;
          case 1:
            v33 = v23;
            __s = v22;
            break;
        }
      }

      else
      {
        if (v20 == 92 && (v30 & 1) == 0)
        {
          v18 = mbrtowc_l(&v20, v33, 6uLL, a5, v27);
          if (v18 >= 0xFFFFFFFFFFFFFFFELL)
          {
            return 2;
          }

          if (!v18)
          {
            v20 = 92;
          }

          v33 += v18;
        }

        __s += v15;
        if (v20 != v19)
        {
          if ((v30 & 0x10) == 0 || (v10 = towlower_l(v20, v27), v10 != towlower_l(v19, v27)))
          {
LABEL_77:
            if (!v25)
            {
              return 1;
            }

            v16 = mbrtowc(&v19, v24, 6uLL, &__dst);
            if (v16 >= 0xFFFFFFFFFFFFFFFELL)
            {
              v19 = *v24;
              v16 = 1;
              memset(&__dst, 0, sizeof(__dst));
            }

            if (!v19)
            {
              return 1;
            }

            if (v19 == 47 && (v30 & 2) != 0)
            {
              return 1;
            }

            v24 += v16;
            v33 = v25;
            memcpy(a5, __b, sizeof(mbstate_t));
            __s = v24;
            memcpy(a6, &__dst, sizeof(mbstate_t));
          }
        }
      }
    }

    for (i = *v33; i == 42; i = *v33)
    {
      ++v33;
    }

    if (v19 == 46 && (v30 & 4) != 0 && (__s == v31 || (v30 & 2) != 0 && *(__s - 1) == 47))
    {
      goto LABEL_77;
    }

    if (!i)
    {
      break;
    }

    if (i == 47 && (v30 & 2) != 0)
    {
      __s = strchr(__s, 47);
      if (!__s)
      {
        return 1;
      }
    }

    else
    {
      v25 = v33;
      memcpy(__b, a5, sizeof(__b));
      v24 = __s;
      memcpy(&__dst, a6, sizeof(__dst));
    }
  }

  if ((v30 & 2) != 0)
  {
    v12 = 1;
    if ((v30 & 8) == 0)
    {
      v12 = strchr(__s, 47) == 0;
    }

    return !v12;
  }

  else
  {
    return 0;
  }
}

uint64_t rangematch(char *a1, wint_t a2, char *a3, int a4, void *a5, void *a6, void *a7, void *a8, _xlocale *a9)
{
  v36 = a1;
  v35 = a2;
  v34 = a3;
  v33 = a4;
  v32 = a5;
  v31 = a6;
  __dst = a7;
  __src = a8;
  v28 = a9;
  v27 = 0;
  v26 = 0;
  __c = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  __s = 0;
  v17 = 0;
  memset(__b, 0, sizeof(__b));
  v12 = 1;
  if (*v36 != 33)
  {
    v12 = *v36 == 94;
  }

  v27 = v12;
  if (v12)
  {
    ++v36;
  }

  if ((v33 & 0x10) != 0)
  {
    v35 = towlower_l(v35, v28);
  }

  v26 = 0;
  v19 = v36;
  while (1)
  {
    v24 = 0;
    if (*v36 == 93 && v36 > v19)
    {
      break;
    }

    if (!*v36)
    {
      return -1;
    }

    if (*v36 == 47 && (v33 & 2) != 0)
    {
      return 0;
    }

    if (*v36 != 92 || (v33 & 1) != 0)
    {
      if (*v36 != 91)
      {
        goto LABEL_74;
      }

      __c = v36[1];
      if (__c != 46 && __c != 61 && __c != 58)
      {
        goto LABEL_74;
      }

      v36 += 2;
      for (__s = v36; ; ++__s)
      {
        __s = strchr(__s, __c);
        if (!__s || __s[1] == 93)
        {
          break;
        }
      }

      if (!__s)
      {
        return -1;
      }

      if (__c == 46)
      {
LABEL_29:
        v20 = __collate_collating_symbol(&v40, 0x18uLL, v36, __s - v36, __dst, v28);
        if (v20 == -1 || !v20)
        {
          return -1;
        }

        v36 = __s + 2;
        if (v20 <= 1)
        {
          v24 = v40;
          goto LABEL_74;
        }

        v16 = 0;
        v15 = 0;
        if (__s[2] == 45 && __s[3] && __s[3] != 93)
        {
          return -1;
        }

        v16 = &v41;
        if (v35 == v40)
        {
          memcpy(__b, __src, sizeof(__b));
          v17 = v34;
          while (--v20)
          {
            v21 = mbrtowc_l(&v15, v34, 6uLL, __src, v28);
            if (v21 >= 0xFFFFFFFFFFFFFFFELL)
            {
              v15 = *v34;
              v21 = 1;
              __src = 0;
            }

            v9 = v16++;
            if (v15 != *v9)
            {
              memcpy(__src, __b, 0x80uLL);
              v34 = v17;
              break;
            }

            v34 += v21;
          }

          if (!v20)
          {
            v26 = 1;
            break;
          }
        }
      }

      else if (__c == 61)
      {
        memcpy(__b, __dst, sizeof(__b));
        v14 = __collate_equiv_class(v36, __s - v36, __dst, v28);
        if (v14 < 0)
        {
          return -1;
        }

        if (!v14)
        {
          memcpy(__dst, __b, 0x80uLL);
          goto LABEL_29;
        }

        v36 = __s + 2;
        if (__s[2] == 45 && __s[3] && __s[3] != 93)
        {
          return -1;
        }

        v10 = strlen(v34);
        v20 = __collate_equiv_match(v14, 0, 0, v35, v34, v10, __src, &v21, v28);
        if (v20 == -1)
        {
          return -1;
        }

        if (v20)
        {
          v26 = 1;
          v34 += v21;
          break;
        }
      }

      else
      {
        if (__s[2] == 45 && __s[3] && __s[3] != 93)
        {
          return -1;
        }

        if (__s - v36 > 14)
        {
          return -1;
        }

        strlcpy(v38, v36, __s - v36 + 1);
        v36 = __s + 2;
        v13 = wctype(v38);
        if (!v13)
        {
          return -1;
        }

        if (iswctype_l(v35, v13, v28))
        {
          v26 = 1;
          break;
        }
      }
    }

    else
    {
      ++v36;
LABEL_74:
      if (!v24)
      {
        v22 = mbrtowc_l(&v24, v36, 6uLL, __dst, v28);
        if (v22 >= 0xFFFFFFFFFFFFFFFELL)
        {
          return -1;
        }

        v36 += v22;
      }

      if ((v33 & 0x10) != 0)
      {
        v24 = towlower_l(v24, v28);
      }

      if (*v36 == 45 && v36[1] && v36[1] != 93)
      {
        if (*++v36 == 92 && (v33 & 1) == 0 && *v36)
        {
          ++v36;
        }

        v22 = mbrtowc_l(&v23, v36, 6uLL, __dst, v28);
        if (v22 >= 0xFFFFFFFFFFFFFFFELL)
        {
          return -1;
        }

        v36 += v22;
        if (!v23)
        {
          return -1;
        }

        if (v23 == 91 && (__c = *v36, __c == 46) || __c == 61 || __c == 58)
        {
          if (__c == 61 || __c == 58)
          {
            return -1;
          }

          for (__s = ++v36; ; ++__s)
          {
            __s = strchr(__s, __c);
            if (!__s || __s[1] == 93)
            {
              break;
            }
          }

          if (!__s)
          {
            return -1;
          }

          v20 = __collate_collating_symbol(&v40, 0x18uLL, v36, __s - v36, __dst, v28);
          if (v20 != 1)
          {
            return -1;
          }

          v36 = __s + 2;
          v23 = v40;
        }

        if ((v33 & 0x10) != 0)
        {
          v23 = towlower_l(v23, v28);
        }

        if (*(*(v28 + 165) + 64))
        {
          if (v24 <= v35 && v35 <= v23)
          {
            goto LABEL_115;
          }
        }

        else if (__collate_range_cmp(v24, v35, v28) <= 0 && __collate_range_cmp(v35, v23, v28) <= 0)
        {
LABEL_115:
          v26 = 1;
          break;
        }
      }

      else if (v24 == v35)
      {
        v26 = 1;
        break;
      }
    }
  }

  __c = 0;
  while (*v36 != 93)
  {
    if (!*v36)
    {
      return -1;
    }

    if (*v36 == __c)
    {
      if (*++v36 == 93)
      {
        __c = 0;
        ++v36;
      }
    }

    else if (__c || *v36 != 91)
    {
      v22 = mbrtowc_l(&v24, v36, 6uLL, __dst, v28);
      if (v22 >= 0xFFFFFFFFFFFFFFFELL)
      {
        return -1;
      }

      v36 += v22;
    }

    else
    {
      __c = *++v36;
      if (__c == 46 || __c == 61 || __c == 58)
      {
        ++v36;
      }

      else
      {
        __c = 0;
      }
    }
  }

  *v32 = ++v36;
  *v31 = v34;
  return v26 != v27;
}

key_t ftok(const char *a1, int a2)
{
  v5 = a1;
  v4 = a2;
  memset(&__b, 0, sizeof(__b));
  if (stat(v5, &__b) < 0)
  {
    return -1;
  }

  else
  {
    return (LOBYTE(__b.st_dev) << 16) | (v4 << 24) | LOWORD(__b.st_ino);
  }
}

char *__cdecl getbsize(int *a1, uint64_t *a2)
{
  v13 = a1;
  v12 = a2;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  __endptr = 0;
  v5 = &unk_C42B5;
  __str = getenv("BLOCKSIZE");
  if (!__str || !*__str)
  {
    v11 = 512;
    v8 = 512;
    goto LABEL_26;
  }

  v11 = strtol(__str, &__endptr, 10);
  if (v11 < 0)
  {
    goto LABEL_24;
  }

  if (!v11)
  {
    v11 = 1;
  }

  if (*__endptr && __endptr[1])
  {
    goto LABEL_20;
  }

  v4 = *__endptr;
  if (!*__endptr)
  {
    v10 = 0x40000000;
    v9 = 1;
    goto LABEL_21;
  }

  switch(v4)
  {
    case 'G':
      goto LABEL_16;
    case 'K':
LABEL_17:
      v5 = "K";
      v10 = 0x100000;
      v9 = 1024;
      goto LABEL_21;
    case 'M':
LABEL_18:
      v5 = "M";
      v10 = 1024;
      v9 = 0x100000;
      goto LABEL_21;
    case 'g':
LABEL_16:
      v5 = "G";
      v10 = 1;
      v9 = 0x40000000;
      goto LABEL_21;
    case 'k':
      goto LABEL_17;
    case 'm':
      goto LABEL_18;
  }

LABEL_20:
  warnx("%s: unknown blocksize", __str);
  v11 = 512;
  v10 = 0x40000000;
  v9 = 1;
LABEL_21:
  if (v11 > v10)
  {
    warnx("maximum blocksize is %ldG", 1);
    v11 = v10;
  }

  v8 = v11 * v9;
  if (v11 * v9 < 512)
  {
LABEL_24:
    warnx("minimum blocksize is 512");
    v5 = &unk_C42B5;
    v11 = 512;
    v8 = 512;
  }

LABEL_26:
  snprintf(getbsize_header, 0x14uLL, "%ld%s-blocks", v11, v5);
  v2 = strlen(getbsize_header);
  result = getbsize_header;
  *v13 = v2;
  *v12 = v8;
  return result;
}

int cgetset(const char *a1)
{
  if (a1)
  {
    topreclen = strlen(a1);
    toprec = malloc_type_malloc();
    if (toprec)
    {
      gottoprec = 0;
      strcpy(toprec, a1);
      return 0;
    }

    else
    {
      *__error() = 12;
      return -1;
    }
  }

  else
  {
    if (toprec)
    {
      free(toprec);
    }

    toprec = 0;
    topreclen = 0;
    return 0;
  }
}

char *__cdecl cgetcap(char *a1, const char *a2, int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        if (!*a1)
        {
          return 0;
        }

        v3 = a1++;
        if (*v3 == 58)
        {
          for (i = a2; ; ++i)
          {
            v6 = 0;
            if (*i == *a1)
            {
              v6 = *a1 != 0;
            }

            if (!v6)
            {
              break;
            }

            ++a1;
          }

          if (!*i)
          {
            break;
          }
        }
      }

      if (*a1 == 64)
      {
        return 0;
      }

      if (a3 != 58)
      {
        break;
      }

      if (!*a1 || *a1 == 58)
      {
        return a1;
      }
    }
  }

  while (*a1 != a3);
  v9 = a1 + 1;
  if (*v9 == 64)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

int cgetent(char **a1, char **a2, const char *a3)
{
  v7 = a1;
  v6 = a2;
  v5 = a3;
  v4 = 0;
  v8 = 0;
  v9 = __locale_key;
  v10 = __locale_key;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg + 8 * v10);
  if (v8)
  {
    return getent(a1, &v4, a2, -1, a3, 0, 0, v8);
  }

  else
  {
    return getent(a1, &v4, a2, -1, a3, 0, 0, __global_locale);
  }
}

uint64_t getent(char **a1, _DWORD *a2, const char **a3, int a4, char *a5, int a6, const char *a7, uint64_t a8)
{
  v53 = a1;
  v52 = a2;
  v51 = a3;
  v50 = a4;
  v49 = a5;
  v48 = a6;
  v47 = a7;
  v46 = a8;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  __dst = 0;
  __s = 0;
  v35 = 0;
  if (a6 > 32)
  {
    return -3;
  }

  if (!v48 && toprec && !cgetmatch(toprec, v49))
  {
    __dst = malloc_type_malloc();
    if (__dst)
    {
      strcpy(__dst, toprec);
      v41 = 0;
      v42 = v51;
      v43 = &__dst[topreclen + 1];
      v44 = &__dst[topreclen + 1025];
LABEL_59:
      v28 = 0;
      memset(v27, 0, sizeof(v27));
      v26 = 0;
      v25 = 0;
      v24 = 0;
      v23 = 0;
      v35 = 0;
      v12 = cgetcap(__dst, "tc", 61);
      while (v12)
      {
        v27[1] = v12;
        while (*v27[1])
        {
          v13 = v27[1]++;
          if (*v13 == 58)
          {
            *(v27[1] - 1) = 0;
            break;
          }
        }

        v22 = v12 - 3;
        v24 = LODWORD(v27[1]) - (v12 - 3);
        __src = v27[1];
        v25 = getent(&v23, v27, v42, v50, v12, (v48 + 1), 0, v46, v16);
        v28 = v23;
        HIDWORD(v27[0]) = v27[0];
        if (!v25)
        {
          goto LABEL_75;
        }

        if (v25 < -1)
        {
          if (v41)
          {
            close_NOCANCEL();
          }

          free(__dst);
          return v25;
        }

        if (v25 == 1)
        {
          v35 = 1;
        }

        if (v25 == -1)
        {
          *(v27[1] - 1) = 58;
          v35 = 1;
          v12 = cgetcap(v27[1] - 1, "tc", 61);
        }

        else
        {
LABEL_75:
          v27[1] = v28;
          do
          {
            if (!*v27[1])
            {
              break;
            }

            v14 = v27[1]++;
          }

          while (*v14 != 58);
          HIDWORD(v27[0]) -= LODWORD(v27[1]) - v28;
          v28 = v27[1];
          v27[1] = v27[1] + SHIDWORD(v27[0]);
          if (*(v27[1] - 1) != 58)
          {
            *v27[1] = 58;
            ++HIDWORD(v27[0]);
          }

          v26 = HIDWORD(v27[0]) - v24;
          if (HIDWORD(v27[0]) - v24 >= v44 - v43)
          {
            v20 = v43 - __dst;
            v17 = v44 - __dst + v26 + 1024;
            v19 = v22 - __dst;
            v18 = __src - __dst;
            __dst = reallocf(__dst, v17);
            if (!__dst)
            {
              *__error() = 12;
              if (v41)
              {
                close_NOCANCEL();
              }

              free(v23);
              return -2;
            }

            v44 = &__dst[v17];
            v43 = &__dst[v20];
            v22 = &__dst[v19];
            __src = &__dst[v18];
          }

          v27[1] = &v22[SHIDWORD(v27[0])];
          memmove(v27[1], __src, v43 - __src);
          memmove(v22, v28, SHIDWORD(v27[0]));
          v43 += v26;
          free(v23);
          v12 = cgetcap(v27[1] - 1, "tc", 61);
        }
      }

      if (v41)
      {
        close_NOCANCEL();
      }

      *v52 = v43 - __dst - 1;
      if (v44 <= v43 || (__dst = reallocf(__dst, v43 - __dst)) != 0)
      {
        *v53 = __dst;
        return v35 != 0;
      }

      else
      {
        *__error() = 12;
        return -2;
      }
    }

LABEL_7:
    *__error() = 12;
    return -2;
  }

  __dst = malloc_type_malloc();
  if (!__dst)
  {
    goto LABEL_7;
  }

  v44 = __dst + 1024;
  v39 = 0;
  v42 = v51;
LABEL_11:
  if (*v42)
  {
    v40 = 0;
    if (v50 < 0)
    {
      snprintf(__str, 0x100uLL, "%s.db", *v42);
      v45 = dbopen(__str, 0, 0, DB_HASH, 0);
      if (v45)
      {
        free(__dst);
        v38 = cdbget(v45, &__dst, v49);
        if ((v38 & 0x80000000) != 0)
        {
          (v45->close)(v45);
          return v38;
        }

        else
        {
          __s = strdup(__dst);
          if (((v45->close)(v45) & 0x80000000) != 0)
          {
            free(__s);
            return -2;
          }

          else if (__s)
          {
            *v52 = strlen(__s);
            *v53 = __s;
            return v38;
          }

          else
          {
            *__error() = 12;
            return -2;
          }
        }
      }

      v8 = *v42;
      v16 = 0;
      v50 = open_NOCANCEL();
      if (v50 < 0)
      {
        goto LABEL_56;
      }

      v41 = 1;
    }

    else
    {
      lseek(v50, 0, 0);
      v41 = 0;
    }

    v32 = 0;
    v34 = v55;
    v33 = v55;
LABEL_25:
    v43 = __dst;
    while (1)
    {
      if (v33 >= v34)
      {
        NOCANCEL = read_NOCANCEL();
        if (NOCANCEL <= 0)
        {
          if (v41)
          {
            close_NOCANCEL();
          }

          if (NOCANCEL < 0)
          {
            free(__dst);
            return -2;
          }

          v50 = -1;
          v40 = 1;
LABEL_46:
          v11 = v43++;
          *v11 = 0;
          if (!v40)
          {
            if (!*__dst || *__dst == 35 || cgetmatch(__dst, v49) || v47 && nfcmp(v47, __dst))
            {
              goto LABEL_25;
            }

            v39 = 1;
          }

          if (v39)
          {
            break;
          }

LABEL_56:
          ++v42;
          goto LABEL_11;
        }

        v34 = &v55[NOCANCEL];
        v33 = v55;
      }

      v9 = v33++;
      v32 = *v9;
      if (v32 == 10)
      {
        if (v43 <= __dst || *(v43 - 1) != 92)
        {
          goto LABEL_46;
        }

        --v43;
      }

      else
      {
        v10 = v43++;
        *v10 = v32;
        if (v43 >= v44)
        {
          v30 = v43 - __dst;
          __size = v44 - __dst + 1024;
          __dst = reallocf(__dst, __size);
          if (!__dst)
          {
            *__error() = 12;
            if (v41)
            {
              close_NOCANCEL();
            }

            return -2;
          }

          v44 = &__dst[__size];
          v43 = &__dst[v30];
        }
      }
    }
  }

  if (v39)
  {
    goto LABEL_59;
  }

  free(__dst);
  return -1;
}

int cgetmatch(const char *a1, const char *a2)
{
  if (!a2 || !*a2)
  {
    return -1;
  }

LABEL_4:
  v7 = a2;
  while (*v7)
  {
    v2 = a1++;
    v3 = v7++;
    if (*v2 != *v3)
    {
      goto LABEL_12;
    }
  }

  if (*a1 == 124 || *a1 == 58 || !*a1)
  {
    return 0;
  }

LABEL_12:
  --a1;
  while (*a1 && *a1 != 58)
  {
    v4 = a1++;
    if (*v4 == 124)
    {
      goto LABEL_4;
    }
  }

  return -1;
}

int cgetclose(void)
{
  if (pfp)
  {
    fclose(pfp);
    pfp = 0;
  }

  dbp = 0;
  result = 0;
  gottoprec = 0;
  slash = 0;
  return result;
}

int cgetnext(char **a1, char **a2)
{
  v20 = a1;
  v19 = a2;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  i = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v22 = 0;
  v23 = __locale_key;
  v24 = __locale_key;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v22 = *(StatusReg + 8 * v24);
  if (v22)
  {
    v8 = v22;
  }

  else
  {
    v8 = __global_locale;
  }

  if (!dbp)
  {
    dbp = v19;
  }

  if (pfp || (pfp = fopen(*dbp, "r")) != 0)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (toprec && !gottoprec)
          {
            gottoprec = 1;
            v12 = toprec;
            goto LABEL_31;
          }

          v12 = fgetln(pfp, &v18);
          if (v12 || !pfp)
          {
            break;
          }

          v16 = ferror(pfp);
          if (v16)
          {
            v15 = *__error();
          }

          fclose(pfp);
          pfp = 0;
          if (v16)
          {
            cgetclose();
            *__error() = v15;
            return -1;
          }

          dbp += 8;
          if (!*dbp)
          {
            cgetclose();
            return 0;
          }

          pfp = fopen(*dbp, "r");
          if (!pfp)
          {
            cgetclose();
            return -1;
          }
        }

        v12[v18 - 1] = 0;
        if (v18 != 1)
        {
          break;
        }

        slash = 0;
      }

      if (!isspace_l(*v12, v8) && *v12 != 58 && *v12 != 35 && !slash)
      {
        break;
      }

      slash = v12[v18 - 2] == 92;
    }

    slash = v12[v18 - 2] == 92;
LABEL_31:
    v17 = 0;
    v10 = v26;
    while (1)
    {
      for (i = v12; *i; ++i)
      {
        if (*i == 58)
        {
          v2 = v10++;
          *v2 = 58;
          v17 = 1;
          break;
        }

        if (*i == 92)
        {
          break;
        }

        v3 = *i;
        v4 = v10++;
        *v4 = v3;
      }

      if (v17)
      {
        *v10 = 0;
        v11 = v27;
        for (i = v26; *i && *i != 124 && *i != 58; ++i)
        {
          v5 = *i;
          v6 = v11++;
          *v6 = v5;
        }

        *v11 = 0;
        v14 = getent(v20, &v9, v19, -1, v27, 0, 0, v8);
        if (v14 == -2 || v14 == -3)
        {
          cgetclose();
        }

        return v14 + 1;
      }

      v12 = fgetln(pfp, &v18);
      if (!v12)
      {
        if (pfp)
        {
          break;
        }
      }

      v12[v18 - 1] = 0;
    }

    v16 = ferror(pfp);
    if (v16)
    {
      v15 = *__error();
    }

    fclose(pfp);
    pfp = 0;
    cgetclose();
    if (v16)
    {
      *__error() = v15;
    }

    return -1;
  }

  else
  {
    cgetclose();
    return -1;
  }
}

int cgetstr(char *a1, const char *a2, char **a3)
{
  v30 = cgetcap(a1, a2, 61);
  if (!v30)
  {
    return -1;
  }

  __ptr = malloc_type_malloc();
  if (__ptr)
  {
    v32 = 100;
    v28 = __ptr;
    while (1)
    {
      v22 = 0;
      if (*v30 != 58)
      {
        v22 = *v30 != 0;
      }

      if (!v22)
      {
        break;
      }

      if (*v30 == 94)
      {
        v31 = v30 + 1;
        if (*v31 == 58 || !*v31)
        {
          break;
        }

        if (*v31 == 63)
        {
          v3 = v28++;
          *v3 = 127;
          v30 = v31 + 1;
        }

        else
        {
          v4 = v31;
          v30 = v31 + 1;
          v5 = v28++;
          *v5 = *v4 & 0x1F;
        }
      }

      else if (*v30 == 92)
      {
        if (*++v30 == 58 || !*v30)
        {
          break;
        }

        if (*v30 < 48 || *v30 > 55)
        {
          v8 = v30++;
          switch(*v8)
          {
            case 'B':
            case 'b':
              v9 = v28++;
              *v9 = 8;
              break;
            case 'C':
            case 'c':
              v15 = v28++;
              *v15 = 58;
              break;
            case 'E':
            case 'e':
              v14 = v28++;
              *v14 = 27;
              break;
            case 'F':
            case 'f':
              v12 = v28++;
              *v12 = 12;
              break;
            case 'N':
            case 'n':
              v11 = v28++;
              *v11 = 10;
              break;
            case 'R':
            case 'r':
              v13 = v28++;
              *v13 = 13;
              break;
            case 'T':
            case 't':
              v10 = v28++;
              *v10 = 9;
              break;
            default:
              v16 = v28++;
              *v16 = *(v30 - 1);
              break;
          }
        }

        else
        {
          v25 = 0;
          v24 = 3;
          do
          {
            v6 = v30++;
            v25 = *v6 - 48 + 8 * v25;
            --v24;
            v21 = 0;
            if (v24)
            {
              v21 = 0;
              if (*v30 >= 48)
              {
                v21 = *v30 <= 55;
              }
            }
          }

          while (v21);
          v7 = v28++;
          *v7 = v25;
        }
      }

      else
      {
        v17 = v30++;
        v18 = v28++;
        *v18 = *v17;
      }

      if (!--v32)
      {
        v23 = v28 - __ptr;
        __ptr = reallocf(__ptr, v28 - __ptr + 100);
        if (!__ptr)
        {
          return -2;
        }

        v32 = 100;
        v28 = &__ptr[v23];
      }
    }

    v19 = v28;
    v29 = v28 + 1;
    *v19 = 0;
    v27 = v29 - __ptr - 1;
    if (v32 == 1 || (__ptr = reallocf(__ptr, v29 - __ptr)) != 0)
    {
      *a3 = __ptr;
      return v27;
    }

    else
    {
      return -2;
    }
  }

  else
  {
    *__error() = 12;
    return -2;
  }
}

int cgetustr(char *a1, const char *a2, char **a3)
{
  v13 = cgetcap(a1, a2, 61);
  if (!v13)
  {
    return -1;
  }

  __ptr = malloc_type_malloc();
  if (__ptr)
  {
    v14 = 100;
    v11 = __ptr;
    while (1)
    {
      v7 = 0;
      if (*v13 != 58)
      {
        v7 = *v13 != 0;
      }

      if (!v7)
      {
        break;
      }

      v3 = v13++;
      v4 = v11++;
      *v4 = *v3;
      if (!--v14)
      {
        v8 = v11 - __ptr;
        __ptr = reallocf(__ptr, v11 - __ptr + 100);
        if (!__ptr)
        {
          return -2;
        }

        v14 = 100;
        v11 = &__ptr[v8];
      }
    }

    v5 = v11;
    v12 = v11 + 1;
    *v5 = 0;
    v10 = v12 - __ptr - 1;
    if (v14 == 1 || (__ptr = reallocf(__ptr, v12 - __ptr)) != 0)
    {
      *a3 = __ptr;
      return v10;
    }

    else
    {
      return -2;
    }
  }

  else
  {
    *__error() = 12;
    return -2;
  }
}

int cgetnum(char *a1, const char *a2, uint64_t *a3)
{
  v4 = cgetcap(a1, a2, 35);
  if (v4)
  {
    if (*v4 == 48)
    {
      if (*++v4 == 120 || *v4 == 88)
      {
        ++v4;
        v6 = 16;
      }

      else
      {
        v6 = 8;
      }
    }

    else
    {
      v6 = 10;
    }

    v7 = 0;
    while (1)
    {
      if (*v4 < 48 || *v4 > 57)
      {
        if (*v4 < 97 || *v4 > 102)
        {
          if (*v4 < 65 || *v4 > 70)
          {
LABEL_22:
            *a3 = v7;
            return 0;
          }

          v5 = *v4 - 55;
        }

        else
        {
          v5 = *v4 - 87;
        }
      }

      else
      {
        v5 = *v4 - 48;
      }

      if (v5 >= v6)
      {
        goto LABEL_22;
      }

      v7 = v7 * v6 + v5;
      ++v4;
    }
  }

  return -1;
}

uint64_t cdbget(uint64_t a1, void *a2, const char *a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v8 = 0;
  i = 0;
  v6 = 0;
  v7 = 0;
  __s = strdup(a3);
  if (__s)
  {
    v8 = __s;
    for (i = strlen(__s); ; i = v7 - 1)
    {
      v4 = (*(v12 + 24))(v12, &v8, &v6, 0);
      if (v4 == -1)
      {
        free(__s);
        return -2;
      }

      if (v4 == 1)
      {
        free(__s);
        return -1;
      }

      if (*v6 != 2)
      {
        break;
      }

      v8 = v6 + 1;
    }

    *v11 = v6 + 1;
    free(__s);
    return *v6 == 1;
  }

  else
  {
    return -2;
  }
}

uint64_t nfcmp(const char *a1, const char *a2)
{
    ;
  }

  v3 = i[1];
  *(i + 1) = 0;
  LODWORD(result) = strcmp(a1, a2);
  *(i + 1) = v3;
  return result;
}

char *__private_getcwd(char *a1, uint64_t a2, int a3)
{
  v28 = a1;
  v27 = a2;
  v26 = a3;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  memset(&__b, 0, sizeof(__b));
  if (v28)
  {
    v16 = 0;
    if (!v27)
    {
      *__error() = 22;
      return 0;
    }

    if (v27 == 1)
    {
      *__error() = 34;
      return 0;
    }

    v13 = &v28[v27];
  }

  else
  {
    v16 = 1024;
    v28 = malloc_type_malloc();
    if (!v28)
    {
      return 0;
    }

    v13 = v28 + 1024;
  }

  if (v26)
  {
    if (!__getcwd(v28, v13 - v28))
    {
      return v28;
    }

    if (*__error() == 34)
    {
      return 0;
    }
  }

  v20 = v13 - 1;
  *(v13 - 1) = 0;
  if (stat("/", &__b))
  {
    goto LABEL_79;
  }

  st_dev = __b.st_dev;
  st_ino = __b.st_ino;
  *__error() = 0;
  v21 = 1;
LABEL_17:
  if (v24)
  {
    v3 = dirfd(v24);
    if (fstat(v3, &__b))
    {
      goto LABEL_79;
    }
  }

  else if (lstat(".", &__b))
  {
    goto LABEL_79;
  }

  v22 = __b.st_ino;
  v23 = __b.st_dev;
  if (st_dev == __b.st_dev && st_ino == v22)
  {
    *--v20 = 47;
    memmove(v28, v20, v13 - v20);
    if (v24)
    {
      closedir(v24);
    }

    return v28;
  }

  if (v24)
  {
    dirfd(v24);
  }

  v12 = openat_NOCANCEL();
  if (v12 != -1)
  {
    if (v24)
    {
      closedir(v24);
    }

    v24 = fdopendir(v12);
    if (v24 && (v4 = dirfd(v24), !fstat(v4, &__b)))
    {
      v14 = 0;
      if (__b.st_dev == v23)
      {
        while (1)
        {
          v25 = readdir(v24);
          if (!v25)
          {
            break;
          }

          if (v25->d_ino == v22)
          {
LABEL_63:
            while (1)
            {
              v7 = v21 ? 1 : 2;
              if (v20 - v28 >= v25->d_namlen + v7)
              {
                break;
              }

              if (!v16)
              {
                *__error() = 34;
                goto LABEL_79;
              }

              v10 = v20 - v28;
              __len = v13 - v20;
              v16 *= 2;
              v28 = reallocf(v28, v16);
              if (!v28)
              {
                goto LABEL_79;
              }

              v20 = &v28[v10];
              v13 = &v28[v16];
              memmove(&v28[v16 - __len], &v28[v10], __len);
              v20 = &v13[-__len];
            }

            if (!v21)
            {
              *--v20 = 47;
            }

            v20 -= v25->d_namlen;
            memmove(v20, v25->d_name, v25->d_namlen);
            v21 = 0;
            goto LABEL_17;
          }

          if ((v25->d_name[0] != 46 || v25->d_name[1] && (v25->d_name[1] != 46 || v25->d_name[2])) && v25->d_type == 4)
          {
            v5 = dirfd(v24);
            if (fstatat(v5, v25->d_name, &__b, 32))
            {
              if (!v14)
              {
                v14 = *__error();
              }

              *__error() = 0;
            }

            else if (__b.st_dev == v23 && __b.st_ino == v22)
            {
              goto LABEL_63;
            }
          }
        }
      }

      else
      {
        while (1)
        {
          v25 = readdir(v24);
          if (!v25)
          {
            break;
          }

          if (v25->d_name[0] != 46 || v25->d_name[1] && (v25->d_name[1] != 46 || v25->d_name[2]))
          {
            v6 = dirfd(v24);
            if (fstatat(v6, v25->d_name, &__b, 32))
            {
              if (!v14)
              {
                v14 = *__error();
              }

              *__error() = 0;
            }

            else if (__b.st_dev == v23 && __b.st_ino == v22)
            {
              goto LABEL_63;
            }
          }
        }
      }

      if (!*__error())
      {
        if (v14)
        {
          v9 = v14;
        }

        else
        {
          v9 = 2;
        }

        *__error() = v9;
      }
    }

    else
    {
      close_NOCANCEL();
    }
  }

LABEL_79:
  v15 = *__error();
  if (v16)
  {
    free(v28);
  }

  if (v24)
  {
    closedir(v24);
  }

  *__error() = v15;
  return 0;
}

uint64_t __getcwd(char *a1, size_t a2)
{
  v16 = a1;
  v15 = a2;
  __c = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  __len = 144;
  memset(&v11, 0, sizeof(v11));
  memset(&v10, 0, sizeof(v10));
  v9 = 0;
  v14 = open_NOCANCEL();
  if (v14 < 0)
  {
    return -1;
  }

  else if (fstat(v14, &v11) < 0)
  {
    v12 = *__error();
    close_NOCANCEL();
    v6 = v12;
    *__error() = v6;
    return -1;
  }

  else if (v11.st_dev && v11.st_ino)
  {
    if (v15 >= 0x400)
    {
      v9 = v16;
    }

    else
    {
      v5 = v3;
      bzero(v3, 0x400uLL);
      v9 = v5;
      if (!v5)
      {
        close_NOCANCEL();
        *__error() = 12;
        return -1;
      }
    }

    v13 = fcntl_NOCANCEL();
    if (v13)
    {
      v12 = *__error();
      close_NOCANCEL();
      v4 = v12;
      *__error() = v4;
      return v13;
    }

    else
    {
      close_NOCANCEL();
      if (stat(v9, &v10) < 0)
      {
        return -1;
      }

      else
      {
        if (v11.st_dev == v10.st_dev && v11.st_ino == v10.st_ino)
        {
          if (v15 < 0x400)
          {
            if (strlen(v9) >= v15)
            {
              *__error() = 34;
              return -1;
            }

            strcpy(v16, v9);
          }

          return 0;
        }

        *__error() = 22;
        return -1;
      }
    }
  }

  else
  {
    close_NOCANCEL();
    *__error() = 22;
    return -1;
  }
}

int gethostname(char *a1, size_t a2)
{
  __dst = a1;
  __n = a2;
  v8[0] = 1;
  v8[1] = 10;
  if (a2 < 0x101)
  {
    v3 = 257;
    if (sysctl(v8, 2u, __src, &v3, 0, 0) == -1)
    {
      if (*__error() == 12)
      {
        *__error() = 63;
      }

      return -1;
    }

    strncpy(__dst, __src, __n);
    __dst[__n - 1] = 0;
    return 0;
  }

  if (sysctl(v8, 2u, __dst, &__n, 0, 0) != -1)
  {
    return 0;
  }

  if (*__error() == 12)
  {
    *__error() = 63;
  }

  return -1;
}

int getmntinfo(statfs **a1, int a2)
{
  result = getmntinfo_internal(getmntinfo_vars, a2);
  *a1 = getmntinfo_vars[0];
  return result;
}

uint64_t getmntinfo_internal(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= 0 && (v2 = getfsstat(0, 0, 2), *(a1 + 8) = v2, v2 < 0))
  {
    return 0;
  }

  else if (*(a1 + 16) > 0 && (v3 = getfsstat(*a1, *(a1 + 16), a2), *(a1 + 8) = v3, v3 < 0))
  {
    return 0;
  }

  else
  {
    while (*(a1 + 16) <= (2168 * *(a1 + 8)))
    {
      if (*a1)
      {
        free(*a1);
      }

      *(a1 + 16) = 2168 * (*(a1 + 8) + 1);
      v4 = *(a1 + 16);
      v5 = malloc_type_malloc();
      *a1 = v5;
      if (!v5)
      {
        return 0;
      }

      v6 = getfsstat(*a1, *(a1 + 16), a2);
      *(a1 + 8) = v6;
      if (v6 < 0)
      {
        return 0;
      }
    }

    return *(a1 + 8);
  }
}

int getmntinfo_r_np(statfs **a1, int a2)
{
  v7 = a1;
  v6 = a2;
  memset(v5, 0, sizeof(v5));
  v4 = getmntinfo_internal(v5, a2);
  if (v4)
  {
    *v7 = v5[0];
  }

  else
  {
    v3 = *__error();
    free(v5[0]);
    *__error() = v3;
  }

  return v4;
}

int getpagesize(void)
{
  v1 = 0;
  if (getpagesize_value)
  {
    return getpagesize_value;
  }

  v3[0] = 6;
  v3[1] = 7;
  v1 = 4;
  if (sysctl(v3, 2u, &getpagesize_value, &v1, 0, 0) != -1)
  {
    return getpagesize_value;
  }

  else
  {
    return -1;
  }
}

int getpeereid(int a1, uid_t *a2, gid_t *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  memset(__b, 0, sizeof(__b));
  v5 = 76;
  v4 = getsockopt(v9, 0, 1, __b, &v5);
  if (v4)
  {
    return v4;
  }

  if (__b[0])
  {
    *__error() = 22;
    return -1;
  }

  else
  {
    *v8 = __b[1];
    *v7 = __b[3];
    return 0;
  }
}

int isatty(int a1)
{
  v4 = a1;
  v3 = 0;
  v2 = 0;
  memset(&__b, 0, sizeof(__b));
  if (ioctl(v4, 0x4004667AuLL, &v2) == -1)
  {
    return tcgetattr(v4, &__b) != -1;
  }

  v3 = v2 == 3;
  if (v2 != 3)
  {
    *__error() = 25;
  }

  return v3;
}

uint64_t jrand48(unsigned __int16 a1[3])
{
  v2 = (*a1 + (a1[1] << 16) + (a1[2] << 32)) * _rand48_mult + _rand48_add;
  *a1 = (*a1 + (a1[1] << 16)) * _rand48_mult + _rand48_add;
  a1[2] = WORD2(v2);
  return (v2 >> 16);
}

void lcong48(unsigned __int16 a1[7])
{
  _rand48_seed = *a1 + (a1[1] << 16) + (a1[2] << 32);
  _rand48_mult = a1[3] + (a1[4] << 16) + (a1[5] << 32);
  _rand48_add = a1[6];
}

uint64_t lockf_NOCANCEL(uint64_t a1, unsigned int a2)
{
  if (a2 <= 2)
  {
    return __fcntl_nocancel();
  }

  else if (a2 == 3)
  {
    if (__fcntl_nocancel() == -1)
    {
      return -1;
    }

    else if (getpid())
    {
      *__error() = 35;
      return -1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

int nice(int a1)
{
  *__error() = 0;
  v4 = getpriority(0, 0);
  if (v4 == -1 && *__error())
  {
    return -1;
  }

  if (v4 + a1 > 19)
  {
    a1 = 19 - v4;
  }

  v3 = setpriority(0, 0, v4 + a1);
  if (v3 == -1 && *__error() == 13)
  {
    *__error() = 1;
  }

  if (v3 == -1)
  {
    return -1;
  }

  else
  {
    return getpriority(0, 0);
  }
}

uint64_t nrand48(unsigned __int16 a1[3])
{
  v2 = (*a1 + (a1[1] << 16) + (a1[2] << 32)) * _rand48_mult + _rand48_add;
  *a1 = (*a1 + (a1[1] << 16)) * _rand48_mult + _rand48_add;
  a1[2] = WORD2(v2);
  return (v2 >> 17) & 0x7FFFFFFF;
}

DIR *__cdecl __opendir2(const char *a1, int a2)
{
  if ((a2 & 0x18) != 0)
  {
    return 0;
  }

  v4 = open_NOCANCEL();
  if (v4 == -1)
  {
    return 0;
  }

  *&v3[4] = __opendir_common(v4, a2, 0);
  if (!*&v3[4])
  {
    *v3 = *__error();
    close_NOCANCEL();
    *__error() = *v3;
  }

  return *&v3[4];
}

DIR *__cdecl fdopendir(int a1)
{
  v3 = a1;
  memset(&__b, 0, sizeof(__b));
  if (fstat(v3, &__b))
  {
    return 0;
  }

  if ((__b.st_mode & 0xF000) == 0x4000)
  {
    if (fcntl_NOCANCEL() == -1)
    {
      return 0;
    }

    else
    {
      return __opendir_common(v3, 3u, 1);
    }
  }

  else
  {
    *__error() = 20;
    return 0;
  }
}

unsigned int *__opendir_common(int a1, unsigned int a2, char a3)
{
  v12 = malloc_type_malloc();
  if (v12)
  {
    *(v12 + 3) = 0;
    *v12 = a1;
    v12[14] = a2;
    *(v12 + 1) = 0;
    memset(__b, 0, sizeof(__b));
    __b[0] = 850045863;
    memcpy(v12 + 16, __b, 0x40uLL);
    *(v12 + 16) = v12 + 34;
    **(v12 + 16) = 0;
    *(*(v12 + 16) + 8) = 0;
    if ((a2 & 2) != 0 && __kernel_supports_unionfs())
    {
      v10 = __fd_is_on_union_mount(a1);
      if (v10 < 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      if (_filldir(v12, a3 & 1))
      {
        v12[14] |= 8u;
        return v12;
      }
    }

    else
    {
      v12[8] = 2048;
      v3 = v12[8];
      *(v12 + 3) = malloc_type_malloc();
      if (*(v12 + 3))
      {
        if ((a3 & 1) == 0)
        {
          *(v12 + 2) = 0;
          *(*(v12 + 16) + 16) = 0;
          return v12;
        }

        v9 = (*(v12 + 3) + v12[8] - 4);
        *v9 = 0;
        v4 = *v12;
        v5 = *(v12 + 3);
        v6 = v12[8];
        v7 = *(v12 + 16);
        *(v12 + 2) = __getdirentries64();
        if (*(v12 + 2) & 0x8000000000000000) == 0 && *(v12 + 2) <= (v12[8] - 4) && (*v9)
        {
          v12[14] |= 0x20u;
        }

        if ((*(v12 + 2) & 0x8000000000000000) == 0)
        {
          v12[14] |= 0x10u;
          return v12;
        }

        if (*__error() == 22)
        {
          *__error() = 20;
        }
      }
    }

LABEL_24:
    v11 = *__error();
    free(*(v12 + 3));
    free(v12);
    *__error() = v11;
    return 0;
  }

  return 0;
}

uint64_t _filldir(unsigned int *a1, char a2)
{
  __nel_4 = 0;
  v8 = 0;
  v20 = 0;
  v18 = 0;
  v14 = getpagesize();
  if (v14 % 1024)
  {
    v14 = 1024;
  }

  v2 = *a1;
  v15 = openat_NOCANCEL();
  if (v15 == -1)
  {
    v24 = 0;
  }

  else
  {
    if ((a2 & 1) == 0 || (v16 = lseek(*a1, 0, 1), v16 != -1) && lseek(v15, v16, 0) != -1)
    {
      while (1)
      {
        if (v8 < 1024)
        {
          v8 += v14;
          __nel_4 += v14;
          v20 = reallocf(v20, __nel_4);
          if (!v20)
          {
            break;
          }

          v18 = &v20[__nel_4 - v8];
        }

        v3 = *(a1 + 16);
        __nel = __getdirentries64();
        if (__nel > 0)
        {
          v18 += __nel;
          v8 -= __nel;
        }

        if (__nel < 0)
        {
          break;
        }

        if (__nel <= 0)
        {
          close_NOCANCEL();
          v17 = v18;
          *(a1 + 3) = v20;
          v21 = 0;
          while (1)
          {
            __nela = 0;
            v19 = v20;
            while (v19 < v17)
            {
              v7 = v19;
              if ((v19 & 3) != 0 || !*(v19 + 8) || *(v19 + 8) > v17 + 1 - v19)
              {
                break;
              }

              v19 += *(v19 + 8);
              if (*v7)
              {
                if (v21)
                {
                  v21[__nela] = v7;
                }

                ++__nela;
              }
            }

            if (v21)
            {
              break;
            }

            v21 = malloc_type_malloc();
            if (!v21)
            {
              goto LABEL_42;
            }
          }

          mergesort(v21, __nela, 8uLL, opendir_compar);
          v21[__nela] = 0;
          v6 = 0;
          for (__nelb = 0; v21[__nelb]; ++__nelb)
          {
            v5 = v21[__nelb];
            if (v6 && !strcmp((v5 + 21), (v6 + 21)))
            {
              *v5 = 0;
            }

            else
            {
              v6 = v5;
            }

            if (*(v5 + 20) == 14 && (a1[14] & 1) != 0)
            {
              *v5 = 0;
            }
          }

          free(v21);
LABEL_42:
          a1[8] = __nel_4;
          *(a1 + 2) = &v19[-*(a1 + 3)];
          v24 = 1;
          return v24 & 1;
        }
      }
    }

    v9 = *__error();
    close_NOCANCEL();
    *__error() = v9;
    v24 = 0;
  }

  return v24 & 1;
}

BOOL __kernel_supports_unionfs()
{
  if (__kernel_supports_unionfs_kernel_supports_unionfs == -1)
  {
    v2 = 0;
    v1 = 4;
    sysctlbyname("kern.secure_kernel", &v2, &v1, 0, 0);
    __kernel_supports_unionfs_kernel_supports_unionfs = v2 == 0;
  }

  return __kernel_supports_unionfs_kernel_supports_unionfs != 0;
}

uint64_t __fd_is_on_union_mount(int a1)
{
  bzero(&v5, 0x200uLL);
  v2 = fstatfs(a1, &v5);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  else
  {
    return (v5.f_flags & 0x20) != 0;
  }
}

uint64_t pause_NOCANCEL()
{
  v1 = 0;
  sigprocmask(0, 0, &v1);
  return sigsuspend_NOCANCEL();
}

FILE *__cdecl popen(const char *a1, const char *a2)
{
  v13 = a1;
  v12 = a2;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v15 = 0u;
  v16 = 0u;
  i = 0;
  v5 = 0;
  libc_hooks_will_read_cstring(a1);
  libc_hooks_will_read_cstring(v12);
  if (!v12)
  {
LABEL_2:
    *__error() = 22;
    return 0;
  }

  if (!strcmp(v12, "r+"))
  {
    v8 = 1;
    v12 = "r+";
    if (socketpair(1, 1, 0, &v17) < 0)
    {
      return 0;
    }
  }

  else
  {
    v8 = 0;
    if (*v12 != 114 && *v12 != 119 || v12[1])
    {
      goto LABEL_2;
    }

    if (pipe(&v17) < 0)
    {
      return 0;
    }
  }

  if (*v12 == 114)
  {
    v10 = fdopen(v17, v12);
    v7 = v18;
  }

  else
  {
    v10 = fdopen(v18, v12);
    v7 = v17;
  }

  if (v10)
  {
    v11 = malloc_type_malloc();
    if (v11)
    {
      v4 = posix_spawn_file_actions_init(&v5);
      if (v4)
      {
        goto LABEL_21;
      }

      if (*v12 == 114)
      {
        posix_spawn_file_actions_addclose(&v5, v17);
        if (v18 == 1)
        {
          if (v8)
          {
            posix_spawn_file_actions_adddup2(&v5, v18, 0);
          }
        }

        else
        {
          posix_spawn_file_actions_adddup2(&v5, v18, 1);
          posix_spawn_file_actions_addclose(&v5, v18);
          if (v8)
          {
            posix_spawn_file_actions_adddup2(&v5, 1, 0);
          }
        }
      }

      else
      {
        if (v17)
        {
          posix_spawn_file_actions_adddup2(&v5, v17, 0);
          posix_spawn_file_actions_addclose(&v5, v17);
        }

        posix_spawn_file_actions_addclose(&v5, v18);
      }

      pthread_mutex_lock(&__popen_pidlist_mutex);
      for (i = __popen_pidlist; i; i = *i)
      {
        posix_spawn_file_actions_addclose(&v5, *(i + 16));
      }

      *&v15 = "sh";
      *(&v15 + 1) = "-c";
      v16 = v13;
      v2 = _NSGetEnviron();
      v4 = posix_spawn(&v9, "/bin/sh", &v5, 0, &v15, *v2);
      pthread_mutex_unlock(&__popen_pidlist_mutex);
      posix_spawn_file_actions_destroy(&v5);
      if (v4 == 12 || v4 == 35)
      {
LABEL_21:
        fclose(v10);
        close_NOCANCEL();
        free(v11);
        *__error() = v4;
        return 0;
      }

      else
      {
        if (v4)
        {
          v9 = -1;
        }

        if (*v12 == 114)
        {
          *(v11 + 4) = v17;
        }

        else
        {
          *(v11 + 4) = v18;
        }

        close_NOCANCEL();
        v11[1] = v10;
        *(v11 + 5) = v9;
        pthread_mutex_lock(&__popen_pidlist_mutex);
        *v11 = __popen_pidlist;
        __popen_pidlist = v11;
        pthread_mutex_unlock(&__popen_pidlist_mutex);
        fwide(v10, -1);
        return v10;
      }
    }

    else
    {
      fclose(v10);
      close_NOCANCEL();
      return 0;
    }
  }

  else
  {
    close_NOCANCEL();
    close_NOCANCEL();
    return 0;
  }
}

uint64_t libc_hooks_will_read_cstring(uint64_t result)
{
  v1 = 0;
  if (off_E1530)
  {
    v1 = off_E1530;
  }

  if (v1)
  {
    return off_E1530(result);
  }

  return result;
}

int pclose(FILE *a1)
{
  v8 = a1;
  v6 = 0;
  v5 = 0;
  libc_hooks_will_read(a1, 152);
  pthread_mutex_lock(&__popen_pidlist_mutex);
  for (i = __popen_pidlist; i && *(i + 1) != v8; i = *i)
  {
    v6 = i;
  }

  if (i)
  {
    if (v6)
    {
      *v6 = **v6;
    }

    else
    {
      __popen_pidlist = *__popen_pidlist;
    }

    pthread_mutex_unlock(&__popen_pidlist_mutex);
    fclose(v8);
    if ((*(i + 5) & 0x80000000) != 0)
    {
      free(i);
      return 32512;
    }

    else
    {
      do
      {
        v4 = wait4(*(i + 5), &v5, 0, 0);
        v3 = 0;
        if (v4 == -1)
        {
          v3 = *__error() == 4;
        }
      }

      while (v3);
      free(i);
      if (v4 == -1)
      {
        return -1;
      }

      else
      {
        return v5;
      }
    }
  }

  else
  {
    pthread_mutex_unlock(&__popen_pidlist_mutex);
    return -1;
  }
}

uint64_t libc_hooks_will_read(uint64_t result, uint64_t a2)
{
  v2 = 0;
  if (off_E1528)
  {
    v2 = off_E1528;
  }

  if (v2)
  {
    return off_E1528(result, a2);
  }

  return result;
}

void psignal(unsigned int a1, const char *a2)
{
  if ((a1 & 0x80000000) != 0 || a1 >= 32)
  {
    v2 = "Unknown signal";
  }

  else
  {
    v2 = sys_siglist[a1];
  }

  if (a2 && *a2)
  {
    strlen(a2);
    write_NOCANCEL();
    write_NOCANCEL();
  }

  strlen(v2);
  write_NOCANCEL();
  write_NOCANCEL();
}

uint64_t _readdir_unlocked(unsigned int *a1, int a2)
{
  v9 = 0;
  do
  {
    if (*(a1 + 1) >= *(a1 + 2))
    {
      if ((a1[14] & 0x28) != 0)
      {
        return 0;
      }

      v9 = *(a1 + 1);
      a1[14] &= ~0x10u;
      *(a1 + 1) = 0;
    }

    if (!*(a1 + 1) && (a1[14] & 0x38) == 0)
    {
      if (a1[8] == 2048)
      {
        v8 = malloc_type_malloc();
        if (v8)
        {
          free(*(a1 + 3));
          *(a1 + 3) = v8;
          a1[8] = 0x2000;
        }
      }

      v7 = (*(a1 + 3) + a1[8] - 4);
      *v7 = 0;
      v10 = *(*(a1 + 16) + 16);
      v2 = *a1;
      v3 = *(a1 + 3);
      v4 = a1[8];
      v5 = *(a1 + 16);
      *(a1 + 2) = __getdirentries64();
      if (*(a1 + 2) & 0x8000000000000000) == 0 && *(a1 + 2) <= (a1[8] - 4) && (*v7)
      {
        a1[14] |= 0x20u;
      }

      if (*(a1 + 2) <= 0)
      {
        return 0;
      }

      _fixtelldir(a1, v10, v9);
    }

    a1[14] &= ~0x10u;
    v11 = *(a1 + 3) + *(a1 + 1);
    if ((v11 & 3) != 0)
    {
      return 0;
    }

    if (!*(v11 + 16) || *(v11 + 16) > (a1[8] + 1) - *(a1 + 1))
    {
      return 0;
    }

    *(a1 + 1) += *(v11 + 16);
  }

  while (!*v11 && a2 || *(v11 + 20) == 14 && (a1[14] & 1) != 0);
  return v11;
}

dirent *__cdecl readdir(DIR *a1)
{
  pthread_mutex_lock(&a1->__dd_lock);
  v2 = _readdir_unlocked(a1, 1);
  pthread_mutex_unlock(&a1->__dd_lock);
  return v2;
}

int readdir_r(DIR *a1, dirent *a2, dirent **a3)
{
  v4 = *__error();
  *__error() = 0;
  pthread_mutex_lock(&a1->__dd_lock);
  __src = _readdir_unlocked(a1, 1);
  if (__src)
  {
    memcpy(a2, __src, (__src[9] + 25) & 0xFFFFFFFFFFFFFFFCLL);
  }

  pthread_mutex_unlock(&a1->__dd_lock);
  if (*__error())
  {
    if (!__src)
    {
      return *__error();
    }
  }

  else
  {
    *__error() = v4;
  }

  if (__src)
  {
    *a3 = a2;
  }

  else
  {
    *a3 = 0;
  }

  return 0;
}

void rewinddir(DIR *a1)
{
  pthread_mutex_lock(&a1->__dd_lock);
  a1->__dd_flags &= 0xFFFFFFCF;
  if ((a1->__dd_flags & 8) != 0)
  {
    _filldir(a1, 0);
  }

  else
  {
    lseek(a1->__dd_fd, 0, 0);
    *(a1->__dd_td + 2) = 0;
  }

  a1->__dd_loc = 0;
  _reclaim_telldir(a1);
  pthread_mutex_unlock(&a1->__dd_lock);
}

int scandir(const char *a1, dirent ***a2, int (__cdecl *a3)(const dirent *), int (__cdecl *a4)(const dirent **, const dirent **))
{
  __nel = 0;
  v8 = 0;
  if (a4)
  {
    v8 = a4;
  }

  v7 = 0;
  if (v8)
  {
    v7 = v8;
  }

  v10 = opendir(a1);
  if (!v10)
  {
    return -1;
  }

  v11 = 32;
  v13 = malloc_type_malloc();
  if (v13)
  {
    while (1)
    {
      v15 = readdir(v10);
      if (!v15)
      {
        break;
      }

      if (!a3 || (a3)(v15))
      {
        v4 = (v15->d_namlen + 4) & 0xFFFFFFFC;
        v14 = malloc_type_malloc();
        if (!v14)
        {
          goto LABEL_21;
        }

        *v14 = v15->d_ino;
        v14[20] = v15->d_type;
        *(v14 + 8) = v15->d_reclen;
        *(v14 + 9) = v15->d_namlen;
        memmove(v14 + 21, v15->d_name, *(v14 + 9) + 1);
        if (__nel >= v11)
        {
          v9 = malloc_type_realloc();
          if (!v9)
          {
            free(v14);
            goto LABEL_21;
          }

          v13 = v9;
          v11 *= 2;
        }

        v5 = __nel++;
        v13[v5] = v14;
      }
    }

    closedir(v10);
    if (__nel && v7)
    {
      qsort(v13, __nel, 8uLL, v7);
    }

    *a2 = v13;
    return __nel;
  }

  else
  {
LABEL_21:
    while (__nel)
    {
      free(v13[--__nel]);
    }

    free(v13);
    closedir(v10);
    return -1;
  }
}

unsigned __int16 *__cdecl seed48(unsigned __int16 a1[3])
{
  result = &seed48_sseed;
  seed48_sseed = _rand48_seed;
  word_D68F8 = WORD2(_rand48_seed);
  _rand48_seed = *a1 + (a1[1] << 16) + (a1[2] << 32);
  _rand48_mult = 0x5DEECE66DLL;
  _rand48_add = 11;
  return result;
}

void seekdir(DIR *a1, uint64_t a2)
{
  pthread_mutex_lock(&a1->__dd_lock);
  _seekdir(a1, a2);
  pthread_mutex_unlock(&a1->__dd_lock);
}

int sethostname(const char *a1, int a2)
{
  v4[0] = 1;
  v4[1] = 10;
  if (sysctl(v4, 2u, 0, 0, a1, a2) == -1)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

mode_t getmode(const void *a1, mode_t a2)
{
  v6 = a2;
  while (1)
  {
    v4 = *a1;
    if (!*a1)
    {
      break;
    }

    switch(v4)
    {
      case '+':
        v6 |= *(a1 + 1);
        break;
      case '-':
        v6 &= ~*(a1 + 1);
        break;
      case 'X':
        if ((a2 & 0x4049) != 0)
        {
          v6 |= *(a1 + 1);
        }

        break;
      default:
        switch(v4)
        {
          case 'g':
            v5 = (v6 & 0x38) >> 3;
            break;
          case 'o':
            v5 = v6 & 7;
            break;
          case 'u':
            v5 = (v6 & 0x1C0) >> 6;
            break;
          default:
            return v6;
        }

        if (*(a1 + 1))
        {
          if ((*(a1 + 1) & 2) != 0)
          {
            v3 = 7;
          }

          else
          {
            v3 = v5;
          }

          if ((*(a1 + 1) & 0x10) != 0)
          {
            v6 &= ~(*(a1 + 1) & (v3 << 6));
          }

          if ((*(a1 + 1) & 4) != 0)
          {
            v6 &= ~(*(a1 + 1) & (8 * v3));
          }

          if ((*(a1 + 1) & 8) != 0)
          {
            v6 &= ~(v3 & *(a1 + 1));
          }
        }

        if ((*(a1 + 1) & 2) != 0)
        {
          if ((*(a1 + 1) & 0x10) != 0)
          {
            v6 |= *(a1 + 1) & (v5 << 6);
          }

          if ((*(a1 + 1) & 4) != 0)
          {
            v6 |= *(a1 + 1) & (8 * v5);
          }

          if ((*(a1 + 1) & 8) != 0)
          {
            v6 |= v5 & *(a1 + 1);
          }
        }

        break;
    }

    a1 = a1 + 4;
  }

  return v6;
}

void *__cdecl setmode(const char *a1)
{
  v26 = a1;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  __endptr = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v14 = 0;
  if (!*a1)
  {
    return 0;
  }

  v18 = -1;
  sigprocmask(1, &v18, &v17);
  v15 = umask(0);
  umask(v15);
  v16 = ~v15;
  sigprocmask(3, &v17, 0);
  v12 = 8;
  v21 = malloc_type_malloc();
  if (!v21)
  {
    return 0;
  }

  v20 = v21;
  v19 = (v21 + 24);
  if (!isdigit(*v26))
  {
LABEL_17:
    v24 = 0;
    while (1)
    {
      v4 = *v26;
      switch(v4)
      {
        case 'a':
          v24 |= 0xFFFu;
          break;
        case 'g':
          v24 |= 0x438u;
          break;
        case 'o':
          v24 |= 7u;
          break;
        case 'u':
          v24 |= 0x9C0u;
          break;
        default:
          while (1)
          {
            v1 = v26++;
            LODWORD(v1) = *v1;
            v23 = v1;
            if (v1 != 43 && v23 != 45 && v23 != 61)
            {
              goto LABEL_31;
            }

            if (v23 == 61)
            {
              v14 = 0;
            }

            v25 = 0;
            v13 = 0;
            while (1)
            {
              v3 = *v26;
              if (v3 == 88)
              {
                v13 = 73;
                goto LABEL_104;
              }

              if (v3 != 103 && v3 != 111)
              {
                switch(v3)
                {
                  case 'r':
                    v25 |= 0x124u;
                    goto LABEL_104;
                  case 's':
                    if (!v24 || (v24 & 0xFFFFFFF8) != 0)
                    {
                      v25 |= 0xC00u;
                    }

                    goto LABEL_104;
                  case 't':
                    if (!v24 || (v24 & 0xFFFFFFF8) != 0)
                    {
                      v25 |= 0x200u;
                    }

                    goto LABEL_104;
                }

                if (v3 != 117)
                {
                  break;
                }
              }

              if (v25)
              {
                if (v21 >= v19)
                {
                  v12 += 4;
                  v9 = malloc_type_realloc();
                  if (!v9)
                  {
                    if (v20)
                    {
                      free(v20);
                    }

                    v20 = 0;
                    return 0;
                  }

                  v21 = &v9[4 * ((v21 - v20) / 4)];
                  v20 = v9;
                  v19 = &v9[4 * v12 - 8];
                }

                v21 = addcmd(v21, v23, v24, v25, v16);
                v25 = 0;
              }

              if (v23 == 61)
              {
                v14 = 1;
              }

              if (v23 == 43 && v13)
              {
                if (v21 >= v19)
                {
                  v12 += 4;
                  v8 = malloc_type_realloc();
                  if (!v8)
                  {
                    if (v20)
                    {
                      free(v20);
                    }

                    v20 = 0;
                    return 0;
                  }

                  v21 = &v8[4 * ((v21 - v20) / 4)];
                  v20 = v8;
                  v19 = &v8[4 * v12 - 8];
                }

                v21 = addcmd(v21, 88, v24, v13, v16);
                v13 = 0;
              }

              if (v21 >= v19)
              {
                v12 += 4;
                v7 = malloc_type_realloc();
                if (!v7)
                {
                  if (v20)
                  {
                    free(v20);
                  }

                  v20 = 0;
                  return 0;
                }

                v21 = &v7[4 * ((v21 - v20) / 4)];
                v20 = v7;
                v19 = &v7[4 * v12 - 8];
              }

              v21 = addcmd(v21, *v26, v24, v23, v16);
LABEL_104:
              ++v26;
            }

            if (v3 == 119)
            {
              v25 |= 0x92u;
              goto LABEL_104;
            }

            if (v3 == 120)
            {
              v25 |= 0x49u;
              goto LABEL_104;
            }

            if (v25 || v23 == 61 && !v14)
            {
              if (v23 == 61)
              {
                v14 = 1;
              }

              if (v21 >= v19)
              {
                v12 += 4;
                v6 = malloc_type_realloc();
                if (!v6)
                {
                  if (v20)
                  {
                    free(v20);
                  }

                  v20 = 0;
                  return 0;
                }

                v21 = &v6[4 * ((v21 - v20) / 4)];
                v20 = v6;
                v19 = &v6[4 * v12 - 8];
              }

              v21 = addcmd(v21, v23, v24, v25, v16);
              v25 = 0;
            }

            if (v13)
            {
              if (v21 >= v19)
              {
                v12 += 4;
                v5 = malloc_type_realloc();
                if (!v5)
                {
                  if (v20)
                  {
                    free(v20);
                  }

                  v20 = 0;
                  return 0;
                }

                v21 = &v5[4 * ((v21 - v20) / 4)];
                v20 = v5;
                v19 = &v5[4 * v12 - 8];
              }

              v21 = addcmd(v21, 88, v24, v13, v16);
            }

            if (!*v26)
            {
              *v21 = 0;
              _sm_compress_mode(v20);
              return v20;
            }

            if (*v26 == 44)
            {
              ++v26;
              goto LABEL_17;
            }
          }
      }

      ++v26;
    }
  }

  v11 = strtol(v26, &__endptr, 8);
  if (*__endptr || v11 < 0 || (v11 & 0xFFFFFFFFFFFFF000) != 0)
  {
LABEL_31:
    free(v20);
    return 0;
  }

  v25 = v11;
  if (v21 < v19)
  {
    goto LABEL_16;
  }

  v10 = malloc_type_realloc();
  if (v10)
  {
    v21 = &v10[4 * ((v21 - v20) / 4)];
    v20 = v10;
    v19 = (v10 + 40);
LABEL_16:
    v21 = addcmd(v21, 61, 4095, v25, v16);
    *v21 = 0;
    return v20;
  }

  if (v20)
  {
    free(v20);
  }

  v20 = 0;
  return 0;
}

uint64_t addcmd(uint64_t a1, int a2, int a3, int a4, __int16 a5)
{
  v13 = a1;
  v12 = a2;
  switch(a2)
  {
    case '+':
    case '-':
      goto LABEL_13;
    case '=':
      *a1 = 45;
      if (a3)
      {
        v11 = a3;
      }

      else
      {
        v11 = 4095;
      }

      *(a1 + 2) = v11;
      v13 = a1 + 4;
      v12 = 43;
      goto LABEL_13;
    case 'X':
LABEL_13:
      *v13 = v12;
      if (a3)
      {
        v10 = a3;
      }

      else
      {
        v10 = a5;
      }

      *(v13 + 2) = v10 & a4;
      return v13 + 4;
    case 'g':
    case 'o':
    case 'u':
      *a1 = a2;
      if (a3)
      {
        if ((a3 & 0x100) != 0)
        {
          v5 = 16;
        }

        else
        {
          v5 = 0;
        }

        if ((a3 & 0x20) != 0)
        {
          v6 = 4;
        }

        else
        {
          v6 = 0;
        }

        v7 = v5 | v6;
        if ((a3 & 4) != 0)
        {
          v8 = 8;
        }

        else
        {
          v8 = 0;
        }

        *(a1 + 1) = v7 | v8;
        *(a1 + 2) = -1;
      }

      else
      {
        *(a1 + 1) = 28;
        *(a1 + 2) = a5;
      }

      switch(a4)
      {
        case '+':
          *(a1 + 1) |= 2u;
          break;
        case '-':
          *(a1 + 1) |= 1u;
          break;
        case '=':
          *(a1 + 1) |= 3u;
          break;
      }

      break;
  }

  return v13 + 4;
}

char *_sm_compress_mode(char *result)
{
  v10 = result;
  v9 = result;
  while (1)
  {
LABEL_2:
    v4 = *v9;
    v3 = 0;
    if (v4 != 43)
    {
      v3 = 0;
      if (v4 != 45)
      {
        v3 = v4 != 88;
      }
    }

    if (v3)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v5 = *v9;
      if (v5 == 45)
      {
        v7 |= *(v9 + 1);
        v8 &= ~*(v9 + 1);
        v6 &= ~*(v9 + 1);
        goto LABEL_16;
      }

      if (v5 == 43)
      {
        v8 |= *(v9 + 1);
        v7 &= ~*(v9 + 1);
        v6 &= ~*(v9 + 1);
        goto LABEL_16;
      }

      if (v5 != 88)
      {
        break;
      }

      v6 |= *(v9 + 1) & ~v8;
LABEL_16:
      v9 += 4;
    }

    if (v7)
    {
      *v10 = 45;
      v10[1] = 0;
      *(v10 + 1) = v7;
      v10 += 4;
    }

    if (v8)
    {
      *v10 = 43;
      v10[1] = 0;
      *(v10 + 1) = v8;
      v10 += 4;
    }

    if (v6)
    {
      *v10 = 88;
      v10[1] = 0;
      *(v10 + 1) = v6;
      v10 += 4;
    }
  }

  v1 = v10;
  v10 += 4;
  v2 = v9;
  v9 += 4;
  *v1 = *v2;
  if (v4)
  {
    goto LABEL_2;
  }

  return result;
}

void setprogname(const char *a1)
{
  __source = strrchr(a1, 47);
  if (__source)
  {
    __sourcea = __source + 1;
    *_NSGetProgname() = __sourcea;
  }

  else
  {
    __sourcea = a1;
    *_NSGetProgname() = a1;
  }

  strlcpy(__dst, __sourcea, 0x21uLL);
  v5[0] = 1;
  v5[1] = 62;
  v1 = strlen(__dst);
  sysctl(v5, 2u, 0, 0, __dst, v1);
}

int siginterrupt(int a1, int a2)
{
  v8 = a1;
  v7 = a2;
  v6.__sigaction_u.__sa_handler = 0;
  *&v6.sa_mask = 0;
  v5 = sigaction(a1, 0, &v6);
  if (v5 < 0)
  {
    return v5;
  }

  if (v7)
  {
    v11 = v8;
    if (v8 <= 32)
    {
      v4 = 1 << (v11 - 1);
    }

    else
    {
      v4 = 0;
    }

    _sigintr |= v4;
    v6.sa_flags &= ~2u;
  }

  else
  {
    v10 = v8;
    if (v8 <= 32)
    {
      v3 = 1 << (v10 - 1);
    }

    else
    {
      v3 = 0;
    }

    _sigintr &= ~v3;
    v6.sa_flags |= 2u;
  }

  return sigaction(v8, &v6, 0);
}

__sigaction_u signal__(int a1, __sigaction_u a2, int a3)
{
  v9 = a1;
  v8.__sa_handler = a2.__sa_handler;
  v7 = a3;
  *&v6.sa_mask = 0;
  v5.__sigaction_u.__sa_handler = 0;
  *&v5.sa_mask = 0;
  v6.__sigaction_u = a2;
  v11 = a1;
  if (a1 <= 32)
  {
    v4 = 1 << (v11 - 1);
  }

  else
  {
    v4 = 0;
  }

  if ((_sigintr & v4) == 0)
  {
    v6.sa_flags |= 2u;
  }

  if (!v7)
  {
    if ((_sigaction_nobind(v9, &v6, &v5) & 0x80000000) != 0)
    {
      return -1;
    }

    return v5.__sigaction_u.__sa_handler;
  }

  if ((sigaction(v9, &v6, &v5) & 0x80000000) == 0)
  {
    return v5.__sigaction_u.__sa_handler;
  }

  return -1;
}

uint64_t sleep_NOCANCEL(unsigned int a1)
{
  v6 = a1;
  v4 = 0;
  v5 = 0;
  v2 = 0;
  v3 = 0;
  if (a1 <= 0x7FFFFFFF)
  {
    v4 = v6;
    v5 = 0;
    if (nanosleep_NOCANCEL(&v4, &v2) == -1)
    {
      if (*__error() == 4)
      {
        return (v2 + (v3 != 0));
      }

      else
      {
        return v6;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return (v6 - 0x7FFFFFFF + sleep_NOCANCEL());
  }
}

void srand48(uint64_t a1)
{
  _rand48_seed = (a1 << 16) + 13070 + (WORD1(a1) << 32);
  _rand48_mult = 0x5DEECE66DLL;
  _rand48_add = 11;
}

StringList *sl_init(void)
{
  v2 = malloc_type_malloc();
  if (!v2)
  {
    err(1, "stringlist: %m");
  }

  v2->sl_cur = 0;
  v2->sl_max = 20;
  sl_max = v2->sl_max;
  v2->sl_str = malloc_type_malloc();
  if (!v2->sl_str)
  {
    err(1, "stringlist: %m");
  }

  return v2;
}

int sl_add(StringList *a1, char *a2)
{
  if (a1->sl_cur == a1->sl_max - 1)
  {
    a1->sl_max += 20;
    a1->sl_str = reallocf(a1->sl_str, 8 * a1->sl_max);
    if (!a1->sl_str)
    {
      return -1;
    }
  }

  sl_str = a1->sl_str;
  sl_cur = a1->sl_cur;
  a1->sl_cur = sl_cur + 1;
  sl_str[sl_cur] = a2;
  return 0;
}

void sl_free(StringList *a1, int a2)
{
  if (a1)
  {
    if (a1->sl_str)
    {
      if (a2)
      {
        for (i = 0; i < a1->sl_cur; ++i)
        {
          free(a1->sl_str[i]);
        }
      }

      free(a1->sl_str);
    }

    free(a1);
  }
}

char *__cdecl sl_find(StringList *a1, char *a2)
{
  for (i = 0; i < a1->sl_cur; ++i)
  {
    if (!strcmp(a1->sl_str[i], a2))
    {
      return a1->sl_str[i];
    }
  }

  return 0;
}

uint64_t sysconf(int a1)
{
  v14 = a1;
  v13.rlim_cur = 0;
  v13.rlim_max = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v6 = 0;
  v7 = -1;
  switch(a1)
  {
    case 1:
      v16 = 1;
      v17 = 8;
      goto LABEL_151;
    case 2:
      if (getrlimit(7, &v13))
      {
        return -1;
      }

      if (v13.rlim_cur == 0x7FFFFFFFFFFFFFFFLL)
      {
        return -1;
      }

      if (v13.rlim_cur <= 0x7FFFFFFFFFFFFFFFLL)
      {
        return v13.rlim_cur;
      }

      *__error() = 84;
      return -1;
    case 3:
      return 100;
    case 4:
      v16 = 1;
      v17 = 18;
      goto LABEL_151;
    case 5:
    case 26:
      if (getrlimit(8, &v13))
      {
        return -1;
      }

      if (v13.rlim_cur <= 0x7FFFFFFFFFFFFFFFLL)
      {
        return v13.rlim_cur;
      }

      return -1;
    case 6:
      return 200112;
    case 7:
      v16 = 1;
      v17 = 20;
      v11 = 4;
      if (sysctl(&v16, 2u, &v9, &v11, 0, 0) == -1)
      {
        return -1;
      }

      if (v9)
      {
        return v9;
      }

      return v7;
    case 8:
      v16 = 1;
      v17 = 17;
      goto LABEL_151;
    case 9:
      return 99;
    case 10:
      return 2048;
    case 11:
      return 99;
    case 12:
      return 1000;
    case 13:
      return 2;
    case 14:
      return 32;
    case 15:
      return 2048;
    case 16:
      return 255;
    case 17:
      return 200112;
    case 18:
      return 200112;
    case 19:
      return 200112;
    case 20:
      return 200112;
    case 21:
      return -1;
    case 22:
      return 200112;
    case 23:
      return 200112;
    case 24:
      return 200112;
    case 25:
      return 200112;
    case 27:
      v6 = "/var/db/timezone/zoneinfo";
      goto LABEL_38;
    case 28:
      return -1;
    case 29:
      v1 = getpagesize();
      v7 = v1;
      return v1;
    case 30:
      return -1;
    case 31:
      return -1;
    case 32:
      return 200112;
    case 33:
      return -1;
    case 34:
      return -1;
    case 35:
      return -1;
    case 36:
      return -1;
    case 37:
      return -1;
    case 38:
      return 200112;
    case 39:
      return -1;
    case 40:
      return -1;
    case 41:
      return -1;
    case 42:
      v16 = 1;
      v17 = 46;
      goto LABEL_151;
    case 43:
      v16 = 1;
      v17 = 46;
      goto LABEL_151;
    case 44:
      return -1;
    case 45:
      return -1;
    case 46:
      return -1;
    case 47:
      return 200112;
    case 48:
      return -1;
    case 49:
      v11 = 4;
      if (sysctlbyname("kern.sysv.semmns", &v9, &v11, 0, 0) == -1)
      {
        return -1;
      }

      else
      {
        return v9;
      }

    case 50:
      return 0x7FFFLL;
    case 51:
      return -1;
    case 52:
      return -1;
    case 56:
      return 1024;
    case 57:
    case 58:
      v16 = 6;
      v17 = 3;
LABEL_151:
      v11 = 4;
      if (sysctl(&v16, 2u, &v9, &v11, 0, 0) == -1)
      {
        v9 = -1;
      }

      v15 = v9;
      break;
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
      v15 = -1;
      break;
    case 65:
      v15 = -1;
      break;
    case 66:
      v15 = -1;
      break;
    case 67:
      v15 = -1;
      break;
    case 68:
      v15 = -1;
      break;
    case 69:
    case 70:
      v15 = 4096;
      break;
    case 71:
      v15 = 4096;
      break;
    case 72:
      v15 = 255;
      break;
    case 73:
      v15 = 255;
      break;
    case 74:
      v15 = -1;
      break;
    case 75:
      v15 = -1;
      break;
    case 76:
      v15 = 200112;
      break;
    case 77:
      v15 = 200112;
      break;
    case 78:
      v15 = 200112;
      break;
    case 79:
      v15 = 200112;
      break;
    case 80:
      v15 = -1;
      break;
    case 81:
      v15 = -1;
      break;
    case 82:
      v15 = 200112;
      break;
    case 83:
      v15 = 200112;
      break;
    case 84:
      v15 = -1;
      break;
    case 85:
      v15 = 4;
      break;
    case 86:
      v15 = 512;
      break;
    case 87:
      v15 = -1;
      break;
    case 88:
      v15 = -1;
      break;
    case 89:
      v15 = -1;
      break;
    case 90:
      v15 = 200112;
      break;
    case 91:
      v15 = 200112;
      break;
    case 92:
      v15 = -1;
      break;
    case 93:
      v15 = 0x4000;
      break;
    case 94:
      v15 = -1;
      break;
    case 95:
      v15 = -1;
      break;
    case 96:
      v15 = 200112;
      break;
    case 97:
      v15 = -1;
      break;
    case 98:
      v15 = -1;
      break;
    case 99:
      v15 = -1;
      break;
    case 100:
      v15 = -1;
      break;
    case 101:
      v6 = "/";
LABEL_38:
      v10 = *__error();
      *__error() = 0;
      v8 = pathconf(v6, 4);
      if (v8 == -1 && *__error())
      {
        v15 = -1;
      }

      else
      {
        *__error() = v10;
        v15 = v8;
      }

      break;
    case 102:
      v15 = -1;
      break;
    case 103:
      v15 = -1;
      break;
    case 104:
      v15 = -1;
      break;
    case 105:
      v15 = 1;
      break;
    case 106:
      v15 = 1;
      break;
    case 107:
      v15 = 0x7FFFFFFFLL;
      break;
    case 108:
      v15 = 1;
      break;
    case 109:
      v15 = 1;
      break;
    case 110:
      v15 = -1;
      break;
    case 111:
      v15 = -1;
      break;
    case 112:
      v15 = -1;
      break;
    case 113:
      v10 = *__error();
      v11 = 8;
      if (sysctlbyname("kern.sysv.shmmin", &v12, &v11, 0, 0) == -1)
      {
        *__error() = v10;
        v15 = -1;
      }

      else
      {
        *__error() = v10;
        v15 = 1;
      }

      break;
    case 114:
      v15 = -1;
      break;
    case 115:
      v15 = 1;
      break;
    case 116:
      v15 = 600;
      break;
    case 118:
      v15 = 200112;
      break;
    case 119:
      v15 = -1;
      break;
    case 120:
      v15 = 32;
      break;
    case 121:
      v15 = 4;
      break;
    case 122:
      v15 = -1;
      break;
    case 123:
      v15 = -1;
      break;
    case 124:
      v15 = 1;
      break;
    case 125:
      v15 = 1;
      break;
    case 126:
      v15 = 4;
      break;
    case 127:
      v15 = 30;
      break;
    case 128:
      v15 = 8;
      break;
    case 129:
      v15 = 8;
      break;
    case 130:
      v15 = 32;
      break;
    case 131:
      v15 = 128;
      break;
    case 200:
      v5 = 0;
      v4 = 0;
      v11 = 8;
      if (sysctlbyname("hw.memsize", &v5, &v11, 0, 0) == -1)
      {
        v15 = -1;
      }

      else
      {
        v11 = 8;
        if (sysctlbyname("hw.pagesize", &v4, &v11, 0, 0) == -1)
        {
          v15 = -1;
        }

        else
        {
          v15 = v5 / v4;
        }
      }

      break;
    default:
      *__error() = 22;
      v15 = -1;
      break;
  }

  return v15;
}

int sysctl(int *a1, u_int a2, void *a3, size_t *a4, void *a5, size_t a6)
{
  if (*a1 != 8)
  {
    if (a2 != 2 || *a1 != 1 || a1[1] != 45)
    {
      return __sysctl();
    }

    if (a5)
    {
      goto LABEL_6;
    }

    if (!a3)
    {
      if (a4)
      {
        *a4 = 2;
      }

      return 0;
    }

    if (!a4)
    {
      *__error() = 14;
      return -1;
    }

    if (*a4 >= 2)
    {
      strcpy(a3, "/");
      *a4 = 2;
      return 0;
    }

LABEL_27:
    *__error() = 12;
    return -1;
  }

  if (a5)
  {
LABEL_6:
    *__error() = 1;
    return -1;
  }

  if (a2 != 2)
  {
LABEL_50:
    *__error() = 22;
    return -1;
  }

  if (a1[1] == 1)
  {
    if (a3 && *a4 < 0x1E)
    {
      goto LABEL_27;
    }

    *a4 = 30;
    if (a3)
    {
      strcpy(a3, "/usr/bin:/bin:/usr/sbin:/sbin");
    }

    return 0;
  }

  else
  {
    if (a3 && *a4 < 4)
    {
      goto LABEL_27;
    }

    *a4 = 4;
    if (a3)
    {
      switch(a1[1])
      {
        case 2:
          *a3 = 99;
          v7 = 0;
          break;
        case 3:
          *a3 = 2048;
          v7 = 0;
          break;
        case 4:
          *a3 = 99;
          v7 = 0;
          break;
        case 5:
          *a3 = 1000;
          v7 = 0;
          break;
        case 6:
          *a3 = 2;
          v7 = 0;
          break;
        case 7:
          *a3 = 32;
          v7 = 0;
          break;
        case 8:
          *a3 = 2048;
          v7 = 0;
          break;
        case 9:
          *a3 = 255;
          v7 = 0;
          break;
        case 10:
          *a3 = 200112;
          v7 = 0;
          break;
        case 11:
          *a3 = 0;
          v7 = 0;
          break;
        case 12:
          *a3 = 0;
          v7 = 0;
          break;
        case 13:
          *a3 = 0;
          v7 = 0;
          break;
        case 14:
          *a3 = 0;
          v7 = 0;
          break;
        case 15:
          *a3 = 0;
          v7 = 0;
          break;
        case 16:
          *a3 = 0;
          v7 = 0;
          break;
        case 17:
          *a3 = 0;
          v7 = 0;
          break;
        case 18:
          *a3 = 0;
          v7 = 0;
          break;
        case 19:
          *a3 = 20;
          v7 = 0;
          break;
        case 20:
          *a3 = 255;
          v7 = 0;
          break;
        default:
          goto LABEL_50;
      }
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

int sysctlbyname(const char *a1, void *a2, size_t *a3, void *a4, size_t a5)
{
  strlen(a1);
  v6 = __sysctl();
  if ((v6 & 0x80000000) == 0)
  {
    return __sysctl();
  }

  return v6;
}

int sysctlnametomib(const char *a1, int *a2, size_t *a3)
{
  *a3 *= 4;
  strlen(a1);
  result = __sysctl();
  *a3 /= 4uLL;
  return result;
}

uint64_t telldir(DIR *a1)
{
  pthread_mutex_lock(&a1->__dd_lock);
    ;
  }

  if (i)
  {
LABEL_12:
    v5 = i[2];
    pthread_mutex_unlock(&a1->__dd_lock);
    return v5;
  }

  i = malloc_type_malloc();
  if (i)
  {
    dd_td = a1->__dd_td;
    v2 = *(dd_td + 1);
    *(dd_td + 1) = v2 + 1;
    i[2] = v2;
    i[3] = *(a1->__dd_td + 2);
    i[4] = a1->__dd_loc;
    v3 = *a1->__dd_td;
    *i = v3;
    if (v3)
    {
      *(*a1->__dd_td + 8) = i;
    }

    *a1->__dd_td = i;
    i[1] = a1->__dd_td;
    goto LABEL_12;
  }

  pthread_mutex_unlock(&a1->__dd_lock);
  return -1;
}

off_t _seekdir(off_t result, uint64_t a2)
{
  v3 = result;
    ;
  }

  if (i && (i[4] != *(result + 8) || i[3] != *(*(result + 128) + 16)))
  {
    if (i[3] == *(*(result + 128) + 16))
    {
      if (!i[4])
      {
        *(result + 56) |= 0x10u;
      }

      *(result + 8) = i[4];
    }

    else
    {
      result = lseek(*result, i[3], 0);
      *(*(v3 + 128) + 16) = i[3];
      *(v3 + 8) = 0;
      *(v3 + 56) &= 0xFFFFFFCF;
      do
      {
        if (*(v3 + 8) >= i[4])
        {
          break;
        }

        result = _readdir_unlocked(v3, 0);
      }

      while (result);
    }
  }

  return result;
}

uint64_t _fixtelldir(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = **(result + 128);
  if (v3 && *(v3 + 32) == a3 && *(v3 + 24) == a2)
  {
    *(v3 + 24) = *(*(result + 128) + 16);
    *(v3 + 32) = *(result + 8);
  }

  return result;
}

void _reclaim_telldir(uint64_t a1)
{
  v2 = **(a1 + 128);
  while (v2)
  {
    v1 = v2;
    v2 = *v2;
    free(v1);
  }

  **(a1 + 128) = 0;
}

int tcsetattr(int a1, int a2, const termios *a3)
{
  memset(__b, 0, sizeof(__b));
  if ((a2 & 0x10) != 0)
  {
    memcpy(__b, a3, sizeof(__b));
    __b[2] |= 1uLL;
    a3 = __b;
  }

  v4 = a2 & 0xFFFFFFEF;
  if ((a2 & 0xFFFFFFEF) == 0)
  {
    return ioctl(a1, 0x80487414uLL, a3);
  }

  if (v4 == 1)
  {
    return ioctl(a1, 0x80487415uLL, a3);
  }

  if (v4 == 2)
  {
    return ioctl(a1, 0x80487416uLL, a3);
  }

  *__error() = 22;
  return -1;
}

int tcsetpgrp(int a1, pid_t a2)
{
  v5 = a1;
  v4 = a2;
  v3 = 0;
  if (!isatty(a1))
  {
    return -1;
  }

  v3 = v4;
  return ioctl(v5, 0x80047476uLL, &v3);
}

pid_t tcgetpgrp(int a1)
{
  v3 = a1;
  v2 = 0;
  if (!isatty(a1))
  {
    return -1;
  }

  if (ioctl(v3, 0x40047477uLL, &v2) < 0)
  {
    return -1;
  }

  return v2;
}

int cfsetspeed(termios *a1, speed_t a2)
{
  a1->c_ospeed = a2;
  a1->c_ispeed = a2;
  return 0;
}

void cfmakeraw(termios *a1)
{
  a1->c_iflag &= 0xFFFFFFFFFFFFD801;
  a1->c_iflag |= 1uLL;
  a1->c_oflag &= ~1uLL;
  a1->c_lflag &= 0x5FBFFA61uLL;
  a1->c_cflag &= 0xFFFFFFFFFFFFECFFLL;
  a1->c_cflag |= 0xB00uLL;
  a1->c_cc[16] = 1;
  a1->c_cc[17] = 0;
}

int tcsendbreak(int a1, int a2)
{
  v6 = a1;
  v5 = a2;
  v3 = 0;
  v4 = 400000;
  if (ioctl(a1, 0x2000747BuLL, 0) == -1)
  {
    return -1;
  }

  select_NOCANCEL();
  if (ioctl(v6, 0x2000747AuLL, 0) == -1)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

int tcflush(int a1, int a2)
{
  v4 = a1;
  v3[1] = a2;
  v3[0] = 0;
  switch(a2)
  {
    case 1:
      v3[0] = 1;
      return ioctl(v4, 0x80047410uLL, v3);
    case 2:
      v3[0] = 2;
      return ioctl(v4, 0x80047410uLL, v3);
    case 3:
      v3[0] = 3;
      return ioctl(v4, 0x80047410uLL, v3);
  }

  *__error() = 22;
  return -1;
}

int tcflow(int a1, int a2)
{
  v5 = a1;
  v4 = a2;
  v3 = a2;
  if (a2 == 1)
  {
    return ioctl(v5, 0x2000746FuLL, 0);
  }

  switch(v3)
  {
    case 2:
      return ioctl(v5, 0x2000746EuLL, 0);
    case 3:
      return ioctl(v5, 0x20007480uLL, 0);
    case 4:
      return ioctl(v5, 0x20007481uLL, 0);
  }

  *__error() = 22;
  return -1;
}

time_t time(time_t *a1)
{
  v5 = a1;
  v4.tv_sec = 0;
  *&v4.tv_usec = 0;
  tv_sec = 0;
  v2.__fpsr = 0;
  v2.__fpcr = 0;
  fegetenv(&v2);
  if (gettimeofday(&v4, 0) < 0)
  {
    tv_sec = -1;
  }

  else
  {
    tv_sec = v4.tv_sec;
  }

  if (v5)
  {
    *v5 = tv_sec;
  }

  fesetenv(&v2);
  return tv_sec;
}

clock_t times(tms *a1)
{
  v4 = a1;
  memset(&__b, 0, sizeof(__b));
  v2.tv_sec = 0;
  *&v2.tv_usec = 0;
  if (getrusage(0, &__b) < 0)
  {
    return -1;
  }

  v4->tms_utime = 100 * __b.ru_utime.tv_sec + __b.ru_utime.tv_usec / 10000;
  v4->tms_stime = 100 * __b.ru_stime.tv_sec + __b.ru_stime.tv_usec / 10000;
  if (getrusage(-1, &__b) < 0)
  {
    return -1;
  }

  v4->tms_cutime = 100 * __b.ru_utime.tv_sec + __b.ru_utime.tv_usec / 10000;
  v4->tms_cstime = 100 * __b.ru_stime.tv_sec + __b.ru_stime.tv_usec / 10000;
  if (gettimeofday(&v2, 0))
  {
    return -1;
  }

  else
  {
    return 100 * v2.tv_sec + v2.tv_usec / 10000;
  }
}

char *ttyname_threaded(int a1)
{
  if (!ttyname_init)
  {
    pthread_mutex_lock(&ttyname_lock);
    if (!ttyname_init)
    {
      ttyname_key = 16;
      if (pthread_key_init_np())
      {
        v4 = *__error();
        pthread_mutex_unlock(&ttyname_lock);
        *__error() = v4;
        return 0;
      }

      ttyname_init = 1;
    }

    pthread_mutex_unlock(&ttyname_lock);
  }

  v5 = pthread_getspecific(ttyname_key);
  if (v5)
  {
    goto LABEL_20;
  }

  v5 = malloc_type_malloc();
  if (!v5)
  {
    return 0;
  }

  if (!pthread_setspecific(ttyname_key, v5))
  {
LABEL_20:
    if (ttyname_r(a1, v5, 0x105uLL))
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v3 = *__error();
    free(v5);
    *__error() = v3;
    return 0;
  }
}

int ttyname_r(int a1, char *a2, size_t a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  memset(&__b, 0, sizeof(__b));
  if (fstat(v9, &__b) < 0)
  {
    return 9;
  }

  if (!isatty(v9))
  {
    return 25;
  }

  if ((__b.st_mode & 0xF000) != 0x2000)
  {
    return 25;
  }

  if (v7 <= 6)
  {
    return 34;
  }

  strlcpy(v8, "/dev/", v7);
  buf = &v8[strlen(v8)];
  v3 = strlen(v8);
  if (devname_r(__b.st_rdev, 0x2000u, buf, v7 - v3))
  {
    return 0;
  }

  else
  {
    return 34;
  }
}

useconds_t ualarm(useconds_t a1, useconds_t a2)
{
  v6 = a1;
  v5 = a2;
  memset(&v4, 0, sizeof(v4));
  memset(&v3, 0, sizeof(v3));
  v4.it_interval.tv_usec = a2 % 0xF4240;
  v4.it_interval.tv_sec = a2 / 0xF4240;
  v4.it_value.tv_usec = a1 % 0xF4240;
  v4.it_value.tv_sec = a1 / 0xF4240;
  if (setitimer(0, &v4, &v3))
  {
    return -1;
  }

  else
  {
    return 1000000 * LODWORD(v3.it_value.tv_sec) + v3.it_value.tv_usec;
  }
}

uint64_t ulimit(int a1, ...)
{
  va_start(va, a1);
  v5 = va_arg(va, void);
  v3 = a1;
  v2.rlim_cur = 0;
  v2.rlim_max = 0;
  if (a1 == 1)
  {
    if (getrlimit(1, &v2) == -1)
    {
      return -1;
    }

    else
    {
      v2.rlim_cur /= 0x200uLL;
      if (v2.rlim_cur <= 0x7FFFFFFFFFFFFFFFLL)
      {
        return v2.rlim_cur;
      }

      else
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  else if (v3 == 2)
  {
    v2.rlim_cur = v5 << 9;
    v2.rlim_max = v5 << 9;
    if (setrlimit(1, &v2) == -1)
    {
      return -1;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

int unvis(char *a1, int a2, int *a3, int a4)
{
  v15 = a2;
  v13 = a2;
  if (!a1)
  {
    __assert_rtn("unvis", "unvis.c", 210, "cp != ((void *)0)");
  }

  if (!a3)
  {
    __assert_rtn("unvis", "unvis.c", 211, "astate != ((void *)0)");
  }

  v12 = *a3;
  if ((a4 & 0x1000) != 0)
  {
    if (v12)
    {
      if (v12 != 6 && v12 != 5 && v12 != 9)
      {
        return -1;
      }

      else
      {
        *a3 = 0;
        return 1;
      }
    }

    else
    {
      return 3;
    }
  }

  else
  {
    switch(v12)
    {
      case 0:
        *a1 = 0;
        if ((a4 & 0x800) != 0 || a2 != 92)
        {
          if ((a4 & 0x80) != 0 && a2 == 37)
          {
            *a3 = 8;
            return 3;
          }

          else if ((a4 & 0x400) != 0 && a2 == 38)
          {
            *a3 = 13;
            return 3;
          }

          else if ((a4 & 0x200) != 0 && a2 == 61)
          {
            *a3 = 10;
            return 3;
          }

          else
          {
            *a1 = a2;
            return 1;
          }
        }

        else
        {
          *a3 = 1;
          return 3;
        }

      case 1:
        switch(a2)
        {
          case 10:
            *a3 = 0;
            v17 = 3;
            break;
          case 36:
            *a3 = 0;
            v17 = 3;
            break;
          case 48:
          case 49:
          case 50:
          case 51:
          case 52:
          case 53:
          case 54:
          case 55:
            *a1 = a2 - 48;
            *a3 = 5;
            v17 = 3;
            break;
          case 69:
            *a1 = 27;
            *a3 = 0;
            v17 = 1;
            break;
          case 77:
            *a1 = 0x80;
            *a3 = 2;
            v17 = 3;
            break;
          case 92:
            *a1 = a2;
            *a3 = 0;
            v17 = 1;
            break;
          case 94:
            *a3 = 4;
            v17 = 3;
            break;
          case 97:
            *a1 = 7;
            *a3 = 0;
            v17 = 1;
            break;
          case 98:
            *a1 = 8;
            *a3 = 0;
            v17 = 1;
            break;
          case 102:
            *a1 = 12;
            *a3 = 0;
            v17 = 1;
            break;
          case 110:
            *a1 = 10;
            *a3 = 0;
            v17 = 1;
            break;
          case 114:
            *a1 = 13;
            *a3 = 0;
            v17 = 1;
            break;
          case 115:
            *a1 = 32;
            *a3 = 0;
            v17 = 1;
            break;
          case 116:
            *a1 = 9;
            *a3 = 0;
            v17 = 1;
            break;
          case 118:
            *a1 = 11;
            *a3 = 0;
            v17 = 1;
            break;
          case 120:
            *a3 = 7;
            v17 = 3;
            break;
          default:
            if (!isgraph(a2))
            {
              goto LABEL_125;
            }

            *a1 = v15;
            *a3 = 0;
            v17 = 1;
            break;
        }

        return v17;
      case 2:
        if (a2 == 45)
        {
          *a3 = 3;
        }

        else
        {
          if (a2 != 94)
          {
            goto LABEL_125;
          }

          *a3 = 4;
        }

        return 3;
      case 3:
        *a3 = 0;
        *a1 |= a2;
        return 1;
      case 4:
        if (a2 == 63)
        {
          *a1 |= 0x7Fu;
        }

        else
        {
          *a1 |= a2 & 0x1F;
        }

        *a3 = 0;
        return 1;
      case 5:
        if (a2 < 0x30u || a2 > 0x37u)
        {
          *a3 = 0;
          return 2;
        }

        else
        {
          *a1 = a2 - 48 + 8 * *a1;
          *a3 = 6;
          return 3;
        }

      case 6:
        *a3 = 0;
        if (a2 < 0x30u || a2 > 0x37u)
        {
          return 2;
        }

        *a1 = a2 - 48 + 8 * *a1;
        return 1;
      case 7:
        if (!isxdigit(a2))
        {
          goto LABEL_125;
        }

        goto LABEL_67;
      case 8:
LABEL_67:
        if (isxdigit(v13))
        {
          if (isdigit(v13))
          {
            LOBYTE(v9) = v13 - 48;
          }

          else
          {
            v9 = tolower(v13) - 87;
          }

          *a1 = v9;
          *a3 = 9;
          return 3;
        }

        else
        {
          *a3 = 0;
          return 2;
        }

      case 9:
        *a3 = 0;
        if (!isxdigit(a2))
        {
          return 2;
        }

        if (isdigit(v13))
        {
          LOBYTE(v8) = v13 - 48;
        }

        else
        {
          v8 = tolower(v13) - 87;
        }

        *a1 = v8 | (16 * *a1);
        return 1;
      case 10:
        if (a2 == 10 || a2 == 13)
        {
          *a3 = 12;
          return 3;
        }

        if (!isxdigit(a2) || !isdigit(v13) && !isupper(v13))
        {
          goto LABEL_125;
        }

        if (isdigit(v13))
        {
          v7 = v13 - 48;
        }

        else
        {
          v7 = v13 - 55;
        }

        *a1 = v7;
        *a3 = 11;
        return 3;
      case 11:
        if (!isxdigit(a2) || !isdigit(v13) && !isupper(v13))
        {
          goto LABEL_125;
        }

        *a3 = 0;
        if (isdigit(v13))
        {
          v6 = v13 - 48;
        }

        else
        {
          v6 = v13 - 55;
        }

        *a1 = v6 | (16 * *a1);
        return 1;
      case 12:
        if (a2 == 10 || a2 == 13)
        {
          return 3;
        }

        if (a2 == 61)
        {
          *a3 = 10;
          return 3;
        }

        else
        {
          *a1 = a2;
          *a3 = 0;
          return 1;
        }

      case 13:
        *a1 = 0;
        if (a2 == 35)
        {
          *a3 = 14;
          return 3;
        }

        *a3 = 15;
LABEL_107:
        v11 = *a1;
        v10 = HIBYTE(*a3);
        if (v10)
        {
          v5 = nv[8 * v11 - 1 + v10];
        }

        else
        {
          v5 = 0;
        }

        if (a2 == 59)
        {
          v13 = 0;
        }

        while (v11 < 0x64uLL)
        {
          if (v10 && nv[8 * v11 - 1 + v10] != v5)
          {
            goto LABEL_125;
          }

          if (nv[8 * v11 + v10] != v13)
          {
            ++v11;
            continue;
          }

          break;
        }

        if (v11 == 100)
        {
          goto LABEL_125;
        }

        if (v13)
        {
          *a1 = v11;
          *a3 = ((v10 + 1) << 24) | 0xF;
          v17 = 3;
        }

        else
        {
          *a1 = nv[8 * v11 + 7];
          *a3 = 0;
          v17 = 1;
        }

        break;
      case 14:
        if (a2 == 59)
        {
          v17 = 1;
        }

        else if (isdigit(a2))
        {
          *a1 += 10 * *a1 + v13 - 48;
          v17 = 3;
        }

        else
        {
LABEL_125:
          *a3 = 0;
          v17 = -1;
        }

        break;
      case 15:
        goto LABEL_107;
      default:
        goto LABEL_125;
    }
  }

  return v17;
}

int strnunvisx(char *a1, size_t a2, const char *a3, int a4)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  *&v17[1] = a4;
  v17[0] = 0;
  v16 = 0;
  v15 = a1;
  v14 = 0;
  if (!a3)
  {
    __assert_rtn("strnunvisx", "unvis.c", 504, "src != ((void *)0)");
  }

  if (!v20)
  {
    __assert_rtn("strnunvisx", "unvis.c", 505, "dst != ((void *)0)");
  }

LABEL_5:
  while (1)
  {
    v4 = v18++;
    LODWORD(v4) = *v4;
    v17[0] = v4;
    if (!v4)
    {
      break;
    }

    while (1)
    {
      v13 = unvis(&v16, v17[0], &v14, *&v17[1]);
      if (v13 == -1)
      {
        *__error() = 22;
        return -1;
      }

      if (!v13)
      {
        goto LABEL_5;
      }

      if (v13 == 1)
      {
        break;
      }

      if (v13 != 2)
      {
        if (v13 != 3)
        {
          __assert_rtn("strnunvisx", "unvis.c", 532, "0");
        }

        goto LABEL_5;
      }

      if (!v19--)
      {
        goto LABEL_23;
      }

      v8 = v20++;
      *v8 = v16;
    }

    if (!v19--)
    {
      goto LABEL_23;
    }

    v6 = v20++;
    *v6 = v16;
  }

  if (unvis(&v16, v17[0], &v14, 4096) == 1)
  {
    if (!v19--)
    {
      goto LABEL_23;
    }

    v10 = v20++;
    *v10 = v16;
  }

  if (v19--)
  {
    *v20 = 0;
    return v20 - v15;
  }

LABEL_23:
  *__error() = 28;
  return -1;
}

uint64_t usleep_NOCANCEL(unsigned int a1)
{
  v3 = a1;
  v2[1] = 1000 * (a1 % 0xF4240);
  v2[0] = a1 / 0xF4240;
  return nanosleep_NOCANCEL(v2, 0);
}

int utime(const char *a1, const utimbuf *a2)
{
  if (!a2)
  {
    return utimes(a1, 0);
  }

  v3.tv_sec = a2->actime;
  modtime = a2->modtime;
  v5 = 0;
  v3.tv_usec = 0;
  return utimes(a1, &v3);
}

char *__cdecl svis(char *a1, int a2, int a3, int a4, const char *a5)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a5;
  v7[0] = a2;
  v7[1] = a4;
  v6 = istrsenvisx(&v12, 0, v7, 1, a3, a5, 0);
  if (v6 < 0)
  {
    return 0;
  }

  else
  {
    return &v12[v6];
  }
}

uint64_t istrsenvisx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v48 = v68;
  v73 = a1;
  v72 = a2;
  v71 = a3;
  v70 = a4;
  v69 = a5;
  v68[7] = a6;
  v68[6] = a7;
  v75 = 0;
  v76 = __locale_key;
  v77 = __locale_key;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v75 = *(StatusReg + 8 * v76);
  if (v75)
  {
    v47 = v48[15];
  }

  else
  {
    v47 = __global_locale;
  }

  v7 = v48;
  v8 = *(v47[166] + 64);
  v48[5] = v28;
  v44 = &v28[-((v8 + 15) & 0x1FFFFFFF0)];
  v7[4] = v8;
  v45 = 0;
  v7[3] = 0;
  v7[2] = 0;
  v7[1] = 0;
  *v7 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v57 = -1;
  i = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v46 = 0u;
  *(v7 + 18) = 0u;
  *(v7 + 17) = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 15) = 0u;
  *(v7 + 14) = 0u;
  *(v7 + 13) = 0u;
  *(v7 + 12) = 0u;
  *(v7 + 11) = 0u;
  if (!v7[12])
  {
    __assert_rtn("istrsenvisx", "vis.c", 394, "mbdstp != ((void *)0)");
  }

  v9 = v48[10];
  v43 = 1;
  if (!v9)
  {
    v43 = v48[9] == 0;
  }

  if (!v43)
  {
    __assert_rtn("istrsenvisx", "vis.c", 395, "mbsrc != ((void *)0) || mblength == 0");
  }

  if (!v48[7])
  {
    __assert_rtn("istrsenvisx", "vis.c", 396, "mbextra != ((void *)0)");
  }

  v51 = v48[9];
  if (v51 == 1)
  {
    v51 = 2;
  }

  v10 = v48;
  v66 = 0;
  v48[1] = 0;
  *v10 = 0;
  v52 = 0;
  v11 = malloc_type_calloc();
  *v48 = v11;
  if (!v11)
  {
    v74 = -1;
    v49 = 1;
    goto LABEL_89;
  }

  v12 = malloc_type_calloc();
  v48[1] = v12;
  if (!v12)
  {
    goto LABEL_88;
  }

  if (!*v48[12])
  {
    v52 = malloc_type_calloc();
    if (v52)
    {
      *v48[12] = v52;
      goto LABEL_20;
    }

LABEL_88:
    free(v66);
    free(v48[1]);
    free(*v48);
    free(v52);
    v74 = v57;
    v49 = 1;
    goto LABEL_89;
  }

LABEL_20:
  v13 = v48;
  v54 = *v48[12];
  v48[3] = v48[1];
  v13[2] = *v13;
  if ((v69 & 0x4000) != 0)
  {
    v58 = 1;
  }

  else
  {
    if (v48[6])
    {
      v42 = *v48[6];
    }

    else
    {
      v42 = 0;
    }

    v58 = v42;
  }

  v14 = v48;
  v41 = 0u;
  *(v48 + 18) = 0u;
  *(v14 + 17) = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 15) = 0u;
  *(v14 + 14) = 0u;
  *(v14 + 13) = 0u;
  *(v14 + 12) = 0u;
  *(v14 + 11) = 0u;
  while (v51 >= 1)
  {
    if (!v58)
    {
      v39 = v48[2];
      v40 = v48[10];
      if (v51 <= 5)
      {
        v38 = v51;
      }

      else
      {
        v38 = 6;
      }

      v59 = mbrtowc(v39, v40, v38, &v79);
    }

    if (v58 || v59 < 0)
    {
      *v48[2] = *v48[10];
      v59 = 1;
      v58 = 1;
    }

    if (!v59)
    {
      v59 = 1;
    }

    v15 = v48;
    v48[2] += 4;
    v15[10] += v59;
    v51 -= v59;
  }

  v16 = v48;
  v17 = *v48;
  v65 = (v16[2] - *v16) >> 2;
  v48[2] = *v48;
  if (v16[9] < v65)
  {
    v65 = v48[9];
  }

  v66 = makeextralist(v69, v48[7]);
  if (!v66)
  {
    if (!v48[11] || *v48[11])
    {
      *v54 = 0;
      v57 = 0;
    }

    else
    {
LABEL_44:
      *__error() = 28;
    }

    goto LABEL_88;
  }

  v60 = getvisfun(v69);
  v67 = v48[3];
  while (v65)
  {
    v18 = v48;
    v19 = v48[2];
    v48[2] = (v19 + 1);
    v61 = *v19;
    v34 = v60;
    v35 = v18[3];
    v36 = v61;
    v37 = v69;
    if (v65)
    {
      v33 = *v48[2];
    }

    else
    {
      v33 = 0;
    }

    v20 = v34(v35, v36, v37, v33, v66);
    v21 = v48;
    v48[3] = v20;
    if (!v21[3])
    {
      goto LABEL_44;
    }

    --v65;
  }

  *v48[3] = 0;
  v65 = wcslen(v67);
  if (v48[11])
  {
    v32 = *v48[11];
  }

  else
  {
    v32 = (6 * wcslen(v67)) | 1;
  }

  v22 = v48;
  v50 = v32;
  v64 = 0;
  v31 = 0u;
  *(v48 + 18) = 0u;
  *(v22 + 17) = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 11) = 0u;
  v22[3] = v67;
  while (v65)
  {
    if (!v58)
    {
      v30 = v50 - v64;
      v48[14] = 0;
      v23 = v48;
      v48[17] = __locale_key;
      v23[18] = v23[17];
      v23[21] = 0;
      v23[21] = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v23[14] = *(v23[21] + 8 * v23[18]);
      v29 = v48[14] ? v48[14] : __global_locale;
      v53 = v30 > *(v29[166] + 64) ? v54 : v44;
      v59 = wcrtomb(v53, *v48[3], &v79);
      if (v59 >= 1 && v53 != v54)
      {
        if (v64 + v59 >= v50)
        {
          goto LABEL_44;
        }

        memcpy(v54, v53, v59);
      }
    }

    if (v58 || v59 < 0)
    {
      v59 = 0;
      v62 = 0;
      for (i = 7; (i & 0x80000000) == 0; --i)
      {
        v55 = 8 * i;
        v63 = 255 << (8 * i);
        v62 |= v63;
        if ((*v48[3] & v62) != 0 || !i)
        {
          if (v64 + v59 + 1 >= v50)
          {
            goto LABEL_44;
          }

          v24 = (*v48[3] & v63) >> v55;
          v25 = v59++;
          v54[v25] = v24;
        }
      }

      v58 = 1;
    }

    if (v64 + v59 >= v50)
    {
      __assert_rtn("istrsenvisx", "vis.c", 590, "olen + clen < maxolen");
    }

    v54 += v59;
    v48[3] += 4;
    v64 += v59;
    --v65;
  }

  *v54 = 0;
  if ((v69 & 0x4000) != 0 && v48[6])
  {
    *v48[6] = v58;
  }

  free(v66);
  free(v48[1]);
  free(*v48);
  v74 = v64;
  v49 = 1;
LABEL_89:
  v26 = v48[5];
  return v74;
}

char *__cdecl snvis(char *a1, size_t a2, int a3, int a4, int a5, const char *a6)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = a5;
  v9 = a6;
  v8[0] = a3;
  v8[1] = a5;
  v7 = istrsenvisx(&v14, &v13, v8, 1, a4, a6, 0);
  if (v7 < 0)
  {
    return 0;
  }

  else
  {
    return &v14[v7];
  }
}

uint64_t istrsenvisxl(uint64_t a1, uint64_t a2, const char *a3, int a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    return istrsenvisx(a1, a2, 0, 0, a4, a5, a6);
  }

  v7 = strlen(a3);
  return istrsenvisx(a1, a2, a3, v7, a4, a5, a6);
}

int strsnvis(char *a1, size_t a2, const char *a3, int a4, const char *a5)
{
  v7 = a1;
  v6 = a2;
  return istrsenvisxl(&v7, &v6, a3, a4, a5, 0);
}

int strsnvisx(char *a1, size_t a2, const char *a3, size_t a4, int a5, const char *a6)
{
  v8 = a1;
  v7 = a2;
  return istrsenvisx(&v8, &v7, a3, a4, a5, a6, 0);
}

int strsenvisx(char *a1, size_t a2, const char *a3, size_t a4, int a5, const char *a6, int *a7)
{
  v9 = a1;
  v8 = a2;
  return istrsenvisx(&v9, &v8, a3, a4, a5, a6, a7);
}

char *__cdecl vis(char *a1, int a2, int a3, int a4)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  v6[0] = a2;
  v6[1] = a4;
  v5 = istrsenvisx(&v10, 0, v6, 1, a3, &unk_C42B5, 0);
  if (v5 < 0)
  {
    return 0;
  }

  else
  {
    return &v10[v5];
  }
}

char *__cdecl nvis(char *a1, size_t a2, int a3, int a4, int a5)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a5;
  v7[0] = a3;
  v7[1] = a5;
  v6 = istrsenvisx(&v12, &v11, v7, 1, a4, &unk_C42B5, 0);
  if (v6 < 0)
  {
    return 0;
  }

  else
  {
    return &v12[v6];
  }
}

int strnvis(char *a1, size_t a2, const char *a3, int a4)
{
  v6 = a1;
  v5 = a2;
  return istrsenvisxl(&v6, &v5, a3, a4, &unk_C42B5, 0);
}

int strnvisx(char *a1, size_t a2, const char *a3, size_t a4, int a5)
{
  v7 = a1;
  v6 = a2;
  return istrsenvisx(&v7, &v6, a3, a4, a5, &unk_C42B5, 0);
}

int strenvisx(char *a1, size_t a2, const char *a3, size_t a4, int a5, int *a6)
{
  v8 = a1;
  v7 = a2;
  return istrsenvisx(&v8, &v7, a3, a4, a5, &unk_C42B5, a6);
}

__int32 *makeextralist(int a1, char *a2)
{
  v19 = a1;
  __s = a2;
  memset(&__b, 0, sizeof(__b));
  v15 = strlen(__s);
  v17 = malloc_type_calloc();
  if (!v17)
  {
    return 0;
  }

  if ((v19 & 0x4000) != 0 || mbsrtowcs(v17, &__s, v15, &__b) == -1)
  {
    for (i = 0; i < v15; ++i)
    {
      v17[i] = __s[i];
    }

    v16 = &v17[v15];
  }

  else
  {
    v16 = &v17[wcslen(v17)];
  }

  if ((v19 & 0x100) != 0)
  {
    v13 = &char_glob;
    while (*v13)
    {
      v2 = v13++;
      v3 = v16++;
      *v3 = *v2;
    }
  }

  if ((v19 & 0x2000) != 0)
  {
    v14 = &char_shell;
    while (*v14)
    {
      v4 = v14++;
      v5 = v16++;
      *v5 = *v4;
    }
  }

  if ((v19 & 4) != 0)
  {
    v6 = v16++;
    *v6 = 32;
  }

  if ((v19 & 8) != 0)
  {
    v7 = v16++;
    *v7 = 9;
  }

  if ((v19 & 0x10) != 0)
  {
    v8 = v16++;
    *v8 = 10;
  }

  if ((v19 & 0x8000) != 0)
  {
    v9 = v16++;
    *v9 = 34;
  }

  if ((v19 & 0x40) == 0)
  {
    v10 = v16++;
    *v10 = 92;
  }

  *v16 = 0;
  return v17;
}

__int32 *(*getvisfun(__int16 a1))(__int32 *a1, __int32 a2, __int16 a3, unsigned __int8 a4, const __int32 *a5)
{
  if ((a1 & 0x80) != 0)
  {
    return do_hvis;
  }

  if ((a1 & 0x200) != 0)
  {
    return do_mvis;
  }

  return do_svis;
}

__int32 *do_hvis(__int32 *a1, __int32 a2, __int16 a3, unsigned __int8 a4, const __int32 *a5)
{
  if (iswalnum(a2) || a2 == 36 || a2 == 45 || a2 == 95 || a2 == 46 || a2 == 43 || a2 == 33 || a2 == 42 || a2 == 39 || a2 == 40 || a2 == 41 || a2 == 44)
  {
    return do_svis(a1, a2, a3, a4, a5);
  }

  *a1 = 37;
  a1[1] = dword_C2730[a2 >> 4];
  v5 = a1 + 2;
  v12 = a1 + 3;
  *v5 = dword_C2730[a2 & 0xF];
  return v12;
}